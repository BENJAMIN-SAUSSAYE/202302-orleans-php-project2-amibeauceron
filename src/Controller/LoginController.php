<?php

namespace App\Controller;

use App\Model\UserManager;

class LoginController extends AbstractController
{
    private const MIN_LENGTH_PASSWORD = 8;

    public function login(): ?string
    {
        $user = [];
        $errors = [];

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // clean $_POST data
            $user = array_map('trim', $_POST);

            // Validations
            $errors = $this->validateData($user);

            // if validation is ok
            // check User allowed to connect
            if (empty($errors)) {
                if ($this->isAuthorize($user)) {
                    //connection is OK, redirection
                    header('Location: /administration');
                    // we are redirecting so we don't want any content rendered
                    return null;
                }
                $errors[] = "Email ou password incorrect !";
            }
        }
        return $this->twig->render('Login/login.html.twig', ['user' => $user, 'errors' => $errors]);
    }

    private function isAuthorize($user): bool
    {
        $userManager = new UserManager();
        $dbUser = $userManager->selectOneByEmail($user['email']);
        if (!empty($dbUser) && password_verify($user['password'], $dbUser['password'])) {
            //add user to global twig variable
            $this->twig->addGlobal('user', $dbUser);
            return true;
        }
        return false;
    }

    private function validateData(array $user): array
    {
        $errors = [];
        if (empty($user['email'])) {
            $errors[] = "Veuillez renseigner votre email, zone obligatoire.";
        }

        if (!filter_var($user['email'], FILTER_VALIDATE_EMAIL)) {
            $emailErr = "Le format de votre email n'est pas valide";
        }

        if (empty($user['password'])) {
            $errors[] = "Veuillez renseigner votre password, zone obligatoire.";
        }

        if (mb_strlen(($user['password'])) < self::MIN_LENGTH_PASSWORD) {
            $errors[] = "Votre password doit faire " . self::MIN_LENGTH_PASSWORD .
                " caractères minimum (actuellement" . mb_strlen(($user['password'])) . ")";
        }
        return $errors;
    }
}

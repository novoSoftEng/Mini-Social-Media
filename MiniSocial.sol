// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MiniSocial {
    // Structure représentant un post
    struct Post {
        string message; // Le contenu du message
        address author; // L'adresse de l'utilisateur qui a publié le message
    }

    // Tableau dynamique pour stocker tous les posts
    Post[] private posts;

    // Fonction pour publier un nouveau post
    function publishPost(string memory _message) public {
        // Créer un nouveau post avec le message et l'adresse de l'utilisateur (msg.sender)
        Post memory newPost = Post(_message, msg.sender);
        // Ajouter le nouveau post au tableau posts
        posts.push(newPost);
    }

    // Fonction de consultation pour récupérer un post spécifique
    function getPost(uint index) public view returns (string memory, address) {
        require(index < posts.length, "Index invalide");
        Post memory post = posts[index];
        return (post.message, post.author);
    }

    // Fonction pour récupérer le nombre total de messages publiés
    function getTotalPosts() public view returns (uint) {
        return posts.length;
    }
}

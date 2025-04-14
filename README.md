# iRVision_PAP-ROBOTIC-CELL-FANUC
Projet de tri automatique de cylindres rouges, verts et blancs à l'aide d'un robot industriel FANUC dans l'environnement **Roboguide HandlingPRO**.

## 🛠️ Description du projet

Ce projet simule une cellule automatisée capable de :

- Identifier les pièces en fonction de leur couleur en utilisant iRvision (Caméra 2D SC130EF2C COLOR)
- Trier les pièces dans des bacs rouges et verts
- Évacuer les pièces défectueuses (blanches) sur un convoyeur
- Réagir à l’état du convoyeur pour éviter les collisions

## 📷 Aperçus de la cellule
![Vue 3D sous plusieurs angles.] (dossier captures/RoboGuide Simulation)
![Vue de l'entrainement.] (dossier captures/Training iRVision)

Démo Vidéo
![Démonstration du fonctionnement complet de la simulation du tri de cylindres] (dossier Video)

Démo Simulation-Vidéo
![Démonstration du fonctionnement complet de la simulation du tri de cylindres] (dossier rg3D, fonctionne que sur ROBOGUIDE 3D Player)


## 🧠 Logique de fonctionnement

1. Une photo est prise de la table des cylindres
2. Le cylindre avec le meilleur score est sélectionner et sa position est stocker dans un registre de vision (VR)
3. l'identification du modèle se fait stocker dans un registre
4. Une condition tri le fonctionnement en fonction du numéro de modèle
5. Dépose :
   - 🟥 Bac rouge → cylindre rouge → IDMODEL = 2
   - 🟩 Bac vert → cylindre vert → IDMODEL = 1
   - ⚪ Convoyeur → cylindre blanc → IDMODEL = 3
6. Si une pièce blanche est déposée, le robot active le convoyeur via `DO[2]`


## Dossiers
- `Captures/` → Dossiers contenant les captures de la cellule et de l'entraînement
- `Video/` → La vidéo de démonstration
- `PROGRAMS/` → Les programmes utilisés et exportés en .ls
- `CONVEYOR_SORTING_Rg_2025_04_15_t_00_14_25/` → Vidéo de démonstration en rg3D

## 🎯 Objectif

Ce projet a été conçu pour démontrer :
- La capacité à programmer des routines séquentielles optimisées en langage TP
- L’interaction entre robot et périphériques (convoyeurs, capteurs)
- Une structuration de projet claire pour un portfolio industriel
- Démonstration de mon apprentissage autonome du logiciel ROBOGUIDE et ses fonctionalités


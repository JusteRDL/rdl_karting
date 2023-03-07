Config = {
    blip = true, -- Affichage du blip (true = oui, false = non)

    BlipName = 'Karting', -- Nom du blip
    BlipId = 117, -- Id du blip voir
    BlipTaille = 0.6, -- Taille du blip
    BlipCouleur = 17, -- Couleur du blip voir
    BlipRange = true, -- Garder le blip sur la map (true = désactiver, false = activé)

    MarkerType = 25, 
    MarkerSizeLargeur = 0.5, -- Largeur du marker
    MarkerSizeEpaisseur = 0.5, -- Épaisseur du marker
    MarkerSizeHauteur = 0.5, -- Hauteur du marker
    MarkerDistance = 5.0, -- Distane de visibiliter du marker (1.0 = 1 mètre)
    MarkerColorR = 255, 
    MarkerColorG = 179, 
    MarkerColorB = 0, 
    MarkerOpacite = 255, -- Opacité du marker (min: 0, max: 255)
    MarkerSaute = true, -- Si le marker saute (true = oui, false = non)
    MarkerTourne = true, -- Si le marker tourne (true = oui, false = non)

    Kart = {
        {Label = "Kartings pour enfant", Value = "panto", Price = 1000},
        {Label = "Kartings pour adulte", Value = "kart3", Price = 2000},
        {Label = "Kartings de compétition", Value = "shifter_kart", Price = 3000},
    },
    
    Text = "Appuyer sur ~o~[E] ~s~pour louer un ~o~Kart ~s~!", -- Text écris lors de l'approche du blip voir

    positionKarting = {
        LocationKart = {
            vector3(-1012.74, -3489.26, 13.25),
        },
        RendreKart = {
            vector3(-1012.74, -3489.26, 14.14),
        }
    }
}
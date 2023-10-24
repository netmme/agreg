# Ponts et blocs dans un graphe non orienté

Dans un graphe non orienté, un pont est une arête dont la suppression fait croître le nombre de composantes connexes. Lorsque l’on retire tous les ponts d’un graphe, les composantes connexes restantes sont appelées blocs. Par exemple, le graphe représenté ﬁgure 1 possède 4 ponts, reliant les paires de sommets (1, 3), (3, 4), (6, 7) et (11, 15) et 6 blocs, comme illustré ﬁgure 2.

Dans ce problème, nous allons nous intéresser à un algorithme permettant de déterminer les blocs d’un graphe non orienté décrit en ligne, c’est-à-dire en ajoutant les arêtes une par une. On suppose que l’on connaît à l’avance le nombre n de sommets du graphe, et que ceux-ci sont numérotés de 0 à n − 1.

La programmation s’eﬀectuera en OCaml. Le candidat peut, s’il en éprouve le besoin, déﬁnir des fonctions auxiliaires pour mieux structurer son code. Il devra alors en préciser le rôle.

# Rappels sur le langage OCAML

Une liste est construite à partir de la liste vide [] et de la construction x ::  qui renvoie une nouvelle liste dont la tête est l’élément x et dont la queue est la liste . L’appel de List.rev  renvoie une nouvelle liste, formée des éléments de la liste `l` en ordre inverse.

On peut créer des tableaux avec les fonctions Array.make, Array.init et Array.of_list.
* L’appel de Array.make n x crée un tableau de taille n dont toutes les cases contiennent la valeur x.
* L’appel de Array.init n f crée un tableau de taille n dans lequel la valeur de la case d’indice i
est égale à f (i).
* L’appel de Array.of_list  crée un tableau contenant, dans l’ordre, les éléments d’une liste .

Les cases d’un tableau sont numérotées à partir de 0. La fonction Array.length renvoie la taille d’un tableau. Pour un tableau t, on accède à l’élément d’indice i avec t.(i) et on le modiﬁe avec t.(i) <- v.

On mentionne enﬁn le type polymorphe ’a option déﬁni par :

$type ’a option = None | Some of ’a$

Un élément de la forme Some x correspond à la présence d’une valeur x de type ’a, et un élément de la forme None correspond à une absence de valeur

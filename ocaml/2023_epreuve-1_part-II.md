# Ponts et blocs dans un graphe non orienté

Dans un graphe non orienté, un pont est une arête dont la suppression fait croître le nombre de composantes connexes. Lorsque l’on retire tous les ponts d’un graphe, les composantes connexes restantes sont appelées blocs. Par exemple, le graphe représenté ﬁgure 1 possède 4 ponts, reliant les paires de sommets (1, 3), (3, 4), (6, 7) et (11, 15) et 6 blocs, comme illustré ﬁgure 2.

Dans ce problème, nous allons nous intéresser à un algorithme permettant de déterminer les blocs d’un graphe non orienté décrit en ligne, c’est-à-dire en ajoutant les arêtes une par une. On suppose que l’on connaît à l’avance le nombre n de sommets du graphe, et que ceux-ci sont numérotés de 0 à n − 1.

La programmation s’eﬀectuera en OCaml. Le candidat peut, s’il en éprouve le besoin, déﬁnir des fonctions auxiliaires pour mieux structurer son code. Il devra alors en préciser le rôle.

## Représentation sous forme de forêt

Nous allons représenter le graphe sous forme d’une forêt à l’aide d’une structure de type _union-ﬁnd_ et que nous appellerons _buf_ (pour _block union-ﬁnd_). Cette structure consiste en trois tableaux de taille le nombre n de sommets du graphe :

```type buf = { parent : int array; repr : bool array; rang : int array; }```

Chaque bloc a un unique représentant (déﬁni de façon arbitraire), indiqué par le tableau repr. Chaque sommet a un parent, représenté par le tableau du même nom et qui a deux fonctions :

- si un sommet _s_ est le représentant d’un bloc, notons-le _b_, alors soit `parent.(s) = s`, auquel cas _s_ est racine d’un des arbres de la forêt, soit il indique un sommet d’un bloc _b′_ tel qu’il existe un pont entre un sommet de b et un sommet de _b′_ ;
- sinon, en suivant les parents successifs à partir d’un sommet _s_, on arrive au représentant de son bloc.

Enﬁn, le tableau rang indique, pour chaque représentant de bloc, une mesure de la taille de ce bloc. Cette valeur interviendra uniquement à la question 2.10 lors de l’implémentation de l’opération de fusion entre blocs.

Ainsi, tous les blocs sont représentés à la manière d’une structure de type _union-ﬁnd_, à la diﬀérence que les diﬀérents blocs forment une forêt. On donne en ﬁgure 3 une représentation du graphe exemple de la ﬁgure 1 comme un élément de type _buf_, ainsi que son illustration graphique.

```
{ parent = [|3; 3; 3; 3; 3; 4; 4; 6; 4; 8; 11; 11; 11; 11; 13; 13|];
  repr = [|false; true; false; true; true; false; false; true; false;
           false; false; true; false; true; false; false|];
  rang = [|0; 0; 0; 1; 2; 0; 0; 0; 0; 0; 0; 1; 0; 1; 0; 0|] }
```

# Rappels sur le langage OCAML

Une liste est construite à partir de la liste vide [] et de la construction x :: _l_ qui renvoie une nouvelle liste dont la tête est l’élément x et dont la queue est la liste _l_. L’appel de List.rev _l_ renvoie une nouvelle liste, formée des éléments de la liste _l_ en ordre inverse.

On peut créer des tableaux avec les fonctions Array.make, Array.init et Array.of_list.
- L’appel de Array.make n x crée un tableau de taille n dont toutes les cases contiennent la valeur x.
- L’appel de Array.init n f crée un tableau de taille n dans lequel la valeur de la case d’indice i
est égale à f (i).
- L’appel de Array.of_list _l_ crée un tableau contenant, dans l’ordre, les éléments d’une liste _l_.

Les cases d’un tableau sont numérotées à partir de 0. La fonction Array.length renvoie la taille d’un tableau. Pour un tableau t, on accède à l’élément d’indice i avec t.(i) et on le modiﬁe avec t.(i) <- v.

On mentionne enﬁn le type polymorphe ’a option déﬁni par :

```type ’a option = None | Some of ’a```

Un élément de la forme Some x correspond à la présence d’une valeur x de type ’a, et un élément de la forme None correspond à une absence de valeur

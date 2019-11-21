import 'package:flutter/material.dart';

Widget mangaDetail(manga) {
  return Scaffold(
    body: Container(
        padding: EdgeInsets.fromLTRB(20, 70, 0, 0),
        child: Column(children: [
          Row(
            children: [
              Text('Name : '),
              Text(manga.name),
            ],
          ),
          Row(
            children: [
              Text('Auteur : '),
              Text(manga.author),
            ],
          ),
          Row(
            children: [
              Text('Type : '),
              Text(manga.type),
            ],
          ),
          Row(
            children: [
              Text('Country : '),
              Text(manga.country),
            ],
          ),
          Row(
            children: [Text('Score : '), Text(manga.score), Text('/10')],
          ),
          Row(
            children: [
              Text('Héros : '),
              Text(manga.mainHero),
            ],
          ),
          Row(
            children: [
              Text('Etat : '),
              if (manga.isFinished) Text('Terminé'),
              if (!manga.isFinished) Text('En cours'),
            ],
          ),
          Container(
              padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
              child: Column(
                children: [
                  Text(
                    manga.description,
                    maxLines: 20,
                    textAlign: TextAlign.justify,
                  )
                ],
              ))
        ])),
  );
}

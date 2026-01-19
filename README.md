# yh_labb

## Below is the Buisness relationship statements 


 A Student belongs to exactly one Klass, and a Klass consists of many Studenter.

A Klass belongs to exactly one Program, and a Program consists of multiple Klasser.

A Program consists of one or more Kurser, and a Kurs can be part of multiple Program.

A Kurs is taught by one or more Utbildare, and an Utbildare can teach multiple Kurser.

An Utbildare works for exactly one Konsult_företag, and a Konsult_företag employs multiple Utbildare.

A Klass is managed by exactly one Utbildningsledare, and an Utbildningsledare manages multiple Klasser.

A Klass is held at exactly one Anläggning, and an Anläggning can host multiple Klasser.

A Student has exactly one set of Personuppgifter.

An Utbildare has exactly one set of Personuppgifter.

An Utbildningsledare has exactly one set of Personuppgifter.
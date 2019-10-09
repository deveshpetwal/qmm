/* OBJECTIVE FUNCTION */

max: 5X12 + 3X13 + 3X35 + 2X25 + 4X24 + 2X58 + 6X57 + 4X47 + X46 + 5X69 + 4X79 + 7X89;

/* CONSTRAINTS */
X13 + X12 = 1;
X12 - X25 - X24 = 0;
X13 - X35 = 0;
X24 - X47 - X46 = 0;
X25 + X35 - X58 - X57 = 0;
X46 - X69 = 0;
X47 + X57 - X79 = 0;
X58 - X89 = 0;
X89 + X79 + X69 = 1;

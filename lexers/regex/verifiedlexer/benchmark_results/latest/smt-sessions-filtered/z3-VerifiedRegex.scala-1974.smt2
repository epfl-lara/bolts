; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100570 () Bool)

(assert start!100570)

(declare-fun b!1154412 () Bool)

(declare-fun e!738145 () Bool)

(assert (=> b!1154412 (= e!738145 true)))

(declare-fun b!1154411 () Bool)

(declare-fun e!738144 () Bool)

(assert (=> b!1154411 (= e!738144 e!738145)))

(declare-fun b!1154401 () Bool)

(assert (=> b!1154401 e!738144))

(assert (= b!1154411 b!1154412))

(assert (= b!1154401 b!1154411))

(declare-fun b!1154396 () Bool)

(declare-fun res!519284 () Bool)

(declare-fun e!738133 () Bool)

(assert (=> b!1154396 (=> res!519284 e!738133)))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> b!1154396 (= res!519284 (or (< from!787 0) (< to!267 from!787)))))

(declare-fun b!1154397 () Bool)

(declare-fun e!738139 () Bool)

(declare-datatypes ((List!11192 0))(
  ( (Nil!11168) (Cons!11168 (h!16569 (_ BitVec 16)) (t!108772 List!11192)) )
))
(declare-datatypes ((TokenValue!1995 0))(
  ( (FloatLiteralValue!3990 (text!14410 List!11192)) (TokenValueExt!1994 (__x!7701 Int)) (Broken!9975 (value!62947 List!11192)) (Object!2018) (End!1995) (Def!1995) (Underscore!1995) (Match!1995) (Else!1995) (Error!1995) (Case!1995) (If!1995) (Extends!1995) (Abstract!1995) (Class!1995) (Val!1995) (DelimiterValue!3990 (del!2055 List!11192)) (KeywordValue!2001 (value!62948 List!11192)) (CommentValue!3990 (value!62949 List!11192)) (WhitespaceValue!3990 (value!62950 List!11192)) (IndentationValue!1995 (value!62951 List!11192)) (String!13562) (Int32!1995) (Broken!9976 (value!62952 List!11192)) (Boolean!1996) (Unit!17213) (OperatorValue!1998 (op!2055 List!11192)) (IdentifierValue!3990 (value!62953 List!11192)) (IdentifierValue!3991 (value!62954 List!11192)) (WhitespaceValue!3991 (value!62955 List!11192)) (True!3990) (False!3990) (Broken!9977 (value!62956 List!11192)) (Broken!9978 (value!62957 List!11192)) (True!3991) (RightBrace!1995) (RightBracket!1995) (Colon!1995) (Null!1995) (Comma!1995) (LeftBracket!1995) (False!3991) (LeftBrace!1995) (ImaginaryLiteralValue!1995 (text!14411 List!11192)) (StringLiteralValue!5985 (value!62958 List!11192)) (EOFValue!1995 (value!62959 List!11192)) (IdentValue!1995 (value!62960 List!11192)) (DelimiterValue!3991 (value!62961 List!11192)) (DedentValue!1995 (value!62962 List!11192)) (NewLineValue!1995 (value!62963 List!11192)) (IntegerValue!5985 (value!62964 (_ BitVec 32)) (text!14412 List!11192)) (IntegerValue!5986 (value!62965 Int) (text!14413 List!11192)) (Times!1995) (Or!1995) (Equal!1995) (Minus!1995) (Broken!9979 (value!62966 List!11192)) (And!1995) (Div!1995) (LessEqual!1995) (Mod!1995) (Concat!5194) (Not!1995) (Plus!1995) (SpaceValue!1995 (value!62967 List!11192)) (IntegerValue!5987 (value!62968 Int) (text!14414 List!11192)) (StringLiteralValue!5986 (text!14415 List!11192)) (FloatLiteralValue!3991 (text!14416 List!11192)) (BytesLiteralValue!1995 (value!62969 List!11192)) (CommentValue!3991 (value!62970 List!11192)) (StringLiteralValue!5987 (value!62971 List!11192)) (ErrorTokenValue!1995 (msg!2056 List!11192)) )
))
(declare-datatypes ((C!6716 0))(
  ( (C!6717 (val!3614 Int)) )
))
(declare-datatypes ((Regex!3199 0))(
  ( (ElementMatch!3199 (c!193964 C!6716)) (Concat!5195 (regOne!6910 Regex!3199) (regTwo!6910 Regex!3199)) (EmptyExpr!3199) (Star!3199 (reg!3528 Regex!3199)) (EmptyLang!3199) (Union!3199 (regOne!6911 Regex!3199) (regTwo!6911 Regex!3199)) )
))
(declare-datatypes ((String!13563 0))(
  ( (String!13564 (value!62972 String)) )
))
(declare-datatypes ((List!11193 0))(
  ( (Nil!11169) (Cons!11169 (h!16570 C!6716) (t!108773 List!11193)) )
))
(declare-datatypes ((IArray!7245 0))(
  ( (IArray!7246 (innerList!3680 List!11193)) )
))
(declare-datatypes ((Conc!3620 0))(
  ( (Node!3620 (left!9726 Conc!3620) (right!10056 Conc!3620) (csize!7470 Int) (cheight!3831 Int)) (Leaf!5595 (xs!6325 IArray!7245) (csize!7471 Int)) (Empty!3620) )
))
(declare-datatypes ((BalanceConc!7262 0))(
  ( (BalanceConc!7263 (c!193965 Conc!3620)) )
))
(declare-datatypes ((TokenValueInjection!3690 0))(
  ( (TokenValueInjection!3691 (toValue!3030 Int) (toChars!2889 Int)) )
))
(declare-datatypes ((Rule!3658 0))(
  ( (Rule!3659 (regex!1929 Regex!3199) (tag!2191 String!13563) (isSeparator!1929 Bool) (transformation!1929 TokenValueInjection!3690)) )
))
(declare-datatypes ((Token!3520 0))(
  ( (Token!3521 (value!62973 TokenValue!1995) (rule!3350 Rule!3658) (size!8797 Int) (originalCharacters!2483 List!11193)) )
))
(declare-datatypes ((List!11194 0))(
  ( (Nil!11170) (Cons!11170 (h!16571 Token!3520) (t!108774 List!11194)) )
))
(declare-datatypes ((List!11195 0))(
  ( (Nil!11171) (Cons!11171 (h!16572 Rule!3658) (t!108775 List!11195)) )
))
(declare-datatypes ((IArray!7247 0))(
  ( (IArray!7248 (innerList!3681 List!11194)) )
))
(declare-datatypes ((Conc!3621 0))(
  ( (Node!3621 (left!9727 Conc!3621) (right!10057 Conc!3621) (csize!7472 Int) (cheight!3832 Int)) (Leaf!5596 (xs!6326 IArray!7247) (csize!7473 Int)) (Empty!3621) )
))
(declare-datatypes ((BalanceConc!7264 0))(
  ( (BalanceConc!7265 (c!193966 Conc!3621)) )
))
(declare-datatypes ((PrintableTokens!544 0))(
  ( (PrintableTokens!545 (rules!9396 List!11195) (tokens!1528 BalanceConc!7264)) )
))
(declare-fun thiss!10527 () PrintableTokens!544)

(declare-fun tp!332892 () Bool)

(declare-fun inv!14668 (Conc!3621) Bool)

(assert (=> b!1154397 (= e!738139 (and (inv!14668 (c!193966 (tokens!1528 thiss!10527))) tp!332892))))

(declare-fun res!519286 () Bool)

(declare-fun e!738137 () Bool)

(assert (=> start!100570 (=> (not res!519286) (not e!738137))))

(assert (=> start!100570 (= res!519286 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100570 e!738137))

(assert (=> start!100570 true))

(declare-fun e!738138 () Bool)

(declare-fun inv!14669 (PrintableTokens!544) Bool)

(assert (=> start!100570 (and (inv!14669 thiss!10527) e!738138)))

(declare-fun b!1154398 () Bool)

(declare-fun e!738134 () Bool)

(assert (=> b!1154398 (= e!738137 e!738134)))

(declare-fun res!519285 () Bool)

(assert (=> b!1154398 (=> (not res!519285) (not e!738134))))

(declare-datatypes ((LexerInterface!1624 0))(
  ( (LexerInterfaceExt!1621 (__x!7702 Int)) (Lexer!1622) )
))
(declare-fun rulesInvariant!1498 (LexerInterface!1624 List!11195) Bool)

(assert (=> b!1154398 (= res!519285 (rulesInvariant!1498 Lexer!1622 (rules!9396 thiss!10527)))))

(declare-datatypes ((Unit!17214 0))(
  ( (Unit!17215) )
))
(declare-fun lt!392594 () Unit!17214)

(declare-fun lemmaInvariant!116 (PrintableTokens!544) Unit!17214)

(assert (=> b!1154398 (= lt!392594 (lemmaInvariant!116 thiss!10527))))

(declare-fun b!1154399 () Bool)

(declare-fun res!519282 () Bool)

(assert (=> b!1154399 (=> (not res!519282) (not e!738137))))

(declare-fun size!8798 (BalanceConc!7264) Int)

(assert (=> b!1154399 (= res!519282 (<= to!267 (size!8798 (tokens!1528 thiss!10527))))))

(declare-fun b!1154400 () Bool)

(assert (=> b!1154400 (= e!738133 true)))

(declare-fun lt!392595 () Int)

(declare-fun lt!392596 () List!11194)

(declare-fun size!8799 (List!11194) Int)

(assert (=> b!1154400 (= lt!392595 (size!8799 lt!392596))))

(assert (=> b!1154401 (= e!738134 (not e!738133))))

(declare-fun res!519281 () Bool)

(assert (=> b!1154401 (=> res!519281 e!738133)))

(declare-fun lambda!46475 () Int)

(declare-fun forall!2846 (BalanceConc!7264 Int) Bool)

(assert (=> b!1154401 (= res!519281 (not (forall!2846 (tokens!1528 thiss!10527) lambda!46475)))))

(declare-fun e!738135 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!492 (LexerInterface!1624 List!11195 List!11194) Bool)

(assert (=> b!1154401 (= (rulesProduceEachTokenIndividuallyList!492 Lexer!1622 (rules!9396 thiss!10527) lt!392596) e!738135)))

(declare-fun res!519287 () Bool)

(assert (=> b!1154401 (=> res!519287 e!738135)))

(get-info :version)

(assert (=> b!1154401 (= res!519287 (not ((_ is Cons!11170) lt!392596)))))

(declare-fun list!4122 (BalanceConc!7264) List!11194)

(assert (=> b!1154401 (= lt!392596 (list!4122 (tokens!1528 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!663 (LexerInterface!1624 List!11195 BalanceConc!7264) Bool)

(assert (=> b!1154401 (= (rulesProduceEachTokenIndividually!663 Lexer!1622 (rules!9396 thiss!10527) (tokens!1528 thiss!10527)) (forall!2846 (tokens!1528 thiss!10527) lambda!46475))))

(declare-fun b!1154402 () Bool)

(declare-fun e!738136 () Bool)

(assert (=> b!1154402 (= e!738135 e!738136)))

(declare-fun res!519283 () Bool)

(assert (=> b!1154402 (=> (not res!519283) (not e!738136))))

(declare-fun rulesProduceIndividualToken!661 (LexerInterface!1624 List!11195 Token!3520) Bool)

(assert (=> b!1154402 (= res!519283 (rulesProduceIndividualToken!661 Lexer!1622 (rules!9396 thiss!10527) (h!16571 lt!392596)))))

(declare-fun b!1154403 () Bool)

(declare-fun tp!332891 () Bool)

(declare-fun inv!14670 (BalanceConc!7264) Bool)

(assert (=> b!1154403 (= e!738138 (and tp!332891 (inv!14670 (tokens!1528 thiss!10527)) e!738139))))

(declare-fun b!1154404 () Bool)

(assert (=> b!1154404 (= e!738136 (rulesProduceEachTokenIndividuallyList!492 Lexer!1622 (rules!9396 thiss!10527) (t!108774 lt!392596)))))

(assert (= (and start!100570 res!519286) b!1154399))

(assert (= (and b!1154399 res!519282) b!1154398))

(assert (= (and b!1154398 res!519285) b!1154401))

(assert (= (and b!1154401 (not res!519287)) b!1154402))

(assert (= (and b!1154402 res!519283) b!1154404))

(assert (= (and b!1154401 (not res!519281)) b!1154396))

(assert (= (and b!1154396 (not res!519284)) b!1154400))

(assert (= b!1154403 b!1154397))

(assert (= start!100570 b!1154403))

(declare-fun m!1321521 () Bool)

(assert (=> b!1154400 m!1321521))

(declare-fun m!1321523 () Bool)

(assert (=> b!1154403 m!1321523))

(declare-fun m!1321525 () Bool)

(assert (=> start!100570 m!1321525))

(declare-fun m!1321527 () Bool)

(assert (=> b!1154399 m!1321527))

(declare-fun m!1321529 () Bool)

(assert (=> b!1154398 m!1321529))

(declare-fun m!1321531 () Bool)

(assert (=> b!1154398 m!1321531))

(declare-fun m!1321533 () Bool)

(assert (=> b!1154402 m!1321533))

(declare-fun m!1321535 () Bool)

(assert (=> b!1154401 m!1321535))

(declare-fun m!1321537 () Bool)

(assert (=> b!1154401 m!1321537))

(declare-fun m!1321539 () Bool)

(assert (=> b!1154401 m!1321539))

(declare-fun m!1321541 () Bool)

(assert (=> b!1154401 m!1321541))

(assert (=> b!1154401 m!1321539))

(declare-fun m!1321543 () Bool)

(assert (=> b!1154404 m!1321543))

(declare-fun m!1321545 () Bool)

(assert (=> b!1154397 m!1321545))

(check-sat (not b!1154397) (not b!1154412) (not b!1154401) (not start!100570) (not b!1154400) (not b!1154398) (not b!1154411) (not b!1154402) (not b!1154404) (not b!1154403) (not b!1154399))
(check-sat)

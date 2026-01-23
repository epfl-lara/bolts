; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7034 () Bool)

(assert start!7034)

(declare-fun b!81156 () Bool)

(declare-fun b_free!2633 () Bool)

(declare-fun b_next!2633 () Bool)

(assert (=> b!81156 (= b_free!2633 (not b_next!2633))))

(declare-fun tp!50740 () Bool)

(declare-fun b_and!3759 () Bool)

(assert (=> b!81156 (= tp!50740 b_and!3759)))

(declare-fun b_free!2635 () Bool)

(declare-fun b_next!2635 () Bool)

(assert (=> b!81156 (= b_free!2635 (not b_next!2635))))

(declare-fun tp!50737 () Bool)

(declare-fun b_and!3761 () Bool)

(assert (=> b!81156 (= tp!50737 b_and!3761)))

(declare-fun b!81150 () Bool)

(declare-fun e!45562 () Bool)

(declare-fun tp_is_empty!697 () Bool)

(declare-fun tp!50736 () Bool)

(assert (=> b!81150 (= e!45562 (and tp_is_empty!697 tp!50736))))

(declare-fun b!81151 () Bool)

(declare-fun e!45558 () Bool)

(declare-fun e!45563 () Bool)

(assert (=> b!81151 (= e!45558 (not e!45563))))

(declare-fun res!42227 () Bool)

(assert (=> b!81151 (=> res!42227 e!45563)))

(declare-datatypes ((C!1696 0))(
  ( (C!1697 (val!455 Int)) )
))
(declare-datatypes ((List!1464 0))(
  ( (Nil!1458) (Cons!1458 (h!6855 C!1696) (t!20399 List!1464)) )
))
(declare-datatypes ((IArray!881 0))(
  ( (IArray!882 (innerList!498 List!1464)) )
))
(declare-datatypes ((Conc!440 0))(
  ( (Node!440 (left!1108 Conc!440) (right!1438 Conc!440) (csize!1110 Int) (cheight!651 Int)) (Leaf!735 (xs!3019 IArray!881) (csize!1111 Int)) (Empty!440) )
))
(declare-datatypes ((BalanceConc!884 0))(
  ( (BalanceConc!885 (c!20510 Conc!440)) )
))
(declare-datatypes ((Regex!387 0))(
  ( (ElementMatch!387 (c!20511 C!1696)) (Concat!696 (regOne!1286 Regex!387) (regTwo!1286 Regex!387)) (EmptyExpr!387) (Star!387 (reg!716 Regex!387)) (EmptyLang!387) (Union!387 (regOne!1287 Regex!387) (regTwo!1287 Regex!387)) )
))
(declare-datatypes ((String!1936 0))(
  ( (String!1937 (value!11961 String)) )
))
(declare-datatypes ((List!1465 0))(
  ( (Nil!1459) (Cons!1459 (h!6856 (_ BitVec 16)) (t!20400 List!1465)) )
))
(declare-datatypes ((TokenValue!309 0))(
  ( (FloatLiteralValue!618 (text!2608 List!1465)) (TokenValueExt!308 (__x!1713 Int)) (Broken!1545 (value!11962 List!1465)) (Object!314) (End!309) (Def!309) (Underscore!309) (Match!309) (Else!309) (Error!309) (Case!309) (If!309) (Extends!309) (Abstract!309) (Class!309) (Val!309) (DelimiterValue!618 (del!369 List!1465)) (KeywordValue!315 (value!11963 List!1465)) (CommentValue!618 (value!11964 List!1465)) (WhitespaceValue!618 (value!11965 List!1465)) (IndentationValue!309 (value!11966 List!1465)) (String!1938) (Int32!309) (Broken!1546 (value!11967 List!1465)) (Boolean!310) (Unit!907) (OperatorValue!312 (op!369 List!1465)) (IdentifierValue!618 (value!11968 List!1465)) (IdentifierValue!619 (value!11969 List!1465)) (WhitespaceValue!619 (value!11970 List!1465)) (True!618) (False!618) (Broken!1547 (value!11971 List!1465)) (Broken!1548 (value!11972 List!1465)) (True!619) (RightBrace!309) (RightBracket!309) (Colon!309) (Null!309) (Comma!309) (LeftBracket!309) (False!619) (LeftBrace!309) (ImaginaryLiteralValue!309 (text!2609 List!1465)) (StringLiteralValue!927 (value!11973 List!1465)) (EOFValue!309 (value!11974 List!1465)) (IdentValue!309 (value!11975 List!1465)) (DelimiterValue!619 (value!11976 List!1465)) (DedentValue!309 (value!11977 List!1465)) (NewLineValue!309 (value!11978 List!1465)) (IntegerValue!927 (value!11979 (_ BitVec 32)) (text!2610 List!1465)) (IntegerValue!928 (value!11980 Int) (text!2611 List!1465)) (Times!309) (Or!309) (Equal!309) (Minus!309) (Broken!1549 (value!11981 List!1465)) (And!309) (Div!309) (LessEqual!309) (Mod!309) (Concat!697) (Not!309) (Plus!309) (SpaceValue!309 (value!11982 List!1465)) (IntegerValue!929 (value!11983 Int) (text!2612 List!1465)) (StringLiteralValue!928 (text!2613 List!1465)) (FloatLiteralValue!619 (text!2614 List!1465)) (BytesLiteralValue!309 (value!11984 List!1465)) (CommentValue!619 (value!11985 List!1465)) (StringLiteralValue!929 (value!11986 List!1465)) (ErrorTokenValue!309 (msg!370 List!1465)) )
))
(declare-datatypes ((TokenValueInjection!442 0))(
  ( (TokenValueInjection!443 (toValue!838 Int) (toChars!697 Int)) )
))
(declare-datatypes ((Rule!438 0))(
  ( (Rule!439 (regex!319 Regex!387) (tag!497 String!1936) (isSeparator!319 Bool) (transformation!319 TokenValueInjection!442)) )
))
(declare-datatypes ((Token!398 0))(
  ( (Token!399 (value!11987 TokenValue!309) (rule!802 Rule!438) (size!1259 Int) (originalCharacters!370 List!1464)) )
))
(declare-datatypes ((tuple2!1502 0))(
  ( (tuple2!1503 (_1!958 Token!398) (_2!958 List!1464)) )
))
(declare-fun lt!18507 () tuple2!1502)

(declare-fun lt!18508 () List!1464)

(declare-fun input!2238 () List!1464)

(declare-fun ++!156 (List!1464 List!1464) List!1464)

(assert (=> b!81151 (= res!42227 (not (= input!2238 (++!156 lt!18508 (_2!958 lt!18507)))))))

(declare-fun list!505 (BalanceConc!884) List!1464)

(declare-fun charsOf!56 (Token!398) BalanceConc!884)

(assert (=> b!81151 (= lt!18508 (list!505 (charsOf!56 (_1!958 lt!18507))))))

(declare-datatypes ((List!1466 0))(
  ( (Nil!1460) (Cons!1460 (h!6857 Token!398) (t!20401 List!1466)) )
))
(declare-fun lt!18502 () List!1466)

(declare-datatypes ((IArray!883 0))(
  ( (IArray!884 (innerList!499 List!1466)) )
))
(declare-datatypes ((Conc!441 0))(
  ( (Node!441 (left!1109 Conc!441) (right!1439 Conc!441) (csize!1112 Int) (cheight!652 Int)) (Leaf!736 (xs!3020 IArray!883) (csize!1113 Int)) (Empty!441) )
))
(declare-datatypes ((BalanceConc!886 0))(
  ( (BalanceConc!887 (c!20512 Conc!441)) )
))
(declare-datatypes ((tuple2!1504 0))(
  ( (tuple2!1505 (_1!959 BalanceConc!886) (_2!959 BalanceConc!884)) )
))
(declare-fun lt!18509 () tuple2!1504)

(declare-fun lt!18511 () List!1464)

(declare-fun lt!18514 () List!1464)

(declare-datatypes ((tuple2!1506 0))(
  ( (tuple2!1507 (_1!960 List!1466) (_2!960 List!1464)) )
))
(declare-fun list!506 (BalanceConc!886) List!1466)

(declare-fun tail!132 (List!1466) List!1466)

(assert (=> b!81151 (= (tuple2!1507 (list!506 (_1!959 lt!18509)) lt!18514) (tuple2!1507 (tail!132 lt!18502) lt!18511))))

(declare-datatypes ((Unit!908 0))(
  ( (Unit!909) )
))
(declare-fun lt!18501 () Unit!908)

(declare-datatypes ((LexerInterface!211 0))(
  ( (LexerInterfaceExt!208 (__x!1714 Int)) (Lexer!209) )
))
(declare-fun thiss!19403 () LexerInterface!211)

(declare-datatypes ((List!1467 0))(
  ( (Nil!1461) (Cons!1461 (h!6858 Rule!438) (t!20402 List!1467)) )
))
(declare-fun rules!2471 () List!1467)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!30 (LexerInterface!211 List!1467 List!1464 List!1466 List!1464) Unit!908)

(assert (=> b!81151 (= lt!18501 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!30 thiss!19403 rules!2471 input!2238 lt!18502 lt!18511))))

(declare-fun lt!18505 () tuple2!1504)

(assert (=> b!81151 (= lt!18511 (list!505 (_2!959 lt!18505)))))

(declare-fun lt!18513 () List!1464)

(assert (=> b!81151 (= (++!156 lt!18513 lt!18514) (_2!958 lt!18507))))

(assert (=> b!81151 (= lt!18514 (list!505 (_2!959 lt!18509)))))

(declare-fun print!50 (LexerInterface!211 BalanceConc!886) BalanceConc!884)

(assert (=> b!81151 (= lt!18513 (list!505 (print!50 thiss!19403 (_1!959 lt!18509))))))

(declare-fun lex!119 (LexerInterface!211 List!1467 BalanceConc!884) tuple2!1504)

(declare-fun seqFromList!150 (List!1464) BalanceConc!884)

(assert (=> b!81151 (= lt!18509 (lex!119 thiss!19403 rules!2471 (seqFromList!150 (_2!958 lt!18507))))))

(declare-fun lt!18510 () Unit!908)

(declare-fun theoremInvertFromString!34 (LexerInterface!211 List!1467 List!1464) Unit!908)

(assert (=> b!81151 (= lt!18510 (theoremInvertFromString!34 thiss!19403 rules!2471 (_2!958 lt!18507)))))

(declare-datatypes ((Option!128 0))(
  ( (None!127) (Some!127 (v!12824 tuple2!1502)) )
))
(declare-fun get!367 (Option!128) tuple2!1502)

(declare-fun maxPrefix!55 (LexerInterface!211 List!1467 List!1464) Option!128)

(assert (=> b!81151 (= lt!18507 (get!367 (maxPrefix!55 thiss!19403 rules!2471 input!2238)))))

(declare-fun lt!18504 () BalanceConc!886)

(declare-fun prepend!81 (BalanceConc!886 Token!398) BalanceConc!886)

(assert (=> b!81151 (= lt!18502 (list!506 (prepend!81 lt!18504 (h!6857 lt!18502))))))

(declare-fun seqFromList!151 (List!1466) BalanceConc!886)

(assert (=> b!81151 (= lt!18504 (seqFromList!151 (t!20401 lt!18502)))))

(declare-fun lt!18503 () Unit!908)

(declare-fun seqFromListBHdTlConstructive!42 (Token!398 List!1466 BalanceConc!886) Unit!908)

(assert (=> b!81151 (= lt!18503 (seqFromListBHdTlConstructive!42 (h!6857 lt!18502) (t!20401 lt!18502) (_1!959 lt!18505)))))

(declare-fun b!81152 () Bool)

(declare-fun e!45559 () Bool)

(assert (=> b!81152 (= e!45559 e!45558)))

(declare-fun res!42230 () Bool)

(assert (=> b!81152 (=> (not res!42230) (not e!45558))))

(declare-fun lt!18512 () Bool)

(get-info :version)

(assert (=> b!81152 (= res!42230 (and (or lt!18512 (not ((_ is Nil!1460) (t!20401 lt!18502)))) (not lt!18512)))))

(assert (=> b!81152 (= lt!18512 (not ((_ is Cons!1460) lt!18502)))))

(assert (=> b!81152 (= lt!18502 (list!506 (_1!959 lt!18505)))))

(declare-fun b!81154 () Bool)

(declare-fun e!45561 () Bool)

(assert (=> b!81154 (= e!45561 e!45559)))

(declare-fun res!42229 () Bool)

(assert (=> b!81154 (=> (not res!42229) (not e!45559))))

(declare-fun isEmpty!511 (BalanceConc!884) Bool)

(assert (=> b!81154 (= res!42229 (not (isEmpty!511 (_2!959 lt!18505))))))

(assert (=> b!81154 (= lt!18505 (lex!119 thiss!19403 rules!2471 (seqFromList!150 input!2238)))))

(declare-fun b!81155 () Bool)

(declare-fun e!45560 () Bool)

(declare-fun e!45565 () Bool)

(declare-fun tp!50739 () Bool)

(assert (=> b!81155 (= e!45560 (and e!45565 tp!50739))))

(declare-fun e!45564 () Bool)

(assert (=> b!81156 (= e!45564 (and tp!50740 tp!50737))))

(declare-fun b!81157 () Bool)

(declare-fun res!42228 () Bool)

(assert (=> b!81157 (=> (not res!42228) (not e!45561))))

(declare-fun rulesInvariant!205 (LexerInterface!211 List!1467) Bool)

(assert (=> b!81157 (= res!42228 (rulesInvariant!205 thiss!19403 rules!2471))))

(declare-fun b!81158 () Bool)

(declare-fun res!42231 () Bool)

(assert (=> b!81158 (=> res!42231 e!45563)))

(assert (=> b!81158 (= res!42231 (not (= input!2238 (++!156 lt!18508 (++!156 (list!505 (print!50 thiss!19403 lt!18504)) lt!18511)))))))

(declare-fun b!81153 () Bool)

(assert (=> b!81153 (= e!45563 true)))

(declare-fun lt!18506 () Bool)

(declare-fun rulesValidInductive!48 (LexerInterface!211 List!1467) Bool)

(assert (=> b!81153 (= lt!18506 (rulesValidInductive!48 thiss!19403 rules!2471))))

(declare-fun res!42232 () Bool)

(assert (=> start!7034 (=> (not res!42232) (not e!45561))))

(assert (=> start!7034 (= res!42232 ((_ is Lexer!209) thiss!19403))))

(assert (=> start!7034 e!45561))

(assert (=> start!7034 true))

(assert (=> start!7034 e!45560))

(assert (=> start!7034 e!45562))

(declare-fun b!81159 () Bool)

(declare-fun res!42226 () Bool)

(assert (=> b!81159 (=> (not res!42226) (not e!45561))))

(declare-fun isEmpty!512 (List!1467) Bool)

(assert (=> b!81159 (= res!42226 (not (isEmpty!512 rules!2471)))))

(declare-fun tp!50738 () Bool)

(declare-fun b!81160 () Bool)

(declare-fun inv!1807 (String!1936) Bool)

(declare-fun inv!1809 (TokenValueInjection!442) Bool)

(assert (=> b!81160 (= e!45565 (and tp!50738 (inv!1807 (tag!497 (h!6858 rules!2471))) (inv!1809 (transformation!319 (h!6858 rules!2471))) e!45564))))

(assert (= (and start!7034 res!42232) b!81159))

(assert (= (and b!81159 res!42226) b!81157))

(assert (= (and b!81157 res!42228) b!81154))

(assert (= (and b!81154 res!42229) b!81152))

(assert (= (and b!81152 res!42230) b!81151))

(assert (= (and b!81151 (not res!42227)) b!81158))

(assert (= (and b!81158 (not res!42231)) b!81153))

(assert (= b!81160 b!81156))

(assert (= b!81155 b!81160))

(assert (= (and start!7034 ((_ is Cons!1461) rules!2471)) b!81155))

(assert (= (and start!7034 ((_ is Cons!1458) input!2238)) b!81150))

(declare-fun m!56884 () Bool)

(assert (=> b!81158 m!56884))

(assert (=> b!81158 m!56884))

(declare-fun m!56886 () Bool)

(assert (=> b!81158 m!56886))

(assert (=> b!81158 m!56886))

(declare-fun m!56888 () Bool)

(assert (=> b!81158 m!56888))

(assert (=> b!81158 m!56888))

(declare-fun m!56890 () Bool)

(assert (=> b!81158 m!56890))

(declare-fun m!56892 () Bool)

(assert (=> b!81154 m!56892))

(declare-fun m!56894 () Bool)

(assert (=> b!81154 m!56894))

(assert (=> b!81154 m!56894))

(declare-fun m!56896 () Bool)

(assert (=> b!81154 m!56896))

(declare-fun m!56898 () Bool)

(assert (=> b!81153 m!56898))

(declare-fun m!56900 () Bool)

(assert (=> b!81152 m!56900))

(declare-fun m!56902 () Bool)

(assert (=> b!81159 m!56902))

(declare-fun m!56904 () Bool)

(assert (=> b!81151 m!56904))

(declare-fun m!56906 () Bool)

(assert (=> b!81151 m!56906))

(declare-fun m!56908 () Bool)

(assert (=> b!81151 m!56908))

(declare-fun m!56910 () Bool)

(assert (=> b!81151 m!56910))

(declare-fun m!56912 () Bool)

(assert (=> b!81151 m!56912))

(declare-fun m!56914 () Bool)

(assert (=> b!81151 m!56914))

(declare-fun m!56916 () Bool)

(assert (=> b!81151 m!56916))

(declare-fun m!56918 () Bool)

(assert (=> b!81151 m!56918))

(declare-fun m!56920 () Bool)

(assert (=> b!81151 m!56920))

(declare-fun m!56922 () Bool)

(assert (=> b!81151 m!56922))

(declare-fun m!56924 () Bool)

(assert (=> b!81151 m!56924))

(declare-fun m!56926 () Bool)

(assert (=> b!81151 m!56926))

(assert (=> b!81151 m!56920))

(declare-fun m!56928 () Bool)

(assert (=> b!81151 m!56928))

(assert (=> b!81151 m!56924))

(declare-fun m!56930 () Bool)

(assert (=> b!81151 m!56930))

(declare-fun m!56932 () Bool)

(assert (=> b!81151 m!56932))

(assert (=> b!81151 m!56908))

(declare-fun m!56934 () Bool)

(assert (=> b!81151 m!56934))

(declare-fun m!56936 () Bool)

(assert (=> b!81151 m!56936))

(declare-fun m!56938 () Bool)

(assert (=> b!81151 m!56938))

(assert (=> b!81151 m!56916))

(declare-fun m!56940 () Bool)

(assert (=> b!81151 m!56940))

(declare-fun m!56942 () Bool)

(assert (=> b!81151 m!56942))

(assert (=> b!81151 m!56912))

(declare-fun m!56944 () Bool)

(assert (=> b!81160 m!56944))

(declare-fun m!56946 () Bool)

(assert (=> b!81160 m!56946))

(declare-fun m!56948 () Bool)

(assert (=> b!81157 m!56948))

(check-sat (not b!81150) (not b!81155) (not b!81159) b_and!3761 (not b_next!2635) (not b!81152) (not b!81153) (not b!81157) (not b_next!2633) (not b!81154) tp_is_empty!697 (not b!81160) b_and!3759 (not b!81151) (not b!81158))
(check-sat b_and!3761 b_and!3759 (not b_next!2635) (not b_next!2633))

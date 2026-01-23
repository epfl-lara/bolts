; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3614 () Bool)

(assert start!3614)

(declare-fun b!50099 () Bool)

(declare-fun b_free!1509 () Bool)

(declare-fun b_next!1509 () Bool)

(assert (=> b!50099 (= b_free!1509 (not b_next!1509))))

(declare-fun tp!33286 () Bool)

(declare-fun b_and!1551 () Bool)

(assert (=> b!50099 (= tp!33286 b_and!1551)))

(declare-fun b_free!1511 () Bool)

(declare-fun b_next!1511 () Bool)

(assert (=> b!50099 (= b_free!1511 (not b_next!1511))))

(declare-fun tp!33290 () Bool)

(declare-fun b_and!1553 () Bool)

(assert (=> b!50099 (= tp!33290 b_and!1553)))

(declare-fun b!50093 () Bool)

(declare-fun e!29327 () Bool)

(declare-fun e!29330 () Bool)

(assert (=> b!50093 (= e!29327 e!29330)))

(declare-fun res!32896 () Bool)

(assert (=> b!50093 (=> (not res!32896) (not e!29330))))

(declare-fun from!821 () Int)

(declare-fun lt!8156 () Int)

(assert (=> b!50093 (= res!32896 (<= from!821 lt!8156))))

(declare-datatypes ((List!942 0))(
  ( (Nil!936) (Cons!936 (h!6333 (_ BitVec 16)) (t!17145 List!942)) )
))
(declare-datatypes ((TokenValue!189 0))(
  ( (FloatLiteralValue!378 (text!1768 List!942)) (TokenValueExt!188 (__x!1473 Int)) (Broken!945 (value!8543 List!942)) (Object!194) (End!189) (Def!189) (Underscore!189) (Match!189) (Else!189) (Error!189) (Case!189) (If!189) (Extends!189) (Abstract!189) (Class!189) (Val!189) (DelimiterValue!378 (del!249 List!942)) (KeywordValue!195 (value!8544 List!942)) (CommentValue!378 (value!8545 List!942)) (WhitespaceValue!378 (value!8546 List!942)) (IndentationValue!189 (value!8547 List!942)) (String!1336) (Int32!189) (Broken!946 (value!8548 List!942)) (Boolean!190) (Unit!517) (OperatorValue!192 (op!249 List!942)) (IdentifierValue!378 (value!8549 List!942)) (IdentifierValue!379 (value!8550 List!942)) (WhitespaceValue!379 (value!8551 List!942)) (True!378) (False!378) (Broken!947 (value!8552 List!942)) (Broken!948 (value!8553 List!942)) (True!379) (RightBrace!189) (RightBracket!189) (Colon!189) (Null!189) (Comma!189) (LeftBracket!189) (False!379) (LeftBrace!189) (ImaginaryLiteralValue!189 (text!1769 List!942)) (StringLiteralValue!567 (value!8554 List!942)) (EOFValue!189 (value!8555 List!942)) (IdentValue!189 (value!8556 List!942)) (DelimiterValue!379 (value!8557 List!942)) (DedentValue!189 (value!8558 List!942)) (NewLineValue!189 (value!8559 List!942)) (IntegerValue!567 (value!8560 (_ BitVec 32)) (text!1770 List!942)) (IntegerValue!568 (value!8561 Int) (text!1771 List!942)) (Times!189) (Or!189) (Equal!189) (Minus!189) (Broken!949 (value!8562 List!942)) (And!189) (Div!189) (LessEqual!189) (Mod!189) (Concat!456) (Not!189) (Plus!189) (SpaceValue!189 (value!8563 List!942)) (IntegerValue!569 (value!8564 Int) (text!1772 List!942)) (StringLiteralValue!568 (text!1773 List!942)) (FloatLiteralValue!379 (text!1774 List!942)) (BytesLiteralValue!189 (value!8565 List!942)) (CommentValue!379 (value!8566 List!942)) (StringLiteralValue!569 (value!8567 List!942)) (ErrorTokenValue!189 (msg!250 List!942)) )
))
(declare-datatypes ((C!1456 0))(
  ( (C!1457 (val!335 Int)) )
))
(declare-datatypes ((Regex!267 0))(
  ( (ElementMatch!267 (c!16585 C!1456)) (Concat!457 (regOne!1046 Regex!267) (regTwo!1046 Regex!267)) (EmptyExpr!267) (Star!267 (reg!596 Regex!267)) (EmptyLang!267) (Union!267 (regOne!1047 Regex!267) (regTwo!1047 Regex!267)) )
))
(declare-datatypes ((String!1337 0))(
  ( (String!1338 (value!8568 String)) )
))
(declare-datatypes ((List!943 0))(
  ( (Nil!937) (Cons!937 (h!6334 C!1456) (t!17146 List!943)) )
))
(declare-datatypes ((IArray!405 0))(
  ( (IArray!406 (innerList!260 List!943)) )
))
(declare-datatypes ((Conc!202 0))(
  ( (Node!202 (left!714 Conc!202) (right!1044 Conc!202) (csize!634 Int) (cheight!413 Int)) (Leaf!437 (xs!2781 IArray!405) (csize!635 Int)) (Empty!202) )
))
(declare-datatypes ((BalanceConc!408 0))(
  ( (BalanceConc!409 (c!16586 Conc!202)) )
))
(declare-datatypes ((TokenValueInjection!202 0))(
  ( (TokenValueInjection!203 (toValue!678 Int) (toChars!537 Int)) )
))
(declare-datatypes ((Rule!198 0))(
  ( (Rule!199 (regex!199 Regex!267) (tag!377 String!1337) (isSeparator!199 Bool) (transformation!199 TokenValueInjection!202)) )
))
(declare-datatypes ((Token!162 0))(
  ( (Token!163 (value!8569 TokenValue!189) (rule!674 Rule!198) (size!897 Int) (originalCharacters!252 List!943)) )
))
(declare-datatypes ((List!944 0))(
  ( (Nil!938) (Cons!938 (h!6335 Token!162) (t!17147 List!944)) )
))
(declare-datatypes ((IArray!407 0))(
  ( (IArray!408 (innerList!261 List!944)) )
))
(declare-datatypes ((Conc!203 0))(
  ( (Node!203 (left!715 Conc!203) (right!1045 Conc!203) (csize!636 Int) (cheight!414 Int)) (Leaf!438 (xs!2782 IArray!407) (csize!637 Int)) (Empty!203) )
))
(declare-datatypes ((BalanceConc!410 0))(
  ( (BalanceConc!411 (c!16587 Conc!203)) )
))
(declare-fun v!6227 () BalanceConc!410)

(declare-fun size!898 (BalanceConc!410) Int)

(assert (=> b!50093 (= lt!8156 (size!898 v!6227))))

(declare-fun e!29332 () Bool)

(declare-fun e!29328 () Bool)

(declare-fun tp!33287 () Bool)

(declare-fun b!50094 () Bool)

(declare-datatypes ((List!945 0))(
  ( (Nil!939) (Cons!939 (h!6336 Rule!198) (t!17148 List!945)) )
))
(declare-fun rules!1069 () List!945)

(declare-fun inv!1247 (String!1337) Bool)

(declare-fun inv!1251 (TokenValueInjection!202) Bool)

(assert (=> b!50094 (= e!29328 (and tp!33287 (inv!1247 (tag!377 (h!6336 rules!1069))) (inv!1251 (transformation!199 (h!6336 rules!1069))) e!29332))))

(declare-fun b!50095 () Bool)

(declare-fun res!32894 () Bool)

(assert (=> b!50095 (=> (not res!32894) (not e!29330))))

(declare-datatypes ((LexerInterface!91 0))(
  ( (LexerInterfaceExt!88 (__x!1474 Int)) (Lexer!89) )
))
(declare-fun thiss!11059 () LexerInterface!91)

(declare-fun rulesProduceEachTokenIndividually!29 (LexerInterface!91 List!945 BalanceConc!410) Bool)

(assert (=> b!50095 (= res!32894 (rulesProduceEachTokenIndividually!29 thiss!11059 rules!1069 v!6227))))

(declare-fun b!50096 () Bool)

(declare-fun e!29329 () Bool)

(declare-fun tp!33289 () Bool)

(declare-fun inv!1252 (Conc!203) Bool)

(assert (=> b!50096 (= e!29329 (and (inv!1252 (c!16587 v!6227)) tp!33289))))

(declare-fun b!50097 () Bool)

(declare-fun e!29334 () Bool)

(assert (=> b!50097 (= e!29334 (and (<= 0 from!821) (< from!821 lt!8156)))))

(declare-fun b!50098 () Bool)

(declare-fun res!32893 () Bool)

(assert (=> b!50098 (=> (not res!32893) (not e!29330))))

(declare-fun rulesInvariant!85 (LexerInterface!91 List!945) Bool)

(assert (=> b!50098 (= res!32893 (rulesInvariant!85 thiss!11059 rules!1069))))

(assert (=> b!50099 (= e!29332 (and tp!33286 tp!33290))))

(declare-fun b!50100 () Bool)

(declare-fun res!32895 () Bool)

(assert (=> b!50100 (=> (not res!32895) (not e!29330))))

(declare-fun isEmpty!185 (List!945) Bool)

(assert (=> b!50100 (= res!32895 (not (isEmpty!185 rules!1069)))))

(declare-fun b!50101 () Bool)

(declare-fun res!32892 () Bool)

(declare-fun e!29331 () Bool)

(assert (=> b!50101 (=> res!32892 e!29331)))

(declare-fun lt!8148 () List!944)

(declare-fun lt!8154 () Token!162)

(declare-fun contains!64 (List!944 Token!162) Bool)

(assert (=> b!50101 (= res!32892 (not (contains!64 lt!8148 lt!8154)))))

(declare-fun b!50103 () Bool)

(assert (=> b!50103 (= e!29330 (not e!29331))))

(declare-fun res!32897 () Bool)

(assert (=> b!50103 (=> res!32897 e!29331)))

(declare-fun contains!65 (BalanceConc!410 Token!162) Bool)

(assert (=> b!50103 (= res!32897 (not (contains!65 v!6227 lt!8154)))))

(declare-fun apply!48 (BalanceConc!410 Int) Token!162)

(assert (=> b!50103 (= lt!8154 (apply!48 v!6227 from!821))))

(declare-fun lt!8149 () List!944)

(declare-fun tail!41 (List!944) List!944)

(declare-fun drop!16 (List!944 Int) List!944)

(assert (=> b!50103 (= (tail!41 lt!8149) (drop!16 lt!8148 (+ 2 from!821)))))

(declare-datatypes ((Unit!518 0))(
  ( (Unit!519) )
))
(declare-fun lt!8151 () Unit!518)

(declare-fun lemmaDropTail!12 (List!944 Int) Unit!518)

(assert (=> b!50103 (= lt!8151 (lemmaDropTail!12 lt!8148 (+ 1 from!821)))))

(declare-fun lt!8150 () List!944)

(assert (=> b!50103 (= (tail!41 lt!8150) lt!8149)))

(declare-fun lt!8153 () Unit!518)

(assert (=> b!50103 (= lt!8153 (lemmaDropTail!12 lt!8148 from!821))))

(declare-fun head!356 (List!944) Token!162)

(declare-fun apply!49 (List!944 Int) Token!162)

(assert (=> b!50103 (= (head!356 lt!8149) (apply!49 lt!8148 (+ 1 from!821)))))

(assert (=> b!50103 (= lt!8149 (drop!16 lt!8148 (+ 1 from!821)))))

(declare-fun lt!8147 () Unit!518)

(declare-fun lemmaDropApply!16 (List!944 Int) Unit!518)

(assert (=> b!50103 (= lt!8147 (lemmaDropApply!16 lt!8148 (+ 1 from!821)))))

(assert (=> b!50103 (= (head!356 lt!8150) (apply!49 lt!8148 from!821))))

(assert (=> b!50103 (= lt!8150 (drop!16 lt!8148 from!821))))

(declare-fun lt!8155 () Unit!518)

(assert (=> b!50103 (= lt!8155 (lemmaDropApply!16 lt!8148 from!821))))

(declare-fun list!240 (BalanceConc!410) List!944)

(assert (=> b!50103 (= lt!8148 (list!240 v!6227))))

(declare-fun b!50104 () Bool)

(declare-fun res!32891 () Bool)

(assert (=> b!50104 (=> res!32891 e!29334)))

(declare-fun lt!8152 () Token!162)

(assert (=> b!50104 (= res!32891 (not (contains!64 lt!8148 lt!8152)))))

(declare-fun res!32899 () Bool)

(assert (=> start!3614 (=> (not res!32899) (not e!29327))))

(get-info :version)

(assert (=> start!3614 (= res!32899 (and ((_ is Lexer!89) thiss!11059) (>= from!821 0)))))

(assert (=> start!3614 e!29327))

(assert (=> start!3614 true))

(declare-fun inv!1253 (BalanceConc!410) Bool)

(assert (=> start!3614 (and (inv!1253 v!6227) e!29329)))

(declare-fun e!29333 () Bool)

(assert (=> start!3614 e!29333))

(declare-fun b!50102 () Bool)

(declare-fun res!32898 () Bool)

(assert (=> b!50102 (=> (not res!32898) (not e!29330))))

(assert (=> b!50102 (= res!32898 (< from!821 (- lt!8156 1)))))

(declare-fun b!50105 () Bool)

(declare-fun tp!33288 () Bool)

(assert (=> b!50105 (= e!29333 (and e!29328 tp!33288))))

(declare-fun b!50106 () Bool)

(assert (=> b!50106 (= e!29331 e!29334)))

(declare-fun res!32900 () Bool)

(assert (=> b!50106 (=> res!32900 e!29334)))

(assert (=> b!50106 (= res!32900 (not (contains!65 v!6227 lt!8152)))))

(assert (=> b!50106 (= lt!8152 (apply!48 v!6227 (+ 1 from!821)))))

(assert (= (and start!3614 res!32899) b!50093))

(assert (= (and b!50093 res!32896) b!50100))

(assert (= (and b!50100 res!32895) b!50098))

(assert (= (and b!50098 res!32893) b!50095))

(assert (= (and b!50095 res!32894) b!50102))

(assert (= (and b!50102 res!32898) b!50103))

(assert (= (and b!50103 (not res!32897)) b!50101))

(assert (= (and b!50101 (not res!32892)) b!50106))

(assert (= (and b!50106 (not res!32900)) b!50104))

(assert (= (and b!50104 (not res!32891)) b!50097))

(assert (= start!3614 b!50096))

(assert (= b!50094 b!50099))

(assert (= b!50105 b!50094))

(assert (= (and start!3614 ((_ is Cons!939) rules!1069)) b!50105))

(declare-fun m!24034 () Bool)

(assert (=> b!50094 m!24034))

(declare-fun m!24036 () Bool)

(assert (=> b!50094 m!24036))

(declare-fun m!24038 () Bool)

(assert (=> b!50103 m!24038))

(declare-fun m!24040 () Bool)

(assert (=> b!50103 m!24040))

(declare-fun m!24042 () Bool)

(assert (=> b!50103 m!24042))

(declare-fun m!24044 () Bool)

(assert (=> b!50103 m!24044))

(declare-fun m!24046 () Bool)

(assert (=> b!50103 m!24046))

(declare-fun m!24048 () Bool)

(assert (=> b!50103 m!24048))

(declare-fun m!24050 () Bool)

(assert (=> b!50103 m!24050))

(declare-fun m!24052 () Bool)

(assert (=> b!50103 m!24052))

(declare-fun m!24054 () Bool)

(assert (=> b!50103 m!24054))

(declare-fun m!24056 () Bool)

(assert (=> b!50103 m!24056))

(declare-fun m!24058 () Bool)

(assert (=> b!50103 m!24058))

(declare-fun m!24060 () Bool)

(assert (=> b!50103 m!24060))

(declare-fun m!24062 () Bool)

(assert (=> b!50103 m!24062))

(declare-fun m!24064 () Bool)

(assert (=> b!50103 m!24064))

(declare-fun m!24066 () Bool)

(assert (=> b!50103 m!24066))

(declare-fun m!24068 () Bool)

(assert (=> b!50103 m!24068))

(declare-fun m!24070 () Bool)

(assert (=> b!50096 m!24070))

(declare-fun m!24072 () Bool)

(assert (=> b!50100 m!24072))

(declare-fun m!24074 () Bool)

(assert (=> b!50104 m!24074))

(declare-fun m!24076 () Bool)

(assert (=> b!50106 m!24076))

(declare-fun m!24078 () Bool)

(assert (=> b!50106 m!24078))

(declare-fun m!24080 () Bool)

(assert (=> b!50095 m!24080))

(declare-fun m!24082 () Bool)

(assert (=> b!50093 m!24082))

(declare-fun m!24084 () Bool)

(assert (=> start!3614 m!24084))

(declare-fun m!24086 () Bool)

(assert (=> b!50098 m!24086))

(declare-fun m!24088 () Bool)

(assert (=> b!50101 m!24088))

(check-sat (not b!50098) (not b!50101) (not b!50100) b_and!1551 (not start!3614) b_and!1553 (not b!50106) (not b!50094) (not b_next!1511) (not b!50093) (not b!50104) (not b_next!1509) (not b!50105) (not b!50095) (not b!50096) (not b!50103))
(check-sat b_and!1553 b_and!1551 (not b_next!1509) (not b_next!1511))

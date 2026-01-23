; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3662 () Bool)

(assert start!3662)

(declare-fun b!51131 () Bool)

(declare-fun b_free!1613 () Bool)

(declare-fun b_next!1613 () Bool)

(assert (=> b!51131 (= b_free!1613 (not b_next!1613))))

(declare-fun tp!33662 () Bool)

(declare-fun b_and!1663 () Bool)

(assert (=> b!51131 (= tp!33662 b_and!1663)))

(declare-fun b_free!1615 () Bool)

(declare-fun b_next!1615 () Bool)

(assert (=> b!51131 (= b_free!1615 (not b_next!1615))))

(declare-fun tp!33661 () Bool)

(declare-fun b_and!1665 () Bool)

(assert (=> b!51131 (= tp!33661 b_and!1665)))

(declare-fun b!51123 () Bool)

(declare-fun res!33634 () Bool)

(declare-fun e!30012 () Bool)

(assert (=> b!51123 (=> (not res!33634) (not e!30012))))

(declare-datatypes ((LexerInterface!115 0))(
  ( (LexerInterfaceExt!112 (__x!1521 Int)) (Lexer!113) )
))
(declare-fun thiss!11059 () LexerInterface!115)

(declare-datatypes ((List!1038 0))(
  ( (Nil!1032) (Cons!1032 (h!6429 (_ BitVec 16)) (t!17249 List!1038)) )
))
(declare-datatypes ((TokenValue!213 0))(
  ( (FloatLiteralValue!426 (text!1936 List!1038)) (TokenValueExt!212 (__x!1522 Int)) (Broken!1065 (value!9227 List!1038)) (Object!218) (End!213) (Def!213) (Underscore!213) (Match!213) (Else!213) (Error!213) (Case!213) (If!213) (Extends!213) (Abstract!213) (Class!213) (Val!213) (DelimiterValue!426 (del!273 List!1038)) (KeywordValue!219 (value!9228 List!1038)) (CommentValue!426 (value!9229 List!1038)) (WhitespaceValue!426 (value!9230 List!1038)) (IndentationValue!213 (value!9231 List!1038)) (String!1456) (Int32!213) (Broken!1066 (value!9232 List!1038)) (Boolean!214) (Unit!587) (OperatorValue!216 (op!273 List!1038)) (IdentifierValue!426 (value!9233 List!1038)) (IdentifierValue!427 (value!9234 List!1038)) (WhitespaceValue!427 (value!9235 List!1038)) (True!426) (False!426) (Broken!1067 (value!9236 List!1038)) (Broken!1068 (value!9237 List!1038)) (True!427) (RightBrace!213) (RightBracket!213) (Colon!213) (Null!213) (Comma!213) (LeftBracket!213) (False!427) (LeftBrace!213) (ImaginaryLiteralValue!213 (text!1937 List!1038)) (StringLiteralValue!639 (value!9238 List!1038)) (EOFValue!213 (value!9239 List!1038)) (IdentValue!213 (value!9240 List!1038)) (DelimiterValue!427 (value!9241 List!1038)) (DedentValue!213 (value!9242 List!1038)) (NewLineValue!213 (value!9243 List!1038)) (IntegerValue!639 (value!9244 (_ BitVec 32)) (text!1938 List!1038)) (IntegerValue!640 (value!9245 Int) (text!1939 List!1038)) (Times!213) (Or!213) (Equal!213) (Minus!213) (Broken!1069 (value!9246 List!1038)) (And!213) (Div!213) (LessEqual!213) (Mod!213) (Concat!504) (Not!213) (Plus!213) (SpaceValue!213 (value!9247 List!1038)) (IntegerValue!641 (value!9248 Int) (text!1940 List!1038)) (StringLiteralValue!640 (text!1941 List!1038)) (FloatLiteralValue!427 (text!1942 List!1038)) (BytesLiteralValue!213 (value!9249 List!1038)) (CommentValue!427 (value!9250 List!1038)) (StringLiteralValue!641 (value!9251 List!1038)) (ErrorTokenValue!213 (msg!274 List!1038)) )
))
(declare-datatypes ((C!1504 0))(
  ( (C!1505 (val!359 Int)) )
))
(declare-datatypes ((Regex!291 0))(
  ( (ElementMatch!291 (c!16657 C!1504)) (Concat!505 (regOne!1094 Regex!291) (regTwo!1094 Regex!291)) (EmptyExpr!291) (Star!291 (reg!620 Regex!291)) (EmptyLang!291) (Union!291 (regOne!1095 Regex!291) (regTwo!1095 Regex!291)) )
))
(declare-datatypes ((String!1457 0))(
  ( (String!1458 (value!9252 String)) )
))
(declare-datatypes ((List!1039 0))(
  ( (Nil!1033) (Cons!1033 (h!6430 C!1504) (t!17250 List!1039)) )
))
(declare-datatypes ((IArray!501 0))(
  ( (IArray!502 (innerList!308 List!1039)) )
))
(declare-datatypes ((Conc!250 0))(
  ( (Node!250 (left!774 Conc!250) (right!1104 Conc!250) (csize!730 Int) (cheight!461 Int)) (Leaf!497 (xs!2829 IArray!501) (csize!731 Int)) (Empty!250) )
))
(declare-datatypes ((BalanceConc!504 0))(
  ( (BalanceConc!505 (c!16658 Conc!250)) )
))
(declare-datatypes ((TokenValueInjection!250 0))(
  ( (TokenValueInjection!251 (toValue!702 Int) (toChars!561 Int)) )
))
(declare-datatypes ((Rule!246 0))(
  ( (Rule!247 (regex!223 Regex!291) (tag!401 String!1457) (isSeparator!223 Bool) (transformation!223 TokenValueInjection!250)) )
))
(declare-datatypes ((Token!210 0))(
  ( (Token!211 (value!9253 TokenValue!213) (rule!698 Rule!246) (size!955 Int) (originalCharacters!276 List!1039)) )
))
(declare-datatypes ((List!1040 0))(
  ( (Nil!1034) (Cons!1034 (h!6431 Token!210) (t!17251 List!1040)) )
))
(declare-datatypes ((IArray!503 0))(
  ( (IArray!504 (innerList!309 List!1040)) )
))
(declare-datatypes ((Conc!251 0))(
  ( (Node!251 (left!775 Conc!251) (right!1105 Conc!251) (csize!732 Int) (cheight!462 Int)) (Leaf!498 (xs!2830 IArray!503) (csize!733 Int)) (Empty!251) )
))
(declare-datatypes ((BalanceConc!506 0))(
  ( (BalanceConc!507 (c!16659 Conc!251)) )
))
(declare-fun v!6227 () BalanceConc!506)

(declare-datatypes ((List!1041 0))(
  ( (Nil!1035) (Cons!1035 (h!6432 Rule!246) (t!17252 List!1041)) )
))
(declare-fun rules!1069 () List!1041)

(declare-fun rulesProduceEachTokenIndividually!53 (LexerInterface!115 List!1041 BalanceConc!506) Bool)

(assert (=> b!51123 (= res!33634 (rulesProduceEachTokenIndividually!53 thiss!11059 rules!1069 v!6227))))

(declare-fun res!33638 () Bool)

(declare-fun e!30007 () Bool)

(assert (=> start!3662 (=> (not res!33638) (not e!30007))))

(declare-fun from!821 () Int)

(get-info :version)

(assert (=> start!3662 (= res!33638 (and ((_ is Lexer!113) thiss!11059) (>= from!821 0)))))

(assert (=> start!3662 e!30007))

(assert (=> start!3662 true))

(declare-fun e!30010 () Bool)

(declare-fun inv!1359 (BalanceConc!506) Bool)

(assert (=> start!3662 (and (inv!1359 v!6227) e!30010)))

(declare-fun e!30013 () Bool)

(assert (=> start!3662 e!30013))

(declare-fun b!51124 () Bool)

(declare-fun e!30008 () Bool)

(declare-fun tp!33659 () Bool)

(assert (=> b!51124 (= e!30013 (and e!30008 tp!33659))))

(declare-fun b!51125 () Bool)

(declare-fun res!33635 () Bool)

(assert (=> b!51125 (=> (not res!33635) (not e!30012))))

(declare-fun lt!8959 () Int)

(assert (=> b!51125 (= res!33635 (>= from!821 (- lt!8959 1)))))

(declare-fun b!51126 () Bool)

(assert (=> b!51126 (= e!30012 false)))

(declare-fun lt!8960 () List!1040)

(declare-fun dropList!6 (BalanceConc!506 Int) List!1040)

(assert (=> b!51126 (= lt!8960 (dropList!6 v!6227 from!821))))

(declare-fun b!51127 () Bool)

(declare-fun tp!33660 () Bool)

(declare-fun inv!1360 (Conc!251) Bool)

(assert (=> b!51127 (= e!30010 (and (inv!1360 (c!16659 v!6227)) tp!33660))))

(declare-fun e!30009 () Bool)

(declare-fun tp!33658 () Bool)

(declare-fun b!51128 () Bool)

(declare-fun inv!1355 (String!1457) Bool)

(declare-fun inv!1361 (TokenValueInjection!250) Bool)

(assert (=> b!51128 (= e!30008 (and tp!33658 (inv!1355 (tag!401 (h!6432 rules!1069))) (inv!1361 (transformation!223 (h!6432 rules!1069))) e!30009))))

(declare-fun b!51129 () Bool)

(declare-fun res!33636 () Bool)

(assert (=> b!51129 (=> (not res!33636) (not e!30012))))

(declare-fun rulesInvariant!109 (LexerInterface!115 List!1041) Bool)

(assert (=> b!51129 (= res!33636 (rulesInvariant!109 thiss!11059 rules!1069))))

(declare-fun b!51130 () Bool)

(assert (=> b!51130 (= e!30007 e!30012)))

(declare-fun res!33637 () Bool)

(assert (=> b!51130 (=> (not res!33637) (not e!30012))))

(assert (=> b!51130 (= res!33637 (<= from!821 lt!8959))))

(declare-fun size!956 (BalanceConc!506) Int)

(assert (=> b!51130 (= lt!8959 (size!956 v!6227))))

(assert (=> b!51131 (= e!30009 (and tp!33662 tp!33661))))

(declare-fun b!51132 () Bool)

(declare-fun res!33633 () Bool)

(assert (=> b!51132 (=> (not res!33633) (not e!30012))))

(declare-fun isEmpty!209 (List!1041) Bool)

(assert (=> b!51132 (= res!33633 (not (isEmpty!209 rules!1069)))))

(assert (= (and start!3662 res!33638) b!51130))

(assert (= (and b!51130 res!33637) b!51132))

(assert (= (and b!51132 res!33633) b!51129))

(assert (= (and b!51129 res!33636) b!51123))

(assert (= (and b!51123 res!33634) b!51125))

(assert (= (and b!51125 res!33635) b!51126))

(assert (= start!3662 b!51127))

(assert (= b!51128 b!51131))

(assert (= b!51124 b!51128))

(assert (= (and start!3662 ((_ is Cons!1035) rules!1069)) b!51124))

(declare-fun m!25548 () Bool)

(assert (=> b!51126 m!25548))

(declare-fun m!25550 () Bool)

(assert (=> b!51127 m!25550))

(declare-fun m!25552 () Bool)

(assert (=> b!51130 m!25552))

(declare-fun m!25554 () Bool)

(assert (=> b!51128 m!25554))

(declare-fun m!25556 () Bool)

(assert (=> b!51128 m!25556))

(declare-fun m!25558 () Bool)

(assert (=> b!51129 m!25558))

(declare-fun m!25560 () Bool)

(assert (=> start!3662 m!25560))

(declare-fun m!25562 () Bool)

(assert (=> b!51123 m!25562))

(declare-fun m!25564 () Bool)

(assert (=> b!51132 m!25564))

(check-sat b_and!1665 (not b_next!1615) (not b!51123) (not b!51130) (not b!51129) (not b!51124) (not b!51127) b_and!1663 (not start!3662) (not b!51126) (not b!51128) (not b!51132) (not b_next!1613))
(check-sat b_and!1665 b_and!1663 (not b_next!1613) (not b_next!1615))

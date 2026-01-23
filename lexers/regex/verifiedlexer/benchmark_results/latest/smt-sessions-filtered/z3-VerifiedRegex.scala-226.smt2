; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3582 () Bool)

(assert start!3582)

(declare-fun b!49546 () Bool)

(declare-fun b_free!1445 () Bool)

(declare-fun b_next!1445 () Bool)

(assert (=> b!49546 (= b_free!1445 (not b_next!1445))))

(declare-fun tp!33049 () Bool)

(declare-fun b_and!1487 () Bool)

(assert (=> b!49546 (= tp!33049 b_and!1487)))

(declare-fun b_free!1447 () Bool)

(declare-fun b_next!1447 () Bool)

(assert (=> b!49546 (= b_free!1447 (not b_next!1447))))

(declare-fun tp!33047 () Bool)

(declare-fun b_and!1489 () Bool)

(assert (=> b!49546 (= tp!33047 b_and!1489)))

(declare-fun b!49545 () Bool)

(declare-fun e!28951 () Bool)

(declare-fun e!28954 () Bool)

(assert (=> b!49545 (= e!28951 e!28954)))

(declare-fun res!32538 () Bool)

(assert (=> b!49545 (=> (not res!32538) (not e!28954))))

(declare-fun from!821 () Int)

(declare-fun lt!7790 () Int)

(assert (=> b!49545 (= res!32538 (<= from!821 lt!7790))))

(declare-datatypes ((List!878 0))(
  ( (Nil!872) (Cons!872 (h!6269 (_ BitVec 16)) (t!17081 List!878)) )
))
(declare-datatypes ((TokenValue!173 0))(
  ( (FloatLiteralValue!346 (text!1656 List!878)) (TokenValueExt!172 (__x!1441 Int)) (Broken!865 (value!8087 List!878)) (Object!178) (End!173) (Def!173) (Underscore!173) (Match!173) (Else!173) (Error!173) (Case!173) (If!173) (Extends!173) (Abstract!173) (Class!173) (Val!173) (DelimiterValue!346 (del!233 List!878)) (KeywordValue!179 (value!8088 List!878)) (CommentValue!346 (value!8089 List!878)) (WhitespaceValue!346 (value!8090 List!878)) (IndentationValue!173 (value!8091 List!878)) (String!1256) (Int32!173) (Broken!866 (value!8092 List!878)) (Boolean!174) (Unit!471) (OperatorValue!176 (op!233 List!878)) (IdentifierValue!346 (value!8093 List!878)) (IdentifierValue!347 (value!8094 List!878)) (WhitespaceValue!347 (value!8095 List!878)) (True!346) (False!346) (Broken!867 (value!8096 List!878)) (Broken!868 (value!8097 List!878)) (True!347) (RightBrace!173) (RightBracket!173) (Colon!173) (Null!173) (Comma!173) (LeftBracket!173) (False!347) (LeftBrace!173) (ImaginaryLiteralValue!173 (text!1657 List!878)) (StringLiteralValue!519 (value!8098 List!878)) (EOFValue!173 (value!8099 List!878)) (IdentValue!173 (value!8100 List!878)) (DelimiterValue!347 (value!8101 List!878)) (DedentValue!173 (value!8102 List!878)) (NewLineValue!173 (value!8103 List!878)) (IntegerValue!519 (value!8104 (_ BitVec 32)) (text!1658 List!878)) (IntegerValue!520 (value!8105 Int) (text!1659 List!878)) (Times!173) (Or!173) (Equal!173) (Minus!173) (Broken!869 (value!8106 List!878)) (And!173) (Div!173) (LessEqual!173) (Mod!173) (Concat!424) (Not!173) (Plus!173) (SpaceValue!173 (value!8107 List!878)) (IntegerValue!521 (value!8108 Int) (text!1660 List!878)) (StringLiteralValue!520 (text!1661 List!878)) (FloatLiteralValue!347 (text!1662 List!878)) (BytesLiteralValue!173 (value!8109 List!878)) (CommentValue!347 (value!8110 List!878)) (StringLiteralValue!521 (value!8111 List!878)) (ErrorTokenValue!173 (msg!234 List!878)) )
))
(declare-datatypes ((C!1424 0))(
  ( (C!1425 (val!319 Int)) )
))
(declare-datatypes ((Regex!251 0))(
  ( (ElementMatch!251 (c!16537 C!1424)) (Concat!425 (regOne!1014 Regex!251) (regTwo!1014 Regex!251)) (EmptyExpr!251) (Star!251 (reg!580 Regex!251)) (EmptyLang!251) (Union!251 (regOne!1015 Regex!251) (regTwo!1015 Regex!251)) )
))
(declare-datatypes ((String!1257 0))(
  ( (String!1258 (value!8112 String)) )
))
(declare-datatypes ((List!879 0))(
  ( (Nil!873) (Cons!873 (h!6270 C!1424) (t!17082 List!879)) )
))
(declare-datatypes ((IArray!341 0))(
  ( (IArray!342 (innerList!228 List!879)) )
))
(declare-datatypes ((Conc!170 0))(
  ( (Node!170 (left!674 Conc!170) (right!1004 Conc!170) (csize!570 Int) (cheight!381 Int)) (Leaf!397 (xs!2749 IArray!341) (csize!571 Int)) (Empty!170) )
))
(declare-datatypes ((BalanceConc!344 0))(
  ( (BalanceConc!345 (c!16538 Conc!170)) )
))
(declare-datatypes ((TokenValueInjection!170 0))(
  ( (TokenValueInjection!171 (toValue!662 Int) (toChars!521 Int)) )
))
(declare-datatypes ((Rule!166 0))(
  ( (Rule!167 (regex!183 Regex!251) (tag!361 String!1257) (isSeparator!183 Bool) (transformation!183 TokenValueInjection!170)) )
))
(declare-datatypes ((Token!130 0))(
  ( (Token!131 (value!8113 TokenValue!173) (rule!658 Rule!166) (size!858 Int) (originalCharacters!236 List!879)) )
))
(declare-datatypes ((List!880 0))(
  ( (Nil!874) (Cons!874 (h!6271 Token!130) (t!17083 List!880)) )
))
(declare-datatypes ((IArray!343 0))(
  ( (IArray!344 (innerList!229 List!880)) )
))
(declare-datatypes ((Conc!171 0))(
  ( (Node!171 (left!675 Conc!171) (right!1005 Conc!171) (csize!572 Int) (cheight!382 Int)) (Leaf!398 (xs!2750 IArray!343) (csize!573 Int)) (Empty!171) )
))
(declare-datatypes ((BalanceConc!346 0))(
  ( (BalanceConc!347 (c!16539 Conc!171)) )
))
(declare-fun v!6227 () BalanceConc!346)

(declare-fun size!859 (BalanceConc!346) Int)

(assert (=> b!49545 (= lt!7790 (size!859 v!6227))))

(declare-fun res!32536 () Bool)

(assert (=> start!3582 (=> (not res!32536) (not e!28951))))

(declare-datatypes ((LexerInterface!75 0))(
  ( (LexerInterfaceExt!72 (__x!1442 Int)) (Lexer!73) )
))
(declare-fun thiss!11059 () LexerInterface!75)

(get-info :version)

(assert (=> start!3582 (= res!32536 (and ((_ is Lexer!73) thiss!11059) (>= from!821 0)))))

(assert (=> start!3582 e!28951))

(assert (=> start!3582 true))

(declare-fun e!28953 () Bool)

(declare-fun inv!1179 (BalanceConc!346) Bool)

(assert (=> start!3582 (and (inv!1179 v!6227) e!28953)))

(declare-fun e!28952 () Bool)

(assert (=> start!3582 e!28952))

(declare-fun e!28956 () Bool)

(assert (=> b!49546 (= e!28956 (and tp!33049 tp!33047))))

(declare-fun b!49547 () Bool)

(declare-fun res!32535 () Bool)

(assert (=> b!49547 (=> (not res!32535) (not e!28954))))

(assert (=> b!49547 (= res!32535 (< from!821 (- lt!7790 1)))))

(declare-fun b!49548 () Bool)

(declare-fun res!32537 () Bool)

(assert (=> b!49548 (=> (not res!32537) (not e!28954))))

(declare-datatypes ((List!881 0))(
  ( (Nil!875) (Cons!875 (h!6272 Rule!166) (t!17084 List!881)) )
))
(declare-fun rules!1069 () List!881)

(declare-fun isEmpty!169 (List!881) Bool)

(assert (=> b!49548 (= res!32537 (not (isEmpty!169 rules!1069)))))

(declare-fun b!49549 () Bool)

(declare-fun res!32540 () Bool)

(assert (=> b!49549 (=> (not res!32540) (not e!28954))))

(declare-fun rulesInvariant!69 (LexerInterface!75 List!881) Bool)

(assert (=> b!49549 (= res!32540 (rulesInvariant!69 thiss!11059 rules!1069))))

(declare-fun b!49550 () Bool)

(declare-fun tp!33048 () Bool)

(declare-fun inv!1180 (Conc!171) Bool)

(assert (=> b!49550 (= e!28953 (and (inv!1180 (c!16539 v!6227)) tp!33048))))

(declare-fun b!49551 () Bool)

(assert (=> b!49551 (= e!28954 false)))

(declare-fun lt!7789 () Int)

(declare-fun size!860 (List!880) Int)

(declare-fun list!224 (BalanceConc!346) List!880)

(assert (=> b!49551 (= lt!7789 (size!860 (list!224 v!6227)))))

(declare-fun b!49552 () Bool)

(declare-fun res!32539 () Bool)

(assert (=> b!49552 (=> (not res!32539) (not e!28954))))

(declare-fun rulesProduceEachTokenIndividually!13 (LexerInterface!75 List!881 BalanceConc!346) Bool)

(assert (=> b!49552 (= res!32539 (rulesProduceEachTokenIndividually!13 thiss!11059 rules!1069 v!6227))))

(declare-fun b!49553 () Bool)

(declare-fun e!28957 () Bool)

(declare-fun tp!33046 () Bool)

(assert (=> b!49553 (= e!28952 (and e!28957 tp!33046))))

(declare-fun b!49554 () Bool)

(declare-fun tp!33050 () Bool)

(declare-fun inv!1175 (String!1257) Bool)

(declare-fun inv!1181 (TokenValueInjection!170) Bool)

(assert (=> b!49554 (= e!28957 (and tp!33050 (inv!1175 (tag!361 (h!6272 rules!1069))) (inv!1181 (transformation!183 (h!6272 rules!1069))) e!28956))))

(assert (= (and start!3582 res!32536) b!49545))

(assert (= (and b!49545 res!32538) b!49548))

(assert (= (and b!49548 res!32537) b!49549))

(assert (= (and b!49549 res!32540) b!49552))

(assert (= (and b!49552 res!32539) b!49547))

(assert (= (and b!49547 res!32535) b!49551))

(assert (= start!3582 b!49550))

(assert (= b!49554 b!49546))

(assert (= b!49553 b!49554))

(assert (= (and start!3582 ((_ is Cons!875) rules!1069)) b!49553))

(declare-fun m!23358 () Bool)

(assert (=> start!3582 m!23358))

(declare-fun m!23360 () Bool)

(assert (=> b!49548 m!23360))

(declare-fun m!23362 () Bool)

(assert (=> b!49545 m!23362))

(declare-fun m!23364 () Bool)

(assert (=> b!49549 m!23364))

(declare-fun m!23366 () Bool)

(assert (=> b!49550 m!23366))

(declare-fun m!23368 () Bool)

(assert (=> b!49552 m!23368))

(declare-fun m!23370 () Bool)

(assert (=> b!49554 m!23370))

(declare-fun m!23372 () Bool)

(assert (=> b!49554 m!23372))

(declare-fun m!23374 () Bool)

(assert (=> b!49551 m!23374))

(assert (=> b!49551 m!23374))

(declare-fun m!23376 () Bool)

(assert (=> b!49551 m!23376))

(check-sat (not b!49549) (not b!49553) (not b_next!1445) (not b!49545) (not b!49552) b_and!1487 (not start!3582) (not b!49551) (not b_next!1447) b_and!1489 (not b!49550) (not b!49548) (not b!49554))
(check-sat b_and!1489 b_and!1487 (not b_next!1445) (not b_next!1447))

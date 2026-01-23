; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3962 () Bool)

(assert start!3962)

(declare-fun b!52567 () Bool)

(declare-fun b_free!1681 () Bool)

(declare-fun b_next!1681 () Bool)

(assert (=> b!52567 (= b_free!1681 (not b_next!1681))))

(declare-fun tp!34100 () Bool)

(declare-fun b_and!1731 () Bool)

(assert (=> b!52567 (= tp!34100 b_and!1731)))

(declare-fun b_free!1683 () Bool)

(declare-fun b_next!1683 () Bool)

(assert (=> b!52567 (= b_free!1683 (not b_next!1683))))

(declare-fun tp!34097 () Bool)

(declare-fun b_and!1733 () Bool)

(assert (=> b!52567 (= tp!34097 b_and!1733)))

(declare-fun res!34158 () Bool)

(declare-fun e!30990 () Bool)

(assert (=> start!3962 (=> (not res!34158) (not e!30990))))

(declare-datatypes ((LexerInterface!125 0))(
  ( (LexerInterfaceExt!122 (__x!1541 Int)) (Lexer!123) )
))
(declare-fun thiss!11059 () LexerInterface!125)

(declare-fun from!821 () Int)

(get-info :version)

(assert (=> start!3962 (= res!34158 (and ((_ is Lexer!123) thiss!11059) (>= from!821 0)))))

(assert (=> start!3962 e!30990))

(assert (=> start!3962 true))

(declare-datatypes ((List!1085 0))(
  ( (Nil!1079) (Cons!1079 (h!6476 (_ BitVec 16)) (t!17328 List!1085)) )
))
(declare-datatypes ((TokenValue!223 0))(
  ( (FloatLiteralValue!446 (text!2006 List!1085)) (TokenValueExt!222 (__x!1542 Int)) (Broken!1115 (value!9512 List!1085)) (Object!228) (End!223) (Def!223) (Underscore!223) (Match!223) (Else!223) (Error!223) (Case!223) (If!223) (Extends!223) (Abstract!223) (Class!223) (Val!223) (DelimiterValue!446 (del!283 List!1085)) (KeywordValue!229 (value!9513 List!1085)) (CommentValue!446 (value!9514 List!1085)) (WhitespaceValue!446 (value!9515 List!1085)) (IndentationValue!223 (value!9516 List!1085)) (String!1506) (Int32!223) (Broken!1116 (value!9517 List!1085)) (Boolean!224) (Unit!613) (OperatorValue!226 (op!283 List!1085)) (IdentifierValue!446 (value!9518 List!1085)) (IdentifierValue!447 (value!9519 List!1085)) (WhitespaceValue!447 (value!9520 List!1085)) (True!446) (False!446) (Broken!1117 (value!9521 List!1085)) (Broken!1118 (value!9522 List!1085)) (True!447) (RightBrace!223) (RightBracket!223) (Colon!223) (Null!223) (Comma!223) (LeftBracket!223) (False!447) (LeftBrace!223) (ImaginaryLiteralValue!223 (text!2007 List!1085)) (StringLiteralValue!669 (value!9523 List!1085)) (EOFValue!223 (value!9524 List!1085)) (IdentValue!223 (value!9525 List!1085)) (DelimiterValue!447 (value!9526 List!1085)) (DedentValue!223 (value!9527 List!1085)) (NewLineValue!223 (value!9528 List!1085)) (IntegerValue!669 (value!9529 (_ BitVec 32)) (text!2008 List!1085)) (IntegerValue!670 (value!9530 Int) (text!2009 List!1085)) (Times!223) (Or!223) (Equal!223) (Minus!223) (Broken!1119 (value!9531 List!1085)) (And!223) (Div!223) (LessEqual!223) (Mod!223) (Concat!524) (Not!223) (Plus!223) (SpaceValue!223 (value!9532 List!1085)) (IntegerValue!671 (value!9533 Int) (text!2010 List!1085)) (StringLiteralValue!670 (text!2011 List!1085)) (FloatLiteralValue!447 (text!2012 List!1085)) (BytesLiteralValue!223 (value!9534 List!1085)) (CommentValue!447 (value!9535 List!1085)) (StringLiteralValue!671 (value!9536 List!1085)) (ErrorTokenValue!223 (msg!284 List!1085)) )
))
(declare-datatypes ((C!1524 0))(
  ( (C!1525 (val!369 Int)) )
))
(declare-datatypes ((Regex!301 0))(
  ( (ElementMatch!301 (c!16900 C!1524)) (Concat!525 (regOne!1114 Regex!301) (regTwo!1114 Regex!301)) (EmptyExpr!301) (Star!301 (reg!630 Regex!301)) (EmptyLang!301) (Union!301 (regOne!1115 Regex!301) (regTwo!1115 Regex!301)) )
))
(declare-datatypes ((String!1507 0))(
  ( (String!1508 (value!9537 String)) )
))
(declare-datatypes ((List!1086 0))(
  ( (Nil!1080) (Cons!1080 (h!6477 C!1524) (t!17329 List!1086)) )
))
(declare-datatypes ((IArray!541 0))(
  ( (IArray!542 (innerList!328 List!1086)) )
))
(declare-datatypes ((Conc!270 0))(
  ( (Node!270 (left!815 Conc!270) (right!1145 Conc!270) (csize!770 Int) (cheight!481 Int)) (Leaf!522 (xs!2849 IArray!541) (csize!771 Int)) (Empty!270) )
))
(declare-datatypes ((BalanceConc!544 0))(
  ( (BalanceConc!545 (c!16901 Conc!270)) )
))
(declare-datatypes ((TokenValueInjection!270 0))(
  ( (TokenValueInjection!271 (toValue!712 Int) (toChars!571 Int)) )
))
(declare-datatypes ((Rule!266 0))(
  ( (Rule!267 (regex!233 Regex!301) (tag!411 String!1507) (isSeparator!233 Bool) (transformation!233 TokenValueInjection!270)) )
))
(declare-datatypes ((Token!230 0))(
  ( (Token!231 (value!9538 TokenValue!223) (rule!708 Rule!266) (size!987 Int) (originalCharacters!286 List!1086)) )
))
(declare-datatypes ((List!1087 0))(
  ( (Nil!1081) (Cons!1081 (h!6478 Token!230) (t!17330 List!1087)) )
))
(declare-datatypes ((IArray!543 0))(
  ( (IArray!544 (innerList!329 List!1087)) )
))
(declare-datatypes ((Conc!271 0))(
  ( (Node!271 (left!816 Conc!271) (right!1146 Conc!271) (csize!772 Int) (cheight!482 Int)) (Leaf!523 (xs!2850 IArray!543) (csize!773 Int)) (Empty!271) )
))
(declare-datatypes ((BalanceConc!546 0))(
  ( (BalanceConc!547 (c!16902 Conc!271)) )
))
(declare-fun v!6227 () BalanceConc!546)

(declare-fun e!30988 () Bool)

(declare-fun inv!1424 (BalanceConc!546) Bool)

(assert (=> start!3962 (and (inv!1424 v!6227) e!30988)))

(declare-fun e!30992 () Bool)

(assert (=> start!3962 e!30992))

(declare-fun b!52566 () Bool)

(declare-fun tp!34098 () Bool)

(declare-fun inv!1425 (Conc!271) Bool)

(assert (=> b!52566 (= e!30988 (and (inv!1425 (c!16902 v!6227)) tp!34098))))

(declare-fun e!30993 () Bool)

(assert (=> b!52567 (= e!30993 (and tp!34100 tp!34097))))

(declare-fun b!52568 () Bool)

(declare-fun tp!34099 () Bool)

(declare-fun e!30989 () Bool)

(declare-datatypes ((List!1088 0))(
  ( (Nil!1082) (Cons!1082 (h!6479 Rule!266) (t!17331 List!1088)) )
))
(declare-fun rules!1069 () List!1088)

(declare-fun inv!1420 (String!1507) Bool)

(declare-fun inv!1426 (TokenValueInjection!270) Bool)

(assert (=> b!52568 (= e!30989 (and tp!34099 (inv!1420 (tag!411 (h!6479 rules!1069))) (inv!1426 (transformation!233 (h!6479 rules!1069))) e!30993))))

(declare-fun b!52569 () Bool)

(declare-fun res!34154 () Bool)

(declare-fun e!30991 () Bool)

(assert (=> b!52569 (=> (not res!34154) (not e!30991))))

(declare-fun isEmpty!219 (List!1088) Bool)

(assert (=> b!52569 (= res!34154 (not (isEmpty!219 rules!1069)))))

(declare-fun b!52570 () Bool)

(declare-fun res!34155 () Bool)

(assert (=> b!52570 (=> (not res!34155) (not e!30991))))

(declare-fun rulesProduceEachTokenIndividually!63 (LexerInterface!125 List!1088 BalanceConc!546) Bool)

(assert (=> b!52570 (= res!34155 (rulesProduceEachTokenIndividually!63 thiss!11059 rules!1069 v!6227))))

(declare-fun b!52571 () Bool)

(declare-fun tp!34096 () Bool)

(assert (=> b!52571 (= e!30992 (and e!30989 tp!34096))))

(declare-fun b!52572 () Bool)

(declare-fun lt!9442 () Int)

(assert (=> b!52572 (= e!30991 (< (- lt!9442 from!821) 0))))

(declare-fun b!52573 () Bool)

(assert (=> b!52573 (= e!30990 e!30991)))

(declare-fun res!34156 () Bool)

(assert (=> b!52573 (=> (not res!34156) (not e!30991))))

(assert (=> b!52573 (= res!34156 (<= from!821 lt!9442))))

(declare-fun size!988 (BalanceConc!546) Int)

(assert (=> b!52573 (= lt!9442 (size!988 v!6227))))

(declare-fun b!52574 () Bool)

(declare-fun res!34157 () Bool)

(assert (=> b!52574 (=> (not res!34157) (not e!30991))))

(declare-fun rulesInvariant!119 (LexerInterface!125 List!1088) Bool)

(assert (=> b!52574 (= res!34157 (rulesInvariant!119 thiss!11059 rules!1069))))

(assert (= (and start!3962 res!34158) b!52573))

(assert (= (and b!52573 res!34156) b!52569))

(assert (= (and b!52569 res!34154) b!52574))

(assert (= (and b!52574 res!34157) b!52570))

(assert (= (and b!52570 res!34155) b!52572))

(assert (= start!3962 b!52566))

(assert (= b!52568 b!52567))

(assert (= b!52571 b!52568))

(assert (= (and start!3962 ((_ is Cons!1082) rules!1069)) b!52571))

(declare-fun m!26822 () Bool)

(assert (=> b!52574 m!26822))

(declare-fun m!26824 () Bool)

(assert (=> start!3962 m!26824))

(declare-fun m!26826 () Bool)

(assert (=> b!52568 m!26826))

(declare-fun m!26828 () Bool)

(assert (=> b!52568 m!26828))

(declare-fun m!26830 () Bool)

(assert (=> b!52573 m!26830))

(declare-fun m!26832 () Bool)

(assert (=> b!52570 m!26832))

(declare-fun m!26834 () Bool)

(assert (=> b!52566 m!26834))

(declare-fun m!26836 () Bool)

(assert (=> b!52569 m!26836))

(check-sat (not b!52571) (not b!52573) (not b!52569) b_and!1731 (not b_next!1681) (not b!52568) b_and!1733 (not b!52566) (not b_next!1683) (not b!52574) (not b!52570) (not start!3962))
(check-sat b_and!1733 b_and!1731 (not b_next!1681) (not b_next!1683))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59988 () Bool)

(assert start!59988)

(declare-fun b!622461 () Bool)

(declare-fun b_free!18221 () Bool)

(declare-fun b_next!18237 () Bool)

(assert (=> b!622461 (= b_free!18221 (not b_next!18237))))

(declare-fun tp!193391 () Bool)

(declare-fun b_and!61879 () Bool)

(assert (=> b!622461 (= tp!193391 b_and!61879)))

(declare-fun b_free!18223 () Bool)

(declare-fun b_next!18239 () Bool)

(assert (=> b!622461 (= b_free!18223 (not b_next!18239))))

(declare-fun tp!193389 () Bool)

(declare-fun b_and!61881 () Bool)

(assert (=> b!622461 (= tp!193389 b_and!61881)))

(declare-fun b!622456 () Bool)

(declare-fun e!377975 () Bool)

(assert (=> b!622456 (= e!377975 (not true))))

(declare-datatypes ((List!6412 0))(
  ( (Nil!6402) (Cons!6402 (h!11803 (_ BitVec 16)) (t!81919 List!6412)) )
))
(declare-datatypes ((TokenValue!1329 0))(
  ( (FloatLiteralValue!2658 (text!9748 List!6412)) (TokenValueExt!1328 (__x!4558 Int)) (Broken!6645 (value!42030 List!6412)) (Object!1338) (End!1329) (Def!1329) (Underscore!1329) (Match!1329) (Else!1329) (Error!1329) (Case!1329) (If!1329) (Extends!1329) (Abstract!1329) (Class!1329) (Val!1329) (DelimiterValue!2658 (del!1389 List!6412)) (KeywordValue!1335 (value!42031 List!6412)) (CommentValue!2658 (value!42032 List!6412)) (WhitespaceValue!2658 (value!42033 List!6412)) (IndentationValue!1329 (value!42034 List!6412)) (String!8392) (Int32!1329) (Broken!6646 (value!42035 List!6412)) (Boolean!1330) (Unit!11495) (OperatorValue!1332 (op!1389 List!6412)) (IdentifierValue!2658 (value!42036 List!6412)) (IdentifierValue!2659 (value!42037 List!6412)) (WhitespaceValue!2659 (value!42038 List!6412)) (True!2658) (False!2658) (Broken!6647 (value!42039 List!6412)) (Broken!6648 (value!42040 List!6412)) (True!2659) (RightBrace!1329) (RightBracket!1329) (Colon!1329) (Null!1329) (Comma!1329) (LeftBracket!1329) (False!2659) (LeftBrace!1329) (ImaginaryLiteralValue!1329 (text!9749 List!6412)) (StringLiteralValue!3987 (value!42041 List!6412)) (EOFValue!1329 (value!42042 List!6412)) (IdentValue!1329 (value!42043 List!6412)) (DelimiterValue!2659 (value!42044 List!6412)) (DedentValue!1329 (value!42045 List!6412)) (NewLineValue!1329 (value!42046 List!6412)) (IntegerValue!3987 (value!42047 (_ BitVec 32)) (text!9750 List!6412)) (IntegerValue!3988 (value!42048 Int) (text!9751 List!6412)) (Times!1329) (Or!1329) (Equal!1329) (Minus!1329) (Broken!6649 (value!42049 List!6412)) (And!1329) (Div!1329) (LessEqual!1329) (Mod!1329) (Concat!2968) (Not!1329) (Plus!1329) (SpaceValue!1329 (value!42050 List!6412)) (IntegerValue!3989 (value!42051 Int) (text!9752 List!6412)) (StringLiteralValue!3988 (text!9753 List!6412)) (FloatLiteralValue!2659 (text!9754 List!6412)) (BytesLiteralValue!1329 (value!42052 List!6412)) (CommentValue!2659 (value!42053 List!6412)) (StringLiteralValue!3989 (value!42054 List!6412)) (ErrorTokenValue!1329 (msg!1390 List!6412)) )
))
(declare-datatypes ((C!4204 0))(
  ( (C!4205 (val!2328 Int)) )
))
(declare-datatypes ((List!6413 0))(
  ( (Nil!6403) (Cons!6403 (h!11804 C!4204) (t!81920 List!6413)) )
))
(declare-datatypes ((String!8393 0))(
  ( (String!8394 (value!42055 String)) )
))
(declare-datatypes ((IArray!4103 0))(
  ( (IArray!4104 (innerList!2109 List!6413)) )
))
(declare-datatypes ((Conc!2051 0))(
  ( (Node!2051 (left!5077 Conc!2051) (right!5407 Conc!2051) (csize!4332 Int) (cheight!2262 Int)) (Leaf!3212 (xs!4688 IArray!4103) (csize!4333 Int)) (Empty!2051) )
))
(declare-datatypes ((BalanceConc!4110 0))(
  ( (BalanceConc!4111 (c!114429 Conc!2051)) )
))
(declare-datatypes ((TokenValueInjection!2426 0))(
  ( (TokenValueInjection!2427 (toValue!2230 Int) (toChars!2089 Int)) )
))
(declare-datatypes ((Regex!1639 0))(
  ( (ElementMatch!1639 (c!114430 C!4204)) (Concat!2969 (regOne!3790 Regex!1639) (regTwo!3790 Regex!1639)) (EmptyExpr!1639) (Star!1639 (reg!1968 Regex!1639)) (EmptyLang!1639) (Union!1639 (regOne!3791 Regex!1639) (regTwo!3791 Regex!1639)) )
))
(declare-datatypes ((Rule!2410 0))(
  ( (Rule!2411 (regex!1305 Regex!1639) (tag!1567 String!8393) (isSeparator!1305 Bool) (transformation!1305 TokenValueInjection!2426)) )
))
(declare-datatypes ((Token!2334 0))(
  ( (Token!2335 (value!42056 TokenValue!1329) (rule!2101 Rule!2410) (size!4992 Int) (originalCharacters!1338 List!6413)) )
))
(declare-datatypes ((List!6414 0))(
  ( (Nil!6404) (Cons!6404 (h!11805 Token!2334) (t!81921 List!6414)) )
))
(declare-fun lt!266322 () List!6414)

(declare-datatypes ((IArray!4105 0))(
  ( (IArray!4106 (innerList!2110 List!6414)) )
))
(declare-datatypes ((Conc!2052 0))(
  ( (Node!2052 (left!5078 Conc!2052) (right!5408 Conc!2052) (csize!4334 Int) (cheight!2263 Int)) (Leaf!3213 (xs!4689 IArray!4105) (csize!4335 Int)) (Empty!2052) )
))
(declare-datatypes ((BalanceConc!4112 0))(
  ( (BalanceConc!4113 (c!114431 Conc!2052)) )
))
(declare-fun v!6361 () BalanceConc!4112)

(declare-fun from!852 () Int)

(declare-fun dropList!258 (BalanceConc!4112 Int) List!6414)

(assert (=> b!622456 (= lt!266322 (dropList!258 v!6361 from!852))))

(declare-datatypes ((LexerInterface!1193 0))(
  ( (LexerInterfaceExt!1190 (__x!4559 Int)) (Lexer!1191) )
))
(declare-fun thiss!14007 () LexerInterface!1193)

(declare-fun lt!266326 () BalanceConc!4110)

(declare-fun separatorToken!136 () Token!2334)

(declare-fun ++!1767 (BalanceConc!4110 BalanceConc!4110) BalanceConc!4110)

(declare-fun charsOf!896 (Token!2334) BalanceConc!4110)

(declare-fun apply!1526 (BalanceConc!4112 Int) Token!2334)

(declare-fun printWithSeparatorTokenRec!2 (LexerInterface!1193 BalanceConc!4112 Token!2334 Int) BalanceConc!4110)

(assert (=> b!622456 (= lt!266326 (++!1767 (++!1767 (charsOf!896 (apply!1526 v!6361 from!852)) (charsOf!896 separatorToken!136)) (printWithSeparatorTokenRec!2 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))

(declare-fun lt!266323 () List!6414)

(declare-fun lt!266324 () List!6414)

(declare-fun tail!854 (List!6414) List!6414)

(declare-fun drop!336 (List!6414 Int) List!6414)

(assert (=> b!622456 (= (tail!854 lt!266323) (drop!336 lt!266324 (+ 1 from!852)))))

(declare-datatypes ((Unit!11496 0))(
  ( (Unit!11497) )
))
(declare-fun lt!266321 () Unit!11496)

(declare-fun lemmaDropTail!294 (List!6414 Int) Unit!11496)

(assert (=> b!622456 (= lt!266321 (lemmaDropTail!294 lt!266324 from!852))))

(declare-fun head!1325 (List!6414) Token!2334)

(declare-fun apply!1527 (List!6414 Int) Token!2334)

(assert (=> b!622456 (= (head!1325 lt!266323) (apply!1527 lt!266324 from!852))))

(assert (=> b!622456 (= lt!266323 (drop!336 lt!266324 from!852))))

(declare-fun lt!266320 () Unit!11496)

(declare-fun lemmaDropApply!304 (List!6414 Int) Unit!11496)

(assert (=> b!622456 (= lt!266320 (lemmaDropApply!304 lt!266324 from!852))))

(declare-fun list!2685 (BalanceConc!4112) List!6414)

(assert (=> b!622456 (= lt!266324 (list!2685 v!6361))))

(declare-fun e!377980 () Bool)

(declare-fun b!622457 () Bool)

(declare-fun tp!193390 () Bool)

(declare-fun e!377979 () Bool)

(declare-fun inv!8119 (String!8393) Bool)

(declare-fun inv!8124 (TokenValueInjection!2426) Bool)

(assert (=> b!622457 (= e!377979 (and tp!193390 (inv!8119 (tag!1567 (rule!2101 separatorToken!136))) (inv!8124 (transformation!1305 (rule!2101 separatorToken!136))) e!377980))))

(declare-fun b!622458 () Bool)

(declare-fun e!377978 () Bool)

(declare-fun tp!193388 () Bool)

(declare-fun inv!8125 (Conc!2052) Bool)

(assert (=> b!622458 (= e!377978 (and (inv!8125 (c!114431 v!6361)) tp!193388))))

(declare-fun b!622459 () Bool)

(declare-fun e!377973 () Bool)

(assert (=> b!622459 (= e!377973 e!377975)))

(declare-fun res!270836 () Bool)

(assert (=> b!622459 (=> (not res!270836) (not e!377975))))

(declare-fun lt!266325 () Int)

(assert (=> b!622459 (= res!270836 (and (<= from!852 lt!266325) (isSeparator!1305 (rule!2101 separatorToken!136)) (< from!852 lt!266325)))))

(declare-fun size!4993 (BalanceConc!4112) Int)

(assert (=> b!622459 (= lt!266325 (size!4993 v!6361))))

(declare-fun tp!193387 () Bool)

(declare-fun e!377977 () Bool)

(declare-fun b!622460 () Bool)

(declare-fun inv!21 (TokenValue!1329) Bool)

(assert (=> b!622460 (= e!377977 (and (inv!21 (value!42056 separatorToken!136)) e!377979 tp!193387))))

(declare-fun res!270837 () Bool)

(assert (=> start!59988 (=> (not res!270837) (not e!377973))))

(get-info :version)

(assert (=> start!59988 (= res!270837 (and ((_ is Lexer!1191) thiss!14007) (>= from!852 0)))))

(assert (=> start!59988 e!377973))

(assert (=> start!59988 true))

(declare-fun inv!8126 (BalanceConc!4112) Bool)

(assert (=> start!59988 (and (inv!8126 v!6361) e!377978)))

(declare-fun inv!8127 (Token!2334) Bool)

(assert (=> start!59988 (and (inv!8127 separatorToken!136) e!377977)))

(assert (=> b!622461 (= e!377980 (and tp!193391 tp!193389))))

(assert (= (and start!59988 res!270837) b!622459))

(assert (= (and b!622459 res!270836) b!622456))

(assert (= start!59988 b!622458))

(assert (= b!622457 b!622461))

(assert (= b!622460 b!622457))

(assert (= start!59988 b!622460))

(declare-fun m!890743 () Bool)

(assert (=> b!622457 m!890743))

(declare-fun m!890745 () Bool)

(assert (=> b!622457 m!890745))

(declare-fun m!890747 () Bool)

(assert (=> b!622456 m!890747))

(declare-fun m!890749 () Bool)

(assert (=> b!622456 m!890749))

(declare-fun m!890751 () Bool)

(assert (=> b!622456 m!890751))

(assert (=> b!622456 m!890747))

(declare-fun m!890753 () Bool)

(assert (=> b!622456 m!890753))

(declare-fun m!890755 () Bool)

(assert (=> b!622456 m!890755))

(declare-fun m!890757 () Bool)

(assert (=> b!622456 m!890757))

(assert (=> b!622456 m!890755))

(declare-fun m!890759 () Bool)

(assert (=> b!622456 m!890759))

(assert (=> b!622456 m!890757))

(declare-fun m!890761 () Bool)

(assert (=> b!622456 m!890761))

(assert (=> b!622456 m!890751))

(declare-fun m!890763 () Bool)

(assert (=> b!622456 m!890763))

(declare-fun m!890765 () Bool)

(assert (=> b!622456 m!890765))

(assert (=> b!622456 m!890761))

(declare-fun m!890767 () Bool)

(assert (=> b!622456 m!890767))

(declare-fun m!890769 () Bool)

(assert (=> b!622456 m!890769))

(declare-fun m!890771 () Bool)

(assert (=> b!622456 m!890771))

(declare-fun m!890773 () Bool)

(assert (=> b!622456 m!890773))

(declare-fun m!890775 () Bool)

(assert (=> b!622456 m!890775))

(declare-fun m!890777 () Bool)

(assert (=> b!622459 m!890777))

(declare-fun m!890779 () Bool)

(assert (=> b!622460 m!890779))

(declare-fun m!890781 () Bool)

(assert (=> start!59988 m!890781))

(declare-fun m!890783 () Bool)

(assert (=> start!59988 m!890783))

(declare-fun m!890785 () Bool)

(assert (=> b!622458 m!890785))

(check-sat (not b!622458) b_and!61879 (not b!622460) (not b!622459) (not b!622456) (not b_next!18237) (not start!59988) b_and!61881 (not b_next!18239) (not b!622457))
(check-sat b_and!61879 b_and!61881 (not b_next!18239) (not b_next!18237))

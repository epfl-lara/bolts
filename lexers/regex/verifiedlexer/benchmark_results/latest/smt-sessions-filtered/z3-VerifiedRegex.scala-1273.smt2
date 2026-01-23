; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66156 () Bool)

(assert start!66156)

(declare-fun b!691797 () Bool)

(declare-fun b_free!19617 () Bool)

(declare-fun b_next!19681 () Bool)

(assert (=> b!691797 (= b_free!19617 (not b_next!19681))))

(declare-fun tp!208464 () Bool)

(declare-fun b_and!63411 () Bool)

(assert (=> b!691797 (= tp!208464 b_and!63411)))

(declare-fun b_free!19619 () Bool)

(declare-fun b_next!19683 () Bool)

(assert (=> b!691797 (= b_free!19619 (not b_next!19683))))

(declare-fun tp!208466 () Bool)

(declare-fun b_and!63413 () Bool)

(assert (=> b!691797 (= tp!208466 b_and!63413)))

(declare-fun b!691796 () Bool)

(declare-fun res!313672 () Bool)

(declare-fun e!435208 () Bool)

(assert (=> b!691796 (=> (not res!313672) (not e!435208))))

(declare-datatypes ((List!7503 0))(
  ( (Nil!7489) (Cons!7489 (h!12890 (_ BitVec 16)) (t!87321 List!7503)) )
))
(declare-datatypes ((TokenValue!1547 0))(
  ( (FloatLiteralValue!3094 (text!11274 List!7503)) (TokenValueExt!1546 (__x!5401 Int)) (Broken!7735 (value!48473 List!7503)) (Object!1560) (End!1547) (Def!1547) (Underscore!1547) (Match!1547) (Else!1547) (Error!1547) (Case!1547) (If!1547) (Extends!1547) (Abstract!1547) (Class!1547) (Val!1547) (DelimiterValue!3094 (del!1607 List!7503)) (KeywordValue!1553 (value!48474 List!7503)) (CommentValue!3094 (value!48475 List!7503)) (WhitespaceValue!3094 (value!48476 List!7503)) (IndentationValue!1547 (value!48477 List!7503)) (String!9458) (Int32!1547) (Broken!7736 (value!48478 List!7503)) (Boolean!1548) (Unit!12648) (OperatorValue!1550 (op!1607 List!7503)) (IdentifierValue!3094 (value!48479 List!7503)) (IdentifierValue!3095 (value!48480 List!7503)) (WhitespaceValue!3095 (value!48481 List!7503)) (True!3094) (False!3094) (Broken!7737 (value!48482 List!7503)) (Broken!7738 (value!48483 List!7503)) (True!3095) (RightBrace!1547) (RightBracket!1547) (Colon!1547) (Null!1547) (Comma!1547) (LeftBracket!1547) (False!3095) (LeftBrace!1547) (ImaginaryLiteralValue!1547 (text!11275 List!7503)) (StringLiteralValue!4641 (value!48484 List!7503)) (EOFValue!1547 (value!48485 List!7503)) (IdentValue!1547 (value!48486 List!7503)) (DelimiterValue!3095 (value!48487 List!7503)) (DedentValue!1547 (value!48488 List!7503)) (NewLineValue!1547 (value!48489 List!7503)) (IntegerValue!4641 (value!48490 (_ BitVec 32)) (text!11276 List!7503)) (IntegerValue!4642 (value!48491 Int) (text!11277 List!7503)) (Times!1547) (Or!1547) (Equal!1547) (Minus!1547) (Broken!7739 (value!48492 List!7503)) (And!1547) (Div!1547) (LessEqual!1547) (Mod!1547) (Concat!3388) (Not!1547) (Plus!1547) (SpaceValue!1547 (value!48493 List!7503)) (IntegerValue!4643 (value!48494 Int) (text!11278 List!7503)) (StringLiteralValue!4642 (text!11279 List!7503)) (FloatLiteralValue!3095 (text!11280 List!7503)) (BytesLiteralValue!1547 (value!48495 List!7503)) (CommentValue!3095 (value!48496 List!7503)) (StringLiteralValue!4643 (value!48497 List!7503)) (ErrorTokenValue!1547 (msg!1608 List!7503)) )
))
(declare-datatypes ((C!4284 0))(
  ( (C!4285 (val!2372 Int)) )
))
(declare-datatypes ((Regex!1841 0))(
  ( (ElementMatch!1841 (c!121603 C!4284)) (Concat!3389 (regOne!4194 Regex!1841) (regTwo!4194 Regex!1841)) (EmptyExpr!1841) (Star!1841 (reg!2170 Regex!1841)) (EmptyLang!1841) (Union!1841 (regOne!4195 Regex!1841) (regTwo!4195 Regex!1841)) )
))
(declare-datatypes ((List!7504 0))(
  ( (Nil!7490) (Cons!7490 (h!12891 C!4284) (t!87322 List!7504)) )
))
(declare-datatypes ((IArray!5291 0))(
  ( (IArray!5292 (innerList!2703 List!7504)) )
))
(declare-datatypes ((Conc!2645 0))(
  ( (Node!2645 (left!5998 Conc!2645) (right!6328 Conc!2645) (csize!5520 Int) (cheight!2856 Int)) (Leaf!3919 (xs!5296 IArray!5291) (csize!5521 Int)) (Empty!2645) )
))
(declare-datatypes ((BalanceConc!5302 0))(
  ( (BalanceConc!5303 (c!121604 Conc!2645)) )
))
(declare-datatypes ((String!9459 0))(
  ( (String!9460 (value!48498 String)) )
))
(declare-datatypes ((TokenValueInjection!2830 0))(
  ( (TokenValueInjection!2831 (toValue!2465 Int) (toChars!2324 Int)) )
))
(declare-datatypes ((Rule!2806 0))(
  ( (Rule!2807 (regex!1503 Regex!1841) (tag!1765 String!9459) (isSeparator!1503 Bool) (transformation!1503 TokenValueInjection!2830)) )
))
(declare-datatypes ((Token!2706 0))(
  ( (Token!2707 (value!48499 TokenValue!1547) (rule!2542 Rule!2806) (size!6126 Int) (originalCharacters!1778 List!7504)) )
))
(declare-datatypes ((List!7505 0))(
  ( (Nil!7491) (Cons!7491 (h!12892 Token!2706) (t!87323 List!7505)) )
))
(declare-datatypes ((IArray!5293 0))(
  ( (IArray!5294 (innerList!2704 List!7505)) )
))
(declare-datatypes ((Conc!2646 0))(
  ( (Node!2646 (left!5999 Conc!2646) (right!6329 Conc!2646) (csize!5522 Int) (cheight!2857 Int)) (Leaf!3920 (xs!5297 IArray!5293) (csize!5523 Int)) (Empty!2646) )
))
(declare-datatypes ((BalanceConc!5304 0))(
  ( (BalanceConc!5305 (c!121605 Conc!2646)) )
))
(declare-datatypes ((tuple2!7884 0))(
  ( (tuple2!7885 (_1!4357 BalanceConc!5304) (_2!4357 BalanceConc!5302)) )
))
(declare-fun lt!284798 () tuple2!7884)

(declare-fun isEmpty!4874 (List!7504) Bool)

(declare-fun list!3145 (BalanceConc!5302) List!7504)

(assert (=> b!691796 (= res!313672 (isEmpty!4874 (list!3145 (_2!4357 lt!284798))))))

(declare-fun e!435211 () Bool)

(assert (=> b!691797 (= e!435211 (and tp!208464 tp!208466))))

(declare-fun b!691798 () Bool)

(declare-fun res!313674 () Bool)

(declare-fun e!435216 () Bool)

(assert (=> b!691798 (=> (not res!313674) (not e!435216))))

(declare-datatypes ((List!7506 0))(
  ( (Nil!7492) (Cons!7492 (h!12893 Rule!2806) (t!87324 List!7506)) )
))
(declare-fun rules!1486 () List!7506)

(declare-fun isEmpty!4875 (List!7506) Bool)

(assert (=> b!691798 (= res!313674 (not (isEmpty!4875 rules!1486)))))

(declare-fun b!691799 () Bool)

(declare-fun e!435209 () Bool)

(declare-fun acc!372 () BalanceConc!5304)

(declare-fun tp!208469 () Bool)

(declare-fun inv!9606 (Conc!2646) Bool)

(assert (=> b!691799 (= e!435209 (and (inv!9606 (c!121605 acc!372)) tp!208469))))

(declare-fun b!691800 () Bool)

(declare-fun res!313670 () Bool)

(assert (=> b!691800 (=> (not res!313670) (not e!435216))))

(declare-fun treated!50 () BalanceConc!5302)

(declare-fun totalInput!378 () BalanceConc!5302)

(declare-fun input!870 () BalanceConc!5302)

(declare-fun ++!1954 (List!7504 List!7504) List!7504)

(assert (=> b!691800 (= res!313670 (= (list!3145 totalInput!378) (++!1954 (list!3145 treated!50) (list!3145 input!870))))))

(declare-fun b!691801 () Bool)

(declare-fun e!435210 () Bool)

(declare-fun tp!208467 () Bool)

(declare-fun inv!9607 (Conc!2645) Bool)

(assert (=> b!691801 (= e!435210 (and (inv!9607 (c!121604 totalInput!378)) tp!208467))))

(declare-fun b!691802 () Bool)

(assert (=> b!691802 (= e!435208 false)))

(declare-fun lt!284797 () List!7505)

(declare-fun lt!284799 () BalanceConc!5304)

(declare-fun list!3146 (BalanceConc!5304) List!7505)

(assert (=> b!691802 (= lt!284797 (list!3146 lt!284799))))

(declare-fun lt!284800 () List!7505)

(declare-fun lt!284796 () tuple2!7884)

(assert (=> b!691802 (= lt!284800 (list!3146 (_1!4357 lt!284796)))))

(declare-datatypes ((LexerInterface!1317 0))(
  ( (LexerInterfaceExt!1314 (__x!5402 Int)) (Lexer!1315) )
))
(declare-fun thiss!12529 () LexerInterface!1317)

(declare-fun ++!1955 (BalanceConc!5304 BalanceConc!5304) BalanceConc!5304)

(declare-fun lexRec!160 (LexerInterface!1317 List!7506 BalanceConc!5302) tuple2!7884)

(assert (=> b!691802 (= lt!284799 (++!1955 acc!372 (_1!4357 (lexRec!160 thiss!12529 rules!1486 input!870))))))

(assert (=> b!691802 (= lt!284796 (lexRec!160 thiss!12529 rules!1486 totalInput!378))))

(declare-fun b!691803 () Bool)

(declare-fun e!435212 () Bool)

(declare-fun tp!208471 () Bool)

(assert (=> b!691803 (= e!435212 (and (inv!9607 (c!121604 input!870)) tp!208471))))

(declare-fun b!691804 () Bool)

(declare-fun e!435207 () Bool)

(declare-fun e!435215 () Bool)

(declare-fun tp!208465 () Bool)

(assert (=> b!691804 (= e!435207 (and e!435215 tp!208465))))

(declare-fun tp!208468 () Bool)

(declare-fun b!691805 () Bool)

(declare-fun inv!9600 (String!9459) Bool)

(declare-fun inv!9608 (TokenValueInjection!2830) Bool)

(assert (=> b!691805 (= e!435215 (and tp!208468 (inv!9600 (tag!1765 (h!12893 rules!1486))) (inv!9608 (transformation!1503 (h!12893 rules!1486))) e!435211))))

(declare-fun res!313669 () Bool)

(assert (=> start!66156 (=> (not res!313669) (not e!435216))))

(get-info :version)

(assert (=> start!66156 (= res!313669 ((_ is Lexer!1315) thiss!12529))))

(assert (=> start!66156 e!435216))

(declare-fun inv!9609 (BalanceConc!5304) Bool)

(assert (=> start!66156 (and (inv!9609 acc!372) e!435209)))

(declare-fun e!435213 () Bool)

(declare-fun inv!9610 (BalanceConc!5302) Bool)

(assert (=> start!66156 (and (inv!9610 treated!50) e!435213)))

(assert (=> start!66156 (and (inv!9610 totalInput!378) e!435210)))

(assert (=> start!66156 (and (inv!9610 input!870) e!435212)))

(assert (=> start!66156 e!435207))

(assert (=> start!66156 true))

(declare-fun b!691806 () Bool)

(declare-fun tp!208470 () Bool)

(assert (=> b!691806 (= e!435213 (and (inv!9607 (c!121604 treated!50)) tp!208470))))

(declare-fun b!691807 () Bool)

(assert (=> b!691807 (= e!435216 e!435208)))

(declare-fun res!313671 () Bool)

(assert (=> b!691807 (=> (not res!313671) (not e!435208))))

(assert (=> b!691807 (= res!313671 (= (list!3146 (_1!4357 lt!284798)) (list!3146 acc!372)))))

(assert (=> b!691807 (= lt!284798 (lexRec!160 thiss!12529 rules!1486 treated!50))))

(declare-fun b!691808 () Bool)

(declare-fun res!313673 () Bool)

(assert (=> b!691808 (=> (not res!313673) (not e!435216))))

(declare-fun rulesInvariant!1250 (LexerInterface!1317 List!7506) Bool)

(assert (=> b!691808 (= res!313673 (rulesInvariant!1250 thiss!12529 rules!1486))))

(assert (= (and start!66156 res!313669) b!691798))

(assert (= (and b!691798 res!313674) b!691808))

(assert (= (and b!691808 res!313673) b!691800))

(assert (= (and b!691800 res!313670) b!691807))

(assert (= (and b!691807 res!313671) b!691796))

(assert (= (and b!691796 res!313672) b!691802))

(assert (= start!66156 b!691799))

(assert (= start!66156 b!691806))

(assert (= start!66156 b!691801))

(assert (= start!66156 b!691803))

(assert (= b!691805 b!691797))

(assert (= b!691804 b!691805))

(assert (= (and start!66156 ((_ is Cons!7492) rules!1486)) b!691804))

(declare-fun m!947938 () Bool)

(assert (=> b!691808 m!947938))

(declare-fun m!947940 () Bool)

(assert (=> b!691800 m!947940))

(declare-fun m!947942 () Bool)

(assert (=> b!691800 m!947942))

(declare-fun m!947944 () Bool)

(assert (=> b!691800 m!947944))

(assert (=> b!691800 m!947942))

(assert (=> b!691800 m!947944))

(declare-fun m!947946 () Bool)

(assert (=> b!691800 m!947946))

(declare-fun m!947948 () Bool)

(assert (=> b!691802 m!947948))

(declare-fun m!947950 () Bool)

(assert (=> b!691802 m!947950))

(declare-fun m!947952 () Bool)

(assert (=> b!691802 m!947952))

(declare-fun m!947954 () Bool)

(assert (=> b!691802 m!947954))

(declare-fun m!947956 () Bool)

(assert (=> b!691802 m!947956))

(declare-fun m!947958 () Bool)

(assert (=> b!691807 m!947958))

(declare-fun m!947960 () Bool)

(assert (=> b!691807 m!947960))

(declare-fun m!947962 () Bool)

(assert (=> b!691807 m!947962))

(declare-fun m!947964 () Bool)

(assert (=> b!691796 m!947964))

(assert (=> b!691796 m!947964))

(declare-fun m!947966 () Bool)

(assert (=> b!691796 m!947966))

(declare-fun m!947968 () Bool)

(assert (=> b!691801 m!947968))

(declare-fun m!947970 () Bool)

(assert (=> b!691803 m!947970))

(declare-fun m!947972 () Bool)

(assert (=> b!691798 m!947972))

(declare-fun m!947974 () Bool)

(assert (=> b!691806 m!947974))

(declare-fun m!947976 () Bool)

(assert (=> b!691799 m!947976))

(declare-fun m!947978 () Bool)

(assert (=> start!66156 m!947978))

(declare-fun m!947980 () Bool)

(assert (=> start!66156 m!947980))

(declare-fun m!947982 () Bool)

(assert (=> start!66156 m!947982))

(declare-fun m!947984 () Bool)

(assert (=> start!66156 m!947984))

(declare-fun m!947986 () Bool)

(assert (=> b!691805 m!947986))

(declare-fun m!947988 () Bool)

(assert (=> b!691805 m!947988))

(check-sat (not b!691808) (not b!691803) (not b_next!19683) (not start!66156) (not b!691799) (not b!691798) (not b!691807) (not b!691796) (not b_next!19681) (not b!691806) (not b!691802) (not b!691804) b_and!63411 b_and!63413 (not b!691805) (not b!691800) (not b!691801))
(check-sat b_and!63413 b_and!63411 (not b_next!19683) (not b_next!19681))

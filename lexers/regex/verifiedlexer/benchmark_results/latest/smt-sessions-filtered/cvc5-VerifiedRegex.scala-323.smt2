; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!10772 () Bool)

(assert start!10772)

(assert (=> start!10772 true))

(declare-fun b!108126 () Bool)

(assert (=> b!108126 true))

(assert (=> b!108126 true))

(declare-fun b!108133 () Bool)

(declare-fun e!59953 () Bool)

(declare-datatypes ((List!1718 0))(
  ( (Nil!1712) (Cons!1712 (h!7109 (_ BitVec 16)) (t!21513 List!1718)) )
))
(declare-datatypes ((IArray!1089 0))(
  ( (IArray!1090 (innerList!602 List!1718)) )
))
(declare-datatypes ((Conc!544 0))(
  ( (Node!544 (left!1319 Conc!544) (right!1649 Conc!544) (csize!1318 Int) (cheight!755 Int)) (Leaf!868 (xs!3139 IArray!1089) (csize!1319 Int)) (Empty!544) )
))
(declare-datatypes ((BalanceConc!1092 0))(
  ( (BalanceConc!1093 (c!25999 Conc!544)) )
))
(declare-fun x!29632 () BalanceConc!1092)

(declare-fun tp!58929 () Bool)

(declare-fun inv!2103 (Conc!544) Bool)

(assert (=> b!108133 (= e!59953 (and (inv!2103 (c!25999 x!29632)) tp!58929))))

(declare-datatypes ((ErrorTokenValueInjection!8 0))(
  ( (ErrorTokenValueInjection!9) )
))
(declare-fun thiss!5419 () ErrorTokenValueInjection!8)

(declare-fun inst!56 () Bool)

(declare-fun inv!2104 (BalanceConc!1092) Bool)

(declare-fun list!739 (BalanceConc!1092) List!1718)

(declare-datatypes ((TokenValue!366 0))(
  ( (FloatLiteralValue!732 (text!3007 List!1718)) (TokenValueExt!365 (__x!1825 Int)) (Broken!1830 (value!13575 List!1718)) (Object!371) (End!366) (Def!366) (Underscore!366) (Match!366) (Else!366) (Error!366) (Case!366) (If!366) (Extends!366) (Abstract!366) (Class!366) (Val!366) (DelimiterValue!732 (del!426 List!1718)) (KeywordValue!372 (value!13576 List!1718)) (CommentValue!732 (value!13577 List!1718)) (WhitespaceValue!732 (value!13578 List!1718)) (IndentationValue!366 (value!13579 List!1718)) (String!2219) (Int32!366) (Broken!1831 (value!13580 List!1718)) (Boolean!367) (Unit!1142) (OperatorValue!369 (op!426 List!1718)) (IdentifierValue!732 (value!13581 List!1718)) (IdentifierValue!733 (value!13582 List!1718)) (WhitespaceValue!733 (value!13583 List!1718)) (True!732) (False!732) (Broken!1832 (value!13584 List!1718)) (Broken!1833 (value!13585 List!1718)) (True!733) (RightBrace!366) (RightBracket!366) (Colon!366) (Null!366) (Comma!366) (LeftBracket!366) (False!733) (LeftBrace!366) (ImaginaryLiteralValue!366 (text!3008 List!1718)) (StringLiteralValue!1098 (value!13586 List!1718)) (EOFValue!366 (value!13587 List!1718)) (IdentValue!366 (value!13588 List!1718)) (DelimiterValue!733 (value!13589 List!1718)) (DedentValue!366 (value!13590 List!1718)) (NewLineValue!366 (value!13591 List!1718)) (IntegerValue!1098 (value!13592 (_ BitVec 32)) (text!3009 List!1718)) (IntegerValue!1099 (value!13593 Int) (text!3010 List!1718)) (Times!366) (Or!366) (Equal!366) (Minus!366) (Broken!1834 (value!13594 List!1718)) (And!366) (Div!366) (LessEqual!366) (Mod!366) (Concat!808) (Not!366) (Plus!366) (SpaceValue!366 (value!13595 List!1718)) (IntegerValue!1100 (value!13596 Int) (text!3011 List!1718)) (StringLiteralValue!1099 (text!3012 List!1718)) (FloatLiteralValue!733 (text!3013 List!1718)) (BytesLiteralValue!366 (value!13597 List!1718)) (CommentValue!733 (value!13598 List!1718)) (StringLiteralValue!1100 (value!13599 List!1718)) (ErrorTokenValue!366 (msg!427 List!1718)) )
))
(declare-fun toCharacters!31 (ErrorTokenValueInjection!8 TokenValue!366) BalanceConc!1092)

(declare-fun toValue!38 (ErrorTokenValueInjection!8 BalanceConc!1092) TokenValue!366)

(assert (=> start!10772 (= inst!56 (=> (and (inv!2104 x!29632) e!59953) (= (list!739 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29632))) (list!739 x!29632))))))

(assert (= start!10772 b!108133))

(declare-fun m!96746 () Bool)

(assert (=> b!108133 m!96746))

(declare-fun m!96748 () Bool)

(assert (=> start!10772 m!96748))

(declare-fun m!96750 () Bool)

(assert (=> start!10772 m!96750))

(declare-fun m!96752 () Bool)

(assert (=> start!10772 m!96752))

(declare-fun m!96754 () Bool)

(assert (=> start!10772 m!96754))

(declare-fun m!96756 () Bool)

(assert (=> start!10772 m!96756))

(assert (=> start!10772 m!96750))

(assert (=> start!10772 m!96752))

(declare-fun bs!10385 () Bool)

(declare-fun neg-inst!56 () Bool)

(declare-fun s!16222 () Bool)

(assert (= bs!10385 (and neg-inst!56 s!16222)))

(assert (=> bs!10385 (=> true (= (list!739 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29632))) (list!739 x!29632)))))

(assert (=> m!96750 m!96752))

(assert (=> m!96750 m!96754))

(assert (=> m!96750 m!96748))

(assert (=> m!96750 s!16222))

(assert (=> m!96748 s!16222))

(declare-fun bs!10386 () Bool)

(assert (= bs!10386 (and neg-inst!56 start!10772)))

(assert (=> bs!10386 (= true inst!56)))

(declare-fun res!51741 () Bool)

(declare-fun e!59952 () Bool)

(assert (=> start!10772 (=> res!51741 e!59952)))

(declare-fun lambda!2006 () Int)

(declare-fun Forall!81 (Int) Bool)

(assert (=> start!10772 (= res!51741 (not (Forall!81 lambda!2006)))))

(assert (=> start!10772 (= (Forall!81 lambda!2006) inst!56)))

(assert (=> start!10772 (not e!59952)))

(assert (=> start!10772 true))

(declare-fun lambda!2007 () Int)

(declare-fun lambda!2008 () Int)

(declare-fun semiInverseModEq!100 (Int Int) Bool)

(assert (=> b!108126 (= e!59952 (semiInverseModEq!100 lambda!2007 lambda!2008))))

(assert (=> b!108126 (= (semiInverseModEq!100 lambda!2007 lambda!2008) (Forall!81 lambda!2006))))

(assert (= neg-inst!56 inst!56))

(assert (= (and start!10772 (not res!51741)) b!108126))

(declare-fun m!96758 () Bool)

(assert (=> start!10772 m!96758))

(assert (=> start!10772 m!96758))

(declare-fun m!96760 () Bool)

(assert (=> b!108126 m!96760))

(assert (=> b!108126 m!96760))

(assert (=> b!108126 m!96758))

(push 1)

(assert (not b!108133))

(assert (not bs!10385))

(assert (not b!108126))

(assert (not start!10772))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


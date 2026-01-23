; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!63902 () Bool)

(assert start!63902)

(declare-fun b!656361 () Bool)

(assert (=> b!656361 true))

(declare-fun res!291036 () Bool)

(declare-fun e!405900 () Bool)

(assert (=> start!63902 (=> (not res!291036) (not e!405900))))

(declare-fun from!502 () Int)

(assert (=> start!63902 (= res!291036 (>= from!502 0))))

(assert (=> start!63902 e!405900))

(assert (=> start!63902 true))

(declare-datatypes ((List!7027 0))(
  ( (Nil!7013) (Cons!7013 (h!12414 Int) (t!85948 List!7027)) )
))
(declare-datatypes ((IArray!4799 0))(
  ( (IArray!4800 (innerList!2457 List!7027)) )
))
(declare-datatypes ((Conc!2399 0))(
  ( (Node!2399 (left!5577 Conc!2399) (right!5907 Conc!2399) (csize!5028 Int) (cheight!2610 Int)) (Leaf!3614 (xs!5040 IArray!4799) (csize!5029 Int)) (Empty!2399) )
))
(declare-datatypes ((BalanceConc!4810 0))(
  ( (BalanceConc!4811 (c!118147 Conc!2399)) )
))
(declare-fun acc!218 () BalanceConc!4810)

(declare-fun e!405899 () Bool)

(declare-fun inv!8839 (BalanceConc!4810) Bool)

(assert (=> start!63902 (and (inv!8839 acc!218) e!405899)))

(declare-datatypes ((List!7028 0))(
  ( (Nil!7014) (Cons!7014 (h!12415 (_ BitVec 16)) (t!85949 List!7028)) )
))
(declare-datatypes ((TokenValue!1431 0))(
  ( (FloatLiteralValue!2862 (text!10462 List!7028)) (TokenValueExt!1430 (__x!5007 Int)) (Broken!7155 (value!44941 List!7028)) (Object!1444) (End!1431) (Def!1431) (Underscore!1431) (Match!1431) (Else!1431) (Error!1431) (Case!1431) (If!1431) (Extends!1431) (Abstract!1431) (Class!1431) (Val!1431) (DelimiterValue!2862 (del!1491 List!7028)) (KeywordValue!1437 (value!44942 List!7028)) (CommentValue!2862 (value!44943 List!7028)) (WhitespaceValue!2862 (value!44944 List!7028)) (IndentationValue!1431 (value!44945 List!7028)) (String!8894) (Int32!1431) (Broken!7156 (value!44946 List!7028)) (Boolean!1432) (Unit!12261) (OperatorValue!1434 (op!1491 List!7028)) (IdentifierValue!2862 (value!44947 List!7028)) (IdentifierValue!2863 (value!44948 List!7028)) (WhitespaceValue!2863 (value!44949 List!7028)) (True!2862) (False!2862) (Broken!7157 (value!44950 List!7028)) (Broken!7158 (value!44951 List!7028)) (True!2863) (RightBrace!1431) (RightBracket!1431) (Colon!1431) (Null!1431) (Comma!1431) (LeftBracket!1431) (False!2863) (LeftBrace!1431) (ImaginaryLiteralValue!1431 (text!10463 List!7028)) (StringLiteralValue!4293 (value!44952 List!7028)) (EOFValue!1431 (value!44953 List!7028)) (IdentValue!1431 (value!44954 List!7028)) (DelimiterValue!2863 (value!44955 List!7028)) (DedentValue!1431 (value!44956 List!7028)) (NewLineValue!1431 (value!44957 List!7028)) (IntegerValue!4293 (value!44958 (_ BitVec 32)) (text!10464 List!7028)) (IntegerValue!4294 (value!44959 Int) (text!10465 List!7028)) (Times!1431) (Or!1431) (Equal!1431) (Minus!1431) (Broken!7159 (value!44960 List!7028)) (And!1431) (Div!1431) (LessEqual!1431) (Mod!1431) (Concat!3163) (Not!1431) (Plus!1431) (SpaceValue!1431 (value!44961 List!7028)) (IntegerValue!4295 (value!44962 Int) (text!10466 List!7028)) (StringLiteralValue!4294 (text!10467 List!7028)) (FloatLiteralValue!2863 (text!10468 List!7028)) (BytesLiteralValue!1431 (value!44963 List!7028)) (CommentValue!2863 (value!44964 List!7028)) (StringLiteralValue!4295 (value!44965 List!7028)) (ErrorTokenValue!1431 (msg!1492 List!7028)) )
))
(declare-datatypes ((Regex!1732 0))(
  ( (ElementMatch!1732 (c!118148 (_ BitVec 16))) (Concat!3164 (regOne!3976 Regex!1732) (regTwo!3976 Regex!1732)) (EmptyExpr!1732) (Star!1732 (reg!2061 Regex!1732)) (EmptyLang!1732) (Union!1732 (regOne!3977 Regex!1732) (regTwo!3977 Regex!1732)) )
))
(declare-datatypes ((String!8895 0))(
  ( (String!8896 (value!44966 String)) )
))
(declare-datatypes ((IArray!4801 0))(
  ( (IArray!4802 (innerList!2458 List!7028)) )
))
(declare-datatypes ((Conc!2400 0))(
  ( (Node!2400 (left!5578 Conc!2400) (right!5908 Conc!2400) (csize!5030 Int) (cheight!2611 Int)) (Leaf!3615 (xs!5041 IArray!4801) (csize!5031 Int)) (Empty!2400) )
))
(declare-datatypes ((BalanceConc!4812 0))(
  ( (BalanceConc!4813 (c!118149 Conc!2400)) )
))
(declare-datatypes ((TokenValueInjection!2614 0))(
  ( (TokenValueInjection!2615 (toValue!2338 Int) (toChars!2197 Int)) )
))
(declare-datatypes ((Rule!2594 0))(
  ( (Rule!2595 (regex!1397 Regex!1732) (tag!1659 String!8895) (isSeparator!1397 Bool) (transformation!1397 TokenValueInjection!2614)) )
))
(declare-datatypes ((Token!2516 0))(
  ( (Token!2517 (value!44967 TokenValue!1431) (rule!2192 Rule!2594) (size!5562 Int) (originalCharacters!1429 List!7028)) )
))
(declare-datatypes ((List!7029 0))(
  ( (Nil!7015) (Cons!7015 (h!12416 Token!2516) (t!85950 List!7029)) )
))
(declare-datatypes ((IArray!4803 0))(
  ( (IArray!4804 (innerList!2459 List!7029)) )
))
(declare-datatypes ((Conc!2401 0))(
  ( (Node!2401 (left!5579 Conc!2401) (right!5909 Conc!2401) (csize!5032 Int) (cheight!2612 Int)) (Leaf!3616 (xs!5042 IArray!4803) (csize!5033 Int)) (Empty!2401) )
))
(declare-datatypes ((BalanceConc!4814 0))(
  ( (BalanceConc!4815 (c!118150 Conc!2401)) )
))
(declare-fun ts!14 () BalanceConc!4814)

(declare-fun e!405901 () Bool)

(declare-fun inv!8840 (BalanceConc!4814) Bool)

(assert (=> start!63902 (and (inv!8840 ts!14) e!405901)))

(declare-fun b!656357 () Bool)

(declare-fun tp!200538 () Bool)

(declare-fun inv!8841 (Conc!2399) Bool)

(assert (=> b!656357 (= e!405899 (and (inv!8841 (c!118147 acc!218)) tp!200538))))

(declare-fun b!656358 () Bool)

(declare-fun res!291037 () Bool)

(declare-fun e!405898 () Bool)

(assert (=> b!656358 (=> (not res!291037) (not e!405898))))

(declare-fun lt!279815 () Int)

(assert (=> b!656358 (= res!291037 (< from!502 lt!279815))))

(declare-fun b!656359 () Bool)

(assert (=> b!656359 (= e!405898 false)))

(declare-fun lt!279816 () Token!2516)

(declare-fun apply!1678 (BalanceConc!4814 Int) Token!2516)

(assert (=> b!656359 (= lt!279816 (apply!1678 ts!14 from!502))))

(declare-fun b!656360 () Bool)

(assert (=> b!656360 (= e!405900 e!405898)))

(declare-fun res!291034 () Bool)

(assert (=> b!656360 (=> (not res!291034) (not e!405898))))

(declare-fun size!101 () Int)

(assert (=> b!656360 (= res!291034 (and (<= from!502 lt!279815) (= lt!279815 size!101)))))

(declare-fun size!5563 (BalanceConc!4814) Int)

(assert (=> b!656360 (= lt!279815 (size!5563 ts!14))))

(declare-fun res!291035 () Bool)

(assert (=> b!656361 (=> (not res!291035) (not e!405898))))

(declare-fun lambda!20232 () Int)

(declare-fun forall!1838 (BalanceConc!4810 Int) Bool)

(assert (=> b!656361 (= res!291035 (forall!1838 acc!218 lambda!20232))))

(declare-fun b!656362 () Bool)

(declare-fun tp!200539 () Bool)

(declare-fun inv!8842 (Conc!2401) Bool)

(assert (=> b!656362 (= e!405901 (and (inv!8842 (c!118150 ts!14)) tp!200539))))

(assert (= (and start!63902 res!291036) b!656360))

(assert (= (and b!656360 res!291034) b!656361))

(assert (= (and b!656361 res!291035) b!656358))

(assert (= (and b!656358 res!291037) b!656359))

(assert (= start!63902 b!656357))

(assert (= start!63902 b!656362))

(declare-fun m!922189 () Bool)

(assert (=> b!656361 m!922189))

(declare-fun m!922191 () Bool)

(assert (=> b!656357 m!922191))

(declare-fun m!922193 () Bool)

(assert (=> b!656362 m!922193))

(declare-fun m!922195 () Bool)

(assert (=> b!656359 m!922195))

(declare-fun m!922197 () Bool)

(assert (=> b!656360 m!922197))

(declare-fun m!922199 () Bool)

(assert (=> start!63902 m!922199))

(declare-fun m!922201 () Bool)

(assert (=> start!63902 m!922201))

(push 1)

(assert (not start!63902))

(assert (not b!656361))

(assert (not b!656362))

(assert (not b!656359))

(assert (not b!656357))

(assert (not b!656360))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


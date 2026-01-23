; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64234 () Bool)

(assert start!64234)

(declare-fun b!658202 () Bool)

(assert (=> b!658202 true))

(declare-fun b!658198 () Bool)

(declare-fun res!292075 () Bool)

(declare-fun e!407019 () Bool)

(assert (=> b!658198 (=> (not res!292075) (not e!407019))))

(declare-datatypes ((List!7078 0))(
  ( (Nil!7064) (Cons!7064 (h!12465 (_ BitVec 16)) (t!86039 List!7078)) )
))
(declare-datatypes ((TokenValue!1448 0))(
  ( (FloatLiteralValue!2896 (text!10581 List!7078)) (TokenValueExt!1447 (__x!5024 Int)) (Broken!7240 (value!45424 List!7078)) (Object!1461) (End!1448) (Def!1448) (Underscore!1448) (Match!1448) (Else!1448) (Error!1448) (Case!1448) (If!1448) (Extends!1448) (Abstract!1448) (Class!1448) (Val!1448) (DelimiterValue!2896 (del!1508 List!7078)) (KeywordValue!1454 (value!45425 List!7078)) (CommentValue!2896 (value!45426 List!7078)) (WhitespaceValue!2896 (value!45427 List!7078)) (IndentationValue!1448 (value!45428 List!7078)) (String!8977) (Int32!1448) (Broken!7241 (value!45429 List!7078)) (Boolean!1449) (Unit!12294) (OperatorValue!1451 (op!1508 List!7078)) (IdentifierValue!2896 (value!45430 List!7078)) (IdentifierValue!2897 (value!45431 List!7078)) (WhitespaceValue!2897 (value!45432 List!7078)) (True!2896) (False!2896) (Broken!7242 (value!45433 List!7078)) (Broken!7243 (value!45434 List!7078)) (True!2897) (RightBrace!1448) (RightBracket!1448) (Colon!1448) (Null!1448) (Comma!1448) (LeftBracket!1448) (False!2897) (LeftBrace!1448) (ImaginaryLiteralValue!1448 (text!10582 List!7078)) (StringLiteralValue!4344 (value!45435 List!7078)) (EOFValue!1448 (value!45436 List!7078)) (IdentValue!1448 (value!45437 List!7078)) (DelimiterValue!2897 (value!45438 List!7078)) (DedentValue!1448 (value!45439 List!7078)) (NewLineValue!1448 (value!45440 List!7078)) (IntegerValue!4344 (value!45441 (_ BitVec 32)) (text!10583 List!7078)) (IntegerValue!4345 (value!45442 Int) (text!10584 List!7078)) (Times!1448) (Or!1448) (Equal!1448) (Minus!1448) (Broken!7244 (value!45443 List!7078)) (And!1448) (Div!1448) (LessEqual!1448) (Mod!1448) (Concat!3197) (Not!1448) (Plus!1448) (SpaceValue!1448 (value!45444 List!7078)) (IntegerValue!4346 (value!45445 Int) (text!10585 List!7078)) (StringLiteralValue!4345 (text!10586 List!7078)) (FloatLiteralValue!2897 (text!10587 List!7078)) (BytesLiteralValue!1448 (value!45446 List!7078)) (CommentValue!2897 (value!45447 List!7078)) (StringLiteralValue!4346 (value!45448 List!7078)) (ErrorTokenValue!1448 (msg!1509 List!7078)) )
))
(declare-datatypes ((Regex!1749 0))(
  ( (ElementMatch!1749 (c!118478 (_ BitVec 16))) (Concat!3198 (regOne!4010 Regex!1749) (regTwo!4010 Regex!1749)) (EmptyExpr!1749) (Star!1749 (reg!2078 Regex!1749)) (EmptyLang!1749) (Union!1749 (regOne!4011 Regex!1749) (regTwo!4011 Regex!1749)) )
))
(declare-datatypes ((String!8978 0))(
  ( (String!8979 (value!45449 String)) )
))
(declare-datatypes ((IArray!4901 0))(
  ( (IArray!4902 (innerList!2508 List!7078)) )
))
(declare-datatypes ((Conc!2450 0))(
  ( (Node!2450 (left!5670 Conc!2450) (right!6000 Conc!2450) (csize!5130 Int) (cheight!2661 Int)) (Leaf!3673 (xs!5095 IArray!4901) (csize!5131 Int)) (Empty!2450) )
))
(declare-datatypes ((BalanceConc!4912 0))(
  ( (BalanceConc!4913 (c!118479 Conc!2450)) )
))
(declare-datatypes ((TokenValueInjection!2648 0))(
  ( (TokenValueInjection!2649 (toValue!2355 Int) (toChars!2214 Int)) )
))
(declare-datatypes ((Rule!2628 0))(
  ( (Rule!2629 (regex!1414 Regex!1749) (tag!1676 String!8978) (isSeparator!1414 Bool) (transformation!1414 TokenValueInjection!2648)) )
))
(declare-datatypes ((Token!2550 0))(
  ( (Token!2551 (value!45450 TokenValue!1448) (rule!2209 Rule!2628) (size!5614 Int) (originalCharacters!1446 List!7078)) )
))
(declare-fun lt!280286 () Token!2550)

(declare-fun isKeywordValue!0 (Token!2550 TokenValue!1448) Bool)

(assert (=> b!658198 (= res!292075 (not (isKeywordValue!0 lt!280286 RightBrace!1448)))))

(declare-fun b!658199 () Bool)

(assert (=> b!658199 (= e!407019 false)))

(declare-fun res!292073 () Bool)

(declare-fun e!407020 () Bool)

(assert (=> start!64234 (=> (not res!292073) (not e!407020))))

(declare-fun from!502 () Int)

(assert (=> start!64234 (= res!292073 (>= from!502 0))))

(assert (=> start!64234 e!407020))

(assert (=> start!64234 true))

(declare-datatypes ((List!7079 0))(
  ( (Nil!7065) (Cons!7065 (h!12466 Int) (t!86040 List!7079)) )
))
(declare-datatypes ((IArray!4903 0))(
  ( (IArray!4904 (innerList!2509 List!7079)) )
))
(declare-datatypes ((Conc!2451 0))(
  ( (Node!2451 (left!5671 Conc!2451) (right!6001 Conc!2451) (csize!5132 Int) (cheight!2662 Int)) (Leaf!3674 (xs!5096 IArray!4903) (csize!5133 Int)) (Empty!2451) )
))
(declare-datatypes ((BalanceConc!4914 0))(
  ( (BalanceConc!4915 (c!118480 Conc!2451)) )
))
(declare-fun acc!218 () BalanceConc!4914)

(declare-fun e!407018 () Bool)

(declare-fun inv!8969 (BalanceConc!4914) Bool)

(assert (=> start!64234 (and (inv!8969 acc!218) e!407018)))

(declare-datatypes ((List!7080 0))(
  ( (Nil!7066) (Cons!7066 (h!12467 Token!2550) (t!86041 List!7080)) )
))
(declare-datatypes ((IArray!4905 0))(
  ( (IArray!4906 (innerList!2510 List!7080)) )
))
(declare-datatypes ((Conc!2452 0))(
  ( (Node!2452 (left!5672 Conc!2452) (right!6002 Conc!2452) (csize!5134 Int) (cheight!2663 Int)) (Leaf!3675 (xs!5097 IArray!4905) (csize!5135 Int)) (Empty!2452) )
))
(declare-datatypes ((BalanceConc!4916 0))(
  ( (BalanceConc!4917 (c!118481 Conc!2452)) )
))
(declare-fun ts!14 () BalanceConc!4916)

(declare-fun e!407017 () Bool)

(declare-fun inv!8970 (BalanceConc!4916) Bool)

(assert (=> start!64234 (and (inv!8970 ts!14) e!407017)))

(declare-fun b!658200 () Bool)

(declare-fun res!292074 () Bool)

(declare-fun e!407021 () Bool)

(assert (=> b!658200 (=> (not res!292074) (not e!407021))))

(declare-fun lt!280285 () Int)

(assert (=> b!658200 (= res!292074 (< from!502 lt!280285))))

(declare-fun b!658201 () Bool)

(assert (=> b!658201 (= e!407021 e!407019)))

(declare-fun res!292071 () Bool)

(assert (=> b!658201 (=> (not res!292071) (not e!407019))))

(assert (=> b!658201 (= res!292071 (not (isKeywordValue!0 lt!280286 LeftBrace!1448)))))

(declare-fun apply!1709 (BalanceConc!4916 Int) Token!2550)

(assert (=> b!658201 (= lt!280286 (apply!1709 ts!14 from!502))))

(declare-fun res!292076 () Bool)

(assert (=> b!658202 (=> (not res!292076) (not e!407021))))

(declare-fun lambda!20339 () Int)

(declare-fun forall!1870 (BalanceConc!4914 Int) Bool)

(assert (=> b!658202 (= res!292076 (forall!1870 acc!218 lambda!20339))))

(declare-fun b!658203 () Bool)

(declare-fun tp!200806 () Bool)

(declare-fun inv!8971 (Conc!2452) Bool)

(assert (=> b!658203 (= e!407017 (and (inv!8971 (c!118481 ts!14)) tp!200806))))

(declare-fun b!658204 () Bool)

(declare-fun tp!200807 () Bool)

(declare-fun inv!8972 (Conc!2451) Bool)

(assert (=> b!658204 (= e!407018 (and (inv!8972 (c!118480 acc!218)) tp!200807))))

(declare-fun b!658205 () Bool)

(assert (=> b!658205 (= e!407020 e!407021)))

(declare-fun res!292072 () Bool)

(assert (=> b!658205 (=> (not res!292072) (not e!407021))))

(declare-fun size!101 () Int)

(assert (=> b!658205 (= res!292072 (and (<= from!502 lt!280285) (= lt!280285 size!101)))))

(declare-fun size!5615 (BalanceConc!4916) Int)

(assert (=> b!658205 (= lt!280285 (size!5615 ts!14))))

(assert (= (and start!64234 res!292073) b!658205))

(assert (= (and b!658205 res!292072) b!658202))

(assert (= (and b!658202 res!292076) b!658200))

(assert (= (and b!658200 res!292074) b!658201))

(assert (= (and b!658201 res!292071) b!658198))

(assert (= (and b!658198 res!292075) b!658199))

(assert (= start!64234 b!658204))

(assert (= start!64234 b!658203))

(declare-fun m!923945 () Bool)

(assert (=> b!658204 m!923945))

(declare-fun m!923947 () Bool)

(assert (=> b!658198 m!923947))

(declare-fun m!923949 () Bool)

(assert (=> b!658203 m!923949))

(declare-fun m!923951 () Bool)

(assert (=> b!658205 m!923951))

(declare-fun m!923953 () Bool)

(assert (=> b!658202 m!923953))

(declare-fun m!923955 () Bool)

(assert (=> b!658201 m!923955))

(declare-fun m!923957 () Bool)

(assert (=> b!658201 m!923957))

(declare-fun m!923959 () Bool)

(assert (=> start!64234 m!923959))

(declare-fun m!923961 () Bool)

(assert (=> start!64234 m!923961))

(check-sat (not start!64234) (not b!658205) (not b!658203) (not b!658198) (not b!658201) (not b!658204) (not b!658202))
(check-sat)

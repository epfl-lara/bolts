; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64238 () Bool)

(assert start!64238)

(declare-fun b!658261 () Bool)

(assert (=> b!658261 true))

(declare-fun b!658255 () Bool)

(declare-fun e!407049 () Bool)

(declare-datatypes ((List!7084 0))(
  ( (Nil!7070) (Cons!7070 (h!12471 (_ BitVec 16)) (t!86045 List!7084)) )
))
(declare-datatypes ((TokenValue!1450 0))(
  ( (FloatLiteralValue!2900 (text!10595 List!7084)) (TokenValueExt!1449 (__x!5026 Int)) (Broken!7250 (value!45481 List!7084)) (Object!1463) (End!1450) (Def!1450) (Underscore!1450) (Match!1450) (Else!1450) (Error!1450) (Case!1450) (If!1450) (Extends!1450) (Abstract!1450) (Class!1450) (Val!1450) (DelimiterValue!2900 (del!1510 List!7084)) (KeywordValue!1456 (value!45482 List!7084)) (CommentValue!2900 (value!45483 List!7084)) (WhitespaceValue!2900 (value!45484 List!7084)) (IndentationValue!1450 (value!45485 List!7084)) (String!8987) (Int32!1450) (Broken!7251 (value!45486 List!7084)) (Boolean!1451) (Unit!12296) (OperatorValue!1453 (op!1510 List!7084)) (IdentifierValue!2900 (value!45487 List!7084)) (IdentifierValue!2901 (value!45488 List!7084)) (WhitespaceValue!2901 (value!45489 List!7084)) (True!2900) (False!2900) (Broken!7252 (value!45490 List!7084)) (Broken!7253 (value!45491 List!7084)) (True!2901) (RightBrace!1450) (RightBracket!1450) (Colon!1450) (Null!1450) (Comma!1450) (LeftBracket!1450) (False!2901) (LeftBrace!1450) (ImaginaryLiteralValue!1450 (text!10596 List!7084)) (StringLiteralValue!4350 (value!45492 List!7084)) (EOFValue!1450 (value!45493 List!7084)) (IdentValue!1450 (value!45494 List!7084)) (DelimiterValue!2901 (value!45495 List!7084)) (DedentValue!1450 (value!45496 List!7084)) (NewLineValue!1450 (value!45497 List!7084)) (IntegerValue!4350 (value!45498 (_ BitVec 32)) (text!10597 List!7084)) (IntegerValue!4351 (value!45499 Int) (text!10598 List!7084)) (Times!1450) (Or!1450) (Equal!1450) (Minus!1450) (Broken!7254 (value!45500 List!7084)) (And!1450) (Div!1450) (LessEqual!1450) (Mod!1450) (Concat!3201) (Not!1450) (Plus!1450) (SpaceValue!1450 (value!45501 List!7084)) (IntegerValue!4352 (value!45502 Int) (text!10599 List!7084)) (StringLiteralValue!4351 (text!10600 List!7084)) (FloatLiteralValue!2901 (text!10601 List!7084)) (BytesLiteralValue!1450 (value!45503 List!7084)) (CommentValue!2901 (value!45504 List!7084)) (StringLiteralValue!4352 (value!45505 List!7084)) (ErrorTokenValue!1450 (msg!1511 List!7084)) )
))
(declare-datatypes ((Regex!1751 0))(
  ( (ElementMatch!1751 (c!118486 (_ BitVec 16))) (Concat!3202 (regOne!4014 Regex!1751) (regTwo!4014 Regex!1751)) (EmptyExpr!1751) (Star!1751 (reg!2080 Regex!1751)) (EmptyLang!1751) (Union!1751 (regOne!4015 Regex!1751) (regTwo!4015 Regex!1751)) )
))
(declare-datatypes ((String!8988 0))(
  ( (String!8989 (value!45506 String)) )
))
(declare-datatypes ((IArray!4913 0))(
  ( (IArray!4914 (innerList!2514 List!7084)) )
))
(declare-datatypes ((Conc!2456 0))(
  ( (Node!2456 (left!5681 Conc!2456) (right!6011 Conc!2456) (csize!5142 Int) (cheight!2667 Int)) (Leaf!3680 (xs!5101 IArray!4913) (csize!5143 Int)) (Empty!2456) )
))
(declare-datatypes ((BalanceConc!4924 0))(
  ( (BalanceConc!4925 (c!118487 Conc!2456)) )
))
(declare-datatypes ((TokenValueInjection!2652 0))(
  ( (TokenValueInjection!2653 (toValue!2357 Int) (toChars!2216 Int)) )
))
(declare-datatypes ((Rule!2632 0))(
  ( (Rule!2633 (regex!1416 Regex!1751) (tag!1678 String!8988) (isSeparator!1416 Bool) (transformation!1416 TokenValueInjection!2652)) )
))
(declare-datatypes ((Token!2554 0))(
  ( (Token!2555 (value!45507 TokenValue!1450) (rule!2211 Rule!2632) (size!5618 Int) (originalCharacters!1448 List!7084)) )
))
(declare-datatypes ((List!7085 0))(
  ( (Nil!7071) (Cons!7071 (h!12472 Token!2554) (t!86046 List!7085)) )
))
(declare-datatypes ((IArray!4915 0))(
  ( (IArray!4916 (innerList!2515 List!7085)) )
))
(declare-datatypes ((Conc!2457 0))(
  ( (Node!2457 (left!5682 Conc!2457) (right!6012 Conc!2457) (csize!5144 Int) (cheight!2668 Int)) (Leaf!3681 (xs!5102 IArray!4915) (csize!5145 Int)) (Empty!2457) )
))
(declare-datatypes ((BalanceConc!4926 0))(
  ( (BalanceConc!4927 (c!118488 Conc!2457)) )
))
(declare-fun ts!14 () BalanceConc!4926)

(declare-fun tp!200818 () Bool)

(declare-fun inv!8980 (Conc!2457) Bool)

(assert (=> b!658255 (= e!407049 (and (inv!8980 (c!118488 ts!14)) tp!200818))))

(declare-fun b!658256 () Bool)

(declare-fun e!407050 () Bool)

(declare-fun e!407048 () Bool)

(assert (=> b!658256 (= e!407050 e!407048)))

(declare-fun res!292116 () Bool)

(assert (=> b!658256 (=> (not res!292116) (not e!407048))))

(declare-fun size!101 () Int)

(declare-fun lt!280298 () Int)

(declare-fun from!502 () Int)

(assert (=> b!658256 (= res!292116 (and (<= from!502 lt!280298) (= lt!280298 size!101)))))

(declare-fun size!5619 (BalanceConc!4926) Int)

(assert (=> b!658256 (= lt!280298 (size!5619 ts!14))))

(declare-fun b!658257 () Bool)

(declare-fun res!292117 () Bool)

(declare-fun e!407047 () Bool)

(assert (=> b!658257 (=> (not res!292117) (not e!407047))))

(declare-fun lt!280297 () Token!2554)

(declare-fun isKeywordValue!0 (Token!2554 TokenValue!1450) Bool)

(assert (=> b!658257 (= res!292117 (not (isKeywordValue!0 lt!280297 RightBrace!1450)))))

(declare-fun b!658258 () Bool)

(declare-fun res!292113 () Bool)

(assert (=> b!658258 (=> (not res!292113) (not e!407048))))

(assert (=> b!658258 (= res!292113 (< from!502 lt!280298))))

(declare-fun b!658259 () Bool)

(declare-fun res!292118 () Bool)

(assert (=> b!658259 (=> (not res!292118) (not e!407047))))

(assert (=> b!658259 (= res!292118 (and (>= (+ 1 from!502) 0) (<= (+ 1 from!502) lt!280298)))))

(declare-fun res!292115 () Bool)

(assert (=> start!64238 (=> (not res!292115) (not e!407050))))

(assert (=> start!64238 (= res!292115 (>= from!502 0))))

(assert (=> start!64238 e!407050))

(assert (=> start!64238 true))

(declare-datatypes ((List!7086 0))(
  ( (Nil!7072) (Cons!7072 (h!12473 Int) (t!86047 List!7086)) )
))
(declare-datatypes ((IArray!4917 0))(
  ( (IArray!4918 (innerList!2516 List!7086)) )
))
(declare-datatypes ((Conc!2458 0))(
  ( (Node!2458 (left!5683 Conc!2458) (right!6013 Conc!2458) (csize!5146 Int) (cheight!2669 Int)) (Leaf!3682 (xs!5103 IArray!4917) (csize!5147 Int)) (Empty!2458) )
))
(declare-datatypes ((BalanceConc!4928 0))(
  ( (BalanceConc!4929 (c!118489 Conc!2458)) )
))
(declare-fun acc!218 () BalanceConc!4928)

(declare-fun e!407051 () Bool)

(declare-fun inv!8981 (BalanceConc!4928) Bool)

(assert (=> start!64238 (and (inv!8981 acc!218) e!407051)))

(declare-fun inv!8982 (BalanceConc!4926) Bool)

(assert (=> start!64238 (and (inv!8982 ts!14) e!407049)))

(declare-fun b!658260 () Bool)

(declare-fun lambda!20349 () Int)

(declare-fun forall!1872 (BalanceConc!4928 Int) Bool)

(assert (=> b!658260 (= e!407047 (not (forall!1872 acc!218 lambda!20349)))))

(declare-fun res!292112 () Bool)

(assert (=> b!658261 (=> (not res!292112) (not e!407048))))

(assert (=> b!658261 (= res!292112 (forall!1872 acc!218 lambda!20349))))

(declare-fun b!658262 () Bool)

(assert (=> b!658262 (= e!407048 e!407047)))

(declare-fun res!292114 () Bool)

(assert (=> b!658262 (=> (not res!292114) (not e!407047))))

(assert (=> b!658262 (= res!292114 (not (isKeywordValue!0 lt!280297 LeftBrace!1450)))))

(declare-fun apply!1711 (BalanceConc!4926 Int) Token!2554)

(assert (=> b!658262 (= lt!280297 (apply!1711 ts!14 from!502))))

(declare-fun b!658263 () Bool)

(declare-fun tp!200819 () Bool)

(declare-fun inv!8983 (Conc!2458) Bool)

(assert (=> b!658263 (= e!407051 (and (inv!8983 (c!118489 acc!218)) tp!200819))))

(assert (= (and start!64238 res!292115) b!658256))

(assert (= (and b!658256 res!292116) b!658261))

(assert (= (and b!658261 res!292112) b!658258))

(assert (= (and b!658258 res!292113) b!658262))

(assert (= (and b!658262 res!292114) b!658257))

(assert (= (and b!658257 res!292117) b!658259))

(assert (= (and b!658259 res!292118) b!658260))

(assert (= start!64238 b!658263))

(assert (= start!64238 b!658255))

(declare-fun m!923981 () Bool)

(assert (=> start!64238 m!923981))

(declare-fun m!923983 () Bool)

(assert (=> start!64238 m!923983))

(declare-fun m!923985 () Bool)

(assert (=> b!658257 m!923985))

(declare-fun m!923987 () Bool)

(assert (=> b!658263 m!923987))

(declare-fun m!923989 () Bool)

(assert (=> b!658255 m!923989))

(declare-fun m!923991 () Bool)

(assert (=> b!658262 m!923991))

(declare-fun m!923993 () Bool)

(assert (=> b!658262 m!923993))

(declare-fun m!923995 () Bool)

(assert (=> b!658261 m!923995))

(assert (=> b!658260 m!923995))

(declare-fun m!923997 () Bool)

(assert (=> b!658256 m!923997))

(check-sat (not b!658263) (not start!64238) (not b!658257) (not b!658262) (not b!658255) (not b!658261) (not b!658260) (not b!658256))
(check-sat)

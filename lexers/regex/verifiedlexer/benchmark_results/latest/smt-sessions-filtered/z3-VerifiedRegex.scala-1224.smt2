; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64242 () Bool)

(assert start!64242)

(declare-fun b!658315 () Bool)

(assert (=> b!658315 true))

(declare-fun b!658308 () Bool)

(declare-fun res!292154 () Bool)

(declare-fun e!407085 () Bool)

(assert (=> b!658308 (=> (not res!292154) (not e!407085))))

(declare-fun from!502 () Int)

(declare-fun lt!280310 () Int)

(assert (=> b!658308 (= res!292154 (< from!502 lt!280310))))

(declare-fun b!658309 () Bool)

(declare-fun e!407083 () Bool)

(declare-datatypes ((List!7090 0))(
  ( (Nil!7076) (Cons!7076 (h!12477 Int) (t!86051 List!7090)) )
))
(declare-datatypes ((IArray!4925 0))(
  ( (IArray!4926 (innerList!2520 List!7090)) )
))
(declare-datatypes ((Conc!2462 0))(
  ( (Node!2462 (left!5692 Conc!2462) (right!6022 Conc!2462) (csize!5154 Int) (cheight!2673 Int)) (Leaf!3687 (xs!5107 IArray!4925) (csize!5155 Int)) (Empty!2462) )
))
(declare-datatypes ((BalanceConc!4936 0))(
  ( (BalanceConc!4937 (c!118494 Conc!2462)) )
))
(declare-fun acc!218 () BalanceConc!4936)

(declare-fun lambda!20359 () Int)

(declare-fun forall!1874 (BalanceConc!4936 Int) Bool)

(assert (=> b!658309 (= e!407083 (not (forall!1874 acc!218 lambda!20359)))))

(declare-fun b!658310 () Bool)

(assert (=> b!658310 (= e!407085 e!407083)))

(declare-fun res!292150 () Bool)

(assert (=> b!658310 (=> (not res!292150) (not e!407083))))

(declare-fun e!407084 () Bool)

(assert (=> b!658310 (= res!292150 e!407084)))

(declare-fun res!292153 () Bool)

(assert (=> b!658310 (=> res!292153 e!407084)))

(declare-datatypes ((List!7091 0))(
  ( (Nil!7077) (Cons!7077 (h!12478 (_ BitVec 16)) (t!86052 List!7091)) )
))
(declare-datatypes ((TokenValue!1452 0))(
  ( (FloatLiteralValue!2904 (text!10609 List!7091)) (TokenValueExt!1451 (__x!5028 Int)) (Broken!7260 (value!45538 List!7091)) (Object!1465) (End!1452) (Def!1452) (Underscore!1452) (Match!1452) (Else!1452) (Error!1452) (Case!1452) (If!1452) (Extends!1452) (Abstract!1452) (Class!1452) (Val!1452) (DelimiterValue!2904 (del!1512 List!7091)) (KeywordValue!1458 (value!45539 List!7091)) (CommentValue!2904 (value!45540 List!7091)) (WhitespaceValue!2904 (value!45541 List!7091)) (IndentationValue!1452 (value!45542 List!7091)) (String!8997) (Int32!1452) (Broken!7261 (value!45543 List!7091)) (Boolean!1453) (Unit!12298) (OperatorValue!1455 (op!1512 List!7091)) (IdentifierValue!2904 (value!45544 List!7091)) (IdentifierValue!2905 (value!45545 List!7091)) (WhitespaceValue!2905 (value!45546 List!7091)) (True!2904) (False!2904) (Broken!7262 (value!45547 List!7091)) (Broken!7263 (value!45548 List!7091)) (True!2905) (RightBrace!1452) (RightBracket!1452) (Colon!1452) (Null!1452) (Comma!1452) (LeftBracket!1452) (False!2905) (LeftBrace!1452) (ImaginaryLiteralValue!1452 (text!10610 List!7091)) (StringLiteralValue!4356 (value!45549 List!7091)) (EOFValue!1452 (value!45550 List!7091)) (IdentValue!1452 (value!45551 List!7091)) (DelimiterValue!2905 (value!45552 List!7091)) (DedentValue!1452 (value!45553 List!7091)) (NewLineValue!1452 (value!45554 List!7091)) (IntegerValue!4356 (value!45555 (_ BitVec 32)) (text!10611 List!7091)) (IntegerValue!4357 (value!45556 Int) (text!10612 List!7091)) (Times!1452) (Or!1452) (Equal!1452) (Minus!1452) (Broken!7264 (value!45557 List!7091)) (And!1452) (Div!1452) (LessEqual!1452) (Mod!1452) (Concat!3205) (Not!1452) (Plus!1452) (SpaceValue!1452 (value!45558 List!7091)) (IntegerValue!4358 (value!45559 Int) (text!10613 List!7091)) (StringLiteralValue!4357 (text!10614 List!7091)) (FloatLiteralValue!2905 (text!10615 List!7091)) (BytesLiteralValue!1452 (value!45560 List!7091)) (CommentValue!2905 (value!45561 List!7091)) (StringLiteralValue!4358 (value!45562 List!7091)) (ErrorTokenValue!1452 (msg!1513 List!7091)) )
))
(declare-datatypes ((Regex!1753 0))(
  ( (ElementMatch!1753 (c!118495 (_ BitVec 16))) (Concat!3206 (regOne!4018 Regex!1753) (regTwo!4018 Regex!1753)) (EmptyExpr!1753) (Star!1753 (reg!2082 Regex!1753)) (EmptyLang!1753) (Union!1753 (regOne!4019 Regex!1753) (regTwo!4019 Regex!1753)) )
))
(declare-datatypes ((String!8998 0))(
  ( (String!8999 (value!45563 String)) )
))
(declare-datatypes ((IArray!4927 0))(
  ( (IArray!4928 (innerList!2521 List!7091)) )
))
(declare-datatypes ((Conc!2463 0))(
  ( (Node!2463 (left!5693 Conc!2463) (right!6023 Conc!2463) (csize!5156 Int) (cheight!2674 Int)) (Leaf!3688 (xs!5108 IArray!4927) (csize!5157 Int)) (Empty!2463) )
))
(declare-datatypes ((BalanceConc!4938 0))(
  ( (BalanceConc!4939 (c!118496 Conc!2463)) )
))
(declare-datatypes ((TokenValueInjection!2656 0))(
  ( (TokenValueInjection!2657 (toValue!2359 Int) (toChars!2218 Int)) )
))
(declare-datatypes ((Rule!2636 0))(
  ( (Rule!2637 (regex!1418 Regex!1753) (tag!1680 String!8998) (isSeparator!1418 Bool) (transformation!1418 TokenValueInjection!2656)) )
))
(declare-datatypes ((Token!2558 0))(
  ( (Token!2559 (value!45564 TokenValue!1452) (rule!2213 Rule!2636) (size!5622 Int) (originalCharacters!1450 List!7091)) )
))
(declare-fun lt!280309 () Token!2558)

(declare-fun isKeywordValue!0 (Token!2558 TokenValue!1452) Bool)

(assert (=> b!658310 (= res!292153 (isKeywordValue!0 lt!280309 LeftBrace!1452))))

(declare-datatypes ((List!7092 0))(
  ( (Nil!7078) (Cons!7078 (h!12479 Token!2558) (t!86053 List!7092)) )
))
(declare-datatypes ((IArray!4929 0))(
  ( (IArray!4930 (innerList!2522 List!7092)) )
))
(declare-datatypes ((Conc!2464 0))(
  ( (Node!2464 (left!5694 Conc!2464) (right!6024 Conc!2464) (csize!5158 Int) (cheight!2675 Int)) (Leaf!3689 (xs!5109 IArray!4929) (csize!5159 Int)) (Empty!2464) )
))
(declare-datatypes ((BalanceConc!4940 0))(
  ( (BalanceConc!4941 (c!118497 Conc!2464)) )
))
(declare-fun ts!14 () BalanceConc!4940)

(declare-fun apply!1713 (BalanceConc!4940 Int) Token!2558)

(assert (=> b!658310 (= lt!280309 (apply!1713 ts!14 from!502))))

(declare-fun b!658311 () Bool)

(declare-fun e!407082 () Bool)

(assert (=> b!658311 (= e!407082 e!407085)))

(declare-fun res!292152 () Bool)

(assert (=> b!658311 (=> (not res!292152) (not e!407085))))

(declare-fun size!101 () Int)

(assert (=> b!658311 (= res!292152 (and (<= from!502 lt!280310) (= lt!280310 size!101)))))

(declare-fun size!5623 (BalanceConc!4940) Int)

(assert (=> b!658311 (= lt!280310 (size!5623 ts!14))))

(declare-fun b!658312 () Bool)

(declare-fun e!407087 () Bool)

(declare-fun tp!200830 () Bool)

(declare-fun inv!8991 (Conc!2464) Bool)

(assert (=> b!658312 (= e!407087 (and (inv!8991 (c!118497 ts!14)) tp!200830))))

(declare-fun b!658314 () Bool)

(declare-fun e!407086 () Bool)

(declare-fun tp!200831 () Bool)

(declare-fun inv!8992 (Conc!2462) Bool)

(assert (=> b!658314 (= e!407086 (and (inv!8992 (c!118494 acc!218)) tp!200831))))

(declare-fun res!292149 () Bool)

(assert (=> b!658315 (=> (not res!292149) (not e!407085))))

(assert (=> b!658315 (= res!292149 (forall!1874 acc!218 lambda!20359))))

(declare-fun res!292151 () Bool)

(assert (=> start!64242 (=> (not res!292151) (not e!407082))))

(assert (=> start!64242 (= res!292151 (>= from!502 0))))

(assert (=> start!64242 e!407082))

(assert (=> start!64242 true))

(declare-fun inv!8993 (BalanceConc!4936) Bool)

(assert (=> start!64242 (and (inv!8993 acc!218) e!407086)))

(declare-fun inv!8994 (BalanceConc!4940) Bool)

(assert (=> start!64242 (and (inv!8994 ts!14) e!407087)))

(declare-fun b!658313 () Bool)

(assert (=> b!658313 (= e!407084 (isKeywordValue!0 lt!280309 RightBrace!1452))))

(assert (= (and start!64242 res!292151) b!658311))

(assert (= (and b!658311 res!292152) b!658315))

(assert (= (and b!658315 res!292149) b!658308))

(assert (= (and b!658308 res!292154) b!658310))

(assert (= (and b!658310 (not res!292153)) b!658313))

(assert (= (and b!658310 res!292150) b!658309))

(assert (= start!64242 b!658314))

(assert (= start!64242 b!658312))

(declare-fun m!924017 () Bool)

(assert (=> b!658309 m!924017))

(declare-fun m!924019 () Bool)

(assert (=> b!658310 m!924019))

(declare-fun m!924021 () Bool)

(assert (=> b!658310 m!924021))

(declare-fun m!924023 () Bool)

(assert (=> b!658314 m!924023))

(assert (=> b!658315 m!924017))

(declare-fun m!924025 () Bool)

(assert (=> start!64242 m!924025))

(declare-fun m!924027 () Bool)

(assert (=> start!64242 m!924027))

(declare-fun m!924029 () Bool)

(assert (=> b!658313 m!924029))

(declare-fun m!924031 () Bool)

(assert (=> b!658312 m!924031))

(declare-fun m!924033 () Bool)

(assert (=> b!658311 m!924033))

(check-sat (not b!658313) (not b!658310) (not b!658312) (not b!658309) (not b!658315) (not b!658311) (not start!64242) (not b!658314))
(check-sat)

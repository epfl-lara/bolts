; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64398 () Bool)

(assert start!64398)

(declare-fun b!659132 () Bool)

(assert (=> b!659132 true))

(declare-fun res!292601 () Bool)

(declare-fun e!407585 () Bool)

(assert (=> start!64398 (=> (not res!292601) (not e!407585))))

(declare-fun from!502 () Int)

(assert (=> start!64398 (= res!292601 (>= from!502 0))))

(assert (=> start!64398 e!407585))

(assert (=> start!64398 true))

(declare-datatypes ((List!7108 0))(
  ( (Nil!7094) (Cons!7094 (h!12495 Int) (t!86087 List!7108)) )
))
(declare-datatypes ((IArray!4961 0))(
  ( (IArray!4962 (innerList!2538 List!7108)) )
))
(declare-datatypes ((Conc!2480 0))(
  ( (Node!2480 (left!5725 Conc!2480) (right!6055 Conc!2480) (csize!5190 Int) (cheight!2691 Int)) (Leaf!3708 (xs!5129 IArray!4961) (csize!5191 Int)) (Empty!2480) )
))
(declare-datatypes ((BalanceConc!4972 0))(
  ( (BalanceConc!4973 (c!118654 Conc!2480)) )
))
(declare-fun acc!218 () BalanceConc!4972)

(declare-fun e!407583 () Bool)

(declare-fun inv!9040 (BalanceConc!4972) Bool)

(assert (=> start!64398 (and (inv!9040 acc!218) e!407583)))

(declare-datatypes ((List!7109 0))(
  ( (Nil!7095) (Cons!7095 (h!12496 (_ BitVec 16)) (t!86088 List!7109)) )
))
(declare-datatypes ((TokenValue!1458 0))(
  ( (FloatLiteralValue!2916 (text!10651 List!7109)) (TokenValueExt!1457 (__x!5034 Int)) (Broken!7290 (value!45709 List!7109)) (Object!1471) (End!1458) (Def!1458) (Underscore!1458) (Match!1458) (Else!1458) (Error!1458) (Case!1458) (If!1458) (Extends!1458) (Abstract!1458) (Class!1458) (Val!1458) (DelimiterValue!2916 (del!1518 List!7109)) (KeywordValue!1464 (value!45710 List!7109)) (CommentValue!2916 (value!45711 List!7109)) (WhitespaceValue!2916 (value!45712 List!7109)) (IndentationValue!1458 (value!45713 List!7109)) (String!9027) (Int32!1458) (Broken!7291 (value!45714 List!7109)) (Boolean!1459) (Unit!12308) (OperatorValue!1461 (op!1518 List!7109)) (IdentifierValue!2916 (value!45715 List!7109)) (IdentifierValue!2917 (value!45716 List!7109)) (WhitespaceValue!2917 (value!45717 List!7109)) (True!2916) (False!2916) (Broken!7292 (value!45718 List!7109)) (Broken!7293 (value!45719 List!7109)) (True!2917) (RightBrace!1458) (RightBracket!1458) (Colon!1458) (Null!1458) (Comma!1458) (LeftBracket!1458) (False!2917) (LeftBrace!1458) (ImaginaryLiteralValue!1458 (text!10652 List!7109)) (StringLiteralValue!4374 (value!45720 List!7109)) (EOFValue!1458 (value!45721 List!7109)) (IdentValue!1458 (value!45722 List!7109)) (DelimiterValue!2917 (value!45723 List!7109)) (DedentValue!1458 (value!45724 List!7109)) (NewLineValue!1458 (value!45725 List!7109)) (IntegerValue!4374 (value!45726 (_ BitVec 32)) (text!10653 List!7109)) (IntegerValue!4375 (value!45727 Int) (text!10654 List!7109)) (Times!1458) (Or!1458) (Equal!1458) (Minus!1458) (Broken!7294 (value!45728 List!7109)) (And!1458) (Div!1458) (LessEqual!1458) (Mod!1458) (Concat!3217) (Not!1458) (Plus!1458) (SpaceValue!1458 (value!45729 List!7109)) (IntegerValue!4376 (value!45730 Int) (text!10655 List!7109)) (StringLiteralValue!4375 (text!10656 List!7109)) (FloatLiteralValue!2917 (text!10657 List!7109)) (BytesLiteralValue!1458 (value!45731 List!7109)) (CommentValue!2917 (value!45732 List!7109)) (StringLiteralValue!4376 (value!45733 List!7109)) (ErrorTokenValue!1458 (msg!1519 List!7109)) )
))
(declare-datatypes ((Regex!1759 0))(
  ( (ElementMatch!1759 (c!118655 (_ BitVec 16))) (Concat!3218 (regOne!4030 Regex!1759) (regTwo!4030 Regex!1759)) (EmptyExpr!1759) (Star!1759 (reg!2088 Regex!1759)) (EmptyLang!1759) (Union!1759 (regOne!4031 Regex!1759) (regTwo!4031 Regex!1759)) )
))
(declare-datatypes ((String!9028 0))(
  ( (String!9029 (value!45734 String)) )
))
(declare-datatypes ((IArray!4963 0))(
  ( (IArray!4964 (innerList!2539 List!7109)) )
))
(declare-datatypes ((Conc!2481 0))(
  ( (Node!2481 (left!5726 Conc!2481) (right!6056 Conc!2481) (csize!5192 Int) (cheight!2692 Int)) (Leaf!3709 (xs!5130 IArray!4963) (csize!5193 Int)) (Empty!2481) )
))
(declare-datatypes ((BalanceConc!4974 0))(
  ( (BalanceConc!4975 (c!118656 Conc!2481)) )
))
(declare-datatypes ((TokenValueInjection!2668 0))(
  ( (TokenValueInjection!2669 (toValue!2365 Int) (toChars!2224 Int)) )
))
(declare-datatypes ((Rule!2648 0))(
  ( (Rule!2649 (regex!1424 Regex!1759) (tag!1686 String!9028) (isSeparator!1424 Bool) (transformation!1424 TokenValueInjection!2668)) )
))
(declare-datatypes ((Token!2570 0))(
  ( (Token!2571 (value!45735 TokenValue!1458) (rule!2219 Rule!2648) (size!5642 Int) (originalCharacters!1456 List!7109)) )
))
(declare-datatypes ((List!7110 0))(
  ( (Nil!7096) (Cons!7096 (h!12497 Token!2570) (t!86089 List!7110)) )
))
(declare-datatypes ((IArray!4965 0))(
  ( (IArray!4966 (innerList!2540 List!7110)) )
))
(declare-datatypes ((Conc!2482 0))(
  ( (Node!2482 (left!5727 Conc!2482) (right!6057 Conc!2482) (csize!5194 Int) (cheight!2693 Int)) (Leaf!3710 (xs!5131 IArray!4965) (csize!5195 Int)) (Empty!2482) )
))
(declare-datatypes ((BalanceConc!4976 0))(
  ( (BalanceConc!4977 (c!118657 Conc!2482)) )
))
(declare-fun ts!14 () BalanceConc!4976)

(declare-fun e!407582 () Bool)

(declare-fun inv!9041 (BalanceConc!4976) Bool)

(assert (=> start!64398 (and (inv!9041 ts!14) e!407582)))

(declare-fun b!659128 () Bool)

(declare-fun e!407584 () Bool)

(declare-fun lambda!20393 () Int)

(declare-fun forall!1886 (BalanceConc!4972 Int) Bool)

(assert (=> b!659128 (= e!407584 (not (forall!1886 acc!218 lambda!20393)))))

(declare-fun b!659129 () Bool)

(declare-fun tp!200935 () Bool)

(declare-fun inv!9042 (Conc!2480) Bool)

(assert (=> b!659129 (= e!407583 (and (inv!9042 (c!118654 acc!218)) tp!200935))))

(declare-fun b!659130 () Bool)

(assert (=> b!659130 (= e!407585 e!407584)))

(declare-fun res!292600 () Bool)

(assert (=> b!659130 (=> (not res!292600) (not e!407584))))

(declare-fun size!101 () Int)

(declare-fun lt!280462 () Int)

(assert (=> b!659130 (= res!292600 (and (<= from!502 lt!280462) (= lt!280462 size!101)))))

(declare-fun size!5643 (BalanceConc!4976) Int)

(assert (=> b!659130 (= lt!280462 (size!5643 ts!14))))

(declare-fun b!659131 () Bool)

(declare-fun tp!200934 () Bool)

(declare-fun inv!9043 (Conc!2482) Bool)

(assert (=> b!659131 (= e!407582 (and (inv!9043 (c!118657 ts!14)) tp!200934))))

(declare-fun res!292602 () Bool)

(assert (=> b!659132 (=> (not res!292602) (not e!407584))))

(assert (=> b!659132 (= res!292602 (forall!1886 acc!218 lambda!20393))))

(declare-fun b!659133 () Bool)

(declare-fun res!292599 () Bool)

(assert (=> b!659133 (=> (not res!292599) (not e!407584))))

(assert (=> b!659133 (= res!292599 (>= from!502 lt!280462))))

(assert (= (and start!64398 res!292601) b!659130))

(assert (= (and b!659130 res!292600) b!659132))

(assert (= (and b!659132 res!292602) b!659133))

(assert (= (and b!659133 res!292599) b!659128))

(assert (= start!64398 b!659129))

(assert (= start!64398 b!659131))

(declare-fun m!924811 () Bool)

(assert (=> b!659128 m!924811))

(declare-fun m!924813 () Bool)

(assert (=> start!64398 m!924813))

(declare-fun m!924815 () Bool)

(assert (=> start!64398 m!924815))

(declare-fun m!924817 () Bool)

(assert (=> b!659130 m!924817))

(declare-fun m!924819 () Bool)

(assert (=> b!659131 m!924819))

(assert (=> b!659132 m!924811))

(declare-fun m!924821 () Bool)

(assert (=> b!659129 m!924821))

(check-sat (not start!64398) (not b!659130) (not b!659132) (not b!659129) (not b!659128) (not b!659131))
(check-sat)

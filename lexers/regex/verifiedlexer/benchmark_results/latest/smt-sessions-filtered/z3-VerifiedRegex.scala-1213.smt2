; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63900 () Bool)

(assert start!63900)

(declare-fun b!656341 () Bool)

(assert (=> b!656341 true))

(declare-fun b!656338 () Bool)

(declare-fun e!405886 () Bool)

(declare-datatypes ((List!7024 0))(
  ( (Nil!7010) (Cons!7010 (h!12411 (_ BitVec 16)) (t!85945 List!7024)) )
))
(declare-datatypes ((TokenValue!1430 0))(
  ( (FloatLiteralValue!2860 (text!10455 List!7024)) (TokenValueExt!1429 (__x!5006 Int)) (Broken!7150 (value!44911 List!7024)) (Object!1443) (End!1430) (Def!1430) (Underscore!1430) (Match!1430) (Else!1430) (Error!1430) (Case!1430) (If!1430) (Extends!1430) (Abstract!1430) (Class!1430) (Val!1430) (DelimiterValue!2860 (del!1490 List!7024)) (KeywordValue!1436 (value!44912 List!7024)) (CommentValue!2860 (value!44913 List!7024)) (WhitespaceValue!2860 (value!44914 List!7024)) (IndentationValue!1430 (value!44915 List!7024)) (String!8887) (Int32!1430) (Broken!7151 (value!44916 List!7024)) (Boolean!1431) (Unit!12260) (OperatorValue!1433 (op!1490 List!7024)) (IdentifierValue!2860 (value!44917 List!7024)) (IdentifierValue!2861 (value!44918 List!7024)) (WhitespaceValue!2861 (value!44919 List!7024)) (True!2860) (False!2860) (Broken!7152 (value!44920 List!7024)) (Broken!7153 (value!44921 List!7024)) (True!2861) (RightBrace!1430) (RightBracket!1430) (Colon!1430) (Null!1430) (Comma!1430) (LeftBracket!1430) (False!2861) (LeftBrace!1430) (ImaginaryLiteralValue!1430 (text!10456 List!7024)) (StringLiteralValue!4290 (value!44922 List!7024)) (EOFValue!1430 (value!44923 List!7024)) (IdentValue!1430 (value!44924 List!7024)) (DelimiterValue!2861 (value!44925 List!7024)) (DedentValue!1430 (value!44926 List!7024)) (NewLineValue!1430 (value!44927 List!7024)) (IntegerValue!4290 (value!44928 (_ BitVec 32)) (text!10457 List!7024)) (IntegerValue!4291 (value!44929 Int) (text!10458 List!7024)) (Times!1430) (Or!1430) (Equal!1430) (Minus!1430) (Broken!7154 (value!44930 List!7024)) (And!1430) (Div!1430) (LessEqual!1430) (Mod!1430) (Concat!3161) (Not!1430) (Plus!1430) (SpaceValue!1430 (value!44931 List!7024)) (IntegerValue!4292 (value!44932 Int) (text!10459 List!7024)) (StringLiteralValue!4291 (text!10460 List!7024)) (FloatLiteralValue!2861 (text!10461 List!7024)) (BytesLiteralValue!1430 (value!44933 List!7024)) (CommentValue!2861 (value!44934 List!7024)) (StringLiteralValue!4292 (value!44935 List!7024)) (ErrorTokenValue!1430 (msg!1491 List!7024)) )
))
(declare-datatypes ((Regex!1731 0))(
  ( (ElementMatch!1731 (c!118143 (_ BitVec 16))) (Concat!3162 (regOne!3974 Regex!1731) (regTwo!3974 Regex!1731)) (EmptyExpr!1731) (Star!1731 (reg!2060 Regex!1731)) (EmptyLang!1731) (Union!1731 (regOne!3975 Regex!1731) (regTwo!3975 Regex!1731)) )
))
(declare-datatypes ((String!8888 0))(
  ( (String!8889 (value!44936 String)) )
))
(declare-datatypes ((IArray!4793 0))(
  ( (IArray!4794 (innerList!2454 List!7024)) )
))
(declare-datatypes ((Conc!2396 0))(
  ( (Node!2396 (left!5571 Conc!2396) (right!5901 Conc!2396) (csize!5022 Int) (cheight!2607 Int)) (Leaf!3610 (xs!5037 IArray!4793) (csize!5023 Int)) (Empty!2396) )
))
(declare-datatypes ((BalanceConc!4804 0))(
  ( (BalanceConc!4805 (c!118144 Conc!2396)) )
))
(declare-datatypes ((TokenValueInjection!2612 0))(
  ( (TokenValueInjection!2613 (toValue!2337 Int) (toChars!2196 Int)) )
))
(declare-datatypes ((Rule!2592 0))(
  ( (Rule!2593 (regex!1396 Regex!1731) (tag!1658 String!8888) (isSeparator!1396 Bool) (transformation!1396 TokenValueInjection!2612)) )
))
(declare-datatypes ((Token!2514 0))(
  ( (Token!2515 (value!44937 TokenValue!1430) (rule!2191 Rule!2592) (size!5560 Int) (originalCharacters!1428 List!7024)) )
))
(declare-datatypes ((List!7025 0))(
  ( (Nil!7011) (Cons!7011 (h!12412 Token!2514) (t!85946 List!7025)) )
))
(declare-datatypes ((IArray!4795 0))(
  ( (IArray!4796 (innerList!2455 List!7025)) )
))
(declare-datatypes ((Conc!2397 0))(
  ( (Node!2397 (left!5572 Conc!2397) (right!5902 Conc!2397) (csize!5024 Int) (cheight!2608 Int)) (Leaf!3611 (xs!5038 IArray!4795) (csize!5025 Int)) (Empty!2397) )
))
(declare-datatypes ((BalanceConc!4806 0))(
  ( (BalanceConc!4807 (c!118145 Conc!2397)) )
))
(declare-fun ts!14 () BalanceConc!4806)

(declare-fun tp!200533 () Bool)

(declare-fun inv!8832 (Conc!2397) Bool)

(assert (=> b!656338 (= e!405886 (and (inv!8832 (c!118145 ts!14)) tp!200533))))

(declare-fun b!656339 () Bool)

(declare-fun e!405889 () Bool)

(declare-datatypes ((List!7026 0))(
  ( (Nil!7012) (Cons!7012 (h!12413 Int) (t!85947 List!7026)) )
))
(declare-datatypes ((IArray!4797 0))(
  ( (IArray!4798 (innerList!2456 List!7026)) )
))
(declare-datatypes ((Conc!2398 0))(
  ( (Node!2398 (left!5573 Conc!2398) (right!5903 Conc!2398) (csize!5026 Int) (cheight!2609 Int)) (Leaf!3612 (xs!5039 IArray!4797) (csize!5027 Int)) (Empty!2398) )
))
(declare-datatypes ((BalanceConc!4808 0))(
  ( (BalanceConc!4809 (c!118146 Conc!2398)) )
))
(declare-fun acc!218 () BalanceConc!4808)

(declare-fun tp!200532 () Bool)

(declare-fun inv!8833 (Conc!2398) Bool)

(assert (=> b!656339 (= e!405889 (and (inv!8833 (c!118146 acc!218)) tp!200532))))

(declare-fun b!656340 () Bool)

(declare-fun e!405887 () Bool)

(declare-fun from!502 () Int)

(declare-fun lt!279810 () Int)

(assert (=> b!656340 (= e!405887 (and (< from!502 lt!279810) (> 0 from!502)))))

(declare-fun res!291025 () Bool)

(declare-fun e!405888 () Bool)

(assert (=> start!63900 (=> (not res!291025) (not e!405888))))

(assert (=> start!63900 (= res!291025 (>= from!502 0))))

(assert (=> start!63900 e!405888))

(assert (=> start!63900 true))

(declare-fun inv!8834 (BalanceConc!4808) Bool)

(assert (=> start!63900 (and (inv!8834 acc!218) e!405889)))

(declare-fun inv!8835 (BalanceConc!4806) Bool)

(assert (=> start!63900 (and (inv!8835 ts!14) e!405886)))

(declare-fun res!291023 () Bool)

(assert (=> b!656341 (=> (not res!291023) (not e!405887))))

(declare-fun lambda!20229 () Int)

(declare-fun forall!1837 (BalanceConc!4808 Int) Bool)

(assert (=> b!656341 (= res!291023 (forall!1837 acc!218 lambda!20229))))

(declare-fun b!656342 () Bool)

(assert (=> b!656342 (= e!405888 e!405887)))

(declare-fun res!291024 () Bool)

(assert (=> b!656342 (=> (not res!291024) (not e!405887))))

(declare-fun size!101 () Int)

(assert (=> b!656342 (= res!291024 (and (<= from!502 lt!279810) (= lt!279810 size!101)))))

(declare-fun size!5561 (BalanceConc!4806) Int)

(assert (=> b!656342 (= lt!279810 (size!5561 ts!14))))

(assert (= (and start!63900 res!291025) b!656342))

(assert (= (and b!656342 res!291024) b!656341))

(assert (= (and b!656341 res!291023) b!656340))

(assert (= start!63900 b!656339))

(assert (= start!63900 b!656338))

(declare-fun m!922177 () Bool)

(assert (=> b!656342 m!922177))

(declare-fun m!922179 () Bool)

(assert (=> start!63900 m!922179))

(declare-fun m!922181 () Bool)

(assert (=> start!63900 m!922181))

(declare-fun m!922183 () Bool)

(assert (=> b!656339 m!922183))

(declare-fun m!922185 () Bool)

(assert (=> b!656338 m!922185))

(declare-fun m!922187 () Bool)

(assert (=> b!656341 m!922187))

(check-sat (not start!63900) (not b!656342) (not b!656338) (not b!656339) (not b!656341))
(check-sat)

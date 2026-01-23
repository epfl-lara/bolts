; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64066 () Bool)

(assert start!64066)

(declare-fun b!657186 () Bool)

(assert (=> b!657186 true))

(declare-fun b!657180 () Bool)

(declare-fun e!406420 () Bool)

(assert (=> b!657180 (= e!406420 false)))

(declare-datatypes ((List!7060 0))(
  ( (Nil!7046) (Cons!7046 (h!12447 Int) (t!85999 List!7060)) )
))
(declare-datatypes ((IArray!4865 0))(
  ( (IArray!4866 (innerList!2490 List!7060)) )
))
(declare-datatypes ((Conc!2432 0))(
  ( (Node!2432 (left!5637 Conc!2432) (right!5967 Conc!2432) (csize!5094 Int) (cheight!2643 Int)) (Leaf!3652 (xs!5073 IArray!4865) (csize!5095 Int)) (Empty!2432) )
))
(declare-datatypes ((BalanceConc!4876 0))(
  ( (BalanceConc!4877 (c!118272 Conc!2432)) )
))
(declare-fun lt!279986 () BalanceConc!4876)

(declare-fun acc!218 () BalanceConc!4876)

(declare-fun from!502 () Int)

(declare-fun append!245 (BalanceConc!4876 Int) BalanceConc!4876)

(assert (=> b!657180 (= lt!279986 (append!245 acc!218 from!502))))

(declare-fun b!657181 () Bool)

(declare-fun e!406423 () Bool)

(declare-datatypes ((List!7061 0))(
  ( (Nil!7047) (Cons!7047 (h!12448 (_ BitVec 16)) (t!86000 List!7061)) )
))
(declare-datatypes ((TokenValue!1442 0))(
  ( (FloatLiteralValue!2884 (text!10539 List!7061)) (TokenValueExt!1441 (__x!5018 Int)) (Broken!7210 (value!45253 List!7061)) (Object!1455) (End!1442) (Def!1442) (Underscore!1442) (Match!1442) (Else!1442) (Error!1442) (Case!1442) (If!1442) (Extends!1442) (Abstract!1442) (Class!1442) (Val!1442) (DelimiterValue!2884 (del!1502 List!7061)) (KeywordValue!1448 (value!45254 List!7061)) (CommentValue!2884 (value!45255 List!7061)) (WhitespaceValue!2884 (value!45256 List!7061)) (IndentationValue!1442 (value!45257 List!7061)) (String!8947) (Int32!1442) (Broken!7211 (value!45258 List!7061)) (Boolean!1443) (Unit!12282) (OperatorValue!1445 (op!1502 List!7061)) (IdentifierValue!2884 (value!45259 List!7061)) (IdentifierValue!2885 (value!45260 List!7061)) (WhitespaceValue!2885 (value!45261 List!7061)) (True!2884) (False!2884) (Broken!7212 (value!45262 List!7061)) (Broken!7213 (value!45263 List!7061)) (True!2885) (RightBrace!1442) (RightBracket!1442) (Colon!1442) (Null!1442) (Comma!1442) (LeftBracket!1442) (False!2885) (LeftBrace!1442) (ImaginaryLiteralValue!1442 (text!10540 List!7061)) (StringLiteralValue!4326 (value!45264 List!7061)) (EOFValue!1442 (value!45265 List!7061)) (IdentValue!1442 (value!45266 List!7061)) (DelimiterValue!2885 (value!45267 List!7061)) (DedentValue!1442 (value!45268 List!7061)) (NewLineValue!1442 (value!45269 List!7061)) (IntegerValue!4326 (value!45270 (_ BitVec 32)) (text!10541 List!7061)) (IntegerValue!4327 (value!45271 Int) (text!10542 List!7061)) (Times!1442) (Or!1442) (Equal!1442) (Minus!1442) (Broken!7214 (value!45272 List!7061)) (And!1442) (Div!1442) (LessEqual!1442) (Mod!1442) (Concat!3185) (Not!1442) (Plus!1442) (SpaceValue!1442 (value!45273 List!7061)) (IntegerValue!4328 (value!45274 Int) (text!10543 List!7061)) (StringLiteralValue!4327 (text!10544 List!7061)) (FloatLiteralValue!2885 (text!10545 List!7061)) (BytesLiteralValue!1442 (value!45275 List!7061)) (CommentValue!2885 (value!45276 List!7061)) (StringLiteralValue!4328 (value!45277 List!7061)) (ErrorTokenValue!1442 (msg!1503 List!7061)) )
))
(declare-datatypes ((Regex!1743 0))(
  ( (ElementMatch!1743 (c!118273 (_ BitVec 16))) (Concat!3186 (regOne!3998 Regex!1743) (regTwo!3998 Regex!1743)) (EmptyExpr!1743) (Star!1743 (reg!2072 Regex!1743)) (EmptyLang!1743) (Union!1743 (regOne!3999 Regex!1743) (regTwo!3999 Regex!1743)) )
))
(declare-datatypes ((String!8948 0))(
  ( (String!8949 (value!45278 String)) )
))
(declare-datatypes ((IArray!4867 0))(
  ( (IArray!4868 (innerList!2491 List!7061)) )
))
(declare-datatypes ((Conc!2433 0))(
  ( (Node!2433 (left!5638 Conc!2433) (right!5968 Conc!2433) (csize!5096 Int) (cheight!2644 Int)) (Leaf!3653 (xs!5074 IArray!4867) (csize!5097 Int)) (Empty!2433) )
))
(declare-datatypes ((BalanceConc!4878 0))(
  ( (BalanceConc!4879 (c!118274 Conc!2433)) )
))
(declare-datatypes ((TokenValueInjection!2636 0))(
  ( (TokenValueInjection!2637 (toValue!2349 Int) (toChars!2208 Int)) )
))
(declare-datatypes ((Rule!2616 0))(
  ( (Rule!2617 (regex!1408 Regex!1743) (tag!1670 String!8948) (isSeparator!1408 Bool) (transformation!1408 TokenValueInjection!2636)) )
))
(declare-datatypes ((Token!2538 0))(
  ( (Token!2539 (value!45279 TokenValue!1442) (rule!2203 Rule!2616) (size!5594 Int) (originalCharacters!1440 List!7061)) )
))
(declare-datatypes ((List!7062 0))(
  ( (Nil!7048) (Cons!7048 (h!12449 Token!2538) (t!86001 List!7062)) )
))
(declare-datatypes ((IArray!4869 0))(
  ( (IArray!4870 (innerList!2492 List!7062)) )
))
(declare-datatypes ((Conc!2434 0))(
  ( (Node!2434 (left!5639 Conc!2434) (right!5969 Conc!2434) (csize!5098 Int) (cheight!2645 Int)) (Leaf!3654 (xs!5075 IArray!4869) (csize!5099 Int)) (Empty!2434) )
))
(declare-datatypes ((BalanceConc!4880 0))(
  ( (BalanceConc!4881 (c!118275 Conc!2434)) )
))
(declare-fun ts!14 () BalanceConc!4880)

(declare-fun tp!200703 () Bool)

(declare-fun inv!8920 (Conc!2434) Bool)

(assert (=> b!657181 (= e!406423 (and (inv!8920 (c!118275 ts!14)) tp!200703))))

(declare-fun b!657182 () Bool)

(declare-fun e!406421 () Bool)

(declare-fun lt!279987 () Token!2538)

(declare-fun isKeywordValue!0 (Token!2538 TokenValue!1442) Bool)

(assert (=> b!657182 (= e!406421 (isKeywordValue!0 lt!279987 RightBrace!1442))))

(declare-fun b!657183 () Bool)

(declare-fun e!406425 () Bool)

(assert (=> b!657183 (= e!406425 e!406420)))

(declare-fun res!291514 () Bool)

(assert (=> b!657183 (=> (not res!291514) (not e!406420))))

(declare-fun lt!279990 () List!7060)

(declare-fun lambda!20305 () Int)

(declare-fun forall!1858 (BalanceConc!4876 Int) Bool)

(declare-fun ++!1882 (BalanceConc!4876 BalanceConc!4876) BalanceConc!4876)

(declare-fun seqFromList!1458 (List!7060) BalanceConc!4876)

(assert (=> b!657183 (= res!291514 (forall!1858 (++!1882 acc!218 (seqFromList!1458 lt!279990)) lambda!20305))))

(declare-datatypes ((Unit!12283 0))(
  ( (Unit!12284) )
))
(declare-fun lt!279989 () Unit!12283)

(declare-fun lemmaConcatPreservesForall!69 (List!7060 List!7060 Int) Unit!12283)

(declare-fun list!3007 (BalanceConc!4876) List!7060)

(assert (=> b!657183 (= lt!279989 (lemmaConcatPreservesForall!69 (list!3007 acc!218) lt!279990 lambda!20305))))

(assert (=> b!657183 (= lt!279990 (Cons!7046 from!502 Nil!7046))))

(declare-fun res!291515 () Bool)

(declare-fun e!406424 () Bool)

(assert (=> start!64066 (=> (not res!291515) (not e!406424))))

(assert (=> start!64066 (= res!291515 (>= from!502 0))))

(assert (=> start!64066 e!406424))

(assert (=> start!64066 true))

(declare-fun e!406419 () Bool)

(declare-fun inv!8921 (BalanceConc!4876) Bool)

(assert (=> start!64066 (and (inv!8921 acc!218) e!406419)))

(declare-fun inv!8922 (BalanceConc!4880) Bool)

(assert (=> start!64066 (and (inv!8922 ts!14) e!406423)))

(declare-fun b!657184 () Bool)

(declare-fun res!291513 () Bool)

(declare-fun e!406422 () Bool)

(assert (=> b!657184 (=> (not res!291513) (not e!406422))))

(declare-fun lt!279988 () Int)

(assert (=> b!657184 (= res!291513 (< from!502 lt!279988))))

(declare-fun b!657185 () Bool)

(assert (=> b!657185 (= e!406424 e!406422)))

(declare-fun res!291511 () Bool)

(assert (=> b!657185 (=> (not res!291511) (not e!406422))))

(declare-fun size!101 () Int)

(assert (=> b!657185 (= res!291511 (and (<= from!502 lt!279988) (= lt!279988 size!101)))))

(declare-fun size!5595 (BalanceConc!4880) Int)

(assert (=> b!657185 (= lt!279988 (size!5595 ts!14))))

(declare-fun res!291512 () Bool)

(assert (=> b!657186 (=> (not res!291512) (not e!406422))))

(assert (=> b!657186 (= res!291512 (forall!1858 acc!218 lambda!20305))))

(declare-fun b!657187 () Bool)

(declare-fun tp!200702 () Bool)

(declare-fun inv!8923 (Conc!2432) Bool)

(assert (=> b!657187 (= e!406419 (and (inv!8923 (c!118272 acc!218)) tp!200702))))

(declare-fun b!657188 () Bool)

(declare-fun res!291516 () Bool)

(assert (=> b!657188 (=> (not res!291516) (not e!406425))))

(assert (=> b!657188 (= res!291516 (forall!1858 acc!218 lambda!20305))))

(declare-fun b!657189 () Bool)

(assert (=> b!657189 (= e!406422 e!406425)))

(declare-fun res!291518 () Bool)

(assert (=> b!657189 (=> (not res!291518) (not e!406425))))

(assert (=> b!657189 (= res!291518 e!406421)))

(declare-fun res!291517 () Bool)

(assert (=> b!657189 (=> res!291517 e!406421)))

(assert (=> b!657189 (= res!291517 (isKeywordValue!0 lt!279987 LeftBrace!1442))))

(declare-fun apply!1697 (BalanceConc!4880 Int) Token!2538)

(assert (=> b!657189 (= lt!279987 (apply!1697 ts!14 from!502))))

(assert (= (and start!64066 res!291515) b!657185))

(assert (= (and b!657185 res!291511) b!657186))

(assert (= (and b!657186 res!291512) b!657184))

(assert (= (and b!657184 res!291513) b!657189))

(assert (= (and b!657189 (not res!291517)) b!657182))

(assert (= (and b!657189 res!291518) b!657188))

(assert (= (and b!657188 res!291516) b!657183))

(assert (= (and b!657183 res!291514) b!657180))

(assert (= start!64066 b!657187))

(assert (= start!64066 b!657181))

(declare-fun m!922895 () Bool)

(assert (=> start!64066 m!922895))

(declare-fun m!922897 () Bool)

(assert (=> start!64066 m!922897))

(declare-fun m!922899 () Bool)

(assert (=> b!657182 m!922899))

(declare-fun m!922901 () Bool)

(assert (=> b!657187 m!922901))

(declare-fun m!922903 () Bool)

(assert (=> b!657186 m!922903))

(declare-fun m!922905 () Bool)

(assert (=> b!657183 m!922905))

(declare-fun m!922907 () Bool)

(assert (=> b!657183 m!922907))

(declare-fun m!922909 () Bool)

(assert (=> b!657183 m!922909))

(assert (=> b!657183 m!922905))

(declare-fun m!922911 () Bool)

(assert (=> b!657183 m!922911))

(assert (=> b!657183 m!922907))

(assert (=> b!657183 m!922909))

(declare-fun m!922913 () Bool)

(assert (=> b!657183 m!922913))

(declare-fun m!922915 () Bool)

(assert (=> b!657180 m!922915))

(declare-fun m!922917 () Bool)

(assert (=> b!657181 m!922917))

(assert (=> b!657188 m!922903))

(declare-fun m!922919 () Bool)

(assert (=> b!657189 m!922919))

(declare-fun m!922921 () Bool)

(assert (=> b!657189 m!922921))

(declare-fun m!922923 () Bool)

(assert (=> b!657185 m!922923))

(check-sat (not b!657182) (not b!657189) (not b!657183) (not b!657180) (not b!657188) (not start!64066) (not b!657186) (not b!657181) (not b!657187) (not b!657185))
(check-sat)

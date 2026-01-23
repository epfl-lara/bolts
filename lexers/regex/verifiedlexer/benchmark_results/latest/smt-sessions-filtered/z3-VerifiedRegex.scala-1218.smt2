; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64062 () Bool)

(assert start!64062)

(declare-fun b!657125 () Bool)

(assert (=> b!657125 true))

(declare-fun b!657116 () Bool)

(declare-fun res!291469 () Bool)

(declare-fun e!406378 () Bool)

(assert (=> b!657116 (=> (not res!291469) (not e!406378))))

(declare-fun from!502 () Int)

(declare-fun lt!279960 () Int)

(assert (=> b!657116 (= res!291469 (< from!502 lt!279960))))

(declare-fun b!657117 () Bool)

(declare-fun e!406382 () Bool)

(declare-fun e!406377 () Bool)

(assert (=> b!657117 (= e!406382 e!406377)))

(declare-fun res!291465 () Bool)

(assert (=> b!657117 (=> (not res!291465) (not e!406377))))

(declare-datatypes ((List!7054 0))(
  ( (Nil!7040) (Cons!7040 (h!12441 Int) (t!85993 List!7054)) )
))
(declare-datatypes ((IArray!4853 0))(
  ( (IArray!4854 (innerList!2484 List!7054)) )
))
(declare-datatypes ((Conc!2426 0))(
  ( (Node!2426 (left!5626 Conc!2426) (right!5956 Conc!2426) (csize!5082 Int) (cheight!2637 Int)) (Leaf!3645 (xs!5067 IArray!4853) (csize!5083 Int)) (Empty!2426) )
))
(declare-datatypes ((BalanceConc!4864 0))(
  ( (BalanceConc!4865 (c!118262 Conc!2426)) )
))
(declare-fun acc!218 () BalanceConc!4864)

(declare-fun lambda!20287 () Int)

(declare-fun lt!279957 () List!7054)

(declare-fun forall!1856 (BalanceConc!4864 Int) Bool)

(declare-fun ++!1880 (BalanceConc!4864 BalanceConc!4864) BalanceConc!4864)

(declare-fun seqFromList!1456 (List!7054) BalanceConc!4864)

(assert (=> b!657117 (= res!291465 (forall!1856 (++!1880 acc!218 (seqFromList!1456 lt!279957)) lambda!20287))))

(declare-datatypes ((Unit!12276 0))(
  ( (Unit!12277) )
))
(declare-fun lt!279956 () Unit!12276)

(declare-fun lemmaConcatPreservesForall!67 (List!7054 List!7054 Int) Unit!12276)

(declare-fun list!3005 (BalanceConc!4864) List!7054)

(assert (=> b!657117 (= lt!279956 (lemmaConcatPreservesForall!67 (list!3005 acc!218) lt!279957 lambda!20287))))

(assert (=> b!657117 (= lt!279957 (Cons!7040 from!502 Nil!7040))))

(declare-fun b!657118 () Bool)

(assert (=> b!657118 (= e!406378 e!406382)))

(declare-fun res!291464 () Bool)

(assert (=> b!657118 (=> (not res!291464) (not e!406382))))

(declare-fun e!406379 () Bool)

(assert (=> b!657118 (= res!291464 e!406379)))

(declare-fun res!291466 () Bool)

(assert (=> b!657118 (=> res!291466 e!406379)))

(declare-datatypes ((List!7055 0))(
  ( (Nil!7041) (Cons!7041 (h!12442 (_ BitVec 16)) (t!85994 List!7055)) )
))
(declare-datatypes ((TokenValue!1440 0))(
  ( (FloatLiteralValue!2880 (text!10525 List!7055)) (TokenValueExt!1439 (__x!5016 Int)) (Broken!7200 (value!45196 List!7055)) (Object!1453) (End!1440) (Def!1440) (Underscore!1440) (Match!1440) (Else!1440) (Error!1440) (Case!1440) (If!1440) (Extends!1440) (Abstract!1440) (Class!1440) (Val!1440) (DelimiterValue!2880 (del!1500 List!7055)) (KeywordValue!1446 (value!45197 List!7055)) (CommentValue!2880 (value!45198 List!7055)) (WhitespaceValue!2880 (value!45199 List!7055)) (IndentationValue!1440 (value!45200 List!7055)) (String!8937) (Int32!1440) (Broken!7201 (value!45201 List!7055)) (Boolean!1441) (Unit!12278) (OperatorValue!1443 (op!1500 List!7055)) (IdentifierValue!2880 (value!45202 List!7055)) (IdentifierValue!2881 (value!45203 List!7055)) (WhitespaceValue!2881 (value!45204 List!7055)) (True!2880) (False!2880) (Broken!7202 (value!45205 List!7055)) (Broken!7203 (value!45206 List!7055)) (True!2881) (RightBrace!1440) (RightBracket!1440) (Colon!1440) (Null!1440) (Comma!1440) (LeftBracket!1440) (False!2881) (LeftBrace!1440) (ImaginaryLiteralValue!1440 (text!10526 List!7055)) (StringLiteralValue!4320 (value!45207 List!7055)) (EOFValue!1440 (value!45208 List!7055)) (IdentValue!1440 (value!45209 List!7055)) (DelimiterValue!2881 (value!45210 List!7055)) (DedentValue!1440 (value!45211 List!7055)) (NewLineValue!1440 (value!45212 List!7055)) (IntegerValue!4320 (value!45213 (_ BitVec 32)) (text!10527 List!7055)) (IntegerValue!4321 (value!45214 Int) (text!10528 List!7055)) (Times!1440) (Or!1440) (Equal!1440) (Minus!1440) (Broken!7204 (value!45215 List!7055)) (And!1440) (Div!1440) (LessEqual!1440) (Mod!1440) (Concat!3181) (Not!1440) (Plus!1440) (SpaceValue!1440 (value!45216 List!7055)) (IntegerValue!4322 (value!45217 Int) (text!10529 List!7055)) (StringLiteralValue!4321 (text!10530 List!7055)) (FloatLiteralValue!2881 (text!10531 List!7055)) (BytesLiteralValue!1440 (value!45218 List!7055)) (CommentValue!2881 (value!45219 List!7055)) (StringLiteralValue!4322 (value!45220 List!7055)) (ErrorTokenValue!1440 (msg!1501 List!7055)) )
))
(declare-datatypes ((Regex!1741 0))(
  ( (ElementMatch!1741 (c!118263 (_ BitVec 16))) (Concat!3182 (regOne!3994 Regex!1741) (regTwo!3994 Regex!1741)) (EmptyExpr!1741) (Star!1741 (reg!2070 Regex!1741)) (EmptyLang!1741) (Union!1741 (regOne!3995 Regex!1741) (regTwo!3995 Regex!1741)) )
))
(declare-datatypes ((String!8938 0))(
  ( (String!8939 (value!45221 String)) )
))
(declare-datatypes ((IArray!4855 0))(
  ( (IArray!4856 (innerList!2485 List!7055)) )
))
(declare-datatypes ((Conc!2427 0))(
  ( (Node!2427 (left!5627 Conc!2427) (right!5957 Conc!2427) (csize!5084 Int) (cheight!2638 Int)) (Leaf!3646 (xs!5068 IArray!4855) (csize!5085 Int)) (Empty!2427) )
))
(declare-datatypes ((BalanceConc!4866 0))(
  ( (BalanceConc!4867 (c!118264 Conc!2427)) )
))
(declare-datatypes ((TokenValueInjection!2632 0))(
  ( (TokenValueInjection!2633 (toValue!2347 Int) (toChars!2206 Int)) )
))
(declare-datatypes ((Rule!2612 0))(
  ( (Rule!2613 (regex!1406 Regex!1741) (tag!1668 String!8938) (isSeparator!1406 Bool) (transformation!1406 TokenValueInjection!2632)) )
))
(declare-datatypes ((Token!2534 0))(
  ( (Token!2535 (value!45222 TokenValue!1440) (rule!2201 Rule!2612) (size!5590 Int) (originalCharacters!1438 List!7055)) )
))
(declare-fun lt!279958 () Token!2534)

(declare-fun isKeywordValue!0 (Token!2534 TokenValue!1440) Bool)

(assert (=> b!657118 (= res!291466 (isKeywordValue!0 lt!279958 LeftBrace!1440))))

(declare-datatypes ((List!7056 0))(
  ( (Nil!7042) (Cons!7042 (h!12443 Token!2534) (t!85995 List!7056)) )
))
(declare-datatypes ((IArray!4857 0))(
  ( (IArray!4858 (innerList!2486 List!7056)) )
))
(declare-datatypes ((Conc!2428 0))(
  ( (Node!2428 (left!5628 Conc!2428) (right!5958 Conc!2428) (csize!5086 Int) (cheight!2639 Int)) (Leaf!3647 (xs!5069 IArray!4857) (csize!5087 Int)) (Empty!2428) )
))
(declare-datatypes ((BalanceConc!4868 0))(
  ( (BalanceConc!4869 (c!118265 Conc!2428)) )
))
(declare-fun ts!14 () BalanceConc!4868)

(declare-fun apply!1695 (BalanceConc!4868 Int) Token!2534)

(assert (=> b!657118 (= lt!279958 (apply!1695 ts!14 from!502))))

(declare-fun b!657119 () Bool)

(assert (=> b!657119 (= e!406377 (or (< (+ 1 from!502) 0) (> (+ 1 from!502) lt!279960)))))

(declare-fun lt!279959 () BalanceConc!4864)

(declare-fun append!243 (BalanceConc!4864 Int) BalanceConc!4864)

(assert (=> b!657119 (= lt!279959 (append!243 acc!218 from!502))))

(declare-fun b!657121 () Bool)

(declare-fun res!291470 () Bool)

(assert (=> b!657121 (=> (not res!291470) (not e!406382))))

(assert (=> b!657121 (= res!291470 (forall!1856 acc!218 lambda!20287))))

(declare-fun b!657122 () Bool)

(declare-fun e!406381 () Bool)

(declare-fun tp!200691 () Bool)

(declare-fun inv!8909 (Conc!2428) Bool)

(assert (=> b!657122 (= e!406381 (and (inv!8909 (c!118265 ts!14)) tp!200691))))

(declare-fun b!657123 () Bool)

(assert (=> b!657123 (= e!406379 (isKeywordValue!0 lt!279958 RightBrace!1440))))

(declare-fun b!657124 () Bool)

(declare-fun e!406380 () Bool)

(declare-fun tp!200690 () Bool)

(declare-fun inv!8910 (Conc!2426) Bool)

(assert (=> b!657124 (= e!406380 (and (inv!8910 (c!118262 acc!218)) tp!200690))))

(declare-fun res!291468 () Bool)

(assert (=> b!657125 (=> (not res!291468) (not e!406378))))

(assert (=> b!657125 (= res!291468 (forall!1856 acc!218 lambda!20287))))

(declare-fun b!657120 () Bool)

(declare-fun e!406383 () Bool)

(assert (=> b!657120 (= e!406383 e!406378)))

(declare-fun res!291463 () Bool)

(assert (=> b!657120 (=> (not res!291463) (not e!406378))))

(declare-fun size!101 () Int)

(assert (=> b!657120 (= res!291463 (and (<= from!502 lt!279960) (= lt!279960 size!101)))))

(declare-fun size!5591 (BalanceConc!4868) Int)

(assert (=> b!657120 (= lt!279960 (size!5591 ts!14))))

(declare-fun res!291467 () Bool)

(assert (=> start!64062 (=> (not res!291467) (not e!406383))))

(assert (=> start!64062 (= res!291467 (>= from!502 0))))

(assert (=> start!64062 e!406383))

(assert (=> start!64062 true))

(declare-fun inv!8911 (BalanceConc!4864) Bool)

(assert (=> start!64062 (and (inv!8911 acc!218) e!406380)))

(declare-fun inv!8912 (BalanceConc!4868) Bool)

(assert (=> start!64062 (and (inv!8912 ts!14) e!406381)))

(assert (= (and start!64062 res!291467) b!657120))

(assert (= (and b!657120 res!291463) b!657125))

(assert (= (and b!657125 res!291468) b!657116))

(assert (= (and b!657116 res!291469) b!657118))

(assert (= (and b!657118 (not res!291466)) b!657123))

(assert (= (and b!657118 res!291464) b!657121))

(assert (= (and b!657121 res!291470) b!657117))

(assert (= (and b!657117 res!291465) b!657119))

(assert (= start!64062 b!657124))

(assert (= start!64062 b!657122))

(declare-fun m!922835 () Bool)

(assert (=> b!657124 m!922835))

(declare-fun m!922837 () Bool)

(assert (=> b!657125 m!922837))

(declare-fun m!922839 () Bool)

(assert (=> b!657119 m!922839))

(declare-fun m!922841 () Bool)

(assert (=> b!657123 m!922841))

(declare-fun m!922843 () Bool)

(assert (=> start!64062 m!922843))

(declare-fun m!922845 () Bool)

(assert (=> start!64062 m!922845))

(declare-fun m!922847 () Bool)

(assert (=> b!657120 m!922847))

(declare-fun m!922849 () Bool)

(assert (=> b!657117 m!922849))

(declare-fun m!922851 () Bool)

(assert (=> b!657117 m!922851))

(assert (=> b!657117 m!922849))

(declare-fun m!922853 () Bool)

(assert (=> b!657117 m!922853))

(assert (=> b!657117 m!922851))

(declare-fun m!922855 () Bool)

(assert (=> b!657117 m!922855))

(assert (=> b!657117 m!922855))

(declare-fun m!922857 () Bool)

(assert (=> b!657117 m!922857))

(assert (=> b!657121 m!922837))

(declare-fun m!922859 () Bool)

(assert (=> b!657118 m!922859))

(declare-fun m!922861 () Bool)

(assert (=> b!657118 m!922861))

(declare-fun m!922863 () Bool)

(assert (=> b!657122 m!922863))

(check-sat (not b!657118) (not start!64062) (not b!657119) (not b!657124) (not b!657117) (not b!657121) (not b!657120) (not b!657123) (not b!657125) (not b!657122))
(check-sat)

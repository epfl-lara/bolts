; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64230 () Bool)

(assert start!64230)

(declare-fun b!658150 () Bool)

(assert (=> b!658150 true))

(declare-fun b!658146 () Bool)

(declare-fun e!406988 () Bool)

(declare-fun e!406987 () Bool)

(assert (=> b!658146 (= e!406988 e!406987)))

(declare-fun res!292040 () Bool)

(assert (=> b!658146 (=> (not res!292040) (not e!406987))))

(declare-fun size!101 () Int)

(declare-fun from!502 () Int)

(declare-fun lt!280273 () Int)

(assert (=> b!658146 (= res!292040 (and (<= from!502 lt!280273) (= lt!280273 size!101)))))

(declare-datatypes ((List!7072 0))(
  ( (Nil!7058) (Cons!7058 (h!12459 (_ BitVec 16)) (t!86033 List!7072)) )
))
(declare-datatypes ((TokenValue!1446 0))(
  ( (FloatLiteralValue!2892 (text!10567 List!7072)) (TokenValueExt!1445 (__x!5022 Int)) (Broken!7230 (value!45367 List!7072)) (Object!1459) (End!1446) (Def!1446) (Underscore!1446) (Match!1446) (Else!1446) (Error!1446) (Case!1446) (If!1446) (Extends!1446) (Abstract!1446) (Class!1446) (Val!1446) (DelimiterValue!2892 (del!1506 List!7072)) (KeywordValue!1452 (value!45368 List!7072)) (CommentValue!2892 (value!45369 List!7072)) (WhitespaceValue!2892 (value!45370 List!7072)) (IndentationValue!1446 (value!45371 List!7072)) (String!8967) (Int32!1446) (Broken!7231 (value!45372 List!7072)) (Boolean!1447) (Unit!12292) (OperatorValue!1449 (op!1506 List!7072)) (IdentifierValue!2892 (value!45373 List!7072)) (IdentifierValue!2893 (value!45374 List!7072)) (WhitespaceValue!2893 (value!45375 List!7072)) (True!2892) (False!2892) (Broken!7232 (value!45376 List!7072)) (Broken!7233 (value!45377 List!7072)) (True!2893) (RightBrace!1446) (RightBracket!1446) (Colon!1446) (Null!1446) (Comma!1446) (LeftBracket!1446) (False!2893) (LeftBrace!1446) (ImaginaryLiteralValue!1446 (text!10568 List!7072)) (StringLiteralValue!4338 (value!45378 List!7072)) (EOFValue!1446 (value!45379 List!7072)) (IdentValue!1446 (value!45380 List!7072)) (DelimiterValue!2893 (value!45381 List!7072)) (DedentValue!1446 (value!45382 List!7072)) (NewLineValue!1446 (value!45383 List!7072)) (IntegerValue!4338 (value!45384 (_ BitVec 32)) (text!10569 List!7072)) (IntegerValue!4339 (value!45385 Int) (text!10570 List!7072)) (Times!1446) (Or!1446) (Equal!1446) (Minus!1446) (Broken!7234 (value!45386 List!7072)) (And!1446) (Div!1446) (LessEqual!1446) (Mod!1446) (Concat!3193) (Not!1446) (Plus!1446) (SpaceValue!1446 (value!45387 List!7072)) (IntegerValue!4340 (value!45388 Int) (text!10571 List!7072)) (StringLiteralValue!4339 (text!10572 List!7072)) (FloatLiteralValue!2893 (text!10573 List!7072)) (BytesLiteralValue!1446 (value!45389 List!7072)) (CommentValue!2893 (value!45390 List!7072)) (StringLiteralValue!4340 (value!45391 List!7072)) (ErrorTokenValue!1446 (msg!1507 List!7072)) )
))
(declare-datatypes ((Regex!1747 0))(
  ( (ElementMatch!1747 (c!118470 (_ BitVec 16))) (Concat!3194 (regOne!4006 Regex!1747) (regTwo!4006 Regex!1747)) (EmptyExpr!1747) (Star!1747 (reg!2076 Regex!1747)) (EmptyLang!1747) (Union!1747 (regOne!4007 Regex!1747) (regTwo!4007 Regex!1747)) )
))
(declare-datatypes ((String!8968 0))(
  ( (String!8969 (value!45392 String)) )
))
(declare-datatypes ((IArray!4889 0))(
  ( (IArray!4890 (innerList!2502 List!7072)) )
))
(declare-datatypes ((Conc!2444 0))(
  ( (Node!2444 (left!5659 Conc!2444) (right!5989 Conc!2444) (csize!5118 Int) (cheight!2655 Int)) (Leaf!3666 (xs!5089 IArray!4889) (csize!5119 Int)) (Empty!2444) )
))
(declare-datatypes ((BalanceConc!4900 0))(
  ( (BalanceConc!4901 (c!118471 Conc!2444)) )
))
(declare-datatypes ((TokenValueInjection!2644 0))(
  ( (TokenValueInjection!2645 (toValue!2353 Int) (toChars!2212 Int)) )
))
(declare-datatypes ((Rule!2624 0))(
  ( (Rule!2625 (regex!1412 Regex!1747) (tag!1674 String!8968) (isSeparator!1412 Bool) (transformation!1412 TokenValueInjection!2644)) )
))
(declare-datatypes ((Token!2546 0))(
  ( (Token!2547 (value!45393 TokenValue!1446) (rule!2207 Rule!2624) (size!5610 Int) (originalCharacters!1444 List!7072)) )
))
(declare-datatypes ((List!7073 0))(
  ( (Nil!7059) (Cons!7059 (h!12460 Token!2546) (t!86034 List!7073)) )
))
(declare-datatypes ((IArray!4891 0))(
  ( (IArray!4892 (innerList!2503 List!7073)) )
))
(declare-datatypes ((Conc!2445 0))(
  ( (Node!2445 (left!5660 Conc!2445) (right!5990 Conc!2445) (csize!5120 Int) (cheight!2656 Int)) (Leaf!3667 (xs!5090 IArray!4891) (csize!5121 Int)) (Empty!2445) )
))
(declare-datatypes ((BalanceConc!4902 0))(
  ( (BalanceConc!4903 (c!118472 Conc!2445)) )
))
(declare-fun ts!14 () BalanceConc!4902)

(declare-fun size!5611 (BalanceConc!4902) Int)

(assert (=> b!658146 (= lt!280273 (size!5611 ts!14))))

(declare-fun b!658147 () Bool)

(declare-fun e!406990 () Bool)

(declare-datatypes ((List!7074 0))(
  ( (Nil!7060) (Cons!7060 (h!12461 Int) (t!86035 List!7074)) )
))
(declare-datatypes ((IArray!4893 0))(
  ( (IArray!4894 (innerList!2504 List!7074)) )
))
(declare-datatypes ((Conc!2446 0))(
  ( (Node!2446 (left!5661 Conc!2446) (right!5991 Conc!2446) (csize!5122 Int) (cheight!2657 Int)) (Leaf!3668 (xs!5091 IArray!4893) (csize!5123 Int)) (Empty!2446) )
))
(declare-datatypes ((BalanceConc!4904 0))(
  ( (BalanceConc!4905 (c!118473 Conc!2446)) )
))
(declare-fun acc!218 () BalanceConc!4904)

(declare-fun tp!200794 () Bool)

(declare-fun inv!8958 (Conc!2446) Bool)

(assert (=> b!658147 (= e!406990 (and (inv!8958 (c!118473 acc!218)) tp!200794))))

(declare-fun b!658149 () Bool)

(declare-fun res!292038 () Bool)

(assert (=> b!658149 (=> (not res!292038) (not e!406987))))

(assert (=> b!658149 (= res!292038 (< from!502 lt!280273))))

(declare-fun res!292037 () Bool)

(assert (=> start!64230 (=> (not res!292037) (not e!406988))))

(assert (=> start!64230 (= res!292037 (>= from!502 0))))

(assert (=> start!64230 e!406988))

(assert (=> start!64230 true))

(declare-fun inv!8959 (BalanceConc!4904) Bool)

(assert (=> start!64230 (and (inv!8959 acc!218) e!406990)))

(declare-fun e!406989 () Bool)

(declare-fun inv!8960 (BalanceConc!4902) Bool)

(assert (=> start!64230 (and (inv!8960 ts!14) e!406989)))

(declare-fun b!658148 () Bool)

(declare-fun e!406991 () Bool)

(assert (=> b!658148 (= e!406987 e!406991)))

(declare-fun res!292036 () Bool)

(assert (=> b!658148 (=> (not res!292036) (not e!406991))))

(declare-fun lt!280274 () Token!2546)

(declare-fun isKeywordValue!0 (Token!2546 TokenValue!1446) Bool)

(assert (=> b!658148 (= res!292036 (not (isKeywordValue!0 lt!280274 LeftBrace!1446)))))

(declare-fun apply!1707 (BalanceConc!4902 Int) Token!2546)

(assert (=> b!658148 (= lt!280274 (apply!1707 ts!14 from!502))))

(declare-fun res!292039 () Bool)

(assert (=> b!658150 (=> (not res!292039) (not e!406987))))

(declare-fun lambda!20333 () Int)

(declare-fun forall!1868 (BalanceConc!4904 Int) Bool)

(assert (=> b!658150 (= res!292039 (forall!1868 acc!218 lambda!20333))))

(declare-fun b!658151 () Bool)

(assert (=> b!658151 (= e!406991 (or (< (+ 1 from!502) 0) (> (+ 1 from!502) lt!280273)))))

(declare-fun b!658152 () Bool)

(declare-fun res!292035 () Bool)

(assert (=> b!658152 (=> (not res!292035) (not e!406991))))

(assert (=> b!658152 (= res!292035 (not (isKeywordValue!0 lt!280274 RightBrace!1446)))))

(declare-fun b!658153 () Bool)

(declare-fun tp!200795 () Bool)

(declare-fun inv!8961 (Conc!2445) Bool)

(assert (=> b!658153 (= e!406989 (and (inv!8961 (c!118472 ts!14)) tp!200795))))

(assert (= (and start!64230 res!292037) b!658146))

(assert (= (and b!658146 res!292040) b!658150))

(assert (= (and b!658150 res!292039) b!658149))

(assert (= (and b!658149 res!292038) b!658148))

(assert (= (and b!658148 res!292036) b!658152))

(assert (= (and b!658152 res!292035) b!658151))

(assert (= start!64230 b!658147))

(assert (= start!64230 b!658153))

(declare-fun m!923909 () Bool)

(assert (=> start!64230 m!923909))

(declare-fun m!923911 () Bool)

(assert (=> start!64230 m!923911))

(declare-fun m!923913 () Bool)

(assert (=> b!658146 m!923913))

(declare-fun m!923915 () Bool)

(assert (=> b!658147 m!923915))

(declare-fun m!923917 () Bool)

(assert (=> b!658153 m!923917))

(declare-fun m!923919 () Bool)

(assert (=> b!658152 m!923919))

(declare-fun m!923921 () Bool)

(assert (=> b!658148 m!923921))

(declare-fun m!923923 () Bool)

(assert (=> b!658148 m!923923))

(declare-fun m!923925 () Bool)

(assert (=> b!658150 m!923925))

(check-sat (not b!658153) (not start!64230) (not b!658150) (not b!658148) (not b!658152) (not b!658146) (not b!658147))
(check-sat)

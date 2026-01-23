; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64394 () Bool)

(assert start!64394)

(declare-fun b!659089 () Bool)

(assert (=> b!659089 true))

(declare-fun res!292576 () Bool)

(declare-fun e!407560 () Bool)

(assert (=> start!64394 (=> (not res!292576) (not e!407560))))

(declare-fun from!502 () Int)

(assert (=> start!64394 (= res!292576 (>= from!502 0))))

(assert (=> start!64394 e!407560))

(assert (=> start!64394 true))

(declare-datatypes ((List!7102 0))(
  ( (Nil!7088) (Cons!7088 (h!12489 Int) (t!86081 List!7102)) )
))
(declare-datatypes ((IArray!4949 0))(
  ( (IArray!4950 (innerList!2532 List!7102)) )
))
(declare-datatypes ((Conc!2474 0))(
  ( (Node!2474 (left!5714 Conc!2474) (right!6044 Conc!2474) (csize!5178 Int) (cheight!2685 Int)) (Leaf!3701 (xs!5123 IArray!4949) (csize!5179 Int)) (Empty!2474) )
))
(declare-datatypes ((BalanceConc!4960 0))(
  ( (BalanceConc!4961 (c!118646 Conc!2474)) )
))
(declare-fun acc!218 () BalanceConc!4960)

(declare-fun e!407558 () Bool)

(declare-fun inv!9029 (BalanceConc!4960) Bool)

(assert (=> start!64394 (and (inv!9029 acc!218) e!407558)))

(declare-datatypes ((List!7103 0))(
  ( (Nil!7089) (Cons!7089 (h!12490 (_ BitVec 16)) (t!86082 List!7103)) )
))
(declare-datatypes ((TokenValue!1456 0))(
  ( (FloatLiteralValue!2912 (text!10637 List!7103)) (TokenValueExt!1455 (__x!5032 Int)) (Broken!7280 (value!45652 List!7103)) (Object!1469) (End!1456) (Def!1456) (Underscore!1456) (Match!1456) (Else!1456) (Error!1456) (Case!1456) (If!1456) (Extends!1456) (Abstract!1456) (Class!1456) (Val!1456) (DelimiterValue!2912 (del!1516 List!7103)) (KeywordValue!1462 (value!45653 List!7103)) (CommentValue!2912 (value!45654 List!7103)) (WhitespaceValue!2912 (value!45655 List!7103)) (IndentationValue!1456 (value!45656 List!7103)) (String!9017) (Int32!1456) (Broken!7281 (value!45657 List!7103)) (Boolean!1457) (Unit!12306) (OperatorValue!1459 (op!1516 List!7103)) (IdentifierValue!2912 (value!45658 List!7103)) (IdentifierValue!2913 (value!45659 List!7103)) (WhitespaceValue!2913 (value!45660 List!7103)) (True!2912) (False!2912) (Broken!7282 (value!45661 List!7103)) (Broken!7283 (value!45662 List!7103)) (True!2913) (RightBrace!1456) (RightBracket!1456) (Colon!1456) (Null!1456) (Comma!1456) (LeftBracket!1456) (False!2913) (LeftBrace!1456) (ImaginaryLiteralValue!1456 (text!10638 List!7103)) (StringLiteralValue!4368 (value!45663 List!7103)) (EOFValue!1456 (value!45664 List!7103)) (IdentValue!1456 (value!45665 List!7103)) (DelimiterValue!2913 (value!45666 List!7103)) (DedentValue!1456 (value!45667 List!7103)) (NewLineValue!1456 (value!45668 List!7103)) (IntegerValue!4368 (value!45669 (_ BitVec 32)) (text!10639 List!7103)) (IntegerValue!4369 (value!45670 Int) (text!10640 List!7103)) (Times!1456) (Or!1456) (Equal!1456) (Minus!1456) (Broken!7284 (value!45671 List!7103)) (And!1456) (Div!1456) (LessEqual!1456) (Mod!1456) (Concat!3213) (Not!1456) (Plus!1456) (SpaceValue!1456 (value!45672 List!7103)) (IntegerValue!4370 (value!45673 Int) (text!10641 List!7103)) (StringLiteralValue!4369 (text!10642 List!7103)) (FloatLiteralValue!2913 (text!10643 List!7103)) (BytesLiteralValue!1456 (value!45674 List!7103)) (CommentValue!2913 (value!45675 List!7103)) (StringLiteralValue!4370 (value!45676 List!7103)) (ErrorTokenValue!1456 (msg!1517 List!7103)) )
))
(declare-datatypes ((Regex!1757 0))(
  ( (ElementMatch!1757 (c!118647 (_ BitVec 16))) (Concat!3214 (regOne!4026 Regex!1757) (regTwo!4026 Regex!1757)) (EmptyExpr!1757) (Star!1757 (reg!2086 Regex!1757)) (EmptyLang!1757) (Union!1757 (regOne!4027 Regex!1757) (regTwo!4027 Regex!1757)) )
))
(declare-datatypes ((String!9018 0))(
  ( (String!9019 (value!45677 String)) )
))
(declare-datatypes ((IArray!4951 0))(
  ( (IArray!4952 (innerList!2533 List!7103)) )
))
(declare-datatypes ((Conc!2475 0))(
  ( (Node!2475 (left!5715 Conc!2475) (right!6045 Conc!2475) (csize!5180 Int) (cheight!2686 Int)) (Leaf!3702 (xs!5124 IArray!4951) (csize!5181 Int)) (Empty!2475) )
))
(declare-datatypes ((BalanceConc!4962 0))(
  ( (BalanceConc!4963 (c!118648 Conc!2475)) )
))
(declare-datatypes ((TokenValueInjection!2664 0))(
  ( (TokenValueInjection!2665 (toValue!2363 Int) (toChars!2222 Int)) )
))
(declare-datatypes ((Rule!2644 0))(
  ( (Rule!2645 (regex!1422 Regex!1757) (tag!1684 String!9018) (isSeparator!1422 Bool) (transformation!1422 TokenValueInjection!2664)) )
))
(declare-datatypes ((Token!2566 0))(
  ( (Token!2567 (value!45678 TokenValue!1456) (rule!2217 Rule!2644) (size!5638 Int) (originalCharacters!1454 List!7103)) )
))
(declare-datatypes ((List!7104 0))(
  ( (Nil!7090) (Cons!7090 (h!12491 Token!2566) (t!86083 List!7104)) )
))
(declare-datatypes ((IArray!4953 0))(
  ( (IArray!4954 (innerList!2534 List!7104)) )
))
(declare-datatypes ((Conc!2476 0))(
  ( (Node!2476 (left!5716 Conc!2476) (right!6046 Conc!2476) (csize!5182 Int) (cheight!2687 Int)) (Leaf!3703 (xs!5125 IArray!4953) (csize!5183 Int)) (Empty!2476) )
))
(declare-datatypes ((BalanceConc!4964 0))(
  ( (BalanceConc!4965 (c!118649 Conc!2476)) )
))
(declare-fun ts!14 () BalanceConc!4964)

(declare-fun e!407561 () Bool)

(declare-fun inv!9030 (BalanceConc!4964) Bool)

(assert (=> start!64394 (and (inv!9030 ts!14) e!407561)))

(declare-fun res!292578 () Bool)

(declare-fun e!407559 () Bool)

(assert (=> b!659089 (=> (not res!292578) (not e!407559))))

(declare-fun lambda!20383 () Int)

(declare-fun forall!1884 (BalanceConc!4960 Int) Bool)

(assert (=> b!659089 (= res!292578 (forall!1884 acc!218 lambda!20383))))

(declare-fun b!659090 () Bool)

(declare-fun tp!200923 () Bool)

(declare-fun inv!9031 (Conc!2476) Bool)

(assert (=> b!659090 (= e!407561 (and (inv!9031 (c!118649 ts!14)) tp!200923))))

(declare-fun b!659091 () Bool)

(declare-fun lt!280456 () Int)

(assert (=> b!659091 (= e!407559 (< (- lt!280456 from!502) 0))))

(declare-fun b!659092 () Bool)

(declare-fun tp!200922 () Bool)

(declare-fun inv!9032 (Conc!2474) Bool)

(assert (=> b!659092 (= e!407558 (and (inv!9032 (c!118646 acc!218)) tp!200922))))

(declare-fun b!659093 () Bool)

(assert (=> b!659093 (= e!407560 e!407559)))

(declare-fun res!292577 () Bool)

(assert (=> b!659093 (=> (not res!292577) (not e!407559))))

(declare-fun size!101 () Int)

(assert (=> b!659093 (= res!292577 (and (<= from!502 lt!280456) (= lt!280456 size!101)))))

(declare-fun size!5639 (BalanceConc!4964) Int)

(assert (=> b!659093 (= lt!280456 (size!5639 ts!14))))

(assert (= (and start!64394 res!292576) b!659093))

(assert (= (and b!659093 res!292577) b!659089))

(assert (= (and b!659089 res!292578) b!659091))

(assert (= start!64394 b!659092))

(assert (= start!64394 b!659090))

(declare-fun m!924787 () Bool)

(assert (=> b!659089 m!924787))

(declare-fun m!924789 () Bool)

(assert (=> b!659093 m!924789))

(declare-fun m!924791 () Bool)

(assert (=> start!64394 m!924791))

(declare-fun m!924793 () Bool)

(assert (=> start!64394 m!924793))

(declare-fun m!924795 () Bool)

(assert (=> b!659092 m!924795))

(declare-fun m!924797 () Bool)

(assert (=> b!659090 m!924797))

(check-sat (not b!659092) (not start!64394) (not b!659090) (not b!659089) (not b!659093))
(check-sat)

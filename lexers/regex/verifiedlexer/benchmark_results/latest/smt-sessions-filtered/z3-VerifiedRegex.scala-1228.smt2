; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64402 () Bool)

(assert start!64402)

(declare-fun b!659188 () Bool)

(assert (=> b!659188 true))

(declare-fun res!292649 () Bool)

(declare-fun e!407621 () Bool)

(assert (=> b!659188 (=> (not res!292649) (not e!407621))))

(declare-datatypes ((List!7114 0))(
  ( (Nil!7100) (Cons!7100 (h!12501 Int) (t!86093 List!7114)) )
))
(declare-datatypes ((IArray!4973 0))(
  ( (IArray!4974 (innerList!2544 List!7114)) )
))
(declare-datatypes ((Conc!2486 0))(
  ( (Node!2486 (left!5736 Conc!2486) (right!6066 Conc!2486) (csize!5202 Int) (cheight!2697 Int)) (Leaf!3715 (xs!5135 IArray!4973) (csize!5203 Int)) (Empty!2486) )
))
(declare-datatypes ((BalanceConc!4984 0))(
  ( (BalanceConc!4985 (c!118664 Conc!2486)) )
))
(declare-fun acc!218 () BalanceConc!4984)

(declare-fun lambda!20411 () Int)

(declare-fun forall!1888 (BalanceConc!4984 Int) Bool)

(assert (=> b!659188 (= res!292649 (forall!1888 acc!218 lambda!20411))))

(declare-fun b!659189 () Bool)

(declare-fun e!407627 () Bool)

(assert (=> b!659189 (= e!407627 e!407621)))

(declare-fun res!292647 () Bool)

(assert (=> b!659189 (=> (not res!292647) (not e!407621))))

(declare-fun size!101 () Int)

(declare-fun from!502 () Int)

(declare-fun lt!280489 () Int)

(assert (=> b!659189 (= res!292647 (and (<= from!502 lt!280489) (= lt!280489 size!101)))))

(declare-datatypes ((List!7115 0))(
  ( (Nil!7101) (Cons!7101 (h!12502 (_ BitVec 16)) (t!86094 List!7115)) )
))
(declare-datatypes ((TokenValue!1460 0))(
  ( (FloatLiteralValue!2920 (text!10665 List!7115)) (TokenValueExt!1459 (__x!5036 Int)) (Broken!7300 (value!45766 List!7115)) (Object!1473) (End!1460) (Def!1460) (Underscore!1460) (Match!1460) (Else!1460) (Error!1460) (Case!1460) (If!1460) (Extends!1460) (Abstract!1460) (Class!1460) (Val!1460) (DelimiterValue!2920 (del!1520 List!7115)) (KeywordValue!1466 (value!45767 List!7115)) (CommentValue!2920 (value!45768 List!7115)) (WhitespaceValue!2920 (value!45769 List!7115)) (IndentationValue!1460 (value!45770 List!7115)) (String!9037) (Int32!1460) (Broken!7301 (value!45771 List!7115)) (Boolean!1461) (Unit!12312) (OperatorValue!1463 (op!1520 List!7115)) (IdentifierValue!2920 (value!45772 List!7115)) (IdentifierValue!2921 (value!45773 List!7115)) (WhitespaceValue!2921 (value!45774 List!7115)) (True!2920) (False!2920) (Broken!7302 (value!45775 List!7115)) (Broken!7303 (value!45776 List!7115)) (True!2921) (RightBrace!1460) (RightBracket!1460) (Colon!1460) (Null!1460) (Comma!1460) (LeftBracket!1460) (False!2921) (LeftBrace!1460) (ImaginaryLiteralValue!1460 (text!10666 List!7115)) (StringLiteralValue!4380 (value!45777 List!7115)) (EOFValue!1460 (value!45778 List!7115)) (IdentValue!1460 (value!45779 List!7115)) (DelimiterValue!2921 (value!45780 List!7115)) (DedentValue!1460 (value!45781 List!7115)) (NewLineValue!1460 (value!45782 List!7115)) (IntegerValue!4380 (value!45783 (_ BitVec 32)) (text!10667 List!7115)) (IntegerValue!4381 (value!45784 Int) (text!10668 List!7115)) (Times!1460) (Or!1460) (Equal!1460) (Minus!1460) (Broken!7304 (value!45785 List!7115)) (And!1460) (Div!1460) (LessEqual!1460) (Mod!1460) (Concat!3221) (Not!1460) (Plus!1460) (SpaceValue!1460 (value!45786 List!7115)) (IntegerValue!4382 (value!45787 Int) (text!10669 List!7115)) (StringLiteralValue!4381 (text!10670 List!7115)) (FloatLiteralValue!2921 (text!10671 List!7115)) (BytesLiteralValue!1460 (value!45788 List!7115)) (CommentValue!2921 (value!45789 List!7115)) (StringLiteralValue!4382 (value!45790 List!7115)) (ErrorTokenValue!1460 (msg!1521 List!7115)) )
))
(declare-datatypes ((Regex!1761 0))(
  ( (ElementMatch!1761 (c!118665 (_ BitVec 16))) (Concat!3222 (regOne!4034 Regex!1761) (regTwo!4034 Regex!1761)) (EmptyExpr!1761) (Star!1761 (reg!2090 Regex!1761)) (EmptyLang!1761) (Union!1761 (regOne!4035 Regex!1761) (regTwo!4035 Regex!1761)) )
))
(declare-datatypes ((String!9038 0))(
  ( (String!9039 (value!45791 String)) )
))
(declare-datatypes ((IArray!4975 0))(
  ( (IArray!4976 (innerList!2545 List!7115)) )
))
(declare-datatypes ((Conc!2487 0))(
  ( (Node!2487 (left!5737 Conc!2487) (right!6067 Conc!2487) (csize!5204 Int) (cheight!2698 Int)) (Leaf!3716 (xs!5136 IArray!4975) (csize!5205 Int)) (Empty!2487) )
))
(declare-datatypes ((BalanceConc!4986 0))(
  ( (BalanceConc!4987 (c!118666 Conc!2487)) )
))
(declare-datatypes ((TokenValueInjection!2672 0))(
  ( (TokenValueInjection!2673 (toValue!2367 Int) (toChars!2226 Int)) )
))
(declare-datatypes ((Rule!2652 0))(
  ( (Rule!2653 (regex!1426 Regex!1761) (tag!1688 String!9038) (isSeparator!1426 Bool) (transformation!1426 TokenValueInjection!2672)) )
))
(declare-datatypes ((Token!2574 0))(
  ( (Token!2575 (value!45792 TokenValue!1460) (rule!2221 Rule!2652) (size!5646 Int) (originalCharacters!1458 List!7115)) )
))
(declare-datatypes ((List!7116 0))(
  ( (Nil!7102) (Cons!7102 (h!12503 Token!2574) (t!86095 List!7116)) )
))
(declare-datatypes ((IArray!4977 0))(
  ( (IArray!4978 (innerList!2546 List!7116)) )
))
(declare-datatypes ((Conc!2488 0))(
  ( (Node!2488 (left!5738 Conc!2488) (right!6068 Conc!2488) (csize!5206 Int) (cheight!2699 Int)) (Leaf!3717 (xs!5137 IArray!4977) (csize!5207 Int)) (Empty!2488) )
))
(declare-datatypes ((BalanceConc!4988 0))(
  ( (BalanceConc!4989 (c!118667 Conc!2488)) )
))
(declare-fun ts!14 () BalanceConc!4988)

(declare-fun size!5647 (BalanceConc!4988) Int)

(assert (=> b!659189 (= lt!280489 (size!5647 ts!14))))

(declare-fun b!659190 () Bool)

(declare-fun e!407624 () Bool)

(declare-fun tp!200947 () Bool)

(declare-fun inv!9051 (Conc!2486) Bool)

(assert (=> b!659190 (= e!407624 (and (inv!9051 (c!118664 acc!218)) tp!200947))))

(declare-fun b!659191 () Bool)

(declare-fun e!407625 () Bool)

(declare-fun tp!200946 () Bool)

(declare-fun inv!9052 (Conc!2488) Bool)

(assert (=> b!659191 (= e!407625 (and (inv!9052 (c!118667 ts!14)) tp!200946))))

(declare-fun b!659192 () Bool)

(declare-fun e!407623 () Bool)

(assert (=> b!659192 (= e!407623 (>= (- lt!280489 (+ 1 from!502)) (- lt!280489 from!502)))))

(declare-fun lt!280488 () BalanceConc!4984)

(declare-fun append!253 (BalanceConc!4984 Int) BalanceConc!4984)

(assert (=> b!659192 (= lt!280488 (append!253 acc!218 from!502))))

(declare-fun b!659193 () Bool)

(declare-fun e!407622 () Bool)

(assert (=> b!659193 (= e!407622 e!407623)))

(declare-fun res!292645 () Bool)

(assert (=> b!659193 (=> (not res!292645) (not e!407623))))

(declare-fun lt!280492 () List!7114)

(declare-fun ++!1896 (BalanceConc!4984 BalanceConc!4984) BalanceConc!4984)

(declare-fun seqFromList!1464 (List!7114) BalanceConc!4984)

(assert (=> b!659193 (= res!292645 (forall!1888 (++!1896 acc!218 (seqFromList!1464 lt!280492)) lambda!20411))))

(declare-datatypes ((Unit!12313 0))(
  ( (Unit!12314) )
))
(declare-fun lt!280490 () Unit!12313)

(declare-fun lemmaConcatPreservesForall!75 (List!7114 List!7114 Int) Unit!12313)

(declare-fun list!3033 (BalanceConc!4984) List!7114)

(assert (=> b!659193 (= lt!280490 (lemmaConcatPreservesForall!75 (list!3033 acc!218) lt!280492 lambda!20411))))

(assert (=> b!659193 (= lt!280492 (Cons!7100 from!502 Nil!7100))))

(declare-fun res!292643 () Bool)

(assert (=> start!64402 (=> (not res!292643) (not e!407627))))

(assert (=> start!64402 (= res!292643 (>= from!502 0))))

(assert (=> start!64402 e!407627))

(assert (=> start!64402 true))

(declare-fun inv!9053 (BalanceConc!4984) Bool)

(assert (=> start!64402 (and (inv!9053 acc!218) e!407624)))

(declare-fun inv!9054 (BalanceConc!4988) Bool)

(assert (=> start!64402 (and (inv!9054 ts!14) e!407625)))

(declare-fun b!659194 () Bool)

(declare-fun e!407626 () Bool)

(declare-fun lt!280491 () Token!2574)

(declare-fun isKeywordValue!0 (Token!2574 TokenValue!1460) Bool)

(assert (=> b!659194 (= e!407626 (isKeywordValue!0 lt!280491 RightBrace!1460))))

(declare-fun b!659195 () Bool)

(declare-fun res!292648 () Bool)

(assert (=> b!659195 (=> (not res!292648) (not e!407621))))

(assert (=> b!659195 (= res!292648 (< from!502 lt!280489))))

(declare-fun b!659196 () Bool)

(declare-fun res!292650 () Bool)

(assert (=> b!659196 (=> (not res!292650) (not e!407622))))

(assert (=> b!659196 (= res!292650 (forall!1888 acc!218 lambda!20411))))

(declare-fun b!659197 () Bool)

(assert (=> b!659197 (= e!407621 e!407622)))

(declare-fun res!292646 () Bool)

(assert (=> b!659197 (=> (not res!292646) (not e!407622))))

(assert (=> b!659197 (= res!292646 e!407626)))

(declare-fun res!292644 () Bool)

(assert (=> b!659197 (=> res!292644 e!407626)))

(assert (=> b!659197 (= res!292644 (isKeywordValue!0 lt!280491 LeftBrace!1460))))

(declare-fun apply!1723 (BalanceConc!4988 Int) Token!2574)

(assert (=> b!659197 (= lt!280491 (apply!1723 ts!14 from!502))))

(assert (= (and start!64402 res!292643) b!659189))

(assert (= (and b!659189 res!292647) b!659188))

(assert (= (and b!659188 res!292649) b!659195))

(assert (= (and b!659195 res!292648) b!659197))

(assert (= (and b!659197 (not res!292644)) b!659194))

(assert (= (and b!659197 res!292646) b!659196))

(assert (= (and b!659196 res!292650) b!659193))

(assert (= (and b!659193 res!292645) b!659192))

(assert (= start!64402 b!659190))

(assert (= start!64402 b!659191))

(declare-fun m!924853 () Bool)

(assert (=> start!64402 m!924853))

(declare-fun m!924855 () Bool)

(assert (=> start!64402 m!924855))

(declare-fun m!924857 () Bool)

(assert (=> b!659191 m!924857))

(declare-fun m!924859 () Bool)

(assert (=> b!659188 m!924859))

(declare-fun m!924861 () Bool)

(assert (=> b!659189 m!924861))

(declare-fun m!924863 () Bool)

(assert (=> b!659193 m!924863))

(declare-fun m!924865 () Bool)

(assert (=> b!659193 m!924865))

(declare-fun m!924867 () Bool)

(assert (=> b!659193 m!924867))

(assert (=> b!659193 m!924863))

(declare-fun m!924869 () Bool)

(assert (=> b!659193 m!924869))

(declare-fun m!924871 () Bool)

(assert (=> b!659193 m!924871))

(assert (=> b!659193 m!924869))

(assert (=> b!659193 m!924867))

(declare-fun m!924873 () Bool)

(assert (=> b!659192 m!924873))

(assert (=> b!659196 m!924859))

(declare-fun m!924875 () Bool)

(assert (=> b!659190 m!924875))

(declare-fun m!924877 () Bool)

(assert (=> b!659197 m!924877))

(declare-fun m!924879 () Bool)

(assert (=> b!659197 m!924879))

(declare-fun m!924881 () Bool)

(assert (=> b!659194 m!924881))

(check-sat (not b!659197) (not b!659194) (not b!659196) (not start!64402) (not b!659188) (not b!659190) (not b!659189) (not b!659192) (not b!659191) (not b!659193))
(check-sat)

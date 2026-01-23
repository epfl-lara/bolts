; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!397572 () Bool)

(assert start!397572)

(declare-fun b!4169763 () Bool)

(declare-fun b_free!120539 () Bool)

(declare-fun b_next!121243 () Bool)

(assert (=> b!4169763 (= b_free!120539 (not b_next!121243))))

(declare-fun tp!1273716 () Bool)

(declare-fun b_and!325481 () Bool)

(assert (=> b!4169763 (= tp!1273716 b_and!325481)))

(declare-fun b_free!120541 () Bool)

(declare-fun b_next!121245 () Bool)

(assert (=> b!4169763 (= b_free!120541 (not b_next!121245))))

(declare-fun tp!1273719 () Bool)

(declare-fun b_and!325483 () Bool)

(assert (=> b!4169763 (= tp!1273719 b_and!325483)))

(declare-fun b!4169749 () Bool)

(declare-fun b_free!120543 () Bool)

(declare-fun b_next!121247 () Bool)

(assert (=> b!4169749 (= b_free!120543 (not b_next!121247))))

(declare-fun tp!1273720 () Bool)

(declare-fun b_and!325485 () Bool)

(assert (=> b!4169749 (= tp!1273720 b_and!325485)))

(declare-fun b_free!120545 () Bool)

(declare-fun b_next!121249 () Bool)

(assert (=> b!4169749 (= b_free!120545 (not b_next!121249))))

(declare-fun tp!1273713 () Bool)

(declare-fun b_and!325487 () Bool)

(assert (=> b!4169749 (= tp!1273713 b_and!325487)))

(declare-fun b!4169761 () Bool)

(declare-fun b_free!120547 () Bool)

(declare-fun b_next!121251 () Bool)

(assert (=> b!4169761 (= b_free!120547 (not b_next!121251))))

(declare-fun tp!1273717 () Bool)

(declare-fun b_and!325489 () Bool)

(assert (=> b!4169761 (= tp!1273717 b_and!325489)))

(declare-fun b_free!120549 () Bool)

(declare-fun b_next!121253 () Bool)

(assert (=> b!4169761 (= b_free!120549 (not b_next!121253))))

(declare-fun tp!1273718 () Bool)

(declare-fun b_and!325491 () Bool)

(assert (=> b!4169761 (= tp!1273718 b_and!325491)))

(declare-fun tp!1273723 () Bool)

(declare-fun e!2588586 () Bool)

(declare-datatypes ((List!45788 0))(
  ( (Nil!45664) (Cons!45664 (h!51084 (_ BitVec 16)) (t!344299 List!45788)) )
))
(declare-datatypes ((TokenValue!7795 0))(
  ( (FloatLiteralValue!15590 (text!55010 List!45788)) (TokenValueExt!7794 (__x!27811 Int)) (Broken!38975 (value!236120 List!45788)) (Object!7918) (End!7795) (Def!7795) (Underscore!7795) (Match!7795) (Else!7795) (Error!7795) (Case!7795) (If!7795) (Extends!7795) (Abstract!7795) (Class!7795) (Val!7795) (DelimiterValue!15590 (del!7855 List!45788)) (KeywordValue!7801 (value!236121 List!45788)) (CommentValue!15590 (value!236122 List!45788)) (WhitespaceValue!15590 (value!236123 List!45788)) (IndentationValue!7795 (value!236124 List!45788)) (String!52842) (Int32!7795) (Broken!38976 (value!236125 List!45788)) (Boolean!7796) (Unit!64737) (OperatorValue!7798 (op!7855 List!45788)) (IdentifierValue!15590 (value!236126 List!45788)) (IdentifierValue!15591 (value!236127 List!45788)) (WhitespaceValue!15591 (value!236128 List!45788)) (True!15590) (False!15590) (Broken!38977 (value!236129 List!45788)) (Broken!38978 (value!236130 List!45788)) (True!15591) (RightBrace!7795) (RightBracket!7795) (Colon!7795) (Null!7795) (Comma!7795) (LeftBracket!7795) (False!15591) (LeftBrace!7795) (ImaginaryLiteralValue!7795 (text!55011 List!45788)) (StringLiteralValue!23385 (value!236131 List!45788)) (EOFValue!7795 (value!236132 List!45788)) (IdentValue!7795 (value!236133 List!45788)) (DelimiterValue!15591 (value!236134 List!45788)) (DedentValue!7795 (value!236135 List!45788)) (NewLineValue!7795 (value!236136 List!45788)) (IntegerValue!23385 (value!236137 (_ BitVec 32)) (text!55012 List!45788)) (IntegerValue!23386 (value!236138 Int) (text!55013 List!45788)) (Times!7795) (Or!7795) (Equal!7795) (Minus!7795) (Broken!38979 (value!236139 List!45788)) (And!7795) (Div!7795) (LessEqual!7795) (Mod!7795) (Concat!20265) (Not!7795) (Plus!7795) (SpaceValue!7795 (value!236140 List!45788)) (IntegerValue!23387 (value!236141 Int) (text!55014 List!45788)) (StringLiteralValue!23386 (text!55015 List!45788)) (FloatLiteralValue!15591 (text!55016 List!45788)) (BytesLiteralValue!7795 (value!236142 List!45788)) (CommentValue!15591 (value!236143 List!45788)) (StringLiteralValue!23387 (value!236144 List!45788)) (ErrorTokenValue!7795 (msg!7856 List!45788)) )
))
(declare-datatypes ((C!25130 0))(
  ( (C!25131 (val!14727 Int)) )
))
(declare-datatypes ((List!45789 0))(
  ( (Nil!45665) (Cons!45665 (h!51085 C!25130) (t!344300 List!45789)) )
))
(declare-datatypes ((IArray!27557 0))(
  ( (IArray!27558 (innerList!13836 List!45789)) )
))
(declare-datatypes ((Conc!13776 0))(
  ( (Node!13776 (left!34045 Conc!13776) (right!34375 Conc!13776) (csize!27782 Int) (cheight!13987 Int)) (Leaf!21302 (xs!17082 IArray!27557) (csize!27783 Int)) (Empty!13776) )
))
(declare-datatypes ((BalanceConc!27146 0))(
  ( (BalanceConc!27147 (c!712824 Conc!13776)) )
))
(declare-datatypes ((Regex!12470 0))(
  ( (ElementMatch!12470 (c!712825 C!25130)) (Concat!20266 (regOne!25452 Regex!12470) (regTwo!25452 Regex!12470)) (EmptyExpr!12470) (Star!12470 (reg!12799 Regex!12470)) (EmptyLang!12470) (Union!12470 (regOne!25453 Regex!12470) (regTwo!25453 Regex!12470)) )
))
(declare-datatypes ((String!52843 0))(
  ( (String!52844 (value!236145 String)) )
))
(declare-datatypes ((TokenValueInjection!15018 0))(
  ( (TokenValueInjection!15019 (toValue!10245 Int) (toChars!10104 Int)) )
))
(declare-datatypes ((Rule!14930 0))(
  ( (Rule!14931 (regex!7565 Regex!12470) (tag!8429 String!52843) (isSeparator!7565 Bool) (transformation!7565 TokenValueInjection!15018)) )
))
(declare-fun rBis!167 () Rule!14930)

(declare-fun e!2588587 () Bool)

(declare-fun b!4169747 () Bool)

(declare-fun inv!60196 (String!52843) Bool)

(declare-fun inv!60199 (TokenValueInjection!15018) Bool)

(assert (=> b!4169747 (= e!2588586 (and tp!1273723 (inv!60196 (tag!8429 rBis!167)) (inv!60199 (transformation!7565 rBis!167)) e!2588587))))

(declare-fun b!4169748 () Bool)

(declare-fun e!2588589 () Bool)

(declare-fun tp_is_empty!21903 () Bool)

(declare-fun tp!1273725 () Bool)

(assert (=> b!4169748 (= e!2588589 (and tp_is_empty!21903 tp!1273725))))

(declare-fun e!2588588 () Bool)

(assert (=> b!4169749 (= e!2588588 (and tp!1273720 tp!1273713))))

(declare-fun b!4169750 () Bool)

(declare-fun res!1708461 () Bool)

(declare-fun e!2588585 () Bool)

(assert (=> b!4169750 (=> (not res!1708461) (not e!2588585))))

(declare-datatypes ((List!45790 0))(
  ( (Nil!45666) (Cons!45666 (h!51086 Rule!14930) (t!344301 List!45790)) )
))
(declare-fun rules!3843 () List!45790)

(declare-fun isEmpty!27024 (List!45790) Bool)

(assert (=> b!4169750 (= res!1708461 (not (isEmpty!27024 rules!3843)))))

(declare-fun b!4169752 () Bool)

(declare-fun res!1708463 () Bool)

(assert (=> b!4169752 (=> (not res!1708463) (not e!2588585))))

(declare-fun pBis!107 () List!45789)

(declare-fun input!3342 () List!45789)

(declare-fun isPrefix!4422 (List!45789 List!45789) Bool)

(assert (=> b!4169752 (= res!1708463 (isPrefix!4422 pBis!107 input!3342))))

(declare-fun b!4169753 () Bool)

(declare-fun res!1708464 () Bool)

(assert (=> b!4169753 (=> (not res!1708464) (not e!2588585))))

(declare-fun contains!9366 (List!45790 Rule!14930) Bool)

(assert (=> b!4169753 (= res!1708464 (contains!9366 rules!3843 rBis!167))))

(declare-fun b!4169754 () Bool)

(declare-fun res!1708466 () Bool)

(assert (=> b!4169754 (=> (not res!1708466) (not e!2588585))))

(declare-fun p!2959 () List!45789)

(assert (=> b!4169754 (= res!1708466 (isPrefix!4422 p!2959 input!3342))))

(declare-fun b!4169755 () Bool)

(declare-fun e!2588598 () Bool)

(declare-fun tp!1273714 () Bool)

(assert (=> b!4169755 (= e!2588598 (and tp_is_empty!21903 tp!1273714))))

(declare-fun e!2588590 () Bool)

(declare-fun tp!1273722 () Bool)

(declare-fun b!4169756 () Bool)

(declare-fun e!2588594 () Bool)

(declare-fun r!4142 () Rule!14930)

(assert (=> b!4169756 (= e!2588594 (and tp!1273722 (inv!60196 (tag!8429 r!4142)) (inv!60199 (transformation!7565 r!4142)) e!2588590))))

(declare-fun b!4169757 () Bool)

(declare-fun res!1708465 () Bool)

(assert (=> b!4169757 (=> (not res!1708465) (not e!2588585))))

(declare-datatypes ((LexerInterface!7158 0))(
  ( (LexerInterfaceExt!7155 (__x!27812 Int)) (Lexer!7156) )
))
(declare-fun thiss!25986 () LexerInterface!7158)

(declare-fun rulesInvariant!6371 (LexerInterface!7158 List!45790) Bool)

(assert (=> b!4169757 (= res!1708465 (rulesInvariant!6371 thiss!25986 rules!3843))))

(declare-fun b!4169758 () Bool)

(declare-fun res!1708467 () Bool)

(assert (=> b!4169758 (=> (not res!1708467) (not e!2588585))))

(declare-fun validRegex!5587 (Regex!12470) Bool)

(assert (=> b!4169758 (= res!1708467 (validRegex!5587 (regex!7565 r!4142)))))

(declare-fun b!4169759 () Bool)

(assert (=> b!4169759 (= e!2588585 false)))

(declare-fun lt!1485107 () Bool)

(declare-fun matchR!6209 (Regex!12470 List!45789) Bool)

(assert (=> b!4169759 (= lt!1485107 (matchR!6209 (regex!7565 r!4142) p!2959))))

(declare-fun b!4169760 () Bool)

(declare-fun e!2588591 () Bool)

(declare-fun e!2588597 () Bool)

(declare-fun tp!1273724 () Bool)

(assert (=> b!4169760 (= e!2588591 (and e!2588597 tp!1273724))))

(declare-fun b!4169751 () Bool)

(declare-fun res!1708462 () Bool)

(assert (=> b!4169751 (=> (not res!1708462) (not e!2588585))))

(assert (=> b!4169751 (= res!1708462 (contains!9366 rules!3843 r!4142))))

(declare-fun res!1708468 () Bool)

(assert (=> start!397572 (=> (not res!1708468) (not e!2588585))))

(assert (=> start!397572 (= res!1708468 (is-Lexer!7156 thiss!25986))))

(assert (=> start!397572 e!2588585))

(assert (=> start!397572 true))

(assert (=> start!397572 e!2588586))

(assert (=> start!397572 e!2588594))

(assert (=> start!397572 e!2588591))

(assert (=> start!397572 e!2588598))

(assert (=> start!397572 e!2588589))

(declare-fun e!2588592 () Bool)

(assert (=> start!397572 e!2588592))

(assert (=> b!4169761 (= e!2588587 (and tp!1273717 tp!1273718))))

(declare-fun tp!1273715 () Bool)

(declare-fun b!4169762 () Bool)

(assert (=> b!4169762 (= e!2588597 (and tp!1273715 (inv!60196 (tag!8429 (h!51086 rules!3843))) (inv!60199 (transformation!7565 (h!51086 rules!3843))) e!2588588))))

(assert (=> b!4169763 (= e!2588590 (and tp!1273716 tp!1273719))))

(declare-fun b!4169764 () Bool)

(declare-fun tp!1273721 () Bool)

(assert (=> b!4169764 (= e!2588592 (and tp_is_empty!21903 tp!1273721))))

(assert (= (and start!397572 res!1708468) b!4169754))

(assert (= (and b!4169754 res!1708466) b!4169752))

(assert (= (and b!4169752 res!1708463) b!4169750))

(assert (= (and b!4169750 res!1708461) b!4169757))

(assert (= (and b!4169757 res!1708465) b!4169751))

(assert (= (and b!4169751 res!1708462) b!4169753))

(assert (= (and b!4169753 res!1708464) b!4169758))

(assert (= (and b!4169758 res!1708467) b!4169759))

(assert (= b!4169747 b!4169761))

(assert (= start!397572 b!4169747))

(assert (= b!4169756 b!4169763))

(assert (= start!397572 b!4169756))

(assert (= b!4169762 b!4169749))

(assert (= b!4169760 b!4169762))

(assert (= (and start!397572 (is-Cons!45666 rules!3843)) b!4169760))

(assert (= (and start!397572 (is-Cons!45665 input!3342)) b!4169755))

(assert (= (and start!397572 (is-Cons!45665 pBis!107)) b!4169748))

(assert (= (and start!397572 (is-Cons!45665 p!2959)) b!4169764))

(declare-fun m!4760687 () Bool)

(assert (=> b!4169756 m!4760687))

(declare-fun m!4760689 () Bool)

(assert (=> b!4169756 m!4760689))

(declare-fun m!4760691 () Bool)

(assert (=> b!4169750 m!4760691))

(declare-fun m!4760693 () Bool)

(assert (=> b!4169751 m!4760693))

(declare-fun m!4760695 () Bool)

(assert (=> b!4169754 m!4760695))

(declare-fun m!4760697 () Bool)

(assert (=> b!4169747 m!4760697))

(declare-fun m!4760699 () Bool)

(assert (=> b!4169747 m!4760699))

(declare-fun m!4760701 () Bool)

(assert (=> b!4169753 m!4760701))

(declare-fun m!4760703 () Bool)

(assert (=> b!4169762 m!4760703))

(declare-fun m!4760705 () Bool)

(assert (=> b!4169762 m!4760705))

(declare-fun m!4760707 () Bool)

(assert (=> b!4169757 m!4760707))

(declare-fun m!4760709 () Bool)

(assert (=> b!4169752 m!4760709))

(declare-fun m!4760711 () Bool)

(assert (=> b!4169758 m!4760711))

(declare-fun m!4760713 () Bool)

(assert (=> b!4169759 m!4760713))

(push 1)

(assert b_and!325483)

(assert b_and!325487)

(assert (not b!4169750))

(assert (not b!4169760))

(assert (not b_next!121243))

(assert (not b_next!121251))

(assert (not b_next!121245))

(assert b_and!325485)

(assert (not b!4169759))

(assert (not b!4169762))

(assert (not b!4169751))

(assert (not b_next!121247))

(assert tp_is_empty!21903)

(assert (not b!4169764))

(assert b_and!325489)

(assert (not b!4169754))

(assert (not b!4169747))

(assert (not b!4169752))

(assert (not b!4169755))

(assert (not b!4169758))

(assert b_and!325491)

(assert (not b!4169756))

(assert (not b!4169757))

(assert (not b_next!121249))

(assert b_and!325481)

(assert (not b_next!121253))

(assert (not b!4169753))

(assert (not b!4169748))

(check-sat)

(pop 1)

(push 1)

(assert b_and!325489)

(assert b_and!325483)

(assert b_and!325487)

(assert b_and!325491)

(assert (not b_next!121253))

(assert (not b_next!121243))

(assert (not b_next!121251))

(assert (not b_next!121245))

(assert b_and!325485)

(assert (not b_next!121247))

(assert (not b_next!121249))

(assert b_and!325481)

(check-sat)

(pop 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137698 () Bool)

(assert start!137698)

(declare-fun b!1470517 () Bool)

(declare-fun b_free!37119 () Bool)

(declare-fun b_next!37823 () Bool)

(assert (=> b!1470517 (= b_free!37119 (not b_next!37823))))

(declare-fun tp!414902 () Bool)

(declare-fun b_and!100793 () Bool)

(assert (=> b!1470517 (= tp!414902 b_and!100793)))

(declare-fun b_free!37121 () Bool)

(declare-fun b_next!37825 () Bool)

(assert (=> b!1470517 (= b_free!37121 (not b_next!37825))))

(declare-fun tp!414895 () Bool)

(declare-fun b_and!100795 () Bool)

(assert (=> b!1470517 (= tp!414895 b_and!100795)))

(declare-fun b!1470515 () Bool)

(declare-fun b_free!37123 () Bool)

(declare-fun b_next!37827 () Bool)

(assert (=> b!1470515 (= b_free!37123 (not b_next!37827))))

(declare-fun tp!414905 () Bool)

(declare-fun b_and!100797 () Bool)

(assert (=> b!1470515 (= tp!414905 b_and!100797)))

(declare-fun b_free!37125 () Bool)

(declare-fun b_next!37829 () Bool)

(assert (=> b!1470515 (= b_free!37125 (not b_next!37829))))

(declare-fun tp!414901 () Bool)

(declare-fun b_and!100799 () Bool)

(assert (=> b!1470515 (= tp!414901 b_and!100799)))

(declare-fun b!1470516 () Bool)

(declare-fun b_free!37127 () Bool)

(declare-fun b_next!37831 () Bool)

(assert (=> b!1470516 (= b_free!37127 (not b_next!37831))))

(declare-fun tp!414904 () Bool)

(declare-fun b_and!100801 () Bool)

(assert (=> b!1470516 (= tp!414904 b_and!100801)))

(declare-fun b_free!37129 () Bool)

(declare-fun b_next!37833 () Bool)

(assert (=> b!1470516 (= b_free!37129 (not b_next!37833))))

(declare-fun tp!414896 () Bool)

(declare-fun b_and!100803 () Bool)

(assert (=> b!1470516 (= tp!414896 b_and!100803)))

(declare-fun b!1470501 () Bool)

(declare-fun res!664855 () Bool)

(declare-fun e!938965 () Bool)

(assert (=> b!1470501 (=> (not res!664855) (not e!938965))))

(declare-datatypes ((List!15477 0))(
  ( (Nil!15411) (Cons!15411 (h!20812 (_ BitVec 16)) (t!135570 List!15477)) )
))
(declare-datatypes ((String!18400 0))(
  ( (String!18401 (value!87683 String)) )
))
(declare-datatypes ((C!8284 0))(
  ( (C!8285 (val!4712 Int)) )
))
(declare-datatypes ((List!15478 0))(
  ( (Nil!15412) (Cons!15412 (h!20813 C!8284) (t!135571 List!15478)) )
))
(declare-datatypes ((Regex!4053 0))(
  ( (ElementMatch!4053 (c!242233 C!8284)) (Concat!6882 (regOne!8618 Regex!4053) (regTwo!8618 Regex!4053)) (EmptyExpr!4053) (Star!4053 (reg!4382 Regex!4053)) (EmptyLang!4053) (Union!4053 (regOne!8619 Regex!4053) (regTwo!8619 Regex!4053)) )
))
(declare-datatypes ((TokenValue!2829 0))(
  ( (FloatLiteralValue!5658 (text!20248 List!15477)) (TokenValueExt!2828 (__x!9448 Int)) (Broken!14145 (value!87684 List!15477)) (Object!2894) (End!2829) (Def!2829) (Underscore!2829) (Match!2829) (Else!2829) (Error!2829) (Case!2829) (If!2829) (Extends!2829) (Abstract!2829) (Class!2829) (Val!2829) (DelimiterValue!5658 (del!2889 List!15477)) (KeywordValue!2835 (value!87685 List!15477)) (CommentValue!5658 (value!87686 List!15477)) (WhitespaceValue!5658 (value!87687 List!15477)) (IndentationValue!2829 (value!87688 List!15477)) (String!18402) (Int32!2829) (Broken!14146 (value!87689 List!15477)) (Boolean!2830) (Unit!25100) (OperatorValue!2832 (op!2889 List!15477)) (IdentifierValue!5658 (value!87690 List!15477)) (IdentifierValue!5659 (value!87691 List!15477)) (WhitespaceValue!5659 (value!87692 List!15477)) (True!5658) (False!5658) (Broken!14147 (value!87693 List!15477)) (Broken!14148 (value!87694 List!15477)) (True!5659) (RightBrace!2829) (RightBracket!2829) (Colon!2829) (Null!2829) (Comma!2829) (LeftBracket!2829) (False!5659) (LeftBrace!2829) (ImaginaryLiteralValue!2829 (text!20249 List!15477)) (StringLiteralValue!8487 (value!87695 List!15477)) (EOFValue!2829 (value!87696 List!15477)) (IdentValue!2829 (value!87697 List!15477)) (DelimiterValue!5659 (value!87698 List!15477)) (DedentValue!2829 (value!87699 List!15477)) (NewLineValue!2829 (value!87700 List!15477)) (IntegerValue!8487 (value!87701 (_ BitVec 32)) (text!20250 List!15477)) (IntegerValue!8488 (value!87702 Int) (text!20251 List!15477)) (Times!2829) (Or!2829) (Equal!2829) (Minus!2829) (Broken!14149 (value!87703 List!15477)) (And!2829) (Div!2829) (LessEqual!2829) (Mod!2829) (Concat!6883) (Not!2829) (Plus!2829) (SpaceValue!2829 (value!87704 List!15477)) (IntegerValue!8489 (value!87705 Int) (text!20252 List!15477)) (StringLiteralValue!8488 (text!20253 List!15477)) (FloatLiteralValue!5659 (text!20254 List!15477)) (BytesLiteralValue!2829 (value!87706 List!15477)) (CommentValue!5659 (value!87707 List!15477)) (StringLiteralValue!8489 (value!87708 List!15477)) (ErrorTokenValue!2829 (msg!2890 List!15477)) )
))
(declare-datatypes ((IArray!10521 0))(
  ( (IArray!10522 (innerList!5318 List!15478)) )
))
(declare-datatypes ((Conc!5258 0))(
  ( (Node!5258 (left!13046 Conc!5258) (right!13376 Conc!5258) (csize!10746 Int) (cheight!5469 Int)) (Leaf!7829 (xs!8013 IArray!10521) (csize!10747 Int)) (Empty!5258) )
))
(declare-datatypes ((BalanceConc!10456 0))(
  ( (BalanceConc!10457 (c!242234 Conc!5258)) )
))
(declare-datatypes ((TokenValueInjection!5318 0))(
  ( (TokenValueInjection!5319 (toValue!4062 Int) (toChars!3921 Int)) )
))
(declare-datatypes ((Rule!5278 0))(
  ( (Rule!5279 (regex!2739 Regex!4053) (tag!3003 String!18400) (isSeparator!2739 Bool) (transformation!2739 TokenValueInjection!5318)) )
))
(declare-datatypes ((List!15479 0))(
  ( (Nil!15413) (Cons!15413 (h!20814 Rule!5278) (t!135572 List!15479)) )
))
(declare-fun rules!4290 () List!15479)

(declare-fun isEmpty!9627 (List!15479) Bool)

(assert (=> b!1470501 (= res!664855 (not (isEmpty!9627 rules!4290)))))

(declare-fun res!664853 () Bool)

(assert (=> start!137698 (=> (not res!664853) (not e!938965))))

(declare-datatypes ((LexerInterface!2395 0))(
  ( (LexerInterfaceExt!2392 (__x!9449 Int)) (Lexer!2393) )
))
(declare-fun thiss!27374 () LexerInterface!2395)

(get-info :version)

(assert (=> start!137698 (= res!664853 ((_ is Lexer!2393) thiss!27374))))

(assert (=> start!137698 e!938965))

(assert (=> start!137698 true))

(declare-fun e!938968 () Bool)

(assert (=> start!137698 e!938968))

(declare-fun e!938973 () Bool)

(assert (=> start!137698 e!938973))

(declare-fun e!938964 () Bool)

(assert (=> start!137698 e!938964))

(declare-fun b!1470502 () Bool)

(declare-fun res!664854 () Bool)

(assert (=> b!1470502 (=> (not res!664854) (not e!938965))))

(declare-datatypes ((Token!5140 0))(
  ( (Token!5141 (value!87709 TokenValue!2829) (rule!4516 Rule!5278) (size!12526 Int) (originalCharacters!3601 List!15478)) )
))
(declare-datatypes ((List!15480 0))(
  ( (Nil!15414) (Cons!15414 (h!20815 Token!5140) (t!135573 List!15480)) )
))
(declare-fun l1!3136 () List!15480)

(declare-fun tokensListTwoByTwoPredicateSeparableList!255 (LexerInterface!2395 List!15480 List!15479) Bool)

(assert (=> b!1470502 (= res!664854 (tokensListTwoByTwoPredicateSeparableList!255 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1470503 () Bool)

(declare-fun res!664852 () Bool)

(assert (=> b!1470503 (=> (not res!664852) (not e!938965))))

(declare-fun rulesInvariant!2184 (LexerInterface!2395 List!15479) Bool)

(assert (=> b!1470503 (= res!664852 (rulesInvariant!2184 thiss!27374 rules!4290))))

(declare-fun l2!3105 () List!15480)

(declare-fun b!1470504 () Bool)

(declare-datatypes ((IArray!10523 0))(
  ( (IArray!10524 (innerList!5319 List!15480)) )
))
(declare-datatypes ((Conc!5259 0))(
  ( (Node!5259 (left!13047 Conc!5259) (right!13377 Conc!5259) (csize!10748 Int) (cheight!5470 Int)) (Leaf!7830 (xs!8014 IArray!10523) (csize!10749 Int)) (Empty!5259) )
))
(declare-datatypes ((BalanceConc!10458 0))(
  ( (BalanceConc!10459 (c!242235 Conc!5259)) )
))
(declare-fun rulesProduceEachTokenIndividually!894 (LexerInterface!2395 List!15479 BalanceConc!10458) Bool)

(declare-fun seqFromList!1724 (List!15480) BalanceConc!10458)

(assert (=> b!1470504 (= e!938965 (not (rulesProduceEachTokenIndividually!894 thiss!27374 rules!4290 (seqFromList!1724 l2!3105))))))

(declare-fun b!1470505 () Bool)

(declare-fun e!938971 () Bool)

(declare-fun tp!414898 () Bool)

(declare-fun e!938958 () Bool)

(declare-fun inv!21 (TokenValue!2829) Bool)

(assert (=> b!1470505 (= e!938971 (and (inv!21 (value!87709 (h!20815 l1!3136))) e!938958 tp!414898))))

(declare-fun b!1470506 () Bool)

(declare-fun e!938961 () Bool)

(declare-fun tp!414897 () Bool)

(assert (=> b!1470506 (= e!938968 (and e!938961 tp!414897))))

(declare-fun b!1470507 () Bool)

(declare-fun res!664850 () Bool)

(assert (=> b!1470507 (=> (not res!664850) (not e!938965))))

(declare-fun rulesProduceEachTokenIndividuallyList!762 (LexerInterface!2395 List!15479 List!15480) Bool)

(assert (=> b!1470507 (= res!664850 (rulesProduceEachTokenIndividuallyList!762 thiss!27374 rules!4290 l1!3136))))

(declare-fun b!1470508 () Bool)

(declare-fun e!938972 () Bool)

(declare-fun e!938970 () Bool)

(declare-fun tp!414907 () Bool)

(declare-fun inv!20612 (String!18400) Bool)

(declare-fun inv!20615 (TokenValueInjection!5318) Bool)

(assert (=> b!1470508 (= e!938970 (and tp!414907 (inv!20612 (tag!3003 (rule!4516 (h!20815 l2!3105)))) (inv!20615 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) e!938972))))

(declare-fun b!1470509 () Bool)

(declare-fun tp!414906 () Bool)

(declare-fun inv!20616 (Token!5140) Bool)

(assert (=> b!1470509 (= e!938973 (and (inv!20616 (h!20815 l1!3136)) e!938971 tp!414906))))

(declare-fun tp!414900 () Bool)

(declare-fun e!938963 () Bool)

(declare-fun b!1470510 () Bool)

(assert (=> b!1470510 (= e!938964 (and (inv!20616 (h!20815 l2!3105)) e!938963 tp!414900))))

(declare-fun e!938959 () Bool)

(declare-fun b!1470511 () Bool)

(declare-fun tp!414899 () Bool)

(assert (=> b!1470511 (= e!938961 (and tp!414899 (inv!20612 (tag!3003 (h!20814 rules!4290))) (inv!20615 (transformation!2739 (h!20814 rules!4290))) e!938959))))

(declare-fun b!1470512 () Bool)

(declare-fun res!664851 () Bool)

(assert (=> b!1470512 (=> (not res!664851) (not e!938965))))

(assert (=> b!1470512 (= res!664851 (rulesProduceEachTokenIndividuallyList!762 thiss!27374 rules!4290 l2!3105))))

(declare-fun e!938967 () Bool)

(declare-fun tp!414903 () Bool)

(declare-fun b!1470513 () Bool)

(assert (=> b!1470513 (= e!938958 (and tp!414903 (inv!20612 (tag!3003 (rule!4516 (h!20815 l1!3136)))) (inv!20615 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) e!938967))))

(declare-fun tp!414908 () Bool)

(declare-fun b!1470514 () Bool)

(assert (=> b!1470514 (= e!938963 (and (inv!21 (value!87709 (h!20815 l2!3105))) e!938970 tp!414908))))

(assert (=> b!1470515 (= e!938972 (and tp!414905 tp!414901))))

(assert (=> b!1470516 (= e!938959 (and tp!414904 tp!414896))))

(assert (=> b!1470517 (= e!938967 (and tp!414902 tp!414895))))

(assert (= (and start!137698 res!664853) b!1470501))

(assert (= (and b!1470501 res!664855) b!1470503))

(assert (= (and b!1470503 res!664852) b!1470507))

(assert (= (and b!1470507 res!664850) b!1470512))

(assert (= (and b!1470512 res!664851) b!1470502))

(assert (= (and b!1470502 res!664854) b!1470504))

(assert (= b!1470511 b!1470516))

(assert (= b!1470506 b!1470511))

(assert (= (and start!137698 ((_ is Cons!15413) rules!4290)) b!1470506))

(assert (= b!1470513 b!1470517))

(assert (= b!1470505 b!1470513))

(assert (= b!1470509 b!1470505))

(assert (= (and start!137698 ((_ is Cons!15414) l1!3136)) b!1470509))

(assert (= b!1470508 b!1470515))

(assert (= b!1470514 b!1470508))

(assert (= b!1470510 b!1470514))

(assert (= (and start!137698 ((_ is Cons!15414) l2!3105)) b!1470510))

(declare-fun m!1714679 () Bool)

(assert (=> b!1470512 m!1714679))

(declare-fun m!1714681 () Bool)

(assert (=> b!1470502 m!1714681))

(declare-fun m!1714683 () Bool)

(assert (=> b!1470509 m!1714683))

(declare-fun m!1714685 () Bool)

(assert (=> b!1470514 m!1714685))

(declare-fun m!1714687 () Bool)

(assert (=> b!1470503 m!1714687))

(declare-fun m!1714689 () Bool)

(assert (=> b!1470511 m!1714689))

(declare-fun m!1714691 () Bool)

(assert (=> b!1470511 m!1714691))

(declare-fun m!1714693 () Bool)

(assert (=> b!1470507 m!1714693))

(declare-fun m!1714695 () Bool)

(assert (=> b!1470505 m!1714695))

(declare-fun m!1714697 () Bool)

(assert (=> b!1470510 m!1714697))

(declare-fun m!1714699 () Bool)

(assert (=> b!1470508 m!1714699))

(declare-fun m!1714701 () Bool)

(assert (=> b!1470508 m!1714701))

(declare-fun m!1714703 () Bool)

(assert (=> b!1470501 m!1714703))

(declare-fun m!1714705 () Bool)

(assert (=> b!1470513 m!1714705))

(declare-fun m!1714707 () Bool)

(assert (=> b!1470513 m!1714707))

(declare-fun m!1714709 () Bool)

(assert (=> b!1470504 m!1714709))

(assert (=> b!1470504 m!1714709))

(declare-fun m!1714711 () Bool)

(assert (=> b!1470504 m!1714711))

(check-sat (not b!1470511) (not b!1470514) b_and!100797 b_and!100795 b_and!100793 (not b!1470508) b_and!100799 (not b_next!37831) (not b!1470501) (not b!1470502) (not b!1470510) (not b_next!37823) (not b!1470509) b_and!100801 (not b!1470507) (not b_next!37825) (not b!1470503) (not b!1470512) (not b!1470505) (not b!1470506) (not b_next!37833) (not b_next!37829) (not b!1470504) b_and!100803 (not b!1470513) (not b_next!37827))
(check-sat b_and!100797 b_and!100795 b_and!100793 b_and!100801 b_and!100799 (not b_next!37831) (not b_next!37825) (not b_next!37833) (not b_next!37823) (not b_next!37829) b_and!100803 (not b_next!37827))
(get-model)

(declare-fun b!1470539 () Bool)

(declare-fun e!938989 () Bool)

(declare-fun e!938988 () Bool)

(assert (=> b!1470539 (= e!938989 e!938988)))

(declare-fun c!242240 () Bool)

(assert (=> b!1470539 (= c!242240 ((_ is IntegerValue!8488) (value!87709 (h!20815 l1!3136))))))

(declare-fun b!1470540 () Bool)

(declare-fun inv!17 (TokenValue!2829) Bool)

(assert (=> b!1470540 (= e!938988 (inv!17 (value!87709 (h!20815 l1!3136))))))

(declare-fun b!1470541 () Bool)

(declare-fun e!938987 () Bool)

(declare-fun inv!15 (TokenValue!2829) Bool)

(assert (=> b!1470541 (= e!938987 (inv!15 (value!87709 (h!20815 l1!3136))))))

(declare-fun b!1470542 () Bool)

(declare-fun res!664864 () Bool)

(assert (=> b!1470542 (=> res!664864 e!938987)))

(assert (=> b!1470542 (= res!664864 (not ((_ is IntegerValue!8489) (value!87709 (h!20815 l1!3136)))))))

(assert (=> b!1470542 (= e!938988 e!938987)))

(declare-fun b!1470543 () Bool)

(declare-fun inv!16 (TokenValue!2829) Bool)

(assert (=> b!1470543 (= e!938989 (inv!16 (value!87709 (h!20815 l1!3136))))))

(declare-fun d!431245 () Bool)

(declare-fun c!242241 () Bool)

(assert (=> d!431245 (= c!242241 ((_ is IntegerValue!8487) (value!87709 (h!20815 l1!3136))))))

(assert (=> d!431245 (= (inv!21 (value!87709 (h!20815 l1!3136))) e!938989)))

(assert (= (and d!431245 c!242241) b!1470543))

(assert (= (and d!431245 (not c!242241)) b!1470539))

(assert (= (and b!1470539 c!242240) b!1470540))

(assert (= (and b!1470539 (not c!242240)) b!1470542))

(assert (= (and b!1470542 (not res!664864)) b!1470541))

(declare-fun m!1714725 () Bool)

(assert (=> b!1470540 m!1714725))

(declare-fun m!1714727 () Bool)

(assert (=> b!1470541 m!1714727))

(declare-fun m!1714729 () Bool)

(assert (=> b!1470543 m!1714729))

(assert (=> b!1470505 d!431245))

(declare-fun b!1470566 () Bool)

(declare-fun e!939010 () Bool)

(assert (=> b!1470566 (= e!939010 true)))

(declare-fun b!1470565 () Bool)

(declare-fun e!939009 () Bool)

(assert (=> b!1470565 (= e!939009 e!939010)))

(declare-fun b!1470564 () Bool)

(declare-fun e!939008 () Bool)

(assert (=> b!1470564 (= e!939008 e!939009)))

(declare-fun d!431249 () Bool)

(assert (=> d!431249 e!939008))

(assert (= b!1470565 b!1470566))

(assert (= b!1470564 b!1470565))

(assert (= (and d!431249 ((_ is Cons!15413) rules!4290)) b!1470564))

(declare-fun order!9253 () Int)

(declare-fun lambda!63468 () Int)

(declare-fun order!9251 () Int)

(declare-fun dynLambda!6994 (Int Int) Int)

(declare-fun dynLambda!6995 (Int Int) Int)

(assert (=> b!1470566 (< (dynLambda!6994 order!9251 (toValue!4062 (transformation!2739 (h!20814 rules!4290)))) (dynLambda!6995 order!9253 lambda!63468))))

(declare-fun order!9255 () Int)

(declare-fun dynLambda!6996 (Int Int) Int)

(assert (=> b!1470566 (< (dynLambda!6996 order!9255 (toChars!3921 (transformation!2739 (h!20814 rules!4290)))) (dynLambda!6995 order!9253 lambda!63468))))

(assert (=> d!431249 true))

(declare-fun lt!511339 () Bool)

(declare-fun forall!3761 (List!15480 Int) Bool)

(assert (=> d!431249 (= lt!511339 (forall!3761 l1!3136 lambda!63468))))

(declare-fun e!939001 () Bool)

(assert (=> d!431249 (= lt!511339 e!939001)))

(declare-fun res!664876 () Bool)

(assert (=> d!431249 (=> res!664876 e!939001)))

(assert (=> d!431249 (= res!664876 (not ((_ is Cons!15414) l1!3136)))))

(assert (=> d!431249 (not (isEmpty!9627 rules!4290))))

(assert (=> d!431249 (= (rulesProduceEachTokenIndividuallyList!762 thiss!27374 rules!4290 l1!3136) lt!511339)))

(declare-fun b!1470554 () Bool)

(declare-fun e!939000 () Bool)

(assert (=> b!1470554 (= e!939001 e!939000)))

(declare-fun res!664875 () Bool)

(assert (=> b!1470554 (=> (not res!664875) (not e!939000))))

(declare-fun rulesProduceIndividualToken!1257 (LexerInterface!2395 List!15479 Token!5140) Bool)

(assert (=> b!1470554 (= res!664875 (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 l1!3136)))))

(declare-fun b!1470555 () Bool)

(assert (=> b!1470555 (= e!939000 (rulesProduceEachTokenIndividuallyList!762 thiss!27374 rules!4290 (t!135573 l1!3136)))))

(assert (= (and d!431249 (not res!664876)) b!1470554))

(assert (= (and b!1470554 res!664875) b!1470555))

(declare-fun m!1714747 () Bool)

(assert (=> d!431249 m!1714747))

(assert (=> d!431249 m!1714703))

(declare-fun m!1714749 () Bool)

(assert (=> b!1470554 m!1714749))

(declare-fun m!1714751 () Bool)

(assert (=> b!1470555 m!1714751))

(assert (=> b!1470507 d!431249))

(declare-fun d!431253 () Bool)

(declare-fun res!664882 () Bool)

(declare-fun e!939015 () Bool)

(assert (=> d!431253 (=> res!664882 e!939015)))

(assert (=> d!431253 (= res!664882 (or (not ((_ is Cons!15414) l1!3136)) (not ((_ is Cons!15414) (t!135573 l1!3136)))))))

(assert (=> d!431253 (= (tokensListTwoByTwoPredicateSeparableList!255 thiss!27374 l1!3136 rules!4290) e!939015)))

(declare-fun b!1470573 () Bool)

(declare-fun e!939016 () Bool)

(assert (=> b!1470573 (= e!939015 e!939016)))

(declare-fun res!664881 () Bool)

(assert (=> b!1470573 (=> (not res!664881) (not e!939016))))

(declare-fun separableTokensPredicate!545 (LexerInterface!2395 Token!5140 Token!5140 List!15479) Bool)

(assert (=> b!1470573 (= res!664881 (separableTokensPredicate!545 thiss!27374 (h!20815 l1!3136) (h!20815 (t!135573 l1!3136)) rules!4290))))

(declare-datatypes ((Unit!25101 0))(
  ( (Unit!25102) )
))
(declare-fun lt!511355 () Unit!25101)

(declare-fun Unit!25103 () Unit!25101)

(assert (=> b!1470573 (= lt!511355 Unit!25103)))

(declare-fun size!12528 (BalanceConc!10456) Int)

(declare-fun charsOf!1573 (Token!5140) BalanceConc!10456)

(assert (=> b!1470573 (> (size!12528 (charsOf!1573 (h!20815 (t!135573 l1!3136)))) 0)))

(declare-fun lt!511359 () Unit!25101)

(declare-fun Unit!25104 () Unit!25101)

(assert (=> b!1470573 (= lt!511359 Unit!25104)))

(assert (=> b!1470573 (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 (t!135573 l1!3136)))))

(declare-fun lt!511358 () Unit!25101)

(declare-fun Unit!25105 () Unit!25101)

(assert (=> b!1470573 (= lt!511358 Unit!25105)))

(assert (=> b!1470573 (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 l1!3136))))

(declare-fun lt!511360 () Unit!25101)

(declare-fun lt!511354 () Unit!25101)

(assert (=> b!1470573 (= lt!511360 lt!511354)))

(assert (=> b!1470573 (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 (t!135573 l1!3136)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!438 (LexerInterface!2395 List!15479 List!15480 Token!5140) Unit!25101)

(assert (=> b!1470573 (= lt!511354 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!438 thiss!27374 rules!4290 l1!3136 (h!20815 (t!135573 l1!3136))))))

(declare-fun lt!511356 () Unit!25101)

(declare-fun lt!511357 () Unit!25101)

(assert (=> b!1470573 (= lt!511356 lt!511357)))

(assert (=> b!1470573 (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 l1!3136))))

(assert (=> b!1470573 (= lt!511357 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!438 thiss!27374 rules!4290 l1!3136 (h!20815 l1!3136)))))

(declare-fun b!1470574 () Bool)

(assert (=> b!1470574 (= e!939016 (tokensListTwoByTwoPredicateSeparableList!255 thiss!27374 (Cons!15414 (h!20815 (t!135573 l1!3136)) (t!135573 (t!135573 l1!3136))) rules!4290))))

(assert (= (and d!431253 (not res!664882)) b!1470573))

(assert (= (and b!1470573 res!664881) b!1470574))

(declare-fun m!1714753 () Bool)

(assert (=> b!1470573 m!1714753))

(declare-fun m!1714755 () Bool)

(assert (=> b!1470573 m!1714755))

(declare-fun m!1714757 () Bool)

(assert (=> b!1470573 m!1714757))

(assert (=> b!1470573 m!1714749))

(declare-fun m!1714759 () Bool)

(assert (=> b!1470573 m!1714759))

(declare-fun m!1714761 () Bool)

(assert (=> b!1470573 m!1714761))

(declare-fun m!1714763 () Bool)

(assert (=> b!1470573 m!1714763))

(assert (=> b!1470573 m!1714753))

(declare-fun m!1714765 () Bool)

(assert (=> b!1470574 m!1714765))

(assert (=> b!1470502 d!431253))

(declare-fun d!431255 () Bool)

(assert (=> d!431255 (= (inv!20612 (tag!3003 (rule!4516 (h!20815 l1!3136)))) (= (mod (str.len (value!87683 (tag!3003 (rule!4516 (h!20815 l1!3136))))) 2) 0))))

(assert (=> b!1470513 d!431255))

(declare-fun d!431257 () Bool)

(declare-fun res!664887 () Bool)

(declare-fun e!939021 () Bool)

(assert (=> d!431257 (=> (not res!664887) (not e!939021))))

(declare-fun semiInverseModEq!1024 (Int Int) Bool)

(assert (=> d!431257 (= res!664887 (semiInverseModEq!1024 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l1!3136))))))))

(assert (=> d!431257 (= (inv!20615 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) e!939021)))

(declare-fun b!1470579 () Bool)

(declare-fun equivClasses!983 (Int Int) Bool)

(assert (=> b!1470579 (= e!939021 (equivClasses!983 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l1!3136))))))))

(assert (= (and d!431257 res!664887) b!1470579))

(declare-fun m!1714767 () Bool)

(assert (=> d!431257 m!1714767))

(declare-fun m!1714769 () Bool)

(assert (=> b!1470579 m!1714769))

(assert (=> b!1470513 d!431257))

(declare-fun d!431259 () Bool)

(declare-fun res!664891 () Bool)

(declare-fun e!939031 () Bool)

(assert (=> d!431259 (=> (not res!664891) (not e!939031))))

(declare-fun rulesValid!998 (LexerInterface!2395 List!15479) Bool)

(assert (=> d!431259 (= res!664891 (rulesValid!998 thiss!27374 rules!4290))))

(assert (=> d!431259 (= (rulesInvariant!2184 thiss!27374 rules!4290) e!939031)))

(declare-fun b!1470591 () Bool)

(declare-datatypes ((List!15481 0))(
  ( (Nil!15415) (Cons!15415 (h!20816 String!18400) (t!135634 List!15481)) )
))
(declare-fun noDuplicateTag!998 (LexerInterface!2395 List!15479 List!15481) Bool)

(assert (=> b!1470591 (= e!939031 (noDuplicateTag!998 thiss!27374 rules!4290 Nil!15415))))

(assert (= (and d!431259 res!664891) b!1470591))

(declare-fun m!1714771 () Bool)

(assert (=> d!431259 m!1714771))

(declare-fun m!1714773 () Bool)

(assert (=> b!1470591 m!1714773))

(assert (=> b!1470503 d!431259))

(declare-fun b!1470592 () Bool)

(declare-fun e!939034 () Bool)

(declare-fun e!939033 () Bool)

(assert (=> b!1470592 (= e!939034 e!939033)))

(declare-fun c!242242 () Bool)

(assert (=> b!1470592 (= c!242242 ((_ is IntegerValue!8488) (value!87709 (h!20815 l2!3105))))))

(declare-fun b!1470593 () Bool)

(assert (=> b!1470593 (= e!939033 (inv!17 (value!87709 (h!20815 l2!3105))))))

(declare-fun b!1470594 () Bool)

(declare-fun e!939032 () Bool)

(assert (=> b!1470594 (= e!939032 (inv!15 (value!87709 (h!20815 l2!3105))))))

(declare-fun b!1470595 () Bool)

(declare-fun res!664892 () Bool)

(assert (=> b!1470595 (=> res!664892 e!939032)))

(assert (=> b!1470595 (= res!664892 (not ((_ is IntegerValue!8489) (value!87709 (h!20815 l2!3105)))))))

(assert (=> b!1470595 (= e!939033 e!939032)))

(declare-fun b!1470596 () Bool)

(assert (=> b!1470596 (= e!939034 (inv!16 (value!87709 (h!20815 l2!3105))))))

(declare-fun d!431261 () Bool)

(declare-fun c!242243 () Bool)

(assert (=> d!431261 (= c!242243 ((_ is IntegerValue!8487) (value!87709 (h!20815 l2!3105))))))

(assert (=> d!431261 (= (inv!21 (value!87709 (h!20815 l2!3105))) e!939034)))

(assert (= (and d!431261 c!242243) b!1470596))

(assert (= (and d!431261 (not c!242243)) b!1470592))

(assert (= (and b!1470592 c!242242) b!1470593))

(assert (= (and b!1470592 (not c!242242)) b!1470595))

(assert (= (and b!1470595 (not res!664892)) b!1470594))

(declare-fun m!1714775 () Bool)

(assert (=> b!1470593 m!1714775))

(declare-fun m!1714777 () Bool)

(assert (=> b!1470594 m!1714777))

(declare-fun m!1714779 () Bool)

(assert (=> b!1470596 m!1714779))

(assert (=> b!1470514 d!431261))

(declare-fun bs!345048 () Bool)

(declare-fun d!431263 () Bool)

(assert (= bs!345048 (and d!431263 d!431249)))

(declare-fun lambda!63478 () Int)

(assert (=> bs!345048 (= lambda!63478 lambda!63468)))

(declare-fun b!1470632 () Bool)

(declare-fun e!939060 () Bool)

(assert (=> b!1470632 (= e!939060 true)))

(declare-fun b!1470631 () Bool)

(declare-fun e!939059 () Bool)

(assert (=> b!1470631 (= e!939059 e!939060)))

(declare-fun b!1470630 () Bool)

(declare-fun e!939058 () Bool)

(assert (=> b!1470630 (= e!939058 e!939059)))

(assert (=> d!431263 e!939058))

(assert (= b!1470631 b!1470632))

(assert (= b!1470630 b!1470631))

(assert (= (and d!431263 ((_ is Cons!15413) rules!4290)) b!1470630))

(assert (=> b!1470632 (< (dynLambda!6994 order!9251 (toValue!4062 (transformation!2739 (h!20814 rules!4290)))) (dynLambda!6995 order!9253 lambda!63478))))

(assert (=> b!1470632 (< (dynLambda!6996 order!9255 (toChars!3921 (transformation!2739 (h!20814 rules!4290)))) (dynLambda!6995 order!9253 lambda!63478))))

(assert (=> d!431263 true))

(declare-fun e!939057 () Bool)

(assert (=> d!431263 e!939057))

(declare-fun res!664904 () Bool)

(assert (=> d!431263 (=> (not res!664904) (not e!939057))))

(declare-fun lt!511364 () Bool)

(declare-fun list!6161 (BalanceConc!10458) List!15480)

(assert (=> d!431263 (= res!664904 (= lt!511364 (forall!3761 (list!6161 (seqFromList!1724 l2!3105)) lambda!63478)))))

(declare-fun forall!3764 (BalanceConc!10458 Int) Bool)

(assert (=> d!431263 (= lt!511364 (forall!3764 (seqFromList!1724 l2!3105) lambda!63478))))

(assert (=> d!431263 (not (isEmpty!9627 rules!4290))))

(assert (=> d!431263 (= (rulesProduceEachTokenIndividually!894 thiss!27374 rules!4290 (seqFromList!1724 l2!3105)) lt!511364)))

(declare-fun b!1470629 () Bool)

(assert (=> b!1470629 (= e!939057 (= lt!511364 (rulesProduceEachTokenIndividuallyList!762 thiss!27374 rules!4290 (list!6161 (seqFromList!1724 l2!3105)))))))

(assert (= (and d!431263 res!664904) b!1470629))

(assert (=> d!431263 m!1714709))

(declare-fun m!1714815 () Bool)

(assert (=> d!431263 m!1714815))

(assert (=> d!431263 m!1714815))

(declare-fun m!1714817 () Bool)

(assert (=> d!431263 m!1714817))

(assert (=> d!431263 m!1714709))

(declare-fun m!1714819 () Bool)

(assert (=> d!431263 m!1714819))

(assert (=> d!431263 m!1714703))

(assert (=> b!1470629 m!1714709))

(assert (=> b!1470629 m!1714815))

(assert (=> b!1470629 m!1714815))

(declare-fun m!1714821 () Bool)

(assert (=> b!1470629 m!1714821))

(assert (=> b!1470504 d!431263))

(declare-fun d!431287 () Bool)

(declare-fun fromListB!742 (List!15480) BalanceConc!10458)

(assert (=> d!431287 (= (seqFromList!1724 l2!3105) (fromListB!742 l2!3105))))

(declare-fun bs!345049 () Bool)

(assert (= bs!345049 d!431287))

(declare-fun m!1714823 () Bool)

(assert (=> bs!345049 m!1714823))

(assert (=> b!1470504 d!431287))

(declare-fun d!431289 () Bool)

(declare-fun res!664909 () Bool)

(declare-fun e!939063 () Bool)

(assert (=> d!431289 (=> (not res!664909) (not e!939063))))

(declare-fun isEmpty!9629 (List!15478) Bool)

(assert (=> d!431289 (= res!664909 (not (isEmpty!9629 (originalCharacters!3601 (h!20815 l2!3105)))))))

(assert (=> d!431289 (= (inv!20616 (h!20815 l2!3105)) e!939063)))

(declare-fun b!1470637 () Bool)

(declare-fun res!664910 () Bool)

(assert (=> b!1470637 (=> (not res!664910) (not e!939063))))

(declare-fun list!6162 (BalanceConc!10456) List!15478)

(declare-fun dynLambda!7000 (Int TokenValue!2829) BalanceConc!10456)

(assert (=> b!1470637 (= res!664910 (= (originalCharacters!3601 (h!20815 l2!3105)) (list!6162 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105))))))))

(declare-fun b!1470638 () Bool)

(declare-fun size!12530 (List!15478) Int)

(assert (=> b!1470638 (= e!939063 (= (size!12526 (h!20815 l2!3105)) (size!12530 (originalCharacters!3601 (h!20815 l2!3105)))))))

(assert (= (and d!431289 res!664909) b!1470637))

(assert (= (and b!1470637 res!664910) b!1470638))

(declare-fun b_lambda!45889 () Bool)

(assert (=> (not b_lambda!45889) (not b!1470637)))

(declare-fun tb!83279 () Bool)

(declare-fun t!135591 () Bool)

(assert (=> (and b!1470517 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105))))) t!135591) tb!83279))

(declare-fun b!1470643 () Bool)

(declare-fun e!939066 () Bool)

(declare-fun tp!414914 () Bool)

(declare-fun inv!20619 (Conc!5258) Bool)

(assert (=> b!1470643 (= e!939066 (and (inv!20619 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105))))) tp!414914))))

(declare-fun result!100102 () Bool)

(declare-fun inv!20620 (BalanceConc!10456) Bool)

(assert (=> tb!83279 (= result!100102 (and (inv!20620 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105)))) e!939066))))

(assert (= tb!83279 b!1470643))

(declare-fun m!1714825 () Bool)

(assert (=> b!1470643 m!1714825))

(declare-fun m!1714827 () Bool)

(assert (=> tb!83279 m!1714827))

(assert (=> b!1470637 t!135591))

(declare-fun b_and!100811 () Bool)

(assert (= b_and!100795 (and (=> t!135591 result!100102) b_and!100811)))

(declare-fun t!135593 () Bool)

(declare-fun tb!83281 () Bool)

(assert (=> (and b!1470515 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105))))) t!135593) tb!83281))

(declare-fun result!100106 () Bool)

(assert (= result!100106 result!100102))

(assert (=> b!1470637 t!135593))

(declare-fun b_and!100813 () Bool)

(assert (= b_and!100799 (and (=> t!135593 result!100106) b_and!100813)))

(declare-fun tb!83283 () Bool)

(declare-fun t!135597 () Bool)

(assert (=> (and b!1470516 (= (toChars!3921 (transformation!2739 (h!20814 rules!4290))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105))))) t!135597) tb!83283))

(declare-fun result!100108 () Bool)

(assert (= result!100108 result!100102))

(assert (=> b!1470637 t!135597))

(declare-fun b_and!100815 () Bool)

(assert (= b_and!100803 (and (=> t!135597 result!100108) b_and!100815)))

(declare-fun m!1714829 () Bool)

(assert (=> d!431289 m!1714829))

(declare-fun m!1714831 () Bool)

(assert (=> b!1470637 m!1714831))

(assert (=> b!1470637 m!1714831))

(declare-fun m!1714833 () Bool)

(assert (=> b!1470637 m!1714833))

(declare-fun m!1714835 () Bool)

(assert (=> b!1470638 m!1714835))

(assert (=> b!1470510 d!431289))

(declare-fun d!431291 () Bool)

(assert (=> d!431291 (= (inv!20612 (tag!3003 (h!20814 rules!4290))) (= (mod (str.len (value!87683 (tag!3003 (h!20814 rules!4290)))) 2) 0))))

(assert (=> b!1470511 d!431291))

(declare-fun d!431293 () Bool)

(declare-fun res!664915 () Bool)

(declare-fun e!939071 () Bool)

(assert (=> d!431293 (=> (not res!664915) (not e!939071))))

(assert (=> d!431293 (= res!664915 (semiInverseModEq!1024 (toChars!3921 (transformation!2739 (h!20814 rules!4290))) (toValue!4062 (transformation!2739 (h!20814 rules!4290)))))))

(assert (=> d!431293 (= (inv!20615 (transformation!2739 (h!20814 rules!4290))) e!939071)))

(declare-fun b!1470648 () Bool)

(assert (=> b!1470648 (= e!939071 (equivClasses!983 (toChars!3921 (transformation!2739 (h!20814 rules!4290))) (toValue!4062 (transformation!2739 (h!20814 rules!4290)))))))

(assert (= (and d!431293 res!664915) b!1470648))

(declare-fun m!1714837 () Bool)

(assert (=> d!431293 m!1714837))

(declare-fun m!1714839 () Bool)

(assert (=> b!1470648 m!1714839))

(assert (=> b!1470511 d!431293))

(declare-fun d!431295 () Bool)

(assert (=> d!431295 (= (isEmpty!9627 rules!4290) ((_ is Nil!15413) rules!4290))))

(assert (=> b!1470501 d!431295))

(declare-fun bs!345050 () Bool)

(declare-fun d!431297 () Bool)

(assert (= bs!345050 (and d!431297 d!431249)))

(declare-fun lambda!63479 () Int)

(assert (=> bs!345050 (= lambda!63479 lambda!63468)))

(declare-fun bs!345051 () Bool)

(assert (= bs!345051 (and d!431297 d!431263)))

(assert (=> bs!345051 (= lambda!63479 lambda!63478)))

(declare-fun b!1470653 () Bool)

(declare-fun e!939076 () Bool)

(assert (=> b!1470653 (= e!939076 true)))

(declare-fun b!1470652 () Bool)

(declare-fun e!939075 () Bool)

(assert (=> b!1470652 (= e!939075 e!939076)))

(declare-fun b!1470651 () Bool)

(declare-fun e!939074 () Bool)

(assert (=> b!1470651 (= e!939074 e!939075)))

(assert (=> d!431297 e!939074))

(assert (= b!1470652 b!1470653))

(assert (= b!1470651 b!1470652))

(assert (= (and d!431297 ((_ is Cons!15413) rules!4290)) b!1470651))

(assert (=> b!1470653 (< (dynLambda!6994 order!9251 (toValue!4062 (transformation!2739 (h!20814 rules!4290)))) (dynLambda!6995 order!9253 lambda!63479))))

(assert (=> b!1470653 (< (dynLambda!6996 order!9255 (toChars!3921 (transformation!2739 (h!20814 rules!4290)))) (dynLambda!6995 order!9253 lambda!63479))))

(assert (=> d!431297 true))

(declare-fun lt!511367 () Bool)

(assert (=> d!431297 (= lt!511367 (forall!3761 l2!3105 lambda!63479))))

(declare-fun e!939073 () Bool)

(assert (=> d!431297 (= lt!511367 e!939073)))

(declare-fun res!664917 () Bool)

(assert (=> d!431297 (=> res!664917 e!939073)))

(assert (=> d!431297 (= res!664917 (not ((_ is Cons!15414) l2!3105)))))

(assert (=> d!431297 (not (isEmpty!9627 rules!4290))))

(assert (=> d!431297 (= (rulesProduceEachTokenIndividuallyList!762 thiss!27374 rules!4290 l2!3105) lt!511367)))

(declare-fun b!1470649 () Bool)

(declare-fun e!939072 () Bool)

(assert (=> b!1470649 (= e!939073 e!939072)))

(declare-fun res!664916 () Bool)

(assert (=> b!1470649 (=> (not res!664916) (not e!939072))))

(assert (=> b!1470649 (= res!664916 (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 l2!3105)))))

(declare-fun b!1470650 () Bool)

(assert (=> b!1470650 (= e!939072 (rulesProduceEachTokenIndividuallyList!762 thiss!27374 rules!4290 (t!135573 l2!3105)))))

(assert (= (and d!431297 (not res!664917)) b!1470649))

(assert (= (and b!1470649 res!664916) b!1470650))

(declare-fun m!1714841 () Bool)

(assert (=> d!431297 m!1714841))

(assert (=> d!431297 m!1714703))

(declare-fun m!1714843 () Bool)

(assert (=> b!1470649 m!1714843))

(declare-fun m!1714845 () Bool)

(assert (=> b!1470650 m!1714845))

(assert (=> b!1470512 d!431297))

(declare-fun d!431299 () Bool)

(assert (=> d!431299 (= (inv!20612 (tag!3003 (rule!4516 (h!20815 l2!3105)))) (= (mod (str.len (value!87683 (tag!3003 (rule!4516 (h!20815 l2!3105))))) 2) 0))))

(assert (=> b!1470508 d!431299))

(declare-fun d!431301 () Bool)

(declare-fun res!664918 () Bool)

(declare-fun e!939077 () Bool)

(assert (=> d!431301 (=> (not res!664918) (not e!939077))))

(assert (=> d!431301 (= res!664918 (semiInverseModEq!1024 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l2!3105))))))))

(assert (=> d!431301 (= (inv!20615 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) e!939077)))

(declare-fun b!1470654 () Bool)

(assert (=> b!1470654 (= e!939077 (equivClasses!983 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l2!3105))))))))

(assert (= (and d!431301 res!664918) b!1470654))

(declare-fun m!1714847 () Bool)

(assert (=> d!431301 m!1714847))

(declare-fun m!1714849 () Bool)

(assert (=> b!1470654 m!1714849))

(assert (=> b!1470508 d!431301))

(declare-fun d!431303 () Bool)

(declare-fun res!664919 () Bool)

(declare-fun e!939078 () Bool)

(assert (=> d!431303 (=> (not res!664919) (not e!939078))))

(assert (=> d!431303 (= res!664919 (not (isEmpty!9629 (originalCharacters!3601 (h!20815 l1!3136)))))))

(assert (=> d!431303 (= (inv!20616 (h!20815 l1!3136)) e!939078)))

(declare-fun b!1470655 () Bool)

(declare-fun res!664920 () Bool)

(assert (=> b!1470655 (=> (not res!664920) (not e!939078))))

(assert (=> b!1470655 (= res!664920 (= (originalCharacters!3601 (h!20815 l1!3136)) (list!6162 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136))))))))

(declare-fun b!1470656 () Bool)

(assert (=> b!1470656 (= e!939078 (= (size!12526 (h!20815 l1!3136)) (size!12530 (originalCharacters!3601 (h!20815 l1!3136)))))))

(assert (= (and d!431303 res!664919) b!1470655))

(assert (= (and b!1470655 res!664920) b!1470656))

(declare-fun b_lambda!45891 () Bool)

(assert (=> (not b_lambda!45891) (not b!1470655)))

(declare-fun t!135599 () Bool)

(declare-fun tb!83285 () Bool)

(assert (=> (and b!1470517 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) t!135599) tb!83285))

(declare-fun b!1470657 () Bool)

(declare-fun e!939079 () Bool)

(declare-fun tp!414915 () Bool)

(assert (=> b!1470657 (= e!939079 (and (inv!20619 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136))))) tp!414915))))

(declare-fun result!100110 () Bool)

(assert (=> tb!83285 (= result!100110 (and (inv!20620 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136)))) e!939079))))

(assert (= tb!83285 b!1470657))

(declare-fun m!1714851 () Bool)

(assert (=> b!1470657 m!1714851))

(declare-fun m!1714853 () Bool)

(assert (=> tb!83285 m!1714853))

(assert (=> b!1470655 t!135599))

(declare-fun b_and!100817 () Bool)

(assert (= b_and!100811 (and (=> t!135599 result!100110) b_and!100817)))

(declare-fun t!135601 () Bool)

(declare-fun tb!83287 () Bool)

(assert (=> (and b!1470515 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) t!135601) tb!83287))

(declare-fun result!100112 () Bool)

(assert (= result!100112 result!100110))

(assert (=> b!1470655 t!135601))

(declare-fun b_and!100819 () Bool)

(assert (= b_and!100813 (and (=> t!135601 result!100112) b_and!100819)))

(declare-fun t!135603 () Bool)

(declare-fun tb!83289 () Bool)

(assert (=> (and b!1470516 (= (toChars!3921 (transformation!2739 (h!20814 rules!4290))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) t!135603) tb!83289))

(declare-fun result!100114 () Bool)

(assert (= result!100114 result!100110))

(assert (=> b!1470655 t!135603))

(declare-fun b_and!100821 () Bool)

(assert (= b_and!100815 (and (=> t!135603 result!100114) b_and!100821)))

(declare-fun m!1714855 () Bool)

(assert (=> d!431303 m!1714855))

(declare-fun m!1714857 () Bool)

(assert (=> b!1470655 m!1714857))

(assert (=> b!1470655 m!1714857))

(declare-fun m!1714859 () Bool)

(assert (=> b!1470655 m!1714859))

(declare-fun m!1714861 () Bool)

(assert (=> b!1470656 m!1714861))

(assert (=> b!1470509 d!431303))

(declare-fun b!1470667 () Bool)

(declare-fun e!939087 () Bool)

(declare-fun tp_is_empty!6917 () Bool)

(declare-fun tp!414918 () Bool)

(assert (=> b!1470667 (= e!939087 (and tp_is_empty!6917 tp!414918))))

(assert (=> b!1470505 (= tp!414898 e!939087)))

(assert (= (and b!1470505 ((_ is Cons!15412) (originalCharacters!3601 (h!20815 l1!3136)))) b!1470667))

(declare-fun b!1470681 () Bool)

(declare-fun b_free!37131 () Bool)

(declare-fun b_next!37835 () Bool)

(assert (=> b!1470681 (= b_free!37131 (not b_next!37835))))

(declare-fun tp!414928 () Bool)

(declare-fun b_and!100829 () Bool)

(assert (=> b!1470681 (= tp!414928 b_and!100829)))

(declare-fun b_free!37133 () Bool)

(declare-fun b_next!37837 () Bool)

(assert (=> b!1470681 (= b_free!37133 (not b_next!37837))))

(declare-fun tb!83297 () Bool)

(declare-fun t!135611 () Bool)

(assert (=> (and b!1470681 (= (toChars!3921 (transformation!2739 (h!20814 (t!135572 rules!4290)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105))))) t!135611) tb!83297))

(declare-fun result!100126 () Bool)

(assert (= result!100126 result!100102))

(assert (=> b!1470637 t!135611))

(declare-fun tb!83299 () Bool)

(declare-fun t!135613 () Bool)

(assert (=> (and b!1470681 (= (toChars!3921 (transformation!2739 (h!20814 (t!135572 rules!4290)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) t!135613) tb!83299))

(declare-fun result!100128 () Bool)

(assert (= result!100128 result!100110))

(assert (=> b!1470655 t!135613))

(declare-fun tp!414931 () Bool)

(declare-fun b_and!100831 () Bool)

(assert (=> b!1470681 (= tp!414931 (and (=> t!135611 result!100126) (=> t!135613 result!100128) b_and!100831))))

(declare-fun e!939099 () Bool)

(assert (=> b!1470681 (= e!939099 (and tp!414928 tp!414931))))

(declare-fun tp!414929 () Bool)

(declare-fun b!1470680 () Bool)

(declare-fun e!939101 () Bool)

(assert (=> b!1470680 (= e!939101 (and tp!414929 (inv!20612 (tag!3003 (h!20814 (t!135572 rules!4290)))) (inv!20615 (transformation!2739 (h!20814 (t!135572 rules!4290)))) e!939099))))

(declare-fun b!1470679 () Bool)

(declare-fun e!939098 () Bool)

(declare-fun tp!414930 () Bool)

(assert (=> b!1470679 (= e!939098 (and e!939101 tp!414930))))

(assert (=> b!1470506 (= tp!414897 e!939098)))

(assert (= b!1470680 b!1470681))

(assert (= b!1470679 b!1470680))

(assert (= (and b!1470506 ((_ is Cons!15413) (t!135572 rules!4290))) b!1470679))

(declare-fun m!1714881 () Bool)

(assert (=> b!1470680 m!1714881))

(declare-fun m!1714883 () Bool)

(assert (=> b!1470680 m!1714883))

(declare-fun b!1470695 () Bool)

(declare-fun e!939106 () Bool)

(declare-fun tp!414946 () Bool)

(declare-fun tp!414944 () Bool)

(assert (=> b!1470695 (= e!939106 (and tp!414946 tp!414944))))

(declare-fun b!1470697 () Bool)

(declare-fun tp!414943 () Bool)

(declare-fun tp!414945 () Bool)

(assert (=> b!1470697 (= e!939106 (and tp!414943 tp!414945))))

(declare-fun b!1470696 () Bool)

(declare-fun tp!414942 () Bool)

(assert (=> b!1470696 (= e!939106 tp!414942)))

(declare-fun b!1470694 () Bool)

(assert (=> b!1470694 (= e!939106 tp_is_empty!6917)))

(assert (=> b!1470513 (= tp!414903 e!939106)))

(assert (= (and b!1470513 ((_ is ElementMatch!4053) (regex!2739 (rule!4516 (h!20815 l1!3136))))) b!1470694))

(assert (= (and b!1470513 ((_ is Concat!6882) (regex!2739 (rule!4516 (h!20815 l1!3136))))) b!1470695))

(assert (= (and b!1470513 ((_ is Star!4053) (regex!2739 (rule!4516 (h!20815 l1!3136))))) b!1470696))

(assert (= (and b!1470513 ((_ is Union!4053) (regex!2739 (rule!4516 (h!20815 l1!3136))))) b!1470697))

(declare-fun b!1470698 () Bool)

(declare-fun e!939107 () Bool)

(declare-fun tp!414947 () Bool)

(assert (=> b!1470698 (= e!939107 (and tp_is_empty!6917 tp!414947))))

(assert (=> b!1470514 (= tp!414908 e!939107)))

(assert (= (and b!1470514 ((_ is Cons!15412) (originalCharacters!3601 (h!20815 l2!3105)))) b!1470698))

(declare-fun b!1470726 () Bool)

(declare-fun b_free!37135 () Bool)

(declare-fun b_next!37839 () Bool)

(assert (=> b!1470726 (= b_free!37135 (not b_next!37839))))

(declare-fun tp!414962 () Bool)

(declare-fun b_and!100833 () Bool)

(assert (=> b!1470726 (= tp!414962 b_and!100833)))

(declare-fun b_free!37137 () Bool)

(declare-fun b_next!37841 () Bool)

(assert (=> b!1470726 (= b_free!37137 (not b_next!37841))))

(declare-fun t!135615 () Bool)

(declare-fun tb!83301 () Bool)

(assert (=> (and b!1470726 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105))))) t!135615) tb!83301))

(declare-fun result!100136 () Bool)

(assert (= result!100136 result!100102))

(assert (=> b!1470637 t!135615))

(declare-fun t!135617 () Bool)

(declare-fun tb!83303 () Bool)

(assert (=> (and b!1470726 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) t!135617) tb!83303))

(declare-fun result!100138 () Bool)

(assert (= result!100138 result!100110))

(assert (=> b!1470655 t!135617))

(declare-fun b_and!100835 () Bool)

(declare-fun tp!414964 () Bool)

(assert (=> b!1470726 (= tp!414964 (and (=> t!135615 result!100136) (=> t!135617 result!100138) b_and!100835))))

(declare-fun e!939141 () Bool)

(declare-fun e!939140 () Bool)

(declare-fun tp!414961 () Bool)

(declare-fun b!1470723 () Bool)

(assert (=> b!1470723 (= e!939140 (and (inv!20616 (h!20815 (t!135573 l2!3105))) e!939141 tp!414961))))

(declare-fun tp!414963 () Bool)

(declare-fun e!939139 () Bool)

(declare-fun e!939138 () Bool)

(declare-fun b!1470725 () Bool)

(assert (=> b!1470725 (= e!939139 (and tp!414963 (inv!20612 (tag!3003 (rule!4516 (h!20815 (t!135573 l2!3105))))) (inv!20615 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))) e!939138))))

(assert (=> b!1470726 (= e!939138 (and tp!414962 tp!414964))))

(assert (=> b!1470510 (= tp!414900 e!939140)))

(declare-fun b!1470724 () Bool)

(declare-fun tp!414960 () Bool)

(assert (=> b!1470724 (= e!939141 (and (inv!21 (value!87709 (h!20815 (t!135573 l2!3105)))) e!939139 tp!414960))))

(assert (= b!1470725 b!1470726))

(assert (= b!1470724 b!1470725))

(assert (= b!1470723 b!1470724))

(assert (= (and b!1470510 ((_ is Cons!15414) (t!135573 l2!3105))) b!1470723))

(declare-fun m!1714893 () Bool)

(assert (=> b!1470723 m!1714893))

(declare-fun m!1714895 () Bool)

(assert (=> b!1470725 m!1714895))

(declare-fun m!1714897 () Bool)

(assert (=> b!1470725 m!1714897))

(declare-fun m!1714899 () Bool)

(assert (=> b!1470724 m!1714899))

(declare-fun b!1470730 () Bool)

(declare-fun e!939144 () Bool)

(declare-fun tp!414977 () Bool)

(declare-fun tp!414975 () Bool)

(assert (=> b!1470730 (= e!939144 (and tp!414977 tp!414975))))

(declare-fun b!1470732 () Bool)

(declare-fun tp!414974 () Bool)

(declare-fun tp!414976 () Bool)

(assert (=> b!1470732 (= e!939144 (and tp!414974 tp!414976))))

(declare-fun b!1470731 () Bool)

(declare-fun tp!414973 () Bool)

(assert (=> b!1470731 (= e!939144 tp!414973)))

(declare-fun b!1470729 () Bool)

(assert (=> b!1470729 (= e!939144 tp_is_empty!6917)))

(assert (=> b!1470511 (= tp!414899 e!939144)))

(assert (= (and b!1470511 ((_ is ElementMatch!4053) (regex!2739 (h!20814 rules!4290)))) b!1470729))

(assert (= (and b!1470511 ((_ is Concat!6882) (regex!2739 (h!20814 rules!4290)))) b!1470730))

(assert (= (and b!1470511 ((_ is Star!4053) (regex!2739 (h!20814 rules!4290)))) b!1470731))

(assert (= (and b!1470511 ((_ is Union!4053) (regex!2739 (h!20814 rules!4290)))) b!1470732))

(declare-fun b!1470734 () Bool)

(declare-fun e!939145 () Bool)

(declare-fun tp!414982 () Bool)

(declare-fun tp!414980 () Bool)

(assert (=> b!1470734 (= e!939145 (and tp!414982 tp!414980))))

(declare-fun b!1470736 () Bool)

(declare-fun tp!414979 () Bool)

(declare-fun tp!414981 () Bool)

(assert (=> b!1470736 (= e!939145 (and tp!414979 tp!414981))))

(declare-fun b!1470735 () Bool)

(declare-fun tp!414978 () Bool)

(assert (=> b!1470735 (= e!939145 tp!414978)))

(declare-fun b!1470733 () Bool)

(assert (=> b!1470733 (= e!939145 tp_is_empty!6917)))

(assert (=> b!1470508 (= tp!414907 e!939145)))

(assert (= (and b!1470508 ((_ is ElementMatch!4053) (regex!2739 (rule!4516 (h!20815 l2!3105))))) b!1470733))

(assert (= (and b!1470508 ((_ is Concat!6882) (regex!2739 (rule!4516 (h!20815 l2!3105))))) b!1470734))

(assert (= (and b!1470508 ((_ is Star!4053) (regex!2739 (rule!4516 (h!20815 l2!3105))))) b!1470735))

(assert (= (and b!1470508 ((_ is Union!4053) (regex!2739 (rule!4516 (h!20815 l2!3105))))) b!1470736))

(declare-fun b!1470740 () Bool)

(declare-fun b_free!37139 () Bool)

(declare-fun b_next!37843 () Bool)

(assert (=> b!1470740 (= b_free!37139 (not b_next!37843))))

(declare-fun tp!414985 () Bool)

(declare-fun b_and!100837 () Bool)

(assert (=> b!1470740 (= tp!414985 b_and!100837)))

(declare-fun b_free!37141 () Bool)

(declare-fun b_next!37845 () Bool)

(assert (=> b!1470740 (= b_free!37141 (not b_next!37845))))

(declare-fun tb!83305 () Bool)

(declare-fun t!135619 () Bool)

(assert (=> (and b!1470740 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105))))) t!135619) tb!83305))

(declare-fun result!100140 () Bool)

(assert (= result!100140 result!100102))

(assert (=> b!1470637 t!135619))

(declare-fun t!135621 () Bool)

(declare-fun tb!83307 () Bool)

(assert (=> (and b!1470740 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) t!135621) tb!83307))

(declare-fun result!100142 () Bool)

(assert (= result!100142 result!100110))

(assert (=> b!1470655 t!135621))

(declare-fun tp!414987 () Bool)

(declare-fun b_and!100839 () Bool)

(assert (=> b!1470740 (= tp!414987 (and (=> t!135619 result!100140) (=> t!135621 result!100142) b_and!100839))))

(declare-fun e!939151 () Bool)

(declare-fun e!939150 () Bool)

(declare-fun b!1470737 () Bool)

(declare-fun tp!414984 () Bool)

(assert (=> b!1470737 (= e!939150 (and (inv!20616 (h!20815 (t!135573 l1!3136))) e!939151 tp!414984))))

(declare-fun e!939149 () Bool)

(declare-fun b!1470739 () Bool)

(declare-fun tp!414986 () Bool)

(declare-fun e!939148 () Bool)

(assert (=> b!1470739 (= e!939149 (and tp!414986 (inv!20612 (tag!3003 (rule!4516 (h!20815 (t!135573 l1!3136))))) (inv!20615 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))) e!939148))))

(assert (=> b!1470740 (= e!939148 (and tp!414985 tp!414987))))

(assert (=> b!1470509 (= tp!414906 e!939150)))

(declare-fun b!1470738 () Bool)

(declare-fun tp!414983 () Bool)

(assert (=> b!1470738 (= e!939151 (and (inv!21 (value!87709 (h!20815 (t!135573 l1!3136)))) e!939149 tp!414983))))

(assert (= b!1470739 b!1470740))

(assert (= b!1470738 b!1470739))

(assert (= b!1470737 b!1470738))

(assert (= (and b!1470509 ((_ is Cons!15414) (t!135573 l1!3136))) b!1470737))

(declare-fun m!1714901 () Bool)

(assert (=> b!1470737 m!1714901))

(declare-fun m!1714903 () Bool)

(assert (=> b!1470739 m!1714903))

(declare-fun m!1714905 () Bool)

(assert (=> b!1470739 m!1714905))

(declare-fun m!1714907 () Bool)

(assert (=> b!1470738 m!1714907))

(declare-fun b_lambda!45895 () Bool)

(assert (= b_lambda!45889 (or (and b!1470740 b_free!37141 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))))) (and b!1470517 b_free!37121 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))))) (and b!1470515 b_free!37125) (and b!1470681 b_free!37133 (= (toChars!3921 (transformation!2739 (h!20814 (t!135572 rules!4290)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))))) (and b!1470516 b_free!37129 (= (toChars!3921 (transformation!2739 (h!20814 rules!4290))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))))) (and b!1470726 b_free!37137 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))))) b_lambda!45895)))

(declare-fun b_lambda!45897 () Bool)

(assert (= b_lambda!45891 (or (and b!1470681 b_free!37133 (= (toChars!3921 (transformation!2739 (h!20814 (t!135572 rules!4290)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))))) (and b!1470726 b_free!37137 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))))) (and b!1470515 b_free!37125 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))))) (and b!1470740 b_free!37141 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))))) (and b!1470516 b_free!37129 (= (toChars!3921 (transformation!2739 (h!20814 rules!4290))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))))) (and b!1470517 b_free!37121) b_lambda!45897)))

(check-sat (not b!1470638) (not b_next!37837) (not b_lambda!45897) (not b!1470651) b_and!100829 (not b_next!37833) (not b!1470723) (not b!1470656) b_and!100833 (not b!1470732) b_and!100839 (not b!1470629) b_and!100797 (not b!1470564) (not b!1470739) (not b!1470657) (not b!1470697) (not b_next!37835) (not d!431257) (not d!431287) b_and!100793 (not b!1470554) (not b!1470643) b_and!100801 (not b!1470648) (not b!1470736) (not b!1470696) (not b!1470649) (not tb!83279) (not b!1470541) (not d!431263) (not b!1470734) (not b!1470737) (not b_next!37831) (not d!431301) b_and!100819 b_and!100831 (not d!431259) b_and!100821 tp_is_empty!6917 (not b_next!37845) (not b!1470655) b_and!100835 (not b!1470731) (not b!1470543) (not b!1470594) (not b_next!37843) (not b_next!37825) (not b!1470725) (not b!1470555) (not b!1470591) (not b!1470695) (not b!1470724) (not b!1470654) (not b!1470650) (not b!1470630) (not b_next!37839) (not tb!83285) (not b!1470637) (not d!431297) (not b_next!37823) b_and!100817 (not b_next!37841) (not b_next!37829) (not b!1470596) (not b!1470593) (not d!431303) (not b!1470680) (not b!1470540) (not b!1470579) (not b!1470679) (not b_lambda!45895) (not b!1470573) (not b!1470574) b_and!100837 (not b_next!37827) (not d!431249) (not d!431293) (not b!1470667) (not b!1470698) (not d!431289) (not b!1470730) (not b!1470738) (not b!1470735))
(check-sat (not b_next!37837) b_and!100797 (not b_next!37835) b_and!100793 b_and!100801 b_and!100829 (not b_next!37833) (not b_next!37839) (not b_next!37829) b_and!100833 b_and!100839 (not b_next!37831) b_and!100819 b_and!100831 b_and!100821 b_and!100835 (not b_next!37845) (not b_next!37843) (not b_next!37825) (not b_next!37823) b_and!100817 (not b_next!37841) b_and!100837 (not b_next!37827))
(get-model)

(declare-fun d!431311 () Bool)

(declare-fun lt!511372 () Int)

(assert (=> d!431311 (>= lt!511372 0)))

(declare-fun e!939187 () Int)

(assert (=> d!431311 (= lt!511372 e!939187)))

(declare-fun c!242254 () Bool)

(assert (=> d!431311 (= c!242254 ((_ is Nil!15412) (originalCharacters!3601 (h!20815 l2!3105))))))

(assert (=> d!431311 (= (size!12530 (originalCharacters!3601 (h!20815 l2!3105))) lt!511372)))

(declare-fun b!1470792 () Bool)

(assert (=> b!1470792 (= e!939187 0)))

(declare-fun b!1470793 () Bool)

(assert (=> b!1470793 (= e!939187 (+ 1 (size!12530 (t!135571 (originalCharacters!3601 (h!20815 l2!3105))))))))

(assert (= (and d!431311 c!242254) b!1470792))

(assert (= (and d!431311 (not c!242254)) b!1470793))

(declare-fun m!1714929 () Bool)

(assert (=> b!1470793 m!1714929))

(assert (=> b!1470638 d!431311))

(declare-fun d!431313 () Bool)

(assert (=> d!431313 true))

(declare-fun lambda!63486 () Int)

(declare-fun order!9263 () Int)

(declare-fun dynLambda!7001 (Int Int) Int)

(assert (=> d!431313 (< (dynLambda!6994 order!9251 (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) (dynLambda!7001 order!9263 lambda!63486))))

(declare-fun Forall2!468 (Int) Bool)

(assert (=> d!431313 (= (equivClasses!983 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) (Forall2!468 lambda!63486))))

(declare-fun bs!345055 () Bool)

(assert (= bs!345055 d!431313))

(declare-fun m!1714931 () Bool)

(assert (=> bs!345055 m!1714931))

(assert (=> b!1470579 d!431313))

(declare-fun d!431315 () Bool)

(declare-fun list!6163 (Conc!5258) List!15478)

(assert (=> d!431315 (= (list!6162 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105)))) (list!6163 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105))))))))

(declare-fun bs!345056 () Bool)

(assert (= bs!345056 d!431315))

(declare-fun m!1714933 () Bool)

(assert (=> bs!345056 m!1714933))

(assert (=> b!1470637 d!431315))

(declare-fun bs!345057 () Bool)

(declare-fun d!431317 () Bool)

(assert (= bs!345057 (and d!431317 d!431249)))

(declare-fun lambda!63487 () Int)

(assert (=> bs!345057 (= lambda!63487 lambda!63468)))

(declare-fun bs!345058 () Bool)

(assert (= bs!345058 (and d!431317 d!431263)))

(assert (=> bs!345058 (= lambda!63487 lambda!63478)))

(declare-fun bs!345059 () Bool)

(assert (= bs!345059 (and d!431317 d!431297)))

(assert (=> bs!345059 (= lambda!63487 lambda!63479)))

(declare-fun b!1470802 () Bool)

(declare-fun e!939194 () Bool)

(assert (=> b!1470802 (= e!939194 true)))

(declare-fun b!1470801 () Bool)

(declare-fun e!939193 () Bool)

(assert (=> b!1470801 (= e!939193 e!939194)))

(declare-fun b!1470800 () Bool)

(declare-fun e!939192 () Bool)

(assert (=> b!1470800 (= e!939192 e!939193)))

(assert (=> d!431317 e!939192))

(assert (= b!1470801 b!1470802))

(assert (= b!1470800 b!1470801))

(assert (= (and d!431317 ((_ is Cons!15413) rules!4290)) b!1470800))

(assert (=> b!1470802 (< (dynLambda!6994 order!9251 (toValue!4062 (transformation!2739 (h!20814 rules!4290)))) (dynLambda!6995 order!9253 lambda!63487))))

(assert (=> b!1470802 (< (dynLambda!6996 order!9255 (toChars!3921 (transformation!2739 (h!20814 rules!4290)))) (dynLambda!6995 order!9253 lambda!63487))))

(assert (=> d!431317 true))

(declare-fun lt!511373 () Bool)

(assert (=> d!431317 (= lt!511373 (forall!3761 (list!6161 (seqFromList!1724 l2!3105)) lambda!63487))))

(declare-fun e!939191 () Bool)

(assert (=> d!431317 (= lt!511373 e!939191)))

(declare-fun res!664934 () Bool)

(assert (=> d!431317 (=> res!664934 e!939191)))

(assert (=> d!431317 (= res!664934 (not ((_ is Cons!15414) (list!6161 (seqFromList!1724 l2!3105)))))))

(assert (=> d!431317 (not (isEmpty!9627 rules!4290))))

(assert (=> d!431317 (= (rulesProduceEachTokenIndividuallyList!762 thiss!27374 rules!4290 (list!6161 (seqFromList!1724 l2!3105))) lt!511373)))

(declare-fun b!1470798 () Bool)

(declare-fun e!939190 () Bool)

(assert (=> b!1470798 (= e!939191 e!939190)))

(declare-fun res!664933 () Bool)

(assert (=> b!1470798 (=> (not res!664933) (not e!939190))))

(assert (=> b!1470798 (= res!664933 (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 (list!6161 (seqFromList!1724 l2!3105)))))))

(declare-fun b!1470799 () Bool)

(assert (=> b!1470799 (= e!939190 (rulesProduceEachTokenIndividuallyList!762 thiss!27374 rules!4290 (t!135573 (list!6161 (seqFromList!1724 l2!3105)))))))

(assert (= (and d!431317 (not res!664934)) b!1470798))

(assert (= (and b!1470798 res!664933) b!1470799))

(assert (=> d!431317 m!1714815))

(declare-fun m!1714935 () Bool)

(assert (=> d!431317 m!1714935))

(assert (=> d!431317 m!1714703))

(declare-fun m!1714937 () Bool)

(assert (=> b!1470798 m!1714937))

(declare-fun m!1714939 () Bool)

(assert (=> b!1470799 m!1714939))

(assert (=> b!1470629 d!431317))

(declare-fun d!431319 () Bool)

(declare-fun list!6164 (Conc!5259) List!15480)

(assert (=> d!431319 (= (list!6161 (seqFromList!1724 l2!3105)) (list!6164 (c!242235 (seqFromList!1724 l2!3105))))))

(declare-fun bs!345060 () Bool)

(assert (= bs!345060 d!431319))

(declare-fun m!1714941 () Bool)

(assert (=> bs!345060 m!1714941))

(assert (=> b!1470629 d!431319))

(declare-fun d!431321 () Bool)

(declare-fun charsToBigInt!1 (List!15477) Int)

(assert (=> d!431321 (= (inv!17 (value!87709 (h!20815 l2!3105))) (= (charsToBigInt!1 (text!20251 (value!87709 (h!20815 l2!3105)))) (value!87702 (value!87709 (h!20815 l2!3105)))))))

(declare-fun bs!345061 () Bool)

(assert (= bs!345061 d!431321))

(declare-fun m!1714943 () Bool)

(assert (=> bs!345061 m!1714943))

(assert (=> b!1470593 d!431321))

(declare-fun d!431323 () Bool)

(declare-fun res!664939 () Bool)

(declare-fun e!939199 () Bool)

(assert (=> d!431323 (=> res!664939 e!939199)))

(assert (=> d!431323 (= res!664939 ((_ is Nil!15414) (list!6161 (seqFromList!1724 l2!3105))))))

(assert (=> d!431323 (= (forall!3761 (list!6161 (seqFromList!1724 l2!3105)) lambda!63478) e!939199)))

(declare-fun b!1470807 () Bool)

(declare-fun e!939200 () Bool)

(assert (=> b!1470807 (= e!939199 e!939200)))

(declare-fun res!664940 () Bool)

(assert (=> b!1470807 (=> (not res!664940) (not e!939200))))

(declare-fun dynLambda!7002 (Int Token!5140) Bool)

(assert (=> b!1470807 (= res!664940 (dynLambda!7002 lambda!63478 (h!20815 (list!6161 (seqFromList!1724 l2!3105)))))))

(declare-fun b!1470808 () Bool)

(assert (=> b!1470808 (= e!939200 (forall!3761 (t!135573 (list!6161 (seqFromList!1724 l2!3105))) lambda!63478))))

(assert (= (and d!431323 (not res!664939)) b!1470807))

(assert (= (and b!1470807 res!664940) b!1470808))

(declare-fun b_lambda!45903 () Bool)

(assert (=> (not b_lambda!45903) (not b!1470807)))

(declare-fun m!1714945 () Bool)

(assert (=> b!1470807 m!1714945))

(declare-fun m!1714947 () Bool)

(assert (=> b!1470808 m!1714947))

(assert (=> d!431263 d!431323))

(assert (=> d!431263 d!431319))

(declare-fun d!431325 () Bool)

(declare-fun lt!511376 () Bool)

(assert (=> d!431325 (= lt!511376 (forall!3761 (list!6161 (seqFromList!1724 l2!3105)) lambda!63478))))

(declare-fun forall!3765 (Conc!5259 Int) Bool)

(assert (=> d!431325 (= lt!511376 (forall!3765 (c!242235 (seqFromList!1724 l2!3105)) lambda!63478))))

(assert (=> d!431325 (= (forall!3764 (seqFromList!1724 l2!3105) lambda!63478) lt!511376)))

(declare-fun bs!345062 () Bool)

(assert (= bs!345062 d!431325))

(assert (=> bs!345062 m!1714709))

(assert (=> bs!345062 m!1714815))

(assert (=> bs!345062 m!1714815))

(assert (=> bs!345062 m!1714817))

(declare-fun m!1714949 () Bool)

(assert (=> bs!345062 m!1714949))

(assert (=> d!431263 d!431325))

(assert (=> d!431263 d!431295))

(declare-fun d!431327 () Bool)

(assert (=> d!431327 (= (isEmpty!9629 (originalCharacters!3601 (h!20815 l2!3105))) ((_ is Nil!15412) (originalCharacters!3601 (h!20815 l2!3105))))))

(assert (=> d!431289 d!431327))

(declare-fun d!431329 () Bool)

(assert (=> d!431329 true))

(declare-fun lambda!63490 () Int)

(declare-fun order!9265 () Int)

(declare-fun dynLambda!7003 (Int Int) Int)

(assert (=> d!431329 (< (dynLambda!6996 order!9255 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) (dynLambda!7003 order!9265 lambda!63490))))

(assert (=> d!431329 true))

(assert (=> d!431329 (< (dynLambda!6994 order!9251 (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) (dynLambda!7003 order!9265 lambda!63490))))

(declare-fun Forall!566 (Int) Bool)

(assert (=> d!431329 (= (semiInverseModEq!1024 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) (Forall!566 lambda!63490))))

(declare-fun bs!345063 () Bool)

(assert (= bs!345063 d!431329))

(declare-fun m!1714951 () Bool)

(assert (=> bs!345063 m!1714951))

(assert (=> d!431257 d!431329))

(declare-fun d!431331 () Bool)

(declare-fun res!664945 () Bool)

(declare-fun e!939205 () Bool)

(assert (=> d!431331 (=> res!664945 e!939205)))

(assert (=> d!431331 (= res!664945 ((_ is Nil!15413) rules!4290))))

(assert (=> d!431331 (= (noDuplicateTag!998 thiss!27374 rules!4290 Nil!15415) e!939205)))

(declare-fun b!1470817 () Bool)

(declare-fun e!939206 () Bool)

(assert (=> b!1470817 (= e!939205 e!939206)))

(declare-fun res!664946 () Bool)

(assert (=> b!1470817 (=> (not res!664946) (not e!939206))))

(declare-fun contains!2916 (List!15481 String!18400) Bool)

(assert (=> b!1470817 (= res!664946 (not (contains!2916 Nil!15415 (tag!3003 (h!20814 rules!4290)))))))

(declare-fun b!1470818 () Bool)

(assert (=> b!1470818 (= e!939206 (noDuplicateTag!998 thiss!27374 (t!135572 rules!4290) (Cons!15415 (tag!3003 (h!20814 rules!4290)) Nil!15415)))))

(assert (= (and d!431331 (not res!664945)) b!1470817))

(assert (= (and b!1470817 res!664946) b!1470818))

(declare-fun m!1714953 () Bool)

(assert (=> b!1470817 m!1714953))

(declare-fun m!1714955 () Bool)

(assert (=> b!1470818 m!1714955))

(assert (=> b!1470591 d!431331))

(declare-fun d!431333 () Bool)

(assert (=> d!431333 (= (isEmpty!9629 (originalCharacters!3601 (h!20815 l1!3136))) ((_ is Nil!15412) (originalCharacters!3601 (h!20815 l1!3136))))))

(assert (=> d!431303 d!431333))

(declare-fun d!431335 () Bool)

(declare-fun isBalanced!1571 (Conc!5258) Bool)

(assert (=> d!431335 (= (inv!20620 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105)))) (isBalanced!1571 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105))))))))

(declare-fun bs!345064 () Bool)

(assert (= bs!345064 d!431335))

(declare-fun m!1714957 () Bool)

(assert (=> bs!345064 m!1714957))

(assert (=> tb!83279 d!431335))

(declare-fun d!431337 () Bool)

(declare-fun res!664947 () Bool)

(declare-fun e!939207 () Bool)

(assert (=> d!431337 (=> (not res!664947) (not e!939207))))

(assert (=> d!431337 (= res!664947 (not (isEmpty!9629 (originalCharacters!3601 (h!20815 (t!135573 l1!3136))))))))

(assert (=> d!431337 (= (inv!20616 (h!20815 (t!135573 l1!3136))) e!939207)))

(declare-fun b!1470819 () Bool)

(declare-fun res!664948 () Bool)

(assert (=> b!1470819 (=> (not res!664948) (not e!939207))))

(assert (=> b!1470819 (= res!664948 (= (originalCharacters!3601 (h!20815 (t!135573 l1!3136))) (list!6162 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))) (value!87709 (h!20815 (t!135573 l1!3136)))))))))

(declare-fun b!1470820 () Bool)

(assert (=> b!1470820 (= e!939207 (= (size!12526 (h!20815 (t!135573 l1!3136))) (size!12530 (originalCharacters!3601 (h!20815 (t!135573 l1!3136))))))))

(assert (= (and d!431337 res!664947) b!1470819))

(assert (= (and b!1470819 res!664948) b!1470820))

(declare-fun b_lambda!45905 () Bool)

(assert (=> (not b_lambda!45905) (not b!1470819)))

(declare-fun tb!83321 () Bool)

(declare-fun t!135637 () Bool)

(assert (=> (and b!1470726 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136)))))) t!135637) tb!83321))

(declare-fun b!1470821 () Bool)

(declare-fun e!939208 () Bool)

(declare-fun tp!415039 () Bool)

(assert (=> b!1470821 (= e!939208 (and (inv!20619 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))) (value!87709 (h!20815 (t!135573 l1!3136)))))) tp!415039))))

(declare-fun result!100162 () Bool)

(assert (=> tb!83321 (= result!100162 (and (inv!20620 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))) (value!87709 (h!20815 (t!135573 l1!3136))))) e!939208))))

(assert (= tb!83321 b!1470821))

(declare-fun m!1714959 () Bool)

(assert (=> b!1470821 m!1714959))

(declare-fun m!1714961 () Bool)

(assert (=> tb!83321 m!1714961))

(assert (=> b!1470819 t!135637))

(declare-fun b_and!100853 () Bool)

(assert (= b_and!100835 (and (=> t!135637 result!100162) b_and!100853)))

(declare-fun tb!83323 () Bool)

(declare-fun t!135639 () Bool)

(assert (=> (and b!1470681 (= (toChars!3921 (transformation!2739 (h!20814 (t!135572 rules!4290)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136)))))) t!135639) tb!83323))

(declare-fun result!100164 () Bool)

(assert (= result!100164 result!100162))

(assert (=> b!1470819 t!135639))

(declare-fun b_and!100855 () Bool)

(assert (= b_and!100831 (and (=> t!135639 result!100164) b_and!100855)))

(declare-fun tb!83325 () Bool)

(declare-fun t!135641 () Bool)

(assert (=> (and b!1470516 (= (toChars!3921 (transformation!2739 (h!20814 rules!4290))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136)))))) t!135641) tb!83325))

(declare-fun result!100166 () Bool)

(assert (= result!100166 result!100162))

(assert (=> b!1470819 t!135641))

(declare-fun b_and!100857 () Bool)

(assert (= b_and!100821 (and (=> t!135641 result!100166) b_and!100857)))

(declare-fun t!135643 () Bool)

(declare-fun tb!83327 () Bool)

(assert (=> (and b!1470517 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136)))))) t!135643) tb!83327))

(declare-fun result!100168 () Bool)

(assert (= result!100168 result!100162))

(assert (=> b!1470819 t!135643))

(declare-fun b_and!100859 () Bool)

(assert (= b_and!100817 (and (=> t!135643 result!100168) b_and!100859)))

(declare-fun t!135645 () Bool)

(declare-fun tb!83329 () Bool)

(assert (=> (and b!1470740 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136)))))) t!135645) tb!83329))

(declare-fun result!100170 () Bool)

(assert (= result!100170 result!100162))

(assert (=> b!1470819 t!135645))

(declare-fun b_and!100861 () Bool)

(assert (= b_and!100839 (and (=> t!135645 result!100170) b_and!100861)))

(declare-fun tb!83331 () Bool)

(declare-fun t!135647 () Bool)

(assert (=> (and b!1470515 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136)))))) t!135647) tb!83331))

(declare-fun result!100172 () Bool)

(assert (= result!100172 result!100162))

(assert (=> b!1470819 t!135647))

(declare-fun b_and!100863 () Bool)

(assert (= b_and!100819 (and (=> t!135647 result!100172) b_and!100863)))

(declare-fun m!1714963 () Bool)

(assert (=> d!431337 m!1714963))

(declare-fun m!1714965 () Bool)

(assert (=> b!1470819 m!1714965))

(assert (=> b!1470819 m!1714965))

(declare-fun m!1714967 () Bool)

(assert (=> b!1470819 m!1714967))

(declare-fun m!1714969 () Bool)

(assert (=> b!1470820 m!1714969))

(assert (=> b!1470737 d!431337))

(declare-fun d!431339 () Bool)

(assert (=> d!431339 true))

(declare-fun lt!511379 () Bool)

(declare-fun rulesValidInductive!837 (LexerInterface!2395 List!15479) Bool)

(assert (=> d!431339 (= lt!511379 (rulesValidInductive!837 thiss!27374 rules!4290))))

(declare-fun lambda!63493 () Int)

(declare-fun forall!3766 (List!15479 Int) Bool)

(assert (=> d!431339 (= lt!511379 (forall!3766 rules!4290 lambda!63493))))

(assert (=> d!431339 (= (rulesValid!998 thiss!27374 rules!4290) lt!511379)))

(declare-fun bs!345065 () Bool)

(assert (= bs!345065 d!431339))

(declare-fun m!1714971 () Bool)

(assert (=> bs!345065 m!1714971))

(declare-fun m!1714973 () Bool)

(assert (=> bs!345065 m!1714973))

(assert (=> d!431259 d!431339))

(declare-fun d!431341 () Bool)

(declare-fun c!242257 () Bool)

(assert (=> d!431341 (= c!242257 ((_ is Node!5258) (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105))))))))

(declare-fun e!939213 () Bool)

(assert (=> d!431341 (= (inv!20619 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105))))) e!939213)))

(declare-fun b!1470830 () Bool)

(declare-fun inv!20621 (Conc!5258) Bool)

(assert (=> b!1470830 (= e!939213 (inv!20621 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105))))))))

(declare-fun b!1470831 () Bool)

(declare-fun e!939214 () Bool)

(assert (=> b!1470831 (= e!939213 e!939214)))

(declare-fun res!664951 () Bool)

(assert (=> b!1470831 (= res!664951 (not ((_ is Leaf!7829) (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105)))))))))

(assert (=> b!1470831 (=> res!664951 e!939214)))

(declare-fun b!1470832 () Bool)

(declare-fun inv!20622 (Conc!5258) Bool)

(assert (=> b!1470832 (= e!939214 (inv!20622 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105))))))))

(assert (= (and d!431341 c!242257) b!1470830))

(assert (= (and d!431341 (not c!242257)) b!1470831))

(assert (= (and b!1470831 (not res!664951)) b!1470832))

(declare-fun m!1714975 () Bool)

(assert (=> b!1470830 m!1714975))

(declare-fun m!1714977 () Bool)

(assert (=> b!1470832 m!1714977))

(assert (=> b!1470643 d!431341))

(declare-fun d!431343 () Bool)

(declare-fun charsToBigInt!0 (List!15477 Int) Int)

(assert (=> d!431343 (= (inv!15 (value!87709 (h!20815 l2!3105))) (= (charsToBigInt!0 (text!20252 (value!87709 (h!20815 l2!3105))) 0) (value!87705 (value!87709 (h!20815 l2!3105)))))))

(declare-fun bs!345066 () Bool)

(assert (= bs!345066 d!431343))

(declare-fun m!1714979 () Bool)

(assert (=> bs!345066 m!1714979))

(assert (=> b!1470594 d!431343))

(declare-fun d!431345 () Bool)

(assert (=> d!431345 (= (inv!20612 (tag!3003 (h!20814 (t!135572 rules!4290)))) (= (mod (str.len (value!87683 (tag!3003 (h!20814 (t!135572 rules!4290))))) 2) 0))))

(assert (=> b!1470680 d!431345))

(declare-fun d!431347 () Bool)

(declare-fun res!664952 () Bool)

(declare-fun e!939215 () Bool)

(assert (=> d!431347 (=> (not res!664952) (not e!939215))))

(assert (=> d!431347 (= res!664952 (semiInverseModEq!1024 (toChars!3921 (transformation!2739 (h!20814 (t!135572 rules!4290)))) (toValue!4062 (transformation!2739 (h!20814 (t!135572 rules!4290))))))))

(assert (=> d!431347 (= (inv!20615 (transformation!2739 (h!20814 (t!135572 rules!4290)))) e!939215)))

(declare-fun b!1470833 () Bool)

(assert (=> b!1470833 (= e!939215 (equivClasses!983 (toChars!3921 (transformation!2739 (h!20814 (t!135572 rules!4290)))) (toValue!4062 (transformation!2739 (h!20814 (t!135572 rules!4290))))))))

(assert (= (and d!431347 res!664952) b!1470833))

(declare-fun m!1714981 () Bool)

(assert (=> d!431347 m!1714981))

(declare-fun m!1714983 () Bool)

(assert (=> b!1470833 m!1714983))

(assert (=> b!1470680 d!431347))

(declare-fun d!431349 () Bool)

(assert (=> d!431349 (= (inv!15 (value!87709 (h!20815 l1!3136))) (= (charsToBigInt!0 (text!20252 (value!87709 (h!20815 l1!3136))) 0) (value!87705 (value!87709 (h!20815 l1!3136)))))))

(declare-fun bs!345067 () Bool)

(assert (= bs!345067 d!431349))

(declare-fun m!1714985 () Bool)

(assert (=> bs!345067 m!1714985))

(assert (=> b!1470541 d!431349))

(declare-fun d!431351 () Bool)

(declare-fun lt!511380 () Int)

(assert (=> d!431351 (>= lt!511380 0)))

(declare-fun e!939216 () Int)

(assert (=> d!431351 (= lt!511380 e!939216)))

(declare-fun c!242258 () Bool)

(assert (=> d!431351 (= c!242258 ((_ is Nil!15412) (originalCharacters!3601 (h!20815 l1!3136))))))

(assert (=> d!431351 (= (size!12530 (originalCharacters!3601 (h!20815 l1!3136))) lt!511380)))

(declare-fun b!1470834 () Bool)

(assert (=> b!1470834 (= e!939216 0)))

(declare-fun b!1470835 () Bool)

(assert (=> b!1470835 (= e!939216 (+ 1 (size!12530 (t!135571 (originalCharacters!3601 (h!20815 l1!3136))))))))

(assert (= (and d!431351 c!242258) b!1470834))

(assert (= (and d!431351 (not c!242258)) b!1470835))

(declare-fun m!1714987 () Bool)

(assert (=> b!1470835 m!1714987))

(assert (=> b!1470656 d!431351))

(declare-fun d!431353 () Bool)

(assert (=> d!431353 (= (inv!20612 (tag!3003 (rule!4516 (h!20815 (t!135573 l1!3136))))) (= (mod (str.len (value!87683 (tag!3003 (rule!4516 (h!20815 (t!135573 l1!3136)))))) 2) 0))))

(assert (=> b!1470739 d!431353))

(declare-fun d!431355 () Bool)

(declare-fun res!664953 () Bool)

(declare-fun e!939217 () Bool)

(assert (=> d!431355 (=> (not res!664953) (not e!939217))))

(assert (=> d!431355 (= res!664953 (semiInverseModEq!1024 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))) (toValue!4062 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136)))))))))

(assert (=> d!431355 (= (inv!20615 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))) e!939217)))

(declare-fun b!1470836 () Bool)

(assert (=> b!1470836 (= e!939217 (equivClasses!983 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))) (toValue!4062 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136)))))))))

(assert (= (and d!431355 res!664953) b!1470836))

(declare-fun m!1714989 () Bool)

(assert (=> d!431355 m!1714989))

(declare-fun m!1714991 () Bool)

(assert (=> b!1470836 m!1714991))

(assert (=> b!1470739 d!431355))

(declare-fun b!1470837 () Bool)

(declare-fun e!939220 () Bool)

(declare-fun e!939219 () Bool)

(assert (=> b!1470837 (= e!939220 e!939219)))

(declare-fun c!242259 () Bool)

(assert (=> b!1470837 (= c!242259 ((_ is IntegerValue!8488) (value!87709 (h!20815 (t!135573 l1!3136)))))))

(declare-fun b!1470838 () Bool)

(assert (=> b!1470838 (= e!939219 (inv!17 (value!87709 (h!20815 (t!135573 l1!3136)))))))

(declare-fun b!1470839 () Bool)

(declare-fun e!939218 () Bool)

(assert (=> b!1470839 (= e!939218 (inv!15 (value!87709 (h!20815 (t!135573 l1!3136)))))))

(declare-fun b!1470840 () Bool)

(declare-fun res!664954 () Bool)

(assert (=> b!1470840 (=> res!664954 e!939218)))

(assert (=> b!1470840 (= res!664954 (not ((_ is IntegerValue!8489) (value!87709 (h!20815 (t!135573 l1!3136))))))))

(assert (=> b!1470840 (= e!939219 e!939218)))

(declare-fun b!1470841 () Bool)

(assert (=> b!1470841 (= e!939220 (inv!16 (value!87709 (h!20815 (t!135573 l1!3136)))))))

(declare-fun d!431357 () Bool)

(declare-fun c!242260 () Bool)

(assert (=> d!431357 (= c!242260 ((_ is IntegerValue!8487) (value!87709 (h!20815 (t!135573 l1!3136)))))))

(assert (=> d!431357 (= (inv!21 (value!87709 (h!20815 (t!135573 l1!3136)))) e!939220)))

(assert (= (and d!431357 c!242260) b!1470841))

(assert (= (and d!431357 (not c!242260)) b!1470837))

(assert (= (and b!1470837 c!242259) b!1470838))

(assert (= (and b!1470837 (not c!242259)) b!1470840))

(assert (= (and b!1470840 (not res!664954)) b!1470839))

(declare-fun m!1714993 () Bool)

(assert (=> b!1470838 m!1714993))

(declare-fun m!1714995 () Bool)

(assert (=> b!1470839 m!1714995))

(declare-fun m!1714997 () Bool)

(assert (=> b!1470841 m!1714997))

(assert (=> b!1470738 d!431357))

(declare-fun d!431359 () Bool)

(assert (=> d!431359 (= (inv!17 (value!87709 (h!20815 l1!3136))) (= (charsToBigInt!1 (text!20251 (value!87709 (h!20815 l1!3136)))) (value!87702 (value!87709 (h!20815 l1!3136)))))))

(declare-fun bs!345068 () Bool)

(assert (= bs!345068 d!431359))

(declare-fun m!1714999 () Bool)

(assert (=> bs!345068 m!1714999))

(assert (=> b!1470540 d!431359))

(declare-fun d!431361 () Bool)

(assert (=> d!431361 (= (list!6162 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136)))) (list!6163 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136))))))))

(declare-fun bs!345069 () Bool)

(assert (= bs!345069 d!431361))

(declare-fun m!1715001 () Bool)

(assert (=> bs!345069 m!1715001))

(assert (=> b!1470655 d!431361))

(declare-fun d!431363 () Bool)

(declare-fun res!664955 () Bool)

(declare-fun e!939221 () Bool)

(assert (=> d!431363 (=> res!664955 e!939221)))

(assert (=> d!431363 (= res!664955 ((_ is Nil!15414) l2!3105))))

(assert (=> d!431363 (= (forall!3761 l2!3105 lambda!63479) e!939221)))

(declare-fun b!1470842 () Bool)

(declare-fun e!939222 () Bool)

(assert (=> b!1470842 (= e!939221 e!939222)))

(declare-fun res!664956 () Bool)

(assert (=> b!1470842 (=> (not res!664956) (not e!939222))))

(assert (=> b!1470842 (= res!664956 (dynLambda!7002 lambda!63479 (h!20815 l2!3105)))))

(declare-fun b!1470843 () Bool)

(assert (=> b!1470843 (= e!939222 (forall!3761 (t!135573 l2!3105) lambda!63479))))

(assert (= (and d!431363 (not res!664955)) b!1470842))

(assert (= (and b!1470842 res!664956) b!1470843))

(declare-fun b_lambda!45907 () Bool)

(assert (=> (not b_lambda!45907) (not b!1470842)))

(declare-fun m!1715003 () Bool)

(assert (=> b!1470842 m!1715003))

(declare-fun m!1715005 () Bool)

(assert (=> b!1470843 m!1715005))

(assert (=> d!431297 d!431363))

(assert (=> d!431297 d!431295))

(declare-fun d!431365 () Bool)

(declare-fun res!664958 () Bool)

(declare-fun e!939223 () Bool)

(assert (=> d!431365 (=> res!664958 e!939223)))

(assert (=> d!431365 (= res!664958 (or (not ((_ is Cons!15414) (Cons!15414 (h!20815 (t!135573 l1!3136)) (t!135573 (t!135573 l1!3136))))) (not ((_ is Cons!15414) (t!135573 (Cons!15414 (h!20815 (t!135573 l1!3136)) (t!135573 (t!135573 l1!3136))))))))))

(assert (=> d!431365 (= (tokensListTwoByTwoPredicateSeparableList!255 thiss!27374 (Cons!15414 (h!20815 (t!135573 l1!3136)) (t!135573 (t!135573 l1!3136))) rules!4290) e!939223)))

(declare-fun b!1470844 () Bool)

(declare-fun e!939224 () Bool)

(assert (=> b!1470844 (= e!939223 e!939224)))

(declare-fun res!664957 () Bool)

(assert (=> b!1470844 (=> (not res!664957) (not e!939224))))

(assert (=> b!1470844 (= res!664957 (separableTokensPredicate!545 thiss!27374 (h!20815 (Cons!15414 (h!20815 (t!135573 l1!3136)) (t!135573 (t!135573 l1!3136)))) (h!20815 (t!135573 (Cons!15414 (h!20815 (t!135573 l1!3136)) (t!135573 (t!135573 l1!3136))))) rules!4290))))

(declare-fun lt!511382 () Unit!25101)

(declare-fun Unit!25111 () Unit!25101)

(assert (=> b!1470844 (= lt!511382 Unit!25111)))

(assert (=> b!1470844 (> (size!12528 (charsOf!1573 (h!20815 (t!135573 (Cons!15414 (h!20815 (t!135573 l1!3136)) (t!135573 (t!135573 l1!3136))))))) 0)))

(declare-fun lt!511386 () Unit!25101)

(declare-fun Unit!25112 () Unit!25101)

(assert (=> b!1470844 (= lt!511386 Unit!25112)))

(assert (=> b!1470844 (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 (t!135573 (Cons!15414 (h!20815 (t!135573 l1!3136)) (t!135573 (t!135573 l1!3136))))))))

(declare-fun lt!511385 () Unit!25101)

(declare-fun Unit!25113 () Unit!25101)

(assert (=> b!1470844 (= lt!511385 Unit!25113)))

(assert (=> b!1470844 (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 (Cons!15414 (h!20815 (t!135573 l1!3136)) (t!135573 (t!135573 l1!3136)))))))

(declare-fun lt!511387 () Unit!25101)

(declare-fun lt!511381 () Unit!25101)

(assert (=> b!1470844 (= lt!511387 lt!511381)))

(assert (=> b!1470844 (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 (t!135573 (Cons!15414 (h!20815 (t!135573 l1!3136)) (t!135573 (t!135573 l1!3136))))))))

(assert (=> b!1470844 (= lt!511381 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!438 thiss!27374 rules!4290 (Cons!15414 (h!20815 (t!135573 l1!3136)) (t!135573 (t!135573 l1!3136))) (h!20815 (t!135573 (Cons!15414 (h!20815 (t!135573 l1!3136)) (t!135573 (t!135573 l1!3136)))))))))

(declare-fun lt!511383 () Unit!25101)

(declare-fun lt!511384 () Unit!25101)

(assert (=> b!1470844 (= lt!511383 lt!511384)))

(assert (=> b!1470844 (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 (Cons!15414 (h!20815 (t!135573 l1!3136)) (t!135573 (t!135573 l1!3136)))))))

(assert (=> b!1470844 (= lt!511384 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!438 thiss!27374 rules!4290 (Cons!15414 (h!20815 (t!135573 l1!3136)) (t!135573 (t!135573 l1!3136))) (h!20815 (Cons!15414 (h!20815 (t!135573 l1!3136)) (t!135573 (t!135573 l1!3136))))))))

(declare-fun b!1470845 () Bool)

(assert (=> b!1470845 (= e!939224 (tokensListTwoByTwoPredicateSeparableList!255 thiss!27374 (Cons!15414 (h!20815 (t!135573 (Cons!15414 (h!20815 (t!135573 l1!3136)) (t!135573 (t!135573 l1!3136))))) (t!135573 (t!135573 (Cons!15414 (h!20815 (t!135573 l1!3136)) (t!135573 (t!135573 l1!3136)))))) rules!4290))))

(assert (= (and d!431365 (not res!664958)) b!1470844))

(assert (= (and b!1470844 res!664957) b!1470845))

(declare-fun m!1715007 () Bool)

(assert (=> b!1470844 m!1715007))

(declare-fun m!1715009 () Bool)

(assert (=> b!1470844 m!1715009))

(declare-fun m!1715011 () Bool)

(assert (=> b!1470844 m!1715011))

(declare-fun m!1715013 () Bool)

(assert (=> b!1470844 m!1715013))

(declare-fun m!1715015 () Bool)

(assert (=> b!1470844 m!1715015))

(declare-fun m!1715017 () Bool)

(assert (=> b!1470844 m!1715017))

(declare-fun m!1715019 () Bool)

(assert (=> b!1470844 m!1715019))

(assert (=> b!1470844 m!1715007))

(declare-fun m!1715021 () Bool)

(assert (=> b!1470845 m!1715021))

(assert (=> b!1470574 d!431365))

(declare-fun d!431367 () Bool)

(declare-fun charsToInt!0 (List!15477) (_ BitVec 32))

(assert (=> d!431367 (= (inv!16 (value!87709 (h!20815 l2!3105))) (= (charsToInt!0 (text!20250 (value!87709 (h!20815 l2!3105)))) (value!87701 (value!87709 (h!20815 l2!3105)))))))

(declare-fun bs!345070 () Bool)

(assert (= bs!345070 d!431367))

(declare-fun m!1715023 () Bool)

(assert (=> bs!345070 m!1715023))

(assert (=> b!1470596 d!431367))

(declare-fun d!431369 () Bool)

(assert (=> d!431369 (= (inv!16 (value!87709 (h!20815 l1!3136))) (= (charsToInt!0 (text!20250 (value!87709 (h!20815 l1!3136)))) (value!87701 (value!87709 (h!20815 l1!3136)))))))

(declare-fun bs!345071 () Bool)

(assert (= bs!345071 d!431369))

(declare-fun m!1715025 () Bool)

(assert (=> bs!345071 m!1715025))

(assert (=> b!1470543 d!431369))

(declare-fun d!431371 () Bool)

(assert (=> d!431371 (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 l1!3136))))

(declare-fun lt!511390 () Unit!25101)

(declare-fun choose!9027 (LexerInterface!2395 List!15479 List!15480 Token!5140) Unit!25101)

(assert (=> d!431371 (= lt!511390 (choose!9027 thiss!27374 rules!4290 l1!3136 (h!20815 l1!3136)))))

(assert (=> d!431371 (not (isEmpty!9627 rules!4290))))

(assert (=> d!431371 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!438 thiss!27374 rules!4290 l1!3136 (h!20815 l1!3136)) lt!511390)))

(declare-fun bs!345072 () Bool)

(assert (= bs!345072 d!431371))

(assert (=> bs!345072 m!1714749))

(declare-fun m!1715027 () Bool)

(assert (=> bs!345072 m!1715027))

(assert (=> bs!345072 m!1714703))

(assert (=> b!1470573 d!431371))

(declare-fun d!431375 () Bool)

(assert (=> d!431375 (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 (t!135573 l1!3136)))))

(declare-fun lt!511391 () Unit!25101)

(assert (=> d!431375 (= lt!511391 (choose!9027 thiss!27374 rules!4290 l1!3136 (h!20815 (t!135573 l1!3136))))))

(assert (=> d!431375 (not (isEmpty!9627 rules!4290))))

(assert (=> d!431375 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!438 thiss!27374 rules!4290 l1!3136 (h!20815 (t!135573 l1!3136))) lt!511391)))

(declare-fun bs!345073 () Bool)

(assert (= bs!345073 d!431375))

(assert (=> bs!345073 m!1714757))

(declare-fun m!1715029 () Bool)

(assert (=> bs!345073 m!1715029))

(assert (=> bs!345073 m!1714703))

(assert (=> b!1470573 d!431375))

(declare-fun d!431377 () Bool)

(declare-fun lt!511394 () Int)

(assert (=> d!431377 (= lt!511394 (size!12530 (list!6162 (charsOf!1573 (h!20815 (t!135573 l1!3136))))))))

(declare-fun size!12531 (Conc!5258) Int)

(assert (=> d!431377 (= lt!511394 (size!12531 (c!242234 (charsOf!1573 (h!20815 (t!135573 l1!3136))))))))

(assert (=> d!431377 (= (size!12528 (charsOf!1573 (h!20815 (t!135573 l1!3136)))) lt!511394)))

(declare-fun bs!345074 () Bool)

(assert (= bs!345074 d!431377))

(assert (=> bs!345074 m!1714753))

(declare-fun m!1715031 () Bool)

(assert (=> bs!345074 m!1715031))

(assert (=> bs!345074 m!1715031))

(declare-fun m!1715033 () Bool)

(assert (=> bs!345074 m!1715033))

(declare-fun m!1715035 () Bool)

(assert (=> bs!345074 m!1715035))

(assert (=> b!1470573 d!431377))

(declare-fun d!431379 () Bool)

(declare-fun lt!511406 () Bool)

(declare-fun e!939235 () Bool)

(assert (=> d!431379 (= lt!511406 e!939235)))

(declare-fun res!664977 () Bool)

(assert (=> d!431379 (=> (not res!664977) (not e!939235))))

(declare-datatypes ((tuple2!14276 0))(
  ( (tuple2!14277 (_1!8024 BalanceConc!10458) (_2!8024 BalanceConc!10456)) )
))
(declare-fun lex!1081 (LexerInterface!2395 List!15479 BalanceConc!10456) tuple2!14276)

(declare-fun print!1116 (LexerInterface!2395 BalanceConc!10458) BalanceConc!10456)

(declare-fun singletonSeq!1289 (Token!5140) BalanceConc!10458)

(assert (=> d!431379 (= res!664977 (= (list!6161 (_1!8024 (lex!1081 thiss!27374 rules!4290 (print!1116 thiss!27374 (singletonSeq!1289 (h!20815 l1!3136)))))) (list!6161 (singletonSeq!1289 (h!20815 l1!3136)))))))

(declare-fun e!939236 () Bool)

(assert (=> d!431379 (= lt!511406 e!939236)))

(declare-fun res!664975 () Bool)

(assert (=> d!431379 (=> (not res!664975) (not e!939236))))

(declare-fun lt!511405 () tuple2!14276)

(declare-fun size!12532 (BalanceConc!10458) Int)

(assert (=> d!431379 (= res!664975 (= (size!12532 (_1!8024 lt!511405)) 1))))

(assert (=> d!431379 (= lt!511405 (lex!1081 thiss!27374 rules!4290 (print!1116 thiss!27374 (singletonSeq!1289 (h!20815 l1!3136)))))))

(assert (=> d!431379 (not (isEmpty!9627 rules!4290))))

(assert (=> d!431379 (= (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 l1!3136)) lt!511406)))

(declare-fun b!1470861 () Bool)

(declare-fun res!664976 () Bool)

(assert (=> b!1470861 (=> (not res!664976) (not e!939236))))

(declare-fun apply!3988 (BalanceConc!10458 Int) Token!5140)

(assert (=> b!1470861 (= res!664976 (= (apply!3988 (_1!8024 lt!511405) 0) (h!20815 l1!3136)))))

(declare-fun b!1470862 () Bool)

(declare-fun isEmpty!9630 (BalanceConc!10456) Bool)

(assert (=> b!1470862 (= e!939236 (isEmpty!9630 (_2!8024 lt!511405)))))

(declare-fun b!1470863 () Bool)

(assert (=> b!1470863 (= e!939235 (isEmpty!9630 (_2!8024 (lex!1081 thiss!27374 rules!4290 (print!1116 thiss!27374 (singletonSeq!1289 (h!20815 l1!3136)))))))))

(assert (= (and d!431379 res!664975) b!1470861))

(assert (= (and b!1470861 res!664976) b!1470862))

(assert (= (and d!431379 res!664977) b!1470863))

(declare-fun m!1715055 () Bool)

(assert (=> d!431379 m!1715055))

(declare-fun m!1715057 () Bool)

(assert (=> d!431379 m!1715057))

(assert (=> d!431379 m!1715057))

(declare-fun m!1715059 () Bool)

(assert (=> d!431379 m!1715059))

(assert (=> d!431379 m!1715057))

(declare-fun m!1715061 () Bool)

(assert (=> d!431379 m!1715061))

(declare-fun m!1715063 () Bool)

(assert (=> d!431379 m!1715063))

(assert (=> d!431379 m!1714703))

(assert (=> d!431379 m!1715059))

(declare-fun m!1715065 () Bool)

(assert (=> d!431379 m!1715065))

(declare-fun m!1715067 () Bool)

(assert (=> b!1470861 m!1715067))

(declare-fun m!1715069 () Bool)

(assert (=> b!1470862 m!1715069))

(assert (=> b!1470863 m!1715057))

(assert (=> b!1470863 m!1715057))

(assert (=> b!1470863 m!1715059))

(assert (=> b!1470863 m!1715059))

(assert (=> b!1470863 m!1715065))

(declare-fun m!1715071 () Bool)

(assert (=> b!1470863 m!1715071))

(assert (=> b!1470573 d!431379))

(declare-fun d!431383 () Bool)

(declare-fun lt!511408 () Bool)

(declare-fun e!939237 () Bool)

(assert (=> d!431383 (= lt!511408 e!939237)))

(declare-fun res!664980 () Bool)

(assert (=> d!431383 (=> (not res!664980) (not e!939237))))

(assert (=> d!431383 (= res!664980 (= (list!6161 (_1!8024 (lex!1081 thiss!27374 rules!4290 (print!1116 thiss!27374 (singletonSeq!1289 (h!20815 (t!135573 l1!3136))))))) (list!6161 (singletonSeq!1289 (h!20815 (t!135573 l1!3136))))))))

(declare-fun e!939238 () Bool)

(assert (=> d!431383 (= lt!511408 e!939238)))

(declare-fun res!664978 () Bool)

(assert (=> d!431383 (=> (not res!664978) (not e!939238))))

(declare-fun lt!511407 () tuple2!14276)

(assert (=> d!431383 (= res!664978 (= (size!12532 (_1!8024 lt!511407)) 1))))

(assert (=> d!431383 (= lt!511407 (lex!1081 thiss!27374 rules!4290 (print!1116 thiss!27374 (singletonSeq!1289 (h!20815 (t!135573 l1!3136))))))))

(assert (=> d!431383 (not (isEmpty!9627 rules!4290))))

(assert (=> d!431383 (= (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 (t!135573 l1!3136))) lt!511408)))

(declare-fun b!1470864 () Bool)

(declare-fun res!664979 () Bool)

(assert (=> b!1470864 (=> (not res!664979) (not e!939238))))

(assert (=> b!1470864 (= res!664979 (= (apply!3988 (_1!8024 lt!511407) 0) (h!20815 (t!135573 l1!3136))))))

(declare-fun b!1470865 () Bool)

(assert (=> b!1470865 (= e!939238 (isEmpty!9630 (_2!8024 lt!511407)))))

(declare-fun b!1470866 () Bool)

(assert (=> b!1470866 (= e!939237 (isEmpty!9630 (_2!8024 (lex!1081 thiss!27374 rules!4290 (print!1116 thiss!27374 (singletonSeq!1289 (h!20815 (t!135573 l1!3136))))))))))

(assert (= (and d!431383 res!664978) b!1470864))

(assert (= (and b!1470864 res!664979) b!1470865))

(assert (= (and d!431383 res!664980) b!1470866))

(declare-fun m!1715073 () Bool)

(assert (=> d!431383 m!1715073))

(declare-fun m!1715075 () Bool)

(assert (=> d!431383 m!1715075))

(assert (=> d!431383 m!1715075))

(declare-fun m!1715077 () Bool)

(assert (=> d!431383 m!1715077))

(assert (=> d!431383 m!1715075))

(declare-fun m!1715079 () Bool)

(assert (=> d!431383 m!1715079))

(declare-fun m!1715081 () Bool)

(assert (=> d!431383 m!1715081))

(assert (=> d!431383 m!1714703))

(assert (=> d!431383 m!1715077))

(declare-fun m!1715083 () Bool)

(assert (=> d!431383 m!1715083))

(declare-fun m!1715085 () Bool)

(assert (=> b!1470864 m!1715085))

(declare-fun m!1715087 () Bool)

(assert (=> b!1470865 m!1715087))

(assert (=> b!1470866 m!1715075))

(assert (=> b!1470866 m!1715075))

(assert (=> b!1470866 m!1715077))

(assert (=> b!1470866 m!1715077))

(assert (=> b!1470866 m!1715083))

(declare-fun m!1715089 () Bool)

(assert (=> b!1470866 m!1715089))

(assert (=> b!1470573 d!431383))

(declare-fun d!431385 () Bool)

(declare-fun prefixMatchZipperSequence!361 (Regex!4053 BalanceConc!10456) Bool)

(declare-fun rulesRegex!415 (LexerInterface!2395 List!15479) Regex!4053)

(declare-fun ++!4180 (BalanceConc!10456 BalanceConc!10456) BalanceConc!10456)

(declare-fun singletonSeq!1290 (C!8284) BalanceConc!10456)

(declare-fun apply!3989 (BalanceConc!10456 Int) C!8284)

(assert (=> d!431385 (= (separableTokensPredicate!545 thiss!27374 (h!20815 l1!3136) (h!20815 (t!135573 l1!3136)) rules!4290) (not (prefixMatchZipperSequence!361 (rulesRegex!415 thiss!27374 rules!4290) (++!4180 (charsOf!1573 (h!20815 l1!3136)) (singletonSeq!1290 (apply!3989 (charsOf!1573 (h!20815 (t!135573 l1!3136))) 0))))))))

(declare-fun bs!345084 () Bool)

(assert (= bs!345084 d!431385))

(declare-fun m!1715155 () Bool)

(assert (=> bs!345084 m!1715155))

(declare-fun m!1715157 () Bool)

(assert (=> bs!345084 m!1715157))

(declare-fun m!1715159 () Bool)

(assert (=> bs!345084 m!1715159))

(assert (=> bs!345084 m!1714753))

(declare-fun m!1715161 () Bool)

(assert (=> bs!345084 m!1715161))

(assert (=> bs!345084 m!1714753))

(declare-fun m!1715163 () Bool)

(assert (=> bs!345084 m!1715163))

(assert (=> bs!345084 m!1715155))

(assert (=> bs!345084 m!1715161))

(declare-fun m!1715165 () Bool)

(assert (=> bs!345084 m!1715165))

(assert (=> bs!345084 m!1715157))

(assert (=> bs!345084 m!1715163))

(assert (=> bs!345084 m!1715165))

(assert (=> b!1470573 d!431385))

(declare-fun d!431415 () Bool)

(declare-fun lt!511414 () BalanceConc!10456)

(assert (=> d!431415 (= (list!6162 lt!511414) (originalCharacters!3601 (h!20815 (t!135573 l1!3136))))))

(assert (=> d!431415 (= lt!511414 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))) (value!87709 (h!20815 (t!135573 l1!3136)))))))

(assert (=> d!431415 (= (charsOf!1573 (h!20815 (t!135573 l1!3136))) lt!511414)))

(declare-fun b_lambda!45911 () Bool)

(assert (=> (not b_lambda!45911) (not d!431415)))

(assert (=> d!431415 t!135645))

(declare-fun b_and!100877 () Bool)

(assert (= b_and!100861 (and (=> t!135645 result!100170) b_and!100877)))

(assert (=> d!431415 t!135641))

(declare-fun b_and!100879 () Bool)

(assert (= b_and!100857 (and (=> t!135641 result!100166) b_and!100879)))

(assert (=> d!431415 t!135639))

(declare-fun b_and!100881 () Bool)

(assert (= b_and!100855 (and (=> t!135639 result!100164) b_and!100881)))

(assert (=> d!431415 t!135643))

(declare-fun b_and!100883 () Bool)

(assert (= b_and!100859 (and (=> t!135643 result!100168) b_and!100883)))

(assert (=> d!431415 t!135647))

(declare-fun b_and!100885 () Bool)

(assert (= b_and!100863 (and (=> t!135647 result!100172) b_and!100885)))

(assert (=> d!431415 t!135637))

(declare-fun b_and!100887 () Bool)

(assert (= b_and!100853 (and (=> t!135637 result!100162) b_and!100887)))

(declare-fun m!1715175 () Bool)

(assert (=> d!431415 m!1715175))

(assert (=> d!431415 m!1714965))

(assert (=> b!1470573 d!431415))

(declare-fun bs!345091 () Bool)

(declare-fun d!431425 () Bool)

(assert (= bs!345091 (and d!431425 d!431329)))

(declare-fun lambda!63502 () Int)

(assert (=> bs!345091 (= (and (= (toChars!3921 (transformation!2739 (h!20814 rules!4290))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) (= (toValue!4062 (transformation!2739 (h!20814 rules!4290))) (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l1!3136)))))) (= lambda!63502 lambda!63490))))

(assert (=> d!431425 true))

(assert (=> d!431425 (< (dynLambda!6996 order!9255 (toChars!3921 (transformation!2739 (h!20814 rules!4290)))) (dynLambda!7003 order!9265 lambda!63502))))

(assert (=> d!431425 true))

(assert (=> d!431425 (< (dynLambda!6994 order!9251 (toValue!4062 (transformation!2739 (h!20814 rules!4290)))) (dynLambda!7003 order!9265 lambda!63502))))

(assert (=> d!431425 (= (semiInverseModEq!1024 (toChars!3921 (transformation!2739 (h!20814 rules!4290))) (toValue!4062 (transformation!2739 (h!20814 rules!4290)))) (Forall!566 lambda!63502))))

(declare-fun bs!345092 () Bool)

(assert (= bs!345092 d!431425))

(declare-fun m!1715179 () Bool)

(assert (=> bs!345092 m!1715179))

(assert (=> d!431293 d!431425))

(declare-fun d!431427 () Bool)

(assert (=> d!431427 (= (inv!20620 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136)))) (isBalanced!1571 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136))))))))

(declare-fun bs!345093 () Bool)

(assert (= bs!345093 d!431427))

(declare-fun m!1715185 () Bool)

(assert (=> bs!345093 m!1715185))

(assert (=> tb!83285 d!431427))

(declare-fun bs!345094 () Bool)

(declare-fun d!431431 () Bool)

(assert (= bs!345094 (and d!431431 d!431249)))

(declare-fun lambda!63503 () Int)

(assert (=> bs!345094 (= lambda!63503 lambda!63468)))

(declare-fun bs!345095 () Bool)

(assert (= bs!345095 (and d!431431 d!431263)))

(assert (=> bs!345095 (= lambda!63503 lambda!63478)))

(declare-fun bs!345096 () Bool)

(assert (= bs!345096 (and d!431431 d!431297)))

(assert (=> bs!345096 (= lambda!63503 lambda!63479)))

(declare-fun bs!345097 () Bool)

(assert (= bs!345097 (and d!431431 d!431317)))

(assert (=> bs!345097 (= lambda!63503 lambda!63487)))

(declare-fun b!1470919 () Bool)

(declare-fun e!939277 () Bool)

(assert (=> b!1470919 (= e!939277 true)))

(declare-fun b!1470918 () Bool)

(declare-fun e!939276 () Bool)

(assert (=> b!1470918 (= e!939276 e!939277)))

(declare-fun b!1470917 () Bool)

(declare-fun e!939275 () Bool)

(assert (=> b!1470917 (= e!939275 e!939276)))

(assert (=> d!431431 e!939275))

(assert (= b!1470918 b!1470919))

(assert (= b!1470917 b!1470918))

(assert (= (and d!431431 ((_ is Cons!15413) rules!4290)) b!1470917))

(assert (=> b!1470919 (< (dynLambda!6994 order!9251 (toValue!4062 (transformation!2739 (h!20814 rules!4290)))) (dynLambda!6995 order!9253 lambda!63503))))

(assert (=> b!1470919 (< (dynLambda!6996 order!9255 (toChars!3921 (transformation!2739 (h!20814 rules!4290)))) (dynLambda!6995 order!9253 lambda!63503))))

(assert (=> d!431431 true))

(declare-fun lt!511416 () Bool)

(assert (=> d!431431 (= lt!511416 (forall!3761 (t!135573 l2!3105) lambda!63503))))

(declare-fun e!939274 () Bool)

(assert (=> d!431431 (= lt!511416 e!939274)))

(declare-fun res!665005 () Bool)

(assert (=> d!431431 (=> res!665005 e!939274)))

(assert (=> d!431431 (= res!665005 (not ((_ is Cons!15414) (t!135573 l2!3105))))))

(assert (=> d!431431 (not (isEmpty!9627 rules!4290))))

(assert (=> d!431431 (= (rulesProduceEachTokenIndividuallyList!762 thiss!27374 rules!4290 (t!135573 l2!3105)) lt!511416)))

(declare-fun b!1470915 () Bool)

(declare-fun e!939273 () Bool)

(assert (=> b!1470915 (= e!939274 e!939273)))

(declare-fun res!665004 () Bool)

(assert (=> b!1470915 (=> (not res!665004) (not e!939273))))

(assert (=> b!1470915 (= res!665004 (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 (t!135573 l2!3105))))))

(declare-fun b!1470916 () Bool)

(assert (=> b!1470916 (= e!939273 (rulesProduceEachTokenIndividuallyList!762 thiss!27374 rules!4290 (t!135573 (t!135573 l2!3105))))))

(assert (= (and d!431431 (not res!665005)) b!1470915))

(assert (= (and b!1470915 res!665004) b!1470916))

(declare-fun m!1715187 () Bool)

(assert (=> d!431431 m!1715187))

(assert (=> d!431431 m!1714703))

(declare-fun m!1715189 () Bool)

(assert (=> b!1470915 m!1715189))

(declare-fun m!1715191 () Bool)

(assert (=> b!1470916 m!1715191))

(assert (=> b!1470650 d!431431))

(declare-fun b!1470924 () Bool)

(declare-fun e!939282 () Bool)

(declare-fun e!939281 () Bool)

(assert (=> b!1470924 (= e!939282 e!939281)))

(declare-fun c!242269 () Bool)

(assert (=> b!1470924 (= c!242269 ((_ is IntegerValue!8488) (value!87709 (h!20815 (t!135573 l2!3105)))))))

(declare-fun b!1470925 () Bool)

(assert (=> b!1470925 (= e!939281 (inv!17 (value!87709 (h!20815 (t!135573 l2!3105)))))))

(declare-fun b!1470926 () Bool)

(declare-fun e!939280 () Bool)

(assert (=> b!1470926 (= e!939280 (inv!15 (value!87709 (h!20815 (t!135573 l2!3105)))))))

(declare-fun b!1470927 () Bool)

(declare-fun res!665006 () Bool)

(assert (=> b!1470927 (=> res!665006 e!939280)))

(assert (=> b!1470927 (= res!665006 (not ((_ is IntegerValue!8489) (value!87709 (h!20815 (t!135573 l2!3105))))))))

(assert (=> b!1470927 (= e!939281 e!939280)))

(declare-fun b!1470928 () Bool)

(assert (=> b!1470928 (= e!939282 (inv!16 (value!87709 (h!20815 (t!135573 l2!3105)))))))

(declare-fun d!431433 () Bool)

(declare-fun c!242270 () Bool)

(assert (=> d!431433 (= c!242270 ((_ is IntegerValue!8487) (value!87709 (h!20815 (t!135573 l2!3105)))))))

(assert (=> d!431433 (= (inv!21 (value!87709 (h!20815 (t!135573 l2!3105)))) e!939282)))

(assert (= (and d!431433 c!242270) b!1470928))

(assert (= (and d!431433 (not c!242270)) b!1470924))

(assert (= (and b!1470924 c!242269) b!1470925))

(assert (= (and b!1470924 (not c!242269)) b!1470927))

(assert (= (and b!1470927 (not res!665006)) b!1470926))

(declare-fun m!1715193 () Bool)

(assert (=> b!1470925 m!1715193))

(declare-fun m!1715195 () Bool)

(assert (=> b!1470926 m!1715195))

(declare-fun m!1715197 () Bool)

(assert (=> b!1470928 m!1715197))

(assert (=> b!1470724 d!431433))

(declare-fun d!431435 () Bool)

(declare-fun res!665007 () Bool)

(declare-fun e!939284 () Bool)

(assert (=> d!431435 (=> (not res!665007) (not e!939284))))

(assert (=> d!431435 (= res!665007 (not (isEmpty!9629 (originalCharacters!3601 (h!20815 (t!135573 l2!3105))))))))

(assert (=> d!431435 (= (inv!20616 (h!20815 (t!135573 l2!3105))) e!939284)))

(declare-fun b!1470931 () Bool)

(declare-fun res!665008 () Bool)

(assert (=> b!1470931 (=> (not res!665008) (not e!939284))))

(assert (=> b!1470931 (= res!665008 (= (originalCharacters!3601 (h!20815 (t!135573 l2!3105))) (list!6162 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))) (value!87709 (h!20815 (t!135573 l2!3105)))))))))

(declare-fun b!1470932 () Bool)

(assert (=> b!1470932 (= e!939284 (= (size!12526 (h!20815 (t!135573 l2!3105))) (size!12530 (originalCharacters!3601 (h!20815 (t!135573 l2!3105))))))))

(assert (= (and d!431435 res!665007) b!1470931))

(assert (= (and b!1470931 res!665008) b!1470932))

(declare-fun b_lambda!45913 () Bool)

(assert (=> (not b_lambda!45913) (not b!1470931)))

(declare-fun tb!83345 () Bool)

(declare-fun t!135664 () Bool)

(assert (=> (and b!1470516 (= (toChars!3921 (transformation!2739 (h!20814 rules!4290))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105)))))) t!135664) tb!83345))

(declare-fun b!1470933 () Bool)

(declare-fun e!939285 () Bool)

(declare-fun tp!415041 () Bool)

(assert (=> b!1470933 (= e!939285 (and (inv!20619 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))) (value!87709 (h!20815 (t!135573 l2!3105)))))) tp!415041))))

(declare-fun result!100186 () Bool)

(assert (=> tb!83345 (= result!100186 (and (inv!20620 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))) (value!87709 (h!20815 (t!135573 l2!3105))))) e!939285))))

(assert (= tb!83345 b!1470933))

(declare-fun m!1715203 () Bool)

(assert (=> b!1470933 m!1715203))

(declare-fun m!1715205 () Bool)

(assert (=> tb!83345 m!1715205))

(assert (=> b!1470931 t!135664))

(declare-fun b_and!100889 () Bool)

(assert (= b_and!100879 (and (=> t!135664 result!100186) b_and!100889)))

(declare-fun t!135666 () Bool)

(declare-fun tb!83347 () Bool)

(assert (=> (and b!1470726 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105)))))) t!135666) tb!83347))

(declare-fun result!100188 () Bool)

(assert (= result!100188 result!100186))

(assert (=> b!1470931 t!135666))

(declare-fun b_and!100891 () Bool)

(assert (= b_and!100887 (and (=> t!135666 result!100188) b_and!100891)))

(declare-fun tb!83349 () Bool)

(declare-fun t!135668 () Bool)

(assert (=> (and b!1470517 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105)))))) t!135668) tb!83349))

(declare-fun result!100190 () Bool)

(assert (= result!100190 result!100186))

(assert (=> b!1470931 t!135668))

(declare-fun b_and!100893 () Bool)

(assert (= b_and!100883 (and (=> t!135668 result!100190) b_and!100893)))

(declare-fun tb!83351 () Bool)

(declare-fun t!135670 () Bool)

(assert (=> (and b!1470681 (= (toChars!3921 (transformation!2739 (h!20814 (t!135572 rules!4290)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105)))))) t!135670) tb!83351))

(declare-fun result!100192 () Bool)

(assert (= result!100192 result!100186))

(assert (=> b!1470931 t!135670))

(declare-fun b_and!100895 () Bool)

(assert (= b_and!100881 (and (=> t!135670 result!100192) b_and!100895)))

(declare-fun t!135672 () Bool)

(declare-fun tb!83353 () Bool)

(assert (=> (and b!1470740 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105)))))) t!135672) tb!83353))

(declare-fun result!100194 () Bool)

(assert (= result!100194 result!100186))

(assert (=> b!1470931 t!135672))

(declare-fun b_and!100897 () Bool)

(assert (= b_and!100877 (and (=> t!135672 result!100194) b_and!100897)))

(declare-fun t!135674 () Bool)

(declare-fun tb!83355 () Bool)

(assert (=> (and b!1470515 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105)))))) t!135674) tb!83355))

(declare-fun result!100196 () Bool)

(assert (= result!100196 result!100186))

(assert (=> b!1470931 t!135674))

(declare-fun b_and!100899 () Bool)

(assert (= b_and!100885 (and (=> t!135674 result!100196) b_and!100899)))

(declare-fun m!1715209 () Bool)

(assert (=> d!431435 m!1715209))

(declare-fun m!1715211 () Bool)

(assert (=> b!1470931 m!1715211))

(assert (=> b!1470931 m!1715211))

(declare-fun m!1715213 () Bool)

(assert (=> b!1470931 m!1715213))

(declare-fun m!1715215 () Bool)

(assert (=> b!1470932 m!1715215))

(assert (=> b!1470723 d!431435))

(declare-fun d!431443 () Bool)

(declare-fun lt!511421 () Bool)

(declare-fun e!939286 () Bool)

(assert (=> d!431443 (= lt!511421 e!939286)))

(declare-fun res!665011 () Bool)

(assert (=> d!431443 (=> (not res!665011) (not e!939286))))

(assert (=> d!431443 (= res!665011 (= (list!6161 (_1!8024 (lex!1081 thiss!27374 rules!4290 (print!1116 thiss!27374 (singletonSeq!1289 (h!20815 l2!3105)))))) (list!6161 (singletonSeq!1289 (h!20815 l2!3105)))))))

(declare-fun e!939287 () Bool)

(assert (=> d!431443 (= lt!511421 e!939287)))

(declare-fun res!665009 () Bool)

(assert (=> d!431443 (=> (not res!665009) (not e!939287))))

(declare-fun lt!511420 () tuple2!14276)

(assert (=> d!431443 (= res!665009 (= (size!12532 (_1!8024 lt!511420)) 1))))

(assert (=> d!431443 (= lt!511420 (lex!1081 thiss!27374 rules!4290 (print!1116 thiss!27374 (singletonSeq!1289 (h!20815 l2!3105)))))))

(assert (=> d!431443 (not (isEmpty!9627 rules!4290))))

(assert (=> d!431443 (= (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 l2!3105)) lt!511421)))

(declare-fun b!1470934 () Bool)

(declare-fun res!665010 () Bool)

(assert (=> b!1470934 (=> (not res!665010) (not e!939287))))

(assert (=> b!1470934 (= res!665010 (= (apply!3988 (_1!8024 lt!511420) 0) (h!20815 l2!3105)))))

(declare-fun b!1470935 () Bool)

(assert (=> b!1470935 (= e!939287 (isEmpty!9630 (_2!8024 lt!511420)))))

(declare-fun b!1470936 () Bool)

(assert (=> b!1470936 (= e!939286 (isEmpty!9630 (_2!8024 (lex!1081 thiss!27374 rules!4290 (print!1116 thiss!27374 (singletonSeq!1289 (h!20815 l2!3105)))))))))

(assert (= (and d!431443 res!665009) b!1470934))

(assert (= (and b!1470934 res!665010) b!1470935))

(assert (= (and d!431443 res!665011) b!1470936))

(declare-fun m!1715217 () Bool)

(assert (=> d!431443 m!1715217))

(declare-fun m!1715219 () Bool)

(assert (=> d!431443 m!1715219))

(assert (=> d!431443 m!1715219))

(declare-fun m!1715221 () Bool)

(assert (=> d!431443 m!1715221))

(assert (=> d!431443 m!1715219))

(declare-fun m!1715223 () Bool)

(assert (=> d!431443 m!1715223))

(declare-fun m!1715225 () Bool)

(assert (=> d!431443 m!1715225))

(assert (=> d!431443 m!1714703))

(assert (=> d!431443 m!1715221))

(declare-fun m!1715227 () Bool)

(assert (=> d!431443 m!1715227))

(declare-fun m!1715229 () Bool)

(assert (=> b!1470934 m!1715229))

(declare-fun m!1715231 () Bool)

(assert (=> b!1470935 m!1715231))

(assert (=> b!1470936 m!1715219))

(assert (=> b!1470936 m!1715219))

(assert (=> b!1470936 m!1715221))

(assert (=> b!1470936 m!1715221))

(assert (=> b!1470936 m!1715227))

(declare-fun m!1715233 () Bool)

(assert (=> b!1470936 m!1715233))

(assert (=> b!1470649 d!431443))

(declare-fun bs!345102 () Bool)

(declare-fun d!431445 () Bool)

(assert (= bs!345102 (and d!431445 d!431313)))

(declare-fun lambda!63505 () Int)

(assert (=> bs!345102 (= (= (toValue!4062 (transformation!2739 (h!20814 rules!4290))) (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) (= lambda!63505 lambda!63486))))

(assert (=> d!431445 true))

(assert (=> d!431445 (< (dynLambda!6994 order!9251 (toValue!4062 (transformation!2739 (h!20814 rules!4290)))) (dynLambda!7001 order!9263 lambda!63505))))

(assert (=> d!431445 (= (equivClasses!983 (toChars!3921 (transformation!2739 (h!20814 rules!4290))) (toValue!4062 (transformation!2739 (h!20814 rules!4290)))) (Forall2!468 lambda!63505))))

(declare-fun bs!345104 () Bool)

(assert (= bs!345104 d!431445))

(declare-fun m!1715237 () Bool)

(assert (=> bs!345104 m!1715237))

(assert (=> b!1470648 d!431445))

(declare-fun d!431449 () Bool)

(declare-fun e!939299 () Bool)

(assert (=> d!431449 e!939299))

(declare-fun res!665019 () Bool)

(assert (=> d!431449 (=> (not res!665019) (not e!939299))))

(declare-fun lt!511425 () BalanceConc!10458)

(assert (=> d!431449 (= res!665019 (= (list!6161 lt!511425) l2!3105))))

(declare-fun fromList!344 (List!15480) Conc!5259)

(assert (=> d!431449 (= lt!511425 (BalanceConc!10459 (fromList!344 l2!3105)))))

(assert (=> d!431449 (= (fromListB!742 l2!3105) lt!511425)))

(declare-fun b!1470951 () Bool)

(declare-fun isBalanced!1572 (Conc!5259) Bool)

(assert (=> b!1470951 (= e!939299 (isBalanced!1572 (fromList!344 l2!3105)))))

(assert (= (and d!431449 res!665019) b!1470951))

(declare-fun m!1715257 () Bool)

(assert (=> d!431449 m!1715257))

(declare-fun m!1715259 () Bool)

(assert (=> d!431449 m!1715259))

(assert (=> b!1470951 m!1715259))

(assert (=> b!1470951 m!1715259))

(declare-fun m!1715261 () Bool)

(assert (=> b!1470951 m!1715261))

(assert (=> d!431287 d!431449))

(declare-fun bs!345113 () Bool)

(declare-fun d!431463 () Bool)

(assert (= bs!345113 (and d!431463 d!431329)))

(declare-fun lambda!63508 () Int)

(assert (=> bs!345113 (= (and (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) (= (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l1!3136)))))) (= lambda!63508 lambda!63490))))

(declare-fun bs!345114 () Bool)

(assert (= bs!345114 (and d!431463 d!431425)))

(assert (=> bs!345114 (= (and (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toChars!3921 (transformation!2739 (h!20814 rules!4290)))) (= (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toValue!4062 (transformation!2739 (h!20814 rules!4290))))) (= lambda!63508 lambda!63502))))

(assert (=> d!431463 true))

(assert (=> d!431463 (< (dynLambda!6996 order!9255 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105))))) (dynLambda!7003 order!9265 lambda!63508))))

(assert (=> d!431463 true))

(assert (=> d!431463 (< (dynLambda!6994 order!9251 (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l2!3105))))) (dynLambda!7003 order!9265 lambda!63508))))

(assert (=> d!431463 (= (semiInverseModEq!1024 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l2!3105))))) (Forall!566 lambda!63508))))

(declare-fun bs!345115 () Bool)

(assert (= bs!345115 d!431463))

(declare-fun m!1715273 () Bool)

(assert (=> bs!345115 m!1715273))

(assert (=> d!431301 d!431463))

(declare-fun d!431465 () Bool)

(assert (=> d!431465 (= (inv!20612 (tag!3003 (rule!4516 (h!20815 (t!135573 l2!3105))))) (= (mod (str.len (value!87683 (tag!3003 (rule!4516 (h!20815 (t!135573 l2!3105)))))) 2) 0))))

(assert (=> b!1470725 d!431465))

(declare-fun d!431469 () Bool)

(declare-fun res!665020 () Bool)

(declare-fun e!939301 () Bool)

(assert (=> d!431469 (=> (not res!665020) (not e!939301))))

(assert (=> d!431469 (= res!665020 (semiInverseModEq!1024 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))) (toValue!4062 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105)))))))))

(assert (=> d!431469 (= (inv!20615 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))) e!939301)))

(declare-fun b!1470953 () Bool)

(assert (=> b!1470953 (= e!939301 (equivClasses!983 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))) (toValue!4062 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105)))))))))

(assert (= (and d!431469 res!665020) b!1470953))

(declare-fun m!1715277 () Bool)

(assert (=> d!431469 m!1715277))

(declare-fun m!1715279 () Bool)

(assert (=> b!1470953 m!1715279))

(assert (=> b!1470725 d!431469))

(declare-fun d!431471 () Bool)

(declare-fun c!242275 () Bool)

(assert (=> d!431471 (= c!242275 ((_ is Node!5258) (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136))))))))

(declare-fun e!939302 () Bool)

(assert (=> d!431471 (= (inv!20619 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136))))) e!939302)))

(declare-fun b!1470954 () Bool)

(assert (=> b!1470954 (= e!939302 (inv!20621 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136))))))))

(declare-fun b!1470955 () Bool)

(declare-fun e!939303 () Bool)

(assert (=> b!1470955 (= e!939302 e!939303)))

(declare-fun res!665021 () Bool)

(assert (=> b!1470955 (= res!665021 (not ((_ is Leaf!7829) (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136)))))))))

(assert (=> b!1470955 (=> res!665021 e!939303)))

(declare-fun b!1470956 () Bool)

(assert (=> b!1470956 (= e!939303 (inv!20622 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136))))))))

(assert (= (and d!431471 c!242275) b!1470954))

(assert (= (and d!431471 (not c!242275)) b!1470955))

(assert (= (and b!1470955 (not res!665021)) b!1470956))

(declare-fun m!1715281 () Bool)

(assert (=> b!1470954 m!1715281))

(declare-fun m!1715283 () Bool)

(assert (=> b!1470956 m!1715283))

(assert (=> b!1470657 d!431471))

(declare-fun bs!345116 () Bool)

(declare-fun d!431473 () Bool)

(assert (= bs!345116 (and d!431473 d!431263)))

(declare-fun lambda!63509 () Int)

(assert (=> bs!345116 (= lambda!63509 lambda!63478)))

(declare-fun bs!345117 () Bool)

(assert (= bs!345117 (and d!431473 d!431297)))

(assert (=> bs!345117 (= lambda!63509 lambda!63479)))

(declare-fun bs!345118 () Bool)

(assert (= bs!345118 (and d!431473 d!431431)))

(assert (=> bs!345118 (= lambda!63509 lambda!63503)))

(declare-fun bs!345119 () Bool)

(assert (= bs!345119 (and d!431473 d!431249)))

(assert (=> bs!345119 (= lambda!63509 lambda!63468)))

(declare-fun bs!345120 () Bool)

(assert (= bs!345120 (and d!431473 d!431317)))

(assert (=> bs!345120 (= lambda!63509 lambda!63487)))

(declare-fun b!1470965 () Bool)

(declare-fun e!939312 () Bool)

(assert (=> b!1470965 (= e!939312 true)))

(declare-fun b!1470964 () Bool)

(declare-fun e!939311 () Bool)

(assert (=> b!1470964 (= e!939311 e!939312)))

(declare-fun b!1470963 () Bool)

(declare-fun e!939310 () Bool)

(assert (=> b!1470963 (= e!939310 e!939311)))

(assert (=> d!431473 e!939310))

(assert (= b!1470964 b!1470965))

(assert (= b!1470963 b!1470964))

(assert (= (and d!431473 ((_ is Cons!15413) rules!4290)) b!1470963))

(assert (=> b!1470965 (< (dynLambda!6994 order!9251 (toValue!4062 (transformation!2739 (h!20814 rules!4290)))) (dynLambda!6995 order!9253 lambda!63509))))

(assert (=> b!1470965 (< (dynLambda!6996 order!9255 (toChars!3921 (transformation!2739 (h!20814 rules!4290)))) (dynLambda!6995 order!9253 lambda!63509))))

(assert (=> d!431473 true))

(declare-fun lt!511426 () Bool)

(assert (=> d!431473 (= lt!511426 (forall!3761 (t!135573 l1!3136) lambda!63509))))

(declare-fun e!939305 () Bool)

(assert (=> d!431473 (= lt!511426 e!939305)))

(declare-fun res!665023 () Bool)

(assert (=> d!431473 (=> res!665023 e!939305)))

(assert (=> d!431473 (= res!665023 (not ((_ is Cons!15414) (t!135573 l1!3136))))))

(assert (=> d!431473 (not (isEmpty!9627 rules!4290))))

(assert (=> d!431473 (= (rulesProduceEachTokenIndividuallyList!762 thiss!27374 rules!4290 (t!135573 l1!3136)) lt!511426)))

(declare-fun b!1470957 () Bool)

(declare-fun e!939304 () Bool)

(assert (=> b!1470957 (= e!939305 e!939304)))

(declare-fun res!665022 () Bool)

(assert (=> b!1470957 (=> (not res!665022) (not e!939304))))

(assert (=> b!1470957 (= res!665022 (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 (t!135573 l1!3136))))))

(declare-fun b!1470958 () Bool)

(assert (=> b!1470958 (= e!939304 (rulesProduceEachTokenIndividuallyList!762 thiss!27374 rules!4290 (t!135573 (t!135573 l1!3136))))))

(assert (= (and d!431473 (not res!665023)) b!1470957))

(assert (= (and b!1470957 res!665022) b!1470958))

(declare-fun m!1715285 () Bool)

(assert (=> d!431473 m!1715285))

(assert (=> d!431473 m!1714703))

(assert (=> b!1470957 m!1714757))

(declare-fun m!1715287 () Bool)

(assert (=> b!1470958 m!1715287))

(assert (=> b!1470555 d!431473))

(declare-fun bs!345121 () Bool)

(declare-fun d!431475 () Bool)

(assert (= bs!345121 (and d!431475 d!431313)))

(declare-fun lambda!63510 () Int)

(assert (=> bs!345121 (= (= (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) (= lambda!63510 lambda!63486))))

(declare-fun bs!345122 () Bool)

(assert (= bs!345122 (and d!431475 d!431445)))

(assert (=> bs!345122 (= (= (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toValue!4062 (transformation!2739 (h!20814 rules!4290)))) (= lambda!63510 lambda!63505))))

(assert (=> d!431475 true))

(assert (=> d!431475 (< (dynLambda!6994 order!9251 (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l2!3105))))) (dynLambda!7001 order!9263 lambda!63510))))

(assert (=> d!431475 (= (equivClasses!983 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toValue!4062 (transformation!2739 (rule!4516 (h!20815 l2!3105))))) (Forall2!468 lambda!63510))))

(declare-fun bs!345123 () Bool)

(assert (= bs!345123 d!431475))

(declare-fun m!1715297 () Bool)

(assert (=> bs!345123 m!1715297))

(assert (=> b!1470654 d!431475))

(declare-fun d!431481 () Bool)

(declare-fun res!665032 () Bool)

(declare-fun e!939317 () Bool)

(assert (=> d!431481 (=> res!665032 e!939317)))

(assert (=> d!431481 (= res!665032 ((_ is Nil!15414) l1!3136))))

(assert (=> d!431481 (= (forall!3761 l1!3136 lambda!63468) e!939317)))

(declare-fun b!1470970 () Bool)

(declare-fun e!939318 () Bool)

(assert (=> b!1470970 (= e!939317 e!939318)))

(declare-fun res!665033 () Bool)

(assert (=> b!1470970 (=> (not res!665033) (not e!939318))))

(assert (=> b!1470970 (= res!665033 (dynLambda!7002 lambda!63468 (h!20815 l1!3136)))))

(declare-fun b!1470971 () Bool)

(assert (=> b!1470971 (= e!939318 (forall!3761 (t!135573 l1!3136) lambda!63468))))

(assert (= (and d!431481 (not res!665032)) b!1470970))

(assert (= (and b!1470970 res!665033) b!1470971))

(declare-fun b_lambda!45921 () Bool)

(assert (=> (not b_lambda!45921) (not b!1470970)))

(declare-fun m!1715299 () Bool)

(assert (=> b!1470970 m!1715299))

(declare-fun m!1715301 () Bool)

(assert (=> b!1470971 m!1715301))

(assert (=> d!431249 d!431481))

(assert (=> d!431249 d!431295))

(assert (=> b!1470554 d!431379))

(declare-fun b!1470976 () Bool)

(declare-fun e!939323 () Bool)

(assert (=> b!1470976 (= e!939323 true)))

(declare-fun b!1470975 () Bool)

(declare-fun e!939322 () Bool)

(assert (=> b!1470975 (= e!939322 e!939323)))

(declare-fun b!1470974 () Bool)

(declare-fun e!939321 () Bool)

(assert (=> b!1470974 (= e!939321 e!939322)))

(assert (=> b!1470630 e!939321))

(assert (= b!1470975 b!1470976))

(assert (= b!1470974 b!1470975))

(assert (= (and b!1470630 ((_ is Cons!15413) (t!135572 rules!4290))) b!1470974))

(assert (=> b!1470976 (< (dynLambda!6994 order!9251 (toValue!4062 (transformation!2739 (h!20814 (t!135572 rules!4290))))) (dynLambda!6995 order!9253 lambda!63478))))

(assert (=> b!1470976 (< (dynLambda!6996 order!9255 (toChars!3921 (transformation!2739 (h!20814 (t!135572 rules!4290))))) (dynLambda!6995 order!9253 lambda!63478))))

(declare-fun b!1470979 () Bool)

(declare-fun b_free!37155 () Bool)

(declare-fun b_next!37859 () Bool)

(assert (=> b!1470979 (= b_free!37155 (not b_next!37859))))

(declare-fun tp!415043 () Bool)

(declare-fun b_and!100913 () Bool)

(assert (=> b!1470979 (= tp!415043 b_and!100913)))

(declare-fun b_free!37157 () Bool)

(declare-fun b_next!37861 () Bool)

(assert (=> b!1470979 (= b_free!37157 (not b_next!37861))))

(declare-fun tb!83369 () Bool)

(declare-fun t!135688 () Bool)

(assert (=> (and b!1470979 (= (toChars!3921 (transformation!2739 (h!20814 (t!135572 (t!135572 rules!4290))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) t!135688) tb!83369))

(declare-fun result!100210 () Bool)

(assert (= result!100210 result!100110))

(assert (=> b!1470655 t!135688))

(declare-fun t!135690 () Bool)

(declare-fun tb!83371 () Bool)

(assert (=> (and b!1470979 (= (toChars!3921 (transformation!2739 (h!20814 (t!135572 (t!135572 rules!4290))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105)))))) t!135690) tb!83371))

(declare-fun result!100212 () Bool)

(assert (= result!100212 result!100186))

(assert (=> b!1470931 t!135690))

(declare-fun tb!83373 () Bool)

(declare-fun t!135692 () Bool)

(assert (=> (and b!1470979 (= (toChars!3921 (transformation!2739 (h!20814 (t!135572 (t!135572 rules!4290))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105))))) t!135692) tb!83373))

(declare-fun result!100214 () Bool)

(assert (= result!100214 result!100102))

(assert (=> b!1470637 t!135692))

(declare-fun t!135694 () Bool)

(declare-fun tb!83375 () Bool)

(assert (=> (and b!1470979 (= (toChars!3921 (transformation!2739 (h!20814 (t!135572 (t!135572 rules!4290))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136)))))) t!135694) tb!83375))

(declare-fun result!100216 () Bool)

(assert (= result!100216 result!100162))

(assert (=> d!431415 t!135694))

(assert (=> b!1470819 t!135694))

(declare-fun b_and!100915 () Bool)

(declare-fun tp!415046 () Bool)

(assert (=> b!1470979 (= tp!415046 (and (=> t!135694 result!100216) (=> t!135688 result!100210) (=> t!135692 result!100214) (=> t!135690 result!100212) b_and!100915))))

(declare-fun e!939325 () Bool)

(assert (=> b!1470979 (= e!939325 (and tp!415043 tp!415046))))

(declare-fun tp!415044 () Bool)

(declare-fun b!1470978 () Bool)

(declare-fun e!939327 () Bool)

(assert (=> b!1470978 (= e!939327 (and tp!415044 (inv!20612 (tag!3003 (h!20814 (t!135572 (t!135572 rules!4290))))) (inv!20615 (transformation!2739 (h!20814 (t!135572 (t!135572 rules!4290))))) e!939325))))

(declare-fun b!1470977 () Bool)

(declare-fun e!939324 () Bool)

(declare-fun tp!415045 () Bool)

(assert (=> b!1470977 (= e!939324 (and e!939327 tp!415045))))

(assert (=> b!1470679 (= tp!414930 e!939324)))

(assert (= b!1470978 b!1470979))

(assert (= b!1470977 b!1470978))

(assert (= (and b!1470679 ((_ is Cons!15413) (t!135572 (t!135572 rules!4290)))) b!1470977))

(declare-fun m!1715309 () Bool)

(assert (=> b!1470978 m!1715309))

(declare-fun m!1715311 () Bool)

(assert (=> b!1470978 m!1715311))

(declare-fun b!1470981 () Bool)

(declare-fun e!939328 () Bool)

(declare-fun tp!415051 () Bool)

(declare-fun tp!415049 () Bool)

(assert (=> b!1470981 (= e!939328 (and tp!415051 tp!415049))))

(declare-fun b!1470983 () Bool)

(declare-fun tp!415048 () Bool)

(declare-fun tp!415050 () Bool)

(assert (=> b!1470983 (= e!939328 (and tp!415048 tp!415050))))

(declare-fun b!1470982 () Bool)

(declare-fun tp!415047 () Bool)

(assert (=> b!1470982 (= e!939328 tp!415047)))

(declare-fun b!1470980 () Bool)

(assert (=> b!1470980 (= e!939328 tp_is_empty!6917)))

(assert (=> b!1470730 (= tp!414977 e!939328)))

(assert (= (and b!1470730 ((_ is ElementMatch!4053) (regOne!8618 (regex!2739 (h!20814 rules!4290))))) b!1470980))

(assert (= (and b!1470730 ((_ is Concat!6882) (regOne!8618 (regex!2739 (h!20814 rules!4290))))) b!1470981))

(assert (= (and b!1470730 ((_ is Star!4053) (regOne!8618 (regex!2739 (h!20814 rules!4290))))) b!1470982))

(assert (= (and b!1470730 ((_ is Union!4053) (regOne!8618 (regex!2739 (h!20814 rules!4290))))) b!1470983))

(declare-fun b!1470985 () Bool)

(declare-fun e!939329 () Bool)

(declare-fun tp!415056 () Bool)

(declare-fun tp!415054 () Bool)

(assert (=> b!1470985 (= e!939329 (and tp!415056 tp!415054))))

(declare-fun b!1470987 () Bool)

(declare-fun tp!415053 () Bool)

(declare-fun tp!415055 () Bool)

(assert (=> b!1470987 (= e!939329 (and tp!415053 tp!415055))))

(declare-fun b!1470986 () Bool)

(declare-fun tp!415052 () Bool)

(assert (=> b!1470986 (= e!939329 tp!415052)))

(declare-fun b!1470984 () Bool)

(assert (=> b!1470984 (= e!939329 tp_is_empty!6917)))

(assert (=> b!1470730 (= tp!414975 e!939329)))

(assert (= (and b!1470730 ((_ is ElementMatch!4053) (regTwo!8618 (regex!2739 (h!20814 rules!4290))))) b!1470984))

(assert (= (and b!1470730 ((_ is Concat!6882) (regTwo!8618 (regex!2739 (h!20814 rules!4290))))) b!1470985))

(assert (= (and b!1470730 ((_ is Star!4053) (regTwo!8618 (regex!2739 (h!20814 rules!4290))))) b!1470986))

(assert (= (and b!1470730 ((_ is Union!4053) (regTwo!8618 (regex!2739 (h!20814 rules!4290))))) b!1470987))

(declare-fun b!1470991 () Bool)

(declare-fun b_free!37159 () Bool)

(declare-fun b_next!37863 () Bool)

(assert (=> b!1470991 (= b_free!37159 (not b_next!37863))))

(declare-fun tp!415059 () Bool)

(declare-fun b_and!100917 () Bool)

(assert (=> b!1470991 (= tp!415059 b_and!100917)))

(declare-fun b_free!37161 () Bool)

(declare-fun b_next!37865 () Bool)

(assert (=> b!1470991 (= b_free!37161 (not b_next!37865))))

(declare-fun t!135696 () Bool)

(declare-fun tb!83377 () Bool)

(assert (=> (and b!1470991 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 (t!135573 l1!3136)))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) t!135696) tb!83377))

(declare-fun result!100218 () Bool)

(assert (= result!100218 result!100110))

(assert (=> b!1470655 t!135696))

(declare-fun tb!83379 () Bool)

(declare-fun t!135698 () Bool)

(assert (=> (and b!1470991 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 (t!135573 l1!3136)))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105)))))) t!135698) tb!83379))

(declare-fun result!100220 () Bool)

(assert (= result!100220 result!100186))

(assert (=> b!1470931 t!135698))

(declare-fun tb!83381 () Bool)

(declare-fun t!135700 () Bool)

(assert (=> (and b!1470991 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 (t!135573 l1!3136)))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105))))) t!135700) tb!83381))

(declare-fun result!100222 () Bool)

(assert (= result!100222 result!100102))

(assert (=> b!1470637 t!135700))

(declare-fun t!135702 () Bool)

(declare-fun tb!83383 () Bool)

(assert (=> (and b!1470991 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 (t!135573 l1!3136)))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136)))))) t!135702) tb!83383))

(declare-fun result!100224 () Bool)

(assert (= result!100224 result!100162))

(assert (=> d!431415 t!135702))

(assert (=> b!1470819 t!135702))

(declare-fun tp!415061 () Bool)

(declare-fun b_and!100919 () Bool)

(assert (=> b!1470991 (= tp!415061 (and (=> t!135696 result!100218) (=> t!135698 result!100220) (=> t!135702 result!100224) (=> t!135700 result!100222) b_and!100919))))

(declare-fun e!939334 () Bool)

(declare-fun e!939335 () Bool)

(declare-fun tp!415058 () Bool)

(declare-fun b!1470988 () Bool)

(assert (=> b!1470988 (= e!939334 (and (inv!20616 (h!20815 (t!135573 (t!135573 l1!3136)))) e!939335 tp!415058))))

(declare-fun tp!415060 () Bool)

(declare-fun e!939332 () Bool)

(declare-fun e!939333 () Bool)

(declare-fun b!1470990 () Bool)

(assert (=> b!1470990 (= e!939333 (and tp!415060 (inv!20612 (tag!3003 (rule!4516 (h!20815 (t!135573 (t!135573 l1!3136)))))) (inv!20615 (transformation!2739 (rule!4516 (h!20815 (t!135573 (t!135573 l1!3136)))))) e!939332))))

(assert (=> b!1470991 (= e!939332 (and tp!415059 tp!415061))))

(assert (=> b!1470737 (= tp!414984 e!939334)))

(declare-fun tp!415057 () Bool)

(declare-fun b!1470989 () Bool)

(assert (=> b!1470989 (= e!939335 (and (inv!21 (value!87709 (h!20815 (t!135573 (t!135573 l1!3136))))) e!939333 tp!415057))))

(assert (= b!1470990 b!1470991))

(assert (= b!1470989 b!1470990))

(assert (= b!1470988 b!1470989))

(assert (= (and b!1470737 ((_ is Cons!15414) (t!135573 (t!135573 l1!3136)))) b!1470988))

(declare-fun m!1715313 () Bool)

(assert (=> b!1470988 m!1715313))

(declare-fun m!1715315 () Bool)

(assert (=> b!1470990 m!1715315))

(declare-fun m!1715317 () Bool)

(assert (=> b!1470990 m!1715317))

(declare-fun m!1715319 () Bool)

(assert (=> b!1470989 m!1715319))

(declare-fun e!939340 () Bool)

(declare-fun tp!415069 () Bool)

(declare-fun b!1471000 () Bool)

(declare-fun tp!415070 () Bool)

(assert (=> b!1471000 (= e!939340 (and (inv!20619 (left!13046 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105)))))) tp!415070 (inv!20619 (right!13376 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105)))))) tp!415069))))

(declare-fun b!1471002 () Bool)

(declare-fun e!939341 () Bool)

(declare-fun tp!415068 () Bool)

(assert (=> b!1471002 (= e!939341 tp!415068)))

(declare-fun b!1471001 () Bool)

(declare-fun inv!20625 (IArray!10521) Bool)

(assert (=> b!1471001 (= e!939340 (and (inv!20625 (xs!8013 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105)))))) e!939341))))

(assert (=> b!1470643 (= tp!414914 (and (inv!20619 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105))))) e!939340))))

(assert (= (and b!1470643 ((_ is Node!5258) (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105)))))) b!1471000))

(assert (= b!1471001 b!1471002))

(assert (= (and b!1470643 ((_ is Leaf!7829) (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (value!87709 (h!20815 l2!3105)))))) b!1471001))

(declare-fun m!1715323 () Bool)

(assert (=> b!1471000 m!1715323))

(declare-fun m!1715325 () Bool)

(assert (=> b!1471000 m!1715325))

(declare-fun m!1715327 () Bool)

(assert (=> b!1471001 m!1715327))

(assert (=> b!1470643 m!1714825))

(declare-fun b!1471004 () Bool)

(declare-fun e!939342 () Bool)

(declare-fun tp!415075 () Bool)

(declare-fun tp!415073 () Bool)

(assert (=> b!1471004 (= e!939342 (and tp!415075 tp!415073))))

(declare-fun b!1471006 () Bool)

(declare-fun tp!415072 () Bool)

(declare-fun tp!415074 () Bool)

(assert (=> b!1471006 (= e!939342 (and tp!415072 tp!415074))))

(declare-fun b!1471005 () Bool)

(declare-fun tp!415071 () Bool)

(assert (=> b!1471005 (= e!939342 tp!415071)))

(declare-fun b!1471003 () Bool)

(assert (=> b!1471003 (= e!939342 tp_is_empty!6917)))

(assert (=> b!1470732 (= tp!414974 e!939342)))

(assert (= (and b!1470732 ((_ is ElementMatch!4053) (regOne!8619 (regex!2739 (h!20814 rules!4290))))) b!1471003))

(assert (= (and b!1470732 ((_ is Concat!6882) (regOne!8619 (regex!2739 (h!20814 rules!4290))))) b!1471004))

(assert (= (and b!1470732 ((_ is Star!4053) (regOne!8619 (regex!2739 (h!20814 rules!4290))))) b!1471005))

(assert (= (and b!1470732 ((_ is Union!4053) (regOne!8619 (regex!2739 (h!20814 rules!4290))))) b!1471006))

(declare-fun b!1471008 () Bool)

(declare-fun e!939343 () Bool)

(declare-fun tp!415080 () Bool)

(declare-fun tp!415078 () Bool)

(assert (=> b!1471008 (= e!939343 (and tp!415080 tp!415078))))

(declare-fun b!1471010 () Bool)

(declare-fun tp!415077 () Bool)

(declare-fun tp!415079 () Bool)

(assert (=> b!1471010 (= e!939343 (and tp!415077 tp!415079))))

(declare-fun b!1471009 () Bool)

(declare-fun tp!415076 () Bool)

(assert (=> b!1471009 (= e!939343 tp!415076)))

(declare-fun b!1471007 () Bool)

(assert (=> b!1471007 (= e!939343 tp_is_empty!6917)))

(assert (=> b!1470732 (= tp!414976 e!939343)))

(assert (= (and b!1470732 ((_ is ElementMatch!4053) (regTwo!8619 (regex!2739 (h!20814 rules!4290))))) b!1471007))

(assert (= (and b!1470732 ((_ is Concat!6882) (regTwo!8619 (regex!2739 (h!20814 rules!4290))))) b!1471008))

(assert (= (and b!1470732 ((_ is Star!4053) (regTwo!8619 (regex!2739 (h!20814 rules!4290))))) b!1471009))

(assert (= (and b!1470732 ((_ is Union!4053) (regTwo!8619 (regex!2739 (h!20814 rules!4290))))) b!1471010))

(declare-fun b!1471012 () Bool)

(declare-fun e!939344 () Bool)

(declare-fun tp!415085 () Bool)

(declare-fun tp!415083 () Bool)

(assert (=> b!1471012 (= e!939344 (and tp!415085 tp!415083))))

(declare-fun b!1471014 () Bool)

(declare-fun tp!415082 () Bool)

(declare-fun tp!415084 () Bool)

(assert (=> b!1471014 (= e!939344 (and tp!415082 tp!415084))))

(declare-fun b!1471013 () Bool)

(declare-fun tp!415081 () Bool)

(assert (=> b!1471013 (= e!939344 tp!415081)))

(declare-fun b!1471011 () Bool)

(assert (=> b!1471011 (= e!939344 tp_is_empty!6917)))

(assert (=> b!1470731 (= tp!414973 e!939344)))

(assert (= (and b!1470731 ((_ is ElementMatch!4053) (reg!4382 (regex!2739 (h!20814 rules!4290))))) b!1471011))

(assert (= (and b!1470731 ((_ is Concat!6882) (reg!4382 (regex!2739 (h!20814 rules!4290))))) b!1471012))

(assert (= (and b!1470731 ((_ is Star!4053) (reg!4382 (regex!2739 (h!20814 rules!4290))))) b!1471013))

(assert (= (and b!1470731 ((_ is Union!4053) (reg!4382 (regex!2739 (h!20814 rules!4290))))) b!1471014))

(declare-fun b!1471016 () Bool)

(declare-fun e!939345 () Bool)

(declare-fun tp!415090 () Bool)

(declare-fun tp!415088 () Bool)

(assert (=> b!1471016 (= e!939345 (and tp!415090 tp!415088))))

(declare-fun b!1471018 () Bool)

(declare-fun tp!415087 () Bool)

(declare-fun tp!415089 () Bool)

(assert (=> b!1471018 (= e!939345 (and tp!415087 tp!415089))))

(declare-fun b!1471017 () Bool)

(declare-fun tp!415086 () Bool)

(assert (=> b!1471017 (= e!939345 tp!415086)))

(declare-fun b!1471015 () Bool)

(assert (=> b!1471015 (= e!939345 tp_is_empty!6917)))

(assert (=> b!1470680 (= tp!414929 e!939345)))

(assert (= (and b!1470680 ((_ is ElementMatch!4053) (regex!2739 (h!20814 (t!135572 rules!4290))))) b!1471015))

(assert (= (and b!1470680 ((_ is Concat!6882) (regex!2739 (h!20814 (t!135572 rules!4290))))) b!1471016))

(assert (= (and b!1470680 ((_ is Star!4053) (regex!2739 (h!20814 (t!135572 rules!4290))))) b!1471017))

(assert (= (and b!1470680 ((_ is Union!4053) (regex!2739 (h!20814 (t!135572 rules!4290))))) b!1471018))

(declare-fun b!1471020 () Bool)

(declare-fun e!939346 () Bool)

(declare-fun tp!415095 () Bool)

(declare-fun tp!415093 () Bool)

(assert (=> b!1471020 (= e!939346 (and tp!415095 tp!415093))))

(declare-fun b!1471022 () Bool)

(declare-fun tp!415092 () Bool)

(declare-fun tp!415094 () Bool)

(assert (=> b!1471022 (= e!939346 (and tp!415092 tp!415094))))

(declare-fun b!1471021 () Bool)

(declare-fun tp!415091 () Bool)

(assert (=> b!1471021 (= e!939346 tp!415091)))

(declare-fun b!1471019 () Bool)

(assert (=> b!1471019 (= e!939346 tp_is_empty!6917)))

(assert (=> b!1470739 (= tp!414986 e!939346)))

(assert (= (and b!1470739 ((_ is ElementMatch!4053) (regex!2739 (rule!4516 (h!20815 (t!135573 l1!3136)))))) b!1471019))

(assert (= (and b!1470739 ((_ is Concat!6882) (regex!2739 (rule!4516 (h!20815 (t!135573 l1!3136)))))) b!1471020))

(assert (= (and b!1470739 ((_ is Star!4053) (regex!2739 (rule!4516 (h!20815 (t!135573 l1!3136)))))) b!1471021))

(assert (= (and b!1470739 ((_ is Union!4053) (regex!2739 (rule!4516 (h!20815 (t!135573 l1!3136)))))) b!1471022))

(declare-fun b!1471023 () Bool)

(declare-fun e!939347 () Bool)

(declare-fun tp!415096 () Bool)

(assert (=> b!1471023 (= e!939347 (and tp_is_empty!6917 tp!415096))))

(assert (=> b!1470738 (= tp!414983 e!939347)))

(assert (= (and b!1470738 ((_ is Cons!15412) (originalCharacters!3601 (h!20815 (t!135573 l1!3136))))) b!1471023))

(declare-fun b!1471025 () Bool)

(declare-fun e!939348 () Bool)

(declare-fun tp!415101 () Bool)

(declare-fun tp!415099 () Bool)

(assert (=> b!1471025 (= e!939348 (and tp!415101 tp!415099))))

(declare-fun b!1471027 () Bool)

(declare-fun tp!415098 () Bool)

(declare-fun tp!415100 () Bool)

(assert (=> b!1471027 (= e!939348 (and tp!415098 tp!415100))))

(declare-fun b!1471026 () Bool)

(declare-fun tp!415097 () Bool)

(assert (=> b!1471026 (= e!939348 tp!415097)))

(declare-fun b!1471024 () Bool)

(assert (=> b!1471024 (= e!939348 tp_is_empty!6917)))

(assert (=> b!1470696 (= tp!414942 e!939348)))

(assert (= (and b!1470696 ((_ is ElementMatch!4053) (reg!4382 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471024))

(assert (= (and b!1470696 ((_ is Concat!6882) (reg!4382 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471025))

(assert (= (and b!1470696 ((_ is Star!4053) (reg!4382 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471026))

(assert (= (and b!1470696 ((_ is Union!4053) (reg!4382 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471027))

(declare-fun b!1471029 () Bool)

(declare-fun e!939349 () Bool)

(declare-fun tp!415106 () Bool)

(declare-fun tp!415104 () Bool)

(assert (=> b!1471029 (= e!939349 (and tp!415106 tp!415104))))

(declare-fun b!1471031 () Bool)

(declare-fun tp!415103 () Bool)

(declare-fun tp!415105 () Bool)

(assert (=> b!1471031 (= e!939349 (and tp!415103 tp!415105))))

(declare-fun b!1471030 () Bool)

(declare-fun tp!415102 () Bool)

(assert (=> b!1471030 (= e!939349 tp!415102)))

(declare-fun b!1471028 () Bool)

(assert (=> b!1471028 (= e!939349 tp_is_empty!6917)))

(assert (=> b!1470695 (= tp!414946 e!939349)))

(assert (= (and b!1470695 ((_ is ElementMatch!4053) (regOne!8618 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471028))

(assert (= (and b!1470695 ((_ is Concat!6882) (regOne!8618 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471029))

(assert (= (and b!1470695 ((_ is Star!4053) (regOne!8618 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471030))

(assert (= (and b!1470695 ((_ is Union!4053) (regOne!8618 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471031))

(declare-fun b!1471035 () Bool)

(declare-fun e!939350 () Bool)

(declare-fun tp!415111 () Bool)

(declare-fun tp!415109 () Bool)

(assert (=> b!1471035 (= e!939350 (and tp!415111 tp!415109))))

(declare-fun b!1471037 () Bool)

(declare-fun tp!415108 () Bool)

(declare-fun tp!415110 () Bool)

(assert (=> b!1471037 (= e!939350 (and tp!415108 tp!415110))))

(declare-fun b!1471036 () Bool)

(declare-fun tp!415107 () Bool)

(assert (=> b!1471036 (= e!939350 tp!415107)))

(declare-fun b!1471034 () Bool)

(assert (=> b!1471034 (= e!939350 tp_is_empty!6917)))

(assert (=> b!1470695 (= tp!414944 e!939350)))

(assert (= (and b!1470695 ((_ is ElementMatch!4053) (regTwo!8618 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471034))

(assert (= (and b!1470695 ((_ is Concat!6882) (regTwo!8618 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471035))

(assert (= (and b!1470695 ((_ is Star!4053) (regTwo!8618 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471036))

(assert (= (and b!1470695 ((_ is Union!4053) (regTwo!8618 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471037))

(declare-fun b!1471038 () Bool)

(declare-fun e!939351 () Bool)

(declare-fun tp!415112 () Bool)

(assert (=> b!1471038 (= e!939351 (and tp_is_empty!6917 tp!415112))))

(assert (=> b!1470724 (= tp!414960 e!939351)))

(assert (= (and b!1470724 ((_ is Cons!15412) (originalCharacters!3601 (h!20815 (t!135573 l2!3105))))) b!1471038))

(declare-fun b!1471040 () Bool)

(declare-fun e!939352 () Bool)

(declare-fun tp!415117 () Bool)

(declare-fun tp!415115 () Bool)

(assert (=> b!1471040 (= e!939352 (and tp!415117 tp!415115))))

(declare-fun b!1471042 () Bool)

(declare-fun tp!415114 () Bool)

(declare-fun tp!415116 () Bool)

(assert (=> b!1471042 (= e!939352 (and tp!415114 tp!415116))))

(declare-fun b!1471041 () Bool)

(declare-fun tp!415113 () Bool)

(assert (=> b!1471041 (= e!939352 tp!415113)))

(declare-fun b!1471039 () Bool)

(assert (=> b!1471039 (= e!939352 tp_is_empty!6917)))

(assert (=> b!1470734 (= tp!414982 e!939352)))

(assert (= (and b!1470734 ((_ is ElementMatch!4053) (regOne!8618 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471039))

(assert (= (and b!1470734 ((_ is Concat!6882) (regOne!8618 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471040))

(assert (= (and b!1470734 ((_ is Star!4053) (regOne!8618 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471041))

(assert (= (and b!1470734 ((_ is Union!4053) (regOne!8618 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471042))

(declare-fun b!1471045 () Bool)

(declare-fun e!939354 () Bool)

(declare-fun tp!415122 () Bool)

(declare-fun tp!415120 () Bool)

(assert (=> b!1471045 (= e!939354 (and tp!415122 tp!415120))))

(declare-fun b!1471047 () Bool)

(declare-fun tp!415119 () Bool)

(declare-fun tp!415121 () Bool)

(assert (=> b!1471047 (= e!939354 (and tp!415119 tp!415121))))

(declare-fun b!1471046 () Bool)

(declare-fun tp!415118 () Bool)

(assert (=> b!1471046 (= e!939354 tp!415118)))

(declare-fun b!1471044 () Bool)

(assert (=> b!1471044 (= e!939354 tp_is_empty!6917)))

(assert (=> b!1470734 (= tp!414980 e!939354)))

(assert (= (and b!1470734 ((_ is ElementMatch!4053) (regTwo!8618 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471044))

(assert (= (and b!1470734 ((_ is Concat!6882) (regTwo!8618 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471045))

(assert (= (and b!1470734 ((_ is Star!4053) (regTwo!8618 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471046))

(assert (= (and b!1470734 ((_ is Union!4053) (regTwo!8618 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471047))

(declare-fun b!1471051 () Bool)

(declare-fun b_free!37163 () Bool)

(declare-fun b_next!37867 () Bool)

(assert (=> b!1471051 (= b_free!37163 (not b_next!37867))))

(declare-fun tp!415125 () Bool)

(declare-fun b_and!100921 () Bool)

(assert (=> b!1471051 (= tp!415125 b_and!100921)))

(declare-fun b_free!37165 () Bool)

(declare-fun b_next!37869 () Bool)

(assert (=> b!1471051 (= b_free!37165 (not b_next!37869))))

(declare-fun tb!83385 () Bool)

(declare-fun t!135704 () Bool)

(assert (=> (and b!1471051 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 (t!135573 l2!3105)))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136))))) t!135704) tb!83385))

(declare-fun result!100228 () Bool)

(assert (= result!100228 result!100110))

(assert (=> b!1470655 t!135704))

(declare-fun t!135706 () Bool)

(declare-fun tb!83387 () Bool)

(assert (=> (and b!1471051 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 (t!135573 l2!3105)))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105)))))) t!135706) tb!83387))

(declare-fun result!100230 () Bool)

(assert (= result!100230 result!100186))

(assert (=> b!1470931 t!135706))

(declare-fun t!135708 () Bool)

(declare-fun tb!83389 () Bool)

(assert (=> (and b!1471051 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 (t!135573 l2!3105)))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105))))) t!135708) tb!83389))

(declare-fun result!100232 () Bool)

(assert (= result!100232 result!100102))

(assert (=> b!1470637 t!135708))

(declare-fun t!135710 () Bool)

(declare-fun tb!83391 () Bool)

(assert (=> (and b!1471051 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 (t!135573 l2!3105)))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136)))))) t!135710) tb!83391))

(declare-fun result!100234 () Bool)

(assert (= result!100234 result!100162))

(assert (=> d!431415 t!135710))

(assert (=> b!1470819 t!135710))

(declare-fun b_and!100923 () Bool)

(declare-fun tp!415127 () Bool)

(assert (=> b!1471051 (= tp!415127 (and (=> t!135710 result!100234) (=> t!135704 result!100228) (=> t!135706 result!100230) (=> t!135708 result!100232) b_and!100923))))

(declare-fun e!939360 () Bool)

(declare-fun tp!415124 () Bool)

(declare-fun e!939359 () Bool)

(declare-fun b!1471048 () Bool)

(assert (=> b!1471048 (= e!939359 (and (inv!20616 (h!20815 (t!135573 (t!135573 l2!3105)))) e!939360 tp!415124))))

(declare-fun b!1471050 () Bool)

(declare-fun tp!415126 () Bool)

(declare-fun e!939357 () Bool)

(declare-fun e!939358 () Bool)

(assert (=> b!1471050 (= e!939358 (and tp!415126 (inv!20612 (tag!3003 (rule!4516 (h!20815 (t!135573 (t!135573 l2!3105)))))) (inv!20615 (transformation!2739 (rule!4516 (h!20815 (t!135573 (t!135573 l2!3105)))))) e!939357))))

(assert (=> b!1471051 (= e!939357 (and tp!415125 tp!415127))))

(assert (=> b!1470723 (= tp!414961 e!939359)))

(declare-fun b!1471049 () Bool)

(declare-fun tp!415123 () Bool)

(assert (=> b!1471049 (= e!939360 (and (inv!21 (value!87709 (h!20815 (t!135573 (t!135573 l2!3105))))) e!939358 tp!415123))))

(assert (= b!1471050 b!1471051))

(assert (= b!1471049 b!1471050))

(assert (= b!1471048 b!1471049))

(assert (= (and b!1470723 ((_ is Cons!15414) (t!135573 (t!135573 l2!3105)))) b!1471048))

(declare-fun m!1715337 () Bool)

(assert (=> b!1471048 m!1715337))

(declare-fun m!1715339 () Bool)

(assert (=> b!1471050 m!1715339))

(declare-fun m!1715341 () Bool)

(assert (=> b!1471050 m!1715341))

(declare-fun m!1715343 () Bool)

(assert (=> b!1471049 m!1715343))

(declare-fun b!1471052 () Bool)

(declare-fun e!939361 () Bool)

(declare-fun tp!415128 () Bool)

(assert (=> b!1471052 (= e!939361 (and tp_is_empty!6917 tp!415128))))

(assert (=> b!1470667 (= tp!414918 e!939361)))

(assert (= (and b!1470667 ((_ is Cons!15412) (t!135571 (originalCharacters!3601 (h!20815 l1!3136))))) b!1471052))

(declare-fun b!1471054 () Bool)

(declare-fun e!939362 () Bool)

(declare-fun tp!415133 () Bool)

(declare-fun tp!415131 () Bool)

(assert (=> b!1471054 (= e!939362 (and tp!415133 tp!415131))))

(declare-fun b!1471056 () Bool)

(declare-fun tp!415130 () Bool)

(declare-fun tp!415132 () Bool)

(assert (=> b!1471056 (= e!939362 (and tp!415130 tp!415132))))

(declare-fun b!1471055 () Bool)

(declare-fun tp!415129 () Bool)

(assert (=> b!1471055 (= e!939362 tp!415129)))

(declare-fun b!1471053 () Bool)

(assert (=> b!1471053 (= e!939362 tp_is_empty!6917)))

(assert (=> b!1470697 (= tp!414943 e!939362)))

(assert (= (and b!1470697 ((_ is ElementMatch!4053) (regOne!8619 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471053))

(assert (= (and b!1470697 ((_ is Concat!6882) (regOne!8619 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471054))

(assert (= (and b!1470697 ((_ is Star!4053) (regOne!8619 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471055))

(assert (= (and b!1470697 ((_ is Union!4053) (regOne!8619 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471056))

(declare-fun b!1471058 () Bool)

(declare-fun e!939363 () Bool)

(declare-fun tp!415138 () Bool)

(declare-fun tp!415136 () Bool)

(assert (=> b!1471058 (= e!939363 (and tp!415138 tp!415136))))

(declare-fun b!1471060 () Bool)

(declare-fun tp!415135 () Bool)

(declare-fun tp!415137 () Bool)

(assert (=> b!1471060 (= e!939363 (and tp!415135 tp!415137))))

(declare-fun b!1471059 () Bool)

(declare-fun tp!415134 () Bool)

(assert (=> b!1471059 (= e!939363 tp!415134)))

(declare-fun b!1471057 () Bool)

(assert (=> b!1471057 (= e!939363 tp_is_empty!6917)))

(assert (=> b!1470697 (= tp!414945 e!939363)))

(assert (= (and b!1470697 ((_ is ElementMatch!4053) (regTwo!8619 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471057))

(assert (= (and b!1470697 ((_ is Concat!6882) (regTwo!8619 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471058))

(assert (= (and b!1470697 ((_ is Star!4053) (regTwo!8619 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471059))

(assert (= (and b!1470697 ((_ is Union!4053) (regTwo!8619 (regex!2739 (rule!4516 (h!20815 l1!3136)))))) b!1471060))

(declare-fun b!1471062 () Bool)

(declare-fun e!939364 () Bool)

(declare-fun tp!415143 () Bool)

(declare-fun tp!415141 () Bool)

(assert (=> b!1471062 (= e!939364 (and tp!415143 tp!415141))))

(declare-fun b!1471064 () Bool)

(declare-fun tp!415140 () Bool)

(declare-fun tp!415142 () Bool)

(assert (=> b!1471064 (= e!939364 (and tp!415140 tp!415142))))

(declare-fun b!1471063 () Bool)

(declare-fun tp!415139 () Bool)

(assert (=> b!1471063 (= e!939364 tp!415139)))

(declare-fun b!1471061 () Bool)

(assert (=> b!1471061 (= e!939364 tp_is_empty!6917)))

(assert (=> b!1470736 (= tp!414979 e!939364)))

(assert (= (and b!1470736 ((_ is ElementMatch!4053) (regOne!8619 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471061))

(assert (= (and b!1470736 ((_ is Concat!6882) (regOne!8619 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471062))

(assert (= (and b!1470736 ((_ is Star!4053) (regOne!8619 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471063))

(assert (= (and b!1470736 ((_ is Union!4053) (regOne!8619 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471064))

(declare-fun b!1471066 () Bool)

(declare-fun e!939365 () Bool)

(declare-fun tp!415148 () Bool)

(declare-fun tp!415146 () Bool)

(assert (=> b!1471066 (= e!939365 (and tp!415148 tp!415146))))

(declare-fun b!1471068 () Bool)

(declare-fun tp!415145 () Bool)

(declare-fun tp!415147 () Bool)

(assert (=> b!1471068 (= e!939365 (and tp!415145 tp!415147))))

(declare-fun b!1471067 () Bool)

(declare-fun tp!415144 () Bool)

(assert (=> b!1471067 (= e!939365 tp!415144)))

(declare-fun b!1471065 () Bool)

(assert (=> b!1471065 (= e!939365 tp_is_empty!6917)))

(assert (=> b!1470736 (= tp!414981 e!939365)))

(assert (= (and b!1470736 ((_ is ElementMatch!4053) (regTwo!8619 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471065))

(assert (= (and b!1470736 ((_ is Concat!6882) (regTwo!8619 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471066))

(assert (= (and b!1470736 ((_ is Star!4053) (regTwo!8619 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471067))

(assert (= (and b!1470736 ((_ is Union!4053) (regTwo!8619 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471068))

(declare-fun b!1471070 () Bool)

(declare-fun e!939366 () Bool)

(declare-fun tp!415153 () Bool)

(declare-fun tp!415151 () Bool)

(assert (=> b!1471070 (= e!939366 (and tp!415153 tp!415151))))

(declare-fun b!1471072 () Bool)

(declare-fun tp!415150 () Bool)

(declare-fun tp!415152 () Bool)

(assert (=> b!1471072 (= e!939366 (and tp!415150 tp!415152))))

(declare-fun b!1471071 () Bool)

(declare-fun tp!415149 () Bool)

(assert (=> b!1471071 (= e!939366 tp!415149)))

(declare-fun b!1471069 () Bool)

(assert (=> b!1471069 (= e!939366 tp_is_empty!6917)))

(assert (=> b!1470725 (= tp!414963 e!939366)))

(assert (= (and b!1470725 ((_ is ElementMatch!4053) (regex!2739 (rule!4516 (h!20815 (t!135573 l2!3105)))))) b!1471069))

(assert (= (and b!1470725 ((_ is Concat!6882) (regex!2739 (rule!4516 (h!20815 (t!135573 l2!3105)))))) b!1471070))

(assert (= (and b!1470725 ((_ is Star!4053) (regex!2739 (rule!4516 (h!20815 (t!135573 l2!3105)))))) b!1471071))

(assert (= (and b!1470725 ((_ is Union!4053) (regex!2739 (rule!4516 (h!20815 (t!135573 l2!3105)))))) b!1471072))

(declare-fun b!1471074 () Bool)

(declare-fun e!939367 () Bool)

(declare-fun tp!415158 () Bool)

(declare-fun tp!415156 () Bool)

(assert (=> b!1471074 (= e!939367 (and tp!415158 tp!415156))))

(declare-fun b!1471076 () Bool)

(declare-fun tp!415155 () Bool)

(declare-fun tp!415157 () Bool)

(assert (=> b!1471076 (= e!939367 (and tp!415155 tp!415157))))

(declare-fun b!1471075 () Bool)

(declare-fun tp!415154 () Bool)

(assert (=> b!1471075 (= e!939367 tp!415154)))

(declare-fun b!1471073 () Bool)

(assert (=> b!1471073 (= e!939367 tp_is_empty!6917)))

(assert (=> b!1470735 (= tp!414978 e!939367)))

(assert (= (and b!1470735 ((_ is ElementMatch!4053) (reg!4382 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471073))

(assert (= (and b!1470735 ((_ is Concat!6882) (reg!4382 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471074))

(assert (= (and b!1470735 ((_ is Star!4053) (reg!4382 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471075))

(assert (= (and b!1470735 ((_ is Union!4053) (reg!4382 (regex!2739 (rule!4516 (h!20815 l2!3105)))))) b!1471076))

(declare-fun b!1471079 () Bool)

(declare-fun e!939370 () Bool)

(assert (=> b!1471079 (= e!939370 true)))

(declare-fun b!1471078 () Bool)

(declare-fun e!939369 () Bool)

(assert (=> b!1471078 (= e!939369 e!939370)))

(declare-fun b!1471077 () Bool)

(declare-fun e!939368 () Bool)

(assert (=> b!1471077 (= e!939368 e!939369)))

(assert (=> b!1470564 e!939368))

(assert (= b!1471078 b!1471079))

(assert (= b!1471077 b!1471078))

(assert (= (and b!1470564 ((_ is Cons!15413) (t!135572 rules!4290))) b!1471077))

(assert (=> b!1471079 (< (dynLambda!6994 order!9251 (toValue!4062 (transformation!2739 (h!20814 (t!135572 rules!4290))))) (dynLambda!6995 order!9253 lambda!63468))))

(assert (=> b!1471079 (< (dynLambda!6996 order!9255 (toChars!3921 (transformation!2739 (h!20814 (t!135572 rules!4290))))) (dynLambda!6995 order!9253 lambda!63468))))

(declare-fun e!939373 () Bool)

(declare-fun tp!415161 () Bool)

(declare-fun b!1471082 () Bool)

(declare-fun tp!415160 () Bool)

(assert (=> b!1471082 (= e!939373 (and (inv!20619 (left!13046 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136)))))) tp!415161 (inv!20619 (right!13376 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136)))))) tp!415160))))

(declare-fun b!1471084 () Bool)

(declare-fun e!939374 () Bool)

(declare-fun tp!415159 () Bool)

(assert (=> b!1471084 (= e!939374 tp!415159)))

(declare-fun b!1471083 () Bool)

(assert (=> b!1471083 (= e!939373 (and (inv!20625 (xs!8013 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136)))))) e!939374))))

(assert (=> b!1470657 (= tp!414915 (and (inv!20619 (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136))))) e!939373))))

(assert (= (and b!1470657 ((_ is Node!5258) (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136)))))) b!1471082))

(assert (= b!1471083 b!1471084))

(assert (= (and b!1470657 ((_ is Leaf!7829) (c!242234 (dynLambda!7000 (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (value!87709 (h!20815 l1!3136)))))) b!1471083))

(declare-fun m!1715345 () Bool)

(assert (=> b!1471082 m!1715345))

(declare-fun m!1715347 () Bool)

(assert (=> b!1471082 m!1715347))

(declare-fun m!1715349 () Bool)

(assert (=> b!1471083 m!1715349))

(assert (=> b!1470657 m!1714851))

(declare-fun b!1471087 () Bool)

(declare-fun e!939377 () Bool)

(assert (=> b!1471087 (= e!939377 true)))

(declare-fun b!1471086 () Bool)

(declare-fun e!939376 () Bool)

(assert (=> b!1471086 (= e!939376 e!939377)))

(declare-fun b!1471085 () Bool)

(declare-fun e!939375 () Bool)

(assert (=> b!1471085 (= e!939375 e!939376)))

(assert (=> b!1470651 e!939375))

(assert (= b!1471086 b!1471087))

(assert (= b!1471085 b!1471086))

(assert (= (and b!1470651 ((_ is Cons!15413) (t!135572 rules!4290))) b!1471085))

(assert (=> b!1471087 (< (dynLambda!6994 order!9251 (toValue!4062 (transformation!2739 (h!20814 (t!135572 rules!4290))))) (dynLambda!6995 order!9253 lambda!63479))))

(assert (=> b!1471087 (< (dynLambda!6996 order!9255 (toChars!3921 (transformation!2739 (h!20814 (t!135572 rules!4290))))) (dynLambda!6995 order!9253 lambda!63479))))

(declare-fun b!1471088 () Bool)

(declare-fun e!939378 () Bool)

(declare-fun tp!415162 () Bool)

(assert (=> b!1471088 (= e!939378 (and tp_is_empty!6917 tp!415162))))

(assert (=> b!1470698 (= tp!414947 e!939378)))

(assert (= (and b!1470698 ((_ is Cons!15412) (t!135571 (originalCharacters!3601 (h!20815 l2!3105))))) b!1471088))

(declare-fun b_lambda!45925 () Bool)

(assert (= b_lambda!45921 (or d!431249 b_lambda!45925)))

(declare-fun bs!345129 () Bool)

(declare-fun d!431497 () Bool)

(assert (= bs!345129 (and d!431497 d!431249)))

(assert (=> bs!345129 (= (dynLambda!7002 lambda!63468 (h!20815 l1!3136)) (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 l1!3136)))))

(assert (=> bs!345129 m!1714749))

(assert (=> b!1470970 d!431497))

(declare-fun b_lambda!45927 () Bool)

(assert (= b_lambda!45911 (or (and b!1470740 b_free!37141) (and b!1470726 b_free!37137 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))))) (and b!1471051 b_free!37165 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 (t!135573 l2!3105)))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))))) (and b!1470515 b_free!37125 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))))) (and b!1470516 b_free!37129 (= (toChars!3921 (transformation!2739 (h!20814 rules!4290))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))))) (and b!1470979 b_free!37157 (= (toChars!3921 (transformation!2739 (h!20814 (t!135572 (t!135572 rules!4290))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))))) (and b!1470681 b_free!37133 (= (toChars!3921 (transformation!2739 (h!20814 (t!135572 rules!4290)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))))) (and b!1470517 b_free!37121 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))))) (and b!1470991 b_free!37161 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 (t!135573 l1!3136)))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))))) b_lambda!45927)))

(declare-fun b_lambda!45929 () Bool)

(assert (= b_lambda!45907 (or d!431297 b_lambda!45929)))

(declare-fun bs!345130 () Bool)

(declare-fun d!431499 () Bool)

(assert (= bs!345130 (and d!431499 d!431297)))

(assert (=> bs!345130 (= (dynLambda!7002 lambda!63479 (h!20815 l2!3105)) (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 l2!3105)))))

(assert (=> bs!345130 m!1714843))

(assert (=> b!1470842 d!431499))

(declare-fun b_lambda!45931 () Bool)

(assert (= b_lambda!45905 (or (and b!1470740 b_free!37141) (and b!1470726 b_free!37137 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))))) (and b!1471051 b_free!37165 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 (t!135573 l2!3105)))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))))) (and b!1470515 b_free!37125 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))))) (and b!1470516 b_free!37129 (= (toChars!3921 (transformation!2739 (h!20814 rules!4290))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))))) (and b!1470979 b_free!37157 (= (toChars!3921 (transformation!2739 (h!20814 (t!135572 (t!135572 rules!4290))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))))) (and b!1470681 b_free!37133 (= (toChars!3921 (transformation!2739 (h!20814 (t!135572 rules!4290)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))))) (and b!1470517 b_free!37121 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))))) (and b!1470991 b_free!37161 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 (t!135573 l1!3136)))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))))) b_lambda!45931)))

(declare-fun b_lambda!45933 () Bool)

(assert (= b_lambda!45913 (or (and b!1470515 b_free!37125 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l2!3105)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))))) (and b!1471051 b_free!37165 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 (t!135573 l2!3105)))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))))) (and b!1470991 b_free!37161 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 (t!135573 l1!3136)))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))))) (and b!1470516 b_free!37129 (= (toChars!3921 (transformation!2739 (h!20814 rules!4290))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))))) (and b!1470726 b_free!37137) (and b!1470681 b_free!37133 (= (toChars!3921 (transformation!2739 (h!20814 (t!135572 rules!4290)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))))) (and b!1470740 b_free!37141 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l1!3136))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))))) (and b!1470517 b_free!37121 (= (toChars!3921 (transformation!2739 (rule!4516 (h!20815 l1!3136)))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))))) (and b!1470979 b_free!37157 (= (toChars!3921 (transformation!2739 (h!20814 (t!135572 (t!135572 rules!4290))))) (toChars!3921 (transformation!2739 (rule!4516 (h!20815 (t!135573 l2!3105))))))) b_lambda!45933)))

(declare-fun b_lambda!45935 () Bool)

(assert (= b_lambda!45903 (or d!431263 b_lambda!45935)))

(declare-fun bs!345131 () Bool)

(declare-fun d!431501 () Bool)

(assert (= bs!345131 (and d!431501 d!431263)))

(assert (=> bs!345131 (= (dynLambda!7002 lambda!63478 (h!20815 (list!6161 (seqFromList!1724 l2!3105)))) (rulesProduceIndividualToken!1257 thiss!27374 rules!4290 (h!20815 (list!6161 (seqFromList!1724 l2!3105)))))))

(assert (=> bs!345131 m!1714937))

(assert (=> b!1470807 d!431501))

(check-sat (not b!1471077) (not b!1471027) (not b!1471002) (not b!1471031) (not d!431375) (not d!431325) (not b!1470931) b_and!100889 (not b_next!37837) (not b!1470985) (not b_lambda!45897) (not b!1470839) (not b_next!37861) (not b!1471009) (not b!1470915) (not b!1471054) b_and!100797 (not b!1471083) (not b_lambda!45927) (not d!431473) (not b!1471084) (not bs!345131) (not b!1471020) (not b!1471055) (not b!1471042) (not b!1470953) (not b_next!37835) (not tb!83321) (not b!1470657) (not b!1470864) b_and!100897 (not b!1470830) (not b!1470978) b_and!100793 (not b!1471038) (not d!431383) (not b!1470643) (not b!1470934) b_and!100801 (not d!431435) (not b!1471037) (not d!431415) (not b!1470951) (not b!1470808) b_and!100917 (not b!1470956) (not b!1471062) (not d!431313) (not b!1470990) (not b!1470982) (not b!1471063) (not d!431337) (not b!1470799) (not b!1470935) (not b!1470819) (not b!1470971) (not b!1471045) (not b!1470957) (not b_next!37831) (not b_next!37863) (not b!1471006) (not b!1471001) (not d!431335) (not bs!345130) (not b!1471023) (not b!1470865) (not b!1471067) (not d!431445) (not b!1471082) (not b!1470793) b_and!100829 (not b_next!37869) (not b!1471074) (not b!1471025) (not b!1470977) (not b!1470983) tp_is_empty!6917 (not b_next!37845) (not b!1470925) (not b_next!37865) (not b!1471070) (not b!1471056) (not d!431319) (not b_lambda!45931) (not b_next!37843) (not b_next!37825) (not b_next!37867) (not b!1470833) (not b!1470916) (not b_lambda!45935) b_and!100915 (not b!1471041) (not b_next!37833) (not b!1471022) (not b!1470832) (not b!1470820) (not b!1471068) (not b!1471085) (not b_lambda!45929) (not b!1471008) (not b!1471066) (not b!1470836) (not d!431469) (not b!1470932) (not b!1471030) (not b!1471016) (not d!431475) (not b!1471026) (not b!1471059) (not b_lambda!45925) (not d!431315) (not b!1470917) (not b!1471064) (not b!1471088) (not b!1471040) (not b_next!37859) (not b!1470974) (not b!1471058) (not b!1470861) (not b!1470933) (not d!431317) (not b!1470958) (not b_next!37839) (not bs!345129) (not d!431349) b_and!100923 (not d!431369) (not d!431367) (not b!1470986) (not d!431377) (not b!1471050) (not b!1471010) (not d!431329) (not b!1470800) (not b!1471013) (not d!431343) (not b!1470838) (not d!431449) (not b!1471012) (not b!1470841) (not d!431443) (not b_next!37823) (not b!1470845) (not b_next!37841) (not b!1470987) (not b!1471052) (not b!1471046) b_and!100893 (not d!431361) (not b!1471047) (not b!1470954) (not b!1470844) (not b!1470817) b_and!100895 (not b_next!37829) (not b!1470926) b_and!100899 (not d!431385) (not b!1471000) (not b!1470866) (not b!1471060) b_and!100913 (not d!431347) (not b!1470988) (not b!1471018) b_and!100921 (not b_lambda!45895) b_and!100919 (not d!431379) (not d!431371) (not d!431339) (not b!1470989) (not b!1471035) b_and!100837 (not b_next!37827) (not b!1471029) (not d!431463) (not b!1470862) (not b!1470981) (not b!1471072) (not b!1471048) (not d!431425) (not d!431431) (not d!431321) (not b!1471004) (not d!431355) b_and!100833 (not b!1471071) (not b!1470835) (not b!1471021) (not b!1470798) (not b!1471017) (not b!1471075) (not d!431359) (not b!1470936) (not b!1471036) (not b!1471005) b_and!100891 (not b!1470818) (not b!1470843) (not d!431427) (not b!1470863) (not b!1471014) (not b!1470963) (not b!1471076) (not b_lambda!45933) (not b!1470928) (not b!1471049) (not b!1470821) (not tb!83345))
(check-sat (not b_next!37861) b_and!100797 b_and!100793 b_and!100801 b_and!100917 (not b_next!37845) (not b_next!37859) b_and!100833 b_and!100891 b_and!100889 (not b_next!37837) (not b_next!37835) b_and!100897 (not b_next!37831) (not b_next!37863) b_and!100829 (not b_next!37869) (not b_next!37865) (not b_next!37843) (not b_next!37825) (not b_next!37867) b_and!100915 (not b_next!37833) (not b_next!37839) b_and!100923 (not b_next!37823) (not b_next!37841) b_and!100893 b_and!100899 b_and!100895 (not b_next!37829) b_and!100913 b_and!100919 b_and!100921 b_and!100837 (not b_next!37827))

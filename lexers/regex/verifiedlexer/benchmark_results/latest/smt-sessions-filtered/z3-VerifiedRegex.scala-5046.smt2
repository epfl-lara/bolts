; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255622 () Bool)

(assert start!255622)

(declare-fun b!2628811 () Bool)

(declare-fun b_free!73997 () Bool)

(declare-fun b_next!74701 () Bool)

(assert (=> b!2628811 (= b_free!73997 (not b_next!74701))))

(declare-fun tp!833459 () Bool)

(declare-fun b_and!192555 () Bool)

(assert (=> b!2628811 (= tp!833459 b_and!192555)))

(declare-fun b_free!73999 () Bool)

(declare-fun b_next!74703 () Bool)

(assert (=> b!2628811 (= b_free!73999 (not b_next!74703))))

(declare-fun tp!833457 () Bool)

(declare-fun b_and!192557 () Bool)

(assert (=> b!2628811 (= tp!833457 b_and!192557)))

(declare-fun b!2628822 () Bool)

(declare-fun b_free!74001 () Bool)

(declare-fun b_next!74705 () Bool)

(assert (=> b!2628822 (= b_free!74001 (not b_next!74705))))

(declare-fun tp!833460 () Bool)

(declare-fun b_and!192559 () Bool)

(assert (=> b!2628822 (= tp!833460 b_and!192559)))

(declare-fun b_free!74003 () Bool)

(declare-fun b_next!74707 () Bool)

(assert (=> b!2628822 (= b_free!74003 (not b_next!74707))))

(declare-fun tp!833458 () Bool)

(declare-fun b_and!192561 () Bool)

(assert (=> b!2628822 (= tp!833458 b_and!192561)))

(declare-fun bs!475669 () Bool)

(declare-fun b!2628804 () Bool)

(declare-fun b!2628814 () Bool)

(assert (= bs!475669 (and b!2628804 b!2628814)))

(declare-fun lambda!98510 () Int)

(declare-fun lambda!98509 () Int)

(assert (=> bs!475669 (not (= lambda!98510 lambda!98509))))

(declare-fun b!2628834 () Bool)

(declare-fun e!1658534 () Bool)

(assert (=> b!2628834 (= e!1658534 true)))

(declare-fun b!2628833 () Bool)

(declare-fun e!1658533 () Bool)

(assert (=> b!2628833 (= e!1658533 e!1658534)))

(declare-fun b!2628832 () Bool)

(declare-fun e!1658532 () Bool)

(assert (=> b!2628832 (= e!1658532 e!1658533)))

(assert (=> b!2628804 e!1658532))

(assert (= b!2628833 b!2628834))

(assert (= b!2628832 b!2628833))

(declare-datatypes ((List!30489 0))(
  ( (Nil!30389) (Cons!30389 (h!35809 (_ BitVec 16)) (t!216178 List!30489)) )
))
(declare-datatypes ((C!15672 0))(
  ( (C!15673 (val!9770 Int)) )
))
(declare-datatypes ((Regex!7757 0))(
  ( (ElementMatch!7757 (c!422790 C!15672)) (Concat!12592 (regOne!16026 Regex!7757) (regTwo!16026 Regex!7757)) (EmptyExpr!7757) (Star!7757 (reg!8086 Regex!7757)) (EmptyLang!7757) (Union!7757 (regOne!16027 Regex!7757) (regTwo!16027 Regex!7757)) )
))
(declare-datatypes ((TokenValue!4835 0))(
  ( (FloatLiteralValue!9670 (text!34290 List!30489)) (TokenValueExt!4834 (__x!19503 Int)) (Broken!24175 (value!149049 List!30489)) (Object!4934) (End!4835) (Def!4835) (Underscore!4835) (Match!4835) (Else!4835) (Error!4835) (Case!4835) (If!4835) (Extends!4835) (Abstract!4835) (Class!4835) (Val!4835) (DelimiterValue!9670 (del!4895 List!30489)) (KeywordValue!4841 (value!149050 List!30489)) (CommentValue!9670 (value!149051 List!30489)) (WhitespaceValue!9670 (value!149052 List!30489)) (IndentationValue!4835 (value!149053 List!30489)) (String!34058) (Int32!4835) (Broken!24176 (value!149054 List!30489)) (Boolean!4836) (Unit!44424) (OperatorValue!4838 (op!4895 List!30489)) (IdentifierValue!9670 (value!149055 List!30489)) (IdentifierValue!9671 (value!149056 List!30489)) (WhitespaceValue!9671 (value!149057 List!30489)) (True!9670) (False!9670) (Broken!24177 (value!149058 List!30489)) (Broken!24178 (value!149059 List!30489)) (True!9671) (RightBrace!4835) (RightBracket!4835) (Colon!4835) (Null!4835) (Comma!4835) (LeftBracket!4835) (False!9671) (LeftBrace!4835) (ImaginaryLiteralValue!4835 (text!34291 List!30489)) (StringLiteralValue!14505 (value!149060 List!30489)) (EOFValue!4835 (value!149061 List!30489)) (IdentValue!4835 (value!149062 List!30489)) (DelimiterValue!9671 (value!149063 List!30489)) (DedentValue!4835 (value!149064 List!30489)) (NewLineValue!4835 (value!149065 List!30489)) (IntegerValue!14505 (value!149066 (_ BitVec 32)) (text!34292 List!30489)) (IntegerValue!14506 (value!149067 Int) (text!34293 List!30489)) (Times!4835) (Or!4835) (Equal!4835) (Minus!4835) (Broken!24179 (value!149068 List!30489)) (And!4835) (Div!4835) (LessEqual!4835) (Mod!4835) (Concat!12593) (Not!4835) (Plus!4835) (SpaceValue!4835 (value!149069 List!30489)) (IntegerValue!14507 (value!149070 Int) (text!34294 List!30489)) (StringLiteralValue!14506 (text!34295 List!30489)) (FloatLiteralValue!9671 (text!34296 List!30489)) (BytesLiteralValue!4835 (value!149071 List!30489)) (CommentValue!9671 (value!149072 List!30489)) (StringLiteralValue!14507 (value!149073 List!30489)) (ErrorTokenValue!4835 (msg!4896 List!30489)) )
))
(declare-datatypes ((List!30490 0))(
  ( (Nil!30390) (Cons!30390 (h!35810 C!15672) (t!216179 List!30490)) )
))
(declare-datatypes ((IArray!18941 0))(
  ( (IArray!18942 (innerList!9528 List!30490)) )
))
(declare-datatypes ((Conc!9468 0))(
  ( (Node!9468 (left!23446 Conc!9468) (right!23776 Conc!9468) (csize!19166 Int) (cheight!9679 Int)) (Leaf!14515 (xs!12468 IArray!18941) (csize!19167 Int)) (Empty!9468) )
))
(declare-datatypes ((BalanceConc!18550 0))(
  ( (BalanceConc!18551 (c!422791 Conc!9468)) )
))
(declare-datatypes ((TokenValueInjection!9110 0))(
  ( (TokenValueInjection!9111 (toValue!6527 Int) (toChars!6386 Int)) )
))
(declare-datatypes ((String!34059 0))(
  ( (String!34060 (value!149074 String)) )
))
(declare-datatypes ((Rule!9026 0))(
  ( (Rule!9027 (regex!4613 Regex!7757) (tag!5107 String!34059) (isSeparator!4613 Bool) (transformation!4613 TokenValueInjection!9110)) )
))
(declare-datatypes ((List!30491 0))(
  ( (Nil!30391) (Cons!30391 (h!35811 Rule!9026) (t!216180 List!30491)) )
))
(declare-fun rules!1726 () List!30491)

(get-info :version)

(assert (= (and b!2628804 ((_ is Cons!30391) rules!1726)) b!2628832))

(declare-fun order!16379 () Int)

(declare-fun order!16381 () Int)

(declare-fun dynLambda!12981 (Int Int) Int)

(declare-fun dynLambda!12982 (Int Int) Int)

(assert (=> b!2628834 (< (dynLambda!12981 order!16379 (toValue!6527 (transformation!4613 (h!35811 rules!1726)))) (dynLambda!12982 order!16381 lambda!98510))))

(declare-fun order!16383 () Int)

(declare-fun dynLambda!12983 (Int Int) Int)

(assert (=> b!2628834 (< (dynLambda!12983 order!16383 (toChars!6386 (transformation!4613 (h!35811 rules!1726)))) (dynLambda!12982 order!16381 lambda!98510))))

(assert (=> b!2628804 true))

(declare-fun b!2628803 () Bool)

(declare-fun res!1106603 () Bool)

(declare-fun e!1658513 () Bool)

(assert (=> b!2628803 (=> (not res!1106603) (not e!1658513))))

(declare-datatypes ((LexerInterface!4210 0))(
  ( (LexerInterfaceExt!4207 (__x!19504 Int)) (Lexer!4208) )
))
(declare-fun thiss!14197 () LexerInterface!4210)

(declare-datatypes ((Token!8696 0))(
  ( (Token!8697 (value!149075 TokenValue!4835) (rule!6995 Rule!9026) (size!23508 Int) (originalCharacters!5379 List!30490)) )
))
(declare-fun separatorToken!156 () Token!8696)

(declare-fun rulesProduceIndividualToken!1922 (LexerInterface!4210 List!30491 Token!8696) Bool)

(assert (=> b!2628803 (= res!1106603 (rulesProduceIndividualToken!1922 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun e!1658523 () Bool)

(declare-fun e!1658522 () Bool)

(assert (=> b!2628804 (= e!1658523 e!1658522)))

(declare-fun res!1106605 () Bool)

(assert (=> b!2628804 (=> res!1106605 e!1658522)))

(declare-fun lt!924740 () Bool)

(declare-fun lt!924746 () Token!8696)

(declare-datatypes ((tuple2!29920 0))(
  ( (tuple2!29921 (_1!17502 Token!8696) (_2!17502 BalanceConc!18550)) )
))
(declare-datatypes ((Option!6004 0))(
  ( (None!6003) (Some!6003 (v!32390 tuple2!29920)) )
))
(declare-fun lt!924742 () Option!6004)

(assert (=> b!2628804 (= res!1106605 (or (and (not lt!924740) (= (_1!17502 (v!32390 lt!924742)) lt!924746)) (and (not lt!924740) (not (= (_1!17502 (v!32390 lt!924742)) lt!924746))) (not ((_ is None!6003) lt!924742))))))

(assert (=> b!2628804 (= lt!924740 (not ((_ is Some!6003) lt!924742)))))

(declare-fun lt!924745 () BalanceConc!18550)

(declare-fun lt!924743 () BalanceConc!18550)

(declare-fun maxPrefixZipperSequence!940 (LexerInterface!4210 List!30491 BalanceConc!18550) Option!6004)

(declare-fun ++!7399 (BalanceConc!18550 BalanceConc!18550) BalanceConc!18550)

(assert (=> b!2628804 (= lt!924742 (maxPrefixZipperSequence!940 thiss!14197 rules!1726 (++!7399 lt!924745 lt!924743)))))

(declare-fun charsOf!2904 (Token!8696) BalanceConc!18550)

(assert (=> b!2628804 (= lt!924745 (charsOf!2904 lt!924746))))

(declare-datatypes ((List!30492 0))(
  ( (Nil!30392) (Cons!30392 (h!35812 Token!8696) (t!216181 List!30492)) )
))
(declare-datatypes ((IArray!18943 0))(
  ( (IArray!18944 (innerList!9529 List!30492)) )
))
(declare-datatypes ((Conc!9469 0))(
  ( (Node!9469 (left!23447 Conc!9469) (right!23777 Conc!9469) (csize!19168 Int) (cheight!9680 Int)) (Leaf!14516 (xs!12469 IArray!18943) (csize!19169 Int)) (Empty!9469) )
))
(declare-datatypes ((BalanceConc!18552 0))(
  ( (BalanceConc!18553 (c!422792 Conc!9469)) )
))
(declare-fun v!6381 () BalanceConc!18552)

(declare-fun from!862 () Int)

(declare-fun printWithSeparatorTokenWhenNeededRec!488 (LexerInterface!4210 List!30491 BalanceConc!18552 Token!8696 Int) BalanceConc!18550)

(assert (=> b!2628804 (= lt!924743 (printWithSeparatorTokenWhenNeededRec!488 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))

(declare-fun lt!924737 () List!30492)

(declare-datatypes ((Unit!44425 0))(
  ( (Unit!44426) )
))
(declare-fun lt!924749 () Unit!44425)

(declare-fun forallContained!969 (List!30492 Int Token!8696) Unit!44425)

(assert (=> b!2628804 (= lt!924749 (forallContained!969 lt!924737 lambda!98510 lt!924746))))

(declare-fun e!1658518 () Bool)

(declare-fun b!2628805 () Bool)

(declare-fun e!1658525 () Bool)

(declare-fun tp!833461 () Bool)

(declare-fun inv!41181 (String!34059) Bool)

(declare-fun inv!41186 (TokenValueInjection!9110) Bool)

(assert (=> b!2628805 (= e!1658518 (and tp!833461 (inv!41181 (tag!5107 (rule!6995 separatorToken!156))) (inv!41186 (transformation!4613 (rule!6995 separatorToken!156))) e!1658525))))

(declare-fun b!2628806 () Bool)

(declare-fun res!1106611 () Bool)

(assert (=> b!2628806 (=> (not res!1106611) (not e!1658513))))

(declare-fun rulesProduceEachTokenIndividually!1030 (LexerInterface!4210 List!30491 BalanceConc!18552) Bool)

(assert (=> b!2628806 (= res!1106611 (rulesProduceEachTokenIndividually!1030 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2628807 () Bool)

(declare-fun e!1658521 () Bool)

(assert (=> b!2628807 (= e!1658521 e!1658513)))

(declare-fun res!1106610 () Bool)

(assert (=> b!2628807 (=> (not res!1106610) (not e!1658513))))

(declare-fun lt!924744 () Int)

(assert (=> b!2628807 (= res!1106610 (<= from!862 lt!924744))))

(declare-fun size!23509 (BalanceConc!18552) Int)

(assert (=> b!2628807 (= lt!924744 (size!23509 v!6381))))

(declare-fun b!2628808 () Bool)

(declare-fun res!1106604 () Bool)

(assert (=> b!2628808 (=> (not res!1106604) (not e!1658513))))

(declare-fun sepAndNonSepRulesDisjointChars!1186 (List!30491 List!30491) Bool)

(assert (=> b!2628808 (= res!1106604 (sepAndNonSepRulesDisjointChars!1186 rules!1726 rules!1726))))

(declare-fun b!2628809 () Bool)

(declare-fun e!1658511 () Bool)

(assert (=> b!2628809 (= e!1658511 (not e!1658523))))

(declare-fun res!1106609 () Bool)

(assert (=> b!2628809 (=> res!1106609 e!1658523)))

(declare-fun contains!5728 (BalanceConc!18552 Token!8696) Bool)

(assert (=> b!2628809 (= res!1106609 (not (contains!5728 v!6381 lt!924746)))))

(declare-fun apply!7208 (BalanceConc!18552 Int) Token!8696)

(assert (=> b!2628809 (= lt!924746 (apply!7208 v!6381 from!862))))

(declare-fun lt!924741 () List!30492)

(declare-fun tail!4250 (List!30492) List!30492)

(declare-fun drop!1609 (List!30492 Int) List!30492)

(assert (=> b!2628809 (= (tail!4250 lt!924741) (drop!1609 lt!924737 (+ 1 from!862)))))

(declare-fun lt!924738 () Unit!44425)

(declare-fun lemmaDropTail!798 (List!30492 Int) Unit!44425)

(assert (=> b!2628809 (= lt!924738 (lemmaDropTail!798 lt!924737 from!862))))

(declare-fun head!6012 (List!30492) Token!8696)

(declare-fun apply!7209 (List!30492 Int) Token!8696)

(assert (=> b!2628809 (= (head!6012 lt!924741) (apply!7209 lt!924737 from!862))))

(assert (=> b!2628809 (= lt!924741 (drop!1609 lt!924737 from!862))))

(declare-fun lt!924748 () Unit!44425)

(declare-fun lemmaDropApply!824 (List!30492 Int) Unit!44425)

(assert (=> b!2628809 (= lt!924748 (lemmaDropApply!824 lt!924737 from!862))))

(declare-fun b!2628810 () Bool)

(declare-fun e!1658519 () Bool)

(declare-fun tp!833462 () Bool)

(declare-fun inv!41187 (Conc!9469) Bool)

(assert (=> b!2628810 (= e!1658519 (and (inv!41187 (c!422792 v!6381)) tp!833462))))

(declare-fun e!1658512 () Bool)

(assert (=> b!2628811 (= e!1658512 (and tp!833459 tp!833457))))

(declare-fun b!2628812 () Bool)

(declare-fun res!1106608 () Bool)

(assert (=> b!2628812 (=> (not res!1106608) (not e!1658513))))

(assert (=> b!2628812 (= res!1106608 (isSeparator!4613 (rule!6995 separatorToken!156)))))

(declare-fun b!2628813 () Bool)

(declare-fun res!1106612 () Bool)

(assert (=> b!2628813 (=> (not res!1106612) (not e!1658513))))

(declare-fun isEmpty!17346 (List!30491) Bool)

(assert (=> b!2628813 (= res!1106612 (not (isEmpty!17346 rules!1726)))))

(declare-fun res!1106613 () Bool)

(assert (=> b!2628814 (=> (not res!1106613) (not e!1658513))))

(declare-fun forall!6345 (BalanceConc!18552 Int) Bool)

(assert (=> b!2628814 (= res!1106613 (forall!6345 v!6381 lambda!98509))))

(declare-fun res!1106614 () Bool)

(assert (=> start!255622 (=> (not res!1106614) (not e!1658521))))

(assert (=> start!255622 (= res!1106614 (and ((_ is Lexer!4208) thiss!14197) (>= from!862 0)))))

(assert (=> start!255622 e!1658521))

(assert (=> start!255622 true))

(declare-fun e!1658517 () Bool)

(assert (=> start!255622 e!1658517))

(declare-fun e!1658510 () Bool)

(declare-fun inv!41188 (Token!8696) Bool)

(assert (=> start!255622 (and (inv!41188 separatorToken!156) e!1658510)))

(declare-fun inv!41189 (BalanceConc!18552) Bool)

(assert (=> start!255622 (and (inv!41189 v!6381) e!1658519)))

(declare-fun b!2628815 () Bool)

(declare-fun e!1658516 () Bool)

(declare-fun tp!833463 () Bool)

(assert (=> b!2628815 (= e!1658517 (and e!1658516 tp!833463))))

(declare-fun b!2628816 () Bool)

(declare-fun res!1106607 () Bool)

(assert (=> b!2628816 (=> res!1106607 e!1658523)))

(declare-fun contains!5729 (List!30492 Token!8696) Bool)

(assert (=> b!2628816 (= res!1106607 (not (contains!5729 lt!924737 lt!924746)))))

(declare-fun b!2628817 () Bool)

(declare-fun e!1658514 () Bool)

(assert (=> b!2628817 (= e!1658522 e!1658514)))

(declare-fun res!1106602 () Bool)

(assert (=> b!2628817 (=> res!1106602 e!1658514)))

(declare-fun lt!924739 () BalanceConc!18550)

(declare-fun list!11418 (BalanceConc!18550) List!30490)

(declare-fun printList!1150 (LexerInterface!4210 List!30492) List!30490)

(assert (=> b!2628817 (= res!1106602 (not (= (list!11418 lt!924739) (printList!1150 thiss!14197 (Cons!30392 lt!924746 Nil!30392)))))))

(declare-fun lt!924751 () BalanceConc!18552)

(declare-fun printTailRec!1109 (LexerInterface!4210 BalanceConc!18552 Int BalanceConc!18550) BalanceConc!18550)

(assert (=> b!2628817 (= lt!924739 (printTailRec!1109 thiss!14197 lt!924751 0 (BalanceConc!18551 Empty!9468)))))

(declare-fun print!1620 (LexerInterface!4210 BalanceConc!18552) BalanceConc!18550)

(assert (=> b!2628817 (= lt!924739 (print!1620 thiss!14197 lt!924751))))

(declare-fun singletonSeq!2039 (Token!8696) BalanceConc!18552)

(assert (=> b!2628817 (= lt!924751 (singletonSeq!2039 lt!924746))))

(declare-fun b!2628818 () Bool)

(assert (=> b!2628818 (= e!1658514 true)))

(declare-fun lt!924747 () List!30490)

(assert (=> b!2628818 (= lt!924747 (list!11418 lt!924745))))

(declare-fun b!2628819 () Bool)

(assert (=> b!2628819 (= e!1658513 e!1658511)))

(declare-fun res!1106615 () Bool)

(assert (=> b!2628819 (=> (not res!1106615) (not e!1658511))))

(assert (=> b!2628819 (= res!1106615 (< from!862 lt!924744))))

(declare-fun lt!924750 () Unit!44425)

(declare-fun lemmaContentSubsetPreservesForall!282 (List!30492 List!30492 Int) Unit!44425)

(declare-fun dropList!916 (BalanceConc!18552 Int) List!30492)

(assert (=> b!2628819 (= lt!924750 (lemmaContentSubsetPreservesForall!282 lt!924737 (dropList!916 v!6381 from!862) lambda!98509))))

(declare-fun list!11419 (BalanceConc!18552) List!30492)

(assert (=> b!2628819 (= lt!924737 (list!11419 v!6381))))

(declare-fun b!2628820 () Bool)

(declare-fun tp!833456 () Bool)

(declare-fun inv!21 (TokenValue!4835) Bool)

(assert (=> b!2628820 (= e!1658510 (and (inv!21 (value!149075 separatorToken!156)) e!1658518 tp!833456))))

(declare-fun b!2628821 () Bool)

(declare-fun res!1106606 () Bool)

(assert (=> b!2628821 (=> (not res!1106606) (not e!1658513))))

(declare-fun rulesInvariant!3710 (LexerInterface!4210 List!30491) Bool)

(assert (=> b!2628821 (= res!1106606 (rulesInvariant!3710 thiss!14197 rules!1726))))

(assert (=> b!2628822 (= e!1658525 (and tp!833460 tp!833458))))

(declare-fun tp!833464 () Bool)

(declare-fun b!2628823 () Bool)

(assert (=> b!2628823 (= e!1658516 (and tp!833464 (inv!41181 (tag!5107 (h!35811 rules!1726))) (inv!41186 (transformation!4613 (h!35811 rules!1726))) e!1658512))))

(assert (= (and start!255622 res!1106614) b!2628807))

(assert (= (and b!2628807 res!1106610) b!2628813))

(assert (= (and b!2628813 res!1106612) b!2628821))

(assert (= (and b!2628821 res!1106606) b!2628806))

(assert (= (and b!2628806 res!1106611) b!2628803))

(assert (= (and b!2628803 res!1106603) b!2628812))

(assert (= (and b!2628812 res!1106608) b!2628814))

(assert (= (and b!2628814 res!1106613) b!2628808))

(assert (= (and b!2628808 res!1106604) b!2628819))

(assert (= (and b!2628819 res!1106615) b!2628809))

(assert (= (and b!2628809 (not res!1106609)) b!2628816))

(assert (= (and b!2628816 (not res!1106607)) b!2628804))

(assert (= (and b!2628804 (not res!1106605)) b!2628817))

(assert (= (and b!2628817 (not res!1106602)) b!2628818))

(assert (= b!2628823 b!2628811))

(assert (= b!2628815 b!2628823))

(assert (= (and start!255622 ((_ is Cons!30391) rules!1726)) b!2628815))

(assert (= b!2628805 b!2628822))

(assert (= b!2628820 b!2628805))

(assert (= start!255622 b!2628820))

(assert (= start!255622 b!2628810))

(declare-fun m!2971887 () Bool)

(assert (=> b!2628818 m!2971887))

(declare-fun m!2971889 () Bool)

(assert (=> b!2628821 m!2971889))

(declare-fun m!2971891 () Bool)

(assert (=> start!255622 m!2971891))

(declare-fun m!2971893 () Bool)

(assert (=> start!255622 m!2971893))

(declare-fun m!2971895 () Bool)

(assert (=> b!2628808 m!2971895))

(declare-fun m!2971897 () Bool)

(assert (=> b!2628804 m!2971897))

(declare-fun m!2971899 () Bool)

(assert (=> b!2628804 m!2971899))

(declare-fun m!2971901 () Bool)

(assert (=> b!2628804 m!2971901))

(declare-fun m!2971903 () Bool)

(assert (=> b!2628804 m!2971903))

(assert (=> b!2628804 m!2971903))

(declare-fun m!2971905 () Bool)

(assert (=> b!2628804 m!2971905))

(declare-fun m!2971907 () Bool)

(assert (=> b!2628805 m!2971907))

(declare-fun m!2971909 () Bool)

(assert (=> b!2628805 m!2971909))

(declare-fun m!2971911 () Bool)

(assert (=> b!2628819 m!2971911))

(assert (=> b!2628819 m!2971911))

(declare-fun m!2971913 () Bool)

(assert (=> b!2628819 m!2971913))

(declare-fun m!2971915 () Bool)

(assert (=> b!2628819 m!2971915))

(declare-fun m!2971917 () Bool)

(assert (=> b!2628807 m!2971917))

(declare-fun m!2971919 () Bool)

(assert (=> b!2628803 m!2971919))

(declare-fun m!2971921 () Bool)

(assert (=> b!2628820 m!2971921))

(declare-fun m!2971923 () Bool)

(assert (=> b!2628813 m!2971923))

(declare-fun m!2971925 () Bool)

(assert (=> b!2628809 m!2971925))

(declare-fun m!2971927 () Bool)

(assert (=> b!2628809 m!2971927))

(declare-fun m!2971929 () Bool)

(assert (=> b!2628809 m!2971929))

(declare-fun m!2971931 () Bool)

(assert (=> b!2628809 m!2971931))

(declare-fun m!2971933 () Bool)

(assert (=> b!2628809 m!2971933))

(declare-fun m!2971935 () Bool)

(assert (=> b!2628809 m!2971935))

(declare-fun m!2971937 () Bool)

(assert (=> b!2628809 m!2971937))

(declare-fun m!2971939 () Bool)

(assert (=> b!2628809 m!2971939))

(declare-fun m!2971941 () Bool)

(assert (=> b!2628809 m!2971941))

(declare-fun m!2971943 () Bool)

(assert (=> b!2628814 m!2971943))

(declare-fun m!2971945 () Bool)

(assert (=> b!2628810 m!2971945))

(declare-fun m!2971947 () Bool)

(assert (=> b!2628823 m!2971947))

(declare-fun m!2971949 () Bool)

(assert (=> b!2628823 m!2971949))

(declare-fun m!2971951 () Bool)

(assert (=> b!2628817 m!2971951))

(declare-fun m!2971953 () Bool)

(assert (=> b!2628817 m!2971953))

(declare-fun m!2971955 () Bool)

(assert (=> b!2628817 m!2971955))

(declare-fun m!2971957 () Bool)

(assert (=> b!2628817 m!2971957))

(declare-fun m!2971959 () Bool)

(assert (=> b!2628817 m!2971959))

(declare-fun m!2971961 () Bool)

(assert (=> b!2628806 m!2971961))

(declare-fun m!2971963 () Bool)

(assert (=> b!2628816 m!2971963))

(check-sat b_and!192559 (not b!2628809) (not b!2628813) (not b!2628817) (not b!2628803) (not b!2628804) (not b!2628819) (not b!2628818) b_and!192561 (not b_next!74705) (not b!2628806) (not b!2628814) (not b!2628823) (not b_next!74707) (not b!2628810) (not b!2628816) (not b!2628808) (not b!2628832) (not b!2628805) (not b_next!74701) b_and!192557 b_and!192555 (not b!2628821) (not b!2628815) (not b!2628820) (not b_next!74703) (not b!2628807) (not start!255622))
(check-sat b_and!192559 (not b_next!74707) (not b_next!74703) b_and!192561 (not b_next!74705) (not b_next!74701) b_and!192557 b_and!192555)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527354 () Bool)

(assert start!527354)

(declare-fun b!4988766 () Bool)

(declare-fun b_free!133227 () Bool)

(declare-fun b_next!134017 () Bool)

(assert (=> b!4988766 (= b_free!133227 (not b_next!134017))))

(declare-fun tp!1397970 () Bool)

(declare-fun b_and!350099 () Bool)

(assert (=> b!4988766 (= tp!1397970 b_and!350099)))

(declare-fun b_free!133229 () Bool)

(declare-fun b_next!134019 () Bool)

(assert (=> b!4988766 (= b_free!133229 (not b_next!134019))))

(declare-fun tp!1397971 () Bool)

(declare-fun b_and!350101 () Bool)

(assert (=> b!4988766 (= tp!1397971 b_and!350101)))

(declare-fun b!4988778 () Bool)

(declare-fun e!3117865 () Bool)

(assert (=> b!4988778 (= e!3117865 true)))

(declare-fun b!4988777 () Bool)

(declare-fun e!3117864 () Bool)

(assert (=> b!4988777 (= e!3117864 e!3117865)))

(declare-fun b!4988758 () Bool)

(assert (=> b!4988758 e!3117864))

(assert (= b!4988777 b!4988778))

(assert (= b!4988758 b!4988777))

(declare-fun order!26685 () Int)

(declare-fun lambda!248152 () Int)

(declare-datatypes ((C!27680 0))(
  ( (C!27681 (val!23206 Int)) )
))
(declare-datatypes ((List!57760 0))(
  ( (Nil!57636) (Cons!57636 (h!64084 C!27680) (t!370086 List!57760)) )
))
(declare-datatypes ((IArray!30529 0))(
  ( (IArray!30530 (innerList!15322 List!57760)) )
))
(declare-datatypes ((List!57761 0))(
  ( (Nil!57637) (Cons!57637 (h!64085 (_ BitVec 16)) (t!370087 List!57761)) )
))
(declare-datatypes ((Regex!13715 0))(
  ( (ElementMatch!13715 (c!851275 C!27680)) (Concat!22507 (regOne!27942 Regex!13715) (regTwo!27942 Regex!13715)) (EmptyExpr!13715) (Star!13715 (reg!14044 Regex!13715)) (EmptyLang!13715) (Union!13715 (regOne!27943 Regex!13715) (regTwo!27943 Regex!13715)) )
))
(declare-datatypes ((Conc!15234 0))(
  ( (Node!15234 (left!42181 Conc!15234) (right!42511 Conc!15234) (csize!30698 Int) (cheight!15445 Int)) (Leaf!25300 (xs!18560 IArray!30529) (csize!30699 Int)) (Empty!15234) )
))
(declare-datatypes ((BalanceConc!29898 0))(
  ( (BalanceConc!29899 (c!851276 Conc!15234)) )
))
(declare-datatypes ((TokenValue!8792 0))(
  ( (FloatLiteralValue!17584 (text!61989 List!57761)) (TokenValueExt!8791 (__x!34877 Int)) (Broken!43960 (value!271129 List!57761)) (Object!8915) (End!8792) (Def!8792) (Underscore!8792) (Match!8792) (Else!8792) (Error!8792) (Case!8792) (If!8792) (Extends!8792) (Abstract!8792) (Class!8792) (Val!8792) (DelimiterValue!17584 (del!8852 List!57761)) (KeywordValue!8798 (value!271130 List!57761)) (CommentValue!17584 (value!271131 List!57761)) (WhitespaceValue!17584 (value!271132 List!57761)) (IndentationValue!8792 (value!271133 List!57761)) (String!65833) (Int32!8792) (Broken!43961 (value!271134 List!57761)) (Boolean!8793) (Unit!148814) (OperatorValue!8795 (op!8852 List!57761)) (IdentifierValue!17584 (value!271135 List!57761)) (IdentifierValue!17585 (value!271136 List!57761)) (WhitespaceValue!17585 (value!271137 List!57761)) (True!17584) (False!17584) (Broken!43962 (value!271138 List!57761)) (Broken!43963 (value!271139 List!57761)) (True!17585) (RightBrace!8792) (RightBracket!8792) (Colon!8792) (Null!8792) (Comma!8792) (LeftBracket!8792) (False!17585) (LeftBrace!8792) (ImaginaryLiteralValue!8792 (text!61990 List!57761)) (StringLiteralValue!26376 (value!271140 List!57761)) (EOFValue!8792 (value!271141 List!57761)) (IdentValue!8792 (value!271142 List!57761)) (DelimiterValue!17585 (value!271143 List!57761)) (DedentValue!8792 (value!271144 List!57761)) (NewLineValue!8792 (value!271145 List!57761)) (IntegerValue!26376 (value!271146 (_ BitVec 32)) (text!61991 List!57761)) (IntegerValue!26377 (value!271147 Int) (text!61992 List!57761)) (Times!8792) (Or!8792) (Equal!8792) (Minus!8792) (Broken!43964 (value!271148 List!57761)) (And!8792) (Div!8792) (LessEqual!8792) (Mod!8792) (Concat!22508) (Not!8792) (Plus!8792) (SpaceValue!8792 (value!271149 List!57761)) (IntegerValue!26378 (value!271150 Int) (text!61993 List!57761)) (StringLiteralValue!26377 (text!61994 List!57761)) (FloatLiteralValue!17585 (text!61995 List!57761)) (BytesLiteralValue!8792 (value!271151 List!57761)) (CommentValue!17585 (value!271152 List!57761)) (StringLiteralValue!26378 (value!271153 List!57761)) (ErrorTokenValue!8792 (msg!8853 List!57761)) )
))
(declare-datatypes ((TokenValueInjection!16892 0))(
  ( (TokenValueInjection!16893 (toValue!11497 Int) (toChars!11356 Int)) )
))
(declare-datatypes ((String!65834 0))(
  ( (String!65835 (value!271154 String)) )
))
(declare-datatypes ((Rule!16764 0))(
  ( (Rule!16765 (regex!8482 Regex!13715) (tag!9346 String!65834) (isSeparator!8482 Bool) (transformation!8482 TokenValueInjection!16892)) )
))
(declare-fun rule!200 () Rule!16764)

(declare-fun order!26687 () Int)

(declare-fun dynLambda!23507 (Int Int) Int)

(declare-fun dynLambda!23508 (Int Int) Int)

(assert (=> b!4988778 (< (dynLambda!23507 order!26685 (toValue!11497 (transformation!8482 rule!200))) (dynLambda!23508 order!26687 lambda!248152))))

(declare-fun order!26689 () Int)

(declare-fun dynLambda!23509 (Int Int) Int)

(assert (=> b!4988778 (< (dynLambda!23509 order!26689 (toChars!11356 (transformation!8482 rule!200))) (dynLambda!23508 order!26687 lambda!248152))))

(declare-fun b!4988754 () Bool)

(declare-fun e!3117846 () Bool)

(declare-fun e!3117856 () Bool)

(assert (=> b!4988754 (= e!3117846 e!3117856)))

(declare-fun res!2129696 () Bool)

(assert (=> b!4988754 (=> res!2129696 e!3117856)))

(declare-fun lt!2062418 () Bool)

(declare-fun lt!2062420 () Bool)

(assert (=> b!4988754 (= res!2129696 (or (not (= lt!2062418 lt!2062420)) (not lt!2062418)))))

(declare-datatypes ((Token!15416 0))(
  ( (Token!15417 (value!271155 TokenValue!8792) (rule!11754 Rule!16764) (size!38307 Int) (originalCharacters!8739 List!57760)) )
))
(declare-datatypes ((tuple2!62720 0))(
  ( (tuple2!62721 (_1!34663 Token!15416) (_2!34663 List!57760)) )
))
(declare-datatypes ((Option!14575 0))(
  ( (None!14574) (Some!14574 (v!50571 tuple2!62720)) )
))
(declare-fun lt!2062432 () Option!14575)

(declare-fun isDefined!11482 (Option!14575) Bool)

(assert (=> b!4988754 (= lt!2062420 (isDefined!11482 lt!2062432))))

(declare-datatypes ((tuple2!62722 0))(
  ( (tuple2!62723 (_1!34664 Token!15416) (_2!34664 BalanceConc!29898)) )
))
(declare-datatypes ((Option!14576 0))(
  ( (None!14575) (Some!14575 (v!50572 tuple2!62722)) )
))
(declare-fun lt!2062419 () Option!14576)

(declare-fun isDefined!11483 (Option!14576) Bool)

(assert (=> b!4988754 (= lt!2062418 (isDefined!11483 lt!2062419))))

(declare-fun lt!2062434 () List!57760)

(declare-datatypes ((LexerInterface!8074 0))(
  ( (LexerInterfaceExt!8071 (__x!34878 Int)) (Lexer!8072) )
))
(declare-fun thiss!16165 () LexerInterface!8074)

(declare-fun maxPrefixOneRule!3694 (LexerInterface!8074 Rule!16764 List!57760) Option!14575)

(assert (=> b!4988754 (= lt!2062432 (maxPrefixOneRule!3694 thiss!16165 rule!200 lt!2062434))))

(declare-fun lt!2062427 () Token!15416)

(declare-datatypes ((tuple2!62724 0))(
  ( (tuple2!62725 (_1!34665 BalanceConc!29898) (_2!34665 BalanceConc!29898)) )
))
(declare-fun lt!2062423 () tuple2!62724)

(assert (=> b!4988754 (= lt!2062419 (Some!14575 (tuple2!62723 lt!2062427 (_2!34665 lt!2062423))))))

(declare-fun lt!2062433 () List!57760)

(declare-fun lt!2062435 () TokenValue!8792)

(declare-fun lt!2062424 () Int)

(assert (=> b!4988754 (= lt!2062427 (Token!15417 lt!2062435 rule!200 lt!2062424 lt!2062433))))

(declare-fun size!38308 (BalanceConc!29898) Int)

(assert (=> b!4988754 (= lt!2062424 (size!38308 (_1!34665 lt!2062423)))))

(declare-fun apply!13967 (TokenValueInjection!16892 BalanceConc!29898) TokenValue!8792)

(assert (=> b!4988754 (= lt!2062435 (apply!13967 (transformation!8482 rule!200) (_1!34665 lt!2062423)))))

(declare-datatypes ((Unit!148815 0))(
  ( (Unit!148816) )
))
(declare-fun lt!2062425 () Unit!148815)

(declare-fun lt!2062422 () BalanceConc!29898)

(declare-fun ForallOf!1289 (Int BalanceConc!29898) Unit!148815)

(assert (=> b!4988754 (= lt!2062425 (ForallOf!1289 lambda!248152 lt!2062422))))

(declare-fun seqFromList!6101 (List!57760) BalanceConc!29898)

(assert (=> b!4988754 (= lt!2062422 (seqFromList!6101 lt!2062433))))

(declare-fun list!18516 (BalanceConc!29898) List!57760)

(assert (=> b!4988754 (= lt!2062433 (list!18516 (_1!34665 lt!2062423)))))

(declare-fun lt!2062426 () Unit!148815)

(assert (=> b!4988754 (= lt!2062426 (ForallOf!1289 lambda!248152 (_1!34665 lt!2062423)))))

(declare-fun tp!1397972 () Bool)

(declare-fun e!3117854 () Bool)

(declare-fun e!3117852 () Bool)

(declare-fun b!4988755 () Bool)

(declare-fun inv!75607 (String!65834) Bool)

(declare-fun inv!75611 (TokenValueInjection!16892) Bool)

(assert (=> b!4988755 (= e!3117852 (and tp!1397972 (inv!75607 (tag!9346 rule!200)) (inv!75611 (transformation!8482 rule!200)) e!3117854))))

(declare-fun res!2129699 () Bool)

(declare-fun e!3117851 () Bool)

(assert (=> start!527354 (=> (not res!2129699) (not e!3117851))))

(get-info :version)

(assert (=> start!527354 (= res!2129699 ((_ is Lexer!8072) thiss!16165))))

(assert (=> start!527354 e!3117851))

(assert (=> start!527354 true))

(assert (=> start!527354 e!3117852))

(declare-fun totalInput!520 () BalanceConc!29898)

(declare-fun e!3117855 () Bool)

(declare-fun inv!75612 (BalanceConc!29898) Bool)

(assert (=> start!527354 (and (inv!75612 totalInput!520) e!3117855)))

(declare-fun input!1580 () BalanceConc!29898)

(declare-fun e!3117857 () Bool)

(assert (=> start!527354 (and (inv!75612 input!1580) e!3117857)))

(declare-fun b!4988756 () Bool)

(declare-fun e!3117847 () Bool)

(declare-datatypes ((tuple2!62726 0))(
  ( (tuple2!62727 (_1!34666 List!57760) (_2!34666 List!57760)) )
))
(declare-fun lt!2062428 () tuple2!62726)

(declare-fun matchR!6707 (Regex!13715 List!57760) Bool)

(assert (=> b!4988756 (= e!3117847 (matchR!6707 (regex!8482 rule!200) (_1!34666 lt!2062428)))))

(declare-fun b!4988757 () Bool)

(declare-fun tp!1397969 () Bool)

(declare-fun inv!75613 (Conc!15234) Bool)

(assert (=> b!4988757 (= e!3117857 (and (inv!75613 (c!851276 input!1580)) tp!1397969))))

(declare-fun res!2129706 () Bool)

(assert (=> b!4988758 (=> res!2129706 e!3117846)))

(declare-fun Forall!1830 (Int) Bool)

(assert (=> b!4988758 (= res!2129706 (not (Forall!1830 lambda!248152)))))

(declare-fun b!4988759 () Bool)

(declare-fun e!3117853 () Bool)

(declare-fun e!3117859 () Bool)

(assert (=> b!4988759 (= e!3117853 e!3117859)))

(declare-fun res!2129704 () Bool)

(assert (=> b!4988759 (=> res!2129704 e!3117859)))

(declare-fun lt!2062431 () tuple2!62722)

(declare-fun lt!2062436 () tuple2!62720)

(assert (=> b!4988759 (= res!2129704 (not (= (_1!34664 lt!2062431) (_1!34663 lt!2062436))))))

(declare-fun get!20064 (Option!14576) tuple2!62722)

(assert (=> b!4988759 (= lt!2062431 (get!20064 lt!2062419))))

(declare-fun b!4988760 () Bool)

(declare-fun e!3117849 () Bool)

(assert (=> b!4988760 (= e!3117856 e!3117849)))

(declare-fun res!2129705 () Bool)

(assert (=> b!4988760 (=> res!2129705 e!3117849)))

(assert (=> b!4988760 (= res!2129705 (not (= (apply!13967 (transformation!8482 rule!200) lt!2062422) lt!2062435)))))

(declare-fun lt!2062421 () Unit!148815)

(declare-fun lemmaEqSameImage!1215 (TokenValueInjection!16892 BalanceConc!29898 BalanceConc!29898) Unit!148815)

(assert (=> b!4988760 (= lt!2062421 (lemmaEqSameImage!1215 (transformation!8482 rule!200) (_1!34665 lt!2062423) lt!2062422))))

(declare-fun b!4988761 () Bool)

(assert (=> b!4988761 (= e!3117859 lt!2062420)))

(declare-fun b!4988762 () Bool)

(declare-fun e!3117858 () Bool)

(assert (=> b!4988762 (= e!3117858 (not e!3117846))))

(declare-fun res!2129701 () Bool)

(assert (=> b!4988762 (=> res!2129701 e!3117846)))

(declare-fun semiInverseModEq!3775 (Int Int) Bool)

(assert (=> b!4988762 (= res!2129701 (not (semiInverseModEq!3775 (toChars!11356 (transformation!8482 rule!200)) (toValue!11497 (transformation!8482 rule!200)))))))

(declare-fun lt!2062429 () Unit!148815)

(declare-fun lemmaInv!1401 (TokenValueInjection!16892) Unit!148815)

(assert (=> b!4988762 (= lt!2062429 (lemmaInv!1401 (transformation!8482 rule!200)))))

(assert (=> b!4988762 e!3117847))

(declare-fun res!2129707 () Bool)

(assert (=> b!4988762 (=> res!2129707 e!3117847)))

(declare-fun isEmpty!31204 (List!57760) Bool)

(assert (=> b!4988762 (= res!2129707 (isEmpty!31204 (_1!34666 lt!2062428)))))

(declare-fun findLongestMatchInner!1924 (Regex!13715 List!57760 Int List!57760 List!57760 Int) tuple2!62726)

(declare-fun size!38309 (List!57760) Int)

(assert (=> b!4988762 (= lt!2062428 (findLongestMatchInner!1924 (regex!8482 rule!200) Nil!57636 (size!38309 Nil!57636) lt!2062434 lt!2062434 (size!38309 lt!2062434)))))

(declare-fun lt!2062430 () Unit!148815)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1885 (Regex!13715 List!57760) Unit!148815)

(assert (=> b!4988762 (= lt!2062430 (longestMatchIsAcceptedByMatchOrIsEmpty!1885 (regex!8482 rule!200) lt!2062434))))

(declare-fun b!4988763 () Bool)

(declare-fun e!3117850 () Bool)

(assert (=> b!4988763 (= e!3117851 e!3117850)))

(declare-fun res!2129698 () Bool)

(assert (=> b!4988763 (=> (not res!2129698) (not e!3117850))))

(declare-fun isSuffix!1281 (List!57760 List!57760) Bool)

(assert (=> b!4988763 (= res!2129698 (isSuffix!1281 lt!2062434 (list!18516 totalInput!520)))))

(assert (=> b!4988763 (= lt!2062434 (list!18516 input!1580))))

(declare-fun b!4988764 () Bool)

(declare-fun tp!1397968 () Bool)

(assert (=> b!4988764 (= e!3117855 (and (inv!75613 (c!851276 totalInput!520)) tp!1397968))))

(declare-fun b!4988765 () Bool)

(declare-fun res!2129700 () Bool)

(assert (=> b!4988765 (=> res!2129700 e!3117856)))

(assert (=> b!4988765 (= res!2129700 (not (= (list!18516 lt!2062422) lt!2062433)))))

(assert (=> b!4988766 (= e!3117854 (and tp!1397970 tp!1397971))))

(declare-fun b!4988767 () Bool)

(assert (=> b!4988767 (= e!3117850 e!3117858)))

(declare-fun res!2129702 () Bool)

(assert (=> b!4988767 (=> (not res!2129702) (not e!3117858))))

(declare-fun isEmpty!31205 (BalanceConc!29898) Bool)

(assert (=> b!4988767 (= res!2129702 (not (isEmpty!31205 (_1!34665 lt!2062423))))))

(declare-fun findLongestMatchWithZipperSequenceV2!245 (Regex!13715 BalanceConc!29898 BalanceConc!29898) tuple2!62724)

(assert (=> b!4988767 (= lt!2062423 (findLongestMatchWithZipperSequenceV2!245 (regex!8482 rule!200) input!1580 totalInput!520))))

(declare-fun b!4988768 () Bool)

(declare-fun res!2129697 () Bool)

(assert (=> b!4988768 (=> res!2129697 e!3117859)))

(assert (=> b!4988768 (= res!2129697 (not (= (list!18516 (_2!34664 lt!2062431)) (_2!34663 lt!2062436))))))

(declare-fun b!4988769 () Bool)

(declare-fun res!2129695 () Bool)

(assert (=> b!4988769 (=> (not res!2129695) (not e!3117851))))

(declare-fun ruleValid!3890 (LexerInterface!8074 Rule!16764) Bool)

(assert (=> b!4988769 (= res!2129695 (ruleValid!3890 thiss!16165 rule!200))))

(declare-fun b!4988770 () Bool)

(assert (=> b!4988770 (= e!3117849 e!3117853)))

(declare-fun res!2129703 () Bool)

(assert (=> b!4988770 (=> res!2129703 e!3117853)))

(assert (=> b!4988770 (= res!2129703 (or (not (= (value!271155 (_1!34663 lt!2062436)) lt!2062435)) (not (= (rule!11754 (_1!34663 lt!2062436)) rule!200)) (not (= (size!38307 (_1!34663 lt!2062436)) lt!2062424)) (not (= (originalCharacters!8739 (_1!34663 lt!2062436)) lt!2062433)) (not (= lt!2062427 (_1!34663 lt!2062436)))))))

(declare-fun get!20065 (Option!14575) tuple2!62720)

(assert (=> b!4988770 (= lt!2062436 (get!20065 lt!2062432))))

(assert (= (and start!527354 res!2129699) b!4988769))

(assert (= (and b!4988769 res!2129695) b!4988763))

(assert (= (and b!4988763 res!2129698) b!4988767))

(assert (= (and b!4988767 res!2129702) b!4988762))

(assert (= (and b!4988762 (not res!2129707)) b!4988756))

(assert (= (and b!4988762 (not res!2129701)) b!4988758))

(assert (= (and b!4988758 (not res!2129706)) b!4988754))

(assert (= (and b!4988754 (not res!2129696)) b!4988765))

(assert (= (and b!4988765 (not res!2129700)) b!4988760))

(assert (= (and b!4988760 (not res!2129705)) b!4988770))

(assert (= (and b!4988770 (not res!2129703)) b!4988759))

(assert (= (and b!4988759 (not res!2129704)) b!4988768))

(assert (= (and b!4988768 (not res!2129697)) b!4988761))

(assert (= b!4988755 b!4988766))

(assert (= start!527354 b!4988755))

(assert (= start!527354 b!4988764))

(assert (= start!527354 b!4988757))

(declare-fun m!6020698 () Bool)

(assert (=> b!4988764 m!6020698))

(declare-fun m!6020700 () Bool)

(assert (=> b!4988767 m!6020700))

(declare-fun m!6020702 () Bool)

(assert (=> b!4988767 m!6020702))

(declare-fun m!6020704 () Bool)

(assert (=> b!4988754 m!6020704))

(declare-fun m!6020706 () Bool)

(assert (=> b!4988754 m!6020706))

(declare-fun m!6020708 () Bool)

(assert (=> b!4988754 m!6020708))

(declare-fun m!6020710 () Bool)

(assert (=> b!4988754 m!6020710))

(declare-fun m!6020712 () Bool)

(assert (=> b!4988754 m!6020712))

(declare-fun m!6020714 () Bool)

(assert (=> b!4988754 m!6020714))

(declare-fun m!6020716 () Bool)

(assert (=> b!4988754 m!6020716))

(declare-fun m!6020718 () Bool)

(assert (=> b!4988754 m!6020718))

(declare-fun m!6020720 () Bool)

(assert (=> b!4988754 m!6020720))

(declare-fun m!6020722 () Bool)

(assert (=> start!527354 m!6020722))

(declare-fun m!6020724 () Bool)

(assert (=> start!527354 m!6020724))

(declare-fun m!6020726 () Bool)

(assert (=> b!4988762 m!6020726))

(declare-fun m!6020728 () Bool)

(assert (=> b!4988762 m!6020728))

(declare-fun m!6020730 () Bool)

(assert (=> b!4988762 m!6020730))

(declare-fun m!6020732 () Bool)

(assert (=> b!4988762 m!6020732))

(declare-fun m!6020734 () Bool)

(assert (=> b!4988762 m!6020734))

(assert (=> b!4988762 m!6020726))

(declare-fun m!6020736 () Bool)

(assert (=> b!4988762 m!6020736))

(declare-fun m!6020738 () Bool)

(assert (=> b!4988762 m!6020738))

(assert (=> b!4988762 m!6020728))

(declare-fun m!6020740 () Bool)

(assert (=> b!4988768 m!6020740))

(declare-fun m!6020742 () Bool)

(assert (=> b!4988757 m!6020742))

(declare-fun m!6020744 () Bool)

(assert (=> b!4988763 m!6020744))

(assert (=> b!4988763 m!6020744))

(declare-fun m!6020746 () Bool)

(assert (=> b!4988763 m!6020746))

(declare-fun m!6020748 () Bool)

(assert (=> b!4988763 m!6020748))

(declare-fun m!6020750 () Bool)

(assert (=> b!4988760 m!6020750))

(declare-fun m!6020752 () Bool)

(assert (=> b!4988760 m!6020752))

(declare-fun m!6020754 () Bool)

(assert (=> b!4988759 m!6020754))

(declare-fun m!6020756 () Bool)

(assert (=> b!4988758 m!6020756))

(declare-fun m!6020758 () Bool)

(assert (=> b!4988770 m!6020758))

(declare-fun m!6020760 () Bool)

(assert (=> b!4988756 m!6020760))

(declare-fun m!6020762 () Bool)

(assert (=> b!4988769 m!6020762))

(declare-fun m!6020764 () Bool)

(assert (=> b!4988765 m!6020764))

(declare-fun m!6020766 () Bool)

(assert (=> b!4988755 m!6020766))

(declare-fun m!6020768 () Bool)

(assert (=> b!4988755 m!6020768))

(check-sat (not b!4988767) (not start!527354) (not b!4988770) (not b!4988768) (not b!4988754) (not b!4988757) b_and!350101 (not b!4988755) (not b!4988769) (not b!4988760) (not b!4988759) (not b!4988765) (not b_next!134017) (not b!4988758) b_and!350099 (not b!4988762) (not b!4988756) (not b!4988763) (not b_next!134019) (not b!4988764))
(check-sat b_and!350101 b_and!350099 (not b_next!134019) (not b_next!134017))

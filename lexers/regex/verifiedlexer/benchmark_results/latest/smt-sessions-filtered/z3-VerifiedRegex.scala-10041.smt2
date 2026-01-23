; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525166 () Bool)

(assert start!525166)

(declare-fun b!4977453 () Bool)

(declare-fun b_free!133035 () Bool)

(declare-fun b_next!133825 () Bool)

(assert (=> b!4977453 (= b_free!133035 (not b_next!133825))))

(declare-fun tp!1395791 () Bool)

(declare-fun b_and!349447 () Bool)

(assert (=> b!4977453 (= tp!1395791 b_and!349447)))

(declare-fun b_free!133037 () Bool)

(declare-fun b_next!133827 () Bool)

(assert (=> b!4977453 (= b_free!133037 (not b_next!133827))))

(declare-fun tp!1395792 () Bool)

(declare-fun b_and!349449 () Bool)

(assert (=> b!4977453 (= tp!1395792 b_and!349449)))

(declare-fun b!4977474 () Bool)

(declare-fun e!3111007 () Bool)

(assert (=> b!4977474 (= e!3111007 true)))

(declare-fun b!4977473 () Bool)

(declare-fun e!3111006 () Bool)

(assert (=> b!4977473 (= e!3111006 e!3111007)))

(declare-fun b!4977457 () Bool)

(assert (=> b!4977457 e!3111006))

(assert (= b!4977473 b!4977474))

(assert (= b!4977457 b!4977473))

(declare-fun order!26359 () Int)

(declare-fun order!26357 () Int)

(declare-datatypes ((C!27584 0))(
  ( (C!27585 (val!23158 Int)) )
))
(declare-datatypes ((List!57664 0))(
  ( (Nil!57540) (Cons!57540 (h!63988 C!27584) (t!369676 List!57664)) )
))
(declare-datatypes ((IArray!30433 0))(
  ( (IArray!30434 (innerList!15274 List!57664)) )
))
(declare-datatypes ((List!57665 0))(
  ( (Nil!57541) (Cons!57541 (h!63989 (_ BitVec 16)) (t!369677 List!57665)) )
))
(declare-datatypes ((Regex!13667 0))(
  ( (ElementMatch!13667 (c!849249 C!27584)) (Concat!22411 (regOne!27846 Regex!13667) (regTwo!27846 Regex!13667)) (EmptyExpr!13667) (Star!13667 (reg!13996 Regex!13667)) (EmptyLang!13667) (Union!13667 (regOne!27847 Regex!13667) (regTwo!27847 Regex!13667)) )
))
(declare-datatypes ((Conc!15186 0))(
  ( (Node!15186 (left!42017 Conc!15186) (right!42347 Conc!15186) (csize!30602 Int) (cheight!15397 Int)) (Leaf!25228 (xs!18512 IArray!30433) (csize!30603 Int)) (Empty!15186) )
))
(declare-datatypes ((BalanceConc!29802 0))(
  ( (BalanceConc!29803 (c!849250 Conc!15186)) )
))
(declare-datatypes ((TokenValue!8744 0))(
  ( (FloatLiteralValue!17488 (text!61653 List!57665)) (TokenValueExt!8743 (__x!34781 Int)) (Broken!43720 (value!269767 List!57665)) (Object!8867) (End!8744) (Def!8744) (Underscore!8744) (Match!8744) (Else!8744) (Error!8744) (Case!8744) (If!8744) (Extends!8744) (Abstract!8744) (Class!8744) (Val!8744) (DelimiterValue!17488 (del!8804 List!57665)) (KeywordValue!8750 (value!269768 List!57665)) (CommentValue!17488 (value!269769 List!57665)) (WhitespaceValue!17488 (value!269770 List!57665)) (IndentationValue!8744 (value!269771 List!57665)) (String!65593) (Int32!8744) (Broken!43721 (value!269772 List!57665)) (Boolean!8745) (Unit!148537) (OperatorValue!8747 (op!8804 List!57665)) (IdentifierValue!17488 (value!269773 List!57665)) (IdentifierValue!17489 (value!269774 List!57665)) (WhitespaceValue!17489 (value!269775 List!57665)) (True!17488) (False!17488) (Broken!43722 (value!269776 List!57665)) (Broken!43723 (value!269777 List!57665)) (True!17489) (RightBrace!8744) (RightBracket!8744) (Colon!8744) (Null!8744) (Comma!8744) (LeftBracket!8744) (False!17489) (LeftBrace!8744) (ImaginaryLiteralValue!8744 (text!61654 List!57665)) (StringLiteralValue!26232 (value!269778 List!57665)) (EOFValue!8744 (value!269779 List!57665)) (IdentValue!8744 (value!269780 List!57665)) (DelimiterValue!17489 (value!269781 List!57665)) (DedentValue!8744 (value!269782 List!57665)) (NewLineValue!8744 (value!269783 List!57665)) (IntegerValue!26232 (value!269784 (_ BitVec 32)) (text!61655 List!57665)) (IntegerValue!26233 (value!269785 Int) (text!61656 List!57665)) (Times!8744) (Or!8744) (Equal!8744) (Minus!8744) (Broken!43724 (value!269786 List!57665)) (And!8744) (Div!8744) (LessEqual!8744) (Mod!8744) (Concat!22412) (Not!8744) (Plus!8744) (SpaceValue!8744 (value!269787 List!57665)) (IntegerValue!26234 (value!269788 Int) (text!61657 List!57665)) (StringLiteralValue!26233 (text!61658 List!57665)) (FloatLiteralValue!17489 (text!61659 List!57665)) (BytesLiteralValue!8744 (value!269789 List!57665)) (CommentValue!17489 (value!269790 List!57665)) (StringLiteralValue!26234 (value!269791 List!57665)) (ErrorTokenValue!8744 (msg!8805 List!57665)) )
))
(declare-datatypes ((TokenValueInjection!16796 0))(
  ( (TokenValueInjection!16797 (toValue!11409 Int) (toChars!11268 Int)) )
))
(declare-datatypes ((String!65594 0))(
  ( (String!65595 (value!269792 String)) )
))
(declare-datatypes ((Rule!16668 0))(
  ( (Rule!16669 (regex!8434 Regex!13667) (tag!9298 String!65594) (isSeparator!8434 Bool) (transformation!8434 TokenValueInjection!16796)) )
))
(declare-fun rule!200 () Rule!16668)

(declare-fun lambda!247668 () Int)

(declare-fun dynLambda!23270 (Int Int) Int)

(declare-fun dynLambda!23271 (Int Int) Int)

(assert (=> b!4977474 (< (dynLambda!23270 order!26357 (toValue!11409 (transformation!8434 rule!200))) (dynLambda!23271 order!26359 lambda!247668))))

(declare-fun order!26361 () Int)

(declare-fun dynLambda!23272 (Int Int) Int)

(assert (=> b!4977474 (< (dynLambda!23272 order!26361 (toChars!11268 (transformation!8434 rule!200))) (dynLambda!23271 order!26359 lambda!247668))))

(declare-fun e!3110992 () Bool)

(assert (=> b!4977453 (= e!3110992 (and tp!1395791 tp!1395792))))

(declare-fun b!4977454 () Bool)

(declare-fun e!3110990 () Bool)

(declare-fun lt!2055744 () TokenValue!8744)

(declare-datatypes ((Token!15332 0))(
  ( (Token!15333 (value!269793 TokenValue!8744) (rule!11686 Rule!16668) (size!38149 Int) (originalCharacters!8697 List!57664)) )
))
(declare-datatypes ((tuple2!62368 0))(
  ( (tuple2!62369 (_1!34487 Token!15332) (_2!34487 List!57664)) )
))
(declare-fun lt!2055748 () tuple2!62368)

(declare-fun lt!2055746 () Bool)

(assert (=> b!4977454 (= e!3110990 (or (not (= (value!269793 (_1!34487 lt!2055748)) lt!2055744)) (not (= (rule!11686 (_1!34487 lt!2055748)) rule!200)) lt!2055746))))

(declare-datatypes ((Option!14495 0))(
  ( (None!14494) (Some!14494 (v!50491 tuple2!62368)) )
))
(declare-fun lt!2055751 () Option!14495)

(declare-fun get!19987 (Option!14495) tuple2!62368)

(assert (=> b!4977454 (= lt!2055748 (get!19987 lt!2055751))))

(declare-fun e!3110991 () Bool)

(declare-fun tp!1395788 () Bool)

(declare-fun b!4977455 () Bool)

(declare-fun inv!75293 (String!65594) Bool)

(declare-fun inv!75297 (TokenValueInjection!16796) Bool)

(assert (=> b!4977455 (= e!3110991 (and tp!1395788 (inv!75293 (tag!9298 rule!200)) (inv!75297 (transformation!8434 rule!200)) e!3110992))))

(declare-fun b!4977456 () Bool)

(declare-fun e!3110999 () Bool)

(declare-fun input!1580 () BalanceConc!29802)

(declare-fun tp!1395789 () Bool)

(declare-fun inv!75298 (Conc!15186) Bool)

(assert (=> b!4977456 (= e!3110999 (and (inv!75298 (c!849250 input!1580)) tp!1395789))))

(declare-fun res!2124792 () Bool)

(declare-fun e!3110996 () Bool)

(assert (=> b!4977457 (=> res!2124792 e!3110996)))

(declare-fun Forall!1784 (Int) Bool)

(assert (=> b!4977457 (= res!2124792 (not (Forall!1784 lambda!247668)))))

(declare-fun b!4977459 () Bool)

(declare-fun res!2124789 () Bool)

(declare-fun e!3111000 () Bool)

(assert (=> b!4977459 (=> (not res!2124789) (not e!3111000))))

(declare-datatypes ((LexerInterface!8026 0))(
  ( (LexerInterfaceExt!8023 (__x!34782 Int)) (Lexer!8024) )
))
(declare-fun thiss!16165 () LexerInterface!8026)

(declare-fun ruleValid!3842 (LexerInterface!8026 Rule!16668) Bool)

(assert (=> b!4977459 (= res!2124789 (ruleValid!3842 thiss!16165 rule!200))))

(declare-fun b!4977460 () Bool)

(declare-fun e!3110994 () Bool)

(declare-fun e!3110997 () Bool)

(assert (=> b!4977460 (= e!3110994 e!3110997)))

(declare-fun res!2124795 () Bool)

(assert (=> b!4977460 (=> (not res!2124795) (not e!3110997))))

(declare-datatypes ((tuple2!62370 0))(
  ( (tuple2!62371 (_1!34488 BalanceConc!29802) (_2!34488 BalanceConc!29802)) )
))
(declare-fun lt!2055745 () tuple2!62370)

(declare-fun isEmpty!31029 (BalanceConc!29802) Bool)

(assert (=> b!4977460 (= res!2124795 (not (isEmpty!31029 (_1!34488 lt!2055745))))))

(declare-fun totalInput!520 () BalanceConc!29802)

(declare-fun findLongestMatchWithZipperSequenceV2!197 (Regex!13667 BalanceConc!29802 BalanceConc!29802) tuple2!62370)

(assert (=> b!4977460 (= lt!2055745 (findLongestMatchWithZipperSequenceV2!197 (regex!8434 rule!200) input!1580 totalInput!520))))

(declare-fun b!4977461 () Bool)

(declare-fun e!3110995 () Bool)

(declare-datatypes ((tuple2!62372 0))(
  ( (tuple2!62373 (_1!34489 List!57664) (_2!34489 List!57664)) )
))
(declare-fun lt!2055754 () tuple2!62372)

(declare-fun matchR!6661 (Regex!13667 List!57664) Bool)

(assert (=> b!4977461 (= e!3110995 (matchR!6661 (regex!8434 rule!200) (_1!34489 lt!2055754)))))

(declare-fun b!4977462 () Bool)

(declare-fun e!3110998 () Bool)

(declare-fun tp!1395790 () Bool)

(assert (=> b!4977462 (= e!3110998 (and (inv!75298 (c!849250 totalInput!520)) tp!1395790))))

(declare-fun b!4977458 () Bool)

(assert (=> b!4977458 (= e!3110997 (not e!3110996))))

(declare-fun res!2124786 () Bool)

(assert (=> b!4977458 (=> res!2124786 e!3110996)))

(declare-fun semiInverseModEq!3727 (Int Int) Bool)

(assert (=> b!4977458 (= res!2124786 (not (semiInverseModEq!3727 (toChars!11268 (transformation!8434 rule!200)) (toValue!11409 (transformation!8434 rule!200)))))))

(declare-datatypes ((Unit!148538 0))(
  ( (Unit!148539) )
))
(declare-fun lt!2055747 () Unit!148538)

(declare-fun lemmaInv!1357 (TokenValueInjection!16796) Unit!148538)

(assert (=> b!4977458 (= lt!2055747 (lemmaInv!1357 (transformation!8434 rule!200)))))

(assert (=> b!4977458 e!3110995))

(declare-fun res!2124787 () Bool)

(assert (=> b!4977458 (=> res!2124787 e!3110995)))

(declare-fun isEmpty!31030 (List!57664) Bool)

(assert (=> b!4977458 (= res!2124787 (isEmpty!31030 (_1!34489 lt!2055754)))))

(declare-fun lt!2055740 () List!57664)

(declare-fun findLongestMatchInner!1878 (Regex!13667 List!57664 Int List!57664 List!57664 Int) tuple2!62372)

(declare-fun size!38150 (List!57664) Int)

(assert (=> b!4977458 (= lt!2055754 (findLongestMatchInner!1878 (regex!8434 rule!200) Nil!57540 (size!38150 Nil!57540) lt!2055740 lt!2055740 (size!38150 lt!2055740)))))

(declare-fun lt!2055753 () Unit!148538)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1839 (Regex!13667 List!57664) Unit!148538)

(assert (=> b!4977458 (= lt!2055753 (longestMatchIsAcceptedByMatchOrIsEmpty!1839 (regex!8434 rule!200) lt!2055740))))

(declare-fun res!2124790 () Bool)

(assert (=> start!525166 (=> (not res!2124790) (not e!3111000))))

(get-info :version)

(assert (=> start!525166 (= res!2124790 ((_ is Lexer!8024) thiss!16165))))

(assert (=> start!525166 e!3111000))

(assert (=> start!525166 true))

(assert (=> start!525166 e!3110991))

(declare-fun inv!75299 (BalanceConc!29802) Bool)

(assert (=> start!525166 (and (inv!75299 totalInput!520) e!3110998)))

(assert (=> start!525166 (and (inv!75299 input!1580) e!3110999)))

(declare-fun b!4977463 () Bool)

(declare-fun e!3111001 () Bool)

(assert (=> b!4977463 (= e!3110996 e!3111001)))

(declare-fun res!2124788 () Bool)

(assert (=> b!4977463 (=> res!2124788 e!3111001)))

(declare-fun lt!2055742 () Bool)

(assert (=> b!4977463 (= res!2124788 (or (not (= lt!2055742 lt!2055746)) (not lt!2055742)))))

(declare-fun isDefined!11404 (Option!14495) Bool)

(assert (=> b!4977463 (= lt!2055746 (isDefined!11404 lt!2055751))))

(declare-fun lt!2055750 () Int)

(declare-fun lt!2055739 () List!57664)

(declare-datatypes ((tuple2!62374 0))(
  ( (tuple2!62375 (_1!34490 Token!15332) (_2!34490 BalanceConc!29802)) )
))
(declare-datatypes ((Option!14496 0))(
  ( (None!14495) (Some!14495 (v!50492 tuple2!62374)) )
))
(declare-fun isDefined!11405 (Option!14496) Bool)

(assert (=> b!4977463 (= lt!2055742 (isDefined!11405 (Some!14495 (tuple2!62375 (Token!15333 lt!2055744 rule!200 lt!2055750 lt!2055739) (_2!34488 lt!2055745)))))))

(declare-fun maxPrefixOneRule!3654 (LexerInterface!8026 Rule!16668 List!57664) Option!14495)

(assert (=> b!4977463 (= lt!2055751 (maxPrefixOneRule!3654 thiss!16165 rule!200 lt!2055740))))

(declare-fun size!38151 (BalanceConc!29802) Int)

(assert (=> b!4977463 (= lt!2055750 (size!38151 (_1!34488 lt!2055745)))))

(declare-fun apply!13925 (TokenValueInjection!16796 BalanceConc!29802) TokenValue!8744)

(assert (=> b!4977463 (= lt!2055744 (apply!13925 (transformation!8434 rule!200) (_1!34488 lt!2055745)))))

(declare-fun lt!2055752 () Unit!148538)

(declare-fun lt!2055743 () BalanceConc!29802)

(declare-fun ForallOf!1248 (Int BalanceConc!29802) Unit!148538)

(assert (=> b!4977463 (= lt!2055752 (ForallOf!1248 lambda!247668 lt!2055743))))

(declare-fun seqFromList!6059 (List!57664) BalanceConc!29802)

(assert (=> b!4977463 (= lt!2055743 (seqFromList!6059 lt!2055739))))

(declare-fun list!18426 (BalanceConc!29802) List!57664)

(assert (=> b!4977463 (= lt!2055739 (list!18426 (_1!34488 lt!2055745)))))

(declare-fun lt!2055741 () Unit!148538)

(assert (=> b!4977463 (= lt!2055741 (ForallOf!1248 lambda!247668 (_1!34488 lt!2055745)))))

(declare-fun b!4977464 () Bool)

(declare-fun res!2124793 () Bool)

(assert (=> b!4977464 (=> res!2124793 e!3111001)))

(assert (=> b!4977464 (= res!2124793 (not (= (list!18426 lt!2055743) lt!2055739)))))

(declare-fun b!4977465 () Bool)

(assert (=> b!4977465 (= e!3111001 e!3110990)))

(declare-fun res!2124794 () Bool)

(assert (=> b!4977465 (=> res!2124794 e!3110990)))

(assert (=> b!4977465 (= res!2124794 (not (= (apply!13925 (transformation!8434 rule!200) lt!2055743) lt!2055744)))))

(declare-fun lt!2055749 () Unit!148538)

(declare-fun lemmaEqSameImage!1183 (TokenValueInjection!16796 BalanceConc!29802 BalanceConc!29802) Unit!148538)

(assert (=> b!4977465 (= lt!2055749 (lemmaEqSameImage!1183 (transformation!8434 rule!200) (_1!34488 lt!2055745) lt!2055743))))

(declare-fun b!4977466 () Bool)

(assert (=> b!4977466 (= e!3111000 e!3110994)))

(declare-fun res!2124791 () Bool)

(assert (=> b!4977466 (=> (not res!2124791) (not e!3110994))))

(declare-fun isSuffix!1233 (List!57664 List!57664) Bool)

(assert (=> b!4977466 (= res!2124791 (isSuffix!1233 lt!2055740 (list!18426 totalInput!520)))))

(assert (=> b!4977466 (= lt!2055740 (list!18426 input!1580))))

(assert (= (and start!525166 res!2124790) b!4977459))

(assert (= (and b!4977459 res!2124789) b!4977466))

(assert (= (and b!4977466 res!2124791) b!4977460))

(assert (= (and b!4977460 res!2124795) b!4977458))

(assert (= (and b!4977458 (not res!2124787)) b!4977461))

(assert (= (and b!4977458 (not res!2124786)) b!4977457))

(assert (= (and b!4977457 (not res!2124792)) b!4977463))

(assert (= (and b!4977463 (not res!2124788)) b!4977464))

(assert (= (and b!4977464 (not res!2124793)) b!4977465))

(assert (= (and b!4977465 (not res!2124794)) b!4977454))

(assert (= b!4977455 b!4977453))

(assert (= start!525166 b!4977455))

(assert (= start!525166 b!4977462))

(assert (= start!525166 b!4977456))

(declare-fun m!6007842 () Bool)

(assert (=> b!4977463 m!6007842))

(declare-fun m!6007844 () Bool)

(assert (=> b!4977463 m!6007844))

(declare-fun m!6007846 () Bool)

(assert (=> b!4977463 m!6007846))

(declare-fun m!6007848 () Bool)

(assert (=> b!4977463 m!6007848))

(declare-fun m!6007850 () Bool)

(assert (=> b!4977463 m!6007850))

(declare-fun m!6007852 () Bool)

(assert (=> b!4977463 m!6007852))

(declare-fun m!6007854 () Bool)

(assert (=> b!4977463 m!6007854))

(declare-fun m!6007856 () Bool)

(assert (=> b!4977463 m!6007856))

(declare-fun m!6007858 () Bool)

(assert (=> b!4977463 m!6007858))

(declare-fun m!6007860 () Bool)

(assert (=> b!4977455 m!6007860))

(declare-fun m!6007862 () Bool)

(assert (=> b!4977455 m!6007862))

(declare-fun m!6007864 () Bool)

(assert (=> b!4977454 m!6007864))

(declare-fun m!6007866 () Bool)

(assert (=> b!4977456 m!6007866))

(declare-fun m!6007868 () Bool)

(assert (=> b!4977462 m!6007868))

(declare-fun m!6007870 () Bool)

(assert (=> b!4977466 m!6007870))

(assert (=> b!4977466 m!6007870))

(declare-fun m!6007872 () Bool)

(assert (=> b!4977466 m!6007872))

(declare-fun m!6007874 () Bool)

(assert (=> b!4977466 m!6007874))

(declare-fun m!6007876 () Bool)

(assert (=> b!4977461 m!6007876))

(declare-fun m!6007878 () Bool)

(assert (=> b!4977464 m!6007878))

(declare-fun m!6007880 () Bool)

(assert (=> b!4977457 m!6007880))

(declare-fun m!6007882 () Bool)

(assert (=> b!4977460 m!6007882))

(declare-fun m!6007884 () Bool)

(assert (=> b!4977460 m!6007884))

(declare-fun m!6007886 () Bool)

(assert (=> b!4977465 m!6007886))

(declare-fun m!6007888 () Bool)

(assert (=> b!4977465 m!6007888))

(declare-fun m!6007890 () Bool)

(assert (=> b!4977459 m!6007890))

(declare-fun m!6007892 () Bool)

(assert (=> b!4977458 m!6007892))

(declare-fun m!6007894 () Bool)

(assert (=> b!4977458 m!6007894))

(declare-fun m!6007896 () Bool)

(assert (=> b!4977458 m!6007896))

(declare-fun m!6007898 () Bool)

(assert (=> b!4977458 m!6007898))

(assert (=> b!4977458 m!6007892))

(declare-fun m!6007900 () Bool)

(assert (=> b!4977458 m!6007900))

(declare-fun m!6007902 () Bool)

(assert (=> b!4977458 m!6007902))

(assert (=> b!4977458 m!6007898))

(declare-fun m!6007904 () Bool)

(assert (=> b!4977458 m!6007904))

(declare-fun m!6007906 () Bool)

(assert (=> start!525166 m!6007906))

(declare-fun m!6007908 () Bool)

(assert (=> start!525166 m!6007908))

(check-sat (not b_next!133825) (not b!4977455) b_and!349449 (not b!4977456) (not b!4977457) (not b!4977459) b_and!349447 (not b!4977465) (not b!4977458) (not b!4977454) (not start!525166) (not b!4977462) (not b!4977463) (not b!4977460) (not b_next!133827) (not b!4977461) (not b!4977464) (not b!4977466))
(check-sat b_and!349449 b_and!349447 (not b_next!133827) (not b_next!133825))

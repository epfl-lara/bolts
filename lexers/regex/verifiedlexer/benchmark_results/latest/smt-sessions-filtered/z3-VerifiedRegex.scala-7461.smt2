; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396002 () Bool)

(assert start!396002)

(declare-fun b!4157878 () Bool)

(declare-fun b_free!119603 () Bool)

(declare-fun b_next!120307 () Bool)

(assert (=> b!4157878 (= b_free!119603 (not b_next!120307))))

(declare-fun tp!1268844 () Bool)

(declare-fun b_and!323965 () Bool)

(assert (=> b!4157878 (= tp!1268844 b_and!323965)))

(declare-fun b_free!119605 () Bool)

(declare-fun b_next!120309 () Bool)

(assert (=> b!4157878 (= b_free!119605 (not b_next!120309))))

(declare-fun tp!1268838 () Bool)

(declare-fun b_and!323967 () Bool)

(assert (=> b!4157878 (= tp!1268838 b_and!323967)))

(declare-fun b!4157863 () Bool)

(declare-fun b_free!119607 () Bool)

(declare-fun b_next!120311 () Bool)

(assert (=> b!4157863 (= b_free!119607 (not b_next!120311))))

(declare-fun tp!1268843 () Bool)

(declare-fun b_and!323969 () Bool)

(assert (=> b!4157863 (= tp!1268843 b_and!323969)))

(declare-fun b_free!119609 () Bool)

(declare-fun b_next!120313 () Bool)

(assert (=> b!4157863 (= b_free!119609 (not b_next!120313))))

(declare-fun tp!1268839 () Bool)

(declare-fun b_and!323971 () Bool)

(assert (=> b!4157863 (= tp!1268839 b_and!323971)))

(declare-fun b!4157873 () Bool)

(declare-fun b_free!119611 () Bool)

(declare-fun b_next!120315 () Bool)

(assert (=> b!4157873 (= b_free!119611 (not b_next!120315))))

(declare-fun tp!1268840 () Bool)

(declare-fun b_and!323973 () Bool)

(assert (=> b!4157873 (= tp!1268840 b_and!323973)))

(declare-fun b_free!119613 () Bool)

(declare-fun b_next!120317 () Bool)

(assert (=> b!4157873 (= b_free!119613 (not b_next!120317))))

(declare-fun tp!1268841 () Bool)

(declare-fun b_and!323975 () Bool)

(assert (=> b!4157873 (= tp!1268841 b_and!323975)))

(declare-fun e!2580485 () Bool)

(assert (=> b!4157863 (= e!2580485 (and tp!1268843 tp!1268839))))

(declare-fun b!4157864 () Bool)

(declare-fun e!2580479 () Bool)

(declare-fun e!2580483 () Bool)

(assert (=> b!4157864 (= e!2580479 e!2580483)))

(declare-fun res!1702956 () Bool)

(assert (=> b!4157864 (=> (not res!1702956) (not e!2580483))))

(declare-datatypes ((List!45476 0))(
  ( (Nil!45352) (Cons!45352 (h!50772 (_ BitVec 16)) (t!343507 List!45476)) )
))
(declare-datatypes ((TokenValue!7724 0))(
  ( (FloatLiteralValue!15448 (text!54513 List!45476)) (TokenValueExt!7723 (__x!27665 Int)) (Broken!38620 (value!234050 List!45476)) (Object!7847) (End!7724) (Def!7724) (Underscore!7724) (Match!7724) (Else!7724) (Error!7724) (Case!7724) (If!7724) (Extends!7724) (Abstract!7724) (Class!7724) (Val!7724) (DelimiterValue!15448 (del!7784 List!45476)) (KeywordValue!7730 (value!234051 List!45476)) (CommentValue!15448 (value!234052 List!45476)) (WhitespaceValue!15448 (value!234053 List!45476)) (IndentationValue!7724 (value!234054 List!45476)) (String!52369) (Int32!7724) (Broken!38621 (value!234055 List!45476)) (Boolean!7725) (Unit!64508) (OperatorValue!7727 (op!7784 List!45476)) (IdentifierValue!15448 (value!234056 List!45476)) (IdentifierValue!15449 (value!234057 List!45476)) (WhitespaceValue!15449 (value!234058 List!45476)) (True!15448) (False!15448) (Broken!38622 (value!234059 List!45476)) (Broken!38623 (value!234060 List!45476)) (True!15449) (RightBrace!7724) (RightBracket!7724) (Colon!7724) (Null!7724) (Comma!7724) (LeftBracket!7724) (False!15449) (LeftBrace!7724) (ImaginaryLiteralValue!7724 (text!54514 List!45476)) (StringLiteralValue!23172 (value!234061 List!45476)) (EOFValue!7724 (value!234062 List!45476)) (IdentValue!7724 (value!234063 List!45476)) (DelimiterValue!15449 (value!234064 List!45476)) (DedentValue!7724 (value!234065 List!45476)) (NewLineValue!7724 (value!234066 List!45476)) (IntegerValue!23172 (value!234067 (_ BitVec 32)) (text!54515 List!45476)) (IntegerValue!23173 (value!234068 Int) (text!54516 List!45476)) (Times!7724) (Or!7724) (Equal!7724) (Minus!7724) (Broken!38624 (value!234069 List!45476)) (And!7724) (Div!7724) (LessEqual!7724) (Mod!7724) (Concat!20123) (Not!7724) (Plus!7724) (SpaceValue!7724 (value!234070 List!45476)) (IntegerValue!23174 (value!234071 Int) (text!54517 List!45476)) (StringLiteralValue!23173 (text!54518 List!45476)) (FloatLiteralValue!15449 (text!54519 List!45476)) (BytesLiteralValue!7724 (value!234072 List!45476)) (CommentValue!15449 (value!234073 List!45476)) (StringLiteralValue!23174 (value!234074 List!45476)) (ErrorTokenValue!7724 (msg!7785 List!45476)) )
))
(declare-datatypes ((C!24984 0))(
  ( (C!24985 (val!14602 Int)) )
))
(declare-datatypes ((List!45477 0))(
  ( (Nil!45353) (Cons!45353 (h!50773 C!24984) (t!343508 List!45477)) )
))
(declare-datatypes ((String!52370 0))(
  ( (String!52371 (value!234075 String)) )
))
(declare-datatypes ((IArray!27415 0))(
  ( (IArray!27416 (innerList!13765 List!45477)) )
))
(declare-datatypes ((Conc!13705 0))(
  ( (Node!13705 (left!33874 Conc!13705) (right!34204 Conc!13705) (csize!27640 Int) (cheight!13916 Int)) (Leaf!21167 (xs!17011 IArray!27415) (csize!27641 Int)) (Empty!13705) )
))
(declare-datatypes ((Regex!12399 0))(
  ( (ElementMatch!12399 (c!711572 C!24984)) (Concat!20124 (regOne!25310 Regex!12399) (regTwo!25310 Regex!12399)) (EmptyExpr!12399) (Star!12399 (reg!12728 Regex!12399)) (EmptyLang!12399) (Union!12399 (regOne!25311 Regex!12399) (regTwo!25311 Regex!12399)) )
))
(declare-datatypes ((BalanceConc!27004 0))(
  ( (BalanceConc!27005 (c!711573 Conc!13705)) )
))
(declare-datatypes ((TokenValueInjection!14876 0))(
  ( (TokenValueInjection!14877 (toValue!10158 Int) (toChars!10017 Int)) )
))
(declare-datatypes ((Rule!14788 0))(
  ( (Rule!14789 (regex!7494 Regex!12399) (tag!8358 String!52370) (isSeparator!7494 Bool) (transformation!7494 TokenValueInjection!14876)) )
))
(declare-datatypes ((List!45478 0))(
  ( (Nil!45354) (Cons!45354 (h!50774 Rule!14788) (t!343509 List!45478)) )
))
(declare-fun rules!4102 () List!45478)

(declare-datatypes ((List!45479 0))(
  ( (Nil!45355) (Cons!45355 (h!50775 String!52370) (t!343510 List!45479)) )
))
(declare-fun lt!1481882 () List!45479)

(declare-datatypes ((LexerInterface!7083 0))(
  ( (LexerInterfaceExt!7080 (__x!27666 Int)) (Lexer!7081) )
))
(declare-fun thiss!26968 () LexerInterface!7083)

(declare-fun noDuplicateTag!3071 (LexerInterface!7083 List!45478 List!45479) Bool)

(assert (=> b!4157864 (= res!1702956 (noDuplicateTag!3071 thiss!26968 rules!4102 lt!1481882))))

(declare-fun noDuplicateTag$default$2!76 (LexerInterface!7083) List!45479)

(assert (=> b!4157864 (= lt!1481882 (noDuplicateTag$default$2!76 thiss!26968))))

(declare-fun e!2580484 () Bool)

(declare-fun r1!615 () Rule!14788)

(declare-fun b!4157865 () Bool)

(declare-fun e!2580476 () Bool)

(declare-fun tp!1268837 () Bool)

(declare-fun inv!59880 (String!52370) Bool)

(declare-fun inv!59882 (TokenValueInjection!14876) Bool)

(assert (=> b!4157865 (= e!2580476 (and tp!1268837 (inv!59880 (tag!8358 r1!615)) (inv!59882 (transformation!7494 r1!615)) e!2580484))))

(declare-fun res!1702951 () Bool)

(assert (=> start!396002 (=> (not res!1702951) (not e!2580479))))

(get-info :version)

(assert (=> start!396002 (= res!1702951 ((_ is Lexer!7081) thiss!26968))))

(assert (=> start!396002 e!2580479))

(assert (=> start!396002 true))

(declare-fun e!2580477 () Bool)

(assert (=> start!396002 e!2580477))

(assert (=> start!396002 e!2580476))

(declare-fun e!2580481 () Bool)

(assert (=> start!396002 e!2580481))

(declare-fun b!4157866 () Bool)

(declare-fun e!2580475 () Bool)

(assert (=> b!4157866 (= e!2580475 true)))

(declare-fun r2!597 () Rule!14788)

(assert (=> b!4157866 (not (= (tag!8358 r1!615) (tag!8358 r2!597)))))

(declare-fun lt!1481881 () List!45478)

(declare-datatypes ((Unit!64509 0))(
  ( (Unit!64510) )
))
(declare-fun lt!1481884 () Unit!64509)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!80 (LexerInterface!7083 List!45478 Rule!14788 Rule!14788) Unit!64509)

(assert (=> b!4157866 (= lt!1481884 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!80 thiss!26968 lt!1481881 r1!615 r2!597))))

(declare-fun b!4157867 () Bool)

(declare-fun res!1702952 () Bool)

(assert (=> b!4157867 (=> (not res!1702952) (not e!2580483))))

(declare-fun getIndex!836 (List!45478 Rule!14788) Int)

(assert (=> b!4157867 (= res!1702952 (< (getIndex!836 rules!4102 r1!615) (getIndex!836 rules!4102 r2!597)))))

(declare-fun b!4157868 () Bool)

(declare-fun e!2580486 () Bool)

(assert (=> b!4157868 (= e!2580483 e!2580486)))

(declare-fun res!1702955 () Bool)

(assert (=> b!4157868 (=> (not res!1702955) (not e!2580486))))

(declare-fun lt!1481880 () Rule!14788)

(assert (=> b!4157868 (= res!1702955 (not (= lt!1481880 r1!615)))))

(declare-fun head!8816 (List!45478) Rule!14788)

(assert (=> b!4157868 (= lt!1481880 (head!8816 rules!4102))))

(declare-fun b!4157869 () Bool)

(declare-fun e!2580478 () Bool)

(declare-fun tp!1268842 () Bool)

(assert (=> b!4157869 (= e!2580477 (and e!2580478 tp!1268842))))

(declare-fun b!4157870 () Bool)

(assert (=> b!4157870 (= e!2580486 (not e!2580475))))

(declare-fun res!1702953 () Bool)

(assert (=> b!4157870 (=> res!1702953 e!2580475)))

(declare-fun contains!9213 (List!45478 Rule!14788) Bool)

(assert (=> b!4157870 (= res!1702953 (not (contains!9213 lt!1481881 r1!615)))))

(assert (=> b!4157870 (contains!9213 lt!1481881 r2!597)))

(declare-fun lt!1481879 () Unit!64509)

(declare-fun lemmaGetIndexBiggerAndHeadNotEqThenTailContains!18 (List!45478 Rule!14788 Rule!14788) Unit!64509)

(assert (=> b!4157870 (= lt!1481879 (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!18 rules!4102 r1!615 r2!597))))

(assert (=> b!4157870 (noDuplicateTag!3071 thiss!26968 lt!1481881 Nil!45355)))

(declare-fun lt!1481883 () Unit!64509)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!46 (LexerInterface!7083 List!45479 List!45479 List!45478) Unit!64509)

(assert (=> b!4157870 (= lt!1481883 (lemmaNoDupTagThenAlsoWithSubListAcc!46 thiss!26968 (Cons!45355 (tag!8358 lt!1481880) Nil!45355) Nil!45355 lt!1481881))))

(declare-fun tail!6649 (List!45478) List!45478)

(assert (=> b!4157870 (= lt!1481881 (tail!6649 rules!4102))))

(declare-fun b!4157871 () Bool)

(declare-fun res!1702948 () Bool)

(assert (=> b!4157871 (=> (not res!1702948) (not e!2580479))))

(assert (=> b!4157871 (= res!1702948 (contains!9213 rules!4102 r2!597))))

(declare-fun b!4157872 () Bool)

(declare-fun res!1702949 () Bool)

(assert (=> b!4157872 (=> res!1702949 e!2580475)))

(assert (=> b!4157872 (= res!1702949 (>= (getIndex!836 lt!1481881 r1!615) (getIndex!836 lt!1481881 r2!597)))))

(assert (=> b!4157873 (= e!2580484 (and tp!1268840 tp!1268841))))

(declare-fun tp!1268845 () Bool)

(declare-fun b!4157874 () Bool)

(assert (=> b!4157874 (= e!2580478 (and tp!1268845 (inv!59880 (tag!8358 (h!50774 rules!4102))) (inv!59882 (transformation!7494 (h!50774 rules!4102))) e!2580485))))

(declare-fun b!4157875 () Bool)

(declare-fun res!1702950 () Bool)

(assert (=> b!4157875 (=> (not res!1702950) (not e!2580479))))

(assert (=> b!4157875 (= res!1702950 (contains!9213 rules!4102 r1!615))))

(declare-fun b!4157876 () Bool)

(declare-fun res!1702954 () Bool)

(assert (=> b!4157876 (=> res!1702954 e!2580475)))

(assert (=> b!4157876 (= res!1702954 (not (noDuplicateTag!3071 thiss!26968 lt!1481881 lt!1481882)))))

(declare-fun e!2580488 () Bool)

(declare-fun b!4157877 () Bool)

(declare-fun tp!1268846 () Bool)

(assert (=> b!4157877 (= e!2580481 (and tp!1268846 (inv!59880 (tag!8358 r2!597)) (inv!59882 (transformation!7494 r2!597)) e!2580488))))

(assert (=> b!4157878 (= e!2580488 (and tp!1268844 tp!1268838))))

(assert (= (and start!396002 res!1702951) b!4157875))

(assert (= (and b!4157875 res!1702950) b!4157871))

(assert (= (and b!4157871 res!1702948) b!4157864))

(assert (= (and b!4157864 res!1702956) b!4157867))

(assert (= (and b!4157867 res!1702952) b!4157868))

(assert (= (and b!4157868 res!1702955) b!4157870))

(assert (= (and b!4157870 (not res!1702953)) b!4157876))

(assert (= (and b!4157876 (not res!1702954)) b!4157872))

(assert (= (and b!4157872 (not res!1702949)) b!4157866))

(assert (= b!4157874 b!4157863))

(assert (= b!4157869 b!4157874))

(assert (= (and start!396002 ((_ is Cons!45354) rules!4102)) b!4157869))

(assert (= b!4157865 b!4157873))

(assert (= start!396002 b!4157865))

(assert (= b!4157877 b!4157878))

(assert (= start!396002 b!4157877))

(declare-fun m!4751711 () Bool)

(assert (=> b!4157871 m!4751711))

(declare-fun m!4751713 () Bool)

(assert (=> b!4157867 m!4751713))

(declare-fun m!4751715 () Bool)

(assert (=> b!4157867 m!4751715))

(declare-fun m!4751717 () Bool)

(assert (=> b!4157875 m!4751717))

(declare-fun m!4751719 () Bool)

(assert (=> b!4157876 m!4751719))

(declare-fun m!4751721 () Bool)

(assert (=> b!4157865 m!4751721))

(declare-fun m!4751723 () Bool)

(assert (=> b!4157865 m!4751723))

(declare-fun m!4751725 () Bool)

(assert (=> b!4157877 m!4751725))

(declare-fun m!4751727 () Bool)

(assert (=> b!4157877 m!4751727))

(declare-fun m!4751729 () Bool)

(assert (=> b!4157864 m!4751729))

(declare-fun m!4751731 () Bool)

(assert (=> b!4157864 m!4751731))

(declare-fun m!4751733 () Bool)

(assert (=> b!4157872 m!4751733))

(declare-fun m!4751735 () Bool)

(assert (=> b!4157872 m!4751735))

(declare-fun m!4751737 () Bool)

(assert (=> b!4157866 m!4751737))

(declare-fun m!4751739 () Bool)

(assert (=> b!4157874 m!4751739))

(declare-fun m!4751741 () Bool)

(assert (=> b!4157874 m!4751741))

(declare-fun m!4751743 () Bool)

(assert (=> b!4157868 m!4751743))

(declare-fun m!4751745 () Bool)

(assert (=> b!4157870 m!4751745))

(declare-fun m!4751747 () Bool)

(assert (=> b!4157870 m!4751747))

(declare-fun m!4751749 () Bool)

(assert (=> b!4157870 m!4751749))

(declare-fun m!4751751 () Bool)

(assert (=> b!4157870 m!4751751))

(declare-fun m!4751753 () Bool)

(assert (=> b!4157870 m!4751753))

(declare-fun m!4751755 () Bool)

(assert (=> b!4157870 m!4751755))

(check-sat b_and!323969 (not b!4157875) (not b!4157870) (not b_next!120307) (not b!4157874) (not b!4157864) (not b_next!120317) b_and!323965 (not b!4157871) (not b_next!120311) (not b!4157868) (not b_next!120315) (not b!4157876) b_and!323967 (not b!4157866) b_and!323973 (not b!4157867) b_and!323971 (not b!4157877) (not b_next!120313) (not b!4157872) (not b!4157865) (not b_next!120309) (not b!4157869) b_and!323975)
(check-sat b_and!323969 (not b_next!120307) (not b_next!120317) b_and!323965 (not b_next!120311) b_and!323973 (not b_next!120315) b_and!323971 b_and!323967 (not b_next!120313) (not b_next!120309) b_and!323975)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!510724 () Bool)

(assert start!510724)

(declare-fun b!4881618 () Bool)

(declare-fun b_free!130923 () Bool)

(declare-fun b_next!131713 () Bool)

(assert (=> b!4881618 (= b_free!130923 (not b_next!131713))))

(declare-fun tp!1373420 () Bool)

(declare-fun b_and!343755 () Bool)

(assert (=> b!4881618 (= tp!1373420 b_and!343755)))

(declare-fun b_free!130925 () Bool)

(declare-fun b_next!131715 () Bool)

(assert (=> b!4881618 (= b_free!130925 (not b_next!131715))))

(declare-fun tp!1373419 () Bool)

(declare-fun b_and!343757 () Bool)

(assert (=> b!4881618 (= tp!1373419 b_and!343757)))

(declare-fun b!4881617 () Bool)

(declare-fun e!3050870 () Bool)

(declare-fun e!3050876 () Bool)

(assert (=> b!4881617 (= e!3050870 e!3050876)))

(declare-fun res!2083818 () Bool)

(assert (=> b!4881617 (=> (not res!2083818) (not e!3050876))))

(declare-datatypes ((C!26480 0))(
  ( (C!26481 (val!22574 Int)) )
))
(declare-datatypes ((List!56203 0))(
  ( (Nil!56079) (Cons!56079 (h!62527 C!26480) (t!364849 List!56203)) )
))
(declare-datatypes ((IArray!29329 0))(
  ( (IArray!29330 (innerList!14722 List!56203)) )
))
(declare-datatypes ((Conc!14634 0))(
  ( (Node!14634 (left!40741 Conc!14634) (right!41071 Conc!14634) (csize!29498 Int) (cheight!14845 Int)) (Leaf!24384 (xs!17950 IArray!29329) (csize!29499 Int)) (Empty!14634) )
))
(declare-datatypes ((BalanceConc!28698 0))(
  ( (BalanceConc!28699 (c!830307 Conc!14634)) )
))
(declare-datatypes ((List!56204 0))(
  ( (Nil!56080) (Cons!56080 (h!62528 (_ BitVec 16)) (t!364850 List!56204)) )
))
(declare-datatypes ((TokenValue!8376 0))(
  ( (FloatLiteralValue!16752 (text!59077 List!56204)) (TokenValueExt!8375 (__x!34045 Int)) (Broken!41880 (value!259009 List!56204)) (Object!8499) (End!8376) (Def!8376) (Underscore!8376) (Match!8376) (Else!8376) (Error!8376) (Case!8376) (If!8376) (Extends!8376) (Abstract!8376) (Class!8376) (Val!8376) (DelimiterValue!16752 (del!8436 List!56204)) (KeywordValue!8382 (value!259010 List!56204)) (CommentValue!16752 (value!259011 List!56204)) (WhitespaceValue!16752 (value!259012 List!56204)) (IndentationValue!8376 (value!259013 List!56204)) (String!63321) (Int32!8376) (Broken!41881 (value!259014 List!56204)) (Boolean!8377) (Unit!146069) (OperatorValue!8379 (op!8436 List!56204)) (IdentifierValue!16752 (value!259015 List!56204)) (IdentifierValue!16753 (value!259016 List!56204)) (WhitespaceValue!16753 (value!259017 List!56204)) (True!16752) (False!16752) (Broken!41882 (value!259018 List!56204)) (Broken!41883 (value!259019 List!56204)) (True!16753) (RightBrace!8376) (RightBracket!8376) (Colon!8376) (Null!8376) (Comma!8376) (LeftBracket!8376) (False!16753) (LeftBrace!8376) (ImaginaryLiteralValue!8376 (text!59078 List!56204)) (StringLiteralValue!25128 (value!259020 List!56204)) (EOFValue!8376 (value!259021 List!56204)) (IdentValue!8376 (value!259022 List!56204)) (DelimiterValue!16753 (value!259023 List!56204)) (DedentValue!8376 (value!259024 List!56204)) (NewLineValue!8376 (value!259025 List!56204)) (IntegerValue!25128 (value!259026 (_ BitVec 32)) (text!59079 List!56204)) (IntegerValue!25129 (value!259027 Int) (text!59080 List!56204)) (Times!8376) (Or!8376) (Equal!8376) (Minus!8376) (Broken!41884 (value!259028 List!56204)) (And!8376) (Div!8376) (LessEqual!8376) (Mod!8376) (Concat!21517) (Not!8376) (Plus!8376) (SpaceValue!8376 (value!259029 List!56204)) (IntegerValue!25130 (value!259030 Int) (text!59081 List!56204)) (StringLiteralValue!25129 (text!59082 List!56204)) (FloatLiteralValue!16753 (text!59083 List!56204)) (BytesLiteralValue!8376 (value!259031 List!56204)) (CommentValue!16753 (value!259032 List!56204)) (StringLiteralValue!25130 (value!259033 List!56204)) (ErrorTokenValue!8376 (msg!8437 List!56204)) )
))
(declare-datatypes ((Regex!13141 0))(
  ( (ElementMatch!13141 (c!830308 C!26480)) (Concat!21518 (regOne!26794 Regex!13141) (regTwo!26794 Regex!13141)) (EmptyExpr!13141) (Star!13141 (reg!13470 Regex!13141)) (EmptyLang!13141) (Union!13141 (regOne!26795 Regex!13141) (regTwo!26795 Regex!13141)) )
))
(declare-datatypes ((String!63322 0))(
  ( (String!63323 (value!259034 String)) )
))
(declare-datatypes ((TokenValueInjection!16060 0))(
  ( (TokenValueInjection!16061 (toValue!10953 Int) (toChars!10812 Int)) )
))
(declare-datatypes ((Rule!15932 0))(
  ( (Rule!15933 (regex!8066 Regex!13141) (tag!8930 String!63322) (isSeparator!8066 Bool) (transformation!8066 TokenValueInjection!16060)) )
))
(declare-datatypes ((Token!14704 0))(
  ( (Token!14705 (value!259035 TokenValue!8376) (rule!11222 Rule!15932) (size!36974 Int) (originalCharacters!8383 List!56203)) )
))
(declare-datatypes ((tuple2!59954 0))(
  ( (tuple2!59955 (_1!33280 Token!14704) (_2!33280 BalanceConc!28698)) )
))
(declare-fun lt!1999566 () tuple2!59954)

(declare-datatypes ((tuple2!59956 0))(
  ( (tuple2!59957 (_1!33281 Token!14704) (_2!33281 List!56203)) )
))
(declare-fun lt!1999569 () tuple2!59956)

(assert (=> b!4881617 (= res!2083818 (= (_1!33280 lt!1999566) (_1!33281 lt!1999569)))))

(declare-datatypes ((Option!13824 0))(
  ( (None!13823) (Some!13823 (v!49773 tuple2!59956)) )
))
(declare-fun lt!1999572 () Option!13824)

(declare-fun get!19274 (Option!13824) tuple2!59956)

(assert (=> b!4881617 (= lt!1999569 (get!19274 lt!1999572))))

(declare-datatypes ((Option!13825 0))(
  ( (None!13824) (Some!13824 (v!49774 tuple2!59954)) )
))
(declare-fun lt!1999571 () Option!13825)

(declare-fun get!19275 (Option!13825) tuple2!59954)

(assert (=> b!4881617 (= lt!1999566 (get!19275 lt!1999571))))

(declare-fun e!3050877 () Bool)

(assert (=> b!4881618 (= e!3050877 (and tp!1373420 tp!1373419))))

(declare-fun b!4881620 () Bool)

(declare-fun e!3050874 () Bool)

(declare-fun input!1236 () BalanceConc!28698)

(declare-fun tp!1373418 () Bool)

(declare-fun inv!72101 (Conc!14634) Bool)

(assert (=> b!4881620 (= e!3050874 (and (inv!72101 (c!830307 input!1236)) tp!1373418))))

(declare-fun b!4881621 () Bool)

(declare-fun list!17584 (BalanceConc!28698) List!56203)

(assert (=> b!4881621 (= e!3050876 (= (list!17584 (_2!33280 lt!1999566)) (_2!33281 lt!1999569)))))

(declare-fun b!4881622 () Bool)

(declare-fun e!3050875 () Bool)

(declare-fun e!3050878 () Bool)

(assert (=> b!4881622 (= e!3050875 (not e!3050878))))

(declare-fun res!2083819 () Bool)

(assert (=> b!4881622 (=> res!2083819 e!3050878)))

(declare-datatypes ((List!56205 0))(
  ( (Nil!56081) (Cons!56081 (h!62529 Rule!15932) (t!364851 List!56205)) )
))
(declare-fun rulesArg!165 () List!56205)

(get-info :version)

(assert (=> b!4881622 (= res!2083819 (or (not ((_ is Cons!56081) rulesArg!165)) (not ((_ is Nil!56081) (t!364851 rulesArg!165)))))))

(declare-fun lt!1999567 () List!56203)

(declare-fun isPrefix!4788 (List!56203 List!56203) Bool)

(assert (=> b!4881622 (isPrefix!4788 lt!1999567 lt!1999567)))

(declare-datatypes ((Unit!146070 0))(
  ( (Unit!146071) )
))
(declare-fun lt!1999565 () Unit!146070)

(declare-fun lemmaIsPrefixRefl!3185 (List!56203 List!56203) Unit!146070)

(assert (=> b!4881622 (= lt!1999565 (lemmaIsPrefixRefl!3185 lt!1999567 lt!1999567))))

(assert (=> b!4881622 (= lt!1999567 (list!17584 input!1236))))

(declare-fun e!3050871 () Bool)

(declare-fun b!4881623 () Bool)

(declare-fun tp!1373421 () Bool)

(declare-fun inv!72097 (String!63322) Bool)

(declare-fun inv!72102 (TokenValueInjection!16060) Bool)

(assert (=> b!4881623 (= e!3050871 (and tp!1373421 (inv!72097 (tag!8930 (h!62529 rulesArg!165))) (inv!72102 (transformation!8066 (h!62529 rulesArg!165))) e!3050877))))

(declare-fun b!4881624 () Bool)

(declare-fun res!2083822 () Bool)

(assert (=> b!4881624 (=> (not res!2083822) (not e!3050875))))

(declare-datatypes ((LexerInterface!7658 0))(
  ( (LexerInterfaceExt!7655 (__x!34046 Int)) (Lexer!7656) )
))
(declare-fun thiss!14805 () LexerInterface!7658)

(declare-fun rulesValidInductive!3045 (LexerInterface!7658 List!56205) Bool)

(assert (=> b!4881624 (= res!2083822 (rulesValidInductive!3045 thiss!14805 rulesArg!165))))

(declare-fun b!4881625 () Bool)

(declare-fun res!2083821 () Bool)

(assert (=> b!4881625 (=> (not res!2083821) (not e!3050875))))

(declare-fun isEmpty!30049 (List!56205) Bool)

(assert (=> b!4881625 (= res!2083821 (not (isEmpty!30049 rulesArg!165)))))

(declare-fun b!4881619 () Bool)

(declare-fun e!3050879 () Bool)

(assert (=> b!4881619 (= e!3050879 true)))

(declare-fun lt!1999568 () Bool)

(assert (=> b!4881619 (= lt!1999568 e!3050870)))

(declare-fun res!2083820 () Bool)

(assert (=> b!4881619 (=> res!2083820 e!3050870)))

(declare-fun lt!1999570 () Bool)

(assert (=> b!4881619 (= res!2083820 (not lt!1999570))))

(declare-fun res!2083824 () Bool)

(assert (=> start!510724 (=> (not res!2083824) (not e!3050875))))

(assert (=> start!510724 (= res!2083824 ((_ is Lexer!7656) thiss!14805))))

(assert (=> start!510724 e!3050875))

(assert (=> start!510724 true))

(declare-fun e!3050873 () Bool)

(assert (=> start!510724 e!3050873))

(declare-fun inv!72103 (BalanceConc!28698) Bool)

(assert (=> start!510724 (and (inv!72103 input!1236) e!3050874)))

(declare-fun b!4881626 () Bool)

(declare-fun tp!1373417 () Bool)

(assert (=> b!4881626 (= e!3050873 (and e!3050871 tp!1373417))))

(declare-fun b!4881627 () Bool)

(assert (=> b!4881627 (= e!3050878 e!3050879)))

(declare-fun res!2083823 () Bool)

(assert (=> b!4881627 (=> res!2083823 e!3050879)))

(declare-fun isDefined!10876 (Option!13824) Bool)

(assert (=> b!4881627 (= res!2083823 (not (= lt!1999570 (isDefined!10876 lt!1999572))))))

(declare-fun isDefined!10877 (Option!13825) Bool)

(assert (=> b!4881627 (= lt!1999570 (isDefined!10877 lt!1999571))))

(declare-fun maxPrefixZipper!579 (LexerInterface!7658 List!56205 List!56203) Option!13824)

(assert (=> b!4881627 (= lt!1999572 (maxPrefixZipper!579 thiss!14805 rulesArg!165 lt!1999567))))

(declare-fun maxPrefixOneRuleZipperSequence!594 (LexerInterface!7658 Rule!15932 BalanceConc!28698) Option!13825)

(assert (=> b!4881627 (= lt!1999571 (maxPrefixOneRuleZipperSequence!594 thiss!14805 (h!62529 rulesArg!165) input!1236))))

(assert (= (and start!510724 res!2083824) b!4881624))

(assert (= (and b!4881624 res!2083822) b!4881625))

(assert (= (and b!4881625 res!2083821) b!4881622))

(assert (= (and b!4881622 (not res!2083819)) b!4881627))

(assert (= (and b!4881627 (not res!2083823)) b!4881619))

(assert (= (and b!4881619 (not res!2083820)) b!4881617))

(assert (= (and b!4881617 res!2083818) b!4881621))

(assert (= b!4881623 b!4881618))

(assert (= b!4881626 b!4881623))

(assert (= (and start!510724 ((_ is Cons!56081) rulesArg!165)) b!4881626))

(assert (= start!510724 b!4881620))

(declare-fun m!5885858 () Bool)

(assert (=> b!4881627 m!5885858))

(declare-fun m!5885860 () Bool)

(assert (=> b!4881627 m!5885860))

(declare-fun m!5885862 () Bool)

(assert (=> b!4881627 m!5885862))

(declare-fun m!5885864 () Bool)

(assert (=> b!4881627 m!5885864))

(declare-fun m!5885866 () Bool)

(assert (=> b!4881624 m!5885866))

(declare-fun m!5885868 () Bool)

(assert (=> b!4881625 m!5885868))

(declare-fun m!5885870 () Bool)

(assert (=> b!4881617 m!5885870))

(declare-fun m!5885872 () Bool)

(assert (=> b!4881617 m!5885872))

(declare-fun m!5885874 () Bool)

(assert (=> start!510724 m!5885874))

(declare-fun m!5885876 () Bool)

(assert (=> b!4881620 m!5885876))

(declare-fun m!5885878 () Bool)

(assert (=> b!4881622 m!5885878))

(declare-fun m!5885880 () Bool)

(assert (=> b!4881622 m!5885880))

(declare-fun m!5885882 () Bool)

(assert (=> b!4881622 m!5885882))

(declare-fun m!5885884 () Bool)

(assert (=> b!4881623 m!5885884))

(declare-fun m!5885886 () Bool)

(assert (=> b!4881623 m!5885886))

(declare-fun m!5885888 () Bool)

(assert (=> b!4881621 m!5885888))

(check-sat (not b!4881627) (not b_next!131713) (not start!510724) (not b!4881620) (not b!4881623) b_and!343755 (not b!4881617) b_and!343757 (not b!4881621) (not b!4881626) (not b!4881622) (not b!4881624) (not b!4881625) (not b_next!131715))
(check-sat b_and!343757 b_and!343755 (not b_next!131713) (not b_next!131715))

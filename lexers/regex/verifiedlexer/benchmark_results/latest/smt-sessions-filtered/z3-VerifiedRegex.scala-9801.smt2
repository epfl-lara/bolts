; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511848 () Bool)

(assert start!511848)

(declare-fun b!4889461 () Bool)

(declare-fun b_free!131499 () Bool)

(declare-fun b_next!132289 () Bool)

(assert (=> b!4889461 (= b_free!131499 (not b_next!132289))))

(declare-fun tp!1376343 () Bool)

(declare-fun b_and!344347 () Bool)

(assert (=> b!4889461 (= tp!1376343 b_and!344347)))

(declare-fun b_free!131501 () Bool)

(declare-fun b_next!132291 () Bool)

(assert (=> b!4889461 (= b_free!131501 (not b_next!132291))))

(declare-fun tp!1376344 () Bool)

(declare-fun b_and!344349 () Bool)

(assert (=> b!4889461 (= tp!1376344 b_and!344349)))

(declare-fun b!4889450 () Bool)

(declare-fun e!3056795 () Bool)

(declare-datatypes ((C!26688 0))(
  ( (C!26689 (val!22678 Int)) )
))
(declare-datatypes ((List!56515 0))(
  ( (Nil!56391) (Cons!56391 (h!62839 C!26688) (t!365185 List!56515)) )
))
(declare-datatypes ((IArray!29537 0))(
  ( (IArray!29538 (innerList!14826 List!56515)) )
))
(declare-datatypes ((Conc!14738 0))(
  ( (Node!14738 (left!40961 Conc!14738) (right!41291 Conc!14738) (csize!29706 Int) (cheight!14949 Int)) (Leaf!24540 (xs!18054 IArray!29537) (csize!29707 Int)) (Empty!14738) )
))
(declare-datatypes ((BalanceConc!28906 0))(
  ( (BalanceConc!28907 (c!830999 Conc!14738)) )
))
(declare-datatypes ((List!56516 0))(
  ( (Nil!56392) (Cons!56392 (h!62840 (_ BitVec 16)) (t!365186 List!56516)) )
))
(declare-datatypes ((TokenValue!8480 0))(
  ( (FloatLiteralValue!16960 (text!59805 List!56516)) (TokenValueExt!8479 (__x!34253 Int)) (Broken!42400 (value!261969 List!56516)) (Object!8603) (End!8480) (Def!8480) (Underscore!8480) (Match!8480) (Else!8480) (Error!8480) (Case!8480) (If!8480) (Extends!8480) (Abstract!8480) (Class!8480) (Val!8480) (DelimiterValue!16960 (del!8540 List!56516)) (KeywordValue!8486 (value!261970 List!56516)) (CommentValue!16960 (value!261971 List!56516)) (WhitespaceValue!16960 (value!261972 List!56516)) (IndentationValue!8480 (value!261973 List!56516)) (String!63841) (Int32!8480) (Broken!42401 (value!261974 List!56516)) (Boolean!8481) (Unit!146377) (OperatorValue!8483 (op!8540 List!56516)) (IdentifierValue!16960 (value!261975 List!56516)) (IdentifierValue!16961 (value!261976 List!56516)) (WhitespaceValue!16961 (value!261977 List!56516)) (True!16960) (False!16960) (Broken!42402 (value!261978 List!56516)) (Broken!42403 (value!261979 List!56516)) (True!16961) (RightBrace!8480) (RightBracket!8480) (Colon!8480) (Null!8480) (Comma!8480) (LeftBracket!8480) (False!16961) (LeftBrace!8480) (ImaginaryLiteralValue!8480 (text!59806 List!56516)) (StringLiteralValue!25440 (value!261980 List!56516)) (EOFValue!8480 (value!261981 List!56516)) (IdentValue!8480 (value!261982 List!56516)) (DelimiterValue!16961 (value!261983 List!56516)) (DedentValue!8480 (value!261984 List!56516)) (NewLineValue!8480 (value!261985 List!56516)) (IntegerValue!25440 (value!261986 (_ BitVec 32)) (text!59807 List!56516)) (IntegerValue!25441 (value!261987 Int) (text!59808 List!56516)) (Times!8480) (Or!8480) (Equal!8480) (Minus!8480) (Broken!42404 (value!261988 List!56516)) (And!8480) (Div!8480) (LessEqual!8480) (Mod!8480) (Concat!21725) (Not!8480) (Plus!8480) (SpaceValue!8480 (value!261989 List!56516)) (IntegerValue!25442 (value!261990 Int) (text!59809 List!56516)) (StringLiteralValue!25441 (text!59810 List!56516)) (FloatLiteralValue!16961 (text!59811 List!56516)) (BytesLiteralValue!8480 (value!261991 List!56516)) (CommentValue!16961 (value!261992 List!56516)) (StringLiteralValue!25442 (value!261993 List!56516)) (ErrorTokenValue!8480 (msg!8541 List!56516)) )
))
(declare-datatypes ((TokenValueInjection!16268 0))(
  ( (TokenValueInjection!16269 (toValue!11057 Int) (toChars!10916 Int)) )
))
(declare-datatypes ((Regex!13245 0))(
  ( (ElementMatch!13245 (c!831000 C!26688)) (Concat!21726 (regOne!27002 Regex!13245) (regTwo!27002 Regex!13245)) (EmptyExpr!13245) (Star!13245 (reg!13574 Regex!13245)) (EmptyLang!13245) (Union!13245 (regOne!27003 Regex!13245) (regTwo!27003 Regex!13245)) )
))
(declare-datatypes ((String!63842 0))(
  ( (String!63843 (value!261994 String)) )
))
(declare-datatypes ((Rule!16140 0))(
  ( (Rule!16141 (regex!8170 Regex!13245) (tag!9034 String!63842) (isSeparator!8170 Bool) (transformation!8170 TokenValueInjection!16268)) )
))
(declare-datatypes ((Token!14904 0))(
  ( (Token!14905 (value!261995 TokenValue!8480) (rule!11346 Rule!16140) (size!37120 Int) (originalCharacters!8483 List!56515)) )
))
(declare-datatypes ((tuple2!60412 0))(
  ( (tuple2!60413 (_1!33509 Token!14904) (_2!33509 BalanceConc!28906)) )
))
(declare-fun lt!2003885 () tuple2!60412)

(declare-datatypes ((tuple2!60414 0))(
  ( (tuple2!60415 (_1!33510 Token!14904) (_2!33510 List!56515)) )
))
(declare-fun lt!2003883 () tuple2!60414)

(declare-fun list!17712 (BalanceConc!28906) List!56515)

(assert (=> b!4889450 (= e!3056795 (= (list!17712 (_2!33509 lt!2003885)) (_2!33510 lt!2003883)))))

(declare-fun b!4889451 () Bool)

(declare-fun e!3056803 () Bool)

(declare-fun lt!2003887 () tuple2!60412)

(declare-fun lt!2003878 () tuple2!60414)

(assert (=> b!4889451 (= e!3056803 (= (list!17712 (_2!33509 lt!2003887)) (_2!33510 lt!2003878)))))

(declare-fun tp!1376342 () Bool)

(declare-fun e!3056799 () Bool)

(declare-fun b!4889452 () Bool)

(declare-fun e!3056804 () Bool)

(declare-datatypes ((List!56517 0))(
  ( (Nil!56393) (Cons!56393 (h!62841 Rule!16140) (t!365187 List!56517)) )
))
(declare-fun rulesArg!165 () List!56517)

(declare-fun inv!72644 (String!63842) Bool)

(declare-fun inv!72648 (TokenValueInjection!16268) Bool)

(assert (=> b!4889452 (= e!3056804 (and tp!1376342 (inv!72644 (tag!9034 (h!62841 rulesArg!165))) (inv!72648 (transformation!8170 (h!62841 rulesArg!165))) e!3056799))))

(declare-fun b!4889453 () Bool)

(declare-fun e!3056800 () Bool)

(declare-fun e!3056796 () Bool)

(assert (=> b!4889453 (= e!3056800 e!3056796)))

(declare-fun res!2088155 () Bool)

(assert (=> b!4889453 (=> res!2088155 e!3056796)))

(declare-fun lt!2003880 () Bool)

(assert (=> b!4889453 (= res!2088155 lt!2003880)))

(declare-fun b!4889454 () Bool)

(declare-fun e!3056802 () Bool)

(declare-fun e!3056805 () Bool)

(assert (=> b!4889454 (= e!3056802 (not e!3056805))))

(declare-fun res!2088149 () Bool)

(assert (=> b!4889454 (=> res!2088149 e!3056805)))

(get-info :version)

(assert (=> b!4889454 (= res!2088149 (or (not ((_ is Cons!56393) rulesArg!165)) (not ((_ is Nil!56393) (t!365187 rulesArg!165)))))))

(declare-fun lt!2003886 () List!56515)

(declare-fun isPrefix!4890 (List!56515 List!56515) Bool)

(assert (=> b!4889454 (isPrefix!4890 lt!2003886 lt!2003886)))

(declare-datatypes ((Unit!146378 0))(
  ( (Unit!146379) )
))
(declare-fun lt!2003882 () Unit!146378)

(declare-fun lemmaIsPrefixRefl!3287 (List!56515 List!56515) Unit!146378)

(assert (=> b!4889454 (= lt!2003882 (lemmaIsPrefixRefl!3287 lt!2003886 lt!2003886))))

(declare-fun input!1236 () BalanceConc!28906)

(assert (=> b!4889454 (= lt!2003886 (list!17712 input!1236))))

(declare-fun b!4889455 () Bool)

(declare-fun e!3056798 () Bool)

(assert (=> b!4889455 (= e!3056798 e!3056800)))

(declare-fun res!2088151 () Bool)

(assert (=> b!4889455 (=> (not res!2088151) (not e!3056800))))

(declare-fun e!3056794 () Bool)

(assert (=> b!4889455 (= res!2088151 e!3056794)))

(declare-fun res!2088156 () Bool)

(assert (=> b!4889455 (=> res!2088156 e!3056794)))

(assert (=> b!4889455 (= res!2088156 lt!2003880)))

(declare-fun lt!2003884 () Bool)

(assert (=> b!4889455 (= lt!2003880 (not lt!2003884))))

(declare-fun b!4889456 () Bool)

(assert (=> b!4889456 (= e!3056796 e!3056795)))

(declare-fun res!2088150 () Bool)

(assert (=> b!4889456 (=> (not res!2088150) (not e!3056795))))

(assert (=> b!4889456 (= res!2088150 (= (_1!33509 lt!2003885) (_1!33510 lt!2003883)))))

(declare-datatypes ((LexerInterface!7762 0))(
  ( (LexerInterfaceExt!7759 (__x!34254 Int)) (Lexer!7760) )
))
(declare-fun thiss!14805 () LexerInterface!7762)

(declare-datatypes ((Option!14017 0))(
  ( (None!14016) (Some!14016 (v!49966 tuple2!60414)) )
))
(declare-fun get!19468 (Option!14017) tuple2!60414)

(declare-fun maxPrefix!4601 (LexerInterface!7762 List!56517 List!56515) Option!14017)

(assert (=> b!4889456 (= lt!2003883 (get!19468 (maxPrefix!4601 thiss!14805 rulesArg!165 lt!2003886)))))

(declare-datatypes ((Option!14018 0))(
  ( (None!14017) (Some!14017 (v!49967 tuple2!60412)) )
))
(declare-fun lt!2003881 () Option!14018)

(declare-fun get!19469 (Option!14018) tuple2!60412)

(assert (=> b!4889456 (= lt!2003885 (get!19469 lt!2003881))))

(declare-fun b!4889457 () Bool)

(declare-fun res!2088157 () Bool)

(assert (=> b!4889457 (=> (not res!2088157) (not e!3056802))))

(declare-fun isEmpty!30236 (List!56517) Bool)

(assert (=> b!4889457 (= res!2088157 (not (isEmpty!30236 rulesArg!165)))))

(declare-fun b!4889458 () Bool)

(declare-fun e!3056806 () Bool)

(declare-fun tp!1376341 () Bool)

(assert (=> b!4889458 (= e!3056806 (and e!3056804 tp!1376341))))

(declare-fun b!4889459 () Bool)

(assert (=> b!4889459 (= e!3056805 e!3056798)))

(declare-fun res!2088148 () Bool)

(assert (=> b!4889459 (=> (not res!2088148) (not e!3056798))))

(declare-fun lt!2003879 () Option!14017)

(declare-fun isDefined!11030 (Option!14017) Bool)

(assert (=> b!4889459 (= res!2088148 (= lt!2003884 (isDefined!11030 lt!2003879)))))

(declare-fun isDefined!11031 (Option!14018) Bool)

(assert (=> b!4889459 (= lt!2003884 (isDefined!11031 lt!2003881))))

(declare-fun maxPrefixZipper!671 (LexerInterface!7762 List!56517 List!56515) Option!14017)

(assert (=> b!4889459 (= lt!2003879 (maxPrefixZipper!671 thiss!14805 rulesArg!165 lt!2003886))))

(declare-fun maxPrefixOneRuleZipperSequence!680 (LexerInterface!7762 Rule!16140 BalanceConc!28906) Option!14018)

(assert (=> b!4889459 (= lt!2003881 (maxPrefixOneRuleZipperSequence!680 thiss!14805 (h!62841 rulesArg!165) input!1236))))

(declare-fun b!4889460 () Bool)

(declare-fun res!2088153 () Bool)

(assert (=> b!4889460 (=> (not res!2088153) (not e!3056802))))

(declare-fun rulesValidInductive!3149 (LexerInterface!7762 List!56517) Bool)

(assert (=> b!4889460 (= res!2088153 (rulesValidInductive!3149 thiss!14805 rulesArg!165))))

(assert (=> b!4889461 (= e!3056799 (and tp!1376343 tp!1376344))))

(declare-fun res!2088152 () Bool)

(assert (=> start!511848 (=> (not res!2088152) (not e!3056802))))

(assert (=> start!511848 (= res!2088152 ((_ is Lexer!7760) thiss!14805))))

(assert (=> start!511848 e!3056802))

(assert (=> start!511848 true))

(assert (=> start!511848 e!3056806))

(declare-fun e!3056801 () Bool)

(declare-fun inv!72649 (BalanceConc!28906) Bool)

(assert (=> start!511848 (and (inv!72649 input!1236) e!3056801)))

(declare-fun b!4889462 () Bool)

(assert (=> b!4889462 (= e!3056794 e!3056803)))

(declare-fun res!2088154 () Bool)

(assert (=> b!4889462 (=> (not res!2088154) (not e!3056803))))

(assert (=> b!4889462 (= res!2088154 (= (_1!33509 lt!2003887) (_1!33510 lt!2003878)))))

(assert (=> b!4889462 (= lt!2003878 (get!19468 lt!2003879))))

(assert (=> b!4889462 (= lt!2003887 (get!19469 lt!2003881))))

(declare-fun b!4889463 () Bool)

(declare-fun tp!1376345 () Bool)

(declare-fun inv!72650 (Conc!14738) Bool)

(assert (=> b!4889463 (= e!3056801 (and (inv!72650 (c!830999 input!1236)) tp!1376345))))

(assert (= (and start!511848 res!2088152) b!4889460))

(assert (= (and b!4889460 res!2088153) b!4889457))

(assert (= (and b!4889457 res!2088157) b!4889454))

(assert (= (and b!4889454 (not res!2088149)) b!4889459))

(assert (= (and b!4889459 res!2088148) b!4889455))

(assert (= (and b!4889455 (not res!2088156)) b!4889462))

(assert (= (and b!4889462 res!2088154) b!4889451))

(assert (= (and b!4889455 res!2088151) b!4889453))

(assert (= (and b!4889453 (not res!2088155)) b!4889456))

(assert (= (and b!4889456 res!2088150) b!4889450))

(assert (= b!4889452 b!4889461))

(assert (= b!4889458 b!4889452))

(assert (= (and start!511848 ((_ is Cons!56393) rulesArg!165)) b!4889458))

(assert (= start!511848 b!4889463))

(declare-fun m!5892820 () Bool)

(assert (=> b!4889460 m!5892820))

(declare-fun m!5892822 () Bool)

(assert (=> b!4889463 m!5892822))

(declare-fun m!5892824 () Bool)

(assert (=> b!4889459 m!5892824))

(declare-fun m!5892826 () Bool)

(assert (=> b!4889459 m!5892826))

(declare-fun m!5892828 () Bool)

(assert (=> b!4889459 m!5892828))

(declare-fun m!5892830 () Bool)

(assert (=> b!4889459 m!5892830))

(declare-fun m!5892832 () Bool)

(assert (=> b!4889457 m!5892832))

(declare-fun m!5892834 () Bool)

(assert (=> b!4889454 m!5892834))

(declare-fun m!5892836 () Bool)

(assert (=> b!4889454 m!5892836))

(declare-fun m!5892838 () Bool)

(assert (=> b!4889454 m!5892838))

(declare-fun m!5892840 () Bool)

(assert (=> b!4889451 m!5892840))

(declare-fun m!5892842 () Bool)

(assert (=> b!4889462 m!5892842))

(declare-fun m!5892844 () Bool)

(assert (=> b!4889462 m!5892844))

(declare-fun m!5892846 () Bool)

(assert (=> b!4889456 m!5892846))

(assert (=> b!4889456 m!5892846))

(declare-fun m!5892848 () Bool)

(assert (=> b!4889456 m!5892848))

(assert (=> b!4889456 m!5892844))

(declare-fun m!5892850 () Bool)

(assert (=> b!4889450 m!5892850))

(declare-fun m!5892852 () Bool)

(assert (=> start!511848 m!5892852))

(declare-fun m!5892854 () Bool)

(assert (=> b!4889452 m!5892854))

(declare-fun m!5892856 () Bool)

(assert (=> b!4889452 m!5892856))

(check-sat (not b!4889451) (not b!4889462) (not b!4889452) (not b!4889454) (not b!4889463) (not b!4889459) (not b_next!132291) (not b_next!132289) (not b!4889456) b_and!344349 (not b!4889460) b_and!344347 (not b!4889457) (not b!4889458) (not start!511848) (not b!4889450))
(check-sat b_and!344349 b_and!344347 (not b_next!132289) (not b_next!132291))
(get-model)

(declare-fun d!1570070 () Bool)

(declare-fun isEmpty!30241 (Option!14017) Bool)

(assert (=> d!1570070 (= (isDefined!11030 lt!2003879) (not (isEmpty!30241 lt!2003879)))))

(declare-fun bs!1175722 () Bool)

(assert (= bs!1175722 d!1570070))

(declare-fun m!5892876 () Bool)

(assert (=> bs!1175722 m!5892876))

(assert (=> b!4889459 d!1570070))

(declare-fun d!1570072 () Bool)

(declare-fun isEmpty!30242 (Option!14018) Bool)

(assert (=> d!1570072 (= (isDefined!11031 lt!2003881) (not (isEmpty!30242 lt!2003881)))))

(declare-fun bs!1175723 () Bool)

(assert (= bs!1175723 d!1570072))

(declare-fun m!5892878 () Bool)

(assert (=> bs!1175723 m!5892878))

(assert (=> b!4889459 d!1570072))

(declare-fun lt!2003909 () Option!14017)

(declare-fun d!1570074 () Bool)

(assert (=> d!1570074 (= lt!2003909 (maxPrefix!4601 thiss!14805 rulesArg!165 lt!2003886))))

(declare-fun e!3056828 () Option!14017)

(assert (=> d!1570074 (= lt!2003909 e!3056828)))

(declare-fun c!831006 () Bool)

(assert (=> d!1570074 (= c!831006 (and ((_ is Cons!56393) rulesArg!165) ((_ is Nil!56393) (t!365187 rulesArg!165))))))

(declare-fun lt!2003910 () Unit!146378)

(declare-fun lt!2003907 () Unit!146378)

(assert (=> d!1570074 (= lt!2003910 lt!2003907)))

(assert (=> d!1570074 (isPrefix!4890 lt!2003886 lt!2003886)))

(assert (=> d!1570074 (= lt!2003907 (lemmaIsPrefixRefl!3287 lt!2003886 lt!2003886))))

(assert (=> d!1570074 (rulesValidInductive!3149 thiss!14805 rulesArg!165)))

(assert (=> d!1570074 (= (maxPrefixZipper!671 thiss!14805 rulesArg!165 lt!2003886) lt!2003909)))

(declare-fun call!339089 () Option!14017)

(declare-fun bm!339084 () Bool)

(declare-fun maxPrefixOneRuleZipper!256 (LexerInterface!7762 Rule!16140 List!56515) Option!14017)

(assert (=> bm!339084 (= call!339089 (maxPrefixOneRuleZipper!256 thiss!14805 (h!62841 rulesArg!165) lt!2003886))))

(declare-fun b!4889493 () Bool)

(assert (=> b!4889493 (= e!3056828 call!339089)))

(declare-fun b!4889494 () Bool)

(declare-fun lt!2003908 () Option!14017)

(declare-fun lt!2003906 () Option!14017)

(assert (=> b!4889494 (= e!3056828 (ite (and ((_ is None!14016) lt!2003908) ((_ is None!14016) lt!2003906)) None!14016 (ite ((_ is None!14016) lt!2003906) lt!2003908 (ite ((_ is None!14016) lt!2003908) lt!2003906 (ite (>= (size!37120 (_1!33510 (v!49966 lt!2003908))) (size!37120 (_1!33510 (v!49966 lt!2003906)))) lt!2003908 lt!2003906)))))))

(assert (=> b!4889494 (= lt!2003908 call!339089)))

(assert (=> b!4889494 (= lt!2003906 (maxPrefixZipper!671 thiss!14805 (t!365187 rulesArg!165) lt!2003886))))

(assert (= (and d!1570074 c!831006) b!4889493))

(assert (= (and d!1570074 (not c!831006)) b!4889494))

(assert (= (or b!4889493 b!4889494) bm!339084))

(assert (=> d!1570074 m!5892846))

(assert (=> d!1570074 m!5892834))

(assert (=> d!1570074 m!5892836))

(assert (=> d!1570074 m!5892820))

(declare-fun m!5892880 () Bool)

(assert (=> bm!339084 m!5892880))

(declare-fun m!5892882 () Bool)

(assert (=> b!4889494 m!5892882))

(assert (=> b!4889459 d!1570074))

(declare-fun b!4889622 () Bool)

(declare-fun e!3056908 () Bool)

(assert (=> b!4889622 (= e!3056908 true)))

(declare-fun b!4889621 () Bool)

(declare-fun e!3056907 () Bool)

(assert (=> b!4889621 (= e!3056907 e!3056908)))

(declare-fun b!4889611 () Bool)

(assert (=> b!4889611 e!3056907))

(assert (= b!4889621 b!4889622))

(assert (= b!4889611 b!4889621))

(declare-fun lambda!243923 () Int)

(declare-fun order!25441 () Int)

(declare-fun order!25443 () Int)

(declare-fun dynLambda!22598 (Int Int) Int)

(declare-fun dynLambda!22599 (Int Int) Int)

(assert (=> b!4889622 (< (dynLambda!22598 order!25441 (toValue!11057 (transformation!8170 (h!62841 rulesArg!165)))) (dynLambda!22599 order!25443 lambda!243923))))

(declare-fun order!25445 () Int)

(declare-fun dynLambda!22600 (Int Int) Int)

(assert (=> b!4889622 (< (dynLambda!22600 order!25445 (toChars!10916 (transformation!8170 (h!62841 rulesArg!165)))) (dynLambda!22599 order!25443 lambda!243923))))

(declare-fun d!1570076 () Bool)

(declare-fun e!3056901 () Bool)

(assert (=> d!1570076 e!3056901))

(declare-fun res!2088236 () Bool)

(assert (=> d!1570076 (=> (not res!2088236) (not e!3056901))))

(declare-fun lt!2003994 () Option!14018)

(declare-fun maxPrefixOneRule!3525 (LexerInterface!7762 Rule!16140 List!56515) Option!14017)

(assert (=> d!1570076 (= res!2088236 (= (isDefined!11031 lt!2003994) (isDefined!11030 (maxPrefixOneRule!3525 thiss!14805 (h!62841 rulesArg!165) (list!17712 input!1236)))))))

(declare-fun e!3056899 () Option!14018)

(assert (=> d!1570076 (= lt!2003994 e!3056899)))

(declare-fun c!831018 () Bool)

(declare-datatypes ((tuple2!60420 0))(
  ( (tuple2!60421 (_1!33513 BalanceConc!28906) (_2!33513 BalanceConc!28906)) )
))
(declare-fun lt!2003998 () tuple2!60420)

(declare-fun isEmpty!30243 (BalanceConc!28906) Bool)

(assert (=> d!1570076 (= c!831018 (isEmpty!30243 (_1!33513 lt!2003998)))))

(declare-fun findLongestMatchWithZipperSequence!264 (Regex!13245 BalanceConc!28906) tuple2!60420)

(assert (=> d!1570076 (= lt!2003998 (findLongestMatchWithZipperSequence!264 (regex!8170 (h!62841 rulesArg!165)) input!1236))))

(declare-fun ruleValid!3668 (LexerInterface!7762 Rule!16140) Bool)

(assert (=> d!1570076 (ruleValid!3668 thiss!14805 (h!62841 rulesArg!165))))

(assert (=> d!1570076 (= (maxPrefixOneRuleZipperSequence!680 thiss!14805 (h!62841 rulesArg!165) input!1236) lt!2003994)))

(declare-fun b!4889609 () Bool)

(declare-fun e!3056900 () Bool)

(assert (=> b!4889609 (= e!3056901 e!3056900)))

(declare-fun res!2088234 () Bool)

(assert (=> b!4889609 (=> res!2088234 e!3056900)))

(assert (=> b!4889609 (= res!2088234 (not (isDefined!11031 lt!2003994)))))

(declare-fun b!4889610 () Bool)

(assert (=> b!4889610 (= e!3056899 None!14017)))

(declare-fun apply!13536 (TokenValueInjection!16268 BalanceConc!28906) TokenValue!8480)

(declare-fun size!37123 (BalanceConc!28906) Int)

(assert (=> b!4889611 (= e!3056899 (Some!14017 (tuple2!60413 (Token!14905 (apply!13536 (transformation!8170 (h!62841 rulesArg!165)) (_1!33513 lt!2003998)) (h!62841 rulesArg!165) (size!37123 (_1!33513 lt!2003998)) (list!17712 (_1!33513 lt!2003998))) (_2!33513 lt!2003998))))))

(declare-fun lt!2003996 () List!56515)

(assert (=> b!4889611 (= lt!2003996 (list!17712 input!1236))))

(declare-fun lt!2003997 () Unit!146378)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1712 (Regex!13245 List!56515) Unit!146378)

(assert (=> b!4889611 (= lt!2003997 (longestMatchIsAcceptedByMatchOrIsEmpty!1712 (regex!8170 (h!62841 rulesArg!165)) lt!2003996))))

(declare-fun res!2088233 () Bool)

(declare-fun isEmpty!30244 (List!56515) Bool)

(declare-datatypes ((tuple2!60422 0))(
  ( (tuple2!60423 (_1!33514 List!56515) (_2!33514 List!56515)) )
))
(declare-fun findLongestMatchInner!1749 (Regex!13245 List!56515 Int List!56515 List!56515 Int) tuple2!60422)

(declare-fun size!37124 (List!56515) Int)

(assert (=> b!4889611 (= res!2088233 (isEmpty!30244 (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003996 lt!2003996 (size!37124 lt!2003996)))))))

(declare-fun e!3056898 () Bool)

(assert (=> b!4889611 (=> res!2088233 e!3056898)))

(assert (=> b!4889611 e!3056898))

(declare-fun lt!2003993 () Unit!146378)

(assert (=> b!4889611 (= lt!2003993 lt!2003997)))

(declare-fun lt!2003995 () Unit!146378)

(declare-fun lemmaInv!1232 (TokenValueInjection!16268) Unit!146378)

(assert (=> b!4889611 (= lt!2003995 (lemmaInv!1232 (transformation!8170 (h!62841 rulesArg!165))))))

(declare-fun lt!2003999 () Unit!146378)

(declare-fun ForallOf!1129 (Int BalanceConc!28906) Unit!146378)

(assert (=> b!4889611 (= lt!2003999 (ForallOf!1129 lambda!243923 (_1!33513 lt!2003998)))))

(declare-fun lt!2004000 () Unit!146378)

(declare-fun seqFromList!5932 (List!56515) BalanceConc!28906)

(assert (=> b!4889611 (= lt!2004000 (ForallOf!1129 lambda!243923 (seqFromList!5932 (list!17712 (_1!33513 lt!2003998)))))))

(declare-fun lt!2004001 () Option!14018)

(assert (=> b!4889611 (= lt!2004001 (Some!14017 (tuple2!60413 (Token!14905 (apply!13536 (transformation!8170 (h!62841 rulesArg!165)) (_1!33513 lt!2003998)) (h!62841 rulesArg!165) (size!37123 (_1!33513 lt!2003998)) (list!17712 (_1!33513 lt!2003998))) (_2!33513 lt!2003998))))))

(declare-fun lt!2003992 () Unit!146378)

(declare-fun lemmaEqSameImage!1086 (TokenValueInjection!16268 BalanceConc!28906 BalanceConc!28906) Unit!146378)

(assert (=> b!4889611 (= lt!2003992 (lemmaEqSameImage!1086 (transformation!8170 (h!62841 rulesArg!165)) (_1!33513 lt!2003998) (seqFromList!5932 (list!17712 (_1!33513 lt!2003998)))))))

(declare-fun b!4889612 () Bool)

(declare-fun matchR!6526 (Regex!13245 List!56515) Bool)

(assert (=> b!4889612 (= e!3056898 (matchR!6526 (regex!8170 (h!62841 rulesArg!165)) (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003996 lt!2003996 (size!37124 lt!2003996)))))))

(declare-fun b!4889613 () Bool)

(declare-fun e!3056902 () Bool)

(assert (=> b!4889613 (= e!3056900 e!3056902)))

(declare-fun res!2088235 () Bool)

(assert (=> b!4889613 (=> (not res!2088235) (not e!3056902))))

(assert (=> b!4889613 (= res!2088235 (= (_1!33509 (get!19469 lt!2003994)) (_1!33510 (get!19468 (maxPrefixOneRule!3525 thiss!14805 (h!62841 rulesArg!165) (list!17712 input!1236))))))))

(declare-fun b!4889614 () Bool)

(assert (=> b!4889614 (= e!3056902 (= (list!17712 (_2!33509 (get!19469 lt!2003994))) (_2!33510 (get!19468 (maxPrefixOneRule!3525 thiss!14805 (h!62841 rulesArg!165) (list!17712 input!1236))))))))

(assert (= (and d!1570076 c!831018) b!4889610))

(assert (= (and d!1570076 (not c!831018)) b!4889611))

(assert (= (and b!4889611 (not res!2088233)) b!4889612))

(assert (= (and d!1570076 res!2088236) b!4889609))

(assert (= (and b!4889609 (not res!2088234)) b!4889613))

(assert (= (and b!4889613 res!2088235) b!4889614))

(declare-fun m!5892986 () Bool)

(assert (=> b!4889613 m!5892986))

(assert (=> b!4889613 m!5892838))

(assert (=> b!4889613 m!5892838))

(declare-fun m!5892988 () Bool)

(assert (=> b!4889613 m!5892988))

(assert (=> b!4889613 m!5892988))

(declare-fun m!5892990 () Bool)

(assert (=> b!4889613 m!5892990))

(declare-fun m!5892992 () Bool)

(assert (=> b!4889611 m!5892992))

(declare-fun m!5892994 () Bool)

(assert (=> b!4889611 m!5892994))

(assert (=> b!4889611 m!5892994))

(assert (=> b!4889611 m!5892992))

(declare-fun m!5892996 () Bool)

(assert (=> b!4889611 m!5892996))

(declare-fun m!5892998 () Bool)

(assert (=> b!4889611 m!5892998))

(declare-fun m!5893000 () Bool)

(assert (=> b!4889611 m!5893000))

(declare-fun m!5893002 () Bool)

(assert (=> b!4889611 m!5893002))

(declare-fun m!5893004 () Bool)

(assert (=> b!4889611 m!5893004))

(assert (=> b!4889611 m!5893002))

(declare-fun m!5893006 () Bool)

(assert (=> b!4889611 m!5893006))

(assert (=> b!4889611 m!5893006))

(declare-fun m!5893008 () Bool)

(assert (=> b!4889611 m!5893008))

(declare-fun m!5893010 () Bool)

(assert (=> b!4889611 m!5893010))

(assert (=> b!4889611 m!5892838))

(assert (=> b!4889611 m!5893006))

(declare-fun m!5893012 () Bool)

(assert (=> b!4889611 m!5893012))

(declare-fun m!5893014 () Bool)

(assert (=> b!4889611 m!5893014))

(declare-fun m!5893016 () Bool)

(assert (=> b!4889611 m!5893016))

(assert (=> b!4889614 m!5892988))

(assert (=> b!4889614 m!5892990))

(assert (=> b!4889614 m!5892986))

(assert (=> b!4889614 m!5892838))

(assert (=> b!4889614 m!5892838))

(assert (=> b!4889614 m!5892988))

(declare-fun m!5893018 () Bool)

(assert (=> b!4889614 m!5893018))

(declare-fun m!5893020 () Bool)

(assert (=> d!1570076 m!5893020))

(declare-fun m!5893022 () Bool)

(assert (=> d!1570076 m!5893022))

(declare-fun m!5893024 () Bool)

(assert (=> d!1570076 m!5893024))

(assert (=> d!1570076 m!5892838))

(assert (=> d!1570076 m!5892838))

(assert (=> d!1570076 m!5892988))

(assert (=> d!1570076 m!5892988))

(declare-fun m!5893026 () Bool)

(assert (=> d!1570076 m!5893026))

(declare-fun m!5893028 () Bool)

(assert (=> d!1570076 m!5893028))

(assert (=> b!4889609 m!5893024))

(assert (=> b!4889612 m!5892994))

(assert (=> b!4889612 m!5892992))

(assert (=> b!4889612 m!5892994))

(assert (=> b!4889612 m!5892992))

(assert (=> b!4889612 m!5892996))

(declare-fun m!5893030 () Bool)

(assert (=> b!4889612 m!5893030))

(assert (=> b!4889459 d!1570076))

(declare-fun d!1570104 () Bool)

(declare-fun isBalanced!4008 (Conc!14738) Bool)

(assert (=> d!1570104 (= (inv!72649 input!1236) (isBalanced!4008 (c!830999 input!1236)))))

(declare-fun bs!1175728 () Bool)

(assert (= bs!1175728 d!1570104))

(declare-fun m!5893032 () Bool)

(assert (=> bs!1175728 m!5893032))

(assert (=> start!511848 d!1570104))

(declare-fun d!1570106 () Bool)

(assert (=> d!1570106 (= (isEmpty!30236 rulesArg!165) ((_ is Nil!56393) rulesArg!165))))

(assert (=> b!4889457 d!1570106))

(declare-fun d!1570108 () Bool)

(assert (=> d!1570108 (= (get!19468 (maxPrefix!4601 thiss!14805 rulesArg!165 lt!2003886)) (v!49966 (maxPrefix!4601 thiss!14805 rulesArg!165 lt!2003886)))))

(assert (=> b!4889456 d!1570108))

(declare-fun b!4889641 () Bool)

(declare-fun e!3056915 () Bool)

(declare-fun e!3056916 () Bool)

(assert (=> b!4889641 (= e!3056915 e!3056916)))

(declare-fun res!2088257 () Bool)

(assert (=> b!4889641 (=> (not res!2088257) (not e!3056916))))

(declare-fun lt!2004015 () Option!14017)

(assert (=> b!4889641 (= res!2088257 (isDefined!11030 lt!2004015))))

(declare-fun bm!339093 () Bool)

(declare-fun call!339098 () Option!14017)

(assert (=> bm!339093 (= call!339098 (maxPrefixOneRule!3525 thiss!14805 (h!62841 rulesArg!165) lt!2003886))))

(declare-fun b!4889642 () Bool)

(declare-fun res!2088251 () Bool)

(assert (=> b!4889642 (=> (not res!2088251) (not e!3056916))))

(assert (=> b!4889642 (= res!2088251 (< (size!37124 (_2!33510 (get!19468 lt!2004015))) (size!37124 lt!2003886)))))

(declare-fun b!4889643 () Bool)

(declare-fun res!2088252 () Bool)

(assert (=> b!4889643 (=> (not res!2088252) (not e!3056916))))

(declare-fun ++!12241 (List!56515 List!56515) List!56515)

(declare-fun charsOf!5372 (Token!14904) BalanceConc!28906)

(assert (=> b!4889643 (= res!2088252 (= (++!12241 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015)))) (_2!33510 (get!19468 lt!2004015))) lt!2003886))))

(declare-fun b!4889644 () Bool)

(declare-fun res!2088255 () Bool)

(assert (=> b!4889644 (=> (not res!2088255) (not e!3056916))))

(assert (=> b!4889644 (= res!2088255 (= (value!261995 (_1!33510 (get!19468 lt!2004015))) (apply!13536 (transformation!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015)))) (seqFromList!5932 (originalCharacters!8483 (_1!33510 (get!19468 lt!2004015)))))))))

(declare-fun b!4889645 () Bool)

(declare-fun e!3056917 () Option!14017)

(declare-fun lt!2004012 () Option!14017)

(declare-fun lt!2004014 () Option!14017)

(assert (=> b!4889645 (= e!3056917 (ite (and ((_ is None!14016) lt!2004012) ((_ is None!14016) lt!2004014)) None!14016 (ite ((_ is None!14016) lt!2004014) lt!2004012 (ite ((_ is None!14016) lt!2004012) lt!2004014 (ite (>= (size!37120 (_1!33510 (v!49966 lt!2004012))) (size!37120 (_1!33510 (v!49966 lt!2004014)))) lt!2004012 lt!2004014)))))))

(assert (=> b!4889645 (= lt!2004012 call!339098)))

(assert (=> b!4889645 (= lt!2004014 (maxPrefix!4601 thiss!14805 (t!365187 rulesArg!165) lt!2003886))))

(declare-fun d!1570110 () Bool)

(assert (=> d!1570110 e!3056915))

(declare-fun res!2088253 () Bool)

(assert (=> d!1570110 (=> res!2088253 e!3056915)))

(assert (=> d!1570110 (= res!2088253 (isEmpty!30241 lt!2004015))))

(assert (=> d!1570110 (= lt!2004015 e!3056917)))

(declare-fun c!831021 () Bool)

(assert (=> d!1570110 (= c!831021 (and ((_ is Cons!56393) rulesArg!165) ((_ is Nil!56393) (t!365187 rulesArg!165))))))

(declare-fun lt!2004016 () Unit!146378)

(declare-fun lt!2004013 () Unit!146378)

(assert (=> d!1570110 (= lt!2004016 lt!2004013)))

(assert (=> d!1570110 (isPrefix!4890 lt!2003886 lt!2003886)))

(assert (=> d!1570110 (= lt!2004013 (lemmaIsPrefixRefl!3287 lt!2003886 lt!2003886))))

(assert (=> d!1570110 (rulesValidInductive!3149 thiss!14805 rulesArg!165)))

(assert (=> d!1570110 (= (maxPrefix!4601 thiss!14805 rulesArg!165 lt!2003886) lt!2004015)))

(declare-fun b!4889646 () Bool)

(assert (=> b!4889646 (= e!3056917 call!339098)))

(declare-fun b!4889647 () Bool)

(declare-fun res!2088254 () Bool)

(assert (=> b!4889647 (=> (not res!2088254) (not e!3056916))))

(assert (=> b!4889647 (= res!2088254 (matchR!6526 (regex!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015)))) (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015))))))))

(declare-fun b!4889648 () Bool)

(declare-fun contains!19435 (List!56517 Rule!16140) Bool)

(assert (=> b!4889648 (= e!3056916 (contains!19435 rulesArg!165 (rule!11346 (_1!33510 (get!19468 lt!2004015)))))))

(declare-fun b!4889649 () Bool)

(declare-fun res!2088256 () Bool)

(assert (=> b!4889649 (=> (not res!2088256) (not e!3056916))))

(assert (=> b!4889649 (= res!2088256 (= (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015)))) (originalCharacters!8483 (_1!33510 (get!19468 lt!2004015)))))))

(assert (= (and d!1570110 c!831021) b!4889646))

(assert (= (and d!1570110 (not c!831021)) b!4889645))

(assert (= (or b!4889646 b!4889645) bm!339093))

(assert (= (and d!1570110 (not res!2088253)) b!4889641))

(assert (= (and b!4889641 res!2088257) b!4889649))

(assert (= (and b!4889649 res!2088256) b!4889642))

(assert (= (and b!4889642 res!2088251) b!4889643))

(assert (= (and b!4889643 res!2088252) b!4889644))

(assert (= (and b!4889644 res!2088255) b!4889647))

(assert (= (and b!4889647 res!2088254) b!4889648))

(declare-fun m!5893034 () Bool)

(assert (=> b!4889645 m!5893034))

(declare-fun m!5893036 () Bool)

(assert (=> b!4889644 m!5893036))

(declare-fun m!5893038 () Bool)

(assert (=> b!4889644 m!5893038))

(assert (=> b!4889644 m!5893038))

(declare-fun m!5893040 () Bool)

(assert (=> b!4889644 m!5893040))

(assert (=> b!4889643 m!5893036))

(declare-fun m!5893042 () Bool)

(assert (=> b!4889643 m!5893042))

(assert (=> b!4889643 m!5893042))

(declare-fun m!5893044 () Bool)

(assert (=> b!4889643 m!5893044))

(assert (=> b!4889643 m!5893044))

(declare-fun m!5893046 () Bool)

(assert (=> b!4889643 m!5893046))

(assert (=> b!4889648 m!5893036))

(declare-fun m!5893048 () Bool)

(assert (=> b!4889648 m!5893048))

(declare-fun m!5893050 () Bool)

(assert (=> bm!339093 m!5893050))

(declare-fun m!5893052 () Bool)

(assert (=> d!1570110 m!5893052))

(assert (=> d!1570110 m!5892834))

(assert (=> d!1570110 m!5892836))

(assert (=> d!1570110 m!5892820))

(assert (=> b!4889649 m!5893036))

(assert (=> b!4889649 m!5893042))

(assert (=> b!4889649 m!5893042))

(assert (=> b!4889649 m!5893044))

(assert (=> b!4889647 m!5893036))

(assert (=> b!4889647 m!5893042))

(assert (=> b!4889647 m!5893042))

(assert (=> b!4889647 m!5893044))

(assert (=> b!4889647 m!5893044))

(declare-fun m!5893054 () Bool)

(assert (=> b!4889647 m!5893054))

(declare-fun m!5893056 () Bool)

(assert (=> b!4889641 m!5893056))

(assert (=> b!4889642 m!5893036))

(declare-fun m!5893058 () Bool)

(assert (=> b!4889642 m!5893058))

(declare-fun m!5893060 () Bool)

(assert (=> b!4889642 m!5893060))

(assert (=> b!4889456 d!1570110))

(declare-fun d!1570112 () Bool)

(assert (=> d!1570112 (= (get!19469 lt!2003881) (v!49967 lt!2003881))))

(assert (=> b!4889456 d!1570112))

(declare-fun d!1570114 () Bool)

(declare-fun c!831024 () Bool)

(assert (=> d!1570114 (= c!831024 ((_ is Node!14738) (c!830999 input!1236)))))

(declare-fun e!3056922 () Bool)

(assert (=> d!1570114 (= (inv!72650 (c!830999 input!1236)) e!3056922)))

(declare-fun b!4889656 () Bool)

(declare-fun inv!72654 (Conc!14738) Bool)

(assert (=> b!4889656 (= e!3056922 (inv!72654 (c!830999 input!1236)))))

(declare-fun b!4889657 () Bool)

(declare-fun e!3056923 () Bool)

(assert (=> b!4889657 (= e!3056922 e!3056923)))

(declare-fun res!2088260 () Bool)

(assert (=> b!4889657 (= res!2088260 (not ((_ is Leaf!24540) (c!830999 input!1236))))))

(assert (=> b!4889657 (=> res!2088260 e!3056923)))

(declare-fun b!4889658 () Bool)

(declare-fun inv!72655 (Conc!14738) Bool)

(assert (=> b!4889658 (= e!3056923 (inv!72655 (c!830999 input!1236)))))

(assert (= (and d!1570114 c!831024) b!4889656))

(assert (= (and d!1570114 (not c!831024)) b!4889657))

(assert (= (and b!4889657 (not res!2088260)) b!4889658))

(declare-fun m!5893062 () Bool)

(assert (=> b!4889656 m!5893062))

(declare-fun m!5893064 () Bool)

(assert (=> b!4889658 m!5893064))

(assert (=> b!4889463 d!1570114))

(declare-fun d!1570116 () Bool)

(assert (=> d!1570116 (= (inv!72644 (tag!9034 (h!62841 rulesArg!165))) (= (mod (str.len (value!261994 (tag!9034 (h!62841 rulesArg!165)))) 2) 0))))

(assert (=> b!4889452 d!1570116))

(declare-fun d!1570118 () Bool)

(declare-fun res!2088263 () Bool)

(declare-fun e!3056926 () Bool)

(assert (=> d!1570118 (=> (not res!2088263) (not e!3056926))))

(declare-fun semiInverseModEq!3582 (Int Int) Bool)

(assert (=> d!1570118 (= res!2088263 (semiInverseModEq!3582 (toChars!10916 (transformation!8170 (h!62841 rulesArg!165))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165)))))))

(assert (=> d!1570118 (= (inv!72648 (transformation!8170 (h!62841 rulesArg!165))) e!3056926)))

(declare-fun b!4889661 () Bool)

(declare-fun equivClasses!3461 (Int Int) Bool)

(assert (=> b!4889661 (= e!3056926 (equivClasses!3461 (toChars!10916 (transformation!8170 (h!62841 rulesArg!165))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165)))))))

(assert (= (and d!1570118 res!2088263) b!4889661))

(declare-fun m!5893066 () Bool)

(assert (=> d!1570118 m!5893066))

(declare-fun m!5893068 () Bool)

(assert (=> b!4889661 m!5893068))

(assert (=> b!4889452 d!1570118))

(declare-fun b!4889673 () Bool)

(declare-fun e!3056933 () Bool)

(assert (=> b!4889673 (= e!3056933 (>= (size!37124 lt!2003886) (size!37124 lt!2003886)))))

(declare-fun b!4889672 () Bool)

(declare-fun e!3056934 () Bool)

(declare-fun tail!9597 (List!56515) List!56515)

(assert (=> b!4889672 (= e!3056934 (isPrefix!4890 (tail!9597 lt!2003886) (tail!9597 lt!2003886)))))

(declare-fun b!4889670 () Bool)

(declare-fun e!3056935 () Bool)

(assert (=> b!4889670 (= e!3056935 e!3056934)))

(declare-fun res!2088272 () Bool)

(assert (=> b!4889670 (=> (not res!2088272) (not e!3056934))))

(assert (=> b!4889670 (= res!2088272 (not ((_ is Nil!56391) lt!2003886)))))

(declare-fun d!1570120 () Bool)

(assert (=> d!1570120 e!3056933))

(declare-fun res!2088274 () Bool)

(assert (=> d!1570120 (=> res!2088274 e!3056933)))

(declare-fun lt!2004019 () Bool)

(assert (=> d!1570120 (= res!2088274 (not lt!2004019))))

(assert (=> d!1570120 (= lt!2004019 e!3056935)))

(declare-fun res!2088275 () Bool)

(assert (=> d!1570120 (=> res!2088275 e!3056935)))

(assert (=> d!1570120 (= res!2088275 ((_ is Nil!56391) lt!2003886))))

(assert (=> d!1570120 (= (isPrefix!4890 lt!2003886 lt!2003886) lt!2004019)))

(declare-fun b!4889671 () Bool)

(declare-fun res!2088273 () Bool)

(assert (=> b!4889671 (=> (not res!2088273) (not e!3056934))))

(declare-fun head!10451 (List!56515) C!26688)

(assert (=> b!4889671 (= res!2088273 (= (head!10451 lt!2003886) (head!10451 lt!2003886)))))

(assert (= (and d!1570120 (not res!2088275)) b!4889670))

(assert (= (and b!4889670 res!2088272) b!4889671))

(assert (= (and b!4889671 res!2088273) b!4889672))

(assert (= (and d!1570120 (not res!2088274)) b!4889673))

(assert (=> b!4889673 m!5893060))

(assert (=> b!4889673 m!5893060))

(declare-fun m!5893070 () Bool)

(assert (=> b!4889672 m!5893070))

(assert (=> b!4889672 m!5893070))

(assert (=> b!4889672 m!5893070))

(assert (=> b!4889672 m!5893070))

(declare-fun m!5893072 () Bool)

(assert (=> b!4889672 m!5893072))

(declare-fun m!5893074 () Bool)

(assert (=> b!4889671 m!5893074))

(assert (=> b!4889671 m!5893074))

(assert (=> b!4889454 d!1570120))

(declare-fun d!1570122 () Bool)

(assert (=> d!1570122 (isPrefix!4890 lt!2003886 lt!2003886)))

(declare-fun lt!2004022 () Unit!146378)

(declare-fun choose!35689 (List!56515 List!56515) Unit!146378)

(assert (=> d!1570122 (= lt!2004022 (choose!35689 lt!2003886 lt!2003886))))

(assert (=> d!1570122 (= (lemmaIsPrefixRefl!3287 lt!2003886 lt!2003886) lt!2004022)))

(declare-fun bs!1175729 () Bool)

(assert (= bs!1175729 d!1570122))

(assert (=> bs!1175729 m!5892834))

(declare-fun m!5893076 () Bool)

(assert (=> bs!1175729 m!5893076))

(assert (=> b!4889454 d!1570122))

(declare-fun d!1570124 () Bool)

(declare-fun list!17714 (Conc!14738) List!56515)

(assert (=> d!1570124 (= (list!17712 input!1236) (list!17714 (c!830999 input!1236)))))

(declare-fun bs!1175730 () Bool)

(assert (= bs!1175730 d!1570124))

(declare-fun m!5893078 () Bool)

(assert (=> bs!1175730 m!5893078))

(assert (=> b!4889454 d!1570124))

(declare-fun d!1570126 () Bool)

(assert (=> d!1570126 (= (list!17712 (_2!33509 lt!2003885)) (list!17714 (c!830999 (_2!33509 lt!2003885))))))

(declare-fun bs!1175731 () Bool)

(assert (= bs!1175731 d!1570126))

(declare-fun m!5893080 () Bool)

(assert (=> bs!1175731 m!5893080))

(assert (=> b!4889450 d!1570126))

(declare-fun d!1570128 () Bool)

(assert (=> d!1570128 true))

(declare-fun lt!2004025 () Bool)

(declare-fun lambda!243926 () Int)

(declare-fun forall!13086 (List!56517 Int) Bool)

(assert (=> d!1570128 (= lt!2004025 (forall!13086 rulesArg!165 lambda!243926))))

(declare-fun e!3056940 () Bool)

(assert (=> d!1570128 (= lt!2004025 e!3056940)))

(declare-fun res!2088280 () Bool)

(assert (=> d!1570128 (=> res!2088280 e!3056940)))

(assert (=> d!1570128 (= res!2088280 (not ((_ is Cons!56393) rulesArg!165)))))

(assert (=> d!1570128 (= (rulesValidInductive!3149 thiss!14805 rulesArg!165) lt!2004025)))

(declare-fun b!4889678 () Bool)

(declare-fun e!3056941 () Bool)

(assert (=> b!4889678 (= e!3056940 e!3056941)))

(declare-fun res!2088281 () Bool)

(assert (=> b!4889678 (=> (not res!2088281) (not e!3056941))))

(assert (=> b!4889678 (= res!2088281 (ruleValid!3668 thiss!14805 (h!62841 rulesArg!165)))))

(declare-fun b!4889679 () Bool)

(assert (=> b!4889679 (= e!3056941 (rulesValidInductive!3149 thiss!14805 (t!365187 rulesArg!165)))))

(assert (= (and d!1570128 (not res!2088280)) b!4889678))

(assert (= (and b!4889678 res!2088281) b!4889679))

(declare-fun m!5893082 () Bool)

(assert (=> d!1570128 m!5893082))

(assert (=> b!4889678 m!5893022))

(declare-fun m!5893084 () Bool)

(assert (=> b!4889679 m!5893084))

(assert (=> b!4889460 d!1570128))

(declare-fun d!1570130 () Bool)

(assert (=> d!1570130 (= (get!19468 lt!2003879) (v!49966 lt!2003879))))

(assert (=> b!4889462 d!1570130))

(assert (=> b!4889462 d!1570112))

(declare-fun d!1570132 () Bool)

(assert (=> d!1570132 (= (list!17712 (_2!33509 lt!2003887)) (list!17714 (c!830999 (_2!33509 lt!2003887))))))

(declare-fun bs!1175732 () Bool)

(assert (= bs!1175732 d!1570132))

(declare-fun m!5893086 () Bool)

(assert (=> bs!1175732 m!5893086))

(assert (=> b!4889451 d!1570132))

(declare-fun b!4889692 () Bool)

(declare-fun b_free!131507 () Bool)

(declare-fun b_next!132297 () Bool)

(assert (=> b!4889692 (= b_free!131507 (not b_next!132297))))

(declare-fun tp!1376390 () Bool)

(declare-fun b_and!344355 () Bool)

(assert (=> b!4889692 (= tp!1376390 b_and!344355)))

(declare-fun b_free!131509 () Bool)

(declare-fun b_next!132299 () Bool)

(assert (=> b!4889692 (= b_free!131509 (not b_next!132299))))

(declare-fun tp!1376392 () Bool)

(declare-fun b_and!344357 () Bool)

(assert (=> b!4889692 (= tp!1376392 b_and!344357)))

(declare-fun e!3056951 () Bool)

(assert (=> b!4889692 (= e!3056951 (and tp!1376390 tp!1376392))))

(declare-fun tp!1376391 () Bool)

(declare-fun e!3056953 () Bool)

(declare-fun b!4889691 () Bool)

(assert (=> b!4889691 (= e!3056953 (and tp!1376391 (inv!72644 (tag!9034 (h!62841 (t!365187 rulesArg!165)))) (inv!72648 (transformation!8170 (h!62841 (t!365187 rulesArg!165)))) e!3056951))))

(declare-fun b!4889690 () Bool)

(declare-fun e!3056952 () Bool)

(declare-fun tp!1376393 () Bool)

(assert (=> b!4889690 (= e!3056952 (and e!3056953 tp!1376393))))

(assert (=> b!4889458 (= tp!1376341 e!3056952)))

(assert (= b!4889691 b!4889692))

(assert (= b!4889690 b!4889691))

(assert (= (and b!4889458 ((_ is Cons!56393) (t!365187 rulesArg!165))) b!4889690))

(declare-fun m!5893088 () Bool)

(assert (=> b!4889691 m!5893088))

(declare-fun m!5893090 () Bool)

(assert (=> b!4889691 m!5893090))

(declare-fun tp!1376400 () Bool)

(declare-fun e!3056958 () Bool)

(declare-fun tp!1376401 () Bool)

(declare-fun b!4889701 () Bool)

(assert (=> b!4889701 (= e!3056958 (and (inv!72650 (left!40961 (c!830999 input!1236))) tp!1376401 (inv!72650 (right!41291 (c!830999 input!1236))) tp!1376400))))

(declare-fun b!4889703 () Bool)

(declare-fun e!3056959 () Bool)

(declare-fun tp!1376402 () Bool)

(assert (=> b!4889703 (= e!3056959 tp!1376402)))

(declare-fun b!4889702 () Bool)

(declare-fun inv!72656 (IArray!29537) Bool)

(assert (=> b!4889702 (= e!3056958 (and (inv!72656 (xs!18054 (c!830999 input!1236))) e!3056959))))

(assert (=> b!4889463 (= tp!1376345 (and (inv!72650 (c!830999 input!1236)) e!3056958))))

(assert (= (and b!4889463 ((_ is Node!14738) (c!830999 input!1236))) b!4889701))

(assert (= b!4889702 b!4889703))

(assert (= (and b!4889463 ((_ is Leaf!24540) (c!830999 input!1236))) b!4889702))

(declare-fun m!5893092 () Bool)

(assert (=> b!4889701 m!5893092))

(declare-fun m!5893094 () Bool)

(assert (=> b!4889701 m!5893094))

(declare-fun m!5893096 () Bool)

(assert (=> b!4889702 m!5893096))

(assert (=> b!4889463 m!5892822))

(declare-fun e!3056962 () Bool)

(assert (=> b!4889452 (= tp!1376342 e!3056962)))

(declare-fun b!4889714 () Bool)

(declare-fun tp_is_empty!35771 () Bool)

(assert (=> b!4889714 (= e!3056962 tp_is_empty!35771)))

(declare-fun b!4889716 () Bool)

(declare-fun tp!1376414 () Bool)

(assert (=> b!4889716 (= e!3056962 tp!1376414)))

(declare-fun b!4889715 () Bool)

(declare-fun tp!1376417 () Bool)

(declare-fun tp!1376413 () Bool)

(assert (=> b!4889715 (= e!3056962 (and tp!1376417 tp!1376413))))

(declare-fun b!4889717 () Bool)

(declare-fun tp!1376416 () Bool)

(declare-fun tp!1376415 () Bool)

(assert (=> b!4889717 (= e!3056962 (and tp!1376416 tp!1376415))))

(assert (= (and b!4889452 ((_ is ElementMatch!13245) (regex!8170 (h!62841 rulesArg!165)))) b!4889714))

(assert (= (and b!4889452 ((_ is Concat!21726) (regex!8170 (h!62841 rulesArg!165)))) b!4889715))

(assert (= (and b!4889452 ((_ is Star!13245) (regex!8170 (h!62841 rulesArg!165)))) b!4889716))

(assert (= (and b!4889452 ((_ is Union!13245) (regex!8170 (h!62841 rulesArg!165)))) b!4889717))

(check-sat (not b_next!132297) (not b_next!132299) (not d!1570132) (not b!4889715) (not b!4889691) (not d!1570124) (not b!4889671) (not d!1570128) (not d!1570126) (not b!4889690) b_and!344355 (not bm!339093) (not d!1570122) (not b!4889613) (not d!1570076) (not b!4889658) (not b!4889641) (not b!4889678) (not d!1570070) (not b!4889463) (not d!1570110) (not b!4889494) tp_is_empty!35771 (not b!4889645) (not b!4889661) (not b_next!132291) (not b_next!132289) (not bm!339084) b_and!344357 (not b!4889673) (not b!4889614) (not b!4889656) (not b!4889701) (not b!4889703) b_and!344349 (not b!4889611) (not d!1570104) (not b!4889612) (not b!4889648) (not b!4889642) (not b!4889716) (not d!1570072) (not b!4889609) (not b!4889679) (not b!4889643) (not b!4889717) (not b!4889702) (not b!4889672) (not b!4889644) b_and!344347 (not b!4889647) (not b!4889649) (not d!1570074) (not d!1570118))
(check-sat b_and!344355 (not b_next!132297) (not b_next!132299) b_and!344357 b_and!344349 b_and!344347 (not b_next!132291) (not b_next!132289))
(get-model)

(assert (=> d!1570074 d!1570110))

(assert (=> d!1570074 d!1570120))

(assert (=> d!1570074 d!1570122))

(assert (=> d!1570074 d!1570128))

(declare-fun d!1570192 () Bool)

(declare-fun res!2088407 () Bool)

(declare-fun e!3057049 () Bool)

(assert (=> d!1570192 (=> res!2088407 e!3057049)))

(assert (=> d!1570192 (= res!2088407 (not ((_ is Node!14738) (c!830999 input!1236))))))

(assert (=> d!1570192 (= (isBalanced!4008 (c!830999 input!1236)) e!3057049)))

(declare-fun b!4889896 () Bool)

(declare-fun e!3057048 () Bool)

(declare-fun isEmpty!30246 (Conc!14738) Bool)

(assert (=> b!4889896 (= e!3057048 (not (isEmpty!30246 (right!41291 (c!830999 input!1236)))))))

(declare-fun b!4889897 () Bool)

(declare-fun res!2088412 () Bool)

(assert (=> b!4889897 (=> (not res!2088412) (not e!3057048))))

(assert (=> b!4889897 (= res!2088412 (not (isEmpty!30246 (left!40961 (c!830999 input!1236)))))))

(declare-fun b!4889898 () Bool)

(declare-fun res!2088410 () Bool)

(assert (=> b!4889898 (=> (not res!2088410) (not e!3057048))))

(assert (=> b!4889898 (= res!2088410 (isBalanced!4008 (left!40961 (c!830999 input!1236))))))

(declare-fun b!4889899 () Bool)

(declare-fun res!2088411 () Bool)

(assert (=> b!4889899 (=> (not res!2088411) (not e!3057048))))

(declare-fun height!1953 (Conc!14738) Int)

(assert (=> b!4889899 (= res!2088411 (<= (- (height!1953 (left!40961 (c!830999 input!1236))) (height!1953 (right!41291 (c!830999 input!1236)))) 1))))

(declare-fun b!4889900 () Bool)

(declare-fun res!2088408 () Bool)

(assert (=> b!4889900 (=> (not res!2088408) (not e!3057048))))

(assert (=> b!4889900 (= res!2088408 (isBalanced!4008 (right!41291 (c!830999 input!1236))))))

(declare-fun b!4889901 () Bool)

(assert (=> b!4889901 (= e!3057049 e!3057048)))

(declare-fun res!2088409 () Bool)

(assert (=> b!4889901 (=> (not res!2088409) (not e!3057048))))

(assert (=> b!4889901 (= res!2088409 (<= (- 1) (- (height!1953 (left!40961 (c!830999 input!1236))) (height!1953 (right!41291 (c!830999 input!1236))))))))

(assert (= (and d!1570192 (not res!2088407)) b!4889901))

(assert (= (and b!4889901 res!2088409) b!4889899))

(assert (= (and b!4889899 res!2088411) b!4889898))

(assert (= (and b!4889898 res!2088410) b!4889900))

(assert (= (and b!4889900 res!2088408) b!4889897))

(assert (= (and b!4889897 res!2088412) b!4889896))

(declare-fun m!5893290 () Bool)

(assert (=> b!4889898 m!5893290))

(declare-fun m!5893292 () Bool)

(assert (=> b!4889897 m!5893292))

(declare-fun m!5893294 () Bool)

(assert (=> b!4889899 m!5893294))

(declare-fun m!5893296 () Bool)

(assert (=> b!4889899 m!5893296))

(declare-fun m!5893298 () Bool)

(assert (=> b!4889900 m!5893298))

(declare-fun m!5893300 () Bool)

(assert (=> b!4889896 m!5893300))

(assert (=> b!4889901 m!5893294))

(assert (=> b!4889901 m!5893296))

(assert (=> d!1570104 d!1570192))

(declare-fun d!1570196 () Bool)

(assert (=> d!1570196 (= (get!19469 lt!2003994) (v!49967 lt!2003994))))

(assert (=> b!4889613 d!1570196))

(declare-fun d!1570198 () Bool)

(assert (=> d!1570198 (= (get!19468 (maxPrefixOneRule!3525 thiss!14805 (h!62841 rulesArg!165) (list!17712 input!1236))) (v!49966 (maxPrefixOneRule!3525 thiss!14805 (h!62841 rulesArg!165) (list!17712 input!1236))))))

(assert (=> b!4889613 d!1570198))

(declare-fun b!4889920 () Bool)

(declare-fun res!2088433 () Bool)

(declare-fun e!3057060 () Bool)

(assert (=> b!4889920 (=> (not res!2088433) (not e!3057060))))

(declare-fun lt!2004097 () Option!14017)

(assert (=> b!4889920 (= res!2088433 (= (value!261995 (_1!33510 (get!19468 lt!2004097))) (apply!13536 (transformation!8170 (rule!11346 (_1!33510 (get!19468 lt!2004097)))) (seqFromList!5932 (originalCharacters!8483 (_1!33510 (get!19468 lt!2004097)))))))))

(declare-fun b!4889921 () Bool)

(declare-fun e!3057058 () Option!14017)

(declare-fun lt!2004098 () tuple2!60422)

(assert (=> b!4889921 (= e!3057058 (Some!14016 (tuple2!60415 (Token!14905 (apply!13536 (transformation!8170 (h!62841 rulesArg!165)) (seqFromList!5932 (_1!33514 lt!2004098))) (h!62841 rulesArg!165) (size!37123 (seqFromList!5932 (_1!33514 lt!2004098))) (_1!33514 lt!2004098)) (_2!33514 lt!2004098))))))

(declare-fun lt!2004096 () Unit!146378)

(assert (=> b!4889921 (= lt!2004096 (longestMatchIsAcceptedByMatchOrIsEmpty!1712 (regex!8170 (h!62841 rulesArg!165)) (list!17712 input!1236)))))

(declare-fun res!2088429 () Bool)

(assert (=> b!4889921 (= res!2088429 (isEmpty!30244 (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) (list!17712 input!1236) (list!17712 input!1236) (size!37124 (list!17712 input!1236))))))))

(declare-fun e!3057061 () Bool)

(assert (=> b!4889921 (=> res!2088429 e!3057061)))

(assert (=> b!4889921 e!3057061))

(declare-fun lt!2004100 () Unit!146378)

(assert (=> b!4889921 (= lt!2004100 lt!2004096)))

(declare-fun lt!2004099 () Unit!146378)

(declare-fun lemmaSemiInverse!2562 (TokenValueInjection!16268 BalanceConc!28906) Unit!146378)

(assert (=> b!4889921 (= lt!2004099 (lemmaSemiInverse!2562 (transformation!8170 (h!62841 rulesArg!165)) (seqFromList!5932 (_1!33514 lt!2004098))))))

(declare-fun b!4889923 () Bool)

(declare-fun res!2088427 () Bool)

(assert (=> b!4889923 (=> (not res!2088427) (not e!3057060))))

(assert (=> b!4889923 (= res!2088427 (= (++!12241 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004097)))) (_2!33510 (get!19468 lt!2004097))) (list!17712 input!1236)))))

(declare-fun b!4889924 () Bool)

(declare-fun res!2088432 () Bool)

(assert (=> b!4889924 (=> (not res!2088432) (not e!3057060))))

(assert (=> b!4889924 (= res!2088432 (< (size!37124 (_2!33510 (get!19468 lt!2004097))) (size!37124 (list!17712 input!1236))))))

(declare-fun b!4889925 () Bool)

(declare-fun e!3057059 () Bool)

(assert (=> b!4889925 (= e!3057059 e!3057060)))

(declare-fun res!2088428 () Bool)

(assert (=> b!4889925 (=> (not res!2088428) (not e!3057060))))

(assert (=> b!4889925 (= res!2088428 (matchR!6526 (regex!8170 (h!62841 rulesArg!165)) (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004097))))))))

(declare-fun b!4889926 () Bool)

(assert (=> b!4889926 (= e!3057061 (matchR!6526 (regex!8170 (h!62841 rulesArg!165)) (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) (list!17712 input!1236) (list!17712 input!1236) (size!37124 (list!17712 input!1236))))))))

(declare-fun b!4889927 () Bool)

(assert (=> b!4889927 (= e!3057060 (= (size!37120 (_1!33510 (get!19468 lt!2004097))) (size!37124 (originalCharacters!8483 (_1!33510 (get!19468 lt!2004097))))))))

(declare-fun b!4889928 () Bool)

(declare-fun res!2088430 () Bool)

(assert (=> b!4889928 (=> (not res!2088430) (not e!3057060))))

(assert (=> b!4889928 (= res!2088430 (= (rule!11346 (_1!33510 (get!19468 lt!2004097))) (h!62841 rulesArg!165)))))

(declare-fun b!4889922 () Bool)

(assert (=> b!4889922 (= e!3057058 None!14016)))

(declare-fun d!1570200 () Bool)

(assert (=> d!1570200 e!3057059))

(declare-fun res!2088431 () Bool)

(assert (=> d!1570200 (=> res!2088431 e!3057059)))

(assert (=> d!1570200 (= res!2088431 (isEmpty!30241 lt!2004097))))

(assert (=> d!1570200 (= lt!2004097 e!3057058)))

(declare-fun c!831059 () Bool)

(assert (=> d!1570200 (= c!831059 (isEmpty!30244 (_1!33514 lt!2004098)))))

(declare-fun findLongestMatch!1645 (Regex!13245 List!56515) tuple2!60422)

(assert (=> d!1570200 (= lt!2004098 (findLongestMatch!1645 (regex!8170 (h!62841 rulesArg!165)) (list!17712 input!1236)))))

(assert (=> d!1570200 (ruleValid!3668 thiss!14805 (h!62841 rulesArg!165))))

(assert (=> d!1570200 (= (maxPrefixOneRule!3525 thiss!14805 (h!62841 rulesArg!165) (list!17712 input!1236)) lt!2004097)))

(assert (= (and d!1570200 c!831059) b!4889922))

(assert (= (and d!1570200 (not c!831059)) b!4889921))

(assert (= (and b!4889921 (not res!2088429)) b!4889926))

(assert (= (and d!1570200 (not res!2088431)) b!4889925))

(assert (= (and b!4889925 res!2088428) b!4889923))

(assert (= (and b!4889923 res!2088427) b!4889924))

(assert (= (and b!4889924 res!2088432) b!4889928))

(assert (= (and b!4889928 res!2088430) b!4889920))

(assert (= (and b!4889920 res!2088433) b!4889927))

(assert (=> b!4889921 m!5892994))

(declare-fun m!5893302 () Bool)

(assert (=> b!4889921 m!5893302))

(declare-fun m!5893304 () Bool)

(assert (=> b!4889921 m!5893304))

(assert (=> b!4889921 m!5893302))

(assert (=> b!4889921 m!5892994))

(assert (=> b!4889921 m!5892838))

(assert (=> b!4889921 m!5892838))

(declare-fun m!5893306 () Bool)

(assert (=> b!4889921 m!5893306))

(declare-fun m!5893308 () Bool)

(assert (=> b!4889921 m!5893308))

(assert (=> b!4889921 m!5892838))

(assert (=> b!4889921 m!5893306))

(assert (=> b!4889921 m!5893302))

(declare-fun m!5893310 () Bool)

(assert (=> b!4889921 m!5893310))

(assert (=> b!4889921 m!5892838))

(declare-fun m!5893312 () Bool)

(assert (=> b!4889921 m!5893312))

(assert (=> b!4889921 m!5893302))

(declare-fun m!5893314 () Bool)

(assert (=> b!4889921 m!5893314))

(declare-fun m!5893316 () Bool)

(assert (=> b!4889921 m!5893316))

(declare-fun m!5893318 () Bool)

(assert (=> b!4889920 m!5893318))

(declare-fun m!5893320 () Bool)

(assert (=> b!4889920 m!5893320))

(assert (=> b!4889920 m!5893320))

(declare-fun m!5893322 () Bool)

(assert (=> b!4889920 m!5893322))

(assert (=> b!4889928 m!5893318))

(assert (=> b!4889926 m!5892994))

(assert (=> b!4889926 m!5892838))

(assert (=> b!4889926 m!5893306))

(assert (=> b!4889926 m!5892994))

(assert (=> b!4889926 m!5892838))

(assert (=> b!4889926 m!5892838))

(assert (=> b!4889926 m!5893306))

(assert (=> b!4889926 m!5893308))

(declare-fun m!5893324 () Bool)

(assert (=> b!4889926 m!5893324))

(assert (=> b!4889924 m!5893318))

(declare-fun m!5893326 () Bool)

(assert (=> b!4889924 m!5893326))

(assert (=> b!4889924 m!5892838))

(assert (=> b!4889924 m!5893306))

(assert (=> b!4889925 m!5893318))

(declare-fun m!5893328 () Bool)

(assert (=> b!4889925 m!5893328))

(assert (=> b!4889925 m!5893328))

(declare-fun m!5893330 () Bool)

(assert (=> b!4889925 m!5893330))

(assert (=> b!4889925 m!5893330))

(declare-fun m!5893332 () Bool)

(assert (=> b!4889925 m!5893332))

(declare-fun m!5893334 () Bool)

(assert (=> d!1570200 m!5893334))

(declare-fun m!5893336 () Bool)

(assert (=> d!1570200 m!5893336))

(assert (=> d!1570200 m!5892838))

(declare-fun m!5893338 () Bool)

(assert (=> d!1570200 m!5893338))

(assert (=> d!1570200 m!5893022))

(assert (=> b!4889927 m!5893318))

(declare-fun m!5893340 () Bool)

(assert (=> b!4889927 m!5893340))

(assert (=> b!4889923 m!5893318))

(assert (=> b!4889923 m!5893328))

(assert (=> b!4889923 m!5893328))

(assert (=> b!4889923 m!5893330))

(assert (=> b!4889923 m!5893330))

(declare-fun m!5893342 () Bool)

(assert (=> b!4889923 m!5893342))

(assert (=> b!4889613 d!1570200))

(assert (=> b!4889613 d!1570124))

(declare-fun d!1570202 () Bool)

(declare-fun res!2088438 () Bool)

(declare-fun e!3057064 () Bool)

(assert (=> d!1570202 (=> (not res!2088438) (not e!3057064))))

(declare-fun validRegex!5880 (Regex!13245) Bool)

(assert (=> d!1570202 (= res!2088438 (validRegex!5880 (regex!8170 (h!62841 rulesArg!165))))))

(assert (=> d!1570202 (= (ruleValid!3668 thiss!14805 (h!62841 rulesArg!165)) e!3057064)))

(declare-fun b!4889933 () Bool)

(declare-fun res!2088439 () Bool)

(assert (=> b!4889933 (=> (not res!2088439) (not e!3057064))))

(declare-fun nullable!4553 (Regex!13245) Bool)

(assert (=> b!4889933 (= res!2088439 (not (nullable!4553 (regex!8170 (h!62841 rulesArg!165)))))))

(declare-fun b!4889934 () Bool)

(assert (=> b!4889934 (= e!3057064 (not (= (tag!9034 (h!62841 rulesArg!165)) (String!63843 ""))))))

(assert (= (and d!1570202 res!2088438) b!4889933))

(assert (= (and b!4889933 res!2088439) b!4889934))

(declare-fun m!5893344 () Bool)

(assert (=> d!1570202 m!5893344))

(declare-fun m!5893346 () Bool)

(assert (=> b!4889933 m!5893346))

(assert (=> b!4889678 d!1570202))

(declare-fun b!4889963 () Bool)

(declare-fun e!3057082 () Bool)

(declare-fun lt!2004103 () Bool)

(assert (=> b!4889963 (= e!3057082 (not lt!2004103))))

(declare-fun b!4889964 () Bool)

(declare-fun e!3057084 () Bool)

(declare-fun call!339106 () Bool)

(assert (=> b!4889964 (= e!3057084 (= lt!2004103 call!339106))))

(declare-fun b!4889965 () Bool)

(declare-fun res!2088463 () Bool)

(declare-fun e!3057085 () Bool)

(assert (=> b!4889965 (=> (not res!2088463) (not e!3057085))))

(assert (=> b!4889965 (= res!2088463 (not call!339106))))

(declare-fun b!4889966 () Bool)

(declare-fun e!3057081 () Bool)

(declare-fun derivativeStep!3875 (Regex!13245 C!26688) Regex!13245)

(assert (=> b!4889966 (= e!3057081 (matchR!6526 (derivativeStep!3875 (regex!8170 (h!62841 rulesArg!165)) (head!10451 (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003996 lt!2003996 (size!37124 lt!2003996))))) (tail!9597 (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003996 lt!2003996 (size!37124 lt!2003996))))))))

(declare-fun d!1570204 () Bool)

(assert (=> d!1570204 e!3057084))

(declare-fun c!831067 () Bool)

(assert (=> d!1570204 (= c!831067 ((_ is EmptyExpr!13245) (regex!8170 (h!62841 rulesArg!165))))))

(assert (=> d!1570204 (= lt!2004103 e!3057081)))

(declare-fun c!831066 () Bool)

(assert (=> d!1570204 (= c!831066 (isEmpty!30244 (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003996 lt!2003996 (size!37124 lt!2003996)))))))

(assert (=> d!1570204 (validRegex!5880 (regex!8170 (h!62841 rulesArg!165)))))

(assert (=> d!1570204 (= (matchR!6526 (regex!8170 (h!62841 rulesArg!165)) (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003996 lt!2003996 (size!37124 lt!2003996)))) lt!2004103)))

(declare-fun b!4889967 () Bool)

(assert (=> b!4889967 (= e!3057085 (= (head!10451 (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003996 lt!2003996 (size!37124 lt!2003996)))) (c!831000 (regex!8170 (h!62841 rulesArg!165)))))))

(declare-fun b!4889968 () Bool)

(declare-fun res!2088460 () Bool)

(declare-fun e!3057079 () Bool)

(assert (=> b!4889968 (=> res!2088460 e!3057079)))

(assert (=> b!4889968 (= res!2088460 (not (isEmpty!30244 (tail!9597 (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003996 lt!2003996 (size!37124 lt!2003996)))))))))

(declare-fun b!4889969 () Bool)

(declare-fun res!2088459 () Bool)

(declare-fun e!3057083 () Bool)

(assert (=> b!4889969 (=> res!2088459 e!3057083)))

(assert (=> b!4889969 (= res!2088459 (not ((_ is ElementMatch!13245) (regex!8170 (h!62841 rulesArg!165)))))))

(assert (=> b!4889969 (= e!3057082 e!3057083)))

(declare-fun b!4889970 () Bool)

(assert (=> b!4889970 (= e!3057079 (not (= (head!10451 (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003996 lt!2003996 (size!37124 lt!2003996)))) (c!831000 (regex!8170 (h!62841 rulesArg!165))))))))

(declare-fun b!4889971 () Bool)

(declare-fun res!2088462 () Bool)

(assert (=> b!4889971 (=> (not res!2088462) (not e!3057085))))

(assert (=> b!4889971 (= res!2088462 (isEmpty!30244 (tail!9597 (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003996 lt!2003996 (size!37124 lt!2003996))))))))

(declare-fun b!4889972 () Bool)

(assert (=> b!4889972 (= e!3057081 (nullable!4553 (regex!8170 (h!62841 rulesArg!165))))))

(declare-fun b!4889973 () Bool)

(declare-fun e!3057080 () Bool)

(assert (=> b!4889973 (= e!3057083 e!3057080)))

(declare-fun res!2088461 () Bool)

(assert (=> b!4889973 (=> (not res!2088461) (not e!3057080))))

(assert (=> b!4889973 (= res!2088461 (not lt!2004103))))

(declare-fun b!4889974 () Bool)

(assert (=> b!4889974 (= e!3057080 e!3057079)))

(declare-fun res!2088457 () Bool)

(assert (=> b!4889974 (=> res!2088457 e!3057079)))

(assert (=> b!4889974 (= res!2088457 call!339106)))

(declare-fun b!4889975 () Bool)

(declare-fun res!2088456 () Bool)

(assert (=> b!4889975 (=> res!2088456 e!3057083)))

(assert (=> b!4889975 (= res!2088456 e!3057085)))

(declare-fun res!2088458 () Bool)

(assert (=> b!4889975 (=> (not res!2088458) (not e!3057085))))

(assert (=> b!4889975 (= res!2088458 lt!2004103)))

(declare-fun bm!339101 () Bool)

(assert (=> bm!339101 (= call!339106 (isEmpty!30244 (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003996 lt!2003996 (size!37124 lt!2003996)))))))

(declare-fun b!4889976 () Bool)

(assert (=> b!4889976 (= e!3057084 e!3057082)))

(declare-fun c!831068 () Bool)

(assert (=> b!4889976 (= c!831068 ((_ is EmptyLang!13245) (regex!8170 (h!62841 rulesArg!165))))))

(assert (= (and d!1570204 c!831066) b!4889972))

(assert (= (and d!1570204 (not c!831066)) b!4889966))

(assert (= (and d!1570204 c!831067) b!4889964))

(assert (= (and d!1570204 (not c!831067)) b!4889976))

(assert (= (and b!4889976 c!831068) b!4889963))

(assert (= (and b!4889976 (not c!831068)) b!4889969))

(assert (= (and b!4889969 (not res!2088459)) b!4889975))

(assert (= (and b!4889975 res!2088458) b!4889965))

(assert (= (and b!4889965 res!2088463) b!4889971))

(assert (= (and b!4889971 res!2088462) b!4889967))

(assert (= (and b!4889975 (not res!2088456)) b!4889973))

(assert (= (and b!4889973 res!2088461) b!4889974))

(assert (= (and b!4889974 (not res!2088457)) b!4889968))

(assert (= (and b!4889968 (not res!2088460)) b!4889970))

(assert (= (or b!4889964 b!4889965 b!4889974) bm!339101))

(declare-fun m!5893348 () Bool)

(assert (=> b!4889966 m!5893348))

(assert (=> b!4889966 m!5893348))

(declare-fun m!5893350 () Bool)

(assert (=> b!4889966 m!5893350))

(declare-fun m!5893352 () Bool)

(assert (=> b!4889966 m!5893352))

(assert (=> b!4889966 m!5893350))

(assert (=> b!4889966 m!5893352))

(declare-fun m!5893354 () Bool)

(assert (=> b!4889966 m!5893354))

(assert (=> bm!339101 m!5893014))

(assert (=> b!4889972 m!5893346))

(assert (=> b!4889970 m!5893348))

(assert (=> d!1570204 m!5893014))

(assert (=> d!1570204 m!5893344))

(assert (=> b!4889971 m!5893352))

(assert (=> b!4889971 m!5893352))

(declare-fun m!5893356 () Bool)

(assert (=> b!4889971 m!5893356))

(assert (=> b!4889967 m!5893348))

(assert (=> b!4889968 m!5893352))

(assert (=> b!4889968 m!5893352))

(assert (=> b!4889968 m!5893356))

(assert (=> b!4889612 d!1570204))

(declare-fun bm!339142 () Bool)

(declare-fun call!339151 () List!56515)

(assert (=> bm!339142 (= call!339151 (tail!9597 lt!2003996))))

(declare-fun b!4890103 () Bool)

(declare-fun e!3057170 () tuple2!60422)

(assert (=> b!4890103 (= e!3057170 (tuple2!60423 Nil!56391 Nil!56391))))

(declare-fun b!4890104 () Bool)

(declare-fun e!3057171 () tuple2!60422)

(declare-fun call!339147 () tuple2!60422)

(assert (=> b!4890104 (= e!3057171 call!339147)))

(declare-fun bm!339143 () Bool)

(declare-fun call!339154 () Bool)

(assert (=> bm!339143 (= call!339154 (isPrefix!4890 lt!2003996 lt!2003996))))

(declare-fun b!4890106 () Bool)

(assert (=> b!4890106 (= e!3057170 (tuple2!60423 Nil!56391 lt!2003996))))

(declare-fun b!4890107 () Bool)

(declare-fun e!3057167 () tuple2!60422)

(declare-fun e!3057172 () tuple2!60422)

(assert (=> b!4890107 (= e!3057167 e!3057172)))

(declare-fun c!831109 () Bool)

(assert (=> b!4890107 (= c!831109 (= (size!37124 Nil!56391) (size!37124 lt!2003996)))))

(declare-fun bm!339144 () Bool)

(declare-fun call!339153 () Bool)

(assert (=> bm!339144 (= call!339153 (nullable!4553 (regex!8170 (h!62841 rulesArg!165))))))

(declare-fun b!4890108 () Bool)

(declare-fun e!3057169 () Unit!146378)

(declare-fun Unit!146384 () Unit!146378)

(assert (=> b!4890108 (= e!3057169 Unit!146384)))

(declare-fun lt!2004274 () Unit!146378)

(declare-fun call!339148 () Unit!146378)

(assert (=> b!4890108 (= lt!2004274 call!339148)))

(assert (=> b!4890108 call!339154))

(declare-fun lt!2004289 () Unit!146378)

(assert (=> b!4890108 (= lt!2004289 lt!2004274)))

(declare-fun lt!2004284 () Unit!146378)

(declare-fun call!339149 () Unit!146378)

(assert (=> b!4890108 (= lt!2004284 call!339149)))

(assert (=> b!4890108 (= lt!2003996 Nil!56391)))

(declare-fun lt!2004273 () Unit!146378)

(assert (=> b!4890108 (= lt!2004273 lt!2004284)))

(assert (=> b!4890108 false))

(declare-fun bm!339145 () Bool)

(assert (=> bm!339145 (= call!339148 (lemmaIsPrefixRefl!3287 lt!2003996 lt!2003996))))

(declare-fun b!4890109 () Bool)

(declare-fun e!3057168 () tuple2!60422)

(declare-fun lt!2004272 () tuple2!60422)

(assert (=> b!4890109 (= e!3057168 lt!2004272)))

(declare-fun bm!339146 () Bool)

(declare-fun call!339152 () Regex!13245)

(declare-fun call!339150 () C!26688)

(assert (=> bm!339146 (= call!339152 (derivativeStep!3875 (regex!8170 (h!62841 rulesArg!165)) call!339150))))

(declare-fun b!4890110 () Bool)

(declare-fun Unit!146385 () Unit!146378)

(assert (=> b!4890110 (= e!3057169 Unit!146385)))

(declare-fun b!4890111 () Bool)

(declare-fun e!3057173 () Bool)

(declare-fun e!3057166 () Bool)

(assert (=> b!4890111 (= e!3057173 e!3057166)))

(declare-fun res!2088511 () Bool)

(assert (=> b!4890111 (=> res!2088511 e!3057166)))

(declare-fun lt!2004283 () tuple2!60422)

(assert (=> b!4890111 (= res!2088511 (isEmpty!30244 (_1!33514 lt!2004283)))))

(declare-fun bm!339147 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1055 (List!56515 List!56515 List!56515) Unit!146378)

(assert (=> bm!339147 (= call!339149 (lemmaIsPrefixSameLengthThenSameList!1055 lt!2003996 Nil!56391 lt!2003996))))

(declare-fun b!4890112 () Bool)

(declare-fun c!831107 () Bool)

(assert (=> b!4890112 (= c!831107 call!339153)))

(declare-fun lt!2004279 () Unit!146378)

(declare-fun lt!2004294 () Unit!146378)

(assert (=> b!4890112 (= lt!2004279 lt!2004294)))

(declare-fun lt!2004281 () C!26688)

(declare-fun lt!2004288 () List!56515)

(assert (=> b!4890112 (= (++!12241 (++!12241 Nil!56391 (Cons!56391 lt!2004281 Nil!56391)) lt!2004288) lt!2003996)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1327 (List!56515 C!26688 List!56515 List!56515) Unit!146378)

(assert (=> b!4890112 (= lt!2004294 (lemmaMoveElementToOtherListKeepsConcatEq!1327 Nil!56391 lt!2004281 lt!2004288 lt!2003996))))

(assert (=> b!4890112 (= lt!2004288 (tail!9597 lt!2003996))))

(assert (=> b!4890112 (= lt!2004281 (head!10451 lt!2003996))))

(declare-fun lt!2004293 () Unit!146378)

(declare-fun lt!2004270 () Unit!146378)

(assert (=> b!4890112 (= lt!2004293 lt!2004270)))

(declare-fun getSuffix!2884 (List!56515 List!56515) List!56515)

(assert (=> b!4890112 (isPrefix!4890 (++!12241 Nil!56391 (Cons!56391 (head!10451 (getSuffix!2884 lt!2003996 Nil!56391)) Nil!56391)) lt!2003996)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!709 (List!56515 List!56515) Unit!146378)

(assert (=> b!4890112 (= lt!2004270 (lemmaAddHeadSuffixToPrefixStillPrefix!709 Nil!56391 lt!2003996))))

(declare-fun lt!2004287 () Unit!146378)

(declare-fun lt!2004268 () Unit!146378)

(assert (=> b!4890112 (= lt!2004287 lt!2004268)))

(assert (=> b!4890112 (= lt!2004268 (lemmaAddHeadSuffixToPrefixStillPrefix!709 Nil!56391 lt!2003996))))

(declare-fun lt!2004282 () List!56515)

(assert (=> b!4890112 (= lt!2004282 (++!12241 Nil!56391 (Cons!56391 (head!10451 lt!2003996) Nil!56391)))))

(declare-fun lt!2004277 () Unit!146378)

(assert (=> b!4890112 (= lt!2004277 e!3057169)))

(declare-fun c!831106 () Bool)

(assert (=> b!4890112 (= c!831106 (= (size!37124 Nil!56391) (size!37124 lt!2003996)))))

(declare-fun lt!2004269 () Unit!146378)

(declare-fun lt!2004271 () Unit!146378)

(assert (=> b!4890112 (= lt!2004269 lt!2004271)))

(assert (=> b!4890112 (<= (size!37124 Nil!56391) (size!37124 lt!2003996))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!621 (List!56515 List!56515) Unit!146378)

(assert (=> b!4890112 (= lt!2004271 (lemmaIsPrefixThenSmallerEqSize!621 Nil!56391 lt!2003996))))

(assert (=> b!4890112 (= e!3057172 e!3057171)))

(declare-fun b!4890113 () Bool)

(assert (=> b!4890113 (= e!3057167 (tuple2!60423 Nil!56391 lt!2003996))))

(declare-fun b!4890114 () Bool)

(assert (=> b!4890114 (= e!3057171 e!3057168)))

(assert (=> b!4890114 (= lt!2004272 call!339147)))

(declare-fun c!831108 () Bool)

(assert (=> b!4890114 (= c!831108 (isEmpty!30244 (_1!33514 lt!2004272)))))

(declare-fun d!1570206 () Bool)

(assert (=> d!1570206 e!3057173))

(declare-fun res!2088512 () Bool)

(assert (=> d!1570206 (=> (not res!2088512) (not e!3057173))))

(assert (=> d!1570206 (= res!2088512 (= (++!12241 (_1!33514 lt!2004283) (_2!33514 lt!2004283)) lt!2003996))))

(assert (=> d!1570206 (= lt!2004283 e!3057167)))

(declare-fun c!831104 () Bool)

(declare-fun lostCause!1083 (Regex!13245) Bool)

(assert (=> d!1570206 (= c!831104 (lostCause!1083 (regex!8170 (h!62841 rulesArg!165))))))

(declare-fun lt!2004278 () Unit!146378)

(declare-fun Unit!146386 () Unit!146378)

(assert (=> d!1570206 (= lt!2004278 Unit!146386)))

(assert (=> d!1570206 (= (getSuffix!2884 lt!2003996 Nil!56391) lt!2003996)))

(declare-fun lt!2004292 () Unit!146378)

(declare-fun lt!2004280 () Unit!146378)

(assert (=> d!1570206 (= lt!2004292 lt!2004280)))

(declare-fun lt!2004275 () List!56515)

(assert (=> d!1570206 (= lt!2003996 lt!2004275)))

(declare-fun lemmaSamePrefixThenSameSuffix!2300 (List!56515 List!56515 List!56515 List!56515 List!56515) Unit!146378)

(assert (=> d!1570206 (= lt!2004280 (lemmaSamePrefixThenSameSuffix!2300 Nil!56391 lt!2003996 Nil!56391 lt!2004275 lt!2003996))))

(assert (=> d!1570206 (= lt!2004275 (getSuffix!2884 lt!2003996 Nil!56391))))

(declare-fun lt!2004286 () Unit!146378)

(declare-fun lt!2004276 () Unit!146378)

(assert (=> d!1570206 (= lt!2004286 lt!2004276)))

(assert (=> d!1570206 (isPrefix!4890 Nil!56391 (++!12241 Nil!56391 lt!2003996))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3120 (List!56515 List!56515) Unit!146378)

(assert (=> d!1570206 (= lt!2004276 (lemmaConcatTwoListThenFirstIsPrefix!3120 Nil!56391 lt!2003996))))

(assert (=> d!1570206 (validRegex!5880 (regex!8170 (h!62841 rulesArg!165)))))

(assert (=> d!1570206 (= (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003996 lt!2003996 (size!37124 lt!2003996)) lt!2004283)))

(declare-fun b!4890105 () Bool)

(assert (=> b!4890105 (= e!3057168 (tuple2!60423 Nil!56391 lt!2003996))))

(declare-fun b!4890115 () Bool)

(declare-fun c!831105 () Bool)

(assert (=> b!4890115 (= c!831105 call!339153)))

(declare-fun lt!2004290 () Unit!146378)

(declare-fun lt!2004291 () Unit!146378)

(assert (=> b!4890115 (= lt!2004290 lt!2004291)))

(assert (=> b!4890115 (= lt!2003996 Nil!56391)))

(assert (=> b!4890115 (= lt!2004291 call!339149)))

(declare-fun lt!2004267 () Unit!146378)

(declare-fun lt!2004285 () Unit!146378)

(assert (=> b!4890115 (= lt!2004267 lt!2004285)))

(assert (=> b!4890115 call!339154))

(assert (=> b!4890115 (= lt!2004285 call!339148)))

(assert (=> b!4890115 (= e!3057172 e!3057170)))

(declare-fun bm!339148 () Bool)

(assert (=> bm!339148 (= call!339150 (head!10451 lt!2003996))))

(declare-fun b!4890116 () Bool)

(assert (=> b!4890116 (= e!3057166 (>= (size!37124 (_1!33514 lt!2004283)) (size!37124 Nil!56391)))))

(declare-fun bm!339149 () Bool)

(assert (=> bm!339149 (= call!339147 (findLongestMatchInner!1749 call!339152 lt!2004282 (+ (size!37124 Nil!56391) 1) call!339151 lt!2003996 (size!37124 lt!2003996)))))

(assert (= (and d!1570206 c!831104) b!4890113))

(assert (= (and d!1570206 (not c!831104)) b!4890107))

(assert (= (and b!4890107 c!831109) b!4890115))

(assert (= (and b!4890107 (not c!831109)) b!4890112))

(assert (= (and b!4890115 c!831105) b!4890103))

(assert (= (and b!4890115 (not c!831105)) b!4890106))

(assert (= (and b!4890112 c!831106) b!4890108))

(assert (= (and b!4890112 (not c!831106)) b!4890110))

(assert (= (and b!4890112 c!831107) b!4890114))

(assert (= (and b!4890112 (not c!831107)) b!4890104))

(assert (= (and b!4890114 c!831108) b!4890105))

(assert (= (and b!4890114 (not c!831108)) b!4890109))

(assert (= (or b!4890114 b!4890104) bm!339142))

(assert (= (or b!4890114 b!4890104) bm!339148))

(assert (= (or b!4890114 b!4890104) bm!339146))

(assert (= (or b!4890114 b!4890104) bm!339149))

(assert (= (or b!4890115 b!4890112) bm!339144))

(assert (= (or b!4890115 b!4890108) bm!339145))

(assert (= (or b!4890115 b!4890108) bm!339147))

(assert (= (or b!4890115 b!4890108) bm!339143))

(assert (= (and d!1570206 res!2088512) b!4890111))

(assert (= (and b!4890111 (not res!2088511)) b!4890116))

(assert (=> b!4890112 m!5892994))

(declare-fun m!5893502 () Bool)

(assert (=> b!4890112 m!5893502))

(declare-fun m!5893504 () Bool)

(assert (=> b!4890112 m!5893504))

(declare-fun m!5893506 () Bool)

(assert (=> b!4890112 m!5893506))

(assert (=> b!4890112 m!5892992))

(declare-fun m!5893508 () Bool)

(assert (=> b!4890112 m!5893508))

(declare-fun m!5893510 () Bool)

(assert (=> b!4890112 m!5893510))

(assert (=> b!4890112 m!5893502))

(declare-fun m!5893512 () Bool)

(assert (=> b!4890112 m!5893512))

(declare-fun m!5893514 () Bool)

(assert (=> b!4890112 m!5893514))

(declare-fun m!5893516 () Bool)

(assert (=> b!4890112 m!5893516))

(assert (=> b!4890112 m!5893508))

(assert (=> b!4890112 m!5893514))

(declare-fun m!5893518 () Bool)

(assert (=> b!4890112 m!5893518))

(declare-fun m!5893520 () Bool)

(assert (=> b!4890112 m!5893520))

(declare-fun m!5893522 () Bool)

(assert (=> b!4890112 m!5893522))

(declare-fun m!5893524 () Bool)

(assert (=> b!4890112 m!5893524))

(declare-fun m!5893526 () Bool)

(assert (=> bm!339146 m!5893526))

(declare-fun m!5893528 () Bool)

(assert (=> bm!339147 m!5893528))

(assert (=> bm!339144 m!5893346))

(assert (=> bm!339149 m!5892992))

(declare-fun m!5893530 () Bool)

(assert (=> bm!339149 m!5893530))

(declare-fun m!5893532 () Bool)

(assert (=> bm!339143 m!5893532))

(declare-fun m!5893534 () Bool)

(assert (=> d!1570206 m!5893534))

(declare-fun m!5893536 () Bool)

(assert (=> d!1570206 m!5893536))

(assert (=> d!1570206 m!5893502))

(assert (=> d!1570206 m!5893344))

(declare-fun m!5893538 () Bool)

(assert (=> d!1570206 m!5893538))

(assert (=> d!1570206 m!5893536))

(declare-fun m!5893540 () Bool)

(assert (=> d!1570206 m!5893540))

(declare-fun m!5893542 () Bool)

(assert (=> d!1570206 m!5893542))

(declare-fun m!5893544 () Bool)

(assert (=> d!1570206 m!5893544))

(declare-fun m!5893546 () Bool)

(assert (=> bm!339145 m!5893546))

(declare-fun m!5893548 () Bool)

(assert (=> b!4890111 m!5893548))

(assert (=> bm!339142 m!5893522))

(declare-fun m!5893550 () Bool)

(assert (=> b!4890114 m!5893550))

(declare-fun m!5893552 () Bool)

(assert (=> b!4890116 m!5893552))

(assert (=> b!4890116 m!5892994))

(assert (=> bm!339148 m!5893504))

(assert (=> b!4889612 d!1570206))

(declare-fun d!1570260 () Bool)

(declare-fun lt!2004302 () Int)

(assert (=> d!1570260 (>= lt!2004302 0)))

(declare-fun e!3057186 () Int)

(assert (=> d!1570260 (= lt!2004302 e!3057186)))

(declare-fun c!831115 () Bool)

(assert (=> d!1570260 (= c!831115 ((_ is Nil!56391) Nil!56391))))

(assert (=> d!1570260 (= (size!37124 Nil!56391) lt!2004302)))

(declare-fun b!4890142 () Bool)

(assert (=> b!4890142 (= e!3057186 0)))

(declare-fun b!4890143 () Bool)

(assert (=> b!4890143 (= e!3057186 (+ 1 (size!37124 (t!365185 Nil!56391))))))

(assert (= (and d!1570260 c!831115) b!4890142))

(assert (= (and d!1570260 (not c!831115)) b!4890143))

(declare-fun m!5893562 () Bool)

(assert (=> b!4890143 m!5893562))

(assert (=> b!4889612 d!1570260))

(declare-fun d!1570264 () Bool)

(declare-fun lt!2004303 () Int)

(assert (=> d!1570264 (>= lt!2004303 0)))

(declare-fun e!3057187 () Int)

(assert (=> d!1570264 (= lt!2004303 e!3057187)))

(declare-fun c!831116 () Bool)

(assert (=> d!1570264 (= c!831116 ((_ is Nil!56391) lt!2003996))))

(assert (=> d!1570264 (= (size!37124 lt!2003996) lt!2004303)))

(declare-fun b!4890144 () Bool)

(assert (=> b!4890144 (= e!3057187 0)))

(declare-fun b!4890145 () Bool)

(assert (=> b!4890145 (= e!3057187 (+ 1 (size!37124 (t!365185 lt!2003996))))))

(assert (= (and d!1570264 c!831116) b!4890144))

(assert (= (and d!1570264 (not c!831116)) b!4890145))

(declare-fun m!5893570 () Bool)

(assert (=> b!4890145 m!5893570))

(assert (=> b!4889612 d!1570264))

(declare-fun bs!1175753 () Bool)

(declare-fun d!1570266 () Bool)

(assert (= bs!1175753 (and d!1570266 d!1570128)))

(declare-fun lambda!243937 () Int)

(assert (=> bs!1175753 (= lambda!243937 lambda!243926)))

(assert (=> d!1570266 true))

(declare-fun lt!2004304 () Bool)

(assert (=> d!1570266 (= lt!2004304 (forall!13086 (t!365187 rulesArg!165) lambda!243937))))

(declare-fun e!3057188 () Bool)

(assert (=> d!1570266 (= lt!2004304 e!3057188)))

(declare-fun res!2088528 () Bool)

(assert (=> d!1570266 (=> res!2088528 e!3057188)))

(assert (=> d!1570266 (= res!2088528 (not ((_ is Cons!56393) (t!365187 rulesArg!165))))))

(assert (=> d!1570266 (= (rulesValidInductive!3149 thiss!14805 (t!365187 rulesArg!165)) lt!2004304)))

(declare-fun b!4890146 () Bool)

(declare-fun e!3057189 () Bool)

(assert (=> b!4890146 (= e!3057188 e!3057189)))

(declare-fun res!2088529 () Bool)

(assert (=> b!4890146 (=> (not res!2088529) (not e!3057189))))

(assert (=> b!4890146 (= res!2088529 (ruleValid!3668 thiss!14805 (h!62841 (t!365187 rulesArg!165))))))

(declare-fun b!4890147 () Bool)

(assert (=> b!4890147 (= e!3057189 (rulesValidInductive!3149 thiss!14805 (t!365187 (t!365187 rulesArg!165))))))

(assert (= (and d!1570266 (not res!2088528)) b!4890146))

(assert (= (and b!4890146 res!2088529) b!4890147))

(declare-fun m!5893586 () Bool)

(assert (=> d!1570266 m!5893586))

(declare-fun m!5893588 () Bool)

(assert (=> b!4890146 m!5893588))

(declare-fun m!5893592 () Bool)

(assert (=> b!4890147 m!5893592))

(assert (=> b!4889679 d!1570266))

(assert (=> d!1570076 d!1570202))

(declare-fun d!1570270 () Bool)

(assert (=> d!1570270 (= (isDefined!11031 lt!2003994) (not (isEmpty!30242 lt!2003994)))))

(declare-fun bs!1175754 () Bool)

(assert (= bs!1175754 d!1570270))

(declare-fun m!5893594 () Bool)

(assert (=> bs!1175754 m!5893594))

(assert (=> d!1570076 d!1570270))

(declare-fun d!1570274 () Bool)

(assert (=> d!1570274 (= (isDefined!11030 (maxPrefixOneRule!3525 thiss!14805 (h!62841 rulesArg!165) (list!17712 input!1236))) (not (isEmpty!30241 (maxPrefixOneRule!3525 thiss!14805 (h!62841 rulesArg!165) (list!17712 input!1236)))))))

(declare-fun bs!1175755 () Bool)

(assert (= bs!1175755 d!1570274))

(assert (=> bs!1175755 m!5892988))

(declare-fun m!5893596 () Bool)

(assert (=> bs!1175755 m!5893596))

(assert (=> d!1570076 d!1570274))

(assert (=> d!1570076 d!1570200))

(declare-fun d!1570276 () Bool)

(declare-fun lt!2004307 () Bool)

(assert (=> d!1570276 (= lt!2004307 (isEmpty!30244 (list!17712 (_1!33513 lt!2003998))))))

(assert (=> d!1570276 (= lt!2004307 (isEmpty!30246 (c!830999 (_1!33513 lt!2003998))))))

(assert (=> d!1570276 (= (isEmpty!30243 (_1!33513 lt!2003998)) lt!2004307)))

(declare-fun bs!1175756 () Bool)

(assert (= bs!1175756 d!1570276))

(assert (=> bs!1175756 m!5893002))

(assert (=> bs!1175756 m!5893002))

(declare-fun m!5893620 () Bool)

(assert (=> bs!1175756 m!5893620))

(declare-fun m!5893622 () Bool)

(assert (=> bs!1175756 m!5893622))

(assert (=> d!1570076 d!1570276))

(assert (=> d!1570076 d!1570124))

(declare-fun d!1570280 () Bool)

(declare-fun lt!2004310 () tuple2!60420)

(assert (=> d!1570280 (= (tuple2!60423 (list!17712 (_1!33513 lt!2004310)) (list!17712 (_2!33513 lt!2004310))) (findLongestMatch!1645 (regex!8170 (h!62841 rulesArg!165)) (list!17712 input!1236)))))

(declare-fun choose!35693 (Regex!13245 BalanceConc!28906) tuple2!60420)

(assert (=> d!1570280 (= lt!2004310 (choose!35693 (regex!8170 (h!62841 rulesArg!165)) input!1236))))

(assert (=> d!1570280 (validRegex!5880 (regex!8170 (h!62841 rulesArg!165)))))

(assert (=> d!1570280 (= (findLongestMatchWithZipperSequence!264 (regex!8170 (h!62841 rulesArg!165)) input!1236) lt!2004310)))

(declare-fun bs!1175760 () Bool)

(assert (= bs!1175760 d!1570280))

(assert (=> bs!1175760 m!5893344))

(declare-fun m!5893644 () Bool)

(assert (=> bs!1175760 m!5893644))

(assert (=> bs!1175760 m!5892838))

(assert (=> bs!1175760 m!5893338))

(declare-fun m!5893646 () Bool)

(assert (=> bs!1175760 m!5893646))

(assert (=> bs!1175760 m!5892838))

(declare-fun m!5893648 () Bool)

(assert (=> bs!1175760 m!5893648))

(assert (=> d!1570076 d!1570280))

(assert (=> b!4889614 d!1570198))

(assert (=> b!4889614 d!1570200))

(assert (=> b!4889614 d!1570124))

(assert (=> b!4889614 d!1570196))

(declare-fun d!1570288 () Bool)

(assert (=> d!1570288 (= (list!17712 (_2!33509 (get!19469 lt!2003994))) (list!17714 (c!830999 (_2!33509 (get!19469 lt!2003994)))))))

(declare-fun bs!1175761 () Bool)

(assert (= bs!1175761 d!1570288))

(declare-fun m!5893650 () Bool)

(assert (=> bs!1175761 m!5893650))

(assert (=> b!4889614 d!1570288))

(declare-fun d!1570290 () Bool)

(assert (=> d!1570290 (= (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015)))) (list!17714 (c!830999 (charsOf!5372 (_1!33510 (get!19468 lt!2004015))))))))

(declare-fun bs!1175762 () Bool)

(assert (= bs!1175762 d!1570290))

(declare-fun m!5893652 () Bool)

(assert (=> bs!1175762 m!5893652))

(assert (=> b!4889649 d!1570290))

(declare-fun d!1570292 () Bool)

(declare-fun lt!2004313 () BalanceConc!28906)

(assert (=> d!1570292 (= (list!17712 lt!2004313) (originalCharacters!8483 (_1!33510 (get!19468 lt!2004015))))))

(declare-fun dynLambda!22606 (Int TokenValue!8480) BalanceConc!28906)

(assert (=> d!1570292 (= lt!2004313 (dynLambda!22606 (toChars!10916 (transformation!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015))))) (value!261995 (_1!33510 (get!19468 lt!2004015)))))))

(assert (=> d!1570292 (= (charsOf!5372 (_1!33510 (get!19468 lt!2004015))) lt!2004313)))

(declare-fun b_lambda!194077 () Bool)

(assert (=> (not b_lambda!194077) (not d!1570292)))

(declare-fun t!365228 () Bool)

(declare-fun tb!258503 () Bool)

(assert (=> (and b!4889461 (= (toChars!10916 (transformation!8170 (h!62841 rulesArg!165))) (toChars!10916 (transformation!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015)))))) t!365228) tb!258503))

(declare-fun b!4890197 () Bool)

(declare-fun e!3057214 () Bool)

(declare-fun tp!1376468 () Bool)

(assert (=> b!4890197 (= e!3057214 (and (inv!72650 (c!830999 (dynLambda!22606 (toChars!10916 (transformation!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015))))) (value!261995 (_1!33510 (get!19468 lt!2004015)))))) tp!1376468))))

(declare-fun result!322024 () Bool)

(assert (=> tb!258503 (= result!322024 (and (inv!72649 (dynLambda!22606 (toChars!10916 (transformation!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015))))) (value!261995 (_1!33510 (get!19468 lt!2004015))))) e!3057214))))

(assert (= tb!258503 b!4890197))

(declare-fun m!5893654 () Bool)

(assert (=> b!4890197 m!5893654))

(declare-fun m!5893656 () Bool)

(assert (=> tb!258503 m!5893656))

(assert (=> d!1570292 t!365228))

(declare-fun b_and!344407 () Bool)

(assert (= b_and!344349 (and (=> t!365228 result!322024) b_and!344407)))

(declare-fun t!365230 () Bool)

(declare-fun tb!258505 () Bool)

(assert (=> (and b!4889692 (= (toChars!10916 (transformation!8170 (h!62841 (t!365187 rulesArg!165)))) (toChars!10916 (transformation!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015)))))) t!365230) tb!258505))

(declare-fun result!322028 () Bool)

(assert (= result!322028 result!322024))

(assert (=> d!1570292 t!365230))

(declare-fun b_and!344409 () Bool)

(assert (= b_and!344357 (and (=> t!365230 result!322028) b_and!344409)))

(declare-fun m!5893658 () Bool)

(assert (=> d!1570292 m!5893658))

(declare-fun m!5893660 () Bool)

(assert (=> d!1570292 m!5893660))

(assert (=> b!4889649 d!1570292))

(declare-fun d!1570294 () Bool)

(assert (=> d!1570294 (= (get!19468 lt!2004015) (v!49966 lt!2004015))))

(assert (=> b!4889649 d!1570294))

(declare-fun d!1570296 () Bool)

(assert (=> d!1570296 (= (isEmpty!30241 lt!2004015) (not ((_ is Some!14016) lt!2004015)))))

(assert (=> d!1570110 d!1570296))

(assert (=> d!1570110 d!1570120))

(assert (=> d!1570110 d!1570122))

(assert (=> d!1570110 d!1570128))

(declare-fun d!1570298 () Bool)

(declare-fun lt!2004314 () Int)

(assert (=> d!1570298 (>= lt!2004314 0)))

(declare-fun e!3057215 () Int)

(assert (=> d!1570298 (= lt!2004314 e!3057215)))

(declare-fun c!831119 () Bool)

(assert (=> d!1570298 (= c!831119 ((_ is Nil!56391) lt!2003886))))

(assert (=> d!1570298 (= (size!37124 lt!2003886) lt!2004314)))

(declare-fun b!4890198 () Bool)

(assert (=> b!4890198 (= e!3057215 0)))

(declare-fun b!4890199 () Bool)

(assert (=> b!4890199 (= e!3057215 (+ 1 (size!37124 (t!365185 lt!2003886))))))

(assert (= (and d!1570298 c!831119) b!4890198))

(assert (= (and d!1570298 (not c!831119)) b!4890199))

(declare-fun m!5893662 () Bool)

(assert (=> b!4890199 m!5893662))

(assert (=> b!4889673 d!1570298))

(declare-fun d!1570300 () Bool)

(declare-fun lt!2004317 () Int)

(assert (=> d!1570300 (= lt!2004317 (size!37124 (list!17712 (_1!33513 lt!2003998))))))

(declare-fun size!37126 (Conc!14738) Int)

(assert (=> d!1570300 (= lt!2004317 (size!37126 (c!830999 (_1!33513 lt!2003998))))))

(assert (=> d!1570300 (= (size!37123 (_1!33513 lt!2003998)) lt!2004317)))

(declare-fun bs!1175763 () Bool)

(assert (= bs!1175763 d!1570300))

(assert (=> bs!1175763 m!5893002))

(assert (=> bs!1175763 m!5893002))

(declare-fun m!5893664 () Bool)

(assert (=> bs!1175763 m!5893664))

(declare-fun m!5893666 () Bool)

(assert (=> bs!1175763 m!5893666))

(assert (=> b!4889611 d!1570300))

(declare-fun d!1570302 () Bool)

(declare-fun dynLambda!22607 (Int BalanceConc!28906) TokenValue!8480)

(assert (=> d!1570302 (= (apply!13536 (transformation!8170 (h!62841 rulesArg!165)) (_1!33513 lt!2003998)) (dynLambda!22607 (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))) (_1!33513 lt!2003998)))))

(declare-fun b_lambda!194079 () Bool)

(assert (=> (not b_lambda!194079) (not d!1570302)))

(declare-fun t!365232 () Bool)

(declare-fun tb!258507 () Bool)

(assert (=> (and b!4889461 (= (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165)))) t!365232) tb!258507))

(declare-fun result!322030 () Bool)

(declare-fun inv!21 (TokenValue!8480) Bool)

(assert (=> tb!258507 (= result!322030 (inv!21 (dynLambda!22607 (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))) (_1!33513 lt!2003998))))))

(declare-fun m!5893668 () Bool)

(assert (=> tb!258507 m!5893668))

(assert (=> d!1570302 t!365232))

(declare-fun b_and!344411 () Bool)

(assert (= b_and!344347 (and (=> t!365232 result!322030) b_and!344411)))

(declare-fun t!365234 () Bool)

(declare-fun tb!258509 () Bool)

(assert (=> (and b!4889692 (= (toValue!11057 (transformation!8170 (h!62841 (t!365187 rulesArg!165)))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165)))) t!365234) tb!258509))

(declare-fun result!322034 () Bool)

(assert (= result!322034 result!322030))

(assert (=> d!1570302 t!365234))

(declare-fun b_and!344413 () Bool)

(assert (= b_and!344355 (and (=> t!365234 result!322034) b_and!344413)))

(declare-fun m!5893670 () Bool)

(assert (=> d!1570302 m!5893670))

(assert (=> b!4889611 d!1570302))

(declare-fun d!1570304 () Bool)

(declare-fun dynLambda!22608 (Int BalanceConc!28906) Bool)

(assert (=> d!1570304 (dynLambda!22608 lambda!243923 (seqFromList!5932 (list!17712 (_1!33513 lt!2003998))))))

(declare-fun lt!2004320 () Unit!146378)

(declare-fun choose!35694 (Int BalanceConc!28906) Unit!146378)

(assert (=> d!1570304 (= lt!2004320 (choose!35694 lambda!243923 (seqFromList!5932 (list!17712 (_1!33513 lt!2003998)))))))

(declare-fun Forall!1685 (Int) Bool)

(assert (=> d!1570304 (Forall!1685 lambda!243923)))

(assert (=> d!1570304 (= (ForallOf!1129 lambda!243923 (seqFromList!5932 (list!17712 (_1!33513 lt!2003998)))) lt!2004320)))

(declare-fun b_lambda!194081 () Bool)

(assert (=> (not b_lambda!194081) (not d!1570304)))

(declare-fun bs!1175764 () Bool)

(assert (= bs!1175764 d!1570304))

(assert (=> bs!1175764 m!5893006))

(declare-fun m!5893672 () Bool)

(assert (=> bs!1175764 m!5893672))

(assert (=> bs!1175764 m!5893006))

(declare-fun m!5893674 () Bool)

(assert (=> bs!1175764 m!5893674))

(declare-fun m!5893676 () Bool)

(assert (=> bs!1175764 m!5893676))

(assert (=> b!4889611 d!1570304))

(declare-fun d!1570306 () Bool)

(assert (=> d!1570306 (= (list!17712 (_1!33513 lt!2003998)) (list!17714 (c!830999 (_1!33513 lt!2003998))))))

(declare-fun bs!1175765 () Bool)

(assert (= bs!1175765 d!1570306))

(declare-fun m!5893678 () Bool)

(assert (=> bs!1175765 m!5893678))

(assert (=> b!4889611 d!1570306))

(declare-fun b!4890208 () Bool)

(declare-fun e!3057223 () Bool)

(assert (=> b!4890208 (= e!3057223 true)))

(declare-fun d!1570308 () Bool)

(assert (=> d!1570308 e!3057223))

(assert (= d!1570308 b!4890208))

(declare-fun order!25449 () Int)

(declare-fun lambda!243940 () Int)

(declare-fun dynLambda!22609 (Int Int) Int)

(assert (=> b!4890208 (< (dynLambda!22598 order!25441 (toValue!11057 (transformation!8170 (h!62841 rulesArg!165)))) (dynLambda!22609 order!25449 lambda!243940))))

(assert (=> b!4890208 (< (dynLambda!22600 order!25445 (toChars!10916 (transformation!8170 (h!62841 rulesArg!165)))) (dynLambda!22609 order!25449 lambda!243940))))

(assert (=> d!1570308 (= (dynLambda!22607 (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))) (_1!33513 lt!2003998)) (dynLambda!22607 (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))) (seqFromList!5932 (list!17712 (_1!33513 lt!2003998)))))))

(declare-fun lt!2004323 () Unit!146378)

(declare-fun Forall2of!444 (Int BalanceConc!28906 BalanceConc!28906) Unit!146378)

(assert (=> d!1570308 (= lt!2004323 (Forall2of!444 lambda!243940 (_1!33513 lt!2003998) (seqFromList!5932 (list!17712 (_1!33513 lt!2003998)))))))

(assert (=> d!1570308 (= (list!17712 (_1!33513 lt!2003998)) (list!17712 (seqFromList!5932 (list!17712 (_1!33513 lt!2003998)))))))

(assert (=> d!1570308 (= (lemmaEqSameImage!1086 (transformation!8170 (h!62841 rulesArg!165)) (_1!33513 lt!2003998) (seqFromList!5932 (list!17712 (_1!33513 lt!2003998)))) lt!2004323)))

(declare-fun b_lambda!194083 () Bool)

(assert (=> (not b_lambda!194083) (not d!1570308)))

(assert (=> d!1570308 t!365232))

(declare-fun b_and!344415 () Bool)

(assert (= b_and!344411 (and (=> t!365232 result!322030) b_and!344415)))

(assert (=> d!1570308 t!365234))

(declare-fun b_and!344417 () Bool)

(assert (= b_and!344413 (and (=> t!365234 result!322034) b_and!344417)))

(declare-fun b_lambda!194085 () Bool)

(assert (=> (not b_lambda!194085) (not d!1570308)))

(declare-fun t!365236 () Bool)

(declare-fun tb!258511 () Bool)

(assert (=> (and b!4889461 (= (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165)))) t!365236) tb!258511))

(declare-fun result!322036 () Bool)

(assert (=> tb!258511 (= result!322036 (inv!21 (dynLambda!22607 (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))) (seqFromList!5932 (list!17712 (_1!33513 lt!2003998))))))))

(declare-fun m!5893680 () Bool)

(assert (=> tb!258511 m!5893680))

(assert (=> d!1570308 t!365236))

(declare-fun b_and!344419 () Bool)

(assert (= b_and!344415 (and (=> t!365236 result!322036) b_and!344419)))

(declare-fun t!365238 () Bool)

(declare-fun tb!258513 () Bool)

(assert (=> (and b!4889692 (= (toValue!11057 (transformation!8170 (h!62841 (t!365187 rulesArg!165)))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165)))) t!365238) tb!258513))

(declare-fun result!322038 () Bool)

(assert (= result!322038 result!322036))

(assert (=> d!1570308 t!365238))

(declare-fun b_and!344421 () Bool)

(assert (= b_and!344417 (and (=> t!365238 result!322038) b_and!344421)))

(assert (=> d!1570308 m!5893006))

(declare-fun m!5893682 () Bool)

(assert (=> d!1570308 m!5893682))

(assert (=> d!1570308 m!5893002))

(assert (=> d!1570308 m!5893006))

(declare-fun m!5893684 () Bool)

(assert (=> d!1570308 m!5893684))

(assert (=> d!1570308 m!5893670))

(assert (=> d!1570308 m!5893006))

(declare-fun m!5893686 () Bool)

(assert (=> d!1570308 m!5893686))

(assert (=> b!4889611 d!1570308))

(declare-fun d!1570310 () Bool)

(assert (=> d!1570310 (dynLambda!22608 lambda!243923 (_1!33513 lt!2003998))))

(declare-fun lt!2004324 () Unit!146378)

(assert (=> d!1570310 (= lt!2004324 (choose!35694 lambda!243923 (_1!33513 lt!2003998)))))

(assert (=> d!1570310 (Forall!1685 lambda!243923)))

(assert (=> d!1570310 (= (ForallOf!1129 lambda!243923 (_1!33513 lt!2003998)) lt!2004324)))

(declare-fun b_lambda!194087 () Bool)

(assert (=> (not b_lambda!194087) (not d!1570310)))

(declare-fun bs!1175766 () Bool)

(assert (= bs!1175766 d!1570310))

(declare-fun m!5893688 () Bool)

(assert (=> bs!1175766 m!5893688))

(declare-fun m!5893690 () Bool)

(assert (=> bs!1175766 m!5893690))

(assert (=> bs!1175766 m!5893676))

(assert (=> b!4889611 d!1570310))

(declare-fun d!1570312 () Bool)

(declare-fun e!3057227 () Bool)

(assert (=> d!1570312 e!3057227))

(declare-fun res!2088535 () Bool)

(assert (=> d!1570312 (=> (not res!2088535) (not e!3057227))))

(assert (=> d!1570312 (= res!2088535 (semiInverseModEq!3582 (toChars!10916 (transformation!8170 (h!62841 rulesArg!165))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165)))))))

(declare-fun Unit!146387 () Unit!146378)

(assert (=> d!1570312 (= (lemmaInv!1232 (transformation!8170 (h!62841 rulesArg!165))) Unit!146387)))

(declare-fun b!4890211 () Bool)

(assert (=> b!4890211 (= e!3057227 (equivClasses!3461 (toChars!10916 (transformation!8170 (h!62841 rulesArg!165))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165)))))))

(assert (= (and d!1570312 res!2088535) b!4890211))

(assert (=> d!1570312 m!5893066))

(assert (=> b!4890211 m!5893068))

(assert (=> b!4889611 d!1570312))

(assert (=> b!4889611 d!1570260))

(declare-fun d!1570314 () Bool)

(declare-fun e!3057230 () Bool)

(assert (=> d!1570314 e!3057230))

(declare-fun res!2088538 () Bool)

(assert (=> d!1570314 (=> res!2088538 e!3057230)))

(assert (=> d!1570314 (= res!2088538 (isEmpty!30244 (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003996 lt!2003996 (size!37124 lt!2003996)))))))

(declare-fun lt!2004327 () Unit!146378)

(declare-fun choose!35695 (Regex!13245 List!56515) Unit!146378)

(assert (=> d!1570314 (= lt!2004327 (choose!35695 (regex!8170 (h!62841 rulesArg!165)) lt!2003996))))

(assert (=> d!1570314 (validRegex!5880 (regex!8170 (h!62841 rulesArg!165)))))

(assert (=> d!1570314 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1712 (regex!8170 (h!62841 rulesArg!165)) lt!2003996) lt!2004327)))

(declare-fun b!4890214 () Bool)

(assert (=> b!4890214 (= e!3057230 (matchR!6526 (regex!8170 (h!62841 rulesArg!165)) (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003996 lt!2003996 (size!37124 lt!2003996)))))))

(assert (= (and d!1570314 (not res!2088538)) b!4890214))

(assert (=> d!1570314 m!5892994))

(assert (=> d!1570314 m!5893014))

(assert (=> d!1570314 m!5893344))

(declare-fun m!5893692 () Bool)

(assert (=> d!1570314 m!5893692))

(assert (=> d!1570314 m!5892992))

(assert (=> d!1570314 m!5892994))

(assert (=> d!1570314 m!5892992))

(assert (=> d!1570314 m!5892996))

(assert (=> b!4890214 m!5892994))

(assert (=> b!4890214 m!5892992))

(assert (=> b!4890214 m!5892994))

(assert (=> b!4890214 m!5892992))

(assert (=> b!4890214 m!5892996))

(assert (=> b!4890214 m!5893030))

(assert (=> b!4889611 d!1570314))

(declare-fun d!1570316 () Bool)

(assert (=> d!1570316 (= (isEmpty!30244 (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003996 lt!2003996 (size!37124 lt!2003996)))) ((_ is Nil!56391) (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003996 lt!2003996 (size!37124 lt!2003996)))))))

(assert (=> b!4889611 d!1570316))

(assert (=> b!4889611 d!1570264))

(declare-fun d!1570318 () Bool)

(declare-fun fromListB!2689 (List!56515) BalanceConc!28906)

(assert (=> d!1570318 (= (seqFromList!5932 (list!17712 (_1!33513 lt!2003998))) (fromListB!2689 (list!17712 (_1!33513 lt!2003998))))))

(declare-fun bs!1175767 () Bool)

(assert (= bs!1175767 d!1570318))

(assert (=> bs!1175767 m!5893002))

(declare-fun m!5893694 () Bool)

(assert (=> bs!1175767 m!5893694))

(assert (=> b!4889611 d!1570318))

(assert (=> b!4889611 d!1570124))

(assert (=> b!4889611 d!1570206))

(declare-fun d!1570320 () Bool)

(assert (=> d!1570320 (= (isEmpty!30241 lt!2003879) (not ((_ is Some!14016) lt!2003879)))))

(assert (=> d!1570070 d!1570320))

(assert (=> b!4889463 d!1570114))

(assert (=> d!1570122 d!1570120))

(declare-fun d!1570322 () Bool)

(assert (=> d!1570322 (isPrefix!4890 lt!2003886 lt!2003886)))

(assert (=> d!1570322 true))

(declare-fun _$45!2159 () Unit!146378)

(assert (=> d!1570322 (= (choose!35689 lt!2003886 lt!2003886) _$45!2159)))

(declare-fun bs!1175768 () Bool)

(assert (= bs!1175768 d!1570322))

(assert (=> bs!1175768 m!5892834))

(assert (=> d!1570122 d!1570322))

(declare-fun bs!1175769 () Bool)

(declare-fun d!1570324 () Bool)

(assert (= bs!1175769 (and d!1570324 b!4889611)))

(declare-fun lambda!243943 () Int)

(assert (=> bs!1175769 (= lambda!243943 lambda!243923)))

(assert (=> d!1570324 true))

(assert (=> d!1570324 (< (dynLambda!22600 order!25445 (toChars!10916 (transformation!8170 (h!62841 rulesArg!165)))) (dynLambda!22599 order!25443 lambda!243943))))

(assert (=> d!1570324 true))

(assert (=> d!1570324 (< (dynLambda!22598 order!25441 (toValue!11057 (transformation!8170 (h!62841 rulesArg!165)))) (dynLambda!22599 order!25443 lambda!243943))))

(assert (=> d!1570324 (= (semiInverseModEq!3582 (toChars!10916 (transformation!8170 (h!62841 rulesArg!165))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165)))) (Forall!1685 lambda!243943))))

(declare-fun bs!1175770 () Bool)

(assert (= bs!1175770 d!1570324))

(declare-fun m!5893696 () Bool)

(assert (=> bs!1175770 m!5893696))

(assert (=> d!1570118 d!1570324))

(declare-fun d!1570326 () Bool)

(declare-fun c!831124 () Bool)

(assert (=> d!1570326 (= c!831124 ((_ is Empty!14738) (c!830999 (_2!33509 lt!2003885))))))

(declare-fun e!3057235 () List!56515)

(assert (=> d!1570326 (= (list!17714 (c!830999 (_2!33509 lt!2003885))) e!3057235)))

(declare-fun b!4890227 () Bool)

(assert (=> b!4890227 (= e!3057235 Nil!56391)))

(declare-fun b!4890229 () Bool)

(declare-fun e!3057236 () List!56515)

(declare-fun list!17716 (IArray!29537) List!56515)

(assert (=> b!4890229 (= e!3057236 (list!17716 (xs!18054 (c!830999 (_2!33509 lt!2003885)))))))

(declare-fun b!4890228 () Bool)

(assert (=> b!4890228 (= e!3057235 e!3057236)))

(declare-fun c!831125 () Bool)

(assert (=> b!4890228 (= c!831125 ((_ is Leaf!24540) (c!830999 (_2!33509 lt!2003885))))))

(declare-fun b!4890230 () Bool)

(assert (=> b!4890230 (= e!3057236 (++!12241 (list!17714 (left!40961 (c!830999 (_2!33509 lt!2003885)))) (list!17714 (right!41291 (c!830999 (_2!33509 lt!2003885))))))))

(assert (= (and d!1570326 c!831124) b!4890227))

(assert (= (and d!1570326 (not c!831124)) b!4890228))

(assert (= (and b!4890228 c!831125) b!4890229))

(assert (= (and b!4890228 (not c!831125)) b!4890230))

(declare-fun m!5893698 () Bool)

(assert (=> b!4890229 m!5893698))

(declare-fun m!5893700 () Bool)

(assert (=> b!4890230 m!5893700))

(declare-fun m!5893702 () Bool)

(assert (=> b!4890230 m!5893702))

(assert (=> b!4890230 m!5893700))

(assert (=> b!4890230 m!5893702))

(declare-fun m!5893704 () Bool)

(assert (=> b!4890230 m!5893704))

(assert (=> d!1570126 d!1570326))

(declare-fun b!4890231 () Bool)

(declare-fun res!2088545 () Bool)

(declare-fun e!3057239 () Bool)

(assert (=> b!4890231 (=> (not res!2088545) (not e!3057239))))

(declare-fun lt!2004329 () Option!14017)

(assert (=> b!4890231 (= res!2088545 (= (value!261995 (_1!33510 (get!19468 lt!2004329))) (apply!13536 (transformation!8170 (rule!11346 (_1!33510 (get!19468 lt!2004329)))) (seqFromList!5932 (originalCharacters!8483 (_1!33510 (get!19468 lt!2004329)))))))))

(declare-fun b!4890232 () Bool)

(declare-fun e!3057237 () Option!14017)

(declare-fun lt!2004330 () tuple2!60422)

(assert (=> b!4890232 (= e!3057237 (Some!14016 (tuple2!60415 (Token!14905 (apply!13536 (transformation!8170 (h!62841 rulesArg!165)) (seqFromList!5932 (_1!33514 lt!2004330))) (h!62841 rulesArg!165) (size!37123 (seqFromList!5932 (_1!33514 lt!2004330))) (_1!33514 lt!2004330)) (_2!33514 lt!2004330))))))

(declare-fun lt!2004328 () Unit!146378)

(assert (=> b!4890232 (= lt!2004328 (longestMatchIsAcceptedByMatchOrIsEmpty!1712 (regex!8170 (h!62841 rulesArg!165)) lt!2003886))))

(declare-fun res!2088541 () Bool)

(assert (=> b!4890232 (= res!2088541 (isEmpty!30244 (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003886 lt!2003886 (size!37124 lt!2003886)))))))

(declare-fun e!3057240 () Bool)

(assert (=> b!4890232 (=> res!2088541 e!3057240)))

(assert (=> b!4890232 e!3057240))

(declare-fun lt!2004332 () Unit!146378)

(assert (=> b!4890232 (= lt!2004332 lt!2004328)))

(declare-fun lt!2004331 () Unit!146378)

(assert (=> b!4890232 (= lt!2004331 (lemmaSemiInverse!2562 (transformation!8170 (h!62841 rulesArg!165)) (seqFromList!5932 (_1!33514 lt!2004330))))))

(declare-fun b!4890234 () Bool)

(declare-fun res!2088539 () Bool)

(assert (=> b!4890234 (=> (not res!2088539) (not e!3057239))))

(assert (=> b!4890234 (= res!2088539 (= (++!12241 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004329)))) (_2!33510 (get!19468 lt!2004329))) lt!2003886))))

(declare-fun b!4890235 () Bool)

(declare-fun res!2088544 () Bool)

(assert (=> b!4890235 (=> (not res!2088544) (not e!3057239))))

(assert (=> b!4890235 (= res!2088544 (< (size!37124 (_2!33510 (get!19468 lt!2004329))) (size!37124 lt!2003886)))))

(declare-fun b!4890236 () Bool)

(declare-fun e!3057238 () Bool)

(assert (=> b!4890236 (= e!3057238 e!3057239)))

(declare-fun res!2088540 () Bool)

(assert (=> b!4890236 (=> (not res!2088540) (not e!3057239))))

(assert (=> b!4890236 (= res!2088540 (matchR!6526 (regex!8170 (h!62841 rulesArg!165)) (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004329))))))))

(declare-fun b!4890237 () Bool)

(assert (=> b!4890237 (= e!3057240 (matchR!6526 (regex!8170 (h!62841 rulesArg!165)) (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003886 lt!2003886 (size!37124 lt!2003886)))))))

(declare-fun b!4890238 () Bool)

(assert (=> b!4890238 (= e!3057239 (= (size!37120 (_1!33510 (get!19468 lt!2004329))) (size!37124 (originalCharacters!8483 (_1!33510 (get!19468 lt!2004329))))))))

(declare-fun b!4890239 () Bool)

(declare-fun res!2088542 () Bool)

(assert (=> b!4890239 (=> (not res!2088542) (not e!3057239))))

(assert (=> b!4890239 (= res!2088542 (= (rule!11346 (_1!33510 (get!19468 lt!2004329))) (h!62841 rulesArg!165)))))

(declare-fun b!4890233 () Bool)

(assert (=> b!4890233 (= e!3057237 None!14016)))

(declare-fun d!1570328 () Bool)

(assert (=> d!1570328 e!3057238))

(declare-fun res!2088543 () Bool)

(assert (=> d!1570328 (=> res!2088543 e!3057238)))

(assert (=> d!1570328 (= res!2088543 (isEmpty!30241 lt!2004329))))

(assert (=> d!1570328 (= lt!2004329 e!3057237)))

(declare-fun c!831126 () Bool)

(assert (=> d!1570328 (= c!831126 (isEmpty!30244 (_1!33514 lt!2004330)))))

(assert (=> d!1570328 (= lt!2004330 (findLongestMatch!1645 (regex!8170 (h!62841 rulesArg!165)) lt!2003886))))

(assert (=> d!1570328 (ruleValid!3668 thiss!14805 (h!62841 rulesArg!165))))

(assert (=> d!1570328 (= (maxPrefixOneRule!3525 thiss!14805 (h!62841 rulesArg!165) lt!2003886) lt!2004329)))

(assert (= (and d!1570328 c!831126) b!4890233))

(assert (= (and d!1570328 (not c!831126)) b!4890232))

(assert (= (and b!4890232 (not res!2088541)) b!4890237))

(assert (= (and d!1570328 (not res!2088543)) b!4890236))

(assert (= (and b!4890236 res!2088540) b!4890234))

(assert (= (and b!4890234 res!2088539) b!4890235))

(assert (= (and b!4890235 res!2088544) b!4890239))

(assert (= (and b!4890239 res!2088542) b!4890231))

(assert (= (and b!4890231 res!2088545) b!4890238))

(assert (=> b!4890232 m!5892994))

(declare-fun m!5893706 () Bool)

(assert (=> b!4890232 m!5893706))

(declare-fun m!5893708 () Bool)

(assert (=> b!4890232 m!5893708))

(assert (=> b!4890232 m!5893706))

(assert (=> b!4890232 m!5892994))

(assert (=> b!4890232 m!5893060))

(declare-fun m!5893710 () Bool)

(assert (=> b!4890232 m!5893710))

(assert (=> b!4890232 m!5893060))

(assert (=> b!4890232 m!5893706))

(declare-fun m!5893712 () Bool)

(assert (=> b!4890232 m!5893712))

(declare-fun m!5893714 () Bool)

(assert (=> b!4890232 m!5893714))

(assert (=> b!4890232 m!5893706))

(declare-fun m!5893716 () Bool)

(assert (=> b!4890232 m!5893716))

(declare-fun m!5893718 () Bool)

(assert (=> b!4890232 m!5893718))

(declare-fun m!5893720 () Bool)

(assert (=> b!4890231 m!5893720))

(declare-fun m!5893722 () Bool)

(assert (=> b!4890231 m!5893722))

(assert (=> b!4890231 m!5893722))

(declare-fun m!5893724 () Bool)

(assert (=> b!4890231 m!5893724))

(assert (=> b!4890239 m!5893720))

(assert (=> b!4890237 m!5892994))

(assert (=> b!4890237 m!5893060))

(assert (=> b!4890237 m!5892994))

(assert (=> b!4890237 m!5893060))

(assert (=> b!4890237 m!5893710))

(declare-fun m!5893726 () Bool)

(assert (=> b!4890237 m!5893726))

(assert (=> b!4890235 m!5893720))

(declare-fun m!5893728 () Bool)

(assert (=> b!4890235 m!5893728))

(assert (=> b!4890235 m!5893060))

(assert (=> b!4890236 m!5893720))

(declare-fun m!5893730 () Bool)

(assert (=> b!4890236 m!5893730))

(assert (=> b!4890236 m!5893730))

(declare-fun m!5893732 () Bool)

(assert (=> b!4890236 m!5893732))

(assert (=> b!4890236 m!5893732))

(declare-fun m!5893734 () Bool)

(assert (=> b!4890236 m!5893734))

(declare-fun m!5893736 () Bool)

(assert (=> d!1570328 m!5893736))

(declare-fun m!5893738 () Bool)

(assert (=> d!1570328 m!5893738))

(declare-fun m!5893740 () Bool)

(assert (=> d!1570328 m!5893740))

(assert (=> d!1570328 m!5893022))

(assert (=> b!4890238 m!5893720))

(declare-fun m!5893742 () Bool)

(assert (=> b!4890238 m!5893742))

(assert (=> b!4890234 m!5893720))

(assert (=> b!4890234 m!5893730))

(assert (=> b!4890234 m!5893730))

(assert (=> b!4890234 m!5893732))

(assert (=> b!4890234 m!5893732))

(declare-fun m!5893744 () Bool)

(assert (=> b!4890234 m!5893744))

(assert (=> bm!339093 d!1570328))

(declare-fun d!1570330 () Bool)

(declare-fun res!2088552 () Bool)

(declare-fun e!3057243 () Bool)

(assert (=> d!1570330 (=> (not res!2088552) (not e!3057243))))

(assert (=> d!1570330 (= res!2088552 (= (csize!29706 (c!830999 input!1236)) (+ (size!37126 (left!40961 (c!830999 input!1236))) (size!37126 (right!41291 (c!830999 input!1236))))))))

(assert (=> d!1570330 (= (inv!72654 (c!830999 input!1236)) e!3057243)))

(declare-fun b!4890246 () Bool)

(declare-fun res!2088553 () Bool)

(assert (=> b!4890246 (=> (not res!2088553) (not e!3057243))))

(assert (=> b!4890246 (= res!2088553 (and (not (= (left!40961 (c!830999 input!1236)) Empty!14738)) (not (= (right!41291 (c!830999 input!1236)) Empty!14738))))))

(declare-fun b!4890247 () Bool)

(declare-fun res!2088554 () Bool)

(assert (=> b!4890247 (=> (not res!2088554) (not e!3057243))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4890247 (= res!2088554 (= (cheight!14949 (c!830999 input!1236)) (+ (max!0 (height!1953 (left!40961 (c!830999 input!1236))) (height!1953 (right!41291 (c!830999 input!1236)))) 1)))))

(declare-fun b!4890248 () Bool)

(assert (=> b!4890248 (= e!3057243 (<= 0 (cheight!14949 (c!830999 input!1236))))))

(assert (= (and d!1570330 res!2088552) b!4890246))

(assert (= (and b!4890246 res!2088553) b!4890247))

(assert (= (and b!4890247 res!2088554) b!4890248))

(declare-fun m!5893746 () Bool)

(assert (=> d!1570330 m!5893746))

(declare-fun m!5893748 () Bool)

(assert (=> d!1570330 m!5893748))

(assert (=> b!4890247 m!5893294))

(assert (=> b!4890247 m!5893296))

(assert (=> b!4890247 m!5893294))

(assert (=> b!4890247 m!5893296))

(declare-fun m!5893750 () Bool)

(assert (=> b!4890247 m!5893750))

(assert (=> b!4889656 d!1570330))

(declare-fun d!1570332 () Bool)

(declare-fun lt!2004333 () Int)

(assert (=> d!1570332 (>= lt!2004333 0)))

(declare-fun e!3057244 () Int)

(assert (=> d!1570332 (= lt!2004333 e!3057244)))

(declare-fun c!831127 () Bool)

(assert (=> d!1570332 (= c!831127 ((_ is Nil!56391) (_2!33510 (get!19468 lt!2004015))))))

(assert (=> d!1570332 (= (size!37124 (_2!33510 (get!19468 lt!2004015))) lt!2004333)))

(declare-fun b!4890249 () Bool)

(assert (=> b!4890249 (= e!3057244 0)))

(declare-fun b!4890250 () Bool)

(assert (=> b!4890250 (= e!3057244 (+ 1 (size!37124 (t!365185 (_2!33510 (get!19468 lt!2004015))))))))

(assert (= (and d!1570332 c!831127) b!4890249))

(assert (= (and d!1570332 (not c!831127)) b!4890250))

(declare-fun m!5893752 () Bool)

(assert (=> b!4890250 m!5893752))

(assert (=> b!4889642 d!1570332))

(assert (=> b!4889642 d!1570294))

(assert (=> b!4889642 d!1570298))

(declare-fun d!1570334 () Bool)

(declare-fun res!2088559 () Bool)

(declare-fun e!3057249 () Bool)

(assert (=> d!1570334 (=> res!2088559 e!3057249)))

(assert (=> d!1570334 (= res!2088559 ((_ is Nil!56393) rulesArg!165))))

(assert (=> d!1570334 (= (forall!13086 rulesArg!165 lambda!243926) e!3057249)))

(declare-fun b!4890255 () Bool)

(declare-fun e!3057250 () Bool)

(assert (=> b!4890255 (= e!3057249 e!3057250)))

(declare-fun res!2088560 () Bool)

(assert (=> b!4890255 (=> (not res!2088560) (not e!3057250))))

(declare-fun dynLambda!22610 (Int Rule!16140) Bool)

(assert (=> b!4890255 (= res!2088560 (dynLambda!22610 lambda!243926 (h!62841 rulesArg!165)))))

(declare-fun b!4890256 () Bool)

(assert (=> b!4890256 (= e!3057250 (forall!13086 (t!365187 rulesArg!165) lambda!243926))))

(assert (= (and d!1570334 (not res!2088559)) b!4890255))

(assert (= (and b!4890255 res!2088560) b!4890256))

(declare-fun b_lambda!194089 () Bool)

(assert (=> (not b_lambda!194089) (not b!4890255)))

(declare-fun m!5893754 () Bool)

(assert (=> b!4890255 m!5893754))

(declare-fun m!5893756 () Bool)

(assert (=> b!4890256 m!5893756))

(assert (=> d!1570128 d!1570334))

(declare-fun d!1570336 () Bool)

(assert (=> d!1570336 (= (isDefined!11030 lt!2004015) (not (isEmpty!30241 lt!2004015)))))

(declare-fun bs!1175771 () Bool)

(assert (= bs!1175771 d!1570336))

(assert (=> bs!1175771 m!5893052))

(assert (=> b!4889641 d!1570336))

(declare-fun bs!1175772 () Bool)

(declare-fun d!1570338 () Bool)

(assert (= bs!1175772 (and d!1570338 d!1570308)))

(declare-fun lambda!243946 () Int)

(assert (=> bs!1175772 (= lambda!243946 lambda!243940)))

(assert (=> d!1570338 true))

(assert (=> d!1570338 (< (dynLambda!22598 order!25441 (toValue!11057 (transformation!8170 (h!62841 rulesArg!165)))) (dynLambda!22609 order!25449 lambda!243946))))

(declare-fun Forall2!1265 (Int) Bool)

(assert (=> d!1570338 (= (equivClasses!3461 (toChars!10916 (transformation!8170 (h!62841 rulesArg!165))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165)))) (Forall2!1265 lambda!243946))))

(declare-fun bs!1175773 () Bool)

(assert (= bs!1175773 d!1570338))

(declare-fun m!5893758 () Bool)

(assert (=> bs!1175773 m!5893758))

(assert (=> b!4889661 d!1570338))

(declare-fun d!1570340 () Bool)

(declare-fun c!831128 () Bool)

(assert (=> d!1570340 (= c!831128 ((_ is Empty!14738) (c!830999 (_2!33509 lt!2003887))))))

(declare-fun e!3057253 () List!56515)

(assert (=> d!1570340 (= (list!17714 (c!830999 (_2!33509 lt!2003887))) e!3057253)))

(declare-fun b!4890261 () Bool)

(assert (=> b!4890261 (= e!3057253 Nil!56391)))

(declare-fun b!4890263 () Bool)

(declare-fun e!3057254 () List!56515)

(assert (=> b!4890263 (= e!3057254 (list!17716 (xs!18054 (c!830999 (_2!33509 lt!2003887)))))))

(declare-fun b!4890262 () Bool)

(assert (=> b!4890262 (= e!3057253 e!3057254)))

(declare-fun c!831129 () Bool)

(assert (=> b!4890262 (= c!831129 ((_ is Leaf!24540) (c!830999 (_2!33509 lt!2003887))))))

(declare-fun b!4890264 () Bool)

(assert (=> b!4890264 (= e!3057254 (++!12241 (list!17714 (left!40961 (c!830999 (_2!33509 lt!2003887)))) (list!17714 (right!41291 (c!830999 (_2!33509 lt!2003887))))))))

(assert (= (and d!1570340 c!831128) b!4890261))

(assert (= (and d!1570340 (not c!831128)) b!4890262))

(assert (= (and b!4890262 c!831129) b!4890263))

(assert (= (and b!4890262 (not c!831129)) b!4890264))

(declare-fun m!5893760 () Bool)

(assert (=> b!4890263 m!5893760))

(declare-fun m!5893762 () Bool)

(assert (=> b!4890264 m!5893762))

(declare-fun m!5893764 () Bool)

(assert (=> b!4890264 m!5893764))

(assert (=> b!4890264 m!5893762))

(assert (=> b!4890264 m!5893764))

(declare-fun m!5893766 () Bool)

(assert (=> b!4890264 m!5893766))

(assert (=> d!1570132 d!1570340))

(declare-fun d!1570342 () Bool)

(declare-fun lt!2004337 () Option!14017)

(assert (=> d!1570342 (= lt!2004337 (maxPrefix!4601 thiss!14805 (t!365187 rulesArg!165) lt!2003886))))

(declare-fun e!3057255 () Option!14017)

(assert (=> d!1570342 (= lt!2004337 e!3057255)))

(declare-fun c!831130 () Bool)

(assert (=> d!1570342 (= c!831130 (and ((_ is Cons!56393) (t!365187 rulesArg!165)) ((_ is Nil!56393) (t!365187 (t!365187 rulesArg!165)))))))

(declare-fun lt!2004338 () Unit!146378)

(declare-fun lt!2004335 () Unit!146378)

(assert (=> d!1570342 (= lt!2004338 lt!2004335)))

(assert (=> d!1570342 (isPrefix!4890 lt!2003886 lt!2003886)))

(assert (=> d!1570342 (= lt!2004335 (lemmaIsPrefixRefl!3287 lt!2003886 lt!2003886))))

(assert (=> d!1570342 (rulesValidInductive!3149 thiss!14805 (t!365187 rulesArg!165))))

(assert (=> d!1570342 (= (maxPrefixZipper!671 thiss!14805 (t!365187 rulesArg!165) lt!2003886) lt!2004337)))

(declare-fun call!339156 () Option!14017)

(declare-fun bm!339151 () Bool)

(assert (=> bm!339151 (= call!339156 (maxPrefixOneRuleZipper!256 thiss!14805 (h!62841 (t!365187 rulesArg!165)) lt!2003886))))

(declare-fun b!4890265 () Bool)

(assert (=> b!4890265 (= e!3057255 call!339156)))

(declare-fun b!4890266 () Bool)

(declare-fun lt!2004336 () Option!14017)

(declare-fun lt!2004334 () Option!14017)

(assert (=> b!4890266 (= e!3057255 (ite (and ((_ is None!14016) lt!2004336) ((_ is None!14016) lt!2004334)) None!14016 (ite ((_ is None!14016) lt!2004334) lt!2004336 (ite ((_ is None!14016) lt!2004336) lt!2004334 (ite (>= (size!37120 (_1!33510 (v!49966 lt!2004336))) (size!37120 (_1!33510 (v!49966 lt!2004334)))) lt!2004336 lt!2004334)))))))

(assert (=> b!4890266 (= lt!2004336 call!339156)))

(assert (=> b!4890266 (= lt!2004334 (maxPrefixZipper!671 thiss!14805 (t!365187 (t!365187 rulesArg!165)) lt!2003886))))

(assert (= (and d!1570342 c!831130) b!4890265))

(assert (= (and d!1570342 (not c!831130)) b!4890266))

(assert (= (or b!4890265 b!4890266) bm!339151))

(assert (=> d!1570342 m!5893034))

(assert (=> d!1570342 m!5892834))

(assert (=> d!1570342 m!5892836))

(assert (=> d!1570342 m!5893084))

(declare-fun m!5893768 () Bool)

(assert (=> bm!339151 m!5893768))

(declare-fun m!5893770 () Bool)

(assert (=> b!4890266 m!5893770))

(assert (=> b!4889494 d!1570342))

(declare-fun d!1570344 () Bool)

(declare-fun c!831131 () Bool)

(assert (=> d!1570344 (= c!831131 ((_ is Node!14738) (left!40961 (c!830999 input!1236))))))

(declare-fun e!3057256 () Bool)

(assert (=> d!1570344 (= (inv!72650 (left!40961 (c!830999 input!1236))) e!3057256)))

(declare-fun b!4890267 () Bool)

(assert (=> b!4890267 (= e!3057256 (inv!72654 (left!40961 (c!830999 input!1236))))))

(declare-fun b!4890268 () Bool)

(declare-fun e!3057257 () Bool)

(assert (=> b!4890268 (= e!3057256 e!3057257)))

(declare-fun res!2088563 () Bool)

(assert (=> b!4890268 (= res!2088563 (not ((_ is Leaf!24540) (left!40961 (c!830999 input!1236)))))))

(assert (=> b!4890268 (=> res!2088563 e!3057257)))

(declare-fun b!4890269 () Bool)

(assert (=> b!4890269 (= e!3057257 (inv!72655 (left!40961 (c!830999 input!1236))))))

(assert (= (and d!1570344 c!831131) b!4890267))

(assert (= (and d!1570344 (not c!831131)) b!4890268))

(assert (= (and b!4890268 (not res!2088563)) b!4890269))

(declare-fun m!5893772 () Bool)

(assert (=> b!4890267 m!5893772))

(declare-fun m!5893774 () Bool)

(assert (=> b!4890269 m!5893774))

(assert (=> b!4889701 d!1570344))

(declare-fun d!1570346 () Bool)

(declare-fun c!831132 () Bool)

(assert (=> d!1570346 (= c!831132 ((_ is Node!14738) (right!41291 (c!830999 input!1236))))))

(declare-fun e!3057258 () Bool)

(assert (=> d!1570346 (= (inv!72650 (right!41291 (c!830999 input!1236))) e!3057258)))

(declare-fun b!4890270 () Bool)

(assert (=> b!4890270 (= e!3057258 (inv!72654 (right!41291 (c!830999 input!1236))))))

(declare-fun b!4890271 () Bool)

(declare-fun e!3057259 () Bool)

(assert (=> b!4890271 (= e!3057258 e!3057259)))

(declare-fun res!2088564 () Bool)

(assert (=> b!4890271 (= res!2088564 (not ((_ is Leaf!24540) (right!41291 (c!830999 input!1236)))))))

(assert (=> b!4890271 (=> res!2088564 e!3057259)))

(declare-fun b!4890272 () Bool)

(assert (=> b!4890272 (= e!3057259 (inv!72655 (right!41291 (c!830999 input!1236))))))

(assert (= (and d!1570346 c!831132) b!4890270))

(assert (= (and d!1570346 (not c!831132)) b!4890271))

(assert (= (and b!4890271 (not res!2088564)) b!4890272))

(declare-fun m!5893776 () Bool)

(assert (=> b!4890270 m!5893776))

(declare-fun m!5893778 () Bool)

(assert (=> b!4890272 m!5893778))

(assert (=> b!4889701 d!1570346))

(declare-fun d!1570348 () Bool)

(assert (=> d!1570348 (= (inv!72656 (xs!18054 (c!830999 input!1236))) (<= (size!37124 (innerList!14826 (xs!18054 (c!830999 input!1236)))) 2147483647))))

(declare-fun bs!1175774 () Bool)

(assert (= bs!1175774 d!1570348))

(declare-fun m!5893780 () Bool)

(assert (=> bs!1175774 m!5893780))

(assert (=> b!4889702 d!1570348))

(assert (=> b!4889609 d!1570270))

(declare-fun d!1570350 () Bool)

(declare-fun lt!2004341 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10013 (List!56517) (InoxSet Rule!16140))

(assert (=> d!1570350 (= lt!2004341 (select (content!10013 rulesArg!165) (rule!11346 (_1!33510 (get!19468 lt!2004015)))))))

(declare-fun e!3057264 () Bool)

(assert (=> d!1570350 (= lt!2004341 e!3057264)))

(declare-fun res!2088570 () Bool)

(assert (=> d!1570350 (=> (not res!2088570) (not e!3057264))))

(assert (=> d!1570350 (= res!2088570 ((_ is Cons!56393) rulesArg!165))))

(assert (=> d!1570350 (= (contains!19435 rulesArg!165 (rule!11346 (_1!33510 (get!19468 lt!2004015)))) lt!2004341)))

(declare-fun b!4890277 () Bool)

(declare-fun e!3057265 () Bool)

(assert (=> b!4890277 (= e!3057264 e!3057265)))

(declare-fun res!2088569 () Bool)

(assert (=> b!4890277 (=> res!2088569 e!3057265)))

(assert (=> b!4890277 (= res!2088569 (= (h!62841 rulesArg!165) (rule!11346 (_1!33510 (get!19468 lt!2004015)))))))

(declare-fun b!4890278 () Bool)

(assert (=> b!4890278 (= e!3057265 (contains!19435 (t!365187 rulesArg!165) (rule!11346 (_1!33510 (get!19468 lt!2004015)))))))

(assert (= (and d!1570350 res!2088570) b!4890277))

(assert (= (and b!4890277 (not res!2088569)) b!4890278))

(declare-fun m!5893782 () Bool)

(assert (=> d!1570350 m!5893782))

(declare-fun m!5893784 () Bool)

(assert (=> d!1570350 m!5893784))

(declare-fun m!5893786 () Bool)

(assert (=> b!4890278 m!5893786))

(assert (=> b!4889648 d!1570350))

(assert (=> b!4889648 d!1570294))

(declare-fun d!1570352 () Bool)

(assert (=> d!1570352 (= (head!10451 lt!2003886) (h!62839 lt!2003886))))

(assert (=> b!4889671 d!1570352))

(declare-fun d!1570354 () Bool)

(declare-fun lt!2004354 () Option!14017)

(assert (=> d!1570354 (= lt!2004354 (maxPrefixOneRule!3525 thiss!14805 (h!62841 rulesArg!165) lt!2003886))))

(declare-fun e!3057270 () Option!14017)

(assert (=> d!1570354 (= lt!2004354 e!3057270)))

(declare-fun c!831135 () Bool)

(declare-fun lt!2004359 () tuple2!60422)

(assert (=> d!1570354 (= c!831135 (isEmpty!30244 (_1!33514 lt!2004359)))))

(declare-fun findLongestMatchWithZipper!80 (Regex!13245 List!56515) tuple2!60422)

(assert (=> d!1570354 (= lt!2004359 (findLongestMatchWithZipper!80 (regex!8170 (h!62841 rulesArg!165)) lt!2003886))))

(assert (=> d!1570354 (ruleValid!3668 thiss!14805 (h!62841 rulesArg!165))))

(assert (=> d!1570354 (= (maxPrefixOneRuleZipper!256 thiss!14805 (h!62841 rulesArg!165) lt!2003886) lt!2004354)))

(declare-fun b!4890285 () Bool)

(assert (=> b!4890285 (= e!3057270 None!14016)))

(declare-fun b!4890286 () Bool)

(assert (=> b!4890286 (= e!3057270 (Some!14016 (tuple2!60415 (Token!14905 (apply!13536 (transformation!8170 (h!62841 rulesArg!165)) (seqFromList!5932 (_1!33514 lt!2004359))) (h!62841 rulesArg!165) (size!37124 (_1!33514 lt!2004359)) (_1!33514 lt!2004359)) (_2!33514 lt!2004359))))))

(declare-fun lt!2004355 () Unit!146378)

(assert (=> b!4890286 (= lt!2004355 (longestMatchIsAcceptedByMatchOrIsEmpty!1712 (regex!8170 (h!62841 rulesArg!165)) lt!2003886))))

(declare-fun res!2088573 () Bool)

(assert (=> b!4890286 (= res!2088573 (isEmpty!30244 (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003886 lt!2003886 (size!37124 lt!2003886)))))))

(declare-fun e!3057271 () Bool)

(assert (=> b!4890286 (=> res!2088573 e!3057271)))

(assert (=> b!4890286 e!3057271))

(declare-fun lt!2004358 () Unit!146378)

(assert (=> b!4890286 (= lt!2004358 lt!2004355)))

(declare-fun lt!2004357 () Unit!146378)

(assert (=> b!4890286 (= lt!2004357 (lemmaInv!1232 (transformation!8170 (h!62841 rulesArg!165))))))

(declare-fun lt!2004356 () Unit!146378)

(assert (=> b!4890286 (= lt!2004356 (lemmaSemiInverse!2562 (transformation!8170 (h!62841 rulesArg!165)) (seqFromList!5932 (_1!33514 lt!2004359))))))

(declare-fun b!4890287 () Bool)

(assert (=> b!4890287 (= e!3057271 (matchR!6526 (regex!8170 (h!62841 rulesArg!165)) (_1!33514 (findLongestMatchInner!1749 (regex!8170 (h!62841 rulesArg!165)) Nil!56391 (size!37124 Nil!56391) lt!2003886 lt!2003886 (size!37124 lt!2003886)))))))

(assert (= (and d!1570354 c!831135) b!4890285))

(assert (= (and d!1570354 (not c!831135)) b!4890286))

(assert (= (and b!4890286 (not res!2088573)) b!4890287))

(assert (=> d!1570354 m!5893050))

(declare-fun m!5893788 () Bool)

(assert (=> d!1570354 m!5893788))

(declare-fun m!5893790 () Bool)

(assert (=> d!1570354 m!5893790))

(assert (=> d!1570354 m!5893022))

(assert (=> b!4890286 m!5893718))

(assert (=> b!4890286 m!5893714))

(declare-fun m!5893792 () Bool)

(assert (=> b!4890286 m!5893792))

(assert (=> b!4890286 m!5893010))

(assert (=> b!4890286 m!5893792))

(declare-fun m!5893794 () Bool)

(assert (=> b!4890286 m!5893794))

(declare-fun m!5893796 () Bool)

(assert (=> b!4890286 m!5893796))

(assert (=> b!4890286 m!5892994))

(assert (=> b!4890286 m!5892994))

(assert (=> b!4890286 m!5893060))

(assert (=> b!4890286 m!5893710))

(assert (=> b!4890286 m!5893060))

(assert (=> b!4890286 m!5893792))

(declare-fun m!5893798 () Bool)

(assert (=> b!4890286 m!5893798))

(assert (=> b!4890287 m!5892994))

(assert (=> b!4890287 m!5893060))

(assert (=> b!4890287 m!5892994))

(assert (=> b!4890287 m!5893060))

(assert (=> b!4890287 m!5893710))

(assert (=> b!4890287 m!5893726))

(assert (=> bm!339084 d!1570354))

(declare-fun b!4890288 () Bool)

(declare-fun e!3057275 () Bool)

(declare-fun lt!2004360 () Bool)

(assert (=> b!4890288 (= e!3057275 (not lt!2004360))))

(declare-fun b!4890289 () Bool)

(declare-fun e!3057277 () Bool)

(declare-fun call!339157 () Bool)

(assert (=> b!4890289 (= e!3057277 (= lt!2004360 call!339157))))

(declare-fun b!4890290 () Bool)

(declare-fun res!2088581 () Bool)

(declare-fun e!3057278 () Bool)

(assert (=> b!4890290 (=> (not res!2088581) (not e!3057278))))

(assert (=> b!4890290 (= res!2088581 (not call!339157))))

(declare-fun b!4890291 () Bool)

(declare-fun e!3057274 () Bool)

(assert (=> b!4890291 (= e!3057274 (matchR!6526 (derivativeStep!3875 (regex!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015)))) (head!10451 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015)))))) (tail!9597 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015)))))))))

(declare-fun d!1570356 () Bool)

(assert (=> d!1570356 e!3057277))

(declare-fun c!831137 () Bool)

(assert (=> d!1570356 (= c!831137 ((_ is EmptyExpr!13245) (regex!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015))))))))

(assert (=> d!1570356 (= lt!2004360 e!3057274)))

(declare-fun c!831136 () Bool)

(assert (=> d!1570356 (= c!831136 (isEmpty!30244 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015))))))))

(assert (=> d!1570356 (validRegex!5880 (regex!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015)))))))

(assert (=> d!1570356 (= (matchR!6526 (regex!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015)))) (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015))))) lt!2004360)))

(declare-fun b!4890292 () Bool)

(assert (=> b!4890292 (= e!3057278 (= (head!10451 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015))))) (c!831000 (regex!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015)))))))))

(declare-fun b!4890293 () Bool)

(declare-fun res!2088578 () Bool)

(declare-fun e!3057272 () Bool)

(assert (=> b!4890293 (=> res!2088578 e!3057272)))

(assert (=> b!4890293 (= res!2088578 (not (isEmpty!30244 (tail!9597 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015))))))))))

(declare-fun b!4890294 () Bool)

(declare-fun res!2088577 () Bool)

(declare-fun e!3057276 () Bool)

(assert (=> b!4890294 (=> res!2088577 e!3057276)))

(assert (=> b!4890294 (= res!2088577 (not ((_ is ElementMatch!13245) (regex!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015)))))))))

(assert (=> b!4890294 (= e!3057275 e!3057276)))

(declare-fun b!4890295 () Bool)

(assert (=> b!4890295 (= e!3057272 (not (= (head!10451 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015))))) (c!831000 (regex!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015))))))))))

(declare-fun b!4890296 () Bool)

(declare-fun res!2088580 () Bool)

(assert (=> b!4890296 (=> (not res!2088580) (not e!3057278))))

(assert (=> b!4890296 (= res!2088580 (isEmpty!30244 (tail!9597 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015)))))))))

(declare-fun b!4890297 () Bool)

(assert (=> b!4890297 (= e!3057274 (nullable!4553 (regex!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015))))))))

(declare-fun b!4890298 () Bool)

(declare-fun e!3057273 () Bool)

(assert (=> b!4890298 (= e!3057276 e!3057273)))

(declare-fun res!2088579 () Bool)

(assert (=> b!4890298 (=> (not res!2088579) (not e!3057273))))

(assert (=> b!4890298 (= res!2088579 (not lt!2004360))))

(declare-fun b!4890299 () Bool)

(assert (=> b!4890299 (= e!3057273 e!3057272)))

(declare-fun res!2088575 () Bool)

(assert (=> b!4890299 (=> res!2088575 e!3057272)))

(assert (=> b!4890299 (= res!2088575 call!339157)))

(declare-fun b!4890300 () Bool)

(declare-fun res!2088574 () Bool)

(assert (=> b!4890300 (=> res!2088574 e!3057276)))

(assert (=> b!4890300 (= res!2088574 e!3057278)))

(declare-fun res!2088576 () Bool)

(assert (=> b!4890300 (=> (not res!2088576) (not e!3057278))))

(assert (=> b!4890300 (= res!2088576 lt!2004360)))

(declare-fun bm!339152 () Bool)

(assert (=> bm!339152 (= call!339157 (isEmpty!30244 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015))))))))

(declare-fun b!4890301 () Bool)

(assert (=> b!4890301 (= e!3057277 e!3057275)))

(declare-fun c!831138 () Bool)

(assert (=> b!4890301 (= c!831138 ((_ is EmptyLang!13245) (regex!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015))))))))

(assert (= (and d!1570356 c!831136) b!4890297))

(assert (= (and d!1570356 (not c!831136)) b!4890291))

(assert (= (and d!1570356 c!831137) b!4890289))

(assert (= (and d!1570356 (not c!831137)) b!4890301))

(assert (= (and b!4890301 c!831138) b!4890288))

(assert (= (and b!4890301 (not c!831138)) b!4890294))

(assert (= (and b!4890294 (not res!2088577)) b!4890300))

(assert (= (and b!4890300 res!2088576) b!4890290))

(assert (= (and b!4890290 res!2088581) b!4890296))

(assert (= (and b!4890296 res!2088580) b!4890292))

(assert (= (and b!4890300 (not res!2088574)) b!4890298))

(assert (= (and b!4890298 res!2088579) b!4890299))

(assert (= (and b!4890299 (not res!2088575)) b!4890293))

(assert (= (and b!4890293 (not res!2088578)) b!4890295))

(assert (= (or b!4890289 b!4890290 b!4890299) bm!339152))

(assert (=> b!4890291 m!5893044))

(declare-fun m!5893800 () Bool)

(assert (=> b!4890291 m!5893800))

(assert (=> b!4890291 m!5893800))

(declare-fun m!5893802 () Bool)

(assert (=> b!4890291 m!5893802))

(assert (=> b!4890291 m!5893044))

(declare-fun m!5893804 () Bool)

(assert (=> b!4890291 m!5893804))

(assert (=> b!4890291 m!5893802))

(assert (=> b!4890291 m!5893804))

(declare-fun m!5893806 () Bool)

(assert (=> b!4890291 m!5893806))

(assert (=> bm!339152 m!5893044))

(declare-fun m!5893808 () Bool)

(assert (=> bm!339152 m!5893808))

(declare-fun m!5893810 () Bool)

(assert (=> b!4890297 m!5893810))

(assert (=> b!4890295 m!5893044))

(assert (=> b!4890295 m!5893800))

(assert (=> d!1570356 m!5893044))

(assert (=> d!1570356 m!5893808))

(declare-fun m!5893812 () Bool)

(assert (=> d!1570356 m!5893812))

(assert (=> b!4890296 m!5893044))

(assert (=> b!4890296 m!5893804))

(assert (=> b!4890296 m!5893804))

(declare-fun m!5893814 () Bool)

(assert (=> b!4890296 m!5893814))

(assert (=> b!4890292 m!5893044))

(assert (=> b!4890292 m!5893800))

(assert (=> b!4890293 m!5893044))

(assert (=> b!4890293 m!5893804))

(assert (=> b!4890293 m!5893804))

(assert (=> b!4890293 m!5893814))

(assert (=> b!4889647 d!1570356))

(assert (=> b!4889647 d!1570294))

(assert (=> b!4889647 d!1570290))

(assert (=> b!4889647 d!1570292))

(declare-fun b!4890305 () Bool)

(declare-fun e!3057279 () Bool)

(assert (=> b!4890305 (= e!3057279 (>= (size!37124 (tail!9597 lt!2003886)) (size!37124 (tail!9597 lt!2003886))))))

(declare-fun b!4890304 () Bool)

(declare-fun e!3057280 () Bool)

(assert (=> b!4890304 (= e!3057280 (isPrefix!4890 (tail!9597 (tail!9597 lt!2003886)) (tail!9597 (tail!9597 lt!2003886))))))

(declare-fun b!4890302 () Bool)

(declare-fun e!3057281 () Bool)

(assert (=> b!4890302 (= e!3057281 e!3057280)))

(declare-fun res!2088582 () Bool)

(assert (=> b!4890302 (=> (not res!2088582) (not e!3057280))))

(assert (=> b!4890302 (= res!2088582 (not ((_ is Nil!56391) (tail!9597 lt!2003886))))))

(declare-fun d!1570358 () Bool)

(assert (=> d!1570358 e!3057279))

(declare-fun res!2088584 () Bool)

(assert (=> d!1570358 (=> res!2088584 e!3057279)))

(declare-fun lt!2004361 () Bool)

(assert (=> d!1570358 (= res!2088584 (not lt!2004361))))

(assert (=> d!1570358 (= lt!2004361 e!3057281)))

(declare-fun res!2088585 () Bool)

(assert (=> d!1570358 (=> res!2088585 e!3057281)))

(assert (=> d!1570358 (= res!2088585 ((_ is Nil!56391) (tail!9597 lt!2003886)))))

(assert (=> d!1570358 (= (isPrefix!4890 (tail!9597 lt!2003886) (tail!9597 lt!2003886)) lt!2004361)))

(declare-fun b!4890303 () Bool)

(declare-fun res!2088583 () Bool)

(assert (=> b!4890303 (=> (not res!2088583) (not e!3057280))))

(assert (=> b!4890303 (= res!2088583 (= (head!10451 (tail!9597 lt!2003886)) (head!10451 (tail!9597 lt!2003886))))))

(assert (= (and d!1570358 (not res!2088585)) b!4890302))

(assert (= (and b!4890302 res!2088582) b!4890303))

(assert (= (and b!4890303 res!2088583) b!4890304))

(assert (= (and d!1570358 (not res!2088584)) b!4890305))

(assert (=> b!4890305 m!5893070))

(declare-fun m!5893816 () Bool)

(assert (=> b!4890305 m!5893816))

(assert (=> b!4890305 m!5893070))

(assert (=> b!4890305 m!5893816))

(assert (=> b!4890304 m!5893070))

(declare-fun m!5893818 () Bool)

(assert (=> b!4890304 m!5893818))

(assert (=> b!4890304 m!5893070))

(assert (=> b!4890304 m!5893818))

(assert (=> b!4890304 m!5893818))

(assert (=> b!4890304 m!5893818))

(declare-fun m!5893820 () Bool)

(assert (=> b!4890304 m!5893820))

(assert (=> b!4890303 m!5893070))

(declare-fun m!5893822 () Bool)

(assert (=> b!4890303 m!5893822))

(assert (=> b!4890303 m!5893070))

(assert (=> b!4890303 m!5893822))

(assert (=> b!4889672 d!1570358))

(declare-fun d!1570360 () Bool)

(assert (=> d!1570360 (= (tail!9597 lt!2003886) (t!365185 lt!2003886))))

(assert (=> b!4889672 d!1570360))

(declare-fun d!1570362 () Bool)

(declare-fun c!831139 () Bool)

(assert (=> d!1570362 (= c!831139 ((_ is Empty!14738) (c!830999 input!1236)))))

(declare-fun e!3057282 () List!56515)

(assert (=> d!1570362 (= (list!17714 (c!830999 input!1236)) e!3057282)))

(declare-fun b!4890306 () Bool)

(assert (=> b!4890306 (= e!3057282 Nil!56391)))

(declare-fun b!4890308 () Bool)

(declare-fun e!3057283 () List!56515)

(assert (=> b!4890308 (= e!3057283 (list!17716 (xs!18054 (c!830999 input!1236))))))

(declare-fun b!4890307 () Bool)

(assert (=> b!4890307 (= e!3057282 e!3057283)))

(declare-fun c!831140 () Bool)

(assert (=> b!4890307 (= c!831140 ((_ is Leaf!24540) (c!830999 input!1236)))))

(declare-fun b!4890309 () Bool)

(assert (=> b!4890309 (= e!3057283 (++!12241 (list!17714 (left!40961 (c!830999 input!1236))) (list!17714 (right!41291 (c!830999 input!1236)))))))

(assert (= (and d!1570362 c!831139) b!4890306))

(assert (= (and d!1570362 (not c!831139)) b!4890307))

(assert (= (and b!4890307 c!831140) b!4890308))

(assert (= (and b!4890307 (not c!831140)) b!4890309))

(declare-fun m!5893824 () Bool)

(assert (=> b!4890308 m!5893824))

(declare-fun m!5893826 () Bool)

(assert (=> b!4890309 m!5893826))

(declare-fun m!5893828 () Bool)

(assert (=> b!4890309 m!5893828))

(assert (=> b!4890309 m!5893826))

(assert (=> b!4890309 m!5893828))

(declare-fun m!5893830 () Bool)

(assert (=> b!4890309 m!5893830))

(assert (=> d!1570124 d!1570362))

(declare-fun d!1570364 () Bool)

(assert (=> d!1570364 (= (isEmpty!30242 lt!2003881) (not ((_ is Some!14017) lt!2003881)))))

(assert (=> d!1570072 d!1570364))

(assert (=> b!4889644 d!1570294))

(declare-fun d!1570366 () Bool)

(assert (=> d!1570366 (= (apply!13536 (transformation!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015)))) (seqFromList!5932 (originalCharacters!8483 (_1!33510 (get!19468 lt!2004015))))) (dynLambda!22607 (toValue!11057 (transformation!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015))))) (seqFromList!5932 (originalCharacters!8483 (_1!33510 (get!19468 lt!2004015))))))))

(declare-fun b_lambda!194091 () Bool)

(assert (=> (not b_lambda!194091) (not d!1570366)))

(declare-fun t!365241 () Bool)

(declare-fun tb!258515 () Bool)

(assert (=> (and b!4889461 (= (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))) (toValue!11057 (transformation!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015)))))) t!365241) tb!258515))

(declare-fun result!322040 () Bool)

(assert (=> tb!258515 (= result!322040 (inv!21 (dynLambda!22607 (toValue!11057 (transformation!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015))))) (seqFromList!5932 (originalCharacters!8483 (_1!33510 (get!19468 lt!2004015)))))))))

(declare-fun m!5893832 () Bool)

(assert (=> tb!258515 m!5893832))

(assert (=> d!1570366 t!365241))

(declare-fun b_and!344423 () Bool)

(assert (= b_and!344419 (and (=> t!365241 result!322040) b_and!344423)))

(declare-fun t!365243 () Bool)

(declare-fun tb!258517 () Bool)

(assert (=> (and b!4889692 (= (toValue!11057 (transformation!8170 (h!62841 (t!365187 rulesArg!165)))) (toValue!11057 (transformation!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015)))))) t!365243) tb!258517))

(declare-fun result!322042 () Bool)

(assert (= result!322042 result!322040))

(assert (=> d!1570366 t!365243))

(declare-fun b_and!344425 () Bool)

(assert (= b_and!344421 (and (=> t!365243 result!322042) b_and!344425)))

(assert (=> d!1570366 m!5893038))

(declare-fun m!5893834 () Bool)

(assert (=> d!1570366 m!5893834))

(assert (=> b!4889644 d!1570366))

(declare-fun d!1570368 () Bool)

(assert (=> d!1570368 (= (seqFromList!5932 (originalCharacters!8483 (_1!33510 (get!19468 lt!2004015)))) (fromListB!2689 (originalCharacters!8483 (_1!33510 (get!19468 lt!2004015)))))))

(declare-fun bs!1175775 () Bool)

(assert (= bs!1175775 d!1570368))

(declare-fun m!5893836 () Bool)

(assert (=> bs!1175775 m!5893836))

(assert (=> b!4889644 d!1570368))

(declare-fun b!4890318 () Bool)

(declare-fun e!3057289 () List!56515)

(assert (=> b!4890318 (= e!3057289 (_2!33510 (get!19468 lt!2004015)))))

(declare-fun b!4890320 () Bool)

(declare-fun res!2088591 () Bool)

(declare-fun e!3057290 () Bool)

(assert (=> b!4890320 (=> (not res!2088591) (not e!3057290))))

(declare-fun lt!2004364 () List!56515)

(assert (=> b!4890320 (= res!2088591 (= (size!37124 lt!2004364) (+ (size!37124 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015))))) (size!37124 (_2!33510 (get!19468 lt!2004015))))))))

(declare-fun b!4890319 () Bool)

(assert (=> b!4890319 (= e!3057289 (Cons!56391 (h!62839 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015))))) (++!12241 (t!365185 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015))))) (_2!33510 (get!19468 lt!2004015)))))))

(declare-fun b!4890321 () Bool)

(assert (=> b!4890321 (= e!3057290 (or (not (= (_2!33510 (get!19468 lt!2004015)) Nil!56391)) (= lt!2004364 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015)))))))))

(declare-fun d!1570370 () Bool)

(assert (=> d!1570370 e!3057290))

(declare-fun res!2088590 () Bool)

(assert (=> d!1570370 (=> (not res!2088590) (not e!3057290))))

(declare-fun content!10014 (List!56515) (InoxSet C!26688))

(assert (=> d!1570370 (= res!2088590 (= (content!10014 lt!2004364) ((_ map or) (content!10014 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015))))) (content!10014 (_2!33510 (get!19468 lt!2004015))))))))

(assert (=> d!1570370 (= lt!2004364 e!3057289)))

(declare-fun c!831143 () Bool)

(assert (=> d!1570370 (= c!831143 ((_ is Nil!56391) (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015))))))))

(assert (=> d!1570370 (= (++!12241 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004015)))) (_2!33510 (get!19468 lt!2004015))) lt!2004364)))

(assert (= (and d!1570370 c!831143) b!4890318))

(assert (= (and d!1570370 (not c!831143)) b!4890319))

(assert (= (and d!1570370 res!2088590) b!4890320))

(assert (= (and b!4890320 res!2088591) b!4890321))

(declare-fun m!5893838 () Bool)

(assert (=> b!4890320 m!5893838))

(assert (=> b!4890320 m!5893044))

(declare-fun m!5893840 () Bool)

(assert (=> b!4890320 m!5893840))

(assert (=> b!4890320 m!5893058))

(declare-fun m!5893842 () Bool)

(assert (=> b!4890319 m!5893842))

(declare-fun m!5893844 () Bool)

(assert (=> d!1570370 m!5893844))

(assert (=> d!1570370 m!5893044))

(declare-fun m!5893846 () Bool)

(assert (=> d!1570370 m!5893846))

(declare-fun m!5893848 () Bool)

(assert (=> d!1570370 m!5893848))

(assert (=> b!4889643 d!1570370))

(assert (=> b!4889643 d!1570290))

(assert (=> b!4889643 d!1570292))

(assert (=> b!4889643 d!1570294))

(declare-fun d!1570372 () Bool)

(declare-fun res!2088596 () Bool)

(declare-fun e!3057293 () Bool)

(assert (=> d!1570372 (=> (not res!2088596) (not e!3057293))))

(assert (=> d!1570372 (= res!2088596 (<= (size!37124 (list!17716 (xs!18054 (c!830999 input!1236)))) 512))))

(assert (=> d!1570372 (= (inv!72655 (c!830999 input!1236)) e!3057293)))

(declare-fun b!4890326 () Bool)

(declare-fun res!2088597 () Bool)

(assert (=> b!4890326 (=> (not res!2088597) (not e!3057293))))

(assert (=> b!4890326 (= res!2088597 (= (csize!29707 (c!830999 input!1236)) (size!37124 (list!17716 (xs!18054 (c!830999 input!1236))))))))

(declare-fun b!4890327 () Bool)

(assert (=> b!4890327 (= e!3057293 (and (> (csize!29707 (c!830999 input!1236)) 0) (<= (csize!29707 (c!830999 input!1236)) 512)))))

(assert (= (and d!1570372 res!2088596) b!4890326))

(assert (= (and b!4890326 res!2088597) b!4890327))

(assert (=> d!1570372 m!5893824))

(assert (=> d!1570372 m!5893824))

(declare-fun m!5893850 () Bool)

(assert (=> d!1570372 m!5893850))

(assert (=> b!4890326 m!5893824))

(assert (=> b!4890326 m!5893824))

(assert (=> b!4890326 m!5893850))

(assert (=> b!4889658 d!1570372))

(declare-fun d!1570374 () Bool)

(assert (=> d!1570374 (= (inv!72644 (tag!9034 (h!62841 (t!365187 rulesArg!165)))) (= (mod (str.len (value!261994 (tag!9034 (h!62841 (t!365187 rulesArg!165))))) 2) 0))))

(assert (=> b!4889691 d!1570374))

(declare-fun d!1570376 () Bool)

(declare-fun res!2088598 () Bool)

(declare-fun e!3057294 () Bool)

(assert (=> d!1570376 (=> (not res!2088598) (not e!3057294))))

(assert (=> d!1570376 (= res!2088598 (semiInverseModEq!3582 (toChars!10916 (transformation!8170 (h!62841 (t!365187 rulesArg!165)))) (toValue!11057 (transformation!8170 (h!62841 (t!365187 rulesArg!165))))))))

(assert (=> d!1570376 (= (inv!72648 (transformation!8170 (h!62841 (t!365187 rulesArg!165)))) e!3057294)))

(declare-fun b!4890328 () Bool)

(assert (=> b!4890328 (= e!3057294 (equivClasses!3461 (toChars!10916 (transformation!8170 (h!62841 (t!365187 rulesArg!165)))) (toValue!11057 (transformation!8170 (h!62841 (t!365187 rulesArg!165))))))))

(assert (= (and d!1570376 res!2088598) b!4890328))

(declare-fun m!5893852 () Bool)

(assert (=> d!1570376 m!5893852))

(declare-fun m!5893854 () Bool)

(assert (=> b!4890328 m!5893854))

(assert (=> b!4889691 d!1570376))

(declare-fun b!4890329 () Bool)

(declare-fun e!3057295 () Bool)

(declare-fun e!3057296 () Bool)

(assert (=> b!4890329 (= e!3057295 e!3057296)))

(declare-fun res!2088605 () Bool)

(assert (=> b!4890329 (=> (not res!2088605) (not e!3057296))))

(declare-fun lt!2004368 () Option!14017)

(assert (=> b!4890329 (= res!2088605 (isDefined!11030 lt!2004368))))

(declare-fun bm!339153 () Bool)

(declare-fun call!339158 () Option!14017)

(assert (=> bm!339153 (= call!339158 (maxPrefixOneRule!3525 thiss!14805 (h!62841 (t!365187 rulesArg!165)) lt!2003886))))

(declare-fun b!4890330 () Bool)

(declare-fun res!2088599 () Bool)

(assert (=> b!4890330 (=> (not res!2088599) (not e!3057296))))

(assert (=> b!4890330 (= res!2088599 (< (size!37124 (_2!33510 (get!19468 lt!2004368))) (size!37124 lt!2003886)))))

(declare-fun b!4890331 () Bool)

(declare-fun res!2088600 () Bool)

(assert (=> b!4890331 (=> (not res!2088600) (not e!3057296))))

(assert (=> b!4890331 (= res!2088600 (= (++!12241 (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004368)))) (_2!33510 (get!19468 lt!2004368))) lt!2003886))))

(declare-fun b!4890332 () Bool)

(declare-fun res!2088603 () Bool)

(assert (=> b!4890332 (=> (not res!2088603) (not e!3057296))))

(assert (=> b!4890332 (= res!2088603 (= (value!261995 (_1!33510 (get!19468 lt!2004368))) (apply!13536 (transformation!8170 (rule!11346 (_1!33510 (get!19468 lt!2004368)))) (seqFromList!5932 (originalCharacters!8483 (_1!33510 (get!19468 lt!2004368)))))))))

(declare-fun b!4890333 () Bool)

(declare-fun e!3057297 () Option!14017)

(declare-fun lt!2004365 () Option!14017)

(declare-fun lt!2004367 () Option!14017)

(assert (=> b!4890333 (= e!3057297 (ite (and ((_ is None!14016) lt!2004365) ((_ is None!14016) lt!2004367)) None!14016 (ite ((_ is None!14016) lt!2004367) lt!2004365 (ite ((_ is None!14016) lt!2004365) lt!2004367 (ite (>= (size!37120 (_1!33510 (v!49966 lt!2004365))) (size!37120 (_1!33510 (v!49966 lt!2004367)))) lt!2004365 lt!2004367)))))))

(assert (=> b!4890333 (= lt!2004365 call!339158)))

(assert (=> b!4890333 (= lt!2004367 (maxPrefix!4601 thiss!14805 (t!365187 (t!365187 rulesArg!165)) lt!2003886))))

(declare-fun d!1570378 () Bool)

(assert (=> d!1570378 e!3057295))

(declare-fun res!2088601 () Bool)

(assert (=> d!1570378 (=> res!2088601 e!3057295)))

(assert (=> d!1570378 (= res!2088601 (isEmpty!30241 lt!2004368))))

(assert (=> d!1570378 (= lt!2004368 e!3057297)))

(declare-fun c!831144 () Bool)

(assert (=> d!1570378 (= c!831144 (and ((_ is Cons!56393) (t!365187 rulesArg!165)) ((_ is Nil!56393) (t!365187 (t!365187 rulesArg!165)))))))

(declare-fun lt!2004369 () Unit!146378)

(declare-fun lt!2004366 () Unit!146378)

(assert (=> d!1570378 (= lt!2004369 lt!2004366)))

(assert (=> d!1570378 (isPrefix!4890 lt!2003886 lt!2003886)))

(assert (=> d!1570378 (= lt!2004366 (lemmaIsPrefixRefl!3287 lt!2003886 lt!2003886))))

(assert (=> d!1570378 (rulesValidInductive!3149 thiss!14805 (t!365187 rulesArg!165))))

(assert (=> d!1570378 (= (maxPrefix!4601 thiss!14805 (t!365187 rulesArg!165) lt!2003886) lt!2004368)))

(declare-fun b!4890334 () Bool)

(assert (=> b!4890334 (= e!3057297 call!339158)))

(declare-fun b!4890335 () Bool)

(declare-fun res!2088602 () Bool)

(assert (=> b!4890335 (=> (not res!2088602) (not e!3057296))))

(assert (=> b!4890335 (= res!2088602 (matchR!6526 (regex!8170 (rule!11346 (_1!33510 (get!19468 lt!2004368)))) (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004368))))))))

(declare-fun b!4890336 () Bool)

(assert (=> b!4890336 (= e!3057296 (contains!19435 (t!365187 rulesArg!165) (rule!11346 (_1!33510 (get!19468 lt!2004368)))))))

(declare-fun b!4890337 () Bool)

(declare-fun res!2088604 () Bool)

(assert (=> b!4890337 (=> (not res!2088604) (not e!3057296))))

(assert (=> b!4890337 (= res!2088604 (= (list!17712 (charsOf!5372 (_1!33510 (get!19468 lt!2004368)))) (originalCharacters!8483 (_1!33510 (get!19468 lt!2004368)))))))

(assert (= (and d!1570378 c!831144) b!4890334))

(assert (= (and d!1570378 (not c!831144)) b!4890333))

(assert (= (or b!4890334 b!4890333) bm!339153))

(assert (= (and d!1570378 (not res!2088601)) b!4890329))

(assert (= (and b!4890329 res!2088605) b!4890337))

(assert (= (and b!4890337 res!2088604) b!4890330))

(assert (= (and b!4890330 res!2088599) b!4890331))

(assert (= (and b!4890331 res!2088600) b!4890332))

(assert (= (and b!4890332 res!2088603) b!4890335))

(assert (= (and b!4890335 res!2088602) b!4890336))

(declare-fun m!5893856 () Bool)

(assert (=> b!4890333 m!5893856))

(declare-fun m!5893858 () Bool)

(assert (=> b!4890332 m!5893858))

(declare-fun m!5893860 () Bool)

(assert (=> b!4890332 m!5893860))

(assert (=> b!4890332 m!5893860))

(declare-fun m!5893862 () Bool)

(assert (=> b!4890332 m!5893862))

(assert (=> b!4890331 m!5893858))

(declare-fun m!5893864 () Bool)

(assert (=> b!4890331 m!5893864))

(assert (=> b!4890331 m!5893864))

(declare-fun m!5893866 () Bool)

(assert (=> b!4890331 m!5893866))

(assert (=> b!4890331 m!5893866))

(declare-fun m!5893868 () Bool)

(assert (=> b!4890331 m!5893868))

(assert (=> b!4890336 m!5893858))

(declare-fun m!5893870 () Bool)

(assert (=> b!4890336 m!5893870))

(declare-fun m!5893872 () Bool)

(assert (=> bm!339153 m!5893872))

(declare-fun m!5893874 () Bool)

(assert (=> d!1570378 m!5893874))

(assert (=> d!1570378 m!5892834))

(assert (=> d!1570378 m!5892836))

(assert (=> d!1570378 m!5893084))

(assert (=> b!4890337 m!5893858))

(assert (=> b!4890337 m!5893864))

(assert (=> b!4890337 m!5893864))

(assert (=> b!4890337 m!5893866))

(assert (=> b!4890335 m!5893858))

(assert (=> b!4890335 m!5893864))

(assert (=> b!4890335 m!5893864))

(assert (=> b!4890335 m!5893866))

(assert (=> b!4890335 m!5893866))

(declare-fun m!5893876 () Bool)

(assert (=> b!4890335 m!5893876))

(declare-fun m!5893878 () Bool)

(assert (=> b!4890329 m!5893878))

(assert (=> b!4890330 m!5893858))

(declare-fun m!5893880 () Bool)

(assert (=> b!4890330 m!5893880))

(assert (=> b!4890330 m!5893060))

(assert (=> b!4889645 d!1570378))

(declare-fun e!3057298 () Bool)

(declare-fun b!4890338 () Bool)

(declare-fun tp!1376469 () Bool)

(declare-fun tp!1376470 () Bool)

(assert (=> b!4890338 (= e!3057298 (and (inv!72650 (left!40961 (left!40961 (c!830999 input!1236)))) tp!1376470 (inv!72650 (right!41291 (left!40961 (c!830999 input!1236)))) tp!1376469))))

(declare-fun b!4890340 () Bool)

(declare-fun e!3057299 () Bool)

(declare-fun tp!1376471 () Bool)

(assert (=> b!4890340 (= e!3057299 tp!1376471)))

(declare-fun b!4890339 () Bool)

(assert (=> b!4890339 (= e!3057298 (and (inv!72656 (xs!18054 (left!40961 (c!830999 input!1236)))) e!3057299))))

(assert (=> b!4889701 (= tp!1376401 (and (inv!72650 (left!40961 (c!830999 input!1236))) e!3057298))))

(assert (= (and b!4889701 ((_ is Node!14738) (left!40961 (c!830999 input!1236)))) b!4890338))

(assert (= b!4890339 b!4890340))

(assert (= (and b!4889701 ((_ is Leaf!24540) (left!40961 (c!830999 input!1236)))) b!4890339))

(declare-fun m!5893882 () Bool)

(assert (=> b!4890338 m!5893882))

(declare-fun m!5893884 () Bool)

(assert (=> b!4890338 m!5893884))

(declare-fun m!5893886 () Bool)

(assert (=> b!4890339 m!5893886))

(assert (=> b!4889701 m!5893092))

(declare-fun tp!1376472 () Bool)

(declare-fun tp!1376473 () Bool)

(declare-fun e!3057300 () Bool)

(declare-fun b!4890341 () Bool)

(assert (=> b!4890341 (= e!3057300 (and (inv!72650 (left!40961 (right!41291 (c!830999 input!1236)))) tp!1376473 (inv!72650 (right!41291 (right!41291 (c!830999 input!1236)))) tp!1376472))))

(declare-fun b!4890343 () Bool)

(declare-fun e!3057301 () Bool)

(declare-fun tp!1376474 () Bool)

(assert (=> b!4890343 (= e!3057301 tp!1376474)))

(declare-fun b!4890342 () Bool)

(assert (=> b!4890342 (= e!3057300 (and (inv!72656 (xs!18054 (right!41291 (c!830999 input!1236)))) e!3057301))))

(assert (=> b!4889701 (= tp!1376400 (and (inv!72650 (right!41291 (c!830999 input!1236))) e!3057300))))

(assert (= (and b!4889701 ((_ is Node!14738) (right!41291 (c!830999 input!1236)))) b!4890341))

(assert (= b!4890342 b!4890343))

(assert (= (and b!4889701 ((_ is Leaf!24540) (right!41291 (c!830999 input!1236)))) b!4890342))

(declare-fun m!5893888 () Bool)

(assert (=> b!4890341 m!5893888))

(declare-fun m!5893890 () Bool)

(assert (=> b!4890341 m!5893890))

(declare-fun m!5893892 () Bool)

(assert (=> b!4890342 m!5893892))

(assert (=> b!4889701 m!5893094))

(declare-fun e!3057302 () Bool)

(assert (=> b!4889715 (= tp!1376417 e!3057302)))

(declare-fun b!4890344 () Bool)

(assert (=> b!4890344 (= e!3057302 tp_is_empty!35771)))

(declare-fun b!4890346 () Bool)

(declare-fun tp!1376476 () Bool)

(assert (=> b!4890346 (= e!3057302 tp!1376476)))

(declare-fun b!4890345 () Bool)

(declare-fun tp!1376479 () Bool)

(declare-fun tp!1376475 () Bool)

(assert (=> b!4890345 (= e!3057302 (and tp!1376479 tp!1376475))))

(declare-fun b!4890347 () Bool)

(declare-fun tp!1376478 () Bool)

(declare-fun tp!1376477 () Bool)

(assert (=> b!4890347 (= e!3057302 (and tp!1376478 tp!1376477))))

(assert (= (and b!4889715 ((_ is ElementMatch!13245) (regOne!27002 (regex!8170 (h!62841 rulesArg!165))))) b!4890344))

(assert (= (and b!4889715 ((_ is Concat!21726) (regOne!27002 (regex!8170 (h!62841 rulesArg!165))))) b!4890345))

(assert (= (and b!4889715 ((_ is Star!13245) (regOne!27002 (regex!8170 (h!62841 rulesArg!165))))) b!4890346))

(assert (= (and b!4889715 ((_ is Union!13245) (regOne!27002 (regex!8170 (h!62841 rulesArg!165))))) b!4890347))

(declare-fun e!3057303 () Bool)

(assert (=> b!4889715 (= tp!1376413 e!3057303)))

(declare-fun b!4890348 () Bool)

(assert (=> b!4890348 (= e!3057303 tp_is_empty!35771)))

(declare-fun b!4890350 () Bool)

(declare-fun tp!1376481 () Bool)

(assert (=> b!4890350 (= e!3057303 tp!1376481)))

(declare-fun b!4890349 () Bool)

(declare-fun tp!1376484 () Bool)

(declare-fun tp!1376480 () Bool)

(assert (=> b!4890349 (= e!3057303 (and tp!1376484 tp!1376480))))

(declare-fun b!4890351 () Bool)

(declare-fun tp!1376483 () Bool)

(declare-fun tp!1376482 () Bool)

(assert (=> b!4890351 (= e!3057303 (and tp!1376483 tp!1376482))))

(assert (= (and b!4889715 ((_ is ElementMatch!13245) (regTwo!27002 (regex!8170 (h!62841 rulesArg!165))))) b!4890348))

(assert (= (and b!4889715 ((_ is Concat!21726) (regTwo!27002 (regex!8170 (h!62841 rulesArg!165))))) b!4890349))

(assert (= (and b!4889715 ((_ is Star!13245) (regTwo!27002 (regex!8170 (h!62841 rulesArg!165))))) b!4890350))

(assert (= (and b!4889715 ((_ is Union!13245) (regTwo!27002 (regex!8170 (h!62841 rulesArg!165))))) b!4890351))

(declare-fun e!3057304 () Bool)

(assert (=> b!4889716 (= tp!1376414 e!3057304)))

(declare-fun b!4890352 () Bool)

(assert (=> b!4890352 (= e!3057304 tp_is_empty!35771)))

(declare-fun b!4890354 () Bool)

(declare-fun tp!1376486 () Bool)

(assert (=> b!4890354 (= e!3057304 tp!1376486)))

(declare-fun b!4890353 () Bool)

(declare-fun tp!1376489 () Bool)

(declare-fun tp!1376485 () Bool)

(assert (=> b!4890353 (= e!3057304 (and tp!1376489 tp!1376485))))

(declare-fun b!4890355 () Bool)

(declare-fun tp!1376488 () Bool)

(declare-fun tp!1376487 () Bool)

(assert (=> b!4890355 (= e!3057304 (and tp!1376488 tp!1376487))))

(assert (= (and b!4889716 ((_ is ElementMatch!13245) (reg!13574 (regex!8170 (h!62841 rulesArg!165))))) b!4890352))

(assert (= (and b!4889716 ((_ is Concat!21726) (reg!13574 (regex!8170 (h!62841 rulesArg!165))))) b!4890353))

(assert (= (and b!4889716 ((_ is Star!13245) (reg!13574 (regex!8170 (h!62841 rulesArg!165))))) b!4890354))

(assert (= (and b!4889716 ((_ is Union!13245) (reg!13574 (regex!8170 (h!62841 rulesArg!165))))) b!4890355))

(declare-fun b!4890360 () Bool)

(declare-fun e!3057307 () Bool)

(declare-fun tp!1376492 () Bool)

(assert (=> b!4890360 (= e!3057307 (and tp_is_empty!35771 tp!1376492))))

(assert (=> b!4889703 (= tp!1376402 e!3057307)))

(assert (= (and b!4889703 ((_ is Cons!56391) (innerList!14826 (xs!18054 (c!830999 input!1236))))) b!4890360))

(declare-fun b!4890363 () Bool)

(declare-fun b_free!131515 () Bool)

(declare-fun b_next!132305 () Bool)

(assert (=> b!4890363 (= b_free!131515 (not b_next!132305))))

(declare-fun t!365245 () Bool)

(declare-fun tb!258519 () Bool)

(assert (=> (and b!4890363 (= (toValue!11057 (transformation!8170 (h!62841 (t!365187 (t!365187 rulesArg!165))))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165)))) t!365245) tb!258519))

(declare-fun result!322046 () Bool)

(assert (= result!322046 result!322030))

(assert (=> d!1570302 t!365245))

(assert (=> d!1570308 t!365245))

(declare-fun t!365247 () Bool)

(declare-fun tb!258521 () Bool)

(assert (=> (and b!4890363 (= (toValue!11057 (transformation!8170 (h!62841 (t!365187 (t!365187 rulesArg!165))))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165)))) t!365247) tb!258521))

(declare-fun result!322048 () Bool)

(assert (= result!322048 result!322036))

(assert (=> d!1570308 t!365247))

(declare-fun t!365249 () Bool)

(declare-fun tb!258523 () Bool)

(assert (=> (and b!4890363 (= (toValue!11057 (transformation!8170 (h!62841 (t!365187 (t!365187 rulesArg!165))))) (toValue!11057 (transformation!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015)))))) t!365249) tb!258523))

(declare-fun result!322050 () Bool)

(assert (= result!322050 result!322040))

(assert (=> d!1570366 t!365249))

(declare-fun b_and!344427 () Bool)

(declare-fun tp!1376493 () Bool)

(assert (=> b!4890363 (= tp!1376493 (and (=> t!365245 result!322046) (=> t!365247 result!322048) (=> t!365249 result!322050) b_and!344427))))

(declare-fun b_free!131517 () Bool)

(declare-fun b_next!132307 () Bool)

(assert (=> b!4890363 (= b_free!131517 (not b_next!132307))))

(declare-fun t!365251 () Bool)

(declare-fun tb!258525 () Bool)

(assert (=> (and b!4890363 (= (toChars!10916 (transformation!8170 (h!62841 (t!365187 (t!365187 rulesArg!165))))) (toChars!10916 (transformation!8170 (rule!11346 (_1!33510 (get!19468 lt!2004015)))))) t!365251) tb!258525))

(declare-fun result!322052 () Bool)

(assert (= result!322052 result!322024))

(assert (=> d!1570292 t!365251))

(declare-fun tp!1376495 () Bool)

(declare-fun b_and!344429 () Bool)

(assert (=> b!4890363 (= tp!1376495 (and (=> t!365251 result!322052) b_and!344429))))

(declare-fun e!3057309 () Bool)

(assert (=> b!4890363 (= e!3057309 (and tp!1376493 tp!1376495))))

(declare-fun e!3057311 () Bool)

(declare-fun b!4890362 () Bool)

(declare-fun tp!1376494 () Bool)

(assert (=> b!4890362 (= e!3057311 (and tp!1376494 (inv!72644 (tag!9034 (h!62841 (t!365187 (t!365187 rulesArg!165))))) (inv!72648 (transformation!8170 (h!62841 (t!365187 (t!365187 rulesArg!165))))) e!3057309))))

(declare-fun b!4890361 () Bool)

(declare-fun e!3057310 () Bool)

(declare-fun tp!1376496 () Bool)

(assert (=> b!4890361 (= e!3057310 (and e!3057311 tp!1376496))))

(assert (=> b!4889690 (= tp!1376393 e!3057310)))

(assert (= b!4890362 b!4890363))

(assert (= b!4890361 b!4890362))

(assert (= (and b!4889690 ((_ is Cons!56393) (t!365187 (t!365187 rulesArg!165)))) b!4890361))

(declare-fun m!5893894 () Bool)

(assert (=> b!4890362 m!5893894))

(declare-fun m!5893896 () Bool)

(assert (=> b!4890362 m!5893896))

(declare-fun e!3057312 () Bool)

(assert (=> b!4889691 (= tp!1376391 e!3057312)))

(declare-fun b!4890364 () Bool)

(assert (=> b!4890364 (= e!3057312 tp_is_empty!35771)))

(declare-fun b!4890366 () Bool)

(declare-fun tp!1376498 () Bool)

(assert (=> b!4890366 (= e!3057312 tp!1376498)))

(declare-fun b!4890365 () Bool)

(declare-fun tp!1376501 () Bool)

(declare-fun tp!1376497 () Bool)

(assert (=> b!4890365 (= e!3057312 (and tp!1376501 tp!1376497))))

(declare-fun b!4890367 () Bool)

(declare-fun tp!1376500 () Bool)

(declare-fun tp!1376499 () Bool)

(assert (=> b!4890367 (= e!3057312 (and tp!1376500 tp!1376499))))

(assert (= (and b!4889691 ((_ is ElementMatch!13245) (regex!8170 (h!62841 (t!365187 rulesArg!165))))) b!4890364))

(assert (= (and b!4889691 ((_ is Concat!21726) (regex!8170 (h!62841 (t!365187 rulesArg!165))))) b!4890365))

(assert (= (and b!4889691 ((_ is Star!13245) (regex!8170 (h!62841 (t!365187 rulesArg!165))))) b!4890366))

(assert (= (and b!4889691 ((_ is Union!13245) (regex!8170 (h!62841 (t!365187 rulesArg!165))))) b!4890367))

(declare-fun e!3057313 () Bool)

(assert (=> b!4889717 (= tp!1376416 e!3057313)))

(declare-fun b!4890368 () Bool)

(assert (=> b!4890368 (= e!3057313 tp_is_empty!35771)))

(declare-fun b!4890370 () Bool)

(declare-fun tp!1376503 () Bool)

(assert (=> b!4890370 (= e!3057313 tp!1376503)))

(declare-fun b!4890369 () Bool)

(declare-fun tp!1376506 () Bool)

(declare-fun tp!1376502 () Bool)

(assert (=> b!4890369 (= e!3057313 (and tp!1376506 tp!1376502))))

(declare-fun b!4890371 () Bool)

(declare-fun tp!1376505 () Bool)

(declare-fun tp!1376504 () Bool)

(assert (=> b!4890371 (= e!3057313 (and tp!1376505 tp!1376504))))

(assert (= (and b!4889717 ((_ is ElementMatch!13245) (regOne!27003 (regex!8170 (h!62841 rulesArg!165))))) b!4890368))

(assert (= (and b!4889717 ((_ is Concat!21726) (regOne!27003 (regex!8170 (h!62841 rulesArg!165))))) b!4890369))

(assert (= (and b!4889717 ((_ is Star!13245) (regOne!27003 (regex!8170 (h!62841 rulesArg!165))))) b!4890370))

(assert (= (and b!4889717 ((_ is Union!13245) (regOne!27003 (regex!8170 (h!62841 rulesArg!165))))) b!4890371))

(declare-fun e!3057314 () Bool)

(assert (=> b!4889717 (= tp!1376415 e!3057314)))

(declare-fun b!4890372 () Bool)

(assert (=> b!4890372 (= e!3057314 tp_is_empty!35771)))

(declare-fun b!4890374 () Bool)

(declare-fun tp!1376508 () Bool)

(assert (=> b!4890374 (= e!3057314 tp!1376508)))

(declare-fun b!4890373 () Bool)

(declare-fun tp!1376511 () Bool)

(declare-fun tp!1376507 () Bool)

(assert (=> b!4890373 (= e!3057314 (and tp!1376511 tp!1376507))))

(declare-fun b!4890375 () Bool)

(declare-fun tp!1376510 () Bool)

(declare-fun tp!1376509 () Bool)

(assert (=> b!4890375 (= e!3057314 (and tp!1376510 tp!1376509))))

(assert (= (and b!4889717 ((_ is ElementMatch!13245) (regTwo!27003 (regex!8170 (h!62841 rulesArg!165))))) b!4890372))

(assert (= (and b!4889717 ((_ is Concat!21726) (regTwo!27003 (regex!8170 (h!62841 rulesArg!165))))) b!4890373))

(assert (= (and b!4889717 ((_ is Star!13245) (regTwo!27003 (regex!8170 (h!62841 rulesArg!165))))) b!4890374))

(assert (= (and b!4889717 ((_ is Union!13245) (regTwo!27003 (regex!8170 (h!62841 rulesArg!165))))) b!4890375))

(declare-fun b_lambda!194093 () Bool)

(assert (= b_lambda!194079 (or (and b!4889461 b_free!131499) (and b!4889692 b_free!131507 (= (toValue!11057 (transformation!8170 (h!62841 (t!365187 rulesArg!165)))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))))) (and b!4890363 b_free!131515 (= (toValue!11057 (transformation!8170 (h!62841 (t!365187 (t!365187 rulesArg!165))))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))))) b_lambda!194093)))

(declare-fun b_lambda!194095 () Bool)

(assert (= b_lambda!194085 (or (and b!4889461 b_free!131499) (and b!4889692 b_free!131507 (= (toValue!11057 (transformation!8170 (h!62841 (t!365187 rulesArg!165)))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))))) (and b!4890363 b_free!131515 (= (toValue!11057 (transformation!8170 (h!62841 (t!365187 (t!365187 rulesArg!165))))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))))) b_lambda!194095)))

(declare-fun b_lambda!194097 () Bool)

(assert (= b_lambda!194081 (or b!4889611 b_lambda!194097)))

(declare-fun bs!1175776 () Bool)

(declare-fun d!1570380 () Bool)

(assert (= bs!1175776 (and d!1570380 b!4889611)))

(assert (=> bs!1175776 (= (dynLambda!22608 lambda!243923 (seqFromList!5932 (list!17712 (_1!33513 lt!2003998)))) (= (list!17712 (dynLambda!22606 (toChars!10916 (transformation!8170 (h!62841 rulesArg!165))) (dynLambda!22607 (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))) (seqFromList!5932 (list!17712 (_1!33513 lt!2003998)))))) (list!17712 (seqFromList!5932 (list!17712 (_1!33513 lt!2003998))))))))

(declare-fun b_lambda!194105 () Bool)

(assert (=> (not b_lambda!194105) (not bs!1175776)))

(declare-fun t!365253 () Bool)

(declare-fun tb!258527 () Bool)

(assert (=> (and b!4889461 (= (toChars!10916 (transformation!8170 (h!62841 rulesArg!165))) (toChars!10916 (transformation!8170 (h!62841 rulesArg!165)))) t!365253) tb!258527))

(declare-fun e!3057315 () Bool)

(declare-fun tp!1376512 () Bool)

(declare-fun b!4890376 () Bool)

(assert (=> b!4890376 (= e!3057315 (and (inv!72650 (c!830999 (dynLambda!22606 (toChars!10916 (transformation!8170 (h!62841 rulesArg!165))) (dynLambda!22607 (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))) (seqFromList!5932 (list!17712 (_1!33513 lt!2003998))))))) tp!1376512))))

(declare-fun result!322054 () Bool)

(assert (=> tb!258527 (= result!322054 (and (inv!72649 (dynLambda!22606 (toChars!10916 (transformation!8170 (h!62841 rulesArg!165))) (dynLambda!22607 (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))) (seqFromList!5932 (list!17712 (_1!33513 lt!2003998)))))) e!3057315))))

(assert (= tb!258527 b!4890376))

(declare-fun m!5893898 () Bool)

(assert (=> b!4890376 m!5893898))

(declare-fun m!5893900 () Bool)

(assert (=> tb!258527 m!5893900))

(assert (=> bs!1175776 t!365253))

(declare-fun b_and!344431 () Bool)

(assert (= b_and!344407 (and (=> t!365253 result!322054) b_and!344431)))

(declare-fun t!365255 () Bool)

(declare-fun tb!258529 () Bool)

(assert (=> (and b!4889692 (= (toChars!10916 (transformation!8170 (h!62841 (t!365187 rulesArg!165)))) (toChars!10916 (transformation!8170 (h!62841 rulesArg!165)))) t!365255) tb!258529))

(declare-fun result!322056 () Bool)

(assert (= result!322056 result!322054))

(assert (=> bs!1175776 t!365255))

(declare-fun b_and!344433 () Bool)

(assert (= b_and!344409 (and (=> t!365255 result!322056) b_and!344433)))

(declare-fun t!365257 () Bool)

(declare-fun tb!258531 () Bool)

(assert (=> (and b!4890363 (= (toChars!10916 (transformation!8170 (h!62841 (t!365187 (t!365187 rulesArg!165))))) (toChars!10916 (transformation!8170 (h!62841 rulesArg!165)))) t!365257) tb!258531))

(declare-fun result!322058 () Bool)

(assert (= result!322058 result!322054))

(assert (=> bs!1175776 t!365257))

(declare-fun b_and!344435 () Bool)

(assert (= b_and!344429 (and (=> t!365257 result!322058) b_and!344435)))

(declare-fun b_lambda!194107 () Bool)

(assert (=> (not b_lambda!194107) (not bs!1175776)))

(assert (=> bs!1175776 t!365236))

(declare-fun b_and!344437 () Bool)

(assert (= b_and!344423 (and (=> t!365236 result!322036) b_and!344437)))

(assert (=> bs!1175776 t!365238))

(declare-fun b_and!344439 () Bool)

(assert (= b_and!344425 (and (=> t!365238 result!322038) b_and!344439)))

(assert (=> bs!1175776 t!365247))

(declare-fun b_and!344441 () Bool)

(assert (= b_and!344427 (and (=> t!365247 result!322048) b_and!344441)))

(assert (=> bs!1175776 m!5893006))

(assert (=> bs!1175776 m!5893686))

(declare-fun m!5893902 () Bool)

(assert (=> bs!1175776 m!5893902))

(declare-fun m!5893904 () Bool)

(assert (=> bs!1175776 m!5893904))

(assert (=> bs!1175776 m!5893006))

(assert (=> bs!1175776 m!5893684))

(assert (=> bs!1175776 m!5893686))

(assert (=> bs!1175776 m!5893902))

(assert (=> d!1570304 d!1570380))

(declare-fun b_lambda!194099 () Bool)

(assert (= b_lambda!194089 (or d!1570128 b_lambda!194099)))

(declare-fun bs!1175777 () Bool)

(declare-fun d!1570382 () Bool)

(assert (= bs!1175777 (and d!1570382 d!1570128)))

(assert (=> bs!1175777 (= (dynLambda!22610 lambda!243926 (h!62841 rulesArg!165)) (ruleValid!3668 thiss!14805 (h!62841 rulesArg!165)))))

(assert (=> bs!1175777 m!5893022))

(assert (=> b!4890255 d!1570382))

(declare-fun b_lambda!194101 () Bool)

(assert (= b_lambda!194083 (or (and b!4889461 b_free!131499) (and b!4889692 b_free!131507 (= (toValue!11057 (transformation!8170 (h!62841 (t!365187 rulesArg!165)))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))))) (and b!4890363 b_free!131515 (= (toValue!11057 (transformation!8170 (h!62841 (t!365187 (t!365187 rulesArg!165))))) (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))))) b_lambda!194101)))

(declare-fun b_lambda!194103 () Bool)

(assert (= b_lambda!194087 (or b!4889611 b_lambda!194103)))

(declare-fun bs!1175778 () Bool)

(declare-fun d!1570384 () Bool)

(assert (= bs!1175778 (and d!1570384 b!4889611)))

(assert (=> bs!1175778 (= (dynLambda!22608 lambda!243923 (_1!33513 lt!2003998)) (= (list!17712 (dynLambda!22606 (toChars!10916 (transformation!8170 (h!62841 rulesArg!165))) (dynLambda!22607 (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))) (_1!33513 lt!2003998)))) (list!17712 (_1!33513 lt!2003998))))))

(declare-fun b_lambda!194109 () Bool)

(assert (=> (not b_lambda!194109) (not bs!1175778)))

(declare-fun t!365259 () Bool)

(declare-fun tb!258533 () Bool)

(assert (=> (and b!4889461 (= (toChars!10916 (transformation!8170 (h!62841 rulesArg!165))) (toChars!10916 (transformation!8170 (h!62841 rulesArg!165)))) t!365259) tb!258533))

(declare-fun b!4890377 () Bool)

(declare-fun tp!1376513 () Bool)

(declare-fun e!3057316 () Bool)

(assert (=> b!4890377 (= e!3057316 (and (inv!72650 (c!830999 (dynLambda!22606 (toChars!10916 (transformation!8170 (h!62841 rulesArg!165))) (dynLambda!22607 (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))) (_1!33513 lt!2003998))))) tp!1376513))))

(declare-fun result!322060 () Bool)

(assert (=> tb!258533 (= result!322060 (and (inv!72649 (dynLambda!22606 (toChars!10916 (transformation!8170 (h!62841 rulesArg!165))) (dynLambda!22607 (toValue!11057 (transformation!8170 (h!62841 rulesArg!165))) (_1!33513 lt!2003998)))) e!3057316))))

(assert (= tb!258533 b!4890377))

(declare-fun m!5893906 () Bool)

(assert (=> b!4890377 m!5893906))

(declare-fun m!5893908 () Bool)

(assert (=> tb!258533 m!5893908))

(assert (=> bs!1175778 t!365259))

(declare-fun b_and!344443 () Bool)

(assert (= b_and!344431 (and (=> t!365259 result!322060) b_and!344443)))

(declare-fun t!365261 () Bool)

(declare-fun tb!258535 () Bool)

(assert (=> (and b!4889692 (= (toChars!10916 (transformation!8170 (h!62841 (t!365187 rulesArg!165)))) (toChars!10916 (transformation!8170 (h!62841 rulesArg!165)))) t!365261) tb!258535))

(declare-fun result!322062 () Bool)

(assert (= result!322062 result!322060))

(assert (=> bs!1175778 t!365261))

(declare-fun b_and!344445 () Bool)

(assert (= b_and!344433 (and (=> t!365261 result!322062) b_and!344445)))

(declare-fun t!365263 () Bool)

(declare-fun tb!258537 () Bool)

(assert (=> (and b!4890363 (= (toChars!10916 (transformation!8170 (h!62841 (t!365187 (t!365187 rulesArg!165))))) (toChars!10916 (transformation!8170 (h!62841 rulesArg!165)))) t!365263) tb!258537))

(declare-fun result!322064 () Bool)

(assert (= result!322064 result!322060))

(assert (=> bs!1175778 t!365263))

(declare-fun b_and!344447 () Bool)

(assert (= b_and!344435 (and (=> t!365263 result!322064) b_and!344447)))

(declare-fun b_lambda!194111 () Bool)

(assert (=> (not b_lambda!194111) (not bs!1175778)))

(assert (=> bs!1175778 t!365232))

(declare-fun b_and!344449 () Bool)

(assert (= b_and!344437 (and (=> t!365232 result!322030) b_and!344449)))

(assert (=> bs!1175778 t!365234))

(declare-fun b_and!344451 () Bool)

(assert (= b_and!344439 (and (=> t!365234 result!322034) b_and!344451)))

(assert (=> bs!1175778 t!365245))

(declare-fun b_and!344453 () Bool)

(assert (= b_and!344441 (and (=> t!365245 result!322046) b_and!344453)))

(assert (=> bs!1175778 m!5893670))

(declare-fun m!5893910 () Bool)

(assert (=> bs!1175778 m!5893910))

(declare-fun m!5893912 () Bool)

(assert (=> bs!1175778 m!5893912))

(assert (=> bs!1175778 m!5893002))

(assert (=> bs!1175778 m!5893670))

(assert (=> bs!1175778 m!5893910))

(assert (=> d!1570310 d!1570384))

(check-sat (not bm!339151) (not b_lambda!194101) (not d!1570280) b_and!344451 (not b!4889968) (not b!4890369) (not b!4890375) (not b!4890264) (not b!4889921) (not bm!339145) (not d!1570330) (not b!4890297) (not b!4890292) (not b!4890342) (not b!4890295) (not tb!258503) (not d!1570338) (not b!4890346) (not b_next!132297) (not b!4890330) (not d!1570378) (not d!1570368) (not b!4890116) (not d!1570372) (not b!4890345) (not b!4889900) (not b!4889971) (not b!4890308) (not b!4890319) (not b_next!132299) (not b!4890320) (not b_lambda!194099) (not bm!339146) (not b!4890326) (not bm!339152) (not b!4890293) (not d!1570354) (not b!4890231) (not b!4890367) (not b!4890229) (not b!4890361) (not b!4890336) (not b!4890353) (not b_next!132305) (not b!4889901) (not d!1570270) (not b!4890351) (not d!1570204) (not b!4890272) (not b_lambda!194091) (not b!4890247) (not b_lambda!194107) (not d!1570318) tp_is_empty!35771 (not b!4890214) (not b!4889898) (not d!1570308) (not d!1570292) (not d!1570370) (not b!4890278) (not b!4890236) (not b!4890270) (not d!1570206) (not b!4889970) (not b_lambda!194093) (not b_next!132291) (not d!1570348) (not b_next!132289) (not d!1570306) (not b!4890350) (not b!4890362) (not b!4889927) (not b!4890211) (not b!4890343) (not d!1570324) (not bs!1175776) (not bm!339144) (not d!1570314) (not b!4890267) (not b!4890143) (not b!4889926) (not b!4890328) (not bm!339101) (not d!1570350) (not b!4890331) (not b!4890355) (not b_lambda!194109) (not bm!339142) (not b!4890287) (not b!4890197) (not b!4890111) (not b!4890234) (not d!1570288) (not b!4889928) (not b!4890291) (not b_lambda!194111) (not d!1570312) (not d!1570202) (not b!4890329) (not d!1570328) (not b!4889924) (not d!1570336) (not d!1570274) (not d!1570310) (not b!4890338) (not b_lambda!194105) (not d!1570376) (not b!4890360) (not b!4890235) (not b!4889923) (not b!4890256) (not b!4890305) (not b_next!132307) (not b!4889701) b_and!344445 (not b!4890374) (not b!4890337) (not b!4890239) (not b!4890199) (not b!4890112) (not b!4889920) (not b!4889897) (not b!4889933) (not tb!258507) (not b!4890340) (not b!4890347) (not b!4890341) (not b!4889925) (not tb!258511) (not b_lambda!194077) (not b!4890286) (not b!4890365) (not tb!258515) (not b!4890296) (not d!1570200) (not b!4890339) (not b!4890232) (not bm!339143) (not d!1570290) (not b!4889966) (not bm!339148) (not b!4890303) (not b!4890147) (not b!4890309) (not b!4890114) (not b!4890349) (not b_lambda!194103) (not d!1570266) (not b!4890335) (not b!4890146) (not b!4890370) (not tb!258527) (not b!4890304) (not b!4890376) (not b!4889899) (not b!4889972) (not b!4889967) (not bs!1175777) (not b!4890373) (not d!1570276) (not bm!339149) (not b!4890263) (not d!1570304) b_and!344453 (not b!4890269) (not d!1570300) (not d!1570342) (not b!4890354) (not bm!339153) (not b!4889896) (not b!4890266) (not tb!258533) (not bm!339147) (not b!4890230) b_and!344449 (not b!4890377) (not b!4890366) (not b!4890332) (not b!4890250) (not b!4890237) (not bs!1175778) (not d!1570322) (not b!4890333) (not b!4890145) b_and!344443 (not b_lambda!194095) b_and!344447 (not d!1570356) (not b!4890238) (not b!4890371) (not b_lambda!194097))
(check-sat b_and!344451 (not b_next!132297) (not b_next!132299) (not b_next!132305) b_and!344453 b_and!344449 b_and!344443 b_and!344447 (not b_next!132291) (not b_next!132289) (not b_next!132307) b_and!344445)

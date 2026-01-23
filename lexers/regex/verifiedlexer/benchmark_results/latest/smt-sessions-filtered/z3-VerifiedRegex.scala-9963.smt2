; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522072 () Bool)

(assert start!522072)

(declare-fun b!4953718 () Bool)

(declare-fun b_free!132091 () Bool)

(declare-fun b_next!132881 () Bool)

(assert (=> b!4953718 (= b_free!132091 (not b_next!132881))))

(declare-fun tp!1388833 () Bool)

(declare-fun b_and!346943 () Bool)

(assert (=> b!4953718 (= tp!1388833 b_and!346943)))

(declare-fun b_free!132093 () Bool)

(declare-fun b_next!132883 () Bool)

(assert (=> b!4953718 (= b_free!132093 (not b_next!132883))))

(declare-fun tp!1388838 () Bool)

(declare-fun b_and!346945 () Bool)

(assert (=> b!4953718 (= tp!1388838 b_and!346945)))

(declare-fun b!4953717 () Bool)

(declare-fun res!2113334 () Bool)

(declare-fun e!3095129 () Bool)

(assert (=> b!4953717 (=> (not res!2113334) (not e!3095129))))

(declare-datatypes ((List!57220 0))(
  ( (Nil!57096) (Cons!57096 (h!63544 (_ BitVec 16)) (t!367786 List!57220)) )
))
(declare-datatypes ((TokenValue!8588 0))(
  ( (FloatLiteralValue!17176 (text!60561 List!57220)) (TokenValueExt!8587 (__x!34469 Int)) (Broken!42940 (value!265343 List!57220)) (Object!8711) (End!8588) (Def!8588) (Underscore!8588) (Match!8588) (Else!8588) (Error!8588) (Case!8588) (If!8588) (Extends!8588) (Abstract!8588) (Class!8588) (Val!8588) (DelimiterValue!17176 (del!8648 List!57220)) (KeywordValue!8594 (value!265344 List!57220)) (CommentValue!17176 (value!265345 List!57220)) (WhitespaceValue!17176 (value!265346 List!57220)) (IndentationValue!8588 (value!265347 List!57220)) (String!64813) (Int32!8588) (Broken!42941 (value!265348 List!57220)) (Boolean!8589) (Unit!147990) (OperatorValue!8591 (op!8648 List!57220)) (IdentifierValue!17176 (value!265349 List!57220)) (IdentifierValue!17177 (value!265350 List!57220)) (WhitespaceValue!17177 (value!265351 List!57220)) (True!17176) (False!17176) (Broken!42942 (value!265352 List!57220)) (Broken!42943 (value!265353 List!57220)) (True!17177) (RightBrace!8588) (RightBracket!8588) (Colon!8588) (Null!8588) (Comma!8588) (LeftBracket!8588) (False!17177) (LeftBrace!8588) (ImaginaryLiteralValue!8588 (text!60562 List!57220)) (StringLiteralValue!25764 (value!265354 List!57220)) (EOFValue!8588 (value!265355 List!57220)) (IdentValue!8588 (value!265356 List!57220)) (DelimiterValue!17177 (value!265357 List!57220)) (DedentValue!8588 (value!265358 List!57220)) (NewLineValue!8588 (value!265359 List!57220)) (IntegerValue!25764 (value!265360 (_ BitVec 32)) (text!60563 List!57220)) (IntegerValue!25765 (value!265361 Int) (text!60564 List!57220)) (Times!8588) (Or!8588) (Equal!8588) (Minus!8588) (Broken!42944 (value!265362 List!57220)) (And!8588) (Div!8588) (LessEqual!8588) (Mod!8588) (Concat!22099) (Not!8588) (Plus!8588) (SpaceValue!8588 (value!265363 List!57220)) (IntegerValue!25766 (value!265364 Int) (text!60565 List!57220)) (StringLiteralValue!25765 (text!60566 List!57220)) (FloatLiteralValue!17177 (text!60567 List!57220)) (BytesLiteralValue!8588 (value!265365 List!57220)) (CommentValue!17177 (value!265366 List!57220)) (StringLiteralValue!25766 (value!265367 List!57220)) (ErrorTokenValue!8588 (msg!8649 List!57220)) )
))
(declare-datatypes ((C!27272 0))(
  ( (C!27273 (val!23002 Int)) )
))
(declare-datatypes ((List!57221 0))(
  ( (Nil!57097) (Cons!57097 (h!63545 C!27272) (t!367787 List!57221)) )
))
(declare-datatypes ((IArray!30121 0))(
  ( (IArray!30122 (innerList!15118 List!57221)) )
))
(declare-datatypes ((Regex!13511 0))(
  ( (ElementMatch!13511 (c!845963 C!27272)) (Concat!22100 (regOne!27534 Regex!13511) (regTwo!27534 Regex!13511)) (EmptyExpr!13511) (Star!13511 (reg!13840 Regex!13511)) (EmptyLang!13511) (Union!13511 (regOne!27535 Regex!13511) (regTwo!27535 Regex!13511)) )
))
(declare-datatypes ((String!64814 0))(
  ( (String!64815 (value!265368 String)) )
))
(declare-datatypes ((Conc!15030 0))(
  ( (Node!15030 (left!41651 Conc!15030) (right!41981 Conc!15030) (csize!30290 Int) (cheight!15241 Int)) (Leaf!24994 (xs!18356 IArray!30121) (csize!30291 Int)) (Empty!15030) )
))
(declare-datatypes ((BalanceConc!29490 0))(
  ( (BalanceConc!29491 (c!845964 Conc!15030)) )
))
(declare-datatypes ((TokenValueInjection!16484 0))(
  ( (TokenValueInjection!16485 (toValue!11229 Int) (toChars!11088 Int)) )
))
(declare-datatypes ((Rule!16356 0))(
  ( (Rule!16357 (regex!8278 Regex!13511) (tag!9142 String!64814) (isSeparator!8278 Bool) (transformation!8278 TokenValueInjection!16484)) )
))
(declare-datatypes ((List!57222 0))(
  ( (Nil!57098) (Cons!57098 (h!63546 Rule!16356) (t!367788 List!57222)) )
))
(declare-fun rulesArg!259 () List!57222)

(declare-fun isEmpty!30698 (List!57222) Bool)

(assert (=> b!4953717 (= res!2113334 (not (isEmpty!30698 rulesArg!259)))))

(declare-fun e!3095128 () Bool)

(assert (=> b!4953718 (= e!3095128 (and tp!1388833 tp!1388838))))

(declare-fun b!4953719 () Bool)

(declare-fun e!3095127 () Bool)

(declare-fun e!3095132 () Bool)

(declare-fun tp!1388836 () Bool)

(assert (=> b!4953719 (= e!3095127 (and e!3095132 tp!1388836))))

(declare-fun b!4953720 () Bool)

(declare-fun e!3095126 () Bool)

(declare-fun lt!2044426 () Bool)

(assert (=> b!4953720 (= e!3095126 lt!2044426)))

(declare-fun b!4953722 () Bool)

(declare-fun e!3095125 () Bool)

(declare-fun e!3095124 () Bool)

(assert (=> b!4953722 (= e!3095125 (not e!3095124))))

(declare-fun res!2113329 () Bool)

(assert (=> b!4953722 (=> res!2113329 e!3095124)))

(get-info :version)

(assert (=> b!4953722 (= res!2113329 (or (not ((_ is Cons!57098) rulesArg!259)) (not ((_ is Nil!57098) (t!367788 rulesArg!259)))))))

(declare-fun lt!2044424 () List!57221)

(declare-fun isPrefix!5131 (List!57221 List!57221) Bool)

(assert (=> b!4953722 (isPrefix!5131 lt!2044424 lt!2044424)))

(declare-datatypes ((Unit!147991 0))(
  ( (Unit!147992) )
))
(declare-fun lt!2044425 () Unit!147991)

(declare-fun lemmaIsPrefixRefl!3455 (List!57221 List!57221) Unit!147991)

(assert (=> b!4953722 (= lt!2044425 (lemmaIsPrefixRefl!3455 lt!2044424 lt!2044424))))

(declare-fun b!4953723 () Bool)

(assert (=> b!4953723 (= e!3095129 e!3095125)))

(declare-fun res!2113328 () Bool)

(assert (=> b!4953723 (=> (not res!2113328) (not e!3095125))))

(declare-fun totalInput!464 () BalanceConc!29490)

(declare-fun isSuffix!1077 (List!57221 List!57221) Bool)

(declare-fun list!18210 (BalanceConc!29490) List!57221)

(assert (=> b!4953723 (= res!2113328 (isSuffix!1077 lt!2044424 (list!18210 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29490)

(assert (=> b!4953723 (= lt!2044424 (list!18210 input!1342))))

(declare-fun b!4953724 () Bool)

(declare-fun res!2113333 () Bool)

(assert (=> b!4953724 (=> res!2113333 e!3095126)))

(declare-datatypes ((Token!15064 0))(
  ( (Token!15065 (value!265369 TokenValue!8588) (rule!11490 Rule!16356) (size!37888 Int) (originalCharacters!8563 List!57221)) )
))
(declare-datatypes ((tuple2!61628 0))(
  ( (tuple2!61629 (_1!34117 Token!15064) (_2!34117 BalanceConc!29490)) )
))
(declare-datatypes ((Option!14239 0))(
  ( (None!14238) (Some!14238 (v!50223 tuple2!61628)) )
))
(declare-fun lt!2044423 () Option!14239)

(declare-datatypes ((tuple2!61630 0))(
  ( (tuple2!61631 (_1!34118 Token!15064) (_2!34118 List!57221)) )
))
(declare-datatypes ((Option!14240 0))(
  ( (None!14239) (Some!14239 (v!50224 tuple2!61630)) )
))
(declare-fun lt!2044422 () Option!14240)

(declare-fun get!19724 (Option!14239) tuple2!61628)

(declare-fun get!19725 (Option!14240) tuple2!61630)

(assert (=> b!4953724 (= res!2113333 (not (= (_1!34117 (get!19724 lt!2044423)) (_1!34118 (get!19725 lt!2044422)))))))

(declare-fun b!4953725 () Bool)

(declare-fun e!3095131 () Bool)

(declare-fun tp!1388834 () Bool)

(declare-fun inv!74438 (Conc!15030) Bool)

(assert (=> b!4953725 (= e!3095131 (and (inv!74438 (c!845964 input!1342)) tp!1388834))))

(declare-fun res!2113331 () Bool)

(assert (=> start!522072 (=> (not res!2113331) (not e!3095129))))

(declare-datatypes ((LexerInterface!7870 0))(
  ( (LexerInterfaceExt!7867 (__x!34470 Int)) (Lexer!7868) )
))
(declare-fun thiss!15247 () LexerInterface!7870)

(assert (=> start!522072 (= res!2113331 ((_ is Lexer!7868) thiss!15247))))

(assert (=> start!522072 e!3095129))

(assert (=> start!522072 true))

(assert (=> start!522072 e!3095127))

(declare-fun inv!74439 (BalanceConc!29490) Bool)

(assert (=> start!522072 (and (inv!74439 input!1342) e!3095131)))

(declare-fun e!3095133 () Bool)

(assert (=> start!522072 (and (inv!74439 totalInput!464) e!3095133)))

(declare-fun b!4953721 () Bool)

(declare-fun res!2113332 () Bool)

(assert (=> b!4953721 (=> (not res!2113332) (not e!3095129))))

(declare-fun rulesValidInductive!3181 (LexerInterface!7870 List!57222) Bool)

(assert (=> b!4953721 (= res!2113332 (rulesValidInductive!3181 thiss!15247 rulesArg!259))))

(declare-fun b!4953726 () Bool)

(assert (=> b!4953726 (= e!3095124 e!3095126)))

(declare-fun res!2113330 () Bool)

(assert (=> b!4953726 (=> res!2113330 e!3095126)))

(declare-fun lt!2044427 () Bool)

(assert (=> b!4953726 (= res!2113330 (or (not (= lt!2044427 lt!2044426)) (not lt!2044427)))))

(declare-fun isDefined!11192 (Option!14240) Bool)

(assert (=> b!4953726 (= lt!2044426 (isDefined!11192 lt!2044422))))

(declare-fun isDefined!11193 (Option!14239) Bool)

(assert (=> b!4953726 (= lt!2044427 (isDefined!11193 lt!2044423))))

(declare-fun maxPrefixZipper!689 (LexerInterface!7870 List!57222 List!57221) Option!14240)

(assert (=> b!4953726 (= lt!2044422 (maxPrefixZipper!689 thiss!15247 rulesArg!259 lt!2044424))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!266 (LexerInterface!7870 Rule!16356 BalanceConc!29490 BalanceConc!29490) Option!14239)

(assert (=> b!4953726 (= lt!2044423 (maxPrefixOneRuleZipperSequenceV2!266 thiss!15247 (h!63546 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4953727 () Bool)

(declare-fun tp!1388835 () Bool)

(declare-fun inv!74434 (String!64814) Bool)

(declare-fun inv!74440 (TokenValueInjection!16484) Bool)

(assert (=> b!4953727 (= e!3095132 (and tp!1388835 (inv!74434 (tag!9142 (h!63546 rulesArg!259))) (inv!74440 (transformation!8278 (h!63546 rulesArg!259))) e!3095128))))

(declare-fun b!4953728 () Bool)

(declare-fun tp!1388837 () Bool)

(assert (=> b!4953728 (= e!3095133 (and (inv!74438 (c!845964 totalInput!464)) tp!1388837))))

(assert (= (and start!522072 res!2113331) b!4953721))

(assert (= (and b!4953721 res!2113332) b!4953717))

(assert (= (and b!4953717 res!2113334) b!4953723))

(assert (= (and b!4953723 res!2113328) b!4953722))

(assert (= (and b!4953722 (not res!2113329)) b!4953726))

(assert (= (and b!4953726 (not res!2113330)) b!4953724))

(assert (= (and b!4953724 (not res!2113333)) b!4953720))

(assert (= b!4953727 b!4953718))

(assert (= b!4953719 b!4953727))

(assert (= (and start!522072 ((_ is Cons!57098) rulesArg!259)) b!4953719))

(assert (= start!522072 b!4953725))

(assert (= start!522072 b!4953728))

(declare-fun m!5978422 () Bool)

(assert (=> b!4953726 m!5978422))

(declare-fun m!5978424 () Bool)

(assert (=> b!4953726 m!5978424))

(declare-fun m!5978426 () Bool)

(assert (=> b!4953726 m!5978426))

(declare-fun m!5978428 () Bool)

(assert (=> b!4953726 m!5978428))

(declare-fun m!5978430 () Bool)

(assert (=> b!4953722 m!5978430))

(declare-fun m!5978432 () Bool)

(assert (=> b!4953722 m!5978432))

(declare-fun m!5978434 () Bool)

(assert (=> b!4953725 m!5978434))

(declare-fun m!5978436 () Bool)

(assert (=> b!4953717 m!5978436))

(declare-fun m!5978438 () Bool)

(assert (=> b!4953721 m!5978438))

(declare-fun m!5978440 () Bool)

(assert (=> b!4953728 m!5978440))

(declare-fun m!5978442 () Bool)

(assert (=> b!4953727 m!5978442))

(declare-fun m!5978444 () Bool)

(assert (=> b!4953727 m!5978444))

(declare-fun m!5978446 () Bool)

(assert (=> b!4953724 m!5978446))

(declare-fun m!5978448 () Bool)

(assert (=> b!4953724 m!5978448))

(declare-fun m!5978450 () Bool)

(assert (=> b!4953723 m!5978450))

(assert (=> b!4953723 m!5978450))

(declare-fun m!5978452 () Bool)

(assert (=> b!4953723 m!5978452))

(declare-fun m!5978454 () Bool)

(assert (=> b!4953723 m!5978454))

(declare-fun m!5978456 () Bool)

(assert (=> start!522072 m!5978456))

(declare-fun m!5978458 () Bool)

(assert (=> start!522072 m!5978458))

(check-sat (not b_next!132881) (not b!4953727) b_and!346945 (not b!4953722) (not b!4953723) (not start!522072) b_and!346943 (not b!4953721) (not b!4953725) (not b!4953719) (not b!4953724) (not b_next!132883) (not b!4953717) (not b!4953728) (not b!4953726))
(check-sat b_and!346943 b_and!346945 (not b_next!132881) (not b_next!132883))

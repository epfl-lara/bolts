; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511004 () Bool)

(assert start!511004)

(declare-fun b!4883367 () Bool)

(declare-fun b_free!131051 () Bool)

(declare-fun b_next!131841 () Bool)

(assert (=> b!4883367 (= b_free!131051 (not b_next!131841))))

(declare-fun tp!1374139 () Bool)

(declare-fun b_and!343883 () Bool)

(assert (=> b!4883367 (= tp!1374139 b_and!343883)))

(declare-fun b_free!131053 () Bool)

(declare-fun b_next!131843 () Bool)

(assert (=> b!4883367 (= b_free!131053 (not b_next!131843))))

(declare-fun tp!1374141 () Bool)

(declare-fun b_and!343885 () Bool)

(assert (=> b!4883367 (= tp!1374141 b_and!343885)))

(declare-fun e!3052170 () Bool)

(assert (=> b!4883367 (= e!3052170 (and tp!1374139 tp!1374141))))

(declare-fun e!3052172 () Bool)

(declare-fun tp!1374138 () Bool)

(declare-datatypes ((C!26528 0))(
  ( (C!26529 (val!22598 Int)) )
))
(declare-datatypes ((List!56275 0))(
  ( (Nil!56151) (Cons!56151 (h!62599 C!26528) (t!364921 List!56275)) )
))
(declare-datatypes ((IArray!29377 0))(
  ( (IArray!29378 (innerList!14746 List!56275)) )
))
(declare-datatypes ((Conc!14658 0))(
  ( (Node!14658 (left!40797 Conc!14658) (right!41127 Conc!14658) (csize!29546 Int) (cheight!14869 Int)) (Leaf!24420 (xs!17974 IArray!29377) (csize!29547 Int)) (Empty!14658) )
))
(declare-datatypes ((BalanceConc!28746 0))(
  ( (BalanceConc!28747 (c!830451 Conc!14658)) )
))
(declare-datatypes ((List!56276 0))(
  ( (Nil!56152) (Cons!56152 (h!62600 (_ BitVec 16)) (t!364922 List!56276)) )
))
(declare-datatypes ((TokenValue!8400 0))(
  ( (FloatLiteralValue!16800 (text!59245 List!56276)) (TokenValueExt!8399 (__x!34093 Int)) (Broken!42000 (value!259691 List!56276)) (Object!8523) (End!8400) (Def!8400) (Underscore!8400) (Match!8400) (Else!8400) (Error!8400) (Case!8400) (If!8400) (Extends!8400) (Abstract!8400) (Class!8400) (Val!8400) (DelimiterValue!16800 (del!8460 List!56276)) (KeywordValue!8406 (value!259692 List!56276)) (CommentValue!16800 (value!259693 List!56276)) (WhitespaceValue!16800 (value!259694 List!56276)) (IndentationValue!8400 (value!259695 List!56276)) (String!63441) (Int32!8400) (Broken!42001 (value!259696 List!56276)) (Boolean!8401) (Unit!146141) (OperatorValue!8403 (op!8460 List!56276)) (IdentifierValue!16800 (value!259697 List!56276)) (IdentifierValue!16801 (value!259698 List!56276)) (WhitespaceValue!16801 (value!259699 List!56276)) (True!16800) (False!16800) (Broken!42002 (value!259700 List!56276)) (Broken!42003 (value!259701 List!56276)) (True!16801) (RightBrace!8400) (RightBracket!8400) (Colon!8400) (Null!8400) (Comma!8400) (LeftBracket!8400) (False!16801) (LeftBrace!8400) (ImaginaryLiteralValue!8400 (text!59246 List!56276)) (StringLiteralValue!25200 (value!259702 List!56276)) (EOFValue!8400 (value!259703 List!56276)) (IdentValue!8400 (value!259704 List!56276)) (DelimiterValue!16801 (value!259705 List!56276)) (DedentValue!8400 (value!259706 List!56276)) (NewLineValue!8400 (value!259707 List!56276)) (IntegerValue!25200 (value!259708 (_ BitVec 32)) (text!59247 List!56276)) (IntegerValue!25201 (value!259709 Int) (text!59248 List!56276)) (Times!8400) (Or!8400) (Equal!8400) (Minus!8400) (Broken!42004 (value!259710 List!56276)) (And!8400) (Div!8400) (LessEqual!8400) (Mod!8400) (Concat!21565) (Not!8400) (Plus!8400) (SpaceValue!8400 (value!259711 List!56276)) (IntegerValue!25202 (value!259712 Int) (text!59249 List!56276)) (StringLiteralValue!25201 (text!59250 List!56276)) (FloatLiteralValue!16801 (text!59251 List!56276)) (BytesLiteralValue!8400 (value!259713 List!56276)) (CommentValue!16801 (value!259714 List!56276)) (StringLiteralValue!25202 (value!259715 List!56276)) (ErrorTokenValue!8400 (msg!8461 List!56276)) )
))
(declare-datatypes ((Regex!13165 0))(
  ( (ElementMatch!13165 (c!830452 C!26528)) (Concat!21566 (regOne!26842 Regex!13165) (regTwo!26842 Regex!13165)) (EmptyExpr!13165) (Star!13165 (reg!13494 Regex!13165)) (EmptyLang!13165) (Union!13165 (regOne!26843 Regex!13165) (regTwo!26843 Regex!13165)) )
))
(declare-datatypes ((String!63442 0))(
  ( (String!63443 (value!259716 String)) )
))
(declare-datatypes ((TokenValueInjection!16108 0))(
  ( (TokenValueInjection!16109 (toValue!10977 Int) (toChars!10836 Int)) )
))
(declare-datatypes ((Rule!15980 0))(
  ( (Rule!15981 (regex!8090 Regex!13165) (tag!8954 String!63442) (isSeparator!8090 Bool) (transformation!8090 TokenValueInjection!16108)) )
))
(declare-datatypes ((List!56277 0))(
  ( (Nil!56153) (Cons!56153 (h!62601 Rule!15980) (t!364923 List!56277)) )
))
(declare-fun rulesArg!165 () List!56277)

(declare-fun b!4883368 () Bool)

(declare-fun inv!72225 (String!63442) Bool)

(declare-fun inv!72229 (TokenValueInjection!16108) Bool)

(assert (=> b!4883368 (= e!3052172 (and tp!1374138 (inv!72225 (tag!8954 (h!62601 rulesArg!165))) (inv!72229 (transformation!8090 (h!62601 rulesArg!165))) e!3052170))))

(declare-fun b!4883369 () Bool)

(declare-fun e!3052175 () Bool)

(declare-fun tp!1374140 () Bool)

(assert (=> b!4883369 (= e!3052175 (and e!3052172 tp!1374140))))

(declare-fun b!4883370 () Bool)

(declare-fun e!3052176 () Bool)

(declare-fun input!1236 () BalanceConc!28746)

(declare-fun tp!1374137 () Bool)

(declare-fun inv!72230 (Conc!14658) Bool)

(assert (=> b!4883370 (= e!3052176 (and (inv!72230 (c!830451 input!1236)) tp!1374137))))

(declare-fun b!4883371 () Bool)

(declare-fun e!3052179 () Bool)

(declare-datatypes ((Token!14748 0))(
  ( (Token!14749 (value!259717 TokenValue!8400) (rule!11252 Rule!15980) (size!37009 Int) (originalCharacters!8405 List!56275)) )
))
(declare-datatypes ((tuple2!60056 0))(
  ( (tuple2!60057 (_1!33331 Token!14748) (_2!33331 BalanceConc!28746)) )
))
(declare-fun lt!2000426 () tuple2!60056)

(declare-datatypes ((tuple2!60058 0))(
  ( (tuple2!60059 (_1!33332 Token!14748) (_2!33332 List!56275)) )
))
(declare-fun lt!2000423 () tuple2!60058)

(declare-fun list!17615 (BalanceConc!28746) List!56275)

(assert (=> b!4883371 (= e!3052179 (= (list!17615 (_2!33331 lt!2000426)) (_2!33332 lt!2000423)))))

(declare-fun b!4883373 () Bool)

(declare-fun e!3052180 () Bool)

(assert (=> b!4883373 (= e!3052180 e!3052179)))

(declare-fun res!2084714 () Bool)

(assert (=> b!4883373 (=> (not res!2084714) (not e!3052179))))

(assert (=> b!4883373 (= res!2084714 (= (_1!33331 lt!2000426) (_1!33332 lt!2000423)))))

(declare-datatypes ((Option!13863 0))(
  ( (None!13862) (Some!13862 (v!49812 tuple2!60058)) )
))
(declare-fun lt!2000422 () Option!13863)

(declare-fun get!19312 (Option!13863) tuple2!60058)

(assert (=> b!4883373 (= lt!2000423 (get!19312 lt!2000422))))

(declare-datatypes ((Option!13864 0))(
  ( (None!13863) (Some!13863 (v!49813 tuple2!60056)) )
))
(declare-fun get!19313 (Option!13864) tuple2!60056)

(assert (=> b!4883373 (= lt!2000426 (get!19313 None!13863))))

(declare-fun b!4883374 () Bool)

(declare-fun res!2084719 () Bool)

(declare-fun e!3052173 () Bool)

(assert (=> b!4883374 (=> (not res!2084719) (not e!3052173))))

(declare-datatypes ((LexerInterface!7682 0))(
  ( (LexerInterfaceExt!7679 (__x!34094 Int)) (Lexer!7680) )
))
(declare-fun thiss!14805 () LexerInterface!7682)

(declare-fun rulesValidInductive!3069 (LexerInterface!7682 List!56277) Bool)

(assert (=> b!4883374 (= res!2084719 (rulesValidInductive!3069 thiss!14805 rulesArg!165))))

(declare-fun b!4883375 () Bool)

(declare-fun res!2084718 () Bool)

(assert (=> b!4883375 (=> (not res!2084718) (not e!3052173))))

(declare-fun isEmpty!30091 (List!56277) Bool)

(assert (=> b!4883375 (= res!2084718 (not (isEmpty!30091 rulesArg!165)))))

(declare-fun b!4883376 () Bool)

(declare-fun e!3052171 () Bool)

(assert (=> b!4883376 (= e!3052171 true)))

(declare-fun lt!2000427 () Bool)

(assert (=> b!4883376 (= lt!2000427 e!3052180)))

(declare-fun res!2084716 () Bool)

(assert (=> b!4883376 (=> res!2084716 e!3052180)))

(declare-fun lt!2000425 () Bool)

(assert (=> b!4883376 (= res!2084716 (not lt!2000425))))

(declare-fun b!4883377 () Bool)

(declare-fun e!3052174 () Bool)

(assert (=> b!4883377 (= e!3052174 e!3052171)))

(declare-fun res!2084715 () Bool)

(assert (=> b!4883377 (=> res!2084715 e!3052171)))

(declare-fun isDefined!10901 (Option!13863) Bool)

(assert (=> b!4883377 (= res!2084715 (not (= lt!2000425 (isDefined!10901 lt!2000422))))))

(assert (=> b!4883377 (= lt!2000425 false)))

(declare-fun lt!2000420 () List!56275)

(declare-fun maxPrefixZipper!593 (LexerInterface!7682 List!56277 List!56275) Option!13863)

(assert (=> b!4883377 (= lt!2000422 (maxPrefixZipper!593 thiss!14805 rulesArg!165 lt!2000420))))

(declare-fun b!4883378 () Bool)

(declare-fun e!3052177 () Bool)

(assert (=> b!4883378 (= e!3052177 e!3052174)))

(declare-fun res!2084713 () Bool)

(assert (=> b!4883378 (=> res!2084713 e!3052174)))

(declare-fun lt!2000424 () Option!13864)

(declare-fun lt!2000428 () Option!13864)

(get-info :version)

(assert (=> b!4883378 (= res!2084713 (or (not ((_ is None!13863) lt!2000424)) (not ((_ is None!13863) lt!2000428))))))

(declare-fun maxPrefixZipperSequence!1251 (LexerInterface!7682 List!56277 BalanceConc!28746) Option!13864)

(assert (=> b!4883378 (= lt!2000428 (maxPrefixZipperSequence!1251 thiss!14805 (t!364923 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!616 (LexerInterface!7682 Rule!15980 BalanceConc!28746) Option!13864)

(assert (=> b!4883378 (= lt!2000424 (maxPrefixOneRuleZipperSequence!616 thiss!14805 (h!62601 rulesArg!165) input!1236))))

(declare-fun res!2084717 () Bool)

(assert (=> start!511004 (=> (not res!2084717) (not e!3052173))))

(assert (=> start!511004 (= res!2084717 ((_ is Lexer!7680) thiss!14805))))

(assert (=> start!511004 e!3052173))

(assert (=> start!511004 true))

(assert (=> start!511004 e!3052175))

(declare-fun inv!72231 (BalanceConc!28746) Bool)

(assert (=> start!511004 (and (inv!72231 input!1236) e!3052176)))

(declare-fun b!4883372 () Bool)

(assert (=> b!4883372 (= e!3052173 (not e!3052177))))

(declare-fun res!2084712 () Bool)

(assert (=> b!4883372 (=> res!2084712 e!3052177)))

(assert (=> b!4883372 (= res!2084712 (or (and ((_ is Cons!56153) rulesArg!165) ((_ is Nil!56153) (t!364923 rulesArg!165))) (not ((_ is Cons!56153) rulesArg!165))))))

(declare-fun isPrefix!4812 (List!56275 List!56275) Bool)

(assert (=> b!4883372 (isPrefix!4812 lt!2000420 lt!2000420)))

(declare-datatypes ((Unit!146142 0))(
  ( (Unit!146143) )
))
(declare-fun lt!2000421 () Unit!146142)

(declare-fun lemmaIsPrefixRefl!3209 (List!56275 List!56275) Unit!146142)

(assert (=> b!4883372 (= lt!2000421 (lemmaIsPrefixRefl!3209 lt!2000420 lt!2000420))))

(assert (=> b!4883372 (= lt!2000420 (list!17615 input!1236))))

(assert (= (and start!511004 res!2084717) b!4883374))

(assert (= (and b!4883374 res!2084719) b!4883375))

(assert (= (and b!4883375 res!2084718) b!4883372))

(assert (= (and b!4883372 (not res!2084712)) b!4883378))

(assert (= (and b!4883378 (not res!2084713)) b!4883377))

(assert (= (and b!4883377 (not res!2084715)) b!4883376))

(assert (= (and b!4883376 (not res!2084716)) b!4883373))

(assert (= (and b!4883373 res!2084714) b!4883371))

(assert (= b!4883368 b!4883367))

(assert (= b!4883369 b!4883368))

(assert (= (and start!511004 ((_ is Cons!56153) rulesArg!165)) b!4883369))

(assert (= start!511004 b!4883370))

(declare-fun m!5887372 () Bool)

(assert (=> start!511004 m!5887372))

(declare-fun m!5887374 () Bool)

(assert (=> b!4883377 m!5887374))

(declare-fun m!5887376 () Bool)

(assert (=> b!4883377 m!5887376))

(declare-fun m!5887378 () Bool)

(assert (=> b!4883374 m!5887378))

(declare-fun m!5887380 () Bool)

(assert (=> b!4883372 m!5887380))

(declare-fun m!5887382 () Bool)

(assert (=> b!4883372 m!5887382))

(declare-fun m!5887384 () Bool)

(assert (=> b!4883372 m!5887384))

(declare-fun m!5887386 () Bool)

(assert (=> b!4883371 m!5887386))

(declare-fun m!5887388 () Bool)

(assert (=> b!4883370 m!5887388))

(declare-fun m!5887390 () Bool)

(assert (=> b!4883378 m!5887390))

(declare-fun m!5887392 () Bool)

(assert (=> b!4883378 m!5887392))

(declare-fun m!5887394 () Bool)

(assert (=> b!4883373 m!5887394))

(declare-fun m!5887396 () Bool)

(assert (=> b!4883373 m!5887396))

(declare-fun m!5887398 () Bool)

(assert (=> b!4883375 m!5887398))

(declare-fun m!5887400 () Bool)

(assert (=> b!4883368 m!5887400))

(declare-fun m!5887402 () Bool)

(assert (=> b!4883368 m!5887402))

(check-sat (not b!4883378) b_and!343885 (not b!4883377) (not b!4883370) (not b_next!131841) (not b_next!131843) (not start!511004) (not b!4883368) b_and!343883 (not b!4883369) (not b!4883374) (not b!4883371) (not b!4883375) (not b!4883372) (not b!4883373))
(check-sat b_and!343885 b_and!343883 (not b_next!131841) (not b_next!131843))

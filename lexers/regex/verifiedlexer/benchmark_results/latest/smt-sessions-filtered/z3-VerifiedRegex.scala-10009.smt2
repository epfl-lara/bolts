; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!523026 () Bool)

(assert start!523026)

(declare-fun b!4960803 () Bool)

(declare-fun b_free!132551 () Bool)

(declare-fun b_next!133341 () Bool)

(assert (=> b!4960803 (= b_free!132551 (not b_next!133341))))

(declare-fun tp!1391426 () Bool)

(declare-fun b_and!347403 () Bool)

(assert (=> b!4960803 (= tp!1391426 b_and!347403)))

(declare-fun b_free!132553 () Bool)

(declare-fun b_next!133343 () Bool)

(assert (=> b!4960803 (= b_free!132553 (not b_next!133343))))

(declare-fun tp!1391428 () Bool)

(declare-fun b_and!347405 () Bool)

(assert (=> b!4960803 (= tp!1391428 b_and!347405)))

(declare-fun b!4960802 () Bool)

(declare-fun e!3100630 () Bool)

(declare-fun e!3100623 () Bool)

(assert (=> b!4960802 (= e!3100630 (not e!3100623))))

(declare-fun res!2117380 () Bool)

(assert (=> b!4960802 (=> res!2117380 e!3100623)))

(declare-datatypes ((List!57496 0))(
  ( (Nil!57372) (Cons!57372 (h!63820 (_ BitVec 16)) (t!368062 List!57496)) )
))
(declare-datatypes ((TokenValue!8680 0))(
  ( (FloatLiteralValue!17360 (text!61205 List!57496)) (TokenValueExt!8679 (__x!34653 Int)) (Broken!43400 (value!267961 List!57496)) (Object!8803) (End!8680) (Def!8680) (Underscore!8680) (Match!8680) (Else!8680) (Error!8680) (Case!8680) (If!8680) (Extends!8680) (Abstract!8680) (Class!8680) (Val!8680) (DelimiterValue!17360 (del!8740 List!57496)) (KeywordValue!8686 (value!267962 List!57496)) (CommentValue!17360 (value!267963 List!57496)) (WhitespaceValue!17360 (value!267964 List!57496)) (IndentationValue!8680 (value!267965 List!57496)) (String!65273) (Int32!8680) (Broken!43401 (value!267966 List!57496)) (Boolean!8681) (Unit!148266) (OperatorValue!8683 (op!8740 List!57496)) (IdentifierValue!17360 (value!267967 List!57496)) (IdentifierValue!17361 (value!267968 List!57496)) (WhitespaceValue!17361 (value!267969 List!57496)) (True!17360) (False!17360) (Broken!43402 (value!267970 List!57496)) (Broken!43403 (value!267971 List!57496)) (True!17361) (RightBrace!8680) (RightBracket!8680) (Colon!8680) (Null!8680) (Comma!8680) (LeftBracket!8680) (False!17361) (LeftBrace!8680) (ImaginaryLiteralValue!8680 (text!61206 List!57496)) (StringLiteralValue!26040 (value!267972 List!57496)) (EOFValue!8680 (value!267973 List!57496)) (IdentValue!8680 (value!267974 List!57496)) (DelimiterValue!17361 (value!267975 List!57496)) (DedentValue!8680 (value!267976 List!57496)) (NewLineValue!8680 (value!267977 List!57496)) (IntegerValue!26040 (value!267978 (_ BitVec 32)) (text!61207 List!57496)) (IntegerValue!26041 (value!267979 Int) (text!61208 List!57496)) (Times!8680) (Or!8680) (Equal!8680) (Minus!8680) (Broken!43404 (value!267980 List!57496)) (And!8680) (Div!8680) (LessEqual!8680) (Mod!8680) (Concat!22283) (Not!8680) (Plus!8680) (SpaceValue!8680 (value!267981 List!57496)) (IntegerValue!26042 (value!267982 Int) (text!61209 List!57496)) (StringLiteralValue!26041 (text!61210 List!57496)) (FloatLiteralValue!17361 (text!61211 List!57496)) (BytesLiteralValue!8680 (value!267983 List!57496)) (CommentValue!17361 (value!267984 List!57496)) (StringLiteralValue!26042 (value!267985 List!57496)) (ErrorTokenValue!8680 (msg!8741 List!57496)) )
))
(declare-datatypes ((C!27456 0))(
  ( (C!27457 (val!23094 Int)) )
))
(declare-datatypes ((List!57497 0))(
  ( (Nil!57373) (Cons!57373 (h!63821 C!27456) (t!368063 List!57497)) )
))
(declare-datatypes ((IArray!30305 0))(
  ( (IArray!30306 (innerList!15210 List!57497)) )
))
(declare-datatypes ((Regex!13603 0))(
  ( (ElementMatch!13603 (c!846541 C!27456)) (Concat!22284 (regOne!27718 Regex!13603) (regTwo!27718 Regex!13603)) (EmptyExpr!13603) (Star!13603 (reg!13932 Regex!13603)) (EmptyLang!13603) (Union!13603 (regOne!27719 Regex!13603) (regTwo!27719 Regex!13603)) )
))
(declare-datatypes ((String!65274 0))(
  ( (String!65275 (value!267986 String)) )
))
(declare-datatypes ((Conc!15122 0))(
  ( (Node!15122 (left!41837 Conc!15122) (right!42167 Conc!15122) (csize!30474 Int) (cheight!15333 Int)) (Leaf!25132 (xs!18448 IArray!30305) (csize!30475 Int)) (Empty!15122) )
))
(declare-datatypes ((BalanceConc!29674 0))(
  ( (BalanceConc!29675 (c!846542 Conc!15122)) )
))
(declare-datatypes ((TokenValueInjection!16668 0))(
  ( (TokenValueInjection!16669 (toValue!11321 Int) (toChars!11180 Int)) )
))
(declare-datatypes ((Rule!16540 0))(
  ( (Rule!16541 (regex!8370 Regex!13603) (tag!9234 String!65274) (isSeparator!8370 Bool) (transformation!8370 TokenValueInjection!16668)) )
))
(declare-datatypes ((List!57498 0))(
  ( (Nil!57374) (Cons!57374 (h!63822 Rule!16540) (t!368064 List!57498)) )
))
(declare-fun rulesArg!259 () List!57498)

(get-info :version)

(assert (=> b!4960802 (= res!2117380 (or (and ((_ is Cons!57374) rulesArg!259) ((_ is Nil!57374) (t!368064 rulesArg!259))) (not ((_ is Cons!57374) rulesArg!259))))))

(declare-fun lt!2048226 () List!57497)

(declare-fun isPrefix!5223 (List!57497 List!57497) Bool)

(assert (=> b!4960802 (isPrefix!5223 lt!2048226 lt!2048226)))

(declare-datatypes ((Unit!148267 0))(
  ( (Unit!148268) )
))
(declare-fun lt!2048218 () Unit!148267)

(declare-fun lemmaIsPrefixRefl!3547 (List!57497 List!57497) Unit!148267)

(assert (=> b!4960802 (= lt!2048218 (lemmaIsPrefixRefl!3547 lt!2048226 lt!2048226))))

(declare-fun e!3100625 () Bool)

(assert (=> b!4960803 (= e!3100625 (and tp!1391426 tp!1391428))))

(declare-fun b!4960804 () Bool)

(declare-fun e!3100618 () Bool)

(assert (=> b!4960804 (= e!3100618 e!3100630)))

(declare-fun res!2117377 () Bool)

(assert (=> b!4960804 (=> (not res!2117377) (not e!3100630))))

(declare-fun totalInput!464 () BalanceConc!29674)

(declare-fun isSuffix!1169 (List!57497 List!57497) Bool)

(declare-fun list!18325 (BalanceConc!29674) List!57497)

(assert (=> b!4960804 (= res!2117377 (isSuffix!1169 lt!2048226 (list!18325 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29674)

(assert (=> b!4960804 (= lt!2048226 (list!18325 input!1342))))

(declare-fun b!4960805 () Bool)

(declare-fun res!2117381 () Bool)

(assert (=> b!4960805 (=> (not res!2117381) (not e!3100618))))

(declare-datatypes ((LexerInterface!7962 0))(
  ( (LexerInterfaceExt!7959 (__x!34654 Int)) (Lexer!7960) )
))
(declare-fun thiss!15247 () LexerInterface!7962)

(declare-fun rulesValidInductive!3273 (LexerInterface!7962 List!57498) Bool)

(assert (=> b!4960805 (= res!2117381 (rulesValidInductive!3273 thiss!15247 rulesArg!259))))

(declare-fun b!4960806 () Bool)

(declare-fun e!3100626 () Bool)

(declare-fun e!3100629 () Bool)

(assert (=> b!4960806 (= e!3100626 e!3100629)))

(declare-fun res!2117379 () Bool)

(assert (=> b!4960806 (=> res!2117379 e!3100629)))

(declare-fun e!3100628 () Bool)

(assert (=> b!4960806 (= res!2117379 e!3100628)))

(declare-fun res!2117382 () Bool)

(assert (=> b!4960806 (=> (not res!2117382) (not e!3100628))))

(declare-fun lt!2048221 () Bool)

(assert (=> b!4960806 (= res!2117382 (not lt!2048221))))

(declare-fun lt!2048224 () Bool)

(assert (=> b!4960806 (= lt!2048221 (not lt!2048224))))

(declare-fun b!4960807 () Bool)

(declare-fun res!2117372 () Bool)

(assert (=> b!4960807 (=> (not res!2117372) (not e!3100618))))

(declare-fun isEmpty!30866 (List!57498) Bool)

(assert (=> b!4960807 (= res!2117372 (not (isEmpty!30866 rulesArg!259)))))

(declare-fun b!4960808 () Bool)

(declare-fun e!3100620 () Bool)

(declare-datatypes ((Token!15240 0))(
  ( (Token!15241 (value!267987 TokenValue!8680) (rule!11600 Rule!16540) (size!38020 Int) (originalCharacters!8651 List!57497)) )
))
(declare-datatypes ((tuple2!62052 0))(
  ( (tuple2!62053 (_1!34329 Token!15240) (_2!34329 List!57497)) )
))
(declare-datatypes ((Option!14409 0))(
  ( (None!14408) (Some!14408 (v!50393 tuple2!62052)) )
))
(declare-fun lt!2048225 () Option!14409)

(declare-fun isDefined!11324 (Option!14409) Bool)

(assert (=> b!4960808 (= e!3100620 (isDefined!11324 lt!2048225))))

(declare-fun b!4960809 () Bool)

(declare-fun e!3100627 () Bool)

(assert (=> b!4960809 (= e!3100627 e!3100626)))

(declare-fun res!2117375 () Bool)

(assert (=> b!4960809 (=> res!2117375 e!3100626)))

(declare-fun lt!2048220 () Option!14409)

(assert (=> b!4960809 (= res!2117375 (not (= lt!2048224 (isDefined!11324 lt!2048220))))))

(declare-datatypes ((tuple2!62054 0))(
  ( (tuple2!62055 (_1!34330 Token!15240) (_2!34330 BalanceConc!29674)) )
))
(declare-datatypes ((Option!14410 0))(
  ( (None!14409) (Some!14409 (v!50394 tuple2!62054)) )
))
(declare-fun lt!2048217 () Option!14410)

(declare-fun isDefined!11325 (Option!14410) Bool)

(assert (=> b!4960809 (= lt!2048224 (isDefined!11325 lt!2048217))))

(declare-fun maxPrefixZipper!767 (LexerInterface!7962 List!57498 List!57497) Option!14409)

(assert (=> b!4960809 (= lt!2048220 (maxPrefixZipper!767 thiss!15247 rulesArg!259 lt!2048226))))

(declare-fun b!4960810 () Bool)

(declare-fun e!3100621 () Bool)

(declare-fun tp!1391429 () Bool)

(declare-fun inv!74918 (Conc!15122) Bool)

(assert (=> b!4960810 (= e!3100621 (and (inv!74918 (c!846542 input!1342)) tp!1391429))))

(declare-fun res!2117374 () Bool)

(assert (=> start!523026 (=> (not res!2117374) (not e!3100618))))

(assert (=> start!523026 (= res!2117374 ((_ is Lexer!7960) thiss!15247))))

(assert (=> start!523026 e!3100618))

(assert (=> start!523026 true))

(declare-fun e!3100617 () Bool)

(assert (=> start!523026 e!3100617))

(declare-fun inv!74919 (BalanceConc!29674) Bool)

(assert (=> start!523026 (and (inv!74919 input!1342) e!3100621)))

(declare-fun e!3100622 () Bool)

(assert (=> start!523026 (and (inv!74919 totalInput!464) e!3100622)))

(declare-fun b!4960811 () Bool)

(declare-fun e!3100624 () Bool)

(declare-fun lt!2048222 () tuple2!62054)

(declare-fun lt!2048223 () tuple2!62052)

(assert (=> b!4960811 (= e!3100624 (not (= (list!18325 (_2!34330 lt!2048222)) (_2!34329 lt!2048223))))))

(declare-fun b!4960812 () Bool)

(assert (=> b!4960812 (= e!3100629 e!3100620)))

(declare-fun res!2117371 () Bool)

(assert (=> b!4960812 (=> res!2117371 e!3100620)))

(declare-fun get!19894 (Option!14410) tuple2!62054)

(declare-fun get!19895 (Option!14409) tuple2!62052)

(assert (=> b!4960812 (= res!2117371 (not (= (_1!34330 (get!19894 lt!2048217)) (_1!34329 (get!19895 lt!2048225)))))))

(declare-fun maxPrefix!4649 (LexerInterface!7962 List!57498 List!57497) Option!14409)

(assert (=> b!4960812 (= lt!2048225 (maxPrefix!4649 thiss!15247 rulesArg!259 lt!2048226))))

(declare-fun b!4960813 () Bool)

(declare-fun e!3100631 () Bool)

(declare-fun tp!1391427 () Bool)

(assert (=> b!4960813 (= e!3100617 (and e!3100631 tp!1391427))))

(declare-fun b!4960814 () Bool)

(declare-fun res!2117378 () Bool)

(assert (=> b!4960814 (=> res!2117378 e!3100629)))

(assert (=> b!4960814 (= res!2117378 lt!2048221)))

(declare-fun tp!1391425 () Bool)

(declare-fun b!4960815 () Bool)

(declare-fun inv!74914 (String!65274) Bool)

(declare-fun inv!74920 (TokenValueInjection!16668) Bool)

(assert (=> b!4960815 (= e!3100631 (and tp!1391425 (inv!74914 (tag!9234 (h!63822 rulesArg!259))) (inv!74920 (transformation!8370 (h!63822 rulesArg!259))) e!3100625))))

(declare-fun b!4960816 () Bool)

(declare-fun tp!1391430 () Bool)

(assert (=> b!4960816 (= e!3100622 (and (inv!74918 (c!846542 totalInput!464)) tp!1391430))))

(declare-fun b!4960817 () Bool)

(assert (=> b!4960817 (= e!3100623 e!3100627)))

(declare-fun res!2117373 () Bool)

(assert (=> b!4960817 (=> res!2117373 e!3100627)))

(declare-fun lt!2048219 () Option!14410)

(assert (=> b!4960817 (= res!2117373 (or (and ((_ is None!14409) lt!2048219) ((_ is None!14409) lt!2048217)) ((_ is None!14409) lt!2048217) ((_ is None!14409) lt!2048219) (>= (size!38020 (_1!34330 (v!50394 lt!2048219))) (size!38020 (_1!34330 (v!50394 lt!2048217))))))))

(declare-fun maxPrefixZipperSequenceV2!701 (LexerInterface!7962 List!57498 BalanceConc!29674 BalanceConc!29674) Option!14410)

(assert (=> b!4960817 (= lt!2048217 (maxPrefixZipperSequenceV2!701 thiss!15247 (t!368064 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!354 (LexerInterface!7962 Rule!16540 BalanceConc!29674 BalanceConc!29674) Option!14410)

(assert (=> b!4960817 (= lt!2048219 (maxPrefixOneRuleZipperSequenceV2!354 thiss!15247 (h!63822 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4960818 () Bool)

(assert (=> b!4960818 (= e!3100628 e!3100624)))

(declare-fun res!2117376 () Bool)

(assert (=> b!4960818 (=> res!2117376 e!3100624)))

(assert (=> b!4960818 (= res!2117376 (not (= (_1!34330 lt!2048222) (_1!34329 lt!2048223))))))

(assert (=> b!4960818 (= lt!2048223 (get!19895 lt!2048220))))

(assert (=> b!4960818 (= lt!2048222 (get!19894 lt!2048217))))

(assert (= (and start!523026 res!2117374) b!4960805))

(assert (= (and b!4960805 res!2117381) b!4960807))

(assert (= (and b!4960807 res!2117372) b!4960804))

(assert (= (and b!4960804 res!2117377) b!4960802))

(assert (= (and b!4960802 (not res!2117380)) b!4960817))

(assert (= (and b!4960817 (not res!2117373)) b!4960809))

(assert (= (and b!4960809 (not res!2117375)) b!4960806))

(assert (= (and b!4960806 res!2117382) b!4960818))

(assert (= (and b!4960818 (not res!2117376)) b!4960811))

(assert (= (and b!4960806 (not res!2117379)) b!4960814))

(assert (= (and b!4960814 (not res!2117378)) b!4960812))

(assert (= (and b!4960812 (not res!2117371)) b!4960808))

(assert (= b!4960815 b!4960803))

(assert (= b!4960813 b!4960815))

(assert (= (and start!523026 ((_ is Cons!57374) rulesArg!259)) b!4960813))

(assert (= start!523026 b!4960810))

(assert (= start!523026 b!4960816))

(declare-fun m!5985352 () Bool)

(assert (=> b!4960804 m!5985352))

(assert (=> b!4960804 m!5985352))

(declare-fun m!5985354 () Bool)

(assert (=> b!4960804 m!5985354))

(declare-fun m!5985356 () Bool)

(assert (=> b!4960804 m!5985356))

(declare-fun m!5985358 () Bool)

(assert (=> b!4960807 m!5985358))

(declare-fun m!5985360 () Bool)

(assert (=> b!4960812 m!5985360))

(declare-fun m!5985362 () Bool)

(assert (=> b!4960812 m!5985362))

(declare-fun m!5985364 () Bool)

(assert (=> b!4960812 m!5985364))

(declare-fun m!5985366 () Bool)

(assert (=> start!523026 m!5985366))

(declare-fun m!5985368 () Bool)

(assert (=> start!523026 m!5985368))

(declare-fun m!5985370 () Bool)

(assert (=> b!4960818 m!5985370))

(assert (=> b!4960818 m!5985360))

(declare-fun m!5985372 () Bool)

(assert (=> b!4960810 m!5985372))

(declare-fun m!5985374 () Bool)

(assert (=> b!4960808 m!5985374))

(declare-fun m!5985376 () Bool)

(assert (=> b!4960817 m!5985376))

(declare-fun m!5985378 () Bool)

(assert (=> b!4960817 m!5985378))

(declare-fun m!5985380 () Bool)

(assert (=> b!4960811 m!5985380))

(declare-fun m!5985382 () Bool)

(assert (=> b!4960802 m!5985382))

(declare-fun m!5985384 () Bool)

(assert (=> b!4960802 m!5985384))

(declare-fun m!5985386 () Bool)

(assert (=> b!4960805 m!5985386))

(declare-fun m!5985388 () Bool)

(assert (=> b!4960816 m!5985388))

(declare-fun m!5985390 () Bool)

(assert (=> b!4960815 m!5985390))

(declare-fun m!5985392 () Bool)

(assert (=> b!4960815 m!5985392))

(declare-fun m!5985394 () Bool)

(assert (=> b!4960809 m!5985394))

(declare-fun m!5985396 () Bool)

(assert (=> b!4960809 m!5985396))

(declare-fun m!5985398 () Bool)

(assert (=> b!4960809 m!5985398))

(check-sat (not start!523026) (not b!4960802) b_and!347403 (not b!4960815) (not b!4960818) (not b!4960804) (not b_next!133343) (not b!4960808) (not b!4960816) (not b!4960811) (not b!4960810) (not b!4960817) b_and!347405 (not b!4960805) (not b!4960813) (not b!4960812) (not b_next!133341) (not b!4960809) (not b!4960807))
(check-sat b_and!347403 b_and!347405 (not b_next!133341) (not b_next!133343))
(get-model)

(declare-fun d!1596294 () Bool)

(declare-fun c!846548 () Bool)

(assert (=> d!1596294 (= c!846548 ((_ is Node!15122) (c!846542 input!1342)))))

(declare-fun e!3100642 () Bool)

(assert (=> d!1596294 (= (inv!74918 (c!846542 input!1342)) e!3100642)))

(declare-fun b!4960834 () Bool)

(declare-fun inv!74923 (Conc!15122) Bool)

(assert (=> b!4960834 (= e!3100642 (inv!74923 (c!846542 input!1342)))))

(declare-fun b!4960835 () Bool)

(declare-fun e!3100643 () Bool)

(assert (=> b!4960835 (= e!3100642 e!3100643)))

(declare-fun res!2117402 () Bool)

(assert (=> b!4960835 (= res!2117402 (not ((_ is Leaf!25132) (c!846542 input!1342))))))

(assert (=> b!4960835 (=> res!2117402 e!3100643)))

(declare-fun b!4960836 () Bool)

(declare-fun inv!74924 (Conc!15122) Bool)

(assert (=> b!4960836 (= e!3100643 (inv!74924 (c!846542 input!1342)))))

(assert (= (and d!1596294 c!846548) b!4960834))

(assert (= (and d!1596294 (not c!846548)) b!4960835))

(assert (= (and b!4960835 (not res!2117402)) b!4960836))

(declare-fun m!5985412 () Bool)

(assert (=> b!4960834 m!5985412))

(declare-fun m!5985414 () Bool)

(assert (=> b!4960836 m!5985414))

(assert (=> b!4960810 d!1596294))

(declare-fun d!1596296 () Bool)

(declare-fun isEmpty!30870 (Option!14409) Bool)

(assert (=> d!1596296 (= (isDefined!11324 lt!2048220) (not (isEmpty!30870 lt!2048220)))))

(declare-fun bs!1182711 () Bool)

(assert (= bs!1182711 d!1596296))

(declare-fun m!5985416 () Bool)

(assert (=> bs!1182711 m!5985416))

(assert (=> b!4960809 d!1596296))

(declare-fun d!1596298 () Bool)

(declare-fun isEmpty!30872 (Option!14410) Bool)

(assert (=> d!1596298 (= (isDefined!11325 lt!2048217) (not (isEmpty!30872 lt!2048217)))))

(declare-fun bs!1182712 () Bool)

(assert (= bs!1182712 d!1596298))

(declare-fun m!5985418 () Bool)

(assert (=> bs!1182712 m!5985418))

(assert (=> b!4960809 d!1596298))

(declare-fun lt!2048261 () Option!14409)

(declare-fun d!1596300 () Bool)

(assert (=> d!1596300 (= lt!2048261 (maxPrefix!4649 thiss!15247 rulesArg!259 lt!2048226))))

(declare-fun e!3100664 () Option!14409)

(assert (=> d!1596300 (= lt!2048261 e!3100664)))

(declare-fun c!846554 () Bool)

(assert (=> d!1596300 (= c!846554 (and ((_ is Cons!57374) rulesArg!259) ((_ is Nil!57374) (t!368064 rulesArg!259))))))

(declare-fun lt!2048258 () Unit!148267)

(declare-fun lt!2048259 () Unit!148267)

(assert (=> d!1596300 (= lt!2048258 lt!2048259)))

(assert (=> d!1596300 (isPrefix!5223 lt!2048226 lt!2048226)))

(assert (=> d!1596300 (= lt!2048259 (lemmaIsPrefixRefl!3547 lt!2048226 lt!2048226))))

(assert (=> d!1596300 (rulesValidInductive!3273 thiss!15247 rulesArg!259)))

(assert (=> d!1596300 (= (maxPrefixZipper!767 thiss!15247 rulesArg!259 lt!2048226) lt!2048261)))

(declare-fun call!346015 () Option!14409)

(declare-fun bm!346010 () Bool)

(declare-fun maxPrefixOneRuleZipper!286 (LexerInterface!7962 Rule!16540 List!57497) Option!14409)

(assert (=> bm!346010 (= call!346015 (maxPrefixOneRuleZipper!286 thiss!15247 (h!63822 rulesArg!259) lt!2048226))))

(declare-fun b!4960865 () Bool)

(assert (=> b!4960865 (= e!3100664 call!346015)))

(declare-fun b!4960866 () Bool)

(declare-fun lt!2048262 () Option!14409)

(declare-fun lt!2048260 () Option!14409)

(assert (=> b!4960866 (= e!3100664 (ite (and ((_ is None!14408) lt!2048262) ((_ is None!14408) lt!2048260)) None!14408 (ite ((_ is None!14408) lt!2048260) lt!2048262 (ite ((_ is None!14408) lt!2048262) lt!2048260 (ite (>= (size!38020 (_1!34329 (v!50393 lt!2048262))) (size!38020 (_1!34329 (v!50393 lt!2048260)))) lt!2048262 lt!2048260)))))))

(assert (=> b!4960866 (= lt!2048262 call!346015)))

(assert (=> b!4960866 (= lt!2048260 (maxPrefixZipper!767 thiss!15247 (t!368064 rulesArg!259) lt!2048226))))

(assert (= (and d!1596300 c!846554) b!4960865))

(assert (= (and d!1596300 (not c!846554)) b!4960866))

(assert (= (or b!4960865 b!4960866) bm!346010))

(assert (=> d!1596300 m!5985364))

(assert (=> d!1596300 m!5985382))

(assert (=> d!1596300 m!5985384))

(assert (=> d!1596300 m!5985386))

(declare-fun m!5985446 () Bool)

(assert (=> bm!346010 m!5985446))

(declare-fun m!5985448 () Bool)

(assert (=> b!4960866 m!5985448))

(assert (=> b!4960809 d!1596300))

(declare-fun d!1596304 () Bool)

(assert (=> d!1596304 (= (isDefined!11324 lt!2048225) (not (isEmpty!30870 lt!2048225)))))

(declare-fun bs!1182713 () Bool)

(assert (= bs!1182713 d!1596304))

(declare-fun m!5985450 () Bool)

(assert (=> bs!1182713 m!5985450))

(assert (=> b!4960808 d!1596304))

(declare-fun d!1596306 () Bool)

(declare-fun e!3100672 () Bool)

(assert (=> d!1596306 e!3100672))

(declare-fun res!2117430 () Bool)

(assert (=> d!1596306 (=> res!2117430 e!3100672)))

(declare-fun lt!2048265 () Bool)

(assert (=> d!1596306 (= res!2117430 (not lt!2048265))))

(declare-fun e!3100673 () Bool)

(assert (=> d!1596306 (= lt!2048265 e!3100673)))

(declare-fun res!2117432 () Bool)

(assert (=> d!1596306 (=> res!2117432 e!3100673)))

(assert (=> d!1596306 (= res!2117432 ((_ is Nil!57373) lt!2048226))))

(assert (=> d!1596306 (= (isPrefix!5223 lt!2048226 lt!2048226) lt!2048265)))

(declare-fun b!4960876 () Bool)

(declare-fun res!2117431 () Bool)

(declare-fun e!3100671 () Bool)

(assert (=> b!4960876 (=> (not res!2117431) (not e!3100671))))

(declare-fun head!10656 (List!57497) C!27456)

(assert (=> b!4960876 (= res!2117431 (= (head!10656 lt!2048226) (head!10656 lt!2048226)))))

(declare-fun b!4960875 () Bool)

(assert (=> b!4960875 (= e!3100673 e!3100671)))

(declare-fun res!2117429 () Bool)

(assert (=> b!4960875 (=> (not res!2117429) (not e!3100671))))

(assert (=> b!4960875 (= res!2117429 (not ((_ is Nil!57373) lt!2048226)))))

(declare-fun b!4960877 () Bool)

(declare-fun tail!9789 (List!57497) List!57497)

(assert (=> b!4960877 (= e!3100671 (isPrefix!5223 (tail!9789 lt!2048226) (tail!9789 lt!2048226)))))

(declare-fun b!4960878 () Bool)

(declare-fun size!38023 (List!57497) Int)

(assert (=> b!4960878 (= e!3100672 (>= (size!38023 lt!2048226) (size!38023 lt!2048226)))))

(assert (= (and d!1596306 (not res!2117432)) b!4960875))

(assert (= (and b!4960875 res!2117429) b!4960876))

(assert (= (and b!4960876 res!2117431) b!4960877))

(assert (= (and d!1596306 (not res!2117430)) b!4960878))

(declare-fun m!5985452 () Bool)

(assert (=> b!4960876 m!5985452))

(assert (=> b!4960876 m!5985452))

(declare-fun m!5985454 () Bool)

(assert (=> b!4960877 m!5985454))

(assert (=> b!4960877 m!5985454))

(assert (=> b!4960877 m!5985454))

(assert (=> b!4960877 m!5985454))

(declare-fun m!5985456 () Bool)

(assert (=> b!4960877 m!5985456))

(declare-fun m!5985458 () Bool)

(assert (=> b!4960878 m!5985458))

(assert (=> b!4960878 m!5985458))

(assert (=> b!4960802 d!1596306))

(declare-fun d!1596308 () Bool)

(assert (=> d!1596308 (isPrefix!5223 lt!2048226 lt!2048226)))

(declare-fun lt!2048268 () Unit!148267)

(declare-fun choose!36636 (List!57497 List!57497) Unit!148267)

(assert (=> d!1596308 (= lt!2048268 (choose!36636 lt!2048226 lt!2048226))))

(assert (=> d!1596308 (= (lemmaIsPrefixRefl!3547 lt!2048226 lt!2048226) lt!2048268)))

(declare-fun bs!1182714 () Bool)

(assert (= bs!1182714 d!1596308))

(assert (=> bs!1182714 m!5985382))

(declare-fun m!5985460 () Bool)

(assert (=> bs!1182714 m!5985460))

(assert (=> b!4960802 d!1596308))

(declare-fun d!1596310 () Bool)

(assert (=> d!1596310 (= (get!19894 lt!2048217) (v!50394 lt!2048217))))

(assert (=> b!4960812 d!1596310))

(declare-fun d!1596312 () Bool)

(assert (=> d!1596312 (= (get!19895 lt!2048225) (v!50393 lt!2048225))))

(assert (=> b!4960812 d!1596312))

(declare-fun b!4960903 () Bool)

(declare-fun res!2117453 () Bool)

(declare-fun e!3100686 () Bool)

(assert (=> b!4960903 (=> (not res!2117453) (not e!3100686))))

(declare-fun lt!2048294 () Option!14409)

(declare-fun matchR!6625 (Regex!13603 List!57497) Bool)

(declare-fun charsOf!5428 (Token!15240) BalanceConc!29674)

(assert (=> b!4960903 (= res!2117453 (matchR!6625 (regex!8370 (rule!11600 (_1!34329 (get!19895 lt!2048294)))) (list!18325 (charsOf!5428 (_1!34329 (get!19895 lt!2048294))))))))

(declare-fun b!4960904 () Bool)

(declare-fun contains!19529 (List!57498 Rule!16540) Bool)

(assert (=> b!4960904 (= e!3100686 (contains!19529 rulesArg!259 (rule!11600 (_1!34329 (get!19895 lt!2048294)))))))

(declare-fun b!4960905 () Bool)

(declare-fun res!2117450 () Bool)

(assert (=> b!4960905 (=> (not res!2117450) (not e!3100686))))

(assert (=> b!4960905 (= res!2117450 (< (size!38023 (_2!34329 (get!19895 lt!2048294))) (size!38023 lt!2048226)))))

(declare-fun b!4960906 () Bool)

(declare-fun res!2117452 () Bool)

(assert (=> b!4960906 (=> (not res!2117452) (not e!3100686))))

(assert (=> b!4960906 (= res!2117452 (= (list!18325 (charsOf!5428 (_1!34329 (get!19895 lt!2048294)))) (originalCharacters!8651 (_1!34329 (get!19895 lt!2048294)))))))

(declare-fun b!4960908 () Bool)

(declare-fun res!2117449 () Bool)

(assert (=> b!4960908 (=> (not res!2117449) (not e!3100686))))

(declare-fun apply!13893 (TokenValueInjection!16668 BalanceConc!29674) TokenValue!8680)

(declare-fun seqFromList!6025 (List!57497) BalanceConc!29674)

(assert (=> b!4960908 (= res!2117449 (= (value!267987 (_1!34329 (get!19895 lt!2048294))) (apply!13893 (transformation!8370 (rule!11600 (_1!34329 (get!19895 lt!2048294)))) (seqFromList!6025 (originalCharacters!8651 (_1!34329 (get!19895 lt!2048294)))))))))

(declare-fun bm!346013 () Bool)

(declare-fun call!346018 () Option!14409)

(declare-fun maxPrefixOneRule!3618 (LexerInterface!7962 Rule!16540 List!57497) Option!14409)

(assert (=> bm!346013 (= call!346018 (maxPrefixOneRule!3618 thiss!15247 (h!63822 rulesArg!259) lt!2048226))))

(declare-fun b!4960909 () Bool)

(declare-fun e!3100685 () Option!14409)

(assert (=> b!4960909 (= e!3100685 call!346018)))

(declare-fun b!4960910 () Bool)

(declare-fun res!2117451 () Bool)

(assert (=> b!4960910 (=> (not res!2117451) (not e!3100686))))

(declare-fun ++!12523 (List!57497 List!57497) List!57497)

(assert (=> b!4960910 (= res!2117451 (= (++!12523 (list!18325 (charsOf!5428 (_1!34329 (get!19895 lt!2048294)))) (_2!34329 (get!19895 lt!2048294))) lt!2048226))))

(declare-fun b!4960911 () Bool)

(declare-fun e!3100684 () Bool)

(assert (=> b!4960911 (= e!3100684 e!3100686)))

(declare-fun res!2117454 () Bool)

(assert (=> b!4960911 (=> (not res!2117454) (not e!3100686))))

(assert (=> b!4960911 (= res!2117454 (isDefined!11324 lt!2048294))))

(declare-fun d!1596314 () Bool)

(assert (=> d!1596314 e!3100684))

(declare-fun res!2117455 () Bool)

(assert (=> d!1596314 (=> res!2117455 e!3100684)))

(assert (=> d!1596314 (= res!2117455 (isEmpty!30870 lt!2048294))))

(assert (=> d!1596314 (= lt!2048294 e!3100685)))

(declare-fun c!846559 () Bool)

(assert (=> d!1596314 (= c!846559 (and ((_ is Cons!57374) rulesArg!259) ((_ is Nil!57374) (t!368064 rulesArg!259))))))

(declare-fun lt!2048293 () Unit!148267)

(declare-fun lt!2048297 () Unit!148267)

(assert (=> d!1596314 (= lt!2048293 lt!2048297)))

(assert (=> d!1596314 (isPrefix!5223 lt!2048226 lt!2048226)))

(assert (=> d!1596314 (= lt!2048297 (lemmaIsPrefixRefl!3547 lt!2048226 lt!2048226))))

(assert (=> d!1596314 (rulesValidInductive!3273 thiss!15247 rulesArg!259)))

(assert (=> d!1596314 (= (maxPrefix!4649 thiss!15247 rulesArg!259 lt!2048226) lt!2048294)))

(declare-fun b!4960907 () Bool)

(declare-fun lt!2048296 () Option!14409)

(declare-fun lt!2048295 () Option!14409)

(assert (=> b!4960907 (= e!3100685 (ite (and ((_ is None!14408) lt!2048296) ((_ is None!14408) lt!2048295)) None!14408 (ite ((_ is None!14408) lt!2048295) lt!2048296 (ite ((_ is None!14408) lt!2048296) lt!2048295 (ite (>= (size!38020 (_1!34329 (v!50393 lt!2048296))) (size!38020 (_1!34329 (v!50393 lt!2048295)))) lt!2048296 lt!2048295)))))))

(assert (=> b!4960907 (= lt!2048296 call!346018)))

(assert (=> b!4960907 (= lt!2048295 (maxPrefix!4649 thiss!15247 (t!368064 rulesArg!259) lt!2048226))))

(assert (= (and d!1596314 c!846559) b!4960909))

(assert (= (and d!1596314 (not c!846559)) b!4960907))

(assert (= (or b!4960909 b!4960907) bm!346013))

(assert (= (and d!1596314 (not res!2117455)) b!4960911))

(assert (= (and b!4960911 res!2117454) b!4960906))

(assert (= (and b!4960906 res!2117452) b!4960905))

(assert (= (and b!4960905 res!2117450) b!4960910))

(assert (= (and b!4960910 res!2117451) b!4960908))

(assert (= (and b!4960908 res!2117449) b!4960903))

(assert (= (and b!4960903 res!2117453) b!4960904))

(declare-fun m!5985462 () Bool)

(assert (=> b!4960911 m!5985462))

(declare-fun m!5985464 () Bool)

(assert (=> b!4960907 m!5985464))

(declare-fun m!5985466 () Bool)

(assert (=> b!4960908 m!5985466))

(declare-fun m!5985468 () Bool)

(assert (=> b!4960908 m!5985468))

(assert (=> b!4960908 m!5985468))

(declare-fun m!5985470 () Bool)

(assert (=> b!4960908 m!5985470))

(assert (=> b!4960904 m!5985466))

(declare-fun m!5985472 () Bool)

(assert (=> b!4960904 m!5985472))

(declare-fun m!5985474 () Bool)

(assert (=> bm!346013 m!5985474))

(assert (=> b!4960910 m!5985466))

(declare-fun m!5985476 () Bool)

(assert (=> b!4960910 m!5985476))

(assert (=> b!4960910 m!5985476))

(declare-fun m!5985478 () Bool)

(assert (=> b!4960910 m!5985478))

(assert (=> b!4960910 m!5985478))

(declare-fun m!5985480 () Bool)

(assert (=> b!4960910 m!5985480))

(assert (=> b!4960903 m!5985466))

(assert (=> b!4960903 m!5985476))

(assert (=> b!4960903 m!5985476))

(assert (=> b!4960903 m!5985478))

(assert (=> b!4960903 m!5985478))

(declare-fun m!5985482 () Bool)

(assert (=> b!4960903 m!5985482))

(assert (=> b!4960905 m!5985466))

(declare-fun m!5985484 () Bool)

(assert (=> b!4960905 m!5985484))

(assert (=> b!4960905 m!5985458))

(declare-fun m!5985486 () Bool)

(assert (=> d!1596314 m!5985486))

(assert (=> d!1596314 m!5985382))

(assert (=> d!1596314 m!5985384))

(assert (=> d!1596314 m!5985386))

(assert (=> b!4960906 m!5985466))

(assert (=> b!4960906 m!5985476))

(assert (=> b!4960906 m!5985476))

(assert (=> b!4960906 m!5985478))

(assert (=> b!4960812 d!1596314))

(declare-fun d!1596316 () Bool)

(declare-fun list!18327 (Conc!15122) List!57497)

(assert (=> d!1596316 (= (list!18325 (_2!34330 lt!2048222)) (list!18327 (c!846542 (_2!34330 lt!2048222))))))

(declare-fun bs!1182715 () Bool)

(assert (= bs!1182715 d!1596316))

(declare-fun m!5985488 () Bool)

(assert (=> bs!1182715 m!5985488))

(assert (=> b!4960811 d!1596316))

(declare-fun d!1596318 () Bool)

(assert (=> d!1596318 true))

(declare-fun lt!2048316 () Bool)

(declare-fun lambda!247220 () Int)

(declare-fun forall!13316 (List!57498 Int) Bool)

(assert (=> d!1596318 (= lt!2048316 (forall!13316 rulesArg!259 lambda!247220))))

(declare-fun e!3100708 () Bool)

(assert (=> d!1596318 (= lt!2048316 e!3100708)))

(declare-fun res!2117471 () Bool)

(assert (=> d!1596318 (=> res!2117471 e!3100708)))

(assert (=> d!1596318 (= res!2117471 (not ((_ is Cons!57374) rulesArg!259)))))

(assert (=> d!1596318 (= (rulesValidInductive!3273 thiss!15247 rulesArg!259) lt!2048316)))

(declare-fun b!4960936 () Bool)

(declare-fun e!3100709 () Bool)

(assert (=> b!4960936 (= e!3100708 e!3100709)))

(declare-fun res!2117470 () Bool)

(assert (=> b!4960936 (=> (not res!2117470) (not e!3100709))))

(declare-fun ruleValid!3790 (LexerInterface!7962 Rule!16540) Bool)

(assert (=> b!4960936 (= res!2117470 (ruleValid!3790 thiss!15247 (h!63822 rulesArg!259)))))

(declare-fun b!4960937 () Bool)

(assert (=> b!4960937 (= e!3100709 (rulesValidInductive!3273 thiss!15247 (t!368064 rulesArg!259)))))

(assert (= (and d!1596318 (not res!2117471)) b!4960936))

(assert (= (and b!4960936 res!2117470) b!4960937))

(declare-fun m!5985540 () Bool)

(assert (=> d!1596318 m!5985540))

(declare-fun m!5985542 () Bool)

(assert (=> b!4960936 m!5985542))

(declare-fun m!5985544 () Bool)

(assert (=> b!4960937 m!5985544))

(assert (=> b!4960805 d!1596318))

(declare-fun d!1596326 () Bool)

(assert (=> d!1596326 (= (inv!74914 (tag!9234 (h!63822 rulesArg!259))) (= (mod (str.len (value!267986 (tag!9234 (h!63822 rulesArg!259)))) 2) 0))))

(assert (=> b!4960815 d!1596326))

(declare-fun d!1596328 () Bool)

(declare-fun res!2117474 () Bool)

(declare-fun e!3100712 () Bool)

(assert (=> d!1596328 (=> (not res!2117474) (not e!3100712))))

(declare-fun semiInverseModEq!3687 (Int Int) Bool)

(assert (=> d!1596328 (= res!2117474 (semiInverseModEq!3687 (toChars!11180 (transformation!8370 (h!63822 rulesArg!259))) (toValue!11321 (transformation!8370 (h!63822 rulesArg!259)))))))

(assert (=> d!1596328 (= (inv!74920 (transformation!8370 (h!63822 rulesArg!259))) e!3100712)))

(declare-fun b!4960942 () Bool)

(declare-fun equivClasses!3535 (Int Int) Bool)

(assert (=> b!4960942 (= e!3100712 (equivClasses!3535 (toChars!11180 (transformation!8370 (h!63822 rulesArg!259))) (toValue!11321 (transformation!8370 (h!63822 rulesArg!259)))))))

(assert (= (and d!1596328 res!2117474) b!4960942))

(declare-fun m!5985546 () Bool)

(assert (=> d!1596328 m!5985546))

(declare-fun m!5985548 () Bool)

(assert (=> b!4960942 m!5985548))

(assert (=> b!4960815 d!1596328))

(declare-fun d!1596330 () Bool)

(declare-fun e!3100715 () Bool)

(assert (=> d!1596330 e!3100715))

(declare-fun res!2117477 () Bool)

(assert (=> d!1596330 (=> res!2117477 e!3100715)))

(declare-fun lt!2048319 () Bool)

(assert (=> d!1596330 (= res!2117477 (not lt!2048319))))

(declare-fun drop!2337 (List!57497 Int) List!57497)

(assert (=> d!1596330 (= lt!2048319 (= lt!2048226 (drop!2337 (list!18325 totalInput!464) (- (size!38023 (list!18325 totalInput!464)) (size!38023 lt!2048226)))))))

(assert (=> d!1596330 (= (isSuffix!1169 lt!2048226 (list!18325 totalInput!464)) lt!2048319)))

(declare-fun b!4960945 () Bool)

(assert (=> b!4960945 (= e!3100715 (>= (size!38023 (list!18325 totalInput!464)) (size!38023 lt!2048226)))))

(assert (= (and d!1596330 (not res!2117477)) b!4960945))

(assert (=> d!1596330 m!5985352))

(declare-fun m!5985550 () Bool)

(assert (=> d!1596330 m!5985550))

(assert (=> d!1596330 m!5985458))

(assert (=> d!1596330 m!5985352))

(declare-fun m!5985552 () Bool)

(assert (=> d!1596330 m!5985552))

(assert (=> b!4960945 m!5985352))

(assert (=> b!4960945 m!5985550))

(assert (=> b!4960945 m!5985458))

(assert (=> b!4960804 d!1596330))

(declare-fun d!1596332 () Bool)

(assert (=> d!1596332 (= (list!18325 totalInput!464) (list!18327 (c!846542 totalInput!464)))))

(declare-fun bs!1182718 () Bool)

(assert (= bs!1182718 d!1596332))

(declare-fun m!5985554 () Bool)

(assert (=> bs!1182718 m!5985554))

(assert (=> b!4960804 d!1596332))

(declare-fun d!1596334 () Bool)

(assert (=> d!1596334 (= (list!18325 input!1342) (list!18327 (c!846542 input!1342)))))

(declare-fun bs!1182719 () Bool)

(assert (= bs!1182719 d!1596334))

(declare-fun m!5985556 () Bool)

(assert (=> bs!1182719 m!5985556))

(assert (=> b!4960804 d!1596334))

(declare-fun d!1596336 () Bool)

(declare-fun isBalanced!4190 (Conc!15122) Bool)

(assert (=> d!1596336 (= (inv!74919 input!1342) (isBalanced!4190 (c!846542 input!1342)))))

(declare-fun bs!1182720 () Bool)

(assert (= bs!1182720 d!1596336))

(declare-fun m!5985558 () Bool)

(assert (=> bs!1182720 m!5985558))

(assert (=> start!523026 d!1596336))

(declare-fun d!1596338 () Bool)

(assert (=> d!1596338 (= (inv!74919 totalInput!464) (isBalanced!4190 (c!846542 totalInput!464)))))

(declare-fun bs!1182721 () Bool)

(assert (= bs!1182721 d!1596338))

(declare-fun m!5985560 () Bool)

(assert (=> bs!1182721 m!5985560))

(assert (=> start!523026 d!1596338))

(declare-fun d!1596340 () Bool)

(assert (=> d!1596340 (= (get!19895 lt!2048220) (v!50393 lt!2048220))))

(assert (=> b!4960818 d!1596340))

(assert (=> b!4960818 d!1596310))

(declare-fun d!1596342 () Bool)

(assert (=> d!1596342 (= (isEmpty!30866 rulesArg!259) ((_ is Nil!57374) rulesArg!259))))

(assert (=> b!4960807 d!1596342))

(declare-fun call!346027 () Option!14410)

(declare-fun bm!346022 () Bool)

(assert (=> bm!346022 (= call!346027 (maxPrefixOneRuleZipperSequenceV2!354 thiss!15247 (h!63822 (t!368064 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4960995 () Bool)

(declare-fun e!3100744 () Option!14410)

(declare-fun lt!2048365 () Option!14410)

(declare-fun lt!2048368 () Option!14410)

(assert (=> b!4960995 (= e!3100744 (ite (and ((_ is None!14409) lt!2048365) ((_ is None!14409) lt!2048368)) None!14409 (ite ((_ is None!14409) lt!2048368) lt!2048365 (ite ((_ is None!14409) lt!2048365) lt!2048368 (ite (>= (size!38020 (_1!34330 (v!50394 lt!2048365))) (size!38020 (_1!34330 (v!50394 lt!2048368)))) lt!2048365 lt!2048368)))))))

(assert (=> b!4960995 (= lt!2048365 call!346027)))

(assert (=> b!4960995 (= lt!2048368 (maxPrefixZipperSequenceV2!701 thiss!15247 (t!368064 (t!368064 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4960996 () Bool)

(declare-fun e!3100742 () Bool)

(declare-fun e!3100740 () Bool)

(assert (=> b!4960996 (= e!3100742 e!3100740)))

(declare-fun res!2117514 () Bool)

(assert (=> b!4960996 (=> res!2117514 e!3100740)))

(declare-fun lt!2048369 () Option!14410)

(assert (=> b!4960996 (= res!2117514 (not (isDefined!11325 lt!2048369)))))

(declare-fun b!4960997 () Bool)

(assert (=> b!4960997 (= e!3100744 call!346027)))

(declare-fun d!1596344 () Bool)

(assert (=> d!1596344 e!3100742))

(declare-fun res!2117515 () Bool)

(assert (=> d!1596344 (=> (not res!2117515) (not e!3100742))))

(assert (=> d!1596344 (= res!2117515 (= (isDefined!11325 lt!2048369) (isDefined!11324 (maxPrefixZipper!767 thiss!15247 (t!368064 rulesArg!259) (list!18325 input!1342)))))))

(assert (=> d!1596344 (= lt!2048369 e!3100744)))

(declare-fun c!846569 () Bool)

(assert (=> d!1596344 (= c!846569 (and ((_ is Cons!57374) (t!368064 rulesArg!259)) ((_ is Nil!57374) (t!368064 (t!368064 rulesArg!259)))))))

(declare-fun lt!2048364 () Unit!148267)

(declare-fun lt!2048367 () Unit!148267)

(assert (=> d!1596344 (= lt!2048364 lt!2048367)))

(declare-fun lt!2048370 () List!57497)

(declare-fun lt!2048366 () List!57497)

(assert (=> d!1596344 (isPrefix!5223 lt!2048370 lt!2048366)))

(assert (=> d!1596344 (= lt!2048367 (lemmaIsPrefixRefl!3547 lt!2048370 lt!2048366))))

(assert (=> d!1596344 (= lt!2048366 (list!18325 input!1342))))

(assert (=> d!1596344 (= lt!2048370 (list!18325 input!1342))))

(assert (=> d!1596344 (rulesValidInductive!3273 thiss!15247 (t!368064 rulesArg!259))))

(assert (=> d!1596344 (= (maxPrefixZipperSequenceV2!701 thiss!15247 (t!368064 rulesArg!259) input!1342 totalInput!464) lt!2048369)))

(declare-fun e!3100745 () Bool)

(declare-fun b!4960998 () Bool)

(assert (=> b!4960998 (= e!3100745 (= (list!18325 (_2!34330 (get!19894 lt!2048369))) (_2!34329 (get!19895 (maxPrefix!4649 thiss!15247 (t!368064 rulesArg!259) (list!18325 input!1342))))))))

(declare-fun b!4960999 () Bool)

(declare-fun e!3100741 () Bool)

(assert (=> b!4960999 (= e!3100741 (= (list!18325 (_2!34330 (get!19894 lt!2048369))) (_2!34329 (get!19895 (maxPrefixZipper!767 thiss!15247 (t!368064 rulesArg!259) (list!18325 input!1342))))))))

(declare-fun b!4961000 () Bool)

(declare-fun e!3100743 () Bool)

(assert (=> b!4961000 (= e!3100743 e!3100741)))

(declare-fun res!2117513 () Bool)

(assert (=> b!4961000 (=> (not res!2117513) (not e!3100741))))

(assert (=> b!4961000 (= res!2117513 (= (_1!34330 (get!19894 lt!2048369)) (_1!34329 (get!19895 (maxPrefixZipper!767 thiss!15247 (t!368064 rulesArg!259) (list!18325 input!1342))))))))

(declare-fun b!4961001 () Bool)

(assert (=> b!4961001 (= e!3100740 e!3100745)))

(declare-fun res!2117511 () Bool)

(assert (=> b!4961001 (=> (not res!2117511) (not e!3100745))))

(assert (=> b!4961001 (= res!2117511 (= (_1!34330 (get!19894 lt!2048369)) (_1!34329 (get!19895 (maxPrefix!4649 thiss!15247 (t!368064 rulesArg!259) (list!18325 input!1342))))))))

(declare-fun b!4961002 () Bool)

(declare-fun res!2117512 () Bool)

(assert (=> b!4961002 (=> (not res!2117512) (not e!3100742))))

(assert (=> b!4961002 (= res!2117512 e!3100743)))

(declare-fun res!2117516 () Bool)

(assert (=> b!4961002 (=> res!2117516 e!3100743)))

(assert (=> b!4961002 (= res!2117516 (not (isDefined!11325 lt!2048369)))))

(assert (= (and d!1596344 c!846569) b!4960997))

(assert (= (and d!1596344 (not c!846569)) b!4960995))

(assert (= (or b!4960997 b!4960995) bm!346022))

(assert (= (and d!1596344 res!2117515) b!4961002))

(assert (= (and b!4961002 (not res!2117516)) b!4961000))

(assert (= (and b!4961000 res!2117513) b!4960999))

(assert (= (and b!4961002 res!2117512) b!4960996))

(assert (= (and b!4960996 (not res!2117514)) b!4961001))

(assert (= (and b!4961001 res!2117511) b!4960998))

(declare-fun m!5985594 () Bool)

(assert (=> bm!346022 m!5985594))

(declare-fun m!5985596 () Bool)

(assert (=> b!4961001 m!5985596))

(assert (=> b!4961001 m!5985356))

(assert (=> b!4961001 m!5985356))

(declare-fun m!5985598 () Bool)

(assert (=> b!4961001 m!5985598))

(assert (=> b!4961001 m!5985598))

(declare-fun m!5985600 () Bool)

(assert (=> b!4961001 m!5985600))

(declare-fun m!5985602 () Bool)

(assert (=> d!1596344 m!5985602))

(declare-fun m!5985604 () Bool)

(assert (=> d!1596344 m!5985604))

(assert (=> d!1596344 m!5985356))

(declare-fun m!5985606 () Bool)

(assert (=> d!1596344 m!5985606))

(declare-fun m!5985608 () Bool)

(assert (=> d!1596344 m!5985608))

(assert (=> d!1596344 m!5985544))

(assert (=> d!1596344 m!5985606))

(declare-fun m!5985610 () Bool)

(assert (=> d!1596344 m!5985610))

(assert (=> d!1596344 m!5985356))

(assert (=> b!4961002 m!5985604))

(declare-fun m!5985612 () Bool)

(assert (=> b!4960995 m!5985612))

(assert (=> b!4960996 m!5985604))

(assert (=> b!4961000 m!5985596))

(assert (=> b!4961000 m!5985356))

(assert (=> b!4961000 m!5985356))

(assert (=> b!4961000 m!5985606))

(assert (=> b!4961000 m!5985606))

(declare-fun m!5985614 () Bool)

(assert (=> b!4961000 m!5985614))

(assert (=> b!4960998 m!5985356))

(declare-fun m!5985616 () Bool)

(assert (=> b!4960998 m!5985616))

(assert (=> b!4960998 m!5985356))

(assert (=> b!4960998 m!5985598))

(assert (=> b!4960998 m!5985596))

(assert (=> b!4960998 m!5985598))

(assert (=> b!4960998 m!5985600))

(assert (=> b!4960999 m!5985356))

(assert (=> b!4960999 m!5985616))

(assert (=> b!4960999 m!5985356))

(assert (=> b!4960999 m!5985606))

(assert (=> b!4960999 m!5985596))

(assert (=> b!4960999 m!5985606))

(assert (=> b!4960999 m!5985614))

(assert (=> b!4960817 d!1596344))

(declare-fun b!4961096 () Bool)

(declare-fun e!3100812 () Bool)

(assert (=> b!4961096 (= e!3100812 true)))

(declare-fun b!4961095 () Bool)

(declare-fun e!3100811 () Bool)

(assert (=> b!4961095 (= e!3100811 e!3100812)))

(declare-fun b!4961083 () Bool)

(assert (=> b!4961083 e!3100811))

(assert (= b!4961095 b!4961096))

(assert (= b!4961083 b!4961095))

(declare-fun lambda!247228 () Int)

(declare-fun order!26153 () Int)

(declare-fun order!26155 () Int)

(declare-fun dynLambda!23114 (Int Int) Int)

(declare-fun dynLambda!23115 (Int Int) Int)

(assert (=> b!4961096 (< (dynLambda!23114 order!26153 (toValue!11321 (transformation!8370 (h!63822 rulesArg!259)))) (dynLambda!23115 order!26155 lambda!247228))))

(declare-fun order!26157 () Int)

(declare-fun dynLambda!23116 (Int Int) Int)

(assert (=> b!4961096 (< (dynLambda!23116 order!26157 (toChars!11180 (transformation!8370 (h!63822 rulesArg!259)))) (dynLambda!23115 order!26155 lambda!247228))))

(declare-fun e!3100802 () Option!14410)

(declare-datatypes ((tuple2!62060 0))(
  ( (tuple2!62061 (_1!34333 BalanceConc!29674) (_2!34333 BalanceConc!29674)) )
))
(declare-fun lt!2048409 () tuple2!62060)

(declare-fun size!38024 (BalanceConc!29674) Int)

(assert (=> b!4961083 (= e!3100802 (Some!14409 (tuple2!62055 (Token!15241 (apply!13893 (transformation!8370 (h!63822 rulesArg!259)) (_1!34333 lt!2048409)) (h!63822 rulesArg!259) (size!38024 (_1!34333 lt!2048409)) (list!18325 (_1!34333 lt!2048409))) (_2!34333 lt!2048409))))))

(declare-fun lt!2048404 () List!57497)

(assert (=> b!4961083 (= lt!2048404 (list!18325 input!1342))))

(declare-fun lt!2048411 () Unit!148267)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1809 (Regex!13603 List!57497) Unit!148267)

(assert (=> b!4961083 (= lt!2048411 (longestMatchIsAcceptedByMatchOrIsEmpty!1809 (regex!8370 (h!63822 rulesArg!259)) lt!2048404))))

(declare-fun res!2117553 () Bool)

(declare-fun isEmpty!30873 (List!57497) Bool)

(declare-datatypes ((tuple2!62062 0))(
  ( (tuple2!62063 (_1!34334 List!57497) (_2!34334 List!57497)) )
))
(declare-fun findLongestMatchInner!1848 (Regex!13603 List!57497 Int List!57497 List!57497 Int) tuple2!62062)

(assert (=> b!4961083 (= res!2117553 (isEmpty!30873 (_1!34334 (findLongestMatchInner!1848 (regex!8370 (h!63822 rulesArg!259)) Nil!57373 (size!38023 Nil!57373) lt!2048404 lt!2048404 (size!38023 lt!2048404)))))))

(declare-fun e!3100805 () Bool)

(assert (=> b!4961083 (=> res!2117553 e!3100805)))

(assert (=> b!4961083 e!3100805))

(declare-fun lt!2048412 () Unit!148267)

(assert (=> b!4961083 (= lt!2048412 lt!2048411)))

(declare-fun lt!2048405 () Unit!148267)

(declare-fun lemmaInv!1327 (TokenValueInjection!16668) Unit!148267)

(assert (=> b!4961083 (= lt!2048405 (lemmaInv!1327 (transformation!8370 (h!63822 rulesArg!259))))))

(declare-fun lt!2048410 () Unit!148267)

(declare-fun ForallOf!1220 (Int BalanceConc!29674) Unit!148267)

(assert (=> b!4961083 (= lt!2048410 (ForallOf!1220 lambda!247228 (_1!34333 lt!2048409)))))

(declare-fun lt!2048406 () Unit!148267)

(assert (=> b!4961083 (= lt!2048406 (ForallOf!1220 lambda!247228 (seqFromList!6025 (list!18325 (_1!34333 lt!2048409)))))))

(declare-fun lt!2048407 () Option!14410)

(assert (=> b!4961083 (= lt!2048407 (Some!14409 (tuple2!62055 (Token!15241 (apply!13893 (transformation!8370 (h!63822 rulesArg!259)) (_1!34333 lt!2048409)) (h!63822 rulesArg!259) (size!38024 (_1!34333 lt!2048409)) (list!18325 (_1!34333 lt!2048409))) (_2!34333 lt!2048409))))))

(declare-fun lt!2048408 () Unit!148267)

(declare-fun lemmaEqSameImage!1161 (TokenValueInjection!16668 BalanceConc!29674 BalanceConc!29674) Unit!148267)

(assert (=> b!4961083 (= lt!2048408 (lemmaEqSameImage!1161 (transformation!8370 (h!63822 rulesArg!259)) (_1!34333 lt!2048409) (seqFromList!6025 (list!18325 (_1!34333 lt!2048409)))))))

(declare-fun b!4961084 () Bool)

(declare-fun lt!2048403 () Option!14410)

(declare-fun e!3100803 () Bool)

(assert (=> b!4961084 (= e!3100803 (= (list!18325 (_2!34330 (get!19894 lt!2048403))) (_2!34329 (get!19895 (maxPrefixOneRule!3618 thiss!15247 (h!63822 rulesArg!259) (list!18325 input!1342))))))))

(declare-fun b!4961085 () Bool)

(assert (=> b!4961085 (= e!3100802 None!14409)))

(declare-fun b!4961086 () Bool)

(declare-fun e!3100806 () Bool)

(assert (=> b!4961086 (= e!3100806 e!3100803)))

(declare-fun res!2117551 () Bool)

(assert (=> b!4961086 (=> (not res!2117551) (not e!3100803))))

(assert (=> b!4961086 (= res!2117551 (= (_1!34330 (get!19894 lt!2048403)) (_1!34329 (get!19895 (maxPrefixOneRule!3618 thiss!15247 (h!63822 rulesArg!259) (list!18325 input!1342))))))))

(declare-fun d!1596356 () Bool)

(declare-fun e!3100804 () Bool)

(assert (=> d!1596356 e!3100804))

(declare-fun res!2117552 () Bool)

(assert (=> d!1596356 (=> (not res!2117552) (not e!3100804))))

(assert (=> d!1596356 (= res!2117552 (= (isDefined!11325 lt!2048403) (isDefined!11324 (maxPrefixOneRule!3618 thiss!15247 (h!63822 rulesArg!259) (list!18325 input!1342)))))))

(assert (=> d!1596356 (= lt!2048403 e!3100802)))

(declare-fun c!846573 () Bool)

(declare-fun isEmpty!30874 (BalanceConc!29674) Bool)

(assert (=> d!1596356 (= c!846573 (isEmpty!30874 (_1!34333 lt!2048409)))))

(declare-fun findLongestMatchWithZipperSequenceV2!157 (Regex!13603 BalanceConc!29674 BalanceConc!29674) tuple2!62060)

(assert (=> d!1596356 (= lt!2048409 (findLongestMatchWithZipperSequenceV2!157 (regex!8370 (h!63822 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1596356 (ruleValid!3790 thiss!15247 (h!63822 rulesArg!259))))

(assert (=> d!1596356 (= (maxPrefixOneRuleZipperSequenceV2!354 thiss!15247 (h!63822 rulesArg!259) input!1342 totalInput!464) lt!2048403)))

(declare-fun b!4961087 () Bool)

(assert (=> b!4961087 (= e!3100804 e!3100806)))

(declare-fun res!2117550 () Bool)

(assert (=> b!4961087 (=> res!2117550 e!3100806)))

(assert (=> b!4961087 (= res!2117550 (not (isDefined!11325 lt!2048403)))))

(declare-fun b!4961088 () Bool)

(assert (=> b!4961088 (= e!3100805 (matchR!6625 (regex!8370 (h!63822 rulesArg!259)) (_1!34334 (findLongestMatchInner!1848 (regex!8370 (h!63822 rulesArg!259)) Nil!57373 (size!38023 Nil!57373) lt!2048404 lt!2048404 (size!38023 lt!2048404)))))))

(assert (= (and d!1596356 c!846573) b!4961085))

(assert (= (and d!1596356 (not c!846573)) b!4961083))

(assert (= (and b!4961083 (not res!2117553)) b!4961088))

(assert (= (and d!1596356 res!2117552) b!4961087))

(assert (= (and b!4961087 (not res!2117550)) b!4961086))

(assert (= (and b!4961086 res!2117551) b!4961084))

(declare-fun m!5985660 () Bool)

(assert (=> b!4961084 m!5985660))

(declare-fun m!5985662 () Bool)

(assert (=> b!4961084 m!5985662))

(assert (=> b!4961084 m!5985356))

(declare-fun m!5985664 () Bool)

(assert (=> b!4961084 m!5985664))

(declare-fun m!5985666 () Bool)

(assert (=> b!4961084 m!5985666))

(assert (=> b!4961084 m!5985356))

(assert (=> b!4961084 m!5985664))

(declare-fun m!5985668 () Bool)

(assert (=> b!4961087 m!5985668))

(declare-fun m!5985670 () Bool)

(assert (=> d!1596356 m!5985670))

(assert (=> d!1596356 m!5985356))

(assert (=> d!1596356 m!5985668))

(assert (=> d!1596356 m!5985542))

(assert (=> d!1596356 m!5985356))

(assert (=> d!1596356 m!5985664))

(declare-fun m!5985672 () Bool)

(assert (=> d!1596356 m!5985672))

(assert (=> d!1596356 m!5985664))

(declare-fun m!5985674 () Bool)

(assert (=> d!1596356 m!5985674))

(declare-fun m!5985676 () Bool)

(assert (=> b!4961083 m!5985676))

(declare-fun m!5985678 () Bool)

(assert (=> b!4961083 m!5985678))

(declare-fun m!5985680 () Bool)

(assert (=> b!4961083 m!5985680))

(assert (=> b!4961083 m!5985678))

(declare-fun m!5985682 () Bool)

(assert (=> b!4961083 m!5985682))

(declare-fun m!5985684 () Bool)

(assert (=> b!4961083 m!5985684))

(declare-fun m!5985686 () Bool)

(assert (=> b!4961083 m!5985686))

(declare-fun m!5985688 () Bool)

(assert (=> b!4961083 m!5985688))

(declare-fun m!5985690 () Bool)

(assert (=> b!4961083 m!5985690))

(declare-fun m!5985692 () Bool)

(assert (=> b!4961083 m!5985692))

(assert (=> b!4961083 m!5985356))

(assert (=> b!4961083 m!5985686))

(declare-fun m!5985694 () Bool)

(assert (=> b!4961083 m!5985694))

(declare-fun m!5985696 () Bool)

(assert (=> b!4961083 m!5985696))

(declare-fun m!5985698 () Bool)

(assert (=> b!4961083 m!5985698))

(declare-fun m!5985700 () Bool)

(assert (=> b!4961083 m!5985700))

(assert (=> b!4961083 m!5985676))

(assert (=> b!4961083 m!5985700))

(assert (=> b!4961083 m!5985686))

(assert (=> b!4961086 m!5985660))

(assert (=> b!4961086 m!5985356))

(assert (=> b!4961086 m!5985356))

(assert (=> b!4961086 m!5985664))

(assert (=> b!4961086 m!5985664))

(assert (=> b!4961086 m!5985666))

(assert (=> b!4961088 m!5985676))

(assert (=> b!4961088 m!5985678))

(assert (=> b!4961088 m!5985676))

(assert (=> b!4961088 m!5985678))

(assert (=> b!4961088 m!5985680))

(declare-fun m!5985702 () Bool)

(assert (=> b!4961088 m!5985702))

(assert (=> b!4960817 d!1596356))

(declare-fun d!1596376 () Bool)

(declare-fun c!846574 () Bool)

(assert (=> d!1596376 (= c!846574 ((_ is Node!15122) (c!846542 totalInput!464)))))

(declare-fun e!3100813 () Bool)

(assert (=> d!1596376 (= (inv!74918 (c!846542 totalInput!464)) e!3100813)))

(declare-fun b!4961097 () Bool)

(assert (=> b!4961097 (= e!3100813 (inv!74923 (c!846542 totalInput!464)))))

(declare-fun b!4961098 () Bool)

(declare-fun e!3100814 () Bool)

(assert (=> b!4961098 (= e!3100813 e!3100814)))

(declare-fun res!2117554 () Bool)

(assert (=> b!4961098 (= res!2117554 (not ((_ is Leaf!25132) (c!846542 totalInput!464))))))

(assert (=> b!4961098 (=> res!2117554 e!3100814)))

(declare-fun b!4961099 () Bool)

(assert (=> b!4961099 (= e!3100814 (inv!74924 (c!846542 totalInput!464)))))

(assert (= (and d!1596376 c!846574) b!4961097))

(assert (= (and d!1596376 (not c!846574)) b!4961098))

(assert (= (and b!4961098 (not res!2117554)) b!4961099))

(declare-fun m!5985704 () Bool)

(assert (=> b!4961097 m!5985704))

(declare-fun m!5985706 () Bool)

(assert (=> b!4961099 m!5985706))

(assert (=> b!4960816 d!1596376))

(declare-fun b!4961108 () Bool)

(declare-fun tp!1391476 () Bool)

(declare-fun e!3100820 () Bool)

(declare-fun tp!1391478 () Bool)

(assert (=> b!4961108 (= e!3100820 (and (inv!74918 (left!41837 (c!846542 input!1342))) tp!1391476 (inv!74918 (right!42167 (c!846542 input!1342))) tp!1391478))))

(declare-fun b!4961110 () Bool)

(declare-fun e!3100819 () Bool)

(declare-fun tp!1391477 () Bool)

(assert (=> b!4961110 (= e!3100819 tp!1391477)))

(declare-fun b!4961109 () Bool)

(declare-fun inv!74926 (IArray!30305) Bool)

(assert (=> b!4961109 (= e!3100820 (and (inv!74926 (xs!18448 (c!846542 input!1342))) e!3100819))))

(assert (=> b!4960810 (= tp!1391429 (and (inv!74918 (c!846542 input!1342)) e!3100820))))

(assert (= (and b!4960810 ((_ is Node!15122) (c!846542 input!1342))) b!4961108))

(assert (= b!4961109 b!4961110))

(assert (= (and b!4960810 ((_ is Leaf!25132) (c!846542 input!1342))) b!4961109))

(declare-fun m!5985708 () Bool)

(assert (=> b!4961108 m!5985708))

(declare-fun m!5985710 () Bool)

(assert (=> b!4961108 m!5985710))

(declare-fun m!5985712 () Bool)

(assert (=> b!4961109 m!5985712))

(assert (=> b!4960810 m!5985372))

(declare-fun b!4961123 () Bool)

(declare-fun e!3100823 () Bool)

(declare-fun tp!1391493 () Bool)

(assert (=> b!4961123 (= e!3100823 tp!1391493)))

(assert (=> b!4960815 (= tp!1391425 e!3100823)))

(declare-fun b!4961121 () Bool)

(declare-fun tp_is_empty!36307 () Bool)

(assert (=> b!4961121 (= e!3100823 tp_is_empty!36307)))

(declare-fun b!4961124 () Bool)

(declare-fun tp!1391491 () Bool)

(declare-fun tp!1391490 () Bool)

(assert (=> b!4961124 (= e!3100823 (and tp!1391491 tp!1391490))))

(declare-fun b!4961122 () Bool)

(declare-fun tp!1391489 () Bool)

(declare-fun tp!1391492 () Bool)

(assert (=> b!4961122 (= e!3100823 (and tp!1391489 tp!1391492))))

(assert (= (and b!4960815 ((_ is ElementMatch!13603) (regex!8370 (h!63822 rulesArg!259)))) b!4961121))

(assert (= (and b!4960815 ((_ is Concat!22284) (regex!8370 (h!63822 rulesArg!259)))) b!4961122))

(assert (= (and b!4960815 ((_ is Star!13603) (regex!8370 (h!63822 rulesArg!259)))) b!4961123))

(assert (= (and b!4960815 ((_ is Union!13603) (regex!8370 (h!63822 rulesArg!259)))) b!4961124))

(declare-fun b!4961135 () Bool)

(declare-fun b_free!132559 () Bool)

(declare-fun b_next!133349 () Bool)

(assert (=> b!4961135 (= b_free!132559 (not b_next!133349))))

(declare-fun tp!1391502 () Bool)

(declare-fun b_and!347411 () Bool)

(assert (=> b!4961135 (= tp!1391502 b_and!347411)))

(declare-fun b_free!132561 () Bool)

(declare-fun b_next!133351 () Bool)

(assert (=> b!4961135 (= b_free!132561 (not b_next!133351))))

(declare-fun tp!1391503 () Bool)

(declare-fun b_and!347413 () Bool)

(assert (=> b!4961135 (= tp!1391503 b_and!347413)))

(declare-fun e!3100832 () Bool)

(assert (=> b!4961135 (= e!3100832 (and tp!1391502 tp!1391503))))

(declare-fun b!4961134 () Bool)

(declare-fun e!3100835 () Bool)

(declare-fun tp!1391504 () Bool)

(assert (=> b!4961134 (= e!3100835 (and tp!1391504 (inv!74914 (tag!9234 (h!63822 (t!368064 rulesArg!259)))) (inv!74920 (transformation!8370 (h!63822 (t!368064 rulesArg!259)))) e!3100832))))

(declare-fun b!4961133 () Bool)

(declare-fun e!3100833 () Bool)

(declare-fun tp!1391505 () Bool)

(assert (=> b!4961133 (= e!3100833 (and e!3100835 tp!1391505))))

(assert (=> b!4960813 (= tp!1391427 e!3100833)))

(assert (= b!4961134 b!4961135))

(assert (= b!4961133 b!4961134))

(assert (= (and b!4960813 ((_ is Cons!57374) (t!368064 rulesArg!259))) b!4961133))

(declare-fun m!5985714 () Bool)

(assert (=> b!4961134 m!5985714))

(declare-fun m!5985716 () Bool)

(assert (=> b!4961134 m!5985716))

(declare-fun tp!1391508 () Bool)

(declare-fun b!4961136 () Bool)

(declare-fun tp!1391506 () Bool)

(declare-fun e!3100837 () Bool)

(assert (=> b!4961136 (= e!3100837 (and (inv!74918 (left!41837 (c!846542 totalInput!464))) tp!1391506 (inv!74918 (right!42167 (c!846542 totalInput!464))) tp!1391508))))

(declare-fun b!4961138 () Bool)

(declare-fun e!3100836 () Bool)

(declare-fun tp!1391507 () Bool)

(assert (=> b!4961138 (= e!3100836 tp!1391507)))

(declare-fun b!4961137 () Bool)

(assert (=> b!4961137 (= e!3100837 (and (inv!74926 (xs!18448 (c!846542 totalInput!464))) e!3100836))))

(assert (=> b!4960816 (= tp!1391430 (and (inv!74918 (c!846542 totalInput!464)) e!3100837))))

(assert (= (and b!4960816 ((_ is Node!15122) (c!846542 totalInput!464))) b!4961136))

(assert (= b!4961137 b!4961138))

(assert (= (and b!4960816 ((_ is Leaf!25132) (c!846542 totalInput!464))) b!4961137))

(declare-fun m!5985718 () Bool)

(assert (=> b!4961136 m!5985718))

(declare-fun m!5985720 () Bool)

(assert (=> b!4961136 m!5985720))

(declare-fun m!5985722 () Bool)

(assert (=> b!4961137 m!5985722))

(assert (=> b!4960816 m!5985388))

(check-sat b_and!347411 (not d!1596318) (not b!4960816) (not b!4960945) (not b!4961084) (not b!4960877) (not b!4961122) (not b!4960866) (not d!1596296) b_and!347403 (not b!4960878) (not d!1596304) (not d!1596334) (not b!4960905) (not b!4960936) (not b!4961002) (not d!1596308) (not b!4961001) (not d!1596316) (not bm!346022) (not b_next!133351) (not b!4960911) (not d!1596332) (not b!4961137) (not b!4961083) (not b!4960908) (not d!1596298) (not b!4960810) (not b!4960906) (not bm!346010) (not d!1596336) (not b_next!133343) b_and!347405 (not b!4960836) (not b!4961136) (not b!4961086) (not d!1596356) (not b!4961108) (not b!4960903) (not b!4960910) (not b!4960996) (not b!4960998) (not b!4960999) (not b!4961124) (not b!4961138) (not b_next!133341) (not b!4961123) (not d!1596344) (not b!4960995) (not b!4960904) (not b!4961000) (not b!4961088) (not b!4960834) tp_is_empty!36307 (not d!1596300) (not b!4960937) (not d!1596338) (not bm!346013) (not b!4961110) (not b!4961109) (not b!4960907) (not b!4961097) (not b_next!133349) (not d!1596328) (not b!4960942) b_and!347413 (not b!4961099) (not b!4961133) (not b!4961087) (not b!4960876) (not d!1596314) (not b!4961134) (not d!1596330))
(check-sat b_and!347411 b_and!347403 (not b_next!133351) (not b_next!133343) b_and!347405 (not b_next!133341) (not b_next!133349) b_and!347413)

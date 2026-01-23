; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378428 () Bool)

(assert start!378428)

(declare-fun b!4018068 () Bool)

(declare-fun b_free!111777 () Bool)

(declare-fun b_next!112481 () Bool)

(assert (=> b!4018068 (= b_free!111777 (not b_next!112481))))

(declare-fun tp!1221578 () Bool)

(declare-fun b_and!308679 () Bool)

(assert (=> b!4018068 (= tp!1221578 b_and!308679)))

(declare-fun b_free!111779 () Bool)

(declare-fun b_next!112483 () Bool)

(assert (=> b!4018068 (= b_free!111779 (not b_next!112483))))

(declare-fun tp!1221583 () Bool)

(declare-fun b_and!308681 () Bool)

(assert (=> b!4018068 (= tp!1221583 b_and!308681)))

(declare-fun b!4018059 () Bool)

(declare-fun b_free!111781 () Bool)

(declare-fun b_next!112485 () Bool)

(assert (=> b!4018059 (= b_free!111781 (not b_next!112485))))

(declare-fun tp!1221586 () Bool)

(declare-fun b_and!308683 () Bool)

(assert (=> b!4018059 (= tp!1221586 b_and!308683)))

(declare-fun b_free!111783 () Bool)

(declare-fun b_next!112487 () Bool)

(assert (=> b!4018059 (= b_free!111783 (not b_next!112487))))

(declare-fun tp!1221576 () Bool)

(declare-fun b_and!308685 () Bool)

(assert (=> b!4018059 (= tp!1221576 b_and!308685)))

(declare-fun b!4018036 () Bool)

(declare-fun res!1634480 () Bool)

(declare-fun e!2492256 () Bool)

(assert (=> b!4018036 (=> (not res!1634480) (not e!2492256))))

(declare-datatypes ((C!23696 0))(
  ( (C!23697 (val!13942 Int)) )
))
(declare-datatypes ((List!43124 0))(
  ( (Nil!43000) (Cons!43000 (h!48420 C!23696) (t!333457 List!43124)) )
))
(declare-datatypes ((IArray!26127 0))(
  ( (IArray!26128 (innerList!13121 List!43124)) )
))
(declare-datatypes ((Conc!13061 0))(
  ( (Node!13061 (left!32420 Conc!13061) (right!32750 Conc!13061) (csize!26352 Int) (cheight!13272 Int)) (Leaf!20193 (xs!16367 IArray!26127) (csize!26353 Int)) (Empty!13061) )
))
(declare-datatypes ((BalanceConc!25716 0))(
  ( (BalanceConc!25717 (c!694450 Conc!13061)) )
))
(declare-datatypes ((String!49117 0))(
  ( (String!49118 (value!215833 String)) )
))
(declare-datatypes ((List!43125 0))(
  ( (Nil!43001) (Cons!43001 (h!48421 (_ BitVec 16)) (t!333458 List!43125)) )
))
(declare-datatypes ((TokenValue!7080 0))(
  ( (FloatLiteralValue!14160 (text!50005 List!43125)) (TokenValueExt!7079 (__x!26377 Int)) (Broken!35400 (value!215834 List!43125)) (Object!7203) (End!7080) (Def!7080) (Underscore!7080) (Match!7080) (Else!7080) (Error!7080) (Case!7080) (If!7080) (Extends!7080) (Abstract!7080) (Class!7080) (Val!7080) (DelimiterValue!14160 (del!7140 List!43125)) (KeywordValue!7086 (value!215835 List!43125)) (CommentValue!14160 (value!215836 List!43125)) (WhitespaceValue!14160 (value!215837 List!43125)) (IndentationValue!7080 (value!215838 List!43125)) (String!49119) (Int32!7080) (Broken!35401 (value!215839 List!43125)) (Boolean!7081) (Unit!62073) (OperatorValue!7083 (op!7140 List!43125)) (IdentifierValue!14160 (value!215840 List!43125)) (IdentifierValue!14161 (value!215841 List!43125)) (WhitespaceValue!14161 (value!215842 List!43125)) (True!14160) (False!14160) (Broken!35402 (value!215843 List!43125)) (Broken!35403 (value!215844 List!43125)) (True!14161) (RightBrace!7080) (RightBracket!7080) (Colon!7080) (Null!7080) (Comma!7080) (LeftBracket!7080) (False!14161) (LeftBrace!7080) (ImaginaryLiteralValue!7080 (text!50006 List!43125)) (StringLiteralValue!21240 (value!215845 List!43125)) (EOFValue!7080 (value!215846 List!43125)) (IdentValue!7080 (value!215847 List!43125)) (DelimiterValue!14161 (value!215848 List!43125)) (DedentValue!7080 (value!215849 List!43125)) (NewLineValue!7080 (value!215850 List!43125)) (IntegerValue!21240 (value!215851 (_ BitVec 32)) (text!50007 List!43125)) (IntegerValue!21241 (value!215852 Int) (text!50008 List!43125)) (Times!7080) (Or!7080) (Equal!7080) (Minus!7080) (Broken!35404 (value!215853 List!43125)) (And!7080) (Div!7080) (LessEqual!7080) (Mod!7080) (Concat!18835) (Not!7080) (Plus!7080) (SpaceValue!7080 (value!215854 List!43125)) (IntegerValue!21242 (value!215855 Int) (text!50009 List!43125)) (StringLiteralValue!21241 (text!50010 List!43125)) (FloatLiteralValue!14161 (text!50011 List!43125)) (BytesLiteralValue!7080 (value!215856 List!43125)) (CommentValue!14161 (value!215857 List!43125)) (StringLiteralValue!21242 (value!215858 List!43125)) (ErrorTokenValue!7080 (msg!7141 List!43125)) )
))
(declare-datatypes ((Regex!11755 0))(
  ( (ElementMatch!11755 (c!694451 C!23696)) (Concat!18836 (regOne!24022 Regex!11755) (regTwo!24022 Regex!11755)) (EmptyExpr!11755) (Star!11755 (reg!12084 Regex!11755)) (EmptyLang!11755) (Union!11755 (regOne!24023 Regex!11755) (regTwo!24023 Regex!11755)) )
))
(declare-datatypes ((TokenValueInjection!13588 0))(
  ( (TokenValueInjection!13589 (toValue!9358 Int) (toChars!9217 Int)) )
))
(declare-datatypes ((Rule!13500 0))(
  ( (Rule!13501 (regex!6850 Regex!11755) (tag!7710 String!49117) (isSeparator!6850 Bool) (transformation!6850 TokenValueInjection!13588)) )
))
(declare-datatypes ((List!43126 0))(
  ( (Nil!43002) (Cons!43002 (h!48422 Rule!13500) (t!333459 List!43126)) )
))
(declare-fun rules!2999 () List!43126)

(declare-fun isEmpty!25682 (List!43126) Bool)

(assert (=> b!4018036 (= res!1634480 (not (isEmpty!25682 rules!2999)))))

(declare-fun b!4018037 () Bool)

(declare-fun e!2492241 () Bool)

(declare-fun e!2492261 () Bool)

(assert (=> b!4018037 (= e!2492241 e!2492261)))

(declare-fun res!1634477 () Bool)

(assert (=> b!4018037 (=> res!1634477 e!2492261)))

(declare-datatypes ((Token!12838 0))(
  ( (Token!12839 (value!215859 TokenValue!7080) (rule!9902 Rule!13500) (size!32151 Int) (originalCharacters!7450 List!43124)) )
))
(declare-fun token!484 () Token!12838)

(declare-fun lt!1425371 () List!43124)

(declare-fun matchR!5716 (Regex!11755 List!43124) Bool)

(assert (=> b!4018037 (= res!1634477 (not (matchR!5716 (regex!6850 (rule!9902 token!484)) lt!1425371)))))

(declare-fun lt!1425388 () List!43124)

(declare-fun isPrefix!3937 (List!43124 List!43124) Bool)

(assert (=> b!4018037 (isPrefix!3937 lt!1425371 lt!1425388)))

(declare-fun prefix!494 () List!43124)

(declare-fun newSuffix!27 () List!43124)

(declare-datatypes ((Unit!62074 0))(
  ( (Unit!62075) )
))
(declare-fun lt!1425386 () Unit!62074)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!750 (List!43124 List!43124 List!43124) Unit!62074)

(assert (=> b!4018037 (= lt!1425386 (lemmaPrefixStaysPrefixWhenAddingToSuffix!750 lt!1425371 prefix!494 newSuffix!27))))

(declare-fun suffix!1299 () List!43124)

(declare-fun lt!1425397 () Unit!62074)

(assert (=> b!4018037 (= lt!1425397 (lemmaPrefixStaysPrefixWhenAddingToSuffix!750 lt!1425371 prefix!494 suffix!1299))))

(declare-fun b!4018038 () Bool)

(declare-fun e!2492238 () Bool)

(assert (=> b!4018038 (= e!2492256 e!2492238)))

(declare-fun res!1634476 () Bool)

(assert (=> b!4018038 (=> (not res!1634476) (not e!2492238))))

(declare-fun lt!1425344 () Int)

(declare-fun lt!1425374 () Int)

(assert (=> b!4018038 (= res!1634476 (>= lt!1425344 lt!1425374))))

(declare-fun size!32152 (List!43124) Int)

(assert (=> b!4018038 (= lt!1425374 (size!32152 lt!1425371))))

(assert (=> b!4018038 (= lt!1425344 (size!32152 prefix!494))))

(declare-fun list!15986 (BalanceConc!25716) List!43124)

(declare-fun charsOf!4666 (Token!12838) BalanceConc!25716)

(assert (=> b!4018038 (= lt!1425371 (list!15986 (charsOf!4666 token!484)))))

(declare-fun b!4018039 () Bool)

(declare-fun e!2492253 () Bool)

(assert (=> b!4018039 (= e!2492253 false)))

(declare-fun b!4018040 () Bool)

(declare-fun e!2492234 () Bool)

(declare-fun e!2492258 () Bool)

(assert (=> b!4018040 (= e!2492234 (not e!2492258))))

(declare-fun res!1634475 () Bool)

(assert (=> b!4018040 (=> res!1634475 e!2492258)))

(declare-fun lt!1425355 () List!43124)

(declare-fun lt!1425393 () List!43124)

(assert (=> b!4018040 (= res!1634475 (not (= lt!1425355 lt!1425393)))))

(declare-fun suffixResult!105 () List!43124)

(declare-fun ++!11252 (List!43124 List!43124) List!43124)

(assert (=> b!4018040 (= lt!1425355 (++!11252 lt!1425371 suffixResult!105))))

(declare-fun lt!1425365 () Unit!62074)

(declare-fun lemmaInv!1065 (TokenValueInjection!13588) Unit!62074)

(assert (=> b!4018040 (= lt!1425365 (lemmaInv!1065 (transformation!6850 (rule!9902 token!484))))))

(declare-datatypes ((LexerInterface!6439 0))(
  ( (LexerInterfaceExt!6436 (__x!26378 Int)) (Lexer!6437) )
))
(declare-fun thiss!21717 () LexerInterface!6439)

(declare-fun ruleValid!2782 (LexerInterface!6439 Rule!13500) Bool)

(assert (=> b!4018040 (ruleValid!2782 thiss!21717 (rule!9902 token!484))))

(declare-fun lt!1425368 () Unit!62074)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1856 (LexerInterface!6439 Rule!13500 List!43126) Unit!62074)

(assert (=> b!4018040 (= lt!1425368 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1856 thiss!21717 (rule!9902 token!484) rules!2999))))

(declare-fun b!4018041 () Bool)

(declare-fun res!1634465 () Bool)

(assert (=> b!4018041 (=> (not res!1634465) (not e!2492256))))

(assert (=> b!4018041 (= res!1634465 (>= (size!32152 suffix!1299) (size!32152 newSuffix!27)))))

(declare-fun b!4018043 () Bool)

(declare-fun e!2492239 () Bool)

(declare-fun e!2492246 () Bool)

(assert (=> b!4018043 (= e!2492239 e!2492246)))

(declare-fun res!1634463 () Bool)

(assert (=> b!4018043 (=> res!1634463 e!2492246)))

(declare-datatypes ((tuple2!42138 0))(
  ( (tuple2!42139 (_1!24203 Token!12838) (_2!24203 List!43124)) )
))
(declare-datatypes ((Option!9264 0))(
  ( (None!9263) (Some!9263 (v!39637 tuple2!42138)) )
))
(declare-fun lt!1425373 () Option!9264)

(get-info :version)

(assert (=> b!4018043 (= res!1634463 (not ((_ is Some!9263) lt!1425373)))))

(declare-fun maxPrefix!3737 (LexerInterface!6439 List!43126 List!43124) Option!9264)

(assert (=> b!4018043 (= lt!1425373 (maxPrefix!3737 thiss!21717 rules!2999 lt!1425388))))

(declare-fun lt!1425356 () List!43124)

(declare-fun lt!1425375 () tuple2!42138)

(declare-fun lt!1425383 () Token!12838)

(assert (=> b!4018043 (and (= suffixResult!105 lt!1425356) (= lt!1425375 (tuple2!42139 lt!1425383 lt!1425356)))))

(declare-fun lt!1425384 () Unit!62074)

(declare-fun lemmaSamePrefixThenSameSuffix!2108 (List!43124 List!43124 List!43124 List!43124 List!43124) Unit!62074)

(assert (=> b!4018043 (= lt!1425384 (lemmaSamePrefixThenSameSuffix!2108 lt!1425371 suffixResult!105 lt!1425371 lt!1425356 lt!1425393))))

(declare-fun lt!1425381 () List!43124)

(assert (=> b!4018043 (isPrefix!3937 lt!1425371 lt!1425381)))

(declare-fun lt!1425380 () Unit!62074)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2778 (List!43124 List!43124) Unit!62074)

(assert (=> b!4018043 (= lt!1425380 (lemmaConcatTwoListThenFirstIsPrefix!2778 lt!1425371 lt!1425356))))

(declare-fun b!4018044 () Bool)

(declare-fun e!2492245 () Bool)

(assert (=> b!4018044 (= e!2492258 e!2492245)))

(declare-fun res!1634467 () Bool)

(assert (=> b!4018044 (=> res!1634467 e!2492245)))

(assert (=> b!4018044 (= res!1634467 (not (isPrefix!3937 lt!1425371 lt!1425393)))))

(assert (=> b!4018044 (isPrefix!3937 prefix!494 lt!1425393)))

(declare-fun lt!1425352 () Unit!62074)

(assert (=> b!4018044 (= lt!1425352 (lemmaConcatTwoListThenFirstIsPrefix!2778 prefix!494 suffix!1299))))

(assert (=> b!4018044 (isPrefix!3937 lt!1425371 lt!1425355)))

(declare-fun lt!1425359 () Unit!62074)

(assert (=> b!4018044 (= lt!1425359 (lemmaConcatTwoListThenFirstIsPrefix!2778 lt!1425371 suffixResult!105))))

(declare-fun b!4018045 () Bool)

(declare-fun e!2492233 () Bool)

(declare-fun tp_is_empty!20481 () Bool)

(declare-fun tp!1221581 () Bool)

(assert (=> b!4018045 (= e!2492233 (and tp_is_empty!20481 tp!1221581))))

(declare-fun e!2492235 () Bool)

(declare-fun b!4018046 () Bool)

(declare-fun e!2492259 () Bool)

(declare-fun tp!1221579 () Bool)

(declare-fun inv!21 (TokenValue!7080) Bool)

(assert (=> b!4018046 (= e!2492235 (and (inv!21 (value!215859 token!484)) e!2492259 tp!1221579))))

(declare-fun b!4018047 () Bool)

(declare-fun res!1634472 () Bool)

(declare-fun e!2492262 () Bool)

(assert (=> b!4018047 (=> (not res!1634472) (not e!2492262))))

(declare-fun lt!1425382 () TokenValue!7080)

(assert (=> b!4018047 (= res!1634472 (= (value!215859 token!484) lt!1425382))))

(declare-fun b!4018048 () Bool)

(declare-fun e!2492264 () Bool)

(declare-fun e!2492232 () Bool)

(assert (=> b!4018048 (= e!2492264 e!2492232)))

(declare-fun res!1634462 () Bool)

(assert (=> b!4018048 (=> res!1634462 e!2492232)))

(declare-fun lt!1425360 () List!43124)

(assert (=> b!4018048 (= res!1634462 (not (= lt!1425360 lt!1425388)))))

(declare-fun lt!1425395 () List!43124)

(declare-fun lt!1425343 () List!43124)

(assert (=> b!4018048 (= lt!1425360 (++!11252 lt!1425395 lt!1425343))))

(declare-fun getSuffix!2362 (List!43124 List!43124) List!43124)

(assert (=> b!4018048 (= lt!1425343 (getSuffix!2362 lt!1425388 lt!1425395))))

(declare-fun b!4018049 () Bool)

(declare-fun res!1634458 () Bool)

(assert (=> b!4018049 (=> res!1634458 e!2492264)))

(declare-fun lt!1425377 () List!43124)

(assert (=> b!4018049 (= res!1634458 (not (= lt!1425377 lt!1425388)))))

(declare-fun b!4018050 () Bool)

(declare-fun e!2492240 () Bool)

(assert (=> b!4018050 (= e!2492245 e!2492240)))

(declare-fun res!1634481 () Bool)

(assert (=> b!4018050 (=> res!1634481 e!2492240)))

(declare-fun lt!1425361 () List!43124)

(assert (=> b!4018050 (= res!1634481 (not (= lt!1425361 prefix!494)))))

(declare-fun lt!1425389 () List!43124)

(assert (=> b!4018050 (= lt!1425361 (++!11252 lt!1425371 lt!1425389))))

(assert (=> b!4018050 (= lt!1425389 (getSuffix!2362 prefix!494 lt!1425371))))

(assert (=> b!4018050 (isPrefix!3937 lt!1425371 prefix!494)))

(declare-fun lt!1425347 () Unit!62074)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!509 (List!43124 List!43124 List!43124) Unit!62074)

(assert (=> b!4018050 (= lt!1425347 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!509 prefix!494 lt!1425371 lt!1425393))))

(declare-fun b!4018051 () Bool)

(declare-fun e!2492247 () Bool)

(assert (=> b!4018051 (= e!2492240 e!2492247)))

(declare-fun res!1634459 () Bool)

(assert (=> b!4018051 (=> res!1634459 e!2492247)))

(declare-fun lt!1425379 () List!43124)

(declare-fun lt!1425392 () List!43124)

(assert (=> b!4018051 (= res!1634459 (or (not (= lt!1425393 lt!1425379)) (not (= lt!1425393 lt!1425392))))))

(assert (=> b!4018051 (= lt!1425379 lt!1425392)))

(declare-fun lt!1425372 () List!43124)

(assert (=> b!4018051 (= lt!1425392 (++!11252 lt!1425371 lt!1425372))))

(assert (=> b!4018051 (= lt!1425379 (++!11252 lt!1425361 suffix!1299))))

(assert (=> b!4018051 (= lt!1425372 (++!11252 lt!1425389 suffix!1299))))

(declare-fun lt!1425370 () Unit!62074)

(declare-fun lemmaConcatAssociativity!2562 (List!43124 List!43124 List!43124) Unit!62074)

(assert (=> b!4018051 (= lt!1425370 (lemmaConcatAssociativity!2562 lt!1425371 lt!1425389 suffix!1299))))

(declare-fun b!4018052 () Bool)

(declare-fun lt!1425341 () Int)

(assert (=> b!4018052 (= e!2492232 (= lt!1425374 lt!1425341))))

(declare-fun lt!1425376 () Unit!62074)

(declare-fun e!2492254 () Unit!62074)

(assert (=> b!4018052 (= lt!1425376 e!2492254)))

(declare-fun c!694449 () Bool)

(assert (=> b!4018052 (= c!694449 (< lt!1425341 lt!1425374))))

(declare-fun lt!1425369 () Unit!62074)

(declare-fun e!2492266 () Unit!62074)

(assert (=> b!4018052 (= lt!1425369 e!2492266)))

(declare-fun c!694448 () Bool)

(assert (=> b!4018052 (= c!694448 (> lt!1425341 lt!1425374))))

(assert (=> b!4018052 (= (_2!24203 (v!39637 lt!1425373)) lt!1425343)))

(declare-fun lt!1425396 () Unit!62074)

(assert (=> b!4018052 (= lt!1425396 (lemmaSamePrefixThenSameSuffix!2108 lt!1425395 (_2!24203 (v!39637 lt!1425373)) lt!1425395 lt!1425343 lt!1425388))))

(assert (=> b!4018052 (isPrefix!3937 lt!1425395 lt!1425360)))

(declare-fun lt!1425351 () Unit!62074)

(assert (=> b!4018052 (= lt!1425351 (lemmaConcatTwoListThenFirstIsPrefix!2778 lt!1425395 lt!1425343))))

(declare-fun b!4018053 () Bool)

(declare-fun e!2492255 () Bool)

(declare-fun tp!1221575 () Bool)

(assert (=> b!4018053 (= e!2492255 (and tp_is_empty!20481 tp!1221575))))

(declare-fun b!4018054 () Bool)

(declare-fun e!2492260 () Bool)

(declare-fun tp!1221580 () Bool)

(assert (=> b!4018054 (= e!2492260 (and tp_is_empty!20481 tp!1221580))))

(declare-fun b!4018055 () Bool)

(declare-fun e!2492252 () Bool)

(declare-fun tp!1221585 () Bool)

(assert (=> b!4018055 (= e!2492252 (and tp_is_empty!20481 tp!1221585))))

(declare-fun b!4018056 () Bool)

(declare-fun e!2492257 () Bool)

(declare-fun e!2492237 () Bool)

(assert (=> b!4018056 (= e!2492257 e!2492237)))

(declare-fun res!1634478 () Bool)

(assert (=> b!4018056 (=> res!1634478 e!2492237)))

(declare-fun lt!1425385 () List!43124)

(assert (=> b!4018056 (= res!1634478 (not (= lt!1425385 lt!1425393)))))

(declare-fun lt!1425346 () List!43124)

(assert (=> b!4018056 (= lt!1425385 (++!11252 prefix!494 lt!1425346))))

(declare-fun lt!1425358 () List!43124)

(assert (=> b!4018056 (= lt!1425385 (++!11252 lt!1425388 lt!1425358))))

(declare-fun lt!1425357 () Unit!62074)

(assert (=> b!4018056 (= lt!1425357 (lemmaConcatAssociativity!2562 prefix!494 newSuffix!27 lt!1425358))))

(declare-fun b!4018057 () Bool)

(assert (=> b!4018057 (= e!2492237 e!2492264)))

(declare-fun res!1634464 () Bool)

(assert (=> b!4018057 (=> res!1634464 e!2492264)))

(assert (=> b!4018057 (= res!1634464 (not (isPrefix!3937 lt!1425395 lt!1425393)))))

(assert (=> b!4018057 (isPrefix!3937 lt!1425395 lt!1425385)))

(declare-fun lt!1425353 () Unit!62074)

(assert (=> b!4018057 (= lt!1425353 (lemmaPrefixStaysPrefixWhenAddingToSuffix!750 lt!1425395 lt!1425388 lt!1425358))))

(declare-fun b!4018058 () Bool)

(declare-fun e!2492265 () Bool)

(assert (=> b!4018058 (= e!2492238 e!2492265)))

(declare-fun res!1634466 () Bool)

(assert (=> b!4018058 (=> (not res!1634466) (not e!2492265))))

(declare-fun lt!1425364 () List!43124)

(assert (=> b!4018058 (= res!1634466 (= lt!1425364 lt!1425388))))

(assert (=> b!4018058 (= lt!1425388 (++!11252 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43124)

(assert (=> b!4018058 (= lt!1425364 (++!11252 lt!1425371 newSuffixResult!27))))

(declare-fun e!2492249 () Bool)

(assert (=> b!4018059 (= e!2492249 (and tp!1221586 tp!1221576))))

(declare-fun b!4018042 () Bool)

(declare-fun res!1634471 () Bool)

(assert (=> b!4018042 (=> (not res!1634471) (not e!2492256))))

(assert (=> b!4018042 (= res!1634471 (isPrefix!3937 newSuffix!27 suffix!1299))))

(declare-fun res!1634461 () Bool)

(assert (=> start!378428 (=> (not res!1634461) (not e!2492256))))

(assert (=> start!378428 (= res!1634461 ((_ is Lexer!6437) thiss!21717))))

(assert (=> start!378428 e!2492256))

(assert (=> start!378428 e!2492233))

(declare-fun inv!57437 (Token!12838) Bool)

(assert (=> start!378428 (and (inv!57437 token!484) e!2492235)))

(assert (=> start!378428 e!2492260))

(declare-fun e!2492236 () Bool)

(assert (=> start!378428 e!2492236))

(assert (=> start!378428 e!2492255))

(assert (=> start!378428 true))

(declare-fun e!2492250 () Bool)

(assert (=> start!378428 e!2492250))

(assert (=> start!378428 e!2492252))

(declare-fun b!4018060 () Bool)

(assert (=> b!4018060 (= e!2492261 e!2492239)))

(declare-fun res!1634469 () Bool)

(assert (=> b!4018060 (=> res!1634469 e!2492239)))

(assert (=> b!4018060 (= res!1634469 (not (= lt!1425381 lt!1425393)))))

(assert (=> b!4018060 (= lt!1425381 (++!11252 lt!1425371 lt!1425356))))

(assert (=> b!4018060 (= lt!1425356 (getSuffix!2362 lt!1425393 lt!1425371))))

(assert (=> b!4018060 e!2492262))

(declare-fun res!1634460 () Bool)

(assert (=> b!4018060 (=> (not res!1634460) (not e!2492262))))

(assert (=> b!4018060 (= res!1634460 (isPrefix!3937 lt!1425393 lt!1425393))))

(declare-fun lt!1425387 () Unit!62074)

(declare-fun lemmaIsPrefixRefl!2513 (List!43124 List!43124) Unit!62074)

(assert (=> b!4018060 (= lt!1425387 (lemmaIsPrefixRefl!2513 lt!1425393 lt!1425393))))

(declare-fun b!4018061 () Bool)

(assert (=> b!4018061 (= e!2492265 e!2492234)))

(declare-fun res!1634470 () Bool)

(assert (=> b!4018061 (=> (not res!1634470) (not e!2492234))))

(declare-fun lt!1425340 () Option!9264)

(assert (=> b!4018061 (= res!1634470 (= (maxPrefix!3737 thiss!21717 rules!2999 lt!1425393) lt!1425340))))

(assert (=> b!4018061 (= lt!1425340 (Some!9263 lt!1425375))))

(assert (=> b!4018061 (= lt!1425375 (tuple2!42139 token!484 suffixResult!105))))

(assert (=> b!4018061 (= lt!1425393 (++!11252 prefix!494 suffix!1299))))

(declare-fun b!4018062 () Bool)

(declare-fun e!2492263 () Bool)

(declare-fun tp!1221582 () Bool)

(assert (=> b!4018062 (= e!2492250 (and e!2492263 tp!1221582))))

(declare-fun b!4018063 () Bool)

(declare-fun res!1634479 () Bool)

(assert (=> b!4018063 (=> (not res!1634479) (not e!2492256))))

(declare-fun rulesInvariant!5782 (LexerInterface!6439 List!43126) Bool)

(assert (=> b!4018063 (= res!1634479 (rulesInvariant!5782 thiss!21717 rules!2999))))

(declare-fun b!4018064 () Bool)

(assert (=> b!4018064 (= e!2492247 e!2492241)))

(declare-fun res!1634474 () Bool)

(assert (=> b!4018064 (=> res!1634474 e!2492241)))

(declare-fun lt!1425350 () Option!9264)

(assert (=> b!4018064 (= res!1634474 (not (= lt!1425350 lt!1425340)))))

(assert (=> b!4018064 (= lt!1425350 (Some!9263 (tuple2!42139 lt!1425383 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2757 (LexerInterface!6439 Rule!13500 List!43124) Option!9264)

(assert (=> b!4018064 (= lt!1425350 (maxPrefixOneRule!2757 thiss!21717 (rule!9902 token!484) lt!1425393))))

(assert (=> b!4018064 (= lt!1425383 (Token!12839 lt!1425382 (rule!9902 token!484) lt!1425374 lt!1425371))))

(declare-fun apply!10047 (TokenValueInjection!13588 BalanceConc!25716) TokenValue!7080)

(declare-fun seqFromList!5075 (List!43124) BalanceConc!25716)

(assert (=> b!4018064 (= lt!1425382 (apply!10047 (transformation!6850 (rule!9902 token!484)) (seqFromList!5075 lt!1425371)))))

(declare-fun lt!1425339 () Unit!62074)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1575 (LexerInterface!6439 List!43126 List!43124 List!43124 List!43124 Rule!13500) Unit!62074)

(assert (=> b!4018064 (= lt!1425339 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1575 thiss!21717 rules!2999 lt!1425371 lt!1425393 suffixResult!105 (rule!9902 token!484)))))

(assert (=> b!4018064 (= lt!1425372 suffixResult!105)))

(declare-fun lt!1425345 () Unit!62074)

(assert (=> b!4018064 (= lt!1425345 (lemmaSamePrefixThenSameSuffix!2108 lt!1425371 lt!1425372 lt!1425371 suffixResult!105 lt!1425393))))

(assert (=> b!4018064 (isPrefix!3937 lt!1425371 lt!1425392)))

(declare-fun lt!1425390 () Unit!62074)

(assert (=> b!4018064 (= lt!1425390 (lemmaConcatTwoListThenFirstIsPrefix!2778 lt!1425371 lt!1425372))))

(declare-fun b!4018065 () Bool)

(declare-fun tp!1221574 () Bool)

(assert (=> b!4018065 (= e!2492236 (and tp_is_empty!20481 tp!1221574))))

(declare-fun b!4018066 () Bool)

(declare-fun tp!1221577 () Bool)

(declare-fun inv!57434 (String!49117) Bool)

(declare-fun inv!57438 (TokenValueInjection!13588) Bool)

(assert (=> b!4018066 (= e!2492259 (and tp!1221577 (inv!57434 (tag!7710 (rule!9902 token!484))) (inv!57438 (transformation!6850 (rule!9902 token!484))) e!2492249))))

(declare-fun b!4018067 () Bool)

(declare-fun Unit!62076 () Unit!62074)

(assert (=> b!4018067 (= e!2492254 Unit!62076)))

(declare-fun lt!1425348 () Unit!62074)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!444 (LexerInterface!6439 List!43126 Rule!13500 List!43124 List!43124 List!43124 Rule!13500) Unit!62074)

(assert (=> b!4018067 (= lt!1425348 (lemmaMaxPrefixOutputsMaxPrefix!444 thiss!21717 rules!2999 (rule!9902 (_1!24203 (v!39637 lt!1425373))) lt!1425395 lt!1425388 lt!1425371 (rule!9902 token!484)))))

(assert (=> b!4018067 false))

(declare-fun e!2492251 () Bool)

(assert (=> b!4018068 (= e!2492251 (and tp!1221578 tp!1221583))))

(declare-fun b!4018069 () Bool)

(declare-fun Unit!62077 () Unit!62074)

(assert (=> b!4018069 (= e!2492266 Unit!62077)))

(declare-fun b!4018070 () Bool)

(declare-fun e!2492242 () Bool)

(assert (=> b!4018070 (= e!2492242 e!2492257)))

(declare-fun res!1634457 () Bool)

(assert (=> b!4018070 (=> res!1634457 e!2492257)))

(assert (=> b!4018070 (= res!1634457 (not (= lt!1425346 suffix!1299)))))

(assert (=> b!4018070 (= lt!1425346 (++!11252 newSuffix!27 lt!1425358))))

(assert (=> b!4018070 (= lt!1425358 (getSuffix!2362 suffix!1299 newSuffix!27))))

(declare-fun b!4018071 () Bool)

(assert (=> b!4018071 (= e!2492262 (and (= (size!32151 token!484) lt!1425374) (= (originalCharacters!7450 token!484) lt!1425371)))))

(declare-fun b!4018072 () Bool)

(assert (=> b!4018072 (= e!2492246 e!2492242)))

(declare-fun res!1634456 () Bool)

(assert (=> b!4018072 (=> res!1634456 e!2492242)))

(declare-fun lt!1425366 () Option!9264)

(assert (=> b!4018072 (= res!1634456 (not (= lt!1425366 (Some!9263 (v!39637 lt!1425373)))))))

(assert (=> b!4018072 (isPrefix!3937 lt!1425395 (++!11252 lt!1425395 newSuffixResult!27))))

(declare-fun lt!1425391 () Unit!62074)

(assert (=> b!4018072 (= lt!1425391 (lemmaConcatTwoListThenFirstIsPrefix!2778 lt!1425395 newSuffixResult!27))))

(assert (=> b!4018072 (isPrefix!3937 lt!1425395 lt!1425377)))

(assert (=> b!4018072 (= lt!1425377 (++!11252 lt!1425395 (_2!24203 (v!39637 lt!1425373))))))

(declare-fun lt!1425349 () Unit!62074)

(assert (=> b!4018072 (= lt!1425349 (lemmaConcatTwoListThenFirstIsPrefix!2778 lt!1425395 (_2!24203 (v!39637 lt!1425373))))))

(declare-fun lt!1425354 () TokenValue!7080)

(assert (=> b!4018072 (= lt!1425366 (Some!9263 (tuple2!42139 (Token!12839 lt!1425354 (rule!9902 (_1!24203 (v!39637 lt!1425373))) lt!1425341 lt!1425395) (_2!24203 (v!39637 lt!1425373)))))))

(assert (=> b!4018072 (= lt!1425366 (maxPrefixOneRule!2757 thiss!21717 (rule!9902 (_1!24203 (v!39637 lt!1425373))) lt!1425388))))

(assert (=> b!4018072 (= lt!1425341 (size!32152 lt!1425395))))

(assert (=> b!4018072 (= lt!1425354 (apply!10047 (transformation!6850 (rule!9902 (_1!24203 (v!39637 lt!1425373)))) (seqFromList!5075 lt!1425395)))))

(declare-fun lt!1425394 () Unit!62074)

(assert (=> b!4018072 (= lt!1425394 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1575 thiss!21717 rules!2999 lt!1425395 lt!1425388 (_2!24203 (v!39637 lt!1425373)) (rule!9902 (_1!24203 (v!39637 lt!1425373)))))))

(assert (=> b!4018072 (= lt!1425395 (list!15986 (charsOf!4666 (_1!24203 (v!39637 lt!1425373)))))))

(declare-fun lt!1425378 () Unit!62074)

(assert (=> b!4018072 (= lt!1425378 (lemmaInv!1065 (transformation!6850 (rule!9902 (_1!24203 (v!39637 lt!1425373))))))))

(assert (=> b!4018072 (ruleValid!2782 thiss!21717 (rule!9902 (_1!24203 (v!39637 lt!1425373))))))

(declare-fun lt!1425362 () Unit!62074)

(assert (=> b!4018072 (= lt!1425362 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1856 thiss!21717 (rule!9902 (_1!24203 (v!39637 lt!1425373))) rules!2999))))

(declare-fun lt!1425367 () Unit!62074)

(declare-fun lemmaCharactersSize!1409 (Token!12838) Unit!62074)

(assert (=> b!4018072 (= lt!1425367 (lemmaCharactersSize!1409 token!484))))

(declare-fun lt!1425363 () Unit!62074)

(assert (=> b!4018072 (= lt!1425363 (lemmaCharactersSize!1409 (_1!24203 (v!39637 lt!1425373))))))

(declare-fun b!4018073 () Bool)

(declare-fun Unit!62078 () Unit!62074)

(assert (=> b!4018073 (= e!2492266 Unit!62078)))

(declare-fun lt!1425342 () Unit!62074)

(assert (=> b!4018073 (= lt!1425342 (lemmaMaxPrefixOutputsMaxPrefix!444 thiss!21717 rules!2999 (rule!9902 token!484) lt!1425371 lt!1425393 lt!1425395 (rule!9902 (_1!24203 (v!39637 lt!1425373)))))))

(declare-fun res!1634468 () Bool)

(assert (=> b!4018073 (= res!1634468 (not (matchR!5716 (regex!6850 (rule!9902 (_1!24203 (v!39637 lt!1425373)))) lt!1425395)))))

(assert (=> b!4018073 (=> (not res!1634468) (not e!2492253))))

(assert (=> b!4018073 e!2492253))

(declare-fun b!4018074 () Bool)

(declare-fun res!1634473 () Bool)

(assert (=> b!4018074 (=> (not res!1634473) (not e!2492262))))

(assert (=> b!4018074 (= res!1634473 (= (size!32151 token!484) (size!32152 (originalCharacters!7450 token!484))))))

(declare-fun tp!1221584 () Bool)

(declare-fun b!4018075 () Bool)

(assert (=> b!4018075 (= e!2492263 (and tp!1221584 (inv!57434 (tag!7710 (h!48422 rules!2999))) (inv!57438 (transformation!6850 (h!48422 rules!2999))) e!2492251))))

(declare-fun b!4018076 () Bool)

(declare-fun Unit!62079 () Unit!62074)

(assert (=> b!4018076 (= e!2492254 Unit!62079)))

(assert (= (and start!378428 res!1634461) b!4018036))

(assert (= (and b!4018036 res!1634480) b!4018063))

(assert (= (and b!4018063 res!1634479) b!4018041))

(assert (= (and b!4018041 res!1634465) b!4018042))

(assert (= (and b!4018042 res!1634471) b!4018038))

(assert (= (and b!4018038 res!1634476) b!4018058))

(assert (= (and b!4018058 res!1634466) b!4018061))

(assert (= (and b!4018061 res!1634470) b!4018040))

(assert (= (and b!4018040 (not res!1634475)) b!4018044))

(assert (= (and b!4018044 (not res!1634467)) b!4018050))

(assert (= (and b!4018050 (not res!1634481)) b!4018051))

(assert (= (and b!4018051 (not res!1634459)) b!4018064))

(assert (= (and b!4018064 (not res!1634474)) b!4018037))

(assert (= (and b!4018037 (not res!1634477)) b!4018060))

(assert (= (and b!4018060 res!1634460) b!4018047))

(assert (= (and b!4018047 res!1634472) b!4018074))

(assert (= (and b!4018074 res!1634473) b!4018071))

(assert (= (and b!4018060 (not res!1634469)) b!4018043))

(assert (= (and b!4018043 (not res!1634463)) b!4018072))

(assert (= (and b!4018072 (not res!1634456)) b!4018070))

(assert (= (and b!4018070 (not res!1634457)) b!4018056))

(assert (= (and b!4018056 (not res!1634478)) b!4018057))

(assert (= (and b!4018057 (not res!1634464)) b!4018049))

(assert (= (and b!4018049 (not res!1634458)) b!4018048))

(assert (= (and b!4018048 (not res!1634462)) b!4018052))

(assert (= (and b!4018052 c!694448) b!4018073))

(assert (= (and b!4018052 (not c!694448)) b!4018069))

(assert (= (and b!4018073 res!1634468) b!4018039))

(assert (= (and b!4018052 c!694449) b!4018067))

(assert (= (and b!4018052 (not c!694449)) b!4018076))

(assert (= (and start!378428 ((_ is Cons!43000) prefix!494)) b!4018045))

(assert (= b!4018066 b!4018059))

(assert (= b!4018046 b!4018066))

(assert (= start!378428 b!4018046))

(assert (= (and start!378428 ((_ is Cons!43000) suffixResult!105)) b!4018054))

(assert (= (and start!378428 ((_ is Cons!43000) suffix!1299)) b!4018065))

(assert (= (and start!378428 ((_ is Cons!43000) newSuffix!27)) b!4018053))

(assert (= b!4018075 b!4018068))

(assert (= b!4018062 b!4018075))

(assert (= (and start!378428 ((_ is Cons!43002) rules!2999)) b!4018062))

(assert (= (and start!378428 ((_ is Cons!43000) newSuffixResult!27)) b!4018055))

(declare-fun m!4607049 () Bool)

(assert (=> b!4018073 m!4607049))

(declare-fun m!4607051 () Bool)

(assert (=> b!4018073 m!4607051))

(declare-fun m!4607053 () Bool)

(assert (=> b!4018042 m!4607053))

(declare-fun m!4607055 () Bool)

(assert (=> b!4018040 m!4607055))

(declare-fun m!4607057 () Bool)

(assert (=> b!4018040 m!4607057))

(declare-fun m!4607059 () Bool)

(assert (=> b!4018040 m!4607059))

(declare-fun m!4607061 () Bool)

(assert (=> b!4018040 m!4607061))

(declare-fun m!4607063 () Bool)

(assert (=> b!4018063 m!4607063))

(declare-fun m!4607065 () Bool)

(assert (=> b!4018074 m!4607065))

(declare-fun m!4607067 () Bool)

(assert (=> b!4018067 m!4607067))

(declare-fun m!4607069 () Bool)

(assert (=> b!4018072 m!4607069))

(declare-fun m!4607071 () Bool)

(assert (=> b!4018072 m!4607071))

(declare-fun m!4607073 () Bool)

(assert (=> b!4018072 m!4607073))

(declare-fun m!4607075 () Bool)

(assert (=> b!4018072 m!4607075))

(declare-fun m!4607077 () Bool)

(assert (=> b!4018072 m!4607077))

(declare-fun m!4607079 () Bool)

(assert (=> b!4018072 m!4607079))

(declare-fun m!4607081 () Bool)

(assert (=> b!4018072 m!4607081))

(declare-fun m!4607083 () Bool)

(assert (=> b!4018072 m!4607083))

(declare-fun m!4607085 () Bool)

(assert (=> b!4018072 m!4607085))

(assert (=> b!4018072 m!4607075))

(declare-fun m!4607087 () Bool)

(assert (=> b!4018072 m!4607087))

(declare-fun m!4607089 () Bool)

(assert (=> b!4018072 m!4607089))

(declare-fun m!4607091 () Bool)

(assert (=> b!4018072 m!4607091))

(declare-fun m!4607093 () Bool)

(assert (=> b!4018072 m!4607093))

(assert (=> b!4018072 m!4607077))

(assert (=> b!4018072 m!4607071))

(declare-fun m!4607095 () Bool)

(assert (=> b!4018072 m!4607095))

(declare-fun m!4607097 () Bool)

(assert (=> b!4018072 m!4607097))

(declare-fun m!4607099 () Bool)

(assert (=> b!4018072 m!4607099))

(declare-fun m!4607101 () Bool)

(assert (=> b!4018072 m!4607101))

(declare-fun m!4607103 () Bool)

(assert (=> b!4018072 m!4607103))

(declare-fun m!4607105 () Bool)

(assert (=> b!4018060 m!4607105))

(declare-fun m!4607107 () Bool)

(assert (=> b!4018060 m!4607107))

(declare-fun m!4607109 () Bool)

(assert (=> b!4018060 m!4607109))

(declare-fun m!4607111 () Bool)

(assert (=> b!4018060 m!4607111))

(declare-fun m!4607113 () Bool)

(assert (=> b!4018057 m!4607113))

(declare-fun m!4607115 () Bool)

(assert (=> b!4018057 m!4607115))

(declare-fun m!4607117 () Bool)

(assert (=> b!4018057 m!4607117))

(declare-fun m!4607119 () Bool)

(assert (=> b!4018048 m!4607119))

(declare-fun m!4607121 () Bool)

(assert (=> b!4018048 m!4607121))

(declare-fun m!4607123 () Bool)

(assert (=> b!4018051 m!4607123))

(declare-fun m!4607125 () Bool)

(assert (=> b!4018051 m!4607125))

(declare-fun m!4607127 () Bool)

(assert (=> b!4018051 m!4607127))

(declare-fun m!4607129 () Bool)

(assert (=> b!4018051 m!4607129))

(declare-fun m!4607131 () Bool)

(assert (=> start!378428 m!4607131))

(declare-fun m!4607133 () Bool)

(assert (=> b!4018064 m!4607133))

(declare-fun m!4607135 () Bool)

(assert (=> b!4018064 m!4607135))

(declare-fun m!4607137 () Bool)

(assert (=> b!4018064 m!4607137))

(declare-fun m!4607139 () Bool)

(assert (=> b!4018064 m!4607139))

(declare-fun m!4607141 () Bool)

(assert (=> b!4018064 m!4607141))

(assert (=> b!4018064 m!4607137))

(declare-fun m!4607143 () Bool)

(assert (=> b!4018064 m!4607143))

(declare-fun m!4607145 () Bool)

(assert (=> b!4018064 m!4607145))

(declare-fun m!4607147 () Bool)

(assert (=> b!4018070 m!4607147))

(declare-fun m!4607149 () Bool)

(assert (=> b!4018070 m!4607149))

(declare-fun m!4607151 () Bool)

(assert (=> b!4018046 m!4607151))

(declare-fun m!4607153 () Bool)

(assert (=> b!4018056 m!4607153))

(declare-fun m!4607155 () Bool)

(assert (=> b!4018056 m!4607155))

(declare-fun m!4607157 () Bool)

(assert (=> b!4018056 m!4607157))

(declare-fun m!4607159 () Bool)

(assert (=> b!4018058 m!4607159))

(declare-fun m!4607161 () Bool)

(assert (=> b!4018058 m!4607161))

(declare-fun m!4607163 () Bool)

(assert (=> b!4018038 m!4607163))

(declare-fun m!4607165 () Bool)

(assert (=> b!4018038 m!4607165))

(declare-fun m!4607167 () Bool)

(assert (=> b!4018038 m!4607167))

(assert (=> b!4018038 m!4607167))

(declare-fun m!4607169 () Bool)

(assert (=> b!4018038 m!4607169))

(declare-fun m!4607171 () Bool)

(assert (=> b!4018043 m!4607171))

(declare-fun m!4607173 () Bool)

(assert (=> b!4018043 m!4607173))

(declare-fun m!4607175 () Bool)

(assert (=> b!4018043 m!4607175))

(declare-fun m!4607177 () Bool)

(assert (=> b!4018043 m!4607177))

(declare-fun m!4607179 () Bool)

(assert (=> b!4018041 m!4607179))

(declare-fun m!4607181 () Bool)

(assert (=> b!4018041 m!4607181))

(declare-fun m!4607183 () Bool)

(assert (=> b!4018075 m!4607183))

(declare-fun m!4607185 () Bool)

(assert (=> b!4018075 m!4607185))

(declare-fun m!4607187 () Bool)

(assert (=> b!4018052 m!4607187))

(declare-fun m!4607189 () Bool)

(assert (=> b!4018052 m!4607189))

(declare-fun m!4607191 () Bool)

(assert (=> b!4018052 m!4607191))

(declare-fun m!4607193 () Bool)

(assert (=> b!4018044 m!4607193))

(declare-fun m!4607195 () Bool)

(assert (=> b!4018044 m!4607195))

(declare-fun m!4607197 () Bool)

(assert (=> b!4018044 m!4607197))

(declare-fun m!4607199 () Bool)

(assert (=> b!4018044 m!4607199))

(declare-fun m!4607201 () Bool)

(assert (=> b!4018044 m!4607201))

(declare-fun m!4607203 () Bool)

(assert (=> b!4018037 m!4607203))

(declare-fun m!4607205 () Bool)

(assert (=> b!4018037 m!4607205))

(declare-fun m!4607207 () Bool)

(assert (=> b!4018037 m!4607207))

(declare-fun m!4607209 () Bool)

(assert (=> b!4018037 m!4607209))

(declare-fun m!4607211 () Bool)

(assert (=> b!4018050 m!4607211))

(declare-fun m!4607213 () Bool)

(assert (=> b!4018050 m!4607213))

(declare-fun m!4607215 () Bool)

(assert (=> b!4018050 m!4607215))

(declare-fun m!4607217 () Bool)

(assert (=> b!4018050 m!4607217))

(declare-fun m!4607219 () Bool)

(assert (=> b!4018066 m!4607219))

(declare-fun m!4607221 () Bool)

(assert (=> b!4018066 m!4607221))

(declare-fun m!4607223 () Bool)

(assert (=> b!4018036 m!4607223))

(declare-fun m!4607225 () Bool)

(assert (=> b!4018061 m!4607225))

(declare-fun m!4607227 () Bool)

(assert (=> b!4018061 m!4607227))

(check-sat (not b!4018063) (not b!4018074) (not b!4018038) b_and!308681 (not b!4018046) (not start!378428) (not b!4018045) (not b!4018067) (not b!4018060) (not b!4018073) (not b!4018055) (not b!4018061) (not b!4018054) (not b_next!112485) (not b!4018056) (not b!4018042) (not b!4018043) (not b!4018051) (not b!4018065) b_and!308679 (not b!4018070) (not b!4018053) (not b!4018041) (not b!4018062) tp_is_empty!20481 (not b!4018072) (not b!4018037) (not b!4018066) (not b!4018064) b_and!308683 (not b_next!112483) (not b_next!112487) (not b!4018040) (not b!4018050) (not b!4018057) (not b!4018075) (not b_next!112481) b_and!308685 (not b!4018058) (not b!4018036) (not b!4018052) (not b!4018048) (not b!4018044))
(check-sat (not b_next!112485) b_and!308679 (not b_next!112481) b_and!308681 b_and!308685 b_and!308683 (not b_next!112483) (not b_next!112487))

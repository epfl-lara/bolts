; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!344010 () Bool)

(assert start!344010)

(declare-fun b!3670471 () Bool)

(declare-fun b_free!96985 () Bool)

(declare-fun b_next!97689 () Bool)

(assert (=> b!3670471 (= b_free!96985 (not b_next!97689))))

(declare-fun tp!1116933 () Bool)

(declare-fun b_and!273339 () Bool)

(assert (=> b!3670471 (= tp!1116933 b_and!273339)))

(declare-fun b_free!96987 () Bool)

(declare-fun b_next!97691 () Bool)

(assert (=> b!3670471 (= b_free!96987 (not b_next!97691))))

(declare-fun tp!1116941 () Bool)

(declare-fun b_and!273341 () Bool)

(assert (=> b!3670471 (= tp!1116941 b_and!273341)))

(declare-fun b!3670508 () Bool)

(declare-fun b_free!96989 () Bool)

(declare-fun b_next!97693 () Bool)

(assert (=> b!3670508 (= b_free!96989 (not b_next!97693))))

(declare-fun tp!1116928 () Bool)

(declare-fun b_and!273343 () Bool)

(assert (=> b!3670508 (= tp!1116928 b_and!273343)))

(declare-fun b_free!96991 () Bool)

(declare-fun b_next!97695 () Bool)

(assert (=> b!3670508 (= b_free!96991 (not b_next!97695))))

(declare-fun tp!1116930 () Bool)

(declare-fun b_and!273345 () Bool)

(assert (=> b!3670508 (= tp!1116930 b_and!273345)))

(declare-fun b!3670483 () Bool)

(declare-fun b_free!96993 () Bool)

(declare-fun b_next!97697 () Bool)

(assert (=> b!3670483 (= b_free!96993 (not b_next!97697))))

(declare-fun tp!1116936 () Bool)

(declare-fun b_and!273347 () Bool)

(assert (=> b!3670483 (= tp!1116936 b_and!273347)))

(declare-fun b_free!96995 () Bool)

(declare-fun b_next!97699 () Bool)

(assert (=> b!3670483 (= b_free!96995 (not b_next!97699))))

(declare-fun tp!1116937 () Bool)

(declare-fun b_and!273349 () Bool)

(assert (=> b!3670483 (= tp!1116937 b_and!273349)))

(declare-fun b!3670463 () Bool)

(declare-fun b_free!96997 () Bool)

(declare-fun b_next!97701 () Bool)

(assert (=> b!3670463 (= b_free!96997 (not b_next!97701))))

(declare-fun tp!1116931 () Bool)

(declare-fun b_and!273351 () Bool)

(assert (=> b!3670463 (= tp!1116931 b_and!273351)))

(declare-fun b_free!96999 () Bool)

(declare-fun b_next!97703 () Bool)

(assert (=> b!3670463 (= b_free!96999 (not b_next!97703))))

(declare-fun tp!1116932 () Bool)

(declare-fun b_and!273353 () Bool)

(assert (=> b!3670463 (= tp!1116932 b_and!273353)))

(declare-fun b!3670459 () Bool)

(declare-fun e!2272726 () Bool)

(declare-fun e!2272714 () Bool)

(assert (=> b!3670459 (= e!2272726 e!2272714)))

(declare-fun res!1490656 () Bool)

(assert (=> b!3670459 (=> res!1490656 e!2272714)))

(declare-datatypes ((C!21340 0))(
  ( (C!21341 (val!12718 Int)) )
))
(declare-datatypes ((List!38833 0))(
  ( (Nil!38709) (Cons!38709 (h!44129 C!21340) (t!299628 List!38833)) )
))
(declare-fun lt!1279292 () List!38833)

(declare-fun lt!1279321 () List!38833)

(declare-fun isPrefix!3181 (List!38833 List!38833) Bool)

(assert (=> b!3670459 (= res!1490656 (not (isPrefix!3181 lt!1279292 lt!1279321)))))

(declare-datatypes ((List!38834 0))(
  ( (Nil!38710) (Cons!38710 (h!44130 (_ BitVec 16)) (t!299629 List!38834)) )
))
(declare-datatypes ((TokenValue!6048 0))(
  ( (FloatLiteralValue!12096 (text!42781 List!38834)) (TokenValueExt!6047 (__x!24313 Int)) (Broken!30240 (value!186247 List!38834)) (Object!6171) (End!6048) (Def!6048) (Underscore!6048) (Match!6048) (Else!6048) (Error!6048) (Case!6048) (If!6048) (Extends!6048) (Abstract!6048) (Class!6048) (Val!6048) (DelimiterValue!12096 (del!6108 List!38834)) (KeywordValue!6054 (value!186248 List!38834)) (CommentValue!12096 (value!186249 List!38834)) (WhitespaceValue!12096 (value!186250 List!38834)) (IndentationValue!6048 (value!186251 List!38834)) (String!43573) (Int32!6048) (Broken!30241 (value!186252 List!38834)) (Boolean!6049) (Unit!56276) (OperatorValue!6051 (op!6108 List!38834)) (IdentifierValue!12096 (value!186253 List!38834)) (IdentifierValue!12097 (value!186254 List!38834)) (WhitespaceValue!12097 (value!186255 List!38834)) (True!12096) (False!12096) (Broken!30242 (value!186256 List!38834)) (Broken!30243 (value!186257 List!38834)) (True!12097) (RightBrace!6048) (RightBracket!6048) (Colon!6048) (Null!6048) (Comma!6048) (LeftBracket!6048) (False!12097) (LeftBrace!6048) (ImaginaryLiteralValue!6048 (text!42782 List!38834)) (StringLiteralValue!18144 (value!186258 List!38834)) (EOFValue!6048 (value!186259 List!38834)) (IdentValue!6048 (value!186260 List!38834)) (DelimiterValue!12097 (value!186261 List!38834)) (DedentValue!6048 (value!186262 List!38834)) (NewLineValue!6048 (value!186263 List!38834)) (IntegerValue!18144 (value!186264 (_ BitVec 32)) (text!42783 List!38834)) (IntegerValue!18145 (value!186265 Int) (text!42784 List!38834)) (Times!6048) (Or!6048) (Equal!6048) (Minus!6048) (Broken!30244 (value!186266 List!38834)) (And!6048) (Div!6048) (LessEqual!6048) (Mod!6048) (Concat!16625) (Not!6048) (Plus!6048) (SpaceValue!6048 (value!186267 List!38834)) (IntegerValue!18146 (value!186268 Int) (text!42785 List!38834)) (StringLiteralValue!18145 (text!42786 List!38834)) (FloatLiteralValue!12097 (text!42787 List!38834)) (BytesLiteralValue!6048 (value!186269 List!38834)) (CommentValue!12097 (value!186270 List!38834)) (StringLiteralValue!18146 (value!186271 List!38834)) (ErrorTokenValue!6048 (msg!6109 List!38834)) )
))
(declare-datatypes ((String!43574 0))(
  ( (String!43575 (value!186272 String)) )
))
(declare-datatypes ((Regex!10577 0))(
  ( (ElementMatch!10577 (c!634632 C!21340)) (Concat!16626 (regOne!21666 Regex!10577) (regTwo!21666 Regex!10577)) (EmptyExpr!10577) (Star!10577 (reg!10906 Regex!10577)) (EmptyLang!10577) (Union!10577 (regOne!21667 Regex!10577) (regTwo!21667 Regex!10577)) )
))
(declare-datatypes ((IArray!23691 0))(
  ( (IArray!23692 (innerList!11903 List!38833)) )
))
(declare-datatypes ((Conc!11843 0))(
  ( (Node!11843 (left!30210 Conc!11843) (right!30540 Conc!11843) (csize!23916 Int) (cheight!12054 Int)) (Leaf!18363 (xs!15045 IArray!23691) (csize!23917 Int)) (Empty!11843) )
))
(declare-datatypes ((BalanceConc!23300 0))(
  ( (BalanceConc!23301 (c!634633 Conc!11843)) )
))
(declare-datatypes ((TokenValueInjection!11524 0))(
  ( (TokenValueInjection!11525 (toValue!8114 Int) (toChars!7973 Int)) )
))
(declare-datatypes ((Rule!11436 0))(
  ( (Rule!11437 (regex!5818 Regex!10577) (tag!6608 String!43574) (isSeparator!5818 Bool) (transformation!5818 TokenValueInjection!11524)) )
))
(declare-datatypes ((Token!11002 0))(
  ( (Token!11003 (value!186273 TokenValue!6048) (rule!8642 Rule!11436) (size!29585 Int) (originalCharacters!6532 List!38833)) )
))
(declare-datatypes ((tuple2!38580 0))(
  ( (tuple2!38581 (_1!22424 Token!11002) (_2!22424 List!38833)) )
))
(declare-fun lt!1279324 () tuple2!38580)

(declare-fun ++!9634 (List!38833 List!38833) List!38833)

(assert (=> b!3670459 (isPrefix!3181 lt!1279292 (++!9634 lt!1279292 (_2!22424 lt!1279324)))))

(declare-datatypes ((Unit!56277 0))(
  ( (Unit!56278) )
))
(declare-fun lt!1279305 () Unit!56277)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2100 (List!38833 List!38833) Unit!56277)

(assert (=> b!3670459 (= lt!1279305 (lemmaConcatTwoListThenFirstIsPrefix!2100 lt!1279292 (_2!22424 lt!1279324)))))

(declare-fun lt!1279319 () BalanceConc!23300)

(declare-fun list!14376 (BalanceConc!23300) List!38833)

(assert (=> b!3670459 (= lt!1279292 (list!14376 lt!1279319))))

(declare-fun charsOf!3832 (Token!11002) BalanceConc!23300)

(assert (=> b!3670459 (= lt!1279319 (charsOf!3832 (_1!22424 lt!1279324)))))

(declare-fun e!2272716 () Bool)

(assert (=> b!3670459 e!2272716))

(declare-fun res!1490662 () Bool)

(assert (=> b!3670459 (=> (not res!1490662) (not e!2272716))))

(declare-datatypes ((Option!8264 0))(
  ( (None!8263) (Some!8263 (v!38175 Rule!11436)) )
))
(declare-fun lt!1279311 () Option!8264)

(declare-fun isDefined!6496 (Option!8264) Bool)

(assert (=> b!3670459 (= res!1490662 (isDefined!6496 lt!1279311))))

(declare-datatypes ((List!38835 0))(
  ( (Nil!38711) (Cons!38711 (h!44131 Rule!11436) (t!299630 List!38835)) )
))
(declare-fun rules!3307 () List!38835)

(declare-datatypes ((LexerInterface!5407 0))(
  ( (LexerInterfaceExt!5404 (__x!24314 Int)) (Lexer!5405) )
))
(declare-fun thiss!23823 () LexerInterface!5407)

(declare-fun getRuleFromTag!1422 (LexerInterface!5407 List!38835 String!43574) Option!8264)

(assert (=> b!3670459 (= lt!1279311 (getRuleFromTag!1422 thiss!23823 rules!3307 (tag!6608 (rule!8642 (_1!22424 lt!1279324)))))))

(declare-fun lt!1279291 () Unit!56277)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1422 (LexerInterface!5407 List!38835 List!38833 Token!11002) Unit!56277)

(assert (=> b!3670459 (= lt!1279291 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1422 thiss!23823 rules!3307 lt!1279321 (_1!22424 lt!1279324)))))

(declare-datatypes ((Option!8265 0))(
  ( (None!8264) (Some!8264 (v!38176 tuple2!38580)) )
))
(declare-fun lt!1279326 () Option!8265)

(declare-fun get!12783 (Option!8265) tuple2!38580)

(assert (=> b!3670459 (= lt!1279324 (get!12783 lt!1279326))))

(declare-fun suffix!1395 () List!38833)

(declare-fun lt!1279322 () Unit!56277)

(declare-fun lt!1279306 () List!38833)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1085 (LexerInterface!5407 List!38835 List!38833 List!38833) Unit!56277)

(assert (=> b!3670459 (= lt!1279322 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1085 thiss!23823 rules!3307 lt!1279306 suffix!1395))))

(declare-fun maxPrefix!2941 (LexerInterface!5407 List!38835 List!38833) Option!8265)

(assert (=> b!3670459 (= lt!1279326 (maxPrefix!2941 thiss!23823 rules!3307 lt!1279321))))

(assert (=> b!3670459 (isPrefix!3181 lt!1279306 lt!1279321)))

(declare-fun lt!1279338 () Unit!56277)

(assert (=> b!3670459 (= lt!1279338 (lemmaConcatTwoListThenFirstIsPrefix!2100 lt!1279306 suffix!1395))))

(assert (=> b!3670459 (= lt!1279321 (++!9634 lt!1279306 suffix!1395))))

(declare-fun b!3670460 () Bool)

(declare-fun e!2272718 () Bool)

(declare-fun e!2272721 () Bool)

(assert (=> b!3670460 (= e!2272718 e!2272721)))

(declare-fun res!1490644 () Bool)

(assert (=> b!3670460 (=> (not res!1490644) (not e!2272721))))

(declare-fun lt!1279328 () Option!8265)

(declare-fun isDefined!6497 (Option!8265) Bool)

(assert (=> b!3670460 (= res!1490644 (isDefined!6497 lt!1279328))))

(assert (=> b!3670460 (= lt!1279328 (maxPrefix!2941 thiss!23823 rules!3307 lt!1279306))))

(declare-fun lt!1279307 () BalanceConc!23300)

(assert (=> b!3670460 (= lt!1279306 (list!14376 lt!1279307))))

(declare-fun token!511 () Token!11002)

(assert (=> b!3670460 (= lt!1279307 (charsOf!3832 token!511))))

(declare-fun bm!265702 () Bool)

(declare-fun call!265712 () List!38833)

(declare-fun usedCharacters!1030 (Regex!10577) List!38833)

(assert (=> bm!265702 (= call!265712 (usedCharacters!1030 (regex!5818 (rule!8642 (_1!22424 lt!1279324)))))))

(declare-fun tp!1116935 () Bool)

(declare-fun e!2272703 () Bool)

(declare-fun e!2272700 () Bool)

(declare-fun b!3670461 () Bool)

(declare-fun inv!52190 (String!43574) Bool)

(declare-fun inv!52193 (TokenValueInjection!11524) Bool)

(assert (=> b!3670461 (= e!2272700 (and tp!1116935 (inv!52190 (tag!6608 (h!44131 rules!3307))) (inv!52193 (transformation!5818 (h!44131 rules!3307))) e!2272703))))

(declare-fun b!3670462 () Bool)

(declare-fun res!1490666 () Bool)

(assert (=> b!3670462 (=> (not res!1490666) (not e!2272718))))

(declare-fun isEmpty!22974 (List!38835) Bool)

(assert (=> b!3670462 (= res!1490666 (not (isEmpty!22974 rules!3307)))))

(assert (=> b!3670463 (= e!2272703 (and tp!1116931 tp!1116932))))

(declare-fun b!3670464 () Bool)

(declare-fun e!2272701 () Bool)

(declare-fun e!2272711 () Bool)

(assert (=> b!3670464 (= e!2272701 e!2272711)))

(declare-fun res!1490641 () Bool)

(assert (=> b!3670464 (=> res!1490641 e!2272711)))

(assert (=> b!3670464 (= res!1490641 (= (rule!8642 (_1!22424 lt!1279324)) (rule!8642 token!511)))))

(assert (=> b!3670464 (= lt!1279292 lt!1279306)))

(declare-fun lt!1279308 () Unit!56277)

(declare-fun lemmaIsPrefixSameLengthThenSameList!643 (List!38833 List!38833 List!38833) Unit!56277)

(assert (=> b!3670464 (= lt!1279308 (lemmaIsPrefixSameLengthThenSameList!643 lt!1279292 lt!1279306 lt!1279321))))

(declare-fun lt!1279337 () Unit!56277)

(declare-fun e!2272707 () Unit!56277)

(assert (=> b!3670464 (= lt!1279337 e!2272707)))

(declare-fun c!634624 () Bool)

(declare-fun lt!1279317 () Int)

(declare-fun lt!1279330 () Int)

(assert (=> b!3670464 (= c!634624 (< lt!1279317 lt!1279330))))

(declare-fun lt!1279290 () Unit!56277)

(declare-fun e!2272734 () Unit!56277)

(assert (=> b!3670464 (= lt!1279290 e!2272734)))

(declare-fun c!634627 () Bool)

(assert (=> b!3670464 (= c!634627 (> lt!1279317 lt!1279330))))

(declare-fun size!29586 (BalanceConc!23300) Int)

(assert (=> b!3670464 (= lt!1279330 (size!29586 lt!1279307))))

(declare-fun lt!1279344 () Unit!56277)

(declare-fun e!2272717 () Unit!56277)

(assert (=> b!3670464 (= lt!1279344 e!2272717)))

(declare-fun c!634625 () Bool)

(declare-fun rule!403 () Rule!11436)

(assert (=> b!3670464 (= c!634625 (isSeparator!5818 rule!403))))

(declare-fun lt!1279332 () Unit!56277)

(declare-fun e!2272732 () Unit!56277)

(assert (=> b!3670464 (= lt!1279332 e!2272732)))

(declare-fun c!634626 () Bool)

(declare-fun lt!1279336 () List!38833)

(declare-fun lt!1279294 () C!21340)

(declare-fun contains!7703 (List!38833 C!21340) Bool)

(assert (=> b!3670464 (= c!634626 (not (contains!7703 lt!1279336 lt!1279294)))))

(declare-fun head!7858 (List!38833) C!21340)

(assert (=> b!3670464 (= lt!1279294 (head!7858 lt!1279292))))

(declare-fun b!3670465 () Bool)

(declare-fun res!1490651 () Bool)

(declare-fun e!2272723 () Bool)

(assert (=> b!3670465 (=> res!1490651 e!2272723)))

(declare-fun isEmpty!22975 (List!38833) Bool)

(assert (=> b!3670465 (= res!1490651 (isEmpty!22975 lt!1279306))))

(declare-fun b!3670466 () Bool)

(declare-fun e!2272706 () Bool)

(assert (=> b!3670466 (= e!2272706 e!2272701)))

(declare-fun res!1490653 () Bool)

(assert (=> b!3670466 (=> res!1490653 e!2272701)))

(declare-fun lt!1279334 () List!38833)

(declare-fun lt!1279315 () Option!8265)

(assert (=> b!3670466 (= res!1490653 (or (not (= lt!1279334 (_2!22424 lt!1279324))) (not (= lt!1279315 (Some!8264 (tuple2!38581 (_1!22424 lt!1279324) lt!1279334))))))))

(assert (=> b!3670466 (= (_2!22424 lt!1279324) lt!1279334)))

(declare-fun lt!1279302 () Unit!56277)

(declare-fun lemmaSamePrefixThenSameSuffix!1508 (List!38833 List!38833 List!38833 List!38833 List!38833) Unit!56277)

(assert (=> b!3670466 (= lt!1279302 (lemmaSamePrefixThenSameSuffix!1508 lt!1279292 (_2!22424 lt!1279324) lt!1279292 lt!1279334 lt!1279321))))

(declare-fun getSuffix!1734 (List!38833 List!38833) List!38833)

(assert (=> b!3670466 (= lt!1279334 (getSuffix!1734 lt!1279321 lt!1279292))))

(declare-fun lt!1279331 () TokenValue!6048)

(declare-fun lt!1279341 () Int)

(assert (=> b!3670466 (= lt!1279315 (Some!8264 (tuple2!38581 (Token!11003 lt!1279331 (rule!8642 (_1!22424 lt!1279324)) lt!1279341 lt!1279292) (_2!22424 lt!1279324))))))

(declare-fun maxPrefixOneRule!2079 (LexerInterface!5407 Rule!11436 List!38833) Option!8265)

(assert (=> b!3670466 (= lt!1279315 (maxPrefixOneRule!2079 thiss!23823 (rule!8642 (_1!22424 lt!1279324)) lt!1279321))))

(declare-fun size!29587 (List!38833) Int)

(assert (=> b!3670466 (= lt!1279341 (size!29587 lt!1279292))))

(declare-fun apply!9320 (TokenValueInjection!11524 BalanceConc!23300) TokenValue!6048)

(declare-fun seqFromList!4367 (List!38833) BalanceConc!23300)

(assert (=> b!3670466 (= lt!1279331 (apply!9320 (transformation!5818 (rule!8642 (_1!22424 lt!1279324))) (seqFromList!4367 lt!1279292)))))

(declare-fun lt!1279342 () Unit!56277)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1135 (LexerInterface!5407 List!38835 List!38833 List!38833 List!38833 Rule!11436) Unit!56277)

(assert (=> b!3670466 (= lt!1279342 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1135 thiss!23823 rules!3307 lt!1279292 lt!1279321 (_2!22424 lt!1279324) (rule!8642 (_1!22424 lt!1279324))))))

(declare-fun b!3670467 () Bool)

(declare-fun res!1490648 () Bool)

(assert (=> b!3670467 (=> res!1490648 e!2272726)))

(declare-fun sepAndNonSepRulesDisjointChars!1986 (List!38835 List!38835) Bool)

(assert (=> b!3670467 (= res!1490648 (not (sepAndNonSepRulesDisjointChars!1986 rules!3307 rules!3307)))))

(declare-fun b!3670468 () Bool)

(declare-fun e!2272735 () Bool)

(declare-fun e!2272708 () Bool)

(assert (=> b!3670468 (= e!2272735 (not e!2272708))))

(declare-fun res!1490654 () Bool)

(assert (=> b!3670468 (=> res!1490654 e!2272708)))

(declare-fun matchR!5146 (Regex!10577 List!38833) Bool)

(assert (=> b!3670468 (= res!1490654 (not (matchR!5146 (regex!5818 rule!403) lt!1279306)))))

(declare-fun ruleValid!2082 (LexerInterface!5407 Rule!11436) Bool)

(assert (=> b!3670468 (ruleValid!2082 thiss!23823 rule!403)))

(declare-fun lt!1279310 () Unit!56277)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1236 (LexerInterface!5407 Rule!11436 List!38835) Unit!56277)

(assert (=> b!3670468 (= lt!1279310 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1236 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3670469 () Bool)

(declare-fun res!1490664 () Bool)

(assert (=> b!3670469 (=> res!1490664 e!2272723)))

(declare-fun contains!7704 (List!38835 Rule!11436) Bool)

(assert (=> b!3670469 (= res!1490664 (not (contains!7704 rules!3307 (rule!8642 (_1!22424 lt!1279324)))))))

(declare-fun b!3670470 () Bool)

(declare-fun Unit!56279 () Unit!56277)

(assert (=> b!3670470 (= e!2272707 Unit!56279)))

(declare-fun e!2272736 () Bool)

(assert (=> b!3670471 (= e!2272736 (and tp!1116933 tp!1116941))))

(declare-fun b!3670472 () Bool)

(declare-fun Unit!56280 () Unit!56277)

(assert (=> b!3670472 (= e!2272734 Unit!56280)))

(declare-fun b!3670473 () Bool)

(declare-fun e!2272730 () Unit!56277)

(assert (=> b!3670473 (= e!2272734 e!2272730)))

(declare-fun lt!1279299 () Unit!56277)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!126 (List!38833 List!38833 List!38833 List!38833) Unit!56277)

(assert (=> b!3670473 (= lt!1279299 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!126 lt!1279306 suffix!1395 lt!1279292 lt!1279321))))

(declare-fun lt!1279304 () C!21340)

(assert (=> b!3670473 (contains!7703 lt!1279292 lt!1279304)))

(declare-fun c!634628 () Bool)

(assert (=> b!3670473 (= c!634628 (isSeparator!5818 rule!403))))

(declare-fun b!3670474 () Bool)

(declare-fun Unit!56281 () Unit!56277)

(assert (=> b!3670474 (= e!2272732 Unit!56281)))

(declare-fun b!3670475 () Bool)

(declare-fun e!2272712 () Bool)

(declare-fun tp!1116934 () Bool)

(assert (=> b!3670475 (= e!2272712 (and e!2272700 tp!1116934))))

(declare-fun b!3670476 () Bool)

(declare-fun e!2272733 () Unit!56277)

(assert (=> b!3670476 (= e!2272717 e!2272733)))

(declare-fun c!634631 () Bool)

(assert (=> b!3670476 (= c!634631 (isSeparator!5818 (rule!8642 (_1!22424 lt!1279324))))))

(declare-fun b!3670477 () Bool)

(assert (=> b!3670477 false))

(declare-fun lt!1279333 () Unit!56277)

(declare-fun call!265709 () Unit!56277)

(assert (=> b!3670477 (= lt!1279333 call!265709)))

(declare-fun call!265708 () Bool)

(assert (=> b!3670477 (not call!265708)))

(declare-fun lt!1279293 () Unit!56277)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!464 (LexerInterface!5407 List!38835 List!38835 Rule!11436 Rule!11436 C!21340) Unit!56277)

(assert (=> b!3670477 (= lt!1279293 (lemmaNonSepRuleNotContainsCharContainedInASepRule!464 thiss!23823 rules!3307 rules!3307 (rule!8642 (_1!22424 lt!1279324)) rule!403 lt!1279294))))

(declare-fun e!2272704 () Unit!56277)

(declare-fun Unit!56282 () Unit!56277)

(assert (=> b!3670477 (= e!2272704 Unit!56282)))

(declare-fun b!3670478 () Bool)

(declare-fun Unit!56283 () Unit!56277)

(assert (=> b!3670478 (= e!2272704 Unit!56283)))

(declare-fun b!3670479 () Bool)

(assert (=> b!3670479 (= e!2272717 e!2272704)))

(declare-fun c!634630 () Bool)

(assert (=> b!3670479 (= c!634630 (not (isSeparator!5818 (rule!8642 (_1!22424 lt!1279324)))))))

(declare-fun bm!265703 () Bool)

(declare-fun call!265711 () List!38833)

(assert (=> bm!265703 (= call!265708 (contains!7703 call!265711 lt!1279294))))

(declare-fun b!3670480 () Bool)

(declare-fun tp!1116938 () Bool)

(declare-fun e!2272705 () Bool)

(declare-fun e!2272727 () Bool)

(declare-fun inv!21 (TokenValue!6048) Bool)

(assert (=> b!3670480 (= e!2272727 (and (inv!21 (value!186273 token!511)) e!2272705 tp!1116938))))

(declare-fun b!3670481 () Bool)

(declare-fun res!1490660 () Bool)

(assert (=> b!3670481 (=> (not res!1490660) (not e!2272718))))

(declare-fun anOtherTypeRule!33 () Rule!11436)

(assert (=> b!3670481 (= res!1490660 (contains!7704 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3670482 () Bool)

(declare-fun Unit!56284 () Unit!56277)

(assert (=> b!3670482 (= e!2272732 Unit!56284)))

(declare-fun lt!1279303 () Unit!56277)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!766 (Regex!10577 List!38833 C!21340) Unit!56277)

(assert (=> b!3670482 (= lt!1279303 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!766 (regex!5818 rule!403) lt!1279306 lt!1279294))))

(assert (=> b!3670482 false))

(declare-fun e!2272710 () Bool)

(assert (=> b!3670483 (= e!2272710 (and tp!1116936 tp!1116937))))

(declare-fun b!3670484 () Bool)

(declare-fun e!2272729 () Bool)

(assert (=> b!3670484 (= e!2272716 e!2272729)))

(declare-fun res!1490643 () Bool)

(assert (=> b!3670484 (=> (not res!1490643) (not e!2272729))))

(declare-fun lt!1279301 () Rule!11436)

(assert (=> b!3670484 (= res!1490643 (matchR!5146 (regex!5818 lt!1279301) (list!14376 (charsOf!3832 (_1!22424 lt!1279324)))))))

(declare-fun get!12784 (Option!8264) Rule!11436)

(assert (=> b!3670484 (= lt!1279301 (get!12784 lt!1279311))))

(declare-fun tp!1116940 () Bool)

(declare-fun b!3670485 () Bool)

(declare-fun e!2272699 () Bool)

(assert (=> b!3670485 (= e!2272705 (and tp!1116940 (inv!52190 (tag!6608 (rule!8642 token!511))) (inv!52193 (transformation!5818 (rule!8642 token!511))) e!2272699))))

(declare-fun b!3670486 () Bool)

(declare-fun e!2272720 () Bool)

(assert (=> b!3670486 (= e!2272720 false)))

(declare-fun b!3670487 () Bool)

(assert (=> b!3670487 false))

(declare-fun lt!1279296 () Unit!56277)

(declare-fun call!265707 () Unit!56277)

(assert (=> b!3670487 (= lt!1279296 call!265707)))

(declare-fun call!265710 () Bool)

(assert (=> b!3670487 (not call!265710)))

(declare-fun lt!1279295 () Unit!56277)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!346 (LexerInterface!5407 List!38835 List!38835 Rule!11436 Rule!11436 C!21340) Unit!56277)

(assert (=> b!3670487 (= lt!1279295 (lemmaSepRuleNotContainsCharContainedInANonSepRule!346 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8642 (_1!22424 lt!1279324)) lt!1279304))))

(declare-fun Unit!56285 () Unit!56277)

(assert (=> b!3670487 (= e!2272730 Unit!56285)))

(declare-fun b!3670488 () Bool)

(declare-fun res!1490647 () Bool)

(assert (=> b!3670488 (=> res!1490647 e!2272726)))

(assert (=> b!3670488 (= res!1490647 (not (contains!7703 (usedCharacters!1030 (regex!5818 anOtherTypeRule!33)) lt!1279304)))))

(declare-fun b!3670489 () Bool)

(declare-fun Unit!56286 () Unit!56277)

(assert (=> b!3670489 (= e!2272733 Unit!56286)))

(declare-fun b!3670490 () Bool)

(declare-fun res!1490661 () Bool)

(assert (=> b!3670490 (=> res!1490661 e!2272714)))

(assert (=> b!3670490 (= res!1490661 (not (matchR!5146 (regex!5818 (rule!8642 (_1!22424 lt!1279324))) lt!1279292)))))

(declare-fun b!3670491 () Bool)

(assert (=> b!3670491 (= e!2272714 e!2272706)))

(declare-fun res!1490646 () Bool)

(assert (=> b!3670491 (=> res!1490646 e!2272706)))

(declare-fun lt!1279339 () TokenValue!6048)

(assert (=> b!3670491 (= res!1490646 (not (= lt!1279326 (Some!8264 (tuple2!38581 (Token!11003 lt!1279339 (rule!8642 (_1!22424 lt!1279324)) lt!1279317 lt!1279292) (_2!22424 lt!1279324))))))))

(assert (=> b!3670491 (= lt!1279317 (size!29586 lt!1279319))))

(assert (=> b!3670491 (= lt!1279339 (apply!9320 (transformation!5818 (rule!8642 (_1!22424 lt!1279324))) lt!1279319))))

(declare-fun lt!1279297 () Unit!56277)

(declare-fun lemmaCharactersSize!863 (Token!11002) Unit!56277)

(assert (=> b!3670491 (= lt!1279297 (lemmaCharactersSize!863 (_1!22424 lt!1279324)))))

(declare-fun lt!1279335 () Unit!56277)

(declare-fun lemmaEqSameImage!1001 (TokenValueInjection!11524 BalanceConc!23300 BalanceConc!23300) Unit!56277)

(assert (=> b!3670491 (= lt!1279335 (lemmaEqSameImage!1001 (transformation!5818 (rule!8642 (_1!22424 lt!1279324))) lt!1279319 (seqFromList!4367 (originalCharacters!6532 (_1!22424 lt!1279324)))))))

(declare-fun lt!1279300 () Unit!56277)

(declare-fun lemmaSemiInverse!1567 (TokenValueInjection!11524 BalanceConc!23300) Unit!56277)

(assert (=> b!3670491 (= lt!1279300 (lemmaSemiInverse!1567 (transformation!5818 (rule!8642 (_1!22424 lt!1279324))) lt!1279319))))

(declare-fun b!3670492 () Bool)

(declare-fun Unit!56287 () Unit!56277)

(assert (=> b!3670492 (= e!2272707 Unit!56287)))

(declare-fun lt!1279329 () Unit!56277)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!360 (LexerInterface!5407 List!38835 Rule!11436 List!38833 List!38833 List!38833 Rule!11436) Unit!56277)

(assert (=> b!3670492 (= lt!1279329 (lemmaMaxPrefixOutputsMaxPrefix!360 thiss!23823 rules!3307 (rule!8642 (_1!22424 lt!1279324)) lt!1279292 lt!1279321 lt!1279306 rule!403))))

(assert (=> b!3670492 false))

(declare-fun b!3670493 () Bool)

(assert (=> b!3670493 (= e!2272721 e!2272735)))

(declare-fun res!1490659 () Bool)

(assert (=> b!3670493 (=> (not res!1490659) (not e!2272735))))

(declare-fun lt!1279316 () tuple2!38580)

(assert (=> b!3670493 (= res!1490659 (= (_1!22424 lt!1279316) token!511))))

(assert (=> b!3670493 (= lt!1279316 (get!12783 lt!1279328))))

(declare-fun b!3670494 () Bool)

(declare-fun res!1490663 () Bool)

(assert (=> b!3670494 (=> (not res!1490663) (not e!2272718))))

(declare-fun rulesInvariant!4804 (LexerInterface!5407 List!38835) Bool)

(assert (=> b!3670494 (= res!1490663 (rulesInvariant!4804 thiss!23823 rules!3307))))

(declare-fun b!3670495 () Bool)

(declare-fun e!2272719 () Unit!56277)

(declare-fun Unit!56288 () Unit!56277)

(assert (=> b!3670495 (= e!2272719 Unit!56288)))

(declare-fun lt!1279313 () Unit!56277)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!198 (List!38833) Unit!56277)

(assert (=> b!3670495 (= lt!1279313 (lemmaGetSuffixOnListWithItSelfIsEmpty!198 lt!1279306))))

(assert (=> b!3670495 (isEmpty!22975 (getSuffix!1734 lt!1279306 lt!1279306))))

(declare-fun lt!1279298 () Unit!56277)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!226 (LexerInterface!5407 List!38835 Rule!11436 List!38833 List!38833 Rule!11436) Unit!56277)

(assert (=> b!3670495 (= lt!1279298 (lemmaMaxPrefNoSmallerRuleMatches!226 thiss!23823 rules!3307 rule!403 lt!1279306 lt!1279306 (rule!8642 (_1!22424 lt!1279324))))))

(declare-fun res!1490665 () Bool)

(assert (=> b!3670495 (= res!1490665 (not (matchR!5146 (regex!5818 (rule!8642 (_1!22424 lt!1279324))) lt!1279306)))))

(assert (=> b!3670495 (=> (not res!1490665) (not e!2272720))))

(assert (=> b!3670495 e!2272720))

(declare-fun b!3670496 () Bool)

(assert (=> b!3670496 false))

(declare-fun lt!1279327 () Unit!56277)

(assert (=> b!3670496 (= lt!1279327 call!265709)))

(assert (=> b!3670496 (not call!265708)))

(declare-fun lt!1279320 () Unit!56277)

(assert (=> b!3670496 (= lt!1279320 (lemmaSepRuleNotContainsCharContainedInANonSepRule!346 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8642 (_1!22424 lt!1279324)) lt!1279294))))

(declare-fun Unit!56289 () Unit!56277)

(assert (=> b!3670496 (= e!2272733 Unit!56289)))

(declare-fun b!3670497 () Bool)

(assert (=> b!3670497 (= e!2272711 e!2272723)))

(declare-fun res!1490649 () Bool)

(assert (=> b!3670497 (=> res!1490649 e!2272723)))

(declare-fun lt!1279323 () Int)

(declare-fun lt!1279309 () Int)

(assert (=> b!3670497 (= res!1490649 (>= lt!1279323 lt!1279309))))

(declare-fun lt!1279340 () Unit!56277)

(assert (=> b!3670497 (= lt!1279340 e!2272719)))

(declare-fun c!634629 () Bool)

(assert (=> b!3670497 (= c!634629 (< lt!1279309 lt!1279323))))

(declare-fun getIndex!486 (List!38835 Rule!11436) Int)

(assert (=> b!3670497 (= lt!1279323 (getIndex!486 rules!3307 rule!403))))

(assert (=> b!3670497 (= lt!1279309 (getIndex!486 rules!3307 (rule!8642 (_1!22424 lt!1279324))))))

(declare-fun bm!265704 () Bool)

(assert (=> bm!265704 (= call!265710 (contains!7703 call!265712 lt!1279304))))

(declare-fun res!1490642 () Bool)

(assert (=> start!344010 (=> (not res!1490642) (not e!2272718))))

(get-info :version)

(assert (=> start!344010 (= res!1490642 ((_ is Lexer!5405) thiss!23823))))

(assert (=> start!344010 e!2272718))

(assert (=> start!344010 e!2272712))

(declare-fun e!2272725 () Bool)

(assert (=> start!344010 e!2272725))

(assert (=> start!344010 true))

(declare-fun inv!52194 (Token!11002) Bool)

(assert (=> start!344010 (and (inv!52194 token!511) e!2272727)))

(declare-fun e!2272702 () Bool)

(assert (=> start!344010 e!2272702))

(declare-fun e!2272731 () Bool)

(assert (=> start!344010 e!2272731))

(declare-fun b!3670498 () Bool)

(declare-fun tp_is_empty!18237 () Bool)

(declare-fun tp!1116939 () Bool)

(assert (=> b!3670498 (= e!2272725 (and tp_is_empty!18237 tp!1116939))))

(declare-fun tp!1116929 () Bool)

(declare-fun b!3670499 () Bool)

(assert (=> b!3670499 (= e!2272702 (and tp!1116929 (inv!52190 (tag!6608 rule!403)) (inv!52193 (transformation!5818 rule!403)) e!2272710))))

(declare-fun bm!265705 () Bool)

(assert (=> bm!265705 (= call!265707 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!766 (regex!5818 (rule!8642 (_1!22424 lt!1279324))) lt!1279292 lt!1279304))))

(declare-fun b!3670500 () Bool)

(declare-fun res!1490640 () Bool)

(assert (=> b!3670500 (=> (not res!1490640) (not e!2272735))))

(assert (=> b!3670500 (= res!1490640 (isEmpty!22975 (_2!22424 lt!1279316)))))

(declare-fun b!3670501 () Bool)

(assert (=> b!3670501 false))

(declare-fun lt!1279312 () Unit!56277)

(assert (=> b!3670501 (= lt!1279312 call!265707)))

(assert (=> b!3670501 (not call!265710)))

(declare-fun lt!1279325 () Unit!56277)

(assert (=> b!3670501 (= lt!1279325 (lemmaNonSepRuleNotContainsCharContainedInASepRule!464 thiss!23823 rules!3307 rules!3307 (rule!8642 (_1!22424 lt!1279324)) anOtherTypeRule!33 lt!1279304))))

(declare-fun Unit!56290 () Unit!56277)

(assert (=> b!3670501 (= e!2272730 Unit!56290)))

(declare-fun b!3670502 () Bool)

(declare-fun res!1490655 () Bool)

(assert (=> b!3670502 (=> (not res!1490655) (not e!2272718))))

(assert (=> b!3670502 (= res!1490655 (contains!7704 rules!3307 rule!403))))

(declare-fun bm!265706 () Bool)

(assert (=> bm!265706 (= call!265709 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!766 (regex!5818 (rule!8642 (_1!22424 lt!1279324))) lt!1279292 lt!1279294))))

(declare-fun b!3670503 () Bool)

(declare-fun e!2272724 () Bool)

(assert (=> b!3670503 (= e!2272724 true)))

(declare-fun lt!1279343 () Bool)

(assert (=> b!3670503 (= lt!1279343 (matchR!5146 (regex!5818 (rule!8642 (_1!22424 lt!1279324))) lt!1279306))))

(declare-fun b!3670504 () Bool)

(declare-fun res!1490658 () Bool)

(assert (=> b!3670504 (=> (not res!1490658) (not e!2272718))))

(assert (=> b!3670504 (= res!1490658 (not (= (isSeparator!5818 anOtherTypeRule!33) (isSeparator!5818 rule!403))))))

(declare-fun b!3670505 () Bool)

(assert (=> b!3670505 (= e!2272729 (= (rule!8642 (_1!22424 lt!1279324)) lt!1279301))))

(declare-fun b!3670506 () Bool)

(declare-fun res!1490650 () Bool)

(assert (=> b!3670506 (=> (not res!1490650) (not e!2272735))))

(assert (=> b!3670506 (= res!1490650 (= (rule!8642 token!511) rule!403))))

(declare-fun b!3670507 () Bool)

(assert (=> b!3670507 (= e!2272708 e!2272726)))

(declare-fun res!1490645 () Bool)

(assert (=> b!3670507 (=> res!1490645 e!2272726)))

(assert (=> b!3670507 (= res!1490645 (contains!7703 lt!1279336 lt!1279304))))

(assert (=> b!3670507 (= lt!1279304 (head!7858 suffix!1395))))

(assert (=> b!3670507 (= lt!1279336 (usedCharacters!1030 (regex!5818 rule!403)))))

(assert (=> b!3670508 (= e!2272699 (and tp!1116928 tp!1116930))))

(declare-fun bm!265707 () Bool)

(assert (=> bm!265707 (= call!265711 (usedCharacters!1030 (regex!5818 (rule!8642 (_1!22424 lt!1279324)))))))

(declare-fun tp!1116942 () Bool)

(declare-fun b!3670509 () Bool)

(assert (=> b!3670509 (= e!2272731 (and tp!1116942 (inv!52190 (tag!6608 anOtherTypeRule!33)) (inv!52193 (transformation!5818 anOtherTypeRule!33)) e!2272736))))

(declare-fun b!3670510 () Bool)

(assert (=> b!3670510 (= e!2272723 e!2272724)))

(declare-fun res!1490657 () Bool)

(assert (=> b!3670510 (=> res!1490657 e!2272724)))

(declare-fun lt!1279314 () BalanceConc!23300)

(assert (=> b!3670510 (= res!1490657 (not (= lt!1279326 (Some!8264 (tuple2!38581 (Token!11003 (apply!9320 (transformation!5818 (rule!8642 (_1!22424 lt!1279324))) lt!1279314) (rule!8642 (_1!22424 lt!1279324)) (size!29587 lt!1279306) lt!1279306) (getSuffix!1734 lt!1279321 lt!1279306))))))))

(declare-fun lt!1279318 () Unit!56277)

(assert (=> b!3670510 (= lt!1279318 (lemmaSemiInverse!1567 (transformation!5818 (rule!8642 (_1!22424 lt!1279324))) lt!1279314))))

(assert (=> b!3670510 (= lt!1279314 (seqFromList!4367 lt!1279306))))

(declare-fun b!3670511 () Bool)

(declare-fun res!1490652 () Bool)

(assert (=> b!3670511 (=> res!1490652 e!2272708)))

(assert (=> b!3670511 (= res!1490652 (isEmpty!22975 suffix!1395))))

(declare-fun b!3670512 () Bool)

(declare-fun Unit!56291 () Unit!56277)

(assert (=> b!3670512 (= e!2272719 Unit!56291)))

(assert (= (and start!344010 res!1490642) b!3670462))

(assert (= (and b!3670462 res!1490666) b!3670494))

(assert (= (and b!3670494 res!1490663) b!3670502))

(assert (= (and b!3670502 res!1490655) b!3670481))

(assert (= (and b!3670481 res!1490660) b!3670504))

(assert (= (and b!3670504 res!1490658) b!3670460))

(assert (= (and b!3670460 res!1490644) b!3670493))

(assert (= (and b!3670493 res!1490659) b!3670500))

(assert (= (and b!3670500 res!1490640) b!3670506))

(assert (= (and b!3670506 res!1490650) b!3670468))

(assert (= (and b!3670468 (not res!1490654)) b!3670511))

(assert (= (and b!3670511 (not res!1490652)) b!3670507))

(assert (= (and b!3670507 (not res!1490645)) b!3670488))

(assert (= (and b!3670488 (not res!1490647)) b!3670467))

(assert (= (and b!3670467 (not res!1490648)) b!3670459))

(assert (= (and b!3670459 res!1490662) b!3670484))

(assert (= (and b!3670484 res!1490643) b!3670505))

(assert (= (and b!3670459 (not res!1490656)) b!3670490))

(assert (= (and b!3670490 (not res!1490661)) b!3670491))

(assert (= (and b!3670491 (not res!1490646)) b!3670466))

(assert (= (and b!3670466 (not res!1490653)) b!3670464))

(assert (= (and b!3670464 c!634626) b!3670482))

(assert (= (and b!3670464 (not c!634626)) b!3670474))

(assert (= (and b!3670464 c!634625) b!3670479))

(assert (= (and b!3670464 (not c!634625)) b!3670476))

(assert (= (and b!3670479 c!634630) b!3670477))

(assert (= (and b!3670479 (not c!634630)) b!3670478))

(assert (= (and b!3670476 c!634631) b!3670496))

(assert (= (and b!3670476 (not c!634631)) b!3670489))

(assert (= (or b!3670477 b!3670496) bm!265706))

(assert (= (or b!3670477 b!3670496) bm!265707))

(assert (= (or b!3670477 b!3670496) bm!265703))

(assert (= (and b!3670464 c!634627) b!3670473))

(assert (= (and b!3670464 (not c!634627)) b!3670472))

(assert (= (and b!3670473 c!634628) b!3670487))

(assert (= (and b!3670473 (not c!634628)) b!3670501))

(assert (= (or b!3670487 b!3670501) bm!265705))

(assert (= (or b!3670487 b!3670501) bm!265702))

(assert (= (or b!3670487 b!3670501) bm!265704))

(assert (= (and b!3670464 c!634624) b!3670492))

(assert (= (and b!3670464 (not c!634624)) b!3670470))

(assert (= (and b!3670464 (not res!1490641)) b!3670497))

(assert (= (and b!3670497 c!634629) b!3670495))

(assert (= (and b!3670497 (not c!634629)) b!3670512))

(assert (= (and b!3670495 res!1490665) b!3670486))

(assert (= (and b!3670497 (not res!1490649)) b!3670469))

(assert (= (and b!3670469 (not res!1490664)) b!3670465))

(assert (= (and b!3670465 (not res!1490651)) b!3670510))

(assert (= (and b!3670510 (not res!1490657)) b!3670503))

(assert (= b!3670461 b!3670463))

(assert (= b!3670475 b!3670461))

(assert (= (and start!344010 ((_ is Cons!38711) rules!3307)) b!3670475))

(assert (= (and start!344010 ((_ is Cons!38709) suffix!1395)) b!3670498))

(assert (= b!3670485 b!3670508))

(assert (= b!3670480 b!3670485))

(assert (= start!344010 b!3670480))

(assert (= b!3670499 b!3670483))

(assert (= start!344010 b!3670499))

(assert (= b!3670509 b!3670471))

(assert (= start!344010 b!3670509))

(declare-fun m!4179003 () Bool)

(assert (=> b!3670462 m!4179003))

(declare-fun m!4179005 () Bool)

(assert (=> b!3670461 m!4179005))

(declare-fun m!4179007 () Bool)

(assert (=> b!3670461 m!4179007))

(declare-fun m!4179009 () Bool)

(assert (=> b!3670459 m!4179009))

(declare-fun m!4179011 () Bool)

(assert (=> b!3670459 m!4179011))

(declare-fun m!4179013 () Bool)

(assert (=> b!3670459 m!4179013))

(declare-fun m!4179015 () Bool)

(assert (=> b!3670459 m!4179015))

(declare-fun m!4179017 () Bool)

(assert (=> b!3670459 m!4179017))

(declare-fun m!4179019 () Bool)

(assert (=> b!3670459 m!4179019))

(declare-fun m!4179021 () Bool)

(assert (=> b!3670459 m!4179021))

(declare-fun m!4179023 () Bool)

(assert (=> b!3670459 m!4179023))

(declare-fun m!4179025 () Bool)

(assert (=> b!3670459 m!4179025))

(declare-fun m!4179027 () Bool)

(assert (=> b!3670459 m!4179027))

(declare-fun m!4179029 () Bool)

(assert (=> b!3670459 m!4179029))

(declare-fun m!4179031 () Bool)

(assert (=> b!3670459 m!4179031))

(declare-fun m!4179033 () Bool)

(assert (=> b!3670459 m!4179033))

(declare-fun m!4179035 () Bool)

(assert (=> b!3670459 m!4179035))

(assert (=> b!3670459 m!4179035))

(declare-fun m!4179037 () Bool)

(assert (=> b!3670459 m!4179037))

(assert (=> b!3670484 m!4179015))

(assert (=> b!3670484 m!4179015))

(declare-fun m!4179039 () Bool)

(assert (=> b!3670484 m!4179039))

(assert (=> b!3670484 m!4179039))

(declare-fun m!4179041 () Bool)

(assert (=> b!3670484 m!4179041))

(declare-fun m!4179043 () Bool)

(assert (=> b!3670484 m!4179043))

(declare-fun m!4179045 () Bool)

(assert (=> b!3670492 m!4179045))

(declare-fun m!4179047 () Bool)

(assert (=> bm!265706 m!4179047))

(declare-fun m!4179049 () Bool)

(assert (=> b!3670485 m!4179049))

(declare-fun m!4179051 () Bool)

(assert (=> b!3670485 m!4179051))

(declare-fun m!4179053 () Bool)

(assert (=> b!3670500 m!4179053))

(declare-fun m!4179055 () Bool)

(assert (=> b!3670491 m!4179055))

(declare-fun m!4179057 () Bool)

(assert (=> b!3670491 m!4179057))

(declare-fun m!4179059 () Bool)

(assert (=> b!3670491 m!4179059))

(declare-fun m!4179061 () Bool)

(assert (=> b!3670491 m!4179061))

(declare-fun m!4179063 () Bool)

(assert (=> b!3670491 m!4179063))

(assert (=> b!3670491 m!4179061))

(declare-fun m!4179065 () Bool)

(assert (=> b!3670491 m!4179065))

(declare-fun m!4179067 () Bool)

(assert (=> b!3670481 m!4179067))

(declare-fun m!4179069 () Bool)

(assert (=> b!3670460 m!4179069))

(declare-fun m!4179071 () Bool)

(assert (=> b!3670460 m!4179071))

(declare-fun m!4179073 () Bool)

(assert (=> b!3670460 m!4179073))

(declare-fun m!4179075 () Bool)

(assert (=> b!3670460 m!4179075))

(declare-fun m!4179077 () Bool)

(assert (=> bm!265707 m!4179077))

(declare-fun m!4179079 () Bool)

(assert (=> b!3670503 m!4179079))

(declare-fun m!4179081 () Bool)

(assert (=> b!3670507 m!4179081))

(declare-fun m!4179083 () Bool)

(assert (=> b!3670507 m!4179083))

(declare-fun m!4179085 () Bool)

(assert (=> b!3670507 m!4179085))

(declare-fun m!4179087 () Bool)

(assert (=> b!3670473 m!4179087))

(declare-fun m!4179089 () Bool)

(assert (=> b!3670473 m!4179089))

(declare-fun m!4179091 () Bool)

(assert (=> start!344010 m!4179091))

(declare-fun m!4179093 () Bool)

(assert (=> b!3670511 m!4179093))

(declare-fun m!4179095 () Bool)

(assert (=> b!3670477 m!4179095))

(declare-fun m!4179097 () Bool)

(assert (=> b!3670482 m!4179097))

(declare-fun m!4179099 () Bool)

(assert (=> b!3670501 m!4179099))

(declare-fun m!4179101 () Bool)

(assert (=> b!3670480 m!4179101))

(declare-fun m!4179103 () Bool)

(assert (=> b!3670494 m!4179103))

(declare-fun m!4179105 () Bool)

(assert (=> b!3670502 m!4179105))

(declare-fun m!4179107 () Bool)

(assert (=> b!3670465 m!4179107))

(declare-fun m!4179109 () Bool)

(assert (=> bm!265704 m!4179109))

(declare-fun m!4179111 () Bool)

(assert (=> bm!265703 m!4179111))

(declare-fun m!4179113 () Bool)

(assert (=> b!3670464 m!4179113))

(declare-fun m!4179115 () Bool)

(assert (=> b!3670464 m!4179115))

(declare-fun m!4179117 () Bool)

(assert (=> b!3670464 m!4179117))

(declare-fun m!4179119 () Bool)

(assert (=> b!3670464 m!4179119))

(declare-fun m!4179121 () Bool)

(assert (=> b!3670467 m!4179121))

(declare-fun m!4179123 () Bool)

(assert (=> bm!265705 m!4179123))

(declare-fun m!4179125 () Bool)

(assert (=> b!3670487 m!4179125))

(declare-fun m!4179127 () Bool)

(assert (=> b!3670490 m!4179127))

(declare-fun m!4179129 () Bool)

(assert (=> b!3670497 m!4179129))

(declare-fun m!4179131 () Bool)

(assert (=> b!3670497 m!4179131))

(declare-fun m!4179133 () Bool)

(assert (=> b!3670468 m!4179133))

(declare-fun m!4179135 () Bool)

(assert (=> b!3670468 m!4179135))

(declare-fun m!4179137 () Bool)

(assert (=> b!3670468 m!4179137))

(declare-fun m!4179139 () Bool)

(assert (=> b!3670469 m!4179139))

(declare-fun m!4179141 () Bool)

(assert (=> b!3670510 m!4179141))

(declare-fun m!4179143 () Bool)

(assert (=> b!3670510 m!4179143))

(declare-fun m!4179145 () Bool)

(assert (=> b!3670510 m!4179145))

(declare-fun m!4179147 () Bool)

(assert (=> b!3670510 m!4179147))

(declare-fun m!4179149 () Bool)

(assert (=> b!3670510 m!4179149))

(declare-fun m!4179151 () Bool)

(assert (=> b!3670509 m!4179151))

(declare-fun m!4179153 () Bool)

(assert (=> b!3670509 m!4179153))

(declare-fun m!4179155 () Bool)

(assert (=> b!3670499 m!4179155))

(declare-fun m!4179157 () Bool)

(assert (=> b!3670499 m!4179157))

(declare-fun m!4179159 () Bool)

(assert (=> b!3670488 m!4179159))

(assert (=> b!3670488 m!4179159))

(declare-fun m!4179161 () Bool)

(assert (=> b!3670488 m!4179161))

(declare-fun m!4179163 () Bool)

(assert (=> b!3670466 m!4179163))

(declare-fun m!4179165 () Bool)

(assert (=> b!3670466 m!4179165))

(declare-fun m!4179167 () Bool)

(assert (=> b!3670466 m!4179167))

(declare-fun m!4179169 () Bool)

(assert (=> b!3670466 m!4179169))

(declare-fun m!4179171 () Bool)

(assert (=> b!3670466 m!4179171))

(declare-fun m!4179173 () Bool)

(assert (=> b!3670466 m!4179173))

(assert (=> b!3670466 m!4179169))

(declare-fun m!4179175 () Bool)

(assert (=> b!3670466 m!4179175))

(declare-fun m!4179177 () Bool)

(assert (=> b!3670493 m!4179177))

(declare-fun m!4179179 () Bool)

(assert (=> b!3670496 m!4179179))

(assert (=> bm!265702 m!4179077))

(declare-fun m!4179181 () Bool)

(assert (=> b!3670495 m!4179181))

(declare-fun m!4179183 () Bool)

(assert (=> b!3670495 m!4179183))

(declare-fun m!4179185 () Bool)

(assert (=> b!3670495 m!4179185))

(assert (=> b!3670495 m!4179079))

(assert (=> b!3670495 m!4179181))

(declare-fun m!4179187 () Bool)

(assert (=> b!3670495 m!4179187))

(check-sat (not b!3670492) (not bm!265707) (not b_next!97695) (not bm!265705) (not b!3670490) (not b_next!97689) (not b!3670485) (not b!3670496) (not b!3670507) (not b!3670461) b_and!273339 (not b!3670459) (not b!3670499) (not b!3670495) (not b!3670462) (not b!3670488) (not b!3670460) (not b!3670511) b_and!273341 (not b!3670498) (not b!3670487) b_and!273347 (not b_next!97699) (not b!3670509) (not bm!265706) (not b!3670480) (not bm!265702) (not b!3670464) (not b!3670501) (not b!3670473) (not bm!265704) b_and!273351 (not b_next!97697) (not b!3670466) (not b!3670475) (not b_next!97691) (not b!3670482) (not b!3670497) (not bm!265703) (not b!3670468) (not start!344010) (not b!3670469) b_and!273343 (not b!3670510) (not b!3670491) b_and!273349 (not b!3670494) (not b!3670502) b_and!273345 b_and!273353 (not b!3670481) (not b!3670484) (not b!3670467) tp_is_empty!18237 (not b!3670477) (not b!3670465) (not b_next!97693) (not b_next!97701) (not b!3670503) (not b!3670493) (not b_next!97703) (not b!3670500))
(check-sat b_and!273339 b_and!273341 b_and!273347 (not b_next!97695) (not b_next!97699) (not b_next!97689) b_and!273351 b_and!273343 b_and!273349 (not b_next!97703) (not b_next!97697) (not b_next!97691) b_and!273345 b_and!273353 (not b_next!97693) (not b_next!97701))

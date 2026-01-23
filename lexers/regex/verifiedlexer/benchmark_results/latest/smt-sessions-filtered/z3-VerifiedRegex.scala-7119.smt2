; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!377780 () Bool)

(assert start!377780)

(declare-fun b!4010976 () Bool)

(declare-fun b_free!111545 () Bool)

(declare-fun b_next!112249 () Bool)

(assert (=> b!4010976 (= b_free!111545 (not b_next!112249))))

(declare-fun tp!1220132 () Bool)

(declare-fun b_and!308119 () Bool)

(assert (=> b!4010976 (= tp!1220132 b_and!308119)))

(declare-fun b_free!111547 () Bool)

(declare-fun b_next!112251 () Bool)

(assert (=> b!4010976 (= b_free!111547 (not b_next!112251))))

(declare-fun tp!1220122 () Bool)

(declare-fun b_and!308121 () Bool)

(assert (=> b!4010976 (= tp!1220122 b_and!308121)))

(declare-fun b!4010975 () Bool)

(declare-fun b_free!111549 () Bool)

(declare-fun b_next!112253 () Bool)

(assert (=> b!4010975 (= b_free!111549 (not b_next!112253))))

(declare-fun tp!1220124 () Bool)

(declare-fun b_and!308123 () Bool)

(assert (=> b!4010975 (= tp!1220124 b_and!308123)))

(declare-fun b_free!111551 () Bool)

(declare-fun b_next!112255 () Bool)

(assert (=> b!4010975 (= b_free!111551 (not b_next!112255))))

(declare-fun tp!1220127 () Bool)

(declare-fun b_and!308125 () Bool)

(assert (=> b!4010975 (= tp!1220127 b_and!308125)))

(declare-fun b!4010964 () Bool)

(declare-fun e!2487390 () Bool)

(declare-fun e!2487398 () Bool)

(assert (=> b!4010964 (= e!2487390 e!2487398)))

(declare-fun res!1630366 () Bool)

(assert (=> b!4010964 (=> (not res!1630366) (not e!2487398))))

(declare-datatypes ((C!23648 0))(
  ( (C!23649 (val!13918 Int)) )
))
(declare-datatypes ((List!43044 0))(
  ( (Nil!42920) (Cons!42920 (h!48340 C!23648) (t!332975 List!43044)) )
))
(declare-fun lt!1419871 () List!43044)

(declare-datatypes ((IArray!26079 0))(
  ( (IArray!26080 (innerList!13097 List!43044)) )
))
(declare-datatypes ((Conc!13037 0))(
  ( (Node!13037 (left!32380 Conc!13037) (right!32710 Conc!13037) (csize!26304 Int) (cheight!13248 Int)) (Leaf!20157 (xs!16343 IArray!26079) (csize!26305 Int)) (Empty!13037) )
))
(declare-datatypes ((BalanceConc!25668 0))(
  ( (BalanceConc!25669 (c!693538 Conc!13037)) )
))
(declare-datatypes ((List!43045 0))(
  ( (Nil!42921) (Cons!42921 (h!48341 (_ BitVec 16)) (t!332976 List!43045)) )
))
(declare-datatypes ((TokenValue!7056 0))(
  ( (FloatLiteralValue!14112 (text!49837 List!43045)) (TokenValueExt!7055 (__x!26329 Int)) (Broken!35280 (value!215149 List!43045)) (Object!7179) (End!7056) (Def!7056) (Underscore!7056) (Match!7056) (Else!7056) (Error!7056) (Case!7056) (If!7056) (Extends!7056) (Abstract!7056) (Class!7056) (Val!7056) (DelimiterValue!14112 (del!7116 List!43045)) (KeywordValue!7062 (value!215150 List!43045)) (CommentValue!14112 (value!215151 List!43045)) (WhitespaceValue!14112 (value!215152 List!43045)) (IndentationValue!7056 (value!215153 List!43045)) (String!48997) (Int32!7056) (Broken!35281 (value!215154 List!43045)) (Boolean!7057) (Unit!61945) (OperatorValue!7059 (op!7116 List!43045)) (IdentifierValue!14112 (value!215155 List!43045)) (IdentifierValue!14113 (value!215156 List!43045)) (WhitespaceValue!14113 (value!215157 List!43045)) (True!14112) (False!14112) (Broken!35282 (value!215158 List!43045)) (Broken!35283 (value!215159 List!43045)) (True!14113) (RightBrace!7056) (RightBracket!7056) (Colon!7056) (Null!7056) (Comma!7056) (LeftBracket!7056) (False!14113) (LeftBrace!7056) (ImaginaryLiteralValue!7056 (text!49838 List!43045)) (StringLiteralValue!21168 (value!215160 List!43045)) (EOFValue!7056 (value!215161 List!43045)) (IdentValue!7056 (value!215162 List!43045)) (DelimiterValue!14113 (value!215163 List!43045)) (DedentValue!7056 (value!215164 List!43045)) (NewLineValue!7056 (value!215165 List!43045)) (IntegerValue!21168 (value!215166 (_ BitVec 32)) (text!49839 List!43045)) (IntegerValue!21169 (value!215167 Int) (text!49840 List!43045)) (Times!7056) (Or!7056) (Equal!7056) (Minus!7056) (Broken!35284 (value!215168 List!43045)) (And!7056) (Div!7056) (LessEqual!7056) (Mod!7056) (Concat!18787) (Not!7056) (Plus!7056) (SpaceValue!7056 (value!215169 List!43045)) (IntegerValue!21170 (value!215170 Int) (text!49841 List!43045)) (StringLiteralValue!21169 (text!49842 List!43045)) (FloatLiteralValue!14113 (text!49843 List!43045)) (BytesLiteralValue!7056 (value!215171 List!43045)) (CommentValue!14113 (value!215172 List!43045)) (StringLiteralValue!21170 (value!215173 List!43045)) (ErrorTokenValue!7056 (msg!7117 List!43045)) )
))
(declare-datatypes ((Regex!11731 0))(
  ( (ElementMatch!11731 (c!693539 C!23648)) (Concat!18788 (regOne!23974 Regex!11731) (regTwo!23974 Regex!11731)) (EmptyExpr!11731) (Star!11731 (reg!12060 Regex!11731)) (EmptyLang!11731) (Union!11731 (regOne!23975 Regex!11731) (regTwo!23975 Regex!11731)) )
))
(declare-datatypes ((String!48998 0))(
  ( (String!48999 (value!215174 String)) )
))
(declare-datatypes ((TokenValueInjection!13540 0))(
  ( (TokenValueInjection!13541 (toValue!9330 Int) (toChars!9189 Int)) )
))
(declare-datatypes ((Rule!13452 0))(
  ( (Rule!13453 (regex!6826 Regex!11731) (tag!7686 String!48998) (isSeparator!6826 Bool) (transformation!6826 TokenValueInjection!13540)) )
))
(declare-datatypes ((Token!12790 0))(
  ( (Token!12791 (value!215175 TokenValue!7056) (rule!9870 Rule!13452) (size!32093 Int) (originalCharacters!7426 List!43044)) )
))
(declare-datatypes ((tuple2!42074 0))(
  ( (tuple2!42075 (_1!24171 Token!12790) (_2!24171 List!43044)) )
))
(declare-datatypes ((Option!9240 0))(
  ( (None!9239) (Some!9239 (v!39607 tuple2!42074)) )
))
(declare-fun lt!1419872 () Option!9240)

(declare-datatypes ((LexerInterface!6415 0))(
  ( (LexerInterfaceExt!6412 (__x!26330 Int)) (Lexer!6413) )
))
(declare-fun thiss!21717 () LexerInterface!6415)

(declare-datatypes ((List!43046 0))(
  ( (Nil!42922) (Cons!42922 (h!48342 Rule!13452) (t!332977 List!43046)) )
))
(declare-fun rules!2999 () List!43046)

(declare-fun maxPrefix!3713 (LexerInterface!6415 List!43046 List!43044) Option!9240)

(assert (=> b!4010964 (= res!1630366 (= (maxPrefix!3713 thiss!21717 rules!2999 lt!1419871) lt!1419872))))

(declare-fun lt!1419841 () tuple2!42074)

(assert (=> b!4010964 (= lt!1419872 (Some!9239 lt!1419841))))

(declare-fun token!484 () Token!12790)

(declare-fun suffixResult!105 () List!43044)

(assert (=> b!4010964 (= lt!1419841 (tuple2!42075 token!484 suffixResult!105))))

(declare-fun prefix!494 () List!43044)

(declare-fun suffix!1299 () List!43044)

(declare-fun ++!11228 (List!43044 List!43044) List!43044)

(assert (=> b!4010964 (= lt!1419871 (++!11228 prefix!494 suffix!1299))))

(declare-fun b!4010965 () Bool)

(declare-fun e!2487410 () Bool)

(declare-fun e!2487408 () Bool)

(assert (=> b!4010965 (= e!2487410 e!2487408)))

(declare-fun res!1630380 () Bool)

(assert (=> b!4010965 (=> res!1630380 e!2487408)))

(declare-fun lt!1419858 () List!43044)

(assert (=> b!4010965 (= res!1630380 (not (= lt!1419858 prefix!494)))))

(declare-fun lt!1419860 () List!43044)

(declare-fun lt!1419870 () List!43044)

(assert (=> b!4010965 (= lt!1419858 (++!11228 lt!1419860 lt!1419870))))

(declare-fun getSuffix!2338 (List!43044 List!43044) List!43044)

(assert (=> b!4010965 (= lt!1419870 (getSuffix!2338 prefix!494 lt!1419860))))

(declare-fun isPrefix!3913 (List!43044 List!43044) Bool)

(assert (=> b!4010965 (isPrefix!3913 lt!1419860 prefix!494)))

(declare-datatypes ((Unit!61946 0))(
  ( (Unit!61947) )
))
(declare-fun lt!1419875 () Unit!61946)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!485 (List!43044 List!43044 List!43044) Unit!61946)

(assert (=> b!4010965 (= lt!1419875 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!485 prefix!494 lt!1419860 lt!1419871))))

(declare-fun b!4010966 () Bool)

(declare-fun res!1630362 () Bool)

(declare-fun e!2487394 () Bool)

(assert (=> b!4010966 (=> (not res!1630362) (not e!2487394))))

(declare-fun size!32094 (List!43044) Int)

(assert (=> b!4010966 (= res!1630362 (= (size!32093 token!484) (size!32094 (originalCharacters!7426 token!484))))))

(declare-fun b!4010967 () Bool)

(declare-fun res!1630368 () Bool)

(declare-fun e!2487409 () Bool)

(assert (=> b!4010967 (=> (not res!1630368) (not e!2487409))))

(declare-fun isEmpty!25642 (List!43046) Bool)

(assert (=> b!4010967 (= res!1630368 (not (isEmpty!25642 rules!2999)))))

(declare-fun b!4010969 () Bool)

(declare-fun e!2487412 () Bool)

(declare-fun e!2487400 () Bool)

(declare-fun tp!1220128 () Bool)

(assert (=> b!4010969 (= e!2487412 (and e!2487400 tp!1220128))))

(declare-fun b!4010970 () Bool)

(declare-fun e!2487387 () Bool)

(declare-fun tp_is_empty!20433 () Bool)

(declare-fun tp!1220125 () Bool)

(assert (=> b!4010970 (= e!2487387 (and tp_is_empty!20433 tp!1220125))))

(declare-fun b!4010971 () Bool)

(declare-fun e!2487407 () Bool)

(assert (=> b!4010971 (= e!2487407 true)))

(declare-fun lt!1419864 () List!43044)

(declare-fun newSuffix!27 () List!43044)

(assert (=> b!4010971 (= lt!1419864 (++!11228 newSuffix!27 (getSuffix!2338 suffix!1299 newSuffix!27)))))

(declare-fun b!4010972 () Bool)

(declare-fun e!2487406 () Bool)

(assert (=> b!4010972 (= e!2487406 e!2487407)))

(declare-fun res!1630374 () Bool)

(assert (=> b!4010972 (=> res!1630374 e!2487407)))

(declare-fun lt!1419852 () Option!9240)

(declare-fun lt!1419859 () Option!9240)

(assert (=> b!4010972 (= res!1630374 (not (= lt!1419852 (Some!9239 (v!39607 lt!1419859)))))))

(declare-fun lt!1419853 () List!43044)

(declare-fun newSuffixResult!27 () List!43044)

(assert (=> b!4010972 (isPrefix!3913 lt!1419853 (++!11228 lt!1419853 newSuffixResult!27))))

(declare-fun lt!1419850 () Unit!61946)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2754 (List!43044 List!43044) Unit!61946)

(assert (=> b!4010972 (= lt!1419850 (lemmaConcatTwoListThenFirstIsPrefix!2754 lt!1419853 newSuffixResult!27))))

(assert (=> b!4010972 (isPrefix!3913 lt!1419853 (++!11228 lt!1419853 (_2!24171 (v!39607 lt!1419859))))))

(declare-fun lt!1419839 () Unit!61946)

(assert (=> b!4010972 (= lt!1419839 (lemmaConcatTwoListThenFirstIsPrefix!2754 lt!1419853 (_2!24171 (v!39607 lt!1419859))))))

(declare-fun lt!1419873 () Int)

(declare-fun lt!1419877 () TokenValue!7056)

(assert (=> b!4010972 (= lt!1419852 (Some!9239 (tuple2!42075 (Token!12791 lt!1419877 (rule!9870 (_1!24171 (v!39607 lt!1419859))) lt!1419873 lt!1419853) (_2!24171 (v!39607 lt!1419859)))))))

(declare-fun lt!1419848 () List!43044)

(declare-fun maxPrefixOneRule!2733 (LexerInterface!6415 Rule!13452 List!43044) Option!9240)

(assert (=> b!4010972 (= lt!1419852 (maxPrefixOneRule!2733 thiss!21717 (rule!9870 (_1!24171 (v!39607 lt!1419859))) lt!1419848))))

(assert (=> b!4010972 (= lt!1419873 (size!32094 lt!1419853))))

(declare-fun apply!10023 (TokenValueInjection!13540 BalanceConc!25668) TokenValue!7056)

(declare-fun seqFromList!5051 (List!43044) BalanceConc!25668)

(assert (=> b!4010972 (= lt!1419877 (apply!10023 (transformation!6826 (rule!9870 (_1!24171 (v!39607 lt!1419859)))) (seqFromList!5051 lt!1419853)))))

(declare-fun lt!1419843 () Unit!61946)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1551 (LexerInterface!6415 List!43046 List!43044 List!43044 List!43044 Rule!13452) Unit!61946)

(assert (=> b!4010972 (= lt!1419843 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1551 thiss!21717 rules!2999 lt!1419853 lt!1419848 (_2!24171 (v!39607 lt!1419859)) (rule!9870 (_1!24171 (v!39607 lt!1419859)))))))

(declare-fun list!15952 (BalanceConc!25668) List!43044)

(declare-fun charsOf!4642 (Token!12790) BalanceConc!25668)

(assert (=> b!4010972 (= lt!1419853 (list!15952 (charsOf!4642 (_1!24171 (v!39607 lt!1419859)))))))

(declare-fun lt!1419834 () Unit!61946)

(declare-fun lemmaInv!1041 (TokenValueInjection!13540) Unit!61946)

(assert (=> b!4010972 (= lt!1419834 (lemmaInv!1041 (transformation!6826 (rule!9870 (_1!24171 (v!39607 lt!1419859))))))))

(declare-fun ruleValid!2758 (LexerInterface!6415 Rule!13452) Bool)

(assert (=> b!4010972 (ruleValid!2758 thiss!21717 (rule!9870 (_1!24171 (v!39607 lt!1419859))))))

(declare-fun lt!1419869 () Unit!61946)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1832 (LexerInterface!6415 Rule!13452 List!43046) Unit!61946)

(assert (=> b!4010972 (= lt!1419869 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1832 thiss!21717 (rule!9870 (_1!24171 (v!39607 lt!1419859))) rules!2999))))

(declare-fun lt!1419857 () Unit!61946)

(declare-fun lemmaCharactersSize!1385 (Token!12790) Unit!61946)

(assert (=> b!4010972 (= lt!1419857 (lemmaCharactersSize!1385 token!484))))

(declare-fun lt!1419851 () Unit!61946)

(assert (=> b!4010972 (= lt!1419851 (lemmaCharactersSize!1385 (_1!24171 (v!39607 lt!1419859))))))

(declare-fun b!4010973 () Bool)

(declare-fun lt!1419867 () Int)

(assert (=> b!4010973 (= e!2487394 (and (= (size!32093 token!484) lt!1419867) (= (originalCharacters!7426 token!484) lt!1419860)))))

(declare-fun b!4010974 () Bool)

(declare-fun res!1630375 () Bool)

(assert (=> b!4010974 (=> (not res!1630375) (not e!2487409))))

(assert (=> b!4010974 (= res!1630375 (isPrefix!3913 newSuffix!27 suffix!1299))))

(declare-fun e!2487405 () Bool)

(assert (=> b!4010975 (= e!2487405 (and tp!1220124 tp!1220127))))

(declare-fun e!2487413 () Bool)

(assert (=> b!4010976 (= e!2487413 (and tp!1220132 tp!1220122))))

(declare-fun b!4010977 () Bool)

(declare-fun e!2487402 () Bool)

(assert (=> b!4010977 (= e!2487409 e!2487402)))

(declare-fun res!1630371 () Bool)

(assert (=> b!4010977 (=> (not res!1630371) (not e!2487402))))

(declare-fun lt!1419854 () Int)

(assert (=> b!4010977 (= res!1630371 (>= lt!1419854 lt!1419867))))

(assert (=> b!4010977 (= lt!1419867 (size!32094 lt!1419860))))

(assert (=> b!4010977 (= lt!1419854 (size!32094 prefix!494))))

(assert (=> b!4010977 (= lt!1419860 (list!15952 (charsOf!4642 token!484)))))

(declare-fun e!2487393 () Bool)

(declare-fun e!2487403 () Bool)

(declare-fun tp!1220126 () Bool)

(declare-fun b!4010978 () Bool)

(declare-fun inv!21 (TokenValue!7056) Bool)

(assert (=> b!4010978 (= e!2487403 (and (inv!21 (value!215175 token!484)) e!2487393 tp!1220126))))

(declare-fun b!4010979 () Bool)

(assert (=> b!4010979 (= e!2487402 e!2487390)))

(declare-fun res!1630379 () Bool)

(assert (=> b!4010979 (=> (not res!1630379) (not e!2487390))))

(declare-fun lt!1419874 () List!43044)

(assert (=> b!4010979 (= res!1630379 (= lt!1419874 lt!1419848))))

(assert (=> b!4010979 (= lt!1419848 (++!11228 prefix!494 newSuffix!27))))

(assert (=> b!4010979 (= lt!1419874 (++!11228 lt!1419860 newSuffixResult!27))))

(declare-fun b!4010980 () Bool)

(declare-fun res!1630367 () Bool)

(assert (=> b!4010980 (=> (not res!1630367) (not e!2487409))))

(assert (=> b!4010980 (= res!1630367 (>= (size!32094 suffix!1299) (size!32094 newSuffix!27)))))

(declare-fun b!4010981 () Bool)

(declare-fun e!2487399 () Bool)

(declare-fun tp!1220131 () Bool)

(assert (=> b!4010981 (= e!2487399 (and tp_is_empty!20433 tp!1220131))))

(declare-fun b!4010982 () Bool)

(declare-fun e!2487411 () Bool)

(declare-fun tp!1220130 () Bool)

(assert (=> b!4010982 (= e!2487411 (and tp_is_empty!20433 tp!1220130))))

(declare-fun b!4010983 () Bool)

(declare-fun e!2487404 () Bool)

(assert (=> b!4010983 (= e!2487404 e!2487406)))

(declare-fun res!1630378 () Bool)

(assert (=> b!4010983 (=> res!1630378 e!2487406)))

(get-info :version)

(assert (=> b!4010983 (= res!1630378 (not ((_ is Some!9239) lt!1419859)))))

(assert (=> b!4010983 (= lt!1419859 (maxPrefix!3713 thiss!21717 rules!2999 lt!1419848))))

(declare-fun lt!1419832 () List!43044)

(declare-fun lt!1419868 () Token!12790)

(assert (=> b!4010983 (and (= suffixResult!105 lt!1419832) (= lt!1419841 (tuple2!42075 lt!1419868 lt!1419832)))))

(declare-fun lt!1419840 () Unit!61946)

(declare-fun lemmaSamePrefixThenSameSuffix!2084 (List!43044 List!43044 List!43044 List!43044 List!43044) Unit!61946)

(assert (=> b!4010983 (= lt!1419840 (lemmaSamePrefixThenSameSuffix!2084 lt!1419860 suffixResult!105 lt!1419860 lt!1419832 lt!1419871))))

(declare-fun lt!1419846 () List!43044)

(assert (=> b!4010983 (isPrefix!3913 lt!1419860 lt!1419846)))

(declare-fun lt!1419847 () Unit!61946)

(assert (=> b!4010983 (= lt!1419847 (lemmaConcatTwoListThenFirstIsPrefix!2754 lt!1419860 lt!1419832))))

(declare-fun b!4010984 () Bool)

(declare-fun tp!1220121 () Bool)

(declare-fun inv!57328 (String!48998) Bool)

(declare-fun inv!57331 (TokenValueInjection!13540) Bool)

(assert (=> b!4010984 (= e!2487393 (and tp!1220121 (inv!57328 (tag!7686 (rule!9870 token!484))) (inv!57331 (transformation!6826 (rule!9870 token!484))) e!2487405))))

(declare-fun b!4010968 () Bool)

(declare-fun e!2487392 () Bool)

(assert (=> b!4010968 (= e!2487408 e!2487392)))

(declare-fun res!1630363 () Bool)

(assert (=> b!4010968 (=> res!1630363 e!2487392)))

(declare-fun lt!1419835 () List!43044)

(declare-fun lt!1419838 () List!43044)

(assert (=> b!4010968 (= res!1630363 (or (not (= lt!1419871 lt!1419835)) (not (= lt!1419871 lt!1419838))))))

(assert (=> b!4010968 (= lt!1419835 lt!1419838)))

(declare-fun lt!1419836 () List!43044)

(assert (=> b!4010968 (= lt!1419838 (++!11228 lt!1419860 lt!1419836))))

(assert (=> b!4010968 (= lt!1419835 (++!11228 lt!1419858 suffix!1299))))

(assert (=> b!4010968 (= lt!1419836 (++!11228 lt!1419870 suffix!1299))))

(declare-fun lt!1419849 () Unit!61946)

(declare-fun lemmaConcatAssociativity!2538 (List!43044 List!43044 List!43044) Unit!61946)

(assert (=> b!4010968 (= lt!1419849 (lemmaConcatAssociativity!2538 lt!1419860 lt!1419870 suffix!1299))))

(declare-fun res!1630369 () Bool)

(assert (=> start!377780 (=> (not res!1630369) (not e!2487409))))

(assert (=> start!377780 (= res!1630369 ((_ is Lexer!6413) thiss!21717))))

(assert (=> start!377780 e!2487409))

(declare-fun e!2487389 () Bool)

(assert (=> start!377780 e!2487389))

(declare-fun inv!57332 (Token!12790) Bool)

(assert (=> start!377780 (and (inv!57332 token!484) e!2487403)))

(declare-fun e!2487395 () Bool)

(assert (=> start!377780 e!2487395))

(assert (=> start!377780 e!2487387))

(assert (=> start!377780 e!2487411))

(assert (=> start!377780 true))

(assert (=> start!377780 e!2487412))

(assert (=> start!377780 e!2487399))

(declare-fun b!4010985 () Bool)

(declare-fun e!2487401 () Bool)

(assert (=> b!4010985 (= e!2487401 e!2487410)))

(declare-fun res!1630364 () Bool)

(assert (=> b!4010985 (=> res!1630364 e!2487410)))

(assert (=> b!4010985 (= res!1630364 (not (isPrefix!3913 lt!1419860 lt!1419871)))))

(assert (=> b!4010985 (isPrefix!3913 prefix!494 lt!1419871)))

(declare-fun lt!1419865 () Unit!61946)

(assert (=> b!4010985 (= lt!1419865 (lemmaConcatTwoListThenFirstIsPrefix!2754 prefix!494 suffix!1299))))

(declare-fun lt!1419842 () List!43044)

(assert (=> b!4010985 (isPrefix!3913 lt!1419860 lt!1419842)))

(declare-fun lt!1419862 () Unit!61946)

(assert (=> b!4010985 (= lt!1419862 (lemmaConcatTwoListThenFirstIsPrefix!2754 lt!1419860 suffixResult!105))))

(declare-fun b!4010986 () Bool)

(declare-fun e!2487396 () Bool)

(declare-fun e!2487397 () Bool)

(assert (=> b!4010986 (= e!2487396 e!2487397)))

(declare-fun res!1630365 () Bool)

(assert (=> b!4010986 (=> res!1630365 e!2487397)))

(declare-fun matchR!5692 (Regex!11731 List!43044) Bool)

(assert (=> b!4010986 (= res!1630365 (not (matchR!5692 (regex!6826 (rule!9870 token!484)) lt!1419860)))))

(assert (=> b!4010986 (isPrefix!3913 lt!1419860 lt!1419848)))

(declare-fun lt!1419863 () Unit!61946)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!726 (List!43044 List!43044 List!43044) Unit!61946)

(assert (=> b!4010986 (= lt!1419863 (lemmaPrefixStaysPrefixWhenAddingToSuffix!726 lt!1419860 prefix!494 newSuffix!27))))

(declare-fun lt!1419856 () Unit!61946)

(assert (=> b!4010986 (= lt!1419856 (lemmaPrefixStaysPrefixWhenAddingToSuffix!726 lt!1419860 prefix!494 suffix!1299))))

(declare-fun b!4010987 () Bool)

(declare-fun tp!1220123 () Bool)

(assert (=> b!4010987 (= e!2487389 (and tp_is_empty!20433 tp!1220123))))

(declare-fun b!4010988 () Bool)

(assert (=> b!4010988 (= e!2487397 e!2487404)))

(declare-fun res!1630381 () Bool)

(assert (=> b!4010988 (=> res!1630381 e!2487404)))

(assert (=> b!4010988 (= res!1630381 (not (= lt!1419846 lt!1419871)))))

(assert (=> b!4010988 (= lt!1419846 (++!11228 lt!1419860 lt!1419832))))

(assert (=> b!4010988 (= lt!1419832 (getSuffix!2338 lt!1419871 lt!1419860))))

(assert (=> b!4010988 e!2487394))

(declare-fun res!1630372 () Bool)

(assert (=> b!4010988 (=> (not res!1630372) (not e!2487394))))

(assert (=> b!4010988 (= res!1630372 (isPrefix!3913 lt!1419871 lt!1419871))))

(declare-fun lt!1419837 () Unit!61946)

(declare-fun lemmaIsPrefixRefl!2489 (List!43044 List!43044) Unit!61946)

(assert (=> b!4010988 (= lt!1419837 (lemmaIsPrefixRefl!2489 lt!1419871 lt!1419871))))

(declare-fun tp!1220120 () Bool)

(declare-fun b!4010989 () Bool)

(assert (=> b!4010989 (= e!2487400 (and tp!1220120 (inv!57328 (tag!7686 (h!48342 rules!2999))) (inv!57331 (transformation!6826 (h!48342 rules!2999))) e!2487413))))

(declare-fun b!4010990 () Bool)

(declare-fun res!1630376 () Bool)

(assert (=> b!4010990 (=> (not res!1630376) (not e!2487394))))

(declare-fun lt!1419855 () TokenValue!7056)

(assert (=> b!4010990 (= res!1630376 (= (value!215175 token!484) lt!1419855))))

(declare-fun b!4010991 () Bool)

(declare-fun tp!1220129 () Bool)

(assert (=> b!4010991 (= e!2487395 (and tp_is_empty!20433 tp!1220129))))

(declare-fun b!4010992 () Bool)

(assert (=> b!4010992 (= e!2487398 (not e!2487401))))

(declare-fun res!1630377 () Bool)

(assert (=> b!4010992 (=> res!1630377 e!2487401)))

(assert (=> b!4010992 (= res!1630377 (not (= lt!1419842 lt!1419871)))))

(assert (=> b!4010992 (= lt!1419842 (++!11228 lt!1419860 suffixResult!105))))

(declare-fun lt!1419845 () Unit!61946)

(assert (=> b!4010992 (= lt!1419845 (lemmaInv!1041 (transformation!6826 (rule!9870 token!484))))))

(assert (=> b!4010992 (ruleValid!2758 thiss!21717 (rule!9870 token!484))))

(declare-fun lt!1419833 () Unit!61946)

(assert (=> b!4010992 (= lt!1419833 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1832 thiss!21717 (rule!9870 token!484) rules!2999))))

(declare-fun b!4010993 () Bool)

(declare-fun res!1630373 () Bool)

(assert (=> b!4010993 (=> (not res!1630373) (not e!2487409))))

(declare-fun rulesInvariant!5758 (LexerInterface!6415 List!43046) Bool)

(assert (=> b!4010993 (= res!1630373 (rulesInvariant!5758 thiss!21717 rules!2999))))

(declare-fun b!4010994 () Bool)

(assert (=> b!4010994 (= e!2487392 e!2487396)))

(declare-fun res!1630370 () Bool)

(assert (=> b!4010994 (=> res!1630370 e!2487396)))

(declare-fun lt!1419866 () Option!9240)

(assert (=> b!4010994 (= res!1630370 (not (= lt!1419866 lt!1419872)))))

(assert (=> b!4010994 (= lt!1419866 (Some!9239 (tuple2!42075 lt!1419868 suffixResult!105)))))

(assert (=> b!4010994 (= lt!1419866 (maxPrefixOneRule!2733 thiss!21717 (rule!9870 token!484) lt!1419871))))

(assert (=> b!4010994 (= lt!1419868 (Token!12791 lt!1419855 (rule!9870 token!484) lt!1419867 lt!1419860))))

(assert (=> b!4010994 (= lt!1419855 (apply!10023 (transformation!6826 (rule!9870 token!484)) (seqFromList!5051 lt!1419860)))))

(declare-fun lt!1419861 () Unit!61946)

(assert (=> b!4010994 (= lt!1419861 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1551 thiss!21717 rules!2999 lt!1419860 lt!1419871 suffixResult!105 (rule!9870 token!484)))))

(assert (=> b!4010994 (= lt!1419836 suffixResult!105)))

(declare-fun lt!1419844 () Unit!61946)

(assert (=> b!4010994 (= lt!1419844 (lemmaSamePrefixThenSameSuffix!2084 lt!1419860 lt!1419836 lt!1419860 suffixResult!105 lt!1419871))))

(assert (=> b!4010994 (isPrefix!3913 lt!1419860 lt!1419838)))

(declare-fun lt!1419876 () Unit!61946)

(assert (=> b!4010994 (= lt!1419876 (lemmaConcatTwoListThenFirstIsPrefix!2754 lt!1419860 lt!1419836))))

(assert (= (and start!377780 res!1630369) b!4010967))

(assert (= (and b!4010967 res!1630368) b!4010993))

(assert (= (and b!4010993 res!1630373) b!4010980))

(assert (= (and b!4010980 res!1630367) b!4010974))

(assert (= (and b!4010974 res!1630375) b!4010977))

(assert (= (and b!4010977 res!1630371) b!4010979))

(assert (= (and b!4010979 res!1630379) b!4010964))

(assert (= (and b!4010964 res!1630366) b!4010992))

(assert (= (and b!4010992 (not res!1630377)) b!4010985))

(assert (= (and b!4010985 (not res!1630364)) b!4010965))

(assert (= (and b!4010965 (not res!1630380)) b!4010968))

(assert (= (and b!4010968 (not res!1630363)) b!4010994))

(assert (= (and b!4010994 (not res!1630370)) b!4010986))

(assert (= (and b!4010986 (not res!1630365)) b!4010988))

(assert (= (and b!4010988 res!1630372) b!4010990))

(assert (= (and b!4010990 res!1630376) b!4010966))

(assert (= (and b!4010966 res!1630362) b!4010973))

(assert (= (and b!4010988 (not res!1630381)) b!4010983))

(assert (= (and b!4010983 (not res!1630378)) b!4010972))

(assert (= (and b!4010972 (not res!1630374)) b!4010971))

(assert (= (and start!377780 ((_ is Cons!42920) prefix!494)) b!4010987))

(assert (= b!4010984 b!4010975))

(assert (= b!4010978 b!4010984))

(assert (= start!377780 b!4010978))

(assert (= (and start!377780 ((_ is Cons!42920) suffixResult!105)) b!4010991))

(assert (= (and start!377780 ((_ is Cons!42920) suffix!1299)) b!4010970))

(assert (= (and start!377780 ((_ is Cons!42920) newSuffix!27)) b!4010982))

(assert (= b!4010989 b!4010976))

(assert (= b!4010969 b!4010989))

(assert (= (and start!377780 ((_ is Cons!42922) rules!2999)) b!4010969))

(assert (= (and start!377780 ((_ is Cons!42920) newSuffixResult!27)) b!4010981))

(declare-fun m!4596109 () Bool)

(assert (=> b!4010971 m!4596109))

(assert (=> b!4010971 m!4596109))

(declare-fun m!4596111 () Bool)

(assert (=> b!4010971 m!4596111))

(declare-fun m!4596113 () Bool)

(assert (=> b!4010984 m!4596113))

(declare-fun m!4596115 () Bool)

(assert (=> b!4010984 m!4596115))

(declare-fun m!4596117 () Bool)

(assert (=> b!4010980 m!4596117))

(declare-fun m!4596119 () Bool)

(assert (=> b!4010980 m!4596119))

(declare-fun m!4596121 () Bool)

(assert (=> b!4010986 m!4596121))

(declare-fun m!4596123 () Bool)

(assert (=> b!4010986 m!4596123))

(declare-fun m!4596125 () Bool)

(assert (=> b!4010986 m!4596125))

(declare-fun m!4596127 () Bool)

(assert (=> b!4010986 m!4596127))

(declare-fun m!4596129 () Bool)

(assert (=> b!4010985 m!4596129))

(declare-fun m!4596131 () Bool)

(assert (=> b!4010985 m!4596131))

(declare-fun m!4596133 () Bool)

(assert (=> b!4010985 m!4596133))

(declare-fun m!4596135 () Bool)

(assert (=> b!4010985 m!4596135))

(declare-fun m!4596137 () Bool)

(assert (=> b!4010985 m!4596137))

(declare-fun m!4596139 () Bool)

(assert (=> b!4010994 m!4596139))

(declare-fun m!4596141 () Bool)

(assert (=> b!4010994 m!4596141))

(declare-fun m!4596143 () Bool)

(assert (=> b!4010994 m!4596143))

(declare-fun m!4596145 () Bool)

(assert (=> b!4010994 m!4596145))

(declare-fun m!4596147 () Bool)

(assert (=> b!4010994 m!4596147))

(assert (=> b!4010994 m!4596147))

(declare-fun m!4596149 () Bool)

(assert (=> b!4010994 m!4596149))

(declare-fun m!4596151 () Bool)

(assert (=> b!4010994 m!4596151))

(declare-fun m!4596153 () Bool)

(assert (=> b!4010992 m!4596153))

(declare-fun m!4596155 () Bool)

(assert (=> b!4010992 m!4596155))

(declare-fun m!4596157 () Bool)

(assert (=> b!4010992 m!4596157))

(declare-fun m!4596159 () Bool)

(assert (=> b!4010992 m!4596159))

(declare-fun m!4596161 () Bool)

(assert (=> b!4010965 m!4596161))

(declare-fun m!4596163 () Bool)

(assert (=> b!4010965 m!4596163))

(declare-fun m!4596165 () Bool)

(assert (=> b!4010965 m!4596165))

(declare-fun m!4596167 () Bool)

(assert (=> b!4010965 m!4596167))

(declare-fun m!4596169 () Bool)

(assert (=> b!4010967 m!4596169))

(declare-fun m!4596171 () Bool)

(assert (=> b!4010978 m!4596171))

(declare-fun m!4596173 () Bool)

(assert (=> b!4010977 m!4596173))

(declare-fun m!4596175 () Bool)

(assert (=> b!4010977 m!4596175))

(declare-fun m!4596177 () Bool)

(assert (=> b!4010977 m!4596177))

(assert (=> b!4010977 m!4596177))

(declare-fun m!4596179 () Bool)

(assert (=> b!4010977 m!4596179))

(declare-fun m!4596181 () Bool)

(assert (=> b!4010979 m!4596181))

(declare-fun m!4596183 () Bool)

(assert (=> b!4010979 m!4596183))

(declare-fun m!4596185 () Bool)

(assert (=> b!4010988 m!4596185))

(declare-fun m!4596187 () Bool)

(assert (=> b!4010988 m!4596187))

(declare-fun m!4596189 () Bool)

(assert (=> b!4010988 m!4596189))

(declare-fun m!4596191 () Bool)

(assert (=> b!4010988 m!4596191))

(declare-fun m!4596193 () Bool)

(assert (=> b!4010968 m!4596193))

(declare-fun m!4596195 () Bool)

(assert (=> b!4010968 m!4596195))

(declare-fun m!4596197 () Bool)

(assert (=> b!4010968 m!4596197))

(declare-fun m!4596199 () Bool)

(assert (=> b!4010968 m!4596199))

(declare-fun m!4596201 () Bool)

(assert (=> b!4010989 m!4596201))

(declare-fun m!4596203 () Bool)

(assert (=> b!4010989 m!4596203))

(declare-fun m!4596205 () Bool)

(assert (=> b!4010983 m!4596205))

(declare-fun m!4596207 () Bool)

(assert (=> b!4010983 m!4596207))

(declare-fun m!4596209 () Bool)

(assert (=> b!4010983 m!4596209))

(declare-fun m!4596211 () Bool)

(assert (=> b!4010983 m!4596211))

(declare-fun m!4596213 () Bool)

(assert (=> b!4010964 m!4596213))

(declare-fun m!4596215 () Bool)

(assert (=> b!4010964 m!4596215))

(declare-fun m!4596217 () Bool)

(assert (=> b!4010966 m!4596217))

(declare-fun m!4596219 () Bool)

(assert (=> b!4010972 m!4596219))

(declare-fun m!4596221 () Bool)

(assert (=> b!4010972 m!4596221))

(declare-fun m!4596223 () Bool)

(assert (=> b!4010972 m!4596223))

(declare-fun m!4596225 () Bool)

(assert (=> b!4010972 m!4596225))

(declare-fun m!4596227 () Bool)

(assert (=> b!4010972 m!4596227))

(declare-fun m!4596229 () Bool)

(assert (=> b!4010972 m!4596229))

(declare-fun m!4596231 () Bool)

(assert (=> b!4010972 m!4596231))

(declare-fun m!4596233 () Bool)

(assert (=> b!4010972 m!4596233))

(declare-fun m!4596235 () Bool)

(assert (=> b!4010972 m!4596235))

(declare-fun m!4596237 () Bool)

(assert (=> b!4010972 m!4596237))

(declare-fun m!4596239 () Bool)

(assert (=> b!4010972 m!4596239))

(declare-fun m!4596241 () Bool)

(assert (=> b!4010972 m!4596241))

(assert (=> b!4010972 m!4596219))

(declare-fun m!4596243 () Bool)

(assert (=> b!4010972 m!4596243))

(declare-fun m!4596245 () Bool)

(assert (=> b!4010972 m!4596245))

(declare-fun m!4596247 () Bool)

(assert (=> b!4010972 m!4596247))

(assert (=> b!4010972 m!4596223))

(assert (=> b!4010972 m!4596231))

(declare-fun m!4596249 () Bool)

(assert (=> b!4010972 m!4596249))

(assert (=> b!4010972 m!4596241))

(declare-fun m!4596251 () Bool)

(assert (=> b!4010972 m!4596251))

(declare-fun m!4596253 () Bool)

(assert (=> b!4010972 m!4596253))

(declare-fun m!4596255 () Bool)

(assert (=> start!377780 m!4596255))

(declare-fun m!4596257 () Bool)

(assert (=> b!4010974 m!4596257))

(declare-fun m!4596259 () Bool)

(assert (=> b!4010993 m!4596259))

(check-sat b_and!308125 (not b!4010981) (not b!4010965) (not start!377780) (not b!4010980) (not b_next!112251) tp_is_empty!20433 (not b!4010992) (not b!4010985) (not b!4010978) (not b_next!112249) (not b_next!112253) (not b!4010974) b_and!308123 (not b!4010986) (not b!4010977) b_and!308121 (not b!4010993) (not b!4010989) (not b!4010966) (not b!4010971) (not b!4010984) (not b!4010994) (not b!4010991) (not b!4010983) (not b!4010982) (not b!4010987) (not b!4010979) (not b_next!112255) (not b!4010968) b_and!308119 (not b!4010967) (not b!4010964) (not b!4010970) (not b!4010972) (not b!4010969) (not b!4010988))
(check-sat b_and!308125 b_and!308121 (not b_next!112251) (not b_next!112255) b_and!308119 (not b_next!112249) (not b_next!112253) b_and!308123)

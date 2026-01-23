; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!375648 () Bool)

(assert start!375648)

(declare-fun b!3991387 () Bool)

(declare-fun b_free!110865 () Bool)

(declare-fun b_next!111569 () Bool)

(assert (=> b!3991387 (= b_free!110865 (not b_next!111569))))

(declare-fun tp!1215720 () Bool)

(declare-fun b_and!306655 () Bool)

(assert (=> b!3991387 (= tp!1215720 b_and!306655)))

(declare-fun b_free!110867 () Bool)

(declare-fun b_next!111571 () Bool)

(assert (=> b!3991387 (= b_free!110867 (not b_next!111571))))

(declare-fun tp!1215711 () Bool)

(declare-fun b_and!306657 () Bool)

(assert (=> b!3991387 (= tp!1215711 b_and!306657)))

(declare-fun b!3991425 () Bool)

(declare-fun b_free!110869 () Bool)

(declare-fun b_next!111573 () Bool)

(assert (=> b!3991425 (= b_free!110869 (not b_next!111573))))

(declare-fun tp!1215713 () Bool)

(declare-fun b_and!306659 () Bool)

(assert (=> b!3991425 (= tp!1215713 b_and!306659)))

(declare-fun b_free!110871 () Bool)

(declare-fun b_next!111575 () Bool)

(assert (=> b!3991425 (= b_free!110871 (not b_next!111575))))

(declare-fun tp!1215717 () Bool)

(declare-fun b_and!306661 () Bool)

(assert (=> b!3991425 (= tp!1215717 b_and!306661)))

(declare-fun b!3991384 () Bool)

(declare-fun e!2474319 () Bool)

(declare-fun e!2474289 () Bool)

(assert (=> b!3991384 (= e!2474319 (not e!2474289))))

(declare-fun res!1619939 () Bool)

(assert (=> b!3991384 (=> res!1619939 e!2474289)))

(declare-datatypes ((C!23512 0))(
  ( (C!23513 (val!13850 Int)) )
))
(declare-datatypes ((List!42814 0))(
  ( (Nil!42690) (Cons!42690 (h!48110 C!23512) (t!331805 List!42814)) )
))
(declare-fun lt!1407261 () List!42814)

(declare-fun lt!1407267 () List!42814)

(assert (=> b!3991384 (= res!1619939 (not (= lt!1407261 lt!1407267)))))

(declare-fun lt!1407245 () List!42814)

(declare-fun suffixResult!105 () List!42814)

(declare-fun ++!11160 (List!42814 List!42814) List!42814)

(assert (=> b!3991384 (= lt!1407261 (++!11160 lt!1407245 suffixResult!105))))

(declare-datatypes ((Unit!61470 0))(
  ( (Unit!61471) )
))
(declare-fun lt!1407268 () Unit!61470)

(declare-datatypes ((IArray!25943 0))(
  ( (IArray!25944 (innerList!13029 List!42814)) )
))
(declare-datatypes ((Conc!12969 0))(
  ( (Node!12969 (left!32254 Conc!12969) (right!32584 Conc!12969) (csize!26168 Int) (cheight!13180 Int)) (Leaf!20055 (xs!16275 IArray!25943) (csize!26169 Int)) (Empty!12969) )
))
(declare-datatypes ((BalanceConc!25532 0))(
  ( (BalanceConc!25533 (c!690774 Conc!12969)) )
))
(declare-datatypes ((List!42815 0))(
  ( (Nil!42691) (Cons!42691 (h!48111 (_ BitVec 16)) (t!331806 List!42815)) )
))
(declare-datatypes ((TokenValue!6988 0))(
  ( (FloatLiteralValue!13976 (text!49361 List!42815)) (TokenValueExt!6987 (__x!26193 Int)) (Broken!34940 (value!213211 List!42815)) (Object!7111) (End!6988) (Def!6988) (Underscore!6988) (Match!6988) (Else!6988) (Error!6988) (Case!6988) (If!6988) (Extends!6988) (Abstract!6988) (Class!6988) (Val!6988) (DelimiterValue!13976 (del!7048 List!42815)) (KeywordValue!6994 (value!213212 List!42815)) (CommentValue!13976 (value!213213 List!42815)) (WhitespaceValue!13976 (value!213214 List!42815)) (IndentationValue!6988 (value!213215 List!42815)) (String!48657) (Int32!6988) (Broken!34941 (value!213216 List!42815)) (Boolean!6989) (Unit!61472) (OperatorValue!6991 (op!7048 List!42815)) (IdentifierValue!13976 (value!213217 List!42815)) (IdentifierValue!13977 (value!213218 List!42815)) (WhitespaceValue!13977 (value!213219 List!42815)) (True!13976) (False!13976) (Broken!34942 (value!213220 List!42815)) (Broken!34943 (value!213221 List!42815)) (True!13977) (RightBrace!6988) (RightBracket!6988) (Colon!6988) (Null!6988) (Comma!6988) (LeftBracket!6988) (False!13977) (LeftBrace!6988) (ImaginaryLiteralValue!6988 (text!49362 List!42815)) (StringLiteralValue!20964 (value!213222 List!42815)) (EOFValue!6988 (value!213223 List!42815)) (IdentValue!6988 (value!213224 List!42815)) (DelimiterValue!13977 (value!213225 List!42815)) (DedentValue!6988 (value!213226 List!42815)) (NewLineValue!6988 (value!213227 List!42815)) (IntegerValue!20964 (value!213228 (_ BitVec 32)) (text!49363 List!42815)) (IntegerValue!20965 (value!213229 Int) (text!49364 List!42815)) (Times!6988) (Or!6988) (Equal!6988) (Minus!6988) (Broken!34944 (value!213230 List!42815)) (And!6988) (Div!6988) (LessEqual!6988) (Mod!6988) (Concat!18651) (Not!6988) (Plus!6988) (SpaceValue!6988 (value!213231 List!42815)) (IntegerValue!20966 (value!213232 Int) (text!49365 List!42815)) (StringLiteralValue!20965 (text!49366 List!42815)) (FloatLiteralValue!13977 (text!49367 List!42815)) (BytesLiteralValue!6988 (value!213233 List!42815)) (CommentValue!13977 (value!213234 List!42815)) (StringLiteralValue!20966 (value!213235 List!42815)) (ErrorTokenValue!6988 (msg!7049 List!42815)) )
))
(declare-datatypes ((Regex!11663 0))(
  ( (ElementMatch!11663 (c!690775 C!23512)) (Concat!18652 (regOne!23838 Regex!11663) (regTwo!23838 Regex!11663)) (EmptyExpr!11663) (Star!11663 (reg!11992 Regex!11663)) (EmptyLang!11663) (Union!11663 (regOne!23839 Regex!11663) (regTwo!23839 Regex!11663)) )
))
(declare-datatypes ((String!48658 0))(
  ( (String!48659 (value!213236 String)) )
))
(declare-datatypes ((TokenValueInjection!13404 0))(
  ( (TokenValueInjection!13405 (toValue!9246 Int) (toChars!9105 Int)) )
))
(declare-datatypes ((Rule!13316 0))(
  ( (Rule!13317 (regex!6758 Regex!11663) (tag!7618 String!48658) (isSeparator!6758 Bool) (transformation!6758 TokenValueInjection!13404)) )
))
(declare-datatypes ((Token!12654 0))(
  ( (Token!12655 (value!213237 TokenValue!6988) (rule!9778 Rule!13316) (size!31928 Int) (originalCharacters!7358 List!42814)) )
))
(declare-fun token!484 () Token!12654)

(declare-fun lemmaInv!973 (TokenValueInjection!13404) Unit!61470)

(assert (=> b!3991384 (= lt!1407268 (lemmaInv!973 (transformation!6758 (rule!9778 token!484))))))

(declare-datatypes ((LexerInterface!6347 0))(
  ( (LexerInterfaceExt!6344 (__x!26194 Int)) (Lexer!6345) )
))
(declare-fun thiss!21717 () LexerInterface!6347)

(declare-fun ruleValid!2690 (LexerInterface!6347 Rule!13316) Bool)

(assert (=> b!3991384 (ruleValid!2690 thiss!21717 (rule!9778 token!484))))

(declare-datatypes ((List!42816 0))(
  ( (Nil!42692) (Cons!42692 (h!48112 Rule!13316) (t!331807 List!42816)) )
))
(declare-fun rules!2999 () List!42816)

(declare-fun lt!1407290 () Unit!61470)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1764 (LexerInterface!6347 Rule!13316 List!42816) Unit!61470)

(assert (=> b!3991384 (= lt!1407290 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1764 thiss!21717 (rule!9778 token!484) rules!2999))))

(declare-fun b!3991385 () Bool)

(declare-fun e!2474294 () Unit!61470)

(declare-fun Unit!61473 () Unit!61470)

(assert (=> b!3991385 (= e!2474294 Unit!61473)))

(declare-fun b!3991386 () Bool)

(declare-fun e!2474284 () Bool)

(declare-fun tp_is_empty!20297 () Bool)

(declare-fun tp!1215710 () Bool)

(assert (=> b!3991386 (= e!2474284 (and tp_is_empty!20297 tp!1215710))))

(declare-fun e!2474305 () Bool)

(assert (=> b!3991387 (= e!2474305 (and tp!1215720 tp!1215711))))

(declare-fun b!3991388 () Bool)

(declare-fun e!2474315 () Unit!61470)

(declare-fun Unit!61474 () Unit!61470)

(assert (=> b!3991388 (= e!2474315 Unit!61474)))

(declare-fun b!3991389 () Bool)

(declare-fun e!2474295 () Bool)

(declare-fun e!2474298 () Bool)

(assert (=> b!3991389 (= e!2474295 e!2474298)))

(declare-fun res!1619919 () Bool)

(assert (=> b!3991389 (=> res!1619919 e!2474298)))

(declare-datatypes ((tuple2!41892 0))(
  ( (tuple2!41893 (_1!24080 Token!12654) (_2!24080 List!42814)) )
))
(declare-datatypes ((Option!9172 0))(
  ( (None!9171) (Some!9171 (v!39527 tuple2!41892)) )
))
(declare-fun lt!1407242 () Option!9172)

(declare-fun getIndex!528 (List!42816 Rule!13316) Int)

(assert (=> b!3991389 (= res!1619919 (>= (getIndex!528 rules!2999 (rule!9778 (_1!24080 (v!39527 lt!1407242)))) (getIndex!528 rules!2999 (rule!9778 token!484))))))

(declare-fun newSuffixResult!27 () List!42814)

(assert (=> b!3991389 (= (_2!24080 (v!39527 lt!1407242)) newSuffixResult!27)))

(declare-fun lt!1407250 () List!42814)

(declare-fun lt!1407256 () Unit!61470)

(declare-fun lt!1407296 () List!42814)

(declare-fun lemmaSamePrefixThenSameSuffix!2032 (List!42814 List!42814 List!42814 List!42814 List!42814) Unit!61470)

(assert (=> b!3991389 (= lt!1407256 (lemmaSamePrefixThenSameSuffix!2032 lt!1407296 (_2!24080 (v!39527 lt!1407242)) lt!1407245 newSuffixResult!27 lt!1407250))))

(assert (=> b!3991389 (= lt!1407296 lt!1407245)))

(declare-fun lt!1407272 () Unit!61470)

(declare-fun lemmaIsPrefixSameLengthThenSameList!867 (List!42814 List!42814 List!42814) Unit!61470)

(assert (=> b!3991389 (= lt!1407272 (lemmaIsPrefixSameLengthThenSameList!867 lt!1407296 lt!1407245 lt!1407250))))

(declare-fun b!3991390 () Bool)

(declare-fun res!1619926 () Bool)

(declare-fun e!2474316 () Bool)

(assert (=> b!3991390 (=> (not res!1619926) (not e!2474316))))

(declare-fun lt!1407301 () TokenValue!6988)

(assert (=> b!3991390 (= res!1619926 (= (value!213237 token!484) lt!1407301))))

(declare-fun b!3991391 () Bool)

(declare-fun e!2474287 () Bool)

(declare-fun tp!1215714 () Bool)

(assert (=> b!3991391 (= e!2474287 (and tp_is_empty!20297 tp!1215714))))

(declare-fun tp!1215721 () Bool)

(declare-fun e!2474285 () Bool)

(declare-fun b!3991392 () Bool)

(declare-fun e!2474314 () Bool)

(declare-fun inv!57017 (String!48658) Bool)

(declare-fun inv!57020 (TokenValueInjection!13404) Bool)

(assert (=> b!3991392 (= e!2474285 (and tp!1215721 (inv!57017 (tag!7618 (h!48112 rules!2999))) (inv!57020 (transformation!6758 (h!48112 rules!2999))) e!2474314))))

(declare-fun b!3991393 () Bool)

(declare-fun Unit!61475 () Unit!61470)

(assert (=> b!3991393 (= e!2474315 Unit!61475)))

(declare-fun lt!1407279 () Unit!61470)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!412 (LexerInterface!6347 List!42816 Rule!13316 List!42814 List!42814 List!42814 Rule!13316) Unit!61470)

(assert (=> b!3991393 (= lt!1407279 (lemmaMaxPrefixOutputsMaxPrefix!412 thiss!21717 rules!2999 (rule!9778 (_1!24080 (v!39527 lt!1407242))) lt!1407296 lt!1407250 lt!1407245 (rule!9778 token!484)))))

(assert (=> b!3991393 false))

(declare-fun res!1619927 () Bool)

(declare-fun e!2474292 () Bool)

(assert (=> start!375648 (=> (not res!1619927) (not e!2474292))))

(get-info :version)

(assert (=> start!375648 (= res!1619927 ((_ is Lexer!6345) thiss!21717))))

(assert (=> start!375648 e!2474292))

(assert (=> start!375648 e!2474284))

(declare-fun e!2474290 () Bool)

(declare-fun inv!57021 (Token!12654) Bool)

(assert (=> start!375648 (and (inv!57021 token!484) e!2474290)))

(assert (=> start!375648 e!2474287))

(declare-fun e!2474317 () Bool)

(assert (=> start!375648 e!2474317))

(declare-fun e!2474308 () Bool)

(assert (=> start!375648 e!2474308))

(assert (=> start!375648 true))

(declare-fun e!2474307 () Bool)

(assert (=> start!375648 e!2474307))

(declare-fun e!2474297 () Bool)

(assert (=> start!375648 e!2474297))

(declare-fun b!3991383 () Bool)

(declare-fun res!1619929 () Bool)

(assert (=> b!3991383 (=> (not res!1619929) (not e!2474292))))

(declare-fun isEmpty!25514 (List!42816) Bool)

(assert (=> b!3991383 (= res!1619929 (not (isEmpty!25514 rules!2999)))))

(declare-fun lt!1407254 () Int)

(declare-fun b!3991394 () Bool)

(assert (=> b!3991394 (= e!2474316 (and (= (size!31928 token!484) lt!1407254) (= (originalCharacters!7358 token!484) lt!1407245)))))

(declare-fun b!3991395 () Bool)

(declare-fun e!2474293 () Bool)

(assert (=> b!3991395 (= e!2474293 false)))

(declare-fun b!3991396 () Bool)

(declare-fun e!2474313 () Bool)

(declare-fun e!2474286 () Bool)

(assert (=> b!3991396 (= e!2474313 e!2474286)))

(declare-fun res!1619924 () Bool)

(assert (=> b!3991396 (=> res!1619924 e!2474286)))

(declare-fun lt!1407286 () Option!9172)

(declare-fun lt!1407253 () Option!9172)

(assert (=> b!3991396 (= res!1619924 (not (= lt!1407286 lt!1407253)))))

(declare-fun lt!1407257 () Token!12654)

(assert (=> b!3991396 (= lt!1407286 (Some!9171 (tuple2!41893 lt!1407257 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2679 (LexerInterface!6347 Rule!13316 List!42814) Option!9172)

(assert (=> b!3991396 (= lt!1407286 (maxPrefixOneRule!2679 thiss!21717 (rule!9778 token!484) lt!1407267))))

(assert (=> b!3991396 (= lt!1407257 (Token!12655 lt!1407301 (rule!9778 token!484) lt!1407254 lt!1407245))))

(declare-fun apply!9969 (TokenValueInjection!13404 BalanceConc!25532) TokenValue!6988)

(declare-fun seqFromList!4997 (List!42814) BalanceConc!25532)

(assert (=> b!3991396 (= lt!1407301 (apply!9969 (transformation!6758 (rule!9778 token!484)) (seqFromList!4997 lt!1407245)))))

(declare-fun lt!1407249 () Unit!61470)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1501 (LexerInterface!6347 List!42816 List!42814 List!42814 List!42814 Rule!13316) Unit!61470)

(assert (=> b!3991396 (= lt!1407249 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1501 thiss!21717 rules!2999 lt!1407245 lt!1407267 suffixResult!105 (rule!9778 token!484)))))

(declare-fun lt!1407270 () List!42814)

(assert (=> b!3991396 (= lt!1407270 suffixResult!105)))

(declare-fun lt!1407277 () Unit!61470)

(assert (=> b!3991396 (= lt!1407277 (lemmaSamePrefixThenSameSuffix!2032 lt!1407245 lt!1407270 lt!1407245 suffixResult!105 lt!1407267))))

(declare-fun lt!1407266 () List!42814)

(declare-fun isPrefix!3845 (List!42814 List!42814) Bool)

(assert (=> b!3991396 (isPrefix!3845 lt!1407245 lt!1407266)))

(declare-fun lt!1407243 () Unit!61470)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2688 (List!42814 List!42814) Unit!61470)

(assert (=> b!3991396 (= lt!1407243 (lemmaConcatTwoListThenFirstIsPrefix!2688 lt!1407245 lt!1407270))))

(declare-fun b!3991397 () Bool)

(declare-fun res!1619915 () Bool)

(assert (=> b!3991397 (=> (not res!1619915) (not e!2474292))))

(declare-fun rulesInvariant!5690 (LexerInterface!6347 List!42816) Bool)

(assert (=> b!3991397 (= res!1619915 (rulesInvariant!5690 thiss!21717 rules!2999))))

(declare-fun b!3991398 () Bool)

(declare-fun e!2474296 () Bool)

(declare-fun e!2474301 () Bool)

(assert (=> b!3991398 (= e!2474296 e!2474301)))

(declare-fun res!1619920 () Bool)

(assert (=> b!3991398 (=> res!1619920 e!2474301)))

(declare-fun lt!1407291 () List!42814)

(declare-fun prefix!494 () List!42814)

(assert (=> b!3991398 (= res!1619920 (not (= lt!1407291 prefix!494)))))

(declare-fun lt!1407269 () List!42814)

(assert (=> b!3991398 (= lt!1407291 (++!11160 lt!1407245 lt!1407269))))

(declare-fun getSuffix!2276 (List!42814 List!42814) List!42814)

(assert (=> b!3991398 (= lt!1407269 (getSuffix!2276 prefix!494 lt!1407245))))

(assert (=> b!3991398 (isPrefix!3845 lt!1407245 prefix!494)))

(declare-fun lt!1407258 () Unit!61470)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!423 (List!42814 List!42814 List!42814) Unit!61470)

(assert (=> b!3991398 (= lt!1407258 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!423 prefix!494 lt!1407245 lt!1407267))))

(declare-fun b!3991399 () Bool)

(assert (=> b!3991399 (= e!2474298 true)))

(declare-fun lt!1407289 () Int)

(declare-fun size!31929 (List!42814) Int)

(assert (=> b!3991399 (= lt!1407289 (size!31929 lt!1407267))))

(declare-fun b!3991400 () Bool)

(declare-fun tp!1215716 () Bool)

(assert (=> b!3991400 (= e!2474317 (and tp_is_empty!20297 tp!1215716))))

(declare-fun b!3991401 () Bool)

(declare-fun res!1619938 () Bool)

(assert (=> b!3991401 (=> (not res!1619938) (not e!2474292))))

(declare-fun newSuffix!27 () List!42814)

(declare-fun suffix!1299 () List!42814)

(assert (=> b!3991401 (= res!1619938 (isPrefix!3845 newSuffix!27 suffix!1299))))

(declare-fun b!3991402 () Bool)

(declare-fun res!1619921 () Bool)

(assert (=> b!3991402 (=> (not res!1619921) (not e!2474316))))

(assert (=> b!3991402 (= res!1619921 (= (size!31928 token!484) (size!31929 (originalCharacters!7358 token!484))))))

(declare-fun b!3991403 () Bool)

(declare-fun tp!1215719 () Bool)

(assert (=> b!3991403 (= e!2474307 (and e!2474285 tp!1215719))))

(declare-fun b!3991404 () Bool)

(declare-fun e!2474299 () Bool)

(assert (=> b!3991404 (= e!2474299 e!2474319)))

(declare-fun res!1619923 () Bool)

(assert (=> b!3991404 (=> (not res!1619923) (not e!2474319))))

(declare-fun maxPrefix!3645 (LexerInterface!6347 List!42816 List!42814) Option!9172)

(assert (=> b!3991404 (= res!1619923 (= (maxPrefix!3645 thiss!21717 rules!2999 lt!1407267) lt!1407253))))

(declare-fun lt!1407299 () tuple2!41892)

(assert (=> b!3991404 (= lt!1407253 (Some!9171 lt!1407299))))

(assert (=> b!3991404 (= lt!1407299 (tuple2!41893 token!484 suffixResult!105))))

(assert (=> b!3991404 (= lt!1407267 (++!11160 prefix!494 suffix!1299))))

(declare-fun b!3991405 () Bool)

(declare-fun Unit!61476 () Unit!61470)

(assert (=> b!3991405 (= e!2474294 Unit!61476)))

(declare-fun lt!1407300 () Unit!61470)

(assert (=> b!3991405 (= lt!1407300 (lemmaMaxPrefixOutputsMaxPrefix!412 thiss!21717 rules!2999 (rule!9778 token!484) lt!1407245 lt!1407267 lt!1407296 (rule!9778 (_1!24080 (v!39527 lt!1407242)))))))

(declare-fun res!1619917 () Bool)

(declare-fun matchR!5640 (Regex!11663 List!42814) Bool)

(assert (=> b!3991405 (= res!1619917 (not (matchR!5640 (regex!6758 (rule!9778 (_1!24080 (v!39527 lt!1407242)))) lt!1407296)))))

(assert (=> b!3991405 (=> (not res!1619917) (not e!2474293))))

(assert (=> b!3991405 e!2474293))

(declare-fun b!3991406 () Bool)

(assert (=> b!3991406 (= e!2474289 e!2474296)))

(declare-fun res!1619930 () Bool)

(assert (=> b!3991406 (=> res!1619930 e!2474296)))

(assert (=> b!3991406 (= res!1619930 (not (isPrefix!3845 lt!1407245 lt!1407267)))))

(assert (=> b!3991406 (isPrefix!3845 prefix!494 lt!1407267)))

(declare-fun lt!1407260 () Unit!61470)

(assert (=> b!3991406 (= lt!1407260 (lemmaConcatTwoListThenFirstIsPrefix!2688 prefix!494 suffix!1299))))

(assert (=> b!3991406 (isPrefix!3845 lt!1407245 lt!1407261)))

(declare-fun lt!1407283 () Unit!61470)

(assert (=> b!3991406 (= lt!1407283 (lemmaConcatTwoListThenFirstIsPrefix!2688 lt!1407245 suffixResult!105))))

(declare-fun b!3991407 () Bool)

(declare-fun e!2474302 () Bool)

(declare-fun e!2474291 () Bool)

(assert (=> b!3991407 (= e!2474302 e!2474291)))

(declare-fun res!1619937 () Bool)

(assert (=> b!3991407 (=> res!1619937 e!2474291)))

(declare-fun lt!1407252 () List!42814)

(assert (=> b!3991407 (= res!1619937 (not (= lt!1407252 lt!1407267)))))

(declare-fun lt!1407248 () List!42814)

(assert (=> b!3991407 (= lt!1407252 (++!11160 prefix!494 lt!1407248))))

(declare-fun lt!1407297 () List!42814)

(assert (=> b!3991407 (= lt!1407252 (++!11160 lt!1407250 lt!1407297))))

(declare-fun lt!1407247 () Unit!61470)

(declare-fun lemmaConcatAssociativity!2480 (List!42814 List!42814 List!42814) Unit!61470)

(assert (=> b!3991407 (= lt!1407247 (lemmaConcatAssociativity!2480 prefix!494 newSuffix!27 lt!1407297))))

(declare-fun tp!1215722 () Bool)

(declare-fun b!3991408 () Bool)

(declare-fun e!2474303 () Bool)

(declare-fun inv!21 (TokenValue!6988) Bool)

(assert (=> b!3991408 (= e!2474290 (and (inv!21 (value!213237 token!484)) e!2474303 tp!1215722))))

(declare-fun b!3991409 () Bool)

(declare-fun e!2474312 () Bool)

(assert (=> b!3991409 (= e!2474286 e!2474312)))

(declare-fun res!1619913 () Bool)

(assert (=> b!3991409 (=> res!1619913 e!2474312)))

(assert (=> b!3991409 (= res!1619913 (not (matchR!5640 (regex!6758 (rule!9778 token!484)) lt!1407245)))))

(assert (=> b!3991409 (isPrefix!3845 lt!1407245 lt!1407250)))

(declare-fun lt!1407276 () Unit!61470)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!678 (List!42814 List!42814 List!42814) Unit!61470)

(assert (=> b!3991409 (= lt!1407276 (lemmaPrefixStaysPrefixWhenAddingToSuffix!678 lt!1407245 prefix!494 newSuffix!27))))

(declare-fun lt!1407251 () Unit!61470)

(assert (=> b!3991409 (= lt!1407251 (lemmaPrefixStaysPrefixWhenAddingToSuffix!678 lt!1407245 prefix!494 suffix!1299))))

(declare-fun b!3991410 () Bool)

(assert (=> b!3991410 (= e!2474301 e!2474313)))

(declare-fun res!1619922 () Bool)

(assert (=> b!3991410 (=> res!1619922 e!2474313)))

(declare-fun lt!1407303 () List!42814)

(assert (=> b!3991410 (= res!1619922 (or (not (= lt!1407267 lt!1407303)) (not (= lt!1407267 lt!1407266))))))

(assert (=> b!3991410 (= lt!1407303 lt!1407266)))

(assert (=> b!3991410 (= lt!1407266 (++!11160 lt!1407245 lt!1407270))))

(assert (=> b!3991410 (= lt!1407303 (++!11160 lt!1407291 suffix!1299))))

(assert (=> b!3991410 (= lt!1407270 (++!11160 lt!1407269 suffix!1299))))

(declare-fun lt!1407273 () Unit!61470)

(assert (=> b!3991410 (= lt!1407273 (lemmaConcatAssociativity!2480 lt!1407245 lt!1407269 suffix!1299))))

(declare-fun b!3991411 () Bool)

(declare-fun e!2474318 () Bool)

(declare-fun e!2474288 () Bool)

(assert (=> b!3991411 (= e!2474318 e!2474288)))

(declare-fun res!1619932 () Bool)

(assert (=> b!3991411 (=> res!1619932 e!2474288)))

(assert (=> b!3991411 (= res!1619932 (not ((_ is Some!9171) lt!1407242)))))

(assert (=> b!3991411 (= lt!1407242 (maxPrefix!3645 thiss!21717 rules!2999 lt!1407250))))

(declare-fun lt!1407282 () List!42814)

(assert (=> b!3991411 (and (= suffixResult!105 lt!1407282) (= lt!1407299 (tuple2!41893 lt!1407257 lt!1407282)))))

(declare-fun lt!1407255 () Unit!61470)

(assert (=> b!3991411 (= lt!1407255 (lemmaSamePrefixThenSameSuffix!2032 lt!1407245 suffixResult!105 lt!1407245 lt!1407282 lt!1407267))))

(declare-fun lt!1407246 () List!42814)

(assert (=> b!3991411 (isPrefix!3845 lt!1407245 lt!1407246)))

(declare-fun lt!1407285 () Unit!61470)

(assert (=> b!3991411 (= lt!1407285 (lemmaConcatTwoListThenFirstIsPrefix!2688 lt!1407245 lt!1407282))))

(declare-fun b!3991412 () Bool)

(declare-fun e!2474320 () Bool)

(assert (=> b!3991412 (= e!2474320 e!2474295)))

(declare-fun res!1619912 () Bool)

(assert (=> b!3991412 (=> res!1619912 e!2474295)))

(declare-fun lt!1407265 () Int)

(assert (=> b!3991412 (= res!1619912 (not (= lt!1407254 lt!1407265)))))

(declare-fun lt!1407295 () Unit!61470)

(assert (=> b!3991412 (= lt!1407295 e!2474315)))

(declare-fun c!690772 () Bool)

(assert (=> b!3991412 (= c!690772 (< lt!1407265 lt!1407254))))

(declare-fun lt!1407288 () Unit!61470)

(assert (=> b!3991412 (= lt!1407288 e!2474294)))

(declare-fun c!690773 () Bool)

(assert (=> b!3991412 (= c!690773 (> lt!1407265 lt!1407254))))

(declare-fun lt!1407244 () List!42814)

(assert (=> b!3991412 (= (_2!24080 (v!39527 lt!1407242)) lt!1407244)))

(declare-fun lt!1407293 () Unit!61470)

(assert (=> b!3991412 (= lt!1407293 (lemmaSamePrefixThenSameSuffix!2032 lt!1407296 (_2!24080 (v!39527 lt!1407242)) lt!1407296 lt!1407244 lt!1407250))))

(declare-fun lt!1407287 () List!42814)

(assert (=> b!3991412 (isPrefix!3845 lt!1407296 lt!1407287)))

(declare-fun lt!1407274 () Unit!61470)

(assert (=> b!3991412 (= lt!1407274 (lemmaConcatTwoListThenFirstIsPrefix!2688 lt!1407296 lt!1407244))))

(declare-fun b!3991413 () Bool)

(declare-fun e!2474306 () Bool)

(assert (=> b!3991413 (= e!2474291 e!2474306)))

(declare-fun res!1619934 () Bool)

(assert (=> b!3991413 (=> res!1619934 e!2474306)))

(assert (=> b!3991413 (= res!1619934 (not (isPrefix!3845 lt!1407296 lt!1407267)))))

(assert (=> b!3991413 (isPrefix!3845 lt!1407296 lt!1407252)))

(declare-fun lt!1407280 () Unit!61470)

(assert (=> b!3991413 (= lt!1407280 (lemmaPrefixStaysPrefixWhenAddingToSuffix!678 lt!1407296 lt!1407250 lt!1407297))))

(declare-fun b!3991414 () Bool)

(declare-fun res!1619940 () Bool)

(assert (=> b!3991414 (=> res!1619940 e!2474295)))

(assert (=> b!3991414 (= res!1619940 (not (isPrefix!3845 lt!1407296 lt!1407250)))))

(declare-fun b!3991415 () Bool)

(declare-fun tp!1215712 () Bool)

(assert (=> b!3991415 (= e!2474297 (and tp_is_empty!20297 tp!1215712))))

(declare-fun b!3991416 () Bool)

(declare-fun e!2474311 () Bool)

(assert (=> b!3991416 (= e!2474292 e!2474311)))

(declare-fun res!1619918 () Bool)

(assert (=> b!3991416 (=> (not res!1619918) (not e!2474311))))

(declare-fun lt!1407281 () Int)

(assert (=> b!3991416 (= res!1619918 (>= lt!1407281 lt!1407254))))

(assert (=> b!3991416 (= lt!1407254 (size!31929 lt!1407245))))

(assert (=> b!3991416 (= lt!1407281 (size!31929 prefix!494))))

(declare-fun list!15850 (BalanceConc!25532) List!42814)

(declare-fun charsOf!4574 (Token!12654) BalanceConc!25532)

(assert (=> b!3991416 (= lt!1407245 (list!15850 (charsOf!4574 token!484)))))

(declare-fun b!3991417 () Bool)

(declare-fun e!2474309 () Bool)

(assert (=> b!3991417 (= e!2474288 e!2474309)))

(declare-fun res!1619916 () Bool)

(assert (=> b!3991417 (=> res!1619916 e!2474309)))

(declare-fun lt!1407302 () Option!9172)

(assert (=> b!3991417 (= res!1619916 (not (= lt!1407302 (Some!9171 (v!39527 lt!1407242)))))))

(assert (=> b!3991417 (isPrefix!3845 lt!1407296 (++!11160 lt!1407296 newSuffixResult!27))))

(declare-fun lt!1407262 () Unit!61470)

(assert (=> b!3991417 (= lt!1407262 (lemmaConcatTwoListThenFirstIsPrefix!2688 lt!1407296 newSuffixResult!27))))

(declare-fun lt!1407264 () List!42814)

(assert (=> b!3991417 (isPrefix!3845 lt!1407296 lt!1407264)))

(assert (=> b!3991417 (= lt!1407264 (++!11160 lt!1407296 (_2!24080 (v!39527 lt!1407242))))))

(declare-fun lt!1407278 () Unit!61470)

(assert (=> b!3991417 (= lt!1407278 (lemmaConcatTwoListThenFirstIsPrefix!2688 lt!1407296 (_2!24080 (v!39527 lt!1407242))))))

(declare-fun lt!1407284 () TokenValue!6988)

(assert (=> b!3991417 (= lt!1407302 (Some!9171 (tuple2!41893 (Token!12655 lt!1407284 (rule!9778 (_1!24080 (v!39527 lt!1407242))) lt!1407265 lt!1407296) (_2!24080 (v!39527 lt!1407242)))))))

(assert (=> b!3991417 (= lt!1407302 (maxPrefixOneRule!2679 thiss!21717 (rule!9778 (_1!24080 (v!39527 lt!1407242))) lt!1407250))))

(assert (=> b!3991417 (= lt!1407265 (size!31929 lt!1407296))))

(assert (=> b!3991417 (= lt!1407284 (apply!9969 (transformation!6758 (rule!9778 (_1!24080 (v!39527 lt!1407242)))) (seqFromList!4997 lt!1407296)))))

(declare-fun lt!1407271 () Unit!61470)

(assert (=> b!3991417 (= lt!1407271 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1501 thiss!21717 rules!2999 lt!1407296 lt!1407250 (_2!24080 (v!39527 lt!1407242)) (rule!9778 (_1!24080 (v!39527 lt!1407242)))))))

(assert (=> b!3991417 (= lt!1407296 (list!15850 (charsOf!4574 (_1!24080 (v!39527 lt!1407242)))))))

(declare-fun lt!1407294 () Unit!61470)

(assert (=> b!3991417 (= lt!1407294 (lemmaInv!973 (transformation!6758 (rule!9778 (_1!24080 (v!39527 lt!1407242))))))))

(assert (=> b!3991417 (ruleValid!2690 thiss!21717 (rule!9778 (_1!24080 (v!39527 lt!1407242))))))

(declare-fun lt!1407298 () Unit!61470)

(assert (=> b!3991417 (= lt!1407298 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1764 thiss!21717 (rule!9778 (_1!24080 (v!39527 lt!1407242))) rules!2999))))

(declare-fun lt!1407263 () Unit!61470)

(declare-fun lemmaCharactersSize!1353 (Token!12654) Unit!61470)

(assert (=> b!3991417 (= lt!1407263 (lemmaCharactersSize!1353 token!484))))

(declare-fun lt!1407292 () Unit!61470)

(assert (=> b!3991417 (= lt!1407292 (lemmaCharactersSize!1353 (_1!24080 (v!39527 lt!1407242))))))

(declare-fun b!3991418 () Bool)

(assert (=> b!3991418 (= e!2474312 e!2474318)))

(declare-fun res!1619935 () Bool)

(assert (=> b!3991418 (=> res!1619935 e!2474318)))

(assert (=> b!3991418 (= res!1619935 (not (= lt!1407246 lt!1407267)))))

(assert (=> b!3991418 (= lt!1407246 (++!11160 lt!1407245 lt!1407282))))

(assert (=> b!3991418 (= lt!1407282 (getSuffix!2276 lt!1407267 lt!1407245))))

(assert (=> b!3991418 e!2474316))

(declare-fun res!1619936 () Bool)

(assert (=> b!3991418 (=> (not res!1619936) (not e!2474316))))

(assert (=> b!3991418 (= res!1619936 (isPrefix!3845 lt!1407267 lt!1407267))))

(declare-fun lt!1407259 () Unit!61470)

(declare-fun lemmaIsPrefixRefl!2437 (List!42814 List!42814) Unit!61470)

(assert (=> b!3991418 (= lt!1407259 (lemmaIsPrefixRefl!2437 lt!1407267 lt!1407267))))

(declare-fun b!3991419 () Bool)

(declare-fun tp!1215715 () Bool)

(assert (=> b!3991419 (= e!2474308 (and tp_is_empty!20297 tp!1215715))))

(declare-fun b!3991420 () Bool)

(assert (=> b!3991420 (= e!2474311 e!2474299)))

(declare-fun res!1619914 () Bool)

(assert (=> b!3991420 (=> (not res!1619914) (not e!2474299))))

(declare-fun lt!1407275 () List!42814)

(assert (=> b!3991420 (= res!1619914 (= lt!1407275 lt!1407250))))

(assert (=> b!3991420 (= lt!1407250 (++!11160 prefix!494 newSuffix!27))))

(assert (=> b!3991420 (= lt!1407275 (++!11160 lt!1407245 newSuffixResult!27))))

(declare-fun b!3991421 () Bool)

(assert (=> b!3991421 (= e!2474306 e!2474320)))

(declare-fun res!1619925 () Bool)

(assert (=> b!3991421 (=> res!1619925 e!2474320)))

(assert (=> b!3991421 (= res!1619925 (not (= lt!1407287 lt!1407250)))))

(assert (=> b!3991421 (= lt!1407287 (++!11160 lt!1407296 lt!1407244))))

(assert (=> b!3991421 (= lt!1407244 (getSuffix!2276 lt!1407250 lt!1407296))))

(declare-fun b!3991422 () Bool)

(declare-fun tp!1215718 () Bool)

(assert (=> b!3991422 (= e!2474303 (and tp!1215718 (inv!57017 (tag!7618 (rule!9778 token!484))) (inv!57020 (transformation!6758 (rule!9778 token!484))) e!2474305))))

(declare-fun b!3991423 () Bool)

(declare-fun res!1619933 () Bool)

(assert (=> b!3991423 (=> res!1619933 e!2474306)))

(assert (=> b!3991423 (= res!1619933 (not (= lt!1407264 lt!1407250)))))

(declare-fun b!3991424 () Bool)

(declare-fun res!1619928 () Bool)

(assert (=> b!3991424 (=> (not res!1619928) (not e!2474292))))

(assert (=> b!3991424 (= res!1619928 (>= (size!31929 suffix!1299) (size!31929 newSuffix!27)))))

(assert (=> b!3991425 (= e!2474314 (and tp!1215713 tp!1215717))))

(declare-fun b!3991426 () Bool)

(assert (=> b!3991426 (= e!2474309 e!2474302)))

(declare-fun res!1619931 () Bool)

(assert (=> b!3991426 (=> res!1619931 e!2474302)))

(assert (=> b!3991426 (= res!1619931 (not (= lt!1407248 suffix!1299)))))

(assert (=> b!3991426 (= lt!1407248 (++!11160 newSuffix!27 lt!1407297))))

(assert (=> b!3991426 (= lt!1407297 (getSuffix!2276 suffix!1299 newSuffix!27))))

(assert (= (and start!375648 res!1619927) b!3991383))

(assert (= (and b!3991383 res!1619929) b!3991397))

(assert (= (and b!3991397 res!1619915) b!3991424))

(assert (= (and b!3991424 res!1619928) b!3991401))

(assert (= (and b!3991401 res!1619938) b!3991416))

(assert (= (and b!3991416 res!1619918) b!3991420))

(assert (= (and b!3991420 res!1619914) b!3991404))

(assert (= (and b!3991404 res!1619923) b!3991384))

(assert (= (and b!3991384 (not res!1619939)) b!3991406))

(assert (= (and b!3991406 (not res!1619930)) b!3991398))

(assert (= (and b!3991398 (not res!1619920)) b!3991410))

(assert (= (and b!3991410 (not res!1619922)) b!3991396))

(assert (= (and b!3991396 (not res!1619924)) b!3991409))

(assert (= (and b!3991409 (not res!1619913)) b!3991418))

(assert (= (and b!3991418 res!1619936) b!3991390))

(assert (= (and b!3991390 res!1619926) b!3991402))

(assert (= (and b!3991402 res!1619921) b!3991394))

(assert (= (and b!3991418 (not res!1619935)) b!3991411))

(assert (= (and b!3991411 (not res!1619932)) b!3991417))

(assert (= (and b!3991417 (not res!1619916)) b!3991426))

(assert (= (and b!3991426 (not res!1619931)) b!3991407))

(assert (= (and b!3991407 (not res!1619937)) b!3991413))

(assert (= (and b!3991413 (not res!1619934)) b!3991423))

(assert (= (and b!3991423 (not res!1619933)) b!3991421))

(assert (= (and b!3991421 (not res!1619925)) b!3991412))

(assert (= (and b!3991412 c!690773) b!3991405))

(assert (= (and b!3991412 (not c!690773)) b!3991385))

(assert (= (and b!3991405 res!1619917) b!3991395))

(assert (= (and b!3991412 c!690772) b!3991393))

(assert (= (and b!3991412 (not c!690772)) b!3991388))

(assert (= (and b!3991412 (not res!1619912)) b!3991414))

(assert (= (and b!3991414 (not res!1619940)) b!3991389))

(assert (= (and b!3991389 (not res!1619919)) b!3991399))

(assert (= (and start!375648 ((_ is Cons!42690) prefix!494)) b!3991386))

(assert (= b!3991422 b!3991387))

(assert (= b!3991408 b!3991422))

(assert (= start!375648 b!3991408))

(assert (= (and start!375648 ((_ is Cons!42690) suffixResult!105)) b!3991391))

(assert (= (and start!375648 ((_ is Cons!42690) suffix!1299)) b!3991400))

(assert (= (and start!375648 ((_ is Cons!42690) newSuffix!27)) b!3991419))

(assert (= b!3991392 b!3991425))

(assert (= b!3991403 b!3991392))

(assert (= (and start!375648 ((_ is Cons!42692) rules!2999)) b!3991403))

(assert (= (and start!375648 ((_ is Cons!42690) newSuffixResult!27)) b!3991415))

(declare-fun m!4570073 () Bool)

(assert (=> b!3991421 m!4570073))

(declare-fun m!4570075 () Bool)

(assert (=> b!3991421 m!4570075))

(declare-fun m!4570077 () Bool)

(assert (=> b!3991417 m!4570077))

(declare-fun m!4570079 () Bool)

(assert (=> b!3991417 m!4570079))

(declare-fun m!4570081 () Bool)

(assert (=> b!3991417 m!4570081))

(declare-fun m!4570083 () Bool)

(assert (=> b!3991417 m!4570083))

(declare-fun m!4570085 () Bool)

(assert (=> b!3991417 m!4570085))

(declare-fun m!4570087 () Bool)

(assert (=> b!3991417 m!4570087))

(declare-fun m!4570089 () Bool)

(assert (=> b!3991417 m!4570089))

(declare-fun m!4570091 () Bool)

(assert (=> b!3991417 m!4570091))

(declare-fun m!4570093 () Bool)

(assert (=> b!3991417 m!4570093))

(declare-fun m!4570095 () Bool)

(assert (=> b!3991417 m!4570095))

(assert (=> b!3991417 m!4570079))

(declare-fun m!4570097 () Bool)

(assert (=> b!3991417 m!4570097))

(declare-fun m!4570099 () Bool)

(assert (=> b!3991417 m!4570099))

(assert (=> b!3991417 m!4570081))

(declare-fun m!4570101 () Bool)

(assert (=> b!3991417 m!4570101))

(assert (=> b!3991417 m!4570093))

(declare-fun m!4570103 () Bool)

(assert (=> b!3991417 m!4570103))

(declare-fun m!4570105 () Bool)

(assert (=> b!3991417 m!4570105))

(declare-fun m!4570107 () Bool)

(assert (=> b!3991417 m!4570107))

(declare-fun m!4570109 () Bool)

(assert (=> b!3991417 m!4570109))

(declare-fun m!4570111 () Bool)

(assert (=> b!3991417 m!4570111))

(declare-fun m!4570113 () Bool)

(assert (=> b!3991401 m!4570113))

(declare-fun m!4570115 () Bool)

(assert (=> b!3991393 m!4570115))

(declare-fun m!4570117 () Bool)

(assert (=> b!3991398 m!4570117))

(declare-fun m!4570119 () Bool)

(assert (=> b!3991398 m!4570119))

(declare-fun m!4570121 () Bool)

(assert (=> b!3991398 m!4570121))

(declare-fun m!4570123 () Bool)

(assert (=> b!3991398 m!4570123))

(declare-fun m!4570125 () Bool)

(assert (=> b!3991422 m!4570125))

(declare-fun m!4570127 () Bool)

(assert (=> b!3991422 m!4570127))

(declare-fun m!4570129 () Bool)

(assert (=> b!3991399 m!4570129))

(declare-fun m!4570131 () Bool)

(assert (=> b!3991405 m!4570131))

(declare-fun m!4570133 () Bool)

(assert (=> b!3991405 m!4570133))

(declare-fun m!4570135 () Bool)

(assert (=> b!3991410 m!4570135))

(declare-fun m!4570137 () Bool)

(assert (=> b!3991410 m!4570137))

(declare-fun m!4570139 () Bool)

(assert (=> b!3991410 m!4570139))

(declare-fun m!4570141 () Bool)

(assert (=> b!3991410 m!4570141))

(declare-fun m!4570143 () Bool)

(assert (=> b!3991416 m!4570143))

(declare-fun m!4570145 () Bool)

(assert (=> b!3991416 m!4570145))

(declare-fun m!4570147 () Bool)

(assert (=> b!3991416 m!4570147))

(assert (=> b!3991416 m!4570147))

(declare-fun m!4570149 () Bool)

(assert (=> b!3991416 m!4570149))

(declare-fun m!4570151 () Bool)

(assert (=> b!3991397 m!4570151))

(declare-fun m!4570153 () Bool)

(assert (=> b!3991409 m!4570153))

(declare-fun m!4570155 () Bool)

(assert (=> b!3991409 m!4570155))

(declare-fun m!4570157 () Bool)

(assert (=> b!3991409 m!4570157))

(declare-fun m!4570159 () Bool)

(assert (=> b!3991409 m!4570159))

(declare-fun m!4570161 () Bool)

(assert (=> b!3991411 m!4570161))

(declare-fun m!4570163 () Bool)

(assert (=> b!3991411 m!4570163))

(declare-fun m!4570165 () Bool)

(assert (=> b!3991411 m!4570165))

(declare-fun m!4570167 () Bool)

(assert (=> b!3991411 m!4570167))

(declare-fun m!4570169 () Bool)

(assert (=> b!3991413 m!4570169))

(declare-fun m!4570171 () Bool)

(assert (=> b!3991413 m!4570171))

(declare-fun m!4570173 () Bool)

(assert (=> b!3991413 m!4570173))

(declare-fun m!4570175 () Bool)

(assert (=> b!3991408 m!4570175))

(declare-fun m!4570177 () Bool)

(assert (=> b!3991414 m!4570177))

(declare-fun m!4570179 () Bool)

(assert (=> b!3991426 m!4570179))

(declare-fun m!4570181 () Bool)

(assert (=> b!3991426 m!4570181))

(declare-fun m!4570183 () Bool)

(assert (=> b!3991407 m!4570183))

(declare-fun m!4570185 () Bool)

(assert (=> b!3991407 m!4570185))

(declare-fun m!4570187 () Bool)

(assert (=> b!3991407 m!4570187))

(declare-fun m!4570189 () Bool)

(assert (=> b!3991420 m!4570189))

(declare-fun m!4570191 () Bool)

(assert (=> b!3991420 m!4570191))

(declare-fun m!4570193 () Bool)

(assert (=> b!3991389 m!4570193))

(declare-fun m!4570195 () Bool)

(assert (=> b!3991389 m!4570195))

(declare-fun m!4570197 () Bool)

(assert (=> b!3991389 m!4570197))

(declare-fun m!4570199 () Bool)

(assert (=> b!3991389 m!4570199))

(declare-fun m!4570201 () Bool)

(assert (=> b!3991412 m!4570201))

(declare-fun m!4570203 () Bool)

(assert (=> b!3991412 m!4570203))

(declare-fun m!4570205 () Bool)

(assert (=> b!3991412 m!4570205))

(declare-fun m!4570207 () Bool)

(assert (=> b!3991404 m!4570207))

(declare-fun m!4570209 () Bool)

(assert (=> b!3991404 m!4570209))

(declare-fun m!4570211 () Bool)

(assert (=> b!3991418 m!4570211))

(declare-fun m!4570213 () Bool)

(assert (=> b!3991418 m!4570213))

(declare-fun m!4570215 () Bool)

(assert (=> b!3991418 m!4570215))

(declare-fun m!4570217 () Bool)

(assert (=> b!3991418 m!4570217))

(declare-fun m!4570219 () Bool)

(assert (=> b!3991383 m!4570219))

(declare-fun m!4570221 () Bool)

(assert (=> b!3991406 m!4570221))

(declare-fun m!4570223 () Bool)

(assert (=> b!3991406 m!4570223))

(declare-fun m!4570225 () Bool)

(assert (=> b!3991406 m!4570225))

(declare-fun m!4570227 () Bool)

(assert (=> b!3991406 m!4570227))

(declare-fun m!4570229 () Bool)

(assert (=> b!3991406 m!4570229))

(declare-fun m!4570231 () Bool)

(assert (=> b!3991392 m!4570231))

(declare-fun m!4570233 () Bool)

(assert (=> b!3991392 m!4570233))

(declare-fun m!4570235 () Bool)

(assert (=> b!3991396 m!4570235))

(declare-fun m!4570237 () Bool)

(assert (=> b!3991396 m!4570237))

(declare-fun m!4570239 () Bool)

(assert (=> b!3991396 m!4570239))

(declare-fun m!4570241 () Bool)

(assert (=> b!3991396 m!4570241))

(assert (=> b!3991396 m!4570235))

(declare-fun m!4570243 () Bool)

(assert (=> b!3991396 m!4570243))

(declare-fun m!4570245 () Bool)

(assert (=> b!3991396 m!4570245))

(declare-fun m!4570247 () Bool)

(assert (=> b!3991396 m!4570247))

(declare-fun m!4570249 () Bool)

(assert (=> start!375648 m!4570249))

(declare-fun m!4570251 () Bool)

(assert (=> b!3991424 m!4570251))

(declare-fun m!4570253 () Bool)

(assert (=> b!3991424 m!4570253))

(declare-fun m!4570255 () Bool)

(assert (=> b!3991384 m!4570255))

(declare-fun m!4570257 () Bool)

(assert (=> b!3991384 m!4570257))

(declare-fun m!4570259 () Bool)

(assert (=> b!3991384 m!4570259))

(declare-fun m!4570261 () Bool)

(assert (=> b!3991384 m!4570261))

(declare-fun m!4570263 () Bool)

(assert (=> b!3991402 m!4570263))

(check-sat (not b!3991410) (not b!3991415) (not b!3991384) (not b!3991401) b_and!306661 (not b!3991403) (not b!3991421) (not b!3991393) (not start!375648) (not b!3991420) (not b!3991392) (not b!3991419) (not b!3991396) (not b!3991398) (not b!3991416) (not b!3991391) b_and!306659 (not b!3991426) b_and!306655 (not b!3991409) (not b!3991413) (not b!3991418) (not b!3991412) (not b!3991389) (not b!3991397) (not b!3991400) (not b!3991404) (not b!3991414) (not b!3991417) (not b!3991422) (not b_next!111575) b_and!306657 (not b!3991411) (not b!3991386) (not b_next!111569) (not b_next!111573) (not b!3991408) (not b!3991402) (not b!3991383) (not b!3991405) (not b_next!111571) (not b!3991424) (not b!3991406) (not b!3991399) tp_is_empty!20297 (not b!3991407))
(check-sat b_and!306659 b_and!306655 b_and!306661 (not b_next!111575) b_and!306657 (not b_next!111571) (not b_next!111569) (not b_next!111573))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!367628 () Bool)

(assert start!367628)

(declare-fun b!3920585 () Bool)

(declare-fun b_free!106589 () Bool)

(declare-fun b_next!107293 () Bool)

(assert (=> b!3920585 (= b_free!106589 (not b_next!107293))))

(declare-fun tp!1193311 () Bool)

(declare-fun b_and!298799 () Bool)

(assert (=> b!3920585 (= tp!1193311 b_and!298799)))

(declare-fun b_free!106591 () Bool)

(declare-fun b_next!107295 () Bool)

(assert (=> b!3920585 (= b_free!106591 (not b_next!107295))))

(declare-fun tp!1193307 () Bool)

(declare-fun b_and!298801 () Bool)

(assert (=> b!3920585 (= tp!1193307 b_and!298801)))

(declare-fun b!3920581 () Bool)

(declare-fun b_free!106593 () Bool)

(declare-fun b_next!107297 () Bool)

(assert (=> b!3920581 (= b_free!106593 (not b_next!107297))))

(declare-fun tp!1193310 () Bool)

(declare-fun b_and!298803 () Bool)

(assert (=> b!3920581 (= tp!1193310 b_and!298803)))

(declare-fun b_free!106595 () Bool)

(declare-fun b_next!107299 () Bool)

(assert (=> b!3920581 (= b_free!106595 (not b_next!107299))))

(declare-fun tp!1193321 () Bool)

(declare-fun b_and!298805 () Bool)

(assert (=> b!3920581 (= tp!1193321 b_and!298805)))

(declare-fun b!3920559 () Bool)

(declare-fun b_free!106597 () Bool)

(declare-fun b_next!107301 () Bool)

(assert (=> b!3920559 (= b_free!106597 (not b_next!107301))))

(declare-fun tp!1193315 () Bool)

(declare-fun b_and!298807 () Bool)

(assert (=> b!3920559 (= tp!1193315 b_and!298807)))

(declare-fun b_free!106599 () Bool)

(declare-fun b_next!107303 () Bool)

(assert (=> b!3920559 (= b_free!106599 (not b_next!107303))))

(declare-fun tp!1193308 () Bool)

(declare-fun b_and!298809 () Bool)

(assert (=> b!3920559 (= tp!1193308 b_and!298809)))

(declare-fun e!2424264 () Bool)

(assert (=> b!3920559 (= e!2424264 (and tp!1193315 tp!1193308))))

(declare-fun res!1585956 () Bool)

(declare-fun e!2424243 () Bool)

(assert (=> start!367628 (=> (not res!1585956) (not e!2424243))))

(declare-datatypes ((LexerInterface!6063 0))(
  ( (LexerInterfaceExt!6060 (__x!25625 Int)) (Lexer!6061) )
))
(declare-fun thiss!20629 () LexerInterface!6063)

(get-info :version)

(assert (=> start!367628 (= res!1585956 ((_ is Lexer!6061) thiss!20629))))

(assert (=> start!367628 e!2424243))

(declare-fun e!2424265 () Bool)

(assert (=> start!367628 e!2424265))

(assert (=> start!367628 true))

(declare-fun e!2424262 () Bool)

(assert (=> start!367628 e!2424262))

(declare-fun e!2424257 () Bool)

(assert (=> start!367628 e!2424257))

(declare-fun e!2424253 () Bool)

(assert (=> start!367628 e!2424253))

(declare-fun e!2424256 () Bool)

(assert (=> start!367628 e!2424256))

(declare-fun e!2424251 () Bool)

(assert (=> start!367628 e!2424251))

(declare-fun b!3920560 () Bool)

(declare-fun res!1585945 () Bool)

(assert (=> b!3920560 (=> (not res!1585945) (not e!2424243))))

(declare-datatypes ((List!41679 0))(
  ( (Nil!41555) (Cons!41555 (h!46975 (_ BitVec 16)) (t!324526 List!41679)) )
))
(declare-datatypes ((TokenValue!6704 0))(
  ( (FloatLiteralValue!13408 (text!47373 List!41679)) (TokenValueExt!6703 (__x!25626 Int)) (Broken!33520 (value!205117 List!41679)) (Object!6827) (End!6704) (Def!6704) (Underscore!6704) (Match!6704) (Else!6704) (Error!6704) (Case!6704) (If!6704) (Extends!6704) (Abstract!6704) (Class!6704) (Val!6704) (DelimiterValue!13408 (del!6764 List!41679)) (KeywordValue!6710 (value!205118 List!41679)) (CommentValue!13408 (value!205119 List!41679)) (WhitespaceValue!13408 (value!205120 List!41679)) (IndentationValue!6704 (value!205121 List!41679)) (String!47237) (Int32!6704) (Broken!33521 (value!205122 List!41679)) (Boolean!6705) (Unit!59703) (OperatorValue!6707 (op!6764 List!41679)) (IdentifierValue!13408 (value!205123 List!41679)) (IdentifierValue!13409 (value!205124 List!41679)) (WhitespaceValue!13409 (value!205125 List!41679)) (True!13408) (False!13408) (Broken!33522 (value!205126 List!41679)) (Broken!33523 (value!205127 List!41679)) (True!13409) (RightBrace!6704) (RightBracket!6704) (Colon!6704) (Null!6704) (Comma!6704) (LeftBracket!6704) (False!13409) (LeftBrace!6704) (ImaginaryLiteralValue!6704 (text!47374 List!41679)) (StringLiteralValue!20112 (value!205128 List!41679)) (EOFValue!6704 (value!205129 List!41679)) (IdentValue!6704 (value!205130 List!41679)) (DelimiterValue!13409 (value!205131 List!41679)) (DedentValue!6704 (value!205132 List!41679)) (NewLineValue!6704 (value!205133 List!41679)) (IntegerValue!20112 (value!205134 (_ BitVec 32)) (text!47375 List!41679)) (IntegerValue!20113 (value!205135 Int) (text!47376 List!41679)) (Times!6704) (Or!6704) (Equal!6704) (Minus!6704) (Broken!33524 (value!205136 List!41679)) (And!6704) (Div!6704) (LessEqual!6704) (Mod!6704) (Concat!18083) (Not!6704) (Plus!6704) (SpaceValue!6704 (value!205137 List!41679)) (IntegerValue!20114 (value!205138 Int) (text!47377 List!41679)) (StringLiteralValue!20113 (text!47378 List!41679)) (FloatLiteralValue!13409 (text!47379 List!41679)) (BytesLiteralValue!6704 (value!205139 List!41679)) (CommentValue!13409 (value!205140 List!41679)) (StringLiteralValue!20114 (value!205141 List!41679)) (ErrorTokenValue!6704 (msg!6765 List!41679)) )
))
(declare-datatypes ((C!22944 0))(
  ( (C!22945 (val!13566 Int)) )
))
(declare-datatypes ((Regex!11379 0))(
  ( (ElementMatch!11379 (c!681360 C!22944)) (Concat!18084 (regOne!23270 Regex!11379) (regTwo!23270 Regex!11379)) (EmptyExpr!11379) (Star!11379 (reg!11708 Regex!11379)) (EmptyLang!11379) (Union!11379 (regOne!23271 Regex!11379) (regTwo!23271 Regex!11379)) )
))
(declare-datatypes ((String!47238 0))(
  ( (String!47239 (value!205142 String)) )
))
(declare-datatypes ((List!41680 0))(
  ( (Nil!41556) (Cons!41556 (h!46976 C!22944) (t!324527 List!41680)) )
))
(declare-datatypes ((IArray!25375 0))(
  ( (IArray!25376 (innerList!12745 List!41680)) )
))
(declare-datatypes ((Conc!12685 0))(
  ( (Node!12685 (left!31772 Conc!12685) (right!32102 Conc!12685) (csize!25600 Int) (cheight!12896 Int)) (Leaf!19629 (xs!15991 IArray!25375) (csize!25601 Int)) (Empty!12685) )
))
(declare-datatypes ((BalanceConc!24964 0))(
  ( (BalanceConc!24965 (c!681361 Conc!12685)) )
))
(declare-datatypes ((TokenValueInjection!12836 0))(
  ( (TokenValueInjection!12837 (toValue!8926 Int) (toChars!8785 Int)) )
))
(declare-datatypes ((Rule!12748 0))(
  ( (Rule!12749 (regex!6474 Regex!11379) (tag!7334 String!47238) (isSeparator!6474 Bool) (transformation!6474 TokenValueInjection!12836)) )
))
(declare-datatypes ((Token!12086 0))(
  ( (Token!12087 (value!205143 TokenValue!6704) (rule!9406 Rule!12748) (size!31201 Int) (originalCharacters!7074 List!41680)) )
))
(declare-datatypes ((List!41681 0))(
  ( (Nil!41557) (Cons!41557 (h!46977 Token!12086) (t!324528 List!41681)) )
))
(declare-fun prefixTokens!80 () List!41681)

(declare-fun isEmpty!24740 (List!41681) Bool)

(assert (=> b!3920560 (= res!1585945 (not (isEmpty!24740 prefixTokens!80)))))

(declare-fun b!3920561 () Bool)

(declare-fun res!1585946 () Bool)

(declare-fun e!2424239 () Bool)

(assert (=> b!3920561 (=> res!1585946 e!2424239)))

(declare-datatypes ((tuple2!40818 0))(
  ( (tuple2!40819 (_1!23543 List!41681) (_2!23543 List!41680)) )
))
(declare-fun lt!1366307 () tuple2!40818)

(declare-datatypes ((tuple2!40820 0))(
  ( (tuple2!40821 (_1!23544 Token!12086) (_2!23544 List!41680)) )
))
(declare-datatypes ((Option!8894 0))(
  ( (None!8893) (Some!8893 (v!39219 tuple2!40820)) )
))
(declare-fun lt!1366323 () Option!8894)

(declare-fun suffix!1176 () List!41680)

(assert (=> b!3920561 (= res!1585946 (or (not (= lt!1366307 (tuple2!40819 (_1!23543 lt!1366307) (_2!23543 lt!1366307)))) (= (_2!23544 (v!39219 lt!1366323)) suffix!1176)))))

(declare-fun tp!1193313 () Bool)

(declare-fun b!3920562 () Bool)

(declare-fun e!2424263 () Bool)

(declare-fun e!2424266 () Bool)

(declare-fun suffixTokens!72 () List!41681)

(declare-fun inv!21 (TokenValue!6704) Bool)

(assert (=> b!3920562 (= e!2424263 (and (inv!21 (value!205143 (h!46977 suffixTokens!72))) e!2424266 tp!1193313))))

(declare-fun b!3920563 () Bool)

(declare-fun e!2424245 () Bool)

(assert (=> b!3920563 (= e!2424245 (not e!2424239))))

(declare-fun res!1585948 () Bool)

(assert (=> b!3920563 (=> res!1585948 e!2424239)))

(declare-fun lt!1366325 () List!41680)

(declare-fun lt!1366319 () List!41680)

(assert (=> b!3920563 (= res!1585948 (not (= lt!1366325 lt!1366319)))))

(declare-datatypes ((List!41682 0))(
  ( (Nil!41558) (Cons!41558 (h!46978 Rule!12748) (t!324529 List!41682)) )
))
(declare-fun rules!2768 () List!41682)

(declare-fun lexList!1831 (LexerInterface!6063 List!41682 List!41680) tuple2!40818)

(assert (=> b!3920563 (= lt!1366307 (lexList!1831 thiss!20629 rules!2768 (_2!23544 (v!39219 lt!1366323))))))

(declare-fun lt!1366309 () List!41680)

(declare-fun lt!1366318 () List!41680)

(declare-fun lt!1366320 () TokenValue!6704)

(declare-fun lt!1366316 () Int)

(assert (=> b!3920563 (and (= (size!31201 (_1!23544 (v!39219 lt!1366323))) lt!1366316) (= (originalCharacters!7074 (_1!23544 (v!39219 lt!1366323))) lt!1366309) (= (v!39219 lt!1366323) (tuple2!40821 (Token!12087 lt!1366320 (rule!9406 (_1!23544 (v!39219 lt!1366323))) lt!1366316 lt!1366309) lt!1366318)))))

(declare-fun size!31202 (List!41680) Int)

(assert (=> b!3920563 (= lt!1366316 (size!31202 lt!1366309))))

(declare-fun e!2424268 () Bool)

(assert (=> b!3920563 e!2424268))

(declare-fun res!1585954 () Bool)

(assert (=> b!3920563 (=> (not res!1585954) (not e!2424268))))

(assert (=> b!3920563 (= res!1585954 (= (value!205143 (_1!23544 (v!39219 lt!1366323))) lt!1366320))))

(declare-fun apply!9713 (TokenValueInjection!12836 BalanceConc!24964) TokenValue!6704)

(declare-fun seqFromList!4741 (List!41680) BalanceConc!24964)

(assert (=> b!3920563 (= lt!1366320 (apply!9713 (transformation!6474 (rule!9406 (_1!23544 (v!39219 lt!1366323)))) (seqFromList!4741 lt!1366309)))))

(assert (=> b!3920563 (= (_2!23544 (v!39219 lt!1366323)) lt!1366318)))

(declare-datatypes ((Unit!59704 0))(
  ( (Unit!59705) )
))
(declare-fun lt!1366312 () Unit!59704)

(declare-fun lemmaSamePrefixThenSameSuffix!1790 (List!41680 List!41680 List!41680 List!41680 List!41680) Unit!59704)

(assert (=> b!3920563 (= lt!1366312 (lemmaSamePrefixThenSameSuffix!1790 lt!1366309 (_2!23544 (v!39219 lt!1366323)) lt!1366309 lt!1366318 lt!1366319))))

(declare-fun getSuffix!2024 (List!41680 List!41680) List!41680)

(assert (=> b!3920563 (= lt!1366318 (getSuffix!2024 lt!1366319 lt!1366309))))

(declare-fun isPrefix!3569 (List!41680 List!41680) Bool)

(assert (=> b!3920563 (isPrefix!3569 lt!1366309 lt!1366325)))

(declare-fun ++!10705 (List!41680 List!41680) List!41680)

(assert (=> b!3920563 (= lt!1366325 (++!10705 lt!1366309 (_2!23544 (v!39219 lt!1366323))))))

(declare-fun lt!1366310 () Unit!59704)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2432 (List!41680 List!41680) Unit!59704)

(assert (=> b!3920563 (= lt!1366310 (lemmaConcatTwoListThenFirstIsPrefix!2432 lt!1366309 (_2!23544 (v!39219 lt!1366323))))))

(declare-fun list!15451 (BalanceConc!24964) List!41680)

(declare-fun charsOf!4298 (Token!12086) BalanceConc!24964)

(assert (=> b!3920563 (= lt!1366309 (list!15451 (charsOf!4298 (_1!23544 (v!39219 lt!1366323)))))))

(declare-fun ruleValid!2422 (LexerInterface!6063 Rule!12748) Bool)

(assert (=> b!3920563 (ruleValid!2422 thiss!20629 (rule!9406 (_1!23544 (v!39219 lt!1366323))))))

(declare-fun lt!1366321 () Unit!59704)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1502 (LexerInterface!6063 Rule!12748 List!41682) Unit!59704)

(assert (=> b!3920563 (= lt!1366321 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1502 thiss!20629 (rule!9406 (_1!23544 (v!39219 lt!1366323))) rules!2768))))

(declare-fun lt!1366301 () Unit!59704)

(declare-fun lemmaCharactersSize!1131 (Token!12086) Unit!59704)

(assert (=> b!3920563 (= lt!1366301 (lemmaCharactersSize!1131 (_1!23544 (v!39219 lt!1366323))))))

(declare-fun b!3920564 () Bool)

(declare-fun e!2424246 () Bool)

(assert (=> b!3920564 (= e!2424246 false)))

(declare-fun b!3920565 () Bool)

(declare-fun e!2424248 () Bool)

(assert (=> b!3920565 (= e!2424248 e!2424245)))

(declare-fun res!1585953 () Bool)

(assert (=> b!3920565 (=> (not res!1585953) (not e!2424245))))

(assert (=> b!3920565 (= res!1585953 ((_ is Some!8893) lt!1366323))))

(declare-fun maxPrefix!3367 (LexerInterface!6063 List!41682 List!41680) Option!8894)

(assert (=> b!3920565 (= lt!1366323 (maxPrefix!3367 thiss!20629 rules!2768 lt!1366319))))

(declare-fun b!3920566 () Bool)

(declare-fun e!2424267 () Unit!59704)

(declare-fun Unit!59706 () Unit!59704)

(assert (=> b!3920566 (= e!2424267 Unit!59706)))

(declare-fun e!2424255 () Bool)

(declare-fun b!3920567 () Bool)

(declare-fun tp!1193322 () Bool)

(declare-fun inv!55755 (Token!12086) Bool)

(assert (=> b!3920567 (= e!2424253 (and (inv!55755 (h!46977 prefixTokens!80)) e!2424255 tp!1193322))))

(declare-fun b!3920568 () Bool)

(declare-fun e!2424244 () Bool)

(assert (=> b!3920568 (= e!2424243 e!2424244)))

(declare-fun res!1585951 () Bool)

(assert (=> b!3920568 (=> (not res!1585951) (not e!2424244))))

(declare-fun lt!1366322 () List!41681)

(declare-fun suffixResult!91 () List!41680)

(declare-fun lt!1366308 () tuple2!40818)

(assert (=> b!3920568 (= res!1585951 (= lt!1366308 (tuple2!40819 lt!1366322 suffixResult!91)))))

(assert (=> b!3920568 (= lt!1366308 (lexList!1831 thiss!20629 rules!2768 lt!1366319))))

(declare-fun ++!10706 (List!41681 List!41681) List!41681)

(assert (=> b!3920568 (= lt!1366322 (++!10706 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41680)

(assert (=> b!3920568 (= lt!1366319 (++!10705 prefix!426 suffix!1176))))

(declare-fun b!3920569 () Bool)

(declare-fun e!2424250 () Unit!59704)

(declare-fun Unit!59707 () Unit!59704)

(assert (=> b!3920569 (= e!2424250 Unit!59707)))

(declare-fun lt!1366315 () tuple2!40820)

(declare-fun lt!1366302 () Unit!59704)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!522 (List!41680 List!41680 List!41680 List!41680) Unit!59704)

(assert (=> b!3920569 (= lt!1366302 (lemmaConcatSameAndSameSizesThenSameLists!522 lt!1366309 (_2!23544 (v!39219 lt!1366323)) lt!1366309 (_2!23544 lt!1366315)))))

(assert (=> b!3920569 (= (_2!23544 (v!39219 lt!1366323)) (_2!23544 lt!1366315))))

(declare-fun lt!1366311 () Unit!59704)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!74 (LexerInterface!6063 List!41682 List!41680 List!41680 List!41681 List!41680) Unit!59704)

(assert (=> b!3920569 (= lt!1366311 (lemmaLexWithSmallerInputCannotProduceSameResults!74 thiss!20629 rules!2768 suffix!1176 (_2!23544 lt!1366315) suffixTokens!72 suffixResult!91))))

(declare-fun res!1585949 () Bool)

(declare-fun call!284608 () tuple2!40818)

(declare-fun lt!1366305 () tuple2!40818)

(assert (=> b!3920569 (= res!1585949 (not (= call!284608 lt!1366305)))))

(declare-fun e!2424249 () Bool)

(assert (=> b!3920569 (=> (not res!1585949) (not e!2424249))))

(assert (=> b!3920569 e!2424249))

(declare-fun e!2424252 () Bool)

(declare-fun b!3920570 () Bool)

(declare-fun tp!1193317 () Bool)

(declare-fun inv!55752 (String!47238) Bool)

(declare-fun inv!55756 (TokenValueInjection!12836) Bool)

(assert (=> b!3920570 (= e!2424252 (and tp!1193317 (inv!55752 (tag!7334 (h!46978 rules!2768))) (inv!55756 (transformation!6474 (h!46978 rules!2768))) e!2424264))))

(declare-fun b!3920571 () Bool)

(assert (=> b!3920571 (= e!2424249 false)))

(declare-fun b!3920572 () Bool)

(declare-fun Unit!59708 () Unit!59704)

(assert (=> b!3920572 (= e!2424250 Unit!59708)))

(declare-fun lt!1366313 () List!41681)

(declare-fun lt!1366317 () Unit!59704)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!74 (LexerInterface!6063 List!41682 List!41680 List!41680 List!41681 List!41680 List!41681) Unit!59704)

(assert (=> b!3920572 (= lt!1366317 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!74 thiss!20629 rules!2768 suffix!1176 (_2!23544 lt!1366315) suffixTokens!72 suffixResult!91 lt!1366313))))

(declare-fun res!1585952 () Bool)

(assert (=> b!3920572 (= res!1585952 (not (= call!284608 (tuple2!40819 (++!10706 lt!1366313 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3920572 (=> (not res!1585952) (not e!2424246))))

(assert (=> b!3920572 e!2424246))

(declare-fun b!3920573 () Bool)

(declare-fun tp_is_empty!19729 () Bool)

(declare-fun tp!1193320 () Bool)

(assert (=> b!3920573 (= e!2424262 (and tp_is_empty!19729 tp!1193320))))

(declare-fun b!3920574 () Bool)

(declare-fun tp!1193319 () Bool)

(declare-fun e!2424240 () Bool)

(assert (=> b!3920574 (= e!2424255 (and (inv!21 (value!205143 (h!46977 prefixTokens!80))) e!2424240 tp!1193319))))

(declare-fun b!3920575 () Bool)

(declare-fun e!2424258 () Unit!59704)

(declare-fun Unit!59709 () Unit!59704)

(assert (=> b!3920575 (= e!2424258 Unit!59709)))

(declare-fun lt!1366303 () Int)

(assert (=> b!3920575 (= lt!1366303 (size!31202 lt!1366319))))

(declare-fun lt!1366304 () Unit!59704)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1305 (LexerInterface!6063 List!41682 List!41680 List!41680 List!41680 Rule!12748) Unit!59704)

(assert (=> b!3920575 (= lt!1366304 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1305 thiss!20629 rules!2768 lt!1366309 lt!1366319 (_2!23544 (v!39219 lt!1366323)) (rule!9406 (_1!23544 (v!39219 lt!1366323)))))))

(declare-fun maxPrefixOneRule!2437 (LexerInterface!6063 Rule!12748 List!41680) Option!8894)

(assert (=> b!3920575 (= (maxPrefixOneRule!2437 thiss!20629 (rule!9406 (_1!23544 (v!39219 lt!1366323))) lt!1366319) (Some!8893 (tuple2!40821 (Token!12087 lt!1366320 (rule!9406 (_1!23544 (v!39219 lt!1366323))) lt!1366316 lt!1366309) (_2!23544 (v!39219 lt!1366323)))))))

(declare-fun get!13731 (Option!8894) tuple2!40820)

(assert (=> b!3920575 (= lt!1366315 (get!13731 lt!1366323))))

(declare-fun c!681359 () Bool)

(declare-fun lt!1366306 () Int)

(assert (=> b!3920575 (= c!681359 (< (size!31202 (_2!23544 lt!1366315)) lt!1366306))))

(declare-fun lt!1366324 () Unit!59704)

(assert (=> b!3920575 (= lt!1366324 e!2424267)))

(assert (=> b!3920575 false))

(declare-fun tp!1193316 () Bool)

(declare-fun b!3920576 () Bool)

(declare-fun e!2424241 () Bool)

(assert (=> b!3920576 (= e!2424240 (and tp!1193316 (inv!55752 (tag!7334 (rule!9406 (h!46977 prefixTokens!80)))) (inv!55756 (transformation!6474 (rule!9406 (h!46977 prefixTokens!80)))) e!2424241))))

(declare-fun b!3920577 () Bool)

(declare-fun e!2424259 () Bool)

(declare-fun tp!1193306 () Bool)

(assert (=> b!3920577 (= e!2424266 (and tp!1193306 (inv!55752 (tag!7334 (rule!9406 (h!46977 suffixTokens!72)))) (inv!55756 (transformation!6474 (rule!9406 (h!46977 suffixTokens!72)))) e!2424259))))

(declare-fun b!3920578 () Bool)

(declare-fun tp!1193314 () Bool)

(assert (=> b!3920578 (= e!2424257 (and e!2424252 tp!1193314))))

(declare-fun b!3920579 () Bool)

(declare-fun res!1585958 () Bool)

(assert (=> b!3920579 (=> (not res!1585958) (not e!2424243))))

(declare-fun rulesInvariant!5406 (LexerInterface!6063 List!41682) Bool)

(assert (=> b!3920579 (= res!1585958 (rulesInvariant!5406 thiss!20629 rules!2768))))

(declare-fun b!3920580 () Bool)

(declare-fun res!1585957 () Bool)

(assert (=> b!3920580 (=> (not res!1585957) (not e!2424243))))

(declare-fun isEmpty!24741 (List!41680) Bool)

(assert (=> b!3920580 (= res!1585957 (not (isEmpty!24741 prefix!426)))))

(assert (=> b!3920581 (= e!2424259 (and tp!1193310 tp!1193321))))

(declare-fun b!3920582 () Bool)

(declare-fun tp!1193318 () Bool)

(assert (=> b!3920582 (= e!2424251 (and tp_is_empty!19729 tp!1193318))))

(declare-fun b!3920583 () Bool)

(assert (=> b!3920583 (= e!2424244 e!2424248)))

(declare-fun res!1585947 () Bool)

(assert (=> b!3920583 (=> (not res!1585947) (not e!2424248))))

(assert (=> b!3920583 (= res!1585947 (= (lexList!1831 thiss!20629 rules!2768 suffix!1176) lt!1366305))))

(assert (=> b!3920583 (= lt!1366305 (tuple2!40819 suffixTokens!72 suffixResult!91))))

(declare-fun b!3920584 () Bool)

(declare-fun Unit!59710 () Unit!59704)

(assert (=> b!3920584 (= e!2424258 Unit!59710)))

(assert (=> b!3920585 (= e!2424241 (and tp!1193311 tp!1193307))))

(declare-fun b!3920586 () Bool)

(assert (=> b!3920586 (= e!2424239 true)))

(declare-fun lt!1366314 () Unit!59704)

(assert (=> b!3920586 (= lt!1366314 e!2424258)))

(declare-fun c!681358 () Bool)

(declare-fun lt!1366300 () Int)

(assert (=> b!3920586 (= c!681358 (< lt!1366300 lt!1366306))))

(assert (=> b!3920586 (= lt!1366306 (size!31202 suffix!1176))))

(assert (=> b!3920586 (= lt!1366300 (size!31202 (_2!23544 (v!39219 lt!1366323))))))

(declare-fun bm!284603 () Bool)

(assert (=> bm!284603 (= call!284608 (lexList!1831 thiss!20629 rules!2768 (_2!23544 lt!1366315)))))

(declare-fun b!3920587 () Bool)

(declare-fun res!1585950 () Bool)

(assert (=> b!3920587 (=> res!1585950 e!2424239)))

(assert (=> b!3920587 (= res!1585950 (not (= lt!1366308 (tuple2!40819 (++!10706 (Cons!41557 (_1!23544 (v!39219 lt!1366323)) Nil!41557) (_1!23543 lt!1366307)) (_2!23543 lt!1366307)))))))

(declare-fun b!3920588 () Bool)

(declare-fun res!1585955 () Bool)

(assert (=> b!3920588 (=> (not res!1585955) (not e!2424243))))

(declare-fun isEmpty!24742 (List!41682) Bool)

(assert (=> b!3920588 (= res!1585955 (not (isEmpty!24742 rules!2768)))))

(declare-fun b!3920589 () Bool)

(declare-fun tp!1193312 () Bool)

(assert (=> b!3920589 (= e!2424265 (and tp_is_empty!19729 tp!1193312))))

(declare-fun b!3920590 () Bool)

(declare-fun tp!1193309 () Bool)

(assert (=> b!3920590 (= e!2424256 (and (inv!55755 (h!46977 suffixTokens!72)) e!2424263 tp!1193309))))

(declare-fun b!3920591 () Bool)

(declare-fun c!681357 () Bool)

(assert (=> b!3920591 (= c!681357 (isEmpty!24740 lt!1366313))))

(declare-fun tail!6013 (List!41681) List!41681)

(assert (=> b!3920591 (= lt!1366313 (tail!6013 prefixTokens!80))))

(assert (=> b!3920591 (= e!2424267 e!2424250)))

(declare-fun b!3920592 () Bool)

(assert (=> b!3920592 (= e!2424268 (= (size!31201 (_1!23544 (v!39219 lt!1366323))) (size!31202 (originalCharacters!7074 (_1!23544 (v!39219 lt!1366323))))))))

(assert (= (and start!367628 res!1585956) b!3920588))

(assert (= (and b!3920588 res!1585955) b!3920579))

(assert (= (and b!3920579 res!1585958) b!3920560))

(assert (= (and b!3920560 res!1585945) b!3920580))

(assert (= (and b!3920580 res!1585957) b!3920568))

(assert (= (and b!3920568 res!1585951) b!3920583))

(assert (= (and b!3920583 res!1585947) b!3920565))

(assert (= (and b!3920565 res!1585953) b!3920563))

(assert (= (and b!3920563 res!1585954) b!3920592))

(assert (= (and b!3920563 (not res!1585948)) b!3920587))

(assert (= (and b!3920587 (not res!1585950)) b!3920561))

(assert (= (and b!3920561 (not res!1585946)) b!3920586))

(assert (= (and b!3920586 c!681358) b!3920575))

(assert (= (and b!3920586 (not c!681358)) b!3920584))

(assert (= (and b!3920575 c!681359) b!3920591))

(assert (= (and b!3920575 (not c!681359)) b!3920566))

(assert (= (and b!3920591 c!681357) b!3920569))

(assert (= (and b!3920591 (not c!681357)) b!3920572))

(assert (= (and b!3920569 res!1585949) b!3920571))

(assert (= (and b!3920572 res!1585952) b!3920564))

(assert (= (or b!3920569 b!3920572) bm!284603))

(assert (= (and start!367628 ((_ is Cons!41556) suffixResult!91)) b!3920589))

(assert (= (and start!367628 ((_ is Cons!41556) suffix!1176)) b!3920573))

(assert (= b!3920570 b!3920559))

(assert (= b!3920578 b!3920570))

(assert (= (and start!367628 ((_ is Cons!41558) rules!2768)) b!3920578))

(assert (= b!3920576 b!3920585))

(assert (= b!3920574 b!3920576))

(assert (= b!3920567 b!3920574))

(assert (= (and start!367628 ((_ is Cons!41557) prefixTokens!80)) b!3920567))

(assert (= b!3920577 b!3920581))

(assert (= b!3920562 b!3920577))

(assert (= b!3920590 b!3920562))

(assert (= (and start!367628 ((_ is Cons!41557) suffixTokens!72)) b!3920590))

(assert (= (and start!367628 ((_ is Cons!41556) prefix!426)) b!3920582))

(declare-fun m!4484291 () Bool)

(assert (=> b!3920565 m!4484291))

(declare-fun m!4484293 () Bool)

(assert (=> b!3920575 m!4484293))

(declare-fun m!4484295 () Bool)

(assert (=> b!3920575 m!4484295))

(declare-fun m!4484297 () Bool)

(assert (=> b!3920575 m!4484297))

(declare-fun m!4484299 () Bool)

(assert (=> b!3920575 m!4484299))

(declare-fun m!4484301 () Bool)

(assert (=> b!3920575 m!4484301))

(declare-fun m!4484303 () Bool)

(assert (=> b!3920568 m!4484303))

(declare-fun m!4484305 () Bool)

(assert (=> b!3920568 m!4484305))

(declare-fun m!4484307 () Bool)

(assert (=> b!3920568 m!4484307))

(declare-fun m!4484309 () Bool)

(assert (=> b!3920562 m!4484309))

(declare-fun m!4484311 () Bool)

(assert (=> b!3920560 m!4484311))

(declare-fun m!4484313 () Bool)

(assert (=> b!3920592 m!4484313))

(declare-fun m!4484315 () Bool)

(assert (=> b!3920572 m!4484315))

(declare-fun m!4484317 () Bool)

(assert (=> b!3920572 m!4484317))

(declare-fun m!4484319 () Bool)

(assert (=> b!3920587 m!4484319))

(declare-fun m!4484321 () Bool)

(assert (=> b!3920580 m!4484321))

(declare-fun m!4484323 () Bool)

(assert (=> b!3920577 m!4484323))

(declare-fun m!4484325 () Bool)

(assert (=> b!3920577 m!4484325))

(declare-fun m!4484327 () Bool)

(assert (=> b!3920579 m!4484327))

(declare-fun m!4484329 () Bool)

(assert (=> b!3920563 m!4484329))

(declare-fun m!4484331 () Bool)

(assert (=> b!3920563 m!4484331))

(declare-fun m!4484333 () Bool)

(assert (=> b!3920563 m!4484333))

(declare-fun m!4484335 () Bool)

(assert (=> b!3920563 m!4484335))

(declare-fun m!4484337 () Bool)

(assert (=> b!3920563 m!4484337))

(declare-fun m!4484339 () Bool)

(assert (=> b!3920563 m!4484339))

(declare-fun m!4484341 () Bool)

(assert (=> b!3920563 m!4484341))

(declare-fun m!4484343 () Bool)

(assert (=> b!3920563 m!4484343))

(assert (=> b!3920563 m!4484335))

(declare-fun m!4484345 () Bool)

(assert (=> b!3920563 m!4484345))

(declare-fun m!4484347 () Bool)

(assert (=> b!3920563 m!4484347))

(assert (=> b!3920563 m!4484329))

(declare-fun m!4484349 () Bool)

(assert (=> b!3920563 m!4484349))

(declare-fun m!4484351 () Bool)

(assert (=> b!3920563 m!4484351))

(declare-fun m!4484353 () Bool)

(assert (=> b!3920563 m!4484353))

(declare-fun m!4484355 () Bool)

(assert (=> b!3920563 m!4484355))

(declare-fun m!4484357 () Bool)

(assert (=> b!3920586 m!4484357))

(declare-fun m!4484359 () Bool)

(assert (=> b!3920586 m!4484359))

(declare-fun m!4484361 () Bool)

(assert (=> b!3920583 m!4484361))

(declare-fun m!4484363 () Bool)

(assert (=> b!3920591 m!4484363))

(declare-fun m!4484365 () Bool)

(assert (=> b!3920591 m!4484365))

(declare-fun m!4484367 () Bool)

(assert (=> b!3920574 m!4484367))

(declare-fun m!4484369 () Bool)

(assert (=> b!3920569 m!4484369))

(declare-fun m!4484371 () Bool)

(assert (=> b!3920569 m!4484371))

(declare-fun m!4484373 () Bool)

(assert (=> b!3920567 m!4484373))

(declare-fun m!4484375 () Bool)

(assert (=> b!3920576 m!4484375))

(declare-fun m!4484377 () Bool)

(assert (=> b!3920576 m!4484377))

(declare-fun m!4484379 () Bool)

(assert (=> b!3920588 m!4484379))

(declare-fun m!4484381 () Bool)

(assert (=> bm!284603 m!4484381))

(declare-fun m!4484383 () Bool)

(assert (=> b!3920590 m!4484383))

(declare-fun m!4484385 () Bool)

(assert (=> b!3920570 m!4484385))

(declare-fun m!4484387 () Bool)

(assert (=> b!3920570 m!4484387))

(check-sat (not b!3920565) (not b!3920575) (not b!3920583) (not b!3920589) (not b!3920576) b_and!298809 (not b!3920580) (not b!3920577) b_and!298799 b_and!298807 b_and!298805 (not b!3920569) (not b!3920570) (not b!3920573) b_and!298803 (not b!3920587) (not b!3920590) (not b!3920568) (not b!3920563) (not b!3920588) (not b_next!107303) (not b_next!107297) (not b!3920586) (not b!3920592) (not b_next!107295) (not b!3920567) (not b_next!107293) (not bm!284603) (not b!3920572) (not b!3920578) (not b_next!107299) (not b!3920579) b_and!298801 (not b!3920591) (not b!3920562) tp_is_empty!19729 (not b_next!107301) (not b!3920582) (not b!3920574) (not b!3920560))
(check-sat b_and!298803 (not b_next!107303) b_and!298809 (not b_next!107293) (not b_next!107299) b_and!298801 (not b_next!107301) b_and!298799 b_and!298807 b_and!298805 (not b_next!107297) (not b_next!107295))

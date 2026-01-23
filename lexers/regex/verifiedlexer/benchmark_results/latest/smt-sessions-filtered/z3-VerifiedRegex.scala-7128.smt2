; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378416 () Bool)

(assert start!378416)

(declare-fun b!4017327 () Bool)

(declare-fun b_free!111729 () Bool)

(declare-fun b_next!112433 () Bool)

(assert (=> b!4017327 (= b_free!111729 (not b_next!112433))))

(declare-fun tp!1221348 () Bool)

(declare-fun b_and!308631 () Bool)

(assert (=> b!4017327 (= tp!1221348 b_and!308631)))

(declare-fun b_free!111731 () Bool)

(declare-fun b_next!112435 () Bool)

(assert (=> b!4017327 (= b_free!111731 (not b_next!112435))))

(declare-fun tp!1221352 () Bool)

(declare-fun b_and!308633 () Bool)

(assert (=> b!4017327 (= tp!1221352 b_and!308633)))

(declare-fun b!4017320 () Bool)

(declare-fun b_free!111733 () Bool)

(declare-fun b_next!112437 () Bool)

(assert (=> b!4017320 (= b_free!111733 (not b_next!112437))))

(declare-fun tp!1221351 () Bool)

(declare-fun b_and!308635 () Bool)

(assert (=> b!4017320 (= tp!1221351 b_and!308635)))

(declare-fun b_free!111735 () Bool)

(declare-fun b_next!112439 () Bool)

(assert (=> b!4017320 (= b_free!111735 (not b_next!112439))))

(declare-fun tp!1221349 () Bool)

(declare-fun b_and!308637 () Bool)

(assert (=> b!4017320 (= tp!1221349 b_and!308637)))

(declare-fun b!4017311 () Bool)

(declare-fun e!2491608 () Bool)

(declare-fun e!2491617 () Bool)

(assert (=> b!4017311 (= e!2491608 e!2491617)))

(declare-fun res!1633990 () Bool)

(assert (=> b!4017311 (=> (not res!1633990) (not e!2491617))))

(declare-datatypes ((C!23684 0))(
  ( (C!23685 (val!13936 Int)) )
))
(declare-datatypes ((List!43106 0))(
  ( (Nil!42982) (Cons!42982 (h!48402 C!23684) (t!333439 List!43106)) )
))
(declare-fun lt!1424330 () List!43106)

(declare-fun lt!1424335 () List!43106)

(assert (=> b!4017311 (= res!1633990 (= lt!1424330 lt!1424335))))

(declare-fun prefix!494 () List!43106)

(declare-fun newSuffix!27 () List!43106)

(declare-fun ++!11246 (List!43106 List!43106) List!43106)

(assert (=> b!4017311 (= lt!1424335 (++!11246 prefix!494 newSuffix!27))))

(declare-fun lt!1424312 () List!43106)

(declare-fun newSuffixResult!27 () List!43106)

(assert (=> b!4017311 (= lt!1424330 (++!11246 lt!1424312 newSuffixResult!27))))

(declare-fun b!4017312 () Bool)

(declare-fun tp!1221344 () Bool)

(declare-fun e!2491616 () Bool)

(declare-fun e!2491636 () Bool)

(declare-datatypes ((IArray!26115 0))(
  ( (IArray!26116 (innerList!13115 List!43106)) )
))
(declare-datatypes ((Conc!13055 0))(
  ( (Node!13055 (left!32411 Conc!13055) (right!32741 Conc!13055) (csize!26340 Int) (cheight!13266 Int)) (Leaf!20184 (xs!16361 IArray!26115) (csize!26341 Int)) (Empty!13055) )
))
(declare-datatypes ((BalanceConc!25704 0))(
  ( (BalanceConc!25705 (c!694408 Conc!13055)) )
))
(declare-datatypes ((List!43107 0))(
  ( (Nil!42983) (Cons!42983 (h!48403 (_ BitVec 16)) (t!333440 List!43107)) )
))
(declare-datatypes ((TokenValue!7074 0))(
  ( (FloatLiteralValue!14148 (text!49963 List!43107)) (TokenValueExt!7073 (__x!26365 Int)) (Broken!35370 (value!215662 List!43107)) (Object!7197) (End!7074) (Def!7074) (Underscore!7074) (Match!7074) (Else!7074) (Error!7074) (Case!7074) (If!7074) (Extends!7074) (Abstract!7074) (Class!7074) (Val!7074) (DelimiterValue!14148 (del!7134 List!43107)) (KeywordValue!7080 (value!215663 List!43107)) (CommentValue!14148 (value!215664 List!43107)) (WhitespaceValue!14148 (value!215665 List!43107)) (IndentationValue!7074 (value!215666 List!43107)) (String!49087) (Int32!7074) (Broken!35371 (value!215667 List!43107)) (Boolean!7075) (Unit!62043) (OperatorValue!7077 (op!7134 List!43107)) (IdentifierValue!14148 (value!215668 List!43107)) (IdentifierValue!14149 (value!215669 List!43107)) (WhitespaceValue!14149 (value!215670 List!43107)) (True!14148) (False!14148) (Broken!35372 (value!215671 List!43107)) (Broken!35373 (value!215672 List!43107)) (True!14149) (RightBrace!7074) (RightBracket!7074) (Colon!7074) (Null!7074) (Comma!7074) (LeftBracket!7074) (False!14149) (LeftBrace!7074) (ImaginaryLiteralValue!7074 (text!49964 List!43107)) (StringLiteralValue!21222 (value!215673 List!43107)) (EOFValue!7074 (value!215674 List!43107)) (IdentValue!7074 (value!215675 List!43107)) (DelimiterValue!14149 (value!215676 List!43107)) (DedentValue!7074 (value!215677 List!43107)) (NewLineValue!7074 (value!215678 List!43107)) (IntegerValue!21222 (value!215679 (_ BitVec 32)) (text!49965 List!43107)) (IntegerValue!21223 (value!215680 Int) (text!49966 List!43107)) (Times!7074) (Or!7074) (Equal!7074) (Minus!7074) (Broken!35374 (value!215681 List!43107)) (And!7074) (Div!7074) (LessEqual!7074) (Mod!7074) (Concat!18823) (Not!7074) (Plus!7074) (SpaceValue!7074 (value!215682 List!43107)) (IntegerValue!21224 (value!215683 Int) (text!49967 List!43107)) (StringLiteralValue!21223 (text!49968 List!43107)) (FloatLiteralValue!14149 (text!49969 List!43107)) (BytesLiteralValue!7074 (value!215684 List!43107)) (CommentValue!14149 (value!215685 List!43107)) (StringLiteralValue!21224 (value!215686 List!43107)) (ErrorTokenValue!7074 (msg!7135 List!43107)) )
))
(declare-datatypes ((Regex!11749 0))(
  ( (ElementMatch!11749 (c!694409 C!23684)) (Concat!18824 (regOne!24010 Regex!11749) (regTwo!24010 Regex!11749)) (EmptyExpr!11749) (Star!11749 (reg!12078 Regex!11749)) (EmptyLang!11749) (Union!11749 (regOne!24011 Regex!11749) (regTwo!24011 Regex!11749)) )
))
(declare-datatypes ((String!49088 0))(
  ( (String!49089 (value!215687 String)) )
))
(declare-datatypes ((TokenValueInjection!13576 0))(
  ( (TokenValueInjection!13577 (toValue!9352 Int) (toChars!9211 Int)) )
))
(declare-datatypes ((Rule!13488 0))(
  ( (Rule!13489 (regex!6844 Regex!11749) (tag!7704 String!49088) (isSeparator!6844 Bool) (transformation!6844 TokenValueInjection!13576)) )
))
(declare-datatypes ((List!43108 0))(
  ( (Nil!42984) (Cons!42984 (h!48404 Rule!13488) (t!333441 List!43108)) )
))
(declare-fun rules!2999 () List!43108)

(declare-fun inv!57413 (String!49088) Bool)

(declare-fun inv!57416 (TokenValueInjection!13576) Bool)

(assert (=> b!4017312 (= e!2491636 (and tp!1221344 (inv!57413 (tag!7704 (h!48404 rules!2999))) (inv!57416 (transformation!6844 (h!48404 rules!2999))) e!2491616))))

(declare-fun b!4017313 () Bool)

(declare-fun e!2491607 () Bool)

(declare-fun e!2491633 () Bool)

(assert (=> b!4017313 (= e!2491607 e!2491633)))

(declare-fun res!1633982 () Bool)

(assert (=> b!4017313 (=> res!1633982 e!2491633)))

(declare-fun lt!1424340 () List!43106)

(declare-fun isPrefix!3931 (List!43106 List!43106) Bool)

(assert (=> b!4017313 (= res!1633982 (not (isPrefix!3931 lt!1424312 lt!1424340)))))

(assert (=> b!4017313 (isPrefix!3931 prefix!494 lt!1424340)))

(declare-datatypes ((Unit!62044 0))(
  ( (Unit!62045) )
))
(declare-fun lt!1424313 () Unit!62044)

(declare-fun suffix!1299 () List!43106)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2772 (List!43106 List!43106) Unit!62044)

(assert (=> b!4017313 (= lt!1424313 (lemmaConcatTwoListThenFirstIsPrefix!2772 prefix!494 suffix!1299))))

(declare-fun lt!1424344 () List!43106)

(assert (=> b!4017313 (isPrefix!3931 lt!1424312 lt!1424344)))

(declare-fun lt!1424310 () Unit!62044)

(declare-fun suffixResult!105 () List!43106)

(assert (=> b!4017313 (= lt!1424310 (lemmaConcatTwoListThenFirstIsPrefix!2772 lt!1424312 suffixResult!105))))

(declare-fun b!4017314 () Bool)

(declare-fun res!1633980 () Bool)

(declare-fun e!2491606 () Bool)

(assert (=> b!4017314 (=> (not res!1633980) (not e!2491606))))

(assert (=> b!4017314 (= res!1633980 (isPrefix!3931 newSuffix!27 suffix!1299))))

(declare-fun b!4017315 () Bool)

(declare-fun e!2491623 () Bool)

(declare-fun tp_is_empty!20469 () Bool)

(declare-fun tp!1221347 () Bool)

(assert (=> b!4017315 (= e!2491623 (and tp_is_empty!20469 tp!1221347))))

(declare-datatypes ((Token!12826 0))(
  ( (Token!12827 (value!215688 TokenValue!7074) (rule!9896 Rule!13488) (size!32139 Int) (originalCharacters!7444 List!43106)) )
))
(declare-fun token!484 () Token!12826)

(declare-fun b!4017316 () Bool)

(declare-fun lt!1424317 () Int)

(declare-fun e!2491610 () Bool)

(assert (=> b!4017316 (= e!2491610 (and (= (size!32139 token!484) lt!1424317) (= (originalCharacters!7444 token!484) lt!1424312)))))

(declare-fun b!4017317 () Bool)

(declare-fun res!1633991 () Bool)

(assert (=> b!4017317 (=> (not res!1633991) (not e!2491606))))

(declare-fun isEmpty!25676 (List!43108) Bool)

(assert (=> b!4017317 (= res!1633991 (not (isEmpty!25676 rules!2999)))))

(declare-fun b!4017318 () Bool)

(declare-fun e!2491609 () Bool)

(assert (=> b!4017318 (= e!2491633 e!2491609)))

(declare-fun res!1633978 () Bool)

(assert (=> b!4017318 (=> res!1633978 e!2491609)))

(declare-fun lt!1424352 () List!43106)

(assert (=> b!4017318 (= res!1633978 (not (= lt!1424352 prefix!494)))))

(declare-fun lt!1424341 () List!43106)

(assert (=> b!4017318 (= lt!1424352 (++!11246 lt!1424312 lt!1424341))))

(declare-fun getSuffix!2356 (List!43106 List!43106) List!43106)

(assert (=> b!4017318 (= lt!1424341 (getSuffix!2356 prefix!494 lt!1424312))))

(assert (=> b!4017318 (isPrefix!3931 lt!1424312 prefix!494)))

(declare-fun lt!1424325 () Unit!62044)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!503 (List!43106 List!43106 List!43106) Unit!62044)

(assert (=> b!4017318 (= lt!1424325 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!503 prefix!494 lt!1424312 lt!1424340))))

(declare-fun b!4017319 () Bool)

(declare-fun e!2491630 () Bool)

(declare-fun e!2491613 () Bool)

(assert (=> b!4017319 (= e!2491630 e!2491613)))

(declare-fun res!1633983 () Bool)

(assert (=> b!4017319 (=> res!1633983 e!2491613)))

(declare-fun lt!1424331 () List!43106)

(assert (=> b!4017319 (= res!1633983 (not (isPrefix!3931 lt!1424331 lt!1424340)))))

(declare-fun lt!1424315 () List!43106)

(assert (=> b!4017319 (isPrefix!3931 lt!1424331 lt!1424315)))

(declare-fun lt!1424327 () Unit!62044)

(declare-fun lt!1424300 () List!43106)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!744 (List!43106 List!43106 List!43106) Unit!62044)

(assert (=> b!4017319 (= lt!1424327 (lemmaPrefixStaysPrefixWhenAddingToSuffix!744 lt!1424331 lt!1424335 lt!1424300))))

(assert (=> b!4017320 (= e!2491616 (and tp!1221351 tp!1221349))))

(declare-fun b!4017321 () Bool)

(declare-fun res!1633979 () Bool)

(assert (=> b!4017321 (=> res!1633979 e!2491613)))

(declare-fun lt!1424309 () List!43106)

(assert (=> b!4017321 (= res!1633979 (not (= lt!1424309 lt!1424335)))))

(declare-fun e!2491631 () Bool)

(declare-fun b!4017322 () Bool)

(declare-datatypes ((tuple2!42126 0))(
  ( (tuple2!42127 (_1!24197 Token!12826) (_2!24197 List!43106)) )
))
(declare-datatypes ((Option!9258 0))(
  ( (None!9257) (Some!9257 (v!39631 tuple2!42126)) )
))
(declare-fun lt!1424301 () Option!9258)

(declare-fun lt!1424319 () Token!12826)

(declare-fun lt!1424351 () List!43106)

(assert (=> b!4017322 (= e!2491631 (= lt!1424301 (Some!9257 (tuple2!42127 lt!1424319 lt!1424351))))))

(declare-fun b!4017323 () Bool)

(declare-fun e!2491634 () Bool)

(declare-fun tp!1221340 () Bool)

(declare-fun e!2491635 () Bool)

(declare-fun inv!21 (TokenValue!7074) Bool)

(assert (=> b!4017323 (= e!2491635 (and (inv!21 (value!215688 token!484)) e!2491634 tp!1221340))))

(declare-fun b!4017325 () Bool)

(declare-fun e!2491624 () Bool)

(assert (=> b!4017325 (= e!2491624 (not e!2491607))))

(declare-fun res!1633997 () Bool)

(assert (=> b!4017325 (=> res!1633997 e!2491607)))

(assert (=> b!4017325 (= res!1633997 (not (= lt!1424344 lt!1424340)))))

(assert (=> b!4017325 (= lt!1424344 (++!11246 lt!1424312 suffixResult!105))))

(declare-fun lt!1424353 () Unit!62044)

(declare-fun lemmaInv!1059 (TokenValueInjection!13576) Unit!62044)

(assert (=> b!4017325 (= lt!1424353 (lemmaInv!1059 (transformation!6844 (rule!9896 token!484))))))

(declare-datatypes ((LexerInterface!6433 0))(
  ( (LexerInterfaceExt!6430 (__x!26366 Int)) (Lexer!6431) )
))
(declare-fun thiss!21717 () LexerInterface!6433)

(declare-fun ruleValid!2776 (LexerInterface!6433 Rule!13488) Bool)

(assert (=> b!4017325 (ruleValid!2776 thiss!21717 (rule!9896 token!484))))

(declare-fun lt!1424348 () Unit!62044)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1850 (LexerInterface!6433 Rule!13488 List!43108) Unit!62044)

(assert (=> b!4017325 (= lt!1424348 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1850 thiss!21717 (rule!9896 token!484) rules!2999))))

(declare-fun b!4017326 () Bool)

(declare-fun e!2491620 () Bool)

(assert (=> b!4017326 (= e!2491620 e!2491631)))

(declare-fun res!1633992 () Bool)

(assert (=> b!4017326 (=> res!1633992 e!2491631)))

(declare-fun lt!1424323 () Int)

(assert (=> b!4017326 (= res!1633992 (<= lt!1424323 lt!1424317))))

(declare-fun lt!1424308 () Option!9258)

(declare-fun lt!1424347 () List!43106)

(assert (=> b!4017326 (= (_2!24197 (v!39631 lt!1424308)) lt!1424347)))

(declare-fun lt!1424320 () Unit!62044)

(declare-fun lemmaSamePrefixThenSameSuffix!2102 (List!43106 List!43106 List!43106 List!43106 List!43106) Unit!62044)

(assert (=> b!4017326 (= lt!1424320 (lemmaSamePrefixThenSameSuffix!2102 lt!1424331 (_2!24197 (v!39631 lt!1424308)) lt!1424331 lt!1424347 lt!1424335))))

(declare-fun lt!1424302 () List!43106)

(assert (=> b!4017326 (isPrefix!3931 lt!1424331 lt!1424302)))

(declare-fun lt!1424303 () Unit!62044)

(assert (=> b!4017326 (= lt!1424303 (lemmaConcatTwoListThenFirstIsPrefix!2772 lt!1424331 lt!1424347))))

(declare-fun e!2491632 () Bool)

(assert (=> b!4017327 (= e!2491632 (and tp!1221348 tp!1221352))))

(declare-fun b!4017328 () Bool)

(declare-fun e!2491626 () Bool)

(assert (=> b!4017328 (= e!2491626 e!2491630)))

(declare-fun res!1633981 () Bool)

(assert (=> b!4017328 (=> res!1633981 e!2491630)))

(assert (=> b!4017328 (= res!1633981 (not (= lt!1424315 lt!1424340)))))

(declare-fun lt!1424334 () List!43106)

(assert (=> b!4017328 (= lt!1424315 (++!11246 prefix!494 lt!1424334))))

(assert (=> b!4017328 (= lt!1424315 (++!11246 lt!1424335 lt!1424300))))

(declare-fun lt!1424305 () Unit!62044)

(declare-fun lemmaConcatAssociativity!2556 (List!43106 List!43106 List!43106) Unit!62044)

(assert (=> b!4017328 (= lt!1424305 (lemmaConcatAssociativity!2556 prefix!494 newSuffix!27 lt!1424300))))

(declare-fun b!4017329 () Bool)

(declare-fun e!2491611 () Bool)

(assert (=> b!4017329 (= e!2491611 e!2491626)))

(declare-fun res!1634001 () Bool)

(assert (=> b!4017329 (=> res!1634001 e!2491626)))

(assert (=> b!4017329 (= res!1634001 (not (= lt!1424334 suffix!1299)))))

(assert (=> b!4017329 (= lt!1424334 (++!11246 newSuffix!27 lt!1424300))))

(assert (=> b!4017329 (= lt!1424300 (getSuffix!2356 suffix!1299 newSuffix!27))))

(declare-fun b!4017330 () Bool)

(declare-fun e!2491612 () Bool)

(assert (=> b!4017330 (= e!2491612 e!2491611)))

(declare-fun res!1633977 () Bool)

(assert (=> b!4017330 (=> res!1633977 e!2491611)))

(declare-fun lt!1424307 () Option!9258)

(assert (=> b!4017330 (= res!1633977 (not (= lt!1424307 (Some!9257 (v!39631 lt!1424308)))))))

(assert (=> b!4017330 (isPrefix!3931 lt!1424331 (++!11246 lt!1424331 newSuffixResult!27))))

(declare-fun lt!1424343 () Unit!62044)

(assert (=> b!4017330 (= lt!1424343 (lemmaConcatTwoListThenFirstIsPrefix!2772 lt!1424331 newSuffixResult!27))))

(assert (=> b!4017330 (isPrefix!3931 lt!1424331 lt!1424309)))

(assert (=> b!4017330 (= lt!1424309 (++!11246 lt!1424331 (_2!24197 (v!39631 lt!1424308))))))

(declare-fun lt!1424333 () Unit!62044)

(assert (=> b!4017330 (= lt!1424333 (lemmaConcatTwoListThenFirstIsPrefix!2772 lt!1424331 (_2!24197 (v!39631 lt!1424308))))))

(declare-fun lt!1424298 () TokenValue!7074)

(assert (=> b!4017330 (= lt!1424307 (Some!9257 (tuple2!42127 (Token!12827 lt!1424298 (rule!9896 (_1!24197 (v!39631 lt!1424308))) lt!1424323 lt!1424331) (_2!24197 (v!39631 lt!1424308)))))))

(declare-fun maxPrefixOneRule!2751 (LexerInterface!6433 Rule!13488 List!43106) Option!9258)

(assert (=> b!4017330 (= lt!1424307 (maxPrefixOneRule!2751 thiss!21717 (rule!9896 (_1!24197 (v!39631 lt!1424308))) lt!1424335))))

(declare-fun size!32140 (List!43106) Int)

(assert (=> b!4017330 (= lt!1424323 (size!32140 lt!1424331))))

(declare-fun apply!10041 (TokenValueInjection!13576 BalanceConc!25704) TokenValue!7074)

(declare-fun seqFromList!5069 (List!43106) BalanceConc!25704)

(assert (=> b!4017330 (= lt!1424298 (apply!10041 (transformation!6844 (rule!9896 (_1!24197 (v!39631 lt!1424308)))) (seqFromList!5069 lt!1424331)))))

(declare-fun lt!1424322 () Unit!62044)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1569 (LexerInterface!6433 List!43108 List!43106 List!43106 List!43106 Rule!13488) Unit!62044)

(assert (=> b!4017330 (= lt!1424322 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1569 thiss!21717 rules!2999 lt!1424331 lt!1424335 (_2!24197 (v!39631 lt!1424308)) (rule!9896 (_1!24197 (v!39631 lt!1424308)))))))

(declare-fun list!15980 (BalanceConc!25704) List!43106)

(declare-fun charsOf!4660 (Token!12826) BalanceConc!25704)

(assert (=> b!4017330 (= lt!1424331 (list!15980 (charsOf!4660 (_1!24197 (v!39631 lt!1424308)))))))

(declare-fun lt!1424318 () Unit!62044)

(assert (=> b!4017330 (= lt!1424318 (lemmaInv!1059 (transformation!6844 (rule!9896 (_1!24197 (v!39631 lt!1424308))))))))

(assert (=> b!4017330 (ruleValid!2776 thiss!21717 (rule!9896 (_1!24197 (v!39631 lt!1424308))))))

(declare-fun lt!1424337 () Unit!62044)

(assert (=> b!4017330 (= lt!1424337 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1850 thiss!21717 (rule!9896 (_1!24197 (v!39631 lt!1424308))) rules!2999))))

(declare-fun lt!1424342 () Unit!62044)

(declare-fun lemmaCharactersSize!1403 (Token!12826) Unit!62044)

(assert (=> b!4017330 (= lt!1424342 (lemmaCharactersSize!1403 token!484))))

(declare-fun lt!1424304 () Unit!62044)

(assert (=> b!4017330 (= lt!1424304 (lemmaCharactersSize!1403 (_1!24197 (v!39631 lt!1424308))))))

(declare-fun b!4017331 () Bool)

(declare-fun tp!1221341 () Bool)

(assert (=> b!4017331 (= e!2491634 (and tp!1221341 (inv!57413 (tag!7704 (rule!9896 token!484))) (inv!57416 (transformation!6844 (rule!9896 token!484))) e!2491632))))

(declare-fun b!4017332 () Bool)

(assert (=> b!4017332 (= e!2491606 e!2491608)))

(declare-fun res!1633995 () Bool)

(assert (=> b!4017332 (=> (not res!1633995) (not e!2491608))))

(declare-fun lt!1424339 () Int)

(assert (=> b!4017332 (= res!1633995 (>= lt!1424339 lt!1424317))))

(assert (=> b!4017332 (= lt!1424317 (size!32140 lt!1424312))))

(assert (=> b!4017332 (= lt!1424339 (size!32140 prefix!494))))

(assert (=> b!4017332 (= lt!1424312 (list!15980 (charsOf!4660 token!484)))))

(declare-fun b!4017333 () Bool)

(declare-fun e!2491605 () Bool)

(declare-fun e!2491614 () Bool)

(assert (=> b!4017333 (= e!2491605 e!2491614)))

(declare-fun res!1633984 () Bool)

(assert (=> b!4017333 (=> res!1633984 e!2491614)))

(declare-fun matchR!5710 (Regex!11749 List!43106) Bool)

(assert (=> b!4017333 (= res!1633984 (not (matchR!5710 (regex!6844 (rule!9896 token!484)) lt!1424312)))))

(assert (=> b!4017333 (isPrefix!3931 lt!1424312 lt!1424335)))

(declare-fun lt!1424349 () Unit!62044)

(assert (=> b!4017333 (= lt!1424349 (lemmaPrefixStaysPrefixWhenAddingToSuffix!744 lt!1424312 prefix!494 newSuffix!27))))

(declare-fun lt!1424338 () Unit!62044)

(assert (=> b!4017333 (= lt!1424338 (lemmaPrefixStaysPrefixWhenAddingToSuffix!744 lt!1424312 prefix!494 suffix!1299))))

(declare-fun b!4017334 () Bool)

(declare-fun res!1633993 () Bool)

(assert (=> b!4017334 (=> res!1633993 e!2491631)))

(declare-fun contains!8546 (List!43108 Rule!13488) Bool)

(assert (=> b!4017334 (= res!1633993 (not (contains!8546 rules!2999 (rule!9896 (_1!24197 (v!39631 lt!1424308))))))))

(declare-fun b!4017335 () Bool)

(declare-fun e!2491618 () Bool)

(declare-fun tp!1221345 () Bool)

(assert (=> b!4017335 (= e!2491618 (and e!2491636 tp!1221345))))

(declare-fun b!4017336 () Bool)

(declare-fun e!2491622 () Bool)

(assert (=> b!4017336 (= e!2491622 e!2491612)))

(declare-fun res!1634000 () Bool)

(assert (=> b!4017336 (=> res!1634000 e!2491612)))

(get-info :version)

(assert (=> b!4017336 (= res!1634000 (not ((_ is Some!9257) lt!1424308)))))

(declare-fun maxPrefix!3731 (LexerInterface!6433 List!43108 List!43106) Option!9258)

(assert (=> b!4017336 (= lt!1424308 (maxPrefix!3731 thiss!21717 rules!2999 lt!1424335))))

(declare-fun lt!1424324 () tuple2!42126)

(assert (=> b!4017336 (and (= suffixResult!105 lt!1424351) (= lt!1424324 (tuple2!42127 lt!1424319 lt!1424351)))))

(declare-fun lt!1424350 () Unit!62044)

(assert (=> b!4017336 (= lt!1424350 (lemmaSamePrefixThenSameSuffix!2102 lt!1424312 suffixResult!105 lt!1424312 lt!1424351 lt!1424340))))

(declare-fun lt!1424326 () List!43106)

(assert (=> b!4017336 (isPrefix!3931 lt!1424312 lt!1424326)))

(declare-fun lt!1424346 () Unit!62044)

(assert (=> b!4017336 (= lt!1424346 (lemmaConcatTwoListThenFirstIsPrefix!2772 lt!1424312 lt!1424351))))

(declare-fun b!4017337 () Bool)

(declare-fun e!2491629 () Bool)

(declare-fun tp!1221350 () Bool)

(assert (=> b!4017337 (= e!2491629 (and tp_is_empty!20469 tp!1221350))))

(declare-fun b!4017338 () Bool)

(declare-fun res!1633999 () Bool)

(assert (=> b!4017338 (=> (not res!1633999) (not e!2491610))))

(assert (=> b!4017338 (= res!1633999 (= (size!32139 token!484) (size!32140 (originalCharacters!7444 token!484))))))

(declare-fun b!4017339 () Bool)

(declare-fun res!1633988 () Bool)

(assert (=> b!4017339 (=> res!1633988 e!2491631)))

(assert (=> b!4017339 (= res!1633988 (not (isPrefix!3931 lt!1424331 lt!1424335)))))

(declare-fun b!4017340 () Bool)

(declare-fun e!2491621 () Bool)

(assert (=> b!4017340 (= e!2491609 e!2491621)))

(declare-fun res!1633976 () Bool)

(assert (=> b!4017340 (=> res!1633976 e!2491621)))

(declare-fun lt!1424329 () List!43106)

(declare-fun lt!1424316 () List!43106)

(assert (=> b!4017340 (= res!1633976 (or (not (= lt!1424340 lt!1424329)) (not (= lt!1424340 lt!1424316))))))

(assert (=> b!4017340 (= lt!1424329 lt!1424316)))

(declare-fun lt!1424306 () List!43106)

(assert (=> b!4017340 (= lt!1424316 (++!11246 lt!1424312 lt!1424306))))

(assert (=> b!4017340 (= lt!1424329 (++!11246 lt!1424352 suffix!1299))))

(assert (=> b!4017340 (= lt!1424306 (++!11246 lt!1424341 suffix!1299))))

(declare-fun lt!1424345 () Unit!62044)

(assert (=> b!4017340 (= lt!1424345 (lemmaConcatAssociativity!2556 lt!1424312 lt!1424341 suffix!1299))))

(declare-fun b!4017341 () Bool)

(declare-fun res!1633985 () Bool)

(assert (=> b!4017341 (=> (not res!1633985) (not e!2491606))))

(assert (=> b!4017341 (= res!1633985 (>= (size!32140 suffix!1299) (size!32140 newSuffix!27)))))

(declare-fun res!1633996 () Bool)

(assert (=> start!378416 (=> (not res!1633996) (not e!2491606))))

(assert (=> start!378416 (= res!1633996 ((_ is Lexer!6431) thiss!21717))))

(assert (=> start!378416 e!2491606))

(assert (=> start!378416 e!2491623))

(declare-fun inv!57417 (Token!12826) Bool)

(assert (=> start!378416 (and (inv!57417 token!484) e!2491635)))

(declare-fun e!2491628 () Bool)

(assert (=> start!378416 e!2491628))

(declare-fun e!2491615 () Bool)

(assert (=> start!378416 e!2491615))

(declare-fun e!2491627 () Bool)

(assert (=> start!378416 e!2491627))

(assert (=> start!378416 true))

(assert (=> start!378416 e!2491618))

(assert (=> start!378416 e!2491629))

(declare-fun b!4017324 () Bool)

(assert (=> b!4017324 (= e!2491614 e!2491622)))

(declare-fun res!1633973 () Bool)

(assert (=> b!4017324 (=> res!1633973 e!2491622)))

(assert (=> b!4017324 (= res!1633973 (not (= lt!1424326 lt!1424340)))))

(assert (=> b!4017324 (= lt!1424326 (++!11246 lt!1424312 lt!1424351))))

(assert (=> b!4017324 (= lt!1424351 (getSuffix!2356 lt!1424340 lt!1424312))))

(assert (=> b!4017324 e!2491610))

(declare-fun res!1633986 () Bool)

(assert (=> b!4017324 (=> (not res!1633986) (not e!2491610))))

(assert (=> b!4017324 (= res!1633986 (isPrefix!3931 lt!1424340 lt!1424340))))

(declare-fun lt!1424336 () Unit!62044)

(declare-fun lemmaIsPrefixRefl!2507 (List!43106 List!43106) Unit!62044)

(assert (=> b!4017324 (= lt!1424336 (lemmaIsPrefixRefl!2507 lt!1424340 lt!1424340))))

(declare-fun b!4017342 () Bool)

(declare-fun res!1633987 () Bool)

(assert (=> b!4017342 (=> (not res!1633987) (not e!2491606))))

(declare-fun rulesInvariant!5776 (LexerInterface!6433 List!43108) Bool)

(assert (=> b!4017342 (= res!1633987 (rulesInvariant!5776 thiss!21717 rules!2999))))

(declare-fun b!4017343 () Bool)

(declare-fun tp!1221346 () Bool)

(assert (=> b!4017343 (= e!2491627 (and tp_is_empty!20469 tp!1221346))))

(declare-fun b!4017344 () Bool)

(declare-fun tp!1221342 () Bool)

(assert (=> b!4017344 (= e!2491628 (and tp_is_empty!20469 tp!1221342))))

(declare-fun b!4017345 () Bool)

(assert (=> b!4017345 (= e!2491621 e!2491605)))

(declare-fun res!1633989 () Bool)

(assert (=> b!4017345 (=> res!1633989 e!2491605)))

(declare-fun lt!1424299 () Option!9258)

(declare-fun lt!1424328 () Option!9258)

(assert (=> b!4017345 (= res!1633989 (not (= lt!1424299 lt!1424328)))))

(assert (=> b!4017345 (= lt!1424299 (Some!9257 (tuple2!42127 lt!1424319 suffixResult!105)))))

(assert (=> b!4017345 (= lt!1424299 (maxPrefixOneRule!2751 thiss!21717 (rule!9896 token!484) lt!1424340))))

(declare-fun lt!1424314 () TokenValue!7074)

(assert (=> b!4017345 (= lt!1424319 (Token!12827 lt!1424314 (rule!9896 token!484) lt!1424317 lt!1424312))))

(assert (=> b!4017345 (= lt!1424314 (apply!10041 (transformation!6844 (rule!9896 token!484)) (seqFromList!5069 lt!1424312)))))

(declare-fun lt!1424311 () Unit!62044)

(assert (=> b!4017345 (= lt!1424311 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1569 thiss!21717 rules!2999 lt!1424312 lt!1424340 suffixResult!105 (rule!9896 token!484)))))

(assert (=> b!4017345 (= lt!1424306 suffixResult!105)))

(declare-fun lt!1424332 () Unit!62044)

(assert (=> b!4017345 (= lt!1424332 (lemmaSamePrefixThenSameSuffix!2102 lt!1424312 lt!1424306 lt!1424312 suffixResult!105 lt!1424340))))

(assert (=> b!4017345 (isPrefix!3931 lt!1424312 lt!1424316)))

(declare-fun lt!1424321 () Unit!62044)

(assert (=> b!4017345 (= lt!1424321 (lemmaConcatTwoListThenFirstIsPrefix!2772 lt!1424312 lt!1424306))))

(declare-fun b!4017346 () Bool)

(assert (=> b!4017346 (= e!2491613 e!2491620)))

(declare-fun res!1633994 () Bool)

(assert (=> b!4017346 (=> res!1633994 e!2491620)))

(assert (=> b!4017346 (= res!1633994 (not (= lt!1424302 lt!1424335)))))

(assert (=> b!4017346 (= lt!1424302 (++!11246 lt!1424331 lt!1424347))))

(assert (=> b!4017346 (= lt!1424347 (getSuffix!2356 lt!1424335 lt!1424331))))

(declare-fun b!4017347 () Bool)

(declare-fun tp!1221343 () Bool)

(assert (=> b!4017347 (= e!2491615 (and tp_is_empty!20469 tp!1221343))))

(declare-fun b!4017348 () Bool)

(declare-fun res!1633974 () Bool)

(assert (=> b!4017348 (=> res!1633974 e!2491631)))

(assert (=> b!4017348 (= res!1633974 (not (contains!8546 rules!2999 (rule!9896 token!484))))))

(declare-fun b!4017349 () Bool)

(assert (=> b!4017349 (= e!2491617 e!2491624)))

(declare-fun res!1633975 () Bool)

(assert (=> b!4017349 (=> (not res!1633975) (not e!2491624))))

(assert (=> b!4017349 (= res!1633975 (= lt!1424301 lt!1424328))))

(assert (=> b!4017349 (= lt!1424328 (Some!9257 lt!1424324))))

(assert (=> b!4017349 (= lt!1424301 (maxPrefix!3731 thiss!21717 rules!2999 lt!1424340))))

(assert (=> b!4017349 (= lt!1424324 (tuple2!42127 token!484 suffixResult!105))))

(assert (=> b!4017349 (= lt!1424340 (++!11246 prefix!494 suffix!1299))))

(declare-fun b!4017350 () Bool)

(declare-fun res!1633998 () Bool)

(assert (=> b!4017350 (=> (not res!1633998) (not e!2491610))))

(assert (=> b!4017350 (= res!1633998 (= (value!215688 token!484) lt!1424314))))

(assert (= (and start!378416 res!1633996) b!4017317))

(assert (= (and b!4017317 res!1633991) b!4017342))

(assert (= (and b!4017342 res!1633987) b!4017341))

(assert (= (and b!4017341 res!1633985) b!4017314))

(assert (= (and b!4017314 res!1633980) b!4017332))

(assert (= (and b!4017332 res!1633995) b!4017311))

(assert (= (and b!4017311 res!1633990) b!4017349))

(assert (= (and b!4017349 res!1633975) b!4017325))

(assert (= (and b!4017325 (not res!1633997)) b!4017313))

(assert (= (and b!4017313 (not res!1633982)) b!4017318))

(assert (= (and b!4017318 (not res!1633978)) b!4017340))

(assert (= (and b!4017340 (not res!1633976)) b!4017345))

(assert (= (and b!4017345 (not res!1633989)) b!4017333))

(assert (= (and b!4017333 (not res!1633984)) b!4017324))

(assert (= (and b!4017324 res!1633986) b!4017350))

(assert (= (and b!4017350 res!1633998) b!4017338))

(assert (= (and b!4017338 res!1633999) b!4017316))

(assert (= (and b!4017324 (not res!1633973)) b!4017336))

(assert (= (and b!4017336 (not res!1634000)) b!4017330))

(assert (= (and b!4017330 (not res!1633977)) b!4017329))

(assert (= (and b!4017329 (not res!1634001)) b!4017328))

(assert (= (and b!4017328 (not res!1633981)) b!4017319))

(assert (= (and b!4017319 (not res!1633983)) b!4017321))

(assert (= (and b!4017321 (not res!1633979)) b!4017346))

(assert (= (and b!4017346 (not res!1633994)) b!4017326))

(assert (= (and b!4017326 (not res!1633992)) b!4017339))

(assert (= (and b!4017339 (not res!1633988)) b!4017348))

(assert (= (and b!4017348 (not res!1633974)) b!4017334))

(assert (= (and b!4017334 (not res!1633993)) b!4017322))

(assert (= (and start!378416 ((_ is Cons!42982) prefix!494)) b!4017315))

(assert (= b!4017331 b!4017327))

(assert (= b!4017323 b!4017331))

(assert (= start!378416 b!4017323))

(assert (= (and start!378416 ((_ is Cons!42982) suffixResult!105)) b!4017344))

(assert (= (and start!378416 ((_ is Cons!42982) suffix!1299)) b!4017347))

(assert (= (and start!378416 ((_ is Cons!42982) newSuffix!27)) b!4017343))

(assert (= b!4017312 b!4017320))

(assert (= b!4017335 b!4017312))

(assert (= (and start!378416 ((_ is Cons!42984) rules!2999)) b!4017335))

(assert (= (and start!378416 ((_ is Cons!42982) newSuffixResult!27)) b!4017337))

(declare-fun m!4605969 () Bool)

(assert (=> b!4017331 m!4605969))

(declare-fun m!4605971 () Bool)

(assert (=> b!4017331 m!4605971))

(declare-fun m!4605973 () Bool)

(assert (=> b!4017338 m!4605973))

(declare-fun m!4605975 () Bool)

(assert (=> b!4017348 m!4605975))

(declare-fun m!4605977 () Bool)

(assert (=> b!4017324 m!4605977))

(declare-fun m!4605979 () Bool)

(assert (=> b!4017324 m!4605979))

(declare-fun m!4605981 () Bool)

(assert (=> b!4017324 m!4605981))

(declare-fun m!4605983 () Bool)

(assert (=> b!4017324 m!4605983))

(declare-fun m!4605985 () Bool)

(assert (=> b!4017313 m!4605985))

(declare-fun m!4605987 () Bool)

(assert (=> b!4017313 m!4605987))

(declare-fun m!4605989 () Bool)

(assert (=> b!4017313 m!4605989))

(declare-fun m!4605991 () Bool)

(assert (=> b!4017313 m!4605991))

(declare-fun m!4605993 () Bool)

(assert (=> b!4017313 m!4605993))

(declare-fun m!4605995 () Bool)

(assert (=> b!4017346 m!4605995))

(declare-fun m!4605997 () Bool)

(assert (=> b!4017346 m!4605997))

(declare-fun m!4605999 () Bool)

(assert (=> b!4017325 m!4605999))

(declare-fun m!4606001 () Bool)

(assert (=> b!4017325 m!4606001))

(declare-fun m!4606003 () Bool)

(assert (=> b!4017325 m!4606003))

(declare-fun m!4606005 () Bool)

(assert (=> b!4017325 m!4606005))

(declare-fun m!4606007 () Bool)

(assert (=> b!4017345 m!4606007))

(declare-fun m!4606009 () Bool)

(assert (=> b!4017345 m!4606009))

(declare-fun m!4606011 () Bool)

(assert (=> b!4017345 m!4606011))

(assert (=> b!4017345 m!4606009))

(declare-fun m!4606013 () Bool)

(assert (=> b!4017345 m!4606013))

(declare-fun m!4606015 () Bool)

(assert (=> b!4017345 m!4606015))

(declare-fun m!4606017 () Bool)

(assert (=> b!4017345 m!4606017))

(declare-fun m!4606019 () Bool)

(assert (=> b!4017345 m!4606019))

(declare-fun m!4606021 () Bool)

(assert (=> start!378416 m!4606021))

(declare-fun m!4606023 () Bool)

(assert (=> b!4017341 m!4606023))

(declare-fun m!4606025 () Bool)

(assert (=> b!4017341 m!4606025))

(declare-fun m!4606027 () Bool)

(assert (=> b!4017312 m!4606027))

(declare-fun m!4606029 () Bool)

(assert (=> b!4017312 m!4606029))

(declare-fun m!4606031 () Bool)

(assert (=> b!4017329 m!4606031))

(declare-fun m!4606033 () Bool)

(assert (=> b!4017329 m!4606033))

(declare-fun m!4606035 () Bool)

(assert (=> b!4017336 m!4606035))

(declare-fun m!4606037 () Bool)

(assert (=> b!4017336 m!4606037))

(declare-fun m!4606039 () Bool)

(assert (=> b!4017336 m!4606039))

(declare-fun m!4606041 () Bool)

(assert (=> b!4017336 m!4606041))

(declare-fun m!4606043 () Bool)

(assert (=> b!4017334 m!4606043))

(declare-fun m!4606045 () Bool)

(assert (=> b!4017332 m!4606045))

(declare-fun m!4606047 () Bool)

(assert (=> b!4017332 m!4606047))

(declare-fun m!4606049 () Bool)

(assert (=> b!4017332 m!4606049))

(assert (=> b!4017332 m!4606049))

(declare-fun m!4606051 () Bool)

(assert (=> b!4017332 m!4606051))

(declare-fun m!4606053 () Bool)

(assert (=> b!4017326 m!4606053))

(declare-fun m!4606055 () Bool)

(assert (=> b!4017326 m!4606055))

(declare-fun m!4606057 () Bool)

(assert (=> b!4017326 m!4606057))

(declare-fun m!4606059 () Bool)

(assert (=> b!4017319 m!4606059))

(declare-fun m!4606061 () Bool)

(assert (=> b!4017319 m!4606061))

(declare-fun m!4606063 () Bool)

(assert (=> b!4017319 m!4606063))

(declare-fun m!4606065 () Bool)

(assert (=> b!4017328 m!4606065))

(declare-fun m!4606067 () Bool)

(assert (=> b!4017328 m!4606067))

(declare-fun m!4606069 () Bool)

(assert (=> b!4017328 m!4606069))

(declare-fun m!4606071 () Bool)

(assert (=> b!4017340 m!4606071))

(declare-fun m!4606073 () Bool)

(assert (=> b!4017340 m!4606073))

(declare-fun m!4606075 () Bool)

(assert (=> b!4017340 m!4606075))

(declare-fun m!4606077 () Bool)

(assert (=> b!4017340 m!4606077))

(declare-fun m!4606079 () Bool)

(assert (=> b!4017311 m!4606079))

(declare-fun m!4606081 () Bool)

(assert (=> b!4017311 m!4606081))

(declare-fun m!4606083 () Bool)

(assert (=> b!4017323 m!4606083))

(declare-fun m!4606085 () Bool)

(assert (=> b!4017318 m!4606085))

(declare-fun m!4606087 () Bool)

(assert (=> b!4017318 m!4606087))

(declare-fun m!4606089 () Bool)

(assert (=> b!4017318 m!4606089))

(declare-fun m!4606091 () Bool)

(assert (=> b!4017318 m!4606091))

(declare-fun m!4606093 () Bool)

(assert (=> b!4017339 m!4606093))

(declare-fun m!4606095 () Bool)

(assert (=> b!4017314 m!4606095))

(declare-fun m!4606097 () Bool)

(assert (=> b!4017333 m!4606097))

(declare-fun m!4606099 () Bool)

(assert (=> b!4017333 m!4606099))

(declare-fun m!4606101 () Bool)

(assert (=> b!4017333 m!4606101))

(declare-fun m!4606103 () Bool)

(assert (=> b!4017333 m!4606103))

(declare-fun m!4606105 () Bool)

(assert (=> b!4017317 m!4606105))

(declare-fun m!4606107 () Bool)

(assert (=> b!4017330 m!4606107))

(declare-fun m!4606109 () Bool)

(assert (=> b!4017330 m!4606109))

(declare-fun m!4606111 () Bool)

(assert (=> b!4017330 m!4606111))

(declare-fun m!4606113 () Bool)

(assert (=> b!4017330 m!4606113))

(declare-fun m!4606115 () Bool)

(assert (=> b!4017330 m!4606115))

(declare-fun m!4606117 () Bool)

(assert (=> b!4017330 m!4606117))

(assert (=> b!4017330 m!4606117))

(declare-fun m!4606119 () Bool)

(assert (=> b!4017330 m!4606119))

(declare-fun m!4606121 () Bool)

(assert (=> b!4017330 m!4606121))

(declare-fun m!4606123 () Bool)

(assert (=> b!4017330 m!4606123))

(declare-fun m!4606125 () Bool)

(assert (=> b!4017330 m!4606125))

(assert (=> b!4017330 m!4606107))

(declare-fun m!4606127 () Bool)

(assert (=> b!4017330 m!4606127))

(declare-fun m!4606129 () Bool)

(assert (=> b!4017330 m!4606129))

(declare-fun m!4606131 () Bool)

(assert (=> b!4017330 m!4606131))

(declare-fun m!4606133 () Bool)

(assert (=> b!4017330 m!4606133))

(declare-fun m!4606135 () Bool)

(assert (=> b!4017330 m!4606135))

(assert (=> b!4017330 m!4606133))

(declare-fun m!4606137 () Bool)

(assert (=> b!4017330 m!4606137))

(declare-fun m!4606139 () Bool)

(assert (=> b!4017330 m!4606139))

(declare-fun m!4606141 () Bool)

(assert (=> b!4017330 m!4606141))

(declare-fun m!4606143 () Bool)

(assert (=> b!4017349 m!4606143))

(declare-fun m!4606145 () Bool)

(assert (=> b!4017349 m!4606145))

(declare-fun m!4606147 () Bool)

(assert (=> b!4017342 m!4606147))

(check-sat (not b!4017339) (not b!4017313) (not b!4017347) (not b!4017330) (not b!4017345) (not b!4017342) (not b!4017312) (not b!4017333) (not b!4017332) (not b!4017323) (not start!378416) (not b!4017319) (not b!4017311) (not b!4017331) (not b!4017315) (not b!4017335) b_and!308633 (not b!4017314) (not b!4017348) (not b!4017326) (not b_next!112439) (not b_next!112435) (not b!4017337) (not b!4017324) (not b!4017344) (not b!4017325) (not b!4017329) (not b!4017318) (not b!4017336) (not b!4017334) (not b!4017349) (not b!4017343) (not b_next!112433) (not b!4017338) (not b_next!112437) (not b!4017317) (not b!4017328) b_and!308635 (not b!4017341) (not b!4017346) b_and!308637 b_and!308631 tp_is_empty!20469 (not b!4017340))
(check-sat b_and!308633 b_and!308635 b_and!308637 b_and!308631 (not b_next!112439) (not b_next!112435) (not b_next!112433) (not b_next!112437))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!379912 () Bool)

(assert start!379912)

(declare-fun b!4032347 () Bool)

(declare-fun b_free!112361 () Bool)

(declare-fun b_next!113065 () Bool)

(assert (=> b!4032347 (= b_free!112361 (not b_next!113065))))

(declare-fun tp!1225389 () Bool)

(declare-fun b_and!309883 () Bool)

(assert (=> b!4032347 (= tp!1225389 b_and!309883)))

(declare-fun b_free!112363 () Bool)

(declare-fun b_next!113067 () Bool)

(assert (=> b!4032347 (= b_free!112363 (not b_next!113067))))

(declare-fun tp!1225395 () Bool)

(declare-fun b_and!309885 () Bool)

(assert (=> b!4032347 (= tp!1225395 b_and!309885)))

(declare-fun b!4032365 () Bool)

(declare-fun b_free!112365 () Bool)

(declare-fun b_next!113069 () Bool)

(assert (=> b!4032365 (= b_free!112365 (not b_next!113069))))

(declare-fun tp!1225394 () Bool)

(declare-fun b_and!309887 () Bool)

(assert (=> b!4032365 (= tp!1225394 b_and!309887)))

(declare-fun b_free!112367 () Bool)

(declare-fun b_next!113071 () Bool)

(assert (=> b!4032365 (= b_free!112367 (not b_next!113071))))

(declare-fun tp!1225392 () Bool)

(declare-fun b_and!309889 () Bool)

(assert (=> b!4032365 (= tp!1225392 b_and!309889)))

(declare-fun b!4032342 () Bool)

(declare-fun res!1641581 () Bool)

(declare-fun e!2502023 () Bool)

(assert (=> b!4032342 (=> (not res!1641581) (not e!2502023))))

(declare-datatypes ((C!23816 0))(
  ( (C!23817 (val!14002 Int)) )
))
(declare-datatypes ((List!43319 0))(
  ( (Nil!43195) (Cons!43195 (h!48615 C!23816) (t!334322 List!43319)) )
))
(declare-datatypes ((IArray!26247 0))(
  ( (IArray!26248 (innerList!13181 List!43319)) )
))
(declare-datatypes ((Conc!13121 0))(
  ( (Node!13121 (left!32534 Conc!13121) (right!32864 Conc!13121) (csize!26472 Int) (cheight!13332 Int)) (Leaf!20283 (xs!16427 IArray!26247) (csize!26473 Int)) (Empty!13121) )
))
(declare-datatypes ((BalanceConc!25836 0))(
  ( (BalanceConc!25837 (c!696506 Conc!13121)) )
))
(declare-datatypes ((List!43320 0))(
  ( (Nil!43196) (Cons!43196 (h!48616 (_ BitVec 16)) (t!334323 List!43320)) )
))
(declare-datatypes ((TokenValue!7140 0))(
  ( (FloatLiteralValue!14280 (text!50425 List!43320)) (TokenValueExt!7139 (__x!26497 Int)) (Broken!35700 (value!217543 List!43320)) (Object!7263) (End!7140) (Def!7140) (Underscore!7140) (Match!7140) (Else!7140) (Error!7140) (Case!7140) (If!7140) (Extends!7140) (Abstract!7140) (Class!7140) (Val!7140) (DelimiterValue!14280 (del!7200 List!43320)) (KeywordValue!7146 (value!217544 List!43320)) (CommentValue!14280 (value!217545 List!43320)) (WhitespaceValue!14280 (value!217546 List!43320)) (IndentationValue!7140 (value!217547 List!43320)) (String!49417) (Int32!7140) (Broken!35701 (value!217548 List!43320)) (Boolean!7141) (Unit!62367) (OperatorValue!7143 (op!7200 List!43320)) (IdentifierValue!14280 (value!217549 List!43320)) (IdentifierValue!14281 (value!217550 List!43320)) (WhitespaceValue!14281 (value!217551 List!43320)) (True!14280) (False!14280) (Broken!35702 (value!217552 List!43320)) (Broken!35703 (value!217553 List!43320)) (True!14281) (RightBrace!7140) (RightBracket!7140) (Colon!7140) (Null!7140) (Comma!7140) (LeftBracket!7140) (False!14281) (LeftBrace!7140) (ImaginaryLiteralValue!7140 (text!50426 List!43320)) (StringLiteralValue!21420 (value!217554 List!43320)) (EOFValue!7140 (value!217555 List!43320)) (IdentValue!7140 (value!217556 List!43320)) (DelimiterValue!14281 (value!217557 List!43320)) (DedentValue!7140 (value!217558 List!43320)) (NewLineValue!7140 (value!217559 List!43320)) (IntegerValue!21420 (value!217560 (_ BitVec 32)) (text!50427 List!43320)) (IntegerValue!21421 (value!217561 Int) (text!50428 List!43320)) (Times!7140) (Or!7140) (Equal!7140) (Minus!7140) (Broken!35704 (value!217562 List!43320)) (And!7140) (Div!7140) (LessEqual!7140) (Mod!7140) (Concat!18955) (Not!7140) (Plus!7140) (SpaceValue!7140 (value!217563 List!43320)) (IntegerValue!21422 (value!217564 Int) (text!50429 List!43320)) (StringLiteralValue!21421 (text!50430 List!43320)) (FloatLiteralValue!14281 (text!50431 List!43320)) (BytesLiteralValue!7140 (value!217565 List!43320)) (CommentValue!14281 (value!217566 List!43320)) (StringLiteralValue!21422 (value!217567 List!43320)) (ErrorTokenValue!7140 (msg!7201 List!43320)) )
))
(declare-datatypes ((Regex!11815 0))(
  ( (ElementMatch!11815 (c!696507 C!23816)) (Concat!18956 (regOne!24142 Regex!11815) (regTwo!24142 Regex!11815)) (EmptyExpr!11815) (Star!11815 (reg!12144 Regex!11815)) (EmptyLang!11815) (Union!11815 (regOne!24143 Regex!11815) (regTwo!24143 Regex!11815)) )
))
(declare-datatypes ((String!49418 0))(
  ( (String!49419 (value!217568 String)) )
))
(declare-datatypes ((TokenValueInjection!13708 0))(
  ( (TokenValueInjection!13709 (toValue!9438 Int) (toChars!9297 Int)) )
))
(declare-datatypes ((Rule!13620 0))(
  ( (Rule!13621 (regex!6910 Regex!11815) (tag!7770 String!49418) (isSeparator!6910 Bool) (transformation!6910 TokenValueInjection!13708)) )
))
(declare-datatypes ((List!43321 0))(
  ( (Nil!43197) (Cons!43197 (h!48617 Rule!13620) (t!334324 List!43321)) )
))
(declare-fun rules!2999 () List!43321)

(declare-fun isEmpty!25775 (List!43321) Bool)

(assert (=> b!4032342 (= res!1641581 (not (isEmpty!25775 rules!2999)))))

(declare-fun b!4032343 () Bool)

(declare-fun res!1641570 () Bool)

(declare-fun e!2502029 () Bool)

(assert (=> b!4032343 (=> (not res!1641570) (not e!2502029))))

(declare-datatypes ((Token!12958 0))(
  ( (Token!12959 (value!217569 TokenValue!7140) (rule!9972 Rule!13620) (size!32285 Int) (originalCharacters!7510 List!43319)) )
))
(declare-fun token!484 () Token!12958)

(declare-fun size!32286 (List!43319) Int)

(assert (=> b!4032343 (= res!1641570 (= (size!32285 token!484) (size!32286 (originalCharacters!7510 token!484))))))

(declare-fun b!4032344 () Bool)

(declare-fun e!2502028 () Bool)

(declare-fun e!2502018 () Bool)

(assert (=> b!4032344 (= e!2502028 e!2502018)))

(declare-fun res!1641567 () Bool)

(assert (=> b!4032344 (=> res!1641567 e!2502018)))

(declare-fun lt!1433903 () List!43319)

(declare-fun lt!1433873 () List!43319)

(declare-fun lt!1433888 () List!43319)

(assert (=> b!4032344 (= res!1641567 (or (not (= lt!1433903 lt!1433888)) (not (= lt!1433903 lt!1433873))))))

(assert (=> b!4032344 (= lt!1433888 lt!1433873)))

(declare-fun lt!1433878 () List!43319)

(declare-fun lt!1433871 () List!43319)

(declare-fun ++!11312 (List!43319 List!43319) List!43319)

(assert (=> b!4032344 (= lt!1433873 (++!11312 lt!1433878 lt!1433871))))

(declare-fun lt!1433889 () List!43319)

(declare-fun suffix!1299 () List!43319)

(assert (=> b!4032344 (= lt!1433888 (++!11312 lt!1433889 suffix!1299))))

(declare-fun lt!1433894 () List!43319)

(assert (=> b!4032344 (= lt!1433871 (++!11312 lt!1433894 suffix!1299))))

(declare-datatypes ((Unit!62368 0))(
  ( (Unit!62369) )
))
(declare-fun lt!1433874 () Unit!62368)

(declare-fun lemmaConcatAssociativity!2614 (List!43319 List!43319 List!43319) Unit!62368)

(assert (=> b!4032344 (= lt!1433874 (lemmaConcatAssociativity!2614 lt!1433878 lt!1433894 suffix!1299))))

(declare-fun b!4032345 () Bool)

(declare-fun res!1641566 () Bool)

(assert (=> b!4032345 (=> (not res!1641566) (not e!2502023))))

(declare-datatypes ((LexerInterface!6499 0))(
  ( (LexerInterfaceExt!6496 (__x!26498 Int)) (Lexer!6497) )
))
(declare-fun thiss!21717 () LexerInterface!6499)

(declare-fun rulesInvariant!5842 (LexerInterface!6499 List!43321) Bool)

(assert (=> b!4032345 (= res!1641566 (rulesInvariant!5842 thiss!21717 rules!2999))))

(declare-fun b!4032346 () Bool)

(declare-fun res!1641585 () Bool)

(assert (=> b!4032346 (=> (not res!1641585) (not e!2502023))))

(declare-fun newSuffix!27 () List!43319)

(declare-fun isPrefix!3997 (List!43319 List!43319) Bool)

(assert (=> b!4032346 (= res!1641585 (isPrefix!3997 newSuffix!27 suffix!1299))))

(declare-fun e!2502020 () Bool)

(assert (=> b!4032347 (= e!2502020 (and tp!1225389 tp!1225395))))

(declare-fun b!4032348 () Bool)

(declare-fun e!2502025 () Bool)

(declare-fun tp_is_empty!20601 () Bool)

(declare-fun tp!1225386 () Bool)

(assert (=> b!4032348 (= e!2502025 (and tp_is_empty!20601 tp!1225386))))

(declare-fun b!4032349 () Bool)

(declare-fun e!2502031 () Bool)

(assert (=> b!4032349 (= e!2502031 e!2502028)))

(declare-fun res!1641577 () Bool)

(assert (=> b!4032349 (=> res!1641577 e!2502028)))

(declare-fun prefix!494 () List!43319)

(assert (=> b!4032349 (= res!1641577 (not (= lt!1433889 prefix!494)))))

(assert (=> b!4032349 (= lt!1433889 (++!11312 lt!1433878 lt!1433894))))

(declare-fun getSuffix!2414 (List!43319 List!43319) List!43319)

(assert (=> b!4032349 (= lt!1433894 (getSuffix!2414 prefix!494 lt!1433878))))

(assert (=> b!4032349 (isPrefix!3997 lt!1433878 prefix!494)))

(declare-fun lt!1433877 () Unit!62368)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!561 (List!43319 List!43319 List!43319) Unit!62368)

(assert (=> b!4032349 (= lt!1433877 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!561 prefix!494 lt!1433878 lt!1433903))))

(declare-fun b!4032350 () Bool)

(declare-fun e!2502037 () Bool)

(declare-fun tp!1225391 () Bool)

(assert (=> b!4032350 (= e!2502037 (and tp_is_empty!20601 tp!1225391))))

(declare-fun b!4032351 () Bool)

(declare-fun e!2502026 () Bool)

(declare-fun e!2502034 () Bool)

(assert (=> b!4032351 (= e!2502026 (not e!2502034))))

(declare-fun res!1641582 () Bool)

(assert (=> b!4032351 (=> res!1641582 e!2502034)))

(declare-fun lt!1433883 () List!43319)

(assert (=> b!4032351 (= res!1641582 (not (= lt!1433883 lt!1433903)))))

(declare-fun suffixResult!105 () List!43319)

(assert (=> b!4032351 (= lt!1433883 (++!11312 lt!1433878 suffixResult!105))))

(declare-fun lt!1433870 () Unit!62368)

(declare-fun lemmaInv!1119 (TokenValueInjection!13708) Unit!62368)

(assert (=> b!4032351 (= lt!1433870 (lemmaInv!1119 (transformation!6910 (rule!9972 token!484))))))

(declare-fun ruleValid!2840 (LexerInterface!6499 Rule!13620) Bool)

(assert (=> b!4032351 (ruleValid!2840 thiss!21717 (rule!9972 token!484))))

(declare-fun lt!1433898 () Unit!62368)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1910 (LexerInterface!6499 Rule!13620 List!43321) Unit!62368)

(assert (=> b!4032351 (= lt!1433898 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1910 thiss!21717 (rule!9972 token!484) rules!2999))))

(declare-fun b!4032352 () Bool)

(declare-fun res!1641579 () Bool)

(assert (=> b!4032352 (=> (not res!1641579) (not e!2502029))))

(declare-fun lt!1433869 () TokenValue!7140)

(assert (=> b!4032352 (= res!1641579 (= (value!217569 token!484) lt!1433869))))

(declare-fun b!4032353 () Bool)

(declare-fun e!2502036 () Bool)

(declare-fun e!2502027 () Bool)

(assert (=> b!4032353 (= e!2502036 e!2502027)))

(declare-fun res!1641575 () Bool)

(assert (=> b!4032353 (=> (not res!1641575) (not e!2502027))))

(declare-fun lt!1433880 () List!43319)

(declare-fun lt!1433887 () List!43319)

(assert (=> b!4032353 (= res!1641575 (= lt!1433880 lt!1433887))))

(assert (=> b!4032353 (= lt!1433887 (++!11312 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43319)

(assert (=> b!4032353 (= lt!1433880 (++!11312 lt!1433878 newSuffixResult!27))))

(declare-fun b!4032354 () Bool)

(declare-fun e!2502035 () Bool)

(declare-fun tp!1225387 () Bool)

(assert (=> b!4032354 (= e!2502035 (and tp_is_empty!20601 tp!1225387))))

(declare-fun b!4032355 () Bool)

(declare-fun e!2502042 () Bool)

(declare-fun tp!1225388 () Bool)

(assert (=> b!4032355 (= e!2502042 (and tp_is_empty!20601 tp!1225388))))

(declare-fun b!4032356 () Bool)

(declare-fun e!2502044 () Bool)

(declare-fun e!2502033 () Bool)

(assert (=> b!4032356 (= e!2502044 e!2502033)))

(declare-fun res!1641583 () Bool)

(assert (=> b!4032356 (=> res!1641583 e!2502033)))

(declare-fun matchR!5768 (Regex!11815 List!43319) Bool)

(assert (=> b!4032356 (= res!1641583 (not (matchR!5768 (regex!6910 (rule!9972 token!484)) lt!1433878)))))

(assert (=> b!4032356 (isPrefix!3997 lt!1433878 lt!1433887)))

(declare-fun lt!1433896 () Unit!62368)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!790 (List!43319 List!43319 List!43319) Unit!62368)

(assert (=> b!4032356 (= lt!1433896 (lemmaPrefixStaysPrefixWhenAddingToSuffix!790 lt!1433878 prefix!494 newSuffix!27))))

(declare-fun lt!1433876 () Unit!62368)

(assert (=> b!4032356 (= lt!1433876 (lemmaPrefixStaysPrefixWhenAddingToSuffix!790 lt!1433878 prefix!494 suffix!1299))))

(declare-fun b!4032357 () Bool)

(declare-fun e!2502041 () Bool)

(declare-fun e!2502019 () Bool)

(declare-fun tp!1225398 () Bool)

(assert (=> b!4032357 (= e!2502041 (and e!2502019 tp!1225398))))

(declare-fun b!4032358 () Bool)

(declare-fun e!2502022 () Bool)

(assert (=> b!4032358 (= e!2502033 e!2502022)))

(declare-fun res!1641580 () Bool)

(assert (=> b!4032358 (=> res!1641580 e!2502022)))

(declare-fun lt!1433893 () List!43319)

(assert (=> b!4032358 (= res!1641580 (not (= lt!1433893 lt!1433903)))))

(declare-fun lt!1433892 () List!43319)

(assert (=> b!4032358 (= lt!1433893 (++!11312 lt!1433878 lt!1433892))))

(assert (=> b!4032358 (= lt!1433892 (getSuffix!2414 lt!1433903 lt!1433878))))

(assert (=> b!4032358 e!2502029))

(declare-fun res!1641572 () Bool)

(assert (=> b!4032358 (=> (not res!1641572) (not e!2502029))))

(assert (=> b!4032358 (= res!1641572 (isPrefix!3997 lt!1433903 lt!1433903))))

(declare-fun lt!1433879 () Unit!62368)

(declare-fun lemmaIsPrefixRefl!2564 (List!43319 List!43319) Unit!62368)

(assert (=> b!4032358 (= lt!1433879 (lemmaIsPrefixRefl!2564 lt!1433903 lt!1433903))))

(declare-fun res!1641578 () Bool)

(assert (=> start!379912 (=> (not res!1641578) (not e!2502023))))

(get-info :version)

(assert (=> start!379912 (= res!1641578 ((_ is Lexer!6497) thiss!21717))))

(assert (=> start!379912 e!2502023))

(assert (=> start!379912 e!2502037))

(declare-fun e!2502032 () Bool)

(declare-fun inv!57709 (Token!12958) Bool)

(assert (=> start!379912 (and (inv!57709 token!484) e!2502032)))

(assert (=> start!379912 e!2502042))

(assert (=> start!379912 e!2502025))

(assert (=> start!379912 e!2502035))

(assert (=> start!379912 true))

(assert (=> start!379912 e!2502041))

(declare-fun e!2502024 () Bool)

(assert (=> start!379912 e!2502024))

(declare-fun b!4032359 () Bool)

(assert (=> b!4032359 (= e!2502027 e!2502026)))

(declare-fun res!1641573 () Bool)

(assert (=> b!4032359 (=> (not res!1641573) (not e!2502026))))

(declare-datatypes ((tuple2!42278 0))(
  ( (tuple2!42279 (_1!24273 Token!12958) (_2!24273 List!43319)) )
))
(declare-datatypes ((Option!9324 0))(
  ( (None!9323) (Some!9323 (v!39713 tuple2!42278)) )
))
(declare-fun lt!1433897 () Option!9324)

(declare-fun maxPrefix!3797 (LexerInterface!6499 List!43321 List!43319) Option!9324)

(assert (=> b!4032359 (= res!1641573 (= (maxPrefix!3797 thiss!21717 rules!2999 lt!1433903) lt!1433897))))

(declare-fun lt!1433872 () tuple2!42278)

(assert (=> b!4032359 (= lt!1433897 (Some!9323 lt!1433872))))

(assert (=> b!4032359 (= lt!1433872 (tuple2!42279 token!484 suffixResult!105))))

(assert (=> b!4032359 (= lt!1433903 (++!11312 prefix!494 suffix!1299))))

(declare-fun b!4032360 () Bool)

(declare-fun tp!1225393 () Bool)

(declare-fun e!2502017 () Bool)

(declare-fun inv!21 (TokenValue!7140) Bool)

(assert (=> b!4032360 (= e!2502032 (and (inv!21 (value!217569 token!484)) e!2502017 tp!1225393))))

(declare-fun b!4032361 () Bool)

(assert (=> b!4032361 (= e!2502023 e!2502036)))

(declare-fun res!1641584 () Bool)

(assert (=> b!4032361 (=> (not res!1641584) (not e!2502036))))

(declare-fun lt!1433900 () Int)

(declare-fun lt!1433895 () Int)

(assert (=> b!4032361 (= res!1641584 (>= lt!1433900 lt!1433895))))

(assert (=> b!4032361 (= lt!1433895 (size!32286 lt!1433878))))

(assert (=> b!4032361 (= lt!1433900 (size!32286 prefix!494))))

(declare-fun list!16072 (BalanceConc!25836) List!43319)

(declare-fun charsOf!4726 (Token!12958) BalanceConc!25836)

(assert (=> b!4032361 (= lt!1433878 (list!16072 (charsOf!4726 token!484)))))

(declare-fun b!4032362 () Bool)

(declare-fun tp!1225397 () Bool)

(assert (=> b!4032362 (= e!2502024 (and tp_is_empty!20601 tp!1225397))))

(declare-fun b!4032363 () Bool)

(declare-fun e!2502039 () Bool)

(declare-fun rulesValidInductive!2515 (LexerInterface!6499 List!43321) Bool)

(assert (=> b!4032363 (= e!2502039 (rulesValidInductive!2515 thiss!21717 rules!2999))))

(declare-fun tp!1225396 () Bool)

(declare-fun b!4032364 () Bool)

(declare-fun inv!57706 (String!49418) Bool)

(declare-fun inv!57710 (TokenValueInjection!13708) Bool)

(assert (=> b!4032364 (= e!2502017 (and tp!1225396 (inv!57706 (tag!7770 (rule!9972 token!484))) (inv!57710 (transformation!6910 (rule!9972 token!484))) e!2502020))))

(declare-fun e!2502038 () Bool)

(assert (=> b!4032365 (= e!2502038 (and tp!1225394 tp!1225392))))

(declare-fun tp!1225390 () Bool)

(declare-fun b!4032366 () Bool)

(assert (=> b!4032366 (= e!2502019 (and tp!1225390 (inv!57706 (tag!7770 (h!48617 rules!2999))) (inv!57710 (transformation!6910 (h!48617 rules!2999))) e!2502038))))

(declare-fun b!4032367 () Bool)

(assert (=> b!4032367 (= e!2502018 e!2502044)))

(declare-fun res!1641569 () Bool)

(assert (=> b!4032367 (=> res!1641569 e!2502044)))

(declare-fun lt!1433885 () Option!9324)

(assert (=> b!4032367 (= res!1641569 (not (= lt!1433885 lt!1433897)))))

(declare-fun lt!1433868 () Token!12958)

(assert (=> b!4032367 (= lt!1433885 (Some!9323 (tuple2!42279 lt!1433868 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2809 (LexerInterface!6499 Rule!13620 List!43319) Option!9324)

(assert (=> b!4032367 (= lt!1433885 (maxPrefixOneRule!2809 thiss!21717 (rule!9972 token!484) lt!1433903))))

(assert (=> b!4032367 (= lt!1433868 (Token!12959 lt!1433869 (rule!9972 token!484) lt!1433895 lt!1433878))))

(declare-fun apply!10099 (TokenValueInjection!13708 BalanceConc!25836) TokenValue!7140)

(declare-fun seqFromList!5127 (List!43319) BalanceConc!25836)

(assert (=> b!4032367 (= lt!1433869 (apply!10099 (transformation!6910 (rule!9972 token!484)) (seqFromList!5127 lt!1433878)))))

(declare-fun lt!1433901 () Unit!62368)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1615 (LexerInterface!6499 List!43321 List!43319 List!43319 List!43319 Rule!13620) Unit!62368)

(assert (=> b!4032367 (= lt!1433901 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1615 thiss!21717 rules!2999 lt!1433878 lt!1433903 suffixResult!105 (rule!9972 token!484)))))

(assert (=> b!4032367 (= lt!1433871 suffixResult!105)))

(declare-fun lt!1433884 () Unit!62368)

(declare-fun lemmaSamePrefixThenSameSuffix!2158 (List!43319 List!43319 List!43319 List!43319 List!43319) Unit!62368)

(assert (=> b!4032367 (= lt!1433884 (lemmaSamePrefixThenSameSuffix!2158 lt!1433878 lt!1433871 lt!1433878 suffixResult!105 lt!1433903))))

(assert (=> b!4032367 (isPrefix!3997 lt!1433878 lt!1433873)))

(declare-fun lt!1433882 () Unit!62368)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2832 (List!43319 List!43319) Unit!62368)

(assert (=> b!4032367 (= lt!1433882 (lemmaConcatTwoListThenFirstIsPrefix!2832 lt!1433878 lt!1433871))))

(declare-fun b!4032368 () Bool)

(assert (=> b!4032368 (= e!2502034 e!2502031)))

(declare-fun res!1641574 () Bool)

(assert (=> b!4032368 (=> res!1641574 e!2502031)))

(assert (=> b!4032368 (= res!1641574 (not (isPrefix!3997 lt!1433878 lt!1433903)))))

(assert (=> b!4032368 (isPrefix!3997 prefix!494 lt!1433903)))

(declare-fun lt!1433875 () Unit!62368)

(assert (=> b!4032368 (= lt!1433875 (lemmaConcatTwoListThenFirstIsPrefix!2832 prefix!494 suffix!1299))))

(assert (=> b!4032368 (isPrefix!3997 lt!1433878 lt!1433883)))

(declare-fun lt!1433890 () Unit!62368)

(assert (=> b!4032368 (= lt!1433890 (lemmaConcatTwoListThenFirstIsPrefix!2832 lt!1433878 suffixResult!105))))

(declare-fun b!4032369 () Bool)

(assert (=> b!4032369 (= e!2502029 (and (= (size!32285 token!484) lt!1433895) (= (originalCharacters!7510 token!484) lt!1433878)))))

(declare-fun b!4032370 () Bool)

(declare-fun e!2502043 () Bool)

(assert (=> b!4032370 (= e!2502022 e!2502043)))

(declare-fun res!1641576 () Bool)

(assert (=> b!4032370 (=> res!1641576 e!2502043)))

(declare-fun lt!1433902 () Option!9324)

(assert (=> b!4032370 (= res!1641576 (not ((_ is Some!9323) lt!1433902)))))

(assert (=> b!4032370 (= lt!1433902 (maxPrefix!3797 thiss!21717 rules!2999 lt!1433887))))

(assert (=> b!4032370 (and (= suffixResult!105 lt!1433892) (= lt!1433872 (tuple2!42279 lt!1433868 lt!1433892)))))

(declare-fun lt!1433881 () Unit!62368)

(assert (=> b!4032370 (= lt!1433881 (lemmaSamePrefixThenSameSuffix!2158 lt!1433878 suffixResult!105 lt!1433878 lt!1433892 lt!1433903))))

(assert (=> b!4032370 (isPrefix!3997 lt!1433878 lt!1433893)))

(declare-fun lt!1433899 () Unit!62368)

(assert (=> b!4032370 (= lt!1433899 (lemmaConcatTwoListThenFirstIsPrefix!2832 lt!1433878 lt!1433892))))

(declare-fun b!4032371 () Bool)

(assert (=> b!4032371 (= e!2502043 e!2502039)))

(declare-fun res!1641568 () Bool)

(assert (=> b!4032371 (=> res!1641568 e!2502039)))

(declare-fun contains!8576 (List!43321 Rule!13620) Bool)

(assert (=> b!4032371 (= res!1641568 (not (contains!8576 rules!2999 (rule!9972 (_1!24273 (v!39713 lt!1433902))))))))

(declare-fun lt!1433891 () Unit!62368)

(declare-fun lemmaCharactersSize!1429 (Token!12958) Unit!62368)

(assert (=> b!4032371 (= lt!1433891 (lemmaCharactersSize!1429 token!484))))

(declare-fun lt!1433886 () Unit!62368)

(assert (=> b!4032371 (= lt!1433886 (lemmaCharactersSize!1429 (_1!24273 (v!39713 lt!1433902))))))

(declare-fun b!4032372 () Bool)

(declare-fun res!1641571 () Bool)

(assert (=> b!4032372 (=> (not res!1641571) (not e!2502023))))

(assert (=> b!4032372 (= res!1641571 (>= (size!32286 suffix!1299) (size!32286 newSuffix!27)))))

(assert (= (and start!379912 res!1641578) b!4032342))

(assert (= (and b!4032342 res!1641581) b!4032345))

(assert (= (and b!4032345 res!1641566) b!4032372))

(assert (= (and b!4032372 res!1641571) b!4032346))

(assert (= (and b!4032346 res!1641585) b!4032361))

(assert (= (and b!4032361 res!1641584) b!4032353))

(assert (= (and b!4032353 res!1641575) b!4032359))

(assert (= (and b!4032359 res!1641573) b!4032351))

(assert (= (and b!4032351 (not res!1641582)) b!4032368))

(assert (= (and b!4032368 (not res!1641574)) b!4032349))

(assert (= (and b!4032349 (not res!1641577)) b!4032344))

(assert (= (and b!4032344 (not res!1641567)) b!4032367))

(assert (= (and b!4032367 (not res!1641569)) b!4032356))

(assert (= (and b!4032356 (not res!1641583)) b!4032358))

(assert (= (and b!4032358 res!1641572) b!4032352))

(assert (= (and b!4032352 res!1641579) b!4032343))

(assert (= (and b!4032343 res!1641570) b!4032369))

(assert (= (and b!4032358 (not res!1641580)) b!4032370))

(assert (= (and b!4032370 (not res!1641576)) b!4032371))

(assert (= (and b!4032371 (not res!1641568)) b!4032363))

(assert (= (and start!379912 ((_ is Cons!43195) prefix!494)) b!4032350))

(assert (= b!4032364 b!4032347))

(assert (= b!4032360 b!4032364))

(assert (= start!379912 b!4032360))

(assert (= (and start!379912 ((_ is Cons!43195) suffixResult!105)) b!4032355))

(assert (= (and start!379912 ((_ is Cons!43195) suffix!1299)) b!4032348))

(assert (= (and start!379912 ((_ is Cons!43195) newSuffix!27)) b!4032354))

(assert (= b!4032366 b!4032365))

(assert (= b!4032357 b!4032366))

(assert (= (and start!379912 ((_ is Cons!43197) rules!2999)) b!4032357))

(assert (= (and start!379912 ((_ is Cons!43195) newSuffixResult!27)) b!4032362))

(declare-fun m!4625141 () Bool)

(assert (=> b!4032358 m!4625141))

(declare-fun m!4625143 () Bool)

(assert (=> b!4032358 m!4625143))

(declare-fun m!4625145 () Bool)

(assert (=> b!4032358 m!4625145))

(declare-fun m!4625147 () Bool)

(assert (=> b!4032358 m!4625147))

(declare-fun m!4625149 () Bool)

(assert (=> b!4032370 m!4625149))

(declare-fun m!4625151 () Bool)

(assert (=> b!4032370 m!4625151))

(declare-fun m!4625153 () Bool)

(assert (=> b!4032370 m!4625153))

(declare-fun m!4625155 () Bool)

(assert (=> b!4032370 m!4625155))

(declare-fun m!4625157 () Bool)

(assert (=> b!4032353 m!4625157))

(declare-fun m!4625159 () Bool)

(assert (=> b!4032353 m!4625159))

(declare-fun m!4625161 () Bool)

(assert (=> b!4032346 m!4625161))

(declare-fun m!4625163 () Bool)

(assert (=> b!4032343 m!4625163))

(declare-fun m!4625165 () Bool)

(assert (=> b!4032363 m!4625165))

(declare-fun m!4625167 () Bool)

(assert (=> b!4032344 m!4625167))

(declare-fun m!4625169 () Bool)

(assert (=> b!4032344 m!4625169))

(declare-fun m!4625171 () Bool)

(assert (=> b!4032344 m!4625171))

(declare-fun m!4625173 () Bool)

(assert (=> b!4032344 m!4625173))

(declare-fun m!4625175 () Bool)

(assert (=> b!4032359 m!4625175))

(declare-fun m!4625177 () Bool)

(assert (=> b!4032359 m!4625177))

(declare-fun m!4625179 () Bool)

(assert (=> b!4032360 m!4625179))

(declare-fun m!4625181 () Bool)

(assert (=> b!4032364 m!4625181))

(declare-fun m!4625183 () Bool)

(assert (=> b!4032364 m!4625183))

(declare-fun m!4625185 () Bool)

(assert (=> b!4032356 m!4625185))

(declare-fun m!4625187 () Bool)

(assert (=> b!4032356 m!4625187))

(declare-fun m!4625189 () Bool)

(assert (=> b!4032356 m!4625189))

(declare-fun m!4625191 () Bool)

(assert (=> b!4032356 m!4625191))

(declare-fun m!4625193 () Bool)

(assert (=> start!379912 m!4625193))

(declare-fun m!4625195 () Bool)

(assert (=> b!4032342 m!4625195))

(declare-fun m!4625197 () Bool)

(assert (=> b!4032361 m!4625197))

(declare-fun m!4625199 () Bool)

(assert (=> b!4032361 m!4625199))

(declare-fun m!4625201 () Bool)

(assert (=> b!4032361 m!4625201))

(assert (=> b!4032361 m!4625201))

(declare-fun m!4625203 () Bool)

(assert (=> b!4032361 m!4625203))

(declare-fun m!4625205 () Bool)

(assert (=> b!4032351 m!4625205))

(declare-fun m!4625207 () Bool)

(assert (=> b!4032351 m!4625207))

(declare-fun m!4625209 () Bool)

(assert (=> b!4032351 m!4625209))

(declare-fun m!4625211 () Bool)

(assert (=> b!4032351 m!4625211))

(declare-fun m!4625213 () Bool)

(assert (=> b!4032371 m!4625213))

(declare-fun m!4625215 () Bool)

(assert (=> b!4032371 m!4625215))

(declare-fun m!4625217 () Bool)

(assert (=> b!4032371 m!4625217))

(declare-fun m!4625219 () Bool)

(assert (=> b!4032345 m!4625219))

(declare-fun m!4625221 () Bool)

(assert (=> b!4032366 m!4625221))

(declare-fun m!4625223 () Bool)

(assert (=> b!4032366 m!4625223))

(declare-fun m!4625225 () Bool)

(assert (=> b!4032349 m!4625225))

(declare-fun m!4625227 () Bool)

(assert (=> b!4032349 m!4625227))

(declare-fun m!4625229 () Bool)

(assert (=> b!4032349 m!4625229))

(declare-fun m!4625231 () Bool)

(assert (=> b!4032349 m!4625231))

(declare-fun m!4625233 () Bool)

(assert (=> b!4032372 m!4625233))

(declare-fun m!4625235 () Bool)

(assert (=> b!4032372 m!4625235))

(declare-fun m!4625237 () Bool)

(assert (=> b!4032368 m!4625237))

(declare-fun m!4625239 () Bool)

(assert (=> b!4032368 m!4625239))

(declare-fun m!4625241 () Bool)

(assert (=> b!4032368 m!4625241))

(declare-fun m!4625243 () Bool)

(assert (=> b!4032368 m!4625243))

(declare-fun m!4625245 () Bool)

(assert (=> b!4032368 m!4625245))

(declare-fun m!4625247 () Bool)

(assert (=> b!4032367 m!4625247))

(declare-fun m!4625249 () Bool)

(assert (=> b!4032367 m!4625249))

(declare-fun m!4625251 () Bool)

(assert (=> b!4032367 m!4625251))

(declare-fun m!4625253 () Bool)

(assert (=> b!4032367 m!4625253))

(assert (=> b!4032367 m!4625251))

(declare-fun m!4625255 () Bool)

(assert (=> b!4032367 m!4625255))

(declare-fun m!4625257 () Bool)

(assert (=> b!4032367 m!4625257))

(declare-fun m!4625259 () Bool)

(assert (=> b!4032367 m!4625259))

(check-sat b_and!309887 (not b!4032367) b_and!309889 (not b_next!113067) (not b!4032360) (not b!4032359) (not b_next!113071) (not b!4032358) (not b!4032357) (not b!4032361) (not b!4032371) (not b!4032372) (not b!4032363) (not start!379912) (not b!4032354) (not b!4032355) (not b!4032345) (not b!4032356) (not b!4032353) (not b!4032342) (not b!4032362) (not b_next!113069) (not b!4032344) (not b!4032343) b_and!309885 b_and!309883 (not b!4032350) (not b!4032346) (not b!4032370) (not b!4032364) (not b!4032348) (not b!4032366) (not b_next!113065) (not b!4032368) (not b!4032351) (not b!4032349) tp_is_empty!20601)
(check-sat b_and!309887 (not b_next!113069) b_and!309889 (not b_next!113067) (not b_next!113065) (not b_next!113071) b_and!309885 b_and!309883)
(get-model)

(declare-fun d!1194446 () Bool)

(declare-fun lt!1433906 () Int)

(assert (=> d!1194446 (>= lt!1433906 0)))

(declare-fun e!2502047 () Int)

(assert (=> d!1194446 (= lt!1433906 e!2502047)))

(declare-fun c!696510 () Bool)

(assert (=> d!1194446 (= c!696510 ((_ is Nil!43195) suffix!1299))))

(assert (=> d!1194446 (= (size!32286 suffix!1299) lt!1433906)))

(declare-fun b!4032377 () Bool)

(assert (=> b!4032377 (= e!2502047 0)))

(declare-fun b!4032378 () Bool)

(assert (=> b!4032378 (= e!2502047 (+ 1 (size!32286 (t!334322 suffix!1299))))))

(assert (= (and d!1194446 c!696510) b!4032377))

(assert (= (and d!1194446 (not c!696510)) b!4032378))

(declare-fun m!4625261 () Bool)

(assert (=> b!4032378 m!4625261))

(assert (=> b!4032372 d!1194446))

(declare-fun d!1194448 () Bool)

(declare-fun lt!1433907 () Int)

(assert (=> d!1194448 (>= lt!1433907 0)))

(declare-fun e!2502048 () Int)

(assert (=> d!1194448 (= lt!1433907 e!2502048)))

(declare-fun c!696511 () Bool)

(assert (=> d!1194448 (= c!696511 ((_ is Nil!43195) newSuffix!27))))

(assert (=> d!1194448 (= (size!32286 newSuffix!27) lt!1433907)))

(declare-fun b!4032379 () Bool)

(assert (=> b!4032379 (= e!2502048 0)))

(declare-fun b!4032380 () Bool)

(assert (=> b!4032380 (= e!2502048 (+ 1 (size!32286 (t!334322 newSuffix!27))))))

(assert (= (and d!1194448 c!696511) b!4032379))

(assert (= (and d!1194448 (not c!696511)) b!4032380))

(declare-fun m!4625263 () Bool)

(assert (=> b!4032380 m!4625263))

(assert (=> b!4032372 d!1194448))

(declare-fun b!4032390 () Bool)

(declare-fun e!2502053 () List!43319)

(assert (=> b!4032390 (= e!2502053 (Cons!43195 (h!48615 lt!1433878) (++!11312 (t!334322 lt!1433878) suffixResult!105)))))

(declare-fun b!4032391 () Bool)

(declare-fun res!1641592 () Bool)

(declare-fun e!2502054 () Bool)

(assert (=> b!4032391 (=> (not res!1641592) (not e!2502054))))

(declare-fun lt!1433910 () List!43319)

(assert (=> b!4032391 (= res!1641592 (= (size!32286 lt!1433910) (+ (size!32286 lt!1433878) (size!32286 suffixResult!105))))))

(declare-fun d!1194450 () Bool)

(assert (=> d!1194450 e!2502054))

(declare-fun res!1641593 () Bool)

(assert (=> d!1194450 (=> (not res!1641593) (not e!2502054))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6558 (List!43319) (InoxSet C!23816))

(assert (=> d!1194450 (= res!1641593 (= (content!6558 lt!1433910) ((_ map or) (content!6558 lt!1433878) (content!6558 suffixResult!105))))))

(assert (=> d!1194450 (= lt!1433910 e!2502053)))

(declare-fun c!696514 () Bool)

(assert (=> d!1194450 (= c!696514 ((_ is Nil!43195) lt!1433878))))

(assert (=> d!1194450 (= (++!11312 lt!1433878 suffixResult!105) lt!1433910)))

(declare-fun b!4032389 () Bool)

(assert (=> b!4032389 (= e!2502053 suffixResult!105)))

(declare-fun b!4032392 () Bool)

(assert (=> b!4032392 (= e!2502054 (or (not (= suffixResult!105 Nil!43195)) (= lt!1433910 lt!1433878)))))

(assert (= (and d!1194450 c!696514) b!4032389))

(assert (= (and d!1194450 (not c!696514)) b!4032390))

(assert (= (and d!1194450 res!1641593) b!4032391))

(assert (= (and b!4032391 res!1641592) b!4032392))

(declare-fun m!4625265 () Bool)

(assert (=> b!4032390 m!4625265))

(declare-fun m!4625267 () Bool)

(assert (=> b!4032391 m!4625267))

(assert (=> b!4032391 m!4625197))

(declare-fun m!4625269 () Bool)

(assert (=> b!4032391 m!4625269))

(declare-fun m!4625271 () Bool)

(assert (=> d!1194450 m!4625271))

(declare-fun m!4625273 () Bool)

(assert (=> d!1194450 m!4625273))

(declare-fun m!4625275 () Bool)

(assert (=> d!1194450 m!4625275))

(assert (=> b!4032351 d!1194450))

(declare-fun d!1194452 () Bool)

(declare-fun e!2502057 () Bool)

(assert (=> d!1194452 e!2502057))

(declare-fun res!1641598 () Bool)

(assert (=> d!1194452 (=> (not res!1641598) (not e!2502057))))

(declare-fun semiInverseModEq!2947 (Int Int) Bool)

(assert (=> d!1194452 (= res!1641598 (semiInverseModEq!2947 (toChars!9297 (transformation!6910 (rule!9972 token!484))) (toValue!9438 (transformation!6910 (rule!9972 token!484)))))))

(declare-fun Unit!62370 () Unit!62368)

(assert (=> d!1194452 (= (lemmaInv!1119 (transformation!6910 (rule!9972 token!484))) Unit!62370)))

(declare-fun b!4032395 () Bool)

(declare-fun equivClasses!2846 (Int Int) Bool)

(assert (=> b!4032395 (= e!2502057 (equivClasses!2846 (toChars!9297 (transformation!6910 (rule!9972 token!484))) (toValue!9438 (transformation!6910 (rule!9972 token!484)))))))

(assert (= (and d!1194452 res!1641598) b!4032395))

(declare-fun m!4625277 () Bool)

(assert (=> d!1194452 m!4625277))

(declare-fun m!4625279 () Bool)

(assert (=> b!4032395 m!4625279))

(assert (=> b!4032351 d!1194452))

(declare-fun d!1194454 () Bool)

(declare-fun res!1641603 () Bool)

(declare-fun e!2502062 () Bool)

(assert (=> d!1194454 (=> (not res!1641603) (not e!2502062))))

(declare-fun validRegex!5339 (Regex!11815) Bool)

(assert (=> d!1194454 (= res!1641603 (validRegex!5339 (regex!6910 (rule!9972 token!484))))))

(assert (=> d!1194454 (= (ruleValid!2840 thiss!21717 (rule!9972 token!484)) e!2502062)))

(declare-fun b!4032404 () Bool)

(declare-fun res!1641604 () Bool)

(assert (=> b!4032404 (=> (not res!1641604) (not e!2502062))))

(declare-fun nullable!4139 (Regex!11815) Bool)

(assert (=> b!4032404 (= res!1641604 (not (nullable!4139 (regex!6910 (rule!9972 token!484)))))))

(declare-fun b!4032405 () Bool)

(assert (=> b!4032405 (= e!2502062 (not (= (tag!7770 (rule!9972 token!484)) (String!49419 ""))))))

(assert (= (and d!1194454 res!1641603) b!4032404))

(assert (= (and b!4032404 res!1641604) b!4032405))

(declare-fun m!4625281 () Bool)

(assert (=> d!1194454 m!4625281))

(declare-fun m!4625283 () Bool)

(assert (=> b!4032404 m!4625283))

(assert (=> b!4032351 d!1194454))

(declare-fun d!1194458 () Bool)

(assert (=> d!1194458 (ruleValid!2840 thiss!21717 (rule!9972 token!484))))

(declare-fun lt!1433920 () Unit!62368)

(declare-fun choose!24396 (LexerInterface!6499 Rule!13620 List!43321) Unit!62368)

(assert (=> d!1194458 (= lt!1433920 (choose!24396 thiss!21717 (rule!9972 token!484) rules!2999))))

(assert (=> d!1194458 (contains!8576 rules!2999 (rule!9972 token!484))))

(assert (=> d!1194458 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1910 thiss!21717 (rule!9972 token!484) rules!2999) lt!1433920)))

(declare-fun bs!590330 () Bool)

(assert (= bs!590330 d!1194458))

(assert (=> bs!590330 m!4625209))

(declare-fun m!4625293 () Bool)

(assert (=> bs!590330 m!4625293))

(declare-fun m!4625297 () Bool)

(assert (=> bs!590330 m!4625297))

(assert (=> b!4032351 d!1194458))

(declare-fun d!1194466 () Bool)

(assert (=> d!1194466 (= (isEmpty!25775 rules!2999) ((_ is Nil!43197) rules!2999))))

(assert (=> b!4032342 d!1194466))

(declare-fun b!4032416 () Bool)

(declare-fun e!2502068 () List!43319)

(assert (=> b!4032416 (= e!2502068 (Cons!43195 (h!48615 prefix!494) (++!11312 (t!334322 prefix!494) newSuffix!27)))))

(declare-fun b!4032417 () Bool)

(declare-fun res!1641605 () Bool)

(declare-fun e!2502069 () Bool)

(assert (=> b!4032417 (=> (not res!1641605) (not e!2502069))))

(declare-fun lt!1433921 () List!43319)

(assert (=> b!4032417 (= res!1641605 (= (size!32286 lt!1433921) (+ (size!32286 prefix!494) (size!32286 newSuffix!27))))))

(declare-fun d!1194470 () Bool)

(assert (=> d!1194470 e!2502069))

(declare-fun res!1641606 () Bool)

(assert (=> d!1194470 (=> (not res!1641606) (not e!2502069))))

(assert (=> d!1194470 (= res!1641606 (= (content!6558 lt!1433921) ((_ map or) (content!6558 prefix!494) (content!6558 newSuffix!27))))))

(assert (=> d!1194470 (= lt!1433921 e!2502068)))

(declare-fun c!696519 () Bool)

(assert (=> d!1194470 (= c!696519 ((_ is Nil!43195) prefix!494))))

(assert (=> d!1194470 (= (++!11312 prefix!494 newSuffix!27) lt!1433921)))

(declare-fun b!4032415 () Bool)

(assert (=> b!4032415 (= e!2502068 newSuffix!27)))

(declare-fun b!4032418 () Bool)

(assert (=> b!4032418 (= e!2502069 (or (not (= newSuffix!27 Nil!43195)) (= lt!1433921 prefix!494)))))

(assert (= (and d!1194470 c!696519) b!4032415))

(assert (= (and d!1194470 (not c!696519)) b!4032416))

(assert (= (and d!1194470 res!1641606) b!4032417))

(assert (= (and b!4032417 res!1641605) b!4032418))

(declare-fun m!4625303 () Bool)

(assert (=> b!4032416 m!4625303))

(declare-fun m!4625305 () Bool)

(assert (=> b!4032417 m!4625305))

(assert (=> b!4032417 m!4625199))

(assert (=> b!4032417 m!4625235))

(declare-fun m!4625307 () Bool)

(assert (=> d!1194470 m!4625307))

(declare-fun m!4625309 () Bool)

(assert (=> d!1194470 m!4625309))

(declare-fun m!4625311 () Bool)

(assert (=> d!1194470 m!4625311))

(assert (=> b!4032353 d!1194470))

(declare-fun b!4032420 () Bool)

(declare-fun e!2502070 () List!43319)

(assert (=> b!4032420 (= e!2502070 (Cons!43195 (h!48615 lt!1433878) (++!11312 (t!334322 lt!1433878) newSuffixResult!27)))))

(declare-fun b!4032421 () Bool)

(declare-fun res!1641607 () Bool)

(declare-fun e!2502071 () Bool)

(assert (=> b!4032421 (=> (not res!1641607) (not e!2502071))))

(declare-fun lt!1433922 () List!43319)

(assert (=> b!4032421 (= res!1641607 (= (size!32286 lt!1433922) (+ (size!32286 lt!1433878) (size!32286 newSuffixResult!27))))))

(declare-fun d!1194472 () Bool)

(assert (=> d!1194472 e!2502071))

(declare-fun res!1641608 () Bool)

(assert (=> d!1194472 (=> (not res!1641608) (not e!2502071))))

(assert (=> d!1194472 (= res!1641608 (= (content!6558 lt!1433922) ((_ map or) (content!6558 lt!1433878) (content!6558 newSuffixResult!27))))))

(assert (=> d!1194472 (= lt!1433922 e!2502070)))

(declare-fun c!696520 () Bool)

(assert (=> d!1194472 (= c!696520 ((_ is Nil!43195) lt!1433878))))

(assert (=> d!1194472 (= (++!11312 lt!1433878 newSuffixResult!27) lt!1433922)))

(declare-fun b!4032419 () Bool)

(assert (=> b!4032419 (= e!2502070 newSuffixResult!27)))

(declare-fun b!4032422 () Bool)

(assert (=> b!4032422 (= e!2502071 (or (not (= newSuffixResult!27 Nil!43195)) (= lt!1433922 lt!1433878)))))

(assert (= (and d!1194472 c!696520) b!4032419))

(assert (= (and d!1194472 (not c!696520)) b!4032420))

(assert (= (and d!1194472 res!1641608) b!4032421))

(assert (= (and b!4032421 res!1641607) b!4032422))

(declare-fun m!4625313 () Bool)

(assert (=> b!4032420 m!4625313))

(declare-fun m!4625315 () Bool)

(assert (=> b!4032421 m!4625315))

(assert (=> b!4032421 m!4625197))

(declare-fun m!4625317 () Bool)

(assert (=> b!4032421 m!4625317))

(declare-fun m!4625319 () Bool)

(assert (=> d!1194472 m!4625319))

(assert (=> d!1194472 m!4625273))

(declare-fun m!4625321 () Bool)

(assert (=> d!1194472 m!4625321))

(assert (=> b!4032353 d!1194472))

(declare-fun d!1194474 () Bool)

(assert (=> d!1194474 true))

(declare-fun lt!1433965 () Bool)

(declare-fun lambda!127263 () Int)

(declare-fun forall!8366 (List!43321 Int) Bool)

(assert (=> d!1194474 (= lt!1433965 (forall!8366 rules!2999 lambda!127263))))

(declare-fun e!2502130 () Bool)

(assert (=> d!1194474 (= lt!1433965 e!2502130)))

(declare-fun res!1641676 () Bool)

(assert (=> d!1194474 (=> res!1641676 e!2502130)))

(assert (=> d!1194474 (= res!1641676 (not ((_ is Cons!43197) rules!2999)))))

(assert (=> d!1194474 (= (rulesValidInductive!2515 thiss!21717 rules!2999) lt!1433965)))

(declare-fun b!4032519 () Bool)

(declare-fun e!2502129 () Bool)

(assert (=> b!4032519 (= e!2502130 e!2502129)))

(declare-fun res!1641675 () Bool)

(assert (=> b!4032519 (=> (not res!1641675) (not e!2502129))))

(assert (=> b!4032519 (= res!1641675 (ruleValid!2840 thiss!21717 (h!48617 rules!2999)))))

(declare-fun b!4032520 () Bool)

(assert (=> b!4032520 (= e!2502129 (rulesValidInductive!2515 thiss!21717 (t!334324 rules!2999)))))

(assert (= (and d!1194474 (not res!1641676)) b!4032519))

(assert (= (and b!4032519 res!1641675) b!4032520))

(declare-fun m!4625445 () Bool)

(assert (=> d!1194474 m!4625445))

(declare-fun m!4625447 () Bool)

(assert (=> b!4032519 m!4625447))

(declare-fun m!4625449 () Bool)

(assert (=> b!4032520 m!4625449))

(assert (=> b!4032363 d!1194474))

(declare-fun d!1194510 () Bool)

(assert (=> d!1194510 (= (inv!57706 (tag!7770 (rule!9972 token!484))) (= (mod (str.len (value!217568 (tag!7770 (rule!9972 token!484)))) 2) 0))))

(assert (=> b!4032364 d!1194510))

(declare-fun d!1194512 () Bool)

(declare-fun res!1641679 () Bool)

(declare-fun e!2502133 () Bool)

(assert (=> d!1194512 (=> (not res!1641679) (not e!2502133))))

(assert (=> d!1194512 (= res!1641679 (semiInverseModEq!2947 (toChars!9297 (transformation!6910 (rule!9972 token!484))) (toValue!9438 (transformation!6910 (rule!9972 token!484)))))))

(assert (=> d!1194512 (= (inv!57710 (transformation!6910 (rule!9972 token!484))) e!2502133)))

(declare-fun b!4032525 () Bool)

(assert (=> b!4032525 (= e!2502133 (equivClasses!2846 (toChars!9297 (transformation!6910 (rule!9972 token!484))) (toValue!9438 (transformation!6910 (rule!9972 token!484)))))))

(assert (= (and d!1194512 res!1641679) b!4032525))

(assert (=> d!1194512 m!4625277))

(assert (=> b!4032525 m!4625279))

(assert (=> b!4032364 d!1194512))

(declare-fun d!1194514 () Bool)

(declare-fun lt!1433966 () Int)

(assert (=> d!1194514 (>= lt!1433966 0)))

(declare-fun e!2502134 () Int)

(assert (=> d!1194514 (= lt!1433966 e!2502134)))

(declare-fun c!696534 () Bool)

(assert (=> d!1194514 (= c!696534 ((_ is Nil!43195) (originalCharacters!7510 token!484)))))

(assert (=> d!1194514 (= (size!32286 (originalCharacters!7510 token!484)) lt!1433966)))

(declare-fun b!4032526 () Bool)

(assert (=> b!4032526 (= e!2502134 0)))

(declare-fun b!4032527 () Bool)

(assert (=> b!4032527 (= e!2502134 (+ 1 (size!32286 (t!334322 (originalCharacters!7510 token!484)))))))

(assert (= (and d!1194514 c!696534) b!4032526))

(assert (= (and d!1194514 (not c!696534)) b!4032527))

(declare-fun m!4625451 () Bool)

(assert (=> b!4032527 m!4625451))

(assert (=> b!4032343 d!1194514))

(declare-fun d!1194516 () Bool)

(assert (=> d!1194516 (= (inv!57706 (tag!7770 (h!48617 rules!2999))) (= (mod (str.len (value!217568 (tag!7770 (h!48617 rules!2999)))) 2) 0))))

(assert (=> b!4032366 d!1194516))

(declare-fun d!1194518 () Bool)

(declare-fun res!1641680 () Bool)

(declare-fun e!2502135 () Bool)

(assert (=> d!1194518 (=> (not res!1641680) (not e!2502135))))

(assert (=> d!1194518 (= res!1641680 (semiInverseModEq!2947 (toChars!9297 (transformation!6910 (h!48617 rules!2999))) (toValue!9438 (transformation!6910 (h!48617 rules!2999)))))))

(assert (=> d!1194518 (= (inv!57710 (transformation!6910 (h!48617 rules!2999))) e!2502135)))

(declare-fun b!4032528 () Bool)

(assert (=> b!4032528 (= e!2502135 (equivClasses!2846 (toChars!9297 (transformation!6910 (h!48617 rules!2999))) (toValue!9438 (transformation!6910 (h!48617 rules!2999)))))))

(assert (= (and d!1194518 res!1641680) b!4032528))

(declare-fun m!4625453 () Bool)

(assert (=> d!1194518 m!4625453))

(declare-fun m!4625455 () Bool)

(assert (=> b!4032528 m!4625455))

(assert (=> b!4032366 d!1194518))

(declare-fun d!1194520 () Bool)

(declare-fun res!1641683 () Bool)

(declare-fun e!2502138 () Bool)

(assert (=> d!1194520 (=> (not res!1641683) (not e!2502138))))

(declare-fun rulesValid!2681 (LexerInterface!6499 List!43321) Bool)

(assert (=> d!1194520 (= res!1641683 (rulesValid!2681 thiss!21717 rules!2999))))

(assert (=> d!1194520 (= (rulesInvariant!5842 thiss!21717 rules!2999) e!2502138)))

(declare-fun b!4032531 () Bool)

(declare-datatypes ((List!43322 0))(
  ( (Nil!43198) (Cons!43198 (h!48618 String!49418) (t!334349 List!43322)) )
))
(declare-fun noDuplicateTag!2682 (LexerInterface!6499 List!43321 List!43322) Bool)

(assert (=> b!4032531 (= e!2502138 (noDuplicateTag!2682 thiss!21717 rules!2999 Nil!43198))))

(assert (= (and d!1194520 res!1641683) b!4032531))

(declare-fun m!4625457 () Bool)

(assert (=> d!1194520 m!4625457))

(declare-fun m!4625459 () Bool)

(assert (=> b!4032531 m!4625459))

(assert (=> b!4032345 d!1194520))

(declare-fun b!4032533 () Bool)

(declare-fun e!2502139 () List!43319)

(assert (=> b!4032533 (= e!2502139 (Cons!43195 (h!48615 lt!1433878) (++!11312 (t!334322 lt!1433878) lt!1433871)))))

(declare-fun b!4032534 () Bool)

(declare-fun res!1641684 () Bool)

(declare-fun e!2502140 () Bool)

(assert (=> b!4032534 (=> (not res!1641684) (not e!2502140))))

(declare-fun lt!1433967 () List!43319)

(assert (=> b!4032534 (= res!1641684 (= (size!32286 lt!1433967) (+ (size!32286 lt!1433878) (size!32286 lt!1433871))))))

(declare-fun d!1194522 () Bool)

(assert (=> d!1194522 e!2502140))

(declare-fun res!1641685 () Bool)

(assert (=> d!1194522 (=> (not res!1641685) (not e!2502140))))

(assert (=> d!1194522 (= res!1641685 (= (content!6558 lt!1433967) ((_ map or) (content!6558 lt!1433878) (content!6558 lt!1433871))))))

(assert (=> d!1194522 (= lt!1433967 e!2502139)))

(declare-fun c!696535 () Bool)

(assert (=> d!1194522 (= c!696535 ((_ is Nil!43195) lt!1433878))))

(assert (=> d!1194522 (= (++!11312 lt!1433878 lt!1433871) lt!1433967)))

(declare-fun b!4032532 () Bool)

(assert (=> b!4032532 (= e!2502139 lt!1433871)))

(declare-fun b!4032535 () Bool)

(assert (=> b!4032535 (= e!2502140 (or (not (= lt!1433871 Nil!43195)) (= lt!1433967 lt!1433878)))))

(assert (= (and d!1194522 c!696535) b!4032532))

(assert (= (and d!1194522 (not c!696535)) b!4032533))

(assert (= (and d!1194522 res!1641685) b!4032534))

(assert (= (and b!4032534 res!1641684) b!4032535))

(declare-fun m!4625461 () Bool)

(assert (=> b!4032533 m!4625461))

(declare-fun m!4625463 () Bool)

(assert (=> b!4032534 m!4625463))

(assert (=> b!4032534 m!4625197))

(declare-fun m!4625465 () Bool)

(assert (=> b!4032534 m!4625465))

(declare-fun m!4625467 () Bool)

(assert (=> d!1194522 m!4625467))

(assert (=> d!1194522 m!4625273))

(declare-fun m!4625469 () Bool)

(assert (=> d!1194522 m!4625469))

(assert (=> b!4032344 d!1194522))

(declare-fun b!4032537 () Bool)

(declare-fun e!2502141 () List!43319)

(assert (=> b!4032537 (= e!2502141 (Cons!43195 (h!48615 lt!1433889) (++!11312 (t!334322 lt!1433889) suffix!1299)))))

(declare-fun b!4032538 () Bool)

(declare-fun res!1641686 () Bool)

(declare-fun e!2502142 () Bool)

(assert (=> b!4032538 (=> (not res!1641686) (not e!2502142))))

(declare-fun lt!1433968 () List!43319)

(assert (=> b!4032538 (= res!1641686 (= (size!32286 lt!1433968) (+ (size!32286 lt!1433889) (size!32286 suffix!1299))))))

(declare-fun d!1194524 () Bool)

(assert (=> d!1194524 e!2502142))

(declare-fun res!1641687 () Bool)

(assert (=> d!1194524 (=> (not res!1641687) (not e!2502142))))

(assert (=> d!1194524 (= res!1641687 (= (content!6558 lt!1433968) ((_ map or) (content!6558 lt!1433889) (content!6558 suffix!1299))))))

(assert (=> d!1194524 (= lt!1433968 e!2502141)))

(declare-fun c!696536 () Bool)

(assert (=> d!1194524 (= c!696536 ((_ is Nil!43195) lt!1433889))))

(assert (=> d!1194524 (= (++!11312 lt!1433889 suffix!1299) lt!1433968)))

(declare-fun b!4032536 () Bool)

(assert (=> b!4032536 (= e!2502141 suffix!1299)))

(declare-fun b!4032539 () Bool)

(assert (=> b!4032539 (= e!2502142 (or (not (= suffix!1299 Nil!43195)) (= lt!1433968 lt!1433889)))))

(assert (= (and d!1194524 c!696536) b!4032536))

(assert (= (and d!1194524 (not c!696536)) b!4032537))

(assert (= (and d!1194524 res!1641687) b!4032538))

(assert (= (and b!4032538 res!1641686) b!4032539))

(declare-fun m!4625471 () Bool)

(assert (=> b!4032537 m!4625471))

(declare-fun m!4625473 () Bool)

(assert (=> b!4032538 m!4625473))

(declare-fun m!4625475 () Bool)

(assert (=> b!4032538 m!4625475))

(assert (=> b!4032538 m!4625233))

(declare-fun m!4625477 () Bool)

(assert (=> d!1194524 m!4625477))

(declare-fun m!4625479 () Bool)

(assert (=> d!1194524 m!4625479))

(declare-fun m!4625481 () Bool)

(assert (=> d!1194524 m!4625481))

(assert (=> b!4032344 d!1194524))

(declare-fun b!4032541 () Bool)

(declare-fun e!2502143 () List!43319)

(assert (=> b!4032541 (= e!2502143 (Cons!43195 (h!48615 lt!1433894) (++!11312 (t!334322 lt!1433894) suffix!1299)))))

(declare-fun b!4032542 () Bool)

(declare-fun res!1641688 () Bool)

(declare-fun e!2502144 () Bool)

(assert (=> b!4032542 (=> (not res!1641688) (not e!2502144))))

(declare-fun lt!1433969 () List!43319)

(assert (=> b!4032542 (= res!1641688 (= (size!32286 lt!1433969) (+ (size!32286 lt!1433894) (size!32286 suffix!1299))))))

(declare-fun d!1194526 () Bool)

(assert (=> d!1194526 e!2502144))

(declare-fun res!1641689 () Bool)

(assert (=> d!1194526 (=> (not res!1641689) (not e!2502144))))

(assert (=> d!1194526 (= res!1641689 (= (content!6558 lt!1433969) ((_ map or) (content!6558 lt!1433894) (content!6558 suffix!1299))))))

(assert (=> d!1194526 (= lt!1433969 e!2502143)))

(declare-fun c!696537 () Bool)

(assert (=> d!1194526 (= c!696537 ((_ is Nil!43195) lt!1433894))))

(assert (=> d!1194526 (= (++!11312 lt!1433894 suffix!1299) lt!1433969)))

(declare-fun b!4032540 () Bool)

(assert (=> b!4032540 (= e!2502143 suffix!1299)))

(declare-fun b!4032543 () Bool)

(assert (=> b!4032543 (= e!2502144 (or (not (= suffix!1299 Nil!43195)) (= lt!1433969 lt!1433894)))))

(assert (= (and d!1194526 c!696537) b!4032540))

(assert (= (and d!1194526 (not c!696537)) b!4032541))

(assert (= (and d!1194526 res!1641689) b!4032542))

(assert (= (and b!4032542 res!1641688) b!4032543))

(declare-fun m!4625483 () Bool)

(assert (=> b!4032541 m!4625483))

(declare-fun m!4625485 () Bool)

(assert (=> b!4032542 m!4625485))

(declare-fun m!4625487 () Bool)

(assert (=> b!4032542 m!4625487))

(assert (=> b!4032542 m!4625233))

(declare-fun m!4625489 () Bool)

(assert (=> d!1194526 m!4625489))

(declare-fun m!4625491 () Bool)

(assert (=> d!1194526 m!4625491))

(assert (=> d!1194526 m!4625481))

(assert (=> b!4032344 d!1194526))

(declare-fun d!1194528 () Bool)

(assert (=> d!1194528 (= (++!11312 (++!11312 lt!1433878 lt!1433894) suffix!1299) (++!11312 lt!1433878 (++!11312 lt!1433894 suffix!1299)))))

(declare-fun lt!1433972 () Unit!62368)

(declare-fun choose!24397 (List!43319 List!43319 List!43319) Unit!62368)

(assert (=> d!1194528 (= lt!1433972 (choose!24397 lt!1433878 lt!1433894 suffix!1299))))

(assert (=> d!1194528 (= (lemmaConcatAssociativity!2614 lt!1433878 lt!1433894 suffix!1299) lt!1433972)))

(declare-fun bs!590337 () Bool)

(assert (= bs!590337 d!1194528))

(assert (=> bs!590337 m!4625171))

(assert (=> bs!590337 m!4625225))

(assert (=> bs!590337 m!4625171))

(declare-fun m!4625493 () Bool)

(assert (=> bs!590337 m!4625493))

(declare-fun m!4625495 () Bool)

(assert (=> bs!590337 m!4625495))

(assert (=> bs!590337 m!4625225))

(declare-fun m!4625497 () Bool)

(assert (=> bs!590337 m!4625497))

(assert (=> b!4032344 d!1194528))

(declare-fun b!4032553 () Bool)

(declare-fun res!1641701 () Bool)

(declare-fun e!2502153 () Bool)

(assert (=> b!4032553 (=> (not res!1641701) (not e!2502153))))

(declare-fun head!8543 (List!43319) C!23816)

(assert (=> b!4032553 (= res!1641701 (= (head!8543 newSuffix!27) (head!8543 suffix!1299)))))

(declare-fun b!4032554 () Bool)

(declare-fun tail!6275 (List!43319) List!43319)

(assert (=> b!4032554 (= e!2502153 (isPrefix!3997 (tail!6275 newSuffix!27) (tail!6275 suffix!1299)))))

(declare-fun d!1194530 () Bool)

(declare-fun e!2502152 () Bool)

(assert (=> d!1194530 e!2502152))

(declare-fun res!1641699 () Bool)

(assert (=> d!1194530 (=> res!1641699 e!2502152)))

(declare-fun lt!1433975 () Bool)

(assert (=> d!1194530 (= res!1641699 (not lt!1433975))))

(declare-fun e!2502151 () Bool)

(assert (=> d!1194530 (= lt!1433975 e!2502151)))

(declare-fun res!1641698 () Bool)

(assert (=> d!1194530 (=> res!1641698 e!2502151)))

(assert (=> d!1194530 (= res!1641698 ((_ is Nil!43195) newSuffix!27))))

(assert (=> d!1194530 (= (isPrefix!3997 newSuffix!27 suffix!1299) lt!1433975)))

(declare-fun b!4032555 () Bool)

(assert (=> b!4032555 (= e!2502152 (>= (size!32286 suffix!1299) (size!32286 newSuffix!27)))))

(declare-fun b!4032552 () Bool)

(assert (=> b!4032552 (= e!2502151 e!2502153)))

(declare-fun res!1641700 () Bool)

(assert (=> b!4032552 (=> (not res!1641700) (not e!2502153))))

(assert (=> b!4032552 (= res!1641700 (not ((_ is Nil!43195) suffix!1299)))))

(assert (= (and d!1194530 (not res!1641698)) b!4032552))

(assert (= (and b!4032552 res!1641700) b!4032553))

(assert (= (and b!4032553 res!1641701) b!4032554))

(assert (= (and d!1194530 (not res!1641699)) b!4032555))

(declare-fun m!4625499 () Bool)

(assert (=> b!4032553 m!4625499))

(declare-fun m!4625501 () Bool)

(assert (=> b!4032553 m!4625501))

(declare-fun m!4625503 () Bool)

(assert (=> b!4032554 m!4625503))

(declare-fun m!4625505 () Bool)

(assert (=> b!4032554 m!4625505))

(assert (=> b!4032554 m!4625503))

(assert (=> b!4032554 m!4625505))

(declare-fun m!4625507 () Bool)

(assert (=> b!4032554 m!4625507))

(assert (=> b!4032555 m!4625233))

(assert (=> b!4032555 m!4625235))

(assert (=> b!4032346 d!1194530))

(declare-fun b!4032584 () Bool)

(declare-fun e!2502169 () Bool)

(declare-fun e!2502171 () Bool)

(assert (=> b!4032584 (= e!2502169 e!2502171)))

(declare-fun res!1641720 () Bool)

(assert (=> b!4032584 (=> res!1641720 e!2502171)))

(declare-fun call!286984 () Bool)

(assert (=> b!4032584 (= res!1641720 call!286984)))

(declare-fun b!4032585 () Bool)

(declare-fun e!2502172 () Bool)

(declare-fun lt!1433978 () Bool)

(assert (=> b!4032585 (= e!2502172 (not lt!1433978))))

(declare-fun d!1194532 () Bool)

(declare-fun e!2502173 () Bool)

(assert (=> d!1194532 e!2502173))

(declare-fun c!696545 () Bool)

(assert (=> d!1194532 (= c!696545 ((_ is EmptyExpr!11815) (regex!6910 (rule!9972 token!484))))))

(declare-fun e!2502168 () Bool)

(assert (=> d!1194532 (= lt!1433978 e!2502168)))

(declare-fun c!696546 () Bool)

(declare-fun isEmpty!25778 (List!43319) Bool)

(assert (=> d!1194532 (= c!696546 (isEmpty!25778 lt!1433878))))

(assert (=> d!1194532 (validRegex!5339 (regex!6910 (rule!9972 token!484)))))

(assert (=> d!1194532 (= (matchR!5768 (regex!6910 (rule!9972 token!484)) lt!1433878) lt!1433978)))

(declare-fun b!4032586 () Bool)

(declare-fun res!1641721 () Bool)

(assert (=> b!4032586 (=> res!1641721 e!2502171)))

(assert (=> b!4032586 (= res!1641721 (not (isEmpty!25778 (tail!6275 lt!1433878))))))

(declare-fun b!4032587 () Bool)

(declare-fun e!2502170 () Bool)

(assert (=> b!4032587 (= e!2502170 e!2502169)))

(declare-fun res!1641718 () Bool)

(assert (=> b!4032587 (=> (not res!1641718) (not e!2502169))))

(assert (=> b!4032587 (= res!1641718 (not lt!1433978))))

(declare-fun b!4032588 () Bool)

(declare-fun res!1641722 () Bool)

(declare-fun e!2502174 () Bool)

(assert (=> b!4032588 (=> (not res!1641722) (not e!2502174))))

(assert (=> b!4032588 (= res!1641722 (isEmpty!25778 (tail!6275 lt!1433878)))))

(declare-fun bm!286979 () Bool)

(assert (=> bm!286979 (= call!286984 (isEmpty!25778 lt!1433878))))

(declare-fun b!4032589 () Bool)

(declare-fun res!1641723 () Bool)

(assert (=> b!4032589 (=> res!1641723 e!2502170)))

(assert (=> b!4032589 (= res!1641723 (not ((_ is ElementMatch!11815) (regex!6910 (rule!9972 token!484)))))))

(assert (=> b!4032589 (= e!2502172 e!2502170)))

(declare-fun b!4032590 () Bool)

(assert (=> b!4032590 (= e!2502174 (= (head!8543 lt!1433878) (c!696507 (regex!6910 (rule!9972 token!484)))))))

(declare-fun b!4032591 () Bool)

(assert (=> b!4032591 (= e!2502168 (nullable!4139 (regex!6910 (rule!9972 token!484))))))

(declare-fun b!4032592 () Bool)

(declare-fun res!1641724 () Bool)

(assert (=> b!4032592 (=> (not res!1641724) (not e!2502174))))

(assert (=> b!4032592 (= res!1641724 (not call!286984))))

(declare-fun b!4032593 () Bool)

(declare-fun res!1641725 () Bool)

(assert (=> b!4032593 (=> res!1641725 e!2502170)))

(assert (=> b!4032593 (= res!1641725 e!2502174)))

(declare-fun res!1641719 () Bool)

(assert (=> b!4032593 (=> (not res!1641719) (not e!2502174))))

(assert (=> b!4032593 (= res!1641719 lt!1433978)))

(declare-fun b!4032594 () Bool)

(assert (=> b!4032594 (= e!2502173 e!2502172)))

(declare-fun c!696544 () Bool)

(assert (=> b!4032594 (= c!696544 ((_ is EmptyLang!11815) (regex!6910 (rule!9972 token!484))))))

(declare-fun b!4032595 () Bool)

(assert (=> b!4032595 (= e!2502171 (not (= (head!8543 lt!1433878) (c!696507 (regex!6910 (rule!9972 token!484))))))))

(declare-fun b!4032596 () Bool)

(assert (=> b!4032596 (= e!2502173 (= lt!1433978 call!286984))))

(declare-fun b!4032597 () Bool)

(declare-fun derivativeStep!3544 (Regex!11815 C!23816) Regex!11815)

(assert (=> b!4032597 (= e!2502168 (matchR!5768 (derivativeStep!3544 (regex!6910 (rule!9972 token!484)) (head!8543 lt!1433878)) (tail!6275 lt!1433878)))))

(assert (= (and d!1194532 c!696546) b!4032591))

(assert (= (and d!1194532 (not c!696546)) b!4032597))

(assert (= (and d!1194532 c!696545) b!4032596))

(assert (= (and d!1194532 (not c!696545)) b!4032594))

(assert (= (and b!4032594 c!696544) b!4032585))

(assert (= (and b!4032594 (not c!696544)) b!4032589))

(assert (= (and b!4032589 (not res!1641723)) b!4032593))

(assert (= (and b!4032593 res!1641719) b!4032592))

(assert (= (and b!4032592 res!1641724) b!4032588))

(assert (= (and b!4032588 res!1641722) b!4032590))

(assert (= (and b!4032593 (not res!1641725)) b!4032587))

(assert (= (and b!4032587 res!1641718) b!4032584))

(assert (= (and b!4032584 (not res!1641720)) b!4032586))

(assert (= (and b!4032586 (not res!1641721)) b!4032595))

(assert (= (or b!4032596 b!4032584 b!4032592) bm!286979))

(declare-fun m!4625509 () Bool)

(assert (=> b!4032590 m!4625509))

(assert (=> b!4032595 m!4625509))

(assert (=> b!4032591 m!4625283))

(declare-fun m!4625511 () Bool)

(assert (=> d!1194532 m!4625511))

(assert (=> d!1194532 m!4625281))

(declare-fun m!4625513 () Bool)

(assert (=> b!4032586 m!4625513))

(assert (=> b!4032586 m!4625513))

(declare-fun m!4625515 () Bool)

(assert (=> b!4032586 m!4625515))

(assert (=> b!4032597 m!4625509))

(assert (=> b!4032597 m!4625509))

(declare-fun m!4625517 () Bool)

(assert (=> b!4032597 m!4625517))

(assert (=> b!4032597 m!4625513))

(assert (=> b!4032597 m!4625517))

(assert (=> b!4032597 m!4625513))

(declare-fun m!4625519 () Bool)

(assert (=> b!4032597 m!4625519))

(assert (=> b!4032588 m!4625513))

(assert (=> b!4032588 m!4625513))

(assert (=> b!4032588 m!4625515))

(assert (=> bm!286979 m!4625511))

(assert (=> b!4032356 d!1194532))

(declare-fun b!4032599 () Bool)

(declare-fun res!1641729 () Bool)

(declare-fun e!2502177 () Bool)

(assert (=> b!4032599 (=> (not res!1641729) (not e!2502177))))

(assert (=> b!4032599 (= res!1641729 (= (head!8543 lt!1433878) (head!8543 lt!1433887)))))

(declare-fun b!4032600 () Bool)

(assert (=> b!4032600 (= e!2502177 (isPrefix!3997 (tail!6275 lt!1433878) (tail!6275 lt!1433887)))))

(declare-fun d!1194534 () Bool)

(declare-fun e!2502176 () Bool)

(assert (=> d!1194534 e!2502176))

(declare-fun res!1641727 () Bool)

(assert (=> d!1194534 (=> res!1641727 e!2502176)))

(declare-fun lt!1433979 () Bool)

(assert (=> d!1194534 (= res!1641727 (not lt!1433979))))

(declare-fun e!2502175 () Bool)

(assert (=> d!1194534 (= lt!1433979 e!2502175)))

(declare-fun res!1641726 () Bool)

(assert (=> d!1194534 (=> res!1641726 e!2502175)))

(assert (=> d!1194534 (= res!1641726 ((_ is Nil!43195) lt!1433878))))

(assert (=> d!1194534 (= (isPrefix!3997 lt!1433878 lt!1433887) lt!1433979)))

(declare-fun b!4032601 () Bool)

(assert (=> b!4032601 (= e!2502176 (>= (size!32286 lt!1433887) (size!32286 lt!1433878)))))

(declare-fun b!4032598 () Bool)

(assert (=> b!4032598 (= e!2502175 e!2502177)))

(declare-fun res!1641728 () Bool)

(assert (=> b!4032598 (=> (not res!1641728) (not e!2502177))))

(assert (=> b!4032598 (= res!1641728 (not ((_ is Nil!43195) lt!1433887)))))

(assert (= (and d!1194534 (not res!1641726)) b!4032598))

(assert (= (and b!4032598 res!1641728) b!4032599))

(assert (= (and b!4032599 res!1641729) b!4032600))

(assert (= (and d!1194534 (not res!1641727)) b!4032601))

(assert (=> b!4032599 m!4625509))

(declare-fun m!4625521 () Bool)

(assert (=> b!4032599 m!4625521))

(assert (=> b!4032600 m!4625513))

(declare-fun m!4625523 () Bool)

(assert (=> b!4032600 m!4625523))

(assert (=> b!4032600 m!4625513))

(assert (=> b!4032600 m!4625523))

(declare-fun m!4625525 () Bool)

(assert (=> b!4032600 m!4625525))

(declare-fun m!4625527 () Bool)

(assert (=> b!4032601 m!4625527))

(assert (=> b!4032601 m!4625197))

(assert (=> b!4032356 d!1194534))

(declare-fun d!1194536 () Bool)

(assert (=> d!1194536 (isPrefix!3997 lt!1433878 (++!11312 prefix!494 newSuffix!27))))

(declare-fun lt!1433982 () Unit!62368)

(declare-fun choose!24398 (List!43319 List!43319 List!43319) Unit!62368)

(assert (=> d!1194536 (= lt!1433982 (choose!24398 lt!1433878 prefix!494 newSuffix!27))))

(assert (=> d!1194536 (isPrefix!3997 lt!1433878 prefix!494)))

(assert (=> d!1194536 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!790 lt!1433878 prefix!494 newSuffix!27) lt!1433982)))

(declare-fun bs!590338 () Bool)

(assert (= bs!590338 d!1194536))

(assert (=> bs!590338 m!4625157))

(assert (=> bs!590338 m!4625157))

(declare-fun m!4625529 () Bool)

(assert (=> bs!590338 m!4625529))

(declare-fun m!4625531 () Bool)

(assert (=> bs!590338 m!4625531))

(assert (=> bs!590338 m!4625229))

(assert (=> b!4032356 d!1194536))

(declare-fun d!1194538 () Bool)

(assert (=> d!1194538 (isPrefix!3997 lt!1433878 (++!11312 prefix!494 suffix!1299))))

(declare-fun lt!1433983 () Unit!62368)

(assert (=> d!1194538 (= lt!1433983 (choose!24398 lt!1433878 prefix!494 suffix!1299))))

(assert (=> d!1194538 (isPrefix!3997 lt!1433878 prefix!494)))

(assert (=> d!1194538 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!790 lt!1433878 prefix!494 suffix!1299) lt!1433983)))

(declare-fun bs!590339 () Bool)

(assert (= bs!590339 d!1194538))

(assert (=> bs!590339 m!4625177))

(assert (=> bs!590339 m!4625177))

(declare-fun m!4625533 () Bool)

(assert (=> bs!590339 m!4625533))

(declare-fun m!4625535 () Bool)

(assert (=> bs!590339 m!4625535))

(assert (=> bs!590339 m!4625229))

(assert (=> b!4032356 d!1194538))

(declare-fun d!1194540 () Bool)

(assert (=> d!1194540 (= (maxPrefixOneRule!2809 thiss!21717 (rule!9972 token!484) lt!1433903) (Some!9323 (tuple2!42279 (Token!12959 (apply!10099 (transformation!6910 (rule!9972 token!484)) (seqFromList!5127 lt!1433878)) (rule!9972 token!484) (size!32286 lt!1433878) lt!1433878) suffixResult!105)))))

(declare-fun lt!1434001 () Unit!62368)

(declare-fun choose!24400 (LexerInterface!6499 List!43321 List!43319 List!43319 List!43319 Rule!13620) Unit!62368)

(assert (=> d!1194540 (= lt!1434001 (choose!24400 thiss!21717 rules!2999 lt!1433878 lt!1433903 suffixResult!105 (rule!9972 token!484)))))

(assert (=> d!1194540 (not (isEmpty!25775 rules!2999))))

(assert (=> d!1194540 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1615 thiss!21717 rules!2999 lt!1433878 lt!1433903 suffixResult!105 (rule!9972 token!484)) lt!1434001)))

(declare-fun bs!590340 () Bool)

(assert (= bs!590340 d!1194540))

(assert (=> bs!590340 m!4625251))

(assert (=> bs!590340 m!4625195))

(assert (=> bs!590340 m!4625197))

(declare-fun m!4625579 () Bool)

(assert (=> bs!590340 m!4625579))

(assert (=> bs!590340 m!4625257))

(assert (=> bs!590340 m!4625251))

(assert (=> bs!590340 m!4625253))

(assert (=> b!4032367 d!1194540))

(declare-fun d!1194544 () Bool)

(declare-fun e!2502275 () Bool)

(assert (=> d!1194544 e!2502275))

(declare-fun res!1641854 () Bool)

(assert (=> d!1194544 (=> res!1641854 e!2502275)))

(declare-fun lt!1434057 () Option!9324)

(declare-fun isEmpty!25779 (Option!9324) Bool)

(assert (=> d!1194544 (= res!1641854 (isEmpty!25779 lt!1434057))))

(declare-fun e!2502272 () Option!9324)

(assert (=> d!1194544 (= lt!1434057 e!2502272)))

(declare-fun c!696574 () Bool)

(declare-datatypes ((tuple2!42282 0))(
  ( (tuple2!42283 (_1!24275 List!43319) (_2!24275 List!43319)) )
))
(declare-fun lt!1434056 () tuple2!42282)

(assert (=> d!1194544 (= c!696574 (isEmpty!25778 (_1!24275 lt!1434056)))))

(declare-fun findLongestMatch!1290 (Regex!11815 List!43319) tuple2!42282)

(assert (=> d!1194544 (= lt!1434056 (findLongestMatch!1290 (regex!6910 (rule!9972 token!484)) lt!1433903))))

(assert (=> d!1194544 (ruleValid!2840 thiss!21717 (rule!9972 token!484))))

(assert (=> d!1194544 (= (maxPrefixOneRule!2809 thiss!21717 (rule!9972 token!484) lt!1433903) lt!1434057)))

(declare-fun b!4032778 () Bool)

(declare-fun res!1641852 () Bool)

(declare-fun e!2502274 () Bool)

(assert (=> b!4032778 (=> (not res!1641852) (not e!2502274))))

(declare-fun get!14173 (Option!9324) tuple2!42278)

(assert (=> b!4032778 (= res!1641852 (= (rule!9972 (_1!24273 (get!14173 lt!1434057))) (rule!9972 token!484)))))

(declare-fun b!4032779 () Bool)

(declare-fun size!32288 (BalanceConc!25836) Int)

(assert (=> b!4032779 (= e!2502272 (Some!9323 (tuple2!42279 (Token!12959 (apply!10099 (transformation!6910 (rule!9972 token!484)) (seqFromList!5127 (_1!24275 lt!1434056))) (rule!9972 token!484) (size!32288 (seqFromList!5127 (_1!24275 lt!1434056))) (_1!24275 lt!1434056)) (_2!24275 lt!1434056))))))

(declare-fun lt!1434055 () Unit!62368)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1350 (Regex!11815 List!43319) Unit!62368)

(assert (=> b!4032779 (= lt!1434055 (longestMatchIsAcceptedByMatchOrIsEmpty!1350 (regex!6910 (rule!9972 token!484)) lt!1433903))))

(declare-fun res!1641858 () Bool)

(declare-fun findLongestMatchInner!1377 (Regex!11815 List!43319 Int List!43319 List!43319 Int) tuple2!42282)

(assert (=> b!4032779 (= res!1641858 (isEmpty!25778 (_1!24275 (findLongestMatchInner!1377 (regex!6910 (rule!9972 token!484)) Nil!43195 (size!32286 Nil!43195) lt!1433903 lt!1433903 (size!32286 lt!1433903)))))))

(declare-fun e!2502273 () Bool)

(assert (=> b!4032779 (=> res!1641858 e!2502273)))

(assert (=> b!4032779 e!2502273))

(declare-fun lt!1434058 () Unit!62368)

(assert (=> b!4032779 (= lt!1434058 lt!1434055)))

(declare-fun lt!1434054 () Unit!62368)

(declare-fun lemmaSemiInverse!1897 (TokenValueInjection!13708 BalanceConc!25836) Unit!62368)

(assert (=> b!4032779 (= lt!1434054 (lemmaSemiInverse!1897 (transformation!6910 (rule!9972 token!484)) (seqFromList!5127 (_1!24275 lt!1434056))))))

(declare-fun b!4032780 () Bool)

(declare-fun res!1641857 () Bool)

(assert (=> b!4032780 (=> (not res!1641857) (not e!2502274))))

(assert (=> b!4032780 (= res!1641857 (= (value!217569 (_1!24273 (get!14173 lt!1434057))) (apply!10099 (transformation!6910 (rule!9972 (_1!24273 (get!14173 lt!1434057)))) (seqFromList!5127 (originalCharacters!7510 (_1!24273 (get!14173 lt!1434057)))))))))

(declare-fun b!4032781 () Bool)

(assert (=> b!4032781 (= e!2502275 e!2502274)))

(declare-fun res!1641855 () Bool)

(assert (=> b!4032781 (=> (not res!1641855) (not e!2502274))))

(assert (=> b!4032781 (= res!1641855 (matchR!5768 (regex!6910 (rule!9972 token!484)) (list!16072 (charsOf!4726 (_1!24273 (get!14173 lt!1434057))))))))

(declare-fun b!4032782 () Bool)

(declare-fun res!1641853 () Bool)

(assert (=> b!4032782 (=> (not res!1641853) (not e!2502274))))

(assert (=> b!4032782 (= res!1641853 (< (size!32286 (_2!24273 (get!14173 lt!1434057))) (size!32286 lt!1433903)))))

(declare-fun b!4032783 () Bool)

(assert (=> b!4032783 (= e!2502273 (matchR!5768 (regex!6910 (rule!9972 token!484)) (_1!24275 (findLongestMatchInner!1377 (regex!6910 (rule!9972 token!484)) Nil!43195 (size!32286 Nil!43195) lt!1433903 lt!1433903 (size!32286 lt!1433903)))))))

(declare-fun b!4032784 () Bool)

(assert (=> b!4032784 (= e!2502274 (= (size!32285 (_1!24273 (get!14173 lt!1434057))) (size!32286 (originalCharacters!7510 (_1!24273 (get!14173 lt!1434057))))))))

(declare-fun b!4032785 () Bool)

(declare-fun res!1641856 () Bool)

(assert (=> b!4032785 (=> (not res!1641856) (not e!2502274))))

(assert (=> b!4032785 (= res!1641856 (= (++!11312 (list!16072 (charsOf!4726 (_1!24273 (get!14173 lt!1434057)))) (_2!24273 (get!14173 lt!1434057))) lt!1433903))))

(declare-fun b!4032786 () Bool)

(assert (=> b!4032786 (= e!2502272 None!9323)))

(assert (= (and d!1194544 c!696574) b!4032786))

(assert (= (and d!1194544 (not c!696574)) b!4032779))

(assert (= (and b!4032779 (not res!1641858)) b!4032783))

(assert (= (and d!1194544 (not res!1641854)) b!4032781))

(assert (= (and b!4032781 res!1641855) b!4032785))

(assert (= (and b!4032785 res!1641856) b!4032782))

(assert (= (and b!4032782 res!1641853) b!4032778))

(assert (= (and b!4032778 res!1641852) b!4032780))

(assert (= (and b!4032780 res!1641857) b!4032784))

(declare-fun m!4625769 () Bool)

(assert (=> b!4032782 m!4625769))

(declare-fun m!4625771 () Bool)

(assert (=> b!4032782 m!4625771))

(declare-fun m!4625773 () Bool)

(assert (=> b!4032782 m!4625773))

(assert (=> b!4032781 m!4625769))

(declare-fun m!4625775 () Bool)

(assert (=> b!4032781 m!4625775))

(assert (=> b!4032781 m!4625775))

(declare-fun m!4625777 () Bool)

(assert (=> b!4032781 m!4625777))

(assert (=> b!4032781 m!4625777))

(declare-fun m!4625779 () Bool)

(assert (=> b!4032781 m!4625779))

(assert (=> b!4032778 m!4625769))

(assert (=> b!4032785 m!4625769))

(assert (=> b!4032785 m!4625775))

(assert (=> b!4032785 m!4625775))

(assert (=> b!4032785 m!4625777))

(assert (=> b!4032785 m!4625777))

(declare-fun m!4625781 () Bool)

(assert (=> b!4032785 m!4625781))

(declare-fun m!4625783 () Bool)

(assert (=> b!4032779 m!4625783))

(assert (=> b!4032779 m!4625773))

(declare-fun m!4625785 () Bool)

(assert (=> b!4032779 m!4625785))

(assert (=> b!4032779 m!4625773))

(declare-fun m!4625787 () Bool)

(assert (=> b!4032779 m!4625787))

(declare-fun m!4625789 () Bool)

(assert (=> b!4032779 m!4625789))

(declare-fun m!4625791 () Bool)

(assert (=> b!4032779 m!4625791))

(assert (=> b!4032779 m!4625789))

(declare-fun m!4625793 () Bool)

(assert (=> b!4032779 m!4625793))

(declare-fun m!4625795 () Bool)

(assert (=> b!4032779 m!4625795))

(assert (=> b!4032779 m!4625789))

(declare-fun m!4625797 () Bool)

(assert (=> b!4032779 m!4625797))

(assert (=> b!4032779 m!4625789))

(assert (=> b!4032779 m!4625783))

(assert (=> b!4032780 m!4625769))

(declare-fun m!4625799 () Bool)

(assert (=> b!4032780 m!4625799))

(assert (=> b!4032780 m!4625799))

(declare-fun m!4625801 () Bool)

(assert (=> b!4032780 m!4625801))

(assert (=> b!4032784 m!4625769))

(declare-fun m!4625803 () Bool)

(assert (=> b!4032784 m!4625803))

(assert (=> b!4032783 m!4625783))

(assert (=> b!4032783 m!4625773))

(assert (=> b!4032783 m!4625783))

(assert (=> b!4032783 m!4625773))

(assert (=> b!4032783 m!4625785))

(declare-fun m!4625805 () Bool)

(assert (=> b!4032783 m!4625805))

(declare-fun m!4625807 () Bool)

(assert (=> d!1194544 m!4625807))

(declare-fun m!4625809 () Bool)

(assert (=> d!1194544 m!4625809))

(declare-fun m!4625811 () Bool)

(assert (=> d!1194544 m!4625811))

(assert (=> d!1194544 m!4625209))

(assert (=> b!4032367 d!1194544))

(declare-fun d!1194616 () Bool)

(declare-fun fromListB!2334 (List!43319) BalanceConc!25836)

(assert (=> d!1194616 (= (seqFromList!5127 lt!1433878) (fromListB!2334 lt!1433878))))

(declare-fun bs!590351 () Bool)

(assert (= bs!590351 d!1194616))

(declare-fun m!4625821 () Bool)

(assert (=> bs!590351 m!4625821))

(assert (=> b!4032367 d!1194616))

(declare-fun d!1194622 () Bool)

(assert (=> d!1194622 (isPrefix!3997 lt!1433878 (++!11312 lt!1433878 lt!1433871))))

(declare-fun lt!1434066 () Unit!62368)

(declare-fun choose!24401 (List!43319 List!43319) Unit!62368)

(assert (=> d!1194622 (= lt!1434066 (choose!24401 lt!1433878 lt!1433871))))

(assert (=> d!1194622 (= (lemmaConcatTwoListThenFirstIsPrefix!2832 lt!1433878 lt!1433871) lt!1434066)))

(declare-fun bs!590352 () Bool)

(assert (= bs!590352 d!1194622))

(assert (=> bs!590352 m!4625167))

(assert (=> bs!590352 m!4625167))

(declare-fun m!4625823 () Bool)

(assert (=> bs!590352 m!4625823))

(declare-fun m!4625825 () Bool)

(assert (=> bs!590352 m!4625825))

(assert (=> b!4032367 d!1194622))

(declare-fun b!4032826 () Bool)

(declare-fun res!1641868 () Bool)

(declare-fun e!2502298 () Bool)

(assert (=> b!4032826 (=> (not res!1641868) (not e!2502298))))

(assert (=> b!4032826 (= res!1641868 (= (head!8543 lt!1433878) (head!8543 lt!1433873)))))

(declare-fun b!4032827 () Bool)

(assert (=> b!4032827 (= e!2502298 (isPrefix!3997 (tail!6275 lt!1433878) (tail!6275 lt!1433873)))))

(declare-fun d!1194624 () Bool)

(declare-fun e!2502297 () Bool)

(assert (=> d!1194624 e!2502297))

(declare-fun res!1641866 () Bool)

(assert (=> d!1194624 (=> res!1641866 e!2502297)))

(declare-fun lt!1434067 () Bool)

(assert (=> d!1194624 (= res!1641866 (not lt!1434067))))

(declare-fun e!2502296 () Bool)

(assert (=> d!1194624 (= lt!1434067 e!2502296)))

(declare-fun res!1641865 () Bool)

(assert (=> d!1194624 (=> res!1641865 e!2502296)))

(assert (=> d!1194624 (= res!1641865 ((_ is Nil!43195) lt!1433878))))

(assert (=> d!1194624 (= (isPrefix!3997 lt!1433878 lt!1433873) lt!1434067)))

(declare-fun b!4032828 () Bool)

(assert (=> b!4032828 (= e!2502297 (>= (size!32286 lt!1433873) (size!32286 lt!1433878)))))

(declare-fun b!4032825 () Bool)

(assert (=> b!4032825 (= e!2502296 e!2502298)))

(declare-fun res!1641867 () Bool)

(assert (=> b!4032825 (=> (not res!1641867) (not e!2502298))))

(assert (=> b!4032825 (= res!1641867 (not ((_ is Nil!43195) lt!1433873)))))

(assert (= (and d!1194624 (not res!1641865)) b!4032825))

(assert (= (and b!4032825 res!1641867) b!4032826))

(assert (= (and b!4032826 res!1641868) b!4032827))

(assert (= (and d!1194624 (not res!1641866)) b!4032828))

(assert (=> b!4032826 m!4625509))

(declare-fun m!4625827 () Bool)

(assert (=> b!4032826 m!4625827))

(assert (=> b!4032827 m!4625513))

(declare-fun m!4625829 () Bool)

(assert (=> b!4032827 m!4625829))

(assert (=> b!4032827 m!4625513))

(assert (=> b!4032827 m!4625829))

(declare-fun m!4625831 () Bool)

(assert (=> b!4032827 m!4625831))

(declare-fun m!4625833 () Bool)

(assert (=> b!4032828 m!4625833))

(assert (=> b!4032828 m!4625197))

(assert (=> b!4032367 d!1194624))

(declare-fun d!1194626 () Bool)

(assert (=> d!1194626 (= lt!1433871 suffixResult!105)))

(declare-fun lt!1434070 () Unit!62368)

(declare-fun choose!24403 (List!43319 List!43319 List!43319 List!43319 List!43319) Unit!62368)

(assert (=> d!1194626 (= lt!1434070 (choose!24403 lt!1433878 lt!1433871 lt!1433878 suffixResult!105 lt!1433903))))

(assert (=> d!1194626 (isPrefix!3997 lt!1433878 lt!1433903)))

(assert (=> d!1194626 (= (lemmaSamePrefixThenSameSuffix!2158 lt!1433878 lt!1433871 lt!1433878 suffixResult!105 lt!1433903) lt!1434070)))

(declare-fun bs!590353 () Bool)

(assert (= bs!590353 d!1194626))

(declare-fun m!4625839 () Bool)

(assert (=> bs!590353 m!4625839))

(assert (=> bs!590353 m!4625245))

(assert (=> b!4032367 d!1194626))

(declare-fun d!1194628 () Bool)

(declare-fun dynLambda!18309 (Int BalanceConc!25836) TokenValue!7140)

(assert (=> d!1194628 (= (apply!10099 (transformation!6910 (rule!9972 token!484)) (seqFromList!5127 lt!1433878)) (dynLambda!18309 (toValue!9438 (transformation!6910 (rule!9972 token!484))) (seqFromList!5127 lt!1433878)))))

(declare-fun b_lambda!117647 () Bool)

(assert (=> (not b_lambda!117647) (not d!1194628)))

(declare-fun t!334338 () Bool)

(declare-fun tb!242257 () Bool)

(assert (=> (and b!4032347 (= (toValue!9438 (transformation!6910 (rule!9972 token!484))) (toValue!9438 (transformation!6910 (rule!9972 token!484)))) t!334338) tb!242257))

(declare-fun result!293652 () Bool)

(assert (=> tb!242257 (= result!293652 (inv!21 (dynLambda!18309 (toValue!9438 (transformation!6910 (rule!9972 token!484))) (seqFromList!5127 lt!1433878))))))

(declare-fun m!4625841 () Bool)

(assert (=> tb!242257 m!4625841))

(assert (=> d!1194628 t!334338))

(declare-fun b_and!309907 () Bool)

(assert (= b_and!309883 (and (=> t!334338 result!293652) b_and!309907)))

(declare-fun t!334340 () Bool)

(declare-fun tb!242259 () Bool)

(assert (=> (and b!4032365 (= (toValue!9438 (transformation!6910 (h!48617 rules!2999))) (toValue!9438 (transformation!6910 (rule!9972 token!484)))) t!334340) tb!242259))

(declare-fun result!293656 () Bool)

(assert (= result!293656 result!293652))

(assert (=> d!1194628 t!334340))

(declare-fun b_and!309909 () Bool)

(assert (= b_and!309887 (and (=> t!334340 result!293656) b_and!309909)))

(assert (=> d!1194628 m!4625251))

(declare-fun m!4625843 () Bool)

(assert (=> d!1194628 m!4625843))

(assert (=> b!4032367 d!1194628))

(declare-fun d!1194630 () Bool)

(declare-fun res!1641873 () Bool)

(declare-fun e!2502316 () Bool)

(assert (=> d!1194630 (=> (not res!1641873) (not e!2502316))))

(assert (=> d!1194630 (= res!1641873 (not (isEmpty!25778 (originalCharacters!7510 token!484))))))

(assert (=> d!1194630 (= (inv!57709 token!484) e!2502316)))

(declare-fun b!4032846 () Bool)

(declare-fun res!1641874 () Bool)

(assert (=> b!4032846 (=> (not res!1641874) (not e!2502316))))

(declare-fun dynLambda!18310 (Int TokenValue!7140) BalanceConc!25836)

(assert (=> b!4032846 (= res!1641874 (= (originalCharacters!7510 token!484) (list!16072 (dynLambda!18310 (toChars!9297 (transformation!6910 (rule!9972 token!484))) (value!217569 token!484)))))))

(declare-fun b!4032847 () Bool)

(assert (=> b!4032847 (= e!2502316 (= (size!32285 token!484) (size!32286 (originalCharacters!7510 token!484))))))

(assert (= (and d!1194630 res!1641873) b!4032846))

(assert (= (and b!4032846 res!1641874) b!4032847))

(declare-fun b_lambda!117649 () Bool)

(assert (=> (not b_lambda!117649) (not b!4032846)))

(declare-fun t!334342 () Bool)

(declare-fun tb!242261 () Bool)

(assert (=> (and b!4032347 (= (toChars!9297 (transformation!6910 (rule!9972 token!484))) (toChars!9297 (transformation!6910 (rule!9972 token!484)))) t!334342) tb!242261))

(declare-fun b!4032852 () Bool)

(declare-fun e!2502319 () Bool)

(declare-fun tp!1225444 () Bool)

(declare-fun inv!57713 (Conc!13121) Bool)

(assert (=> b!4032852 (= e!2502319 (and (inv!57713 (c!696506 (dynLambda!18310 (toChars!9297 (transformation!6910 (rule!9972 token!484))) (value!217569 token!484)))) tp!1225444))))

(declare-fun result!293658 () Bool)

(declare-fun inv!57714 (BalanceConc!25836) Bool)

(assert (=> tb!242261 (= result!293658 (and (inv!57714 (dynLambda!18310 (toChars!9297 (transformation!6910 (rule!9972 token!484))) (value!217569 token!484))) e!2502319))))

(assert (= tb!242261 b!4032852))

(declare-fun m!4625845 () Bool)

(assert (=> b!4032852 m!4625845))

(declare-fun m!4625847 () Bool)

(assert (=> tb!242261 m!4625847))

(assert (=> b!4032846 t!334342))

(declare-fun b_and!309911 () Bool)

(assert (= b_and!309885 (and (=> t!334342 result!293658) b_and!309911)))

(declare-fun t!334344 () Bool)

(declare-fun tb!242263 () Bool)

(assert (=> (and b!4032365 (= (toChars!9297 (transformation!6910 (h!48617 rules!2999))) (toChars!9297 (transformation!6910 (rule!9972 token!484)))) t!334344) tb!242263))

(declare-fun result!293662 () Bool)

(assert (= result!293662 result!293658))

(assert (=> b!4032846 t!334344))

(declare-fun b_and!309913 () Bool)

(assert (= b_and!309889 (and (=> t!334344 result!293662) b_and!309913)))

(declare-fun m!4625849 () Bool)

(assert (=> d!1194630 m!4625849))

(declare-fun m!4625851 () Bool)

(assert (=> b!4032846 m!4625851))

(assert (=> b!4032846 m!4625851))

(declare-fun m!4625853 () Bool)

(assert (=> b!4032846 m!4625853))

(assert (=> b!4032847 m!4625163))

(assert (=> start!379912 d!1194630))

(declare-fun b!4032854 () Bool)

(declare-fun e!2502320 () List!43319)

(assert (=> b!4032854 (= e!2502320 (Cons!43195 (h!48615 lt!1433878) (++!11312 (t!334322 lt!1433878) lt!1433892)))))

(declare-fun b!4032855 () Bool)

(declare-fun res!1641875 () Bool)

(declare-fun e!2502321 () Bool)

(assert (=> b!4032855 (=> (not res!1641875) (not e!2502321))))

(declare-fun lt!1434071 () List!43319)

(assert (=> b!4032855 (= res!1641875 (= (size!32286 lt!1434071) (+ (size!32286 lt!1433878) (size!32286 lt!1433892))))))

(declare-fun d!1194632 () Bool)

(assert (=> d!1194632 e!2502321))

(declare-fun res!1641876 () Bool)

(assert (=> d!1194632 (=> (not res!1641876) (not e!2502321))))

(assert (=> d!1194632 (= res!1641876 (= (content!6558 lt!1434071) ((_ map or) (content!6558 lt!1433878) (content!6558 lt!1433892))))))

(assert (=> d!1194632 (= lt!1434071 e!2502320)))

(declare-fun c!696577 () Bool)

(assert (=> d!1194632 (= c!696577 ((_ is Nil!43195) lt!1433878))))

(assert (=> d!1194632 (= (++!11312 lt!1433878 lt!1433892) lt!1434071)))

(declare-fun b!4032853 () Bool)

(assert (=> b!4032853 (= e!2502320 lt!1433892)))

(declare-fun b!4032856 () Bool)

(assert (=> b!4032856 (= e!2502321 (or (not (= lt!1433892 Nil!43195)) (= lt!1434071 lt!1433878)))))

(assert (= (and d!1194632 c!696577) b!4032853))

(assert (= (and d!1194632 (not c!696577)) b!4032854))

(assert (= (and d!1194632 res!1641876) b!4032855))

(assert (= (and b!4032855 res!1641875) b!4032856))

(declare-fun m!4625855 () Bool)

(assert (=> b!4032854 m!4625855))

(declare-fun m!4625857 () Bool)

(assert (=> b!4032855 m!4625857))

(assert (=> b!4032855 m!4625197))

(declare-fun m!4625859 () Bool)

(assert (=> b!4032855 m!4625859))

(declare-fun m!4625861 () Bool)

(assert (=> d!1194632 m!4625861))

(assert (=> d!1194632 m!4625273))

(declare-fun m!4625863 () Bool)

(assert (=> d!1194632 m!4625863))

(assert (=> b!4032358 d!1194632))

(declare-fun d!1194634 () Bool)

(declare-fun lt!1434074 () List!43319)

(assert (=> d!1194634 (= (++!11312 lt!1433878 lt!1434074) lt!1433903)))

(declare-fun e!2502324 () List!43319)

(assert (=> d!1194634 (= lt!1434074 e!2502324)))

(declare-fun c!696580 () Bool)

(assert (=> d!1194634 (= c!696580 ((_ is Cons!43195) lt!1433878))))

(assert (=> d!1194634 (>= (size!32286 lt!1433903) (size!32286 lt!1433878))))

(assert (=> d!1194634 (= (getSuffix!2414 lt!1433903 lt!1433878) lt!1434074)))

(declare-fun b!4032861 () Bool)

(assert (=> b!4032861 (= e!2502324 (getSuffix!2414 (tail!6275 lt!1433903) (t!334322 lt!1433878)))))

(declare-fun b!4032862 () Bool)

(assert (=> b!4032862 (= e!2502324 lt!1433903)))

(assert (= (and d!1194634 c!696580) b!4032861))

(assert (= (and d!1194634 (not c!696580)) b!4032862))

(declare-fun m!4625865 () Bool)

(assert (=> d!1194634 m!4625865))

(assert (=> d!1194634 m!4625773))

(assert (=> d!1194634 m!4625197))

(declare-fun m!4625867 () Bool)

(assert (=> b!4032861 m!4625867))

(assert (=> b!4032861 m!4625867))

(declare-fun m!4625869 () Bool)

(assert (=> b!4032861 m!4625869))

(assert (=> b!4032358 d!1194634))

(declare-fun b!4032864 () Bool)

(declare-fun res!1641880 () Bool)

(declare-fun e!2502327 () Bool)

(assert (=> b!4032864 (=> (not res!1641880) (not e!2502327))))

(assert (=> b!4032864 (= res!1641880 (= (head!8543 lt!1433903) (head!8543 lt!1433903)))))

(declare-fun b!4032865 () Bool)

(assert (=> b!4032865 (= e!2502327 (isPrefix!3997 (tail!6275 lt!1433903) (tail!6275 lt!1433903)))))

(declare-fun d!1194636 () Bool)

(declare-fun e!2502326 () Bool)

(assert (=> d!1194636 e!2502326))

(declare-fun res!1641878 () Bool)

(assert (=> d!1194636 (=> res!1641878 e!2502326)))

(declare-fun lt!1434075 () Bool)

(assert (=> d!1194636 (= res!1641878 (not lt!1434075))))

(declare-fun e!2502325 () Bool)

(assert (=> d!1194636 (= lt!1434075 e!2502325)))

(declare-fun res!1641877 () Bool)

(assert (=> d!1194636 (=> res!1641877 e!2502325)))

(assert (=> d!1194636 (= res!1641877 ((_ is Nil!43195) lt!1433903))))

(assert (=> d!1194636 (= (isPrefix!3997 lt!1433903 lt!1433903) lt!1434075)))

(declare-fun b!4032866 () Bool)

(assert (=> b!4032866 (= e!2502326 (>= (size!32286 lt!1433903) (size!32286 lt!1433903)))))

(declare-fun b!4032863 () Bool)

(assert (=> b!4032863 (= e!2502325 e!2502327)))

(declare-fun res!1641879 () Bool)

(assert (=> b!4032863 (=> (not res!1641879) (not e!2502327))))

(assert (=> b!4032863 (= res!1641879 (not ((_ is Nil!43195) lt!1433903)))))

(assert (= (and d!1194636 (not res!1641877)) b!4032863))

(assert (= (and b!4032863 res!1641879) b!4032864))

(assert (= (and b!4032864 res!1641880) b!4032865))

(assert (= (and d!1194636 (not res!1641878)) b!4032866))

(declare-fun m!4625871 () Bool)

(assert (=> b!4032864 m!4625871))

(assert (=> b!4032864 m!4625871))

(assert (=> b!4032865 m!4625867))

(assert (=> b!4032865 m!4625867))

(assert (=> b!4032865 m!4625867))

(assert (=> b!4032865 m!4625867))

(declare-fun m!4625873 () Bool)

(assert (=> b!4032865 m!4625873))

(assert (=> b!4032866 m!4625773))

(assert (=> b!4032866 m!4625773))

(assert (=> b!4032358 d!1194636))

(declare-fun d!1194638 () Bool)

(assert (=> d!1194638 (isPrefix!3997 lt!1433903 lt!1433903)))

(declare-fun lt!1434078 () Unit!62368)

(declare-fun choose!24405 (List!43319 List!43319) Unit!62368)

(assert (=> d!1194638 (= lt!1434078 (choose!24405 lt!1433903 lt!1433903))))

(assert (=> d!1194638 (= (lemmaIsPrefixRefl!2564 lt!1433903 lt!1433903) lt!1434078)))

(declare-fun bs!590354 () Bool)

(assert (= bs!590354 d!1194638))

(assert (=> bs!590354 m!4625145))

(declare-fun m!4625875 () Bool)

(assert (=> bs!590354 m!4625875))

(assert (=> b!4032358 d!1194638))

(declare-fun b!4032868 () Bool)

(declare-fun res!1641884 () Bool)

(declare-fun e!2502330 () Bool)

(assert (=> b!4032868 (=> (not res!1641884) (not e!2502330))))

(assert (=> b!4032868 (= res!1641884 (= (head!8543 prefix!494) (head!8543 lt!1433903)))))

(declare-fun b!4032869 () Bool)

(assert (=> b!4032869 (= e!2502330 (isPrefix!3997 (tail!6275 prefix!494) (tail!6275 lt!1433903)))))

(declare-fun d!1194640 () Bool)

(declare-fun e!2502329 () Bool)

(assert (=> d!1194640 e!2502329))

(declare-fun res!1641882 () Bool)

(assert (=> d!1194640 (=> res!1641882 e!2502329)))

(declare-fun lt!1434079 () Bool)

(assert (=> d!1194640 (= res!1641882 (not lt!1434079))))

(declare-fun e!2502328 () Bool)

(assert (=> d!1194640 (= lt!1434079 e!2502328)))

(declare-fun res!1641881 () Bool)

(assert (=> d!1194640 (=> res!1641881 e!2502328)))

(assert (=> d!1194640 (= res!1641881 ((_ is Nil!43195) prefix!494))))

(assert (=> d!1194640 (= (isPrefix!3997 prefix!494 lt!1433903) lt!1434079)))

(declare-fun b!4032870 () Bool)

(assert (=> b!4032870 (= e!2502329 (>= (size!32286 lt!1433903) (size!32286 prefix!494)))))

(declare-fun b!4032867 () Bool)

(assert (=> b!4032867 (= e!2502328 e!2502330)))

(declare-fun res!1641883 () Bool)

(assert (=> b!4032867 (=> (not res!1641883) (not e!2502330))))

(assert (=> b!4032867 (= res!1641883 (not ((_ is Nil!43195) lt!1433903)))))

(assert (= (and d!1194640 (not res!1641881)) b!4032867))

(assert (= (and b!4032867 res!1641883) b!4032868))

(assert (= (and b!4032868 res!1641884) b!4032869))

(assert (= (and d!1194640 (not res!1641882)) b!4032870))

(declare-fun m!4625877 () Bool)

(assert (=> b!4032868 m!4625877))

(assert (=> b!4032868 m!4625871))

(declare-fun m!4625879 () Bool)

(assert (=> b!4032869 m!4625879))

(assert (=> b!4032869 m!4625867))

(assert (=> b!4032869 m!4625879))

(assert (=> b!4032869 m!4625867))

(declare-fun m!4625881 () Bool)

(assert (=> b!4032869 m!4625881))

(assert (=> b!4032870 m!4625773))

(assert (=> b!4032870 m!4625199))

(assert (=> b!4032368 d!1194640))

(declare-fun b!4032872 () Bool)

(declare-fun res!1641888 () Bool)

(declare-fun e!2502333 () Bool)

(assert (=> b!4032872 (=> (not res!1641888) (not e!2502333))))

(assert (=> b!4032872 (= res!1641888 (= (head!8543 lt!1433878) (head!8543 lt!1433883)))))

(declare-fun b!4032873 () Bool)

(assert (=> b!4032873 (= e!2502333 (isPrefix!3997 (tail!6275 lt!1433878) (tail!6275 lt!1433883)))))

(declare-fun d!1194642 () Bool)

(declare-fun e!2502332 () Bool)

(assert (=> d!1194642 e!2502332))

(declare-fun res!1641886 () Bool)

(assert (=> d!1194642 (=> res!1641886 e!2502332)))

(declare-fun lt!1434080 () Bool)

(assert (=> d!1194642 (= res!1641886 (not lt!1434080))))

(declare-fun e!2502331 () Bool)

(assert (=> d!1194642 (= lt!1434080 e!2502331)))

(declare-fun res!1641885 () Bool)

(assert (=> d!1194642 (=> res!1641885 e!2502331)))

(assert (=> d!1194642 (= res!1641885 ((_ is Nil!43195) lt!1433878))))

(assert (=> d!1194642 (= (isPrefix!3997 lt!1433878 lt!1433883) lt!1434080)))

(declare-fun b!4032874 () Bool)

(assert (=> b!4032874 (= e!2502332 (>= (size!32286 lt!1433883) (size!32286 lt!1433878)))))

(declare-fun b!4032871 () Bool)

(assert (=> b!4032871 (= e!2502331 e!2502333)))

(declare-fun res!1641887 () Bool)

(assert (=> b!4032871 (=> (not res!1641887) (not e!2502333))))

(assert (=> b!4032871 (= res!1641887 (not ((_ is Nil!43195) lt!1433883)))))

(assert (= (and d!1194642 (not res!1641885)) b!4032871))

(assert (= (and b!4032871 res!1641887) b!4032872))

(assert (= (and b!4032872 res!1641888) b!4032873))

(assert (= (and d!1194642 (not res!1641886)) b!4032874))

(assert (=> b!4032872 m!4625509))

(declare-fun m!4625883 () Bool)

(assert (=> b!4032872 m!4625883))

(assert (=> b!4032873 m!4625513))

(declare-fun m!4625885 () Bool)

(assert (=> b!4032873 m!4625885))

(assert (=> b!4032873 m!4625513))

(assert (=> b!4032873 m!4625885))

(declare-fun m!4625887 () Bool)

(assert (=> b!4032873 m!4625887))

(declare-fun m!4625889 () Bool)

(assert (=> b!4032874 m!4625889))

(assert (=> b!4032874 m!4625197))

(assert (=> b!4032368 d!1194642))

(declare-fun b!4032876 () Bool)

(declare-fun res!1641892 () Bool)

(declare-fun e!2502336 () Bool)

(assert (=> b!4032876 (=> (not res!1641892) (not e!2502336))))

(assert (=> b!4032876 (= res!1641892 (= (head!8543 lt!1433878) (head!8543 lt!1433903)))))

(declare-fun b!4032877 () Bool)

(assert (=> b!4032877 (= e!2502336 (isPrefix!3997 (tail!6275 lt!1433878) (tail!6275 lt!1433903)))))

(declare-fun d!1194644 () Bool)

(declare-fun e!2502335 () Bool)

(assert (=> d!1194644 e!2502335))

(declare-fun res!1641890 () Bool)

(assert (=> d!1194644 (=> res!1641890 e!2502335)))

(declare-fun lt!1434081 () Bool)

(assert (=> d!1194644 (= res!1641890 (not lt!1434081))))

(declare-fun e!2502334 () Bool)

(assert (=> d!1194644 (= lt!1434081 e!2502334)))

(declare-fun res!1641889 () Bool)

(assert (=> d!1194644 (=> res!1641889 e!2502334)))

(assert (=> d!1194644 (= res!1641889 ((_ is Nil!43195) lt!1433878))))

(assert (=> d!1194644 (= (isPrefix!3997 lt!1433878 lt!1433903) lt!1434081)))

(declare-fun b!4032878 () Bool)

(assert (=> b!4032878 (= e!2502335 (>= (size!32286 lt!1433903) (size!32286 lt!1433878)))))

(declare-fun b!4032875 () Bool)

(assert (=> b!4032875 (= e!2502334 e!2502336)))

(declare-fun res!1641891 () Bool)

(assert (=> b!4032875 (=> (not res!1641891) (not e!2502336))))

(assert (=> b!4032875 (= res!1641891 (not ((_ is Nil!43195) lt!1433903)))))

(assert (= (and d!1194644 (not res!1641889)) b!4032875))

(assert (= (and b!4032875 res!1641891) b!4032876))

(assert (= (and b!4032876 res!1641892) b!4032877))

(assert (= (and d!1194644 (not res!1641890)) b!4032878))

(assert (=> b!4032876 m!4625509))

(assert (=> b!4032876 m!4625871))

(assert (=> b!4032877 m!4625513))

(assert (=> b!4032877 m!4625867))

(assert (=> b!4032877 m!4625513))

(assert (=> b!4032877 m!4625867))

(declare-fun m!4625891 () Bool)

(assert (=> b!4032877 m!4625891))

(assert (=> b!4032878 m!4625773))

(assert (=> b!4032878 m!4625197))

(assert (=> b!4032368 d!1194644))

(declare-fun d!1194646 () Bool)

(assert (=> d!1194646 (isPrefix!3997 prefix!494 (++!11312 prefix!494 suffix!1299))))

(declare-fun lt!1434082 () Unit!62368)

(assert (=> d!1194646 (= lt!1434082 (choose!24401 prefix!494 suffix!1299))))

(assert (=> d!1194646 (= (lemmaConcatTwoListThenFirstIsPrefix!2832 prefix!494 suffix!1299) lt!1434082)))

(declare-fun bs!590355 () Bool)

(assert (= bs!590355 d!1194646))

(assert (=> bs!590355 m!4625177))

(assert (=> bs!590355 m!4625177))

(declare-fun m!4625893 () Bool)

(assert (=> bs!590355 m!4625893))

(declare-fun m!4625895 () Bool)

(assert (=> bs!590355 m!4625895))

(assert (=> b!4032368 d!1194646))

(declare-fun d!1194648 () Bool)

(assert (=> d!1194648 (isPrefix!3997 lt!1433878 (++!11312 lt!1433878 suffixResult!105))))

(declare-fun lt!1434083 () Unit!62368)

(assert (=> d!1194648 (= lt!1434083 (choose!24401 lt!1433878 suffixResult!105))))

(assert (=> d!1194648 (= (lemmaConcatTwoListThenFirstIsPrefix!2832 lt!1433878 suffixResult!105) lt!1434083)))

(declare-fun bs!590356 () Bool)

(assert (= bs!590356 d!1194648))

(assert (=> bs!590356 m!4625205))

(assert (=> bs!590356 m!4625205))

(declare-fun m!4625897 () Bool)

(assert (=> bs!590356 m!4625897))

(declare-fun m!4625899 () Bool)

(assert (=> bs!590356 m!4625899))

(assert (=> b!4032368 d!1194648))

(declare-fun b!4032897 () Bool)

(declare-fun res!1641910 () Bool)

(declare-fun e!2502345 () Bool)

(assert (=> b!4032897 (=> (not res!1641910) (not e!2502345))))

(declare-fun lt!1434098 () Option!9324)

(assert (=> b!4032897 (= res!1641910 (= (list!16072 (charsOf!4726 (_1!24273 (get!14173 lt!1434098)))) (originalCharacters!7510 (_1!24273 (get!14173 lt!1434098)))))))

(declare-fun b!4032898 () Bool)

(declare-fun res!1641908 () Bool)

(assert (=> b!4032898 (=> (not res!1641908) (not e!2502345))))

(assert (=> b!4032898 (= res!1641908 (matchR!5768 (regex!6910 (rule!9972 (_1!24273 (get!14173 lt!1434098)))) (list!16072 (charsOf!4726 (_1!24273 (get!14173 lt!1434098))))))))

(declare-fun d!1194650 () Bool)

(declare-fun e!2502344 () Bool)

(assert (=> d!1194650 e!2502344))

(declare-fun res!1641913 () Bool)

(assert (=> d!1194650 (=> res!1641913 e!2502344)))

(assert (=> d!1194650 (= res!1641913 (isEmpty!25779 lt!1434098))))

(declare-fun e!2502343 () Option!9324)

(assert (=> d!1194650 (= lt!1434098 e!2502343)))

(declare-fun c!696583 () Bool)

(assert (=> d!1194650 (= c!696583 (and ((_ is Cons!43197) rules!2999) ((_ is Nil!43197) (t!334324 rules!2999))))))

(declare-fun lt!1434094 () Unit!62368)

(declare-fun lt!1434097 () Unit!62368)

(assert (=> d!1194650 (= lt!1434094 lt!1434097)))

(assert (=> d!1194650 (isPrefix!3997 lt!1433887 lt!1433887)))

(assert (=> d!1194650 (= lt!1434097 (lemmaIsPrefixRefl!2564 lt!1433887 lt!1433887))))

(assert (=> d!1194650 (rulesValidInductive!2515 thiss!21717 rules!2999)))

(assert (=> d!1194650 (= (maxPrefix!3797 thiss!21717 rules!2999 lt!1433887) lt!1434098)))

(declare-fun b!4032899 () Bool)

(declare-fun res!1641909 () Bool)

(assert (=> b!4032899 (=> (not res!1641909) (not e!2502345))))

(assert (=> b!4032899 (= res!1641909 (< (size!32286 (_2!24273 (get!14173 lt!1434098))) (size!32286 lt!1433887)))))

(declare-fun b!4032900 () Bool)

(declare-fun res!1641907 () Bool)

(assert (=> b!4032900 (=> (not res!1641907) (not e!2502345))))

(assert (=> b!4032900 (= res!1641907 (= (++!11312 (list!16072 (charsOf!4726 (_1!24273 (get!14173 lt!1434098)))) (_2!24273 (get!14173 lt!1434098))) lt!1433887))))

(declare-fun b!4032901 () Bool)

(declare-fun call!286991 () Option!9324)

(assert (=> b!4032901 (= e!2502343 call!286991)))

(declare-fun b!4032902 () Bool)

(assert (=> b!4032902 (= e!2502344 e!2502345)))

(declare-fun res!1641911 () Bool)

(assert (=> b!4032902 (=> (not res!1641911) (not e!2502345))))

(declare-fun isDefined!7094 (Option!9324) Bool)

(assert (=> b!4032902 (= res!1641911 (isDefined!7094 lt!1434098))))

(declare-fun b!4032903 () Bool)

(declare-fun lt!1434096 () Option!9324)

(declare-fun lt!1434095 () Option!9324)

(assert (=> b!4032903 (= e!2502343 (ite (and ((_ is None!9323) lt!1434096) ((_ is None!9323) lt!1434095)) None!9323 (ite ((_ is None!9323) lt!1434095) lt!1434096 (ite ((_ is None!9323) lt!1434096) lt!1434095 (ite (>= (size!32285 (_1!24273 (v!39713 lt!1434096))) (size!32285 (_1!24273 (v!39713 lt!1434095)))) lt!1434096 lt!1434095)))))))

(assert (=> b!4032903 (= lt!1434096 call!286991)))

(assert (=> b!4032903 (= lt!1434095 (maxPrefix!3797 thiss!21717 (t!334324 rules!2999) lt!1433887))))

(declare-fun bm!286986 () Bool)

(assert (=> bm!286986 (= call!286991 (maxPrefixOneRule!2809 thiss!21717 (h!48617 rules!2999) lt!1433887))))

(declare-fun b!4032904 () Bool)

(assert (=> b!4032904 (= e!2502345 (contains!8576 rules!2999 (rule!9972 (_1!24273 (get!14173 lt!1434098)))))))

(declare-fun b!4032905 () Bool)

(declare-fun res!1641912 () Bool)

(assert (=> b!4032905 (=> (not res!1641912) (not e!2502345))))

(assert (=> b!4032905 (= res!1641912 (= (value!217569 (_1!24273 (get!14173 lt!1434098))) (apply!10099 (transformation!6910 (rule!9972 (_1!24273 (get!14173 lt!1434098)))) (seqFromList!5127 (originalCharacters!7510 (_1!24273 (get!14173 lt!1434098)))))))))

(assert (= (and d!1194650 c!696583) b!4032901))

(assert (= (and d!1194650 (not c!696583)) b!4032903))

(assert (= (or b!4032901 b!4032903) bm!286986))

(assert (= (and d!1194650 (not res!1641913)) b!4032902))

(assert (= (and b!4032902 res!1641911) b!4032897))

(assert (= (and b!4032897 res!1641910) b!4032899))

(assert (= (and b!4032899 res!1641909) b!4032900))

(assert (= (and b!4032900 res!1641907) b!4032905))

(assert (= (and b!4032905 res!1641912) b!4032898))

(assert (= (and b!4032898 res!1641908) b!4032904))

(declare-fun m!4625901 () Bool)

(assert (=> b!4032897 m!4625901))

(declare-fun m!4625903 () Bool)

(assert (=> b!4032897 m!4625903))

(assert (=> b!4032897 m!4625903))

(declare-fun m!4625905 () Bool)

(assert (=> b!4032897 m!4625905))

(declare-fun m!4625907 () Bool)

(assert (=> bm!286986 m!4625907))

(assert (=> b!4032898 m!4625901))

(assert (=> b!4032898 m!4625903))

(assert (=> b!4032898 m!4625903))

(assert (=> b!4032898 m!4625905))

(assert (=> b!4032898 m!4625905))

(declare-fun m!4625909 () Bool)

(assert (=> b!4032898 m!4625909))

(assert (=> b!4032900 m!4625901))

(assert (=> b!4032900 m!4625903))

(assert (=> b!4032900 m!4625903))

(assert (=> b!4032900 m!4625905))

(assert (=> b!4032900 m!4625905))

(declare-fun m!4625911 () Bool)

(assert (=> b!4032900 m!4625911))

(declare-fun m!4625913 () Bool)

(assert (=> b!4032902 m!4625913))

(assert (=> b!4032899 m!4625901))

(declare-fun m!4625915 () Bool)

(assert (=> b!4032899 m!4625915))

(assert (=> b!4032899 m!4625527))

(assert (=> b!4032905 m!4625901))

(declare-fun m!4625917 () Bool)

(assert (=> b!4032905 m!4625917))

(assert (=> b!4032905 m!4625917))

(declare-fun m!4625919 () Bool)

(assert (=> b!4032905 m!4625919))

(assert (=> b!4032904 m!4625901))

(declare-fun m!4625921 () Bool)

(assert (=> b!4032904 m!4625921))

(declare-fun m!4625923 () Bool)

(assert (=> b!4032903 m!4625923))

(declare-fun m!4625925 () Bool)

(assert (=> d!1194650 m!4625925))

(declare-fun m!4625927 () Bool)

(assert (=> d!1194650 m!4625927))

(declare-fun m!4625929 () Bool)

(assert (=> d!1194650 m!4625929))

(assert (=> d!1194650 m!4625165))

(assert (=> b!4032370 d!1194650))

(declare-fun d!1194652 () Bool)

(assert (=> d!1194652 (= suffixResult!105 lt!1433892)))

(declare-fun lt!1434099 () Unit!62368)

(assert (=> d!1194652 (= lt!1434099 (choose!24403 lt!1433878 suffixResult!105 lt!1433878 lt!1433892 lt!1433903))))

(assert (=> d!1194652 (isPrefix!3997 lt!1433878 lt!1433903)))

(assert (=> d!1194652 (= (lemmaSamePrefixThenSameSuffix!2158 lt!1433878 suffixResult!105 lt!1433878 lt!1433892 lt!1433903) lt!1434099)))

(declare-fun bs!590357 () Bool)

(assert (= bs!590357 d!1194652))

(declare-fun m!4625931 () Bool)

(assert (=> bs!590357 m!4625931))

(assert (=> bs!590357 m!4625245))

(assert (=> b!4032370 d!1194652))

(declare-fun b!4032907 () Bool)

(declare-fun res!1641917 () Bool)

(declare-fun e!2502348 () Bool)

(assert (=> b!4032907 (=> (not res!1641917) (not e!2502348))))

(assert (=> b!4032907 (= res!1641917 (= (head!8543 lt!1433878) (head!8543 lt!1433893)))))

(declare-fun b!4032908 () Bool)

(assert (=> b!4032908 (= e!2502348 (isPrefix!3997 (tail!6275 lt!1433878) (tail!6275 lt!1433893)))))

(declare-fun d!1194654 () Bool)

(declare-fun e!2502347 () Bool)

(assert (=> d!1194654 e!2502347))

(declare-fun res!1641915 () Bool)

(assert (=> d!1194654 (=> res!1641915 e!2502347)))

(declare-fun lt!1434100 () Bool)

(assert (=> d!1194654 (= res!1641915 (not lt!1434100))))

(declare-fun e!2502346 () Bool)

(assert (=> d!1194654 (= lt!1434100 e!2502346)))

(declare-fun res!1641914 () Bool)

(assert (=> d!1194654 (=> res!1641914 e!2502346)))

(assert (=> d!1194654 (= res!1641914 ((_ is Nil!43195) lt!1433878))))

(assert (=> d!1194654 (= (isPrefix!3997 lt!1433878 lt!1433893) lt!1434100)))

(declare-fun b!4032909 () Bool)

(assert (=> b!4032909 (= e!2502347 (>= (size!32286 lt!1433893) (size!32286 lt!1433878)))))

(declare-fun b!4032906 () Bool)

(assert (=> b!4032906 (= e!2502346 e!2502348)))

(declare-fun res!1641916 () Bool)

(assert (=> b!4032906 (=> (not res!1641916) (not e!2502348))))

(assert (=> b!4032906 (= res!1641916 (not ((_ is Nil!43195) lt!1433893)))))

(assert (= (and d!1194654 (not res!1641914)) b!4032906))

(assert (= (and b!4032906 res!1641916) b!4032907))

(assert (= (and b!4032907 res!1641917) b!4032908))

(assert (= (and d!1194654 (not res!1641915)) b!4032909))

(assert (=> b!4032907 m!4625509))

(declare-fun m!4625933 () Bool)

(assert (=> b!4032907 m!4625933))

(assert (=> b!4032908 m!4625513))

(declare-fun m!4625935 () Bool)

(assert (=> b!4032908 m!4625935))

(assert (=> b!4032908 m!4625513))

(assert (=> b!4032908 m!4625935))

(declare-fun m!4625937 () Bool)

(assert (=> b!4032908 m!4625937))

(declare-fun m!4625939 () Bool)

(assert (=> b!4032909 m!4625939))

(assert (=> b!4032909 m!4625197))

(assert (=> b!4032370 d!1194654))

(declare-fun d!1194656 () Bool)

(assert (=> d!1194656 (isPrefix!3997 lt!1433878 (++!11312 lt!1433878 lt!1433892))))

(declare-fun lt!1434101 () Unit!62368)

(assert (=> d!1194656 (= lt!1434101 (choose!24401 lt!1433878 lt!1433892))))

(assert (=> d!1194656 (= (lemmaConcatTwoListThenFirstIsPrefix!2832 lt!1433878 lt!1433892) lt!1434101)))

(declare-fun bs!590358 () Bool)

(assert (= bs!590358 d!1194656))

(assert (=> bs!590358 m!4625141))

(assert (=> bs!590358 m!4625141))

(declare-fun m!4625941 () Bool)

(assert (=> bs!590358 m!4625941))

(declare-fun m!4625943 () Bool)

(assert (=> bs!590358 m!4625943))

(assert (=> b!4032370 d!1194656))

(declare-fun b!4032911 () Bool)

(declare-fun e!2502349 () List!43319)

(assert (=> b!4032911 (= e!2502349 (Cons!43195 (h!48615 lt!1433878) (++!11312 (t!334322 lt!1433878) lt!1433894)))))

(declare-fun b!4032912 () Bool)

(declare-fun res!1641918 () Bool)

(declare-fun e!2502350 () Bool)

(assert (=> b!4032912 (=> (not res!1641918) (not e!2502350))))

(declare-fun lt!1434102 () List!43319)

(assert (=> b!4032912 (= res!1641918 (= (size!32286 lt!1434102) (+ (size!32286 lt!1433878) (size!32286 lt!1433894))))))

(declare-fun d!1194658 () Bool)

(assert (=> d!1194658 e!2502350))

(declare-fun res!1641919 () Bool)

(assert (=> d!1194658 (=> (not res!1641919) (not e!2502350))))

(assert (=> d!1194658 (= res!1641919 (= (content!6558 lt!1434102) ((_ map or) (content!6558 lt!1433878) (content!6558 lt!1433894))))))

(assert (=> d!1194658 (= lt!1434102 e!2502349)))

(declare-fun c!696584 () Bool)

(assert (=> d!1194658 (= c!696584 ((_ is Nil!43195) lt!1433878))))

(assert (=> d!1194658 (= (++!11312 lt!1433878 lt!1433894) lt!1434102)))

(declare-fun b!4032910 () Bool)

(assert (=> b!4032910 (= e!2502349 lt!1433894)))

(declare-fun b!4032913 () Bool)

(assert (=> b!4032913 (= e!2502350 (or (not (= lt!1433894 Nil!43195)) (= lt!1434102 lt!1433878)))))

(assert (= (and d!1194658 c!696584) b!4032910))

(assert (= (and d!1194658 (not c!696584)) b!4032911))

(assert (= (and d!1194658 res!1641919) b!4032912))

(assert (= (and b!4032912 res!1641918) b!4032913))

(declare-fun m!4625945 () Bool)

(assert (=> b!4032911 m!4625945))

(declare-fun m!4625947 () Bool)

(assert (=> b!4032912 m!4625947))

(assert (=> b!4032912 m!4625197))

(assert (=> b!4032912 m!4625487))

(declare-fun m!4625949 () Bool)

(assert (=> d!1194658 m!4625949))

(assert (=> d!1194658 m!4625273))

(assert (=> d!1194658 m!4625491))

(assert (=> b!4032349 d!1194658))

(declare-fun d!1194660 () Bool)

(declare-fun lt!1434103 () List!43319)

(assert (=> d!1194660 (= (++!11312 lt!1433878 lt!1434103) prefix!494)))

(declare-fun e!2502351 () List!43319)

(assert (=> d!1194660 (= lt!1434103 e!2502351)))

(declare-fun c!696585 () Bool)

(assert (=> d!1194660 (= c!696585 ((_ is Cons!43195) lt!1433878))))

(assert (=> d!1194660 (>= (size!32286 prefix!494) (size!32286 lt!1433878))))

(assert (=> d!1194660 (= (getSuffix!2414 prefix!494 lt!1433878) lt!1434103)))

(declare-fun b!4032914 () Bool)

(assert (=> b!4032914 (= e!2502351 (getSuffix!2414 (tail!6275 prefix!494) (t!334322 lt!1433878)))))

(declare-fun b!4032915 () Bool)

(assert (=> b!4032915 (= e!2502351 prefix!494)))

(assert (= (and d!1194660 c!696585) b!4032914))

(assert (= (and d!1194660 (not c!696585)) b!4032915))

(declare-fun m!4625951 () Bool)

(assert (=> d!1194660 m!4625951))

(assert (=> d!1194660 m!4625199))

(assert (=> d!1194660 m!4625197))

(assert (=> b!4032914 m!4625879))

(assert (=> b!4032914 m!4625879))

(declare-fun m!4625953 () Bool)

(assert (=> b!4032914 m!4625953))

(assert (=> b!4032349 d!1194660))

(declare-fun b!4032917 () Bool)

(declare-fun res!1641923 () Bool)

(declare-fun e!2502354 () Bool)

(assert (=> b!4032917 (=> (not res!1641923) (not e!2502354))))

(assert (=> b!4032917 (= res!1641923 (= (head!8543 lt!1433878) (head!8543 prefix!494)))))

(declare-fun b!4032918 () Bool)

(assert (=> b!4032918 (= e!2502354 (isPrefix!3997 (tail!6275 lt!1433878) (tail!6275 prefix!494)))))

(declare-fun d!1194662 () Bool)

(declare-fun e!2502353 () Bool)

(assert (=> d!1194662 e!2502353))

(declare-fun res!1641921 () Bool)

(assert (=> d!1194662 (=> res!1641921 e!2502353)))

(declare-fun lt!1434104 () Bool)

(assert (=> d!1194662 (= res!1641921 (not lt!1434104))))

(declare-fun e!2502352 () Bool)

(assert (=> d!1194662 (= lt!1434104 e!2502352)))

(declare-fun res!1641920 () Bool)

(assert (=> d!1194662 (=> res!1641920 e!2502352)))

(assert (=> d!1194662 (= res!1641920 ((_ is Nil!43195) lt!1433878))))

(assert (=> d!1194662 (= (isPrefix!3997 lt!1433878 prefix!494) lt!1434104)))

(declare-fun b!4032919 () Bool)

(assert (=> b!4032919 (= e!2502353 (>= (size!32286 prefix!494) (size!32286 lt!1433878)))))

(declare-fun b!4032916 () Bool)

(assert (=> b!4032916 (= e!2502352 e!2502354)))

(declare-fun res!1641922 () Bool)

(assert (=> b!4032916 (=> (not res!1641922) (not e!2502354))))

(assert (=> b!4032916 (= res!1641922 (not ((_ is Nil!43195) prefix!494)))))

(assert (= (and d!1194662 (not res!1641920)) b!4032916))

(assert (= (and b!4032916 res!1641922) b!4032917))

(assert (= (and b!4032917 res!1641923) b!4032918))

(assert (= (and d!1194662 (not res!1641921)) b!4032919))

(assert (=> b!4032917 m!4625509))

(assert (=> b!4032917 m!4625877))

(assert (=> b!4032918 m!4625513))

(assert (=> b!4032918 m!4625879))

(assert (=> b!4032918 m!4625513))

(assert (=> b!4032918 m!4625879))

(declare-fun m!4625955 () Bool)

(assert (=> b!4032918 m!4625955))

(assert (=> b!4032919 m!4625199))

(assert (=> b!4032919 m!4625197))

(assert (=> b!4032349 d!1194662))

(declare-fun d!1194664 () Bool)

(assert (=> d!1194664 (isPrefix!3997 lt!1433878 prefix!494)))

(declare-fun lt!1434107 () Unit!62368)

(declare-fun choose!24407 (List!43319 List!43319 List!43319) Unit!62368)

(assert (=> d!1194664 (= lt!1434107 (choose!24407 prefix!494 lt!1433878 lt!1433903))))

(assert (=> d!1194664 (isPrefix!3997 prefix!494 lt!1433903)))

(assert (=> d!1194664 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!561 prefix!494 lt!1433878 lt!1433903) lt!1434107)))

(declare-fun bs!590359 () Bool)

(assert (= bs!590359 d!1194664))

(assert (=> bs!590359 m!4625229))

(declare-fun m!4625957 () Bool)

(assert (=> bs!590359 m!4625957))

(assert (=> bs!590359 m!4625237))

(assert (=> b!4032349 d!1194664))

(declare-fun b!4032920 () Bool)

(declare-fun res!1641927 () Bool)

(declare-fun e!2502357 () Bool)

(assert (=> b!4032920 (=> (not res!1641927) (not e!2502357))))

(declare-fun lt!1434112 () Option!9324)

(assert (=> b!4032920 (= res!1641927 (= (list!16072 (charsOf!4726 (_1!24273 (get!14173 lt!1434112)))) (originalCharacters!7510 (_1!24273 (get!14173 lt!1434112)))))))

(declare-fun b!4032921 () Bool)

(declare-fun res!1641925 () Bool)

(assert (=> b!4032921 (=> (not res!1641925) (not e!2502357))))

(assert (=> b!4032921 (= res!1641925 (matchR!5768 (regex!6910 (rule!9972 (_1!24273 (get!14173 lt!1434112)))) (list!16072 (charsOf!4726 (_1!24273 (get!14173 lt!1434112))))))))

(declare-fun d!1194666 () Bool)

(declare-fun e!2502356 () Bool)

(assert (=> d!1194666 e!2502356))

(declare-fun res!1641930 () Bool)

(assert (=> d!1194666 (=> res!1641930 e!2502356)))

(assert (=> d!1194666 (= res!1641930 (isEmpty!25779 lt!1434112))))

(declare-fun e!2502355 () Option!9324)

(assert (=> d!1194666 (= lt!1434112 e!2502355)))

(declare-fun c!696586 () Bool)

(assert (=> d!1194666 (= c!696586 (and ((_ is Cons!43197) rules!2999) ((_ is Nil!43197) (t!334324 rules!2999))))))

(declare-fun lt!1434108 () Unit!62368)

(declare-fun lt!1434111 () Unit!62368)

(assert (=> d!1194666 (= lt!1434108 lt!1434111)))

(assert (=> d!1194666 (isPrefix!3997 lt!1433903 lt!1433903)))

(assert (=> d!1194666 (= lt!1434111 (lemmaIsPrefixRefl!2564 lt!1433903 lt!1433903))))

(assert (=> d!1194666 (rulesValidInductive!2515 thiss!21717 rules!2999)))

(assert (=> d!1194666 (= (maxPrefix!3797 thiss!21717 rules!2999 lt!1433903) lt!1434112)))

(declare-fun b!4032922 () Bool)

(declare-fun res!1641926 () Bool)

(assert (=> b!4032922 (=> (not res!1641926) (not e!2502357))))

(assert (=> b!4032922 (= res!1641926 (< (size!32286 (_2!24273 (get!14173 lt!1434112))) (size!32286 lt!1433903)))))

(declare-fun b!4032923 () Bool)

(declare-fun res!1641924 () Bool)

(assert (=> b!4032923 (=> (not res!1641924) (not e!2502357))))

(assert (=> b!4032923 (= res!1641924 (= (++!11312 (list!16072 (charsOf!4726 (_1!24273 (get!14173 lt!1434112)))) (_2!24273 (get!14173 lt!1434112))) lt!1433903))))

(declare-fun b!4032924 () Bool)

(declare-fun call!286992 () Option!9324)

(assert (=> b!4032924 (= e!2502355 call!286992)))

(declare-fun b!4032925 () Bool)

(assert (=> b!4032925 (= e!2502356 e!2502357)))

(declare-fun res!1641928 () Bool)

(assert (=> b!4032925 (=> (not res!1641928) (not e!2502357))))

(assert (=> b!4032925 (= res!1641928 (isDefined!7094 lt!1434112))))

(declare-fun b!4032926 () Bool)

(declare-fun lt!1434110 () Option!9324)

(declare-fun lt!1434109 () Option!9324)

(assert (=> b!4032926 (= e!2502355 (ite (and ((_ is None!9323) lt!1434110) ((_ is None!9323) lt!1434109)) None!9323 (ite ((_ is None!9323) lt!1434109) lt!1434110 (ite ((_ is None!9323) lt!1434110) lt!1434109 (ite (>= (size!32285 (_1!24273 (v!39713 lt!1434110))) (size!32285 (_1!24273 (v!39713 lt!1434109)))) lt!1434110 lt!1434109)))))))

(assert (=> b!4032926 (= lt!1434110 call!286992)))

(assert (=> b!4032926 (= lt!1434109 (maxPrefix!3797 thiss!21717 (t!334324 rules!2999) lt!1433903))))

(declare-fun bm!286987 () Bool)

(assert (=> bm!286987 (= call!286992 (maxPrefixOneRule!2809 thiss!21717 (h!48617 rules!2999) lt!1433903))))

(declare-fun b!4032927 () Bool)

(assert (=> b!4032927 (= e!2502357 (contains!8576 rules!2999 (rule!9972 (_1!24273 (get!14173 lt!1434112)))))))

(declare-fun b!4032928 () Bool)

(declare-fun res!1641929 () Bool)

(assert (=> b!4032928 (=> (not res!1641929) (not e!2502357))))

(assert (=> b!4032928 (= res!1641929 (= (value!217569 (_1!24273 (get!14173 lt!1434112))) (apply!10099 (transformation!6910 (rule!9972 (_1!24273 (get!14173 lt!1434112)))) (seqFromList!5127 (originalCharacters!7510 (_1!24273 (get!14173 lt!1434112)))))))))

(assert (= (and d!1194666 c!696586) b!4032924))

(assert (= (and d!1194666 (not c!696586)) b!4032926))

(assert (= (or b!4032924 b!4032926) bm!286987))

(assert (= (and d!1194666 (not res!1641930)) b!4032925))

(assert (= (and b!4032925 res!1641928) b!4032920))

(assert (= (and b!4032920 res!1641927) b!4032922))

(assert (= (and b!4032922 res!1641926) b!4032923))

(assert (= (and b!4032923 res!1641924) b!4032928))

(assert (= (and b!4032928 res!1641929) b!4032921))

(assert (= (and b!4032921 res!1641925) b!4032927))

(declare-fun m!4625959 () Bool)

(assert (=> b!4032920 m!4625959))

(declare-fun m!4625961 () Bool)

(assert (=> b!4032920 m!4625961))

(assert (=> b!4032920 m!4625961))

(declare-fun m!4625963 () Bool)

(assert (=> b!4032920 m!4625963))

(declare-fun m!4625965 () Bool)

(assert (=> bm!286987 m!4625965))

(assert (=> b!4032921 m!4625959))

(assert (=> b!4032921 m!4625961))

(assert (=> b!4032921 m!4625961))

(assert (=> b!4032921 m!4625963))

(assert (=> b!4032921 m!4625963))

(declare-fun m!4625967 () Bool)

(assert (=> b!4032921 m!4625967))

(assert (=> b!4032923 m!4625959))

(assert (=> b!4032923 m!4625961))

(assert (=> b!4032923 m!4625961))

(assert (=> b!4032923 m!4625963))

(assert (=> b!4032923 m!4625963))

(declare-fun m!4625969 () Bool)

(assert (=> b!4032923 m!4625969))

(declare-fun m!4625971 () Bool)

(assert (=> b!4032925 m!4625971))

(assert (=> b!4032922 m!4625959))

(declare-fun m!4625973 () Bool)

(assert (=> b!4032922 m!4625973))

(assert (=> b!4032922 m!4625773))

(assert (=> b!4032928 m!4625959))

(declare-fun m!4625975 () Bool)

(assert (=> b!4032928 m!4625975))

(assert (=> b!4032928 m!4625975))

(declare-fun m!4625977 () Bool)

(assert (=> b!4032928 m!4625977))

(assert (=> b!4032927 m!4625959))

(declare-fun m!4625979 () Bool)

(assert (=> b!4032927 m!4625979))

(declare-fun m!4625981 () Bool)

(assert (=> b!4032926 m!4625981))

(declare-fun m!4625983 () Bool)

(assert (=> d!1194666 m!4625983))

(assert (=> d!1194666 m!4625145))

(assert (=> d!1194666 m!4625147))

(assert (=> d!1194666 m!4625165))

(assert (=> b!4032359 d!1194666))

(declare-fun b!4032930 () Bool)

(declare-fun e!2502358 () List!43319)

(assert (=> b!4032930 (= e!2502358 (Cons!43195 (h!48615 prefix!494) (++!11312 (t!334322 prefix!494) suffix!1299)))))

(declare-fun b!4032931 () Bool)

(declare-fun res!1641931 () Bool)

(declare-fun e!2502359 () Bool)

(assert (=> b!4032931 (=> (not res!1641931) (not e!2502359))))

(declare-fun lt!1434113 () List!43319)

(assert (=> b!4032931 (= res!1641931 (= (size!32286 lt!1434113) (+ (size!32286 prefix!494) (size!32286 suffix!1299))))))

(declare-fun d!1194668 () Bool)

(assert (=> d!1194668 e!2502359))

(declare-fun res!1641932 () Bool)

(assert (=> d!1194668 (=> (not res!1641932) (not e!2502359))))

(assert (=> d!1194668 (= res!1641932 (= (content!6558 lt!1434113) ((_ map or) (content!6558 prefix!494) (content!6558 suffix!1299))))))

(assert (=> d!1194668 (= lt!1434113 e!2502358)))

(declare-fun c!696587 () Bool)

(assert (=> d!1194668 (= c!696587 ((_ is Nil!43195) prefix!494))))

(assert (=> d!1194668 (= (++!11312 prefix!494 suffix!1299) lt!1434113)))

(declare-fun b!4032929 () Bool)

(assert (=> b!4032929 (= e!2502358 suffix!1299)))

(declare-fun b!4032932 () Bool)

(assert (=> b!4032932 (= e!2502359 (or (not (= suffix!1299 Nil!43195)) (= lt!1434113 prefix!494)))))

(assert (= (and d!1194668 c!696587) b!4032929))

(assert (= (and d!1194668 (not c!696587)) b!4032930))

(assert (= (and d!1194668 res!1641932) b!4032931))

(assert (= (and b!4032931 res!1641931) b!4032932))

(declare-fun m!4625985 () Bool)

(assert (=> b!4032930 m!4625985))

(declare-fun m!4625987 () Bool)

(assert (=> b!4032931 m!4625987))

(assert (=> b!4032931 m!4625199))

(assert (=> b!4032931 m!4625233))

(declare-fun m!4625989 () Bool)

(assert (=> d!1194668 m!4625989))

(assert (=> d!1194668 m!4625309))

(assert (=> d!1194668 m!4625481))

(assert (=> b!4032359 d!1194668))

(declare-fun d!1194670 () Bool)

(declare-fun lt!1434114 () Int)

(assert (=> d!1194670 (>= lt!1434114 0)))

(declare-fun e!2502360 () Int)

(assert (=> d!1194670 (= lt!1434114 e!2502360)))

(declare-fun c!696588 () Bool)

(assert (=> d!1194670 (= c!696588 ((_ is Nil!43195) lt!1433878))))

(assert (=> d!1194670 (= (size!32286 lt!1433878) lt!1434114)))

(declare-fun b!4032933 () Bool)

(assert (=> b!4032933 (= e!2502360 0)))

(declare-fun b!4032934 () Bool)

(assert (=> b!4032934 (= e!2502360 (+ 1 (size!32286 (t!334322 lt!1433878))))))

(assert (= (and d!1194670 c!696588) b!4032933))

(assert (= (and d!1194670 (not c!696588)) b!4032934))

(declare-fun m!4625991 () Bool)

(assert (=> b!4032934 m!4625991))

(assert (=> b!4032361 d!1194670))

(declare-fun d!1194672 () Bool)

(declare-fun lt!1434115 () Int)

(assert (=> d!1194672 (>= lt!1434115 0)))

(declare-fun e!2502361 () Int)

(assert (=> d!1194672 (= lt!1434115 e!2502361)))

(declare-fun c!696589 () Bool)

(assert (=> d!1194672 (= c!696589 ((_ is Nil!43195) prefix!494))))

(assert (=> d!1194672 (= (size!32286 prefix!494) lt!1434115)))

(declare-fun b!4032935 () Bool)

(assert (=> b!4032935 (= e!2502361 0)))

(declare-fun b!4032936 () Bool)

(assert (=> b!4032936 (= e!2502361 (+ 1 (size!32286 (t!334322 prefix!494))))))

(assert (= (and d!1194672 c!696589) b!4032935))

(assert (= (and d!1194672 (not c!696589)) b!4032936))

(declare-fun m!4625993 () Bool)

(assert (=> b!4032936 m!4625993))

(assert (=> b!4032361 d!1194672))

(declare-fun d!1194674 () Bool)

(declare-fun list!16074 (Conc!13121) List!43319)

(assert (=> d!1194674 (= (list!16072 (charsOf!4726 token!484)) (list!16074 (c!696506 (charsOf!4726 token!484))))))

(declare-fun bs!590360 () Bool)

(assert (= bs!590360 d!1194674))

(declare-fun m!4625995 () Bool)

(assert (=> bs!590360 m!4625995))

(assert (=> b!4032361 d!1194674))

(declare-fun d!1194676 () Bool)

(declare-fun lt!1434118 () BalanceConc!25836)

(assert (=> d!1194676 (= (list!16072 lt!1434118) (originalCharacters!7510 token!484))))

(assert (=> d!1194676 (= lt!1434118 (dynLambda!18310 (toChars!9297 (transformation!6910 (rule!9972 token!484))) (value!217569 token!484)))))

(assert (=> d!1194676 (= (charsOf!4726 token!484) lt!1434118)))

(declare-fun b_lambda!117651 () Bool)

(assert (=> (not b_lambda!117651) (not d!1194676)))

(assert (=> d!1194676 t!334342))

(declare-fun b_and!309915 () Bool)

(assert (= b_and!309911 (and (=> t!334342 result!293658) b_and!309915)))

(assert (=> d!1194676 t!334344))

(declare-fun b_and!309917 () Bool)

(assert (= b_and!309913 (and (=> t!334344 result!293662) b_and!309917)))

(declare-fun m!4625997 () Bool)

(assert (=> d!1194676 m!4625997))

(assert (=> d!1194676 m!4625851))

(assert (=> b!4032361 d!1194676))

(declare-fun d!1194678 () Bool)

(declare-fun c!696594 () Bool)

(assert (=> d!1194678 (= c!696594 ((_ is IntegerValue!21420) (value!217569 token!484)))))

(declare-fun e!2502368 () Bool)

(assert (=> d!1194678 (= (inv!21 (value!217569 token!484)) e!2502368)))

(declare-fun b!4032947 () Bool)

(declare-fun e!2502370 () Bool)

(assert (=> b!4032947 (= e!2502368 e!2502370)))

(declare-fun c!696595 () Bool)

(assert (=> b!4032947 (= c!696595 ((_ is IntegerValue!21421) (value!217569 token!484)))))

(declare-fun b!4032948 () Bool)

(declare-fun inv!16 (TokenValue!7140) Bool)

(assert (=> b!4032948 (= e!2502368 (inv!16 (value!217569 token!484)))))

(declare-fun b!4032949 () Bool)

(declare-fun inv!17 (TokenValue!7140) Bool)

(assert (=> b!4032949 (= e!2502370 (inv!17 (value!217569 token!484)))))

(declare-fun b!4032950 () Bool)

(declare-fun res!1641935 () Bool)

(declare-fun e!2502369 () Bool)

(assert (=> b!4032950 (=> res!1641935 e!2502369)))

(assert (=> b!4032950 (= res!1641935 (not ((_ is IntegerValue!21422) (value!217569 token!484))))))

(assert (=> b!4032950 (= e!2502370 e!2502369)))

(declare-fun b!4032951 () Bool)

(declare-fun inv!15 (TokenValue!7140) Bool)

(assert (=> b!4032951 (= e!2502369 (inv!15 (value!217569 token!484)))))

(assert (= (and d!1194678 c!696594) b!4032948))

(assert (= (and d!1194678 (not c!696594)) b!4032947))

(assert (= (and b!4032947 c!696595) b!4032949))

(assert (= (and b!4032947 (not c!696595)) b!4032950))

(assert (= (and b!4032950 (not res!1641935)) b!4032951))

(declare-fun m!4625999 () Bool)

(assert (=> b!4032948 m!4625999))

(declare-fun m!4626001 () Bool)

(assert (=> b!4032949 m!4626001))

(declare-fun m!4626003 () Bool)

(assert (=> b!4032951 m!4626003))

(assert (=> b!4032360 d!1194678))

(declare-fun d!1194680 () Bool)

(declare-fun lt!1434121 () Bool)

(declare-fun content!6560 (List!43321) (InoxSet Rule!13620))

(assert (=> d!1194680 (= lt!1434121 (select (content!6560 rules!2999) (rule!9972 (_1!24273 (v!39713 lt!1433902)))))))

(declare-fun e!2502375 () Bool)

(assert (=> d!1194680 (= lt!1434121 e!2502375)))

(declare-fun res!1641941 () Bool)

(assert (=> d!1194680 (=> (not res!1641941) (not e!2502375))))

(assert (=> d!1194680 (= res!1641941 ((_ is Cons!43197) rules!2999))))

(assert (=> d!1194680 (= (contains!8576 rules!2999 (rule!9972 (_1!24273 (v!39713 lt!1433902)))) lt!1434121)))

(declare-fun b!4032956 () Bool)

(declare-fun e!2502376 () Bool)

(assert (=> b!4032956 (= e!2502375 e!2502376)))

(declare-fun res!1641940 () Bool)

(assert (=> b!4032956 (=> res!1641940 e!2502376)))

(assert (=> b!4032956 (= res!1641940 (= (h!48617 rules!2999) (rule!9972 (_1!24273 (v!39713 lt!1433902)))))))

(declare-fun b!4032957 () Bool)

(assert (=> b!4032957 (= e!2502376 (contains!8576 (t!334324 rules!2999) (rule!9972 (_1!24273 (v!39713 lt!1433902)))))))

(assert (= (and d!1194680 res!1641941) b!4032956))

(assert (= (and b!4032956 (not res!1641940)) b!4032957))

(declare-fun m!4626005 () Bool)

(assert (=> d!1194680 m!4626005))

(declare-fun m!4626007 () Bool)

(assert (=> d!1194680 m!4626007))

(declare-fun m!4626009 () Bool)

(assert (=> b!4032957 m!4626009))

(assert (=> b!4032371 d!1194680))

(declare-fun d!1194682 () Bool)

(assert (=> d!1194682 (= (size!32285 token!484) (size!32286 (originalCharacters!7510 token!484)))))

(declare-fun Unit!62374 () Unit!62368)

(assert (=> d!1194682 (= (lemmaCharactersSize!1429 token!484) Unit!62374)))

(declare-fun bs!590361 () Bool)

(assert (= bs!590361 d!1194682))

(assert (=> bs!590361 m!4625163))

(assert (=> b!4032371 d!1194682))

(declare-fun d!1194684 () Bool)

(assert (=> d!1194684 (= (size!32285 (_1!24273 (v!39713 lt!1433902))) (size!32286 (originalCharacters!7510 (_1!24273 (v!39713 lt!1433902)))))))

(declare-fun Unit!62375 () Unit!62368)

(assert (=> d!1194684 (= (lemmaCharactersSize!1429 (_1!24273 (v!39713 lt!1433902))) Unit!62375)))

(declare-fun bs!590362 () Bool)

(assert (= bs!590362 d!1194684))

(declare-fun m!4626011 () Bool)

(assert (=> bs!590362 m!4626011))

(assert (=> b!4032371 d!1194684))

(declare-fun b!4032962 () Bool)

(declare-fun e!2502379 () Bool)

(declare-fun tp!1225447 () Bool)

(assert (=> b!4032962 (= e!2502379 (and tp_is_empty!20601 tp!1225447))))

(assert (=> b!4032362 (= tp!1225397 e!2502379)))

(assert (= (and b!4032362 ((_ is Cons!43195) (t!334322 newSuffixResult!27))) b!4032962))

(declare-fun b!4032973 () Bool)

(declare-fun b_free!112373 () Bool)

(declare-fun b_next!113077 () Bool)

(assert (=> b!4032973 (= b_free!112373 (not b_next!113077))))

(declare-fun tb!242265 () Bool)

(declare-fun t!334346 () Bool)

(assert (=> (and b!4032973 (= (toValue!9438 (transformation!6910 (h!48617 (t!334324 rules!2999)))) (toValue!9438 (transformation!6910 (rule!9972 token!484)))) t!334346) tb!242265))

(declare-fun result!293668 () Bool)

(assert (= result!293668 result!293652))

(assert (=> d!1194628 t!334346))

(declare-fun tp!1225457 () Bool)

(declare-fun b_and!309919 () Bool)

(assert (=> b!4032973 (= tp!1225457 (and (=> t!334346 result!293668) b_and!309919))))

(declare-fun b_free!112375 () Bool)

(declare-fun b_next!113079 () Bool)

(assert (=> b!4032973 (= b_free!112375 (not b_next!113079))))

(declare-fun t!334348 () Bool)

(declare-fun tb!242267 () Bool)

(assert (=> (and b!4032973 (= (toChars!9297 (transformation!6910 (h!48617 (t!334324 rules!2999)))) (toChars!9297 (transformation!6910 (rule!9972 token!484)))) t!334348) tb!242267))

(declare-fun result!293670 () Bool)

(assert (= result!293670 result!293658))

(assert (=> b!4032846 t!334348))

(assert (=> d!1194676 t!334348))

(declare-fun tp!1225456 () Bool)

(declare-fun b_and!309921 () Bool)

(assert (=> b!4032973 (= tp!1225456 (and (=> t!334348 result!293670) b_and!309921))))

(declare-fun e!2502389 () Bool)

(assert (=> b!4032973 (= e!2502389 (and tp!1225457 tp!1225456))))

(declare-fun b!4032972 () Bool)

(declare-fun tp!1225459 () Bool)

(declare-fun e!2502390 () Bool)

(assert (=> b!4032972 (= e!2502390 (and tp!1225459 (inv!57706 (tag!7770 (h!48617 (t!334324 rules!2999)))) (inv!57710 (transformation!6910 (h!48617 (t!334324 rules!2999)))) e!2502389))))

(declare-fun b!4032971 () Bool)

(declare-fun e!2502388 () Bool)

(declare-fun tp!1225458 () Bool)

(assert (=> b!4032971 (= e!2502388 (and e!2502390 tp!1225458))))

(assert (=> b!4032357 (= tp!1225398 e!2502388)))

(assert (= b!4032972 b!4032973))

(assert (= b!4032971 b!4032972))

(assert (= (and b!4032357 ((_ is Cons!43197) (t!334324 rules!2999))) b!4032971))

(declare-fun m!4626013 () Bool)

(assert (=> b!4032972 m!4626013))

(declare-fun m!4626015 () Bool)

(assert (=> b!4032972 m!4626015))

(declare-fun b!4032974 () Bool)

(declare-fun e!2502392 () Bool)

(declare-fun tp!1225460 () Bool)

(assert (=> b!4032974 (= e!2502392 (and tp_is_empty!20601 tp!1225460))))

(assert (=> b!4032354 (= tp!1225387 e!2502392)))

(assert (= (and b!4032354 ((_ is Cons!43195) (t!334322 newSuffix!27))) b!4032974))

(declare-fun b!4032975 () Bool)

(declare-fun e!2502393 () Bool)

(declare-fun tp!1225461 () Bool)

(assert (=> b!4032975 (= e!2502393 (and tp_is_empty!20601 tp!1225461))))

(assert (=> b!4032348 (= tp!1225386 e!2502393)))

(assert (= (and b!4032348 ((_ is Cons!43195) (t!334322 suffix!1299))) b!4032975))

(declare-fun b!4032987 () Bool)

(declare-fun e!2502396 () Bool)

(declare-fun tp!1225473 () Bool)

(declare-fun tp!1225475 () Bool)

(assert (=> b!4032987 (= e!2502396 (and tp!1225473 tp!1225475))))

(declare-fun b!4032988 () Bool)

(declare-fun tp!1225476 () Bool)

(assert (=> b!4032988 (= e!2502396 tp!1225476)))

(assert (=> b!4032364 (= tp!1225396 e!2502396)))

(declare-fun b!4032989 () Bool)

(declare-fun tp!1225472 () Bool)

(declare-fun tp!1225474 () Bool)

(assert (=> b!4032989 (= e!2502396 (and tp!1225472 tp!1225474))))

(declare-fun b!4032986 () Bool)

(assert (=> b!4032986 (= e!2502396 tp_is_empty!20601)))

(assert (= (and b!4032364 ((_ is ElementMatch!11815) (regex!6910 (rule!9972 token!484)))) b!4032986))

(assert (= (and b!4032364 ((_ is Concat!18956) (regex!6910 (rule!9972 token!484)))) b!4032987))

(assert (= (and b!4032364 ((_ is Star!11815) (regex!6910 (rule!9972 token!484)))) b!4032988))

(assert (= (and b!4032364 ((_ is Union!11815) (regex!6910 (rule!9972 token!484)))) b!4032989))

(declare-fun b!4032990 () Bool)

(declare-fun e!2502397 () Bool)

(declare-fun tp!1225477 () Bool)

(assert (=> b!4032990 (= e!2502397 (and tp_is_empty!20601 tp!1225477))))

(assert (=> b!4032350 (= tp!1225391 e!2502397)))

(assert (= (and b!4032350 ((_ is Cons!43195) (t!334322 prefix!494))) b!4032990))

(declare-fun b!4032992 () Bool)

(declare-fun e!2502398 () Bool)

(declare-fun tp!1225479 () Bool)

(declare-fun tp!1225481 () Bool)

(assert (=> b!4032992 (= e!2502398 (and tp!1225479 tp!1225481))))

(declare-fun b!4032993 () Bool)

(declare-fun tp!1225482 () Bool)

(assert (=> b!4032993 (= e!2502398 tp!1225482)))

(assert (=> b!4032366 (= tp!1225390 e!2502398)))

(declare-fun b!4032994 () Bool)

(declare-fun tp!1225478 () Bool)

(declare-fun tp!1225480 () Bool)

(assert (=> b!4032994 (= e!2502398 (and tp!1225478 tp!1225480))))

(declare-fun b!4032991 () Bool)

(assert (=> b!4032991 (= e!2502398 tp_is_empty!20601)))

(assert (= (and b!4032366 ((_ is ElementMatch!11815) (regex!6910 (h!48617 rules!2999)))) b!4032991))

(assert (= (and b!4032366 ((_ is Concat!18956) (regex!6910 (h!48617 rules!2999)))) b!4032992))

(assert (= (and b!4032366 ((_ is Star!11815) (regex!6910 (h!48617 rules!2999)))) b!4032993))

(assert (= (and b!4032366 ((_ is Union!11815) (regex!6910 (h!48617 rules!2999)))) b!4032994))

(declare-fun b!4032995 () Bool)

(declare-fun e!2502399 () Bool)

(declare-fun tp!1225483 () Bool)

(assert (=> b!4032995 (= e!2502399 (and tp_is_empty!20601 tp!1225483))))

(assert (=> b!4032360 (= tp!1225393 e!2502399)))

(assert (= (and b!4032360 ((_ is Cons!43195) (originalCharacters!7510 token!484))) b!4032995))

(declare-fun b!4032996 () Bool)

(declare-fun e!2502400 () Bool)

(declare-fun tp!1225484 () Bool)

(assert (=> b!4032996 (= e!2502400 (and tp_is_empty!20601 tp!1225484))))

(assert (=> b!4032355 (= tp!1225388 e!2502400)))

(assert (= (and b!4032355 ((_ is Cons!43195) (t!334322 suffixResult!105))) b!4032996))

(declare-fun b_lambda!117653 () Bool)

(assert (= b_lambda!117649 (or (and b!4032347 b_free!112363) (and b!4032365 b_free!112367 (= (toChars!9297 (transformation!6910 (h!48617 rules!2999))) (toChars!9297 (transformation!6910 (rule!9972 token!484))))) (and b!4032973 b_free!112375 (= (toChars!9297 (transformation!6910 (h!48617 (t!334324 rules!2999)))) (toChars!9297 (transformation!6910 (rule!9972 token!484))))) b_lambda!117653)))

(declare-fun b_lambda!117655 () Bool)

(assert (= b_lambda!117647 (or (and b!4032347 b_free!112361) (and b!4032365 b_free!112365 (= (toValue!9438 (transformation!6910 (h!48617 rules!2999))) (toValue!9438 (transformation!6910 (rule!9972 token!484))))) (and b!4032973 b_free!112373 (= (toValue!9438 (transformation!6910 (h!48617 (t!334324 rules!2999)))) (toValue!9438 (transformation!6910 (rule!9972 token!484))))) b_lambda!117655)))

(declare-fun b_lambda!117657 () Bool)

(assert (= b_lambda!117651 (or (and b!4032347 b_free!112363) (and b!4032365 b_free!112367 (= (toChars!9297 (transformation!6910 (h!48617 rules!2999))) (toChars!9297 (transformation!6910 (rule!9972 token!484))))) (and b!4032973 b_free!112375 (= (toChars!9297 (transformation!6910 (h!48617 (t!334324 rules!2999)))) (toChars!9297 (transformation!6910 (rule!9972 token!484))))) b_lambda!117657)))

(check-sat (not b!4032869) (not d!1194474) (not b!4032597) (not b!4032921) (not b!4032601) (not b!4032989) (not b!4032908) (not d!1194454) (not b!4032595) (not b!4032778) (not b!4032992) (not b!4032905) (not b!4032904) (not d!1194544) (not b!4032780) (not b!4032852) (not b!4032554) (not d!1194626) (not b!4032898) (not d!1194632) (not b!4032926) (not d!1194680) (not b!4032920) (not b!4032378) (not d!1194622) (not b!4032872) (not b_lambda!117655) (not b!4032854) (not d!1194660) (not b!4032878) (not b!4032588) (not b!4032555) (not b!4032781) (not b!4032949) (not bm!286987) b_and!309907 (not b!4032936) (not d!1194676) (not b!4032783) (not b!4032528) (not b!4032990) (not b!4032907) (not b!4032919) (not b_next!113069) (not b!4032899) (not b!4032902) b_and!309921 (not d!1194458) (not d!1194650) (not b!4032586) (not b!4032975) (not bm!286986) (not d!1194520) (not d!1194634) (not b!4032390) (not b!4032917) (not d!1194630) (not d!1194668) (not b!4032828) (not b!4032847) (not b!4032785) (not d!1194658) (not b!4032591) (not b!4032996) (not d!1194524) (not b!4032914) (not b!4032897) (not d!1194450) (not b!4032923) (not d!1194540) (not d!1194666) b_and!309917 (not b!4032994) (not b_next!113077) (not d!1194682) (not b!4032909) (not b_next!113067) (not b!4032993) (not b_next!113079) b_and!309919 (not b!4032599) (not d!1194518) (not b!4032866) (not b!4032927) (not b!4032974) (not b!4032590) (not d!1194646) b_and!309915 (not b!4032972) (not b!4032784) (not b!4032971) (not b!4032868) (not b!4032922) (not b_lambda!117653) (not b!4032928) (not d!1194452) (not b!4032531) (not b!4032876) (not b!4032380) (not b!4032995) (not b!4032542) (not b!4032391) (not d!1194538) (not d!1194512) (not b!4032395) (not b!4032912) (not b!4032520) (not b!4032527) (not b!4032533) b_and!309909 (not b!4032877) (not b!4032861) (not b_next!113065) (not b!4032534) (not b!4032987) (not b!4032951) (not d!1194470) (not b!4032873) (not d!1194472) (not b_next!113071) (not b!4032782) (not b!4032519) (not b!4032911) (not b!4032421) (not b!4032417) (not d!1194656) (not tb!242261) (not d!1194532) (not tb!242257) (not d!1194674) (not b!4032931) (not b!4032541) (not b!4032864) (not b!4032779) (not b!4032900) (not b!4032855) (not b!4032420) (not d!1194528) (not d!1194664) (not b_lambda!117657) (not b!4032538) (not d!1194652) (not b!4032404) (not d!1194526) (not d!1194684) (not d!1194648) (not b!4032865) (not b!4032874) (not b!4032918) (not b!4032930) (not b!4032600) (not b!4032934) (not b!4032948) (not b!4032525) (not d!1194638) (not b!4032846) (not b!4032553) (not b!4032537) (not b!4032925) (not b!4032957) (not b!4032416) (not b!4032988) (not b!4032903) (not d!1194536) (not b!4032962) (not b!4032870) tp_is_empty!20601 (not d!1194522) (not d!1194616) (not bm!286979) (not b!4032827) (not b!4032826))
(check-sat b_and!309907 (not b_next!113069) b_and!309921 b_and!309915 b_and!309909 (not b_next!113065) (not b_next!113071) b_and!309917 (not b_next!113077) (not b_next!113067) (not b_next!113079) b_and!309919)

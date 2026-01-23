; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119794 () Bool)

(assert start!119794)

(declare-fun b!1341509 () Bool)

(declare-fun b_free!32659 () Bool)

(declare-fun b_next!33363 () Bool)

(assert (=> b!1341509 (= b_free!32659 (not b_next!33363))))

(declare-fun tp!388411 () Bool)

(declare-fun b_and!89699 () Bool)

(assert (=> b!1341509 (= tp!388411 b_and!89699)))

(declare-fun b_free!32661 () Bool)

(declare-fun b_next!33365 () Bool)

(assert (=> b!1341509 (= b_free!32661 (not b_next!33365))))

(declare-fun tp!388405 () Bool)

(declare-fun b_and!89701 () Bool)

(assert (=> b!1341509 (= tp!388405 b_and!89701)))

(declare-fun b!1341515 () Bool)

(declare-fun b_free!32663 () Bool)

(declare-fun b_next!33367 () Bool)

(assert (=> b!1341515 (= b_free!32663 (not b_next!33367))))

(declare-fun tp!388409 () Bool)

(declare-fun b_and!89703 () Bool)

(assert (=> b!1341515 (= tp!388409 b_and!89703)))

(declare-fun b_free!32665 () Bool)

(declare-fun b_next!33369 () Bool)

(assert (=> b!1341515 (= b_free!32665 (not b_next!33369))))

(declare-fun tp!388407 () Bool)

(declare-fun b_and!89705 () Bool)

(assert (=> b!1341515 (= tp!388407 b_and!89705)))

(declare-fun b!1341518 () Bool)

(declare-fun b_free!32667 () Bool)

(declare-fun b_next!33371 () Bool)

(assert (=> b!1341518 (= b_free!32667 (not b_next!33371))))

(declare-fun tp!388406 () Bool)

(declare-fun b_and!89707 () Bool)

(assert (=> b!1341518 (= tp!388406 b_and!89707)))

(declare-fun b_free!32669 () Bool)

(declare-fun b_next!33373 () Bool)

(assert (=> b!1341518 (= b_free!32669 (not b_next!33373))))

(declare-fun tp!388408 () Bool)

(declare-fun b_and!89709 () Bool)

(assert (=> b!1341518 (= tp!388408 b_and!89709)))

(declare-fun b!1341502 () Bool)

(assert (=> b!1341502 true))

(assert (=> b!1341502 true))

(declare-fun b!1341500 () Bool)

(declare-fun res!604360 () Bool)

(declare-fun e!859058 () Bool)

(assert (=> b!1341500 (=> (not res!604360) (not e!859058))))

(declare-datatypes ((List!13756 0))(
  ( (Nil!13690) (Cons!13690 (h!19091 (_ BitVec 16)) (t!119487 List!13756)) )
))
(declare-datatypes ((TokenValue!2463 0))(
  ( (FloatLiteralValue!4926 (text!17686 List!13756)) (TokenValueExt!2462 (__x!8755 Int)) (Broken!12315 (value!77237 List!13756)) (Object!2528) (End!2463) (Def!2463) (Underscore!2463) (Match!2463) (Else!2463) (Error!2463) (Case!2463) (If!2463) (Extends!2463) (Abstract!2463) (Class!2463) (Val!2463) (DelimiterValue!4926 (del!2523 List!13756)) (KeywordValue!2469 (value!77238 List!13756)) (CommentValue!4926 (value!77239 List!13756)) (WhitespaceValue!4926 (value!77240 List!13756)) (IndentationValue!2463 (value!77241 List!13756)) (String!16550) (Int32!2463) (Broken!12316 (value!77242 List!13756)) (Boolean!2464) (Unit!19818) (OperatorValue!2466 (op!2523 List!13756)) (IdentifierValue!4926 (value!77243 List!13756)) (IdentifierValue!4927 (value!77244 List!13756)) (WhitespaceValue!4927 (value!77245 List!13756)) (True!4926) (False!4926) (Broken!12317 (value!77246 List!13756)) (Broken!12318 (value!77247 List!13756)) (True!4927) (RightBrace!2463) (RightBracket!2463) (Colon!2463) (Null!2463) (Comma!2463) (LeftBracket!2463) (False!4927) (LeftBrace!2463) (ImaginaryLiteralValue!2463 (text!17687 List!13756)) (StringLiteralValue!7389 (value!77248 List!13756)) (EOFValue!2463 (value!77249 List!13756)) (IdentValue!2463 (value!77250 List!13756)) (DelimiterValue!4927 (value!77251 List!13756)) (DedentValue!2463 (value!77252 List!13756)) (NewLineValue!2463 (value!77253 List!13756)) (IntegerValue!7389 (value!77254 (_ BitVec 32)) (text!17688 List!13756)) (IntegerValue!7390 (value!77255 Int) (text!17689 List!13756)) (Times!2463) (Or!2463) (Equal!2463) (Minus!2463) (Broken!12319 (value!77256 List!13756)) (And!2463) (Div!2463) (LessEqual!2463) (Mod!2463) (Concat!6150) (Not!2463) (Plus!2463) (SpaceValue!2463 (value!77257 List!13756)) (IntegerValue!7391 (value!77258 Int) (text!17690 List!13756)) (StringLiteralValue!7390 (text!17691 List!13756)) (FloatLiteralValue!4927 (text!17692 List!13756)) (BytesLiteralValue!2463 (value!77259 List!13756)) (CommentValue!4927 (value!77260 List!13756)) (StringLiteralValue!7391 (value!77261 List!13756)) (ErrorTokenValue!2463 (msg!2524 List!13756)) )
))
(declare-datatypes ((C!7664 0))(
  ( (C!7665 (val!4392 Int)) )
))
(declare-datatypes ((List!13757 0))(
  ( (Nil!13691) (Cons!13691 (h!19092 C!7664) (t!119488 List!13757)) )
))
(declare-datatypes ((IArray!9027 0))(
  ( (IArray!9028 (innerList!4571 List!13757)) )
))
(declare-datatypes ((Conc!4511 0))(
  ( (Node!4511 (left!11743 Conc!4511) (right!12073 Conc!4511) (csize!9252 Int) (cheight!4722 Int)) (Leaf!6894 (xs!7230 IArray!9027) (csize!9253 Int)) (Empty!4511) )
))
(declare-datatypes ((BalanceConc!8962 0))(
  ( (BalanceConc!8963 (c!219803 Conc!4511)) )
))
(declare-datatypes ((Regex!3687 0))(
  ( (ElementMatch!3687 (c!219804 C!7664)) (Concat!6151 (regOne!7886 Regex!3687) (regTwo!7886 Regex!3687)) (EmptyExpr!3687) (Star!3687 (reg!4016 Regex!3687)) (EmptyLang!3687) (Union!3687 (regOne!7887 Regex!3687) (regTwo!7887 Regex!3687)) )
))
(declare-datatypes ((String!16551 0))(
  ( (String!16552 (value!77262 String)) )
))
(declare-datatypes ((TokenValueInjection!4586 0))(
  ( (TokenValueInjection!4587 (toValue!3616 Int) (toChars!3475 Int)) )
))
(declare-datatypes ((Rule!4546 0))(
  ( (Rule!4547 (regex!2373 Regex!3687) (tag!2635 String!16551) (isSeparator!2373 Bool) (transformation!2373 TokenValueInjection!4586)) )
))
(declare-datatypes ((List!13758 0))(
  ( (Nil!13692) (Cons!13692 (h!19093 Rule!4546) (t!119489 List!13758)) )
))
(declare-fun rules!2550 () List!13758)

(declare-fun isEmpty!8175 (List!13758) Bool)

(assert (=> b!1341500 (= res!604360 (not (isEmpty!8175 rules!2550)))))

(declare-fun b!1341501 () Bool)

(declare-fun res!604359 () Bool)

(assert (=> b!1341501 (=> (not res!604359) (not e!859058))))

(declare-datatypes ((LexerInterface!2068 0))(
  ( (LexerInterfaceExt!2065 (__x!8756 Int)) (Lexer!2066) )
))
(declare-fun thiss!19762 () LexerInterface!2068)

(declare-fun rulesInvariant!1938 (LexerInterface!2068 List!13758) Bool)

(assert (=> b!1341501 (= res!604359 (rulesInvariant!1938 thiss!19762 rules!2550))))

(declare-fun e!859050 () Bool)

(declare-fun e!859056 () Bool)

(assert (=> b!1341502 (= e!859050 (not e!859056))))

(declare-fun res!604364 () Bool)

(assert (=> b!1341502 (=> res!604364 e!859056)))

(declare-fun lambda!56211 () Int)

(declare-fun Exists!839 (Int) Bool)

(assert (=> b!1341502 (= res!604364 (not (Exists!839 lambda!56211)))))

(assert (=> b!1341502 (Exists!839 lambda!56211)))

(declare-datatypes ((Unit!19819 0))(
  ( (Unit!19820) )
))
(declare-fun lt!443840 () Unit!19819)

(declare-fun lt!443845 () Regex!3687)

(declare-fun lt!443843 () List!13757)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!157 (Regex!3687 List!13757) Unit!19819)

(assert (=> b!1341502 (= lt!443840 (lemmaPrefixMatchThenExistsStringThatMatches!157 lt!443845 lt!443843))))

(declare-fun b!1341503 () Bool)

(declare-fun e!859057 () Bool)

(assert (=> b!1341503 (= e!859056 e!859057)))

(declare-fun res!604354 () Bool)

(assert (=> b!1341503 (=> res!604354 e!859057)))

(declare-fun lt!443841 () List!13757)

(declare-fun ++!3506 (List!13757 List!13757) List!13757)

(declare-fun getSuffix!535 (List!13757 List!13757) List!13757)

(assert (=> b!1341503 (= res!604354 (not (= lt!443841 (++!3506 lt!443843 (getSuffix!535 lt!443841 lt!443843)))))))

(declare-fun pickWitness!142 (Int) List!13757)

(assert (=> b!1341503 (= lt!443841 (pickWitness!142 lambda!56211))))

(declare-fun b!1341504 () Bool)

(declare-fun res!604352 () Bool)

(assert (=> b!1341504 (=> (not res!604352) (not e!859058))))

(declare-datatypes ((Token!4408 0))(
  ( (Token!4409 (value!77263 TokenValue!2463) (rule!4118 Rule!4546) (size!11161 Int) (originalCharacters!3235 List!13757)) )
))
(declare-fun t1!34 () Token!4408)

(declare-fun rulesProduceIndividualToken!1037 (LexerInterface!2068 List!13758 Token!4408) Bool)

(assert (=> b!1341504 (= res!604352 (rulesProduceIndividualToken!1037 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1341505 () Bool)

(declare-fun e!859054 () Bool)

(assert (=> b!1341505 (= e!859054 e!859050)))

(declare-fun res!604362 () Bool)

(assert (=> b!1341505 (=> (not res!604362) (not e!859050))))

(declare-fun prefixMatch!196 (Regex!3687 List!13757) Bool)

(assert (=> b!1341505 (= res!604362 (prefixMatch!196 lt!443845 lt!443843))))

(declare-fun rulesRegex!256 (LexerInterface!2068 List!13758) Regex!3687)

(assert (=> b!1341505 (= lt!443845 (rulesRegex!256 thiss!19762 rules!2550))))

(declare-fun lt!443846 () List!13757)

(declare-fun lt!443847 () C!7664)

(assert (=> b!1341505 (= lt!443843 (++!3506 lt!443846 (Cons!13691 lt!443847 Nil!13691)))))

(declare-fun lt!443842 () BalanceConc!8962)

(declare-fun apply!3233 (BalanceConc!8962 Int) C!7664)

(assert (=> b!1341505 (= lt!443847 (apply!3233 lt!443842 0))))

(declare-fun lt!443848 () BalanceConc!8962)

(declare-fun list!5215 (BalanceConc!8962) List!13757)

(assert (=> b!1341505 (= lt!443846 (list!5215 lt!443848))))

(declare-fun charsOf!1345 (Token!4408) BalanceConc!8962)

(assert (=> b!1341505 (= lt!443848 (charsOf!1345 t1!34))))

(declare-fun e!859062 () Bool)

(declare-fun tp!388401 () Bool)

(declare-fun b!1341506 () Bool)

(declare-fun e!859064 () Bool)

(declare-fun inv!21 (TokenValue!2463) Bool)

(assert (=> b!1341506 (= e!859064 (and (inv!21 (value!77263 t1!34)) e!859062 tp!388401))))

(declare-fun res!604358 () Bool)

(assert (=> start!119794 (=> (not res!604358) (not e!859058))))

(get-info :version)

(assert (=> start!119794 (= res!604358 ((_ is Lexer!2066) thiss!19762))))

(assert (=> start!119794 e!859058))

(assert (=> start!119794 true))

(declare-fun e!859059 () Bool)

(assert (=> start!119794 e!859059))

(declare-fun inv!18032 (Token!4408) Bool)

(assert (=> start!119794 (and (inv!18032 t1!34) e!859064)))

(declare-fun t2!34 () Token!4408)

(declare-fun e!859045 () Bool)

(assert (=> start!119794 (and (inv!18032 t2!34) e!859045)))

(declare-fun tp!388412 () Bool)

(declare-fun e!859063 () Bool)

(declare-fun b!1341507 () Bool)

(assert (=> b!1341507 (= e!859045 (and (inv!21 (value!77263 t2!34)) e!859063 tp!388412))))

(declare-fun b!1341508 () Bool)

(declare-fun res!604356 () Bool)

(assert (=> b!1341508 (=> (not res!604356) (not e!859058))))

(assert (=> b!1341508 (= res!604356 (not (= (isSeparator!2373 (rule!4118 t1!34)) (isSeparator!2373 (rule!4118 t2!34)))))))

(declare-fun e!859061 () Bool)

(assert (=> b!1341509 (= e!859061 (and tp!388411 tp!388405))))

(declare-fun b!1341510 () Bool)

(declare-fun tp!388404 () Bool)

(declare-fun inv!18029 (String!16551) Bool)

(declare-fun inv!18033 (TokenValueInjection!4586) Bool)

(assert (=> b!1341510 (= e!859063 (and tp!388404 (inv!18029 (tag!2635 (rule!4118 t2!34))) (inv!18033 (transformation!2373 (rule!4118 t2!34))) e!859061))))

(declare-fun b!1341511 () Bool)

(declare-fun e!859046 () Bool)

(declare-fun tp!388410 () Bool)

(assert (=> b!1341511 (= e!859059 (and e!859046 tp!388410))))

(declare-fun b!1341512 () Bool)

(assert (=> b!1341512 (= e!859058 e!859054)))

(declare-fun res!604350 () Bool)

(assert (=> b!1341512 (=> (not res!604350) (not e!859054))))

(declare-fun size!11162 (BalanceConc!8962) Int)

(assert (=> b!1341512 (= res!604350 (> (size!11162 lt!443842) 0))))

(assert (=> b!1341512 (= lt!443842 (charsOf!1345 t2!34))))

(declare-fun b!1341513 () Bool)

(declare-fun res!604355 () Bool)

(assert (=> b!1341513 (=> (not res!604355) (not e!859054))))

(declare-fun separableTokensPredicate!351 (LexerInterface!2068 Token!4408 Token!4408 List!13758) Bool)

(assert (=> b!1341513 (= res!604355 (not (separableTokensPredicate!351 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1341514 () Bool)

(declare-fun e!859051 () Bool)

(assert (=> b!1341514 (= e!859057 e!859051)))

(declare-fun res!604363 () Bool)

(assert (=> b!1341514 (=> res!604363 e!859051)))

(declare-fun lt!443844 () C!7664)

(declare-fun contains!2501 (List!13757 C!7664) Bool)

(assert (=> b!1341514 (= res!604363 (not (contains!2501 lt!443843 lt!443844)))))

(assert (=> b!1341514 (= lt!443844 (apply!3233 lt!443848 0))))

(declare-fun e!859047 () Bool)

(assert (=> b!1341515 (= e!859047 (and tp!388409 tp!388407))))

(declare-fun b!1341516 () Bool)

(declare-fun res!604361 () Bool)

(assert (=> b!1341516 (=> res!604361 e!859051)))

(assert (=> b!1341516 (= res!604361 (not (contains!2501 lt!443841 lt!443844)))))

(declare-fun b!1341517 () Bool)

(declare-fun res!604353 () Bool)

(assert (=> b!1341517 (=> (not res!604353) (not e!859054))))

(declare-fun sepAndNonSepRulesDisjointChars!746 (List!13758 List!13758) Bool)

(assert (=> b!1341517 (= res!604353 (sepAndNonSepRulesDisjointChars!746 rules!2550 rules!2550))))

(declare-fun e!859060 () Bool)

(assert (=> b!1341518 (= e!859060 (and tp!388406 tp!388408))))

(declare-fun b!1341519 () Bool)

(assert (=> b!1341519 (= e!859051 (contains!2501 lt!443841 lt!443847))))

(declare-fun tp!388403 () Bool)

(declare-fun b!1341520 () Bool)

(assert (=> b!1341520 (= e!859046 (and tp!388403 (inv!18029 (tag!2635 (h!19093 rules!2550))) (inv!18033 (transformation!2373 (h!19093 rules!2550))) e!859047))))

(declare-fun tp!388402 () Bool)

(declare-fun b!1341521 () Bool)

(assert (=> b!1341521 (= e!859062 (and tp!388402 (inv!18029 (tag!2635 (rule!4118 t1!34))) (inv!18033 (transformation!2373 (rule!4118 t1!34))) e!859060))))

(declare-fun b!1341522 () Bool)

(declare-fun res!604357 () Bool)

(assert (=> b!1341522 (=> (not res!604357) (not e!859058))))

(assert (=> b!1341522 (= res!604357 (rulesProduceIndividualToken!1037 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1341523 () Bool)

(declare-fun res!604351 () Bool)

(assert (=> b!1341523 (=> res!604351 e!859051)))

(assert (=> b!1341523 (= res!604351 (not (contains!2501 lt!443843 lt!443847)))))

(assert (= (and start!119794 res!604358) b!1341500))

(assert (= (and b!1341500 res!604360) b!1341501))

(assert (= (and b!1341501 res!604359) b!1341504))

(assert (= (and b!1341504 res!604352) b!1341522))

(assert (= (and b!1341522 res!604357) b!1341508))

(assert (= (and b!1341508 res!604356) b!1341512))

(assert (= (and b!1341512 res!604350) b!1341517))

(assert (= (and b!1341517 res!604353) b!1341513))

(assert (= (and b!1341513 res!604355) b!1341505))

(assert (= (and b!1341505 res!604362) b!1341502))

(assert (= (and b!1341502 (not res!604364)) b!1341503))

(assert (= (and b!1341503 (not res!604354)) b!1341514))

(assert (= (and b!1341514 (not res!604363)) b!1341516))

(assert (= (and b!1341516 (not res!604361)) b!1341523))

(assert (= (and b!1341523 (not res!604351)) b!1341519))

(assert (= b!1341520 b!1341515))

(assert (= b!1341511 b!1341520))

(assert (= (and start!119794 ((_ is Cons!13692) rules!2550)) b!1341511))

(assert (= b!1341521 b!1341518))

(assert (= b!1341506 b!1341521))

(assert (= start!119794 b!1341506))

(assert (= b!1341510 b!1341509))

(assert (= b!1341507 b!1341510))

(assert (= start!119794 b!1341507))

(declare-fun m!1499955 () Bool)

(assert (=> b!1341517 m!1499955))

(declare-fun m!1499957 () Bool)

(assert (=> b!1341522 m!1499957))

(declare-fun m!1499959 () Bool)

(assert (=> b!1341513 m!1499959))

(declare-fun m!1499961 () Bool)

(assert (=> b!1341507 m!1499961))

(declare-fun m!1499963 () Bool)

(assert (=> b!1341500 m!1499963))

(declare-fun m!1499965 () Bool)

(assert (=> b!1341502 m!1499965))

(assert (=> b!1341502 m!1499965))

(declare-fun m!1499967 () Bool)

(assert (=> b!1341502 m!1499967))

(declare-fun m!1499969 () Bool)

(assert (=> b!1341501 m!1499969))

(declare-fun m!1499971 () Bool)

(assert (=> b!1341523 m!1499971))

(declare-fun m!1499973 () Bool)

(assert (=> b!1341514 m!1499973))

(declare-fun m!1499975 () Bool)

(assert (=> b!1341514 m!1499975))

(declare-fun m!1499977 () Bool)

(assert (=> b!1341505 m!1499977))

(declare-fun m!1499979 () Bool)

(assert (=> b!1341505 m!1499979))

(declare-fun m!1499981 () Bool)

(assert (=> b!1341505 m!1499981))

(declare-fun m!1499983 () Bool)

(assert (=> b!1341505 m!1499983))

(declare-fun m!1499985 () Bool)

(assert (=> b!1341505 m!1499985))

(declare-fun m!1499987 () Bool)

(assert (=> b!1341505 m!1499987))

(declare-fun m!1499989 () Bool)

(assert (=> b!1341512 m!1499989))

(declare-fun m!1499991 () Bool)

(assert (=> b!1341512 m!1499991))

(declare-fun m!1499993 () Bool)

(assert (=> b!1341520 m!1499993))

(declare-fun m!1499995 () Bool)

(assert (=> b!1341520 m!1499995))

(declare-fun m!1499997 () Bool)

(assert (=> b!1341521 m!1499997))

(declare-fun m!1499999 () Bool)

(assert (=> b!1341521 m!1499999))

(declare-fun m!1500001 () Bool)

(assert (=> b!1341516 m!1500001))

(declare-fun m!1500003 () Bool)

(assert (=> b!1341506 m!1500003))

(declare-fun m!1500005 () Bool)

(assert (=> b!1341519 m!1500005))

(declare-fun m!1500007 () Bool)

(assert (=> b!1341510 m!1500007))

(declare-fun m!1500009 () Bool)

(assert (=> b!1341510 m!1500009))

(declare-fun m!1500011 () Bool)

(assert (=> b!1341503 m!1500011))

(assert (=> b!1341503 m!1500011))

(declare-fun m!1500013 () Bool)

(assert (=> b!1341503 m!1500013))

(declare-fun m!1500015 () Bool)

(assert (=> b!1341503 m!1500015))

(declare-fun m!1500017 () Bool)

(assert (=> start!119794 m!1500017))

(declare-fun m!1500019 () Bool)

(assert (=> start!119794 m!1500019))

(declare-fun m!1500021 () Bool)

(assert (=> b!1341504 m!1500021))

(check-sat (not b!1341519) b_and!89709 (not b_next!33373) (not b!1341510) (not b_next!33367) (not b_next!33365) (not b!1341512) (not b!1341500) (not b_next!33371) (not b!1341504) (not b_next!33363) (not b!1341503) (not b!1341514) (not b!1341517) b_and!89701 (not b_next!33369) (not b!1341511) (not start!119794) (not b!1341513) b_and!89705 (not b!1341521) (not b!1341507) b_and!89703 b_and!89699 (not b!1341505) (not b!1341502) b_and!89707 (not b!1341523) (not b!1341522) (not b!1341520) (not b!1341501) (not b!1341516) (not b!1341506))
(check-sat (not b_next!33363) b_and!89709 (not b_next!33373) (not b_next!33367) b_and!89705 (not b_next!33365) b_and!89703 b_and!89699 b_and!89707 (not b_next!33371) b_and!89701 (not b_next!33369))
(get-model)

(declare-fun d!378511 () Bool)

(declare-fun lt!443860 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1947 (List!13757) (InoxSet C!7664))

(assert (=> d!378511 (= lt!443860 (select (content!1947 lt!443843) lt!443844))))

(declare-fun e!859092 () Bool)

(assert (=> d!378511 (= lt!443860 e!859092)))

(declare-fun res!604397 () Bool)

(assert (=> d!378511 (=> (not res!604397) (not e!859092))))

(assert (=> d!378511 (= res!604397 ((_ is Cons!13691) lt!443843))))

(assert (=> d!378511 (= (contains!2501 lt!443843 lt!443844) lt!443860)))

(declare-fun b!1341565 () Bool)

(declare-fun e!859093 () Bool)

(assert (=> b!1341565 (= e!859092 e!859093)))

(declare-fun res!604396 () Bool)

(assert (=> b!1341565 (=> res!604396 e!859093)))

(assert (=> b!1341565 (= res!604396 (= (h!19092 lt!443843) lt!443844))))

(declare-fun b!1341566 () Bool)

(assert (=> b!1341566 (= e!859093 (contains!2501 (t!119488 lt!443843) lt!443844))))

(assert (= (and d!378511 res!604397) b!1341565))

(assert (= (and b!1341565 (not res!604396)) b!1341566))

(declare-fun m!1500067 () Bool)

(assert (=> d!378511 m!1500067))

(declare-fun m!1500073 () Bool)

(assert (=> d!378511 m!1500073))

(declare-fun m!1500075 () Bool)

(assert (=> b!1341566 m!1500075))

(assert (=> b!1341514 d!378511))

(declare-fun d!378519 () Bool)

(declare-fun lt!443870 () C!7664)

(declare-fun apply!3237 (List!13757 Int) C!7664)

(assert (=> d!378519 (= lt!443870 (apply!3237 (list!5215 lt!443848) 0))))

(declare-fun apply!3238 (Conc!4511 Int) C!7664)

(assert (=> d!378519 (= lt!443870 (apply!3238 (c!219803 lt!443848) 0))))

(declare-fun e!859102 () Bool)

(assert (=> d!378519 e!859102))

(declare-fun res!604404 () Bool)

(assert (=> d!378519 (=> (not res!604404) (not e!859102))))

(assert (=> d!378519 (= res!604404 (<= 0 0))))

(assert (=> d!378519 (= (apply!3233 lt!443848 0) lt!443870)))

(declare-fun b!1341577 () Bool)

(assert (=> b!1341577 (= e!859102 (< 0 (size!11162 lt!443848)))))

(assert (= (and d!378519 res!604404) b!1341577))

(assert (=> d!378519 m!1499981))

(assert (=> d!378519 m!1499981))

(declare-fun m!1500091 () Bool)

(assert (=> d!378519 m!1500091))

(declare-fun m!1500093 () Bool)

(assert (=> d!378519 m!1500093))

(declare-fun m!1500095 () Bool)

(assert (=> b!1341577 m!1500095))

(assert (=> b!1341514 d!378519))

(declare-fun b!1341616 () Bool)

(declare-fun e!859124 () List!13757)

(assert (=> b!1341616 (= e!859124 (getSuffix!535 lt!443841 lt!443843))))

(declare-fun e!859123 () Bool)

(declare-fun b!1341619 () Bool)

(declare-fun lt!443881 () List!13757)

(assert (=> b!1341619 (= e!859123 (or (not (= (getSuffix!535 lt!443841 lt!443843) Nil!13691)) (= lt!443881 lt!443843)))))

(declare-fun d!378529 () Bool)

(assert (=> d!378529 e!859123))

(declare-fun res!604420 () Bool)

(assert (=> d!378529 (=> (not res!604420) (not e!859123))))

(assert (=> d!378529 (= res!604420 (= (content!1947 lt!443881) ((_ map or) (content!1947 lt!443843) (content!1947 (getSuffix!535 lt!443841 lt!443843)))))))

(assert (=> d!378529 (= lt!443881 e!859124)))

(declare-fun c!219823 () Bool)

(assert (=> d!378529 (= c!219823 ((_ is Nil!13691) lt!443843))))

(assert (=> d!378529 (= (++!3506 lt!443843 (getSuffix!535 lt!443841 lt!443843)) lt!443881)))

(declare-fun b!1341618 () Bool)

(declare-fun res!604419 () Bool)

(assert (=> b!1341618 (=> (not res!604419) (not e!859123))))

(declare-fun size!11166 (List!13757) Int)

(assert (=> b!1341618 (= res!604419 (= (size!11166 lt!443881) (+ (size!11166 lt!443843) (size!11166 (getSuffix!535 lt!443841 lt!443843)))))))

(declare-fun b!1341617 () Bool)

(assert (=> b!1341617 (= e!859124 (Cons!13691 (h!19092 lt!443843) (++!3506 (t!119488 lt!443843) (getSuffix!535 lt!443841 lt!443843))))))

(assert (= (and d!378529 c!219823) b!1341616))

(assert (= (and d!378529 (not c!219823)) b!1341617))

(assert (= (and d!378529 res!604420) b!1341618))

(assert (= (and b!1341618 res!604419) b!1341619))

(declare-fun m!1500149 () Bool)

(assert (=> d!378529 m!1500149))

(assert (=> d!378529 m!1500067))

(assert (=> d!378529 m!1500011))

(declare-fun m!1500151 () Bool)

(assert (=> d!378529 m!1500151))

(declare-fun m!1500153 () Bool)

(assert (=> b!1341618 m!1500153))

(declare-fun m!1500155 () Bool)

(assert (=> b!1341618 m!1500155))

(assert (=> b!1341618 m!1500011))

(declare-fun m!1500157 () Bool)

(assert (=> b!1341618 m!1500157))

(assert (=> b!1341617 m!1500011))

(declare-fun m!1500159 () Bool)

(assert (=> b!1341617 m!1500159))

(assert (=> b!1341503 d!378529))

(declare-fun d!378541 () Bool)

(declare-fun lt!443887 () List!13757)

(assert (=> d!378541 (= (++!3506 lt!443843 lt!443887) lt!443841)))

(declare-fun e!859127 () List!13757)

(assert (=> d!378541 (= lt!443887 e!859127)))

(declare-fun c!219826 () Bool)

(assert (=> d!378541 (= c!219826 ((_ is Cons!13691) lt!443843))))

(assert (=> d!378541 (>= (size!11166 lt!443841) (size!11166 lt!443843))))

(assert (=> d!378541 (= (getSuffix!535 lt!443841 lt!443843) lt!443887)))

(declare-fun b!1341624 () Bool)

(declare-fun tail!1930 (List!13757) List!13757)

(assert (=> b!1341624 (= e!859127 (getSuffix!535 (tail!1930 lt!443841) (t!119488 lt!443843)))))

(declare-fun b!1341625 () Bool)

(assert (=> b!1341625 (= e!859127 lt!443841)))

(assert (= (and d!378541 c!219826) b!1341624))

(assert (= (and d!378541 (not c!219826)) b!1341625))

(declare-fun m!1500165 () Bool)

(assert (=> d!378541 m!1500165))

(declare-fun m!1500167 () Bool)

(assert (=> d!378541 m!1500167))

(assert (=> d!378541 m!1500155))

(declare-fun m!1500169 () Bool)

(assert (=> b!1341624 m!1500169))

(assert (=> b!1341624 m!1500169))

(declare-fun m!1500171 () Bool)

(assert (=> b!1341624 m!1500171))

(assert (=> b!1341503 d!378541))

(declare-fun d!378545 () Bool)

(declare-fun lt!443890 () List!13757)

(declare-fun dynLambda!6047 (Int List!13757) Bool)

(assert (=> d!378545 (dynLambda!6047 lambda!56211 lt!443890)))

(declare-fun choose!8227 (Int) List!13757)

(assert (=> d!378545 (= lt!443890 (choose!8227 lambda!56211))))

(assert (=> d!378545 (Exists!839 lambda!56211)))

(assert (=> d!378545 (= (pickWitness!142 lambda!56211) lt!443890)))

(declare-fun b_lambda!39649 () Bool)

(assert (=> (not b_lambda!39649) (not d!378545)))

(declare-fun bs!332371 () Bool)

(assert (= bs!332371 d!378545))

(declare-fun m!1500173 () Bool)

(assert (=> bs!332371 m!1500173))

(declare-fun m!1500175 () Bool)

(assert (=> bs!332371 m!1500175))

(assert (=> bs!332371 m!1499965))

(assert (=> b!1341503 d!378545))

(declare-fun b!1341626 () Bool)

(declare-fun e!859129 () List!13757)

(assert (=> b!1341626 (= e!859129 (Cons!13691 lt!443847 Nil!13691))))

(declare-fun lt!443891 () List!13757)

(declare-fun b!1341629 () Bool)

(declare-fun e!859128 () Bool)

(assert (=> b!1341629 (= e!859128 (or (not (= (Cons!13691 lt!443847 Nil!13691) Nil!13691)) (= lt!443891 lt!443846)))))

(declare-fun d!378547 () Bool)

(assert (=> d!378547 e!859128))

(declare-fun res!604422 () Bool)

(assert (=> d!378547 (=> (not res!604422) (not e!859128))))

(assert (=> d!378547 (= res!604422 (= (content!1947 lt!443891) ((_ map or) (content!1947 lt!443846) (content!1947 (Cons!13691 lt!443847 Nil!13691)))))))

(assert (=> d!378547 (= lt!443891 e!859129)))

(declare-fun c!219827 () Bool)

(assert (=> d!378547 (= c!219827 ((_ is Nil!13691) lt!443846))))

(assert (=> d!378547 (= (++!3506 lt!443846 (Cons!13691 lt!443847 Nil!13691)) lt!443891)))

(declare-fun b!1341628 () Bool)

(declare-fun res!604421 () Bool)

(assert (=> b!1341628 (=> (not res!604421) (not e!859128))))

(assert (=> b!1341628 (= res!604421 (= (size!11166 lt!443891) (+ (size!11166 lt!443846) (size!11166 (Cons!13691 lt!443847 Nil!13691)))))))

(declare-fun b!1341627 () Bool)

(assert (=> b!1341627 (= e!859129 (Cons!13691 (h!19092 lt!443846) (++!3506 (t!119488 lt!443846) (Cons!13691 lt!443847 Nil!13691))))))

(assert (= (and d!378547 c!219827) b!1341626))

(assert (= (and d!378547 (not c!219827)) b!1341627))

(assert (= (and d!378547 res!604422) b!1341628))

(assert (= (and b!1341628 res!604421) b!1341629))

(declare-fun m!1500177 () Bool)

(assert (=> d!378547 m!1500177))

(declare-fun m!1500179 () Bool)

(assert (=> d!378547 m!1500179))

(declare-fun m!1500181 () Bool)

(assert (=> d!378547 m!1500181))

(declare-fun m!1500183 () Bool)

(assert (=> b!1341628 m!1500183))

(declare-fun m!1500185 () Bool)

(assert (=> b!1341628 m!1500185))

(declare-fun m!1500187 () Bool)

(assert (=> b!1341628 m!1500187))

(declare-fun m!1500189 () Bool)

(assert (=> b!1341627 m!1500189))

(assert (=> b!1341505 d!378547))

(declare-fun d!378549 () Bool)

(declare-fun lt!443894 () BalanceConc!8962)

(assert (=> d!378549 (= (list!5215 lt!443894) (originalCharacters!3235 t1!34))))

(declare-fun dynLambda!6048 (Int TokenValue!2463) BalanceConc!8962)

(assert (=> d!378549 (= lt!443894 (dynLambda!6048 (toChars!3475 (transformation!2373 (rule!4118 t1!34))) (value!77263 t1!34)))))

(assert (=> d!378549 (= (charsOf!1345 t1!34) lt!443894)))

(declare-fun b_lambda!39651 () Bool)

(assert (=> (not b_lambda!39651) (not d!378549)))

(declare-fun t!119503 () Bool)

(declare-fun tb!70605 () Bool)

(assert (=> (and b!1341509 (= (toChars!3475 (transformation!2373 (rule!4118 t2!34))) (toChars!3475 (transformation!2373 (rule!4118 t1!34)))) t!119503) tb!70605))

(declare-fun b!1341634 () Bool)

(declare-fun e!859132 () Bool)

(declare-fun tp!388419 () Bool)

(declare-fun inv!18036 (Conc!4511) Bool)

(assert (=> b!1341634 (= e!859132 (and (inv!18036 (c!219803 (dynLambda!6048 (toChars!3475 (transformation!2373 (rule!4118 t1!34))) (value!77263 t1!34)))) tp!388419))))

(declare-fun result!85808 () Bool)

(declare-fun inv!18037 (BalanceConc!8962) Bool)

(assert (=> tb!70605 (= result!85808 (and (inv!18037 (dynLambda!6048 (toChars!3475 (transformation!2373 (rule!4118 t1!34))) (value!77263 t1!34))) e!859132))))

(assert (= tb!70605 b!1341634))

(declare-fun m!1500191 () Bool)

(assert (=> b!1341634 m!1500191))

(declare-fun m!1500193 () Bool)

(assert (=> tb!70605 m!1500193))

(assert (=> d!378549 t!119503))

(declare-fun b_and!89735 () Bool)

(assert (= b_and!89701 (and (=> t!119503 result!85808) b_and!89735)))

(declare-fun tb!70607 () Bool)

(declare-fun t!119505 () Bool)

(assert (=> (and b!1341515 (= (toChars!3475 (transformation!2373 (h!19093 rules!2550))) (toChars!3475 (transformation!2373 (rule!4118 t1!34)))) t!119505) tb!70607))

(declare-fun result!85812 () Bool)

(assert (= result!85812 result!85808))

(assert (=> d!378549 t!119505))

(declare-fun b_and!89737 () Bool)

(assert (= b_and!89705 (and (=> t!119505 result!85812) b_and!89737)))

(declare-fun t!119507 () Bool)

(declare-fun tb!70609 () Bool)

(assert (=> (and b!1341518 (= (toChars!3475 (transformation!2373 (rule!4118 t1!34))) (toChars!3475 (transformation!2373 (rule!4118 t1!34)))) t!119507) tb!70609))

(declare-fun result!85814 () Bool)

(assert (= result!85814 result!85808))

(assert (=> d!378549 t!119507))

(declare-fun b_and!89739 () Bool)

(assert (= b_and!89709 (and (=> t!119507 result!85814) b_and!89739)))

(declare-fun m!1500195 () Bool)

(assert (=> d!378549 m!1500195))

(declare-fun m!1500197 () Bool)

(assert (=> d!378549 m!1500197))

(assert (=> b!1341505 d!378549))

(declare-fun d!378551 () Bool)

(declare-fun lt!443895 () C!7664)

(assert (=> d!378551 (= lt!443895 (apply!3237 (list!5215 lt!443842) 0))))

(assert (=> d!378551 (= lt!443895 (apply!3238 (c!219803 lt!443842) 0))))

(declare-fun e!859133 () Bool)

(assert (=> d!378551 e!859133))

(declare-fun res!604423 () Bool)

(assert (=> d!378551 (=> (not res!604423) (not e!859133))))

(assert (=> d!378551 (= res!604423 (<= 0 0))))

(assert (=> d!378551 (= (apply!3233 lt!443842 0) lt!443895)))

(declare-fun b!1341635 () Bool)

(assert (=> b!1341635 (= e!859133 (< 0 (size!11162 lt!443842)))))

(assert (= (and d!378551 res!604423) b!1341635))

(declare-fun m!1500199 () Bool)

(assert (=> d!378551 m!1500199))

(assert (=> d!378551 m!1500199))

(declare-fun m!1500201 () Bool)

(assert (=> d!378551 m!1500201))

(declare-fun m!1500203 () Bool)

(assert (=> d!378551 m!1500203))

(assert (=> b!1341635 m!1499989))

(assert (=> b!1341505 d!378551))

(declare-fun d!378553 () Bool)

(declare-fun lt!443898 () Unit!19819)

(declare-fun lemma!99 (List!13758 LexerInterface!2068 List!13758) Unit!19819)

(assert (=> d!378553 (= lt!443898 (lemma!99 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!56217 () Int)

(declare-datatypes ((List!13762 0))(
  ( (Nil!13696) (Cons!13696 (h!19097 Regex!3687) (t!119527 List!13762)) )
))
(declare-fun generalisedUnion!107 (List!13762) Regex!3687)

(declare-fun map!3020 (List!13758 Int) List!13762)

(assert (=> d!378553 (= (rulesRegex!256 thiss!19762 rules!2550) (generalisedUnion!107 (map!3020 rules!2550 lambda!56217)))))

(declare-fun bs!332372 () Bool)

(assert (= bs!332372 d!378553))

(declare-fun m!1500205 () Bool)

(assert (=> bs!332372 m!1500205))

(declare-fun m!1500207 () Bool)

(assert (=> bs!332372 m!1500207))

(assert (=> bs!332372 m!1500207))

(declare-fun m!1500209 () Bool)

(assert (=> bs!332372 m!1500209))

(assert (=> b!1341505 d!378553))

(declare-fun d!378555 () Bool)

(declare-fun list!5218 (Conc!4511) List!13757)

(assert (=> d!378555 (= (list!5215 lt!443848) (list!5218 (c!219803 lt!443848)))))

(declare-fun bs!332373 () Bool)

(assert (= bs!332373 d!378555))

(declare-fun m!1500211 () Bool)

(assert (=> bs!332373 m!1500211))

(assert (=> b!1341505 d!378555))

(declare-fun d!378557 () Bool)

(declare-fun c!219830 () Bool)

(declare-fun isEmpty!8178 (List!13757) Bool)

(assert (=> d!378557 (= c!219830 (isEmpty!8178 lt!443843))))

(declare-fun e!859136 () Bool)

(assert (=> d!378557 (= (prefixMatch!196 lt!443845 lt!443843) e!859136)))

(declare-fun b!1341640 () Bool)

(declare-fun lostCause!305 (Regex!3687) Bool)

(assert (=> b!1341640 (= e!859136 (not (lostCause!305 lt!443845)))))

(declare-fun b!1341641 () Bool)

(declare-fun derivativeStep!929 (Regex!3687 C!7664) Regex!3687)

(declare-fun head!2381 (List!13757) C!7664)

(assert (=> b!1341641 (= e!859136 (prefixMatch!196 (derivativeStep!929 lt!443845 (head!2381 lt!443843)) (tail!1930 lt!443843)))))

(assert (= (and d!378557 c!219830) b!1341640))

(assert (= (and d!378557 (not c!219830)) b!1341641))

(declare-fun m!1500213 () Bool)

(assert (=> d!378557 m!1500213))

(declare-fun m!1500215 () Bool)

(assert (=> b!1341640 m!1500215))

(declare-fun m!1500217 () Bool)

(assert (=> b!1341641 m!1500217))

(assert (=> b!1341641 m!1500217))

(declare-fun m!1500219 () Bool)

(assert (=> b!1341641 m!1500219))

(declare-fun m!1500221 () Bool)

(assert (=> b!1341641 m!1500221))

(assert (=> b!1341641 m!1500219))

(assert (=> b!1341641 m!1500221))

(declare-fun m!1500223 () Bool)

(assert (=> b!1341641 m!1500223))

(assert (=> b!1341505 d!378557))

(declare-fun d!378559 () Bool)

(declare-fun lt!443917 () Bool)

(declare-fun e!859192 () Bool)

(assert (=> d!378559 (= lt!443917 e!859192)))

(declare-fun res!604463 () Bool)

(assert (=> d!378559 (=> (not res!604463) (not e!859192))))

(declare-datatypes ((List!13763 0))(
  ( (Nil!13697) (Cons!13697 (h!19098 Token!4408) (t!119528 List!13763)) )
))
(declare-datatypes ((IArray!9031 0))(
  ( (IArray!9032 (innerList!4573 List!13763)) )
))
(declare-datatypes ((Conc!4513 0))(
  ( (Node!4513 (left!11745 Conc!4513) (right!12075 Conc!4513) (csize!9256 Int) (cheight!4724 Int)) (Leaf!6896 (xs!7232 IArray!9031) (csize!9257 Int)) (Empty!4513) )
))
(declare-datatypes ((BalanceConc!8966 0))(
  ( (BalanceConc!8967 (c!219842 Conc!4513)) )
))
(declare-fun list!5219 (BalanceConc!8966) List!13763)

(declare-datatypes ((tuple2!13302 0))(
  ( (tuple2!13303 (_1!7537 BalanceConc!8966) (_2!7537 BalanceConc!8962)) )
))
(declare-fun lex!899 (LexerInterface!2068 List!13758 BalanceConc!8962) tuple2!13302)

(declare-fun print!838 (LexerInterface!2068 BalanceConc!8966) BalanceConc!8962)

(declare-fun singletonSeq!981 (Token!4408) BalanceConc!8966)

(assert (=> d!378559 (= res!604463 (= (list!5219 (_1!7537 (lex!899 thiss!19762 rules!2550 (print!838 thiss!19762 (singletonSeq!981 t1!34))))) (list!5219 (singletonSeq!981 t1!34))))))

(declare-fun e!859193 () Bool)

(assert (=> d!378559 (= lt!443917 e!859193)))

(declare-fun res!604462 () Bool)

(assert (=> d!378559 (=> (not res!604462) (not e!859193))))

(declare-fun lt!443918 () tuple2!13302)

(declare-fun size!11167 (BalanceConc!8966) Int)

(assert (=> d!378559 (= res!604462 (= (size!11167 (_1!7537 lt!443918)) 1))))

(assert (=> d!378559 (= lt!443918 (lex!899 thiss!19762 rules!2550 (print!838 thiss!19762 (singletonSeq!981 t1!34))))))

(assert (=> d!378559 (not (isEmpty!8175 rules!2550))))

(assert (=> d!378559 (= (rulesProduceIndividualToken!1037 thiss!19762 rules!2550 t1!34) lt!443917)))

(declare-fun b!1341723 () Bool)

(declare-fun res!604464 () Bool)

(assert (=> b!1341723 (=> (not res!604464) (not e!859193))))

(declare-fun apply!3239 (BalanceConc!8966 Int) Token!4408)

(assert (=> b!1341723 (= res!604464 (= (apply!3239 (_1!7537 lt!443918) 0) t1!34))))

(declare-fun b!1341724 () Bool)

(declare-fun isEmpty!8179 (BalanceConc!8962) Bool)

(assert (=> b!1341724 (= e!859193 (isEmpty!8179 (_2!7537 lt!443918)))))

(declare-fun b!1341725 () Bool)

(assert (=> b!1341725 (= e!859192 (isEmpty!8179 (_2!7537 (lex!899 thiss!19762 rules!2550 (print!838 thiss!19762 (singletonSeq!981 t1!34))))))))

(assert (= (and d!378559 res!604462) b!1341723))

(assert (= (and b!1341723 res!604464) b!1341724))

(assert (= (and d!378559 res!604463) b!1341725))

(declare-fun m!1500321 () Bool)

(assert (=> d!378559 m!1500321))

(declare-fun m!1500323 () Bool)

(assert (=> d!378559 m!1500323))

(declare-fun m!1500325 () Bool)

(assert (=> d!378559 m!1500325))

(assert (=> d!378559 m!1500321))

(assert (=> d!378559 m!1499963))

(declare-fun m!1500327 () Bool)

(assert (=> d!378559 m!1500327))

(assert (=> d!378559 m!1500323))

(declare-fun m!1500329 () Bool)

(assert (=> d!378559 m!1500329))

(assert (=> d!378559 m!1500321))

(declare-fun m!1500331 () Bool)

(assert (=> d!378559 m!1500331))

(declare-fun m!1500333 () Bool)

(assert (=> b!1341723 m!1500333))

(declare-fun m!1500335 () Bool)

(assert (=> b!1341724 m!1500335))

(assert (=> b!1341725 m!1500321))

(assert (=> b!1341725 m!1500321))

(assert (=> b!1341725 m!1500323))

(assert (=> b!1341725 m!1500323))

(assert (=> b!1341725 m!1500329))

(declare-fun m!1500337 () Bool)

(assert (=> b!1341725 m!1500337))

(assert (=> b!1341504 d!378559))

(declare-fun d!378593 () Bool)

(declare-fun res!604469 () Bool)

(declare-fun e!859198 () Bool)

(assert (=> d!378593 (=> res!604469 e!859198)))

(assert (=> d!378593 (= res!604469 (not ((_ is Cons!13692) rules!2550)))))

(assert (=> d!378593 (= (sepAndNonSepRulesDisjointChars!746 rules!2550 rules!2550) e!859198)))

(declare-fun b!1341730 () Bool)

(declare-fun e!859199 () Bool)

(assert (=> b!1341730 (= e!859198 e!859199)))

(declare-fun res!604470 () Bool)

(assert (=> b!1341730 (=> (not res!604470) (not e!859199))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!342 (Rule!4546 List!13758) Bool)

(assert (=> b!1341730 (= res!604470 (ruleDisjointCharsFromAllFromOtherType!342 (h!19093 rules!2550) rules!2550))))

(declare-fun b!1341731 () Bool)

(assert (=> b!1341731 (= e!859199 (sepAndNonSepRulesDisjointChars!746 rules!2550 (t!119489 rules!2550)))))

(assert (= (and d!378593 (not res!604469)) b!1341730))

(assert (= (and b!1341730 res!604470) b!1341731))

(declare-fun m!1500339 () Bool)

(assert (=> b!1341730 m!1500339))

(declare-fun m!1500341 () Bool)

(assert (=> b!1341731 m!1500341))

(assert (=> b!1341517 d!378593))

(declare-fun b!1341742 () Bool)

(declare-fun e!859206 () Bool)

(declare-fun inv!16 (TokenValue!2463) Bool)

(assert (=> b!1341742 (= e!859206 (inv!16 (value!77263 t1!34)))))

(declare-fun b!1341743 () Bool)

(declare-fun e!859208 () Bool)

(declare-fun inv!17 (TokenValue!2463) Bool)

(assert (=> b!1341743 (= e!859208 (inv!17 (value!77263 t1!34)))))

(declare-fun b!1341744 () Bool)

(declare-fun e!859207 () Bool)

(declare-fun inv!15 (TokenValue!2463) Bool)

(assert (=> b!1341744 (= e!859207 (inv!15 (value!77263 t1!34)))))

(declare-fun b!1341745 () Bool)

(assert (=> b!1341745 (= e!859206 e!859208)))

(declare-fun c!219839 () Bool)

(assert (=> b!1341745 (= c!219839 ((_ is IntegerValue!7390) (value!77263 t1!34)))))

(declare-fun d!378595 () Bool)

(declare-fun c!219838 () Bool)

(assert (=> d!378595 (= c!219838 ((_ is IntegerValue!7389) (value!77263 t1!34)))))

(assert (=> d!378595 (= (inv!21 (value!77263 t1!34)) e!859206)))

(declare-fun b!1341746 () Bool)

(declare-fun res!604473 () Bool)

(assert (=> b!1341746 (=> res!604473 e!859207)))

(assert (=> b!1341746 (= res!604473 (not ((_ is IntegerValue!7391) (value!77263 t1!34))))))

(assert (=> b!1341746 (= e!859208 e!859207)))

(assert (= (and d!378595 c!219838) b!1341742))

(assert (= (and d!378595 (not c!219838)) b!1341745))

(assert (= (and b!1341745 c!219839) b!1341743))

(assert (= (and b!1341745 (not c!219839)) b!1341746))

(assert (= (and b!1341746 (not res!604473)) b!1341744))

(declare-fun m!1500343 () Bool)

(assert (=> b!1341742 m!1500343))

(declare-fun m!1500345 () Bool)

(assert (=> b!1341743 m!1500345))

(declare-fun m!1500347 () Bool)

(assert (=> b!1341744 m!1500347))

(assert (=> b!1341506 d!378595))

(declare-fun d!378597 () Bool)

(declare-fun lt!443919 () Bool)

(assert (=> d!378597 (= lt!443919 (select (content!1947 lt!443841) lt!443844))))

(declare-fun e!859209 () Bool)

(assert (=> d!378597 (= lt!443919 e!859209)))

(declare-fun res!604475 () Bool)

(assert (=> d!378597 (=> (not res!604475) (not e!859209))))

(assert (=> d!378597 (= res!604475 ((_ is Cons!13691) lt!443841))))

(assert (=> d!378597 (= (contains!2501 lt!443841 lt!443844) lt!443919)))

(declare-fun b!1341747 () Bool)

(declare-fun e!859210 () Bool)

(assert (=> b!1341747 (= e!859209 e!859210)))

(declare-fun res!604474 () Bool)

(assert (=> b!1341747 (=> res!604474 e!859210)))

(assert (=> b!1341747 (= res!604474 (= (h!19092 lt!443841) lt!443844))))

(declare-fun b!1341748 () Bool)

(assert (=> b!1341748 (= e!859210 (contains!2501 (t!119488 lt!443841) lt!443844))))

(assert (= (and d!378597 res!604475) b!1341747))

(assert (= (and b!1341747 (not res!604474)) b!1341748))

(declare-fun m!1500349 () Bool)

(assert (=> d!378597 m!1500349))

(declare-fun m!1500351 () Bool)

(assert (=> d!378597 m!1500351))

(declare-fun m!1500353 () Bool)

(assert (=> b!1341748 m!1500353))

(assert (=> b!1341516 d!378597))

(declare-fun b!1341749 () Bool)

(declare-fun e!859211 () Bool)

(assert (=> b!1341749 (= e!859211 (inv!16 (value!77263 t2!34)))))

(declare-fun b!1341750 () Bool)

(declare-fun e!859213 () Bool)

(assert (=> b!1341750 (= e!859213 (inv!17 (value!77263 t2!34)))))

(declare-fun b!1341751 () Bool)

(declare-fun e!859212 () Bool)

(assert (=> b!1341751 (= e!859212 (inv!15 (value!77263 t2!34)))))

(declare-fun b!1341752 () Bool)

(assert (=> b!1341752 (= e!859211 e!859213)))

(declare-fun c!219841 () Bool)

(assert (=> b!1341752 (= c!219841 ((_ is IntegerValue!7390) (value!77263 t2!34)))))

(declare-fun d!378599 () Bool)

(declare-fun c!219840 () Bool)

(assert (=> d!378599 (= c!219840 ((_ is IntegerValue!7389) (value!77263 t2!34)))))

(assert (=> d!378599 (= (inv!21 (value!77263 t2!34)) e!859211)))

(declare-fun b!1341753 () Bool)

(declare-fun res!604476 () Bool)

(assert (=> b!1341753 (=> res!604476 e!859212)))

(assert (=> b!1341753 (= res!604476 (not ((_ is IntegerValue!7391) (value!77263 t2!34))))))

(assert (=> b!1341753 (= e!859213 e!859212)))

(assert (= (and d!378599 c!219840) b!1341749))

(assert (= (and d!378599 (not c!219840)) b!1341752))

(assert (= (and b!1341752 c!219841) b!1341750))

(assert (= (and b!1341752 (not c!219841)) b!1341753))

(assert (= (and b!1341753 (not res!604476)) b!1341751))

(declare-fun m!1500355 () Bool)

(assert (=> b!1341749 m!1500355))

(declare-fun m!1500357 () Bool)

(assert (=> b!1341750 m!1500357))

(declare-fun m!1500359 () Bool)

(assert (=> b!1341751 m!1500359))

(assert (=> b!1341507 d!378599))

(declare-fun d!378601 () Bool)

(declare-fun lt!443920 () Bool)

(assert (=> d!378601 (= lt!443920 (select (content!1947 lt!443841) lt!443847))))

(declare-fun e!859214 () Bool)

(assert (=> d!378601 (= lt!443920 e!859214)))

(declare-fun res!604478 () Bool)

(assert (=> d!378601 (=> (not res!604478) (not e!859214))))

(assert (=> d!378601 (= res!604478 ((_ is Cons!13691) lt!443841))))

(assert (=> d!378601 (= (contains!2501 lt!443841 lt!443847) lt!443920)))

(declare-fun b!1341754 () Bool)

(declare-fun e!859215 () Bool)

(assert (=> b!1341754 (= e!859214 e!859215)))

(declare-fun res!604477 () Bool)

(assert (=> b!1341754 (=> res!604477 e!859215)))

(assert (=> b!1341754 (= res!604477 (= (h!19092 lt!443841) lt!443847))))

(declare-fun b!1341755 () Bool)

(assert (=> b!1341755 (= e!859215 (contains!2501 (t!119488 lt!443841) lt!443847))))

(assert (= (and d!378601 res!604478) b!1341754))

(assert (= (and b!1341754 (not res!604477)) b!1341755))

(assert (=> d!378601 m!1500349))

(declare-fun m!1500361 () Bool)

(assert (=> d!378601 m!1500361))

(declare-fun m!1500363 () Bool)

(assert (=> b!1341755 m!1500363))

(assert (=> b!1341519 d!378601))

(declare-fun d!378603 () Bool)

(assert (=> d!378603 (= (inv!18029 (tag!2635 (rule!4118 t1!34))) (= (mod (str.len (value!77262 (tag!2635 (rule!4118 t1!34)))) 2) 0))))

(assert (=> b!1341521 d!378603))

(declare-fun d!378605 () Bool)

(declare-fun res!604481 () Bool)

(declare-fun e!859218 () Bool)

(assert (=> d!378605 (=> (not res!604481) (not e!859218))))

(declare-fun semiInverseModEq!900 (Int Int) Bool)

(assert (=> d!378605 (= res!604481 (semiInverseModEq!900 (toChars!3475 (transformation!2373 (rule!4118 t1!34))) (toValue!3616 (transformation!2373 (rule!4118 t1!34)))))))

(assert (=> d!378605 (= (inv!18033 (transformation!2373 (rule!4118 t1!34))) e!859218)))

(declare-fun b!1341758 () Bool)

(declare-fun equivClasses!859 (Int Int) Bool)

(assert (=> b!1341758 (= e!859218 (equivClasses!859 (toChars!3475 (transformation!2373 (rule!4118 t1!34))) (toValue!3616 (transformation!2373 (rule!4118 t1!34)))))))

(assert (= (and d!378605 res!604481) b!1341758))

(declare-fun m!1500365 () Bool)

(assert (=> d!378605 m!1500365))

(declare-fun m!1500367 () Bool)

(assert (=> b!1341758 m!1500367))

(assert (=> b!1341521 d!378605))

(declare-fun d!378607 () Bool)

(assert (=> d!378607 (= (inv!18029 (tag!2635 (rule!4118 t2!34))) (= (mod (str.len (value!77262 (tag!2635 (rule!4118 t2!34)))) 2) 0))))

(assert (=> b!1341510 d!378607))

(declare-fun d!378609 () Bool)

(declare-fun res!604482 () Bool)

(declare-fun e!859219 () Bool)

(assert (=> d!378609 (=> (not res!604482) (not e!859219))))

(assert (=> d!378609 (= res!604482 (semiInverseModEq!900 (toChars!3475 (transformation!2373 (rule!4118 t2!34))) (toValue!3616 (transformation!2373 (rule!4118 t2!34)))))))

(assert (=> d!378609 (= (inv!18033 (transformation!2373 (rule!4118 t2!34))) e!859219)))

(declare-fun b!1341759 () Bool)

(assert (=> b!1341759 (= e!859219 (equivClasses!859 (toChars!3475 (transformation!2373 (rule!4118 t2!34))) (toValue!3616 (transformation!2373 (rule!4118 t2!34)))))))

(assert (= (and d!378609 res!604482) b!1341759))

(declare-fun m!1500369 () Bool)

(assert (=> d!378609 m!1500369))

(declare-fun m!1500371 () Bool)

(assert (=> b!1341759 m!1500371))

(assert (=> b!1341510 d!378609))

(declare-fun d!378611 () Bool)

(declare-fun res!604487 () Bool)

(declare-fun e!859222 () Bool)

(assert (=> d!378611 (=> (not res!604487) (not e!859222))))

(assert (=> d!378611 (= res!604487 (not (isEmpty!8178 (originalCharacters!3235 t1!34))))))

(assert (=> d!378611 (= (inv!18032 t1!34) e!859222)))

(declare-fun b!1341764 () Bool)

(declare-fun res!604488 () Bool)

(assert (=> b!1341764 (=> (not res!604488) (not e!859222))))

(assert (=> b!1341764 (= res!604488 (= (originalCharacters!3235 t1!34) (list!5215 (dynLambda!6048 (toChars!3475 (transformation!2373 (rule!4118 t1!34))) (value!77263 t1!34)))))))

(declare-fun b!1341765 () Bool)

(assert (=> b!1341765 (= e!859222 (= (size!11161 t1!34) (size!11166 (originalCharacters!3235 t1!34))))))

(assert (= (and d!378611 res!604487) b!1341764))

(assert (= (and b!1341764 res!604488) b!1341765))

(declare-fun b_lambda!39663 () Bool)

(assert (=> (not b_lambda!39663) (not b!1341764)))

(assert (=> b!1341764 t!119503))

(declare-fun b_and!89745 () Bool)

(assert (= b_and!89735 (and (=> t!119503 result!85808) b_and!89745)))

(assert (=> b!1341764 t!119505))

(declare-fun b_and!89747 () Bool)

(assert (= b_and!89737 (and (=> t!119505 result!85812) b_and!89747)))

(assert (=> b!1341764 t!119507))

(declare-fun b_and!89749 () Bool)

(assert (= b_and!89739 (and (=> t!119507 result!85814) b_and!89749)))

(declare-fun m!1500373 () Bool)

(assert (=> d!378611 m!1500373))

(assert (=> b!1341764 m!1500197))

(assert (=> b!1341764 m!1500197))

(declare-fun m!1500375 () Bool)

(assert (=> b!1341764 m!1500375))

(declare-fun m!1500377 () Bool)

(assert (=> b!1341765 m!1500377))

(assert (=> start!119794 d!378611))

(declare-fun d!378613 () Bool)

(declare-fun res!604489 () Bool)

(declare-fun e!859223 () Bool)

(assert (=> d!378613 (=> (not res!604489) (not e!859223))))

(assert (=> d!378613 (= res!604489 (not (isEmpty!8178 (originalCharacters!3235 t2!34))))))

(assert (=> d!378613 (= (inv!18032 t2!34) e!859223)))

(declare-fun b!1341766 () Bool)

(declare-fun res!604490 () Bool)

(assert (=> b!1341766 (=> (not res!604490) (not e!859223))))

(assert (=> b!1341766 (= res!604490 (= (originalCharacters!3235 t2!34) (list!5215 (dynLambda!6048 (toChars!3475 (transformation!2373 (rule!4118 t2!34))) (value!77263 t2!34)))))))

(declare-fun b!1341767 () Bool)

(assert (=> b!1341767 (= e!859223 (= (size!11161 t2!34) (size!11166 (originalCharacters!3235 t2!34))))))

(assert (= (and d!378613 res!604489) b!1341766))

(assert (= (and b!1341766 res!604490) b!1341767))

(declare-fun b_lambda!39665 () Bool)

(assert (=> (not b_lambda!39665) (not b!1341766)))

(declare-fun t!119518 () Bool)

(declare-fun tb!70615 () Bool)

(assert (=> (and b!1341509 (= (toChars!3475 (transformation!2373 (rule!4118 t2!34))) (toChars!3475 (transformation!2373 (rule!4118 t2!34)))) t!119518) tb!70615))

(declare-fun b!1341768 () Bool)

(declare-fun e!859224 () Bool)

(declare-fun tp!388461 () Bool)

(assert (=> b!1341768 (= e!859224 (and (inv!18036 (c!219803 (dynLambda!6048 (toChars!3475 (transformation!2373 (rule!4118 t2!34))) (value!77263 t2!34)))) tp!388461))))

(declare-fun result!85826 () Bool)

(assert (=> tb!70615 (= result!85826 (and (inv!18037 (dynLambda!6048 (toChars!3475 (transformation!2373 (rule!4118 t2!34))) (value!77263 t2!34))) e!859224))))

(assert (= tb!70615 b!1341768))

(declare-fun m!1500379 () Bool)

(assert (=> b!1341768 m!1500379))

(declare-fun m!1500381 () Bool)

(assert (=> tb!70615 m!1500381))

(assert (=> b!1341766 t!119518))

(declare-fun b_and!89751 () Bool)

(assert (= b_and!89745 (and (=> t!119518 result!85826) b_and!89751)))

(declare-fun t!119520 () Bool)

(declare-fun tb!70617 () Bool)

(assert (=> (and b!1341515 (= (toChars!3475 (transformation!2373 (h!19093 rules!2550))) (toChars!3475 (transformation!2373 (rule!4118 t2!34)))) t!119520) tb!70617))

(declare-fun result!85828 () Bool)

(assert (= result!85828 result!85826))

(assert (=> b!1341766 t!119520))

(declare-fun b_and!89753 () Bool)

(assert (= b_and!89747 (and (=> t!119520 result!85828) b_and!89753)))

(declare-fun t!119522 () Bool)

(declare-fun tb!70619 () Bool)

(assert (=> (and b!1341518 (= (toChars!3475 (transformation!2373 (rule!4118 t1!34))) (toChars!3475 (transformation!2373 (rule!4118 t2!34)))) t!119522) tb!70619))

(declare-fun result!85830 () Bool)

(assert (= result!85830 result!85826))

(assert (=> b!1341766 t!119522))

(declare-fun b_and!89755 () Bool)

(assert (= b_and!89749 (and (=> t!119522 result!85830) b_and!89755)))

(declare-fun m!1500383 () Bool)

(assert (=> d!378613 m!1500383))

(declare-fun m!1500385 () Bool)

(assert (=> b!1341766 m!1500385))

(assert (=> b!1341766 m!1500385))

(declare-fun m!1500387 () Bool)

(assert (=> b!1341766 m!1500387))

(declare-fun m!1500389 () Bool)

(assert (=> b!1341767 m!1500389))

(assert (=> start!119794 d!378613))

(declare-fun d!378615 () Bool)

(assert (=> d!378615 (= (inv!18029 (tag!2635 (h!19093 rules!2550))) (= (mod (str.len (value!77262 (tag!2635 (h!19093 rules!2550)))) 2) 0))))

(assert (=> b!1341520 d!378615))

(declare-fun d!378617 () Bool)

(declare-fun res!604491 () Bool)

(declare-fun e!859225 () Bool)

(assert (=> d!378617 (=> (not res!604491) (not e!859225))))

(assert (=> d!378617 (= res!604491 (semiInverseModEq!900 (toChars!3475 (transformation!2373 (h!19093 rules!2550))) (toValue!3616 (transformation!2373 (h!19093 rules!2550)))))))

(assert (=> d!378617 (= (inv!18033 (transformation!2373 (h!19093 rules!2550))) e!859225)))

(declare-fun b!1341769 () Bool)

(assert (=> b!1341769 (= e!859225 (equivClasses!859 (toChars!3475 (transformation!2373 (h!19093 rules!2550))) (toValue!3616 (transformation!2373 (h!19093 rules!2550)))))))

(assert (= (and d!378617 res!604491) b!1341769))

(declare-fun m!1500391 () Bool)

(assert (=> d!378617 m!1500391))

(declare-fun m!1500393 () Bool)

(assert (=> b!1341769 m!1500393))

(assert (=> b!1341520 d!378617))

(declare-fun d!378619 () Bool)

(declare-fun res!604494 () Bool)

(declare-fun e!859228 () Bool)

(assert (=> d!378619 (=> (not res!604494) (not e!859228))))

(declare-fun rulesValid!869 (LexerInterface!2068 List!13758) Bool)

(assert (=> d!378619 (= res!604494 (rulesValid!869 thiss!19762 rules!2550))))

(assert (=> d!378619 (= (rulesInvariant!1938 thiss!19762 rules!2550) e!859228)))

(declare-fun b!1341772 () Bool)

(declare-datatypes ((List!13764 0))(
  ( (Nil!13698) (Cons!13698 (h!19099 String!16551) (t!119529 List!13764)) )
))
(declare-fun noDuplicateTag!869 (LexerInterface!2068 List!13758 List!13764) Bool)

(assert (=> b!1341772 (= e!859228 (noDuplicateTag!869 thiss!19762 rules!2550 Nil!13698))))

(assert (= (and d!378619 res!604494) b!1341772))

(declare-fun m!1500395 () Bool)

(assert (=> d!378619 m!1500395))

(declare-fun m!1500397 () Bool)

(assert (=> b!1341772 m!1500397))

(assert (=> b!1341501 d!378619))

(declare-fun d!378621 () Bool)

(declare-fun lt!443921 () Bool)

(declare-fun e!859229 () Bool)

(assert (=> d!378621 (= lt!443921 e!859229)))

(declare-fun res!604496 () Bool)

(assert (=> d!378621 (=> (not res!604496) (not e!859229))))

(assert (=> d!378621 (= res!604496 (= (list!5219 (_1!7537 (lex!899 thiss!19762 rules!2550 (print!838 thiss!19762 (singletonSeq!981 t2!34))))) (list!5219 (singletonSeq!981 t2!34))))))

(declare-fun e!859230 () Bool)

(assert (=> d!378621 (= lt!443921 e!859230)))

(declare-fun res!604495 () Bool)

(assert (=> d!378621 (=> (not res!604495) (not e!859230))))

(declare-fun lt!443922 () tuple2!13302)

(assert (=> d!378621 (= res!604495 (= (size!11167 (_1!7537 lt!443922)) 1))))

(assert (=> d!378621 (= lt!443922 (lex!899 thiss!19762 rules!2550 (print!838 thiss!19762 (singletonSeq!981 t2!34))))))

(assert (=> d!378621 (not (isEmpty!8175 rules!2550))))

(assert (=> d!378621 (= (rulesProduceIndividualToken!1037 thiss!19762 rules!2550 t2!34) lt!443921)))

(declare-fun b!1341773 () Bool)

(declare-fun res!604497 () Bool)

(assert (=> b!1341773 (=> (not res!604497) (not e!859230))))

(assert (=> b!1341773 (= res!604497 (= (apply!3239 (_1!7537 lt!443922) 0) t2!34))))

(declare-fun b!1341774 () Bool)

(assert (=> b!1341774 (= e!859230 (isEmpty!8179 (_2!7537 lt!443922)))))

(declare-fun b!1341775 () Bool)

(assert (=> b!1341775 (= e!859229 (isEmpty!8179 (_2!7537 (lex!899 thiss!19762 rules!2550 (print!838 thiss!19762 (singletonSeq!981 t2!34))))))))

(assert (= (and d!378621 res!604495) b!1341773))

(assert (= (and b!1341773 res!604497) b!1341774))

(assert (= (and d!378621 res!604496) b!1341775))

(declare-fun m!1500399 () Bool)

(assert (=> d!378621 m!1500399))

(declare-fun m!1500401 () Bool)

(assert (=> d!378621 m!1500401))

(declare-fun m!1500403 () Bool)

(assert (=> d!378621 m!1500403))

(assert (=> d!378621 m!1500399))

(assert (=> d!378621 m!1499963))

(declare-fun m!1500405 () Bool)

(assert (=> d!378621 m!1500405))

(assert (=> d!378621 m!1500401))

(declare-fun m!1500407 () Bool)

(assert (=> d!378621 m!1500407))

(assert (=> d!378621 m!1500399))

(declare-fun m!1500409 () Bool)

(assert (=> d!378621 m!1500409))

(declare-fun m!1500411 () Bool)

(assert (=> b!1341773 m!1500411))

(declare-fun m!1500413 () Bool)

(assert (=> b!1341774 m!1500413))

(assert (=> b!1341775 m!1500399))

(assert (=> b!1341775 m!1500399))

(assert (=> b!1341775 m!1500401))

(assert (=> b!1341775 m!1500401))

(assert (=> b!1341775 m!1500407))

(declare-fun m!1500415 () Bool)

(assert (=> b!1341775 m!1500415))

(assert (=> b!1341522 d!378621))

(declare-fun d!378623 () Bool)

(assert (=> d!378623 (= (isEmpty!8175 rules!2550) ((_ is Nil!13692) rules!2550))))

(assert (=> b!1341500 d!378623))

(declare-fun d!378625 () Bool)

(declare-fun prefixMatchZipperSequence!218 (Regex!3687 BalanceConc!8962) Bool)

(declare-fun ++!3508 (BalanceConc!8962 BalanceConc!8962) BalanceConc!8962)

(declare-fun singletonSeq!982 (C!7664) BalanceConc!8962)

(assert (=> d!378625 (= (separableTokensPredicate!351 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!218 (rulesRegex!256 thiss!19762 rules!2550) (++!3508 (charsOf!1345 t1!34) (singletonSeq!982 (apply!3233 (charsOf!1345 t2!34) 0))))))))

(declare-fun bs!332379 () Bool)

(assert (= bs!332379 d!378625))

(assert (=> bs!332379 m!1499979))

(assert (=> bs!332379 m!1499985))

(assert (=> bs!332379 m!1499985))

(declare-fun m!1500417 () Bool)

(assert (=> bs!332379 m!1500417))

(declare-fun m!1500419 () Bool)

(assert (=> bs!332379 m!1500419))

(assert (=> bs!332379 m!1499979))

(declare-fun m!1500421 () Bool)

(assert (=> bs!332379 m!1500421))

(assert (=> bs!332379 m!1500417))

(assert (=> bs!332379 m!1499991))

(declare-fun m!1500423 () Bool)

(assert (=> bs!332379 m!1500423))

(assert (=> bs!332379 m!1500421))

(assert (=> bs!332379 m!1499991))

(assert (=> bs!332379 m!1500423))

(assert (=> b!1341513 d!378625))

(declare-fun d!378627 () Bool)

(declare-fun choose!8228 (Int) Bool)

(assert (=> d!378627 (= (Exists!839 lambda!56211) (choose!8228 lambda!56211))))

(declare-fun bs!332380 () Bool)

(assert (= bs!332380 d!378627))

(declare-fun m!1500425 () Bool)

(assert (=> bs!332380 m!1500425))

(assert (=> b!1341502 d!378627))

(declare-fun bs!332381 () Bool)

(declare-fun d!378629 () Bool)

(assert (= bs!332381 (and d!378629 b!1341502)))

(declare-fun lambda!56223 () Int)

(assert (=> bs!332381 (= lambda!56223 lambda!56211)))

(assert (=> d!378629 true))

(assert (=> d!378629 true))

(assert (=> d!378629 (Exists!839 lambda!56223)))

(declare-fun lt!443925 () Unit!19819)

(declare-fun choose!8229 (Regex!3687 List!13757) Unit!19819)

(assert (=> d!378629 (= lt!443925 (choose!8229 lt!443845 lt!443843))))

(declare-fun validRegex!1591 (Regex!3687) Bool)

(assert (=> d!378629 (validRegex!1591 lt!443845)))

(assert (=> d!378629 (= (lemmaPrefixMatchThenExistsStringThatMatches!157 lt!443845 lt!443843) lt!443925)))

(declare-fun bs!332382 () Bool)

(assert (= bs!332382 d!378629))

(declare-fun m!1500427 () Bool)

(assert (=> bs!332382 m!1500427))

(declare-fun m!1500429 () Bool)

(assert (=> bs!332382 m!1500429))

(declare-fun m!1500431 () Bool)

(assert (=> bs!332382 m!1500431))

(assert (=> b!1341502 d!378629))

(declare-fun d!378631 () Bool)

(declare-fun lt!443926 () Bool)

(assert (=> d!378631 (= lt!443926 (select (content!1947 lt!443843) lt!443847))))

(declare-fun e!859233 () Bool)

(assert (=> d!378631 (= lt!443926 e!859233)))

(declare-fun res!604501 () Bool)

(assert (=> d!378631 (=> (not res!604501) (not e!859233))))

(assert (=> d!378631 (= res!604501 ((_ is Cons!13691) lt!443843))))

(assert (=> d!378631 (= (contains!2501 lt!443843 lt!443847) lt!443926)))

(declare-fun b!1341778 () Bool)

(declare-fun e!859234 () Bool)

(assert (=> b!1341778 (= e!859233 e!859234)))

(declare-fun res!604500 () Bool)

(assert (=> b!1341778 (=> res!604500 e!859234)))

(assert (=> b!1341778 (= res!604500 (= (h!19092 lt!443843) lt!443847))))

(declare-fun b!1341779 () Bool)

(assert (=> b!1341779 (= e!859234 (contains!2501 (t!119488 lt!443843) lt!443847))))

(assert (= (and d!378631 res!604501) b!1341778))

(assert (= (and b!1341778 (not res!604500)) b!1341779))

(assert (=> d!378631 m!1500067))

(declare-fun m!1500433 () Bool)

(assert (=> d!378631 m!1500433))

(declare-fun m!1500435 () Bool)

(assert (=> b!1341779 m!1500435))

(assert (=> b!1341523 d!378631))

(declare-fun d!378633 () Bool)

(declare-fun lt!443929 () Int)

(assert (=> d!378633 (= lt!443929 (size!11166 (list!5215 lt!443842)))))

(declare-fun size!11168 (Conc!4511) Int)

(assert (=> d!378633 (= lt!443929 (size!11168 (c!219803 lt!443842)))))

(assert (=> d!378633 (= (size!11162 lt!443842) lt!443929)))

(declare-fun bs!332383 () Bool)

(assert (= bs!332383 d!378633))

(assert (=> bs!332383 m!1500199))

(assert (=> bs!332383 m!1500199))

(declare-fun m!1500437 () Bool)

(assert (=> bs!332383 m!1500437))

(declare-fun m!1500439 () Bool)

(assert (=> bs!332383 m!1500439))

(assert (=> b!1341512 d!378633))

(declare-fun d!378635 () Bool)

(declare-fun lt!443930 () BalanceConc!8962)

(assert (=> d!378635 (= (list!5215 lt!443930) (originalCharacters!3235 t2!34))))

(assert (=> d!378635 (= lt!443930 (dynLambda!6048 (toChars!3475 (transformation!2373 (rule!4118 t2!34))) (value!77263 t2!34)))))

(assert (=> d!378635 (= (charsOf!1345 t2!34) lt!443930)))

(declare-fun b_lambda!39667 () Bool)

(assert (=> (not b_lambda!39667) (not d!378635)))

(assert (=> d!378635 t!119518))

(declare-fun b_and!89757 () Bool)

(assert (= b_and!89751 (and (=> t!119518 result!85826) b_and!89757)))

(assert (=> d!378635 t!119520))

(declare-fun b_and!89759 () Bool)

(assert (= b_and!89753 (and (=> t!119520 result!85828) b_and!89759)))

(assert (=> d!378635 t!119522))

(declare-fun b_and!89761 () Bool)

(assert (= b_and!89755 (and (=> t!119522 result!85830) b_and!89761)))

(declare-fun m!1500441 () Bool)

(assert (=> d!378635 m!1500441))

(assert (=> d!378635 m!1500385))

(assert (=> b!1341512 d!378635))

(declare-fun e!859237 () Bool)

(assert (=> b!1341521 (= tp!388402 e!859237)))

(declare-fun b!1341793 () Bool)

(declare-fun tp!388476 () Bool)

(declare-fun tp!388472 () Bool)

(assert (=> b!1341793 (= e!859237 (and tp!388476 tp!388472))))

(declare-fun b!1341790 () Bool)

(declare-fun tp_is_empty!6691 () Bool)

(assert (=> b!1341790 (= e!859237 tp_is_empty!6691)))

(declare-fun b!1341792 () Bool)

(declare-fun tp!388473 () Bool)

(assert (=> b!1341792 (= e!859237 tp!388473)))

(declare-fun b!1341791 () Bool)

(declare-fun tp!388475 () Bool)

(declare-fun tp!388474 () Bool)

(assert (=> b!1341791 (= e!859237 (and tp!388475 tp!388474))))

(assert (= (and b!1341521 ((_ is ElementMatch!3687) (regex!2373 (rule!4118 t1!34)))) b!1341790))

(assert (= (and b!1341521 ((_ is Concat!6151) (regex!2373 (rule!4118 t1!34)))) b!1341791))

(assert (= (and b!1341521 ((_ is Star!3687) (regex!2373 (rule!4118 t1!34)))) b!1341792))

(assert (= (and b!1341521 ((_ is Union!3687) (regex!2373 (rule!4118 t1!34)))) b!1341793))

(declare-fun e!859238 () Bool)

(assert (=> b!1341510 (= tp!388404 e!859238)))

(declare-fun b!1341797 () Bool)

(declare-fun tp!388481 () Bool)

(declare-fun tp!388477 () Bool)

(assert (=> b!1341797 (= e!859238 (and tp!388481 tp!388477))))

(declare-fun b!1341794 () Bool)

(assert (=> b!1341794 (= e!859238 tp_is_empty!6691)))

(declare-fun b!1341796 () Bool)

(declare-fun tp!388478 () Bool)

(assert (=> b!1341796 (= e!859238 tp!388478)))

(declare-fun b!1341795 () Bool)

(declare-fun tp!388480 () Bool)

(declare-fun tp!388479 () Bool)

(assert (=> b!1341795 (= e!859238 (and tp!388480 tp!388479))))

(assert (= (and b!1341510 ((_ is ElementMatch!3687) (regex!2373 (rule!4118 t2!34)))) b!1341794))

(assert (= (and b!1341510 ((_ is Concat!6151) (regex!2373 (rule!4118 t2!34)))) b!1341795))

(assert (= (and b!1341510 ((_ is Star!3687) (regex!2373 (rule!4118 t2!34)))) b!1341796))

(assert (= (and b!1341510 ((_ is Union!3687) (regex!2373 (rule!4118 t2!34)))) b!1341797))

(declare-fun e!859239 () Bool)

(assert (=> b!1341520 (= tp!388403 e!859239)))

(declare-fun b!1341801 () Bool)

(declare-fun tp!388486 () Bool)

(declare-fun tp!388482 () Bool)

(assert (=> b!1341801 (= e!859239 (and tp!388486 tp!388482))))

(declare-fun b!1341798 () Bool)

(assert (=> b!1341798 (= e!859239 tp_is_empty!6691)))

(declare-fun b!1341800 () Bool)

(declare-fun tp!388483 () Bool)

(assert (=> b!1341800 (= e!859239 tp!388483)))

(declare-fun b!1341799 () Bool)

(declare-fun tp!388485 () Bool)

(declare-fun tp!388484 () Bool)

(assert (=> b!1341799 (= e!859239 (and tp!388485 tp!388484))))

(assert (= (and b!1341520 ((_ is ElementMatch!3687) (regex!2373 (h!19093 rules!2550)))) b!1341798))

(assert (= (and b!1341520 ((_ is Concat!6151) (regex!2373 (h!19093 rules!2550)))) b!1341799))

(assert (= (and b!1341520 ((_ is Star!3687) (regex!2373 (h!19093 rules!2550)))) b!1341800))

(assert (= (and b!1341520 ((_ is Union!3687) (regex!2373 (h!19093 rules!2550)))) b!1341801))

(declare-fun b!1341806 () Bool)

(declare-fun e!859242 () Bool)

(declare-fun tp!388489 () Bool)

(assert (=> b!1341806 (= e!859242 (and tp_is_empty!6691 tp!388489))))

(assert (=> b!1341506 (= tp!388401 e!859242)))

(assert (= (and b!1341506 ((_ is Cons!13691) (originalCharacters!3235 t1!34))) b!1341806))

(declare-fun b!1341817 () Bool)

(declare-fun b_free!32675 () Bool)

(declare-fun b_next!33379 () Bool)

(assert (=> b!1341817 (= b_free!32675 (not b_next!33379))))

(declare-fun tp!388500 () Bool)

(declare-fun b_and!89763 () Bool)

(assert (=> b!1341817 (= tp!388500 b_and!89763)))

(declare-fun b_free!32677 () Bool)

(declare-fun b_next!33381 () Bool)

(assert (=> b!1341817 (= b_free!32677 (not b_next!33381))))

(declare-fun tb!70621 () Bool)

(declare-fun t!119524 () Bool)

(assert (=> (and b!1341817 (= (toChars!3475 (transformation!2373 (h!19093 (t!119489 rules!2550)))) (toChars!3475 (transformation!2373 (rule!4118 t1!34)))) t!119524) tb!70621))

(declare-fun result!85838 () Bool)

(assert (= result!85838 result!85808))

(assert (=> d!378549 t!119524))

(assert (=> b!1341764 t!119524))

(declare-fun t!119526 () Bool)

(declare-fun tb!70623 () Bool)

(assert (=> (and b!1341817 (= (toChars!3475 (transformation!2373 (h!19093 (t!119489 rules!2550)))) (toChars!3475 (transformation!2373 (rule!4118 t2!34)))) t!119526) tb!70623))

(declare-fun result!85840 () Bool)

(assert (= result!85840 result!85826))

(assert (=> b!1341766 t!119526))

(assert (=> d!378635 t!119526))

(declare-fun tp!388501 () Bool)

(declare-fun b_and!89765 () Bool)

(assert (=> b!1341817 (= tp!388501 (and (=> t!119524 result!85838) (=> t!119526 result!85840) b_and!89765))))

(declare-fun e!859252 () Bool)

(assert (=> b!1341817 (= e!859252 (and tp!388500 tp!388501))))

(declare-fun tp!388498 () Bool)

(declare-fun b!1341816 () Bool)

(declare-fun e!859254 () Bool)

(assert (=> b!1341816 (= e!859254 (and tp!388498 (inv!18029 (tag!2635 (h!19093 (t!119489 rules!2550)))) (inv!18033 (transformation!2373 (h!19093 (t!119489 rules!2550)))) e!859252))))

(declare-fun b!1341815 () Bool)

(declare-fun e!859251 () Bool)

(declare-fun tp!388499 () Bool)

(assert (=> b!1341815 (= e!859251 (and e!859254 tp!388499))))

(assert (=> b!1341511 (= tp!388410 e!859251)))

(assert (= b!1341816 b!1341817))

(assert (= b!1341815 b!1341816))

(assert (= (and b!1341511 ((_ is Cons!13692) (t!119489 rules!2550))) b!1341815))

(declare-fun m!1500443 () Bool)

(assert (=> b!1341816 m!1500443))

(declare-fun m!1500445 () Bool)

(assert (=> b!1341816 m!1500445))

(declare-fun b!1341818 () Bool)

(declare-fun e!859255 () Bool)

(declare-fun tp!388502 () Bool)

(assert (=> b!1341818 (= e!859255 (and tp_is_empty!6691 tp!388502))))

(assert (=> b!1341507 (= tp!388412 e!859255)))

(assert (= (and b!1341507 ((_ is Cons!13691) (originalCharacters!3235 t2!34))) b!1341818))

(declare-fun b_lambda!39669 () Bool)

(assert (= b_lambda!39649 (or b!1341502 b_lambda!39669)))

(declare-fun bs!332384 () Bool)

(declare-fun d!378637 () Bool)

(assert (= bs!332384 (and d!378637 b!1341502)))

(declare-fun res!604502 () Bool)

(declare-fun e!859256 () Bool)

(assert (=> bs!332384 (=> (not res!604502) (not e!859256))))

(declare-fun matchR!1680 (Regex!3687 List!13757) Bool)

(assert (=> bs!332384 (= res!604502 (matchR!1680 lt!443845 lt!443890))))

(assert (=> bs!332384 (= (dynLambda!6047 lambda!56211 lt!443890) e!859256)))

(declare-fun b!1341819 () Bool)

(declare-fun isPrefix!1101 (List!13757 List!13757) Bool)

(assert (=> b!1341819 (= e!859256 (isPrefix!1101 lt!443843 lt!443890))))

(assert (= (and bs!332384 res!604502) b!1341819))

(declare-fun m!1500447 () Bool)

(assert (=> bs!332384 m!1500447))

(declare-fun m!1500449 () Bool)

(assert (=> b!1341819 m!1500449))

(assert (=> d!378545 d!378637))

(declare-fun b_lambda!39671 () Bool)

(assert (= b_lambda!39665 (or (and b!1341509 b_free!32661) (and b!1341515 b_free!32665 (= (toChars!3475 (transformation!2373 (h!19093 rules!2550))) (toChars!3475 (transformation!2373 (rule!4118 t2!34))))) (and b!1341518 b_free!32669 (= (toChars!3475 (transformation!2373 (rule!4118 t1!34))) (toChars!3475 (transformation!2373 (rule!4118 t2!34))))) (and b!1341817 b_free!32677 (= (toChars!3475 (transformation!2373 (h!19093 (t!119489 rules!2550)))) (toChars!3475 (transformation!2373 (rule!4118 t2!34))))) b_lambda!39671)))

(declare-fun b_lambda!39673 () Bool)

(assert (= b_lambda!39663 (or (and b!1341509 b_free!32661 (= (toChars!3475 (transformation!2373 (rule!4118 t2!34))) (toChars!3475 (transformation!2373 (rule!4118 t1!34))))) (and b!1341515 b_free!32665 (= (toChars!3475 (transformation!2373 (h!19093 rules!2550))) (toChars!3475 (transformation!2373 (rule!4118 t1!34))))) (and b!1341518 b_free!32669) (and b!1341817 b_free!32677 (= (toChars!3475 (transformation!2373 (h!19093 (t!119489 rules!2550)))) (toChars!3475 (transformation!2373 (rule!4118 t1!34))))) b_lambda!39673)))

(declare-fun b_lambda!39675 () Bool)

(assert (= b_lambda!39667 (or (and b!1341509 b_free!32661) (and b!1341515 b_free!32665 (= (toChars!3475 (transformation!2373 (h!19093 rules!2550))) (toChars!3475 (transformation!2373 (rule!4118 t2!34))))) (and b!1341518 b_free!32669 (= (toChars!3475 (transformation!2373 (rule!4118 t1!34))) (toChars!3475 (transformation!2373 (rule!4118 t2!34))))) (and b!1341817 b_free!32677 (= (toChars!3475 (transformation!2373 (h!19093 (t!119489 rules!2550)))) (toChars!3475 (transformation!2373 (rule!4118 t2!34))))) b_lambda!39675)))

(declare-fun b_lambda!39677 () Bool)

(assert (= b_lambda!39651 (or (and b!1341509 b_free!32661 (= (toChars!3475 (transformation!2373 (rule!4118 t2!34))) (toChars!3475 (transformation!2373 (rule!4118 t1!34))))) (and b!1341515 b_free!32665 (= (toChars!3475 (transformation!2373 (h!19093 rules!2550))) (toChars!3475 (transformation!2373 (rule!4118 t1!34))))) (and b!1341518 b_free!32669) (and b!1341817 b_free!32677 (= (toChars!3475 (transformation!2373 (h!19093 (t!119489 rules!2550)))) (toChars!3475 (transformation!2373 (rule!4118 t1!34))))) b_lambda!39677)))

(check-sat (not d!378519) (not b_next!33367) (not b!1341742) (not tb!70615) (not d!378545) (not b!1341748) (not b!1341634) (not b!1341818) (not b_next!33363) (not b!1341755) (not b_lambda!39675) (not d!378613) (not b!1341797) (not d!378611) (not b!1341765) (not b!1341796) (not b!1341769) (not b!1341731) (not b!1341772) (not b!1341566) (not b!1341759) (not b!1341743) (not b!1341577) b_and!89761 (not b!1341768) (not d!378625) (not b_next!33381) (not b_next!33369) (not b!1341624) (not b!1341749) (not b!1341815) (not b_next!33373) (not d!378511) (not d!378557) (not b!1341764) (not b!1341758) (not d!378621) (not b!1341792) (not d!378605) (not bs!332384) (not b!1341618) (not b!1341791) (not d!378631) (not tb!70605) (not d!378559) (not b!1341800) (not d!378553) (not b!1341617) (not d!378529) (not d!378547) (not b!1341628) (not b!1341766) (not d!378609) (not b!1341641) (not b_next!33379) b_and!89757 (not b!1341801) (not d!378541) (not b_next!33365) (not d!378549) (not d!378617) (not b!1341751) b_and!89703 (not d!378555) (not d!378551) (not b!1341775) (not b!1341773) (not b!1341627) b_and!89699 (not b!1341640) (not b!1341744) (not d!378627) b_and!89765 (not b!1341793) b_and!89763 (not b!1341750) (not b!1341774) b_and!89707 (not d!378619) (not b!1341779) (not b_lambda!39673) (not b_lambda!39677) (not b!1341725) (not d!378597) tp_is_empty!6691 (not b_next!33371) (not d!378633) (not b!1341724) (not b!1341819) (not d!378601) (not b!1341635) (not b_lambda!39671) (not b!1341795) b_and!89759 (not b!1341806) (not b_lambda!39669) (not d!378629) (not b!1341730) (not d!378635) (not b!1341816) (not b!1341723) (not b!1341767) (not b!1341799))
(check-sat (not b_next!33363) b_and!89761 (not b_next!33373) (not b_next!33367) (not b_next!33365) b_and!89703 b_and!89699 b_and!89765 (not b_next!33371) b_and!89759 (not b_next!33381) (not b_next!33369) (not b_next!33379) b_and!89757 b_and!89763 b_and!89707)

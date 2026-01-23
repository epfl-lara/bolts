; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376500 () Bool)

(assert start!376500)

(declare-fun b!4000457 () Bool)

(declare-fun b_free!111137 () Bool)

(declare-fun b_next!111841 () Bool)

(assert (=> b!4000457 (= b_free!111137 (not b_next!111841))))

(declare-fun tp!1217340 () Bool)

(declare-fun b_and!307167 () Bool)

(assert (=> b!4000457 (= tp!1217340 b_and!307167)))

(declare-fun b_free!111139 () Bool)

(declare-fun b_next!111843 () Bool)

(assert (=> b!4000457 (= b_free!111139 (not b_next!111843))))

(declare-fun tp!1217342 () Bool)

(declare-fun b_and!307169 () Bool)

(assert (=> b!4000457 (= tp!1217342 b_and!307169)))

(declare-fun b!4000469 () Bool)

(declare-fun b_free!111141 () Bool)

(declare-fun b_next!111845 () Bool)

(assert (=> b!4000469 (= b_free!111141 (not b_next!111845))))

(declare-fun tp!1217338 () Bool)

(declare-fun b_and!307171 () Bool)

(assert (=> b!4000469 (= tp!1217338 b_and!307171)))

(declare-fun b_free!111143 () Bool)

(declare-fun b_next!111847 () Bool)

(assert (=> b!4000469 (= b_free!111143 (not b_next!111847))))

(declare-fun tp!1217339 () Bool)

(declare-fun b_and!307173 () Bool)

(assert (=> b!4000469 (= tp!1217339 b_and!307173)))

(declare-fun b!4000450 () Bool)

(declare-fun e!2480451 () Bool)

(declare-fun e!2480429 () Bool)

(assert (=> b!4000450 (= e!2480451 e!2480429)))

(declare-fun res!1625312 () Bool)

(assert (=> b!4000450 (=> res!1625312 e!2480429)))

(declare-datatypes ((C!23568 0))(
  ( (C!23569 (val!13878 Int)) )
))
(declare-datatypes ((List!42910 0))(
  ( (Nil!42786) (Cons!42786 (h!48206 C!23568) (t!332189 List!42910)) )
))
(declare-fun lt!1414448 () List!42910)

(declare-fun prefix!494 () List!42910)

(assert (=> b!4000450 (= res!1625312 (not (= lt!1414448 prefix!494)))))

(declare-fun lt!1414461 () List!42910)

(declare-fun lt!1414452 () List!42910)

(declare-fun ++!11188 (List!42910 List!42910) List!42910)

(assert (=> b!4000450 (= lt!1414448 (++!11188 lt!1414461 lt!1414452))))

(declare-fun getSuffix!2304 (List!42910 List!42910) List!42910)

(assert (=> b!4000450 (= lt!1414452 (getSuffix!2304 prefix!494 lt!1414461))))

(declare-fun isPrefix!3873 (List!42910 List!42910) Bool)

(assert (=> b!4000450 (isPrefix!3873 lt!1414461 prefix!494)))

(declare-fun lt!1414471 () List!42910)

(declare-datatypes ((Unit!61775 0))(
  ( (Unit!61776) )
))
(declare-fun lt!1414468 () Unit!61775)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!451 (List!42910 List!42910 List!42910) Unit!61775)

(assert (=> b!4000450 (= lt!1414468 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!451 prefix!494 lt!1414461 lt!1414471))))

(declare-fun b!4000452 () Bool)

(declare-fun e!2480442 () Bool)

(declare-fun tp_is_empty!20353 () Bool)

(declare-fun tp!1217332 () Bool)

(assert (=> b!4000452 (= e!2480442 (and tp_is_empty!20353 tp!1217332))))

(declare-fun b!4000453 () Bool)

(declare-fun e!2480438 () Bool)

(declare-fun e!2480436 () Bool)

(assert (=> b!4000453 (= e!2480438 e!2480436)))

(declare-fun res!1625314 () Bool)

(assert (=> b!4000453 (=> res!1625314 e!2480436)))

(declare-fun lt!1414472 () List!42910)

(declare-datatypes ((LexerInterface!6375 0))(
  ( (LexerInterfaceExt!6372 (__x!26249 Int)) (Lexer!6373) )
))
(declare-fun thiss!21717 () LexerInterface!6375)

(declare-datatypes ((IArray!25999 0))(
  ( (IArray!26000 (innerList!13057 List!42910)) )
))
(declare-datatypes ((Conc!12997 0))(
  ( (Node!12997 (left!32304 Conc!12997) (right!32634 Conc!12997) (csize!26224 Int) (cheight!13208 Int)) (Leaf!20097 (xs!16303 IArray!25999) (csize!26225 Int)) (Empty!12997) )
))
(declare-datatypes ((BalanceConc!25588 0))(
  ( (BalanceConc!25589 (c!691962 Conc!12997)) )
))
(declare-datatypes ((List!42911 0))(
  ( (Nil!42787) (Cons!42787 (h!48207 (_ BitVec 16)) (t!332190 List!42911)) )
))
(declare-datatypes ((TokenValue!7016 0))(
  ( (FloatLiteralValue!14032 (text!49557 List!42911)) (TokenValueExt!7015 (__x!26250 Int)) (Broken!35080 (value!214009 List!42911)) (Object!7139) (End!7016) (Def!7016) (Underscore!7016) (Match!7016) (Else!7016) (Error!7016) (Case!7016) (If!7016) (Extends!7016) (Abstract!7016) (Class!7016) (Val!7016) (DelimiterValue!14032 (del!7076 List!42911)) (KeywordValue!7022 (value!214010 List!42911)) (CommentValue!14032 (value!214011 List!42911)) (WhitespaceValue!14032 (value!214012 List!42911)) (IndentationValue!7016 (value!214013 List!42911)) (String!48797) (Int32!7016) (Broken!35081 (value!214014 List!42911)) (Boolean!7017) (Unit!61777) (OperatorValue!7019 (op!7076 List!42911)) (IdentifierValue!14032 (value!214015 List!42911)) (IdentifierValue!14033 (value!214016 List!42911)) (WhitespaceValue!14033 (value!214017 List!42911)) (True!14032) (False!14032) (Broken!35082 (value!214018 List!42911)) (Broken!35083 (value!214019 List!42911)) (True!14033) (RightBrace!7016) (RightBracket!7016) (Colon!7016) (Null!7016) (Comma!7016) (LeftBracket!7016) (False!14033) (LeftBrace!7016) (ImaginaryLiteralValue!7016 (text!49558 List!42911)) (StringLiteralValue!21048 (value!214020 List!42911)) (EOFValue!7016 (value!214021 List!42911)) (IdentValue!7016 (value!214022 List!42911)) (DelimiterValue!14033 (value!214023 List!42911)) (DedentValue!7016 (value!214024 List!42911)) (NewLineValue!7016 (value!214025 List!42911)) (IntegerValue!21048 (value!214026 (_ BitVec 32)) (text!49559 List!42911)) (IntegerValue!21049 (value!214027 Int) (text!49560 List!42911)) (Times!7016) (Or!7016) (Equal!7016) (Minus!7016) (Broken!35084 (value!214028 List!42911)) (And!7016) (Div!7016) (LessEqual!7016) (Mod!7016) (Concat!18707) (Not!7016) (Plus!7016) (SpaceValue!7016 (value!214029 List!42911)) (IntegerValue!21050 (value!214030 Int) (text!49561 List!42911)) (StringLiteralValue!21049 (text!49562 List!42911)) (FloatLiteralValue!14033 (text!49563 List!42911)) (BytesLiteralValue!7016 (value!214031 List!42911)) (CommentValue!14033 (value!214032 List!42911)) (StringLiteralValue!21050 (value!214033 List!42911)) (ErrorTokenValue!7016 (msg!7077 List!42911)) )
))
(declare-datatypes ((Regex!11691 0))(
  ( (ElementMatch!11691 (c!691963 C!23568)) (Concat!18708 (regOne!23894 Regex!11691) (regTwo!23894 Regex!11691)) (EmptyExpr!11691) (Star!11691 (reg!12020 Regex!11691)) (EmptyLang!11691) (Union!11691 (regOne!23895 Regex!11691) (regTwo!23895 Regex!11691)) )
))
(declare-datatypes ((String!48798 0))(
  ( (String!48799 (value!214034 String)) )
))
(declare-datatypes ((TokenValueInjection!13460 0))(
  ( (TokenValueInjection!13461 (toValue!9274 Int) (toChars!9133 Int)) )
))
(declare-datatypes ((Rule!13372 0))(
  ( (Rule!13373 (regex!6786 Regex!11691) (tag!7646 String!48798) (isSeparator!6786 Bool) (transformation!6786 TokenValueInjection!13460)) )
))
(declare-datatypes ((List!42912 0))(
  ( (Nil!42788) (Cons!42788 (h!48208 Rule!13372) (t!332191 List!42912)) )
))
(declare-fun rules!2999 () List!42912)

(get-info :version)

(declare-datatypes ((Token!12710 0))(
  ( (Token!12711 (value!214035 TokenValue!7016) (rule!9818 Rule!13372) (size!31995 Int) (originalCharacters!7386 List!42910)) )
))
(declare-datatypes ((tuple2!41970 0))(
  ( (tuple2!41971 (_1!24119 Token!12710) (_2!24119 List!42910)) )
))
(declare-datatypes ((Option!9200 0))(
  ( (None!9199) (Some!9199 (v!39559 tuple2!41970)) )
))
(declare-fun maxPrefix!3673 (LexerInterface!6375 List!42912 List!42910) Option!9200)

(assert (=> b!4000453 (= res!1625314 ((_ is Some!9199) (maxPrefix!3673 thiss!21717 rules!2999 lt!1414472)))))

(declare-fun suffixResult!105 () List!42910)

(declare-fun lt!1414441 () List!42910)

(declare-fun lt!1414460 () tuple2!41970)

(declare-fun lt!1414447 () Token!12710)

(assert (=> b!4000453 (and (= suffixResult!105 lt!1414441) (= lt!1414460 (tuple2!41971 lt!1414447 lt!1414441)))))

(declare-fun lt!1414449 () Unit!61775)

(declare-fun lemmaSamePrefixThenSameSuffix!2060 (List!42910 List!42910 List!42910 List!42910 List!42910) Unit!61775)

(assert (=> b!4000453 (= lt!1414449 (lemmaSamePrefixThenSameSuffix!2060 lt!1414461 suffixResult!105 lt!1414461 lt!1414441 lt!1414471))))

(declare-fun lt!1414458 () List!42910)

(assert (=> b!4000453 (isPrefix!3873 lt!1414461 lt!1414458)))

(declare-fun lt!1414466 () Unit!61775)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2716 (List!42910 List!42910) Unit!61775)

(assert (=> b!4000453 (= lt!1414466 (lemmaConcatTwoListThenFirstIsPrefix!2716 lt!1414461 lt!1414441))))

(declare-fun b!4000454 () Bool)

(declare-fun res!1625306 () Bool)

(assert (=> b!4000454 (=> res!1625306 e!2480436)))

(declare-fun rulesValidInductive!2475 (LexerInterface!6375 List!42912) Bool)

(assert (=> b!4000454 (= res!1625306 (not (rulesValidInductive!2475 thiss!21717 rules!2999)))))

(declare-fun b!4000455 () Bool)

(declare-fun e!2480452 () Bool)

(declare-fun e!2480433 () Bool)

(assert (=> b!4000455 (= e!2480452 e!2480433)))

(declare-fun res!1625308 () Bool)

(assert (=> b!4000455 (=> res!1625308 e!2480433)))

(declare-fun lt!1414459 () Option!9200)

(declare-fun lt!1414457 () Option!9200)

(assert (=> b!4000455 (= res!1625308 (not (= lt!1414459 lt!1414457)))))

(assert (=> b!4000455 (= lt!1414459 (Some!9199 (tuple2!41971 lt!1414447 suffixResult!105)))))

(declare-fun token!484 () Token!12710)

(declare-fun maxPrefixOneRule!2707 (LexerInterface!6375 Rule!13372 List!42910) Option!9200)

(assert (=> b!4000455 (= lt!1414459 (maxPrefixOneRule!2707 thiss!21717 (rule!9818 token!484) lt!1414471))))

(declare-fun lt!1414465 () TokenValue!7016)

(declare-fun lt!1414443 () Int)

(assert (=> b!4000455 (= lt!1414447 (Token!12711 lt!1414465 (rule!9818 token!484) lt!1414443 lt!1414461))))

(declare-fun apply!9997 (TokenValueInjection!13460 BalanceConc!25588) TokenValue!7016)

(declare-fun seqFromList!5025 (List!42910) BalanceConc!25588)

(assert (=> b!4000455 (= lt!1414465 (apply!9997 (transformation!6786 (rule!9818 token!484)) (seqFromList!5025 lt!1414461)))))

(declare-fun lt!1414455 () Unit!61775)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1529 (LexerInterface!6375 List!42912 List!42910 List!42910 List!42910 Rule!13372) Unit!61775)

(assert (=> b!4000455 (= lt!1414455 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1529 thiss!21717 rules!2999 lt!1414461 lt!1414471 suffixResult!105 (rule!9818 token!484)))))

(declare-fun lt!1414454 () List!42910)

(assert (=> b!4000455 (= lt!1414454 suffixResult!105)))

(declare-fun lt!1414442 () Unit!61775)

(assert (=> b!4000455 (= lt!1414442 (lemmaSamePrefixThenSameSuffix!2060 lt!1414461 lt!1414454 lt!1414461 suffixResult!105 lt!1414471))))

(declare-fun lt!1414456 () List!42910)

(assert (=> b!4000455 (isPrefix!3873 lt!1414461 lt!1414456)))

(declare-fun lt!1414440 () Unit!61775)

(assert (=> b!4000455 (= lt!1414440 (lemmaConcatTwoListThenFirstIsPrefix!2716 lt!1414461 lt!1414454))))

(declare-fun b!4000456 () Bool)

(declare-fun e!2480446 () Bool)

(declare-fun e!2480450 () Bool)

(assert (=> b!4000456 (= e!2480446 e!2480450)))

(declare-fun res!1625311 () Bool)

(assert (=> b!4000456 (=> (not res!1625311) (not e!2480450))))

(declare-fun lt!1414462 () Int)

(assert (=> b!4000456 (= res!1625311 (>= lt!1414462 lt!1414443))))

(declare-fun size!31996 (List!42910) Int)

(assert (=> b!4000456 (= lt!1414443 (size!31996 lt!1414461))))

(assert (=> b!4000456 (= lt!1414462 (size!31996 prefix!494))))

(declare-fun list!15890 (BalanceConc!25588) List!42910)

(declare-fun charsOf!4602 (Token!12710) BalanceConc!25588)

(assert (=> b!4000456 (= lt!1414461 (list!15890 (charsOf!4602 token!484)))))

(declare-fun e!2480444 () Bool)

(assert (=> b!4000457 (= e!2480444 (and tp!1217340 tp!1217342))))

(declare-fun b!4000458 () Bool)

(declare-fun e!2480434 () Bool)

(assert (=> b!4000458 (= e!2480434 e!2480451)))

(declare-fun res!1625313 () Bool)

(assert (=> b!4000458 (=> res!1625313 e!2480451)))

(assert (=> b!4000458 (= res!1625313 (not (isPrefix!3873 lt!1414461 lt!1414471)))))

(assert (=> b!4000458 (isPrefix!3873 prefix!494 lt!1414471)))

(declare-fun lt!1414450 () Unit!61775)

(declare-fun suffix!1299 () List!42910)

(assert (=> b!4000458 (= lt!1414450 (lemmaConcatTwoListThenFirstIsPrefix!2716 prefix!494 suffix!1299))))

(declare-fun lt!1414463 () List!42910)

(assert (=> b!4000458 (isPrefix!3873 lt!1414461 lt!1414463)))

(declare-fun lt!1414473 () Unit!61775)

(assert (=> b!4000458 (= lt!1414473 (lemmaConcatTwoListThenFirstIsPrefix!2716 lt!1414461 suffixResult!105))))

(declare-fun b!4000459 () Bool)

(declare-fun e!2480432 () Bool)

(declare-fun tp!1217330 () Bool)

(assert (=> b!4000459 (= e!2480432 (and tp_is_empty!20353 tp!1217330))))

(declare-fun b!4000460 () Bool)

(declare-fun res!1625307 () Bool)

(assert (=> b!4000460 (=> (not res!1625307) (not e!2480446))))

(declare-fun rulesInvariant!5718 (LexerInterface!6375 List!42912) Bool)

(assert (=> b!4000460 (= res!1625307 (rulesInvariant!5718 thiss!21717 rules!2999))))

(declare-fun b!4000461 () Bool)

(declare-fun e!2480454 () Bool)

(assert (=> b!4000461 (= e!2480433 e!2480454)))

(declare-fun res!1625315 () Bool)

(assert (=> b!4000461 (=> res!1625315 e!2480454)))

(declare-fun matchR!5668 (Regex!11691 List!42910) Bool)

(assert (=> b!4000461 (= res!1625315 (not (matchR!5668 (regex!6786 (rule!9818 token!484)) lt!1414461)))))

(assert (=> b!4000461 (isPrefix!3873 lt!1414461 lt!1414472)))

(declare-fun newSuffix!27 () List!42910)

(declare-fun lt!1414464 () Unit!61775)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!706 (List!42910 List!42910 List!42910) Unit!61775)

(assert (=> b!4000461 (= lt!1414464 (lemmaPrefixStaysPrefixWhenAddingToSuffix!706 lt!1414461 prefix!494 newSuffix!27))))

(declare-fun lt!1414445 () Unit!61775)

(assert (=> b!4000461 (= lt!1414445 (lemmaPrefixStaysPrefixWhenAddingToSuffix!706 lt!1414461 prefix!494 suffix!1299))))

(declare-fun b!4000451 () Bool)

(assert (=> b!4000451 (= e!2480429 e!2480452)))

(declare-fun res!1625319 () Bool)

(assert (=> b!4000451 (=> res!1625319 e!2480452)))

(declare-fun lt!1414451 () List!42910)

(assert (=> b!4000451 (= res!1625319 (or (not (= lt!1414471 lt!1414451)) (not (= lt!1414471 lt!1414456))))))

(assert (=> b!4000451 (= lt!1414451 lt!1414456)))

(assert (=> b!4000451 (= lt!1414456 (++!11188 lt!1414461 lt!1414454))))

(assert (=> b!4000451 (= lt!1414451 (++!11188 lt!1414448 suffix!1299))))

(assert (=> b!4000451 (= lt!1414454 (++!11188 lt!1414452 suffix!1299))))

(declare-fun lt!1414470 () Unit!61775)

(declare-fun lemmaConcatAssociativity!2508 (List!42910 List!42910 List!42910) Unit!61775)

(assert (=> b!4000451 (= lt!1414470 (lemmaConcatAssociativity!2508 lt!1414461 lt!1414452 suffix!1299))))

(declare-fun res!1625321 () Bool)

(assert (=> start!376500 (=> (not res!1625321) (not e!2480446))))

(assert (=> start!376500 (= res!1625321 ((_ is Lexer!6373) thiss!21717))))

(assert (=> start!376500 e!2480446))

(declare-fun e!2480443 () Bool)

(assert (=> start!376500 e!2480443))

(declare-fun e!2480447 () Bool)

(declare-fun inv!57142 (Token!12710) Bool)

(assert (=> start!376500 (and (inv!57142 token!484) e!2480447)))

(assert (=> start!376500 e!2480442))

(declare-fun e!2480435 () Bool)

(assert (=> start!376500 e!2480435))

(declare-fun e!2480448 () Bool)

(assert (=> start!376500 e!2480448))

(assert (=> start!376500 true))

(declare-fun e!2480439 () Bool)

(assert (=> start!376500 e!2480439))

(assert (=> start!376500 e!2480432))

(declare-fun b!4000462 () Bool)

(declare-fun res!1625305 () Bool)

(assert (=> b!4000462 (=> (not res!1625305) (not e!2480446))))

(declare-fun isEmpty!25570 (List!42912) Bool)

(assert (=> b!4000462 (= res!1625305 (not (isEmpty!25570 rules!2999)))))

(declare-fun b!4000463 () Bool)

(declare-fun e!2480428 () Bool)

(declare-fun e!2480430 () Bool)

(assert (=> b!4000463 (= e!2480428 e!2480430)))

(declare-fun res!1625309 () Bool)

(assert (=> b!4000463 (=> (not res!1625309) (not e!2480430))))

(assert (=> b!4000463 (= res!1625309 (= (maxPrefix!3673 thiss!21717 rules!2999 lt!1414471) lt!1414457))))

(assert (=> b!4000463 (= lt!1414457 (Some!9199 lt!1414460))))

(assert (=> b!4000463 (= lt!1414460 (tuple2!41971 token!484 suffixResult!105))))

(assert (=> b!4000463 (= lt!1414471 (++!11188 prefix!494 suffix!1299))))

(declare-fun b!4000464 () Bool)

(declare-fun e!2480431 () Bool)

(declare-fun tp!1217335 () Bool)

(assert (=> b!4000464 (= e!2480439 (and e!2480431 tp!1217335))))

(declare-fun b!4000465 () Bool)

(declare-fun res!1625316 () Bool)

(assert (=> b!4000465 (=> (not res!1625316) (not e!2480446))))

(assert (=> b!4000465 (= res!1625316 (isPrefix!3873 newSuffix!27 suffix!1299))))

(declare-fun b!4000466 () Bool)

(declare-fun tp!1217341 () Bool)

(declare-fun inv!57139 (String!48798) Bool)

(declare-fun inv!57143 (TokenValueInjection!13460) Bool)

(assert (=> b!4000466 (= e!2480431 (and tp!1217341 (inv!57139 (tag!7646 (h!48208 rules!2999))) (inv!57143 (transformation!6786 (h!48208 rules!2999))) e!2480444))))

(declare-fun b!4000467 () Bool)

(assert (=> b!4000467 (= e!2480454 e!2480438)))

(declare-fun res!1625303 () Bool)

(assert (=> b!4000467 (=> res!1625303 e!2480438)))

(assert (=> b!4000467 (= res!1625303 (not (= lt!1414458 lt!1414471)))))

(assert (=> b!4000467 (= lt!1414458 (++!11188 lt!1414461 lt!1414441))))

(assert (=> b!4000467 (= lt!1414441 (getSuffix!2304 lt!1414471 lt!1414461))))

(declare-fun e!2480440 () Bool)

(assert (=> b!4000467 e!2480440))

(declare-fun res!1625320 () Bool)

(assert (=> b!4000467 (=> (not res!1625320) (not e!2480440))))

(assert (=> b!4000467 (= res!1625320 (isPrefix!3873 lt!1414471 lt!1414471))))

(declare-fun lt!1414453 () Unit!61775)

(declare-fun lemmaIsPrefixRefl!2465 (List!42910 List!42910) Unit!61775)

(assert (=> b!4000467 (= lt!1414453 (lemmaIsPrefixRefl!2465 lt!1414471 lt!1414471))))

(declare-fun b!4000468 () Bool)

(assert (=> b!4000468 (= e!2480430 (not e!2480434))))

(declare-fun res!1625322 () Bool)

(assert (=> b!4000468 (=> res!1625322 e!2480434)))

(assert (=> b!4000468 (= res!1625322 (not (= lt!1414463 lt!1414471)))))

(assert (=> b!4000468 (= lt!1414463 (++!11188 lt!1414461 suffixResult!105))))

(declare-fun lt!1414444 () Unit!61775)

(declare-fun lemmaInv!1001 (TokenValueInjection!13460) Unit!61775)

(assert (=> b!4000468 (= lt!1414444 (lemmaInv!1001 (transformation!6786 (rule!9818 token!484))))))

(declare-fun ruleValid!2718 (LexerInterface!6375 Rule!13372) Bool)

(assert (=> b!4000468 (ruleValid!2718 thiss!21717 (rule!9818 token!484))))

(declare-fun lt!1414469 () Unit!61775)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1792 (LexerInterface!6375 Rule!13372 List!42912) Unit!61775)

(assert (=> b!4000468 (= lt!1414469 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1792 thiss!21717 (rule!9818 token!484) rules!2999))))

(declare-fun e!2480445 () Bool)

(assert (=> b!4000469 (= e!2480445 (and tp!1217338 tp!1217339))))

(declare-fun b!4000470 () Bool)

(declare-fun tp!1217334 () Bool)

(assert (=> b!4000470 (= e!2480448 (and tp_is_empty!20353 tp!1217334))))

(declare-fun b!4000471 () Bool)

(declare-fun tp!1217336 () Bool)

(assert (=> b!4000471 (= e!2480443 (and tp_is_empty!20353 tp!1217336))))

(declare-fun e!2480441 () Bool)

(declare-fun tp!1217331 () Bool)

(declare-fun b!4000472 () Bool)

(assert (=> b!4000472 (= e!2480441 (and tp!1217331 (inv!57139 (tag!7646 (rule!9818 token!484))) (inv!57143 (transformation!6786 (rule!9818 token!484))) e!2480445))))

(declare-fun b!4000473 () Bool)

(declare-fun res!1625304 () Bool)

(assert (=> b!4000473 (=> (not res!1625304) (not e!2480440))))

(assert (=> b!4000473 (= res!1625304 (= (size!31995 token!484) (size!31996 (originalCharacters!7386 token!484))))))

(declare-fun b!4000474 () Bool)

(declare-fun tp!1217337 () Bool)

(assert (=> b!4000474 (= e!2480435 (and tp_is_empty!20353 tp!1217337))))

(declare-fun b!4000475 () Bool)

(assert (=> b!4000475 (= e!2480450 e!2480428)))

(declare-fun res!1625317 () Bool)

(assert (=> b!4000475 (=> (not res!1625317) (not e!2480428))))

(declare-fun lt!1414467 () List!42910)

(assert (=> b!4000475 (= res!1625317 (= lt!1414467 lt!1414472))))

(assert (=> b!4000475 (= lt!1414472 (++!11188 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42910)

(assert (=> b!4000475 (= lt!1414467 (++!11188 lt!1414461 newSuffixResult!27))))

(declare-fun b!4000476 () Bool)

(declare-fun tp!1217333 () Bool)

(declare-fun inv!21 (TokenValue!7016) Bool)

(assert (=> b!4000476 (= e!2480447 (and (inv!21 (value!214035 token!484)) e!2480441 tp!1217333))))

(declare-fun b!4000477 () Bool)

(assert (=> b!4000477 (= e!2480436 true)))

(declare-fun lt!1414446 () Bool)

(declare-fun contains!8513 (List!42912 Rule!13372) Bool)

(assert (=> b!4000477 (= lt!1414446 (contains!8513 rules!2999 (rule!9818 token!484)))))

(declare-fun b!4000478 () Bool)

(declare-fun res!1625318 () Bool)

(assert (=> b!4000478 (=> (not res!1625318) (not e!2480446))))

(assert (=> b!4000478 (= res!1625318 (>= (size!31996 suffix!1299) (size!31996 newSuffix!27)))))

(declare-fun b!4000479 () Bool)

(declare-fun res!1625310 () Bool)

(assert (=> b!4000479 (=> (not res!1625310) (not e!2480440))))

(assert (=> b!4000479 (= res!1625310 (= (value!214035 token!484) lt!1414465))))

(declare-fun b!4000480 () Bool)

(assert (=> b!4000480 (= e!2480440 (and (= (size!31995 token!484) lt!1414443) (= (originalCharacters!7386 token!484) lt!1414461)))))

(assert (= (and start!376500 res!1625321) b!4000462))

(assert (= (and b!4000462 res!1625305) b!4000460))

(assert (= (and b!4000460 res!1625307) b!4000478))

(assert (= (and b!4000478 res!1625318) b!4000465))

(assert (= (and b!4000465 res!1625316) b!4000456))

(assert (= (and b!4000456 res!1625311) b!4000475))

(assert (= (and b!4000475 res!1625317) b!4000463))

(assert (= (and b!4000463 res!1625309) b!4000468))

(assert (= (and b!4000468 (not res!1625322)) b!4000458))

(assert (= (and b!4000458 (not res!1625313)) b!4000450))

(assert (= (and b!4000450 (not res!1625312)) b!4000451))

(assert (= (and b!4000451 (not res!1625319)) b!4000455))

(assert (= (and b!4000455 (not res!1625308)) b!4000461))

(assert (= (and b!4000461 (not res!1625315)) b!4000467))

(assert (= (and b!4000467 res!1625320) b!4000479))

(assert (= (and b!4000479 res!1625310) b!4000473))

(assert (= (and b!4000473 res!1625304) b!4000480))

(assert (= (and b!4000467 (not res!1625303)) b!4000453))

(assert (= (and b!4000453 (not res!1625314)) b!4000454))

(assert (= (and b!4000454 (not res!1625306)) b!4000477))

(assert (= (and start!376500 ((_ is Cons!42786) prefix!494)) b!4000471))

(assert (= b!4000472 b!4000469))

(assert (= b!4000476 b!4000472))

(assert (= start!376500 b!4000476))

(assert (= (and start!376500 ((_ is Cons!42786) suffixResult!105)) b!4000452))

(assert (= (and start!376500 ((_ is Cons!42786) suffix!1299)) b!4000474))

(assert (= (and start!376500 ((_ is Cons!42786) newSuffix!27)) b!4000470))

(assert (= b!4000466 b!4000457))

(assert (= b!4000464 b!4000466))

(assert (= (and start!376500 ((_ is Cons!42788) rules!2999)) b!4000464))

(assert (= (and start!376500 ((_ is Cons!42786) newSuffixResult!27)) b!4000459))

(declare-fun m!4582721 () Bool)

(assert (=> b!4000465 m!4582721))

(declare-fun m!4582723 () Bool)

(assert (=> b!4000467 m!4582723))

(declare-fun m!4582725 () Bool)

(assert (=> b!4000467 m!4582725))

(declare-fun m!4582727 () Bool)

(assert (=> b!4000467 m!4582727))

(declare-fun m!4582729 () Bool)

(assert (=> b!4000467 m!4582729))

(declare-fun m!4582731 () Bool)

(assert (=> b!4000468 m!4582731))

(declare-fun m!4582733 () Bool)

(assert (=> b!4000468 m!4582733))

(declare-fun m!4582735 () Bool)

(assert (=> b!4000468 m!4582735))

(declare-fun m!4582737 () Bool)

(assert (=> b!4000468 m!4582737))

(declare-fun m!4582739 () Bool)

(assert (=> b!4000475 m!4582739))

(declare-fun m!4582741 () Bool)

(assert (=> b!4000475 m!4582741))

(declare-fun m!4582743 () Bool)

(assert (=> b!4000477 m!4582743))

(declare-fun m!4582745 () Bool)

(assert (=> start!376500 m!4582745))

(declare-fun m!4582747 () Bool)

(assert (=> b!4000462 m!4582747))

(declare-fun m!4582749 () Bool)

(assert (=> b!4000466 m!4582749))

(declare-fun m!4582751 () Bool)

(assert (=> b!4000466 m!4582751))

(declare-fun m!4582753 () Bool)

(assert (=> b!4000473 m!4582753))

(declare-fun m!4582755 () Bool)

(assert (=> b!4000463 m!4582755))

(declare-fun m!4582757 () Bool)

(assert (=> b!4000463 m!4582757))

(declare-fun m!4582759 () Bool)

(assert (=> b!4000450 m!4582759))

(declare-fun m!4582761 () Bool)

(assert (=> b!4000450 m!4582761))

(declare-fun m!4582763 () Bool)

(assert (=> b!4000450 m!4582763))

(declare-fun m!4582765 () Bool)

(assert (=> b!4000450 m!4582765))

(declare-fun m!4582767 () Bool)

(assert (=> b!4000478 m!4582767))

(declare-fun m!4582769 () Bool)

(assert (=> b!4000478 m!4582769))

(declare-fun m!4582771 () Bool)

(assert (=> b!4000453 m!4582771))

(declare-fun m!4582773 () Bool)

(assert (=> b!4000453 m!4582773))

(declare-fun m!4582775 () Bool)

(assert (=> b!4000453 m!4582775))

(declare-fun m!4582777 () Bool)

(assert (=> b!4000453 m!4582777))

(declare-fun m!4582779 () Bool)

(assert (=> b!4000461 m!4582779))

(declare-fun m!4582781 () Bool)

(assert (=> b!4000461 m!4582781))

(declare-fun m!4582783 () Bool)

(assert (=> b!4000461 m!4582783))

(declare-fun m!4582785 () Bool)

(assert (=> b!4000461 m!4582785))

(declare-fun m!4582787 () Bool)

(assert (=> b!4000451 m!4582787))

(declare-fun m!4582789 () Bool)

(assert (=> b!4000451 m!4582789))

(declare-fun m!4582791 () Bool)

(assert (=> b!4000451 m!4582791))

(declare-fun m!4582793 () Bool)

(assert (=> b!4000451 m!4582793))

(declare-fun m!4582795 () Bool)

(assert (=> b!4000472 m!4582795))

(declare-fun m!4582797 () Bool)

(assert (=> b!4000472 m!4582797))

(declare-fun m!4582799 () Bool)

(assert (=> b!4000455 m!4582799))

(declare-fun m!4582801 () Bool)

(assert (=> b!4000455 m!4582801))

(declare-fun m!4582803 () Bool)

(assert (=> b!4000455 m!4582803))

(declare-fun m!4582805 () Bool)

(assert (=> b!4000455 m!4582805))

(declare-fun m!4582807 () Bool)

(assert (=> b!4000455 m!4582807))

(assert (=> b!4000455 m!4582805))

(declare-fun m!4582809 () Bool)

(assert (=> b!4000455 m!4582809))

(declare-fun m!4582811 () Bool)

(assert (=> b!4000455 m!4582811))

(declare-fun m!4582813 () Bool)

(assert (=> b!4000454 m!4582813))

(declare-fun m!4582815 () Bool)

(assert (=> b!4000476 m!4582815))

(declare-fun m!4582817 () Bool)

(assert (=> b!4000456 m!4582817))

(declare-fun m!4582819 () Bool)

(assert (=> b!4000456 m!4582819))

(declare-fun m!4582821 () Bool)

(assert (=> b!4000456 m!4582821))

(assert (=> b!4000456 m!4582821))

(declare-fun m!4582823 () Bool)

(assert (=> b!4000456 m!4582823))

(declare-fun m!4582825 () Bool)

(assert (=> b!4000460 m!4582825))

(declare-fun m!4582827 () Bool)

(assert (=> b!4000458 m!4582827))

(declare-fun m!4582829 () Bool)

(assert (=> b!4000458 m!4582829))

(declare-fun m!4582831 () Bool)

(assert (=> b!4000458 m!4582831))

(declare-fun m!4582833 () Bool)

(assert (=> b!4000458 m!4582833))

(declare-fun m!4582835 () Bool)

(assert (=> b!4000458 m!4582835))

(check-sat (not start!376500) (not b!4000462) b_and!307169 (not b!4000467) (not b!4000464) (not b!4000472) (not b!4000468) (not b!4000466) (not b!4000454) (not b!4000465) b_and!307167 (not b!4000476) (not b!4000459) (not b!4000474) (not b!4000456) (not b!4000478) (not b!4000453) (not b!4000463) (not b!4000452) (not b!4000451) (not b!4000475) (not b!4000473) (not b!4000450) tp_is_empty!20353 (not b!4000455) b_and!307171 (not b!4000477) (not b_next!111841) (not b_next!111847) (not b!4000460) (not b!4000470) (not b_next!111843) b_and!307173 (not b!4000471) (not b_next!111845) (not b!4000461) (not b!4000458))
(check-sat b_and!307167 b_and!307169 b_and!307171 (not b_next!111841) (not b_next!111847) (not b_next!111845) (not b_next!111843) b_and!307173)

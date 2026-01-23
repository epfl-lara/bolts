; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398246 () Bool)

(assert start!398246)

(declare-fun b!4177241 () Bool)

(declare-fun b_free!121255 () Bool)

(declare-fun b_next!121959 () Bool)

(assert (=> b!4177241 (= b_free!121255 (not b_next!121959))))

(declare-fun tp!1276596 () Bool)

(declare-fun b_and!326533 () Bool)

(assert (=> b!4177241 (= tp!1276596 b_and!326533)))

(declare-fun b_free!121257 () Bool)

(declare-fun b_next!121961 () Bool)

(assert (=> b!4177241 (= b_free!121257 (not b_next!121961))))

(declare-fun tp!1276607 () Bool)

(declare-fun b_and!326535 () Bool)

(assert (=> b!4177241 (= tp!1276607 b_and!326535)))

(declare-fun b!4177243 () Bool)

(declare-fun b_free!121259 () Bool)

(declare-fun b_next!121963 () Bool)

(assert (=> b!4177243 (= b_free!121259 (not b_next!121963))))

(declare-fun tp!1276601 () Bool)

(declare-fun b_and!326537 () Bool)

(assert (=> b!4177243 (= tp!1276601 b_and!326537)))

(declare-fun b_free!121261 () Bool)

(declare-fun b_next!121965 () Bool)

(assert (=> b!4177243 (= b_free!121261 (not b_next!121965))))

(declare-fun tp!1276608 () Bool)

(declare-fun b_and!326539 () Bool)

(assert (=> b!4177243 (= tp!1276608 b_and!326539)))

(declare-fun b!4177252 () Bool)

(declare-fun b_free!121263 () Bool)

(declare-fun b_next!121967 () Bool)

(assert (=> b!4177252 (= b_free!121263 (not b_next!121967))))

(declare-fun tp!1276604 () Bool)

(declare-fun b_and!326541 () Bool)

(assert (=> b!4177252 (= tp!1276604 b_and!326541)))

(declare-fun b_free!121265 () Bool)

(declare-fun b_next!121969 () Bool)

(assert (=> b!4177252 (= b_free!121265 (not b_next!121969))))

(declare-fun tp!1276606 () Bool)

(declare-fun b_and!326543 () Bool)

(assert (=> b!4177252 (= tp!1276606 b_and!326543)))

(declare-fun b!4177238 () Bool)

(declare-fun e!2593338 () Bool)

(declare-fun e!2593357 () Bool)

(assert (=> b!4177238 (= e!2593338 e!2593357)))

(declare-fun res!1712532 () Bool)

(assert (=> b!4177238 (=> res!1712532 e!2593357)))

(declare-fun lt!1487673 () Int)

(declare-fun lt!1487670 () Int)

(assert (=> b!4177238 (= res!1712532 (<= lt!1487673 lt!1487670))))

(declare-datatypes ((C!25240 0))(
  ( (C!25241 (val!14782 Int)) )
))
(declare-datatypes ((List!45965 0))(
  ( (Nil!45841) (Cons!45841 (h!51261 C!25240) (t!344774 List!45965)) )
))
(declare-fun pBis!107 () List!45965)

(declare-fun size!33656 (List!45965) Int)

(assert (=> b!4177238 (= lt!1487673 (size!33656 pBis!107))))

(declare-fun res!1712540 () Bool)

(declare-fun e!2593345 () Bool)

(assert (=> start!398246 (=> (not res!1712540) (not e!2593345))))

(declare-datatypes ((LexerInterface!7213 0))(
  ( (LexerInterfaceExt!7210 (__x!27921 Int)) (Lexer!7211) )
))
(declare-fun thiss!25986 () LexerInterface!7213)

(get-info :version)

(assert (=> start!398246 (= res!1712540 ((_ is Lexer!7211) thiss!25986))))

(assert (=> start!398246 e!2593345))

(assert (=> start!398246 true))

(declare-fun e!2593351 () Bool)

(assert (=> start!398246 e!2593351))

(declare-fun e!2593348 () Bool)

(assert (=> start!398246 e!2593348))

(declare-fun e!2593342 () Bool)

(assert (=> start!398246 e!2593342))

(declare-fun e!2593350 () Bool)

(assert (=> start!398246 e!2593350))

(declare-fun e!2593352 () Bool)

(assert (=> start!398246 e!2593352))

(declare-fun e!2593358 () Bool)

(assert (=> start!398246 e!2593358))

(declare-fun b!4177239 () Bool)

(declare-fun res!1712547 () Bool)

(assert (=> b!4177239 (=> (not res!1712547) (not e!2593345))))

(declare-datatypes ((List!45966 0))(
  ( (Nil!45842) (Cons!45842 (h!51262 (_ BitVec 16)) (t!344775 List!45966)) )
))
(declare-datatypes ((TokenValue!7850 0))(
  ( (FloatLiteralValue!15700 (text!55395 List!45966)) (TokenValueExt!7849 (__x!27922 Int)) (Broken!39250 (value!237676 List!45966)) (Object!7973) (End!7850) (Def!7850) (Underscore!7850) (Match!7850) (Else!7850) (Error!7850) (Case!7850) (If!7850) (Extends!7850) (Abstract!7850) (Class!7850) (Val!7850) (DelimiterValue!15700 (del!7910 List!45966)) (KeywordValue!7856 (value!237677 List!45966)) (CommentValue!15700 (value!237678 List!45966)) (WhitespaceValue!15700 (value!237679 List!45966)) (IndentationValue!7850 (value!237680 List!45966)) (String!53115) (Int32!7850) (Broken!39251 (value!237681 List!45966)) (Boolean!7851) (Unit!64914) (OperatorValue!7853 (op!7910 List!45966)) (IdentifierValue!15700 (value!237682 List!45966)) (IdentifierValue!15701 (value!237683 List!45966)) (WhitespaceValue!15701 (value!237684 List!45966)) (True!15700) (False!15700) (Broken!39252 (value!237685 List!45966)) (Broken!39253 (value!237686 List!45966)) (True!15701) (RightBrace!7850) (RightBracket!7850) (Colon!7850) (Null!7850) (Comma!7850) (LeftBracket!7850) (False!15701) (LeftBrace!7850) (ImaginaryLiteralValue!7850 (text!55396 List!45966)) (StringLiteralValue!23550 (value!237687 List!45966)) (EOFValue!7850 (value!237688 List!45966)) (IdentValue!7850 (value!237689 List!45966)) (DelimiterValue!15701 (value!237690 List!45966)) (DedentValue!7850 (value!237691 List!45966)) (NewLineValue!7850 (value!237692 List!45966)) (IntegerValue!23550 (value!237693 (_ BitVec 32)) (text!55397 List!45966)) (IntegerValue!23551 (value!237694 Int) (text!55398 List!45966)) (Times!7850) (Or!7850) (Equal!7850) (Minus!7850) (Broken!39254 (value!237695 List!45966)) (And!7850) (Div!7850) (LessEqual!7850) (Mod!7850) (Concat!20375) (Not!7850) (Plus!7850) (SpaceValue!7850 (value!237696 List!45966)) (IntegerValue!23552 (value!237697 Int) (text!55399 List!45966)) (StringLiteralValue!23551 (text!55400 List!45966)) (FloatLiteralValue!15701 (text!55401 List!45966)) (BytesLiteralValue!7850 (value!237698 List!45966)) (CommentValue!15701 (value!237699 List!45966)) (StringLiteralValue!23552 (value!237700 List!45966)) (ErrorTokenValue!7850 (msg!7911 List!45966)) )
))
(declare-datatypes ((IArray!27667 0))(
  ( (IArray!27668 (innerList!13891 List!45965)) )
))
(declare-datatypes ((Conc!13831 0))(
  ( (Node!13831 (left!34151 Conc!13831) (right!34481 Conc!13831) (csize!27892 Int) (cheight!14042 Int)) (Leaf!21384 (xs!17137 IArray!27667) (csize!27893 Int)) (Empty!13831) )
))
(declare-datatypes ((BalanceConc!27256 0))(
  ( (BalanceConc!27257 (c!713508 Conc!13831)) )
))
(declare-datatypes ((Regex!12525 0))(
  ( (ElementMatch!12525 (c!713509 C!25240)) (Concat!20376 (regOne!25562 Regex!12525) (regTwo!25562 Regex!12525)) (EmptyExpr!12525) (Star!12525 (reg!12854 Regex!12525)) (EmptyLang!12525) (Union!12525 (regOne!25563 Regex!12525) (regTwo!25563 Regex!12525)) )
))
(declare-datatypes ((String!53116 0))(
  ( (String!53117 (value!237701 String)) )
))
(declare-datatypes ((TokenValueInjection!15128 0))(
  ( (TokenValueInjection!15129 (toValue!10304 Int) (toChars!10163 Int)) )
))
(declare-datatypes ((Rule!15040 0))(
  ( (Rule!15041 (regex!7620 Regex!12525) (tag!8484 String!53116) (isSeparator!7620 Bool) (transformation!7620 TokenValueInjection!15128)) )
))
(declare-datatypes ((List!45967 0))(
  ( (Nil!45843) (Cons!45843 (h!51263 Rule!15040) (t!344776 List!45967)) )
))
(declare-fun rules!3843 () List!45967)

(declare-fun rBis!167 () Rule!15040)

(declare-fun contains!9423 (List!45967 Rule!15040) Bool)

(assert (=> b!4177239 (= res!1712547 (contains!9423 rules!3843 rBis!167))))

(declare-fun b!4177240 () Bool)

(declare-fun tp_is_empty!22013 () Bool)

(declare-fun tp!1276605 () Bool)

(assert (=> b!4177240 (= e!2593352 (and tp_is_empty!22013 tp!1276605))))

(declare-fun e!2593356 () Bool)

(assert (=> b!4177241 (= e!2593356 (and tp!1276596 tp!1276607))))

(declare-fun b!4177242 () Bool)

(declare-fun res!1712549 () Bool)

(assert (=> b!4177242 (=> (not res!1712549) (not e!2593345))))

(declare-fun isEmpty!27120 (List!45967) Bool)

(assert (=> b!4177242 (= res!1712549 (not (isEmpty!27120 rules!3843)))))

(declare-fun e!2593341 () Bool)

(assert (=> b!4177243 (= e!2593341 (and tp!1276601 tp!1276608))))

(declare-fun b!4177244 () Bool)

(declare-fun res!1712541 () Bool)

(assert (=> b!4177244 (=> (not res!1712541) (not e!2593345))))

(declare-fun r!4142 () Rule!15040)

(declare-fun ruleValid!3338 (LexerInterface!7213 Rule!15040) Bool)

(assert (=> b!4177244 (= res!1712541 (ruleValid!3338 thiss!25986 r!4142))))

(declare-fun b!4177245 () Bool)

(declare-fun tp!1276603 () Bool)

(assert (=> b!4177245 (= e!2593350 (and tp_is_empty!22013 tp!1276603))))

(declare-fun b!4177246 () Bool)

(declare-fun e!2593340 () Bool)

(declare-fun e!2593343 () Bool)

(assert (=> b!4177246 (= e!2593340 e!2593343)))

(declare-fun res!1712550 () Bool)

(assert (=> b!4177246 (=> res!1712550 e!2593343)))

(declare-fun lt!1487674 () List!45965)

(assert (=> b!4177246 (= res!1712550 (= lt!1487674 pBis!107))))

(declare-datatypes ((Token!13954 0))(
  ( (Token!13955 (value!237702 TokenValue!7850) (rule!10676 Rule!15040) (size!33657 Int) (originalCharacters!8008 List!45965)) )
))
(declare-datatypes ((tuple2!43670 0))(
  ( (tuple2!43671 (_1!24969 Token!13954) (_2!24969 List!45965)) )
))
(declare-fun lt!1487667 () tuple2!43670)

(declare-fun isPrefix!4477 (List!45965 List!45965) Bool)

(declare-fun ++!11698 (List!45965 List!45965) List!45965)

(assert (=> b!4177246 (isPrefix!4477 lt!1487674 (++!11698 lt!1487674 (_2!24969 lt!1487667)))))

(declare-datatypes ((Unit!64915 0))(
  ( (Unit!64916) )
))
(declare-fun lt!1487664 () Unit!64915)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2984 (List!45965 List!45965) Unit!64915)

(assert (=> b!4177246 (= lt!1487664 (lemmaConcatTwoListThenFirstIsPrefix!2984 lt!1487674 (_2!24969 lt!1487667)))))

(declare-fun lt!1487662 () BalanceConc!27256)

(declare-fun list!16557 (BalanceConc!27256) List!45965)

(assert (=> b!4177246 (= lt!1487674 (list!16557 lt!1487662))))

(declare-fun charsOf!5061 (Token!13954) BalanceConc!27256)

(assert (=> b!4177246 (= lt!1487662 (charsOf!5061 (_1!24969 lt!1487667)))))

(declare-datatypes ((Option!9816 0))(
  ( (None!9815) (Some!9815 (v!40617 tuple2!43670)) )
))
(declare-fun lt!1487669 () Option!9816)

(declare-fun get!14895 (Option!9816) tuple2!43670)

(assert (=> b!4177246 (= lt!1487667 (get!14895 lt!1487669))))

(declare-fun b!4177247 () Bool)

(declare-fun e!2593349 () Bool)

(declare-fun e!2593354 () Bool)

(assert (=> b!4177247 (= e!2593349 e!2593354)))

(declare-fun res!1712537 () Bool)

(assert (=> b!4177247 (=> res!1712537 e!2593354)))

(declare-fun lt!1487672 () Int)

(assert (=> b!4177247 (= res!1712537 (>= lt!1487673 lt!1487672))))

(declare-fun lt!1487676 () Unit!64915)

(declare-fun e!2593339 () Unit!64915)

(assert (=> b!4177247 (= lt!1487676 e!2593339)))

(declare-fun c!713507 () Bool)

(assert (=> b!4177247 (= c!713507 (= lt!1487673 (size!33656 lt!1487674)))))

(declare-fun b!4177248 () Bool)

(declare-fun res!1712548 () Bool)

(assert (=> b!4177248 (=> (not res!1712548) (not e!2593345))))

(declare-fun input!3342 () List!45965)

(assert (=> b!4177248 (= res!1712548 (isPrefix!4477 pBis!107 input!3342))))

(declare-fun b!4177249 () Bool)

(declare-fun res!1712533 () Bool)

(assert (=> b!4177249 (=> (not res!1712533) (not e!2593345))))

(declare-fun p!2959 () List!45965)

(assert (=> b!4177249 (= res!1712533 (isPrefix!4477 p!2959 input!3342))))

(declare-fun e!2593347 () Bool)

(declare-fun tp!1276600 () Bool)

(declare-fun b!4177250 () Bool)

(declare-fun inv!60363 (String!53116) Bool)

(declare-fun inv!60365 (TokenValueInjection!15128) Bool)

(assert (=> b!4177250 (= e!2593348 (and tp!1276600 (inv!60363 (tag!8484 r!4142)) (inv!60365 (transformation!7620 r!4142)) e!2593347))))

(declare-fun b!4177251 () Bool)

(declare-fun Unit!64917 () Unit!64915)

(assert (=> b!4177251 (= e!2593339 Unit!64917)))

(declare-fun lt!1487659 () Unit!64915)

(declare-fun lemmaIsPrefixSameLengthThenSameList!987 (List!45965 List!45965 List!45965) Unit!64915)

(assert (=> b!4177251 (= lt!1487659 (lemmaIsPrefixSameLengthThenSameList!987 pBis!107 lt!1487674 input!3342))))

(assert (=> b!4177251 false))

(assert (=> b!4177252 (= e!2593347 (and tp!1276604 tp!1276606))))

(declare-fun b!4177253 () Bool)

(assert (=> b!4177253 (= e!2593343 e!2593349)))

(declare-fun res!1712534 () Bool)

(assert (=> b!4177253 (=> res!1712534 e!2593349)))

(assert (=> b!4177253 (= res!1712534 (< lt!1487672 lt!1487673))))

(declare-fun size!33658 (BalanceConc!27256) Int)

(assert (=> b!4177253 (= lt!1487672 (size!33658 lt!1487662))))

(declare-fun b!4177254 () Bool)

(declare-fun res!1712544 () Bool)

(assert (=> b!4177254 (=> res!1712544 e!2593354)))

(declare-fun lt!1487658 () List!45965)

(assert (=> b!4177254 (= res!1712544 (not (= (++!11698 p!2959 lt!1487658) input!3342)))))

(declare-fun b!4177255 () Bool)

(assert (=> b!4177255 (= e!2593357 e!2593340)))

(declare-fun res!1712535 () Bool)

(assert (=> b!4177255 (=> res!1712535 e!2593340)))

(declare-fun isEmpty!27121 (Option!9816) Bool)

(assert (=> b!4177255 (= res!1712535 (isEmpty!27121 lt!1487669))))

(declare-fun maxPrefixOneRule!3224 (LexerInterface!7213 Rule!15040 List!45965) Option!9816)

(assert (=> b!4177255 (= lt!1487669 (maxPrefixOneRule!3224 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1487660 () Unit!64915)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2352 (LexerInterface!7213 Rule!15040 List!45967) Unit!64915)

(assert (=> b!4177255 (= lt!1487660 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2352 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4177255 (<= lt!1487673 (size!33656 input!3342))))

(declare-fun lt!1487671 () Unit!64915)

(declare-fun lemmaIsPrefixThenSmallerEqSize!509 (List!45965 List!45965) Unit!64915)

(assert (=> b!4177255 (= lt!1487671 (lemmaIsPrefixThenSmallerEqSize!509 pBis!107 input!3342))))

(declare-fun b!4177256 () Bool)

(assert (=> b!4177256 (= e!2593345 (not e!2593338))))

(declare-fun res!1712545 () Bool)

(assert (=> b!4177256 (=> res!1712545 e!2593338)))

(declare-fun lt!1487675 () Option!9816)

(assert (=> b!4177256 (= res!1712545 (not (= (maxPrefixOneRule!3224 thiss!25986 r!4142 input!3342) lt!1487675)))))

(declare-fun lt!1487663 () TokenValue!7850)

(assert (=> b!4177256 (= lt!1487675 (Some!9815 (tuple2!43671 (Token!13955 lt!1487663 r!4142 lt!1487670 p!2959) lt!1487658)))))

(declare-fun getSuffix!2772 (List!45965 List!45965) List!45965)

(assert (=> b!4177256 (= lt!1487658 (getSuffix!2772 input!3342 p!2959))))

(assert (=> b!4177256 (= lt!1487670 (size!33656 p!2959))))

(declare-fun lt!1487666 () BalanceConc!27256)

(declare-fun apply!10585 (TokenValueInjection!15128 BalanceConc!27256) TokenValue!7850)

(assert (=> b!4177256 (= lt!1487663 (apply!10585 (transformation!7620 r!4142) lt!1487666))))

(assert (=> b!4177256 (isPrefix!4477 input!3342 input!3342)))

(declare-fun lt!1487661 () Unit!64915)

(declare-fun lemmaIsPrefixRefl!2906 (List!45965 List!45965) Unit!64915)

(assert (=> b!4177256 (= lt!1487661 (lemmaIsPrefixRefl!2906 input!3342 input!3342))))

(declare-fun lt!1487668 () Unit!64915)

(declare-fun lemmaSemiInverse!2386 (TokenValueInjection!15128 BalanceConc!27256) Unit!64915)

(assert (=> b!4177256 (= lt!1487668 (lemmaSemiInverse!2386 (transformation!7620 r!4142) lt!1487666))))

(declare-fun seqFromList!5645 (List!45965) BalanceConc!27256)

(assert (=> b!4177256 (= lt!1487666 (seqFromList!5645 p!2959))))

(declare-fun tp!1276598 () Bool)

(declare-fun b!4177257 () Bool)

(declare-fun e!2593353 () Bool)

(assert (=> b!4177257 (= e!2593353 (and tp!1276598 (inv!60363 (tag!8484 (h!51263 rules!3843))) (inv!60365 (transformation!7620 (h!51263 rules!3843))) e!2593341))))

(declare-fun tp!1276599 () Bool)

(declare-fun b!4177258 () Bool)

(assert (=> b!4177258 (= e!2593351 (and tp!1276599 (inv!60363 (tag!8484 rBis!167)) (inv!60365 (transformation!7620 rBis!167)) e!2593356))))

(declare-fun b!4177259 () Bool)

(declare-fun res!1712539 () Bool)

(assert (=> b!4177259 (=> (not res!1712539) (not e!2593345))))

(declare-fun rulesInvariant!6426 (LexerInterface!7213 List!45967) Bool)

(assert (=> b!4177259 (= res!1712539 (rulesInvariant!6426 thiss!25986 rules!3843))))

(declare-fun b!4177260 () Bool)

(declare-fun Unit!64918 () Unit!64915)

(assert (=> b!4177260 (= e!2593339 Unit!64918)))

(declare-fun b!4177261 () Bool)

(declare-fun tp!1276602 () Bool)

(assert (=> b!4177261 (= e!2593358 (and tp_is_empty!22013 tp!1276602))))

(declare-fun b!4177262 () Bool)

(declare-fun res!1712542 () Bool)

(assert (=> b!4177262 (=> (not res!1712542) (not e!2593345))))

(declare-fun validRegex!5642 (Regex!12525) Bool)

(assert (=> b!4177262 (= res!1712542 (validRegex!5642 (regex!7620 r!4142)))))

(declare-fun b!4177263 () Bool)

(declare-fun res!1712543 () Bool)

(assert (=> b!4177263 (=> (not res!1712543) (not e!2593345))))

(declare-fun matchR!6264 (Regex!12525 List!45965) Bool)

(assert (=> b!4177263 (= res!1712543 (matchR!6264 (regex!7620 r!4142) p!2959))))

(declare-fun b!4177264 () Bool)

(declare-fun res!1712546 () Bool)

(assert (=> b!4177264 (=> res!1712546 e!2593357)))

(assert (=> b!4177264 (= res!1712546 (not (ruleValid!3338 thiss!25986 rBis!167)))))

(declare-fun b!4177265 () Bool)

(declare-fun res!1712538 () Bool)

(assert (=> b!4177265 (=> res!1712538 e!2593357)))

(declare-fun maxPrefix!4265 (LexerInterface!7213 List!45967 List!45965) Option!9816)

(assert (=> b!4177265 (= res!1712538 (not (= (maxPrefix!4265 thiss!25986 rules!3843 input!3342) lt!1487675)))))

(declare-fun b!4177266 () Bool)

(assert (=> b!4177266 (= e!2593354 true)))

(declare-fun lt!1487665 () Bool)

(assert (=> b!4177266 (= lt!1487665 (isPrefix!4477 lt!1487674 input!3342))))

(declare-fun b!4177267 () Bool)

(declare-fun tp!1276597 () Bool)

(assert (=> b!4177267 (= e!2593342 (and e!2593353 tp!1276597))))

(declare-fun b!4177268 () Bool)

(declare-fun res!1712536 () Bool)

(assert (=> b!4177268 (=> (not res!1712536) (not e!2593345))))

(assert (=> b!4177268 (= res!1712536 (contains!9423 rules!3843 r!4142))))

(assert (= (and start!398246 res!1712540) b!4177249))

(assert (= (and b!4177249 res!1712533) b!4177248))

(assert (= (and b!4177248 res!1712548) b!4177242))

(assert (= (and b!4177242 res!1712549) b!4177259))

(assert (= (and b!4177259 res!1712539) b!4177268))

(assert (= (and b!4177268 res!1712536) b!4177239))

(assert (= (and b!4177239 res!1712547) b!4177262))

(assert (= (and b!4177262 res!1712542) b!4177263))

(assert (= (and b!4177263 res!1712543) b!4177244))

(assert (= (and b!4177244 res!1712541) b!4177256))

(assert (= (and b!4177256 (not res!1712545)) b!4177238))

(assert (= (and b!4177238 (not res!1712532)) b!4177264))

(assert (= (and b!4177264 (not res!1712546)) b!4177265))

(assert (= (and b!4177265 (not res!1712538)) b!4177255))

(assert (= (and b!4177255 (not res!1712535)) b!4177246))

(assert (= (and b!4177246 (not res!1712550)) b!4177253))

(assert (= (and b!4177253 (not res!1712534)) b!4177247))

(assert (= (and b!4177247 c!713507) b!4177251))

(assert (= (and b!4177247 (not c!713507)) b!4177260))

(assert (= (and b!4177247 (not res!1712537)) b!4177254))

(assert (= (and b!4177254 (not res!1712544)) b!4177266))

(assert (= b!4177258 b!4177241))

(assert (= start!398246 b!4177258))

(assert (= b!4177250 b!4177252))

(assert (= start!398246 b!4177250))

(assert (= b!4177257 b!4177243))

(assert (= b!4177267 b!4177257))

(assert (= (and start!398246 ((_ is Cons!45843) rules!3843)) b!4177267))

(assert (= (and start!398246 ((_ is Cons!45841) input!3342)) b!4177245))

(assert (= (and start!398246 ((_ is Cons!45841) pBis!107)) b!4177240))

(assert (= (and start!398246 ((_ is Cons!45841) p!2959)) b!4177261))

(declare-fun m!4766851 () Bool)

(assert (=> b!4177256 m!4766851))

(declare-fun m!4766853 () Bool)

(assert (=> b!4177256 m!4766853))

(declare-fun m!4766855 () Bool)

(assert (=> b!4177256 m!4766855))

(declare-fun m!4766857 () Bool)

(assert (=> b!4177256 m!4766857))

(declare-fun m!4766859 () Bool)

(assert (=> b!4177256 m!4766859))

(declare-fun m!4766861 () Bool)

(assert (=> b!4177256 m!4766861))

(declare-fun m!4766863 () Bool)

(assert (=> b!4177256 m!4766863))

(declare-fun m!4766865 () Bool)

(assert (=> b!4177256 m!4766865))

(declare-fun m!4766867 () Bool)

(assert (=> b!4177247 m!4766867))

(declare-fun m!4766869 () Bool)

(assert (=> b!4177268 m!4766869))

(declare-fun m!4766871 () Bool)

(assert (=> b!4177248 m!4766871))

(declare-fun m!4766873 () Bool)

(assert (=> b!4177257 m!4766873))

(declare-fun m!4766875 () Bool)

(assert (=> b!4177257 m!4766875))

(declare-fun m!4766877 () Bool)

(assert (=> b!4177250 m!4766877))

(declare-fun m!4766879 () Bool)

(assert (=> b!4177250 m!4766879))

(declare-fun m!4766881 () Bool)

(assert (=> b!4177242 m!4766881))

(declare-fun m!4766883 () Bool)

(assert (=> b!4177253 m!4766883))

(declare-fun m!4766885 () Bool)

(assert (=> b!4177251 m!4766885))

(declare-fun m!4766887 () Bool)

(assert (=> b!4177262 m!4766887))

(declare-fun m!4766889 () Bool)

(assert (=> b!4177258 m!4766889))

(declare-fun m!4766891 () Bool)

(assert (=> b!4177258 m!4766891))

(declare-fun m!4766893 () Bool)

(assert (=> b!4177246 m!4766893))

(declare-fun m!4766895 () Bool)

(assert (=> b!4177246 m!4766895))

(declare-fun m!4766897 () Bool)

(assert (=> b!4177246 m!4766897))

(declare-fun m!4766899 () Bool)

(assert (=> b!4177246 m!4766899))

(assert (=> b!4177246 m!4766895))

(declare-fun m!4766901 () Bool)

(assert (=> b!4177246 m!4766901))

(declare-fun m!4766903 () Bool)

(assert (=> b!4177246 m!4766903))

(declare-fun m!4766905 () Bool)

(assert (=> b!4177264 m!4766905))

(declare-fun m!4766907 () Bool)

(assert (=> b!4177259 m!4766907))

(declare-fun m!4766909 () Bool)

(assert (=> b!4177265 m!4766909))

(declare-fun m!4766911 () Bool)

(assert (=> b!4177254 m!4766911))

(declare-fun m!4766913 () Bool)

(assert (=> b!4177263 m!4766913))

(declare-fun m!4766915 () Bool)

(assert (=> b!4177244 m!4766915))

(declare-fun m!4766917 () Bool)

(assert (=> b!4177266 m!4766917))

(declare-fun m!4766919 () Bool)

(assert (=> b!4177239 m!4766919))

(declare-fun m!4766921 () Bool)

(assert (=> b!4177238 m!4766921))

(declare-fun m!4766923 () Bool)

(assert (=> b!4177255 m!4766923))

(declare-fun m!4766925 () Bool)

(assert (=> b!4177255 m!4766925))

(declare-fun m!4766927 () Bool)

(assert (=> b!4177255 m!4766927))

(declare-fun m!4766929 () Bool)

(assert (=> b!4177255 m!4766929))

(declare-fun m!4766931 () Bool)

(assert (=> b!4177255 m!4766931))

(declare-fun m!4766933 () Bool)

(assert (=> b!4177249 m!4766933))

(check-sat (not b!4177245) (not b!4177268) (not b!4177250) (not b_next!121963) (not b!4177255) (not b!4177258) (not b!4177249) (not b!4177262) (not b!4177254) (not b_next!121961) (not b!4177263) b_and!326537 (not b!4177265) b_and!326541 b_and!326533 (not b_next!121959) (not b!4177239) (not b!4177261) (not b!4177247) (not b!4177264) (not b!4177259) (not b!4177253) (not b!4177256) (not b_next!121967) (not b!4177242) (not b!4177266) (not b!4177244) (not b!4177238) (not b_next!121969) b_and!326539 (not b_next!121965) (not b!4177246) b_and!326543 (not b!4177240) b_and!326535 (not b!4177248) tp_is_empty!22013 (not b!4177257) (not b!4177251) (not b!4177267))
(check-sat (not b_next!121959) (not b_next!121963) (not b_next!121967) (not b_next!121965) (not b_next!121961) b_and!326537 b_and!326541 b_and!326533 (not b_next!121969) b_and!326539 b_and!326543 b_and!326535)

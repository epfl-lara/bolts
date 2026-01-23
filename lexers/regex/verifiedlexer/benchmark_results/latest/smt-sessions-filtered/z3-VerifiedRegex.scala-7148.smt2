; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!379156 () Bool)

(assert start!379156)

(declare-fun b!4025786 () Bool)

(declare-fun b_free!112105 () Bool)

(declare-fun b_next!112809 () Bool)

(assert (=> b!4025786 (= b_free!112105 (not b_next!112809))))

(declare-fun tp!1223647 () Bool)

(declare-fun b_and!309303 () Bool)

(assert (=> b!4025786 (= tp!1223647 b_and!309303)))

(declare-fun b_free!112107 () Bool)

(declare-fun b_next!112811 () Bool)

(assert (=> b!4025786 (= b_free!112107 (not b_next!112811))))

(declare-fun tp!1223650 () Bool)

(declare-fun b_and!309305 () Bool)

(assert (=> b!4025786 (= tp!1223650 b_and!309305)))

(declare-fun b!4025797 () Bool)

(declare-fun b_free!112109 () Bool)

(declare-fun b_next!112813 () Bool)

(assert (=> b!4025797 (= b_free!112109 (not b_next!112813))))

(declare-fun tp!1223651 () Bool)

(declare-fun b_and!309307 () Bool)

(assert (=> b!4025797 (= tp!1223651 b_and!309307)))

(declare-fun b_free!112111 () Bool)

(declare-fun b_next!112815 () Bool)

(assert (=> b!4025797 (= b_free!112111 (not b_next!112815))))

(declare-fun tp!1223648 () Bool)

(declare-fun b_and!309309 () Bool)

(assert (=> b!4025797 (= tp!1223648 b_and!309309)))

(declare-fun res!1638390 () Bool)

(declare-fun e!2497575 () Bool)

(assert (=> start!379156 (=> (not res!1638390) (not e!2497575))))

(declare-datatypes ((LexerInterface!6473 0))(
  ( (LexerInterfaceExt!6470 (__x!26445 Int)) (Lexer!6471) )
))
(declare-fun thiss!21717 () LexerInterface!6473)

(get-info :version)

(assert (=> start!379156 (= res!1638390 ((_ is Lexer!6471) thiss!21717))))

(assert (=> start!379156 e!2497575))

(declare-fun e!2497563 () Bool)

(assert (=> start!379156 e!2497563))

(declare-datatypes ((C!23764 0))(
  ( (C!23765 (val!13976 Int)) )
))
(declare-datatypes ((List!43235 0))(
  ( (Nil!43111) (Cons!43111 (h!48531 C!23764) (t!333912 List!43235)) )
))
(declare-datatypes ((IArray!26195 0))(
  ( (IArray!26196 (innerList!13155 List!43235)) )
))
(declare-datatypes ((Conc!13095 0))(
  ( (Node!13095 (left!32483 Conc!13095) (right!32813 Conc!13095) (csize!26420 Int) (cheight!13306 Int)) (Leaf!20244 (xs!16401 IArray!26195) (csize!26421 Int)) (Empty!13095) )
))
(declare-datatypes ((BalanceConc!25784 0))(
  ( (BalanceConc!25785 (c!695538 Conc!13095)) )
))
(declare-datatypes ((List!43236 0))(
  ( (Nil!43112) (Cons!43112 (h!48532 (_ BitVec 16)) (t!333913 List!43236)) )
))
(declare-datatypes ((TokenValue!7114 0))(
  ( (FloatLiteralValue!14228 (text!50243 List!43236)) (TokenValueExt!7113 (__x!26446 Int)) (Broken!35570 (value!216802 List!43236)) (Object!7237) (End!7114) (Def!7114) (Underscore!7114) (Match!7114) (Else!7114) (Error!7114) (Case!7114) (If!7114) (Extends!7114) (Abstract!7114) (Class!7114) (Val!7114) (DelimiterValue!14228 (del!7174 List!43236)) (KeywordValue!7120 (value!216803 List!43236)) (CommentValue!14228 (value!216804 List!43236)) (WhitespaceValue!14228 (value!216805 List!43236)) (IndentationValue!7114 (value!216806 List!43236)) (String!49287) (Int32!7114) (Broken!35571 (value!216807 List!43236)) (Boolean!7115) (Unit!62273) (OperatorValue!7117 (op!7174 List!43236)) (IdentifierValue!14228 (value!216808 List!43236)) (IdentifierValue!14229 (value!216809 List!43236)) (WhitespaceValue!14229 (value!216810 List!43236)) (True!14228) (False!14228) (Broken!35572 (value!216811 List!43236)) (Broken!35573 (value!216812 List!43236)) (True!14229) (RightBrace!7114) (RightBracket!7114) (Colon!7114) (Null!7114) (Comma!7114) (LeftBracket!7114) (False!14229) (LeftBrace!7114) (ImaginaryLiteralValue!7114 (text!50244 List!43236)) (StringLiteralValue!21342 (value!216813 List!43236)) (EOFValue!7114 (value!216814 List!43236)) (IdentValue!7114 (value!216815 List!43236)) (DelimiterValue!14229 (value!216816 List!43236)) (DedentValue!7114 (value!216817 List!43236)) (NewLineValue!7114 (value!216818 List!43236)) (IntegerValue!21342 (value!216819 (_ BitVec 32)) (text!50245 List!43236)) (IntegerValue!21343 (value!216820 Int) (text!50246 List!43236)) (Times!7114) (Or!7114) (Equal!7114) (Minus!7114) (Broken!35574 (value!216821 List!43236)) (And!7114) (Div!7114) (LessEqual!7114) (Mod!7114) (Concat!18903) (Not!7114) (Plus!7114) (SpaceValue!7114 (value!216822 List!43236)) (IntegerValue!21344 (value!216823 Int) (text!50247 List!43236)) (StringLiteralValue!21343 (text!50248 List!43236)) (FloatLiteralValue!14229 (text!50249 List!43236)) (BytesLiteralValue!7114 (value!216824 List!43236)) (CommentValue!14229 (value!216825 List!43236)) (StringLiteralValue!21344 (value!216826 List!43236)) (ErrorTokenValue!7114 (msg!7175 List!43236)) )
))
(declare-datatypes ((Regex!11789 0))(
  ( (ElementMatch!11789 (c!695539 C!23764)) (Concat!18904 (regOne!24090 Regex!11789) (regTwo!24090 Regex!11789)) (EmptyExpr!11789) (Star!11789 (reg!12118 Regex!11789)) (EmptyLang!11789) (Union!11789 (regOne!24091 Regex!11789) (regTwo!24091 Regex!11789)) )
))
(declare-datatypes ((String!49288 0))(
  ( (String!49289 (value!216827 String)) )
))
(declare-datatypes ((TokenValueInjection!13656 0))(
  ( (TokenValueInjection!13657 (toValue!9400 Int) (toChars!9259 Int)) )
))
(declare-datatypes ((Rule!13568 0))(
  ( (Rule!13569 (regex!6884 Regex!11789) (tag!7744 String!49288) (isSeparator!6884 Bool) (transformation!6884 TokenValueInjection!13656)) )
))
(declare-datatypes ((Token!12906 0))(
  ( (Token!12907 (value!216828 TokenValue!7114) (rule!9940 Rule!13568) (size!32225 Int) (originalCharacters!7484 List!43235)) )
))
(declare-fun token!484 () Token!12906)

(declare-fun e!2497581 () Bool)

(declare-fun inv!57588 (Token!12906) Bool)

(assert (=> start!379156 (and (inv!57588 token!484) e!2497581)))

(declare-fun e!2497569 () Bool)

(assert (=> start!379156 e!2497569))

(declare-fun e!2497579 () Bool)

(assert (=> start!379156 e!2497579))

(declare-fun e!2497576 () Bool)

(assert (=> start!379156 e!2497576))

(assert (=> start!379156 true))

(declare-fun e!2497564 () Bool)

(assert (=> start!379156 e!2497564))

(declare-fun e!2497568 () Bool)

(assert (=> start!379156 e!2497568))

(declare-fun b!4025785 () Bool)

(declare-fun e!2497574 () Bool)

(declare-fun e!2497570 () Bool)

(assert (=> b!4025785 (= e!2497574 e!2497570)))

(declare-fun res!1638386 () Bool)

(assert (=> b!4025785 (=> res!1638386 e!2497570)))

(declare-datatypes ((List!43237 0))(
  ( (Nil!43113) (Cons!43113 (h!48533 Rule!13568) (t!333914 List!43237)) )
))
(declare-fun rules!2999 () List!43237)

(declare-fun contains!8564 (List!43237 Rule!13568) Bool)

(assert (=> b!4025785 (= res!1638386 (not (contains!8564 rules!2999 (rule!9940 token!484))))))

(declare-fun lt!1430270 () List!43235)

(declare-fun suffixResult!105 () List!43235)

(assert (=> b!4025785 (= lt!1430270 suffixResult!105)))

(declare-fun lt!1430273 () List!43235)

(declare-datatypes ((Unit!62274 0))(
  ( (Unit!62275) )
))
(declare-fun lt!1430282 () Unit!62274)

(declare-fun lt!1430280 () List!43235)

(declare-fun lemmaSamePrefixThenSameSuffix!2132 (List!43235 List!43235 List!43235 List!43235 List!43235) Unit!62274)

(assert (=> b!4025785 (= lt!1430282 (lemmaSamePrefixThenSameSuffix!2132 lt!1430280 lt!1430270 lt!1430280 suffixResult!105 lt!1430273))))

(declare-fun lt!1430281 () List!43235)

(declare-fun isPrefix!3971 (List!43235 List!43235) Bool)

(assert (=> b!4025785 (isPrefix!3971 lt!1430280 lt!1430281)))

(declare-fun lt!1430276 () Unit!62274)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2806 (List!43235 List!43235) Unit!62274)

(assert (=> b!4025785 (= lt!1430276 (lemmaConcatTwoListThenFirstIsPrefix!2806 lt!1430280 lt!1430270))))

(declare-fun e!2497571 () Bool)

(assert (=> b!4025786 (= e!2497571 (and tp!1223647 tp!1223650))))

(declare-fun b!4025787 () Bool)

(declare-fun e!2497566 () Bool)

(declare-fun e!2497572 () Bool)

(assert (=> b!4025787 (= e!2497566 e!2497572)))

(declare-fun res!1638385 () Bool)

(assert (=> b!4025787 (=> res!1638385 e!2497572)))

(declare-fun lt!1430275 () List!43235)

(declare-fun prefix!494 () List!43235)

(assert (=> b!4025787 (= res!1638385 (not (= lt!1430275 prefix!494)))))

(declare-fun lt!1430287 () List!43235)

(declare-fun ++!11286 (List!43235 List!43235) List!43235)

(assert (=> b!4025787 (= lt!1430275 (++!11286 lt!1430280 lt!1430287))))

(declare-fun getSuffix!2388 (List!43235 List!43235) List!43235)

(assert (=> b!4025787 (= lt!1430287 (getSuffix!2388 prefix!494 lt!1430280))))

(assert (=> b!4025787 (isPrefix!3971 lt!1430280 prefix!494)))

(declare-fun lt!1430277 () Unit!62274)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!535 (List!43235 List!43235 List!43235) Unit!62274)

(assert (=> b!4025787 (= lt!1430277 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!535 prefix!494 lt!1430280 lt!1430273))))

(declare-fun e!2497561 () Bool)

(declare-fun b!4025788 () Bool)

(declare-fun e!2497577 () Bool)

(declare-fun tp!1223646 () Bool)

(declare-fun inv!57585 (String!49288) Bool)

(declare-fun inv!57589 (TokenValueInjection!13656) Bool)

(assert (=> b!4025788 (= e!2497561 (and tp!1223646 (inv!57585 (tag!7744 (rule!9940 token!484))) (inv!57589 (transformation!6884 (rule!9940 token!484))) e!2497577))))

(declare-fun b!4025789 () Bool)

(declare-fun tp_is_empty!20549 () Bool)

(declare-fun tp!1223649 () Bool)

(assert (=> b!4025789 (= e!2497579 (and tp_is_empty!20549 tp!1223649))))

(declare-fun b!4025790 () Bool)

(declare-fun tp!1223644 () Bool)

(assert (=> b!4025790 (= e!2497576 (and tp_is_empty!20549 tp!1223644))))

(declare-fun b!4025791 () Bool)

(declare-fun lt!1430271 () Int)

(declare-datatypes ((tuple2!42214 0))(
  ( (tuple2!42215 (_1!24241 Token!12906) (_2!24241 List!43235)) )
))
(declare-datatypes ((Option!9298 0))(
  ( (None!9297) (Some!9297 (v!39681 tuple2!42214)) )
))
(declare-fun lt!1430285 () Option!9298)

(declare-fun lt!1430283 () BalanceConc!25784)

(declare-fun apply!10073 (TokenValueInjection!13656 BalanceConc!25784) TokenValue!7114)

(assert (=> b!4025791 (= e!2497570 (= lt!1430285 (Some!9297 (tuple2!42215 (Token!12907 (apply!10073 (transformation!6884 (rule!9940 token!484)) lt!1430283) (rule!9940 token!484) lt!1430271 lt!1430280) suffixResult!105))))))

(declare-fun lt!1430269 () Unit!62274)

(declare-fun lemmaSemiInverse!1891 (TokenValueInjection!13656 BalanceConc!25784) Unit!62274)

(assert (=> b!4025791 (= lt!1430269 (lemmaSemiInverse!1891 (transformation!6884 (rule!9940 token!484)) lt!1430283))))

(declare-fun seqFromList!5101 (List!43235) BalanceConc!25784)

(assert (=> b!4025791 (= lt!1430283 (seqFromList!5101 lt!1430280))))

(declare-fun b!4025792 () Bool)

(declare-fun tp!1223652 () Bool)

(assert (=> b!4025792 (= e!2497569 (and tp_is_empty!20549 tp!1223652))))

(declare-fun b!4025793 () Bool)

(declare-fun res!1638384 () Bool)

(assert (=> b!4025793 (=> (not res!1638384) (not e!2497575))))

(declare-fun newSuffix!27 () List!43235)

(declare-fun suffix!1299 () List!43235)

(assert (=> b!4025793 (= res!1638384 (isPrefix!3971 newSuffix!27 suffix!1299))))

(declare-fun b!4025794 () Bool)

(declare-fun res!1638378 () Bool)

(assert (=> b!4025794 (=> (not res!1638378) (not e!2497575))))

(declare-fun rulesInvariant!5816 (LexerInterface!6473 List!43237) Bool)

(assert (=> b!4025794 (= res!1638378 (rulesInvariant!5816 thiss!21717 rules!2999))))

(declare-fun b!4025795 () Bool)

(declare-fun e!2497580 () Bool)

(assert (=> b!4025795 (= e!2497580 e!2497566)))

(declare-fun res!1638379 () Bool)

(assert (=> b!4025795 (=> res!1638379 e!2497566)))

(assert (=> b!4025795 (= res!1638379 (not (isPrefix!3971 lt!1430280 lt!1430273)))))

(assert (=> b!4025795 (isPrefix!3971 prefix!494 lt!1430273)))

(declare-fun lt!1430289 () Unit!62274)

(assert (=> b!4025795 (= lt!1430289 (lemmaConcatTwoListThenFirstIsPrefix!2806 prefix!494 suffix!1299))))

(declare-fun lt!1430278 () List!43235)

(assert (=> b!4025795 (isPrefix!3971 lt!1430280 lt!1430278)))

(declare-fun lt!1430284 () Unit!62274)

(assert (=> b!4025795 (= lt!1430284 (lemmaConcatTwoListThenFirstIsPrefix!2806 lt!1430280 suffixResult!105))))

(declare-fun b!4025796 () Bool)

(declare-fun tp!1223654 () Bool)

(assert (=> b!4025796 (= e!2497568 (and tp_is_empty!20549 tp!1223654))))

(assert (=> b!4025797 (= e!2497577 (and tp!1223651 tp!1223648))))

(declare-fun b!4025798 () Bool)

(declare-fun e!2497582 () Bool)

(declare-fun tp!1223643 () Bool)

(assert (=> b!4025798 (= e!2497564 (and e!2497582 tp!1223643))))

(declare-fun b!4025799 () Bool)

(assert (=> b!4025799 (= e!2497572 e!2497574)))

(declare-fun res!1638383 () Bool)

(assert (=> b!4025799 (=> res!1638383 e!2497574)))

(declare-fun lt!1430288 () List!43235)

(assert (=> b!4025799 (= res!1638383 (or (not (= lt!1430273 lt!1430288)) (not (= lt!1430273 lt!1430281))))))

(assert (=> b!4025799 (= lt!1430288 lt!1430281)))

(assert (=> b!4025799 (= lt!1430281 (++!11286 lt!1430280 lt!1430270))))

(assert (=> b!4025799 (= lt!1430288 (++!11286 lt!1430275 suffix!1299))))

(assert (=> b!4025799 (= lt!1430270 (++!11286 lt!1430287 suffix!1299))))

(declare-fun lt!1430274 () Unit!62274)

(declare-fun lemmaConcatAssociativity!2588 (List!43235 List!43235 List!43235) Unit!62274)

(assert (=> b!4025799 (= lt!1430274 (lemmaConcatAssociativity!2588 lt!1430280 lt!1430287 suffix!1299))))

(declare-fun b!4025800 () Bool)

(declare-fun e!2497562 () Bool)

(assert (=> b!4025800 (= e!2497575 e!2497562)))

(declare-fun res!1638380 () Bool)

(assert (=> b!4025800 (=> (not res!1638380) (not e!2497562))))

(declare-fun lt!1430272 () Int)

(assert (=> b!4025800 (= res!1638380 (>= lt!1430272 lt!1430271))))

(declare-fun size!32226 (List!43235) Int)

(assert (=> b!4025800 (= lt!1430271 (size!32226 lt!1430280))))

(assert (=> b!4025800 (= lt!1430272 (size!32226 prefix!494))))

(declare-fun list!16034 (BalanceConc!25784) List!43235)

(declare-fun charsOf!4700 (Token!12906) BalanceConc!25784)

(assert (=> b!4025800 (= lt!1430280 (list!16034 (charsOf!4700 token!484)))))

(declare-fun b!4025801 () Bool)

(declare-fun e!2497578 () Bool)

(assert (=> b!4025801 (= e!2497578 (not e!2497580))))

(declare-fun res!1638387 () Bool)

(assert (=> b!4025801 (=> res!1638387 e!2497580)))

(assert (=> b!4025801 (= res!1638387 (not (= lt!1430278 lt!1430273)))))

(assert (=> b!4025801 (= lt!1430278 (++!11286 lt!1430280 suffixResult!105))))

(declare-fun lt!1430279 () Unit!62274)

(declare-fun lemmaInv!1093 (TokenValueInjection!13656) Unit!62274)

(assert (=> b!4025801 (= lt!1430279 (lemmaInv!1093 (transformation!6884 (rule!9940 token!484))))))

(declare-fun ruleValid!2814 (LexerInterface!6473 Rule!13568) Bool)

(assert (=> b!4025801 (ruleValid!2814 thiss!21717 (rule!9940 token!484))))

(declare-fun lt!1430286 () Unit!62274)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1884 (LexerInterface!6473 Rule!13568 List!43237) Unit!62274)

(assert (=> b!4025801 (= lt!1430286 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1884 thiss!21717 (rule!9940 token!484) rules!2999))))

(declare-fun b!4025802 () Bool)

(declare-fun res!1638377 () Bool)

(assert (=> b!4025802 (=> res!1638377 e!2497570)))

(assert (=> b!4025802 (= res!1638377 (not (= lt!1430273 lt!1430278)))))

(declare-fun b!4025803 () Bool)

(declare-fun res!1638381 () Bool)

(assert (=> b!4025803 (=> (not res!1638381) (not e!2497575))))

(assert (=> b!4025803 (= res!1638381 (>= (size!32226 suffix!1299) (size!32226 newSuffix!27)))))

(declare-fun b!4025804 () Bool)

(declare-fun tp!1223645 () Bool)

(assert (=> b!4025804 (= e!2497563 (and tp_is_empty!20549 tp!1223645))))

(declare-fun b!4025805 () Bool)

(assert (=> b!4025805 (= e!2497562 e!2497578)))

(declare-fun res!1638388 () Bool)

(assert (=> b!4025805 (=> (not res!1638388) (not e!2497578))))

(assert (=> b!4025805 (= res!1638388 (= lt!1430285 (Some!9297 (tuple2!42215 token!484 suffixResult!105))))))

(declare-fun maxPrefix!3771 (LexerInterface!6473 List!43237 List!43235) Option!9298)

(assert (=> b!4025805 (= lt!1430285 (maxPrefix!3771 thiss!21717 rules!2999 lt!1430273))))

(assert (=> b!4025805 (= lt!1430273 (++!11286 prefix!494 suffix!1299))))

(declare-fun tp!1223653 () Bool)

(declare-fun b!4025806 () Bool)

(declare-fun inv!21 (TokenValue!7114) Bool)

(assert (=> b!4025806 (= e!2497581 (and (inv!21 (value!216828 token!484)) e!2497561 tp!1223653))))

(declare-fun b!4025807 () Bool)

(declare-fun tp!1223642 () Bool)

(assert (=> b!4025807 (= e!2497582 (and tp!1223642 (inv!57585 (tag!7744 (h!48533 rules!2999))) (inv!57589 (transformation!6884 (h!48533 rules!2999))) e!2497571))))

(declare-fun b!4025808 () Bool)

(declare-fun res!1638391 () Bool)

(assert (=> b!4025808 (=> (not res!1638391) (not e!2497575))))

(declare-fun isEmpty!25738 (List!43237) Bool)

(assert (=> b!4025808 (= res!1638391 (not (isEmpty!25738 rules!2999)))))

(declare-fun b!4025809 () Bool)

(declare-fun res!1638389 () Bool)

(assert (=> b!4025809 (=> (not res!1638389) (not e!2497562))))

(declare-fun newSuffixResult!27 () List!43235)

(assert (=> b!4025809 (= res!1638389 (= (++!11286 lt!1430280 newSuffixResult!27) (++!11286 prefix!494 newSuffix!27)))))

(declare-fun b!4025810 () Bool)

(declare-fun res!1638382 () Bool)

(assert (=> b!4025810 (=> res!1638382 e!2497570)))

(declare-fun isEmpty!25739 (List!43235) Bool)

(assert (=> b!4025810 (= res!1638382 (isEmpty!25739 lt!1430280))))

(assert (= (and start!379156 res!1638390) b!4025808))

(assert (= (and b!4025808 res!1638391) b!4025794))

(assert (= (and b!4025794 res!1638378) b!4025803))

(assert (= (and b!4025803 res!1638381) b!4025793))

(assert (= (and b!4025793 res!1638384) b!4025800))

(assert (= (and b!4025800 res!1638380) b!4025809))

(assert (= (and b!4025809 res!1638389) b!4025805))

(assert (= (and b!4025805 res!1638388) b!4025801))

(assert (= (and b!4025801 (not res!1638387)) b!4025795))

(assert (= (and b!4025795 (not res!1638379)) b!4025787))

(assert (= (and b!4025787 (not res!1638385)) b!4025799))

(assert (= (and b!4025799 (not res!1638383)) b!4025785))

(assert (= (and b!4025785 (not res!1638386)) b!4025802))

(assert (= (and b!4025802 (not res!1638377)) b!4025810))

(assert (= (and b!4025810 (not res!1638382)) b!4025791))

(assert (= (and start!379156 ((_ is Cons!43111) prefix!494)) b!4025804))

(assert (= b!4025788 b!4025797))

(assert (= b!4025806 b!4025788))

(assert (= start!379156 b!4025806))

(assert (= (and start!379156 ((_ is Cons!43111) suffixResult!105)) b!4025792))

(assert (= (and start!379156 ((_ is Cons!43111) suffix!1299)) b!4025789))

(assert (= (and start!379156 ((_ is Cons!43111) newSuffix!27)) b!4025790))

(assert (= b!4025807 b!4025786))

(assert (= b!4025798 b!4025807))

(assert (= (and start!379156 ((_ is Cons!43113) rules!2999)) b!4025798))

(assert (= (and start!379156 ((_ is Cons!43111) newSuffixResult!27)) b!4025796))

(declare-fun m!4616953 () Bool)

(assert (=> b!4025799 m!4616953))

(declare-fun m!4616955 () Bool)

(assert (=> b!4025799 m!4616955))

(declare-fun m!4616957 () Bool)

(assert (=> b!4025799 m!4616957))

(declare-fun m!4616959 () Bool)

(assert (=> b!4025799 m!4616959))

(declare-fun m!4616961 () Bool)

(assert (=> b!4025794 m!4616961))

(declare-fun m!4616963 () Bool)

(assert (=> b!4025803 m!4616963))

(declare-fun m!4616965 () Bool)

(assert (=> b!4025803 m!4616965))

(declare-fun m!4616967 () Bool)

(assert (=> b!4025793 m!4616967))

(declare-fun m!4616969 () Bool)

(assert (=> b!4025785 m!4616969))

(declare-fun m!4616971 () Bool)

(assert (=> b!4025785 m!4616971))

(declare-fun m!4616973 () Bool)

(assert (=> b!4025785 m!4616973))

(declare-fun m!4616975 () Bool)

(assert (=> b!4025785 m!4616975))

(declare-fun m!4616977 () Bool)

(assert (=> b!4025791 m!4616977))

(declare-fun m!4616979 () Bool)

(assert (=> b!4025791 m!4616979))

(declare-fun m!4616981 () Bool)

(assert (=> b!4025791 m!4616981))

(declare-fun m!4616983 () Bool)

(assert (=> b!4025787 m!4616983))

(declare-fun m!4616985 () Bool)

(assert (=> b!4025787 m!4616985))

(declare-fun m!4616987 () Bool)

(assert (=> b!4025787 m!4616987))

(declare-fun m!4616989 () Bool)

(assert (=> b!4025787 m!4616989))

(declare-fun m!4616991 () Bool)

(assert (=> b!4025809 m!4616991))

(declare-fun m!4616993 () Bool)

(assert (=> b!4025809 m!4616993))

(declare-fun m!4616995 () Bool)

(assert (=> b!4025807 m!4616995))

(declare-fun m!4616997 () Bool)

(assert (=> b!4025807 m!4616997))

(declare-fun m!4616999 () Bool)

(assert (=> start!379156 m!4616999))

(declare-fun m!4617001 () Bool)

(assert (=> b!4025810 m!4617001))

(declare-fun m!4617003 () Bool)

(assert (=> b!4025805 m!4617003))

(declare-fun m!4617005 () Bool)

(assert (=> b!4025805 m!4617005))

(declare-fun m!4617007 () Bool)

(assert (=> b!4025795 m!4617007))

(declare-fun m!4617009 () Bool)

(assert (=> b!4025795 m!4617009))

(declare-fun m!4617011 () Bool)

(assert (=> b!4025795 m!4617011))

(declare-fun m!4617013 () Bool)

(assert (=> b!4025795 m!4617013))

(declare-fun m!4617015 () Bool)

(assert (=> b!4025795 m!4617015))

(declare-fun m!4617017 () Bool)

(assert (=> b!4025800 m!4617017))

(declare-fun m!4617019 () Bool)

(assert (=> b!4025800 m!4617019))

(declare-fun m!4617021 () Bool)

(assert (=> b!4025800 m!4617021))

(assert (=> b!4025800 m!4617021))

(declare-fun m!4617023 () Bool)

(assert (=> b!4025800 m!4617023))

(declare-fun m!4617025 () Bool)

(assert (=> b!4025808 m!4617025))

(declare-fun m!4617027 () Bool)

(assert (=> b!4025801 m!4617027))

(declare-fun m!4617029 () Bool)

(assert (=> b!4025801 m!4617029))

(declare-fun m!4617031 () Bool)

(assert (=> b!4025801 m!4617031))

(declare-fun m!4617033 () Bool)

(assert (=> b!4025801 m!4617033))

(declare-fun m!4617035 () Bool)

(assert (=> b!4025806 m!4617035))

(declare-fun m!4617037 () Bool)

(assert (=> b!4025788 m!4617037))

(declare-fun m!4617039 () Bool)

(assert (=> b!4025788 m!4617039))

(check-sat (not b!4025800) (not b!4025798) (not b!4025809) (not b_next!112811) (not b!4025792) b_and!309303 (not b!4025803) (not b!4025810) (not b!4025808) b_and!309307 (not b!4025799) (not b!4025785) (not b!4025805) (not b!4025794) (not b!4025807) (not start!379156) (not b!4025801) b_and!309309 (not b_next!112813) (not b!4025787) (not b!4025789) (not b!4025790) (not b_next!112815) (not b!4025795) (not b!4025804) (not b!4025793) b_and!309305 (not b_next!112809) (not b!4025796) tp_is_empty!20549 (not b!4025788) (not b!4025791) (not b!4025806))
(check-sat (not b_next!112811) (not b_next!112815) b_and!309303 b_and!309305 (not b_next!112809) b_and!309307 b_and!309309 (not b_next!112813))
(get-model)

(declare-fun d!1192105 () Bool)

(declare-fun lt!1430306 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6546 (List!43237) (InoxSet Rule!13568))

(assert (=> d!1192105 (= lt!1430306 (select (content!6546 rules!2999) (rule!9940 token!484)))))

(declare-fun e!2497623 () Bool)

(assert (=> d!1192105 (= lt!1430306 e!2497623)))

(declare-fun res!1638431 () Bool)

(assert (=> d!1192105 (=> (not res!1638431) (not e!2497623))))

(assert (=> d!1192105 (= res!1638431 ((_ is Cons!43113) rules!2999))))

(assert (=> d!1192105 (= (contains!8564 rules!2999 (rule!9940 token!484)) lt!1430306)))

(declare-fun b!4025871 () Bool)

(declare-fun e!2497622 () Bool)

(assert (=> b!4025871 (= e!2497623 e!2497622)))

(declare-fun res!1638430 () Bool)

(assert (=> b!4025871 (=> res!1638430 e!2497622)))

(assert (=> b!4025871 (= res!1638430 (= (h!48533 rules!2999) (rule!9940 token!484)))))

(declare-fun b!4025872 () Bool)

(assert (=> b!4025872 (= e!2497622 (contains!8564 (t!333914 rules!2999) (rule!9940 token!484)))))

(assert (= (and d!1192105 res!1638431) b!4025871))

(assert (= (and b!4025871 (not res!1638430)) b!4025872))

(declare-fun m!4617099 () Bool)

(assert (=> d!1192105 m!4617099))

(declare-fun m!4617101 () Bool)

(assert (=> d!1192105 m!4617101))

(declare-fun m!4617103 () Bool)

(assert (=> b!4025872 m!4617103))

(assert (=> b!4025785 d!1192105))

(declare-fun d!1192113 () Bool)

(assert (=> d!1192113 (= lt!1430270 suffixResult!105)))

(declare-fun lt!1430312 () Unit!62274)

(declare-fun choose!24350 (List!43235 List!43235 List!43235 List!43235 List!43235) Unit!62274)

(assert (=> d!1192113 (= lt!1430312 (choose!24350 lt!1430280 lt!1430270 lt!1430280 suffixResult!105 lt!1430273))))

(assert (=> d!1192113 (isPrefix!3971 lt!1430280 lt!1430273)))

(assert (=> d!1192113 (= (lemmaSamePrefixThenSameSuffix!2132 lt!1430280 lt!1430270 lt!1430280 suffixResult!105 lt!1430273) lt!1430312)))

(declare-fun bs!590027 () Bool)

(assert (= bs!590027 d!1192113))

(declare-fun m!4617111 () Bool)

(assert (=> bs!590027 m!4617111))

(assert (=> bs!590027 m!4617013))

(assert (=> b!4025785 d!1192113))

(declare-fun b!4025888 () Bool)

(declare-fun res!1638448 () Bool)

(declare-fun e!2497633 () Bool)

(assert (=> b!4025888 (=> (not res!1638448) (not e!2497633))))

(declare-fun head!8537 (List!43235) C!23764)

(assert (=> b!4025888 (= res!1638448 (= (head!8537 lt!1430280) (head!8537 lt!1430281)))))

(declare-fun b!4025887 () Bool)

(declare-fun e!2497635 () Bool)

(assert (=> b!4025887 (= e!2497635 e!2497633)))

(declare-fun res!1638447 () Bool)

(assert (=> b!4025887 (=> (not res!1638447) (not e!2497633))))

(assert (=> b!4025887 (= res!1638447 (not ((_ is Nil!43111) lt!1430281)))))

(declare-fun b!4025890 () Bool)

(declare-fun e!2497634 () Bool)

(assert (=> b!4025890 (= e!2497634 (>= (size!32226 lt!1430281) (size!32226 lt!1430280)))))

(declare-fun b!4025889 () Bool)

(declare-fun tail!6269 (List!43235) List!43235)

(assert (=> b!4025889 (= e!2497633 (isPrefix!3971 (tail!6269 lt!1430280) (tail!6269 lt!1430281)))))

(declare-fun d!1192119 () Bool)

(assert (=> d!1192119 e!2497634))

(declare-fun res!1638449 () Bool)

(assert (=> d!1192119 (=> res!1638449 e!2497634)))

(declare-fun lt!1430315 () Bool)

(assert (=> d!1192119 (= res!1638449 (not lt!1430315))))

(assert (=> d!1192119 (= lt!1430315 e!2497635)))

(declare-fun res!1638446 () Bool)

(assert (=> d!1192119 (=> res!1638446 e!2497635)))

(assert (=> d!1192119 (= res!1638446 ((_ is Nil!43111) lt!1430280))))

(assert (=> d!1192119 (= (isPrefix!3971 lt!1430280 lt!1430281) lt!1430315)))

(assert (= (and d!1192119 (not res!1638446)) b!4025887))

(assert (= (and b!4025887 res!1638447) b!4025888))

(assert (= (and b!4025888 res!1638448) b!4025889))

(assert (= (and d!1192119 (not res!1638449)) b!4025890))

(declare-fun m!4617113 () Bool)

(assert (=> b!4025888 m!4617113))

(declare-fun m!4617115 () Bool)

(assert (=> b!4025888 m!4617115))

(declare-fun m!4617117 () Bool)

(assert (=> b!4025890 m!4617117))

(assert (=> b!4025890 m!4617017))

(declare-fun m!4617119 () Bool)

(assert (=> b!4025889 m!4617119))

(declare-fun m!4617121 () Bool)

(assert (=> b!4025889 m!4617121))

(assert (=> b!4025889 m!4617119))

(assert (=> b!4025889 m!4617121))

(declare-fun m!4617123 () Bool)

(assert (=> b!4025889 m!4617123))

(assert (=> b!4025785 d!1192119))

(declare-fun d!1192121 () Bool)

(assert (=> d!1192121 (isPrefix!3971 lt!1430280 (++!11286 lt!1430280 lt!1430270))))

(declare-fun lt!1430318 () Unit!62274)

(declare-fun choose!24351 (List!43235 List!43235) Unit!62274)

(assert (=> d!1192121 (= lt!1430318 (choose!24351 lt!1430280 lt!1430270))))

(assert (=> d!1192121 (= (lemmaConcatTwoListThenFirstIsPrefix!2806 lt!1430280 lt!1430270) lt!1430318)))

(declare-fun bs!590028 () Bool)

(assert (= bs!590028 d!1192121))

(assert (=> bs!590028 m!4616953))

(assert (=> bs!590028 m!4616953))

(declare-fun m!4617125 () Bool)

(assert (=> bs!590028 m!4617125))

(declare-fun m!4617127 () Bool)

(assert (=> bs!590028 m!4617127))

(assert (=> b!4025785 d!1192121))

(declare-fun d!1192123 () Bool)

(assert (=> d!1192123 (= (inv!57585 (tag!7744 (h!48533 rules!2999))) (= (mod (str.len (value!216827 (tag!7744 (h!48533 rules!2999)))) 2) 0))))

(assert (=> b!4025807 d!1192123))

(declare-fun d!1192125 () Bool)

(declare-fun res!1638464 () Bool)

(declare-fun e!2497644 () Bool)

(assert (=> d!1192125 (=> (not res!1638464) (not e!2497644))))

(declare-fun semiInverseModEq!2942 (Int Int) Bool)

(assert (=> d!1192125 (= res!1638464 (semiInverseModEq!2942 (toChars!9259 (transformation!6884 (h!48533 rules!2999))) (toValue!9400 (transformation!6884 (h!48533 rules!2999)))))))

(assert (=> d!1192125 (= (inv!57589 (transformation!6884 (h!48533 rules!2999))) e!2497644)))

(declare-fun b!4025907 () Bool)

(declare-fun equivClasses!2841 (Int Int) Bool)

(assert (=> b!4025907 (= e!2497644 (equivClasses!2841 (toChars!9259 (transformation!6884 (h!48533 rules!2999))) (toValue!9400 (transformation!6884 (h!48533 rules!2999)))))))

(assert (= (and d!1192125 res!1638464) b!4025907))

(declare-fun m!4617129 () Bool)

(assert (=> d!1192125 m!4617129))

(declare-fun m!4617131 () Bool)

(assert (=> b!4025907 m!4617131))

(assert (=> b!4025807 d!1192125))

(declare-fun bm!286769 () Bool)

(declare-fun call!286774 () Option!9298)

(declare-fun maxPrefixOneRule!2783 (LexerInterface!6473 Rule!13568 List!43235) Option!9298)

(assert (=> bm!286769 (= call!286774 (maxPrefixOneRule!2783 thiss!21717 (h!48533 rules!2999) lt!1430273))))

(declare-fun b!4026009 () Bool)

(declare-fun res!1638537 () Bool)

(declare-fun e!2497703 () Bool)

(assert (=> b!4026009 (=> (not res!1638537) (not e!2497703))))

(declare-fun lt!1430379 () Option!9298)

(declare-fun matchR!5742 (Regex!11789 List!43235) Bool)

(declare-fun get!14154 (Option!9298) tuple2!42214)

(assert (=> b!4026009 (= res!1638537 (matchR!5742 (regex!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379)))) (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379))))))))

(declare-fun d!1192127 () Bool)

(declare-fun e!2497702 () Bool)

(assert (=> d!1192127 e!2497702))

(declare-fun res!1638534 () Bool)

(assert (=> d!1192127 (=> res!1638534 e!2497702)))

(declare-fun isEmpty!25741 (Option!9298) Bool)

(assert (=> d!1192127 (= res!1638534 (isEmpty!25741 lt!1430379))))

(declare-fun e!2497704 () Option!9298)

(assert (=> d!1192127 (= lt!1430379 e!2497704)))

(declare-fun c!695569 () Bool)

(assert (=> d!1192127 (= c!695569 (and ((_ is Cons!43113) rules!2999) ((_ is Nil!43113) (t!333914 rules!2999))))))

(declare-fun lt!1430381 () Unit!62274)

(declare-fun lt!1430377 () Unit!62274)

(assert (=> d!1192127 (= lt!1430381 lt!1430377)))

(assert (=> d!1192127 (isPrefix!3971 lt!1430273 lt!1430273)))

(declare-fun lemmaIsPrefixRefl!2538 (List!43235 List!43235) Unit!62274)

(assert (=> d!1192127 (= lt!1430377 (lemmaIsPrefixRefl!2538 lt!1430273 lt!1430273))))

(declare-fun rulesValidInductive!2509 (LexerInterface!6473 List!43237) Bool)

(assert (=> d!1192127 (rulesValidInductive!2509 thiss!21717 rules!2999)))

(assert (=> d!1192127 (= (maxPrefix!3771 thiss!21717 rules!2999 lt!1430273) lt!1430379)))

(declare-fun b!4026010 () Bool)

(declare-fun res!1638535 () Bool)

(assert (=> b!4026010 (=> (not res!1638535) (not e!2497703))))

(assert (=> b!4026010 (= res!1638535 (< (size!32226 (_2!24241 (get!14154 lt!1430379))) (size!32226 lt!1430273)))))

(declare-fun b!4026011 () Bool)

(assert (=> b!4026011 (= e!2497704 call!286774)))

(declare-fun b!4026012 () Bool)

(declare-fun lt!1430380 () Option!9298)

(declare-fun lt!1430378 () Option!9298)

(assert (=> b!4026012 (= e!2497704 (ite (and ((_ is None!9297) lt!1430380) ((_ is None!9297) lt!1430378)) None!9297 (ite ((_ is None!9297) lt!1430378) lt!1430380 (ite ((_ is None!9297) lt!1430380) lt!1430378 (ite (>= (size!32225 (_1!24241 (v!39681 lt!1430380))) (size!32225 (_1!24241 (v!39681 lt!1430378)))) lt!1430380 lt!1430378)))))))

(assert (=> b!4026012 (= lt!1430380 call!286774)))

(assert (=> b!4026012 (= lt!1430378 (maxPrefix!3771 thiss!21717 (t!333914 rules!2999) lt!1430273))))

(declare-fun b!4026013 () Bool)

(assert (=> b!4026013 (= e!2497702 e!2497703)))

(declare-fun res!1638536 () Bool)

(assert (=> b!4026013 (=> (not res!1638536) (not e!2497703))))

(declare-fun isDefined!7088 (Option!9298) Bool)

(assert (=> b!4026013 (= res!1638536 (isDefined!7088 lt!1430379))))

(declare-fun b!4026014 () Bool)

(assert (=> b!4026014 (= e!2497703 (contains!8564 rules!2999 (rule!9940 (_1!24241 (get!14154 lt!1430379)))))))

(declare-fun b!4026015 () Bool)

(declare-fun res!1638531 () Bool)

(assert (=> b!4026015 (=> (not res!1638531) (not e!2497703))))

(assert (=> b!4026015 (= res!1638531 (= (value!216828 (_1!24241 (get!14154 lt!1430379))) (apply!10073 (transformation!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379)))) (seqFromList!5101 (originalCharacters!7484 (_1!24241 (get!14154 lt!1430379)))))))))

(declare-fun b!4026016 () Bool)

(declare-fun res!1638532 () Bool)

(assert (=> b!4026016 (=> (not res!1638532) (not e!2497703))))

(assert (=> b!4026016 (= res!1638532 (= (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379)))) (originalCharacters!7484 (_1!24241 (get!14154 lt!1430379)))))))

(declare-fun b!4026017 () Bool)

(declare-fun res!1638533 () Bool)

(assert (=> b!4026017 (=> (not res!1638533) (not e!2497703))))

(assert (=> b!4026017 (= res!1638533 (= (++!11286 (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379)))) (_2!24241 (get!14154 lt!1430379))) lt!1430273))))

(assert (= (and d!1192127 c!695569) b!4026011))

(assert (= (and d!1192127 (not c!695569)) b!4026012))

(assert (= (or b!4026011 b!4026012) bm!286769))

(assert (= (and d!1192127 (not res!1638534)) b!4026013))

(assert (= (and b!4026013 res!1638536) b!4026016))

(assert (= (and b!4026016 res!1638532) b!4026010))

(assert (= (and b!4026010 res!1638535) b!4026017))

(assert (= (and b!4026017 res!1638533) b!4026015))

(assert (= (and b!4026015 res!1638531) b!4026009))

(assert (= (and b!4026009 res!1638537) b!4026014))

(declare-fun m!4617289 () Bool)

(assert (=> b!4026012 m!4617289))

(declare-fun m!4617291 () Bool)

(assert (=> bm!286769 m!4617291))

(declare-fun m!4617293 () Bool)

(assert (=> b!4026009 m!4617293))

(declare-fun m!4617295 () Bool)

(assert (=> b!4026009 m!4617295))

(assert (=> b!4026009 m!4617295))

(declare-fun m!4617297 () Bool)

(assert (=> b!4026009 m!4617297))

(assert (=> b!4026009 m!4617297))

(declare-fun m!4617299 () Bool)

(assert (=> b!4026009 m!4617299))

(assert (=> b!4026014 m!4617293))

(declare-fun m!4617301 () Bool)

(assert (=> b!4026014 m!4617301))

(declare-fun m!4617303 () Bool)

(assert (=> b!4026013 m!4617303))

(assert (=> b!4026016 m!4617293))

(assert (=> b!4026016 m!4617295))

(assert (=> b!4026016 m!4617295))

(assert (=> b!4026016 m!4617297))

(assert (=> b!4026010 m!4617293))

(declare-fun m!4617305 () Bool)

(assert (=> b!4026010 m!4617305))

(declare-fun m!4617307 () Bool)

(assert (=> b!4026010 m!4617307))

(assert (=> b!4026017 m!4617293))

(assert (=> b!4026017 m!4617295))

(assert (=> b!4026017 m!4617295))

(assert (=> b!4026017 m!4617297))

(assert (=> b!4026017 m!4617297))

(declare-fun m!4617309 () Bool)

(assert (=> b!4026017 m!4617309))

(declare-fun m!4617311 () Bool)

(assert (=> d!1192127 m!4617311))

(declare-fun m!4617313 () Bool)

(assert (=> d!1192127 m!4617313))

(declare-fun m!4617315 () Bool)

(assert (=> d!1192127 m!4617315))

(declare-fun m!4617317 () Bool)

(assert (=> d!1192127 m!4617317))

(assert (=> b!4026015 m!4617293))

(declare-fun m!4617319 () Bool)

(assert (=> b!4026015 m!4617319))

(assert (=> b!4026015 m!4617319))

(declare-fun m!4617321 () Bool)

(assert (=> b!4026015 m!4617321))

(assert (=> b!4025805 d!1192127))

(declare-fun b!4026027 () Bool)

(declare-fun e!2497710 () List!43235)

(assert (=> b!4026027 (= e!2497710 (Cons!43111 (h!48531 prefix!494) (++!11286 (t!333912 prefix!494) suffix!1299)))))

(declare-fun d!1192189 () Bool)

(declare-fun e!2497709 () Bool)

(assert (=> d!1192189 e!2497709))

(declare-fun res!1638542 () Bool)

(assert (=> d!1192189 (=> (not res!1638542) (not e!2497709))))

(declare-fun lt!1430384 () List!43235)

(declare-fun content!6548 (List!43235) (InoxSet C!23764))

(assert (=> d!1192189 (= res!1638542 (= (content!6548 lt!1430384) ((_ map or) (content!6548 prefix!494) (content!6548 suffix!1299))))))

(assert (=> d!1192189 (= lt!1430384 e!2497710)))

(declare-fun c!695572 () Bool)

(assert (=> d!1192189 (= c!695572 ((_ is Nil!43111) prefix!494))))

(assert (=> d!1192189 (= (++!11286 prefix!494 suffix!1299) lt!1430384)))

(declare-fun b!4026028 () Bool)

(declare-fun res!1638543 () Bool)

(assert (=> b!4026028 (=> (not res!1638543) (not e!2497709))))

(assert (=> b!4026028 (= res!1638543 (= (size!32226 lt!1430384) (+ (size!32226 prefix!494) (size!32226 suffix!1299))))))

(declare-fun b!4026029 () Bool)

(assert (=> b!4026029 (= e!2497709 (or (not (= suffix!1299 Nil!43111)) (= lt!1430384 prefix!494)))))

(declare-fun b!4026026 () Bool)

(assert (=> b!4026026 (= e!2497710 suffix!1299)))

(assert (= (and d!1192189 c!695572) b!4026026))

(assert (= (and d!1192189 (not c!695572)) b!4026027))

(assert (= (and d!1192189 res!1638542) b!4026028))

(assert (= (and b!4026028 res!1638543) b!4026029))

(declare-fun m!4617323 () Bool)

(assert (=> b!4026027 m!4617323))

(declare-fun m!4617325 () Bool)

(assert (=> d!1192189 m!4617325))

(declare-fun m!4617327 () Bool)

(assert (=> d!1192189 m!4617327))

(declare-fun m!4617329 () Bool)

(assert (=> d!1192189 m!4617329))

(declare-fun m!4617331 () Bool)

(assert (=> b!4026028 m!4617331))

(assert (=> b!4026028 m!4617019))

(assert (=> b!4026028 m!4616963))

(assert (=> b!4025805 d!1192189))

(declare-fun b!4026031 () Bool)

(declare-fun res!1638546 () Bool)

(declare-fun e!2497711 () Bool)

(assert (=> b!4026031 (=> (not res!1638546) (not e!2497711))))

(assert (=> b!4026031 (= res!1638546 (= (head!8537 prefix!494) (head!8537 lt!1430273)))))

(declare-fun b!4026030 () Bool)

(declare-fun e!2497713 () Bool)

(assert (=> b!4026030 (= e!2497713 e!2497711)))

(declare-fun res!1638545 () Bool)

(assert (=> b!4026030 (=> (not res!1638545) (not e!2497711))))

(assert (=> b!4026030 (= res!1638545 (not ((_ is Nil!43111) lt!1430273)))))

(declare-fun b!4026033 () Bool)

(declare-fun e!2497712 () Bool)

(assert (=> b!4026033 (= e!2497712 (>= (size!32226 lt!1430273) (size!32226 prefix!494)))))

(declare-fun b!4026032 () Bool)

(assert (=> b!4026032 (= e!2497711 (isPrefix!3971 (tail!6269 prefix!494) (tail!6269 lt!1430273)))))

(declare-fun d!1192191 () Bool)

(assert (=> d!1192191 e!2497712))

(declare-fun res!1638547 () Bool)

(assert (=> d!1192191 (=> res!1638547 e!2497712)))

(declare-fun lt!1430385 () Bool)

(assert (=> d!1192191 (= res!1638547 (not lt!1430385))))

(assert (=> d!1192191 (= lt!1430385 e!2497713)))

(declare-fun res!1638544 () Bool)

(assert (=> d!1192191 (=> res!1638544 e!2497713)))

(assert (=> d!1192191 (= res!1638544 ((_ is Nil!43111) prefix!494))))

(assert (=> d!1192191 (= (isPrefix!3971 prefix!494 lt!1430273) lt!1430385)))

(assert (= (and d!1192191 (not res!1638544)) b!4026030))

(assert (= (and b!4026030 res!1638545) b!4026031))

(assert (= (and b!4026031 res!1638546) b!4026032))

(assert (= (and d!1192191 (not res!1638547)) b!4026033))

(declare-fun m!4617333 () Bool)

(assert (=> b!4026031 m!4617333))

(declare-fun m!4617335 () Bool)

(assert (=> b!4026031 m!4617335))

(assert (=> b!4026033 m!4617307))

(assert (=> b!4026033 m!4617019))

(declare-fun m!4617337 () Bool)

(assert (=> b!4026032 m!4617337))

(declare-fun m!4617339 () Bool)

(assert (=> b!4026032 m!4617339))

(assert (=> b!4026032 m!4617337))

(assert (=> b!4026032 m!4617339))

(declare-fun m!4617341 () Bool)

(assert (=> b!4026032 m!4617341))

(assert (=> b!4025795 d!1192191))

(declare-fun b!4026035 () Bool)

(declare-fun res!1638550 () Bool)

(declare-fun e!2497714 () Bool)

(assert (=> b!4026035 (=> (not res!1638550) (not e!2497714))))

(assert (=> b!4026035 (= res!1638550 (= (head!8537 lt!1430280) (head!8537 lt!1430273)))))

(declare-fun b!4026034 () Bool)

(declare-fun e!2497716 () Bool)

(assert (=> b!4026034 (= e!2497716 e!2497714)))

(declare-fun res!1638549 () Bool)

(assert (=> b!4026034 (=> (not res!1638549) (not e!2497714))))

(assert (=> b!4026034 (= res!1638549 (not ((_ is Nil!43111) lt!1430273)))))

(declare-fun b!4026037 () Bool)

(declare-fun e!2497715 () Bool)

(assert (=> b!4026037 (= e!2497715 (>= (size!32226 lt!1430273) (size!32226 lt!1430280)))))

(declare-fun b!4026036 () Bool)

(assert (=> b!4026036 (= e!2497714 (isPrefix!3971 (tail!6269 lt!1430280) (tail!6269 lt!1430273)))))

(declare-fun d!1192193 () Bool)

(assert (=> d!1192193 e!2497715))

(declare-fun res!1638551 () Bool)

(assert (=> d!1192193 (=> res!1638551 e!2497715)))

(declare-fun lt!1430386 () Bool)

(assert (=> d!1192193 (= res!1638551 (not lt!1430386))))

(assert (=> d!1192193 (= lt!1430386 e!2497716)))

(declare-fun res!1638548 () Bool)

(assert (=> d!1192193 (=> res!1638548 e!2497716)))

(assert (=> d!1192193 (= res!1638548 ((_ is Nil!43111) lt!1430280))))

(assert (=> d!1192193 (= (isPrefix!3971 lt!1430280 lt!1430273) lt!1430386)))

(assert (= (and d!1192193 (not res!1638548)) b!4026034))

(assert (= (and b!4026034 res!1638549) b!4026035))

(assert (= (and b!4026035 res!1638550) b!4026036))

(assert (= (and d!1192193 (not res!1638551)) b!4026037))

(assert (=> b!4026035 m!4617113))

(assert (=> b!4026035 m!4617335))

(assert (=> b!4026037 m!4617307))

(assert (=> b!4026037 m!4617017))

(assert (=> b!4026036 m!4617119))

(assert (=> b!4026036 m!4617339))

(assert (=> b!4026036 m!4617119))

(assert (=> b!4026036 m!4617339))

(declare-fun m!4617343 () Bool)

(assert (=> b!4026036 m!4617343))

(assert (=> b!4025795 d!1192193))

(declare-fun d!1192195 () Bool)

(assert (=> d!1192195 (isPrefix!3971 lt!1430280 (++!11286 lt!1430280 suffixResult!105))))

(declare-fun lt!1430387 () Unit!62274)

(assert (=> d!1192195 (= lt!1430387 (choose!24351 lt!1430280 suffixResult!105))))

(assert (=> d!1192195 (= (lemmaConcatTwoListThenFirstIsPrefix!2806 lt!1430280 suffixResult!105) lt!1430387)))

(declare-fun bs!590035 () Bool)

(assert (= bs!590035 d!1192195))

(assert (=> bs!590035 m!4617027))

(assert (=> bs!590035 m!4617027))

(declare-fun m!4617345 () Bool)

(assert (=> bs!590035 m!4617345))

(declare-fun m!4617347 () Bool)

(assert (=> bs!590035 m!4617347))

(assert (=> b!4025795 d!1192195))

(declare-fun d!1192197 () Bool)

(assert (=> d!1192197 (isPrefix!3971 prefix!494 (++!11286 prefix!494 suffix!1299))))

(declare-fun lt!1430388 () Unit!62274)

(assert (=> d!1192197 (= lt!1430388 (choose!24351 prefix!494 suffix!1299))))

(assert (=> d!1192197 (= (lemmaConcatTwoListThenFirstIsPrefix!2806 prefix!494 suffix!1299) lt!1430388)))

(declare-fun bs!590036 () Bool)

(assert (= bs!590036 d!1192197))

(assert (=> bs!590036 m!4617005))

(assert (=> bs!590036 m!4617005))

(declare-fun m!4617349 () Bool)

(assert (=> bs!590036 m!4617349))

(declare-fun m!4617351 () Bool)

(assert (=> bs!590036 m!4617351))

(assert (=> b!4025795 d!1192197))

(declare-fun b!4026039 () Bool)

(declare-fun res!1638554 () Bool)

(declare-fun e!2497717 () Bool)

(assert (=> b!4026039 (=> (not res!1638554) (not e!2497717))))

(assert (=> b!4026039 (= res!1638554 (= (head!8537 lt!1430280) (head!8537 lt!1430278)))))

(declare-fun b!4026038 () Bool)

(declare-fun e!2497719 () Bool)

(assert (=> b!4026038 (= e!2497719 e!2497717)))

(declare-fun res!1638553 () Bool)

(assert (=> b!4026038 (=> (not res!1638553) (not e!2497717))))

(assert (=> b!4026038 (= res!1638553 (not ((_ is Nil!43111) lt!1430278)))))

(declare-fun b!4026041 () Bool)

(declare-fun e!2497718 () Bool)

(assert (=> b!4026041 (= e!2497718 (>= (size!32226 lt!1430278) (size!32226 lt!1430280)))))

(declare-fun b!4026040 () Bool)

(assert (=> b!4026040 (= e!2497717 (isPrefix!3971 (tail!6269 lt!1430280) (tail!6269 lt!1430278)))))

(declare-fun d!1192199 () Bool)

(assert (=> d!1192199 e!2497718))

(declare-fun res!1638555 () Bool)

(assert (=> d!1192199 (=> res!1638555 e!2497718)))

(declare-fun lt!1430389 () Bool)

(assert (=> d!1192199 (= res!1638555 (not lt!1430389))))

(assert (=> d!1192199 (= lt!1430389 e!2497719)))

(declare-fun res!1638552 () Bool)

(assert (=> d!1192199 (=> res!1638552 e!2497719)))

(assert (=> d!1192199 (= res!1638552 ((_ is Nil!43111) lt!1430280))))

(assert (=> d!1192199 (= (isPrefix!3971 lt!1430280 lt!1430278) lt!1430389)))

(assert (= (and d!1192199 (not res!1638552)) b!4026038))

(assert (= (and b!4026038 res!1638553) b!4026039))

(assert (= (and b!4026039 res!1638554) b!4026040))

(assert (= (and d!1192199 (not res!1638555)) b!4026041))

(assert (=> b!4026039 m!4617113))

(declare-fun m!4617353 () Bool)

(assert (=> b!4026039 m!4617353))

(declare-fun m!4617355 () Bool)

(assert (=> b!4026041 m!4617355))

(assert (=> b!4026041 m!4617017))

(assert (=> b!4026040 m!4617119))

(declare-fun m!4617357 () Bool)

(assert (=> b!4026040 m!4617357))

(assert (=> b!4026040 m!4617119))

(assert (=> b!4026040 m!4617357))

(declare-fun m!4617359 () Bool)

(assert (=> b!4026040 m!4617359))

(assert (=> b!4025795 d!1192199))

(declare-fun d!1192201 () Bool)

(declare-fun c!695577 () Bool)

(assert (=> d!1192201 (= c!695577 ((_ is IntegerValue!21342) (value!216828 token!484)))))

(declare-fun e!2497726 () Bool)

(assert (=> d!1192201 (= (inv!21 (value!216828 token!484)) e!2497726)))

(declare-fun b!4026052 () Bool)

(declare-fun e!2497727 () Bool)

(declare-fun inv!17 (TokenValue!7114) Bool)

(assert (=> b!4026052 (= e!2497727 (inv!17 (value!216828 token!484)))))

(declare-fun b!4026053 () Bool)

(declare-fun e!2497728 () Bool)

(declare-fun inv!15 (TokenValue!7114) Bool)

(assert (=> b!4026053 (= e!2497728 (inv!15 (value!216828 token!484)))))

(declare-fun b!4026054 () Bool)

(declare-fun res!1638558 () Bool)

(assert (=> b!4026054 (=> res!1638558 e!2497728)))

(assert (=> b!4026054 (= res!1638558 (not ((_ is IntegerValue!21344) (value!216828 token!484))))))

(assert (=> b!4026054 (= e!2497727 e!2497728)))

(declare-fun b!4026055 () Bool)

(declare-fun inv!16 (TokenValue!7114) Bool)

(assert (=> b!4026055 (= e!2497726 (inv!16 (value!216828 token!484)))))

(declare-fun b!4026056 () Bool)

(assert (=> b!4026056 (= e!2497726 e!2497727)))

(declare-fun c!695578 () Bool)

(assert (=> b!4026056 (= c!695578 ((_ is IntegerValue!21343) (value!216828 token!484)))))

(assert (= (and d!1192201 c!695577) b!4026055))

(assert (= (and d!1192201 (not c!695577)) b!4026056))

(assert (= (and b!4026056 c!695578) b!4026052))

(assert (= (and b!4026056 (not c!695578)) b!4026054))

(assert (= (and b!4026054 (not res!1638558)) b!4026053))

(declare-fun m!4617361 () Bool)

(assert (=> b!4026052 m!4617361))

(declare-fun m!4617363 () Bool)

(assert (=> b!4026053 m!4617363))

(declare-fun m!4617365 () Bool)

(assert (=> b!4026055 m!4617365))

(assert (=> b!4025806 d!1192201))

(declare-fun b!4026058 () Bool)

(declare-fun res!1638561 () Bool)

(declare-fun e!2497729 () Bool)

(assert (=> b!4026058 (=> (not res!1638561) (not e!2497729))))

(assert (=> b!4026058 (= res!1638561 (= (head!8537 newSuffix!27) (head!8537 suffix!1299)))))

(declare-fun b!4026057 () Bool)

(declare-fun e!2497731 () Bool)

(assert (=> b!4026057 (= e!2497731 e!2497729)))

(declare-fun res!1638560 () Bool)

(assert (=> b!4026057 (=> (not res!1638560) (not e!2497729))))

(assert (=> b!4026057 (= res!1638560 (not ((_ is Nil!43111) suffix!1299)))))

(declare-fun b!4026060 () Bool)

(declare-fun e!2497730 () Bool)

(assert (=> b!4026060 (= e!2497730 (>= (size!32226 suffix!1299) (size!32226 newSuffix!27)))))

(declare-fun b!4026059 () Bool)

(assert (=> b!4026059 (= e!2497729 (isPrefix!3971 (tail!6269 newSuffix!27) (tail!6269 suffix!1299)))))

(declare-fun d!1192203 () Bool)

(assert (=> d!1192203 e!2497730))

(declare-fun res!1638562 () Bool)

(assert (=> d!1192203 (=> res!1638562 e!2497730)))

(declare-fun lt!1430390 () Bool)

(assert (=> d!1192203 (= res!1638562 (not lt!1430390))))

(assert (=> d!1192203 (= lt!1430390 e!2497731)))

(declare-fun res!1638559 () Bool)

(assert (=> d!1192203 (=> res!1638559 e!2497731)))

(assert (=> d!1192203 (= res!1638559 ((_ is Nil!43111) newSuffix!27))))

(assert (=> d!1192203 (= (isPrefix!3971 newSuffix!27 suffix!1299) lt!1430390)))

(assert (= (and d!1192203 (not res!1638559)) b!4026057))

(assert (= (and b!4026057 res!1638560) b!4026058))

(assert (= (and b!4026058 res!1638561) b!4026059))

(assert (= (and d!1192203 (not res!1638562)) b!4026060))

(declare-fun m!4617367 () Bool)

(assert (=> b!4026058 m!4617367))

(declare-fun m!4617369 () Bool)

(assert (=> b!4026058 m!4617369))

(assert (=> b!4026060 m!4616963))

(assert (=> b!4026060 m!4616965))

(declare-fun m!4617371 () Bool)

(assert (=> b!4026059 m!4617371))

(declare-fun m!4617373 () Bool)

(assert (=> b!4026059 m!4617373))

(assert (=> b!4026059 m!4617371))

(assert (=> b!4026059 m!4617373))

(declare-fun m!4617375 () Bool)

(assert (=> b!4026059 m!4617375))

(assert (=> b!4025793 d!1192203))

(declare-fun d!1192205 () Bool)

(declare-fun res!1638567 () Bool)

(declare-fun e!2497734 () Bool)

(assert (=> d!1192205 (=> (not res!1638567) (not e!2497734))))

(assert (=> d!1192205 (= res!1638567 (not (isEmpty!25739 (originalCharacters!7484 token!484))))))

(assert (=> d!1192205 (= (inv!57588 token!484) e!2497734)))

(declare-fun b!4026065 () Bool)

(declare-fun res!1638568 () Bool)

(assert (=> b!4026065 (=> (not res!1638568) (not e!2497734))))

(declare-fun dynLambda!18272 (Int TokenValue!7114) BalanceConc!25784)

(assert (=> b!4026065 (= res!1638568 (= (originalCharacters!7484 token!484) (list!16034 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484)))))))

(declare-fun b!4026066 () Bool)

(assert (=> b!4026066 (= e!2497734 (= (size!32225 token!484) (size!32226 (originalCharacters!7484 token!484))))))

(assert (= (and d!1192205 res!1638567) b!4026065))

(assert (= (and b!4026065 res!1638568) b!4026066))

(declare-fun b_lambda!117441 () Bool)

(assert (=> (not b_lambda!117441) (not b!4026065)))

(declare-fun t!333924 () Bool)

(declare-fun tb!241933 () Bool)

(assert (=> (and b!4025786 (= (toChars!9259 (transformation!6884 (h!48533 rules!2999))) (toChars!9259 (transformation!6884 (rule!9940 token!484)))) t!333924) tb!241933))

(declare-fun b!4026071 () Bool)

(declare-fun e!2497737 () Bool)

(declare-fun tp!1223660 () Bool)

(declare-fun inv!57592 (Conc!13095) Bool)

(assert (=> b!4026071 (= e!2497737 (and (inv!57592 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484)))) tp!1223660))))

(declare-fun result!293250 () Bool)

(declare-fun inv!57593 (BalanceConc!25784) Bool)

(assert (=> tb!241933 (= result!293250 (and (inv!57593 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484))) e!2497737))))

(assert (= tb!241933 b!4026071))

(declare-fun m!4617377 () Bool)

(assert (=> b!4026071 m!4617377))

(declare-fun m!4617379 () Bool)

(assert (=> tb!241933 m!4617379))

(assert (=> b!4026065 t!333924))

(declare-fun b_and!309323 () Bool)

(assert (= b_and!309305 (and (=> t!333924 result!293250) b_and!309323)))

(declare-fun t!333926 () Bool)

(declare-fun tb!241935 () Bool)

(assert (=> (and b!4025797 (= (toChars!9259 (transformation!6884 (rule!9940 token!484))) (toChars!9259 (transformation!6884 (rule!9940 token!484)))) t!333926) tb!241935))

(declare-fun result!293254 () Bool)

(assert (= result!293254 result!293250))

(assert (=> b!4026065 t!333926))

(declare-fun b_and!309325 () Bool)

(assert (= b_and!309309 (and (=> t!333926 result!293254) b_and!309325)))

(declare-fun m!4617381 () Bool)

(assert (=> d!1192205 m!4617381))

(declare-fun m!4617383 () Bool)

(assert (=> b!4026065 m!4617383))

(assert (=> b!4026065 m!4617383))

(declare-fun m!4617385 () Bool)

(assert (=> b!4026065 m!4617385))

(declare-fun m!4617387 () Bool)

(assert (=> b!4026066 m!4617387))

(assert (=> start!379156 d!1192205))

(declare-fun d!1192207 () Bool)

(declare-fun res!1638571 () Bool)

(declare-fun e!2497740 () Bool)

(assert (=> d!1192207 (=> (not res!1638571) (not e!2497740))))

(declare-fun rulesValid!2676 (LexerInterface!6473 List!43237) Bool)

(assert (=> d!1192207 (= res!1638571 (rulesValid!2676 thiss!21717 rules!2999))))

(assert (=> d!1192207 (= (rulesInvariant!5816 thiss!21717 rules!2999) e!2497740)))

(declare-fun b!4026074 () Bool)

(declare-datatypes ((List!43239 0))(
  ( (Nil!43115) (Cons!43115 (h!48535 String!49288) (t!333952 List!43239)) )
))
(declare-fun noDuplicateTag!2677 (LexerInterface!6473 List!43237 List!43239) Bool)

(assert (=> b!4026074 (= e!2497740 (noDuplicateTag!2677 thiss!21717 rules!2999 Nil!43115))))

(assert (= (and d!1192207 res!1638571) b!4026074))

(declare-fun m!4617389 () Bool)

(assert (=> d!1192207 m!4617389))

(declare-fun m!4617391 () Bool)

(assert (=> b!4026074 m!4617391))

(assert (=> b!4025794 d!1192207))

(declare-fun d!1192209 () Bool)

(declare-fun lt!1430393 () Int)

(assert (=> d!1192209 (>= lt!1430393 0)))

(declare-fun e!2497743 () Int)

(assert (=> d!1192209 (= lt!1430393 e!2497743)))

(declare-fun c!695581 () Bool)

(assert (=> d!1192209 (= c!695581 ((_ is Nil!43111) suffix!1299))))

(assert (=> d!1192209 (= (size!32226 suffix!1299) lt!1430393)))

(declare-fun b!4026079 () Bool)

(assert (=> b!4026079 (= e!2497743 0)))

(declare-fun b!4026080 () Bool)

(assert (=> b!4026080 (= e!2497743 (+ 1 (size!32226 (t!333912 suffix!1299))))))

(assert (= (and d!1192209 c!695581) b!4026079))

(assert (= (and d!1192209 (not c!695581)) b!4026080))

(declare-fun m!4617393 () Bool)

(assert (=> b!4026080 m!4617393))

(assert (=> b!4025803 d!1192209))

(declare-fun d!1192211 () Bool)

(declare-fun lt!1430394 () Int)

(assert (=> d!1192211 (>= lt!1430394 0)))

(declare-fun e!2497744 () Int)

(assert (=> d!1192211 (= lt!1430394 e!2497744)))

(declare-fun c!695582 () Bool)

(assert (=> d!1192211 (= c!695582 ((_ is Nil!43111) newSuffix!27))))

(assert (=> d!1192211 (= (size!32226 newSuffix!27) lt!1430394)))

(declare-fun b!4026081 () Bool)

(assert (=> b!4026081 (= e!2497744 0)))

(declare-fun b!4026082 () Bool)

(assert (=> b!4026082 (= e!2497744 (+ 1 (size!32226 (t!333912 newSuffix!27))))))

(assert (= (and d!1192211 c!695582) b!4026081))

(assert (= (and d!1192211 (not c!695582)) b!4026082))

(declare-fun m!4617395 () Bool)

(assert (=> b!4026082 m!4617395))

(assert (=> b!4025803 d!1192211))

(declare-fun b!4026084 () Bool)

(declare-fun e!2497746 () List!43235)

(assert (=> b!4026084 (= e!2497746 (Cons!43111 (h!48531 lt!1430280) (++!11286 (t!333912 lt!1430280) suffixResult!105)))))

(declare-fun d!1192213 () Bool)

(declare-fun e!2497745 () Bool)

(assert (=> d!1192213 e!2497745))

(declare-fun res!1638572 () Bool)

(assert (=> d!1192213 (=> (not res!1638572) (not e!2497745))))

(declare-fun lt!1430395 () List!43235)

(assert (=> d!1192213 (= res!1638572 (= (content!6548 lt!1430395) ((_ map or) (content!6548 lt!1430280) (content!6548 suffixResult!105))))))

(assert (=> d!1192213 (= lt!1430395 e!2497746)))

(declare-fun c!695583 () Bool)

(assert (=> d!1192213 (= c!695583 ((_ is Nil!43111) lt!1430280))))

(assert (=> d!1192213 (= (++!11286 lt!1430280 suffixResult!105) lt!1430395)))

(declare-fun b!4026085 () Bool)

(declare-fun res!1638573 () Bool)

(assert (=> b!4026085 (=> (not res!1638573) (not e!2497745))))

(assert (=> b!4026085 (= res!1638573 (= (size!32226 lt!1430395) (+ (size!32226 lt!1430280) (size!32226 suffixResult!105))))))

(declare-fun b!4026086 () Bool)

(assert (=> b!4026086 (= e!2497745 (or (not (= suffixResult!105 Nil!43111)) (= lt!1430395 lt!1430280)))))

(declare-fun b!4026083 () Bool)

(assert (=> b!4026083 (= e!2497746 suffixResult!105)))

(assert (= (and d!1192213 c!695583) b!4026083))

(assert (= (and d!1192213 (not c!695583)) b!4026084))

(assert (= (and d!1192213 res!1638572) b!4026085))

(assert (= (and b!4026085 res!1638573) b!4026086))

(declare-fun m!4617397 () Bool)

(assert (=> b!4026084 m!4617397))

(declare-fun m!4617399 () Bool)

(assert (=> d!1192213 m!4617399))

(declare-fun m!4617401 () Bool)

(assert (=> d!1192213 m!4617401))

(declare-fun m!4617403 () Bool)

(assert (=> d!1192213 m!4617403))

(declare-fun m!4617405 () Bool)

(assert (=> b!4026085 m!4617405))

(assert (=> b!4026085 m!4617017))

(declare-fun m!4617407 () Bool)

(assert (=> b!4026085 m!4617407))

(assert (=> b!4025801 d!1192213))

(declare-fun d!1192215 () Bool)

(declare-fun e!2497749 () Bool)

(assert (=> d!1192215 e!2497749))

(declare-fun res!1638576 () Bool)

(assert (=> d!1192215 (=> (not res!1638576) (not e!2497749))))

(assert (=> d!1192215 (= res!1638576 (semiInverseModEq!2942 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (toValue!9400 (transformation!6884 (rule!9940 token!484)))))))

(declare-fun Unit!62277 () Unit!62274)

(assert (=> d!1192215 (= (lemmaInv!1093 (transformation!6884 (rule!9940 token!484))) Unit!62277)))

(declare-fun b!4026089 () Bool)

(assert (=> b!4026089 (= e!2497749 (equivClasses!2841 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (toValue!9400 (transformation!6884 (rule!9940 token!484)))))))

(assert (= (and d!1192215 res!1638576) b!4026089))

(declare-fun m!4617409 () Bool)

(assert (=> d!1192215 m!4617409))

(declare-fun m!4617411 () Bool)

(assert (=> b!4026089 m!4617411))

(assert (=> b!4025801 d!1192215))

(declare-fun d!1192217 () Bool)

(declare-fun res!1638581 () Bool)

(declare-fun e!2497752 () Bool)

(assert (=> d!1192217 (=> (not res!1638581) (not e!2497752))))

(declare-fun validRegex!5334 (Regex!11789) Bool)

(assert (=> d!1192217 (= res!1638581 (validRegex!5334 (regex!6884 (rule!9940 token!484))))))

(assert (=> d!1192217 (= (ruleValid!2814 thiss!21717 (rule!9940 token!484)) e!2497752)))

(declare-fun b!4026094 () Bool)

(declare-fun res!1638582 () Bool)

(assert (=> b!4026094 (=> (not res!1638582) (not e!2497752))))

(declare-fun nullable!4134 (Regex!11789) Bool)

(assert (=> b!4026094 (= res!1638582 (not (nullable!4134 (regex!6884 (rule!9940 token!484)))))))

(declare-fun b!4026095 () Bool)

(assert (=> b!4026095 (= e!2497752 (not (= (tag!7744 (rule!9940 token!484)) (String!49289 ""))))))

(assert (= (and d!1192217 res!1638581) b!4026094))

(assert (= (and b!4026094 res!1638582) b!4026095))

(declare-fun m!4617413 () Bool)

(assert (=> d!1192217 m!4617413))

(declare-fun m!4617415 () Bool)

(assert (=> b!4026094 m!4617415))

(assert (=> b!4025801 d!1192217))

(declare-fun d!1192219 () Bool)

(assert (=> d!1192219 (ruleValid!2814 thiss!21717 (rule!9940 token!484))))

(declare-fun lt!1430398 () Unit!62274)

(declare-fun choose!24354 (LexerInterface!6473 Rule!13568 List!43237) Unit!62274)

(assert (=> d!1192219 (= lt!1430398 (choose!24354 thiss!21717 (rule!9940 token!484) rules!2999))))

(assert (=> d!1192219 (contains!8564 rules!2999 (rule!9940 token!484))))

(assert (=> d!1192219 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1884 thiss!21717 (rule!9940 token!484) rules!2999) lt!1430398)))

(declare-fun bs!590037 () Bool)

(assert (= bs!590037 d!1192219))

(assert (=> bs!590037 m!4617031))

(declare-fun m!4617417 () Bool)

(assert (=> bs!590037 m!4617417))

(assert (=> bs!590037 m!4616969))

(assert (=> b!4025801 d!1192219))

(declare-fun d!1192221 () Bool)

(declare-fun dynLambda!18273 (Int BalanceConc!25784) TokenValue!7114)

(assert (=> d!1192221 (= (apply!10073 (transformation!6884 (rule!9940 token!484)) lt!1430283) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283))))

(declare-fun b_lambda!117443 () Bool)

(assert (=> (not b_lambda!117443) (not d!1192221)))

(declare-fun t!333928 () Bool)

(declare-fun tb!241937 () Bool)

(assert (=> (and b!4025786 (= (toValue!9400 (transformation!6884 (h!48533 rules!2999))) (toValue!9400 (transformation!6884 (rule!9940 token!484)))) t!333928) tb!241937))

(declare-fun result!293256 () Bool)

(assert (=> tb!241937 (= result!293256 (inv!21 (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283)))))

(declare-fun m!4617419 () Bool)

(assert (=> tb!241937 m!4617419))

(assert (=> d!1192221 t!333928))

(declare-fun b_and!309327 () Bool)

(assert (= b_and!309303 (and (=> t!333928 result!293256) b_and!309327)))

(declare-fun t!333930 () Bool)

(declare-fun tb!241939 () Bool)

(assert (=> (and b!4025797 (= (toValue!9400 (transformation!6884 (rule!9940 token!484))) (toValue!9400 (transformation!6884 (rule!9940 token!484)))) t!333930) tb!241939))

(declare-fun result!293260 () Bool)

(assert (= result!293260 result!293256))

(assert (=> d!1192221 t!333930))

(declare-fun b_and!309329 () Bool)

(assert (= b_and!309307 (and (=> t!333930 result!293260) b_and!309329)))

(declare-fun m!4617421 () Bool)

(assert (=> d!1192221 m!4617421))

(assert (=> b!4025791 d!1192221))

(declare-fun b!4026155 () Bool)

(declare-fun e!2497790 () Bool)

(assert (=> b!4026155 (= e!2497790 true)))

(declare-fun d!1192223 () Bool)

(assert (=> d!1192223 e!2497790))

(assert (= d!1192223 b!4026155))

(declare-fun lambda!127161 () Int)

(declare-fun order!22549 () Int)

(declare-fun order!22551 () Int)

(declare-fun dynLambda!18274 (Int Int) Int)

(declare-fun dynLambda!18275 (Int Int) Int)

(assert (=> b!4026155 (< (dynLambda!18274 order!22549 (toValue!9400 (transformation!6884 (rule!9940 token!484)))) (dynLambda!18275 order!22551 lambda!127161))))

(declare-fun order!22553 () Int)

(declare-fun dynLambda!18276 (Int Int) Int)

(assert (=> b!4026155 (< (dynLambda!18276 order!22553 (toChars!9259 (transformation!6884 (rule!9940 token!484)))) (dynLambda!18275 order!22551 lambda!127161))))

(assert (=> d!1192223 (= (list!16034 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283))) (list!16034 lt!1430283))))

(declare-fun lt!1430404 () Unit!62274)

(declare-fun ForallOf!813 (Int BalanceConc!25784) Unit!62274)

(assert (=> d!1192223 (= lt!1430404 (ForallOf!813 lambda!127161 lt!1430283))))

(assert (=> d!1192223 (= (lemmaSemiInverse!1891 (transformation!6884 (rule!9940 token!484)) lt!1430283) lt!1430404)))

(declare-fun b_lambda!117459 () Bool)

(assert (=> (not b_lambda!117459) (not d!1192223)))

(declare-fun t!333942 () Bool)

(declare-fun tb!241951 () Bool)

(assert (=> (and b!4025786 (= (toChars!9259 (transformation!6884 (h!48533 rules!2999))) (toChars!9259 (transformation!6884 (rule!9940 token!484)))) t!333942) tb!241951))

(declare-fun b!4026156 () Bool)

(declare-fun tp!1223702 () Bool)

(declare-fun e!2497791 () Bool)

(assert (=> b!4026156 (= e!2497791 (and (inv!57592 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283)))) tp!1223702))))

(declare-fun result!293278 () Bool)

(assert (=> tb!241951 (= result!293278 (and (inv!57593 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283))) e!2497791))))

(assert (= tb!241951 b!4026156))

(declare-fun m!4617459 () Bool)

(assert (=> b!4026156 m!4617459))

(declare-fun m!4617461 () Bool)

(assert (=> tb!241951 m!4617461))

(assert (=> d!1192223 t!333942))

(declare-fun b_and!309343 () Bool)

(assert (= b_and!309323 (and (=> t!333942 result!293278) b_and!309343)))

(declare-fun t!333944 () Bool)

(declare-fun tb!241953 () Bool)

(assert (=> (and b!4025797 (= (toChars!9259 (transformation!6884 (rule!9940 token!484))) (toChars!9259 (transformation!6884 (rule!9940 token!484)))) t!333944) tb!241953))

(declare-fun result!293280 () Bool)

(assert (= result!293280 result!293278))

(assert (=> d!1192223 t!333944))

(declare-fun b_and!309345 () Bool)

(assert (= b_and!309325 (and (=> t!333944 result!293280) b_and!309345)))

(declare-fun b_lambda!117461 () Bool)

(assert (=> (not b_lambda!117461) (not d!1192223)))

(assert (=> d!1192223 t!333928))

(declare-fun b_and!309347 () Bool)

(assert (= b_and!309327 (and (=> t!333928 result!293256) b_and!309347)))

(assert (=> d!1192223 t!333930))

(declare-fun b_and!309349 () Bool)

(assert (= b_and!309329 (and (=> t!333930 result!293260) b_and!309349)))

(declare-fun m!4617463 () Bool)

(assert (=> d!1192223 m!4617463))

(assert (=> d!1192223 m!4617421))

(declare-fun m!4617465 () Bool)

(assert (=> d!1192223 m!4617465))

(declare-fun m!4617467 () Bool)

(assert (=> d!1192223 m!4617467))

(declare-fun m!4617469 () Bool)

(assert (=> d!1192223 m!4617469))

(assert (=> d!1192223 m!4617421))

(assert (=> d!1192223 m!4617467))

(assert (=> b!4025791 d!1192223))

(declare-fun d!1192231 () Bool)

(declare-fun fromListB!2328 (List!43235) BalanceConc!25784)

(assert (=> d!1192231 (= (seqFromList!5101 lt!1430280) (fromListB!2328 lt!1430280))))

(declare-fun bs!590039 () Bool)

(assert (= bs!590039 d!1192231))

(declare-fun m!4617471 () Bool)

(assert (=> bs!590039 m!4617471))

(assert (=> b!4025791 d!1192231))

(declare-fun d!1192233 () Bool)

(declare-fun lt!1430405 () Int)

(assert (=> d!1192233 (>= lt!1430405 0)))

(declare-fun e!2497792 () Int)

(assert (=> d!1192233 (= lt!1430405 e!2497792)))

(declare-fun c!695587 () Bool)

(assert (=> d!1192233 (= c!695587 ((_ is Nil!43111) lt!1430280))))

(assert (=> d!1192233 (= (size!32226 lt!1430280) lt!1430405)))

(declare-fun b!4026157 () Bool)

(assert (=> b!4026157 (= e!2497792 0)))

(declare-fun b!4026158 () Bool)

(assert (=> b!4026158 (= e!2497792 (+ 1 (size!32226 (t!333912 lt!1430280))))))

(assert (= (and d!1192233 c!695587) b!4026157))

(assert (= (and d!1192233 (not c!695587)) b!4026158))

(declare-fun m!4617473 () Bool)

(assert (=> b!4026158 m!4617473))

(assert (=> b!4025800 d!1192233))

(declare-fun d!1192235 () Bool)

(declare-fun lt!1430406 () Int)

(assert (=> d!1192235 (>= lt!1430406 0)))

(declare-fun e!2497793 () Int)

(assert (=> d!1192235 (= lt!1430406 e!2497793)))

(declare-fun c!695588 () Bool)

(assert (=> d!1192235 (= c!695588 ((_ is Nil!43111) prefix!494))))

(assert (=> d!1192235 (= (size!32226 prefix!494) lt!1430406)))

(declare-fun b!4026159 () Bool)

(assert (=> b!4026159 (= e!2497793 0)))

(declare-fun b!4026160 () Bool)

(assert (=> b!4026160 (= e!2497793 (+ 1 (size!32226 (t!333912 prefix!494))))))

(assert (= (and d!1192235 c!695588) b!4026159))

(assert (= (and d!1192235 (not c!695588)) b!4026160))

(declare-fun m!4617475 () Bool)

(assert (=> b!4026160 m!4617475))

(assert (=> b!4025800 d!1192235))

(declare-fun d!1192237 () Bool)

(declare-fun list!16036 (Conc!13095) List!43235)

(assert (=> d!1192237 (= (list!16034 (charsOf!4700 token!484)) (list!16036 (c!695538 (charsOf!4700 token!484))))))

(declare-fun bs!590040 () Bool)

(assert (= bs!590040 d!1192237))

(declare-fun m!4617477 () Bool)

(assert (=> bs!590040 m!4617477))

(assert (=> b!4025800 d!1192237))

(declare-fun d!1192239 () Bool)

(declare-fun lt!1430409 () BalanceConc!25784)

(assert (=> d!1192239 (= (list!16034 lt!1430409) (originalCharacters!7484 token!484))))

(assert (=> d!1192239 (= lt!1430409 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484)))))

(assert (=> d!1192239 (= (charsOf!4700 token!484) lt!1430409)))

(declare-fun b_lambda!117463 () Bool)

(assert (=> (not b_lambda!117463) (not d!1192239)))

(assert (=> d!1192239 t!333924))

(declare-fun b_and!309351 () Bool)

(assert (= b_and!309343 (and (=> t!333924 result!293250) b_and!309351)))

(assert (=> d!1192239 t!333926))

(declare-fun b_and!309353 () Bool)

(assert (= b_and!309345 (and (=> t!333926 result!293254) b_and!309353)))

(declare-fun m!4617479 () Bool)

(assert (=> d!1192239 m!4617479))

(assert (=> d!1192239 m!4617383))

(assert (=> b!4025800 d!1192239))

(declare-fun b!4026162 () Bool)

(declare-fun e!2497795 () List!43235)

(assert (=> b!4026162 (= e!2497795 (Cons!43111 (h!48531 lt!1430280) (++!11286 (t!333912 lt!1430280) newSuffixResult!27)))))

(declare-fun d!1192241 () Bool)

(declare-fun e!2497794 () Bool)

(assert (=> d!1192241 e!2497794))

(declare-fun res!1638587 () Bool)

(assert (=> d!1192241 (=> (not res!1638587) (not e!2497794))))

(declare-fun lt!1430410 () List!43235)

(assert (=> d!1192241 (= res!1638587 (= (content!6548 lt!1430410) ((_ map or) (content!6548 lt!1430280) (content!6548 newSuffixResult!27))))))

(assert (=> d!1192241 (= lt!1430410 e!2497795)))

(declare-fun c!695589 () Bool)

(assert (=> d!1192241 (= c!695589 ((_ is Nil!43111) lt!1430280))))

(assert (=> d!1192241 (= (++!11286 lt!1430280 newSuffixResult!27) lt!1430410)))

(declare-fun b!4026163 () Bool)

(declare-fun res!1638588 () Bool)

(assert (=> b!4026163 (=> (not res!1638588) (not e!2497794))))

(assert (=> b!4026163 (= res!1638588 (= (size!32226 lt!1430410) (+ (size!32226 lt!1430280) (size!32226 newSuffixResult!27))))))

(declare-fun b!4026164 () Bool)

(assert (=> b!4026164 (= e!2497794 (or (not (= newSuffixResult!27 Nil!43111)) (= lt!1430410 lt!1430280)))))

(declare-fun b!4026161 () Bool)

(assert (=> b!4026161 (= e!2497795 newSuffixResult!27)))

(assert (= (and d!1192241 c!695589) b!4026161))

(assert (= (and d!1192241 (not c!695589)) b!4026162))

(assert (= (and d!1192241 res!1638587) b!4026163))

(assert (= (and b!4026163 res!1638588) b!4026164))

(declare-fun m!4617481 () Bool)

(assert (=> b!4026162 m!4617481))

(declare-fun m!4617483 () Bool)

(assert (=> d!1192241 m!4617483))

(assert (=> d!1192241 m!4617401))

(declare-fun m!4617485 () Bool)

(assert (=> d!1192241 m!4617485))

(declare-fun m!4617487 () Bool)

(assert (=> b!4026163 m!4617487))

(assert (=> b!4026163 m!4617017))

(declare-fun m!4617489 () Bool)

(assert (=> b!4026163 m!4617489))

(assert (=> b!4025809 d!1192241))

(declare-fun b!4026166 () Bool)

(declare-fun e!2497797 () List!43235)

(assert (=> b!4026166 (= e!2497797 (Cons!43111 (h!48531 prefix!494) (++!11286 (t!333912 prefix!494) newSuffix!27)))))

(declare-fun d!1192243 () Bool)

(declare-fun e!2497796 () Bool)

(assert (=> d!1192243 e!2497796))

(declare-fun res!1638589 () Bool)

(assert (=> d!1192243 (=> (not res!1638589) (not e!2497796))))

(declare-fun lt!1430411 () List!43235)

(assert (=> d!1192243 (= res!1638589 (= (content!6548 lt!1430411) ((_ map or) (content!6548 prefix!494) (content!6548 newSuffix!27))))))

(assert (=> d!1192243 (= lt!1430411 e!2497797)))

(declare-fun c!695590 () Bool)

(assert (=> d!1192243 (= c!695590 ((_ is Nil!43111) prefix!494))))

(assert (=> d!1192243 (= (++!11286 prefix!494 newSuffix!27) lt!1430411)))

(declare-fun b!4026167 () Bool)

(declare-fun res!1638590 () Bool)

(assert (=> b!4026167 (=> (not res!1638590) (not e!2497796))))

(assert (=> b!4026167 (= res!1638590 (= (size!32226 lt!1430411) (+ (size!32226 prefix!494) (size!32226 newSuffix!27))))))

(declare-fun b!4026168 () Bool)

(assert (=> b!4026168 (= e!2497796 (or (not (= newSuffix!27 Nil!43111)) (= lt!1430411 prefix!494)))))

(declare-fun b!4026165 () Bool)

(assert (=> b!4026165 (= e!2497797 newSuffix!27)))

(assert (= (and d!1192243 c!695590) b!4026165))

(assert (= (and d!1192243 (not c!695590)) b!4026166))

(assert (= (and d!1192243 res!1638589) b!4026167))

(assert (= (and b!4026167 res!1638590) b!4026168))

(declare-fun m!4617491 () Bool)

(assert (=> b!4026166 m!4617491))

(declare-fun m!4617493 () Bool)

(assert (=> d!1192243 m!4617493))

(assert (=> d!1192243 m!4617327))

(declare-fun m!4617495 () Bool)

(assert (=> d!1192243 m!4617495))

(declare-fun m!4617497 () Bool)

(assert (=> b!4026167 m!4617497))

(assert (=> b!4026167 m!4617019))

(assert (=> b!4026167 m!4616965))

(assert (=> b!4025809 d!1192243))

(declare-fun d!1192245 () Bool)

(assert (=> d!1192245 (= (inv!57585 (tag!7744 (rule!9940 token!484))) (= (mod (str.len (value!216827 (tag!7744 (rule!9940 token!484)))) 2) 0))))

(assert (=> b!4025788 d!1192245))

(declare-fun d!1192247 () Bool)

(declare-fun res!1638591 () Bool)

(declare-fun e!2497798 () Bool)

(assert (=> d!1192247 (=> (not res!1638591) (not e!2497798))))

(assert (=> d!1192247 (= res!1638591 (semiInverseModEq!2942 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (toValue!9400 (transformation!6884 (rule!9940 token!484)))))))

(assert (=> d!1192247 (= (inv!57589 (transformation!6884 (rule!9940 token!484))) e!2497798)))

(declare-fun b!4026169 () Bool)

(assert (=> b!4026169 (= e!2497798 (equivClasses!2841 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (toValue!9400 (transformation!6884 (rule!9940 token!484)))))))

(assert (= (and d!1192247 res!1638591) b!4026169))

(assert (=> d!1192247 m!4617409))

(assert (=> b!4026169 m!4617411))

(assert (=> b!4025788 d!1192247))

(declare-fun b!4026171 () Bool)

(declare-fun e!2497800 () List!43235)

(assert (=> b!4026171 (= e!2497800 (Cons!43111 (h!48531 lt!1430280) (++!11286 (t!333912 lt!1430280) lt!1430270)))))

(declare-fun d!1192249 () Bool)

(declare-fun e!2497799 () Bool)

(assert (=> d!1192249 e!2497799))

(declare-fun res!1638592 () Bool)

(assert (=> d!1192249 (=> (not res!1638592) (not e!2497799))))

(declare-fun lt!1430412 () List!43235)

(assert (=> d!1192249 (= res!1638592 (= (content!6548 lt!1430412) ((_ map or) (content!6548 lt!1430280) (content!6548 lt!1430270))))))

(assert (=> d!1192249 (= lt!1430412 e!2497800)))

(declare-fun c!695591 () Bool)

(assert (=> d!1192249 (= c!695591 ((_ is Nil!43111) lt!1430280))))

(assert (=> d!1192249 (= (++!11286 lt!1430280 lt!1430270) lt!1430412)))

(declare-fun b!4026172 () Bool)

(declare-fun res!1638593 () Bool)

(assert (=> b!4026172 (=> (not res!1638593) (not e!2497799))))

(assert (=> b!4026172 (= res!1638593 (= (size!32226 lt!1430412) (+ (size!32226 lt!1430280) (size!32226 lt!1430270))))))

(declare-fun b!4026173 () Bool)

(assert (=> b!4026173 (= e!2497799 (or (not (= lt!1430270 Nil!43111)) (= lt!1430412 lt!1430280)))))

(declare-fun b!4026170 () Bool)

(assert (=> b!4026170 (= e!2497800 lt!1430270)))

(assert (= (and d!1192249 c!695591) b!4026170))

(assert (= (and d!1192249 (not c!695591)) b!4026171))

(assert (= (and d!1192249 res!1638592) b!4026172))

(assert (= (and b!4026172 res!1638593) b!4026173))

(declare-fun m!4617499 () Bool)

(assert (=> b!4026171 m!4617499))

(declare-fun m!4617501 () Bool)

(assert (=> d!1192249 m!4617501))

(assert (=> d!1192249 m!4617401))

(declare-fun m!4617503 () Bool)

(assert (=> d!1192249 m!4617503))

(declare-fun m!4617505 () Bool)

(assert (=> b!4026172 m!4617505))

(assert (=> b!4026172 m!4617017))

(declare-fun m!4617507 () Bool)

(assert (=> b!4026172 m!4617507))

(assert (=> b!4025799 d!1192249))

(declare-fun b!4026175 () Bool)

(declare-fun e!2497802 () List!43235)

(assert (=> b!4026175 (= e!2497802 (Cons!43111 (h!48531 lt!1430275) (++!11286 (t!333912 lt!1430275) suffix!1299)))))

(declare-fun d!1192251 () Bool)

(declare-fun e!2497801 () Bool)

(assert (=> d!1192251 e!2497801))

(declare-fun res!1638594 () Bool)

(assert (=> d!1192251 (=> (not res!1638594) (not e!2497801))))

(declare-fun lt!1430413 () List!43235)

(assert (=> d!1192251 (= res!1638594 (= (content!6548 lt!1430413) ((_ map or) (content!6548 lt!1430275) (content!6548 suffix!1299))))))

(assert (=> d!1192251 (= lt!1430413 e!2497802)))

(declare-fun c!695592 () Bool)

(assert (=> d!1192251 (= c!695592 ((_ is Nil!43111) lt!1430275))))

(assert (=> d!1192251 (= (++!11286 lt!1430275 suffix!1299) lt!1430413)))

(declare-fun b!4026176 () Bool)

(declare-fun res!1638595 () Bool)

(assert (=> b!4026176 (=> (not res!1638595) (not e!2497801))))

(assert (=> b!4026176 (= res!1638595 (= (size!32226 lt!1430413) (+ (size!32226 lt!1430275) (size!32226 suffix!1299))))))

(declare-fun b!4026177 () Bool)

(assert (=> b!4026177 (= e!2497801 (or (not (= suffix!1299 Nil!43111)) (= lt!1430413 lt!1430275)))))

(declare-fun b!4026174 () Bool)

(assert (=> b!4026174 (= e!2497802 suffix!1299)))

(assert (= (and d!1192251 c!695592) b!4026174))

(assert (= (and d!1192251 (not c!695592)) b!4026175))

(assert (= (and d!1192251 res!1638594) b!4026176))

(assert (= (and b!4026176 res!1638595) b!4026177))

(declare-fun m!4617509 () Bool)

(assert (=> b!4026175 m!4617509))

(declare-fun m!4617511 () Bool)

(assert (=> d!1192251 m!4617511))

(declare-fun m!4617513 () Bool)

(assert (=> d!1192251 m!4617513))

(assert (=> d!1192251 m!4617329))

(declare-fun m!4617515 () Bool)

(assert (=> b!4026176 m!4617515))

(declare-fun m!4617517 () Bool)

(assert (=> b!4026176 m!4617517))

(assert (=> b!4026176 m!4616963))

(assert (=> b!4025799 d!1192251))

(declare-fun b!4026179 () Bool)

(declare-fun e!2497804 () List!43235)

(assert (=> b!4026179 (= e!2497804 (Cons!43111 (h!48531 lt!1430287) (++!11286 (t!333912 lt!1430287) suffix!1299)))))

(declare-fun d!1192253 () Bool)

(declare-fun e!2497803 () Bool)

(assert (=> d!1192253 e!2497803))

(declare-fun res!1638596 () Bool)

(assert (=> d!1192253 (=> (not res!1638596) (not e!2497803))))

(declare-fun lt!1430414 () List!43235)

(assert (=> d!1192253 (= res!1638596 (= (content!6548 lt!1430414) ((_ map or) (content!6548 lt!1430287) (content!6548 suffix!1299))))))

(assert (=> d!1192253 (= lt!1430414 e!2497804)))

(declare-fun c!695593 () Bool)

(assert (=> d!1192253 (= c!695593 ((_ is Nil!43111) lt!1430287))))

(assert (=> d!1192253 (= (++!11286 lt!1430287 suffix!1299) lt!1430414)))

(declare-fun b!4026180 () Bool)

(declare-fun res!1638597 () Bool)

(assert (=> b!4026180 (=> (not res!1638597) (not e!2497803))))

(assert (=> b!4026180 (= res!1638597 (= (size!32226 lt!1430414) (+ (size!32226 lt!1430287) (size!32226 suffix!1299))))))

(declare-fun b!4026181 () Bool)

(assert (=> b!4026181 (= e!2497803 (or (not (= suffix!1299 Nil!43111)) (= lt!1430414 lt!1430287)))))

(declare-fun b!4026178 () Bool)

(assert (=> b!4026178 (= e!2497804 suffix!1299)))

(assert (= (and d!1192253 c!695593) b!4026178))

(assert (= (and d!1192253 (not c!695593)) b!4026179))

(assert (= (and d!1192253 res!1638596) b!4026180))

(assert (= (and b!4026180 res!1638597) b!4026181))

(declare-fun m!4617519 () Bool)

(assert (=> b!4026179 m!4617519))

(declare-fun m!4617521 () Bool)

(assert (=> d!1192253 m!4617521))

(declare-fun m!4617523 () Bool)

(assert (=> d!1192253 m!4617523))

(assert (=> d!1192253 m!4617329))

(declare-fun m!4617525 () Bool)

(assert (=> b!4026180 m!4617525))

(declare-fun m!4617527 () Bool)

(assert (=> b!4026180 m!4617527))

(assert (=> b!4026180 m!4616963))

(assert (=> b!4025799 d!1192253))

(declare-fun d!1192255 () Bool)

(assert (=> d!1192255 (= (++!11286 (++!11286 lt!1430280 lt!1430287) suffix!1299) (++!11286 lt!1430280 (++!11286 lt!1430287 suffix!1299)))))

(declare-fun lt!1430417 () Unit!62274)

(declare-fun choose!24355 (List!43235 List!43235 List!43235) Unit!62274)

(assert (=> d!1192255 (= lt!1430417 (choose!24355 lt!1430280 lt!1430287 suffix!1299))))

(assert (=> d!1192255 (= (lemmaConcatAssociativity!2588 lt!1430280 lt!1430287 suffix!1299) lt!1430417)))

(declare-fun bs!590041 () Bool)

(assert (= bs!590041 d!1192255))

(assert (=> bs!590041 m!4616957))

(declare-fun m!4617529 () Bool)

(assert (=> bs!590041 m!4617529))

(declare-fun m!4617531 () Bool)

(assert (=> bs!590041 m!4617531))

(assert (=> bs!590041 m!4616957))

(assert (=> bs!590041 m!4616983))

(assert (=> bs!590041 m!4616983))

(declare-fun m!4617533 () Bool)

(assert (=> bs!590041 m!4617533))

(assert (=> b!4025799 d!1192255))

(declare-fun d!1192257 () Bool)

(assert (=> d!1192257 (= (isEmpty!25739 lt!1430280) ((_ is Nil!43111) lt!1430280))))

(assert (=> b!4025810 d!1192257))

(declare-fun d!1192259 () Bool)

(assert (=> d!1192259 (= (isEmpty!25738 rules!2999) ((_ is Nil!43113) rules!2999))))

(assert (=> b!4025808 d!1192259))

(declare-fun b!4026183 () Bool)

(declare-fun e!2497806 () List!43235)

(assert (=> b!4026183 (= e!2497806 (Cons!43111 (h!48531 lt!1430280) (++!11286 (t!333912 lt!1430280) lt!1430287)))))

(declare-fun d!1192261 () Bool)

(declare-fun e!2497805 () Bool)

(assert (=> d!1192261 e!2497805))

(declare-fun res!1638598 () Bool)

(assert (=> d!1192261 (=> (not res!1638598) (not e!2497805))))

(declare-fun lt!1430418 () List!43235)

(assert (=> d!1192261 (= res!1638598 (= (content!6548 lt!1430418) ((_ map or) (content!6548 lt!1430280) (content!6548 lt!1430287))))))

(assert (=> d!1192261 (= lt!1430418 e!2497806)))

(declare-fun c!695594 () Bool)

(assert (=> d!1192261 (= c!695594 ((_ is Nil!43111) lt!1430280))))

(assert (=> d!1192261 (= (++!11286 lt!1430280 lt!1430287) lt!1430418)))

(declare-fun b!4026184 () Bool)

(declare-fun res!1638599 () Bool)

(assert (=> b!4026184 (=> (not res!1638599) (not e!2497805))))

(assert (=> b!4026184 (= res!1638599 (= (size!32226 lt!1430418) (+ (size!32226 lt!1430280) (size!32226 lt!1430287))))))

(declare-fun b!4026185 () Bool)

(assert (=> b!4026185 (= e!2497805 (or (not (= lt!1430287 Nil!43111)) (= lt!1430418 lt!1430280)))))

(declare-fun b!4026182 () Bool)

(assert (=> b!4026182 (= e!2497806 lt!1430287)))

(assert (= (and d!1192261 c!695594) b!4026182))

(assert (= (and d!1192261 (not c!695594)) b!4026183))

(assert (= (and d!1192261 res!1638598) b!4026184))

(assert (= (and b!4026184 res!1638599) b!4026185))

(declare-fun m!4617535 () Bool)

(assert (=> b!4026183 m!4617535))

(declare-fun m!4617537 () Bool)

(assert (=> d!1192261 m!4617537))

(assert (=> d!1192261 m!4617401))

(assert (=> d!1192261 m!4617523))

(declare-fun m!4617539 () Bool)

(assert (=> b!4026184 m!4617539))

(assert (=> b!4026184 m!4617017))

(assert (=> b!4026184 m!4617527))

(assert (=> b!4025787 d!1192261))

(declare-fun d!1192263 () Bool)

(declare-fun lt!1430421 () List!43235)

(assert (=> d!1192263 (= (++!11286 lt!1430280 lt!1430421) prefix!494)))

(declare-fun e!2497809 () List!43235)

(assert (=> d!1192263 (= lt!1430421 e!2497809)))

(declare-fun c!695597 () Bool)

(assert (=> d!1192263 (= c!695597 ((_ is Cons!43111) lt!1430280))))

(assert (=> d!1192263 (>= (size!32226 prefix!494) (size!32226 lt!1430280))))

(assert (=> d!1192263 (= (getSuffix!2388 prefix!494 lt!1430280) lt!1430421)))

(declare-fun b!4026190 () Bool)

(assert (=> b!4026190 (= e!2497809 (getSuffix!2388 (tail!6269 prefix!494) (t!333912 lt!1430280)))))

(declare-fun b!4026191 () Bool)

(assert (=> b!4026191 (= e!2497809 prefix!494)))

(assert (= (and d!1192263 c!695597) b!4026190))

(assert (= (and d!1192263 (not c!695597)) b!4026191))

(declare-fun m!4617541 () Bool)

(assert (=> d!1192263 m!4617541))

(assert (=> d!1192263 m!4617019))

(assert (=> d!1192263 m!4617017))

(assert (=> b!4026190 m!4617337))

(assert (=> b!4026190 m!4617337))

(declare-fun m!4617543 () Bool)

(assert (=> b!4026190 m!4617543))

(assert (=> b!4025787 d!1192263))

(declare-fun b!4026193 () Bool)

(declare-fun res!1638602 () Bool)

(declare-fun e!2497810 () Bool)

(assert (=> b!4026193 (=> (not res!1638602) (not e!2497810))))

(assert (=> b!4026193 (= res!1638602 (= (head!8537 lt!1430280) (head!8537 prefix!494)))))

(declare-fun b!4026192 () Bool)

(declare-fun e!2497812 () Bool)

(assert (=> b!4026192 (= e!2497812 e!2497810)))

(declare-fun res!1638601 () Bool)

(assert (=> b!4026192 (=> (not res!1638601) (not e!2497810))))

(assert (=> b!4026192 (= res!1638601 (not ((_ is Nil!43111) prefix!494)))))

(declare-fun b!4026195 () Bool)

(declare-fun e!2497811 () Bool)

(assert (=> b!4026195 (= e!2497811 (>= (size!32226 prefix!494) (size!32226 lt!1430280)))))

(declare-fun b!4026194 () Bool)

(assert (=> b!4026194 (= e!2497810 (isPrefix!3971 (tail!6269 lt!1430280) (tail!6269 prefix!494)))))

(declare-fun d!1192265 () Bool)

(assert (=> d!1192265 e!2497811))

(declare-fun res!1638603 () Bool)

(assert (=> d!1192265 (=> res!1638603 e!2497811)))

(declare-fun lt!1430422 () Bool)

(assert (=> d!1192265 (= res!1638603 (not lt!1430422))))

(assert (=> d!1192265 (= lt!1430422 e!2497812)))

(declare-fun res!1638600 () Bool)

(assert (=> d!1192265 (=> res!1638600 e!2497812)))

(assert (=> d!1192265 (= res!1638600 ((_ is Nil!43111) lt!1430280))))

(assert (=> d!1192265 (= (isPrefix!3971 lt!1430280 prefix!494) lt!1430422)))

(assert (= (and d!1192265 (not res!1638600)) b!4026192))

(assert (= (and b!4026192 res!1638601) b!4026193))

(assert (= (and b!4026193 res!1638602) b!4026194))

(assert (= (and d!1192265 (not res!1638603)) b!4026195))

(assert (=> b!4026193 m!4617113))

(assert (=> b!4026193 m!4617333))

(assert (=> b!4026195 m!4617019))

(assert (=> b!4026195 m!4617017))

(assert (=> b!4026194 m!4617119))

(assert (=> b!4026194 m!4617337))

(assert (=> b!4026194 m!4617119))

(assert (=> b!4026194 m!4617337))

(declare-fun m!4617545 () Bool)

(assert (=> b!4026194 m!4617545))

(assert (=> b!4025787 d!1192265))

(declare-fun d!1192267 () Bool)

(assert (=> d!1192267 (isPrefix!3971 lt!1430280 prefix!494)))

(declare-fun lt!1430425 () Unit!62274)

(declare-fun choose!24356 (List!43235 List!43235 List!43235) Unit!62274)

(assert (=> d!1192267 (= lt!1430425 (choose!24356 prefix!494 lt!1430280 lt!1430273))))

(assert (=> d!1192267 (isPrefix!3971 prefix!494 lt!1430273)))

(assert (=> d!1192267 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!535 prefix!494 lt!1430280 lt!1430273) lt!1430425)))

(declare-fun bs!590042 () Bool)

(assert (= bs!590042 d!1192267))

(assert (=> bs!590042 m!4616987))

(declare-fun m!4617547 () Bool)

(assert (=> bs!590042 m!4617547))

(assert (=> bs!590042 m!4617007))

(assert (=> b!4025787 d!1192267))

(declare-fun b!4026200 () Bool)

(declare-fun e!2497815 () Bool)

(declare-fun tp!1223705 () Bool)

(assert (=> b!4026200 (= e!2497815 (and tp_is_empty!20549 tp!1223705))))

(assert (=> b!4025796 (= tp!1223654 e!2497815)))

(assert (= (and b!4025796 ((_ is Cons!43111) (t!333912 newSuffixResult!27))) b!4026200))

(declare-fun b!4026213 () Bool)

(declare-fun e!2497818 () Bool)

(declare-fun tp!1223718 () Bool)

(assert (=> b!4026213 (= e!2497818 tp!1223718)))

(declare-fun b!4026212 () Bool)

(declare-fun tp!1223716 () Bool)

(declare-fun tp!1223720 () Bool)

(assert (=> b!4026212 (= e!2497818 (and tp!1223716 tp!1223720))))

(declare-fun b!4026211 () Bool)

(assert (=> b!4026211 (= e!2497818 tp_is_empty!20549)))

(declare-fun b!4026214 () Bool)

(declare-fun tp!1223719 () Bool)

(declare-fun tp!1223717 () Bool)

(assert (=> b!4026214 (= e!2497818 (and tp!1223719 tp!1223717))))

(assert (=> b!4025807 (= tp!1223642 e!2497818)))

(assert (= (and b!4025807 ((_ is ElementMatch!11789) (regex!6884 (h!48533 rules!2999)))) b!4026211))

(assert (= (and b!4025807 ((_ is Concat!18904) (regex!6884 (h!48533 rules!2999)))) b!4026212))

(assert (= (and b!4025807 ((_ is Star!11789) (regex!6884 (h!48533 rules!2999)))) b!4026213))

(assert (= (and b!4025807 ((_ is Union!11789) (regex!6884 (h!48533 rules!2999)))) b!4026214))

(declare-fun b!4026215 () Bool)

(declare-fun e!2497819 () Bool)

(declare-fun tp!1223721 () Bool)

(assert (=> b!4026215 (= e!2497819 (and tp_is_empty!20549 tp!1223721))))

(assert (=> b!4025789 (= tp!1223649 e!2497819)))

(assert (= (and b!4025789 ((_ is Cons!43111) (t!333912 suffix!1299))) b!4026215))

(declare-fun b!4026216 () Bool)

(declare-fun e!2497820 () Bool)

(declare-fun tp!1223722 () Bool)

(assert (=> b!4026216 (= e!2497820 (and tp_is_empty!20549 tp!1223722))))

(assert (=> b!4025790 (= tp!1223644 e!2497820)))

(assert (= (and b!4025790 ((_ is Cons!43111) (t!333912 newSuffix!27))) b!4026216))

(declare-fun b!4026217 () Bool)

(declare-fun e!2497821 () Bool)

(declare-fun tp!1223723 () Bool)

(assert (=> b!4026217 (= e!2497821 (and tp_is_empty!20549 tp!1223723))))

(assert (=> b!4025806 (= tp!1223653 e!2497821)))

(assert (= (and b!4025806 ((_ is Cons!43111) (originalCharacters!7484 token!484))) b!4026217))

(declare-fun b!4026220 () Bool)

(declare-fun e!2497822 () Bool)

(declare-fun tp!1223726 () Bool)

(assert (=> b!4026220 (= e!2497822 tp!1223726)))

(declare-fun b!4026219 () Bool)

(declare-fun tp!1223724 () Bool)

(declare-fun tp!1223728 () Bool)

(assert (=> b!4026219 (= e!2497822 (and tp!1223724 tp!1223728))))

(declare-fun b!4026218 () Bool)

(assert (=> b!4026218 (= e!2497822 tp_is_empty!20549)))

(declare-fun b!4026221 () Bool)

(declare-fun tp!1223727 () Bool)

(declare-fun tp!1223725 () Bool)

(assert (=> b!4026221 (= e!2497822 (and tp!1223727 tp!1223725))))

(assert (=> b!4025788 (= tp!1223646 e!2497822)))

(assert (= (and b!4025788 ((_ is ElementMatch!11789) (regex!6884 (rule!9940 token!484)))) b!4026218))

(assert (= (and b!4025788 ((_ is Concat!18904) (regex!6884 (rule!9940 token!484)))) b!4026219))

(assert (= (and b!4025788 ((_ is Star!11789) (regex!6884 (rule!9940 token!484)))) b!4026220))

(assert (= (and b!4025788 ((_ is Union!11789) (regex!6884 (rule!9940 token!484)))) b!4026221))

(declare-fun b!4026222 () Bool)

(declare-fun e!2497823 () Bool)

(declare-fun tp!1223729 () Bool)

(assert (=> b!4026222 (= e!2497823 (and tp_is_empty!20549 tp!1223729))))

(assert (=> b!4025804 (= tp!1223645 e!2497823)))

(assert (= (and b!4025804 ((_ is Cons!43111) (t!333912 prefix!494))) b!4026222))

(declare-fun b!4026223 () Bool)

(declare-fun e!2497824 () Bool)

(declare-fun tp!1223730 () Bool)

(assert (=> b!4026223 (= e!2497824 (and tp_is_empty!20549 tp!1223730))))

(assert (=> b!4025792 (= tp!1223652 e!2497824)))

(assert (= (and b!4025792 ((_ is Cons!43111) (t!333912 suffixResult!105))) b!4026223))

(declare-fun b!4026234 () Bool)

(declare-fun b_free!112117 () Bool)

(declare-fun b_next!112821 () Bool)

(assert (=> b!4026234 (= b_free!112117 (not b_next!112821))))

(declare-fun t!333946 () Bool)

(declare-fun tb!241955 () Bool)

(assert (=> (and b!4026234 (= (toValue!9400 (transformation!6884 (h!48533 (t!333914 rules!2999)))) (toValue!9400 (transformation!6884 (rule!9940 token!484)))) t!333946) tb!241955))

(declare-fun result!293288 () Bool)

(assert (= result!293288 result!293256))

(assert (=> d!1192221 t!333946))

(assert (=> d!1192223 t!333946))

(declare-fun b_and!309355 () Bool)

(declare-fun tp!1223740 () Bool)

(assert (=> b!4026234 (= tp!1223740 (and (=> t!333946 result!293288) b_and!309355))))

(declare-fun b_free!112119 () Bool)

(declare-fun b_next!112823 () Bool)

(assert (=> b!4026234 (= b_free!112119 (not b_next!112823))))

(declare-fun tb!241957 () Bool)

(declare-fun t!333948 () Bool)

(assert (=> (and b!4026234 (= (toChars!9259 (transformation!6884 (h!48533 (t!333914 rules!2999)))) (toChars!9259 (transformation!6884 (rule!9940 token!484)))) t!333948) tb!241957))

(declare-fun result!293290 () Bool)

(assert (= result!293290 result!293250))

(assert (=> b!4026065 t!333948))

(declare-fun tb!241959 () Bool)

(declare-fun t!333950 () Bool)

(assert (=> (and b!4026234 (= (toChars!9259 (transformation!6884 (h!48533 (t!333914 rules!2999)))) (toChars!9259 (transformation!6884 (rule!9940 token!484)))) t!333950) tb!241959))

(declare-fun result!293292 () Bool)

(assert (= result!293292 result!293278))

(assert (=> d!1192223 t!333950))

(assert (=> d!1192239 t!333948))

(declare-fun b_and!309357 () Bool)

(declare-fun tp!1223742 () Bool)

(assert (=> b!4026234 (= tp!1223742 (and (=> t!333948 result!293290) (=> t!333950 result!293292) b_and!309357))))

(declare-fun e!2497836 () Bool)

(assert (=> b!4026234 (= e!2497836 (and tp!1223740 tp!1223742))))

(declare-fun tp!1223741 () Bool)

(declare-fun e!2497835 () Bool)

(declare-fun b!4026233 () Bool)

(assert (=> b!4026233 (= e!2497835 (and tp!1223741 (inv!57585 (tag!7744 (h!48533 (t!333914 rules!2999)))) (inv!57589 (transformation!6884 (h!48533 (t!333914 rules!2999)))) e!2497836))))

(declare-fun b!4026232 () Bool)

(declare-fun e!2497833 () Bool)

(declare-fun tp!1223739 () Bool)

(assert (=> b!4026232 (= e!2497833 (and e!2497835 tp!1223739))))

(assert (=> b!4025798 (= tp!1223643 e!2497833)))

(assert (= b!4026233 b!4026234))

(assert (= b!4026232 b!4026233))

(assert (= (and b!4025798 ((_ is Cons!43113) (t!333914 rules!2999))) b!4026232))

(declare-fun m!4617549 () Bool)

(assert (=> b!4026233 m!4617549))

(declare-fun m!4617551 () Bool)

(assert (=> b!4026233 m!4617551))

(declare-fun b_lambda!117465 () Bool)

(assert (= b_lambda!117459 (or (and b!4025786 b_free!112107 (= (toChars!9259 (transformation!6884 (h!48533 rules!2999))) (toChars!9259 (transformation!6884 (rule!9940 token!484))))) (and b!4025797 b_free!112111) (and b!4026234 b_free!112119 (= (toChars!9259 (transformation!6884 (h!48533 (t!333914 rules!2999)))) (toChars!9259 (transformation!6884 (rule!9940 token!484))))) b_lambda!117465)))

(declare-fun b_lambda!117467 () Bool)

(assert (= b_lambda!117441 (or (and b!4025786 b_free!112107 (= (toChars!9259 (transformation!6884 (h!48533 rules!2999))) (toChars!9259 (transformation!6884 (rule!9940 token!484))))) (and b!4025797 b_free!112111) (and b!4026234 b_free!112119 (= (toChars!9259 (transformation!6884 (h!48533 (t!333914 rules!2999)))) (toChars!9259 (transformation!6884 (rule!9940 token!484))))) b_lambda!117467)))

(declare-fun b_lambda!117469 () Bool)

(assert (= b_lambda!117461 (or (and b!4025786 b_free!112105 (= (toValue!9400 (transformation!6884 (h!48533 rules!2999))) (toValue!9400 (transformation!6884 (rule!9940 token!484))))) (and b!4025797 b_free!112109) (and b!4026234 b_free!112117 (= (toValue!9400 (transformation!6884 (h!48533 (t!333914 rules!2999)))) (toValue!9400 (transformation!6884 (rule!9940 token!484))))) b_lambda!117469)))

(declare-fun b_lambda!117471 () Bool)

(assert (= b_lambda!117463 (or (and b!4025786 b_free!112107 (= (toChars!9259 (transformation!6884 (h!48533 rules!2999))) (toChars!9259 (transformation!6884 (rule!9940 token!484))))) (and b!4025797 b_free!112111) (and b!4026234 b_free!112119 (= (toChars!9259 (transformation!6884 (h!48533 (t!333914 rules!2999)))) (toChars!9259 (transformation!6884 (rule!9940 token!484))))) b_lambda!117471)))

(declare-fun b_lambda!117473 () Bool)

(assert (= b_lambda!117443 (or (and b!4025786 b_free!112105 (= (toValue!9400 (transformation!6884 (h!48533 rules!2999))) (toValue!9400 (transformation!6884 (rule!9940 token!484))))) (and b!4025797 b_free!112109) (and b!4026234 b_free!112117 (= (toValue!9400 (transformation!6884 (h!48533 (t!333914 rules!2999)))) (toValue!9400 (transformation!6884 (rule!9940 token!484))))) b_lambda!117473)))

(check-sat (not d!1192249) (not d!1192219) (not d!1192113) (not b!4026172) (not b!4026223) (not b!4026171) (not b_lambda!117469) b_and!309347 b_and!309351 (not b!4026179) (not d!1192213) (not b!4026059) (not b!4025888) (not b_lambda!117473) (not b!4026094) (not b!4026158) (not b!4026041) b_and!309349 (not b!4026166) (not d!1192105) (not d!1192207) (not b!4025889) (not b!4026232) (not b!4026163) (not b!4026175) (not b!4026071) (not b!4026217) (not b!4026221) (not b!4026009) (not b!4026212) (not b!4026180) (not d!1192239) (not d!1192217) (not b!4026194) (not b_lambda!117465) (not b!4026010) (not b!4026039) (not b!4025890) (not d!1192231) (not b_next!112823) (not b_next!112811) (not b!4026160) (not b!4026176) (not b!4026040) (not b!4026084) (not tb!241937) (not b!4026058) (not b!4026156) (not b_next!112813) b_and!309355 (not b!4026080) (not tb!241951) (not b!4026016) (not d!1192205) (not b!4026017) (not b!4026213) (not b!4026233) (not d!1192197) (not b!4026060) (not b!4026219) (not b!4025907) (not b!4026015) (not b!4026085) (not b!4026012) (not d!1192243) (not b_lambda!117471) (not b!4026214) (not d!1192127) (not d!1192223) (not b_next!112815) (not b!4026027) (not d!1192189) (not d!1192195) (not b!4026200) (not b!4026183) (not d!1192255) (not b_next!112821) (not b!4026190) (not b!4026162) (not b!4026089) (not d!1192253) (not b!4026220) (not d!1192125) (not d!1192215) (not b!4026014) b_and!309357 (not b!4026082) (not b!4026031) (not d!1192267) (not b!4026052) tp_is_empty!20549 (not b!4026028) (not b!4026215) (not b_next!112809) (not d!1192261) b_and!309353 (not b!4026193) (not d!1192121) (not b!4026053) (not b!4026037) (not d!1192237) (not b!4026065) (not b!4026167) (not tb!241933) (not b!4026032) (not bm!286769) (not b!4026074) (not b!4026035) (not b!4026169) (not d!1192241) (not d!1192263) (not d!1192247) (not b!4026066) (not b!4026195) (not b!4025872) (not b!4026033) (not b!4026216) (not b!4026184) (not b!4026222) (not b!4026013) (not b!4026055) (not b!4026036) (not b_lambda!117467) (not d!1192251))
(check-sat b_and!309349 (not b_next!112815) (not b_next!112821) b_and!309357 (not b_next!112809) b_and!309353 b_and!309347 b_and!309351 (not b_next!112823) (not b_next!112811) (not b_next!112813) b_and!309355)
(get-model)

(declare-fun b!4026369 () Bool)

(declare-fun res!1638660 () Bool)

(declare-fun e!2497913 () Bool)

(assert (=> b!4026369 (=> (not res!1638660) (not e!2497913))))

(assert (=> b!4026369 (= res!1638660 (= (head!8537 (tail!6269 lt!1430280)) (head!8537 (tail!6269 lt!1430278))))))

(declare-fun b!4026368 () Bool)

(declare-fun e!2497915 () Bool)

(assert (=> b!4026368 (= e!2497915 e!2497913)))

(declare-fun res!1638659 () Bool)

(assert (=> b!4026368 (=> (not res!1638659) (not e!2497913))))

(assert (=> b!4026368 (= res!1638659 (not ((_ is Nil!43111) (tail!6269 lt!1430278))))))

(declare-fun b!4026371 () Bool)

(declare-fun e!2497914 () Bool)

(assert (=> b!4026371 (= e!2497914 (>= (size!32226 (tail!6269 lt!1430278)) (size!32226 (tail!6269 lt!1430280))))))

(declare-fun b!4026370 () Bool)

(assert (=> b!4026370 (= e!2497913 (isPrefix!3971 (tail!6269 (tail!6269 lt!1430280)) (tail!6269 (tail!6269 lt!1430278))))))

(declare-fun d!1192391 () Bool)

(assert (=> d!1192391 e!2497914))

(declare-fun res!1638661 () Bool)

(assert (=> d!1192391 (=> res!1638661 e!2497914)))

(declare-fun lt!1430464 () Bool)

(assert (=> d!1192391 (= res!1638661 (not lt!1430464))))

(assert (=> d!1192391 (= lt!1430464 e!2497915)))

(declare-fun res!1638658 () Bool)

(assert (=> d!1192391 (=> res!1638658 e!2497915)))

(assert (=> d!1192391 (= res!1638658 ((_ is Nil!43111) (tail!6269 lt!1430280)))))

(assert (=> d!1192391 (= (isPrefix!3971 (tail!6269 lt!1430280) (tail!6269 lt!1430278)) lt!1430464)))

(assert (= (and d!1192391 (not res!1638658)) b!4026368))

(assert (= (and b!4026368 res!1638659) b!4026369))

(assert (= (and b!4026369 res!1638660) b!4026370))

(assert (= (and d!1192391 (not res!1638661)) b!4026371))

(assert (=> b!4026369 m!4617119))

(declare-fun m!4617791 () Bool)

(assert (=> b!4026369 m!4617791))

(assert (=> b!4026369 m!4617357))

(declare-fun m!4617793 () Bool)

(assert (=> b!4026369 m!4617793))

(assert (=> b!4026371 m!4617357))

(declare-fun m!4617795 () Bool)

(assert (=> b!4026371 m!4617795))

(assert (=> b!4026371 m!4617119))

(declare-fun m!4617799 () Bool)

(assert (=> b!4026371 m!4617799))

(assert (=> b!4026370 m!4617119))

(declare-fun m!4617801 () Bool)

(assert (=> b!4026370 m!4617801))

(assert (=> b!4026370 m!4617357))

(declare-fun m!4617803 () Bool)

(assert (=> b!4026370 m!4617803))

(assert (=> b!4026370 m!4617801))

(assert (=> b!4026370 m!4617803))

(declare-fun m!4617805 () Bool)

(assert (=> b!4026370 m!4617805))

(assert (=> b!4026040 d!1192391))

(declare-fun d!1192407 () Bool)

(assert (=> d!1192407 (= (tail!6269 lt!1430280) (t!333912 lt!1430280))))

(assert (=> b!4026040 d!1192407))

(declare-fun d!1192415 () Bool)

(assert (=> d!1192415 (= (tail!6269 lt!1430278) (t!333912 lt!1430278))))

(assert (=> b!4026040 d!1192415))

(declare-fun b!4026389 () Bool)

(declare-fun e!2497926 () List!43235)

(assert (=> b!4026389 (= e!2497926 (Cons!43111 (h!48531 (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379))))) (++!11286 (t!333912 (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379))))) (_2!24241 (get!14154 lt!1430379)))))))

(declare-fun d!1192417 () Bool)

(declare-fun e!2497925 () Bool)

(assert (=> d!1192417 e!2497925))

(declare-fun res!1638668 () Bool)

(assert (=> d!1192417 (=> (not res!1638668) (not e!2497925))))

(declare-fun lt!1430469 () List!43235)

(assert (=> d!1192417 (= res!1638668 (= (content!6548 lt!1430469) ((_ map or) (content!6548 (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379))))) (content!6548 (_2!24241 (get!14154 lt!1430379))))))))

(assert (=> d!1192417 (= lt!1430469 e!2497926)))

(declare-fun c!695638 () Bool)

(assert (=> d!1192417 (= c!695638 ((_ is Nil!43111) (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379))))))))

(assert (=> d!1192417 (= (++!11286 (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379)))) (_2!24241 (get!14154 lt!1430379))) lt!1430469)))

(declare-fun b!4026390 () Bool)

(declare-fun res!1638669 () Bool)

(assert (=> b!4026390 (=> (not res!1638669) (not e!2497925))))

(assert (=> b!4026390 (= res!1638669 (= (size!32226 lt!1430469) (+ (size!32226 (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379))))) (size!32226 (_2!24241 (get!14154 lt!1430379))))))))

(declare-fun b!4026391 () Bool)

(assert (=> b!4026391 (= e!2497925 (or (not (= (_2!24241 (get!14154 lt!1430379)) Nil!43111)) (= lt!1430469 (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379)))))))))

(declare-fun b!4026388 () Bool)

(assert (=> b!4026388 (= e!2497926 (_2!24241 (get!14154 lt!1430379)))))

(assert (= (and d!1192417 c!695638) b!4026388))

(assert (= (and d!1192417 (not c!695638)) b!4026389))

(assert (= (and d!1192417 res!1638668) b!4026390))

(assert (= (and b!4026390 res!1638669) b!4026391))

(declare-fun m!4617829 () Bool)

(assert (=> b!4026389 m!4617829))

(declare-fun m!4617831 () Bool)

(assert (=> d!1192417 m!4617831))

(assert (=> d!1192417 m!4617297))

(declare-fun m!4617833 () Bool)

(assert (=> d!1192417 m!4617833))

(declare-fun m!4617835 () Bool)

(assert (=> d!1192417 m!4617835))

(declare-fun m!4617837 () Bool)

(assert (=> b!4026390 m!4617837))

(assert (=> b!4026390 m!4617297))

(declare-fun m!4617839 () Bool)

(assert (=> b!4026390 m!4617839))

(assert (=> b!4026390 m!4617305))

(assert (=> b!4026017 d!1192417))

(declare-fun d!1192421 () Bool)

(assert (=> d!1192421 (= (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379)))) (list!16036 (c!695538 (charsOf!4700 (_1!24241 (get!14154 lt!1430379))))))))

(declare-fun bs!590061 () Bool)

(assert (= bs!590061 d!1192421))

(declare-fun m!4617841 () Bool)

(assert (=> bs!590061 m!4617841))

(assert (=> b!4026017 d!1192421))

(declare-fun d!1192423 () Bool)

(declare-fun lt!1430470 () BalanceConc!25784)

(assert (=> d!1192423 (= (list!16034 lt!1430470) (originalCharacters!7484 (_1!24241 (get!14154 lt!1430379))))))

(assert (=> d!1192423 (= lt!1430470 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379))))) (value!216828 (_1!24241 (get!14154 lt!1430379)))))))

(assert (=> d!1192423 (= (charsOf!4700 (_1!24241 (get!14154 lt!1430379))) lt!1430470)))

(declare-fun b_lambda!117479 () Bool)

(assert (=> (not b_lambda!117479) (not d!1192423)))

(declare-fun tb!241973 () Bool)

(declare-fun t!333967 () Bool)

(assert (=> (and b!4025786 (= (toChars!9259 (transformation!6884 (h!48533 rules!2999))) (toChars!9259 (transformation!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379)))))) t!333967) tb!241973))

(declare-fun b!4026392 () Bool)

(declare-fun e!2497927 () Bool)

(declare-fun tp!1223744 () Bool)

(assert (=> b!4026392 (= e!2497927 (and (inv!57592 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379))))) (value!216828 (_1!24241 (get!14154 lt!1430379)))))) tp!1223744))))

(declare-fun result!293306 () Bool)

(assert (=> tb!241973 (= result!293306 (and (inv!57593 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379))))) (value!216828 (_1!24241 (get!14154 lt!1430379))))) e!2497927))))

(assert (= tb!241973 b!4026392))

(declare-fun m!4617843 () Bool)

(assert (=> b!4026392 m!4617843))

(declare-fun m!4617845 () Bool)

(assert (=> tb!241973 m!4617845))

(assert (=> d!1192423 t!333967))

(declare-fun b_and!309371 () Bool)

(assert (= b_and!309351 (and (=> t!333967 result!293306) b_and!309371)))

(declare-fun tb!241975 () Bool)

(declare-fun t!333969 () Bool)

(assert (=> (and b!4025797 (= (toChars!9259 (transformation!6884 (rule!9940 token!484))) (toChars!9259 (transformation!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379)))))) t!333969) tb!241975))

(declare-fun result!293308 () Bool)

(assert (= result!293308 result!293306))

(assert (=> d!1192423 t!333969))

(declare-fun b_and!309373 () Bool)

(assert (= b_and!309353 (and (=> t!333969 result!293308) b_and!309373)))

(declare-fun t!333971 () Bool)

(declare-fun tb!241977 () Bool)

(assert (=> (and b!4026234 (= (toChars!9259 (transformation!6884 (h!48533 (t!333914 rules!2999)))) (toChars!9259 (transformation!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379)))))) t!333971) tb!241977))

(declare-fun result!293310 () Bool)

(assert (= result!293310 result!293306))

(assert (=> d!1192423 t!333971))

(declare-fun b_and!309375 () Bool)

(assert (= b_and!309357 (and (=> t!333971 result!293310) b_and!309375)))

(declare-fun m!4617847 () Bool)

(assert (=> d!1192423 m!4617847))

(declare-fun m!4617849 () Bool)

(assert (=> d!1192423 m!4617849))

(assert (=> b!4026017 d!1192423))

(declare-fun d!1192425 () Bool)

(assert (=> d!1192425 (= (get!14154 lt!1430379) (v!39681 lt!1430379))))

(assert (=> b!4026017 d!1192425))

(declare-fun d!1192427 () Bool)

(declare-fun charsToBigInt!0 (List!43236 Int) Int)

(assert (=> d!1192427 (= (inv!15 (value!216828 token!484)) (= (charsToBigInt!0 (text!50247 (value!216828 token!484)) 0) (value!216823 (value!216828 token!484))))))

(declare-fun bs!590062 () Bool)

(assert (= bs!590062 d!1192427))

(declare-fun m!4617873 () Bool)

(assert (=> bs!590062 m!4617873))

(assert (=> b!4026053 d!1192427))

(declare-fun b!4026407 () Bool)

(declare-fun e!2497938 () List!43235)

(assert (=> b!4026407 (= e!2497938 (Cons!43111 (h!48531 (t!333912 lt!1430280)) (++!11286 (t!333912 (t!333912 lt!1430280)) lt!1430270)))))

(declare-fun d!1192439 () Bool)

(declare-fun e!2497937 () Bool)

(assert (=> d!1192439 e!2497937))

(declare-fun res!1638679 () Bool)

(assert (=> d!1192439 (=> (not res!1638679) (not e!2497937))))

(declare-fun lt!1430477 () List!43235)

(assert (=> d!1192439 (= res!1638679 (= (content!6548 lt!1430477) ((_ map or) (content!6548 (t!333912 lt!1430280)) (content!6548 lt!1430270))))))

(assert (=> d!1192439 (= lt!1430477 e!2497938)))

(declare-fun c!695642 () Bool)

(assert (=> d!1192439 (= c!695642 ((_ is Nil!43111) (t!333912 lt!1430280)))))

(assert (=> d!1192439 (= (++!11286 (t!333912 lt!1430280) lt!1430270) lt!1430477)))

(declare-fun b!4026408 () Bool)

(declare-fun res!1638680 () Bool)

(assert (=> b!4026408 (=> (not res!1638680) (not e!2497937))))

(assert (=> b!4026408 (= res!1638680 (= (size!32226 lt!1430477) (+ (size!32226 (t!333912 lt!1430280)) (size!32226 lt!1430270))))))

(declare-fun b!4026409 () Bool)

(assert (=> b!4026409 (= e!2497937 (or (not (= lt!1430270 Nil!43111)) (= lt!1430477 (t!333912 lt!1430280))))))

(declare-fun b!4026406 () Bool)

(assert (=> b!4026406 (= e!2497938 lt!1430270)))

(assert (= (and d!1192439 c!695642) b!4026406))

(assert (= (and d!1192439 (not c!695642)) b!4026407))

(assert (= (and d!1192439 res!1638679) b!4026408))

(assert (= (and b!4026408 res!1638680) b!4026409))

(declare-fun m!4617881 () Bool)

(assert (=> b!4026407 m!4617881))

(declare-fun m!4617887 () Bool)

(assert (=> d!1192439 m!4617887))

(declare-fun m!4617889 () Bool)

(assert (=> d!1192439 m!4617889))

(assert (=> d!1192439 m!4617503))

(declare-fun m!4617891 () Bool)

(assert (=> b!4026408 m!4617891))

(assert (=> b!4026408 m!4617473))

(assert (=> b!4026408 m!4617507))

(assert (=> b!4026171 d!1192439))

(declare-fun d!1192447 () Bool)

(assert (=> d!1192447 (= (head!8537 newSuffix!27) (h!48531 newSuffix!27))))

(assert (=> b!4026058 d!1192447))

(declare-fun d!1192449 () Bool)

(assert (=> d!1192449 (= (head!8537 suffix!1299) (h!48531 suffix!1299))))

(assert (=> b!4026058 d!1192449))

(declare-fun d!1192453 () Bool)

(declare-fun e!2497952 () Bool)

(assert (=> d!1192453 e!2497952))

(declare-fun res!1638690 () Bool)

(assert (=> d!1192453 (=> (not res!1638690) (not e!2497952))))

(declare-fun lt!1430481 () BalanceConc!25784)

(assert (=> d!1192453 (= res!1638690 (= (list!16034 lt!1430481) lt!1430280))))

(declare-fun fromList!848 (List!43235) Conc!13095)

(assert (=> d!1192453 (= lt!1430481 (BalanceConc!25785 (fromList!848 lt!1430280)))))

(assert (=> d!1192453 (= (fromListB!2328 lt!1430280) lt!1430481)))

(declare-fun b!4026429 () Bool)

(declare-fun isBalanced!3669 (Conc!13095) Bool)

(assert (=> b!4026429 (= e!2497952 (isBalanced!3669 (fromList!848 lt!1430280)))))

(assert (= (and d!1192453 res!1638690) b!4026429))

(declare-fun m!4617909 () Bool)

(assert (=> d!1192453 m!4617909))

(declare-fun m!4617913 () Bool)

(assert (=> d!1192453 m!4617913))

(assert (=> b!4026429 m!4617913))

(assert (=> b!4026429 m!4617913))

(declare-fun m!4617915 () Bool)

(assert (=> b!4026429 m!4617915))

(assert (=> d!1192231 d!1192453))

(declare-fun b!4026433 () Bool)

(declare-fun e!2497955 () List!43235)

(assert (=> b!4026433 (= e!2497955 (Cons!43111 (h!48531 lt!1430280) (++!11286 (t!333912 lt!1430280) lt!1430421)))))

(declare-fun d!1192461 () Bool)

(declare-fun e!2497954 () Bool)

(assert (=> d!1192461 e!2497954))

(declare-fun res!1638691 () Bool)

(assert (=> d!1192461 (=> (not res!1638691) (not e!2497954))))

(declare-fun lt!1430483 () List!43235)

(assert (=> d!1192461 (= res!1638691 (= (content!6548 lt!1430483) ((_ map or) (content!6548 lt!1430280) (content!6548 lt!1430421))))))

(assert (=> d!1192461 (= lt!1430483 e!2497955)))

(declare-fun c!695650 () Bool)

(assert (=> d!1192461 (= c!695650 ((_ is Nil!43111) lt!1430280))))

(assert (=> d!1192461 (= (++!11286 lt!1430280 lt!1430421) lt!1430483)))

(declare-fun b!4026434 () Bool)

(declare-fun res!1638692 () Bool)

(assert (=> b!4026434 (=> (not res!1638692) (not e!2497954))))

(assert (=> b!4026434 (= res!1638692 (= (size!32226 lt!1430483) (+ (size!32226 lt!1430280) (size!32226 lt!1430421))))))

(declare-fun b!4026435 () Bool)

(assert (=> b!4026435 (= e!2497954 (or (not (= lt!1430421 Nil!43111)) (= lt!1430483 lt!1430280)))))

(declare-fun b!4026432 () Bool)

(assert (=> b!4026432 (= e!2497955 lt!1430421)))

(assert (= (and d!1192461 c!695650) b!4026432))

(assert (= (and d!1192461 (not c!695650)) b!4026433))

(assert (= (and d!1192461 res!1638691) b!4026434))

(assert (= (and b!4026434 res!1638692) b!4026435))

(declare-fun m!4617919 () Bool)

(assert (=> b!4026433 m!4617919))

(declare-fun m!4617921 () Bool)

(assert (=> d!1192461 m!4617921))

(assert (=> d!1192461 m!4617401))

(declare-fun m!4617923 () Bool)

(assert (=> d!1192461 m!4617923))

(declare-fun m!4617925 () Bool)

(assert (=> b!4026434 m!4617925))

(assert (=> b!4026434 m!4617017))

(declare-fun m!4617929 () Bool)

(assert (=> b!4026434 m!4617929))

(assert (=> d!1192263 d!1192461))

(assert (=> d!1192263 d!1192235))

(assert (=> d!1192263 d!1192233))

(declare-fun d!1192467 () Bool)

(declare-fun nullableFct!1154 (Regex!11789) Bool)

(assert (=> d!1192467 (= (nullable!4134 (regex!6884 (rule!9940 token!484))) (nullableFct!1154 (regex!6884 (rule!9940 token!484))))))

(declare-fun bs!590064 () Bool)

(assert (= bs!590064 d!1192467))

(declare-fun m!4617935 () Bool)

(assert (=> bs!590064 m!4617935))

(assert (=> b!4026094 d!1192467))

(assert (=> b!4026015 d!1192425))

(declare-fun d!1192471 () Bool)

(assert (=> d!1192471 (= (apply!10073 (transformation!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379)))) (seqFromList!5101 (originalCharacters!7484 (_1!24241 (get!14154 lt!1430379))))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379))))) (seqFromList!5101 (originalCharacters!7484 (_1!24241 (get!14154 lt!1430379))))))))

(declare-fun b_lambda!117481 () Bool)

(assert (=> (not b_lambda!117481) (not d!1192471)))

(declare-fun t!333973 () Bool)

(declare-fun tb!241979 () Bool)

(assert (=> (and b!4025786 (= (toValue!9400 (transformation!6884 (h!48533 rules!2999))) (toValue!9400 (transformation!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379)))))) t!333973) tb!241979))

(declare-fun result!293312 () Bool)

(assert (=> tb!241979 (= result!293312 (inv!21 (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379))))) (seqFromList!5101 (originalCharacters!7484 (_1!24241 (get!14154 lt!1430379)))))))))

(declare-fun m!4617937 () Bool)

(assert (=> tb!241979 m!4617937))

(assert (=> d!1192471 t!333973))

(declare-fun b_and!309377 () Bool)

(assert (= b_and!309347 (and (=> t!333973 result!293312) b_and!309377)))

(declare-fun tb!241981 () Bool)

(declare-fun t!333975 () Bool)

(assert (=> (and b!4025797 (= (toValue!9400 (transformation!6884 (rule!9940 token!484))) (toValue!9400 (transformation!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379)))))) t!333975) tb!241981))

(declare-fun result!293314 () Bool)

(assert (= result!293314 result!293312))

(assert (=> d!1192471 t!333975))

(declare-fun b_and!309379 () Bool)

(assert (= b_and!309349 (and (=> t!333975 result!293314) b_and!309379)))

(declare-fun t!333977 () Bool)

(declare-fun tb!241983 () Bool)

(assert (=> (and b!4026234 (= (toValue!9400 (transformation!6884 (h!48533 (t!333914 rules!2999)))) (toValue!9400 (transformation!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379)))))) t!333977) tb!241983))

(declare-fun result!293316 () Bool)

(assert (= result!293316 result!293312))

(assert (=> d!1192471 t!333977))

(declare-fun b_and!309381 () Bool)

(assert (= b_and!309355 (and (=> t!333977 result!293316) b_and!309381)))

(assert (=> d!1192471 m!4617319))

(declare-fun m!4617939 () Bool)

(assert (=> d!1192471 m!4617939))

(assert (=> b!4026015 d!1192471))

(declare-fun d!1192473 () Bool)

(assert (=> d!1192473 (= (seqFromList!5101 (originalCharacters!7484 (_1!24241 (get!14154 lt!1430379)))) (fromListB!2328 (originalCharacters!7484 (_1!24241 (get!14154 lt!1430379)))))))

(declare-fun bs!590065 () Bool)

(assert (= bs!590065 d!1192473))

(declare-fun m!4617945 () Bool)

(assert (=> bs!590065 m!4617945))

(assert (=> b!4026015 d!1192473))

(declare-fun d!1192477 () Bool)

(declare-fun lt!1430485 () Int)

(assert (=> d!1192477 (>= lt!1430485 0)))

(declare-fun e!2497963 () Int)

(assert (=> d!1192477 (= lt!1430485 e!2497963)))

(declare-fun c!695656 () Bool)

(assert (=> d!1192477 (= c!695656 ((_ is Nil!43111) lt!1430384))))

(assert (=> d!1192477 (= (size!32226 lt!1430384) lt!1430485)))

(declare-fun b!4026447 () Bool)

(assert (=> b!4026447 (= e!2497963 0)))

(declare-fun b!4026448 () Bool)

(assert (=> b!4026448 (= e!2497963 (+ 1 (size!32226 (t!333912 lt!1430384))))))

(assert (= (and d!1192477 c!695656) b!4026447))

(assert (= (and d!1192477 (not c!695656)) b!4026448))

(declare-fun m!4617947 () Bool)

(assert (=> b!4026448 m!4617947))

(assert (=> b!4026028 d!1192477))

(assert (=> b!4026028 d!1192235))

(assert (=> b!4026028 d!1192209))

(declare-fun bs!590066 () Bool)

(declare-fun d!1192479 () Bool)

(assert (= bs!590066 (and d!1192479 d!1192223)))

(declare-fun lambda!127177 () Int)

(assert (=> bs!590066 (= lambda!127177 lambda!127161)))

(assert (=> d!1192479 true))

(assert (=> d!1192479 (< (dynLambda!18276 order!22553 (toChars!9259 (transformation!6884 (rule!9940 token!484)))) (dynLambda!18275 order!22551 lambda!127177))))

(assert (=> d!1192479 true))

(assert (=> d!1192479 (< (dynLambda!18274 order!22549 (toValue!9400 (transformation!6884 (rule!9940 token!484)))) (dynLambda!18275 order!22551 lambda!127177))))

(declare-fun Forall!1478 (Int) Bool)

(assert (=> d!1192479 (= (semiInverseModEq!2942 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (toValue!9400 (transformation!6884 (rule!9940 token!484)))) (Forall!1478 lambda!127177))))

(declare-fun bs!590067 () Bool)

(assert (= bs!590067 d!1192479))

(declare-fun m!4617949 () Bool)

(assert (=> bs!590067 m!4617949))

(assert (=> d!1192215 d!1192479))

(declare-fun d!1192481 () Bool)

(assert (=> d!1192481 (= (head!8537 prefix!494) (h!48531 prefix!494))))

(assert (=> b!4026031 d!1192481))

(declare-fun d!1192483 () Bool)

(assert (=> d!1192483 (= (head!8537 lt!1430273) (h!48531 lt!1430273))))

(assert (=> b!4026031 d!1192483))

(declare-fun d!1192485 () Bool)

(assert (=> d!1192485 (= (head!8537 lt!1430280) (h!48531 lt!1430280))))

(assert (=> b!4025888 d!1192485))

(declare-fun d!1192487 () Bool)

(assert (=> d!1192487 (= (head!8537 lt!1430281) (h!48531 lt!1430281))))

(assert (=> b!4025888 d!1192487))

(assert (=> b!4026060 d!1192209))

(assert (=> b!4026060 d!1192211))

(declare-fun d!1192489 () Bool)

(declare-fun lt!1430486 () Int)

(assert (=> d!1192489 (>= lt!1430486 0)))

(declare-fun e!2497978 () Int)

(assert (=> d!1192489 (= lt!1430486 e!2497978)))

(declare-fun c!695661 () Bool)

(assert (=> d!1192489 (= c!695661 ((_ is Nil!43111) lt!1430413))))

(assert (=> d!1192489 (= (size!32226 lt!1430413) lt!1430486)))

(declare-fun b!4026471 () Bool)

(assert (=> b!4026471 (= e!2497978 0)))

(declare-fun b!4026472 () Bool)

(assert (=> b!4026472 (= e!2497978 (+ 1 (size!32226 (t!333912 lt!1430413))))))

(assert (= (and d!1192489 c!695661) b!4026471))

(assert (= (and d!1192489 (not c!695661)) b!4026472))

(declare-fun m!4617951 () Bool)

(assert (=> b!4026472 m!4617951))

(assert (=> b!4026176 d!1192489))

(declare-fun d!1192491 () Bool)

(declare-fun lt!1430487 () Int)

(assert (=> d!1192491 (>= lt!1430487 0)))

(declare-fun e!2497979 () Int)

(assert (=> d!1192491 (= lt!1430487 e!2497979)))

(declare-fun c!695662 () Bool)

(assert (=> d!1192491 (= c!695662 ((_ is Nil!43111) lt!1430275))))

(assert (=> d!1192491 (= (size!32226 lt!1430275) lt!1430487)))

(declare-fun b!4026473 () Bool)

(assert (=> b!4026473 (= e!2497979 0)))

(declare-fun b!4026474 () Bool)

(assert (=> b!4026474 (= e!2497979 (+ 1 (size!32226 (t!333912 lt!1430275))))))

(assert (= (and d!1192491 c!695662) b!4026473))

(assert (= (and d!1192491 (not c!695662)) b!4026474))

(declare-fun m!4617953 () Bool)

(assert (=> b!4026474 m!4617953))

(assert (=> b!4026176 d!1192491))

(assert (=> b!4026176 d!1192209))

(declare-fun b!4026476 () Bool)

(declare-fun res!1638706 () Bool)

(declare-fun e!2497980 () Bool)

(assert (=> b!4026476 (=> (not res!1638706) (not e!2497980))))

(assert (=> b!4026476 (= res!1638706 (= (head!8537 prefix!494) (head!8537 (++!11286 prefix!494 suffix!1299))))))

(declare-fun b!4026475 () Bool)

(declare-fun e!2497982 () Bool)

(assert (=> b!4026475 (= e!2497982 e!2497980)))

(declare-fun res!1638705 () Bool)

(assert (=> b!4026475 (=> (not res!1638705) (not e!2497980))))

(assert (=> b!4026475 (= res!1638705 (not ((_ is Nil!43111) (++!11286 prefix!494 suffix!1299))))))

(declare-fun b!4026478 () Bool)

(declare-fun e!2497981 () Bool)

(assert (=> b!4026478 (= e!2497981 (>= (size!32226 (++!11286 prefix!494 suffix!1299)) (size!32226 prefix!494)))))

(declare-fun b!4026477 () Bool)

(assert (=> b!4026477 (= e!2497980 (isPrefix!3971 (tail!6269 prefix!494) (tail!6269 (++!11286 prefix!494 suffix!1299))))))

(declare-fun d!1192493 () Bool)

(assert (=> d!1192493 e!2497981))

(declare-fun res!1638707 () Bool)

(assert (=> d!1192493 (=> res!1638707 e!2497981)))

(declare-fun lt!1430488 () Bool)

(assert (=> d!1192493 (= res!1638707 (not lt!1430488))))

(assert (=> d!1192493 (= lt!1430488 e!2497982)))

(declare-fun res!1638704 () Bool)

(assert (=> d!1192493 (=> res!1638704 e!2497982)))

(assert (=> d!1192493 (= res!1638704 ((_ is Nil!43111) prefix!494))))

(assert (=> d!1192493 (= (isPrefix!3971 prefix!494 (++!11286 prefix!494 suffix!1299)) lt!1430488)))

(assert (= (and d!1192493 (not res!1638704)) b!4026475))

(assert (= (and b!4026475 res!1638705) b!4026476))

(assert (= (and b!4026476 res!1638706) b!4026477))

(assert (= (and d!1192493 (not res!1638707)) b!4026478))

(assert (=> b!4026476 m!4617333))

(assert (=> b!4026476 m!4617005))

(declare-fun m!4617955 () Bool)

(assert (=> b!4026476 m!4617955))

(assert (=> b!4026478 m!4617005))

(declare-fun m!4617957 () Bool)

(assert (=> b!4026478 m!4617957))

(assert (=> b!4026478 m!4617019))

(assert (=> b!4026477 m!4617337))

(assert (=> b!4026477 m!4617005))

(declare-fun m!4617959 () Bool)

(assert (=> b!4026477 m!4617959))

(assert (=> b!4026477 m!4617337))

(assert (=> b!4026477 m!4617959))

(declare-fun m!4617961 () Bool)

(assert (=> b!4026477 m!4617961))

(assert (=> d!1192197 d!1192493))

(assert (=> d!1192197 d!1192189))

(declare-fun d!1192495 () Bool)

(assert (=> d!1192495 (isPrefix!3971 prefix!494 (++!11286 prefix!494 suffix!1299))))

(assert (=> d!1192495 true))

(declare-fun _$46!1699 () Unit!62274)

(assert (=> d!1192495 (= (choose!24351 prefix!494 suffix!1299) _$46!1699)))

(declare-fun bs!590068 () Bool)

(assert (= bs!590068 d!1192495))

(assert (=> bs!590068 m!4617005))

(assert (=> bs!590068 m!4617005))

(assert (=> bs!590068 m!4617349))

(assert (=> d!1192197 d!1192495))

(declare-fun b!4026489 () Bool)

(declare-fun e!2497991 () List!43235)

(assert (=> b!4026489 (= e!2497991 (Cons!43111 (h!48531 (t!333912 lt!1430287)) (++!11286 (t!333912 (t!333912 lt!1430287)) suffix!1299)))))

(declare-fun d!1192497 () Bool)

(declare-fun e!2497990 () Bool)

(assert (=> d!1192497 e!2497990))

(declare-fun res!1638713 () Bool)

(assert (=> d!1192497 (=> (not res!1638713) (not e!2497990))))

(declare-fun lt!1430489 () List!43235)

(assert (=> d!1192497 (= res!1638713 (= (content!6548 lt!1430489) ((_ map or) (content!6548 (t!333912 lt!1430287)) (content!6548 suffix!1299))))))

(assert (=> d!1192497 (= lt!1430489 e!2497991)))

(declare-fun c!695665 () Bool)

(assert (=> d!1192497 (= c!695665 ((_ is Nil!43111) (t!333912 lt!1430287)))))

(assert (=> d!1192497 (= (++!11286 (t!333912 lt!1430287) suffix!1299) lt!1430489)))

(declare-fun b!4026490 () Bool)

(declare-fun res!1638714 () Bool)

(assert (=> b!4026490 (=> (not res!1638714) (not e!2497990))))

(assert (=> b!4026490 (= res!1638714 (= (size!32226 lt!1430489) (+ (size!32226 (t!333912 lt!1430287)) (size!32226 suffix!1299))))))

(declare-fun b!4026491 () Bool)

(assert (=> b!4026491 (= e!2497990 (or (not (= suffix!1299 Nil!43111)) (= lt!1430489 (t!333912 lt!1430287))))))

(declare-fun b!4026488 () Bool)

(assert (=> b!4026488 (= e!2497991 suffix!1299)))

(assert (= (and d!1192497 c!695665) b!4026488))

(assert (= (and d!1192497 (not c!695665)) b!4026489))

(assert (= (and d!1192497 res!1638713) b!4026490))

(assert (= (and b!4026490 res!1638714) b!4026491))

(declare-fun m!4617973 () Bool)

(assert (=> b!4026489 m!4617973))

(declare-fun m!4617975 () Bool)

(assert (=> d!1192497 m!4617975))

(declare-fun m!4617977 () Bool)

(assert (=> d!1192497 m!4617977))

(assert (=> d!1192497 m!4617329))

(declare-fun m!4617979 () Bool)

(assert (=> b!4026490 m!4617979))

(declare-fun m!4617981 () Bool)

(assert (=> b!4026490 m!4617981))

(assert (=> b!4026490 m!4616963))

(assert (=> b!4026179 d!1192497))

(declare-fun d!1192503 () Bool)

(declare-fun charsToInt!0 (List!43236) (_ BitVec 32))

(assert (=> d!1192503 (= (inv!16 (value!216828 token!484)) (= (charsToInt!0 (text!50245 (value!216828 token!484))) (value!216819 (value!216828 token!484))))))

(declare-fun bs!590069 () Bool)

(assert (= bs!590069 d!1192503))

(declare-fun m!4617987 () Bool)

(assert (=> bs!590069 m!4617987))

(assert (=> b!4026055 d!1192503))

(declare-fun d!1192507 () Bool)

(assert (=> d!1192507 (= (list!16034 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484))) (list!16036 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484)))))))

(declare-fun bs!590070 () Bool)

(assert (= bs!590070 d!1192507))

(declare-fun m!4617989 () Bool)

(assert (=> bs!590070 m!4617989))

(assert (=> b!4026065 d!1192507))

(declare-fun b!4026497 () Bool)

(declare-fun res!1638717 () Bool)

(declare-fun e!2497994 () Bool)

(assert (=> b!4026497 (=> (not res!1638717) (not e!2497994))))

(assert (=> b!4026497 (= res!1638717 (= (head!8537 (tail!6269 lt!1430280)) (head!8537 (tail!6269 lt!1430273))))))

(declare-fun b!4026496 () Bool)

(declare-fun e!2497996 () Bool)

(assert (=> b!4026496 (= e!2497996 e!2497994)))

(declare-fun res!1638716 () Bool)

(assert (=> b!4026496 (=> (not res!1638716) (not e!2497994))))

(assert (=> b!4026496 (= res!1638716 (not ((_ is Nil!43111) (tail!6269 lt!1430273))))))

(declare-fun b!4026499 () Bool)

(declare-fun e!2497995 () Bool)

(assert (=> b!4026499 (= e!2497995 (>= (size!32226 (tail!6269 lt!1430273)) (size!32226 (tail!6269 lt!1430280))))))

(declare-fun b!4026498 () Bool)

(assert (=> b!4026498 (= e!2497994 (isPrefix!3971 (tail!6269 (tail!6269 lt!1430280)) (tail!6269 (tail!6269 lt!1430273))))))

(declare-fun d!1192509 () Bool)

(assert (=> d!1192509 e!2497995))

(declare-fun res!1638718 () Bool)

(assert (=> d!1192509 (=> res!1638718 e!2497995)))

(declare-fun lt!1430490 () Bool)

(assert (=> d!1192509 (= res!1638718 (not lt!1430490))))

(assert (=> d!1192509 (= lt!1430490 e!2497996)))

(declare-fun res!1638715 () Bool)

(assert (=> d!1192509 (=> res!1638715 e!2497996)))

(assert (=> d!1192509 (= res!1638715 ((_ is Nil!43111) (tail!6269 lt!1430280)))))

(assert (=> d!1192509 (= (isPrefix!3971 (tail!6269 lt!1430280) (tail!6269 lt!1430273)) lt!1430490)))

(assert (= (and d!1192509 (not res!1638715)) b!4026496))

(assert (= (and b!4026496 res!1638716) b!4026497))

(assert (= (and b!4026497 res!1638717) b!4026498))

(assert (= (and d!1192509 (not res!1638718)) b!4026499))

(assert (=> b!4026497 m!4617119))

(assert (=> b!4026497 m!4617791))

(assert (=> b!4026497 m!4617339))

(declare-fun m!4617991 () Bool)

(assert (=> b!4026497 m!4617991))

(assert (=> b!4026499 m!4617339))

(declare-fun m!4617993 () Bool)

(assert (=> b!4026499 m!4617993))

(assert (=> b!4026499 m!4617119))

(assert (=> b!4026499 m!4617799))

(assert (=> b!4026498 m!4617119))

(assert (=> b!4026498 m!4617801))

(assert (=> b!4026498 m!4617339))

(declare-fun m!4617995 () Bool)

(assert (=> b!4026498 m!4617995))

(assert (=> b!4026498 m!4617801))

(assert (=> b!4026498 m!4617995))

(declare-fun m!4617997 () Bool)

(assert (=> b!4026498 m!4617997))

(assert (=> b!4026036 d!1192509))

(assert (=> b!4026036 d!1192407))

(declare-fun d!1192511 () Bool)

(assert (=> d!1192511 (= (tail!6269 lt!1430273) (t!333912 lt!1430273))))

(assert (=> b!4026036 d!1192511))

(declare-fun d!1192513 () Bool)

(declare-fun lt!1430491 () Int)

(assert (=> d!1192513 (>= lt!1430491 0)))

(declare-fun e!2497997 () Int)

(assert (=> d!1192513 (= lt!1430491 e!2497997)))

(declare-fun c!695668 () Bool)

(assert (=> d!1192513 (= c!695668 ((_ is Nil!43111) lt!1430395))))

(assert (=> d!1192513 (= (size!32226 lt!1430395) lt!1430491)))

(declare-fun b!4026500 () Bool)

(assert (=> b!4026500 (= e!2497997 0)))

(declare-fun b!4026501 () Bool)

(assert (=> b!4026501 (= e!2497997 (+ 1 (size!32226 (t!333912 lt!1430395))))))

(assert (= (and d!1192513 c!695668) b!4026500))

(assert (= (and d!1192513 (not c!695668)) b!4026501))

(declare-fun m!4617999 () Bool)

(assert (=> b!4026501 m!4617999))

(assert (=> b!4026085 d!1192513))

(assert (=> b!4026085 d!1192233))

(declare-fun d!1192515 () Bool)

(declare-fun lt!1430492 () Int)

(assert (=> d!1192515 (>= lt!1430492 0)))

(declare-fun e!2497998 () Int)

(assert (=> d!1192515 (= lt!1430492 e!2497998)))

(declare-fun c!695669 () Bool)

(assert (=> d!1192515 (= c!695669 ((_ is Nil!43111) suffixResult!105))))

(assert (=> d!1192515 (= (size!32226 suffixResult!105) lt!1430492)))

(declare-fun b!4026502 () Bool)

(assert (=> b!4026502 (= e!2497998 0)))

(declare-fun b!4026503 () Bool)

(assert (=> b!4026503 (= e!2497998 (+ 1 (size!32226 (t!333912 suffixResult!105))))))

(assert (= (and d!1192515 c!695669) b!4026502))

(assert (= (and d!1192515 (not c!695669)) b!4026503))

(declare-fun m!4618003 () Bool)

(assert (=> b!4026503 m!4618003))

(assert (=> b!4026085 d!1192515))

(declare-fun d!1192519 () Bool)

(declare-fun lt!1430493 () Int)

(assert (=> d!1192519 (>= lt!1430493 0)))

(declare-fun e!2497999 () Int)

(assert (=> d!1192519 (= lt!1430493 e!2497999)))

(declare-fun c!695670 () Bool)

(assert (=> d!1192519 (= c!695670 ((_ is Nil!43111) lt!1430418))))

(assert (=> d!1192519 (= (size!32226 lt!1430418) lt!1430493)))

(declare-fun b!4026504 () Bool)

(assert (=> b!4026504 (= e!2497999 0)))

(declare-fun b!4026505 () Bool)

(assert (=> b!4026505 (= e!2497999 (+ 1 (size!32226 (t!333912 lt!1430418))))))

(assert (= (and d!1192519 c!695670) b!4026504))

(assert (= (and d!1192519 (not c!695670)) b!4026505))

(declare-fun m!4618005 () Bool)

(assert (=> b!4026505 m!4618005))

(assert (=> b!4026184 d!1192519))

(assert (=> b!4026184 d!1192233))

(declare-fun d!1192521 () Bool)

(declare-fun lt!1430494 () Int)

(assert (=> d!1192521 (>= lt!1430494 0)))

(declare-fun e!2498000 () Int)

(assert (=> d!1192521 (= lt!1430494 e!2498000)))

(declare-fun c!695671 () Bool)

(assert (=> d!1192521 (= c!695671 ((_ is Nil!43111) lt!1430287))))

(assert (=> d!1192521 (= (size!32226 lt!1430287) lt!1430494)))

(declare-fun b!4026506 () Bool)

(assert (=> b!4026506 (= e!2498000 0)))

(declare-fun b!4026507 () Bool)

(assert (=> b!4026507 (= e!2498000 (+ 1 (size!32226 (t!333912 lt!1430287))))))

(assert (= (and d!1192521 c!695671) b!4026506))

(assert (= (and d!1192521 (not c!695671)) b!4026507))

(assert (=> b!4026507 m!4617981))

(assert (=> b!4026184 d!1192521))

(assert (=> b!4026193 d!1192485))

(assert (=> b!4026193 d!1192481))

(declare-fun d!1192523 () Bool)

(declare-fun c!695675 () Bool)

(assert (=> d!1192523 (= c!695675 ((_ is Nil!43113) rules!2999))))

(declare-fun e!2498004 () (InoxSet Rule!13568))

(assert (=> d!1192523 (= (content!6546 rules!2999) e!2498004)))

(declare-fun b!4026514 () Bool)

(assert (=> b!4026514 (= e!2498004 ((as const (Array Rule!13568 Bool)) false))))

(declare-fun b!4026515 () Bool)

(assert (=> b!4026515 (= e!2498004 ((_ map or) (store ((as const (Array Rule!13568 Bool)) false) (h!48533 rules!2999) true) (content!6546 (t!333914 rules!2999))))))

(assert (= (and d!1192523 c!695675) b!4026514))

(assert (= (and d!1192523 (not c!695675)) b!4026515))

(declare-fun m!4618011 () Bool)

(assert (=> b!4026515 m!4618011))

(declare-fun m!4618013 () Bool)

(assert (=> b!4026515 m!4618013))

(assert (=> d!1192105 d!1192523))

(declare-fun d!1192529 () Bool)

(declare-fun lt!1430496 () Int)

(assert (=> d!1192529 (>= lt!1430496 0)))

(declare-fun e!2498005 () Int)

(assert (=> d!1192529 (= lt!1430496 e!2498005)))

(declare-fun c!695676 () Bool)

(assert (=> d!1192529 (= c!695676 ((_ is Nil!43111) lt!1430281))))

(assert (=> d!1192529 (= (size!32226 lt!1430281) lt!1430496)))

(declare-fun b!4026516 () Bool)

(assert (=> b!4026516 (= e!2498005 0)))

(declare-fun b!4026517 () Bool)

(assert (=> b!4026517 (= e!2498005 (+ 1 (size!32226 (t!333912 lt!1430281))))))

(assert (= (and d!1192529 c!695676) b!4026516))

(assert (= (and d!1192529 (not c!695676)) b!4026517))

(declare-fun m!4618015 () Bool)

(assert (=> b!4026517 m!4618015))

(assert (=> b!4025890 d!1192529))

(assert (=> b!4025890 d!1192233))

(declare-fun d!1192531 () Bool)

(declare-fun c!695683 () Bool)

(assert (=> d!1192531 (= c!695683 ((_ is Nil!43111) lt!1430410))))

(declare-fun e!2498013 () (InoxSet C!23764))

(assert (=> d!1192531 (= (content!6548 lt!1430410) e!2498013)))

(declare-fun b!4026532 () Bool)

(assert (=> b!4026532 (= e!2498013 ((as const (Array C!23764 Bool)) false))))

(declare-fun b!4026533 () Bool)

(assert (=> b!4026533 (= e!2498013 ((_ map or) (store ((as const (Array C!23764 Bool)) false) (h!48531 lt!1430410) true) (content!6548 (t!333912 lt!1430410))))))

(assert (= (and d!1192531 c!695683) b!4026532))

(assert (= (and d!1192531 (not c!695683)) b!4026533))

(declare-fun m!4618031 () Bool)

(assert (=> b!4026533 m!4618031))

(declare-fun m!4618035 () Bool)

(assert (=> b!4026533 m!4618035))

(assert (=> d!1192241 d!1192531))

(declare-fun d!1192543 () Bool)

(declare-fun c!695684 () Bool)

(assert (=> d!1192543 (= c!695684 ((_ is Nil!43111) lt!1430280))))

(declare-fun e!2498014 () (InoxSet C!23764))

(assert (=> d!1192543 (= (content!6548 lt!1430280) e!2498014)))

(declare-fun b!4026534 () Bool)

(assert (=> b!4026534 (= e!2498014 ((as const (Array C!23764 Bool)) false))))

(declare-fun b!4026535 () Bool)

(assert (=> b!4026535 (= e!2498014 ((_ map or) (store ((as const (Array C!23764 Bool)) false) (h!48531 lt!1430280) true) (content!6548 (t!333912 lt!1430280))))))

(assert (= (and d!1192543 c!695684) b!4026534))

(assert (= (and d!1192543 (not c!695684)) b!4026535))

(declare-fun m!4618045 () Bool)

(assert (=> b!4026535 m!4618045))

(assert (=> b!4026535 m!4617889))

(assert (=> d!1192241 d!1192543))

(declare-fun d!1192547 () Bool)

(declare-fun c!695685 () Bool)

(assert (=> d!1192547 (= c!695685 ((_ is Nil!43111) newSuffixResult!27))))

(declare-fun e!2498015 () (InoxSet C!23764))

(assert (=> d!1192547 (= (content!6548 newSuffixResult!27) e!2498015)))

(declare-fun b!4026536 () Bool)

(assert (=> b!4026536 (= e!2498015 ((as const (Array C!23764 Bool)) false))))

(declare-fun b!4026537 () Bool)

(assert (=> b!4026537 (= e!2498015 ((_ map or) (store ((as const (Array C!23764 Bool)) false) (h!48531 newSuffixResult!27) true) (content!6548 (t!333912 newSuffixResult!27))))))

(assert (= (and d!1192547 c!695685) b!4026536))

(assert (= (and d!1192547 (not c!695685)) b!4026537))

(declare-fun m!4618047 () Bool)

(assert (=> b!4026537 m!4618047))

(declare-fun m!4618049 () Bool)

(assert (=> b!4026537 m!4618049))

(assert (=> d!1192241 d!1192547))

(declare-fun d!1192549 () Bool)

(declare-fun res!1638728 () Bool)

(declare-fun e!2498026 () Bool)

(assert (=> d!1192549 (=> res!1638728 e!2498026)))

(assert (=> d!1192549 (= res!1638728 ((_ is Nil!43113) rules!2999))))

(assert (=> d!1192549 (= (noDuplicateTag!2677 thiss!21717 rules!2999 Nil!43115) e!2498026)))

(declare-fun b!4026551 () Bool)

(declare-fun e!2498027 () Bool)

(assert (=> b!4026551 (= e!2498026 e!2498027)))

(declare-fun res!1638729 () Bool)

(assert (=> b!4026551 (=> (not res!1638729) (not e!2498027))))

(declare-fun contains!8566 (List!43239 String!49288) Bool)

(assert (=> b!4026551 (= res!1638729 (not (contains!8566 Nil!43115 (tag!7744 (h!48533 rules!2999)))))))

(declare-fun b!4026552 () Bool)

(assert (=> b!4026552 (= e!2498027 (noDuplicateTag!2677 thiss!21717 (t!333914 rules!2999) (Cons!43115 (tag!7744 (h!48533 rules!2999)) Nil!43115)))))

(assert (= (and d!1192549 (not res!1638728)) b!4026551))

(assert (= (and b!4026551 res!1638729) b!4026552))

(declare-fun m!4618065 () Bool)

(assert (=> b!4026551 m!4618065))

(declare-fun m!4618067 () Bool)

(assert (=> b!4026552 m!4618067))

(assert (=> b!4026074 d!1192549))

(assert (=> d!1192247 d!1192479))

(declare-fun d!1192559 () Bool)

(declare-fun lt!1430501 () Int)

(assert (=> d!1192559 (>= lt!1430501 0)))

(declare-fun e!2498028 () Int)

(assert (=> d!1192559 (= lt!1430501 e!2498028)))

(declare-fun c!695689 () Bool)

(assert (=> d!1192559 (= c!695689 ((_ is Nil!43111) lt!1430273))))

(assert (=> d!1192559 (= (size!32226 lt!1430273) lt!1430501)))

(declare-fun b!4026553 () Bool)

(assert (=> b!4026553 (= e!2498028 0)))

(declare-fun b!4026554 () Bool)

(assert (=> b!4026554 (= e!2498028 (+ 1 (size!32226 (t!333912 lt!1430273))))))

(assert (= (and d!1192559 c!695689) b!4026553))

(assert (= (and d!1192559 (not c!695689)) b!4026554))

(declare-fun m!4618069 () Bool)

(assert (=> b!4026554 m!4618069))

(assert (=> b!4026033 d!1192559))

(assert (=> b!4026033 d!1192235))

(declare-fun d!1192561 () Bool)

(assert (=> d!1192561 true))

(declare-fun lt!1430504 () Bool)

(assert (=> d!1192561 (= lt!1430504 (rulesValidInductive!2509 thiss!21717 rules!2999))))

(declare-fun lambda!127180 () Int)

(declare-fun forall!8360 (List!43237 Int) Bool)

(assert (=> d!1192561 (= lt!1430504 (forall!8360 rules!2999 lambda!127180))))

(assert (=> d!1192561 (= (rulesValid!2676 thiss!21717 rules!2999) lt!1430504)))

(declare-fun bs!590076 () Bool)

(assert (= bs!590076 d!1192561))

(assert (=> bs!590076 m!4617317))

(declare-fun m!4618071 () Bool)

(assert (=> bs!590076 m!4618071))

(assert (=> d!1192207 d!1192561))

(declare-fun d!1192563 () Bool)

(declare-fun lt!1430505 () List!43235)

(assert (=> d!1192563 (= (++!11286 (t!333912 lt!1430280) lt!1430505) (tail!6269 prefix!494))))

(declare-fun e!2498029 () List!43235)

(assert (=> d!1192563 (= lt!1430505 e!2498029)))

(declare-fun c!695690 () Bool)

(assert (=> d!1192563 (= c!695690 ((_ is Cons!43111) (t!333912 lt!1430280)))))

(assert (=> d!1192563 (>= (size!32226 (tail!6269 prefix!494)) (size!32226 (t!333912 lt!1430280)))))

(assert (=> d!1192563 (= (getSuffix!2388 (tail!6269 prefix!494) (t!333912 lt!1430280)) lt!1430505)))

(declare-fun b!4026557 () Bool)

(assert (=> b!4026557 (= e!2498029 (getSuffix!2388 (tail!6269 (tail!6269 prefix!494)) (t!333912 (t!333912 lt!1430280))))))

(declare-fun b!4026558 () Bool)

(assert (=> b!4026558 (= e!2498029 (tail!6269 prefix!494))))

(assert (= (and d!1192563 c!695690) b!4026557))

(assert (= (and d!1192563 (not c!695690)) b!4026558))

(declare-fun m!4618073 () Bool)

(assert (=> d!1192563 m!4618073))

(assert (=> d!1192563 m!4617337))

(declare-fun m!4618075 () Bool)

(assert (=> d!1192563 m!4618075))

(assert (=> d!1192563 m!4617473))

(assert (=> b!4026557 m!4617337))

(declare-fun m!4618077 () Bool)

(assert (=> b!4026557 m!4618077))

(assert (=> b!4026557 m!4618077))

(declare-fun m!4618079 () Bool)

(assert (=> b!4026557 m!4618079))

(assert (=> b!4026190 d!1192563))

(declare-fun d!1192565 () Bool)

(assert (=> d!1192565 (= (tail!6269 prefix!494) (t!333912 prefix!494))))

(assert (=> b!4026190 d!1192565))

(declare-fun b!4026560 () Bool)

(declare-fun e!2498031 () List!43235)

(assert (=> b!4026560 (= e!2498031 (Cons!43111 (h!48531 (t!333912 lt!1430280)) (++!11286 (t!333912 (t!333912 lt!1430280)) newSuffixResult!27)))))

(declare-fun d!1192567 () Bool)

(declare-fun e!2498030 () Bool)

(assert (=> d!1192567 e!2498030))

(declare-fun res!1638730 () Bool)

(assert (=> d!1192567 (=> (not res!1638730) (not e!2498030))))

(declare-fun lt!1430506 () List!43235)

(assert (=> d!1192567 (= res!1638730 (= (content!6548 lt!1430506) ((_ map or) (content!6548 (t!333912 lt!1430280)) (content!6548 newSuffixResult!27))))))

(assert (=> d!1192567 (= lt!1430506 e!2498031)))

(declare-fun c!695691 () Bool)

(assert (=> d!1192567 (= c!695691 ((_ is Nil!43111) (t!333912 lt!1430280)))))

(assert (=> d!1192567 (= (++!11286 (t!333912 lt!1430280) newSuffixResult!27) lt!1430506)))

(declare-fun b!4026561 () Bool)

(declare-fun res!1638731 () Bool)

(assert (=> b!4026561 (=> (not res!1638731) (not e!2498030))))

(assert (=> b!4026561 (= res!1638731 (= (size!32226 lt!1430506) (+ (size!32226 (t!333912 lt!1430280)) (size!32226 newSuffixResult!27))))))

(declare-fun b!4026562 () Bool)

(assert (=> b!4026562 (= e!2498030 (or (not (= newSuffixResult!27 Nil!43111)) (= lt!1430506 (t!333912 lt!1430280))))))

(declare-fun b!4026559 () Bool)

(assert (=> b!4026559 (= e!2498031 newSuffixResult!27)))

(assert (= (and d!1192567 c!695691) b!4026559))

(assert (= (and d!1192567 (not c!695691)) b!4026560))

(assert (= (and d!1192567 res!1638730) b!4026561))

(assert (= (and b!4026561 res!1638731) b!4026562))

(declare-fun m!4618081 () Bool)

(assert (=> b!4026560 m!4618081))

(declare-fun m!4618083 () Bool)

(assert (=> d!1192567 m!4618083))

(assert (=> d!1192567 m!4617889))

(assert (=> d!1192567 m!4617485))

(declare-fun m!4618085 () Bool)

(assert (=> b!4026561 m!4618085))

(assert (=> b!4026561 m!4617473))

(assert (=> b!4026561 m!4617489))

(assert (=> b!4026162 d!1192567))

(declare-fun d!1192569 () Bool)

(declare-fun c!695692 () Bool)

(assert (=> d!1192569 (= c!695692 ((_ is Nil!43111) lt!1430413))))

(declare-fun e!2498032 () (InoxSet C!23764))

(assert (=> d!1192569 (= (content!6548 lt!1430413) e!2498032)))

(declare-fun b!4026563 () Bool)

(assert (=> b!4026563 (= e!2498032 ((as const (Array C!23764 Bool)) false))))

(declare-fun b!4026564 () Bool)

(assert (=> b!4026564 (= e!2498032 ((_ map or) (store ((as const (Array C!23764 Bool)) false) (h!48531 lt!1430413) true) (content!6548 (t!333912 lt!1430413))))))

(assert (= (and d!1192569 c!695692) b!4026563))

(assert (= (and d!1192569 (not c!695692)) b!4026564))

(declare-fun m!4618087 () Bool)

(assert (=> b!4026564 m!4618087))

(declare-fun m!4618089 () Bool)

(assert (=> b!4026564 m!4618089))

(assert (=> d!1192251 d!1192569))

(declare-fun d!1192571 () Bool)

(declare-fun c!695693 () Bool)

(assert (=> d!1192571 (= c!695693 ((_ is Nil!43111) lt!1430275))))

(declare-fun e!2498033 () (InoxSet C!23764))

(assert (=> d!1192571 (= (content!6548 lt!1430275) e!2498033)))

(declare-fun b!4026565 () Bool)

(assert (=> b!4026565 (= e!2498033 ((as const (Array C!23764 Bool)) false))))

(declare-fun b!4026566 () Bool)

(assert (=> b!4026566 (= e!2498033 ((_ map or) (store ((as const (Array C!23764 Bool)) false) (h!48531 lt!1430275) true) (content!6548 (t!333912 lt!1430275))))))

(assert (= (and d!1192571 c!695693) b!4026565))

(assert (= (and d!1192571 (not c!695693)) b!4026566))

(declare-fun m!4618091 () Bool)

(assert (=> b!4026566 m!4618091))

(declare-fun m!4618093 () Bool)

(assert (=> b!4026566 m!4618093))

(assert (=> d!1192251 d!1192571))

(declare-fun d!1192573 () Bool)

(declare-fun c!695694 () Bool)

(assert (=> d!1192573 (= c!695694 ((_ is Nil!43111) suffix!1299))))

(declare-fun e!2498034 () (InoxSet C!23764))

(assert (=> d!1192573 (= (content!6548 suffix!1299) e!2498034)))

(declare-fun b!4026567 () Bool)

(assert (=> b!4026567 (= e!2498034 ((as const (Array C!23764 Bool)) false))))

(declare-fun b!4026568 () Bool)

(assert (=> b!4026568 (= e!2498034 ((_ map or) (store ((as const (Array C!23764 Bool)) false) (h!48531 suffix!1299) true) (content!6548 (t!333912 suffix!1299))))))

(assert (= (and d!1192573 c!695694) b!4026567))

(assert (= (and d!1192573 (not c!695694)) b!4026568))

(declare-fun m!4618095 () Bool)

(assert (=> b!4026568 m!4618095))

(declare-fun m!4618097 () Bool)

(assert (=> b!4026568 m!4618097))

(assert (=> d!1192251 d!1192573))

(declare-fun d!1192575 () Bool)

(assert (=> d!1192575 (= (++!11286 (++!11286 lt!1430280 lt!1430287) suffix!1299) (++!11286 lt!1430280 (++!11286 lt!1430287 suffix!1299)))))

(assert (=> d!1192575 true))

(declare-fun _$52!2280 () Unit!62274)

(assert (=> d!1192575 (= (choose!24355 lt!1430280 lt!1430287 suffix!1299) _$52!2280)))

(declare-fun bs!590077 () Bool)

(assert (= bs!590077 d!1192575))

(assert (=> bs!590077 m!4616983))

(assert (=> bs!590077 m!4616983))

(assert (=> bs!590077 m!4617533))

(assert (=> bs!590077 m!4616957))

(assert (=> bs!590077 m!4616957))

(assert (=> bs!590077 m!4617529))

(assert (=> d!1192255 d!1192575))

(assert (=> d!1192255 d!1192253))

(declare-fun e!2498036 () List!43235)

(declare-fun b!4026570 () Bool)

(assert (=> b!4026570 (= e!2498036 (Cons!43111 (h!48531 (++!11286 lt!1430280 lt!1430287)) (++!11286 (t!333912 (++!11286 lt!1430280 lt!1430287)) suffix!1299)))))

(declare-fun d!1192577 () Bool)

(declare-fun e!2498035 () Bool)

(assert (=> d!1192577 e!2498035))

(declare-fun res!1638732 () Bool)

(assert (=> d!1192577 (=> (not res!1638732) (not e!2498035))))

(declare-fun lt!1430507 () List!43235)

(assert (=> d!1192577 (= res!1638732 (= (content!6548 lt!1430507) ((_ map or) (content!6548 (++!11286 lt!1430280 lt!1430287)) (content!6548 suffix!1299))))))

(assert (=> d!1192577 (= lt!1430507 e!2498036)))

(declare-fun c!695695 () Bool)

(assert (=> d!1192577 (= c!695695 ((_ is Nil!43111) (++!11286 lt!1430280 lt!1430287)))))

(assert (=> d!1192577 (= (++!11286 (++!11286 lt!1430280 lt!1430287) suffix!1299) lt!1430507)))

(declare-fun b!4026571 () Bool)

(declare-fun res!1638733 () Bool)

(assert (=> b!4026571 (=> (not res!1638733) (not e!2498035))))

(assert (=> b!4026571 (= res!1638733 (= (size!32226 lt!1430507) (+ (size!32226 (++!11286 lt!1430280 lt!1430287)) (size!32226 suffix!1299))))))

(declare-fun b!4026572 () Bool)

(assert (=> b!4026572 (= e!2498035 (or (not (= suffix!1299 Nil!43111)) (= lt!1430507 (++!11286 lt!1430280 lt!1430287))))))

(declare-fun b!4026569 () Bool)

(assert (=> b!4026569 (= e!2498036 suffix!1299)))

(assert (= (and d!1192577 c!695695) b!4026569))

(assert (= (and d!1192577 (not c!695695)) b!4026570))

(assert (= (and d!1192577 res!1638732) b!4026571))

(assert (= (and b!4026571 res!1638733) b!4026572))

(declare-fun m!4618099 () Bool)

(assert (=> b!4026570 m!4618099))

(declare-fun m!4618101 () Bool)

(assert (=> d!1192577 m!4618101))

(assert (=> d!1192577 m!4616983))

(declare-fun m!4618103 () Bool)

(assert (=> d!1192577 m!4618103))

(assert (=> d!1192577 m!4617329))

(declare-fun m!4618105 () Bool)

(assert (=> b!4026571 m!4618105))

(assert (=> b!4026571 m!4616983))

(declare-fun m!4618107 () Bool)

(assert (=> b!4026571 m!4618107))

(assert (=> b!4026571 m!4616963))

(assert (=> d!1192255 d!1192577))

(assert (=> d!1192255 d!1192261))

(declare-fun b!4026574 () Bool)

(declare-fun e!2498038 () List!43235)

(assert (=> b!4026574 (= e!2498038 (Cons!43111 (h!48531 lt!1430280) (++!11286 (t!333912 lt!1430280) (++!11286 lt!1430287 suffix!1299))))))

(declare-fun d!1192579 () Bool)

(declare-fun e!2498037 () Bool)

(assert (=> d!1192579 e!2498037))

(declare-fun res!1638734 () Bool)

(assert (=> d!1192579 (=> (not res!1638734) (not e!2498037))))

(declare-fun lt!1430508 () List!43235)

(assert (=> d!1192579 (= res!1638734 (= (content!6548 lt!1430508) ((_ map or) (content!6548 lt!1430280) (content!6548 (++!11286 lt!1430287 suffix!1299)))))))

(assert (=> d!1192579 (= lt!1430508 e!2498038)))

(declare-fun c!695696 () Bool)

(assert (=> d!1192579 (= c!695696 ((_ is Nil!43111) lt!1430280))))

(assert (=> d!1192579 (= (++!11286 lt!1430280 (++!11286 lt!1430287 suffix!1299)) lt!1430508)))

(declare-fun b!4026575 () Bool)

(declare-fun res!1638735 () Bool)

(assert (=> b!4026575 (=> (not res!1638735) (not e!2498037))))

(assert (=> b!4026575 (= res!1638735 (= (size!32226 lt!1430508) (+ (size!32226 lt!1430280) (size!32226 (++!11286 lt!1430287 suffix!1299)))))))

(declare-fun b!4026576 () Bool)

(assert (=> b!4026576 (= e!2498037 (or (not (= (++!11286 lt!1430287 suffix!1299) Nil!43111)) (= lt!1430508 lt!1430280)))))

(declare-fun b!4026573 () Bool)

(assert (=> b!4026573 (= e!2498038 (++!11286 lt!1430287 suffix!1299))))

(assert (= (and d!1192579 c!695696) b!4026573))

(assert (= (and d!1192579 (not c!695696)) b!4026574))

(assert (= (and d!1192579 res!1638734) b!4026575))

(assert (= (and b!4026575 res!1638735) b!4026576))

(assert (=> b!4026574 m!4616957))

(declare-fun m!4618109 () Bool)

(assert (=> b!4026574 m!4618109))

(declare-fun m!4618111 () Bool)

(assert (=> d!1192579 m!4618111))

(assert (=> d!1192579 m!4617401))

(assert (=> d!1192579 m!4616957))

(declare-fun m!4618113 () Bool)

(assert (=> d!1192579 m!4618113))

(declare-fun m!4618115 () Bool)

(assert (=> b!4026575 m!4618115))

(assert (=> b!4026575 m!4617017))

(assert (=> b!4026575 m!4616957))

(declare-fun m!4618117 () Bool)

(assert (=> b!4026575 m!4618117))

(assert (=> d!1192255 d!1192579))

(declare-fun d!1192581 () Bool)

(assert (=> d!1192581 true))

(declare-fun order!22557 () Int)

(declare-fun lambda!127183 () Int)

(declare-fun dynLambda!18278 (Int Int) Int)

(assert (=> d!1192581 (< (dynLambda!18274 order!22549 (toValue!9400 (transformation!6884 (rule!9940 token!484)))) (dynLambda!18278 order!22557 lambda!127183))))

(declare-fun Forall2!1079 (Int) Bool)

(assert (=> d!1192581 (= (equivClasses!2841 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (toValue!9400 (transformation!6884 (rule!9940 token!484)))) (Forall2!1079 lambda!127183))))

(declare-fun bs!590078 () Bool)

(assert (= bs!590078 d!1192581))

(declare-fun m!4618119 () Bool)

(assert (=> bs!590078 m!4618119))

(assert (=> b!4026089 d!1192581))

(declare-fun bm!286780 () Bool)

(declare-fun call!286785 () Option!9298)

(assert (=> bm!286780 (= call!286785 (maxPrefixOneRule!2783 thiss!21717 (h!48533 (t!333914 rules!2999)) lt!1430273))))

(declare-fun b!4026581 () Bool)

(declare-fun res!1638744 () Bool)

(declare-fun e!2498042 () Bool)

(assert (=> b!4026581 (=> (not res!1638744) (not e!2498042))))

(declare-fun lt!1430511 () Option!9298)

(assert (=> b!4026581 (= res!1638744 (matchR!5742 (regex!6884 (rule!9940 (_1!24241 (get!14154 lt!1430511)))) (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430511))))))))

(declare-fun d!1192583 () Bool)

(declare-fun e!2498041 () Bool)

(assert (=> d!1192583 e!2498041))

(declare-fun res!1638741 () Bool)

(assert (=> d!1192583 (=> res!1638741 e!2498041)))

(assert (=> d!1192583 (= res!1638741 (isEmpty!25741 lt!1430511))))

(declare-fun e!2498043 () Option!9298)

(assert (=> d!1192583 (= lt!1430511 e!2498043)))

(declare-fun c!695697 () Bool)

(assert (=> d!1192583 (= c!695697 (and ((_ is Cons!43113) (t!333914 rules!2999)) ((_ is Nil!43113) (t!333914 (t!333914 rules!2999)))))))

(declare-fun lt!1430513 () Unit!62274)

(declare-fun lt!1430509 () Unit!62274)

(assert (=> d!1192583 (= lt!1430513 lt!1430509)))

(assert (=> d!1192583 (isPrefix!3971 lt!1430273 lt!1430273)))

(assert (=> d!1192583 (= lt!1430509 (lemmaIsPrefixRefl!2538 lt!1430273 lt!1430273))))

(assert (=> d!1192583 (rulesValidInductive!2509 thiss!21717 (t!333914 rules!2999))))

(assert (=> d!1192583 (= (maxPrefix!3771 thiss!21717 (t!333914 rules!2999) lt!1430273) lt!1430511)))

(declare-fun b!4026582 () Bool)

(declare-fun res!1638742 () Bool)

(assert (=> b!4026582 (=> (not res!1638742) (not e!2498042))))

(assert (=> b!4026582 (= res!1638742 (< (size!32226 (_2!24241 (get!14154 lt!1430511))) (size!32226 lt!1430273)))))

(declare-fun b!4026583 () Bool)

(assert (=> b!4026583 (= e!2498043 call!286785)))

(declare-fun b!4026584 () Bool)

(declare-fun lt!1430512 () Option!9298)

(declare-fun lt!1430510 () Option!9298)

(assert (=> b!4026584 (= e!2498043 (ite (and ((_ is None!9297) lt!1430512) ((_ is None!9297) lt!1430510)) None!9297 (ite ((_ is None!9297) lt!1430510) lt!1430512 (ite ((_ is None!9297) lt!1430512) lt!1430510 (ite (>= (size!32225 (_1!24241 (v!39681 lt!1430512))) (size!32225 (_1!24241 (v!39681 lt!1430510)))) lt!1430512 lt!1430510)))))))

(assert (=> b!4026584 (= lt!1430512 call!286785)))

(assert (=> b!4026584 (= lt!1430510 (maxPrefix!3771 thiss!21717 (t!333914 (t!333914 rules!2999)) lt!1430273))))

(declare-fun b!4026585 () Bool)

(assert (=> b!4026585 (= e!2498041 e!2498042)))

(declare-fun res!1638743 () Bool)

(assert (=> b!4026585 (=> (not res!1638743) (not e!2498042))))

(assert (=> b!4026585 (= res!1638743 (isDefined!7088 lt!1430511))))

(declare-fun b!4026586 () Bool)

(assert (=> b!4026586 (= e!2498042 (contains!8564 (t!333914 rules!2999) (rule!9940 (_1!24241 (get!14154 lt!1430511)))))))

(declare-fun b!4026587 () Bool)

(declare-fun res!1638738 () Bool)

(assert (=> b!4026587 (=> (not res!1638738) (not e!2498042))))

(assert (=> b!4026587 (= res!1638738 (= (value!216828 (_1!24241 (get!14154 lt!1430511))) (apply!10073 (transformation!6884 (rule!9940 (_1!24241 (get!14154 lt!1430511)))) (seqFromList!5101 (originalCharacters!7484 (_1!24241 (get!14154 lt!1430511)))))))))

(declare-fun b!4026588 () Bool)

(declare-fun res!1638739 () Bool)

(assert (=> b!4026588 (=> (not res!1638739) (not e!2498042))))

(assert (=> b!4026588 (= res!1638739 (= (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430511)))) (originalCharacters!7484 (_1!24241 (get!14154 lt!1430511)))))))

(declare-fun b!4026589 () Bool)

(declare-fun res!1638740 () Bool)

(assert (=> b!4026589 (=> (not res!1638740) (not e!2498042))))

(assert (=> b!4026589 (= res!1638740 (= (++!11286 (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430511)))) (_2!24241 (get!14154 lt!1430511))) lt!1430273))))

(assert (= (and d!1192583 c!695697) b!4026583))

(assert (= (and d!1192583 (not c!695697)) b!4026584))

(assert (= (or b!4026583 b!4026584) bm!286780))

(assert (= (and d!1192583 (not res!1638741)) b!4026585))

(assert (= (and b!4026585 res!1638743) b!4026588))

(assert (= (and b!4026588 res!1638739) b!4026582))

(assert (= (and b!4026582 res!1638742) b!4026589))

(assert (= (and b!4026589 res!1638740) b!4026587))

(assert (= (and b!4026587 res!1638738) b!4026581))

(assert (= (and b!4026581 res!1638744) b!4026586))

(declare-fun m!4618121 () Bool)

(assert (=> b!4026584 m!4618121))

(declare-fun m!4618123 () Bool)

(assert (=> bm!286780 m!4618123))

(declare-fun m!4618125 () Bool)

(assert (=> b!4026581 m!4618125))

(declare-fun m!4618127 () Bool)

(assert (=> b!4026581 m!4618127))

(assert (=> b!4026581 m!4618127))

(declare-fun m!4618129 () Bool)

(assert (=> b!4026581 m!4618129))

(assert (=> b!4026581 m!4618129))

(declare-fun m!4618131 () Bool)

(assert (=> b!4026581 m!4618131))

(assert (=> b!4026586 m!4618125))

(declare-fun m!4618133 () Bool)

(assert (=> b!4026586 m!4618133))

(declare-fun m!4618135 () Bool)

(assert (=> b!4026585 m!4618135))

(assert (=> b!4026588 m!4618125))

(assert (=> b!4026588 m!4618127))

(assert (=> b!4026588 m!4618127))

(assert (=> b!4026588 m!4618129))

(assert (=> b!4026582 m!4618125))

(declare-fun m!4618137 () Bool)

(assert (=> b!4026582 m!4618137))

(assert (=> b!4026582 m!4617307))

(assert (=> b!4026589 m!4618125))

(assert (=> b!4026589 m!4618127))

(assert (=> b!4026589 m!4618127))

(assert (=> b!4026589 m!4618129))

(assert (=> b!4026589 m!4618129))

(declare-fun m!4618139 () Bool)

(assert (=> b!4026589 m!4618139))

(declare-fun m!4618141 () Bool)

(assert (=> d!1192583 m!4618141))

(assert (=> d!1192583 m!4617313))

(assert (=> d!1192583 m!4617315))

(declare-fun m!4618143 () Bool)

(assert (=> d!1192583 m!4618143))

(assert (=> b!4026587 m!4618125))

(declare-fun m!4618145 () Bool)

(assert (=> b!4026587 m!4618145))

(assert (=> b!4026587 m!4618145))

(declare-fun m!4618147 () Bool)

(assert (=> b!4026587 m!4618147))

(assert (=> b!4026012 d!1192583))

(assert (=> d!1192267 d!1192265))

(declare-fun d!1192585 () Bool)

(assert (=> d!1192585 (isPrefix!3971 lt!1430280 prefix!494)))

(assert (=> d!1192585 true))

(declare-fun _$69!256 () Unit!62274)

(assert (=> d!1192585 (= (choose!24356 prefix!494 lt!1430280 lt!1430273) _$69!256)))

(declare-fun bs!590079 () Bool)

(assert (= bs!590079 d!1192585))

(assert (=> bs!590079 m!4616987))

(assert (=> d!1192267 d!1192585))

(assert (=> d!1192267 d!1192191))

(declare-fun d!1192587 () Bool)

(declare-fun c!695700 () Bool)

(assert (=> d!1192587 (= c!695700 ((_ is Node!13095) (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283)))))))

(declare-fun e!2498048 () Bool)

(assert (=> d!1192587 (= (inv!57592 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283)))) e!2498048)))

(declare-fun b!4026596 () Bool)

(declare-fun inv!57594 (Conc!13095) Bool)

(assert (=> b!4026596 (= e!2498048 (inv!57594 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283)))))))

(declare-fun b!4026597 () Bool)

(declare-fun e!2498049 () Bool)

(assert (=> b!4026597 (= e!2498048 e!2498049)))

(declare-fun res!1638747 () Bool)

(assert (=> b!4026597 (= res!1638747 (not ((_ is Leaf!20244) (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283))))))))

(assert (=> b!4026597 (=> res!1638747 e!2498049)))

(declare-fun b!4026598 () Bool)

(declare-fun inv!57595 (Conc!13095) Bool)

(assert (=> b!4026598 (= e!2498049 (inv!57595 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283)))))))

(assert (= (and d!1192587 c!695700) b!4026596))

(assert (= (and d!1192587 (not c!695700)) b!4026597))

(assert (= (and b!4026597 (not res!1638747)) b!4026598))

(declare-fun m!4618149 () Bool)

(assert (=> b!4026596 m!4618149))

(declare-fun m!4618151 () Bool)

(assert (=> b!4026598 m!4618151))

(assert (=> b!4026156 d!1192587))

(declare-fun b!4026708 () Bool)

(declare-fun e!2498104 () Bool)

(declare-datatypes ((tuple2!42216 0))(
  ( (tuple2!42217 (_1!24242 List!43235) (_2!24242 List!43235)) )
))
(declare-fun findLongestMatchInner!1370 (Regex!11789 List!43235 Int List!43235 List!43235 Int) tuple2!42216)

(assert (=> b!4026708 (= e!2498104 (matchR!5742 (regex!6884 (h!48533 rules!2999)) (_1!24242 (findLongestMatchInner!1370 (regex!6884 (h!48533 rules!2999)) Nil!43111 (size!32226 Nil!43111) lt!1430273 lt!1430273 (size!32226 lt!1430273)))))))

(declare-fun b!4026709 () Bool)

(declare-fun res!1638823 () Bool)

(declare-fun e!2498105 () Bool)

(assert (=> b!4026709 (=> (not res!1638823) (not e!2498105))))

(declare-fun lt!1430552 () Option!9298)

(assert (=> b!4026709 (= res!1638823 (= (rule!9940 (_1!24241 (get!14154 lt!1430552))) (h!48533 rules!2999)))))

(declare-fun b!4026710 () Bool)

(declare-fun res!1638821 () Bool)

(assert (=> b!4026710 (=> (not res!1638821) (not e!2498105))))

(assert (=> b!4026710 (= res!1638821 (< (size!32226 (_2!24241 (get!14154 lt!1430552))) (size!32226 lt!1430273)))))

(declare-fun b!4026711 () Bool)

(declare-fun res!1638820 () Bool)

(assert (=> b!4026711 (=> (not res!1638820) (not e!2498105))))

(assert (=> b!4026711 (= res!1638820 (= (value!216828 (_1!24241 (get!14154 lt!1430552))) (apply!10073 (transformation!6884 (rule!9940 (_1!24241 (get!14154 lt!1430552)))) (seqFromList!5101 (originalCharacters!7484 (_1!24241 (get!14154 lt!1430552)))))))))

(declare-fun b!4026712 () Bool)

(declare-fun e!2498106 () Bool)

(assert (=> b!4026712 (= e!2498106 e!2498105)))

(declare-fun res!1638819 () Bool)

(assert (=> b!4026712 (=> (not res!1638819) (not e!2498105))))

(assert (=> b!4026712 (= res!1638819 (matchR!5742 (regex!6884 (h!48533 rules!2999)) (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430552))))))))

(declare-fun b!4026713 () Bool)

(assert (=> b!4026713 (= e!2498105 (= (size!32225 (_1!24241 (get!14154 lt!1430552))) (size!32226 (originalCharacters!7484 (_1!24241 (get!14154 lt!1430552))))))))

(declare-fun b!4026714 () Bool)

(declare-fun e!2498107 () Option!9298)

(assert (=> b!4026714 (= e!2498107 None!9297)))

(declare-fun b!4026715 () Bool)

(declare-fun lt!1430551 () tuple2!42216)

(declare-fun size!32227 (BalanceConc!25784) Int)

(assert (=> b!4026715 (= e!2498107 (Some!9297 (tuple2!42215 (Token!12907 (apply!10073 (transformation!6884 (h!48533 rules!2999)) (seqFromList!5101 (_1!24242 lt!1430551))) (h!48533 rules!2999) (size!32227 (seqFromList!5101 (_1!24242 lt!1430551))) (_1!24242 lt!1430551)) (_2!24242 lt!1430551))))))

(declare-fun lt!1430550 () Unit!62274)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1343 (Regex!11789 List!43235) Unit!62274)

(assert (=> b!4026715 (= lt!1430550 (longestMatchIsAcceptedByMatchOrIsEmpty!1343 (regex!6884 (h!48533 rules!2999)) lt!1430273))))

(declare-fun res!1638825 () Bool)

(assert (=> b!4026715 (= res!1638825 (isEmpty!25739 (_1!24242 (findLongestMatchInner!1370 (regex!6884 (h!48533 rules!2999)) Nil!43111 (size!32226 Nil!43111) lt!1430273 lt!1430273 (size!32226 lt!1430273)))))))

(assert (=> b!4026715 (=> res!1638825 e!2498104)))

(assert (=> b!4026715 e!2498104))

(declare-fun lt!1430553 () Unit!62274)

(assert (=> b!4026715 (= lt!1430553 lt!1430550)))

(declare-fun lt!1430549 () Unit!62274)

(assert (=> b!4026715 (= lt!1430549 (lemmaSemiInverse!1891 (transformation!6884 (h!48533 rules!2999)) (seqFromList!5101 (_1!24242 lt!1430551))))))

(declare-fun b!4026716 () Bool)

(declare-fun res!1638822 () Bool)

(assert (=> b!4026716 (=> (not res!1638822) (not e!2498105))))

(assert (=> b!4026716 (= res!1638822 (= (++!11286 (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430552)))) (_2!24241 (get!14154 lt!1430552))) lt!1430273))))

(declare-fun d!1192589 () Bool)

(assert (=> d!1192589 e!2498106))

(declare-fun res!1638824 () Bool)

(assert (=> d!1192589 (=> res!1638824 e!2498106)))

(assert (=> d!1192589 (= res!1638824 (isEmpty!25741 lt!1430552))))

(assert (=> d!1192589 (= lt!1430552 e!2498107)))

(declare-fun c!695720 () Bool)

(assert (=> d!1192589 (= c!695720 (isEmpty!25739 (_1!24242 lt!1430551)))))

(declare-fun findLongestMatch!1283 (Regex!11789 List!43235) tuple2!42216)

(assert (=> d!1192589 (= lt!1430551 (findLongestMatch!1283 (regex!6884 (h!48533 rules!2999)) lt!1430273))))

(assert (=> d!1192589 (ruleValid!2814 thiss!21717 (h!48533 rules!2999))))

(assert (=> d!1192589 (= (maxPrefixOneRule!2783 thiss!21717 (h!48533 rules!2999) lt!1430273) lt!1430552)))

(assert (= (and d!1192589 c!695720) b!4026714))

(assert (= (and d!1192589 (not c!695720)) b!4026715))

(assert (= (and b!4026715 (not res!1638825)) b!4026708))

(assert (= (and d!1192589 (not res!1638824)) b!4026712))

(assert (= (and b!4026712 res!1638819) b!4026716))

(assert (= (and b!4026716 res!1638822) b!4026710))

(assert (= (and b!4026710 res!1638821) b!4026709))

(assert (= (and b!4026709 res!1638823) b!4026711))

(assert (= (and b!4026711 res!1638820) b!4026713))

(declare-fun m!4618239 () Bool)

(assert (=> b!4026713 m!4618239))

(declare-fun m!4618241 () Bool)

(assert (=> b!4026713 m!4618241))

(assert (=> b!4026716 m!4618239))

(declare-fun m!4618243 () Bool)

(assert (=> b!4026716 m!4618243))

(assert (=> b!4026716 m!4618243))

(declare-fun m!4618245 () Bool)

(assert (=> b!4026716 m!4618245))

(assert (=> b!4026716 m!4618245))

(declare-fun m!4618249 () Bool)

(assert (=> b!4026716 m!4618249))

(assert (=> b!4026711 m!4618239))

(declare-fun m!4618253 () Bool)

(assert (=> b!4026711 m!4618253))

(assert (=> b!4026711 m!4618253))

(declare-fun m!4618255 () Bool)

(assert (=> b!4026711 m!4618255))

(declare-fun m!4618257 () Bool)

(assert (=> d!1192589 m!4618257))

(declare-fun m!4618259 () Bool)

(assert (=> d!1192589 m!4618259))

(declare-fun m!4618261 () Bool)

(assert (=> d!1192589 m!4618261))

(declare-fun m!4618263 () Bool)

(assert (=> d!1192589 m!4618263))

(assert (=> b!4026709 m!4618239))

(assert (=> b!4026712 m!4618239))

(assert (=> b!4026712 m!4618243))

(assert (=> b!4026712 m!4618243))

(assert (=> b!4026712 m!4618245))

(assert (=> b!4026712 m!4618245))

(declare-fun m!4618265 () Bool)

(assert (=> b!4026712 m!4618265))

(declare-fun m!4618267 () Bool)

(assert (=> b!4026715 m!4618267))

(assert (=> b!4026715 m!4617307))

(declare-fun m!4618269 () Bool)

(assert (=> b!4026715 m!4618269))

(declare-fun m!4618271 () Bool)

(assert (=> b!4026715 m!4618271))

(declare-fun m!4618273 () Bool)

(assert (=> b!4026715 m!4618273))

(declare-fun m!4618275 () Bool)

(assert (=> b!4026715 m!4618275))

(declare-fun m!4618277 () Bool)

(assert (=> b!4026715 m!4618277))

(assert (=> b!4026715 m!4617307))

(assert (=> b!4026715 m!4618273))

(assert (=> b!4026715 m!4618273))

(declare-fun m!4618279 () Bool)

(assert (=> b!4026715 m!4618279))

(assert (=> b!4026715 m!4618273))

(declare-fun m!4618281 () Bool)

(assert (=> b!4026715 m!4618281))

(assert (=> b!4026715 m!4618267))

(assert (=> b!4026708 m!4618267))

(assert (=> b!4026708 m!4617307))

(assert (=> b!4026708 m!4618267))

(assert (=> b!4026708 m!4617307))

(assert (=> b!4026708 m!4618269))

(declare-fun m!4618283 () Bool)

(assert (=> b!4026708 m!4618283))

(assert (=> b!4026710 m!4618239))

(declare-fun m!4618285 () Bool)

(assert (=> b!4026710 m!4618285))

(assert (=> b!4026710 m!4617307))

(assert (=> bm!286769 d!1192589))

(assert (=> b!4026195 d!1192235))

(assert (=> b!4026195 d!1192233))

(declare-fun d!1192629 () Bool)

(declare-fun lt!1430557 () Int)

(assert (=> d!1192629 (>= lt!1430557 0)))

(declare-fun e!2498110 () Int)

(assert (=> d!1192629 (= lt!1430557 e!2498110)))

(declare-fun c!695722 () Bool)

(assert (=> d!1192629 (= c!695722 ((_ is Nil!43111) (_2!24241 (get!14154 lt!1430379))))))

(assert (=> d!1192629 (= (size!32226 (_2!24241 (get!14154 lt!1430379))) lt!1430557)))

(declare-fun b!4026721 () Bool)

(assert (=> b!4026721 (= e!2498110 0)))

(declare-fun b!4026722 () Bool)

(assert (=> b!4026722 (= e!2498110 (+ 1 (size!32226 (t!333912 (_2!24241 (get!14154 lt!1430379))))))))

(assert (= (and d!1192629 c!695722) b!4026721))

(assert (= (and d!1192629 (not c!695722)) b!4026722))

(declare-fun m!4618287 () Bool)

(assert (=> b!4026722 m!4618287))

(assert (=> b!4026010 d!1192629))

(assert (=> b!4026010 d!1192425))

(assert (=> b!4026010 d!1192559))

(declare-fun d!1192631 () Bool)

(assert (=> d!1192631 (= (isEmpty!25739 (originalCharacters!7484 token!484)) ((_ is Nil!43111) (originalCharacters!7484 token!484)))))

(assert (=> d!1192205 d!1192631))

(declare-fun d!1192633 () Bool)

(declare-fun lt!1430558 () Bool)

(assert (=> d!1192633 (= lt!1430558 (select (content!6546 (t!333914 rules!2999)) (rule!9940 token!484)))))

(declare-fun e!2498112 () Bool)

(assert (=> d!1192633 (= lt!1430558 e!2498112)))

(declare-fun res!1638829 () Bool)

(assert (=> d!1192633 (=> (not res!1638829) (not e!2498112))))

(assert (=> d!1192633 (= res!1638829 ((_ is Cons!43113) (t!333914 rules!2999)))))

(assert (=> d!1192633 (= (contains!8564 (t!333914 rules!2999) (rule!9940 token!484)) lt!1430558)))

(declare-fun b!4026723 () Bool)

(declare-fun e!2498111 () Bool)

(assert (=> b!4026723 (= e!2498112 e!2498111)))

(declare-fun res!1638828 () Bool)

(assert (=> b!4026723 (=> res!1638828 e!2498111)))

(assert (=> b!4026723 (= res!1638828 (= (h!48533 (t!333914 rules!2999)) (rule!9940 token!484)))))

(declare-fun b!4026724 () Bool)

(assert (=> b!4026724 (= e!2498111 (contains!8564 (t!333914 (t!333914 rules!2999)) (rule!9940 token!484)))))

(assert (= (and d!1192633 res!1638829) b!4026723))

(assert (= (and b!4026723 (not res!1638828)) b!4026724))

(assert (=> d!1192633 m!4618013))

(declare-fun m!4618289 () Bool)

(assert (=> d!1192633 m!4618289))

(declare-fun m!4618291 () Bool)

(assert (=> b!4026724 m!4618291))

(assert (=> b!4025872 d!1192633))

(declare-fun d!1192635 () Bool)

(declare-fun charsToBigInt!1 (List!43236) Int)

(assert (=> d!1192635 (= (inv!17 (value!216828 token!484)) (= (charsToBigInt!1 (text!50246 (value!216828 token!484))) (value!216820 (value!216828 token!484))))))

(declare-fun bs!590087 () Bool)

(assert (= bs!590087 d!1192635))

(declare-fun m!4618305 () Bool)

(assert (=> bs!590087 m!4618305))

(assert (=> b!4026052 d!1192635))

(declare-fun bs!590088 () Bool)

(declare-fun d!1192639 () Bool)

(assert (= bs!590088 (and d!1192639 d!1192581)))

(declare-fun lambda!127185 () Int)

(assert (=> bs!590088 (= (= (toValue!9400 (transformation!6884 (h!48533 rules!2999))) (toValue!9400 (transformation!6884 (rule!9940 token!484)))) (= lambda!127185 lambda!127183))))

(assert (=> d!1192639 true))

(assert (=> d!1192639 (< (dynLambda!18274 order!22549 (toValue!9400 (transformation!6884 (h!48533 rules!2999)))) (dynLambda!18278 order!22557 lambda!127185))))

(assert (=> d!1192639 (= (equivClasses!2841 (toChars!9259 (transformation!6884 (h!48533 rules!2999))) (toValue!9400 (transformation!6884 (h!48533 rules!2999)))) (Forall2!1079 lambda!127185))))

(declare-fun bs!590089 () Bool)

(assert (= bs!590089 d!1192639))

(declare-fun m!4618307 () Bool)

(assert (=> bs!590089 m!4618307))

(assert (=> b!4025907 d!1192639))

(assert (=> b!4026016 d!1192421))

(assert (=> b!4026016 d!1192423))

(assert (=> b!4026016 d!1192425))

(declare-fun b!4026814 () Bool)

(declare-fun e!2498163 () Bool)

(declare-fun call!286797 () Bool)

(assert (=> b!4026814 (= e!2498163 call!286797)))

(declare-fun d!1192641 () Bool)

(declare-fun res!1638843 () Bool)

(declare-fun e!2498159 () Bool)

(assert (=> d!1192641 (=> res!1638843 e!2498159)))

(assert (=> d!1192641 (= res!1638843 ((_ is ElementMatch!11789) (regex!6884 (rule!9940 token!484))))))

(assert (=> d!1192641 (= (validRegex!5334 (regex!6884 (rule!9940 token!484))) e!2498159)))

(declare-fun b!4026815 () Bool)

(declare-fun e!2498164 () Bool)

(declare-fun e!2498160 () Bool)

(assert (=> b!4026815 (= e!2498164 e!2498160)))

(declare-fun c!695728 () Bool)

(assert (=> b!4026815 (= c!695728 ((_ is Union!11789) (regex!6884 (rule!9940 token!484))))))

(declare-fun bm!286790 () Bool)

(declare-fun call!286795 () Bool)

(assert (=> bm!286790 (= call!286795 call!286797)))

(declare-fun b!4026816 () Bool)

(declare-fun res!1638842 () Bool)

(declare-fun e!2498158 () Bool)

(assert (=> b!4026816 (=> res!1638842 e!2498158)))

(assert (=> b!4026816 (= res!1638842 (not ((_ is Concat!18904) (regex!6884 (rule!9940 token!484)))))))

(assert (=> b!4026816 (= e!2498160 e!2498158)))

(declare-fun b!4026817 () Bool)

(assert (=> b!4026817 (= e!2498164 e!2498163)))

(declare-fun res!1638845 () Bool)

(assert (=> b!4026817 (= res!1638845 (not (nullable!4134 (reg!12118 (regex!6884 (rule!9940 token!484))))))))

(assert (=> b!4026817 (=> (not res!1638845) (not e!2498163))))

(declare-fun bm!286791 () Bool)

(declare-fun call!286796 () Bool)

(assert (=> bm!286791 (= call!286796 (validRegex!5334 (ite c!695728 (regOne!24091 (regex!6884 (rule!9940 token!484))) (regOne!24090 (regex!6884 (rule!9940 token!484))))))))

(declare-fun b!4026818 () Bool)

(assert (=> b!4026818 (= e!2498159 e!2498164)))

(declare-fun c!695729 () Bool)

(assert (=> b!4026818 (= c!695729 ((_ is Star!11789) (regex!6884 (rule!9940 token!484))))))

(declare-fun b!4026819 () Bool)

(declare-fun e!2498161 () Bool)

(assert (=> b!4026819 (= e!2498161 call!286795)))

(declare-fun bm!286792 () Bool)

(assert (=> bm!286792 (= call!286797 (validRegex!5334 (ite c!695729 (reg!12118 (regex!6884 (rule!9940 token!484))) (ite c!695728 (regTwo!24091 (regex!6884 (rule!9940 token!484))) (regTwo!24090 (regex!6884 (rule!9940 token!484)))))))))

(declare-fun b!4026820 () Bool)

(declare-fun e!2498162 () Bool)

(assert (=> b!4026820 (= e!2498158 e!2498162)))

(declare-fun res!1638844 () Bool)

(assert (=> b!4026820 (=> (not res!1638844) (not e!2498162))))

(assert (=> b!4026820 (= res!1638844 call!286796)))

(declare-fun b!4026821 () Bool)

(declare-fun res!1638846 () Bool)

(assert (=> b!4026821 (=> (not res!1638846) (not e!2498161))))

(assert (=> b!4026821 (= res!1638846 call!286796)))

(assert (=> b!4026821 (= e!2498160 e!2498161)))

(declare-fun b!4026822 () Bool)

(assert (=> b!4026822 (= e!2498162 call!286795)))

(assert (= (and d!1192641 (not res!1638843)) b!4026818))

(assert (= (and b!4026818 c!695729) b!4026817))

(assert (= (and b!4026818 (not c!695729)) b!4026815))

(assert (= (and b!4026817 res!1638845) b!4026814))

(assert (= (and b!4026815 c!695728) b!4026821))

(assert (= (and b!4026815 (not c!695728)) b!4026816))

(assert (= (and b!4026821 res!1638846) b!4026819))

(assert (= (and b!4026816 (not res!1638842)) b!4026820))

(assert (= (and b!4026820 res!1638844) b!4026822))

(assert (= (or b!4026819 b!4026822) bm!286790))

(assert (= (or b!4026821 b!4026820) bm!286791))

(assert (= (or b!4026814 bm!286790) bm!286792))

(declare-fun m!4618325 () Bool)

(assert (=> b!4026817 m!4618325))

(declare-fun m!4618327 () Bool)

(assert (=> bm!286791 m!4618327))

(declare-fun m!4618329 () Bool)

(assert (=> bm!286792 m!4618329))

(assert (=> d!1192217 d!1192641))

(declare-fun d!1192645 () Bool)

(declare-fun c!695730 () Bool)

(assert (=> d!1192645 (= c!695730 ((_ is Nil!43111) lt!1430418))))

(declare-fun e!2498165 () (InoxSet C!23764))

(assert (=> d!1192645 (= (content!6548 lt!1430418) e!2498165)))

(declare-fun b!4026823 () Bool)

(assert (=> b!4026823 (= e!2498165 ((as const (Array C!23764 Bool)) false))))

(declare-fun b!4026824 () Bool)

(assert (=> b!4026824 (= e!2498165 ((_ map or) (store ((as const (Array C!23764 Bool)) false) (h!48531 lt!1430418) true) (content!6548 (t!333912 lt!1430418))))))

(assert (= (and d!1192645 c!695730) b!4026823))

(assert (= (and d!1192645 (not c!695730)) b!4026824))

(declare-fun m!4618331 () Bool)

(assert (=> b!4026824 m!4618331))

(declare-fun m!4618333 () Bool)

(assert (=> b!4026824 m!4618333))

(assert (=> d!1192261 d!1192645))

(assert (=> d!1192261 d!1192543))

(declare-fun d!1192647 () Bool)

(declare-fun c!695731 () Bool)

(assert (=> d!1192647 (= c!695731 ((_ is Nil!43111) lt!1430287))))

(declare-fun e!2498166 () (InoxSet C!23764))

(assert (=> d!1192647 (= (content!6548 lt!1430287) e!2498166)))

(declare-fun b!4026825 () Bool)

(assert (=> b!4026825 (= e!2498166 ((as const (Array C!23764 Bool)) false))))

(declare-fun b!4026826 () Bool)

(assert (=> b!4026826 (= e!2498166 ((_ map or) (store ((as const (Array C!23764 Bool)) false) (h!48531 lt!1430287) true) (content!6548 (t!333912 lt!1430287))))))

(assert (= (and d!1192647 c!695731) b!4026825))

(assert (= (and d!1192647 (not c!695731)) b!4026826))

(declare-fun m!4618335 () Bool)

(assert (=> b!4026826 m!4618335))

(assert (=> b!4026826 m!4617977))

(assert (=> d!1192261 d!1192647))

(declare-fun d!1192649 () Bool)

(declare-fun lt!1430561 () Int)

(assert (=> d!1192649 (>= lt!1430561 0)))

(declare-fun e!2498167 () Int)

(assert (=> d!1192649 (= lt!1430561 e!2498167)))

(declare-fun c!695732 () Bool)

(assert (=> d!1192649 (= c!695732 ((_ is Nil!43111) (t!333912 prefix!494)))))

(assert (=> d!1192649 (= (size!32226 (t!333912 prefix!494)) lt!1430561)))

(declare-fun b!4026827 () Bool)

(assert (=> b!4026827 (= e!2498167 0)))

(declare-fun b!4026828 () Bool)

(assert (=> b!4026828 (= e!2498167 (+ 1 (size!32226 (t!333912 (t!333912 prefix!494)))))))

(assert (= (and d!1192649 c!695732) b!4026827))

(assert (= (and d!1192649 (not c!695732)) b!4026828))

(declare-fun m!4618337 () Bool)

(assert (=> b!4026828 m!4618337))

(assert (=> b!4026160 d!1192649))

(declare-fun b!4026830 () Bool)

(declare-fun res!1638849 () Bool)

(declare-fun e!2498168 () Bool)

(assert (=> b!4026830 (=> (not res!1638849) (not e!2498168))))

(assert (=> b!4026830 (= res!1638849 (= (head!8537 lt!1430280) (head!8537 (++!11286 lt!1430280 lt!1430270))))))

(declare-fun b!4026829 () Bool)

(declare-fun e!2498170 () Bool)

(assert (=> b!4026829 (= e!2498170 e!2498168)))

(declare-fun res!1638848 () Bool)

(assert (=> b!4026829 (=> (not res!1638848) (not e!2498168))))

(assert (=> b!4026829 (= res!1638848 (not ((_ is Nil!43111) (++!11286 lt!1430280 lt!1430270))))))

(declare-fun b!4026832 () Bool)

(declare-fun e!2498169 () Bool)

(assert (=> b!4026832 (= e!2498169 (>= (size!32226 (++!11286 lt!1430280 lt!1430270)) (size!32226 lt!1430280)))))

(declare-fun b!4026831 () Bool)

(assert (=> b!4026831 (= e!2498168 (isPrefix!3971 (tail!6269 lt!1430280) (tail!6269 (++!11286 lt!1430280 lt!1430270))))))

(declare-fun d!1192651 () Bool)

(assert (=> d!1192651 e!2498169))

(declare-fun res!1638850 () Bool)

(assert (=> d!1192651 (=> res!1638850 e!2498169)))

(declare-fun lt!1430562 () Bool)

(assert (=> d!1192651 (= res!1638850 (not lt!1430562))))

(assert (=> d!1192651 (= lt!1430562 e!2498170)))

(declare-fun res!1638847 () Bool)

(assert (=> d!1192651 (=> res!1638847 e!2498170)))

(assert (=> d!1192651 (= res!1638847 ((_ is Nil!43111) lt!1430280))))

(assert (=> d!1192651 (= (isPrefix!3971 lt!1430280 (++!11286 lt!1430280 lt!1430270)) lt!1430562)))

(assert (= (and d!1192651 (not res!1638847)) b!4026829))

(assert (= (and b!4026829 res!1638848) b!4026830))

(assert (= (and b!4026830 res!1638849) b!4026831))

(assert (= (and d!1192651 (not res!1638850)) b!4026832))

(assert (=> b!4026830 m!4617113))

(assert (=> b!4026830 m!4616953))

(declare-fun m!4618339 () Bool)

(assert (=> b!4026830 m!4618339))

(assert (=> b!4026832 m!4616953))

(declare-fun m!4618341 () Bool)

(assert (=> b!4026832 m!4618341))

(assert (=> b!4026832 m!4617017))

(assert (=> b!4026831 m!4617119))

(assert (=> b!4026831 m!4616953))

(declare-fun m!4618343 () Bool)

(assert (=> b!4026831 m!4618343))

(assert (=> b!4026831 m!4617119))

(assert (=> b!4026831 m!4618343))

(declare-fun m!4618345 () Bool)

(assert (=> b!4026831 m!4618345))

(assert (=> d!1192121 d!1192651))

(assert (=> d!1192121 d!1192249))

(declare-fun d!1192653 () Bool)

(assert (=> d!1192653 (isPrefix!3971 lt!1430280 (++!11286 lt!1430280 lt!1430270))))

(assert (=> d!1192653 true))

(declare-fun _$46!1700 () Unit!62274)

(assert (=> d!1192653 (= (choose!24351 lt!1430280 lt!1430270) _$46!1700)))

(declare-fun bs!590091 () Bool)

(assert (= bs!590091 d!1192653))

(assert (=> bs!590091 m!4616953))

(assert (=> bs!590091 m!4616953))

(assert (=> bs!590091 m!4617125))

(assert (=> d!1192121 d!1192653))

(declare-fun d!1192655 () Bool)

(declare-fun lt!1430563 () Int)

(assert (=> d!1192655 (>= lt!1430563 0)))

(declare-fun e!2498171 () Int)

(assert (=> d!1192655 (= lt!1430563 e!2498171)))

(declare-fun c!695733 () Bool)

(assert (=> d!1192655 (= c!695733 ((_ is Nil!43111) lt!1430278))))

(assert (=> d!1192655 (= (size!32226 lt!1430278) lt!1430563)))

(declare-fun b!4026833 () Bool)

(assert (=> b!4026833 (= e!2498171 0)))

(declare-fun b!4026834 () Bool)

(assert (=> b!4026834 (= e!2498171 (+ 1 (size!32226 (t!333912 lt!1430278))))))

(assert (= (and d!1192655 c!695733) b!4026833))

(assert (= (and d!1192655 (not c!695733)) b!4026834))

(declare-fun m!4618347 () Bool)

(assert (=> b!4026834 m!4618347))

(assert (=> b!4026041 d!1192655))

(assert (=> b!4026041 d!1192233))

(declare-fun d!1192657 () Bool)

(declare-fun lt!1430564 () Bool)

(assert (=> d!1192657 (= lt!1430564 (select (content!6546 rules!2999) (rule!9940 (_1!24241 (get!14154 lt!1430379)))))))

(declare-fun e!2498173 () Bool)

(assert (=> d!1192657 (= lt!1430564 e!2498173)))

(declare-fun res!1638852 () Bool)

(assert (=> d!1192657 (=> (not res!1638852) (not e!2498173))))

(assert (=> d!1192657 (= res!1638852 ((_ is Cons!43113) rules!2999))))

(assert (=> d!1192657 (= (contains!8564 rules!2999 (rule!9940 (_1!24241 (get!14154 lt!1430379)))) lt!1430564)))

(declare-fun b!4026835 () Bool)

(declare-fun e!2498172 () Bool)

(assert (=> b!4026835 (= e!2498173 e!2498172)))

(declare-fun res!1638851 () Bool)

(assert (=> b!4026835 (=> res!1638851 e!2498172)))

(assert (=> b!4026835 (= res!1638851 (= (h!48533 rules!2999) (rule!9940 (_1!24241 (get!14154 lt!1430379)))))))

(declare-fun b!4026836 () Bool)

(assert (=> b!4026836 (= e!2498172 (contains!8564 (t!333914 rules!2999) (rule!9940 (_1!24241 (get!14154 lt!1430379)))))))

(assert (= (and d!1192657 res!1638852) b!4026835))

(assert (= (and b!4026835 (not res!1638851)) b!4026836))

(assert (=> d!1192657 m!4617099))

(declare-fun m!4618349 () Bool)

(assert (=> d!1192657 m!4618349))

(declare-fun m!4618351 () Bool)

(assert (=> b!4026836 m!4618351))

(assert (=> b!4026014 d!1192657))

(assert (=> b!4026014 d!1192425))

(declare-fun d!1192659 () Bool)

(declare-fun lt!1430565 () Int)

(assert (=> d!1192659 (>= lt!1430565 0)))

(declare-fun e!2498174 () Int)

(assert (=> d!1192659 (= lt!1430565 e!2498174)))

(declare-fun c!695734 () Bool)

(assert (=> d!1192659 (= c!695734 ((_ is Nil!43111) lt!1430411))))

(assert (=> d!1192659 (= (size!32226 lt!1430411) lt!1430565)))

(declare-fun b!4026837 () Bool)

(assert (=> b!4026837 (= e!2498174 0)))

(declare-fun b!4026838 () Bool)

(assert (=> b!4026838 (= e!2498174 (+ 1 (size!32226 (t!333912 lt!1430411))))))

(assert (= (and d!1192659 c!695734) b!4026837))

(assert (= (and d!1192659 (not c!695734)) b!4026838))

(declare-fun m!4618353 () Bool)

(assert (=> b!4026838 m!4618353))

(assert (=> b!4026167 d!1192659))

(assert (=> b!4026167 d!1192235))

(assert (=> b!4026167 d!1192211))

(declare-fun bs!590092 () Bool)

(declare-fun d!1192661 () Bool)

(assert (= bs!590092 (and d!1192661 d!1192223)))

(declare-fun lambda!127186 () Int)

(assert (=> bs!590092 (= (and (= (toChars!9259 (transformation!6884 (h!48533 rules!2999))) (toChars!9259 (transformation!6884 (rule!9940 token!484)))) (= (toValue!9400 (transformation!6884 (h!48533 rules!2999))) (toValue!9400 (transformation!6884 (rule!9940 token!484))))) (= lambda!127186 lambda!127161))))

(declare-fun bs!590093 () Bool)

(assert (= bs!590093 (and d!1192661 d!1192479)))

(assert (=> bs!590093 (= (and (= (toChars!9259 (transformation!6884 (h!48533 rules!2999))) (toChars!9259 (transformation!6884 (rule!9940 token!484)))) (= (toValue!9400 (transformation!6884 (h!48533 rules!2999))) (toValue!9400 (transformation!6884 (rule!9940 token!484))))) (= lambda!127186 lambda!127177))))

(assert (=> d!1192661 true))

(assert (=> d!1192661 (< (dynLambda!18276 order!22553 (toChars!9259 (transformation!6884 (h!48533 rules!2999)))) (dynLambda!18275 order!22551 lambda!127186))))

(assert (=> d!1192661 true))

(assert (=> d!1192661 (< (dynLambda!18274 order!22549 (toValue!9400 (transformation!6884 (h!48533 rules!2999)))) (dynLambda!18275 order!22551 lambda!127186))))

(assert (=> d!1192661 (= (semiInverseModEq!2942 (toChars!9259 (transformation!6884 (h!48533 rules!2999))) (toValue!9400 (transformation!6884 (h!48533 rules!2999)))) (Forall!1478 lambda!127186))))

(declare-fun bs!590094 () Bool)

(assert (= bs!590094 d!1192661))

(declare-fun m!4618355 () Bool)

(assert (=> bs!590094 m!4618355))

(assert (=> d!1192125 d!1192661))

(assert (=> b!4026039 d!1192485))

(declare-fun d!1192663 () Bool)

(assert (=> d!1192663 (= (head!8537 lt!1430278) (h!48531 lt!1430278))))

(assert (=> b!4026039 d!1192663))

(declare-fun d!1192665 () Bool)

(declare-fun lt!1430566 () Int)

(assert (=> d!1192665 (>= lt!1430566 0)))

(declare-fun e!2498175 () Int)

(assert (=> d!1192665 (= lt!1430566 e!2498175)))

(declare-fun c!695735 () Bool)

(assert (=> d!1192665 (= c!695735 ((_ is Nil!43111) (t!333912 newSuffix!27)))))

(assert (=> d!1192665 (= (size!32226 (t!333912 newSuffix!27)) lt!1430566)))

(declare-fun b!4026839 () Bool)

(assert (=> b!4026839 (= e!2498175 0)))

(declare-fun b!4026840 () Bool)

(assert (=> b!4026840 (= e!2498175 (+ 1 (size!32226 (t!333912 (t!333912 newSuffix!27)))))))

(assert (= (and d!1192665 c!695735) b!4026839))

(assert (= (and d!1192665 (not c!695735)) b!4026840))

(declare-fun m!4618357 () Bool)

(assert (=> b!4026840 m!4618357))

(assert (=> b!4026082 d!1192665))

(declare-fun b!4026849 () Bool)

(declare-fun e!2498180 () List!43235)

(assert (=> b!4026849 (= e!2498180 Nil!43111)))

(declare-fun b!4026851 () Bool)

(declare-fun e!2498181 () List!43235)

(declare-fun list!16038 (IArray!26195) List!43235)

(assert (=> b!4026851 (= e!2498181 (list!16038 (xs!16401 (c!695538 (charsOf!4700 token!484)))))))

(declare-fun b!4026852 () Bool)

(assert (=> b!4026852 (= e!2498181 (++!11286 (list!16036 (left!32483 (c!695538 (charsOf!4700 token!484)))) (list!16036 (right!32813 (c!695538 (charsOf!4700 token!484))))))))

(declare-fun d!1192667 () Bool)

(declare-fun c!695740 () Bool)

(assert (=> d!1192667 (= c!695740 ((_ is Empty!13095) (c!695538 (charsOf!4700 token!484))))))

(assert (=> d!1192667 (= (list!16036 (c!695538 (charsOf!4700 token!484))) e!2498180)))

(declare-fun b!4026850 () Bool)

(assert (=> b!4026850 (= e!2498180 e!2498181)))

(declare-fun c!695741 () Bool)

(assert (=> b!4026850 (= c!695741 ((_ is Leaf!20244) (c!695538 (charsOf!4700 token!484))))))

(assert (= (and d!1192667 c!695740) b!4026849))

(assert (= (and d!1192667 (not c!695740)) b!4026850))

(assert (= (and b!4026850 c!695741) b!4026851))

(assert (= (and b!4026850 (not c!695741)) b!4026852))

(declare-fun m!4618359 () Bool)

(assert (=> b!4026851 m!4618359))

(declare-fun m!4618361 () Bool)

(assert (=> b!4026852 m!4618361))

(declare-fun m!4618363 () Bool)

(assert (=> b!4026852 m!4618363))

(assert (=> b!4026852 m!4618361))

(assert (=> b!4026852 m!4618363))

(declare-fun m!4618365 () Bool)

(assert (=> b!4026852 m!4618365))

(assert (=> d!1192237 d!1192667))

(assert (=> d!1192219 d!1192217))

(declare-fun d!1192669 () Bool)

(assert (=> d!1192669 (ruleValid!2814 thiss!21717 (rule!9940 token!484))))

(assert (=> d!1192669 true))

(declare-fun _$65!1464 () Unit!62274)

(assert (=> d!1192669 (= (choose!24354 thiss!21717 (rule!9940 token!484) rules!2999) _$65!1464)))

(declare-fun bs!590095 () Bool)

(assert (= bs!590095 d!1192669))

(assert (=> bs!590095 m!4617031))

(assert (=> d!1192219 d!1192669))

(assert (=> d!1192219 d!1192105))

(declare-fun d!1192671 () Bool)

(declare-fun c!695742 () Bool)

(assert (=> d!1192671 (= c!695742 ((_ is IntegerValue!21342) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283)))))

(declare-fun e!2498182 () Bool)

(assert (=> d!1192671 (= (inv!21 (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283)) e!2498182)))

(declare-fun b!4026853 () Bool)

(declare-fun e!2498183 () Bool)

(assert (=> b!4026853 (= e!2498183 (inv!17 (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283)))))

(declare-fun b!4026854 () Bool)

(declare-fun e!2498184 () Bool)

(assert (=> b!4026854 (= e!2498184 (inv!15 (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283)))))

(declare-fun b!4026855 () Bool)

(declare-fun res!1638853 () Bool)

(assert (=> b!4026855 (=> res!1638853 e!2498184)))

(assert (=> b!4026855 (= res!1638853 (not ((_ is IntegerValue!21344) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283))))))

(assert (=> b!4026855 (= e!2498183 e!2498184)))

(declare-fun b!4026856 () Bool)

(assert (=> b!4026856 (= e!2498182 (inv!16 (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283)))))

(declare-fun b!4026857 () Bool)

(assert (=> b!4026857 (= e!2498182 e!2498183)))

(declare-fun c!695743 () Bool)

(assert (=> b!4026857 (= c!695743 ((_ is IntegerValue!21343) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283)))))

(assert (= (and d!1192671 c!695742) b!4026856))

(assert (= (and d!1192671 (not c!695742)) b!4026857))

(assert (= (and b!4026857 c!695743) b!4026853))

(assert (= (and b!4026857 (not c!695743)) b!4026855))

(assert (= (and b!4026855 (not res!1638853)) b!4026854))

(declare-fun m!4618367 () Bool)

(assert (=> b!4026853 m!4618367))

(declare-fun m!4618369 () Bool)

(assert (=> b!4026854 m!4618369))

(declare-fun m!4618371 () Bool)

(assert (=> b!4026856 m!4618371))

(assert (=> tb!241937 d!1192671))

(declare-fun b!4026859 () Bool)

(declare-fun e!2498186 () List!43235)

(assert (=> b!4026859 (= e!2498186 (Cons!43111 (h!48531 (t!333912 lt!1430275)) (++!11286 (t!333912 (t!333912 lt!1430275)) suffix!1299)))))

(declare-fun d!1192673 () Bool)

(declare-fun e!2498185 () Bool)

(assert (=> d!1192673 e!2498185))

(declare-fun res!1638854 () Bool)

(assert (=> d!1192673 (=> (not res!1638854) (not e!2498185))))

(declare-fun lt!1430567 () List!43235)

(assert (=> d!1192673 (= res!1638854 (= (content!6548 lt!1430567) ((_ map or) (content!6548 (t!333912 lt!1430275)) (content!6548 suffix!1299))))))

(assert (=> d!1192673 (= lt!1430567 e!2498186)))

(declare-fun c!695744 () Bool)

(assert (=> d!1192673 (= c!695744 ((_ is Nil!43111) (t!333912 lt!1430275)))))

(assert (=> d!1192673 (= (++!11286 (t!333912 lt!1430275) suffix!1299) lt!1430567)))

(declare-fun b!4026860 () Bool)

(declare-fun res!1638855 () Bool)

(assert (=> b!4026860 (=> (not res!1638855) (not e!2498185))))

(assert (=> b!4026860 (= res!1638855 (= (size!32226 lt!1430567) (+ (size!32226 (t!333912 lt!1430275)) (size!32226 suffix!1299))))))

(declare-fun b!4026861 () Bool)

(assert (=> b!4026861 (= e!2498185 (or (not (= suffix!1299 Nil!43111)) (= lt!1430567 (t!333912 lt!1430275))))))

(declare-fun b!4026858 () Bool)

(assert (=> b!4026858 (= e!2498186 suffix!1299)))

(assert (= (and d!1192673 c!695744) b!4026858))

(assert (= (and d!1192673 (not c!695744)) b!4026859))

(assert (= (and d!1192673 res!1638854) b!4026860))

(assert (= (and b!4026860 res!1638855) b!4026861))

(declare-fun m!4618373 () Bool)

(assert (=> b!4026859 m!4618373))

(declare-fun m!4618375 () Bool)

(assert (=> d!1192673 m!4618375))

(assert (=> d!1192673 m!4618093))

(assert (=> d!1192673 m!4617329))

(declare-fun m!4618377 () Bool)

(assert (=> b!4026860 m!4618377))

(assert (=> b!4026860 m!4617953))

(assert (=> b!4026860 m!4616963))

(assert (=> b!4026175 d!1192673))

(declare-fun b!4026863 () Bool)

(declare-fun res!1638858 () Bool)

(declare-fun e!2498187 () Bool)

(assert (=> b!4026863 (=> (not res!1638858) (not e!2498187))))

(assert (=> b!4026863 (= res!1638858 (= (head!8537 (tail!6269 newSuffix!27)) (head!8537 (tail!6269 suffix!1299))))))

(declare-fun b!4026862 () Bool)

(declare-fun e!2498189 () Bool)

(assert (=> b!4026862 (= e!2498189 e!2498187)))

(declare-fun res!1638857 () Bool)

(assert (=> b!4026862 (=> (not res!1638857) (not e!2498187))))

(assert (=> b!4026862 (= res!1638857 (not ((_ is Nil!43111) (tail!6269 suffix!1299))))))

(declare-fun b!4026865 () Bool)

(declare-fun e!2498188 () Bool)

(assert (=> b!4026865 (= e!2498188 (>= (size!32226 (tail!6269 suffix!1299)) (size!32226 (tail!6269 newSuffix!27))))))

(declare-fun b!4026864 () Bool)

(assert (=> b!4026864 (= e!2498187 (isPrefix!3971 (tail!6269 (tail!6269 newSuffix!27)) (tail!6269 (tail!6269 suffix!1299))))))

(declare-fun d!1192675 () Bool)

(assert (=> d!1192675 e!2498188))

(declare-fun res!1638859 () Bool)

(assert (=> d!1192675 (=> res!1638859 e!2498188)))

(declare-fun lt!1430568 () Bool)

(assert (=> d!1192675 (= res!1638859 (not lt!1430568))))

(assert (=> d!1192675 (= lt!1430568 e!2498189)))

(declare-fun res!1638856 () Bool)

(assert (=> d!1192675 (=> res!1638856 e!2498189)))

(assert (=> d!1192675 (= res!1638856 ((_ is Nil!43111) (tail!6269 newSuffix!27)))))

(assert (=> d!1192675 (= (isPrefix!3971 (tail!6269 newSuffix!27) (tail!6269 suffix!1299)) lt!1430568)))

(assert (= (and d!1192675 (not res!1638856)) b!4026862))

(assert (= (and b!4026862 res!1638857) b!4026863))

(assert (= (and b!4026863 res!1638858) b!4026864))

(assert (= (and d!1192675 (not res!1638859)) b!4026865))

(assert (=> b!4026863 m!4617371))

(declare-fun m!4618379 () Bool)

(assert (=> b!4026863 m!4618379))

(assert (=> b!4026863 m!4617373))

(declare-fun m!4618381 () Bool)

(assert (=> b!4026863 m!4618381))

(assert (=> b!4026865 m!4617373))

(declare-fun m!4618383 () Bool)

(assert (=> b!4026865 m!4618383))

(assert (=> b!4026865 m!4617371))

(declare-fun m!4618385 () Bool)

(assert (=> b!4026865 m!4618385))

(assert (=> b!4026864 m!4617371))

(declare-fun m!4618387 () Bool)

(assert (=> b!4026864 m!4618387))

(assert (=> b!4026864 m!4617373))

(declare-fun m!4618389 () Bool)

(assert (=> b!4026864 m!4618389))

(assert (=> b!4026864 m!4618387))

(assert (=> b!4026864 m!4618389))

(declare-fun m!4618391 () Bool)

(assert (=> b!4026864 m!4618391))

(assert (=> b!4026059 d!1192675))

(declare-fun d!1192677 () Bool)

(assert (=> d!1192677 (= (tail!6269 newSuffix!27) (t!333912 newSuffix!27))))

(assert (=> b!4026059 d!1192677))

(declare-fun d!1192679 () Bool)

(assert (=> d!1192679 (= (tail!6269 suffix!1299) (t!333912 suffix!1299))))

(assert (=> b!4026059 d!1192679))

(declare-fun d!1192681 () Bool)

(declare-fun c!695745 () Bool)

(assert (=> d!1192681 (= c!695745 ((_ is Nil!43111) lt!1430395))))

(declare-fun e!2498190 () (InoxSet C!23764))

(assert (=> d!1192681 (= (content!6548 lt!1430395) e!2498190)))

(declare-fun b!4026866 () Bool)

(assert (=> b!4026866 (= e!2498190 ((as const (Array C!23764 Bool)) false))))

(declare-fun b!4026867 () Bool)

(assert (=> b!4026867 (= e!2498190 ((_ map or) (store ((as const (Array C!23764 Bool)) false) (h!48531 lt!1430395) true) (content!6548 (t!333912 lt!1430395))))))

(assert (= (and d!1192681 c!695745) b!4026866))

(assert (= (and d!1192681 (not c!695745)) b!4026867))

(declare-fun m!4618393 () Bool)

(assert (=> b!4026867 m!4618393))

(declare-fun m!4618395 () Bool)

(assert (=> b!4026867 m!4618395))

(assert (=> d!1192213 d!1192681))

(assert (=> d!1192213 d!1192543))

(declare-fun d!1192683 () Bool)

(declare-fun c!695746 () Bool)

(assert (=> d!1192683 (= c!695746 ((_ is Nil!43111) suffixResult!105))))

(declare-fun e!2498191 () (InoxSet C!23764))

(assert (=> d!1192683 (= (content!6548 suffixResult!105) e!2498191)))

(declare-fun b!4026868 () Bool)

(assert (=> b!4026868 (= e!2498191 ((as const (Array C!23764 Bool)) false))))

(declare-fun b!4026869 () Bool)

(assert (=> b!4026869 (= e!2498191 ((_ map or) (store ((as const (Array C!23764 Bool)) false) (h!48531 suffixResult!105) true) (content!6548 (t!333912 suffixResult!105))))))

(assert (= (and d!1192683 c!695746) b!4026868))

(assert (= (and d!1192683 (not c!695746)) b!4026869))

(declare-fun m!4618397 () Bool)

(assert (=> b!4026869 m!4618397))

(declare-fun m!4618399 () Bool)

(assert (=> b!4026869 m!4618399))

(assert (=> d!1192213 d!1192683))

(declare-fun d!1192685 () Bool)

(declare-fun lt!1430569 () Int)

(assert (=> d!1192685 (>= lt!1430569 0)))

(declare-fun e!2498192 () Int)

(assert (=> d!1192685 (= lt!1430569 e!2498192)))

(declare-fun c!695747 () Bool)

(assert (=> d!1192685 (= c!695747 ((_ is Nil!43111) lt!1430412))))

(assert (=> d!1192685 (= (size!32226 lt!1430412) lt!1430569)))

(declare-fun b!4026870 () Bool)

(assert (=> b!4026870 (= e!2498192 0)))

(declare-fun b!4026871 () Bool)

(assert (=> b!4026871 (= e!2498192 (+ 1 (size!32226 (t!333912 lt!1430412))))))

(assert (= (and d!1192685 c!695747) b!4026870))

(assert (= (and d!1192685 (not c!695747)) b!4026871))

(declare-fun m!4618401 () Bool)

(assert (=> b!4026871 m!4618401))

(assert (=> b!4026172 d!1192685))

(assert (=> b!4026172 d!1192233))

(declare-fun d!1192687 () Bool)

(declare-fun lt!1430570 () Int)

(assert (=> d!1192687 (>= lt!1430570 0)))

(declare-fun e!2498193 () Int)

(assert (=> d!1192687 (= lt!1430570 e!2498193)))

(declare-fun c!695748 () Bool)

(assert (=> d!1192687 (= c!695748 ((_ is Nil!43111) lt!1430270))))

(assert (=> d!1192687 (= (size!32226 lt!1430270) lt!1430570)))

(declare-fun b!4026872 () Bool)

(assert (=> b!4026872 (= e!2498193 0)))

(declare-fun b!4026873 () Bool)

(assert (=> b!4026873 (= e!2498193 (+ 1 (size!32226 (t!333912 lt!1430270))))))

(assert (= (and d!1192687 c!695748) b!4026872))

(assert (= (and d!1192687 (not c!695748)) b!4026873))

(declare-fun m!4618403 () Bool)

(assert (=> b!4026873 m!4618403))

(assert (=> b!4026172 d!1192687))

(declare-fun d!1192689 () Bool)

(declare-fun lt!1430571 () Int)

(assert (=> d!1192689 (>= lt!1430571 0)))

(declare-fun e!2498194 () Int)

(assert (=> d!1192689 (= lt!1430571 e!2498194)))

(declare-fun c!695749 () Bool)

(assert (=> d!1192689 (= c!695749 ((_ is Nil!43111) lt!1430414))))

(assert (=> d!1192689 (= (size!32226 lt!1430414) lt!1430571)))

(declare-fun b!4026874 () Bool)

(assert (=> b!4026874 (= e!2498194 0)))

(declare-fun b!4026875 () Bool)

(assert (=> b!4026875 (= e!2498194 (+ 1 (size!32226 (t!333912 lt!1430414))))))

(assert (= (and d!1192689 c!695749) b!4026874))

(assert (= (and d!1192689 (not c!695749)) b!4026875))

(declare-fun m!4618405 () Bool)

(assert (=> b!4026875 m!4618405))

(assert (=> b!4026180 d!1192689))

(assert (=> b!4026180 d!1192521))

(assert (=> b!4026180 d!1192209))

(declare-fun b!4026877 () Bool)

(declare-fun e!2498196 () List!43235)

(assert (=> b!4026877 (= e!2498196 (Cons!43111 (h!48531 (t!333912 prefix!494)) (++!11286 (t!333912 (t!333912 prefix!494)) suffix!1299)))))

(declare-fun d!1192691 () Bool)

(declare-fun e!2498195 () Bool)

(assert (=> d!1192691 e!2498195))

(declare-fun res!1638860 () Bool)

(assert (=> d!1192691 (=> (not res!1638860) (not e!2498195))))

(declare-fun lt!1430572 () List!43235)

(assert (=> d!1192691 (= res!1638860 (= (content!6548 lt!1430572) ((_ map or) (content!6548 (t!333912 prefix!494)) (content!6548 suffix!1299))))))

(assert (=> d!1192691 (= lt!1430572 e!2498196)))

(declare-fun c!695750 () Bool)

(assert (=> d!1192691 (= c!695750 ((_ is Nil!43111) (t!333912 prefix!494)))))

(assert (=> d!1192691 (= (++!11286 (t!333912 prefix!494) suffix!1299) lt!1430572)))

(declare-fun b!4026878 () Bool)

(declare-fun res!1638861 () Bool)

(assert (=> b!4026878 (=> (not res!1638861) (not e!2498195))))

(assert (=> b!4026878 (= res!1638861 (= (size!32226 lt!1430572) (+ (size!32226 (t!333912 prefix!494)) (size!32226 suffix!1299))))))

(declare-fun b!4026879 () Bool)

(assert (=> b!4026879 (= e!2498195 (or (not (= suffix!1299 Nil!43111)) (= lt!1430572 (t!333912 prefix!494))))))

(declare-fun b!4026876 () Bool)

(assert (=> b!4026876 (= e!2498196 suffix!1299)))

(assert (= (and d!1192691 c!695750) b!4026876))

(assert (= (and d!1192691 (not c!695750)) b!4026877))

(assert (= (and d!1192691 res!1638860) b!4026878))

(assert (= (and b!4026878 res!1638861) b!4026879))

(declare-fun m!4618407 () Bool)

(assert (=> b!4026877 m!4618407))

(declare-fun m!4618409 () Bool)

(assert (=> d!1192691 m!4618409))

(declare-fun m!4618411 () Bool)

(assert (=> d!1192691 m!4618411))

(assert (=> d!1192691 m!4617329))

(declare-fun m!4618413 () Bool)

(assert (=> b!4026878 m!4618413))

(assert (=> b!4026878 m!4617475))

(assert (=> b!4026878 m!4616963))

(assert (=> b!4026027 d!1192691))

(declare-fun b!4026881 () Bool)

(declare-fun e!2498198 () List!43235)

(assert (=> b!4026881 (= e!2498198 (Cons!43111 (h!48531 (t!333912 lt!1430280)) (++!11286 (t!333912 (t!333912 lt!1430280)) suffixResult!105)))))

(declare-fun d!1192693 () Bool)

(declare-fun e!2498197 () Bool)

(assert (=> d!1192693 e!2498197))

(declare-fun res!1638862 () Bool)

(assert (=> d!1192693 (=> (not res!1638862) (not e!2498197))))

(declare-fun lt!1430573 () List!43235)

(assert (=> d!1192693 (= res!1638862 (= (content!6548 lt!1430573) ((_ map or) (content!6548 (t!333912 lt!1430280)) (content!6548 suffixResult!105))))))

(assert (=> d!1192693 (= lt!1430573 e!2498198)))

(declare-fun c!695751 () Bool)

(assert (=> d!1192693 (= c!695751 ((_ is Nil!43111) (t!333912 lt!1430280)))))

(assert (=> d!1192693 (= (++!11286 (t!333912 lt!1430280) suffixResult!105) lt!1430573)))

(declare-fun b!4026882 () Bool)

(declare-fun res!1638863 () Bool)

(assert (=> b!4026882 (=> (not res!1638863) (not e!2498197))))

(assert (=> b!4026882 (= res!1638863 (= (size!32226 lt!1430573) (+ (size!32226 (t!333912 lt!1430280)) (size!32226 suffixResult!105))))))

(declare-fun b!4026883 () Bool)

(assert (=> b!4026883 (= e!2498197 (or (not (= suffixResult!105 Nil!43111)) (= lt!1430573 (t!333912 lt!1430280))))))

(declare-fun b!4026880 () Bool)

(assert (=> b!4026880 (= e!2498198 suffixResult!105)))

(assert (= (and d!1192693 c!695751) b!4026880))

(assert (= (and d!1192693 (not c!695751)) b!4026881))

(assert (= (and d!1192693 res!1638862) b!4026882))

(assert (= (and b!4026882 res!1638863) b!4026883))

(declare-fun m!4618415 () Bool)

(assert (=> b!4026881 m!4618415))

(declare-fun m!4618417 () Bool)

(assert (=> d!1192693 m!4618417))

(assert (=> d!1192693 m!4617889))

(assert (=> d!1192693 m!4617403))

(declare-fun m!4618419 () Bool)

(assert (=> b!4026882 m!4618419))

(assert (=> b!4026882 m!4617473))

(assert (=> b!4026882 m!4617407))

(assert (=> b!4026084 d!1192693))

(declare-fun d!1192695 () Bool)

(declare-fun lt!1430574 () Int)

(assert (=> d!1192695 (>= lt!1430574 0)))

(declare-fun e!2498199 () Int)

(assert (=> d!1192695 (= lt!1430574 e!2498199)))

(declare-fun c!695752 () Bool)

(assert (=> d!1192695 (= c!695752 ((_ is Nil!43111) (t!333912 suffix!1299)))))

(assert (=> d!1192695 (= (size!32226 (t!333912 suffix!1299)) lt!1430574)))

(declare-fun b!4026884 () Bool)

(assert (=> b!4026884 (= e!2498199 0)))

(declare-fun b!4026885 () Bool)

(assert (=> b!4026885 (= e!2498199 (+ 1 (size!32226 (t!333912 (t!333912 suffix!1299)))))))

(assert (= (and d!1192695 c!695752) b!4026884))

(assert (= (and d!1192695 (not c!695752)) b!4026885))

(declare-fun m!4618421 () Bool)

(assert (=> b!4026885 m!4618421))

(assert (=> b!4026080 d!1192695))

(declare-fun d!1192697 () Bool)

(assert (=> d!1192697 (= (list!16034 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283))) (list!16036 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283)))))))

(declare-fun bs!590096 () Bool)

(assert (= bs!590096 d!1192697))

(declare-fun m!4618423 () Bool)

(assert (=> bs!590096 m!4618423))

(assert (=> d!1192223 d!1192697))

(declare-fun d!1192699 () Bool)

(assert (=> d!1192699 (= (list!16034 lt!1430283) (list!16036 (c!695538 lt!1430283)))))

(declare-fun bs!590097 () Bool)

(assert (= bs!590097 d!1192699))

(declare-fun m!4618425 () Bool)

(assert (=> bs!590097 m!4618425))

(assert (=> d!1192223 d!1192699))

(declare-fun d!1192701 () Bool)

(declare-fun dynLambda!18279 (Int BalanceConc!25784) Bool)

(assert (=> d!1192701 (dynLambda!18279 lambda!127161 lt!1430283)))

(declare-fun lt!1430577 () Unit!62274)

(declare-fun choose!24358 (Int BalanceConc!25784) Unit!62274)

(assert (=> d!1192701 (= lt!1430577 (choose!24358 lambda!127161 lt!1430283))))

(assert (=> d!1192701 (Forall!1478 lambda!127161)))

(assert (=> d!1192701 (= (ForallOf!813 lambda!127161 lt!1430283) lt!1430577)))

(declare-fun b_lambda!117491 () Bool)

(assert (=> (not b_lambda!117491) (not d!1192701)))

(declare-fun bs!590098 () Bool)

(assert (= bs!590098 d!1192701))

(declare-fun m!4618427 () Bool)

(assert (=> bs!590098 m!4618427))

(declare-fun m!4618429 () Bool)

(assert (=> bs!590098 m!4618429))

(declare-fun m!4618431 () Bool)

(assert (=> bs!590098 m!4618431))

(assert (=> d!1192223 d!1192701))

(declare-fun d!1192703 () Bool)

(assert (=> d!1192703 (= (isEmpty!25741 lt!1430379) (not ((_ is Some!9297) lt!1430379)))))

(assert (=> d!1192127 d!1192703))

(declare-fun b!4026887 () Bool)

(declare-fun res!1638866 () Bool)

(declare-fun e!2498200 () Bool)

(assert (=> b!4026887 (=> (not res!1638866) (not e!2498200))))

(assert (=> b!4026887 (= res!1638866 (= (head!8537 lt!1430273) (head!8537 lt!1430273)))))

(declare-fun b!4026886 () Bool)

(declare-fun e!2498202 () Bool)

(assert (=> b!4026886 (= e!2498202 e!2498200)))

(declare-fun res!1638865 () Bool)

(assert (=> b!4026886 (=> (not res!1638865) (not e!2498200))))

(assert (=> b!4026886 (= res!1638865 (not ((_ is Nil!43111) lt!1430273)))))

(declare-fun b!4026889 () Bool)

(declare-fun e!2498201 () Bool)

(assert (=> b!4026889 (= e!2498201 (>= (size!32226 lt!1430273) (size!32226 lt!1430273)))))

(declare-fun b!4026888 () Bool)

(assert (=> b!4026888 (= e!2498200 (isPrefix!3971 (tail!6269 lt!1430273) (tail!6269 lt!1430273)))))

(declare-fun d!1192705 () Bool)

(assert (=> d!1192705 e!2498201))

(declare-fun res!1638867 () Bool)

(assert (=> d!1192705 (=> res!1638867 e!2498201)))

(declare-fun lt!1430578 () Bool)

(assert (=> d!1192705 (= res!1638867 (not lt!1430578))))

(assert (=> d!1192705 (= lt!1430578 e!2498202)))

(declare-fun res!1638864 () Bool)

(assert (=> d!1192705 (=> res!1638864 e!2498202)))

(assert (=> d!1192705 (= res!1638864 ((_ is Nil!43111) lt!1430273))))

(assert (=> d!1192705 (= (isPrefix!3971 lt!1430273 lt!1430273) lt!1430578)))

(assert (= (and d!1192705 (not res!1638864)) b!4026886))

(assert (= (and b!4026886 res!1638865) b!4026887))

(assert (= (and b!4026887 res!1638866) b!4026888))

(assert (= (and d!1192705 (not res!1638867)) b!4026889))

(assert (=> b!4026887 m!4617335))

(assert (=> b!4026887 m!4617335))

(assert (=> b!4026889 m!4617307))

(assert (=> b!4026889 m!4617307))

(assert (=> b!4026888 m!4617339))

(assert (=> b!4026888 m!4617339))

(assert (=> b!4026888 m!4617339))

(assert (=> b!4026888 m!4617339))

(declare-fun m!4618433 () Bool)

(assert (=> b!4026888 m!4618433))

(assert (=> d!1192127 d!1192705))

(declare-fun d!1192707 () Bool)

(assert (=> d!1192707 (isPrefix!3971 lt!1430273 lt!1430273)))

(declare-fun lt!1430581 () Unit!62274)

(declare-fun choose!24359 (List!43235 List!43235) Unit!62274)

(assert (=> d!1192707 (= lt!1430581 (choose!24359 lt!1430273 lt!1430273))))

(assert (=> d!1192707 (= (lemmaIsPrefixRefl!2538 lt!1430273 lt!1430273) lt!1430581)))

(declare-fun bs!590099 () Bool)

(assert (= bs!590099 d!1192707))

(assert (=> bs!590099 m!4617313))

(declare-fun m!4618435 () Bool)

(assert (=> bs!590099 m!4618435))

(assert (=> d!1192127 d!1192707))

(declare-fun bs!590100 () Bool)

(declare-fun d!1192709 () Bool)

(assert (= bs!590100 (and d!1192709 d!1192561)))

(declare-fun lambda!127189 () Int)

(assert (=> bs!590100 (= lambda!127189 lambda!127180)))

(assert (=> d!1192709 true))

(declare-fun lt!1430584 () Bool)

(assert (=> d!1192709 (= lt!1430584 (forall!8360 rules!2999 lambda!127189))))

(declare-fun e!2498207 () Bool)

(assert (=> d!1192709 (= lt!1430584 e!2498207)))

(declare-fun res!1638873 () Bool)

(assert (=> d!1192709 (=> res!1638873 e!2498207)))

(assert (=> d!1192709 (= res!1638873 (not ((_ is Cons!43113) rules!2999)))))

(assert (=> d!1192709 (= (rulesValidInductive!2509 thiss!21717 rules!2999) lt!1430584)))

(declare-fun b!4026894 () Bool)

(declare-fun e!2498208 () Bool)

(assert (=> b!4026894 (= e!2498207 e!2498208)))

(declare-fun res!1638872 () Bool)

(assert (=> b!4026894 (=> (not res!1638872) (not e!2498208))))

(assert (=> b!4026894 (= res!1638872 (ruleValid!2814 thiss!21717 (h!48533 rules!2999)))))

(declare-fun b!4026895 () Bool)

(assert (=> b!4026895 (= e!2498208 (rulesValidInductive!2509 thiss!21717 (t!333914 rules!2999)))))

(assert (= (and d!1192709 (not res!1638873)) b!4026894))

(assert (= (and b!4026894 res!1638872) b!4026895))

(declare-fun m!4618437 () Bool)

(assert (=> d!1192709 m!4618437))

(assert (=> b!4026894 m!4618263))

(assert (=> b!4026895 m!4618143))

(assert (=> d!1192127 d!1192709))

(declare-fun b!4026897 () Bool)

(declare-fun res!1638876 () Bool)

(declare-fun e!2498209 () Bool)

(assert (=> b!4026897 (=> (not res!1638876) (not e!2498209))))

(assert (=> b!4026897 (= res!1638876 (= (head!8537 (tail!6269 lt!1430280)) (head!8537 (tail!6269 prefix!494))))))

(declare-fun b!4026896 () Bool)

(declare-fun e!2498211 () Bool)

(assert (=> b!4026896 (= e!2498211 e!2498209)))

(declare-fun res!1638875 () Bool)

(assert (=> b!4026896 (=> (not res!1638875) (not e!2498209))))

(assert (=> b!4026896 (= res!1638875 (not ((_ is Nil!43111) (tail!6269 prefix!494))))))

(declare-fun b!4026899 () Bool)

(declare-fun e!2498210 () Bool)

(assert (=> b!4026899 (= e!2498210 (>= (size!32226 (tail!6269 prefix!494)) (size!32226 (tail!6269 lt!1430280))))))

(declare-fun b!4026898 () Bool)

(assert (=> b!4026898 (= e!2498209 (isPrefix!3971 (tail!6269 (tail!6269 lt!1430280)) (tail!6269 (tail!6269 prefix!494))))))

(declare-fun d!1192711 () Bool)

(assert (=> d!1192711 e!2498210))

(declare-fun res!1638877 () Bool)

(assert (=> d!1192711 (=> res!1638877 e!2498210)))

(declare-fun lt!1430585 () Bool)

(assert (=> d!1192711 (= res!1638877 (not lt!1430585))))

(assert (=> d!1192711 (= lt!1430585 e!2498211)))

(declare-fun res!1638874 () Bool)

(assert (=> d!1192711 (=> res!1638874 e!2498211)))

(assert (=> d!1192711 (= res!1638874 ((_ is Nil!43111) (tail!6269 lt!1430280)))))

(assert (=> d!1192711 (= (isPrefix!3971 (tail!6269 lt!1430280) (tail!6269 prefix!494)) lt!1430585)))

(assert (= (and d!1192711 (not res!1638874)) b!4026896))

(assert (= (and b!4026896 res!1638875) b!4026897))

(assert (= (and b!4026897 res!1638876) b!4026898))

(assert (= (and d!1192711 (not res!1638877)) b!4026899))

(assert (=> b!4026897 m!4617119))

(assert (=> b!4026897 m!4617791))

(assert (=> b!4026897 m!4617337))

(declare-fun m!4618439 () Bool)

(assert (=> b!4026897 m!4618439))

(assert (=> b!4026899 m!4617337))

(assert (=> b!4026899 m!4618075))

(assert (=> b!4026899 m!4617119))

(assert (=> b!4026899 m!4617799))

(assert (=> b!4026898 m!4617119))

(assert (=> b!4026898 m!4617801))

(assert (=> b!4026898 m!4617337))

(assert (=> b!4026898 m!4618077))

(assert (=> b!4026898 m!4617801))

(assert (=> b!4026898 m!4618077))

(declare-fun m!4618441 () Bool)

(assert (=> b!4026898 m!4618441))

(assert (=> b!4026194 d!1192711))

(assert (=> b!4026194 d!1192407))

(assert (=> b!4026194 d!1192565))

(declare-fun d!1192713 () Bool)

(declare-fun lt!1430586 () Int)

(assert (=> d!1192713 (>= lt!1430586 0)))

(declare-fun e!2498212 () Int)

(assert (=> d!1192713 (= lt!1430586 e!2498212)))

(declare-fun c!695753 () Bool)

(assert (=> d!1192713 (= c!695753 ((_ is Nil!43111) (originalCharacters!7484 token!484)))))

(assert (=> d!1192713 (= (size!32226 (originalCharacters!7484 token!484)) lt!1430586)))

(declare-fun b!4026900 () Bool)

(assert (=> b!4026900 (= e!2498212 0)))

(declare-fun b!4026901 () Bool)

(assert (=> b!4026901 (= e!2498212 (+ 1 (size!32226 (t!333912 (originalCharacters!7484 token!484)))))))

(assert (= (and d!1192713 c!695753) b!4026900))

(assert (= (and d!1192713 (not c!695753)) b!4026901))

(declare-fun m!4618443 () Bool)

(assert (=> b!4026901 m!4618443))

(assert (=> b!4026066 d!1192713))

(assert (=> b!4026037 d!1192559))

(assert (=> b!4026037 d!1192233))

(declare-fun b!4026903 () Bool)

(declare-fun res!1638880 () Bool)

(declare-fun e!2498213 () Bool)

(assert (=> b!4026903 (=> (not res!1638880) (not e!2498213))))

(assert (=> b!4026903 (= res!1638880 (= (head!8537 (tail!6269 prefix!494)) (head!8537 (tail!6269 lt!1430273))))))

(declare-fun b!4026902 () Bool)

(declare-fun e!2498215 () Bool)

(assert (=> b!4026902 (= e!2498215 e!2498213)))

(declare-fun res!1638879 () Bool)

(assert (=> b!4026902 (=> (not res!1638879) (not e!2498213))))

(assert (=> b!4026902 (= res!1638879 (not ((_ is Nil!43111) (tail!6269 lt!1430273))))))

(declare-fun b!4026905 () Bool)

(declare-fun e!2498214 () Bool)

(assert (=> b!4026905 (= e!2498214 (>= (size!32226 (tail!6269 lt!1430273)) (size!32226 (tail!6269 prefix!494))))))

(declare-fun b!4026904 () Bool)

(assert (=> b!4026904 (= e!2498213 (isPrefix!3971 (tail!6269 (tail!6269 prefix!494)) (tail!6269 (tail!6269 lt!1430273))))))

(declare-fun d!1192715 () Bool)

(assert (=> d!1192715 e!2498214))

(declare-fun res!1638881 () Bool)

(assert (=> d!1192715 (=> res!1638881 e!2498214)))

(declare-fun lt!1430587 () Bool)

(assert (=> d!1192715 (= res!1638881 (not lt!1430587))))

(assert (=> d!1192715 (= lt!1430587 e!2498215)))

(declare-fun res!1638878 () Bool)

(assert (=> d!1192715 (=> res!1638878 e!2498215)))

(assert (=> d!1192715 (= res!1638878 ((_ is Nil!43111) (tail!6269 prefix!494)))))

(assert (=> d!1192715 (= (isPrefix!3971 (tail!6269 prefix!494) (tail!6269 lt!1430273)) lt!1430587)))

(assert (= (and d!1192715 (not res!1638878)) b!4026902))

(assert (= (and b!4026902 res!1638879) b!4026903))

(assert (= (and b!4026903 res!1638880) b!4026904))

(assert (= (and d!1192715 (not res!1638881)) b!4026905))

(assert (=> b!4026903 m!4617337))

(assert (=> b!4026903 m!4618439))

(assert (=> b!4026903 m!4617339))

(assert (=> b!4026903 m!4617991))

(assert (=> b!4026905 m!4617339))

(assert (=> b!4026905 m!4617993))

(assert (=> b!4026905 m!4617337))

(assert (=> b!4026905 m!4618075))

(assert (=> b!4026904 m!4617337))

(assert (=> b!4026904 m!4618077))

(assert (=> b!4026904 m!4617339))

(assert (=> b!4026904 m!4617995))

(assert (=> b!4026904 m!4618077))

(assert (=> b!4026904 m!4617995))

(declare-fun m!4618445 () Bool)

(assert (=> b!4026904 m!4618445))

(assert (=> b!4026032 d!1192715))

(assert (=> b!4026032 d!1192565))

(assert (=> b!4026032 d!1192511))

(declare-fun b!4026907 () Bool)

(declare-fun res!1638884 () Bool)

(declare-fun e!2498216 () Bool)

(assert (=> b!4026907 (=> (not res!1638884) (not e!2498216))))

(assert (=> b!4026907 (= res!1638884 (= (head!8537 (tail!6269 lt!1430280)) (head!8537 (tail!6269 lt!1430281))))))

(declare-fun b!4026906 () Bool)

(declare-fun e!2498218 () Bool)

(assert (=> b!4026906 (= e!2498218 e!2498216)))

(declare-fun res!1638883 () Bool)

(assert (=> b!4026906 (=> (not res!1638883) (not e!2498216))))

(assert (=> b!4026906 (= res!1638883 (not ((_ is Nil!43111) (tail!6269 lt!1430281))))))

(declare-fun b!4026909 () Bool)

(declare-fun e!2498217 () Bool)

(assert (=> b!4026909 (= e!2498217 (>= (size!32226 (tail!6269 lt!1430281)) (size!32226 (tail!6269 lt!1430280))))))

(declare-fun b!4026908 () Bool)

(assert (=> b!4026908 (= e!2498216 (isPrefix!3971 (tail!6269 (tail!6269 lt!1430280)) (tail!6269 (tail!6269 lt!1430281))))))

(declare-fun d!1192717 () Bool)

(assert (=> d!1192717 e!2498217))

(declare-fun res!1638885 () Bool)

(assert (=> d!1192717 (=> res!1638885 e!2498217)))

(declare-fun lt!1430588 () Bool)

(assert (=> d!1192717 (= res!1638885 (not lt!1430588))))

(assert (=> d!1192717 (= lt!1430588 e!2498218)))

(declare-fun res!1638882 () Bool)

(assert (=> d!1192717 (=> res!1638882 e!2498218)))

(assert (=> d!1192717 (= res!1638882 ((_ is Nil!43111) (tail!6269 lt!1430280)))))

(assert (=> d!1192717 (= (isPrefix!3971 (tail!6269 lt!1430280) (tail!6269 lt!1430281)) lt!1430588)))

(assert (= (and d!1192717 (not res!1638882)) b!4026906))

(assert (= (and b!4026906 res!1638883) b!4026907))

(assert (= (and b!4026907 res!1638884) b!4026908))

(assert (= (and d!1192717 (not res!1638885)) b!4026909))

(assert (=> b!4026907 m!4617119))

(assert (=> b!4026907 m!4617791))

(assert (=> b!4026907 m!4617121))

(declare-fun m!4618447 () Bool)

(assert (=> b!4026907 m!4618447))

(assert (=> b!4026909 m!4617121))

(declare-fun m!4618449 () Bool)

(assert (=> b!4026909 m!4618449))

(assert (=> b!4026909 m!4617119))

(assert (=> b!4026909 m!4617799))

(assert (=> b!4026908 m!4617119))

(assert (=> b!4026908 m!4617801))

(assert (=> b!4026908 m!4617121))

(declare-fun m!4618451 () Bool)

(assert (=> b!4026908 m!4618451))

(assert (=> b!4026908 m!4617801))

(assert (=> b!4026908 m!4618451))

(declare-fun m!4618453 () Bool)

(assert (=> b!4026908 m!4618453))

(assert (=> b!4025889 d!1192717))

(assert (=> b!4025889 d!1192407))

(declare-fun d!1192719 () Bool)

(assert (=> d!1192719 (= (tail!6269 lt!1430281) (t!333912 lt!1430281))))

(assert (=> b!4025889 d!1192719))

(declare-fun b!4026911 () Bool)

(declare-fun e!2498220 () List!43235)

(assert (=> b!4026911 (= e!2498220 (Cons!43111 (h!48531 (t!333912 lt!1430280)) (++!11286 (t!333912 (t!333912 lt!1430280)) lt!1430287)))))

(declare-fun d!1192721 () Bool)

(declare-fun e!2498219 () Bool)

(assert (=> d!1192721 e!2498219))

(declare-fun res!1638886 () Bool)

(assert (=> d!1192721 (=> (not res!1638886) (not e!2498219))))

(declare-fun lt!1430589 () List!43235)

(assert (=> d!1192721 (= res!1638886 (= (content!6548 lt!1430589) ((_ map or) (content!6548 (t!333912 lt!1430280)) (content!6548 lt!1430287))))))

(assert (=> d!1192721 (= lt!1430589 e!2498220)))

(declare-fun c!695754 () Bool)

(assert (=> d!1192721 (= c!695754 ((_ is Nil!43111) (t!333912 lt!1430280)))))

(assert (=> d!1192721 (= (++!11286 (t!333912 lt!1430280) lt!1430287) lt!1430589)))

(declare-fun b!4026912 () Bool)

(declare-fun res!1638887 () Bool)

(assert (=> b!4026912 (=> (not res!1638887) (not e!2498219))))

(assert (=> b!4026912 (= res!1638887 (= (size!32226 lt!1430589) (+ (size!32226 (t!333912 lt!1430280)) (size!32226 lt!1430287))))))

(declare-fun b!4026913 () Bool)

(assert (=> b!4026913 (= e!2498219 (or (not (= lt!1430287 Nil!43111)) (= lt!1430589 (t!333912 lt!1430280))))))

(declare-fun b!4026910 () Bool)

(assert (=> b!4026910 (= e!2498220 lt!1430287)))

(assert (= (and d!1192721 c!695754) b!4026910))

(assert (= (and d!1192721 (not c!695754)) b!4026911))

(assert (= (and d!1192721 res!1638886) b!4026912))

(assert (= (and b!4026912 res!1638887) b!4026913))

(declare-fun m!4618455 () Bool)

(assert (=> b!4026911 m!4618455))

(declare-fun m!4618457 () Bool)

(assert (=> d!1192721 m!4618457))

(assert (=> d!1192721 m!4617889))

(assert (=> d!1192721 m!4617523))

(declare-fun m!4618459 () Bool)

(assert (=> b!4026912 m!4618459))

(assert (=> b!4026912 m!4617473))

(assert (=> b!4026912 m!4617527))

(assert (=> b!4026183 d!1192721))

(assert (=> b!4026035 d!1192485))

(assert (=> b!4026035 d!1192483))

(declare-fun d!1192723 () Bool)

(assert (=> d!1192723 (= (inv!57593 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283))) (isBalanced!3669 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283)))))))

(declare-fun bs!590101 () Bool)

(assert (= bs!590101 d!1192723))

(declare-fun m!4618461 () Bool)

(assert (=> bs!590101 m!4618461))

(assert (=> tb!241951 d!1192723))

(declare-fun d!1192725 () Bool)

(declare-fun c!695755 () Bool)

(assert (=> d!1192725 (= c!695755 ((_ is Nil!43111) lt!1430411))))

(declare-fun e!2498221 () (InoxSet C!23764))

(assert (=> d!1192725 (= (content!6548 lt!1430411) e!2498221)))

(declare-fun b!4026914 () Bool)

(assert (=> b!4026914 (= e!2498221 ((as const (Array C!23764 Bool)) false))))

(declare-fun b!4026915 () Bool)

(assert (=> b!4026915 (= e!2498221 ((_ map or) (store ((as const (Array C!23764 Bool)) false) (h!48531 lt!1430411) true) (content!6548 (t!333912 lt!1430411))))))

(assert (= (and d!1192725 c!695755) b!4026914))

(assert (= (and d!1192725 (not c!695755)) b!4026915))

(declare-fun m!4618463 () Bool)

(assert (=> b!4026915 m!4618463))

(declare-fun m!4618465 () Bool)

(assert (=> b!4026915 m!4618465))

(assert (=> d!1192243 d!1192725))

(declare-fun d!1192727 () Bool)

(declare-fun c!695756 () Bool)

(assert (=> d!1192727 (= c!695756 ((_ is Nil!43111) prefix!494))))

(declare-fun e!2498222 () (InoxSet C!23764))

(assert (=> d!1192727 (= (content!6548 prefix!494) e!2498222)))

(declare-fun b!4026916 () Bool)

(assert (=> b!4026916 (= e!2498222 ((as const (Array C!23764 Bool)) false))))

(declare-fun b!4026917 () Bool)

(assert (=> b!4026917 (= e!2498222 ((_ map or) (store ((as const (Array C!23764 Bool)) false) (h!48531 prefix!494) true) (content!6548 (t!333912 prefix!494))))))

(assert (= (and d!1192727 c!695756) b!4026916))

(assert (= (and d!1192727 (not c!695756)) b!4026917))

(declare-fun m!4618467 () Bool)

(assert (=> b!4026917 m!4618467))

(assert (=> b!4026917 m!4618411))

(assert (=> d!1192243 d!1192727))

(declare-fun d!1192729 () Bool)

(declare-fun c!695757 () Bool)

(assert (=> d!1192729 (= c!695757 ((_ is Nil!43111) newSuffix!27))))

(declare-fun e!2498223 () (InoxSet C!23764))

(assert (=> d!1192729 (= (content!6548 newSuffix!27) e!2498223)))

(declare-fun b!4026918 () Bool)

(assert (=> b!4026918 (= e!2498223 ((as const (Array C!23764 Bool)) false))))

(declare-fun b!4026919 () Bool)

(assert (=> b!4026919 (= e!2498223 ((_ map or) (store ((as const (Array C!23764 Bool)) false) (h!48531 newSuffix!27) true) (content!6548 (t!333912 newSuffix!27))))))

(assert (= (and d!1192729 c!695757) b!4026918))

(assert (= (and d!1192729 (not c!695757)) b!4026919))

(declare-fun m!4618469 () Bool)

(assert (=> b!4026919 m!4618469))

(declare-fun m!4618471 () Bool)

(assert (=> b!4026919 m!4618471))

(assert (=> d!1192243 d!1192729))

(declare-fun b!4026921 () Bool)

(declare-fun res!1638890 () Bool)

(declare-fun e!2498224 () Bool)

(assert (=> b!4026921 (=> (not res!1638890) (not e!2498224))))

(assert (=> b!4026921 (= res!1638890 (= (head!8537 lt!1430280) (head!8537 (++!11286 lt!1430280 suffixResult!105))))))

(declare-fun b!4026920 () Bool)

(declare-fun e!2498226 () Bool)

(assert (=> b!4026920 (= e!2498226 e!2498224)))

(declare-fun res!1638889 () Bool)

(assert (=> b!4026920 (=> (not res!1638889) (not e!2498224))))

(assert (=> b!4026920 (= res!1638889 (not ((_ is Nil!43111) (++!11286 lt!1430280 suffixResult!105))))))

(declare-fun b!4026923 () Bool)

(declare-fun e!2498225 () Bool)

(assert (=> b!4026923 (= e!2498225 (>= (size!32226 (++!11286 lt!1430280 suffixResult!105)) (size!32226 lt!1430280)))))

(declare-fun b!4026922 () Bool)

(assert (=> b!4026922 (= e!2498224 (isPrefix!3971 (tail!6269 lt!1430280) (tail!6269 (++!11286 lt!1430280 suffixResult!105))))))

(declare-fun d!1192731 () Bool)

(assert (=> d!1192731 e!2498225))

(declare-fun res!1638891 () Bool)

(assert (=> d!1192731 (=> res!1638891 e!2498225)))

(declare-fun lt!1430590 () Bool)

(assert (=> d!1192731 (= res!1638891 (not lt!1430590))))

(assert (=> d!1192731 (= lt!1430590 e!2498226)))

(declare-fun res!1638888 () Bool)

(assert (=> d!1192731 (=> res!1638888 e!2498226)))

(assert (=> d!1192731 (= res!1638888 ((_ is Nil!43111) lt!1430280))))

(assert (=> d!1192731 (= (isPrefix!3971 lt!1430280 (++!11286 lt!1430280 suffixResult!105)) lt!1430590)))

(assert (= (and d!1192731 (not res!1638888)) b!4026920))

(assert (= (and b!4026920 res!1638889) b!4026921))

(assert (= (and b!4026921 res!1638890) b!4026922))

(assert (= (and d!1192731 (not res!1638891)) b!4026923))

(assert (=> b!4026921 m!4617113))

(assert (=> b!4026921 m!4617027))

(declare-fun m!4618473 () Bool)

(assert (=> b!4026921 m!4618473))

(assert (=> b!4026923 m!4617027))

(declare-fun m!4618475 () Bool)

(assert (=> b!4026923 m!4618475))

(assert (=> b!4026923 m!4617017))

(assert (=> b!4026922 m!4617119))

(assert (=> b!4026922 m!4617027))

(declare-fun m!4618477 () Bool)

(assert (=> b!4026922 m!4618477))

(assert (=> b!4026922 m!4617119))

(assert (=> b!4026922 m!4618477))

(declare-fun m!4618479 () Bool)

(assert (=> b!4026922 m!4618479))

(assert (=> d!1192195 d!1192731))

(assert (=> d!1192195 d!1192213))

(declare-fun d!1192733 () Bool)

(assert (=> d!1192733 (isPrefix!3971 lt!1430280 (++!11286 lt!1430280 suffixResult!105))))

(assert (=> d!1192733 true))

(declare-fun _$46!1701 () Unit!62274)

(assert (=> d!1192733 (= (choose!24351 lt!1430280 suffixResult!105) _$46!1701)))

(declare-fun bs!590102 () Bool)

(assert (= bs!590102 d!1192733))

(assert (=> bs!590102 m!4617027))

(assert (=> bs!590102 m!4617027))

(assert (=> bs!590102 m!4617345))

(assert (=> d!1192195 d!1192733))

(declare-fun d!1192735 () Bool)

(declare-fun c!695758 () Bool)

(assert (=> d!1192735 (= c!695758 ((_ is Nil!43111) lt!1430414))))

(declare-fun e!2498227 () (InoxSet C!23764))

(assert (=> d!1192735 (= (content!6548 lt!1430414) e!2498227)))

(declare-fun b!4026924 () Bool)

(assert (=> b!4026924 (= e!2498227 ((as const (Array C!23764 Bool)) false))))

(declare-fun b!4026925 () Bool)

(assert (=> b!4026925 (= e!2498227 ((_ map or) (store ((as const (Array C!23764 Bool)) false) (h!48531 lt!1430414) true) (content!6548 (t!333912 lt!1430414))))))

(assert (= (and d!1192735 c!695758) b!4026924))

(assert (= (and d!1192735 (not c!695758)) b!4026925))

(declare-fun m!4618481 () Bool)

(assert (=> b!4026925 m!4618481))

(declare-fun m!4618483 () Bool)

(assert (=> b!4026925 m!4618483))

(assert (=> d!1192253 d!1192735))

(assert (=> d!1192253 d!1192647))

(assert (=> d!1192253 d!1192573))

(declare-fun d!1192737 () Bool)

(declare-fun lt!1430591 () Int)

(assert (=> d!1192737 (>= lt!1430591 0)))

(declare-fun e!2498228 () Int)

(assert (=> d!1192737 (= lt!1430591 e!2498228)))

(declare-fun c!695759 () Bool)

(assert (=> d!1192737 (= c!695759 ((_ is Nil!43111) lt!1430410))))

(assert (=> d!1192737 (= (size!32226 lt!1430410) lt!1430591)))

(declare-fun b!4026926 () Bool)

(assert (=> b!4026926 (= e!2498228 0)))

(declare-fun b!4026927 () Bool)

(assert (=> b!4026927 (= e!2498228 (+ 1 (size!32226 (t!333912 lt!1430410))))))

(assert (= (and d!1192737 c!695759) b!4026926))

(assert (= (and d!1192737 (not c!695759)) b!4026927))

(declare-fun m!4618485 () Bool)

(assert (=> b!4026927 m!4618485))

(assert (=> b!4026163 d!1192737))

(assert (=> b!4026163 d!1192233))

(declare-fun d!1192739 () Bool)

(declare-fun lt!1430592 () Int)

(assert (=> d!1192739 (>= lt!1430592 0)))

(declare-fun e!2498229 () Int)

(assert (=> d!1192739 (= lt!1430592 e!2498229)))

(declare-fun c!695760 () Bool)

(assert (=> d!1192739 (= c!695760 ((_ is Nil!43111) newSuffixResult!27))))

(assert (=> d!1192739 (= (size!32226 newSuffixResult!27) lt!1430592)))

(declare-fun b!4026928 () Bool)

(assert (=> b!4026928 (= e!2498229 0)))

(declare-fun b!4026929 () Bool)

(assert (=> b!4026929 (= e!2498229 (+ 1 (size!32226 (t!333912 newSuffixResult!27))))))

(assert (= (and d!1192739 c!695760) b!4026928))

(assert (= (and d!1192739 (not c!695760)) b!4026929))

(declare-fun m!4618487 () Bool)

(assert (=> b!4026929 m!4618487))

(assert (=> b!4026163 d!1192739))

(declare-fun d!1192741 () Bool)

(assert (=> d!1192741 (= (inv!57593 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484))) (isBalanced!3669 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484)))))))

(declare-fun bs!590103 () Bool)

(assert (= bs!590103 d!1192741))

(declare-fun m!4618489 () Bool)

(assert (=> bs!590103 m!4618489))

(assert (=> tb!241933 d!1192741))

(declare-fun d!1192743 () Bool)

(assert (=> d!1192743 (= (isDefined!7088 lt!1430379) (not (isEmpty!25741 lt!1430379)))))

(declare-fun bs!590104 () Bool)

(assert (= bs!590104 d!1192743))

(assert (=> bs!590104 m!4617311))

(assert (=> b!4026013 d!1192743))

(declare-fun b!4026931 () Bool)

(declare-fun e!2498231 () List!43235)

(assert (=> b!4026931 (= e!2498231 (Cons!43111 (h!48531 (t!333912 prefix!494)) (++!11286 (t!333912 (t!333912 prefix!494)) newSuffix!27)))))

(declare-fun d!1192745 () Bool)

(declare-fun e!2498230 () Bool)

(assert (=> d!1192745 e!2498230))

(declare-fun res!1638892 () Bool)

(assert (=> d!1192745 (=> (not res!1638892) (not e!2498230))))

(declare-fun lt!1430593 () List!43235)

(assert (=> d!1192745 (= res!1638892 (= (content!6548 lt!1430593) ((_ map or) (content!6548 (t!333912 prefix!494)) (content!6548 newSuffix!27))))))

(assert (=> d!1192745 (= lt!1430593 e!2498231)))

(declare-fun c!695761 () Bool)

(assert (=> d!1192745 (= c!695761 ((_ is Nil!43111) (t!333912 prefix!494)))))

(assert (=> d!1192745 (= (++!11286 (t!333912 prefix!494) newSuffix!27) lt!1430593)))

(declare-fun b!4026932 () Bool)

(declare-fun res!1638893 () Bool)

(assert (=> b!4026932 (=> (not res!1638893) (not e!2498230))))

(assert (=> b!4026932 (= res!1638893 (= (size!32226 lt!1430593) (+ (size!32226 (t!333912 prefix!494)) (size!32226 newSuffix!27))))))

(declare-fun b!4026933 () Bool)

(assert (=> b!4026933 (= e!2498230 (or (not (= newSuffix!27 Nil!43111)) (= lt!1430593 (t!333912 prefix!494))))))

(declare-fun b!4026930 () Bool)

(assert (=> b!4026930 (= e!2498231 newSuffix!27)))

(assert (= (and d!1192745 c!695761) b!4026930))

(assert (= (and d!1192745 (not c!695761)) b!4026931))

(assert (= (and d!1192745 res!1638892) b!4026932))

(assert (= (and b!4026932 res!1638893) b!4026933))

(declare-fun m!4618491 () Bool)

(assert (=> b!4026931 m!4618491))

(declare-fun m!4618493 () Bool)

(assert (=> d!1192745 m!4618493))

(assert (=> d!1192745 m!4618411))

(assert (=> d!1192745 m!4617495))

(declare-fun m!4618495 () Bool)

(assert (=> b!4026932 m!4618495))

(assert (=> b!4026932 m!4617475))

(assert (=> b!4026932 m!4616965))

(assert (=> b!4026166 d!1192745))

(declare-fun d!1192747 () Bool)

(declare-fun c!695762 () Bool)

(assert (=> d!1192747 (= c!695762 ((_ is Node!13095) (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484)))))))

(declare-fun e!2498232 () Bool)

(assert (=> d!1192747 (= (inv!57592 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484)))) e!2498232)))

(declare-fun b!4026934 () Bool)

(assert (=> b!4026934 (= e!2498232 (inv!57594 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484)))))))

(declare-fun b!4026935 () Bool)

(declare-fun e!2498233 () Bool)

(assert (=> b!4026935 (= e!2498232 e!2498233)))

(declare-fun res!1638894 () Bool)

(assert (=> b!4026935 (= res!1638894 (not ((_ is Leaf!20244) (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484))))))))

(assert (=> b!4026935 (=> res!1638894 e!2498233)))

(declare-fun b!4026936 () Bool)

(assert (=> b!4026936 (= e!2498233 (inv!57595 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484)))))))

(assert (= (and d!1192747 c!695762) b!4026934))

(assert (= (and d!1192747 (not c!695762)) b!4026935))

(assert (= (and b!4026935 (not res!1638894)) b!4026936))

(declare-fun m!4618497 () Bool)

(assert (=> b!4026934 m!4618497))

(declare-fun m!4618499 () Bool)

(assert (=> b!4026936 m!4618499))

(assert (=> b!4026071 d!1192747))

(declare-fun b!4026965 () Bool)

(declare-fun e!2498250 () Bool)

(declare-fun lt!1430596 () Bool)

(assert (=> b!4026965 (= e!2498250 (not lt!1430596))))

(declare-fun b!4026966 () Bool)

(declare-fun e!2498252 () Bool)

(declare-fun call!286800 () Bool)

(assert (=> b!4026966 (= e!2498252 (= lt!1430596 call!286800))))

(declare-fun b!4026967 () Bool)

(declare-fun e!2498249 () Bool)

(assert (=> b!4026967 (= e!2498249 (nullable!4134 (regex!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379))))))))

(declare-fun b!4026968 () Bool)

(declare-fun res!1638917 () Bool)

(declare-fun e!2498248 () Bool)

(assert (=> b!4026968 (=> res!1638917 e!2498248)))

(declare-fun e!2498253 () Bool)

(assert (=> b!4026968 (= res!1638917 e!2498253)))

(declare-fun res!1638912 () Bool)

(assert (=> b!4026968 (=> (not res!1638912) (not e!2498253))))

(assert (=> b!4026968 (= res!1638912 lt!1430596)))

(declare-fun b!4026969 () Bool)

(declare-fun e!2498254 () Bool)

(assert (=> b!4026969 (= e!2498254 (not (= (head!8537 (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379))))) (c!695539 (regex!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379))))))))))

(declare-fun b!4026970 () Bool)

(declare-fun res!1638914 () Bool)

(assert (=> b!4026970 (=> (not res!1638914) (not e!2498253))))

(assert (=> b!4026970 (= res!1638914 (not call!286800))))

(declare-fun b!4026971 () Bool)

(assert (=> b!4026971 (= e!2498253 (= (head!8537 (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379))))) (c!695539 (regex!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379)))))))))

(declare-fun b!4026972 () Bool)

(declare-fun e!2498251 () Bool)

(assert (=> b!4026972 (= e!2498251 e!2498254)))

(declare-fun res!1638916 () Bool)

(assert (=> b!4026972 (=> res!1638916 e!2498254)))

(assert (=> b!4026972 (= res!1638916 call!286800)))

(declare-fun b!4026973 () Bool)

(assert (=> b!4026973 (= e!2498248 e!2498251)))

(declare-fun res!1638911 () Bool)

(assert (=> b!4026973 (=> (not res!1638911) (not e!2498251))))

(assert (=> b!4026973 (= res!1638911 (not lt!1430596))))

(declare-fun b!4026974 () Bool)

(declare-fun res!1638913 () Bool)

(assert (=> b!4026974 (=> res!1638913 e!2498248)))

(assert (=> b!4026974 (= res!1638913 (not ((_ is ElementMatch!11789) (regex!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379)))))))))

(assert (=> b!4026974 (= e!2498250 e!2498248)))

(declare-fun d!1192749 () Bool)

(assert (=> d!1192749 e!2498252))

(declare-fun c!695769 () Bool)

(assert (=> d!1192749 (= c!695769 ((_ is EmptyExpr!11789) (regex!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379))))))))

(assert (=> d!1192749 (= lt!1430596 e!2498249)))

(declare-fun c!695771 () Bool)

(assert (=> d!1192749 (= c!695771 (isEmpty!25739 (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379))))))))

(assert (=> d!1192749 (validRegex!5334 (regex!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379)))))))

(assert (=> d!1192749 (= (matchR!5742 (regex!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379)))) (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379))))) lt!1430596)))

(declare-fun bm!286795 () Bool)

(assert (=> bm!286795 (= call!286800 (isEmpty!25739 (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379))))))))

(declare-fun b!4026975 () Bool)

(declare-fun derivativeStep!3539 (Regex!11789 C!23764) Regex!11789)

(assert (=> b!4026975 (= e!2498249 (matchR!5742 (derivativeStep!3539 (regex!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379)))) (head!8537 (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379)))))) (tail!6269 (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379)))))))))

(declare-fun b!4026976 () Bool)

(assert (=> b!4026976 (= e!2498252 e!2498250)))

(declare-fun c!695770 () Bool)

(assert (=> b!4026976 (= c!695770 ((_ is EmptyLang!11789) (regex!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379))))))))

(declare-fun b!4026977 () Bool)

(declare-fun res!1638918 () Bool)

(assert (=> b!4026977 (=> res!1638918 e!2498254)))

(assert (=> b!4026977 (= res!1638918 (not (isEmpty!25739 (tail!6269 (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379))))))))))

(declare-fun b!4026978 () Bool)

(declare-fun res!1638915 () Bool)

(assert (=> b!4026978 (=> (not res!1638915) (not e!2498253))))

(assert (=> b!4026978 (= res!1638915 (isEmpty!25739 (tail!6269 (list!16034 (charsOf!4700 (_1!24241 (get!14154 lt!1430379)))))))))

(assert (= (and d!1192749 c!695771) b!4026967))

(assert (= (and d!1192749 (not c!695771)) b!4026975))

(assert (= (and d!1192749 c!695769) b!4026966))

(assert (= (and d!1192749 (not c!695769)) b!4026976))

(assert (= (and b!4026976 c!695770) b!4026965))

(assert (= (and b!4026976 (not c!695770)) b!4026974))

(assert (= (and b!4026974 (not res!1638913)) b!4026968))

(assert (= (and b!4026968 res!1638912) b!4026970))

(assert (= (and b!4026970 res!1638914) b!4026978))

(assert (= (and b!4026978 res!1638915) b!4026971))

(assert (= (and b!4026968 (not res!1638917)) b!4026973))

(assert (= (and b!4026973 res!1638911) b!4026972))

(assert (= (and b!4026972 (not res!1638916)) b!4026977))

(assert (= (and b!4026977 (not res!1638918)) b!4026969))

(assert (= (or b!4026966 b!4026970 b!4026972) bm!286795))

(assert (=> bm!286795 m!4617297))

(declare-fun m!4618501 () Bool)

(assert (=> bm!286795 m!4618501))

(assert (=> b!4026977 m!4617297))

(declare-fun m!4618503 () Bool)

(assert (=> b!4026977 m!4618503))

(assert (=> b!4026977 m!4618503))

(declare-fun m!4618505 () Bool)

(assert (=> b!4026977 m!4618505))

(assert (=> b!4026975 m!4617297))

(declare-fun m!4618507 () Bool)

(assert (=> b!4026975 m!4618507))

(assert (=> b!4026975 m!4618507))

(declare-fun m!4618509 () Bool)

(assert (=> b!4026975 m!4618509))

(assert (=> b!4026975 m!4617297))

(assert (=> b!4026975 m!4618503))

(assert (=> b!4026975 m!4618509))

(assert (=> b!4026975 m!4618503))

(declare-fun m!4618511 () Bool)

(assert (=> b!4026975 m!4618511))

(assert (=> b!4026971 m!4617297))

(assert (=> b!4026971 m!4618507))

(assert (=> d!1192749 m!4617297))

(assert (=> d!1192749 m!4618501))

(declare-fun m!4618513 () Bool)

(assert (=> d!1192749 m!4618513))

(assert (=> b!4026978 m!4617297))

(assert (=> b!4026978 m!4618503))

(assert (=> b!4026978 m!4618503))

(assert (=> b!4026978 m!4618505))

(declare-fun m!4618515 () Bool)

(assert (=> b!4026967 m!4618515))

(assert (=> b!4026969 m!4617297))

(assert (=> b!4026969 m!4618507))

(assert (=> b!4026009 d!1192749))

(assert (=> b!4026009 d!1192425))

(assert (=> b!4026009 d!1192421))

(assert (=> b!4026009 d!1192423))

(declare-fun d!1192751 () Bool)

(assert (=> d!1192751 (= (list!16034 lt!1430409) (list!16036 (c!695538 lt!1430409)))))

(declare-fun bs!590105 () Bool)

(assert (= bs!590105 d!1192751))

(declare-fun m!4618517 () Bool)

(assert (=> bs!590105 m!4618517))

(assert (=> d!1192239 d!1192751))

(assert (=> b!4026169 d!1192581))

(declare-fun d!1192753 () Bool)

(declare-fun c!695772 () Bool)

(assert (=> d!1192753 (= c!695772 ((_ is Nil!43111) lt!1430412))))

(declare-fun e!2498255 () (InoxSet C!23764))

(assert (=> d!1192753 (= (content!6548 lt!1430412) e!2498255)))

(declare-fun b!4026979 () Bool)

(assert (=> b!4026979 (= e!2498255 ((as const (Array C!23764 Bool)) false))))

(declare-fun b!4026980 () Bool)

(assert (=> b!4026980 (= e!2498255 ((_ map or) (store ((as const (Array C!23764 Bool)) false) (h!48531 lt!1430412) true) (content!6548 (t!333912 lt!1430412))))))

(assert (= (and d!1192753 c!695772) b!4026979))

(assert (= (and d!1192753 (not c!695772)) b!4026980))

(declare-fun m!4618519 () Bool)

(assert (=> b!4026980 m!4618519))

(declare-fun m!4618521 () Bool)

(assert (=> b!4026980 m!4618521))

(assert (=> d!1192249 d!1192753))

(assert (=> d!1192249 d!1192543))

(declare-fun d!1192755 () Bool)

(declare-fun c!695773 () Bool)

(assert (=> d!1192755 (= c!695773 ((_ is Nil!43111) lt!1430270))))

(declare-fun e!2498256 () (InoxSet C!23764))

(assert (=> d!1192755 (= (content!6548 lt!1430270) e!2498256)))

(declare-fun b!4026981 () Bool)

(assert (=> b!4026981 (= e!2498256 ((as const (Array C!23764 Bool)) false))))

(declare-fun b!4026982 () Bool)

(assert (=> b!4026982 (= e!2498256 ((_ map or) (store ((as const (Array C!23764 Bool)) false) (h!48531 lt!1430270) true) (content!6548 (t!333912 lt!1430270))))))

(assert (= (and d!1192755 c!695773) b!4026981))

(assert (= (and d!1192755 (not c!695773)) b!4026982))

(declare-fun m!4618523 () Bool)

(assert (=> b!4026982 m!4618523))

(declare-fun m!4618525 () Bool)

(assert (=> b!4026982 m!4618525))

(assert (=> d!1192249 d!1192755))

(declare-fun d!1192757 () Bool)

(assert (=> d!1192757 (= (inv!57585 (tag!7744 (h!48533 (t!333914 rules!2999)))) (= (mod (str.len (value!216827 (tag!7744 (h!48533 (t!333914 rules!2999))))) 2) 0))))

(assert (=> b!4026233 d!1192757))

(declare-fun d!1192759 () Bool)

(declare-fun res!1638919 () Bool)

(declare-fun e!2498257 () Bool)

(assert (=> d!1192759 (=> (not res!1638919) (not e!2498257))))

(assert (=> d!1192759 (= res!1638919 (semiInverseModEq!2942 (toChars!9259 (transformation!6884 (h!48533 (t!333914 rules!2999)))) (toValue!9400 (transformation!6884 (h!48533 (t!333914 rules!2999))))))))

(assert (=> d!1192759 (= (inv!57589 (transformation!6884 (h!48533 (t!333914 rules!2999)))) e!2498257)))

(declare-fun b!4026983 () Bool)

(assert (=> b!4026983 (= e!2498257 (equivClasses!2841 (toChars!9259 (transformation!6884 (h!48533 (t!333914 rules!2999)))) (toValue!9400 (transformation!6884 (h!48533 (t!333914 rules!2999))))))))

(assert (= (and d!1192759 res!1638919) b!4026983))

(declare-fun m!4618527 () Bool)

(assert (=> d!1192759 m!4618527))

(declare-fun m!4618529 () Bool)

(assert (=> b!4026983 m!4618529))

(assert (=> b!4026233 d!1192759))

(declare-fun d!1192761 () Bool)

(assert (=> d!1192761 (= lt!1430270 suffixResult!105)))

(assert (=> d!1192761 true))

(declare-fun _$63!1071 () Unit!62274)

(assert (=> d!1192761 (= (choose!24350 lt!1430280 lt!1430270 lt!1430280 suffixResult!105 lt!1430273) _$63!1071)))

(assert (=> d!1192113 d!1192761))

(assert (=> d!1192113 d!1192193))

(declare-fun d!1192763 () Bool)

(declare-fun c!695774 () Bool)

(assert (=> d!1192763 (= c!695774 ((_ is Nil!43111) lt!1430384))))

(declare-fun e!2498258 () (InoxSet C!23764))

(assert (=> d!1192763 (= (content!6548 lt!1430384) e!2498258)))

(declare-fun b!4026984 () Bool)

(assert (=> b!4026984 (= e!2498258 ((as const (Array C!23764 Bool)) false))))

(declare-fun b!4026985 () Bool)

(assert (=> b!4026985 (= e!2498258 ((_ map or) (store ((as const (Array C!23764 Bool)) false) (h!48531 lt!1430384) true) (content!6548 (t!333912 lt!1430384))))))

(assert (= (and d!1192763 c!695774) b!4026984))

(assert (= (and d!1192763 (not c!695774)) b!4026985))

(declare-fun m!4618531 () Bool)

(assert (=> b!4026985 m!4618531))

(declare-fun m!4618533 () Bool)

(assert (=> b!4026985 m!4618533))

(assert (=> d!1192189 d!1192763))

(assert (=> d!1192189 d!1192727))

(assert (=> d!1192189 d!1192573))

(declare-fun d!1192765 () Bool)

(declare-fun lt!1430597 () Int)

(assert (=> d!1192765 (>= lt!1430597 0)))

(declare-fun e!2498259 () Int)

(assert (=> d!1192765 (= lt!1430597 e!2498259)))

(declare-fun c!695775 () Bool)

(assert (=> d!1192765 (= c!695775 ((_ is Nil!43111) (t!333912 lt!1430280)))))

(assert (=> d!1192765 (= (size!32226 (t!333912 lt!1430280)) lt!1430597)))

(declare-fun b!4026986 () Bool)

(assert (=> b!4026986 (= e!2498259 0)))

(declare-fun b!4026987 () Bool)

(assert (=> b!4026987 (= e!2498259 (+ 1 (size!32226 (t!333912 (t!333912 lt!1430280)))))))

(assert (= (and d!1192765 c!695775) b!4026986))

(assert (= (and d!1192765 (not c!695775)) b!4026987))

(declare-fun m!4618535 () Bool)

(assert (=> b!4026987 m!4618535))

(assert (=> b!4026158 d!1192765))

(declare-fun b!4026990 () Bool)

(declare-fun e!2498260 () Bool)

(declare-fun tp!1223824 () Bool)

(assert (=> b!4026990 (= e!2498260 tp!1223824)))

(declare-fun b!4026989 () Bool)

(declare-fun tp!1223822 () Bool)

(declare-fun tp!1223826 () Bool)

(assert (=> b!4026989 (= e!2498260 (and tp!1223822 tp!1223826))))

(declare-fun b!4026988 () Bool)

(assert (=> b!4026988 (= e!2498260 tp_is_empty!20549)))

(declare-fun b!4026991 () Bool)

(declare-fun tp!1223825 () Bool)

(declare-fun tp!1223823 () Bool)

(assert (=> b!4026991 (= e!2498260 (and tp!1223825 tp!1223823))))

(assert (=> b!4026219 (= tp!1223724 e!2498260)))

(assert (= (and b!4026219 ((_ is ElementMatch!11789) (regOne!24090 (regex!6884 (rule!9940 token!484))))) b!4026988))

(assert (= (and b!4026219 ((_ is Concat!18904) (regOne!24090 (regex!6884 (rule!9940 token!484))))) b!4026989))

(assert (= (and b!4026219 ((_ is Star!11789) (regOne!24090 (regex!6884 (rule!9940 token!484))))) b!4026990))

(assert (= (and b!4026219 ((_ is Union!11789) (regOne!24090 (regex!6884 (rule!9940 token!484))))) b!4026991))

(declare-fun b!4026994 () Bool)

(declare-fun e!2498261 () Bool)

(declare-fun tp!1223829 () Bool)

(assert (=> b!4026994 (= e!2498261 tp!1223829)))

(declare-fun b!4026993 () Bool)

(declare-fun tp!1223827 () Bool)

(declare-fun tp!1223831 () Bool)

(assert (=> b!4026993 (= e!2498261 (and tp!1223827 tp!1223831))))

(declare-fun b!4026992 () Bool)

(assert (=> b!4026992 (= e!2498261 tp_is_empty!20549)))

(declare-fun b!4026995 () Bool)

(declare-fun tp!1223830 () Bool)

(declare-fun tp!1223828 () Bool)

(assert (=> b!4026995 (= e!2498261 (and tp!1223830 tp!1223828))))

(assert (=> b!4026219 (= tp!1223728 e!2498261)))

(assert (= (and b!4026219 ((_ is ElementMatch!11789) (regTwo!24090 (regex!6884 (rule!9940 token!484))))) b!4026992))

(assert (= (and b!4026219 ((_ is Concat!18904) (regTwo!24090 (regex!6884 (rule!9940 token!484))))) b!4026993))

(assert (= (and b!4026219 ((_ is Star!11789) (regTwo!24090 (regex!6884 (rule!9940 token!484))))) b!4026994))

(assert (= (and b!4026219 ((_ is Union!11789) (regTwo!24090 (regex!6884 (rule!9940 token!484))))) b!4026995))

(declare-fun b!4026996 () Bool)

(declare-fun e!2498262 () Bool)

(declare-fun tp!1223832 () Bool)

(assert (=> b!4026996 (= e!2498262 (and tp_is_empty!20549 tp!1223832))))

(assert (=> b!4026216 (= tp!1223722 e!2498262)))

(assert (= (and b!4026216 ((_ is Cons!43111) (t!333912 (t!333912 newSuffix!27)))) b!4026996))

(declare-fun b!4026997 () Bool)

(declare-fun e!2498263 () Bool)

(declare-fun tp!1223833 () Bool)

(assert (=> b!4026997 (= e!2498263 (and tp_is_empty!20549 tp!1223833))))

(assert (=> b!4026200 (= tp!1223705 e!2498263)))

(assert (= (and b!4026200 ((_ is Cons!43111) (t!333912 (t!333912 newSuffixResult!27)))) b!4026997))

(declare-fun b!4027000 () Bool)

(declare-fun e!2498264 () Bool)

(declare-fun tp!1223836 () Bool)

(assert (=> b!4027000 (= e!2498264 tp!1223836)))

(declare-fun b!4026999 () Bool)

(declare-fun tp!1223834 () Bool)

(declare-fun tp!1223838 () Bool)

(assert (=> b!4026999 (= e!2498264 (and tp!1223834 tp!1223838))))

(declare-fun b!4026998 () Bool)

(assert (=> b!4026998 (= e!2498264 tp_is_empty!20549)))

(declare-fun b!4027001 () Bool)

(declare-fun tp!1223837 () Bool)

(declare-fun tp!1223835 () Bool)

(assert (=> b!4027001 (= e!2498264 (and tp!1223837 tp!1223835))))

(assert (=> b!4026220 (= tp!1223726 e!2498264)))

(assert (= (and b!4026220 ((_ is ElementMatch!11789) (reg!12118 (regex!6884 (rule!9940 token!484))))) b!4026998))

(assert (= (and b!4026220 ((_ is Concat!18904) (reg!12118 (regex!6884 (rule!9940 token!484))))) b!4026999))

(assert (= (and b!4026220 ((_ is Star!11789) (reg!12118 (regex!6884 (rule!9940 token!484))))) b!4027000))

(assert (= (and b!4026220 ((_ is Union!11789) (reg!12118 (regex!6884 (rule!9940 token!484))))) b!4027001))

(declare-fun b!4027002 () Bool)

(declare-fun e!2498265 () Bool)

(declare-fun tp!1223839 () Bool)

(assert (=> b!4027002 (= e!2498265 (and tp_is_empty!20549 tp!1223839))))

(assert (=> b!4026215 (= tp!1223721 e!2498265)))

(assert (= (and b!4026215 ((_ is Cons!43111) (t!333912 (t!333912 suffix!1299)))) b!4027002))

(declare-fun b!4027003 () Bool)

(declare-fun e!2498266 () Bool)

(declare-fun tp!1223840 () Bool)

(assert (=> b!4027003 (= e!2498266 (and tp_is_empty!20549 tp!1223840))))

(assert (=> b!4026223 (= tp!1223730 e!2498266)))

(assert (= (and b!4026223 ((_ is Cons!43111) (t!333912 (t!333912 suffixResult!105)))) b!4027003))

(declare-fun b!4027006 () Bool)

(declare-fun e!2498267 () Bool)

(declare-fun tp!1223843 () Bool)

(assert (=> b!4027006 (= e!2498267 tp!1223843)))

(declare-fun b!4027005 () Bool)

(declare-fun tp!1223841 () Bool)

(declare-fun tp!1223845 () Bool)

(assert (=> b!4027005 (= e!2498267 (and tp!1223841 tp!1223845))))

(declare-fun b!4027004 () Bool)

(assert (=> b!4027004 (= e!2498267 tp_is_empty!20549)))

(declare-fun b!4027007 () Bool)

(declare-fun tp!1223844 () Bool)

(declare-fun tp!1223842 () Bool)

(assert (=> b!4027007 (= e!2498267 (and tp!1223844 tp!1223842))))

(assert (=> b!4026214 (= tp!1223719 e!2498267)))

(assert (= (and b!4026214 ((_ is ElementMatch!11789) (regOne!24091 (regex!6884 (h!48533 rules!2999))))) b!4027004))

(assert (= (and b!4026214 ((_ is Concat!18904) (regOne!24091 (regex!6884 (h!48533 rules!2999))))) b!4027005))

(assert (= (and b!4026214 ((_ is Star!11789) (regOne!24091 (regex!6884 (h!48533 rules!2999))))) b!4027006))

(assert (= (and b!4026214 ((_ is Union!11789) (regOne!24091 (regex!6884 (h!48533 rules!2999))))) b!4027007))

(declare-fun b!4027010 () Bool)

(declare-fun e!2498268 () Bool)

(declare-fun tp!1223848 () Bool)

(assert (=> b!4027010 (= e!2498268 tp!1223848)))

(declare-fun b!4027009 () Bool)

(declare-fun tp!1223846 () Bool)

(declare-fun tp!1223850 () Bool)

(assert (=> b!4027009 (= e!2498268 (and tp!1223846 tp!1223850))))

(declare-fun b!4027008 () Bool)

(assert (=> b!4027008 (= e!2498268 tp_is_empty!20549)))

(declare-fun b!4027011 () Bool)

(declare-fun tp!1223849 () Bool)

(declare-fun tp!1223847 () Bool)

(assert (=> b!4027011 (= e!2498268 (and tp!1223849 tp!1223847))))

(assert (=> b!4026214 (= tp!1223717 e!2498268)))

(assert (= (and b!4026214 ((_ is ElementMatch!11789) (regTwo!24091 (regex!6884 (h!48533 rules!2999))))) b!4027008))

(assert (= (and b!4026214 ((_ is Concat!18904) (regTwo!24091 (regex!6884 (h!48533 rules!2999))))) b!4027009))

(assert (= (and b!4026214 ((_ is Star!11789) (regTwo!24091 (regex!6884 (h!48533 rules!2999))))) b!4027010))

(assert (= (and b!4026214 ((_ is Union!11789) (regTwo!24091 (regex!6884 (h!48533 rules!2999))))) b!4027011))

(declare-fun b!4027012 () Bool)

(declare-fun e!2498269 () Bool)

(declare-fun tp!1223851 () Bool)

(assert (=> b!4027012 (= e!2498269 (and tp_is_empty!20549 tp!1223851))))

(assert (=> b!4026222 (= tp!1223729 e!2498269)))

(assert (= (and b!4026222 ((_ is Cons!43111) (t!333912 (t!333912 prefix!494)))) b!4027012))

(declare-fun tp!1223860 () Bool)

(declare-fun tp!1223859 () Bool)

(declare-fun b!4027021 () Bool)

(declare-fun e!2498274 () Bool)

(assert (=> b!4027021 (= e!2498274 (and (inv!57592 (left!32483 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484))))) tp!1223859 (inv!57592 (right!32813 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484))))) tp!1223860))))

(declare-fun b!4027023 () Bool)

(declare-fun e!2498275 () Bool)

(declare-fun tp!1223858 () Bool)

(assert (=> b!4027023 (= e!2498275 tp!1223858)))

(declare-fun b!4027022 () Bool)

(declare-fun inv!57599 (IArray!26195) Bool)

(assert (=> b!4027022 (= e!2498274 (and (inv!57599 (xs!16401 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484))))) e!2498275))))

(assert (=> b!4026071 (= tp!1223660 (and (inv!57592 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484)))) e!2498274))))

(assert (= (and b!4026071 ((_ is Node!13095) (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484))))) b!4027021))

(assert (= b!4027022 b!4027023))

(assert (= (and b!4026071 ((_ is Leaf!20244) (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (value!216828 token!484))))) b!4027022))

(declare-fun m!4618537 () Bool)

(assert (=> b!4027021 m!4618537))

(declare-fun m!4618539 () Bool)

(assert (=> b!4027021 m!4618539))

(declare-fun m!4618541 () Bool)

(assert (=> b!4027022 m!4618541))

(assert (=> b!4026071 m!4617377))

(declare-fun b!4027026 () Bool)

(declare-fun e!2498276 () Bool)

(declare-fun tp!1223863 () Bool)

(assert (=> b!4027026 (= e!2498276 tp!1223863)))

(declare-fun b!4027025 () Bool)

(declare-fun tp!1223861 () Bool)

(declare-fun tp!1223865 () Bool)

(assert (=> b!4027025 (= e!2498276 (and tp!1223861 tp!1223865))))

(declare-fun b!4027024 () Bool)

(assert (=> b!4027024 (= e!2498276 tp_is_empty!20549)))

(declare-fun b!4027027 () Bool)

(declare-fun tp!1223864 () Bool)

(declare-fun tp!1223862 () Bool)

(assert (=> b!4027027 (= e!2498276 (and tp!1223864 tp!1223862))))

(assert (=> b!4026221 (= tp!1223727 e!2498276)))

(assert (= (and b!4026221 ((_ is ElementMatch!11789) (regOne!24091 (regex!6884 (rule!9940 token!484))))) b!4027024))

(assert (= (and b!4026221 ((_ is Concat!18904) (regOne!24091 (regex!6884 (rule!9940 token!484))))) b!4027025))

(assert (= (and b!4026221 ((_ is Star!11789) (regOne!24091 (regex!6884 (rule!9940 token!484))))) b!4027026))

(assert (= (and b!4026221 ((_ is Union!11789) (regOne!24091 (regex!6884 (rule!9940 token!484))))) b!4027027))

(declare-fun b!4027030 () Bool)

(declare-fun e!2498277 () Bool)

(declare-fun tp!1223868 () Bool)

(assert (=> b!4027030 (= e!2498277 tp!1223868)))

(declare-fun b!4027029 () Bool)

(declare-fun tp!1223866 () Bool)

(declare-fun tp!1223870 () Bool)

(assert (=> b!4027029 (= e!2498277 (and tp!1223866 tp!1223870))))

(declare-fun b!4027028 () Bool)

(assert (=> b!4027028 (= e!2498277 tp_is_empty!20549)))

(declare-fun b!4027031 () Bool)

(declare-fun tp!1223869 () Bool)

(declare-fun tp!1223867 () Bool)

(assert (=> b!4027031 (= e!2498277 (and tp!1223869 tp!1223867))))

(assert (=> b!4026221 (= tp!1223725 e!2498277)))

(assert (= (and b!4026221 ((_ is ElementMatch!11789) (regTwo!24091 (regex!6884 (rule!9940 token!484))))) b!4027028))

(assert (= (and b!4026221 ((_ is Concat!18904) (regTwo!24091 (regex!6884 (rule!9940 token!484))))) b!4027029))

(assert (= (and b!4026221 ((_ is Star!11789) (regTwo!24091 (regex!6884 (rule!9940 token!484))))) b!4027030))

(assert (= (and b!4026221 ((_ is Union!11789) (regTwo!24091 (regex!6884 (rule!9940 token!484))))) b!4027031))

(declare-fun tp!1223872 () Bool)

(declare-fun tp!1223873 () Bool)

(declare-fun b!4027032 () Bool)

(declare-fun e!2498278 () Bool)

(assert (=> b!4027032 (= e!2498278 (and (inv!57592 (left!32483 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283))))) tp!1223872 (inv!57592 (right!32813 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283))))) tp!1223873))))

(declare-fun b!4027034 () Bool)

(declare-fun e!2498279 () Bool)

(declare-fun tp!1223871 () Bool)

(assert (=> b!4027034 (= e!2498279 tp!1223871)))

(declare-fun b!4027033 () Bool)

(assert (=> b!4027033 (= e!2498278 (and (inv!57599 (xs!16401 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283))))) e!2498279))))

(assert (=> b!4026156 (= tp!1223702 (and (inv!57592 (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283)))) e!2498278))))

(assert (= (and b!4026156 ((_ is Node!13095) (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283))))) b!4027032))

(assert (= b!4027033 b!4027034))

(assert (= (and b!4026156 ((_ is Leaf!20244) (c!695538 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283))))) b!4027033))

(declare-fun m!4618543 () Bool)

(assert (=> b!4027032 m!4618543))

(declare-fun m!4618545 () Bool)

(assert (=> b!4027032 m!4618545))

(declare-fun m!4618547 () Bool)

(assert (=> b!4027033 m!4618547))

(assert (=> b!4026156 m!4617459))

(declare-fun b!4027035 () Bool)

(declare-fun e!2498280 () Bool)

(declare-fun tp!1223874 () Bool)

(assert (=> b!4027035 (= e!2498280 (and tp_is_empty!20549 tp!1223874))))

(assert (=> b!4026217 (= tp!1223723 e!2498280)))

(assert (= (and b!4026217 ((_ is Cons!43111) (t!333912 (originalCharacters!7484 token!484)))) b!4027035))

(declare-fun b!4027038 () Bool)

(declare-fun e!2498281 () Bool)

(declare-fun tp!1223877 () Bool)

(assert (=> b!4027038 (= e!2498281 tp!1223877)))

(declare-fun b!4027037 () Bool)

(declare-fun tp!1223875 () Bool)

(declare-fun tp!1223879 () Bool)

(assert (=> b!4027037 (= e!2498281 (and tp!1223875 tp!1223879))))

(declare-fun b!4027036 () Bool)

(assert (=> b!4027036 (= e!2498281 tp_is_empty!20549)))

(declare-fun b!4027039 () Bool)

(declare-fun tp!1223878 () Bool)

(declare-fun tp!1223876 () Bool)

(assert (=> b!4027039 (= e!2498281 (and tp!1223878 tp!1223876))))

(assert (=> b!4026212 (= tp!1223716 e!2498281)))

(assert (= (and b!4026212 ((_ is ElementMatch!11789) (regOne!24090 (regex!6884 (h!48533 rules!2999))))) b!4027036))

(assert (= (and b!4026212 ((_ is Concat!18904) (regOne!24090 (regex!6884 (h!48533 rules!2999))))) b!4027037))

(assert (= (and b!4026212 ((_ is Star!11789) (regOne!24090 (regex!6884 (h!48533 rules!2999))))) b!4027038))

(assert (= (and b!4026212 ((_ is Union!11789) (regOne!24090 (regex!6884 (h!48533 rules!2999))))) b!4027039))

(declare-fun b!4027042 () Bool)

(declare-fun e!2498282 () Bool)

(declare-fun tp!1223882 () Bool)

(assert (=> b!4027042 (= e!2498282 tp!1223882)))

(declare-fun b!4027041 () Bool)

(declare-fun tp!1223880 () Bool)

(declare-fun tp!1223884 () Bool)

(assert (=> b!4027041 (= e!2498282 (and tp!1223880 tp!1223884))))

(declare-fun b!4027040 () Bool)

(assert (=> b!4027040 (= e!2498282 tp_is_empty!20549)))

(declare-fun b!4027043 () Bool)

(declare-fun tp!1223883 () Bool)

(declare-fun tp!1223881 () Bool)

(assert (=> b!4027043 (= e!2498282 (and tp!1223883 tp!1223881))))

(assert (=> b!4026212 (= tp!1223720 e!2498282)))

(assert (= (and b!4026212 ((_ is ElementMatch!11789) (regTwo!24090 (regex!6884 (h!48533 rules!2999))))) b!4027040))

(assert (= (and b!4026212 ((_ is Concat!18904) (regTwo!24090 (regex!6884 (h!48533 rules!2999))))) b!4027041))

(assert (= (and b!4026212 ((_ is Star!11789) (regTwo!24090 (regex!6884 (h!48533 rules!2999))))) b!4027042))

(assert (= (and b!4026212 ((_ is Union!11789) (regTwo!24090 (regex!6884 (h!48533 rules!2999))))) b!4027043))

(declare-fun b!4027046 () Bool)

(declare-fun b_free!112125 () Bool)

(declare-fun b_next!112829 () Bool)

(assert (=> b!4027046 (= b_free!112125 (not b_next!112829))))

(declare-fun tb!241995 () Bool)

(declare-fun t!333990 () Bool)

(assert (=> (and b!4027046 (= (toValue!9400 (transformation!6884 (h!48533 (t!333914 (t!333914 rules!2999))))) (toValue!9400 (transformation!6884 (rule!9940 token!484)))) t!333990) tb!241995))

(declare-fun result!293332 () Bool)

(assert (= result!293332 result!293256))

(assert (=> d!1192221 t!333990))

(assert (=> d!1192223 t!333990))

(declare-fun t!333992 () Bool)

(declare-fun tb!241997 () Bool)

(assert (=> (and b!4027046 (= (toValue!9400 (transformation!6884 (h!48533 (t!333914 (t!333914 rules!2999))))) (toValue!9400 (transformation!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379)))))) t!333992) tb!241997))

(declare-fun result!293334 () Bool)

(assert (= result!293334 result!293312))

(assert (=> d!1192471 t!333992))

(declare-fun tp!1223886 () Bool)

(declare-fun b_and!309403 () Bool)

(assert (=> b!4027046 (= tp!1223886 (and (=> t!333990 result!293332) (=> t!333992 result!293334) b_and!309403))))

(declare-fun b_free!112127 () Bool)

(declare-fun b_next!112831 () Bool)

(assert (=> b!4027046 (= b_free!112127 (not b_next!112831))))

(declare-fun t!333994 () Bool)

(declare-fun tb!241999 () Bool)

(assert (=> (and b!4027046 (= (toChars!9259 (transformation!6884 (h!48533 (t!333914 (t!333914 rules!2999))))) (toChars!9259 (transformation!6884 (rule!9940 token!484)))) t!333994) tb!241999))

(declare-fun result!293336 () Bool)

(assert (= result!293336 result!293250))

(assert (=> b!4026065 t!333994))

(declare-fun tb!242001 () Bool)

(declare-fun t!333996 () Bool)

(assert (=> (and b!4027046 (= (toChars!9259 (transformation!6884 (h!48533 (t!333914 (t!333914 rules!2999))))) (toChars!9259 (transformation!6884 (rule!9940 token!484)))) t!333996) tb!242001))

(declare-fun result!293338 () Bool)

(assert (= result!293338 result!293278))

(assert (=> d!1192223 t!333996))

(assert (=> d!1192239 t!333994))

(declare-fun t!333998 () Bool)

(declare-fun tb!242003 () Bool)

(assert (=> (and b!4027046 (= (toChars!9259 (transformation!6884 (h!48533 (t!333914 (t!333914 rules!2999))))) (toChars!9259 (transformation!6884 (rule!9940 (_1!24241 (get!14154 lt!1430379)))))) t!333998) tb!242003))

(declare-fun result!293340 () Bool)

(assert (= result!293340 result!293306))

(assert (=> d!1192423 t!333998))

(declare-fun b_and!309405 () Bool)

(declare-fun tp!1223888 () Bool)

(assert (=> b!4027046 (= tp!1223888 (and (=> t!333994 result!293336) (=> t!333996 result!293338) (=> t!333998 result!293340) b_and!309405))))

(declare-fun e!2498286 () Bool)

(assert (=> b!4027046 (= e!2498286 (and tp!1223886 tp!1223888))))

(declare-fun e!2498285 () Bool)

(declare-fun tp!1223887 () Bool)

(declare-fun b!4027045 () Bool)

(assert (=> b!4027045 (= e!2498285 (and tp!1223887 (inv!57585 (tag!7744 (h!48533 (t!333914 (t!333914 rules!2999))))) (inv!57589 (transformation!6884 (h!48533 (t!333914 (t!333914 rules!2999))))) e!2498286))))

(declare-fun b!4027044 () Bool)

(declare-fun e!2498283 () Bool)

(declare-fun tp!1223885 () Bool)

(assert (=> b!4027044 (= e!2498283 (and e!2498285 tp!1223885))))

(assert (=> b!4026232 (= tp!1223739 e!2498283)))

(assert (= b!4027045 b!4027046))

(assert (= b!4027044 b!4027045))

(assert (= (and b!4026232 ((_ is Cons!43113) (t!333914 (t!333914 rules!2999)))) b!4027044))

(declare-fun m!4618549 () Bool)

(assert (=> b!4027045 m!4618549))

(declare-fun m!4618551 () Bool)

(assert (=> b!4027045 m!4618551))

(declare-fun b!4027049 () Bool)

(declare-fun e!2498287 () Bool)

(declare-fun tp!1223891 () Bool)

(assert (=> b!4027049 (= e!2498287 tp!1223891)))

(declare-fun b!4027048 () Bool)

(declare-fun tp!1223889 () Bool)

(declare-fun tp!1223893 () Bool)

(assert (=> b!4027048 (= e!2498287 (and tp!1223889 tp!1223893))))

(declare-fun b!4027047 () Bool)

(assert (=> b!4027047 (= e!2498287 tp_is_empty!20549)))

(declare-fun b!4027050 () Bool)

(declare-fun tp!1223892 () Bool)

(declare-fun tp!1223890 () Bool)

(assert (=> b!4027050 (= e!2498287 (and tp!1223892 tp!1223890))))

(assert (=> b!4026213 (= tp!1223718 e!2498287)))

(assert (= (and b!4026213 ((_ is ElementMatch!11789) (reg!12118 (regex!6884 (h!48533 rules!2999))))) b!4027047))

(assert (= (and b!4026213 ((_ is Concat!18904) (reg!12118 (regex!6884 (h!48533 rules!2999))))) b!4027048))

(assert (= (and b!4026213 ((_ is Star!11789) (reg!12118 (regex!6884 (h!48533 rules!2999))))) b!4027049))

(assert (= (and b!4026213 ((_ is Union!11789) (reg!12118 (regex!6884 (h!48533 rules!2999))))) b!4027050))

(declare-fun b!4027053 () Bool)

(declare-fun e!2498288 () Bool)

(declare-fun tp!1223896 () Bool)

(assert (=> b!4027053 (= e!2498288 tp!1223896)))

(declare-fun b!4027052 () Bool)

(declare-fun tp!1223894 () Bool)

(declare-fun tp!1223898 () Bool)

(assert (=> b!4027052 (= e!2498288 (and tp!1223894 tp!1223898))))

(declare-fun b!4027051 () Bool)

(assert (=> b!4027051 (= e!2498288 tp_is_empty!20549)))

(declare-fun b!4027054 () Bool)

(declare-fun tp!1223897 () Bool)

(declare-fun tp!1223895 () Bool)

(assert (=> b!4027054 (= e!2498288 (and tp!1223897 tp!1223895))))

(assert (=> b!4026233 (= tp!1223741 e!2498288)))

(assert (= (and b!4026233 ((_ is ElementMatch!11789) (regex!6884 (h!48533 (t!333914 rules!2999))))) b!4027051))

(assert (= (and b!4026233 ((_ is Concat!18904) (regex!6884 (h!48533 (t!333914 rules!2999))))) b!4027052))

(assert (= (and b!4026233 ((_ is Star!11789) (regex!6884 (h!48533 (t!333914 rules!2999))))) b!4027053))

(assert (= (and b!4026233 ((_ is Union!11789) (regex!6884 (h!48533 (t!333914 rules!2999))))) b!4027054))

(declare-fun b_lambda!117493 () Bool)

(assert (= b_lambda!117491 (or d!1192223 b_lambda!117493)))

(declare-fun bs!590106 () Bool)

(declare-fun d!1192767 () Bool)

(assert (= bs!590106 (and d!1192767 d!1192223)))

(assert (=> bs!590106 (= (dynLambda!18279 lambda!127161 lt!1430283) (= (list!16034 (dynLambda!18272 (toChars!9259 (transformation!6884 (rule!9940 token!484))) (dynLambda!18273 (toValue!9400 (transformation!6884 (rule!9940 token!484))) lt!1430283))) (list!16034 lt!1430283)))))

(declare-fun b_lambda!117495 () Bool)

(assert (=> (not b_lambda!117495) (not bs!590106)))

(assert (=> bs!590106 t!333942))

(declare-fun b_and!309407 () Bool)

(assert (= b_and!309371 (and (=> t!333942 result!293278) b_and!309407)))

(assert (=> bs!590106 t!333944))

(declare-fun b_and!309409 () Bool)

(assert (= b_and!309373 (and (=> t!333944 result!293280) b_and!309409)))

(assert (=> bs!590106 t!333950))

(declare-fun b_and!309411 () Bool)

(assert (= b_and!309375 (and (=> t!333950 result!293292) b_and!309411)))

(assert (=> bs!590106 t!333996))

(declare-fun b_and!309413 () Bool)

(assert (= b_and!309405 (and (=> t!333996 result!293338) b_and!309413)))

(declare-fun b_lambda!117497 () Bool)

(assert (=> (not b_lambda!117497) (not bs!590106)))

(assert (=> bs!590106 t!333928))

(declare-fun b_and!309415 () Bool)

(assert (= b_and!309377 (and (=> t!333928 result!293256) b_and!309415)))

(assert (=> bs!590106 t!333930))

(declare-fun b_and!309417 () Bool)

(assert (= b_and!309379 (and (=> t!333930 result!293260) b_and!309417)))

(assert (=> bs!590106 t!333946))

(declare-fun b_and!309419 () Bool)

(assert (= b_and!309381 (and (=> t!333946 result!293288) b_and!309419)))

(assert (=> bs!590106 t!333990))

(declare-fun b_and!309421 () Bool)

(assert (= b_and!309403 (and (=> t!333990 result!293332) b_and!309421)))

(assert (=> bs!590106 m!4617463))

(assert (=> bs!590106 m!4617421))

(assert (=> bs!590106 m!4617467))

(assert (=> bs!590106 m!4617469))

(assert (=> bs!590106 m!4617421))

(assert (=> bs!590106 m!4617467))

(assert (=> d!1192701 d!1192767))

(check-sat (not b!4026905) (not b!4026585) (not b!4026498) (not b!4026901) (not b!4026561) (not b!4026922) (not b_lambda!117495) (not b!4026503) (not b!4027002) (not b!4027000) (not b!4026904) (not b!4026923) (not b!4026881) (not b_lambda!117473) (not d!1192417) (not b!4027010) (not b!4026716) (not d!1192745) (not b!4027044) (not d!1192575) (not b!4026557) (not b!4027027) (not b_lambda!117497) (not b!4027022) (not d!1192707) (not d!1192673) (not b!4026996) b_and!309419 (not b!4026392) (not b!4026478) (not tb!241979) (not b!4026864) (not b!4026997) (not b!4027023) (not d!1192579) (not d!1192701) (not b!4026871) (not bm!286795) (not b!4026971) (not d!1192723) (not b!4026724) (not d!1192589) (not b!4026830) (not b!4026907) (not d!1192709) (not d!1192467) (not b!4026515) (not b!4026071) b_and!309407 (not b!4027048) (not b!4026581) (not b!4026852) (not b!4026477) (not b!4026575) (not b_lambda!117465) (not b!4026501) (not b!4026554) (not b!4026859) (not b!4026560) (not b_next!112811) (not b!4026408) (not b!4027039) (not b!4026713) (not b!4027054) (not b!4027042) (not b!4027025) (not b!4026535) (not b_next!112823) (not d!1192577) (not b!4026710) (not b!4026568) (not b!4026507) b_and!309421 (not b!4026490) (not b!4026917) (not b!4026474) (not d!1192423) (not b!4027053) (not bm!286780) (not b!4026156) (not b!4026551) (not b_next!112813) (not d!1192461) (not b!4026982) (not d!1192497) (not b!4027026) (not d!1192567) (not b!4026854) (not d!1192749) b_and!309417 (not b!4026985) (not d!1192657) (not b!4026925) (not d!1192633) (not b!4026899) (not d!1192427) (not d!1192661) (not d!1192473) (not d!1192421) (not d!1192743) (not b!4026552) (not b!4026715) (not b!4026828) (not b!4026574) (not d!1192669) (not b!4026927) (not b!4026598) (not b!4026889) (not b!4026499) (not b!4026888) (not b!4026993) (not b!4027034) (not b!4027043) (not d!1192751) (not b!4027050) (not b!4026919) (not d!1192759) (not b!4026472) (not b!4026999) (not b_lambda!117471) (not b!4026865) (not b!4026586) (not b!4026831) (not b_lambda!117479) (not b!4026429) (not d!1192581) (not b!4026921) (not b!4026589) (not b!4026856) (not b!4026994) (not b!4027045) (not b!4026908) (not d!1192439) (not b!4026869) (not b!4026995) (not b!4027029) (not b_next!112815) (not b_next!112831) (not d!1192563) (not b!4026433) (not b!4026991) (not b!4026863) (not b!4026931) (not b!4026969) (not b!4026873) (not d!1192495) (not b!4026894) (not b!4027038) (not b!4026912) (not b!4026909) (not b!4026497) (not b!4026932) (not b_next!112821) (not b!4026371) (not b_lambda!117493) b_and!309413 (not b!4026517) (not d!1192479) (not d!1192507) (not b!4026936) (not bs!590106) (not d!1192741) (not b!4027005) (not b!4026882) (not d!1192653) (not b!4026708) (not d!1192733) (not b!4027031) (not b!4026448) (not b!4026407) (not b!4027041) (not b!4026832) (not d!1192583) (not b!4026584) (not b!4026877) (not b!4026434) (not b_next!112809) (not b!4027037) (not b!4026929) (not b!4026570) tp_is_empty!20549 (not b!4026709) (not d!1192585) (not b!4026897) (not b!4026826) (not b!4026712) (not b!4026967) (not b!4026875) (not tb!241973) (not b!4026389) (not b!4026564) (not b!4026851) (not b!4026860) (not b!4026476) (not b!4027030) (not b!4026834) (not b!4026587) (not b!4026887) (not b!4026582) b_and!309411 (not d!1192693) (not b!4027049) (not b!4027035) (not b!4027007) (not d!1192503) (not b_lambda!117481) (not b!4026838) (not bm!286792) (not b!4026566) (not b!4027001) (not d!1192635) (not b!4026987) (not b!4026885) (not b!4027052) b_and!309415 (not d!1192697) (not b!4026934) (not b!4026980) (not d!1192453) (not b!4026505) (not b!4026571) (not b!4026596) (not b!4026711) (not b!4026983) (not b!4026978) (not b!4026867) (not d!1192721) (not b!4027012) (not b!4027021) (not b!4026853) (not d!1192691) (not d!1192699) (not b!4026911) (not b!4027032) (not d!1192561) (not b_next!112829) (not b!4026989) (not b!4026836) (not b!4026370) b_and!309409 (not b!4027009) (not b!4026878) (not b!4027033) (not b!4026975) (not b!4026533) (not b_lambda!117469) (not b!4026369) (not b!4026824) (not b!4026840) (not b!4026915) (not d!1192639) (not b!4026489) (not b!4026390) (not b!4027003) (not b!4026895) (not b!4026990) (not b!4026722) (not b!4026817) (not b!4027011) (not b!4026977) (not b!4026903) (not b!4026898) (not b!4027006) (not b!4026537) (not bm!286791) (not b_lambda!117467) (not b!4026588))
(check-sat b_and!309419 b_and!309407 b_and!309421 (not b_next!112813) b_and!309417 (not b_next!112815) (not b_next!112831) (not b_next!112821) b_and!309413 (not b_next!112809) b_and!309411 b_and!309415 (not b_next!112823) (not b_next!112811) (not b_next!112829) b_and!309409)

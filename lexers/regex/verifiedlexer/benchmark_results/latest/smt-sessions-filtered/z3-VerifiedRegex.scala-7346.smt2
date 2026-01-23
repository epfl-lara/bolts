; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390330 () Bool)

(assert start!390330)

(declare-fun b!4118252 () Bool)

(declare-fun b_free!116315 () Bool)

(declare-fun b_next!117019 () Bool)

(assert (=> b!4118252 (= b_free!116315 (not b_next!117019))))

(declare-fun tp!1254954 () Bool)

(declare-fun b_and!318397 () Bool)

(assert (=> b!4118252 (= tp!1254954 b_and!318397)))

(declare-fun b_free!116317 () Bool)

(declare-fun b_next!117021 () Bool)

(assert (=> b!4118252 (= b_free!116317 (not b_next!117021))))

(declare-fun tp!1254946 () Bool)

(declare-fun b_and!318399 () Bool)

(assert (=> b!4118252 (= tp!1254946 b_and!318399)))

(declare-fun b!4118234 () Bool)

(declare-fun b_free!116319 () Bool)

(declare-fun b_next!117023 () Bool)

(assert (=> b!4118234 (= b_free!116319 (not b_next!117023))))

(declare-fun tp!1254956 () Bool)

(declare-fun b_and!318401 () Bool)

(assert (=> b!4118234 (= tp!1254956 b_and!318401)))

(declare-fun b_free!116321 () Bool)

(declare-fun b_next!117025 () Bool)

(assert (=> b!4118234 (= b_free!116321 (not b_next!117025))))

(declare-fun tp!1254952 () Bool)

(declare-fun b_and!318403 () Bool)

(assert (=> b!4118234 (= tp!1254952 b_and!318403)))

(declare-fun b!4118238 () Bool)

(declare-fun b_free!116323 () Bool)

(declare-fun b_next!117027 () Bool)

(assert (=> b!4118238 (= b_free!116323 (not b_next!117027))))

(declare-fun tp!1254948 () Bool)

(declare-fun b_and!318405 () Bool)

(assert (=> b!4118238 (= tp!1254948 b_and!318405)))

(declare-fun b_free!116325 () Bool)

(declare-fun b_next!117029 () Bool)

(assert (=> b!4118238 (= b_free!116325 (not b_next!117029))))

(declare-fun tp!1254950 () Bool)

(declare-fun b_and!318407 () Bool)

(assert (=> b!4118238 (= tp!1254950 b_and!318407)))

(declare-datatypes ((List!44635 0))(
  ( (Nil!44511) (Cons!44511 (h!49931 (_ BitVec 16)) (t!340538 List!44635)) )
))
(declare-datatypes ((TokenValue!7494 0))(
  ( (FloatLiteralValue!14988 (text!52903 List!44635)) (TokenValueExt!7493 (__x!27205 Int)) (Broken!37470 (value!227552 List!44635)) (Object!7617) (End!7494) (Def!7494) (Underscore!7494) (Match!7494) (Else!7494) (Error!7494) (Case!7494) (If!7494) (Extends!7494) (Abstract!7494) (Class!7494) (Val!7494) (DelimiterValue!14988 (del!7554 List!44635)) (KeywordValue!7500 (value!227553 List!44635)) (CommentValue!14988 (value!227554 List!44635)) (WhitespaceValue!14988 (value!227555 List!44635)) (IndentationValue!7494 (value!227556 List!44635)) (String!51219) (Int32!7494) (Broken!37471 (value!227557 List!44635)) (Boolean!7495) (Unit!63868) (OperatorValue!7497 (op!7554 List!44635)) (IdentifierValue!14988 (value!227558 List!44635)) (IdentifierValue!14989 (value!227559 List!44635)) (WhitespaceValue!14989 (value!227560 List!44635)) (True!14988) (False!14988) (Broken!37472 (value!227561 List!44635)) (Broken!37473 (value!227562 List!44635)) (True!14989) (RightBrace!7494) (RightBracket!7494) (Colon!7494) (Null!7494) (Comma!7494) (LeftBracket!7494) (False!14989) (LeftBrace!7494) (ImaginaryLiteralValue!7494 (text!52904 List!44635)) (StringLiteralValue!22482 (value!227563 List!44635)) (EOFValue!7494 (value!227564 List!44635)) (IdentValue!7494 (value!227565 List!44635)) (DelimiterValue!14989 (value!227566 List!44635)) (DedentValue!7494 (value!227567 List!44635)) (NewLineValue!7494 (value!227568 List!44635)) (IntegerValue!22482 (value!227569 (_ BitVec 32)) (text!52905 List!44635)) (IntegerValue!22483 (value!227570 Int) (text!52906 List!44635)) (Times!7494) (Or!7494) (Equal!7494) (Minus!7494) (Broken!37474 (value!227571 List!44635)) (And!7494) (Div!7494) (LessEqual!7494) (Mod!7494) (Concat!19663) (Not!7494) (Plus!7494) (SpaceValue!7494 (value!227572 List!44635)) (IntegerValue!22484 (value!227573 Int) (text!52907 List!44635)) (StringLiteralValue!22483 (text!52908 List!44635)) (FloatLiteralValue!14989 (text!52909 List!44635)) (BytesLiteralValue!7494 (value!227574 List!44635)) (CommentValue!14989 (value!227575 List!44635)) (StringLiteralValue!22484 (value!227576 List!44635)) (ErrorTokenValue!7494 (msg!7555 List!44635)) )
))
(declare-datatypes ((C!24524 0))(
  ( (C!24525 (val!14372 Int)) )
))
(declare-datatypes ((List!44636 0))(
  ( (Nil!44512) (Cons!44512 (h!49932 C!24524) (t!340539 List!44636)) )
))
(declare-datatypes ((IArray!26955 0))(
  ( (IArray!26956 (innerList!13535 List!44636)) )
))
(declare-datatypes ((Conc!13475 0))(
  ( (Node!13475 (left!33341 Conc!13475) (right!33671 Conc!13475) (csize!27180 Int) (cheight!13686 Int)) (Leaf!20822 (xs!16781 IArray!26955) (csize!27181 Int)) (Empty!13475) )
))
(declare-datatypes ((BalanceConc!26544 0))(
  ( (BalanceConc!26545 (c!707302 Conc!13475)) )
))
(declare-datatypes ((Regex!12169 0))(
  ( (ElementMatch!12169 (c!707303 C!24524)) (Concat!19664 (regOne!24850 Regex!12169) (regTwo!24850 Regex!12169)) (EmptyExpr!12169) (Star!12169 (reg!12498 Regex!12169)) (EmptyLang!12169) (Union!12169 (regOne!24851 Regex!12169) (regTwo!24851 Regex!12169)) )
))
(declare-datatypes ((String!51220 0))(
  ( (String!51221 (value!227577 String)) )
))
(declare-datatypes ((TokenValueInjection!14416 0))(
  ( (TokenValueInjection!14417 (toValue!9916 Int) (toChars!9775 Int)) )
))
(declare-datatypes ((Rule!14328 0))(
  ( (Rule!14329 (regex!7264 Regex!12169) (tag!8124 String!51220) (isSeparator!7264 Bool) (transformation!7264 TokenValueInjection!14416)) )
))
(declare-fun rBis!149 () Rule!14328)

(declare-fun e!2555369 () Bool)

(declare-fun b!4118232 () Bool)

(declare-fun tp!1254945 () Bool)

(declare-fun e!2555368 () Bool)

(declare-fun inv!59093 (String!51220) Bool)

(declare-fun inv!59095 (TokenValueInjection!14416) Bool)

(assert (=> b!4118232 (= e!2555369 (and tp!1254945 (inv!59093 (tag!8124 rBis!149)) (inv!59095 (transformation!7264 rBis!149)) e!2555368))))

(declare-fun b!4118233 () Bool)

(declare-fun e!2555356 () Bool)

(declare-fun e!2555365 () Bool)

(assert (=> b!4118233 (= e!2555356 e!2555365)))

(declare-fun res!1682167 () Bool)

(assert (=> b!4118233 (=> (not res!1682167) (not e!2555365))))

(declare-datatypes ((List!44637 0))(
  ( (Nil!44513) (Cons!44513 (h!49933 Rule!14328) (t!340540 List!44637)) )
))
(declare-fun rules!3756 () List!44637)

(declare-fun input!3238 () List!44636)

(declare-fun p!2912 () List!44636)

(declare-fun lt!1469214 () BalanceConc!26544)

(declare-fun r!4008 () Rule!14328)

(declare-datatypes ((LexerInterface!6853 0))(
  ( (LexerInterfaceExt!6850 (__x!27206 Int)) (Lexer!6851) )
))
(declare-fun thiss!25645 () LexerInterface!6853)

(declare-datatypes ((Token!13458 0))(
  ( (Token!13459 (value!227578 TokenValue!7494) (rule!10330 Rule!14328) (size!32937 Int) (originalCharacters!7760 List!44636)) )
))
(declare-datatypes ((tuple2!42986 0))(
  ( (tuple2!42987 (_1!24627 Token!13458) (_2!24627 List!44636)) )
))
(declare-datatypes ((Option!9572 0))(
  ( (None!9571) (Some!9571 (v!40149 tuple2!42986)) )
))
(declare-fun maxPrefix!4045 (LexerInterface!6853 List!44637 List!44636) Option!9572)

(declare-fun apply!10337 (TokenValueInjection!14416 BalanceConc!26544) TokenValue!7494)

(declare-fun size!32938 (List!44636) Int)

(declare-fun getSuffix!2528 (List!44636 List!44636) List!44636)

(assert (=> b!4118233 (= res!1682167 (= (maxPrefix!4045 thiss!25645 rules!3756 input!3238) (Some!9571 (tuple2!42987 (Token!13459 (apply!10337 (transformation!7264 r!4008) lt!1469214) r!4008 (size!32938 p!2912) p!2912) (getSuffix!2528 input!3238 p!2912)))))))

(declare-datatypes ((Unit!63869 0))(
  ( (Unit!63870) )
))
(declare-fun lt!1469218 () Unit!63869)

(declare-fun lemmaSemiInverse!2122 (TokenValueInjection!14416 BalanceConc!26544) Unit!63869)

(assert (=> b!4118233 (= lt!1469218 (lemmaSemiInverse!2122 (transformation!7264 r!4008) lt!1469214))))

(declare-fun seqFromList!5381 (List!44636) BalanceConc!26544)

(assert (=> b!4118233 (= lt!1469214 (seqFromList!5381 p!2912))))

(assert (=> b!4118234 (= e!2555368 (and tp!1254956 tp!1254952))))

(declare-fun b!4118235 () Bool)

(declare-fun res!1682163 () Bool)

(assert (=> b!4118235 (=> (not res!1682163) (not e!2555365))))

(declare-fun matchR!6000 (Regex!12169 List!44636) Bool)

(assert (=> b!4118235 (= res!1682163 (matchR!6000 (regex!7264 r!4008) p!2912))))

(declare-fun b!4118236 () Bool)

(declare-fun e!2555359 () Bool)

(declare-fun tp_is_empty!21261 () Bool)

(declare-fun tp!1254947 () Bool)

(assert (=> b!4118236 (= e!2555359 (and tp_is_empty!21261 tp!1254947))))

(declare-fun b!4118237 () Bool)

(declare-fun res!1682166 () Bool)

(assert (=> b!4118237 (=> (not res!1682166) (not e!2555356))))

(declare-fun isEmpty!26467 (List!44637) Bool)

(assert (=> b!4118237 (= res!1682166 (not (isEmpty!26467 rules!3756)))))

(declare-fun e!2555367 () Bool)

(assert (=> b!4118238 (= e!2555367 (and tp!1254948 tp!1254950))))

(declare-fun b!4118239 () Bool)

(declare-fun e!2555370 () Bool)

(assert (=> b!4118239 (= e!2555365 (not e!2555370))))

(declare-fun res!1682170 () Bool)

(assert (=> b!4118239 (=> res!1682170 e!2555370)))

(get-info :version)

(assert (=> b!4118239 (= res!1682170 (or (not ((_ is Cons!44513) rules!3756)) (not (= (h!49933 rules!3756) rBis!149))))))

(declare-fun lt!1469216 () Unit!63869)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2116 (LexerInterface!6853 Rule!14328 List!44637) Unit!63869)

(assert (=> b!4118239 (= lt!1469216 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2116 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3072 (LexerInterface!6853 Rule!14328) Bool)

(assert (=> b!4118239 (ruleValid!3072 thiss!25645 rBis!149)))

(declare-fun lt!1469217 () Unit!63869)

(assert (=> b!4118239 (= lt!1469217 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2116 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4118240 () Bool)

(declare-fun res!1682168 () Bool)

(assert (=> b!4118240 (=> (not res!1682168) (not e!2555356))))

(declare-fun rulesInvariant!6150 (LexerInterface!6853 List!44637) Bool)

(assert (=> b!4118240 (= res!1682168 (rulesInvariant!6150 thiss!25645 rules!3756))))

(declare-fun b!4118241 () Bool)

(assert (=> b!4118241 (= e!2555370 true)))

(declare-fun lt!1469220 () Option!9572)

(declare-fun maxPrefixOneRule!2995 (LexerInterface!6853 Rule!14328 List!44636) Option!9572)

(assert (=> b!4118241 (= lt!1469220 (maxPrefixOneRule!2995 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4118241 (not (= rBis!149 r!4008))))

(declare-fun lt!1469219 () Unit!63869)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!4 (LexerInterface!6853 List!44637 Rule!14328 Rule!14328) Unit!63869)

(assert (=> b!4118241 (= lt!1469219 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!4 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!8936 (List!44637 Rule!14328) Bool)

(declare-fun tail!6413 (List!44637) List!44637)

(assert (=> b!4118241 (contains!8936 (tail!6413 rules!3756) r!4008)))

(declare-fun lt!1469215 () Unit!63869)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!6 (List!44637 Rule!14328 Rule!14328) Unit!63869)

(assert (=> b!4118241 (= lt!1469215 (lemmaGetIndexBiggerAndHeadEqThenTailContains!6 rules!3756 rBis!149 r!4008))))

(declare-fun b!4118242 () Bool)

(declare-fun res!1682165 () Bool)

(assert (=> b!4118242 (=> (not res!1682165) (not e!2555356))))

(assert (=> b!4118242 (= res!1682165 (contains!8936 rules!3756 r!4008))))

(declare-fun e!2555366 () Bool)

(declare-fun tp!1254953 () Bool)

(declare-fun e!2555357 () Bool)

(declare-fun b!4118243 () Bool)

(assert (=> b!4118243 (= e!2555366 (and tp!1254953 (inv!59093 (tag!8124 (h!49933 rules!3756))) (inv!59095 (transformation!7264 (h!49933 rules!3756))) e!2555357))))

(declare-fun b!4118244 () Bool)

(declare-fun res!1682164 () Bool)

(assert (=> b!4118244 (=> (not res!1682164) (not e!2555356))))

(declare-fun isPrefix!4199 (List!44636 List!44636) Bool)

(assert (=> b!4118244 (= res!1682164 (isPrefix!4199 p!2912 input!3238))))

(declare-fun b!4118245 () Bool)

(declare-fun res!1682162 () Bool)

(assert (=> b!4118245 (=> (not res!1682162) (not e!2555365))))

(declare-fun getIndex!612 (List!44637 Rule!14328) Int)

(assert (=> b!4118245 (= res!1682162 (< (getIndex!612 rules!3756 rBis!149) (getIndex!612 rules!3756 r!4008)))))

(declare-fun b!4118246 () Bool)

(declare-fun res!1682172 () Bool)

(assert (=> b!4118246 (=> (not res!1682172) (not e!2555365))))

(assert (=> b!4118246 (= res!1682172 (ruleValid!3072 thiss!25645 r!4008))))

(declare-fun b!4118247 () Bool)

(declare-fun e!2555358 () Bool)

(declare-fun tp!1254951 () Bool)

(assert (=> b!4118247 (= e!2555358 (and e!2555366 tp!1254951))))

(declare-fun b!4118248 () Bool)

(declare-fun e!2555362 () Bool)

(declare-fun tp!1254949 () Bool)

(assert (=> b!4118248 (= e!2555362 (and tp_is_empty!21261 tp!1254949))))

(declare-fun res!1682173 () Bool)

(assert (=> start!390330 (=> (not res!1682173) (not e!2555356))))

(assert (=> start!390330 (= res!1682173 ((_ is Lexer!6851) thiss!25645))))

(assert (=> start!390330 e!2555356))

(assert (=> start!390330 e!2555358))

(assert (=> start!390330 e!2555362))

(assert (=> start!390330 true))

(declare-fun e!2555360 () Bool)

(assert (=> start!390330 e!2555360))

(assert (=> start!390330 e!2555359))

(assert (=> start!390330 e!2555369))

(declare-fun b!4118249 () Bool)

(declare-fun res!1682171 () Bool)

(assert (=> b!4118249 (=> (not res!1682171) (not e!2555356))))

(declare-fun isEmpty!26468 (List!44636) Bool)

(assert (=> b!4118249 (= res!1682171 (not (isEmpty!26468 p!2912)))))

(declare-fun tp!1254955 () Bool)

(declare-fun b!4118250 () Bool)

(assert (=> b!4118250 (= e!2555360 (and tp!1254955 (inv!59093 (tag!8124 r!4008)) (inv!59095 (transformation!7264 r!4008)) e!2555367))))

(declare-fun b!4118251 () Bool)

(declare-fun res!1682169 () Bool)

(assert (=> b!4118251 (=> (not res!1682169) (not e!2555356))))

(assert (=> b!4118251 (= res!1682169 (contains!8936 rules!3756 rBis!149))))

(assert (=> b!4118252 (= e!2555357 (and tp!1254954 tp!1254946))))

(assert (= (and start!390330 res!1682173) b!4118244))

(assert (= (and b!4118244 res!1682164) b!4118237))

(assert (= (and b!4118237 res!1682166) b!4118240))

(assert (= (and b!4118240 res!1682168) b!4118242))

(assert (= (and b!4118242 res!1682165) b!4118251))

(assert (= (and b!4118251 res!1682169) b!4118249))

(assert (= (and b!4118249 res!1682171) b!4118233))

(assert (= (and b!4118233 res!1682167) b!4118235))

(assert (= (and b!4118235 res!1682163) b!4118245))

(assert (= (and b!4118245 res!1682162) b!4118246))

(assert (= (and b!4118246 res!1682172) b!4118239))

(assert (= (and b!4118239 (not res!1682170)) b!4118241))

(assert (= b!4118243 b!4118252))

(assert (= b!4118247 b!4118243))

(assert (= (and start!390330 ((_ is Cons!44513) rules!3756)) b!4118247))

(assert (= (and start!390330 ((_ is Cons!44512) p!2912)) b!4118248))

(assert (= b!4118250 b!4118238))

(assert (= start!390330 b!4118250))

(assert (= (and start!390330 ((_ is Cons!44512) input!3238)) b!4118236))

(assert (= b!4118232 b!4118234))

(assert (= start!390330 b!4118232))

(declare-fun m!4717737 () Bool)

(assert (=> b!4118245 m!4717737))

(declare-fun m!4717739 () Bool)

(assert (=> b!4118245 m!4717739))

(declare-fun m!4717741 () Bool)

(assert (=> b!4118249 m!4717741))

(declare-fun m!4717743 () Bool)

(assert (=> b!4118237 m!4717743))

(declare-fun m!4717745 () Bool)

(assert (=> b!4118240 m!4717745))

(declare-fun m!4717747 () Bool)

(assert (=> b!4118232 m!4717747))

(declare-fun m!4717749 () Bool)

(assert (=> b!4118232 m!4717749))

(declare-fun m!4717751 () Bool)

(assert (=> b!4118235 m!4717751))

(declare-fun m!4717753 () Bool)

(assert (=> b!4118251 m!4717753))

(declare-fun m!4717755 () Bool)

(assert (=> b!4118241 m!4717755))

(declare-fun m!4717757 () Bool)

(assert (=> b!4118241 m!4717757))

(declare-fun m!4717759 () Bool)

(assert (=> b!4118241 m!4717759))

(assert (=> b!4118241 m!4717755))

(declare-fun m!4717761 () Bool)

(assert (=> b!4118241 m!4717761))

(declare-fun m!4717763 () Bool)

(assert (=> b!4118241 m!4717763))

(declare-fun m!4717765 () Bool)

(assert (=> b!4118243 m!4717765))

(declare-fun m!4717767 () Bool)

(assert (=> b!4118243 m!4717767))

(declare-fun m!4717769 () Bool)

(assert (=> b!4118244 m!4717769))

(declare-fun m!4717771 () Bool)

(assert (=> b!4118239 m!4717771))

(declare-fun m!4717773 () Bool)

(assert (=> b!4118239 m!4717773))

(declare-fun m!4717775 () Bool)

(assert (=> b!4118239 m!4717775))

(declare-fun m!4717777 () Bool)

(assert (=> b!4118250 m!4717777))

(declare-fun m!4717779 () Bool)

(assert (=> b!4118250 m!4717779))

(declare-fun m!4717781 () Bool)

(assert (=> b!4118233 m!4717781))

(declare-fun m!4717783 () Bool)

(assert (=> b!4118233 m!4717783))

(declare-fun m!4717785 () Bool)

(assert (=> b!4118233 m!4717785))

(declare-fun m!4717787 () Bool)

(assert (=> b!4118233 m!4717787))

(declare-fun m!4717789 () Bool)

(assert (=> b!4118233 m!4717789))

(declare-fun m!4717791 () Bool)

(assert (=> b!4118233 m!4717791))

(declare-fun m!4717793 () Bool)

(assert (=> b!4118242 m!4717793))

(declare-fun m!4717795 () Bool)

(assert (=> b!4118246 m!4717795))

(check-sat (not b!4118243) b_and!318399 (not b_next!117021) (not b!4118248) b_and!318407 (not b!4118249) (not b_next!117029) (not b_next!117027) (not b_next!117025) tp_is_empty!21261 (not b!4118240) (not b!4118251) (not b!4118239) b_and!318401 (not b!4118233) (not b!4118237) b_and!318403 (not b!4118236) (not b!4118242) b_and!318405 (not b!4118241) (not b_next!117023) (not b!4118244) (not b!4118232) (not b!4118247) (not b_next!117019) (not b!4118235) (not b!4118250) b_and!318397 (not b!4118245) (not b!4118246))
(check-sat b_and!318399 b_and!318401 b_and!318403 (not b_next!117021) b_and!318407 b_and!318405 (not b_next!117023) (not b_next!117019) (not b_next!117029) (not b_next!117027) b_and!318397 (not b_next!117025))

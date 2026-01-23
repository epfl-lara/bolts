; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!392630 () Bool)

(assert start!392630)

(declare-fun b!4134589 () Bool)

(declare-fun b_free!117451 () Bool)

(declare-fun b_next!118155 () Bool)

(assert (=> b!4134589 (= b_free!117451 (not b_next!118155))))

(declare-fun tp!1260293 () Bool)

(declare-fun b_and!320685 () Bool)

(assert (=> b!4134589 (= tp!1260293 b_and!320685)))

(declare-fun b_free!117453 () Bool)

(declare-fun b_next!118157 () Bool)

(assert (=> b!4134589 (= b_free!117453 (not b_next!118157))))

(declare-fun tp!1260300 () Bool)

(declare-fun b_and!320687 () Bool)

(assert (=> b!4134589 (= tp!1260300 b_and!320687)))

(declare-fun b!4134595 () Bool)

(declare-fun b_free!117455 () Bool)

(declare-fun b_next!118159 () Bool)

(assert (=> b!4134595 (= b_free!117455 (not b_next!118159))))

(declare-fun tp!1260299 () Bool)

(declare-fun b_and!320689 () Bool)

(assert (=> b!4134595 (= tp!1260299 b_and!320689)))

(declare-fun b_free!117457 () Bool)

(declare-fun b_next!118161 () Bool)

(assert (=> b!4134595 (= b_free!117457 (not b_next!118161))))

(declare-fun tp!1260298 () Bool)

(declare-fun b_and!320691 () Bool)

(assert (=> b!4134595 (= tp!1260298 b_and!320691)))

(declare-fun b!4134601 () Bool)

(declare-fun b_free!117459 () Bool)

(declare-fun b_next!118163 () Bool)

(assert (=> b!4134601 (= b_free!117459 (not b_next!118163))))

(declare-fun tp!1260294 () Bool)

(declare-fun b_and!320693 () Bool)

(assert (=> b!4134601 (= tp!1260294 b_and!320693)))

(declare-fun b_free!117461 () Bool)

(declare-fun b_next!118165 () Bool)

(assert (=> b!4134601 (= b_free!117461 (not b_next!118165))))

(declare-fun tp!1260295 () Bool)

(declare-fun b_and!320695 () Bool)

(assert (=> b!4134601 (= tp!1260295 b_and!320695)))

(declare-fun b!4134584 () Bool)

(declare-fun res!1690554 () Bool)

(declare-fun e!2565354 () Bool)

(assert (=> b!4134584 (=> res!1690554 e!2565354)))

(declare-datatypes ((List!44916 0))(
  ( (Nil!44792) (Cons!44792 (h!50212 (_ BitVec 16)) (t!341841 List!44916)) )
))
(declare-datatypes ((TokenValue!7572 0))(
  ( (FloatLiteralValue!15144 (text!53449 List!44916)) (TokenValueExt!7571 (__x!27361 Int)) (Broken!37860 (value!229775 List!44916)) (Object!7695) (End!7572) (Def!7572) (Underscore!7572) (Match!7572) (Else!7572) (Error!7572) (Case!7572) (If!7572) (Extends!7572) (Abstract!7572) (Class!7572) (Val!7572) (DelimiterValue!15144 (del!7632 List!44916)) (KeywordValue!7578 (value!229776 List!44916)) (CommentValue!15144 (value!229777 List!44916)) (WhitespaceValue!15144 (value!229778 List!44916)) (IndentationValue!7572 (value!229779 List!44916)) (String!51609) (Int32!7572) (Broken!37861 (value!229780 List!44916)) (Boolean!7573) (Unit!64108) (OperatorValue!7575 (op!7632 List!44916)) (IdentifierValue!15144 (value!229781 List!44916)) (IdentifierValue!15145 (value!229782 List!44916)) (WhitespaceValue!15145 (value!229783 List!44916)) (True!15144) (False!15144) (Broken!37862 (value!229784 List!44916)) (Broken!37863 (value!229785 List!44916)) (True!15145) (RightBrace!7572) (RightBracket!7572) (Colon!7572) (Null!7572) (Comma!7572) (LeftBracket!7572) (False!15145) (LeftBrace!7572) (ImaginaryLiteralValue!7572 (text!53450 List!44916)) (StringLiteralValue!22716 (value!229786 List!44916)) (EOFValue!7572 (value!229787 List!44916)) (IdentValue!7572 (value!229788 List!44916)) (DelimiterValue!15145 (value!229789 List!44916)) (DedentValue!7572 (value!229790 List!44916)) (NewLineValue!7572 (value!229791 List!44916)) (IntegerValue!22716 (value!229792 (_ BitVec 32)) (text!53451 List!44916)) (IntegerValue!22717 (value!229793 Int) (text!53452 List!44916)) (Times!7572) (Or!7572) (Equal!7572) (Minus!7572) (Broken!37864 (value!229794 List!44916)) (And!7572) (Div!7572) (LessEqual!7572) (Mod!7572) (Concat!19819) (Not!7572) (Plus!7572) (SpaceValue!7572 (value!229795 List!44916)) (IntegerValue!22718 (value!229796 Int) (text!53453 List!44916)) (StringLiteralValue!22717 (text!53454 List!44916)) (FloatLiteralValue!15145 (text!53455 List!44916)) (BytesLiteralValue!7572 (value!229797 List!44916)) (CommentValue!15145 (value!229798 List!44916)) (StringLiteralValue!22718 (value!229799 List!44916)) (ErrorTokenValue!7572 (msg!7633 List!44916)) )
))
(declare-datatypes ((C!24680 0))(
  ( (C!24681 (val!14450 Int)) )
))
(declare-datatypes ((List!44917 0))(
  ( (Nil!44793) (Cons!44793 (h!50213 C!24680) (t!341842 List!44917)) )
))
(declare-datatypes ((IArray!27111 0))(
  ( (IArray!27112 (innerList!13613 List!44917)) )
))
(declare-datatypes ((Conc!13553 0))(
  ( (Node!13553 (left!33546 Conc!13553) (right!33876 Conc!13553) (csize!27336 Int) (cheight!13764 Int)) (Leaf!20939 (xs!16859 IArray!27111) (csize!27337 Int)) (Empty!13553) )
))
(declare-datatypes ((BalanceConc!26700 0))(
  ( (BalanceConc!26701 (c!709198 Conc!13553)) )
))
(declare-datatypes ((Regex!12247 0))(
  ( (ElementMatch!12247 (c!709199 C!24680)) (Concat!19820 (regOne!25006 Regex!12247) (regTwo!25006 Regex!12247)) (EmptyExpr!12247) (Star!12247 (reg!12576 Regex!12247)) (EmptyLang!12247) (Union!12247 (regOne!25007 Regex!12247) (regTwo!25007 Regex!12247)) )
))
(declare-datatypes ((String!51610 0))(
  ( (String!51611 (value!229800 String)) )
))
(declare-datatypes ((TokenValueInjection!14572 0))(
  ( (TokenValueInjection!14573 (toValue!10006 Int) (toChars!9865 Int)) )
))
(declare-datatypes ((Rule!14484 0))(
  ( (Rule!14485 (regex!7342 Regex!12247) (tag!8202 String!51610) (isSeparator!7342 Bool) (transformation!7342 TokenValueInjection!14572)) )
))
(declare-datatypes ((Token!13614 0))(
  ( (Token!13615 (value!229801 TokenValue!7572) (rule!10436 Rule!14484) (size!33151 Int) (originalCharacters!7838 List!44917)) )
))
(declare-datatypes ((tuple2!43194 0))(
  ( (tuple2!43195 (_1!24731 Token!13614) (_2!24731 List!44917)) )
))
(declare-datatypes ((Option!9648 0))(
  ( (None!9647) (Some!9647 (v!40269 tuple2!43194)) )
))
(declare-fun lt!1474087 () Option!9648)

(assert (=> b!4134584 (= res!1690554 (not (= lt!1474087 None!9647)))))

(declare-fun b!4134585 () Bool)

(declare-fun e!2565359 () Bool)

(declare-fun e!2565349 () Bool)

(assert (=> b!4134585 (= e!2565359 (not e!2565349))))

(declare-fun res!1690556 () Bool)

(assert (=> b!4134585 (=> res!1690556 e!2565349)))

(declare-datatypes ((List!44918 0))(
  ( (Nil!44794) (Cons!44794 (h!50214 Rule!14484) (t!341843 List!44918)) )
))
(declare-fun rules!3756 () List!44918)

(declare-fun rBis!149 () Rule!14484)

(get-info :version)

(assert (=> b!4134585 (= res!1690556 (or (not ((_ is Cons!44794) rules!3756)) (not (= (h!50214 rules!3756) rBis!149))))))

(declare-datatypes ((LexerInterface!6931 0))(
  ( (LexerInterfaceExt!6928 (__x!27362 Int)) (Lexer!6929) )
))
(declare-fun thiss!25645 () LexerInterface!6931)

(declare-fun r!4008 () Rule!14484)

(declare-datatypes ((Unit!64109 0))(
  ( (Unit!64110) )
))
(declare-fun lt!1474086 () Unit!64109)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2188 (LexerInterface!6931 Rule!14484 List!44918) Unit!64109)

(assert (=> b!4134585 (= lt!1474086 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2188 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3148 (LexerInterface!6931 Rule!14484) Bool)

(assert (=> b!4134585 (ruleValid!3148 thiss!25645 rBis!149)))

(declare-fun lt!1474088 () Unit!64109)

(assert (=> b!4134585 (= lt!1474088 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2188 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4134586 () Bool)

(declare-fun res!1690563 () Bool)

(declare-fun e!2565360 () Bool)

(assert (=> b!4134586 (=> (not res!1690563) (not e!2565360))))

(declare-fun p!2912 () List!44917)

(declare-fun isEmpty!26679 (List!44917) Bool)

(assert (=> b!4134586 (= res!1690563 (not (isEmpty!26679 p!2912)))))

(declare-fun b!4134587 () Bool)

(assert (=> b!4134587 (= e!2565354 true)))

(declare-fun matchR!6076 (Regex!12247 List!44917) Bool)

(assert (=> b!4134587 (not (matchR!6076 (regex!7342 rBis!149) p!2912))))

(declare-fun lt!1474090 () Unit!64109)

(declare-fun input!3238 () List!44917)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!582 (LexerInterface!6931 Rule!14484 List!44917 List!44917) Unit!64109)

(assert (=> b!4134587 (= lt!1474090 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!582 thiss!25645 rBis!149 p!2912 input!3238))))

(declare-fun b!4134588 () Bool)

(declare-fun res!1690562 () Bool)

(assert (=> b!4134588 (=> (not res!1690562) (not e!2565360))))

(declare-fun contains!9022 (List!44918 Rule!14484) Bool)

(assert (=> b!4134588 (= res!1690562 (contains!9022 rules!3756 rBis!149))))

(declare-fun b!4134590 () Bool)

(declare-fun res!1690560 () Bool)

(assert (=> b!4134590 (=> (not res!1690560) (not e!2565360))))

(declare-fun rulesInvariant!6228 (LexerInterface!6931 List!44918) Bool)

(assert (=> b!4134590 (= res!1690560 (rulesInvariant!6228 thiss!25645 rules!3756))))

(declare-fun b!4134591 () Bool)

(declare-fun e!2565345 () Bool)

(declare-fun e!2565348 () Bool)

(declare-fun tp!1260290 () Bool)

(assert (=> b!4134591 (= e!2565345 (and e!2565348 tp!1260290))))

(declare-fun b!4134592 () Bool)

(declare-fun e!2565352 () Bool)

(declare-fun tp_is_empty!21417 () Bool)

(declare-fun tp!1260292 () Bool)

(assert (=> b!4134592 (= e!2565352 (and tp_is_empty!21417 tp!1260292))))

(declare-fun b!4134593 () Bool)

(declare-fun res!1690555 () Bool)

(assert (=> b!4134593 (=> (not res!1690555) (not e!2565360))))

(declare-fun isEmpty!26680 (List!44918) Bool)

(assert (=> b!4134593 (= res!1690555 (not (isEmpty!26680 rules!3756)))))

(declare-fun b!4134594 () Bool)

(declare-fun res!1690550 () Bool)

(assert (=> b!4134594 (=> (not res!1690550) (not e!2565360))))

(declare-fun isPrefix!4277 (List!44917 List!44917) Bool)

(assert (=> b!4134594 (= res!1690550 (isPrefix!4277 p!2912 input!3238))))

(declare-fun e!2565356 () Bool)

(assert (=> b!4134595 (= e!2565356 (and tp!1260299 tp!1260298))))

(declare-fun tp!1260289 () Bool)

(declare-fun e!2565346 () Bool)

(declare-fun b!4134596 () Bool)

(declare-fun inv!59396 (String!51610) Bool)

(declare-fun inv!59398 (TokenValueInjection!14572) Bool)

(assert (=> b!4134596 (= e!2565348 (and tp!1260289 (inv!59396 (tag!8202 (h!50214 rules!3756))) (inv!59398 (transformation!7342 (h!50214 rules!3756))) e!2565346))))

(declare-fun b!4134597 () Bool)

(declare-fun res!1690557 () Bool)

(assert (=> b!4134597 (=> (not res!1690557) (not e!2565359))))

(assert (=> b!4134597 (= res!1690557 (matchR!6076 (regex!7342 r!4008) p!2912))))

(declare-fun b!4134598 () Bool)

(declare-fun e!2565347 () Bool)

(declare-fun tp!1260291 () Bool)

(assert (=> b!4134598 (= e!2565347 (and tp_is_empty!21417 tp!1260291))))

(declare-fun e!2565355 () Bool)

(declare-fun tp!1260296 () Bool)

(declare-fun b!4134599 () Bool)

(assert (=> b!4134599 (= e!2565355 (and tp!1260296 (inv!59396 (tag!8202 rBis!149)) (inv!59398 (transformation!7342 rBis!149)) e!2565356))))

(declare-fun b!4134600 () Bool)

(assert (=> b!4134600 (= e!2565349 e!2565354)))

(declare-fun res!1690553 () Bool)

(assert (=> b!4134600 (=> res!1690553 e!2565354)))

(declare-fun isEmpty!26681 (Option!9648) Bool)

(assert (=> b!4134600 (= res!1690553 (not (isEmpty!26681 lt!1474087)))))

(declare-fun maxPrefixOneRule!3060 (LexerInterface!6931 Rule!14484 List!44917) Option!9648)

(assert (=> b!4134600 (= lt!1474087 (maxPrefixOneRule!3060 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4134600 (not (= rBis!149 r!4008))))

(declare-fun lt!1474091 () Unit!64109)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!40 (LexerInterface!6931 List!44918 Rule!14484 Rule!14484) Unit!64109)

(assert (=> b!4134600 (= lt!1474091 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!40 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6497 (List!44918) List!44918)

(assert (=> b!4134600 (contains!9022 (tail!6497 rules!3756) r!4008)))

(declare-fun lt!1474092 () Unit!64109)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!46 (List!44918 Rule!14484 Rule!14484) Unit!64109)

(assert (=> b!4134600 (= lt!1474092 (lemmaGetIndexBiggerAndHeadEqThenTailContains!46 rules!3756 rBis!149 r!4008))))

(declare-fun e!2565351 () Bool)

(assert (=> b!4134601 (= e!2565351 (and tp!1260294 tp!1260295))))

(declare-fun e!2565358 () Bool)

(declare-fun b!4134602 () Bool)

(declare-fun tp!1260297 () Bool)

(assert (=> b!4134602 (= e!2565358 (and tp!1260297 (inv!59396 (tag!8202 r!4008)) (inv!59398 (transformation!7342 r!4008)) e!2565351))))

(assert (=> b!4134589 (= e!2565346 (and tp!1260293 tp!1260300))))

(declare-fun res!1690552 () Bool)

(assert (=> start!392630 (=> (not res!1690552) (not e!2565360))))

(assert (=> start!392630 (= res!1690552 ((_ is Lexer!6929) thiss!25645))))

(assert (=> start!392630 e!2565360))

(assert (=> start!392630 e!2565345))

(assert (=> start!392630 e!2565347))

(assert (=> start!392630 true))

(assert (=> start!392630 e!2565358))

(assert (=> start!392630 e!2565352))

(assert (=> start!392630 e!2565355))

(declare-fun b!4134603 () Bool)

(declare-fun res!1690551 () Bool)

(assert (=> b!4134603 (=> (not res!1690551) (not e!2565360))))

(assert (=> b!4134603 (= res!1690551 (contains!9022 rules!3756 r!4008))))

(declare-fun b!4134604 () Bool)

(declare-fun res!1690558 () Bool)

(assert (=> b!4134604 (=> (not res!1690558) (not e!2565359))))

(assert (=> b!4134604 (= res!1690558 (ruleValid!3148 thiss!25645 r!4008))))

(declare-fun b!4134605 () Bool)

(assert (=> b!4134605 (= e!2565360 e!2565359)))

(declare-fun res!1690561 () Bool)

(assert (=> b!4134605 (=> (not res!1690561) (not e!2565359))))

(declare-fun lt!1474085 () BalanceConc!26700)

(declare-fun maxPrefix!4121 (LexerInterface!6931 List!44918 List!44917) Option!9648)

(declare-fun apply!10415 (TokenValueInjection!14572 BalanceConc!26700) TokenValue!7572)

(declare-fun size!33152 (List!44917) Int)

(declare-fun getSuffix!2604 (List!44917 List!44917) List!44917)

(assert (=> b!4134605 (= res!1690561 (= (maxPrefix!4121 thiss!25645 rules!3756 input!3238) (Some!9647 (tuple2!43195 (Token!13615 (apply!10415 (transformation!7342 r!4008) lt!1474085) r!4008 (size!33152 p!2912) p!2912) (getSuffix!2604 input!3238 p!2912)))))))

(declare-fun lt!1474089 () Unit!64109)

(declare-fun lemmaSemiInverse!2200 (TokenValueInjection!14572 BalanceConc!26700) Unit!64109)

(assert (=> b!4134605 (= lt!1474089 (lemmaSemiInverse!2200 (transformation!7342 r!4008) lt!1474085))))

(declare-fun seqFromList!5459 (List!44917) BalanceConc!26700)

(assert (=> b!4134605 (= lt!1474085 (seqFromList!5459 p!2912))))

(declare-fun b!4134606 () Bool)

(declare-fun res!1690559 () Bool)

(assert (=> b!4134606 (=> (not res!1690559) (not e!2565359))))

(declare-fun getIndex!688 (List!44918 Rule!14484) Int)

(assert (=> b!4134606 (= res!1690559 (< (getIndex!688 rules!3756 rBis!149) (getIndex!688 rules!3756 r!4008)))))

(assert (= (and start!392630 res!1690552) b!4134594))

(assert (= (and b!4134594 res!1690550) b!4134593))

(assert (= (and b!4134593 res!1690555) b!4134590))

(assert (= (and b!4134590 res!1690560) b!4134603))

(assert (= (and b!4134603 res!1690551) b!4134588))

(assert (= (and b!4134588 res!1690562) b!4134586))

(assert (= (and b!4134586 res!1690563) b!4134605))

(assert (= (and b!4134605 res!1690561) b!4134597))

(assert (= (and b!4134597 res!1690557) b!4134606))

(assert (= (and b!4134606 res!1690559) b!4134604))

(assert (= (and b!4134604 res!1690558) b!4134585))

(assert (= (and b!4134585 (not res!1690556)) b!4134600))

(assert (= (and b!4134600 (not res!1690553)) b!4134584))

(assert (= (and b!4134584 (not res!1690554)) b!4134587))

(assert (= b!4134596 b!4134589))

(assert (= b!4134591 b!4134596))

(assert (= (and start!392630 ((_ is Cons!44794) rules!3756)) b!4134591))

(assert (= (and start!392630 ((_ is Cons!44793) p!2912)) b!4134598))

(assert (= b!4134602 b!4134601))

(assert (= start!392630 b!4134602))

(assert (= (and start!392630 ((_ is Cons!44793) input!3238)) b!4134592))

(assert (= b!4134599 b!4134595))

(assert (= start!392630 b!4134599))

(declare-fun m!4731275 () Bool)

(assert (=> b!4134604 m!4731275))

(declare-fun m!4731277 () Bool)

(assert (=> b!4134603 m!4731277))

(declare-fun m!4731279 () Bool)

(assert (=> b!4134590 m!4731279))

(declare-fun m!4731281 () Bool)

(assert (=> b!4134586 m!4731281))

(declare-fun m!4731283 () Bool)

(assert (=> b!4134597 m!4731283))

(declare-fun m!4731285 () Bool)

(assert (=> b!4134606 m!4731285))

(declare-fun m!4731287 () Bool)

(assert (=> b!4134606 m!4731287))

(declare-fun m!4731289 () Bool)

(assert (=> b!4134599 m!4731289))

(declare-fun m!4731291 () Bool)

(assert (=> b!4134599 m!4731291))

(declare-fun m!4731293 () Bool)

(assert (=> b!4134587 m!4731293))

(declare-fun m!4731295 () Bool)

(assert (=> b!4134587 m!4731295))

(declare-fun m!4731297 () Bool)

(assert (=> b!4134596 m!4731297))

(declare-fun m!4731299 () Bool)

(assert (=> b!4134596 m!4731299))

(declare-fun m!4731301 () Bool)

(assert (=> b!4134588 m!4731301))

(declare-fun m!4731303 () Bool)

(assert (=> b!4134585 m!4731303))

(declare-fun m!4731305 () Bool)

(assert (=> b!4134585 m!4731305))

(declare-fun m!4731307 () Bool)

(assert (=> b!4134585 m!4731307))

(declare-fun m!4731309 () Bool)

(assert (=> b!4134594 m!4731309))

(declare-fun m!4731311 () Bool)

(assert (=> b!4134602 m!4731311))

(declare-fun m!4731313 () Bool)

(assert (=> b!4134602 m!4731313))

(declare-fun m!4731315 () Bool)

(assert (=> b!4134600 m!4731315))

(declare-fun m!4731317 () Bool)

(assert (=> b!4134600 m!4731317))

(declare-fun m!4731319 () Bool)

(assert (=> b!4134600 m!4731319))

(assert (=> b!4134600 m!4731315))

(declare-fun m!4731321 () Bool)

(assert (=> b!4134600 m!4731321))

(declare-fun m!4731323 () Bool)

(assert (=> b!4134600 m!4731323))

(declare-fun m!4731325 () Bool)

(assert (=> b!4134600 m!4731325))

(declare-fun m!4731327 () Bool)

(assert (=> b!4134593 m!4731327))

(declare-fun m!4731329 () Bool)

(assert (=> b!4134605 m!4731329))

(declare-fun m!4731331 () Bool)

(assert (=> b!4134605 m!4731331))

(declare-fun m!4731333 () Bool)

(assert (=> b!4134605 m!4731333))

(declare-fun m!4731335 () Bool)

(assert (=> b!4134605 m!4731335))

(declare-fun m!4731337 () Bool)

(assert (=> b!4134605 m!4731337))

(declare-fun m!4731339 () Bool)

(assert (=> b!4134605 m!4731339))

(check-sat b_and!320695 b_and!320691 (not b!4134597) (not b!4134598) (not b!4134590) (not b_next!118165) (not b!4134587) (not b!4134588) (not b!4134599) (not b_next!118161) (not b!4134602) (not b_next!118159) b_and!320685 (not b!4134600) (not b!4134603) (not b!4134605) (not b!4134585) (not b_next!118157) b_and!320689 (not b!4134604) (not b!4134586) (not b!4134591) (not b_next!118163) (not b!4134592) (not b!4134593) b_and!320693 (not b!4134596) (not b!4134606) tp_is_empty!21417 (not b_next!118155) b_and!320687 (not b!4134594))
(check-sat b_and!320685 b_and!320695 b_and!320691 (not b_next!118165) (not b_next!118157) b_and!320689 (not b_next!118161) (not b_next!118163) b_and!320693 (not b_next!118159) (not b_next!118155) b_and!320687)

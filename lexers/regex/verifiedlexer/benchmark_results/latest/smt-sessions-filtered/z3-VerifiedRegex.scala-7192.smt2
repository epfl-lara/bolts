; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!383424 () Bool)

(assert start!383424)

(declare-fun b!4064853 () Bool)

(declare-fun b_free!113065 () Bool)

(declare-fun b_next!113769 () Bool)

(assert (=> b!4064853 (= b_free!113065 (not b_next!113769))))

(declare-fun tp!1230714 () Bool)

(declare-fun b_and!312467 () Bool)

(assert (=> b!4064853 (= tp!1230714 b_and!312467)))

(declare-fun b_free!113067 () Bool)

(declare-fun b_next!113771 () Bool)

(assert (=> b!4064853 (= b_free!113067 (not b_next!113771))))

(declare-fun tp!1230717 () Bool)

(declare-fun b_and!312469 () Bool)

(assert (=> b!4064853 (= tp!1230717 b_and!312469)))

(declare-fun b!4064835 () Bool)

(declare-fun b_free!113069 () Bool)

(declare-fun b_next!113773 () Bool)

(assert (=> b!4064835 (= b_free!113069 (not b_next!113773))))

(declare-fun tp!1230720 () Bool)

(declare-fun b_and!312471 () Bool)

(assert (=> b!4064835 (= tp!1230720 b_and!312471)))

(declare-fun b_free!113071 () Bool)

(declare-fun b_next!113775 () Bool)

(assert (=> b!4064835 (= b_free!113071 (not b_next!113775))))

(declare-fun tp!1230726 () Bool)

(declare-fun b_and!312473 () Bool)

(assert (=> b!4064835 (= tp!1230726 b_and!312473)))

(declare-fun b!4064826 () Bool)

(declare-datatypes ((Unit!62906 0))(
  ( (Unit!62907) )
))
(declare-fun e!2522489 () Unit!62906)

(declare-fun Unit!62908 () Unit!62906)

(assert (=> b!4064826 (= e!2522489 Unit!62908)))

(declare-datatypes ((C!23940 0))(
  ( (C!23941 (val!14064 Int)) )
))
(declare-datatypes ((List!43541 0))(
  ( (Nil!43417) (Cons!43417 (h!48837 C!23940) (t!336796 List!43541)) )
))
(declare-datatypes ((IArray!26371 0))(
  ( (IArray!26372 (innerList!13243 List!43541)) )
))
(declare-datatypes ((Conc!13183 0))(
  ( (Node!13183 (left!32663 Conc!13183) (right!32993 Conc!13183) (csize!26596 Int) (cheight!13394 Int)) (Leaf!20376 (xs!16489 IArray!26371) (csize!26597 Int)) (Empty!13183) )
))
(declare-datatypes ((BalanceConc!25960 0))(
  ( (BalanceConc!25961 (c!701912 Conc!13183)) )
))
(declare-datatypes ((List!43542 0))(
  ( (Nil!43418) (Cons!43418 (h!48838 (_ BitVec 16)) (t!336797 List!43542)) )
))
(declare-datatypes ((TokenValue!7202 0))(
  ( (FloatLiteralValue!14404 (text!50859 List!43542)) (TokenValueExt!7201 (__x!26621 Int)) (Broken!36010 (value!219310 List!43542)) (Object!7325) (End!7202) (Def!7202) (Underscore!7202) (Match!7202) (Else!7202) (Error!7202) (Case!7202) (If!7202) (Extends!7202) (Abstract!7202) (Class!7202) (Val!7202) (DelimiterValue!14404 (del!7262 List!43542)) (KeywordValue!7208 (value!219311 List!43542)) (CommentValue!14404 (value!219312 List!43542)) (WhitespaceValue!14404 (value!219313 List!43542)) (IndentationValue!7202 (value!219314 List!43542)) (String!49727) (Int32!7202) (Broken!36011 (value!219315 List!43542)) (Boolean!7203) (Unit!62909) (OperatorValue!7205 (op!7262 List!43542)) (IdentifierValue!14404 (value!219316 List!43542)) (IdentifierValue!14405 (value!219317 List!43542)) (WhitespaceValue!14405 (value!219318 List!43542)) (True!14404) (False!14404) (Broken!36012 (value!219319 List!43542)) (Broken!36013 (value!219320 List!43542)) (True!14405) (RightBrace!7202) (RightBracket!7202) (Colon!7202) (Null!7202) (Comma!7202) (LeftBracket!7202) (False!14405) (LeftBrace!7202) (ImaginaryLiteralValue!7202 (text!50860 List!43542)) (StringLiteralValue!21606 (value!219321 List!43542)) (EOFValue!7202 (value!219322 List!43542)) (IdentValue!7202 (value!219323 List!43542)) (DelimiterValue!14405 (value!219324 List!43542)) (DedentValue!7202 (value!219325 List!43542)) (NewLineValue!7202 (value!219326 List!43542)) (IntegerValue!21606 (value!219327 (_ BitVec 32)) (text!50861 List!43542)) (IntegerValue!21607 (value!219328 Int) (text!50862 List!43542)) (Times!7202) (Or!7202) (Equal!7202) (Minus!7202) (Broken!36014 (value!219329 List!43542)) (And!7202) (Div!7202) (LessEqual!7202) (Mod!7202) (Concat!19079) (Not!7202) (Plus!7202) (SpaceValue!7202 (value!219330 List!43542)) (IntegerValue!21608 (value!219331 Int) (text!50863 List!43542)) (StringLiteralValue!21607 (text!50864 List!43542)) (FloatLiteralValue!14405 (text!50865 List!43542)) (BytesLiteralValue!7202 (value!219332 List!43542)) (CommentValue!14405 (value!219333 List!43542)) (StringLiteralValue!21608 (value!219334 List!43542)) (ErrorTokenValue!7202 (msg!7263 List!43542)) )
))
(declare-datatypes ((Regex!11877 0))(
  ( (ElementMatch!11877 (c!701913 C!23940)) (Concat!19080 (regOne!24266 Regex!11877) (regTwo!24266 Regex!11877)) (EmptyExpr!11877) (Star!11877 (reg!12206 Regex!11877)) (EmptyLang!11877) (Union!11877 (regOne!24267 Regex!11877) (regTwo!24267 Regex!11877)) )
))
(declare-datatypes ((String!49728 0))(
  ( (String!49729 (value!219335 String)) )
))
(declare-datatypes ((TokenValueInjection!13832 0))(
  ( (TokenValueInjection!13833 (toValue!9532 Int) (toChars!9391 Int)) )
))
(declare-datatypes ((Rule!13744 0))(
  ( (Rule!13745 (regex!6972 Regex!11877) (tag!7832 String!49728) (isSeparator!6972 Bool) (transformation!6972 TokenValueInjection!13832)) )
))
(declare-datatypes ((Token!13082 0))(
  ( (Token!13083 (value!219336 TokenValue!7202) (rule!10070 Rule!13744) (size!32461 Int) (originalCharacters!7572 List!43541)) )
))
(declare-fun token!484 () Token!13082)

(declare-fun lt!1453446 () Unit!62906)

(declare-fun lt!1453464 () List!43541)

(declare-datatypes ((LexerInterface!6561 0))(
  ( (LexerInterfaceExt!6558 (__x!26622 Int)) (Lexer!6559) )
))
(declare-fun thiss!21717 () LexerInterface!6561)

(declare-datatypes ((tuple2!42474 0))(
  ( (tuple2!42475 (_1!24371 Token!13082) (_2!24371 List!43541)) )
))
(declare-datatypes ((Option!9386 0))(
  ( (None!9385) (Some!9385 (v!39811 tuple2!42474)) )
))
(declare-fun lt!1453466 () Option!9386)

(declare-datatypes ((List!43543 0))(
  ( (Nil!43419) (Cons!43419 (h!48839 Rule!13744) (t!336798 List!43543)) )
))
(declare-fun rules!2999 () List!43543)

(declare-fun lt!1453479 () List!43541)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!300 (LexerInterface!6561 List!43543 Rule!13744 List!43541 List!43541 Rule!13744) Unit!62906)

(assert (=> b!4064826 (= lt!1453446 (lemmaMaxPrefNoSmallerRuleMatches!300 thiss!21717 rules!2999 (rule!10070 token!484) lt!1453479 lt!1453464 (rule!10070 (_1!24371 (v!39811 lt!1453466)))))))

(declare-fun res!1658717 () Bool)

(declare-fun matchR!5830 (Regex!11877 List!43541) Bool)

(assert (=> b!4064826 (= res!1658717 (not (matchR!5830 (regex!6972 (rule!10070 (_1!24371 (v!39811 lt!1453466)))) lt!1453479)))))

(declare-fun e!2522506 () Bool)

(assert (=> b!4064826 (=> (not res!1658717) (not e!2522506))))

(assert (=> b!4064826 e!2522506))

(declare-fun b!4064827 () Bool)

(declare-fun e!2522499 () Unit!62906)

(declare-fun Unit!62910 () Unit!62906)

(assert (=> b!4064827 (= e!2522499 Unit!62910)))

(declare-fun b!4064828 () Bool)

(declare-fun e!2522498 () Bool)

(declare-fun e!2522497 () Bool)

(assert (=> b!4064828 (= e!2522498 e!2522497)))

(declare-fun res!1658698 () Bool)

(assert (=> b!4064828 (=> res!1658698 e!2522497)))

(declare-fun lt!1453458 () List!43541)

(assert (=> b!4064828 (= res!1658698 (not (= lt!1453458 lt!1453464)))))

(declare-fun lt!1453452 () List!43541)

(declare-fun ++!11374 (List!43541 List!43541) List!43541)

(assert (=> b!4064828 (= lt!1453458 (++!11374 lt!1453479 lt!1453452))))

(declare-fun getSuffix!2476 (List!43541 List!43541) List!43541)

(assert (=> b!4064828 (= lt!1453452 (getSuffix!2476 lt!1453464 lt!1453479))))

(declare-fun e!2522480 () Bool)

(assert (=> b!4064828 e!2522480))

(declare-fun res!1658691 () Bool)

(assert (=> b!4064828 (=> (not res!1658691) (not e!2522480))))

(declare-fun isPrefix!4059 (List!43541 List!43541) Bool)

(assert (=> b!4064828 (= res!1658691 (isPrefix!4059 lt!1453464 lt!1453464))))

(declare-fun lt!1453481 () Unit!62906)

(declare-fun lemmaIsPrefixRefl!2626 (List!43541 List!43541) Unit!62906)

(assert (=> b!4064828 (= lt!1453481 (lemmaIsPrefixRefl!2626 lt!1453464 lt!1453464))))

(declare-fun b!4064829 () Bool)

(declare-fun e!2522500 () Bool)

(declare-fun e!2522492 () Bool)

(assert (=> b!4064829 (= e!2522500 e!2522492)))

(declare-fun res!1658699 () Bool)

(assert (=> b!4064829 (=> (not res!1658699) (not e!2522492))))

(declare-fun lt!1453478 () Option!9386)

(declare-fun maxPrefix!3859 (LexerInterface!6561 List!43543 List!43541) Option!9386)

(assert (=> b!4064829 (= res!1658699 (= (maxPrefix!3859 thiss!21717 rules!2999 lt!1453464) lt!1453478))))

(declare-fun lt!1453503 () tuple2!42474)

(assert (=> b!4064829 (= lt!1453478 (Some!9385 lt!1453503))))

(declare-fun suffixResult!105 () List!43541)

(assert (=> b!4064829 (= lt!1453503 (tuple2!42475 token!484 suffixResult!105))))

(declare-fun prefix!494 () List!43541)

(declare-fun suffix!1299 () List!43541)

(assert (=> b!4064829 (= lt!1453464 (++!11374 prefix!494 suffix!1299))))

(declare-fun b!4064830 () Bool)

(declare-fun e!2522505 () Bool)

(declare-fun e!2522494 () Bool)

(assert (=> b!4064830 (= e!2522505 e!2522494)))

(declare-fun res!1658703 () Bool)

(assert (=> b!4064830 (=> res!1658703 e!2522494)))

(declare-fun lt!1453496 () List!43541)

(declare-fun lt!1453469 () List!43541)

(assert (=> b!4064830 (= res!1658703 (not (= lt!1453496 lt!1453469)))))

(declare-fun lt!1453490 () List!43541)

(declare-fun lt!1453489 () List!43541)

(assert (=> b!4064830 (= lt!1453496 (++!11374 lt!1453490 lt!1453489))))

(assert (=> b!4064830 (= lt!1453489 (getSuffix!2476 lt!1453469 lt!1453490))))

(declare-fun b!4064831 () Bool)

(assert (=> b!4064831 (= e!2522506 false)))

(declare-fun b!4064832 () Bool)

(declare-fun e!2522496 () Bool)

(declare-fun tp_is_empty!20725 () Bool)

(declare-fun tp!1230724 () Bool)

(assert (=> b!4064832 (= e!2522496 (and tp_is_empty!20725 tp!1230724))))

(declare-fun b!4064833 () Bool)

(declare-fun res!1658702 () Bool)

(declare-fun e!2522484 () Bool)

(assert (=> b!4064833 (=> res!1658702 e!2522484)))

(declare-fun isEmpty!25912 (List!43541) Bool)

(assert (=> b!4064833 (= res!1658702 (isEmpty!25912 lt!1453490))))

(declare-fun b!4064834 () Bool)

(declare-fun e!2522510 () Bool)

(assert (=> b!4064834 (= e!2522497 e!2522510)))

(declare-fun res!1658713 () Bool)

(assert (=> b!4064834 (=> res!1658713 e!2522510)))

(get-info :version)

(assert (=> b!4064834 (= res!1658713 (not ((_ is Some!9385) lt!1453466)))))

(assert (=> b!4064834 (= lt!1453466 (maxPrefix!3859 thiss!21717 rules!2999 lt!1453469))))

(declare-fun lt!1453462 () Token!13082)

(assert (=> b!4064834 (and (= suffixResult!105 lt!1453452) (= lt!1453503 (tuple2!42475 lt!1453462 lt!1453452)))))

(declare-fun lt!1453506 () Unit!62906)

(declare-fun lemmaSamePrefixThenSameSuffix!2220 (List!43541 List!43541 List!43541 List!43541 List!43541) Unit!62906)

(assert (=> b!4064834 (= lt!1453506 (lemmaSamePrefixThenSameSuffix!2220 lt!1453479 suffixResult!105 lt!1453479 lt!1453452 lt!1453464))))

(assert (=> b!4064834 (isPrefix!4059 lt!1453479 lt!1453458)))

(declare-fun lt!1453461 () Unit!62906)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2894 (List!43541 List!43541) Unit!62906)

(assert (=> b!4064834 (= lt!1453461 (lemmaConcatTwoListThenFirstIsPrefix!2894 lt!1453479 lt!1453452))))

(declare-fun e!2522485 () Bool)

(assert (=> b!4064835 (= e!2522485 (and tp!1230720 tp!1230726))))

(declare-fun e!2522504 () Bool)

(declare-fun tp!1230715 () Bool)

(declare-fun b!4064836 () Bool)

(declare-fun e!2522491 () Bool)

(declare-fun inv!21 (TokenValue!7202) Bool)

(assert (=> b!4064836 (= e!2522491 (and (inv!21 (value!219336 token!484)) e!2522504 tp!1230715))))

(declare-fun b!4064837 () Bool)

(declare-fun e!2522495 () Bool)

(declare-fun tp!1230716 () Bool)

(assert (=> b!4064837 (= e!2522495 (and tp_is_empty!20725 tp!1230716))))

(declare-fun b!4064838 () Bool)

(declare-fun res!1658689 () Bool)

(assert (=> b!4064838 (=> (not res!1658689) (not e!2522480))))

(declare-fun lt!1453504 () TokenValue!7202)

(assert (=> b!4064838 (= res!1658689 (= (value!219336 token!484) lt!1453504))))

(declare-fun b!4064839 () Bool)

(declare-fun e!2522507 () Bool)

(assert (=> b!4064839 (= e!2522494 e!2522507)))

(declare-fun res!1658693 () Bool)

(assert (=> b!4064839 (=> res!1658693 e!2522507)))

(declare-fun lt!1453498 () Int)

(declare-fun lt!1453505 () Int)

(assert (=> b!4064839 (= res!1658693 (not (= lt!1453498 lt!1453505)))))

(declare-fun lt!1453456 () Unit!62906)

(declare-fun e!2522476 () Unit!62906)

(assert (=> b!4064839 (= lt!1453456 e!2522476)))

(declare-fun c!701909 () Bool)

(assert (=> b!4064839 (= c!701909 (< lt!1453505 lt!1453498))))

(declare-fun lt!1453451 () Unit!62906)

(assert (=> b!4064839 (= lt!1453451 e!2522499)))

(declare-fun c!701910 () Bool)

(assert (=> b!4064839 (= c!701910 (> lt!1453505 lt!1453498))))

(assert (=> b!4064839 (= (_2!24371 (v!39811 lt!1453466)) lt!1453489)))

(declare-fun lt!1453470 () Unit!62906)

(assert (=> b!4064839 (= lt!1453470 (lemmaSamePrefixThenSameSuffix!2220 lt!1453490 (_2!24371 (v!39811 lt!1453466)) lt!1453490 lt!1453489 lt!1453469))))

(assert (=> b!4064839 (isPrefix!4059 lt!1453490 lt!1453496)))

(declare-fun lt!1453465 () Unit!62906)

(assert (=> b!4064839 (= lt!1453465 (lemmaConcatTwoListThenFirstIsPrefix!2894 lt!1453490 lt!1453489))))

(declare-fun b!4064840 () Bool)

(declare-fun res!1658692 () Bool)

(declare-fun e!2522512 () Bool)

(assert (=> b!4064840 (=> (not res!1658692) (not e!2522512))))

(declare-fun rulesInvariant!5904 (LexerInterface!6561 List!43543) Bool)

(assert (=> b!4064840 (= res!1658692 (rulesInvariant!5904 thiss!21717 rules!2999))))

(declare-fun b!4064841 () Bool)

(declare-fun res!1658707 () Bool)

(assert (=> b!4064841 (=> res!1658707 e!2522484)))

(declare-fun contains!8640 (List!43543 Rule!13744) Bool)

(assert (=> b!4064841 (= res!1658707 (not (contains!8640 rules!2999 (rule!10070 (_1!24371 (v!39811 lt!1453466))))))))

(declare-fun b!4064842 () Bool)

(declare-fun Unit!62911 () Unit!62906)

(assert (=> b!4064842 (= e!2522489 Unit!62911)))

(declare-fun b!4064843 () Bool)

(declare-fun res!1658687 () Bool)

(assert (=> b!4064843 (=> (not res!1658687) (not e!2522480))))

(declare-fun size!32462 (List!43541) Int)

(assert (=> b!4064843 (= res!1658687 (= (size!32461 token!484) (size!32462 (originalCharacters!7572 token!484))))))

(declare-fun b!4064844 () Bool)

(declare-fun Unit!62912 () Unit!62906)

(assert (=> b!4064844 (= e!2522476 Unit!62912)))

(declare-fun lt!1453467 () Unit!62906)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!498 (LexerInterface!6561 List!43543 Rule!13744 List!43541 List!43541 List!43541 Rule!13744) Unit!62906)

(assert (=> b!4064844 (= lt!1453467 (lemmaMaxPrefixOutputsMaxPrefix!498 thiss!21717 rules!2999 (rule!10070 (_1!24371 (v!39811 lt!1453466))) lt!1453490 lt!1453469 lt!1453479 (rule!10070 token!484)))))

(assert (=> b!4064844 false))

(declare-fun tp!1230721 () Bool)

(declare-fun b!4064845 () Bool)

(declare-fun inv!58041 (String!49728) Bool)

(declare-fun inv!58044 (TokenValueInjection!13832) Bool)

(assert (=> b!4064845 (= e!2522504 (and tp!1230721 (inv!58041 (tag!7832 (rule!10070 token!484))) (inv!58044 (transformation!6972 (rule!10070 token!484))) e!2522485))))

(declare-fun b!4064846 () Bool)

(declare-fun e!2522502 () Bool)

(declare-fun tp!1230723 () Bool)

(assert (=> b!4064846 (= e!2522502 (and tp_is_empty!20725 tp!1230723))))

(declare-fun b!4064847 () Bool)

(declare-fun e!2522509 () Bool)

(assert (=> b!4064847 (= e!2522492 (not e!2522509))))

(declare-fun res!1658715 () Bool)

(assert (=> b!4064847 (=> res!1658715 e!2522509)))

(declare-fun lt!1453447 () List!43541)

(assert (=> b!4064847 (= res!1658715 (not (= lt!1453447 lt!1453464)))))

(assert (=> b!4064847 (= lt!1453447 (++!11374 lt!1453479 suffixResult!105))))

(declare-fun lt!1453492 () Unit!62906)

(declare-fun lemmaInv!1181 (TokenValueInjection!13832) Unit!62906)

(assert (=> b!4064847 (= lt!1453492 (lemmaInv!1181 (transformation!6972 (rule!10070 token!484))))))

(declare-fun ruleValid!2902 (LexerInterface!6561 Rule!13744) Bool)

(assert (=> b!4064847 (ruleValid!2902 thiss!21717 (rule!10070 token!484))))

(declare-fun lt!1453448 () Unit!62906)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1972 (LexerInterface!6561 Rule!13744 List!43543) Unit!62906)

(assert (=> b!4064847 (= lt!1453448 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1972 thiss!21717 (rule!10070 token!484) rules!2999))))

(declare-fun b!4064848 () Bool)

(declare-fun e!2522511 () Bool)

(declare-fun e!2522477 () Bool)

(declare-fun tp!1230725 () Bool)

(assert (=> b!4064848 (= e!2522511 (and e!2522477 tp!1230725))))

(declare-fun b!4064849 () Bool)

(declare-fun e!2522488 () Bool)

(declare-fun e!2522493 () Bool)

(assert (=> b!4064849 (= e!2522488 e!2522493)))

(declare-fun res!1658709 () Bool)

(assert (=> b!4064849 (=> res!1658709 e!2522493)))

(declare-fun lt!1453497 () List!43541)

(assert (=> b!4064849 (= res!1658709 (not (= lt!1453497 suffix!1299)))))

(declare-fun newSuffix!27 () List!43541)

(declare-fun lt!1453480 () List!43541)

(assert (=> b!4064849 (= lt!1453497 (++!11374 newSuffix!27 lt!1453480))))

(assert (=> b!4064849 (= lt!1453480 (getSuffix!2476 suffix!1299 newSuffix!27))))

(declare-fun lt!1453444 () Token!13082)

(declare-fun lt!1453442 () Int)

(declare-fun b!4064850 () Bool)

(declare-fun lt!1453493 () Int)

(assert (=> b!4064850 (= e!2522484 (or (not (= lt!1453466 (Some!9385 (tuple2!42475 lt!1453444 lt!1453489)))) (< lt!1453493 lt!1453442)))))

(declare-fun lt!1453463 () Unit!62906)

(declare-fun lt!1453472 () BalanceConc!25960)

(declare-fun lemmaSemiInverse!1943 (TokenValueInjection!13832 BalanceConc!25960) Unit!62906)

(assert (=> b!4064850 (= lt!1453463 (lemmaSemiInverse!1943 (transformation!6972 (rule!10070 (_1!24371 (v!39811 lt!1453466)))) lt!1453472))))

(declare-fun b!4064851 () Bool)

(declare-fun res!1658684 () Bool)

(assert (=> b!4064851 (=> (not res!1658684) (not e!2522512))))

(declare-fun isEmpty!25913 (List!43543) Bool)

(assert (=> b!4064851 (= res!1658684 (not (isEmpty!25913 rules!2999)))))

(declare-fun b!4064852 () Bool)

(declare-fun e!2522475 () Bool)

(declare-fun e!2522487 () Bool)

(assert (=> b!4064852 (= e!2522475 e!2522487)))

(declare-fun res!1658701 () Bool)

(assert (=> b!4064852 (=> res!1658701 e!2522487)))

(declare-fun lt!1453476 () List!43541)

(assert (=> b!4064852 (= res!1658701 (not (= lt!1453476 prefix!494)))))

(declare-fun lt!1453500 () List!43541)

(assert (=> b!4064852 (= lt!1453476 (++!11374 lt!1453479 lt!1453500))))

(assert (=> b!4064852 (= lt!1453500 (getSuffix!2476 prefix!494 lt!1453479))))

(assert (=> b!4064852 (isPrefix!4059 lt!1453479 prefix!494)))

(declare-fun lt!1453453 () Unit!62906)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!623 (List!43541 List!43541 List!43541) Unit!62906)

(assert (=> b!4064852 (= lt!1453453 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!623 prefix!494 lt!1453479 lt!1453464))))

(declare-fun e!2522483 () Bool)

(assert (=> b!4064853 (= e!2522483 (and tp!1230714 tp!1230717))))

(declare-fun b!4064854 () Bool)

(declare-fun res!1658686 () Bool)

(assert (=> b!4064854 (=> res!1658686 e!2522505)))

(declare-fun lt!1453494 () List!43541)

(assert (=> b!4064854 (= res!1658686 (not (= lt!1453494 lt!1453469)))))

(declare-fun b!4064855 () Bool)

(declare-fun e!2522503 () Bool)

(assert (=> b!4064855 (= e!2522503 false)))

(declare-fun b!4064856 () Bool)

(declare-fun e!2522479 () Bool)

(assert (=> b!4064856 (= e!2522493 e!2522479)))

(declare-fun res!1658704 () Bool)

(assert (=> b!4064856 (=> res!1658704 e!2522479)))

(declare-fun lt!1453455 () List!43541)

(assert (=> b!4064856 (= res!1658704 (not (= lt!1453455 lt!1453464)))))

(assert (=> b!4064856 (= lt!1453455 (++!11374 prefix!494 lt!1453497))))

(assert (=> b!4064856 (= lt!1453455 (++!11374 lt!1453469 lt!1453480))))

(declare-fun lt!1453473 () Unit!62906)

(declare-fun lemmaConcatAssociativity!2676 (List!43541 List!43541 List!43541) Unit!62906)

(assert (=> b!4064856 (= lt!1453473 (lemmaConcatAssociativity!2676 prefix!494 newSuffix!27 lt!1453480))))

(declare-fun b!4064857 () Bool)

(assert (=> b!4064857 (= e!2522509 e!2522475)))

(declare-fun res!1658700 () Bool)

(assert (=> b!4064857 (=> res!1658700 e!2522475)))

(assert (=> b!4064857 (= res!1658700 (not (isPrefix!4059 lt!1453479 lt!1453464)))))

(assert (=> b!4064857 (isPrefix!4059 prefix!494 lt!1453464)))

(declare-fun lt!1453475 () Unit!62906)

(assert (=> b!4064857 (= lt!1453475 (lemmaConcatTwoListThenFirstIsPrefix!2894 prefix!494 suffix!1299))))

(assert (=> b!4064857 (isPrefix!4059 lt!1453479 lt!1453447)))

(declare-fun lt!1453509 () Unit!62906)

(assert (=> b!4064857 (= lt!1453509 (lemmaConcatTwoListThenFirstIsPrefix!2894 lt!1453479 suffixResult!105))))

(declare-fun b!4064858 () Bool)

(declare-fun e!2522481 () Bool)

(declare-fun e!2522482 () Bool)

(assert (=> b!4064858 (= e!2522481 e!2522482)))

(declare-fun res!1658716 () Bool)

(assert (=> b!4064858 (=> res!1658716 e!2522482)))

(declare-fun lt!1453501 () Option!9386)

(assert (=> b!4064858 (= res!1658716 (not (= lt!1453501 lt!1453478)))))

(assert (=> b!4064858 (= lt!1453501 (Some!9385 (tuple2!42475 lt!1453462 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2871 (LexerInterface!6561 Rule!13744 List!43541) Option!9386)

(assert (=> b!4064858 (= lt!1453501 (maxPrefixOneRule!2871 thiss!21717 (rule!10070 token!484) lt!1453464))))

(assert (=> b!4064858 (= lt!1453462 (Token!13083 lt!1453504 (rule!10070 token!484) lt!1453498 lt!1453479))))

(declare-fun apply!10161 (TokenValueInjection!13832 BalanceConc!25960) TokenValue!7202)

(declare-fun seqFromList!5189 (List!43541) BalanceConc!25960)

(assert (=> b!4064858 (= lt!1453504 (apply!10161 (transformation!6972 (rule!10070 token!484)) (seqFromList!5189 lt!1453479)))))

(declare-fun lt!1453502 () Unit!62906)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1677 (LexerInterface!6561 List!43543 List!43541 List!43541 List!43541 Rule!13744) Unit!62906)

(assert (=> b!4064858 (= lt!1453502 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1677 thiss!21717 rules!2999 lt!1453479 lt!1453464 suffixResult!105 (rule!10070 token!484)))))

(declare-fun lt!1453486 () List!43541)

(assert (=> b!4064858 (= lt!1453486 suffixResult!105)))

(declare-fun lt!1453483 () Unit!62906)

(assert (=> b!4064858 (= lt!1453483 (lemmaSamePrefixThenSameSuffix!2220 lt!1453479 lt!1453486 lt!1453479 suffixResult!105 lt!1453464))))

(declare-fun lt!1453482 () List!43541)

(assert (=> b!4064858 (isPrefix!4059 lt!1453479 lt!1453482)))

(declare-fun lt!1453477 () Unit!62906)

(assert (=> b!4064858 (= lt!1453477 (lemmaConcatTwoListThenFirstIsPrefix!2894 lt!1453479 lt!1453486))))

(declare-fun b!4064859 () Bool)

(declare-fun res!1658696 () Bool)

(assert (=> b!4064859 (=> res!1658696 e!2522484)))

(assert (=> b!4064859 (= res!1658696 (not (matchR!5830 (regex!6972 (rule!10070 (_1!24371 (v!39811 lt!1453466)))) lt!1453490)))))

(declare-fun b!4064861 () Bool)

(declare-fun e!2522478 () Bool)

(assert (=> b!4064861 (= e!2522512 e!2522478)))

(declare-fun res!1658714 () Bool)

(assert (=> b!4064861 (=> (not res!1658714) (not e!2522478))))

(declare-fun lt!1453445 () Int)

(assert (=> b!4064861 (= res!1658714 (>= lt!1453445 lt!1453498))))

(assert (=> b!4064861 (= lt!1453498 (size!32462 lt!1453479))))

(assert (=> b!4064861 (= lt!1453445 (size!32462 prefix!494))))

(declare-fun list!16186 (BalanceConc!25960) List!43541)

(declare-fun charsOf!4788 (Token!13082) BalanceConc!25960)

(assert (=> b!4064861 (= lt!1453479 (list!16186 (charsOf!4788 token!484)))))

(declare-fun res!1658688 () Bool)

(assert (=> start!383424 (=> (not res!1658688) (not e!2522512))))

(assert (=> start!383424 (= res!1658688 ((_ is Lexer!6559) thiss!21717))))

(assert (=> start!383424 e!2522512))

(assert (=> start!383424 e!2522495))

(declare-fun inv!58045 (Token!13082) Bool)

(assert (=> start!383424 (and (inv!58045 token!484) e!2522491)))

(declare-fun e!2522490 () Bool)

(assert (=> start!383424 e!2522490))

(assert (=> start!383424 e!2522496))

(assert (=> start!383424 e!2522502))

(assert (=> start!383424 true))

(assert (=> start!383424 e!2522511))

(declare-fun e!2522486 () Bool)

(assert (=> start!383424 e!2522486))

(declare-fun b!4064860 () Bool)

(assert (=> b!4064860 (= e!2522479 e!2522505)))

(declare-fun res!1658711 () Bool)

(assert (=> b!4064860 (=> res!1658711 e!2522505)))

(assert (=> b!4064860 (= res!1658711 (not (isPrefix!4059 lt!1453490 lt!1453464)))))

(assert (=> b!4064860 (isPrefix!4059 lt!1453490 lt!1453455)))

(declare-fun lt!1453484 () Unit!62906)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!852 (List!43541 List!43541 List!43541) Unit!62906)

(assert (=> b!4064860 (= lt!1453484 (lemmaPrefixStaysPrefixWhenAddingToSuffix!852 lt!1453490 lt!1453469 lt!1453480))))

(declare-fun b!4064862 () Bool)

(declare-fun res!1658694 () Bool)

(assert (=> b!4064862 (=> (not res!1658694) (not e!2522512))))

(assert (=> b!4064862 (= res!1658694 (>= (size!32462 suffix!1299) (size!32462 newSuffix!27)))))

(declare-fun b!4064863 () Bool)

(assert (=> b!4064863 (= e!2522507 e!2522484)))

(declare-fun res!1658690 () Bool)

(assert (=> b!4064863 (=> res!1658690 e!2522484)))

(assert (=> b!4064863 (= res!1658690 (<= lt!1453442 lt!1453493))))

(declare-fun lt!1453499 () Unit!62906)

(assert (=> b!4064863 (= lt!1453499 e!2522489)))

(declare-fun c!701911 () Bool)

(assert (=> b!4064863 (= c!701911 (< lt!1453442 lt!1453493))))

(declare-fun getIndex!584 (List!43543 Rule!13744) Int)

(assert (=> b!4064863 (= lt!1453493 (getIndex!584 rules!2999 (rule!10070 token!484)))))

(assert (=> b!4064863 (= lt!1453442 (getIndex!584 rules!2999 (rule!10070 (_1!24371 (v!39811 lt!1453466)))))))

(declare-fun newSuffixResult!27 () List!43541)

(assert (=> b!4064863 (= (_2!24371 (v!39811 lt!1453466)) newSuffixResult!27)))

(declare-fun lt!1453508 () Unit!62906)

(assert (=> b!4064863 (= lt!1453508 (lemmaSamePrefixThenSameSuffix!2220 lt!1453490 (_2!24371 (v!39811 lt!1453466)) lt!1453479 newSuffixResult!27 lt!1453469))))

(assert (=> b!4064863 (= lt!1453490 lt!1453479)))

(declare-fun lt!1453474 () Unit!62906)

(declare-fun lemmaIsPrefixSameLengthThenSameList!949 (List!43541 List!43541 List!43541) Unit!62906)

(assert (=> b!4064863 (= lt!1453474 (lemmaIsPrefixSameLengthThenSameList!949 lt!1453490 lt!1453479 lt!1453469))))

(declare-fun b!4064864 () Bool)

(declare-fun tp!1230719 () Bool)

(assert (=> b!4064864 (= e!2522477 (and tp!1230719 (inv!58041 (tag!7832 (h!48839 rules!2999))) (inv!58044 (transformation!6972 (h!48839 rules!2999))) e!2522483))))

(declare-fun b!4064865 () Bool)

(declare-fun res!1658706 () Bool)

(assert (=> b!4064865 (=> res!1658706 e!2522484)))

(assert (=> b!4064865 (= res!1658706 (not (contains!8640 rules!2999 (rule!10070 token!484))))))

(declare-fun b!4064866 () Bool)

(declare-fun res!1658695 () Bool)

(assert (=> b!4064866 (=> (not res!1658695) (not e!2522512))))

(assert (=> b!4064866 (= res!1658695 (isPrefix!4059 newSuffix!27 suffix!1299))))

(declare-fun b!4064867 () Bool)

(assert (=> b!4064867 (= e!2522510 e!2522488)))

(declare-fun res!1658712 () Bool)

(assert (=> b!4064867 (=> res!1658712 e!2522488)))

(declare-fun lt!1453450 () Option!9386)

(assert (=> b!4064867 (= res!1658712 (not (= lt!1453450 (Some!9385 (v!39811 lt!1453466)))))))

(assert (=> b!4064867 (isPrefix!4059 lt!1453490 (++!11374 lt!1453490 newSuffixResult!27))))

(declare-fun lt!1453507 () Unit!62906)

(assert (=> b!4064867 (= lt!1453507 (lemmaConcatTwoListThenFirstIsPrefix!2894 lt!1453490 newSuffixResult!27))))

(assert (=> b!4064867 (isPrefix!4059 lt!1453490 lt!1453494)))

(assert (=> b!4064867 (= lt!1453494 (++!11374 lt!1453490 (_2!24371 (v!39811 lt!1453466))))))

(declare-fun lt!1453460 () Unit!62906)

(assert (=> b!4064867 (= lt!1453460 (lemmaConcatTwoListThenFirstIsPrefix!2894 lt!1453490 (_2!24371 (v!39811 lt!1453466))))))

(assert (=> b!4064867 (= lt!1453450 (Some!9385 (tuple2!42475 lt!1453444 (_2!24371 (v!39811 lt!1453466)))))))

(assert (=> b!4064867 (= lt!1453450 (maxPrefixOneRule!2871 thiss!21717 (rule!10070 (_1!24371 (v!39811 lt!1453466))) lt!1453469))))

(declare-fun lt!1453487 () TokenValue!7202)

(assert (=> b!4064867 (= lt!1453444 (Token!13083 lt!1453487 (rule!10070 (_1!24371 (v!39811 lt!1453466))) lt!1453505 lt!1453490))))

(assert (=> b!4064867 (= lt!1453505 (size!32462 lt!1453490))))

(assert (=> b!4064867 (= lt!1453487 (apply!10161 (transformation!6972 (rule!10070 (_1!24371 (v!39811 lt!1453466)))) lt!1453472))))

(assert (=> b!4064867 (= lt!1453472 (seqFromList!5189 lt!1453490))))

(declare-fun lt!1453454 () Unit!62906)

(assert (=> b!4064867 (= lt!1453454 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1677 thiss!21717 rules!2999 lt!1453490 lt!1453469 (_2!24371 (v!39811 lt!1453466)) (rule!10070 (_1!24371 (v!39811 lt!1453466)))))))

(assert (=> b!4064867 (= lt!1453490 (list!16186 (charsOf!4788 (_1!24371 (v!39811 lt!1453466)))))))

(declare-fun lt!1453449 () Unit!62906)

(assert (=> b!4064867 (= lt!1453449 (lemmaInv!1181 (transformation!6972 (rule!10070 (_1!24371 (v!39811 lt!1453466))))))))

(assert (=> b!4064867 (ruleValid!2902 thiss!21717 (rule!10070 (_1!24371 (v!39811 lt!1453466))))))

(declare-fun lt!1453485 () Unit!62906)

(assert (=> b!4064867 (= lt!1453485 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1972 thiss!21717 (rule!10070 (_1!24371 (v!39811 lt!1453466))) rules!2999))))

(declare-fun lt!1453459 () Unit!62906)

(declare-fun lemmaCharactersSize!1491 (Token!13082) Unit!62906)

(assert (=> b!4064867 (= lt!1453459 (lemmaCharactersSize!1491 token!484))))

(declare-fun lt!1453457 () Unit!62906)

(assert (=> b!4064867 (= lt!1453457 (lemmaCharactersSize!1491 (_1!24371 (v!39811 lt!1453466))))))

(declare-fun b!4064868 () Bool)

(assert (=> b!4064868 (= e!2522482 e!2522498)))

(declare-fun res!1658705 () Bool)

(assert (=> b!4064868 (=> res!1658705 e!2522498)))

(assert (=> b!4064868 (= res!1658705 (not (matchR!5830 (regex!6972 (rule!10070 token!484)) lt!1453479)))))

(assert (=> b!4064868 (isPrefix!4059 lt!1453479 lt!1453469)))

(declare-fun lt!1453491 () Unit!62906)

(assert (=> b!4064868 (= lt!1453491 (lemmaPrefixStaysPrefixWhenAddingToSuffix!852 lt!1453479 prefix!494 newSuffix!27))))

(declare-fun lt!1453495 () Unit!62906)

(assert (=> b!4064868 (= lt!1453495 (lemmaPrefixStaysPrefixWhenAddingToSuffix!852 lt!1453479 prefix!494 suffix!1299))))

(declare-fun b!4064869 () Bool)

(declare-fun Unit!62913 () Unit!62906)

(assert (=> b!4064869 (= e!2522476 Unit!62913)))

(declare-fun b!4064870 () Bool)

(assert (=> b!4064870 (= e!2522480 (and (= (size!32461 token!484) lt!1453498) (= (originalCharacters!7572 token!484) lt!1453479)))))

(declare-fun b!4064871 () Bool)

(assert (=> b!4064871 (= e!2522478 e!2522500)))

(declare-fun res!1658710 () Bool)

(assert (=> b!4064871 (=> (not res!1658710) (not e!2522500))))

(declare-fun lt!1453468 () List!43541)

(assert (=> b!4064871 (= res!1658710 (= lt!1453468 lt!1453469))))

(assert (=> b!4064871 (= lt!1453469 (++!11374 prefix!494 newSuffix!27))))

(assert (=> b!4064871 (= lt!1453468 (++!11374 lt!1453479 newSuffixResult!27))))

(declare-fun b!4064872 () Bool)

(assert (=> b!4064872 (= e!2522487 e!2522481)))

(declare-fun res!1658697 () Bool)

(assert (=> b!4064872 (=> res!1658697 e!2522481)))

(declare-fun lt!1453443 () List!43541)

(assert (=> b!4064872 (= res!1658697 (or (not (= lt!1453464 lt!1453443)) (not (= lt!1453464 lt!1453482))))))

(assert (=> b!4064872 (= lt!1453443 lt!1453482)))

(assert (=> b!4064872 (= lt!1453482 (++!11374 lt!1453479 lt!1453486))))

(assert (=> b!4064872 (= lt!1453443 (++!11374 lt!1453476 suffix!1299))))

(assert (=> b!4064872 (= lt!1453486 (++!11374 lt!1453500 suffix!1299))))

(declare-fun lt!1453471 () Unit!62906)

(assert (=> b!4064872 (= lt!1453471 (lemmaConcatAssociativity!2676 lt!1453479 lt!1453500 suffix!1299))))

(declare-fun b!4064873 () Bool)

(declare-fun res!1658685 () Bool)

(assert (=> b!4064873 (=> res!1658685 e!2522507)))

(assert (=> b!4064873 (= res!1658685 (not (isPrefix!4059 lt!1453490 lt!1453469)))))

(declare-fun b!4064874 () Bool)

(declare-fun Unit!62914 () Unit!62906)

(assert (=> b!4064874 (= e!2522499 Unit!62914)))

(declare-fun lt!1453488 () Unit!62906)

(assert (=> b!4064874 (= lt!1453488 (lemmaMaxPrefixOutputsMaxPrefix!498 thiss!21717 rules!2999 (rule!10070 token!484) lt!1453479 lt!1453464 lt!1453490 (rule!10070 (_1!24371 (v!39811 lt!1453466)))))))

(declare-fun res!1658708 () Bool)

(assert (=> b!4064874 (= res!1658708 (not (matchR!5830 (regex!6972 (rule!10070 (_1!24371 (v!39811 lt!1453466)))) lt!1453490)))))

(assert (=> b!4064874 (=> (not res!1658708) (not e!2522503))))

(assert (=> b!4064874 e!2522503))

(declare-fun b!4064875 () Bool)

(declare-fun tp!1230718 () Bool)

(assert (=> b!4064875 (= e!2522486 (and tp_is_empty!20725 tp!1230718))))

(declare-fun b!4064876 () Bool)

(declare-fun tp!1230722 () Bool)

(assert (=> b!4064876 (= e!2522490 (and tp_is_empty!20725 tp!1230722))))

(assert (= (and start!383424 res!1658688) b!4064851))

(assert (= (and b!4064851 res!1658684) b!4064840))

(assert (= (and b!4064840 res!1658692) b!4064862))

(assert (= (and b!4064862 res!1658694) b!4064866))

(assert (= (and b!4064866 res!1658695) b!4064861))

(assert (= (and b!4064861 res!1658714) b!4064871))

(assert (= (and b!4064871 res!1658710) b!4064829))

(assert (= (and b!4064829 res!1658699) b!4064847))

(assert (= (and b!4064847 (not res!1658715)) b!4064857))

(assert (= (and b!4064857 (not res!1658700)) b!4064852))

(assert (= (and b!4064852 (not res!1658701)) b!4064872))

(assert (= (and b!4064872 (not res!1658697)) b!4064858))

(assert (= (and b!4064858 (not res!1658716)) b!4064868))

(assert (= (and b!4064868 (not res!1658705)) b!4064828))

(assert (= (and b!4064828 res!1658691) b!4064838))

(assert (= (and b!4064838 res!1658689) b!4064843))

(assert (= (and b!4064843 res!1658687) b!4064870))

(assert (= (and b!4064828 (not res!1658698)) b!4064834))

(assert (= (and b!4064834 (not res!1658713)) b!4064867))

(assert (= (and b!4064867 (not res!1658712)) b!4064849))

(assert (= (and b!4064849 (not res!1658709)) b!4064856))

(assert (= (and b!4064856 (not res!1658704)) b!4064860))

(assert (= (and b!4064860 (not res!1658711)) b!4064854))

(assert (= (and b!4064854 (not res!1658686)) b!4064830))

(assert (= (and b!4064830 (not res!1658703)) b!4064839))

(assert (= (and b!4064839 c!701910) b!4064874))

(assert (= (and b!4064839 (not c!701910)) b!4064827))

(assert (= (and b!4064874 res!1658708) b!4064855))

(assert (= (and b!4064839 c!701909) b!4064844))

(assert (= (and b!4064839 (not c!701909)) b!4064869))

(assert (= (and b!4064839 (not res!1658693)) b!4064873))

(assert (= (and b!4064873 (not res!1658685)) b!4064863))

(assert (= (and b!4064863 c!701911) b!4064826))

(assert (= (and b!4064863 (not c!701911)) b!4064842))

(assert (= (and b!4064826 res!1658717) b!4064831))

(assert (= (and b!4064863 (not res!1658690)) b!4064859))

(assert (= (and b!4064859 (not res!1658696)) b!4064841))

(assert (= (and b!4064841 (not res!1658707)) b!4064865))

(assert (= (and b!4064865 (not res!1658706)) b!4064833))

(assert (= (and b!4064833 (not res!1658702)) b!4064850))

(assert (= (and start!383424 ((_ is Cons!43417) prefix!494)) b!4064837))

(assert (= b!4064845 b!4064835))

(assert (= b!4064836 b!4064845))

(assert (= start!383424 b!4064836))

(assert (= (and start!383424 ((_ is Cons!43417) suffixResult!105)) b!4064876))

(assert (= (and start!383424 ((_ is Cons!43417) suffix!1299)) b!4064832))

(assert (= (and start!383424 ((_ is Cons!43417) newSuffix!27)) b!4064846))

(assert (= b!4064864 b!4064853))

(assert (= b!4064848 b!4064864))

(assert (= (and start!383424 ((_ is Cons!43419) rules!2999)) b!4064848))

(assert (= (and start!383424 ((_ is Cons!43417) newSuffixResult!27)) b!4064875))

(declare-fun m!4672111 () Bool)

(assert (=> b!4064851 m!4672111))

(declare-fun m!4672113 () Bool)

(assert (=> b!4064849 m!4672113))

(declare-fun m!4672115 () Bool)

(assert (=> b!4064849 m!4672115))

(declare-fun m!4672117 () Bool)

(assert (=> b!4064856 m!4672117))

(declare-fun m!4672119 () Bool)

(assert (=> b!4064856 m!4672119))

(declare-fun m!4672121 () Bool)

(assert (=> b!4064856 m!4672121))

(declare-fun m!4672123 () Bool)

(assert (=> b!4064865 m!4672123))

(declare-fun m!4672125 () Bool)

(assert (=> b!4064844 m!4672125))

(declare-fun m!4672127 () Bool)

(assert (=> b!4064862 m!4672127))

(declare-fun m!4672129 () Bool)

(assert (=> b!4064862 m!4672129))

(declare-fun m!4672131 () Bool)

(assert (=> b!4064858 m!4672131))

(declare-fun m!4672133 () Bool)

(assert (=> b!4064858 m!4672133))

(declare-fun m!4672135 () Bool)

(assert (=> b!4064858 m!4672135))

(assert (=> b!4064858 m!4672135))

(declare-fun m!4672137 () Bool)

(assert (=> b!4064858 m!4672137))

(declare-fun m!4672139 () Bool)

(assert (=> b!4064858 m!4672139))

(declare-fun m!4672141 () Bool)

(assert (=> b!4064858 m!4672141))

(declare-fun m!4672143 () Bool)

(assert (=> b!4064858 m!4672143))

(declare-fun m!4672145 () Bool)

(assert (=> b!4064843 m!4672145))

(declare-fun m!4672147 () Bool)

(assert (=> b!4064866 m!4672147))

(declare-fun m!4672149 () Bool)

(assert (=> start!383424 m!4672149))

(declare-fun m!4672151 () Bool)

(assert (=> b!4064826 m!4672151))

(declare-fun m!4672153 () Bool)

(assert (=> b!4064826 m!4672153))

(declare-fun m!4672155 () Bool)

(assert (=> b!4064872 m!4672155))

(declare-fun m!4672157 () Bool)

(assert (=> b!4064872 m!4672157))

(declare-fun m!4672159 () Bool)

(assert (=> b!4064872 m!4672159))

(declare-fun m!4672161 () Bool)

(assert (=> b!4064872 m!4672161))

(declare-fun m!4672163 () Bool)

(assert (=> b!4064859 m!4672163))

(declare-fun m!4672165 () Bool)

(assert (=> b!4064845 m!4672165))

(declare-fun m!4672167 () Bool)

(assert (=> b!4064845 m!4672167))

(declare-fun m!4672169 () Bool)

(assert (=> b!4064874 m!4672169))

(assert (=> b!4064874 m!4672163))

(declare-fun m!4672171 () Bool)

(assert (=> b!4064868 m!4672171))

(declare-fun m!4672173 () Bool)

(assert (=> b!4064868 m!4672173))

(declare-fun m!4672175 () Bool)

(assert (=> b!4064868 m!4672175))

(declare-fun m!4672177 () Bool)

(assert (=> b!4064868 m!4672177))

(declare-fun m!4672179 () Bool)

(assert (=> b!4064863 m!4672179))

(declare-fun m!4672181 () Bool)

(assert (=> b!4064863 m!4672181))

(declare-fun m!4672183 () Bool)

(assert (=> b!4064863 m!4672183))

(declare-fun m!4672185 () Bool)

(assert (=> b!4064863 m!4672185))

(declare-fun m!4672187 () Bool)

(assert (=> b!4064841 m!4672187))

(declare-fun m!4672189 () Bool)

(assert (=> b!4064850 m!4672189))

(declare-fun m!4672191 () Bool)

(assert (=> b!4064840 m!4672191))

(declare-fun m!4672193 () Bool)

(assert (=> b!4064830 m!4672193))

(declare-fun m!4672195 () Bool)

(assert (=> b!4064830 m!4672195))

(declare-fun m!4672197 () Bool)

(assert (=> b!4064871 m!4672197))

(declare-fun m!4672199 () Bool)

(assert (=> b!4064871 m!4672199))

(declare-fun m!4672201 () Bool)

(assert (=> b!4064829 m!4672201))

(declare-fun m!4672203 () Bool)

(assert (=> b!4064829 m!4672203))

(declare-fun m!4672205 () Bool)

(assert (=> b!4064857 m!4672205))

(declare-fun m!4672207 () Bool)

(assert (=> b!4064857 m!4672207))

(declare-fun m!4672209 () Bool)

(assert (=> b!4064857 m!4672209))

(declare-fun m!4672211 () Bool)

(assert (=> b!4064857 m!4672211))

(declare-fun m!4672213 () Bool)

(assert (=> b!4064857 m!4672213))

(declare-fun m!4672215 () Bool)

(assert (=> b!4064860 m!4672215))

(declare-fun m!4672217 () Bool)

(assert (=> b!4064860 m!4672217))

(declare-fun m!4672219 () Bool)

(assert (=> b!4064860 m!4672219))

(declare-fun m!4672221 () Bool)

(assert (=> b!4064836 m!4672221))

(declare-fun m!4672223 () Bool)

(assert (=> b!4064828 m!4672223))

(declare-fun m!4672225 () Bool)

(assert (=> b!4064828 m!4672225))

(declare-fun m!4672227 () Bool)

(assert (=> b!4064828 m!4672227))

(declare-fun m!4672229 () Bool)

(assert (=> b!4064828 m!4672229))

(declare-fun m!4672231 () Bool)

(assert (=> b!4064847 m!4672231))

(declare-fun m!4672233 () Bool)

(assert (=> b!4064847 m!4672233))

(declare-fun m!4672235 () Bool)

(assert (=> b!4064847 m!4672235))

(declare-fun m!4672237 () Bool)

(assert (=> b!4064847 m!4672237))

(declare-fun m!4672239 () Bool)

(assert (=> b!4064839 m!4672239))

(declare-fun m!4672241 () Bool)

(assert (=> b!4064839 m!4672241))

(declare-fun m!4672243 () Bool)

(assert (=> b!4064839 m!4672243))

(declare-fun m!4672245 () Bool)

(assert (=> b!4064861 m!4672245))

(declare-fun m!4672247 () Bool)

(assert (=> b!4064861 m!4672247))

(declare-fun m!4672249 () Bool)

(assert (=> b!4064861 m!4672249))

(assert (=> b!4064861 m!4672249))

(declare-fun m!4672251 () Bool)

(assert (=> b!4064861 m!4672251))

(declare-fun m!4672253 () Bool)

(assert (=> b!4064852 m!4672253))

(declare-fun m!4672255 () Bool)

(assert (=> b!4064852 m!4672255))

(declare-fun m!4672257 () Bool)

(assert (=> b!4064852 m!4672257))

(declare-fun m!4672259 () Bool)

(assert (=> b!4064852 m!4672259))

(declare-fun m!4672261 () Bool)

(assert (=> b!4064873 m!4672261))

(declare-fun m!4672263 () Bool)

(assert (=> b!4064867 m!4672263))

(declare-fun m!4672265 () Bool)

(assert (=> b!4064867 m!4672265))

(declare-fun m!4672267 () Bool)

(assert (=> b!4064867 m!4672267))

(declare-fun m!4672269 () Bool)

(assert (=> b!4064867 m!4672269))

(declare-fun m!4672271 () Bool)

(assert (=> b!4064867 m!4672271))

(declare-fun m!4672273 () Bool)

(assert (=> b!4064867 m!4672273))

(declare-fun m!4672275 () Bool)

(assert (=> b!4064867 m!4672275))

(declare-fun m!4672277 () Bool)

(assert (=> b!4064867 m!4672277))

(declare-fun m!4672279 () Bool)

(assert (=> b!4064867 m!4672279))

(declare-fun m!4672281 () Bool)

(assert (=> b!4064867 m!4672281))

(declare-fun m!4672283 () Bool)

(assert (=> b!4064867 m!4672283))

(declare-fun m!4672285 () Bool)

(assert (=> b!4064867 m!4672285))

(assert (=> b!4064867 m!4672273))

(declare-fun m!4672287 () Bool)

(assert (=> b!4064867 m!4672287))

(declare-fun m!4672289 () Bool)

(assert (=> b!4064867 m!4672289))

(declare-fun m!4672291 () Bool)

(assert (=> b!4064867 m!4672291))

(declare-fun m!4672293 () Bool)

(assert (=> b!4064867 m!4672293))

(declare-fun m!4672295 () Bool)

(assert (=> b!4064867 m!4672295))

(assert (=> b!4064867 m!4672271))

(declare-fun m!4672297 () Bool)

(assert (=> b!4064867 m!4672297))

(declare-fun m!4672299 () Bool)

(assert (=> b!4064864 m!4672299))

(declare-fun m!4672301 () Bool)

(assert (=> b!4064864 m!4672301))

(declare-fun m!4672303 () Bool)

(assert (=> b!4064833 m!4672303))

(declare-fun m!4672305 () Bool)

(assert (=> b!4064834 m!4672305))

(declare-fun m!4672307 () Bool)

(assert (=> b!4064834 m!4672307))

(declare-fun m!4672309 () Bool)

(assert (=> b!4064834 m!4672309))

(declare-fun m!4672311 () Bool)

(assert (=> b!4064834 m!4672311))

(check-sat tp_is_empty!20725 (not b!4064851) (not b!4064850) (not b!4064863) (not b!4064873) (not b!4064852) (not b!4064840) (not b!4064859) (not b!4064874) (not b!4064858) (not b!4064837) (not start!383424) b_and!312467 (not b!4064866) (not b_next!113771) (not b!4064856) (not b!4064833) (not b!4064860) (not b!4064868) (not b_next!113775) (not b!4064841) (not b!4064830) (not b!4064828) b_and!312471 (not b!4064839) (not b!4064862) (not b!4064872) (not b!4064865) b_and!312469 (not b!4064861) (not b!4064846) (not b!4064876) (not b!4064847) (not b!4064832) (not b!4064857) (not b!4064848) (not b!4064849) (not b_next!113773) (not b!4064845) (not b!4064844) (not b_next!113769) (not b!4064826) (not b!4064829) (not b!4064834) (not b!4064864) (not b!4064843) (not b!4064875) (not b!4064836) (not b!4064871) (not b!4064867) b_and!312473)
(check-sat (not b_next!113771) (not b_next!113775) b_and!312471 b_and!312469 (not b_next!113773) (not b_next!113769) b_and!312467 b_and!312473)

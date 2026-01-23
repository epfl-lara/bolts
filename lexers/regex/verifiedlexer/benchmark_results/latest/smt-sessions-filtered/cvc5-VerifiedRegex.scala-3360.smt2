; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!190490 () Bool)

(assert start!190490)

(declare-fun b!1899570 () Bool)

(declare-fun b_free!53261 () Bool)

(declare-fun b_next!53965 () Bool)

(assert (=> b!1899570 (= b_free!53261 (not b_next!53965))))

(declare-fun tp!542394 () Bool)

(declare-fun b_and!146943 () Bool)

(assert (=> b!1899570 (= tp!542394 b_and!146943)))

(declare-fun b_free!53263 () Bool)

(declare-fun b_next!53967 () Bool)

(assert (=> b!1899570 (= b_free!53263 (not b_next!53967))))

(declare-fun tp!542389 () Bool)

(declare-fun b_and!146945 () Bool)

(assert (=> b!1899570 (= tp!542389 b_and!146945)))

(declare-fun b!1899565 () Bool)

(declare-fun b_free!53265 () Bool)

(declare-fun b_next!53969 () Bool)

(assert (=> b!1899565 (= b_free!53265 (not b_next!53969))))

(declare-fun tp!542396 () Bool)

(declare-fun b_and!146947 () Bool)

(assert (=> b!1899565 (= tp!542396 b_and!146947)))

(declare-fun b_free!53267 () Bool)

(declare-fun b_next!53971 () Bool)

(assert (=> b!1899565 (= b_free!53267 (not b_next!53971))))

(declare-fun tp!542398 () Bool)

(declare-fun b_and!146949 () Bool)

(assert (=> b!1899565 (= tp!542398 b_and!146949)))

(declare-fun b!1899568 () Bool)

(declare-fun b_free!53269 () Bool)

(declare-fun b_next!53973 () Bool)

(assert (=> b!1899568 (= b_free!53269 (not b_next!53973))))

(declare-fun tp!542391 () Bool)

(declare-fun b_and!146951 () Bool)

(assert (=> b!1899568 (= tp!542391 b_and!146951)))

(declare-fun b_free!53271 () Bool)

(declare-fun b_next!53975 () Bool)

(assert (=> b!1899568 (= b_free!53271 (not b_next!53975))))

(declare-fun tp!542397 () Bool)

(declare-fun b_and!146953 () Bool)

(assert (=> b!1899568 (= tp!542397 b_and!146953)))

(declare-fun e!1213066 () Bool)

(declare-fun b!1899547 () Bool)

(declare-fun tp!542393 () Bool)

(declare-datatypes ((List!21432 0))(
  ( (Nil!21350) (Cons!21350 (h!26751 (_ BitVec 16)) (t!176703 List!21432)) )
))
(declare-datatypes ((TokenValue!3931 0))(
  ( (FloatLiteralValue!7862 (text!27962 List!21432)) (TokenValueExt!3930 (__x!13360 Int)) (Broken!19655 (value!119724 List!21432)) (Object!4012) (End!3931) (Def!3931) (Underscore!3931) (Match!3931) (Else!3931) (Error!3931) (Case!3931) (If!3931) (Extends!3931) (Abstract!3931) (Class!3931) (Val!3931) (DelimiterValue!7862 (del!3991 List!21432)) (KeywordValue!3937 (value!119725 List!21432)) (CommentValue!7862 (value!119726 List!21432)) (WhitespaceValue!7862 (value!119727 List!21432)) (IndentationValue!3931 (value!119728 List!21432)) (String!24774) (Int32!3931) (Broken!19656 (value!119729 List!21432)) (Boolean!3932) (Unit!35684) (OperatorValue!3934 (op!3991 List!21432)) (IdentifierValue!7862 (value!119730 List!21432)) (IdentifierValue!7863 (value!119731 List!21432)) (WhitespaceValue!7863 (value!119732 List!21432)) (True!7862) (False!7862) (Broken!19657 (value!119733 List!21432)) (Broken!19658 (value!119734 List!21432)) (True!7863) (RightBrace!3931) (RightBracket!3931) (Colon!3931) (Null!3931) (Comma!3931) (LeftBracket!3931) (False!7863) (LeftBrace!3931) (ImaginaryLiteralValue!3931 (text!27963 List!21432)) (StringLiteralValue!11793 (value!119735 List!21432)) (EOFValue!3931 (value!119736 List!21432)) (IdentValue!3931 (value!119737 List!21432)) (DelimiterValue!7863 (value!119738 List!21432)) (DedentValue!3931 (value!119739 List!21432)) (NewLineValue!3931 (value!119740 List!21432)) (IntegerValue!11793 (value!119741 (_ BitVec 32)) (text!27964 List!21432)) (IntegerValue!11794 (value!119742 Int) (text!27965 List!21432)) (Times!3931) (Or!3931) (Equal!3931) (Minus!3931) (Broken!19659 (value!119743 List!21432)) (And!3931) (Div!3931) (LessEqual!3931) (Mod!3931) (Concat!9151) (Not!3931) (Plus!3931) (SpaceValue!3931 (value!119744 List!21432)) (IntegerValue!11795 (value!119745 Int) (text!27966 List!21432)) (StringLiteralValue!11794 (text!27967 List!21432)) (FloatLiteralValue!7863 (text!27968 List!21432)) (BytesLiteralValue!3931 (value!119746 List!21432)) (CommentValue!7863 (value!119747 List!21432)) (StringLiteralValue!11795 (value!119748 List!21432)) (ErrorTokenValue!3931 (msg!3992 List!21432)) )
))
(declare-datatypes ((C!10586 0))(
  ( (C!10587 (val!6245 Int)) )
))
(declare-datatypes ((List!21433 0))(
  ( (Nil!21351) (Cons!21351 (h!26752 C!10586) (t!176704 List!21433)) )
))
(declare-datatypes ((IArray!14217 0))(
  ( (IArray!14218 (innerList!7166 List!21433)) )
))
(declare-datatypes ((Conc!7106 0))(
  ( (Node!7106 (left!17106 Conc!7106) (right!17436 Conc!7106) (csize!14442 Int) (cheight!7317 Int)) (Leaf!10467 (xs!10000 IArray!14217) (csize!14443 Int)) (Empty!7106) )
))
(declare-datatypes ((BalanceConc!14028 0))(
  ( (BalanceConc!14029 (c!309616 Conc!7106)) )
))
(declare-datatypes ((TokenValueInjection!7446 0))(
  ( (TokenValueInjection!7447 (toValue!5412 Int) (toChars!5271 Int)) )
))
(declare-datatypes ((Regex!5220 0))(
  ( (ElementMatch!5220 (c!309617 C!10586)) (Concat!9152 (regOne!10952 Regex!5220) (regTwo!10952 Regex!5220)) (EmptyExpr!5220) (Star!5220 (reg!5549 Regex!5220)) (EmptyLang!5220) (Union!5220 (regOne!10953 Regex!5220) (regTwo!10953 Regex!5220)) )
))
(declare-datatypes ((String!24775 0))(
  ( (String!24776 (value!119749 String)) )
))
(declare-datatypes ((Rule!7390 0))(
  ( (Rule!7391 (regex!3795 Regex!5220) (tag!4219 String!24775) (isSeparator!3795 Bool) (transformation!3795 TokenValueInjection!7446)) )
))
(declare-datatypes ((List!21434 0))(
  ( (Nil!21352) (Cons!21352 (h!26753 Rule!7390) (t!176705 List!21434)) )
))
(declare-fun rules!3198 () List!21434)

(declare-fun e!1213064 () Bool)

(declare-fun inv!28449 (String!24775) Bool)

(declare-fun inv!28452 (TokenValueInjection!7446) Bool)

(assert (=> b!1899547 (= e!1213064 (and tp!542393 (inv!28449 (tag!4219 (h!26753 rules!3198))) (inv!28452 (transformation!3795 (h!26753 rules!3198))) e!1213066))))

(declare-fun b!1899548 () Bool)

(declare-fun e!1213060 () Bool)

(declare-datatypes ((Token!7142 0))(
  ( (Token!7143 (value!119750 TokenValue!3931) (rule!5988 Rule!7390) (size!16885 Int) (originalCharacters!4602 List!21433)) )
))
(declare-datatypes ((tuple2!20126 0))(
  ( (tuple2!20127 (_1!11532 Token!7142) (_2!11532 List!21433)) )
))
(declare-datatypes ((Option!4295 0))(
  ( (None!4294) (Some!4294 (v!26323 tuple2!20126)) )
))
(declare-fun lt!726367 () Option!4295)

(declare-datatypes ((List!21435 0))(
  ( (Nil!21353) (Cons!21353 (h!26754 Token!7142) (t!176706 List!21435)) )
))
(declare-fun tokens!598 () List!21435)

(declare-fun get!6600 (Option!4295) tuple2!20126)

(assert (=> b!1899548 (= e!1213060 (= (_1!11532 (get!6600 lt!726367)) (h!26754 tokens!598)))))

(declare-fun e!1213065 () Bool)

(declare-fun tp!542395 () Bool)

(declare-fun b!1899549 () Bool)

(declare-fun e!1213067 () Bool)

(assert (=> b!1899549 (= e!1213065 (and tp!542395 (inv!28449 (tag!4219 (rule!5988 (h!26754 tokens!598)))) (inv!28452 (transformation!3795 (rule!5988 (h!26754 tokens!598)))) e!1213067))))

(declare-fun b!1899550 () Bool)

(declare-fun e!1213054 () Bool)

(declare-fun separatorToken!354 () Token!7142)

(declare-fun tp!542390 () Bool)

(declare-fun e!1213068 () Bool)

(assert (=> b!1899550 (= e!1213068 (and tp!542390 (inv!28449 (tag!4219 (rule!5988 separatorToken!354))) (inv!28452 (transformation!3795 (rule!5988 separatorToken!354))) e!1213054))))

(declare-fun b!1899552 () Bool)

(declare-fun e!1213061 () Bool)

(declare-fun e!1213049 () Bool)

(declare-fun tp!542387 () Bool)

(declare-fun inv!28453 (Token!7142) Bool)

(assert (=> b!1899552 (= e!1213061 (and (inv!28453 (h!26754 tokens!598)) e!1213049 tp!542387))))

(declare-fun b!1899553 () Bool)

(declare-fun e!1213057 () Bool)

(assert (=> b!1899553 (= e!1213057 (not true))))

(declare-datatypes ((LexerInterface!3408 0))(
  ( (LexerInterfaceExt!3405 (__x!13361 Int)) (Lexer!3406) )
))
(declare-fun thiss!23328 () LexerInterface!3408)

(declare-fun lt!726369 () List!21433)

(declare-fun lt!726372 () Option!4295)

(declare-fun maxPrefix!1854 (LexerInterface!3408 List!21434 List!21433) Option!4295)

(declare-fun ++!5738 (List!21433 List!21433) List!21433)

(declare-fun printWithSeparatorTokenWhenNeededList!451 (LexerInterface!3408 List!21434 List!21435 Token!7142) List!21433)

(assert (=> b!1899553 (= lt!726372 (maxPrefix!1854 thiss!23328 rules!3198 (++!5738 lt!726369 (printWithSeparatorTokenWhenNeededList!451 thiss!23328 rules!3198 (t!176706 tokens!598) separatorToken!354))))))

(declare-fun e!1213052 () Bool)

(assert (=> b!1899553 e!1213052))

(declare-fun res!847997 () Bool)

(assert (=> b!1899553 (=> (not res!847997) (not e!1213052))))

(declare-datatypes ((Option!4296 0))(
  ( (None!4295) (Some!4295 (v!26324 Rule!7390)) )
))
(declare-fun lt!726377 () Option!4296)

(declare-fun isDefined!3593 (Option!4296) Bool)

(assert (=> b!1899553 (= res!847997 (isDefined!3593 lt!726377))))

(declare-fun getRuleFromTag!638 (LexerInterface!3408 List!21434 String!24775) Option!4296)

(assert (=> b!1899553 (= lt!726377 (getRuleFromTag!638 thiss!23328 rules!3198 (tag!4219 (rule!5988 (h!26754 tokens!598)))))))

(declare-datatypes ((Unit!35685 0))(
  ( (Unit!35686) )
))
(declare-fun lt!726368 () Unit!35685)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!638 (LexerInterface!3408 List!21434 List!21433 Token!7142) Unit!35685)

(assert (=> b!1899553 (= lt!726368 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!638 thiss!23328 rules!3198 lt!726369 (h!26754 tokens!598)))))

(assert (=> b!1899553 e!1213060))

(declare-fun res!847991 () Bool)

(assert (=> b!1899553 (=> (not res!847991) (not e!1213060))))

(declare-fun isDefined!3594 (Option!4295) Bool)

(assert (=> b!1899553 (= res!847991 (isDefined!3594 lt!726367))))

(assert (=> b!1899553 (= lt!726367 (maxPrefix!1854 thiss!23328 rules!3198 lt!726369))))

(declare-fun lt!726375 () BalanceConc!14028)

(declare-fun list!8683 (BalanceConc!14028) List!21433)

(assert (=> b!1899553 (= lt!726369 (list!8683 lt!726375))))

(declare-fun e!1213059 () Bool)

(assert (=> b!1899553 e!1213059))

(declare-fun res!847992 () Bool)

(assert (=> b!1899553 (=> (not res!847992) (not e!1213059))))

(declare-fun lt!726370 () Option!4296)

(assert (=> b!1899553 (= res!847992 (isDefined!3593 lt!726370))))

(assert (=> b!1899553 (= lt!726370 (getRuleFromTag!638 thiss!23328 rules!3198 (tag!4219 (rule!5988 separatorToken!354))))))

(declare-fun lt!726374 () Unit!35685)

(declare-fun lt!726378 () List!21433)

(assert (=> b!1899553 (= lt!726374 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!638 thiss!23328 rules!3198 lt!726378 separatorToken!354))))

(declare-fun charsOf!2351 (Token!7142) BalanceConc!14028)

(assert (=> b!1899553 (= lt!726378 (list!8683 (charsOf!2351 separatorToken!354)))))

(declare-fun lt!726371 () Unit!35685)

(declare-fun lemmaEqSameImage!503 (TokenValueInjection!7446 BalanceConc!14028 BalanceConc!14028) Unit!35685)

(declare-fun seqFromList!2667 (List!21433) BalanceConc!14028)

(assert (=> b!1899553 (= lt!726371 (lemmaEqSameImage!503 (transformation!3795 (rule!5988 (h!26754 tokens!598))) lt!726375 (seqFromList!2667 (originalCharacters!4602 (h!26754 tokens!598)))))))

(declare-fun lt!726379 () Unit!35685)

(declare-fun lemmaSemiInverse!774 (TokenValueInjection!7446 BalanceConc!14028) Unit!35685)

(assert (=> b!1899553 (= lt!726379 (lemmaSemiInverse!774 (transformation!3795 (rule!5988 (h!26754 tokens!598))) lt!726375))))

(assert (=> b!1899553 (= lt!726375 (charsOf!2351 (h!26754 tokens!598)))))

(declare-fun b!1899554 () Bool)

(declare-fun e!1213063 () Bool)

(declare-fun tp!542388 () Bool)

(assert (=> b!1899554 (= e!1213063 (and e!1213064 tp!542388))))

(declare-fun b!1899555 () Bool)

(declare-fun res!847985 () Bool)

(assert (=> b!1899555 (=> (not res!847985) (not e!1213057))))

(assert (=> b!1899555 (= res!847985 (isSeparator!3795 (rule!5988 separatorToken!354)))))

(declare-fun b!1899556 () Bool)

(declare-fun res!847995 () Bool)

(assert (=> b!1899556 (=> (not res!847995) (not e!1213057))))

(declare-fun rulesProduceEachTokenIndividuallyList!1139 (LexerInterface!3408 List!21434 List!21435) Bool)

(assert (=> b!1899556 (= res!847995 (rulesProduceEachTokenIndividuallyList!1139 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1899557 () Bool)

(declare-fun res!847986 () Bool)

(assert (=> b!1899557 (=> (not res!847986) (not e!1213057))))

(declare-fun rulesProduceIndividualToken!1580 (LexerInterface!3408 List!21434 Token!7142) Bool)

(assert (=> b!1899557 (= res!847986 (rulesProduceIndividualToken!1580 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun res!847996 () Bool)

(assert (=> start!190490 (=> (not res!847996) (not e!1213057))))

(assert (=> start!190490 (= res!847996 (is-Lexer!3406 thiss!23328))))

(assert (=> start!190490 e!1213057))

(assert (=> start!190490 true))

(assert (=> start!190490 e!1213063))

(assert (=> start!190490 e!1213061))

(declare-fun e!1213053 () Bool)

(assert (=> start!190490 (and (inv!28453 separatorToken!354) e!1213053)))

(declare-fun b!1899551 () Bool)

(declare-fun e!1213062 () Bool)

(declare-fun lt!726376 () Rule!7390)

(assert (=> b!1899551 (= e!1213062 (= (rule!5988 (h!26754 tokens!598)) lt!726376))))

(declare-fun b!1899558 () Bool)

(declare-fun res!847988 () Bool)

(assert (=> b!1899558 (=> (not res!847988) (not e!1213057))))

(declare-fun isEmpty!13101 (List!21434) Bool)

(assert (=> b!1899558 (= res!847988 (not (isEmpty!13101 rules!3198)))))

(declare-fun b!1899559 () Bool)

(assert (=> b!1899559 (= e!1213052 e!1213062)))

(declare-fun res!847987 () Bool)

(assert (=> b!1899559 (=> (not res!847987) (not e!1213062))))

(declare-fun matchR!2506 (Regex!5220 List!21433) Bool)

(assert (=> b!1899559 (= res!847987 (matchR!2506 (regex!3795 lt!726376) lt!726369))))

(declare-fun get!6601 (Option!4296) Rule!7390)

(assert (=> b!1899559 (= lt!726376 (get!6601 lt!726377))))

(declare-fun b!1899560 () Bool)

(declare-fun e!1213058 () Bool)

(assert (=> b!1899560 (= e!1213059 e!1213058)))

(declare-fun res!847998 () Bool)

(assert (=> b!1899560 (=> (not res!847998) (not e!1213058))))

(declare-fun lt!726373 () Rule!7390)

(assert (=> b!1899560 (= res!847998 (matchR!2506 (regex!3795 lt!726373) lt!726378))))

(assert (=> b!1899560 (= lt!726373 (get!6601 lt!726370))))

(declare-fun b!1899561 () Bool)

(assert (=> b!1899561 (= e!1213058 (= (rule!5988 separatorToken!354) lt!726373))))

(declare-fun b!1899562 () Bool)

(declare-fun res!847993 () Bool)

(assert (=> b!1899562 (=> (not res!847993) (not e!1213057))))

(declare-fun rulesInvariant!3015 (LexerInterface!3408 List!21434) Bool)

(assert (=> b!1899562 (= res!847993 (rulesInvariant!3015 thiss!23328 rules!3198))))

(declare-fun tp!542399 () Bool)

(declare-fun b!1899563 () Bool)

(declare-fun inv!21 (TokenValue!3931) Bool)

(assert (=> b!1899563 (= e!1213049 (and (inv!21 (value!119750 (h!26754 tokens!598))) e!1213065 tp!542399))))

(declare-fun b!1899564 () Bool)

(declare-fun res!847994 () Bool)

(assert (=> b!1899564 (=> (not res!847994) (not e!1213057))))

(assert (=> b!1899564 (= res!847994 (is-Cons!21353 tokens!598))))

(assert (=> b!1899565 (= e!1213067 (and tp!542396 tp!542398))))

(declare-fun b!1899566 () Bool)

(declare-fun tp!542392 () Bool)

(assert (=> b!1899566 (= e!1213053 (and (inv!21 (value!119750 separatorToken!354)) e!1213068 tp!542392))))

(declare-fun b!1899567 () Bool)

(declare-fun res!847990 () Bool)

(assert (=> b!1899567 (=> (not res!847990) (not e!1213057))))

(declare-fun sepAndNonSepRulesDisjointChars!893 (List!21434 List!21434) Bool)

(assert (=> b!1899567 (= res!847990 (sepAndNonSepRulesDisjointChars!893 rules!3198 rules!3198))))

(assert (=> b!1899568 (= e!1213054 (and tp!542391 tp!542397))))

(declare-fun b!1899569 () Bool)

(declare-fun res!847989 () Bool)

(assert (=> b!1899569 (=> (not res!847989) (not e!1213057))))

(declare-fun lambda!74230 () Int)

(declare-fun forall!4475 (List!21435 Int) Bool)

(assert (=> b!1899569 (= res!847989 (forall!4475 tokens!598 lambda!74230))))

(assert (=> b!1899570 (= e!1213066 (and tp!542394 tp!542389))))

(assert (= (and start!190490 res!847996) b!1899558))

(assert (= (and b!1899558 res!847988) b!1899562))

(assert (= (and b!1899562 res!847993) b!1899556))

(assert (= (and b!1899556 res!847995) b!1899557))

(assert (= (and b!1899557 res!847986) b!1899555))

(assert (= (and b!1899555 res!847985) b!1899569))

(assert (= (and b!1899569 res!847989) b!1899567))

(assert (= (and b!1899567 res!847990) b!1899564))

(assert (= (and b!1899564 res!847994) b!1899553))

(assert (= (and b!1899553 res!847992) b!1899560))

(assert (= (and b!1899560 res!847998) b!1899561))

(assert (= (and b!1899553 res!847991) b!1899548))

(assert (= (and b!1899553 res!847997) b!1899559))

(assert (= (and b!1899559 res!847987) b!1899551))

(assert (= b!1899547 b!1899570))

(assert (= b!1899554 b!1899547))

(assert (= (and start!190490 (is-Cons!21352 rules!3198)) b!1899554))

(assert (= b!1899549 b!1899565))

(assert (= b!1899563 b!1899549))

(assert (= b!1899552 b!1899563))

(assert (= (and start!190490 (is-Cons!21353 tokens!598)) b!1899552))

(assert (= b!1899550 b!1899568))

(assert (= b!1899566 b!1899550))

(assert (= start!190490 b!1899566))

(declare-fun m!2330623 () Bool)

(assert (=> b!1899559 m!2330623))

(declare-fun m!2330625 () Bool)

(assert (=> b!1899559 m!2330625))

(declare-fun m!2330627 () Bool)

(assert (=> b!1899566 m!2330627))

(declare-fun m!2330629 () Bool)

(assert (=> start!190490 m!2330629))

(declare-fun m!2330631 () Bool)

(assert (=> b!1899548 m!2330631))

(declare-fun m!2330633 () Bool)

(assert (=> b!1899557 m!2330633))

(declare-fun m!2330635 () Bool)

(assert (=> b!1899553 m!2330635))

(declare-fun m!2330637 () Bool)

(assert (=> b!1899553 m!2330637))

(declare-fun m!2330639 () Bool)

(assert (=> b!1899553 m!2330639))

(declare-fun m!2330641 () Bool)

(assert (=> b!1899553 m!2330641))

(declare-fun m!2330643 () Bool)

(assert (=> b!1899553 m!2330643))

(declare-fun m!2330645 () Bool)

(assert (=> b!1899553 m!2330645))

(declare-fun m!2330647 () Bool)

(assert (=> b!1899553 m!2330647))

(declare-fun m!2330649 () Bool)

(assert (=> b!1899553 m!2330649))

(assert (=> b!1899553 m!2330647))

(declare-fun m!2330651 () Bool)

(assert (=> b!1899553 m!2330651))

(declare-fun m!2330653 () Bool)

(assert (=> b!1899553 m!2330653))

(declare-fun m!2330655 () Bool)

(assert (=> b!1899553 m!2330655))

(declare-fun m!2330657 () Bool)

(assert (=> b!1899553 m!2330657))

(assert (=> b!1899553 m!2330649))

(declare-fun m!2330659 () Bool)

(assert (=> b!1899553 m!2330659))

(declare-fun m!2330661 () Bool)

(assert (=> b!1899553 m!2330661))

(declare-fun m!2330663 () Bool)

(assert (=> b!1899553 m!2330663))

(declare-fun m!2330665 () Bool)

(assert (=> b!1899553 m!2330665))

(assert (=> b!1899553 m!2330665))

(declare-fun m!2330667 () Bool)

(assert (=> b!1899553 m!2330667))

(assert (=> b!1899553 m!2330651))

(declare-fun m!2330669 () Bool)

(assert (=> b!1899553 m!2330669))

(declare-fun m!2330671 () Bool)

(assert (=> b!1899567 m!2330671))

(declare-fun m!2330673 () Bool)

(assert (=> b!1899547 m!2330673))

(declare-fun m!2330675 () Bool)

(assert (=> b!1899547 m!2330675))

(declare-fun m!2330677 () Bool)

(assert (=> b!1899556 m!2330677))

(declare-fun m!2330679 () Bool)

(assert (=> b!1899558 m!2330679))

(declare-fun m!2330681 () Bool)

(assert (=> b!1899569 m!2330681))

(declare-fun m!2330683 () Bool)

(assert (=> b!1899549 m!2330683))

(declare-fun m!2330685 () Bool)

(assert (=> b!1899549 m!2330685))

(declare-fun m!2330687 () Bool)

(assert (=> b!1899552 m!2330687))

(declare-fun m!2330689 () Bool)

(assert (=> b!1899562 m!2330689))

(declare-fun m!2330691 () Bool)

(assert (=> b!1899560 m!2330691))

(declare-fun m!2330693 () Bool)

(assert (=> b!1899560 m!2330693))

(declare-fun m!2330695 () Bool)

(assert (=> b!1899563 m!2330695))

(declare-fun m!2330697 () Bool)

(assert (=> b!1899550 m!2330697))

(declare-fun m!2330699 () Bool)

(assert (=> b!1899550 m!2330699))

(push 1)

(assert (not b!1899548))

(assert (not b!1899560))

(assert (not b!1899550))

(assert (not b!1899558))

(assert (not b!1899549))

(assert b_and!146953)

(assert (not b_next!53973))

(assert (not b!1899553))

(assert (not b!1899559))

(assert (not b_next!53971))

(assert (not b!1899547))

(assert (not b!1899563))

(assert (not b!1899554))

(assert b_and!146945)

(assert b_and!146951)

(assert (not b!1899552))

(assert (not b!1899557))

(assert (not start!190490))

(assert b_and!146943)

(assert (not b_next!53969))

(assert b_and!146949)

(assert b_and!146947)

(assert (not b_next!53965))

(assert (not b_next!53975))

(assert (not b!1899562))

(assert (not b!1899567))

(assert (not b_next!53967))

(assert (not b!1899569))

(assert (not b!1899566))

(assert (not b!1899556))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!53971))

(assert b_and!146943)

(assert b_and!146953)

(assert (not b_next!53973))

(assert (not b_next!53967))

(assert b_and!146945)

(assert b_and!146951)

(assert (not b_next!53969))

(assert b_and!146949)

(assert b_and!146947)

(assert (not b_next!53965))

(assert (not b_next!53975))

(check-sat)

(pop 1)


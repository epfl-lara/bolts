; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!177490 () Bool)

(assert start!177490)

(declare-fun b!1782980 () Bool)

(declare-fun b_free!49511 () Bool)

(declare-fun b_next!50215 () Bool)

(assert (=> b!1782980 (= b_free!49511 (not b_next!50215))))

(declare-fun tp!504629 () Bool)

(declare-fun b_and!136863 () Bool)

(assert (=> b!1782980 (= tp!504629 b_and!136863)))

(declare-fun b_free!49513 () Bool)

(declare-fun b_next!50217 () Bool)

(assert (=> b!1782980 (= b_free!49513 (not b_next!50217))))

(declare-fun tp!504631 () Bool)

(declare-fun b_and!136865 () Bool)

(assert (=> b!1782980 (= tp!504631 b_and!136865)))

(declare-fun b!1782990 () Bool)

(declare-fun b_free!49515 () Bool)

(declare-fun b_next!50219 () Bool)

(assert (=> b!1782990 (= b_free!49515 (not b_next!50219))))

(declare-fun tp!504627 () Bool)

(declare-fun b_and!136867 () Bool)

(assert (=> b!1782990 (= tp!504627 b_and!136867)))

(declare-fun b_free!49517 () Bool)

(declare-fun b_next!50221 () Bool)

(assert (=> b!1782990 (= b_free!49517 (not b_next!50221))))

(declare-fun tp!504635 () Bool)

(declare-fun b_and!136869 () Bool)

(assert (=> b!1782990 (= tp!504635 b_and!136869)))

(declare-fun b!1783004 () Bool)

(declare-fun b_free!49519 () Bool)

(declare-fun b_next!50223 () Bool)

(assert (=> b!1783004 (= b_free!49519 (not b_next!50223))))

(declare-fun tp!504630 () Bool)

(declare-fun b_and!136871 () Bool)

(assert (=> b!1783004 (= tp!504630 b_and!136871)))

(declare-fun b_free!49521 () Bool)

(declare-fun b_next!50225 () Bool)

(assert (=> b!1783004 (= b_free!49521 (not b_next!50225))))

(declare-fun tp!504638 () Bool)

(declare-fun b_and!136873 () Bool)

(assert (=> b!1783004 (= tp!504638 b_and!136873)))

(declare-fun b!1783024 () Bool)

(declare-fun e!1141111 () Bool)

(assert (=> b!1783024 (= e!1141111 true)))

(declare-fun b!1783023 () Bool)

(declare-fun e!1141110 () Bool)

(assert (=> b!1783023 (= e!1141110 e!1141111)))

(declare-fun b!1783022 () Bool)

(declare-fun e!1141109 () Bool)

(assert (=> b!1783022 (= e!1141109 e!1141110)))

(declare-fun b!1782974 () Bool)

(assert (=> b!1782974 e!1141109))

(assert (= b!1783023 b!1783024))

(assert (= b!1783022 b!1783023))

(assert (= b!1782974 b!1783022))

(declare-fun order!12697 () Int)

(declare-datatypes ((List!19720 0))(
  ( (Nil!19650) (Cons!19650 (h!25051 (_ BitVec 16)) (t!166759 List!19720)) )
))
(declare-datatypes ((TokenValue!3611 0))(
  ( (FloatLiteralValue!7222 (text!25722 List!19720)) (TokenValueExt!3610 (__x!12524 Int)) (Broken!18055 (value!109995 List!19720)) (Object!3680) (End!3611) (Def!3611) (Underscore!3611) (Match!3611) (Else!3611) (Error!3611) (Case!3611) (If!3611) (Extends!3611) (Abstract!3611) (Class!3611) (Val!3611) (DelimiterValue!7222 (del!3671 List!19720)) (KeywordValue!3617 (value!109996 List!19720)) (CommentValue!7222 (value!109997 List!19720)) (WhitespaceValue!7222 (value!109998 List!19720)) (IndentationValue!3611 (value!109999 List!19720)) (String!22386) (Int32!3611) (Broken!18056 (value!110000 List!19720)) (Boolean!3612) (Unit!33966) (OperatorValue!3614 (op!3671 List!19720)) (IdentifierValue!7222 (value!110001 List!19720)) (IdentifierValue!7223 (value!110002 List!19720)) (WhitespaceValue!7223 (value!110003 List!19720)) (True!7222) (False!7222) (Broken!18057 (value!110004 List!19720)) (Broken!18058 (value!110005 List!19720)) (True!7223) (RightBrace!3611) (RightBracket!3611) (Colon!3611) (Null!3611) (Comma!3611) (LeftBracket!3611) (False!7223) (LeftBrace!3611) (ImaginaryLiteralValue!3611 (text!25723 List!19720)) (StringLiteralValue!10833 (value!110006 List!19720)) (EOFValue!3611 (value!110007 List!19720)) (IdentValue!3611 (value!110008 List!19720)) (DelimiterValue!7223 (value!110009 List!19720)) (DedentValue!3611 (value!110010 List!19720)) (NewLineValue!3611 (value!110011 List!19720)) (IntegerValue!10833 (value!110012 (_ BitVec 32)) (text!25724 List!19720)) (IntegerValue!10834 (value!110013 Int) (text!25725 List!19720)) (Times!3611) (Or!3611) (Equal!3611) (Minus!3611) (Broken!18059 (value!110014 List!19720)) (And!3611) (Div!3611) (LessEqual!3611) (Mod!3611) (Concat!8460) (Not!3611) (Plus!3611) (SpaceValue!3611 (value!110015 List!19720)) (IntegerValue!10835 (value!110016 Int) (text!25726 List!19720)) (StringLiteralValue!10834 (text!25727 List!19720)) (FloatLiteralValue!7223 (text!25728 List!19720)) (BytesLiteralValue!3611 (value!110017 List!19720)) (CommentValue!7223 (value!110018 List!19720)) (StringLiteralValue!10835 (value!110019 List!19720)) (ErrorTokenValue!3611 (msg!3672 List!19720)) )
))
(declare-datatypes ((C!9872 0))(
  ( (C!9873 (val!5532 Int)) )
))
(declare-datatypes ((List!19721 0))(
  ( (Nil!19651) (Cons!19651 (h!25052 C!9872) (t!166760 List!19721)) )
))
(declare-datatypes ((Regex!4849 0))(
  ( (ElementMatch!4849 (c!290030 C!9872)) (Concat!8461 (regOne!10210 Regex!4849) (regTwo!10210 Regex!4849)) (EmptyExpr!4849) (Star!4849 (reg!5178 Regex!4849)) (EmptyLang!4849) (Union!4849 (regOne!10211 Regex!4849) (regTwo!10211 Regex!4849)) )
))
(declare-datatypes ((String!22387 0))(
  ( (String!22388 (value!110020 String)) )
))
(declare-datatypes ((IArray!13079 0))(
  ( (IArray!13080 (innerList!6597 List!19721)) )
))
(declare-datatypes ((Conc!6537 0))(
  ( (Node!6537 (left!15751 Conc!6537) (right!16081 Conc!6537) (csize!13304 Int) (cheight!6748 Int)) (Leaf!9518 (xs!9413 IArray!13079) (csize!13305 Int)) (Empty!6537) )
))
(declare-datatypes ((BalanceConc!13018 0))(
  ( (BalanceConc!13019 (c!290031 Conc!6537)) )
))
(declare-datatypes ((TokenValueInjection!6882 0))(
  ( (TokenValueInjection!6883 (toValue!5048 Int) (toChars!4907 Int)) )
))
(declare-datatypes ((Rule!6842 0))(
  ( (Rule!6843 (regex!3521 Regex!4849) (tag!3919 String!22387) (isSeparator!3521 Bool) (transformation!3521 TokenValueInjection!6882)) )
))
(declare-datatypes ((Token!6608 0))(
  ( (Token!6609 (value!110021 TokenValue!3611) (rule!5601 Rule!6842) (size!15610 Int) (originalCharacters!4335 List!19721)) )
))
(declare-datatypes ((tuple2!19242 0))(
  ( (tuple2!19243 (_1!11023 Token!6608) (_2!11023 List!19721)) )
))
(declare-fun lt!693369 () tuple2!19242)

(declare-fun lambda!70710 () Int)

(declare-fun order!12695 () Int)

(declare-fun dynLambda!9661 (Int Int) Int)

(declare-fun dynLambda!9662 (Int Int) Int)

(assert (=> b!1783024 (< (dynLambda!9661 order!12695 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) (dynLambda!9662 order!12697 lambda!70710))))

(declare-fun order!12699 () Int)

(declare-fun dynLambda!9663 (Int Int) Int)

(assert (=> b!1783024 (< (dynLambda!9663 order!12699 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) (dynLambda!9662 order!12697 lambda!70710))))

(declare-fun e!1141087 () Bool)

(declare-fun e!1141098 () Bool)

(assert (=> b!1782974 (= e!1141087 e!1141098)))

(declare-fun res!803805 () Bool)

(assert (=> b!1782974 (=> res!803805 e!1141098)))

(declare-fun Forall!888 (Int) Bool)

(assert (=> b!1782974 (= res!803805 (not (Forall!888 lambda!70710)))))

(declare-datatypes ((Unit!33967 0))(
  ( (Unit!33968) )
))
(declare-fun lt!693375 () Unit!33967)

(declare-fun lemmaInv!720 (TokenValueInjection!6882) Unit!33967)

(assert (=> b!1782974 (= lt!693375 (lemmaInv!720 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))))))

(declare-fun b!1782975 () Bool)

(declare-fun e!1141096 () Bool)

(declare-fun e!1141077 () Bool)

(assert (=> b!1782975 (= e!1141096 e!1141077)))

(declare-fun res!803799 () Bool)

(assert (=> b!1782975 (=> res!803799 e!1141077)))

(declare-fun token!523 () Token!6608)

(assert (=> b!1782975 (= res!803799 (= (rule!5601 (_1!11023 lt!693369)) (rule!5601 token!523)))))

(declare-fun suffix!1421 () List!19721)

(assert (=> b!1782975 (= suffix!1421 (_2!11023 lt!693369))))

(declare-fun lt!693407 () List!19721)

(declare-fun lt!693367 () List!19721)

(declare-fun lt!693409 () Unit!33967)

(declare-fun lemmaSamePrefixThenSameSuffix!872 (List!19721 List!19721 List!19721 List!19721 List!19721) Unit!33967)

(assert (=> b!1782975 (= lt!693409 (lemmaSamePrefixThenSameSuffix!872 lt!693367 suffix!1421 lt!693367 (_2!11023 lt!693369) lt!693407))))

(declare-fun lt!693405 () List!19721)

(assert (=> b!1782975 (= lt!693405 lt!693367)))

(declare-fun lt!693399 () Unit!33967)

(declare-fun lemmaIsPrefixSameLengthThenSameList!257 (List!19721 List!19721 List!19721) Unit!33967)

(assert (=> b!1782975 (= lt!693399 (lemmaIsPrefixSameLengthThenSameList!257 lt!693405 lt!693367 lt!693407))))

(declare-fun b!1782976 () Bool)

(declare-fun e!1141075 () Bool)

(declare-fun e!1141094 () Bool)

(assert (=> b!1782976 (= e!1141075 e!1141094)))

(declare-fun res!803796 () Bool)

(assert (=> b!1782976 (=> res!803796 e!1141094)))

(declare-fun lt!693388 () Bool)

(assert (=> b!1782976 (= res!803796 lt!693388)))

(declare-fun lt!693410 () Unit!33967)

(declare-fun e!1141088 () Unit!33967)

(assert (=> b!1782976 (= lt!693410 e!1141088)))

(declare-fun c!290028 () Bool)

(assert (=> b!1782976 (= c!290028 lt!693388)))

(declare-fun lt!693389 () Int)

(declare-fun lt!693384 () Int)

(assert (=> b!1782976 (= lt!693388 (> lt!693389 lt!693384))))

(declare-fun lt!693393 () BalanceConc!13018)

(declare-fun size!15611 (BalanceConc!13018) Int)

(assert (=> b!1782976 (= lt!693384 (size!15611 lt!693393))))

(declare-fun lt!693394 () Regex!4849)

(declare-fun matchR!2322 (Regex!4849 List!19721) Bool)

(assert (=> b!1782976 (matchR!2322 lt!693394 lt!693367)))

(declare-fun lt!693383 () Unit!33967)

(declare-fun rule!422 () Rule!6842)

(declare-datatypes ((List!19722 0))(
  ( (Nil!19652) (Cons!19652 (h!25053 Rule!6842) (t!166761 List!19722)) )
))
(declare-fun rules!3447 () List!19722)

(declare-datatypes ((LexerInterface!3150 0))(
  ( (LexerInterfaceExt!3147 (__x!12525 Int)) (Lexer!3148) )
))
(declare-fun thiss!24550 () LexerInterface!3150)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!228 (LexerInterface!3150 List!19722 List!19721 Token!6608 Rule!6842 List!19721) Unit!33967)

(assert (=> b!1782976 (= lt!693383 (lemmaMaxPrefixThenMatchesRulesRegex!228 thiss!24550 rules!3447 lt!693367 token!523 rule!422 Nil!19651))))

(declare-fun b!1782977 () Bool)

(declare-fun res!803792 () Bool)

(assert (=> b!1782977 (=> res!803792 e!1141077)))

(declare-fun getIndex!186 (List!19722 Rule!6842) Int)

(assert (=> b!1782977 (= res!803792 (>= (getIndex!186 rules!3447 (rule!5601 token!523)) (getIndex!186 rules!3447 (rule!5601 (_1!11023 lt!693369)))))))

(declare-fun b!1782978 () Bool)

(declare-fun e!1141092 () Unit!33967)

(declare-fun Unit!33969 () Unit!33967)

(assert (=> b!1782978 (= e!1141092 Unit!33969)))

(declare-fun b!1782979 () Bool)

(declare-fun e!1141080 () Bool)

(declare-fun e!1141095 () Bool)

(assert (=> b!1782979 (= e!1141080 e!1141095)))

(declare-fun res!803795 () Bool)

(assert (=> b!1782979 (=> res!803795 e!1141095)))

(declare-fun lt!693406 () List!19721)

(declare-fun prefixMatch!732 (Regex!4849 List!19721) Bool)

(assert (=> b!1782979 (= res!803795 (prefixMatch!732 lt!693394 lt!693406))))

(declare-fun ++!5345 (List!19721 List!19721) List!19721)

(declare-fun head!4170 (List!19721) C!9872)

(assert (=> b!1782979 (= lt!693406 (++!5345 lt!693367 (Cons!19651 (head!4170 suffix!1421) Nil!19651)))))

(declare-fun rulesRegex!877 (LexerInterface!3150 List!19722) Regex!4849)

(assert (=> b!1782979 (= lt!693394 (rulesRegex!877 thiss!24550 rules!3447))))

(declare-fun e!1141076 () Bool)

(assert (=> b!1782980 (= e!1141076 (and tp!504629 tp!504631))))

(declare-fun b!1782981 () Bool)

(declare-fun res!803791 () Bool)

(assert (=> b!1782981 (=> res!803791 e!1141077)))

(declare-fun isEmpty!12418 (List!19721) Bool)

(assert (=> b!1782981 (= res!803791 (isEmpty!12418 lt!693405))))

(declare-fun b!1782982 () Bool)

(declare-fun res!803784 () Bool)

(declare-fun e!1141085 () Bool)

(assert (=> b!1782982 (=> (not res!803784) (not e!1141085))))

(declare-fun rulesInvariant!2819 (LexerInterface!3150 List!19722) Bool)

(assert (=> b!1782982 (= res!803784 (rulesInvariant!2819 thiss!24550 rules!3447))))

(declare-fun b!1782983 () Bool)

(assert (=> b!1782983 (= e!1141095 e!1141087)))

(declare-fun res!803787 () Bool)

(assert (=> b!1782983 (=> res!803787 e!1141087)))

(declare-fun isPrefix!1761 (List!19721 List!19721) Bool)

(assert (=> b!1782983 (= res!803787 (not (isPrefix!1761 lt!693405 lt!693407)))))

(assert (=> b!1782983 (isPrefix!1761 lt!693405 (++!5345 lt!693405 (_2!11023 lt!693369)))))

(declare-fun lt!693403 () Unit!33967)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1270 (List!19721 List!19721) Unit!33967)

(assert (=> b!1782983 (= lt!693403 (lemmaConcatTwoListThenFirstIsPrefix!1270 lt!693405 (_2!11023 lt!693369)))))

(declare-fun lt!693366 () BalanceConc!13018)

(declare-fun list!7991 (BalanceConc!13018) List!19721)

(assert (=> b!1782983 (= lt!693405 (list!7991 lt!693366))))

(declare-fun charsOf!2170 (Token!6608) BalanceConc!13018)

(assert (=> b!1782983 (= lt!693366 (charsOf!2170 (_1!11023 lt!693369)))))

(declare-fun e!1141074 () Bool)

(assert (=> b!1782983 e!1141074))

(declare-fun res!803803 () Bool)

(assert (=> b!1782983 (=> (not res!803803) (not e!1141074))))

(declare-datatypes ((Option!4064 0))(
  ( (None!4063) (Some!4063 (v!25556 Rule!6842)) )
))
(declare-fun lt!693402 () Option!4064)

(declare-fun isDefined!3407 (Option!4064) Bool)

(assert (=> b!1782983 (= res!803803 (isDefined!3407 lt!693402))))

(declare-fun getRuleFromTag!569 (LexerInterface!3150 List!19722 String!22387) Option!4064)

(assert (=> b!1782983 (= lt!693402 (getRuleFromTag!569 thiss!24550 rules!3447 (tag!3919 (rule!5601 (_1!11023 lt!693369)))))))

(declare-fun lt!693382 () Unit!33967)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!569 (LexerInterface!3150 List!19722 List!19721 Token!6608) Unit!33967)

(assert (=> b!1782983 (= lt!693382 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!569 thiss!24550 rules!3447 lt!693407 (_1!11023 lt!693369)))))

(declare-datatypes ((Option!4065 0))(
  ( (None!4064) (Some!4064 (v!25557 tuple2!19242)) )
))
(declare-fun lt!693387 () Option!4065)

(declare-fun get!6042 (Option!4065) tuple2!19242)

(assert (=> b!1782983 (= lt!693369 (get!6042 lt!693387))))

(declare-fun lt!693401 () Unit!33967)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!672 (LexerInterface!3150 List!19722 List!19721 List!19721) Unit!33967)

(assert (=> b!1782983 (= lt!693401 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!672 thiss!24550 rules!3447 lt!693367 suffix!1421))))

(declare-fun maxPrefix!1704 (LexerInterface!3150 List!19722 List!19721) Option!4065)

(assert (=> b!1782983 (= lt!693387 (maxPrefix!1704 thiss!24550 rules!3447 lt!693407))))

(assert (=> b!1782983 (isPrefix!1761 lt!693367 lt!693407)))

(declare-fun lt!693374 () Unit!33967)

(assert (=> b!1782983 (= lt!693374 (lemmaConcatTwoListThenFirstIsPrefix!1270 lt!693367 suffix!1421))))

(assert (=> b!1782983 (= lt!693407 (++!5345 lt!693367 suffix!1421))))

(declare-fun b!1782984 () Bool)

(declare-fun Unit!33970 () Unit!33967)

(assert (=> b!1782984 (= e!1141092 Unit!33970)))

(declare-fun lt!693378 () Unit!33967)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!230 (LexerInterface!3150 List!19722 Rule!6842 List!19721 List!19721 List!19721 Rule!6842) Unit!33967)

(assert (=> b!1782984 (= lt!693378 (lemmaMaxPrefixOutputsMaxPrefix!230 thiss!24550 rules!3447 (rule!5601 (_1!11023 lt!693369)) lt!693405 lt!693407 lt!693367 rule!422))))

(assert (=> b!1782984 false))

(declare-fun b!1782985 () Bool)

(declare-fun e!1141083 () Bool)

(declare-fun e!1141081 () Bool)

(declare-fun tp!504637 () Bool)

(assert (=> b!1782985 (= e!1141083 (and e!1141081 tp!504637))))

(declare-fun b!1782986 () Bool)

(declare-fun res!803783 () Bool)

(assert (=> b!1782986 (=> (not res!803783) (not e!1141085))))

(declare-fun contains!3553 (List!19722 Rule!6842) Bool)

(assert (=> b!1782986 (= res!803783 (contains!3553 rules!3447 rule!422))))

(declare-fun tp!504632 () Bool)

(declare-fun e!1141079 () Bool)

(declare-fun b!1782987 () Bool)

(declare-fun e!1141082 () Bool)

(declare-fun inv!25575 (String!22387) Bool)

(declare-fun inv!25580 (TokenValueInjection!6882) Bool)

(assert (=> b!1782987 (= e!1141079 (and tp!504632 (inv!25575 (tag!3919 rule!422)) (inv!25580 (transformation!3521 rule!422)) e!1141082))))

(declare-fun b!1782988 () Bool)

(declare-fun e!1141093 () Bool)

(assert (=> b!1782988 (= e!1141098 e!1141093)))

(declare-fun res!803802 () Bool)

(assert (=> b!1782988 (=> res!803802 e!1141093)))

(declare-fun dynLambda!9664 (Int TokenValue!3611) BalanceConc!13018)

(declare-fun dynLambda!9665 (Int BalanceConc!13018) TokenValue!3611)

(assert (=> b!1782988 (= res!803802 (not (= (list!7991 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366))) lt!693405)))))

(declare-fun lt!693381 () Unit!33967)

(declare-fun lemmaSemiInverse!659 (TokenValueInjection!6882 BalanceConc!13018) Unit!33967)

(assert (=> b!1782988 (= lt!693381 (lemmaSemiInverse!659 (transformation!3521 (rule!5601 (_1!11023 lt!693369))) lt!693366))))

(declare-fun b!1782989 () Bool)

(declare-fun res!803794 () Bool)

(assert (=> b!1782989 (=> res!803794 e!1141077)))

(assert (=> b!1782989 (= res!803794 (not (contains!3553 rules!3447 (rule!5601 (_1!11023 lt!693369)))))))

(declare-fun e!1141099 () Bool)

(assert (=> b!1782990 (= e!1141099 (and tp!504627 tp!504635))))

(declare-fun b!1782991 () Bool)

(declare-fun res!803797 () Bool)

(assert (=> b!1782991 (=> res!803797 e!1141093)))

(assert (=> b!1782991 (= res!803797 (not (= lt!693366 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (value!110021 (_1!11023 lt!693369))))))))

(declare-fun b!1782992 () Bool)

(declare-fun e!1141091 () Bool)

(assert (=> b!1782992 (= e!1141091 (not e!1141080))))

(declare-fun res!803781 () Bool)

(assert (=> b!1782992 (=> res!803781 e!1141080)))

(assert (=> b!1782992 (= res!803781 (not (matchR!2322 (regex!3521 rule!422) lt!693367)))))

(declare-fun ruleValid!1019 (LexerInterface!3150 Rule!6842) Bool)

(assert (=> b!1782992 (ruleValid!1019 thiss!24550 rule!422)))

(declare-fun lt!693377 () Unit!33967)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!542 (LexerInterface!3150 Rule!6842 List!19722) Unit!33967)

(assert (=> b!1782992 (= lt!693377 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!542 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1782993 () Bool)

(declare-fun Unit!33971 () Unit!33967)

(assert (=> b!1782993 (= e!1141088 Unit!33971)))

(declare-fun lt!693391 () Unit!33967)

(assert (=> b!1782993 (= lt!693391 (lemmaMaxPrefixThenMatchesRulesRegex!228 thiss!24550 rules!3447 lt!693407 (_1!11023 lt!693369) (rule!5601 (_1!11023 lt!693369)) (_2!11023 lt!693369)))))

(assert (=> b!1782993 (matchR!2322 lt!693394 lt!693405)))

(declare-fun lt!693408 () List!19721)

(declare-fun getSuffix!928 (List!19721 List!19721) List!19721)

(assert (=> b!1782993 (= lt!693408 (getSuffix!928 lt!693407 lt!693367))))

(declare-fun lt!693380 () Unit!33967)

(assert (=> b!1782993 (= lt!693380 (lemmaSamePrefixThenSameSuffix!872 lt!693367 suffix!1421 lt!693367 lt!693408 lt!693407))))

(assert (=> b!1782993 (= suffix!1421 lt!693408)))

(declare-fun lt!693404 () Unit!33967)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!297 (List!19721 List!19721) Unit!33967)

(assert (=> b!1782993 (= lt!693404 (lemmaAddHeadSuffixToPrefixStillPrefix!297 lt!693367 lt!693407))))

(assert (=> b!1782993 (isPrefix!1761 (++!5345 lt!693367 (Cons!19651 (head!4170 lt!693408) Nil!19651)) lt!693407)))

(declare-fun lt!693396 () Unit!33967)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!169 (List!19721 List!19721 List!19721) Unit!33967)

(assert (=> b!1782993 (= lt!693396 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!169 lt!693405 lt!693406 lt!693407))))

(assert (=> b!1782993 (isPrefix!1761 lt!693406 lt!693405)))

(declare-fun lt!693368 () Unit!33967)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!160 (Regex!4849 List!19721 List!19721) Unit!33967)

(assert (=> b!1782993 (= lt!693368 (lemmaNotPrefixMatchThenCannotMatchLonger!160 lt!693394 lt!693406 lt!693405))))

(assert (=> b!1782993 false))

(declare-fun b!1782994 () Bool)

(declare-fun e!1141073 () Bool)

(assert (=> b!1782994 (= e!1141074 e!1141073)))

(declare-fun res!803789 () Bool)

(assert (=> b!1782994 (=> (not res!803789) (not e!1141073))))

(declare-fun lt!693390 () Rule!6842)

(assert (=> b!1782994 (= res!803789 (matchR!2322 (regex!3521 lt!693390) (list!7991 (charsOf!2170 (_1!11023 lt!693369)))))))

(declare-fun get!6043 (Option!4064) Rule!6842)

(assert (=> b!1782994 (= lt!693390 (get!6043 lt!693402))))

(declare-fun b!1782995 () Bool)

(assert (=> b!1782995 (= e!1141094 e!1141096)))

(declare-fun res!803801 () Bool)

(assert (=> b!1782995 (=> res!803801 e!1141096)))

(assert (=> b!1782995 (= res!803801 (not (= lt!693389 lt!693384)))))

(declare-fun lt!693386 () Unit!33967)

(assert (=> b!1782995 (= lt!693386 e!1141092)))

(declare-fun c!290029 () Bool)

(assert (=> b!1782995 (= c!290029 (< lt!693389 lt!693384))))

(declare-fun b!1782996 () Bool)

(declare-fun res!803800 () Bool)

(assert (=> b!1782996 (=> res!803800 e!1141077)))

(assert (=> b!1782996 (= res!803800 (not (contains!3553 rules!3447 (rule!5601 token!523))))))

(declare-fun b!1782997 () Bool)

(declare-fun e!1141078 () Bool)

(assert (=> b!1782997 (= e!1141093 e!1141078)))

(declare-fun res!803806 () Bool)

(assert (=> b!1782997 (=> res!803806 e!1141078)))

(declare-fun lt!693376 () TokenValue!3611)

(assert (=> b!1782997 (= res!803806 (not (= lt!693387 (Some!4064 (tuple2!19243 (Token!6609 lt!693376 (rule!5601 (_1!11023 lt!693369)) lt!693389 lt!693405) (_2!11023 lt!693369))))))))

(assert (=> b!1782997 (= lt!693389 (size!15611 lt!693366))))

(declare-fun apply!5321 (TokenValueInjection!6882 BalanceConc!13018) TokenValue!3611)

(assert (=> b!1782997 (= lt!693376 (apply!5321 (transformation!3521 (rule!5601 (_1!11023 lt!693369))) lt!693366))))

(declare-fun lt!693370 () Unit!33967)

(declare-fun lemmaCharactersSize!579 (Token!6608) Unit!33967)

(assert (=> b!1782997 (= lt!693370 (lemmaCharactersSize!579 (_1!11023 lt!693369)))))

(declare-fun lt!693385 () Unit!33967)

(declare-fun lemmaEqSameImage!432 (TokenValueInjection!6882 BalanceConc!13018 BalanceConc!13018) Unit!33967)

(declare-fun seqFromList!2490 (List!19721) BalanceConc!13018)

(assert (=> b!1782997 (= lt!693385 (lemmaEqSameImage!432 (transformation!3521 (rule!5601 (_1!11023 lt!693369))) lt!693366 (seqFromList!2490 (originalCharacters!4335 (_1!11023 lt!693369)))))))

(declare-fun res!803785 () Bool)

(assert (=> start!177490 (=> (not res!803785) (not e!1141085))))

(get-info :version)

(assert (=> start!177490 (= res!803785 ((_ is Lexer!3148) thiss!24550))))

(assert (=> start!177490 e!1141085))

(declare-fun e!1141089 () Bool)

(assert (=> start!177490 e!1141089))

(assert (=> start!177490 e!1141079))

(assert (=> start!177490 true))

(declare-fun e!1141102 () Bool)

(declare-fun inv!25581 (Token!6608) Bool)

(assert (=> start!177490 (and (inv!25581 token!523) e!1141102)))

(assert (=> start!177490 e!1141083))

(declare-fun b!1782998 () Bool)

(declare-fun res!803790 () Bool)

(assert (=> b!1782998 (=> (not res!803790) (not e!1141091))))

(declare-fun lt!693392 () tuple2!19242)

(assert (=> b!1782998 (= res!803790 (isEmpty!12418 (_2!11023 lt!693392)))))

(declare-fun b!1782999 () Bool)

(declare-fun res!803793 () Bool)

(assert (=> b!1782999 (=> (not res!803793) (not e!1141085))))

(declare-fun isEmpty!12419 (List!19722) Bool)

(assert (=> b!1782999 (= res!803793 (not (isEmpty!12419 rules!3447)))))

(declare-fun b!1783000 () Bool)

(declare-fun e!1141097 () Bool)

(declare-fun tp!504634 () Bool)

(declare-fun inv!21 (TokenValue!3611) Bool)

(assert (=> b!1783000 (= e!1141102 (and (inv!21 (value!110021 token!523)) e!1141097 tp!504634))))

(declare-fun b!1783001 () Bool)

(declare-fun res!803780 () Bool)

(assert (=> b!1783001 (=> res!803780 e!1141087)))

(assert (=> b!1783001 (= res!803780 (not (matchR!2322 (regex!3521 (rule!5601 (_1!11023 lt!693369))) lt!693405)))))

(declare-fun b!1783002 () Bool)

(declare-fun tp!504628 () Bool)

(assert (=> b!1783002 (= e!1141097 (and tp!504628 (inv!25575 (tag!3919 (rule!5601 token!523))) (inv!25580 (transformation!3521 (rule!5601 token!523))) e!1141076))))

(declare-fun b!1783003 () Bool)

(declare-fun e!1141086 () Bool)

(assert (=> b!1783003 (= e!1141085 e!1141086)))

(declare-fun res!803788 () Bool)

(assert (=> b!1783003 (=> (not res!803788) (not e!1141086))))

(declare-fun lt!693398 () Option!4065)

(declare-fun isDefined!3408 (Option!4065) Bool)

(assert (=> b!1783003 (= res!803788 (isDefined!3408 lt!693398))))

(assert (=> b!1783003 (= lt!693398 (maxPrefix!1704 thiss!24550 rules!3447 lt!693367))))

(assert (=> b!1783003 (= lt!693367 (list!7991 lt!693393))))

(assert (=> b!1783003 (= lt!693393 (charsOf!2170 token!523))))

(assert (=> b!1783004 (= e!1141082 (and tp!504630 tp!504638))))

(declare-fun b!1783005 () Bool)

(declare-fun Unit!33972 () Unit!33967)

(assert (=> b!1783005 (= e!1141088 Unit!33972)))

(declare-fun b!1783006 () Bool)

(declare-fun tp_is_empty!7941 () Bool)

(declare-fun tp!504636 () Bool)

(assert (=> b!1783006 (= e!1141089 (and tp_is_empty!7941 tp!504636))))

(declare-fun b!1783007 () Bool)

(declare-fun res!803782 () Bool)

(assert (=> b!1783007 (=> (not res!803782) (not e!1141091))))

(assert (=> b!1783007 (= res!803782 (= (rule!5601 token!523) rule!422))))

(declare-fun b!1783008 () Bool)

(assert (=> b!1783008 (= e!1141073 (= (rule!5601 (_1!11023 lt!693369)) lt!693390))))

(declare-fun lt!693397 () List!19721)

(declare-fun lt!693379 () Token!6608)

(declare-fun b!1783009 () Bool)

(assert (=> b!1783009 (= e!1141077 (= lt!693387 (Some!4064 (tuple2!19243 lt!693379 lt!693397))))))

(declare-fun lt!693371 () Unit!33967)

(declare-fun lt!693395 () BalanceConc!13018)

(assert (=> b!1783009 (= lt!693371 (lemmaSemiInverse!659 (transformation!3521 (rule!5601 (_1!11023 lt!693369))) lt!693395))))

(declare-fun b!1783010 () Bool)

(declare-fun res!803804 () Bool)

(assert (=> b!1783010 (=> res!803804 e!1141080)))

(assert (=> b!1783010 (= res!803804 (isEmpty!12418 suffix!1421))))

(declare-fun b!1783011 () Bool)

(assert (=> b!1783011 (= e!1141078 e!1141075)))

(declare-fun res!803798 () Bool)

(assert (=> b!1783011 (=> res!803798 e!1141075)))

(declare-fun lt!693400 () Option!4065)

(assert (=> b!1783011 (= res!803798 (or (not (= lt!693397 (_2!11023 lt!693369))) (not (= lt!693400 (Some!4064 (tuple2!19243 (_1!11023 lt!693369) lt!693397))))))))

(assert (=> b!1783011 (= (_2!11023 lt!693369) lt!693397)))

(declare-fun lt!693373 () Unit!33967)

(assert (=> b!1783011 (= lt!693373 (lemmaSamePrefixThenSameSuffix!872 lt!693405 (_2!11023 lt!693369) lt!693405 lt!693397 lt!693407))))

(assert (=> b!1783011 (= lt!693397 (getSuffix!928 lt!693407 lt!693405))))

(assert (=> b!1783011 (= lt!693400 (Some!4064 (tuple2!19243 lt!693379 (_2!11023 lt!693369))))))

(declare-fun maxPrefixOneRule!1073 (LexerInterface!3150 Rule!6842 List!19721) Option!4065)

(assert (=> b!1783011 (= lt!693400 (maxPrefixOneRule!1073 thiss!24550 (rule!5601 (_1!11023 lt!693369)) lt!693407))))

(declare-fun size!15612 (List!19721) Int)

(assert (=> b!1783011 (= lt!693379 (Token!6609 (apply!5321 (transformation!3521 (rule!5601 (_1!11023 lt!693369))) lt!693395) (rule!5601 (_1!11023 lt!693369)) (size!15612 lt!693405) lt!693405))))

(assert (=> b!1783011 (= lt!693395 (seqFromList!2490 lt!693405))))

(declare-fun lt!693372 () Unit!33967)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!451 (LexerInterface!3150 List!19722 List!19721 List!19721 List!19721 Rule!6842) Unit!33967)

(assert (=> b!1783011 (= lt!693372 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!451 thiss!24550 rules!3447 lt!693405 lt!693407 (_2!11023 lt!693369) (rule!5601 (_1!11023 lt!693369))))))

(declare-fun b!1783012 () Bool)

(assert (=> b!1783012 (= e!1141086 e!1141091)))

(declare-fun res!803786 () Bool)

(assert (=> b!1783012 (=> (not res!803786) (not e!1141091))))

(assert (=> b!1783012 (= res!803786 (= (_1!11023 lt!693392) token!523))))

(assert (=> b!1783012 (= lt!693392 (get!6042 lt!693398))))

(declare-fun b!1783013 () Bool)

(declare-fun tp!504633 () Bool)

(assert (=> b!1783013 (= e!1141081 (and tp!504633 (inv!25575 (tag!3919 (h!25053 rules!3447))) (inv!25580 (transformation!3521 (h!25053 rules!3447))) e!1141099))))

(assert (= (and start!177490 res!803785) b!1782999))

(assert (= (and b!1782999 res!803793) b!1782982))

(assert (= (and b!1782982 res!803784) b!1782986))

(assert (= (and b!1782986 res!803783) b!1783003))

(assert (= (and b!1783003 res!803788) b!1783012))

(assert (= (and b!1783012 res!803786) b!1782998))

(assert (= (and b!1782998 res!803790) b!1783007))

(assert (= (and b!1783007 res!803782) b!1782992))

(assert (= (and b!1782992 (not res!803781)) b!1783010))

(assert (= (and b!1783010 (not res!803804)) b!1782979))

(assert (= (and b!1782979 (not res!803795)) b!1782983))

(assert (= (and b!1782983 res!803803) b!1782994))

(assert (= (and b!1782994 res!803789) b!1783008))

(assert (= (and b!1782983 (not res!803787)) b!1783001))

(assert (= (and b!1783001 (not res!803780)) b!1782974))

(assert (= (and b!1782974 (not res!803805)) b!1782988))

(assert (= (and b!1782988 (not res!803802)) b!1782991))

(assert (= (and b!1782991 (not res!803797)) b!1782997))

(assert (= (and b!1782997 (not res!803806)) b!1783011))

(assert (= (and b!1783011 (not res!803798)) b!1782976))

(assert (= (and b!1782976 c!290028) b!1782993))

(assert (= (and b!1782976 (not c!290028)) b!1783005))

(assert (= (and b!1782976 (not res!803796)) b!1782995))

(assert (= (and b!1782995 c!290029) b!1782984))

(assert (= (and b!1782995 (not c!290029)) b!1782978))

(assert (= (and b!1782995 (not res!803801)) b!1782975))

(assert (= (and b!1782975 (not res!803799)) b!1782977))

(assert (= (and b!1782977 (not res!803792)) b!1782989))

(assert (= (and b!1782989 (not res!803794)) b!1782996))

(assert (= (and b!1782996 (not res!803800)) b!1782981))

(assert (= (and b!1782981 (not res!803791)) b!1783009))

(assert (= (and start!177490 ((_ is Cons!19651) suffix!1421)) b!1783006))

(assert (= b!1782987 b!1783004))

(assert (= start!177490 b!1782987))

(assert (= b!1783002 b!1782980))

(assert (= b!1783000 b!1783002))

(assert (= start!177490 b!1783000))

(assert (= b!1783013 b!1782990))

(assert (= b!1782985 b!1783013))

(assert (= (and start!177490 ((_ is Cons!19652) rules!3447)) b!1782985))

(declare-fun b_lambda!58419 () Bool)

(assert (=> (not b_lambda!58419) (not b!1782988)))

(declare-fun tb!108431 () Bool)

(declare-fun t!166742 () Bool)

(assert (=> (and b!1782980 (= (toChars!4907 (transformation!3521 (rule!5601 token!523))) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166742) tb!108431))

(declare-fun e!1141114 () Bool)

(declare-fun tp!504641 () Bool)

(declare-fun b!1783029 () Bool)

(declare-fun inv!25582 (Conc!6537) Bool)

(assert (=> b!1783029 (= e!1141114 (and (inv!25582 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366)))) tp!504641))))

(declare-fun result!130458 () Bool)

(declare-fun inv!25583 (BalanceConc!13018) Bool)

(assert (=> tb!108431 (= result!130458 (and (inv!25583 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366))) e!1141114))))

(assert (= tb!108431 b!1783029))

(declare-fun m!2205595 () Bool)

(assert (=> b!1783029 m!2205595))

(declare-fun m!2205597 () Bool)

(assert (=> tb!108431 m!2205597))

(assert (=> b!1782988 t!166742))

(declare-fun b_and!136875 () Bool)

(assert (= b_and!136865 (and (=> t!166742 result!130458) b_and!136875)))

(declare-fun t!166744 () Bool)

(declare-fun tb!108433 () Bool)

(assert (=> (and b!1782990 (= (toChars!4907 (transformation!3521 (h!25053 rules!3447))) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166744) tb!108433))

(declare-fun result!130462 () Bool)

(assert (= result!130462 result!130458))

(assert (=> b!1782988 t!166744))

(declare-fun b_and!136877 () Bool)

(assert (= b_and!136869 (and (=> t!166744 result!130462) b_and!136877)))

(declare-fun tb!108435 () Bool)

(declare-fun t!166746 () Bool)

(assert (=> (and b!1783004 (= (toChars!4907 (transformation!3521 rule!422)) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166746) tb!108435))

(declare-fun result!130464 () Bool)

(assert (= result!130464 result!130458))

(assert (=> b!1782988 t!166746))

(declare-fun b_and!136879 () Bool)

(assert (= b_and!136873 (and (=> t!166746 result!130464) b_and!136879)))

(declare-fun b_lambda!58421 () Bool)

(assert (=> (not b_lambda!58421) (not b!1782988)))

(declare-fun t!166748 () Bool)

(declare-fun tb!108437 () Bool)

(assert (=> (and b!1782980 (= (toValue!5048 (transformation!3521 (rule!5601 token!523))) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166748) tb!108437))

(declare-fun result!130466 () Bool)

(assert (=> tb!108437 (= result!130466 (inv!21 (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366)))))

(declare-fun m!2205599 () Bool)

(assert (=> tb!108437 m!2205599))

(assert (=> b!1782988 t!166748))

(declare-fun b_and!136881 () Bool)

(assert (= b_and!136863 (and (=> t!166748 result!130466) b_and!136881)))

(declare-fun t!166750 () Bool)

(declare-fun tb!108439 () Bool)

(assert (=> (and b!1782990 (= (toValue!5048 (transformation!3521 (h!25053 rules!3447))) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166750) tb!108439))

(declare-fun result!130470 () Bool)

(assert (= result!130470 result!130466))

(assert (=> b!1782988 t!166750))

(declare-fun b_and!136883 () Bool)

(assert (= b_and!136867 (and (=> t!166750 result!130470) b_and!136883)))

(declare-fun tb!108441 () Bool)

(declare-fun t!166752 () Bool)

(assert (=> (and b!1783004 (= (toValue!5048 (transformation!3521 rule!422)) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166752) tb!108441))

(declare-fun result!130472 () Bool)

(assert (= result!130472 result!130466))

(assert (=> b!1782988 t!166752))

(declare-fun b_and!136885 () Bool)

(assert (= b_and!136871 (and (=> t!166752 result!130472) b_and!136885)))

(declare-fun b_lambda!58423 () Bool)

(assert (=> (not b_lambda!58423) (not b!1782991)))

(declare-fun tb!108443 () Bool)

(declare-fun t!166754 () Bool)

(assert (=> (and b!1782980 (= (toChars!4907 (transformation!3521 (rule!5601 token!523))) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166754) tb!108443))

(declare-fun b!1783032 () Bool)

(declare-fun e!1141118 () Bool)

(declare-fun tp!504642 () Bool)

(assert (=> b!1783032 (= e!1141118 (and (inv!25582 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (value!110021 (_1!11023 lt!693369))))) tp!504642))))

(declare-fun result!130474 () Bool)

(assert (=> tb!108443 (= result!130474 (and (inv!25583 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (value!110021 (_1!11023 lt!693369)))) e!1141118))))

(assert (= tb!108443 b!1783032))

(declare-fun m!2205601 () Bool)

(assert (=> b!1783032 m!2205601))

(declare-fun m!2205603 () Bool)

(assert (=> tb!108443 m!2205603))

(assert (=> b!1782991 t!166754))

(declare-fun b_and!136887 () Bool)

(assert (= b_and!136875 (and (=> t!166754 result!130474) b_and!136887)))

(declare-fun t!166756 () Bool)

(declare-fun tb!108445 () Bool)

(assert (=> (and b!1782990 (= (toChars!4907 (transformation!3521 (h!25053 rules!3447))) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166756) tb!108445))

(declare-fun result!130476 () Bool)

(assert (= result!130476 result!130474))

(assert (=> b!1782991 t!166756))

(declare-fun b_and!136889 () Bool)

(assert (= b_and!136877 (and (=> t!166756 result!130476) b_and!136889)))

(declare-fun tb!108447 () Bool)

(declare-fun t!166758 () Bool)

(assert (=> (and b!1783004 (= (toChars!4907 (transformation!3521 rule!422)) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166758) tb!108447))

(declare-fun result!130478 () Bool)

(assert (= result!130478 result!130474))

(assert (=> b!1782991 t!166758))

(declare-fun b_and!136891 () Bool)

(assert (= b_and!136879 (and (=> t!166758 result!130478) b_and!136891)))

(declare-fun m!2205605 () Bool)

(assert (=> b!1782976 m!2205605))

(declare-fun m!2205607 () Bool)

(assert (=> b!1782976 m!2205607))

(declare-fun m!2205609 () Bool)

(assert (=> b!1782976 m!2205609))

(declare-fun m!2205611 () Bool)

(assert (=> b!1782982 m!2205611))

(declare-fun m!2205613 () Bool)

(assert (=> b!1782983 m!2205613))

(declare-fun m!2205615 () Bool)

(assert (=> b!1782983 m!2205615))

(declare-fun m!2205617 () Bool)

(assert (=> b!1782983 m!2205617))

(declare-fun m!2205619 () Bool)

(assert (=> b!1782983 m!2205619))

(declare-fun m!2205621 () Bool)

(assert (=> b!1782983 m!2205621))

(declare-fun m!2205623 () Bool)

(assert (=> b!1782983 m!2205623))

(declare-fun m!2205625 () Bool)

(assert (=> b!1782983 m!2205625))

(declare-fun m!2205627 () Bool)

(assert (=> b!1782983 m!2205627))

(declare-fun m!2205629 () Bool)

(assert (=> b!1782983 m!2205629))

(declare-fun m!2205631 () Bool)

(assert (=> b!1782983 m!2205631))

(declare-fun m!2205633 () Bool)

(assert (=> b!1782983 m!2205633))

(declare-fun m!2205635 () Bool)

(assert (=> b!1782983 m!2205635))

(declare-fun m!2205637 () Bool)

(assert (=> b!1782983 m!2205637))

(assert (=> b!1782983 m!2205623))

(declare-fun m!2205639 () Bool)

(assert (=> b!1782983 m!2205639))

(declare-fun m!2205641 () Bool)

(assert (=> b!1782983 m!2205641))

(declare-fun m!2205643 () Bool)

(assert (=> b!1782997 m!2205643))

(declare-fun m!2205645 () Bool)

(assert (=> b!1782997 m!2205645))

(declare-fun m!2205647 () Bool)

(assert (=> b!1782997 m!2205647))

(declare-fun m!2205649 () Bool)

(assert (=> b!1782997 m!2205649))

(declare-fun m!2205651 () Bool)

(assert (=> b!1782997 m!2205651))

(assert (=> b!1782997 m!2205649))

(declare-fun m!2205653 () Bool)

(assert (=> b!1783012 m!2205653))

(declare-fun m!2205655 () Bool)

(assert (=> b!1782992 m!2205655))

(declare-fun m!2205657 () Bool)

(assert (=> b!1782992 m!2205657))

(declare-fun m!2205659 () Bool)

(assert (=> b!1782992 m!2205659))

(declare-fun m!2205661 () Bool)

(assert (=> b!1782981 m!2205661))

(declare-fun m!2205663 () Bool)

(assert (=> b!1782986 m!2205663))

(declare-fun m!2205665 () Bool)

(assert (=> b!1783001 m!2205665))

(declare-fun m!2205667 () Bool)

(assert (=> b!1782989 m!2205667))

(declare-fun m!2205669 () Bool)

(assert (=> b!1782998 m!2205669))

(declare-fun m!2205671 () Bool)

(assert (=> b!1783013 m!2205671))

(declare-fun m!2205673 () Bool)

(assert (=> b!1783013 m!2205673))

(declare-fun m!2205675 () Bool)

(assert (=> b!1783000 m!2205675))

(declare-fun m!2205677 () Bool)

(assert (=> b!1782996 m!2205677))

(declare-fun m!2205679 () Bool)

(assert (=> b!1782977 m!2205679))

(declare-fun m!2205681 () Bool)

(assert (=> b!1782977 m!2205681))

(declare-fun m!2205683 () Bool)

(assert (=> b!1783002 m!2205683))

(declare-fun m!2205685 () Bool)

(assert (=> b!1783002 m!2205685))

(declare-fun m!2205687 () Bool)

(assert (=> b!1782975 m!2205687))

(declare-fun m!2205689 () Bool)

(assert (=> b!1782975 m!2205689))

(declare-fun m!2205691 () Bool)

(assert (=> b!1782984 m!2205691))

(declare-fun m!2205693 () Bool)

(assert (=> b!1782999 m!2205693))

(declare-fun m!2205695 () Bool)

(assert (=> b!1783010 m!2205695))

(assert (=> b!1782994 m!2205633))

(assert (=> b!1782994 m!2205633))

(declare-fun m!2205697 () Bool)

(assert (=> b!1782994 m!2205697))

(assert (=> b!1782994 m!2205697))

(declare-fun m!2205699 () Bool)

(assert (=> b!1782994 m!2205699))

(declare-fun m!2205701 () Bool)

(assert (=> b!1782994 m!2205701))

(declare-fun m!2205703 () Bool)

(assert (=> b!1782974 m!2205703))

(declare-fun m!2205705 () Bool)

(assert (=> b!1782974 m!2205705))

(declare-fun m!2205707 () Bool)

(assert (=> b!1783011 m!2205707))

(declare-fun m!2205709 () Bool)

(assert (=> b!1783011 m!2205709))

(declare-fun m!2205711 () Bool)

(assert (=> b!1783011 m!2205711))

(declare-fun m!2205713 () Bool)

(assert (=> b!1783011 m!2205713))

(declare-fun m!2205715 () Bool)

(assert (=> b!1783011 m!2205715))

(declare-fun m!2205717 () Bool)

(assert (=> b!1783011 m!2205717))

(declare-fun m!2205719 () Bool)

(assert (=> b!1783011 m!2205719))

(declare-fun m!2205721 () Bool)

(assert (=> b!1782993 m!2205721))

(declare-fun m!2205723 () Bool)

(assert (=> b!1782993 m!2205723))

(declare-fun m!2205725 () Bool)

(assert (=> b!1782993 m!2205725))

(declare-fun m!2205727 () Bool)

(assert (=> b!1782993 m!2205727))

(declare-fun m!2205729 () Bool)

(assert (=> b!1782993 m!2205729))

(declare-fun m!2205731 () Bool)

(assert (=> b!1782993 m!2205731))

(declare-fun m!2205733 () Bool)

(assert (=> b!1782993 m!2205733))

(declare-fun m!2205735 () Bool)

(assert (=> b!1782993 m!2205735))

(declare-fun m!2205737 () Bool)

(assert (=> b!1782993 m!2205737))

(assert (=> b!1782993 m!2205733))

(declare-fun m!2205739 () Bool)

(assert (=> b!1782993 m!2205739))

(declare-fun m!2205741 () Bool)

(assert (=> b!1782993 m!2205741))

(declare-fun m!2205743 () Bool)

(assert (=> b!1782979 m!2205743))

(declare-fun m!2205745 () Bool)

(assert (=> b!1782979 m!2205745))

(declare-fun m!2205747 () Bool)

(assert (=> b!1782979 m!2205747))

(declare-fun m!2205749 () Bool)

(assert (=> b!1782979 m!2205749))

(declare-fun m!2205751 () Bool)

(assert (=> b!1783003 m!2205751))

(declare-fun m!2205753 () Bool)

(assert (=> b!1783003 m!2205753))

(declare-fun m!2205755 () Bool)

(assert (=> b!1783003 m!2205755))

(declare-fun m!2205757 () Bool)

(assert (=> b!1783003 m!2205757))

(declare-fun m!2205759 () Bool)

(assert (=> start!177490 m!2205759))

(declare-fun m!2205761 () Bool)

(assert (=> b!1783009 m!2205761))

(declare-fun m!2205763 () Bool)

(assert (=> b!1782988 m!2205763))

(assert (=> b!1782988 m!2205763))

(declare-fun m!2205765 () Bool)

(assert (=> b!1782988 m!2205765))

(assert (=> b!1782988 m!2205765))

(declare-fun m!2205767 () Bool)

(assert (=> b!1782988 m!2205767))

(declare-fun m!2205769 () Bool)

(assert (=> b!1782988 m!2205769))

(declare-fun m!2205771 () Bool)

(assert (=> b!1782991 m!2205771))

(declare-fun m!2205773 () Bool)

(assert (=> b!1782987 m!2205773))

(declare-fun m!2205775 () Bool)

(assert (=> b!1782987 m!2205775))

(check-sat (not b!1783032) b_and!136881 (not b!1782986) (not b_next!50215) (not b!1782998) (not b!1783003) (not start!177490) (not b_next!50225) (not b!1782994) (not b!1783001) (not b!1782984) (not b!1782997) (not b!1782982) (not b_lambda!58423) (not b!1782993) (not b!1782987) (not b!1782979) b_and!136887 (not tb!108431) (not b!1782976) (not b!1783009) (not tb!108443) b_and!136889 (not b!1782989) (not b!1782975) (not b!1782974) (not b_next!50217) (not b!1783029) (not b_next!50221) (not b!1783012) (not b!1782977) (not b!1782985) (not b!1783006) b_and!136885 (not b!1783002) (not b_next!50219) tp_is_empty!7941 b_and!136883 (not b_lambda!58421) (not tb!108437) (not b_lambda!58419) (not b!1782988) (not b!1783000) (not b!1782983) (not b!1783013) (not b!1782981) b_and!136891 (not b!1783010) (not b!1782992) (not b!1782996) (not b_next!50223) (not b!1782999) (not b!1783011))
(check-sat b_and!136881 b_and!136887 b_and!136889 (not b_next!50217) (not b_next!50221) (not b_next!50215) b_and!136883 (not b_next!50225) b_and!136891 (not b_next!50223) b_and!136885 (not b_next!50219))
(get-model)

(declare-fun d!544403 () Bool)

(declare-fun c!290063 () Bool)

(assert (=> d!544403 (= c!290063 ((_ is Node!6537) (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366)))))))

(declare-fun e!1141194 () Bool)

(assert (=> d!544403 (= (inv!25582 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366)))) e!1141194)))

(declare-fun b!1783162 () Bool)

(declare-fun inv!25586 (Conc!6537) Bool)

(assert (=> b!1783162 (= e!1141194 (inv!25586 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366)))))))

(declare-fun b!1783163 () Bool)

(declare-fun e!1141195 () Bool)

(assert (=> b!1783163 (= e!1141194 e!1141195)))

(declare-fun res!803870 () Bool)

(assert (=> b!1783163 (= res!803870 (not ((_ is Leaf!9518) (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366))))))))

(assert (=> b!1783163 (=> res!803870 e!1141195)))

(declare-fun b!1783164 () Bool)

(declare-fun inv!25587 (Conc!6537) Bool)

(assert (=> b!1783164 (= e!1141195 (inv!25587 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366)))))))

(assert (= (and d!544403 c!290063) b!1783162))

(assert (= (and d!544403 (not c!290063)) b!1783163))

(assert (= (and b!1783163 (not res!803870)) b!1783164))

(declare-fun m!2205911 () Bool)

(assert (=> b!1783162 m!2205911))

(declare-fun m!2205913 () Bool)

(assert (=> b!1783164 m!2205913))

(assert (=> b!1783029 d!544403))

(declare-fun d!544405 () Bool)

(assert (=> d!544405 (not (matchR!2322 (regex!3521 rule!422) lt!693367))))

(declare-fun lt!693442 () Unit!33967)

(declare-fun choose!11213 (LexerInterface!3150 List!19722 Rule!6842 List!19721 List!19721 List!19721 Rule!6842) Unit!33967)

(assert (=> d!544405 (= lt!693442 (choose!11213 thiss!24550 rules!3447 (rule!5601 (_1!11023 lt!693369)) lt!693405 lt!693407 lt!693367 rule!422))))

(assert (=> d!544405 (isPrefix!1761 lt!693405 lt!693407)))

(assert (=> d!544405 (= (lemmaMaxPrefixOutputsMaxPrefix!230 thiss!24550 rules!3447 (rule!5601 (_1!11023 lt!693369)) lt!693405 lt!693407 lt!693367 rule!422) lt!693442)))

(declare-fun bs!405271 () Bool)

(assert (= bs!405271 d!544405))

(assert (=> bs!405271 m!2205655))

(declare-fun m!2205915 () Bool)

(assert (=> bs!405271 m!2205915))

(assert (=> bs!405271 m!2205635))

(assert (=> b!1782984 d!544405))

(declare-fun e!1141201 () Bool)

(declare-fun b!1783176 () Bool)

(declare-fun lt!693445 () List!19721)

(assert (=> b!1783176 (= e!1141201 (or (not (= suffix!1421 Nil!19651)) (= lt!693445 lt!693367)))))

(declare-fun b!1783173 () Bool)

(declare-fun e!1141200 () List!19721)

(assert (=> b!1783173 (= e!1141200 suffix!1421)))

(declare-fun b!1783174 () Bool)

(assert (=> b!1783174 (= e!1141200 (Cons!19651 (h!25052 lt!693367) (++!5345 (t!166760 lt!693367) suffix!1421)))))

(declare-fun d!544407 () Bool)

(assert (=> d!544407 e!1141201))

(declare-fun res!803875 () Bool)

(assert (=> d!544407 (=> (not res!803875) (not e!1141201))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2862 (List!19721) (InoxSet C!9872))

(assert (=> d!544407 (= res!803875 (= (content!2862 lt!693445) ((_ map or) (content!2862 lt!693367) (content!2862 suffix!1421))))))

(assert (=> d!544407 (= lt!693445 e!1141200)))

(declare-fun c!290066 () Bool)

(assert (=> d!544407 (= c!290066 ((_ is Nil!19651) lt!693367))))

(assert (=> d!544407 (= (++!5345 lt!693367 suffix!1421) lt!693445)))

(declare-fun b!1783175 () Bool)

(declare-fun res!803876 () Bool)

(assert (=> b!1783175 (=> (not res!803876) (not e!1141201))))

(assert (=> b!1783175 (= res!803876 (= (size!15612 lt!693445) (+ (size!15612 lt!693367) (size!15612 suffix!1421))))))

(assert (= (and d!544407 c!290066) b!1783173))

(assert (= (and d!544407 (not c!290066)) b!1783174))

(assert (= (and d!544407 res!803875) b!1783175))

(assert (= (and b!1783175 res!803876) b!1783176))

(declare-fun m!2205917 () Bool)

(assert (=> b!1783174 m!2205917))

(declare-fun m!2205919 () Bool)

(assert (=> d!544407 m!2205919))

(declare-fun m!2205921 () Bool)

(assert (=> d!544407 m!2205921))

(declare-fun m!2205923 () Bool)

(assert (=> d!544407 m!2205923))

(declare-fun m!2205925 () Bool)

(assert (=> b!1783175 m!2205925))

(declare-fun m!2205927 () Bool)

(assert (=> b!1783175 m!2205927))

(declare-fun m!2205929 () Bool)

(assert (=> b!1783175 m!2205929))

(assert (=> b!1782983 d!544407))

(declare-fun b!1783180 () Bool)

(declare-fun lt!693446 () List!19721)

(declare-fun e!1141203 () Bool)

(assert (=> b!1783180 (= e!1141203 (or (not (= (_2!11023 lt!693369) Nil!19651)) (= lt!693446 lt!693405)))))

(declare-fun b!1783177 () Bool)

(declare-fun e!1141202 () List!19721)

(assert (=> b!1783177 (= e!1141202 (_2!11023 lt!693369))))

(declare-fun b!1783178 () Bool)

(assert (=> b!1783178 (= e!1141202 (Cons!19651 (h!25052 lt!693405) (++!5345 (t!166760 lt!693405) (_2!11023 lt!693369))))))

(declare-fun d!544409 () Bool)

(assert (=> d!544409 e!1141203))

(declare-fun res!803877 () Bool)

(assert (=> d!544409 (=> (not res!803877) (not e!1141203))))

(assert (=> d!544409 (= res!803877 (= (content!2862 lt!693446) ((_ map or) (content!2862 lt!693405) (content!2862 (_2!11023 lt!693369)))))))

(assert (=> d!544409 (= lt!693446 e!1141202)))

(declare-fun c!290067 () Bool)

(assert (=> d!544409 (= c!290067 ((_ is Nil!19651) lt!693405))))

(assert (=> d!544409 (= (++!5345 lt!693405 (_2!11023 lt!693369)) lt!693446)))

(declare-fun b!1783179 () Bool)

(declare-fun res!803878 () Bool)

(assert (=> b!1783179 (=> (not res!803878) (not e!1141203))))

(assert (=> b!1783179 (= res!803878 (= (size!15612 lt!693446) (+ (size!15612 lt!693405) (size!15612 (_2!11023 lt!693369)))))))

(assert (= (and d!544409 c!290067) b!1783177))

(assert (= (and d!544409 (not c!290067)) b!1783178))

(assert (= (and d!544409 res!803877) b!1783179))

(assert (= (and b!1783179 res!803878) b!1783180))

(declare-fun m!2205931 () Bool)

(assert (=> b!1783178 m!2205931))

(declare-fun m!2205933 () Bool)

(assert (=> d!544409 m!2205933))

(declare-fun m!2205935 () Bool)

(assert (=> d!544409 m!2205935))

(declare-fun m!2205937 () Bool)

(assert (=> d!544409 m!2205937))

(declare-fun m!2205939 () Bool)

(assert (=> b!1783179 m!2205939))

(assert (=> b!1783179 m!2205707))

(declare-fun m!2205941 () Bool)

(assert (=> b!1783179 m!2205941))

(assert (=> b!1782983 d!544409))

(declare-fun b!1783190 () Bool)

(declare-fun res!803887 () Bool)

(declare-fun e!1141211 () Bool)

(assert (=> b!1783190 (=> (not res!803887) (not e!1141211))))

(assert (=> b!1783190 (= res!803887 (= (head!4170 lt!693405) (head!4170 (++!5345 lt!693405 (_2!11023 lt!693369)))))))

(declare-fun b!1783191 () Bool)

(declare-fun tail!2669 (List!19721) List!19721)

(assert (=> b!1783191 (= e!1141211 (isPrefix!1761 (tail!2669 lt!693405) (tail!2669 (++!5345 lt!693405 (_2!11023 lt!693369)))))))

(declare-fun b!1783192 () Bool)

(declare-fun e!1141210 () Bool)

(assert (=> b!1783192 (= e!1141210 (>= (size!15612 (++!5345 lt!693405 (_2!11023 lt!693369))) (size!15612 lt!693405)))))

(declare-fun b!1783189 () Bool)

(declare-fun e!1141212 () Bool)

(assert (=> b!1783189 (= e!1141212 e!1141211)))

(declare-fun res!803888 () Bool)

(assert (=> b!1783189 (=> (not res!803888) (not e!1141211))))

(assert (=> b!1783189 (= res!803888 (not ((_ is Nil!19651) (++!5345 lt!693405 (_2!11023 lt!693369)))))))

(declare-fun d!544411 () Bool)

(assert (=> d!544411 e!1141210))

(declare-fun res!803890 () Bool)

(assert (=> d!544411 (=> res!803890 e!1141210)))

(declare-fun lt!693449 () Bool)

(assert (=> d!544411 (= res!803890 (not lt!693449))))

(assert (=> d!544411 (= lt!693449 e!1141212)))

(declare-fun res!803889 () Bool)

(assert (=> d!544411 (=> res!803889 e!1141212)))

(assert (=> d!544411 (= res!803889 ((_ is Nil!19651) lt!693405))))

(assert (=> d!544411 (= (isPrefix!1761 lt!693405 (++!5345 lt!693405 (_2!11023 lt!693369))) lt!693449)))

(assert (= (and d!544411 (not res!803889)) b!1783189))

(assert (= (and b!1783189 res!803888) b!1783190))

(assert (= (and b!1783190 res!803887) b!1783191))

(assert (= (and d!544411 (not res!803890)) b!1783192))

(declare-fun m!2205943 () Bool)

(assert (=> b!1783190 m!2205943))

(assert (=> b!1783190 m!2205623))

(declare-fun m!2205945 () Bool)

(assert (=> b!1783190 m!2205945))

(declare-fun m!2205947 () Bool)

(assert (=> b!1783191 m!2205947))

(assert (=> b!1783191 m!2205623))

(declare-fun m!2205949 () Bool)

(assert (=> b!1783191 m!2205949))

(assert (=> b!1783191 m!2205947))

(assert (=> b!1783191 m!2205949))

(declare-fun m!2205951 () Bool)

(assert (=> b!1783191 m!2205951))

(assert (=> b!1783192 m!2205623))

(declare-fun m!2205953 () Bool)

(assert (=> b!1783192 m!2205953))

(assert (=> b!1783192 m!2205707))

(assert (=> b!1782983 d!544411))

(declare-fun b!1783220 () Bool)

(declare-fun res!803915 () Bool)

(declare-fun e!1141223 () Bool)

(assert (=> b!1783220 (=> (not res!803915) (not e!1141223))))

(declare-fun lt!693496 () Option!4065)

(assert (=> b!1783220 (= res!803915 (= (value!110021 (_1!11023 (get!6042 lt!693496))) (apply!5321 (transformation!3521 (rule!5601 (_1!11023 (get!6042 lt!693496)))) (seqFromList!2490 (originalCharacters!4335 (_1!11023 (get!6042 lt!693496)))))))))

(declare-fun b!1783221 () Bool)

(declare-fun e!1141225 () Bool)

(assert (=> b!1783221 (= e!1141225 e!1141223)))

(declare-fun res!803910 () Bool)

(assert (=> b!1783221 (=> (not res!803910) (not e!1141223))))

(assert (=> b!1783221 (= res!803910 (isDefined!3408 lt!693496))))

(declare-fun b!1783222 () Bool)

(assert (=> b!1783222 (= e!1141223 (contains!3553 rules!3447 (rule!5601 (_1!11023 (get!6042 lt!693496)))))))

(declare-fun b!1783223 () Bool)

(declare-fun res!803913 () Bool)

(assert (=> b!1783223 (=> (not res!803913) (not e!1141223))))

(assert (=> b!1783223 (= res!803913 (= (list!7991 (charsOf!2170 (_1!11023 (get!6042 lt!693496)))) (originalCharacters!4335 (_1!11023 (get!6042 lt!693496)))))))

(declare-fun b!1783224 () Bool)

(declare-fun res!803909 () Bool)

(assert (=> b!1783224 (=> (not res!803909) (not e!1141223))))

(assert (=> b!1783224 (= res!803909 (= (++!5345 (list!7991 (charsOf!2170 (_1!11023 (get!6042 lt!693496)))) (_2!11023 (get!6042 lt!693496))) lt!693407))))

(declare-fun b!1783225 () Bool)

(declare-fun res!803914 () Bool)

(assert (=> b!1783225 (=> (not res!803914) (not e!1141223))))

(assert (=> b!1783225 (= res!803914 (< (size!15612 (_2!11023 (get!6042 lt!693496))) (size!15612 lt!693407)))))

(declare-fun call!111325 () Option!4065)

(declare-fun bm!111320 () Bool)

(assert (=> bm!111320 (= call!111325 (maxPrefixOneRule!1073 thiss!24550 (h!25053 rules!3447) lt!693407))))

(declare-fun b!1783226 () Bool)

(declare-fun e!1141224 () Option!4065)

(declare-fun lt!693494 () Option!4065)

(declare-fun lt!693497 () Option!4065)

(assert (=> b!1783226 (= e!1141224 (ite (and ((_ is None!4064) lt!693494) ((_ is None!4064) lt!693497)) None!4064 (ite ((_ is None!4064) lt!693497) lt!693494 (ite ((_ is None!4064) lt!693494) lt!693497 (ite (>= (size!15610 (_1!11023 (v!25557 lt!693494))) (size!15610 (_1!11023 (v!25557 lt!693497)))) lt!693494 lt!693497)))))))

(assert (=> b!1783226 (= lt!693494 call!111325)))

(assert (=> b!1783226 (= lt!693497 (maxPrefix!1704 thiss!24550 (t!166761 rules!3447) lt!693407))))

(declare-fun b!1783227 () Bool)

(declare-fun res!803911 () Bool)

(assert (=> b!1783227 (=> (not res!803911) (not e!1141223))))

(assert (=> b!1783227 (= res!803911 (matchR!2322 (regex!3521 (rule!5601 (_1!11023 (get!6042 lt!693496)))) (list!7991 (charsOf!2170 (_1!11023 (get!6042 lt!693496))))))))

(declare-fun d!544413 () Bool)

(assert (=> d!544413 e!1141225))

(declare-fun res!803912 () Bool)

(assert (=> d!544413 (=> res!803912 e!1141225)))

(declare-fun isEmpty!12422 (Option!4065) Bool)

(assert (=> d!544413 (= res!803912 (isEmpty!12422 lt!693496))))

(assert (=> d!544413 (= lt!693496 e!1141224)))

(declare-fun c!290072 () Bool)

(assert (=> d!544413 (= c!290072 (and ((_ is Cons!19652) rules!3447) ((_ is Nil!19652) (t!166761 rules!3447))))))

(declare-fun lt!693495 () Unit!33967)

(declare-fun lt!693498 () Unit!33967)

(assert (=> d!544413 (= lt!693495 lt!693498)))

(assert (=> d!544413 (isPrefix!1761 lt!693407 lt!693407)))

(declare-fun lemmaIsPrefixRefl!1162 (List!19721 List!19721) Unit!33967)

(assert (=> d!544413 (= lt!693498 (lemmaIsPrefixRefl!1162 lt!693407 lt!693407))))

(declare-fun rulesValidInductive!1198 (LexerInterface!3150 List!19722) Bool)

(assert (=> d!544413 (rulesValidInductive!1198 thiss!24550 rules!3447)))

(assert (=> d!544413 (= (maxPrefix!1704 thiss!24550 rules!3447 lt!693407) lt!693496)))

(declare-fun b!1783219 () Bool)

(assert (=> b!1783219 (= e!1141224 call!111325)))

(assert (= (and d!544413 c!290072) b!1783219))

(assert (= (and d!544413 (not c!290072)) b!1783226))

(assert (= (or b!1783219 b!1783226) bm!111320))

(assert (= (and d!544413 (not res!803912)) b!1783221))

(assert (= (and b!1783221 res!803910) b!1783223))

(assert (= (and b!1783223 res!803913) b!1783225))

(assert (= (and b!1783225 res!803914) b!1783224))

(assert (= (and b!1783224 res!803909) b!1783220))

(assert (= (and b!1783220 res!803915) b!1783227))

(assert (= (and b!1783227 res!803911) b!1783222))

(declare-fun m!2205955 () Bool)

(assert (=> b!1783223 m!2205955))

(declare-fun m!2205957 () Bool)

(assert (=> b!1783223 m!2205957))

(assert (=> b!1783223 m!2205957))

(declare-fun m!2205959 () Bool)

(assert (=> b!1783223 m!2205959))

(assert (=> b!1783227 m!2205955))

(assert (=> b!1783227 m!2205957))

(assert (=> b!1783227 m!2205957))

(assert (=> b!1783227 m!2205959))

(assert (=> b!1783227 m!2205959))

(declare-fun m!2205961 () Bool)

(assert (=> b!1783227 m!2205961))

(assert (=> b!1783222 m!2205955))

(declare-fun m!2205963 () Bool)

(assert (=> b!1783222 m!2205963))

(assert (=> b!1783220 m!2205955))

(declare-fun m!2205965 () Bool)

(assert (=> b!1783220 m!2205965))

(assert (=> b!1783220 m!2205965))

(declare-fun m!2205967 () Bool)

(assert (=> b!1783220 m!2205967))

(assert (=> b!1783224 m!2205955))

(assert (=> b!1783224 m!2205957))

(assert (=> b!1783224 m!2205957))

(assert (=> b!1783224 m!2205959))

(assert (=> b!1783224 m!2205959))

(declare-fun m!2205969 () Bool)

(assert (=> b!1783224 m!2205969))

(declare-fun m!2205971 () Bool)

(assert (=> b!1783226 m!2205971))

(declare-fun m!2205973 () Bool)

(assert (=> b!1783221 m!2205973))

(declare-fun m!2205975 () Bool)

(assert (=> bm!111320 m!2205975))

(declare-fun m!2205977 () Bool)

(assert (=> d!544413 m!2205977))

(declare-fun m!2205979 () Bool)

(assert (=> d!544413 m!2205979))

(declare-fun m!2205981 () Bool)

(assert (=> d!544413 m!2205981))

(declare-fun m!2205983 () Bool)

(assert (=> d!544413 m!2205983))

(assert (=> b!1783225 m!2205955))

(declare-fun m!2205985 () Bool)

(assert (=> b!1783225 m!2205985))

(declare-fun m!2205987 () Bool)

(assert (=> b!1783225 m!2205987))

(assert (=> b!1782983 d!544413))

(declare-fun d!544415 () Bool)

(declare-fun lt!693501 () BalanceConc!13018)

(assert (=> d!544415 (= (list!7991 lt!693501) (originalCharacters!4335 (_1!11023 lt!693369)))))

(assert (=> d!544415 (= lt!693501 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (value!110021 (_1!11023 lt!693369))))))

(assert (=> d!544415 (= (charsOf!2170 (_1!11023 lt!693369)) lt!693501)))

(declare-fun b_lambda!58431 () Bool)

(assert (=> (not b_lambda!58431) (not d!544415)))

(assert (=> d!544415 t!166754))

(declare-fun b_and!136911 () Bool)

(assert (= b_and!136887 (and (=> t!166754 result!130474) b_and!136911)))

(assert (=> d!544415 t!166756))

(declare-fun b_and!136913 () Bool)

(assert (= b_and!136889 (and (=> t!166756 result!130476) b_and!136913)))

(assert (=> d!544415 t!166758))

(declare-fun b_and!136915 () Bool)

(assert (= b_and!136891 (and (=> t!166758 result!130478) b_and!136915)))

(declare-fun m!2205989 () Bool)

(assert (=> d!544415 m!2205989))

(assert (=> d!544415 m!2205771))

(assert (=> b!1782983 d!544415))

(declare-fun d!544417 () Bool)

(assert (=> d!544417 (= (get!6042 lt!693387) (v!25557 lt!693387))))

(assert (=> b!1782983 d!544417))

(declare-fun b!1783229 () Bool)

(declare-fun res!803918 () Bool)

(declare-fun e!1141229 () Bool)

(assert (=> b!1783229 (=> (not res!803918) (not e!1141229))))

(assert (=> b!1783229 (= res!803918 (= (head!4170 lt!693367) (head!4170 lt!693407)))))

(declare-fun b!1783230 () Bool)

(assert (=> b!1783230 (= e!1141229 (isPrefix!1761 (tail!2669 lt!693367) (tail!2669 lt!693407)))))

(declare-fun b!1783232 () Bool)

(declare-fun e!1141228 () Bool)

(assert (=> b!1783232 (= e!1141228 (>= (size!15612 lt!693407) (size!15612 lt!693367)))))

(declare-fun b!1783228 () Bool)

(declare-fun e!1141230 () Bool)

(assert (=> b!1783228 (= e!1141230 e!1141229)))

(declare-fun res!803919 () Bool)

(assert (=> b!1783228 (=> (not res!803919) (not e!1141229))))

(assert (=> b!1783228 (= res!803919 (not ((_ is Nil!19651) lt!693407)))))

(declare-fun d!544419 () Bool)

(assert (=> d!544419 e!1141228))

(declare-fun res!803921 () Bool)

(assert (=> d!544419 (=> res!803921 e!1141228)))

(declare-fun lt!693511 () Bool)

(assert (=> d!544419 (= res!803921 (not lt!693511))))

(assert (=> d!544419 (= lt!693511 e!1141230)))

(declare-fun res!803920 () Bool)

(assert (=> d!544419 (=> res!803920 e!1141230)))

(assert (=> d!544419 (= res!803920 ((_ is Nil!19651) lt!693367))))

(assert (=> d!544419 (= (isPrefix!1761 lt!693367 lt!693407) lt!693511)))

(assert (= (and d!544419 (not res!803920)) b!1783228))

(assert (= (and b!1783228 res!803919) b!1783229))

(assert (= (and b!1783229 res!803918) b!1783230))

(assert (= (and d!544419 (not res!803921)) b!1783232))

(declare-fun m!2205991 () Bool)

(assert (=> b!1783229 m!2205991))

(declare-fun m!2205993 () Bool)

(assert (=> b!1783229 m!2205993))

(declare-fun m!2205995 () Bool)

(assert (=> b!1783230 m!2205995))

(declare-fun m!2205997 () Bool)

(assert (=> b!1783230 m!2205997))

(assert (=> b!1783230 m!2205995))

(assert (=> b!1783230 m!2205997))

(declare-fun m!2205999 () Bool)

(assert (=> b!1783230 m!2205999))

(assert (=> b!1783232 m!2205987))

(assert (=> b!1783232 m!2205927))

(assert (=> b!1782983 d!544419))

(declare-fun d!544421 () Bool)

(assert (=> d!544421 (isPrefix!1761 lt!693367 (++!5345 lt!693367 suffix!1421))))

(declare-fun lt!693522 () Unit!33967)

(declare-fun choose!11215 (List!19721 List!19721) Unit!33967)

(assert (=> d!544421 (= lt!693522 (choose!11215 lt!693367 suffix!1421))))

(assert (=> d!544421 (= (lemmaConcatTwoListThenFirstIsPrefix!1270 lt!693367 suffix!1421) lt!693522)))

(declare-fun bs!405272 () Bool)

(assert (= bs!405272 d!544421))

(assert (=> bs!405272 m!2205625))

(assert (=> bs!405272 m!2205625))

(declare-fun m!2206051 () Bool)

(assert (=> bs!405272 m!2206051))

(declare-fun m!2206053 () Bool)

(assert (=> bs!405272 m!2206053))

(assert (=> b!1782983 d!544421))

(declare-fun b!1783237 () Bool)

(declare-fun res!803922 () Bool)

(declare-fun e!1141232 () Bool)

(assert (=> b!1783237 (=> (not res!803922) (not e!1141232))))

(assert (=> b!1783237 (= res!803922 (= (head!4170 lt!693405) (head!4170 lt!693407)))))

(declare-fun b!1783238 () Bool)

(assert (=> b!1783238 (= e!1141232 (isPrefix!1761 (tail!2669 lt!693405) (tail!2669 lt!693407)))))

(declare-fun b!1783239 () Bool)

(declare-fun e!1141231 () Bool)

(assert (=> b!1783239 (= e!1141231 (>= (size!15612 lt!693407) (size!15612 lt!693405)))))

(declare-fun b!1783236 () Bool)

(declare-fun e!1141233 () Bool)

(assert (=> b!1783236 (= e!1141233 e!1141232)))

(declare-fun res!803923 () Bool)

(assert (=> b!1783236 (=> (not res!803923) (not e!1141232))))

(assert (=> b!1783236 (= res!803923 (not ((_ is Nil!19651) lt!693407)))))

(declare-fun d!544425 () Bool)

(assert (=> d!544425 e!1141231))

(declare-fun res!803925 () Bool)

(assert (=> d!544425 (=> res!803925 e!1141231)))

(declare-fun lt!693523 () Bool)

(assert (=> d!544425 (= res!803925 (not lt!693523))))

(assert (=> d!544425 (= lt!693523 e!1141233)))

(declare-fun res!803924 () Bool)

(assert (=> d!544425 (=> res!803924 e!1141233)))

(assert (=> d!544425 (= res!803924 ((_ is Nil!19651) lt!693405))))

(assert (=> d!544425 (= (isPrefix!1761 lt!693405 lt!693407) lt!693523)))

(assert (= (and d!544425 (not res!803924)) b!1783236))

(assert (= (and b!1783236 res!803923) b!1783237))

(assert (= (and b!1783237 res!803922) b!1783238))

(assert (= (and d!544425 (not res!803925)) b!1783239))

(assert (=> b!1783237 m!2205943))

(assert (=> b!1783237 m!2205993))

(assert (=> b!1783238 m!2205947))

(assert (=> b!1783238 m!2205997))

(assert (=> b!1783238 m!2205947))

(assert (=> b!1783238 m!2205997))

(declare-fun m!2206057 () Bool)

(assert (=> b!1783238 m!2206057))

(assert (=> b!1783239 m!2205987))

(assert (=> b!1783239 m!2205707))

(assert (=> b!1782983 d!544425))

(declare-fun d!544429 () Bool)

(declare-fun list!7994 (Conc!6537) List!19721)

(assert (=> d!544429 (= (list!7991 lt!693366) (list!7994 (c!290031 lt!693366)))))

(declare-fun bs!405275 () Bool)

(assert (= bs!405275 d!544429))

(declare-fun m!2206071 () Bool)

(assert (=> bs!405275 m!2206071))

(assert (=> b!1782983 d!544429))

(declare-fun d!544435 () Bool)

(declare-fun e!1141238 () Bool)

(assert (=> d!544435 e!1141238))

(declare-fun res!803932 () Bool)

(assert (=> d!544435 (=> (not res!803932) (not e!1141238))))

(assert (=> d!544435 (= res!803932 (isDefined!3407 (getRuleFromTag!569 thiss!24550 rules!3447 (tag!3919 (rule!5601 (_1!11023 lt!693369))))))))

(declare-fun lt!693530 () Unit!33967)

(declare-fun choose!11216 (LexerInterface!3150 List!19722 List!19721 Token!6608) Unit!33967)

(assert (=> d!544435 (= lt!693530 (choose!11216 thiss!24550 rules!3447 lt!693407 (_1!11023 lt!693369)))))

(assert (=> d!544435 (rulesInvariant!2819 thiss!24550 rules!3447)))

(assert (=> d!544435 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!569 thiss!24550 rules!3447 lt!693407 (_1!11023 lt!693369)) lt!693530)))

(declare-fun b!1783248 () Bool)

(declare-fun res!803933 () Bool)

(assert (=> b!1783248 (=> (not res!803933) (not e!1141238))))

(assert (=> b!1783248 (= res!803933 (matchR!2322 (regex!3521 (get!6043 (getRuleFromTag!569 thiss!24550 rules!3447 (tag!3919 (rule!5601 (_1!11023 lt!693369)))))) (list!7991 (charsOf!2170 (_1!11023 lt!693369)))))))

(declare-fun b!1783249 () Bool)

(assert (=> b!1783249 (= e!1141238 (= (rule!5601 (_1!11023 lt!693369)) (get!6043 (getRuleFromTag!569 thiss!24550 rules!3447 (tag!3919 (rule!5601 (_1!11023 lt!693369)))))))))

(assert (= (and d!544435 res!803932) b!1783248))

(assert (= (and b!1783248 res!803933) b!1783249))

(assert (=> d!544435 m!2205637))

(assert (=> d!544435 m!2205637))

(declare-fun m!2206075 () Bool)

(assert (=> d!544435 m!2206075))

(declare-fun m!2206077 () Bool)

(assert (=> d!544435 m!2206077))

(assert (=> d!544435 m!2205611))

(assert (=> b!1783248 m!2205633))

(assert (=> b!1783248 m!2205697))

(assert (=> b!1783248 m!2205637))

(assert (=> b!1783248 m!2205633))

(assert (=> b!1783248 m!2205697))

(declare-fun m!2206079 () Bool)

(assert (=> b!1783248 m!2206079))

(assert (=> b!1783248 m!2205637))

(declare-fun m!2206081 () Bool)

(assert (=> b!1783248 m!2206081))

(assert (=> b!1783249 m!2205637))

(assert (=> b!1783249 m!2205637))

(assert (=> b!1783249 m!2206081))

(assert (=> b!1782983 d!544435))

(declare-fun d!544439 () Bool)

(declare-fun isEmpty!12423 (Option!4064) Bool)

(assert (=> d!544439 (= (isDefined!3407 lt!693402) (not (isEmpty!12423 lt!693402)))))

(declare-fun bs!405277 () Bool)

(assert (= bs!405277 d!544439))

(declare-fun m!2206083 () Bool)

(assert (=> bs!405277 m!2206083))

(assert (=> b!1782983 d!544439))

(declare-fun d!544441 () Bool)

(assert (=> d!544441 (isPrefix!1761 lt!693405 (++!5345 lt!693405 (_2!11023 lt!693369)))))

(declare-fun lt!693531 () Unit!33967)

(assert (=> d!544441 (= lt!693531 (choose!11215 lt!693405 (_2!11023 lt!693369)))))

(assert (=> d!544441 (= (lemmaConcatTwoListThenFirstIsPrefix!1270 lt!693405 (_2!11023 lt!693369)) lt!693531)))

(declare-fun bs!405278 () Bool)

(assert (= bs!405278 d!544441))

(assert (=> bs!405278 m!2205623))

(assert (=> bs!405278 m!2205623))

(assert (=> bs!405278 m!2205639))

(declare-fun m!2206085 () Bool)

(assert (=> bs!405278 m!2206085))

(assert (=> b!1782983 d!544441))

(declare-fun b!1783262 () Bool)

(declare-fun e!1141250 () Option!4064)

(assert (=> b!1783262 (= e!1141250 None!4063)))

(declare-fun b!1783263 () Bool)

(declare-fun e!1141247 () Option!4064)

(assert (=> b!1783263 (= e!1141247 e!1141250)))

(declare-fun c!290080 () Bool)

(assert (=> b!1783263 (= c!290080 (and ((_ is Cons!19652) rules!3447) (not (= (tag!3919 (h!25053 rules!3447)) (tag!3919 (rule!5601 (_1!11023 lt!693369)))))))))

(declare-fun b!1783264 () Bool)

(declare-fun lt!693538 () Unit!33967)

(declare-fun lt!693540 () Unit!33967)

(assert (=> b!1783264 (= lt!693538 lt!693540)))

(assert (=> b!1783264 (rulesInvariant!2819 thiss!24550 (t!166761 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!222 (LexerInterface!3150 Rule!6842 List!19722) Unit!33967)

(assert (=> b!1783264 (= lt!693540 (lemmaInvariantOnRulesThenOnTail!222 thiss!24550 (h!25053 rules!3447) (t!166761 rules!3447)))))

(assert (=> b!1783264 (= e!1141250 (getRuleFromTag!569 thiss!24550 (t!166761 rules!3447) (tag!3919 (rule!5601 (_1!11023 lt!693369)))))))

(declare-fun b!1783265 () Bool)

(declare-fun e!1141248 () Bool)

(declare-fun e!1141249 () Bool)

(assert (=> b!1783265 (= e!1141248 e!1141249)))

(declare-fun res!803938 () Bool)

(assert (=> b!1783265 (=> (not res!803938) (not e!1141249))))

(declare-fun lt!693539 () Option!4064)

(assert (=> b!1783265 (= res!803938 (contains!3553 rules!3447 (get!6043 lt!693539)))))

(declare-fun d!544443 () Bool)

(assert (=> d!544443 e!1141248))

(declare-fun res!803939 () Bool)

(assert (=> d!544443 (=> res!803939 e!1141248)))

(assert (=> d!544443 (= res!803939 (isEmpty!12423 lt!693539))))

(assert (=> d!544443 (= lt!693539 e!1141247)))

(declare-fun c!290079 () Bool)

(assert (=> d!544443 (= c!290079 (and ((_ is Cons!19652) rules!3447) (= (tag!3919 (h!25053 rules!3447)) (tag!3919 (rule!5601 (_1!11023 lt!693369))))))))

(assert (=> d!544443 (rulesInvariant!2819 thiss!24550 rules!3447)))

(assert (=> d!544443 (= (getRuleFromTag!569 thiss!24550 rules!3447 (tag!3919 (rule!5601 (_1!11023 lt!693369)))) lt!693539)))

(declare-fun b!1783266 () Bool)

(assert (=> b!1783266 (= e!1141247 (Some!4063 (h!25053 rules!3447)))))

(declare-fun b!1783267 () Bool)

(assert (=> b!1783267 (= e!1141249 (= (tag!3919 (get!6043 lt!693539)) (tag!3919 (rule!5601 (_1!11023 lt!693369)))))))

(assert (= (and d!544443 c!290079) b!1783266))

(assert (= (and d!544443 (not c!290079)) b!1783263))

(assert (= (and b!1783263 c!290080) b!1783264))

(assert (= (and b!1783263 (not c!290080)) b!1783262))

(assert (= (and d!544443 (not res!803939)) b!1783265))

(assert (= (and b!1783265 res!803938) b!1783267))

(declare-fun m!2206087 () Bool)

(assert (=> b!1783264 m!2206087))

(declare-fun m!2206089 () Bool)

(assert (=> b!1783264 m!2206089))

(declare-fun m!2206091 () Bool)

(assert (=> b!1783264 m!2206091))

(declare-fun m!2206093 () Bool)

(assert (=> b!1783265 m!2206093))

(assert (=> b!1783265 m!2206093))

(declare-fun m!2206095 () Bool)

(assert (=> b!1783265 m!2206095))

(declare-fun m!2206097 () Bool)

(assert (=> d!544443 m!2206097))

(assert (=> d!544443 m!2205611))

(assert (=> b!1783267 m!2206093))

(assert (=> b!1782983 d!544443))

(declare-fun b!1783466 () Bool)

(declare-fun e!1141363 () Unit!33967)

(declare-fun Unit!33976 () Unit!33967)

(assert (=> b!1783466 (= e!1141363 Unit!33976)))

(declare-fun lt!693662 () List!19721)

(assert (=> b!1783466 (= lt!693662 (++!5345 lt!693367 suffix!1421))))

(declare-fun lt!693665 () Token!6608)

(declare-fun lt!693657 () Unit!33967)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!351 (LexerInterface!3150 Rule!6842 List!19722 List!19721) Unit!33967)

(assert (=> b!1783466 (= lt!693657 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!351 thiss!24550 (rule!5601 lt!693665) rules!3447 lt!693662))))

(assert (=> b!1783466 (isEmpty!12422 (maxPrefixOneRule!1073 thiss!24550 (rule!5601 lt!693665) lt!693662))))

(declare-fun lt!693661 () Unit!33967)

(assert (=> b!1783466 (= lt!693661 lt!693657)))

(declare-fun lt!693656 () List!19721)

(assert (=> b!1783466 (= lt!693656 (list!7991 (charsOf!2170 lt!693665)))))

(declare-fun lt!693664 () Unit!33967)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!347 (LexerInterface!3150 Rule!6842 List!19721 List!19721) Unit!33967)

(assert (=> b!1783466 (= lt!693664 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!347 thiss!24550 (rule!5601 lt!693665) lt!693656 (++!5345 lt!693367 suffix!1421)))))

(assert (=> b!1783466 (not (matchR!2322 (regex!3521 (rule!5601 lt!693665)) lt!693656))))

(declare-fun lt!693655 () Unit!33967)

(assert (=> b!1783466 (= lt!693655 lt!693664)))

(assert (=> b!1783466 false))

(declare-fun d!544445 () Bool)

(assert (=> d!544445 (isDefined!3408 (maxPrefix!1704 thiss!24550 rules!3447 (++!5345 lt!693367 suffix!1421)))))

(declare-fun lt!693653 () Unit!33967)

(assert (=> d!544445 (= lt!693653 e!1141363)))

(declare-fun c!290117 () Bool)

(assert (=> d!544445 (= c!290117 (isEmpty!12422 (maxPrefix!1704 thiss!24550 rules!3447 (++!5345 lt!693367 suffix!1421))))))

(declare-fun lt!693663 () Unit!33967)

(declare-fun lt!693658 () Unit!33967)

(assert (=> d!544445 (= lt!693663 lt!693658)))

(declare-fun e!1141364 () Bool)

(assert (=> d!544445 e!1141364))

(declare-fun res!804057 () Bool)

(assert (=> d!544445 (=> (not res!804057) (not e!1141364))))

(assert (=> d!544445 (= res!804057 (isDefined!3407 (getRuleFromTag!569 thiss!24550 rules!3447 (tag!3919 (rule!5601 lt!693665)))))))

(assert (=> d!544445 (= lt!693658 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!569 thiss!24550 rules!3447 lt!693367 lt!693665))))

(declare-fun lt!693668 () Unit!33967)

(declare-fun lt!693669 () Unit!33967)

(assert (=> d!544445 (= lt!693668 lt!693669)))

(declare-fun lt!693666 () List!19721)

(assert (=> d!544445 (isPrefix!1761 lt!693666 (++!5345 lt!693367 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!343 (List!19721 List!19721 List!19721) Unit!33967)

(assert (=> d!544445 (= lt!693669 (lemmaPrefixStaysPrefixWhenAddingToSuffix!343 lt!693666 lt!693367 suffix!1421))))

(assert (=> d!544445 (= lt!693666 (list!7991 (charsOf!2170 lt!693665)))))

(declare-fun lt!693667 () Unit!33967)

(declare-fun lt!693659 () Unit!33967)

(assert (=> d!544445 (= lt!693667 lt!693659)))

(declare-fun lt!693654 () List!19721)

(declare-fun lt!693660 () List!19721)

(assert (=> d!544445 (isPrefix!1761 lt!693654 (++!5345 lt!693654 lt!693660))))

(assert (=> d!544445 (= lt!693659 (lemmaConcatTwoListThenFirstIsPrefix!1270 lt!693654 lt!693660))))

(assert (=> d!544445 (= lt!693660 (_2!11023 (get!6042 (maxPrefix!1704 thiss!24550 rules!3447 lt!693367))))))

(assert (=> d!544445 (= lt!693654 (list!7991 (charsOf!2170 lt!693665)))))

(declare-datatypes ((List!19726 0))(
  ( (Nil!19656) (Cons!19656 (h!25057 Token!6608) (t!166841 List!19726)) )
))
(declare-fun head!4172 (List!19726) Token!6608)

(declare-datatypes ((IArray!13083 0))(
  ( (IArray!13084 (innerList!6599 List!19726)) )
))
(declare-datatypes ((Conc!6539 0))(
  ( (Node!6539 (left!15753 Conc!6539) (right!16083 Conc!6539) (csize!13308 Int) (cheight!6750 Int)) (Leaf!9520 (xs!9415 IArray!13083) (csize!13309 Int)) (Empty!6539) )
))
(declare-datatypes ((BalanceConc!13022 0))(
  ( (BalanceConc!13023 (c!290181 Conc!6539)) )
))
(declare-fun list!7995 (BalanceConc!13022) List!19726)

(declare-datatypes ((tuple2!19246 0))(
  ( (tuple2!19247 (_1!11025 BalanceConc!13022) (_2!11025 BalanceConc!13018)) )
))
(declare-fun lex!1482 (LexerInterface!3150 List!19722 BalanceConc!13018) tuple2!19246)

(assert (=> d!544445 (= lt!693665 (head!4172 (list!7995 (_1!11025 (lex!1482 thiss!24550 rules!3447 (seqFromList!2490 lt!693367))))))))

(assert (=> d!544445 (not (isEmpty!12419 rules!3447))))

(assert (=> d!544445 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!672 thiss!24550 rules!3447 lt!693367 suffix!1421) lt!693653)))

(declare-fun b!1783467 () Bool)

(declare-fun Unit!33977 () Unit!33967)

(assert (=> b!1783467 (= e!1141363 Unit!33977)))

(declare-fun b!1783464 () Bool)

(declare-fun res!804058 () Bool)

(assert (=> b!1783464 (=> (not res!804058) (not e!1141364))))

(assert (=> b!1783464 (= res!804058 (matchR!2322 (regex!3521 (get!6043 (getRuleFromTag!569 thiss!24550 rules!3447 (tag!3919 (rule!5601 lt!693665))))) (list!7991 (charsOf!2170 lt!693665))))))

(declare-fun b!1783465 () Bool)

(assert (=> b!1783465 (= e!1141364 (= (rule!5601 lt!693665) (get!6043 (getRuleFromTag!569 thiss!24550 rules!3447 (tag!3919 (rule!5601 lt!693665))))))))

(assert (= (and d!544445 res!804057) b!1783464))

(assert (= (and b!1783464 res!804058) b!1783465))

(assert (= (and d!544445 c!290117) b!1783466))

(assert (= (and d!544445 (not c!290117)) b!1783467))

(assert (=> b!1783466 m!2205625))

(declare-fun m!2206347 () Bool)

(assert (=> b!1783466 m!2206347))

(declare-fun m!2206349 () Bool)

(assert (=> b!1783466 m!2206349))

(declare-fun m!2206351 () Bool)

(assert (=> b!1783466 m!2206351))

(declare-fun m!2206353 () Bool)

(assert (=> b!1783466 m!2206353))

(declare-fun m!2206355 () Bool)

(assert (=> b!1783466 m!2206355))

(assert (=> b!1783466 m!2206353))

(declare-fun m!2206357 () Bool)

(assert (=> b!1783466 m!2206357))

(assert (=> b!1783466 m!2206349))

(assert (=> b!1783466 m!2205625))

(declare-fun m!2206359 () Bool)

(assert (=> b!1783466 m!2206359))

(declare-fun m!2206361 () Bool)

(assert (=> d!544445 m!2206361))

(declare-fun m!2206363 () Bool)

(assert (=> d!544445 m!2206363))

(assert (=> d!544445 m!2205693))

(declare-fun m!2206365 () Bool)

(assert (=> d!544445 m!2206365))

(declare-fun m!2206367 () Bool)

(assert (=> d!544445 m!2206367))

(assert (=> d!544445 m!2206349))

(declare-fun m!2206369 () Bool)

(assert (=> d!544445 m!2206369))

(assert (=> d!544445 m!2205625))

(assert (=> d!544445 m!2206365))

(assert (=> d!544445 m!2206369))

(declare-fun m!2206371 () Bool)

(assert (=> d!544445 m!2206371))

(assert (=> d!544445 m!2205625))

(assert (=> d!544445 m!2205753))

(assert (=> d!544445 m!2206349))

(assert (=> d!544445 m!2206351))

(declare-fun m!2206373 () Bool)

(assert (=> d!544445 m!2206373))

(assert (=> d!544445 m!2205753))

(declare-fun m!2206375 () Bool)

(assert (=> d!544445 m!2206375))

(assert (=> d!544445 m!2206363))

(declare-fun m!2206377 () Bool)

(assert (=> d!544445 m!2206377))

(assert (=> d!544445 m!2206365))

(declare-fun m!2206379 () Bool)

(assert (=> d!544445 m!2206379))

(assert (=> d!544445 m!2205625))

(declare-fun m!2206381 () Bool)

(assert (=> d!544445 m!2206381))

(declare-fun m!2206383 () Bool)

(assert (=> d!544445 m!2206383))

(declare-fun m!2206385 () Bool)

(assert (=> d!544445 m!2206385))

(assert (=> d!544445 m!2206383))

(declare-fun m!2206387 () Bool)

(assert (=> d!544445 m!2206387))

(declare-fun m!2206389 () Bool)

(assert (=> d!544445 m!2206389))

(declare-fun m!2206391 () Bool)

(assert (=> d!544445 m!2206391))

(assert (=> d!544445 m!2206389))

(assert (=> b!1783464 m!2206351))

(declare-fun m!2206393 () Bool)

(assert (=> b!1783464 m!2206393))

(assert (=> b!1783464 m!2206349))

(assert (=> b!1783464 m!2206351))

(assert (=> b!1783464 m!2206349))

(assert (=> b!1783464 m!2206383))

(assert (=> b!1783464 m!2206383))

(declare-fun m!2206395 () Bool)

(assert (=> b!1783464 m!2206395))

(assert (=> b!1783465 m!2206383))

(assert (=> b!1783465 m!2206383))

(assert (=> b!1783465 m!2206395))

(assert (=> b!1782983 d!544445))

(declare-fun bs!405301 () Bool)

(declare-fun d!544555 () Bool)

(assert (= bs!405301 (and d!544555 b!1782974)))

(declare-fun lambda!70723 () Int)

(assert (=> bs!405301 (= lambda!70723 lambda!70710)))

(declare-fun b!1783476 () Bool)

(declare-fun e!1141369 () Bool)

(assert (=> b!1783476 (= e!1141369 true)))

(assert (=> d!544555 e!1141369))

(assert (= d!544555 b!1783476))

(assert (=> b!1783476 (< (dynLambda!9661 order!12695 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) (dynLambda!9662 order!12697 lambda!70723))))

(assert (=> b!1783476 (< (dynLambda!9663 order!12699 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) (dynLambda!9662 order!12697 lambda!70723))))

(assert (=> d!544555 (= (list!7991 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693395))) (list!7991 lt!693395))))

(declare-fun lt!693675 () Unit!33967)

(declare-fun ForallOf!345 (Int BalanceConc!13018) Unit!33967)

(assert (=> d!544555 (= lt!693675 (ForallOf!345 lambda!70723 lt!693395))))

(assert (=> d!544555 (= (lemmaSemiInverse!659 (transformation!3521 (rule!5601 (_1!11023 lt!693369))) lt!693395) lt!693675)))

(declare-fun b_lambda!58447 () Bool)

(assert (=> (not b_lambda!58447) (not d!544555)))

(declare-fun t!166787 () Bool)

(declare-fun tb!108473 () Bool)

(assert (=> (and b!1782980 (= (toChars!4907 (transformation!3521 (rule!5601 token!523))) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166787) tb!108473))

(declare-fun tp!504645 () Bool)

(declare-fun b!1783479 () Bool)

(declare-fun e!1141371 () Bool)

(assert (=> b!1783479 (= e!1141371 (and (inv!25582 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693395)))) tp!504645))))

(declare-fun result!130504 () Bool)

(assert (=> tb!108473 (= result!130504 (and (inv!25583 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693395))) e!1141371))))

(assert (= tb!108473 b!1783479))

(declare-fun m!2206405 () Bool)

(assert (=> b!1783479 m!2206405))

(declare-fun m!2206407 () Bool)

(assert (=> tb!108473 m!2206407))

(assert (=> d!544555 t!166787))

(declare-fun b_and!136965 () Bool)

(assert (= b_and!136911 (and (=> t!166787 result!130504) b_and!136965)))

(declare-fun t!166789 () Bool)

(declare-fun tb!108475 () Bool)

(assert (=> (and b!1782990 (= (toChars!4907 (transformation!3521 (h!25053 rules!3447))) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166789) tb!108475))

(declare-fun result!130506 () Bool)

(assert (= result!130506 result!130504))

(assert (=> d!544555 t!166789))

(declare-fun b_and!136967 () Bool)

(assert (= b_and!136913 (and (=> t!166789 result!130506) b_and!136967)))

(declare-fun tb!108477 () Bool)

(declare-fun t!166791 () Bool)

(assert (=> (and b!1783004 (= (toChars!4907 (transformation!3521 rule!422)) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166791) tb!108477))

(declare-fun result!130508 () Bool)

(assert (= result!130508 result!130504))

(assert (=> d!544555 t!166791))

(declare-fun b_and!136969 () Bool)

(assert (= b_and!136915 (and (=> t!166791 result!130508) b_and!136969)))

(declare-fun b_lambda!58451 () Bool)

(assert (=> (not b_lambda!58451) (not d!544555)))

(declare-fun tb!108479 () Bool)

(declare-fun t!166793 () Bool)

(assert (=> (and b!1782980 (= (toValue!5048 (transformation!3521 (rule!5601 token!523))) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166793) tb!108479))

(declare-fun result!130510 () Bool)

(assert (=> tb!108479 (= result!130510 (inv!21 (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693395)))))

(declare-fun m!2206413 () Bool)

(assert (=> tb!108479 m!2206413))

(assert (=> d!544555 t!166793))

(declare-fun b_and!136971 () Bool)

(assert (= b_and!136881 (and (=> t!166793 result!130510) b_and!136971)))

(declare-fun t!166795 () Bool)

(declare-fun tb!108481 () Bool)

(assert (=> (and b!1782990 (= (toValue!5048 (transformation!3521 (h!25053 rules!3447))) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166795) tb!108481))

(declare-fun result!130512 () Bool)

(assert (= result!130512 result!130510))

(assert (=> d!544555 t!166795))

(declare-fun b_and!136973 () Bool)

(assert (= b_and!136883 (and (=> t!166795 result!130512) b_and!136973)))

(declare-fun tb!108483 () Bool)

(declare-fun t!166797 () Bool)

(assert (=> (and b!1783004 (= (toValue!5048 (transformation!3521 rule!422)) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166797) tb!108483))

(declare-fun result!130514 () Bool)

(assert (= result!130514 result!130510))

(assert (=> d!544555 t!166797))

(declare-fun b_and!136975 () Bool)

(assert (= b_and!136885 (and (=> t!166797 result!130514) b_and!136975)))

(declare-fun m!2206415 () Bool)

(assert (=> d!544555 m!2206415))

(declare-fun m!2206417 () Bool)

(assert (=> d!544555 m!2206417))

(declare-fun m!2206419 () Bool)

(assert (=> d!544555 m!2206419))

(assert (=> d!544555 m!2206419))

(declare-fun m!2206421 () Bool)

(assert (=> d!544555 m!2206421))

(assert (=> d!544555 m!2206421))

(declare-fun m!2206423 () Bool)

(assert (=> d!544555 m!2206423))

(assert (=> b!1783009 d!544555))

(declare-fun d!544567 () Bool)

(assert (=> d!544567 (= (inv!25575 (tag!3919 rule!422)) (= (mod (str.len (value!110020 (tag!3919 rule!422))) 2) 0))))

(assert (=> b!1782987 d!544567))

(declare-fun d!544569 () Bool)

(declare-fun res!804061 () Bool)

(declare-fun e!1141376 () Bool)

(assert (=> d!544569 (=> (not res!804061) (not e!1141376))))

(declare-fun semiInverseModEq!1408 (Int Int) Bool)

(assert (=> d!544569 (= res!804061 (semiInverseModEq!1408 (toChars!4907 (transformation!3521 rule!422)) (toValue!5048 (transformation!3521 rule!422))))))

(assert (=> d!544569 (= (inv!25580 (transformation!3521 rule!422)) e!1141376)))

(declare-fun b!1783484 () Bool)

(declare-fun equivClasses!1349 (Int Int) Bool)

(assert (=> b!1783484 (= e!1141376 (equivClasses!1349 (toChars!4907 (transformation!3521 rule!422)) (toValue!5048 (transformation!3521 rule!422))))))

(assert (= (and d!544569 res!804061) b!1783484))

(declare-fun m!2206425 () Bool)

(assert (=> d!544569 m!2206425))

(declare-fun m!2206427 () Bool)

(assert (=> b!1783484 m!2206427))

(assert (=> b!1782987 d!544569))

(declare-fun d!544571 () Bool)

(declare-fun lt!693683 () Bool)

(declare-fun content!2863 (List!19722) (InoxSet Rule!6842))

(assert (=> d!544571 (= lt!693683 (select (content!2863 rules!3447) rule!422))))

(declare-fun e!1141382 () Bool)

(assert (=> d!544571 (= lt!693683 e!1141382)))

(declare-fun res!804067 () Bool)

(assert (=> d!544571 (=> (not res!804067) (not e!1141382))))

(assert (=> d!544571 (= res!804067 ((_ is Cons!19652) rules!3447))))

(assert (=> d!544571 (= (contains!3553 rules!3447 rule!422) lt!693683)))

(declare-fun b!1783489 () Bool)

(declare-fun e!1141381 () Bool)

(assert (=> b!1783489 (= e!1141382 e!1141381)))

(declare-fun res!804066 () Bool)

(assert (=> b!1783489 (=> res!804066 e!1141381)))

(assert (=> b!1783489 (= res!804066 (= (h!25053 rules!3447) rule!422))))

(declare-fun b!1783490 () Bool)

(assert (=> b!1783490 (= e!1141381 (contains!3553 (t!166761 rules!3447) rule!422))))

(assert (= (and d!544571 res!804067) b!1783489))

(assert (= (and b!1783489 (not res!804066)) b!1783490))

(declare-fun m!2206429 () Bool)

(assert (=> d!544571 m!2206429))

(declare-fun m!2206431 () Bool)

(assert (=> d!544571 m!2206431))

(declare-fun m!2206433 () Bool)

(assert (=> b!1783490 m!2206433))

(assert (=> b!1782986 d!544571))

(declare-fun d!544573 () Bool)

(declare-fun isBalanced!2045 (Conc!6537) Bool)

(assert (=> d!544573 (= (inv!25583 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (value!110021 (_1!11023 lt!693369)))) (isBalanced!2045 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (value!110021 (_1!11023 lt!693369))))))))

(declare-fun bs!405303 () Bool)

(assert (= bs!405303 d!544573))

(declare-fun m!2206435 () Bool)

(assert (=> bs!405303 m!2206435))

(assert (=> tb!108443 d!544573))

(declare-fun d!544575 () Bool)

(declare-fun lt!693686 () Int)

(assert (=> d!544575 (>= lt!693686 0)))

(declare-fun e!1141385 () Int)

(assert (=> d!544575 (= lt!693686 e!1141385)))

(declare-fun c!290125 () Bool)

(assert (=> d!544575 (= c!290125 ((_ is Nil!19651) lt!693405))))

(assert (=> d!544575 (= (size!15612 lt!693405) lt!693686)))

(declare-fun b!1783495 () Bool)

(assert (=> b!1783495 (= e!1141385 0)))

(declare-fun b!1783496 () Bool)

(assert (=> b!1783496 (= e!1141385 (+ 1 (size!15612 (t!166760 lt!693405))))))

(assert (= (and d!544575 c!290125) b!1783495))

(assert (= (and d!544575 (not c!290125)) b!1783496))

(declare-fun m!2206437 () Bool)

(assert (=> b!1783496 m!2206437))

(assert (=> b!1783011 d!544575))

(declare-fun d!544577 () Bool)

(assert (=> d!544577 (= (_2!11023 lt!693369) lt!693397)))

(declare-fun lt!693689 () Unit!33967)

(declare-fun choose!11220 (List!19721 List!19721 List!19721 List!19721 List!19721) Unit!33967)

(assert (=> d!544577 (= lt!693689 (choose!11220 lt!693405 (_2!11023 lt!693369) lt!693405 lt!693397 lt!693407))))

(assert (=> d!544577 (isPrefix!1761 lt!693405 lt!693407)))

(assert (=> d!544577 (= (lemmaSamePrefixThenSameSuffix!872 lt!693405 (_2!11023 lt!693369) lt!693405 lt!693397 lt!693407) lt!693689)))

(declare-fun bs!405304 () Bool)

(assert (= bs!405304 d!544577))

(declare-fun m!2206439 () Bool)

(assert (=> bs!405304 m!2206439))

(assert (=> bs!405304 m!2205635))

(assert (=> b!1783011 d!544577))

(declare-fun d!544579 () Bool)

(assert (=> d!544579 (= (apply!5321 (transformation!3521 (rule!5601 (_1!11023 lt!693369))) lt!693395) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693395))))

(declare-fun b_lambda!58453 () Bool)

(assert (=> (not b_lambda!58453) (not d!544579)))

(assert (=> d!544579 t!166793))

(declare-fun b_and!136977 () Bool)

(assert (= b_and!136971 (and (=> t!166793 result!130510) b_and!136977)))

(assert (=> d!544579 t!166795))

(declare-fun b_and!136979 () Bool)

(assert (= b_and!136973 (and (=> t!166795 result!130512) b_and!136979)))

(assert (=> d!544579 t!166797))

(declare-fun b_and!136981 () Bool)

(assert (= b_and!136975 (and (=> t!166797 result!130514) b_and!136981)))

(assert (=> d!544579 m!2206419))

(assert (=> b!1783011 d!544579))

(declare-fun d!544581 () Bool)

(declare-fun fromListB!1142 (List!19721) BalanceConc!13018)

(assert (=> d!544581 (= (seqFromList!2490 lt!693405) (fromListB!1142 lt!693405))))

(declare-fun bs!405305 () Bool)

(assert (= bs!405305 d!544581))

(declare-fun m!2206441 () Bool)

(assert (=> bs!405305 m!2206441))

(assert (=> b!1783011 d!544581))

(declare-fun d!544583 () Bool)

(declare-fun lt!693692 () List!19721)

(assert (=> d!544583 (= (++!5345 lt!693405 lt!693692) lt!693407)))

(declare-fun e!1141388 () List!19721)

(assert (=> d!544583 (= lt!693692 e!1141388)))

(declare-fun c!290128 () Bool)

(assert (=> d!544583 (= c!290128 ((_ is Cons!19651) lt!693405))))

(assert (=> d!544583 (>= (size!15612 lt!693407) (size!15612 lt!693405))))

(assert (=> d!544583 (= (getSuffix!928 lt!693407 lt!693405) lt!693692)))

(declare-fun b!1783501 () Bool)

(assert (=> b!1783501 (= e!1141388 (getSuffix!928 (tail!2669 lt!693407) (t!166760 lt!693405)))))

(declare-fun b!1783502 () Bool)

(assert (=> b!1783502 (= e!1141388 lt!693407)))

(assert (= (and d!544583 c!290128) b!1783501))

(assert (= (and d!544583 (not c!290128)) b!1783502))

(declare-fun m!2206443 () Bool)

(assert (=> d!544583 m!2206443))

(assert (=> d!544583 m!2205987))

(assert (=> d!544583 m!2205707))

(assert (=> b!1783501 m!2205997))

(assert (=> b!1783501 m!2205997))

(declare-fun m!2206445 () Bool)

(assert (=> b!1783501 m!2206445))

(assert (=> b!1783011 d!544583))

(declare-fun d!544585 () Bool)

(assert (=> d!544585 (= (maxPrefixOneRule!1073 thiss!24550 (rule!5601 (_1!11023 lt!693369)) lt!693407) (Some!4064 (tuple2!19243 (Token!6609 (apply!5321 (transformation!3521 (rule!5601 (_1!11023 lt!693369))) (seqFromList!2490 lt!693405)) (rule!5601 (_1!11023 lt!693369)) (size!15612 lt!693405) lt!693405) (_2!11023 lt!693369))))))

(declare-fun lt!693695 () Unit!33967)

(declare-fun choose!11221 (LexerInterface!3150 List!19722 List!19721 List!19721 List!19721 Rule!6842) Unit!33967)

(assert (=> d!544585 (= lt!693695 (choose!11221 thiss!24550 rules!3447 lt!693405 lt!693407 (_2!11023 lt!693369) (rule!5601 (_1!11023 lt!693369))))))

(assert (=> d!544585 (not (isEmpty!12419 rules!3447))))

(assert (=> d!544585 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!451 thiss!24550 rules!3447 lt!693405 lt!693407 (_2!11023 lt!693369) (rule!5601 (_1!11023 lt!693369))) lt!693695)))

(declare-fun bs!405306 () Bool)

(assert (= bs!405306 d!544585))

(declare-fun m!2206447 () Bool)

(assert (=> bs!405306 m!2206447))

(assert (=> bs!405306 m!2205707))

(assert (=> bs!405306 m!2205715))

(declare-fun m!2206449 () Bool)

(assert (=> bs!405306 m!2206449))

(assert (=> bs!405306 m!2205693))

(assert (=> bs!405306 m!2205709))

(assert (=> bs!405306 m!2205715))

(assert (=> b!1783011 d!544585))

(declare-fun b!1783604 () Bool)

(declare-fun e!1141444 () Bool)

(declare-fun lt!693724 () Option!4065)

(assert (=> b!1783604 (= e!1141444 (= (size!15610 (_1!11023 (get!6042 lt!693724))) (size!15612 (originalCharacters!4335 (_1!11023 (get!6042 lt!693724))))))))

(declare-fun b!1783606 () Bool)

(declare-fun res!804107 () Bool)

(assert (=> b!1783606 (=> (not res!804107) (not e!1141444))))

(assert (=> b!1783606 (= res!804107 (= (++!5345 (list!7991 (charsOf!2170 (_1!11023 (get!6042 lt!693724)))) (_2!11023 (get!6042 lt!693724))) lt!693407))))

(declare-fun b!1783607 () Bool)

(declare-fun e!1141443 () Bool)

(assert (=> b!1783607 (= e!1141443 e!1141444)))

(declare-fun res!804109 () Bool)

(assert (=> b!1783607 (=> (not res!804109) (not e!1141444))))

(assert (=> b!1783607 (= res!804109 (matchR!2322 (regex!3521 (rule!5601 (_1!11023 lt!693369))) (list!7991 (charsOf!2170 (_1!11023 (get!6042 lt!693724))))))))

(declare-fun b!1783608 () Bool)

(declare-fun e!1141441 () Option!4065)

(assert (=> b!1783608 (= e!1141441 None!4064)))

(declare-fun b!1783609 () Bool)

(declare-fun res!804112 () Bool)

(assert (=> b!1783609 (=> (not res!804112) (not e!1141444))))

(assert (=> b!1783609 (= res!804112 (= (value!110021 (_1!11023 (get!6042 lt!693724))) (apply!5321 (transformation!3521 (rule!5601 (_1!11023 (get!6042 lt!693724)))) (seqFromList!2490 (originalCharacters!4335 (_1!11023 (get!6042 lt!693724)))))))))

(declare-fun b!1783610 () Bool)

(declare-fun res!804106 () Bool)

(assert (=> b!1783610 (=> (not res!804106) (not e!1141444))))

(assert (=> b!1783610 (= res!804106 (< (size!15612 (_2!11023 (get!6042 lt!693724))) (size!15612 lt!693407)))))

(declare-fun d!544587 () Bool)

(assert (=> d!544587 e!1141443))

(declare-fun res!804111 () Bool)

(assert (=> d!544587 (=> res!804111 e!1141443)))

(assert (=> d!544587 (= res!804111 (isEmpty!12422 lt!693724))))

(assert (=> d!544587 (= lt!693724 e!1141441)))

(declare-fun c!290134 () Bool)

(declare-datatypes ((tuple2!19248 0))(
  ( (tuple2!19249 (_1!11026 List!19721) (_2!11026 List!19721)) )
))
(declare-fun lt!693723 () tuple2!19248)

(assert (=> d!544587 (= c!290134 (isEmpty!12418 (_1!11026 lt!693723)))))

(declare-fun findLongestMatch!397 (Regex!4849 List!19721) tuple2!19248)

(assert (=> d!544587 (= lt!693723 (findLongestMatch!397 (regex!3521 (rule!5601 (_1!11023 lt!693369))) lt!693407))))

(assert (=> d!544587 (ruleValid!1019 thiss!24550 (rule!5601 (_1!11023 lt!693369)))))

(assert (=> d!544587 (= (maxPrefixOneRule!1073 thiss!24550 (rule!5601 (_1!11023 lt!693369)) lt!693407) lt!693724)))

(declare-fun b!1783605 () Bool)

(declare-fun res!804110 () Bool)

(assert (=> b!1783605 (=> (not res!804110) (not e!1141444))))

(assert (=> b!1783605 (= res!804110 (= (rule!5601 (_1!11023 (get!6042 lt!693724))) (rule!5601 (_1!11023 lt!693369))))))

(declare-fun b!1783611 () Bool)

(declare-fun e!1141442 () Bool)

(declare-fun findLongestMatchInner!470 (Regex!4849 List!19721 Int List!19721 List!19721 Int) tuple2!19248)

(assert (=> b!1783611 (= e!1141442 (matchR!2322 (regex!3521 (rule!5601 (_1!11023 lt!693369))) (_1!11026 (findLongestMatchInner!470 (regex!3521 (rule!5601 (_1!11023 lt!693369))) Nil!19651 (size!15612 Nil!19651) lt!693407 lt!693407 (size!15612 lt!693407)))))))

(declare-fun b!1783612 () Bool)

(assert (=> b!1783612 (= e!1141441 (Some!4064 (tuple2!19243 (Token!6609 (apply!5321 (transformation!3521 (rule!5601 (_1!11023 lt!693369))) (seqFromList!2490 (_1!11026 lt!693723))) (rule!5601 (_1!11023 lt!693369)) (size!15611 (seqFromList!2490 (_1!11026 lt!693723))) (_1!11026 lt!693723)) (_2!11026 lt!693723))))))

(declare-fun lt!693722 () Unit!33967)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!454 (Regex!4849 List!19721) Unit!33967)

(assert (=> b!1783612 (= lt!693722 (longestMatchIsAcceptedByMatchOrIsEmpty!454 (regex!3521 (rule!5601 (_1!11023 lt!693369))) lt!693407))))

(declare-fun res!804108 () Bool)

(assert (=> b!1783612 (= res!804108 (isEmpty!12418 (_1!11026 (findLongestMatchInner!470 (regex!3521 (rule!5601 (_1!11023 lt!693369))) Nil!19651 (size!15612 Nil!19651) lt!693407 lt!693407 (size!15612 lt!693407)))))))

(assert (=> b!1783612 (=> res!804108 e!1141442)))

(assert (=> b!1783612 e!1141442))

(declare-fun lt!693725 () Unit!33967)

(assert (=> b!1783612 (= lt!693725 lt!693722)))

(declare-fun lt!693726 () Unit!33967)

(assert (=> b!1783612 (= lt!693726 (lemmaSemiInverse!659 (transformation!3521 (rule!5601 (_1!11023 lt!693369))) (seqFromList!2490 (_1!11026 lt!693723))))))

(assert (= (and d!544587 c!290134) b!1783608))

(assert (= (and d!544587 (not c!290134)) b!1783612))

(assert (= (and b!1783612 (not res!804108)) b!1783611))

(assert (= (and d!544587 (not res!804111)) b!1783607))

(assert (= (and b!1783607 res!804109) b!1783606))

(assert (= (and b!1783606 res!804107) b!1783610))

(assert (= (and b!1783610 res!804106) b!1783605))

(assert (= (and b!1783605 res!804110) b!1783609))

(assert (= (and b!1783609 res!804112) b!1783604))

(declare-fun m!2206521 () Bool)

(assert (=> b!1783605 m!2206521))

(assert (=> b!1783604 m!2206521))

(declare-fun m!2206523 () Bool)

(assert (=> b!1783604 m!2206523))

(assert (=> b!1783610 m!2206521))

(declare-fun m!2206525 () Bool)

(assert (=> b!1783610 m!2206525))

(assert (=> b!1783610 m!2205987))

(declare-fun m!2206527 () Bool)

(assert (=> b!1783611 m!2206527))

(assert (=> b!1783611 m!2205987))

(assert (=> b!1783611 m!2206527))

(assert (=> b!1783611 m!2205987))

(declare-fun m!2206529 () Bool)

(assert (=> b!1783611 m!2206529))

(declare-fun m!2206531 () Bool)

(assert (=> b!1783611 m!2206531))

(assert (=> b!1783606 m!2206521))

(declare-fun m!2206533 () Bool)

(assert (=> b!1783606 m!2206533))

(assert (=> b!1783606 m!2206533))

(declare-fun m!2206535 () Bool)

(assert (=> b!1783606 m!2206535))

(assert (=> b!1783606 m!2206535))

(declare-fun m!2206537 () Bool)

(assert (=> b!1783606 m!2206537))

(declare-fun m!2206539 () Bool)

(assert (=> d!544587 m!2206539))

(declare-fun m!2206541 () Bool)

(assert (=> d!544587 m!2206541))

(declare-fun m!2206543 () Bool)

(assert (=> d!544587 m!2206543))

(declare-fun m!2206545 () Bool)

(assert (=> d!544587 m!2206545))

(assert (=> b!1783612 m!2206527))

(declare-fun m!2206547 () Bool)

(assert (=> b!1783612 m!2206547))

(declare-fun m!2206549 () Bool)

(assert (=> b!1783612 m!2206549))

(declare-fun m!2206551 () Bool)

(assert (=> b!1783612 m!2206551))

(assert (=> b!1783612 m!2206549))

(assert (=> b!1783612 m!2206527))

(assert (=> b!1783612 m!2205987))

(assert (=> b!1783612 m!2206529))

(assert (=> b!1783612 m!2205987))

(assert (=> b!1783612 m!2206549))

(declare-fun m!2206553 () Bool)

(assert (=> b!1783612 m!2206553))

(assert (=> b!1783612 m!2206549))

(declare-fun m!2206555 () Bool)

(assert (=> b!1783612 m!2206555))

(declare-fun m!2206557 () Bool)

(assert (=> b!1783612 m!2206557))

(assert (=> b!1783607 m!2206521))

(assert (=> b!1783607 m!2206533))

(assert (=> b!1783607 m!2206533))

(assert (=> b!1783607 m!2206535))

(assert (=> b!1783607 m!2206535))

(declare-fun m!2206559 () Bool)

(assert (=> b!1783607 m!2206559))

(assert (=> b!1783609 m!2206521))

(declare-fun m!2206561 () Bool)

(assert (=> b!1783609 m!2206561))

(assert (=> b!1783609 m!2206561))

(declare-fun m!2206563 () Bool)

(assert (=> b!1783609 m!2206563))

(assert (=> b!1783011 d!544587))

(declare-fun d!544597 () Bool)

(assert (=> d!544597 (= (inv!25583 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366))) (isBalanced!2045 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366)))))))

(declare-fun bs!405308 () Bool)

(assert (= bs!405308 d!544597))

(declare-fun m!2206565 () Bool)

(assert (=> bs!405308 m!2206565))

(assert (=> tb!108431 d!544597))

(declare-fun d!544599 () Bool)

(declare-fun lt!693727 () Bool)

(assert (=> d!544599 (= lt!693727 (select (content!2863 rules!3447) (rule!5601 (_1!11023 lt!693369))))))

(declare-fun e!1141446 () Bool)

(assert (=> d!544599 (= lt!693727 e!1141446)))

(declare-fun res!804114 () Bool)

(assert (=> d!544599 (=> (not res!804114) (not e!1141446))))

(assert (=> d!544599 (= res!804114 ((_ is Cons!19652) rules!3447))))

(assert (=> d!544599 (= (contains!3553 rules!3447 (rule!5601 (_1!11023 lt!693369))) lt!693727)))

(declare-fun b!1783613 () Bool)

(declare-fun e!1141445 () Bool)

(assert (=> b!1783613 (= e!1141446 e!1141445)))

(declare-fun res!804113 () Bool)

(assert (=> b!1783613 (=> res!804113 e!1141445)))

(assert (=> b!1783613 (= res!804113 (= (h!25053 rules!3447) (rule!5601 (_1!11023 lt!693369))))))

(declare-fun b!1783614 () Bool)

(assert (=> b!1783614 (= e!1141445 (contains!3553 (t!166761 rules!3447) (rule!5601 (_1!11023 lt!693369))))))

(assert (= (and d!544599 res!804114) b!1783613))

(assert (= (and b!1783613 (not res!804113)) b!1783614))

(assert (=> d!544599 m!2206429))

(declare-fun m!2206567 () Bool)

(assert (=> d!544599 m!2206567))

(declare-fun m!2206569 () Bool)

(assert (=> b!1783614 m!2206569))

(assert (=> b!1782989 d!544599))

(declare-fun d!544601 () Bool)

(assert (=> d!544601 (= (isEmpty!12418 suffix!1421) ((_ is Nil!19651) suffix!1421))))

(assert (=> b!1783010 d!544601))

(declare-fun d!544603 () Bool)

(assert (=> d!544603 (= (list!7991 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366))) (list!7994 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366)))))))

(declare-fun bs!405309 () Bool)

(assert (= bs!405309 d!544603))

(declare-fun m!2206571 () Bool)

(assert (=> bs!405309 m!2206571))

(assert (=> b!1782988 d!544603))

(declare-fun bs!405310 () Bool)

(declare-fun d!544605 () Bool)

(assert (= bs!405310 (and d!544605 b!1782974)))

(declare-fun lambda!70724 () Int)

(assert (=> bs!405310 (= lambda!70724 lambda!70710)))

(declare-fun bs!405311 () Bool)

(assert (= bs!405311 (and d!544605 d!544555)))

(assert (=> bs!405311 (= lambda!70724 lambda!70723)))

(declare-fun b!1783615 () Bool)

(declare-fun e!1141447 () Bool)

(assert (=> b!1783615 (= e!1141447 true)))

(assert (=> d!544605 e!1141447))

(assert (= d!544605 b!1783615))

(assert (=> b!1783615 (< (dynLambda!9661 order!12695 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) (dynLambda!9662 order!12697 lambda!70724))))

(assert (=> b!1783615 (< (dynLambda!9663 order!12699 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) (dynLambda!9662 order!12697 lambda!70724))))

(assert (=> d!544605 (= (list!7991 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366))) (list!7991 lt!693366))))

(declare-fun lt!693728 () Unit!33967)

(assert (=> d!544605 (= lt!693728 (ForallOf!345 lambda!70724 lt!693366))))

(assert (=> d!544605 (= (lemmaSemiInverse!659 (transformation!3521 (rule!5601 (_1!11023 lt!693369))) lt!693366) lt!693728)))

(declare-fun b_lambda!58465 () Bool)

(assert (=> (not b_lambda!58465) (not d!544605)))

(assert (=> d!544605 t!166742))

(declare-fun b_and!136987 () Bool)

(assert (= b_and!136965 (and (=> t!166742 result!130458) b_and!136987)))

(assert (=> d!544605 t!166744))

(declare-fun b_and!136989 () Bool)

(assert (= b_and!136967 (and (=> t!166744 result!130462) b_and!136989)))

(assert (=> d!544605 t!166746))

(declare-fun b_and!136991 () Bool)

(assert (= b_and!136969 (and (=> t!166746 result!130464) b_and!136991)))

(declare-fun b_lambda!58467 () Bool)

(assert (=> (not b_lambda!58467) (not d!544605)))

(assert (=> d!544605 t!166748))

(declare-fun b_and!136993 () Bool)

(assert (= b_and!136977 (and (=> t!166748 result!130466) b_and!136993)))

(assert (=> d!544605 t!166750))

(declare-fun b_and!136995 () Bool)

(assert (= b_and!136979 (and (=> t!166750 result!130470) b_and!136995)))

(assert (=> d!544605 t!166752))

(declare-fun b_and!136997 () Bool)

(assert (= b_and!136981 (and (=> t!166752 result!130472) b_and!136997)))

(assert (=> d!544605 m!2205619))

(declare-fun m!2206573 () Bool)

(assert (=> d!544605 m!2206573))

(assert (=> d!544605 m!2205763))

(assert (=> d!544605 m!2205763))

(assert (=> d!544605 m!2205765))

(assert (=> d!544605 m!2205765))

(assert (=> d!544605 m!2205767))

(assert (=> b!1782988 d!544605))

(declare-fun d!544607 () Bool)

(assert (=> d!544607 (matchR!2322 (rulesRegex!877 thiss!24550 rules!3447) (list!7991 (charsOf!2170 (_1!11023 lt!693369))))))

(declare-fun lt!693731 () Unit!33967)

(declare-fun choose!11224 (LexerInterface!3150 List!19722 List!19721 Token!6608 Rule!6842 List!19721) Unit!33967)

(assert (=> d!544607 (= lt!693731 (choose!11224 thiss!24550 rules!3447 lt!693407 (_1!11023 lt!693369) (rule!5601 (_1!11023 lt!693369)) (_2!11023 lt!693369)))))

(assert (=> d!544607 (not (isEmpty!12419 rules!3447))))

(assert (=> d!544607 (= (lemmaMaxPrefixThenMatchesRulesRegex!228 thiss!24550 rules!3447 lt!693407 (_1!11023 lt!693369) (rule!5601 (_1!11023 lt!693369)) (_2!11023 lt!693369)) lt!693731)))

(declare-fun bs!405312 () Bool)

(assert (= bs!405312 d!544607))

(assert (=> bs!405312 m!2205693))

(assert (=> bs!405312 m!2205749))

(assert (=> bs!405312 m!2205697))

(declare-fun m!2206575 () Bool)

(assert (=> bs!405312 m!2206575))

(declare-fun m!2206577 () Bool)

(assert (=> bs!405312 m!2206577))

(assert (=> bs!405312 m!2205633))

(assert (=> bs!405312 m!2205749))

(assert (=> bs!405312 m!2205633))

(assert (=> bs!405312 m!2205697))

(assert (=> b!1782993 d!544607))

(declare-fun b!1783617 () Bool)

(declare-fun res!804115 () Bool)

(declare-fun e!1141449 () Bool)

(assert (=> b!1783617 (=> (not res!804115) (not e!1141449))))

(assert (=> b!1783617 (= res!804115 (= (head!4170 lt!693406) (head!4170 lt!693405)))))

(declare-fun b!1783618 () Bool)

(assert (=> b!1783618 (= e!1141449 (isPrefix!1761 (tail!2669 lt!693406) (tail!2669 lt!693405)))))

(declare-fun b!1783619 () Bool)

(declare-fun e!1141448 () Bool)

(assert (=> b!1783619 (= e!1141448 (>= (size!15612 lt!693405) (size!15612 lt!693406)))))

(declare-fun b!1783616 () Bool)

(declare-fun e!1141450 () Bool)

(assert (=> b!1783616 (= e!1141450 e!1141449)))

(declare-fun res!804116 () Bool)

(assert (=> b!1783616 (=> (not res!804116) (not e!1141449))))

(assert (=> b!1783616 (= res!804116 (not ((_ is Nil!19651) lt!693405)))))

(declare-fun d!544609 () Bool)

(assert (=> d!544609 e!1141448))

(declare-fun res!804118 () Bool)

(assert (=> d!544609 (=> res!804118 e!1141448)))

(declare-fun lt!693732 () Bool)

(assert (=> d!544609 (= res!804118 (not lt!693732))))

(assert (=> d!544609 (= lt!693732 e!1141450)))

(declare-fun res!804117 () Bool)

(assert (=> d!544609 (=> res!804117 e!1141450)))

(assert (=> d!544609 (= res!804117 ((_ is Nil!19651) lt!693406))))

(assert (=> d!544609 (= (isPrefix!1761 lt!693406 lt!693405) lt!693732)))

(assert (= (and d!544609 (not res!804117)) b!1783616))

(assert (= (and b!1783616 res!804116) b!1783617))

(assert (= (and b!1783617 res!804115) b!1783618))

(assert (= (and d!544609 (not res!804118)) b!1783619))

(declare-fun m!2206579 () Bool)

(assert (=> b!1783617 m!2206579))

(assert (=> b!1783617 m!2205943))

(declare-fun m!2206581 () Bool)

(assert (=> b!1783618 m!2206581))

(assert (=> b!1783618 m!2205947))

(assert (=> b!1783618 m!2206581))

(assert (=> b!1783618 m!2205947))

(declare-fun m!2206583 () Bool)

(assert (=> b!1783618 m!2206583))

(assert (=> b!1783619 m!2205707))

(declare-fun m!2206585 () Bool)

(assert (=> b!1783619 m!2206585))

(assert (=> b!1782993 d!544609))

(declare-fun d!544611 () Bool)

(assert (=> d!544611 (= suffix!1421 lt!693408)))

(declare-fun lt!693733 () Unit!33967)

(assert (=> d!544611 (= lt!693733 (choose!11220 lt!693367 suffix!1421 lt!693367 lt!693408 lt!693407))))

(assert (=> d!544611 (isPrefix!1761 lt!693367 lt!693407)))

(assert (=> d!544611 (= (lemmaSamePrefixThenSameSuffix!872 lt!693367 suffix!1421 lt!693367 lt!693408 lt!693407) lt!693733)))

(declare-fun bs!405313 () Bool)

(assert (= bs!405313 d!544611))

(declare-fun m!2206587 () Bool)

(assert (=> bs!405313 m!2206587))

(assert (=> bs!405313 m!2205627))

(assert (=> b!1782993 d!544611))

(declare-fun b!1783621 () Bool)

(declare-fun res!804119 () Bool)

(declare-fun e!1141452 () Bool)

(assert (=> b!1783621 (=> (not res!804119) (not e!1141452))))

(assert (=> b!1783621 (= res!804119 (= (head!4170 (++!5345 lt!693367 (Cons!19651 (head!4170 lt!693408) Nil!19651))) (head!4170 lt!693407)))))

(declare-fun b!1783622 () Bool)

(assert (=> b!1783622 (= e!1141452 (isPrefix!1761 (tail!2669 (++!5345 lt!693367 (Cons!19651 (head!4170 lt!693408) Nil!19651))) (tail!2669 lt!693407)))))

(declare-fun b!1783623 () Bool)

(declare-fun e!1141451 () Bool)

(assert (=> b!1783623 (= e!1141451 (>= (size!15612 lt!693407) (size!15612 (++!5345 lt!693367 (Cons!19651 (head!4170 lt!693408) Nil!19651)))))))

(declare-fun b!1783620 () Bool)

(declare-fun e!1141453 () Bool)

(assert (=> b!1783620 (= e!1141453 e!1141452)))

(declare-fun res!804120 () Bool)

(assert (=> b!1783620 (=> (not res!804120) (not e!1141452))))

(assert (=> b!1783620 (= res!804120 (not ((_ is Nil!19651) lt!693407)))))

(declare-fun d!544613 () Bool)

(assert (=> d!544613 e!1141451))

(declare-fun res!804122 () Bool)

(assert (=> d!544613 (=> res!804122 e!1141451)))

(declare-fun lt!693734 () Bool)

(assert (=> d!544613 (= res!804122 (not lt!693734))))

(assert (=> d!544613 (= lt!693734 e!1141453)))

(declare-fun res!804121 () Bool)

(assert (=> d!544613 (=> res!804121 e!1141453)))

(assert (=> d!544613 (= res!804121 ((_ is Nil!19651) (++!5345 lt!693367 (Cons!19651 (head!4170 lt!693408) Nil!19651))))))

(assert (=> d!544613 (= (isPrefix!1761 (++!5345 lt!693367 (Cons!19651 (head!4170 lt!693408) Nil!19651)) lt!693407) lt!693734)))

(assert (= (and d!544613 (not res!804121)) b!1783620))

(assert (= (and b!1783620 res!804120) b!1783621))

(assert (= (and b!1783621 res!804119) b!1783622))

(assert (= (and d!544613 (not res!804122)) b!1783623))

(assert (=> b!1783621 m!2205733))

(declare-fun m!2206589 () Bool)

(assert (=> b!1783621 m!2206589))

(assert (=> b!1783621 m!2205993))

(assert (=> b!1783622 m!2205733))

(declare-fun m!2206591 () Bool)

(assert (=> b!1783622 m!2206591))

(assert (=> b!1783622 m!2205997))

(assert (=> b!1783622 m!2206591))

(assert (=> b!1783622 m!2205997))

(declare-fun m!2206593 () Bool)

(assert (=> b!1783622 m!2206593))

(assert (=> b!1783623 m!2205987))

(assert (=> b!1783623 m!2205733))

(declare-fun m!2206595 () Bool)

(assert (=> b!1783623 m!2206595))

(assert (=> b!1782993 d!544613))

(declare-fun b!1783652 () Bool)

(declare-fun e!1141474 () Bool)

(declare-fun derivativeStep!1262 (Regex!4849 C!9872) Regex!4849)

(assert (=> b!1783652 (= e!1141474 (matchR!2322 (derivativeStep!1262 lt!693394 (head!4170 lt!693405)) (tail!2669 lt!693405)))))

(declare-fun b!1783653 () Bool)

(declare-fun e!1141468 () Bool)

(declare-fun e!1141469 () Bool)

(assert (=> b!1783653 (= e!1141468 e!1141469)))

(declare-fun res!804142 () Bool)

(assert (=> b!1783653 (=> res!804142 e!1141469)))

(declare-fun call!111335 () Bool)

(assert (=> b!1783653 (= res!804142 call!111335)))

(declare-fun b!1783654 () Bool)

(declare-fun e!1141472 () Bool)

(declare-fun lt!693737 () Bool)

(assert (=> b!1783654 (= e!1141472 (not lt!693737))))

(declare-fun b!1783655 () Bool)

(declare-fun e!1141471 () Bool)

(assert (=> b!1783655 (= e!1141471 e!1141472)))

(declare-fun c!290141 () Bool)

(assert (=> b!1783655 (= c!290141 ((_ is EmptyLang!4849) lt!693394))))

(declare-fun b!1783656 () Bool)

(assert (=> b!1783656 (= e!1141469 (not (= (head!4170 lt!693405) (c!290030 lt!693394))))))

(declare-fun b!1783657 () Bool)

(declare-fun nullable!1493 (Regex!4849) Bool)

(assert (=> b!1783657 (= e!1141474 (nullable!1493 lt!693394))))

(declare-fun b!1783658 () Bool)

(declare-fun e!1141473 () Bool)

(assert (=> b!1783658 (= e!1141473 (= (head!4170 lt!693405) (c!290030 lt!693394)))))

(declare-fun bm!111330 () Bool)

(assert (=> bm!111330 (= call!111335 (isEmpty!12418 lt!693405))))

(declare-fun b!1783659 () Bool)

(declare-fun res!804141 () Bool)

(assert (=> b!1783659 (=> (not res!804141) (not e!1141473))))

(assert (=> b!1783659 (= res!804141 (not call!111335))))

(declare-fun b!1783660 () Bool)

(declare-fun res!804145 () Bool)

(assert (=> b!1783660 (=> (not res!804145) (not e!1141473))))

(assert (=> b!1783660 (= res!804145 (isEmpty!12418 (tail!2669 lt!693405)))))

(declare-fun b!1783661 () Bool)

(declare-fun res!804143 () Bool)

(assert (=> b!1783661 (=> res!804143 e!1141469)))

(assert (=> b!1783661 (= res!804143 (not (isEmpty!12418 (tail!2669 lt!693405))))))

(declare-fun b!1783662 () Bool)

(assert (=> b!1783662 (= e!1141471 (= lt!693737 call!111335))))

(declare-fun b!1783663 () Bool)

(declare-fun res!804140 () Bool)

(declare-fun e!1141470 () Bool)

(assert (=> b!1783663 (=> res!804140 e!1141470)))

(assert (=> b!1783663 (= res!804140 (not ((_ is ElementMatch!4849) lt!693394)))))

(assert (=> b!1783663 (= e!1141472 e!1141470)))

(declare-fun d!544615 () Bool)

(assert (=> d!544615 e!1141471))

(declare-fun c!290142 () Bool)

(assert (=> d!544615 (= c!290142 ((_ is EmptyExpr!4849) lt!693394))))

(assert (=> d!544615 (= lt!693737 e!1141474)))

(declare-fun c!290143 () Bool)

(assert (=> d!544615 (= c!290143 (isEmpty!12418 lt!693405))))

(declare-fun validRegex!1967 (Regex!4849) Bool)

(assert (=> d!544615 (validRegex!1967 lt!693394)))

(assert (=> d!544615 (= (matchR!2322 lt!693394 lt!693405) lt!693737)))

(declare-fun b!1783664 () Bool)

(assert (=> b!1783664 (= e!1141470 e!1141468)))

(declare-fun res!804139 () Bool)

(assert (=> b!1783664 (=> (not res!804139) (not e!1141468))))

(assert (=> b!1783664 (= res!804139 (not lt!693737))))

(declare-fun b!1783665 () Bool)

(declare-fun res!804144 () Bool)

(assert (=> b!1783665 (=> res!804144 e!1141470)))

(assert (=> b!1783665 (= res!804144 e!1141473)))

(declare-fun res!804146 () Bool)

(assert (=> b!1783665 (=> (not res!804146) (not e!1141473))))

(assert (=> b!1783665 (= res!804146 lt!693737)))

(assert (= (and d!544615 c!290143) b!1783657))

(assert (= (and d!544615 (not c!290143)) b!1783652))

(assert (= (and d!544615 c!290142) b!1783662))

(assert (= (and d!544615 (not c!290142)) b!1783655))

(assert (= (and b!1783655 c!290141) b!1783654))

(assert (= (and b!1783655 (not c!290141)) b!1783663))

(assert (= (and b!1783663 (not res!804140)) b!1783665))

(assert (= (and b!1783665 res!804146) b!1783659))

(assert (= (and b!1783659 res!804141) b!1783660))

(assert (= (and b!1783660 res!804145) b!1783658))

(assert (= (and b!1783665 (not res!804144)) b!1783664))

(assert (= (and b!1783664 res!804139) b!1783653))

(assert (= (and b!1783653 (not res!804142)) b!1783661))

(assert (= (and b!1783661 (not res!804143)) b!1783656))

(assert (= (or b!1783662 b!1783653 b!1783659) bm!111330))

(assert (=> b!1783658 m!2205943))

(declare-fun m!2206597 () Bool)

(assert (=> b!1783657 m!2206597))

(assert (=> b!1783656 m!2205943))

(assert (=> b!1783661 m!2205947))

(assert (=> b!1783661 m!2205947))

(declare-fun m!2206599 () Bool)

(assert (=> b!1783661 m!2206599))

(assert (=> d!544615 m!2205661))

(declare-fun m!2206601 () Bool)

(assert (=> d!544615 m!2206601))

(assert (=> b!1783660 m!2205947))

(assert (=> b!1783660 m!2205947))

(assert (=> b!1783660 m!2206599))

(assert (=> bm!111330 m!2205661))

(assert (=> b!1783652 m!2205943))

(assert (=> b!1783652 m!2205943))

(declare-fun m!2206603 () Bool)

(assert (=> b!1783652 m!2206603))

(assert (=> b!1783652 m!2205947))

(assert (=> b!1783652 m!2206603))

(assert (=> b!1783652 m!2205947))

(declare-fun m!2206605 () Bool)

(assert (=> b!1783652 m!2206605))

(assert (=> b!1782993 d!544615))

(declare-fun d!544617 () Bool)

(assert (=> d!544617 (not (matchR!2322 lt!693394 lt!693405))))

(declare-fun lt!693740 () Unit!33967)

(declare-fun choose!11226 (Regex!4849 List!19721 List!19721) Unit!33967)

(assert (=> d!544617 (= lt!693740 (choose!11226 lt!693394 lt!693406 lt!693405))))

(assert (=> d!544617 (validRegex!1967 lt!693394)))

(assert (=> d!544617 (= (lemmaNotPrefixMatchThenCannotMatchLonger!160 lt!693394 lt!693406 lt!693405) lt!693740)))

(declare-fun bs!405314 () Bool)

(assert (= bs!405314 d!544617))

(assert (=> bs!405314 m!2205725))

(declare-fun m!2206607 () Bool)

(assert (=> bs!405314 m!2206607))

(assert (=> bs!405314 m!2206601))

(assert (=> b!1782993 d!544617))

(declare-fun d!544619 () Bool)

(assert (=> d!544619 (= (head!4170 lt!693408) (h!25052 lt!693408))))

(assert (=> b!1782993 d!544619))

(declare-fun b!1783669 () Bool)

(declare-fun e!1141476 () Bool)

(declare-fun lt!693741 () List!19721)

(assert (=> b!1783669 (= e!1141476 (or (not (= (Cons!19651 (head!4170 lt!693408) Nil!19651) Nil!19651)) (= lt!693741 lt!693367)))))

(declare-fun b!1783666 () Bool)

(declare-fun e!1141475 () List!19721)

(assert (=> b!1783666 (= e!1141475 (Cons!19651 (head!4170 lt!693408) Nil!19651))))

(declare-fun b!1783667 () Bool)

(assert (=> b!1783667 (= e!1141475 (Cons!19651 (h!25052 lt!693367) (++!5345 (t!166760 lt!693367) (Cons!19651 (head!4170 lt!693408) Nil!19651))))))

(declare-fun d!544621 () Bool)

(assert (=> d!544621 e!1141476))

(declare-fun res!804147 () Bool)

(assert (=> d!544621 (=> (not res!804147) (not e!1141476))))

(assert (=> d!544621 (= res!804147 (= (content!2862 lt!693741) ((_ map or) (content!2862 lt!693367) (content!2862 (Cons!19651 (head!4170 lt!693408) Nil!19651)))))))

(assert (=> d!544621 (= lt!693741 e!1141475)))

(declare-fun c!290144 () Bool)

(assert (=> d!544621 (= c!290144 ((_ is Nil!19651) lt!693367))))

(assert (=> d!544621 (= (++!5345 lt!693367 (Cons!19651 (head!4170 lt!693408) Nil!19651)) lt!693741)))

(declare-fun b!1783668 () Bool)

(declare-fun res!804148 () Bool)

(assert (=> b!1783668 (=> (not res!804148) (not e!1141476))))

(assert (=> b!1783668 (= res!804148 (= (size!15612 lt!693741) (+ (size!15612 lt!693367) (size!15612 (Cons!19651 (head!4170 lt!693408) Nil!19651)))))))

(assert (= (and d!544621 c!290144) b!1783666))

(assert (= (and d!544621 (not c!290144)) b!1783667))

(assert (= (and d!544621 res!804147) b!1783668))

(assert (= (and b!1783668 res!804148) b!1783669))

(declare-fun m!2206609 () Bool)

(assert (=> b!1783667 m!2206609))

(declare-fun m!2206611 () Bool)

(assert (=> d!544621 m!2206611))

(assert (=> d!544621 m!2205921))

(declare-fun m!2206613 () Bool)

(assert (=> d!544621 m!2206613))

(declare-fun m!2206615 () Bool)

(assert (=> b!1783668 m!2206615))

(assert (=> b!1783668 m!2205927))

(declare-fun m!2206617 () Bool)

(assert (=> b!1783668 m!2206617))

(assert (=> b!1782993 d!544621))

(declare-fun d!544623 () Bool)

(assert (=> d!544623 (isPrefix!1761 lt!693406 lt!693405)))

(declare-fun lt!693744 () Unit!33967)

(declare-fun choose!11228 (List!19721 List!19721 List!19721) Unit!33967)

(assert (=> d!544623 (= lt!693744 (choose!11228 lt!693405 lt!693406 lt!693407))))

(assert (=> d!544623 (isPrefix!1761 lt!693405 lt!693407)))

(assert (=> d!544623 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!169 lt!693405 lt!693406 lt!693407) lt!693744)))

(declare-fun bs!405315 () Bool)

(assert (= bs!405315 d!544623))

(assert (=> bs!405315 m!2205739))

(declare-fun m!2206619 () Bool)

(assert (=> bs!405315 m!2206619))

(assert (=> bs!405315 m!2205635))

(assert (=> b!1782993 d!544623))

(declare-fun d!544625 () Bool)

(declare-fun lt!693745 () List!19721)

(assert (=> d!544625 (= (++!5345 lt!693367 lt!693745) lt!693407)))

(declare-fun e!1141477 () List!19721)

(assert (=> d!544625 (= lt!693745 e!1141477)))

(declare-fun c!290145 () Bool)

(assert (=> d!544625 (= c!290145 ((_ is Cons!19651) lt!693367))))

(assert (=> d!544625 (>= (size!15612 lt!693407) (size!15612 lt!693367))))

(assert (=> d!544625 (= (getSuffix!928 lt!693407 lt!693367) lt!693745)))

(declare-fun b!1783670 () Bool)

(assert (=> b!1783670 (= e!1141477 (getSuffix!928 (tail!2669 lt!693407) (t!166760 lt!693367)))))

(declare-fun b!1783671 () Bool)

(assert (=> b!1783671 (= e!1141477 lt!693407)))

(assert (= (and d!544625 c!290145) b!1783670))

(assert (= (and d!544625 (not c!290145)) b!1783671))

(declare-fun m!2206621 () Bool)

(assert (=> d!544625 m!2206621))

(assert (=> d!544625 m!2205987))

(assert (=> d!544625 m!2205927))

(assert (=> b!1783670 m!2205997))

(assert (=> b!1783670 m!2205997))

(declare-fun m!2206623 () Bool)

(assert (=> b!1783670 m!2206623))

(assert (=> b!1782993 d!544625))

(declare-fun d!544627 () Bool)

(assert (=> d!544627 (isPrefix!1761 (++!5345 lt!693367 (Cons!19651 (head!4170 (getSuffix!928 lt!693407 lt!693367)) Nil!19651)) lt!693407)))

(declare-fun lt!693748 () Unit!33967)

(declare-fun choose!11230 (List!19721 List!19721) Unit!33967)

(assert (=> d!544627 (= lt!693748 (choose!11230 lt!693367 lt!693407))))

(assert (=> d!544627 (isPrefix!1761 lt!693367 lt!693407)))

(assert (=> d!544627 (= (lemmaAddHeadSuffixToPrefixStillPrefix!297 lt!693367 lt!693407) lt!693748)))

(declare-fun bs!405316 () Bool)

(assert (= bs!405316 d!544627))

(declare-fun m!2206625 () Bool)

(assert (=> bs!405316 m!2206625))

(declare-fun m!2206627 () Bool)

(assert (=> bs!405316 m!2206627))

(assert (=> bs!405316 m!2205723))

(declare-fun m!2206629 () Bool)

(assert (=> bs!405316 m!2206629))

(assert (=> bs!405316 m!2205723))

(assert (=> bs!405316 m!2205627))

(assert (=> bs!405316 m!2206625))

(declare-fun m!2206631 () Bool)

(assert (=> bs!405316 m!2206631))

(assert (=> b!1782993 d!544627))

(declare-fun b!1783672 () Bool)

(declare-fun e!1141484 () Bool)

(assert (=> b!1783672 (= e!1141484 (matchR!2322 (derivativeStep!1262 (regex!3521 rule!422) (head!4170 lt!693367)) (tail!2669 lt!693367)))))

(declare-fun b!1783673 () Bool)

(declare-fun e!1141478 () Bool)

(declare-fun e!1141479 () Bool)

(assert (=> b!1783673 (= e!1141478 e!1141479)))

(declare-fun res!804152 () Bool)

(assert (=> b!1783673 (=> res!804152 e!1141479)))

(declare-fun call!111336 () Bool)

(assert (=> b!1783673 (= res!804152 call!111336)))

(declare-fun b!1783674 () Bool)

(declare-fun e!1141482 () Bool)

(declare-fun lt!693749 () Bool)

(assert (=> b!1783674 (= e!1141482 (not lt!693749))))

(declare-fun b!1783675 () Bool)

(declare-fun e!1141481 () Bool)

(assert (=> b!1783675 (= e!1141481 e!1141482)))

(declare-fun c!290146 () Bool)

(assert (=> b!1783675 (= c!290146 ((_ is EmptyLang!4849) (regex!3521 rule!422)))))

(declare-fun b!1783676 () Bool)

(assert (=> b!1783676 (= e!1141479 (not (= (head!4170 lt!693367) (c!290030 (regex!3521 rule!422)))))))

(declare-fun b!1783677 () Bool)

(assert (=> b!1783677 (= e!1141484 (nullable!1493 (regex!3521 rule!422)))))

(declare-fun b!1783678 () Bool)

(declare-fun e!1141483 () Bool)

(assert (=> b!1783678 (= e!1141483 (= (head!4170 lt!693367) (c!290030 (regex!3521 rule!422))))))

(declare-fun bm!111331 () Bool)

(assert (=> bm!111331 (= call!111336 (isEmpty!12418 lt!693367))))

(declare-fun b!1783679 () Bool)

(declare-fun res!804151 () Bool)

(assert (=> b!1783679 (=> (not res!804151) (not e!1141483))))

(assert (=> b!1783679 (= res!804151 (not call!111336))))

(declare-fun b!1783680 () Bool)

(declare-fun res!804155 () Bool)

(assert (=> b!1783680 (=> (not res!804155) (not e!1141483))))

(assert (=> b!1783680 (= res!804155 (isEmpty!12418 (tail!2669 lt!693367)))))

(declare-fun b!1783681 () Bool)

(declare-fun res!804153 () Bool)

(assert (=> b!1783681 (=> res!804153 e!1141479)))

(assert (=> b!1783681 (= res!804153 (not (isEmpty!12418 (tail!2669 lt!693367))))))

(declare-fun b!1783682 () Bool)

(assert (=> b!1783682 (= e!1141481 (= lt!693749 call!111336))))

(declare-fun b!1783683 () Bool)

(declare-fun res!804150 () Bool)

(declare-fun e!1141480 () Bool)

(assert (=> b!1783683 (=> res!804150 e!1141480)))

(assert (=> b!1783683 (= res!804150 (not ((_ is ElementMatch!4849) (regex!3521 rule!422))))))

(assert (=> b!1783683 (= e!1141482 e!1141480)))

(declare-fun d!544629 () Bool)

(assert (=> d!544629 e!1141481))

(declare-fun c!290147 () Bool)

(assert (=> d!544629 (= c!290147 ((_ is EmptyExpr!4849) (regex!3521 rule!422)))))

(assert (=> d!544629 (= lt!693749 e!1141484)))

(declare-fun c!290148 () Bool)

(assert (=> d!544629 (= c!290148 (isEmpty!12418 lt!693367))))

(assert (=> d!544629 (validRegex!1967 (regex!3521 rule!422))))

(assert (=> d!544629 (= (matchR!2322 (regex!3521 rule!422) lt!693367) lt!693749)))

(declare-fun b!1783684 () Bool)

(assert (=> b!1783684 (= e!1141480 e!1141478)))

(declare-fun res!804149 () Bool)

(assert (=> b!1783684 (=> (not res!804149) (not e!1141478))))

(assert (=> b!1783684 (= res!804149 (not lt!693749))))

(declare-fun b!1783685 () Bool)

(declare-fun res!804154 () Bool)

(assert (=> b!1783685 (=> res!804154 e!1141480)))

(assert (=> b!1783685 (= res!804154 e!1141483)))

(declare-fun res!804156 () Bool)

(assert (=> b!1783685 (=> (not res!804156) (not e!1141483))))

(assert (=> b!1783685 (= res!804156 lt!693749)))

(assert (= (and d!544629 c!290148) b!1783677))

(assert (= (and d!544629 (not c!290148)) b!1783672))

(assert (= (and d!544629 c!290147) b!1783682))

(assert (= (and d!544629 (not c!290147)) b!1783675))

(assert (= (and b!1783675 c!290146) b!1783674))

(assert (= (and b!1783675 (not c!290146)) b!1783683))

(assert (= (and b!1783683 (not res!804150)) b!1783685))

(assert (= (and b!1783685 res!804156) b!1783679))

(assert (= (and b!1783679 res!804151) b!1783680))

(assert (= (and b!1783680 res!804155) b!1783678))

(assert (= (and b!1783685 (not res!804154)) b!1783684))

(assert (= (and b!1783684 res!804149) b!1783673))

(assert (= (and b!1783673 (not res!804152)) b!1783681))

(assert (= (and b!1783681 (not res!804153)) b!1783676))

(assert (= (or b!1783682 b!1783673 b!1783679) bm!111331))

(assert (=> b!1783678 m!2205991))

(declare-fun m!2206633 () Bool)

(assert (=> b!1783677 m!2206633))

(assert (=> b!1783676 m!2205991))

(assert (=> b!1783681 m!2205995))

(assert (=> b!1783681 m!2205995))

(declare-fun m!2206635 () Bool)

(assert (=> b!1783681 m!2206635))

(declare-fun m!2206637 () Bool)

(assert (=> d!544629 m!2206637))

(declare-fun m!2206639 () Bool)

(assert (=> d!544629 m!2206639))

(assert (=> b!1783680 m!2205995))

(assert (=> b!1783680 m!2205995))

(assert (=> b!1783680 m!2206635))

(assert (=> bm!111331 m!2206637))

(assert (=> b!1783672 m!2205991))

(assert (=> b!1783672 m!2205991))

(declare-fun m!2206641 () Bool)

(assert (=> b!1783672 m!2206641))

(assert (=> b!1783672 m!2205995))

(assert (=> b!1783672 m!2206641))

(assert (=> b!1783672 m!2205995))

(declare-fun m!2206643 () Bool)

(assert (=> b!1783672 m!2206643))

(assert (=> b!1782992 d!544629))

(declare-fun d!544631 () Bool)

(declare-fun res!804161 () Bool)

(declare-fun e!1141487 () Bool)

(assert (=> d!544631 (=> (not res!804161) (not e!1141487))))

(assert (=> d!544631 (= res!804161 (validRegex!1967 (regex!3521 rule!422)))))

(assert (=> d!544631 (= (ruleValid!1019 thiss!24550 rule!422) e!1141487)))

(declare-fun b!1783690 () Bool)

(declare-fun res!804162 () Bool)

(assert (=> b!1783690 (=> (not res!804162) (not e!1141487))))

(assert (=> b!1783690 (= res!804162 (not (nullable!1493 (regex!3521 rule!422))))))

(declare-fun b!1783691 () Bool)

(assert (=> b!1783691 (= e!1141487 (not (= (tag!3919 rule!422) (String!22388 ""))))))

(assert (= (and d!544631 res!804161) b!1783690))

(assert (= (and b!1783690 res!804162) b!1783691))

(assert (=> d!544631 m!2206639))

(assert (=> b!1783690 m!2206633))

(assert (=> b!1782992 d!544631))

(declare-fun d!544633 () Bool)

(assert (=> d!544633 (ruleValid!1019 thiss!24550 rule!422)))

(declare-fun lt!693752 () Unit!33967)

(declare-fun choose!11231 (LexerInterface!3150 Rule!6842 List!19722) Unit!33967)

(assert (=> d!544633 (= lt!693752 (choose!11231 thiss!24550 rule!422 rules!3447))))

(assert (=> d!544633 (contains!3553 rules!3447 rule!422)))

(assert (=> d!544633 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!542 thiss!24550 rule!422 rules!3447) lt!693752)))

(declare-fun bs!405317 () Bool)

(assert (= bs!405317 d!544633))

(assert (=> bs!405317 m!2205657))

(declare-fun m!2206645 () Bool)

(assert (=> bs!405317 m!2206645))

(assert (=> bs!405317 m!2205663))

(assert (=> b!1782992 d!544633))

(declare-fun d!544635 () Bool)

(assert (=> d!544635 (= (inv!25575 (tag!3919 (h!25053 rules!3447))) (= (mod (str.len (value!110020 (tag!3919 (h!25053 rules!3447)))) 2) 0))))

(assert (=> b!1783013 d!544635))

(declare-fun d!544637 () Bool)

(declare-fun res!804163 () Bool)

(declare-fun e!1141488 () Bool)

(assert (=> d!544637 (=> (not res!804163) (not e!1141488))))

(assert (=> d!544637 (= res!804163 (semiInverseModEq!1408 (toChars!4907 (transformation!3521 (h!25053 rules!3447))) (toValue!5048 (transformation!3521 (h!25053 rules!3447)))))))

(assert (=> d!544637 (= (inv!25580 (transformation!3521 (h!25053 rules!3447))) e!1141488)))

(declare-fun b!1783692 () Bool)

(assert (=> b!1783692 (= e!1141488 (equivClasses!1349 (toChars!4907 (transformation!3521 (h!25053 rules!3447))) (toValue!5048 (transformation!3521 (h!25053 rules!3447)))))))

(assert (= (and d!544637 res!804163) b!1783692))

(declare-fun m!2206647 () Bool)

(assert (=> d!544637 m!2206647))

(declare-fun m!2206649 () Bool)

(assert (=> b!1783692 m!2206649))

(assert (=> b!1783013 d!544637))

(declare-fun b!1783703 () Bool)

(declare-fun e!1141497 () Bool)

(declare-fun e!1141496 () Bool)

(assert (=> b!1783703 (= e!1141497 e!1141496)))

(declare-fun c!290153 () Bool)

(assert (=> b!1783703 (= c!290153 ((_ is IntegerValue!10834) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366)))))

(declare-fun b!1783704 () Bool)

(declare-fun inv!17 (TokenValue!3611) Bool)

(assert (=> b!1783704 (= e!1141496 (inv!17 (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366)))))

(declare-fun b!1783705 () Bool)

(declare-fun inv!16 (TokenValue!3611) Bool)

(assert (=> b!1783705 (= e!1141497 (inv!16 (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366)))))

(declare-fun d!544639 () Bool)

(declare-fun c!290154 () Bool)

(assert (=> d!544639 (= c!290154 ((_ is IntegerValue!10833) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366)))))

(assert (=> d!544639 (= (inv!21 (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366)) e!1141497)))

(declare-fun b!1783706 () Bool)

(declare-fun e!1141495 () Bool)

(declare-fun inv!15 (TokenValue!3611) Bool)

(assert (=> b!1783706 (= e!1141495 (inv!15 (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366)))))

(declare-fun b!1783707 () Bool)

(declare-fun res!804166 () Bool)

(assert (=> b!1783707 (=> res!804166 e!1141495)))

(assert (=> b!1783707 (= res!804166 (not ((_ is IntegerValue!10835) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366))))))

(assert (=> b!1783707 (= e!1141496 e!1141495)))

(assert (= (and d!544639 c!290154) b!1783705))

(assert (= (and d!544639 (not c!290154)) b!1783703))

(assert (= (and b!1783703 c!290153) b!1783704))

(assert (= (and b!1783703 (not c!290153)) b!1783707))

(assert (= (and b!1783707 (not res!804166)) b!1783706))

(declare-fun m!2206651 () Bool)

(assert (=> b!1783704 m!2206651))

(declare-fun m!2206653 () Bool)

(assert (=> b!1783705 m!2206653))

(declare-fun m!2206655 () Bool)

(assert (=> b!1783706 m!2206655))

(assert (=> tb!108437 d!544639))

(declare-fun d!544641 () Bool)

(declare-fun c!290155 () Bool)

(assert (=> d!544641 (= c!290155 ((_ is Node!6537) (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (value!110021 (_1!11023 lt!693369))))))))

(declare-fun e!1141498 () Bool)

(assert (=> d!544641 (= (inv!25582 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (value!110021 (_1!11023 lt!693369))))) e!1141498)))

(declare-fun b!1783708 () Bool)

(assert (=> b!1783708 (= e!1141498 (inv!25586 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (value!110021 (_1!11023 lt!693369))))))))

(declare-fun b!1783709 () Bool)

(declare-fun e!1141499 () Bool)

(assert (=> b!1783709 (= e!1141498 e!1141499)))

(declare-fun res!804167 () Bool)

(assert (=> b!1783709 (= res!804167 (not ((_ is Leaf!9518) (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (value!110021 (_1!11023 lt!693369)))))))))

(assert (=> b!1783709 (=> res!804167 e!1141499)))

(declare-fun b!1783710 () Bool)

(assert (=> b!1783710 (= e!1141499 (inv!25587 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (value!110021 (_1!11023 lt!693369))))))))

(assert (= (and d!544641 c!290155) b!1783708))

(assert (= (and d!544641 (not c!290155)) b!1783709))

(assert (= (and b!1783709 (not res!804167)) b!1783710))

(declare-fun m!2206657 () Bool)

(assert (=> b!1783708 m!2206657))

(declare-fun m!2206659 () Bool)

(assert (=> b!1783710 m!2206659))

(assert (=> b!1783032 d!544641))

(declare-fun d!544643 () Bool)

(assert (=> d!544643 (= (get!6042 lt!693398) (v!25557 lt!693398))))

(assert (=> b!1783012 d!544643))

(declare-fun d!544645 () Bool)

(declare-fun choose!11232 (Int) Bool)

(assert (=> d!544645 (= (Forall!888 lambda!70710) (choose!11232 lambda!70710))))

(declare-fun bs!405318 () Bool)

(assert (= bs!405318 d!544645))

(declare-fun m!2206661 () Bool)

(assert (=> bs!405318 m!2206661))

(assert (=> b!1782974 d!544645))

(declare-fun d!544647 () Bool)

(declare-fun e!1141502 () Bool)

(assert (=> d!544647 e!1141502))

(declare-fun res!804170 () Bool)

(assert (=> d!544647 (=> (not res!804170) (not e!1141502))))

(assert (=> d!544647 (= res!804170 (semiInverseModEq!1408 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))))))

(declare-fun Unit!33979 () Unit!33967)

(assert (=> d!544647 (= (lemmaInv!720 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) Unit!33979)))

(declare-fun b!1783713 () Bool)

(assert (=> b!1783713 (= e!1141502 (equivClasses!1349 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))))))

(assert (= (and d!544647 res!804170) b!1783713))

(declare-fun m!2206663 () Bool)

(assert (=> d!544647 m!2206663))

(declare-fun m!2206665 () Bool)

(assert (=> b!1783713 m!2206665))

(assert (=> b!1782974 d!544647))

(declare-fun b!1783714 () Bool)

(declare-fun e!1141509 () Bool)

(assert (=> b!1783714 (= e!1141509 (matchR!2322 (derivativeStep!1262 (regex!3521 lt!693390) (head!4170 (list!7991 (charsOf!2170 (_1!11023 lt!693369))))) (tail!2669 (list!7991 (charsOf!2170 (_1!11023 lt!693369))))))))

(declare-fun b!1783715 () Bool)

(declare-fun e!1141503 () Bool)

(declare-fun e!1141504 () Bool)

(assert (=> b!1783715 (= e!1141503 e!1141504)))

(declare-fun res!804174 () Bool)

(assert (=> b!1783715 (=> res!804174 e!1141504)))

(declare-fun call!111337 () Bool)

(assert (=> b!1783715 (= res!804174 call!111337)))

(declare-fun b!1783716 () Bool)

(declare-fun e!1141507 () Bool)

(declare-fun lt!693753 () Bool)

(assert (=> b!1783716 (= e!1141507 (not lt!693753))))

(declare-fun b!1783717 () Bool)

(declare-fun e!1141506 () Bool)

(assert (=> b!1783717 (= e!1141506 e!1141507)))

(declare-fun c!290156 () Bool)

(assert (=> b!1783717 (= c!290156 ((_ is EmptyLang!4849) (regex!3521 lt!693390)))))

(declare-fun b!1783718 () Bool)

(assert (=> b!1783718 (= e!1141504 (not (= (head!4170 (list!7991 (charsOf!2170 (_1!11023 lt!693369)))) (c!290030 (regex!3521 lt!693390)))))))

(declare-fun b!1783719 () Bool)

(assert (=> b!1783719 (= e!1141509 (nullable!1493 (regex!3521 lt!693390)))))

(declare-fun b!1783720 () Bool)

(declare-fun e!1141508 () Bool)

(assert (=> b!1783720 (= e!1141508 (= (head!4170 (list!7991 (charsOf!2170 (_1!11023 lt!693369)))) (c!290030 (regex!3521 lt!693390))))))

(declare-fun bm!111332 () Bool)

(assert (=> bm!111332 (= call!111337 (isEmpty!12418 (list!7991 (charsOf!2170 (_1!11023 lt!693369)))))))

(declare-fun b!1783721 () Bool)

(declare-fun res!804173 () Bool)

(assert (=> b!1783721 (=> (not res!804173) (not e!1141508))))

(assert (=> b!1783721 (= res!804173 (not call!111337))))

(declare-fun b!1783722 () Bool)

(declare-fun res!804177 () Bool)

(assert (=> b!1783722 (=> (not res!804177) (not e!1141508))))

(assert (=> b!1783722 (= res!804177 (isEmpty!12418 (tail!2669 (list!7991 (charsOf!2170 (_1!11023 lt!693369))))))))

(declare-fun b!1783723 () Bool)

(declare-fun res!804175 () Bool)

(assert (=> b!1783723 (=> res!804175 e!1141504)))

(assert (=> b!1783723 (= res!804175 (not (isEmpty!12418 (tail!2669 (list!7991 (charsOf!2170 (_1!11023 lt!693369)))))))))

(declare-fun b!1783724 () Bool)

(assert (=> b!1783724 (= e!1141506 (= lt!693753 call!111337))))

(declare-fun b!1783725 () Bool)

(declare-fun res!804172 () Bool)

(declare-fun e!1141505 () Bool)

(assert (=> b!1783725 (=> res!804172 e!1141505)))

(assert (=> b!1783725 (= res!804172 (not ((_ is ElementMatch!4849) (regex!3521 lt!693390))))))

(assert (=> b!1783725 (= e!1141507 e!1141505)))

(declare-fun d!544649 () Bool)

(assert (=> d!544649 e!1141506))

(declare-fun c!290157 () Bool)

(assert (=> d!544649 (= c!290157 ((_ is EmptyExpr!4849) (regex!3521 lt!693390)))))

(assert (=> d!544649 (= lt!693753 e!1141509)))

(declare-fun c!290158 () Bool)

(assert (=> d!544649 (= c!290158 (isEmpty!12418 (list!7991 (charsOf!2170 (_1!11023 lt!693369)))))))

(assert (=> d!544649 (validRegex!1967 (regex!3521 lt!693390))))

(assert (=> d!544649 (= (matchR!2322 (regex!3521 lt!693390) (list!7991 (charsOf!2170 (_1!11023 lt!693369)))) lt!693753)))

(declare-fun b!1783726 () Bool)

(assert (=> b!1783726 (= e!1141505 e!1141503)))

(declare-fun res!804171 () Bool)

(assert (=> b!1783726 (=> (not res!804171) (not e!1141503))))

(assert (=> b!1783726 (= res!804171 (not lt!693753))))

(declare-fun b!1783727 () Bool)

(declare-fun res!804176 () Bool)

(assert (=> b!1783727 (=> res!804176 e!1141505)))

(assert (=> b!1783727 (= res!804176 e!1141508)))

(declare-fun res!804178 () Bool)

(assert (=> b!1783727 (=> (not res!804178) (not e!1141508))))

(assert (=> b!1783727 (= res!804178 lt!693753)))

(assert (= (and d!544649 c!290158) b!1783719))

(assert (= (and d!544649 (not c!290158)) b!1783714))

(assert (= (and d!544649 c!290157) b!1783724))

(assert (= (and d!544649 (not c!290157)) b!1783717))

(assert (= (and b!1783717 c!290156) b!1783716))

(assert (= (and b!1783717 (not c!290156)) b!1783725))

(assert (= (and b!1783725 (not res!804172)) b!1783727))

(assert (= (and b!1783727 res!804178) b!1783721))

(assert (= (and b!1783721 res!804173) b!1783722))

(assert (= (and b!1783722 res!804177) b!1783720))

(assert (= (and b!1783727 (not res!804176)) b!1783726))

(assert (= (and b!1783726 res!804171) b!1783715))

(assert (= (and b!1783715 (not res!804174)) b!1783723))

(assert (= (and b!1783723 (not res!804175)) b!1783718))

(assert (= (or b!1783724 b!1783715 b!1783721) bm!111332))

(assert (=> b!1783720 m!2205697))

(declare-fun m!2206667 () Bool)

(assert (=> b!1783720 m!2206667))

(declare-fun m!2206669 () Bool)

(assert (=> b!1783719 m!2206669))

(assert (=> b!1783718 m!2205697))

(assert (=> b!1783718 m!2206667))

(assert (=> b!1783723 m!2205697))

(declare-fun m!2206671 () Bool)

(assert (=> b!1783723 m!2206671))

(assert (=> b!1783723 m!2206671))

(declare-fun m!2206673 () Bool)

(assert (=> b!1783723 m!2206673))

(assert (=> d!544649 m!2205697))

(declare-fun m!2206675 () Bool)

(assert (=> d!544649 m!2206675))

(declare-fun m!2206677 () Bool)

(assert (=> d!544649 m!2206677))

(assert (=> b!1783722 m!2205697))

(assert (=> b!1783722 m!2206671))

(assert (=> b!1783722 m!2206671))

(assert (=> b!1783722 m!2206673))

(assert (=> bm!111332 m!2205697))

(assert (=> bm!111332 m!2206675))

(assert (=> b!1783714 m!2205697))

(assert (=> b!1783714 m!2206667))

(assert (=> b!1783714 m!2206667))

(declare-fun m!2206679 () Bool)

(assert (=> b!1783714 m!2206679))

(assert (=> b!1783714 m!2205697))

(assert (=> b!1783714 m!2206671))

(assert (=> b!1783714 m!2206679))

(assert (=> b!1783714 m!2206671))

(declare-fun m!2206681 () Bool)

(assert (=> b!1783714 m!2206681))

(assert (=> b!1782994 d!544649))

(declare-fun d!544651 () Bool)

(assert (=> d!544651 (= (list!7991 (charsOf!2170 (_1!11023 lt!693369))) (list!7994 (c!290031 (charsOf!2170 (_1!11023 lt!693369)))))))

(declare-fun bs!405319 () Bool)

(assert (= bs!405319 d!544651))

(declare-fun m!2206683 () Bool)

(assert (=> bs!405319 m!2206683))

(assert (=> b!1782994 d!544651))

(assert (=> b!1782994 d!544415))

(declare-fun d!544653 () Bool)

(assert (=> d!544653 (= (get!6043 lt!693402) (v!25556 lt!693402))))

(assert (=> b!1782994 d!544653))

(declare-fun b!1783736 () Bool)

(declare-fun e!1141516 () Int)

(assert (=> b!1783736 (= e!1141516 0)))

(declare-fun b!1783739 () Bool)

(declare-fun e!1141515 () Int)

(assert (=> b!1783739 (= e!1141515 (- 1))))

(declare-fun b!1783737 () Bool)

(assert (=> b!1783737 (= e!1141516 e!1141515)))

(declare-fun c!290164 () Bool)

(assert (=> b!1783737 (= c!290164 (and ((_ is Cons!19652) rules!3447) (not (= (h!25053 rules!3447) (rule!5601 token!523)))))))

(declare-fun b!1783738 () Bool)

(assert (=> b!1783738 (= e!1141515 (+ 1 (getIndex!186 (t!166761 rules!3447) (rule!5601 token!523))))))

(declare-fun d!544655 () Bool)

(declare-fun lt!693756 () Int)

(assert (=> d!544655 (>= lt!693756 0)))

(assert (=> d!544655 (= lt!693756 e!1141516)))

(declare-fun c!290163 () Bool)

(assert (=> d!544655 (= c!290163 (and ((_ is Cons!19652) rules!3447) (= (h!25053 rules!3447) (rule!5601 token!523))))))

(assert (=> d!544655 (contains!3553 rules!3447 (rule!5601 token!523))))

(assert (=> d!544655 (= (getIndex!186 rules!3447 (rule!5601 token!523)) lt!693756)))

(assert (= (and d!544655 c!290163) b!1783736))

(assert (= (and d!544655 (not c!290163)) b!1783737))

(assert (= (and b!1783737 c!290164) b!1783738))

(assert (= (and b!1783737 (not c!290164)) b!1783739))

(declare-fun m!2206685 () Bool)

(assert (=> b!1783738 m!2206685))

(assert (=> d!544655 m!2205677))

(assert (=> b!1782977 d!544655))

(declare-fun b!1783740 () Bool)

(declare-fun e!1141518 () Int)

(assert (=> b!1783740 (= e!1141518 0)))

(declare-fun b!1783743 () Bool)

(declare-fun e!1141517 () Int)

(assert (=> b!1783743 (= e!1141517 (- 1))))

(declare-fun b!1783741 () Bool)

(assert (=> b!1783741 (= e!1141518 e!1141517)))

(declare-fun c!290166 () Bool)

(assert (=> b!1783741 (= c!290166 (and ((_ is Cons!19652) rules!3447) (not (= (h!25053 rules!3447) (rule!5601 (_1!11023 lt!693369))))))))

(declare-fun b!1783742 () Bool)

(assert (=> b!1783742 (= e!1141517 (+ 1 (getIndex!186 (t!166761 rules!3447) (rule!5601 (_1!11023 lt!693369)))))))

(declare-fun d!544657 () Bool)

(declare-fun lt!693757 () Int)

(assert (=> d!544657 (>= lt!693757 0)))

(assert (=> d!544657 (= lt!693757 e!1141518)))

(declare-fun c!290165 () Bool)

(assert (=> d!544657 (= c!290165 (and ((_ is Cons!19652) rules!3447) (= (h!25053 rules!3447) (rule!5601 (_1!11023 lt!693369)))))))

(assert (=> d!544657 (contains!3553 rules!3447 (rule!5601 (_1!11023 lt!693369)))))

(assert (=> d!544657 (= (getIndex!186 rules!3447 (rule!5601 (_1!11023 lt!693369))) lt!693757)))

(assert (= (and d!544657 c!290165) b!1783740))

(assert (= (and d!544657 (not c!290165)) b!1783741))

(assert (= (and b!1783741 c!290166) b!1783742))

(assert (= (and b!1783741 (not c!290166)) b!1783743))

(declare-fun m!2206687 () Bool)

(assert (=> b!1783742 m!2206687))

(assert (=> d!544657 m!2205667))

(assert (=> b!1782977 d!544657))

(declare-fun d!544659 () Bool)

(assert (=> d!544659 (= (isEmpty!12418 (_2!11023 lt!693392)) ((_ is Nil!19651) (_2!11023 lt!693392)))))

(assert (=> b!1782998 d!544659))

(declare-fun d!544661 () Bool)

(declare-fun lt!693760 () Int)

(assert (=> d!544661 (= lt!693760 (size!15612 (list!7991 lt!693393)))))

(declare-fun size!15614 (Conc!6537) Int)

(assert (=> d!544661 (= lt!693760 (size!15614 (c!290031 lt!693393)))))

(assert (=> d!544661 (= (size!15611 lt!693393) lt!693760)))

(declare-fun bs!405320 () Bool)

(assert (= bs!405320 d!544661))

(assert (=> bs!405320 m!2205755))

(assert (=> bs!405320 m!2205755))

(declare-fun m!2206689 () Bool)

(assert (=> bs!405320 m!2206689))

(declare-fun m!2206691 () Bool)

(assert (=> bs!405320 m!2206691))

(assert (=> b!1782976 d!544661))

(declare-fun b!1783744 () Bool)

(declare-fun e!1141525 () Bool)

(assert (=> b!1783744 (= e!1141525 (matchR!2322 (derivativeStep!1262 lt!693394 (head!4170 lt!693367)) (tail!2669 lt!693367)))))

(declare-fun b!1783745 () Bool)

(declare-fun e!1141519 () Bool)

(declare-fun e!1141520 () Bool)

(assert (=> b!1783745 (= e!1141519 e!1141520)))

(declare-fun res!804182 () Bool)

(assert (=> b!1783745 (=> res!804182 e!1141520)))

(declare-fun call!111338 () Bool)

(assert (=> b!1783745 (= res!804182 call!111338)))

(declare-fun b!1783746 () Bool)

(declare-fun e!1141523 () Bool)

(declare-fun lt!693761 () Bool)

(assert (=> b!1783746 (= e!1141523 (not lt!693761))))

(declare-fun b!1783747 () Bool)

(declare-fun e!1141522 () Bool)

(assert (=> b!1783747 (= e!1141522 e!1141523)))

(declare-fun c!290167 () Bool)

(assert (=> b!1783747 (= c!290167 ((_ is EmptyLang!4849) lt!693394))))

(declare-fun b!1783748 () Bool)

(assert (=> b!1783748 (= e!1141520 (not (= (head!4170 lt!693367) (c!290030 lt!693394))))))

(declare-fun b!1783749 () Bool)

(assert (=> b!1783749 (= e!1141525 (nullable!1493 lt!693394))))

(declare-fun b!1783750 () Bool)

(declare-fun e!1141524 () Bool)

(assert (=> b!1783750 (= e!1141524 (= (head!4170 lt!693367) (c!290030 lt!693394)))))

(declare-fun bm!111333 () Bool)

(assert (=> bm!111333 (= call!111338 (isEmpty!12418 lt!693367))))

(declare-fun b!1783751 () Bool)

(declare-fun res!804181 () Bool)

(assert (=> b!1783751 (=> (not res!804181) (not e!1141524))))

(assert (=> b!1783751 (= res!804181 (not call!111338))))

(declare-fun b!1783752 () Bool)

(declare-fun res!804185 () Bool)

(assert (=> b!1783752 (=> (not res!804185) (not e!1141524))))

(assert (=> b!1783752 (= res!804185 (isEmpty!12418 (tail!2669 lt!693367)))))

(declare-fun b!1783753 () Bool)

(declare-fun res!804183 () Bool)

(assert (=> b!1783753 (=> res!804183 e!1141520)))

(assert (=> b!1783753 (= res!804183 (not (isEmpty!12418 (tail!2669 lt!693367))))))

(declare-fun b!1783754 () Bool)

(assert (=> b!1783754 (= e!1141522 (= lt!693761 call!111338))))

(declare-fun b!1783755 () Bool)

(declare-fun res!804180 () Bool)

(declare-fun e!1141521 () Bool)

(assert (=> b!1783755 (=> res!804180 e!1141521)))

(assert (=> b!1783755 (= res!804180 (not ((_ is ElementMatch!4849) lt!693394)))))

(assert (=> b!1783755 (= e!1141523 e!1141521)))

(declare-fun d!544663 () Bool)

(assert (=> d!544663 e!1141522))

(declare-fun c!290168 () Bool)

(assert (=> d!544663 (= c!290168 ((_ is EmptyExpr!4849) lt!693394))))

(assert (=> d!544663 (= lt!693761 e!1141525)))

(declare-fun c!290169 () Bool)

(assert (=> d!544663 (= c!290169 (isEmpty!12418 lt!693367))))

(assert (=> d!544663 (validRegex!1967 lt!693394)))

(assert (=> d!544663 (= (matchR!2322 lt!693394 lt!693367) lt!693761)))

(declare-fun b!1783756 () Bool)

(assert (=> b!1783756 (= e!1141521 e!1141519)))

(declare-fun res!804179 () Bool)

(assert (=> b!1783756 (=> (not res!804179) (not e!1141519))))

(assert (=> b!1783756 (= res!804179 (not lt!693761))))

(declare-fun b!1783757 () Bool)

(declare-fun res!804184 () Bool)

(assert (=> b!1783757 (=> res!804184 e!1141521)))

(assert (=> b!1783757 (= res!804184 e!1141524)))

(declare-fun res!804186 () Bool)

(assert (=> b!1783757 (=> (not res!804186) (not e!1141524))))

(assert (=> b!1783757 (= res!804186 lt!693761)))

(assert (= (and d!544663 c!290169) b!1783749))

(assert (= (and d!544663 (not c!290169)) b!1783744))

(assert (= (and d!544663 c!290168) b!1783754))

(assert (= (and d!544663 (not c!290168)) b!1783747))

(assert (= (and b!1783747 c!290167) b!1783746))

(assert (= (and b!1783747 (not c!290167)) b!1783755))

(assert (= (and b!1783755 (not res!804180)) b!1783757))

(assert (= (and b!1783757 res!804186) b!1783751))

(assert (= (and b!1783751 res!804181) b!1783752))

(assert (= (and b!1783752 res!804185) b!1783750))

(assert (= (and b!1783757 (not res!804184)) b!1783756))

(assert (= (and b!1783756 res!804179) b!1783745))

(assert (= (and b!1783745 (not res!804182)) b!1783753))

(assert (= (and b!1783753 (not res!804183)) b!1783748))

(assert (= (or b!1783754 b!1783745 b!1783751) bm!111333))

(assert (=> b!1783750 m!2205991))

(assert (=> b!1783749 m!2206597))

(assert (=> b!1783748 m!2205991))

(assert (=> b!1783753 m!2205995))

(assert (=> b!1783753 m!2205995))

(assert (=> b!1783753 m!2206635))

(assert (=> d!544663 m!2206637))

(assert (=> d!544663 m!2206601))

(assert (=> b!1783752 m!2205995))

(assert (=> b!1783752 m!2205995))

(assert (=> b!1783752 m!2206635))

(assert (=> bm!111333 m!2206637))

(assert (=> b!1783744 m!2205991))

(assert (=> b!1783744 m!2205991))

(declare-fun m!2206693 () Bool)

(assert (=> b!1783744 m!2206693))

(assert (=> b!1783744 m!2205995))

(assert (=> b!1783744 m!2206693))

(assert (=> b!1783744 m!2205995))

(declare-fun m!2206695 () Bool)

(assert (=> b!1783744 m!2206695))

(assert (=> b!1782976 d!544663))

(declare-fun d!544665 () Bool)

(assert (=> d!544665 (matchR!2322 (rulesRegex!877 thiss!24550 rules!3447) (list!7991 (charsOf!2170 token!523)))))

(declare-fun lt!693762 () Unit!33967)

(assert (=> d!544665 (= lt!693762 (choose!11224 thiss!24550 rules!3447 lt!693367 token!523 rule!422 Nil!19651))))

(assert (=> d!544665 (not (isEmpty!12419 rules!3447))))

(assert (=> d!544665 (= (lemmaMaxPrefixThenMatchesRulesRegex!228 thiss!24550 rules!3447 lt!693367 token!523 rule!422 Nil!19651) lt!693762)))

(declare-fun bs!405321 () Bool)

(assert (= bs!405321 d!544665))

(assert (=> bs!405321 m!2205693))

(assert (=> bs!405321 m!2205749))

(declare-fun m!2206697 () Bool)

(assert (=> bs!405321 m!2206697))

(declare-fun m!2206699 () Bool)

(assert (=> bs!405321 m!2206699))

(declare-fun m!2206701 () Bool)

(assert (=> bs!405321 m!2206701))

(assert (=> bs!405321 m!2205757))

(assert (=> bs!405321 m!2205749))

(assert (=> bs!405321 m!2205757))

(assert (=> bs!405321 m!2206697))

(assert (=> b!1782976 d!544665))

(declare-fun d!544667 () Bool)

(declare-fun lt!693763 () Int)

(assert (=> d!544667 (= lt!693763 (size!15612 (list!7991 lt!693366)))))

(assert (=> d!544667 (= lt!693763 (size!15614 (c!290031 lt!693366)))))

(assert (=> d!544667 (= (size!15611 lt!693366) lt!693763)))

(declare-fun bs!405322 () Bool)

(assert (= bs!405322 d!544667))

(assert (=> bs!405322 m!2205619))

(assert (=> bs!405322 m!2205619))

(declare-fun m!2206703 () Bool)

(assert (=> bs!405322 m!2206703))

(declare-fun m!2206705 () Bool)

(assert (=> bs!405322 m!2206705))

(assert (=> b!1782997 d!544667))

(declare-fun d!544669 () Bool)

(assert (=> d!544669 (= (seqFromList!2490 (originalCharacters!4335 (_1!11023 lt!693369))) (fromListB!1142 (originalCharacters!4335 (_1!11023 lt!693369))))))

(declare-fun bs!405323 () Bool)

(assert (= bs!405323 d!544669))

(declare-fun m!2206707 () Bool)

(assert (=> bs!405323 m!2206707))

(assert (=> b!1782997 d!544669))

(declare-fun d!544671 () Bool)

(assert (=> d!544671 (= (size!15610 (_1!11023 lt!693369)) (size!15612 (originalCharacters!4335 (_1!11023 lt!693369))))))

(declare-fun Unit!33980 () Unit!33967)

(assert (=> d!544671 (= (lemmaCharactersSize!579 (_1!11023 lt!693369)) Unit!33980)))

(declare-fun bs!405324 () Bool)

(assert (= bs!405324 d!544671))

(declare-fun m!2206709 () Bool)

(assert (=> bs!405324 m!2206709))

(assert (=> b!1782997 d!544671))

(declare-fun b!1783764 () Bool)

(declare-fun e!1141530 () Bool)

(assert (=> b!1783764 (= e!1141530 true)))

(declare-fun d!544673 () Bool)

(assert (=> d!544673 e!1141530))

(assert (= d!544673 b!1783764))

(declare-fun order!12703 () Int)

(declare-fun lambda!70727 () Int)

(declare-fun dynLambda!9667 (Int Int) Int)

(assert (=> b!1783764 (< (dynLambda!9661 order!12695 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) (dynLambda!9667 order!12703 lambda!70727))))

(assert (=> b!1783764 (< (dynLambda!9663 order!12699 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) (dynLambda!9667 order!12703 lambda!70727))))

(assert (=> d!544673 (= (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (seqFromList!2490 (originalCharacters!4335 (_1!11023 lt!693369)))))))

(declare-fun lt!693766 () Unit!33967)

(declare-fun Forall2of!153 (Int BalanceConc!13018 BalanceConc!13018) Unit!33967)

(assert (=> d!544673 (= lt!693766 (Forall2of!153 lambda!70727 lt!693366 (seqFromList!2490 (originalCharacters!4335 (_1!11023 lt!693369)))))))

(assert (=> d!544673 (= (list!7991 lt!693366) (list!7991 (seqFromList!2490 (originalCharacters!4335 (_1!11023 lt!693369)))))))

(assert (=> d!544673 (= (lemmaEqSameImage!432 (transformation!3521 (rule!5601 (_1!11023 lt!693369))) lt!693366 (seqFromList!2490 (originalCharacters!4335 (_1!11023 lt!693369)))) lt!693766)))

(declare-fun b_lambda!58469 () Bool)

(assert (=> (not b_lambda!58469) (not d!544673)))

(assert (=> d!544673 t!166748))

(declare-fun b_and!136999 () Bool)

(assert (= b_and!136993 (and (=> t!166748 result!130466) b_and!136999)))

(assert (=> d!544673 t!166750))

(declare-fun b_and!137001 () Bool)

(assert (= b_and!136995 (and (=> t!166750 result!130470) b_and!137001)))

(assert (=> d!544673 t!166752))

(declare-fun b_and!137003 () Bool)

(assert (= b_and!136997 (and (=> t!166752 result!130472) b_and!137003)))

(declare-fun b_lambda!58471 () Bool)

(assert (=> (not b_lambda!58471) (not d!544673)))

(declare-fun t!166815 () Bool)

(declare-fun tb!108499 () Bool)

(assert (=> (and b!1782980 (= (toValue!5048 (transformation!3521 (rule!5601 token!523))) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166815) tb!108499))

(declare-fun result!130538 () Bool)

(assert (=> tb!108499 (= result!130538 (inv!21 (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (seqFromList!2490 (originalCharacters!4335 (_1!11023 lt!693369))))))))

(declare-fun m!2206711 () Bool)

(assert (=> tb!108499 m!2206711))

(assert (=> d!544673 t!166815))

(declare-fun b_and!137005 () Bool)

(assert (= b_and!136999 (and (=> t!166815 result!130538) b_and!137005)))

(declare-fun t!166817 () Bool)

(declare-fun tb!108501 () Bool)

(assert (=> (and b!1782990 (= (toValue!5048 (transformation!3521 (h!25053 rules!3447))) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166817) tb!108501))

(declare-fun result!130540 () Bool)

(assert (= result!130540 result!130538))

(assert (=> d!544673 t!166817))

(declare-fun b_and!137007 () Bool)

(assert (= b_and!137001 (and (=> t!166817 result!130540) b_and!137007)))

(declare-fun tb!108503 () Bool)

(declare-fun t!166819 () Bool)

(assert (=> (and b!1783004 (= (toValue!5048 (transformation!3521 rule!422)) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166819) tb!108503))

(declare-fun result!130542 () Bool)

(assert (= result!130542 result!130538))

(assert (=> d!544673 t!166819))

(declare-fun b_and!137009 () Bool)

(assert (= b_and!137003 (and (=> t!166819 result!130542) b_and!137009)))

(assert (=> d!544673 m!2205763))

(assert (=> d!544673 m!2205649))

(declare-fun m!2206713 () Bool)

(assert (=> d!544673 m!2206713))

(assert (=> d!544673 m!2205619))

(assert (=> d!544673 m!2205649))

(declare-fun m!2206715 () Bool)

(assert (=> d!544673 m!2206715))

(assert (=> d!544673 m!2205649))

(declare-fun m!2206717 () Bool)

(assert (=> d!544673 m!2206717))

(assert (=> b!1782997 d!544673))

(declare-fun d!544675 () Bool)

(assert (=> d!544675 (= (apply!5321 (transformation!3521 (rule!5601 (_1!11023 lt!693369))) lt!693366) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366))))

(declare-fun b_lambda!58473 () Bool)

(assert (=> (not b_lambda!58473) (not d!544675)))

(assert (=> d!544675 t!166748))

(declare-fun b_and!137011 () Bool)

(assert (= b_and!137005 (and (=> t!166748 result!130466) b_and!137011)))

(assert (=> d!544675 t!166750))

(declare-fun b_and!137013 () Bool)

(assert (= b_and!137007 (and (=> t!166750 result!130470) b_and!137013)))

(assert (=> d!544675 t!166752))

(declare-fun b_and!137015 () Bool)

(assert (= b_and!137009 (and (=> t!166752 result!130472) b_and!137015)))

(assert (=> d!544675 m!2205763))

(assert (=> b!1782997 d!544675))

(declare-fun d!544677 () Bool)

(assert (=> d!544677 (= suffix!1421 (_2!11023 lt!693369))))

(declare-fun lt!693767 () Unit!33967)

(assert (=> d!544677 (= lt!693767 (choose!11220 lt!693367 suffix!1421 lt!693367 (_2!11023 lt!693369) lt!693407))))

(assert (=> d!544677 (isPrefix!1761 lt!693367 lt!693407)))

(assert (=> d!544677 (= (lemmaSamePrefixThenSameSuffix!872 lt!693367 suffix!1421 lt!693367 (_2!11023 lt!693369) lt!693407) lt!693767)))

(declare-fun bs!405325 () Bool)

(assert (= bs!405325 d!544677))

(declare-fun m!2206719 () Bool)

(assert (=> bs!405325 m!2206719))

(assert (=> bs!405325 m!2205627))

(assert (=> b!1782975 d!544677))

(declare-fun d!544679 () Bool)

(assert (=> d!544679 (= lt!693405 lt!693367)))

(declare-fun lt!693770 () Unit!33967)

(declare-fun choose!11233 (List!19721 List!19721 List!19721) Unit!33967)

(assert (=> d!544679 (= lt!693770 (choose!11233 lt!693405 lt!693367 lt!693407))))

(assert (=> d!544679 (isPrefix!1761 lt!693405 lt!693407)))

(assert (=> d!544679 (= (lemmaIsPrefixSameLengthThenSameList!257 lt!693405 lt!693367 lt!693407) lt!693770)))

(declare-fun bs!405326 () Bool)

(assert (= bs!405326 d!544679))

(declare-fun m!2206721 () Bool)

(assert (=> bs!405326 m!2206721))

(assert (=> bs!405326 m!2205635))

(assert (=> b!1782975 d!544679))

(declare-fun d!544681 () Bool)

(declare-fun lt!693771 () Bool)

(assert (=> d!544681 (= lt!693771 (select (content!2863 rules!3447) (rule!5601 token!523)))))

(declare-fun e!1141533 () Bool)

(assert (=> d!544681 (= lt!693771 e!1141533)))

(declare-fun res!804190 () Bool)

(assert (=> d!544681 (=> (not res!804190) (not e!1141533))))

(assert (=> d!544681 (= res!804190 ((_ is Cons!19652) rules!3447))))

(assert (=> d!544681 (= (contains!3553 rules!3447 (rule!5601 token!523)) lt!693771)))

(declare-fun b!1783765 () Bool)

(declare-fun e!1141532 () Bool)

(assert (=> b!1783765 (= e!1141533 e!1141532)))

(declare-fun res!804189 () Bool)

(assert (=> b!1783765 (=> res!804189 e!1141532)))

(assert (=> b!1783765 (= res!804189 (= (h!25053 rules!3447) (rule!5601 token!523)))))

(declare-fun b!1783766 () Bool)

(assert (=> b!1783766 (= e!1141532 (contains!3553 (t!166761 rules!3447) (rule!5601 token!523)))))

(assert (= (and d!544681 res!804190) b!1783765))

(assert (= (and b!1783765 (not res!804189)) b!1783766))

(assert (=> d!544681 m!2206429))

(declare-fun m!2206723 () Bool)

(assert (=> d!544681 m!2206723))

(declare-fun m!2206725 () Bool)

(assert (=> b!1783766 m!2206725))

(assert (=> b!1782996 d!544681))

(declare-fun d!544683 () Bool)

(declare-fun res!804195 () Bool)

(declare-fun e!1141536 () Bool)

(assert (=> d!544683 (=> (not res!804195) (not e!1141536))))

(assert (=> d!544683 (= res!804195 (not (isEmpty!12418 (originalCharacters!4335 token!523))))))

(assert (=> d!544683 (= (inv!25581 token!523) e!1141536)))

(declare-fun b!1783771 () Bool)

(declare-fun res!804196 () Bool)

(assert (=> b!1783771 (=> (not res!804196) (not e!1141536))))

(assert (=> b!1783771 (= res!804196 (= (originalCharacters!4335 token!523) (list!7991 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 token!523))) (value!110021 token!523)))))))

(declare-fun b!1783772 () Bool)

(assert (=> b!1783772 (= e!1141536 (= (size!15610 token!523) (size!15612 (originalCharacters!4335 token!523))))))

(assert (= (and d!544683 res!804195) b!1783771))

(assert (= (and b!1783771 res!804196) b!1783772))

(declare-fun b_lambda!58475 () Bool)

(assert (=> (not b_lambda!58475) (not b!1783771)))

(declare-fun t!166821 () Bool)

(declare-fun tb!108505 () Bool)

(assert (=> (and b!1782980 (= (toChars!4907 (transformation!3521 (rule!5601 token!523))) (toChars!4907 (transformation!3521 (rule!5601 token!523)))) t!166821) tb!108505))

(declare-fun b!1783773 () Bool)

(declare-fun e!1141537 () Bool)

(declare-fun tp!504699 () Bool)

(assert (=> b!1783773 (= e!1141537 (and (inv!25582 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 token!523))) (value!110021 token!523)))) tp!504699))))

(declare-fun result!130544 () Bool)

(assert (=> tb!108505 (= result!130544 (and (inv!25583 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 token!523))) (value!110021 token!523))) e!1141537))))

(assert (= tb!108505 b!1783773))

(declare-fun m!2206727 () Bool)

(assert (=> b!1783773 m!2206727))

(declare-fun m!2206729 () Bool)

(assert (=> tb!108505 m!2206729))

(assert (=> b!1783771 t!166821))

(declare-fun b_and!137017 () Bool)

(assert (= b_and!136987 (and (=> t!166821 result!130544) b_and!137017)))

(declare-fun t!166823 () Bool)

(declare-fun tb!108507 () Bool)

(assert (=> (and b!1782990 (= (toChars!4907 (transformation!3521 (h!25053 rules!3447))) (toChars!4907 (transformation!3521 (rule!5601 token!523)))) t!166823) tb!108507))

(declare-fun result!130546 () Bool)

(assert (= result!130546 result!130544))

(assert (=> b!1783771 t!166823))

(declare-fun b_and!137019 () Bool)

(assert (= b_and!136989 (and (=> t!166823 result!130546) b_and!137019)))

(declare-fun t!166825 () Bool)

(declare-fun tb!108509 () Bool)

(assert (=> (and b!1783004 (= (toChars!4907 (transformation!3521 rule!422)) (toChars!4907 (transformation!3521 (rule!5601 token!523)))) t!166825) tb!108509))

(declare-fun result!130548 () Bool)

(assert (= result!130548 result!130544))

(assert (=> b!1783771 t!166825))

(declare-fun b_and!137021 () Bool)

(assert (= b_and!136991 (and (=> t!166825 result!130548) b_and!137021)))

(declare-fun m!2206731 () Bool)

(assert (=> d!544683 m!2206731))

(declare-fun m!2206733 () Bool)

(assert (=> b!1783771 m!2206733))

(assert (=> b!1783771 m!2206733))

(declare-fun m!2206735 () Bool)

(assert (=> b!1783771 m!2206735))

(declare-fun m!2206737 () Bool)

(assert (=> b!1783772 m!2206737))

(assert (=> start!177490 d!544683))

(declare-fun b!1783774 () Bool)

(declare-fun e!1141544 () Bool)

(assert (=> b!1783774 (= e!1141544 (matchR!2322 (derivativeStep!1262 (regex!3521 (rule!5601 (_1!11023 lt!693369))) (head!4170 lt!693405)) (tail!2669 lt!693405)))))

(declare-fun b!1783775 () Bool)

(declare-fun e!1141538 () Bool)

(declare-fun e!1141539 () Bool)

(assert (=> b!1783775 (= e!1141538 e!1141539)))

(declare-fun res!804200 () Bool)

(assert (=> b!1783775 (=> res!804200 e!1141539)))

(declare-fun call!111339 () Bool)

(assert (=> b!1783775 (= res!804200 call!111339)))

(declare-fun b!1783776 () Bool)

(declare-fun e!1141542 () Bool)

(declare-fun lt!693772 () Bool)

(assert (=> b!1783776 (= e!1141542 (not lt!693772))))

(declare-fun b!1783777 () Bool)

(declare-fun e!1141541 () Bool)

(assert (=> b!1783777 (= e!1141541 e!1141542)))

(declare-fun c!290171 () Bool)

(assert (=> b!1783777 (= c!290171 ((_ is EmptyLang!4849) (regex!3521 (rule!5601 (_1!11023 lt!693369)))))))

(declare-fun b!1783778 () Bool)

(assert (=> b!1783778 (= e!1141539 (not (= (head!4170 lt!693405) (c!290030 (regex!3521 (rule!5601 (_1!11023 lt!693369)))))))))

(declare-fun b!1783779 () Bool)

(assert (=> b!1783779 (= e!1141544 (nullable!1493 (regex!3521 (rule!5601 (_1!11023 lt!693369)))))))

(declare-fun b!1783780 () Bool)

(declare-fun e!1141543 () Bool)

(assert (=> b!1783780 (= e!1141543 (= (head!4170 lt!693405) (c!290030 (regex!3521 (rule!5601 (_1!11023 lt!693369))))))))

(declare-fun bm!111334 () Bool)

(assert (=> bm!111334 (= call!111339 (isEmpty!12418 lt!693405))))

(declare-fun b!1783781 () Bool)

(declare-fun res!804199 () Bool)

(assert (=> b!1783781 (=> (not res!804199) (not e!1141543))))

(assert (=> b!1783781 (= res!804199 (not call!111339))))

(declare-fun b!1783782 () Bool)

(declare-fun res!804203 () Bool)

(assert (=> b!1783782 (=> (not res!804203) (not e!1141543))))

(assert (=> b!1783782 (= res!804203 (isEmpty!12418 (tail!2669 lt!693405)))))

(declare-fun b!1783783 () Bool)

(declare-fun res!804201 () Bool)

(assert (=> b!1783783 (=> res!804201 e!1141539)))

(assert (=> b!1783783 (= res!804201 (not (isEmpty!12418 (tail!2669 lt!693405))))))

(declare-fun b!1783784 () Bool)

(assert (=> b!1783784 (= e!1141541 (= lt!693772 call!111339))))

(declare-fun b!1783785 () Bool)

(declare-fun res!804198 () Bool)

(declare-fun e!1141540 () Bool)

(assert (=> b!1783785 (=> res!804198 e!1141540)))

(assert (=> b!1783785 (= res!804198 (not ((_ is ElementMatch!4849) (regex!3521 (rule!5601 (_1!11023 lt!693369))))))))

(assert (=> b!1783785 (= e!1141542 e!1141540)))

(declare-fun d!544685 () Bool)

(assert (=> d!544685 e!1141541))

(declare-fun c!290172 () Bool)

(assert (=> d!544685 (= c!290172 ((_ is EmptyExpr!4849) (regex!3521 (rule!5601 (_1!11023 lt!693369)))))))

(assert (=> d!544685 (= lt!693772 e!1141544)))

(declare-fun c!290173 () Bool)

(assert (=> d!544685 (= c!290173 (isEmpty!12418 lt!693405))))

(assert (=> d!544685 (validRegex!1967 (regex!3521 (rule!5601 (_1!11023 lt!693369))))))

(assert (=> d!544685 (= (matchR!2322 (regex!3521 (rule!5601 (_1!11023 lt!693369))) lt!693405) lt!693772)))

(declare-fun b!1783786 () Bool)

(assert (=> b!1783786 (= e!1141540 e!1141538)))

(declare-fun res!804197 () Bool)

(assert (=> b!1783786 (=> (not res!804197) (not e!1141538))))

(assert (=> b!1783786 (= res!804197 (not lt!693772))))

(declare-fun b!1783787 () Bool)

(declare-fun res!804202 () Bool)

(assert (=> b!1783787 (=> res!804202 e!1141540)))

(assert (=> b!1783787 (= res!804202 e!1141543)))

(declare-fun res!804204 () Bool)

(assert (=> b!1783787 (=> (not res!804204) (not e!1141543))))

(assert (=> b!1783787 (= res!804204 lt!693772)))

(assert (= (and d!544685 c!290173) b!1783779))

(assert (= (and d!544685 (not c!290173)) b!1783774))

(assert (= (and d!544685 c!290172) b!1783784))

(assert (= (and d!544685 (not c!290172)) b!1783777))

(assert (= (and b!1783777 c!290171) b!1783776))

(assert (= (and b!1783777 (not c!290171)) b!1783785))

(assert (= (and b!1783785 (not res!804198)) b!1783787))

(assert (= (and b!1783787 res!804204) b!1783781))

(assert (= (and b!1783781 res!804199) b!1783782))

(assert (= (and b!1783782 res!804203) b!1783780))

(assert (= (and b!1783787 (not res!804202)) b!1783786))

(assert (= (and b!1783786 res!804197) b!1783775))

(assert (= (and b!1783775 (not res!804200)) b!1783783))

(assert (= (and b!1783783 (not res!804201)) b!1783778))

(assert (= (or b!1783784 b!1783775 b!1783781) bm!111334))

(assert (=> b!1783780 m!2205943))

(declare-fun m!2206739 () Bool)

(assert (=> b!1783779 m!2206739))

(assert (=> b!1783778 m!2205943))

(assert (=> b!1783783 m!2205947))

(assert (=> b!1783783 m!2205947))

(assert (=> b!1783783 m!2206599))

(assert (=> d!544685 m!2205661))

(declare-fun m!2206741 () Bool)

(assert (=> d!544685 m!2206741))

(assert (=> b!1783782 m!2205947))

(assert (=> b!1783782 m!2205947))

(assert (=> b!1783782 m!2206599))

(assert (=> bm!111334 m!2205661))

(assert (=> b!1783774 m!2205943))

(assert (=> b!1783774 m!2205943))

(declare-fun m!2206743 () Bool)

(assert (=> b!1783774 m!2206743))

(assert (=> b!1783774 m!2205947))

(assert (=> b!1783774 m!2206743))

(assert (=> b!1783774 m!2205947))

(declare-fun m!2206745 () Bool)

(assert (=> b!1783774 m!2206745))

(assert (=> b!1783001 d!544685))

(declare-fun d!544687 () Bool)

(declare-fun c!290176 () Bool)

(assert (=> d!544687 (= c!290176 (isEmpty!12418 lt!693406))))

(declare-fun e!1141547 () Bool)

(assert (=> d!544687 (= (prefixMatch!732 lt!693394 lt!693406) e!1141547)))

(declare-fun b!1783792 () Bool)

(declare-fun lostCause!604 (Regex!4849) Bool)

(assert (=> b!1783792 (= e!1141547 (not (lostCause!604 lt!693394)))))

(declare-fun b!1783793 () Bool)

(assert (=> b!1783793 (= e!1141547 (prefixMatch!732 (derivativeStep!1262 lt!693394 (head!4170 lt!693406)) (tail!2669 lt!693406)))))

(assert (= (and d!544687 c!290176) b!1783792))

(assert (= (and d!544687 (not c!290176)) b!1783793))

(declare-fun m!2206747 () Bool)

(assert (=> d!544687 m!2206747))

(declare-fun m!2206749 () Bool)

(assert (=> b!1783792 m!2206749))

(assert (=> b!1783793 m!2206579))

(assert (=> b!1783793 m!2206579))

(declare-fun m!2206751 () Bool)

(assert (=> b!1783793 m!2206751))

(assert (=> b!1783793 m!2206581))

(assert (=> b!1783793 m!2206751))

(assert (=> b!1783793 m!2206581))

(declare-fun m!2206753 () Bool)

(assert (=> b!1783793 m!2206753))

(assert (=> b!1782979 d!544687))

(declare-fun e!1141549 () Bool)

(declare-fun b!1783797 () Bool)

(declare-fun lt!693773 () List!19721)

(assert (=> b!1783797 (= e!1141549 (or (not (= (Cons!19651 (head!4170 suffix!1421) Nil!19651) Nil!19651)) (= lt!693773 lt!693367)))))

(declare-fun b!1783794 () Bool)

(declare-fun e!1141548 () List!19721)

(assert (=> b!1783794 (= e!1141548 (Cons!19651 (head!4170 suffix!1421) Nil!19651))))

(declare-fun b!1783795 () Bool)

(assert (=> b!1783795 (= e!1141548 (Cons!19651 (h!25052 lt!693367) (++!5345 (t!166760 lt!693367) (Cons!19651 (head!4170 suffix!1421) Nil!19651))))))

(declare-fun d!544689 () Bool)

(assert (=> d!544689 e!1141549))

(declare-fun res!804205 () Bool)

(assert (=> d!544689 (=> (not res!804205) (not e!1141549))))

(assert (=> d!544689 (= res!804205 (= (content!2862 lt!693773) ((_ map or) (content!2862 lt!693367) (content!2862 (Cons!19651 (head!4170 suffix!1421) Nil!19651)))))))

(assert (=> d!544689 (= lt!693773 e!1141548)))

(declare-fun c!290177 () Bool)

(assert (=> d!544689 (= c!290177 ((_ is Nil!19651) lt!693367))))

(assert (=> d!544689 (= (++!5345 lt!693367 (Cons!19651 (head!4170 suffix!1421) Nil!19651)) lt!693773)))

(declare-fun b!1783796 () Bool)

(declare-fun res!804206 () Bool)

(assert (=> b!1783796 (=> (not res!804206) (not e!1141549))))

(assert (=> b!1783796 (= res!804206 (= (size!15612 lt!693773) (+ (size!15612 lt!693367) (size!15612 (Cons!19651 (head!4170 suffix!1421) Nil!19651)))))))

(assert (= (and d!544689 c!290177) b!1783794))

(assert (= (and d!544689 (not c!290177)) b!1783795))

(assert (= (and d!544689 res!804205) b!1783796))

(assert (= (and b!1783796 res!804206) b!1783797))

(declare-fun m!2206755 () Bool)

(assert (=> b!1783795 m!2206755))

(declare-fun m!2206757 () Bool)

(assert (=> d!544689 m!2206757))

(assert (=> d!544689 m!2205921))

(declare-fun m!2206759 () Bool)

(assert (=> d!544689 m!2206759))

(declare-fun m!2206761 () Bool)

(assert (=> b!1783796 m!2206761))

(assert (=> b!1783796 m!2205927))

(declare-fun m!2206763 () Bool)

(assert (=> b!1783796 m!2206763))

(assert (=> b!1782979 d!544689))

(declare-fun d!544691 () Bool)

(assert (=> d!544691 (= (head!4170 suffix!1421) (h!25052 suffix!1421))))

(assert (=> b!1782979 d!544691))

(declare-fun d!544693 () Bool)

(declare-fun lt!693776 () Unit!33967)

(declare-fun lemma!417 (List!19722 LexerInterface!3150 List!19722) Unit!33967)

(assert (=> d!544693 (= lt!693776 (lemma!417 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70730 () Int)

(declare-datatypes ((List!19727 0))(
  ( (Nil!19657) (Cons!19657 (h!25058 Regex!4849) (t!166842 List!19727)) )
))
(declare-fun generalisedUnion!425 (List!19727) Regex!4849)

(declare-fun map!4057 (List!19722 Int) List!19727)

(assert (=> d!544693 (= (rulesRegex!877 thiss!24550 rules!3447) (generalisedUnion!425 (map!4057 rules!3447 lambda!70730)))))

(declare-fun bs!405327 () Bool)

(assert (= bs!405327 d!544693))

(declare-fun m!2206765 () Bool)

(assert (=> bs!405327 m!2206765))

(declare-fun m!2206767 () Bool)

(assert (=> bs!405327 m!2206767))

(assert (=> bs!405327 m!2206767))

(declare-fun m!2206769 () Bool)

(assert (=> bs!405327 m!2206769))

(assert (=> b!1782979 d!544693))

(declare-fun b!1783798 () Bool)

(declare-fun e!1141552 () Bool)

(declare-fun e!1141551 () Bool)

(assert (=> b!1783798 (= e!1141552 e!1141551)))

(declare-fun c!290178 () Bool)

(assert (=> b!1783798 (= c!290178 ((_ is IntegerValue!10834) (value!110021 token!523)))))

(declare-fun b!1783799 () Bool)

(assert (=> b!1783799 (= e!1141551 (inv!17 (value!110021 token!523)))))

(declare-fun b!1783800 () Bool)

(assert (=> b!1783800 (= e!1141552 (inv!16 (value!110021 token!523)))))

(declare-fun d!544695 () Bool)

(declare-fun c!290179 () Bool)

(assert (=> d!544695 (= c!290179 ((_ is IntegerValue!10833) (value!110021 token!523)))))

(assert (=> d!544695 (= (inv!21 (value!110021 token!523)) e!1141552)))

(declare-fun b!1783801 () Bool)

(declare-fun e!1141550 () Bool)

(assert (=> b!1783801 (= e!1141550 (inv!15 (value!110021 token!523)))))

(declare-fun b!1783802 () Bool)

(declare-fun res!804207 () Bool)

(assert (=> b!1783802 (=> res!804207 e!1141550)))

(assert (=> b!1783802 (= res!804207 (not ((_ is IntegerValue!10835) (value!110021 token!523))))))

(assert (=> b!1783802 (= e!1141551 e!1141550)))

(assert (= (and d!544695 c!290179) b!1783800))

(assert (= (and d!544695 (not c!290179)) b!1783798))

(assert (= (and b!1783798 c!290178) b!1783799))

(assert (= (and b!1783798 (not c!290178)) b!1783802))

(assert (= (and b!1783802 (not res!804207)) b!1783801))

(declare-fun m!2206771 () Bool)

(assert (=> b!1783799 m!2206771))

(declare-fun m!2206773 () Bool)

(assert (=> b!1783800 m!2206773))

(declare-fun m!2206775 () Bool)

(assert (=> b!1783801 m!2206775))

(assert (=> b!1783000 d!544695))

(declare-fun d!544697 () Bool)

(assert (=> d!544697 (= (isEmpty!12419 rules!3447) ((_ is Nil!19652) rules!3447))))

(assert (=> b!1782999 d!544697))

(declare-fun d!544699 () Bool)

(declare-fun res!804210 () Bool)

(declare-fun e!1141555 () Bool)

(assert (=> d!544699 (=> (not res!804210) (not e!1141555))))

(declare-fun rulesValid!1333 (LexerInterface!3150 List!19722) Bool)

(assert (=> d!544699 (= res!804210 (rulesValid!1333 thiss!24550 rules!3447))))

(assert (=> d!544699 (= (rulesInvariant!2819 thiss!24550 rules!3447) e!1141555)))

(declare-fun b!1783805 () Bool)

(declare-datatypes ((List!19728 0))(
  ( (Nil!19658) (Cons!19658 (h!25059 String!22387) (t!166843 List!19728)) )
))
(declare-fun noDuplicateTag!1333 (LexerInterface!3150 List!19722 List!19728) Bool)

(assert (=> b!1783805 (= e!1141555 (noDuplicateTag!1333 thiss!24550 rules!3447 Nil!19658))))

(assert (= (and d!544699 res!804210) b!1783805))

(declare-fun m!2206777 () Bool)

(assert (=> d!544699 m!2206777))

(declare-fun m!2206779 () Bool)

(assert (=> b!1783805 m!2206779))

(assert (=> b!1782982 d!544699))

(declare-fun d!544701 () Bool)

(assert (=> d!544701 (= (isDefined!3408 lt!693398) (not (isEmpty!12422 lt!693398)))))

(declare-fun bs!405328 () Bool)

(assert (= bs!405328 d!544701))

(declare-fun m!2206781 () Bool)

(assert (=> bs!405328 m!2206781))

(assert (=> b!1783003 d!544701))

(declare-fun b!1783807 () Bool)

(declare-fun res!804217 () Bool)

(declare-fun e!1141556 () Bool)

(assert (=> b!1783807 (=> (not res!804217) (not e!1141556))))

(declare-fun lt!693779 () Option!4065)

(assert (=> b!1783807 (= res!804217 (= (value!110021 (_1!11023 (get!6042 lt!693779))) (apply!5321 (transformation!3521 (rule!5601 (_1!11023 (get!6042 lt!693779)))) (seqFromList!2490 (originalCharacters!4335 (_1!11023 (get!6042 lt!693779)))))))))

(declare-fun b!1783808 () Bool)

(declare-fun e!1141558 () Bool)

(assert (=> b!1783808 (= e!1141558 e!1141556)))

(declare-fun res!804212 () Bool)

(assert (=> b!1783808 (=> (not res!804212) (not e!1141556))))

(assert (=> b!1783808 (= res!804212 (isDefined!3408 lt!693779))))

(declare-fun b!1783809 () Bool)

(assert (=> b!1783809 (= e!1141556 (contains!3553 rules!3447 (rule!5601 (_1!11023 (get!6042 lt!693779)))))))

(declare-fun b!1783810 () Bool)

(declare-fun res!804215 () Bool)

(assert (=> b!1783810 (=> (not res!804215) (not e!1141556))))

(assert (=> b!1783810 (= res!804215 (= (list!7991 (charsOf!2170 (_1!11023 (get!6042 lt!693779)))) (originalCharacters!4335 (_1!11023 (get!6042 lt!693779)))))))

(declare-fun b!1783811 () Bool)

(declare-fun res!804211 () Bool)

(assert (=> b!1783811 (=> (not res!804211) (not e!1141556))))

(assert (=> b!1783811 (= res!804211 (= (++!5345 (list!7991 (charsOf!2170 (_1!11023 (get!6042 lt!693779)))) (_2!11023 (get!6042 lt!693779))) lt!693367))))

(declare-fun b!1783812 () Bool)

(declare-fun res!804216 () Bool)

(assert (=> b!1783812 (=> (not res!804216) (not e!1141556))))

(assert (=> b!1783812 (= res!804216 (< (size!15612 (_2!11023 (get!6042 lt!693779))) (size!15612 lt!693367)))))

(declare-fun call!111340 () Option!4065)

(declare-fun bm!111335 () Bool)

(assert (=> bm!111335 (= call!111340 (maxPrefixOneRule!1073 thiss!24550 (h!25053 rules!3447) lt!693367))))

(declare-fun b!1783813 () Bool)

(declare-fun e!1141557 () Option!4065)

(declare-fun lt!693777 () Option!4065)

(declare-fun lt!693780 () Option!4065)

(assert (=> b!1783813 (= e!1141557 (ite (and ((_ is None!4064) lt!693777) ((_ is None!4064) lt!693780)) None!4064 (ite ((_ is None!4064) lt!693780) lt!693777 (ite ((_ is None!4064) lt!693777) lt!693780 (ite (>= (size!15610 (_1!11023 (v!25557 lt!693777))) (size!15610 (_1!11023 (v!25557 lt!693780)))) lt!693777 lt!693780)))))))

(assert (=> b!1783813 (= lt!693777 call!111340)))

(assert (=> b!1783813 (= lt!693780 (maxPrefix!1704 thiss!24550 (t!166761 rules!3447) lt!693367))))

(declare-fun b!1783814 () Bool)

(declare-fun res!804213 () Bool)

(assert (=> b!1783814 (=> (not res!804213) (not e!1141556))))

(assert (=> b!1783814 (= res!804213 (matchR!2322 (regex!3521 (rule!5601 (_1!11023 (get!6042 lt!693779)))) (list!7991 (charsOf!2170 (_1!11023 (get!6042 lt!693779))))))))

(declare-fun d!544703 () Bool)

(assert (=> d!544703 e!1141558))

(declare-fun res!804214 () Bool)

(assert (=> d!544703 (=> res!804214 e!1141558)))

(assert (=> d!544703 (= res!804214 (isEmpty!12422 lt!693779))))

(assert (=> d!544703 (= lt!693779 e!1141557)))

(declare-fun c!290180 () Bool)

(assert (=> d!544703 (= c!290180 (and ((_ is Cons!19652) rules!3447) ((_ is Nil!19652) (t!166761 rules!3447))))))

(declare-fun lt!693778 () Unit!33967)

(declare-fun lt!693781 () Unit!33967)

(assert (=> d!544703 (= lt!693778 lt!693781)))

(assert (=> d!544703 (isPrefix!1761 lt!693367 lt!693367)))

(assert (=> d!544703 (= lt!693781 (lemmaIsPrefixRefl!1162 lt!693367 lt!693367))))

(assert (=> d!544703 (rulesValidInductive!1198 thiss!24550 rules!3447)))

(assert (=> d!544703 (= (maxPrefix!1704 thiss!24550 rules!3447 lt!693367) lt!693779)))

(declare-fun b!1783806 () Bool)

(assert (=> b!1783806 (= e!1141557 call!111340)))

(assert (= (and d!544703 c!290180) b!1783806))

(assert (= (and d!544703 (not c!290180)) b!1783813))

(assert (= (or b!1783806 b!1783813) bm!111335))

(assert (= (and d!544703 (not res!804214)) b!1783808))

(assert (= (and b!1783808 res!804212) b!1783810))

(assert (= (and b!1783810 res!804215) b!1783812))

(assert (= (and b!1783812 res!804216) b!1783811))

(assert (= (and b!1783811 res!804211) b!1783807))

(assert (= (and b!1783807 res!804217) b!1783814))

(assert (= (and b!1783814 res!804213) b!1783809))

(declare-fun m!2206783 () Bool)

(assert (=> b!1783810 m!2206783))

(declare-fun m!2206785 () Bool)

(assert (=> b!1783810 m!2206785))

(assert (=> b!1783810 m!2206785))

(declare-fun m!2206787 () Bool)

(assert (=> b!1783810 m!2206787))

(assert (=> b!1783814 m!2206783))

(assert (=> b!1783814 m!2206785))

(assert (=> b!1783814 m!2206785))

(assert (=> b!1783814 m!2206787))

(assert (=> b!1783814 m!2206787))

(declare-fun m!2206789 () Bool)

(assert (=> b!1783814 m!2206789))

(assert (=> b!1783809 m!2206783))

(declare-fun m!2206791 () Bool)

(assert (=> b!1783809 m!2206791))

(assert (=> b!1783807 m!2206783))

(declare-fun m!2206793 () Bool)

(assert (=> b!1783807 m!2206793))

(assert (=> b!1783807 m!2206793))

(declare-fun m!2206795 () Bool)

(assert (=> b!1783807 m!2206795))

(assert (=> b!1783811 m!2206783))

(assert (=> b!1783811 m!2206785))

(assert (=> b!1783811 m!2206785))

(assert (=> b!1783811 m!2206787))

(assert (=> b!1783811 m!2206787))

(declare-fun m!2206797 () Bool)

(assert (=> b!1783811 m!2206797))

(declare-fun m!2206799 () Bool)

(assert (=> b!1783813 m!2206799))

(declare-fun m!2206801 () Bool)

(assert (=> b!1783808 m!2206801))

(declare-fun m!2206803 () Bool)

(assert (=> bm!111335 m!2206803))

(declare-fun m!2206805 () Bool)

(assert (=> d!544703 m!2206805))

(declare-fun m!2206807 () Bool)

(assert (=> d!544703 m!2206807))

(declare-fun m!2206809 () Bool)

(assert (=> d!544703 m!2206809))

(assert (=> d!544703 m!2205983))

(assert (=> b!1783812 m!2206783))

(declare-fun m!2206811 () Bool)

(assert (=> b!1783812 m!2206811))

(assert (=> b!1783812 m!2205927))

(assert (=> b!1783003 d!544703))

(declare-fun d!544705 () Bool)

(assert (=> d!544705 (= (list!7991 lt!693393) (list!7994 (c!290031 lt!693393)))))

(declare-fun bs!405329 () Bool)

(assert (= bs!405329 d!544705))

(declare-fun m!2206813 () Bool)

(assert (=> bs!405329 m!2206813))

(assert (=> b!1783003 d!544705))

(declare-fun d!544707 () Bool)

(declare-fun lt!693782 () BalanceConc!13018)

(assert (=> d!544707 (= (list!7991 lt!693782) (originalCharacters!4335 token!523))))

(assert (=> d!544707 (= lt!693782 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 token!523))) (value!110021 token!523)))))

(assert (=> d!544707 (= (charsOf!2170 token!523) lt!693782)))

(declare-fun b_lambda!58477 () Bool)

(assert (=> (not b_lambda!58477) (not d!544707)))

(assert (=> d!544707 t!166821))

(declare-fun b_and!137023 () Bool)

(assert (= b_and!137017 (and (=> t!166821 result!130544) b_and!137023)))

(assert (=> d!544707 t!166823))

(declare-fun b_and!137025 () Bool)

(assert (= b_and!137019 (and (=> t!166823 result!130546) b_and!137025)))

(assert (=> d!544707 t!166825))

(declare-fun b_and!137027 () Bool)

(assert (= b_and!137021 (and (=> t!166825 result!130548) b_and!137027)))

(declare-fun m!2206815 () Bool)

(assert (=> d!544707 m!2206815))

(assert (=> d!544707 m!2206733))

(assert (=> b!1783003 d!544707))

(declare-fun d!544709 () Bool)

(assert (=> d!544709 (= (isEmpty!12418 lt!693405) ((_ is Nil!19651) lt!693405))))

(assert (=> b!1782981 d!544709))

(declare-fun d!544711 () Bool)

(assert (=> d!544711 (= (inv!25575 (tag!3919 (rule!5601 token!523))) (= (mod (str.len (value!110020 (tag!3919 (rule!5601 token!523)))) 2) 0))))

(assert (=> b!1783002 d!544711))

(declare-fun d!544713 () Bool)

(declare-fun res!804218 () Bool)

(declare-fun e!1141559 () Bool)

(assert (=> d!544713 (=> (not res!804218) (not e!1141559))))

(assert (=> d!544713 (= res!804218 (semiInverseModEq!1408 (toChars!4907 (transformation!3521 (rule!5601 token!523))) (toValue!5048 (transformation!3521 (rule!5601 token!523)))))))

(assert (=> d!544713 (= (inv!25580 (transformation!3521 (rule!5601 token!523))) e!1141559)))

(declare-fun b!1783815 () Bool)

(assert (=> b!1783815 (= e!1141559 (equivClasses!1349 (toChars!4907 (transformation!3521 (rule!5601 token!523))) (toValue!5048 (transformation!3521 (rule!5601 token!523)))))))

(assert (= (and d!544713 res!804218) b!1783815))

(declare-fun m!2206817 () Bool)

(assert (=> d!544713 m!2206817))

(declare-fun m!2206819 () Bool)

(assert (=> b!1783815 m!2206819))

(assert (=> b!1783002 d!544713))

(declare-fun b!1783826 () Bool)

(declare-fun b_free!49527 () Bool)

(declare-fun b_next!50231 () Bool)

(assert (=> b!1783826 (= b_free!49527 (not b_next!50231))))

(declare-fun tb!108511 () Bool)

(declare-fun t!166827 () Bool)

(assert (=> (and b!1783826 (= (toValue!5048 (transformation!3521 (h!25053 (t!166761 rules!3447)))) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166827) tb!108511))

(declare-fun result!130552 () Bool)

(assert (= result!130552 result!130510))

(assert (=> d!544579 t!166827))

(declare-fun t!166829 () Bool)

(declare-fun tb!108513 () Bool)

(assert (=> (and b!1783826 (= (toValue!5048 (transformation!3521 (h!25053 (t!166761 rules!3447)))) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166829) tb!108513))

(declare-fun result!130554 () Bool)

(assert (= result!130554 result!130466))

(assert (=> d!544675 t!166829))

(assert (=> d!544605 t!166829))

(assert (=> d!544555 t!166827))

(declare-fun tb!108515 () Bool)

(declare-fun t!166831 () Bool)

(assert (=> (and b!1783826 (= (toValue!5048 (transformation!3521 (h!25053 (t!166761 rules!3447)))) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166831) tb!108515))

(declare-fun result!130556 () Bool)

(assert (= result!130556 result!130538))

(assert (=> d!544673 t!166831))

(assert (=> b!1782988 t!166829))

(assert (=> d!544673 t!166829))

(declare-fun tp!504709 () Bool)

(declare-fun b_and!137029 () Bool)

(assert (=> b!1783826 (= tp!504709 (and (=> t!166827 result!130552) (=> t!166831 result!130556) (=> t!166829 result!130554) b_and!137029))))

(declare-fun b_free!49529 () Bool)

(declare-fun b_next!50233 () Bool)

(assert (=> b!1783826 (= b_free!49529 (not b_next!50233))))

(declare-fun t!166833 () Bool)

(declare-fun tb!108517 () Bool)

(assert (=> (and b!1783826 (= (toChars!4907 (transformation!3521 (h!25053 (t!166761 rules!3447)))) (toChars!4907 (transformation!3521 (rule!5601 token!523)))) t!166833) tb!108517))

(declare-fun result!130558 () Bool)

(assert (= result!130558 result!130544))

(assert (=> d!544707 t!166833))

(declare-fun tb!108519 () Bool)

(declare-fun t!166835 () Bool)

(assert (=> (and b!1783826 (= (toChars!4907 (transformation!3521 (h!25053 (t!166761 rules!3447)))) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166835) tb!108519))

(declare-fun result!130560 () Bool)

(assert (= result!130560 result!130474))

(assert (=> b!1782991 t!166835))

(assert (=> b!1783771 t!166833))

(declare-fun tb!108521 () Bool)

(declare-fun t!166837 () Bool)

(assert (=> (and b!1783826 (= (toChars!4907 (transformation!3521 (h!25053 (t!166761 rules!3447)))) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166837) tb!108521))

(declare-fun result!130562 () Bool)

(assert (= result!130562 result!130504))

(assert (=> d!544555 t!166837))

(declare-fun tb!108523 () Bool)

(declare-fun t!166839 () Bool)

(assert (=> (and b!1783826 (= (toChars!4907 (transformation!3521 (h!25053 (t!166761 rules!3447)))) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369))))) t!166839) tb!108523))

(declare-fun result!130564 () Bool)

(assert (= result!130564 result!130458))

(assert (=> d!544605 t!166839))

(assert (=> d!544415 t!166835))

(assert (=> b!1782988 t!166839))

(declare-fun tp!504710 () Bool)

(declare-fun b_and!137031 () Bool)

(assert (=> b!1783826 (= tp!504710 (and (=> t!166839 result!130564) (=> t!166837 result!130562) (=> t!166833 result!130558) (=> t!166835 result!130560) b_and!137031))))

(declare-fun e!1141570 () Bool)

(assert (=> b!1783826 (= e!1141570 (and tp!504709 tp!504710))))

(declare-fun b!1783825 () Bool)

(declare-fun e!1141571 () Bool)

(declare-fun tp!504708 () Bool)

(assert (=> b!1783825 (= e!1141571 (and tp!504708 (inv!25575 (tag!3919 (h!25053 (t!166761 rules!3447)))) (inv!25580 (transformation!3521 (h!25053 (t!166761 rules!3447)))) e!1141570))))

(declare-fun b!1783824 () Bool)

(declare-fun e!1141569 () Bool)

(declare-fun tp!504711 () Bool)

(assert (=> b!1783824 (= e!1141569 (and e!1141571 tp!504711))))

(assert (=> b!1782985 (= tp!504637 e!1141569)))

(assert (= b!1783825 b!1783826))

(assert (= b!1783824 b!1783825))

(assert (= (and b!1782985 ((_ is Cons!19652) (t!166761 rules!3447))) b!1783824))

(declare-fun m!2206821 () Bool)

(assert (=> b!1783825 m!2206821))

(declare-fun m!2206823 () Bool)

(assert (=> b!1783825 m!2206823))

(declare-fun tp!504718 () Bool)

(declare-fun tp!504719 () Bool)

(declare-fun b!1783835 () Bool)

(declare-fun e!1141577 () Bool)

(assert (=> b!1783835 (= e!1141577 (and (inv!25582 (left!15751 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366))))) tp!504719 (inv!25582 (right!16081 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366))))) tp!504718))))

(declare-fun b!1783837 () Bool)

(declare-fun e!1141576 () Bool)

(declare-fun tp!504720 () Bool)

(assert (=> b!1783837 (= e!1141576 tp!504720)))

(declare-fun b!1783836 () Bool)

(declare-fun inv!25589 (IArray!13079) Bool)

(assert (=> b!1783836 (= e!1141577 (and (inv!25589 (xs!9413 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366))))) e!1141576))))

(assert (=> b!1783029 (= tp!504641 (and (inv!25582 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366)))) e!1141577))))

(assert (= (and b!1783029 ((_ is Node!6537) (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366))))) b!1783835))

(assert (= b!1783836 b!1783837))

(assert (= (and b!1783029 ((_ is Leaf!9518) (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (dynLambda!9665 (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) lt!693366))))) b!1783836))

(declare-fun m!2206825 () Bool)

(assert (=> b!1783835 m!2206825))

(declare-fun m!2206827 () Bool)

(assert (=> b!1783835 m!2206827))

(declare-fun m!2206829 () Bool)

(assert (=> b!1783836 m!2206829))

(assert (=> b!1783029 m!2205595))

(declare-fun b!1783842 () Bool)

(declare-fun e!1141580 () Bool)

(declare-fun tp!504723 () Bool)

(assert (=> b!1783842 (= e!1141580 (and tp_is_empty!7941 tp!504723))))

(assert (=> b!1783006 (= tp!504636 e!1141580)))

(assert (= (and b!1783006 ((_ is Cons!19651) (t!166760 suffix!1421))) b!1783842))

(declare-fun b!1783843 () Bool)

(declare-fun e!1141581 () Bool)

(declare-fun tp!504724 () Bool)

(assert (=> b!1783843 (= e!1141581 (and tp_is_empty!7941 tp!504724))))

(assert (=> b!1783000 (= tp!504634 e!1141581)))

(assert (= (and b!1783000 ((_ is Cons!19651) (originalCharacters!4335 token!523))) b!1783843))

(declare-fun e!1141584 () Bool)

(assert (=> b!1782987 (= tp!504632 e!1141584)))

(declare-fun b!1783855 () Bool)

(declare-fun tp!504736 () Bool)

(declare-fun tp!504739 () Bool)

(assert (=> b!1783855 (= e!1141584 (and tp!504736 tp!504739))))

(declare-fun b!1783857 () Bool)

(declare-fun tp!504735 () Bool)

(declare-fun tp!504738 () Bool)

(assert (=> b!1783857 (= e!1141584 (and tp!504735 tp!504738))))

(declare-fun b!1783854 () Bool)

(assert (=> b!1783854 (= e!1141584 tp_is_empty!7941)))

(declare-fun b!1783856 () Bool)

(declare-fun tp!504737 () Bool)

(assert (=> b!1783856 (= e!1141584 tp!504737)))

(assert (= (and b!1782987 ((_ is ElementMatch!4849) (regex!3521 rule!422))) b!1783854))

(assert (= (and b!1782987 ((_ is Concat!8461) (regex!3521 rule!422))) b!1783855))

(assert (= (and b!1782987 ((_ is Star!4849) (regex!3521 rule!422))) b!1783856))

(assert (= (and b!1782987 ((_ is Union!4849) (regex!3521 rule!422))) b!1783857))

(declare-fun e!1141585 () Bool)

(assert (=> b!1783013 (= tp!504633 e!1141585)))

(declare-fun b!1783859 () Bool)

(declare-fun tp!504741 () Bool)

(declare-fun tp!504744 () Bool)

(assert (=> b!1783859 (= e!1141585 (and tp!504741 tp!504744))))

(declare-fun b!1783861 () Bool)

(declare-fun tp!504740 () Bool)

(declare-fun tp!504743 () Bool)

(assert (=> b!1783861 (= e!1141585 (and tp!504740 tp!504743))))

(declare-fun b!1783858 () Bool)

(assert (=> b!1783858 (= e!1141585 tp_is_empty!7941)))

(declare-fun b!1783860 () Bool)

(declare-fun tp!504742 () Bool)

(assert (=> b!1783860 (= e!1141585 tp!504742)))

(assert (= (and b!1783013 ((_ is ElementMatch!4849) (regex!3521 (h!25053 rules!3447)))) b!1783858))

(assert (= (and b!1783013 ((_ is Concat!8461) (regex!3521 (h!25053 rules!3447)))) b!1783859))

(assert (= (and b!1783013 ((_ is Star!4849) (regex!3521 (h!25053 rules!3447)))) b!1783860))

(assert (= (and b!1783013 ((_ is Union!4849) (regex!3521 (h!25053 rules!3447)))) b!1783861))

(declare-fun e!1141586 () Bool)

(assert (=> b!1783002 (= tp!504628 e!1141586)))

(declare-fun b!1783863 () Bool)

(declare-fun tp!504746 () Bool)

(declare-fun tp!504749 () Bool)

(assert (=> b!1783863 (= e!1141586 (and tp!504746 tp!504749))))

(declare-fun b!1783865 () Bool)

(declare-fun tp!504745 () Bool)

(declare-fun tp!504748 () Bool)

(assert (=> b!1783865 (= e!1141586 (and tp!504745 tp!504748))))

(declare-fun b!1783862 () Bool)

(assert (=> b!1783862 (= e!1141586 tp_is_empty!7941)))

(declare-fun b!1783864 () Bool)

(declare-fun tp!504747 () Bool)

(assert (=> b!1783864 (= e!1141586 tp!504747)))

(assert (= (and b!1783002 ((_ is ElementMatch!4849) (regex!3521 (rule!5601 token!523)))) b!1783862))

(assert (= (and b!1783002 ((_ is Concat!8461) (regex!3521 (rule!5601 token!523)))) b!1783863))

(assert (= (and b!1783002 ((_ is Star!4849) (regex!3521 (rule!5601 token!523)))) b!1783864))

(assert (= (and b!1783002 ((_ is Union!4849) (regex!3521 (rule!5601 token!523)))) b!1783865))

(declare-fun b!1783866 () Bool)

(declare-fun tp!504751 () Bool)

(declare-fun tp!504750 () Bool)

(declare-fun e!1141588 () Bool)

(assert (=> b!1783866 (= e!1141588 (and (inv!25582 (left!15751 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (value!110021 (_1!11023 lt!693369)))))) tp!504751 (inv!25582 (right!16081 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (value!110021 (_1!11023 lt!693369)))))) tp!504750))))

(declare-fun b!1783868 () Bool)

(declare-fun e!1141587 () Bool)

(declare-fun tp!504752 () Bool)

(assert (=> b!1783868 (= e!1141587 tp!504752)))

(declare-fun b!1783867 () Bool)

(assert (=> b!1783867 (= e!1141588 (and (inv!25589 (xs!9413 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (value!110021 (_1!11023 lt!693369)))))) e!1141587))))

(assert (=> b!1783032 (= tp!504642 (and (inv!25582 (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (value!110021 (_1!11023 lt!693369))))) e!1141588))))

(assert (= (and b!1783032 ((_ is Node!6537) (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (value!110021 (_1!11023 lt!693369)))))) b!1783866))

(assert (= b!1783867 b!1783868))

(assert (= (and b!1783032 ((_ is Leaf!9518) (c!290031 (dynLambda!9664 (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))) (value!110021 (_1!11023 lt!693369)))))) b!1783867))

(declare-fun m!2206831 () Bool)

(assert (=> b!1783866 m!2206831))

(declare-fun m!2206833 () Bool)

(assert (=> b!1783866 m!2206833))

(declare-fun m!2206835 () Bool)

(assert (=> b!1783867 m!2206835))

(assert (=> b!1783032 m!2205601))

(declare-fun b_lambda!58479 () Bool)

(assert (= b_lambda!58421 (or (and b!1782980 b_free!49511 (= (toValue!5048 (transformation!3521 (rule!5601 token!523))) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))))) (and b!1782990 b_free!49515 (= (toValue!5048 (transformation!3521 (h!25053 rules!3447))) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))))) (and b!1783004 b_free!49519 (= (toValue!5048 (transformation!3521 rule!422)) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))))) (and b!1783826 b_free!49527 (= (toValue!5048 (transformation!3521 (h!25053 (t!166761 rules!3447)))) (toValue!5048 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))))) b_lambda!58479)))

(declare-fun b_lambda!58481 () Bool)

(assert (= b_lambda!58475 (or (and b!1782980 b_free!49513) (and b!1782990 b_free!49517 (= (toChars!4907 (transformation!3521 (h!25053 rules!3447))) (toChars!4907 (transformation!3521 (rule!5601 token!523))))) (and b!1783004 b_free!49521 (= (toChars!4907 (transformation!3521 rule!422)) (toChars!4907 (transformation!3521 (rule!5601 token!523))))) (and b!1783826 b_free!49529 (= (toChars!4907 (transformation!3521 (h!25053 (t!166761 rules!3447)))) (toChars!4907 (transformation!3521 (rule!5601 token!523))))) b_lambda!58481)))

(declare-fun b_lambda!58483 () Bool)

(assert (= b_lambda!58423 (or (and b!1782980 b_free!49513 (= (toChars!4907 (transformation!3521 (rule!5601 token!523))) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))))) (and b!1782990 b_free!49517 (= (toChars!4907 (transformation!3521 (h!25053 rules!3447))) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))))) (and b!1783004 b_free!49521 (= (toChars!4907 (transformation!3521 rule!422)) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))))) (and b!1783826 b_free!49529 (= (toChars!4907 (transformation!3521 (h!25053 (t!166761 rules!3447)))) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))))) b_lambda!58483)))

(declare-fun b_lambda!58485 () Bool)

(assert (= b_lambda!58477 (or (and b!1782980 b_free!49513) (and b!1782990 b_free!49517 (= (toChars!4907 (transformation!3521 (h!25053 rules!3447))) (toChars!4907 (transformation!3521 (rule!5601 token!523))))) (and b!1783004 b_free!49521 (= (toChars!4907 (transformation!3521 rule!422)) (toChars!4907 (transformation!3521 (rule!5601 token!523))))) (and b!1783826 b_free!49529 (= (toChars!4907 (transformation!3521 (h!25053 (t!166761 rules!3447)))) (toChars!4907 (transformation!3521 (rule!5601 token!523))))) b_lambda!58485)))

(declare-fun b_lambda!58487 () Bool)

(assert (= b_lambda!58419 (or (and b!1782980 b_free!49513 (= (toChars!4907 (transformation!3521 (rule!5601 token!523))) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))))) (and b!1782990 b_free!49517 (= (toChars!4907 (transformation!3521 (h!25053 rules!3447))) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))))) (and b!1783004 b_free!49521 (= (toChars!4907 (transformation!3521 rule!422)) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))))) (and b!1783826 b_free!49529 (= (toChars!4907 (transformation!3521 (h!25053 (t!166761 rules!3447)))) (toChars!4907 (transformation!3521 (rule!5601 (_1!11023 lt!693369)))))) b_lambda!58487)))

(check-sat (not d!544687) (not d!544681) (not b_lambda!58471) (not d!544663) (not b_lambda!58465) (not b!1783778) (not d!544409) (not b!1783779) (not d!544441) (not bm!111335) (not d!544631) (not b!1783810) (not d!544707) (not b!1783836) (not b!1783780) (not b_next!50233) (not d!544569) (not b!1783239) (not b!1783866) (not b!1783658) (not b!1783230) (not d!544703) (not b_lambda!58451) (not d!544705) (not d!544571) (not b!1783222) (not b!1783604) (not b!1783191) (not d!544637) (not b!1783032) (not d!544407) (not d!544667) (not b!1783174) (not d!544585) (not d!544439) (not b!1783179) (not d!544587) (not d!544651) (not b!1783612) (not d!544445) (not b!1783496) (not b_lambda!58487) (not b!1783232) (not b!1783223) b_and!137015 (not b!1783710) (not b!1783265) (not b!1783808) (not b!1783749) (not d!544655) (not b!1783606) (not tb!108473) (not b!1783672) (not d!544435) (not d!544617) (not b!1783863) (not d!544645) (not b!1783793) (not d!544599) (not b!1783824) (not b!1783792) (not b!1783621) (not d!544683) (not b!1783720) (not b!1783609) (not b!1783670) (not b!1783224) (not b!1783748) (not b!1783479) (not b_lambda!58473) (not bm!111333) (not d!544405) (not d!544413) (not b!1783267) (not b_lambda!58467) (not d!544597) (not d!544625) (not b!1783835) (not b!1783811) (not b_lambda!58485) (not b!1783795) (not b!1783723) (not b_next!50217) (not b!1783029) (not b!1783704) (not b!1783264) (not b_lambda!58431) b_and!137029 (not b_next!50221) (not b!1783678) (not b!1783719) (not b!1783660) (not b!1783868) (not b!1783744) (not b!1783837) (not b!1783843) (not d!544443) (not b!1783738) (not b!1783220) (not b!1783227) (not d!544661) (not bm!111332) (not b!1783692) (not b!1783867) (not b!1783614) (not b_next!50219) (not d!544713) (not bm!111331) (not b!1783773) (not b!1783656) (not b_next!50215) (not b!1783238) (not b!1783249) (not d!544689) (not bm!111330) (not b!1783611) (not b!1783623) (not d!544665) (not b!1783766) (not bm!111334) (not b!1783796) (not d!544629) (not d!544701) (not b!1783226) (not b_lambda!58481) (not d!544677) (not d!544699) (not d!544573) (not d!544583) (not b!1783657) (not b!1783610) (not b!1783229) (not d!544555) (not b_lambda!58479) b_and!137013 (not b!1783690) (not d!544611) (not b!1783864) tp_is_empty!7941 (not tb!108499) (not b!1783248) (not d!544577) (not d!544633) (not b!1783722) (not b!1783706) (not b!1783799) (not b!1783221) (not b!1783857) (not b!1783192) (not b!1783807) (not d!544623) (not b_lambda!58447) (not b!1783607) (not d!544429) (not d!544657) (not b!1783164) (not d!544581) (not b_next!50225) (not b!1783705) (not tb!108505) (not b!1783178) (not b!1783676) (not d!544605) (not b!1783774) (not b!1783714) (not b!1783782) (not bm!111320) (not b!1783237) (not d!544607) (not b!1783859) (not d!544627) (not b!1783801) (not b!1783667) (not b!1783815) (not b!1783465) (not b!1783617) (not b!1783861) (not b!1783860) (not b!1783484) (not b!1783771) b_and!137023 (not d!544647) (not b!1783677) (not b!1783490) (not b!1783464) b_and!137031 (not b!1783825) (not b!1783225) (not b!1783865) (not b!1783681) (not d!544615) (not b!1783501) (not b!1783800) (not d!544603) (not d!544671) (not b!1783783) b_and!137025 (not b!1783680) (not b!1783190) (not b!1783175) (not b!1783812) (not b!1783622) (not b!1783752) (not b!1783713) (not d!544685) (not b!1783466) (not d!544679) (not b!1783772) (not b!1783750) (not b!1783805) (not b!1783708) (not b!1783742) (not b!1783842) (not tb!108479) (not b!1783856) (not b!1783668) (not d!544421) b_and!137027 (not b!1783605) (not b_next!50231) (not b_next!50223) (not b!1783855) (not d!544693) (not b!1783652) (not b!1783814) (not d!544669) b_and!137011 (not b!1783718) (not b!1783162) (not d!544621) (not b!1783619) (not d!544649) (not b!1783753) (not b!1783661) (not b!1783618) (not d!544415) (not b!1783809) (not b_lambda!58469) (not d!544673) (not b_lambda!58483) (not b_lambda!58453) (not b!1783813))
(check-sat (not b_next!50233) b_and!137015 (not b_next!50217) (not b_next!50219) (not b_next!50215) b_and!137013 (not b_next!50225) b_and!137023 b_and!137031 b_and!137025 b_and!137011 (not b_next!50221) b_and!137029 b_and!137027 (not b_next!50231) (not b_next!50223))

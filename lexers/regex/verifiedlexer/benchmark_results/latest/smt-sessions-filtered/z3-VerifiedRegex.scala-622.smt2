; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20162 () Bool)

(assert start!20162)

(declare-fun b!186021 () Bool)

(declare-fun b_free!7297 () Bool)

(declare-fun b_next!7297 () Bool)

(assert (=> b!186021 (= b_free!7297 (not b_next!7297))))

(declare-fun tp!87527 () Bool)

(declare-fun b_and!12805 () Bool)

(assert (=> b!186021 (= tp!87527 b_and!12805)))

(declare-fun b_free!7299 () Bool)

(declare-fun b_next!7299 () Bool)

(assert (=> b!186021 (= b_free!7299 (not b_next!7299))))

(declare-fun tp!87524 () Bool)

(declare-fun b_and!12807 () Bool)

(assert (=> b!186021 (= tp!87524 b_and!12807)))

(declare-fun b!186020 () Bool)

(declare-fun b_free!7301 () Bool)

(declare-fun b_next!7301 () Bool)

(assert (=> b!186020 (= b_free!7301 (not b_next!7301))))

(declare-fun tp!87518 () Bool)

(declare-fun b_and!12809 () Bool)

(assert (=> b!186020 (= tp!87518 b_and!12809)))

(declare-fun b_free!7303 () Bool)

(declare-fun b_next!7303 () Bool)

(assert (=> b!186020 (= b_free!7303 (not b_next!7303))))

(declare-fun tp!87520 () Bool)

(declare-fun b_and!12811 () Bool)

(assert (=> b!186020 (= tp!87520 b_and!12811)))

(declare-fun b!186038 () Bool)

(declare-fun b_free!7305 () Bool)

(declare-fun b_next!7305 () Bool)

(assert (=> b!186038 (= b_free!7305 (not b_next!7305))))

(declare-fun tp!87525 () Bool)

(declare-fun b_and!12813 () Bool)

(assert (=> b!186038 (= tp!87525 b_and!12813)))

(declare-fun b_free!7307 () Bool)

(declare-fun b_next!7307 () Bool)

(assert (=> b!186038 (= b_free!7307 (not b_next!7307))))

(declare-fun tp!87522 () Bool)

(declare-fun b_and!12815 () Bool)

(assert (=> b!186038 (= tp!87522 b_and!12815)))

(declare-fun bs!18484 () Bool)

(declare-fun b!186040 () Bool)

(declare-fun b!186010 () Bool)

(assert (= bs!18484 (and b!186040 b!186010)))

(declare-fun lambda!5602 () Int)

(declare-fun lambda!5601 () Int)

(assert (=> bs!18484 (not (= lambda!5602 lambda!5601))))

(declare-fun b!186054 () Bool)

(declare-fun e!113813 () Bool)

(assert (=> b!186054 (= e!113813 true)))

(declare-fun b!186053 () Bool)

(declare-fun e!113812 () Bool)

(assert (=> b!186053 (= e!113812 e!113813)))

(declare-fun b!186052 () Bool)

(declare-fun e!113811 () Bool)

(assert (=> b!186052 (= e!113811 e!113812)))

(assert (=> b!186040 e!113811))

(assert (= b!186053 b!186054))

(assert (= b!186052 b!186053))

(declare-datatypes ((C!2504 0))(
  ( (C!2505 (val!1138 Int)) )
))
(declare-datatypes ((List!3119 0))(
  ( (Nil!3109) (Cons!3109 (h!8506 (_ BitVec 16)) (t!28633 List!3119)) )
))
(declare-datatypes ((TokenValue!589 0))(
  ( (FloatLiteralValue!1178 (text!4568 List!3119)) (TokenValueExt!588 (__x!2665 Int)) (Broken!2945 (value!20449 List!3119)) (Object!598) (End!589) (Def!589) (Underscore!589) (Match!589) (Else!589) (Error!589) (Case!589) (If!589) (Extends!589) (Abstract!589) (Class!589) (Val!589) (DelimiterValue!1178 (del!649 List!3119)) (KeywordValue!595 (value!20450 List!3119)) (CommentValue!1178 (value!20451 List!3119)) (WhitespaceValue!1178 (value!20452 List!3119)) (IndentationValue!589 (value!20453 List!3119)) (String!4024) (Int32!589) (Broken!2946 (value!20454 List!3119)) (Boolean!590) (Unit!2887) (OperatorValue!592 (op!649 List!3119)) (IdentifierValue!1178 (value!20455 List!3119)) (IdentifierValue!1179 (value!20456 List!3119)) (WhitespaceValue!1179 (value!20457 List!3119)) (True!1178) (False!1178) (Broken!2947 (value!20458 List!3119)) (Broken!2948 (value!20459 List!3119)) (True!1179) (RightBrace!589) (RightBracket!589) (Colon!589) (Null!589) (Comma!589) (LeftBracket!589) (False!1179) (LeftBrace!589) (ImaginaryLiteralValue!589 (text!4569 List!3119)) (StringLiteralValue!1767 (value!20460 List!3119)) (EOFValue!589 (value!20461 List!3119)) (IdentValue!589 (value!20462 List!3119)) (DelimiterValue!1179 (value!20463 List!3119)) (DedentValue!589 (value!20464 List!3119)) (NewLineValue!589 (value!20465 List!3119)) (IntegerValue!1767 (value!20466 (_ BitVec 32)) (text!4570 List!3119)) (IntegerValue!1768 (value!20467 Int) (text!4571 List!3119)) (Times!589) (Or!589) (Equal!589) (Minus!589) (Broken!2949 (value!20468 List!3119)) (And!589) (Div!589) (LessEqual!589) (Mod!589) (Concat!1380) (Not!589) (Plus!589) (SpaceValue!589 (value!20469 List!3119)) (IntegerValue!1769 (value!20470 Int) (text!4572 List!3119)) (StringLiteralValue!1768 (text!4573 List!3119)) (FloatLiteralValue!1179 (text!4574 List!3119)) (BytesLiteralValue!589 (value!20471 List!3119)) (CommentValue!1179 (value!20472 List!3119)) (StringLiteralValue!1769 (value!20473 List!3119)) (ErrorTokenValue!589 (msg!650 List!3119)) )
))
(declare-datatypes ((List!3120 0))(
  ( (Nil!3110) (Cons!3110 (h!8507 C!2504) (t!28634 List!3120)) )
))
(declare-datatypes ((IArray!1913 0))(
  ( (IArray!1914 (innerList!1014 List!3120)) )
))
(declare-datatypes ((Conc!956 0))(
  ( (Node!956 (left!2430 Conc!956) (right!2760 Conc!956) (csize!2142 Int) (cheight!1167 Int)) (Leaf!1579 (xs!3551 IArray!1913) (csize!2143 Int)) (Empty!956) )
))
(declare-datatypes ((BalanceConc!1920 0))(
  ( (BalanceConc!1921 (c!35965 Conc!956)) )
))
(declare-datatypes ((TokenValueInjection!950 0))(
  ( (TokenValueInjection!951 (toValue!1238 Int) (toChars!1097 Int)) )
))
(declare-datatypes ((Regex!791 0))(
  ( (ElementMatch!791 (c!35966 C!2504)) (Concat!1381 (regOne!2094 Regex!791) (regTwo!2094 Regex!791)) (EmptyExpr!791) (Star!791 (reg!1120 Regex!791)) (EmptyLang!791) (Union!791 (regOne!2095 Regex!791) (regTwo!2095 Regex!791)) )
))
(declare-datatypes ((String!4025 0))(
  ( (String!4026 (value!20474 String)) )
))
(declare-datatypes ((Rule!934 0))(
  ( (Rule!935 (regex!567 Regex!791) (tag!745 String!4025) (isSeparator!567 Bool) (transformation!567 TokenValueInjection!950)) )
))
(declare-datatypes ((List!3121 0))(
  ( (Nil!3111) (Cons!3111 (h!8508 Rule!934) (t!28635 List!3121)) )
))
(declare-fun rules!1920 () List!3121)

(get-info :version)

(assert (= (and b!186040 ((_ is Cons!3111) rules!1920)) b!186052))

(declare-fun order!1877 () Int)

(declare-fun order!1879 () Int)

(declare-fun dynLambda!1283 (Int Int) Int)

(declare-fun dynLambda!1284 (Int Int) Int)

(assert (=> b!186054 (< (dynLambda!1283 order!1877 (toValue!1238 (transformation!567 (h!8508 rules!1920)))) (dynLambda!1284 order!1879 lambda!5602))))

(declare-fun order!1881 () Int)

(declare-fun dynLambda!1285 (Int Int) Int)

(assert (=> b!186054 (< (dynLambda!1285 order!1881 (toChars!1097 (transformation!567 (h!8508 rules!1920)))) (dynLambda!1284 order!1879 lambda!5602))))

(assert (=> b!186040 true))

(declare-fun e!113780 () Bool)

(declare-datatypes ((Token!878 0))(
  ( (Token!879 (value!20475 TokenValue!589) (rule!1082 Rule!934) (size!2515 Int) (originalCharacters!610 List!3120)) )
))
(declare-datatypes ((List!3122 0))(
  ( (Nil!3112) (Cons!3112 (h!8509 Token!878) (t!28636 List!3122)) )
))
(declare-fun tokens!465 () List!3122)

(declare-fun b!186008 () Bool)

(declare-fun tp!87523 () Bool)

(declare-fun e!113797 () Bool)

(declare-fun inv!3938 (String!4025) Bool)

(declare-fun inv!3941 (TokenValueInjection!950) Bool)

(assert (=> b!186008 (= e!113797 (and tp!87523 (inv!3938 (tag!745 (rule!1082 (h!8509 tokens!465)))) (inv!3941 (transformation!567 (rule!1082 (h!8509 tokens!465)))) e!113780))))

(declare-fun b!186009 () Bool)

(declare-fun e!113802 () Bool)

(declare-fun e!113799 () Bool)

(assert (=> b!186009 (= e!113802 e!113799)))

(declare-fun res!84729 () Bool)

(assert (=> b!186009 (=> res!84729 e!113799)))

(declare-fun lt!62318 () List!3120)

(declare-fun lt!62330 () List!3120)

(declare-fun lt!62326 () List!3120)

(assert (=> b!186009 (= res!84729 (or (not (= lt!62318 lt!62326)) (not (= lt!62326 lt!62330)) (not (= lt!62318 lt!62330))))))

(declare-datatypes ((LexerInterface!453 0))(
  ( (LexerInterfaceExt!450 (__x!2666 Int)) (Lexer!451) )
))
(declare-fun thiss!17480 () LexerInterface!453)

(declare-fun lt!62337 () List!3122)

(declare-fun printList!137 (LexerInterface!453 List!3122) List!3120)

(assert (=> b!186009 (= lt!62326 (printList!137 thiss!17480 lt!62337))))

(declare-fun lt!62319 () BalanceConc!1920)

(declare-fun list!1145 (BalanceConc!1920) List!3120)

(assert (=> b!186009 (= lt!62318 (list!1145 lt!62319))))

(assert (=> b!186009 (= lt!62337 (Cons!3112 (h!8509 tokens!465) Nil!3112))))

(declare-datatypes ((IArray!1915 0))(
  ( (IArray!1916 (innerList!1015 List!3122)) )
))
(declare-datatypes ((Conc!957 0))(
  ( (Node!957 (left!2431 Conc!957) (right!2761 Conc!957) (csize!2144 Int) (cheight!1168 Int)) (Leaf!1580 (xs!3552 IArray!1915) (csize!2145 Int)) (Empty!957) )
))
(declare-datatypes ((BalanceConc!1922 0))(
  ( (BalanceConc!1923 (c!35967 Conc!957)) )
))
(declare-fun lt!62338 () BalanceConc!1922)

(declare-fun printTailRec!147 (LexerInterface!453 BalanceConc!1922 Int BalanceConc!1920) BalanceConc!1920)

(assert (=> b!186009 (= lt!62319 (printTailRec!147 thiss!17480 lt!62338 0 (BalanceConc!1921 Empty!956)))))

(declare-fun print!184 (LexerInterface!453 BalanceConc!1922) BalanceConc!1920)

(assert (=> b!186009 (= lt!62319 (print!184 thiss!17480 lt!62338))))

(declare-fun singletonSeq!119 (Token!878) BalanceConc!1922)

(assert (=> b!186009 (= lt!62338 (singletonSeq!119 (h!8509 tokens!465)))))

(declare-fun res!84750 () Bool)

(declare-fun e!113801 () Bool)

(assert (=> b!186010 (=> (not res!84750) (not e!113801))))

(declare-fun forall!645 (List!3122 Int) Bool)

(assert (=> b!186010 (= res!84750 (forall!645 tokens!465 lambda!5601))))

(declare-fun b!186011 () Bool)

(declare-fun res!84741 () Bool)

(declare-fun e!113789 () Bool)

(assert (=> b!186011 (=> (not res!84741) (not e!113789))))

(declare-fun rulesInvariant!419 (LexerInterface!453 List!3121) Bool)

(assert (=> b!186011 (= res!84741 (rulesInvariant!419 thiss!17480 rules!1920))))

(declare-fun b!186012 () Bool)

(declare-fun e!113795 () Bool)

(assert (=> b!186012 (= e!113795 e!113802)))

(declare-fun res!84746 () Bool)

(assert (=> b!186012 (=> res!84746 e!113802)))

(declare-fun e!113794 () Bool)

(assert (=> b!186012 (= res!84746 e!113794)))

(declare-fun res!84742 () Bool)

(assert (=> b!186012 (=> (not res!84742) (not e!113794))))

(declare-fun lt!62331 () Bool)

(assert (=> b!186012 (= res!84742 (not lt!62331))))

(declare-fun lt!62328 () List!3120)

(declare-fun lt!62316 () List!3120)

(assert (=> b!186012 (= lt!62331 (= lt!62328 lt!62316))))

(declare-fun b!186013 () Bool)

(declare-fun e!113784 () Bool)

(declare-fun matchR!129 (Regex!791 List!3120) Bool)

(assert (=> b!186013 (= e!113784 (matchR!129 (regex!567 (rule!1082 (h!8509 tokens!465))) lt!62330))))

(declare-fun b!186014 () Bool)

(declare-fun res!84732 () Bool)

(assert (=> b!186014 (=> (not res!84732) (not e!113801))))

(declare-fun separatorToken!170 () Token!878)

(declare-fun rulesProduceIndividualToken!202 (LexerInterface!453 List!3121 Token!878) Bool)

(assert (=> b!186014 (= res!84732 (rulesProduceIndividualToken!202 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!186015 () Bool)

(declare-fun res!84734 () Bool)

(assert (=> b!186015 (=> res!84734 e!113799)))

(assert (=> b!186015 (= res!84734 (not (rulesProduceIndividualToken!202 thiss!17480 rules!1920 (h!8509 tokens!465))))))

(declare-fun b!186016 () Bool)

(declare-fun res!84728 () Bool)

(declare-fun e!113788 () Bool)

(assert (=> b!186016 (=> res!84728 e!113788)))

(assert (=> b!186016 (= res!84728 (not (= tokens!465 lt!62337)))))

(declare-fun b!186018 () Bool)

(declare-fun tp!87519 () Bool)

(declare-fun e!113779 () Bool)

(declare-fun e!113793 () Bool)

(declare-fun inv!3942 (Token!878) Bool)

(assert (=> b!186018 (= e!113779 (and (inv!3942 (h!8509 tokens!465)) e!113793 tp!87519))))

(declare-fun b!186019 () Bool)

(declare-fun e!113792 () Bool)

(assert (=> b!186019 (= e!113792 (not e!113795))))

(declare-fun res!84751 () Bool)

(assert (=> b!186019 (=> res!84751 e!113795)))

(declare-fun lt!62333 () List!3120)

(declare-fun printWithSeparatorTokenWhenNeededRec!136 (LexerInterface!453 List!3121 BalanceConc!1922 Token!878 Int) BalanceConc!1920)

(declare-fun seqFromList!511 (List!3122) BalanceConc!1922)

(assert (=> b!186019 (= res!84751 (not (= lt!62333 (list!1145 (printWithSeparatorTokenWhenNeededRec!136 thiss!17480 rules!1920 (seqFromList!511 (t!28636 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!62332 () List!3120)

(assert (=> b!186019 (= lt!62332 lt!62316)))

(declare-fun lt!62324 () List!3120)

(declare-fun ++!738 (List!3120 List!3120) List!3120)

(assert (=> b!186019 (= lt!62316 (++!738 lt!62330 lt!62324))))

(declare-fun lt!62329 () List!3120)

(assert (=> b!186019 (= lt!62332 (++!738 (++!738 lt!62330 lt!62329) lt!62333))))

(declare-datatypes ((Unit!2888 0))(
  ( (Unit!2889) )
))
(declare-fun lt!62325 () Unit!2888)

(declare-fun lemmaConcatAssociativity!256 (List!3120 List!3120 List!3120) Unit!2888)

(assert (=> b!186019 (= lt!62325 (lemmaConcatAssociativity!256 lt!62330 lt!62329 lt!62333))))

(declare-fun charsOf!222 (Token!878) BalanceConc!1920)

(assert (=> b!186019 (= lt!62330 (list!1145 (charsOf!222 (h!8509 tokens!465))))))

(assert (=> b!186019 (= lt!62324 (++!738 lt!62329 lt!62333))))

(declare-fun printWithSeparatorTokenWhenNeededList!146 (LexerInterface!453 List!3121 List!3122 Token!878) List!3120)

(assert (=> b!186019 (= lt!62333 (printWithSeparatorTokenWhenNeededList!146 thiss!17480 rules!1920 (t!28636 tokens!465) separatorToken!170))))

(assert (=> b!186019 (= lt!62329 (list!1145 (charsOf!222 separatorToken!170)))))

(declare-fun e!113800 () Bool)

(assert (=> b!186020 (= e!113800 (and tp!87518 tp!87520))))

(declare-fun e!113803 () Bool)

(assert (=> b!186021 (= e!113803 (and tp!87527 tp!87524))))

(declare-fun b!186022 () Bool)

(declare-fun tp!87515 () Bool)

(declare-fun e!113785 () Bool)

(assert (=> b!186022 (= e!113785 (and tp!87515 (inv!3938 (tag!745 (h!8508 rules!1920))) (inv!3941 (transformation!567 (h!8508 rules!1920))) e!113803))))

(declare-fun b!186023 () Bool)

(declare-fun res!84737 () Bool)

(assert (=> b!186023 (=> (not res!84737) (not e!113801))))

(declare-fun sepAndNonSepRulesDisjointChars!156 (List!3121 List!3121) Bool)

(assert (=> b!186023 (= res!84737 (sepAndNonSepRulesDisjointChars!156 rules!1920 rules!1920))))

(declare-fun tp!87516 () Bool)

(declare-fun b!186024 () Bool)

(declare-fun inv!21 (TokenValue!589) Bool)

(assert (=> b!186024 (= e!113793 (and (inv!21 (value!20475 (h!8509 tokens!465))) e!113797 tp!87516))))

(declare-fun b!186025 () Bool)

(declare-fun e!113777 () Bool)

(declare-fun e!113781 () Bool)

(assert (=> b!186025 (= e!113777 e!113781)))

(declare-fun res!84747 () Bool)

(assert (=> b!186025 (=> (not res!84747) (not e!113781))))

(declare-datatypes ((tuple2!3138 0))(
  ( (tuple2!3139 (_1!1785 Token!878) (_2!1785 List!3120)) )
))
(declare-datatypes ((Option!412 0))(
  ( (None!411) (Some!411 (v!13910 tuple2!3138)) )
))
(declare-fun lt!62335 () Option!412)

(declare-fun isDefined!263 (Option!412) Bool)

(assert (=> b!186025 (= res!84747 (isDefined!263 lt!62335))))

(declare-fun maxPrefix!183 (LexerInterface!453 List!3121 List!3120) Option!412)

(assert (=> b!186025 (= lt!62335 (maxPrefix!183 thiss!17480 rules!1920 lt!62328))))

(declare-fun b!186026 () Bool)

(declare-fun e!113783 () Bool)

(assert (=> b!186026 (= e!113783 e!113788)))

(declare-fun res!84745 () Bool)

(assert (=> b!186026 (=> res!84745 e!113788)))

(declare-fun isEmpty!1479 (List!3122) Bool)

(assert (=> b!186026 (= res!84745 (not (isEmpty!1479 (t!28636 tokens!465))))))

(declare-fun lt!62323 () Option!412)

(assert (=> b!186026 (= lt!62323 (maxPrefix!183 thiss!17480 rules!1920 lt!62324))))

(declare-fun lt!62321 () tuple2!3138)

(assert (=> b!186026 (= lt!62324 (_2!1785 lt!62321))))

(declare-fun lt!62339 () Unit!2888)

(declare-fun lemmaSamePrefixThenSameSuffix!88 (List!3120 List!3120 List!3120 List!3120 List!3120) Unit!2888)

(assert (=> b!186026 (= lt!62339 (lemmaSamePrefixThenSameSuffix!88 lt!62330 lt!62324 lt!62330 (_2!1785 lt!62321) lt!62328))))

(declare-fun get!887 (Option!412) tuple2!3138)

(assert (=> b!186026 (= lt!62321 (get!887 (maxPrefix!183 thiss!17480 rules!1920 lt!62328)))))

(declare-fun isPrefix!263 (List!3120 List!3120) Bool)

(assert (=> b!186026 (isPrefix!263 lt!62330 lt!62316)))

(declare-fun lt!62320 () Unit!2888)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!158 (List!3120 List!3120) Unit!2888)

(assert (=> b!186026 (= lt!62320 (lemmaConcatTwoListThenFirstIsPrefix!158 lt!62330 lt!62324))))

(assert (=> b!186026 e!113777))

(declare-fun res!84733 () Bool)

(assert (=> b!186026 (=> res!84733 e!113777)))

(assert (=> b!186026 (= res!84733 (isEmpty!1479 tokens!465))))

(declare-fun lt!62336 () Unit!2888)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!28 (LexerInterface!453 List!3121 List!3122 Token!878) Unit!2888)

(assert (=> b!186026 (= lt!62336 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!28 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!186027 () Bool)

(declare-fun res!84731 () Bool)

(assert (=> b!186027 (=> (not res!84731) (not e!113789))))

(declare-fun isEmpty!1480 (List!3121) Bool)

(assert (=> b!186027 (= res!84731 (not (isEmpty!1480 rules!1920)))))

(declare-fun b!186028 () Bool)

(declare-fun head!652 (List!3122) Token!878)

(assert (=> b!186028 (= e!113781 (= (_1!1785 (get!887 lt!62335)) (head!652 tokens!465)))))

(declare-fun b!186029 () Bool)

(assert (=> b!186029 (= e!113794 (not (= lt!62328 (++!738 lt!62330 lt!62333))))))

(declare-fun b!186030 () Bool)

(declare-fun res!84752 () Bool)

(assert (=> b!186030 (=> (not res!84752) (not e!113801))))

(assert (=> b!186030 (= res!84752 (isSeparator!567 (rule!1082 separatorToken!170)))))

(declare-fun b!186031 () Bool)

(declare-fun e!113790 () Bool)

(assert (=> b!186031 (= e!113790 e!113783)))

(declare-fun res!84743 () Bool)

(assert (=> b!186031 (=> res!84743 e!113783)))

(assert (=> b!186031 (= res!84743 (not lt!62331))))

(assert (=> b!186031 e!113784))

(declare-fun res!84749 () Bool)

(assert (=> b!186031 (=> (not res!84749) (not e!113784))))

(declare-fun lt!62317 () tuple2!3138)

(assert (=> b!186031 (= res!84749 (= (_1!1785 lt!62317) (h!8509 tokens!465)))))

(declare-fun lt!62340 () Option!412)

(assert (=> b!186031 (= lt!62317 (get!887 lt!62340))))

(assert (=> b!186031 (isDefined!263 lt!62340)))

(assert (=> b!186031 (= lt!62340 (maxPrefix!183 thiss!17480 rules!1920 lt!62330))))

(declare-fun b!186032 () Bool)

(declare-fun res!84753 () Bool)

(assert (=> b!186032 (=> res!84753 e!113788)))

(declare-fun isEmpty!1481 (List!3120) Bool)

(assert (=> b!186032 (= res!84753 (not (isEmpty!1481 lt!62333)))))

(declare-fun b!186033 () Bool)

(declare-fun e!113778 () Bool)

(declare-fun e!113804 () Bool)

(declare-fun tp!87521 () Bool)

(assert (=> b!186033 (= e!113778 (and (inv!21 (value!20475 separatorToken!170)) e!113804 tp!87521))))

(declare-fun b!186034 () Bool)

(declare-fun res!84730 () Bool)

(assert (=> b!186034 (=> res!84730 e!113799)))

(declare-fun isEmpty!1482 (BalanceConc!1922) Bool)

(declare-datatypes ((tuple2!3140 0))(
  ( (tuple2!3141 (_1!1786 BalanceConc!1922) (_2!1786 BalanceConc!1920)) )
))
(declare-fun lex!253 (LexerInterface!453 List!3121 BalanceConc!1920) tuple2!3140)

(declare-fun seqFromList!512 (List!3120) BalanceConc!1920)

(assert (=> b!186034 (= res!84730 (isEmpty!1482 (_1!1786 (lex!253 thiss!17480 rules!1920 (seqFromList!512 lt!62330)))))))

(declare-fun b!186035 () Bool)

(assert (=> b!186035 (= e!113789 e!113801)))

(declare-fun res!84736 () Bool)

(assert (=> b!186035 (=> (not res!84736) (not e!113801))))

(declare-fun lt!62327 () BalanceConc!1922)

(declare-fun rulesProduceEachTokenIndividually!245 (LexerInterface!453 List!3121 BalanceConc!1922) Bool)

(assert (=> b!186035 (= res!84736 (rulesProduceEachTokenIndividually!245 thiss!17480 rules!1920 lt!62327))))

(assert (=> b!186035 (= lt!62327 (seqFromList!511 tokens!465))))

(declare-fun b!186036 () Bool)

(declare-fun res!84738 () Bool)

(assert (=> b!186036 (=> (not res!84738) (not e!113801))))

(assert (=> b!186036 (= res!84738 ((_ is Cons!3112) tokens!465))))

(declare-fun b!186037 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!143 (LexerInterface!453 List!3121 List!3122) Bool)

(assert (=> b!186037 (= e!113788 (rulesProduceEachTokenIndividuallyList!143 thiss!17480 rules!1920 tokens!465))))

(assert (=> b!186038 (= e!113780 (and tp!87525 tp!87522))))

(declare-fun b!186039 () Bool)

(declare-fun e!113787 () Bool)

(declare-fun tp!87526 () Bool)

(assert (=> b!186039 (= e!113787 (and e!113785 tp!87526))))

(assert (=> b!186040 (= e!113799 e!113790)))

(declare-fun res!84740 () Bool)

(assert (=> b!186040 (=> res!84740 e!113790)))

(declare-datatypes ((tuple2!3142 0))(
  ( (tuple2!3143 (_1!1787 Token!878) (_2!1787 BalanceConc!1920)) )
))
(declare-datatypes ((Option!413 0))(
  ( (None!412) (Some!412 (v!13911 tuple2!3142)) )
))
(declare-fun isDefined!264 (Option!413) Bool)

(declare-fun maxPrefixZipperSequence!146 (LexerInterface!453 List!3121 BalanceConc!1920) Option!413)

(assert (=> b!186040 (= res!84740 (not (isDefined!264 (maxPrefixZipperSequence!146 thiss!17480 rules!1920 (seqFromList!512 (originalCharacters!610 (h!8509 tokens!465)))))))))

(declare-fun lt!62322 () Unit!2888)

(declare-fun forallContained!134 (List!3122 Int Token!878) Unit!2888)

(assert (=> b!186040 (= lt!62322 (forallContained!134 tokens!465 lambda!5602 (h!8509 tokens!465)))))

(assert (=> b!186040 (= lt!62330 (originalCharacters!610 (h!8509 tokens!465)))))

(declare-fun b!186041 () Bool)

(declare-fun res!84739 () Bool)

(assert (=> b!186041 (=> (not res!84739) (not e!113784))))

(assert (=> b!186041 (= res!84739 (isEmpty!1481 (_2!1785 lt!62317)))))

(declare-fun b!186042 () Bool)

(assert (=> b!186042 (= e!113801 e!113792)))

(declare-fun res!84748 () Bool)

(assert (=> b!186042 (=> (not res!84748) (not e!113792))))

(declare-fun lt!62334 () List!3120)

(assert (=> b!186042 (= res!84748 (= lt!62328 lt!62334))))

(assert (=> b!186042 (= lt!62334 (list!1145 (printWithSeparatorTokenWhenNeededRec!136 thiss!17480 rules!1920 lt!62327 separatorToken!170 0)))))

(assert (=> b!186042 (= lt!62328 (printWithSeparatorTokenWhenNeededList!146 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!186043 () Bool)

(declare-fun res!84744 () Bool)

(assert (=> b!186043 (=> (not res!84744) (not e!113792))))

(assert (=> b!186043 (= res!84744 (= (list!1145 (seqFromList!512 lt!62328)) lt!62334))))

(declare-fun res!84735 () Bool)

(assert (=> start!20162 (=> (not res!84735) (not e!113789))))

(assert (=> start!20162 (= res!84735 ((_ is Lexer!451) thiss!17480))))

(assert (=> start!20162 e!113789))

(assert (=> start!20162 true))

(assert (=> start!20162 e!113787))

(assert (=> start!20162 (and (inv!3942 separatorToken!170) e!113778)))

(assert (=> start!20162 e!113779))

(declare-fun tp!87517 () Bool)

(declare-fun b!186017 () Bool)

(assert (=> b!186017 (= e!113804 (and tp!87517 (inv!3938 (tag!745 (rule!1082 separatorToken!170))) (inv!3941 (transformation!567 (rule!1082 separatorToken!170))) e!113800))))

(assert (= (and start!20162 res!84735) b!186027))

(assert (= (and b!186027 res!84731) b!186011))

(assert (= (and b!186011 res!84741) b!186035))

(assert (= (and b!186035 res!84736) b!186014))

(assert (= (and b!186014 res!84732) b!186030))

(assert (= (and b!186030 res!84752) b!186010))

(assert (= (and b!186010 res!84750) b!186023))

(assert (= (and b!186023 res!84737) b!186036))

(assert (= (and b!186036 res!84738) b!186042))

(assert (= (and b!186042 res!84748) b!186043))

(assert (= (and b!186043 res!84744) b!186019))

(assert (= (and b!186019 (not res!84751)) b!186012))

(assert (= (and b!186012 res!84742) b!186029))

(assert (= (and b!186012 (not res!84746)) b!186009))

(assert (= (and b!186009 (not res!84729)) b!186015))

(assert (= (and b!186015 (not res!84734)) b!186034))

(assert (= (and b!186034 (not res!84730)) b!186040))

(assert (= (and b!186040 (not res!84740)) b!186031))

(assert (= (and b!186031 res!84749) b!186041))

(assert (= (and b!186041 res!84739) b!186013))

(assert (= (and b!186031 (not res!84743)) b!186026))

(assert (= (and b!186026 (not res!84733)) b!186025))

(assert (= (and b!186025 res!84747) b!186028))

(assert (= (and b!186026 (not res!84745)) b!186016))

(assert (= (and b!186016 (not res!84728)) b!186032))

(assert (= (and b!186032 (not res!84753)) b!186037))

(assert (= b!186022 b!186021))

(assert (= b!186039 b!186022))

(assert (= (and start!20162 ((_ is Cons!3111) rules!1920)) b!186039))

(assert (= b!186017 b!186020))

(assert (= b!186033 b!186017))

(assert (= start!20162 b!186033))

(assert (= b!186008 b!186038))

(assert (= b!186024 b!186008))

(assert (= b!186018 b!186024))

(assert (= (and start!20162 ((_ is Cons!3112) tokens!465)) b!186018))

(declare-fun m!190115 () Bool)

(assert (=> b!186031 m!190115))

(declare-fun m!190117 () Bool)

(assert (=> b!186031 m!190117))

(declare-fun m!190119 () Bool)

(assert (=> b!186031 m!190119))

(declare-fun m!190121 () Bool)

(assert (=> b!186024 m!190121))

(declare-fun m!190123 () Bool)

(assert (=> b!186033 m!190123))

(declare-fun m!190125 () Bool)

(assert (=> b!186040 m!190125))

(assert (=> b!186040 m!190125))

(declare-fun m!190127 () Bool)

(assert (=> b!186040 m!190127))

(assert (=> b!186040 m!190127))

(declare-fun m!190129 () Bool)

(assert (=> b!186040 m!190129))

(declare-fun m!190131 () Bool)

(assert (=> b!186040 m!190131))

(declare-fun m!190133 () Bool)

(assert (=> b!186035 m!190133))

(declare-fun m!190135 () Bool)

(assert (=> b!186035 m!190135))

(declare-fun m!190137 () Bool)

(assert (=> b!186043 m!190137))

(assert (=> b!186043 m!190137))

(declare-fun m!190139 () Bool)

(assert (=> b!186043 m!190139))

(declare-fun m!190141 () Bool)

(assert (=> b!186014 m!190141))

(declare-fun m!190143 () Bool)

(assert (=> b!186028 m!190143))

(declare-fun m!190145 () Bool)

(assert (=> b!186028 m!190145))

(declare-fun m!190147 () Bool)

(assert (=> b!186029 m!190147))

(declare-fun m!190149 () Bool)

(assert (=> b!186037 m!190149))

(declare-fun m!190151 () Bool)

(assert (=> b!186034 m!190151))

(assert (=> b!186034 m!190151))

(declare-fun m!190153 () Bool)

(assert (=> b!186034 m!190153))

(declare-fun m!190155 () Bool)

(assert (=> b!186034 m!190155))

(declare-fun m!190157 () Bool)

(assert (=> b!186010 m!190157))

(declare-fun m!190159 () Bool)

(assert (=> b!186009 m!190159))

(declare-fun m!190161 () Bool)

(assert (=> b!186009 m!190161))

(declare-fun m!190163 () Bool)

(assert (=> b!186009 m!190163))

(declare-fun m!190165 () Bool)

(assert (=> b!186009 m!190165))

(declare-fun m!190167 () Bool)

(assert (=> b!186009 m!190167))

(declare-fun m!190169 () Bool)

(assert (=> b!186032 m!190169))

(declare-fun m!190171 () Bool)

(assert (=> b!186011 m!190171))

(declare-fun m!190173 () Bool)

(assert (=> start!20162 m!190173))

(declare-fun m!190175 () Bool)

(assert (=> b!186019 m!190175))

(declare-fun m!190177 () Bool)

(assert (=> b!186019 m!190177))

(declare-fun m!190179 () Bool)

(assert (=> b!186019 m!190179))

(declare-fun m!190181 () Bool)

(assert (=> b!186019 m!190181))

(declare-fun m!190183 () Bool)

(assert (=> b!186019 m!190183))

(declare-fun m!190185 () Bool)

(assert (=> b!186019 m!190185))

(declare-fun m!190187 () Bool)

(assert (=> b!186019 m!190187))

(assert (=> b!186019 m!190181))

(declare-fun m!190189 () Bool)

(assert (=> b!186019 m!190189))

(declare-fun m!190191 () Bool)

(assert (=> b!186019 m!190191))

(assert (=> b!186019 m!190175))

(declare-fun m!190193 () Bool)

(assert (=> b!186019 m!190193))

(assert (=> b!186019 m!190189))

(declare-fun m!190195 () Bool)

(assert (=> b!186019 m!190195))

(assert (=> b!186019 m!190185))

(declare-fun m!190197 () Bool)

(assert (=> b!186019 m!190197))

(assert (=> b!186019 m!190183))

(declare-fun m!190199 () Bool)

(assert (=> b!186019 m!190199))

(declare-fun m!190201 () Bool)

(assert (=> b!186015 m!190201))

(declare-fun m!190203 () Bool)

(assert (=> b!186023 m!190203))

(declare-fun m!190205 () Bool)

(assert (=> b!186041 m!190205))

(declare-fun m!190207 () Bool)

(assert (=> b!186008 m!190207))

(declare-fun m!190209 () Bool)

(assert (=> b!186008 m!190209))

(declare-fun m!190211 () Bool)

(assert (=> b!186013 m!190211))

(declare-fun m!190213 () Bool)

(assert (=> b!186025 m!190213))

(declare-fun m!190215 () Bool)

(assert (=> b!186025 m!190215))

(declare-fun m!190217 () Bool)

(assert (=> b!186022 m!190217))

(declare-fun m!190219 () Bool)

(assert (=> b!186022 m!190219))

(declare-fun m!190221 () Bool)

(assert (=> b!186017 m!190221))

(declare-fun m!190223 () Bool)

(assert (=> b!186017 m!190223))

(declare-fun m!190225 () Bool)

(assert (=> b!186027 m!190225))

(declare-fun m!190227 () Bool)

(assert (=> b!186026 m!190227))

(declare-fun m!190229 () Bool)

(assert (=> b!186026 m!190229))

(declare-fun m!190231 () Bool)

(assert (=> b!186026 m!190231))

(assert (=> b!186026 m!190215))

(declare-fun m!190233 () Bool)

(assert (=> b!186026 m!190233))

(declare-fun m!190235 () Bool)

(assert (=> b!186026 m!190235))

(declare-fun m!190237 () Bool)

(assert (=> b!186026 m!190237))

(assert (=> b!186026 m!190215))

(declare-fun m!190239 () Bool)

(assert (=> b!186026 m!190239))

(declare-fun m!190241 () Bool)

(assert (=> b!186026 m!190241))

(declare-fun m!190243 () Bool)

(assert (=> b!186018 m!190243))

(declare-fun m!190245 () Bool)

(assert (=> b!186042 m!190245))

(assert (=> b!186042 m!190245))

(declare-fun m!190247 () Bool)

(assert (=> b!186042 m!190247))

(declare-fun m!190249 () Bool)

(assert (=> b!186042 m!190249))

(check-sat (not b!186015) (not b!186028) b_and!12809 (not b!186031) b_and!12813 (not b!186041) b_and!12811 (not b_next!7297) (not b!186032) (not b!186033) (not b!186026) (not start!20162) (not b_next!7299) (not b!186034) (not b!186014) (not b_next!7301) (not b_next!7305) (not b!186027) (not b!186009) (not b!186019) (not b!186037) (not b!186025) (not b_next!7303) (not b!186022) (not b!186010) b_and!12815 (not b!186023) b_and!12805 (not b!186039) (not b!186013) (not b!186008) (not b!186052) (not b!186018) (not b!186017) (not b!186040) (not b!186029) (not b_next!7307) (not b!186011) (not b!186024) (not b!186042) (not b!186043) b_and!12807 (not b!186035))
(check-sat (not b_next!7305) b_and!12809 b_and!12813 (not b_next!7303) b_and!12811 b_and!12815 b_and!12805 (not b_next!7297) (not b_next!7307) b_and!12807 (not b_next!7299) (not b_next!7301))
(get-model)

(declare-fun d!46857 () Bool)

(declare-fun e!113901 () Bool)

(assert (=> d!46857 e!113901))

(declare-fun c!35994 () Bool)

(assert (=> d!46857 (= c!35994 ((_ is EmptyExpr!791) (regex!567 (rule!1082 (h!8509 tokens!465)))))))

(declare-fun lt!62370 () Bool)

(declare-fun e!113900 () Bool)

(assert (=> d!46857 (= lt!62370 e!113900)))

(declare-fun c!35995 () Bool)

(assert (=> d!46857 (= c!35995 (isEmpty!1481 lt!62330))))

(declare-fun validRegex!197 (Regex!791) Bool)

(assert (=> d!46857 (validRegex!197 (regex!567 (rule!1082 (h!8509 tokens!465))))))

(assert (=> d!46857 (= (matchR!129 (regex!567 (rule!1082 (h!8509 tokens!465))) lt!62330) lt!62370)))

(declare-fun b!186194 () Bool)

(declare-fun e!113899 () Bool)

(declare-fun e!113902 () Bool)

(assert (=> b!186194 (= e!113899 e!113902)))

(declare-fun res!84848 () Bool)

(assert (=> b!186194 (=> res!84848 e!113902)))

(declare-fun call!8533 () Bool)

(assert (=> b!186194 (= res!84848 call!8533)))

(declare-fun b!186195 () Bool)

(declare-fun derivativeStep!90 (Regex!791 C!2504) Regex!791)

(declare-fun head!654 (List!3120) C!2504)

(declare-fun tail!377 (List!3120) List!3120)

(assert (=> b!186195 (= e!113900 (matchR!129 (derivativeStep!90 (regex!567 (rule!1082 (h!8509 tokens!465))) (head!654 lt!62330)) (tail!377 lt!62330)))))

(declare-fun b!186196 () Bool)

(declare-fun e!113898 () Bool)

(assert (=> b!186196 (= e!113898 e!113899)))

(declare-fun res!84852 () Bool)

(assert (=> b!186196 (=> (not res!84852) (not e!113899))))

(assert (=> b!186196 (= res!84852 (not lt!62370))))

(declare-fun bm!8528 () Bool)

(assert (=> bm!8528 (= call!8533 (isEmpty!1481 lt!62330))))

(declare-fun b!186197 () Bool)

(declare-fun nullable!124 (Regex!791) Bool)

(assert (=> b!186197 (= e!113900 (nullable!124 (regex!567 (rule!1082 (h!8509 tokens!465)))))))

(declare-fun b!186198 () Bool)

(assert (=> b!186198 (= e!113902 (not (= (head!654 lt!62330) (c!35966 (regex!567 (rule!1082 (h!8509 tokens!465)))))))))

(declare-fun b!186199 () Bool)

(declare-fun res!84849 () Bool)

(declare-fun e!113903 () Bool)

(assert (=> b!186199 (=> (not res!84849) (not e!113903))))

(assert (=> b!186199 (= res!84849 (not call!8533))))

(declare-fun b!186200 () Bool)

(declare-fun res!84851 () Bool)

(assert (=> b!186200 (=> res!84851 e!113898)))

(assert (=> b!186200 (= res!84851 e!113903)))

(declare-fun res!84847 () Bool)

(assert (=> b!186200 (=> (not res!84847) (not e!113903))))

(assert (=> b!186200 (= res!84847 lt!62370)))

(declare-fun b!186201 () Bool)

(declare-fun e!113897 () Bool)

(assert (=> b!186201 (= e!113897 (not lt!62370))))

(declare-fun b!186202 () Bool)

(declare-fun res!84845 () Bool)

(assert (=> b!186202 (=> res!84845 e!113902)))

(assert (=> b!186202 (= res!84845 (not (isEmpty!1481 (tail!377 lt!62330))))))

(declare-fun b!186203 () Bool)

(assert (=> b!186203 (= e!113903 (= (head!654 lt!62330) (c!35966 (regex!567 (rule!1082 (h!8509 tokens!465))))))))

(declare-fun b!186204 () Bool)

(assert (=> b!186204 (= e!113901 (= lt!62370 call!8533))))

(declare-fun b!186205 () Bool)

(declare-fun res!84850 () Bool)

(assert (=> b!186205 (=> res!84850 e!113898)))

(assert (=> b!186205 (= res!84850 (not ((_ is ElementMatch!791) (regex!567 (rule!1082 (h!8509 tokens!465))))))))

(assert (=> b!186205 (= e!113897 e!113898)))

(declare-fun b!186206 () Bool)

(declare-fun res!84846 () Bool)

(assert (=> b!186206 (=> (not res!84846) (not e!113903))))

(assert (=> b!186206 (= res!84846 (isEmpty!1481 (tail!377 lt!62330)))))

(declare-fun b!186207 () Bool)

(assert (=> b!186207 (= e!113901 e!113897)))

(declare-fun c!35996 () Bool)

(assert (=> b!186207 (= c!35996 ((_ is EmptyLang!791) (regex!567 (rule!1082 (h!8509 tokens!465)))))))

(assert (= (and d!46857 c!35995) b!186197))

(assert (= (and d!46857 (not c!35995)) b!186195))

(assert (= (and d!46857 c!35994) b!186204))

(assert (= (and d!46857 (not c!35994)) b!186207))

(assert (= (and b!186207 c!35996) b!186201))

(assert (= (and b!186207 (not c!35996)) b!186205))

(assert (= (and b!186205 (not res!84850)) b!186200))

(assert (= (and b!186200 res!84847) b!186199))

(assert (= (and b!186199 res!84849) b!186206))

(assert (= (and b!186206 res!84846) b!186203))

(assert (= (and b!186200 (not res!84851)) b!186196))

(assert (= (and b!186196 res!84852) b!186194))

(assert (= (and b!186194 (not res!84848)) b!186202))

(assert (= (and b!186202 (not res!84845)) b!186198))

(assert (= (or b!186204 b!186194 b!186199) bm!8528))

(declare-fun m!190339 () Bool)

(assert (=> b!186202 m!190339))

(assert (=> b!186202 m!190339))

(declare-fun m!190341 () Bool)

(assert (=> b!186202 m!190341))

(declare-fun m!190343 () Bool)

(assert (=> bm!8528 m!190343))

(declare-fun m!190345 () Bool)

(assert (=> b!186198 m!190345))

(assert (=> b!186195 m!190345))

(assert (=> b!186195 m!190345))

(declare-fun m!190347 () Bool)

(assert (=> b!186195 m!190347))

(assert (=> b!186195 m!190339))

(assert (=> b!186195 m!190347))

(assert (=> b!186195 m!190339))

(declare-fun m!190349 () Bool)

(assert (=> b!186195 m!190349))

(assert (=> d!46857 m!190343))

(declare-fun m!190351 () Bool)

(assert (=> d!46857 m!190351))

(declare-fun m!190353 () Bool)

(assert (=> b!186197 m!190353))

(assert (=> b!186206 m!190339))

(assert (=> b!186206 m!190339))

(assert (=> b!186206 m!190341))

(assert (=> b!186203 m!190345))

(assert (=> b!186013 d!46857))

(declare-fun d!46859 () Bool)

(declare-fun lt!62380 () Bool)

(declare-fun e!113919 () Bool)

(assert (=> d!46859 (= lt!62380 e!113919)))

(declare-fun res!84867 () Bool)

(assert (=> d!46859 (=> (not res!84867) (not e!113919))))

(declare-fun list!1148 (BalanceConc!1922) List!3122)

(assert (=> d!46859 (= res!84867 (= (list!1148 (_1!1786 (lex!253 thiss!17480 rules!1920 (print!184 thiss!17480 (singletonSeq!119 separatorToken!170))))) (list!1148 (singletonSeq!119 separatorToken!170))))))

(declare-fun e!113918 () Bool)

(assert (=> d!46859 (= lt!62380 e!113918)))

(declare-fun res!84866 () Bool)

(assert (=> d!46859 (=> (not res!84866) (not e!113918))))

(declare-fun lt!62381 () tuple2!3140)

(declare-fun size!2518 (BalanceConc!1922) Int)

(assert (=> d!46859 (= res!84866 (= (size!2518 (_1!1786 lt!62381)) 1))))

(assert (=> d!46859 (= lt!62381 (lex!253 thiss!17480 rules!1920 (print!184 thiss!17480 (singletonSeq!119 separatorToken!170))))))

(assert (=> d!46859 (not (isEmpty!1480 rules!1920))))

(assert (=> d!46859 (= (rulesProduceIndividualToken!202 thiss!17480 rules!1920 separatorToken!170) lt!62380)))

(declare-fun b!186224 () Bool)

(declare-fun res!84868 () Bool)

(assert (=> b!186224 (=> (not res!84868) (not e!113918))))

(declare-fun apply!474 (BalanceConc!1922 Int) Token!878)

(assert (=> b!186224 (= res!84868 (= (apply!474 (_1!1786 lt!62381) 0) separatorToken!170))))

(declare-fun b!186225 () Bool)

(declare-fun isEmpty!1485 (BalanceConc!1920) Bool)

(assert (=> b!186225 (= e!113918 (isEmpty!1485 (_2!1786 lt!62381)))))

(declare-fun b!186226 () Bool)

(assert (=> b!186226 (= e!113919 (isEmpty!1485 (_2!1786 (lex!253 thiss!17480 rules!1920 (print!184 thiss!17480 (singletonSeq!119 separatorToken!170))))))))

(assert (= (and d!46859 res!84866) b!186224))

(assert (= (and b!186224 res!84868) b!186225))

(assert (= (and d!46859 res!84867) b!186226))

(declare-fun m!190365 () Bool)

(assert (=> d!46859 m!190365))

(declare-fun m!190367 () Bool)

(assert (=> d!46859 m!190367))

(declare-fun m!190369 () Bool)

(assert (=> d!46859 m!190369))

(declare-fun m!190371 () Bool)

(assert (=> d!46859 m!190371))

(declare-fun m!190373 () Bool)

(assert (=> d!46859 m!190373))

(assert (=> d!46859 m!190371))

(assert (=> d!46859 m!190365))

(assert (=> d!46859 m!190225))

(declare-fun m!190375 () Bool)

(assert (=> d!46859 m!190375))

(assert (=> d!46859 m!190371))

(declare-fun m!190377 () Bool)

(assert (=> b!186224 m!190377))

(declare-fun m!190379 () Bool)

(assert (=> b!186225 m!190379))

(assert (=> b!186226 m!190371))

(assert (=> b!186226 m!190371))

(assert (=> b!186226 m!190365))

(assert (=> b!186226 m!190365))

(assert (=> b!186226 m!190367))

(declare-fun m!190381 () Bool)

(assert (=> b!186226 m!190381))

(assert (=> b!186014 d!46859))

(declare-fun bs!18495 () Bool)

(declare-fun d!46869 () Bool)

(assert (= bs!18495 (and d!46869 b!186010)))

(declare-fun lambda!5612 () Int)

(assert (=> bs!18495 (not (= lambda!5612 lambda!5601))))

(declare-fun bs!18496 () Bool)

(assert (= bs!18496 (and d!46869 b!186040)))

(assert (=> bs!18496 (= lambda!5612 lambda!5602)))

(declare-fun b!186294 () Bool)

(declare-fun e!113954 () Bool)

(assert (=> b!186294 (= e!113954 true)))

(declare-fun b!186293 () Bool)

(declare-fun e!113953 () Bool)

(assert (=> b!186293 (= e!113953 e!113954)))

(declare-fun b!186292 () Bool)

(declare-fun e!113952 () Bool)

(assert (=> b!186292 (= e!113952 e!113953)))

(assert (=> d!46869 e!113952))

(assert (= b!186293 b!186294))

(assert (= b!186292 b!186293))

(assert (= (and d!46869 ((_ is Cons!3111) rules!1920)) b!186292))

(assert (=> b!186294 (< (dynLambda!1283 order!1877 (toValue!1238 (transformation!567 (h!8508 rules!1920)))) (dynLambda!1284 order!1879 lambda!5612))))

(assert (=> b!186294 (< (dynLambda!1285 order!1881 (toChars!1097 (transformation!567 (h!8508 rules!1920)))) (dynLambda!1284 order!1879 lambda!5612))))

(assert (=> d!46869 true))

(declare-fun e!113951 () Bool)

(assert (=> d!46869 e!113951))

(declare-fun res!84919 () Bool)

(assert (=> d!46869 (=> (not res!84919) (not e!113951))))

(declare-fun lt!62417 () Bool)

(assert (=> d!46869 (= res!84919 (= lt!62417 (forall!645 (list!1148 lt!62327) lambda!5612)))))

(declare-fun forall!647 (BalanceConc!1922 Int) Bool)

(assert (=> d!46869 (= lt!62417 (forall!647 lt!62327 lambda!5612))))

(assert (=> d!46869 (not (isEmpty!1480 rules!1920))))

(assert (=> d!46869 (= (rulesProduceEachTokenIndividually!245 thiss!17480 rules!1920 lt!62327) lt!62417)))

(declare-fun b!186291 () Bool)

(assert (=> b!186291 (= e!113951 (= lt!62417 (rulesProduceEachTokenIndividuallyList!143 thiss!17480 rules!1920 (list!1148 lt!62327))))))

(assert (= (and d!46869 res!84919) b!186291))

(declare-fun m!190493 () Bool)

(assert (=> d!46869 m!190493))

(assert (=> d!46869 m!190493))

(declare-fun m!190495 () Bool)

(assert (=> d!46869 m!190495))

(declare-fun m!190497 () Bool)

(assert (=> d!46869 m!190497))

(assert (=> d!46869 m!190225))

(assert (=> b!186291 m!190493))

(assert (=> b!186291 m!190493))

(declare-fun m!190499 () Bool)

(assert (=> b!186291 m!190499))

(assert (=> b!186035 d!46869))

(declare-fun d!46893 () Bool)

(declare-fun fromListB!200 (List!3122) BalanceConc!1922)

(assert (=> d!46893 (= (seqFromList!511 tokens!465) (fromListB!200 tokens!465))))

(declare-fun bs!18497 () Bool)

(assert (= bs!18497 d!46893))

(declare-fun m!190501 () Bool)

(assert (=> bs!18497 m!190501))

(assert (=> b!186035 d!46893))

(declare-fun b!186305 () Bool)

(declare-fun e!113962 () Bool)

(declare-fun inv!17 (TokenValue!589) Bool)

(assert (=> b!186305 (= e!113962 (inv!17 (value!20475 separatorToken!170)))))

(declare-fun d!46895 () Bool)

(declare-fun c!36009 () Bool)

(assert (=> d!46895 (= c!36009 ((_ is IntegerValue!1767) (value!20475 separatorToken!170)))))

(declare-fun e!113961 () Bool)

(assert (=> d!46895 (= (inv!21 (value!20475 separatorToken!170)) e!113961)))

(declare-fun b!186306 () Bool)

(declare-fun res!84922 () Bool)

(declare-fun e!113963 () Bool)

(assert (=> b!186306 (=> res!84922 e!113963)))

(assert (=> b!186306 (= res!84922 (not ((_ is IntegerValue!1769) (value!20475 separatorToken!170))))))

(assert (=> b!186306 (= e!113962 e!113963)))

(declare-fun b!186307 () Bool)

(declare-fun inv!16 (TokenValue!589) Bool)

(assert (=> b!186307 (= e!113961 (inv!16 (value!20475 separatorToken!170)))))

(declare-fun b!186308 () Bool)

(declare-fun inv!15 (TokenValue!589) Bool)

(assert (=> b!186308 (= e!113963 (inv!15 (value!20475 separatorToken!170)))))

(declare-fun b!186309 () Bool)

(assert (=> b!186309 (= e!113961 e!113962)))

(declare-fun c!36008 () Bool)

(assert (=> b!186309 (= c!36008 ((_ is IntegerValue!1768) (value!20475 separatorToken!170)))))

(assert (= (and d!46895 c!36009) b!186307))

(assert (= (and d!46895 (not c!36009)) b!186309))

(assert (= (and b!186309 c!36008) b!186305))

(assert (= (and b!186309 (not c!36008)) b!186306))

(assert (= (and b!186306 (not res!84922)) b!186308))

(declare-fun m!190503 () Bool)

(assert (=> b!186305 m!190503))

(declare-fun m!190505 () Bool)

(assert (=> b!186307 m!190505))

(declare-fun m!190507 () Bool)

(assert (=> b!186308 m!190507))

(assert (=> b!186033 d!46895))

(declare-fun lt!62420 () Bool)

(declare-fun d!46897 () Bool)

(assert (=> d!46897 (= lt!62420 (isEmpty!1479 (list!1148 (_1!1786 (lex!253 thiss!17480 rules!1920 (seqFromList!512 lt!62330))))))))

(declare-fun isEmpty!1487 (Conc!957) Bool)

(assert (=> d!46897 (= lt!62420 (isEmpty!1487 (c!35967 (_1!1786 (lex!253 thiss!17480 rules!1920 (seqFromList!512 lt!62330))))))))

(assert (=> d!46897 (= (isEmpty!1482 (_1!1786 (lex!253 thiss!17480 rules!1920 (seqFromList!512 lt!62330)))) lt!62420)))

(declare-fun bs!18498 () Bool)

(assert (= bs!18498 d!46897))

(declare-fun m!190509 () Bool)

(assert (=> bs!18498 m!190509))

(assert (=> bs!18498 m!190509))

(declare-fun m!190511 () Bool)

(assert (=> bs!18498 m!190511))

(declare-fun m!190513 () Bool)

(assert (=> bs!18498 m!190513))

(assert (=> b!186034 d!46897))

(declare-fun b!186324 () Bool)

(declare-fun res!84929 () Bool)

(declare-fun e!113973 () Bool)

(assert (=> b!186324 (=> (not res!84929) (not e!113973))))

(declare-fun lt!62429 () tuple2!3140)

(declare-datatypes ((tuple2!3144 0))(
  ( (tuple2!3145 (_1!1788 List!3122) (_2!1788 List!3120)) )
))
(declare-fun lexList!130 (LexerInterface!453 List!3121 List!3120) tuple2!3144)

(assert (=> b!186324 (= res!84929 (= (list!1148 (_1!1786 lt!62429)) (_1!1788 (lexList!130 thiss!17480 rules!1920 (list!1145 (seqFromList!512 lt!62330))))))))

(declare-fun b!186325 () Bool)

(declare-fun e!113972 () Bool)

(declare-fun e!113974 () Bool)

(assert (=> b!186325 (= e!113972 e!113974)))

(declare-fun res!84930 () Bool)

(declare-fun size!2519 (BalanceConc!1920) Int)

(assert (=> b!186325 (= res!84930 (< (size!2519 (_2!1786 lt!62429)) (size!2519 (seqFromList!512 lt!62330))))))

(assert (=> b!186325 (=> (not res!84930) (not e!113974))))

(declare-fun d!46899 () Bool)

(assert (=> d!46899 e!113973))

(declare-fun res!84931 () Bool)

(assert (=> d!46899 (=> (not res!84931) (not e!113973))))

(assert (=> d!46899 (= res!84931 e!113972)))

(declare-fun c!36014 () Bool)

(assert (=> d!46899 (= c!36014 (> (size!2518 (_1!1786 lt!62429)) 0))))

(declare-fun lexTailRecV2!117 (LexerInterface!453 List!3121 BalanceConc!1920 BalanceConc!1920 BalanceConc!1920 BalanceConc!1922) tuple2!3140)

(assert (=> d!46899 (= lt!62429 (lexTailRecV2!117 thiss!17480 rules!1920 (seqFromList!512 lt!62330) (BalanceConc!1921 Empty!956) (seqFromList!512 lt!62330) (BalanceConc!1923 Empty!957)))))

(assert (=> d!46899 (= (lex!253 thiss!17480 rules!1920 (seqFromList!512 lt!62330)) lt!62429)))

(declare-fun b!186326 () Bool)

(assert (=> b!186326 (= e!113974 (not (isEmpty!1482 (_1!1786 lt!62429))))))

(declare-fun b!186327 () Bool)

(assert (=> b!186327 (= e!113972 (= (_2!1786 lt!62429) (seqFromList!512 lt!62330)))))

(declare-fun b!186328 () Bool)

(assert (=> b!186328 (= e!113973 (= (list!1145 (_2!1786 lt!62429)) (_2!1788 (lexList!130 thiss!17480 rules!1920 (list!1145 (seqFromList!512 lt!62330))))))))

(assert (= (and d!46899 c!36014) b!186325))

(assert (= (and d!46899 (not c!36014)) b!186327))

(assert (= (and b!186325 res!84930) b!186326))

(assert (= (and d!46899 res!84931) b!186324))

(assert (= (and b!186324 res!84929) b!186328))

(declare-fun m!190515 () Bool)

(assert (=> d!46899 m!190515))

(assert (=> d!46899 m!190151))

(assert (=> d!46899 m!190151))

(declare-fun m!190517 () Bool)

(assert (=> d!46899 m!190517))

(declare-fun m!190519 () Bool)

(assert (=> b!186325 m!190519))

(assert (=> b!186325 m!190151))

(declare-fun m!190521 () Bool)

(assert (=> b!186325 m!190521))

(declare-fun m!190523 () Bool)

(assert (=> b!186328 m!190523))

(assert (=> b!186328 m!190151))

(declare-fun m!190525 () Bool)

(assert (=> b!186328 m!190525))

(assert (=> b!186328 m!190525))

(declare-fun m!190527 () Bool)

(assert (=> b!186328 m!190527))

(declare-fun m!190529 () Bool)

(assert (=> b!186324 m!190529))

(assert (=> b!186324 m!190151))

(assert (=> b!186324 m!190525))

(assert (=> b!186324 m!190525))

(assert (=> b!186324 m!190527))

(declare-fun m!190531 () Bool)

(assert (=> b!186326 m!190531))

(assert (=> b!186034 d!46899))

(declare-fun d!46901 () Bool)

(declare-fun fromListB!201 (List!3120) BalanceConc!1920)

(assert (=> d!46901 (= (seqFromList!512 lt!62330) (fromListB!201 lt!62330))))

(declare-fun bs!18499 () Bool)

(assert (= bs!18499 d!46901))

(declare-fun m!190533 () Bool)

(assert (=> bs!18499 m!190533))

(assert (=> b!186034 d!46901))

(declare-fun d!46903 () Bool)

(assert (=> d!46903 (= (isEmpty!1481 lt!62333) ((_ is Nil!3110) lt!62333))))

(assert (=> b!186032 d!46903))

(declare-fun d!46905 () Bool)

(declare-fun res!84934 () Bool)

(declare-fun e!113983 () Bool)

(assert (=> d!46905 (=> (not res!84934) (not e!113983))))

(declare-fun rulesValid!163 (LexerInterface!453 List!3121) Bool)

(assert (=> d!46905 (= res!84934 (rulesValid!163 thiss!17480 rules!1920))))

(assert (=> d!46905 (= (rulesInvariant!419 thiss!17480 rules!1920) e!113983)))

(declare-fun b!186343 () Bool)

(declare-datatypes ((List!3124 0))(
  ( (Nil!3114) (Cons!3114 (h!8511 String!4025) (t!28706 List!3124)) )
))
(declare-fun noDuplicateTag!163 (LexerInterface!453 List!3121 List!3124) Bool)

(assert (=> b!186343 (= e!113983 (noDuplicateTag!163 thiss!17480 rules!1920 Nil!3114))))

(assert (= (and d!46905 res!84934) b!186343))

(declare-fun m!190535 () Bool)

(assert (=> d!46905 m!190535))

(declare-fun m!190537 () Bool)

(assert (=> b!186343 m!190537))

(assert (=> b!186011 d!46905))

(declare-fun d!46907 () Bool)

(declare-fun list!1149 (Conc!956) List!3120)

(assert (=> d!46907 (= (list!1145 lt!62319) (list!1149 (c!35965 lt!62319)))))

(declare-fun bs!18500 () Bool)

(assert (= bs!18500 d!46907))

(declare-fun m!190539 () Bool)

(assert (=> bs!18500 m!190539))

(assert (=> b!186009 d!46907))

(declare-fun d!46909 () Bool)

(declare-fun lt!62445 () BalanceConc!1920)

(assert (=> d!46909 (= (list!1145 lt!62445) (printList!137 thiss!17480 (list!1148 lt!62338)))))

(assert (=> d!46909 (= lt!62445 (printTailRec!147 thiss!17480 lt!62338 0 (BalanceConc!1921 Empty!956)))))

(assert (=> d!46909 (= (print!184 thiss!17480 lt!62338) lt!62445)))

(declare-fun bs!18504 () Bool)

(assert (= bs!18504 d!46909))

(declare-fun m!190579 () Bool)

(assert (=> bs!18504 m!190579))

(declare-fun m!190581 () Bool)

(assert (=> bs!18504 m!190581))

(assert (=> bs!18504 m!190581))

(declare-fun m!190583 () Bool)

(assert (=> bs!18504 m!190583))

(assert (=> bs!18504 m!190167))

(assert (=> b!186009 d!46909))

(declare-fun d!46915 () Bool)

(declare-fun lt!62466 () BalanceConc!1920)

(declare-fun printListTailRec!73 (LexerInterface!453 List!3122 List!3120) List!3120)

(declare-fun dropList!106 (BalanceConc!1922 Int) List!3122)

(assert (=> d!46915 (= (list!1145 lt!62466) (printListTailRec!73 thiss!17480 (dropList!106 lt!62338 0) (list!1145 (BalanceConc!1921 Empty!956))))))

(declare-fun e!113998 () BalanceConc!1920)

(assert (=> d!46915 (= lt!62466 e!113998)))

(declare-fun c!36028 () Bool)

(assert (=> d!46915 (= c!36028 (>= 0 (size!2518 lt!62338)))))

(declare-fun e!113997 () Bool)

(assert (=> d!46915 e!113997))

(declare-fun res!84939 () Bool)

(assert (=> d!46915 (=> (not res!84939) (not e!113997))))

(assert (=> d!46915 (= res!84939 (>= 0 0))))

(assert (=> d!46915 (= (printTailRec!147 thiss!17480 lt!62338 0 (BalanceConc!1921 Empty!956)) lt!62466)))

(declare-fun b!186365 () Bool)

(assert (=> b!186365 (= e!113997 (<= 0 (size!2518 lt!62338)))))

(declare-fun b!186366 () Bool)

(assert (=> b!186366 (= e!113998 (BalanceConc!1921 Empty!956))))

(declare-fun b!186367 () Bool)

(declare-fun ++!740 (BalanceConc!1920 BalanceConc!1920) BalanceConc!1920)

(assert (=> b!186367 (= e!113998 (printTailRec!147 thiss!17480 lt!62338 (+ 0 1) (++!740 (BalanceConc!1921 Empty!956) (charsOf!222 (apply!474 lt!62338 0)))))))

(declare-fun lt!62462 () List!3122)

(assert (=> b!186367 (= lt!62462 (list!1148 lt!62338))))

(declare-fun lt!62461 () Unit!2888)

(declare-fun lemmaDropApply!146 (List!3122 Int) Unit!2888)

(assert (=> b!186367 (= lt!62461 (lemmaDropApply!146 lt!62462 0))))

(declare-fun drop!159 (List!3122 Int) List!3122)

(declare-fun apply!475 (List!3122 Int) Token!878)

(assert (=> b!186367 (= (head!652 (drop!159 lt!62462 0)) (apply!475 lt!62462 0))))

(declare-fun lt!62465 () Unit!2888)

(assert (=> b!186367 (= lt!62465 lt!62461)))

(declare-fun lt!62463 () List!3122)

(assert (=> b!186367 (= lt!62463 (list!1148 lt!62338))))

(declare-fun lt!62464 () Unit!2888)

(declare-fun lemmaDropTail!138 (List!3122 Int) Unit!2888)

(assert (=> b!186367 (= lt!62464 (lemmaDropTail!138 lt!62463 0))))

(declare-fun tail!378 (List!3122) List!3122)

(assert (=> b!186367 (= (tail!378 (drop!159 lt!62463 0)) (drop!159 lt!62463 (+ 0 1)))))

(declare-fun lt!62460 () Unit!2888)

(assert (=> b!186367 (= lt!62460 lt!62464)))

(assert (= (and d!46915 res!84939) b!186365))

(assert (= (and d!46915 c!36028) b!186366))

(assert (= (and d!46915 (not c!36028)) b!186367))

(declare-fun m!190585 () Bool)

(assert (=> d!46915 m!190585))

(declare-fun m!190587 () Bool)

(assert (=> d!46915 m!190587))

(assert (=> d!46915 m!190585))

(declare-fun m!190589 () Bool)

(assert (=> d!46915 m!190589))

(declare-fun m!190591 () Bool)

(assert (=> d!46915 m!190591))

(assert (=> d!46915 m!190589))

(declare-fun m!190593 () Bool)

(assert (=> d!46915 m!190593))

(assert (=> b!186365 m!190593))

(declare-fun m!190595 () Bool)

(assert (=> b!186367 m!190595))

(declare-fun m!190597 () Bool)

(assert (=> b!186367 m!190597))

(declare-fun m!190599 () Bool)

(assert (=> b!186367 m!190599))

(assert (=> b!186367 m!190595))

(declare-fun m!190601 () Bool)

(assert (=> b!186367 m!190601))

(assert (=> b!186367 m!190597))

(declare-fun m!190603 () Bool)

(assert (=> b!186367 m!190603))

(assert (=> b!186367 m!190603))

(declare-fun m!190605 () Bool)

(assert (=> b!186367 m!190605))

(assert (=> b!186367 m!190605))

(declare-fun m!190607 () Bool)

(assert (=> b!186367 m!190607))

(assert (=> b!186367 m!190581))

(declare-fun m!190609 () Bool)

(assert (=> b!186367 m!190609))

(declare-fun m!190611 () Bool)

(assert (=> b!186367 m!190611))

(declare-fun m!190613 () Bool)

(assert (=> b!186367 m!190613))

(declare-fun m!190615 () Bool)

(assert (=> b!186367 m!190615))

(assert (=> b!186367 m!190607))

(declare-fun m!190617 () Bool)

(assert (=> b!186367 m!190617))

(assert (=> b!186009 d!46915))

(declare-fun d!46917 () Bool)

(declare-fun e!114001 () Bool)

(assert (=> d!46917 e!114001))

(declare-fun res!84942 () Bool)

(assert (=> d!46917 (=> (not res!84942) (not e!114001))))

(declare-fun lt!62469 () BalanceConc!1922)

(assert (=> d!46917 (= res!84942 (= (list!1148 lt!62469) (Cons!3112 (h!8509 tokens!465) Nil!3112)))))

(declare-fun singleton!54 (Token!878) BalanceConc!1922)

(assert (=> d!46917 (= lt!62469 (singleton!54 (h!8509 tokens!465)))))

(assert (=> d!46917 (= (singletonSeq!119 (h!8509 tokens!465)) lt!62469)))

(declare-fun b!186370 () Bool)

(declare-fun isBalanced!259 (Conc!957) Bool)

(assert (=> b!186370 (= e!114001 (isBalanced!259 (c!35967 lt!62469)))))

(assert (= (and d!46917 res!84942) b!186370))

(declare-fun m!190619 () Bool)

(assert (=> d!46917 m!190619))

(declare-fun m!190621 () Bool)

(assert (=> d!46917 m!190621))

(declare-fun m!190623 () Bool)

(assert (=> b!186370 m!190623))

(assert (=> b!186009 d!46917))

(declare-fun d!46919 () Bool)

(declare-fun c!36031 () Bool)

(assert (=> d!46919 (= c!36031 ((_ is Cons!3112) lt!62337))))

(declare-fun e!114004 () List!3120)

(assert (=> d!46919 (= (printList!137 thiss!17480 lt!62337) e!114004)))

(declare-fun b!186375 () Bool)

(assert (=> b!186375 (= e!114004 (++!738 (list!1145 (charsOf!222 (h!8509 lt!62337))) (printList!137 thiss!17480 (t!28636 lt!62337))))))

(declare-fun b!186376 () Bool)

(assert (=> b!186376 (= e!114004 Nil!3110)))

(assert (= (and d!46919 c!36031) b!186375))

(assert (= (and d!46919 (not c!36031)) b!186376))

(declare-fun m!190625 () Bool)

(assert (=> b!186375 m!190625))

(assert (=> b!186375 m!190625))

(declare-fun m!190627 () Bool)

(assert (=> b!186375 m!190627))

(declare-fun m!190629 () Bool)

(assert (=> b!186375 m!190629))

(assert (=> b!186375 m!190627))

(assert (=> b!186375 m!190629))

(declare-fun m!190631 () Bool)

(assert (=> b!186375 m!190631))

(assert (=> b!186009 d!46919))

(declare-fun d!46921 () Bool)

(declare-fun res!84947 () Bool)

(declare-fun e!114009 () Bool)

(assert (=> d!46921 (=> res!84947 e!114009)))

(assert (=> d!46921 (= res!84947 ((_ is Nil!3112) tokens!465))))

(assert (=> d!46921 (= (forall!645 tokens!465 lambda!5601) e!114009)))

(declare-fun b!186381 () Bool)

(declare-fun e!114010 () Bool)

(assert (=> b!186381 (= e!114009 e!114010)))

(declare-fun res!84948 () Bool)

(assert (=> b!186381 (=> (not res!84948) (not e!114010))))

(declare-fun dynLambda!1288 (Int Token!878) Bool)

(assert (=> b!186381 (= res!84948 (dynLambda!1288 lambda!5601 (h!8509 tokens!465)))))

(declare-fun b!186382 () Bool)

(assert (=> b!186382 (= e!114010 (forall!645 (t!28636 tokens!465) lambda!5601))))

(assert (= (and d!46921 (not res!84947)) b!186381))

(assert (= (and b!186381 res!84948) b!186382))

(declare-fun b_lambda!4515 () Bool)

(assert (=> (not b_lambda!4515) (not b!186381)))

(declare-fun m!190633 () Bool)

(assert (=> b!186381 m!190633))

(declare-fun m!190635 () Bool)

(assert (=> b!186382 m!190635))

(assert (=> b!186010 d!46921))

(declare-fun d!46923 () Bool)

(assert (=> d!46923 (= (get!887 lt!62340) (v!13910 lt!62340))))

(assert (=> b!186031 d!46923))

(declare-fun d!46925 () Bool)

(declare-fun isEmpty!1489 (Option!412) Bool)

(assert (=> d!46925 (= (isDefined!263 lt!62340) (not (isEmpty!1489 lt!62340)))))

(declare-fun bs!18505 () Bool)

(assert (= bs!18505 d!46925))

(declare-fun m!190637 () Bool)

(assert (=> bs!18505 m!190637))

(assert (=> b!186031 d!46925))

(declare-fun b!186401 () Bool)

(declare-fun e!114019 () Bool)

(declare-fun lt!62481 () Option!412)

(declare-fun contains!505 (List!3121 Rule!934) Bool)

(assert (=> b!186401 (= e!114019 (contains!505 rules!1920 (rule!1082 (_1!1785 (get!887 lt!62481)))))))

(declare-fun b!186402 () Bool)

(declare-fun res!84969 () Bool)

(assert (=> b!186402 (=> (not res!84969) (not e!114019))))

(assert (=> b!186402 (= res!84969 (= (++!738 (list!1145 (charsOf!222 (_1!1785 (get!887 lt!62481)))) (_2!1785 (get!887 lt!62481))) lt!62330))))

(declare-fun bm!8550 () Bool)

(declare-fun call!8555 () Option!412)

(declare-fun maxPrefixOneRule!89 (LexerInterface!453 Rule!934 List!3120) Option!412)

(assert (=> bm!8550 (= call!8555 (maxPrefixOneRule!89 thiss!17480 (h!8508 rules!1920) lt!62330))))

(declare-fun b!186403 () Bool)

(declare-fun res!84964 () Bool)

(assert (=> b!186403 (=> (not res!84964) (not e!114019))))

(assert (=> b!186403 (= res!84964 (matchR!129 (regex!567 (rule!1082 (_1!1785 (get!887 lt!62481)))) (list!1145 (charsOf!222 (_1!1785 (get!887 lt!62481))))))))

(declare-fun b!186404 () Bool)

(declare-fun res!84963 () Bool)

(assert (=> b!186404 (=> (not res!84963) (not e!114019))))

(declare-fun size!2521 (List!3120) Int)

(assert (=> b!186404 (= res!84963 (< (size!2521 (_2!1785 (get!887 lt!62481))) (size!2521 lt!62330)))))

(declare-fun b!186405 () Bool)

(declare-fun e!114018 () Option!412)

(declare-fun lt!62480 () Option!412)

(declare-fun lt!62483 () Option!412)

(assert (=> b!186405 (= e!114018 (ite (and ((_ is None!411) lt!62480) ((_ is None!411) lt!62483)) None!411 (ite ((_ is None!411) lt!62483) lt!62480 (ite ((_ is None!411) lt!62480) lt!62483 (ite (>= (size!2515 (_1!1785 (v!13910 lt!62480))) (size!2515 (_1!1785 (v!13910 lt!62483)))) lt!62480 lt!62483)))))))

(assert (=> b!186405 (= lt!62480 call!8555)))

(assert (=> b!186405 (= lt!62483 (maxPrefix!183 thiss!17480 (t!28635 rules!1920) lt!62330))))

(declare-fun b!186406 () Bool)

(declare-fun e!114017 () Bool)

(assert (=> b!186406 (= e!114017 e!114019)))

(declare-fun res!84965 () Bool)

(assert (=> b!186406 (=> (not res!84965) (not e!114019))))

(assert (=> b!186406 (= res!84965 (isDefined!263 lt!62481))))

(declare-fun b!186407 () Bool)

(declare-fun res!84966 () Bool)

(assert (=> b!186407 (=> (not res!84966) (not e!114019))))

(declare-fun apply!476 (TokenValueInjection!950 BalanceConc!1920) TokenValue!589)

(assert (=> b!186407 (= res!84966 (= (value!20475 (_1!1785 (get!887 lt!62481))) (apply!476 (transformation!567 (rule!1082 (_1!1785 (get!887 lt!62481)))) (seqFromList!512 (originalCharacters!610 (_1!1785 (get!887 lt!62481)))))))))

(declare-fun d!46927 () Bool)

(assert (=> d!46927 e!114017))

(declare-fun res!84967 () Bool)

(assert (=> d!46927 (=> res!84967 e!114017)))

(assert (=> d!46927 (= res!84967 (isEmpty!1489 lt!62481))))

(assert (=> d!46927 (= lt!62481 e!114018)))

(declare-fun c!36034 () Bool)

(assert (=> d!46927 (= c!36034 (and ((_ is Cons!3111) rules!1920) ((_ is Nil!3111) (t!28635 rules!1920))))))

(declare-fun lt!62484 () Unit!2888)

(declare-fun lt!62482 () Unit!2888)

(assert (=> d!46927 (= lt!62484 lt!62482)))

(assert (=> d!46927 (isPrefix!263 lt!62330 lt!62330)))

(declare-fun lemmaIsPrefixRefl!155 (List!3120 List!3120) Unit!2888)

(assert (=> d!46927 (= lt!62482 (lemmaIsPrefixRefl!155 lt!62330 lt!62330))))

(declare-fun rulesValidInductive!144 (LexerInterface!453 List!3121) Bool)

(assert (=> d!46927 (rulesValidInductive!144 thiss!17480 rules!1920)))

(assert (=> d!46927 (= (maxPrefix!183 thiss!17480 rules!1920 lt!62330) lt!62481)))

(declare-fun b!186408 () Bool)

(assert (=> b!186408 (= e!114018 call!8555)))

(declare-fun b!186409 () Bool)

(declare-fun res!84968 () Bool)

(assert (=> b!186409 (=> (not res!84968) (not e!114019))))

(assert (=> b!186409 (= res!84968 (= (list!1145 (charsOf!222 (_1!1785 (get!887 lt!62481)))) (originalCharacters!610 (_1!1785 (get!887 lt!62481)))))))

(assert (= (and d!46927 c!36034) b!186408))

(assert (= (and d!46927 (not c!36034)) b!186405))

(assert (= (or b!186408 b!186405) bm!8550))

(assert (= (and d!46927 (not res!84967)) b!186406))

(assert (= (and b!186406 res!84965) b!186409))

(assert (= (and b!186409 res!84968) b!186404))

(assert (= (and b!186404 res!84963) b!186402))

(assert (= (and b!186402 res!84969) b!186407))

(assert (= (and b!186407 res!84966) b!186403))

(assert (= (and b!186403 res!84964) b!186401))

(declare-fun m!190639 () Bool)

(assert (=> bm!8550 m!190639))

(declare-fun m!190641 () Bool)

(assert (=> d!46927 m!190641))

(declare-fun m!190643 () Bool)

(assert (=> d!46927 m!190643))

(declare-fun m!190645 () Bool)

(assert (=> d!46927 m!190645))

(declare-fun m!190647 () Bool)

(assert (=> d!46927 m!190647))

(declare-fun m!190649 () Bool)

(assert (=> b!186407 m!190649))

(declare-fun m!190651 () Bool)

(assert (=> b!186407 m!190651))

(assert (=> b!186407 m!190651))

(declare-fun m!190653 () Bool)

(assert (=> b!186407 m!190653))

(declare-fun m!190655 () Bool)

(assert (=> b!186406 m!190655))

(declare-fun m!190657 () Bool)

(assert (=> b!186405 m!190657))

(assert (=> b!186409 m!190649))

(declare-fun m!190659 () Bool)

(assert (=> b!186409 m!190659))

(assert (=> b!186409 m!190659))

(declare-fun m!190661 () Bool)

(assert (=> b!186409 m!190661))

(assert (=> b!186403 m!190649))

(assert (=> b!186403 m!190659))

(assert (=> b!186403 m!190659))

(assert (=> b!186403 m!190661))

(assert (=> b!186403 m!190661))

(declare-fun m!190663 () Bool)

(assert (=> b!186403 m!190663))

(assert (=> b!186401 m!190649))

(declare-fun m!190665 () Bool)

(assert (=> b!186401 m!190665))

(assert (=> b!186404 m!190649))

(declare-fun m!190667 () Bool)

(assert (=> b!186404 m!190667))

(declare-fun m!190669 () Bool)

(assert (=> b!186404 m!190669))

(assert (=> b!186402 m!190649))

(assert (=> b!186402 m!190659))

(assert (=> b!186402 m!190659))

(assert (=> b!186402 m!190661))

(assert (=> b!186402 m!190661))

(declare-fun m!190671 () Bool)

(assert (=> b!186402 m!190671))

(assert (=> b!186031 d!46927))

(declare-fun d!46929 () Bool)

(assert (=> d!46929 (= (inv!3938 (tag!745 (rule!1082 (h!8509 tokens!465)))) (= (mod (str.len (value!20474 (tag!745 (rule!1082 (h!8509 tokens!465))))) 2) 0))))

(assert (=> b!186008 d!46929))

(declare-fun d!46931 () Bool)

(declare-fun res!84972 () Bool)

(declare-fun e!114022 () Bool)

(assert (=> d!46931 (=> (not res!84972) (not e!114022))))

(declare-fun semiInverseModEq!197 (Int Int) Bool)

(assert (=> d!46931 (= res!84972 (semiInverseModEq!197 (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))) (toValue!1238 (transformation!567 (rule!1082 (h!8509 tokens!465))))))))

(assert (=> d!46931 (= (inv!3941 (transformation!567 (rule!1082 (h!8509 tokens!465)))) e!114022)))

(declare-fun b!186412 () Bool)

(declare-fun equivClasses!180 (Int Int) Bool)

(assert (=> b!186412 (= e!114022 (equivClasses!180 (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))) (toValue!1238 (transformation!567 (rule!1082 (h!8509 tokens!465))))))))

(assert (= (and d!46931 res!84972) b!186412))

(declare-fun m!190673 () Bool)

(assert (=> d!46931 m!190673))

(declare-fun m!190675 () Bool)

(assert (=> b!186412 m!190675))

(assert (=> b!186008 d!46931))

(declare-fun b!186422 () Bool)

(declare-fun e!114028 () List!3120)

(assert (=> b!186422 (= e!114028 (Cons!3110 (h!8507 lt!62330) (++!738 (t!28634 lt!62330) lt!62333)))))

(declare-fun lt!62487 () List!3120)

(declare-fun e!114027 () Bool)

(declare-fun b!186424 () Bool)

(assert (=> b!186424 (= e!114027 (or (not (= lt!62333 Nil!3110)) (= lt!62487 lt!62330)))))

(declare-fun b!186421 () Bool)

(assert (=> b!186421 (= e!114028 lt!62333)))

(declare-fun d!46933 () Bool)

(assert (=> d!46933 e!114027))

(declare-fun res!84978 () Bool)

(assert (=> d!46933 (=> (not res!84978) (not e!114027))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!425 (List!3120) (InoxSet C!2504))

(assert (=> d!46933 (= res!84978 (= (content!425 lt!62487) ((_ map or) (content!425 lt!62330) (content!425 lt!62333))))))

(assert (=> d!46933 (= lt!62487 e!114028)))

(declare-fun c!36037 () Bool)

(assert (=> d!46933 (= c!36037 ((_ is Nil!3110) lt!62330))))

(assert (=> d!46933 (= (++!738 lt!62330 lt!62333) lt!62487)))

(declare-fun b!186423 () Bool)

(declare-fun res!84977 () Bool)

(assert (=> b!186423 (=> (not res!84977) (not e!114027))))

(assert (=> b!186423 (= res!84977 (= (size!2521 lt!62487) (+ (size!2521 lt!62330) (size!2521 lt!62333))))))

(assert (= (and d!46933 c!36037) b!186421))

(assert (= (and d!46933 (not c!36037)) b!186422))

(assert (= (and d!46933 res!84978) b!186423))

(assert (= (and b!186423 res!84977) b!186424))

(declare-fun m!190677 () Bool)

(assert (=> b!186422 m!190677))

(declare-fun m!190679 () Bool)

(assert (=> d!46933 m!190679))

(declare-fun m!190681 () Bool)

(assert (=> d!46933 m!190681))

(declare-fun m!190683 () Bool)

(assert (=> d!46933 m!190683))

(declare-fun m!190685 () Bool)

(assert (=> b!186423 m!190685))

(assert (=> b!186423 m!190669))

(declare-fun m!190687 () Bool)

(assert (=> b!186423 m!190687))

(assert (=> b!186029 d!46933))

(declare-fun d!46935 () Bool)

(assert (=> d!46935 (= (get!887 lt!62335) (v!13910 lt!62335))))

(assert (=> b!186028 d!46935))

(declare-fun d!46937 () Bool)

(assert (=> d!46937 (= (head!652 tokens!465) (h!8509 tokens!465))))

(assert (=> b!186028 d!46937))

(declare-fun d!46939 () Bool)

(assert (=> d!46939 (= (isEmpty!1480 rules!1920) ((_ is Nil!3111) rules!1920))))

(assert (=> b!186027 d!46939))

(declare-fun d!46941 () Bool)

(declare-fun res!84983 () Bool)

(declare-fun e!114031 () Bool)

(assert (=> d!46941 (=> (not res!84983) (not e!114031))))

(assert (=> d!46941 (= res!84983 (not (isEmpty!1481 (originalCharacters!610 separatorToken!170))))))

(assert (=> d!46941 (= (inv!3942 separatorToken!170) e!114031)))

(declare-fun b!186429 () Bool)

(declare-fun res!84984 () Bool)

(assert (=> b!186429 (=> (not res!84984) (not e!114031))))

(declare-fun dynLambda!1289 (Int TokenValue!589) BalanceConc!1920)

(assert (=> b!186429 (= res!84984 (= (originalCharacters!610 separatorToken!170) (list!1145 (dynLambda!1289 (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))) (value!20475 separatorToken!170)))))))

(declare-fun b!186430 () Bool)

(assert (=> b!186430 (= e!114031 (= (size!2515 separatorToken!170) (size!2521 (originalCharacters!610 separatorToken!170))))))

(assert (= (and d!46941 res!84983) b!186429))

(assert (= (and b!186429 res!84984) b!186430))

(declare-fun b_lambda!4517 () Bool)

(assert (=> (not b_lambda!4517) (not b!186429)))

(declare-fun t!28656 () Bool)

(declare-fun tb!7703 () Bool)

(assert (=> (and b!186021 (= (toChars!1097 (transformation!567 (h!8508 rules!1920))) (toChars!1097 (transformation!567 (rule!1082 separatorToken!170)))) t!28656) tb!7703))

(declare-fun b!186435 () Bool)

(declare-fun e!114034 () Bool)

(declare-fun tp!87533 () Bool)

(declare-fun inv!3945 (Conc!956) Bool)

(assert (=> b!186435 (= e!114034 (and (inv!3945 (c!35965 (dynLambda!1289 (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))) (value!20475 separatorToken!170)))) tp!87533))))

(declare-fun result!10584 () Bool)

(declare-fun inv!3946 (BalanceConc!1920) Bool)

(assert (=> tb!7703 (= result!10584 (and (inv!3946 (dynLambda!1289 (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))) (value!20475 separatorToken!170))) e!114034))))

(assert (= tb!7703 b!186435))

(declare-fun m!190689 () Bool)

(assert (=> b!186435 m!190689))

(declare-fun m!190691 () Bool)

(assert (=> tb!7703 m!190691))

(assert (=> b!186429 t!28656))

(declare-fun b_and!12823 () Bool)

(assert (= b_and!12807 (and (=> t!28656 result!10584) b_and!12823)))

(declare-fun t!28658 () Bool)

(declare-fun tb!7705 () Bool)

(assert (=> (and b!186020 (= (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))) (toChars!1097 (transformation!567 (rule!1082 separatorToken!170)))) t!28658) tb!7705))

(declare-fun result!10588 () Bool)

(assert (= result!10588 result!10584))

(assert (=> b!186429 t!28658))

(declare-fun b_and!12825 () Bool)

(assert (= b_and!12811 (and (=> t!28658 result!10588) b_and!12825)))

(declare-fun t!28660 () Bool)

(declare-fun tb!7707 () Bool)

(assert (=> (and b!186038 (= (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))) (toChars!1097 (transformation!567 (rule!1082 separatorToken!170)))) t!28660) tb!7707))

(declare-fun result!10590 () Bool)

(assert (= result!10590 result!10584))

(assert (=> b!186429 t!28660))

(declare-fun b_and!12827 () Bool)

(assert (= b_and!12815 (and (=> t!28660 result!10590) b_and!12827)))

(declare-fun m!190693 () Bool)

(assert (=> d!46941 m!190693))

(declare-fun m!190695 () Bool)

(assert (=> b!186429 m!190695))

(assert (=> b!186429 m!190695))

(declare-fun m!190697 () Bool)

(assert (=> b!186429 m!190697))

(declare-fun m!190699 () Bool)

(assert (=> b!186430 m!190699))

(assert (=> start!20162 d!46941))

(declare-fun d!46943 () Bool)

(assert (=> d!46943 (= (isDefined!263 lt!62335) (not (isEmpty!1489 lt!62335)))))

(declare-fun bs!18506 () Bool)

(assert (= bs!18506 d!46943))

(declare-fun m!190701 () Bool)

(assert (=> bs!18506 m!190701))

(assert (=> b!186025 d!46943))

(declare-fun b!186436 () Bool)

(declare-fun e!114037 () Bool)

(declare-fun lt!62489 () Option!412)

(assert (=> b!186436 (= e!114037 (contains!505 rules!1920 (rule!1082 (_1!1785 (get!887 lt!62489)))))))

(declare-fun b!186437 () Bool)

(declare-fun res!84991 () Bool)

(assert (=> b!186437 (=> (not res!84991) (not e!114037))))

(assert (=> b!186437 (= res!84991 (= (++!738 (list!1145 (charsOf!222 (_1!1785 (get!887 lt!62489)))) (_2!1785 (get!887 lt!62489))) lt!62328))))

(declare-fun bm!8551 () Bool)

(declare-fun call!8556 () Option!412)

(assert (=> bm!8551 (= call!8556 (maxPrefixOneRule!89 thiss!17480 (h!8508 rules!1920) lt!62328))))

(declare-fun b!186438 () Bool)

(declare-fun res!84986 () Bool)

(assert (=> b!186438 (=> (not res!84986) (not e!114037))))

(assert (=> b!186438 (= res!84986 (matchR!129 (regex!567 (rule!1082 (_1!1785 (get!887 lt!62489)))) (list!1145 (charsOf!222 (_1!1785 (get!887 lt!62489))))))))

(declare-fun b!186439 () Bool)

(declare-fun res!84985 () Bool)

(assert (=> b!186439 (=> (not res!84985) (not e!114037))))

(assert (=> b!186439 (= res!84985 (< (size!2521 (_2!1785 (get!887 lt!62489))) (size!2521 lt!62328)))))

(declare-fun b!186440 () Bool)

(declare-fun e!114036 () Option!412)

(declare-fun lt!62488 () Option!412)

(declare-fun lt!62491 () Option!412)

(assert (=> b!186440 (= e!114036 (ite (and ((_ is None!411) lt!62488) ((_ is None!411) lt!62491)) None!411 (ite ((_ is None!411) lt!62491) lt!62488 (ite ((_ is None!411) lt!62488) lt!62491 (ite (>= (size!2515 (_1!1785 (v!13910 lt!62488))) (size!2515 (_1!1785 (v!13910 lt!62491)))) lt!62488 lt!62491)))))))

(assert (=> b!186440 (= lt!62488 call!8556)))

(assert (=> b!186440 (= lt!62491 (maxPrefix!183 thiss!17480 (t!28635 rules!1920) lt!62328))))

(declare-fun b!186441 () Bool)

(declare-fun e!114035 () Bool)

(assert (=> b!186441 (= e!114035 e!114037)))

(declare-fun res!84987 () Bool)

(assert (=> b!186441 (=> (not res!84987) (not e!114037))))

(assert (=> b!186441 (= res!84987 (isDefined!263 lt!62489))))

(declare-fun b!186442 () Bool)

(declare-fun res!84988 () Bool)

(assert (=> b!186442 (=> (not res!84988) (not e!114037))))

(assert (=> b!186442 (= res!84988 (= (value!20475 (_1!1785 (get!887 lt!62489))) (apply!476 (transformation!567 (rule!1082 (_1!1785 (get!887 lt!62489)))) (seqFromList!512 (originalCharacters!610 (_1!1785 (get!887 lt!62489)))))))))

(declare-fun d!46945 () Bool)

(assert (=> d!46945 e!114035))

(declare-fun res!84989 () Bool)

(assert (=> d!46945 (=> res!84989 e!114035)))

(assert (=> d!46945 (= res!84989 (isEmpty!1489 lt!62489))))

(assert (=> d!46945 (= lt!62489 e!114036)))

(declare-fun c!36038 () Bool)

(assert (=> d!46945 (= c!36038 (and ((_ is Cons!3111) rules!1920) ((_ is Nil!3111) (t!28635 rules!1920))))))

(declare-fun lt!62492 () Unit!2888)

(declare-fun lt!62490 () Unit!2888)

(assert (=> d!46945 (= lt!62492 lt!62490)))

(assert (=> d!46945 (isPrefix!263 lt!62328 lt!62328)))

(assert (=> d!46945 (= lt!62490 (lemmaIsPrefixRefl!155 lt!62328 lt!62328))))

(assert (=> d!46945 (rulesValidInductive!144 thiss!17480 rules!1920)))

(assert (=> d!46945 (= (maxPrefix!183 thiss!17480 rules!1920 lt!62328) lt!62489)))

(declare-fun b!186443 () Bool)

(assert (=> b!186443 (= e!114036 call!8556)))

(declare-fun b!186444 () Bool)

(declare-fun res!84990 () Bool)

(assert (=> b!186444 (=> (not res!84990) (not e!114037))))

(assert (=> b!186444 (= res!84990 (= (list!1145 (charsOf!222 (_1!1785 (get!887 lt!62489)))) (originalCharacters!610 (_1!1785 (get!887 lt!62489)))))))

(assert (= (and d!46945 c!36038) b!186443))

(assert (= (and d!46945 (not c!36038)) b!186440))

(assert (= (or b!186443 b!186440) bm!8551))

(assert (= (and d!46945 (not res!84989)) b!186441))

(assert (= (and b!186441 res!84987) b!186444))

(assert (= (and b!186444 res!84990) b!186439))

(assert (= (and b!186439 res!84985) b!186437))

(assert (= (and b!186437 res!84991) b!186442))

(assert (= (and b!186442 res!84988) b!186438))

(assert (= (and b!186438 res!84986) b!186436))

(declare-fun m!190703 () Bool)

(assert (=> bm!8551 m!190703))

(declare-fun m!190705 () Bool)

(assert (=> d!46945 m!190705))

(declare-fun m!190707 () Bool)

(assert (=> d!46945 m!190707))

(declare-fun m!190709 () Bool)

(assert (=> d!46945 m!190709))

(assert (=> d!46945 m!190647))

(declare-fun m!190711 () Bool)

(assert (=> b!186442 m!190711))

(declare-fun m!190713 () Bool)

(assert (=> b!186442 m!190713))

(assert (=> b!186442 m!190713))

(declare-fun m!190715 () Bool)

(assert (=> b!186442 m!190715))

(declare-fun m!190717 () Bool)

(assert (=> b!186441 m!190717))

(declare-fun m!190719 () Bool)

(assert (=> b!186440 m!190719))

(assert (=> b!186444 m!190711))

(declare-fun m!190721 () Bool)

(assert (=> b!186444 m!190721))

(assert (=> b!186444 m!190721))

(declare-fun m!190723 () Bool)

(assert (=> b!186444 m!190723))

(assert (=> b!186438 m!190711))

(assert (=> b!186438 m!190721))

(assert (=> b!186438 m!190721))

(assert (=> b!186438 m!190723))

(assert (=> b!186438 m!190723))

(declare-fun m!190725 () Bool)

(assert (=> b!186438 m!190725))

(assert (=> b!186436 m!190711))

(declare-fun m!190727 () Bool)

(assert (=> b!186436 m!190727))

(assert (=> b!186439 m!190711))

(declare-fun m!190729 () Bool)

(assert (=> b!186439 m!190729))

(declare-fun m!190731 () Bool)

(assert (=> b!186439 m!190731))

(assert (=> b!186437 m!190711))

(assert (=> b!186437 m!190721))

(assert (=> b!186437 m!190721))

(assert (=> b!186437 m!190723))

(assert (=> b!186437 m!190723))

(declare-fun m!190733 () Bool)

(assert (=> b!186437 m!190733))

(assert (=> b!186025 d!46945))

(declare-fun b!186454 () Bool)

(declare-fun res!85001 () Bool)

(declare-fun e!114044 () Bool)

(assert (=> b!186454 (=> (not res!85001) (not e!114044))))

(assert (=> b!186454 (= res!85001 (= (head!654 lt!62330) (head!654 lt!62316)))))

(declare-fun d!46947 () Bool)

(declare-fun e!114046 () Bool)

(assert (=> d!46947 e!114046))

(declare-fun res!85003 () Bool)

(assert (=> d!46947 (=> res!85003 e!114046)))

(declare-fun lt!62495 () Bool)

(assert (=> d!46947 (= res!85003 (not lt!62495))))

(declare-fun e!114045 () Bool)

(assert (=> d!46947 (= lt!62495 e!114045)))

(declare-fun res!85000 () Bool)

(assert (=> d!46947 (=> res!85000 e!114045)))

(assert (=> d!46947 (= res!85000 ((_ is Nil!3110) lt!62330))))

(assert (=> d!46947 (= (isPrefix!263 lt!62330 lt!62316) lt!62495)))

(declare-fun b!186456 () Bool)

(assert (=> b!186456 (= e!114046 (>= (size!2521 lt!62316) (size!2521 lt!62330)))))

(declare-fun b!186455 () Bool)

(assert (=> b!186455 (= e!114044 (isPrefix!263 (tail!377 lt!62330) (tail!377 lt!62316)))))

(declare-fun b!186453 () Bool)

(assert (=> b!186453 (= e!114045 e!114044)))

(declare-fun res!85002 () Bool)

(assert (=> b!186453 (=> (not res!85002) (not e!114044))))

(assert (=> b!186453 (= res!85002 (not ((_ is Nil!3110) lt!62316)))))

(assert (= (and d!46947 (not res!85000)) b!186453))

(assert (= (and b!186453 res!85002) b!186454))

(assert (= (and b!186454 res!85001) b!186455))

(assert (= (and d!46947 (not res!85003)) b!186456))

(assert (=> b!186454 m!190345))

(declare-fun m!190735 () Bool)

(assert (=> b!186454 m!190735))

(declare-fun m!190737 () Bool)

(assert (=> b!186456 m!190737))

(assert (=> b!186456 m!190669))

(assert (=> b!186455 m!190339))

(declare-fun m!190739 () Bool)

(assert (=> b!186455 m!190739))

(assert (=> b!186455 m!190339))

(assert (=> b!186455 m!190739))

(declare-fun m!190741 () Bool)

(assert (=> b!186455 m!190741))

(assert (=> b!186026 d!46947))

(declare-fun d!46949 () Bool)

(assert (=> d!46949 (= (isEmpty!1479 (t!28636 tokens!465)) ((_ is Nil!3112) (t!28636 tokens!465)))))

(assert (=> b!186026 d!46949))

(declare-fun b!186457 () Bool)

(declare-fun e!114049 () Bool)

(declare-fun lt!62497 () Option!412)

(assert (=> b!186457 (= e!114049 (contains!505 rules!1920 (rule!1082 (_1!1785 (get!887 lt!62497)))))))

(declare-fun b!186458 () Bool)

(declare-fun res!85010 () Bool)

(assert (=> b!186458 (=> (not res!85010) (not e!114049))))

(assert (=> b!186458 (= res!85010 (= (++!738 (list!1145 (charsOf!222 (_1!1785 (get!887 lt!62497)))) (_2!1785 (get!887 lt!62497))) lt!62324))))

(declare-fun call!8557 () Option!412)

(declare-fun bm!8552 () Bool)

(assert (=> bm!8552 (= call!8557 (maxPrefixOneRule!89 thiss!17480 (h!8508 rules!1920) lt!62324))))

(declare-fun b!186459 () Bool)

(declare-fun res!85005 () Bool)

(assert (=> b!186459 (=> (not res!85005) (not e!114049))))

(assert (=> b!186459 (= res!85005 (matchR!129 (regex!567 (rule!1082 (_1!1785 (get!887 lt!62497)))) (list!1145 (charsOf!222 (_1!1785 (get!887 lt!62497))))))))

(declare-fun b!186460 () Bool)

(declare-fun res!85004 () Bool)

(assert (=> b!186460 (=> (not res!85004) (not e!114049))))

(assert (=> b!186460 (= res!85004 (< (size!2521 (_2!1785 (get!887 lt!62497))) (size!2521 lt!62324)))))

(declare-fun b!186461 () Bool)

(declare-fun e!114048 () Option!412)

(declare-fun lt!62496 () Option!412)

(declare-fun lt!62499 () Option!412)

(assert (=> b!186461 (= e!114048 (ite (and ((_ is None!411) lt!62496) ((_ is None!411) lt!62499)) None!411 (ite ((_ is None!411) lt!62499) lt!62496 (ite ((_ is None!411) lt!62496) lt!62499 (ite (>= (size!2515 (_1!1785 (v!13910 lt!62496))) (size!2515 (_1!1785 (v!13910 lt!62499)))) lt!62496 lt!62499)))))))

(assert (=> b!186461 (= lt!62496 call!8557)))

(assert (=> b!186461 (= lt!62499 (maxPrefix!183 thiss!17480 (t!28635 rules!1920) lt!62324))))

(declare-fun b!186462 () Bool)

(declare-fun e!114047 () Bool)

(assert (=> b!186462 (= e!114047 e!114049)))

(declare-fun res!85006 () Bool)

(assert (=> b!186462 (=> (not res!85006) (not e!114049))))

(assert (=> b!186462 (= res!85006 (isDefined!263 lt!62497))))

(declare-fun b!186463 () Bool)

(declare-fun res!85007 () Bool)

(assert (=> b!186463 (=> (not res!85007) (not e!114049))))

(assert (=> b!186463 (= res!85007 (= (value!20475 (_1!1785 (get!887 lt!62497))) (apply!476 (transformation!567 (rule!1082 (_1!1785 (get!887 lt!62497)))) (seqFromList!512 (originalCharacters!610 (_1!1785 (get!887 lt!62497)))))))))

(declare-fun d!46951 () Bool)

(assert (=> d!46951 e!114047))

(declare-fun res!85008 () Bool)

(assert (=> d!46951 (=> res!85008 e!114047)))

(assert (=> d!46951 (= res!85008 (isEmpty!1489 lt!62497))))

(assert (=> d!46951 (= lt!62497 e!114048)))

(declare-fun c!36039 () Bool)

(assert (=> d!46951 (= c!36039 (and ((_ is Cons!3111) rules!1920) ((_ is Nil!3111) (t!28635 rules!1920))))))

(declare-fun lt!62500 () Unit!2888)

(declare-fun lt!62498 () Unit!2888)

(assert (=> d!46951 (= lt!62500 lt!62498)))

(assert (=> d!46951 (isPrefix!263 lt!62324 lt!62324)))

(assert (=> d!46951 (= lt!62498 (lemmaIsPrefixRefl!155 lt!62324 lt!62324))))

(assert (=> d!46951 (rulesValidInductive!144 thiss!17480 rules!1920)))

(assert (=> d!46951 (= (maxPrefix!183 thiss!17480 rules!1920 lt!62324) lt!62497)))

(declare-fun b!186464 () Bool)

(assert (=> b!186464 (= e!114048 call!8557)))

(declare-fun b!186465 () Bool)

(declare-fun res!85009 () Bool)

(assert (=> b!186465 (=> (not res!85009) (not e!114049))))

(assert (=> b!186465 (= res!85009 (= (list!1145 (charsOf!222 (_1!1785 (get!887 lt!62497)))) (originalCharacters!610 (_1!1785 (get!887 lt!62497)))))))

(assert (= (and d!46951 c!36039) b!186464))

(assert (= (and d!46951 (not c!36039)) b!186461))

(assert (= (or b!186464 b!186461) bm!8552))

(assert (= (and d!46951 (not res!85008)) b!186462))

(assert (= (and b!186462 res!85006) b!186465))

(assert (= (and b!186465 res!85009) b!186460))

(assert (= (and b!186460 res!85004) b!186458))

(assert (= (and b!186458 res!85010) b!186463))

(assert (= (and b!186463 res!85007) b!186459))

(assert (= (and b!186459 res!85005) b!186457))

(declare-fun m!190743 () Bool)

(assert (=> bm!8552 m!190743))

(declare-fun m!190745 () Bool)

(assert (=> d!46951 m!190745))

(declare-fun m!190747 () Bool)

(assert (=> d!46951 m!190747))

(declare-fun m!190749 () Bool)

(assert (=> d!46951 m!190749))

(assert (=> d!46951 m!190647))

(declare-fun m!190751 () Bool)

(assert (=> b!186463 m!190751))

(declare-fun m!190753 () Bool)

(assert (=> b!186463 m!190753))

(assert (=> b!186463 m!190753))

(declare-fun m!190755 () Bool)

(assert (=> b!186463 m!190755))

(declare-fun m!190757 () Bool)

(assert (=> b!186462 m!190757))

(declare-fun m!190759 () Bool)

(assert (=> b!186461 m!190759))

(assert (=> b!186465 m!190751))

(declare-fun m!190761 () Bool)

(assert (=> b!186465 m!190761))

(assert (=> b!186465 m!190761))

(declare-fun m!190763 () Bool)

(assert (=> b!186465 m!190763))

(assert (=> b!186459 m!190751))

(assert (=> b!186459 m!190761))

(assert (=> b!186459 m!190761))

(assert (=> b!186459 m!190763))

(assert (=> b!186459 m!190763))

(declare-fun m!190765 () Bool)

(assert (=> b!186459 m!190765))

(assert (=> b!186457 m!190751))

(declare-fun m!190767 () Bool)

(assert (=> b!186457 m!190767))

(assert (=> b!186460 m!190751))

(declare-fun m!190769 () Bool)

(assert (=> b!186460 m!190769))

(declare-fun m!190771 () Bool)

(assert (=> b!186460 m!190771))

(assert (=> b!186458 m!190751))

(assert (=> b!186458 m!190761))

(assert (=> b!186458 m!190761))

(assert (=> b!186458 m!190763))

(assert (=> b!186458 m!190763))

(declare-fun m!190773 () Bool)

(assert (=> b!186458 m!190773))

(assert (=> b!186026 d!46951))

(declare-fun d!46953 () Bool)

(assert (=> d!46953 (isPrefix!263 lt!62330 (++!738 lt!62330 lt!62324))))

(declare-fun lt!62503 () Unit!2888)

(declare-fun choose!1914 (List!3120 List!3120) Unit!2888)

(assert (=> d!46953 (= lt!62503 (choose!1914 lt!62330 lt!62324))))

(assert (=> d!46953 (= (lemmaConcatTwoListThenFirstIsPrefix!158 lt!62330 lt!62324) lt!62503)))

(declare-fun bs!18507 () Bool)

(assert (= bs!18507 d!46953))

(assert (=> bs!18507 m!190179))

(assert (=> bs!18507 m!190179))

(declare-fun m!190775 () Bool)

(assert (=> bs!18507 m!190775))

(declare-fun m!190777 () Bool)

(assert (=> bs!18507 m!190777))

(assert (=> b!186026 d!46953))

(declare-fun d!46955 () Bool)

(assert (=> d!46955 (= (get!887 (maxPrefix!183 thiss!17480 rules!1920 lt!62328)) (v!13910 (maxPrefix!183 thiss!17480 rules!1920 lt!62328)))))

(assert (=> b!186026 d!46955))

(declare-fun d!46957 () Bool)

(declare-fun e!114086 () Bool)

(assert (=> d!46957 e!114086))

(declare-fun res!85033 () Bool)

(assert (=> d!46957 (=> res!85033 e!114086)))

(assert (=> d!46957 (= res!85033 (isEmpty!1479 tokens!465))))

(declare-fun lt!62558 () Unit!2888)

(declare-fun choose!1915 (LexerInterface!453 List!3121 List!3122 Token!878) Unit!2888)

(assert (=> d!46957 (= lt!62558 (choose!1915 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!46957 (not (isEmpty!1480 rules!1920))))

(assert (=> d!46957 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!28 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!62558)))

(declare-fun b!186516 () Bool)

(declare-fun e!114085 () Bool)

(assert (=> b!186516 (= e!114086 e!114085)))

(declare-fun res!85034 () Bool)

(assert (=> b!186516 (=> (not res!85034) (not e!114085))))

(assert (=> b!186516 (= res!85034 (isDefined!263 (maxPrefix!183 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!146 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!186517 () Bool)

(assert (=> b!186517 (= e!114085 (= (_1!1785 (get!887 (maxPrefix!183 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!146 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!652 tokens!465)))))

(assert (= (and d!46957 (not res!85033)) b!186516))

(assert (= (and b!186516 res!85034) b!186517))

(assert (=> d!46957 m!190227))

(declare-fun m!190881 () Bool)

(assert (=> d!46957 m!190881))

(assert (=> d!46957 m!190225))

(assert (=> b!186516 m!190249))

(assert (=> b!186516 m!190249))

(declare-fun m!190883 () Bool)

(assert (=> b!186516 m!190883))

(assert (=> b!186516 m!190883))

(declare-fun m!190885 () Bool)

(assert (=> b!186516 m!190885))

(assert (=> b!186517 m!190249))

(assert (=> b!186517 m!190249))

(assert (=> b!186517 m!190883))

(assert (=> b!186517 m!190883))

(declare-fun m!190887 () Bool)

(assert (=> b!186517 m!190887))

(assert (=> b!186517 m!190145))

(assert (=> b!186026 d!46957))

(declare-fun d!46981 () Bool)

(assert (=> d!46981 (= lt!62324 (_2!1785 lt!62321))))

(declare-fun lt!62561 () Unit!2888)

(declare-fun choose!1916 (List!3120 List!3120 List!3120 List!3120 List!3120) Unit!2888)

(assert (=> d!46981 (= lt!62561 (choose!1916 lt!62330 lt!62324 lt!62330 (_2!1785 lt!62321) lt!62328))))

(assert (=> d!46981 (isPrefix!263 lt!62330 lt!62328)))

(assert (=> d!46981 (= (lemmaSamePrefixThenSameSuffix!88 lt!62330 lt!62324 lt!62330 (_2!1785 lt!62321) lt!62328) lt!62561)))

(declare-fun bs!18519 () Bool)

(assert (= bs!18519 d!46981))

(declare-fun m!190889 () Bool)

(assert (=> bs!18519 m!190889))

(declare-fun m!190891 () Bool)

(assert (=> bs!18519 m!190891))

(assert (=> b!186026 d!46981))

(declare-fun d!46983 () Bool)

(assert (=> d!46983 (= (isEmpty!1479 tokens!465) ((_ is Nil!3112) tokens!465))))

(assert (=> b!186026 d!46983))

(assert (=> b!186026 d!46945))

(declare-fun b!186518 () Bool)

(declare-fun e!114088 () Bool)

(assert (=> b!186518 (= e!114088 (inv!17 (value!20475 (h!8509 tokens!465))))))

(declare-fun d!46985 () Bool)

(declare-fun c!36053 () Bool)

(assert (=> d!46985 (= c!36053 ((_ is IntegerValue!1767) (value!20475 (h!8509 tokens!465))))))

(declare-fun e!114087 () Bool)

(assert (=> d!46985 (= (inv!21 (value!20475 (h!8509 tokens!465))) e!114087)))

(declare-fun b!186519 () Bool)

(declare-fun res!85035 () Bool)

(declare-fun e!114089 () Bool)

(assert (=> b!186519 (=> res!85035 e!114089)))

(assert (=> b!186519 (= res!85035 (not ((_ is IntegerValue!1769) (value!20475 (h!8509 tokens!465)))))))

(assert (=> b!186519 (= e!114088 e!114089)))

(declare-fun b!186520 () Bool)

(assert (=> b!186520 (= e!114087 (inv!16 (value!20475 (h!8509 tokens!465))))))

(declare-fun b!186521 () Bool)

(assert (=> b!186521 (= e!114089 (inv!15 (value!20475 (h!8509 tokens!465))))))

(declare-fun b!186522 () Bool)

(assert (=> b!186522 (= e!114087 e!114088)))

(declare-fun c!36052 () Bool)

(assert (=> b!186522 (= c!36052 ((_ is IntegerValue!1768) (value!20475 (h!8509 tokens!465))))))

(assert (= (and d!46985 c!36053) b!186520))

(assert (= (and d!46985 (not c!36053)) b!186522))

(assert (= (and b!186522 c!36052) b!186518))

(assert (= (and b!186522 (not c!36052)) b!186519))

(assert (= (and b!186519 (not res!85035)) b!186521))

(declare-fun m!190893 () Bool)

(assert (=> b!186518 m!190893))

(declare-fun m!190895 () Bool)

(assert (=> b!186520 m!190895))

(declare-fun m!190897 () Bool)

(assert (=> b!186521 m!190897))

(assert (=> b!186024 d!46985))

(declare-fun d!46987 () Bool)

(declare-fun res!85040 () Bool)

(declare-fun e!114094 () Bool)

(assert (=> d!46987 (=> res!85040 e!114094)))

(assert (=> d!46987 (= res!85040 (not ((_ is Cons!3111) rules!1920)))))

(assert (=> d!46987 (= (sepAndNonSepRulesDisjointChars!156 rules!1920 rules!1920) e!114094)))

(declare-fun b!186527 () Bool)

(declare-fun e!114095 () Bool)

(assert (=> b!186527 (= e!114094 e!114095)))

(declare-fun res!85041 () Bool)

(assert (=> b!186527 (=> (not res!85041) (not e!114095))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!56 (Rule!934 List!3121) Bool)

(assert (=> b!186527 (= res!85041 (ruleDisjointCharsFromAllFromOtherType!56 (h!8508 rules!1920) rules!1920))))

(declare-fun b!186528 () Bool)

(assert (=> b!186528 (= e!114095 (sepAndNonSepRulesDisjointChars!156 rules!1920 (t!28635 rules!1920)))))

(assert (= (and d!46987 (not res!85040)) b!186527))

(assert (= (and b!186527 res!85041) b!186528))

(declare-fun m!190899 () Bool)

(assert (=> b!186527 m!190899))

(declare-fun m!190901 () Bool)

(assert (=> b!186528 m!190901))

(assert (=> b!186023 d!46987))

(declare-fun d!46989 () Bool)

(assert (=> d!46989 (= (inv!3938 (tag!745 (h!8508 rules!1920))) (= (mod (str.len (value!20474 (tag!745 (h!8508 rules!1920)))) 2) 0))))

(assert (=> b!186022 d!46989))

(declare-fun d!46991 () Bool)

(declare-fun res!85042 () Bool)

(declare-fun e!114096 () Bool)

(assert (=> d!46991 (=> (not res!85042) (not e!114096))))

(assert (=> d!46991 (= res!85042 (semiInverseModEq!197 (toChars!1097 (transformation!567 (h!8508 rules!1920))) (toValue!1238 (transformation!567 (h!8508 rules!1920)))))))

(assert (=> d!46991 (= (inv!3941 (transformation!567 (h!8508 rules!1920))) e!114096)))

(declare-fun b!186529 () Bool)

(assert (=> b!186529 (= e!114096 (equivClasses!180 (toChars!1097 (transformation!567 (h!8508 rules!1920))) (toValue!1238 (transformation!567 (h!8508 rules!1920)))))))

(assert (= (and d!46991 res!85042) b!186529))

(declare-fun m!190903 () Bool)

(assert (=> d!46991 m!190903))

(declare-fun m!190905 () Bool)

(assert (=> b!186529 m!190905))

(assert (=> b!186022 d!46991))

(declare-fun d!46993 () Bool)

(assert (=> d!46993 (= (list!1145 (seqFromList!512 lt!62328)) (list!1149 (c!35965 (seqFromList!512 lt!62328))))))

(declare-fun bs!18520 () Bool)

(assert (= bs!18520 d!46993))

(declare-fun m!190907 () Bool)

(assert (=> bs!18520 m!190907))

(assert (=> b!186043 d!46993))

(declare-fun d!46995 () Bool)

(assert (=> d!46995 (= (seqFromList!512 lt!62328) (fromListB!201 lt!62328))))

(declare-fun bs!18521 () Bool)

(assert (= bs!18521 d!46995))

(declare-fun m!190909 () Bool)

(assert (=> bs!18521 m!190909))

(assert (=> b!186043 d!46995))

(declare-fun d!46997 () Bool)

(assert (=> d!46997 (= (isEmpty!1481 (_2!1785 lt!62317)) ((_ is Nil!3110) (_2!1785 lt!62317)))))

(assert (=> b!186041 d!46997))

(declare-fun d!46999 () Bool)

(assert (=> d!46999 (= (list!1145 (printWithSeparatorTokenWhenNeededRec!136 thiss!17480 rules!1920 lt!62327 separatorToken!170 0)) (list!1149 (c!35965 (printWithSeparatorTokenWhenNeededRec!136 thiss!17480 rules!1920 lt!62327 separatorToken!170 0))))))

(declare-fun bs!18522 () Bool)

(assert (= bs!18522 d!46999))

(declare-fun m!190911 () Bool)

(assert (=> bs!18522 m!190911))

(assert (=> b!186042 d!46999))

(declare-fun bs!18532 () Bool)

(declare-fun d!47001 () Bool)

(assert (= bs!18532 (and d!47001 b!186010)))

(declare-fun lambda!5629 () Int)

(assert (=> bs!18532 (= lambda!5629 lambda!5601)))

(declare-fun bs!18533 () Bool)

(assert (= bs!18533 (and d!47001 b!186040)))

(assert (=> bs!18533 (not (= lambda!5629 lambda!5602))))

(declare-fun bs!18534 () Bool)

(assert (= bs!18534 (and d!47001 d!46869)))

(assert (=> bs!18534 (not (= lambda!5629 lambda!5612))))

(declare-fun bs!18535 () Bool)

(declare-fun b!186578 () Bool)

(assert (= bs!18535 (and b!186578 b!186010)))

(declare-fun lambda!5630 () Int)

(assert (=> bs!18535 (not (= lambda!5630 lambda!5601))))

(declare-fun bs!18536 () Bool)

(assert (= bs!18536 (and b!186578 b!186040)))

(assert (=> bs!18536 (= lambda!5630 lambda!5602)))

(declare-fun bs!18537 () Bool)

(assert (= bs!18537 (and b!186578 d!46869)))

(assert (=> bs!18537 (= lambda!5630 lambda!5612)))

(declare-fun bs!18538 () Bool)

(assert (= bs!18538 (and b!186578 d!47001)))

(assert (=> bs!18538 (not (= lambda!5630 lambda!5629))))

(declare-fun b!186582 () Bool)

(declare-fun e!114136 () Bool)

(assert (=> b!186582 (= e!114136 true)))

(declare-fun b!186581 () Bool)

(declare-fun e!114135 () Bool)

(assert (=> b!186581 (= e!114135 e!114136)))

(declare-fun b!186580 () Bool)

(declare-fun e!114134 () Bool)

(assert (=> b!186580 (= e!114134 e!114135)))

(assert (=> b!186578 e!114134))

(assert (= b!186581 b!186582))

(assert (= b!186580 b!186581))

(assert (= (and b!186578 ((_ is Cons!3111) rules!1920)) b!186580))

(assert (=> b!186582 (< (dynLambda!1283 order!1877 (toValue!1238 (transformation!567 (h!8508 rules!1920)))) (dynLambda!1284 order!1879 lambda!5630))))

(assert (=> b!186582 (< (dynLambda!1285 order!1881 (toChars!1097 (transformation!567 (h!8508 rules!1920)))) (dynLambda!1284 order!1879 lambda!5630))))

(assert (=> b!186578 true))

(declare-fun bm!8578 () Bool)

(declare-fun call!8587 () Token!878)

(assert (=> bm!8578 (= call!8587 (apply!474 lt!62327 0))))

(declare-fun b!186571 () Bool)

(declare-fun e!114131 () BalanceConc!1920)

(declare-fun call!8583 () BalanceConc!1920)

(assert (=> b!186571 (= e!114131 call!8583)))

(declare-fun b!186572 () Bool)

(declare-fun e!114129 () Bool)

(declare-fun lt!62610 () Option!413)

(assert (=> b!186572 (= e!114129 (not (= (_1!1787 (v!13911 lt!62610)) call!8587)))))

(declare-fun call!8586 () Token!878)

(declare-fun call!8584 () BalanceConc!1920)

(declare-fun c!36060 () Bool)

(declare-fun bm!8579 () Bool)

(assert (=> bm!8579 (= call!8584 (charsOf!222 (ite c!36060 call!8587 call!8586)))))

(declare-fun bm!8580 () Bool)

(declare-fun call!8585 () BalanceConc!1920)

(declare-fun lt!62604 () BalanceConc!1920)

(assert (=> bm!8580 (= call!8583 (++!740 call!8584 (ite c!36060 lt!62604 call!8585)))))

(declare-fun b!186573 () Bool)

(declare-fun e!114132 () Bool)

(assert (=> b!186573 (= e!114132 (= (_1!1787 (v!13911 lt!62610)) (apply!474 lt!62327 0)))))

(declare-fun b!186574 () Bool)

(declare-fun e!114133 () BalanceConc!1920)

(assert (=> b!186574 (= e!114133 (++!740 call!8583 lt!62604))))

(declare-fun b!186575 () Bool)

(declare-fun e!114130 () BalanceConc!1920)

(assert (=> b!186575 (= e!114130 (BalanceConc!1921 Empty!956))))

(declare-fun lt!62614 () BalanceConc!1920)

(assert (=> d!47001 (= (list!1145 lt!62614) (printWithSeparatorTokenWhenNeededList!146 thiss!17480 rules!1920 (dropList!106 lt!62327 0) separatorToken!170))))

(assert (=> d!47001 (= lt!62614 e!114130)))

(declare-fun c!36061 () Bool)

(assert (=> d!47001 (= c!36061 (>= 0 (size!2518 lt!62327)))))

(declare-fun lt!62608 () Unit!2888)

(declare-fun lemmaContentSubsetPreservesForall!50 (List!3122 List!3122 Int) Unit!2888)

(assert (=> d!47001 (= lt!62608 (lemmaContentSubsetPreservesForall!50 (list!1148 lt!62327) (dropList!106 lt!62327 0) lambda!5629))))

(declare-fun e!114128 () Bool)

(assert (=> d!47001 e!114128))

(declare-fun res!85069 () Bool)

(assert (=> d!47001 (=> (not res!85069) (not e!114128))))

(assert (=> d!47001 (= res!85069 (>= 0 0))))

(assert (=> d!47001 (= (printWithSeparatorTokenWhenNeededRec!136 thiss!17480 rules!1920 lt!62327 separatorToken!170 0) lt!62614)))

(declare-fun b!186576 () Bool)

(assert (=> b!186576 (= e!114133 (BalanceConc!1921 Empty!956))))

(assert (=> b!186576 (= (print!184 thiss!17480 (singletonSeq!119 call!8586)) (printTailRec!147 thiss!17480 (singletonSeq!119 call!8586) 0 (BalanceConc!1921 Empty!956)))))

(declare-fun lt!62613 () Unit!2888)

(declare-fun Unit!2898 () Unit!2888)

(assert (=> b!186576 (= lt!62613 Unit!2898)))

(declare-fun lt!62617 () Unit!2888)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!54 (LexerInterface!453 List!3121 List!3120 List!3120) Unit!2888)

(assert (=> b!186576 (= lt!62617 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!54 thiss!17480 rules!1920 (list!1145 call!8585) (list!1145 lt!62604)))))

(assert (=> b!186576 false))

(declare-fun lt!62615 () Unit!2888)

(declare-fun Unit!2899 () Unit!2888)

(assert (=> b!186576 (= lt!62615 Unit!2899)))

(declare-fun b!186577 () Bool)

(assert (=> b!186577 (= e!114128 (<= 0 (size!2518 lt!62327)))))

(declare-fun bm!8581 () Bool)

(assert (=> bm!8581 (= call!8586 call!8587)))

(assert (=> b!186578 (= e!114130 e!114131)))

(declare-fun lt!62605 () List!3122)

(assert (=> b!186578 (= lt!62605 (list!1148 lt!62327))))

(declare-fun lt!62607 () Unit!2888)

(assert (=> b!186578 (= lt!62607 (lemmaDropApply!146 lt!62605 0))))

(assert (=> b!186578 (= (head!652 (drop!159 lt!62605 0)) (apply!475 lt!62605 0))))

(declare-fun lt!62606 () Unit!2888)

(assert (=> b!186578 (= lt!62606 lt!62607)))

(declare-fun lt!62612 () List!3122)

(assert (=> b!186578 (= lt!62612 (list!1148 lt!62327))))

(declare-fun lt!62611 () Unit!2888)

(assert (=> b!186578 (= lt!62611 (lemmaDropTail!138 lt!62612 0))))

(assert (=> b!186578 (= (tail!378 (drop!159 lt!62612 0)) (drop!159 lt!62612 (+ 0 1)))))

(declare-fun lt!62609 () Unit!2888)

(assert (=> b!186578 (= lt!62609 lt!62611)))

(declare-fun lt!62616 () Unit!2888)

(assert (=> b!186578 (= lt!62616 (forallContained!134 (list!1148 lt!62327) lambda!5630 (apply!474 lt!62327 0)))))

(assert (=> b!186578 (= lt!62604 (printWithSeparatorTokenWhenNeededRec!136 thiss!17480 rules!1920 lt!62327 separatorToken!170 (+ 0 1)))))

(assert (=> b!186578 (= lt!62610 (maxPrefixZipperSequence!146 thiss!17480 rules!1920 (++!740 (charsOf!222 (apply!474 lt!62327 0)) lt!62604)))))

(declare-fun res!85070 () Bool)

(assert (=> b!186578 (= res!85070 ((_ is Some!412) lt!62610))))

(assert (=> b!186578 (=> (not res!85070) (not e!114132))))

(assert (=> b!186578 (= c!36060 e!114132)))

(declare-fun c!36062 () Bool)

(declare-fun bm!8582 () Bool)

(assert (=> bm!8582 (= call!8585 (charsOf!222 (ite c!36062 separatorToken!170 call!8586)))))

(declare-fun b!186579 () Bool)

(assert (=> b!186579 (= c!36062 e!114129)))

(declare-fun res!85071 () Bool)

(assert (=> b!186579 (=> (not res!85071) (not e!114129))))

(assert (=> b!186579 (= res!85071 ((_ is Some!412) lt!62610))))

(assert (=> b!186579 (= e!114131 e!114133)))

(assert (= (and d!47001 res!85069) b!186577))

(assert (= (and d!47001 c!36061) b!186575))

(assert (= (and d!47001 (not c!36061)) b!186578))

(assert (= (and b!186578 res!85070) b!186573))

(assert (= (and b!186578 c!36060) b!186571))

(assert (= (and b!186578 (not c!36060)) b!186579))

(assert (= (and b!186579 res!85071) b!186572))

(assert (= (and b!186579 c!36062) b!186574))

(assert (= (and b!186579 (not c!36062)) b!186576))

(assert (= (or b!186574 b!186576) bm!8581))

(assert (= (or b!186574 b!186576) bm!8582))

(assert (= (or b!186571 bm!8581 b!186572) bm!8578))

(assert (= (or b!186571 b!186574) bm!8579))

(assert (= (or b!186571 b!186574) bm!8580))

(declare-fun m!190969 () Bool)

(assert (=> bm!8580 m!190969))

(declare-fun m!190971 () Bool)

(assert (=> b!186576 m!190971))

(declare-fun m!190973 () Bool)

(assert (=> b!186576 m!190973))

(declare-fun m!190975 () Bool)

(assert (=> b!186576 m!190975))

(declare-fun m!190977 () Bool)

(assert (=> b!186576 m!190977))

(assert (=> b!186576 m!190975))

(declare-fun m!190979 () Bool)

(assert (=> b!186576 m!190979))

(assert (=> b!186576 m!190971))

(declare-fun m!190981 () Bool)

(assert (=> b!186576 m!190981))

(assert (=> b!186576 m!190971))

(assert (=> b!186576 m!190977))

(declare-fun m!190983 () Bool)

(assert (=> d!47001 m!190983))

(assert (=> d!47001 m!190493))

(assert (=> d!47001 m!190983))

(declare-fun m!190985 () Bool)

(assert (=> d!47001 m!190985))

(declare-fun m!190987 () Bool)

(assert (=> d!47001 m!190987))

(assert (=> d!47001 m!190983))

(declare-fun m!190989 () Bool)

(assert (=> d!47001 m!190989))

(assert (=> d!47001 m!190493))

(declare-fun m!190991 () Bool)

(assert (=> d!47001 m!190991))

(declare-fun m!190993 () Bool)

(assert (=> bm!8582 m!190993))

(declare-fun m!190995 () Bool)

(assert (=> b!186578 m!190995))

(declare-fun m!190997 () Bool)

(assert (=> b!186578 m!190997))

(declare-fun m!190999 () Bool)

(assert (=> b!186578 m!190999))

(assert (=> b!186578 m!190995))

(declare-fun m!191001 () Bool)

(assert (=> b!186578 m!191001))

(declare-fun m!191003 () Bool)

(assert (=> b!186578 m!191003))

(declare-fun m!191005 () Bool)

(assert (=> b!186578 m!191005))

(declare-fun m!191007 () Bool)

(assert (=> b!186578 m!191007))

(assert (=> b!186578 m!190493))

(assert (=> b!186578 m!190995))

(declare-fun m!191009 () Bool)

(assert (=> b!186578 m!191009))

(assert (=> b!186578 m!190493))

(declare-fun m!191011 () Bool)

(assert (=> b!186578 m!191011))

(declare-fun m!191013 () Bool)

(assert (=> b!186578 m!191013))

(declare-fun m!191015 () Bool)

(assert (=> b!186578 m!191015))

(assert (=> b!186578 m!190997))

(assert (=> b!186578 m!191003))

(assert (=> b!186578 m!191011))

(declare-fun m!191017 () Bool)

(assert (=> b!186578 m!191017))

(assert (=> b!186578 m!191015))

(declare-fun m!191019 () Bool)

(assert (=> b!186578 m!191019))

(declare-fun m!191021 () Bool)

(assert (=> b!186578 m!191021))

(declare-fun m!191023 () Bool)

(assert (=> bm!8579 m!191023))

(declare-fun m!191025 () Bool)

(assert (=> b!186574 m!191025))

(assert (=> b!186577 m!190991))

(assert (=> bm!8578 m!190995))

(assert (=> b!186573 m!190995))

(assert (=> b!186042 d!47001))

(declare-fun bs!18571 () Bool)

(declare-fun b!186734 () Bool)

(assert (= bs!18571 (and b!186734 b!186578)))

(declare-fun lambda!5636 () Int)

(assert (=> bs!18571 (= lambda!5636 lambda!5630)))

(declare-fun bs!18572 () Bool)

(assert (= bs!18572 (and b!186734 d!46869)))

(assert (=> bs!18572 (= lambda!5636 lambda!5612)))

(declare-fun bs!18573 () Bool)

(assert (= bs!18573 (and b!186734 b!186010)))

(assert (=> bs!18573 (not (= lambda!5636 lambda!5601))))

(declare-fun bs!18574 () Bool)

(assert (= bs!18574 (and b!186734 b!186040)))

(assert (=> bs!18574 (= lambda!5636 lambda!5602)))

(declare-fun bs!18575 () Bool)

(assert (= bs!18575 (and b!186734 d!47001)))

(assert (=> bs!18575 (not (= lambda!5636 lambda!5629))))

(declare-fun b!186744 () Bool)

(declare-fun e!114243 () Bool)

(assert (=> b!186744 (= e!114243 true)))

(declare-fun b!186743 () Bool)

(declare-fun e!114242 () Bool)

(assert (=> b!186743 (= e!114242 e!114243)))

(declare-fun b!186742 () Bool)

(declare-fun e!114241 () Bool)

(assert (=> b!186742 (= e!114241 e!114242)))

(assert (=> b!186734 e!114241))

(assert (= b!186743 b!186744))

(assert (= b!186742 b!186743))

(assert (= (and b!186734 ((_ is Cons!3111) rules!1920)) b!186742))

(assert (=> b!186744 (< (dynLambda!1283 order!1877 (toValue!1238 (transformation!567 (h!8508 rules!1920)))) (dynLambda!1284 order!1879 lambda!5636))))

(assert (=> b!186744 (< (dynLambda!1285 order!1881 (toChars!1097 (transformation!567 (h!8508 rules!1920)))) (dynLambda!1284 order!1879 lambda!5636))))

(assert (=> b!186734 true))

(declare-fun b!186733 () Bool)

(declare-fun e!114236 () List!3120)

(assert (=> b!186733 (= e!114236 Nil!3110)))

(assert (=> b!186733 (= (print!184 thiss!17480 (singletonSeq!119 (h!8509 tokens!465))) (printTailRec!147 thiss!17480 (singletonSeq!119 (h!8509 tokens!465)) 0 (BalanceConc!1921 Empty!956)))))

(declare-fun lt!62686 () Unit!2888)

(declare-fun Unit!2900 () Unit!2888)

(assert (=> b!186733 (= lt!62686 Unit!2900)))

(declare-fun call!8611 () List!3120)

(declare-fun lt!62687 () List!3120)

(declare-fun lt!62685 () Unit!2888)

(assert (=> b!186733 (= lt!62685 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!54 thiss!17480 rules!1920 call!8611 lt!62687))))

(assert (=> b!186733 false))

(declare-fun lt!62690 () Unit!2888)

(declare-fun Unit!2901 () Unit!2888)

(assert (=> b!186733 (= lt!62690 Unit!2901)))

(declare-fun bm!8604 () Bool)

(declare-fun c!36091 () Bool)

(declare-fun c!36092 () Bool)

(assert (=> bm!8604 (= c!36091 c!36092)))

(declare-fun e!114240 () List!3120)

(declare-fun call!8612 () List!3120)

(assert (=> bm!8604 (= call!8612 (++!738 e!114240 (ite c!36092 lt!62687 call!8611)))))

(declare-fun e!114239 () List!3120)

(declare-fun e!114238 () List!3120)

(assert (=> b!186734 (= e!114239 e!114238)))

(declare-fun lt!62689 () Unit!2888)

(assert (=> b!186734 (= lt!62689 (forallContained!134 tokens!465 lambda!5636 (h!8509 tokens!465)))))

(assert (=> b!186734 (= lt!62687 (printWithSeparatorTokenWhenNeededList!146 thiss!17480 rules!1920 (t!28636 tokens!465) separatorToken!170))))

(declare-fun lt!62688 () Option!412)

(assert (=> b!186734 (= lt!62688 (maxPrefix!183 thiss!17480 rules!1920 (++!738 (list!1145 (charsOf!222 (h!8509 tokens!465))) lt!62687)))))

(assert (=> b!186734 (= c!36092 (and ((_ is Some!411) lt!62688) (= (_1!1785 (v!13910 lt!62688)) (h!8509 tokens!465))))))

(declare-fun call!8610 () List!3120)

(declare-fun bm!8605 () Bool)

(declare-fun e!114237 () BalanceConc!1920)

(declare-fun call!8613 () BalanceConc!1920)

(assert (=> bm!8605 (= call!8610 (list!1145 (ite c!36092 call!8613 e!114237)))))

(declare-fun b!186735 () Bool)

(assert (=> b!186735 (= e!114239 Nil!3110)))

(declare-fun bm!8606 () Bool)

(declare-fun call!8609 () BalanceConc!1920)

(assert (=> bm!8606 (= call!8609 call!8613)))

(declare-fun b!186736 () Bool)

(assert (=> b!186736 (= e!114240 (list!1145 call!8609))))

(declare-fun bm!8607 () Bool)

(assert (=> bm!8607 (= call!8613 (charsOf!222 (h!8509 tokens!465)))))

(declare-fun bm!8608 () Bool)

(assert (=> bm!8608 (= call!8611 call!8610)))

(declare-fun c!36090 () Bool)

(declare-fun c!36094 () Bool)

(assert (=> bm!8608 (= c!36090 c!36094)))

(declare-fun b!186737 () Bool)

(assert (=> b!186737 (= e!114237 call!8609)))

(declare-fun b!186732 () Bool)

(assert (=> b!186732 (= e!114238 call!8612)))

(declare-fun d!47029 () Bool)

(declare-fun c!36093 () Bool)

(assert (=> d!47029 (= c!36093 ((_ is Cons!3112) tokens!465))))

(assert (=> d!47029 (= (printWithSeparatorTokenWhenNeededList!146 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!114239)))

(declare-fun b!186738 () Bool)

(assert (=> b!186738 (= c!36094 (and ((_ is Some!411) lt!62688) (not (= (_1!1785 (v!13910 lt!62688)) (h!8509 tokens!465)))))))

(assert (=> b!186738 (= e!114238 e!114236)))

(declare-fun b!186739 () Bool)

(assert (=> b!186739 (= e!114236 (++!738 call!8612 lt!62687))))

(declare-fun b!186740 () Bool)

(assert (=> b!186740 (= e!114240 call!8610)))

(declare-fun b!186741 () Bool)

(assert (=> b!186741 (= e!114237 (charsOf!222 separatorToken!170))))

(assert (= (and d!47029 c!36093) b!186734))

(assert (= (and d!47029 (not c!36093)) b!186735))

(assert (= (and b!186734 c!36092) b!186732))

(assert (= (and b!186734 (not c!36092)) b!186738))

(assert (= (and b!186738 c!36094) b!186739))

(assert (= (and b!186738 (not c!36094)) b!186733))

(assert (= (or b!186739 b!186733) bm!8606))

(assert (= (or b!186739 b!186733) bm!8608))

(assert (= (and bm!8608 c!36090) b!186741))

(assert (= (and bm!8608 (not c!36090)) b!186737))

(assert (= (or b!186732 bm!8606) bm!8607))

(assert (= (or b!186732 bm!8608) bm!8605))

(assert (= (or b!186732 b!186739) bm!8604))

(assert (= (and bm!8604 c!36091) b!186740))

(assert (= (and bm!8604 (not c!36091)) b!186736))

(assert (=> bm!8607 m!190185))

(assert (=> b!186733 m!190165))

(assert (=> b!186733 m!190165))

(declare-fun m!191237 () Bool)

(assert (=> b!186733 m!191237))

(assert (=> b!186733 m!190165))

(declare-fun m!191239 () Bool)

(assert (=> b!186733 m!191239))

(declare-fun m!191241 () Bool)

(assert (=> b!186733 m!191241))

(declare-fun m!191243 () Bool)

(assert (=> bm!8604 m!191243))

(assert (=> b!186741 m!190175))

(assert (=> b!186734 m!190185))

(declare-fun m!191245 () Bool)

(assert (=> b!186734 m!191245))

(declare-fun m!191247 () Bool)

(assert (=> b!186734 m!191247))

(declare-fun m!191249 () Bool)

(assert (=> b!186734 m!191249))

(assert (=> b!186734 m!190197))

(assert (=> b!186734 m!191247))

(assert (=> b!186734 m!190185))

(assert (=> b!186734 m!190197))

(assert (=> b!186734 m!190191))

(declare-fun m!191251 () Bool)

(assert (=> bm!8605 m!191251))

(declare-fun m!191253 () Bool)

(assert (=> b!186736 m!191253))

(declare-fun m!191255 () Bool)

(assert (=> b!186739 m!191255))

(assert (=> b!186042 d!47029))

(declare-fun d!47067 () Bool)

(declare-fun isEmpty!1490 (Option!413) Bool)

(assert (=> d!47067 (= (isDefined!264 (maxPrefixZipperSequence!146 thiss!17480 rules!1920 (seqFromList!512 (originalCharacters!610 (h!8509 tokens!465))))) (not (isEmpty!1490 (maxPrefixZipperSequence!146 thiss!17480 rules!1920 (seqFromList!512 (originalCharacters!610 (h!8509 tokens!465)))))))))

(declare-fun bs!18576 () Bool)

(assert (= bs!18576 d!47067))

(assert (=> bs!18576 m!190127))

(declare-fun m!191257 () Bool)

(assert (=> bs!18576 m!191257))

(assert (=> b!186040 d!47067))

(declare-fun bm!8611 () Bool)

(declare-fun call!8616 () Option!413)

(declare-fun maxPrefixOneRuleZipperSequence!60 (LexerInterface!453 Rule!934 BalanceConc!1920) Option!413)

(assert (=> bm!8611 (= call!8616 (maxPrefixOneRuleZipperSequence!60 thiss!17480 (h!8508 rules!1920) (seqFromList!512 (originalCharacters!610 (h!8509 tokens!465)))))))

(declare-fun b!186761 () Bool)

(declare-fun e!114257 () Bool)

(declare-fun e!114256 () Bool)

(assert (=> b!186761 (= e!114257 e!114256)))

(declare-fun res!85121 () Bool)

(assert (=> b!186761 (=> (not res!85121) (not e!114256))))

(declare-fun lt!62705 () Option!413)

(declare-fun get!889 (Option!413) tuple2!3142)

(declare-fun maxPrefixZipper!59 (LexerInterface!453 List!3121 List!3120) Option!412)

(assert (=> b!186761 (= res!85121 (= (_1!1787 (get!889 lt!62705)) (_1!1785 (get!887 (maxPrefixZipper!59 thiss!17480 rules!1920 (list!1145 (seqFromList!512 (originalCharacters!610 (h!8509 tokens!465)))))))))))

(declare-fun b!186762 () Bool)

(declare-fun e!114258 () Bool)

(declare-fun e!114260 () Bool)

(assert (=> b!186762 (= e!114258 e!114260)))

(declare-fun res!85118 () Bool)

(assert (=> b!186762 (=> res!85118 e!114260)))

(assert (=> b!186762 (= res!85118 (not (isDefined!264 lt!62705)))))

(declare-fun b!186763 () Bool)

(assert (=> b!186763 (= e!114256 (= (list!1145 (_2!1787 (get!889 lt!62705))) (_2!1785 (get!887 (maxPrefixZipper!59 thiss!17480 rules!1920 (list!1145 (seqFromList!512 (originalCharacters!610 (h!8509 tokens!465)))))))))))

(declare-fun e!114261 () Bool)

(declare-fun b!186764 () Bool)

(assert (=> b!186764 (= e!114261 (= (list!1145 (_2!1787 (get!889 lt!62705))) (_2!1785 (get!887 (maxPrefix!183 thiss!17480 rules!1920 (list!1145 (seqFromList!512 (originalCharacters!610 (h!8509 tokens!465)))))))))))

(declare-fun d!47069 () Bool)

(assert (=> d!47069 e!114258))

(declare-fun res!85122 () Bool)

(assert (=> d!47069 (=> (not res!85122) (not e!114258))))

(assert (=> d!47069 (= res!85122 (= (isDefined!264 lt!62705) (isDefined!263 (maxPrefixZipper!59 thiss!17480 rules!1920 (list!1145 (seqFromList!512 (originalCharacters!610 (h!8509 tokens!465))))))))))

(declare-fun e!114259 () Option!413)

(assert (=> d!47069 (= lt!62705 e!114259)))

(declare-fun c!36097 () Bool)

(assert (=> d!47069 (= c!36097 (and ((_ is Cons!3111) rules!1920) ((_ is Nil!3111) (t!28635 rules!1920))))))

(declare-fun lt!62711 () Unit!2888)

(declare-fun lt!62707 () Unit!2888)

(assert (=> d!47069 (= lt!62711 lt!62707)))

(declare-fun lt!62710 () List!3120)

(declare-fun lt!62709 () List!3120)

(assert (=> d!47069 (isPrefix!263 lt!62710 lt!62709)))

(assert (=> d!47069 (= lt!62707 (lemmaIsPrefixRefl!155 lt!62710 lt!62709))))

(assert (=> d!47069 (= lt!62709 (list!1145 (seqFromList!512 (originalCharacters!610 (h!8509 tokens!465)))))))

(assert (=> d!47069 (= lt!62710 (list!1145 (seqFromList!512 (originalCharacters!610 (h!8509 tokens!465)))))))

(assert (=> d!47069 (rulesValidInductive!144 thiss!17480 rules!1920)))

(assert (=> d!47069 (= (maxPrefixZipperSequence!146 thiss!17480 rules!1920 (seqFromList!512 (originalCharacters!610 (h!8509 tokens!465)))) lt!62705)))

(declare-fun b!186765 () Bool)

(declare-fun res!85120 () Bool)

(assert (=> b!186765 (=> (not res!85120) (not e!114258))))

(assert (=> b!186765 (= res!85120 e!114257)))

(declare-fun res!85117 () Bool)

(assert (=> b!186765 (=> res!85117 e!114257)))

(assert (=> b!186765 (= res!85117 (not (isDefined!264 lt!62705)))))

(declare-fun b!186766 () Bool)

(declare-fun lt!62708 () Option!413)

(declare-fun lt!62706 () Option!413)

(assert (=> b!186766 (= e!114259 (ite (and ((_ is None!412) lt!62708) ((_ is None!412) lt!62706)) None!412 (ite ((_ is None!412) lt!62706) lt!62708 (ite ((_ is None!412) lt!62708) lt!62706 (ite (>= (size!2515 (_1!1787 (v!13911 lt!62708))) (size!2515 (_1!1787 (v!13911 lt!62706)))) lt!62708 lt!62706)))))))

(assert (=> b!186766 (= lt!62708 call!8616)))

(assert (=> b!186766 (= lt!62706 (maxPrefixZipperSequence!146 thiss!17480 (t!28635 rules!1920) (seqFromList!512 (originalCharacters!610 (h!8509 tokens!465)))))))

(declare-fun b!186767 () Bool)

(assert (=> b!186767 (= e!114259 call!8616)))

(declare-fun b!186768 () Bool)

(assert (=> b!186768 (= e!114260 e!114261)))

(declare-fun res!85119 () Bool)

(assert (=> b!186768 (=> (not res!85119) (not e!114261))))

(assert (=> b!186768 (= res!85119 (= (_1!1787 (get!889 lt!62705)) (_1!1785 (get!887 (maxPrefix!183 thiss!17480 rules!1920 (list!1145 (seqFromList!512 (originalCharacters!610 (h!8509 tokens!465)))))))))))

(assert (= (and d!47069 c!36097) b!186767))

(assert (= (and d!47069 (not c!36097)) b!186766))

(assert (= (or b!186767 b!186766) bm!8611))

(assert (= (and d!47069 res!85122) b!186765))

(assert (= (and b!186765 (not res!85117)) b!186761))

(assert (= (and b!186761 res!85121) b!186763))

(assert (= (and b!186765 res!85120) b!186762))

(assert (= (and b!186762 (not res!85118)) b!186768))

(assert (= (and b!186768 res!85119) b!186764))

(declare-fun m!191259 () Bool)

(assert (=> b!186768 m!191259))

(assert (=> b!186768 m!190125))

(declare-fun m!191261 () Bool)

(assert (=> b!186768 m!191261))

(assert (=> b!186768 m!191261))

(declare-fun m!191263 () Bool)

(assert (=> b!186768 m!191263))

(assert (=> b!186768 m!191263))

(declare-fun m!191265 () Bool)

(assert (=> b!186768 m!191265))

(assert (=> b!186766 m!190125))

(declare-fun m!191267 () Bool)

(assert (=> b!186766 m!191267))

(assert (=> b!186763 m!191261))

(declare-fun m!191269 () Bool)

(assert (=> b!186763 m!191269))

(declare-fun m!191271 () Bool)

(assert (=> b!186763 m!191271))

(assert (=> b!186763 m!191269))

(declare-fun m!191273 () Bool)

(assert (=> b!186763 m!191273))

(assert (=> b!186763 m!190125))

(assert (=> b!186763 m!191261))

(assert (=> b!186763 m!191259))

(assert (=> d!47069 m!191261))

(assert (=> d!47069 m!191269))

(assert (=> d!47069 m!191269))

(declare-fun m!191275 () Bool)

(assert (=> d!47069 m!191275))

(declare-fun m!191277 () Bool)

(assert (=> d!47069 m!191277))

(declare-fun m!191279 () Bool)

(assert (=> d!47069 m!191279))

(assert (=> d!47069 m!190125))

(assert (=> d!47069 m!191261))

(assert (=> d!47069 m!190647))

(declare-fun m!191281 () Bool)

(assert (=> d!47069 m!191281))

(assert (=> b!186762 m!191279))

(assert (=> b!186764 m!191263))

(assert (=> b!186764 m!191265))

(assert (=> b!186764 m!191271))

(assert (=> b!186764 m!191261))

(assert (=> b!186764 m!191263))

(assert (=> b!186764 m!190125))

(assert (=> b!186764 m!191261))

(assert (=> b!186764 m!191259))

(assert (=> b!186761 m!191259))

(assert (=> b!186761 m!190125))

(assert (=> b!186761 m!191261))

(assert (=> b!186761 m!191261))

(assert (=> b!186761 m!191269))

(assert (=> b!186761 m!191269))

(assert (=> b!186761 m!191273))

(assert (=> bm!8611 m!190125))

(declare-fun m!191283 () Bool)

(assert (=> bm!8611 m!191283))

(assert (=> b!186765 m!191279))

(assert (=> b!186040 d!47069))

(declare-fun d!47071 () Bool)

(assert (=> d!47071 (= (seqFromList!512 (originalCharacters!610 (h!8509 tokens!465))) (fromListB!201 (originalCharacters!610 (h!8509 tokens!465))))))

(declare-fun bs!18577 () Bool)

(assert (= bs!18577 d!47071))

(declare-fun m!191285 () Bool)

(assert (=> bs!18577 m!191285))

(assert (=> b!186040 d!47071))

(declare-fun d!47073 () Bool)

(assert (=> d!47073 (dynLambda!1288 lambda!5602 (h!8509 tokens!465))))

(declare-fun lt!62714 () Unit!2888)

(declare-fun choose!1917 (List!3122 Int Token!878) Unit!2888)

(assert (=> d!47073 (= lt!62714 (choose!1917 tokens!465 lambda!5602 (h!8509 tokens!465)))))

(declare-fun e!114264 () Bool)

(assert (=> d!47073 e!114264))

(declare-fun res!85125 () Bool)

(assert (=> d!47073 (=> (not res!85125) (not e!114264))))

(assert (=> d!47073 (= res!85125 (forall!645 tokens!465 lambda!5602))))

(assert (=> d!47073 (= (forallContained!134 tokens!465 lambda!5602 (h!8509 tokens!465)) lt!62714)))

(declare-fun b!186771 () Bool)

(declare-fun contains!506 (List!3122 Token!878) Bool)

(assert (=> b!186771 (= e!114264 (contains!506 tokens!465 (h!8509 tokens!465)))))

(assert (= (and d!47073 res!85125) b!186771))

(declare-fun b_lambda!4539 () Bool)

(assert (=> (not b_lambda!4539) (not d!47073)))

(declare-fun m!191287 () Bool)

(assert (=> d!47073 m!191287))

(declare-fun m!191289 () Bool)

(assert (=> d!47073 m!191289))

(declare-fun m!191291 () Bool)

(assert (=> d!47073 m!191291))

(declare-fun m!191293 () Bool)

(assert (=> b!186771 m!191293))

(assert (=> b!186040 d!47073))

(declare-fun d!47075 () Bool)

(assert (=> d!47075 (= (seqFromList!511 (t!28636 tokens!465)) (fromListB!200 (t!28636 tokens!465)))))

(declare-fun bs!18578 () Bool)

(assert (= bs!18578 d!47075))

(declare-fun m!191295 () Bool)

(assert (=> bs!18578 m!191295))

(assert (=> b!186019 d!47075))

(declare-fun d!47077 () Bool)

(assert (=> d!47077 (= (list!1145 (charsOf!222 separatorToken!170)) (list!1149 (c!35965 (charsOf!222 separatorToken!170))))))

(declare-fun bs!18579 () Bool)

(assert (= bs!18579 d!47077))

(declare-fun m!191297 () Bool)

(assert (=> bs!18579 m!191297))

(assert (=> b!186019 d!47077))

(declare-fun e!114266 () List!3120)

(declare-fun b!186773 () Bool)

(assert (=> b!186773 (= e!114266 (Cons!3110 (h!8507 (++!738 lt!62330 lt!62329)) (++!738 (t!28634 (++!738 lt!62330 lt!62329)) lt!62333)))))

(declare-fun e!114265 () Bool)

(declare-fun b!186775 () Bool)

(declare-fun lt!62715 () List!3120)

(assert (=> b!186775 (= e!114265 (or (not (= lt!62333 Nil!3110)) (= lt!62715 (++!738 lt!62330 lt!62329))))))

(declare-fun b!186772 () Bool)

(assert (=> b!186772 (= e!114266 lt!62333)))

(declare-fun d!47079 () Bool)

(assert (=> d!47079 e!114265))

(declare-fun res!85127 () Bool)

(assert (=> d!47079 (=> (not res!85127) (not e!114265))))

(assert (=> d!47079 (= res!85127 (= (content!425 lt!62715) ((_ map or) (content!425 (++!738 lt!62330 lt!62329)) (content!425 lt!62333))))))

(assert (=> d!47079 (= lt!62715 e!114266)))

(declare-fun c!36098 () Bool)

(assert (=> d!47079 (= c!36098 ((_ is Nil!3110) (++!738 lt!62330 lt!62329)))))

(assert (=> d!47079 (= (++!738 (++!738 lt!62330 lt!62329) lt!62333) lt!62715)))

(declare-fun b!186774 () Bool)

(declare-fun res!85126 () Bool)

(assert (=> b!186774 (=> (not res!85126) (not e!114265))))

(assert (=> b!186774 (= res!85126 (= (size!2521 lt!62715) (+ (size!2521 (++!738 lt!62330 lt!62329)) (size!2521 lt!62333))))))

(assert (= (and d!47079 c!36098) b!186772))

(assert (= (and d!47079 (not c!36098)) b!186773))

(assert (= (and d!47079 res!85127) b!186774))

(assert (= (and b!186774 res!85126) b!186775))

(declare-fun m!191299 () Bool)

(assert (=> b!186773 m!191299))

(declare-fun m!191301 () Bool)

(assert (=> d!47079 m!191301))

(assert (=> d!47079 m!190189))

(declare-fun m!191303 () Bool)

(assert (=> d!47079 m!191303))

(assert (=> d!47079 m!190683))

(declare-fun m!191305 () Bool)

(assert (=> b!186774 m!191305))

(assert (=> b!186774 m!190189))

(declare-fun m!191307 () Bool)

(assert (=> b!186774 m!191307))

(assert (=> b!186774 m!190687))

(assert (=> b!186019 d!47079))

(declare-fun b!186777 () Bool)

(declare-fun e!114268 () List!3120)

(assert (=> b!186777 (= e!114268 (Cons!3110 (h!8507 lt!62330) (++!738 (t!28634 lt!62330) lt!62329)))))

(declare-fun e!114267 () Bool)

(declare-fun b!186779 () Bool)

(declare-fun lt!62716 () List!3120)

(assert (=> b!186779 (= e!114267 (or (not (= lt!62329 Nil!3110)) (= lt!62716 lt!62330)))))

(declare-fun b!186776 () Bool)

(assert (=> b!186776 (= e!114268 lt!62329)))

(declare-fun d!47081 () Bool)

(assert (=> d!47081 e!114267))

(declare-fun res!85129 () Bool)

(assert (=> d!47081 (=> (not res!85129) (not e!114267))))

(assert (=> d!47081 (= res!85129 (= (content!425 lt!62716) ((_ map or) (content!425 lt!62330) (content!425 lt!62329))))))

(assert (=> d!47081 (= lt!62716 e!114268)))

(declare-fun c!36099 () Bool)

(assert (=> d!47081 (= c!36099 ((_ is Nil!3110) lt!62330))))

(assert (=> d!47081 (= (++!738 lt!62330 lt!62329) lt!62716)))

(declare-fun b!186778 () Bool)

(declare-fun res!85128 () Bool)

(assert (=> b!186778 (=> (not res!85128) (not e!114267))))

(assert (=> b!186778 (= res!85128 (= (size!2521 lt!62716) (+ (size!2521 lt!62330) (size!2521 lt!62329))))))

(assert (= (and d!47081 c!36099) b!186776))

(assert (= (and d!47081 (not c!36099)) b!186777))

(assert (= (and d!47081 res!85129) b!186778))

(assert (= (and b!186778 res!85128) b!186779))

(declare-fun m!191309 () Bool)

(assert (=> b!186777 m!191309))

(declare-fun m!191311 () Bool)

(assert (=> d!47081 m!191311))

(assert (=> d!47081 m!190681))

(declare-fun m!191313 () Bool)

(assert (=> d!47081 m!191313))

(declare-fun m!191315 () Bool)

(assert (=> b!186778 m!191315))

(assert (=> b!186778 m!190669))

(declare-fun m!191317 () Bool)

(assert (=> b!186778 m!191317))

(assert (=> b!186019 d!47081))

(declare-fun bs!18580 () Bool)

(declare-fun b!186782 () Bool)

(assert (= bs!18580 (and b!186782 b!186578)))

(declare-fun lambda!5637 () Int)

(assert (=> bs!18580 (= lambda!5637 lambda!5630)))

(declare-fun bs!18581 () Bool)

(assert (= bs!18581 (and b!186782 d!46869)))

(assert (=> bs!18581 (= lambda!5637 lambda!5612)))

(declare-fun bs!18582 () Bool)

(assert (= bs!18582 (and b!186782 b!186734)))

(assert (=> bs!18582 (= lambda!5637 lambda!5636)))

(declare-fun bs!18583 () Bool)

(assert (= bs!18583 (and b!186782 b!186010)))

(assert (=> bs!18583 (not (= lambda!5637 lambda!5601))))

(declare-fun bs!18584 () Bool)

(assert (= bs!18584 (and b!186782 b!186040)))

(assert (=> bs!18584 (= lambda!5637 lambda!5602)))

(declare-fun bs!18585 () Bool)

(assert (= bs!18585 (and b!186782 d!47001)))

(assert (=> bs!18585 (not (= lambda!5637 lambda!5629))))

(declare-fun b!186792 () Bool)

(declare-fun e!114276 () Bool)

(assert (=> b!186792 (= e!114276 true)))

(declare-fun b!186791 () Bool)

(declare-fun e!114275 () Bool)

(assert (=> b!186791 (= e!114275 e!114276)))

(declare-fun b!186790 () Bool)

(declare-fun e!114274 () Bool)

(assert (=> b!186790 (= e!114274 e!114275)))

(assert (=> b!186782 e!114274))

(assert (= b!186791 b!186792))

(assert (= b!186790 b!186791))

(assert (= (and b!186782 ((_ is Cons!3111) rules!1920)) b!186790))

(assert (=> b!186792 (< (dynLambda!1283 order!1877 (toValue!1238 (transformation!567 (h!8508 rules!1920)))) (dynLambda!1284 order!1879 lambda!5637))))

(assert (=> b!186792 (< (dynLambda!1285 order!1881 (toChars!1097 (transformation!567 (h!8508 rules!1920)))) (dynLambda!1284 order!1879 lambda!5637))))

(assert (=> b!186782 true))

(declare-fun b!186781 () Bool)

(declare-fun e!114269 () List!3120)

(assert (=> b!186781 (= e!114269 Nil!3110)))

(assert (=> b!186781 (= (print!184 thiss!17480 (singletonSeq!119 (h!8509 (t!28636 tokens!465)))) (printTailRec!147 thiss!17480 (singletonSeq!119 (h!8509 (t!28636 tokens!465))) 0 (BalanceConc!1921 Empty!956)))))

(declare-fun lt!62718 () Unit!2888)

(declare-fun Unit!2902 () Unit!2888)

(assert (=> b!186781 (= lt!62718 Unit!2902)))

(declare-fun lt!62719 () List!3120)

(declare-fun call!8619 () List!3120)

(declare-fun lt!62717 () Unit!2888)

(assert (=> b!186781 (= lt!62717 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!54 thiss!17480 rules!1920 call!8619 lt!62719))))

(assert (=> b!186781 false))

(declare-fun lt!62722 () Unit!2888)

(declare-fun Unit!2903 () Unit!2888)

(assert (=> b!186781 (= lt!62722 Unit!2903)))

(declare-fun bm!8612 () Bool)

(declare-fun c!36101 () Bool)

(declare-fun c!36102 () Bool)

(assert (=> bm!8612 (= c!36101 c!36102)))

(declare-fun e!114273 () List!3120)

(declare-fun call!8620 () List!3120)

(assert (=> bm!8612 (= call!8620 (++!738 e!114273 (ite c!36102 lt!62719 call!8619)))))

(declare-fun e!114272 () List!3120)

(declare-fun e!114271 () List!3120)

(assert (=> b!186782 (= e!114272 e!114271)))

(declare-fun lt!62721 () Unit!2888)

(assert (=> b!186782 (= lt!62721 (forallContained!134 (t!28636 tokens!465) lambda!5637 (h!8509 (t!28636 tokens!465))))))

(assert (=> b!186782 (= lt!62719 (printWithSeparatorTokenWhenNeededList!146 thiss!17480 rules!1920 (t!28636 (t!28636 tokens!465)) separatorToken!170))))

(declare-fun lt!62720 () Option!412)

(assert (=> b!186782 (= lt!62720 (maxPrefix!183 thiss!17480 rules!1920 (++!738 (list!1145 (charsOf!222 (h!8509 (t!28636 tokens!465)))) lt!62719)))))

(assert (=> b!186782 (= c!36102 (and ((_ is Some!411) lt!62720) (= (_1!1785 (v!13910 lt!62720)) (h!8509 (t!28636 tokens!465)))))))

(declare-fun call!8618 () List!3120)

(declare-fun e!114270 () BalanceConc!1920)

(declare-fun call!8621 () BalanceConc!1920)

(declare-fun bm!8613 () Bool)

(assert (=> bm!8613 (= call!8618 (list!1145 (ite c!36102 call!8621 e!114270)))))

(declare-fun b!186783 () Bool)

(assert (=> b!186783 (= e!114272 Nil!3110)))

(declare-fun bm!8614 () Bool)

(declare-fun call!8617 () BalanceConc!1920)

(assert (=> bm!8614 (= call!8617 call!8621)))

(declare-fun b!186784 () Bool)

(assert (=> b!186784 (= e!114273 (list!1145 call!8617))))

(declare-fun bm!8615 () Bool)

(assert (=> bm!8615 (= call!8621 (charsOf!222 (h!8509 (t!28636 tokens!465))))))

(declare-fun bm!8616 () Bool)

(assert (=> bm!8616 (= call!8619 call!8618)))

(declare-fun c!36100 () Bool)

(declare-fun c!36104 () Bool)

(assert (=> bm!8616 (= c!36100 c!36104)))

(declare-fun b!186785 () Bool)

(assert (=> b!186785 (= e!114270 call!8617)))

(declare-fun b!186780 () Bool)

(assert (=> b!186780 (= e!114271 call!8620)))

(declare-fun d!47083 () Bool)

(declare-fun c!36103 () Bool)

(assert (=> d!47083 (= c!36103 ((_ is Cons!3112) (t!28636 tokens!465)))))

(assert (=> d!47083 (= (printWithSeparatorTokenWhenNeededList!146 thiss!17480 rules!1920 (t!28636 tokens!465) separatorToken!170) e!114272)))

(declare-fun b!186786 () Bool)

(assert (=> b!186786 (= c!36104 (and ((_ is Some!411) lt!62720) (not (= (_1!1785 (v!13910 lt!62720)) (h!8509 (t!28636 tokens!465))))))))

(assert (=> b!186786 (= e!114271 e!114269)))

(declare-fun b!186787 () Bool)

(assert (=> b!186787 (= e!114269 (++!738 call!8620 lt!62719))))

(declare-fun b!186788 () Bool)

(assert (=> b!186788 (= e!114273 call!8618)))

(declare-fun b!186789 () Bool)

(assert (=> b!186789 (= e!114270 (charsOf!222 separatorToken!170))))

(assert (= (and d!47083 c!36103) b!186782))

(assert (= (and d!47083 (not c!36103)) b!186783))

(assert (= (and b!186782 c!36102) b!186780))

(assert (= (and b!186782 (not c!36102)) b!186786))

(assert (= (and b!186786 c!36104) b!186787))

(assert (= (and b!186786 (not c!36104)) b!186781))

(assert (= (or b!186787 b!186781) bm!8614))

(assert (= (or b!186787 b!186781) bm!8616))

(assert (= (and bm!8616 c!36100) b!186789))

(assert (= (and bm!8616 (not c!36100)) b!186785))

(assert (= (or b!186780 bm!8614) bm!8615))

(assert (= (or b!186780 bm!8616) bm!8613))

(assert (= (or b!186780 b!186787) bm!8612))

(assert (= (and bm!8612 c!36101) b!186788))

(assert (= (and bm!8612 (not c!36101)) b!186784))

(declare-fun m!191319 () Bool)

(assert (=> bm!8615 m!191319))

(declare-fun m!191321 () Bool)

(assert (=> b!186781 m!191321))

(assert (=> b!186781 m!191321))

(declare-fun m!191323 () Bool)

(assert (=> b!186781 m!191323))

(assert (=> b!186781 m!191321))

(declare-fun m!191325 () Bool)

(assert (=> b!186781 m!191325))

(declare-fun m!191327 () Bool)

(assert (=> b!186781 m!191327))

(declare-fun m!191329 () Bool)

(assert (=> bm!8612 m!191329))

(assert (=> b!186789 m!190175))

(assert (=> b!186782 m!191319))

(declare-fun m!191331 () Bool)

(assert (=> b!186782 m!191331))

(declare-fun m!191333 () Bool)

(assert (=> b!186782 m!191333))

(declare-fun m!191335 () Bool)

(assert (=> b!186782 m!191335))

(declare-fun m!191337 () Bool)

(assert (=> b!186782 m!191337))

(assert (=> b!186782 m!191333))

(assert (=> b!186782 m!191319))

(assert (=> b!186782 m!191337))

(declare-fun m!191339 () Bool)

(assert (=> b!186782 m!191339))

(declare-fun m!191341 () Bool)

(assert (=> bm!8613 m!191341))

(declare-fun m!191343 () Bool)

(assert (=> b!186784 m!191343))

(declare-fun m!191345 () Bool)

(assert (=> b!186787 m!191345))

(assert (=> b!186019 d!47083))

(declare-fun b!186794 () Bool)

(declare-fun e!114278 () List!3120)

(assert (=> b!186794 (= e!114278 (Cons!3110 (h!8507 lt!62329) (++!738 (t!28634 lt!62329) lt!62333)))))

(declare-fun e!114277 () Bool)

(declare-fun lt!62723 () List!3120)

(declare-fun b!186796 () Bool)

(assert (=> b!186796 (= e!114277 (or (not (= lt!62333 Nil!3110)) (= lt!62723 lt!62329)))))

(declare-fun b!186793 () Bool)

(assert (=> b!186793 (= e!114278 lt!62333)))

(declare-fun d!47085 () Bool)

(assert (=> d!47085 e!114277))

(declare-fun res!85131 () Bool)

(assert (=> d!47085 (=> (not res!85131) (not e!114277))))

(assert (=> d!47085 (= res!85131 (= (content!425 lt!62723) ((_ map or) (content!425 lt!62329) (content!425 lt!62333))))))

(assert (=> d!47085 (= lt!62723 e!114278)))

(declare-fun c!36105 () Bool)

(assert (=> d!47085 (= c!36105 ((_ is Nil!3110) lt!62329))))

(assert (=> d!47085 (= (++!738 lt!62329 lt!62333) lt!62723)))

(declare-fun b!186795 () Bool)

(declare-fun res!85130 () Bool)

(assert (=> b!186795 (=> (not res!85130) (not e!114277))))

(assert (=> b!186795 (= res!85130 (= (size!2521 lt!62723) (+ (size!2521 lt!62329) (size!2521 lt!62333))))))

(assert (= (and d!47085 c!36105) b!186793))

(assert (= (and d!47085 (not c!36105)) b!186794))

(assert (= (and d!47085 res!85131) b!186795))

(assert (= (and b!186795 res!85130) b!186796))

(declare-fun m!191347 () Bool)

(assert (=> b!186794 m!191347))

(declare-fun m!191349 () Bool)

(assert (=> d!47085 m!191349))

(assert (=> d!47085 m!191313))

(assert (=> d!47085 m!190683))

(declare-fun m!191351 () Bool)

(assert (=> b!186795 m!191351))

(assert (=> b!186795 m!191317))

(assert (=> b!186795 m!190687))

(assert (=> b!186019 d!47085))

(declare-fun bs!18586 () Bool)

(declare-fun d!47087 () Bool)

(assert (= bs!18586 (and d!47087 b!186578)))

(declare-fun lambda!5638 () Int)

(assert (=> bs!18586 (not (= lambda!5638 lambda!5630))))

(declare-fun bs!18587 () Bool)

(assert (= bs!18587 (and d!47087 d!46869)))

(assert (=> bs!18587 (not (= lambda!5638 lambda!5612))))

(declare-fun bs!18588 () Bool)

(assert (= bs!18588 (and d!47087 b!186734)))

(assert (=> bs!18588 (not (= lambda!5638 lambda!5636))))

(declare-fun bs!18589 () Bool)

(assert (= bs!18589 (and d!47087 b!186010)))

(assert (=> bs!18589 (= lambda!5638 lambda!5601)))

(declare-fun bs!18590 () Bool)

(assert (= bs!18590 (and d!47087 b!186040)))

(assert (=> bs!18590 (not (= lambda!5638 lambda!5602))))

(declare-fun bs!18591 () Bool)

(assert (= bs!18591 (and d!47087 d!47001)))

(assert (=> bs!18591 (= lambda!5638 lambda!5629)))

(declare-fun bs!18592 () Bool)

(assert (= bs!18592 (and d!47087 b!186782)))

(assert (=> bs!18592 (not (= lambda!5638 lambda!5637))))

(declare-fun bs!18593 () Bool)

(declare-fun b!186804 () Bool)

(assert (= bs!18593 (and b!186804 b!186578)))

(declare-fun lambda!5639 () Int)

(assert (=> bs!18593 (= lambda!5639 lambda!5630)))

(declare-fun bs!18594 () Bool)

(assert (= bs!18594 (and b!186804 d!46869)))

(assert (=> bs!18594 (= lambda!5639 lambda!5612)))

(declare-fun bs!18595 () Bool)

(assert (= bs!18595 (and b!186804 d!47087)))

(assert (=> bs!18595 (not (= lambda!5639 lambda!5638))))

(declare-fun bs!18596 () Bool)

(assert (= bs!18596 (and b!186804 b!186734)))

(assert (=> bs!18596 (= lambda!5639 lambda!5636)))

(declare-fun bs!18597 () Bool)

(assert (= bs!18597 (and b!186804 b!186010)))

(assert (=> bs!18597 (not (= lambda!5639 lambda!5601))))

(declare-fun bs!18598 () Bool)

(assert (= bs!18598 (and b!186804 b!186040)))

(assert (=> bs!18598 (= lambda!5639 lambda!5602)))

(declare-fun bs!18599 () Bool)

(assert (= bs!18599 (and b!186804 d!47001)))

(assert (=> bs!18599 (not (= lambda!5639 lambda!5629))))

(declare-fun bs!18600 () Bool)

(assert (= bs!18600 (and b!186804 b!186782)))

(assert (=> bs!18600 (= lambda!5639 lambda!5637)))

(declare-fun b!186808 () Bool)

(declare-fun e!114287 () Bool)

(assert (=> b!186808 (= e!114287 true)))

(declare-fun b!186807 () Bool)

(declare-fun e!114286 () Bool)

(assert (=> b!186807 (= e!114286 e!114287)))

(declare-fun b!186806 () Bool)

(declare-fun e!114285 () Bool)

(assert (=> b!186806 (= e!114285 e!114286)))

(assert (=> b!186804 e!114285))

(assert (= b!186807 b!186808))

(assert (= b!186806 b!186807))

(assert (= (and b!186804 ((_ is Cons!3111) rules!1920)) b!186806))

(assert (=> b!186808 (< (dynLambda!1283 order!1877 (toValue!1238 (transformation!567 (h!8508 rules!1920)))) (dynLambda!1284 order!1879 lambda!5639))))

(assert (=> b!186808 (< (dynLambda!1285 order!1881 (toChars!1097 (transformation!567 (h!8508 rules!1920)))) (dynLambda!1284 order!1879 lambda!5639))))

(assert (=> b!186804 true))

(declare-fun bm!8617 () Bool)

(declare-fun call!8626 () Token!878)

(assert (=> bm!8617 (= call!8626 (apply!474 (seqFromList!511 (t!28636 tokens!465)) 0))))

(declare-fun b!186797 () Bool)

(declare-fun e!114282 () BalanceConc!1920)

(declare-fun call!8622 () BalanceConc!1920)

(assert (=> b!186797 (= e!114282 call!8622)))

(declare-fun b!186798 () Bool)

(declare-fun e!114280 () Bool)

(declare-fun lt!62730 () Option!413)

(assert (=> b!186798 (= e!114280 (not (= (_1!1787 (v!13911 lt!62730)) call!8626)))))

(declare-fun c!36106 () Bool)

(declare-fun call!8623 () BalanceConc!1920)

(declare-fun call!8625 () Token!878)

(declare-fun bm!8618 () Bool)

(assert (=> bm!8618 (= call!8623 (charsOf!222 (ite c!36106 call!8626 call!8625)))))

(declare-fun call!8624 () BalanceConc!1920)

(declare-fun bm!8619 () Bool)

(declare-fun lt!62724 () BalanceConc!1920)

(assert (=> bm!8619 (= call!8622 (++!740 call!8623 (ite c!36106 lt!62724 call!8624)))))

(declare-fun b!186799 () Bool)

(declare-fun e!114283 () Bool)

(assert (=> b!186799 (= e!114283 (= (_1!1787 (v!13911 lt!62730)) (apply!474 (seqFromList!511 (t!28636 tokens!465)) 0)))))

(declare-fun b!186800 () Bool)

(declare-fun e!114284 () BalanceConc!1920)

(assert (=> b!186800 (= e!114284 (++!740 call!8622 lt!62724))))

(declare-fun b!186801 () Bool)

(declare-fun e!114281 () BalanceConc!1920)

(assert (=> b!186801 (= e!114281 (BalanceConc!1921 Empty!956))))

(declare-fun lt!62734 () BalanceConc!1920)

(assert (=> d!47087 (= (list!1145 lt!62734) (printWithSeparatorTokenWhenNeededList!146 thiss!17480 rules!1920 (dropList!106 (seqFromList!511 (t!28636 tokens!465)) 0) separatorToken!170))))

(assert (=> d!47087 (= lt!62734 e!114281)))

(declare-fun c!36107 () Bool)

(assert (=> d!47087 (= c!36107 (>= 0 (size!2518 (seqFromList!511 (t!28636 tokens!465)))))))

(declare-fun lt!62728 () Unit!2888)

(assert (=> d!47087 (= lt!62728 (lemmaContentSubsetPreservesForall!50 (list!1148 (seqFromList!511 (t!28636 tokens!465))) (dropList!106 (seqFromList!511 (t!28636 tokens!465)) 0) lambda!5638))))

(declare-fun e!114279 () Bool)

(assert (=> d!47087 e!114279))

(declare-fun res!85132 () Bool)

(assert (=> d!47087 (=> (not res!85132) (not e!114279))))

(assert (=> d!47087 (= res!85132 (>= 0 0))))

(assert (=> d!47087 (= (printWithSeparatorTokenWhenNeededRec!136 thiss!17480 rules!1920 (seqFromList!511 (t!28636 tokens!465)) separatorToken!170 0) lt!62734)))

(declare-fun b!186802 () Bool)

(assert (=> b!186802 (= e!114284 (BalanceConc!1921 Empty!956))))

(assert (=> b!186802 (= (print!184 thiss!17480 (singletonSeq!119 call!8625)) (printTailRec!147 thiss!17480 (singletonSeq!119 call!8625) 0 (BalanceConc!1921 Empty!956)))))

(declare-fun lt!62733 () Unit!2888)

(declare-fun Unit!2904 () Unit!2888)

(assert (=> b!186802 (= lt!62733 Unit!2904)))

(declare-fun lt!62737 () Unit!2888)

(assert (=> b!186802 (= lt!62737 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!54 thiss!17480 rules!1920 (list!1145 call!8624) (list!1145 lt!62724)))))

(assert (=> b!186802 false))

(declare-fun lt!62735 () Unit!2888)

(declare-fun Unit!2905 () Unit!2888)

(assert (=> b!186802 (= lt!62735 Unit!2905)))

(declare-fun b!186803 () Bool)

(assert (=> b!186803 (= e!114279 (<= 0 (size!2518 (seqFromList!511 (t!28636 tokens!465)))))))

(declare-fun bm!8620 () Bool)

(assert (=> bm!8620 (= call!8625 call!8626)))

(assert (=> b!186804 (= e!114281 e!114282)))

(declare-fun lt!62725 () List!3122)

(assert (=> b!186804 (= lt!62725 (list!1148 (seqFromList!511 (t!28636 tokens!465))))))

(declare-fun lt!62727 () Unit!2888)

(assert (=> b!186804 (= lt!62727 (lemmaDropApply!146 lt!62725 0))))

(assert (=> b!186804 (= (head!652 (drop!159 lt!62725 0)) (apply!475 lt!62725 0))))

(declare-fun lt!62726 () Unit!2888)

(assert (=> b!186804 (= lt!62726 lt!62727)))

(declare-fun lt!62732 () List!3122)

(assert (=> b!186804 (= lt!62732 (list!1148 (seqFromList!511 (t!28636 tokens!465))))))

(declare-fun lt!62731 () Unit!2888)

(assert (=> b!186804 (= lt!62731 (lemmaDropTail!138 lt!62732 0))))

(assert (=> b!186804 (= (tail!378 (drop!159 lt!62732 0)) (drop!159 lt!62732 (+ 0 1)))))

(declare-fun lt!62729 () Unit!2888)

(assert (=> b!186804 (= lt!62729 lt!62731)))

(declare-fun lt!62736 () Unit!2888)

(assert (=> b!186804 (= lt!62736 (forallContained!134 (list!1148 (seqFromList!511 (t!28636 tokens!465))) lambda!5639 (apply!474 (seqFromList!511 (t!28636 tokens!465)) 0)))))

(assert (=> b!186804 (= lt!62724 (printWithSeparatorTokenWhenNeededRec!136 thiss!17480 rules!1920 (seqFromList!511 (t!28636 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!186804 (= lt!62730 (maxPrefixZipperSequence!146 thiss!17480 rules!1920 (++!740 (charsOf!222 (apply!474 (seqFromList!511 (t!28636 tokens!465)) 0)) lt!62724)))))

(declare-fun res!85133 () Bool)

(assert (=> b!186804 (= res!85133 ((_ is Some!412) lt!62730))))

(assert (=> b!186804 (=> (not res!85133) (not e!114283))))

(assert (=> b!186804 (= c!36106 e!114283)))

(declare-fun bm!8621 () Bool)

(declare-fun c!36108 () Bool)

(assert (=> bm!8621 (= call!8624 (charsOf!222 (ite c!36108 separatorToken!170 call!8625)))))

(declare-fun b!186805 () Bool)

(assert (=> b!186805 (= c!36108 e!114280)))

(declare-fun res!85134 () Bool)

(assert (=> b!186805 (=> (not res!85134) (not e!114280))))

(assert (=> b!186805 (= res!85134 ((_ is Some!412) lt!62730))))

(assert (=> b!186805 (= e!114282 e!114284)))

(assert (= (and d!47087 res!85132) b!186803))

(assert (= (and d!47087 c!36107) b!186801))

(assert (= (and d!47087 (not c!36107)) b!186804))

(assert (= (and b!186804 res!85133) b!186799))

(assert (= (and b!186804 c!36106) b!186797))

(assert (= (and b!186804 (not c!36106)) b!186805))

(assert (= (and b!186805 res!85134) b!186798))

(assert (= (and b!186805 c!36108) b!186800))

(assert (= (and b!186805 (not c!36108)) b!186802))

(assert (= (or b!186800 b!186802) bm!8620))

(assert (= (or b!186800 b!186802) bm!8621))

(assert (= (or b!186797 bm!8620 b!186798) bm!8617))

(assert (= (or b!186797 b!186800) bm!8618))

(assert (= (or b!186797 b!186800) bm!8619))

(declare-fun m!191353 () Bool)

(assert (=> bm!8619 m!191353))

(declare-fun m!191355 () Bool)

(assert (=> b!186802 m!191355))

(declare-fun m!191357 () Bool)

(assert (=> b!186802 m!191357))

(declare-fun m!191359 () Bool)

(assert (=> b!186802 m!191359))

(declare-fun m!191361 () Bool)

(assert (=> b!186802 m!191361))

(assert (=> b!186802 m!191359))

(declare-fun m!191363 () Bool)

(assert (=> b!186802 m!191363))

(assert (=> b!186802 m!191355))

(declare-fun m!191365 () Bool)

(assert (=> b!186802 m!191365))

(assert (=> b!186802 m!191355))

(assert (=> b!186802 m!191361))

(assert (=> d!47087 m!190181))

(declare-fun m!191367 () Bool)

(assert (=> d!47087 m!191367))

(declare-fun m!191369 () Bool)

(assert (=> d!47087 m!191369))

(assert (=> d!47087 m!191367))

(declare-fun m!191371 () Bool)

(assert (=> d!47087 m!191371))

(declare-fun m!191373 () Bool)

(assert (=> d!47087 m!191373))

(assert (=> d!47087 m!191367))

(declare-fun m!191375 () Bool)

(assert (=> d!47087 m!191375))

(assert (=> d!47087 m!190181))

(assert (=> d!47087 m!191369))

(assert (=> d!47087 m!190181))

(declare-fun m!191377 () Bool)

(assert (=> d!47087 m!191377))

(declare-fun m!191379 () Bool)

(assert (=> bm!8621 m!191379))

(declare-fun m!191381 () Bool)

(assert (=> b!186804 m!191381))

(declare-fun m!191383 () Bool)

(assert (=> b!186804 m!191383))

(declare-fun m!191385 () Bool)

(assert (=> b!186804 m!191385))

(assert (=> b!186804 m!190181))

(assert (=> b!186804 m!191381))

(declare-fun m!191387 () Bool)

(assert (=> b!186804 m!191387))

(declare-fun m!191389 () Bool)

(assert (=> b!186804 m!191389))

(declare-fun m!191391 () Bool)

(assert (=> b!186804 m!191391))

(declare-fun m!191393 () Bool)

(assert (=> b!186804 m!191393))

(assert (=> b!186804 m!191369))

(assert (=> b!186804 m!191381))

(declare-fun m!191395 () Bool)

(assert (=> b!186804 m!191395))

(assert (=> b!186804 m!190181))

(assert (=> b!186804 m!191369))

(declare-fun m!191397 () Bool)

(assert (=> b!186804 m!191397))

(declare-fun m!191399 () Bool)

(assert (=> b!186804 m!191399))

(declare-fun m!191401 () Bool)

(assert (=> b!186804 m!191401))

(assert (=> b!186804 m!191383))

(assert (=> b!186804 m!191389))

(assert (=> b!186804 m!191397))

(assert (=> b!186804 m!190181))

(declare-fun m!191403 () Bool)

(assert (=> b!186804 m!191403))

(assert (=> b!186804 m!191401))

(declare-fun m!191405 () Bool)

(assert (=> b!186804 m!191405))

(declare-fun m!191407 () Bool)

(assert (=> b!186804 m!191407))

(declare-fun m!191409 () Bool)

(assert (=> bm!8618 m!191409))

(declare-fun m!191411 () Bool)

(assert (=> b!186800 m!191411))

(assert (=> b!186803 m!190181))

(assert (=> b!186803 m!191377))

(assert (=> bm!8617 m!190181))

(assert (=> bm!8617 m!191381))

(assert (=> b!186799 m!190181))

(assert (=> b!186799 m!191381))

(assert (=> b!186019 d!47087))

(declare-fun d!47089 () Bool)

(declare-fun lt!62740 () BalanceConc!1920)

(assert (=> d!47089 (= (list!1145 lt!62740) (originalCharacters!610 separatorToken!170))))

(assert (=> d!47089 (= lt!62740 (dynLambda!1289 (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))) (value!20475 separatorToken!170)))))

(assert (=> d!47089 (= (charsOf!222 separatorToken!170) lt!62740)))

(declare-fun b_lambda!4541 () Bool)

(assert (=> (not b_lambda!4541) (not d!47089)))

(assert (=> d!47089 t!28656))

(declare-fun b_and!12855 () Bool)

(assert (= b_and!12823 (and (=> t!28656 result!10584) b_and!12855)))

(assert (=> d!47089 t!28658))

(declare-fun b_and!12857 () Bool)

(assert (= b_and!12825 (and (=> t!28658 result!10588) b_and!12857)))

(assert (=> d!47089 t!28660))

(declare-fun b_and!12859 () Bool)

(assert (= b_and!12827 (and (=> t!28660 result!10590) b_and!12859)))

(declare-fun m!191413 () Bool)

(assert (=> d!47089 m!191413))

(assert (=> d!47089 m!190695))

(assert (=> b!186019 d!47089))

(declare-fun b!186810 () Bool)

(declare-fun e!114289 () List!3120)

(assert (=> b!186810 (= e!114289 (Cons!3110 (h!8507 lt!62330) (++!738 (t!28634 lt!62330) lt!62324)))))

(declare-fun lt!62741 () List!3120)

(declare-fun e!114288 () Bool)

(declare-fun b!186812 () Bool)

(assert (=> b!186812 (= e!114288 (or (not (= lt!62324 Nil!3110)) (= lt!62741 lt!62330)))))

(declare-fun b!186809 () Bool)

(assert (=> b!186809 (= e!114289 lt!62324)))

(declare-fun d!47091 () Bool)

(assert (=> d!47091 e!114288))

(declare-fun res!85136 () Bool)

(assert (=> d!47091 (=> (not res!85136) (not e!114288))))

(assert (=> d!47091 (= res!85136 (= (content!425 lt!62741) ((_ map or) (content!425 lt!62330) (content!425 lt!62324))))))

(assert (=> d!47091 (= lt!62741 e!114289)))

(declare-fun c!36109 () Bool)

(assert (=> d!47091 (= c!36109 ((_ is Nil!3110) lt!62330))))

(assert (=> d!47091 (= (++!738 lt!62330 lt!62324) lt!62741)))

(declare-fun b!186811 () Bool)

(declare-fun res!85135 () Bool)

(assert (=> b!186811 (=> (not res!85135) (not e!114288))))

(assert (=> b!186811 (= res!85135 (= (size!2521 lt!62741) (+ (size!2521 lt!62330) (size!2521 lt!62324))))))

(assert (= (and d!47091 c!36109) b!186809))

(assert (= (and d!47091 (not c!36109)) b!186810))

(assert (= (and d!47091 res!85136) b!186811))

(assert (= (and b!186811 res!85135) b!186812))

(declare-fun m!191415 () Bool)

(assert (=> b!186810 m!191415))

(declare-fun m!191417 () Bool)

(assert (=> d!47091 m!191417))

(assert (=> d!47091 m!190681))

(declare-fun m!191419 () Bool)

(assert (=> d!47091 m!191419))

(declare-fun m!191421 () Bool)

(assert (=> b!186811 m!191421))

(assert (=> b!186811 m!190669))

(assert (=> b!186811 m!190771))

(assert (=> b!186019 d!47091))

(declare-fun d!47093 () Bool)

(assert (=> d!47093 (= (list!1145 (charsOf!222 (h!8509 tokens!465))) (list!1149 (c!35965 (charsOf!222 (h!8509 tokens!465)))))))

(declare-fun bs!18601 () Bool)

(assert (= bs!18601 d!47093))

(declare-fun m!191423 () Bool)

(assert (=> bs!18601 m!191423))

(assert (=> b!186019 d!47093))

(declare-fun d!47095 () Bool)

(declare-fun lt!62742 () BalanceConc!1920)

(assert (=> d!47095 (= (list!1145 lt!62742) (originalCharacters!610 (h!8509 tokens!465)))))

(assert (=> d!47095 (= lt!62742 (dynLambda!1289 (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))) (value!20475 (h!8509 tokens!465))))))

(assert (=> d!47095 (= (charsOf!222 (h!8509 tokens!465)) lt!62742)))

(declare-fun b_lambda!4543 () Bool)

(assert (=> (not b_lambda!4543) (not d!47095)))

(declare-fun t!28691 () Bool)

(declare-fun tb!7723 () Bool)

(assert (=> (and b!186021 (= (toChars!1097 (transformation!567 (h!8508 rules!1920))) (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465))))) t!28691) tb!7723))

(declare-fun b!186813 () Bool)

(declare-fun e!114290 () Bool)

(declare-fun tp!87591 () Bool)

(assert (=> b!186813 (= e!114290 (and (inv!3945 (c!35965 (dynLambda!1289 (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))) (value!20475 (h!8509 tokens!465))))) tp!87591))))

(declare-fun result!10614 () Bool)

(assert (=> tb!7723 (= result!10614 (and (inv!3946 (dynLambda!1289 (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))) (value!20475 (h!8509 tokens!465)))) e!114290))))

(assert (= tb!7723 b!186813))

(declare-fun m!191425 () Bool)

(assert (=> b!186813 m!191425))

(declare-fun m!191427 () Bool)

(assert (=> tb!7723 m!191427))

(assert (=> d!47095 t!28691))

(declare-fun b_and!12861 () Bool)

(assert (= b_and!12855 (and (=> t!28691 result!10614) b_and!12861)))

(declare-fun t!28693 () Bool)

(declare-fun tb!7725 () Bool)

(assert (=> (and b!186020 (= (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))) (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465))))) t!28693) tb!7725))

(declare-fun result!10616 () Bool)

(assert (= result!10616 result!10614))

(assert (=> d!47095 t!28693))

(declare-fun b_and!12863 () Bool)

(assert (= b_and!12857 (and (=> t!28693 result!10616) b_and!12863)))

(declare-fun t!28695 () Bool)

(declare-fun tb!7727 () Bool)

(assert (=> (and b!186038 (= (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))) (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465))))) t!28695) tb!7727))

(declare-fun result!10618 () Bool)

(assert (= result!10618 result!10614))

(assert (=> d!47095 t!28695))

(declare-fun b_and!12865 () Bool)

(assert (= b_and!12859 (and (=> t!28695 result!10618) b_and!12865)))

(declare-fun m!191429 () Bool)

(assert (=> d!47095 m!191429))

(declare-fun m!191431 () Bool)

(assert (=> d!47095 m!191431))

(assert (=> b!186019 d!47095))

(declare-fun d!47097 () Bool)

(assert (=> d!47097 (= (list!1145 (printWithSeparatorTokenWhenNeededRec!136 thiss!17480 rules!1920 (seqFromList!511 (t!28636 tokens!465)) separatorToken!170 0)) (list!1149 (c!35965 (printWithSeparatorTokenWhenNeededRec!136 thiss!17480 rules!1920 (seqFromList!511 (t!28636 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!18602 () Bool)

(assert (= bs!18602 d!47097))

(declare-fun m!191433 () Bool)

(assert (=> bs!18602 m!191433))

(assert (=> b!186019 d!47097))

(declare-fun d!47099 () Bool)

(assert (=> d!47099 (= (++!738 (++!738 lt!62330 lt!62329) lt!62333) (++!738 lt!62330 (++!738 lt!62329 lt!62333)))))

(declare-fun lt!62745 () Unit!2888)

(declare-fun choose!1918 (List!3120 List!3120 List!3120) Unit!2888)

(assert (=> d!47099 (= lt!62745 (choose!1918 lt!62330 lt!62329 lt!62333))))

(assert (=> d!47099 (= (lemmaConcatAssociativity!256 lt!62330 lt!62329 lt!62333) lt!62745)))

(declare-fun bs!18603 () Bool)

(assert (= bs!18603 d!47099))

(declare-fun m!191435 () Bool)

(assert (=> bs!18603 m!191435))

(assert (=> bs!18603 m!190189))

(assert (=> bs!18603 m!190195))

(assert (=> bs!18603 m!190177))

(declare-fun m!191437 () Bool)

(assert (=> bs!18603 m!191437))

(assert (=> bs!18603 m!190177))

(assert (=> bs!18603 m!190189))

(assert (=> b!186019 d!47099))

(declare-fun d!47101 () Bool)

(assert (=> d!47101 (= (inv!3938 (tag!745 (rule!1082 separatorToken!170))) (= (mod (str.len (value!20474 (tag!745 (rule!1082 separatorToken!170)))) 2) 0))))

(assert (=> b!186017 d!47101))

(declare-fun d!47103 () Bool)

(declare-fun res!85137 () Bool)

(declare-fun e!114291 () Bool)

(assert (=> d!47103 (=> (not res!85137) (not e!114291))))

(assert (=> d!47103 (= res!85137 (semiInverseModEq!197 (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))) (toValue!1238 (transformation!567 (rule!1082 separatorToken!170)))))))

(assert (=> d!47103 (= (inv!3941 (transformation!567 (rule!1082 separatorToken!170))) e!114291)))

(declare-fun b!186814 () Bool)

(assert (=> b!186814 (= e!114291 (equivClasses!180 (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))) (toValue!1238 (transformation!567 (rule!1082 separatorToken!170)))))))

(assert (= (and d!47103 res!85137) b!186814))

(declare-fun m!191439 () Bool)

(assert (=> d!47103 m!191439))

(declare-fun m!191441 () Bool)

(assert (=> b!186814 m!191441))

(assert (=> b!186017 d!47103))

(declare-fun d!47105 () Bool)

(declare-fun res!85138 () Bool)

(declare-fun e!114292 () Bool)

(assert (=> d!47105 (=> (not res!85138) (not e!114292))))

(assert (=> d!47105 (= res!85138 (not (isEmpty!1481 (originalCharacters!610 (h!8509 tokens!465)))))))

(assert (=> d!47105 (= (inv!3942 (h!8509 tokens!465)) e!114292)))

(declare-fun b!186815 () Bool)

(declare-fun res!85139 () Bool)

(assert (=> b!186815 (=> (not res!85139) (not e!114292))))

(assert (=> b!186815 (= res!85139 (= (originalCharacters!610 (h!8509 tokens!465)) (list!1145 (dynLambda!1289 (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))) (value!20475 (h!8509 tokens!465))))))))

(declare-fun b!186816 () Bool)

(assert (=> b!186816 (= e!114292 (= (size!2515 (h!8509 tokens!465)) (size!2521 (originalCharacters!610 (h!8509 tokens!465)))))))

(assert (= (and d!47105 res!85138) b!186815))

(assert (= (and b!186815 res!85139) b!186816))

(declare-fun b_lambda!4545 () Bool)

(assert (=> (not b_lambda!4545) (not b!186815)))

(assert (=> b!186815 t!28691))

(declare-fun b_and!12867 () Bool)

(assert (= b_and!12861 (and (=> t!28691 result!10614) b_and!12867)))

(assert (=> b!186815 t!28693))

(declare-fun b_and!12869 () Bool)

(assert (= b_and!12863 (and (=> t!28693 result!10616) b_and!12869)))

(assert (=> b!186815 t!28695))

(declare-fun b_and!12871 () Bool)

(assert (= b_and!12865 (and (=> t!28695 result!10618) b_and!12871)))

(declare-fun m!191443 () Bool)

(assert (=> d!47105 m!191443))

(assert (=> b!186815 m!191431))

(assert (=> b!186815 m!191431))

(declare-fun m!191445 () Bool)

(assert (=> b!186815 m!191445))

(declare-fun m!191447 () Bool)

(assert (=> b!186816 m!191447))

(assert (=> b!186018 d!47105))

(declare-fun bs!18604 () Bool)

(declare-fun d!47107 () Bool)

(assert (= bs!18604 (and d!47107 b!186578)))

(declare-fun lambda!5642 () Int)

(assert (=> bs!18604 (= lambda!5642 lambda!5630)))

(declare-fun bs!18605 () Bool)

(assert (= bs!18605 (and d!47107 d!46869)))

(assert (=> bs!18605 (= lambda!5642 lambda!5612)))

(declare-fun bs!18606 () Bool)

(assert (= bs!18606 (and d!47107 b!186804)))

(assert (=> bs!18606 (= lambda!5642 lambda!5639)))

(declare-fun bs!18607 () Bool)

(assert (= bs!18607 (and d!47107 d!47087)))

(assert (=> bs!18607 (not (= lambda!5642 lambda!5638))))

(declare-fun bs!18608 () Bool)

(assert (= bs!18608 (and d!47107 b!186734)))

(assert (=> bs!18608 (= lambda!5642 lambda!5636)))

(declare-fun bs!18609 () Bool)

(assert (= bs!18609 (and d!47107 b!186010)))

(assert (=> bs!18609 (not (= lambda!5642 lambda!5601))))

(declare-fun bs!18610 () Bool)

(assert (= bs!18610 (and d!47107 b!186040)))

(assert (=> bs!18610 (= lambda!5642 lambda!5602)))

(declare-fun bs!18611 () Bool)

(assert (= bs!18611 (and d!47107 d!47001)))

(assert (=> bs!18611 (not (= lambda!5642 lambda!5629))))

(declare-fun bs!18612 () Bool)

(assert (= bs!18612 (and d!47107 b!186782)))

(assert (=> bs!18612 (= lambda!5642 lambda!5637)))

(declare-fun b!186825 () Bool)

(declare-fun e!114301 () Bool)

(assert (=> b!186825 (= e!114301 true)))

(declare-fun b!186824 () Bool)

(declare-fun e!114300 () Bool)

(assert (=> b!186824 (= e!114300 e!114301)))

(declare-fun b!186823 () Bool)

(declare-fun e!114299 () Bool)

(assert (=> b!186823 (= e!114299 e!114300)))

(assert (=> d!47107 e!114299))

(assert (= b!186824 b!186825))

(assert (= b!186823 b!186824))

(assert (= (and d!47107 ((_ is Cons!3111) rules!1920)) b!186823))

(assert (=> b!186825 (< (dynLambda!1283 order!1877 (toValue!1238 (transformation!567 (h!8508 rules!1920)))) (dynLambda!1284 order!1879 lambda!5642))))

(assert (=> b!186825 (< (dynLambda!1285 order!1881 (toChars!1097 (transformation!567 (h!8508 rules!1920)))) (dynLambda!1284 order!1879 lambda!5642))))

(assert (=> d!47107 true))

(declare-fun lt!62748 () Bool)

(assert (=> d!47107 (= lt!62748 (forall!645 tokens!465 lambda!5642))))

(declare-fun e!114297 () Bool)

(assert (=> d!47107 (= lt!62748 e!114297)))

(declare-fun res!85144 () Bool)

(assert (=> d!47107 (=> res!85144 e!114297)))

(assert (=> d!47107 (= res!85144 (not ((_ is Cons!3112) tokens!465)))))

(assert (=> d!47107 (not (isEmpty!1480 rules!1920))))

(assert (=> d!47107 (= (rulesProduceEachTokenIndividuallyList!143 thiss!17480 rules!1920 tokens!465) lt!62748)))

(declare-fun b!186821 () Bool)

(declare-fun e!114298 () Bool)

(assert (=> b!186821 (= e!114297 e!114298)))

(declare-fun res!85145 () Bool)

(assert (=> b!186821 (=> (not res!85145) (not e!114298))))

(assert (=> b!186821 (= res!85145 (rulesProduceIndividualToken!202 thiss!17480 rules!1920 (h!8509 tokens!465)))))

(declare-fun b!186822 () Bool)

(assert (=> b!186822 (= e!114298 (rulesProduceEachTokenIndividuallyList!143 thiss!17480 rules!1920 (t!28636 tokens!465)))))

(assert (= (and d!47107 (not res!85144)) b!186821))

(assert (= (and b!186821 res!85145) b!186822))

(declare-fun m!191449 () Bool)

(assert (=> d!47107 m!191449))

(assert (=> d!47107 m!190225))

(assert (=> b!186821 m!190201))

(declare-fun m!191451 () Bool)

(assert (=> b!186822 m!191451))

(assert (=> b!186037 d!47107))

(declare-fun d!47109 () Bool)

(declare-fun lt!62749 () Bool)

(declare-fun e!114303 () Bool)

(assert (=> d!47109 (= lt!62749 e!114303)))

(declare-fun res!85147 () Bool)

(assert (=> d!47109 (=> (not res!85147) (not e!114303))))

(assert (=> d!47109 (= res!85147 (= (list!1148 (_1!1786 (lex!253 thiss!17480 rules!1920 (print!184 thiss!17480 (singletonSeq!119 (h!8509 tokens!465)))))) (list!1148 (singletonSeq!119 (h!8509 tokens!465)))))))

(declare-fun e!114302 () Bool)

(assert (=> d!47109 (= lt!62749 e!114302)))

(declare-fun res!85146 () Bool)

(assert (=> d!47109 (=> (not res!85146) (not e!114302))))

(declare-fun lt!62750 () tuple2!3140)

(assert (=> d!47109 (= res!85146 (= (size!2518 (_1!1786 lt!62750)) 1))))

(assert (=> d!47109 (= lt!62750 (lex!253 thiss!17480 rules!1920 (print!184 thiss!17480 (singletonSeq!119 (h!8509 tokens!465)))))))

(assert (=> d!47109 (not (isEmpty!1480 rules!1920))))

(assert (=> d!47109 (= (rulesProduceIndividualToken!202 thiss!17480 rules!1920 (h!8509 tokens!465)) lt!62749)))

(declare-fun b!186826 () Bool)

(declare-fun res!85148 () Bool)

(assert (=> b!186826 (=> (not res!85148) (not e!114302))))

(assert (=> b!186826 (= res!85148 (= (apply!474 (_1!1786 lt!62750) 0) (h!8509 tokens!465)))))

(declare-fun b!186827 () Bool)

(assert (=> b!186827 (= e!114302 (isEmpty!1485 (_2!1786 lt!62750)))))

(declare-fun b!186828 () Bool)

(assert (=> b!186828 (= e!114303 (isEmpty!1485 (_2!1786 (lex!253 thiss!17480 rules!1920 (print!184 thiss!17480 (singletonSeq!119 (h!8509 tokens!465)))))))))

(assert (= (and d!47109 res!85146) b!186826))

(assert (= (and b!186826 res!85148) b!186827))

(assert (= (and d!47109 res!85147) b!186828))

(assert (=> d!47109 m!191237))

(declare-fun m!191453 () Bool)

(assert (=> d!47109 m!191453))

(declare-fun m!191455 () Bool)

(assert (=> d!47109 m!191455))

(assert (=> d!47109 m!190165))

(declare-fun m!191457 () Bool)

(assert (=> d!47109 m!191457))

(assert (=> d!47109 m!190165))

(assert (=> d!47109 m!191237))

(assert (=> d!47109 m!190225))

(declare-fun m!191459 () Bool)

(assert (=> d!47109 m!191459))

(assert (=> d!47109 m!190165))

(declare-fun m!191461 () Bool)

(assert (=> b!186826 m!191461))

(declare-fun m!191463 () Bool)

(assert (=> b!186827 m!191463))

(assert (=> b!186828 m!190165))

(assert (=> b!186828 m!190165))

(assert (=> b!186828 m!191237))

(assert (=> b!186828 m!191237))

(assert (=> b!186828 m!191453))

(declare-fun m!191465 () Bool)

(assert (=> b!186828 m!191465))

(assert (=> b!186015 d!47109))

(declare-fun b!186833 () Bool)

(declare-fun e!114306 () Bool)

(declare-fun tp_is_empty!1691 () Bool)

(declare-fun tp!87594 () Bool)

(assert (=> b!186833 (= e!114306 (and tp_is_empty!1691 tp!87594))))

(assert (=> b!186024 (= tp!87516 e!114306)))

(assert (= (and b!186024 ((_ is Cons!3110) (originalCharacters!610 (h!8509 tokens!465)))) b!186833))

(declare-fun b!186834 () Bool)

(declare-fun e!114307 () Bool)

(declare-fun tp!87595 () Bool)

(assert (=> b!186834 (= e!114307 (and tp_is_empty!1691 tp!87595))))

(assert (=> b!186033 (= tp!87521 e!114307)))

(assert (= (and b!186033 ((_ is Cons!3110) (originalCharacters!610 separatorToken!170))) b!186834))

(declare-fun b!186837 () Bool)

(declare-fun e!114310 () Bool)

(assert (=> b!186837 (= e!114310 true)))

(declare-fun b!186836 () Bool)

(declare-fun e!114309 () Bool)

(assert (=> b!186836 (= e!114309 e!114310)))

(declare-fun b!186835 () Bool)

(declare-fun e!114308 () Bool)

(assert (=> b!186835 (= e!114308 e!114309)))

(assert (=> b!186052 e!114308))

(assert (= b!186836 b!186837))

(assert (= b!186835 b!186836))

(assert (= (and b!186052 ((_ is Cons!3111) (t!28635 rules!1920))) b!186835))

(assert (=> b!186837 (< (dynLambda!1283 order!1877 (toValue!1238 (transformation!567 (h!8508 (t!28635 rules!1920))))) (dynLambda!1284 order!1879 lambda!5602))))

(assert (=> b!186837 (< (dynLambda!1285 order!1881 (toChars!1097 (transformation!567 (h!8508 (t!28635 rules!1920))))) (dynLambda!1284 order!1879 lambda!5602))))

(declare-fun b!186849 () Bool)

(declare-fun e!114313 () Bool)

(declare-fun tp!87608 () Bool)

(declare-fun tp!87607 () Bool)

(assert (=> b!186849 (= e!114313 (and tp!87608 tp!87607))))

(declare-fun b!186851 () Bool)

(declare-fun tp!87606 () Bool)

(declare-fun tp!87609 () Bool)

(assert (=> b!186851 (= e!114313 (and tp!87606 tp!87609))))

(declare-fun b!186848 () Bool)

(assert (=> b!186848 (= e!114313 tp_is_empty!1691)))

(assert (=> b!186022 (= tp!87515 e!114313)))

(declare-fun b!186850 () Bool)

(declare-fun tp!87610 () Bool)

(assert (=> b!186850 (= e!114313 tp!87610)))

(assert (= (and b!186022 ((_ is ElementMatch!791) (regex!567 (h!8508 rules!1920)))) b!186848))

(assert (= (and b!186022 ((_ is Concat!1381) (regex!567 (h!8508 rules!1920)))) b!186849))

(assert (= (and b!186022 ((_ is Star!791) (regex!567 (h!8508 rules!1920)))) b!186850))

(assert (= (and b!186022 ((_ is Union!791) (regex!567 (h!8508 rules!1920)))) b!186851))

(declare-fun b!186853 () Bool)

(declare-fun e!114314 () Bool)

(declare-fun tp!87613 () Bool)

(declare-fun tp!87612 () Bool)

(assert (=> b!186853 (= e!114314 (and tp!87613 tp!87612))))

(declare-fun b!186855 () Bool)

(declare-fun tp!87611 () Bool)

(declare-fun tp!87614 () Bool)

(assert (=> b!186855 (= e!114314 (and tp!87611 tp!87614))))

(declare-fun b!186852 () Bool)

(assert (=> b!186852 (= e!114314 tp_is_empty!1691)))

(assert (=> b!186008 (= tp!87523 e!114314)))

(declare-fun b!186854 () Bool)

(declare-fun tp!87615 () Bool)

(assert (=> b!186854 (= e!114314 tp!87615)))

(assert (= (and b!186008 ((_ is ElementMatch!791) (regex!567 (rule!1082 (h!8509 tokens!465))))) b!186852))

(assert (= (and b!186008 ((_ is Concat!1381) (regex!567 (rule!1082 (h!8509 tokens!465))))) b!186853))

(assert (= (and b!186008 ((_ is Star!791) (regex!567 (rule!1082 (h!8509 tokens!465))))) b!186854))

(assert (= (and b!186008 ((_ is Union!791) (regex!567 (rule!1082 (h!8509 tokens!465))))) b!186855))

(declare-fun b!186857 () Bool)

(declare-fun e!114315 () Bool)

(declare-fun tp!87618 () Bool)

(declare-fun tp!87617 () Bool)

(assert (=> b!186857 (= e!114315 (and tp!87618 tp!87617))))

(declare-fun b!186859 () Bool)

(declare-fun tp!87616 () Bool)

(declare-fun tp!87619 () Bool)

(assert (=> b!186859 (= e!114315 (and tp!87616 tp!87619))))

(declare-fun b!186856 () Bool)

(assert (=> b!186856 (= e!114315 tp_is_empty!1691)))

(assert (=> b!186017 (= tp!87517 e!114315)))

(declare-fun b!186858 () Bool)

(declare-fun tp!87620 () Bool)

(assert (=> b!186858 (= e!114315 tp!87620)))

(assert (= (and b!186017 ((_ is ElementMatch!791) (regex!567 (rule!1082 separatorToken!170)))) b!186856))

(assert (= (and b!186017 ((_ is Concat!1381) (regex!567 (rule!1082 separatorToken!170)))) b!186857))

(assert (= (and b!186017 ((_ is Star!791) (regex!567 (rule!1082 separatorToken!170)))) b!186858))

(assert (= (and b!186017 ((_ is Union!791) (regex!567 (rule!1082 separatorToken!170)))) b!186859))

(declare-fun b!186873 () Bool)

(declare-fun b_free!7317 () Bool)

(declare-fun b_next!7317 () Bool)

(assert (=> b!186873 (= b_free!7317 (not b_next!7317))))

(declare-fun tp!87632 () Bool)

(declare-fun b_and!12873 () Bool)

(assert (=> b!186873 (= tp!87632 b_and!12873)))

(declare-fun b_free!7319 () Bool)

(declare-fun b_next!7319 () Bool)

(assert (=> b!186873 (= b_free!7319 (not b_next!7319))))

(declare-fun tb!7729 () Bool)

(declare-fun t!28699 () Bool)

(assert (=> (and b!186873 (= (toChars!1097 (transformation!567 (rule!1082 (h!8509 (t!28636 tokens!465))))) (toChars!1097 (transformation!567 (rule!1082 separatorToken!170)))) t!28699) tb!7729))

(declare-fun result!10626 () Bool)

(assert (= result!10626 result!10584))

(assert (=> b!186429 t!28699))

(assert (=> d!47089 t!28699))

(declare-fun t!28701 () Bool)

(declare-fun tb!7731 () Bool)

(assert (=> (and b!186873 (= (toChars!1097 (transformation!567 (rule!1082 (h!8509 (t!28636 tokens!465))))) (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465))))) t!28701) tb!7731))

(declare-fun result!10628 () Bool)

(assert (= result!10628 result!10614))

(assert (=> d!47095 t!28701))

(assert (=> b!186815 t!28701))

(declare-fun tp!87633 () Bool)

(declare-fun b_and!12875 () Bool)

(assert (=> b!186873 (= tp!87633 (and (=> t!28699 result!10626) (=> t!28701 result!10628) b_and!12875))))

(declare-fun e!114333 () Bool)

(assert (=> b!186018 (= tp!87519 e!114333)))

(declare-fun e!114331 () Bool)

(assert (=> b!186873 (= e!114331 (and tp!87632 tp!87633))))

(declare-fun tp!87635 () Bool)

(declare-fun b!186870 () Bool)

(declare-fun e!114329 () Bool)

(assert (=> b!186870 (= e!114333 (and (inv!3942 (h!8509 (t!28636 tokens!465))) e!114329 tp!87635))))

(declare-fun e!114332 () Bool)

(declare-fun b!186872 () Bool)

(declare-fun tp!87634 () Bool)

(assert (=> b!186872 (= e!114332 (and tp!87634 (inv!3938 (tag!745 (rule!1082 (h!8509 (t!28636 tokens!465))))) (inv!3941 (transformation!567 (rule!1082 (h!8509 (t!28636 tokens!465))))) e!114331))))

(declare-fun tp!87631 () Bool)

(declare-fun b!186871 () Bool)

(assert (=> b!186871 (= e!114329 (and (inv!21 (value!20475 (h!8509 (t!28636 tokens!465)))) e!114332 tp!87631))))

(assert (= b!186872 b!186873))

(assert (= b!186871 b!186872))

(assert (= b!186870 b!186871))

(assert (= (and b!186018 ((_ is Cons!3112) (t!28636 tokens!465))) b!186870))

(declare-fun m!191467 () Bool)

(assert (=> b!186870 m!191467))

(declare-fun m!191469 () Bool)

(assert (=> b!186872 m!191469))

(declare-fun m!191471 () Bool)

(assert (=> b!186872 m!191471))

(declare-fun m!191473 () Bool)

(assert (=> b!186871 m!191473))

(declare-fun b!186884 () Bool)

(declare-fun b_free!7321 () Bool)

(declare-fun b_next!7321 () Bool)

(assert (=> b!186884 (= b_free!7321 (not b_next!7321))))

(declare-fun tp!87647 () Bool)

(declare-fun b_and!12877 () Bool)

(assert (=> b!186884 (= tp!87647 b_and!12877)))

(declare-fun b_free!7323 () Bool)

(declare-fun b_next!7323 () Bool)

(assert (=> b!186884 (= b_free!7323 (not b_next!7323))))

(declare-fun tb!7733 () Bool)

(declare-fun t!28703 () Bool)

(assert (=> (and b!186884 (= (toChars!1097 (transformation!567 (h!8508 (t!28635 rules!1920)))) (toChars!1097 (transformation!567 (rule!1082 separatorToken!170)))) t!28703) tb!7733))

(declare-fun result!10632 () Bool)

(assert (= result!10632 result!10584))

(assert (=> b!186429 t!28703))

(assert (=> d!47089 t!28703))

(declare-fun tb!7735 () Bool)

(declare-fun t!28705 () Bool)

(assert (=> (and b!186884 (= (toChars!1097 (transformation!567 (h!8508 (t!28635 rules!1920)))) (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465))))) t!28705) tb!7735))

(declare-fun result!10634 () Bool)

(assert (= result!10634 result!10614))

(assert (=> d!47095 t!28705))

(assert (=> b!186815 t!28705))

(declare-fun b_and!12879 () Bool)

(declare-fun tp!87645 () Bool)

(assert (=> b!186884 (= tp!87645 (and (=> t!28703 result!10632) (=> t!28705 result!10634) b_and!12879))))

(declare-fun e!114344 () Bool)

(assert (=> b!186884 (= e!114344 (and tp!87647 tp!87645))))

(declare-fun e!114342 () Bool)

(declare-fun b!186883 () Bool)

(declare-fun tp!87644 () Bool)

(assert (=> b!186883 (= e!114342 (and tp!87644 (inv!3938 (tag!745 (h!8508 (t!28635 rules!1920)))) (inv!3941 (transformation!567 (h!8508 (t!28635 rules!1920)))) e!114344))))

(declare-fun b!186882 () Bool)

(declare-fun e!114343 () Bool)

(declare-fun tp!87646 () Bool)

(assert (=> b!186882 (= e!114343 (and e!114342 tp!87646))))

(assert (=> b!186039 (= tp!87526 e!114343)))

(assert (= b!186883 b!186884))

(assert (= b!186882 b!186883))

(assert (= (and b!186039 ((_ is Cons!3111) (t!28635 rules!1920))) b!186882))

(declare-fun m!191475 () Bool)

(assert (=> b!186883 m!191475))

(declare-fun m!191477 () Bool)

(assert (=> b!186883 m!191477))

(declare-fun b_lambda!4547 () Bool)

(assert (= b_lambda!4515 (or b!186010 b_lambda!4547)))

(declare-fun bs!18613 () Bool)

(declare-fun d!47111 () Bool)

(assert (= bs!18613 (and d!47111 b!186010)))

(assert (=> bs!18613 (= (dynLambda!1288 lambda!5601 (h!8509 tokens!465)) (not (isSeparator!567 (rule!1082 (h!8509 tokens!465)))))))

(assert (=> b!186381 d!47111))

(declare-fun b_lambda!4549 () Bool)

(assert (= b_lambda!4539 (or b!186040 b_lambda!4549)))

(declare-fun bs!18614 () Bool)

(declare-fun d!47113 () Bool)

(assert (= bs!18614 (and d!47113 b!186040)))

(assert (=> bs!18614 (= (dynLambda!1288 lambda!5602 (h!8509 tokens!465)) (rulesProduceIndividualToken!202 thiss!17480 rules!1920 (h!8509 tokens!465)))))

(assert (=> bs!18614 m!190201))

(assert (=> d!47073 d!47113))

(declare-fun b_lambda!4551 () Bool)

(assert (= b_lambda!4543 (or (and b!186020 b_free!7303 (= (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))) (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))))) (and b!186884 b_free!7323 (= (toChars!1097 (transformation!567 (h!8508 (t!28635 rules!1920)))) (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))))) (and b!186038 b_free!7307) (and b!186021 b_free!7299 (= (toChars!1097 (transformation!567 (h!8508 rules!1920))) (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))))) (and b!186873 b_free!7319 (= (toChars!1097 (transformation!567 (rule!1082 (h!8509 (t!28636 tokens!465))))) (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))))) b_lambda!4551)))

(declare-fun b_lambda!4553 () Bool)

(assert (= b_lambda!4541 (or (and b!186884 b_free!7323 (= (toChars!1097 (transformation!567 (h!8508 (t!28635 rules!1920)))) (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))))) (and b!186038 b_free!7307 (= (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))) (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))))) (and b!186021 b_free!7299 (= (toChars!1097 (transformation!567 (h!8508 rules!1920))) (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))))) (and b!186873 b_free!7319 (= (toChars!1097 (transformation!567 (rule!1082 (h!8509 (t!28636 tokens!465))))) (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))))) (and b!186020 b_free!7303) b_lambda!4553)))

(declare-fun b_lambda!4555 () Bool)

(assert (= b_lambda!4517 (or (and b!186884 b_free!7323 (= (toChars!1097 (transformation!567 (h!8508 (t!28635 rules!1920)))) (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))))) (and b!186038 b_free!7307 (= (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))) (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))))) (and b!186021 b_free!7299 (= (toChars!1097 (transformation!567 (h!8508 rules!1920))) (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))))) (and b!186873 b_free!7319 (= (toChars!1097 (transformation!567 (rule!1082 (h!8509 (t!28636 tokens!465))))) (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))))) (and b!186020 b_free!7303) b_lambda!4555)))

(declare-fun b_lambda!4557 () Bool)

(assert (= b_lambda!4545 (or (and b!186020 b_free!7303 (= (toChars!1097 (transformation!567 (rule!1082 separatorToken!170))) (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))))) (and b!186884 b_free!7323 (= (toChars!1097 (transformation!567 (h!8508 (t!28635 rules!1920)))) (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))))) (and b!186038 b_free!7307) (and b!186021 b_free!7299 (= (toChars!1097 (transformation!567 (h!8508 rules!1920))) (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))))) (and b!186873 b_free!7319 (= (toChars!1097 (transformation!567 (rule!1082 (h!8509 (t!28636 tokens!465))))) (toChars!1097 (transformation!567 (rule!1082 (h!8509 tokens!465)))))) b_lambda!4557)))

(check-sat (not d!46993) (not b!186429) (not b!186521) (not b!186821) (not bm!8528) (not b!186409) (not b_next!7321) (not b!186580) (not b!186853) (not b!186462) (not b_lambda!4553) (not b!186764) (not b!186422) (not b!186442) (not b!186527) (not b!186736) (not d!46991) (not b!186573) (not b!186883) (not b!186457) (not b!186806) (not b!186778) (not b!186444) (not b!186308) (not b!186795) (not bm!8551) (not d!46857) (not bm!8621) (not d!46909) (not bm!8611) (not b_next!7299) (not b_next!7301) (not bm!8604) (not d!46945) (not b!186859) (not bs!18614) (not b!186773) (not b!186761) (not b!186814) (not b!186528) (not b!186365) (not b!186777) (not d!46893) (not d!46869) (not b_next!7305) (not b!186435) (not b!186518) (not d!47067) (not d!46859) (not b!186768) (not b!186401) (not d!47097) (not b!186789) (not b!186826) (not bm!8612) (not b!186733) (not bm!8552) tp_is_empty!1691 (not b!186872) (not bm!8619) (not d!46907) (not b!186833) b_and!12809 (not b!186851) (not b!186307) (not bm!8618) (not b!186456) (not b!186823) (not b!186406) (not b!186578) (not d!47105) (not bm!8607) (not b!186794) (not b!186375) (not b!186858) (not b!186465) (not d!46931) (not d!46953) (not tb!7703) (not b!186781) (not b!186460) (not bm!8550) (not bm!8605) (not b_lambda!4557) (not b!186816) (not b!186813) (not b!186835) (not b!186438) (not b!186343) (not d!46915) (not b!186437) (not b!186827) (not d!47091) (not b!186771) (not b!186787) b_and!12867 (not d!46917) (not bm!8579) (not d!46901) (not b!186404) (not d!47079) (not b!186784) (not b!186292) (not b!186800) (not b!186198) (not b!186516) b_and!12813 (not b_next!7323) (not b!186203) (not b!186454) (not b!186412) (not d!46957) (not b!186405) (not b!186742) (not d!47095) (not d!47103) (not d!46981) (not d!46897) (not b_next!7303) (not tb!7723) (not d!47071) (not b!186882) (not b!186202) (not bm!8582) (not b_lambda!4549) (not b!186822) (not b!186774) (not d!46899) (not bm!8617) (not b!186765) (not b!186423) (not b!186803) (not d!47089) (not d!46905) (not b!186828) (not b!186439) (not d!46941) (not b!186804) b_and!12877 (not b_lambda!4547) (not b!186402) (not d!47107) b_and!12805 (not d!46933) (not b!186834) (not b!186790) (not b!186324) (not b!186799) (not d!47001) (not b!186517) (not b!186291) (not b!186325) (not b!186529) (not b!186458) (not b_lambda!4555) (not b!186459) (not b!186403) (not b!186195) (not b!186850) (not d!47099) (not b!186440) (not d!46951) (not b!186430) (not b!186197) (not b!186382) b_and!12871 (not b!186762) (not d!46927) (not b!186461) (not b_next!7317) (not d!47085) b_and!12873 (not d!47073) (not b_next!7297) (not b!186455) (not b!186577) (not b!186436) (not b!186811) (not d!47081) (not bm!8615) (not b!186305) (not bm!8580) (not bm!8578) (not d!47069) (not d!46999) (not b!186441) (not d!46995) (not b!186326) (not b!186802) (not b!186857) (not b!186855) (not b!186849) (not b!186741) (not b_next!7319) (not b!186810) (not b!186224) (not b!186463) (not b_next!7307) (not b!186576) (not b!186782) (not b!186739) (not b!186734) (not b!186206) (not b!186766) (not b!186854) (not d!47093) (not d!46925) b_and!12879 (not b!186520) (not b!186328) (not b!186815) (not d!47077) b_and!12875 (not d!47075) (not b!186871) (not b!186367) (not b!186574) (not bm!8613) b_and!12869 (not b!186407) (not b_lambda!4551) (not d!47109) (not b!186225) (not b!186370) (not b!186870) (not b!186763) (not d!47087) (not b!186226) (not d!46943))
(check-sat (not b_next!7321) (not b_next!7305) b_and!12809 b_and!12867 b_and!12813 (not b_next!7323) (not b_next!7303) b_and!12877 b_and!12805 (not b_next!7319) (not b_next!7307) b_and!12879 b_and!12875 b_and!12869 (not b_next!7299) (not b_next!7301) b_and!12871 (not b_next!7317) b_and!12873 (not b_next!7297))

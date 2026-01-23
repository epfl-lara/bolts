; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55688 () Bool)

(assert start!55688)

(declare-fun b!592400 () Bool)

(declare-fun b_free!16661 () Bool)

(declare-fun b_next!16677 () Bool)

(assert (=> b!592400 (= b_free!16661 (not b_next!16677))))

(declare-fun tp!184755 () Bool)

(declare-fun b_and!58403 () Bool)

(assert (=> b!592400 (= tp!184755 b_and!58403)))

(declare-fun b_free!16663 () Bool)

(declare-fun b_next!16679 () Bool)

(assert (=> b!592400 (= b_free!16663 (not b_next!16679))))

(declare-fun tp!184756 () Bool)

(declare-fun b_and!58405 () Bool)

(assert (=> b!592400 (= tp!184756 b_and!58405)))

(declare-fun b!592412 () Bool)

(declare-fun b_free!16665 () Bool)

(declare-fun b_next!16681 () Bool)

(assert (=> b!592412 (= b_free!16665 (not b_next!16681))))

(declare-fun tp!184758 () Bool)

(declare-fun b_and!58407 () Bool)

(assert (=> b!592412 (= tp!184758 b_and!58407)))

(declare-fun b_free!16667 () Bool)

(declare-fun b_next!16683 () Bool)

(assert (=> b!592412 (= b_free!16667 (not b_next!16683))))

(declare-fun tp!184753 () Bool)

(declare-fun b_and!58409 () Bool)

(assert (=> b!592412 (= tp!184753 b_and!58409)))

(declare-fun b!592397 () Bool)

(declare-fun e!358277 () Bool)

(declare-fun e!358280 () Bool)

(assert (=> b!592397 (= e!358277 e!358280)))

(declare-fun res!255473 () Bool)

(assert (=> b!592397 (=> (not res!255473) (not e!358280))))

(declare-datatypes ((C!3896 0))(
  ( (C!3897 (val!2174 Int)) )
))
(declare-datatypes ((List!5872 0))(
  ( (Nil!5862) (Cons!5862 (h!11263 C!3896) (t!79095 List!5872)) )
))
(declare-fun lt!251116 () List!5872)

(declare-fun input!2705 () List!5872)

(assert (=> b!592397 (= res!255473 (= lt!251116 input!2705))))

(declare-datatypes ((Regex!1487 0))(
  ( (ElementMatch!1487 (c!110443 C!3896)) (Concat!2664 (regOne!3486 Regex!1487) (regTwo!3486 Regex!1487)) (EmptyExpr!1487) (Star!1487 (reg!1816 Regex!1487)) (EmptyLang!1487) (Union!1487 (regOne!3487 Regex!1487) (regTwo!3487 Regex!1487)) )
))
(declare-datatypes ((List!5873 0))(
  ( (Nil!5863) (Cons!5863 (h!11264 (_ BitVec 16)) (t!79096 List!5873)) )
))
(declare-datatypes ((TokenValue!1177 0))(
  ( (FloatLiteralValue!2354 (text!8684 List!5873)) (TokenValueExt!1176 (__x!4252 Int)) (Broken!5885 (value!37701 List!5873)) (Object!1186) (End!1177) (Def!1177) (Underscore!1177) (Match!1177) (Else!1177) (Error!1177) (Case!1177) (If!1177) (Extends!1177) (Abstract!1177) (Class!1177) (Val!1177) (DelimiterValue!2354 (del!1237 List!5873)) (KeywordValue!1183 (value!37702 List!5873)) (CommentValue!2354 (value!37703 List!5873)) (WhitespaceValue!2354 (value!37704 List!5873)) (IndentationValue!1177 (value!37705 List!5873)) (String!7628) (Int32!1177) (Broken!5886 (value!37706 List!5873)) (Boolean!1178) (Unit!10654) (OperatorValue!1180 (op!1237 List!5873)) (IdentifierValue!2354 (value!37707 List!5873)) (IdentifierValue!2355 (value!37708 List!5873)) (WhitespaceValue!2355 (value!37709 List!5873)) (True!2354) (False!2354) (Broken!5887 (value!37710 List!5873)) (Broken!5888 (value!37711 List!5873)) (True!2355) (RightBrace!1177) (RightBracket!1177) (Colon!1177) (Null!1177) (Comma!1177) (LeftBracket!1177) (False!2355) (LeftBrace!1177) (ImaginaryLiteralValue!1177 (text!8685 List!5873)) (StringLiteralValue!3531 (value!37712 List!5873)) (EOFValue!1177 (value!37713 List!5873)) (IdentValue!1177 (value!37714 List!5873)) (DelimiterValue!2355 (value!37715 List!5873)) (DedentValue!1177 (value!37716 List!5873)) (NewLineValue!1177 (value!37717 List!5873)) (IntegerValue!3531 (value!37718 (_ BitVec 32)) (text!8686 List!5873)) (IntegerValue!3532 (value!37719 Int) (text!8687 List!5873)) (Times!1177) (Or!1177) (Equal!1177) (Minus!1177) (Broken!5889 (value!37720 List!5873)) (And!1177) (Div!1177) (LessEqual!1177) (Mod!1177) (Concat!2665) (Not!1177) (Plus!1177) (SpaceValue!1177 (value!37721 List!5873)) (IntegerValue!3533 (value!37722 Int) (text!8688 List!5873)) (StringLiteralValue!3532 (text!8689 List!5873)) (FloatLiteralValue!2355 (text!8690 List!5873)) (BytesLiteralValue!1177 (value!37723 List!5873)) (CommentValue!2355 (value!37724 List!5873)) (StringLiteralValue!3533 (value!37725 List!5873)) (ErrorTokenValue!1177 (msg!1238 List!5873)) )
))
(declare-datatypes ((String!7629 0))(
  ( (String!7630 (value!37726 String)) )
))
(declare-datatypes ((IArray!3741 0))(
  ( (IArray!3742 (innerList!1928 List!5872)) )
))
(declare-datatypes ((Conc!1870 0))(
  ( (Node!1870 (left!4755 Conc!1870) (right!5085 Conc!1870) (csize!3970 Int) (cheight!2081 Int)) (Leaf!2954 (xs!4507 IArray!3741) (csize!3971 Int)) (Empty!1870) )
))
(declare-datatypes ((BalanceConc!3748 0))(
  ( (BalanceConc!3749 (c!110444 Conc!1870)) )
))
(declare-datatypes ((TokenValueInjection!2122 0))(
  ( (TokenValueInjection!2123 (toValue!2040 Int) (toChars!1899 Int)) )
))
(declare-datatypes ((Rule!2106 0))(
  ( (Rule!2107 (regex!1153 Regex!1487) (tag!1415 String!7629) (isSeparator!1153 Bool) (transformation!1153 TokenValueInjection!2122)) )
))
(declare-datatypes ((Token!2042 0))(
  ( (Token!2043 (value!37727 TokenValue!1177) (rule!1921 Rule!2106) (size!4638 Int) (originalCharacters!1192 List!5872)) )
))
(declare-fun token!491 () Token!2042)

(declare-fun list!2454 (BalanceConc!3748) List!5872)

(declare-fun charsOf!782 (Token!2042) BalanceConc!3748)

(assert (=> b!592397 (= lt!251116 (list!2454 (charsOf!782 token!491)))))

(declare-fun lt!251118 () Int)

(declare-fun b!592399 () Bool)

(declare-fun lt!251106 () List!5872)

(declare-datatypes ((tuple2!6796 0))(
  ( (tuple2!6797 (_1!3662 Token!2042) (_2!3662 List!5872)) )
))
(declare-datatypes ((Option!1504 0))(
  ( (None!1503) (Some!1503 (v!16388 tuple2!6796)) )
))
(declare-fun lt!251104 () Option!1504)

(declare-fun e!358276 () Bool)

(assert (=> b!592399 (= e!358276 (and (= (size!4638 (_1!3662 (v!16388 lt!251104))) lt!251118) (= (originalCharacters!1192 (_1!3662 (v!16388 lt!251104))) lt!251106)))))

(declare-fun e!358281 () Bool)

(assert (=> b!592400 (= e!358281 (and tp!184755 tp!184756))))

(declare-datatypes ((List!5874 0))(
  ( (Nil!5864) (Cons!5864 (h!11265 Rule!2106) (t!79097 List!5874)) )
))
(declare-fun rules!3103 () List!5874)

(declare-fun tp!184759 () Bool)

(declare-fun b!592401 () Bool)

(declare-fun e!358278 () Bool)

(declare-fun inv!7421 (String!7629) Bool)

(declare-fun inv!7424 (TokenValueInjection!2122) Bool)

(assert (=> b!592401 (= e!358278 (and tp!184759 (inv!7421 (tag!1415 (h!11265 rules!3103))) (inv!7424 (transformation!1153 (h!11265 rules!3103))) e!358281))))

(declare-fun b!592402 () Bool)

(declare-datatypes ((Unit!10655 0))(
  ( (Unit!10656) )
))
(declare-fun e!358279 () Unit!10655)

(declare-fun Unit!10657 () Unit!10655)

(assert (=> b!592402 (= e!358279 Unit!10657)))

(assert (=> b!592402 false))

(declare-fun b!592403 () Bool)

(declare-fun res!255476 () Bool)

(assert (=> b!592403 (=> (not res!255476) (not e!358277))))

(declare-fun isEmpty!4233 (List!5872) Bool)

(assert (=> b!592403 (= res!255476 (not (isEmpty!4233 input!2705)))))

(declare-fun b!592404 () Bool)

(declare-fun e!358269 () Bool)

(declare-fun tp_is_empty!3329 () Bool)

(declare-fun tp!184751 () Bool)

(assert (=> b!592404 (= e!358269 (and tp_is_empty!3329 tp!184751))))

(declare-fun b!592405 () Bool)

(declare-fun e!358274 () Bool)

(assert (=> b!592405 (= e!358280 e!358274)))

(declare-fun res!255467 () Bool)

(assert (=> b!592405 (=> (not res!255467) (not e!358274))))

(declare-fun lt!251115 () Option!1504)

(declare-fun isDefined!1315 (Option!1504) Bool)

(assert (=> b!592405 (= res!255467 (isDefined!1315 lt!251115))))

(declare-fun lt!251121 () List!5872)

(declare-datatypes ((LexerInterface!1039 0))(
  ( (LexerInterfaceExt!1036 (__x!4253 Int)) (Lexer!1037) )
))
(declare-fun thiss!22590 () LexerInterface!1039)

(declare-fun maxPrefix!737 (LexerInterface!1039 List!5874 List!5872) Option!1504)

(assert (=> b!592405 (= lt!251115 (maxPrefix!737 thiss!22590 rules!3103 lt!251121))))

(declare-fun suffix!1342 () List!5872)

(declare-fun ++!1641 (List!5872 List!5872) List!5872)

(assert (=> b!592405 (= lt!251121 (++!1641 input!2705 suffix!1342))))

(declare-fun b!592406 () Bool)

(declare-fun res!255472 () Bool)

(assert (=> b!592406 (=> (not res!255472) (not e!358277))))

(declare-fun isEmpty!4234 (List!5874) Bool)

(assert (=> b!592406 (= res!255472 (not (isEmpty!4234 rules!3103)))))

(declare-fun b!592407 () Bool)

(declare-fun res!255474 () Bool)

(assert (=> b!592407 (=> (not res!255474) (not e!358277))))

(declare-fun rulesInvariant!1002 (LexerInterface!1039 List!5874) Bool)

(assert (=> b!592407 (= res!255474 (rulesInvariant!1002 thiss!22590 rules!3103))))

(declare-fun b!592408 () Bool)

(declare-fun Unit!10658 () Unit!10655)

(assert (=> b!592408 (= e!358279 Unit!10658)))

(declare-fun b!592409 () Bool)

(declare-fun e!358270 () Bool)

(assert (=> b!592409 (= e!358274 e!358270)))

(declare-fun res!255466 () Bool)

(assert (=> b!592409 (=> (not res!255466) (not e!358270))))

(declare-fun lt!251109 () tuple2!6796)

(assert (=> b!592409 (= res!255466 (and (= (_1!3662 lt!251109) token!491) (= (_2!3662 lt!251109) suffix!1342)))))

(declare-fun get!2244 (Option!1504) tuple2!6796)

(assert (=> b!592409 (= lt!251109 (get!2244 lt!251115))))

(declare-fun b!592410 () Bool)

(declare-fun e!358271 () Bool)

(declare-fun tp!184760 () Bool)

(assert (=> b!592410 (= e!358271 (and e!358278 tp!184760))))

(declare-fun b!592411 () Bool)

(declare-fun res!255470 () Bool)

(declare-fun e!358265 () Bool)

(assert (=> b!592411 (=> (not res!255470) (not e!358265))))

(assert (=> b!592411 (= res!255470 (= (++!1641 lt!251116 suffix!1342) lt!251121))))

(declare-fun e!358275 () Bool)

(declare-fun b!592398 () Bool)

(declare-fun e!358267 () Bool)

(declare-fun tp!184754 () Bool)

(assert (=> b!592398 (= e!358275 (and tp!184754 (inv!7421 (tag!1415 (rule!1921 token!491))) (inv!7424 (transformation!1153 (rule!1921 token!491))) e!358267))))

(declare-fun res!255469 () Bool)

(assert (=> start!55688 (=> (not res!255469) (not e!358277))))

(get-info :version)

(assert (=> start!55688 (= res!255469 ((_ is Lexer!1037) thiss!22590))))

(assert (=> start!55688 e!358277))

(assert (=> start!55688 e!358269))

(assert (=> start!55688 e!358271))

(declare-fun e!358272 () Bool)

(declare-fun inv!7425 (Token!2042) Bool)

(assert (=> start!55688 (and (inv!7425 token!491) e!358272)))

(assert (=> start!55688 true))

(declare-fun e!358273 () Bool)

(assert (=> start!55688 e!358273))

(assert (=> b!592412 (= e!358267 (and tp!184758 tp!184753))))

(declare-fun b!592413 () Bool)

(assert (=> b!592413 (= e!358270 e!358265)))

(declare-fun res!255475 () Bool)

(assert (=> b!592413 (=> (not res!255475) (not e!358265))))

(assert (=> b!592413 (= res!255475 ((_ is Some!1503) lt!251104))))

(assert (=> b!592413 (= lt!251104 (maxPrefix!737 thiss!22590 rules!3103 input!2705))))

(declare-fun b!592414 () Bool)

(assert (=> b!592414 (= e!358265 (not true))))

(assert (=> b!592414 e!358276))

(declare-fun res!255471 () Bool)

(assert (=> b!592414 (=> (not res!255471) (not e!358276))))

(declare-fun apply!1406 (TokenValueInjection!2122 BalanceConc!3748) TokenValue!1177)

(declare-fun seqFromList!1329 (List!5872) BalanceConc!3748)

(assert (=> b!592414 (= res!255471 (= (value!37727 (_1!3662 (v!16388 lt!251104))) (apply!1406 (transformation!1153 (rule!1921 (_1!3662 (v!16388 lt!251104)))) (seqFromList!1329 lt!251106))))))

(declare-fun lt!251117 () Unit!10655)

(declare-fun lemmaInv!261 (TokenValueInjection!2122) Unit!10655)

(assert (=> b!592414 (= lt!251117 (lemmaInv!261 (transformation!1153 (rule!1921 token!491))))))

(declare-fun lt!251120 () Unit!10655)

(assert (=> b!592414 (= lt!251120 (lemmaInv!261 (transformation!1153 (rule!1921 (_1!3662 (v!16388 lt!251104))))))))

(declare-fun ruleValid!351 (LexerInterface!1039 Rule!2106) Bool)

(assert (=> b!592414 (ruleValid!351 thiss!22590 (rule!1921 token!491))))

(declare-fun lt!251122 () Unit!10655)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!198 (LexerInterface!1039 Rule!2106 List!5874) Unit!10655)

(assert (=> b!592414 (= lt!251122 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!198 thiss!22590 (rule!1921 token!491) rules!3103))))

(assert (=> b!592414 (ruleValid!351 thiss!22590 (rule!1921 (_1!3662 (v!16388 lt!251104))))))

(declare-fun lt!251113 () Unit!10655)

(assert (=> b!592414 (= lt!251113 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!198 thiss!22590 (rule!1921 (_1!3662 (v!16388 lt!251104))) rules!3103))))

(declare-fun isPrefix!781 (List!5872 List!5872) Bool)

(assert (=> b!592414 (isPrefix!781 input!2705 input!2705)))

(declare-fun lt!251111 () Unit!10655)

(declare-fun lemmaIsPrefixRefl!517 (List!5872 List!5872) Unit!10655)

(assert (=> b!592414 (= lt!251111 (lemmaIsPrefixRefl!517 input!2705 input!2705))))

(declare-fun lt!251112 () List!5872)

(assert (=> b!592414 (= (_2!3662 (v!16388 lt!251104)) lt!251112)))

(declare-fun lt!251107 () Unit!10655)

(declare-fun lemmaSamePrefixThenSameSuffix!494 (List!5872 List!5872 List!5872 List!5872 List!5872) Unit!10655)

(assert (=> b!592414 (= lt!251107 (lemmaSamePrefixThenSameSuffix!494 lt!251106 (_2!3662 (v!16388 lt!251104)) lt!251106 lt!251112 input!2705))))

(declare-fun getSuffix!298 (List!5872 List!5872) List!5872)

(assert (=> b!592414 (= lt!251112 (getSuffix!298 input!2705 lt!251106))))

(assert (=> b!592414 (isPrefix!781 lt!251106 (++!1641 lt!251106 (_2!3662 (v!16388 lt!251104))))))

(declare-fun lt!251105 () Unit!10655)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!626 (List!5872 List!5872) Unit!10655)

(assert (=> b!592414 (= lt!251105 (lemmaConcatTwoListThenFirstIsPrefix!626 lt!251106 (_2!3662 (v!16388 lt!251104))))))

(declare-fun lt!251110 () Unit!10655)

(declare-fun lemmaCharactersSize!212 (Token!2042) Unit!10655)

(assert (=> b!592414 (= lt!251110 (lemmaCharactersSize!212 token!491))))

(declare-fun lt!251108 () Unit!10655)

(assert (=> b!592414 (= lt!251108 (lemmaCharactersSize!212 (_1!3662 (v!16388 lt!251104))))))

(declare-fun lt!251119 () Unit!10655)

(assert (=> b!592414 (= lt!251119 e!358279)))

(declare-fun c!110442 () Bool)

(declare-fun size!4639 (List!5872) Int)

(assert (=> b!592414 (= c!110442 (> lt!251118 (size!4639 lt!251116)))))

(assert (=> b!592414 (= lt!251118 (size!4639 lt!251106))))

(assert (=> b!592414 (= lt!251106 (list!2454 (charsOf!782 (_1!3662 (v!16388 lt!251104)))))))

(assert (=> b!592414 (= lt!251104 (Some!1503 (v!16388 lt!251104)))))

(declare-fun lt!251114 () Unit!10655)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!226 (List!5872 List!5872 List!5872 List!5872) Unit!10655)

(assert (=> b!592414 (= lt!251114 (lemmaConcatSameAndSameSizesThenSameLists!226 lt!251116 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!592415 () Bool)

(declare-fun tp!184757 () Bool)

(assert (=> b!592415 (= e!358273 (and tp_is_empty!3329 tp!184757))))

(declare-fun tp!184752 () Bool)

(declare-fun b!592416 () Bool)

(declare-fun inv!21 (TokenValue!1177) Bool)

(assert (=> b!592416 (= e!358272 (and (inv!21 (value!37727 token!491)) e!358275 tp!184752))))

(declare-fun b!592417 () Bool)

(declare-fun res!255468 () Bool)

(assert (=> b!592417 (=> (not res!255468) (not e!358276))))

(assert (=> b!592417 (= res!255468 (= (size!4638 (_1!3662 (v!16388 lt!251104))) (size!4639 (originalCharacters!1192 (_1!3662 (v!16388 lt!251104))))))))

(assert (= (and start!55688 res!255469) b!592406))

(assert (= (and b!592406 res!255472) b!592407))

(assert (= (and b!592407 res!255474) b!592403))

(assert (= (and b!592403 res!255476) b!592397))

(assert (= (and b!592397 res!255473) b!592405))

(assert (= (and b!592405 res!255467) b!592409))

(assert (= (and b!592409 res!255466) b!592413))

(assert (= (and b!592413 res!255475) b!592411))

(assert (= (and b!592411 res!255470) b!592414))

(assert (= (and b!592414 c!110442) b!592402))

(assert (= (and b!592414 (not c!110442)) b!592408))

(assert (= (and b!592414 res!255471) b!592417))

(assert (= (and b!592417 res!255468) b!592399))

(assert (= (and start!55688 ((_ is Cons!5862) suffix!1342)) b!592404))

(assert (= b!592401 b!592400))

(assert (= b!592410 b!592401))

(assert (= (and start!55688 ((_ is Cons!5864) rules!3103)) b!592410))

(assert (= b!592398 b!592412))

(assert (= b!592416 b!592398))

(assert (= start!55688 b!592416))

(assert (= (and start!55688 ((_ is Cons!5862) input!2705)) b!592415))

(declare-fun m!853905 () Bool)

(assert (=> b!592407 m!853905))

(declare-fun m!853907 () Bool)

(assert (=> b!592411 m!853907))

(declare-fun m!853909 () Bool)

(assert (=> b!592405 m!853909))

(declare-fun m!853911 () Bool)

(assert (=> b!592405 m!853911))

(declare-fun m!853913 () Bool)

(assert (=> b!592405 m!853913))

(declare-fun m!853915 () Bool)

(assert (=> b!592403 m!853915))

(declare-fun m!853917 () Bool)

(assert (=> b!592409 m!853917))

(declare-fun m!853919 () Bool)

(assert (=> start!55688 m!853919))

(declare-fun m!853921 () Bool)

(assert (=> b!592398 m!853921))

(declare-fun m!853923 () Bool)

(assert (=> b!592398 m!853923))

(declare-fun m!853925 () Bool)

(assert (=> b!592414 m!853925))

(declare-fun m!853927 () Bool)

(assert (=> b!592414 m!853927))

(declare-fun m!853929 () Bool)

(assert (=> b!592414 m!853929))

(declare-fun m!853931 () Bool)

(assert (=> b!592414 m!853931))

(declare-fun m!853933 () Bool)

(assert (=> b!592414 m!853933))

(declare-fun m!853935 () Bool)

(assert (=> b!592414 m!853935))

(declare-fun m!853937 () Bool)

(assert (=> b!592414 m!853937))

(declare-fun m!853939 () Bool)

(assert (=> b!592414 m!853939))

(declare-fun m!853941 () Bool)

(assert (=> b!592414 m!853941))

(declare-fun m!853943 () Bool)

(assert (=> b!592414 m!853943))

(declare-fun m!853945 () Bool)

(assert (=> b!592414 m!853945))

(declare-fun m!853947 () Bool)

(assert (=> b!592414 m!853947))

(declare-fun m!853949 () Bool)

(assert (=> b!592414 m!853949))

(declare-fun m!853951 () Bool)

(assert (=> b!592414 m!853951))

(assert (=> b!592414 m!853927))

(declare-fun m!853953 () Bool)

(assert (=> b!592414 m!853953))

(declare-fun m!853955 () Bool)

(assert (=> b!592414 m!853955))

(declare-fun m!853957 () Bool)

(assert (=> b!592414 m!853957))

(declare-fun m!853959 () Bool)

(assert (=> b!592414 m!853959))

(assert (=> b!592414 m!853957))

(assert (=> b!592414 m!853947))

(declare-fun m!853961 () Bool)

(assert (=> b!592414 m!853961))

(declare-fun m!853963 () Bool)

(assert (=> b!592414 m!853963))

(declare-fun m!853965 () Bool)

(assert (=> b!592414 m!853965))

(declare-fun m!853967 () Bool)

(assert (=> b!592414 m!853967))

(declare-fun m!853969 () Bool)

(assert (=> b!592406 m!853969))

(declare-fun m!853971 () Bool)

(assert (=> b!592397 m!853971))

(assert (=> b!592397 m!853971))

(declare-fun m!853973 () Bool)

(assert (=> b!592397 m!853973))

(declare-fun m!853975 () Bool)

(assert (=> b!592417 m!853975))

(declare-fun m!853977 () Bool)

(assert (=> b!592416 m!853977))

(declare-fun m!853979 () Bool)

(assert (=> b!592413 m!853979))

(declare-fun m!853981 () Bool)

(assert (=> b!592401 m!853981))

(declare-fun m!853983 () Bool)

(assert (=> b!592401 m!853983))

(check-sat (not b!592417) (not b!592413) (not b_next!16677) (not b_next!16683) (not b!592414) (not b_next!16679) (not b_next!16681) tp_is_empty!3329 (not b!592410) (not b!592403) b_and!58409 (not b!592407) (not b!592401) (not b!592415) (not b!592397) (not b!592405) b_and!58403 (not b!592409) (not b!592404) (not b!592416) b_and!58407 (not b!592406) (not b!592411) (not b!592398) b_and!58405 (not start!55688))
(check-sat (not b_next!16677) (not b_next!16683) b_and!58403 (not b_next!16679) (not b_next!16681) b_and!58407 b_and!58409 b_and!58405)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394414 () Bool)

(assert start!394414)

(declare-fun b!4146106 () Bool)

(declare-fun b_free!118267 () Bool)

(declare-fun b_next!118971 () Bool)

(assert (=> b!4146106 (= b_free!118267 (not b_next!118971))))

(declare-fun tp!1263740 () Bool)

(declare-fun b_and!322245 () Bool)

(assert (=> b!4146106 (= tp!1263740 b_and!322245)))

(declare-fun b_free!118269 () Bool)

(declare-fun b_next!118973 () Bool)

(assert (=> b!4146106 (= b_free!118269 (not b_next!118973))))

(declare-fun tp!1263732 () Bool)

(declare-fun b_and!322247 () Bool)

(assert (=> b!4146106 (= tp!1263732 b_and!322247)))

(declare-fun b!4146116 () Bool)

(declare-fun b_free!118271 () Bool)

(declare-fun b_next!118975 () Bool)

(assert (=> b!4146116 (= b_free!118271 (not b_next!118975))))

(declare-fun tp!1263739 () Bool)

(declare-fun b_and!322249 () Bool)

(assert (=> b!4146116 (= tp!1263739 b_and!322249)))

(declare-fun b_free!118273 () Bool)

(declare-fun b_next!118977 () Bool)

(assert (=> b!4146116 (= b_free!118273 (not b_next!118977))))

(declare-fun tp!1263741 () Bool)

(declare-fun b_and!322251 () Bool)

(assert (=> b!4146116 (= tp!1263741 b_and!322251)))

(declare-fun b!4146104 () Bool)

(declare-fun b_free!118275 () Bool)

(declare-fun b_next!118979 () Bool)

(assert (=> b!4146104 (= b_free!118275 (not b_next!118979))))

(declare-fun tp!1263734 () Bool)

(declare-fun b_and!322253 () Bool)

(assert (=> b!4146104 (= tp!1263734 b_and!322253)))

(declare-fun b_free!118277 () Bool)

(declare-fun b_next!118981 () Bool)

(assert (=> b!4146104 (= b_free!118277 (not b_next!118981))))

(declare-fun tp!1263735 () Bool)

(declare-fun b_and!322255 () Bool)

(assert (=> b!4146104 (= tp!1263735 b_and!322255)))

(declare-fun b!4146094 () Bool)

(declare-fun res!1697029 () Bool)

(declare-fun e!2572534 () Bool)

(assert (=> b!4146094 (=> (not res!1697029) (not e!2572534))))

(declare-datatypes ((List!45119 0))(
  ( (Nil!44995) (Cons!44995 (h!50415 (_ BitVec 16)) (t!342798 List!45119)) )
))
(declare-datatypes ((TokenValue!7630 0))(
  ( (FloatLiteralValue!15260 (text!53855 List!45119)) (TokenValueExt!7629 (__x!27477 Int)) (Broken!38150 (value!231428 List!45119)) (Object!7753) (End!7630) (Def!7630) (Underscore!7630) (Match!7630) (Else!7630) (Error!7630) (Case!7630) (If!7630) (Extends!7630) (Abstract!7630) (Class!7630) (Val!7630) (DelimiterValue!15260 (del!7690 List!45119)) (KeywordValue!7636 (value!231429 List!45119)) (CommentValue!15260 (value!231430 List!45119)) (WhitespaceValue!15260 (value!231431 List!45119)) (IndentationValue!7630 (value!231432 List!45119)) (String!51899) (Int32!7630) (Broken!38151 (value!231433 List!45119)) (Boolean!7631) (Unit!64282) (OperatorValue!7633 (op!7690 List!45119)) (IdentifierValue!15260 (value!231434 List!45119)) (IdentifierValue!15261 (value!231435 List!45119)) (WhitespaceValue!15261 (value!231436 List!45119)) (True!15260) (False!15260) (Broken!38152 (value!231437 List!45119)) (Broken!38153 (value!231438 List!45119)) (True!15261) (RightBrace!7630) (RightBracket!7630) (Colon!7630) (Null!7630) (Comma!7630) (LeftBracket!7630) (False!15261) (LeftBrace!7630) (ImaginaryLiteralValue!7630 (text!53856 List!45119)) (StringLiteralValue!22890 (value!231439 List!45119)) (EOFValue!7630 (value!231440 List!45119)) (IdentValue!7630 (value!231441 List!45119)) (DelimiterValue!15261 (value!231442 List!45119)) (DedentValue!7630 (value!231443 List!45119)) (NewLineValue!7630 (value!231444 List!45119)) (IntegerValue!22890 (value!231445 (_ BitVec 32)) (text!53857 List!45119)) (IntegerValue!22891 (value!231446 Int) (text!53858 List!45119)) (Times!7630) (Or!7630) (Equal!7630) (Minus!7630) (Broken!38154 (value!231447 List!45119)) (And!7630) (Div!7630) (LessEqual!7630) (Mod!7630) (Concat!19935) (Not!7630) (Plus!7630) (SpaceValue!7630 (value!231448 List!45119)) (IntegerValue!22892 (value!231449 Int) (text!53859 List!45119)) (StringLiteralValue!22891 (text!53860 List!45119)) (FloatLiteralValue!15261 (text!53861 List!45119)) (BytesLiteralValue!7630 (value!231450 List!45119)) (CommentValue!15261 (value!231451 List!45119)) (StringLiteralValue!22892 (value!231452 List!45119)) (ErrorTokenValue!7630 (msg!7691 List!45119)) )
))
(declare-datatypes ((C!24796 0))(
  ( (C!24797 (val!14508 Int)) )
))
(declare-datatypes ((List!45120 0))(
  ( (Nil!44996) (Cons!44996 (h!50416 C!24796) (t!342799 List!45120)) )
))
(declare-datatypes ((IArray!27227 0))(
  ( (IArray!27228 (innerList!13671 List!45120)) )
))
(declare-datatypes ((Conc!13611 0))(
  ( (Node!13611 (left!33693 Conc!13611) (right!34023 Conc!13611) (csize!27452 Int) (cheight!13822 Int)) (Leaf!21026 (xs!16917 IArray!27227) (csize!27453 Int)) (Empty!13611) )
))
(declare-datatypes ((BalanceConc!26816 0))(
  ( (BalanceConc!26817 (c!710420 Conc!13611)) )
))
(declare-datatypes ((TokenValueInjection!14688 0))(
  ( (TokenValueInjection!14689 (toValue!10064 Int) (toChars!9923 Int)) )
))
(declare-datatypes ((Regex!12305 0))(
  ( (ElementMatch!12305 (c!710421 C!24796)) (Concat!19936 (regOne!25122 Regex!12305) (regTwo!25122 Regex!12305)) (EmptyExpr!12305) (Star!12305 (reg!12634 Regex!12305)) (EmptyLang!12305) (Union!12305 (regOne!25123 Regex!12305) (regTwo!25123 Regex!12305)) )
))
(declare-datatypes ((String!51900 0))(
  ( (String!51901 (value!231453 String)) )
))
(declare-datatypes ((Rule!14600 0))(
  ( (Rule!14601 (regex!7400 Regex!12305) (tag!8260 String!51900) (isSeparator!7400 Bool) (transformation!7400 TokenValueInjection!14688)) )
))
(declare-datatypes ((List!45121 0))(
  ( (Nil!44997) (Cons!44997 (h!50417 Rule!14600) (t!342800 List!45121)) )
))
(declare-fun rules!3756 () List!45121)

(declare-fun isEmpty!26853 (List!45121) Bool)

(assert (=> b!4146094 (= res!1697029 (not (isEmpty!26853 rules!3756)))))

(declare-fun b!4146095 () Bool)

(declare-fun e!2572530 () Bool)

(declare-fun tp_is_empty!21533 () Bool)

(declare-fun tp!1263737 () Bool)

(assert (=> b!4146095 (= e!2572530 (and tp_is_empty!21533 tp!1263737))))

(declare-fun b!4146096 () Bool)

(declare-fun e!2572526 () Bool)

(declare-datatypes ((Token!13730 0))(
  ( (Token!13731 (value!231454 TokenValue!7630) (rule!10524 Rule!14600) (size!33354 Int) (originalCharacters!7896 List!45120)) )
))
(declare-datatypes ((tuple2!43370 0))(
  ( (tuple2!43371 (_1!24819 Token!13730) (_2!24819 List!45120)) )
))
(declare-fun lt!1478826 () tuple2!43370)

(declare-fun lt!1478822 () tuple2!43370)

(assert (=> b!4146096 (= e!2572526 (not (= lt!1478826 lt!1478822)))))

(declare-fun rBis!149 () Rule!14600)

(declare-fun r!4008 () Rule!14600)

(assert (=> b!4146096 (not (= (tag!8260 rBis!149) (tag!8260 r!4008)))))

(declare-datatypes ((LexerInterface!6989 0))(
  ( (LexerInterfaceExt!6986 (__x!27478 Int)) (Lexer!6987) )
))
(declare-fun thiss!25645 () LexerInterface!6989)

(declare-datatypes ((Unit!64283 0))(
  ( (Unit!64284) )
))
(declare-fun lt!1478827 () Unit!64283)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!62 (LexerInterface!6989 List!45121 Rule!14600 Rule!14600) Unit!64283)

(assert (=> b!4146096 (= lt!1478827 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!62 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun b!4146097 () Bool)

(declare-fun e!2572528 () Bool)

(declare-fun e!2572523 () Bool)

(assert (=> b!4146097 (= e!2572528 e!2572523)))

(declare-fun res!1697027 () Bool)

(assert (=> b!4146097 (=> res!1697027 e!2572523)))

(declare-datatypes ((Option!9706 0))(
  ( (None!9705) (Some!9705 (v!40357 tuple2!43370)) )
))
(declare-fun lt!1478823 () Option!9706)

(declare-fun isEmpty!26854 (Option!9706) Bool)

(assert (=> b!4146097 (= res!1697027 (isEmpty!26854 lt!1478823))))

(declare-fun input!3238 () List!45120)

(declare-fun maxPrefixOneRule!3118 (LexerInterface!6989 Rule!14600 List!45120) Option!9706)

(assert (=> b!4146097 (= lt!1478823 (maxPrefixOneRule!3118 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4146097 (not (= rBis!149 r!4008))))

(declare-fun lt!1478825 () Unit!64283)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!98 (LexerInterface!6989 List!45121 Rule!14600 Rule!14600) Unit!64283)

(assert (=> b!4146097 (= lt!1478825 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!98 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!9082 (List!45121 Rule!14600) Bool)

(declare-fun tail!6585 (List!45121) List!45121)

(assert (=> b!4146097 (contains!9082 (tail!6585 rules!3756) r!4008)))

(declare-fun lt!1478821 () Unit!64283)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!104 (List!45121 Rule!14600 Rule!14600) Unit!64283)

(assert (=> b!4146097 (= lt!1478821 (lemmaGetIndexBiggerAndHeadEqThenTailContains!104 rules!3756 rBis!149 r!4008))))

(declare-fun b!4146098 () Bool)

(declare-fun res!1697026 () Bool)

(assert (=> b!4146098 (=> (not res!1697026) (not e!2572534))))

(assert (=> b!4146098 (= res!1697026 (contains!9082 rules!3756 rBis!149))))

(declare-fun b!4146099 () Bool)

(declare-fun res!1697022 () Bool)

(assert (=> b!4146099 (=> (not res!1697022) (not e!2572534))))

(declare-fun p!2912 () List!45120)

(declare-fun isEmpty!26855 (List!45120) Bool)

(assert (=> b!4146099 (= res!1697022 (not (isEmpty!26855 p!2912)))))

(declare-fun b!4146101 () Bool)

(declare-fun res!1697030 () Bool)

(declare-fun e!2572525 () Bool)

(assert (=> b!4146101 (=> (not res!1697030) (not e!2572525))))

(declare-fun getIndex!746 (List!45121 Rule!14600) Int)

(assert (=> b!4146101 (= res!1697030 (< (getIndex!746 rules!3756 rBis!149) (getIndex!746 rules!3756 r!4008)))))

(declare-fun b!4146102 () Bool)

(declare-fun e!2572537 () Bool)

(declare-fun tp!1263731 () Bool)

(assert (=> b!4146102 (= e!2572537 (and tp_is_empty!21533 tp!1263731))))

(declare-fun e!2572522 () Bool)

(declare-fun b!4146103 () Bool)

(declare-fun e!2572536 () Bool)

(declare-fun tp!1263733 () Bool)

(declare-fun inv!59605 (String!51900) Bool)

(declare-fun inv!59607 (TokenValueInjection!14688) Bool)

(assert (=> b!4146103 (= e!2572522 (and tp!1263733 (inv!59605 (tag!8260 (h!50417 rules!3756))) (inv!59607 (transformation!7400 (h!50417 rules!3756))) e!2572536))))

(declare-fun e!2572531 () Bool)

(assert (=> b!4146104 (= e!2572531 (and tp!1263734 tp!1263735))))

(declare-fun b!4146105 () Bool)

(declare-fun res!1697017 () Bool)

(assert (=> b!4146105 (=> (not res!1697017) (not e!2572525))))

(declare-fun ruleValid!3206 (LexerInterface!6989 Rule!14600) Bool)

(assert (=> b!4146105 (= res!1697017 (ruleValid!3206 thiss!25645 r!4008))))

(declare-fun e!2572535 () Bool)

(assert (=> b!4146106 (= e!2572535 (and tp!1263740 tp!1263732))))

(declare-fun b!4146107 () Bool)

(declare-fun e!2572532 () Bool)

(declare-fun tp!1263742 () Bool)

(assert (=> b!4146107 (= e!2572532 (and e!2572522 tp!1263742))))

(declare-fun e!2572533 () Bool)

(declare-fun b!4146108 () Bool)

(declare-fun tp!1263736 () Bool)

(assert (=> b!4146108 (= e!2572533 (and tp!1263736 (inv!59605 (tag!8260 r!4008)) (inv!59607 (transformation!7400 r!4008)) e!2572535))))

(declare-fun b!4146109 () Bool)

(declare-fun res!1697020 () Bool)

(assert (=> b!4146109 (=> (not res!1697020) (not e!2572525))))

(declare-fun matchR!6134 (Regex!12305 List!45120) Bool)

(assert (=> b!4146109 (= res!1697020 (matchR!6134 (regex!7400 r!4008) p!2912))))

(declare-fun b!4146110 () Bool)

(assert (=> b!4146110 (= e!2572525 (not e!2572528))))

(declare-fun res!1697028 () Bool)

(assert (=> b!4146110 (=> res!1697028 e!2572528)))

(get-info :version)

(assert (=> b!4146110 (= res!1697028 (or (not ((_ is Cons!44997) rules!3756)) (not (= (h!50417 rules!3756) rBis!149))))))

(declare-fun lt!1478819 () Unit!64283)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2246 (LexerInterface!6989 Rule!14600 List!45121) Unit!64283)

(assert (=> b!4146110 (= lt!1478819 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2246 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4146110 (ruleValid!3206 thiss!25645 rBis!149)))

(declare-fun lt!1478830 () Unit!64283)

(assert (=> b!4146110 (= lt!1478830 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2246 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4146111 () Bool)

(assert (=> b!4146111 (= e!2572534 e!2572525)))

(declare-fun res!1697025 () Bool)

(assert (=> b!4146111 (=> (not res!1697025) (not e!2572525))))

(declare-fun maxPrefix!4179 (LexerInterface!6989 List!45121 List!45120) Option!9706)

(assert (=> b!4146111 (= res!1697025 (= (maxPrefix!4179 thiss!25645 rules!3756 input!3238) (Some!9705 lt!1478822)))))

(declare-fun lt!1478824 () Int)

(declare-fun lt!1478820 () TokenValue!7630)

(declare-fun getSuffix!2662 (List!45120 List!45120) List!45120)

(assert (=> b!4146111 (= lt!1478822 (tuple2!43371 (Token!13731 lt!1478820 r!4008 lt!1478824 p!2912) (getSuffix!2662 input!3238 p!2912)))))

(declare-fun size!33355 (List!45120) Int)

(assert (=> b!4146111 (= lt!1478824 (size!33355 p!2912))))

(declare-fun lt!1478829 () BalanceConc!26816)

(declare-fun apply!10473 (TokenValueInjection!14688 BalanceConc!26816) TokenValue!7630)

(assert (=> b!4146111 (= lt!1478820 (apply!10473 (transformation!7400 r!4008) lt!1478829))))

(declare-fun lt!1478828 () Unit!64283)

(declare-fun lemmaSemiInverse!2258 (TokenValueInjection!14688 BalanceConc!26816) Unit!64283)

(assert (=> b!4146111 (= lt!1478828 (lemmaSemiInverse!2258 (transformation!7400 r!4008) lt!1478829))))

(declare-fun seqFromList!5517 (List!45120) BalanceConc!26816)

(assert (=> b!4146111 (= lt!1478829 (seqFromList!5517 p!2912))))

(declare-fun b!4146112 () Bool)

(declare-fun res!1697024 () Bool)

(assert (=> b!4146112 (=> (not res!1697024) (not e!2572534))))

(assert (=> b!4146112 (= res!1697024 (contains!9082 rules!3756 r!4008))))

(declare-fun b!4146100 () Bool)

(declare-fun res!1697021 () Bool)

(assert (=> b!4146100 (=> (not res!1697021) (not e!2572534))))

(declare-fun isPrefix!4335 (List!45120 List!45120) Bool)

(assert (=> b!4146100 (= res!1697021 (isPrefix!4335 p!2912 input!3238))))

(declare-fun res!1697019 () Bool)

(assert (=> start!394414 (=> (not res!1697019) (not e!2572534))))

(assert (=> start!394414 (= res!1697019 ((_ is Lexer!6987) thiss!25645))))

(assert (=> start!394414 e!2572534))

(assert (=> start!394414 e!2572532))

(assert (=> start!394414 e!2572530))

(assert (=> start!394414 true))

(assert (=> start!394414 e!2572533))

(assert (=> start!394414 e!2572537))

(declare-fun e!2572527 () Bool)

(assert (=> start!394414 e!2572527))

(declare-fun b!4146113 () Bool)

(declare-fun res!1697018 () Bool)

(assert (=> b!4146113 (=> (not res!1697018) (not e!2572534))))

(declare-fun rulesInvariant!6286 (LexerInterface!6989 List!45121) Bool)

(assert (=> b!4146113 (= res!1697018 (rulesInvariant!6286 thiss!25645 rules!3756))))

(declare-fun b!4146114 () Bool)

(declare-fun tp!1263738 () Bool)

(assert (=> b!4146114 (= e!2572527 (and tp!1263738 (inv!59605 (tag!8260 rBis!149)) (inv!59607 (transformation!7400 rBis!149)) e!2572531))))

(declare-fun b!4146115 () Bool)

(assert (=> b!4146115 (= e!2572523 e!2572526)))

(declare-fun res!1697023 () Bool)

(assert (=> b!4146115 (=> res!1697023 e!2572526)))

(declare-fun lt!1478818 () Int)

(assert (=> b!4146115 (= res!1697023 (or (> lt!1478818 lt!1478824) (< lt!1478818 lt!1478824)))))

(declare-fun size!33356 (BalanceConc!26816) Int)

(declare-fun charsOf!4999 (Token!13730) BalanceConc!26816)

(assert (=> b!4146115 (= lt!1478818 (size!33356 (charsOf!4999 (_1!24819 lt!1478826))))))

(declare-fun get!14695 (Option!9706) tuple2!43370)

(assert (=> b!4146115 (= lt!1478826 (get!14695 lt!1478823))))

(assert (=> b!4146116 (= e!2572536 (and tp!1263739 tp!1263741))))

(assert (= (and start!394414 res!1697019) b!4146100))

(assert (= (and b!4146100 res!1697021) b!4146094))

(assert (= (and b!4146094 res!1697029) b!4146113))

(assert (= (and b!4146113 res!1697018) b!4146112))

(assert (= (and b!4146112 res!1697024) b!4146098))

(assert (= (and b!4146098 res!1697026) b!4146099))

(assert (= (and b!4146099 res!1697022) b!4146111))

(assert (= (and b!4146111 res!1697025) b!4146109))

(assert (= (and b!4146109 res!1697020) b!4146101))

(assert (= (and b!4146101 res!1697030) b!4146105))

(assert (= (and b!4146105 res!1697017) b!4146110))

(assert (= (and b!4146110 (not res!1697028)) b!4146097))

(assert (= (and b!4146097 (not res!1697027)) b!4146115))

(assert (= (and b!4146115 (not res!1697023)) b!4146096))

(assert (= b!4146103 b!4146116))

(assert (= b!4146107 b!4146103))

(assert (= (and start!394414 ((_ is Cons!44997) rules!3756)) b!4146107))

(assert (= (and start!394414 ((_ is Cons!44996) p!2912)) b!4146095))

(assert (= b!4146108 b!4146106))

(assert (= start!394414 b!4146108))

(assert (= (and start!394414 ((_ is Cons!44996) input!3238)) b!4146102))

(assert (= b!4146114 b!4146104))

(assert (= start!394414 b!4146114))

(declare-fun m!4742123 () Bool)

(assert (=> b!4146108 m!4742123))

(declare-fun m!4742125 () Bool)

(assert (=> b!4146108 m!4742125))

(declare-fun m!4742127 () Bool)

(assert (=> b!4146113 m!4742127))

(declare-fun m!4742129 () Bool)

(assert (=> b!4146105 m!4742129))

(declare-fun m!4742131 () Bool)

(assert (=> b!4146110 m!4742131))

(declare-fun m!4742133 () Bool)

(assert (=> b!4146110 m!4742133))

(declare-fun m!4742135 () Bool)

(assert (=> b!4146110 m!4742135))

(declare-fun m!4742137 () Bool)

(assert (=> b!4146103 m!4742137))

(declare-fun m!4742139 () Bool)

(assert (=> b!4146103 m!4742139))

(declare-fun m!4742141 () Bool)

(assert (=> b!4146114 m!4742141))

(declare-fun m!4742143 () Bool)

(assert (=> b!4146114 m!4742143))

(declare-fun m!4742145 () Bool)

(assert (=> b!4146100 m!4742145))

(declare-fun m!4742147 () Bool)

(assert (=> b!4146094 m!4742147))

(declare-fun m!4742149 () Bool)

(assert (=> b!4146097 m!4742149))

(declare-fun m!4742151 () Bool)

(assert (=> b!4146097 m!4742151))

(declare-fun m!4742153 () Bool)

(assert (=> b!4146097 m!4742153))

(assert (=> b!4146097 m!4742149))

(declare-fun m!4742155 () Bool)

(assert (=> b!4146097 m!4742155))

(declare-fun m!4742157 () Bool)

(assert (=> b!4146097 m!4742157))

(declare-fun m!4742159 () Bool)

(assert (=> b!4146097 m!4742159))

(declare-fun m!4742161 () Bool)

(assert (=> b!4146098 m!4742161))

(declare-fun m!4742163 () Bool)

(assert (=> b!4146115 m!4742163))

(assert (=> b!4146115 m!4742163))

(declare-fun m!4742165 () Bool)

(assert (=> b!4146115 m!4742165))

(declare-fun m!4742167 () Bool)

(assert (=> b!4146115 m!4742167))

(declare-fun m!4742169 () Bool)

(assert (=> b!4146099 m!4742169))

(declare-fun m!4742171 () Bool)

(assert (=> b!4146109 m!4742171))

(declare-fun m!4742173 () Bool)

(assert (=> b!4146111 m!4742173))

(declare-fun m!4742175 () Bool)

(assert (=> b!4146111 m!4742175))

(declare-fun m!4742177 () Bool)

(assert (=> b!4146111 m!4742177))

(declare-fun m!4742179 () Bool)

(assert (=> b!4146111 m!4742179))

(declare-fun m!4742181 () Bool)

(assert (=> b!4146111 m!4742181))

(declare-fun m!4742183 () Bool)

(assert (=> b!4146111 m!4742183))

(declare-fun m!4742185 () Bool)

(assert (=> b!4146101 m!4742185))

(declare-fun m!4742187 () Bool)

(assert (=> b!4146101 m!4742187))

(declare-fun m!4742189 () Bool)

(assert (=> b!4146096 m!4742189))

(declare-fun m!4742191 () Bool)

(assert (=> b!4146112 m!4742191))

(check-sat (not b!4146108) b_and!322245 (not b!4146112) (not b!4146114) (not b!4146094) b_and!322251 (not b!4146101) (not b!4146100) (not b!4146097) (not b!4146099) (not b!4146105) (not b_next!118977) (not b!4146107) b_and!322247 (not b!4146115) (not b!4146096) (not b_next!118971) (not b!4146113) b_and!322253 (not b!4146110) (not b!4146111) b_and!322249 (not b_next!118979) (not b!4146095) (not b!4146103) (not b_next!118973) b_and!322255 (not b!4146098) (not b_next!118981) (not b!4146102) (not b!4146109) (not b_next!118975) tp_is_empty!21533)
(check-sat (not b_next!118977) b_and!322245 b_and!322247 b_and!322251 (not b_next!118975) (not b_next!118971) b_and!322253 b_and!322249 (not b_next!118979) (not b_next!118973) b_and!322255 (not b_next!118981))
(get-model)

(declare-fun d!1226999 () Bool)

(assert (=> d!1226999 (= (inv!59605 (tag!8260 (h!50417 rules!3756))) (= (mod (str.len (value!231453 (tag!8260 (h!50417 rules!3756)))) 2) 0))))

(assert (=> b!4146103 d!1226999))

(declare-fun d!1227005 () Bool)

(declare-fun res!1697056 () Bool)

(declare-fun e!2572558 () Bool)

(assert (=> d!1227005 (=> (not res!1697056) (not e!2572558))))

(declare-fun semiInverseModEq!3201 (Int Int) Bool)

(assert (=> d!1227005 (= res!1697056 (semiInverseModEq!3201 (toChars!9923 (transformation!7400 (h!50417 rules!3756))) (toValue!10064 (transformation!7400 (h!50417 rules!3756)))))))

(assert (=> d!1227005 (= (inv!59607 (transformation!7400 (h!50417 rules!3756))) e!2572558)))

(declare-fun b!4146152 () Bool)

(declare-fun equivClasses!3100 (Int Int) Bool)

(assert (=> b!4146152 (= e!2572558 (equivClasses!3100 (toChars!9923 (transformation!7400 (h!50417 rules!3756))) (toValue!10064 (transformation!7400 (h!50417 rules!3756)))))))

(assert (= (and d!1227005 res!1697056) b!4146152))

(declare-fun m!4742207 () Bool)

(assert (=> d!1227005 m!4742207))

(declare-fun m!4742209 () Bool)

(assert (=> b!4146152 m!4742209))

(assert (=> b!4146103 d!1227005))

(declare-fun d!1227007 () Bool)

(declare-fun res!1697067 () Bool)

(declare-fun e!2572568 () Bool)

(assert (=> d!1227007 (=> (not res!1697067) (not e!2572568))))

(declare-fun rulesValid!2914 (LexerInterface!6989 List!45121) Bool)

(assert (=> d!1227007 (= res!1697067 (rulesValid!2914 thiss!25645 rules!3756))))

(assert (=> d!1227007 (= (rulesInvariant!6286 thiss!25645 rules!3756) e!2572568)))

(declare-fun b!4146169 () Bool)

(declare-datatypes ((List!45123 0))(
  ( (Nil!44999) (Cons!44999 (h!50419 String!51900) (t!342850 List!45123)) )
))
(declare-fun noDuplicateTag!2997 (LexerInterface!6989 List!45121 List!45123) Bool)

(assert (=> b!4146169 (= e!2572568 (noDuplicateTag!2997 thiss!25645 rules!3756 Nil!44999))))

(assert (= (and d!1227007 res!1697067) b!4146169))

(declare-fun m!4742225 () Bool)

(assert (=> d!1227007 m!4742225))

(declare-fun m!4742227 () Bool)

(assert (=> b!4146169 m!4742227))

(assert (=> b!4146113 d!1227007))

(declare-fun d!1227013 () Bool)

(declare-fun lt!1478846 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6963 (List!45121) (InoxSet Rule!14600))

(assert (=> d!1227013 (= lt!1478846 (select (content!6963 rules!3756) r!4008))))

(declare-fun e!2572580 () Bool)

(assert (=> d!1227013 (= lt!1478846 e!2572580)))

(declare-fun res!1697082 () Bool)

(assert (=> d!1227013 (=> (not res!1697082) (not e!2572580))))

(assert (=> d!1227013 (= res!1697082 ((_ is Cons!44997) rules!3756))))

(assert (=> d!1227013 (= (contains!9082 rules!3756 r!4008) lt!1478846)))

(declare-fun b!4146183 () Bool)

(declare-fun e!2572579 () Bool)

(assert (=> b!4146183 (= e!2572580 e!2572579)))

(declare-fun res!1697081 () Bool)

(assert (=> b!4146183 (=> res!1697081 e!2572579)))

(assert (=> b!4146183 (= res!1697081 (= (h!50417 rules!3756) r!4008))))

(declare-fun b!4146184 () Bool)

(assert (=> b!4146184 (= e!2572579 (contains!9082 (t!342800 rules!3756) r!4008))))

(assert (= (and d!1227013 res!1697082) b!4146183))

(assert (= (and b!4146183 (not res!1697081)) b!4146184))

(declare-fun m!4742241 () Bool)

(assert (=> d!1227013 m!4742241))

(declare-fun m!4742243 () Bool)

(assert (=> d!1227013 m!4742243))

(declare-fun m!4742245 () Bool)

(assert (=> b!4146184 m!4742245))

(assert (=> b!4146112 d!1227013))

(declare-fun b!4146208 () Bool)

(declare-fun e!2572601 () Int)

(declare-fun e!2572600 () Int)

(assert (=> b!4146208 (= e!2572601 e!2572600)))

(declare-fun c!710435 () Bool)

(assert (=> b!4146208 (= c!710435 (and ((_ is Cons!44997) rules!3756) (not (= (h!50417 rules!3756) rBis!149))))))

(declare-fun b!4146210 () Bool)

(assert (=> b!4146210 (= e!2572600 (- 1))))

(declare-fun b!4146209 () Bool)

(assert (=> b!4146209 (= e!2572600 (+ 1 (getIndex!746 (t!342800 rules!3756) rBis!149)))))

(declare-fun d!1227023 () Bool)

(declare-fun lt!1478855 () Int)

(assert (=> d!1227023 (>= lt!1478855 0)))

(assert (=> d!1227023 (= lt!1478855 e!2572601)))

(declare-fun c!710436 () Bool)

(assert (=> d!1227023 (= c!710436 (and ((_ is Cons!44997) rules!3756) (= (h!50417 rules!3756) rBis!149)))))

(assert (=> d!1227023 (contains!9082 rules!3756 rBis!149)))

(assert (=> d!1227023 (= (getIndex!746 rules!3756 rBis!149) lt!1478855)))

(declare-fun b!4146207 () Bool)

(assert (=> b!4146207 (= e!2572601 0)))

(assert (= (and d!1227023 c!710436) b!4146207))

(assert (= (and d!1227023 (not c!710436)) b!4146208))

(assert (= (and b!4146208 c!710435) b!4146209))

(assert (= (and b!4146208 (not c!710435)) b!4146210))

(declare-fun m!4742267 () Bool)

(assert (=> b!4146209 m!4742267))

(assert (=> d!1227023 m!4742161))

(assert (=> b!4146101 d!1227023))

(declare-fun b!4146212 () Bool)

(declare-fun e!2572603 () Int)

(declare-fun e!2572602 () Int)

(assert (=> b!4146212 (= e!2572603 e!2572602)))

(declare-fun c!710437 () Bool)

(assert (=> b!4146212 (= c!710437 (and ((_ is Cons!44997) rules!3756) (not (= (h!50417 rules!3756) r!4008))))))

(declare-fun b!4146214 () Bool)

(assert (=> b!4146214 (= e!2572602 (- 1))))

(declare-fun b!4146213 () Bool)

(assert (=> b!4146213 (= e!2572602 (+ 1 (getIndex!746 (t!342800 rules!3756) r!4008)))))

(declare-fun d!1227043 () Bool)

(declare-fun lt!1478856 () Int)

(assert (=> d!1227043 (>= lt!1478856 0)))

(assert (=> d!1227043 (= lt!1478856 e!2572603)))

(declare-fun c!710438 () Bool)

(assert (=> d!1227043 (= c!710438 (and ((_ is Cons!44997) rules!3756) (= (h!50417 rules!3756) r!4008)))))

(assert (=> d!1227043 (contains!9082 rules!3756 r!4008)))

(assert (=> d!1227043 (= (getIndex!746 rules!3756 r!4008) lt!1478856)))

(declare-fun b!4146211 () Bool)

(assert (=> b!4146211 (= e!2572603 0)))

(assert (= (and d!1227043 c!710438) b!4146211))

(assert (= (and d!1227043 (not c!710438)) b!4146212))

(assert (= (and b!4146212 c!710437) b!4146213))

(assert (= (and b!4146212 (not c!710437)) b!4146214))

(declare-fun m!4742269 () Bool)

(assert (=> b!4146213 m!4742269))

(assert (=> d!1227043 m!4742191))

(assert (=> b!4146101 d!1227043))

(declare-fun d!1227045 () Bool)

(declare-fun dynLambda!19380 (Int BalanceConc!26816) TokenValue!7630)

(assert (=> d!1227045 (= (apply!10473 (transformation!7400 r!4008) lt!1478829) (dynLambda!19380 (toValue!10064 (transformation!7400 r!4008)) lt!1478829))))

(declare-fun b_lambda!121913 () Bool)

(assert (=> (not b_lambda!121913) (not d!1227045)))

(declare-fun t!342808 () Bool)

(declare-fun tb!248905 () Bool)

(assert (=> (and b!4146106 (= (toValue!10064 (transformation!7400 r!4008)) (toValue!10064 (transformation!7400 r!4008))) t!342808) tb!248905))

(declare-fun result!302724 () Bool)

(declare-fun inv!21 (TokenValue!7630) Bool)

(assert (=> tb!248905 (= result!302724 (inv!21 (dynLambda!19380 (toValue!10064 (transformation!7400 r!4008)) lt!1478829)))))

(declare-fun m!4742271 () Bool)

(assert (=> tb!248905 m!4742271))

(assert (=> d!1227045 t!342808))

(declare-fun b_and!322263 () Bool)

(assert (= b_and!322245 (and (=> t!342808 result!302724) b_and!322263)))

(declare-fun tb!248907 () Bool)

(declare-fun t!342810 () Bool)

(assert (=> (and b!4146116 (= (toValue!10064 (transformation!7400 (h!50417 rules!3756))) (toValue!10064 (transformation!7400 r!4008))) t!342810) tb!248907))

(declare-fun result!302728 () Bool)

(assert (= result!302728 result!302724))

(assert (=> d!1227045 t!342810))

(declare-fun b_and!322265 () Bool)

(assert (= b_and!322249 (and (=> t!342810 result!302728) b_and!322265)))

(declare-fun t!342812 () Bool)

(declare-fun tb!248909 () Bool)

(assert (=> (and b!4146104 (= (toValue!10064 (transformation!7400 rBis!149)) (toValue!10064 (transformation!7400 r!4008))) t!342812) tb!248909))

(declare-fun result!302730 () Bool)

(assert (= result!302730 result!302724))

(assert (=> d!1227045 t!342812))

(declare-fun b_and!322267 () Bool)

(assert (= b_and!322253 (and (=> t!342812 result!302730) b_and!322267)))

(declare-fun m!4742273 () Bool)

(assert (=> d!1227045 m!4742273))

(assert (=> b!4146111 d!1227045))

(declare-fun b!4146317 () Bool)

(declare-fun e!2572659 () Bool)

(assert (=> b!4146317 (= e!2572659 true)))

(declare-fun d!1227047 () Bool)

(assert (=> d!1227047 e!2572659))

(assert (= d!1227047 b!4146317))

(declare-fun order!23843 () Int)

(declare-fun lambda!128988 () Int)

(declare-fun order!23845 () Int)

(declare-fun dynLambda!19381 (Int Int) Int)

(declare-fun dynLambda!19382 (Int Int) Int)

(assert (=> b!4146317 (< (dynLambda!19381 order!23843 (toValue!10064 (transformation!7400 r!4008))) (dynLambda!19382 order!23845 lambda!128988))))

(declare-fun order!23847 () Int)

(declare-fun dynLambda!19383 (Int Int) Int)

(assert (=> b!4146317 (< (dynLambda!19383 order!23847 (toChars!9923 (transformation!7400 r!4008))) (dynLambda!19382 order!23845 lambda!128988))))

(declare-fun list!16481 (BalanceConc!26816) List!45120)

(declare-fun dynLambda!19384 (Int TokenValue!7630) BalanceConc!26816)

(assert (=> d!1227047 (= (list!16481 (dynLambda!19384 (toChars!9923 (transformation!7400 r!4008)) (dynLambda!19380 (toValue!10064 (transformation!7400 r!4008)) lt!1478829))) (list!16481 lt!1478829))))

(declare-fun lt!1478909 () Unit!64283)

(declare-fun ForallOf!983 (Int BalanceConc!26816) Unit!64283)

(assert (=> d!1227047 (= lt!1478909 (ForallOf!983 lambda!128988 lt!1478829))))

(assert (=> d!1227047 (= (lemmaSemiInverse!2258 (transformation!7400 r!4008) lt!1478829) lt!1478909)))

(declare-fun b_lambda!121917 () Bool)

(assert (=> (not b_lambda!121917) (not d!1227047)))

(declare-fun t!342820 () Bool)

(declare-fun tb!248917 () Bool)

(assert (=> (and b!4146106 (= (toChars!9923 (transformation!7400 r!4008)) (toChars!9923 (transformation!7400 r!4008))) t!342820) tb!248917))

(declare-fun b!4146322 () Bool)

(declare-fun e!2572662 () Bool)

(declare-fun tp!1263748 () Bool)

(declare-fun inv!59610 (Conc!13611) Bool)

(assert (=> b!4146322 (= e!2572662 (and (inv!59610 (c!710420 (dynLambda!19384 (toChars!9923 (transformation!7400 r!4008)) (dynLambda!19380 (toValue!10064 (transformation!7400 r!4008)) lt!1478829)))) tp!1263748))))

(declare-fun result!302740 () Bool)

(declare-fun inv!59611 (BalanceConc!26816) Bool)

(assert (=> tb!248917 (= result!302740 (and (inv!59611 (dynLambda!19384 (toChars!9923 (transformation!7400 r!4008)) (dynLambda!19380 (toValue!10064 (transformation!7400 r!4008)) lt!1478829))) e!2572662))))

(assert (= tb!248917 b!4146322))

(declare-fun m!4742383 () Bool)

(assert (=> b!4146322 m!4742383))

(declare-fun m!4742385 () Bool)

(assert (=> tb!248917 m!4742385))

(assert (=> d!1227047 t!342820))

(declare-fun b_and!322275 () Bool)

(assert (= b_and!322247 (and (=> t!342820 result!302740) b_and!322275)))

(declare-fun t!342822 () Bool)

(declare-fun tb!248919 () Bool)

(assert (=> (and b!4146116 (= (toChars!9923 (transformation!7400 (h!50417 rules!3756))) (toChars!9923 (transformation!7400 r!4008))) t!342822) tb!248919))

(declare-fun result!302744 () Bool)

(assert (= result!302744 result!302740))

(assert (=> d!1227047 t!342822))

(declare-fun b_and!322277 () Bool)

(assert (= b_and!322251 (and (=> t!342822 result!302744) b_and!322277)))

(declare-fun tb!248921 () Bool)

(declare-fun t!342824 () Bool)

(assert (=> (and b!4146104 (= (toChars!9923 (transformation!7400 rBis!149)) (toChars!9923 (transformation!7400 r!4008))) t!342824) tb!248921))

(declare-fun result!302746 () Bool)

(assert (= result!302746 result!302740))

(assert (=> d!1227047 t!342824))

(declare-fun b_and!322279 () Bool)

(assert (= b_and!322255 (and (=> t!342824 result!302746) b_and!322279)))

(declare-fun b_lambda!121919 () Bool)

(assert (=> (not b_lambda!121919) (not d!1227047)))

(assert (=> d!1227047 t!342808))

(declare-fun b_and!322281 () Bool)

(assert (= b_and!322263 (and (=> t!342808 result!302724) b_and!322281)))

(assert (=> d!1227047 t!342810))

(declare-fun b_and!322283 () Bool)

(assert (= b_and!322265 (and (=> t!342810 result!302728) b_and!322283)))

(assert (=> d!1227047 t!342812))

(declare-fun b_and!322285 () Bool)

(assert (= b_and!322267 (and (=> t!342812 result!302730) b_and!322285)))

(declare-fun m!4742387 () Bool)

(assert (=> d!1227047 m!4742387))

(declare-fun m!4742389 () Bool)

(assert (=> d!1227047 m!4742389))

(declare-fun m!4742391 () Bool)

(assert (=> d!1227047 m!4742391))

(declare-fun m!4742393 () Bool)

(assert (=> d!1227047 m!4742393))

(assert (=> d!1227047 m!4742273))

(assert (=> d!1227047 m!4742387))

(assert (=> d!1227047 m!4742273))

(assert (=> b!4146111 d!1227047))

(declare-fun d!1227077 () Bool)

(declare-fun lt!1478912 () List!45120)

(declare-fun ++!11638 (List!45120 List!45120) List!45120)

(assert (=> d!1227077 (= (++!11638 p!2912 lt!1478912) input!3238)))

(declare-fun e!2572665 () List!45120)

(assert (=> d!1227077 (= lt!1478912 e!2572665)))

(declare-fun c!710460 () Bool)

(assert (=> d!1227077 (= c!710460 ((_ is Cons!44996) p!2912))))

(assert (=> d!1227077 (>= (size!33355 input!3238) (size!33355 p!2912))))

(assert (=> d!1227077 (= (getSuffix!2662 input!3238 p!2912) lt!1478912)))

(declare-fun b!4146327 () Bool)

(declare-fun tail!6587 (List!45120) List!45120)

(assert (=> b!4146327 (= e!2572665 (getSuffix!2662 (tail!6587 input!3238) (t!342799 p!2912)))))

(declare-fun b!4146328 () Bool)

(assert (=> b!4146328 (= e!2572665 input!3238)))

(assert (= (and d!1227077 c!710460) b!4146327))

(assert (= (and d!1227077 (not c!710460)) b!4146328))

(declare-fun m!4742395 () Bool)

(assert (=> d!1227077 m!4742395))

(declare-fun m!4742397 () Bool)

(assert (=> d!1227077 m!4742397))

(assert (=> d!1227077 m!4742173))

(declare-fun m!4742399 () Bool)

(assert (=> b!4146327 m!4742399))

(assert (=> b!4146327 m!4742399))

(declare-fun m!4742401 () Bool)

(assert (=> b!4146327 m!4742401))

(assert (=> b!4146111 d!1227077))

(declare-fun b!4146398 () Bool)

(declare-fun e!2572701 () Option!9706)

(declare-fun lt!1478927 () Option!9706)

(declare-fun lt!1478929 () Option!9706)

(assert (=> b!4146398 (= e!2572701 (ite (and ((_ is None!9705) lt!1478927) ((_ is None!9705) lt!1478929)) None!9705 (ite ((_ is None!9705) lt!1478929) lt!1478927 (ite ((_ is None!9705) lt!1478927) lt!1478929 (ite (>= (size!33354 (_1!24819 (v!40357 lt!1478927))) (size!33354 (_1!24819 (v!40357 lt!1478929)))) lt!1478927 lt!1478929)))))))

(declare-fun call!290651 () Option!9706)

(assert (=> b!4146398 (= lt!1478927 call!290651)))

(assert (=> b!4146398 (= lt!1478929 (maxPrefix!4179 thiss!25645 (t!342800 rules!3756) input!3238))))

(declare-fun b!4146399 () Bool)

(declare-fun e!2572700 () Bool)

(declare-fun lt!1478931 () Option!9706)

(assert (=> b!4146399 (= e!2572700 (contains!9082 rules!3756 (rule!10524 (_1!24819 (get!14695 lt!1478931)))))))

(declare-fun b!4146400 () Bool)

(declare-fun e!2572702 () Bool)

(assert (=> b!4146400 (= e!2572702 e!2572700)))

(declare-fun res!1697174 () Bool)

(assert (=> b!4146400 (=> (not res!1697174) (not e!2572700))))

(declare-fun isDefined!7292 (Option!9706) Bool)

(assert (=> b!4146400 (= res!1697174 (isDefined!7292 lt!1478931))))

(declare-fun b!4146401 () Bool)

(declare-fun res!1697173 () Bool)

(assert (=> b!4146401 (=> (not res!1697173) (not e!2572700))))

(assert (=> b!4146401 (= res!1697173 (= (list!16481 (charsOf!4999 (_1!24819 (get!14695 lt!1478931)))) (originalCharacters!7896 (_1!24819 (get!14695 lt!1478931)))))))

(declare-fun b!4146402 () Bool)

(declare-fun res!1697172 () Bool)

(assert (=> b!4146402 (=> (not res!1697172) (not e!2572700))))

(assert (=> b!4146402 (= res!1697172 (= (value!231454 (_1!24819 (get!14695 lt!1478931))) (apply!10473 (transformation!7400 (rule!10524 (_1!24819 (get!14695 lt!1478931)))) (seqFromList!5517 (originalCharacters!7896 (_1!24819 (get!14695 lt!1478931)))))))))

(declare-fun b!4146403 () Bool)

(declare-fun res!1697171 () Bool)

(assert (=> b!4146403 (=> (not res!1697171) (not e!2572700))))

(assert (=> b!4146403 (= res!1697171 (= (++!11638 (list!16481 (charsOf!4999 (_1!24819 (get!14695 lt!1478931)))) (_2!24819 (get!14695 lt!1478931))) input!3238))))

(declare-fun b!4146404 () Bool)

(assert (=> b!4146404 (= e!2572701 call!290651)))

(declare-fun b!4146405 () Bool)

(declare-fun res!1697176 () Bool)

(assert (=> b!4146405 (=> (not res!1697176) (not e!2572700))))

(assert (=> b!4146405 (= res!1697176 (< (size!33355 (_2!24819 (get!14695 lt!1478931))) (size!33355 input!3238)))))

(declare-fun d!1227079 () Bool)

(assert (=> d!1227079 e!2572702))

(declare-fun res!1697177 () Bool)

(assert (=> d!1227079 (=> res!1697177 e!2572702)))

(assert (=> d!1227079 (= res!1697177 (isEmpty!26854 lt!1478931))))

(assert (=> d!1227079 (= lt!1478931 e!2572701)))

(declare-fun c!710466 () Bool)

(assert (=> d!1227079 (= c!710466 (and ((_ is Cons!44997) rules!3756) ((_ is Nil!44997) (t!342800 rules!3756))))))

(declare-fun lt!1478928 () Unit!64283)

(declare-fun lt!1478930 () Unit!64283)

(assert (=> d!1227079 (= lt!1478928 lt!1478930)))

(assert (=> d!1227079 (isPrefix!4335 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2800 (List!45120 List!45120) Unit!64283)

(assert (=> d!1227079 (= lt!1478930 (lemmaIsPrefixRefl!2800 input!3238 input!3238))))

(declare-fun rulesValidInductive!2752 (LexerInterface!6989 List!45121) Bool)

(assert (=> d!1227079 (rulesValidInductive!2752 thiss!25645 rules!3756)))

(assert (=> d!1227079 (= (maxPrefix!4179 thiss!25645 rules!3756 input!3238) lt!1478931)))

(declare-fun b!4146406 () Bool)

(declare-fun res!1697175 () Bool)

(assert (=> b!4146406 (=> (not res!1697175) (not e!2572700))))

(assert (=> b!4146406 (= res!1697175 (matchR!6134 (regex!7400 (rule!10524 (_1!24819 (get!14695 lt!1478931)))) (list!16481 (charsOf!4999 (_1!24819 (get!14695 lt!1478931))))))))

(declare-fun bm!290646 () Bool)

(assert (=> bm!290646 (= call!290651 (maxPrefixOneRule!3118 thiss!25645 (h!50417 rules!3756) input!3238))))

(assert (= (and d!1227079 c!710466) b!4146404))

(assert (= (and d!1227079 (not c!710466)) b!4146398))

(assert (= (or b!4146404 b!4146398) bm!290646))

(assert (= (and d!1227079 (not res!1697177)) b!4146400))

(assert (= (and b!4146400 res!1697174) b!4146401))

(assert (= (and b!4146401 res!1697173) b!4146405))

(assert (= (and b!4146405 res!1697176) b!4146403))

(assert (= (and b!4146403 res!1697171) b!4146402))

(assert (= (and b!4146402 res!1697172) b!4146406))

(assert (= (and b!4146406 res!1697175) b!4146399))

(declare-fun m!4742423 () Bool)

(assert (=> d!1227079 m!4742423))

(declare-fun m!4742425 () Bool)

(assert (=> d!1227079 m!4742425))

(declare-fun m!4742427 () Bool)

(assert (=> d!1227079 m!4742427))

(declare-fun m!4742429 () Bool)

(assert (=> d!1227079 m!4742429))

(declare-fun m!4742431 () Bool)

(assert (=> b!4146399 m!4742431))

(declare-fun m!4742433 () Bool)

(assert (=> b!4146399 m!4742433))

(assert (=> b!4146403 m!4742431))

(declare-fun m!4742435 () Bool)

(assert (=> b!4146403 m!4742435))

(assert (=> b!4146403 m!4742435))

(declare-fun m!4742437 () Bool)

(assert (=> b!4146403 m!4742437))

(assert (=> b!4146403 m!4742437))

(declare-fun m!4742439 () Bool)

(assert (=> b!4146403 m!4742439))

(assert (=> b!4146406 m!4742431))

(assert (=> b!4146406 m!4742435))

(assert (=> b!4146406 m!4742435))

(assert (=> b!4146406 m!4742437))

(assert (=> b!4146406 m!4742437))

(declare-fun m!4742441 () Bool)

(assert (=> b!4146406 m!4742441))

(assert (=> b!4146405 m!4742431))

(declare-fun m!4742443 () Bool)

(assert (=> b!4146405 m!4742443))

(assert (=> b!4146405 m!4742397))

(declare-fun m!4742445 () Bool)

(assert (=> bm!290646 m!4742445))

(assert (=> b!4146401 m!4742431))

(assert (=> b!4146401 m!4742435))

(assert (=> b!4146401 m!4742435))

(assert (=> b!4146401 m!4742437))

(declare-fun m!4742447 () Bool)

(assert (=> b!4146398 m!4742447))

(assert (=> b!4146402 m!4742431))

(declare-fun m!4742449 () Bool)

(assert (=> b!4146402 m!4742449))

(assert (=> b!4146402 m!4742449))

(declare-fun m!4742451 () Bool)

(assert (=> b!4146402 m!4742451))

(declare-fun m!4742453 () Bool)

(assert (=> b!4146400 m!4742453))

(assert (=> b!4146111 d!1227079))

(declare-fun d!1227085 () Bool)

(declare-fun fromListB!2533 (List!45120) BalanceConc!26816)

(assert (=> d!1227085 (= (seqFromList!5517 p!2912) (fromListB!2533 p!2912))))

(declare-fun bs!595356 () Bool)

(assert (= bs!595356 d!1227085))

(declare-fun m!4742455 () Bool)

(assert (=> bs!595356 m!4742455))

(assert (=> b!4146111 d!1227085))

(declare-fun d!1227087 () Bool)

(declare-fun lt!1478934 () Int)

(assert (=> d!1227087 (>= lt!1478934 0)))

(declare-fun e!2572705 () Int)

(assert (=> d!1227087 (= lt!1478934 e!2572705)))

(declare-fun c!710469 () Bool)

(assert (=> d!1227087 (= c!710469 ((_ is Nil!44996) p!2912))))

(assert (=> d!1227087 (= (size!33355 p!2912) lt!1478934)))

(declare-fun b!4146411 () Bool)

(assert (=> b!4146411 (= e!2572705 0)))

(declare-fun b!4146412 () Bool)

(assert (=> b!4146412 (= e!2572705 (+ 1 (size!33355 (t!342799 p!2912))))))

(assert (= (and d!1227087 c!710469) b!4146411))

(assert (= (and d!1227087 (not c!710469)) b!4146412))

(declare-fun m!4742457 () Bool)

(assert (=> b!4146412 m!4742457))

(assert (=> b!4146111 d!1227087))

(declare-fun b!4146422 () Bool)

(declare-fun res!1697189 () Bool)

(declare-fun e!2572713 () Bool)

(assert (=> b!4146422 (=> (not res!1697189) (not e!2572713))))

(declare-fun head!8750 (List!45120) C!24796)

(assert (=> b!4146422 (= res!1697189 (= (head!8750 p!2912) (head!8750 input!3238)))))

(declare-fun d!1227089 () Bool)

(declare-fun e!2572712 () Bool)

(assert (=> d!1227089 e!2572712))

(declare-fun res!1697187 () Bool)

(assert (=> d!1227089 (=> res!1697187 e!2572712)))

(declare-fun lt!1478937 () Bool)

(assert (=> d!1227089 (= res!1697187 (not lt!1478937))))

(declare-fun e!2572714 () Bool)

(assert (=> d!1227089 (= lt!1478937 e!2572714)))

(declare-fun res!1697186 () Bool)

(assert (=> d!1227089 (=> res!1697186 e!2572714)))

(assert (=> d!1227089 (= res!1697186 ((_ is Nil!44996) p!2912))))

(assert (=> d!1227089 (= (isPrefix!4335 p!2912 input!3238) lt!1478937)))

(declare-fun b!4146424 () Bool)

(assert (=> b!4146424 (= e!2572712 (>= (size!33355 input!3238) (size!33355 p!2912)))))

(declare-fun b!4146423 () Bool)

(assert (=> b!4146423 (= e!2572713 (isPrefix!4335 (tail!6587 p!2912) (tail!6587 input!3238)))))

(declare-fun b!4146421 () Bool)

(assert (=> b!4146421 (= e!2572714 e!2572713)))

(declare-fun res!1697188 () Bool)

(assert (=> b!4146421 (=> (not res!1697188) (not e!2572713))))

(assert (=> b!4146421 (= res!1697188 (not ((_ is Nil!44996) input!3238)))))

(assert (= (and d!1227089 (not res!1697186)) b!4146421))

(assert (= (and b!4146421 res!1697188) b!4146422))

(assert (= (and b!4146422 res!1697189) b!4146423))

(assert (= (and d!1227089 (not res!1697187)) b!4146424))

(declare-fun m!4742459 () Bool)

(assert (=> b!4146422 m!4742459))

(declare-fun m!4742461 () Bool)

(assert (=> b!4146422 m!4742461))

(assert (=> b!4146424 m!4742397))

(assert (=> b!4146424 m!4742173))

(declare-fun m!4742463 () Bool)

(assert (=> b!4146423 m!4742463))

(assert (=> b!4146423 m!4742399))

(assert (=> b!4146423 m!4742463))

(assert (=> b!4146423 m!4742399))

(declare-fun m!4742465 () Bool)

(assert (=> b!4146423 m!4742465))

(assert (=> b!4146100 d!1227089))

(declare-fun d!1227091 () Bool)

(assert (=> d!1227091 (ruleValid!3206 thiss!25645 r!4008)))

(declare-fun lt!1478940 () Unit!64283)

(declare-fun choose!25385 (LexerInterface!6989 Rule!14600 List!45121) Unit!64283)

(assert (=> d!1227091 (= lt!1478940 (choose!25385 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1227091 (contains!9082 rules!3756 r!4008)))

(assert (=> d!1227091 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2246 thiss!25645 r!4008 rules!3756) lt!1478940)))

(declare-fun bs!595357 () Bool)

(assert (= bs!595357 d!1227091))

(assert (=> bs!595357 m!4742129))

(declare-fun m!4742467 () Bool)

(assert (=> bs!595357 m!4742467))

(assert (=> bs!595357 m!4742191))

(assert (=> b!4146110 d!1227091))

(declare-fun d!1227093 () Bool)

(declare-fun res!1697194 () Bool)

(declare-fun e!2572717 () Bool)

(assert (=> d!1227093 (=> (not res!1697194) (not e!2572717))))

(declare-fun validRegex!5547 (Regex!12305) Bool)

(assert (=> d!1227093 (= res!1697194 (validRegex!5547 (regex!7400 rBis!149)))))

(assert (=> d!1227093 (= (ruleValid!3206 thiss!25645 rBis!149) e!2572717)))

(declare-fun b!4146429 () Bool)

(declare-fun res!1697195 () Bool)

(assert (=> b!4146429 (=> (not res!1697195) (not e!2572717))))

(declare-fun nullable!4337 (Regex!12305) Bool)

(assert (=> b!4146429 (= res!1697195 (not (nullable!4337 (regex!7400 rBis!149))))))

(declare-fun b!4146430 () Bool)

(assert (=> b!4146430 (= e!2572717 (not (= (tag!8260 rBis!149) (String!51901 ""))))))

(assert (= (and d!1227093 res!1697194) b!4146429))

(assert (= (and b!4146429 res!1697195) b!4146430))

(declare-fun m!4742469 () Bool)

(assert (=> d!1227093 m!4742469))

(declare-fun m!4742471 () Bool)

(assert (=> b!4146429 m!4742471))

(assert (=> b!4146110 d!1227093))

(declare-fun d!1227095 () Bool)

(assert (=> d!1227095 (ruleValid!3206 thiss!25645 rBis!149)))

(declare-fun lt!1478941 () Unit!64283)

(assert (=> d!1227095 (= lt!1478941 (choose!25385 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1227095 (contains!9082 rules!3756 rBis!149)))

(assert (=> d!1227095 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2246 thiss!25645 rBis!149 rules!3756) lt!1478941)))

(declare-fun bs!595358 () Bool)

(assert (= bs!595358 d!1227095))

(assert (=> bs!595358 m!4742133))

(declare-fun m!4742473 () Bool)

(assert (=> bs!595358 m!4742473))

(assert (=> bs!595358 m!4742161))

(assert (=> b!4146110 d!1227095))

(declare-fun d!1227097 () Bool)

(assert (=> d!1227097 (= (isEmpty!26855 p!2912) ((_ is Nil!44996) p!2912))))

(assert (=> b!4146099 d!1227097))

(declare-fun b!4146459 () Bool)

(declare-fun e!2572738 () Bool)

(declare-fun e!2572735 () Bool)

(assert (=> b!4146459 (= e!2572738 e!2572735)))

(declare-fun c!710476 () Bool)

(assert (=> b!4146459 (= c!710476 ((_ is EmptyLang!12305) (regex!7400 r!4008)))))

(declare-fun b!4146460 () Bool)

(declare-fun res!1697216 () Bool)

(declare-fun e!2572733 () Bool)

(assert (=> b!4146460 (=> res!1697216 e!2572733)))

(assert (=> b!4146460 (= res!1697216 (not (isEmpty!26855 (tail!6587 p!2912))))))

(declare-fun b!4146461 () Bool)

(declare-fun res!1697215 () Bool)

(declare-fun e!2572734 () Bool)

(assert (=> b!4146461 (=> (not res!1697215) (not e!2572734))))

(declare-fun call!290654 () Bool)

(assert (=> b!4146461 (= res!1697215 (not call!290654))))

(declare-fun b!4146462 () Bool)

(assert (=> b!4146462 (= e!2572733 (not (= (head!8750 p!2912) (c!710421 (regex!7400 r!4008)))))))

(declare-fun b!4146463 () Bool)

(declare-fun res!1697213 () Bool)

(assert (=> b!4146463 (=> (not res!1697213) (not e!2572734))))

(assert (=> b!4146463 (= res!1697213 (isEmpty!26855 (tail!6587 p!2912)))))

(declare-fun b!4146464 () Bool)

(declare-fun e!2572737 () Bool)

(declare-fun derivativeStep!3731 (Regex!12305 C!24796) Regex!12305)

(assert (=> b!4146464 (= e!2572737 (matchR!6134 (derivativeStep!3731 (regex!7400 r!4008) (head!8750 p!2912)) (tail!6587 p!2912)))))

(declare-fun b!4146465 () Bool)

(assert (=> b!4146465 (= e!2572737 (nullable!4337 (regex!7400 r!4008)))))

(declare-fun bm!290649 () Bool)

(assert (=> bm!290649 (= call!290654 (isEmpty!26855 p!2912))))

(declare-fun b!4146466 () Bool)

(declare-fun e!2572736 () Bool)

(declare-fun e!2572732 () Bool)

(assert (=> b!4146466 (= e!2572736 e!2572732)))

(declare-fun res!1697217 () Bool)

(assert (=> b!4146466 (=> (not res!1697217) (not e!2572732))))

(declare-fun lt!1478944 () Bool)

(assert (=> b!4146466 (= res!1697217 (not lt!1478944))))

(declare-fun b!4146467 () Bool)

(declare-fun res!1697218 () Bool)

(assert (=> b!4146467 (=> res!1697218 e!2572736)))

(assert (=> b!4146467 (= res!1697218 e!2572734)))

(declare-fun res!1697214 () Bool)

(assert (=> b!4146467 (=> (not res!1697214) (not e!2572734))))

(assert (=> b!4146467 (= res!1697214 lt!1478944)))

(declare-fun b!4146468 () Bool)

(assert (=> b!4146468 (= e!2572735 (not lt!1478944))))

(declare-fun b!4146469 () Bool)

(assert (=> b!4146469 (= e!2572734 (= (head!8750 p!2912) (c!710421 (regex!7400 r!4008))))))

(declare-fun b!4146470 () Bool)

(assert (=> b!4146470 (= e!2572732 e!2572733)))

(declare-fun res!1697219 () Bool)

(assert (=> b!4146470 (=> res!1697219 e!2572733)))

(assert (=> b!4146470 (= res!1697219 call!290654)))

(declare-fun d!1227099 () Bool)

(assert (=> d!1227099 e!2572738))

(declare-fun c!710477 () Bool)

(assert (=> d!1227099 (= c!710477 ((_ is EmptyExpr!12305) (regex!7400 r!4008)))))

(assert (=> d!1227099 (= lt!1478944 e!2572737)))

(declare-fun c!710478 () Bool)

(assert (=> d!1227099 (= c!710478 (isEmpty!26855 p!2912))))

(assert (=> d!1227099 (validRegex!5547 (regex!7400 r!4008))))

(assert (=> d!1227099 (= (matchR!6134 (regex!7400 r!4008) p!2912) lt!1478944)))

(declare-fun b!4146471 () Bool)

(assert (=> b!4146471 (= e!2572738 (= lt!1478944 call!290654))))

(declare-fun b!4146472 () Bool)

(declare-fun res!1697212 () Bool)

(assert (=> b!4146472 (=> res!1697212 e!2572736)))

(assert (=> b!4146472 (= res!1697212 (not ((_ is ElementMatch!12305) (regex!7400 r!4008))))))

(assert (=> b!4146472 (= e!2572735 e!2572736)))

(assert (= (and d!1227099 c!710478) b!4146465))

(assert (= (and d!1227099 (not c!710478)) b!4146464))

(assert (= (and d!1227099 c!710477) b!4146471))

(assert (= (and d!1227099 (not c!710477)) b!4146459))

(assert (= (and b!4146459 c!710476) b!4146468))

(assert (= (and b!4146459 (not c!710476)) b!4146472))

(assert (= (and b!4146472 (not res!1697212)) b!4146467))

(assert (= (and b!4146467 res!1697214) b!4146461))

(assert (= (and b!4146461 res!1697215) b!4146463))

(assert (= (and b!4146463 res!1697213) b!4146469))

(assert (= (and b!4146467 (not res!1697218)) b!4146466))

(assert (= (and b!4146466 res!1697217) b!4146470))

(assert (= (and b!4146470 (not res!1697219)) b!4146460))

(assert (= (and b!4146460 (not res!1697216)) b!4146462))

(assert (= (or b!4146471 b!4146461 b!4146470) bm!290649))

(assert (=> b!4146464 m!4742459))

(assert (=> b!4146464 m!4742459))

(declare-fun m!4742475 () Bool)

(assert (=> b!4146464 m!4742475))

(assert (=> b!4146464 m!4742463))

(assert (=> b!4146464 m!4742475))

(assert (=> b!4146464 m!4742463))

(declare-fun m!4742477 () Bool)

(assert (=> b!4146464 m!4742477))

(assert (=> b!4146463 m!4742463))

(assert (=> b!4146463 m!4742463))

(declare-fun m!4742479 () Bool)

(assert (=> b!4146463 m!4742479))

(assert (=> b!4146460 m!4742463))

(assert (=> b!4146460 m!4742463))

(assert (=> b!4146460 m!4742479))

(assert (=> b!4146469 m!4742459))

(assert (=> d!1227099 m!4742169))

(declare-fun m!4742481 () Bool)

(assert (=> d!1227099 m!4742481))

(assert (=> b!4146462 m!4742459))

(assert (=> bm!290649 m!4742169))

(declare-fun m!4742483 () Bool)

(assert (=> b!4146465 m!4742483))

(assert (=> b!4146109 d!1227099))

(declare-fun d!1227101 () Bool)

(declare-fun lt!1478945 () Bool)

(assert (=> d!1227101 (= lt!1478945 (select (content!6963 rules!3756) rBis!149))))

(declare-fun e!2572740 () Bool)

(assert (=> d!1227101 (= lt!1478945 e!2572740)))

(declare-fun res!1697221 () Bool)

(assert (=> d!1227101 (=> (not res!1697221) (not e!2572740))))

(assert (=> d!1227101 (= res!1697221 ((_ is Cons!44997) rules!3756))))

(assert (=> d!1227101 (= (contains!9082 rules!3756 rBis!149) lt!1478945)))

(declare-fun b!4146473 () Bool)

(declare-fun e!2572739 () Bool)

(assert (=> b!4146473 (= e!2572740 e!2572739)))

(declare-fun res!1697220 () Bool)

(assert (=> b!4146473 (=> res!1697220 e!2572739)))

(assert (=> b!4146473 (= res!1697220 (= (h!50417 rules!3756) rBis!149))))

(declare-fun b!4146474 () Bool)

(assert (=> b!4146474 (= e!2572739 (contains!9082 (t!342800 rules!3756) rBis!149))))

(assert (= (and d!1227101 res!1697221) b!4146473))

(assert (= (and b!4146473 (not res!1697220)) b!4146474))

(assert (=> d!1227101 m!4742241))

(declare-fun m!4742485 () Bool)

(assert (=> d!1227101 m!4742485))

(declare-fun m!4742487 () Bool)

(assert (=> b!4146474 m!4742487))

(assert (=> b!4146098 d!1227101))

(declare-fun d!1227103 () Bool)

(assert (=> d!1227103 (= (inv!59605 (tag!8260 r!4008)) (= (mod (str.len (value!231453 (tag!8260 r!4008))) 2) 0))))

(assert (=> b!4146108 d!1227103))

(declare-fun d!1227105 () Bool)

(declare-fun res!1697222 () Bool)

(declare-fun e!2572741 () Bool)

(assert (=> d!1227105 (=> (not res!1697222) (not e!2572741))))

(assert (=> d!1227105 (= res!1697222 (semiInverseModEq!3201 (toChars!9923 (transformation!7400 r!4008)) (toValue!10064 (transformation!7400 r!4008))))))

(assert (=> d!1227105 (= (inv!59607 (transformation!7400 r!4008)) e!2572741)))

(declare-fun b!4146475 () Bool)

(assert (=> b!4146475 (= e!2572741 (equivClasses!3100 (toChars!9923 (transformation!7400 r!4008)) (toValue!10064 (transformation!7400 r!4008))))))

(assert (= (and d!1227105 res!1697222) b!4146475))

(declare-fun m!4742489 () Bool)

(assert (=> d!1227105 m!4742489))

(declare-fun m!4742491 () Bool)

(assert (=> b!4146475 m!4742491))

(assert (=> b!4146108 d!1227105))

(declare-fun d!1227107 () Bool)

(declare-fun lt!1478946 () Bool)

(assert (=> d!1227107 (= lt!1478946 (select (content!6963 (tail!6585 rules!3756)) r!4008))))

(declare-fun e!2572743 () Bool)

(assert (=> d!1227107 (= lt!1478946 e!2572743)))

(declare-fun res!1697224 () Bool)

(assert (=> d!1227107 (=> (not res!1697224) (not e!2572743))))

(assert (=> d!1227107 (= res!1697224 ((_ is Cons!44997) (tail!6585 rules!3756)))))

(assert (=> d!1227107 (= (contains!9082 (tail!6585 rules!3756) r!4008) lt!1478946)))

(declare-fun b!4146476 () Bool)

(declare-fun e!2572742 () Bool)

(assert (=> b!4146476 (= e!2572743 e!2572742)))

(declare-fun res!1697223 () Bool)

(assert (=> b!4146476 (=> res!1697223 e!2572742)))

(assert (=> b!4146476 (= res!1697223 (= (h!50417 (tail!6585 rules!3756)) r!4008))))

(declare-fun b!4146477 () Bool)

(assert (=> b!4146477 (= e!2572742 (contains!9082 (t!342800 (tail!6585 rules!3756)) r!4008))))

(assert (= (and d!1227107 res!1697224) b!4146476))

(assert (= (and b!4146476 (not res!1697223)) b!4146477))

(assert (=> d!1227107 m!4742149))

(declare-fun m!4742493 () Bool)

(assert (=> d!1227107 m!4742493))

(declare-fun m!4742495 () Bool)

(assert (=> d!1227107 m!4742495))

(declare-fun m!4742497 () Bool)

(assert (=> b!4146477 m!4742497))

(assert (=> b!4146097 d!1227107))

(declare-fun d!1227109 () Bool)

(assert (=> d!1227109 (= (tail!6585 rules!3756) (t!342800 rules!3756))))

(assert (=> b!4146097 d!1227109))

(declare-fun d!1227111 () Bool)

(assert (=> d!1227111 (contains!9082 (tail!6585 rules!3756) r!4008)))

(declare-fun lt!1478949 () Unit!64283)

(declare-fun choose!25386 (List!45121 Rule!14600 Rule!14600) Unit!64283)

(assert (=> d!1227111 (= lt!1478949 (choose!25386 rules!3756 rBis!149 r!4008))))

(declare-fun e!2572746 () Bool)

(assert (=> d!1227111 e!2572746))

(declare-fun res!1697227 () Bool)

(assert (=> d!1227111 (=> (not res!1697227) (not e!2572746))))

(assert (=> d!1227111 (= res!1697227 (contains!9082 rules!3756 rBis!149))))

(assert (=> d!1227111 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!104 rules!3756 rBis!149 r!4008) lt!1478949)))

(declare-fun b!4146480 () Bool)

(assert (=> b!4146480 (= e!2572746 (contains!9082 rules!3756 r!4008))))

(assert (= (and d!1227111 res!1697227) b!4146480))

(assert (=> d!1227111 m!4742149))

(assert (=> d!1227111 m!4742149))

(assert (=> d!1227111 m!4742151))

(declare-fun m!4742499 () Bool)

(assert (=> d!1227111 m!4742499))

(assert (=> d!1227111 m!4742161))

(assert (=> b!4146480 m!4742191))

(assert (=> b!4146097 d!1227111))

(declare-fun b!4146499 () Bool)

(declare-fun res!1697242 () Bool)

(declare-fun e!2572757 () Bool)

(assert (=> b!4146499 (=> (not res!1697242) (not e!2572757))))

(declare-fun lt!1478964 () Option!9706)

(assert (=> b!4146499 (= res!1697242 (= (rule!10524 (_1!24819 (get!14695 lt!1478964))) rBis!149))))

(declare-fun b!4146500 () Bool)

(declare-fun e!2572756 () Bool)

(declare-datatypes ((tuple2!43374 0))(
  ( (tuple2!43375 (_1!24821 List!45120) (_2!24821 List!45120)) )
))
(declare-fun findLongestMatchInner!1541 (Regex!12305 List!45120 Int List!45120 List!45120 Int) tuple2!43374)

(assert (=> b!4146500 (= e!2572756 (matchR!6134 (regex!7400 rBis!149) (_1!24821 (findLongestMatchInner!1541 (regex!7400 rBis!149) Nil!44996 (size!33355 Nil!44996) input!3238 input!3238 (size!33355 input!3238)))))))

(declare-fun b!4146501 () Bool)

(assert (=> b!4146501 (= e!2572757 (= (size!33354 (_1!24819 (get!14695 lt!1478964))) (size!33355 (originalCharacters!7896 (_1!24819 (get!14695 lt!1478964))))))))

(declare-fun d!1227113 () Bool)

(declare-fun e!2572755 () Bool)

(assert (=> d!1227113 e!2572755))

(declare-fun res!1697243 () Bool)

(assert (=> d!1227113 (=> res!1697243 e!2572755)))

(assert (=> d!1227113 (= res!1697243 (isEmpty!26854 lt!1478964))))

(declare-fun e!2572758 () Option!9706)

(assert (=> d!1227113 (= lt!1478964 e!2572758)))

(declare-fun c!710481 () Bool)

(declare-fun lt!1478962 () tuple2!43374)

(assert (=> d!1227113 (= c!710481 (isEmpty!26855 (_1!24821 lt!1478962)))))

(declare-fun findLongestMatch!1454 (Regex!12305 List!45120) tuple2!43374)

(assert (=> d!1227113 (= lt!1478962 (findLongestMatch!1454 (regex!7400 rBis!149) input!3238))))

(assert (=> d!1227113 (ruleValid!3206 thiss!25645 rBis!149)))

(assert (=> d!1227113 (= (maxPrefixOneRule!3118 thiss!25645 rBis!149 input!3238) lt!1478964)))

(declare-fun b!4146502 () Bool)

(declare-fun res!1697244 () Bool)

(assert (=> b!4146502 (=> (not res!1697244) (not e!2572757))))

(assert (=> b!4146502 (= res!1697244 (< (size!33355 (_2!24819 (get!14695 lt!1478964))) (size!33355 input!3238)))))

(declare-fun b!4146503 () Bool)

(assert (=> b!4146503 (= e!2572758 (Some!9705 (tuple2!43371 (Token!13731 (apply!10473 (transformation!7400 rBis!149) (seqFromList!5517 (_1!24821 lt!1478962))) rBis!149 (size!33356 (seqFromList!5517 (_1!24821 lt!1478962))) (_1!24821 lt!1478962)) (_2!24821 lt!1478962))))))

(declare-fun lt!1478961 () Unit!64283)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1514 (Regex!12305 List!45120) Unit!64283)

(assert (=> b!4146503 (= lt!1478961 (longestMatchIsAcceptedByMatchOrIsEmpty!1514 (regex!7400 rBis!149) input!3238))))

(declare-fun res!1697248 () Bool)

(assert (=> b!4146503 (= res!1697248 (isEmpty!26855 (_1!24821 (findLongestMatchInner!1541 (regex!7400 rBis!149) Nil!44996 (size!33355 Nil!44996) input!3238 input!3238 (size!33355 input!3238)))))))

(assert (=> b!4146503 (=> res!1697248 e!2572756)))

(assert (=> b!4146503 e!2572756))

(declare-fun lt!1478960 () Unit!64283)

(assert (=> b!4146503 (= lt!1478960 lt!1478961)))

(declare-fun lt!1478963 () Unit!64283)

(assert (=> b!4146503 (= lt!1478963 (lemmaSemiInverse!2258 (transformation!7400 rBis!149) (seqFromList!5517 (_1!24821 lt!1478962))))))

(declare-fun b!4146504 () Bool)

(declare-fun res!1697245 () Bool)

(assert (=> b!4146504 (=> (not res!1697245) (not e!2572757))))

(assert (=> b!4146504 (= res!1697245 (= (value!231454 (_1!24819 (get!14695 lt!1478964))) (apply!10473 (transformation!7400 (rule!10524 (_1!24819 (get!14695 lt!1478964)))) (seqFromList!5517 (originalCharacters!7896 (_1!24819 (get!14695 lt!1478964)))))))))

(declare-fun b!4146505 () Bool)

(declare-fun res!1697247 () Bool)

(assert (=> b!4146505 (=> (not res!1697247) (not e!2572757))))

(assert (=> b!4146505 (= res!1697247 (= (++!11638 (list!16481 (charsOf!4999 (_1!24819 (get!14695 lt!1478964)))) (_2!24819 (get!14695 lt!1478964))) input!3238))))

(declare-fun b!4146506 () Bool)

(assert (=> b!4146506 (= e!2572755 e!2572757)))

(declare-fun res!1697246 () Bool)

(assert (=> b!4146506 (=> (not res!1697246) (not e!2572757))))

(assert (=> b!4146506 (= res!1697246 (matchR!6134 (regex!7400 rBis!149) (list!16481 (charsOf!4999 (_1!24819 (get!14695 lt!1478964))))))))

(declare-fun b!4146507 () Bool)

(assert (=> b!4146507 (= e!2572758 None!9705)))

(assert (= (and d!1227113 c!710481) b!4146507))

(assert (= (and d!1227113 (not c!710481)) b!4146503))

(assert (= (and b!4146503 (not res!1697248)) b!4146500))

(assert (= (and d!1227113 (not res!1697243)) b!4146506))

(assert (= (and b!4146506 res!1697246) b!4146505))

(assert (= (and b!4146505 res!1697247) b!4146502))

(assert (= (and b!4146502 res!1697244) b!4146499))

(assert (= (and b!4146499 res!1697242) b!4146504))

(assert (= (and b!4146504 res!1697245) b!4146501))

(declare-fun m!4742501 () Bool)

(assert (=> b!4146500 m!4742501))

(assert (=> b!4146500 m!4742397))

(assert (=> b!4146500 m!4742501))

(assert (=> b!4146500 m!4742397))

(declare-fun m!4742503 () Bool)

(assert (=> b!4146500 m!4742503))

(declare-fun m!4742505 () Bool)

(assert (=> b!4146500 m!4742505))

(declare-fun m!4742507 () Bool)

(assert (=> b!4146506 m!4742507))

(declare-fun m!4742509 () Bool)

(assert (=> b!4146506 m!4742509))

(assert (=> b!4146506 m!4742509))

(declare-fun m!4742511 () Bool)

(assert (=> b!4146506 m!4742511))

(assert (=> b!4146506 m!4742511))

(declare-fun m!4742513 () Bool)

(assert (=> b!4146506 m!4742513))

(assert (=> b!4146502 m!4742507))

(declare-fun m!4742515 () Bool)

(assert (=> b!4146502 m!4742515))

(assert (=> b!4146502 m!4742397))

(assert (=> b!4146505 m!4742507))

(assert (=> b!4146505 m!4742509))

(assert (=> b!4146505 m!4742509))

(assert (=> b!4146505 m!4742511))

(assert (=> b!4146505 m!4742511))

(declare-fun m!4742517 () Bool)

(assert (=> b!4146505 m!4742517))

(assert (=> b!4146501 m!4742507))

(declare-fun m!4742519 () Bool)

(assert (=> b!4146501 m!4742519))

(declare-fun m!4742521 () Bool)

(assert (=> d!1227113 m!4742521))

(declare-fun m!4742523 () Bool)

(assert (=> d!1227113 m!4742523))

(declare-fun m!4742525 () Bool)

(assert (=> d!1227113 m!4742525))

(assert (=> d!1227113 m!4742133))

(declare-fun m!4742527 () Bool)

(assert (=> b!4146503 m!4742527))

(assert (=> b!4146503 m!4742501))

(assert (=> b!4146503 m!4742501))

(assert (=> b!4146503 m!4742397))

(assert (=> b!4146503 m!4742503))

(assert (=> b!4146503 m!4742527))

(declare-fun m!4742529 () Bool)

(assert (=> b!4146503 m!4742529))

(declare-fun m!4742531 () Bool)

(assert (=> b!4146503 m!4742531))

(assert (=> b!4146503 m!4742527))

(declare-fun m!4742533 () Bool)

(assert (=> b!4146503 m!4742533))

(assert (=> b!4146503 m!4742527))

(declare-fun m!4742535 () Bool)

(assert (=> b!4146503 m!4742535))

(declare-fun m!4742537 () Bool)

(assert (=> b!4146503 m!4742537))

(assert (=> b!4146503 m!4742397))

(assert (=> b!4146504 m!4742507))

(declare-fun m!4742539 () Bool)

(assert (=> b!4146504 m!4742539))

(assert (=> b!4146504 m!4742539))

(declare-fun m!4742541 () Bool)

(assert (=> b!4146504 m!4742541))

(assert (=> b!4146499 m!4742507))

(assert (=> b!4146097 d!1227113))

(declare-fun d!1227115 () Bool)

(assert (=> d!1227115 (= (isEmpty!26854 lt!1478823) (not ((_ is Some!9705) lt!1478823)))))

(assert (=> b!4146097 d!1227115))

(declare-fun d!1227117 () Bool)

(assert (=> d!1227117 (not (= rBis!149 r!4008))))

(declare-fun lt!1478967 () Unit!64283)

(declare-fun choose!25387 (LexerInterface!6989 List!45121 Rule!14600 Rule!14600) Unit!64283)

(assert (=> d!1227117 (= lt!1478967 (choose!25387 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1227117 (contains!9082 rules!3756 rBis!149)))

(assert (=> d!1227117 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!98 thiss!25645 rules!3756 rBis!149 r!4008) lt!1478967)))

(declare-fun bs!595359 () Bool)

(assert (= bs!595359 d!1227117))

(declare-fun m!4742543 () Bool)

(assert (=> bs!595359 m!4742543))

(assert (=> bs!595359 m!4742161))

(assert (=> b!4146097 d!1227117))

(declare-fun d!1227119 () Bool)

(assert (=> d!1227119 (not (= (tag!8260 rBis!149) (tag!8260 r!4008)))))

(declare-fun lt!1478970 () Unit!64283)

(declare-fun choose!25388 (LexerInterface!6989 List!45121 Rule!14600 Rule!14600) Unit!64283)

(assert (=> d!1227119 (= lt!1478970 (choose!25388 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1227119 (contains!9082 rules!3756 rBis!149)))

(assert (=> d!1227119 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!62 thiss!25645 rules!3756 rBis!149 r!4008) lt!1478970)))

(declare-fun bs!595360 () Bool)

(assert (= bs!595360 d!1227119))

(declare-fun m!4742545 () Bool)

(assert (=> bs!595360 m!4742545))

(assert (=> bs!595360 m!4742161))

(assert (=> b!4146096 d!1227119))

(declare-fun d!1227121 () Bool)

(declare-fun res!1697249 () Bool)

(declare-fun e!2572759 () Bool)

(assert (=> d!1227121 (=> (not res!1697249) (not e!2572759))))

(assert (=> d!1227121 (= res!1697249 (validRegex!5547 (regex!7400 r!4008)))))

(assert (=> d!1227121 (= (ruleValid!3206 thiss!25645 r!4008) e!2572759)))

(declare-fun b!4146508 () Bool)

(declare-fun res!1697250 () Bool)

(assert (=> b!4146508 (=> (not res!1697250) (not e!2572759))))

(assert (=> b!4146508 (= res!1697250 (not (nullable!4337 (regex!7400 r!4008))))))

(declare-fun b!4146509 () Bool)

(assert (=> b!4146509 (= e!2572759 (not (= (tag!8260 r!4008) (String!51901 ""))))))

(assert (= (and d!1227121 res!1697249) b!4146508))

(assert (= (and b!4146508 res!1697250) b!4146509))

(assert (=> d!1227121 m!4742481))

(assert (=> b!4146508 m!4742483))

(assert (=> b!4146105 d!1227121))

(declare-fun d!1227123 () Bool)

(assert (=> d!1227123 (= (isEmpty!26853 rules!3756) ((_ is Nil!44997) rules!3756))))

(assert (=> b!4146094 d!1227123))

(declare-fun d!1227125 () Bool)

(declare-fun lt!1478973 () Int)

(assert (=> d!1227125 (= lt!1478973 (size!33355 (list!16481 (charsOf!4999 (_1!24819 lt!1478826)))))))

(declare-fun size!33358 (Conc!13611) Int)

(assert (=> d!1227125 (= lt!1478973 (size!33358 (c!710420 (charsOf!4999 (_1!24819 lt!1478826)))))))

(assert (=> d!1227125 (= (size!33356 (charsOf!4999 (_1!24819 lt!1478826))) lt!1478973)))

(declare-fun bs!595361 () Bool)

(assert (= bs!595361 d!1227125))

(assert (=> bs!595361 m!4742163))

(declare-fun m!4742547 () Bool)

(assert (=> bs!595361 m!4742547))

(assert (=> bs!595361 m!4742547))

(declare-fun m!4742549 () Bool)

(assert (=> bs!595361 m!4742549))

(declare-fun m!4742551 () Bool)

(assert (=> bs!595361 m!4742551))

(assert (=> b!4146115 d!1227125))

(declare-fun d!1227127 () Bool)

(declare-fun lt!1478976 () BalanceConc!26816)

(assert (=> d!1227127 (= (list!16481 lt!1478976) (originalCharacters!7896 (_1!24819 lt!1478826)))))

(assert (=> d!1227127 (= lt!1478976 (dynLambda!19384 (toChars!9923 (transformation!7400 (rule!10524 (_1!24819 lt!1478826)))) (value!231454 (_1!24819 lt!1478826))))))

(assert (=> d!1227127 (= (charsOf!4999 (_1!24819 lt!1478826)) lt!1478976)))

(declare-fun b_lambda!121931 () Bool)

(assert (=> (not b_lambda!121931) (not d!1227127)))

(declare-fun t!342839 () Bool)

(declare-fun tb!248935 () Bool)

(assert (=> (and b!4146106 (= (toChars!9923 (transformation!7400 r!4008)) (toChars!9923 (transformation!7400 (rule!10524 (_1!24819 lt!1478826))))) t!342839) tb!248935))

(declare-fun b!4146510 () Bool)

(declare-fun e!2572760 () Bool)

(declare-fun tp!1263791 () Bool)

(assert (=> b!4146510 (= e!2572760 (and (inv!59610 (c!710420 (dynLambda!19384 (toChars!9923 (transformation!7400 (rule!10524 (_1!24819 lt!1478826)))) (value!231454 (_1!24819 lt!1478826))))) tp!1263791))))

(declare-fun result!302766 () Bool)

(assert (=> tb!248935 (= result!302766 (and (inv!59611 (dynLambda!19384 (toChars!9923 (transformation!7400 (rule!10524 (_1!24819 lt!1478826)))) (value!231454 (_1!24819 lt!1478826)))) e!2572760))))

(assert (= tb!248935 b!4146510))

(declare-fun m!4742553 () Bool)

(assert (=> b!4146510 m!4742553))

(declare-fun m!4742555 () Bool)

(assert (=> tb!248935 m!4742555))

(assert (=> d!1227127 t!342839))

(declare-fun b_and!322303 () Bool)

(assert (= b_and!322275 (and (=> t!342839 result!302766) b_and!322303)))

(declare-fun tb!248937 () Bool)

(declare-fun t!342841 () Bool)

(assert (=> (and b!4146116 (= (toChars!9923 (transformation!7400 (h!50417 rules!3756))) (toChars!9923 (transformation!7400 (rule!10524 (_1!24819 lt!1478826))))) t!342841) tb!248937))

(declare-fun result!302768 () Bool)

(assert (= result!302768 result!302766))

(assert (=> d!1227127 t!342841))

(declare-fun b_and!322305 () Bool)

(assert (= b_and!322277 (and (=> t!342841 result!302768) b_and!322305)))

(declare-fun tb!248939 () Bool)

(declare-fun t!342843 () Bool)

(assert (=> (and b!4146104 (= (toChars!9923 (transformation!7400 rBis!149)) (toChars!9923 (transformation!7400 (rule!10524 (_1!24819 lt!1478826))))) t!342843) tb!248939))

(declare-fun result!302770 () Bool)

(assert (= result!302770 result!302766))

(assert (=> d!1227127 t!342843))

(declare-fun b_and!322307 () Bool)

(assert (= b_and!322279 (and (=> t!342843 result!302770) b_and!322307)))

(declare-fun m!4742557 () Bool)

(assert (=> d!1227127 m!4742557))

(declare-fun m!4742559 () Bool)

(assert (=> d!1227127 m!4742559))

(assert (=> b!4146115 d!1227127))

(declare-fun d!1227129 () Bool)

(assert (=> d!1227129 (= (get!14695 lt!1478823) (v!40357 lt!1478823))))

(assert (=> b!4146115 d!1227129))

(declare-fun d!1227131 () Bool)

(assert (=> d!1227131 (= (inv!59605 (tag!8260 rBis!149)) (= (mod (str.len (value!231453 (tag!8260 rBis!149))) 2) 0))))

(assert (=> b!4146114 d!1227131))

(declare-fun d!1227133 () Bool)

(declare-fun res!1697251 () Bool)

(declare-fun e!2572761 () Bool)

(assert (=> d!1227133 (=> (not res!1697251) (not e!2572761))))

(assert (=> d!1227133 (= res!1697251 (semiInverseModEq!3201 (toChars!9923 (transformation!7400 rBis!149)) (toValue!10064 (transformation!7400 rBis!149))))))

(assert (=> d!1227133 (= (inv!59607 (transformation!7400 rBis!149)) e!2572761)))

(declare-fun b!4146511 () Bool)

(assert (=> b!4146511 (= e!2572761 (equivClasses!3100 (toChars!9923 (transformation!7400 rBis!149)) (toValue!10064 (transformation!7400 rBis!149))))))

(assert (= (and d!1227133 res!1697251) b!4146511))

(declare-fun m!4742561 () Bool)

(assert (=> d!1227133 m!4742561))

(declare-fun m!4742563 () Bool)

(assert (=> b!4146511 m!4742563))

(assert (=> b!4146114 d!1227133))

(declare-fun e!2572764 () Bool)

(assert (=> b!4146103 (= tp!1263733 e!2572764)))

(declare-fun b!4146525 () Bool)

(declare-fun tp!1263802 () Bool)

(declare-fun tp!1263806 () Bool)

(assert (=> b!4146525 (= e!2572764 (and tp!1263802 tp!1263806))))

(declare-fun b!4146522 () Bool)

(assert (=> b!4146522 (= e!2572764 tp_is_empty!21533)))

(declare-fun b!4146523 () Bool)

(declare-fun tp!1263804 () Bool)

(declare-fun tp!1263803 () Bool)

(assert (=> b!4146523 (= e!2572764 (and tp!1263804 tp!1263803))))

(declare-fun b!4146524 () Bool)

(declare-fun tp!1263805 () Bool)

(assert (=> b!4146524 (= e!2572764 tp!1263805)))

(assert (= (and b!4146103 ((_ is ElementMatch!12305) (regex!7400 (h!50417 rules!3756)))) b!4146522))

(assert (= (and b!4146103 ((_ is Concat!19936) (regex!7400 (h!50417 rules!3756)))) b!4146523))

(assert (= (and b!4146103 ((_ is Star!12305) (regex!7400 (h!50417 rules!3756)))) b!4146524))

(assert (= (and b!4146103 ((_ is Union!12305) (regex!7400 (h!50417 rules!3756)))) b!4146525))

(declare-fun e!2572765 () Bool)

(assert (=> b!4146108 (= tp!1263736 e!2572765)))

(declare-fun b!4146529 () Bool)

(declare-fun tp!1263807 () Bool)

(declare-fun tp!1263811 () Bool)

(assert (=> b!4146529 (= e!2572765 (and tp!1263807 tp!1263811))))

(declare-fun b!4146526 () Bool)

(assert (=> b!4146526 (= e!2572765 tp_is_empty!21533)))

(declare-fun b!4146527 () Bool)

(declare-fun tp!1263809 () Bool)

(declare-fun tp!1263808 () Bool)

(assert (=> b!4146527 (= e!2572765 (and tp!1263809 tp!1263808))))

(declare-fun b!4146528 () Bool)

(declare-fun tp!1263810 () Bool)

(assert (=> b!4146528 (= e!2572765 tp!1263810)))

(assert (= (and b!4146108 ((_ is ElementMatch!12305) (regex!7400 r!4008))) b!4146526))

(assert (= (and b!4146108 ((_ is Concat!19936) (regex!7400 r!4008))) b!4146527))

(assert (= (and b!4146108 ((_ is Star!12305) (regex!7400 r!4008))) b!4146528))

(assert (= (and b!4146108 ((_ is Union!12305) (regex!7400 r!4008))) b!4146529))

(declare-fun b!4146534 () Bool)

(declare-fun e!2572768 () Bool)

(declare-fun tp!1263814 () Bool)

(assert (=> b!4146534 (= e!2572768 (and tp_is_empty!21533 tp!1263814))))

(assert (=> b!4146102 (= tp!1263731 e!2572768)))

(assert (= (and b!4146102 ((_ is Cons!44996) (t!342799 input!3238))) b!4146534))

(declare-fun b!4146545 () Bool)

(declare-fun b_free!118283 () Bool)

(declare-fun b_next!118987 () Bool)

(assert (=> b!4146545 (= b_free!118283 (not b_next!118987))))

(declare-fun tb!248941 () Bool)

(declare-fun t!342845 () Bool)

(assert (=> (and b!4146545 (= (toValue!10064 (transformation!7400 (h!50417 (t!342800 rules!3756)))) (toValue!10064 (transformation!7400 r!4008))) t!342845) tb!248941))

(declare-fun result!302778 () Bool)

(assert (= result!302778 result!302724))

(assert (=> d!1227045 t!342845))

(assert (=> d!1227047 t!342845))

(declare-fun tp!1263823 () Bool)

(declare-fun b_and!322309 () Bool)

(assert (=> b!4146545 (= tp!1263823 (and (=> t!342845 result!302778) b_and!322309))))

(declare-fun b_free!118285 () Bool)

(declare-fun b_next!118989 () Bool)

(assert (=> b!4146545 (= b_free!118285 (not b_next!118989))))

(declare-fun tb!248943 () Bool)

(declare-fun t!342847 () Bool)

(assert (=> (and b!4146545 (= (toChars!9923 (transformation!7400 (h!50417 (t!342800 rules!3756)))) (toChars!9923 (transformation!7400 r!4008))) t!342847) tb!248943))

(declare-fun result!302780 () Bool)

(assert (= result!302780 result!302740))

(assert (=> d!1227047 t!342847))

(declare-fun t!342849 () Bool)

(declare-fun tb!248945 () Bool)

(assert (=> (and b!4146545 (= (toChars!9923 (transformation!7400 (h!50417 (t!342800 rules!3756)))) (toChars!9923 (transformation!7400 (rule!10524 (_1!24819 lt!1478826))))) t!342849) tb!248945))

(declare-fun result!302782 () Bool)

(assert (= result!302782 result!302766))

(assert (=> d!1227127 t!342849))

(declare-fun b_and!322311 () Bool)

(declare-fun tp!1263825 () Bool)

(assert (=> b!4146545 (= tp!1263825 (and (=> t!342847 result!302780) (=> t!342849 result!302782) b_and!322311))))

(declare-fun e!2572779 () Bool)

(assert (=> b!4146545 (= e!2572779 (and tp!1263823 tp!1263825))))

(declare-fun e!2572777 () Bool)

(declare-fun b!4146544 () Bool)

(declare-fun tp!1263826 () Bool)

(assert (=> b!4146544 (= e!2572777 (and tp!1263826 (inv!59605 (tag!8260 (h!50417 (t!342800 rules!3756)))) (inv!59607 (transformation!7400 (h!50417 (t!342800 rules!3756)))) e!2572779))))

(declare-fun b!4146543 () Bool)

(declare-fun e!2572778 () Bool)

(declare-fun tp!1263824 () Bool)

(assert (=> b!4146543 (= e!2572778 (and e!2572777 tp!1263824))))

(assert (=> b!4146107 (= tp!1263742 e!2572778)))

(assert (= b!4146544 b!4146545))

(assert (= b!4146543 b!4146544))

(assert (= (and b!4146107 ((_ is Cons!44997) (t!342800 rules!3756))) b!4146543))

(declare-fun m!4742565 () Bool)

(assert (=> b!4146544 m!4742565))

(declare-fun m!4742567 () Bool)

(assert (=> b!4146544 m!4742567))

(declare-fun b!4146546 () Bool)

(declare-fun e!2572781 () Bool)

(declare-fun tp!1263827 () Bool)

(assert (=> b!4146546 (= e!2572781 (and tp_is_empty!21533 tp!1263827))))

(assert (=> b!4146095 (= tp!1263737 e!2572781)))

(assert (= (and b!4146095 ((_ is Cons!44996) (t!342799 p!2912))) b!4146546))

(declare-fun e!2572782 () Bool)

(assert (=> b!4146114 (= tp!1263738 e!2572782)))

(declare-fun b!4146550 () Bool)

(declare-fun tp!1263828 () Bool)

(declare-fun tp!1263832 () Bool)

(assert (=> b!4146550 (= e!2572782 (and tp!1263828 tp!1263832))))

(declare-fun b!4146547 () Bool)

(assert (=> b!4146547 (= e!2572782 tp_is_empty!21533)))

(declare-fun b!4146548 () Bool)

(declare-fun tp!1263830 () Bool)

(declare-fun tp!1263829 () Bool)

(assert (=> b!4146548 (= e!2572782 (and tp!1263830 tp!1263829))))

(declare-fun b!4146549 () Bool)

(declare-fun tp!1263831 () Bool)

(assert (=> b!4146549 (= e!2572782 tp!1263831)))

(assert (= (and b!4146114 ((_ is ElementMatch!12305) (regex!7400 rBis!149))) b!4146547))

(assert (= (and b!4146114 ((_ is Concat!19936) (regex!7400 rBis!149))) b!4146548))

(assert (= (and b!4146114 ((_ is Star!12305) (regex!7400 rBis!149))) b!4146549))

(assert (= (and b!4146114 ((_ is Union!12305) (regex!7400 rBis!149))) b!4146550))

(declare-fun b_lambda!121933 () Bool)

(assert (= b_lambda!121917 (or (and b!4146106 b_free!118269) (and b!4146116 b_free!118273 (= (toChars!9923 (transformation!7400 (h!50417 rules!3756))) (toChars!9923 (transformation!7400 r!4008)))) (and b!4146104 b_free!118277 (= (toChars!9923 (transformation!7400 rBis!149)) (toChars!9923 (transformation!7400 r!4008)))) (and b!4146545 b_free!118285 (= (toChars!9923 (transformation!7400 (h!50417 (t!342800 rules!3756)))) (toChars!9923 (transformation!7400 r!4008)))) b_lambda!121933)))

(declare-fun b_lambda!121935 () Bool)

(assert (= b_lambda!121919 (or (and b!4146106 b_free!118267) (and b!4146116 b_free!118271 (= (toValue!10064 (transformation!7400 (h!50417 rules!3756))) (toValue!10064 (transformation!7400 r!4008)))) (and b!4146104 b_free!118275 (= (toValue!10064 (transformation!7400 rBis!149)) (toValue!10064 (transformation!7400 r!4008)))) (and b!4146545 b_free!118283 (= (toValue!10064 (transformation!7400 (h!50417 (t!342800 rules!3756)))) (toValue!10064 (transformation!7400 r!4008)))) b_lambda!121935)))

(declare-fun b_lambda!121937 () Bool)

(assert (= b_lambda!121913 (or (and b!4146106 b_free!118267) (and b!4146116 b_free!118271 (= (toValue!10064 (transformation!7400 (h!50417 rules!3756))) (toValue!10064 (transformation!7400 r!4008)))) (and b!4146104 b_free!118275 (= (toValue!10064 (transformation!7400 rBis!149)) (toValue!10064 (transformation!7400 r!4008)))) (and b!4146545 b_free!118283 (= (toValue!10064 (transformation!7400 (h!50417 (t!342800 rules!3756)))) (toValue!10064 (transformation!7400 r!4008)))) b_lambda!121937)))

(check-sat (not d!1227117) b_and!322309 (not d!1227005) (not b!4146502) (not b!4146501) b_and!322305 (not d!1227121) (not b!4146152) (not b!4146403) (not d!1227085) (not b!4146429) (not b_next!118977) (not b!4146402) (not b_lambda!121931) (not b!4146406) (not b!4146505) b_and!322283 b_and!322281 (not b_lambda!121937) (not d!1227091) (not d!1227105) (not tb!248935) (not b!4146400) (not d!1227043) (not b!4146477) (not b_next!118971) (not d!1227111) (not d!1227013) (not d!1227119) (not b!4146465) (not b!4146543) (not b!4146398) b_and!322307 (not d!1227099) (not b!4146525) (not b!4146327) (not b!4146500) (not d!1227101) (not b!4146462) (not tb!248905) (not b!4146474) (not b!4146401) (not b!4146209) (not d!1227095) b_and!322303 b_and!322311 (not b!4146423) (not b!4146422) (not d!1227107) (not b!4146548) (not b!4146412) (not b_lambda!121935) (not b_next!118979) (not b_next!118989) (not b!4146464) (not bm!290649) (not tb!248917) (not d!1227125) (not d!1227133) (not bm!290646) (not b!4146399) (not b!4146169) (not b!4146524) (not b!4146469) (not b!4146534) (not b!4146322) b_and!322285 (not b!4146544) (not b!4146529) (not b!4146510) (not b!4146546) (not b_next!118973) (not b!4146213) (not b!4146523) (not d!1227079) (not b_next!118981) (not b!4146475) (not b!4146527) (not b!4146499) (not d!1227093) (not b!4146405) (not b!4146463) (not d!1227127) (not b!4146480) (not b!4146504) (not d!1227023) (not b_next!118987) (not b!4146506) (not b!4146184) (not d!1227007) (not b_lambda!121933) (not b!4146508) (not b!4146460) (not b_next!118975) (not b!4146550) tp_is_empty!21533 (not b!4146503) (not d!1227077) (not d!1227113) (not b!4146424) (not d!1227047) (not b!4146528) (not b!4146549) (not b!4146511))
(check-sat b_and!322305 b_and!322281 (not b_next!118971) b_and!322307 b_and!322285 (not b_next!118987) b_and!322309 (not b_next!118975) (not b_next!118977) b_and!322283 b_and!322303 b_and!322311 (not b_next!118989) (not b_next!118979) (not b_next!118973) (not b_next!118981))

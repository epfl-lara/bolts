; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!172560 () Bool)

(assert start!172560)

(declare-fun b!1750838 () Bool)

(declare-fun b_free!48319 () Bool)

(declare-fun b_next!49023 () Bool)

(assert (=> b!1750838 (= b_free!48319 (not b_next!49023))))

(declare-fun tp!498066 () Bool)

(declare-fun b_and!130957 () Bool)

(assert (=> b!1750838 (= tp!498066 b_and!130957)))

(declare-fun b_free!48321 () Bool)

(declare-fun b_next!49025 () Bool)

(assert (=> b!1750838 (= b_free!48321 (not b_next!49025))))

(declare-fun tp!498069 () Bool)

(declare-fun b_and!130959 () Bool)

(assert (=> b!1750838 (= tp!498069 b_and!130959)))

(declare-fun b!1750815 () Bool)

(declare-fun b_free!48323 () Bool)

(declare-fun b_next!49027 () Bool)

(assert (=> b!1750815 (= b_free!48323 (not b_next!49027))))

(declare-fun tp!498075 () Bool)

(declare-fun b_and!130961 () Bool)

(assert (=> b!1750815 (= tp!498075 b_and!130961)))

(declare-fun b_free!48325 () Bool)

(declare-fun b_next!49029 () Bool)

(assert (=> b!1750815 (= b_free!48325 (not b_next!49029))))

(declare-fun tp!498076 () Bool)

(declare-fun b_and!130963 () Bool)

(assert (=> b!1750815 (= tp!498076 b_and!130963)))

(declare-fun b!1750801 () Bool)

(declare-fun b_free!48327 () Bool)

(declare-fun b_next!49031 () Bool)

(assert (=> b!1750801 (= b_free!48327 (not b_next!49031))))

(declare-fun tp!498072 () Bool)

(declare-fun b_and!130965 () Bool)

(assert (=> b!1750801 (= tp!498072 b_and!130965)))

(declare-fun b_free!48329 () Bool)

(declare-fun b_next!49033 () Bool)

(assert (=> b!1750801 (= b_free!48329 (not b_next!49033))))

(declare-fun tp!498070 () Bool)

(declare-fun b_and!130967 () Bool)

(assert (=> b!1750801 (= tp!498070 b_and!130967)))

(declare-fun b!1750850 () Bool)

(declare-fun e!1120740 () Bool)

(assert (=> b!1750850 (= e!1120740 true)))

(declare-fun b!1750849 () Bool)

(declare-fun e!1120739 () Bool)

(assert (=> b!1750849 (= e!1120739 e!1120740)))

(declare-fun b!1750848 () Bool)

(declare-fun e!1120738 () Bool)

(assert (=> b!1750848 (= e!1120738 e!1120739)))

(declare-fun b!1750831 () Bool)

(assert (=> b!1750831 e!1120738))

(assert (= b!1750849 b!1750850))

(assert (= b!1750848 b!1750849))

(assert (= b!1750831 b!1750848))

(declare-datatypes ((List!19333 0))(
  ( (Nil!19263) (Cons!19263 (h!24664 (_ BitVec 16)) (t!162946 List!19333)) )
))
(declare-datatypes ((TokenValue!3530 0))(
  ( (FloatLiteralValue!7060 (text!25155 List!19333)) (TokenValueExt!3529 (__x!12362 Int)) (Broken!17650 (value!107688 List!19333)) (Object!3599) (End!3530) (Def!3530) (Underscore!3530) (Match!3530) (Else!3530) (Error!3530) (Case!3530) (If!3530) (Extends!3530) (Abstract!3530) (Class!3530) (Val!3530) (DelimiterValue!7060 (del!3590 List!19333)) (KeywordValue!3536 (value!107689 List!19333)) (CommentValue!7060 (value!107690 List!19333)) (WhitespaceValue!7060 (value!107691 List!19333)) (IndentationValue!3530 (value!107692 List!19333)) (String!21983) (Int32!3530) (Broken!17651 (value!107693 List!19333)) (Boolean!3531) (Unit!33395) (OperatorValue!3533 (op!3590 List!19333)) (IdentifierValue!7060 (value!107694 List!19333)) (IdentifierValue!7061 (value!107695 List!19333)) (WhitespaceValue!7061 (value!107696 List!19333)) (True!7060) (False!7060) (Broken!17652 (value!107697 List!19333)) (Broken!17653 (value!107698 List!19333)) (True!7061) (RightBrace!3530) (RightBracket!3530) (Colon!3530) (Null!3530) (Comma!3530) (LeftBracket!3530) (False!7061) (LeftBrace!3530) (ImaginaryLiteralValue!3530 (text!25156 List!19333)) (StringLiteralValue!10590 (value!107699 List!19333)) (EOFValue!3530 (value!107700 List!19333)) (IdentValue!3530 (value!107701 List!19333)) (DelimiterValue!7061 (value!107702 List!19333)) (DedentValue!3530 (value!107703 List!19333)) (NewLineValue!3530 (value!107704 List!19333)) (IntegerValue!10590 (value!107705 (_ BitVec 32)) (text!25157 List!19333)) (IntegerValue!10591 (value!107706 Int) (text!25158 List!19333)) (Times!3530) (Or!3530) (Equal!3530) (Minus!3530) (Broken!17654 (value!107707 List!19333)) (And!3530) (Div!3530) (LessEqual!3530) (Mod!3530) (Concat!8298) (Not!3530) (Plus!3530) (SpaceValue!3530 (value!107708 List!19333)) (IntegerValue!10592 (value!107709 Int) (text!25159 List!19333)) (StringLiteralValue!10591 (text!25160 List!19333)) (FloatLiteralValue!7061 (text!25161 List!19333)) (BytesLiteralValue!3530 (value!107710 List!19333)) (CommentValue!7061 (value!107711 List!19333)) (StringLiteralValue!10592 (value!107712 List!19333)) (ErrorTokenValue!3530 (msg!3591 List!19333)) )
))
(declare-datatypes ((String!21984 0))(
  ( (String!21985 (value!107713 String)) )
))
(declare-datatypes ((C!9710 0))(
  ( (C!9711 (val!5451 Int)) )
))
(declare-datatypes ((List!19334 0))(
  ( (Nil!19264) (Cons!19264 (h!24665 C!9710) (t!162947 List!19334)) )
))
(declare-datatypes ((Regex!4768 0))(
  ( (ElementMatch!4768 (c!285451 C!9710)) (Concat!8299 (regOne!10048 Regex!4768) (regTwo!10048 Regex!4768)) (EmptyExpr!4768) (Star!4768 (reg!5097 Regex!4768)) (EmptyLang!4768) (Union!4768 (regOne!10049 Regex!4768) (regTwo!10049 Regex!4768)) )
))
(declare-datatypes ((IArray!12821 0))(
  ( (IArray!12822 (innerList!6468 List!19334)) )
))
(declare-datatypes ((Conc!6408 0))(
  ( (Node!6408 (left!15420 Conc!6408) (right!15750 Conc!6408) (csize!13046 Int) (cheight!6619 Int)) (Leaf!9349 (xs!9284 IArray!12821) (csize!13047 Int)) (Empty!6408) )
))
(declare-datatypes ((BalanceConc!12760 0))(
  ( (BalanceConc!12761 (c!285452 Conc!6408)) )
))
(declare-datatypes ((TokenValueInjection!6720 0))(
  ( (TokenValueInjection!6721 (toValue!4955 Int) (toChars!4814 Int)) )
))
(declare-datatypes ((Rule!6680 0))(
  ( (Rule!6681 (regex!3440 Regex!4768) (tag!3790 String!21984) (isSeparator!3440 Bool) (transformation!3440 TokenValueInjection!6720)) )
))
(declare-datatypes ((Token!6446 0))(
  ( (Token!6447 (value!107714 TokenValue!3530) (rule!5448 Rule!6680) (size!15307 Int) (originalCharacters!4254 List!19334)) )
))
(declare-datatypes ((tuple2!18892 0))(
  ( (tuple2!18893 (_1!10848 Token!6446) (_2!10848 List!19334)) )
))
(declare-fun lt!676330 () tuple2!18892)

(declare-fun order!12127 () Int)

(declare-fun order!12125 () Int)

(declare-fun lambda!69863 () Int)

(declare-fun dynLambda!9201 (Int Int) Int)

(declare-fun dynLambda!9202 (Int Int) Int)

(assert (=> b!1750850 (< (dynLambda!9201 order!12125 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) (dynLambda!9202 order!12127 lambda!69863))))

(declare-fun order!12129 () Int)

(declare-fun dynLambda!9203 (Int Int) Int)

(assert (=> b!1750850 (< (dynLambda!9203 order!12129 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) (dynLambda!9202 order!12127 lambda!69863))))

(declare-fun b!1750795 () Bool)

(declare-fun e!1120722 () Bool)

(declare-fun e!1120713 () Bool)

(assert (=> b!1750795 (= e!1120722 e!1120713)))

(declare-fun res!787542 () Bool)

(assert (=> b!1750795 (=> res!787542 e!1120713)))

(declare-fun lt!676334 () TokenValue!3530)

(declare-fun lt!676289 () List!19334)

(declare-fun lt!676323 () Int)

(declare-datatypes ((Option!3904 0))(
  ( (None!3903) (Some!3903 (v!25346 tuple2!18892)) )
))
(declare-fun lt!676295 () Option!3904)

(assert (=> b!1750795 (= res!787542 (not (= lt!676295 (Some!3903 (tuple2!18893 (Token!6447 lt!676334 (rule!5448 (_1!10848 lt!676330)) lt!676323 lt!676289) (_2!10848 lt!676330))))))))

(declare-fun lt!676338 () BalanceConc!12760)

(declare-fun size!15308 (BalanceConc!12760) Int)

(assert (=> b!1750795 (= lt!676323 (size!15308 lt!676338))))

(declare-fun apply!5241 (TokenValueInjection!6720 BalanceConc!12760) TokenValue!3530)

(assert (=> b!1750795 (= lt!676334 (apply!5241 (transformation!3440 (rule!5448 (_1!10848 lt!676330))) lt!676338))))

(declare-datatypes ((Unit!33396 0))(
  ( (Unit!33397) )
))
(declare-fun lt!676336 () Unit!33396)

(declare-fun lemmaCharactersSize!500 (Token!6446) Unit!33396)

(assert (=> b!1750795 (= lt!676336 (lemmaCharactersSize!500 (_1!10848 lt!676330)))))

(declare-fun lt!676322 () Unit!33396)

(declare-fun lemmaEqSameImage!353 (TokenValueInjection!6720 BalanceConc!12760 BalanceConc!12760) Unit!33396)

(declare-fun seqFromList!2410 (List!19334) BalanceConc!12760)

(assert (=> b!1750795 (= lt!676322 (lemmaEqSameImage!353 (transformation!3440 (rule!5448 (_1!10848 lt!676330))) lt!676338 (seqFromList!2410 (originalCharacters!4254 (_1!10848 lt!676330)))))))

(declare-fun b!1750796 () Bool)

(declare-fun e!1120709 () Unit!33396)

(declare-fun Unit!33398 () Unit!33396)

(assert (=> b!1750796 (= e!1120709 Unit!33398)))

(declare-fun b!1750797 () Bool)

(declare-fun res!787541 () Bool)

(declare-fun e!1120718 () Bool)

(assert (=> b!1750797 (=> (not res!787541) (not e!1120718))))

(declare-datatypes ((List!19335 0))(
  ( (Nil!19265) (Cons!19265 (h!24666 Rule!6680) (t!162948 List!19335)) )
))
(declare-fun rules!3447 () List!19335)

(declare-fun rule!422 () Rule!6680)

(declare-fun contains!3466 (List!19335 Rule!6680) Bool)

(assert (=> b!1750797 (= res!787541 (contains!3466 rules!3447 rule!422))))

(declare-fun b!1750798 () Bool)

(declare-fun e!1120711 () Unit!33396)

(declare-fun Unit!33399 () Unit!33396)

(assert (=> b!1750798 (= e!1120711 Unit!33399)))

(declare-fun lt!676299 () List!19334)

(declare-datatypes ((LexerInterface!3069 0))(
  ( (LexerInterfaceExt!3066 (__x!12363 Int)) (Lexer!3067) )
))
(declare-fun thiss!24550 () LexerInterface!3069)

(declare-fun lt!676307 () Unit!33396)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!171 (LexerInterface!3069 List!19335 List!19334 Token!6446 Rule!6680 List!19334) Unit!33396)

(assert (=> b!1750798 (= lt!676307 (lemmaMaxPrefixThenMatchesRulesRegex!171 thiss!24550 rules!3447 lt!676299 (_1!10848 lt!676330) (rule!5448 (_1!10848 lt!676330)) (_2!10848 lt!676330)))))

(declare-fun lt!676316 () Regex!4768)

(declare-fun matchR!2242 (Regex!4768 List!19334) Bool)

(assert (=> b!1750798 (matchR!2242 lt!676316 lt!676289)))

(declare-fun lt!676314 () List!19334)

(declare-fun lt!676328 () List!19334)

(declare-fun getSuffix!861 (List!19334 List!19334) List!19334)

(assert (=> b!1750798 (= lt!676314 (getSuffix!861 lt!676299 lt!676328))))

(declare-fun lt!676311 () Unit!33396)

(declare-fun suffix!1421 () List!19334)

(declare-fun lemmaSamePrefixThenSameSuffix!811 (List!19334 List!19334 List!19334 List!19334 List!19334) Unit!33396)

(assert (=> b!1750798 (= lt!676311 (lemmaSamePrefixThenSameSuffix!811 lt!676328 suffix!1421 lt!676328 lt!676314 lt!676299))))

(assert (=> b!1750798 (= suffix!1421 lt!676314)))

(declare-fun lt!676302 () Unit!33396)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!256 (List!19334 List!19334) Unit!33396)

(assert (=> b!1750798 (= lt!676302 (lemmaAddHeadSuffixToPrefixStillPrefix!256 lt!676328 lt!676299))))

(declare-fun isPrefix!1681 (List!19334 List!19334) Bool)

(declare-fun ++!5265 (List!19334 List!19334) List!19334)

(declare-fun head!4037 (List!19334) C!9710)

(assert (=> b!1750798 (isPrefix!1681 (++!5265 lt!676328 (Cons!19264 (head!4037 lt!676314) Nil!19264)) lt!676299)))

(declare-fun lt!676332 () List!19334)

(declare-fun lt!676296 () Unit!33396)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!132 (List!19334 List!19334 List!19334) Unit!33396)

(assert (=> b!1750798 (= lt!676296 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!132 lt!676289 lt!676332 lt!676299))))

(assert (=> b!1750798 (isPrefix!1681 lt!676332 lt!676289)))

(declare-fun lt!676303 () Unit!33396)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!125 (Regex!4768 List!19334 List!19334) Unit!33396)

(assert (=> b!1750798 (= lt!676303 (lemmaNotPrefixMatchThenCannotMatchLonger!125 lt!676316 lt!676332 lt!676289))))

(assert (=> b!1750798 false))

(declare-fun b!1750799 () Bool)

(declare-fun e!1120702 () Bool)

(assert (=> b!1750799 (= e!1120702 false)))

(declare-fun b!1750800 () Bool)

(declare-fun e!1120723 () Bool)

(assert (=> b!1750800 (= e!1120718 e!1120723)))

(declare-fun res!787535 () Bool)

(assert (=> b!1750800 (=> (not res!787535) (not e!1120723))))

(declare-fun lt!676321 () Option!3904)

(declare-fun isDefined!3247 (Option!3904) Bool)

(assert (=> b!1750800 (= res!787535 (isDefined!3247 lt!676321))))

(declare-fun maxPrefix!1623 (LexerInterface!3069 List!19335 List!19334) Option!3904)

(assert (=> b!1750800 (= lt!676321 (maxPrefix!1623 thiss!24550 rules!3447 lt!676328))))

(declare-fun lt!676324 () BalanceConc!12760)

(declare-fun list!7801 (BalanceConc!12760) List!19334)

(assert (=> b!1750800 (= lt!676328 (list!7801 lt!676324))))

(declare-fun token!523 () Token!6446)

(declare-fun charsOf!2089 (Token!6446) BalanceConc!12760)

(assert (=> b!1750800 (= lt!676324 (charsOf!2089 token!523))))

(declare-fun e!1120703 () Bool)

(assert (=> b!1750801 (= e!1120703 (and tp!498072 tp!498070))))

(declare-fun b!1750802 () Bool)

(declare-fun e!1120698 () Bool)

(declare-fun e!1120724 () Bool)

(declare-fun tp!498068 () Bool)

(assert (=> b!1750802 (= e!1120698 (and e!1120724 tp!498068))))

(declare-fun b!1750803 () Bool)

(declare-fun Unit!33400 () Unit!33396)

(assert (=> b!1750803 (= e!1120709 Unit!33400)))

(declare-fun lt!676337 () Int)

(declare-fun getIndex!175 (List!19335 Rule!6680) Int)

(assert (=> b!1750803 (= lt!676337 (getIndex!175 rules!3447 (rule!5448 token!523)))))

(declare-fun lt!676318 () Int)

(assert (=> b!1750803 (= lt!676318 (getIndex!175 rules!3447 (rule!5448 (_1!10848 lt!676330))))))

(declare-fun c!285450 () Bool)

(assert (=> b!1750803 (= c!285450 (< lt!676337 lt!676318))))

(declare-fun lt!676305 () Unit!33396)

(declare-fun e!1120726 () Unit!33396)

(assert (=> b!1750803 (= lt!676305 e!1120726)))

(declare-fun c!285445 () Bool)

(assert (=> b!1750803 (= c!285445 (< lt!676318 lt!676337))))

(declare-fun lt!676326 () Unit!33396)

(declare-fun e!1120716 () Unit!33396)

(assert (=> b!1750803 (= lt!676326 e!1120716)))

(declare-fun c!285446 () Bool)

(assert (=> b!1750803 (= c!285446 (= lt!676318 lt!676337))))

(declare-fun lt!676340 () Unit!33396)

(declare-fun e!1120714 () Unit!33396)

(assert (=> b!1750803 (= lt!676340 e!1120714)))

(assert (=> b!1750803 false))

(declare-fun b!1750804 () Bool)

(declare-fun e!1120727 () Bool)

(assert (=> b!1750804 (= e!1120727 false)))

(declare-fun b!1750805 () Bool)

(declare-fun e!1120708 () Bool)

(declare-fun e!1120704 () Bool)

(assert (=> b!1750805 (= e!1120708 e!1120704)))

(declare-fun res!787537 () Bool)

(assert (=> b!1750805 (=> (not res!787537) (not e!1120704))))

(declare-fun lt!676335 () Rule!6680)

(assert (=> b!1750805 (= res!787537 (matchR!2242 (regex!3440 lt!676335) (list!7801 (charsOf!2089 (_1!10848 lt!676330)))))))

(declare-datatypes ((Option!3905 0))(
  ( (None!3904) (Some!3904 (v!25347 Rule!6680)) )
))
(declare-fun lt!676315 () Option!3905)

(declare-fun get!5842 (Option!3905) Rule!6680)

(assert (=> b!1750805 (= lt!676335 (get!5842 lt!676315))))

(declare-fun b!1750806 () Bool)

(declare-fun Unit!33401 () Unit!33396)

(assert (=> b!1750806 (= e!1120714 Unit!33401)))

(declare-fun b!1750808 () Bool)

(assert (=> b!1750808 (= e!1120704 (= (rule!5448 (_1!10848 lt!676330)) lt!676335))))

(declare-fun b!1750809 () Bool)

(assert (=> b!1750809 false))

(declare-fun lt!676320 () Unit!33396)

(declare-fun lemmaSameIndexThenSameElement!109 (List!19335 Rule!6680 Rule!6680) Unit!33396)

(assert (=> b!1750809 (= lt!676320 (lemmaSameIndexThenSameElement!109 rules!3447 (rule!5448 (_1!10848 lt!676330)) (rule!5448 token!523)))))

(declare-fun Unit!33402 () Unit!33396)

(assert (=> b!1750809 (= e!1120714 Unit!33402)))

(declare-fun b!1750810 () Bool)

(declare-fun res!787536 () Bool)

(assert (=> b!1750810 (=> (not res!787536) (not e!1120718))))

(declare-fun rulesInvariant!2738 (LexerInterface!3069 List!19335) Bool)

(assert (=> b!1750810 (= res!787536 (rulesInvariant!2738 thiss!24550 rules!3447))))

(declare-fun b!1750811 () Bool)

(declare-fun res!787526 () Bool)

(assert (=> b!1750811 (=> (not res!787526) (not e!1120718))))

(declare-fun isEmpty!12141 (List!19335) Bool)

(assert (=> b!1750811 (= res!787526 (not (isEmpty!12141 rules!3447)))))

(declare-fun b!1750812 () Bool)

(declare-fun e!1120731 () Unit!33396)

(declare-fun Unit!33403 () Unit!33396)

(assert (=> b!1750812 (= e!1120731 Unit!33403)))

(declare-fun lt!676329 () Unit!33396)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!211 (LexerInterface!3069 List!19335 Rule!6680 List!19334 List!19334 List!19334 Rule!6680) Unit!33396)

(assert (=> b!1750812 (= lt!676329 (lemmaMaxPrefixOutputsMaxPrefix!211 thiss!24550 rules!3447 (rule!5448 (_1!10848 lt!676330)) lt!676289 lt!676299 lt!676328 rule!422))))

(assert (=> b!1750812 false))

(declare-fun e!1120701 () Bool)

(declare-fun tp!498074 () Bool)

(declare-fun e!1120700 () Bool)

(declare-fun b!1750813 () Bool)

(declare-fun inv!21 (TokenValue!3530) Bool)

(assert (=> b!1750813 (= e!1120700 (and (inv!21 (value!107714 token!523)) e!1120701 tp!498074))))

(declare-fun b!1750814 () Bool)

(declare-fun res!787531 () Bool)

(assert (=> b!1750814 (=> res!787531 e!1120722)))

(declare-fun dynLambda!9204 (Int TokenValue!3530) BalanceConc!12760)

(assert (=> b!1750814 (= res!787531 (not (= lt!676338 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (value!107714 (_1!10848 lt!676330))))))))

(declare-fun e!1120705 () Bool)

(assert (=> b!1750815 (= e!1120705 (and tp!498075 tp!498076))))

(declare-fun b!1750816 () Bool)

(declare-fun e!1120720 () Bool)

(declare-fun e!1120715 () Bool)

(assert (=> b!1750816 (= e!1120720 e!1120715)))

(declare-fun res!787519 () Bool)

(assert (=> b!1750816 (=> res!787519 e!1120715)))

(assert (=> b!1750816 (= res!787519 (not (isPrefix!1681 lt!676289 lt!676299)))))

(assert (=> b!1750816 (isPrefix!1681 lt!676289 (++!5265 lt!676289 (_2!10848 lt!676330)))))

(declare-fun lt!676325 () Unit!33396)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1191 (List!19334 List!19334) Unit!33396)

(assert (=> b!1750816 (= lt!676325 (lemmaConcatTwoListThenFirstIsPrefix!1191 lt!676289 (_2!10848 lt!676330)))))

(assert (=> b!1750816 (= lt!676289 (list!7801 lt!676338))))

(assert (=> b!1750816 (= lt!676338 (charsOf!2089 (_1!10848 lt!676330)))))

(assert (=> b!1750816 e!1120708))

(declare-fun res!787520 () Bool)

(assert (=> b!1750816 (=> (not res!787520) (not e!1120708))))

(declare-fun isDefined!3248 (Option!3905) Bool)

(assert (=> b!1750816 (= res!787520 (isDefined!3248 lt!676315))))

(declare-fun getRuleFromTag!490 (LexerInterface!3069 List!19335 String!21984) Option!3905)

(assert (=> b!1750816 (= lt!676315 (getRuleFromTag!490 thiss!24550 rules!3447 (tag!3790 (rule!5448 (_1!10848 lt!676330)))))))

(declare-fun lt!676300 () Unit!33396)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!490 (LexerInterface!3069 List!19335 List!19334 Token!6446) Unit!33396)

(assert (=> b!1750816 (= lt!676300 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!490 thiss!24550 rules!3447 lt!676299 (_1!10848 lt!676330)))))

(declare-fun get!5843 (Option!3904) tuple2!18892)

(assert (=> b!1750816 (= lt!676330 (get!5843 lt!676295))))

(declare-fun lt!676317 () Unit!33396)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!593 (LexerInterface!3069 List!19335 List!19334 List!19334) Unit!33396)

(assert (=> b!1750816 (= lt!676317 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!593 thiss!24550 rules!3447 lt!676328 suffix!1421))))

(assert (=> b!1750816 (= lt!676295 (maxPrefix!1623 thiss!24550 rules!3447 lt!676299))))

(assert (=> b!1750816 (isPrefix!1681 lt!676328 lt!676299)))

(declare-fun lt!676291 () Unit!33396)

(assert (=> b!1750816 (= lt!676291 (lemmaConcatTwoListThenFirstIsPrefix!1191 lt!676328 suffix!1421))))

(assert (=> b!1750816 (= lt!676299 (++!5265 lt!676328 suffix!1421))))

(declare-fun b!1750817 () Bool)

(declare-fun e!1120710 () Bool)

(assert (=> b!1750817 (= e!1120713 e!1120710)))

(declare-fun res!787527 () Bool)

(assert (=> b!1750817 (=> res!787527 e!1120710)))

(declare-fun lt!676331 () List!19334)

(declare-fun lt!676297 () Option!3904)

(assert (=> b!1750817 (= res!787527 (or (not (= lt!676331 (_2!10848 lt!676330))) (not (= lt!676297 (Some!3903 (tuple2!18893 (_1!10848 lt!676330) lt!676331))))))))

(assert (=> b!1750817 (= (_2!10848 lt!676330) lt!676331)))

(declare-fun lt!676308 () Unit!33396)

(assert (=> b!1750817 (= lt!676308 (lemmaSamePrefixThenSameSuffix!811 lt!676289 (_2!10848 lt!676330) lt!676289 lt!676331 lt!676299))))

(assert (=> b!1750817 (= lt!676331 (getSuffix!861 lt!676299 lt!676289))))

(declare-fun lt!676342 () TokenValue!3530)

(declare-fun lt!676298 () Int)

(assert (=> b!1750817 (= lt!676297 (Some!3903 (tuple2!18893 (Token!6447 lt!676342 (rule!5448 (_1!10848 lt!676330)) lt!676298 lt!676289) (_2!10848 lt!676330))))))

(declare-fun maxPrefixOneRule!995 (LexerInterface!3069 Rule!6680 List!19334) Option!3904)

(assert (=> b!1750817 (= lt!676297 (maxPrefixOneRule!995 thiss!24550 (rule!5448 (_1!10848 lt!676330)) lt!676299))))

(declare-fun size!15309 (List!19334) Int)

(assert (=> b!1750817 (= lt!676298 (size!15309 lt!676289))))

(assert (=> b!1750817 (= lt!676342 (apply!5241 (transformation!3440 (rule!5448 (_1!10848 lt!676330))) (seqFromList!2410 lt!676289)))))

(declare-fun lt!676339 () Unit!33396)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!384 (LexerInterface!3069 List!19335 List!19334 List!19334 List!19334 Rule!6680) Unit!33396)

(assert (=> b!1750817 (= lt!676339 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!384 thiss!24550 rules!3447 lt!676289 lt!676299 (_2!10848 lt!676330) (rule!5448 (_1!10848 lt!676330))))))

(declare-fun b!1750818 () Bool)

(declare-fun Unit!33404 () Unit!33396)

(assert (=> b!1750818 (= e!1120731 Unit!33404)))

(declare-fun b!1750819 () Bool)

(declare-fun e!1120725 () Bool)

(assert (=> b!1750819 (= e!1120723 e!1120725)))

(declare-fun res!787521 () Bool)

(assert (=> b!1750819 (=> (not res!787521) (not e!1120725))))

(declare-fun lt!676306 () tuple2!18892)

(assert (=> b!1750819 (= res!787521 (= (_1!10848 lt!676306) token!523))))

(assert (=> b!1750819 (= lt!676306 (get!5843 lt!676321))))

(declare-fun b!1750820 () Bool)

(declare-fun Unit!33405 () Unit!33396)

(assert (=> b!1750820 (= e!1120716 Unit!33405)))

(declare-fun b!1750821 () Bool)

(declare-fun res!787538 () Bool)

(declare-fun e!1120697 () Bool)

(assert (=> b!1750821 (=> res!787538 e!1120697)))

(declare-fun isEmpty!12142 (List!19334) Bool)

(assert (=> b!1750821 (= res!787538 (isEmpty!12142 suffix!1421))))

(declare-fun b!1750822 () Bool)

(declare-fun e!1120721 () Bool)

(assert (=> b!1750822 (= e!1120710 e!1120721)))

(declare-fun res!787532 () Bool)

(assert (=> b!1750822 (=> res!787532 e!1120721)))

(declare-fun lt!676301 () Bool)

(assert (=> b!1750822 (= res!787532 lt!676301)))

(declare-fun lt!676310 () Unit!33396)

(assert (=> b!1750822 (= lt!676310 e!1120711)))

(declare-fun c!285447 () Bool)

(assert (=> b!1750822 (= c!285447 lt!676301)))

(declare-fun lt!676294 () Int)

(assert (=> b!1750822 (= lt!676301 (> lt!676323 lt!676294))))

(assert (=> b!1750822 (= lt!676294 (size!15308 lt!676324))))

(assert (=> b!1750822 (matchR!2242 lt!676316 lt!676328)))

(declare-fun lt!676333 () Unit!33396)

(assert (=> b!1750822 (= lt!676333 (lemmaMaxPrefixThenMatchesRulesRegex!171 thiss!24550 rules!3447 lt!676328 token!523 rule!422 Nil!19264))))

(declare-fun b!1750823 () Bool)

(assert (=> b!1750823 (= e!1120725 (not e!1120697))))

(declare-fun res!787539 () Bool)

(assert (=> b!1750823 (=> res!787539 e!1120697)))

(assert (=> b!1750823 (= res!787539 (not (matchR!2242 (regex!3440 rule!422) lt!676328)))))

(declare-fun ruleValid!939 (LexerInterface!3069 Rule!6680) Bool)

(assert (=> b!1750823 (ruleValid!939 thiss!24550 rule!422)))

(declare-fun lt!676341 () Unit!33396)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!463 (LexerInterface!3069 Rule!6680 List!19335) Unit!33396)

(assert (=> b!1750823 (= lt!676341 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!463 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1750824 () Bool)

(declare-fun res!787523 () Bool)

(assert (=> b!1750824 (=> res!787523 e!1120715)))

(assert (=> b!1750824 (= res!787523 (not (matchR!2242 (regex!3440 (rule!5448 (_1!10848 lt!676330))) lt!676289)))))

(declare-fun b!1750825 () Bool)

(declare-fun e!1120712 () Bool)

(assert (=> b!1750825 (= e!1120712 e!1120722)))

(declare-fun res!787529 () Bool)

(assert (=> b!1750825 (=> res!787529 e!1120722)))

(declare-fun dynLambda!9205 (Int BalanceConc!12760) TokenValue!3530)

(assert (=> b!1750825 (= res!787529 (not (= (list!7801 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338))) lt!676289)))))

(declare-fun lt!676292 () Unit!33396)

(declare-fun lemmaSemiInverse!580 (TokenValueInjection!6720 BalanceConc!12760) Unit!33396)

(assert (=> b!1750825 (= lt!676292 (lemmaSemiInverse!580 (transformation!3440 (rule!5448 (_1!10848 lt!676330))) lt!676338))))

(declare-fun e!1120699 () Bool)

(declare-fun lt!676313 () Bool)

(declare-fun b!1750826 () Bool)

(assert (=> b!1750826 (= e!1120699 (or lt!676313 (= token!523 (_1!10848 lt!676330))))))

(declare-fun lt!676290 () Unit!33396)

(assert (=> b!1750826 (= lt!676290 e!1120709)))

(declare-fun c!285449 () Bool)

(assert (=> b!1750826 (= c!285449 lt!676313)))

(assert (=> b!1750826 (= lt!676313 (not (= (rule!5448 (_1!10848 lt!676330)) (rule!5448 token!523))))))

(assert (=> b!1750826 (= suffix!1421 (_2!10848 lt!676330))))

(declare-fun lt!676293 () Unit!33396)

(assert (=> b!1750826 (= lt!676293 (lemmaSamePrefixThenSameSuffix!811 lt!676328 suffix!1421 lt!676328 (_2!10848 lt!676330) lt!676299))))

(assert (=> b!1750826 (= lt!676289 lt!676328)))

(declare-fun lt!676304 () Unit!33396)

(declare-fun lemmaIsPrefixSameLengthThenSameList!240 (List!19334 List!19334 List!19334) Unit!33396)

(assert (=> b!1750826 (= lt!676304 (lemmaIsPrefixSameLengthThenSameList!240 lt!676289 lt!676328 lt!676299))))

(declare-fun b!1750827 () Bool)

(declare-fun e!1120717 () Bool)

(declare-fun tp_is_empty!7779 () Bool)

(declare-fun tp!498073 () Bool)

(assert (=> b!1750827 (= e!1120717 (and tp_is_empty!7779 tp!498073))))

(declare-fun b!1750828 () Bool)

(assert (=> b!1750828 e!1120727))

(declare-fun res!787524 () Bool)

(assert (=> b!1750828 (=> (not res!787524) (not e!1120727))))

(assert (=> b!1750828 (= res!787524 (not (matchR!2242 (regex!3440 (rule!5448 token!523)) lt!676289)))))

(declare-fun lt!676312 () Unit!33396)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!145 (LexerInterface!3069 List!19335 Rule!6680 List!19334 List!19334 Rule!6680) Unit!33396)

(assert (=> b!1750828 (= lt!676312 (lemmaMaxPrefNoSmallerRuleMatches!145 thiss!24550 rules!3447 (rule!5448 (_1!10848 lt!676330)) lt!676289 lt!676299 (rule!5448 token!523)))))

(declare-fun Unit!33406 () Unit!33396)

(assert (=> b!1750828 (= e!1120726 Unit!33406)))

(declare-fun b!1750829 () Bool)

(declare-fun res!787533 () Bool)

(assert (=> b!1750829 (=> (not res!787533) (not e!1120725))))

(assert (=> b!1750829 (= res!787533 (isEmpty!12142 (_2!10848 lt!676306)))))

(declare-fun b!1750830 () Bool)

(declare-fun e!1120706 () Bool)

(declare-fun tp!498067 () Bool)

(declare-fun inv!24995 (String!21984) Bool)

(declare-fun inv!24998 (TokenValueInjection!6720) Bool)

(assert (=> b!1750830 (= e!1120706 (and tp!498067 (inv!24995 (tag!3790 rule!422)) (inv!24998 (transformation!3440 rule!422)) e!1120705))))

(assert (=> b!1750831 (= e!1120715 e!1120712)))

(declare-fun res!787525 () Bool)

(assert (=> b!1750831 (=> res!787525 e!1120712)))

(declare-fun Forall!809 (Int) Bool)

(assert (=> b!1750831 (= res!787525 (not (Forall!809 lambda!69863)))))

(declare-fun lt!676309 () Unit!33396)

(declare-fun lemmaInv!641 (TokenValueInjection!6720) Unit!33396)

(assert (=> b!1750831 (= lt!676309 (lemmaInv!641 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))))))

(declare-fun b!1750832 () Bool)

(declare-fun Unit!33407 () Unit!33396)

(assert (=> b!1750832 (= e!1120711 Unit!33407)))

(declare-fun b!1750833 () Bool)

(declare-fun res!787534 () Bool)

(assert (=> b!1750833 (=> (not res!787534) (not e!1120725))))

(assert (=> b!1750833 (= res!787534 (= (rule!5448 token!523) rule!422))))

(declare-fun b!1750834 () Bool)

(declare-fun Unit!33408 () Unit!33396)

(assert (=> b!1750834 (= e!1120726 Unit!33408)))

(declare-fun res!787528 () Bool)

(assert (=> start!172560 (=> (not res!787528) (not e!1120718))))

(assert (=> start!172560 (= res!787528 (is-Lexer!3067 thiss!24550))))

(assert (=> start!172560 e!1120718))

(assert (=> start!172560 e!1120717))

(assert (=> start!172560 e!1120706))

(assert (=> start!172560 true))

(declare-fun inv!24999 (Token!6446) Bool)

(assert (=> start!172560 (and (inv!24999 token!523) e!1120700)))

(assert (=> start!172560 e!1120698))

(declare-fun b!1750807 () Bool)

(assert (=> b!1750807 (= e!1120697 e!1120720)))

(declare-fun res!787522 () Bool)

(assert (=> b!1750807 (=> res!787522 e!1120720)))

(declare-fun prefixMatch!653 (Regex!4768 List!19334) Bool)

(assert (=> b!1750807 (= res!787522 (prefixMatch!653 lt!676316 lt!676332))))

(assert (=> b!1750807 (= lt!676332 (++!5265 lt!676328 (Cons!19264 (head!4037 suffix!1421) Nil!19264)))))

(declare-fun rulesRegex!798 (LexerInterface!3069 List!19335) Regex!4768)

(assert (=> b!1750807 (= lt!676316 (rulesRegex!798 thiss!24550 rules!3447))))

(declare-fun b!1750835 () Bool)

(declare-fun e!1120730 () Bool)

(declare-fun tp!498065 () Bool)

(assert (=> b!1750835 (= e!1120724 (and tp!498065 (inv!24995 (tag!3790 (h!24666 rules!3447))) (inv!24998 (transformation!3440 (h!24666 rules!3447))) e!1120730))))

(declare-fun b!1750836 () Bool)

(assert (=> b!1750836 e!1120702))

(declare-fun res!787530 () Bool)

(assert (=> b!1750836 (=> (not res!787530) (not e!1120702))))

(assert (=> b!1750836 (= res!787530 (not (matchR!2242 (regex!3440 (rule!5448 (_1!10848 lt!676330))) lt!676328)))))

(declare-fun lt!676327 () Unit!33396)

(assert (=> b!1750836 (= lt!676327 (lemmaMaxPrefNoSmallerRuleMatches!145 thiss!24550 rules!3447 (rule!5448 token!523) lt!676328 lt!676328 (rule!5448 (_1!10848 lt!676330))))))

(declare-fun Unit!33409 () Unit!33396)

(assert (=> b!1750836 (= e!1120716 Unit!33409)))

(declare-fun b!1750837 () Bool)

(assert (=> b!1750837 (= e!1120721 e!1120699)))

(declare-fun res!787540 () Bool)

(assert (=> b!1750837 (=> res!787540 e!1120699)))

(assert (=> b!1750837 (= res!787540 (not (= lt!676323 lt!676294)))))

(declare-fun lt!676319 () Unit!33396)

(assert (=> b!1750837 (= lt!676319 e!1120731)))

(declare-fun c!285448 () Bool)

(assert (=> b!1750837 (= c!285448 (< lt!676323 lt!676294))))

(assert (=> b!1750838 (= e!1120730 (and tp!498066 tp!498069))))

(declare-fun b!1750839 () Bool)

(declare-fun tp!498071 () Bool)

(assert (=> b!1750839 (= e!1120701 (and tp!498071 (inv!24995 (tag!3790 (rule!5448 token!523))) (inv!24998 (transformation!3440 (rule!5448 token!523))) e!1120703))))

(assert (= (and start!172560 res!787528) b!1750811))

(assert (= (and b!1750811 res!787526) b!1750810))

(assert (= (and b!1750810 res!787536) b!1750797))

(assert (= (and b!1750797 res!787541) b!1750800))

(assert (= (and b!1750800 res!787535) b!1750819))

(assert (= (and b!1750819 res!787521) b!1750829))

(assert (= (and b!1750829 res!787533) b!1750833))

(assert (= (and b!1750833 res!787534) b!1750823))

(assert (= (and b!1750823 (not res!787539)) b!1750821))

(assert (= (and b!1750821 (not res!787538)) b!1750807))

(assert (= (and b!1750807 (not res!787522)) b!1750816))

(assert (= (and b!1750816 res!787520) b!1750805))

(assert (= (and b!1750805 res!787537) b!1750808))

(assert (= (and b!1750816 (not res!787519)) b!1750824))

(assert (= (and b!1750824 (not res!787523)) b!1750831))

(assert (= (and b!1750831 (not res!787525)) b!1750825))

(assert (= (and b!1750825 (not res!787529)) b!1750814))

(assert (= (and b!1750814 (not res!787531)) b!1750795))

(assert (= (and b!1750795 (not res!787542)) b!1750817))

(assert (= (and b!1750817 (not res!787527)) b!1750822))

(assert (= (and b!1750822 c!285447) b!1750798))

(assert (= (and b!1750822 (not c!285447)) b!1750832))

(assert (= (and b!1750822 (not res!787532)) b!1750837))

(assert (= (and b!1750837 c!285448) b!1750812))

(assert (= (and b!1750837 (not c!285448)) b!1750818))

(assert (= (and b!1750837 (not res!787540)) b!1750826))

(assert (= (and b!1750826 c!285449) b!1750803))

(assert (= (and b!1750826 (not c!285449)) b!1750796))

(assert (= (and b!1750803 c!285450) b!1750828))

(assert (= (and b!1750803 (not c!285450)) b!1750834))

(assert (= (and b!1750828 res!787524) b!1750804))

(assert (= (and b!1750803 c!285445) b!1750836))

(assert (= (and b!1750803 (not c!285445)) b!1750820))

(assert (= (and b!1750836 res!787530) b!1750799))

(assert (= (and b!1750803 c!285446) b!1750809))

(assert (= (and b!1750803 (not c!285446)) b!1750806))

(assert (= (and start!172560 (is-Cons!19264 suffix!1421)) b!1750827))

(assert (= b!1750830 b!1750815))

(assert (= start!172560 b!1750830))

(assert (= b!1750839 b!1750801))

(assert (= b!1750813 b!1750839))

(assert (= start!172560 b!1750813))

(assert (= b!1750835 b!1750838))

(assert (= b!1750802 b!1750835))

(assert (= (and start!172560 (is-Cons!19265 rules!3447)) b!1750802))

(declare-fun b_lambda!56269 () Bool)

(assert (=> (not b_lambda!56269) (not b!1750814)))

(declare-fun t!162929 () Bool)

(declare-fun tb!105023 () Bool)

(assert (=> (and b!1750838 (= (toChars!4814 (transformation!3440 (h!24666 rules!3447))) (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162929) tb!105023))

(declare-fun b!1750855 () Bool)

(declare-fun e!1120743 () Bool)

(declare-fun tp!498079 () Bool)

(declare-fun inv!25000 (Conc!6408) Bool)

(assert (=> b!1750855 (= e!1120743 (and (inv!25000 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (value!107714 (_1!10848 lt!676330))))) tp!498079))))

(declare-fun result!126334 () Bool)

(declare-fun inv!25001 (BalanceConc!12760) Bool)

(assert (=> tb!105023 (= result!126334 (and (inv!25001 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (value!107714 (_1!10848 lt!676330)))) e!1120743))))

(assert (= tb!105023 b!1750855))

(declare-fun m!2164313 () Bool)

(assert (=> b!1750855 m!2164313))

(declare-fun m!2164315 () Bool)

(assert (=> tb!105023 m!2164315))

(assert (=> b!1750814 t!162929))

(declare-fun b_and!130969 () Bool)

(assert (= b_and!130959 (and (=> t!162929 result!126334) b_and!130969)))

(declare-fun tb!105025 () Bool)

(declare-fun t!162931 () Bool)

(assert (=> (and b!1750815 (= (toChars!4814 (transformation!3440 rule!422)) (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162931) tb!105025))

(declare-fun result!126338 () Bool)

(assert (= result!126338 result!126334))

(assert (=> b!1750814 t!162931))

(declare-fun b_and!130971 () Bool)

(assert (= b_and!130963 (and (=> t!162931 result!126338) b_and!130971)))

(declare-fun tb!105027 () Bool)

(declare-fun t!162933 () Bool)

(assert (=> (and b!1750801 (= (toChars!4814 (transformation!3440 (rule!5448 token!523))) (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162933) tb!105027))

(declare-fun result!126340 () Bool)

(assert (= result!126340 result!126334))

(assert (=> b!1750814 t!162933))

(declare-fun b_and!130973 () Bool)

(assert (= b_and!130967 (and (=> t!162933 result!126340) b_and!130973)))

(declare-fun b_lambda!56271 () Bool)

(assert (=> (not b_lambda!56271) (not b!1750825)))

(declare-fun t!162935 () Bool)

(declare-fun tb!105029 () Bool)

(assert (=> (and b!1750838 (= (toChars!4814 (transformation!3440 (h!24666 rules!3447))) (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162935) tb!105029))

(declare-fun tp!498080 () Bool)

(declare-fun b!1750856 () Bool)

(declare-fun e!1120744 () Bool)

(assert (=> b!1750856 (= e!1120744 (and (inv!25000 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338)))) tp!498080))))

(declare-fun result!126342 () Bool)

(assert (=> tb!105029 (= result!126342 (and (inv!25001 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338))) e!1120744))))

(assert (= tb!105029 b!1750856))

(declare-fun m!2164317 () Bool)

(assert (=> b!1750856 m!2164317))

(declare-fun m!2164319 () Bool)

(assert (=> tb!105029 m!2164319))

(assert (=> b!1750825 t!162935))

(declare-fun b_and!130975 () Bool)

(assert (= b_and!130969 (and (=> t!162935 result!126342) b_and!130975)))

(declare-fun t!162937 () Bool)

(declare-fun tb!105031 () Bool)

(assert (=> (and b!1750815 (= (toChars!4814 (transformation!3440 rule!422)) (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162937) tb!105031))

(declare-fun result!126344 () Bool)

(assert (= result!126344 result!126342))

(assert (=> b!1750825 t!162937))

(declare-fun b_and!130977 () Bool)

(assert (= b_and!130971 (and (=> t!162937 result!126344) b_and!130977)))

(declare-fun tb!105033 () Bool)

(declare-fun t!162939 () Bool)

(assert (=> (and b!1750801 (= (toChars!4814 (transformation!3440 (rule!5448 token!523))) (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162939) tb!105033))

(declare-fun result!126346 () Bool)

(assert (= result!126346 result!126342))

(assert (=> b!1750825 t!162939))

(declare-fun b_and!130979 () Bool)

(assert (= b_and!130973 (and (=> t!162939 result!126346) b_and!130979)))

(declare-fun b_lambda!56273 () Bool)

(assert (=> (not b_lambda!56273) (not b!1750825)))

(declare-fun tb!105035 () Bool)

(declare-fun t!162941 () Bool)

(assert (=> (and b!1750838 (= (toValue!4955 (transformation!3440 (h!24666 rules!3447))) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162941) tb!105035))

(declare-fun result!126348 () Bool)

(assert (=> tb!105035 (= result!126348 (inv!21 (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338)))))

(declare-fun m!2164321 () Bool)

(assert (=> tb!105035 m!2164321))

(assert (=> b!1750825 t!162941))

(declare-fun b_and!130981 () Bool)

(assert (= b_and!130957 (and (=> t!162941 result!126348) b_and!130981)))

(declare-fun tb!105037 () Bool)

(declare-fun t!162943 () Bool)

(assert (=> (and b!1750815 (= (toValue!4955 (transformation!3440 rule!422)) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162943) tb!105037))

(declare-fun result!126352 () Bool)

(assert (= result!126352 result!126348))

(assert (=> b!1750825 t!162943))

(declare-fun b_and!130983 () Bool)

(assert (= b_and!130961 (and (=> t!162943 result!126352) b_and!130983)))

(declare-fun tb!105039 () Bool)

(declare-fun t!162945 () Bool)

(assert (=> (and b!1750801 (= (toValue!4955 (transformation!3440 (rule!5448 token!523))) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162945) tb!105039))

(declare-fun result!126354 () Bool)

(assert (= result!126354 result!126348))

(assert (=> b!1750825 t!162945))

(declare-fun b_and!130985 () Bool)

(assert (= b_and!130965 (and (=> t!162945 result!126354) b_and!130985)))

(declare-fun m!2164323 () Bool)

(assert (=> b!1750816 m!2164323))

(declare-fun m!2164325 () Bool)

(assert (=> b!1750816 m!2164325))

(declare-fun m!2164327 () Bool)

(assert (=> b!1750816 m!2164327))

(declare-fun m!2164329 () Bool)

(assert (=> b!1750816 m!2164329))

(declare-fun m!2164331 () Bool)

(assert (=> b!1750816 m!2164331))

(assert (=> b!1750816 m!2164325))

(declare-fun m!2164333 () Bool)

(assert (=> b!1750816 m!2164333))

(declare-fun m!2164335 () Bool)

(assert (=> b!1750816 m!2164335))

(declare-fun m!2164337 () Bool)

(assert (=> b!1750816 m!2164337))

(declare-fun m!2164339 () Bool)

(assert (=> b!1750816 m!2164339))

(declare-fun m!2164341 () Bool)

(assert (=> b!1750816 m!2164341))

(declare-fun m!2164343 () Bool)

(assert (=> b!1750816 m!2164343))

(declare-fun m!2164345 () Bool)

(assert (=> b!1750816 m!2164345))

(declare-fun m!2164347 () Bool)

(assert (=> b!1750816 m!2164347))

(declare-fun m!2164349 () Bool)

(assert (=> b!1750816 m!2164349))

(declare-fun m!2164351 () Bool)

(assert (=> b!1750816 m!2164351))

(declare-fun m!2164353 () Bool)

(assert (=> b!1750803 m!2164353))

(declare-fun m!2164355 () Bool)

(assert (=> b!1750803 m!2164355))

(declare-fun m!2164357 () Bool)

(assert (=> b!1750823 m!2164357))

(declare-fun m!2164359 () Bool)

(assert (=> b!1750823 m!2164359))

(declare-fun m!2164361 () Bool)

(assert (=> b!1750823 m!2164361))

(declare-fun m!2164363 () Bool)

(assert (=> b!1750835 m!2164363))

(declare-fun m!2164365 () Bool)

(assert (=> b!1750835 m!2164365))

(assert (=> b!1750805 m!2164337))

(assert (=> b!1750805 m!2164337))

(declare-fun m!2164367 () Bool)

(assert (=> b!1750805 m!2164367))

(assert (=> b!1750805 m!2164367))

(declare-fun m!2164369 () Bool)

(assert (=> b!1750805 m!2164369))

(declare-fun m!2164371 () Bool)

(assert (=> b!1750805 m!2164371))

(declare-fun m!2164373 () Bool)

(assert (=> b!1750826 m!2164373))

(declare-fun m!2164375 () Bool)

(assert (=> b!1750826 m!2164375))

(declare-fun m!2164377 () Bool)

(assert (=> b!1750825 m!2164377))

(assert (=> b!1750825 m!2164377))

(declare-fun m!2164379 () Bool)

(assert (=> b!1750825 m!2164379))

(assert (=> b!1750825 m!2164379))

(declare-fun m!2164381 () Bool)

(assert (=> b!1750825 m!2164381))

(declare-fun m!2164383 () Bool)

(assert (=> b!1750825 m!2164383))

(declare-fun m!2164385 () Bool)

(assert (=> b!1750812 m!2164385))

(declare-fun m!2164387 () Bool)

(assert (=> b!1750810 m!2164387))

(declare-fun m!2164389 () Bool)

(assert (=> b!1750822 m!2164389))

(declare-fun m!2164391 () Bool)

(assert (=> b!1750822 m!2164391))

(declare-fun m!2164393 () Bool)

(assert (=> b!1750822 m!2164393))

(declare-fun m!2164395 () Bool)

(assert (=> start!172560 m!2164395))

(declare-fun m!2164397 () Bool)

(assert (=> b!1750821 m!2164397))

(declare-fun m!2164399 () Bool)

(assert (=> b!1750831 m!2164399))

(declare-fun m!2164401 () Bool)

(assert (=> b!1750831 m!2164401))

(declare-fun m!2164403 () Bool)

(assert (=> b!1750836 m!2164403))

(declare-fun m!2164405 () Bool)

(assert (=> b!1750836 m!2164405))

(declare-fun m!2164407 () Bool)

(assert (=> b!1750800 m!2164407))

(declare-fun m!2164409 () Bool)

(assert (=> b!1750800 m!2164409))

(declare-fun m!2164411 () Bool)

(assert (=> b!1750800 m!2164411))

(declare-fun m!2164413 () Bool)

(assert (=> b!1750800 m!2164413))

(declare-fun m!2164415 () Bool)

(assert (=> b!1750828 m!2164415))

(declare-fun m!2164417 () Bool)

(assert (=> b!1750828 m!2164417))

(declare-fun m!2164419 () Bool)

(assert (=> b!1750807 m!2164419))

(declare-fun m!2164421 () Bool)

(assert (=> b!1750807 m!2164421))

(declare-fun m!2164423 () Bool)

(assert (=> b!1750807 m!2164423))

(declare-fun m!2164425 () Bool)

(assert (=> b!1750807 m!2164425))

(declare-fun m!2164427 () Bool)

(assert (=> b!1750795 m!2164427))

(assert (=> b!1750795 m!2164427))

(declare-fun m!2164429 () Bool)

(assert (=> b!1750795 m!2164429))

(declare-fun m!2164431 () Bool)

(assert (=> b!1750795 m!2164431))

(declare-fun m!2164433 () Bool)

(assert (=> b!1750795 m!2164433))

(declare-fun m!2164435 () Bool)

(assert (=> b!1750795 m!2164435))

(declare-fun m!2164437 () Bool)

(assert (=> b!1750797 m!2164437))

(declare-fun m!2164439 () Bool)

(assert (=> b!1750817 m!2164439))

(declare-fun m!2164441 () Bool)

(assert (=> b!1750817 m!2164441))

(declare-fun m!2164443 () Bool)

(assert (=> b!1750817 m!2164443))

(assert (=> b!1750817 m!2164441))

(declare-fun m!2164445 () Bool)

(assert (=> b!1750817 m!2164445))

(declare-fun m!2164447 () Bool)

(assert (=> b!1750817 m!2164447))

(declare-fun m!2164449 () Bool)

(assert (=> b!1750817 m!2164449))

(declare-fun m!2164451 () Bool)

(assert (=> b!1750817 m!2164451))

(declare-fun m!2164453 () Bool)

(assert (=> b!1750819 m!2164453))

(declare-fun m!2164455 () Bool)

(assert (=> b!1750824 m!2164455))

(declare-fun m!2164457 () Bool)

(assert (=> b!1750809 m!2164457))

(declare-fun m!2164459 () Bool)

(assert (=> b!1750839 m!2164459))

(declare-fun m!2164461 () Bool)

(assert (=> b!1750839 m!2164461))

(declare-fun m!2164463 () Bool)

(assert (=> b!1750813 m!2164463))

(declare-fun m!2164465 () Bool)

(assert (=> b!1750829 m!2164465))

(declare-fun m!2164467 () Bool)

(assert (=> b!1750814 m!2164467))

(declare-fun m!2164469 () Bool)

(assert (=> b!1750811 m!2164469))

(declare-fun m!2164471 () Bool)

(assert (=> b!1750798 m!2164471))

(declare-fun m!2164473 () Bool)

(assert (=> b!1750798 m!2164473))

(declare-fun m!2164475 () Bool)

(assert (=> b!1750798 m!2164475))

(declare-fun m!2164477 () Bool)

(assert (=> b!1750798 m!2164477))

(declare-fun m!2164479 () Bool)

(assert (=> b!1750798 m!2164479))

(declare-fun m!2164481 () Bool)

(assert (=> b!1750798 m!2164481))

(declare-fun m!2164483 () Bool)

(assert (=> b!1750798 m!2164483))

(declare-fun m!2164485 () Bool)

(assert (=> b!1750798 m!2164485))

(declare-fun m!2164487 () Bool)

(assert (=> b!1750798 m!2164487))

(declare-fun m!2164489 () Bool)

(assert (=> b!1750798 m!2164489))

(declare-fun m!2164491 () Bool)

(assert (=> b!1750798 m!2164491))

(assert (=> b!1750798 m!2164471))

(declare-fun m!2164493 () Bool)

(assert (=> b!1750830 m!2164493))

(declare-fun m!2164495 () Bool)

(assert (=> b!1750830 m!2164495))

(push 1)

(assert (not b!1750824))

(assert b_and!130981)

(assert (not b!1750826))

(assert (not b_lambda!56269))

(assert (not b!1750856))

(assert (not start!172560))

(assert b_and!130979)

(assert (not b!1750798))

(assert (not b!1750809))

(assert (not b_next!49023))

(assert (not b!1750819))

(assert (not b!1750805))

(assert (not b_lambda!56271))

(assert (not b!1750825))

(assert (not b_next!49025))

(assert (not b_lambda!56273))

(assert (not b!1750807))

(assert (not b!1750795))

(assert (not b!1750802))

(assert (not b!1750817))

(assert b_and!130975)

(assert (not b_next!49029))

(assert (not b!1750855))

(assert (not b!1750829))

(assert b_and!130985)

(assert (not b!1750827))

(assert (not b!1750821))

(assert (not b!1750828))

(assert (not b!1750803))

(assert (not b!1750839))

(assert b_and!130977)

(assert tp_is_empty!7779)

(assert (not b_next!49027))

(assert (not b!1750830))

(assert (not b!1750800))

(assert (not b!1750816))

(assert (not tb!105029))

(assert (not b!1750822))

(assert (not b!1750810))

(assert (not b!1750823))

(assert b_and!130983)

(assert (not b!1750831))

(assert (not tb!105023))

(assert (not b_next!49031))

(assert (not b!1750836))

(assert (not tb!105035))

(assert (not b!1750813))

(assert (not b_next!49033))

(assert (not b!1750797))

(assert (not b!1750811))

(assert (not b!1750835))

(assert (not b!1750812))

(check-sat)

(pop 1)

(push 1)

(assert b_and!130979)

(assert (not b_next!49023))

(assert (not b_next!49025))

(assert b_and!130981)

(assert b_and!130975)

(assert (not b_next!49029))

(assert b_and!130985)

(assert b_and!130977)

(assert (not b_next!49027))

(assert b_and!130983)

(assert (not b_next!49031))

(assert (not b_next!49033))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!534635 () Bool)

(declare-fun res!787617 () Bool)

(declare-fun e!1120871 () Bool)

(assert (=> d!534635 (=> (not res!787617) (not e!1120871))))

(declare-fun rulesValid!1284 (LexerInterface!3069 List!19335) Bool)

(assert (=> d!534635 (= res!787617 (rulesValid!1284 thiss!24550 rules!3447))))

(assert (=> d!534635 (= (rulesInvariant!2738 thiss!24550 rules!3447) e!1120871)))

(declare-fun b!1751015 () Bool)

(declare-datatypes ((List!19339 0))(
  ( (Nil!19269) (Cons!19269 (h!24670 String!21984) (t!163006 List!19339)) )
))
(declare-fun noDuplicateTag!1284 (LexerInterface!3069 List!19335 List!19339) Bool)

(assert (=> b!1751015 (= e!1120871 (noDuplicateTag!1284 thiss!24550 rules!3447 Nil!19269))))

(assert (= (and d!534635 res!787617) b!1751015))

(declare-fun m!2164681 () Bool)

(assert (=> d!534635 m!2164681))

(declare-fun m!2164683 () Bool)

(assert (=> b!1751015 m!2164683))

(assert (=> b!1750810 d!534635))

(declare-fun d!534637 () Bool)

(declare-fun res!787622 () Bool)

(declare-fun e!1120874 () Bool)

(assert (=> d!534637 (=> (not res!787622) (not e!1120874))))

(assert (=> d!534637 (= res!787622 (not (isEmpty!12142 (originalCharacters!4254 token!523))))))

(assert (=> d!534637 (= (inv!24999 token!523) e!1120874)))

(declare-fun b!1751020 () Bool)

(declare-fun res!787623 () Bool)

(assert (=> b!1751020 (=> (not res!787623) (not e!1120874))))

(assert (=> b!1751020 (= res!787623 (= (originalCharacters!4254 token!523) (list!7801 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 token!523))) (value!107714 token!523)))))))

(declare-fun b!1751021 () Bool)

(assert (=> b!1751021 (= e!1120874 (= (size!15307 token!523) (size!15309 (originalCharacters!4254 token!523))))))

(assert (= (and d!534637 res!787622) b!1751020))

(assert (= (and b!1751020 res!787623) b!1751021))

(declare-fun b_lambda!56281 () Bool)

(assert (=> (not b_lambda!56281) (not b!1751020)))

(declare-fun tb!105059 () Bool)

(declare-fun t!162971 () Bool)

(assert (=> (and b!1750838 (= (toChars!4814 (transformation!3440 (h!24666 rules!3447))) (toChars!4814 (transformation!3440 (rule!5448 token!523)))) t!162971) tb!105059))

(declare-fun b!1751022 () Bool)

(declare-fun e!1120875 () Bool)

(declare-fun tp!498121 () Bool)

(assert (=> b!1751022 (= e!1120875 (and (inv!25000 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 token!523))) (value!107714 token!523)))) tp!498121))))

(declare-fun result!126378 () Bool)

(assert (=> tb!105059 (= result!126378 (and (inv!25001 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 token!523))) (value!107714 token!523))) e!1120875))))

(assert (= tb!105059 b!1751022))

(declare-fun m!2164685 () Bool)

(assert (=> b!1751022 m!2164685))

(declare-fun m!2164687 () Bool)

(assert (=> tb!105059 m!2164687))

(assert (=> b!1751020 t!162971))

(declare-fun b_and!131017 () Bool)

(assert (= b_and!130975 (and (=> t!162971 result!126378) b_and!131017)))

(declare-fun tb!105061 () Bool)

(declare-fun t!162973 () Bool)

(assert (=> (and b!1750815 (= (toChars!4814 (transformation!3440 rule!422)) (toChars!4814 (transformation!3440 (rule!5448 token!523)))) t!162973) tb!105061))

(declare-fun result!126380 () Bool)

(assert (= result!126380 result!126378))

(assert (=> b!1751020 t!162973))

(declare-fun b_and!131019 () Bool)

(assert (= b_and!130977 (and (=> t!162973 result!126380) b_and!131019)))

(declare-fun t!162975 () Bool)

(declare-fun tb!105063 () Bool)

(assert (=> (and b!1750801 (= (toChars!4814 (transformation!3440 (rule!5448 token!523))) (toChars!4814 (transformation!3440 (rule!5448 token!523)))) t!162975) tb!105063))

(declare-fun result!126382 () Bool)

(assert (= result!126382 result!126378))

(assert (=> b!1751020 t!162975))

(declare-fun b_and!131021 () Bool)

(assert (= b_and!130979 (and (=> t!162975 result!126382) b_and!131021)))

(declare-fun m!2164689 () Bool)

(assert (=> d!534637 m!2164689))

(declare-fun m!2164691 () Bool)

(assert (=> b!1751020 m!2164691))

(assert (=> b!1751020 m!2164691))

(declare-fun m!2164693 () Bool)

(assert (=> b!1751020 m!2164693))

(declare-fun m!2164695 () Bool)

(assert (=> b!1751021 m!2164695))

(assert (=> start!172560 d!534637))

(declare-fun d!534639 () Bool)

(declare-fun choose!10791 (Int) Bool)

(assert (=> d!534639 (= (Forall!809 lambda!69863) (choose!10791 lambda!69863))))

(declare-fun bs!403494 () Bool)

(assert (= bs!403494 d!534639))

(declare-fun m!2164697 () Bool)

(assert (=> bs!403494 m!2164697))

(assert (=> b!1750831 d!534639))

(declare-fun d!534641 () Bool)

(declare-fun e!1120878 () Bool)

(assert (=> d!534641 e!1120878))

(declare-fun res!787626 () Bool)

(assert (=> d!534641 (=> (not res!787626) (not e!1120878))))

(declare-fun semiInverseModEq!1358 (Int Int) Bool)

(assert (=> d!534641 (= res!787626 (semiInverseModEq!1358 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))))))

(declare-fun Unit!33425 () Unit!33396)

(assert (=> d!534641 (= (lemmaInv!641 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) Unit!33425)))

(declare-fun b!1751025 () Bool)

(declare-fun equivClasses!1299 (Int Int) Bool)

(assert (=> b!1751025 (= e!1120878 (equivClasses!1299 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))))))

(assert (= (and d!534641 res!787626) b!1751025))

(declare-fun m!2164699 () Bool)

(assert (=> d!534641 m!2164699))

(declare-fun m!2164701 () Bool)

(assert (=> b!1751025 m!2164701))

(assert (=> b!1750831 d!534641))

(declare-fun d!534643 () Bool)

(assert (=> d!534643 (= (inv!24995 (tag!3790 rule!422)) (= (mod (str.len (value!107713 (tag!3790 rule!422))) 2) 0))))

(assert (=> b!1750830 d!534643))

(declare-fun d!534645 () Bool)

(declare-fun res!787629 () Bool)

(declare-fun e!1120881 () Bool)

(assert (=> d!534645 (=> (not res!787629) (not e!1120881))))

(assert (=> d!534645 (= res!787629 (semiInverseModEq!1358 (toChars!4814 (transformation!3440 rule!422)) (toValue!4955 (transformation!3440 rule!422))))))

(assert (=> d!534645 (= (inv!24998 (transformation!3440 rule!422)) e!1120881)))

(declare-fun b!1751028 () Bool)

(assert (=> b!1751028 (= e!1120881 (equivClasses!1299 (toChars!4814 (transformation!3440 rule!422)) (toValue!4955 (transformation!3440 rule!422))))))

(assert (= (and d!534645 res!787629) b!1751028))

(declare-fun m!2164703 () Bool)

(assert (=> d!534645 m!2164703))

(declare-fun m!2164705 () Bool)

(assert (=> b!1751028 m!2164705))

(assert (=> b!1750830 d!534645))

(declare-fun d!534647 () Bool)

(assert (=> d!534647 (= (rule!5448 (_1!10848 lt!676330)) (rule!5448 token!523))))

(declare-fun lt!676507 () Unit!33396)

(declare-fun choose!10792 (List!19335 Rule!6680 Rule!6680) Unit!33396)

(assert (=> d!534647 (= lt!676507 (choose!10792 rules!3447 (rule!5448 (_1!10848 lt!676330)) (rule!5448 token!523)))))

(assert (=> d!534647 (contains!3466 rules!3447 (rule!5448 (_1!10848 lt!676330)))))

(assert (=> d!534647 (= (lemmaSameIndexThenSameElement!109 rules!3447 (rule!5448 (_1!10848 lt!676330)) (rule!5448 token!523)) lt!676507)))

(declare-fun bs!403495 () Bool)

(assert (= bs!403495 d!534647))

(declare-fun m!2164707 () Bool)

(assert (=> bs!403495 m!2164707))

(declare-fun m!2164709 () Bool)

(assert (=> bs!403495 m!2164709))

(assert (=> b!1750809 d!534647))

(declare-fun b!1751039 () Bool)

(declare-fun res!787632 () Bool)

(declare-fun e!1120889 () Bool)

(assert (=> b!1751039 (=> res!787632 e!1120889)))

(assert (=> b!1751039 (= res!787632 (not (is-IntegerValue!10592 (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338))))))

(declare-fun e!1120890 () Bool)

(assert (=> b!1751039 (= e!1120890 e!1120889)))

(declare-fun b!1751040 () Bool)

(declare-fun e!1120888 () Bool)

(declare-fun inv!16 (TokenValue!3530) Bool)

(assert (=> b!1751040 (= e!1120888 (inv!16 (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338)))))

(declare-fun d!534649 () Bool)

(declare-fun c!285478 () Bool)

(assert (=> d!534649 (= c!285478 (is-IntegerValue!10590 (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338)))))

(assert (=> d!534649 (= (inv!21 (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338)) e!1120888)))

(declare-fun b!1751041 () Bool)

(declare-fun inv!17 (TokenValue!3530) Bool)

(assert (=> b!1751041 (= e!1120890 (inv!17 (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338)))))

(declare-fun b!1751042 () Bool)

(assert (=> b!1751042 (= e!1120888 e!1120890)))

(declare-fun c!285479 () Bool)

(assert (=> b!1751042 (= c!285479 (is-IntegerValue!10591 (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338)))))

(declare-fun b!1751043 () Bool)

(declare-fun inv!15 (TokenValue!3530) Bool)

(assert (=> b!1751043 (= e!1120889 (inv!15 (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338)))))

(assert (= (and d!534649 c!285478) b!1751040))

(assert (= (and d!534649 (not c!285478)) b!1751042))

(assert (= (and b!1751042 c!285479) b!1751041))

(assert (= (and b!1751042 (not c!285479)) b!1751039))

(assert (= (and b!1751039 (not res!787632)) b!1751043))

(declare-fun m!2164711 () Bool)

(assert (=> b!1751040 m!2164711))

(declare-fun m!2164713 () Bool)

(assert (=> b!1751041 m!2164713))

(declare-fun m!2164715 () Bool)

(assert (=> b!1751043 m!2164715))

(assert (=> tb!105035 d!534649))

(declare-fun b!1751044 () Bool)

(declare-fun res!787633 () Bool)

(declare-fun e!1120892 () Bool)

(assert (=> b!1751044 (=> res!787633 e!1120892)))

(assert (=> b!1751044 (= res!787633 (not (is-IntegerValue!10592 (value!107714 token!523))))))

(declare-fun e!1120893 () Bool)

(assert (=> b!1751044 (= e!1120893 e!1120892)))

(declare-fun b!1751045 () Bool)

(declare-fun e!1120891 () Bool)

(assert (=> b!1751045 (= e!1120891 (inv!16 (value!107714 token!523)))))

(declare-fun d!534651 () Bool)

(declare-fun c!285480 () Bool)

(assert (=> d!534651 (= c!285480 (is-IntegerValue!10590 (value!107714 token!523)))))

(assert (=> d!534651 (= (inv!21 (value!107714 token!523)) e!1120891)))

(declare-fun b!1751046 () Bool)

(assert (=> b!1751046 (= e!1120893 (inv!17 (value!107714 token!523)))))

(declare-fun b!1751047 () Bool)

(assert (=> b!1751047 (= e!1120891 e!1120893)))

(declare-fun c!285481 () Bool)

(assert (=> b!1751047 (= c!285481 (is-IntegerValue!10591 (value!107714 token!523)))))

(declare-fun b!1751048 () Bool)

(assert (=> b!1751048 (= e!1120892 (inv!15 (value!107714 token!523)))))

(assert (= (and d!534651 c!285480) b!1751045))

(assert (= (and d!534651 (not c!285480)) b!1751047))

(assert (= (and b!1751047 c!285481) b!1751046))

(assert (= (and b!1751047 (not c!285481)) b!1751044))

(assert (= (and b!1751044 (not res!787633)) b!1751048))

(declare-fun m!2164717 () Bool)

(assert (=> b!1751045 m!2164717))

(declare-fun m!2164719 () Bool)

(assert (=> b!1751046 m!2164719))

(declare-fun m!2164721 () Bool)

(assert (=> b!1751048 m!2164721))

(assert (=> b!1750813 d!534651))

(declare-fun d!534653 () Bool)

(assert (=> d!534653 (not (matchR!2242 (regex!3440 rule!422) lt!676328))))

(declare-fun lt!676510 () Unit!33396)

(declare-fun choose!10793 (LexerInterface!3069 List!19335 Rule!6680 List!19334 List!19334 List!19334 Rule!6680) Unit!33396)

(assert (=> d!534653 (= lt!676510 (choose!10793 thiss!24550 rules!3447 (rule!5448 (_1!10848 lt!676330)) lt!676289 lt!676299 lt!676328 rule!422))))

(assert (=> d!534653 (isPrefix!1681 lt!676289 lt!676299)))

(assert (=> d!534653 (= (lemmaMaxPrefixOutputsMaxPrefix!211 thiss!24550 rules!3447 (rule!5448 (_1!10848 lt!676330)) lt!676289 lt!676299 lt!676328 rule!422) lt!676510)))

(declare-fun bs!403496 () Bool)

(assert (= bs!403496 d!534653))

(assert (=> bs!403496 m!2164357))

(declare-fun m!2164723 () Bool)

(assert (=> bs!403496 m!2164723))

(assert (=> bs!403496 m!2164341))

(assert (=> b!1750812 d!534653))

(declare-fun d!534655 () Bool)

(assert (=> d!534655 (= (isEmpty!12141 rules!3447) (is-Nil!19265 rules!3447))))

(assert (=> b!1750811 d!534655))

(declare-fun d!534657 () Bool)

(declare-fun c!285484 () Bool)

(assert (=> d!534657 (= c!285484 (is-Node!6408 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (value!107714 (_1!10848 lt!676330))))))))

(declare-fun e!1120898 () Bool)

(assert (=> d!534657 (= (inv!25000 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (value!107714 (_1!10848 lt!676330))))) e!1120898)))

(declare-fun b!1751055 () Bool)

(declare-fun inv!25006 (Conc!6408) Bool)

(assert (=> b!1751055 (= e!1120898 (inv!25006 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (value!107714 (_1!10848 lt!676330))))))))

(declare-fun b!1751056 () Bool)

(declare-fun e!1120899 () Bool)

(assert (=> b!1751056 (= e!1120898 e!1120899)))

(declare-fun res!787636 () Bool)

(assert (=> b!1751056 (= res!787636 (not (is-Leaf!9349 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (value!107714 (_1!10848 lt!676330)))))))))

(assert (=> b!1751056 (=> res!787636 e!1120899)))

(declare-fun b!1751057 () Bool)

(declare-fun inv!25007 (Conc!6408) Bool)

(assert (=> b!1751057 (= e!1120899 (inv!25007 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (value!107714 (_1!10848 lt!676330))))))))

(assert (= (and d!534657 c!285484) b!1751055))

(assert (= (and d!534657 (not c!285484)) b!1751056))

(assert (= (and b!1751056 (not res!787636)) b!1751057))

(declare-fun m!2164725 () Bool)

(assert (=> b!1751055 m!2164725))

(declare-fun m!2164727 () Bool)

(assert (=> b!1751057 m!2164727))

(assert (=> b!1750855 d!534657))

(declare-fun d!534659 () Bool)

(assert (=> d!534659 (= suffix!1421 (_2!10848 lt!676330))))

(declare-fun lt!676513 () Unit!33396)

(declare-fun choose!10794 (List!19334 List!19334 List!19334 List!19334 List!19334) Unit!33396)

(assert (=> d!534659 (= lt!676513 (choose!10794 lt!676328 suffix!1421 lt!676328 (_2!10848 lt!676330) lt!676299))))

(assert (=> d!534659 (isPrefix!1681 lt!676328 lt!676299)))

(assert (=> d!534659 (= (lemmaSamePrefixThenSameSuffix!811 lt!676328 suffix!1421 lt!676328 (_2!10848 lt!676330) lt!676299) lt!676513)))

(declare-fun bs!403497 () Bool)

(assert (= bs!403497 d!534659))

(declare-fun m!2164729 () Bool)

(assert (=> bs!403497 m!2164729))

(assert (=> bs!403497 m!2164347))

(assert (=> b!1750826 d!534659))

(declare-fun d!534661 () Bool)

(assert (=> d!534661 (= lt!676289 lt!676328)))

(declare-fun lt!676516 () Unit!33396)

(declare-fun choose!10795 (List!19334 List!19334 List!19334) Unit!33396)

(assert (=> d!534661 (= lt!676516 (choose!10795 lt!676289 lt!676328 lt!676299))))

(assert (=> d!534661 (isPrefix!1681 lt!676289 lt!676299)))

(assert (=> d!534661 (= (lemmaIsPrefixSameLengthThenSameList!240 lt!676289 lt!676328 lt!676299) lt!676516)))

(declare-fun bs!403498 () Bool)

(assert (= bs!403498 d!534661))

(declare-fun m!2164731 () Bool)

(assert (=> bs!403498 m!2164731))

(assert (=> bs!403498 m!2164341))

(assert (=> b!1750826 d!534661))

(declare-fun b!1751086 () Bool)

(declare-fun e!1120914 () Bool)

(assert (=> b!1751086 (= e!1120914 (not (= (head!4037 (list!7801 (charsOf!2089 (_1!10848 lt!676330)))) (c!285451 (regex!3440 lt!676335)))))))

(declare-fun b!1751087 () Bool)

(declare-fun e!1120915 () Bool)

(declare-fun e!1120916 () Bool)

(assert (=> b!1751087 (= e!1120915 e!1120916)))

(declare-fun res!787656 () Bool)

(assert (=> b!1751087 (=> (not res!787656) (not e!1120916))))

(declare-fun lt!676519 () Bool)

(assert (=> b!1751087 (= res!787656 (not lt!676519))))

(declare-fun b!1751088 () Bool)

(declare-fun e!1120920 () Bool)

(declare-fun e!1120919 () Bool)

(assert (=> b!1751088 (= e!1120920 e!1120919)))

(declare-fun c!285491 () Bool)

(assert (=> b!1751088 (= c!285491 (is-EmptyLang!4768 (regex!3440 lt!676335)))))

(declare-fun b!1751089 () Bool)

(declare-fun res!787655 () Bool)

(assert (=> b!1751089 (=> res!787655 e!1120914)))

(declare-fun tail!2614 (List!19334) List!19334)

(assert (=> b!1751089 (= res!787655 (not (isEmpty!12142 (tail!2614 (list!7801 (charsOf!2089 (_1!10848 lt!676330)))))))))

(declare-fun b!1751090 () Bool)

(declare-fun e!1120917 () Bool)

(assert (=> b!1751090 (= e!1120917 (= (head!4037 (list!7801 (charsOf!2089 (_1!10848 lt!676330)))) (c!285451 (regex!3440 lt!676335))))))

(declare-fun d!534663 () Bool)

(assert (=> d!534663 e!1120920))

(declare-fun c!285493 () Bool)

(assert (=> d!534663 (= c!285493 (is-EmptyExpr!4768 (regex!3440 lt!676335)))))

(declare-fun e!1120918 () Bool)

(assert (=> d!534663 (= lt!676519 e!1120918)))

(declare-fun c!285492 () Bool)

(assert (=> d!534663 (= c!285492 (isEmpty!12142 (list!7801 (charsOf!2089 (_1!10848 lt!676330)))))))

(declare-fun validRegex!1918 (Regex!4768) Bool)

(assert (=> d!534663 (validRegex!1918 (regex!3440 lt!676335))))

(assert (=> d!534663 (= (matchR!2242 (regex!3440 lt!676335) (list!7801 (charsOf!2089 (_1!10848 lt!676330)))) lt!676519)))

(declare-fun b!1751091 () Bool)

(declare-fun derivativeStep!1213 (Regex!4768 C!9710) Regex!4768)

(assert (=> b!1751091 (= e!1120918 (matchR!2242 (derivativeStep!1213 (regex!3440 lt!676335) (head!4037 (list!7801 (charsOf!2089 (_1!10848 lt!676330))))) (tail!2614 (list!7801 (charsOf!2089 (_1!10848 lt!676330))))))))

(declare-fun b!1751092 () Bool)

(declare-fun res!787660 () Bool)

(assert (=> b!1751092 (=> res!787660 e!1120915)))

(assert (=> b!1751092 (= res!787660 e!1120917)))

(declare-fun res!787658 () Bool)

(assert (=> b!1751092 (=> (not res!787658) (not e!1120917))))

(assert (=> b!1751092 (= res!787658 lt!676519)))

(declare-fun b!1751093 () Bool)

(declare-fun call!110373 () Bool)

(assert (=> b!1751093 (= e!1120920 (= lt!676519 call!110373))))

(declare-fun b!1751094 () Bool)

(declare-fun res!787654 () Bool)

(assert (=> b!1751094 (=> res!787654 e!1120915)))

(assert (=> b!1751094 (= res!787654 (not (is-ElementMatch!4768 (regex!3440 lt!676335))))))

(assert (=> b!1751094 (= e!1120919 e!1120915)))

(declare-fun b!1751095 () Bool)

(declare-fun res!787657 () Bool)

(assert (=> b!1751095 (=> (not res!787657) (not e!1120917))))

(assert (=> b!1751095 (= res!787657 (not call!110373))))

(declare-fun b!1751096 () Bool)

(declare-fun res!787653 () Bool)

(assert (=> b!1751096 (=> (not res!787653) (not e!1120917))))

(assert (=> b!1751096 (= res!787653 (isEmpty!12142 (tail!2614 (list!7801 (charsOf!2089 (_1!10848 lt!676330))))))))

(declare-fun b!1751097 () Bool)

(assert (=> b!1751097 (= e!1120916 e!1120914)))

(declare-fun res!787659 () Bool)

(assert (=> b!1751097 (=> res!787659 e!1120914)))

(assert (=> b!1751097 (= res!787659 call!110373)))

(declare-fun bm!110368 () Bool)

(assert (=> bm!110368 (= call!110373 (isEmpty!12142 (list!7801 (charsOf!2089 (_1!10848 lt!676330)))))))

(declare-fun b!1751098 () Bool)

(assert (=> b!1751098 (= e!1120919 (not lt!676519))))

(declare-fun b!1751099 () Bool)

(declare-fun nullable!1444 (Regex!4768) Bool)

(assert (=> b!1751099 (= e!1120918 (nullable!1444 (regex!3440 lt!676335)))))

(assert (= (and d!534663 c!285492) b!1751099))

(assert (= (and d!534663 (not c!285492)) b!1751091))

(assert (= (and d!534663 c!285493) b!1751093))

(assert (= (and d!534663 (not c!285493)) b!1751088))

(assert (= (and b!1751088 c!285491) b!1751098))

(assert (= (and b!1751088 (not c!285491)) b!1751094))

(assert (= (and b!1751094 (not res!787654)) b!1751092))

(assert (= (and b!1751092 res!787658) b!1751095))

(assert (= (and b!1751095 res!787657) b!1751096))

(assert (= (and b!1751096 res!787653) b!1751090))

(assert (= (and b!1751092 (not res!787660)) b!1751087))

(assert (= (and b!1751087 res!787656) b!1751097))

(assert (= (and b!1751097 (not res!787659)) b!1751089))

(assert (= (and b!1751089 (not res!787655)) b!1751086))

(assert (= (or b!1751093 b!1751095 b!1751097) bm!110368))

(assert (=> bm!110368 m!2164367))

(declare-fun m!2164733 () Bool)

(assert (=> bm!110368 m!2164733))

(assert (=> b!1751096 m!2164367))

(declare-fun m!2164735 () Bool)

(assert (=> b!1751096 m!2164735))

(assert (=> b!1751096 m!2164735))

(declare-fun m!2164737 () Bool)

(assert (=> b!1751096 m!2164737))

(assert (=> b!1751090 m!2164367))

(declare-fun m!2164739 () Bool)

(assert (=> b!1751090 m!2164739))

(assert (=> b!1751086 m!2164367))

(assert (=> b!1751086 m!2164739))

(declare-fun m!2164741 () Bool)

(assert (=> b!1751099 m!2164741))

(assert (=> d!534663 m!2164367))

(assert (=> d!534663 m!2164733))

(declare-fun m!2164743 () Bool)

(assert (=> d!534663 m!2164743))

(assert (=> b!1751091 m!2164367))

(assert (=> b!1751091 m!2164739))

(assert (=> b!1751091 m!2164739))

(declare-fun m!2164745 () Bool)

(assert (=> b!1751091 m!2164745))

(assert (=> b!1751091 m!2164367))

(assert (=> b!1751091 m!2164735))

(assert (=> b!1751091 m!2164745))

(assert (=> b!1751091 m!2164735))

(declare-fun m!2164747 () Bool)

(assert (=> b!1751091 m!2164747))

(assert (=> b!1751089 m!2164367))

(assert (=> b!1751089 m!2164735))

(assert (=> b!1751089 m!2164735))

(assert (=> b!1751089 m!2164737))

(assert (=> b!1750805 d!534663))

(declare-fun d!534665 () Bool)

(declare-fun list!7803 (Conc!6408) List!19334)

(assert (=> d!534665 (= (list!7801 (charsOf!2089 (_1!10848 lt!676330))) (list!7803 (c!285452 (charsOf!2089 (_1!10848 lt!676330)))))))

(declare-fun bs!403499 () Bool)

(assert (= bs!403499 d!534665))

(declare-fun m!2164749 () Bool)

(assert (=> bs!403499 m!2164749))

(assert (=> b!1750805 d!534665))

(declare-fun d!534667 () Bool)

(declare-fun lt!676522 () BalanceConc!12760)

(assert (=> d!534667 (= (list!7801 lt!676522) (originalCharacters!4254 (_1!10848 lt!676330)))))

(assert (=> d!534667 (= lt!676522 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (value!107714 (_1!10848 lt!676330))))))

(assert (=> d!534667 (= (charsOf!2089 (_1!10848 lt!676330)) lt!676522)))

(declare-fun b_lambda!56283 () Bool)

(assert (=> (not b_lambda!56283) (not d!534667)))

(assert (=> d!534667 t!162929))

(declare-fun b_and!131023 () Bool)

(assert (= b_and!131017 (and (=> t!162929 result!126334) b_and!131023)))

(assert (=> d!534667 t!162931))

(declare-fun b_and!131025 () Bool)

(assert (= b_and!131019 (and (=> t!162931 result!126338) b_and!131025)))

(assert (=> d!534667 t!162933))

(declare-fun b_and!131027 () Bool)

(assert (= b_and!131021 (and (=> t!162933 result!126340) b_and!131027)))

(declare-fun m!2164751 () Bool)

(assert (=> d!534667 m!2164751))

(assert (=> d!534667 m!2164467))

(assert (=> b!1750805 d!534667))

(declare-fun d!534669 () Bool)

(assert (=> d!534669 (= (get!5842 lt!676315) (v!25347 lt!676315))))

(assert (=> b!1750805 d!534669))

(declare-fun d!534671 () Bool)

(assert (=> d!534671 (= (list!7801 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338))) (list!7803 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338)))))))

(declare-fun bs!403500 () Bool)

(assert (= bs!403500 d!534671))

(declare-fun m!2164753 () Bool)

(assert (=> bs!403500 m!2164753))

(assert (=> b!1750825 d!534671))

(declare-fun bs!403501 () Bool)

(declare-fun d!534673 () Bool)

(assert (= bs!403501 (and d!534673 b!1750831)))

(declare-fun lambda!69869 () Int)

(assert (=> bs!403501 (= lambda!69869 lambda!69863)))

(declare-fun b!1751104 () Bool)

(declare-fun e!1120923 () Bool)

(assert (=> b!1751104 (= e!1120923 true)))

(assert (=> d!534673 e!1120923))

(assert (= d!534673 b!1751104))

(assert (=> b!1751104 (< (dynLambda!9201 order!12125 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) (dynLambda!9202 order!12127 lambda!69869))))

(assert (=> b!1751104 (< (dynLambda!9203 order!12129 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) (dynLambda!9202 order!12127 lambda!69869))))

(assert (=> d!534673 (= (list!7801 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338))) (list!7801 lt!676338))))

(declare-fun lt!676525 () Unit!33396)

(declare-fun ForallOf!297 (Int BalanceConc!12760) Unit!33396)

(assert (=> d!534673 (= lt!676525 (ForallOf!297 lambda!69869 lt!676338))))

(assert (=> d!534673 (= (lemmaSemiInverse!580 (transformation!3440 (rule!5448 (_1!10848 lt!676330))) lt!676338) lt!676525)))

(declare-fun b_lambda!56285 () Bool)

(assert (=> (not b_lambda!56285) (not d!534673)))

(assert (=> d!534673 t!162935))

(declare-fun b_and!131029 () Bool)

(assert (= b_and!131023 (and (=> t!162935 result!126342) b_and!131029)))

(assert (=> d!534673 t!162937))

(declare-fun b_and!131031 () Bool)

(assert (= b_and!131025 (and (=> t!162937 result!126344) b_and!131031)))

(assert (=> d!534673 t!162939))

(declare-fun b_and!131033 () Bool)

(assert (= b_and!131027 (and (=> t!162939 result!126346) b_and!131033)))

(declare-fun b_lambda!56287 () Bool)

(assert (=> (not b_lambda!56287) (not d!534673)))

(assert (=> d!534673 t!162941))

(declare-fun b_and!131035 () Bool)

(assert (= b_and!130981 (and (=> t!162941 result!126348) b_and!131035)))

(assert (=> d!534673 t!162943))

(declare-fun b_and!131037 () Bool)

(assert (= b_and!130983 (and (=> t!162943 result!126352) b_and!131037)))

(assert (=> d!534673 t!162945))

(declare-fun b_and!131039 () Bool)

(assert (= b_and!130985 (and (=> t!162945 result!126354) b_and!131039)))

(assert (=> d!534673 m!2164379))

(assert (=> d!534673 m!2164381))

(assert (=> d!534673 m!2164377))

(assert (=> d!534673 m!2164379))

(assert (=> d!534673 m!2164377))

(declare-fun m!2164755 () Bool)

(assert (=> d!534673 m!2164755))

(assert (=> d!534673 m!2164343))

(assert (=> b!1750825 d!534673))

(declare-fun b!1751105 () Bool)

(declare-fun e!1120924 () Bool)

(assert (=> b!1751105 (= e!1120924 (not (= (head!4037 lt!676289) (c!285451 (regex!3440 (rule!5448 (_1!10848 lt!676330)))))))))

(declare-fun b!1751106 () Bool)

(declare-fun e!1120925 () Bool)

(declare-fun e!1120926 () Bool)

(assert (=> b!1751106 (= e!1120925 e!1120926)))

(declare-fun res!787664 () Bool)

(assert (=> b!1751106 (=> (not res!787664) (not e!1120926))))

(declare-fun lt!676526 () Bool)

(assert (=> b!1751106 (= res!787664 (not lt!676526))))

(declare-fun b!1751107 () Bool)

(declare-fun e!1120930 () Bool)

(declare-fun e!1120929 () Bool)

(assert (=> b!1751107 (= e!1120930 e!1120929)))

(declare-fun c!285495 () Bool)

(assert (=> b!1751107 (= c!285495 (is-EmptyLang!4768 (regex!3440 (rule!5448 (_1!10848 lt!676330)))))))

(declare-fun b!1751108 () Bool)

(declare-fun res!787663 () Bool)

(assert (=> b!1751108 (=> res!787663 e!1120924)))

(assert (=> b!1751108 (= res!787663 (not (isEmpty!12142 (tail!2614 lt!676289))))))

(declare-fun b!1751109 () Bool)

(declare-fun e!1120927 () Bool)

(assert (=> b!1751109 (= e!1120927 (= (head!4037 lt!676289) (c!285451 (regex!3440 (rule!5448 (_1!10848 lt!676330))))))))

(declare-fun d!534677 () Bool)

(assert (=> d!534677 e!1120930))

(declare-fun c!285497 () Bool)

(assert (=> d!534677 (= c!285497 (is-EmptyExpr!4768 (regex!3440 (rule!5448 (_1!10848 lt!676330)))))))

(declare-fun e!1120928 () Bool)

(assert (=> d!534677 (= lt!676526 e!1120928)))

(declare-fun c!285496 () Bool)

(assert (=> d!534677 (= c!285496 (isEmpty!12142 lt!676289))))

(assert (=> d!534677 (validRegex!1918 (regex!3440 (rule!5448 (_1!10848 lt!676330))))))

(assert (=> d!534677 (= (matchR!2242 (regex!3440 (rule!5448 (_1!10848 lt!676330))) lt!676289) lt!676526)))

(declare-fun b!1751110 () Bool)

(assert (=> b!1751110 (= e!1120928 (matchR!2242 (derivativeStep!1213 (regex!3440 (rule!5448 (_1!10848 lt!676330))) (head!4037 lt!676289)) (tail!2614 lt!676289)))))

(declare-fun b!1751111 () Bool)

(declare-fun res!787668 () Bool)

(assert (=> b!1751111 (=> res!787668 e!1120925)))

(assert (=> b!1751111 (= res!787668 e!1120927)))

(declare-fun res!787666 () Bool)

(assert (=> b!1751111 (=> (not res!787666) (not e!1120927))))

(assert (=> b!1751111 (= res!787666 lt!676526)))

(declare-fun b!1751112 () Bool)

(declare-fun call!110374 () Bool)

(assert (=> b!1751112 (= e!1120930 (= lt!676526 call!110374))))

(declare-fun b!1751113 () Bool)

(declare-fun res!787662 () Bool)

(assert (=> b!1751113 (=> res!787662 e!1120925)))

(assert (=> b!1751113 (= res!787662 (not (is-ElementMatch!4768 (regex!3440 (rule!5448 (_1!10848 lt!676330))))))))

(assert (=> b!1751113 (= e!1120929 e!1120925)))

(declare-fun b!1751114 () Bool)

(declare-fun res!787665 () Bool)

(assert (=> b!1751114 (=> (not res!787665) (not e!1120927))))

(assert (=> b!1751114 (= res!787665 (not call!110374))))

(declare-fun b!1751115 () Bool)

(declare-fun res!787661 () Bool)

(assert (=> b!1751115 (=> (not res!787661) (not e!1120927))))

(assert (=> b!1751115 (= res!787661 (isEmpty!12142 (tail!2614 lt!676289)))))

(declare-fun b!1751116 () Bool)

(assert (=> b!1751116 (= e!1120926 e!1120924)))

(declare-fun res!787667 () Bool)

(assert (=> b!1751116 (=> res!787667 e!1120924)))

(assert (=> b!1751116 (= res!787667 call!110374)))

(declare-fun bm!110369 () Bool)

(assert (=> bm!110369 (= call!110374 (isEmpty!12142 lt!676289))))

(declare-fun b!1751117 () Bool)

(assert (=> b!1751117 (= e!1120929 (not lt!676526))))

(declare-fun b!1751118 () Bool)

(assert (=> b!1751118 (= e!1120928 (nullable!1444 (regex!3440 (rule!5448 (_1!10848 lt!676330)))))))

(assert (= (and d!534677 c!285496) b!1751118))

(assert (= (and d!534677 (not c!285496)) b!1751110))

(assert (= (and d!534677 c!285497) b!1751112))

(assert (= (and d!534677 (not c!285497)) b!1751107))

(assert (= (and b!1751107 c!285495) b!1751117))

(assert (= (and b!1751107 (not c!285495)) b!1751113))

(assert (= (and b!1751113 (not res!787662)) b!1751111))

(assert (= (and b!1751111 res!787666) b!1751114))

(assert (= (and b!1751114 res!787665) b!1751115))

(assert (= (and b!1751115 res!787661) b!1751109))

(assert (= (and b!1751111 (not res!787668)) b!1751106))

(assert (= (and b!1751106 res!787664) b!1751116))

(assert (= (and b!1751116 (not res!787667)) b!1751108))

(assert (= (and b!1751108 (not res!787663)) b!1751105))

(assert (= (or b!1751112 b!1751114 b!1751116) bm!110369))

(declare-fun m!2164757 () Bool)

(assert (=> bm!110369 m!2164757))

(declare-fun m!2164759 () Bool)

(assert (=> b!1751115 m!2164759))

(assert (=> b!1751115 m!2164759))

(declare-fun m!2164761 () Bool)

(assert (=> b!1751115 m!2164761))

(declare-fun m!2164763 () Bool)

(assert (=> b!1751109 m!2164763))

(assert (=> b!1751105 m!2164763))

(declare-fun m!2164765 () Bool)

(assert (=> b!1751118 m!2164765))

(assert (=> d!534677 m!2164757))

(declare-fun m!2164767 () Bool)

(assert (=> d!534677 m!2164767))

(assert (=> b!1751110 m!2164763))

(assert (=> b!1751110 m!2164763))

(declare-fun m!2164769 () Bool)

(assert (=> b!1751110 m!2164769))

(assert (=> b!1751110 m!2164759))

(assert (=> b!1751110 m!2164769))

(assert (=> b!1751110 m!2164759))

(declare-fun m!2164771 () Bool)

(assert (=> b!1751110 m!2164771))

(assert (=> b!1751108 m!2164759))

(assert (=> b!1751108 m!2164759))

(assert (=> b!1751108 m!2164761))

(assert (=> b!1750824 d!534677))

(declare-fun b!1751130 () Bool)

(declare-fun e!1120936 () Int)

(assert (=> b!1751130 (= e!1120936 (- 1))))

(declare-fun b!1751129 () Bool)

(assert (=> b!1751129 (= e!1120936 (+ 1 (getIndex!175 (t!162948 rules!3447) (rule!5448 token!523))))))

(declare-fun b!1751127 () Bool)

(declare-fun e!1120937 () Int)

(assert (=> b!1751127 (= e!1120937 0)))

(declare-fun d!534679 () Bool)

(declare-fun lt!676529 () Int)

(assert (=> d!534679 (>= lt!676529 0)))

(assert (=> d!534679 (= lt!676529 e!1120937)))

(declare-fun c!285503 () Bool)

(assert (=> d!534679 (= c!285503 (and (is-Cons!19265 rules!3447) (= (h!24666 rules!3447) (rule!5448 token!523))))))

(assert (=> d!534679 (contains!3466 rules!3447 (rule!5448 token!523))))

(assert (=> d!534679 (= (getIndex!175 rules!3447 (rule!5448 token!523)) lt!676529)))

(declare-fun b!1751128 () Bool)

(assert (=> b!1751128 (= e!1120937 e!1120936)))

(declare-fun c!285502 () Bool)

(assert (=> b!1751128 (= c!285502 (and (is-Cons!19265 rules!3447) (not (= (h!24666 rules!3447) (rule!5448 token!523)))))))

(assert (= (and d!534679 c!285503) b!1751127))

(assert (= (and d!534679 (not c!285503)) b!1751128))

(assert (= (and b!1751128 c!285502) b!1751129))

(assert (= (and b!1751128 (not c!285502)) b!1751130))

(declare-fun m!2164773 () Bool)

(assert (=> b!1751129 m!2164773))

(declare-fun m!2164775 () Bool)

(assert (=> d!534679 m!2164775))

(assert (=> b!1750803 d!534679))

(declare-fun b!1751134 () Bool)

(declare-fun e!1120938 () Int)

(assert (=> b!1751134 (= e!1120938 (- 1))))

(declare-fun b!1751133 () Bool)

(assert (=> b!1751133 (= e!1120938 (+ 1 (getIndex!175 (t!162948 rules!3447) (rule!5448 (_1!10848 lt!676330)))))))

(declare-fun b!1751131 () Bool)

(declare-fun e!1120939 () Int)

(assert (=> b!1751131 (= e!1120939 0)))

(declare-fun d!534681 () Bool)

(declare-fun lt!676530 () Int)

(assert (=> d!534681 (>= lt!676530 0)))

(assert (=> d!534681 (= lt!676530 e!1120939)))

(declare-fun c!285505 () Bool)

(assert (=> d!534681 (= c!285505 (and (is-Cons!19265 rules!3447) (= (h!24666 rules!3447) (rule!5448 (_1!10848 lt!676330)))))))

(assert (=> d!534681 (contains!3466 rules!3447 (rule!5448 (_1!10848 lt!676330)))))

(assert (=> d!534681 (= (getIndex!175 rules!3447 (rule!5448 (_1!10848 lt!676330))) lt!676530)))

(declare-fun b!1751132 () Bool)

(assert (=> b!1751132 (= e!1120939 e!1120938)))

(declare-fun c!285504 () Bool)

(assert (=> b!1751132 (= c!285504 (and (is-Cons!19265 rules!3447) (not (= (h!24666 rules!3447) (rule!5448 (_1!10848 lt!676330))))))))

(assert (= (and d!534681 c!285505) b!1751131))

(assert (= (and d!534681 (not c!285505)) b!1751132))

(assert (= (and b!1751132 c!285504) b!1751133))

(assert (= (and b!1751132 (not c!285504)) b!1751134))

(declare-fun m!2164777 () Bool)

(assert (=> b!1751133 m!2164777))

(assert (=> d!534681 m!2164709))

(assert (=> b!1750803 d!534681))

(declare-fun d!534683 () Bool)

(assert (=> d!534683 (= (isEmpty!12142 (_2!10848 lt!676306)) (is-Nil!19264 (_2!10848 lt!676306)))))

(assert (=> b!1750829 d!534683))

(declare-fun b!1751135 () Bool)

(declare-fun e!1120940 () Bool)

(assert (=> b!1751135 (= e!1120940 (not (= (head!4037 lt!676289) (c!285451 (regex!3440 (rule!5448 token!523))))))))

(declare-fun b!1751136 () Bool)

(declare-fun e!1120941 () Bool)

(declare-fun e!1120942 () Bool)

(assert (=> b!1751136 (= e!1120941 e!1120942)))

(declare-fun res!787672 () Bool)

(assert (=> b!1751136 (=> (not res!787672) (not e!1120942))))

(declare-fun lt!676531 () Bool)

(assert (=> b!1751136 (= res!787672 (not lt!676531))))

(declare-fun b!1751137 () Bool)

(declare-fun e!1120946 () Bool)

(declare-fun e!1120945 () Bool)

(assert (=> b!1751137 (= e!1120946 e!1120945)))

(declare-fun c!285506 () Bool)

(assert (=> b!1751137 (= c!285506 (is-EmptyLang!4768 (regex!3440 (rule!5448 token!523))))))

(declare-fun b!1751138 () Bool)

(declare-fun res!787671 () Bool)

(assert (=> b!1751138 (=> res!787671 e!1120940)))

(assert (=> b!1751138 (= res!787671 (not (isEmpty!12142 (tail!2614 lt!676289))))))

(declare-fun b!1751139 () Bool)

(declare-fun e!1120943 () Bool)

(assert (=> b!1751139 (= e!1120943 (= (head!4037 lt!676289) (c!285451 (regex!3440 (rule!5448 token!523)))))))

(declare-fun d!534685 () Bool)

(assert (=> d!534685 e!1120946))

(declare-fun c!285508 () Bool)

(assert (=> d!534685 (= c!285508 (is-EmptyExpr!4768 (regex!3440 (rule!5448 token!523))))))

(declare-fun e!1120944 () Bool)

(assert (=> d!534685 (= lt!676531 e!1120944)))

(declare-fun c!285507 () Bool)

(assert (=> d!534685 (= c!285507 (isEmpty!12142 lt!676289))))

(assert (=> d!534685 (validRegex!1918 (regex!3440 (rule!5448 token!523)))))

(assert (=> d!534685 (= (matchR!2242 (regex!3440 (rule!5448 token!523)) lt!676289) lt!676531)))

(declare-fun b!1751140 () Bool)

(assert (=> b!1751140 (= e!1120944 (matchR!2242 (derivativeStep!1213 (regex!3440 (rule!5448 token!523)) (head!4037 lt!676289)) (tail!2614 lt!676289)))))

(declare-fun b!1751141 () Bool)

(declare-fun res!787676 () Bool)

(assert (=> b!1751141 (=> res!787676 e!1120941)))

(assert (=> b!1751141 (= res!787676 e!1120943)))

(declare-fun res!787674 () Bool)

(assert (=> b!1751141 (=> (not res!787674) (not e!1120943))))

(assert (=> b!1751141 (= res!787674 lt!676531)))

(declare-fun b!1751142 () Bool)

(declare-fun call!110375 () Bool)

(assert (=> b!1751142 (= e!1120946 (= lt!676531 call!110375))))

(declare-fun b!1751143 () Bool)

(declare-fun res!787670 () Bool)

(assert (=> b!1751143 (=> res!787670 e!1120941)))

(assert (=> b!1751143 (= res!787670 (not (is-ElementMatch!4768 (regex!3440 (rule!5448 token!523)))))))

(assert (=> b!1751143 (= e!1120945 e!1120941)))

(declare-fun b!1751144 () Bool)

(declare-fun res!787673 () Bool)

(assert (=> b!1751144 (=> (not res!787673) (not e!1120943))))

(assert (=> b!1751144 (= res!787673 (not call!110375))))

(declare-fun b!1751145 () Bool)

(declare-fun res!787669 () Bool)

(assert (=> b!1751145 (=> (not res!787669) (not e!1120943))))

(assert (=> b!1751145 (= res!787669 (isEmpty!12142 (tail!2614 lt!676289)))))

(declare-fun b!1751146 () Bool)

(assert (=> b!1751146 (= e!1120942 e!1120940)))

(declare-fun res!787675 () Bool)

(assert (=> b!1751146 (=> res!787675 e!1120940)))

(assert (=> b!1751146 (= res!787675 call!110375)))

(declare-fun bm!110370 () Bool)

(assert (=> bm!110370 (= call!110375 (isEmpty!12142 lt!676289))))

(declare-fun b!1751147 () Bool)

(assert (=> b!1751147 (= e!1120945 (not lt!676531))))

(declare-fun b!1751148 () Bool)

(assert (=> b!1751148 (= e!1120944 (nullable!1444 (regex!3440 (rule!5448 token!523))))))

(assert (= (and d!534685 c!285507) b!1751148))

(assert (= (and d!534685 (not c!285507)) b!1751140))

(assert (= (and d!534685 c!285508) b!1751142))

(assert (= (and d!534685 (not c!285508)) b!1751137))

(assert (= (and b!1751137 c!285506) b!1751147))

(assert (= (and b!1751137 (not c!285506)) b!1751143))

(assert (= (and b!1751143 (not res!787670)) b!1751141))

(assert (= (and b!1751141 res!787674) b!1751144))

(assert (= (and b!1751144 res!787673) b!1751145))

(assert (= (and b!1751145 res!787669) b!1751139))

(assert (= (and b!1751141 (not res!787676)) b!1751136))

(assert (= (and b!1751136 res!787672) b!1751146))

(assert (= (and b!1751146 (not res!787675)) b!1751138))

(assert (= (and b!1751138 (not res!787671)) b!1751135))

(assert (= (or b!1751142 b!1751144 b!1751146) bm!110370))

(assert (=> bm!110370 m!2164757))

(assert (=> b!1751145 m!2164759))

(assert (=> b!1751145 m!2164759))

(assert (=> b!1751145 m!2164761))

(assert (=> b!1751139 m!2164763))

(assert (=> b!1751135 m!2164763))

(declare-fun m!2164779 () Bool)

(assert (=> b!1751148 m!2164779))

(assert (=> d!534685 m!2164757))

(declare-fun m!2164781 () Bool)

(assert (=> d!534685 m!2164781))

(assert (=> b!1751140 m!2164763))

(assert (=> b!1751140 m!2164763))

(declare-fun m!2164783 () Bool)

(assert (=> b!1751140 m!2164783))

(assert (=> b!1751140 m!2164759))

(assert (=> b!1751140 m!2164783))

(assert (=> b!1751140 m!2164759))

(declare-fun m!2164785 () Bool)

(assert (=> b!1751140 m!2164785))

(assert (=> b!1751138 m!2164759))

(assert (=> b!1751138 m!2164759))

(assert (=> b!1751138 m!2164761))

(assert (=> b!1750828 d!534685))

(declare-fun d!534687 () Bool)

(assert (=> d!534687 (not (matchR!2242 (regex!3440 (rule!5448 token!523)) lt!676289))))

(declare-fun lt!676536 () Unit!33396)

(declare-fun choose!10796 (LexerInterface!3069 List!19335 Rule!6680 List!19334 List!19334 Rule!6680) Unit!33396)

(assert (=> d!534687 (= lt!676536 (choose!10796 thiss!24550 rules!3447 (rule!5448 (_1!10848 lt!676330)) lt!676289 lt!676299 (rule!5448 token!523)))))

(assert (=> d!534687 (isPrefix!1681 lt!676289 lt!676299)))

(assert (=> d!534687 (= (lemmaMaxPrefNoSmallerRuleMatches!145 thiss!24550 rules!3447 (rule!5448 (_1!10848 lt!676330)) lt!676289 lt!676299 (rule!5448 token!523)) lt!676536)))

(declare-fun bs!403502 () Bool)

(assert (= bs!403502 d!534687))

(assert (=> bs!403502 m!2164415))

(declare-fun m!2164787 () Bool)

(assert (=> bs!403502 m!2164787))

(assert (=> bs!403502 m!2164341))

(assert (=> b!1750828 d!534687))

(declare-fun d!534689 () Bool)

(declare-fun c!285517 () Bool)

(assert (=> d!534689 (= c!285517 (isEmpty!12142 lt!676332))))

(declare-fun e!1120963 () Bool)

(assert (=> d!534689 (= (prefixMatch!653 lt!676316 lt!676332) e!1120963)))

(declare-fun b!1751181 () Bool)

(declare-fun lostCause!555 (Regex!4768) Bool)

(assert (=> b!1751181 (= e!1120963 (not (lostCause!555 lt!676316)))))

(declare-fun b!1751182 () Bool)

(assert (=> b!1751182 (= e!1120963 (prefixMatch!653 (derivativeStep!1213 lt!676316 (head!4037 lt!676332)) (tail!2614 lt!676332)))))

(assert (= (and d!534689 c!285517) b!1751181))

(assert (= (and d!534689 (not c!285517)) b!1751182))

(declare-fun m!2164789 () Bool)

(assert (=> d!534689 m!2164789))

(declare-fun m!2164791 () Bool)

(assert (=> b!1751181 m!2164791))

(declare-fun m!2164793 () Bool)

(assert (=> b!1751182 m!2164793))

(assert (=> b!1751182 m!2164793))

(declare-fun m!2164795 () Bool)

(assert (=> b!1751182 m!2164795))

(declare-fun m!2164797 () Bool)

(assert (=> b!1751182 m!2164797))

(assert (=> b!1751182 m!2164795))

(assert (=> b!1751182 m!2164797))

(declare-fun m!2164799 () Bool)

(assert (=> b!1751182 m!2164799))

(assert (=> b!1750807 d!534689))

(declare-fun b!1751194 () Bool)

(declare-fun lt!676539 () List!19334)

(declare-fun e!1120968 () Bool)

(assert (=> b!1751194 (= e!1120968 (or (not (= (Cons!19264 (head!4037 suffix!1421) Nil!19264) Nil!19264)) (= lt!676539 lt!676328)))))

(declare-fun b!1751193 () Bool)

(declare-fun res!787697 () Bool)

(assert (=> b!1751193 (=> (not res!787697) (not e!1120968))))

(assert (=> b!1751193 (= res!787697 (= (size!15309 lt!676539) (+ (size!15309 lt!676328) (size!15309 (Cons!19264 (head!4037 suffix!1421) Nil!19264)))))))

(declare-fun b!1751192 () Bool)

(declare-fun e!1120969 () List!19334)

(assert (=> b!1751192 (= e!1120969 (Cons!19264 (h!24665 lt!676328) (++!5265 (t!162947 lt!676328) (Cons!19264 (head!4037 suffix!1421) Nil!19264))))))

(declare-fun b!1751191 () Bool)

(assert (=> b!1751191 (= e!1120969 (Cons!19264 (head!4037 suffix!1421) Nil!19264))))

(declare-fun d!534691 () Bool)

(assert (=> d!534691 e!1120968))

(declare-fun res!787698 () Bool)

(assert (=> d!534691 (=> (not res!787698) (not e!1120968))))

(declare-fun content!2764 (List!19334) (Set C!9710))

(assert (=> d!534691 (= res!787698 (= (content!2764 lt!676539) (set.union (content!2764 lt!676328) (content!2764 (Cons!19264 (head!4037 suffix!1421) Nil!19264)))))))

(assert (=> d!534691 (= lt!676539 e!1120969)))

(declare-fun c!285520 () Bool)

(assert (=> d!534691 (= c!285520 (is-Nil!19264 lt!676328))))

(assert (=> d!534691 (= (++!5265 lt!676328 (Cons!19264 (head!4037 suffix!1421) Nil!19264)) lt!676539)))

(assert (= (and d!534691 c!285520) b!1751191))

(assert (= (and d!534691 (not c!285520)) b!1751192))

(assert (= (and d!534691 res!787698) b!1751193))

(assert (= (and b!1751193 res!787697) b!1751194))

(declare-fun m!2164801 () Bool)

(assert (=> b!1751193 m!2164801))

(declare-fun m!2164803 () Bool)

(assert (=> b!1751193 m!2164803))

(declare-fun m!2164805 () Bool)

(assert (=> b!1751193 m!2164805))

(declare-fun m!2164807 () Bool)

(assert (=> b!1751192 m!2164807))

(declare-fun m!2164809 () Bool)

(assert (=> d!534691 m!2164809))

(declare-fun m!2164811 () Bool)

(assert (=> d!534691 m!2164811))

(declare-fun m!2164813 () Bool)

(assert (=> d!534691 m!2164813))

(assert (=> b!1750807 d!534691))

(declare-fun d!534693 () Bool)

(assert (=> d!534693 (= (head!4037 suffix!1421) (h!24665 suffix!1421))))

(assert (=> b!1750807 d!534693))

(declare-fun d!534695 () Bool)

(declare-fun lt!676543 () Unit!33396)

(declare-fun lemma!368 (List!19335 LexerInterface!3069 List!19335) Unit!33396)

(assert (=> d!534695 (= lt!676543 (lemma!368 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69872 () Int)

(declare-datatypes ((List!19340 0))(
  ( (Nil!19270) (Cons!19270 (h!24671 Regex!4768) (t!163019 List!19340)) )
))
(declare-fun generalisedUnion!376 (List!19340) Regex!4768)

(declare-fun map!3968 (List!19335 Int) List!19340)

(assert (=> d!534695 (= (rulesRegex!798 thiss!24550 rules!3447) (generalisedUnion!376 (map!3968 rules!3447 lambda!69872)))))

(declare-fun bs!403503 () Bool)

(assert (= bs!403503 d!534695))

(declare-fun m!2164815 () Bool)

(assert (=> bs!403503 m!2164815))

(declare-fun m!2164817 () Bool)

(assert (=> bs!403503 m!2164817))

(assert (=> bs!403503 m!2164817))

(declare-fun m!2164819 () Bool)

(assert (=> bs!403503 m!2164819))

(assert (=> b!1750807 d!534695))

(declare-fun d!534697 () Bool)

(assert (=> d!534697 (= (isEmpty!12142 suffix!1421) (is-Nil!19264 suffix!1421))))

(assert (=> b!1750821 d!534697))

(declare-fun e!1120977 () Bool)

(declare-fun lt!676544 () List!19334)

(declare-fun b!1751212 () Bool)

(assert (=> b!1751212 (= e!1120977 (or (not (= (Cons!19264 (head!4037 lt!676314) Nil!19264) Nil!19264)) (= lt!676544 lt!676328)))))

(declare-fun b!1751211 () Bool)

(declare-fun res!787707 () Bool)

(assert (=> b!1751211 (=> (not res!787707) (not e!1120977))))

(assert (=> b!1751211 (= res!787707 (= (size!15309 lt!676544) (+ (size!15309 lt!676328) (size!15309 (Cons!19264 (head!4037 lt!676314) Nil!19264)))))))

(declare-fun b!1751210 () Bool)

(declare-fun e!1120978 () List!19334)

(assert (=> b!1751210 (= e!1120978 (Cons!19264 (h!24665 lt!676328) (++!5265 (t!162947 lt!676328) (Cons!19264 (head!4037 lt!676314) Nil!19264))))))

(declare-fun b!1751209 () Bool)

(assert (=> b!1751209 (= e!1120978 (Cons!19264 (head!4037 lt!676314) Nil!19264))))

(declare-fun d!534699 () Bool)

(assert (=> d!534699 e!1120977))

(declare-fun res!787708 () Bool)

(assert (=> d!534699 (=> (not res!787708) (not e!1120977))))

(assert (=> d!534699 (= res!787708 (= (content!2764 lt!676544) (set.union (content!2764 lt!676328) (content!2764 (Cons!19264 (head!4037 lt!676314) Nil!19264)))))))

(assert (=> d!534699 (= lt!676544 e!1120978)))

(declare-fun c!285524 () Bool)

(assert (=> d!534699 (= c!285524 (is-Nil!19264 lt!676328))))

(assert (=> d!534699 (= (++!5265 lt!676328 (Cons!19264 (head!4037 lt!676314) Nil!19264)) lt!676544)))

(assert (= (and d!534699 c!285524) b!1751209))

(assert (= (and d!534699 (not c!285524)) b!1751210))

(assert (= (and d!534699 res!787708) b!1751211))

(assert (= (and b!1751211 res!787707) b!1751212))

(declare-fun m!2164821 () Bool)

(assert (=> b!1751211 m!2164821))

(assert (=> b!1751211 m!2164803))

(declare-fun m!2164823 () Bool)

(assert (=> b!1751211 m!2164823))

(declare-fun m!2164825 () Bool)

(assert (=> b!1751210 m!2164825))

(declare-fun m!2164827 () Bool)

(assert (=> d!534699 m!2164827))

(assert (=> d!534699 m!2164811))

(declare-fun m!2164829 () Bool)

(assert (=> d!534699 m!2164829))

(assert (=> b!1750798 d!534699))

(declare-fun b!1751213 () Bool)

(declare-fun e!1120979 () Bool)

(assert (=> b!1751213 (= e!1120979 (not (= (head!4037 lt!676289) (c!285451 lt!676316))))))

(declare-fun b!1751214 () Bool)

(declare-fun e!1120980 () Bool)

(declare-fun e!1120981 () Bool)

(assert (=> b!1751214 (= e!1120980 e!1120981)))

(declare-fun res!787712 () Bool)

(assert (=> b!1751214 (=> (not res!787712) (not e!1120981))))

(declare-fun lt!676545 () Bool)

(assert (=> b!1751214 (= res!787712 (not lt!676545))))

(declare-fun b!1751215 () Bool)

(declare-fun e!1120985 () Bool)

(declare-fun e!1120984 () Bool)

(assert (=> b!1751215 (= e!1120985 e!1120984)))

(declare-fun c!285525 () Bool)

(assert (=> b!1751215 (= c!285525 (is-EmptyLang!4768 lt!676316))))

(declare-fun b!1751216 () Bool)

(declare-fun res!787711 () Bool)

(assert (=> b!1751216 (=> res!787711 e!1120979)))

(assert (=> b!1751216 (= res!787711 (not (isEmpty!12142 (tail!2614 lt!676289))))))

(declare-fun b!1751217 () Bool)

(declare-fun e!1120982 () Bool)

(assert (=> b!1751217 (= e!1120982 (= (head!4037 lt!676289) (c!285451 lt!676316)))))

(declare-fun d!534701 () Bool)

(assert (=> d!534701 e!1120985))

(declare-fun c!285527 () Bool)

(assert (=> d!534701 (= c!285527 (is-EmptyExpr!4768 lt!676316))))

(declare-fun e!1120983 () Bool)

(assert (=> d!534701 (= lt!676545 e!1120983)))

(declare-fun c!285526 () Bool)

(assert (=> d!534701 (= c!285526 (isEmpty!12142 lt!676289))))

(assert (=> d!534701 (validRegex!1918 lt!676316)))

(assert (=> d!534701 (= (matchR!2242 lt!676316 lt!676289) lt!676545)))

(declare-fun b!1751218 () Bool)

(assert (=> b!1751218 (= e!1120983 (matchR!2242 (derivativeStep!1213 lt!676316 (head!4037 lt!676289)) (tail!2614 lt!676289)))))

(declare-fun b!1751219 () Bool)

(declare-fun res!787716 () Bool)

(assert (=> b!1751219 (=> res!787716 e!1120980)))

(assert (=> b!1751219 (= res!787716 e!1120982)))

(declare-fun res!787714 () Bool)

(assert (=> b!1751219 (=> (not res!787714) (not e!1120982))))

(assert (=> b!1751219 (= res!787714 lt!676545)))

(declare-fun b!1751220 () Bool)

(declare-fun call!110379 () Bool)

(assert (=> b!1751220 (= e!1120985 (= lt!676545 call!110379))))

(declare-fun b!1751221 () Bool)

(declare-fun res!787710 () Bool)

(assert (=> b!1751221 (=> res!787710 e!1120980)))

(assert (=> b!1751221 (= res!787710 (not (is-ElementMatch!4768 lt!676316)))))

(assert (=> b!1751221 (= e!1120984 e!1120980)))

(declare-fun b!1751222 () Bool)

(declare-fun res!787713 () Bool)

(assert (=> b!1751222 (=> (not res!787713) (not e!1120982))))

(assert (=> b!1751222 (= res!787713 (not call!110379))))

(declare-fun b!1751223 () Bool)

(declare-fun res!787709 () Bool)

(assert (=> b!1751223 (=> (not res!787709) (not e!1120982))))

(assert (=> b!1751223 (= res!787709 (isEmpty!12142 (tail!2614 lt!676289)))))

(declare-fun b!1751224 () Bool)

(assert (=> b!1751224 (= e!1120981 e!1120979)))

(declare-fun res!787715 () Bool)

(assert (=> b!1751224 (=> res!787715 e!1120979)))

(assert (=> b!1751224 (= res!787715 call!110379)))

(declare-fun bm!110374 () Bool)

(assert (=> bm!110374 (= call!110379 (isEmpty!12142 lt!676289))))

(declare-fun b!1751225 () Bool)

(assert (=> b!1751225 (= e!1120984 (not lt!676545))))

(declare-fun b!1751226 () Bool)

(assert (=> b!1751226 (= e!1120983 (nullable!1444 lt!676316))))

(assert (= (and d!534701 c!285526) b!1751226))

(assert (= (and d!534701 (not c!285526)) b!1751218))

(assert (= (and d!534701 c!285527) b!1751220))

(assert (= (and d!534701 (not c!285527)) b!1751215))

(assert (= (and b!1751215 c!285525) b!1751225))

(assert (= (and b!1751215 (not c!285525)) b!1751221))

(assert (= (and b!1751221 (not res!787710)) b!1751219))

(assert (= (and b!1751219 res!787714) b!1751222))

(assert (= (and b!1751222 res!787713) b!1751223))

(assert (= (and b!1751223 res!787709) b!1751217))

(assert (= (and b!1751219 (not res!787716)) b!1751214))

(assert (= (and b!1751214 res!787712) b!1751224))

(assert (= (and b!1751224 (not res!787715)) b!1751216))

(assert (= (and b!1751216 (not res!787711)) b!1751213))

(assert (= (or b!1751220 b!1751222 b!1751224) bm!110374))

(assert (=> bm!110374 m!2164757))

(assert (=> b!1751223 m!2164759))

(assert (=> b!1751223 m!2164759))

(assert (=> b!1751223 m!2164761))

(assert (=> b!1751217 m!2164763))

(assert (=> b!1751213 m!2164763))

(declare-fun m!2164841 () Bool)

(assert (=> b!1751226 m!2164841))

(assert (=> d!534701 m!2164757))

(declare-fun m!2164845 () Bool)

(assert (=> d!534701 m!2164845))

(assert (=> b!1751218 m!2164763))

(assert (=> b!1751218 m!2164763))

(declare-fun m!2164847 () Bool)

(assert (=> b!1751218 m!2164847))

(assert (=> b!1751218 m!2164759))

(assert (=> b!1751218 m!2164847))

(assert (=> b!1751218 m!2164759))

(declare-fun m!2164849 () Bool)

(assert (=> b!1751218 m!2164849))

(assert (=> b!1751216 m!2164759))

(assert (=> b!1751216 m!2164759))

(assert (=> b!1751216 m!2164761))

(assert (=> b!1750798 d!534701))

(declare-fun d!534703 () Bool)

(assert (=> d!534703 (matchR!2242 (rulesRegex!798 thiss!24550 rules!3447) (list!7801 (charsOf!2089 (_1!10848 lt!676330))))))

(declare-fun lt!676549 () Unit!33396)

(declare-fun choose!10797 (LexerInterface!3069 List!19335 List!19334 Token!6446 Rule!6680 List!19334) Unit!33396)

(assert (=> d!534703 (= lt!676549 (choose!10797 thiss!24550 rules!3447 lt!676299 (_1!10848 lt!676330) (rule!5448 (_1!10848 lt!676330)) (_2!10848 lt!676330)))))

(assert (=> d!534703 (not (isEmpty!12141 rules!3447))))

(assert (=> d!534703 (= (lemmaMaxPrefixThenMatchesRulesRegex!171 thiss!24550 rules!3447 lt!676299 (_1!10848 lt!676330) (rule!5448 (_1!10848 lt!676330)) (_2!10848 lt!676330)) lt!676549)))

(declare-fun bs!403504 () Bool)

(assert (= bs!403504 d!534703))

(assert (=> bs!403504 m!2164425))

(assert (=> bs!403504 m!2164367))

(declare-fun m!2164871 () Bool)

(assert (=> bs!403504 m!2164871))

(assert (=> bs!403504 m!2164469))

(assert (=> bs!403504 m!2164425))

(assert (=> bs!403504 m!2164337))

(assert (=> bs!403504 m!2164367))

(assert (=> bs!403504 m!2164337))

(declare-fun m!2164873 () Bool)

(assert (=> bs!403504 m!2164873))

(assert (=> b!1750798 d!534703))

(declare-fun d!534709 () Bool)

(assert (=> d!534709 (isPrefix!1681 lt!676332 lt!676289)))

(declare-fun lt!676552 () Unit!33396)

(declare-fun choose!10798 (List!19334 List!19334 List!19334) Unit!33396)

(assert (=> d!534709 (= lt!676552 (choose!10798 lt!676289 lt!676332 lt!676299))))

(assert (=> d!534709 (isPrefix!1681 lt!676289 lt!676299)))

(assert (=> d!534709 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!132 lt!676289 lt!676332 lt!676299) lt!676552)))

(declare-fun bs!403505 () Bool)

(assert (= bs!403505 d!534709))

(assert (=> bs!403505 m!2164475))

(declare-fun m!2164875 () Bool)

(assert (=> bs!403505 m!2164875))

(assert (=> bs!403505 m!2164341))

(assert (=> b!1750798 d!534709))

(declare-fun d!534711 () Bool)

(assert (=> d!534711 (not (matchR!2242 lt!676316 lt!676289))))

(declare-fun lt!676555 () Unit!33396)

(declare-fun choose!10799 (Regex!4768 List!19334 List!19334) Unit!33396)

(assert (=> d!534711 (= lt!676555 (choose!10799 lt!676316 lt!676332 lt!676289))))

(assert (=> d!534711 (validRegex!1918 lt!676316)))

(assert (=> d!534711 (= (lemmaNotPrefixMatchThenCannotMatchLonger!125 lt!676316 lt!676332 lt!676289) lt!676555)))

(declare-fun bs!403506 () Bool)

(assert (= bs!403506 d!534711))

(assert (=> bs!403506 m!2164489))

(declare-fun m!2164877 () Bool)

(assert (=> bs!403506 m!2164877))

(assert (=> bs!403506 m!2164845))

(assert (=> b!1750798 d!534711))

(declare-fun d!534715 () Bool)

(assert (=> d!534715 (= (head!4037 lt!676314) (h!24665 lt!676314))))

(assert (=> b!1750798 d!534715))

(declare-fun d!534717 () Bool)

(assert (=> d!534717 (= suffix!1421 lt!676314)))

(declare-fun lt!676556 () Unit!33396)

(assert (=> d!534717 (= lt!676556 (choose!10794 lt!676328 suffix!1421 lt!676328 lt!676314 lt!676299))))

(assert (=> d!534717 (isPrefix!1681 lt!676328 lt!676299)))

(assert (=> d!534717 (= (lemmaSamePrefixThenSameSuffix!811 lt!676328 suffix!1421 lt!676328 lt!676314 lt!676299) lt!676556)))

(declare-fun bs!403507 () Bool)

(assert (= bs!403507 d!534717))

(declare-fun m!2164879 () Bool)

(assert (=> bs!403507 m!2164879))

(assert (=> bs!403507 m!2164347))

(assert (=> b!1750798 d!534717))

(declare-fun d!534719 () Bool)

(assert (=> d!534719 (isPrefix!1681 (++!5265 lt!676328 (Cons!19264 (head!4037 (getSuffix!861 lt!676299 lt!676328)) Nil!19264)) lt!676299)))

(declare-fun lt!676562 () Unit!33396)

(declare-fun choose!10800 (List!19334 List!19334) Unit!33396)

(assert (=> d!534719 (= lt!676562 (choose!10800 lt!676328 lt!676299))))

(assert (=> d!534719 (isPrefix!1681 lt!676328 lt!676299)))

(assert (=> d!534719 (= (lemmaAddHeadSuffixToPrefixStillPrefix!256 lt!676328 lt!676299) lt!676562)))

(declare-fun bs!403509 () Bool)

(assert (= bs!403509 d!534719))

(assert (=> bs!403509 m!2164347))

(assert (=> bs!403509 m!2164479))

(declare-fun m!2164883 () Bool)

(assert (=> bs!403509 m!2164883))

(assert (=> bs!403509 m!2164479))

(declare-fun m!2164885 () Bool)

(assert (=> bs!403509 m!2164885))

(declare-fun m!2164887 () Bool)

(assert (=> bs!403509 m!2164887))

(assert (=> bs!403509 m!2164887))

(declare-fun m!2164889 () Bool)

(assert (=> bs!403509 m!2164889))

(assert (=> b!1750798 d!534719))

(declare-fun b!1751256 () Bool)

(declare-fun res!787741 () Bool)

(declare-fun e!1121004 () Bool)

(assert (=> b!1751256 (=> (not res!787741) (not e!1121004))))

(assert (=> b!1751256 (= res!787741 (= (head!4037 (++!5265 lt!676328 (Cons!19264 (head!4037 lt!676314) Nil!19264))) (head!4037 lt!676299)))))

(declare-fun b!1751255 () Bool)

(declare-fun e!1121002 () Bool)

(assert (=> b!1751255 (= e!1121002 e!1121004)))

(declare-fun res!787742 () Bool)

(assert (=> b!1751255 (=> (not res!787742) (not e!1121004))))

(assert (=> b!1751255 (= res!787742 (not (is-Nil!19264 lt!676299)))))

(declare-fun b!1751257 () Bool)

(assert (=> b!1751257 (= e!1121004 (isPrefix!1681 (tail!2614 (++!5265 lt!676328 (Cons!19264 (head!4037 lt!676314) Nil!19264))) (tail!2614 lt!676299)))))

(declare-fun d!534723 () Bool)

(declare-fun e!1121003 () Bool)

(assert (=> d!534723 e!1121003))

(declare-fun res!787739 () Bool)

(assert (=> d!534723 (=> res!787739 e!1121003)))

(declare-fun lt!676565 () Bool)

(assert (=> d!534723 (= res!787739 (not lt!676565))))

(assert (=> d!534723 (= lt!676565 e!1121002)))

(declare-fun res!787740 () Bool)

(assert (=> d!534723 (=> res!787740 e!1121002)))

(assert (=> d!534723 (= res!787740 (is-Nil!19264 (++!5265 lt!676328 (Cons!19264 (head!4037 lt!676314) Nil!19264))))))

(assert (=> d!534723 (= (isPrefix!1681 (++!5265 lt!676328 (Cons!19264 (head!4037 lt!676314) Nil!19264)) lt!676299) lt!676565)))

(declare-fun b!1751258 () Bool)

(assert (=> b!1751258 (= e!1121003 (>= (size!15309 lt!676299) (size!15309 (++!5265 lt!676328 (Cons!19264 (head!4037 lt!676314) Nil!19264)))))))

(assert (= (and d!534723 (not res!787740)) b!1751255))

(assert (= (and b!1751255 res!787742) b!1751256))

(assert (= (and b!1751256 res!787741) b!1751257))

(assert (= (and d!534723 (not res!787739)) b!1751258))

(assert (=> b!1751256 m!2164471))

(declare-fun m!2164895 () Bool)

(assert (=> b!1751256 m!2164895))

(declare-fun m!2164897 () Bool)

(assert (=> b!1751256 m!2164897))

(assert (=> b!1751257 m!2164471))

(declare-fun m!2164899 () Bool)

(assert (=> b!1751257 m!2164899))

(declare-fun m!2164901 () Bool)

(assert (=> b!1751257 m!2164901))

(assert (=> b!1751257 m!2164899))

(assert (=> b!1751257 m!2164901))

(declare-fun m!2164903 () Bool)

(assert (=> b!1751257 m!2164903))

(declare-fun m!2164905 () Bool)

(assert (=> b!1751258 m!2164905))

(assert (=> b!1751258 m!2164471))

(declare-fun m!2164907 () Bool)

(assert (=> b!1751258 m!2164907))

(assert (=> b!1750798 d!534723))

(declare-fun d!534729 () Bool)

(declare-fun lt!676568 () List!19334)

(assert (=> d!534729 (= (++!5265 lt!676328 lt!676568) lt!676299)))

(declare-fun e!1121007 () List!19334)

(assert (=> d!534729 (= lt!676568 e!1121007)))

(declare-fun c!285533 () Bool)

(assert (=> d!534729 (= c!285533 (is-Cons!19264 lt!676328))))

(assert (=> d!534729 (>= (size!15309 lt!676299) (size!15309 lt!676328))))

(assert (=> d!534729 (= (getSuffix!861 lt!676299 lt!676328) lt!676568)))

(declare-fun b!1751263 () Bool)

(assert (=> b!1751263 (= e!1121007 (getSuffix!861 (tail!2614 lt!676299) (t!162947 lt!676328)))))

(declare-fun b!1751264 () Bool)

(assert (=> b!1751264 (= e!1121007 lt!676299)))

(assert (= (and d!534729 c!285533) b!1751263))

(assert (= (and d!534729 (not c!285533)) b!1751264))

(declare-fun m!2164909 () Bool)

(assert (=> d!534729 m!2164909))

(assert (=> d!534729 m!2164905))

(assert (=> d!534729 m!2164803))

(assert (=> b!1751263 m!2164901))

(assert (=> b!1751263 m!2164901))

(declare-fun m!2164911 () Bool)

(assert (=> b!1751263 m!2164911))

(assert (=> b!1750798 d!534729))

(declare-fun b!1751266 () Bool)

(declare-fun res!787745 () Bool)

(declare-fun e!1121010 () Bool)

(assert (=> b!1751266 (=> (not res!787745) (not e!1121010))))

(assert (=> b!1751266 (= res!787745 (= (head!4037 lt!676332) (head!4037 lt!676289)))))

(declare-fun b!1751265 () Bool)

(declare-fun e!1121008 () Bool)

(assert (=> b!1751265 (= e!1121008 e!1121010)))

(declare-fun res!787746 () Bool)

(assert (=> b!1751265 (=> (not res!787746) (not e!1121010))))

(assert (=> b!1751265 (= res!787746 (not (is-Nil!19264 lt!676289)))))

(declare-fun b!1751267 () Bool)

(assert (=> b!1751267 (= e!1121010 (isPrefix!1681 (tail!2614 lt!676332) (tail!2614 lt!676289)))))

(declare-fun d!534731 () Bool)

(declare-fun e!1121009 () Bool)

(assert (=> d!534731 e!1121009))

(declare-fun res!787743 () Bool)

(assert (=> d!534731 (=> res!787743 e!1121009)))

(declare-fun lt!676569 () Bool)

(assert (=> d!534731 (= res!787743 (not lt!676569))))

(assert (=> d!534731 (= lt!676569 e!1121008)))

(declare-fun res!787744 () Bool)

(assert (=> d!534731 (=> res!787744 e!1121008)))

(assert (=> d!534731 (= res!787744 (is-Nil!19264 lt!676332))))

(assert (=> d!534731 (= (isPrefix!1681 lt!676332 lt!676289) lt!676569)))

(declare-fun b!1751268 () Bool)

(assert (=> b!1751268 (= e!1121009 (>= (size!15309 lt!676289) (size!15309 lt!676332)))))

(assert (= (and d!534731 (not res!787744)) b!1751265))

(assert (= (and b!1751265 res!787746) b!1751266))

(assert (= (and b!1751266 res!787745) b!1751267))

(assert (= (and d!534731 (not res!787743)) b!1751268))

(assert (=> b!1751266 m!2164793))

(assert (=> b!1751266 m!2164763))

(assert (=> b!1751267 m!2164797))

(assert (=> b!1751267 m!2164759))

(assert (=> b!1751267 m!2164797))

(assert (=> b!1751267 m!2164759))

(declare-fun m!2164913 () Bool)

(assert (=> b!1751267 m!2164913))

(assert (=> b!1751268 m!2164449))

(declare-fun m!2164915 () Bool)

(assert (=> b!1751268 m!2164915))

(assert (=> b!1750798 d!534731))

(declare-fun d!534733 () Bool)

(assert (=> d!534733 (= (get!5843 lt!676321) (v!25346 lt!676321))))

(assert (=> b!1750819 d!534733))

(declare-fun d!534735 () Bool)

(declare-fun c!285534 () Bool)

(assert (=> d!534735 (= c!285534 (is-Node!6408 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338)))))))

(declare-fun e!1121011 () Bool)

(assert (=> d!534735 (= (inv!25000 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338)))) e!1121011)))

(declare-fun b!1751269 () Bool)

(assert (=> b!1751269 (= e!1121011 (inv!25006 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338)))))))

(declare-fun b!1751270 () Bool)

(declare-fun e!1121012 () Bool)

(assert (=> b!1751270 (= e!1121011 e!1121012)))

(declare-fun res!787747 () Bool)

(assert (=> b!1751270 (= res!787747 (not (is-Leaf!9349 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338))))))))

(assert (=> b!1751270 (=> res!787747 e!1121012)))

(declare-fun b!1751271 () Bool)

(assert (=> b!1751271 (= e!1121012 (inv!25007 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338)))))))

(assert (= (and d!534735 c!285534) b!1751269))

(assert (= (and d!534735 (not c!285534)) b!1751270))

(assert (= (and b!1751270 (not res!787747)) b!1751271))

(declare-fun m!2164917 () Bool)

(assert (=> b!1751269 m!2164917))

(declare-fun m!2164919 () Bool)

(assert (=> b!1751271 m!2164919))

(assert (=> b!1750856 d!534735))

(declare-fun b!1751272 () Bool)

(declare-fun e!1121013 () Bool)

(assert (=> b!1751272 (= e!1121013 (not (= (head!4037 lt!676328) (c!285451 (regex!3440 rule!422)))))))

(declare-fun b!1751273 () Bool)

(declare-fun e!1121014 () Bool)

(declare-fun e!1121015 () Bool)

(assert (=> b!1751273 (= e!1121014 e!1121015)))

(declare-fun res!787751 () Bool)

(assert (=> b!1751273 (=> (not res!787751) (not e!1121015))))

(declare-fun lt!676570 () Bool)

(assert (=> b!1751273 (= res!787751 (not lt!676570))))

(declare-fun b!1751274 () Bool)

(declare-fun e!1121019 () Bool)

(declare-fun e!1121018 () Bool)

(assert (=> b!1751274 (= e!1121019 e!1121018)))

(declare-fun c!285535 () Bool)

(assert (=> b!1751274 (= c!285535 (is-EmptyLang!4768 (regex!3440 rule!422)))))

(declare-fun b!1751275 () Bool)

(declare-fun res!787750 () Bool)

(assert (=> b!1751275 (=> res!787750 e!1121013)))

(assert (=> b!1751275 (= res!787750 (not (isEmpty!12142 (tail!2614 lt!676328))))))

(declare-fun b!1751276 () Bool)

(declare-fun e!1121016 () Bool)

(assert (=> b!1751276 (= e!1121016 (= (head!4037 lt!676328) (c!285451 (regex!3440 rule!422))))))

(declare-fun d!534737 () Bool)

(assert (=> d!534737 e!1121019))

(declare-fun c!285537 () Bool)

(assert (=> d!534737 (= c!285537 (is-EmptyExpr!4768 (regex!3440 rule!422)))))

(declare-fun e!1121017 () Bool)

(assert (=> d!534737 (= lt!676570 e!1121017)))

(declare-fun c!285536 () Bool)

(assert (=> d!534737 (= c!285536 (isEmpty!12142 lt!676328))))

(assert (=> d!534737 (validRegex!1918 (regex!3440 rule!422))))

(assert (=> d!534737 (= (matchR!2242 (regex!3440 rule!422) lt!676328) lt!676570)))

(declare-fun b!1751277 () Bool)

(assert (=> b!1751277 (= e!1121017 (matchR!2242 (derivativeStep!1213 (regex!3440 rule!422) (head!4037 lt!676328)) (tail!2614 lt!676328)))))

(declare-fun b!1751278 () Bool)

(declare-fun res!787755 () Bool)

(assert (=> b!1751278 (=> res!787755 e!1121014)))

(assert (=> b!1751278 (= res!787755 e!1121016)))

(declare-fun res!787753 () Bool)

(assert (=> b!1751278 (=> (not res!787753) (not e!1121016))))

(assert (=> b!1751278 (= res!787753 lt!676570)))

(declare-fun b!1751279 () Bool)

(declare-fun call!110381 () Bool)

(assert (=> b!1751279 (= e!1121019 (= lt!676570 call!110381))))

(declare-fun b!1751280 () Bool)

(declare-fun res!787749 () Bool)

(assert (=> b!1751280 (=> res!787749 e!1121014)))

(assert (=> b!1751280 (= res!787749 (not (is-ElementMatch!4768 (regex!3440 rule!422))))))

(assert (=> b!1751280 (= e!1121018 e!1121014)))

(declare-fun b!1751281 () Bool)

(declare-fun res!787752 () Bool)

(assert (=> b!1751281 (=> (not res!787752) (not e!1121016))))

(assert (=> b!1751281 (= res!787752 (not call!110381))))

(declare-fun b!1751282 () Bool)

(declare-fun res!787748 () Bool)

(assert (=> b!1751282 (=> (not res!787748) (not e!1121016))))

(assert (=> b!1751282 (= res!787748 (isEmpty!12142 (tail!2614 lt!676328)))))

(declare-fun b!1751283 () Bool)

(assert (=> b!1751283 (= e!1121015 e!1121013)))

(declare-fun res!787754 () Bool)

(assert (=> b!1751283 (=> res!787754 e!1121013)))

(assert (=> b!1751283 (= res!787754 call!110381)))

(declare-fun bm!110376 () Bool)

(assert (=> bm!110376 (= call!110381 (isEmpty!12142 lt!676328))))

(declare-fun b!1751284 () Bool)

(assert (=> b!1751284 (= e!1121018 (not lt!676570))))

(declare-fun b!1751285 () Bool)

(assert (=> b!1751285 (= e!1121017 (nullable!1444 (regex!3440 rule!422)))))

(assert (= (and d!534737 c!285536) b!1751285))

(assert (= (and d!534737 (not c!285536)) b!1751277))

(assert (= (and d!534737 c!285537) b!1751279))

(assert (= (and d!534737 (not c!285537)) b!1751274))

(assert (= (and b!1751274 c!285535) b!1751284))

(assert (= (and b!1751274 (not c!285535)) b!1751280))

(assert (= (and b!1751280 (not res!787749)) b!1751278))

(assert (= (and b!1751278 res!787753) b!1751281))

(assert (= (and b!1751281 res!787752) b!1751282))

(assert (= (and b!1751282 res!787748) b!1751276))

(assert (= (and b!1751278 (not res!787755)) b!1751273))

(assert (= (and b!1751273 res!787751) b!1751283))

(assert (= (and b!1751283 (not res!787754)) b!1751275))

(assert (= (and b!1751275 (not res!787750)) b!1751272))

(assert (= (or b!1751279 b!1751281 b!1751283) bm!110376))

(declare-fun m!2164921 () Bool)

(assert (=> bm!110376 m!2164921))

(declare-fun m!2164923 () Bool)

(assert (=> b!1751282 m!2164923))

(assert (=> b!1751282 m!2164923))

(declare-fun m!2164925 () Bool)

(assert (=> b!1751282 m!2164925))

(declare-fun m!2164927 () Bool)

(assert (=> b!1751276 m!2164927))

(assert (=> b!1751272 m!2164927))

(declare-fun m!2164929 () Bool)

(assert (=> b!1751285 m!2164929))

(assert (=> d!534737 m!2164921))

(declare-fun m!2164931 () Bool)

(assert (=> d!534737 m!2164931))

(assert (=> b!1751277 m!2164927))

(assert (=> b!1751277 m!2164927))

(declare-fun m!2164933 () Bool)

(assert (=> b!1751277 m!2164933))

(assert (=> b!1751277 m!2164923))

(assert (=> b!1751277 m!2164933))

(assert (=> b!1751277 m!2164923))

(declare-fun m!2164935 () Bool)

(assert (=> b!1751277 m!2164935))

(assert (=> b!1751275 m!2164923))

(assert (=> b!1751275 m!2164923))

(assert (=> b!1751275 m!2164925))

(assert (=> b!1750823 d!534737))

(declare-fun d!534739 () Bool)

(declare-fun res!787760 () Bool)

(declare-fun e!1121022 () Bool)

(assert (=> d!534739 (=> (not res!787760) (not e!1121022))))

(assert (=> d!534739 (= res!787760 (validRegex!1918 (regex!3440 rule!422)))))

(assert (=> d!534739 (= (ruleValid!939 thiss!24550 rule!422) e!1121022)))

(declare-fun b!1751290 () Bool)

(declare-fun res!787761 () Bool)

(assert (=> b!1751290 (=> (not res!787761) (not e!1121022))))

(assert (=> b!1751290 (= res!787761 (not (nullable!1444 (regex!3440 rule!422))))))

(declare-fun b!1751291 () Bool)

(assert (=> b!1751291 (= e!1121022 (not (= (tag!3790 rule!422) (String!21985 ""))))))

(assert (= (and d!534739 res!787760) b!1751290))

(assert (= (and b!1751290 res!787761) b!1751291))

(assert (=> d!534739 m!2164931))

(assert (=> b!1751290 m!2164929))

(assert (=> b!1750823 d!534739))

(declare-fun d!534741 () Bool)

(assert (=> d!534741 (ruleValid!939 thiss!24550 rule!422)))

(declare-fun lt!676573 () Unit!33396)

(declare-fun choose!10802 (LexerInterface!3069 Rule!6680 List!19335) Unit!33396)

(assert (=> d!534741 (= lt!676573 (choose!10802 thiss!24550 rule!422 rules!3447))))

(assert (=> d!534741 (contains!3466 rules!3447 rule!422)))

(assert (=> d!534741 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!463 thiss!24550 rule!422 rules!3447) lt!676573)))

(declare-fun bs!403512 () Bool)

(assert (= bs!403512 d!534741))

(assert (=> bs!403512 m!2164359))

(declare-fun m!2164937 () Bool)

(assert (=> bs!403512 m!2164937))

(assert (=> bs!403512 m!2164437))

(assert (=> b!1750823 d!534741))

(declare-fun d!534743 () Bool)

(declare-fun lt!676576 () Int)

(assert (=> d!534743 (= lt!676576 (size!15309 (list!7801 lt!676324)))))

(declare-fun size!15313 (Conc!6408) Int)

(assert (=> d!534743 (= lt!676576 (size!15313 (c!285452 lt!676324)))))

(assert (=> d!534743 (= (size!15308 lt!676324) lt!676576)))

(declare-fun bs!403513 () Bool)

(assert (= bs!403513 d!534743))

(assert (=> bs!403513 m!2164411))

(assert (=> bs!403513 m!2164411))

(declare-fun m!2164939 () Bool)

(assert (=> bs!403513 m!2164939))

(declare-fun m!2164941 () Bool)

(assert (=> bs!403513 m!2164941))

(assert (=> b!1750822 d!534743))

(declare-fun b!1751292 () Bool)

(declare-fun e!1121023 () Bool)

(assert (=> b!1751292 (= e!1121023 (not (= (head!4037 lt!676328) (c!285451 lt!676316))))))

(declare-fun b!1751293 () Bool)

(declare-fun e!1121024 () Bool)

(declare-fun e!1121025 () Bool)

(assert (=> b!1751293 (= e!1121024 e!1121025)))

(declare-fun res!787765 () Bool)

(assert (=> b!1751293 (=> (not res!787765) (not e!1121025))))

(declare-fun lt!676577 () Bool)

(assert (=> b!1751293 (= res!787765 (not lt!676577))))

(declare-fun b!1751294 () Bool)

(declare-fun e!1121029 () Bool)

(declare-fun e!1121028 () Bool)

(assert (=> b!1751294 (= e!1121029 e!1121028)))

(declare-fun c!285538 () Bool)

(assert (=> b!1751294 (= c!285538 (is-EmptyLang!4768 lt!676316))))

(declare-fun b!1751295 () Bool)

(declare-fun res!787764 () Bool)

(assert (=> b!1751295 (=> res!787764 e!1121023)))

(assert (=> b!1751295 (= res!787764 (not (isEmpty!12142 (tail!2614 lt!676328))))))

(declare-fun b!1751296 () Bool)

(declare-fun e!1121026 () Bool)

(assert (=> b!1751296 (= e!1121026 (= (head!4037 lt!676328) (c!285451 lt!676316)))))

(declare-fun d!534745 () Bool)

(assert (=> d!534745 e!1121029))

(declare-fun c!285540 () Bool)

(assert (=> d!534745 (= c!285540 (is-EmptyExpr!4768 lt!676316))))

(declare-fun e!1121027 () Bool)

(assert (=> d!534745 (= lt!676577 e!1121027)))

(declare-fun c!285539 () Bool)

(assert (=> d!534745 (= c!285539 (isEmpty!12142 lt!676328))))

(assert (=> d!534745 (validRegex!1918 lt!676316)))

(assert (=> d!534745 (= (matchR!2242 lt!676316 lt!676328) lt!676577)))

(declare-fun b!1751297 () Bool)

(assert (=> b!1751297 (= e!1121027 (matchR!2242 (derivativeStep!1213 lt!676316 (head!4037 lt!676328)) (tail!2614 lt!676328)))))

(declare-fun b!1751298 () Bool)

(declare-fun res!787769 () Bool)

(assert (=> b!1751298 (=> res!787769 e!1121024)))

(assert (=> b!1751298 (= res!787769 e!1121026)))

(declare-fun res!787767 () Bool)

(assert (=> b!1751298 (=> (not res!787767) (not e!1121026))))

(assert (=> b!1751298 (= res!787767 lt!676577)))

(declare-fun b!1751299 () Bool)

(declare-fun call!110382 () Bool)

(assert (=> b!1751299 (= e!1121029 (= lt!676577 call!110382))))

(declare-fun b!1751300 () Bool)

(declare-fun res!787763 () Bool)

(assert (=> b!1751300 (=> res!787763 e!1121024)))

(assert (=> b!1751300 (= res!787763 (not (is-ElementMatch!4768 lt!676316)))))

(assert (=> b!1751300 (= e!1121028 e!1121024)))

(declare-fun b!1751301 () Bool)

(declare-fun res!787766 () Bool)

(assert (=> b!1751301 (=> (not res!787766) (not e!1121026))))

(assert (=> b!1751301 (= res!787766 (not call!110382))))

(declare-fun b!1751302 () Bool)

(declare-fun res!787762 () Bool)

(assert (=> b!1751302 (=> (not res!787762) (not e!1121026))))

(assert (=> b!1751302 (= res!787762 (isEmpty!12142 (tail!2614 lt!676328)))))

(declare-fun b!1751303 () Bool)

(assert (=> b!1751303 (= e!1121025 e!1121023)))

(declare-fun res!787768 () Bool)

(assert (=> b!1751303 (=> res!787768 e!1121023)))

(assert (=> b!1751303 (= res!787768 call!110382)))

(declare-fun bm!110377 () Bool)

(assert (=> bm!110377 (= call!110382 (isEmpty!12142 lt!676328))))

(declare-fun b!1751304 () Bool)

(assert (=> b!1751304 (= e!1121028 (not lt!676577))))

(declare-fun b!1751305 () Bool)

(assert (=> b!1751305 (= e!1121027 (nullable!1444 lt!676316))))

(assert (= (and d!534745 c!285539) b!1751305))

(assert (= (and d!534745 (not c!285539)) b!1751297))

(assert (= (and d!534745 c!285540) b!1751299))

(assert (= (and d!534745 (not c!285540)) b!1751294))

(assert (= (and b!1751294 c!285538) b!1751304))

(assert (= (and b!1751294 (not c!285538)) b!1751300))

(assert (= (and b!1751300 (not res!787763)) b!1751298))

(assert (= (and b!1751298 res!787767) b!1751301))

(assert (= (and b!1751301 res!787766) b!1751302))

(assert (= (and b!1751302 res!787762) b!1751296))

(assert (= (and b!1751298 (not res!787769)) b!1751293))

(assert (= (and b!1751293 res!787765) b!1751303))

(assert (= (and b!1751303 (not res!787768)) b!1751295))

(assert (= (and b!1751295 (not res!787764)) b!1751292))

(assert (= (or b!1751299 b!1751301 b!1751303) bm!110377))

(assert (=> bm!110377 m!2164921))

(assert (=> b!1751302 m!2164923))

(assert (=> b!1751302 m!2164923))

(assert (=> b!1751302 m!2164925))

(assert (=> b!1751296 m!2164927))

(assert (=> b!1751292 m!2164927))

(assert (=> b!1751305 m!2164841))

(assert (=> d!534745 m!2164921))

(assert (=> d!534745 m!2164845))

(assert (=> b!1751297 m!2164927))

(assert (=> b!1751297 m!2164927))

(declare-fun m!2164943 () Bool)

(assert (=> b!1751297 m!2164943))

(assert (=> b!1751297 m!2164923))

(assert (=> b!1751297 m!2164943))

(assert (=> b!1751297 m!2164923))

(declare-fun m!2164945 () Bool)

(assert (=> b!1751297 m!2164945))

(assert (=> b!1751295 m!2164923))

(assert (=> b!1751295 m!2164923))

(assert (=> b!1751295 m!2164925))

(assert (=> b!1750822 d!534745))

(declare-fun d!534747 () Bool)

(assert (=> d!534747 (matchR!2242 (rulesRegex!798 thiss!24550 rules!3447) (list!7801 (charsOf!2089 token!523)))))

(declare-fun lt!676578 () Unit!33396)

(assert (=> d!534747 (= lt!676578 (choose!10797 thiss!24550 rules!3447 lt!676328 token!523 rule!422 Nil!19264))))

(assert (=> d!534747 (not (isEmpty!12141 rules!3447))))

(assert (=> d!534747 (= (lemmaMaxPrefixThenMatchesRulesRegex!171 thiss!24550 rules!3447 lt!676328 token!523 rule!422 Nil!19264) lt!676578)))

(declare-fun bs!403514 () Bool)

(assert (= bs!403514 d!534747))

(assert (=> bs!403514 m!2164425))

(declare-fun m!2164947 () Bool)

(assert (=> bs!403514 m!2164947))

(declare-fun m!2164949 () Bool)

(assert (=> bs!403514 m!2164949))

(assert (=> bs!403514 m!2164469))

(assert (=> bs!403514 m!2164425))

(assert (=> bs!403514 m!2164413))

(assert (=> bs!403514 m!2164947))

(assert (=> bs!403514 m!2164413))

(declare-fun m!2164951 () Bool)

(assert (=> bs!403514 m!2164951))

(assert (=> b!1750822 d!534747))

(declare-fun d!534749 () Bool)

(declare-fun isEmpty!12146 (Option!3904) Bool)

(assert (=> d!534749 (= (isDefined!3247 lt!676321) (not (isEmpty!12146 lt!676321)))))

(declare-fun bs!403515 () Bool)

(assert (= bs!403515 d!534749))

(declare-fun m!2164953 () Bool)

(assert (=> bs!403515 m!2164953))

(assert (=> b!1750800 d!534749))

(declare-fun b!1751328 () Bool)

(declare-fun e!1121040 () Bool)

(declare-fun lt!676599 () Option!3904)

(assert (=> b!1751328 (= e!1121040 (contains!3466 rules!3447 (rule!5448 (_1!10848 (get!5843 lt!676599)))))))

(declare-fun d!534751 () Bool)

(declare-fun e!1121039 () Bool)

(assert (=> d!534751 e!1121039))

(declare-fun res!787790 () Bool)

(assert (=> d!534751 (=> res!787790 e!1121039)))

(assert (=> d!534751 (= res!787790 (isEmpty!12146 lt!676599))))

(declare-fun e!1121038 () Option!3904)

(assert (=> d!534751 (= lt!676599 e!1121038)))

(declare-fun c!285545 () Bool)

(assert (=> d!534751 (= c!285545 (and (is-Cons!19265 rules!3447) (is-Nil!19265 (t!162948 rules!3447))))))

(declare-fun lt!676602 () Unit!33396)

(declare-fun lt!676601 () Unit!33396)

(assert (=> d!534751 (= lt!676602 lt!676601)))

(assert (=> d!534751 (isPrefix!1681 lt!676328 lt!676328)))

(declare-fun lemmaIsPrefixRefl!1111 (List!19334 List!19334) Unit!33396)

(assert (=> d!534751 (= lt!676601 (lemmaIsPrefixRefl!1111 lt!676328 lt!676328))))

(declare-fun rulesValidInductive!1148 (LexerInterface!3069 List!19335) Bool)

(assert (=> d!534751 (rulesValidInductive!1148 thiss!24550 rules!3447)))

(assert (=> d!534751 (= (maxPrefix!1623 thiss!24550 rules!3447 lt!676328) lt!676599)))

(declare-fun b!1751329 () Bool)

(assert (=> b!1751329 (= e!1121039 e!1121040)))

(declare-fun res!787785 () Bool)

(assert (=> b!1751329 (=> (not res!787785) (not e!1121040))))

(assert (=> b!1751329 (= res!787785 (isDefined!3247 lt!676599))))

(declare-fun b!1751330 () Bool)

(declare-fun res!787788 () Bool)

(assert (=> b!1751330 (=> (not res!787788) (not e!1121040))))

(assert (=> b!1751330 (= res!787788 (matchR!2242 (regex!3440 (rule!5448 (_1!10848 (get!5843 lt!676599)))) (list!7801 (charsOf!2089 (_1!10848 (get!5843 lt!676599))))))))

(declare-fun b!1751331 () Bool)

(declare-fun res!787789 () Bool)

(assert (=> b!1751331 (=> (not res!787789) (not e!1121040))))

(assert (=> b!1751331 (= res!787789 (< (size!15309 (_2!10848 (get!5843 lt!676599))) (size!15309 lt!676328)))))

(declare-fun b!1751332 () Bool)

(declare-fun res!787786 () Bool)

(assert (=> b!1751332 (=> (not res!787786) (not e!1121040))))

(assert (=> b!1751332 (= res!787786 (= (value!107714 (_1!10848 (get!5843 lt!676599))) (apply!5241 (transformation!3440 (rule!5448 (_1!10848 (get!5843 lt!676599)))) (seqFromList!2410 (originalCharacters!4254 (_1!10848 (get!5843 lt!676599)))))))))

(declare-fun b!1751333 () Bool)

(declare-fun res!787787 () Bool)

(assert (=> b!1751333 (=> (not res!787787) (not e!1121040))))

(assert (=> b!1751333 (= res!787787 (= (++!5265 (list!7801 (charsOf!2089 (_1!10848 (get!5843 lt!676599)))) (_2!10848 (get!5843 lt!676599))) lt!676328))))

(declare-fun call!110385 () Option!3904)

(declare-fun bm!110380 () Bool)

(assert (=> bm!110380 (= call!110385 (maxPrefixOneRule!995 thiss!24550 (h!24666 rules!3447) lt!676328))))

(declare-fun b!1751334 () Bool)

(declare-fun res!787784 () Bool)

(assert (=> b!1751334 (=> (not res!787784) (not e!1121040))))

(assert (=> b!1751334 (= res!787784 (= (list!7801 (charsOf!2089 (_1!10848 (get!5843 lt!676599)))) (originalCharacters!4254 (_1!10848 (get!5843 lt!676599)))))))

(declare-fun b!1751335 () Bool)

(declare-fun lt!676603 () Option!3904)

(declare-fun lt!676600 () Option!3904)

(assert (=> b!1751335 (= e!1121038 (ite (and (is-None!3903 lt!676603) (is-None!3903 lt!676600)) None!3903 (ite (is-None!3903 lt!676600) lt!676603 (ite (is-None!3903 lt!676603) lt!676600 (ite (>= (size!15307 (_1!10848 (v!25346 lt!676603))) (size!15307 (_1!10848 (v!25346 lt!676600)))) lt!676603 lt!676600)))))))

(assert (=> b!1751335 (= lt!676603 call!110385)))

(assert (=> b!1751335 (= lt!676600 (maxPrefix!1623 thiss!24550 (t!162948 rules!3447) lt!676328))))

(declare-fun b!1751336 () Bool)

(assert (=> b!1751336 (= e!1121038 call!110385)))

(assert (= (and d!534751 c!285545) b!1751336))

(assert (= (and d!534751 (not c!285545)) b!1751335))

(assert (= (or b!1751336 b!1751335) bm!110380))

(assert (= (and d!534751 (not res!787790)) b!1751329))

(assert (= (and b!1751329 res!787785) b!1751334))

(assert (= (and b!1751334 res!787784) b!1751331))

(assert (= (and b!1751331 res!787789) b!1751333))

(assert (= (and b!1751333 res!787787) b!1751332))

(assert (= (and b!1751332 res!787786) b!1751330))

(assert (= (and b!1751330 res!787788) b!1751328))

(declare-fun m!2164955 () Bool)

(assert (=> bm!110380 m!2164955))

(declare-fun m!2164957 () Bool)

(assert (=> d!534751 m!2164957))

(declare-fun m!2164959 () Bool)

(assert (=> d!534751 m!2164959))

(declare-fun m!2164961 () Bool)

(assert (=> d!534751 m!2164961))

(declare-fun m!2164963 () Bool)

(assert (=> d!534751 m!2164963))

(declare-fun m!2164965 () Bool)

(assert (=> b!1751328 m!2164965))

(declare-fun m!2164967 () Bool)

(assert (=> b!1751328 m!2164967))

(assert (=> b!1751330 m!2164965))

(declare-fun m!2164969 () Bool)

(assert (=> b!1751330 m!2164969))

(assert (=> b!1751330 m!2164969))

(declare-fun m!2164971 () Bool)

(assert (=> b!1751330 m!2164971))

(assert (=> b!1751330 m!2164971))

(declare-fun m!2164973 () Bool)

(assert (=> b!1751330 m!2164973))

(assert (=> b!1751331 m!2164965))

(declare-fun m!2164975 () Bool)

(assert (=> b!1751331 m!2164975))

(assert (=> b!1751331 m!2164803))

(declare-fun m!2164977 () Bool)

(assert (=> b!1751329 m!2164977))

(assert (=> b!1751333 m!2164965))

(assert (=> b!1751333 m!2164969))

(assert (=> b!1751333 m!2164969))

(assert (=> b!1751333 m!2164971))

(assert (=> b!1751333 m!2164971))

(declare-fun m!2164979 () Bool)

(assert (=> b!1751333 m!2164979))

(declare-fun m!2164981 () Bool)

(assert (=> b!1751335 m!2164981))

(assert (=> b!1751332 m!2164965))

(declare-fun m!2164983 () Bool)

(assert (=> b!1751332 m!2164983))

(assert (=> b!1751332 m!2164983))

(declare-fun m!2164985 () Bool)

(assert (=> b!1751332 m!2164985))

(assert (=> b!1751334 m!2164965))

(assert (=> b!1751334 m!2164969))

(assert (=> b!1751334 m!2164969))

(assert (=> b!1751334 m!2164971))

(assert (=> b!1750800 d!534751))

(declare-fun d!534753 () Bool)

(assert (=> d!534753 (= (list!7801 lt!676324) (list!7803 (c!285452 lt!676324)))))

(declare-fun bs!403516 () Bool)

(assert (= bs!403516 d!534753))

(declare-fun m!2164987 () Bool)

(assert (=> bs!403516 m!2164987))

(assert (=> b!1750800 d!534753))

(declare-fun d!534755 () Bool)

(declare-fun lt!676604 () BalanceConc!12760)

(assert (=> d!534755 (= (list!7801 lt!676604) (originalCharacters!4254 token!523))))

(assert (=> d!534755 (= lt!676604 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 token!523))) (value!107714 token!523)))))

(assert (=> d!534755 (= (charsOf!2089 token!523) lt!676604)))

(declare-fun b_lambda!56289 () Bool)

(assert (=> (not b_lambda!56289) (not d!534755)))

(assert (=> d!534755 t!162971))

(declare-fun b_and!131041 () Bool)

(assert (= b_and!131029 (and (=> t!162971 result!126378) b_and!131041)))

(assert (=> d!534755 t!162973))

(declare-fun b_and!131043 () Bool)

(assert (= b_and!131031 (and (=> t!162973 result!126380) b_and!131043)))

(assert (=> d!534755 t!162975))

(declare-fun b_and!131045 () Bool)

(assert (= b_and!131033 (and (=> t!162975 result!126382) b_and!131045)))

(declare-fun m!2164989 () Bool)

(assert (=> d!534755 m!2164989))

(assert (=> d!534755 m!2164691))

(assert (=> b!1750800 d!534755))

(declare-fun d!534757 () Bool)

(declare-fun isBalanced!1998 (Conc!6408) Bool)

(assert (=> d!534757 (= (inv!25001 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (value!107714 (_1!10848 lt!676330)))) (isBalanced!1998 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (value!107714 (_1!10848 lt!676330))))))))

(declare-fun bs!403517 () Bool)

(assert (= bs!403517 d!534757))

(declare-fun m!2164991 () Bool)

(assert (=> bs!403517 m!2164991))

(assert (=> tb!105023 d!534757))

(declare-fun b!1751351 () Bool)

(declare-fun e!1121045 () Bool)

(assert (=> b!1751351 (= e!1121045 (not (= (head!4037 lt!676328) (c!285451 (regex!3440 (rule!5448 (_1!10848 lt!676330)))))))))

(declare-fun b!1751352 () Bool)

(declare-fun e!1121046 () Bool)

(declare-fun e!1121047 () Bool)

(assert (=> b!1751352 (= e!1121046 e!1121047)))

(declare-fun res!787808 () Bool)

(assert (=> b!1751352 (=> (not res!787808) (not e!1121047))))

(declare-fun lt!676605 () Bool)

(assert (=> b!1751352 (= res!787808 (not lt!676605))))

(declare-fun b!1751353 () Bool)

(declare-fun e!1121051 () Bool)

(declare-fun e!1121050 () Bool)

(assert (=> b!1751353 (= e!1121051 e!1121050)))

(declare-fun c!285546 () Bool)

(assert (=> b!1751353 (= c!285546 (is-EmptyLang!4768 (regex!3440 (rule!5448 (_1!10848 lt!676330)))))))

(declare-fun b!1751354 () Bool)

(declare-fun res!787807 () Bool)

(assert (=> b!1751354 (=> res!787807 e!1121045)))

(assert (=> b!1751354 (= res!787807 (not (isEmpty!12142 (tail!2614 lt!676328))))))

(declare-fun b!1751355 () Bool)

(declare-fun e!1121048 () Bool)

(assert (=> b!1751355 (= e!1121048 (= (head!4037 lt!676328) (c!285451 (regex!3440 (rule!5448 (_1!10848 lt!676330))))))))

(declare-fun d!534759 () Bool)

(assert (=> d!534759 e!1121051))

(declare-fun c!285548 () Bool)

(assert (=> d!534759 (= c!285548 (is-EmptyExpr!4768 (regex!3440 (rule!5448 (_1!10848 lt!676330)))))))

(declare-fun e!1121049 () Bool)

(assert (=> d!534759 (= lt!676605 e!1121049)))

(declare-fun c!285547 () Bool)

(assert (=> d!534759 (= c!285547 (isEmpty!12142 lt!676328))))

(assert (=> d!534759 (validRegex!1918 (regex!3440 (rule!5448 (_1!10848 lt!676330))))))

(assert (=> d!534759 (= (matchR!2242 (regex!3440 (rule!5448 (_1!10848 lt!676330))) lt!676328) lt!676605)))

(declare-fun b!1751356 () Bool)

(assert (=> b!1751356 (= e!1121049 (matchR!2242 (derivativeStep!1213 (regex!3440 (rule!5448 (_1!10848 lt!676330))) (head!4037 lt!676328)) (tail!2614 lt!676328)))))

(declare-fun b!1751357 () Bool)

(declare-fun res!787812 () Bool)

(assert (=> b!1751357 (=> res!787812 e!1121046)))

(assert (=> b!1751357 (= res!787812 e!1121048)))

(declare-fun res!787810 () Bool)

(assert (=> b!1751357 (=> (not res!787810) (not e!1121048))))

(assert (=> b!1751357 (= res!787810 lt!676605)))

(declare-fun b!1751358 () Bool)

(declare-fun call!110388 () Bool)

(assert (=> b!1751358 (= e!1121051 (= lt!676605 call!110388))))

(declare-fun b!1751359 () Bool)

(declare-fun res!787806 () Bool)

(assert (=> b!1751359 (=> res!787806 e!1121046)))

(assert (=> b!1751359 (= res!787806 (not (is-ElementMatch!4768 (regex!3440 (rule!5448 (_1!10848 lt!676330))))))))

(assert (=> b!1751359 (= e!1121050 e!1121046)))

(declare-fun b!1751360 () Bool)

(declare-fun res!787809 () Bool)

(assert (=> b!1751360 (=> (not res!787809) (not e!1121048))))

(assert (=> b!1751360 (= res!787809 (not call!110388))))

(declare-fun b!1751361 () Bool)

(declare-fun res!787805 () Bool)

(assert (=> b!1751361 (=> (not res!787805) (not e!1121048))))

(assert (=> b!1751361 (= res!787805 (isEmpty!12142 (tail!2614 lt!676328)))))

(declare-fun b!1751362 () Bool)

(assert (=> b!1751362 (= e!1121047 e!1121045)))

(declare-fun res!787811 () Bool)

(assert (=> b!1751362 (=> res!787811 e!1121045)))

(assert (=> b!1751362 (= res!787811 call!110388)))

(declare-fun bm!110383 () Bool)

(assert (=> bm!110383 (= call!110388 (isEmpty!12142 lt!676328))))

(declare-fun b!1751363 () Bool)

(assert (=> b!1751363 (= e!1121050 (not lt!676605))))

(declare-fun b!1751364 () Bool)

(assert (=> b!1751364 (= e!1121049 (nullable!1444 (regex!3440 (rule!5448 (_1!10848 lt!676330)))))))

(assert (= (and d!534759 c!285547) b!1751364))

(assert (= (and d!534759 (not c!285547)) b!1751356))

(assert (= (and d!534759 c!285548) b!1751358))

(assert (= (and d!534759 (not c!285548)) b!1751353))

(assert (= (and b!1751353 c!285546) b!1751363))

(assert (= (and b!1751353 (not c!285546)) b!1751359))

(assert (= (and b!1751359 (not res!787806)) b!1751357))

(assert (= (and b!1751357 res!787810) b!1751360))

(assert (= (and b!1751360 res!787809) b!1751361))

(assert (= (and b!1751361 res!787805) b!1751355))

(assert (= (and b!1751357 (not res!787812)) b!1751352))

(assert (= (and b!1751352 res!787808) b!1751362))

(assert (= (and b!1751362 (not res!787811)) b!1751354))

(assert (= (and b!1751354 (not res!787807)) b!1751351))

(assert (= (or b!1751358 b!1751360 b!1751362) bm!110383))

(assert (=> bm!110383 m!2164921))

(assert (=> b!1751361 m!2164923))

(assert (=> b!1751361 m!2164923))

(assert (=> b!1751361 m!2164925))

(assert (=> b!1751355 m!2164927))

(assert (=> b!1751351 m!2164927))

(assert (=> b!1751364 m!2164765))

(assert (=> d!534759 m!2164921))

(assert (=> d!534759 m!2164767))

(assert (=> b!1751356 m!2164927))

(assert (=> b!1751356 m!2164927))

(declare-fun m!2164993 () Bool)

(assert (=> b!1751356 m!2164993))

(assert (=> b!1751356 m!2164923))

(assert (=> b!1751356 m!2164993))

(assert (=> b!1751356 m!2164923))

(declare-fun m!2164995 () Bool)

(assert (=> b!1751356 m!2164995))

(assert (=> b!1751354 m!2164923))

(assert (=> b!1751354 m!2164923))

(assert (=> b!1751354 m!2164925))

(assert (=> b!1750836 d!534759))

(declare-fun d!534761 () Bool)

(assert (=> d!534761 (not (matchR!2242 (regex!3440 (rule!5448 (_1!10848 lt!676330))) lt!676328))))

(declare-fun lt!676606 () Unit!33396)

(assert (=> d!534761 (= lt!676606 (choose!10796 thiss!24550 rules!3447 (rule!5448 token!523) lt!676328 lt!676328 (rule!5448 (_1!10848 lt!676330))))))

(assert (=> d!534761 (isPrefix!1681 lt!676328 lt!676328)))

(assert (=> d!534761 (= (lemmaMaxPrefNoSmallerRuleMatches!145 thiss!24550 rules!3447 (rule!5448 token!523) lt!676328 lt!676328 (rule!5448 (_1!10848 lt!676330))) lt!676606)))

(declare-fun bs!403518 () Bool)

(assert (= bs!403518 d!534761))

(assert (=> bs!403518 m!2164403))

(declare-fun m!2164997 () Bool)

(assert (=> bs!403518 m!2164997))

(assert (=> bs!403518 m!2164959))

(assert (=> b!1750836 d!534761))

(declare-fun d!534763 () Bool)

(assert (=> d!534763 (= (inv!24995 (tag!3790 (h!24666 rules!3447))) (= (mod (str.len (value!107713 (tag!3790 (h!24666 rules!3447)))) 2) 0))))

(assert (=> b!1750835 d!534763))

(declare-fun d!534765 () Bool)

(declare-fun res!787813 () Bool)

(declare-fun e!1121052 () Bool)

(assert (=> d!534765 (=> (not res!787813) (not e!1121052))))

(assert (=> d!534765 (= res!787813 (semiInverseModEq!1358 (toChars!4814 (transformation!3440 (h!24666 rules!3447))) (toValue!4955 (transformation!3440 (h!24666 rules!3447)))))))

(assert (=> d!534765 (= (inv!24998 (transformation!3440 (h!24666 rules!3447))) e!1121052)))

(declare-fun b!1751365 () Bool)

(assert (=> b!1751365 (= e!1121052 (equivClasses!1299 (toChars!4814 (transformation!3440 (h!24666 rules!3447))) (toValue!4955 (transformation!3440 (h!24666 rules!3447)))))))

(assert (= (and d!534765 res!787813) b!1751365))

(declare-fun m!2164999 () Bool)

(assert (=> d!534765 m!2164999))

(declare-fun m!2165001 () Bool)

(assert (=> b!1751365 m!2165001))

(assert (=> b!1750835 d!534765))

(declare-fun d!534767 () Bool)

(declare-fun lt!676609 () Bool)

(declare-fun content!2765 (List!19335) (Set Rule!6680))

(assert (=> d!534767 (= lt!676609 (set.member rule!422 (content!2765 rules!3447)))))

(declare-fun e!1121057 () Bool)

(assert (=> d!534767 (= lt!676609 e!1121057)))

(declare-fun res!787819 () Bool)

(assert (=> d!534767 (=> (not res!787819) (not e!1121057))))

(assert (=> d!534767 (= res!787819 (is-Cons!19265 rules!3447))))

(assert (=> d!534767 (= (contains!3466 rules!3447 rule!422) lt!676609)))

(declare-fun b!1751370 () Bool)

(declare-fun e!1121058 () Bool)

(assert (=> b!1751370 (= e!1121057 e!1121058)))

(declare-fun res!787818 () Bool)

(assert (=> b!1751370 (=> res!787818 e!1121058)))

(assert (=> b!1751370 (= res!787818 (= (h!24666 rules!3447) rule!422))))

(declare-fun b!1751371 () Bool)

(assert (=> b!1751371 (= e!1121058 (contains!3466 (t!162948 rules!3447) rule!422))))

(assert (= (and d!534767 res!787819) b!1751370))

(assert (= (and b!1751370 (not res!787818)) b!1751371))

(declare-fun m!2165003 () Bool)

(assert (=> d!534767 m!2165003))

(declare-fun m!2165005 () Bool)

(assert (=> d!534767 m!2165005))

(declare-fun m!2165007 () Bool)

(assert (=> b!1751371 m!2165007))

(assert (=> b!1750797 d!534767))

(declare-fun d!534769 () Bool)

(assert (=> d!534769 (= (inv!24995 (tag!3790 (rule!5448 token!523))) (= (mod (str.len (value!107713 (tag!3790 (rule!5448 token!523)))) 2) 0))))

(assert (=> b!1750839 d!534769))

(declare-fun d!534771 () Bool)

(declare-fun res!787820 () Bool)

(declare-fun e!1121059 () Bool)

(assert (=> d!534771 (=> (not res!787820) (not e!1121059))))

(assert (=> d!534771 (= res!787820 (semiInverseModEq!1358 (toChars!4814 (transformation!3440 (rule!5448 token!523))) (toValue!4955 (transformation!3440 (rule!5448 token!523)))))))

(assert (=> d!534771 (= (inv!24998 (transformation!3440 (rule!5448 token!523))) e!1121059)))

(declare-fun b!1751372 () Bool)

(assert (=> b!1751372 (= e!1121059 (equivClasses!1299 (toChars!4814 (transformation!3440 (rule!5448 token!523))) (toValue!4955 (transformation!3440 (rule!5448 token!523)))))))

(assert (= (and d!534771 res!787820) b!1751372))

(declare-fun m!2165009 () Bool)

(assert (=> d!534771 m!2165009))

(declare-fun m!2165011 () Bool)

(assert (=> b!1751372 m!2165011))

(assert (=> b!1750839 d!534771))

(declare-fun d!534773 () Bool)

(assert (=> d!534773 (= (inv!25001 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338))) (isBalanced!1998 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338)))))))

(declare-fun bs!403519 () Bool)

(assert (= bs!403519 d!534773))

(declare-fun m!2165013 () Bool)

(assert (=> bs!403519 m!2165013))

(assert (=> tb!105029 d!534773))

(declare-fun d!534775 () Bool)

(declare-fun lt!676610 () List!19334)

(assert (=> d!534775 (= (++!5265 lt!676289 lt!676610) lt!676299)))

(declare-fun e!1121060 () List!19334)

(assert (=> d!534775 (= lt!676610 e!1121060)))

(declare-fun c!285549 () Bool)

(assert (=> d!534775 (= c!285549 (is-Cons!19264 lt!676289))))

(assert (=> d!534775 (>= (size!15309 lt!676299) (size!15309 lt!676289))))

(assert (=> d!534775 (= (getSuffix!861 lt!676299 lt!676289) lt!676610)))

(declare-fun b!1751373 () Bool)

(assert (=> b!1751373 (= e!1121060 (getSuffix!861 (tail!2614 lt!676299) (t!162947 lt!676289)))))

(declare-fun b!1751374 () Bool)

(assert (=> b!1751374 (= e!1121060 lt!676299)))

(assert (= (and d!534775 c!285549) b!1751373))

(assert (= (and d!534775 (not c!285549)) b!1751374))

(declare-fun m!2165015 () Bool)

(assert (=> d!534775 m!2165015))

(assert (=> d!534775 m!2164905))

(assert (=> d!534775 m!2164449))

(assert (=> b!1751373 m!2164901))

(assert (=> b!1751373 m!2164901))

(declare-fun m!2165017 () Bool)

(assert (=> b!1751373 m!2165017))

(assert (=> b!1750817 d!534775))

(declare-fun b!1751433 () Bool)

(declare-fun e!1121096 () Bool)

(declare-datatypes ((tuple2!18896 0))(
  ( (tuple2!18897 (_1!10850 List!19334) (_2!10850 List!19334)) )
))
(declare-fun findLongestMatchInner!430 (Regex!4768 List!19334 Int List!19334 List!19334 Int) tuple2!18896)

(assert (=> b!1751433 (= e!1121096 (matchR!2242 (regex!3440 (rule!5448 (_1!10848 lt!676330))) (_1!10850 (findLongestMatchInner!430 (regex!3440 (rule!5448 (_1!10848 lt!676330))) Nil!19264 (size!15309 Nil!19264) lt!676299 lt!676299 (size!15309 lt!676299)))))))

(declare-fun b!1751434 () Bool)

(declare-fun res!787860 () Bool)

(declare-fun e!1121095 () Bool)

(assert (=> b!1751434 (=> (not res!787860) (not e!1121095))))

(declare-fun lt!676637 () Option!3904)

(assert (=> b!1751434 (= res!787860 (= (rule!5448 (_1!10848 (get!5843 lt!676637))) (rule!5448 (_1!10848 lt!676330))))))

(declare-fun b!1751435 () Bool)

(declare-fun e!1121094 () Option!3904)

(assert (=> b!1751435 (= e!1121094 None!3903)))

(declare-fun b!1751436 () Bool)

(declare-fun e!1121097 () Bool)

(assert (=> b!1751436 (= e!1121097 e!1121095)))

(declare-fun res!787864 () Bool)

(assert (=> b!1751436 (=> (not res!787864) (not e!1121095))))

(assert (=> b!1751436 (= res!787864 (matchR!2242 (regex!3440 (rule!5448 (_1!10848 lt!676330))) (list!7801 (charsOf!2089 (_1!10848 (get!5843 lt!676637))))))))

(declare-fun b!1751437 () Bool)

(declare-fun res!787861 () Bool)

(assert (=> b!1751437 (=> (not res!787861) (not e!1121095))))

(assert (=> b!1751437 (= res!787861 (< (size!15309 (_2!10848 (get!5843 lt!676637))) (size!15309 lt!676299)))))

(declare-fun b!1751438 () Bool)

(declare-fun lt!676639 () tuple2!18896)

(assert (=> b!1751438 (= e!1121094 (Some!3903 (tuple2!18893 (Token!6447 (apply!5241 (transformation!3440 (rule!5448 (_1!10848 lt!676330))) (seqFromList!2410 (_1!10850 lt!676639))) (rule!5448 (_1!10848 lt!676330)) (size!15308 (seqFromList!2410 (_1!10850 lt!676639))) (_1!10850 lt!676639)) (_2!10850 lt!676639))))))

(declare-fun lt!676638 () Unit!33396)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!414 (Regex!4768 List!19334) Unit!33396)

(assert (=> b!1751438 (= lt!676638 (longestMatchIsAcceptedByMatchOrIsEmpty!414 (regex!3440 (rule!5448 (_1!10848 lt!676330))) lt!676299))))

(declare-fun res!787862 () Bool)

(assert (=> b!1751438 (= res!787862 (isEmpty!12142 (_1!10850 (findLongestMatchInner!430 (regex!3440 (rule!5448 (_1!10848 lt!676330))) Nil!19264 (size!15309 Nil!19264) lt!676299 lt!676299 (size!15309 lt!676299)))))))

(assert (=> b!1751438 (=> res!787862 e!1121096)))

(assert (=> b!1751438 e!1121096))

(declare-fun lt!676640 () Unit!33396)

(assert (=> b!1751438 (= lt!676640 lt!676638)))

(declare-fun lt!676636 () Unit!33396)

(assert (=> b!1751438 (= lt!676636 (lemmaSemiInverse!580 (transformation!3440 (rule!5448 (_1!10848 lt!676330))) (seqFromList!2410 (_1!10850 lt!676639))))))

(declare-fun b!1751439 () Bool)

(declare-fun res!787866 () Bool)

(assert (=> b!1751439 (=> (not res!787866) (not e!1121095))))

(assert (=> b!1751439 (= res!787866 (= (value!107714 (_1!10848 (get!5843 lt!676637))) (apply!5241 (transformation!3440 (rule!5448 (_1!10848 (get!5843 lt!676637)))) (seqFromList!2410 (originalCharacters!4254 (_1!10848 (get!5843 lt!676637)))))))))

(declare-fun d!534777 () Bool)

(assert (=> d!534777 e!1121097))

(declare-fun res!787863 () Bool)

(assert (=> d!534777 (=> res!787863 e!1121097)))

(assert (=> d!534777 (= res!787863 (isEmpty!12146 lt!676637))))

(assert (=> d!534777 (= lt!676637 e!1121094)))

(declare-fun c!285559 () Bool)

(assert (=> d!534777 (= c!285559 (isEmpty!12142 (_1!10850 lt!676639)))))

(declare-fun findLongestMatch!357 (Regex!4768 List!19334) tuple2!18896)

(assert (=> d!534777 (= lt!676639 (findLongestMatch!357 (regex!3440 (rule!5448 (_1!10848 lt!676330))) lt!676299))))

(assert (=> d!534777 (ruleValid!939 thiss!24550 (rule!5448 (_1!10848 lt!676330)))))

(assert (=> d!534777 (= (maxPrefixOneRule!995 thiss!24550 (rule!5448 (_1!10848 lt!676330)) lt!676299) lt!676637)))

(declare-fun b!1751440 () Bool)

(declare-fun res!787865 () Bool)

(assert (=> b!1751440 (=> (not res!787865) (not e!1121095))))

(assert (=> b!1751440 (= res!787865 (= (++!5265 (list!7801 (charsOf!2089 (_1!10848 (get!5843 lt!676637)))) (_2!10848 (get!5843 lt!676637))) lt!676299))))

(declare-fun b!1751441 () Bool)

(assert (=> b!1751441 (= e!1121095 (= (size!15307 (_1!10848 (get!5843 lt!676637))) (size!15309 (originalCharacters!4254 (_1!10848 (get!5843 lt!676637))))))))

(assert (= (and d!534777 c!285559) b!1751435))

(assert (= (and d!534777 (not c!285559)) b!1751438))

(assert (= (and b!1751438 (not res!787862)) b!1751433))

(assert (= (and d!534777 (not res!787863)) b!1751436))

(assert (= (and b!1751436 res!787864) b!1751440))

(assert (= (and b!1751440 res!787865) b!1751437))

(assert (= (and b!1751437 res!787861) b!1751434))

(assert (= (and b!1751434 res!787860) b!1751439))

(assert (= (and b!1751439 res!787866) b!1751441))

(declare-fun m!2165089 () Bool)

(assert (=> b!1751440 m!2165089))

(declare-fun m!2165091 () Bool)

(assert (=> b!1751440 m!2165091))

(assert (=> b!1751440 m!2165091))

(declare-fun m!2165093 () Bool)

(assert (=> b!1751440 m!2165093))

(assert (=> b!1751440 m!2165093))

(declare-fun m!2165095 () Bool)

(assert (=> b!1751440 m!2165095))

(assert (=> b!1751438 m!2164905))

(declare-fun m!2165097 () Bool)

(assert (=> b!1751438 m!2165097))

(declare-fun m!2165099 () Bool)

(assert (=> b!1751438 m!2165099))

(declare-fun m!2165101 () Bool)

(assert (=> b!1751438 m!2165101))

(assert (=> b!1751438 m!2165099))

(declare-fun m!2165103 () Bool)

(assert (=> b!1751438 m!2165103))

(assert (=> b!1751438 m!2165099))

(declare-fun m!2165105 () Bool)

(assert (=> b!1751438 m!2165105))

(assert (=> b!1751438 m!2165099))

(declare-fun m!2165107 () Bool)

(assert (=> b!1751438 m!2165107))

(declare-fun m!2165109 () Bool)

(assert (=> b!1751438 m!2165109))

(assert (=> b!1751438 m!2164905))

(declare-fun m!2165111 () Bool)

(assert (=> b!1751438 m!2165111))

(assert (=> b!1751438 m!2165109))

(declare-fun m!2165113 () Bool)

(assert (=> d!534777 m!2165113))

(declare-fun m!2165115 () Bool)

(assert (=> d!534777 m!2165115))

(declare-fun m!2165117 () Bool)

(assert (=> d!534777 m!2165117))

(declare-fun m!2165119 () Bool)

(assert (=> d!534777 m!2165119))

(assert (=> b!1751437 m!2165089))

(declare-fun m!2165121 () Bool)

(assert (=> b!1751437 m!2165121))

(assert (=> b!1751437 m!2164905))

(assert (=> b!1751439 m!2165089))

(declare-fun m!2165123 () Bool)

(assert (=> b!1751439 m!2165123))

(assert (=> b!1751439 m!2165123))

(declare-fun m!2165125 () Bool)

(assert (=> b!1751439 m!2165125))

(assert (=> b!1751441 m!2165089))

(declare-fun m!2165127 () Bool)

(assert (=> b!1751441 m!2165127))

(assert (=> b!1751434 m!2165089))

(assert (=> b!1751436 m!2165089))

(assert (=> b!1751436 m!2165091))

(assert (=> b!1751436 m!2165091))

(assert (=> b!1751436 m!2165093))

(assert (=> b!1751436 m!2165093))

(declare-fun m!2165129 () Bool)

(assert (=> b!1751436 m!2165129))

(assert (=> b!1751433 m!2165109))

(assert (=> b!1751433 m!2164905))

(assert (=> b!1751433 m!2165109))

(assert (=> b!1751433 m!2164905))

(assert (=> b!1751433 m!2165111))

(declare-fun m!2165131 () Bool)

(assert (=> b!1751433 m!2165131))

(assert (=> b!1750817 d!534777))

(declare-fun d!534803 () Bool)

(declare-fun lt!676643 () Int)

(assert (=> d!534803 (>= lt!676643 0)))

(declare-fun e!1121100 () Int)

(assert (=> d!534803 (= lt!676643 e!1121100)))

(declare-fun c!285562 () Bool)

(assert (=> d!534803 (= c!285562 (is-Nil!19264 lt!676289))))

(assert (=> d!534803 (= (size!15309 lt!676289) lt!676643)))

(declare-fun b!1751446 () Bool)

(assert (=> b!1751446 (= e!1121100 0)))

(declare-fun b!1751447 () Bool)

(assert (=> b!1751447 (= e!1121100 (+ 1 (size!15309 (t!162947 lt!676289))))))

(assert (= (and d!534803 c!285562) b!1751446))

(assert (= (and d!534803 (not c!285562)) b!1751447))

(declare-fun m!2165133 () Bool)

(assert (=> b!1751447 m!2165133))

(assert (=> b!1750817 d!534803))

(declare-fun d!534805 () Bool)

(assert (=> d!534805 (= (maxPrefixOneRule!995 thiss!24550 (rule!5448 (_1!10848 lt!676330)) lt!676299) (Some!3903 (tuple2!18893 (Token!6447 (apply!5241 (transformation!3440 (rule!5448 (_1!10848 lt!676330))) (seqFromList!2410 lt!676289)) (rule!5448 (_1!10848 lt!676330)) (size!15309 lt!676289) lt!676289) (_2!10848 lt!676330))))))

(declare-fun lt!676646 () Unit!33396)

(declare-fun choose!10804 (LexerInterface!3069 List!19335 List!19334 List!19334 List!19334 Rule!6680) Unit!33396)

(assert (=> d!534805 (= lt!676646 (choose!10804 thiss!24550 rules!3447 lt!676289 lt!676299 (_2!10848 lt!676330) (rule!5448 (_1!10848 lt!676330))))))

(assert (=> d!534805 (not (isEmpty!12141 rules!3447))))

(assert (=> d!534805 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!384 thiss!24550 rules!3447 lt!676289 lt!676299 (_2!10848 lt!676330) (rule!5448 (_1!10848 lt!676330))) lt!676646)))

(declare-fun bs!403524 () Bool)

(assert (= bs!403524 d!534805))

(assert (=> bs!403524 m!2164469))

(assert (=> bs!403524 m!2164441))

(assert (=> bs!403524 m!2164449))

(assert (=> bs!403524 m!2164441))

(assert (=> bs!403524 m!2164443))

(declare-fun m!2165135 () Bool)

(assert (=> bs!403524 m!2165135))

(assert (=> bs!403524 m!2164439))

(assert (=> b!1750817 d!534805))

(declare-fun d!534807 () Bool)

(assert (=> d!534807 (= (_2!10848 lt!676330) lt!676331)))

(declare-fun lt!676647 () Unit!33396)

(assert (=> d!534807 (= lt!676647 (choose!10794 lt!676289 (_2!10848 lt!676330) lt!676289 lt!676331 lt!676299))))

(assert (=> d!534807 (isPrefix!1681 lt!676289 lt!676299)))

(assert (=> d!534807 (= (lemmaSamePrefixThenSameSuffix!811 lt!676289 (_2!10848 lt!676330) lt!676289 lt!676331 lt!676299) lt!676647)))

(declare-fun bs!403525 () Bool)

(assert (= bs!403525 d!534807))

(declare-fun m!2165137 () Bool)

(assert (=> bs!403525 m!2165137))

(assert (=> bs!403525 m!2164341))

(assert (=> b!1750817 d!534807))

(declare-fun d!534809 () Bool)

(assert (=> d!534809 (= (apply!5241 (transformation!3440 (rule!5448 (_1!10848 lt!676330))) (seqFromList!2410 lt!676289)) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (seqFromList!2410 lt!676289)))))

(declare-fun b_lambda!56293 () Bool)

(assert (=> (not b_lambda!56293) (not d!534809)))

(declare-fun tb!105071 () Bool)

(declare-fun t!162983 () Bool)

(assert (=> (and b!1750838 (= (toValue!4955 (transformation!3440 (h!24666 rules!3447))) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162983) tb!105071))

(declare-fun result!126390 () Bool)

(assert (=> tb!105071 (= result!126390 (inv!21 (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (seqFromList!2410 lt!676289))))))

(declare-fun m!2165139 () Bool)

(assert (=> tb!105071 m!2165139))

(assert (=> d!534809 t!162983))

(declare-fun b_and!131053 () Bool)

(assert (= b_and!131035 (and (=> t!162983 result!126390) b_and!131053)))

(declare-fun tb!105073 () Bool)

(declare-fun t!162985 () Bool)

(assert (=> (and b!1750815 (= (toValue!4955 (transformation!3440 rule!422)) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162985) tb!105073))

(declare-fun result!126392 () Bool)

(assert (= result!126392 result!126390))

(assert (=> d!534809 t!162985))

(declare-fun b_and!131055 () Bool)

(assert (= b_and!131037 (and (=> t!162985 result!126392) b_and!131055)))

(declare-fun t!162987 () Bool)

(declare-fun tb!105075 () Bool)

(assert (=> (and b!1750801 (= (toValue!4955 (transformation!3440 (rule!5448 token!523))) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162987) tb!105075))

(declare-fun result!126394 () Bool)

(assert (= result!126394 result!126390))

(assert (=> d!534809 t!162987))

(declare-fun b_and!131057 () Bool)

(assert (= b_and!131039 (and (=> t!162987 result!126394) b_and!131057)))

(assert (=> d!534809 m!2164441))

(declare-fun m!2165141 () Bool)

(assert (=> d!534809 m!2165141))

(assert (=> b!1750817 d!534809))

(declare-fun d!534811 () Bool)

(declare-fun fromListB!1093 (List!19334) BalanceConc!12760)

(assert (=> d!534811 (= (seqFromList!2410 lt!676289) (fromListB!1093 lt!676289))))

(declare-fun bs!403526 () Bool)

(assert (= bs!403526 d!534811))

(declare-fun m!2165143 () Bool)

(assert (=> bs!403526 m!2165143))

(assert (=> b!1750817 d!534811))

(declare-fun b!1751449 () Bool)

(declare-fun res!787869 () Bool)

(declare-fun e!1121104 () Bool)

(assert (=> b!1751449 (=> (not res!787869) (not e!1121104))))

(assert (=> b!1751449 (= res!787869 (= (head!4037 lt!676289) (head!4037 (++!5265 lt!676289 (_2!10848 lt!676330)))))))

(declare-fun b!1751448 () Bool)

(declare-fun e!1121102 () Bool)

(assert (=> b!1751448 (= e!1121102 e!1121104)))

(declare-fun res!787870 () Bool)

(assert (=> b!1751448 (=> (not res!787870) (not e!1121104))))

(assert (=> b!1751448 (= res!787870 (not (is-Nil!19264 (++!5265 lt!676289 (_2!10848 lt!676330)))))))

(declare-fun b!1751450 () Bool)

(assert (=> b!1751450 (= e!1121104 (isPrefix!1681 (tail!2614 lt!676289) (tail!2614 (++!5265 lt!676289 (_2!10848 lt!676330)))))))

(declare-fun d!534813 () Bool)

(declare-fun e!1121103 () Bool)

(assert (=> d!534813 e!1121103))

(declare-fun res!787867 () Bool)

(assert (=> d!534813 (=> res!787867 e!1121103)))

(declare-fun lt!676648 () Bool)

(assert (=> d!534813 (= res!787867 (not lt!676648))))

(assert (=> d!534813 (= lt!676648 e!1121102)))

(declare-fun res!787868 () Bool)

(assert (=> d!534813 (=> res!787868 e!1121102)))

(assert (=> d!534813 (= res!787868 (is-Nil!19264 lt!676289))))

(assert (=> d!534813 (= (isPrefix!1681 lt!676289 (++!5265 lt!676289 (_2!10848 lt!676330))) lt!676648)))

(declare-fun b!1751451 () Bool)

(assert (=> b!1751451 (= e!1121103 (>= (size!15309 (++!5265 lt!676289 (_2!10848 lt!676330))) (size!15309 lt!676289)))))

(assert (= (and d!534813 (not res!787868)) b!1751448))

(assert (= (and b!1751448 res!787870) b!1751449))

(assert (= (and b!1751449 res!787869) b!1751450))

(assert (= (and d!534813 (not res!787867)) b!1751451))

(assert (=> b!1751449 m!2164763))

(assert (=> b!1751449 m!2164325))

(declare-fun m!2165145 () Bool)

(assert (=> b!1751449 m!2165145))

(assert (=> b!1751450 m!2164759))

(assert (=> b!1751450 m!2164325))

(declare-fun m!2165147 () Bool)

(assert (=> b!1751450 m!2165147))

(assert (=> b!1751450 m!2164759))

(assert (=> b!1751450 m!2165147))

(declare-fun m!2165149 () Bool)

(assert (=> b!1751450 m!2165149))

(assert (=> b!1751451 m!2164325))

(declare-fun m!2165151 () Bool)

(assert (=> b!1751451 m!2165151))

(assert (=> b!1751451 m!2164449))

(assert (=> b!1750816 d!534813))

(declare-fun e!1121105 () Bool)

(declare-fun lt!676649 () List!19334)

(declare-fun b!1751455 () Bool)

(assert (=> b!1751455 (= e!1121105 (or (not (= (_2!10848 lt!676330) Nil!19264)) (= lt!676649 lt!676289)))))

(declare-fun b!1751454 () Bool)

(declare-fun res!787871 () Bool)

(assert (=> b!1751454 (=> (not res!787871) (not e!1121105))))

(assert (=> b!1751454 (= res!787871 (= (size!15309 lt!676649) (+ (size!15309 lt!676289) (size!15309 (_2!10848 lt!676330)))))))

(declare-fun b!1751453 () Bool)

(declare-fun e!1121106 () List!19334)

(assert (=> b!1751453 (= e!1121106 (Cons!19264 (h!24665 lt!676289) (++!5265 (t!162947 lt!676289) (_2!10848 lt!676330))))))

(declare-fun b!1751452 () Bool)

(assert (=> b!1751452 (= e!1121106 (_2!10848 lt!676330))))

(declare-fun d!534815 () Bool)

(assert (=> d!534815 e!1121105))

(declare-fun res!787872 () Bool)

(assert (=> d!534815 (=> (not res!787872) (not e!1121105))))

(assert (=> d!534815 (= res!787872 (= (content!2764 lt!676649) (set.union (content!2764 lt!676289) (content!2764 (_2!10848 lt!676330)))))))

(assert (=> d!534815 (= lt!676649 e!1121106)))

(declare-fun c!285563 () Bool)

(assert (=> d!534815 (= c!285563 (is-Nil!19264 lt!676289))))

(assert (=> d!534815 (= (++!5265 lt!676289 (_2!10848 lt!676330)) lt!676649)))

(assert (= (and d!534815 c!285563) b!1751452))

(assert (= (and d!534815 (not c!285563)) b!1751453))

(assert (= (and d!534815 res!787872) b!1751454))

(assert (= (and b!1751454 res!787871) b!1751455))

(declare-fun m!2165153 () Bool)

(assert (=> b!1751454 m!2165153))

(assert (=> b!1751454 m!2164449))

(declare-fun m!2165155 () Bool)

(assert (=> b!1751454 m!2165155))

(declare-fun m!2165157 () Bool)

(assert (=> b!1751453 m!2165157))

(declare-fun m!2165159 () Bool)

(assert (=> d!534815 m!2165159))

(declare-fun m!2165161 () Bool)

(assert (=> d!534815 m!2165161))

(declare-fun m!2165163 () Bool)

(assert (=> d!534815 m!2165163))

(assert (=> b!1750816 d!534815))

(declare-fun d!534817 () Bool)

(assert (=> d!534817 (isPrefix!1681 lt!676328 (++!5265 lt!676328 suffix!1421))))

(declare-fun lt!676652 () Unit!33396)

(declare-fun choose!10805 (List!19334 List!19334) Unit!33396)

(assert (=> d!534817 (= lt!676652 (choose!10805 lt!676328 suffix!1421))))

(assert (=> d!534817 (= (lemmaConcatTwoListThenFirstIsPrefix!1191 lt!676328 suffix!1421) lt!676652)))

(declare-fun bs!403527 () Bool)

(assert (= bs!403527 d!534817))

(assert (=> bs!403527 m!2164329))

(assert (=> bs!403527 m!2164329))

(declare-fun m!2165165 () Bool)

(assert (=> bs!403527 m!2165165))

(declare-fun m!2165167 () Bool)

(assert (=> bs!403527 m!2165167))

(assert (=> b!1750816 d!534817))

(declare-fun b!1751468 () Bool)

(declare-fun e!1121117 () Option!3905)

(assert (=> b!1751468 (= e!1121117 None!3904)))

(declare-fun b!1751469 () Bool)

(declare-fun e!1121116 () Option!3905)

(assert (=> b!1751469 (= e!1121116 e!1121117)))

(declare-fun c!285569 () Bool)

(assert (=> b!1751469 (= c!285569 (and (is-Cons!19265 rules!3447) (not (= (tag!3790 (h!24666 rules!3447)) (tag!3790 (rule!5448 (_1!10848 lt!676330)))))))))

(declare-fun b!1751470 () Bool)

(declare-fun e!1121115 () Bool)

(declare-fun lt!676661 () Option!3905)

(assert (=> b!1751470 (= e!1121115 (= (tag!3790 (get!5842 lt!676661)) (tag!3790 (rule!5448 (_1!10848 lt!676330)))))))

(declare-fun d!534819 () Bool)

(declare-fun e!1121118 () Bool)

(assert (=> d!534819 e!1121118))

(declare-fun res!787877 () Bool)

(assert (=> d!534819 (=> res!787877 e!1121118)))

(declare-fun isEmpty!12148 (Option!3905) Bool)

(assert (=> d!534819 (= res!787877 (isEmpty!12148 lt!676661))))

(assert (=> d!534819 (= lt!676661 e!1121116)))

(declare-fun c!285568 () Bool)

(assert (=> d!534819 (= c!285568 (and (is-Cons!19265 rules!3447) (= (tag!3790 (h!24666 rules!3447)) (tag!3790 (rule!5448 (_1!10848 lt!676330))))))))

(assert (=> d!534819 (rulesInvariant!2738 thiss!24550 rules!3447)))

(assert (=> d!534819 (= (getRuleFromTag!490 thiss!24550 rules!3447 (tag!3790 (rule!5448 (_1!10848 lt!676330)))) lt!676661)))

(declare-fun b!1751471 () Bool)

(assert (=> b!1751471 (= e!1121118 e!1121115)))

(declare-fun res!787878 () Bool)

(assert (=> b!1751471 (=> (not res!787878) (not e!1121115))))

(assert (=> b!1751471 (= res!787878 (contains!3466 rules!3447 (get!5842 lt!676661)))))

(declare-fun b!1751472 () Bool)

(assert (=> b!1751472 (= e!1121116 (Some!3904 (h!24666 rules!3447)))))

(declare-fun b!1751473 () Bool)

(declare-fun lt!676660 () Unit!33396)

(declare-fun lt!676659 () Unit!33396)

(assert (=> b!1751473 (= lt!676660 lt!676659)))

(assert (=> b!1751473 (rulesInvariant!2738 thiss!24550 (t!162948 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!174 (LexerInterface!3069 Rule!6680 List!19335) Unit!33396)

(assert (=> b!1751473 (= lt!676659 (lemmaInvariantOnRulesThenOnTail!174 thiss!24550 (h!24666 rules!3447) (t!162948 rules!3447)))))

(assert (=> b!1751473 (= e!1121117 (getRuleFromTag!490 thiss!24550 (t!162948 rules!3447) (tag!3790 (rule!5448 (_1!10848 lt!676330)))))))

(assert (= (and d!534819 c!285568) b!1751472))

(assert (= (and d!534819 (not c!285568)) b!1751469))

(assert (= (and b!1751469 c!285569) b!1751473))

(assert (= (and b!1751469 (not c!285569)) b!1751468))

(assert (= (and d!534819 (not res!787877)) b!1751471))

(assert (= (and b!1751471 res!787878) b!1751470))

(declare-fun m!2165169 () Bool)

(assert (=> b!1751470 m!2165169))

(declare-fun m!2165171 () Bool)

(assert (=> d!534819 m!2165171))

(assert (=> d!534819 m!2164387))

(assert (=> b!1751471 m!2165169))

(assert (=> b!1751471 m!2165169))

(declare-fun m!2165173 () Bool)

(assert (=> b!1751471 m!2165173))

(declare-fun m!2165175 () Bool)

(assert (=> b!1751473 m!2165175))

(declare-fun m!2165177 () Bool)

(assert (=> b!1751473 m!2165177))

(declare-fun m!2165179 () Bool)

(assert (=> b!1751473 m!2165179))

(assert (=> b!1750816 d!534819))

(declare-fun b!1751477 () Bool)

(declare-fun lt!676662 () List!19334)

(declare-fun e!1121119 () Bool)

(assert (=> b!1751477 (= e!1121119 (or (not (= suffix!1421 Nil!19264)) (= lt!676662 lt!676328)))))

(declare-fun b!1751476 () Bool)

(declare-fun res!787879 () Bool)

(assert (=> b!1751476 (=> (not res!787879) (not e!1121119))))

(assert (=> b!1751476 (= res!787879 (= (size!15309 lt!676662) (+ (size!15309 lt!676328) (size!15309 suffix!1421))))))

(declare-fun b!1751475 () Bool)

(declare-fun e!1121120 () List!19334)

(assert (=> b!1751475 (= e!1121120 (Cons!19264 (h!24665 lt!676328) (++!5265 (t!162947 lt!676328) suffix!1421)))))

(declare-fun b!1751474 () Bool)

(assert (=> b!1751474 (= e!1121120 suffix!1421)))

(declare-fun d!534821 () Bool)

(assert (=> d!534821 e!1121119))

(declare-fun res!787880 () Bool)

(assert (=> d!534821 (=> (not res!787880) (not e!1121119))))

(assert (=> d!534821 (= res!787880 (= (content!2764 lt!676662) (set.union (content!2764 lt!676328) (content!2764 suffix!1421))))))

(assert (=> d!534821 (= lt!676662 e!1121120)))

(declare-fun c!285570 () Bool)

(assert (=> d!534821 (= c!285570 (is-Nil!19264 lt!676328))))

(assert (=> d!534821 (= (++!5265 lt!676328 suffix!1421) lt!676662)))

(assert (= (and d!534821 c!285570) b!1751474))

(assert (= (and d!534821 (not c!285570)) b!1751475))

(assert (= (and d!534821 res!787880) b!1751476))

(assert (= (and b!1751476 res!787879) b!1751477))

(declare-fun m!2165181 () Bool)

(assert (=> b!1751476 m!2165181))

(assert (=> b!1751476 m!2164803))

(declare-fun m!2165183 () Bool)

(assert (=> b!1751476 m!2165183))

(declare-fun m!2165185 () Bool)

(assert (=> b!1751475 m!2165185))

(declare-fun m!2165187 () Bool)

(assert (=> d!534821 m!2165187))

(assert (=> d!534821 m!2164811))

(declare-fun m!2165189 () Bool)

(assert (=> d!534821 m!2165189))

(assert (=> b!1750816 d!534821))

(declare-fun b!1751479 () Bool)

(declare-fun res!787883 () Bool)

(declare-fun e!1121123 () Bool)

(assert (=> b!1751479 (=> (not res!787883) (not e!1121123))))

(assert (=> b!1751479 (= res!787883 (= (head!4037 lt!676328) (head!4037 lt!676299)))))

(declare-fun b!1751478 () Bool)

(declare-fun e!1121121 () Bool)

(assert (=> b!1751478 (= e!1121121 e!1121123)))

(declare-fun res!787884 () Bool)

(assert (=> b!1751478 (=> (not res!787884) (not e!1121123))))

(assert (=> b!1751478 (= res!787884 (not (is-Nil!19264 lt!676299)))))

(declare-fun b!1751480 () Bool)

(assert (=> b!1751480 (= e!1121123 (isPrefix!1681 (tail!2614 lt!676328) (tail!2614 lt!676299)))))

(declare-fun d!534823 () Bool)

(declare-fun e!1121122 () Bool)

(assert (=> d!534823 e!1121122))

(declare-fun res!787881 () Bool)

(assert (=> d!534823 (=> res!787881 e!1121122)))

(declare-fun lt!676663 () Bool)

(assert (=> d!534823 (= res!787881 (not lt!676663))))

(assert (=> d!534823 (= lt!676663 e!1121121)))

(declare-fun res!787882 () Bool)

(assert (=> d!534823 (=> res!787882 e!1121121)))

(assert (=> d!534823 (= res!787882 (is-Nil!19264 lt!676328))))

(assert (=> d!534823 (= (isPrefix!1681 lt!676328 lt!676299) lt!676663)))

(declare-fun b!1751481 () Bool)

(assert (=> b!1751481 (= e!1121122 (>= (size!15309 lt!676299) (size!15309 lt!676328)))))

(assert (= (and d!534823 (not res!787882)) b!1751478))

(assert (= (and b!1751478 res!787884) b!1751479))

(assert (= (and b!1751479 res!787883) b!1751480))

(assert (= (and d!534823 (not res!787881)) b!1751481))

(assert (=> b!1751479 m!2164927))

(assert (=> b!1751479 m!2164897))

(assert (=> b!1751480 m!2164923))

(assert (=> b!1751480 m!2164901))

(assert (=> b!1751480 m!2164923))

(assert (=> b!1751480 m!2164901))

(declare-fun m!2165191 () Bool)

(assert (=> b!1751480 m!2165191))

(assert (=> b!1751481 m!2164905))

(assert (=> b!1751481 m!2164803))

(assert (=> b!1750816 d!534823))

(declare-fun b!1751482 () Bool)

(declare-fun e!1121126 () Bool)

(declare-fun lt!676664 () Option!3904)

(assert (=> b!1751482 (= e!1121126 (contains!3466 rules!3447 (rule!5448 (_1!10848 (get!5843 lt!676664)))))))

(declare-fun d!534825 () Bool)

(declare-fun e!1121125 () Bool)

(assert (=> d!534825 e!1121125))

(declare-fun res!787891 () Bool)

(assert (=> d!534825 (=> res!787891 e!1121125)))

(assert (=> d!534825 (= res!787891 (isEmpty!12146 lt!676664))))

(declare-fun e!1121124 () Option!3904)

(assert (=> d!534825 (= lt!676664 e!1121124)))

(declare-fun c!285571 () Bool)

(assert (=> d!534825 (= c!285571 (and (is-Cons!19265 rules!3447) (is-Nil!19265 (t!162948 rules!3447))))))

(declare-fun lt!676667 () Unit!33396)

(declare-fun lt!676666 () Unit!33396)

(assert (=> d!534825 (= lt!676667 lt!676666)))

(assert (=> d!534825 (isPrefix!1681 lt!676299 lt!676299)))

(assert (=> d!534825 (= lt!676666 (lemmaIsPrefixRefl!1111 lt!676299 lt!676299))))

(assert (=> d!534825 (rulesValidInductive!1148 thiss!24550 rules!3447)))

(assert (=> d!534825 (= (maxPrefix!1623 thiss!24550 rules!3447 lt!676299) lt!676664)))

(declare-fun b!1751483 () Bool)

(assert (=> b!1751483 (= e!1121125 e!1121126)))

(declare-fun res!787886 () Bool)

(assert (=> b!1751483 (=> (not res!787886) (not e!1121126))))

(assert (=> b!1751483 (= res!787886 (isDefined!3247 lt!676664))))

(declare-fun b!1751484 () Bool)

(declare-fun res!787889 () Bool)

(assert (=> b!1751484 (=> (not res!787889) (not e!1121126))))

(assert (=> b!1751484 (= res!787889 (matchR!2242 (regex!3440 (rule!5448 (_1!10848 (get!5843 lt!676664)))) (list!7801 (charsOf!2089 (_1!10848 (get!5843 lt!676664))))))))

(declare-fun b!1751485 () Bool)

(declare-fun res!787890 () Bool)

(assert (=> b!1751485 (=> (not res!787890) (not e!1121126))))

(assert (=> b!1751485 (= res!787890 (< (size!15309 (_2!10848 (get!5843 lt!676664))) (size!15309 lt!676299)))))

(declare-fun b!1751486 () Bool)

(declare-fun res!787887 () Bool)

(assert (=> b!1751486 (=> (not res!787887) (not e!1121126))))

(assert (=> b!1751486 (= res!787887 (= (value!107714 (_1!10848 (get!5843 lt!676664))) (apply!5241 (transformation!3440 (rule!5448 (_1!10848 (get!5843 lt!676664)))) (seqFromList!2410 (originalCharacters!4254 (_1!10848 (get!5843 lt!676664)))))))))

(declare-fun b!1751487 () Bool)

(declare-fun res!787888 () Bool)

(assert (=> b!1751487 (=> (not res!787888) (not e!1121126))))

(assert (=> b!1751487 (= res!787888 (= (++!5265 (list!7801 (charsOf!2089 (_1!10848 (get!5843 lt!676664)))) (_2!10848 (get!5843 lt!676664))) lt!676299))))

(declare-fun bm!110385 () Bool)

(declare-fun call!110390 () Option!3904)

(assert (=> bm!110385 (= call!110390 (maxPrefixOneRule!995 thiss!24550 (h!24666 rules!3447) lt!676299))))

(declare-fun b!1751488 () Bool)

(declare-fun res!787885 () Bool)

(assert (=> b!1751488 (=> (not res!787885) (not e!1121126))))

(assert (=> b!1751488 (= res!787885 (= (list!7801 (charsOf!2089 (_1!10848 (get!5843 lt!676664)))) (originalCharacters!4254 (_1!10848 (get!5843 lt!676664)))))))

(declare-fun b!1751489 () Bool)

(declare-fun lt!676668 () Option!3904)

(declare-fun lt!676665 () Option!3904)

(assert (=> b!1751489 (= e!1121124 (ite (and (is-None!3903 lt!676668) (is-None!3903 lt!676665)) None!3903 (ite (is-None!3903 lt!676665) lt!676668 (ite (is-None!3903 lt!676668) lt!676665 (ite (>= (size!15307 (_1!10848 (v!25346 lt!676668))) (size!15307 (_1!10848 (v!25346 lt!676665)))) lt!676668 lt!676665)))))))

(assert (=> b!1751489 (= lt!676668 call!110390)))

(assert (=> b!1751489 (= lt!676665 (maxPrefix!1623 thiss!24550 (t!162948 rules!3447) lt!676299))))

(declare-fun b!1751490 () Bool)

(assert (=> b!1751490 (= e!1121124 call!110390)))

(assert (= (and d!534825 c!285571) b!1751490))

(assert (= (and d!534825 (not c!285571)) b!1751489))

(assert (= (or b!1751490 b!1751489) bm!110385))

(assert (= (and d!534825 (not res!787891)) b!1751483))

(assert (= (and b!1751483 res!787886) b!1751488))

(assert (= (and b!1751488 res!787885) b!1751485))

(assert (= (and b!1751485 res!787890) b!1751487))

(assert (= (and b!1751487 res!787888) b!1751486))

(assert (= (and b!1751486 res!787887) b!1751484))

(assert (= (and b!1751484 res!787889) b!1751482))

(declare-fun m!2165193 () Bool)

(assert (=> bm!110385 m!2165193))

(declare-fun m!2165195 () Bool)

(assert (=> d!534825 m!2165195))

(declare-fun m!2165197 () Bool)

(assert (=> d!534825 m!2165197))

(declare-fun m!2165199 () Bool)

(assert (=> d!534825 m!2165199))

(assert (=> d!534825 m!2164963))

(declare-fun m!2165201 () Bool)

(assert (=> b!1751482 m!2165201))

(declare-fun m!2165203 () Bool)

(assert (=> b!1751482 m!2165203))

(assert (=> b!1751484 m!2165201))

(declare-fun m!2165205 () Bool)

(assert (=> b!1751484 m!2165205))

(assert (=> b!1751484 m!2165205))

(declare-fun m!2165207 () Bool)

(assert (=> b!1751484 m!2165207))

(assert (=> b!1751484 m!2165207))

(declare-fun m!2165209 () Bool)

(assert (=> b!1751484 m!2165209))

(assert (=> b!1751485 m!2165201))

(declare-fun m!2165211 () Bool)

(assert (=> b!1751485 m!2165211))

(assert (=> b!1751485 m!2164905))

(declare-fun m!2165213 () Bool)

(assert (=> b!1751483 m!2165213))

(assert (=> b!1751487 m!2165201))

(assert (=> b!1751487 m!2165205))

(assert (=> b!1751487 m!2165205))

(assert (=> b!1751487 m!2165207))

(assert (=> b!1751487 m!2165207))

(declare-fun m!2165215 () Bool)

(assert (=> b!1751487 m!2165215))

(declare-fun m!2165217 () Bool)

(assert (=> b!1751489 m!2165217))

(assert (=> b!1751486 m!2165201))

(declare-fun m!2165219 () Bool)

(assert (=> b!1751486 m!2165219))

(assert (=> b!1751486 m!2165219))

(declare-fun m!2165221 () Bool)

(assert (=> b!1751486 m!2165221))

(assert (=> b!1751488 m!2165201))

(assert (=> b!1751488 m!2165205))

(assert (=> b!1751488 m!2165205))

(assert (=> b!1751488 m!2165207))

(assert (=> b!1750816 d!534825))

(declare-fun d!534827 () Bool)

(assert (=> d!534827 (isPrefix!1681 lt!676289 (++!5265 lt!676289 (_2!10848 lt!676330)))))

(declare-fun lt!676669 () Unit!33396)

(assert (=> d!534827 (= lt!676669 (choose!10805 lt!676289 (_2!10848 lt!676330)))))

(assert (=> d!534827 (= (lemmaConcatTwoListThenFirstIsPrefix!1191 lt!676289 (_2!10848 lt!676330)) lt!676669)))

(declare-fun bs!403528 () Bool)

(assert (= bs!403528 d!534827))

(assert (=> bs!403528 m!2164325))

(assert (=> bs!403528 m!2164325))

(assert (=> bs!403528 m!2164327))

(declare-fun m!2165223 () Bool)

(assert (=> bs!403528 m!2165223))

(assert (=> b!1750816 d!534827))

(declare-fun d!534829 () Bool)

(assert (=> d!534829 (= (get!5843 lt!676295) (v!25346 lt!676295))))

(assert (=> b!1750816 d!534829))

(declare-fun d!534831 () Bool)

(assert (=> d!534831 (= (list!7801 lt!676338) (list!7803 (c!285452 lt!676338)))))

(declare-fun bs!403529 () Bool)

(assert (= bs!403529 d!534831))

(declare-fun m!2165225 () Bool)

(assert (=> bs!403529 m!2165225))

(assert (=> b!1750816 d!534831))

(declare-fun b!1751577 () Bool)

(declare-fun e!1121173 () Unit!33396)

(declare-fun Unit!33428 () Unit!33396)

(assert (=> b!1751577 (= e!1121173 Unit!33428)))

(declare-fun d!534833 () Bool)

(assert (=> d!534833 (isDefined!3247 (maxPrefix!1623 thiss!24550 rules!3447 (++!5265 lt!676328 suffix!1421)))))

(declare-fun lt!676799 () Unit!33396)

(assert (=> d!534833 (= lt!676799 e!1121173)))

(declare-fun c!285591 () Bool)

(assert (=> d!534833 (= c!285591 (isEmpty!12146 (maxPrefix!1623 thiss!24550 rules!3447 (++!5265 lt!676328 suffix!1421))))))

(declare-fun lt!676790 () Unit!33396)

(declare-fun lt!676786 () Unit!33396)

(assert (=> d!534833 (= lt!676790 lt!676786)))

(declare-fun e!1121172 () Bool)

(assert (=> d!534833 e!1121172))

(declare-fun res!787938 () Bool)

(assert (=> d!534833 (=> (not res!787938) (not e!1121172))))

(declare-fun lt!676791 () Token!6446)

(assert (=> d!534833 (= res!787938 (isDefined!3248 (getRuleFromTag!490 thiss!24550 rules!3447 (tag!3790 (rule!5448 lt!676791)))))))

(assert (=> d!534833 (= lt!676786 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!490 thiss!24550 rules!3447 lt!676328 lt!676791))))

(declare-fun lt!676794 () Unit!33396)

(declare-fun lt!676800 () Unit!33396)

(assert (=> d!534833 (= lt!676794 lt!676800)))

(declare-fun lt!676792 () List!19334)

(assert (=> d!534833 (isPrefix!1681 lt!676792 (++!5265 lt!676328 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!295 (List!19334 List!19334 List!19334) Unit!33396)

(assert (=> d!534833 (= lt!676800 (lemmaPrefixStaysPrefixWhenAddingToSuffix!295 lt!676792 lt!676328 suffix!1421))))

(assert (=> d!534833 (= lt!676792 (list!7801 (charsOf!2089 lt!676791)))))

(declare-fun lt!676789 () Unit!33396)

(declare-fun lt!676788 () Unit!33396)

(assert (=> d!534833 (= lt!676789 lt!676788)))

(declare-fun lt!676787 () List!19334)

(declare-fun lt!676798 () List!19334)

(assert (=> d!534833 (isPrefix!1681 lt!676787 (++!5265 lt!676787 lt!676798))))

(assert (=> d!534833 (= lt!676788 (lemmaConcatTwoListThenFirstIsPrefix!1191 lt!676787 lt!676798))))

(assert (=> d!534833 (= lt!676798 (_2!10848 (get!5843 (maxPrefix!1623 thiss!24550 rules!3447 lt!676328))))))

(assert (=> d!534833 (= lt!676787 (list!7801 (charsOf!2089 lt!676791)))))

(declare-datatypes ((List!19342 0))(
  ( (Nil!19272) (Cons!19272 (h!24673 Token!6446) (t!163033 List!19342)) )
))
(declare-fun head!4040 (List!19342) Token!6446)

(declare-datatypes ((IArray!12827 0))(
  ( (IArray!12828 (innerList!6471 List!19342)) )
))
(declare-datatypes ((Conc!6411 0))(
  ( (Node!6411 (left!15425 Conc!6411) (right!15755 Conc!6411) (csize!13052 Int) (cheight!6622 Int)) (Leaf!9352 (xs!9287 IArray!12827) (csize!13053 Int)) (Empty!6411) )
))
(declare-datatypes ((BalanceConc!12766 0))(
  ( (BalanceConc!12767 (c!285635 Conc!6411)) )
))
(declare-fun list!7806 (BalanceConc!12766) List!19342)

(declare-datatypes ((tuple2!18900 0))(
  ( (tuple2!18901 (_1!10852 BalanceConc!12766) (_2!10852 BalanceConc!12760)) )
))
(declare-fun lex!1434 (LexerInterface!3069 List!19335 BalanceConc!12760) tuple2!18900)

(assert (=> d!534833 (= lt!676791 (head!4040 (list!7806 (_1!10852 (lex!1434 thiss!24550 rules!3447 (seqFromList!2410 lt!676328))))))))

(assert (=> d!534833 (not (isEmpty!12141 rules!3447))))

(assert (=> d!534833 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!593 thiss!24550 rules!3447 lt!676328 suffix!1421) lt!676799)))

(declare-fun b!1751575 () Bool)

(assert (=> b!1751575 (= e!1121172 (= (rule!5448 lt!676791) (get!5842 (getRuleFromTag!490 thiss!24550 rules!3447 (tag!3790 (rule!5448 lt!676791))))))))

(declare-fun b!1751574 () Bool)

(declare-fun res!787937 () Bool)

(assert (=> b!1751574 (=> (not res!787937) (not e!1121172))))

(assert (=> b!1751574 (= res!787937 (matchR!2242 (regex!3440 (get!5842 (getRuleFromTag!490 thiss!24550 rules!3447 (tag!3790 (rule!5448 lt!676791))))) (list!7801 (charsOf!2089 lt!676791))))))

(declare-fun b!1751576 () Bool)

(declare-fun Unit!33429 () Unit!33396)

(assert (=> b!1751576 (= e!1121173 Unit!33429)))

(declare-fun lt!676785 () List!19334)

(assert (=> b!1751576 (= lt!676785 (++!5265 lt!676328 suffix!1421))))

(declare-fun lt!676795 () Unit!33396)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!303 (LexerInterface!3069 Rule!6680 List!19335 List!19334) Unit!33396)

(assert (=> b!1751576 (= lt!676795 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!303 thiss!24550 (rule!5448 lt!676791) rules!3447 lt!676785))))

(assert (=> b!1751576 (isEmpty!12146 (maxPrefixOneRule!995 thiss!24550 (rule!5448 lt!676791) lt!676785))))

(declare-fun lt!676793 () Unit!33396)

(assert (=> b!1751576 (= lt!676793 lt!676795)))

(declare-fun lt!676801 () List!19334)

(assert (=> b!1751576 (= lt!676801 (list!7801 (charsOf!2089 lt!676791)))))

(declare-fun lt!676797 () Unit!33396)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!299 (LexerInterface!3069 Rule!6680 List!19334 List!19334) Unit!33396)

(assert (=> b!1751576 (= lt!676797 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!299 thiss!24550 (rule!5448 lt!676791) lt!676801 (++!5265 lt!676328 suffix!1421)))))

(assert (=> b!1751576 (not (matchR!2242 (regex!3440 (rule!5448 lt!676791)) lt!676801))))

(declare-fun lt!676796 () Unit!33396)

(assert (=> b!1751576 (= lt!676796 lt!676797)))

(assert (=> b!1751576 false))

(assert (= (and d!534833 res!787938) b!1751574))

(assert (= (and b!1751574 res!787937) b!1751575))

(assert (= (and d!534833 c!285591) b!1751576))

(assert (= (and d!534833 (not c!285591)) b!1751577))

(declare-fun m!2165371 () Bool)

(assert (=> d!534833 m!2165371))

(declare-fun m!2165373 () Bool)

(assert (=> d!534833 m!2165373))

(declare-fun m!2165375 () Bool)

(assert (=> d!534833 m!2165375))

(declare-fun m!2165377 () Bool)

(assert (=> d!534833 m!2165377))

(declare-fun m!2165379 () Bool)

(assert (=> d!534833 m!2165379))

(assert (=> d!534833 m!2164329))

(declare-fun m!2165381 () Bool)

(assert (=> d!534833 m!2165381))

(declare-fun m!2165383 () Bool)

(assert (=> d!534833 m!2165383))

(assert (=> d!534833 m!2164409))

(declare-fun m!2165385 () Bool)

(assert (=> d!534833 m!2165385))

(assert (=> d!534833 m!2164329))

(assert (=> d!534833 m!2165383))

(declare-fun m!2165387 () Bool)

(assert (=> d!534833 m!2165387))

(assert (=> d!534833 m!2165375))

(declare-fun m!2165389 () Bool)

(assert (=> d!534833 m!2165389))

(declare-fun m!2165391 () Bool)

(assert (=> d!534833 m!2165391))

(declare-fun m!2165393 () Bool)

(assert (=> d!534833 m!2165393))

(declare-fun m!2165395 () Bool)

(assert (=> d!534833 m!2165395))

(assert (=> d!534833 m!2164329))

(assert (=> d!534833 m!2165391))

(assert (=> d!534833 m!2165391))

(declare-fun m!2165397 () Bool)

(assert (=> d!534833 m!2165397))

(assert (=> d!534833 m!2164409))

(assert (=> d!534833 m!2164469))

(assert (=> d!534833 m!2165371))

(declare-fun m!2165399 () Bool)

(assert (=> d!534833 m!2165399))

(assert (=> d!534833 m!2165395))

(declare-fun m!2165401 () Bool)

(assert (=> d!534833 m!2165401))

(declare-fun m!2165403 () Bool)

(assert (=> d!534833 m!2165403))

(assert (=> d!534833 m!2165379))

(declare-fun m!2165405 () Bool)

(assert (=> d!534833 m!2165405))

(assert (=> b!1751575 m!2165375))

(assert (=> b!1751575 m!2165375))

(declare-fun m!2165407 () Bool)

(assert (=> b!1751575 m!2165407))

(assert (=> b!1751574 m!2165371))

(assert (=> b!1751574 m!2165375))

(assert (=> b!1751574 m!2165407))

(assert (=> b!1751574 m!2165399))

(declare-fun m!2165409 () Bool)

(assert (=> b!1751574 m!2165409))

(assert (=> b!1751574 m!2165375))

(assert (=> b!1751574 m!2165371))

(assert (=> b!1751574 m!2165399))

(declare-fun m!2165411 () Bool)

(assert (=> b!1751576 m!2165411))

(assert (=> b!1751576 m!2165371))

(declare-fun m!2165413 () Bool)

(assert (=> b!1751576 m!2165413))

(assert (=> b!1751576 m!2165371))

(assert (=> b!1751576 m!2165399))

(assert (=> b!1751576 m!2164329))

(declare-fun m!2165415 () Bool)

(assert (=> b!1751576 m!2165415))

(assert (=> b!1751576 m!2165413))

(declare-fun m!2165417 () Bool)

(assert (=> b!1751576 m!2165417))

(assert (=> b!1751576 m!2164329))

(declare-fun m!2165419 () Bool)

(assert (=> b!1751576 m!2165419))

(assert (=> b!1750816 d!534833))

(declare-fun b!1751579 () Bool)

(declare-fun res!787941 () Bool)

(declare-fun e!1121176 () Bool)

(assert (=> b!1751579 (=> (not res!787941) (not e!1121176))))

(assert (=> b!1751579 (= res!787941 (= (head!4037 lt!676289) (head!4037 lt!676299)))))

(declare-fun b!1751578 () Bool)

(declare-fun e!1121174 () Bool)

(assert (=> b!1751578 (= e!1121174 e!1121176)))

(declare-fun res!787942 () Bool)

(assert (=> b!1751578 (=> (not res!787942) (not e!1121176))))

(assert (=> b!1751578 (= res!787942 (not (is-Nil!19264 lt!676299)))))

(declare-fun b!1751580 () Bool)

(assert (=> b!1751580 (= e!1121176 (isPrefix!1681 (tail!2614 lt!676289) (tail!2614 lt!676299)))))

(declare-fun d!534861 () Bool)

(declare-fun e!1121175 () Bool)

(assert (=> d!534861 e!1121175))

(declare-fun res!787939 () Bool)

(assert (=> d!534861 (=> res!787939 e!1121175)))

(declare-fun lt!676802 () Bool)

(assert (=> d!534861 (= res!787939 (not lt!676802))))

(assert (=> d!534861 (= lt!676802 e!1121174)))

(declare-fun res!787940 () Bool)

(assert (=> d!534861 (=> res!787940 e!1121174)))

(assert (=> d!534861 (= res!787940 (is-Nil!19264 lt!676289))))

(assert (=> d!534861 (= (isPrefix!1681 lt!676289 lt!676299) lt!676802)))

(declare-fun b!1751581 () Bool)

(assert (=> b!1751581 (= e!1121175 (>= (size!15309 lt!676299) (size!15309 lt!676289)))))

(assert (= (and d!534861 (not res!787940)) b!1751578))

(assert (= (and b!1751578 res!787942) b!1751579))

(assert (= (and b!1751579 res!787941) b!1751580))

(assert (= (and d!534861 (not res!787939)) b!1751581))

(assert (=> b!1751579 m!2164763))

(assert (=> b!1751579 m!2164897))

(assert (=> b!1751580 m!2164759))

(assert (=> b!1751580 m!2164901))

(assert (=> b!1751580 m!2164759))

(assert (=> b!1751580 m!2164901))

(declare-fun m!2165421 () Bool)

(assert (=> b!1751580 m!2165421))

(assert (=> b!1751581 m!2164905))

(assert (=> b!1751581 m!2164449))

(assert (=> b!1750816 d!534861))

(declare-fun d!534863 () Bool)

(declare-fun e!1121179 () Bool)

(assert (=> d!534863 e!1121179))

(declare-fun res!787947 () Bool)

(assert (=> d!534863 (=> (not res!787947) (not e!1121179))))

(assert (=> d!534863 (= res!787947 (isDefined!3248 (getRuleFromTag!490 thiss!24550 rules!3447 (tag!3790 (rule!5448 (_1!10848 lt!676330))))))))

(declare-fun lt!676805 () Unit!33396)

(declare-fun choose!10808 (LexerInterface!3069 List!19335 List!19334 Token!6446) Unit!33396)

(assert (=> d!534863 (= lt!676805 (choose!10808 thiss!24550 rules!3447 lt!676299 (_1!10848 lt!676330)))))

(assert (=> d!534863 (rulesInvariant!2738 thiss!24550 rules!3447)))

(assert (=> d!534863 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!490 thiss!24550 rules!3447 lt!676299 (_1!10848 lt!676330)) lt!676805)))

(declare-fun b!1751586 () Bool)

(declare-fun res!787948 () Bool)

(assert (=> b!1751586 (=> (not res!787948) (not e!1121179))))

(assert (=> b!1751586 (= res!787948 (matchR!2242 (regex!3440 (get!5842 (getRuleFromTag!490 thiss!24550 rules!3447 (tag!3790 (rule!5448 (_1!10848 lt!676330)))))) (list!7801 (charsOf!2089 (_1!10848 lt!676330)))))))

(declare-fun b!1751587 () Bool)

(assert (=> b!1751587 (= e!1121179 (= (rule!5448 (_1!10848 lt!676330)) (get!5842 (getRuleFromTag!490 thiss!24550 rules!3447 (tag!3790 (rule!5448 (_1!10848 lt!676330)))))))))

(assert (= (and d!534863 res!787947) b!1751586))

(assert (= (and b!1751586 res!787948) b!1751587))

(assert (=> d!534863 m!2164339))

(assert (=> d!534863 m!2164339))

(declare-fun m!2165423 () Bool)

(assert (=> d!534863 m!2165423))

(declare-fun m!2165425 () Bool)

(assert (=> d!534863 m!2165425))

(assert (=> d!534863 m!2164387))

(assert (=> b!1751586 m!2164367))

(declare-fun m!2165427 () Bool)

(assert (=> b!1751586 m!2165427))

(assert (=> b!1751586 m!2164337))

(assert (=> b!1751586 m!2164367))

(assert (=> b!1751586 m!2164339))

(assert (=> b!1751586 m!2164337))

(assert (=> b!1751586 m!2164339))

(declare-fun m!2165429 () Bool)

(assert (=> b!1751586 m!2165429))

(assert (=> b!1751587 m!2164339))

(assert (=> b!1751587 m!2164339))

(assert (=> b!1751587 m!2165429))

(assert (=> b!1750816 d!534863))

(declare-fun d!534865 () Bool)

(assert (=> d!534865 (= (isDefined!3248 lt!676315) (not (isEmpty!12148 lt!676315)))))

(declare-fun bs!403533 () Bool)

(assert (= bs!403533 d!534865))

(declare-fun m!2165431 () Bool)

(assert (=> bs!403533 m!2165431))

(assert (=> b!1750816 d!534865))

(assert (=> b!1750816 d!534667))

(declare-fun d!534867 () Bool)

(assert (=> d!534867 (= (apply!5241 (transformation!3440 (rule!5448 (_1!10848 lt!676330))) lt!676338) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338))))

(declare-fun b_lambda!56297 () Bool)

(assert (=> (not b_lambda!56297) (not d!534867)))

(assert (=> d!534867 t!162941))

(declare-fun b_and!131065 () Bool)

(assert (= b_and!131053 (and (=> t!162941 result!126348) b_and!131065)))

(assert (=> d!534867 t!162943))

(declare-fun b_and!131067 () Bool)

(assert (= b_and!131055 (and (=> t!162943 result!126352) b_and!131067)))

(assert (=> d!534867 t!162945))

(declare-fun b_and!131069 () Bool)

(assert (= b_and!131057 (and (=> t!162945 result!126354) b_and!131069)))

(assert (=> d!534867 m!2164377))

(assert (=> b!1750795 d!534867))

(declare-fun b!1751594 () Bool)

(declare-fun e!1121184 () Bool)

(assert (=> b!1751594 (= e!1121184 true)))

(declare-fun d!534869 () Bool)

(assert (=> d!534869 e!1121184))

(assert (= d!534869 b!1751594))

(declare-fun lambda!69875 () Int)

(declare-fun order!12137 () Int)

(declare-fun dynLambda!9211 (Int Int) Int)

(assert (=> b!1751594 (< (dynLambda!9201 order!12125 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) (dynLambda!9211 order!12137 lambda!69875))))

(assert (=> b!1751594 (< (dynLambda!9203 order!12129 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) (dynLambda!9211 order!12137 lambda!69875))))

(assert (=> d!534869 (= (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (seqFromList!2410 (originalCharacters!4254 (_1!10848 lt!676330)))))))

(declare-fun lt!676808 () Unit!33396)

(declare-fun Forall2of!106 (Int BalanceConc!12760 BalanceConc!12760) Unit!33396)

(assert (=> d!534869 (= lt!676808 (Forall2of!106 lambda!69875 lt!676338 (seqFromList!2410 (originalCharacters!4254 (_1!10848 lt!676330)))))))

(assert (=> d!534869 (= (list!7801 lt!676338) (list!7801 (seqFromList!2410 (originalCharacters!4254 (_1!10848 lt!676330)))))))

(assert (=> d!534869 (= (lemmaEqSameImage!353 (transformation!3440 (rule!5448 (_1!10848 lt!676330))) lt!676338 (seqFromList!2410 (originalCharacters!4254 (_1!10848 lt!676330)))) lt!676808)))

(declare-fun b_lambda!56299 () Bool)

(assert (=> (not b_lambda!56299) (not d!534869)))

(assert (=> d!534869 t!162941))

(declare-fun b_and!131071 () Bool)

(assert (= b_and!131065 (and (=> t!162941 result!126348) b_and!131071)))

(assert (=> d!534869 t!162943))

(declare-fun b_and!131073 () Bool)

(assert (= b_and!131067 (and (=> t!162943 result!126352) b_and!131073)))

(assert (=> d!534869 t!162945))

(declare-fun b_and!131075 () Bool)

(assert (= b_and!131069 (and (=> t!162945 result!126354) b_and!131075)))

(declare-fun b_lambda!56301 () Bool)

(assert (=> (not b_lambda!56301) (not d!534869)))

(declare-fun t!162989 () Bool)

(declare-fun tb!105077 () Bool)

(assert (=> (and b!1750838 (= (toValue!4955 (transformation!3440 (h!24666 rules!3447))) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162989) tb!105077))

(declare-fun result!126396 () Bool)

(assert (=> tb!105077 (= result!126396 (inv!21 (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (seqFromList!2410 (originalCharacters!4254 (_1!10848 lt!676330))))))))

(declare-fun m!2165433 () Bool)

(assert (=> tb!105077 m!2165433))

(assert (=> d!534869 t!162989))

(declare-fun b_and!131077 () Bool)

(assert (= b_and!131071 (and (=> t!162989 result!126396) b_and!131077)))

(declare-fun tb!105079 () Bool)

(declare-fun t!162991 () Bool)

(assert (=> (and b!1750815 (= (toValue!4955 (transformation!3440 rule!422)) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162991) tb!105079))

(declare-fun result!126398 () Bool)

(assert (= result!126398 result!126396))

(assert (=> d!534869 t!162991))

(declare-fun b_and!131079 () Bool)

(assert (= b_and!131073 (and (=> t!162991 result!126398) b_and!131079)))

(declare-fun t!162993 () Bool)

(declare-fun tb!105081 () Bool)

(assert (=> (and b!1750801 (= (toValue!4955 (transformation!3440 (rule!5448 token!523))) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162993) tb!105081))

(declare-fun result!126400 () Bool)

(assert (= result!126400 result!126396))

(assert (=> d!534869 t!162993))

(declare-fun b_and!131081 () Bool)

(assert (= b_and!131075 (and (=> t!162993 result!126400) b_and!131081)))

(assert (=> d!534869 m!2164377))

(assert (=> d!534869 m!2164427))

(declare-fun m!2165435 () Bool)

(assert (=> d!534869 m!2165435))

(assert (=> d!534869 m!2164427))

(declare-fun m!2165437 () Bool)

(assert (=> d!534869 m!2165437))

(assert (=> d!534869 m!2164343))

(assert (=> d!534869 m!2164427))

(declare-fun m!2165439 () Bool)

(assert (=> d!534869 m!2165439))

(assert (=> b!1750795 d!534869))

(declare-fun d!534871 () Bool)

(assert (=> d!534871 (= (size!15307 (_1!10848 lt!676330)) (size!15309 (originalCharacters!4254 (_1!10848 lt!676330))))))

(declare-fun Unit!33430 () Unit!33396)

(assert (=> d!534871 (= (lemmaCharactersSize!500 (_1!10848 lt!676330)) Unit!33430)))

(declare-fun bs!403534 () Bool)

(assert (= bs!403534 d!534871))

(declare-fun m!2165441 () Bool)

(assert (=> bs!403534 m!2165441))

(assert (=> b!1750795 d!534871))

(declare-fun d!534873 () Bool)

(assert (=> d!534873 (= (seqFromList!2410 (originalCharacters!4254 (_1!10848 lt!676330))) (fromListB!1093 (originalCharacters!4254 (_1!10848 lt!676330))))))

(declare-fun bs!403535 () Bool)

(assert (= bs!403535 d!534873))

(declare-fun m!2165443 () Bool)

(assert (=> bs!403535 m!2165443))

(assert (=> b!1750795 d!534873))

(declare-fun d!534875 () Bool)

(declare-fun lt!676809 () Int)

(assert (=> d!534875 (= lt!676809 (size!15309 (list!7801 lt!676338)))))

(assert (=> d!534875 (= lt!676809 (size!15313 (c!285452 lt!676338)))))

(assert (=> d!534875 (= (size!15308 lt!676338) lt!676809)))

(declare-fun bs!403536 () Bool)

(assert (= bs!403536 d!534875))

(assert (=> bs!403536 m!2164343))

(assert (=> bs!403536 m!2164343))

(declare-fun m!2165445 () Bool)

(assert (=> bs!403536 m!2165445))

(declare-fun m!2165447 () Bool)

(assert (=> bs!403536 m!2165447))

(assert (=> b!1750795 d!534875))

(declare-fun b!1751605 () Bool)

(declare-fun e!1121188 () Bool)

(assert (=> b!1751605 (= e!1121188 tp_is_empty!7779)))

(declare-fun b!1751608 () Bool)

(declare-fun tp!498133 () Bool)

(declare-fun tp!498135 () Bool)

(assert (=> b!1751608 (= e!1121188 (and tp!498133 tp!498135))))

(declare-fun b!1751607 () Bool)

(declare-fun tp!498137 () Bool)

(assert (=> b!1751607 (= e!1121188 tp!498137)))

(assert (=> b!1750830 (= tp!498067 e!1121188)))

(declare-fun b!1751606 () Bool)

(declare-fun tp!498136 () Bool)

(declare-fun tp!498134 () Bool)

(assert (=> b!1751606 (= e!1121188 (and tp!498136 tp!498134))))

(assert (= (and b!1750830 (is-ElementMatch!4768 (regex!3440 rule!422))) b!1751605))

(assert (= (and b!1750830 (is-Concat!8299 (regex!3440 rule!422))) b!1751606))

(assert (= (and b!1750830 (is-Star!4768 (regex!3440 rule!422))) b!1751607))

(assert (= (and b!1750830 (is-Union!4768 (regex!3440 rule!422))) b!1751608))

(declare-fun b!1751609 () Bool)

(declare-fun e!1121189 () Bool)

(assert (=> b!1751609 (= e!1121189 tp_is_empty!7779)))

(declare-fun b!1751612 () Bool)

(declare-fun tp!498138 () Bool)

(declare-fun tp!498140 () Bool)

(assert (=> b!1751612 (= e!1121189 (and tp!498138 tp!498140))))

(declare-fun b!1751611 () Bool)

(declare-fun tp!498142 () Bool)

(assert (=> b!1751611 (= e!1121189 tp!498142)))

(assert (=> b!1750835 (= tp!498065 e!1121189)))

(declare-fun b!1751610 () Bool)

(declare-fun tp!498141 () Bool)

(declare-fun tp!498139 () Bool)

(assert (=> b!1751610 (= e!1121189 (and tp!498141 tp!498139))))

(assert (= (and b!1750835 (is-ElementMatch!4768 (regex!3440 (h!24666 rules!3447)))) b!1751609))

(assert (= (and b!1750835 (is-Concat!8299 (regex!3440 (h!24666 rules!3447)))) b!1751610))

(assert (= (and b!1750835 (is-Star!4768 (regex!3440 (h!24666 rules!3447)))) b!1751611))

(assert (= (and b!1750835 (is-Union!4768 (regex!3440 (h!24666 rules!3447)))) b!1751612))

(declare-fun b!1751623 () Bool)

(declare-fun b_free!48343 () Bool)

(declare-fun b_next!49047 () Bool)

(assert (=> b!1751623 (= b_free!48343 (not b_next!49047))))

(declare-fun tb!105083 () Bool)

(declare-fun t!162995 () Bool)

(assert (=> (and b!1751623 (= (toValue!4955 (transformation!3440 (h!24666 (t!162948 rules!3447)))) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162995) tb!105083))

(declare-fun result!126406 () Bool)

(assert (= result!126406 result!126348))

(assert (=> b!1750825 t!162995))

(assert (=> d!534869 t!162995))

(declare-fun t!162997 () Bool)

(declare-fun tb!105085 () Bool)

(assert (=> (and b!1751623 (= (toValue!4955 (transformation!3440 (h!24666 (t!162948 rules!3447)))) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162997) tb!105085))

(declare-fun result!126408 () Bool)

(assert (= result!126408 result!126396))

(assert (=> d!534869 t!162997))

(assert (=> d!534867 t!162995))

(declare-fun tb!105087 () Bool)

(declare-fun t!162999 () Bool)

(assert (=> (and b!1751623 (= (toValue!4955 (transformation!3440 (h!24666 (t!162948 rules!3447)))) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!162999) tb!105087))

(declare-fun result!126410 () Bool)

(assert (= result!126410 result!126390))

(assert (=> d!534809 t!162999))

(assert (=> d!534673 t!162995))

(declare-fun b_and!131083 () Bool)

(declare-fun tp!498151 () Bool)

(assert (=> b!1751623 (= tp!498151 (and (=> t!162995 result!126406) (=> t!162999 result!126410) (=> t!162997 result!126408) b_and!131083))))

(declare-fun b_free!48345 () Bool)

(declare-fun b_next!49049 () Bool)

(assert (=> b!1751623 (= b_free!48345 (not b_next!49049))))

(declare-fun tb!105089 () Bool)

(declare-fun t!163001 () Bool)

(assert (=> (and b!1751623 (= (toChars!4814 (transformation!3440 (h!24666 (t!162948 rules!3447)))) (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!163001) tb!105089))

(declare-fun result!126412 () Bool)

(assert (= result!126412 result!126334))

(assert (=> b!1750814 t!163001))

(declare-fun tb!105091 () Bool)

(declare-fun t!163003 () Bool)

(assert (=> (and b!1751623 (= (toChars!4814 (transformation!3440 (h!24666 (t!162948 rules!3447)))) (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330))))) t!163003) tb!105091))

(declare-fun result!126414 () Bool)

(assert (= result!126414 result!126342))

(assert (=> b!1750825 t!163003))

(declare-fun tb!105093 () Bool)

(declare-fun t!163005 () Bool)

(assert (=> (and b!1751623 (= (toChars!4814 (transformation!3440 (h!24666 (t!162948 rules!3447)))) (toChars!4814 (transformation!3440 (rule!5448 token!523)))) t!163005) tb!105093))

(declare-fun result!126416 () Bool)

(assert (= result!126416 result!126378))

(assert (=> d!534755 t!163005))

(assert (=> b!1751020 t!163005))

(assert (=> d!534673 t!163003))

(assert (=> d!534667 t!163001))

(declare-fun b_and!131085 () Bool)

(declare-fun tp!498152 () Bool)

(assert (=> b!1751623 (= tp!498152 (and (=> t!163003 result!126414) (=> t!163005 result!126416) (=> t!163001 result!126412) b_and!131085))))

(declare-fun e!1121201 () Bool)

(assert (=> b!1751623 (= e!1121201 (and tp!498151 tp!498152))))

(declare-fun b!1751622 () Bool)

(declare-fun tp!498154 () Bool)

(declare-fun e!1121199 () Bool)

(assert (=> b!1751622 (= e!1121199 (and tp!498154 (inv!24995 (tag!3790 (h!24666 (t!162948 rules!3447)))) (inv!24998 (transformation!3440 (h!24666 (t!162948 rules!3447)))) e!1121201))))

(declare-fun b!1751621 () Bool)

(declare-fun e!1121200 () Bool)

(declare-fun tp!498153 () Bool)

(assert (=> b!1751621 (= e!1121200 (and e!1121199 tp!498153))))

(assert (=> b!1750802 (= tp!498068 e!1121200)))

(assert (= b!1751622 b!1751623))

(assert (= b!1751621 b!1751622))

(assert (= (and b!1750802 (is-Cons!19265 (t!162948 rules!3447))) b!1751621))

(declare-fun m!2165449 () Bool)

(assert (=> b!1751622 m!2165449))

(declare-fun m!2165451 () Bool)

(assert (=> b!1751622 m!2165451))

(declare-fun b!1751628 () Bool)

(declare-fun e!1121204 () Bool)

(declare-fun tp!498157 () Bool)

(assert (=> b!1751628 (= e!1121204 (and tp_is_empty!7779 tp!498157))))

(assert (=> b!1750813 (= tp!498074 e!1121204)))

(assert (= (and b!1750813 (is-Cons!19264 (originalCharacters!4254 token!523))) b!1751628))

(declare-fun e!1121210 () Bool)

(declare-fun tp!498164 () Bool)

(declare-fun b!1751637 () Bool)

(declare-fun tp!498166 () Bool)

(assert (=> b!1751637 (= e!1121210 (and (inv!25000 (left!15420 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338))))) tp!498166 (inv!25000 (right!15750 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338))))) tp!498164))))

(declare-fun b!1751639 () Bool)

(declare-fun e!1121209 () Bool)

(declare-fun tp!498165 () Bool)

(assert (=> b!1751639 (= e!1121209 tp!498165)))

(declare-fun b!1751638 () Bool)

(declare-fun inv!25010 (IArray!12821) Bool)

(assert (=> b!1751638 (= e!1121210 (and (inv!25010 (xs!9284 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338))))) e!1121209))))

(assert (=> b!1750856 (= tp!498080 (and (inv!25000 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338)))) e!1121210))))

(assert (= (and b!1750856 (is-Node!6408 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338))))) b!1751637))

(assert (= b!1751638 b!1751639))

(assert (= (and b!1750856 (is-Leaf!9349 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (dynLambda!9205 (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) lt!676338))))) b!1751638))

(declare-fun m!2165453 () Bool)

(assert (=> b!1751637 m!2165453))

(declare-fun m!2165455 () Bool)

(assert (=> b!1751637 m!2165455))

(declare-fun m!2165457 () Bool)

(assert (=> b!1751638 m!2165457))

(assert (=> b!1750856 m!2164317))

(declare-fun b!1751642 () Bool)

(declare-fun e!1121211 () Bool)

(assert (=> b!1751642 (= e!1121211 tp_is_empty!7779)))

(declare-fun b!1751645 () Bool)

(declare-fun tp!498167 () Bool)

(declare-fun tp!498169 () Bool)

(assert (=> b!1751645 (= e!1121211 (and tp!498167 tp!498169))))

(declare-fun b!1751644 () Bool)

(declare-fun tp!498171 () Bool)

(assert (=> b!1751644 (= e!1121211 tp!498171)))

(assert (=> b!1750839 (= tp!498071 e!1121211)))

(declare-fun b!1751643 () Bool)

(declare-fun tp!498170 () Bool)

(declare-fun tp!498168 () Bool)

(assert (=> b!1751643 (= e!1121211 (and tp!498170 tp!498168))))

(assert (= (and b!1750839 (is-ElementMatch!4768 (regex!3440 (rule!5448 token!523)))) b!1751642))

(assert (= (and b!1750839 (is-Concat!8299 (regex!3440 (rule!5448 token!523)))) b!1751643))

(assert (= (and b!1750839 (is-Star!4768 (regex!3440 (rule!5448 token!523)))) b!1751644))

(assert (= (and b!1750839 (is-Union!4768 (regex!3440 (rule!5448 token!523)))) b!1751645))

(declare-fun b!1751648 () Bool)

(declare-fun e!1121214 () Bool)

(declare-fun tp!498172 () Bool)

(assert (=> b!1751648 (= e!1121214 (and tp_is_empty!7779 tp!498172))))

(assert (=> b!1750827 (= tp!498073 e!1121214)))

(assert (= (and b!1750827 (is-Cons!19264 (t!162947 suffix!1421))) b!1751648))

(declare-fun e!1121218 () Bool)

(declare-fun tp!498175 () Bool)

(declare-fun b!1751651 () Bool)

(declare-fun tp!498173 () Bool)

(assert (=> b!1751651 (= e!1121218 (and (inv!25000 (left!15420 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (value!107714 (_1!10848 lt!676330)))))) tp!498175 (inv!25000 (right!15750 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (value!107714 (_1!10848 lt!676330)))))) tp!498173))))

(declare-fun b!1751653 () Bool)

(declare-fun e!1121217 () Bool)

(declare-fun tp!498174 () Bool)

(assert (=> b!1751653 (= e!1121217 tp!498174)))

(declare-fun b!1751652 () Bool)

(assert (=> b!1751652 (= e!1121218 (and (inv!25010 (xs!9284 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (value!107714 (_1!10848 lt!676330)))))) e!1121217))))

(assert (=> b!1750855 (= tp!498079 (and (inv!25000 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (value!107714 (_1!10848 lt!676330))))) e!1121218))))

(assert (= (and b!1750855 (is-Node!6408 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (value!107714 (_1!10848 lt!676330)))))) b!1751651))

(assert (= b!1751652 b!1751653))

(assert (= (and b!1750855 (is-Leaf!9349 (c!285452 (dynLambda!9204 (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))) (value!107714 (_1!10848 lt!676330)))))) b!1751652))

(declare-fun m!2165459 () Bool)

(assert (=> b!1751651 m!2165459))

(declare-fun m!2165461 () Bool)

(assert (=> b!1751651 m!2165461))

(declare-fun m!2165463 () Bool)

(assert (=> b!1751652 m!2165463))

(assert (=> b!1750855 m!2164313))

(declare-fun b_lambda!56303 () Bool)

(assert (= b_lambda!56269 (or (and b!1750838 b_free!48321 (= (toChars!4814 (transformation!3440 (h!24666 rules!3447))) (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))))) (and b!1750815 b_free!48325 (= (toChars!4814 (transformation!3440 rule!422)) (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))))) (and b!1750801 b_free!48329 (= (toChars!4814 (transformation!3440 (rule!5448 token!523))) (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))))) (and b!1751623 b_free!48345 (= (toChars!4814 (transformation!3440 (h!24666 (t!162948 rules!3447)))) (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))))) b_lambda!56303)))

(declare-fun b_lambda!56305 () Bool)

(assert (= b_lambda!56281 (or (and b!1750838 b_free!48321 (= (toChars!4814 (transformation!3440 (h!24666 rules!3447))) (toChars!4814 (transformation!3440 (rule!5448 token!523))))) (and b!1750815 b_free!48325 (= (toChars!4814 (transformation!3440 rule!422)) (toChars!4814 (transformation!3440 (rule!5448 token!523))))) (and b!1750801 b_free!48329) (and b!1751623 b_free!48345 (= (toChars!4814 (transformation!3440 (h!24666 (t!162948 rules!3447)))) (toChars!4814 (transformation!3440 (rule!5448 token!523))))) b_lambda!56305)))

(declare-fun b_lambda!56307 () Bool)

(assert (= b_lambda!56273 (or (and b!1750838 b_free!48319 (= (toValue!4955 (transformation!3440 (h!24666 rules!3447))) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))))) (and b!1750815 b_free!48323 (= (toValue!4955 (transformation!3440 rule!422)) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))))) (and b!1750801 b_free!48327 (= (toValue!4955 (transformation!3440 (rule!5448 token!523))) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))))) (and b!1751623 b_free!48343 (= (toValue!4955 (transformation!3440 (h!24666 (t!162948 rules!3447)))) (toValue!4955 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))))) b_lambda!56307)))

(declare-fun b_lambda!56309 () Bool)

(assert (= b_lambda!56271 (or (and b!1750838 b_free!48321 (= (toChars!4814 (transformation!3440 (h!24666 rules!3447))) (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))))) (and b!1750815 b_free!48325 (= (toChars!4814 (transformation!3440 rule!422)) (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))))) (and b!1750801 b_free!48329 (= (toChars!4814 (transformation!3440 (rule!5448 token!523))) (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))))) (and b!1751623 b_free!48345 (= (toChars!4814 (transformation!3440 (h!24666 (t!162948 rules!3447)))) (toChars!4814 (transformation!3440 (rule!5448 (_1!10848 lt!676330)))))) b_lambda!56309)))

(declare-fun b_lambda!56311 () Bool)

(assert (= b_lambda!56289 (or (and b!1750838 b_free!48321 (= (toChars!4814 (transformation!3440 (h!24666 rules!3447))) (toChars!4814 (transformation!3440 (rule!5448 token!523))))) (and b!1750815 b_free!48325 (= (toChars!4814 (transformation!3440 rule!422)) (toChars!4814 (transformation!3440 (rule!5448 token!523))))) (and b!1750801 b_free!48329) (and b!1751623 b_free!48345 (= (toChars!4814 (transformation!3440 (h!24666 (t!162948 rules!3447)))) (toChars!4814 (transformation!3440 (rule!5448 token!523))))) b_lambda!56311)))

(push 1)

(assert (not b!1751297))

(assert (not b!1750856))

(assert (not d!534717))

(assert (not b!1751266))

(assert (not b!1751485))

(assert (not d!534681))

(assert b_and!131045)

(assert (not b!1751089))

(assert (not d!534767))

(assert (not d!534817))

(assert (not b!1751482))

(assert (not d!534745))

(assert (not bm!110377))

(assert (not b!1751290))

(assert (not b!1751109))

(assert (not d!534691))

(assert (not b_next!49049))

(assert (not d!534689))

(assert (not b!1751637))

(assert (not d!534743))

(assert b_and!131043)

(assert b_and!131077)

(assert (not b!1751282))

(assert (not b!1751268))

(assert (not d!534699))

(assert (not b!1751148))

(assert (not b!1751333))

(assert (not b_next!49023))

(assert (not b_lambda!56303))

(assert (not b!1751607))

(assert b_and!131083)

(assert (not b!1751048))

(assert (not b!1751471))

(assert (not b!1751473))

(assert (not b!1751043))

(assert (not b!1751329))

(assert (not d!534749))

(assert (not bm!110369))

(assert (not d!534709))

(assert (not d!534729))

(assert (not b!1751373))

(assert (not b!1751057))

(assert (not b_lambda!56307))

(assert (not b!1751218))

(assert (not d!534815))

(assert (not b_next!49025))

(assert (not b!1751574))

(assert (not d!534673))

(assert (not b!1751487))

(assert (not b!1751652))

(assert (not b!1751449))

(assert (not d!534679))

(assert (not b!1751139))

(assert (not d!534751))

(assert (not b!1751135))

(assert (not b!1751372))

(assert (not b!1751015))

(assert (not b!1751091))

(assert (not b!1751263))

(assert (not b!1751046))

(assert (not b!1751138))

(assert (not d!534863))

(assert (not b!1751267))

(assert (not b!1751439))

(assert (not b!1751356))

(assert (not b!1751470))

(assert (not b!1751258))

(assert (not b!1751305))

(assert (not b!1751045))

(assert (not b_lambda!56293))

(assert (not d!534871))

(assert (not b!1751479))

(assert (not d!534773))

(assert (not b_lambda!56301))

(assert (not b!1751371))

(assert (not b!1751475))

(assert (not b!1751587))

(assert (not b!1751436))

(assert (not b_next!49029))

(assert (not d!534805))

(assert (not b!1751644))

(assert (not b!1751271))

(assert (not d!534777))

(assert (not b!1750855))

(assert (not b!1751192))

(assert (not b!1751437))

(assert (not b_next!49047))

(assert (not b!1751622))

(assert (not d!534711))

(assert (not b!1751193))

(assert (not b!1751118))

(assert (not b!1751351))

(assert (not d!534695))

(assert (not b!1751275))

(assert (not b_lambda!56305))

(assert (not d!534771))

(assert (not b!1751433))

(assert (not tb!105059))

(assert (not b!1751055))

(assert (not b!1751648))

(assert (not d!534875))

(assert (not b!1751096))

(assert (not b!1751330))

(assert (not d!534869))

(assert (not bm!110380))

(assert (not b!1751643))

(assert (not d!534685))

(assert (not d!534825))

(assert (not b!1751257))

(assert (not b!1751216))

(assert (not b!1751611))

(assert (not b!1751040))

(assert (not b_lambda!56285))

(assert (not b_lambda!56311))

(assert (not d!534647))

(assert (not b!1751364))

(assert (not b!1751575))

(assert (not b!1751581))

(assert (not b!1751576))

(assert (not b!1751181))

(assert b_and!131079)

(assert (not b!1751621))

(assert (not b!1751450))

(assert (not b!1751645))

(assert (not b!1751217))

(assert (not d!534775))

(assert (not b!1751355))

(assert (not bm!110383))

(assert (not d!534659))

(assert tp_is_empty!7779)

(assert (not b_next!49027))

(assert (not b!1751110))

(assert (not d!534765))

(assert (not b!1751480))

(assert (not d!534755))

(assert (not b_lambda!56309))

(assert (not d!534665))

(assert (not b!1751447))

(assert b_and!131081)

(assert (not b!1751296))

(assert (not d!534737))

(assert (not b!1751276))

(assert (not d!534719))

(assert (not b!1751628))

(assert (not b!1751213))

(assert (not d!534701))

(assert (not b!1751483))

(assert (not b!1751438))

(assert (not b!1751140))

(assert (not d!534741))

(assert (not b!1751108))

(assert (not b!1751133))

(assert (not bm!110385))

(assert (not d!534653))

(assert (not d!534759))

(assert (not d!534827))

(assert (not b!1751334))

(assert (not b!1751295))

(assert (not b!1751302))

(assert (not d!534663))

(assert (not b!1751210))

(assert (not b!1751099))

(assert (not d!534807))

(assert (not b!1751223))

(assert (not d!534821))

(assert (not b!1751354))

(assert (not b!1751484))

(assert (not d!534645))

(assert (not bm!110376))

(assert (not b!1751639))

(assert (not b!1751292))

(assert (not b!1751608))

(assert (not d!534635))

(assert (not b!1751105))

(assert (not b!1751486))

(assert (not b!1751129))

(assert (not d!534873))

(assert (not d!534811))

(assert (not b!1751440))

(assert (not b_next!49031))

(assert (not b!1751612))

(assert (not b!1751361))

(assert (not b!1751272))

(assert (not b!1751285))

(assert (not bm!110368))

(assert (not tb!105077))

(assert (not b!1751580))

(assert (not b!1751586))

(assert (not bm!110374))

(assert (not bm!110370))

(assert (not d!534703))

(assert (not d!534637))

(assert (not b!1751256))

(assert (not b!1751332))

(assert (not b!1751481))

(assert (not b_lambda!56287))

(assert (not b!1751489))

(assert (not d!534833))

(assert (not b!1751269))

(assert (not d!534747))

(assert (not b!1751579))

(assert (not b!1751277))

(assert (not b_next!49033))

(assert (not b!1751610))

(assert (not b!1751638))

(assert (not b!1751115))

(assert (not b!1751022))

(assert (not d!534819))

(assert (not b!1751335))

(assert (not b!1751454))

(assert (not b!1751328))

(assert (not b!1751365))

(assert (not d!534753))

(assert (not b!1751211))

(assert (not b!1751028))

(assert (not b!1751488))

(assert (not d!534865))

(assert (not d!534757))

(assert (not b!1751653))

(assert b_and!131041)

(assert (not b!1751020))

(assert (not b!1751025))

(assert (not b!1751476))

(assert (not b!1751453))

(assert (not d!534677))

(assert (not b!1751090))

(assert (not b!1751086))

(assert (not b!1751041))

(assert (not d!534641))

(assert (not b!1751451))

(assert (not b!1751606))

(assert (not b!1751226))

(assert (not d!534761))

(assert (not b_lambda!56283))

(assert (not b_lambda!56297))

(assert (not d!534831))

(assert (not d!534739))

(assert (not b!1751145))

(assert b_and!131085)

(assert (not d!534667))

(assert (not b!1751021))

(assert (not b!1751441))

(assert (not b!1751651))

(assert (not d!534639))

(assert (not d!534687))

(assert (not b!1751182))

(assert (not b!1751434))

(assert (not b!1751331))

(assert (not b_lambda!56299))

(assert (not tb!105071))

(assert (not d!534661))

(assert (not d!534671))

(check-sat)

(pop 1)

(push 1)

(assert b_and!131045)

(assert (not b_next!49049))

(assert (not b_next!49025))

(assert (not b_next!49029))

(assert (not b_next!49047))

(assert b_and!131079)

(assert (not b_next!49027))

(assert b_and!131081)

(assert (not b_next!49031))

(assert (not b_next!49033))

(assert b_and!131041)

(assert b_and!131085)

(assert b_and!131043)

(assert b_and!131077)

(assert (not b_next!49023))

(assert b_and!131083)

(check-sat)

(pop 1)


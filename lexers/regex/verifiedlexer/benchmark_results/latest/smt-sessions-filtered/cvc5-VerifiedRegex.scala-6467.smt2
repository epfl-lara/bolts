; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!338964 () Bool)

(assert start!338964)

(declare-fun b!3633872 () Bool)

(declare-fun b_free!95081 () Bool)

(declare-fun b_next!95785 () Bool)

(assert (=> b!3633872 (= b_free!95081 (not b_next!95785))))

(declare-fun tp!1109171 () Bool)

(declare-fun b_and!267011 () Bool)

(assert (=> b!3633872 (= tp!1109171 b_and!267011)))

(declare-fun b_free!95083 () Bool)

(declare-fun b_next!95787 () Bool)

(assert (=> b!3633872 (= b_free!95083 (not b_next!95787))))

(declare-fun tp!1109174 () Bool)

(declare-fun b_and!267013 () Bool)

(assert (=> b!3633872 (= tp!1109174 b_and!267013)))

(declare-fun b!3633859 () Bool)

(declare-fun b_free!95085 () Bool)

(declare-fun b_next!95789 () Bool)

(assert (=> b!3633859 (= b_free!95085 (not b_next!95789))))

(declare-fun tp!1109172 () Bool)

(declare-fun b_and!267015 () Bool)

(assert (=> b!3633859 (= tp!1109172 b_and!267015)))

(declare-fun b_free!95087 () Bool)

(declare-fun b_next!95791 () Bool)

(assert (=> b!3633859 (= b_free!95087 (not b_next!95791))))

(declare-fun tp!1109184 () Bool)

(declare-fun b_and!267017 () Bool)

(assert (=> b!3633859 (= tp!1109184 b_and!267017)))

(declare-fun b!3633865 () Bool)

(declare-fun b_free!95089 () Bool)

(declare-fun b_next!95793 () Bool)

(assert (=> b!3633865 (= b_free!95089 (not b_next!95793))))

(declare-fun tp!1109180 () Bool)

(declare-fun b_and!267019 () Bool)

(assert (=> b!3633865 (= tp!1109180 b_and!267019)))

(declare-fun b_free!95091 () Bool)

(declare-fun b_next!95795 () Bool)

(assert (=> b!3633865 (= b_free!95091 (not b_next!95795))))

(declare-fun tp!1109173 () Bool)

(declare-fun b_and!267021 () Bool)

(assert (=> b!3633865 (= tp!1109173 b_and!267021)))

(declare-fun b!3633846 () Bool)

(declare-fun b_free!95093 () Bool)

(declare-fun b_next!95797 () Bool)

(assert (=> b!3633846 (= b_free!95093 (not b_next!95797))))

(declare-fun tp!1109176 () Bool)

(declare-fun b_and!267023 () Bool)

(assert (=> b!3633846 (= tp!1109176 b_and!267023)))

(declare-fun b_free!95095 () Bool)

(declare-fun b_next!95799 () Bool)

(assert (=> b!3633846 (= b_free!95095 (not b_next!95799))))

(declare-fun tp!1109181 () Bool)

(declare-fun b_and!267025 () Bool)

(assert (=> b!3633846 (= tp!1109181 b_and!267025)))

(declare-fun b!3633841 () Bool)

(declare-fun e!2249352 () Bool)

(declare-fun e!2249358 () Bool)

(assert (=> b!3633841 (= e!2249352 e!2249358)))

(declare-fun res!1471869 () Bool)

(assert (=> b!3633841 (=> res!1471869 e!2249358)))

(declare-datatypes ((List!38410 0))(
  ( (Nil!38286) (Cons!38286 (h!43706 (_ BitVec 16)) (t!295573 List!38410)) )
))
(declare-datatypes ((TokenValue!5943 0))(
  ( (FloatLiteralValue!11886 (text!42046 List!38410)) (TokenValueExt!5942 (__x!24103 Int)) (Broken!29715 (value!183256 List!38410)) (Object!6066) (End!5943) (Def!5943) (Underscore!5943) (Match!5943) (Else!5943) (Error!5943) (Case!5943) (If!5943) (Extends!5943) (Abstract!5943) (Class!5943) (Val!5943) (DelimiterValue!11886 (del!6003 List!38410)) (KeywordValue!5949 (value!183257 List!38410)) (CommentValue!11886 (value!183258 List!38410)) (WhitespaceValue!11886 (value!183259 List!38410)) (IndentationValue!5943 (value!183260 List!38410)) (String!43050) (Int32!5943) (Broken!29716 (value!183261 List!38410)) (Boolean!5944) (Unit!55108) (OperatorValue!5946 (op!6003 List!38410)) (IdentifierValue!11886 (value!183262 List!38410)) (IdentifierValue!11887 (value!183263 List!38410)) (WhitespaceValue!11887 (value!183264 List!38410)) (True!11886) (False!11886) (Broken!29717 (value!183265 List!38410)) (Broken!29718 (value!183266 List!38410)) (True!11887) (RightBrace!5943) (RightBracket!5943) (Colon!5943) (Null!5943) (Comma!5943) (LeftBracket!5943) (False!11887) (LeftBrace!5943) (ImaginaryLiteralValue!5943 (text!42047 List!38410)) (StringLiteralValue!17829 (value!183267 List!38410)) (EOFValue!5943 (value!183268 List!38410)) (IdentValue!5943 (value!183269 List!38410)) (DelimiterValue!11887 (value!183270 List!38410)) (DedentValue!5943 (value!183271 List!38410)) (NewLineValue!5943 (value!183272 List!38410)) (IntegerValue!17829 (value!183273 (_ BitVec 32)) (text!42048 List!38410)) (IntegerValue!17830 (value!183274 Int) (text!42049 List!38410)) (Times!5943) (Or!5943) (Equal!5943) (Minus!5943) (Broken!29719 (value!183275 List!38410)) (And!5943) (Div!5943) (LessEqual!5943) (Mod!5943) (Concat!16415) (Not!5943) (Plus!5943) (SpaceValue!5943 (value!183276 List!38410)) (IntegerValue!17831 (value!183277 Int) (text!42050 List!38410)) (StringLiteralValue!17830 (text!42051 List!38410)) (FloatLiteralValue!11887 (text!42052 List!38410)) (BytesLiteralValue!5943 (value!183278 List!38410)) (CommentValue!11887 (value!183279 List!38410)) (StringLiteralValue!17831 (value!183280 List!38410)) (ErrorTokenValue!5943 (msg!6004 List!38410)) )
))
(declare-datatypes ((String!43051 0))(
  ( (String!43052 (value!183281 String)) )
))
(declare-datatypes ((C!21130 0))(
  ( (C!21131 (val!12613 Int)) )
))
(declare-datatypes ((Regex!10472 0))(
  ( (ElementMatch!10472 (c!628555 C!21130)) (Concat!16416 (regOne!21456 Regex!10472) (regTwo!21456 Regex!10472)) (EmptyExpr!10472) (Star!10472 (reg!10801 Regex!10472)) (EmptyLang!10472) (Union!10472 (regOne!21457 Regex!10472) (regTwo!21457 Regex!10472)) )
))
(declare-datatypes ((List!38411 0))(
  ( (Nil!38287) (Cons!38287 (h!43707 C!21130) (t!295574 List!38411)) )
))
(declare-datatypes ((IArray!23373 0))(
  ( (IArray!23374 (innerList!11744 List!38411)) )
))
(declare-datatypes ((Conc!11684 0))(
  ( (Node!11684 (left!29891 Conc!11684) (right!30221 Conc!11684) (csize!23598 Int) (cheight!11895 Int)) (Leaf!18152 (xs!14886 IArray!23373) (csize!23599 Int)) (Empty!11684) )
))
(declare-datatypes ((BalanceConc!22982 0))(
  ( (BalanceConc!22983 (c!628556 Conc!11684)) )
))
(declare-datatypes ((TokenValueInjection!11314 0))(
  ( (TokenValueInjection!11315 (toValue!8005 Int) (toChars!7864 Int)) )
))
(declare-datatypes ((Rule!11226 0))(
  ( (Rule!11227 (regex!5713 Regex!10472) (tag!6449 String!43051) (isSeparator!5713 Bool) (transformation!5713 TokenValueInjection!11314)) )
))
(declare-fun rule!403 () Rule!11226)

(declare-fun lt!1257097 () C!21130)

(declare-fun contains!7491 (List!38411 C!21130) Bool)

(declare-fun usedCharacters!925 (Regex!10472) List!38411)

(assert (=> b!3633841 (= res!1471869 (contains!7491 (usedCharacters!925 (regex!5713 rule!403)) lt!1257097))))

(declare-fun suffix!1395 () List!38411)

(declare-fun head!7699 (List!38411) C!21130)

(assert (=> b!3633841 (= lt!1257097 (head!7699 suffix!1395))))

(declare-fun b!3633842 () Bool)

(declare-fun res!1471877 () Bool)

(declare-fun e!2249338 () Bool)

(assert (=> b!3633842 (=> (not res!1471877) (not e!2249338))))

(declare-datatypes ((List!38412 0))(
  ( (Nil!38288) (Cons!38288 (h!43708 Rule!11226) (t!295575 List!38412)) )
))
(declare-fun rules!3307 () List!38412)

(declare-fun isEmpty!22654 (List!38412) Bool)

(assert (=> b!3633842 (= res!1471877 (not (isEmpty!22654 rules!3307)))))

(declare-fun b!3633843 () Bool)

(declare-fun e!2249359 () Bool)

(assert (=> b!3633843 (= e!2249359 (not e!2249352))))

(declare-fun res!1471861 () Bool)

(assert (=> b!3633843 (=> res!1471861 e!2249352)))

(declare-fun lt!1257108 () List!38411)

(declare-fun matchR!5041 (Regex!10472 List!38411) Bool)

(assert (=> b!3633843 (= res!1471861 (not (matchR!5041 (regex!5713 rule!403) lt!1257108)))))

(declare-datatypes ((LexerInterface!5302 0))(
  ( (LexerInterfaceExt!5299 (__x!24104 Int)) (Lexer!5300) )
))
(declare-fun thiss!23823 () LexerInterface!5302)

(declare-fun ruleValid!1977 (LexerInterface!5302 Rule!11226) Bool)

(assert (=> b!3633843 (ruleValid!1977 thiss!23823 rule!403)))

(declare-datatypes ((Unit!55109 0))(
  ( (Unit!55110) )
))
(declare-fun lt!1257094 () Unit!55109)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1131 (LexerInterface!5302 Rule!11226 List!38412) Unit!55109)

(assert (=> b!3633843 (= lt!1257094 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1131 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3633844 () Bool)

(declare-fun e!2249343 () Bool)

(declare-fun e!2249345 () Bool)

(assert (=> b!3633844 (= e!2249343 e!2249345)))

(declare-fun res!1471870 () Bool)

(assert (=> b!3633844 (=> (not res!1471870) (not e!2249345))))

(declare-fun lt!1257096 () Rule!11226)

(declare-datatypes ((Token!10792 0))(
  ( (Token!10793 (value!183282 TokenValue!5943) (rule!8485 Rule!11226) (size!29214 Int) (originalCharacters!6427 List!38411)) )
))
(declare-datatypes ((tuple2!38154 0))(
  ( (tuple2!38155 (_1!22211 Token!10792) (_2!22211 List!38411)) )
))
(declare-fun lt!1257104 () tuple2!38154)

(declare-fun list!14159 (BalanceConc!22982) List!38411)

(declare-fun charsOf!3727 (Token!10792) BalanceConc!22982)

(assert (=> b!3633844 (= res!1471870 (matchR!5041 (regex!5713 lt!1257096) (list!14159 (charsOf!3727 (_1!22211 lt!1257104)))))))

(declare-datatypes ((Option!8054 0))(
  ( (None!8053) (Some!8053 (v!37857 Rule!11226)) )
))
(declare-fun lt!1257098 () Option!8054)

(declare-fun get!12521 (Option!8054) Rule!11226)

(assert (=> b!3633844 (= lt!1257096 (get!12521 lt!1257098))))

(declare-fun tp!1109178 () Bool)

(declare-fun e!2249340 () Bool)

(declare-fun token!511 () Token!10792)

(declare-fun e!2249354 () Bool)

(declare-fun b!3633845 () Bool)

(declare-fun inv!51710 (String!43051) Bool)

(declare-fun inv!51713 (TokenValueInjection!11314) Bool)

(assert (=> b!3633845 (= e!2249340 (and tp!1109178 (inv!51710 (tag!6449 (rule!8485 token!511))) (inv!51713 (transformation!5713 (rule!8485 token!511))) e!2249354))))

(declare-fun e!2249347 () Bool)

(assert (=> b!3633846 (= e!2249347 (and tp!1109176 tp!1109181))))

(declare-fun b!3633847 () Bool)

(declare-fun e!2249342 () Bool)

(declare-fun e!2249351 () Bool)

(declare-fun tp!1109185 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!11226)

(assert (=> b!3633847 (= e!2249351 (and tp!1109185 (inv!51710 (tag!6449 anOtherTypeRule!33)) (inv!51713 (transformation!5713 anOtherTypeRule!33)) e!2249342))))

(declare-fun b!3633848 () Bool)

(declare-fun res!1471866 () Bool)

(declare-fun e!2249361 () Bool)

(assert (=> b!3633848 (=> res!1471866 e!2249361)))

(declare-fun contains!7492 (List!38412 Rule!11226) Bool)

(assert (=> b!3633848 (= res!1471866 (not (contains!7492 rules!3307 (rule!8485 (_1!22211 lt!1257104)))))))

(declare-fun b!3633849 () Bool)

(declare-fun e!2249356 () Bool)

(declare-fun e!2249339 () Bool)

(declare-fun tp!1109177 () Bool)

(assert (=> b!3633849 (= e!2249356 (and e!2249339 tp!1109177))))

(declare-fun b!3633850 () Bool)

(declare-fun e!2249344 () Bool)

(assert (=> b!3633850 (= e!2249344 e!2249361)))

(declare-fun res!1471863 () Bool)

(assert (=> b!3633850 (=> res!1471863 e!2249361)))

(declare-fun lt!1257102 () List!38411)

(declare-fun lt!1257112 () BalanceConc!22982)

(declare-datatypes ((Option!8055 0))(
  ( (None!8054) (Some!8054 (v!37858 tuple2!38154)) )
))
(declare-fun lt!1257103 () Option!8055)

(declare-fun apply!9215 (TokenValueInjection!11314 BalanceConc!22982) TokenValue!5943)

(declare-fun size!29215 (BalanceConc!22982) Int)

(assert (=> b!3633850 (= res!1471863 (not (= lt!1257103 (Some!8054 (tuple2!38155 (Token!10793 (apply!9215 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))) lt!1257112) (rule!8485 (_1!22211 lt!1257104)) (size!29215 lt!1257112) lt!1257102) (_2!22211 lt!1257104))))))))

(declare-fun lt!1257091 () Unit!55109)

(declare-fun lemmaCharactersSize!758 (Token!10792) Unit!55109)

(assert (=> b!3633850 (= lt!1257091 (lemmaCharactersSize!758 (_1!22211 lt!1257104)))))

(declare-fun lt!1257093 () Unit!55109)

(declare-fun lemmaEqSameImage!896 (TokenValueInjection!11314 BalanceConc!22982 BalanceConc!22982) Unit!55109)

(declare-fun seqFromList!4262 (List!38411) BalanceConc!22982)

(assert (=> b!3633850 (= lt!1257093 (lemmaEqSameImage!896 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))) lt!1257112 (seqFromList!4262 (originalCharacters!6427 (_1!22211 lt!1257104)))))))

(declare-fun lt!1257092 () Unit!55109)

(declare-fun lemmaSemiInverse!1462 (TokenValueInjection!11314 BalanceConc!22982) Unit!55109)

(assert (=> b!3633850 (= lt!1257092 (lemmaSemiInverse!1462 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))) lt!1257112))))

(declare-fun b!3633851 () Bool)

(declare-fun e!2249353 () Bool)

(assert (=> b!3633851 (= e!2249338 e!2249353)))

(declare-fun res!1471876 () Bool)

(assert (=> b!3633851 (=> (not res!1471876) (not e!2249353))))

(declare-fun lt!1257095 () Option!8055)

(declare-fun isDefined!6286 (Option!8055) Bool)

(assert (=> b!3633851 (= res!1471876 (isDefined!6286 lt!1257095))))

(declare-fun maxPrefix!2836 (LexerInterface!5302 List!38412 List!38411) Option!8055)

(assert (=> b!3633851 (= lt!1257095 (maxPrefix!2836 thiss!23823 rules!3307 lt!1257108))))

(assert (=> b!3633851 (= lt!1257108 (list!14159 (charsOf!3727 token!511)))))

(declare-fun b!3633852 () Bool)

(declare-fun res!1471878 () Bool)

(assert (=> b!3633852 (=> res!1471878 e!2249358)))

(declare-fun sepAndNonSepRulesDisjointChars!1881 (List!38412 List!38412) Bool)

(assert (=> b!3633852 (= res!1471878 (not (sepAndNonSepRulesDisjointChars!1881 rules!3307 rules!3307)))))

(declare-fun b!3633853 () Bool)

(declare-fun res!1471873 () Bool)

(assert (=> b!3633853 (=> (not res!1471873) (not e!2249338))))

(assert (=> b!3633853 (= res!1471873 (not (= (isSeparator!5713 anOtherTypeRule!33) (isSeparator!5713 rule!403))))))

(declare-fun b!3633854 () Bool)

(declare-fun res!1471871 () Bool)

(assert (=> b!3633854 (=> (not res!1471871) (not e!2249338))))

(assert (=> b!3633854 (= res!1471871 (contains!7492 rules!3307 rule!403))))

(declare-fun b!3633855 () Bool)

(declare-fun res!1471860 () Bool)

(assert (=> b!3633855 (=> res!1471860 e!2249344)))

(assert (=> b!3633855 (= res!1471860 (not (matchR!5041 (regex!5713 (rule!8485 (_1!22211 lt!1257104))) lt!1257102)))))

(declare-fun b!3633856 () Bool)

(declare-fun res!1471868 () Bool)

(assert (=> b!3633856 (=> res!1471868 e!2249358)))

(assert (=> b!3633856 (= res!1471868 (not (contains!7491 (usedCharacters!925 (regex!5713 anOtherTypeRule!33)) lt!1257097)))))

(declare-fun b!3633857 () Bool)

(declare-fun lt!1257105 () BalanceConc!22982)

(declare-fun size!29216 (List!38411) Int)

(assert (=> b!3633857 (= e!2249361 (= lt!1257103 (Some!8054 (tuple2!38155 (Token!10793 (apply!9215 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))) lt!1257105) (rule!8485 (_1!22211 lt!1257104)) (size!29216 lt!1257102) lt!1257102) (_2!22211 lt!1257104)))))))

(declare-fun lt!1257110 () Unit!55109)

(assert (=> b!3633857 (= lt!1257110 (lemmaSemiInverse!1462 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))) lt!1257105))))

(assert (=> b!3633857 (= lt!1257105 (seqFromList!4262 lt!1257102))))

(declare-fun b!3633858 () Bool)

(declare-fun tp!1109182 () Bool)

(assert (=> b!3633858 (= e!2249339 (and tp!1109182 (inv!51710 (tag!6449 (h!43708 rules!3307))) (inv!51713 (transformation!5713 (h!43708 rules!3307))) e!2249347))))

(assert (=> b!3633859 (= e!2249342 (and tp!1109172 tp!1109184))))

(declare-fun b!3633860 () Bool)

(declare-fun res!1471872 () Bool)

(assert (=> b!3633860 (=> res!1471872 e!2249352)))

(declare-fun isEmpty!22655 (List!38411) Bool)

(assert (=> b!3633860 (= res!1471872 (isEmpty!22655 suffix!1395))))

(declare-fun b!3633861 () Bool)

(declare-fun res!1471881 () Bool)

(assert (=> b!3633861 (=> (not res!1471881) (not e!2249338))))

(assert (=> b!3633861 (= res!1471881 (contains!7492 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3633862 () Bool)

(assert (=> b!3633862 (= e!2249345 (= (rule!8485 (_1!22211 lt!1257104)) lt!1257096))))

(declare-fun b!3633863 () Bool)

(assert (=> b!3633863 (= e!2249353 e!2249359)))

(declare-fun res!1471865 () Bool)

(assert (=> b!3633863 (=> (not res!1471865) (not e!2249359))))

(declare-fun lt!1257111 () tuple2!38154)

(assert (=> b!3633863 (= res!1471865 (= (_1!22211 lt!1257111) token!511))))

(declare-fun get!12522 (Option!8055) tuple2!38154)

(assert (=> b!3633863 (= lt!1257111 (get!12522 lt!1257095))))

(declare-fun b!3633864 () Bool)

(declare-fun res!1471879 () Bool)

(assert (=> b!3633864 (=> (not res!1471879) (not e!2249359))))

(assert (=> b!3633864 (= res!1471879 (isEmpty!22655 (_2!22211 lt!1257111)))))

(declare-fun e!2249355 () Bool)

(assert (=> b!3633865 (= e!2249355 (and tp!1109180 tp!1109173))))

(declare-fun b!3633866 () Bool)

(declare-fun e!2249350 () Bool)

(declare-fun tp_is_empty!18027 () Bool)

(declare-fun tp!1109183 () Bool)

(assert (=> b!3633866 (= e!2249350 (and tp_is_empty!18027 tp!1109183))))

(declare-fun b!3633867 () Bool)

(declare-fun res!1471862 () Bool)

(assert (=> b!3633867 (=> (not res!1471862) (not e!2249359))))

(assert (=> b!3633867 (= res!1471862 (= (rule!8485 token!511) rule!403))))

(declare-fun res!1471864 () Bool)

(assert (=> start!338964 (=> (not res!1471864) (not e!2249338))))

(assert (=> start!338964 (= res!1471864 (is-Lexer!5300 thiss!23823))))

(assert (=> start!338964 e!2249338))

(assert (=> start!338964 e!2249356))

(assert (=> start!338964 e!2249350))

(assert (=> start!338964 true))

(declare-fun e!2249360 () Bool)

(declare-fun inv!51714 (Token!10792) Bool)

(assert (=> start!338964 (and (inv!51714 token!511) e!2249360)))

(declare-fun e!2249337 () Bool)

(assert (=> start!338964 e!2249337))

(assert (=> start!338964 e!2249351))

(declare-fun b!3633868 () Bool)

(declare-fun res!1471875 () Bool)

(assert (=> b!3633868 (=> res!1471875 e!2249361)))

(declare-fun lt!1257109 () List!38411)

(declare-fun lt!1257106 () List!38411)

(assert (=> b!3633868 (= res!1471875 (not (= lt!1257109 lt!1257106)))))

(declare-fun b!3633869 () Bool)

(declare-fun res!1471859 () Bool)

(assert (=> b!3633869 (=> res!1471859 e!2249361)))

(assert (=> b!3633869 (= res!1471859 (isEmpty!22655 lt!1257102))))

(declare-fun b!3633870 () Bool)

(assert (=> b!3633870 (= e!2249358 e!2249344)))

(declare-fun res!1471880 () Bool)

(assert (=> b!3633870 (=> res!1471880 e!2249344)))

(declare-fun isPrefix!3076 (List!38411 List!38411) Bool)

(assert (=> b!3633870 (= res!1471880 (not (isPrefix!3076 lt!1257102 lt!1257109)))))

(assert (=> b!3633870 (isPrefix!3076 lt!1257102 lt!1257106)))

(declare-fun ++!9529 (List!38411 List!38411) List!38411)

(assert (=> b!3633870 (= lt!1257106 (++!9529 lt!1257102 (_2!22211 lt!1257104)))))

(declare-fun lt!1257101 () Unit!55109)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1995 (List!38411 List!38411) Unit!55109)

(assert (=> b!3633870 (= lt!1257101 (lemmaConcatTwoListThenFirstIsPrefix!1995 lt!1257102 (_2!22211 lt!1257104)))))

(assert (=> b!3633870 (= lt!1257102 (list!14159 lt!1257112))))

(assert (=> b!3633870 (= lt!1257112 (charsOf!3727 (_1!22211 lt!1257104)))))

(assert (=> b!3633870 e!2249343))

(declare-fun res!1471874 () Bool)

(assert (=> b!3633870 (=> (not res!1471874) (not e!2249343))))

(declare-fun isDefined!6287 (Option!8054) Bool)

(assert (=> b!3633870 (= res!1471874 (isDefined!6287 lt!1257098))))

(declare-fun getRuleFromTag!1317 (LexerInterface!5302 List!38412 String!43051) Option!8054)

(assert (=> b!3633870 (= lt!1257098 (getRuleFromTag!1317 thiss!23823 rules!3307 (tag!6449 (rule!8485 (_1!22211 lt!1257104)))))))

(declare-fun lt!1257099 () Unit!55109)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1317 (LexerInterface!5302 List!38412 List!38411 Token!10792) Unit!55109)

(assert (=> b!3633870 (= lt!1257099 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1317 thiss!23823 rules!3307 lt!1257109 (_1!22211 lt!1257104)))))

(assert (=> b!3633870 (= lt!1257104 (get!12522 lt!1257103))))

(declare-fun lt!1257100 () Unit!55109)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!980 (LexerInterface!5302 List!38412 List!38411 List!38411) Unit!55109)

(assert (=> b!3633870 (= lt!1257100 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!980 thiss!23823 rules!3307 lt!1257108 suffix!1395))))

(assert (=> b!3633870 (= lt!1257103 (maxPrefix!2836 thiss!23823 rules!3307 lt!1257109))))

(assert (=> b!3633870 (isPrefix!3076 lt!1257108 lt!1257109)))

(declare-fun lt!1257107 () Unit!55109)

(assert (=> b!3633870 (= lt!1257107 (lemmaConcatTwoListThenFirstIsPrefix!1995 lt!1257108 suffix!1395))))

(assert (=> b!3633870 (= lt!1257109 (++!9529 lt!1257108 suffix!1395))))

(declare-fun b!3633871 () Bool)

(declare-fun tp!1109175 () Bool)

(declare-fun inv!21 (TokenValue!5943) Bool)

(assert (=> b!3633871 (= e!2249360 (and (inv!21 (value!183282 token!511)) e!2249340 tp!1109175))))

(assert (=> b!3633872 (= e!2249354 (and tp!1109171 tp!1109174))))

(declare-fun tp!1109179 () Bool)

(declare-fun b!3633873 () Bool)

(assert (=> b!3633873 (= e!2249337 (and tp!1109179 (inv!51710 (tag!6449 rule!403)) (inv!51713 (transformation!5713 rule!403)) e!2249355))))

(declare-fun b!3633874 () Bool)

(declare-fun res!1471867 () Bool)

(assert (=> b!3633874 (=> (not res!1471867) (not e!2249338))))

(declare-fun rulesInvariant!4699 (LexerInterface!5302 List!38412) Bool)

(assert (=> b!3633874 (= res!1471867 (rulesInvariant!4699 thiss!23823 rules!3307))))

(assert (= (and start!338964 res!1471864) b!3633842))

(assert (= (and b!3633842 res!1471877) b!3633874))

(assert (= (and b!3633874 res!1471867) b!3633854))

(assert (= (and b!3633854 res!1471871) b!3633861))

(assert (= (and b!3633861 res!1471881) b!3633853))

(assert (= (and b!3633853 res!1471873) b!3633851))

(assert (= (and b!3633851 res!1471876) b!3633863))

(assert (= (and b!3633863 res!1471865) b!3633864))

(assert (= (and b!3633864 res!1471879) b!3633867))

(assert (= (and b!3633867 res!1471862) b!3633843))

(assert (= (and b!3633843 (not res!1471861)) b!3633860))

(assert (= (and b!3633860 (not res!1471872)) b!3633841))

(assert (= (and b!3633841 (not res!1471869)) b!3633856))

(assert (= (and b!3633856 (not res!1471868)) b!3633852))

(assert (= (and b!3633852 (not res!1471878)) b!3633870))

(assert (= (and b!3633870 res!1471874) b!3633844))

(assert (= (and b!3633844 res!1471870) b!3633862))

(assert (= (and b!3633870 (not res!1471880)) b!3633855))

(assert (= (and b!3633855 (not res!1471860)) b!3633850))

(assert (= (and b!3633850 (not res!1471863)) b!3633848))

(assert (= (and b!3633848 (not res!1471866)) b!3633868))

(assert (= (and b!3633868 (not res!1471875)) b!3633869))

(assert (= (and b!3633869 (not res!1471859)) b!3633857))

(assert (= b!3633858 b!3633846))

(assert (= b!3633849 b!3633858))

(assert (= (and start!338964 (is-Cons!38288 rules!3307)) b!3633849))

(assert (= (and start!338964 (is-Cons!38287 suffix!1395)) b!3633866))

(assert (= b!3633845 b!3633872))

(assert (= b!3633871 b!3633845))

(assert (= start!338964 b!3633871))

(assert (= b!3633873 b!3633865))

(assert (= start!338964 b!3633873))

(assert (= b!3633847 b!3633859))

(assert (= start!338964 b!3633847))

(declare-fun m!4135721 () Bool)

(assert (=> b!3633856 m!4135721))

(assert (=> b!3633856 m!4135721))

(declare-fun m!4135723 () Bool)

(assert (=> b!3633856 m!4135723))

(declare-fun m!4135725 () Bool)

(assert (=> b!3633854 m!4135725))

(declare-fun m!4135727 () Bool)

(assert (=> b!3633852 m!4135727))

(declare-fun m!4135729 () Bool)

(assert (=> b!3633857 m!4135729))

(declare-fun m!4135731 () Bool)

(assert (=> b!3633857 m!4135731))

(declare-fun m!4135733 () Bool)

(assert (=> b!3633857 m!4135733))

(declare-fun m!4135735 () Bool)

(assert (=> b!3633857 m!4135735))

(declare-fun m!4135737 () Bool)

(assert (=> b!3633845 m!4135737))

(declare-fun m!4135739 () Bool)

(assert (=> b!3633845 m!4135739))

(declare-fun m!4135741 () Bool)

(assert (=> b!3633870 m!4135741))

(declare-fun m!4135743 () Bool)

(assert (=> b!3633870 m!4135743))

(declare-fun m!4135745 () Bool)

(assert (=> b!3633870 m!4135745))

(declare-fun m!4135747 () Bool)

(assert (=> b!3633870 m!4135747))

(declare-fun m!4135749 () Bool)

(assert (=> b!3633870 m!4135749))

(declare-fun m!4135751 () Bool)

(assert (=> b!3633870 m!4135751))

(declare-fun m!4135753 () Bool)

(assert (=> b!3633870 m!4135753))

(declare-fun m!4135755 () Bool)

(assert (=> b!3633870 m!4135755))

(declare-fun m!4135757 () Bool)

(assert (=> b!3633870 m!4135757))

(declare-fun m!4135759 () Bool)

(assert (=> b!3633870 m!4135759))

(declare-fun m!4135761 () Bool)

(assert (=> b!3633870 m!4135761))

(declare-fun m!4135763 () Bool)

(assert (=> b!3633870 m!4135763))

(declare-fun m!4135765 () Bool)

(assert (=> b!3633870 m!4135765))

(declare-fun m!4135767 () Bool)

(assert (=> b!3633870 m!4135767))

(declare-fun m!4135769 () Bool)

(assert (=> b!3633870 m!4135769))

(declare-fun m!4135771 () Bool)

(assert (=> b!3633861 m!4135771))

(declare-fun m!4135773 () Bool)

(assert (=> b!3633842 m!4135773))

(declare-fun m!4135775 () Bool)

(assert (=> b!3633848 m!4135775))

(declare-fun m!4135777 () Bool)

(assert (=> b!3633874 m!4135777))

(declare-fun m!4135779 () Bool)

(assert (=> b!3633847 m!4135779))

(declare-fun m!4135781 () Bool)

(assert (=> b!3633847 m!4135781))

(declare-fun m!4135783 () Bool)

(assert (=> start!338964 m!4135783))

(declare-fun m!4135785 () Bool)

(assert (=> b!3633850 m!4135785))

(declare-fun m!4135787 () Bool)

(assert (=> b!3633850 m!4135787))

(declare-fun m!4135789 () Bool)

(assert (=> b!3633850 m!4135789))

(declare-fun m!4135791 () Bool)

(assert (=> b!3633850 m!4135791))

(declare-fun m!4135793 () Bool)

(assert (=> b!3633850 m!4135793))

(assert (=> b!3633850 m!4135787))

(declare-fun m!4135795 () Bool)

(assert (=> b!3633850 m!4135795))

(declare-fun m!4135797 () Bool)

(assert (=> b!3633841 m!4135797))

(assert (=> b!3633841 m!4135797))

(declare-fun m!4135799 () Bool)

(assert (=> b!3633841 m!4135799))

(declare-fun m!4135801 () Bool)

(assert (=> b!3633841 m!4135801))

(declare-fun m!4135803 () Bool)

(assert (=> b!3633855 m!4135803))

(declare-fun m!4135805 () Bool)

(assert (=> b!3633863 m!4135805))

(declare-fun m!4135807 () Bool)

(assert (=> b!3633860 m!4135807))

(declare-fun m!4135809 () Bool)

(assert (=> b!3633864 m!4135809))

(declare-fun m!4135811 () Bool)

(assert (=> b!3633871 m!4135811))

(declare-fun m!4135813 () Bool)

(assert (=> b!3633851 m!4135813))

(declare-fun m!4135815 () Bool)

(assert (=> b!3633851 m!4135815))

(declare-fun m!4135817 () Bool)

(assert (=> b!3633851 m!4135817))

(assert (=> b!3633851 m!4135817))

(declare-fun m!4135819 () Bool)

(assert (=> b!3633851 m!4135819))

(declare-fun m!4135821 () Bool)

(assert (=> b!3633843 m!4135821))

(declare-fun m!4135823 () Bool)

(assert (=> b!3633843 m!4135823))

(declare-fun m!4135825 () Bool)

(assert (=> b!3633843 m!4135825))

(declare-fun m!4135827 () Bool)

(assert (=> b!3633858 m!4135827))

(declare-fun m!4135829 () Bool)

(assert (=> b!3633858 m!4135829))

(declare-fun m!4135831 () Bool)

(assert (=> b!3633873 m!4135831))

(declare-fun m!4135833 () Bool)

(assert (=> b!3633873 m!4135833))

(assert (=> b!3633844 m!4135745))

(assert (=> b!3633844 m!4135745))

(declare-fun m!4135835 () Bool)

(assert (=> b!3633844 m!4135835))

(assert (=> b!3633844 m!4135835))

(declare-fun m!4135837 () Bool)

(assert (=> b!3633844 m!4135837))

(declare-fun m!4135839 () Bool)

(assert (=> b!3633844 m!4135839))

(declare-fun m!4135841 () Bool)

(assert (=> b!3633869 m!4135841))

(push 1)

(assert (not b_next!95785))

(assert (not b!3633874))

(assert (not b!3633863))

(assert (not b!3633848))

(assert b_and!267017)

(assert (not b!3633860))

(assert (not b!3633870))

(assert (not b!3633866))

(assert tp_is_empty!18027)

(assert (not b!3633841))

(assert (not b!3633850))

(assert (not b_next!95795))

(assert b_and!267011)

(assert (not b!3633855))

(assert (not b!3633851))

(assert (not b!3633847))

(assert (not b!3633843))

(assert (not b!3633842))

(assert (not b_next!95793))

(assert (not b!3633852))

(assert (not b!3633858))

(assert (not b!3633844))

(assert (not b!3633871))

(assert b_and!267015)

(assert (not b!3633873))

(assert (not b_next!95791))

(assert (not b!3633861))

(assert (not b!3633845))

(assert (not b_next!95787))

(assert b_and!267025)

(assert (not b_next!95797))

(assert b_and!267019)

(assert (not b!3633857))

(assert (not b!3633849))

(assert (not b_next!95789))

(assert (not b!3633854))

(assert b_and!267013)

(assert b_and!267021)

(assert b_and!267023)

(assert (not b!3633864))

(assert (not b!3633869))

(assert (not b!3633856))

(assert (not start!338964))

(assert (not b_next!95799))

(check-sat)

(pop 1)

(push 1)

(assert b_and!267011)

(assert (not b_next!95785))

(assert (not b_next!95793))

(assert b_and!267015)

(assert (not b_next!95791))

(assert (not b_next!95789))

(assert b_and!267013)

(assert b_and!267017)

(assert (not b_next!95795))

(assert (not b_next!95799))

(assert (not b_next!95787))

(assert b_and!267025)

(assert (not b_next!95797))

(assert b_and!267019)

(assert b_and!267021)

(assert b_and!267023)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1068782 () Bool)

(declare-fun isEmpty!22658 (Option!8055) Bool)

(assert (=> d!1068782 (= (isDefined!6286 lt!1257095) (not (isEmpty!22658 lt!1257095)))))

(declare-fun bs!571742 () Bool)

(assert (= bs!571742 d!1068782))

(declare-fun m!4135965 () Bool)

(assert (=> bs!571742 m!4135965))

(assert (=> b!3633851 d!1068782))

(declare-fun b!3633995 () Bool)

(declare-fun e!2249443 () Bool)

(declare-fun lt!1257190 () Option!8055)

(assert (=> b!3633995 (= e!2249443 (contains!7492 rules!3307 (rule!8485 (_1!22211 (get!12522 lt!1257190)))))))

(declare-fun b!3633996 () Bool)

(declare-fun res!1471980 () Bool)

(assert (=> b!3633996 (=> (not res!1471980) (not e!2249443))))

(assert (=> b!3633996 (= res!1471980 (= (++!9529 (list!14159 (charsOf!3727 (_1!22211 (get!12522 lt!1257190)))) (_2!22211 (get!12522 lt!1257190))) lt!1257108))))

(declare-fun b!3633997 () Bool)

(declare-fun res!1471977 () Bool)

(assert (=> b!3633997 (=> (not res!1471977) (not e!2249443))))

(assert (=> b!3633997 (= res!1471977 (= (value!183282 (_1!22211 (get!12522 lt!1257190))) (apply!9215 (transformation!5713 (rule!8485 (_1!22211 (get!12522 lt!1257190)))) (seqFromList!4262 (originalCharacters!6427 (_1!22211 (get!12522 lt!1257190)))))))))

(declare-fun d!1068784 () Bool)

(declare-fun e!2249445 () Bool)

(assert (=> d!1068784 e!2249445))

(declare-fun res!1471979 () Bool)

(assert (=> d!1068784 (=> res!1471979 e!2249445)))

(assert (=> d!1068784 (= res!1471979 (isEmpty!22658 lt!1257190))))

(declare-fun e!2249444 () Option!8055)

(assert (=> d!1068784 (= lt!1257190 e!2249444)))

(declare-fun c!628562 () Bool)

(assert (=> d!1068784 (= c!628562 (and (is-Cons!38288 rules!3307) (is-Nil!38288 (t!295575 rules!3307))))))

(declare-fun lt!1257192 () Unit!55109)

(declare-fun lt!1257193 () Unit!55109)

(assert (=> d!1068784 (= lt!1257192 lt!1257193)))

(assert (=> d!1068784 (isPrefix!3076 lt!1257108 lt!1257108)))

(declare-fun lemmaIsPrefixRefl!1949 (List!38411 List!38411) Unit!55109)

(assert (=> d!1068784 (= lt!1257193 (lemmaIsPrefixRefl!1949 lt!1257108 lt!1257108))))

(declare-fun rulesValidInductive!2014 (LexerInterface!5302 List!38412) Bool)

(assert (=> d!1068784 (rulesValidInductive!2014 thiss!23823 rules!3307)))

(assert (=> d!1068784 (= (maxPrefix!2836 thiss!23823 rules!3307 lt!1257108) lt!1257190)))

(declare-fun b!3633998 () Bool)

(assert (=> b!3633998 (= e!2249445 e!2249443)))

(declare-fun res!1471982 () Bool)

(assert (=> b!3633998 (=> (not res!1471982) (not e!2249443))))

(assert (=> b!3633998 (= res!1471982 (isDefined!6286 lt!1257190))))

(declare-fun b!3633999 () Bool)

(declare-fun lt!1257191 () Option!8055)

(declare-fun lt!1257189 () Option!8055)

(assert (=> b!3633999 (= e!2249444 (ite (and (is-None!8054 lt!1257191) (is-None!8054 lt!1257189)) None!8054 (ite (is-None!8054 lt!1257189) lt!1257191 (ite (is-None!8054 lt!1257191) lt!1257189 (ite (>= (size!29214 (_1!22211 (v!37858 lt!1257191))) (size!29214 (_1!22211 (v!37858 lt!1257189)))) lt!1257191 lt!1257189)))))))

(declare-fun call!262795 () Option!8055)

(assert (=> b!3633999 (= lt!1257191 call!262795)))

(assert (=> b!3633999 (= lt!1257189 (maxPrefix!2836 thiss!23823 (t!295575 rules!3307) lt!1257108))))

(declare-fun b!3634000 () Bool)

(declare-fun res!1471976 () Bool)

(assert (=> b!3634000 (=> (not res!1471976) (not e!2249443))))

(assert (=> b!3634000 (= res!1471976 (matchR!5041 (regex!5713 (rule!8485 (_1!22211 (get!12522 lt!1257190)))) (list!14159 (charsOf!3727 (_1!22211 (get!12522 lt!1257190))))))))

(declare-fun b!3634001 () Bool)

(assert (=> b!3634001 (= e!2249444 call!262795)))

(declare-fun b!3634002 () Bool)

(declare-fun res!1471981 () Bool)

(assert (=> b!3634002 (=> (not res!1471981) (not e!2249443))))

(assert (=> b!3634002 (= res!1471981 (= (list!14159 (charsOf!3727 (_1!22211 (get!12522 lt!1257190)))) (originalCharacters!6427 (_1!22211 (get!12522 lt!1257190)))))))

(declare-fun b!3634003 () Bool)

(declare-fun res!1471978 () Bool)

(assert (=> b!3634003 (=> (not res!1471978) (not e!2249443))))

(assert (=> b!3634003 (= res!1471978 (< (size!29216 (_2!22211 (get!12522 lt!1257190))) (size!29216 lt!1257108)))))

(declare-fun bm!262790 () Bool)

(declare-fun maxPrefixOneRule!1974 (LexerInterface!5302 Rule!11226 List!38411) Option!8055)

(assert (=> bm!262790 (= call!262795 (maxPrefixOneRule!1974 thiss!23823 (h!43708 rules!3307) lt!1257108))))

(assert (= (and d!1068784 c!628562) b!3634001))

(assert (= (and d!1068784 (not c!628562)) b!3633999))

(assert (= (or b!3634001 b!3633999) bm!262790))

(assert (= (and d!1068784 (not res!1471979)) b!3633998))

(assert (= (and b!3633998 res!1471982) b!3634002))

(assert (= (and b!3634002 res!1471981) b!3634003))

(assert (= (and b!3634003 res!1471978) b!3633996))

(assert (= (and b!3633996 res!1471980) b!3633997))

(assert (= (and b!3633997 res!1471977) b!3634000))

(assert (= (and b!3634000 res!1471976) b!3633995))

(declare-fun m!4135967 () Bool)

(assert (=> b!3633997 m!4135967))

(declare-fun m!4135969 () Bool)

(assert (=> b!3633997 m!4135969))

(assert (=> b!3633997 m!4135969))

(declare-fun m!4135971 () Bool)

(assert (=> b!3633997 m!4135971))

(declare-fun m!4135973 () Bool)

(assert (=> b!3633998 m!4135973))

(assert (=> b!3633996 m!4135967))

(declare-fun m!4135975 () Bool)

(assert (=> b!3633996 m!4135975))

(assert (=> b!3633996 m!4135975))

(declare-fun m!4135977 () Bool)

(assert (=> b!3633996 m!4135977))

(assert (=> b!3633996 m!4135977))

(declare-fun m!4135979 () Bool)

(assert (=> b!3633996 m!4135979))

(declare-fun m!4135981 () Bool)

(assert (=> b!3633999 m!4135981))

(assert (=> b!3633995 m!4135967))

(declare-fun m!4135983 () Bool)

(assert (=> b!3633995 m!4135983))

(assert (=> b!3634002 m!4135967))

(assert (=> b!3634002 m!4135975))

(assert (=> b!3634002 m!4135975))

(assert (=> b!3634002 m!4135977))

(declare-fun m!4135985 () Bool)

(assert (=> d!1068784 m!4135985))

(declare-fun m!4135987 () Bool)

(assert (=> d!1068784 m!4135987))

(declare-fun m!4135989 () Bool)

(assert (=> d!1068784 m!4135989))

(declare-fun m!4135991 () Bool)

(assert (=> d!1068784 m!4135991))

(declare-fun m!4135993 () Bool)

(assert (=> bm!262790 m!4135993))

(assert (=> b!3634003 m!4135967))

(declare-fun m!4135995 () Bool)

(assert (=> b!3634003 m!4135995))

(declare-fun m!4135997 () Bool)

(assert (=> b!3634003 m!4135997))

(assert (=> b!3634000 m!4135967))

(assert (=> b!3634000 m!4135975))

(assert (=> b!3634000 m!4135975))

(assert (=> b!3634000 m!4135977))

(assert (=> b!3634000 m!4135977))

(declare-fun m!4135999 () Bool)

(assert (=> b!3634000 m!4135999))

(assert (=> b!3633851 d!1068784))

(declare-fun d!1068786 () Bool)

(declare-fun list!14161 (Conc!11684) List!38411)

(assert (=> d!1068786 (= (list!14159 (charsOf!3727 token!511)) (list!14161 (c!628556 (charsOf!3727 token!511))))))

(declare-fun bs!571743 () Bool)

(assert (= bs!571743 d!1068786))

(declare-fun m!4136001 () Bool)

(assert (=> bs!571743 m!4136001))

(assert (=> b!3633851 d!1068786))

(declare-fun d!1068788 () Bool)

(declare-fun lt!1257196 () BalanceConc!22982)

(assert (=> d!1068788 (= (list!14159 lt!1257196) (originalCharacters!6427 token!511))))

(declare-fun dynLambda!16614 (Int TokenValue!5943) BalanceConc!22982)

(assert (=> d!1068788 (= lt!1257196 (dynLambda!16614 (toChars!7864 (transformation!5713 (rule!8485 token!511))) (value!183282 token!511)))))

(assert (=> d!1068788 (= (charsOf!3727 token!511) lt!1257196)))

(declare-fun b_lambda!107627 () Bool)

(assert (=> (not b_lambda!107627) (not d!1068788)))

(declare-fun t!295580 () Bool)

(declare-fun tb!208921 () Bool)

(assert (=> (and b!3633872 (= (toChars!7864 (transformation!5713 (rule!8485 token!511))) (toChars!7864 (transformation!5713 (rule!8485 token!511)))) t!295580) tb!208921))

(declare-fun b!3634008 () Bool)

(declare-fun e!2249448 () Bool)

(declare-fun tp!1109233 () Bool)

(declare-fun inv!51717 (Conc!11684) Bool)

(assert (=> b!3634008 (= e!2249448 (and (inv!51717 (c!628556 (dynLambda!16614 (toChars!7864 (transformation!5713 (rule!8485 token!511))) (value!183282 token!511)))) tp!1109233))))

(declare-fun result!254502 () Bool)

(declare-fun inv!51718 (BalanceConc!22982) Bool)

(assert (=> tb!208921 (= result!254502 (and (inv!51718 (dynLambda!16614 (toChars!7864 (transformation!5713 (rule!8485 token!511))) (value!183282 token!511))) e!2249448))))

(assert (= tb!208921 b!3634008))

(declare-fun m!4136003 () Bool)

(assert (=> b!3634008 m!4136003))

(declare-fun m!4136005 () Bool)

(assert (=> tb!208921 m!4136005))

(assert (=> d!1068788 t!295580))

(declare-fun b_and!267043 () Bool)

(assert (= b_and!267013 (and (=> t!295580 result!254502) b_and!267043)))

(declare-fun t!295582 () Bool)

(declare-fun tb!208923 () Bool)

(assert (=> (and b!3633859 (= (toChars!7864 (transformation!5713 anOtherTypeRule!33)) (toChars!7864 (transformation!5713 (rule!8485 token!511)))) t!295582) tb!208923))

(declare-fun result!254506 () Bool)

(assert (= result!254506 result!254502))

(assert (=> d!1068788 t!295582))

(declare-fun b_and!267045 () Bool)

(assert (= b_and!267017 (and (=> t!295582 result!254506) b_and!267045)))

(declare-fun tb!208925 () Bool)

(declare-fun t!295584 () Bool)

(assert (=> (and b!3633865 (= (toChars!7864 (transformation!5713 rule!403)) (toChars!7864 (transformation!5713 (rule!8485 token!511)))) t!295584) tb!208925))

(declare-fun result!254508 () Bool)

(assert (= result!254508 result!254502))

(assert (=> d!1068788 t!295584))

(declare-fun b_and!267047 () Bool)

(assert (= b_and!267021 (and (=> t!295584 result!254508) b_and!267047)))

(declare-fun t!295586 () Bool)

(declare-fun tb!208927 () Bool)

(assert (=> (and b!3633846 (= (toChars!7864 (transformation!5713 (h!43708 rules!3307))) (toChars!7864 (transformation!5713 (rule!8485 token!511)))) t!295586) tb!208927))

(declare-fun result!254510 () Bool)

(assert (= result!254510 result!254502))

(assert (=> d!1068788 t!295586))

(declare-fun b_and!267049 () Bool)

(assert (= b_and!267025 (and (=> t!295586 result!254510) b_and!267049)))

(declare-fun m!4136007 () Bool)

(assert (=> d!1068788 m!4136007))

(declare-fun m!4136009 () Bool)

(assert (=> d!1068788 m!4136009))

(assert (=> b!3633851 d!1068788))

(declare-fun d!1068790 () Bool)

(assert (=> d!1068790 (= (inv!51710 (tag!6449 rule!403)) (= (mod (str.len (value!183281 (tag!6449 rule!403))) 2) 0))))

(assert (=> b!3633873 d!1068790))

(declare-fun d!1068792 () Bool)

(declare-fun res!1471985 () Bool)

(declare-fun e!2249451 () Bool)

(assert (=> d!1068792 (=> (not res!1471985) (not e!2249451))))

(declare-fun semiInverseModEq!2428 (Int Int) Bool)

(assert (=> d!1068792 (= res!1471985 (semiInverseModEq!2428 (toChars!7864 (transformation!5713 rule!403)) (toValue!8005 (transformation!5713 rule!403))))))

(assert (=> d!1068792 (= (inv!51713 (transformation!5713 rule!403)) e!2249451)))

(declare-fun b!3634011 () Bool)

(declare-fun equivClasses!2327 (Int Int) Bool)

(assert (=> b!3634011 (= e!2249451 (equivClasses!2327 (toChars!7864 (transformation!5713 rule!403)) (toValue!8005 (transformation!5713 rule!403))))))

(assert (= (and d!1068792 res!1471985) b!3634011))

(declare-fun m!4136011 () Bool)

(assert (=> d!1068792 m!4136011))

(declare-fun m!4136013 () Bool)

(assert (=> b!3634011 m!4136013))

(assert (=> b!3633873 d!1068792))

(declare-fun d!1068794 () Bool)

(declare-fun res!1471990 () Bool)

(declare-fun e!2249456 () Bool)

(assert (=> d!1068794 (=> res!1471990 e!2249456)))

(assert (=> d!1068794 (= res!1471990 (not (is-Cons!38288 rules!3307)))))

(assert (=> d!1068794 (= (sepAndNonSepRulesDisjointChars!1881 rules!3307 rules!3307) e!2249456)))

(declare-fun b!3634016 () Bool)

(declare-fun e!2249457 () Bool)

(assert (=> b!3634016 (= e!2249456 e!2249457)))

(declare-fun res!1471991 () Bool)

(assert (=> b!3634016 (=> (not res!1471991) (not e!2249457))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!852 (Rule!11226 List!38412) Bool)

(assert (=> b!3634016 (= res!1471991 (ruleDisjointCharsFromAllFromOtherType!852 (h!43708 rules!3307) rules!3307))))

(declare-fun b!3634017 () Bool)

(assert (=> b!3634017 (= e!2249457 (sepAndNonSepRulesDisjointChars!1881 rules!3307 (t!295575 rules!3307)))))

(assert (= (and d!1068794 (not res!1471990)) b!3634016))

(assert (= (and b!3634016 res!1471991) b!3634017))

(declare-fun m!4136015 () Bool)

(assert (=> b!3634016 m!4136015))

(declare-fun m!4136017 () Bool)

(assert (=> b!3634017 m!4136017))

(assert (=> b!3633852 d!1068794))

(declare-fun d!1068796 () Bool)

(declare-fun res!1471994 () Bool)

(declare-fun e!2249460 () Bool)

(assert (=> d!1068796 (=> (not res!1471994) (not e!2249460))))

(declare-fun rulesValid!2185 (LexerInterface!5302 List!38412) Bool)

(assert (=> d!1068796 (= res!1471994 (rulesValid!2185 thiss!23823 rules!3307))))

(assert (=> d!1068796 (= (rulesInvariant!4699 thiss!23823 rules!3307) e!2249460)))

(declare-fun b!3634020 () Bool)

(declare-datatypes ((List!38416 0))(
  ( (Nil!38292) (Cons!38292 (h!43712 String!43051) (t!295665 List!38416)) )
))
(declare-fun noDuplicateTag!2181 (LexerInterface!5302 List!38412 List!38416) Bool)

(assert (=> b!3634020 (= e!2249460 (noDuplicateTag!2181 thiss!23823 rules!3307 Nil!38292))))

(assert (= (and d!1068796 res!1471994) b!3634020))

(declare-fun m!4136019 () Bool)

(assert (=> d!1068796 m!4136019))

(declare-fun m!4136021 () Bool)

(assert (=> b!3634020 m!4136021))

(assert (=> b!3633874 d!1068796))

(declare-fun d!1068800 () Bool)

(declare-fun lt!1257199 () Bool)

(declare-fun content!5496 (List!38412) (Set Rule!11226))

(assert (=> d!1068800 (= lt!1257199 (set.member rule!403 (content!5496 rules!3307)))))

(declare-fun e!2249466 () Bool)

(assert (=> d!1068800 (= lt!1257199 e!2249466)))

(declare-fun res!1472000 () Bool)

(assert (=> d!1068800 (=> (not res!1472000) (not e!2249466))))

(assert (=> d!1068800 (= res!1472000 (is-Cons!38288 rules!3307))))

(assert (=> d!1068800 (= (contains!7492 rules!3307 rule!403) lt!1257199)))

(declare-fun b!3634025 () Bool)

(declare-fun e!2249465 () Bool)

(assert (=> b!3634025 (= e!2249466 e!2249465)))

(declare-fun res!1471999 () Bool)

(assert (=> b!3634025 (=> res!1471999 e!2249465)))

(assert (=> b!3634025 (= res!1471999 (= (h!43708 rules!3307) rule!403))))

(declare-fun b!3634026 () Bool)

(assert (=> b!3634026 (= e!2249465 (contains!7492 (t!295575 rules!3307) rule!403))))

(assert (= (and d!1068800 res!1472000) b!3634025))

(assert (= (and b!3634025 (not res!1471999)) b!3634026))

(declare-fun m!4136023 () Bool)

(assert (=> d!1068800 m!4136023))

(declare-fun m!4136025 () Bool)

(assert (=> d!1068800 m!4136025))

(declare-fun m!4136027 () Bool)

(assert (=> b!3634026 m!4136027))

(assert (=> b!3633854 d!1068800))

(declare-fun b!3634055 () Bool)

(declare-fun res!1472018 () Bool)

(declare-fun e!2249487 () Bool)

(assert (=> b!3634055 (=> (not res!1472018) (not e!2249487))))

(declare-fun call!262798 () Bool)

(assert (=> b!3634055 (= res!1472018 (not call!262798))))

(declare-fun b!3634056 () Bool)

(declare-fun e!2249484 () Bool)

(assert (=> b!3634056 (= e!2249484 (not (= (head!7699 lt!1257102) (c!628555 (regex!5713 (rule!8485 (_1!22211 lt!1257104)))))))))

(declare-fun d!1068802 () Bool)

(declare-fun e!2249483 () Bool)

(assert (=> d!1068802 e!2249483))

(declare-fun c!628571 () Bool)

(assert (=> d!1068802 (= c!628571 (is-EmptyExpr!10472 (regex!5713 (rule!8485 (_1!22211 lt!1257104)))))))

(declare-fun lt!1257202 () Bool)

(declare-fun e!2249485 () Bool)

(assert (=> d!1068802 (= lt!1257202 e!2249485)))

(declare-fun c!628569 () Bool)

(assert (=> d!1068802 (= c!628569 (isEmpty!22655 lt!1257102))))

(declare-fun validRegex!4790 (Regex!10472) Bool)

(assert (=> d!1068802 (validRegex!4790 (regex!5713 (rule!8485 (_1!22211 lt!1257104))))))

(assert (=> d!1068802 (= (matchR!5041 (regex!5713 (rule!8485 (_1!22211 lt!1257104))) lt!1257102) lt!1257202)))

(declare-fun b!3634057 () Bool)

(declare-fun res!1472019 () Bool)

(declare-fun e!2249486 () Bool)

(assert (=> b!3634057 (=> res!1472019 e!2249486)))

(assert (=> b!3634057 (= res!1472019 (not (is-ElementMatch!10472 (regex!5713 (rule!8485 (_1!22211 lt!1257104))))))))

(declare-fun e!2249481 () Bool)

(assert (=> b!3634057 (= e!2249481 e!2249486)))

(declare-fun b!3634058 () Bool)

(assert (=> b!3634058 (= e!2249483 e!2249481)))

(declare-fun c!628570 () Bool)

(assert (=> b!3634058 (= c!628570 (is-EmptyLang!10472 (regex!5713 (rule!8485 (_1!22211 lt!1257104)))))))

(declare-fun b!3634059 () Bool)

(declare-fun res!1472022 () Bool)

(assert (=> b!3634059 (=> res!1472022 e!2249486)))

(assert (=> b!3634059 (= res!1472022 e!2249487)))

(declare-fun res!1472020 () Bool)

(assert (=> b!3634059 (=> (not res!1472020) (not e!2249487))))

(assert (=> b!3634059 (= res!1472020 lt!1257202)))

(declare-fun b!3634060 () Bool)

(declare-fun e!2249482 () Bool)

(assert (=> b!3634060 (= e!2249482 e!2249484)))

(declare-fun res!1472023 () Bool)

(assert (=> b!3634060 (=> res!1472023 e!2249484)))

(assert (=> b!3634060 (= res!1472023 call!262798)))

(declare-fun b!3634061 () Bool)

(assert (=> b!3634061 (= e!2249483 (= lt!1257202 call!262798))))

(declare-fun b!3634062 () Bool)

(declare-fun res!1472021 () Bool)

(assert (=> b!3634062 (=> (not res!1472021) (not e!2249487))))

(declare-fun tail!5626 (List!38411) List!38411)

(assert (=> b!3634062 (= res!1472021 (isEmpty!22655 (tail!5626 lt!1257102)))))

(declare-fun b!3634063 () Bool)

(assert (=> b!3634063 (= e!2249487 (= (head!7699 lt!1257102) (c!628555 (regex!5713 (rule!8485 (_1!22211 lt!1257104))))))))

(declare-fun bm!262793 () Bool)

(assert (=> bm!262793 (= call!262798 (isEmpty!22655 lt!1257102))))

(declare-fun b!3634064 () Bool)

(assert (=> b!3634064 (= e!2249481 (not lt!1257202))))

(declare-fun b!3634065 () Bool)

(declare-fun derivativeStep!3177 (Regex!10472 C!21130) Regex!10472)

(assert (=> b!3634065 (= e!2249485 (matchR!5041 (derivativeStep!3177 (regex!5713 (rule!8485 (_1!22211 lt!1257104))) (head!7699 lt!1257102)) (tail!5626 lt!1257102)))))

(declare-fun b!3634066 () Bool)

(declare-fun nullable!3628 (Regex!10472) Bool)

(assert (=> b!3634066 (= e!2249485 (nullable!3628 (regex!5713 (rule!8485 (_1!22211 lt!1257104)))))))

(declare-fun b!3634067 () Bool)

(assert (=> b!3634067 (= e!2249486 e!2249482)))

(declare-fun res!1472024 () Bool)

(assert (=> b!3634067 (=> (not res!1472024) (not e!2249482))))

(assert (=> b!3634067 (= res!1472024 (not lt!1257202))))

(declare-fun b!3634068 () Bool)

(declare-fun res!1472017 () Bool)

(assert (=> b!3634068 (=> res!1472017 e!2249484)))

(assert (=> b!3634068 (= res!1472017 (not (isEmpty!22655 (tail!5626 lt!1257102))))))

(assert (= (and d!1068802 c!628569) b!3634066))

(assert (= (and d!1068802 (not c!628569)) b!3634065))

(assert (= (and d!1068802 c!628571) b!3634061))

(assert (= (and d!1068802 (not c!628571)) b!3634058))

(assert (= (and b!3634058 c!628570) b!3634064))

(assert (= (and b!3634058 (not c!628570)) b!3634057))

(assert (= (and b!3634057 (not res!1472019)) b!3634059))

(assert (= (and b!3634059 res!1472020) b!3634055))

(assert (= (and b!3634055 res!1472018) b!3634062))

(assert (= (and b!3634062 res!1472021) b!3634063))

(assert (= (and b!3634059 (not res!1472022)) b!3634067))

(assert (= (and b!3634067 res!1472024) b!3634060))

(assert (= (and b!3634060 (not res!1472023)) b!3634068))

(assert (= (and b!3634068 (not res!1472017)) b!3634056))

(assert (= (or b!3634061 b!3634055 b!3634060) bm!262793))

(assert (=> d!1068802 m!4135841))

(declare-fun m!4136029 () Bool)

(assert (=> d!1068802 m!4136029))

(declare-fun m!4136031 () Bool)

(assert (=> b!3634062 m!4136031))

(assert (=> b!3634062 m!4136031))

(declare-fun m!4136033 () Bool)

(assert (=> b!3634062 m!4136033))

(assert (=> b!3634068 m!4136031))

(assert (=> b!3634068 m!4136031))

(assert (=> b!3634068 m!4136033))

(declare-fun m!4136035 () Bool)

(assert (=> b!3634056 m!4136035))

(assert (=> b!3634065 m!4136035))

(assert (=> b!3634065 m!4136035))

(declare-fun m!4136037 () Bool)

(assert (=> b!3634065 m!4136037))

(assert (=> b!3634065 m!4136031))

(assert (=> b!3634065 m!4136037))

(assert (=> b!3634065 m!4136031))

(declare-fun m!4136039 () Bool)

(assert (=> b!3634065 m!4136039))

(assert (=> b!3634063 m!4136035))

(assert (=> bm!262793 m!4135841))

(declare-fun m!4136041 () Bool)

(assert (=> b!3634066 m!4136041))

(assert (=> b!3633855 d!1068802))

(declare-fun d!1068804 () Bool)

(declare-fun res!1472045 () Bool)

(declare-fun e!2249504 () Bool)

(assert (=> d!1068804 (=> (not res!1472045) (not e!2249504))))

(assert (=> d!1068804 (= res!1472045 (not (isEmpty!22655 (originalCharacters!6427 token!511))))))

(assert (=> d!1068804 (= (inv!51714 token!511) e!2249504)))

(declare-fun b!3634101 () Bool)

(declare-fun res!1472046 () Bool)

(assert (=> b!3634101 (=> (not res!1472046) (not e!2249504))))

(assert (=> b!3634101 (= res!1472046 (= (originalCharacters!6427 token!511) (list!14159 (dynLambda!16614 (toChars!7864 (transformation!5713 (rule!8485 token!511))) (value!183282 token!511)))))))

(declare-fun b!3634102 () Bool)

(assert (=> b!3634102 (= e!2249504 (= (size!29214 token!511) (size!29216 (originalCharacters!6427 token!511))))))

(assert (= (and d!1068804 res!1472045) b!3634101))

(assert (= (and b!3634101 res!1472046) b!3634102))

(declare-fun b_lambda!107629 () Bool)

(assert (=> (not b_lambda!107629) (not b!3634101)))

(assert (=> b!3634101 t!295580))

(declare-fun b_and!267051 () Bool)

(assert (= b_and!267043 (and (=> t!295580 result!254502) b_and!267051)))

(assert (=> b!3634101 t!295582))

(declare-fun b_and!267053 () Bool)

(assert (= b_and!267045 (and (=> t!295582 result!254506) b_and!267053)))

(assert (=> b!3634101 t!295584))

(declare-fun b_and!267055 () Bool)

(assert (= b_and!267047 (and (=> t!295584 result!254508) b_and!267055)))

(assert (=> b!3634101 t!295586))

(declare-fun b_and!267057 () Bool)

(assert (= b_and!267049 (and (=> t!295586 result!254510) b_and!267057)))

(declare-fun m!4136043 () Bool)

(assert (=> d!1068804 m!4136043))

(assert (=> b!3634101 m!4136009))

(assert (=> b!3634101 m!4136009))

(declare-fun m!4136045 () Bool)

(assert (=> b!3634101 m!4136045))

(declare-fun m!4136047 () Bool)

(assert (=> b!3634102 m!4136047))

(assert (=> start!338964 d!1068804))

(declare-fun d!1068806 () Bool)

(assert (=> d!1068806 (= (inv!51710 (tag!6449 anOtherTypeRule!33)) (= (mod (str.len (value!183281 (tag!6449 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3633847 d!1068806))

(declare-fun d!1068808 () Bool)

(declare-fun res!1472047 () Bool)

(declare-fun e!2249505 () Bool)

(assert (=> d!1068808 (=> (not res!1472047) (not e!2249505))))

(assert (=> d!1068808 (= res!1472047 (semiInverseModEq!2428 (toChars!7864 (transformation!5713 anOtherTypeRule!33)) (toValue!8005 (transformation!5713 anOtherTypeRule!33))))))

(assert (=> d!1068808 (= (inv!51713 (transformation!5713 anOtherTypeRule!33)) e!2249505)))

(declare-fun b!3634103 () Bool)

(assert (=> b!3634103 (= e!2249505 (equivClasses!2327 (toChars!7864 (transformation!5713 anOtherTypeRule!33)) (toValue!8005 (transformation!5713 anOtherTypeRule!33))))))

(assert (= (and d!1068808 res!1472047) b!3634103))

(declare-fun m!4136049 () Bool)

(assert (=> d!1068808 m!4136049))

(declare-fun m!4136051 () Bool)

(assert (=> b!3634103 m!4136051))

(assert (=> b!3633847 d!1068808))

(declare-fun d!1068810 () Bool)

(assert (=> d!1068810 (= (isEmpty!22655 lt!1257102) (is-Nil!38287 lt!1257102))))

(assert (=> b!3633869 d!1068810))

(declare-fun d!1068812 () Bool)

(declare-fun lt!1257205 () Bool)

(assert (=> d!1068812 (= lt!1257205 (set.member (rule!8485 (_1!22211 lt!1257104)) (content!5496 rules!3307)))))

(declare-fun e!2249507 () Bool)

(assert (=> d!1068812 (= lt!1257205 e!2249507)))

(declare-fun res!1472049 () Bool)

(assert (=> d!1068812 (=> (not res!1472049) (not e!2249507))))

(assert (=> d!1068812 (= res!1472049 (is-Cons!38288 rules!3307))))

(assert (=> d!1068812 (= (contains!7492 rules!3307 (rule!8485 (_1!22211 lt!1257104))) lt!1257205)))

(declare-fun b!3634104 () Bool)

(declare-fun e!2249506 () Bool)

(assert (=> b!3634104 (= e!2249507 e!2249506)))

(declare-fun res!1472048 () Bool)

(assert (=> b!3634104 (=> res!1472048 e!2249506)))

(assert (=> b!3634104 (= res!1472048 (= (h!43708 rules!3307) (rule!8485 (_1!22211 lt!1257104))))))

(declare-fun b!3634105 () Bool)

(assert (=> b!3634105 (= e!2249506 (contains!7492 (t!295575 rules!3307) (rule!8485 (_1!22211 lt!1257104))))))

(assert (= (and d!1068812 res!1472049) b!3634104))

(assert (= (and b!3634104 (not res!1472048)) b!3634105))

(assert (=> d!1068812 m!4136023))

(declare-fun m!4136053 () Bool)

(assert (=> d!1068812 m!4136053))

(declare-fun m!4136055 () Bool)

(assert (=> b!3634105 m!4136055))

(assert (=> b!3633848 d!1068812))

(declare-fun b!3634117 () Bool)

(declare-fun e!2249513 () Bool)

(declare-fun lt!1257208 () List!38411)

(assert (=> b!3634117 (= e!2249513 (or (not (= (_2!22211 lt!1257104) Nil!38287)) (= lt!1257208 lt!1257102)))))

(declare-fun b!3634115 () Bool)

(declare-fun e!2249512 () List!38411)

(assert (=> b!3634115 (= e!2249512 (Cons!38287 (h!43707 lt!1257102) (++!9529 (t!295574 lt!1257102) (_2!22211 lt!1257104))))))

(declare-fun b!3634114 () Bool)

(assert (=> b!3634114 (= e!2249512 (_2!22211 lt!1257104))))

(declare-fun d!1068814 () Bool)

(assert (=> d!1068814 e!2249513))

(declare-fun res!1472055 () Bool)

(assert (=> d!1068814 (=> (not res!1472055) (not e!2249513))))

(declare-fun content!5497 (List!38411) (Set C!21130))

(assert (=> d!1068814 (= res!1472055 (= (content!5497 lt!1257208) (set.union (content!5497 lt!1257102) (content!5497 (_2!22211 lt!1257104)))))))

(assert (=> d!1068814 (= lt!1257208 e!2249512)))

(declare-fun c!628580 () Bool)

(assert (=> d!1068814 (= c!628580 (is-Nil!38287 lt!1257102))))

(assert (=> d!1068814 (= (++!9529 lt!1257102 (_2!22211 lt!1257104)) lt!1257208)))

(declare-fun b!3634116 () Bool)

(declare-fun res!1472054 () Bool)

(assert (=> b!3634116 (=> (not res!1472054) (not e!2249513))))

(assert (=> b!3634116 (= res!1472054 (= (size!29216 lt!1257208) (+ (size!29216 lt!1257102) (size!29216 (_2!22211 lt!1257104)))))))

(assert (= (and d!1068814 c!628580) b!3634114))

(assert (= (and d!1068814 (not c!628580)) b!3634115))

(assert (= (and d!1068814 res!1472055) b!3634116))

(assert (= (and b!3634116 res!1472054) b!3634117))

(declare-fun m!4136057 () Bool)

(assert (=> b!3634115 m!4136057))

(declare-fun m!4136059 () Bool)

(assert (=> d!1068814 m!4136059))

(declare-fun m!4136061 () Bool)

(assert (=> d!1068814 m!4136061))

(declare-fun m!4136063 () Bool)

(assert (=> d!1068814 m!4136063))

(declare-fun m!4136065 () Bool)

(assert (=> b!3634116 m!4136065))

(assert (=> b!3634116 m!4135731))

(declare-fun m!4136067 () Bool)

(assert (=> b!3634116 m!4136067))

(assert (=> b!3633870 d!1068814))

(declare-fun d!1068816 () Bool)

(declare-fun e!2249523 () Bool)

(assert (=> d!1068816 e!2249523))

(declare-fun res!1472068 () Bool)

(assert (=> d!1068816 (=> (not res!1472068) (not e!2249523))))

(assert (=> d!1068816 (= res!1472068 (isDefined!6287 (getRuleFromTag!1317 thiss!23823 rules!3307 (tag!6449 (rule!8485 (_1!22211 lt!1257104))))))))

(declare-fun lt!1257212 () Unit!55109)

(declare-fun choose!21345 (LexerInterface!5302 List!38412 List!38411 Token!10792) Unit!55109)

(assert (=> d!1068816 (= lt!1257212 (choose!21345 thiss!23823 rules!3307 lt!1257109 (_1!22211 lt!1257104)))))

(assert (=> d!1068816 (rulesInvariant!4699 thiss!23823 rules!3307)))

(assert (=> d!1068816 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1317 thiss!23823 rules!3307 lt!1257109 (_1!22211 lt!1257104)) lt!1257212)))

(declare-fun b!3634136 () Bool)

(declare-fun res!1472069 () Bool)

(assert (=> b!3634136 (=> (not res!1472069) (not e!2249523))))

(assert (=> b!3634136 (= res!1472069 (matchR!5041 (regex!5713 (get!12521 (getRuleFromTag!1317 thiss!23823 rules!3307 (tag!6449 (rule!8485 (_1!22211 lt!1257104)))))) (list!14159 (charsOf!3727 (_1!22211 lt!1257104)))))))

(declare-fun b!3634137 () Bool)

(assert (=> b!3634137 (= e!2249523 (= (rule!8485 (_1!22211 lt!1257104)) (get!12521 (getRuleFromTag!1317 thiss!23823 rules!3307 (tag!6449 (rule!8485 (_1!22211 lt!1257104)))))))))

(assert (= (and d!1068816 res!1472068) b!3634136))

(assert (= (and b!3634136 res!1472069) b!3634137))

(assert (=> d!1068816 m!4135755))

(assert (=> d!1068816 m!4135755))

(declare-fun m!4136081 () Bool)

(assert (=> d!1068816 m!4136081))

(declare-fun m!4136083 () Bool)

(assert (=> d!1068816 m!4136083))

(assert (=> d!1068816 m!4135777))

(assert (=> b!3634136 m!4135755))

(declare-fun m!4136087 () Bool)

(assert (=> b!3634136 m!4136087))

(assert (=> b!3634136 m!4135755))

(assert (=> b!3634136 m!4135835))

(declare-fun m!4136089 () Bool)

(assert (=> b!3634136 m!4136089))

(assert (=> b!3634136 m!4135745))

(assert (=> b!3634136 m!4135745))

(assert (=> b!3634136 m!4135835))

(assert (=> b!3634137 m!4135755))

(assert (=> b!3634137 m!4135755))

(assert (=> b!3634137 m!4136087))

(assert (=> b!3633870 d!1068816))

(declare-fun b!3634146 () Bool)

(declare-fun e!2249532 () Bool)

(declare-fun e!2249530 () Bool)

(assert (=> b!3634146 (= e!2249532 e!2249530)))

(declare-fun res!1472080 () Bool)

(assert (=> b!3634146 (=> (not res!1472080) (not e!2249530))))

(assert (=> b!3634146 (= res!1472080 (not (is-Nil!38287 lt!1257109)))))

(declare-fun b!3634149 () Bool)

(declare-fun e!2249531 () Bool)

(assert (=> b!3634149 (= e!2249531 (>= (size!29216 lt!1257109) (size!29216 lt!1257108)))))

(declare-fun b!3634148 () Bool)

(assert (=> b!3634148 (= e!2249530 (isPrefix!3076 (tail!5626 lt!1257108) (tail!5626 lt!1257109)))))

(declare-fun b!3634147 () Bool)

(declare-fun res!1472081 () Bool)

(assert (=> b!3634147 (=> (not res!1472081) (not e!2249530))))

(assert (=> b!3634147 (= res!1472081 (= (head!7699 lt!1257108) (head!7699 lt!1257109)))))

(declare-fun d!1068820 () Bool)

(assert (=> d!1068820 e!2249531))

(declare-fun res!1472079 () Bool)

(assert (=> d!1068820 (=> res!1472079 e!2249531)))

(declare-fun lt!1257215 () Bool)

(assert (=> d!1068820 (= res!1472079 (not lt!1257215))))

(assert (=> d!1068820 (= lt!1257215 e!2249532)))

(declare-fun res!1472078 () Bool)

(assert (=> d!1068820 (=> res!1472078 e!2249532)))

(assert (=> d!1068820 (= res!1472078 (is-Nil!38287 lt!1257108))))

(assert (=> d!1068820 (= (isPrefix!3076 lt!1257108 lt!1257109) lt!1257215)))

(assert (= (and d!1068820 (not res!1472078)) b!3634146))

(assert (= (and b!3634146 res!1472080) b!3634147))

(assert (= (and b!3634147 res!1472081) b!3634148))

(assert (= (and d!1068820 (not res!1472079)) b!3634149))

(declare-fun m!4136093 () Bool)

(assert (=> b!3634149 m!4136093))

(assert (=> b!3634149 m!4135997))

(declare-fun m!4136095 () Bool)

(assert (=> b!3634148 m!4136095))

(declare-fun m!4136097 () Bool)

(assert (=> b!3634148 m!4136097))

(assert (=> b!3634148 m!4136095))

(assert (=> b!3634148 m!4136097))

(declare-fun m!4136099 () Bool)

(assert (=> b!3634148 m!4136099))

(declare-fun m!4136101 () Bool)

(assert (=> b!3634147 m!4136101))

(declare-fun m!4136103 () Bool)

(assert (=> b!3634147 m!4136103))

(assert (=> b!3633870 d!1068820))

(declare-fun d!1068824 () Bool)

(assert (=> d!1068824 (= (get!12522 lt!1257103) (v!37858 lt!1257103))))

(assert (=> b!3633870 d!1068824))

(declare-fun d!1068826 () Bool)

(declare-fun isEmpty!22659 (Option!8054) Bool)

(assert (=> d!1068826 (= (isDefined!6287 lt!1257098) (not (isEmpty!22659 lt!1257098)))))

(declare-fun bs!571745 () Bool)

(assert (= bs!571745 d!1068826))

(declare-fun m!4136105 () Bool)

(assert (=> bs!571745 m!4136105))

(assert (=> b!3633870 d!1068826))

(declare-fun b!3634162 () Bool)

(declare-fun lt!1257222 () Unit!55109)

(declare-fun lt!1257223 () Unit!55109)

(assert (=> b!3634162 (= lt!1257222 lt!1257223)))

(assert (=> b!3634162 (rulesInvariant!4699 thiss!23823 (t!295575 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!558 (LexerInterface!5302 Rule!11226 List!38412) Unit!55109)

(assert (=> b!3634162 (= lt!1257223 (lemmaInvariantOnRulesThenOnTail!558 thiss!23823 (h!43708 rules!3307) (t!295575 rules!3307)))))

(declare-fun e!2249541 () Option!8054)

(assert (=> b!3634162 (= e!2249541 (getRuleFromTag!1317 thiss!23823 (t!295575 rules!3307) (tag!6449 (rule!8485 (_1!22211 lt!1257104)))))))

(declare-fun b!3634163 () Bool)

(declare-fun e!2249544 () Bool)

(declare-fun lt!1257224 () Option!8054)

(assert (=> b!3634163 (= e!2249544 (= (tag!6449 (get!12521 lt!1257224)) (tag!6449 (rule!8485 (_1!22211 lt!1257104)))))))

(declare-fun b!3634164 () Bool)

(assert (=> b!3634164 (= e!2249541 None!8053)))

(declare-fun b!3634165 () Bool)

(declare-fun e!2249543 () Bool)

(assert (=> b!3634165 (= e!2249543 e!2249544)))

(declare-fun res!1472086 () Bool)

(assert (=> b!3634165 (=> (not res!1472086) (not e!2249544))))

(assert (=> b!3634165 (= res!1472086 (contains!7492 rules!3307 (get!12521 lt!1257224)))))

(declare-fun d!1068828 () Bool)

(assert (=> d!1068828 e!2249543))

(declare-fun res!1472087 () Bool)

(assert (=> d!1068828 (=> res!1472087 e!2249543)))

(assert (=> d!1068828 (= res!1472087 (isEmpty!22659 lt!1257224))))

(declare-fun e!2249542 () Option!8054)

(assert (=> d!1068828 (= lt!1257224 e!2249542)))

(declare-fun c!628589 () Bool)

(assert (=> d!1068828 (= c!628589 (and (is-Cons!38288 rules!3307) (= (tag!6449 (h!43708 rules!3307)) (tag!6449 (rule!8485 (_1!22211 lt!1257104))))))))

(assert (=> d!1068828 (rulesInvariant!4699 thiss!23823 rules!3307)))

(assert (=> d!1068828 (= (getRuleFromTag!1317 thiss!23823 rules!3307 (tag!6449 (rule!8485 (_1!22211 lt!1257104)))) lt!1257224)))

(declare-fun b!3634166 () Bool)

(assert (=> b!3634166 (= e!2249542 e!2249541)))

(declare-fun c!628588 () Bool)

(assert (=> b!3634166 (= c!628588 (and (is-Cons!38288 rules!3307) (not (= (tag!6449 (h!43708 rules!3307)) (tag!6449 (rule!8485 (_1!22211 lt!1257104)))))))))

(declare-fun b!3634167 () Bool)

(assert (=> b!3634167 (= e!2249542 (Some!8053 (h!43708 rules!3307)))))

(assert (= (and d!1068828 c!628589) b!3634167))

(assert (= (and d!1068828 (not c!628589)) b!3634166))

(assert (= (and b!3634166 c!628588) b!3634162))

(assert (= (and b!3634166 (not c!628588)) b!3634164))

(assert (= (and d!1068828 (not res!1472087)) b!3634165))

(assert (= (and b!3634165 res!1472086) b!3634163))

(declare-fun m!4136107 () Bool)

(assert (=> b!3634162 m!4136107))

(declare-fun m!4136109 () Bool)

(assert (=> b!3634162 m!4136109))

(declare-fun m!4136111 () Bool)

(assert (=> b!3634162 m!4136111))

(declare-fun m!4136113 () Bool)

(assert (=> b!3634163 m!4136113))

(assert (=> b!3634165 m!4136113))

(assert (=> b!3634165 m!4136113))

(declare-fun m!4136115 () Bool)

(assert (=> b!3634165 m!4136115))

(declare-fun m!4136117 () Bool)

(assert (=> d!1068828 m!4136117))

(assert (=> d!1068828 m!4135777))

(assert (=> b!3633870 d!1068828))

(declare-fun b!3634210 () Bool)

(declare-fun e!2249562 () Unit!55109)

(declare-fun Unit!55114 () Unit!55109)

(assert (=> b!3634210 (= e!2249562 Unit!55114)))

(declare-fun lt!1257290 () List!38411)

(assert (=> b!3634210 (= lt!1257290 (++!9529 lt!1257108 suffix!1395))))

(declare-fun lt!1257278 () Unit!55109)

(declare-fun lt!1257280 () Token!10792)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!515 (LexerInterface!5302 Rule!11226 List!38412 List!38411) Unit!55109)

(assert (=> b!3634210 (= lt!1257278 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!515 thiss!23823 (rule!8485 lt!1257280) rules!3307 lt!1257290))))

(assert (=> b!3634210 (isEmpty!22658 (maxPrefixOneRule!1974 thiss!23823 (rule!8485 lt!1257280) lt!1257290))))

(declare-fun lt!1257285 () Unit!55109)

(assert (=> b!3634210 (= lt!1257285 lt!1257278)))

(declare-fun lt!1257289 () List!38411)

(assert (=> b!3634210 (= lt!1257289 (list!14159 (charsOf!3727 lt!1257280)))))

(declare-fun lt!1257291 () Unit!55109)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!503 (LexerInterface!5302 Rule!11226 List!38411 List!38411) Unit!55109)

(assert (=> b!3634210 (= lt!1257291 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!503 thiss!23823 (rule!8485 lt!1257280) lt!1257289 (++!9529 lt!1257108 suffix!1395)))))

(assert (=> b!3634210 (not (matchR!5041 (regex!5713 (rule!8485 lt!1257280)) lt!1257289))))

(declare-fun lt!1257292 () Unit!55109)

(assert (=> b!3634210 (= lt!1257292 lt!1257291)))

(assert (=> b!3634210 false))

(declare-fun b!3634208 () Bool)

(declare-fun res!1472114 () Bool)

(declare-fun e!2249561 () Bool)

(assert (=> b!3634208 (=> (not res!1472114) (not e!2249561))))

(assert (=> b!3634208 (= res!1472114 (matchR!5041 (regex!5713 (get!12521 (getRuleFromTag!1317 thiss!23823 rules!3307 (tag!6449 (rule!8485 lt!1257280))))) (list!14159 (charsOf!3727 lt!1257280))))))

(declare-fun b!3634209 () Bool)

(assert (=> b!3634209 (= e!2249561 (= (rule!8485 lt!1257280) (get!12521 (getRuleFromTag!1317 thiss!23823 rules!3307 (tag!6449 (rule!8485 lt!1257280))))))))

(declare-fun d!1068830 () Bool)

(assert (=> d!1068830 (isDefined!6286 (maxPrefix!2836 thiss!23823 rules!3307 (++!9529 lt!1257108 suffix!1395)))))

(declare-fun lt!1257286 () Unit!55109)

(assert (=> d!1068830 (= lt!1257286 e!2249562)))

(declare-fun c!628595 () Bool)

(assert (=> d!1068830 (= c!628595 (isEmpty!22658 (maxPrefix!2836 thiss!23823 rules!3307 (++!9529 lt!1257108 suffix!1395))))))

(declare-fun lt!1257284 () Unit!55109)

(declare-fun lt!1257293 () Unit!55109)

(assert (=> d!1068830 (= lt!1257284 lt!1257293)))

(assert (=> d!1068830 e!2249561))

(declare-fun res!1472113 () Bool)

(assert (=> d!1068830 (=> (not res!1472113) (not e!2249561))))

(assert (=> d!1068830 (= res!1472113 (isDefined!6287 (getRuleFromTag!1317 thiss!23823 rules!3307 (tag!6449 (rule!8485 lt!1257280)))))))

(assert (=> d!1068830 (= lt!1257293 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1317 thiss!23823 rules!3307 lt!1257108 lt!1257280))))

(declare-fun lt!1257277 () Unit!55109)

(declare-fun lt!1257283 () Unit!55109)

(assert (=> d!1068830 (= lt!1257277 lt!1257283)))

(declare-fun lt!1257288 () List!38411)

(assert (=> d!1068830 (isPrefix!3076 lt!1257288 (++!9529 lt!1257108 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!479 (List!38411 List!38411 List!38411) Unit!55109)

(assert (=> d!1068830 (= lt!1257283 (lemmaPrefixStaysPrefixWhenAddingToSuffix!479 lt!1257288 lt!1257108 suffix!1395))))

(assert (=> d!1068830 (= lt!1257288 (list!14159 (charsOf!3727 lt!1257280)))))

(declare-fun lt!1257281 () Unit!55109)

(declare-fun lt!1257279 () Unit!55109)

(assert (=> d!1068830 (= lt!1257281 lt!1257279)))

(declare-fun lt!1257282 () List!38411)

(declare-fun lt!1257287 () List!38411)

(assert (=> d!1068830 (isPrefix!3076 lt!1257282 (++!9529 lt!1257282 lt!1257287))))

(assert (=> d!1068830 (= lt!1257279 (lemmaConcatTwoListThenFirstIsPrefix!1995 lt!1257282 lt!1257287))))

(assert (=> d!1068830 (= lt!1257287 (_2!22211 (get!12522 (maxPrefix!2836 thiss!23823 rules!3307 lt!1257108))))))

(assert (=> d!1068830 (= lt!1257282 (list!14159 (charsOf!3727 lt!1257280)))))

(declare-datatypes ((List!38417 0))(
  ( (Nil!38293) (Cons!38293 (h!43713 Token!10792) (t!295698 List!38417)) )
))
(declare-fun head!7701 (List!38417) Token!10792)

(declare-datatypes ((IArray!23377 0))(
  ( (IArray!23378 (innerList!11746 List!38417)) )
))
(declare-datatypes ((Conc!11686 0))(
  ( (Node!11686 (left!29897 Conc!11686) (right!30227 Conc!11686) (csize!23602 Int) (cheight!11897 Int)) (Leaf!18154 (xs!14888 IArray!23377) (csize!23603 Int)) (Empty!11686) )
))
(declare-datatypes ((BalanceConc!22986 0))(
  ( (BalanceConc!22987 (c!628673 Conc!11686)) )
))
(declare-fun list!14162 (BalanceConc!22986) List!38417)

(declare-datatypes ((tuple2!38158 0))(
  ( (tuple2!38159 (_1!22213 BalanceConc!22986) (_2!22213 BalanceConc!22982)) )
))
(declare-fun lex!2511 (LexerInterface!5302 List!38412 BalanceConc!22982) tuple2!38158)

(assert (=> d!1068830 (= lt!1257280 (head!7701 (list!14162 (_1!22213 (lex!2511 thiss!23823 rules!3307 (seqFromList!4262 lt!1257108))))))))

(assert (=> d!1068830 (not (isEmpty!22654 rules!3307))))

(assert (=> d!1068830 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!980 thiss!23823 rules!3307 lt!1257108 suffix!1395) lt!1257286)))

(declare-fun b!3634211 () Bool)

(declare-fun Unit!55115 () Unit!55109)

(assert (=> b!3634211 (= e!2249562 Unit!55115)))

(assert (= (and d!1068830 res!1472113) b!3634208))

(assert (= (and b!3634208 res!1472114) b!3634209))

(assert (= (and d!1068830 c!628595) b!3634210))

(assert (= (and d!1068830 (not c!628595)) b!3634211))

(declare-fun m!4136163 () Bool)

(assert (=> b!3634210 m!4136163))

(declare-fun m!4136165 () Bool)

(assert (=> b!3634210 m!4136165))

(assert (=> b!3634210 m!4136163))

(assert (=> b!3634210 m!4135759))

(assert (=> b!3634210 m!4135759))

(declare-fun m!4136167 () Bool)

(assert (=> b!3634210 m!4136167))

(declare-fun m!4136169 () Bool)

(assert (=> b!3634210 m!4136169))

(declare-fun m!4136171 () Bool)

(assert (=> b!3634210 m!4136171))

(declare-fun m!4136173 () Bool)

(assert (=> b!3634210 m!4136173))

(assert (=> b!3634210 m!4136169))

(declare-fun m!4136175 () Bool)

(assert (=> b!3634210 m!4136175))

(declare-fun m!4136177 () Bool)

(assert (=> b!3634208 m!4136177))

(assert (=> b!3634208 m!4136163))

(assert (=> b!3634208 m!4136165))

(assert (=> b!3634208 m!4136163))

(assert (=> b!3634208 m!4136165))

(declare-fun m!4136179 () Bool)

(assert (=> b!3634208 m!4136179))

(assert (=> b!3634208 m!4136177))

(declare-fun m!4136181 () Bool)

(assert (=> b!3634208 m!4136181))

(assert (=> b!3634209 m!4136177))

(assert (=> b!3634209 m!4136177))

(assert (=> b!3634209 m!4136181))

(declare-fun m!4136183 () Bool)

(assert (=> d!1068830 m!4136183))

(assert (=> d!1068830 m!4135759))

(declare-fun m!4136185 () Bool)

(assert (=> d!1068830 m!4136185))

(declare-fun m!4136187 () Bool)

(assert (=> d!1068830 m!4136187))

(declare-fun m!4136189 () Bool)

(assert (=> d!1068830 m!4136189))

(assert (=> d!1068830 m!4136177))

(assert (=> d!1068830 m!4135773))

(assert (=> d!1068830 m!4136163))

(assert (=> d!1068830 m!4136165))

(assert (=> d!1068830 m!4135815))

(declare-fun m!4136191 () Bool)

(assert (=> d!1068830 m!4136191))

(declare-fun m!4136193 () Bool)

(assert (=> d!1068830 m!4136193))

(assert (=> d!1068830 m!4136183))

(declare-fun m!4136195 () Bool)

(assert (=> d!1068830 m!4136195))

(declare-fun m!4136197 () Bool)

(assert (=> d!1068830 m!4136197))

(assert (=> d!1068830 m!4135815))

(declare-fun m!4136199 () Bool)

(assert (=> d!1068830 m!4136199))

(declare-fun m!4136201 () Bool)

(assert (=> d!1068830 m!4136201))

(assert (=> d!1068830 m!4136187))

(declare-fun m!4136203 () Bool)

(assert (=> d!1068830 m!4136203))

(assert (=> d!1068830 m!4136177))

(declare-fun m!4136205 () Bool)

(assert (=> d!1068830 m!4136205))

(declare-fun m!4136207 () Bool)

(assert (=> d!1068830 m!4136207))

(assert (=> d!1068830 m!4136163))

(assert (=> d!1068830 m!4136201))

(declare-fun m!4136209 () Bool)

(assert (=> d!1068830 m!4136209))

(assert (=> d!1068830 m!4135759))

(assert (=> d!1068830 m!4136191))

(declare-fun m!4136211 () Bool)

(assert (=> d!1068830 m!4136211))

(assert (=> d!1068830 m!4135759))

(assert (=> d!1068830 m!4136191))

(assert (=> b!3633870 d!1068830))

(declare-fun b!3634212 () Bool)

(declare-fun e!2249565 () Bool)

(declare-fun e!2249563 () Bool)

(assert (=> b!3634212 (= e!2249565 e!2249563)))

(declare-fun res!1472117 () Bool)

(assert (=> b!3634212 (=> (not res!1472117) (not e!2249563))))

(assert (=> b!3634212 (= res!1472117 (not (is-Nil!38287 lt!1257106)))))

(declare-fun b!3634215 () Bool)

(declare-fun e!2249564 () Bool)

(assert (=> b!3634215 (= e!2249564 (>= (size!29216 lt!1257106) (size!29216 lt!1257102)))))

(declare-fun b!3634214 () Bool)

(assert (=> b!3634214 (= e!2249563 (isPrefix!3076 (tail!5626 lt!1257102) (tail!5626 lt!1257106)))))

(declare-fun b!3634213 () Bool)

(declare-fun res!1472118 () Bool)

(assert (=> b!3634213 (=> (not res!1472118) (not e!2249563))))

(assert (=> b!3634213 (= res!1472118 (= (head!7699 lt!1257102) (head!7699 lt!1257106)))))

(declare-fun d!1068838 () Bool)

(assert (=> d!1068838 e!2249564))

(declare-fun res!1472116 () Bool)

(assert (=> d!1068838 (=> res!1472116 e!2249564)))

(declare-fun lt!1257294 () Bool)

(assert (=> d!1068838 (= res!1472116 (not lt!1257294))))

(assert (=> d!1068838 (= lt!1257294 e!2249565)))

(declare-fun res!1472115 () Bool)

(assert (=> d!1068838 (=> res!1472115 e!2249565)))

(assert (=> d!1068838 (= res!1472115 (is-Nil!38287 lt!1257102))))

(assert (=> d!1068838 (= (isPrefix!3076 lt!1257102 lt!1257106) lt!1257294)))

(assert (= (and d!1068838 (not res!1472115)) b!3634212))

(assert (= (and b!3634212 res!1472117) b!3634213))

(assert (= (and b!3634213 res!1472118) b!3634214))

(assert (= (and d!1068838 (not res!1472116)) b!3634215))

(declare-fun m!4136213 () Bool)

(assert (=> b!3634215 m!4136213))

(assert (=> b!3634215 m!4135731))

(assert (=> b!3634214 m!4136031))

(declare-fun m!4136215 () Bool)

(assert (=> b!3634214 m!4136215))

(assert (=> b!3634214 m!4136031))

(assert (=> b!3634214 m!4136215))

(declare-fun m!4136217 () Bool)

(assert (=> b!3634214 m!4136217))

(assert (=> b!3634213 m!4136035))

(declare-fun m!4136219 () Bool)

(assert (=> b!3634213 m!4136219))

(assert (=> b!3633870 d!1068838))

(declare-fun d!1068840 () Bool)

(assert (=> d!1068840 (isPrefix!3076 lt!1257102 (++!9529 lt!1257102 (_2!22211 lt!1257104)))))

(declare-fun lt!1257297 () Unit!55109)

(declare-fun choose!21346 (List!38411 List!38411) Unit!55109)

(assert (=> d!1068840 (= lt!1257297 (choose!21346 lt!1257102 (_2!22211 lt!1257104)))))

(assert (=> d!1068840 (= (lemmaConcatTwoListThenFirstIsPrefix!1995 lt!1257102 (_2!22211 lt!1257104)) lt!1257297)))

(declare-fun bs!571747 () Bool)

(assert (= bs!571747 d!1068840))

(assert (=> bs!571747 m!4135757))

(assert (=> bs!571747 m!4135757))

(declare-fun m!4136221 () Bool)

(assert (=> bs!571747 m!4136221))

(declare-fun m!4136223 () Bool)

(assert (=> bs!571747 m!4136223))

(assert (=> b!3633870 d!1068840))

(declare-fun d!1068842 () Bool)

(declare-fun lt!1257298 () BalanceConc!22982)

(assert (=> d!1068842 (= (list!14159 lt!1257298) (originalCharacters!6427 (_1!22211 lt!1257104)))))

(assert (=> d!1068842 (= lt!1257298 (dynLambda!16614 (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) (value!183282 (_1!22211 lt!1257104))))))

(assert (=> d!1068842 (= (charsOf!3727 (_1!22211 lt!1257104)) lt!1257298)))

(declare-fun b_lambda!107633 () Bool)

(assert (=> (not b_lambda!107633) (not d!1068842)))

(declare-fun tb!208937 () Bool)

(declare-fun t!295596 () Bool)

(assert (=> (and b!3633872 (= (toChars!7864 (transformation!5713 (rule!8485 token!511))) (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295596) tb!208937))

(declare-fun b!3634216 () Bool)

(declare-fun e!2249566 () Bool)

(declare-fun tp!1109237 () Bool)

(assert (=> b!3634216 (= e!2249566 (and (inv!51717 (c!628556 (dynLambda!16614 (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) (value!183282 (_1!22211 lt!1257104))))) tp!1109237))))

(declare-fun result!254522 () Bool)

(assert (=> tb!208937 (= result!254522 (and (inv!51718 (dynLambda!16614 (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) (value!183282 (_1!22211 lt!1257104)))) e!2249566))))

(assert (= tb!208937 b!3634216))

(declare-fun m!4136225 () Bool)

(assert (=> b!3634216 m!4136225))

(declare-fun m!4136227 () Bool)

(assert (=> tb!208937 m!4136227))

(assert (=> d!1068842 t!295596))

(declare-fun b_and!267067 () Bool)

(assert (= b_and!267051 (and (=> t!295596 result!254522) b_and!267067)))

(declare-fun t!295598 () Bool)

(declare-fun tb!208939 () Bool)

(assert (=> (and b!3633859 (= (toChars!7864 (transformation!5713 anOtherTypeRule!33)) (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295598) tb!208939))

(declare-fun result!254524 () Bool)

(assert (= result!254524 result!254522))

(assert (=> d!1068842 t!295598))

(declare-fun b_and!267069 () Bool)

(assert (= b_and!267053 (and (=> t!295598 result!254524) b_and!267069)))

(declare-fun tb!208941 () Bool)

(declare-fun t!295600 () Bool)

(assert (=> (and b!3633865 (= (toChars!7864 (transformation!5713 rule!403)) (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295600) tb!208941))

(declare-fun result!254526 () Bool)

(assert (= result!254526 result!254522))

(assert (=> d!1068842 t!295600))

(declare-fun b_and!267071 () Bool)

(assert (= b_and!267055 (and (=> t!295600 result!254526) b_and!267071)))

(declare-fun t!295602 () Bool)

(declare-fun tb!208943 () Bool)

(assert (=> (and b!3633846 (= (toChars!7864 (transformation!5713 (h!43708 rules!3307))) (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295602) tb!208943))

(declare-fun result!254528 () Bool)

(assert (= result!254528 result!254522))

(assert (=> d!1068842 t!295602))

(declare-fun b_and!267073 () Bool)

(assert (= b_and!267057 (and (=> t!295602 result!254528) b_and!267073)))

(declare-fun m!4136229 () Bool)

(assert (=> d!1068842 m!4136229))

(declare-fun m!4136231 () Bool)

(assert (=> d!1068842 m!4136231))

(assert (=> b!3633870 d!1068842))

(declare-fun b!3634217 () Bool)

(declare-fun e!2249567 () Bool)

(declare-fun lt!1257300 () Option!8055)

(assert (=> b!3634217 (= e!2249567 (contains!7492 rules!3307 (rule!8485 (_1!22211 (get!12522 lt!1257300)))))))

(declare-fun b!3634218 () Bool)

(declare-fun res!1472123 () Bool)

(assert (=> b!3634218 (=> (not res!1472123) (not e!2249567))))

(assert (=> b!3634218 (= res!1472123 (= (++!9529 (list!14159 (charsOf!3727 (_1!22211 (get!12522 lt!1257300)))) (_2!22211 (get!12522 lt!1257300))) lt!1257109))))

(declare-fun b!3634219 () Bool)

(declare-fun res!1472120 () Bool)

(assert (=> b!3634219 (=> (not res!1472120) (not e!2249567))))

(assert (=> b!3634219 (= res!1472120 (= (value!183282 (_1!22211 (get!12522 lt!1257300))) (apply!9215 (transformation!5713 (rule!8485 (_1!22211 (get!12522 lt!1257300)))) (seqFromList!4262 (originalCharacters!6427 (_1!22211 (get!12522 lt!1257300)))))))))

(declare-fun d!1068844 () Bool)

(declare-fun e!2249569 () Bool)

(assert (=> d!1068844 e!2249569))

(declare-fun res!1472122 () Bool)

(assert (=> d!1068844 (=> res!1472122 e!2249569)))

(assert (=> d!1068844 (= res!1472122 (isEmpty!22658 lt!1257300))))

(declare-fun e!2249568 () Option!8055)

(assert (=> d!1068844 (= lt!1257300 e!2249568)))

(declare-fun c!628596 () Bool)

(assert (=> d!1068844 (= c!628596 (and (is-Cons!38288 rules!3307) (is-Nil!38288 (t!295575 rules!3307))))))

(declare-fun lt!1257302 () Unit!55109)

(declare-fun lt!1257303 () Unit!55109)

(assert (=> d!1068844 (= lt!1257302 lt!1257303)))

(assert (=> d!1068844 (isPrefix!3076 lt!1257109 lt!1257109)))

(assert (=> d!1068844 (= lt!1257303 (lemmaIsPrefixRefl!1949 lt!1257109 lt!1257109))))

(assert (=> d!1068844 (rulesValidInductive!2014 thiss!23823 rules!3307)))

(assert (=> d!1068844 (= (maxPrefix!2836 thiss!23823 rules!3307 lt!1257109) lt!1257300)))

(declare-fun b!3634220 () Bool)

(assert (=> b!3634220 (= e!2249569 e!2249567)))

(declare-fun res!1472125 () Bool)

(assert (=> b!3634220 (=> (not res!1472125) (not e!2249567))))

(assert (=> b!3634220 (= res!1472125 (isDefined!6286 lt!1257300))))

(declare-fun b!3634221 () Bool)

(declare-fun lt!1257301 () Option!8055)

(declare-fun lt!1257299 () Option!8055)

(assert (=> b!3634221 (= e!2249568 (ite (and (is-None!8054 lt!1257301) (is-None!8054 lt!1257299)) None!8054 (ite (is-None!8054 lt!1257299) lt!1257301 (ite (is-None!8054 lt!1257301) lt!1257299 (ite (>= (size!29214 (_1!22211 (v!37858 lt!1257301))) (size!29214 (_1!22211 (v!37858 lt!1257299)))) lt!1257301 lt!1257299)))))))

(declare-fun call!262805 () Option!8055)

(assert (=> b!3634221 (= lt!1257301 call!262805)))

(assert (=> b!3634221 (= lt!1257299 (maxPrefix!2836 thiss!23823 (t!295575 rules!3307) lt!1257109))))

(declare-fun b!3634222 () Bool)

(declare-fun res!1472119 () Bool)

(assert (=> b!3634222 (=> (not res!1472119) (not e!2249567))))

(assert (=> b!3634222 (= res!1472119 (matchR!5041 (regex!5713 (rule!8485 (_1!22211 (get!12522 lt!1257300)))) (list!14159 (charsOf!3727 (_1!22211 (get!12522 lt!1257300))))))))

(declare-fun b!3634223 () Bool)

(assert (=> b!3634223 (= e!2249568 call!262805)))

(declare-fun b!3634224 () Bool)

(declare-fun res!1472124 () Bool)

(assert (=> b!3634224 (=> (not res!1472124) (not e!2249567))))

(assert (=> b!3634224 (= res!1472124 (= (list!14159 (charsOf!3727 (_1!22211 (get!12522 lt!1257300)))) (originalCharacters!6427 (_1!22211 (get!12522 lt!1257300)))))))

(declare-fun b!3634225 () Bool)

(declare-fun res!1472121 () Bool)

(assert (=> b!3634225 (=> (not res!1472121) (not e!2249567))))

(assert (=> b!3634225 (= res!1472121 (< (size!29216 (_2!22211 (get!12522 lt!1257300))) (size!29216 lt!1257109)))))

(declare-fun bm!262800 () Bool)

(assert (=> bm!262800 (= call!262805 (maxPrefixOneRule!1974 thiss!23823 (h!43708 rules!3307) lt!1257109))))

(assert (= (and d!1068844 c!628596) b!3634223))

(assert (= (and d!1068844 (not c!628596)) b!3634221))

(assert (= (or b!3634223 b!3634221) bm!262800))

(assert (= (and d!1068844 (not res!1472122)) b!3634220))

(assert (= (and b!3634220 res!1472125) b!3634224))

(assert (= (and b!3634224 res!1472124) b!3634225))

(assert (= (and b!3634225 res!1472121) b!3634218))

(assert (= (and b!3634218 res!1472123) b!3634219))

(assert (= (and b!3634219 res!1472120) b!3634222))

(assert (= (and b!3634222 res!1472119) b!3634217))

(declare-fun m!4136233 () Bool)

(assert (=> b!3634219 m!4136233))

(declare-fun m!4136235 () Bool)

(assert (=> b!3634219 m!4136235))

(assert (=> b!3634219 m!4136235))

(declare-fun m!4136237 () Bool)

(assert (=> b!3634219 m!4136237))

(declare-fun m!4136239 () Bool)

(assert (=> b!3634220 m!4136239))

(assert (=> b!3634218 m!4136233))

(declare-fun m!4136241 () Bool)

(assert (=> b!3634218 m!4136241))

(assert (=> b!3634218 m!4136241))

(declare-fun m!4136243 () Bool)

(assert (=> b!3634218 m!4136243))

(assert (=> b!3634218 m!4136243))

(declare-fun m!4136245 () Bool)

(assert (=> b!3634218 m!4136245))

(declare-fun m!4136247 () Bool)

(assert (=> b!3634221 m!4136247))

(assert (=> b!3634217 m!4136233))

(declare-fun m!4136249 () Bool)

(assert (=> b!3634217 m!4136249))

(assert (=> b!3634224 m!4136233))

(assert (=> b!3634224 m!4136241))

(assert (=> b!3634224 m!4136241))

(assert (=> b!3634224 m!4136243))

(declare-fun m!4136251 () Bool)

(assert (=> d!1068844 m!4136251))

(declare-fun m!4136253 () Bool)

(assert (=> d!1068844 m!4136253))

(declare-fun m!4136255 () Bool)

(assert (=> d!1068844 m!4136255))

(assert (=> d!1068844 m!4135991))

(declare-fun m!4136257 () Bool)

(assert (=> bm!262800 m!4136257))

(assert (=> b!3634225 m!4136233))

(declare-fun m!4136259 () Bool)

(assert (=> b!3634225 m!4136259))

(assert (=> b!3634225 m!4136093))

(assert (=> b!3634222 m!4136233))

(assert (=> b!3634222 m!4136241))

(assert (=> b!3634222 m!4136241))

(assert (=> b!3634222 m!4136243))

(assert (=> b!3634222 m!4136243))

(declare-fun m!4136261 () Bool)

(assert (=> b!3634222 m!4136261))

(assert (=> b!3633870 d!1068844))

(declare-fun d!1068846 () Bool)

(assert (=> d!1068846 (isPrefix!3076 lt!1257108 (++!9529 lt!1257108 suffix!1395))))

(declare-fun lt!1257304 () Unit!55109)

(assert (=> d!1068846 (= lt!1257304 (choose!21346 lt!1257108 suffix!1395))))

(assert (=> d!1068846 (= (lemmaConcatTwoListThenFirstIsPrefix!1995 lt!1257108 suffix!1395) lt!1257304)))

(declare-fun bs!571748 () Bool)

(assert (= bs!571748 d!1068846))

(assert (=> bs!571748 m!4135759))

(assert (=> bs!571748 m!4135759))

(declare-fun m!4136263 () Bool)

(assert (=> bs!571748 m!4136263))

(declare-fun m!4136265 () Bool)

(assert (=> bs!571748 m!4136265))

(assert (=> b!3633870 d!1068846))

(declare-fun b!3634229 () Bool)

(declare-fun lt!1257305 () List!38411)

(declare-fun e!2249571 () Bool)

(assert (=> b!3634229 (= e!2249571 (or (not (= suffix!1395 Nil!38287)) (= lt!1257305 lt!1257108)))))

(declare-fun b!3634227 () Bool)

(declare-fun e!2249570 () List!38411)

(assert (=> b!3634227 (= e!2249570 (Cons!38287 (h!43707 lt!1257108) (++!9529 (t!295574 lt!1257108) suffix!1395)))))

(declare-fun b!3634226 () Bool)

(assert (=> b!3634226 (= e!2249570 suffix!1395)))

(declare-fun d!1068848 () Bool)

(assert (=> d!1068848 e!2249571))

(declare-fun res!1472127 () Bool)

(assert (=> d!1068848 (=> (not res!1472127) (not e!2249571))))

(assert (=> d!1068848 (= res!1472127 (= (content!5497 lt!1257305) (set.union (content!5497 lt!1257108) (content!5497 suffix!1395))))))

(assert (=> d!1068848 (= lt!1257305 e!2249570)))

(declare-fun c!628597 () Bool)

(assert (=> d!1068848 (= c!628597 (is-Nil!38287 lt!1257108))))

(assert (=> d!1068848 (= (++!9529 lt!1257108 suffix!1395) lt!1257305)))

(declare-fun b!3634228 () Bool)

(declare-fun res!1472126 () Bool)

(assert (=> b!3634228 (=> (not res!1472126) (not e!2249571))))

(assert (=> b!3634228 (= res!1472126 (= (size!29216 lt!1257305) (+ (size!29216 lt!1257108) (size!29216 suffix!1395))))))

(assert (= (and d!1068848 c!628597) b!3634226))

(assert (= (and d!1068848 (not c!628597)) b!3634227))

(assert (= (and d!1068848 res!1472127) b!3634228))

(assert (= (and b!3634228 res!1472126) b!3634229))

(declare-fun m!4136267 () Bool)

(assert (=> b!3634227 m!4136267))

(declare-fun m!4136269 () Bool)

(assert (=> d!1068848 m!4136269))

(declare-fun m!4136271 () Bool)

(assert (=> d!1068848 m!4136271))

(declare-fun m!4136273 () Bool)

(assert (=> d!1068848 m!4136273))

(declare-fun m!4136275 () Bool)

(assert (=> b!3634228 m!4136275))

(assert (=> b!3634228 m!4135997))

(declare-fun m!4136277 () Bool)

(assert (=> b!3634228 m!4136277))

(assert (=> b!3633870 d!1068848))

(declare-fun d!1068850 () Bool)

(assert (=> d!1068850 (= (list!14159 lt!1257112) (list!14161 (c!628556 lt!1257112)))))

(declare-fun bs!571749 () Bool)

(assert (= bs!571749 d!1068850))

(declare-fun m!4136279 () Bool)

(assert (=> bs!571749 m!4136279))

(assert (=> b!3633870 d!1068850))

(declare-fun b!3634230 () Bool)

(declare-fun e!2249574 () Bool)

(declare-fun e!2249572 () Bool)

(assert (=> b!3634230 (= e!2249574 e!2249572)))

(declare-fun res!1472130 () Bool)

(assert (=> b!3634230 (=> (not res!1472130) (not e!2249572))))

(assert (=> b!3634230 (= res!1472130 (not (is-Nil!38287 lt!1257109)))))

(declare-fun b!3634233 () Bool)

(declare-fun e!2249573 () Bool)

(assert (=> b!3634233 (= e!2249573 (>= (size!29216 lt!1257109) (size!29216 lt!1257102)))))

(declare-fun b!3634232 () Bool)

(assert (=> b!3634232 (= e!2249572 (isPrefix!3076 (tail!5626 lt!1257102) (tail!5626 lt!1257109)))))

(declare-fun b!3634231 () Bool)

(declare-fun res!1472131 () Bool)

(assert (=> b!3634231 (=> (not res!1472131) (not e!2249572))))

(assert (=> b!3634231 (= res!1472131 (= (head!7699 lt!1257102) (head!7699 lt!1257109)))))

(declare-fun d!1068852 () Bool)

(assert (=> d!1068852 e!2249573))

(declare-fun res!1472129 () Bool)

(assert (=> d!1068852 (=> res!1472129 e!2249573)))

(declare-fun lt!1257306 () Bool)

(assert (=> d!1068852 (= res!1472129 (not lt!1257306))))

(assert (=> d!1068852 (= lt!1257306 e!2249574)))

(declare-fun res!1472128 () Bool)

(assert (=> d!1068852 (=> res!1472128 e!2249574)))

(assert (=> d!1068852 (= res!1472128 (is-Nil!38287 lt!1257102))))

(assert (=> d!1068852 (= (isPrefix!3076 lt!1257102 lt!1257109) lt!1257306)))

(assert (= (and d!1068852 (not res!1472128)) b!3634230))

(assert (= (and b!3634230 res!1472130) b!3634231))

(assert (= (and b!3634231 res!1472131) b!3634232))

(assert (= (and d!1068852 (not res!1472129)) b!3634233))

(assert (=> b!3634233 m!4136093))

(assert (=> b!3634233 m!4135731))

(assert (=> b!3634232 m!4136031))

(assert (=> b!3634232 m!4136097))

(assert (=> b!3634232 m!4136031))

(assert (=> b!3634232 m!4136097))

(declare-fun m!4136281 () Bool)

(assert (=> b!3634232 m!4136281))

(assert (=> b!3634231 m!4136035))

(assert (=> b!3634231 m!4136103))

(assert (=> b!3633870 d!1068852))

(declare-fun b!3634244 () Bool)

(declare-fun res!1472134 () Bool)

(declare-fun e!2249583 () Bool)

(assert (=> b!3634244 (=> res!1472134 e!2249583)))

(assert (=> b!3634244 (= res!1472134 (not (is-IntegerValue!17831 (value!183282 token!511))))))

(declare-fun e!2249581 () Bool)

(assert (=> b!3634244 (= e!2249581 e!2249583)))

(declare-fun b!3634245 () Bool)

(declare-fun inv!17 (TokenValue!5943) Bool)

(assert (=> b!3634245 (= e!2249581 (inv!17 (value!183282 token!511)))))

(declare-fun b!3634246 () Bool)

(declare-fun inv!15 (TokenValue!5943) Bool)

(assert (=> b!3634246 (= e!2249583 (inv!15 (value!183282 token!511)))))

(declare-fun d!1068854 () Bool)

(declare-fun c!628602 () Bool)

(assert (=> d!1068854 (= c!628602 (is-IntegerValue!17829 (value!183282 token!511)))))

(declare-fun e!2249582 () Bool)

(assert (=> d!1068854 (= (inv!21 (value!183282 token!511)) e!2249582)))

(declare-fun b!3634247 () Bool)

(declare-fun inv!16 (TokenValue!5943) Bool)

(assert (=> b!3634247 (= e!2249582 (inv!16 (value!183282 token!511)))))

(declare-fun b!3634248 () Bool)

(assert (=> b!3634248 (= e!2249582 e!2249581)))

(declare-fun c!628603 () Bool)

(assert (=> b!3634248 (= c!628603 (is-IntegerValue!17830 (value!183282 token!511)))))

(assert (= (and d!1068854 c!628602) b!3634247))

(assert (= (and d!1068854 (not c!628602)) b!3634248))

(assert (= (and b!3634248 c!628603) b!3634245))

(assert (= (and b!3634248 (not c!628603)) b!3634244))

(assert (= (and b!3634244 (not res!1472134)) b!3634246))

(declare-fun m!4136283 () Bool)

(assert (=> b!3634245 m!4136283))

(declare-fun m!4136285 () Bool)

(assert (=> b!3634246 m!4136285))

(declare-fun m!4136287 () Bool)

(assert (=> b!3634247 m!4136287))

(assert (=> b!3633871 d!1068854))

(declare-fun d!1068856 () Bool)

(declare-fun lt!1257309 () Int)

(assert (=> d!1068856 (= lt!1257309 (size!29216 (list!14159 lt!1257112)))))

(declare-fun size!29220 (Conc!11684) Int)

(assert (=> d!1068856 (= lt!1257309 (size!29220 (c!628556 lt!1257112)))))

(assert (=> d!1068856 (= (size!29215 lt!1257112) lt!1257309)))

(declare-fun bs!571750 () Bool)

(assert (= bs!571750 d!1068856))

(assert (=> bs!571750 m!4135747))

(assert (=> bs!571750 m!4135747))

(declare-fun m!4136289 () Bool)

(assert (=> bs!571750 m!4136289))

(declare-fun m!4136291 () Bool)

(assert (=> bs!571750 m!4136291))

(assert (=> b!3633850 d!1068856))

(declare-fun b!3634382 () Bool)

(declare-fun e!2249666 () Bool)

(assert (=> b!3634382 (= e!2249666 true)))

(declare-fun d!1068858 () Bool)

(assert (=> d!1068858 e!2249666))

(assert (= d!1068858 b!3634382))

(declare-fun order!20979 () Int)

(declare-fun lambda!124308 () Int)

(declare-fun order!20981 () Int)

(declare-fun dynLambda!16616 (Int Int) Int)

(declare-fun dynLambda!16617 (Int Int) Int)

(assert (=> b!3634382 (< (dynLambda!16616 order!20979 (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) (dynLambda!16617 order!20981 lambda!124308))))

(declare-fun order!20983 () Int)

(declare-fun dynLambda!16618 (Int Int) Int)

(assert (=> b!3634382 (< (dynLambda!16618 order!20983 (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) (dynLambda!16617 order!20981 lambda!124308))))

(declare-fun dynLambda!16619 (Int BalanceConc!22982) TokenValue!5943)

(assert (=> d!1068858 (= (dynLambda!16619 (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) lt!1257112) (dynLambda!16619 (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) (seqFromList!4262 (originalCharacters!6427 (_1!22211 lt!1257104)))))))

(declare-fun lt!1257402 () Unit!55109)

(declare-fun Forall2of!343 (Int BalanceConc!22982 BalanceConc!22982) Unit!55109)

(assert (=> d!1068858 (= lt!1257402 (Forall2of!343 lambda!124308 lt!1257112 (seqFromList!4262 (originalCharacters!6427 (_1!22211 lt!1257104)))))))

(assert (=> d!1068858 (= (list!14159 lt!1257112) (list!14159 (seqFromList!4262 (originalCharacters!6427 (_1!22211 lt!1257104)))))))

(assert (=> d!1068858 (= (lemmaEqSameImage!896 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))) lt!1257112 (seqFromList!4262 (originalCharacters!6427 (_1!22211 lt!1257104)))) lt!1257402)))

(declare-fun b_lambda!107639 () Bool)

(assert (=> (not b_lambda!107639) (not d!1068858)))

(declare-fun tb!208953 () Bool)

(declare-fun t!295612 () Bool)

(assert (=> (and b!3633872 (= (toValue!8005 (transformation!5713 (rule!8485 token!511))) (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295612) tb!208953))

(declare-fun result!254538 () Bool)

(assert (=> tb!208953 (= result!254538 (inv!21 (dynLambda!16619 (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) lt!1257112)))))

(declare-fun m!4136487 () Bool)

(assert (=> tb!208953 m!4136487))

(assert (=> d!1068858 t!295612))

(declare-fun b_and!267091 () Bool)

(assert (= b_and!267011 (and (=> t!295612 result!254538) b_and!267091)))

(declare-fun t!295614 () Bool)

(declare-fun tb!208955 () Bool)

(assert (=> (and b!3633859 (= (toValue!8005 (transformation!5713 anOtherTypeRule!33)) (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295614) tb!208955))

(declare-fun result!254542 () Bool)

(assert (= result!254542 result!254538))

(assert (=> d!1068858 t!295614))

(declare-fun b_and!267093 () Bool)

(assert (= b_and!267015 (and (=> t!295614 result!254542) b_and!267093)))

(declare-fun t!295616 () Bool)

(declare-fun tb!208957 () Bool)

(assert (=> (and b!3633865 (= (toValue!8005 (transformation!5713 rule!403)) (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295616) tb!208957))

(declare-fun result!254544 () Bool)

(assert (= result!254544 result!254538))

(assert (=> d!1068858 t!295616))

(declare-fun b_and!267095 () Bool)

(assert (= b_and!267019 (and (=> t!295616 result!254544) b_and!267095)))

(declare-fun t!295618 () Bool)

(declare-fun tb!208959 () Bool)

(assert (=> (and b!3633846 (= (toValue!8005 (transformation!5713 (h!43708 rules!3307))) (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295618) tb!208959))

(declare-fun result!254546 () Bool)

(assert (= result!254546 result!254538))

(assert (=> d!1068858 t!295618))

(declare-fun b_and!267097 () Bool)

(assert (= b_and!267023 (and (=> t!295618 result!254546) b_and!267097)))

(declare-fun b_lambda!107641 () Bool)

(assert (=> (not b_lambda!107641) (not d!1068858)))

(declare-fun t!295620 () Bool)

(declare-fun tb!208961 () Bool)

(assert (=> (and b!3633872 (= (toValue!8005 (transformation!5713 (rule!8485 token!511))) (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295620) tb!208961))

(declare-fun result!254548 () Bool)

(assert (=> tb!208961 (= result!254548 (inv!21 (dynLambda!16619 (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) (seqFromList!4262 (originalCharacters!6427 (_1!22211 lt!1257104))))))))

(declare-fun m!4136489 () Bool)

(assert (=> tb!208961 m!4136489))

(assert (=> d!1068858 t!295620))

(declare-fun b_and!267099 () Bool)

(assert (= b_and!267091 (and (=> t!295620 result!254548) b_and!267099)))

(declare-fun tb!208963 () Bool)

(declare-fun t!295622 () Bool)

(assert (=> (and b!3633859 (= (toValue!8005 (transformation!5713 anOtherTypeRule!33)) (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295622) tb!208963))

(declare-fun result!254550 () Bool)

(assert (= result!254550 result!254548))

(assert (=> d!1068858 t!295622))

(declare-fun b_and!267101 () Bool)

(assert (= b_and!267093 (and (=> t!295622 result!254550) b_and!267101)))

(declare-fun t!295624 () Bool)

(declare-fun tb!208965 () Bool)

(assert (=> (and b!3633865 (= (toValue!8005 (transformation!5713 rule!403)) (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295624) tb!208965))

(declare-fun result!254552 () Bool)

(assert (= result!254552 result!254548))

(assert (=> d!1068858 t!295624))

(declare-fun b_and!267103 () Bool)

(assert (= b_and!267095 (and (=> t!295624 result!254552) b_and!267103)))

(declare-fun tb!208967 () Bool)

(declare-fun t!295626 () Bool)

(assert (=> (and b!3633846 (= (toValue!8005 (transformation!5713 (h!43708 rules!3307))) (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295626) tb!208967))

(declare-fun result!254554 () Bool)

(assert (= result!254554 result!254548))

(assert (=> d!1068858 t!295626))

(declare-fun b_and!267105 () Bool)

(assert (= b_and!267097 (and (=> t!295626 result!254554) b_and!267105)))

(assert (=> d!1068858 m!4135787))

(declare-fun m!4136491 () Bool)

(assert (=> d!1068858 m!4136491))

(assert (=> d!1068858 m!4135747))

(declare-fun m!4136493 () Bool)

(assert (=> d!1068858 m!4136493))

(assert (=> d!1068858 m!4135787))

(declare-fun m!4136495 () Bool)

(assert (=> d!1068858 m!4136495))

(assert (=> d!1068858 m!4135787))

(declare-fun m!4136497 () Bool)

(assert (=> d!1068858 m!4136497))

(assert (=> b!3633850 d!1068858))

(declare-fun d!1068902 () Bool)

(assert (=> d!1068902 (= (apply!9215 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))) lt!1257112) (dynLambda!16619 (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) lt!1257112))))

(declare-fun b_lambda!107643 () Bool)

(assert (=> (not b_lambda!107643) (not d!1068902)))

(assert (=> d!1068902 t!295612))

(declare-fun b_and!267107 () Bool)

(assert (= b_and!267099 (and (=> t!295612 result!254538) b_and!267107)))

(assert (=> d!1068902 t!295614))

(declare-fun b_and!267109 () Bool)

(assert (= b_and!267101 (and (=> t!295614 result!254542) b_and!267109)))

(assert (=> d!1068902 t!295616))

(declare-fun b_and!267111 () Bool)

(assert (= b_and!267103 (and (=> t!295616 result!254544) b_and!267111)))

(assert (=> d!1068902 t!295618))

(declare-fun b_and!267113 () Bool)

(assert (= b_and!267105 (and (=> t!295618 result!254546) b_and!267113)))

(assert (=> d!1068902 m!4136493))

(assert (=> b!3633850 d!1068902))

(declare-fun d!1068904 () Bool)

(declare-fun fromListB!1964 (List!38411) BalanceConc!22982)

(assert (=> d!1068904 (= (seqFromList!4262 (originalCharacters!6427 (_1!22211 lt!1257104))) (fromListB!1964 (originalCharacters!6427 (_1!22211 lt!1257104))))))

(declare-fun bs!571755 () Bool)

(assert (= bs!571755 d!1068904))

(declare-fun m!4136499 () Bool)

(assert (=> bs!571755 m!4136499))

(assert (=> b!3633850 d!1068904))

(declare-fun d!1068906 () Bool)

(assert (=> d!1068906 (= (size!29214 (_1!22211 lt!1257104)) (size!29216 (originalCharacters!6427 (_1!22211 lt!1257104))))))

(declare-fun Unit!55118 () Unit!55109)

(assert (=> d!1068906 (= (lemmaCharactersSize!758 (_1!22211 lt!1257104)) Unit!55118)))

(declare-fun bs!571756 () Bool)

(assert (= bs!571756 d!1068906))

(declare-fun m!4136501 () Bool)

(assert (=> bs!571756 m!4136501))

(assert (=> b!3633850 d!1068906))

(declare-fun b!3634389 () Bool)

(declare-fun e!2249673 () Bool)

(assert (=> b!3634389 (= e!2249673 true)))

(declare-fun d!1068908 () Bool)

(assert (=> d!1068908 e!2249673))

(assert (= d!1068908 b!3634389))

(declare-fun order!20985 () Int)

(declare-fun lambda!124311 () Int)

(declare-fun dynLambda!16620 (Int Int) Int)

(assert (=> b!3634389 (< (dynLambda!16616 order!20979 (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) (dynLambda!16620 order!20985 lambda!124311))))

(assert (=> b!3634389 (< (dynLambda!16618 order!20983 (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) (dynLambda!16620 order!20985 lambda!124311))))

(assert (=> d!1068908 (= (list!14159 (dynLambda!16614 (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) (dynLambda!16619 (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) lt!1257112))) (list!14159 lt!1257112))))

(declare-fun lt!1257405 () Unit!55109)

(declare-fun ForallOf!685 (Int BalanceConc!22982) Unit!55109)

(assert (=> d!1068908 (= lt!1257405 (ForallOf!685 lambda!124311 lt!1257112))))

(assert (=> d!1068908 (= (lemmaSemiInverse!1462 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))) lt!1257112) lt!1257405)))

(declare-fun b_lambda!107645 () Bool)

(assert (=> (not b_lambda!107645) (not d!1068908)))

(declare-fun t!295628 () Bool)

(declare-fun tb!208969 () Bool)

(assert (=> (and b!3633872 (= (toChars!7864 (transformation!5713 (rule!8485 token!511))) (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295628) tb!208969))

(declare-fun b!3634390 () Bool)

(declare-fun e!2249674 () Bool)

(declare-fun tp!1109239 () Bool)

(assert (=> b!3634390 (= e!2249674 (and (inv!51717 (c!628556 (dynLambda!16614 (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) (dynLambda!16619 (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) lt!1257112)))) tp!1109239))))

(declare-fun result!254556 () Bool)

(assert (=> tb!208969 (= result!254556 (and (inv!51718 (dynLambda!16614 (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) (dynLambda!16619 (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) lt!1257112))) e!2249674))))

(assert (= tb!208969 b!3634390))

(declare-fun m!4136503 () Bool)

(assert (=> b!3634390 m!4136503))

(declare-fun m!4136505 () Bool)

(assert (=> tb!208969 m!4136505))

(assert (=> d!1068908 t!295628))

(declare-fun b_and!267115 () Bool)

(assert (= b_and!267067 (and (=> t!295628 result!254556) b_and!267115)))

(declare-fun tb!208971 () Bool)

(declare-fun t!295630 () Bool)

(assert (=> (and b!3633859 (= (toChars!7864 (transformation!5713 anOtherTypeRule!33)) (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295630) tb!208971))

(declare-fun result!254558 () Bool)

(assert (= result!254558 result!254556))

(assert (=> d!1068908 t!295630))

(declare-fun b_and!267117 () Bool)

(assert (= b_and!267069 (and (=> t!295630 result!254558) b_and!267117)))

(declare-fun t!295632 () Bool)

(declare-fun tb!208973 () Bool)

(assert (=> (and b!3633865 (= (toChars!7864 (transformation!5713 rule!403)) (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295632) tb!208973))

(declare-fun result!254560 () Bool)

(assert (= result!254560 result!254556))

(assert (=> d!1068908 t!295632))

(declare-fun b_and!267119 () Bool)

(assert (= b_and!267071 (and (=> t!295632 result!254560) b_and!267119)))

(declare-fun tb!208975 () Bool)

(declare-fun t!295634 () Bool)

(assert (=> (and b!3633846 (= (toChars!7864 (transformation!5713 (h!43708 rules!3307))) (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295634) tb!208975))

(declare-fun result!254562 () Bool)

(assert (= result!254562 result!254556))

(assert (=> d!1068908 t!295634))

(declare-fun b_and!267121 () Bool)

(assert (= b_and!267073 (and (=> t!295634 result!254562) b_and!267121)))

(declare-fun b_lambda!107647 () Bool)

(assert (=> (not b_lambda!107647) (not d!1068908)))

(assert (=> d!1068908 t!295612))

(declare-fun b_and!267123 () Bool)

(assert (= b_and!267107 (and (=> t!295612 result!254538) b_and!267123)))

(assert (=> d!1068908 t!295614))

(declare-fun b_and!267125 () Bool)

(assert (= b_and!267109 (and (=> t!295614 result!254542) b_and!267125)))

(assert (=> d!1068908 t!295616))

(declare-fun b_and!267127 () Bool)

(assert (= b_and!267111 (and (=> t!295616 result!254544) b_and!267127)))

(assert (=> d!1068908 t!295618))

(declare-fun b_and!267129 () Bool)

(assert (= b_and!267113 (and (=> t!295618 result!254546) b_and!267129)))

(assert (=> d!1068908 m!4136493))

(assert (=> d!1068908 m!4136493))

(declare-fun m!4136507 () Bool)

(assert (=> d!1068908 m!4136507))

(assert (=> d!1068908 m!4136507))

(declare-fun m!4136509 () Bool)

(assert (=> d!1068908 m!4136509))

(assert (=> d!1068908 m!4135747))

(declare-fun m!4136511 () Bool)

(assert (=> d!1068908 m!4136511))

(assert (=> b!3633850 d!1068908))

(declare-fun d!1068910 () Bool)

(declare-fun lt!1257408 () Bool)

(assert (=> d!1068910 (= lt!1257408 (set.member lt!1257097 (content!5497 (usedCharacters!925 (regex!5713 rule!403)))))))

(declare-fun e!2249680 () Bool)

(assert (=> d!1068910 (= lt!1257408 e!2249680)))

(declare-fun res!1472215 () Bool)

(assert (=> d!1068910 (=> (not res!1472215) (not e!2249680))))

(assert (=> d!1068910 (= res!1472215 (is-Cons!38287 (usedCharacters!925 (regex!5713 rule!403))))))

(assert (=> d!1068910 (= (contains!7491 (usedCharacters!925 (regex!5713 rule!403)) lt!1257097) lt!1257408)))

(declare-fun b!3634395 () Bool)

(declare-fun e!2249679 () Bool)

(assert (=> b!3634395 (= e!2249680 e!2249679)))

(declare-fun res!1472216 () Bool)

(assert (=> b!3634395 (=> res!1472216 e!2249679)))

(assert (=> b!3634395 (= res!1472216 (= (h!43707 (usedCharacters!925 (regex!5713 rule!403))) lt!1257097))))

(declare-fun b!3634396 () Bool)

(assert (=> b!3634396 (= e!2249679 (contains!7491 (t!295574 (usedCharacters!925 (regex!5713 rule!403))) lt!1257097))))

(assert (= (and d!1068910 res!1472215) b!3634395))

(assert (= (and b!3634395 (not res!1472216)) b!3634396))

(assert (=> d!1068910 m!4135797))

(declare-fun m!4136513 () Bool)

(assert (=> d!1068910 m!4136513))

(declare-fun m!4136515 () Bool)

(assert (=> d!1068910 m!4136515))

(declare-fun m!4136517 () Bool)

(assert (=> b!3634396 m!4136517))

(assert (=> b!3633841 d!1068910))

(declare-fun b!3634413 () Bool)

(declare-fun e!2249691 () List!38411)

(declare-fun e!2249692 () List!38411)

(assert (=> b!3634413 (= e!2249691 e!2249692)))

(declare-fun c!628642 () Bool)

(assert (=> b!3634413 (= c!628642 (is-Union!10472 (regex!5713 rule!403)))))

(declare-fun bm!262822 () Bool)

(declare-fun call!262830 () List!38411)

(assert (=> bm!262822 (= call!262830 (usedCharacters!925 (ite c!628642 (regTwo!21457 (regex!5713 rule!403)) (regOne!21456 (regex!5713 rule!403)))))))

(declare-fun b!3634415 () Bool)

(declare-fun c!628643 () Bool)

(assert (=> b!3634415 (= c!628643 (is-Star!10472 (regex!5713 rule!403)))))

(declare-fun e!2249690 () List!38411)

(assert (=> b!3634415 (= e!2249690 e!2249691)))

(declare-fun b!3634416 () Bool)

(declare-fun e!2249689 () List!38411)

(assert (=> b!3634416 (= e!2249689 e!2249690)))

(declare-fun c!628640 () Bool)

(assert (=> b!3634416 (= c!628640 (is-ElementMatch!10472 (regex!5713 rule!403)))))

(declare-fun b!3634417 () Bool)

(declare-fun call!262827 () List!38411)

(assert (=> b!3634417 (= e!2249692 call!262827)))

(declare-fun bm!262823 () Bool)

(declare-fun call!262829 () List!38411)

(declare-fun call!262828 () List!38411)

(assert (=> bm!262823 (= call!262829 call!262828)))

(declare-fun b!3634418 () Bool)

(assert (=> b!3634418 (= e!2249689 Nil!38287)))

(declare-fun bm!262824 () Bool)

(assert (=> bm!262824 (= call!262828 (usedCharacters!925 (ite c!628643 (reg!10801 (regex!5713 rule!403)) (ite c!628642 (regOne!21457 (regex!5713 rule!403)) (regTwo!21456 (regex!5713 rule!403))))))))

(declare-fun b!3634419 () Bool)

(assert (=> b!3634419 (= e!2249690 (Cons!38287 (c!628555 (regex!5713 rule!403)) Nil!38287))))

(declare-fun b!3634420 () Bool)

(assert (=> b!3634420 (= e!2249691 call!262828)))

(declare-fun bm!262825 () Bool)

(assert (=> bm!262825 (= call!262827 (++!9529 (ite c!628642 call!262829 call!262830) (ite c!628642 call!262830 call!262829)))))

(declare-fun b!3634414 () Bool)

(assert (=> b!3634414 (= e!2249692 call!262827)))

(declare-fun d!1068912 () Bool)

(declare-fun c!628641 () Bool)

(assert (=> d!1068912 (= c!628641 (or (is-EmptyExpr!10472 (regex!5713 rule!403)) (is-EmptyLang!10472 (regex!5713 rule!403))))))

(assert (=> d!1068912 (= (usedCharacters!925 (regex!5713 rule!403)) e!2249689)))

(assert (= (and d!1068912 c!628641) b!3634418))

(assert (= (and d!1068912 (not c!628641)) b!3634416))

(assert (= (and b!3634416 c!628640) b!3634419))

(assert (= (and b!3634416 (not c!628640)) b!3634415))

(assert (= (and b!3634415 c!628643) b!3634420))

(assert (= (and b!3634415 (not c!628643)) b!3634413))

(assert (= (and b!3634413 c!628642) b!3634414))

(assert (= (and b!3634413 (not c!628642)) b!3634417))

(assert (= (or b!3634414 b!3634417) bm!262823))

(assert (= (or b!3634414 b!3634417) bm!262822))

(assert (= (or b!3634414 b!3634417) bm!262825))

(assert (= (or b!3634420 bm!262823) bm!262824))

(declare-fun m!4136519 () Bool)

(assert (=> bm!262822 m!4136519))

(declare-fun m!4136521 () Bool)

(assert (=> bm!262824 m!4136521))

(declare-fun m!4136523 () Bool)

(assert (=> bm!262825 m!4136523))

(assert (=> b!3633841 d!1068912))

(declare-fun d!1068914 () Bool)

(assert (=> d!1068914 (= (head!7699 suffix!1395) (h!43707 suffix!1395))))

(assert (=> b!3633841 d!1068914))

(declare-fun d!1068916 () Bool)

(assert (=> d!1068916 (= (get!12522 lt!1257095) (v!37858 lt!1257095))))

(assert (=> b!3633863 d!1068916))

(declare-fun d!1068918 () Bool)

(assert (=> d!1068918 (= (isEmpty!22654 rules!3307) (is-Nil!38288 rules!3307))))

(assert (=> b!3633842 d!1068918))

(declare-fun b!3634421 () Bool)

(declare-fun res!1472218 () Bool)

(declare-fun e!2249699 () Bool)

(assert (=> b!3634421 (=> (not res!1472218) (not e!2249699))))

(declare-fun call!262831 () Bool)

(assert (=> b!3634421 (= res!1472218 (not call!262831))))

(declare-fun b!3634422 () Bool)

(declare-fun e!2249696 () Bool)

(assert (=> b!3634422 (= e!2249696 (not (= (head!7699 lt!1257108) (c!628555 (regex!5713 rule!403)))))))

(declare-fun d!1068920 () Bool)

(declare-fun e!2249695 () Bool)

(assert (=> d!1068920 e!2249695))

(declare-fun c!628646 () Bool)

(assert (=> d!1068920 (= c!628646 (is-EmptyExpr!10472 (regex!5713 rule!403)))))

(declare-fun lt!1257409 () Bool)

(declare-fun e!2249697 () Bool)

(assert (=> d!1068920 (= lt!1257409 e!2249697)))

(declare-fun c!628644 () Bool)

(assert (=> d!1068920 (= c!628644 (isEmpty!22655 lt!1257108))))

(assert (=> d!1068920 (validRegex!4790 (regex!5713 rule!403))))

(assert (=> d!1068920 (= (matchR!5041 (regex!5713 rule!403) lt!1257108) lt!1257409)))

(declare-fun b!3634423 () Bool)

(declare-fun res!1472219 () Bool)

(declare-fun e!2249698 () Bool)

(assert (=> b!3634423 (=> res!1472219 e!2249698)))

(assert (=> b!3634423 (= res!1472219 (not (is-ElementMatch!10472 (regex!5713 rule!403))))))

(declare-fun e!2249693 () Bool)

(assert (=> b!3634423 (= e!2249693 e!2249698)))

(declare-fun b!3634424 () Bool)

(assert (=> b!3634424 (= e!2249695 e!2249693)))

(declare-fun c!628645 () Bool)

(assert (=> b!3634424 (= c!628645 (is-EmptyLang!10472 (regex!5713 rule!403)))))

(declare-fun b!3634425 () Bool)

(declare-fun res!1472222 () Bool)

(assert (=> b!3634425 (=> res!1472222 e!2249698)))

(assert (=> b!3634425 (= res!1472222 e!2249699)))

(declare-fun res!1472220 () Bool)

(assert (=> b!3634425 (=> (not res!1472220) (not e!2249699))))

(assert (=> b!3634425 (= res!1472220 lt!1257409)))

(declare-fun b!3634426 () Bool)

(declare-fun e!2249694 () Bool)

(assert (=> b!3634426 (= e!2249694 e!2249696)))

(declare-fun res!1472223 () Bool)

(assert (=> b!3634426 (=> res!1472223 e!2249696)))

(assert (=> b!3634426 (= res!1472223 call!262831)))

(declare-fun b!3634427 () Bool)

(assert (=> b!3634427 (= e!2249695 (= lt!1257409 call!262831))))

(declare-fun b!3634428 () Bool)

(declare-fun res!1472221 () Bool)

(assert (=> b!3634428 (=> (not res!1472221) (not e!2249699))))

(assert (=> b!3634428 (= res!1472221 (isEmpty!22655 (tail!5626 lt!1257108)))))

(declare-fun b!3634429 () Bool)

(assert (=> b!3634429 (= e!2249699 (= (head!7699 lt!1257108) (c!628555 (regex!5713 rule!403))))))

(declare-fun bm!262826 () Bool)

(assert (=> bm!262826 (= call!262831 (isEmpty!22655 lt!1257108))))

(declare-fun b!3634430 () Bool)

(assert (=> b!3634430 (= e!2249693 (not lt!1257409))))

(declare-fun b!3634431 () Bool)

(assert (=> b!3634431 (= e!2249697 (matchR!5041 (derivativeStep!3177 (regex!5713 rule!403) (head!7699 lt!1257108)) (tail!5626 lt!1257108)))))

(declare-fun b!3634432 () Bool)

(assert (=> b!3634432 (= e!2249697 (nullable!3628 (regex!5713 rule!403)))))

(declare-fun b!3634433 () Bool)

(assert (=> b!3634433 (= e!2249698 e!2249694)))

(declare-fun res!1472224 () Bool)

(assert (=> b!3634433 (=> (not res!1472224) (not e!2249694))))

(assert (=> b!3634433 (= res!1472224 (not lt!1257409))))

(declare-fun b!3634434 () Bool)

(declare-fun res!1472217 () Bool)

(assert (=> b!3634434 (=> res!1472217 e!2249696)))

(assert (=> b!3634434 (= res!1472217 (not (isEmpty!22655 (tail!5626 lt!1257108))))))

(assert (= (and d!1068920 c!628644) b!3634432))

(assert (= (and d!1068920 (not c!628644)) b!3634431))

(assert (= (and d!1068920 c!628646) b!3634427))

(assert (= (and d!1068920 (not c!628646)) b!3634424))

(assert (= (and b!3634424 c!628645) b!3634430))

(assert (= (and b!3634424 (not c!628645)) b!3634423))

(assert (= (and b!3634423 (not res!1472219)) b!3634425))

(assert (= (and b!3634425 res!1472220) b!3634421))

(assert (= (and b!3634421 res!1472218) b!3634428))

(assert (= (and b!3634428 res!1472221) b!3634429))

(assert (= (and b!3634425 (not res!1472222)) b!3634433))

(assert (= (and b!3634433 res!1472224) b!3634426))

(assert (= (and b!3634426 (not res!1472223)) b!3634434))

(assert (= (and b!3634434 (not res!1472217)) b!3634422))

(assert (= (or b!3634427 b!3634421 b!3634426) bm!262826))

(declare-fun m!4136525 () Bool)

(assert (=> d!1068920 m!4136525))

(declare-fun m!4136527 () Bool)

(assert (=> d!1068920 m!4136527))

(assert (=> b!3634428 m!4136095))

(assert (=> b!3634428 m!4136095))

(declare-fun m!4136529 () Bool)

(assert (=> b!3634428 m!4136529))

(assert (=> b!3634434 m!4136095))

(assert (=> b!3634434 m!4136095))

(assert (=> b!3634434 m!4136529))

(assert (=> b!3634422 m!4136101))

(assert (=> b!3634431 m!4136101))

(assert (=> b!3634431 m!4136101))

(declare-fun m!4136531 () Bool)

(assert (=> b!3634431 m!4136531))

(assert (=> b!3634431 m!4136095))

(assert (=> b!3634431 m!4136531))

(assert (=> b!3634431 m!4136095))

(declare-fun m!4136533 () Bool)

(assert (=> b!3634431 m!4136533))

(assert (=> b!3634429 m!4136101))

(assert (=> bm!262826 m!4136525))

(declare-fun m!4136535 () Bool)

(assert (=> b!3634432 m!4136535))

(assert (=> b!3633843 d!1068920))

(declare-fun d!1068922 () Bool)

(declare-fun res!1472229 () Bool)

(declare-fun e!2249702 () Bool)

(assert (=> d!1068922 (=> (not res!1472229) (not e!2249702))))

(assert (=> d!1068922 (= res!1472229 (validRegex!4790 (regex!5713 rule!403)))))

(assert (=> d!1068922 (= (ruleValid!1977 thiss!23823 rule!403) e!2249702)))

(declare-fun b!3634439 () Bool)

(declare-fun res!1472230 () Bool)

(assert (=> b!3634439 (=> (not res!1472230) (not e!2249702))))

(assert (=> b!3634439 (= res!1472230 (not (nullable!3628 (regex!5713 rule!403))))))

(declare-fun b!3634440 () Bool)

(assert (=> b!3634440 (= e!2249702 (not (= (tag!6449 rule!403) (String!43052 ""))))))

(assert (= (and d!1068922 res!1472229) b!3634439))

(assert (= (and b!3634439 res!1472230) b!3634440))

(assert (=> d!1068922 m!4136527))

(assert (=> b!3634439 m!4136535))

(assert (=> b!3633843 d!1068922))

(declare-fun d!1068924 () Bool)

(assert (=> d!1068924 (ruleValid!1977 thiss!23823 rule!403)))

(declare-fun lt!1257412 () Unit!55109)

(declare-fun choose!21348 (LexerInterface!5302 Rule!11226 List!38412) Unit!55109)

(assert (=> d!1068924 (= lt!1257412 (choose!21348 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1068924 (contains!7492 rules!3307 rule!403)))

(assert (=> d!1068924 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1131 thiss!23823 rule!403 rules!3307) lt!1257412)))

(declare-fun bs!571757 () Bool)

(assert (= bs!571757 d!1068924))

(assert (=> bs!571757 m!4135823))

(declare-fun m!4136537 () Bool)

(assert (=> bs!571757 m!4136537))

(assert (=> bs!571757 m!4135725))

(assert (=> b!3633843 d!1068924))

(declare-fun d!1068926 () Bool)

(assert (=> d!1068926 (= (isEmpty!22655 (_2!22211 lt!1257111)) (is-Nil!38287 (_2!22211 lt!1257111)))))

(assert (=> b!3633864 d!1068926))

(declare-fun b!3634441 () Bool)

(declare-fun res!1472232 () Bool)

(declare-fun e!2249709 () Bool)

(assert (=> b!3634441 (=> (not res!1472232) (not e!2249709))))

(declare-fun call!262832 () Bool)

(assert (=> b!3634441 (= res!1472232 (not call!262832))))

(declare-fun b!3634442 () Bool)

(declare-fun e!2249706 () Bool)

(assert (=> b!3634442 (= e!2249706 (not (= (head!7699 (list!14159 (charsOf!3727 (_1!22211 lt!1257104)))) (c!628555 (regex!5713 lt!1257096)))))))

(declare-fun d!1068928 () Bool)

(declare-fun e!2249705 () Bool)

(assert (=> d!1068928 e!2249705))

(declare-fun c!628649 () Bool)

(assert (=> d!1068928 (= c!628649 (is-EmptyExpr!10472 (regex!5713 lt!1257096)))))

(declare-fun lt!1257413 () Bool)

(declare-fun e!2249707 () Bool)

(assert (=> d!1068928 (= lt!1257413 e!2249707)))

(declare-fun c!628647 () Bool)

(assert (=> d!1068928 (= c!628647 (isEmpty!22655 (list!14159 (charsOf!3727 (_1!22211 lt!1257104)))))))

(assert (=> d!1068928 (validRegex!4790 (regex!5713 lt!1257096))))

(assert (=> d!1068928 (= (matchR!5041 (regex!5713 lt!1257096) (list!14159 (charsOf!3727 (_1!22211 lt!1257104)))) lt!1257413)))

(declare-fun b!3634443 () Bool)

(declare-fun res!1472233 () Bool)

(declare-fun e!2249708 () Bool)

(assert (=> b!3634443 (=> res!1472233 e!2249708)))

(assert (=> b!3634443 (= res!1472233 (not (is-ElementMatch!10472 (regex!5713 lt!1257096))))))

(declare-fun e!2249703 () Bool)

(assert (=> b!3634443 (= e!2249703 e!2249708)))

(declare-fun b!3634444 () Bool)

(assert (=> b!3634444 (= e!2249705 e!2249703)))

(declare-fun c!628648 () Bool)

(assert (=> b!3634444 (= c!628648 (is-EmptyLang!10472 (regex!5713 lt!1257096)))))

(declare-fun b!3634445 () Bool)

(declare-fun res!1472236 () Bool)

(assert (=> b!3634445 (=> res!1472236 e!2249708)))

(assert (=> b!3634445 (= res!1472236 e!2249709)))

(declare-fun res!1472234 () Bool)

(assert (=> b!3634445 (=> (not res!1472234) (not e!2249709))))

(assert (=> b!3634445 (= res!1472234 lt!1257413)))

(declare-fun b!3634446 () Bool)

(declare-fun e!2249704 () Bool)

(assert (=> b!3634446 (= e!2249704 e!2249706)))

(declare-fun res!1472237 () Bool)

(assert (=> b!3634446 (=> res!1472237 e!2249706)))

(assert (=> b!3634446 (= res!1472237 call!262832)))

(declare-fun b!3634447 () Bool)

(assert (=> b!3634447 (= e!2249705 (= lt!1257413 call!262832))))

(declare-fun b!3634448 () Bool)

(declare-fun res!1472235 () Bool)

(assert (=> b!3634448 (=> (not res!1472235) (not e!2249709))))

(assert (=> b!3634448 (= res!1472235 (isEmpty!22655 (tail!5626 (list!14159 (charsOf!3727 (_1!22211 lt!1257104))))))))

(declare-fun b!3634449 () Bool)

(assert (=> b!3634449 (= e!2249709 (= (head!7699 (list!14159 (charsOf!3727 (_1!22211 lt!1257104)))) (c!628555 (regex!5713 lt!1257096))))))

(declare-fun bm!262827 () Bool)

(assert (=> bm!262827 (= call!262832 (isEmpty!22655 (list!14159 (charsOf!3727 (_1!22211 lt!1257104)))))))

(declare-fun b!3634450 () Bool)

(assert (=> b!3634450 (= e!2249703 (not lt!1257413))))

(declare-fun b!3634451 () Bool)

(assert (=> b!3634451 (= e!2249707 (matchR!5041 (derivativeStep!3177 (regex!5713 lt!1257096) (head!7699 (list!14159 (charsOf!3727 (_1!22211 lt!1257104))))) (tail!5626 (list!14159 (charsOf!3727 (_1!22211 lt!1257104))))))))

(declare-fun b!3634452 () Bool)

(assert (=> b!3634452 (= e!2249707 (nullable!3628 (regex!5713 lt!1257096)))))

(declare-fun b!3634453 () Bool)

(assert (=> b!3634453 (= e!2249708 e!2249704)))

(declare-fun res!1472238 () Bool)

(assert (=> b!3634453 (=> (not res!1472238) (not e!2249704))))

(assert (=> b!3634453 (= res!1472238 (not lt!1257413))))

(declare-fun b!3634454 () Bool)

(declare-fun res!1472231 () Bool)

(assert (=> b!3634454 (=> res!1472231 e!2249706)))

(assert (=> b!3634454 (= res!1472231 (not (isEmpty!22655 (tail!5626 (list!14159 (charsOf!3727 (_1!22211 lt!1257104)))))))))

(assert (= (and d!1068928 c!628647) b!3634452))

(assert (= (and d!1068928 (not c!628647)) b!3634451))

(assert (= (and d!1068928 c!628649) b!3634447))

(assert (= (and d!1068928 (not c!628649)) b!3634444))

(assert (= (and b!3634444 c!628648) b!3634450))

(assert (= (and b!3634444 (not c!628648)) b!3634443))

(assert (= (and b!3634443 (not res!1472233)) b!3634445))

(assert (= (and b!3634445 res!1472234) b!3634441))

(assert (= (and b!3634441 res!1472232) b!3634448))

(assert (= (and b!3634448 res!1472235) b!3634449))

(assert (= (and b!3634445 (not res!1472236)) b!3634453))

(assert (= (and b!3634453 res!1472238) b!3634446))

(assert (= (and b!3634446 (not res!1472237)) b!3634454))

(assert (= (and b!3634454 (not res!1472231)) b!3634442))

(assert (= (or b!3634447 b!3634441 b!3634446) bm!262827))

(assert (=> d!1068928 m!4135835))

(declare-fun m!4136539 () Bool)

(assert (=> d!1068928 m!4136539))

(declare-fun m!4136541 () Bool)

(assert (=> d!1068928 m!4136541))

(assert (=> b!3634448 m!4135835))

(declare-fun m!4136543 () Bool)

(assert (=> b!3634448 m!4136543))

(assert (=> b!3634448 m!4136543))

(declare-fun m!4136545 () Bool)

(assert (=> b!3634448 m!4136545))

(assert (=> b!3634454 m!4135835))

(assert (=> b!3634454 m!4136543))

(assert (=> b!3634454 m!4136543))

(assert (=> b!3634454 m!4136545))

(assert (=> b!3634442 m!4135835))

(declare-fun m!4136547 () Bool)

(assert (=> b!3634442 m!4136547))

(assert (=> b!3634451 m!4135835))

(assert (=> b!3634451 m!4136547))

(assert (=> b!3634451 m!4136547))

(declare-fun m!4136549 () Bool)

(assert (=> b!3634451 m!4136549))

(assert (=> b!3634451 m!4135835))

(assert (=> b!3634451 m!4136543))

(assert (=> b!3634451 m!4136549))

(assert (=> b!3634451 m!4136543))

(declare-fun m!4136551 () Bool)

(assert (=> b!3634451 m!4136551))

(assert (=> b!3634449 m!4135835))

(assert (=> b!3634449 m!4136547))

(assert (=> bm!262827 m!4135835))

(assert (=> bm!262827 m!4136539))

(declare-fun m!4136553 () Bool)

(assert (=> b!3634452 m!4136553))

(assert (=> b!3633844 d!1068928))

(declare-fun d!1068930 () Bool)

(assert (=> d!1068930 (= (list!14159 (charsOf!3727 (_1!22211 lt!1257104))) (list!14161 (c!628556 (charsOf!3727 (_1!22211 lt!1257104)))))))

(declare-fun bs!571758 () Bool)

(assert (= bs!571758 d!1068930))

(declare-fun m!4136555 () Bool)

(assert (=> bs!571758 m!4136555))

(assert (=> b!3633844 d!1068930))

(assert (=> b!3633844 d!1068842))

(declare-fun d!1068932 () Bool)

(assert (=> d!1068932 (= (get!12521 lt!1257098) (v!37857 lt!1257098))))

(assert (=> b!3633844 d!1068932))

(declare-fun d!1068934 () Bool)

(assert (=> d!1068934 (= (inv!51710 (tag!6449 (rule!8485 token!511))) (= (mod (str.len (value!183281 (tag!6449 (rule!8485 token!511)))) 2) 0))))

(assert (=> b!3633845 d!1068934))

(declare-fun d!1068936 () Bool)

(declare-fun res!1472239 () Bool)

(declare-fun e!2249710 () Bool)

(assert (=> d!1068936 (=> (not res!1472239) (not e!2249710))))

(assert (=> d!1068936 (= res!1472239 (semiInverseModEq!2428 (toChars!7864 (transformation!5713 (rule!8485 token!511))) (toValue!8005 (transformation!5713 (rule!8485 token!511)))))))

(assert (=> d!1068936 (= (inv!51713 (transformation!5713 (rule!8485 token!511))) e!2249710)))

(declare-fun b!3634455 () Bool)

(assert (=> b!3634455 (= e!2249710 (equivClasses!2327 (toChars!7864 (transformation!5713 (rule!8485 token!511))) (toValue!8005 (transformation!5713 (rule!8485 token!511)))))))

(assert (= (and d!1068936 res!1472239) b!3634455))

(declare-fun m!4136557 () Bool)

(assert (=> d!1068936 m!4136557))

(declare-fun m!4136559 () Bool)

(assert (=> b!3634455 m!4136559))

(assert (=> b!3633845 d!1068936))

(declare-fun d!1068938 () Bool)

(declare-fun lt!1257414 () Bool)

(assert (=> d!1068938 (= lt!1257414 (set.member lt!1257097 (content!5497 (usedCharacters!925 (regex!5713 anOtherTypeRule!33)))))))

(declare-fun e!2249712 () Bool)

(assert (=> d!1068938 (= lt!1257414 e!2249712)))

(declare-fun res!1472240 () Bool)

(assert (=> d!1068938 (=> (not res!1472240) (not e!2249712))))

(assert (=> d!1068938 (= res!1472240 (is-Cons!38287 (usedCharacters!925 (regex!5713 anOtherTypeRule!33))))))

(assert (=> d!1068938 (= (contains!7491 (usedCharacters!925 (regex!5713 anOtherTypeRule!33)) lt!1257097) lt!1257414)))

(declare-fun b!3634456 () Bool)

(declare-fun e!2249711 () Bool)

(assert (=> b!3634456 (= e!2249712 e!2249711)))

(declare-fun res!1472241 () Bool)

(assert (=> b!3634456 (=> res!1472241 e!2249711)))

(assert (=> b!3634456 (= res!1472241 (= (h!43707 (usedCharacters!925 (regex!5713 anOtherTypeRule!33))) lt!1257097))))

(declare-fun b!3634457 () Bool)

(assert (=> b!3634457 (= e!2249711 (contains!7491 (t!295574 (usedCharacters!925 (regex!5713 anOtherTypeRule!33))) lt!1257097))))

(assert (= (and d!1068938 res!1472240) b!3634456))

(assert (= (and b!3634456 (not res!1472241)) b!3634457))

(assert (=> d!1068938 m!4135721))

(declare-fun m!4136561 () Bool)

(assert (=> d!1068938 m!4136561))

(declare-fun m!4136563 () Bool)

(assert (=> d!1068938 m!4136563))

(declare-fun m!4136565 () Bool)

(assert (=> b!3634457 m!4136565))

(assert (=> b!3633856 d!1068938))

(declare-fun b!3634458 () Bool)

(declare-fun e!2249715 () List!38411)

(declare-fun e!2249716 () List!38411)

(assert (=> b!3634458 (= e!2249715 e!2249716)))

(declare-fun c!628652 () Bool)

(assert (=> b!3634458 (= c!628652 (is-Union!10472 (regex!5713 anOtherTypeRule!33)))))

(declare-fun bm!262828 () Bool)

(declare-fun call!262836 () List!38411)

(assert (=> bm!262828 (= call!262836 (usedCharacters!925 (ite c!628652 (regTwo!21457 (regex!5713 anOtherTypeRule!33)) (regOne!21456 (regex!5713 anOtherTypeRule!33)))))))

(declare-fun b!3634460 () Bool)

(declare-fun c!628653 () Bool)

(assert (=> b!3634460 (= c!628653 (is-Star!10472 (regex!5713 anOtherTypeRule!33)))))

(declare-fun e!2249714 () List!38411)

(assert (=> b!3634460 (= e!2249714 e!2249715)))

(declare-fun b!3634461 () Bool)

(declare-fun e!2249713 () List!38411)

(assert (=> b!3634461 (= e!2249713 e!2249714)))

(declare-fun c!628650 () Bool)

(assert (=> b!3634461 (= c!628650 (is-ElementMatch!10472 (regex!5713 anOtherTypeRule!33)))))

(declare-fun b!3634462 () Bool)

(declare-fun call!262833 () List!38411)

(assert (=> b!3634462 (= e!2249716 call!262833)))

(declare-fun bm!262829 () Bool)

(declare-fun call!262835 () List!38411)

(declare-fun call!262834 () List!38411)

(assert (=> bm!262829 (= call!262835 call!262834)))

(declare-fun b!3634463 () Bool)

(assert (=> b!3634463 (= e!2249713 Nil!38287)))

(declare-fun bm!262830 () Bool)

(assert (=> bm!262830 (= call!262834 (usedCharacters!925 (ite c!628653 (reg!10801 (regex!5713 anOtherTypeRule!33)) (ite c!628652 (regOne!21457 (regex!5713 anOtherTypeRule!33)) (regTwo!21456 (regex!5713 anOtherTypeRule!33))))))))

(declare-fun b!3634464 () Bool)

(assert (=> b!3634464 (= e!2249714 (Cons!38287 (c!628555 (regex!5713 anOtherTypeRule!33)) Nil!38287))))

(declare-fun b!3634465 () Bool)

(assert (=> b!3634465 (= e!2249715 call!262834)))

(declare-fun bm!262831 () Bool)

(assert (=> bm!262831 (= call!262833 (++!9529 (ite c!628652 call!262835 call!262836) (ite c!628652 call!262836 call!262835)))))

(declare-fun b!3634459 () Bool)

(assert (=> b!3634459 (= e!2249716 call!262833)))

(declare-fun d!1068940 () Bool)

(declare-fun c!628651 () Bool)

(assert (=> d!1068940 (= c!628651 (or (is-EmptyExpr!10472 (regex!5713 anOtherTypeRule!33)) (is-EmptyLang!10472 (regex!5713 anOtherTypeRule!33))))))

(assert (=> d!1068940 (= (usedCharacters!925 (regex!5713 anOtherTypeRule!33)) e!2249713)))

(assert (= (and d!1068940 c!628651) b!3634463))

(assert (= (and d!1068940 (not c!628651)) b!3634461))

(assert (= (and b!3634461 c!628650) b!3634464))

(assert (= (and b!3634461 (not c!628650)) b!3634460))

(assert (= (and b!3634460 c!628653) b!3634465))

(assert (= (and b!3634460 (not c!628653)) b!3634458))

(assert (= (and b!3634458 c!628652) b!3634459))

(assert (= (and b!3634458 (not c!628652)) b!3634462))

(assert (= (or b!3634459 b!3634462) bm!262829))

(assert (= (or b!3634459 b!3634462) bm!262828))

(assert (= (or b!3634459 b!3634462) bm!262831))

(assert (= (or b!3634465 bm!262829) bm!262830))

(declare-fun m!4136567 () Bool)

(assert (=> bm!262828 m!4136567))

(declare-fun m!4136569 () Bool)

(assert (=> bm!262830 m!4136569))

(declare-fun m!4136571 () Bool)

(assert (=> bm!262831 m!4136571))

(assert (=> b!3633856 d!1068940))

(declare-fun d!1068942 () Bool)

(assert (=> d!1068942 (= (apply!9215 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))) lt!1257105) (dynLambda!16619 (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) lt!1257105))))

(declare-fun b_lambda!107649 () Bool)

(assert (=> (not b_lambda!107649) (not d!1068942)))

(declare-fun t!295636 () Bool)

(declare-fun tb!208977 () Bool)

(assert (=> (and b!3633872 (= (toValue!8005 (transformation!5713 (rule!8485 token!511))) (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295636) tb!208977))

(declare-fun result!254564 () Bool)

(assert (=> tb!208977 (= result!254564 (inv!21 (dynLambda!16619 (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) lt!1257105)))))

(declare-fun m!4136573 () Bool)

(assert (=> tb!208977 m!4136573))

(assert (=> d!1068942 t!295636))

(declare-fun b_and!267131 () Bool)

(assert (= b_and!267123 (and (=> t!295636 result!254564) b_and!267131)))

(declare-fun t!295638 () Bool)

(declare-fun tb!208979 () Bool)

(assert (=> (and b!3633859 (= (toValue!8005 (transformation!5713 anOtherTypeRule!33)) (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295638) tb!208979))

(declare-fun result!254566 () Bool)

(assert (= result!254566 result!254564))

(assert (=> d!1068942 t!295638))

(declare-fun b_and!267133 () Bool)

(assert (= b_and!267125 (and (=> t!295638 result!254566) b_and!267133)))

(declare-fun t!295640 () Bool)

(declare-fun tb!208981 () Bool)

(assert (=> (and b!3633865 (= (toValue!8005 (transformation!5713 rule!403)) (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295640) tb!208981))

(declare-fun result!254568 () Bool)

(assert (= result!254568 result!254564))

(assert (=> d!1068942 t!295640))

(declare-fun b_and!267135 () Bool)

(assert (= b_and!267127 (and (=> t!295640 result!254568) b_and!267135)))

(declare-fun t!295642 () Bool)

(declare-fun tb!208983 () Bool)

(assert (=> (and b!3633846 (= (toValue!8005 (transformation!5713 (h!43708 rules!3307))) (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295642) tb!208983))

(declare-fun result!254570 () Bool)

(assert (= result!254570 result!254564))

(assert (=> d!1068942 t!295642))

(declare-fun b_and!267137 () Bool)

(assert (= b_and!267129 (and (=> t!295642 result!254570) b_and!267137)))

(declare-fun m!4136575 () Bool)

(assert (=> d!1068942 m!4136575))

(assert (=> b!3633857 d!1068942))

(declare-fun d!1068944 () Bool)

(declare-fun lt!1257417 () Int)

(assert (=> d!1068944 (>= lt!1257417 0)))

(declare-fun e!2249720 () Int)

(assert (=> d!1068944 (= lt!1257417 e!2249720)))

(declare-fun c!628656 () Bool)

(assert (=> d!1068944 (= c!628656 (is-Nil!38287 lt!1257102))))

(assert (=> d!1068944 (= (size!29216 lt!1257102) lt!1257417)))

(declare-fun b!3634470 () Bool)

(assert (=> b!3634470 (= e!2249720 0)))

(declare-fun b!3634471 () Bool)

(assert (=> b!3634471 (= e!2249720 (+ 1 (size!29216 (t!295574 lt!1257102))))))

(assert (= (and d!1068944 c!628656) b!3634470))

(assert (= (and d!1068944 (not c!628656)) b!3634471))

(declare-fun m!4136577 () Bool)

(assert (=> b!3634471 m!4136577))

(assert (=> b!3633857 d!1068944))

(declare-fun bs!571759 () Bool)

(declare-fun d!1068946 () Bool)

(assert (= bs!571759 (and d!1068946 d!1068908)))

(declare-fun lambda!124312 () Int)

(assert (=> bs!571759 (= lambda!124312 lambda!124311)))

(declare-fun b!3634472 () Bool)

(declare-fun e!2249721 () Bool)

(assert (=> b!3634472 (= e!2249721 true)))

(assert (=> d!1068946 e!2249721))

(assert (= d!1068946 b!3634472))

(assert (=> b!3634472 (< (dynLambda!16616 order!20979 (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) (dynLambda!16620 order!20985 lambda!124312))))

(assert (=> b!3634472 (< (dynLambda!16618 order!20983 (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) (dynLambda!16620 order!20985 lambda!124312))))

(assert (=> d!1068946 (= (list!14159 (dynLambda!16614 (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) (dynLambda!16619 (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) lt!1257105))) (list!14159 lt!1257105))))

(declare-fun lt!1257418 () Unit!55109)

(assert (=> d!1068946 (= lt!1257418 (ForallOf!685 lambda!124312 lt!1257105))))

(assert (=> d!1068946 (= (lemmaSemiInverse!1462 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))) lt!1257105) lt!1257418)))

(declare-fun b_lambda!107651 () Bool)

(assert (=> (not b_lambda!107651) (not d!1068946)))

(declare-fun t!295644 () Bool)

(declare-fun tb!208985 () Bool)

(assert (=> (and b!3633872 (= (toChars!7864 (transformation!5713 (rule!8485 token!511))) (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295644) tb!208985))

(declare-fun e!2249722 () Bool)

(declare-fun b!3634473 () Bool)

(declare-fun tp!1109240 () Bool)

(assert (=> b!3634473 (= e!2249722 (and (inv!51717 (c!628556 (dynLambda!16614 (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) (dynLambda!16619 (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) lt!1257105)))) tp!1109240))))

(declare-fun result!254572 () Bool)

(assert (=> tb!208985 (= result!254572 (and (inv!51718 (dynLambda!16614 (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) (dynLambda!16619 (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104)))) lt!1257105))) e!2249722))))

(assert (= tb!208985 b!3634473))

(declare-fun m!4136579 () Bool)

(assert (=> b!3634473 m!4136579))

(declare-fun m!4136581 () Bool)

(assert (=> tb!208985 m!4136581))

(assert (=> d!1068946 t!295644))

(declare-fun b_and!267139 () Bool)

(assert (= b_and!267115 (and (=> t!295644 result!254572) b_and!267139)))

(declare-fun tb!208987 () Bool)

(declare-fun t!295646 () Bool)

(assert (=> (and b!3633859 (= (toChars!7864 (transformation!5713 anOtherTypeRule!33)) (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295646) tb!208987))

(declare-fun result!254574 () Bool)

(assert (= result!254574 result!254572))

(assert (=> d!1068946 t!295646))

(declare-fun b_and!267141 () Bool)

(assert (= b_and!267117 (and (=> t!295646 result!254574) b_and!267141)))

(declare-fun tb!208989 () Bool)

(declare-fun t!295648 () Bool)

(assert (=> (and b!3633865 (= (toChars!7864 (transformation!5713 rule!403)) (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295648) tb!208989))

(declare-fun result!254576 () Bool)

(assert (= result!254576 result!254572))

(assert (=> d!1068946 t!295648))

(declare-fun b_and!267143 () Bool)

(assert (= b_and!267119 (and (=> t!295648 result!254576) b_and!267143)))

(declare-fun tb!208991 () Bool)

(declare-fun t!295650 () Bool)

(assert (=> (and b!3633846 (= (toChars!7864 (transformation!5713 (h!43708 rules!3307))) (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295650) tb!208991))

(declare-fun result!254578 () Bool)

(assert (= result!254578 result!254572))

(assert (=> d!1068946 t!295650))

(declare-fun b_and!267145 () Bool)

(assert (= b_and!267121 (and (=> t!295650 result!254578) b_and!267145)))

(declare-fun b_lambda!107653 () Bool)

(assert (=> (not b_lambda!107653) (not d!1068946)))

(assert (=> d!1068946 t!295636))

(declare-fun b_and!267147 () Bool)

(assert (= b_and!267131 (and (=> t!295636 result!254564) b_and!267147)))

(assert (=> d!1068946 t!295638))

(declare-fun b_and!267149 () Bool)

(assert (= b_and!267133 (and (=> t!295638 result!254566) b_and!267149)))

(assert (=> d!1068946 t!295640))

(declare-fun b_and!267151 () Bool)

(assert (= b_and!267135 (and (=> t!295640 result!254568) b_and!267151)))

(assert (=> d!1068946 t!295642))

(declare-fun b_and!267153 () Bool)

(assert (= b_and!267137 (and (=> t!295642 result!254570) b_and!267153)))

(assert (=> d!1068946 m!4136575))

(assert (=> d!1068946 m!4136575))

(declare-fun m!4136583 () Bool)

(assert (=> d!1068946 m!4136583))

(assert (=> d!1068946 m!4136583))

(declare-fun m!4136585 () Bool)

(assert (=> d!1068946 m!4136585))

(declare-fun m!4136587 () Bool)

(assert (=> d!1068946 m!4136587))

(declare-fun m!4136589 () Bool)

(assert (=> d!1068946 m!4136589))

(assert (=> b!3633857 d!1068946))

(declare-fun d!1068948 () Bool)

(assert (=> d!1068948 (= (seqFromList!4262 lt!1257102) (fromListB!1964 lt!1257102))))

(declare-fun bs!571760 () Bool)

(assert (= bs!571760 d!1068948))

(declare-fun m!4136591 () Bool)

(assert (=> bs!571760 m!4136591))

(assert (=> b!3633857 d!1068948))

(declare-fun d!1068950 () Bool)

(assert (=> d!1068950 (= (inv!51710 (tag!6449 (h!43708 rules!3307))) (= (mod (str.len (value!183281 (tag!6449 (h!43708 rules!3307)))) 2) 0))))

(assert (=> b!3633858 d!1068950))

(declare-fun d!1068952 () Bool)

(declare-fun res!1472242 () Bool)

(declare-fun e!2249723 () Bool)

(assert (=> d!1068952 (=> (not res!1472242) (not e!2249723))))

(assert (=> d!1068952 (= res!1472242 (semiInverseModEq!2428 (toChars!7864 (transformation!5713 (h!43708 rules!3307))) (toValue!8005 (transformation!5713 (h!43708 rules!3307)))))))

(assert (=> d!1068952 (= (inv!51713 (transformation!5713 (h!43708 rules!3307))) e!2249723)))

(declare-fun b!3634474 () Bool)

(assert (=> b!3634474 (= e!2249723 (equivClasses!2327 (toChars!7864 (transformation!5713 (h!43708 rules!3307))) (toValue!8005 (transformation!5713 (h!43708 rules!3307)))))))

(assert (= (and d!1068952 res!1472242) b!3634474))

(declare-fun m!4136593 () Bool)

(assert (=> d!1068952 m!4136593))

(declare-fun m!4136595 () Bool)

(assert (=> b!3634474 m!4136595))

(assert (=> b!3633858 d!1068952))

(declare-fun d!1068954 () Bool)

(assert (=> d!1068954 (= (isEmpty!22655 suffix!1395) (is-Nil!38287 suffix!1395))))

(assert (=> b!3633860 d!1068954))

(declare-fun d!1068956 () Bool)

(declare-fun lt!1257419 () Bool)

(assert (=> d!1068956 (= lt!1257419 (set.member anOtherTypeRule!33 (content!5496 rules!3307)))))

(declare-fun e!2249725 () Bool)

(assert (=> d!1068956 (= lt!1257419 e!2249725)))

(declare-fun res!1472244 () Bool)

(assert (=> d!1068956 (=> (not res!1472244) (not e!2249725))))

(assert (=> d!1068956 (= res!1472244 (is-Cons!38288 rules!3307))))

(assert (=> d!1068956 (= (contains!7492 rules!3307 anOtherTypeRule!33) lt!1257419)))

(declare-fun b!3634475 () Bool)

(declare-fun e!2249724 () Bool)

(assert (=> b!3634475 (= e!2249725 e!2249724)))

(declare-fun res!1472243 () Bool)

(assert (=> b!3634475 (=> res!1472243 e!2249724)))

(assert (=> b!3634475 (= res!1472243 (= (h!43708 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3634476 () Bool)

(assert (=> b!3634476 (= e!2249724 (contains!7492 (t!295575 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1068956 res!1472244) b!3634475))

(assert (= (and b!3634475 (not res!1472243)) b!3634476))

(assert (=> d!1068956 m!4136023))

(declare-fun m!4136597 () Bool)

(assert (=> d!1068956 m!4136597))

(declare-fun m!4136599 () Bool)

(assert (=> b!3634476 m!4136599))

(assert (=> b!3633861 d!1068956))

(declare-fun b!3634489 () Bool)

(declare-fun e!2249728 () Bool)

(declare-fun tp!1109252 () Bool)

(assert (=> b!3634489 (= e!2249728 tp!1109252)))

(declare-fun b!3634488 () Bool)

(declare-fun tp!1109251 () Bool)

(declare-fun tp!1109253 () Bool)

(assert (=> b!3634488 (= e!2249728 (and tp!1109251 tp!1109253))))

(assert (=> b!3633873 (= tp!1109179 e!2249728)))

(declare-fun b!3634487 () Bool)

(assert (=> b!3634487 (= e!2249728 tp_is_empty!18027)))

(declare-fun b!3634490 () Bool)

(declare-fun tp!1109254 () Bool)

(declare-fun tp!1109255 () Bool)

(assert (=> b!3634490 (= e!2249728 (and tp!1109254 tp!1109255))))

(assert (= (and b!3633873 (is-ElementMatch!10472 (regex!5713 rule!403))) b!3634487))

(assert (= (and b!3633873 (is-Concat!16416 (regex!5713 rule!403))) b!3634488))

(assert (= (and b!3633873 (is-Star!10472 (regex!5713 rule!403))) b!3634489))

(assert (= (and b!3633873 (is-Union!10472 (regex!5713 rule!403))) b!3634490))

(declare-fun b!3634493 () Bool)

(declare-fun e!2249729 () Bool)

(declare-fun tp!1109257 () Bool)

(assert (=> b!3634493 (= e!2249729 tp!1109257)))

(declare-fun b!3634492 () Bool)

(declare-fun tp!1109256 () Bool)

(declare-fun tp!1109258 () Bool)

(assert (=> b!3634492 (= e!2249729 (and tp!1109256 tp!1109258))))

(assert (=> b!3633847 (= tp!1109185 e!2249729)))

(declare-fun b!3634491 () Bool)

(assert (=> b!3634491 (= e!2249729 tp_is_empty!18027)))

(declare-fun b!3634494 () Bool)

(declare-fun tp!1109259 () Bool)

(declare-fun tp!1109260 () Bool)

(assert (=> b!3634494 (= e!2249729 (and tp!1109259 tp!1109260))))

(assert (= (and b!3633847 (is-ElementMatch!10472 (regex!5713 anOtherTypeRule!33))) b!3634491))

(assert (= (and b!3633847 (is-Concat!16416 (regex!5713 anOtherTypeRule!33))) b!3634492))

(assert (= (and b!3633847 (is-Star!10472 (regex!5713 anOtherTypeRule!33))) b!3634493))

(assert (= (and b!3633847 (is-Union!10472 (regex!5713 anOtherTypeRule!33))) b!3634494))

(declare-fun b!3634497 () Bool)

(declare-fun e!2249730 () Bool)

(declare-fun tp!1109262 () Bool)

(assert (=> b!3634497 (= e!2249730 tp!1109262)))

(declare-fun b!3634496 () Bool)

(declare-fun tp!1109261 () Bool)

(declare-fun tp!1109263 () Bool)

(assert (=> b!3634496 (= e!2249730 (and tp!1109261 tp!1109263))))

(assert (=> b!3633858 (= tp!1109182 e!2249730)))

(declare-fun b!3634495 () Bool)

(assert (=> b!3634495 (= e!2249730 tp_is_empty!18027)))

(declare-fun b!3634498 () Bool)

(declare-fun tp!1109264 () Bool)

(declare-fun tp!1109265 () Bool)

(assert (=> b!3634498 (= e!2249730 (and tp!1109264 tp!1109265))))

(assert (= (and b!3633858 (is-ElementMatch!10472 (regex!5713 (h!43708 rules!3307)))) b!3634495))

(assert (= (and b!3633858 (is-Concat!16416 (regex!5713 (h!43708 rules!3307)))) b!3634496))

(assert (= (and b!3633858 (is-Star!10472 (regex!5713 (h!43708 rules!3307)))) b!3634497))

(assert (= (and b!3633858 (is-Union!10472 (regex!5713 (h!43708 rules!3307)))) b!3634498))

(declare-fun b!3634509 () Bool)

(declare-fun b_free!95113 () Bool)

(declare-fun b_next!95817 () Bool)

(assert (=> b!3634509 (= b_free!95113 (not b_next!95817))))

(declare-fun t!295652 () Bool)

(declare-fun tb!208993 () Bool)

(assert (=> (and b!3634509 (= (toValue!8005 (transformation!5713 (h!43708 (t!295575 rules!3307)))) (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295652) tb!208993))

(declare-fun result!254584 () Bool)

(assert (= result!254584 result!254548))

(assert (=> d!1068858 t!295652))

(declare-fun tb!208995 () Bool)

(declare-fun t!295654 () Bool)

(assert (=> (and b!3634509 (= (toValue!8005 (transformation!5713 (h!43708 (t!295575 rules!3307)))) (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295654) tb!208995))

(declare-fun result!254586 () Bool)

(assert (= result!254586 result!254564))

(assert (=> d!1068946 t!295654))

(declare-fun t!295656 () Bool)

(declare-fun tb!208997 () Bool)

(assert (=> (and b!3634509 (= (toValue!8005 (transformation!5713 (h!43708 (t!295575 rules!3307)))) (toValue!8005 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295656) tb!208997))

(declare-fun result!254588 () Bool)

(assert (= result!254588 result!254538))

(assert (=> d!1068908 t!295656))

(assert (=> d!1068858 t!295656))

(assert (=> d!1068902 t!295656))

(assert (=> d!1068942 t!295654))

(declare-fun tp!1109275 () Bool)

(declare-fun b_and!267155 () Bool)

(assert (=> b!3634509 (= tp!1109275 (and (=> t!295652 result!254584) (=> t!295656 result!254588) (=> t!295654 result!254586) b_and!267155))))

(declare-fun b_free!95115 () Bool)

(declare-fun b_next!95819 () Bool)

(assert (=> b!3634509 (= b_free!95115 (not b_next!95819))))

(declare-fun t!295658 () Bool)

(declare-fun tb!208999 () Bool)

(assert (=> (and b!3634509 (= (toChars!7864 (transformation!5713 (h!43708 (t!295575 rules!3307)))) (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295658) tb!208999))

(declare-fun result!254590 () Bool)

(assert (= result!254590 result!254572))

(assert (=> d!1068946 t!295658))

(declare-fun tb!209001 () Bool)

(declare-fun t!295660 () Bool)

(assert (=> (and b!3634509 (= (toChars!7864 (transformation!5713 (h!43708 (t!295575 rules!3307)))) (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295660) tb!209001))

(declare-fun result!254592 () Bool)

(assert (= result!254592 result!254556))

(assert (=> d!1068908 t!295660))

(declare-fun tb!209003 () Bool)

(declare-fun t!295662 () Bool)

(assert (=> (and b!3634509 (= (toChars!7864 (transformation!5713 (h!43708 (t!295575 rules!3307)))) (toChars!7864 (transformation!5713 (rule!8485 token!511)))) t!295662) tb!209003))

(declare-fun result!254594 () Bool)

(assert (= result!254594 result!254502))

(assert (=> d!1068788 t!295662))

(assert (=> b!3634101 t!295662))

(declare-fun tb!209005 () Bool)

(declare-fun t!295664 () Bool)

(assert (=> (and b!3634509 (= (toChars!7864 (transformation!5713 (h!43708 (t!295575 rules!3307)))) (toChars!7864 (transformation!5713 (rule!8485 (_1!22211 lt!1257104))))) t!295664) tb!209005))

(declare-fun result!254596 () Bool)

(assert (= result!254596 result!254522))

(assert (=> d!1068842 t!295664))

(declare-fun tp!1109277 () Bool)

(declare-fun b_and!267157 () Bool)

(assert (=> b!3634509 (= tp!1109277 (and (=> t!295662 result!254594) (=> t!295664 result!254596) (=> t!295660 result!254592) (=> t!295658 result!254590) b_and!267157))))

(declare-fun e!2249739 () Bool)

(assert (=> b!3634509 (= e!2249739 (and tp!1109275 tp!1109277))))

(declare-fun b!3634508 () Bool)

(declare-fun e!2249740 () Bool)

(declare-fun tp!1109274 () Bool)

(assert (=> b!3634508 (= e!2249740 (and tp!1109274 (inv!51710 (tag!6449 (h!43708 (t!295575 rules!3307)))) (inv!51713 (transformation!5713 (h!43708 (t!295575 rules!3307)))) e!2249739))))

(declare-fun b!3634507 () Bool)

(declare-fun e!2249742 () Bool)

(declare-fun tp!1109276 () Bool)

(assert (=> b!3634507 (= e!2249742 (and e!2249740 tp!1109276))))

(assert (=> b!3633849 (= tp!1109177 e!2249742)))

(assert (= b!3634508 b!3634509))

(assert (= b!3634507 b!3634508))

(assert (= (and b!3633849 (is-Cons!38288 (t!295575 rules!3307))) b!3634507))

(declare-fun m!4136601 () Bool)

(assert (=> b!3634508 m!4136601))

(declare-fun m!4136603 () Bool)

(assert (=> b!3634508 m!4136603))

(declare-fun b!3634514 () Bool)

(declare-fun e!2249745 () Bool)

(declare-fun tp!1109280 () Bool)

(assert (=> b!3634514 (= e!2249745 (and tp_is_empty!18027 tp!1109280))))

(assert (=> b!3633871 (= tp!1109175 e!2249745)))

(assert (= (and b!3633871 (is-Cons!38287 (originalCharacters!6427 token!511))) b!3634514))

(declare-fun b!3634517 () Bool)

(declare-fun e!2249746 () Bool)

(declare-fun tp!1109282 () Bool)

(assert (=> b!3634517 (= e!2249746 tp!1109282)))

(declare-fun b!3634516 () Bool)

(declare-fun tp!1109281 () Bool)

(declare-fun tp!1109283 () Bool)

(assert (=> b!3634516 (= e!2249746 (and tp!1109281 tp!1109283))))

(assert (=> b!3633845 (= tp!1109178 e!2249746)))

(declare-fun b!3634515 () Bool)

(assert (=> b!3634515 (= e!2249746 tp_is_empty!18027)))

(declare-fun b!3634518 () Bool)

(declare-fun tp!1109284 () Bool)

(declare-fun tp!1109285 () Bool)

(assert (=> b!3634518 (= e!2249746 (and tp!1109284 tp!1109285))))

(assert (= (and b!3633845 (is-ElementMatch!10472 (regex!5713 (rule!8485 token!511)))) b!3634515))

(assert (= (and b!3633845 (is-Concat!16416 (regex!5713 (rule!8485 token!511)))) b!3634516))

(assert (= (and b!3633845 (is-Star!10472 (regex!5713 (rule!8485 token!511)))) b!3634517))

(assert (= (and b!3633845 (is-Union!10472 (regex!5713 (rule!8485 token!511)))) b!3634518))

(declare-fun b!3634519 () Bool)

(declare-fun e!2249747 () Bool)

(declare-fun tp!1109286 () Bool)

(assert (=> b!3634519 (= e!2249747 (and tp_is_empty!18027 tp!1109286))))

(assert (=> b!3633866 (= tp!1109183 e!2249747)))

(assert (= (and b!3633866 (is-Cons!38287 (t!295574 suffix!1395))) b!3634519))

(declare-fun b_lambda!107655 () Bool)

(assert (= b_lambda!107627 (or (and b!3633859 b_free!95087 (= (toChars!7864 (transformation!5713 anOtherTypeRule!33)) (toChars!7864 (transformation!5713 (rule!8485 token!511))))) (and b!3633846 b_free!95095 (= (toChars!7864 (transformation!5713 (h!43708 rules!3307))) (toChars!7864 (transformation!5713 (rule!8485 token!511))))) (and b!3633872 b_free!95083) (and b!3634509 b_free!95115 (= (toChars!7864 (transformation!5713 (h!43708 (t!295575 rules!3307)))) (toChars!7864 (transformation!5713 (rule!8485 token!511))))) (and b!3633865 b_free!95091 (= (toChars!7864 (transformation!5713 rule!403)) (toChars!7864 (transformation!5713 (rule!8485 token!511))))) b_lambda!107655)))

(declare-fun b_lambda!107657 () Bool)

(assert (= b_lambda!107629 (or (and b!3633859 b_free!95087 (= (toChars!7864 (transformation!5713 anOtherTypeRule!33)) (toChars!7864 (transformation!5713 (rule!8485 token!511))))) (and b!3633846 b_free!95095 (= (toChars!7864 (transformation!5713 (h!43708 rules!3307))) (toChars!7864 (transformation!5713 (rule!8485 token!511))))) (and b!3633872 b_free!95083) (and b!3634509 b_free!95115 (= (toChars!7864 (transformation!5713 (h!43708 (t!295575 rules!3307)))) (toChars!7864 (transformation!5713 (rule!8485 token!511))))) (and b!3633865 b_free!95091 (= (toChars!7864 (transformation!5713 rule!403)) (toChars!7864 (transformation!5713 (rule!8485 token!511))))) b_lambda!107657)))

(push 1)

(assert (not b!3634494))

(assert (not d!1068784))

(assert (not d!1068796))

(assert (not d!1068844))

(assert (not b!3634147))

(assert (not b!3633996))

(assert (not b!3634208))

(assert (not bm!262828))

(assert (not b!3634473))

(assert (not bm!262790))

(assert (not b_lambda!107655))

(assert (not b!3634105))

(assert (not b!3634213))

(assert (not b!3634017))

(assert (not b!3634245))

(assert (not b_lambda!107633))

(assert (not bm!262793))

(assert (not b!3634136))

(assert (not b_lambda!107643))

(assert (not b!3634102))

(assert (not b!3634002))

(assert (not b_lambda!107649))

(assert (not bm!262826))

(assert b_and!267149)

(assert (not tb!208977))

(assert (not b_lambda!107641))

(assert (not d!1068856))

(assert (not bm!262800))

(assert (not b!3634519))

(assert (not b_next!95785))

(assert (not b_lambda!107639))

(assert (not b!3634490))

(assert (not b!3634221))

(assert (not b!3634517))

(assert (not b!3634454))

(assert (not b!3634442))

(assert (not d!1068922))

(assert (not b!3633998))

(assert (not b!3634449))

(assert (not b_next!95793))

(assert (not b!3634063))

(assert (not b!3634163))

(assert (not d!1068840))

(assert (not d!1068802))

(assert (not b!3634232))

(assert (not d!1068928))

(assert (not b!3634514))

(assert (not b!3634507))

(assert (not tb!208937))

(assert (not d!1068808))

(assert (not b!3634214))

(assert (not b!3634149))

(assert b_and!267151)

(assert (not b_lambda!107653))

(assert (not d!1068920))

(assert (not d!1068948))

(assert (not b!3633999))

(assert (not b!3634103))

(assert (not b!3634455))

(assert (not b!3634115))

(assert (not d!1068842))

(assert (not b!3634497))

(assert (not b!3634247))

(assert (not d!1068938))

(assert (not b!3634066))

(assert (not bm!262831))

(assert (not b!3634137))

(assert (not tb!208961))

(assert (not b!3634020))

(assert (not b!3634148))

(assert (not d!1068956))

(assert b_and!267145)

(assert (not b!3634396))

(assert (not b!3634000))

(assert (not b!3634429))

(assert b_and!267139)

(assert (not b!3634498))

(assert (not b!3634227))

(assert (not b!3634101))

(assert b_and!267147)

(assert (not b!3634233))

(assert (not b!3634492))

(assert (not tb!208921))

(assert (not b!3634217))

(assert (not d!1068946))

(assert (not b_next!95791))

(assert (not b!3634220))

(assert (not b!3634224))

(assert (not d!1068910))

(assert (not b!3634508))

(assert (not d!1068858))

(assert (not tb!208953))

(assert (not b!3634246))

(assert (not b_next!95787))

(assert (not b_lambda!107647))

(assert (not b_next!95819))

(assert (not b!3634422))

(assert (not b!3634218))

(assert (not d!1068908))

(assert b_and!267143)

(assert (not b!3634474))

(assert (not d!1068786))

(assert (not d!1068924))

(assert (not b!3634457))

(assert b_and!267157)

(assert (not b_next!95797))

(assert (not b!3634216))

(assert (not bm!262825))

(assert (not b_lambda!107657))

(assert (not d!1068828))

(assert (not d!1068788))

(assert (not b!3634452))

(assert (not b_next!95789))

(assert b_and!267155)

(assert (not b!3634209))

(assert b_and!267141)

(assert (not bm!262822))

(assert (not d!1068906))

(assert (not b!3634493))

(assert (not b!3634518))

(assert (not bm!262824))

(assert (not tb!208985))

(assert (not b!3634219))

(assert (not d!1068792))

(assert (not b!3634451))

(assert (not b!3634471))

(assert (not b!3634489))

(assert b_and!267153)

(assert (not b!3634016))

(assert (not b!3634162))

(assert (not b!3634062))

(assert (not d!1068846))

(assert (not b!3634432))

(assert (not d!1068850))

(assert (not d!1068800))

(assert (not d!1068812))

(assert (not b!3634210))

(assert (not bm!262827))

(assert (not b!3634068))

(assert (not b!3634056))

(assert (not b!3634448))

(assert (not b!3634390))

(assert (not d!1068848))

(assert (not d!1068830))

(assert (not b!3634215))

(assert (not d!1068904))

(assert (not b_lambda!107651))

(assert (not b!3634476))

(assert (not b!3634431))

(assert tp_is_empty!18027)

(assert (not b_lambda!107645))

(assert (not b!3634165))

(assert (not d!1068936))

(assert (not b!3634008))

(assert (not d!1068782))

(assert (not b!3634488))

(assert (not d!1068804))

(assert (not b!3634026))

(assert (not b!3633995))

(assert (not b!3634496))

(assert (not d!1068826))

(assert (not b!3634222))

(assert (not b!3634003))

(assert (not d!1068930))

(assert (not tb!208969))

(assert (not b!3634065))

(assert (not d!1068816))

(assert (not b!3634225))

(assert (not b!3634228))

(assert (not d!1068952))

(assert (not b!3634516))

(assert (not b!3634011))

(assert (not b_next!95795))

(assert (not b!3634231))

(assert (not b!3634434))

(assert (not b!3634439))

(assert (not b!3634116))

(assert (not bm!262830))

(assert (not b!3633997))

(assert (not d!1068814))

(assert (not b_next!95799))

(assert (not b!3634428))

(assert (not b_next!95817))

(check-sat)

(pop 1)

(push 1)

(assert b_and!267149)

(assert (not b_next!95785))

(assert (not b_next!95793))

(assert b_and!267151)

(assert b_and!267147)

(assert (not b_next!95791))

(assert b_and!267143)

(assert (not b_next!95789))

(assert b_and!267153)

(assert (not b_next!95795))

(assert b_and!267145)

(assert b_and!267139)

(assert (not b_next!95787))

(assert (not b_next!95819))

(assert b_and!267157)

(assert (not b_next!95797))

(assert b_and!267155)

(assert b_and!267141)

(assert (not b_next!95799))

(assert (not b_next!95817))

(check-sat)

(pop 1)


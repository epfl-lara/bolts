; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!340790 () Bool)

(assert start!340790)

(declare-fun b!3646174 () Bool)

(declare-fun b_free!95729 () Bool)

(declare-fun b_next!96433 () Bool)

(assert (=> b!3646174 (= b_free!95729 (not b_next!96433))))

(declare-fun tp!1111873 () Bool)

(declare-fun b_and!269275 () Bool)

(assert (=> b!3646174 (= tp!1111873 b_and!269275)))

(declare-fun b_free!95731 () Bool)

(declare-fun b_next!96435 () Bool)

(assert (=> b!3646174 (= b_free!95731 (not b_next!96435))))

(declare-fun tp!1111872 () Bool)

(declare-fun b_and!269277 () Bool)

(assert (=> b!3646174 (= tp!1111872 b_and!269277)))

(declare-fun b!3646157 () Bool)

(declare-fun b_free!95733 () Bool)

(declare-fun b_next!96437 () Bool)

(assert (=> b!3646157 (= b_free!95733 (not b_next!96437))))

(declare-fun tp!1111878 () Bool)

(declare-fun b_and!269279 () Bool)

(assert (=> b!3646157 (= tp!1111878 b_and!269279)))

(declare-fun b_free!95735 () Bool)

(declare-fun b_next!96439 () Bool)

(assert (=> b!3646157 (= b_free!95735 (not b_next!96439))))

(declare-fun tp!1111881 () Bool)

(declare-fun b_and!269281 () Bool)

(assert (=> b!3646157 (= tp!1111881 b_and!269281)))

(declare-fun b!3646141 () Bool)

(declare-fun b_free!95737 () Bool)

(declare-fun b_next!96441 () Bool)

(assert (=> b!3646141 (= b_free!95737 (not b_next!96441))))

(declare-fun tp!1111880 () Bool)

(declare-fun b_and!269283 () Bool)

(assert (=> b!3646141 (= tp!1111880 b_and!269283)))

(declare-fun b_free!95739 () Bool)

(declare-fun b_next!96443 () Bool)

(assert (=> b!3646141 (= b_free!95739 (not b_next!96443))))

(declare-fun tp!1111884 () Bool)

(declare-fun b_and!269285 () Bool)

(assert (=> b!3646141 (= tp!1111884 b_and!269285)))

(declare-fun b!3646145 () Bool)

(declare-fun b_free!95741 () Bool)

(declare-fun b_next!96445 () Bool)

(assert (=> b!3646145 (= b_free!95741 (not b_next!96445))))

(declare-fun tp!1111871 () Bool)

(declare-fun b_and!269287 () Bool)

(assert (=> b!3646145 (= tp!1111871 b_and!269287)))

(declare-fun b_free!95743 () Bool)

(declare-fun b_next!96447 () Bool)

(assert (=> b!3646145 (= b_free!95743 (not b_next!96447))))

(declare-fun tp!1111875 () Bool)

(declare-fun b_and!269289 () Bool)

(assert (=> b!3646145 (= tp!1111875 b_and!269289)))

(declare-fun e!2257216 () Bool)

(assert (=> b!3646141 (= e!2257216 (and tp!1111880 tp!1111884))))

(declare-fun b!3646142 () Bool)

(declare-fun e!2257234 () Bool)

(declare-fun e!2257243 () Bool)

(assert (=> b!3646142 (= e!2257234 e!2257243)))

(declare-fun res!1478650 () Bool)

(assert (=> b!3646142 (=> (not res!1478650) (not e!2257243))))

(declare-datatypes ((List!38559 0))(
  ( (Nil!38435) (Cons!38435 (h!43855 (_ BitVec 16)) (t!297062 List!38559)) )
))
(declare-datatypes ((TokenValue!5978 0))(
  ( (FloatLiteralValue!11956 (text!42291 List!38559)) (TokenValueExt!5977 (__x!24173 Int)) (Broken!29890 (value!184252 List!38559)) (Object!6101) (End!5978) (Def!5978) (Underscore!5978) (Match!5978) (Else!5978) (Error!5978) (Case!5978) (If!5978) (Extends!5978) (Abstract!5978) (Class!5978) (Val!5978) (DelimiterValue!11956 (del!6038 List!38559)) (KeywordValue!5984 (value!184253 List!38559)) (CommentValue!11956 (value!184254 List!38559)) (WhitespaceValue!11956 (value!184255 List!38559)) (IndentationValue!5978 (value!184256 List!38559)) (String!43223) (Int32!5978) (Broken!29891 (value!184257 List!38559)) (Boolean!5979) (Unit!55325) (OperatorValue!5981 (op!6038 List!38559)) (IdentifierValue!11956 (value!184258 List!38559)) (IdentifierValue!11957 (value!184259 List!38559)) (WhitespaceValue!11957 (value!184260 List!38559)) (True!11956) (False!11956) (Broken!29892 (value!184261 List!38559)) (Broken!29893 (value!184262 List!38559)) (True!11957) (RightBrace!5978) (RightBracket!5978) (Colon!5978) (Null!5978) (Comma!5978) (LeftBracket!5978) (False!11957) (LeftBrace!5978) (ImaginaryLiteralValue!5978 (text!42292 List!38559)) (StringLiteralValue!17934 (value!184263 List!38559)) (EOFValue!5978 (value!184264 List!38559)) (IdentValue!5978 (value!184265 List!38559)) (DelimiterValue!11957 (value!184266 List!38559)) (DedentValue!5978 (value!184267 List!38559)) (NewLineValue!5978 (value!184268 List!38559)) (IntegerValue!17934 (value!184269 (_ BitVec 32)) (text!42293 List!38559)) (IntegerValue!17935 (value!184270 Int) (text!42294 List!38559)) (Times!5978) (Or!5978) (Equal!5978) (Minus!5978) (Broken!29894 (value!184271 List!38559)) (And!5978) (Div!5978) (LessEqual!5978) (Mod!5978) (Concat!16485) (Not!5978) (Plus!5978) (SpaceValue!5978 (value!184272 List!38559)) (IntegerValue!17936 (value!184273 Int) (text!42295 List!38559)) (StringLiteralValue!17935 (text!42296 List!38559)) (FloatLiteralValue!11957 (text!42297 List!38559)) (BytesLiteralValue!5978 (value!184274 List!38559)) (CommentValue!11957 (value!184275 List!38559)) (StringLiteralValue!17936 (value!184276 List!38559)) (ErrorTokenValue!5978 (msg!6039 List!38559)) )
))
(declare-datatypes ((C!21200 0))(
  ( (C!21201 (val!12648 Int)) )
))
(declare-datatypes ((Regex!10507 0))(
  ( (ElementMatch!10507 (c!630288 C!21200)) (Concat!16486 (regOne!21526 Regex!10507) (regTwo!21526 Regex!10507)) (EmptyExpr!10507) (Star!10507 (reg!10836 Regex!10507)) (EmptyLang!10507) (Union!10507 (regOne!21527 Regex!10507) (regTwo!21527 Regex!10507)) )
))
(declare-datatypes ((String!43224 0))(
  ( (String!43225 (value!184277 String)) )
))
(declare-datatypes ((List!38560 0))(
  ( (Nil!38436) (Cons!38436 (h!43856 C!21200) (t!297063 List!38560)) )
))
(declare-datatypes ((IArray!23487 0))(
  ( (IArray!23488 (innerList!11801 List!38560)) )
))
(declare-datatypes ((Conc!11741 0))(
  ( (Node!11741 (left!30009 Conc!11741) (right!30339 Conc!11741) (csize!23712 Int) (cheight!11952 Int)) (Leaf!18226 (xs!14943 IArray!23487) (csize!23713 Int)) (Empty!11741) )
))
(declare-datatypes ((BalanceConc!23096 0))(
  ( (BalanceConc!23097 (c!630289 Conc!11741)) )
))
(declare-datatypes ((TokenValueInjection!11384 0))(
  ( (TokenValueInjection!11385 (toValue!8040 Int) (toChars!7899 Int)) )
))
(declare-datatypes ((Rule!11296 0))(
  ( (Rule!11297 (regex!5748 Regex!10507) (tag!6506 String!43224) (isSeparator!5748 Bool) (transformation!5748 TokenValueInjection!11384)) )
))
(declare-datatypes ((Token!10862 0))(
  ( (Token!10863 (value!184278 TokenValue!5978) (rule!8540 Rule!11296) (size!29341 Int) (originalCharacters!6462 List!38560)) )
))
(declare-datatypes ((tuple2!38308 0))(
  ( (tuple2!38309 (_1!22288 Token!10862) (_2!22288 List!38560)) )
))
(declare-datatypes ((Option!8124 0))(
  ( (None!8123) (Some!8123 (v!37971 tuple2!38308)) )
))
(declare-fun lt!1263499 () Option!8124)

(declare-fun isDefined!6356 (Option!8124) Bool)

(assert (=> b!3646142 (= res!1478650 (isDefined!6356 lt!1263499))))

(declare-datatypes ((LexerInterface!5337 0))(
  ( (LexerInterfaceExt!5334 (__x!24174 Int)) (Lexer!5335) )
))
(declare-fun thiss!23823 () LexerInterface!5337)

(declare-fun lt!1263485 () List!38560)

(declare-datatypes ((List!38561 0))(
  ( (Nil!38437) (Cons!38437 (h!43857 Rule!11296) (t!297064 List!38561)) )
))
(declare-fun rules!3307 () List!38561)

(declare-fun maxPrefix!2871 (LexerInterface!5337 List!38561 List!38560) Option!8124)

(assert (=> b!3646142 (= lt!1263499 (maxPrefix!2871 thiss!23823 rules!3307 lt!1263485))))

(declare-fun lt!1263479 () BalanceConc!23096)

(declare-fun list!14238 (BalanceConc!23096) List!38560)

(assert (=> b!3646142 (= lt!1263485 (list!14238 lt!1263479))))

(declare-fun token!511 () Token!10862)

(declare-fun charsOf!3762 (Token!10862) BalanceConc!23096)

(assert (=> b!3646142 (= lt!1263479 (charsOf!3762 token!511))))

(declare-fun b!3646143 () Bool)

(declare-fun e!2257225 () Bool)

(declare-fun e!2257238 () Bool)

(declare-fun tp!1111874 () Bool)

(assert (=> b!3646143 (= e!2257225 (and e!2257238 tp!1111874))))

(declare-fun b!3646144 () Bool)

(declare-datatypes ((Unit!55326 0))(
  ( (Unit!55327) )
))
(declare-fun e!2257217 () Unit!55326)

(declare-fun e!2257222 () Unit!55326)

(assert (=> b!3646144 (= e!2257217 e!2257222)))

(declare-fun c!630286 () Bool)

(declare-fun lt!1263495 () tuple2!38308)

(assert (=> b!3646144 (= c!630286 (isSeparator!5748 (rule!8540 (_1!22288 lt!1263495))))))

(declare-fun e!2257241 () Bool)

(assert (=> b!3646145 (= e!2257241 (and tp!1111871 tp!1111875))))

(declare-fun b!3646146 () Bool)

(declare-fun e!2257227 () Bool)

(declare-fun lt!1263498 () Rule!11296)

(assert (=> b!3646146 (= e!2257227 (= (rule!8540 (_1!22288 lt!1263495)) lt!1263498))))

(declare-fun b!3646147 () Bool)

(declare-fun res!1478648 () Bool)

(declare-fun e!2257223 () Bool)

(assert (=> b!3646147 (=> res!1478648 e!2257223)))

(declare-fun sepAndNonSepRulesDisjointChars!1916 (List!38561 List!38561) Bool)

(assert (=> b!3646147 (= res!1478648 (not (sepAndNonSepRulesDisjointChars!1916 rules!3307 rules!3307)))))

(declare-fun b!3646148 () Bool)

(declare-fun e!2257221 () Bool)

(declare-fun e!2257215 () Bool)

(assert (=> b!3646148 (= e!2257221 (not e!2257215))))

(declare-fun res!1478645 () Bool)

(assert (=> b!3646148 (=> res!1478645 e!2257215)))

(declare-fun rule!403 () Rule!11296)

(declare-fun matchR!5076 (Regex!10507 List!38560) Bool)

(assert (=> b!3646148 (= res!1478645 (not (matchR!5076 (regex!5748 rule!403) lt!1263485)))))

(declare-fun ruleValid!2012 (LexerInterface!5337 Rule!11296) Bool)

(assert (=> b!3646148 (ruleValid!2012 thiss!23823 rule!403)))

(declare-fun lt!1263480 () Unit!55326)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1166 (LexerInterface!5337 Rule!11296 List!38561) Unit!55326)

(assert (=> b!3646148 (= lt!1263480 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1166 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3646149 () Bool)

(declare-fun res!1478649 () Bool)

(assert (=> b!3646149 (=> (not res!1478649) (not e!2257234))))

(declare-fun rulesInvariant!4734 (LexerInterface!5337 List!38561) Bool)

(assert (=> b!3646149 (= res!1478649 (rulesInvariant!4734 thiss!23823 rules!3307))))

(declare-fun b!3646150 () Bool)

(declare-fun res!1478634 () Bool)

(assert (=> b!3646150 (=> (not res!1478634) (not e!2257234))))

(declare-fun anOtherTypeRule!33 () Rule!11296)

(assert (=> b!3646150 (= res!1478634 (not (= (isSeparator!5748 anOtherTypeRule!33) (isSeparator!5748 rule!403))))))

(declare-fun b!3646151 () Bool)

(assert (=> b!3646151 (= e!2257215 e!2257223)))

(declare-fun res!1478638 () Bool)

(assert (=> b!3646151 (=> res!1478638 e!2257223)))

(declare-fun lt!1263510 () List!38560)

(declare-fun lt!1263492 () C!21200)

(declare-fun contains!7561 (List!38560 C!21200) Bool)

(assert (=> b!3646151 (= res!1478638 (contains!7561 lt!1263510 lt!1263492))))

(declare-fun suffix!1395 () List!38560)

(declare-fun head!7756 (List!38560) C!21200)

(assert (=> b!3646151 (= lt!1263492 (head!7756 suffix!1395))))

(declare-fun usedCharacters!960 (Regex!10507) List!38560)

(assert (=> b!3646151 (= lt!1263510 (usedCharacters!960 (regex!5748 rule!403)))))

(declare-fun res!1478635 () Bool)

(assert (=> start!340790 (=> (not res!1478635) (not e!2257234))))

(get-info :version)

(assert (=> start!340790 (= res!1478635 ((_ is Lexer!5335) thiss!23823))))

(assert (=> start!340790 e!2257234))

(assert (=> start!340790 e!2257225))

(declare-fun e!2257233 () Bool)

(assert (=> start!340790 e!2257233))

(assert (=> start!340790 true))

(declare-fun e!2257235 () Bool)

(declare-fun inv!51878 (Token!10862) Bool)

(assert (=> start!340790 (and (inv!51878 token!511) e!2257235)))

(declare-fun e!2257219 () Bool)

(assert (=> start!340790 e!2257219))

(declare-fun e!2257239 () Bool)

(assert (=> start!340790 e!2257239))

(declare-fun b!3646152 () Bool)

(declare-fun tp!1111877 () Bool)

(declare-fun inv!51875 (String!43224) Bool)

(declare-fun inv!51879 (TokenValueInjection!11384) Bool)

(assert (=> b!3646152 (= e!2257238 (and tp!1111877 (inv!51875 (tag!6506 (h!43857 rules!3307))) (inv!51879 (transformation!5748 (h!43857 rules!3307))) e!2257216))))

(declare-fun b!3646153 () Bool)

(declare-fun e!2257240 () Unit!55326)

(assert (=> b!3646153 (= e!2257217 e!2257240)))

(declare-fun c!630285 () Bool)

(assert (=> b!3646153 (= c!630285 (not (isSeparator!5748 (rule!8540 (_1!22288 lt!1263495)))))))

(declare-fun b!3646154 () Bool)

(declare-fun e!2257237 () Bool)

(declare-fun tp!1111882 () Bool)

(declare-fun inv!21 (TokenValue!5978) Bool)

(assert (=> b!3646154 (= e!2257235 (and (inv!21 (value!184278 token!511)) e!2257237 tp!1111882))))

(declare-fun b!3646155 () Bool)

(declare-fun res!1478642 () Bool)

(assert (=> b!3646155 (=> (not res!1478642) (not e!2257221))))

(declare-fun lt!1263490 () tuple2!38308)

(declare-fun isEmpty!22768 (List!38560) Bool)

(assert (=> b!3646155 (= res!1478642 (isEmpty!22768 (_2!22288 lt!1263490)))))

(declare-fun b!3646156 () Bool)

(declare-fun res!1478644 () Bool)

(assert (=> b!3646156 (=> (not res!1478644) (not e!2257234))))

(declare-fun isEmpty!22769 (List!38561) Bool)

(assert (=> b!3646156 (= res!1478644 (not (isEmpty!22769 rules!3307)))))

(declare-fun e!2257228 () Bool)

(assert (=> b!3646157 (= e!2257228 (and tp!1111878 tp!1111881))))

(declare-fun b!3646158 () Bool)

(declare-fun Unit!55328 () Unit!55326)

(assert (=> b!3646158 (= e!2257222 Unit!55328)))

(declare-fun b!3646159 () Bool)

(declare-fun res!1478646 () Bool)

(assert (=> b!3646159 (=> (not res!1478646) (not e!2257234))))

(declare-fun contains!7562 (List!38561 Rule!11296) Bool)

(assert (=> b!3646159 (= res!1478646 (contains!7562 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3646160 () Bool)

(declare-fun e!2257218 () Bool)

(declare-fun e!2257226 () Bool)

(assert (=> b!3646160 (= e!2257218 e!2257226)))

(declare-fun res!1478637 () Bool)

(assert (=> b!3646160 (=> res!1478637 e!2257226)))

(declare-fun lt!1263504 () Option!8124)

(declare-fun lt!1263513 () List!38560)

(declare-fun lt!1263507 () BalanceConc!23096)

(declare-fun apply!9250 (TokenValueInjection!11384 BalanceConc!23096) TokenValue!5978)

(declare-fun size!29342 (BalanceConc!23096) Int)

(assert (=> b!3646160 (= res!1478637 (not (= lt!1263504 (Some!8123 (tuple2!38309 (Token!10863 (apply!9250 (transformation!5748 (rule!8540 (_1!22288 lt!1263495))) lt!1263507) (rule!8540 (_1!22288 lt!1263495)) (size!29342 lt!1263507) lt!1263513) (_2!22288 lt!1263495))))))))

(declare-fun lt!1263488 () Unit!55326)

(declare-fun lemmaCharactersSize!793 (Token!10862) Unit!55326)

(assert (=> b!3646160 (= lt!1263488 (lemmaCharactersSize!793 (_1!22288 lt!1263495)))))

(declare-fun lt!1263484 () Unit!55326)

(declare-fun lemmaEqSameImage!931 (TokenValueInjection!11384 BalanceConc!23096 BalanceConc!23096) Unit!55326)

(declare-fun seqFromList!4297 (List!38560) BalanceConc!23096)

(assert (=> b!3646160 (= lt!1263484 (lemmaEqSameImage!931 (transformation!5748 (rule!8540 (_1!22288 lt!1263495))) lt!1263507 (seqFromList!4297 (originalCharacters!6462 (_1!22288 lt!1263495)))))))

(declare-fun lt!1263511 () Unit!55326)

(declare-fun lemmaSemiInverse!1497 (TokenValueInjection!11384 BalanceConc!23096) Unit!55326)

(assert (=> b!3646160 (= lt!1263511 (lemmaSemiInverse!1497 (transformation!5748 (rule!8540 (_1!22288 lt!1263495))) lt!1263507))))

(declare-fun b!3646161 () Bool)

(declare-fun e!2257244 () Bool)

(assert (=> b!3646161 (= e!2257244 true)))

(declare-fun lt!1263481 () Int)

(assert (=> b!3646161 (= lt!1263481 (size!29342 lt!1263479))))

(declare-fun lt!1263509 () Unit!55326)

(assert (=> b!3646161 (= lt!1263509 e!2257217)))

(declare-fun c!630287 () Bool)

(assert (=> b!3646161 (= c!630287 (isSeparator!5748 rule!403))))

(declare-fun lt!1263500 () Unit!55326)

(declare-fun e!2257224 () Unit!55326)

(assert (=> b!3646161 (= lt!1263500 e!2257224)))

(declare-fun c!630284 () Bool)

(declare-fun lt!1263483 () C!21200)

(assert (=> b!3646161 (= c!630284 (not (contains!7561 lt!1263510 lt!1263483)))))

(assert (=> b!3646161 (= lt!1263483 (head!7756 lt!1263513))))

(declare-fun bm!263493 () Bool)

(declare-fun call!263498 () List!38560)

(assert (=> bm!263493 (= call!263498 (usedCharacters!960 (regex!5748 (rule!8540 (_1!22288 lt!1263495)))))))

(declare-fun b!3646162 () Bool)

(assert (=> b!3646162 false))

(declare-fun lt!1263494 () Unit!55326)

(declare-fun call!263499 () Unit!55326)

(assert (=> b!3646162 (= lt!1263494 call!263499)))

(declare-fun call!263500 () Bool)

(assert (=> b!3646162 (not call!263500)))

(declare-fun lt!1263489 () Unit!55326)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!276 (LexerInterface!5337 List!38561 List!38561 Rule!11296 Rule!11296 C!21200) Unit!55326)

(assert (=> b!3646162 (= lt!1263489 (lemmaSepRuleNotContainsCharContainedInANonSepRule!276 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8540 (_1!22288 lt!1263495)) lt!1263483))))

(declare-fun Unit!55329 () Unit!55326)

(assert (=> b!3646162 (= e!2257222 Unit!55329)))

(declare-fun b!3646163 () Bool)

(declare-fun res!1478633 () Bool)

(assert (=> b!3646163 (=> (not res!1478633) (not e!2257221))))

(assert (=> b!3646163 (= res!1478633 (= (rule!8540 token!511) rule!403))))

(declare-fun b!3646164 () Bool)

(declare-fun tp!1111879 () Bool)

(assert (=> b!3646164 (= e!2257239 (and tp!1111879 (inv!51875 (tag!6506 anOtherTypeRule!33)) (inv!51879 (transformation!5748 anOtherTypeRule!33)) e!2257241))))

(declare-fun tp!1111870 () Bool)

(declare-fun b!3646165 () Bool)

(declare-fun e!2257242 () Bool)

(assert (=> b!3646165 (= e!2257237 (and tp!1111870 (inv!51875 (tag!6506 (rule!8540 token!511))) (inv!51879 (transformation!5748 (rule!8540 token!511))) e!2257242))))

(declare-fun b!3646166 () Bool)

(declare-fun e!2257236 () Bool)

(assert (=> b!3646166 (= e!2257236 e!2257227)))

(declare-fun res!1478643 () Bool)

(assert (=> b!3646166 (=> (not res!1478643) (not e!2257227))))

(assert (=> b!3646166 (= res!1478643 (matchR!5076 (regex!5748 lt!1263498) (list!14238 (charsOf!3762 (_1!22288 lt!1263495)))))))

(declare-datatypes ((Option!8125 0))(
  ( (None!8124) (Some!8124 (v!37972 Rule!11296)) )
))
(declare-fun lt!1263482 () Option!8125)

(declare-fun get!12608 (Option!8125) Rule!11296)

(assert (=> b!3646166 (= lt!1263498 (get!12608 lt!1263482))))

(declare-fun b!3646167 () Bool)

(declare-fun Unit!55330 () Unit!55326)

(assert (=> b!3646167 (= e!2257224 Unit!55330)))

(declare-fun b!3646168 () Bool)

(assert (=> b!3646168 false))

(declare-fun lt!1263503 () Unit!55326)

(assert (=> b!3646168 (= lt!1263503 call!263499)))

(assert (=> b!3646168 (not call!263500)))

(declare-fun lt!1263496 () Unit!55326)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!394 (LexerInterface!5337 List!38561 List!38561 Rule!11296 Rule!11296 C!21200) Unit!55326)

(assert (=> b!3646168 (= lt!1263496 (lemmaNonSepRuleNotContainsCharContainedInASepRule!394 thiss!23823 rules!3307 rules!3307 (rule!8540 (_1!22288 lt!1263495)) rule!403 lt!1263483))))

(declare-fun Unit!55331 () Unit!55326)

(assert (=> b!3646168 (= e!2257240 Unit!55331)))

(declare-fun b!3646169 () Bool)

(assert (=> b!3646169 (= e!2257223 e!2257218)))

(declare-fun res!1478641 () Bool)

(assert (=> b!3646169 (=> res!1478641 e!2257218)))

(declare-fun lt!1263487 () List!38560)

(declare-fun isPrefix!3111 (List!38560 List!38560) Bool)

(assert (=> b!3646169 (= res!1478641 (not (isPrefix!3111 lt!1263513 lt!1263487)))))

(declare-fun ++!9564 (List!38560 List!38560) List!38560)

(assert (=> b!3646169 (isPrefix!3111 lt!1263513 (++!9564 lt!1263513 (_2!22288 lt!1263495)))))

(declare-fun lt!1263514 () Unit!55326)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2030 (List!38560 List!38560) Unit!55326)

(assert (=> b!3646169 (= lt!1263514 (lemmaConcatTwoListThenFirstIsPrefix!2030 lt!1263513 (_2!22288 lt!1263495)))))

(assert (=> b!3646169 (= lt!1263513 (list!14238 lt!1263507))))

(assert (=> b!3646169 (= lt!1263507 (charsOf!3762 (_1!22288 lt!1263495)))))

(assert (=> b!3646169 e!2257236))

(declare-fun res!1478631 () Bool)

(assert (=> b!3646169 (=> (not res!1478631) (not e!2257236))))

(declare-fun isDefined!6357 (Option!8125) Bool)

(assert (=> b!3646169 (= res!1478631 (isDefined!6357 lt!1263482))))

(declare-fun getRuleFromTag!1352 (LexerInterface!5337 List!38561 String!43224) Option!8125)

(assert (=> b!3646169 (= lt!1263482 (getRuleFromTag!1352 thiss!23823 rules!3307 (tag!6506 (rule!8540 (_1!22288 lt!1263495)))))))

(declare-fun lt!1263501 () Unit!55326)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1352 (LexerInterface!5337 List!38561 List!38560 Token!10862) Unit!55326)

(assert (=> b!3646169 (= lt!1263501 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1352 thiss!23823 rules!3307 lt!1263487 (_1!22288 lt!1263495)))))

(declare-fun get!12609 (Option!8124) tuple2!38308)

(assert (=> b!3646169 (= lt!1263495 (get!12609 lt!1263504))))

(declare-fun lt!1263505 () Unit!55326)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1015 (LexerInterface!5337 List!38561 List!38560 List!38560) Unit!55326)

(assert (=> b!3646169 (= lt!1263505 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1015 thiss!23823 rules!3307 lt!1263485 suffix!1395))))

(assert (=> b!3646169 (= lt!1263504 (maxPrefix!2871 thiss!23823 rules!3307 lt!1263487))))

(assert (=> b!3646169 (isPrefix!3111 lt!1263485 lt!1263487)))

(declare-fun lt!1263502 () Unit!55326)

(assert (=> b!3646169 (= lt!1263502 (lemmaConcatTwoListThenFirstIsPrefix!2030 lt!1263485 suffix!1395))))

(assert (=> b!3646169 (= lt!1263487 (++!9564 lt!1263485 suffix!1395))))

(declare-fun b!3646170 () Bool)

(declare-fun res!1478639 () Bool)

(assert (=> b!3646170 (=> res!1478639 e!2257215)))

(assert (=> b!3646170 (= res!1478639 (isEmpty!22768 suffix!1395))))

(declare-fun bm!263494 () Bool)

(assert (=> bm!263494 (= call!263500 (contains!7561 call!263498 lt!1263483))))

(declare-fun b!3646171 () Bool)

(declare-fun tp_is_empty!18097 () Bool)

(declare-fun tp!1111876 () Bool)

(assert (=> b!3646171 (= e!2257233 (and tp_is_empty!18097 tp!1111876))))

(declare-fun b!3646172 () Bool)

(declare-fun tp!1111883 () Bool)

(assert (=> b!3646172 (= e!2257219 (and tp!1111883 (inv!51875 (tag!6506 rule!403)) (inv!51879 (transformation!5748 rule!403)) e!2257228))))

(declare-fun b!3646173 () Bool)

(declare-fun res!1478636 () Bool)

(assert (=> b!3646173 (=> res!1478636 e!2257223)))

(assert (=> b!3646173 (= res!1478636 (not (contains!7561 (usedCharacters!960 (regex!5748 anOtherTypeRule!33)) lt!1263492)))))

(declare-fun bm!263495 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!696 (Regex!10507 List!38560 C!21200) Unit!55326)

(assert (=> bm!263495 (= call!263499 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!696 (regex!5748 (rule!8540 (_1!22288 lt!1263495))) lt!1263513 lt!1263483))))

(assert (=> b!3646174 (= e!2257242 (and tp!1111873 tp!1111872))))

(declare-fun b!3646175 () Bool)

(declare-fun Unit!55332 () Unit!55326)

(assert (=> b!3646175 (= e!2257224 Unit!55332)))

(declare-fun lt!1263491 () Unit!55326)

(assert (=> b!3646175 (= lt!1263491 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!696 (regex!5748 rule!403) lt!1263485 lt!1263483))))

(assert (=> b!3646175 false))

(declare-fun b!3646176 () Bool)

(declare-fun res!1478632 () Bool)

(assert (=> b!3646176 (=> res!1478632 e!2257218)))

(assert (=> b!3646176 (= res!1478632 (not (matchR!5076 (regex!5748 (rule!8540 (_1!22288 lt!1263495))) lt!1263513)))))

(declare-fun b!3646177 () Bool)

(declare-fun Unit!55333 () Unit!55326)

(assert (=> b!3646177 (= e!2257240 Unit!55333)))

(declare-fun b!3646178 () Bool)

(assert (=> b!3646178 (= e!2257226 e!2257244)))

(declare-fun res!1478640 () Bool)

(assert (=> b!3646178 (=> res!1478640 e!2257244)))

(declare-fun lt!1263506 () Option!8124)

(declare-fun lt!1263493 () List!38560)

(assert (=> b!3646178 (= res!1478640 (or (not (= lt!1263493 (_2!22288 lt!1263495))) (not (= lt!1263506 (Some!8123 (tuple2!38309 (_1!22288 lt!1263495) lt!1263493))))))))

(assert (=> b!3646178 (= (_2!22288 lt!1263495) lt!1263493)))

(declare-fun lt!1263486 () Unit!55326)

(declare-fun lemmaSamePrefixThenSameSuffix!1438 (List!38560 List!38560 List!38560 List!38560 List!38560) Unit!55326)

(assert (=> b!3646178 (= lt!1263486 (lemmaSamePrefixThenSameSuffix!1438 lt!1263513 (_2!22288 lt!1263495) lt!1263513 lt!1263493 lt!1263487))))

(declare-fun getSuffix!1664 (List!38560 List!38560) List!38560)

(assert (=> b!3646178 (= lt!1263493 (getSuffix!1664 lt!1263487 lt!1263513))))

(declare-fun lt!1263497 () Int)

(declare-fun lt!1263508 () TokenValue!5978)

(assert (=> b!3646178 (= lt!1263506 (Some!8123 (tuple2!38309 (Token!10863 lt!1263508 (rule!8540 (_1!22288 lt!1263495)) lt!1263497 lt!1263513) (_2!22288 lt!1263495))))))

(declare-fun maxPrefixOneRule!2009 (LexerInterface!5337 Rule!11296 List!38560) Option!8124)

(assert (=> b!3646178 (= lt!1263506 (maxPrefixOneRule!2009 thiss!23823 (rule!8540 (_1!22288 lt!1263495)) lt!1263487))))

(declare-fun size!29343 (List!38560) Int)

(assert (=> b!3646178 (= lt!1263497 (size!29343 lt!1263513))))

(assert (=> b!3646178 (= lt!1263508 (apply!9250 (transformation!5748 (rule!8540 (_1!22288 lt!1263495))) (seqFromList!4297 lt!1263513)))))

(declare-fun lt!1263512 () Unit!55326)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1065 (LexerInterface!5337 List!38561 List!38560 List!38560 List!38560 Rule!11296) Unit!55326)

(assert (=> b!3646178 (= lt!1263512 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1065 thiss!23823 rules!3307 lt!1263513 lt!1263487 (_2!22288 lt!1263495) (rule!8540 (_1!22288 lt!1263495))))))

(declare-fun b!3646179 () Bool)

(declare-fun res!1478651 () Bool)

(assert (=> b!3646179 (=> (not res!1478651) (not e!2257234))))

(assert (=> b!3646179 (= res!1478651 (contains!7562 rules!3307 rule!403))))

(declare-fun b!3646180 () Bool)

(assert (=> b!3646180 (= e!2257243 e!2257221)))

(declare-fun res!1478647 () Bool)

(assert (=> b!3646180 (=> (not res!1478647) (not e!2257221))))

(assert (=> b!3646180 (= res!1478647 (= (_1!22288 lt!1263490) token!511))))

(assert (=> b!3646180 (= lt!1263490 (get!12609 lt!1263499))))

(assert (= (and start!340790 res!1478635) b!3646156))

(assert (= (and b!3646156 res!1478644) b!3646149))

(assert (= (and b!3646149 res!1478649) b!3646179))

(assert (= (and b!3646179 res!1478651) b!3646159))

(assert (= (and b!3646159 res!1478646) b!3646150))

(assert (= (and b!3646150 res!1478634) b!3646142))

(assert (= (and b!3646142 res!1478650) b!3646180))

(assert (= (and b!3646180 res!1478647) b!3646155))

(assert (= (and b!3646155 res!1478642) b!3646163))

(assert (= (and b!3646163 res!1478633) b!3646148))

(assert (= (and b!3646148 (not res!1478645)) b!3646170))

(assert (= (and b!3646170 (not res!1478639)) b!3646151))

(assert (= (and b!3646151 (not res!1478638)) b!3646173))

(assert (= (and b!3646173 (not res!1478636)) b!3646147))

(assert (= (and b!3646147 (not res!1478648)) b!3646169))

(assert (= (and b!3646169 res!1478631) b!3646166))

(assert (= (and b!3646166 res!1478643) b!3646146))

(assert (= (and b!3646169 (not res!1478641)) b!3646176))

(assert (= (and b!3646176 (not res!1478632)) b!3646160))

(assert (= (and b!3646160 (not res!1478637)) b!3646178))

(assert (= (and b!3646178 (not res!1478640)) b!3646161))

(assert (= (and b!3646161 c!630284) b!3646175))

(assert (= (and b!3646161 (not c!630284)) b!3646167))

(assert (= (and b!3646161 c!630287) b!3646153))

(assert (= (and b!3646161 (not c!630287)) b!3646144))

(assert (= (and b!3646153 c!630285) b!3646168))

(assert (= (and b!3646153 (not c!630285)) b!3646177))

(assert (= (and b!3646144 c!630286) b!3646162))

(assert (= (and b!3646144 (not c!630286)) b!3646158))

(assert (= (or b!3646168 b!3646162) bm!263495))

(assert (= (or b!3646168 b!3646162) bm!263493))

(assert (= (or b!3646168 b!3646162) bm!263494))

(assert (= b!3646152 b!3646141))

(assert (= b!3646143 b!3646152))

(assert (= (and start!340790 ((_ is Cons!38437) rules!3307)) b!3646143))

(assert (= (and start!340790 ((_ is Cons!38436) suffix!1395)) b!3646171))

(assert (= b!3646165 b!3646174))

(assert (= b!3646154 b!3646165))

(assert (= start!340790 b!3646154))

(assert (= b!3646172 b!3646157))

(assert (= start!340790 b!3646172))

(assert (= b!3646164 b!3646145))

(assert (= start!340790 b!3646164))

(declare-fun m!4149915 () Bool)

(assert (=> b!3646169 m!4149915))

(declare-fun m!4149917 () Bool)

(assert (=> b!3646169 m!4149917))

(declare-fun m!4149919 () Bool)

(assert (=> b!3646169 m!4149919))

(declare-fun m!4149921 () Bool)

(assert (=> b!3646169 m!4149921))

(declare-fun m!4149923 () Bool)

(assert (=> b!3646169 m!4149923))

(declare-fun m!4149925 () Bool)

(assert (=> b!3646169 m!4149925))

(declare-fun m!4149927 () Bool)

(assert (=> b!3646169 m!4149927))

(declare-fun m!4149929 () Bool)

(assert (=> b!3646169 m!4149929))

(declare-fun m!4149931 () Bool)

(assert (=> b!3646169 m!4149931))

(declare-fun m!4149933 () Bool)

(assert (=> b!3646169 m!4149933))

(declare-fun m!4149935 () Bool)

(assert (=> b!3646169 m!4149935))

(declare-fun m!4149937 () Bool)

(assert (=> b!3646169 m!4149937))

(declare-fun m!4149939 () Bool)

(assert (=> b!3646169 m!4149939))

(assert (=> b!3646169 m!4149921))

(declare-fun m!4149941 () Bool)

(assert (=> b!3646169 m!4149941))

(declare-fun m!4149943 () Bool)

(assert (=> b!3646169 m!4149943))

(declare-fun m!4149945 () Bool)

(assert (=> b!3646178 m!4149945))

(declare-fun m!4149947 () Bool)

(assert (=> b!3646178 m!4149947))

(declare-fun m!4149949 () Bool)

(assert (=> b!3646178 m!4149949))

(declare-fun m!4149951 () Bool)

(assert (=> b!3646178 m!4149951))

(declare-fun m!4149953 () Bool)

(assert (=> b!3646178 m!4149953))

(assert (=> b!3646178 m!4149951))

(declare-fun m!4149955 () Bool)

(assert (=> b!3646178 m!4149955))

(declare-fun m!4149957 () Bool)

(assert (=> b!3646178 m!4149957))

(declare-fun m!4149959 () Bool)

(assert (=> start!340790 m!4149959))

(declare-fun m!4149961 () Bool)

(assert (=> b!3646175 m!4149961))

(declare-fun m!4149963 () Bool)

(assert (=> b!3646179 m!4149963))

(declare-fun m!4149965 () Bool)

(assert (=> b!3646154 m!4149965))

(declare-fun m!4149967 () Bool)

(assert (=> b!3646161 m!4149967))

(declare-fun m!4149969 () Bool)

(assert (=> b!3646161 m!4149969))

(declare-fun m!4149971 () Bool)

(assert (=> b!3646161 m!4149971))

(declare-fun m!4149973 () Bool)

(assert (=> b!3646148 m!4149973))

(declare-fun m!4149975 () Bool)

(assert (=> b!3646148 m!4149975))

(declare-fun m!4149977 () Bool)

(assert (=> b!3646148 m!4149977))

(declare-fun m!4149979 () Bool)

(assert (=> bm!263495 m!4149979))

(declare-fun m!4149981 () Bool)

(assert (=> b!3646160 m!4149981))

(declare-fun m!4149983 () Bool)

(assert (=> b!3646160 m!4149983))

(declare-fun m!4149985 () Bool)

(assert (=> b!3646160 m!4149985))

(declare-fun m!4149987 () Bool)

(assert (=> b!3646160 m!4149987))

(assert (=> b!3646160 m!4149987))

(declare-fun m!4149989 () Bool)

(assert (=> b!3646160 m!4149989))

(declare-fun m!4149991 () Bool)

(assert (=> b!3646160 m!4149991))

(declare-fun m!4149993 () Bool)

(assert (=> b!3646159 m!4149993))

(assert (=> b!3646166 m!4149933))

(assert (=> b!3646166 m!4149933))

(declare-fun m!4149995 () Bool)

(assert (=> b!3646166 m!4149995))

(assert (=> b!3646166 m!4149995))

(declare-fun m!4149997 () Bool)

(assert (=> b!3646166 m!4149997))

(declare-fun m!4149999 () Bool)

(assert (=> b!3646166 m!4149999))

(declare-fun m!4150001 () Bool)

(assert (=> b!3646151 m!4150001))

(declare-fun m!4150003 () Bool)

(assert (=> b!3646151 m!4150003))

(declare-fun m!4150005 () Bool)

(assert (=> b!3646151 m!4150005))

(declare-fun m!4150007 () Bool)

(assert (=> b!3646162 m!4150007))

(declare-fun m!4150009 () Bool)

(assert (=> b!3646152 m!4150009))

(declare-fun m!4150011 () Bool)

(assert (=> b!3646152 m!4150011))

(declare-fun m!4150013 () Bool)

(assert (=> b!3646172 m!4150013))

(declare-fun m!4150015 () Bool)

(assert (=> b!3646172 m!4150015))

(declare-fun m!4150017 () Bool)

(assert (=> b!3646173 m!4150017))

(assert (=> b!3646173 m!4150017))

(declare-fun m!4150019 () Bool)

(assert (=> b!3646173 m!4150019))

(declare-fun m!4150021 () Bool)

(assert (=> b!3646155 m!4150021))

(declare-fun m!4150023 () Bool)

(assert (=> b!3646176 m!4150023))

(declare-fun m!4150025 () Bool)

(assert (=> bm!263494 m!4150025))

(declare-fun m!4150027 () Bool)

(assert (=> bm!263493 m!4150027))

(declare-fun m!4150029 () Bool)

(assert (=> b!3646147 m!4150029))

(declare-fun m!4150031 () Bool)

(assert (=> b!3646149 m!4150031))

(declare-fun m!4150033 () Bool)

(assert (=> b!3646142 m!4150033))

(declare-fun m!4150035 () Bool)

(assert (=> b!3646142 m!4150035))

(declare-fun m!4150037 () Bool)

(assert (=> b!3646142 m!4150037))

(declare-fun m!4150039 () Bool)

(assert (=> b!3646142 m!4150039))

(declare-fun m!4150041 () Bool)

(assert (=> b!3646156 m!4150041))

(declare-fun m!4150043 () Bool)

(assert (=> b!3646180 m!4150043))

(declare-fun m!4150045 () Bool)

(assert (=> b!3646164 m!4150045))

(declare-fun m!4150047 () Bool)

(assert (=> b!3646164 m!4150047))

(declare-fun m!4150049 () Bool)

(assert (=> b!3646170 m!4150049))

(declare-fun m!4150051 () Bool)

(assert (=> b!3646168 m!4150051))

(declare-fun m!4150053 () Bool)

(assert (=> b!3646165 m!4150053))

(declare-fun m!4150055 () Bool)

(assert (=> b!3646165 m!4150055))

(check-sat (not bm!263493) b_and!269289 b_and!269283 (not b!3646148) (not b_next!96433) b_and!269287 (not b_next!96447) (not b!3646168) (not b!3646162) b_and!269277 (not b!3646179) (not b!3646172) (not b_next!96441) (not b!3646166) (not b!3646171) (not b_next!96445) tp_is_empty!18097 (not b!3646160) (not b!3646151) (not b!3646175) (not b!3646149) (not b!3646155) (not b!3646173) (not b!3646152) (not b!3646143) (not b!3646169) b_and!269281 (not b!3646180) (not b!3646178) (not bm!263495) (not b_next!96443) (not b!3646161) (not b_next!96437) (not b!3646170) (not b!3646165) (not b!3646142) (not b!3646176) (not bm!263494) b_and!269279 b_and!269275 (not b_next!96439) (not start!340790) b_and!269285 (not b_next!96435) (not b!3646154) (not b!3646164) (not b!3646156) (not b!3646159) (not b!3646147))
(check-sat (not b_next!96445) b_and!269289 b_and!269283 b_and!269281 (not b_next!96433) b_and!269287 (not b_next!96447) b_and!269277 (not b_next!96435) (not b_next!96441) (not b_next!96443) (not b_next!96437) b_and!269279 b_and!269275 (not b_next!96439) b_and!269285)

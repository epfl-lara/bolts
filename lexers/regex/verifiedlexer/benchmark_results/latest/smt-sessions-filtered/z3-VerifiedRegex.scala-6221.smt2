; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!301282 () Bool)

(assert start!301282)

(declare-fun b!3208853 () Bool)

(declare-fun b_free!85377 () Bool)

(declare-fun b_next!86081 () Bool)

(assert (=> b!3208853 (= b_free!85377 (not b_next!86081))))

(declare-fun tp!1013165 () Bool)

(declare-fun b_and!213687 () Bool)

(assert (=> b!3208853 (= tp!1013165 b_and!213687)))

(declare-fun b_free!85379 () Bool)

(declare-fun b_next!86083 () Bool)

(assert (=> b!3208853 (= b_free!85379 (not b_next!86083))))

(declare-fun tp!1013167 () Bool)

(declare-fun b_and!213689 () Bool)

(assert (=> b!3208853 (= tp!1013167 b_and!213689)))

(declare-fun b!3208891 () Bool)

(declare-fun b_free!85381 () Bool)

(declare-fun b_next!86085 () Bool)

(assert (=> b!3208891 (= b_free!85381 (not b_next!86085))))

(declare-fun tp!1013173 () Bool)

(declare-fun b_and!213691 () Bool)

(assert (=> b!3208891 (= tp!1013173 b_and!213691)))

(declare-fun b_free!85383 () Bool)

(declare-fun b_next!86087 () Bool)

(assert (=> b!3208891 (= b_free!85383 (not b_next!86087))))

(declare-fun tp!1013170 () Bool)

(declare-fun b_and!213693 () Bool)

(assert (=> b!3208891 (= tp!1013170 b_and!213693)))

(declare-fun b!3208864 () Bool)

(declare-fun b_free!85385 () Bool)

(declare-fun b_next!86089 () Bool)

(assert (=> b!3208864 (= b_free!85385 (not b_next!86089))))

(declare-fun tp!1013172 () Bool)

(declare-fun b_and!213695 () Bool)

(assert (=> b!3208864 (= tp!1013172 b_and!213695)))

(declare-fun b_free!85387 () Bool)

(declare-fun b_next!86091 () Bool)

(assert (=> b!3208864 (= b_free!85387 (not b_next!86091))))

(declare-fun tp!1013169 () Bool)

(declare-fun b_and!213697 () Bool)

(assert (=> b!3208864 (= tp!1013169 b_and!213697)))

(declare-fun bs!541517 () Bool)

(declare-fun b!3208869 () Bool)

(declare-fun b!3208848 () Bool)

(assert (= bs!541517 (and b!3208869 b!3208848)))

(declare-fun lambda!117459 () Int)

(declare-fun lambda!117458 () Int)

(assert (=> bs!541517 (not (= lambda!117459 lambda!117458))))

(declare-fun b!3208902 () Bool)

(declare-fun e!2000900 () Bool)

(assert (=> b!3208902 (= e!2000900 true)))

(declare-fun b!3208901 () Bool)

(declare-fun e!2000899 () Bool)

(assert (=> b!3208901 (= e!2000899 e!2000900)))

(declare-fun b!3208900 () Bool)

(declare-fun e!2000898 () Bool)

(assert (=> b!3208900 (= e!2000898 e!2000899)))

(assert (=> b!3208869 e!2000898))

(assert (= b!3208901 b!3208902))

(assert (= b!3208900 b!3208901))

(declare-datatypes ((C!20148 0))(
  ( (C!20149 (val!12122 Int)) )
))
(declare-datatypes ((Regex!9981 0))(
  ( (ElementMatch!9981 (c!538916 C!20148)) (Concat!15433 (regOne!20474 Regex!9981) (regTwo!20474 Regex!9981)) (EmptyExpr!9981) (Star!9981 (reg!10310 Regex!9981)) (EmptyLang!9981) (Union!9981 (regOne!20475 Regex!9981) (regTwo!20475 Regex!9981)) )
))
(declare-datatypes ((List!36292 0))(
  ( (Nil!36168) (Cons!36168 (h!41588 (_ BitVec 16)) (t!238491 List!36292)) )
))
(declare-datatypes ((TokenValue!5452 0))(
  ( (FloatLiteralValue!10904 (text!38609 List!36292)) (TokenValueExt!5451 (__x!23121 Int)) (Broken!27260 (value!169261 List!36292)) (Object!5575) (End!5452) (Def!5452) (Underscore!5452) (Match!5452) (Else!5452) (Error!5452) (Case!5452) (If!5452) (Extends!5452) (Abstract!5452) (Class!5452) (Val!5452) (DelimiterValue!10904 (del!5512 List!36292)) (KeywordValue!5458 (value!169262 List!36292)) (CommentValue!10904 (value!169263 List!36292)) (WhitespaceValue!10904 (value!169264 List!36292)) (IndentationValue!5452 (value!169265 List!36292)) (String!40593) (Int32!5452) (Broken!27261 (value!169266 List!36292)) (Boolean!5453) (Unit!50631) (OperatorValue!5455 (op!5512 List!36292)) (IdentifierValue!10904 (value!169267 List!36292)) (IdentifierValue!10905 (value!169268 List!36292)) (WhitespaceValue!10905 (value!169269 List!36292)) (True!10904) (False!10904) (Broken!27262 (value!169270 List!36292)) (Broken!27263 (value!169271 List!36292)) (True!10905) (RightBrace!5452) (RightBracket!5452) (Colon!5452) (Null!5452) (Comma!5452) (LeftBracket!5452) (False!10905) (LeftBrace!5452) (ImaginaryLiteralValue!5452 (text!38610 List!36292)) (StringLiteralValue!16356 (value!169272 List!36292)) (EOFValue!5452 (value!169273 List!36292)) (IdentValue!5452 (value!169274 List!36292)) (DelimiterValue!10905 (value!169275 List!36292)) (DedentValue!5452 (value!169276 List!36292)) (NewLineValue!5452 (value!169277 List!36292)) (IntegerValue!16356 (value!169278 (_ BitVec 32)) (text!38611 List!36292)) (IntegerValue!16357 (value!169279 Int) (text!38612 List!36292)) (Times!5452) (Or!5452) (Equal!5452) (Minus!5452) (Broken!27264 (value!169280 List!36292)) (And!5452) (Div!5452) (LessEqual!5452) (Mod!5452) (Concat!15434) (Not!5452) (Plus!5452) (SpaceValue!5452 (value!169281 List!36292)) (IntegerValue!16358 (value!169282 Int) (text!38613 List!36292)) (StringLiteralValue!16357 (text!38614 List!36292)) (FloatLiteralValue!10905 (text!38615 List!36292)) (BytesLiteralValue!5452 (value!169283 List!36292)) (CommentValue!10905 (value!169284 List!36292)) (StringLiteralValue!16358 (value!169285 List!36292)) (ErrorTokenValue!5452 (msg!5513 List!36292)) )
))
(declare-datatypes ((List!36293 0))(
  ( (Nil!36169) (Cons!36169 (h!41589 C!20148) (t!238492 List!36293)) )
))
(declare-datatypes ((IArray!21643 0))(
  ( (IArray!21644 (innerList!10879 List!36293)) )
))
(declare-datatypes ((Conc!10819 0))(
  ( (Node!10819 (left!28124 Conc!10819) (right!28454 Conc!10819) (csize!21868 Int) (cheight!11030 Int)) (Leaf!17041 (xs!13937 IArray!21643) (csize!21869 Int)) (Empty!10819) )
))
(declare-datatypes ((BalanceConc!21252 0))(
  ( (BalanceConc!21253 (c!538917 Conc!10819)) )
))
(declare-datatypes ((String!40594 0))(
  ( (String!40595 (value!169286 String)) )
))
(declare-datatypes ((TokenValueInjection!10332 0))(
  ( (TokenValueInjection!10333 (toValue!7306 Int) (toChars!7165 Int)) )
))
(declare-datatypes ((Rule!10244 0))(
  ( (Rule!10245 (regex!5222 Regex!9981) (tag!5748 String!40594) (isSeparator!5222 Bool) (transformation!5222 TokenValueInjection!10332)) )
))
(declare-datatypes ((List!36294 0))(
  ( (Nil!36170) (Cons!36170 (h!41590 Rule!10244) (t!238493 List!36294)) )
))
(declare-fun rules!2135 () List!36294)

(get-info :version)

(assert (= (and b!3208869 ((_ is Cons!36170) rules!2135)) b!3208900))

(declare-fun order!18461 () Int)

(declare-fun order!18463 () Int)

(declare-fun dynLambda!14601 (Int Int) Int)

(declare-fun dynLambda!14602 (Int Int) Int)

(assert (=> b!3208902 (< (dynLambda!14601 order!18461 (toValue!7306 (transformation!5222 (h!41590 rules!2135)))) (dynLambda!14602 order!18463 lambda!117459))))

(declare-fun order!18465 () Int)

(declare-fun dynLambda!14603 (Int Int) Int)

(assert (=> b!3208902 (< (dynLambda!14603 order!18465 (toChars!7165 (transformation!5222 (h!41590 rules!2135)))) (dynLambda!14602 order!18463 lambda!117459))))

(assert (=> b!3208869 true))

(declare-fun res!1306123 () Bool)

(declare-fun e!2000882 () Bool)

(assert (=> b!3208848 (=> (not res!1306123) (not e!2000882))))

(declare-datatypes ((Token!9810 0))(
  ( (Token!9811 (value!169287 TokenValue!5452) (rule!7662 Rule!10244) (size!27253 Int) (originalCharacters!5936 List!36293)) )
))
(declare-datatypes ((List!36295 0))(
  ( (Nil!36171) (Cons!36171 (h!41591 Token!9810) (t!238494 List!36295)) )
))
(declare-fun tokens!494 () List!36295)

(declare-fun forall!7386 (List!36295 Int) Bool)

(assert (=> b!3208848 (= res!1306123 (forall!7386 tokens!494 lambda!117458))))

(declare-fun b!3208849 () Bool)

(declare-fun e!2000879 () Bool)

(declare-fun e!2000872 () Bool)

(assert (=> b!3208849 (= e!2000879 e!2000872)))

(declare-fun res!1306122 () Bool)

(assert (=> b!3208849 (=> res!1306122 e!2000872)))

(declare-fun lt!1084402 () List!36293)

(declare-fun lt!1084420 () List!36293)

(declare-fun lt!1084431 () List!36293)

(assert (=> b!3208849 (= res!1306122 (or (not (= lt!1084431 lt!1084420)) (not (= lt!1084402 lt!1084420))))))

(declare-fun list!12863 (BalanceConc!21252) List!36293)

(declare-fun charsOf!3238 (Token!9810) BalanceConc!21252)

(assert (=> b!3208849 (= lt!1084420 (list!12863 (charsOf!3238 (h!41591 tokens!494))))))

(declare-fun e!2000888 () Bool)

(declare-fun b!3208850 () Bool)

(declare-fun tp!1013162 () Bool)

(declare-fun e!2000859 () Bool)

(declare-fun inv!49025 (String!40594) Bool)

(declare-fun inv!49028 (TokenValueInjection!10332) Bool)

(assert (=> b!3208850 (= e!2000888 (and tp!1013162 (inv!49025 (tag!5748 (h!41590 rules!2135))) (inv!49028 (transformation!5222 (h!41590 rules!2135))) e!2000859))))

(declare-fun b!3208851 () Bool)

(declare-fun e!2000862 () Bool)

(declare-fun e!2000883 () Bool)

(assert (=> b!3208851 (= e!2000862 e!2000883)))

(declare-fun res!1306117 () Bool)

(assert (=> b!3208851 (=> (not res!1306117) (not e!2000883))))

(declare-fun lt!1084413 () Rule!10244)

(declare-fun matchR!4615 (Regex!9981 List!36293) Bool)

(assert (=> b!3208851 (= res!1306117 (matchR!4615 (regex!5222 lt!1084413) lt!1084420))))

(declare-datatypes ((Option!7143 0))(
  ( (None!7142) (Some!7142 (v!35692 Rule!10244)) )
))
(declare-fun lt!1084416 () Option!7143)

(declare-fun get!11516 (Option!7143) Rule!10244)

(assert (=> b!3208851 (= lt!1084413 (get!11516 lt!1084416))))

(declare-fun b!3208852 () Bool)

(declare-fun res!1306115 () Bool)

(assert (=> b!3208852 (=> (not res!1306115) (not e!2000882))))

(declare-fun separatorToken!241 () Token!9810)

(assert (=> b!3208852 (= res!1306115 (isSeparator!5222 (rule!7662 separatorToken!241)))))

(assert (=> b!3208853 (= e!2000859 (and tp!1013165 tp!1013167))))

(declare-fun b!3208854 () Bool)

(declare-fun e!2000885 () Bool)

(declare-fun tp!1013164 () Bool)

(assert (=> b!3208854 (= e!2000885 (and e!2000888 tp!1013164))))

(declare-fun b!3208855 () Bool)

(declare-fun e!2000867 () Bool)

(declare-fun lt!1084408 () Rule!10244)

(assert (=> b!3208855 (= e!2000867 (= (rule!7662 (h!41591 (t!238494 tokens!494))) lt!1084408))))

(declare-fun b!3208856 () Bool)

(declare-fun e!2000868 () Bool)

(declare-datatypes ((IArray!21645 0))(
  ( (IArray!21646 (innerList!10880 List!36295)) )
))
(declare-datatypes ((Conc!10820 0))(
  ( (Node!10820 (left!28125 Conc!10820) (right!28455 Conc!10820) (csize!21870 Int) (cheight!11031 Int)) (Leaf!17042 (xs!13938 IArray!21645) (csize!21871 Int)) (Empty!10820) )
))
(declare-datatypes ((BalanceConc!21254 0))(
  ( (BalanceConc!21255 (c!538918 Conc!10820)) )
))
(declare-datatypes ((tuple2!35566 0))(
  ( (tuple2!35567 (_1!20917 BalanceConc!21254) (_2!20917 BalanceConc!21252)) )
))
(declare-fun lt!1084412 () tuple2!35566)

(declare-fun isEmpty!20254 (BalanceConc!21252) Bool)

(assert (=> b!3208856 (= e!2000868 (not (isEmpty!20254 (_2!20917 lt!1084412))))))

(declare-fun b!3208857 () Bool)

(declare-datatypes ((Unit!50632 0))(
  ( (Unit!50633) )
))
(declare-fun e!2000866 () Unit!50632)

(declare-fun Unit!50634 () Unit!50632)

(assert (=> b!3208857 (= e!2000866 Unit!50634)))

(declare-fun b!3208858 () Bool)

(declare-fun e!2000880 () Bool)

(assert (=> b!3208858 (= e!2000880 false)))

(declare-fun b!3208859 () Bool)

(declare-fun res!1306127 () Bool)

(assert (=> b!3208859 (=> (not res!1306127) (not e!2000882))))

(declare-fun isEmpty!20255 (List!36294) Bool)

(assert (=> b!3208859 (= res!1306127 (not (isEmpty!20255 rules!2135)))))

(declare-fun b!3208860 () Bool)

(declare-fun e!2000891 () Bool)

(declare-fun lt!1084393 () Rule!10244)

(assert (=> b!3208860 (= e!2000891 (= (rule!7662 separatorToken!241) lt!1084393))))

(declare-fun b!3208861 () Bool)

(declare-fun Unit!50635 () Unit!50632)

(assert (=> b!3208861 (= e!2000866 Unit!50635)))

(declare-fun lt!1084399 () C!20148)

(declare-fun lt!1084391 () Unit!50632)

(declare-fun lt!1084429 () List!36293)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!386 (Regex!9981 List!36293 C!20148) Unit!50632)

(assert (=> b!3208861 (= lt!1084391 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!386 (regex!5222 (rule!7662 separatorToken!241)) lt!1084429 lt!1084399))))

(declare-fun res!1306129 () Bool)

(assert (=> b!3208861 (= res!1306129 (not (matchR!4615 (regex!5222 (rule!7662 separatorToken!241)) lt!1084429)))))

(assert (=> b!3208861 (=> (not res!1306129) (not e!2000880))))

(assert (=> b!3208861 e!2000880))

(declare-fun b!3208862 () Bool)

(assert (=> b!3208862 (= e!2000883 (= (rule!7662 (h!41591 tokens!494)) lt!1084413))))

(declare-fun b!3208863 () Bool)

(declare-fun res!1306133 () Bool)

(assert (=> b!3208863 (=> (not res!1306133) (not e!2000882))))

(declare-fun sepAndNonSepRulesDisjointChars!1416 (List!36294 List!36294) Bool)

(assert (=> b!3208863 (= res!1306133 (sepAndNonSepRulesDisjointChars!1416 rules!2135 rules!2135))))

(declare-fun e!2000873 () Bool)

(assert (=> b!3208864 (= e!2000873 (and tp!1013172 tp!1013169))))

(declare-fun b!3208865 () Bool)

(declare-fun res!1306132 () Bool)

(assert (=> b!3208865 (=> (not res!1306132) (not e!2000882))))

(declare-datatypes ((LexerInterface!4811 0))(
  ( (LexerInterfaceExt!4808 (__x!23122 Int)) (Lexer!4809) )
))
(declare-fun thiss!18206 () LexerInterface!4811)

(declare-fun rulesInvariant!4208 (LexerInterface!4811 List!36294) Bool)

(assert (=> b!3208865 (= res!1306132 (rulesInvariant!4208 thiss!18206 rules!2135))))

(declare-fun b!3208866 () Bool)

(declare-fun e!2000890 () Bool)

(declare-fun e!2000878 () Bool)

(assert (=> b!3208866 (= e!2000890 e!2000878)))

(declare-fun res!1306108 () Bool)

(assert (=> b!3208866 (=> res!1306108 e!2000878)))

(declare-fun lt!1084409 () BalanceConc!21252)

(declare-fun lt!1084419 () List!36293)

(declare-datatypes ((tuple2!35568 0))(
  ( (tuple2!35569 (_1!20918 Token!9810) (_2!20918 List!36293)) )
))
(declare-datatypes ((Option!7144 0))(
  ( (None!7143) (Some!7143 (v!35693 tuple2!35568)) )
))
(declare-fun maxPrefix!2453 (LexerInterface!4811 List!36294 List!36293) Option!7144)

(declare-fun apply!8193 (TokenValueInjection!10332 BalanceConc!21252) TokenValue!5452)

(declare-fun size!27254 (List!36293) Int)

(assert (=> b!3208866 (= res!1306108 (not (= (maxPrefix!2453 thiss!18206 rules!2135 lt!1084419) (Some!7143 (tuple2!35569 (Token!9811 (apply!8193 (transformation!5222 (rule!7662 (h!41591 (t!238494 tokens!494)))) lt!1084409) (rule!7662 (h!41591 (t!238494 tokens!494))) (size!27254 lt!1084419) lt!1084419) Nil!36169)))))))

(declare-fun lt!1084401 () Unit!50632)

(declare-fun lemmaSemiInverse!1175 (TokenValueInjection!10332 BalanceConc!21252) Unit!50632)

(assert (=> b!3208866 (= lt!1084401 (lemmaSemiInverse!1175 (transformation!5222 (rule!7662 (h!41591 (t!238494 tokens!494)))) lt!1084409))))

(declare-fun seqFromList!3515 (List!36293) BalanceConc!21252)

(assert (=> b!3208866 (= lt!1084409 (seqFromList!3515 lt!1084419))))

(declare-fun res!1306104 () Bool)

(assert (=> start!301282 (=> (not res!1306104) (not e!2000882))))

(assert (=> start!301282 (= res!1306104 ((_ is Lexer!4809) thiss!18206))))

(assert (=> start!301282 e!2000882))

(assert (=> start!301282 true))

(assert (=> start!301282 e!2000885))

(declare-fun e!2000887 () Bool)

(assert (=> start!301282 e!2000887))

(declare-fun e!2000860 () Bool)

(declare-fun inv!49029 (Token!9810) Bool)

(assert (=> start!301282 (and (inv!49029 separatorToken!241) e!2000860)))

(declare-fun b!3208867 () Bool)

(declare-fun e!2000869 () Bool)

(declare-fun e!2000865 () Bool)

(assert (=> b!3208867 (= e!2000869 e!2000865)))

(declare-fun res!1306128 () Bool)

(assert (=> b!3208867 (=> res!1306128 e!2000865)))

(declare-fun lt!1084400 () List!36293)

(declare-fun lt!1084417 () List!36293)

(assert (=> b!3208867 (= res!1306128 (not (= lt!1084400 lt!1084417)))))

(declare-fun lt!1084397 () List!36293)

(assert (=> b!3208867 (= lt!1084397 lt!1084417)))

(declare-fun lt!1084411 () List!36293)

(declare-fun ++!8678 (List!36293 List!36293) List!36293)

(assert (=> b!3208867 (= lt!1084417 (++!8678 lt!1084420 lt!1084411))))

(declare-fun lt!1084405 () Unit!50632)

(declare-fun lt!1084422 () List!36293)

(declare-fun lemmaConcatAssociativity!1744 (List!36293 List!36293 List!36293) Unit!50632)

(assert (=> b!3208867 (= lt!1084405 (lemmaConcatAssociativity!1744 lt!1084420 lt!1084429 lt!1084422))))

(declare-fun b!3208868 () Bool)

(assert (=> b!3208868 (= e!2000878 true)))

(declare-fun lt!1084394 () Bool)

(assert (=> b!3208868 (= lt!1084394 (matchR!4615 (regex!5222 (rule!7662 (h!41591 (t!238494 tokens!494)))) lt!1084419))))

(declare-fun ruleValid!1646 (LexerInterface!4811 Rule!10244) Bool)

(assert (=> b!3208868 (ruleValid!1646 thiss!18206 (rule!7662 (h!41591 (t!238494 tokens!494))))))

(declare-fun lt!1084432 () Unit!50632)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!932 (LexerInterface!4811 Rule!10244 List!36294) Unit!50632)

(assert (=> b!3208868 (= lt!1084432 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!932 thiss!18206 (rule!7662 (h!41591 (t!238494 tokens!494))) rules!2135))))

(assert (=> b!3208869 (= e!2000865 e!2000890)))

(declare-fun res!1306116 () Bool)

(assert (=> b!3208869 (=> res!1306116 e!2000890)))

(declare-fun contains!6458 (List!36294 Rule!10244) Bool)

(assert (=> b!3208869 (= res!1306116 (not (contains!6458 rules!2135 (rule!7662 (h!41591 (t!238494 tokens!494))))))))

(declare-fun e!2000886 () Bool)

(assert (=> b!3208869 e!2000886))

(declare-fun res!1306111 () Bool)

(assert (=> b!3208869 (=> (not res!1306111) (not e!2000886))))

(declare-fun lt!1084430 () Option!7143)

(declare-fun isDefined!5552 (Option!7143) Bool)

(assert (=> b!3208869 (= res!1306111 (isDefined!5552 lt!1084430))))

(declare-fun getRuleFromTag!927 (LexerInterface!4811 List!36294 String!40594) Option!7143)

(assert (=> b!3208869 (= lt!1084430 (getRuleFromTag!927 thiss!18206 rules!2135 (tag!5748 (rule!7662 (h!41591 (t!238494 tokens!494))))))))

(declare-fun lt!1084421 () Unit!50632)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!927 (LexerInterface!4811 List!36294 List!36293 Token!9810) Unit!50632)

(assert (=> b!3208869 (= lt!1084421 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!927 thiss!18206 rules!2135 lt!1084419 (h!41591 (t!238494 tokens!494))))))

(declare-fun lt!1084433 () Bool)

(assert (=> b!3208869 lt!1084433))

(declare-fun lt!1084407 () Unit!50632)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!850 (LexerInterface!4811 List!36294 List!36295 Token!9810) Unit!50632)

(assert (=> b!3208869 (= lt!1084407 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!850 thiss!18206 rules!2135 tokens!494 (h!41591 (t!238494 tokens!494))))))

(assert (=> b!3208869 (= (maxPrefix!2453 thiss!18206 rules!2135 lt!1084417) (Some!7143 (tuple2!35569 (h!41591 tokens!494) lt!1084411)))))

(declare-fun lt!1084435 () Unit!50632)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!146 (LexerInterface!4811 List!36294 Token!9810 Rule!10244 List!36293 Rule!10244) Unit!50632)

(assert (=> b!3208869 (= lt!1084435 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!146 thiss!18206 rules!2135 (h!41591 tokens!494) (rule!7662 (h!41591 tokens!494)) lt!1084411 (rule!7662 separatorToken!241)))))

(declare-fun contains!6459 (List!36293 C!20148) Bool)

(declare-fun usedCharacters!538 (Regex!9981) List!36293)

(assert (=> b!3208869 (not (contains!6459 (usedCharacters!538 (regex!5222 (rule!7662 (h!41591 tokens!494)))) lt!1084399))))

(declare-fun lt!1084396 () Unit!50632)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!146 (LexerInterface!4811 List!36294 List!36294 Rule!10244 Rule!10244 C!20148) Unit!50632)

(assert (=> b!3208869 (= lt!1084396 (lemmaNonSepRuleNotContainsCharContainedInASepRule!146 thiss!18206 rules!2135 rules!2135 (rule!7662 (h!41591 tokens!494)) (rule!7662 separatorToken!241) lt!1084399))))

(declare-fun lt!1084425 () Unit!50632)

(declare-fun forallContained!1193 (List!36295 Int Token!9810) Unit!50632)

(assert (=> b!3208869 (= lt!1084425 (forallContained!1193 tokens!494 lambda!117459 (h!41591 (t!238494 tokens!494))))))

(declare-fun lt!1084418 () Bool)

(assert (=> b!3208869 (= lt!1084433 (not lt!1084418))))

(declare-fun rulesProduceIndividualToken!2303 (LexerInterface!4811 List!36294 Token!9810) Bool)

(assert (=> b!3208869 (= lt!1084433 (rulesProduceIndividualToken!2303 thiss!18206 rules!2135 (h!41591 (t!238494 tokens!494))))))

(assert (=> b!3208869 (= lt!1084418 e!2000868)))

(declare-fun res!1306131 () Bool)

(assert (=> b!3208869 (=> res!1306131 e!2000868)))

(declare-fun size!27255 (BalanceConc!21254) Int)

(assert (=> b!3208869 (= res!1306131 (not (= (size!27255 (_1!20917 lt!1084412)) 1)))))

(declare-fun lt!1084410 () BalanceConc!21252)

(declare-fun lex!2141 (LexerInterface!4811 List!36294 BalanceConc!21252) tuple2!35566)

(assert (=> b!3208869 (= lt!1084412 (lex!2141 thiss!18206 rules!2135 lt!1084410))))

(declare-fun lt!1084434 () BalanceConc!21254)

(declare-fun printTailRec!1308 (LexerInterface!4811 BalanceConc!21254 Int BalanceConc!21252) BalanceConc!21252)

(assert (=> b!3208869 (= lt!1084410 (printTailRec!1308 thiss!18206 lt!1084434 0 (BalanceConc!21253 Empty!10819)))))

(declare-fun print!1876 (LexerInterface!4811 BalanceConc!21254) BalanceConc!21252)

(assert (=> b!3208869 (= lt!1084410 (print!1876 thiss!18206 lt!1084434))))

(declare-fun singletonSeq!2318 (Token!9810) BalanceConc!21254)

(assert (=> b!3208869 (= lt!1084434 (singletonSeq!2318 (h!41591 (t!238494 tokens!494))))))

(declare-fun e!2000857 () Bool)

(assert (=> b!3208869 e!2000857))

(declare-fun res!1306130 () Bool)

(assert (=> b!3208869 (=> (not res!1306130) (not e!2000857))))

(declare-fun lt!1084423 () tuple2!35566)

(assert (=> b!3208869 (= res!1306130 (= (size!27255 (_1!20917 lt!1084423)) 1))))

(declare-fun lt!1084428 () BalanceConc!21252)

(assert (=> b!3208869 (= lt!1084423 (lex!2141 thiss!18206 rules!2135 lt!1084428))))

(declare-fun lt!1084398 () BalanceConc!21254)

(assert (=> b!3208869 (= lt!1084428 (printTailRec!1308 thiss!18206 lt!1084398 0 (BalanceConc!21253 Empty!10819)))))

(assert (=> b!3208869 (= lt!1084428 (print!1876 thiss!18206 lt!1084398))))

(assert (=> b!3208869 (= lt!1084398 (singletonSeq!2318 separatorToken!241))))

(declare-fun lt!1084436 () Unit!50632)

(assert (=> b!3208869 (= lt!1084436 e!2000866)))

(declare-fun c!538915 () Bool)

(assert (=> b!3208869 (= c!538915 (not (contains!6459 (usedCharacters!538 (regex!5222 (rule!7662 separatorToken!241))) lt!1084399)))))

(declare-fun head!7041 (List!36293) C!20148)

(assert (=> b!3208869 (= lt!1084399 (head!7041 lt!1084429))))

(declare-fun e!2000864 () Bool)

(assert (=> b!3208869 e!2000864))

(declare-fun res!1306124 () Bool)

(assert (=> b!3208869 (=> (not res!1306124) (not e!2000864))))

(declare-fun lt!1084426 () Option!7143)

(assert (=> b!3208869 (= res!1306124 (isDefined!5552 lt!1084426))))

(assert (=> b!3208869 (= lt!1084426 (getRuleFromTag!927 thiss!18206 rules!2135 (tag!5748 (rule!7662 separatorToken!241))))))

(declare-fun lt!1084403 () Unit!50632)

(assert (=> b!3208869 (= lt!1084403 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!927 thiss!18206 rules!2135 lt!1084429 separatorToken!241))))

(declare-fun lt!1084392 () BalanceConc!21252)

(declare-fun maxPrefixOneRule!1590 (LexerInterface!4811 Rule!10244 List!36293) Option!7144)

(assert (=> b!3208869 (= (maxPrefixOneRule!1590 thiss!18206 (rule!7662 (h!41591 tokens!494)) lt!1084420) (Some!7143 (tuple2!35569 (Token!9811 (apply!8193 (transformation!5222 (rule!7662 (h!41591 tokens!494))) lt!1084392) (rule!7662 (h!41591 tokens!494)) (size!27254 lt!1084420) lt!1084420) Nil!36169)))))

(declare-fun lt!1084424 () Unit!50632)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!703 (LexerInterface!4811 List!36294 List!36293 List!36293 List!36293 Rule!10244) Unit!50632)

(assert (=> b!3208869 (= lt!1084424 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!703 thiss!18206 rules!2135 lt!1084420 lt!1084420 Nil!36169 (rule!7662 (h!41591 tokens!494))))))

(assert (=> b!3208869 e!2000862))

(declare-fun res!1306120 () Bool)

(assert (=> b!3208869 (=> (not res!1306120) (not e!2000862))))

(assert (=> b!3208869 (= res!1306120 (isDefined!5552 lt!1084416))))

(assert (=> b!3208869 (= lt!1084416 (getRuleFromTag!927 thiss!18206 rules!2135 (tag!5748 (rule!7662 (h!41591 tokens!494)))))))

(declare-fun lt!1084404 () Unit!50632)

(assert (=> b!3208869 (= lt!1084404 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!927 thiss!18206 rules!2135 lt!1084420 (h!41591 tokens!494)))))

(declare-fun lt!1084414 () Unit!50632)

(assert (=> b!3208869 (= lt!1084414 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!850 thiss!18206 rules!2135 tokens!494 (h!41591 tokens!494)))))

(declare-fun b!3208870 () Bool)

(declare-fun res!1306134 () Bool)

(assert (=> b!3208870 (=> (not res!1306134) (not e!2000882))))

(assert (=> b!3208870 (= res!1306134 (and (not ((_ is Nil!36171) tokens!494)) (not ((_ is Nil!36171) (t!238494 tokens!494)))))))

(declare-fun b!3208871 () Bool)

(declare-fun res!1306106 () Bool)

(assert (=> b!3208871 (=> res!1306106 e!2000872)))

(assert (=> b!3208871 (= res!1306106 (not (rulesProduceIndividualToken!2303 thiss!18206 rules!2135 (h!41591 tokens!494))))))

(declare-fun b!3208872 () Bool)

(declare-fun res!1306114 () Bool)

(assert (=> b!3208872 (=> res!1306114 e!2000890)))

(assert (=> b!3208872 (= res!1306114 (not (= lt!1084419 (++!8678 lt!1084419 Nil!36169))))))

(declare-fun b!3208873 () Bool)

(declare-fun res!1306126 () Bool)

(assert (=> b!3208873 (=> (not res!1306126) (not e!2000857))))

(declare-fun apply!8194 (BalanceConc!21254 Int) Token!9810)

(assert (=> b!3208873 (= res!1306126 (= (apply!8194 (_1!20917 lt!1084423) 0) separatorToken!241))))

(declare-fun b!3208874 () Bool)

(assert (=> b!3208874 (= e!2000882 (not e!2000879))))

(declare-fun res!1306107 () Bool)

(assert (=> b!3208874 (=> res!1306107 e!2000879)))

(assert (=> b!3208874 (= res!1306107 (not (= lt!1084402 lt!1084431)))))

(declare-fun printList!1361 (LexerInterface!4811 List!36295) List!36293)

(assert (=> b!3208874 (= lt!1084431 (printList!1361 thiss!18206 (Cons!36171 (h!41591 tokens!494) Nil!36171)))))

(declare-fun lt!1084427 () BalanceConc!21252)

(assert (=> b!3208874 (= lt!1084402 (list!12863 lt!1084427))))

(declare-fun lt!1084406 () BalanceConc!21254)

(assert (=> b!3208874 (= lt!1084427 (printTailRec!1308 thiss!18206 lt!1084406 0 (BalanceConc!21253 Empty!10819)))))

(assert (=> b!3208874 (= lt!1084427 (print!1876 thiss!18206 lt!1084406))))

(assert (=> b!3208874 (= lt!1084406 (singletonSeq!2318 (h!41591 tokens!494)))))

(declare-fun b!3208875 () Bool)

(assert (=> b!3208875 (= e!2000864 e!2000891)))

(declare-fun res!1306121 () Bool)

(assert (=> b!3208875 (=> (not res!1306121) (not e!2000891))))

(assert (=> b!3208875 (= res!1306121 (matchR!4615 (regex!5222 lt!1084393) lt!1084429))))

(assert (=> b!3208875 (= lt!1084393 (get!11516 lt!1084426))))

(declare-fun b!3208876 () Bool)

(declare-fun tp!1013163 () Bool)

(declare-fun e!2000861 () Bool)

(assert (=> b!3208876 (= e!2000887 (and (inv!49029 (h!41591 tokens!494)) e!2000861 tp!1013163))))

(declare-fun b!3208877 () Bool)

(declare-fun tp!1013174 () Bool)

(declare-fun e!2000870 () Bool)

(declare-fun inv!21 (TokenValue!5452) Bool)

(assert (=> b!3208877 (= e!2000860 (and (inv!21 (value!169287 separatorToken!241)) e!2000870 tp!1013174))))

(declare-fun b!3208878 () Bool)

(declare-fun res!1306109 () Bool)

(assert (=> b!3208878 (=> (not res!1306109) (not e!2000882))))

(assert (=> b!3208878 (= res!1306109 (rulesProduceIndividualToken!2303 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3208879 () Bool)

(declare-fun tp!1013171 () Bool)

(declare-fun e!2000889 () Bool)

(assert (=> b!3208879 (= e!2000870 (and tp!1013171 (inv!49025 (tag!5748 (rule!7662 separatorToken!241))) (inv!49028 (transformation!5222 (rule!7662 separatorToken!241))) e!2000889))))

(declare-fun b!3208880 () Bool)

(assert (=> b!3208880 (= e!2000857 (isEmpty!20254 (_2!20917 lt!1084423)))))

(declare-fun tp!1013166 () Bool)

(declare-fun b!3208881 () Bool)

(declare-fun e!2000884 () Bool)

(assert (=> b!3208881 (= e!2000861 (and (inv!21 (value!169287 (h!41591 tokens!494))) e!2000884 tp!1013166))))

(declare-fun b!3208882 () Bool)

(declare-fun e!2000874 () Bool)

(assert (=> b!3208882 (= e!2000872 e!2000874)))

(declare-fun res!1306103 () Bool)

(assert (=> b!3208882 (=> res!1306103 e!2000874)))

(declare-fun isEmpty!20256 (BalanceConc!21254) Bool)

(assert (=> b!3208882 (= res!1306103 (isEmpty!20256 (_1!20917 (lex!2141 thiss!18206 rules!2135 lt!1084392))))))

(assert (=> b!3208882 (= lt!1084392 (seqFromList!3515 lt!1084420))))

(declare-fun b!3208883 () Bool)

(declare-fun res!1306110 () Bool)

(assert (=> b!3208883 (=> res!1306110 e!2000890)))

(declare-fun isEmpty!20257 (List!36293) Bool)

(assert (=> b!3208883 (= res!1306110 (isEmpty!20257 lt!1084419))))

(declare-fun b!3208884 () Bool)

(declare-fun e!2000871 () Bool)

(assert (=> b!3208884 (= e!2000874 e!2000871)))

(declare-fun res!1306112 () Bool)

(assert (=> b!3208884 (=> res!1306112 e!2000871)))

(assert (=> b!3208884 (= res!1306112 (or (isSeparator!5222 (rule!7662 (h!41591 tokens!494))) (isSeparator!5222 (rule!7662 (h!41591 (t!238494 tokens!494))))))))

(declare-fun lt!1084395 () Unit!50632)

(assert (=> b!3208884 (= lt!1084395 (forallContained!1193 tokens!494 lambda!117458 (h!41591 (t!238494 tokens!494))))))

(declare-fun lt!1084415 () Unit!50632)

(assert (=> b!3208884 (= lt!1084415 (forallContained!1193 tokens!494 lambda!117458 (h!41591 tokens!494)))))

(declare-fun b!3208885 () Bool)

(declare-fun tp!1013168 () Bool)

(assert (=> b!3208885 (= e!2000884 (and tp!1013168 (inv!49025 (tag!5748 (rule!7662 (h!41591 tokens!494)))) (inv!49028 (transformation!5222 (rule!7662 (h!41591 tokens!494)))) e!2000873))))

(declare-fun b!3208886 () Bool)

(declare-fun e!2000877 () Bool)

(assert (=> b!3208886 (= e!2000871 e!2000877)))

(declare-fun res!1306119 () Bool)

(assert (=> b!3208886 (=> res!1306119 e!2000877)))

(declare-fun printWithSeparatorTokenList!156 (LexerInterface!4811 List!36295 Token!9810) List!36293)

(assert (=> b!3208886 (= res!1306119 (not (= lt!1084422 (++!8678 (++!8678 lt!1084419 lt!1084429) (printWithSeparatorTokenList!156 thiss!18206 (t!238494 (t!238494 tokens!494)) separatorToken!241)))))))

(assert (=> b!3208886 (= lt!1084419 (list!12863 (charsOf!3238 (h!41591 (t!238494 tokens!494)))))))

(assert (=> b!3208886 (= lt!1084411 (++!8678 lt!1084429 lt!1084422))))

(assert (=> b!3208886 (= lt!1084429 (list!12863 (charsOf!3238 separatorToken!241)))))

(assert (=> b!3208886 (= lt!1084422 (printWithSeparatorTokenList!156 thiss!18206 (t!238494 tokens!494) separatorToken!241))))

(assert (=> b!3208886 (= lt!1084400 (printWithSeparatorTokenList!156 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3208887 () Bool)

(declare-fun res!1306118 () Bool)

(assert (=> b!3208887 (=> (not res!1306118) (not e!2000882))))

(declare-fun rulesProduceEachTokenIndividually!1262 (LexerInterface!4811 List!36294 BalanceConc!21254) Bool)

(declare-fun seqFromList!3516 (List!36295) BalanceConc!21254)

(assert (=> b!3208887 (= res!1306118 (rulesProduceEachTokenIndividually!1262 thiss!18206 rules!2135 (seqFromList!3516 tokens!494)))))

(declare-fun b!3208888 () Bool)

(declare-fun res!1306105 () Bool)

(assert (=> b!3208888 (=> res!1306105 e!2000868)))

(assert (=> b!3208888 (= res!1306105 (not (= (apply!8194 (_1!20917 lt!1084412) 0) (h!41591 (t!238494 tokens!494)))))))

(declare-fun b!3208889 () Bool)

(assert (=> b!3208889 (= e!2000886 e!2000867)))

(declare-fun res!1306113 () Bool)

(assert (=> b!3208889 (=> (not res!1306113) (not e!2000867))))

(assert (=> b!3208889 (= res!1306113 (matchR!4615 (regex!5222 lt!1084408) lt!1084419))))

(assert (=> b!3208889 (= lt!1084408 (get!11516 lt!1084430))))

(declare-fun b!3208890 () Bool)

(assert (=> b!3208890 (= e!2000877 e!2000869)))

(declare-fun res!1306125 () Bool)

(assert (=> b!3208890 (=> res!1306125 e!2000869)))

(assert (=> b!3208890 (= res!1306125 (not (= lt!1084400 lt!1084397)))))

(assert (=> b!3208890 (= lt!1084397 (++!8678 (++!8678 lt!1084420 lt!1084429) lt!1084422))))

(assert (=> b!3208891 (= e!2000889 (and tp!1013173 tp!1013170))))

(assert (= (and start!301282 res!1306104) b!3208859))

(assert (= (and b!3208859 res!1306127) b!3208865))

(assert (= (and b!3208865 res!1306132) b!3208887))

(assert (= (and b!3208887 res!1306118) b!3208878))

(assert (= (and b!3208878 res!1306109) b!3208852))

(assert (= (and b!3208852 res!1306115) b!3208848))

(assert (= (and b!3208848 res!1306123) b!3208863))

(assert (= (and b!3208863 res!1306133) b!3208870))

(assert (= (and b!3208870 res!1306134) b!3208874))

(assert (= (and b!3208874 (not res!1306107)) b!3208849))

(assert (= (and b!3208849 (not res!1306122)) b!3208871))

(assert (= (and b!3208871 (not res!1306106)) b!3208882))

(assert (= (and b!3208882 (not res!1306103)) b!3208884))

(assert (= (and b!3208884 (not res!1306112)) b!3208886))

(assert (= (and b!3208886 (not res!1306119)) b!3208890))

(assert (= (and b!3208890 (not res!1306125)) b!3208867))

(assert (= (and b!3208867 (not res!1306128)) b!3208869))

(assert (= (and b!3208869 res!1306120) b!3208851))

(assert (= (and b!3208851 res!1306117) b!3208862))

(assert (= (and b!3208869 res!1306124) b!3208875))

(assert (= (and b!3208875 res!1306121) b!3208860))

(assert (= (and b!3208869 c!538915) b!3208861))

(assert (= (and b!3208869 (not c!538915)) b!3208857))

(assert (= (and b!3208861 res!1306129) b!3208858))

(assert (= (and b!3208869 res!1306130) b!3208873))

(assert (= (and b!3208873 res!1306126) b!3208880))

(assert (= (and b!3208869 (not res!1306131)) b!3208888))

(assert (= (and b!3208888 (not res!1306105)) b!3208856))

(assert (= (and b!3208869 res!1306111) b!3208889))

(assert (= (and b!3208889 res!1306113) b!3208855))

(assert (= (and b!3208869 (not res!1306116)) b!3208872))

(assert (= (and b!3208872 (not res!1306114)) b!3208883))

(assert (= (and b!3208883 (not res!1306110)) b!3208866))

(assert (= (and b!3208866 (not res!1306108)) b!3208868))

(assert (= b!3208850 b!3208853))

(assert (= b!3208854 b!3208850))

(assert (= (and start!301282 ((_ is Cons!36170) rules!2135)) b!3208854))

(assert (= b!3208885 b!3208864))

(assert (= b!3208881 b!3208885))

(assert (= b!3208876 b!3208881))

(assert (= (and start!301282 ((_ is Cons!36171) tokens!494)) b!3208876))

(assert (= b!3208879 b!3208891))

(assert (= b!3208877 b!3208879))

(assert (= start!301282 b!3208877))

(declare-fun m!3476279 () Bool)

(assert (=> b!3208861 m!3476279))

(declare-fun m!3476281 () Bool)

(assert (=> b!3208861 m!3476281))

(declare-fun m!3476283 () Bool)

(assert (=> b!3208868 m!3476283))

(declare-fun m!3476285 () Bool)

(assert (=> b!3208868 m!3476285))

(declare-fun m!3476287 () Bool)

(assert (=> b!3208868 m!3476287))

(declare-fun m!3476289 () Bool)

(assert (=> b!3208863 m!3476289))

(declare-fun m!3476291 () Bool)

(assert (=> b!3208875 m!3476291))

(declare-fun m!3476293 () Bool)

(assert (=> b!3208875 m!3476293))

(declare-fun m!3476295 () Bool)

(assert (=> b!3208850 m!3476295))

(declare-fun m!3476297 () Bool)

(assert (=> b!3208850 m!3476297))

(declare-fun m!3476299 () Bool)

(assert (=> b!3208889 m!3476299))

(declare-fun m!3476301 () Bool)

(assert (=> b!3208889 m!3476301))

(declare-fun m!3476303 () Bool)

(assert (=> b!3208867 m!3476303))

(declare-fun m!3476305 () Bool)

(assert (=> b!3208867 m!3476305))

(declare-fun m!3476307 () Bool)

(assert (=> b!3208884 m!3476307))

(declare-fun m!3476309 () Bool)

(assert (=> b!3208884 m!3476309))

(declare-fun m!3476311 () Bool)

(assert (=> b!3208874 m!3476311))

(declare-fun m!3476313 () Bool)

(assert (=> b!3208874 m!3476313))

(declare-fun m!3476315 () Bool)

(assert (=> b!3208874 m!3476315))

(declare-fun m!3476317 () Bool)

(assert (=> b!3208874 m!3476317))

(declare-fun m!3476319 () Bool)

(assert (=> b!3208874 m!3476319))

(declare-fun m!3476321 () Bool)

(assert (=> b!3208878 m!3476321))

(declare-fun m!3476323 () Bool)

(assert (=> b!3208887 m!3476323))

(assert (=> b!3208887 m!3476323))

(declare-fun m!3476325 () Bool)

(assert (=> b!3208887 m!3476325))

(declare-fun m!3476327 () Bool)

(assert (=> b!3208873 m!3476327))

(declare-fun m!3476329 () Bool)

(assert (=> b!3208877 m!3476329))

(declare-fun m!3476331 () Bool)

(assert (=> b!3208851 m!3476331))

(declare-fun m!3476333 () Bool)

(assert (=> b!3208851 m!3476333))

(declare-fun m!3476335 () Bool)

(assert (=> b!3208888 m!3476335))

(declare-fun m!3476337 () Bool)

(assert (=> b!3208881 m!3476337))

(declare-fun m!3476339 () Bool)

(assert (=> b!3208876 m!3476339))

(declare-fun m!3476341 () Bool)

(assert (=> b!3208869 m!3476341))

(declare-fun m!3476343 () Bool)

(assert (=> b!3208869 m!3476343))

(declare-fun m!3476345 () Bool)

(assert (=> b!3208869 m!3476345))

(declare-fun m!3476347 () Bool)

(assert (=> b!3208869 m!3476347))

(declare-fun m!3476349 () Bool)

(assert (=> b!3208869 m!3476349))

(declare-fun m!3476351 () Bool)

(assert (=> b!3208869 m!3476351))

(declare-fun m!3476353 () Bool)

(assert (=> b!3208869 m!3476353))

(declare-fun m!3476355 () Bool)

(assert (=> b!3208869 m!3476355))

(declare-fun m!3476357 () Bool)

(assert (=> b!3208869 m!3476357))

(declare-fun m!3476359 () Bool)

(assert (=> b!3208869 m!3476359))

(declare-fun m!3476361 () Bool)

(assert (=> b!3208869 m!3476361))

(declare-fun m!3476363 () Bool)

(assert (=> b!3208869 m!3476363))

(declare-fun m!3476365 () Bool)

(assert (=> b!3208869 m!3476365))

(declare-fun m!3476367 () Bool)

(assert (=> b!3208869 m!3476367))

(declare-fun m!3476369 () Bool)

(assert (=> b!3208869 m!3476369))

(declare-fun m!3476371 () Bool)

(assert (=> b!3208869 m!3476371))

(declare-fun m!3476373 () Bool)

(assert (=> b!3208869 m!3476373))

(declare-fun m!3476375 () Bool)

(assert (=> b!3208869 m!3476375))

(declare-fun m!3476377 () Bool)

(assert (=> b!3208869 m!3476377))

(declare-fun m!3476379 () Bool)

(assert (=> b!3208869 m!3476379))

(declare-fun m!3476381 () Bool)

(assert (=> b!3208869 m!3476381))

(declare-fun m!3476383 () Bool)

(assert (=> b!3208869 m!3476383))

(declare-fun m!3476385 () Bool)

(assert (=> b!3208869 m!3476385))

(declare-fun m!3476387 () Bool)

(assert (=> b!3208869 m!3476387))

(declare-fun m!3476389 () Bool)

(assert (=> b!3208869 m!3476389))

(declare-fun m!3476391 () Bool)

(assert (=> b!3208869 m!3476391))

(assert (=> b!3208869 m!3476361))

(declare-fun m!3476393 () Bool)

(assert (=> b!3208869 m!3476393))

(declare-fun m!3476395 () Bool)

(assert (=> b!3208869 m!3476395))

(declare-fun m!3476397 () Bool)

(assert (=> b!3208869 m!3476397))

(declare-fun m!3476399 () Bool)

(assert (=> b!3208869 m!3476399))

(declare-fun m!3476401 () Bool)

(assert (=> b!3208869 m!3476401))

(declare-fun m!3476403 () Bool)

(assert (=> b!3208869 m!3476403))

(declare-fun m!3476405 () Bool)

(assert (=> b!3208869 m!3476405))

(declare-fun m!3476407 () Bool)

(assert (=> b!3208869 m!3476407))

(assert (=> b!3208869 m!3476369))

(declare-fun m!3476409 () Bool)

(assert (=> b!3208869 m!3476409))

(declare-fun m!3476411 () Bool)

(assert (=> b!3208869 m!3476411))

(declare-fun m!3476413 () Bool)

(assert (=> b!3208872 m!3476413))

(declare-fun m!3476415 () Bool)

(assert (=> b!3208848 m!3476415))

(declare-fun m!3476417 () Bool)

(assert (=> start!301282 m!3476417))

(declare-fun m!3476419 () Bool)

(assert (=> b!3208865 m!3476419))

(declare-fun m!3476421 () Bool)

(assert (=> b!3208849 m!3476421))

(assert (=> b!3208849 m!3476421))

(declare-fun m!3476423 () Bool)

(assert (=> b!3208849 m!3476423))

(declare-fun m!3476425 () Bool)

(assert (=> b!3208859 m!3476425))

(declare-fun m!3476427 () Bool)

(assert (=> b!3208866 m!3476427))

(declare-fun m!3476429 () Bool)

(assert (=> b!3208866 m!3476429))

(declare-fun m!3476431 () Bool)

(assert (=> b!3208866 m!3476431))

(declare-fun m!3476433 () Bool)

(assert (=> b!3208866 m!3476433))

(declare-fun m!3476435 () Bool)

(assert (=> b!3208866 m!3476435))

(declare-fun m!3476437 () Bool)

(assert (=> b!3208880 m!3476437))

(declare-fun m!3476439 () Bool)

(assert (=> b!3208885 m!3476439))

(declare-fun m!3476441 () Bool)

(assert (=> b!3208885 m!3476441))

(declare-fun m!3476443 () Bool)

(assert (=> b!3208879 m!3476443))

(declare-fun m!3476445 () Bool)

(assert (=> b!3208879 m!3476445))

(declare-fun m!3476447 () Bool)

(assert (=> b!3208871 m!3476447))

(declare-fun m!3476449 () Bool)

(assert (=> b!3208890 m!3476449))

(assert (=> b!3208890 m!3476449))

(declare-fun m!3476451 () Bool)

(assert (=> b!3208890 m!3476451))

(declare-fun m!3476453 () Bool)

(assert (=> b!3208856 m!3476453))

(declare-fun m!3476455 () Bool)

(assert (=> b!3208882 m!3476455))

(declare-fun m!3476457 () Bool)

(assert (=> b!3208882 m!3476457))

(declare-fun m!3476459 () Bool)

(assert (=> b!3208882 m!3476459))

(declare-fun m!3476461 () Bool)

(assert (=> b!3208886 m!3476461))

(declare-fun m!3476463 () Bool)

(assert (=> b!3208886 m!3476463))

(declare-fun m!3476465 () Bool)

(assert (=> b!3208886 m!3476465))

(declare-fun m!3476467 () Bool)

(assert (=> b!3208886 m!3476467))

(declare-fun m!3476469 () Bool)

(assert (=> b!3208886 m!3476469))

(declare-fun m!3476471 () Bool)

(assert (=> b!3208886 m!3476471))

(declare-fun m!3476473 () Bool)

(assert (=> b!3208886 m!3476473))

(assert (=> b!3208886 m!3476461))

(declare-fun m!3476475 () Bool)

(assert (=> b!3208886 m!3476475))

(assert (=> b!3208886 m!3476469))

(assert (=> b!3208886 m!3476471))

(assert (=> b!3208886 m!3476463))

(declare-fun m!3476477 () Bool)

(assert (=> b!3208886 m!3476477))

(declare-fun m!3476479 () Bool)

(assert (=> b!3208886 m!3476479))

(declare-fun m!3476481 () Bool)

(assert (=> b!3208883 m!3476481))

(check-sat (not b_next!86089) (not b_next!86091) (not b!3208850) (not b!3208878) (not b!3208866) b_and!213689 (not b!3208863) (not b!3208874) (not b!3208872) (not b!3208882) (not b!3208873) (not b!3208848) (not b!3208900) (not b!3208875) (not b!3208868) b_and!213693 (not b!3208854) (not b!3208889) (not b!3208887) (not b_next!86081) b_and!213695 (not b!3208885) (not b!3208877) (not start!301282) (not b!3208859) (not b_next!86083) (not b!3208884) (not b!3208861) (not b!3208851) (not b!3208881) (not b_next!86087) b_and!213691 (not b!3208869) (not b!3208883) (not b!3208865) (not b!3208890) (not b!3208867) (not b!3208871) (not b!3208876) (not b!3208856) (not b!3208849) b_and!213687 (not b!3208880) (not b!3208879) (not b!3208886) b_and!213697 (not b!3208888) (not b_next!86085))
(check-sat (not b_next!86089) (not b_next!86091) b_and!213693 (not b_next!86083) b_and!213689 b_and!213687 (not b_next!86081) b_and!213695 (not b_next!86087) b_and!213691 b_and!213697 (not b_next!86085))

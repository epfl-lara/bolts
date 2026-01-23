; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42638 () Bool)

(assert start!42638)

(declare-fun b!450885 () Bool)

(declare-fun b_free!12497 () Bool)

(declare-fun b_next!12497 () Bool)

(assert (=> b!450885 (= b_free!12497 (not b_next!12497))))

(declare-fun tp!125604 () Bool)

(declare-fun b_and!48501 () Bool)

(assert (=> b!450885 (= tp!125604 b_and!48501)))

(declare-fun b_free!12499 () Bool)

(declare-fun b_next!12499 () Bool)

(assert (=> b!450885 (= b_free!12499 (not b_next!12499))))

(declare-fun tp!125609 () Bool)

(declare-fun b_and!48503 () Bool)

(assert (=> b!450885 (= tp!125609 b_and!48503)))

(declare-fun b!450890 () Bool)

(declare-fun b_free!12501 () Bool)

(declare-fun b_next!12501 () Bool)

(assert (=> b!450890 (= b_free!12501 (not b_next!12501))))

(declare-fun tp!125612 () Bool)

(declare-fun b_and!48505 () Bool)

(assert (=> b!450890 (= tp!125612 b_and!48505)))

(declare-fun b_free!12503 () Bool)

(declare-fun b_next!12503 () Bool)

(assert (=> b!450890 (= b_free!12503 (not b_next!12503))))

(declare-fun tp!125611 () Bool)

(declare-fun b_and!48507 () Bool)

(assert (=> b!450890 (= tp!125611 b_and!48507)))

(declare-fun b!450899 () Bool)

(declare-fun b_free!12505 () Bool)

(declare-fun b_next!12505 () Bool)

(assert (=> b!450899 (= b_free!12505 (not b_next!12505))))

(declare-fun tp!125603 () Bool)

(declare-fun b_and!48509 () Bool)

(assert (=> b!450899 (= tp!125603 b_and!48509)))

(declare-fun b_free!12507 () Bool)

(declare-fun b_next!12507 () Bool)

(assert (=> b!450899 (= b_free!12507 (not b_next!12507))))

(declare-fun tp!125605 () Bool)

(declare-fun b_and!48511 () Bool)

(assert (=> b!450899 (= tp!125605 b_and!48511)))

(declare-fun bs!55838 () Bool)

(declare-fun b!450894 () Bool)

(declare-fun b!450893 () Bool)

(assert (= bs!55838 (and b!450894 b!450893)))

(declare-fun lambda!13098 () Int)

(declare-fun lambda!13097 () Int)

(assert (=> bs!55838 (not (= lambda!13098 lambda!13097))))

(declare-fun b!450932 () Bool)

(declare-fun e!275650 () Bool)

(assert (=> b!450932 (= e!275650 true)))

(declare-fun b!450931 () Bool)

(declare-fun e!275649 () Bool)

(assert (=> b!450931 (= e!275649 e!275650)))

(declare-fun b!450930 () Bool)

(declare-fun e!275648 () Bool)

(assert (=> b!450930 (= e!275648 e!275649)))

(assert (=> b!450894 e!275648))

(assert (= b!450931 b!450932))

(assert (= b!450930 b!450931))

(declare-datatypes ((List!4378 0))(
  ( (Nil!4368) (Cons!4368 (h!9765 (_ BitVec 16)) (t!70896 List!4378)) )
))
(declare-datatypes ((TokenValue!869 0))(
  ( (FloatLiteralValue!1738 (text!6528 List!4378)) (TokenValueExt!868 (__x!3225 Int)) (Broken!4345 (value!28429 List!4378)) (Object!878) (End!869) (Def!869) (Underscore!869) (Match!869) (Else!869) (Error!869) (Case!869) (If!869) (Extends!869) (Abstract!869) (Class!869) (Val!869) (DelimiterValue!1738 (del!929 List!4378)) (KeywordValue!875 (value!28430 List!4378)) (CommentValue!1738 (value!28431 List!4378)) (WhitespaceValue!1738 (value!28432 List!4378)) (IndentationValue!869 (value!28433 List!4378)) (String!5424) (Int32!869) (Broken!4346 (value!28434 List!4378)) (Boolean!870) (Unit!7874) (OperatorValue!872 (op!929 List!4378)) (IdentifierValue!1738 (value!28435 List!4378)) (IdentifierValue!1739 (value!28436 List!4378)) (WhitespaceValue!1739 (value!28437 List!4378)) (True!1738) (False!1738) (Broken!4347 (value!28438 List!4378)) (Broken!4348 (value!28439 List!4378)) (True!1739) (RightBrace!869) (RightBracket!869) (Colon!869) (Null!869) (Comma!869) (LeftBracket!869) (False!1739) (LeftBrace!869) (ImaginaryLiteralValue!869 (text!6529 List!4378)) (StringLiteralValue!2607 (value!28440 List!4378)) (EOFValue!869 (value!28441 List!4378)) (IdentValue!869 (value!28442 List!4378)) (DelimiterValue!1739 (value!28443 List!4378)) (DedentValue!869 (value!28444 List!4378)) (NewLineValue!869 (value!28445 List!4378)) (IntegerValue!2607 (value!28446 (_ BitVec 32)) (text!6530 List!4378)) (IntegerValue!2608 (value!28447 Int) (text!6531 List!4378)) (Times!869) (Or!869) (Equal!869) (Minus!869) (Broken!4349 (value!28448 List!4378)) (And!869) (Div!869) (LessEqual!869) (Mod!869) (Concat!1940) (Not!869) (Plus!869) (SpaceValue!869 (value!28449 List!4378)) (IntegerValue!2609 (value!28450 Int) (text!6532 List!4378)) (StringLiteralValue!2608 (text!6533 List!4378)) (FloatLiteralValue!1739 (text!6534 List!4378)) (BytesLiteralValue!869 (value!28451 List!4378)) (CommentValue!1739 (value!28452 List!4378)) (StringLiteralValue!2609 (value!28453 List!4378)) (ErrorTokenValue!869 (msg!930 List!4378)) )
))
(declare-datatypes ((C!3064 0))(
  ( (C!3065 (val!1418 Int)) )
))
(declare-datatypes ((List!4379 0))(
  ( (Nil!4369) (Cons!4369 (h!9766 C!3064) (t!70897 List!4379)) )
))
(declare-datatypes ((IArray!3033 0))(
  ( (IArray!3034 (innerList!1574 List!4379)) )
))
(declare-datatypes ((Conc!1516 0))(
  ( (Node!1516 (left!3674 Conc!1516) (right!4004 Conc!1516) (csize!3262 Int) (cheight!1727 Int)) (Leaf!2279 (xs!4147 IArray!3033) (csize!3263 Int)) (Empty!1516) )
))
(declare-datatypes ((BalanceConc!3040 0))(
  ( (BalanceConc!3041 (c!91308 Conc!1516)) )
))
(declare-datatypes ((TokenValueInjection!1510 0))(
  ( (TokenValueInjection!1511 (toValue!1662 Int) (toChars!1521 Int)) )
))
(declare-datatypes ((Regex!1071 0))(
  ( (ElementMatch!1071 (c!91309 C!3064)) (Concat!1941 (regOne!2654 Regex!1071) (regTwo!2654 Regex!1071)) (EmptyExpr!1071) (Star!1071 (reg!1400 Regex!1071)) (EmptyLang!1071) (Union!1071 (regOne!2655 Regex!1071) (regTwo!2655 Regex!1071)) )
))
(declare-datatypes ((String!5425 0))(
  ( (String!5426 (value!28454 String)) )
))
(declare-datatypes ((Rule!1494 0))(
  ( (Rule!1495 (regex!847 Regex!1071) (tag!1105 String!5425) (isSeparator!847 Bool) (transformation!847 TokenValueInjection!1510)) )
))
(declare-datatypes ((List!4380 0))(
  ( (Nil!4370) (Cons!4370 (h!9767 Rule!1494) (t!70898 List!4380)) )
))
(declare-fun rules!1920 () List!4380)

(get-info :version)

(assert (= (and b!450894 ((_ is Cons!4370) rules!1920)) b!450930))

(declare-fun order!3835 () Int)

(declare-fun order!3833 () Int)

(declare-fun dynLambda!2630 (Int Int) Int)

(declare-fun dynLambda!2631 (Int Int) Int)

(assert (=> b!450932 (< (dynLambda!2630 order!3833 (toValue!1662 (transformation!847 (h!9767 rules!1920)))) (dynLambda!2631 order!3835 lambda!13098))))

(declare-fun order!3837 () Int)

(declare-fun dynLambda!2632 (Int Int) Int)

(assert (=> b!450932 (< (dynLambda!2632 order!3837 (toChars!1521 (transformation!847 (h!9767 rules!1920)))) (dynLambda!2631 order!3835 lambda!13098))))

(assert (=> b!450894 true))

(declare-fun b!450872 () Bool)

(declare-datatypes ((Token!1438 0))(
  ( (Token!1439 (value!28455 TokenValue!869) (rule!1536 Rule!1494) (size!3590 Int) (originalCharacters!890 List!4379)) )
))
(declare-fun separatorToken!170 () Token!1438)

(declare-fun tp!125610 () Bool)

(declare-fun e!275641 () Bool)

(declare-fun e!275636 () Bool)

(declare-fun inv!21 (TokenValue!869) Bool)

(assert (=> b!450872 (= e!275641 (and (inv!21 (value!28455 separatorToken!170)) e!275636 tp!125610))))

(declare-fun b!450873 () Bool)

(declare-fun e!275624 () Bool)

(assert (=> b!450873 (= e!275624 false)))

(declare-fun b!450875 () Bool)

(declare-fun res!200199 () Bool)

(declare-fun e!275633 () Bool)

(assert (=> b!450875 (=> (not res!200199) (not e!275633))))

(assert (=> b!450875 (= res!200199 (isSeparator!847 (rule!1536 separatorToken!170)))))

(declare-fun b!450876 () Bool)

(declare-fun res!200222 () Bool)

(declare-fun e!275625 () Bool)

(assert (=> b!450876 (=> (not res!200222) (not e!275625))))

(declare-datatypes ((tuple2!5286 0))(
  ( (tuple2!5287 (_1!2859 Token!1438) (_2!2859 List!4379)) )
))
(declare-fun lt!200191 () tuple2!5286)

(declare-fun isEmpty!3319 (List!4379) Bool)

(assert (=> b!450876 (= res!200222 (isEmpty!3319 (_2!2859 lt!200191)))))

(declare-fun b!450877 () Bool)

(declare-fun res!200211 () Bool)

(declare-fun e!275620 () Bool)

(assert (=> b!450877 (=> (not res!200211) (not e!275620))))

(declare-datatypes ((LexerInterface!733 0))(
  ( (LexerInterfaceExt!730 (__x!3226 Int)) (Lexer!731) )
))
(declare-fun thiss!17480 () LexerInterface!733)

(declare-fun rulesInvariant!699 (LexerInterface!733 List!4380) Bool)

(assert (=> b!450877 (= res!200211 (rulesInvariant!699 thiss!17480 rules!1920))))

(declare-fun b!450878 () Bool)

(declare-fun res!200221 () Bool)

(assert (=> b!450878 (=> (not res!200221) (not e!275633))))

(declare-datatypes ((List!4381 0))(
  ( (Nil!4371) (Cons!4371 (h!9768 Token!1438) (t!70899 List!4381)) )
))
(declare-fun tokens!465 () List!4381)

(assert (=> b!450878 (= res!200221 ((_ is Cons!4371) tokens!465))))

(declare-fun b!450879 () Bool)

(declare-fun e!275616 () Bool)

(declare-fun tp!125614 () Bool)

(declare-fun inv!5442 (String!5425) Bool)

(declare-fun inv!5445 (TokenValueInjection!1510) Bool)

(assert (=> b!450879 (= e!275636 (and tp!125614 (inv!5442 (tag!1105 (rule!1536 separatorToken!170))) (inv!5445 (transformation!847 (rule!1536 separatorToken!170))) e!275616))))

(declare-fun b!450880 () Bool)

(declare-fun e!275611 () Bool)

(declare-fun e!275605 () Bool)

(assert (=> b!450880 (= e!275611 e!275605)))

(declare-fun res!200210 () Bool)

(assert (=> b!450880 (=> (not res!200210) (not e!275605))))

(declare-fun lt!200197 () Rule!1494)

(declare-fun lt!200199 () List!4379)

(declare-fun matchR!389 (Regex!1071 List!4379) Bool)

(assert (=> b!450880 (= res!200210 (matchR!389 (regex!847 lt!200197) lt!200199))))

(declare-datatypes ((Option!1123 0))(
  ( (None!1122) (Some!1122 (v!15429 Rule!1494)) )
))
(declare-fun lt!200183 () Option!1123)

(declare-fun get!1593 (Option!1123) Rule!1494)

(assert (=> b!450880 (= lt!200197 (get!1593 lt!200183))))

(declare-fun b!450881 () Bool)

(assert (=> b!450881 (= e!275620 e!275633)))

(declare-fun res!200223 () Bool)

(assert (=> b!450881 (=> (not res!200223) (not e!275633))))

(declare-datatypes ((IArray!3035 0))(
  ( (IArray!3036 (innerList!1575 List!4381)) )
))
(declare-datatypes ((Conc!1517 0))(
  ( (Node!1517 (left!3675 Conc!1517) (right!4005 Conc!1517) (csize!3264 Int) (cheight!1728 Int)) (Leaf!2280 (xs!4148 IArray!3035) (csize!3265 Int)) (Empty!1517) )
))
(declare-datatypes ((BalanceConc!3042 0))(
  ( (BalanceConc!3043 (c!91310 Conc!1517)) )
))
(declare-fun lt!200210 () BalanceConc!3042)

(declare-fun rulesProduceEachTokenIndividually!525 (LexerInterface!733 List!4380 BalanceConc!3042) Bool)

(assert (=> b!450881 (= res!200223 (rulesProduceEachTokenIndividually!525 thiss!17480 rules!1920 lt!200210))))

(declare-fun seqFromList!1059 (List!4381) BalanceConc!3042)

(assert (=> b!450881 (= lt!200210 (seqFromList!1059 tokens!465))))

(declare-fun b!450882 () Bool)

(declare-fun e!275622 () Bool)

(declare-fun tp!125606 () Bool)

(declare-fun e!275606 () Bool)

(assert (=> b!450882 (= e!275622 (and tp!125606 (inv!5442 (tag!1105 (h!9767 rules!1920))) (inv!5445 (transformation!847 (h!9767 rules!1920))) e!275606))))

(declare-fun b!450883 () Bool)

(declare-datatypes ((Unit!7875 0))(
  ( (Unit!7876) )
))
(declare-fun e!275617 () Unit!7875)

(declare-fun Unit!7877 () Unit!7875)

(assert (=> b!450883 (= e!275617 Unit!7877)))

(declare-fun b!450884 () Bool)

(declare-fun res!200201 () Bool)

(assert (=> b!450884 (=> (not res!200201) (not e!275620))))

(declare-fun isEmpty!3320 (List!4380) Bool)

(assert (=> b!450884 (= res!200201 (not (isEmpty!3320 rules!1920)))))

(assert (=> b!450885 (= e!275616 (and tp!125604 tp!125609))))

(declare-fun b!450886 () Bool)

(declare-fun e!275637 () Bool)

(declare-fun e!275614 () Bool)

(assert (=> b!450886 (= e!275637 e!275614)))

(declare-fun res!200216 () Bool)

(assert (=> b!450886 (=> (not res!200216) (not e!275614))))

(declare-fun lt!200194 () Rule!1494)

(declare-fun lt!200200 () List!4379)

(assert (=> b!450886 (= res!200216 (matchR!389 (regex!847 lt!200194) lt!200200))))

(declare-fun lt!200202 () Option!1123)

(assert (=> b!450886 (= lt!200194 (get!1593 lt!200202))))

(declare-fun b!450887 () Bool)

(declare-fun e!275639 () Bool)

(declare-fun tp!125613 () Bool)

(assert (=> b!450887 (= e!275639 (and e!275622 tp!125613))))

(declare-fun lt!200216 () List!4379)

(declare-fun e!275631 () Bool)

(declare-fun lt!200208 () List!4379)

(declare-fun lt!200192 () List!4379)

(declare-fun b!450888 () Bool)

(declare-fun ++!1268 (List!4379 List!4379) List!4379)

(assert (=> b!450888 (= e!275631 (not (= lt!200192 (++!1268 lt!200208 lt!200216))))))

(declare-fun b!450889 () Bool)

(declare-fun e!275610 () Unit!7875)

(declare-fun Unit!7878 () Unit!7875)

(assert (=> b!450889 (= e!275610 Unit!7878)))

(declare-fun lt!200205 () Token!1438)

(declare-fun lt!200181 () C!3064)

(declare-fun lt!200170 () Unit!7875)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!126 (Regex!1071 List!4379 C!3064) Unit!7875)

(assert (=> b!450889 (= lt!200170 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!126 (regex!847 (rule!1536 lt!200205)) lt!200200 lt!200181))))

(declare-fun res!200224 () Bool)

(assert (=> b!450889 (= res!200224 (not (matchR!389 (regex!847 (rule!1536 lt!200205)) lt!200200)))))

(assert (=> b!450889 (=> (not res!200224) (not e!275624))))

(assert (=> b!450889 e!275624))

(assert (=> b!450890 (= e!275606 (and tp!125612 tp!125611))))

(declare-fun b!450891 () Bool)

(assert (=> b!450891 (= e!275614 (= (rule!1536 lt!200205) lt!200194))))

(declare-fun b!450892 () Bool)

(declare-fun e!275627 () Bool)

(assert (=> b!450892 (= e!275633 e!275627)))

(declare-fun res!200231 () Bool)

(assert (=> b!450892 (=> (not res!200231) (not e!275627))))

(declare-fun lt!200184 () List!4379)

(assert (=> b!450892 (= res!200231 (= lt!200192 lt!200184))))

(declare-fun list!1937 (BalanceConc!3040) List!4379)

(declare-fun printWithSeparatorTokenWhenNeededRec!406 (LexerInterface!733 List!4380 BalanceConc!3042 Token!1438 Int) BalanceConc!3040)

(assert (=> b!450892 (= lt!200184 (list!1937 (printWithSeparatorTokenWhenNeededRec!406 thiss!17480 rules!1920 lt!200210 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!414 (LexerInterface!733 List!4380 List!4381 Token!1438) List!4379)

(assert (=> b!450892 (= lt!200192 (printWithSeparatorTokenWhenNeededList!414 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun res!200228 () Bool)

(assert (=> b!450893 (=> (not res!200228) (not e!275633))))

(declare-fun forall!1264 (List!4381 Int) Bool)

(assert (=> b!450893 (= res!200228 (forall!1264 tokens!465 lambda!13097))))

(declare-fun e!275629 () Bool)

(declare-fun e!275638 () Bool)

(assert (=> b!450894 (= e!275629 e!275638)))

(declare-fun res!200205 () Bool)

(assert (=> b!450894 (=> res!200205 e!275638)))

(declare-datatypes ((tuple2!5288 0))(
  ( (tuple2!5289 (_1!2860 Token!1438) (_2!2860 BalanceConc!3040)) )
))
(declare-datatypes ((Option!1124 0))(
  ( (None!1123) (Some!1123 (v!15430 tuple2!5288)) )
))
(declare-fun isDefined!962 (Option!1124) Bool)

(declare-fun maxPrefixZipperSequence!412 (LexerInterface!733 List!4380 BalanceConc!3040) Option!1124)

(declare-fun seqFromList!1060 (List!4379) BalanceConc!3040)

(assert (=> b!450894 (= res!200205 (not (isDefined!962 (maxPrefixZipperSequence!412 thiss!17480 rules!1920 (seqFromList!1060 (originalCharacters!890 (h!9768 tokens!465)))))))))

(declare-fun lt!200203 () Unit!7875)

(declare-fun forallContained!400 (List!4381 Int Token!1438) Unit!7875)

(assert (=> b!450894 (= lt!200203 (forallContained!400 tokens!465 lambda!13098 (h!9768 tokens!465)))))

(assert (=> b!450894 (= lt!200208 (originalCharacters!890 (h!9768 tokens!465)))))

(declare-fun b!450895 () Bool)

(assert (=> b!450895 (= e!275625 (matchR!389 (regex!847 (rule!1536 (h!9768 tokens!465))) lt!200208))))

(declare-fun b!450896 () Bool)

(declare-fun Unit!7879 () Unit!7875)

(assert (=> b!450896 (= e!275617 Unit!7879)))

(assert (=> b!450896 false))

(declare-fun b!450897 () Bool)

(declare-fun res!200226 () Bool)

(assert (=> b!450897 (=> (not res!200226) (not e!275633))))

(declare-fun rulesProduceIndividualToken!482 (LexerInterface!733 List!4380 Token!1438) Bool)

(assert (=> b!450897 (= res!200226 (rulesProduceIndividualToken!482 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!450898 () Bool)

(declare-fun e!275623 () Bool)

(declare-datatypes ((Option!1125 0))(
  ( (None!1124) (Some!1124 (v!15431 tuple2!5286)) )
))
(declare-fun lt!200171 () Option!1125)

(declare-fun get!1594 (Option!1125) tuple2!5286)

(declare-fun head!1095 (List!4381) Token!1438)

(assert (=> b!450898 (= e!275623 (= (_1!2859 (get!1594 lt!200171)) (head!1095 tokens!465)))))

(declare-fun e!275613 () Bool)

(assert (=> b!450899 (= e!275613 (and tp!125603 tp!125605))))

(declare-fun e!275615 () Bool)

(declare-fun b!450900 () Bool)

(declare-fun e!275612 () Bool)

(declare-fun tp!125607 () Bool)

(assert (=> b!450900 (= e!275615 (and (inv!21 (value!28455 (h!9768 tokens!465))) e!275612 tp!125607))))

(declare-fun b!450901 () Bool)

(declare-fun e!275640 () Bool)

(assert (=> b!450901 (= e!275627 (not e!275640))))

(declare-fun res!200229 () Bool)

(assert (=> b!450901 (=> res!200229 e!275640)))

(declare-fun lt!200206 () BalanceConc!3042)

(assert (=> b!450901 (= res!200229 (not (= lt!200216 (list!1937 (printWithSeparatorTokenWhenNeededRec!406 thiss!17480 rules!1920 lt!200206 separatorToken!170 0)))))))

(assert (=> b!450901 (= lt!200206 (seqFromList!1059 (t!70899 tokens!465)))))

(declare-fun lt!200213 () List!4379)

(declare-fun lt!200186 () List!4379)

(assert (=> b!450901 (= lt!200213 lt!200186)))

(declare-fun lt!200175 () List!4379)

(assert (=> b!450901 (= lt!200186 (++!1268 lt!200208 lt!200175))))

(assert (=> b!450901 (= lt!200213 (++!1268 (++!1268 lt!200208 lt!200199) lt!200216))))

(declare-fun lt!200215 () Unit!7875)

(declare-fun lemmaConcatAssociativity!582 (List!4379 List!4379 List!4379) Unit!7875)

(assert (=> b!450901 (= lt!200215 (lemmaConcatAssociativity!582 lt!200208 lt!200199 lt!200216))))

(declare-fun charsOf!490 (Token!1438) BalanceConc!3040)

(assert (=> b!450901 (= lt!200208 (list!1937 (charsOf!490 (h!9768 tokens!465))))))

(assert (=> b!450901 (= lt!200175 (++!1268 lt!200199 lt!200216))))

(assert (=> b!450901 (= lt!200216 (printWithSeparatorTokenWhenNeededList!414 thiss!17480 rules!1920 (t!70899 tokens!465) separatorToken!170))))

(assert (=> b!450901 (= lt!200199 (list!1937 (charsOf!490 separatorToken!170)))))

(declare-fun b!450902 () Bool)

(declare-fun res!200219 () Bool)

(declare-fun e!275609 () Bool)

(assert (=> b!450902 (=> (not res!200219) (not e!275609))))

(declare-datatypes ((tuple2!5290 0))(
  ( (tuple2!5291 (_1!2861 BalanceConc!3042) (_2!2861 BalanceConc!3040)) )
))
(declare-fun lt!200179 () tuple2!5290)

(declare-fun apply!1112 (BalanceConc!3042 Int) Token!1438)

(assert (=> b!450902 (= res!200219 (= (apply!1112 (_1!2861 lt!200179) 0) lt!200205))))

(declare-fun tp!125615 () Bool)

(declare-fun b!450903 () Bool)

(assert (=> b!450903 (= e!275612 (and tp!125615 (inv!5442 (tag!1105 (rule!1536 (h!9768 tokens!465)))) (inv!5445 (transformation!847 (rule!1536 (h!9768 tokens!465)))) e!275613))))

(declare-fun e!275604 () Bool)

(declare-fun tp!125608 () Bool)

(declare-fun b!450904 () Bool)

(declare-fun inv!5446 (Token!1438) Bool)

(assert (=> b!450904 (= e!275604 (and (inv!5446 (h!9768 tokens!465)) e!275615 tp!125608))))

(declare-fun b!450905 () Bool)

(declare-fun isEmpty!3321 (BalanceConc!3040) Bool)

(assert (=> b!450905 (= e!275609 (isEmpty!3321 (_2!2861 lt!200179)))))

(declare-fun b!450906 () Bool)

(declare-fun e!275628 () Bool)

(assert (=> b!450906 (= e!275628 e!275623)))

(declare-fun res!200206 () Bool)

(assert (=> b!450906 (=> (not res!200206) (not e!275623))))

(declare-fun isDefined!963 (Option!1125) Bool)

(assert (=> b!450906 (= res!200206 (isDefined!963 lt!200171))))

(declare-fun maxPrefix!449 (LexerInterface!733 List!4380 List!4379) Option!1125)

(assert (=> b!450906 (= lt!200171 (maxPrefix!449 thiss!17480 rules!1920 lt!200192))))

(declare-fun b!450907 () Bool)

(declare-fun res!200200 () Bool)

(declare-fun e!275619 () Bool)

(assert (=> b!450907 (=> res!200200 e!275619)))

(assert (=> b!450907 (= res!200200 (not (forall!1264 (t!70899 tokens!465) lambda!13097)))))

(declare-fun b!450908 () Bool)

(declare-fun e!275608 () Bool)

(assert (=> b!450908 (= e!275638 e!275608)))

(declare-fun res!200214 () Bool)

(assert (=> b!450908 (=> res!200214 e!275608)))

(declare-fun lt!200173 () Bool)

(assert (=> b!450908 (= res!200214 (not lt!200173))))

(assert (=> b!450908 e!275625))

(declare-fun res!200212 () Bool)

(assert (=> b!450908 (=> (not res!200212) (not e!275625))))

(assert (=> b!450908 (= res!200212 (= (_1!2859 lt!200191) (h!9768 tokens!465)))))

(declare-fun lt!200177 () Option!1125)

(assert (=> b!450908 (= lt!200191 (get!1594 lt!200177))))

(assert (=> b!450908 (isDefined!963 lt!200177)))

(assert (=> b!450908 (= lt!200177 (maxPrefix!449 thiss!17480 rules!1920 lt!200208))))

(declare-fun b!450909 () Bool)

(assert (=> b!450909 (= e!275605 (= (rule!1536 separatorToken!170) lt!200197))))

(declare-fun b!450910 () Bool)

(declare-fun e!275626 () Bool)

(declare-fun lt!200212 () tuple2!5290)

(assert (=> b!450910 (= e!275626 (isEmpty!3321 (_2!2861 lt!200212)))))

(declare-fun b!450911 () Bool)

(assert (=> b!450911 (= e!275608 e!275619)))

(declare-fun res!200207 () Bool)

(assert (=> b!450911 (=> res!200207 e!275619)))

(assert (=> b!450911 (= res!200207 (not (rulesProduceEachTokenIndividually!525 thiss!17480 rules!1920 lt!200206)))))

(declare-fun lt!200176 () Option!1125)

(assert (=> b!450911 (= lt!200176 (Some!1124 (tuple2!5287 separatorToken!170 lt!200216)))))

(declare-fun lt!200211 () Unit!7875)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!78 (LexerInterface!733 List!4380 Token!1438 Rule!1494 List!4379 Rule!1494) Unit!7875)

(assert (=> b!450911 (= lt!200211 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!78 thiss!17480 rules!1920 separatorToken!170 (rule!1536 separatorToken!170) lt!200216 (rule!1536 lt!200205)))))

(declare-fun lt!200172 () Unit!7875)

(declare-fun e!275632 () Unit!7875)

(assert (=> b!450911 (= lt!200172 e!275632)))

(declare-fun c!91307 () Bool)

(declare-fun lt!200193 () C!3064)

(declare-fun contains!977 (List!4379 C!3064) Bool)

(declare-fun usedCharacters!148 (Regex!1071) List!4379)

(assert (=> b!450911 (= c!91307 (contains!977 (usedCharacters!148 (regex!847 (rule!1536 separatorToken!170))) lt!200193))))

(declare-fun head!1096 (List!4379) C!3064)

(assert (=> b!450911 (= lt!200193 (head!1096 lt!200216))))

(declare-fun lt!200178 () Unit!7875)

(assert (=> b!450911 (= lt!200178 e!275610)))

(declare-fun c!91305 () Bool)

(assert (=> b!450911 (= c!91305 (not (contains!977 (usedCharacters!148 (regex!847 (rule!1536 lt!200205))) lt!200181)))))

(assert (=> b!450911 (= lt!200181 (head!1096 lt!200200))))

(assert (=> b!450911 e!275637))

(declare-fun res!200202 () Bool)

(assert (=> b!450911 (=> (not res!200202) (not e!275637))))

(declare-fun isDefined!964 (Option!1123) Bool)

(assert (=> b!450911 (= res!200202 (isDefined!964 lt!200202))))

(declare-fun getRuleFromTag!206 (LexerInterface!733 List!4380 String!5425) Option!1123)

(assert (=> b!450911 (= lt!200202 (getRuleFromTag!206 thiss!17480 rules!1920 (tag!1105 (rule!1536 lt!200205))))))

(declare-fun lt!200188 () Unit!7875)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!206 (LexerInterface!733 List!4380 List!4379 Token!1438) Unit!7875)

(assert (=> b!450911 (= lt!200188 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!206 thiss!17480 rules!1920 lt!200200 lt!200205))))

(assert (=> b!450911 (= lt!200200 (list!1937 (charsOf!490 lt!200205)))))

(declare-fun lt!200209 () Unit!7875)

(assert (=> b!450911 (= lt!200209 (forallContained!400 tokens!465 lambda!13098 lt!200205))))

(assert (=> b!450911 e!275609))

(declare-fun res!200225 () Bool)

(assert (=> b!450911 (=> (not res!200225) (not e!275609))))

(declare-fun size!3591 (BalanceConc!3042) Int)

(assert (=> b!450911 (= res!200225 (= (size!3591 (_1!2861 lt!200179)) 1))))

(declare-fun lt!200182 () BalanceConc!3040)

(declare-fun lex!525 (LexerInterface!733 List!4380 BalanceConc!3040) tuple2!5290)

(assert (=> b!450911 (= lt!200179 (lex!525 thiss!17480 rules!1920 lt!200182))))

(declare-fun lt!200187 () BalanceConc!3042)

(declare-fun printTailRec!419 (LexerInterface!733 BalanceConc!3042 Int BalanceConc!3040) BalanceConc!3040)

(assert (=> b!450911 (= lt!200182 (printTailRec!419 thiss!17480 lt!200187 0 (BalanceConc!3041 Empty!1516)))))

(declare-fun print!458 (LexerInterface!733 BalanceConc!3042) BalanceConc!3040)

(assert (=> b!450911 (= lt!200182 (print!458 thiss!17480 lt!200187))))

(declare-fun singletonSeq!393 (Token!1438) BalanceConc!3042)

(assert (=> b!450911 (= lt!200187 (singletonSeq!393 lt!200205))))

(assert (=> b!450911 e!275611))

(declare-fun res!200198 () Bool)

(assert (=> b!450911 (=> (not res!200198) (not e!275611))))

(assert (=> b!450911 (= res!200198 (isDefined!964 lt!200183))))

(assert (=> b!450911 (= lt!200183 (getRuleFromTag!206 thiss!17480 rules!1920 (tag!1105 (rule!1536 separatorToken!170))))))

(declare-fun lt!200180 () Unit!7875)

(assert (=> b!450911 (= lt!200180 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!206 thiss!17480 rules!1920 lt!200199 separatorToken!170))))

(assert (=> b!450911 e!275626))

(declare-fun res!200218 () Bool)

(assert (=> b!450911 (=> (not res!200218) (not e!275626))))

(assert (=> b!450911 (= res!200218 (= (size!3591 (_1!2861 lt!200212)) 1))))

(declare-fun lt!200174 () BalanceConc!3040)

(assert (=> b!450911 (= lt!200212 (lex!525 thiss!17480 rules!1920 lt!200174))))

(declare-fun lt!200195 () BalanceConc!3042)

(assert (=> b!450911 (= lt!200174 (printTailRec!419 thiss!17480 lt!200195 0 (BalanceConc!3041 Empty!1516)))))

(assert (=> b!450911 (= lt!200174 (print!458 thiss!17480 lt!200195))))

(assert (=> b!450911 (= lt!200195 (singletonSeq!393 separatorToken!170))))

(assert (=> b!450911 (rulesProduceIndividualToken!482 thiss!17480 rules!1920 lt!200205)))

(declare-fun lt!200185 () Unit!7875)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!196 (LexerInterface!733 List!4380 List!4381 Token!1438) Unit!7875)

(assert (=> b!450911 (= lt!200185 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!196 thiss!17480 rules!1920 tokens!465 lt!200205))))

(assert (=> b!450911 (= lt!200205 (head!1095 (t!70899 tokens!465)))))

(declare-fun lt!200169 () Unit!7875)

(assert (=> b!450911 (= lt!200169 e!275617)))

(declare-fun c!91306 () Bool)

(declare-fun isEmpty!3322 (List!4381) Bool)

(assert (=> b!450911 (= c!91306 (isEmpty!3322 (t!70899 tokens!465)))))

(assert (=> b!450911 (= lt!200176 (maxPrefix!449 thiss!17480 rules!1920 lt!200175))))

(declare-fun lt!200214 () tuple2!5286)

(assert (=> b!450911 (= lt!200175 (_2!2859 lt!200214))))

(declare-fun lt!200190 () Unit!7875)

(declare-fun lemmaSamePrefixThenSameSuffix!292 (List!4379 List!4379 List!4379 List!4379 List!4379) Unit!7875)

(assert (=> b!450911 (= lt!200190 (lemmaSamePrefixThenSameSuffix!292 lt!200208 lt!200175 lt!200208 (_2!2859 lt!200214) lt!200192))))

(assert (=> b!450911 (= lt!200214 (get!1594 (maxPrefix!449 thiss!17480 rules!1920 lt!200192)))))

(declare-fun isPrefix!507 (List!4379 List!4379) Bool)

(assert (=> b!450911 (isPrefix!507 lt!200208 lt!200186)))

(declare-fun lt!200204 () Unit!7875)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!398 (List!4379 List!4379) Unit!7875)

(assert (=> b!450911 (= lt!200204 (lemmaConcatTwoListThenFirstIsPrefix!398 lt!200208 lt!200175))))

(assert (=> b!450911 e!275628))

(declare-fun res!200215 () Bool)

(assert (=> b!450911 (=> res!200215 e!275628)))

(assert (=> b!450911 (= res!200215 (isEmpty!3322 tokens!465))))

(declare-fun lt!200201 () Unit!7875)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!254 (LexerInterface!733 List!4380 List!4381 Token!1438) Unit!7875)

(assert (=> b!450911 (= lt!200201 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!254 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun res!200220 () Bool)

(assert (=> start!42638 (=> (not res!200220) (not e!275620))))

(assert (=> start!42638 (= res!200220 ((_ is Lexer!731) thiss!17480))))

(assert (=> start!42638 e!275620))

(assert (=> start!42638 true))

(assert (=> start!42638 e!275639))

(assert (=> start!42638 (and (inv!5446 separatorToken!170) e!275641)))

(assert (=> start!42638 e!275604))

(declare-fun b!450874 () Bool)

(declare-fun Unit!7880 () Unit!7875)

(assert (=> b!450874 (= e!275610 Unit!7880)))

(declare-fun b!450912 () Bool)

(declare-fun Unit!7881 () Unit!7875)

(assert (=> b!450912 (= e!275632 Unit!7881)))

(declare-fun b!450913 () Bool)

(declare-fun Unit!7882 () Unit!7875)

(assert (=> b!450913 (= e!275632 Unit!7882)))

(declare-fun lt!200196 () Unit!7875)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!106 (LexerInterface!733 List!4380 List!4380 Rule!1494 Rule!1494 C!3064) Unit!7875)

(assert (=> b!450913 (= lt!200196 (lemmaSepRuleNotContainsCharContainedInANonSepRule!106 thiss!17480 rules!1920 rules!1920 (rule!1536 lt!200205) (rule!1536 separatorToken!170) lt!200193))))

(assert (=> b!450913 false))

(declare-fun b!450914 () Bool)

(declare-fun res!200217 () Bool)

(assert (=> b!450914 (=> (not res!200217) (not e!275626))))

(assert (=> b!450914 (= res!200217 (= (apply!1112 (_1!2861 lt!200212) 0) separatorToken!170))))

(declare-fun b!450915 () Bool)

(declare-fun res!200209 () Bool)

(assert (=> b!450915 (=> (not res!200209) (not e!275633))))

(declare-fun sepAndNonSepRulesDisjointChars!436 (List!4380 List!4380) Bool)

(assert (=> b!450915 (= res!200209 (sepAndNonSepRulesDisjointChars!436 rules!1920 rules!1920))))

(declare-fun b!450916 () Bool)

(declare-fun res!200203 () Bool)

(assert (=> b!450916 (=> res!200203 e!275629)))

(assert (=> b!450916 (= res!200203 (not (rulesProduceIndividualToken!482 thiss!17480 rules!1920 (h!9768 tokens!465))))))

(declare-fun b!450917 () Bool)

(declare-fun e!275630 () Bool)

(assert (=> b!450917 (= e!275630 e!275629)))

(declare-fun res!200204 () Bool)

(assert (=> b!450917 (=> res!200204 e!275629)))

(declare-fun lt!200207 () List!4379)

(declare-fun lt!200168 () List!4379)

(assert (=> b!450917 (= res!200204 (or (not (= lt!200168 lt!200207)) (not (= lt!200207 lt!200208)) (not (= lt!200168 lt!200208))))))

(declare-fun printList!407 (LexerInterface!733 List!4381) List!4379)

(assert (=> b!450917 (= lt!200207 (printList!407 thiss!17480 (Cons!4371 (h!9768 tokens!465) Nil!4371)))))

(declare-fun lt!200198 () BalanceConc!3040)

(assert (=> b!450917 (= lt!200168 (list!1937 lt!200198))))

(declare-fun lt!200189 () BalanceConc!3042)

(assert (=> b!450917 (= lt!200198 (printTailRec!419 thiss!17480 lt!200189 0 (BalanceConc!3041 Empty!1516)))))

(assert (=> b!450917 (= lt!200198 (print!458 thiss!17480 lt!200189))))

(assert (=> b!450917 (= lt!200189 (singletonSeq!393 (h!9768 tokens!465)))))

(declare-fun b!450918 () Bool)

(declare-fun res!200227 () Bool)

(assert (=> b!450918 (=> (not res!200227) (not e!275627))))

(assert (=> b!450918 (= res!200227 (= (list!1937 (seqFromList!1060 lt!200192)) lt!200184))))

(declare-fun b!450919 () Bool)

(declare-fun ListPrimitiveSize!34 (List!4381) Int)

(assert (=> b!450919 (= e!275619 (< (ListPrimitiveSize!34 (t!70899 tokens!465)) (ListPrimitiveSize!34 tokens!465)))))

(declare-fun b!450920 () Bool)

(declare-fun res!200208 () Bool)

(assert (=> b!450920 (=> res!200208 e!275629)))

(declare-fun isEmpty!3323 (BalanceConc!3042) Bool)

(assert (=> b!450920 (= res!200208 (isEmpty!3323 (_1!2861 (lex!525 thiss!17480 rules!1920 (seqFromList!1060 lt!200208)))))))

(declare-fun b!450921 () Bool)

(assert (=> b!450921 (= e!275640 e!275630)))

(declare-fun res!200230 () Bool)

(assert (=> b!450921 (=> res!200230 e!275630)))

(assert (=> b!450921 (= res!200230 e!275631)))

(declare-fun res!200213 () Bool)

(assert (=> b!450921 (=> (not res!200213) (not e!275631))))

(assert (=> b!450921 (= res!200213 (not lt!200173))))

(assert (=> b!450921 (= lt!200173 (= lt!200192 lt!200186))))

(assert (= (and start!42638 res!200220) b!450884))

(assert (= (and b!450884 res!200201) b!450877))

(assert (= (and b!450877 res!200211) b!450881))

(assert (= (and b!450881 res!200223) b!450897))

(assert (= (and b!450897 res!200226) b!450875))

(assert (= (and b!450875 res!200199) b!450893))

(assert (= (and b!450893 res!200228) b!450915))

(assert (= (and b!450915 res!200209) b!450878))

(assert (= (and b!450878 res!200221) b!450892))

(assert (= (and b!450892 res!200231) b!450918))

(assert (= (and b!450918 res!200227) b!450901))

(assert (= (and b!450901 (not res!200229)) b!450921))

(assert (= (and b!450921 res!200213) b!450888))

(assert (= (and b!450921 (not res!200230)) b!450917))

(assert (= (and b!450917 (not res!200204)) b!450916))

(assert (= (and b!450916 (not res!200203)) b!450920))

(assert (= (and b!450920 (not res!200208)) b!450894))

(assert (= (and b!450894 (not res!200205)) b!450908))

(assert (= (and b!450908 res!200212) b!450876))

(assert (= (and b!450876 res!200222) b!450895))

(assert (= (and b!450908 (not res!200214)) b!450911))

(assert (= (and b!450911 (not res!200215)) b!450906))

(assert (= (and b!450906 res!200206) b!450898))

(assert (= (and b!450911 c!91306) b!450896))

(assert (= (and b!450911 (not c!91306)) b!450883))

(assert (= (and b!450911 res!200218) b!450914))

(assert (= (and b!450914 res!200217) b!450910))

(assert (= (and b!450911 res!200198) b!450880))

(assert (= (and b!450880 res!200210) b!450909))

(assert (= (and b!450911 res!200225) b!450902))

(assert (= (and b!450902 res!200219) b!450905))

(assert (= (and b!450911 res!200202) b!450886))

(assert (= (and b!450886 res!200216) b!450891))

(assert (= (and b!450911 c!91305) b!450889))

(assert (= (and b!450911 (not c!91305)) b!450874))

(assert (= (and b!450889 res!200224) b!450873))

(assert (= (and b!450911 c!91307) b!450913))

(assert (= (and b!450911 (not c!91307)) b!450912))

(assert (= (and b!450911 (not res!200207)) b!450907))

(assert (= (and b!450907 (not res!200200)) b!450919))

(assert (= b!450882 b!450890))

(assert (= b!450887 b!450882))

(assert (= (and start!42638 ((_ is Cons!4370) rules!1920)) b!450887))

(assert (= b!450879 b!450885))

(assert (= b!450872 b!450879))

(assert (= start!42638 b!450872))

(assert (= b!450903 b!450899))

(assert (= b!450900 b!450903))

(assert (= b!450904 b!450900))

(assert (= (and start!42638 ((_ is Cons!4371) tokens!465)) b!450904))

(declare-fun m!713811 () Bool)

(assert (=> b!450908 m!713811))

(declare-fun m!713813 () Bool)

(assert (=> b!450908 m!713813))

(declare-fun m!713815 () Bool)

(assert (=> b!450908 m!713815))

(declare-fun m!713817 () Bool)

(assert (=> b!450900 m!713817))

(declare-fun m!713819 () Bool)

(assert (=> b!450877 m!713819))

(declare-fun m!713821 () Bool)

(assert (=> b!450907 m!713821))

(declare-fun m!713823 () Bool)

(assert (=> b!450915 m!713823))

(declare-fun m!713825 () Bool)

(assert (=> start!42638 m!713825))

(declare-fun m!713827 () Bool)

(assert (=> b!450918 m!713827))

(assert (=> b!450918 m!713827))

(declare-fun m!713829 () Bool)

(assert (=> b!450918 m!713829))

(declare-fun m!713831 () Bool)

(assert (=> b!450876 m!713831))

(declare-fun m!713833 () Bool)

(assert (=> b!450905 m!713833))

(declare-fun m!713835 () Bool)

(assert (=> b!450888 m!713835))

(declare-fun m!713837 () Bool)

(assert (=> b!450893 m!713837))

(declare-fun m!713839 () Bool)

(assert (=> b!450906 m!713839))

(declare-fun m!713841 () Bool)

(assert (=> b!450906 m!713841))

(declare-fun m!713843 () Bool)

(assert (=> b!450880 m!713843))

(declare-fun m!713845 () Bool)

(assert (=> b!450880 m!713845))

(declare-fun m!713847 () Bool)

(assert (=> b!450889 m!713847))

(declare-fun m!713849 () Bool)

(assert (=> b!450889 m!713849))

(declare-fun m!713851 () Bool)

(assert (=> b!450895 m!713851))

(declare-fun m!713853 () Bool)

(assert (=> b!450914 m!713853))

(declare-fun m!713855 () Bool)

(assert (=> b!450881 m!713855))

(declare-fun m!713857 () Bool)

(assert (=> b!450881 m!713857))

(declare-fun m!713859 () Bool)

(assert (=> b!450917 m!713859))

(declare-fun m!713861 () Bool)

(assert (=> b!450917 m!713861))

(declare-fun m!713863 () Bool)

(assert (=> b!450917 m!713863))

(declare-fun m!713865 () Bool)

(assert (=> b!450917 m!713865))

(declare-fun m!713867 () Bool)

(assert (=> b!450917 m!713867))

(declare-fun m!713869 () Bool)

(assert (=> b!450897 m!713869))

(declare-fun m!713871 () Bool)

(assert (=> b!450886 m!713871))

(declare-fun m!713873 () Bool)

(assert (=> b!450886 m!713873))

(declare-fun m!713875 () Bool)

(assert (=> b!450902 m!713875))

(declare-fun m!713877 () Bool)

(assert (=> b!450901 m!713877))

(declare-fun m!713879 () Bool)

(assert (=> b!450901 m!713879))

(declare-fun m!713881 () Bool)

(assert (=> b!450901 m!713881))

(declare-fun m!713883 () Bool)

(assert (=> b!450901 m!713883))

(declare-fun m!713885 () Bool)

(assert (=> b!450901 m!713885))

(declare-fun m!713887 () Bool)

(assert (=> b!450901 m!713887))

(declare-fun m!713889 () Bool)

(assert (=> b!450901 m!713889))

(assert (=> b!450901 m!713879))

(declare-fun m!713891 () Bool)

(assert (=> b!450901 m!713891))

(assert (=> b!450901 m!713887))

(declare-fun m!713893 () Bool)

(assert (=> b!450901 m!713893))

(declare-fun m!713895 () Bool)

(assert (=> b!450901 m!713895))

(declare-fun m!713897 () Bool)

(assert (=> b!450901 m!713897))

(assert (=> b!450901 m!713883))

(assert (=> b!450901 m!713897))

(declare-fun m!713899 () Bool)

(assert (=> b!450901 m!713899))

(declare-fun m!713901 () Bool)

(assert (=> b!450901 m!713901))

(declare-fun m!713903 () Bool)

(assert (=> b!450898 m!713903))

(declare-fun m!713905 () Bool)

(assert (=> b!450898 m!713905))

(declare-fun m!713907 () Bool)

(assert (=> b!450894 m!713907))

(assert (=> b!450894 m!713907))

(declare-fun m!713909 () Bool)

(assert (=> b!450894 m!713909))

(assert (=> b!450894 m!713909))

(declare-fun m!713911 () Bool)

(assert (=> b!450894 m!713911))

(declare-fun m!713913 () Bool)

(assert (=> b!450894 m!713913))

(declare-fun m!713915 () Bool)

(assert (=> b!450913 m!713915))

(declare-fun m!713917 () Bool)

(assert (=> b!450920 m!713917))

(assert (=> b!450920 m!713917))

(declare-fun m!713919 () Bool)

(assert (=> b!450920 m!713919))

(declare-fun m!713921 () Bool)

(assert (=> b!450920 m!713921))

(declare-fun m!713923 () Bool)

(assert (=> b!450879 m!713923))

(declare-fun m!713925 () Bool)

(assert (=> b!450879 m!713925))

(declare-fun m!713927 () Bool)

(assert (=> b!450916 m!713927))

(declare-fun m!713929 () Bool)

(assert (=> b!450910 m!713929))

(declare-fun m!713931 () Bool)

(assert (=> b!450904 m!713931))

(declare-fun m!713933 () Bool)

(assert (=> b!450884 m!713933))

(declare-fun m!713935 () Bool)

(assert (=> b!450882 m!713935))

(declare-fun m!713937 () Bool)

(assert (=> b!450882 m!713937))

(declare-fun m!713939 () Bool)

(assert (=> b!450911 m!713939))

(declare-fun m!713941 () Bool)

(assert (=> b!450911 m!713941))

(declare-fun m!713943 () Bool)

(assert (=> b!450911 m!713943))

(declare-fun m!713945 () Bool)

(assert (=> b!450911 m!713945))

(declare-fun m!713947 () Bool)

(assert (=> b!450911 m!713947))

(declare-fun m!713949 () Bool)

(assert (=> b!450911 m!713949))

(declare-fun m!713951 () Bool)

(assert (=> b!450911 m!713951))

(declare-fun m!713953 () Bool)

(assert (=> b!450911 m!713953))

(declare-fun m!713955 () Bool)

(assert (=> b!450911 m!713955))

(declare-fun m!713957 () Bool)

(assert (=> b!450911 m!713957))

(declare-fun m!713959 () Bool)

(assert (=> b!450911 m!713959))

(declare-fun m!713961 () Bool)

(assert (=> b!450911 m!713961))

(declare-fun m!713963 () Bool)

(assert (=> b!450911 m!713963))

(declare-fun m!713965 () Bool)

(assert (=> b!450911 m!713965))

(declare-fun m!713967 () Bool)

(assert (=> b!450911 m!713967))

(declare-fun m!713969 () Bool)

(assert (=> b!450911 m!713969))

(declare-fun m!713971 () Bool)

(assert (=> b!450911 m!713971))

(declare-fun m!713973 () Bool)

(assert (=> b!450911 m!713973))

(declare-fun m!713975 () Bool)

(assert (=> b!450911 m!713975))

(declare-fun m!713977 () Bool)

(assert (=> b!450911 m!713977))

(declare-fun m!713979 () Bool)

(assert (=> b!450911 m!713979))

(declare-fun m!713981 () Bool)

(assert (=> b!450911 m!713981))

(assert (=> b!450911 m!713841))

(assert (=> b!450911 m!713943))

(declare-fun m!713983 () Bool)

(assert (=> b!450911 m!713983))

(declare-fun m!713985 () Bool)

(assert (=> b!450911 m!713985))

(assert (=> b!450911 m!713949))

(declare-fun m!713987 () Bool)

(assert (=> b!450911 m!713987))

(declare-fun m!713989 () Bool)

(assert (=> b!450911 m!713989))

(declare-fun m!713991 () Bool)

(assert (=> b!450911 m!713991))

(assert (=> b!450911 m!713841))

(declare-fun m!713993 () Bool)

(assert (=> b!450911 m!713993))

(declare-fun m!713995 () Bool)

(assert (=> b!450911 m!713995))

(declare-fun m!713997 () Bool)

(assert (=> b!450911 m!713997))

(declare-fun m!713999 () Bool)

(assert (=> b!450911 m!713999))

(declare-fun m!714001 () Bool)

(assert (=> b!450911 m!714001))

(assert (=> b!450911 m!713963))

(declare-fun m!714003 () Bool)

(assert (=> b!450911 m!714003))

(declare-fun m!714005 () Bool)

(assert (=> b!450911 m!714005))

(declare-fun m!714007 () Bool)

(assert (=> b!450911 m!714007))

(declare-fun m!714009 () Bool)

(assert (=> b!450911 m!714009))

(declare-fun m!714011 () Bool)

(assert (=> b!450911 m!714011))

(declare-fun m!714013 () Bool)

(assert (=> b!450911 m!714013))

(declare-fun m!714015 () Bool)

(assert (=> b!450919 m!714015))

(declare-fun m!714017 () Bool)

(assert (=> b!450919 m!714017))

(declare-fun m!714019 () Bool)

(assert (=> b!450903 m!714019))

(declare-fun m!714021 () Bool)

(assert (=> b!450903 m!714021))

(declare-fun m!714023 () Bool)

(assert (=> b!450872 m!714023))

(declare-fun m!714025 () Bool)

(assert (=> b!450892 m!714025))

(assert (=> b!450892 m!714025))

(declare-fun m!714027 () Bool)

(assert (=> b!450892 m!714027))

(declare-fun m!714029 () Bool)

(assert (=> b!450892 m!714029))

(check-sat (not b!450900) (not b!450904) (not b!450916) (not b_next!12503) (not b!450877) (not b!450892) (not b_next!12497) (not b!450919) (not b!450905) (not b_next!12501) (not b!450902) b_and!48503 (not b!450882) (not b_next!12507) b_and!48505 (not b!450930) (not b!450913) (not b!450914) (not b!450876) (not b!450889) (not b!450894) (not b!450886) (not b!450918) (not b!450903) (not b!450898) (not b!450897) (not b!450920) (not b!450910) (not b!450911) (not b!450906) (not b!450884) (not b!450908) b_and!48511 (not start!42638) (not b_next!12505) (not b!450880) (not b!450895) (not b!450888) b_and!48509 (not b!450893) (not b_next!12499) (not b!450872) (not b!450915) (not b!450879) b_and!48507 (not b!450881) (not b!450887) b_and!48501 (not b!450907) (not b!450917) (not b!450901))
(check-sat b_and!48503 b_and!48511 (not b_next!12505) (not b_next!12503) b_and!48509 (not b_next!12499) (not b_next!12497) b_and!48507 b_and!48501 (not b_next!12501) (not b_next!12507) b_and!48505)
(get-model)

(declare-fun d!172563 () Bool)

(declare-fun e!275676 () Bool)

(assert (=> d!172563 e!275676))

(declare-fun res!200282 () Bool)

(assert (=> d!172563 (=> (not res!200282) (not e!275676))))

(declare-fun lt!200240 () List!4379)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!733 (List!4379) (InoxSet C!3064))

(assert (=> d!172563 (= res!200282 (= (content!733 lt!200240) ((_ map or) (content!733 lt!200208) (content!733 lt!200216))))))

(declare-fun e!275677 () List!4379)

(assert (=> d!172563 (= lt!200240 e!275677)))

(declare-fun c!91319 () Bool)

(assert (=> d!172563 (= c!91319 ((_ is Nil!4369) lt!200208))))

(assert (=> d!172563 (= (++!1268 lt!200208 lt!200216) lt!200240)))

(declare-fun b!450991 () Bool)

(assert (=> b!450991 (= e!275676 (or (not (= lt!200216 Nil!4369)) (= lt!200240 lt!200208)))))

(declare-fun b!450990 () Bool)

(declare-fun res!200283 () Bool)

(assert (=> b!450990 (=> (not res!200283) (not e!275676))))

(declare-fun size!3596 (List!4379) Int)

(assert (=> b!450990 (= res!200283 (= (size!3596 lt!200240) (+ (size!3596 lt!200208) (size!3596 lt!200216))))))

(declare-fun b!450989 () Bool)

(assert (=> b!450989 (= e!275677 (Cons!4369 (h!9766 lt!200208) (++!1268 (t!70897 lt!200208) lt!200216)))))

(declare-fun b!450988 () Bool)

(assert (=> b!450988 (= e!275677 lt!200216)))

(assert (= (and d!172563 c!91319) b!450988))

(assert (= (and d!172563 (not c!91319)) b!450989))

(assert (= (and d!172563 res!200282) b!450990))

(assert (= (and b!450990 res!200283) b!450991))

(declare-fun m!714101 () Bool)

(assert (=> d!172563 m!714101))

(declare-fun m!714103 () Bool)

(assert (=> d!172563 m!714103))

(declare-fun m!714105 () Bool)

(assert (=> d!172563 m!714105))

(declare-fun m!714107 () Bool)

(assert (=> b!450990 m!714107))

(declare-fun m!714109 () Bool)

(assert (=> b!450990 m!714109))

(declare-fun m!714111 () Bool)

(assert (=> b!450990 m!714111))

(declare-fun m!714113 () Bool)

(assert (=> b!450989 m!714113))

(assert (=> b!450888 d!172563))

(declare-fun d!172565 () Bool)

(assert (=> d!172565 (not (matchR!389 (regex!847 (rule!1536 lt!200205)) lt!200200))))

(declare-fun lt!200243 () Unit!7875)

(declare-fun choose!3409 (Regex!1071 List!4379 C!3064) Unit!7875)

(assert (=> d!172565 (= lt!200243 (choose!3409 (regex!847 (rule!1536 lt!200205)) lt!200200 lt!200181))))

(declare-fun validRegex!314 (Regex!1071) Bool)

(assert (=> d!172565 (validRegex!314 (regex!847 (rule!1536 lt!200205)))))

(assert (=> d!172565 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!126 (regex!847 (rule!1536 lt!200205)) lt!200200 lt!200181) lt!200243)))

(declare-fun bs!55844 () Bool)

(assert (= bs!55844 d!172565))

(assert (=> bs!55844 m!713849))

(declare-fun m!714115 () Bool)

(assert (=> bs!55844 m!714115))

(declare-fun m!714117 () Bool)

(assert (=> bs!55844 m!714117))

(assert (=> b!450889 d!172565))

(declare-fun b!451022 () Bool)

(declare-fun res!200308 () Bool)

(declare-fun e!275695 () Bool)

(assert (=> b!451022 (=> (not res!200308) (not e!275695))))

(declare-fun call!31186 () Bool)

(assert (=> b!451022 (= res!200308 (not call!31186))))

(declare-fun b!451023 () Bool)

(declare-fun res!200304 () Bool)

(assert (=> b!451023 (=> (not res!200304) (not e!275695))))

(declare-fun tail!629 (List!4379) List!4379)

(assert (=> b!451023 (= res!200304 (isEmpty!3319 (tail!629 lt!200200)))))

(declare-fun b!451024 () Bool)

(assert (=> b!451024 (= e!275695 (= (head!1096 lt!200200) (c!91309 (regex!847 (rule!1536 lt!200205)))))))

(declare-fun bm!31181 () Bool)

(assert (=> bm!31181 (= call!31186 (isEmpty!3319 lt!200200))))

(declare-fun b!451025 () Bool)

(declare-fun e!275700 () Bool)

(declare-fun lt!200248 () Bool)

(assert (=> b!451025 (= e!275700 (not lt!200248))))

(declare-fun b!451026 () Bool)

(declare-fun e!275694 () Bool)

(assert (=> b!451026 (= e!275694 (= lt!200248 call!31186))))

(declare-fun d!172567 () Bool)

(assert (=> d!172567 e!275694))

(declare-fun c!91328 () Bool)

(assert (=> d!172567 (= c!91328 ((_ is EmptyExpr!1071) (regex!847 (rule!1536 lt!200205))))))

(declare-fun e!275697 () Bool)

(assert (=> d!172567 (= lt!200248 e!275697)))

(declare-fun c!91329 () Bool)

(assert (=> d!172567 (= c!91329 (isEmpty!3319 lt!200200))))

(assert (=> d!172567 (validRegex!314 (regex!847 (rule!1536 lt!200205)))))

(assert (=> d!172567 (= (matchR!389 (regex!847 (rule!1536 lt!200205)) lt!200200) lt!200248)))

(declare-fun b!451027 () Bool)

(declare-fun derivativeStep!205 (Regex!1071 C!3064) Regex!1071)

(assert (=> b!451027 (= e!275697 (matchR!389 (derivativeStep!205 (regex!847 (rule!1536 lt!200205)) (head!1096 lt!200200)) (tail!629 lt!200200)))))

(declare-fun b!451028 () Bool)

(declare-fun e!275696 () Bool)

(declare-fun e!275699 () Bool)

(assert (=> b!451028 (= e!275696 e!275699)))

(declare-fun res!200303 () Bool)

(assert (=> b!451028 (=> res!200303 e!275699)))

(assert (=> b!451028 (= res!200303 call!31186)))

(declare-fun b!451029 () Bool)

(declare-fun e!275698 () Bool)

(assert (=> b!451029 (= e!275698 e!275696)))

(declare-fun res!200309 () Bool)

(assert (=> b!451029 (=> (not res!200309) (not e!275696))))

(assert (=> b!451029 (= res!200309 (not lt!200248))))

(declare-fun b!451030 () Bool)

(assert (=> b!451030 (= e!275699 (not (= (head!1096 lt!200200) (c!91309 (regex!847 (rule!1536 lt!200205))))))))

(declare-fun b!451031 () Bool)

(declare-fun nullable!239 (Regex!1071) Bool)

(assert (=> b!451031 (= e!275697 (nullable!239 (regex!847 (rule!1536 lt!200205))))))

(declare-fun b!451032 () Bool)

(declare-fun res!200306 () Bool)

(assert (=> b!451032 (=> res!200306 e!275698)))

(assert (=> b!451032 (= res!200306 (not ((_ is ElementMatch!1071) (regex!847 (rule!1536 lt!200205)))))))

(assert (=> b!451032 (= e!275700 e!275698)))

(declare-fun b!451033 () Bool)

(assert (=> b!451033 (= e!275694 e!275700)))

(declare-fun c!91327 () Bool)

(assert (=> b!451033 (= c!91327 ((_ is EmptyLang!1071) (regex!847 (rule!1536 lt!200205))))))

(declare-fun b!451034 () Bool)

(declare-fun res!200305 () Bool)

(assert (=> b!451034 (=> res!200305 e!275698)))

(assert (=> b!451034 (= res!200305 e!275695)))

(declare-fun res!200302 () Bool)

(assert (=> b!451034 (=> (not res!200302) (not e!275695))))

(assert (=> b!451034 (= res!200302 lt!200248)))

(declare-fun b!451035 () Bool)

(declare-fun res!200307 () Bool)

(assert (=> b!451035 (=> res!200307 e!275699)))

(assert (=> b!451035 (= res!200307 (not (isEmpty!3319 (tail!629 lt!200200))))))

(assert (= (and d!172567 c!91329) b!451031))

(assert (= (and d!172567 (not c!91329)) b!451027))

(assert (= (and d!172567 c!91328) b!451026))

(assert (= (and d!172567 (not c!91328)) b!451033))

(assert (= (and b!451033 c!91327) b!451025))

(assert (= (and b!451033 (not c!91327)) b!451032))

(assert (= (and b!451032 (not res!200306)) b!451034))

(assert (= (and b!451034 res!200302) b!451022))

(assert (= (and b!451022 res!200308) b!451023))

(assert (= (and b!451023 res!200304) b!451024))

(assert (= (and b!451034 (not res!200305)) b!451029))

(assert (= (and b!451029 res!200309) b!451028))

(assert (= (and b!451028 (not res!200303)) b!451035))

(assert (= (and b!451035 (not res!200307)) b!451030))

(assert (= (or b!451026 b!451022 b!451028) bm!31181))

(declare-fun m!714119 () Bool)

(assert (=> b!451035 m!714119))

(assert (=> b!451035 m!714119))

(declare-fun m!714121 () Bool)

(assert (=> b!451035 m!714121))

(declare-fun m!714123 () Bool)

(assert (=> bm!31181 m!714123))

(declare-fun m!714125 () Bool)

(assert (=> b!451031 m!714125))

(assert (=> d!172567 m!714123))

(assert (=> d!172567 m!714117))

(assert (=> b!451030 m!713979))

(assert (=> b!451027 m!713979))

(assert (=> b!451027 m!713979))

(declare-fun m!714127 () Bool)

(assert (=> b!451027 m!714127))

(assert (=> b!451027 m!714119))

(assert (=> b!451027 m!714127))

(assert (=> b!451027 m!714119))

(declare-fun m!714129 () Bool)

(assert (=> b!451027 m!714129))

(assert (=> b!451023 m!714119))

(assert (=> b!451023 m!714119))

(assert (=> b!451023 m!714121))

(assert (=> b!451024 m!713979))

(assert (=> b!450889 d!172567))

(declare-fun d!172569 () Bool)

(declare-fun lt!200252 () Bool)

(assert (=> d!172569 (= lt!200252 (isEmpty!3319 (list!1937 (_2!2861 lt!200212))))))

(declare-fun isEmpty!3328 (Conc!1516) Bool)

(assert (=> d!172569 (= lt!200252 (isEmpty!3328 (c!91308 (_2!2861 lt!200212))))))

(assert (=> d!172569 (= (isEmpty!3321 (_2!2861 lt!200212)) lt!200252)))

(declare-fun bs!55848 () Bool)

(assert (= bs!55848 d!172569))

(declare-fun m!714141 () Bool)

(assert (=> bs!55848 m!714141))

(assert (=> bs!55848 m!714141))

(declare-fun m!714143 () Bool)

(assert (=> bs!55848 m!714143))

(declare-fun m!714145 () Bool)

(assert (=> bs!55848 m!714145))

(assert (=> b!450910 d!172569))

(declare-fun d!172575 () Bool)

(declare-fun lt!200297 () BalanceConc!3040)

(declare-fun printListTailRec!205 (LexerInterface!733 List!4381 List!4379) List!4379)

(declare-fun dropList!240 (BalanceConc!3042 Int) List!4381)

(assert (=> d!172575 (= (list!1937 lt!200297) (printListTailRec!205 thiss!17480 (dropList!240 lt!200195 0) (list!1937 (BalanceConc!3041 Empty!1516))))))

(declare-fun e!275730 () BalanceConc!3040)

(assert (=> d!172575 (= lt!200297 e!275730)))

(declare-fun c!91341 () Bool)

(assert (=> d!172575 (= c!91341 (>= 0 (size!3591 lt!200195)))))

(declare-fun e!275731 () Bool)

(assert (=> d!172575 e!275731))

(declare-fun res!200325 () Bool)

(assert (=> d!172575 (=> (not res!200325) (not e!275731))))

(assert (=> d!172575 (= res!200325 (>= 0 0))))

(assert (=> d!172575 (= (printTailRec!419 thiss!17480 lt!200195 0 (BalanceConc!3041 Empty!1516)) lt!200297)))

(declare-fun b!451076 () Bool)

(assert (=> b!451076 (= e!275731 (<= 0 (size!3591 lt!200195)))))

(declare-fun b!451077 () Bool)

(assert (=> b!451077 (= e!275730 (BalanceConc!3041 Empty!1516))))

(declare-fun b!451078 () Bool)

(declare-fun ++!1270 (BalanceConc!3040 BalanceConc!3040) BalanceConc!3040)

(assert (=> b!451078 (= e!275730 (printTailRec!419 thiss!17480 lt!200195 (+ 0 1) (++!1270 (BalanceConc!3041 Empty!1516) (charsOf!490 (apply!1112 lt!200195 0)))))))

(declare-fun lt!200293 () List!4381)

(declare-fun list!1940 (BalanceConc!3042) List!4381)

(assert (=> b!451078 (= lt!200293 (list!1940 lt!200195))))

(declare-fun lt!200291 () Unit!7875)

(declare-fun lemmaDropApply!280 (List!4381 Int) Unit!7875)

(assert (=> b!451078 (= lt!200291 (lemmaDropApply!280 lt!200293 0))))

(declare-fun drop!309 (List!4381 Int) List!4381)

(declare-fun apply!1116 (List!4381 Int) Token!1438)

(assert (=> b!451078 (= (head!1095 (drop!309 lt!200293 0)) (apply!1116 lt!200293 0))))

(declare-fun lt!200296 () Unit!7875)

(assert (=> b!451078 (= lt!200296 lt!200291)))

(declare-fun lt!200292 () List!4381)

(assert (=> b!451078 (= lt!200292 (list!1940 lt!200195))))

(declare-fun lt!200295 () Unit!7875)

(declare-fun lemmaDropTail!272 (List!4381 Int) Unit!7875)

(assert (=> b!451078 (= lt!200295 (lemmaDropTail!272 lt!200292 0))))

(declare-fun tail!630 (List!4381) List!4381)

(assert (=> b!451078 (= (tail!630 (drop!309 lt!200292 0)) (drop!309 lt!200292 (+ 0 1)))))

(declare-fun lt!200294 () Unit!7875)

(assert (=> b!451078 (= lt!200294 lt!200295)))

(assert (= (and d!172575 res!200325) b!451076))

(assert (= (and d!172575 c!91341) b!451077))

(assert (= (and d!172575 (not c!91341)) b!451078))

(declare-fun m!714199 () Bool)

(assert (=> d!172575 m!714199))

(declare-fun m!714201 () Bool)

(assert (=> d!172575 m!714201))

(declare-fun m!714203 () Bool)

(assert (=> d!172575 m!714203))

(assert (=> d!172575 m!714199))

(assert (=> d!172575 m!714201))

(declare-fun m!714205 () Bool)

(assert (=> d!172575 m!714205))

(declare-fun m!714207 () Bool)

(assert (=> d!172575 m!714207))

(assert (=> b!451076 m!714205))

(declare-fun m!714209 () Bool)

(assert (=> b!451078 m!714209))

(declare-fun m!714211 () Bool)

(assert (=> b!451078 m!714211))

(assert (=> b!451078 m!714211))

(declare-fun m!714213 () Bool)

(assert (=> b!451078 m!714213))

(declare-fun m!714215 () Bool)

(assert (=> b!451078 m!714215))

(declare-fun m!714217 () Bool)

(assert (=> b!451078 m!714217))

(declare-fun m!714219 () Bool)

(assert (=> b!451078 m!714219))

(declare-fun m!714221 () Bool)

(assert (=> b!451078 m!714221))

(declare-fun m!714223 () Bool)

(assert (=> b!451078 m!714223))

(declare-fun m!714225 () Bool)

(assert (=> b!451078 m!714225))

(declare-fun m!714227 () Bool)

(assert (=> b!451078 m!714227))

(assert (=> b!451078 m!714209))

(assert (=> b!451078 m!714225))

(declare-fun m!714229 () Bool)

(assert (=> b!451078 m!714229))

(assert (=> b!451078 m!714213))

(declare-fun m!714231 () Bool)

(assert (=> b!451078 m!714231))

(assert (=> b!451078 m!714229))

(declare-fun m!714233 () Bool)

(assert (=> b!451078 m!714233))

(assert (=> b!450911 d!172575))

(declare-fun d!172587 () Bool)

(declare-fun e!275740 () Bool)

(assert (=> d!172587 e!275740))

(declare-fun res!200331 () Bool)

(assert (=> d!172587 (=> (not res!200331) (not e!275740))))

(declare-fun lt!200303 () BalanceConc!3042)

(assert (=> d!172587 (= res!200331 (= (list!1940 lt!200303) (Cons!4371 lt!200205 Nil!4371)))))

(declare-fun singleton!190 (Token!1438) BalanceConc!3042)

(assert (=> d!172587 (= lt!200303 (singleton!190 lt!200205))))

(assert (=> d!172587 (= (singletonSeq!393 lt!200205) lt!200303)))

(declare-fun b!451090 () Bool)

(declare-fun isBalanced!467 (Conc!1517) Bool)

(assert (=> b!451090 (= e!275740 (isBalanced!467 (c!91310 lt!200303)))))

(assert (= (and d!172587 res!200331) b!451090))

(declare-fun m!714249 () Bool)

(assert (=> d!172587 m!714249))

(declare-fun m!714251 () Bool)

(assert (=> d!172587 m!714251))

(declare-fun m!714253 () Bool)

(assert (=> b!451090 m!714253))

(assert (=> b!450911 d!172587))

(declare-fun d!172593 () Bool)

(assert (=> d!172593 (= (isEmpty!3322 (t!70899 tokens!465)) ((_ is Nil!4371) (t!70899 tokens!465)))))

(assert (=> b!450911 d!172593))

(declare-fun b!451123 () Bool)

(declare-fun e!275763 () Bool)

(declare-fun lt!200332 () tuple2!5290)

(assert (=> b!451123 (= e!275763 (not (isEmpty!3323 (_1!2861 lt!200332))))))

(declare-fun d!172595 () Bool)

(declare-fun e!275764 () Bool)

(assert (=> d!172595 e!275764))

(declare-fun res!200353 () Bool)

(assert (=> d!172595 (=> (not res!200353) (not e!275764))))

(declare-fun e!275762 () Bool)

(assert (=> d!172595 (= res!200353 e!275762)))

(declare-fun c!91352 () Bool)

(assert (=> d!172595 (= c!91352 (> (size!3591 (_1!2861 lt!200332)) 0))))

(declare-fun lexTailRecV2!252 (LexerInterface!733 List!4380 BalanceConc!3040 BalanceConc!3040 BalanceConc!3040 BalanceConc!3042) tuple2!5290)

(assert (=> d!172595 (= lt!200332 (lexTailRecV2!252 thiss!17480 rules!1920 lt!200174 (BalanceConc!3041 Empty!1516) lt!200174 (BalanceConc!3043 Empty!1517)))))

(assert (=> d!172595 (= (lex!525 thiss!17480 rules!1920 lt!200174) lt!200332)))

(declare-fun b!451124 () Bool)

(assert (=> b!451124 (= e!275762 (= (_2!2861 lt!200332) lt!200174))))

(declare-fun b!451125 () Bool)

(declare-fun res!200352 () Bool)

(assert (=> b!451125 (=> (not res!200352) (not e!275764))))

(declare-datatypes ((tuple2!5294 0))(
  ( (tuple2!5295 (_1!2863 List!4381) (_2!2863 List!4379)) )
))
(declare-fun lexList!285 (LexerInterface!733 List!4380 List!4379) tuple2!5294)

(assert (=> b!451125 (= res!200352 (= (list!1940 (_1!2861 lt!200332)) (_1!2863 (lexList!285 thiss!17480 rules!1920 (list!1937 lt!200174)))))))

(declare-fun b!451126 () Bool)

(assert (=> b!451126 (= e!275764 (= (list!1937 (_2!2861 lt!200332)) (_2!2863 (lexList!285 thiss!17480 rules!1920 (list!1937 lt!200174)))))))

(declare-fun b!451127 () Bool)

(assert (=> b!451127 (= e!275762 e!275763)))

(declare-fun res!200354 () Bool)

(declare-fun size!3597 (BalanceConc!3040) Int)

(assert (=> b!451127 (= res!200354 (< (size!3597 (_2!2861 lt!200332)) (size!3597 lt!200174)))))

(assert (=> b!451127 (=> (not res!200354) (not e!275763))))

(assert (= (and d!172595 c!91352) b!451127))

(assert (= (and d!172595 (not c!91352)) b!451124))

(assert (= (and b!451127 res!200354) b!451123))

(assert (= (and d!172595 res!200353) b!451125))

(assert (= (and b!451125 res!200352) b!451126))

(declare-fun m!714337 () Bool)

(assert (=> b!451127 m!714337))

(declare-fun m!714339 () Bool)

(assert (=> b!451127 m!714339))

(declare-fun m!714341 () Bool)

(assert (=> b!451126 m!714341))

(declare-fun m!714343 () Bool)

(assert (=> b!451126 m!714343))

(assert (=> b!451126 m!714343))

(declare-fun m!714345 () Bool)

(assert (=> b!451126 m!714345))

(declare-fun m!714347 () Bool)

(assert (=> d!172595 m!714347))

(declare-fun m!714349 () Bool)

(assert (=> d!172595 m!714349))

(declare-fun m!714351 () Bool)

(assert (=> b!451123 m!714351))

(declare-fun m!714353 () Bool)

(assert (=> b!451125 m!714353))

(assert (=> b!451125 m!714343))

(assert (=> b!451125 m!714343))

(assert (=> b!451125 m!714345))

(assert (=> b!450911 d!172595))

(declare-fun d!172615 () Bool)

(declare-fun lt!200335 () Int)

(declare-fun size!3598 (List!4381) Int)

(assert (=> d!172615 (= lt!200335 (size!3598 (list!1940 (_1!2861 lt!200212))))))

(declare-fun size!3599 (Conc!1517) Int)

(assert (=> d!172615 (= lt!200335 (size!3599 (c!91310 (_1!2861 lt!200212))))))

(assert (=> d!172615 (= (size!3591 (_1!2861 lt!200212)) lt!200335)))

(declare-fun bs!55855 () Bool)

(assert (= bs!55855 d!172615))

(declare-fun m!714355 () Bool)

(assert (=> bs!55855 m!714355))

(assert (=> bs!55855 m!714355))

(declare-fun m!714357 () Bool)

(assert (=> bs!55855 m!714357))

(declare-fun m!714359 () Bool)

(assert (=> bs!55855 m!714359))

(assert (=> b!450911 d!172615))

(declare-fun d!172617 () Bool)

(assert (=> d!172617 (= lt!200175 (_2!2859 lt!200214))))

(declare-fun lt!200338 () Unit!7875)

(declare-fun choose!3411 (List!4379 List!4379 List!4379 List!4379 List!4379) Unit!7875)

(assert (=> d!172617 (= lt!200338 (choose!3411 lt!200208 lt!200175 lt!200208 (_2!2859 lt!200214) lt!200192))))

(assert (=> d!172617 (isPrefix!507 lt!200208 lt!200192)))

(assert (=> d!172617 (= (lemmaSamePrefixThenSameSuffix!292 lt!200208 lt!200175 lt!200208 (_2!2859 lt!200214) lt!200192) lt!200338)))

(declare-fun bs!55856 () Bool)

(assert (= bs!55856 d!172617))

(declare-fun m!714361 () Bool)

(assert (=> bs!55856 m!714361))

(declare-fun m!714363 () Bool)

(assert (=> bs!55856 m!714363))

(assert (=> b!450911 d!172617))

(declare-fun d!172619 () Bool)

(declare-fun lt!200341 () BalanceConc!3040)

(assert (=> d!172619 (= (list!1937 lt!200341) (printList!407 thiss!17480 (list!1940 lt!200187)))))

(assert (=> d!172619 (= lt!200341 (printTailRec!419 thiss!17480 lt!200187 0 (BalanceConc!3041 Empty!1516)))))

(assert (=> d!172619 (= (print!458 thiss!17480 lt!200187) lt!200341)))

(declare-fun bs!55857 () Bool)

(assert (= bs!55857 d!172619))

(declare-fun m!714365 () Bool)

(assert (=> bs!55857 m!714365))

(declare-fun m!714367 () Bool)

(assert (=> bs!55857 m!714367))

(assert (=> bs!55857 m!714367))

(declare-fun m!714369 () Bool)

(assert (=> bs!55857 m!714369))

(assert (=> bs!55857 m!714013))

(assert (=> b!450911 d!172619))

(declare-fun d!172621 () Bool)

(declare-fun e!275767 () Bool)

(assert (=> d!172621 e!275767))

(declare-fun res!200359 () Bool)

(assert (=> d!172621 (=> (not res!200359) (not e!275767))))

(assert (=> d!172621 (= res!200359 (isDefined!964 (getRuleFromTag!206 thiss!17480 rules!1920 (tag!1105 (rule!1536 separatorToken!170)))))))

(declare-fun lt!200344 () Unit!7875)

(declare-fun choose!3412 (LexerInterface!733 List!4380 List!4379 Token!1438) Unit!7875)

(assert (=> d!172621 (= lt!200344 (choose!3412 thiss!17480 rules!1920 lt!200199 separatorToken!170))))

(assert (=> d!172621 (rulesInvariant!699 thiss!17480 rules!1920)))

(assert (=> d!172621 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!206 thiss!17480 rules!1920 lt!200199 separatorToken!170) lt!200344)))

(declare-fun b!451132 () Bool)

(declare-fun res!200360 () Bool)

(assert (=> b!451132 (=> (not res!200360) (not e!275767))))

(assert (=> b!451132 (= res!200360 (matchR!389 (regex!847 (get!1593 (getRuleFromTag!206 thiss!17480 rules!1920 (tag!1105 (rule!1536 separatorToken!170))))) (list!1937 (charsOf!490 separatorToken!170))))))

(declare-fun b!451133 () Bool)

(assert (=> b!451133 (= e!275767 (= (rule!1536 separatorToken!170) (get!1593 (getRuleFromTag!206 thiss!17480 rules!1920 (tag!1105 (rule!1536 separatorToken!170))))))))

(assert (= (and d!172621 res!200359) b!451132))

(assert (= (and b!451132 res!200360) b!451133))

(assert (=> d!172621 m!713953))

(assert (=> d!172621 m!713953))

(declare-fun m!714371 () Bool)

(assert (=> d!172621 m!714371))

(declare-fun m!714373 () Bool)

(assert (=> d!172621 m!714373))

(assert (=> d!172621 m!713819))

(assert (=> b!451132 m!713953))

(assert (=> b!451132 m!713883))

(assert (=> b!451132 m!713885))

(assert (=> b!451132 m!713885))

(declare-fun m!714375 () Bool)

(assert (=> b!451132 m!714375))

(assert (=> b!451132 m!713883))

(assert (=> b!451132 m!713953))

(declare-fun m!714377 () Bool)

(assert (=> b!451132 m!714377))

(assert (=> b!451133 m!713953))

(assert (=> b!451133 m!713953))

(assert (=> b!451133 m!714377))

(assert (=> b!450911 d!172621))

(declare-fun b!451143 () Bool)

(declare-fun res!200372 () Bool)

(declare-fun e!275774 () Bool)

(assert (=> b!451143 (=> (not res!200372) (not e!275774))))

(assert (=> b!451143 (= res!200372 (= (head!1096 lt!200208) (head!1096 lt!200186)))))

(declare-fun b!451144 () Bool)

(assert (=> b!451144 (= e!275774 (isPrefix!507 (tail!629 lt!200208) (tail!629 lt!200186)))))

(declare-fun d!172623 () Bool)

(declare-fun e!275775 () Bool)

(assert (=> d!172623 e!275775))

(declare-fun res!200371 () Bool)

(assert (=> d!172623 (=> res!200371 e!275775)))

(declare-fun lt!200347 () Bool)

(assert (=> d!172623 (= res!200371 (not lt!200347))))

(declare-fun e!275776 () Bool)

(assert (=> d!172623 (= lt!200347 e!275776)))

(declare-fun res!200370 () Bool)

(assert (=> d!172623 (=> res!200370 e!275776)))

(assert (=> d!172623 (= res!200370 ((_ is Nil!4369) lt!200208))))

(assert (=> d!172623 (= (isPrefix!507 lt!200208 lt!200186) lt!200347)))

(declare-fun b!451145 () Bool)

(assert (=> b!451145 (= e!275775 (>= (size!3596 lt!200186) (size!3596 lt!200208)))))

(declare-fun b!451142 () Bool)

(assert (=> b!451142 (= e!275776 e!275774)))

(declare-fun res!200369 () Bool)

(assert (=> b!451142 (=> (not res!200369) (not e!275774))))

(assert (=> b!451142 (= res!200369 (not ((_ is Nil!4369) lt!200186)))))

(assert (= (and d!172623 (not res!200370)) b!451142))

(assert (= (and b!451142 res!200369) b!451143))

(assert (= (and b!451143 res!200372) b!451144))

(assert (= (and d!172623 (not res!200371)) b!451145))

(declare-fun m!714379 () Bool)

(assert (=> b!451143 m!714379))

(declare-fun m!714381 () Bool)

(assert (=> b!451143 m!714381))

(declare-fun m!714383 () Bool)

(assert (=> b!451144 m!714383))

(declare-fun m!714385 () Bool)

(assert (=> b!451144 m!714385))

(assert (=> b!451144 m!714383))

(assert (=> b!451144 m!714385))

(declare-fun m!714387 () Bool)

(assert (=> b!451144 m!714387))

(declare-fun m!714389 () Bool)

(assert (=> b!451145 m!714389))

(assert (=> b!451145 m!714109))

(assert (=> b!450911 d!172623))

(declare-fun b!451164 () Bool)

(declare-fun lt!200358 () Unit!7875)

(declare-fun lt!200360 () Unit!7875)

(assert (=> b!451164 (= lt!200358 lt!200360)))

(assert (=> b!451164 (rulesInvariant!699 thiss!17480 (t!70898 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!82 (LexerInterface!733 Rule!1494 List!4380) Unit!7875)

(assert (=> b!451164 (= lt!200360 (lemmaInvariantOnRulesThenOnTail!82 thiss!17480 (h!9767 rules!1920) (t!70898 rules!1920)))))

(declare-fun e!275791 () Option!1123)

(assert (=> b!451164 (= e!275791 (getRuleFromTag!206 thiss!17480 (t!70898 rules!1920) (tag!1105 (rule!1536 separatorToken!170))))))

(declare-fun b!451165 () Bool)

(declare-fun e!275789 () Bool)

(declare-fun lt!200359 () Option!1123)

(assert (=> b!451165 (= e!275789 (= (tag!1105 (get!1593 lt!200359)) (tag!1105 (rule!1536 separatorToken!170))))))

(declare-fun b!451166 () Bool)

(declare-fun e!275792 () Option!1123)

(assert (=> b!451166 (= e!275792 (Some!1122 (h!9767 rules!1920)))))

(declare-fun d!172625 () Bool)

(declare-fun e!275790 () Bool)

(assert (=> d!172625 e!275790))

(declare-fun res!200384 () Bool)

(assert (=> d!172625 (=> res!200384 e!275790)))

(declare-fun isEmpty!3329 (Option!1123) Bool)

(assert (=> d!172625 (= res!200384 (isEmpty!3329 lt!200359))))

(assert (=> d!172625 (= lt!200359 e!275792)))

(declare-fun c!91358 () Bool)

(assert (=> d!172625 (= c!91358 (and ((_ is Cons!4370) rules!1920) (= (tag!1105 (h!9767 rules!1920)) (tag!1105 (rule!1536 separatorToken!170)))))))

(assert (=> d!172625 (rulesInvariant!699 thiss!17480 rules!1920)))

(assert (=> d!172625 (= (getRuleFromTag!206 thiss!17480 rules!1920 (tag!1105 (rule!1536 separatorToken!170))) lt!200359)))

(declare-fun b!451167 () Bool)

(assert (=> b!451167 (= e!275790 e!275789)))

(declare-fun res!200383 () Bool)

(assert (=> b!451167 (=> (not res!200383) (not e!275789))))

(declare-fun contains!980 (List!4380 Rule!1494) Bool)

(assert (=> b!451167 (= res!200383 (contains!980 rules!1920 (get!1593 lt!200359)))))

(declare-fun b!451168 () Bool)

(assert (=> b!451168 (= e!275791 None!1122)))

(declare-fun b!451169 () Bool)

(assert (=> b!451169 (= e!275792 e!275791)))

(declare-fun c!91357 () Bool)

(assert (=> b!451169 (= c!91357 (and ((_ is Cons!4370) rules!1920) (not (= (tag!1105 (h!9767 rules!1920)) (tag!1105 (rule!1536 separatorToken!170))))))))

(assert (= (and d!172625 c!91358) b!451166))

(assert (= (and d!172625 (not c!91358)) b!451169))

(assert (= (and b!451169 c!91357) b!451164))

(assert (= (and b!451169 (not c!91357)) b!451168))

(assert (= (and d!172625 (not res!200384)) b!451167))

(assert (= (and b!451167 res!200383) b!451165))

(declare-fun m!714391 () Bool)

(assert (=> b!451164 m!714391))

(declare-fun m!714393 () Bool)

(assert (=> b!451164 m!714393))

(declare-fun m!714395 () Bool)

(assert (=> b!451164 m!714395))

(declare-fun m!714397 () Bool)

(assert (=> b!451165 m!714397))

(declare-fun m!714399 () Bool)

(assert (=> d!172625 m!714399))

(assert (=> d!172625 m!713819))

(assert (=> b!451167 m!714397))

(assert (=> b!451167 m!714397))

(declare-fun m!714401 () Bool)

(assert (=> b!451167 m!714401))

(assert (=> b!450911 d!172625))

(declare-fun d!172627 () Bool)

(assert (=> d!172627 (= (isDefined!964 lt!200202) (not (isEmpty!3329 lt!200202)))))

(declare-fun bs!55858 () Bool)

(assert (= bs!55858 d!172627))

(declare-fun m!714403 () Bool)

(assert (=> bs!55858 m!714403))

(assert (=> b!450911 d!172627))

(declare-fun d!172629 () Bool)

(assert (=> d!172629 (= (head!1096 lt!200216) (h!9766 lt!200216))))

(assert (=> b!450911 d!172629))

(declare-fun d!172631 () Bool)

(declare-fun lt!200365 () Bool)

(assert (=> d!172631 (= lt!200365 (select (content!733 (usedCharacters!148 (regex!847 (rule!1536 separatorToken!170)))) lt!200193))))

(declare-fun e!275799 () Bool)

(assert (=> d!172631 (= lt!200365 e!275799)))

(declare-fun res!200393 () Bool)

(assert (=> d!172631 (=> (not res!200393) (not e!275799))))

(assert (=> d!172631 (= res!200393 ((_ is Cons!4369) (usedCharacters!148 (regex!847 (rule!1536 separatorToken!170)))))))

(assert (=> d!172631 (= (contains!977 (usedCharacters!148 (regex!847 (rule!1536 separatorToken!170))) lt!200193) lt!200365)))

(declare-fun b!451177 () Bool)

(declare-fun e!275800 () Bool)

(assert (=> b!451177 (= e!275799 e!275800)))

(declare-fun res!200392 () Bool)

(assert (=> b!451177 (=> res!200392 e!275800)))

(assert (=> b!451177 (= res!200392 (= (h!9766 (usedCharacters!148 (regex!847 (rule!1536 separatorToken!170)))) lt!200193))))

(declare-fun b!451178 () Bool)

(assert (=> b!451178 (= e!275800 (contains!977 (t!70897 (usedCharacters!148 (regex!847 (rule!1536 separatorToken!170)))) lt!200193))))

(assert (= (and d!172631 res!200393) b!451177))

(assert (= (and b!451177 (not res!200392)) b!451178))

(assert (=> d!172631 m!713963))

(declare-fun m!714421 () Bool)

(assert (=> d!172631 m!714421))

(declare-fun m!714423 () Bool)

(assert (=> d!172631 m!714423))

(declare-fun m!714425 () Bool)

(assert (=> b!451178 m!714425))

(assert (=> b!450911 d!172631))

(declare-fun d!172635 () Bool)

(assert (=> d!172635 (= (get!1594 (maxPrefix!449 thiss!17480 rules!1920 lt!200192)) (v!15431 (maxPrefix!449 thiss!17480 rules!1920 lt!200192)))))

(assert (=> b!450911 d!172635))

(declare-fun d!172639 () Bool)

(declare-fun e!275801 () Bool)

(assert (=> d!172639 e!275801))

(declare-fun res!200394 () Bool)

(assert (=> d!172639 (=> (not res!200394) (not e!275801))))

(declare-fun lt!200369 () BalanceConc!3042)

(assert (=> d!172639 (= res!200394 (= (list!1940 lt!200369) (Cons!4371 separatorToken!170 Nil!4371)))))

(assert (=> d!172639 (= lt!200369 (singleton!190 separatorToken!170))))

(assert (=> d!172639 (= (singletonSeq!393 separatorToken!170) lt!200369)))

(declare-fun b!451179 () Bool)

(assert (=> b!451179 (= e!275801 (isBalanced!467 (c!91310 lt!200369)))))

(assert (= (and d!172639 res!200394) b!451179))

(declare-fun m!714431 () Bool)

(assert (=> d!172639 m!714431))

(declare-fun m!714433 () Bool)

(assert (=> d!172639 m!714433))

(declare-fun m!714435 () Bool)

(assert (=> b!451179 m!714435))

(assert (=> b!450911 d!172639))

(declare-fun b!451180 () Bool)

(declare-fun e!275803 () Bool)

(declare-fun lt!200370 () tuple2!5290)

(assert (=> b!451180 (= e!275803 (not (isEmpty!3323 (_1!2861 lt!200370))))))

(declare-fun d!172641 () Bool)

(declare-fun e!275804 () Bool)

(assert (=> d!172641 e!275804))

(declare-fun res!200396 () Bool)

(assert (=> d!172641 (=> (not res!200396) (not e!275804))))

(declare-fun e!275802 () Bool)

(assert (=> d!172641 (= res!200396 e!275802)))

(declare-fun c!91359 () Bool)

(assert (=> d!172641 (= c!91359 (> (size!3591 (_1!2861 lt!200370)) 0))))

(assert (=> d!172641 (= lt!200370 (lexTailRecV2!252 thiss!17480 rules!1920 lt!200182 (BalanceConc!3041 Empty!1516) lt!200182 (BalanceConc!3043 Empty!1517)))))

(assert (=> d!172641 (= (lex!525 thiss!17480 rules!1920 lt!200182) lt!200370)))

(declare-fun b!451181 () Bool)

(assert (=> b!451181 (= e!275802 (= (_2!2861 lt!200370) lt!200182))))

(declare-fun b!451182 () Bool)

(declare-fun res!200395 () Bool)

(assert (=> b!451182 (=> (not res!200395) (not e!275804))))

(assert (=> b!451182 (= res!200395 (= (list!1940 (_1!2861 lt!200370)) (_1!2863 (lexList!285 thiss!17480 rules!1920 (list!1937 lt!200182)))))))

(declare-fun b!451183 () Bool)

(assert (=> b!451183 (= e!275804 (= (list!1937 (_2!2861 lt!200370)) (_2!2863 (lexList!285 thiss!17480 rules!1920 (list!1937 lt!200182)))))))

(declare-fun b!451184 () Bool)

(assert (=> b!451184 (= e!275802 e!275803)))

(declare-fun res!200397 () Bool)

(assert (=> b!451184 (= res!200397 (< (size!3597 (_2!2861 lt!200370)) (size!3597 lt!200182)))))

(assert (=> b!451184 (=> (not res!200397) (not e!275803))))

(assert (= (and d!172641 c!91359) b!451184))

(assert (= (and d!172641 (not c!91359)) b!451181))

(assert (= (and b!451184 res!200397) b!451180))

(assert (= (and d!172641 res!200396) b!451182))

(assert (= (and b!451182 res!200395) b!451183))

(declare-fun m!714437 () Bool)

(assert (=> b!451184 m!714437))

(declare-fun m!714439 () Bool)

(assert (=> b!451184 m!714439))

(declare-fun m!714441 () Bool)

(assert (=> b!451183 m!714441))

(declare-fun m!714443 () Bool)

(assert (=> b!451183 m!714443))

(assert (=> b!451183 m!714443))

(declare-fun m!714445 () Bool)

(assert (=> b!451183 m!714445))

(declare-fun m!714447 () Bool)

(assert (=> d!172641 m!714447))

(declare-fun m!714449 () Bool)

(assert (=> d!172641 m!714449))

(declare-fun m!714451 () Bool)

(assert (=> b!451180 m!714451))

(declare-fun m!714453 () Bool)

(assert (=> b!451182 m!714453))

(assert (=> b!451182 m!714443))

(assert (=> b!451182 m!714443))

(assert (=> b!451182 m!714445))

(assert (=> b!450911 d!172641))

(declare-fun d!172643 () Bool)

(declare-fun lt!200396 () Bool)

(declare-fun e!275838 () Bool)

(assert (=> d!172643 (= lt!200396 e!275838)))

(declare-fun res!200433 () Bool)

(assert (=> d!172643 (=> (not res!200433) (not e!275838))))

(assert (=> d!172643 (= res!200433 (= (list!1940 (_1!2861 (lex!525 thiss!17480 rules!1920 (print!458 thiss!17480 (singletonSeq!393 lt!200205))))) (list!1940 (singletonSeq!393 lt!200205))))))

(declare-fun e!275839 () Bool)

(assert (=> d!172643 (= lt!200396 e!275839)))

(declare-fun res!200434 () Bool)

(assert (=> d!172643 (=> (not res!200434) (not e!275839))))

(declare-fun lt!200395 () tuple2!5290)

(assert (=> d!172643 (= res!200434 (= (size!3591 (_1!2861 lt!200395)) 1))))

(assert (=> d!172643 (= lt!200395 (lex!525 thiss!17480 rules!1920 (print!458 thiss!17480 (singletonSeq!393 lt!200205))))))

(assert (=> d!172643 (not (isEmpty!3320 rules!1920))))

(assert (=> d!172643 (= (rulesProduceIndividualToken!482 thiss!17480 rules!1920 lt!200205) lt!200396)))

(declare-fun b!451228 () Bool)

(declare-fun res!200435 () Bool)

(assert (=> b!451228 (=> (not res!200435) (not e!275839))))

(assert (=> b!451228 (= res!200435 (= (apply!1112 (_1!2861 lt!200395) 0) lt!200205))))

(declare-fun b!451229 () Bool)

(assert (=> b!451229 (= e!275839 (isEmpty!3321 (_2!2861 lt!200395)))))

(declare-fun b!451230 () Bool)

(assert (=> b!451230 (= e!275838 (isEmpty!3321 (_2!2861 (lex!525 thiss!17480 rules!1920 (print!458 thiss!17480 (singletonSeq!393 lt!200205))))))))

(assert (= (and d!172643 res!200434) b!451228))

(assert (= (and b!451228 res!200435) b!451229))

(assert (= (and d!172643 res!200433) b!451230))

(declare-fun m!714515 () Bool)

(assert (=> d!172643 m!714515))

(assert (=> d!172643 m!714003))

(assert (=> d!172643 m!713933))

(declare-fun m!714517 () Bool)

(assert (=> d!172643 m!714517))

(declare-fun m!714519 () Bool)

(assert (=> d!172643 m!714519))

(assert (=> d!172643 m!714003))

(assert (=> d!172643 m!714517))

(declare-fun m!714521 () Bool)

(assert (=> d!172643 m!714521))

(assert (=> d!172643 m!714003))

(declare-fun m!714523 () Bool)

(assert (=> d!172643 m!714523))

(declare-fun m!714525 () Bool)

(assert (=> b!451228 m!714525))

(declare-fun m!714527 () Bool)

(assert (=> b!451229 m!714527))

(assert (=> b!451230 m!714003))

(assert (=> b!451230 m!714003))

(assert (=> b!451230 m!714517))

(assert (=> b!451230 m!714517))

(assert (=> b!451230 m!714519))

(declare-fun m!714529 () Bool)

(assert (=> b!451230 m!714529))

(assert (=> b!450911 d!172643))

(declare-fun d!172665 () Bool)

(declare-fun lt!200403 () BalanceConc!3040)

(assert (=> d!172665 (= (list!1937 lt!200403) (printListTailRec!205 thiss!17480 (dropList!240 lt!200187 0) (list!1937 (BalanceConc!3041 Empty!1516))))))

(declare-fun e!275840 () BalanceConc!3040)

(assert (=> d!172665 (= lt!200403 e!275840)))

(declare-fun c!91360 () Bool)

(assert (=> d!172665 (= c!91360 (>= 0 (size!3591 lt!200187)))))

(declare-fun e!275841 () Bool)

(assert (=> d!172665 e!275841))

(declare-fun res!200436 () Bool)

(assert (=> d!172665 (=> (not res!200436) (not e!275841))))

(assert (=> d!172665 (= res!200436 (>= 0 0))))

(assert (=> d!172665 (= (printTailRec!419 thiss!17480 lt!200187 0 (BalanceConc!3041 Empty!1516)) lt!200403)))

(declare-fun b!451231 () Bool)

(assert (=> b!451231 (= e!275841 (<= 0 (size!3591 lt!200187)))))

(declare-fun b!451232 () Bool)

(assert (=> b!451232 (= e!275840 (BalanceConc!3041 Empty!1516))))

(declare-fun b!451233 () Bool)

(assert (=> b!451233 (= e!275840 (printTailRec!419 thiss!17480 lt!200187 (+ 0 1) (++!1270 (BalanceConc!3041 Empty!1516) (charsOf!490 (apply!1112 lt!200187 0)))))))

(declare-fun lt!200399 () List!4381)

(assert (=> b!451233 (= lt!200399 (list!1940 lt!200187))))

(declare-fun lt!200397 () Unit!7875)

(assert (=> b!451233 (= lt!200397 (lemmaDropApply!280 lt!200399 0))))

(assert (=> b!451233 (= (head!1095 (drop!309 lt!200399 0)) (apply!1116 lt!200399 0))))

(declare-fun lt!200402 () Unit!7875)

(assert (=> b!451233 (= lt!200402 lt!200397)))

(declare-fun lt!200398 () List!4381)

(assert (=> b!451233 (= lt!200398 (list!1940 lt!200187))))

(declare-fun lt!200401 () Unit!7875)

(assert (=> b!451233 (= lt!200401 (lemmaDropTail!272 lt!200398 0))))

(assert (=> b!451233 (= (tail!630 (drop!309 lt!200398 0)) (drop!309 lt!200398 (+ 0 1)))))

(declare-fun lt!200400 () Unit!7875)

(assert (=> b!451233 (= lt!200400 lt!200401)))

(assert (= (and d!172665 res!200436) b!451231))

(assert (= (and d!172665 c!91360) b!451232))

(assert (= (and d!172665 (not c!91360)) b!451233))

(declare-fun m!714531 () Bool)

(assert (=> d!172665 m!714531))

(assert (=> d!172665 m!714201))

(declare-fun m!714533 () Bool)

(assert (=> d!172665 m!714533))

(assert (=> d!172665 m!714531))

(assert (=> d!172665 m!714201))

(declare-fun m!714535 () Bool)

(assert (=> d!172665 m!714535))

(declare-fun m!714537 () Bool)

(assert (=> d!172665 m!714537))

(assert (=> b!451231 m!714535))

(declare-fun m!714539 () Bool)

(assert (=> b!451233 m!714539))

(declare-fun m!714541 () Bool)

(assert (=> b!451233 m!714541))

(assert (=> b!451233 m!714541))

(declare-fun m!714543 () Bool)

(assert (=> b!451233 m!714543))

(assert (=> b!451233 m!714367))

(declare-fun m!714545 () Bool)

(assert (=> b!451233 m!714545))

(declare-fun m!714547 () Bool)

(assert (=> b!451233 m!714547))

(declare-fun m!714549 () Bool)

(assert (=> b!451233 m!714549))

(declare-fun m!714551 () Bool)

(assert (=> b!451233 m!714551))

(declare-fun m!714553 () Bool)

(assert (=> b!451233 m!714553))

(declare-fun m!714555 () Bool)

(assert (=> b!451233 m!714555))

(assert (=> b!451233 m!714539))

(assert (=> b!451233 m!714553))

(declare-fun m!714557 () Bool)

(assert (=> b!451233 m!714557))

(assert (=> b!451233 m!714543))

(declare-fun m!714559 () Bool)

(assert (=> b!451233 m!714559))

(assert (=> b!451233 m!714557))

(declare-fun m!714561 () Bool)

(assert (=> b!451233 m!714561))

(assert (=> b!450911 d!172665))

(declare-fun d!172667 () Bool)

(assert (=> d!172667 (= (head!1096 lt!200200) (h!9766 lt!200200))))

(assert (=> b!450911 d!172667))

(declare-fun d!172669 () Bool)

(declare-fun list!1941 (Conc!1516) List!4379)

(assert (=> d!172669 (= (list!1937 (charsOf!490 lt!200205)) (list!1941 (c!91308 (charsOf!490 lt!200205))))))

(declare-fun bs!55864 () Bool)

(assert (= bs!55864 d!172669))

(declare-fun m!714563 () Bool)

(assert (=> bs!55864 m!714563))

(assert (=> b!450911 d!172669))

(declare-fun d!172671 () Bool)

(assert (=> d!172671 (= (isDefined!964 lt!200183) (not (isEmpty!3329 lt!200183)))))

(declare-fun bs!55865 () Bool)

(assert (= bs!55865 d!172671))

(declare-fun m!714565 () Bool)

(assert (=> bs!55865 m!714565))

(assert (=> b!450911 d!172671))

(declare-fun d!172673 () Bool)

(assert (=> d!172673 (= (maxPrefix!449 thiss!17480 rules!1920 (++!1268 (list!1937 (charsOf!490 separatorToken!170)) lt!200216)) (Some!1124 (tuple2!5287 separatorToken!170 lt!200216)))))

(declare-fun lt!200406 () Unit!7875)

(declare-fun choose!3413 (LexerInterface!733 List!4380 Token!1438 Rule!1494 List!4379 Rule!1494) Unit!7875)

(assert (=> d!172673 (= lt!200406 (choose!3413 thiss!17480 rules!1920 separatorToken!170 (rule!1536 separatorToken!170) lt!200216 (rule!1536 lt!200205)))))

(assert (=> d!172673 (not (isEmpty!3320 rules!1920))))

(assert (=> d!172673 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!78 thiss!17480 rules!1920 separatorToken!170 (rule!1536 separatorToken!170) lt!200216 (rule!1536 lt!200205)) lt!200406)))

(declare-fun bs!55866 () Bool)

(assert (= bs!55866 d!172673))

(assert (=> bs!55866 m!713885))

(declare-fun m!714567 () Bool)

(assert (=> bs!55866 m!714567))

(assert (=> bs!55866 m!714567))

(declare-fun m!714569 () Bool)

(assert (=> bs!55866 m!714569))

(assert (=> bs!55866 m!713883))

(declare-fun m!714571 () Bool)

(assert (=> bs!55866 m!714571))

(assert (=> bs!55866 m!713933))

(assert (=> bs!55866 m!713883))

(assert (=> bs!55866 m!713885))

(assert (=> b!450911 d!172673))

(declare-fun d!172675 () Bool)

(assert (=> d!172675 (rulesProduceIndividualToken!482 thiss!17480 rules!1920 lt!200205)))

(declare-fun lt!200435 () Unit!7875)

(declare-fun choose!3414 (LexerInterface!733 List!4380 List!4381 Token!1438) Unit!7875)

(assert (=> d!172675 (= lt!200435 (choose!3414 thiss!17480 rules!1920 tokens!465 lt!200205))))

(assert (=> d!172675 (not (isEmpty!3320 rules!1920))))

(assert (=> d!172675 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!196 thiss!17480 rules!1920 tokens!465 lt!200205) lt!200435)))

(declare-fun bs!55871 () Bool)

(assert (= bs!55871 d!172675))

(assert (=> bs!55871 m!713977))

(declare-fun m!714685 () Bool)

(assert (=> bs!55871 m!714685))

(assert (=> bs!55871 m!713933))

(assert (=> b!450911 d!172675))

(declare-fun d!172699 () Bool)

(assert (=> d!172699 (= (isEmpty!3322 tokens!465) ((_ is Nil!4371) tokens!465))))

(assert (=> b!450911 d!172699))

(declare-fun d!172701 () Bool)

(declare-fun lt!200436 () Bool)

(assert (=> d!172701 (= lt!200436 (select (content!733 (usedCharacters!148 (regex!847 (rule!1536 lt!200205)))) lt!200181))))

(declare-fun e!275863 () Bool)

(assert (=> d!172701 (= lt!200436 e!275863)))

(declare-fun res!200457 () Bool)

(assert (=> d!172701 (=> (not res!200457) (not e!275863))))

(assert (=> d!172701 (= res!200457 ((_ is Cons!4369) (usedCharacters!148 (regex!847 (rule!1536 lt!200205)))))))

(assert (=> d!172701 (= (contains!977 (usedCharacters!148 (regex!847 (rule!1536 lt!200205))) lt!200181) lt!200436)))

(declare-fun b!451271 () Bool)

(declare-fun e!275864 () Bool)

(assert (=> b!451271 (= e!275863 e!275864)))

(declare-fun res!200456 () Bool)

(assert (=> b!451271 (=> res!200456 e!275864)))

(assert (=> b!451271 (= res!200456 (= (h!9766 (usedCharacters!148 (regex!847 (rule!1536 lt!200205)))) lt!200181))))

(declare-fun b!451272 () Bool)

(assert (=> b!451272 (= e!275864 (contains!977 (t!70897 (usedCharacters!148 (regex!847 (rule!1536 lt!200205)))) lt!200181))))

(assert (= (and d!172701 res!200457) b!451271))

(assert (= (and b!451271 (not res!200456)) b!451272))

(assert (=> d!172701 m!713943))

(declare-fun m!714687 () Bool)

(assert (=> d!172701 m!714687))

(declare-fun m!714689 () Bool)

(assert (=> d!172701 m!714689))

(declare-fun m!714691 () Bool)

(assert (=> b!451272 m!714691))

(assert (=> b!450911 d!172701))

(declare-fun b!451273 () Bool)

(declare-fun lt!200437 () Unit!7875)

(declare-fun lt!200439 () Unit!7875)

(assert (=> b!451273 (= lt!200437 lt!200439)))

(assert (=> b!451273 (rulesInvariant!699 thiss!17480 (t!70898 rules!1920))))

(assert (=> b!451273 (= lt!200439 (lemmaInvariantOnRulesThenOnTail!82 thiss!17480 (h!9767 rules!1920) (t!70898 rules!1920)))))

(declare-fun e!275867 () Option!1123)

(assert (=> b!451273 (= e!275867 (getRuleFromTag!206 thiss!17480 (t!70898 rules!1920) (tag!1105 (rule!1536 lt!200205))))))

(declare-fun b!451274 () Bool)

(declare-fun e!275865 () Bool)

(declare-fun lt!200438 () Option!1123)

(assert (=> b!451274 (= e!275865 (= (tag!1105 (get!1593 lt!200438)) (tag!1105 (rule!1536 lt!200205))))))

(declare-fun b!451275 () Bool)

(declare-fun e!275868 () Option!1123)

(assert (=> b!451275 (= e!275868 (Some!1122 (h!9767 rules!1920)))))

(declare-fun d!172703 () Bool)

(declare-fun e!275866 () Bool)

(assert (=> d!172703 e!275866))

(declare-fun res!200459 () Bool)

(assert (=> d!172703 (=> res!200459 e!275866)))

(assert (=> d!172703 (= res!200459 (isEmpty!3329 lt!200438))))

(assert (=> d!172703 (= lt!200438 e!275868)))

(declare-fun c!91371 () Bool)

(assert (=> d!172703 (= c!91371 (and ((_ is Cons!4370) rules!1920) (= (tag!1105 (h!9767 rules!1920)) (tag!1105 (rule!1536 lt!200205)))))))

(assert (=> d!172703 (rulesInvariant!699 thiss!17480 rules!1920)))

(assert (=> d!172703 (= (getRuleFromTag!206 thiss!17480 rules!1920 (tag!1105 (rule!1536 lt!200205))) lt!200438)))

(declare-fun b!451276 () Bool)

(assert (=> b!451276 (= e!275866 e!275865)))

(declare-fun res!200458 () Bool)

(assert (=> b!451276 (=> (not res!200458) (not e!275865))))

(assert (=> b!451276 (= res!200458 (contains!980 rules!1920 (get!1593 lt!200438)))))

(declare-fun b!451277 () Bool)

(assert (=> b!451277 (= e!275867 None!1122)))

(declare-fun b!451278 () Bool)

(assert (=> b!451278 (= e!275868 e!275867)))

(declare-fun c!91370 () Bool)

(assert (=> b!451278 (= c!91370 (and ((_ is Cons!4370) rules!1920) (not (= (tag!1105 (h!9767 rules!1920)) (tag!1105 (rule!1536 lt!200205))))))))

(assert (= (and d!172703 c!91371) b!451275))

(assert (= (and d!172703 (not c!91371)) b!451278))

(assert (= (and b!451278 c!91370) b!451273))

(assert (= (and b!451278 (not c!91370)) b!451277))

(assert (= (and d!172703 (not res!200459)) b!451276))

(assert (= (and b!451276 res!200458) b!451274))

(assert (=> b!451273 m!714391))

(assert (=> b!451273 m!714393))

(declare-fun m!714693 () Bool)

(assert (=> b!451273 m!714693))

(declare-fun m!714695 () Bool)

(assert (=> b!451274 m!714695))

(declare-fun m!714697 () Bool)

(assert (=> d!172703 m!714697))

(assert (=> d!172703 m!713819))

(assert (=> b!451276 m!714695))

(assert (=> b!451276 m!714695))

(declare-fun m!714699 () Bool)

(assert (=> b!451276 m!714699))

(assert (=> b!450911 d!172703))

(declare-fun d!172705 () Bool)

(declare-fun lt!200440 () Int)

(assert (=> d!172705 (= lt!200440 (size!3598 (list!1940 (_1!2861 lt!200179))))))

(assert (=> d!172705 (= lt!200440 (size!3599 (c!91310 (_1!2861 lt!200179))))))

(assert (=> d!172705 (= (size!3591 (_1!2861 lt!200179)) lt!200440)))

(declare-fun bs!55872 () Bool)

(assert (= bs!55872 d!172705))

(declare-fun m!714701 () Bool)

(assert (=> bs!55872 m!714701))

(assert (=> bs!55872 m!714701))

(declare-fun m!714703 () Bool)

(assert (=> bs!55872 m!714703))

(declare-fun m!714705 () Bool)

(assert (=> bs!55872 m!714705))

(assert (=> b!450911 d!172705))

(declare-fun d!172707 () Bool)

(declare-fun e!275877 () Bool)

(assert (=> d!172707 e!275877))

(declare-fun res!200474 () Bool)

(assert (=> d!172707 (=> res!200474 e!275877)))

(declare-fun lt!200454 () Option!1125)

(declare-fun isEmpty!3330 (Option!1125) Bool)

(assert (=> d!172707 (= res!200474 (isEmpty!3330 lt!200454))))

(declare-fun e!275875 () Option!1125)

(assert (=> d!172707 (= lt!200454 e!275875)))

(declare-fun c!91374 () Bool)

(assert (=> d!172707 (= c!91374 (and ((_ is Cons!4370) rules!1920) ((_ is Nil!4370) (t!70898 rules!1920))))))

(declare-fun lt!200453 () Unit!7875)

(declare-fun lt!200455 () Unit!7875)

(assert (=> d!172707 (= lt!200453 lt!200455)))

(assert (=> d!172707 (isPrefix!507 lt!200175 lt!200175)))

(declare-fun lemmaIsPrefixRefl!283 (List!4379 List!4379) Unit!7875)

(assert (=> d!172707 (= lt!200455 (lemmaIsPrefixRefl!283 lt!200175 lt!200175))))

(declare-fun rulesValidInductive!278 (LexerInterface!733 List!4380) Bool)

(assert (=> d!172707 (rulesValidInductive!278 thiss!17480 rules!1920)))

(assert (=> d!172707 (= (maxPrefix!449 thiss!17480 rules!1920 lt!200175) lt!200454)))

(declare-fun b!451297 () Bool)

(declare-fun res!200480 () Bool)

(declare-fun e!275876 () Bool)

(assert (=> b!451297 (=> (not res!200480) (not e!275876))))

(assert (=> b!451297 (= res!200480 (matchR!389 (regex!847 (rule!1536 (_1!2859 (get!1594 lt!200454)))) (list!1937 (charsOf!490 (_1!2859 (get!1594 lt!200454))))))))

(declare-fun b!451298 () Bool)

(assert (=> b!451298 (= e!275876 (contains!980 rules!1920 (rule!1536 (_1!2859 (get!1594 lt!200454)))))))

(declare-fun b!451299 () Bool)

(declare-fun lt!200451 () Option!1125)

(declare-fun lt!200452 () Option!1125)

(assert (=> b!451299 (= e!275875 (ite (and ((_ is None!1124) lt!200451) ((_ is None!1124) lt!200452)) None!1124 (ite ((_ is None!1124) lt!200452) lt!200451 (ite ((_ is None!1124) lt!200451) lt!200452 (ite (>= (size!3590 (_1!2859 (v!15431 lt!200451))) (size!3590 (_1!2859 (v!15431 lt!200452)))) lt!200451 lt!200452)))))))

(declare-fun call!31190 () Option!1125)

(assert (=> b!451299 (= lt!200451 call!31190)))

(assert (=> b!451299 (= lt!200452 (maxPrefix!449 thiss!17480 (t!70898 rules!1920) lt!200175))))

(declare-fun b!451300 () Bool)

(declare-fun res!200477 () Bool)

(assert (=> b!451300 (=> (not res!200477) (not e!275876))))

(assert (=> b!451300 (= res!200477 (= (list!1937 (charsOf!490 (_1!2859 (get!1594 lt!200454)))) (originalCharacters!890 (_1!2859 (get!1594 lt!200454)))))))

(declare-fun bm!31185 () Bool)

(declare-fun maxPrefixOneRule!217 (LexerInterface!733 Rule!1494 List!4379) Option!1125)

(assert (=> bm!31185 (= call!31190 (maxPrefixOneRule!217 thiss!17480 (h!9767 rules!1920) lt!200175))))

(declare-fun b!451301 () Bool)

(assert (=> b!451301 (= e!275875 call!31190)))

(declare-fun b!451302 () Bool)

(assert (=> b!451302 (= e!275877 e!275876)))

(declare-fun res!200478 () Bool)

(assert (=> b!451302 (=> (not res!200478) (not e!275876))))

(assert (=> b!451302 (= res!200478 (isDefined!963 lt!200454))))

(declare-fun b!451303 () Bool)

(declare-fun res!200476 () Bool)

(assert (=> b!451303 (=> (not res!200476) (not e!275876))))

(assert (=> b!451303 (= res!200476 (< (size!3596 (_2!2859 (get!1594 lt!200454))) (size!3596 lt!200175)))))

(declare-fun b!451304 () Bool)

(declare-fun res!200479 () Bool)

(assert (=> b!451304 (=> (not res!200479) (not e!275876))))

(declare-fun apply!1117 (TokenValueInjection!1510 BalanceConc!3040) TokenValue!869)

(assert (=> b!451304 (= res!200479 (= (value!28455 (_1!2859 (get!1594 lt!200454))) (apply!1117 (transformation!847 (rule!1536 (_1!2859 (get!1594 lt!200454)))) (seqFromList!1060 (originalCharacters!890 (_1!2859 (get!1594 lt!200454)))))))))

(declare-fun b!451305 () Bool)

(declare-fun res!200475 () Bool)

(assert (=> b!451305 (=> (not res!200475) (not e!275876))))

(assert (=> b!451305 (= res!200475 (= (++!1268 (list!1937 (charsOf!490 (_1!2859 (get!1594 lt!200454)))) (_2!2859 (get!1594 lt!200454))) lt!200175))))

(assert (= (and d!172707 c!91374) b!451301))

(assert (= (and d!172707 (not c!91374)) b!451299))

(assert (= (or b!451301 b!451299) bm!31185))

(assert (= (and d!172707 (not res!200474)) b!451302))

(assert (= (and b!451302 res!200478) b!451300))

(assert (= (and b!451300 res!200477) b!451303))

(assert (= (and b!451303 res!200476) b!451305))

(assert (= (and b!451305 res!200475) b!451304))

(assert (= (and b!451304 res!200479) b!451297))

(assert (= (and b!451297 res!200480) b!451298))

(declare-fun m!714707 () Bool)

(assert (=> b!451299 m!714707))

(declare-fun m!714709 () Bool)

(assert (=> bm!31185 m!714709))

(declare-fun m!714711 () Bool)

(assert (=> b!451297 m!714711))

(declare-fun m!714713 () Bool)

(assert (=> b!451297 m!714713))

(assert (=> b!451297 m!714713))

(declare-fun m!714715 () Bool)

(assert (=> b!451297 m!714715))

(assert (=> b!451297 m!714715))

(declare-fun m!714717 () Bool)

(assert (=> b!451297 m!714717))

(declare-fun m!714719 () Bool)

(assert (=> b!451302 m!714719))

(assert (=> b!451304 m!714711))

(declare-fun m!714721 () Bool)

(assert (=> b!451304 m!714721))

(assert (=> b!451304 m!714721))

(declare-fun m!714723 () Bool)

(assert (=> b!451304 m!714723))

(assert (=> b!451300 m!714711))

(assert (=> b!451300 m!714713))

(assert (=> b!451300 m!714713))

(assert (=> b!451300 m!714715))

(assert (=> b!451303 m!714711))

(declare-fun m!714725 () Bool)

(assert (=> b!451303 m!714725))

(declare-fun m!714727 () Bool)

(assert (=> b!451303 m!714727))

(declare-fun m!714729 () Bool)

(assert (=> d!172707 m!714729))

(declare-fun m!714731 () Bool)

(assert (=> d!172707 m!714731))

(declare-fun m!714733 () Bool)

(assert (=> d!172707 m!714733))

(declare-fun m!714735 () Bool)

(assert (=> d!172707 m!714735))

(assert (=> b!451305 m!714711))

(assert (=> b!451305 m!714713))

(assert (=> b!451305 m!714713))

(assert (=> b!451305 m!714715))

(assert (=> b!451305 m!714715))

(declare-fun m!714737 () Bool)

(assert (=> b!451305 m!714737))

(assert (=> b!451298 m!714711))

(declare-fun m!714739 () Bool)

(assert (=> b!451298 m!714739))

(assert (=> b!450911 d!172707))

(declare-fun d!172709 () Bool)

(declare-fun lt!200456 () BalanceConc!3040)

(assert (=> d!172709 (= (list!1937 lt!200456) (printList!407 thiss!17480 (list!1940 lt!200195)))))

(assert (=> d!172709 (= lt!200456 (printTailRec!419 thiss!17480 lt!200195 0 (BalanceConc!3041 Empty!1516)))))

(assert (=> d!172709 (= (print!458 thiss!17480 lt!200195) lt!200456)))

(declare-fun bs!55873 () Bool)

(assert (= bs!55873 d!172709))

(declare-fun m!714741 () Bool)

(assert (=> bs!55873 m!714741))

(assert (=> bs!55873 m!714215))

(assert (=> bs!55873 m!714215))

(declare-fun m!714743 () Bool)

(assert (=> bs!55873 m!714743))

(assert (=> bs!55873 m!713985))

(assert (=> b!450911 d!172709))

(declare-fun d!172711 () Bool)

(assert (=> d!172711 (= (head!1095 (t!70899 tokens!465)) (h!9768 (t!70899 tokens!465)))))

(assert (=> b!450911 d!172711))

(declare-fun d!172713 () Bool)

(declare-fun e!275913 () Bool)

(assert (=> d!172713 e!275913))

(declare-fun res!200499 () Bool)

(assert (=> d!172713 (=> res!200499 e!275913)))

(assert (=> d!172713 (= res!200499 (isEmpty!3322 tokens!465))))

(declare-fun lt!200470 () Unit!7875)

(declare-fun choose!3415 (LexerInterface!733 List!4380 List!4381 Token!1438) Unit!7875)

(assert (=> d!172713 (= lt!200470 (choose!3415 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!172713 (not (isEmpty!3320 rules!1920))))

(assert (=> d!172713 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!254 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!200470)))

(declare-fun b!451361 () Bool)

(declare-fun e!275914 () Bool)

(assert (=> b!451361 (= e!275913 e!275914)))

(declare-fun res!200498 () Bool)

(assert (=> b!451361 (=> (not res!200498) (not e!275914))))

(assert (=> b!451361 (= res!200498 (isDefined!963 (maxPrefix!449 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!414 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!451362 () Bool)

(assert (=> b!451362 (= e!275914 (= (_1!2859 (get!1594 (maxPrefix!449 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!414 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!1095 tokens!465)))))

(assert (= (and d!172713 (not res!200499)) b!451361))

(assert (= (and b!451361 res!200498) b!451362))

(assert (=> d!172713 m!713941))

(declare-fun m!714813 () Bool)

(assert (=> d!172713 m!714813))

(assert (=> d!172713 m!713933))

(assert (=> b!451361 m!714029))

(assert (=> b!451361 m!714029))

(declare-fun m!714815 () Bool)

(assert (=> b!451361 m!714815))

(assert (=> b!451361 m!714815))

(declare-fun m!714817 () Bool)

(assert (=> b!451361 m!714817))

(assert (=> b!451362 m!714029))

(assert (=> b!451362 m!714029))

(assert (=> b!451362 m!714815))

(assert (=> b!451362 m!714815))

(declare-fun m!714819 () Bool)

(assert (=> b!451362 m!714819))

(assert (=> b!451362 m!713905))

(assert (=> b!450911 d!172713))

(declare-fun d!172739 () Bool)

(declare-fun e!275915 () Bool)

(assert (=> d!172739 e!275915))

(declare-fun res!200500 () Bool)

(assert (=> d!172739 (=> (not res!200500) (not e!275915))))

(assert (=> d!172739 (= res!200500 (isDefined!964 (getRuleFromTag!206 thiss!17480 rules!1920 (tag!1105 (rule!1536 lt!200205)))))))

(declare-fun lt!200471 () Unit!7875)

(assert (=> d!172739 (= lt!200471 (choose!3412 thiss!17480 rules!1920 lt!200200 lt!200205))))

(assert (=> d!172739 (rulesInvariant!699 thiss!17480 rules!1920)))

(assert (=> d!172739 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!206 thiss!17480 rules!1920 lt!200200 lt!200205) lt!200471)))

(declare-fun b!451363 () Bool)

(declare-fun res!200501 () Bool)

(assert (=> b!451363 (=> (not res!200501) (not e!275915))))

(assert (=> b!451363 (= res!200501 (matchR!389 (regex!847 (get!1593 (getRuleFromTag!206 thiss!17480 rules!1920 (tag!1105 (rule!1536 lt!200205))))) (list!1937 (charsOf!490 lt!200205))))))

(declare-fun b!451364 () Bool)

(assert (=> b!451364 (= e!275915 (= (rule!1536 lt!200205) (get!1593 (getRuleFromTag!206 thiss!17480 rules!1920 (tag!1105 (rule!1536 lt!200205))))))))

(assert (= (and d!172739 res!200500) b!451363))

(assert (= (and b!451363 res!200501) b!451364))

(assert (=> d!172739 m!713951))

(assert (=> d!172739 m!713951))

(declare-fun m!714821 () Bool)

(assert (=> d!172739 m!714821))

(declare-fun m!714823 () Bool)

(assert (=> d!172739 m!714823))

(assert (=> d!172739 m!713819))

(assert (=> b!451363 m!713951))

(assert (=> b!451363 m!713949))

(assert (=> b!451363 m!713987))

(assert (=> b!451363 m!713987))

(declare-fun m!714825 () Bool)

(assert (=> b!451363 m!714825))

(assert (=> b!451363 m!713949))

(assert (=> b!451363 m!713951))

(declare-fun m!714827 () Bool)

(assert (=> b!451363 m!714827))

(assert (=> b!451364 m!713951))

(assert (=> b!451364 m!713951))

(assert (=> b!451364 m!714827))

(assert (=> b!450911 d!172739))

(declare-fun d!172741 () Bool)

(declare-fun lt!200474 () BalanceConc!3040)

(assert (=> d!172741 (= (list!1937 lt!200474) (originalCharacters!890 lt!200205))))

(declare-fun dynLambda!2635 (Int TokenValue!869) BalanceConc!3040)

(assert (=> d!172741 (= lt!200474 (dynLambda!2635 (toChars!1521 (transformation!847 (rule!1536 lt!200205))) (value!28455 lt!200205)))))

(assert (=> d!172741 (= (charsOf!490 lt!200205) lt!200474)))

(declare-fun b_lambda!18681 () Bool)

(assert (=> (not b_lambda!18681) (not d!172741)))

(declare-fun tb!45447 () Bool)

(declare-fun t!70917 () Bool)

(assert (=> (and b!450885 (= (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))) (toChars!1521 (transformation!847 (rule!1536 lt!200205)))) t!70917) tb!45447))

(declare-fun b!451369 () Bool)

(declare-fun e!275918 () Bool)

(declare-fun tp!125621 () Bool)

(declare-fun inv!5449 (Conc!1516) Bool)

(assert (=> b!451369 (= e!275918 (and (inv!5449 (c!91308 (dynLambda!2635 (toChars!1521 (transformation!847 (rule!1536 lt!200205))) (value!28455 lt!200205)))) tp!125621))))

(declare-fun result!49984 () Bool)

(declare-fun inv!5450 (BalanceConc!3040) Bool)

(assert (=> tb!45447 (= result!49984 (and (inv!5450 (dynLambda!2635 (toChars!1521 (transformation!847 (rule!1536 lt!200205))) (value!28455 lt!200205))) e!275918))))

(assert (= tb!45447 b!451369))

(declare-fun m!714829 () Bool)

(assert (=> b!451369 m!714829))

(declare-fun m!714831 () Bool)

(assert (=> tb!45447 m!714831))

(assert (=> d!172741 t!70917))

(declare-fun b_and!48519 () Bool)

(assert (= b_and!48503 (and (=> t!70917 result!49984) b_and!48519)))

(declare-fun t!70919 () Bool)

(declare-fun tb!45449 () Bool)

(assert (=> (and b!450890 (= (toChars!1521 (transformation!847 (h!9767 rules!1920))) (toChars!1521 (transformation!847 (rule!1536 lt!200205)))) t!70919) tb!45449))

(declare-fun result!49988 () Bool)

(assert (= result!49988 result!49984))

(assert (=> d!172741 t!70919))

(declare-fun b_and!48521 () Bool)

(assert (= b_and!48507 (and (=> t!70919 result!49988) b_and!48521)))

(declare-fun tb!45451 () Bool)

(declare-fun t!70921 () Bool)

(assert (=> (and b!450899 (= (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))) (toChars!1521 (transformation!847 (rule!1536 lt!200205)))) t!70921) tb!45451))

(declare-fun result!49990 () Bool)

(assert (= result!49990 result!49984))

(assert (=> d!172741 t!70921))

(declare-fun b_and!48523 () Bool)

(assert (= b_and!48511 (and (=> t!70921 result!49990) b_and!48523)))

(declare-fun m!714833 () Bool)

(assert (=> d!172741 m!714833))

(declare-fun m!714835 () Bool)

(assert (=> d!172741 m!714835))

(assert (=> b!450911 d!172741))

(declare-fun d!172743 () Bool)

(assert (=> d!172743 (isPrefix!507 lt!200208 (++!1268 lt!200208 lt!200175))))

(declare-fun lt!200477 () Unit!7875)

(declare-fun choose!3417 (List!4379 List!4379) Unit!7875)

(assert (=> d!172743 (= lt!200477 (choose!3417 lt!200208 lt!200175))))

(assert (=> d!172743 (= (lemmaConcatTwoListThenFirstIsPrefix!398 lt!200208 lt!200175) lt!200477)))

(declare-fun bs!55878 () Bool)

(assert (= bs!55878 d!172743))

(assert (=> bs!55878 m!713901))

(assert (=> bs!55878 m!713901))

(declare-fun m!714837 () Bool)

(assert (=> bs!55878 m!714837))

(declare-fun m!714839 () Bool)

(assert (=> bs!55878 m!714839))

(assert (=> b!450911 d!172743))

(declare-fun bs!55888 () Bool)

(declare-fun d!172745 () Bool)

(assert (= bs!55888 (and d!172745 b!450893)))

(declare-fun lambda!13115 () Int)

(assert (=> bs!55888 (not (= lambda!13115 lambda!13097))))

(declare-fun bs!55889 () Bool)

(assert (= bs!55889 (and d!172745 b!450894)))

(assert (=> bs!55889 (= lambda!13115 lambda!13098)))

(declare-fun b!451405 () Bool)

(declare-fun e!275945 () Bool)

(assert (=> b!451405 (= e!275945 true)))

(declare-fun b!451404 () Bool)

(declare-fun e!275944 () Bool)

(assert (=> b!451404 (= e!275944 e!275945)))

(declare-fun b!451403 () Bool)

(declare-fun e!275943 () Bool)

(assert (=> b!451403 (= e!275943 e!275944)))

(assert (=> d!172745 e!275943))

(assert (= b!451404 b!451405))

(assert (= b!451403 b!451404))

(assert (= (and d!172745 ((_ is Cons!4370) rules!1920)) b!451403))

(assert (=> b!451405 (< (dynLambda!2630 order!3833 (toValue!1662 (transformation!847 (h!9767 rules!1920)))) (dynLambda!2631 order!3835 lambda!13115))))

(assert (=> b!451405 (< (dynLambda!2632 order!3837 (toChars!1521 (transformation!847 (h!9767 rules!1920)))) (dynLambda!2631 order!3835 lambda!13115))))

(assert (=> d!172745 true))

(declare-fun e!275942 () Bool)

(assert (=> d!172745 e!275942))

(declare-fun res!200513 () Bool)

(assert (=> d!172745 (=> (not res!200513) (not e!275942))))

(declare-fun lt!200522 () Bool)

(assert (=> d!172745 (= res!200513 (= lt!200522 (forall!1264 (list!1940 lt!200206) lambda!13115)))))

(declare-fun forall!1266 (BalanceConc!3042 Int) Bool)

(assert (=> d!172745 (= lt!200522 (forall!1266 lt!200206 lambda!13115))))

(assert (=> d!172745 (not (isEmpty!3320 rules!1920))))

(assert (=> d!172745 (= (rulesProduceEachTokenIndividually!525 thiss!17480 rules!1920 lt!200206) lt!200522)))

(declare-fun b!451402 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!311 (LexerInterface!733 List!4380 List!4381) Bool)

(assert (=> b!451402 (= e!275942 (= lt!200522 (rulesProduceEachTokenIndividuallyList!311 thiss!17480 rules!1920 (list!1940 lt!200206))))))

(assert (= (and d!172745 res!200513) b!451402))

(declare-fun m!714899 () Bool)

(assert (=> d!172745 m!714899))

(assert (=> d!172745 m!714899))

(declare-fun m!714901 () Bool)

(assert (=> d!172745 m!714901))

(declare-fun m!714903 () Bool)

(assert (=> d!172745 m!714903))

(assert (=> d!172745 m!713933))

(assert (=> b!451402 m!714899))

(assert (=> b!451402 m!714899))

(declare-fun m!714905 () Bool)

(assert (=> b!451402 m!714905))

(assert (=> b!450911 d!172745))

(declare-fun bm!31225 () Bool)

(declare-fun call!31232 () List!4379)

(declare-fun call!31231 () List!4379)

(declare-fun call!31233 () List!4379)

(assert (=> bm!31225 (= call!31232 (++!1268 call!31231 call!31233))))

(declare-fun bm!31226 () Bool)

(declare-fun call!31230 () List!4379)

(assert (=> bm!31226 (= call!31231 call!31230)))

(declare-fun b!451422 () Bool)

(declare-fun e!275957 () List!4379)

(assert (=> b!451422 (= e!275957 (Cons!4369 (c!91309 (regex!847 (rule!1536 separatorToken!170))) Nil!4369))))

(declare-fun d!172749 () Bool)

(declare-fun c!91411 () Bool)

(assert (=> d!172749 (= c!91411 (or ((_ is EmptyExpr!1071) (regex!847 (rule!1536 separatorToken!170))) ((_ is EmptyLang!1071) (regex!847 (rule!1536 separatorToken!170)))))))

(declare-fun e!275954 () List!4379)

(assert (=> d!172749 (= (usedCharacters!148 (regex!847 (rule!1536 separatorToken!170))) e!275954)))

(declare-fun b!451423 () Bool)

(declare-fun c!91412 () Bool)

(assert (=> b!451423 (= c!91412 ((_ is Star!1071) (regex!847 (rule!1536 separatorToken!170))))))

(declare-fun e!275956 () List!4379)

(assert (=> b!451423 (= e!275957 e!275956)))

(declare-fun b!451424 () Bool)

(declare-fun e!275955 () List!4379)

(assert (=> b!451424 (= e!275956 e!275955)))

(declare-fun c!91413 () Bool)

(assert (=> b!451424 (= c!91413 ((_ is Union!1071) (regex!847 (rule!1536 separatorToken!170))))))

(declare-fun b!451425 () Bool)

(assert (=> b!451425 (= e!275954 e!275957)))

(declare-fun c!91414 () Bool)

(assert (=> b!451425 (= c!91414 ((_ is ElementMatch!1071) (regex!847 (rule!1536 separatorToken!170))))))

(declare-fun b!451426 () Bool)

(assert (=> b!451426 (= e!275954 Nil!4369)))

(declare-fun bm!31227 () Bool)

(assert (=> bm!31227 (= call!31233 (usedCharacters!148 (ite c!91413 (regTwo!2655 (regex!847 (rule!1536 separatorToken!170))) (regTwo!2654 (regex!847 (rule!1536 separatorToken!170))))))))

(declare-fun b!451427 () Bool)

(assert (=> b!451427 (= e!275956 call!31230)))

(declare-fun b!451428 () Bool)

(assert (=> b!451428 (= e!275955 call!31232)))

(declare-fun bm!31228 () Bool)

(assert (=> bm!31228 (= call!31230 (usedCharacters!148 (ite c!91412 (reg!1400 (regex!847 (rule!1536 separatorToken!170))) (ite c!91413 (regOne!2655 (regex!847 (rule!1536 separatorToken!170))) (regOne!2654 (regex!847 (rule!1536 separatorToken!170)))))))))

(declare-fun b!451429 () Bool)

(assert (=> b!451429 (= e!275955 call!31232)))

(assert (= (and d!172749 c!91411) b!451426))

(assert (= (and d!172749 (not c!91411)) b!451425))

(assert (= (and b!451425 c!91414) b!451422))

(assert (= (and b!451425 (not c!91414)) b!451423))

(assert (= (and b!451423 c!91412) b!451427))

(assert (= (and b!451423 (not c!91412)) b!451424))

(assert (= (and b!451424 c!91413) b!451428))

(assert (= (and b!451424 (not c!91413)) b!451429))

(assert (= (or b!451428 b!451429) bm!31226))

(assert (= (or b!451428 b!451429) bm!31227))

(assert (= (or b!451428 b!451429) bm!31225))

(assert (= (or b!451427 bm!31226) bm!31228))

(declare-fun m!714907 () Bool)

(assert (=> bm!31225 m!714907))

(declare-fun m!714909 () Bool)

(assert (=> bm!31227 m!714909))

(declare-fun m!714911 () Bool)

(assert (=> bm!31228 m!714911))

(assert (=> b!450911 d!172749))

(declare-fun d!172751 () Bool)

(declare-fun e!275960 () Bool)

(assert (=> d!172751 e!275960))

(declare-fun res!200514 () Bool)

(assert (=> d!172751 (=> res!200514 e!275960)))

(declare-fun lt!200526 () Option!1125)

(assert (=> d!172751 (= res!200514 (isEmpty!3330 lt!200526))))

(declare-fun e!275958 () Option!1125)

(assert (=> d!172751 (= lt!200526 e!275958)))

(declare-fun c!91415 () Bool)

(assert (=> d!172751 (= c!91415 (and ((_ is Cons!4370) rules!1920) ((_ is Nil!4370) (t!70898 rules!1920))))))

(declare-fun lt!200525 () Unit!7875)

(declare-fun lt!200527 () Unit!7875)

(assert (=> d!172751 (= lt!200525 lt!200527)))

(assert (=> d!172751 (isPrefix!507 lt!200192 lt!200192)))

(assert (=> d!172751 (= lt!200527 (lemmaIsPrefixRefl!283 lt!200192 lt!200192))))

(assert (=> d!172751 (rulesValidInductive!278 thiss!17480 rules!1920)))

(assert (=> d!172751 (= (maxPrefix!449 thiss!17480 rules!1920 lt!200192) lt!200526)))

(declare-fun b!451430 () Bool)

(declare-fun res!200520 () Bool)

(declare-fun e!275959 () Bool)

(assert (=> b!451430 (=> (not res!200520) (not e!275959))))

(assert (=> b!451430 (= res!200520 (matchR!389 (regex!847 (rule!1536 (_1!2859 (get!1594 lt!200526)))) (list!1937 (charsOf!490 (_1!2859 (get!1594 lt!200526))))))))

(declare-fun b!451431 () Bool)

(assert (=> b!451431 (= e!275959 (contains!980 rules!1920 (rule!1536 (_1!2859 (get!1594 lt!200526)))))))

(declare-fun b!451432 () Bool)

(declare-fun lt!200523 () Option!1125)

(declare-fun lt!200524 () Option!1125)

(assert (=> b!451432 (= e!275958 (ite (and ((_ is None!1124) lt!200523) ((_ is None!1124) lt!200524)) None!1124 (ite ((_ is None!1124) lt!200524) lt!200523 (ite ((_ is None!1124) lt!200523) lt!200524 (ite (>= (size!3590 (_1!2859 (v!15431 lt!200523))) (size!3590 (_1!2859 (v!15431 lt!200524)))) lt!200523 lt!200524)))))))

(declare-fun call!31234 () Option!1125)

(assert (=> b!451432 (= lt!200523 call!31234)))

(assert (=> b!451432 (= lt!200524 (maxPrefix!449 thiss!17480 (t!70898 rules!1920) lt!200192))))

(declare-fun b!451433 () Bool)

(declare-fun res!200517 () Bool)

(assert (=> b!451433 (=> (not res!200517) (not e!275959))))

(assert (=> b!451433 (= res!200517 (= (list!1937 (charsOf!490 (_1!2859 (get!1594 lt!200526)))) (originalCharacters!890 (_1!2859 (get!1594 lt!200526)))))))

(declare-fun bm!31229 () Bool)

(assert (=> bm!31229 (= call!31234 (maxPrefixOneRule!217 thiss!17480 (h!9767 rules!1920) lt!200192))))

(declare-fun b!451434 () Bool)

(assert (=> b!451434 (= e!275958 call!31234)))

(declare-fun b!451435 () Bool)

(assert (=> b!451435 (= e!275960 e!275959)))

(declare-fun res!200518 () Bool)

(assert (=> b!451435 (=> (not res!200518) (not e!275959))))

(assert (=> b!451435 (= res!200518 (isDefined!963 lt!200526))))

(declare-fun b!451436 () Bool)

(declare-fun res!200516 () Bool)

(assert (=> b!451436 (=> (not res!200516) (not e!275959))))

(assert (=> b!451436 (= res!200516 (< (size!3596 (_2!2859 (get!1594 lt!200526))) (size!3596 lt!200192)))))

(declare-fun b!451437 () Bool)

(declare-fun res!200519 () Bool)

(assert (=> b!451437 (=> (not res!200519) (not e!275959))))

(assert (=> b!451437 (= res!200519 (= (value!28455 (_1!2859 (get!1594 lt!200526))) (apply!1117 (transformation!847 (rule!1536 (_1!2859 (get!1594 lt!200526)))) (seqFromList!1060 (originalCharacters!890 (_1!2859 (get!1594 lt!200526)))))))))

(declare-fun b!451438 () Bool)

(declare-fun res!200515 () Bool)

(assert (=> b!451438 (=> (not res!200515) (not e!275959))))

(assert (=> b!451438 (= res!200515 (= (++!1268 (list!1937 (charsOf!490 (_1!2859 (get!1594 lt!200526)))) (_2!2859 (get!1594 lt!200526))) lt!200192))))

(assert (= (and d!172751 c!91415) b!451434))

(assert (= (and d!172751 (not c!91415)) b!451432))

(assert (= (or b!451434 b!451432) bm!31229))

(assert (= (and d!172751 (not res!200514)) b!451435))

(assert (= (and b!451435 res!200518) b!451433))

(assert (= (and b!451433 res!200517) b!451436))

(assert (= (and b!451436 res!200516) b!451438))

(assert (= (and b!451438 res!200515) b!451437))

(assert (= (and b!451437 res!200519) b!451430))

(assert (= (and b!451430 res!200520) b!451431))

(declare-fun m!714913 () Bool)

(assert (=> b!451432 m!714913))

(declare-fun m!714915 () Bool)

(assert (=> bm!31229 m!714915))

(declare-fun m!714917 () Bool)

(assert (=> b!451430 m!714917))

(declare-fun m!714919 () Bool)

(assert (=> b!451430 m!714919))

(assert (=> b!451430 m!714919))

(declare-fun m!714921 () Bool)

(assert (=> b!451430 m!714921))

(assert (=> b!451430 m!714921))

(declare-fun m!714923 () Bool)

(assert (=> b!451430 m!714923))

(declare-fun m!714925 () Bool)

(assert (=> b!451435 m!714925))

(assert (=> b!451437 m!714917))

(declare-fun m!714927 () Bool)

(assert (=> b!451437 m!714927))

(assert (=> b!451437 m!714927))

(declare-fun m!714929 () Bool)

(assert (=> b!451437 m!714929))

(assert (=> b!451433 m!714917))

(assert (=> b!451433 m!714919))

(assert (=> b!451433 m!714919))

(assert (=> b!451433 m!714921))

(assert (=> b!451436 m!714917))

(declare-fun m!714931 () Bool)

(assert (=> b!451436 m!714931))

(declare-fun m!714933 () Bool)

(assert (=> b!451436 m!714933))

(declare-fun m!714935 () Bool)

(assert (=> d!172751 m!714935))

(declare-fun m!714937 () Bool)

(assert (=> d!172751 m!714937))

(declare-fun m!714939 () Bool)

(assert (=> d!172751 m!714939))

(assert (=> d!172751 m!714735))

(assert (=> b!451438 m!714917))

(assert (=> b!451438 m!714919))

(assert (=> b!451438 m!714919))

(assert (=> b!451438 m!714921))

(assert (=> b!451438 m!714921))

(declare-fun m!714941 () Bool)

(assert (=> b!451438 m!714941))

(assert (=> b!451431 m!714917))

(declare-fun m!714943 () Bool)

(assert (=> b!451431 m!714943))

(assert (=> b!450911 d!172751))

(declare-fun d!172753 () Bool)

(declare-fun dynLambda!2636 (Int Token!1438) Bool)

(assert (=> d!172753 (dynLambda!2636 lambda!13098 lt!200205)))

(declare-fun lt!200530 () Unit!7875)

(declare-fun choose!3418 (List!4381 Int Token!1438) Unit!7875)

(assert (=> d!172753 (= lt!200530 (choose!3418 tokens!465 lambda!13098 lt!200205))))

(declare-fun e!275963 () Bool)

(assert (=> d!172753 e!275963))

(declare-fun res!200523 () Bool)

(assert (=> d!172753 (=> (not res!200523) (not e!275963))))

(assert (=> d!172753 (= res!200523 (forall!1264 tokens!465 lambda!13098))))

(assert (=> d!172753 (= (forallContained!400 tokens!465 lambda!13098 lt!200205) lt!200530)))

(declare-fun b!451441 () Bool)

(declare-fun contains!981 (List!4381 Token!1438) Bool)

(assert (=> b!451441 (= e!275963 (contains!981 tokens!465 lt!200205))))

(assert (= (and d!172753 res!200523) b!451441))

(declare-fun b_lambda!18683 () Bool)

(assert (=> (not b_lambda!18683) (not d!172753)))

(declare-fun m!714945 () Bool)

(assert (=> d!172753 m!714945))

(declare-fun m!714947 () Bool)

(assert (=> d!172753 m!714947))

(declare-fun m!714949 () Bool)

(assert (=> d!172753 m!714949))

(declare-fun m!714951 () Bool)

(assert (=> b!451441 m!714951))

(assert (=> b!450911 d!172753))

(declare-fun bm!31230 () Bool)

(declare-fun call!31237 () List!4379)

(declare-fun call!31236 () List!4379)

(declare-fun call!31238 () List!4379)

(assert (=> bm!31230 (= call!31237 (++!1268 call!31236 call!31238))))

(declare-fun bm!31231 () Bool)

(declare-fun call!31235 () List!4379)

(assert (=> bm!31231 (= call!31236 call!31235)))

(declare-fun b!451442 () Bool)

(declare-fun e!275967 () List!4379)

(assert (=> b!451442 (= e!275967 (Cons!4369 (c!91309 (regex!847 (rule!1536 lt!200205))) Nil!4369))))

(declare-fun d!172755 () Bool)

(declare-fun c!91416 () Bool)

(assert (=> d!172755 (= c!91416 (or ((_ is EmptyExpr!1071) (regex!847 (rule!1536 lt!200205))) ((_ is EmptyLang!1071) (regex!847 (rule!1536 lt!200205)))))))

(declare-fun e!275964 () List!4379)

(assert (=> d!172755 (= (usedCharacters!148 (regex!847 (rule!1536 lt!200205))) e!275964)))

(declare-fun b!451443 () Bool)

(declare-fun c!91417 () Bool)

(assert (=> b!451443 (= c!91417 ((_ is Star!1071) (regex!847 (rule!1536 lt!200205))))))

(declare-fun e!275966 () List!4379)

(assert (=> b!451443 (= e!275967 e!275966)))

(declare-fun b!451444 () Bool)

(declare-fun e!275965 () List!4379)

(assert (=> b!451444 (= e!275966 e!275965)))

(declare-fun c!91418 () Bool)

(assert (=> b!451444 (= c!91418 ((_ is Union!1071) (regex!847 (rule!1536 lt!200205))))))

(declare-fun b!451445 () Bool)

(assert (=> b!451445 (= e!275964 e!275967)))

(declare-fun c!91419 () Bool)

(assert (=> b!451445 (= c!91419 ((_ is ElementMatch!1071) (regex!847 (rule!1536 lt!200205))))))

(declare-fun b!451446 () Bool)

(assert (=> b!451446 (= e!275964 Nil!4369)))

(declare-fun bm!31232 () Bool)

(assert (=> bm!31232 (= call!31238 (usedCharacters!148 (ite c!91418 (regTwo!2655 (regex!847 (rule!1536 lt!200205))) (regTwo!2654 (regex!847 (rule!1536 lt!200205))))))))

(declare-fun b!451447 () Bool)

(assert (=> b!451447 (= e!275966 call!31235)))

(declare-fun b!451448 () Bool)

(assert (=> b!451448 (= e!275965 call!31237)))

(declare-fun bm!31233 () Bool)

(assert (=> bm!31233 (= call!31235 (usedCharacters!148 (ite c!91417 (reg!1400 (regex!847 (rule!1536 lt!200205))) (ite c!91418 (regOne!2655 (regex!847 (rule!1536 lt!200205))) (regOne!2654 (regex!847 (rule!1536 lt!200205)))))))))

(declare-fun b!451449 () Bool)

(assert (=> b!451449 (= e!275965 call!31237)))

(assert (= (and d!172755 c!91416) b!451446))

(assert (= (and d!172755 (not c!91416)) b!451445))

(assert (= (and b!451445 c!91419) b!451442))

(assert (= (and b!451445 (not c!91419)) b!451443))

(assert (= (and b!451443 c!91417) b!451447))

(assert (= (and b!451443 (not c!91417)) b!451444))

(assert (= (and b!451444 c!91418) b!451448))

(assert (= (and b!451444 (not c!91418)) b!451449))

(assert (= (or b!451448 b!451449) bm!31231))

(assert (= (or b!451448 b!451449) bm!31232))

(assert (= (or b!451448 b!451449) bm!31230))

(assert (= (or b!451447 bm!31231) bm!31233))

(declare-fun m!714953 () Bool)

(assert (=> bm!31230 m!714953))

(declare-fun m!714955 () Bool)

(assert (=> bm!31232 m!714955))

(declare-fun m!714957 () Bool)

(assert (=> bm!31233 m!714957))

(assert (=> b!450911 d!172755))

(declare-fun d!172757 () Bool)

(assert (=> d!172757 (= (list!1937 (printWithSeparatorTokenWhenNeededRec!406 thiss!17480 rules!1920 lt!200210 separatorToken!170 0)) (list!1941 (c!91308 (printWithSeparatorTokenWhenNeededRec!406 thiss!17480 rules!1920 lt!200210 separatorToken!170 0))))))

(declare-fun bs!55890 () Bool)

(assert (= bs!55890 d!172757))

(declare-fun m!714959 () Bool)

(assert (=> bs!55890 m!714959))

(assert (=> b!450892 d!172757))

(declare-fun bs!55928 () Bool)

(declare-fun d!172759 () Bool)

(assert (= bs!55928 (and d!172759 b!450893)))

(declare-fun lambda!13126 () Int)

(assert (=> bs!55928 (= lambda!13126 lambda!13097)))

(declare-fun bs!55929 () Bool)

(assert (= bs!55929 (and d!172759 b!450894)))

(assert (=> bs!55929 (not (= lambda!13126 lambda!13098))))

(declare-fun bs!55930 () Bool)

(assert (= bs!55930 (and d!172759 d!172745)))

(assert (=> bs!55930 (not (= lambda!13126 lambda!13115))))

(declare-fun bs!55931 () Bool)

(declare-fun b!451618 () Bool)

(assert (= bs!55931 (and b!451618 b!450893)))

(declare-fun lambda!13127 () Int)

(assert (=> bs!55931 (not (= lambda!13127 lambda!13097))))

(declare-fun bs!55932 () Bool)

(assert (= bs!55932 (and b!451618 b!450894)))

(assert (=> bs!55932 (= lambda!13127 lambda!13098)))

(declare-fun bs!55933 () Bool)

(assert (= bs!55933 (and b!451618 d!172745)))

(assert (=> bs!55933 (= lambda!13127 lambda!13115)))

(declare-fun bs!55934 () Bool)

(assert (= bs!55934 (and b!451618 d!172759)))

(assert (=> bs!55934 (not (= lambda!13127 lambda!13126))))

(declare-fun b!451629 () Bool)

(declare-fun e!276075 () Bool)

(assert (=> b!451629 (= e!276075 true)))

(declare-fun b!451628 () Bool)

(declare-fun e!276074 () Bool)

(assert (=> b!451628 (= e!276074 e!276075)))

(declare-fun b!451627 () Bool)

(declare-fun e!276073 () Bool)

(assert (=> b!451627 (= e!276073 e!276074)))

(assert (=> b!451618 e!276073))

(assert (= b!451628 b!451629))

(assert (= b!451627 b!451628))

(assert (= (and b!451618 ((_ is Cons!4370) rules!1920)) b!451627))

(assert (=> b!451629 (< (dynLambda!2630 order!3833 (toValue!1662 (transformation!847 (h!9767 rules!1920)))) (dynLambda!2631 order!3835 lambda!13127))))

(assert (=> b!451629 (< (dynLambda!2632 order!3837 (toChars!1521 (transformation!847 (h!9767 rules!1920)))) (dynLambda!2631 order!3835 lambda!13127))))

(assert (=> b!451618 true))

(declare-fun b!451616 () Bool)

(declare-fun e!276067 () BalanceConc!3040)

(declare-fun call!31277 () BalanceConc!3040)

(assert (=> b!451616 (= e!276067 call!31277)))

(declare-fun lt!200618 () BalanceConc!3040)

(assert (=> d!172759 (= (list!1937 lt!200618) (printWithSeparatorTokenWhenNeededList!414 thiss!17480 rules!1920 (dropList!240 lt!200210 0) separatorToken!170))))

(declare-fun e!276069 () BalanceConc!3040)

(assert (=> d!172759 (= lt!200618 e!276069)))

(declare-fun c!91469 () Bool)

(assert (=> d!172759 (= c!91469 (>= 0 (size!3591 lt!200210)))))

(declare-fun lt!200629 () Unit!7875)

(declare-fun lemmaContentSubsetPreservesForall!184 (List!4381 List!4381 Int) Unit!7875)

(assert (=> d!172759 (= lt!200629 (lemmaContentSubsetPreservesForall!184 (list!1940 lt!200210) (dropList!240 lt!200210 0) lambda!13126))))

(declare-fun e!276070 () Bool)

(assert (=> d!172759 e!276070))

(declare-fun res!200583 () Bool)

(assert (=> d!172759 (=> (not res!200583) (not e!276070))))

(assert (=> d!172759 (= res!200583 (>= 0 0))))

(assert (=> d!172759 (= (printWithSeparatorTokenWhenNeededRec!406 thiss!17480 rules!1920 lt!200210 separatorToken!170 0) lt!200618)))

(declare-fun b!451617 () Bool)

(declare-fun e!276072 () Bool)

(declare-fun lt!200622 () Option!1124)

(assert (=> b!451617 (= e!276072 (= (_1!2860 (v!15430 lt!200622)) (apply!1112 lt!200210 0)))))

(declare-fun bm!31272 () Bool)

(declare-fun c!91471 () Bool)

(declare-fun c!91468 () Bool)

(assert (=> bm!31272 (= c!91471 c!91468)))

(declare-fun lt!200616 () BalanceConc!3040)

(declare-fun call!31281 () BalanceConc!3040)

(declare-fun call!31279 () BalanceConc!3040)

(assert (=> bm!31272 (= call!31281 (++!1270 e!276067 (ite c!91468 lt!200616 call!31279)))))

(declare-fun bm!31273 () Bool)

(declare-fun call!31280 () Token!1438)

(declare-fun call!31278 () Token!1438)

(assert (=> bm!31273 (= call!31280 call!31278)))

(declare-fun bm!31274 () Bool)

(declare-fun c!91470 () Bool)

(assert (=> bm!31274 (= call!31277 (charsOf!490 (ite c!91468 call!31278 (ite c!91470 separatorToken!170 call!31280))))))

(declare-fun bm!31275 () Bool)

(assert (=> bm!31275 (= call!31278 (apply!1112 lt!200210 0))))

(declare-fun e!276071 () BalanceConc!3040)

(assert (=> b!451618 (= e!276069 e!276071)))

(declare-fun lt!200626 () List!4381)

(assert (=> b!451618 (= lt!200626 (list!1940 lt!200210))))

(declare-fun lt!200628 () Unit!7875)

(assert (=> b!451618 (= lt!200628 (lemmaDropApply!280 lt!200626 0))))

(assert (=> b!451618 (= (head!1095 (drop!309 lt!200626 0)) (apply!1116 lt!200626 0))))

(declare-fun lt!200617 () Unit!7875)

(assert (=> b!451618 (= lt!200617 lt!200628)))

(declare-fun lt!200625 () List!4381)

(assert (=> b!451618 (= lt!200625 (list!1940 lt!200210))))

(declare-fun lt!200620 () Unit!7875)

(assert (=> b!451618 (= lt!200620 (lemmaDropTail!272 lt!200625 0))))

(assert (=> b!451618 (= (tail!630 (drop!309 lt!200625 0)) (drop!309 lt!200625 (+ 0 1)))))

(declare-fun lt!200624 () Unit!7875)

(assert (=> b!451618 (= lt!200624 lt!200620)))

(declare-fun lt!200623 () Unit!7875)

(assert (=> b!451618 (= lt!200623 (forallContained!400 (list!1940 lt!200210) lambda!13127 (apply!1112 lt!200210 0)))))

(assert (=> b!451618 (= lt!200616 (printWithSeparatorTokenWhenNeededRec!406 thiss!17480 rules!1920 lt!200210 separatorToken!170 (+ 0 1)))))

(assert (=> b!451618 (= lt!200622 (maxPrefixZipperSequence!412 thiss!17480 rules!1920 (++!1270 (charsOf!490 (apply!1112 lt!200210 0)) lt!200616)))))

(declare-fun res!200585 () Bool)

(assert (=> b!451618 (= res!200585 ((_ is Some!1123) lt!200622))))

(assert (=> b!451618 (=> (not res!200585) (not e!276072))))

(assert (=> b!451618 (= c!91468 e!276072)))

(declare-fun bm!31276 () Bool)

(assert (=> bm!31276 (= call!31279 call!31277)))

(declare-fun b!451619 () Bool)

(assert (=> b!451619 (= e!276070 (<= 0 (size!3591 lt!200210)))))

(declare-fun b!451620 () Bool)

(declare-fun e!276068 () Bool)

(assert (=> b!451620 (= e!276068 (not (= (_1!2860 (v!15430 lt!200622)) call!31278)))))

(declare-fun b!451621 () Bool)

(declare-fun e!276066 () BalanceConc!3040)

(assert (=> b!451621 (= e!276066 (++!1270 call!31281 lt!200616))))

(declare-fun b!451622 () Bool)

(assert (=> b!451622 (= e!276071 call!31281)))

(declare-fun b!451623 () Bool)

(assert (=> b!451623 (= e!276067 (charsOf!490 call!31280))))

(declare-fun b!451624 () Bool)

(assert (=> b!451624 (= c!91470 e!276068)))

(declare-fun res!200584 () Bool)

(assert (=> b!451624 (=> (not res!200584) (not e!276068))))

(assert (=> b!451624 (= res!200584 ((_ is Some!1123) lt!200622))))

(assert (=> b!451624 (= e!276071 e!276066)))

(declare-fun b!451625 () Bool)

(assert (=> b!451625 (= e!276069 (BalanceConc!3041 Empty!1516))))

(declare-fun b!451626 () Bool)

(assert (=> b!451626 (= e!276066 (BalanceConc!3041 Empty!1516))))

(assert (=> b!451626 (= (print!458 thiss!17480 (singletonSeq!393 call!31280)) (printTailRec!419 thiss!17480 (singletonSeq!393 call!31280) 0 (BalanceConc!3041 Empty!1516)))))

(declare-fun lt!200627 () Unit!7875)

(declare-fun Unit!7891 () Unit!7875)

(assert (=> b!451626 (= lt!200627 Unit!7891)))

(declare-fun lt!200619 () Unit!7875)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!188 (LexerInterface!733 List!4380 List!4379 List!4379) Unit!7875)

(assert (=> b!451626 (= lt!200619 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!188 thiss!17480 rules!1920 (list!1937 call!31279) (list!1937 lt!200616)))))

(assert (=> b!451626 false))

(declare-fun lt!200621 () Unit!7875)

(declare-fun Unit!7892 () Unit!7875)

(assert (=> b!451626 (= lt!200621 Unit!7892)))

(assert (= (and d!172759 res!200583) b!451619))

(assert (= (and d!172759 c!91469) b!451625))

(assert (= (and d!172759 (not c!91469)) b!451618))

(assert (= (and b!451618 res!200585) b!451617))

(assert (= (and b!451618 c!91468) b!451622))

(assert (= (and b!451618 (not c!91468)) b!451624))

(assert (= (and b!451624 res!200584) b!451620))

(assert (= (and b!451624 c!91470) b!451621))

(assert (= (and b!451624 (not c!91470)) b!451626))

(assert (= (or b!451621 b!451626) bm!31273))

(assert (= (or b!451621 b!451626) bm!31276))

(assert (= (or b!451622 b!451620 bm!31273) bm!31275))

(assert (= (or b!451622 bm!31276) bm!31274))

(assert (= (or b!451622 b!451621) bm!31272))

(assert (= (and bm!31272 c!91471) b!451616))

(assert (= (and bm!31272 (not c!91471)) b!451623))

(declare-fun m!715181 () Bool)

(assert (=> b!451618 m!715181))

(declare-fun m!715183 () Bool)

(assert (=> b!451618 m!715183))

(declare-fun m!715185 () Bool)

(assert (=> b!451618 m!715185))

(declare-fun m!715187 () Bool)

(assert (=> b!451618 m!715187))

(declare-fun m!715189 () Bool)

(assert (=> b!451618 m!715189))

(assert (=> b!451618 m!715181))

(declare-fun m!715191 () Bool)

(assert (=> b!451618 m!715191))

(declare-fun m!715193 () Bool)

(assert (=> b!451618 m!715193))

(declare-fun m!715195 () Bool)

(assert (=> b!451618 m!715195))

(declare-fun m!715197 () Bool)

(assert (=> b!451618 m!715197))

(declare-fun m!715199 () Bool)

(assert (=> b!451618 m!715199))

(assert (=> b!451618 m!715181))

(declare-fun m!715201 () Bool)

(assert (=> b!451618 m!715201))

(assert (=> b!451618 m!715201))

(assert (=> b!451618 m!715183))

(declare-fun m!715203 () Bool)

(assert (=> b!451618 m!715203))

(declare-fun m!715205 () Bool)

(assert (=> b!451618 m!715205))

(declare-fun m!715207 () Bool)

(assert (=> b!451618 m!715207))

(assert (=> b!451618 m!715189))

(assert (=> b!451618 m!715203))

(declare-fun m!715209 () Bool)

(assert (=> b!451618 m!715209))

(assert (=> b!451618 m!715205))

(declare-fun m!715211 () Bool)

(assert (=> bm!31272 m!715211))

(declare-fun m!715213 () Bool)

(assert (=> d!172759 m!715213))

(declare-fun m!715215 () Bool)

(assert (=> d!172759 m!715215))

(assert (=> d!172759 m!715213))

(declare-fun m!715217 () Bool)

(assert (=> d!172759 m!715217))

(assert (=> d!172759 m!715189))

(assert (=> d!172759 m!715213))

(declare-fun m!715219 () Bool)

(assert (=> d!172759 m!715219))

(assert (=> d!172759 m!715189))

(declare-fun m!715221 () Bool)

(assert (=> d!172759 m!715221))

(assert (=> b!451619 m!715217))

(declare-fun m!715223 () Bool)

(assert (=> b!451621 m!715223))

(assert (=> b!451617 m!715181))

(declare-fun m!715225 () Bool)

(assert (=> b!451623 m!715225))

(assert (=> bm!31275 m!715181))

(declare-fun m!715227 () Bool)

(assert (=> b!451626 m!715227))

(declare-fun m!715229 () Bool)

(assert (=> b!451626 m!715229))

(declare-fun m!715231 () Bool)

(assert (=> b!451626 m!715231))

(declare-fun m!715233 () Bool)

(assert (=> b!451626 m!715233))

(declare-fun m!715235 () Bool)

(assert (=> b!451626 m!715235))

(assert (=> b!451626 m!715229))

(assert (=> b!451626 m!715233))

(assert (=> b!451626 m!715233))

(declare-fun m!715237 () Bool)

(assert (=> b!451626 m!715237))

(assert (=> b!451626 m!715227))

(declare-fun m!715239 () Bool)

(assert (=> bm!31274 m!715239))

(assert (=> b!450892 d!172759))

(declare-fun bs!55942 () Bool)

(declare-fun b!451793 () Bool)

(assert (= bs!55942 (and b!451793 d!172745)))

(declare-fun lambda!13130 () Int)

(assert (=> bs!55942 (= lambda!13130 lambda!13115)))

(declare-fun bs!55943 () Bool)

(assert (= bs!55943 (and b!451793 b!450894)))

(assert (=> bs!55943 (= lambda!13130 lambda!13098)))

(declare-fun bs!55944 () Bool)

(assert (= bs!55944 (and b!451793 b!450893)))

(assert (=> bs!55944 (not (= lambda!13130 lambda!13097))))

(declare-fun bs!55945 () Bool)

(assert (= bs!55945 (and b!451793 b!451618)))

(assert (=> bs!55945 (= lambda!13130 lambda!13127)))

(declare-fun bs!55946 () Bool)

(assert (= bs!55946 (and b!451793 d!172759)))

(assert (=> bs!55946 (not (= lambda!13130 lambda!13126))))

(declare-fun b!451800 () Bool)

(declare-fun e!276183 () Bool)

(assert (=> b!451800 (= e!276183 true)))

(declare-fun b!451799 () Bool)

(declare-fun e!276182 () Bool)

(assert (=> b!451799 (= e!276182 e!276183)))

(declare-fun b!451798 () Bool)

(declare-fun e!276181 () Bool)

(assert (=> b!451798 (= e!276181 e!276182)))

(assert (=> b!451793 e!276181))

(assert (= b!451799 b!451800))

(assert (= b!451798 b!451799))

(assert (= (and b!451793 ((_ is Cons!4370) rules!1920)) b!451798))

(assert (=> b!451800 (< (dynLambda!2630 order!3833 (toValue!1662 (transformation!847 (h!9767 rules!1920)))) (dynLambda!2631 order!3835 lambda!13130))))

(assert (=> b!451800 (< (dynLambda!2632 order!3837 (toChars!1521 (transformation!847 (h!9767 rules!1920)))) (dynLambda!2631 order!3835 lambda!13130))))

(assert (=> b!451793 true))

(declare-fun b!451790 () Bool)

(declare-fun e!276180 () BalanceConc!3040)

(declare-fun call!31302 () BalanceConc!3040)

(assert (=> b!451790 (= e!276180 call!31302)))

(declare-fun bm!31294 () Bool)

(declare-fun call!31299 () List!4379)

(assert (=> bm!31294 (= call!31299 (list!1937 e!276180))))

(declare-fun c!91496 () Bool)

(declare-fun c!91497 () Bool)

(assert (=> bm!31294 (= c!91496 c!91497)))

(declare-fun b!451791 () Bool)

(declare-fun e!276177 () List!4379)

(declare-fun call!31303 () List!4379)

(assert (=> b!451791 (= e!276177 call!31303)))

(declare-fun bm!31295 () Bool)

(declare-fun call!31300 () BalanceConc!3040)

(assert (=> bm!31295 (= call!31300 (charsOf!490 (h!9768 tokens!465)))))

(declare-fun b!451792 () Bool)

(declare-fun e!276178 () List!4379)

(assert (=> b!451792 (= e!276178 Nil!4369)))

(declare-fun c!91499 () Bool)

(declare-fun bm!31296 () Bool)

(declare-fun call!31301 () List!4379)

(declare-fun lt!200679 () List!4379)

(assert (=> bm!31296 (= call!31303 (++!1268 call!31301 (ite c!91499 lt!200679 call!31299)))))

(assert (=> b!451793 (= e!276178 e!276177)))

(declare-fun lt!200681 () Unit!7875)

(assert (=> b!451793 (= lt!200681 (forallContained!400 tokens!465 lambda!13130 (h!9768 tokens!465)))))

(assert (=> b!451793 (= lt!200679 (printWithSeparatorTokenWhenNeededList!414 thiss!17480 rules!1920 (t!70899 tokens!465) separatorToken!170))))

(declare-fun lt!200678 () Option!1125)

(assert (=> b!451793 (= lt!200678 (maxPrefix!449 thiss!17480 rules!1920 (++!1268 (list!1937 (charsOf!490 (h!9768 tokens!465))) lt!200679)))))

(assert (=> b!451793 (= c!91499 (and ((_ is Some!1124) lt!200678) (= (_1!2859 (v!15431 lt!200678)) (h!9768 tokens!465))))))

(declare-fun d!172817 () Bool)

(declare-fun c!91498 () Bool)

(assert (=> d!172817 (= c!91498 ((_ is Cons!4371) tokens!465))))

(assert (=> d!172817 (= (printWithSeparatorTokenWhenNeededList!414 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!276178)))

(declare-fun b!451794 () Bool)

(assert (=> b!451794 (= e!276180 (charsOf!490 separatorToken!170))))

(declare-fun bm!31297 () Bool)

(assert (=> bm!31297 (= call!31302 call!31300)))

(declare-fun b!451795 () Bool)

(declare-fun e!276179 () List!4379)

(assert (=> b!451795 (= e!276179 (++!1268 call!31303 lt!200679))))

(declare-fun b!451796 () Bool)

(assert (=> b!451796 (= e!276179 Nil!4369)))

(assert (=> b!451796 (= (print!458 thiss!17480 (singletonSeq!393 (h!9768 tokens!465))) (printTailRec!419 thiss!17480 (singletonSeq!393 (h!9768 tokens!465)) 0 (BalanceConc!3041 Empty!1516)))))

(declare-fun lt!200683 () Unit!7875)

(declare-fun Unit!7893 () Unit!7875)

(assert (=> b!451796 (= lt!200683 Unit!7893)))

(declare-fun lt!200680 () Unit!7875)

(assert (=> b!451796 (= lt!200680 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!188 thiss!17480 rules!1920 call!31299 lt!200679))))

(assert (=> b!451796 false))

(declare-fun lt!200682 () Unit!7875)

(declare-fun Unit!7894 () Unit!7875)

(assert (=> b!451796 (= lt!200682 Unit!7894)))

(declare-fun b!451797 () Bool)

(assert (=> b!451797 (= c!91497 (and ((_ is Some!1124) lt!200678) (not (= (_1!2859 (v!15431 lt!200678)) (h!9768 tokens!465)))))))

(assert (=> b!451797 (= e!276177 e!276179)))

(declare-fun bm!31298 () Bool)

(assert (=> bm!31298 (= call!31301 (list!1937 (ite c!91499 call!31300 call!31302)))))

(assert (= (and d!172817 c!91498) b!451793))

(assert (= (and d!172817 (not c!91498)) b!451792))

(assert (= (and b!451793 c!91499) b!451791))

(assert (= (and b!451793 (not c!91499)) b!451797))

(assert (= (and b!451797 c!91497) b!451795))

(assert (= (and b!451797 (not c!91497)) b!451796))

(assert (= (or b!451795 b!451796) bm!31297))

(assert (= (or b!451795 b!451796) bm!31294))

(assert (= (and bm!31294 c!91496) b!451794))

(assert (= (and bm!31294 (not c!91496)) b!451790))

(assert (= (or b!451791 bm!31297) bm!31295))

(assert (= (or b!451791 b!451795) bm!31298))

(assert (= (or b!451791 b!451795) bm!31296))

(assert (=> b!451793 m!713887))

(assert (=> b!451793 m!713889))

(declare-fun m!715395 () Bool)

(assert (=> b!451793 m!715395))

(declare-fun m!715397 () Bool)

(assert (=> b!451793 m!715397))

(assert (=> b!451793 m!713881))

(assert (=> b!451793 m!713887))

(assert (=> b!451793 m!713889))

(assert (=> b!451793 m!715395))

(declare-fun m!715399 () Bool)

(assert (=> b!451793 m!715399))

(assert (=> bm!31295 m!713887))

(declare-fun m!715401 () Bool)

(assert (=> bm!31298 m!715401))

(declare-fun m!715403 () Bool)

(assert (=> bm!31296 m!715403))

(assert (=> b!451794 m!713883))

(declare-fun m!715405 () Bool)

(assert (=> b!451795 m!715405))

(declare-fun m!715407 () Bool)

(assert (=> bm!31294 m!715407))

(assert (=> b!451796 m!713867))

(assert (=> b!451796 m!713867))

(declare-fun m!715409 () Bool)

(assert (=> b!451796 m!715409))

(assert (=> b!451796 m!713867))

(declare-fun m!715411 () Bool)

(assert (=> b!451796 m!715411))

(declare-fun m!715413 () Bool)

(assert (=> b!451796 m!715413))

(assert (=> b!450892 d!172817))

(declare-fun d!172863 () Bool)

(assert (=> d!172863 (not (contains!977 (usedCharacters!148 (regex!847 (rule!1536 separatorToken!170))) lt!200193))))

(declare-fun lt!200686 () Unit!7875)

(declare-fun choose!3419 (LexerInterface!733 List!4380 List!4380 Rule!1494 Rule!1494 C!3064) Unit!7875)

(assert (=> d!172863 (= lt!200686 (choose!3419 thiss!17480 rules!1920 rules!1920 (rule!1536 lt!200205) (rule!1536 separatorToken!170) lt!200193))))

(assert (=> d!172863 (rulesInvariant!699 thiss!17480 rules!1920)))

(assert (=> d!172863 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!106 thiss!17480 rules!1920 rules!1920 (rule!1536 lt!200205) (rule!1536 separatorToken!170) lt!200193) lt!200686)))

(declare-fun bs!55947 () Bool)

(assert (= bs!55947 d!172863))

(assert (=> bs!55947 m!713963))

(assert (=> bs!55947 m!713963))

(assert (=> bs!55947 m!713965))

(declare-fun m!715415 () Bool)

(assert (=> bs!55947 m!715415))

(assert (=> bs!55947 m!713819))

(assert (=> b!450913 d!172863))

(declare-fun d!172865 () Bool)

(declare-fun res!200648 () Bool)

(declare-fun e!276186 () Bool)

(assert (=> d!172865 (=> (not res!200648) (not e!276186))))

(assert (=> d!172865 (= res!200648 (not (isEmpty!3319 (originalCharacters!890 (h!9768 tokens!465)))))))

(assert (=> d!172865 (= (inv!5446 (h!9768 tokens!465)) e!276186)))

(declare-fun b!451805 () Bool)

(declare-fun res!200649 () Bool)

(assert (=> b!451805 (=> (not res!200649) (not e!276186))))

(assert (=> b!451805 (= res!200649 (= (originalCharacters!890 (h!9768 tokens!465)) (list!1937 (dynLambda!2635 (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))) (value!28455 (h!9768 tokens!465))))))))

(declare-fun b!451806 () Bool)

(assert (=> b!451806 (= e!276186 (= (size!3590 (h!9768 tokens!465)) (size!3596 (originalCharacters!890 (h!9768 tokens!465)))))))

(assert (= (and d!172865 res!200648) b!451805))

(assert (= (and b!451805 res!200649) b!451806))

(declare-fun b_lambda!18713 () Bool)

(assert (=> (not b_lambda!18713) (not b!451805)))

(declare-fun tb!45477 () Bool)

(declare-fun t!70963 () Bool)

(assert (=> (and b!450885 (= (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))) (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465))))) t!70963) tb!45477))

(declare-fun b!451807 () Bool)

(declare-fun e!276187 () Bool)

(declare-fun tp!125680 () Bool)

(assert (=> b!451807 (= e!276187 (and (inv!5449 (c!91308 (dynLambda!2635 (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))) (value!28455 (h!9768 tokens!465))))) tp!125680))))

(declare-fun result!50024 () Bool)

(assert (=> tb!45477 (= result!50024 (and (inv!5450 (dynLambda!2635 (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))) (value!28455 (h!9768 tokens!465)))) e!276187))))

(assert (= tb!45477 b!451807))

(declare-fun m!715417 () Bool)

(assert (=> b!451807 m!715417))

(declare-fun m!715419 () Bool)

(assert (=> tb!45477 m!715419))

(assert (=> b!451805 t!70963))

(declare-fun b_and!48557 () Bool)

(assert (= b_and!48519 (and (=> t!70963 result!50024) b_and!48557)))

(declare-fun t!70965 () Bool)

(declare-fun tb!45479 () Bool)

(assert (=> (and b!450890 (= (toChars!1521 (transformation!847 (h!9767 rules!1920))) (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465))))) t!70965) tb!45479))

(declare-fun result!50026 () Bool)

(assert (= result!50026 result!50024))

(assert (=> b!451805 t!70965))

(declare-fun b_and!48559 () Bool)

(assert (= b_and!48521 (and (=> t!70965 result!50026) b_and!48559)))

(declare-fun t!70967 () Bool)

(declare-fun tb!45481 () Bool)

(assert (=> (and b!450899 (= (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))) (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465))))) t!70967) tb!45481))

(declare-fun result!50028 () Bool)

(assert (= result!50028 result!50024))

(assert (=> b!451805 t!70967))

(declare-fun b_and!48561 () Bool)

(assert (= b_and!48523 (and (=> t!70967 result!50028) b_and!48561)))

(declare-fun m!715421 () Bool)

(assert (=> d!172865 m!715421))

(declare-fun m!715423 () Bool)

(assert (=> b!451805 m!715423))

(assert (=> b!451805 m!715423))

(declare-fun m!715425 () Bool)

(assert (=> b!451805 m!715425))

(declare-fun m!715427 () Bool)

(assert (=> b!451806 m!715427))

(assert (=> b!450904 d!172865))

(declare-fun d!172867 () Bool)

(declare-fun res!200650 () Bool)

(declare-fun e!276188 () Bool)

(assert (=> d!172867 (=> (not res!200650) (not e!276188))))

(assert (=> d!172867 (= res!200650 (not (isEmpty!3319 (originalCharacters!890 separatorToken!170))))))

(assert (=> d!172867 (= (inv!5446 separatorToken!170) e!276188)))

(declare-fun b!451808 () Bool)

(declare-fun res!200651 () Bool)

(assert (=> b!451808 (=> (not res!200651) (not e!276188))))

(assert (=> b!451808 (= res!200651 (= (originalCharacters!890 separatorToken!170) (list!1937 (dynLambda!2635 (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))) (value!28455 separatorToken!170)))))))

(declare-fun b!451809 () Bool)

(assert (=> b!451809 (= e!276188 (= (size!3590 separatorToken!170) (size!3596 (originalCharacters!890 separatorToken!170))))))

(assert (= (and d!172867 res!200650) b!451808))

(assert (= (and b!451808 res!200651) b!451809))

(declare-fun b_lambda!18715 () Bool)

(assert (=> (not b_lambda!18715) (not b!451808)))

(declare-fun t!70969 () Bool)

(declare-fun tb!45483 () Bool)

(assert (=> (and b!450885 (= (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))) (toChars!1521 (transformation!847 (rule!1536 separatorToken!170)))) t!70969) tb!45483))

(declare-fun b!451810 () Bool)

(declare-fun e!276189 () Bool)

(declare-fun tp!125681 () Bool)

(assert (=> b!451810 (= e!276189 (and (inv!5449 (c!91308 (dynLambda!2635 (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))) (value!28455 separatorToken!170)))) tp!125681))))

(declare-fun result!50030 () Bool)

(assert (=> tb!45483 (= result!50030 (and (inv!5450 (dynLambda!2635 (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))) (value!28455 separatorToken!170))) e!276189))))

(assert (= tb!45483 b!451810))

(declare-fun m!715429 () Bool)

(assert (=> b!451810 m!715429))

(declare-fun m!715431 () Bool)

(assert (=> tb!45483 m!715431))

(assert (=> b!451808 t!70969))

(declare-fun b_and!48563 () Bool)

(assert (= b_and!48557 (and (=> t!70969 result!50030) b_and!48563)))

(declare-fun t!70971 () Bool)

(declare-fun tb!45485 () Bool)

(assert (=> (and b!450890 (= (toChars!1521 (transformation!847 (h!9767 rules!1920))) (toChars!1521 (transformation!847 (rule!1536 separatorToken!170)))) t!70971) tb!45485))

(declare-fun result!50032 () Bool)

(assert (= result!50032 result!50030))

(assert (=> b!451808 t!70971))

(declare-fun b_and!48565 () Bool)

(assert (= b_and!48559 (and (=> t!70971 result!50032) b_and!48565)))

(declare-fun t!70973 () Bool)

(declare-fun tb!45487 () Bool)

(assert (=> (and b!450899 (= (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))) (toChars!1521 (transformation!847 (rule!1536 separatorToken!170)))) t!70973) tb!45487))

(declare-fun result!50034 () Bool)

(assert (= result!50034 result!50030))

(assert (=> b!451808 t!70973))

(declare-fun b_and!48567 () Bool)

(assert (= b_and!48561 (and (=> t!70973 result!50034) b_and!48567)))

(declare-fun m!715433 () Bool)

(assert (=> d!172867 m!715433))

(declare-fun m!715435 () Bool)

(assert (=> b!451808 m!715435))

(assert (=> b!451808 m!715435))

(declare-fun m!715437 () Bool)

(assert (=> b!451808 m!715437))

(declare-fun m!715439 () Bool)

(assert (=> b!451809 m!715439))

(assert (=> start!42638 d!172867))

(declare-fun d!172869 () Bool)

(assert (=> d!172869 (= (inv!5442 (tag!1105 (h!9767 rules!1920))) (= (mod (str.len (value!28454 (tag!1105 (h!9767 rules!1920)))) 2) 0))))

(assert (=> b!450882 d!172869))

(declare-fun d!172871 () Bool)

(declare-fun res!200654 () Bool)

(declare-fun e!276192 () Bool)

(assert (=> d!172871 (=> (not res!200654) (not e!276192))))

(declare-fun semiInverseModEq!337 (Int Int) Bool)

(assert (=> d!172871 (= res!200654 (semiInverseModEq!337 (toChars!1521 (transformation!847 (h!9767 rules!1920))) (toValue!1662 (transformation!847 (h!9767 rules!1920)))))))

(assert (=> d!172871 (= (inv!5445 (transformation!847 (h!9767 rules!1920))) e!276192)))

(declare-fun b!451813 () Bool)

(declare-fun equivClasses!320 (Int Int) Bool)

(assert (=> b!451813 (= e!276192 (equivClasses!320 (toChars!1521 (transformation!847 (h!9767 rules!1920))) (toValue!1662 (transformation!847 (h!9767 rules!1920)))))))

(assert (= (and d!172871 res!200654) b!451813))

(declare-fun m!715441 () Bool)

(assert (=> d!172871 m!715441))

(declare-fun m!715443 () Bool)

(assert (=> b!451813 m!715443))

(assert (=> b!450882 d!172871))

(declare-fun d!172873 () Bool)

(assert (=> d!172873 (= (inv!5442 (tag!1105 (rule!1536 (h!9768 tokens!465)))) (= (mod (str.len (value!28454 (tag!1105 (rule!1536 (h!9768 tokens!465))))) 2) 0))))

(assert (=> b!450903 d!172873))

(declare-fun d!172875 () Bool)

(declare-fun res!200655 () Bool)

(declare-fun e!276193 () Bool)

(assert (=> d!172875 (=> (not res!200655) (not e!276193))))

(assert (=> d!172875 (= res!200655 (semiInverseModEq!337 (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))) (toValue!1662 (transformation!847 (rule!1536 (h!9768 tokens!465))))))))

(assert (=> d!172875 (= (inv!5445 (transformation!847 (rule!1536 (h!9768 tokens!465)))) e!276193)))

(declare-fun b!451814 () Bool)

(assert (=> b!451814 (= e!276193 (equivClasses!320 (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))) (toValue!1662 (transformation!847 (rule!1536 (h!9768 tokens!465))))))))

(assert (= (and d!172875 res!200655) b!451814))

(declare-fun m!715445 () Bool)

(assert (=> d!172875 m!715445))

(declare-fun m!715447 () Bool)

(assert (=> b!451814 m!715447))

(assert (=> b!450903 d!172875))

(declare-fun d!172877 () Bool)

(assert (=> d!172877 (= (isEmpty!3320 rules!1920) ((_ is Nil!4370) rules!1920))))

(assert (=> b!450884 d!172877))

(declare-fun d!172879 () Bool)

(declare-fun lt!200687 () Bool)

(assert (=> d!172879 (= lt!200687 (isEmpty!3319 (list!1937 (_2!2861 lt!200179))))))

(assert (=> d!172879 (= lt!200687 (isEmpty!3328 (c!91308 (_2!2861 lt!200179))))))

(assert (=> d!172879 (= (isEmpty!3321 (_2!2861 lt!200179)) lt!200687)))

(declare-fun bs!55948 () Bool)

(assert (= bs!55948 d!172879))

(declare-fun m!715449 () Bool)

(assert (=> bs!55948 m!715449))

(assert (=> bs!55948 m!715449))

(declare-fun m!715451 () Bool)

(assert (=> bs!55948 m!715451))

(declare-fun m!715453 () Bool)

(assert (=> bs!55948 m!715453))

(assert (=> b!450905 d!172879))

(declare-fun d!172881 () Bool)

(assert (=> d!172881 (= (isDefined!963 lt!200171) (not (isEmpty!3330 lt!200171)))))

(declare-fun bs!55949 () Bool)

(assert (= bs!55949 d!172881))

(declare-fun m!715455 () Bool)

(assert (=> bs!55949 m!715455))

(assert (=> b!450906 d!172881))

(assert (=> b!450906 d!172751))

(declare-fun d!172883 () Bool)

(assert (=> d!172883 (= (get!1594 lt!200177) (v!15431 lt!200177))))

(assert (=> b!450908 d!172883))

(declare-fun d!172885 () Bool)

(assert (=> d!172885 (= (isDefined!963 lt!200177) (not (isEmpty!3330 lt!200177)))))

(declare-fun bs!55950 () Bool)

(assert (= bs!55950 d!172885))

(declare-fun m!715457 () Bool)

(assert (=> bs!55950 m!715457))

(assert (=> b!450908 d!172885))

(declare-fun d!172887 () Bool)

(declare-fun e!276196 () Bool)

(assert (=> d!172887 e!276196))

(declare-fun res!200656 () Bool)

(assert (=> d!172887 (=> res!200656 e!276196)))

(declare-fun lt!200691 () Option!1125)

(assert (=> d!172887 (= res!200656 (isEmpty!3330 lt!200691))))

(declare-fun e!276194 () Option!1125)

(assert (=> d!172887 (= lt!200691 e!276194)))

(declare-fun c!91501 () Bool)

(assert (=> d!172887 (= c!91501 (and ((_ is Cons!4370) rules!1920) ((_ is Nil!4370) (t!70898 rules!1920))))))

(declare-fun lt!200690 () Unit!7875)

(declare-fun lt!200692 () Unit!7875)

(assert (=> d!172887 (= lt!200690 lt!200692)))

(assert (=> d!172887 (isPrefix!507 lt!200208 lt!200208)))

(assert (=> d!172887 (= lt!200692 (lemmaIsPrefixRefl!283 lt!200208 lt!200208))))

(assert (=> d!172887 (rulesValidInductive!278 thiss!17480 rules!1920)))

(assert (=> d!172887 (= (maxPrefix!449 thiss!17480 rules!1920 lt!200208) lt!200691)))

(declare-fun b!451815 () Bool)

(declare-fun res!200662 () Bool)

(declare-fun e!276195 () Bool)

(assert (=> b!451815 (=> (not res!200662) (not e!276195))))

(assert (=> b!451815 (= res!200662 (matchR!389 (regex!847 (rule!1536 (_1!2859 (get!1594 lt!200691)))) (list!1937 (charsOf!490 (_1!2859 (get!1594 lt!200691))))))))

(declare-fun b!451816 () Bool)

(assert (=> b!451816 (= e!276195 (contains!980 rules!1920 (rule!1536 (_1!2859 (get!1594 lt!200691)))))))

(declare-fun b!451817 () Bool)

(declare-fun lt!200688 () Option!1125)

(declare-fun lt!200689 () Option!1125)

(assert (=> b!451817 (= e!276194 (ite (and ((_ is None!1124) lt!200688) ((_ is None!1124) lt!200689)) None!1124 (ite ((_ is None!1124) lt!200689) lt!200688 (ite ((_ is None!1124) lt!200688) lt!200689 (ite (>= (size!3590 (_1!2859 (v!15431 lt!200688))) (size!3590 (_1!2859 (v!15431 lt!200689)))) lt!200688 lt!200689)))))))

(declare-fun call!31304 () Option!1125)

(assert (=> b!451817 (= lt!200688 call!31304)))

(assert (=> b!451817 (= lt!200689 (maxPrefix!449 thiss!17480 (t!70898 rules!1920) lt!200208))))

(declare-fun b!451818 () Bool)

(declare-fun res!200659 () Bool)

(assert (=> b!451818 (=> (not res!200659) (not e!276195))))

(assert (=> b!451818 (= res!200659 (= (list!1937 (charsOf!490 (_1!2859 (get!1594 lt!200691)))) (originalCharacters!890 (_1!2859 (get!1594 lt!200691)))))))

(declare-fun bm!31299 () Bool)

(assert (=> bm!31299 (= call!31304 (maxPrefixOneRule!217 thiss!17480 (h!9767 rules!1920) lt!200208))))

(declare-fun b!451819 () Bool)

(assert (=> b!451819 (= e!276194 call!31304)))

(declare-fun b!451820 () Bool)

(assert (=> b!451820 (= e!276196 e!276195)))

(declare-fun res!200660 () Bool)

(assert (=> b!451820 (=> (not res!200660) (not e!276195))))

(assert (=> b!451820 (= res!200660 (isDefined!963 lt!200691))))

(declare-fun b!451821 () Bool)

(declare-fun res!200658 () Bool)

(assert (=> b!451821 (=> (not res!200658) (not e!276195))))

(assert (=> b!451821 (= res!200658 (< (size!3596 (_2!2859 (get!1594 lt!200691))) (size!3596 lt!200208)))))

(declare-fun b!451822 () Bool)

(declare-fun res!200661 () Bool)

(assert (=> b!451822 (=> (not res!200661) (not e!276195))))

(assert (=> b!451822 (= res!200661 (= (value!28455 (_1!2859 (get!1594 lt!200691))) (apply!1117 (transformation!847 (rule!1536 (_1!2859 (get!1594 lt!200691)))) (seqFromList!1060 (originalCharacters!890 (_1!2859 (get!1594 lt!200691)))))))))

(declare-fun b!451823 () Bool)

(declare-fun res!200657 () Bool)

(assert (=> b!451823 (=> (not res!200657) (not e!276195))))

(assert (=> b!451823 (= res!200657 (= (++!1268 (list!1937 (charsOf!490 (_1!2859 (get!1594 lt!200691)))) (_2!2859 (get!1594 lt!200691))) lt!200208))))

(assert (= (and d!172887 c!91501) b!451819))

(assert (= (and d!172887 (not c!91501)) b!451817))

(assert (= (or b!451819 b!451817) bm!31299))

(assert (= (and d!172887 (not res!200656)) b!451820))

(assert (= (and b!451820 res!200660) b!451818))

(assert (= (and b!451818 res!200659) b!451821))

(assert (= (and b!451821 res!200658) b!451823))

(assert (= (and b!451823 res!200657) b!451822))

(assert (= (and b!451822 res!200661) b!451815))

(assert (= (and b!451815 res!200662) b!451816))

(declare-fun m!715459 () Bool)

(assert (=> b!451817 m!715459))

(declare-fun m!715461 () Bool)

(assert (=> bm!31299 m!715461))

(declare-fun m!715463 () Bool)

(assert (=> b!451815 m!715463))

(declare-fun m!715465 () Bool)

(assert (=> b!451815 m!715465))

(assert (=> b!451815 m!715465))

(declare-fun m!715467 () Bool)

(assert (=> b!451815 m!715467))

(assert (=> b!451815 m!715467))

(declare-fun m!715469 () Bool)

(assert (=> b!451815 m!715469))

(declare-fun m!715471 () Bool)

(assert (=> b!451820 m!715471))

(assert (=> b!451822 m!715463))

(declare-fun m!715473 () Bool)

(assert (=> b!451822 m!715473))

(assert (=> b!451822 m!715473))

(declare-fun m!715475 () Bool)

(assert (=> b!451822 m!715475))

(assert (=> b!451818 m!715463))

(assert (=> b!451818 m!715465))

(assert (=> b!451818 m!715465))

(assert (=> b!451818 m!715467))

(assert (=> b!451821 m!715463))

(declare-fun m!715477 () Bool)

(assert (=> b!451821 m!715477))

(assert (=> b!451821 m!714109))

(declare-fun m!715479 () Bool)

(assert (=> d!172887 m!715479))

(declare-fun m!715481 () Bool)

(assert (=> d!172887 m!715481))

(declare-fun m!715483 () Bool)

(assert (=> d!172887 m!715483))

(assert (=> d!172887 m!714735))

(assert (=> b!451823 m!715463))

(assert (=> b!451823 m!715465))

(assert (=> b!451823 m!715465))

(assert (=> b!451823 m!715467))

(assert (=> b!451823 m!715467))

(declare-fun m!715485 () Bool)

(assert (=> b!451823 m!715485))

(assert (=> b!451816 m!715463))

(declare-fun m!715487 () Bool)

(assert (=> b!451816 m!715487))

(assert (=> b!450908 d!172887))

(declare-fun b!451824 () Bool)

(declare-fun res!200669 () Bool)

(declare-fun e!276198 () Bool)

(assert (=> b!451824 (=> (not res!200669) (not e!276198))))

(declare-fun call!31305 () Bool)

(assert (=> b!451824 (= res!200669 (not call!31305))))

(declare-fun b!451825 () Bool)

(declare-fun res!200665 () Bool)

(assert (=> b!451825 (=> (not res!200665) (not e!276198))))

(assert (=> b!451825 (= res!200665 (isEmpty!3319 (tail!629 lt!200200)))))

(declare-fun b!451826 () Bool)

(assert (=> b!451826 (= e!276198 (= (head!1096 lt!200200) (c!91309 (regex!847 lt!200194))))))

(declare-fun bm!31300 () Bool)

(assert (=> bm!31300 (= call!31305 (isEmpty!3319 lt!200200))))

(declare-fun b!451827 () Bool)

(declare-fun e!276203 () Bool)

(declare-fun lt!200693 () Bool)

(assert (=> b!451827 (= e!276203 (not lt!200693))))

(declare-fun b!451828 () Bool)

(declare-fun e!276197 () Bool)

(assert (=> b!451828 (= e!276197 (= lt!200693 call!31305))))

(declare-fun d!172889 () Bool)

(assert (=> d!172889 e!276197))

(declare-fun c!91503 () Bool)

(assert (=> d!172889 (= c!91503 ((_ is EmptyExpr!1071) (regex!847 lt!200194)))))

(declare-fun e!276200 () Bool)

(assert (=> d!172889 (= lt!200693 e!276200)))

(declare-fun c!91504 () Bool)

(assert (=> d!172889 (= c!91504 (isEmpty!3319 lt!200200))))

(assert (=> d!172889 (validRegex!314 (regex!847 lt!200194))))

(assert (=> d!172889 (= (matchR!389 (regex!847 lt!200194) lt!200200) lt!200693)))

(declare-fun b!451829 () Bool)

(assert (=> b!451829 (= e!276200 (matchR!389 (derivativeStep!205 (regex!847 lt!200194) (head!1096 lt!200200)) (tail!629 lt!200200)))))

(declare-fun b!451830 () Bool)

(declare-fun e!276199 () Bool)

(declare-fun e!276202 () Bool)

(assert (=> b!451830 (= e!276199 e!276202)))

(declare-fun res!200664 () Bool)

(assert (=> b!451830 (=> res!200664 e!276202)))

(assert (=> b!451830 (= res!200664 call!31305)))

(declare-fun b!451831 () Bool)

(declare-fun e!276201 () Bool)

(assert (=> b!451831 (= e!276201 e!276199)))

(declare-fun res!200670 () Bool)

(assert (=> b!451831 (=> (not res!200670) (not e!276199))))

(assert (=> b!451831 (= res!200670 (not lt!200693))))

(declare-fun b!451832 () Bool)

(assert (=> b!451832 (= e!276202 (not (= (head!1096 lt!200200) (c!91309 (regex!847 lt!200194)))))))

(declare-fun b!451833 () Bool)

(assert (=> b!451833 (= e!276200 (nullable!239 (regex!847 lt!200194)))))

(declare-fun b!451834 () Bool)

(declare-fun res!200667 () Bool)

(assert (=> b!451834 (=> res!200667 e!276201)))

(assert (=> b!451834 (= res!200667 (not ((_ is ElementMatch!1071) (regex!847 lt!200194))))))

(assert (=> b!451834 (= e!276203 e!276201)))

(declare-fun b!451835 () Bool)

(assert (=> b!451835 (= e!276197 e!276203)))

(declare-fun c!91502 () Bool)

(assert (=> b!451835 (= c!91502 ((_ is EmptyLang!1071) (regex!847 lt!200194)))))

(declare-fun b!451836 () Bool)

(declare-fun res!200666 () Bool)

(assert (=> b!451836 (=> res!200666 e!276201)))

(assert (=> b!451836 (= res!200666 e!276198)))

(declare-fun res!200663 () Bool)

(assert (=> b!451836 (=> (not res!200663) (not e!276198))))

(assert (=> b!451836 (= res!200663 lt!200693)))

(declare-fun b!451837 () Bool)

(declare-fun res!200668 () Bool)

(assert (=> b!451837 (=> res!200668 e!276202)))

(assert (=> b!451837 (= res!200668 (not (isEmpty!3319 (tail!629 lt!200200))))))

(assert (= (and d!172889 c!91504) b!451833))

(assert (= (and d!172889 (not c!91504)) b!451829))

(assert (= (and d!172889 c!91503) b!451828))

(assert (= (and d!172889 (not c!91503)) b!451835))

(assert (= (and b!451835 c!91502) b!451827))

(assert (= (and b!451835 (not c!91502)) b!451834))

(assert (= (and b!451834 (not res!200667)) b!451836))

(assert (= (and b!451836 res!200663) b!451824))

(assert (= (and b!451824 res!200669) b!451825))

(assert (= (and b!451825 res!200665) b!451826))

(assert (= (and b!451836 (not res!200666)) b!451831))

(assert (= (and b!451831 res!200670) b!451830))

(assert (= (and b!451830 (not res!200664)) b!451837))

(assert (= (and b!451837 (not res!200668)) b!451832))

(assert (= (or b!451828 b!451824 b!451830) bm!31300))

(assert (=> b!451837 m!714119))

(assert (=> b!451837 m!714119))

(assert (=> b!451837 m!714121))

(assert (=> bm!31300 m!714123))

(declare-fun m!715489 () Bool)

(assert (=> b!451833 m!715489))

(assert (=> d!172889 m!714123))

(declare-fun m!715491 () Bool)

(assert (=> d!172889 m!715491))

(assert (=> b!451832 m!713979))

(assert (=> b!451829 m!713979))

(assert (=> b!451829 m!713979))

(declare-fun m!715493 () Bool)

(assert (=> b!451829 m!715493))

(assert (=> b!451829 m!714119))

(assert (=> b!451829 m!715493))

(assert (=> b!451829 m!714119))

(declare-fun m!715495 () Bool)

(assert (=> b!451829 m!715495))

(assert (=> b!451825 m!714119))

(assert (=> b!451825 m!714119))

(assert (=> b!451825 m!714121))

(assert (=> b!451826 m!713979))

(assert (=> b!450886 d!172889))

(declare-fun d!172891 () Bool)

(assert (=> d!172891 (= (get!1593 lt!200202) (v!15429 lt!200202))))

(assert (=> b!450886 d!172891))

(declare-fun d!172893 () Bool)

(declare-fun res!200675 () Bool)

(declare-fun e!276208 () Bool)

(assert (=> d!172893 (=> res!200675 e!276208)))

(assert (=> d!172893 (= res!200675 ((_ is Nil!4371) (t!70899 tokens!465)))))

(assert (=> d!172893 (= (forall!1264 (t!70899 tokens!465) lambda!13097) e!276208)))

(declare-fun b!451842 () Bool)

(declare-fun e!276209 () Bool)

(assert (=> b!451842 (= e!276208 e!276209)))

(declare-fun res!200676 () Bool)

(assert (=> b!451842 (=> (not res!200676) (not e!276209))))

(assert (=> b!451842 (= res!200676 (dynLambda!2636 lambda!13097 (h!9768 (t!70899 tokens!465))))))

(declare-fun b!451843 () Bool)

(assert (=> b!451843 (= e!276209 (forall!1264 (t!70899 (t!70899 tokens!465)) lambda!13097))))

(assert (= (and d!172893 (not res!200675)) b!451842))

(assert (= (and b!451842 res!200676) b!451843))

(declare-fun b_lambda!18717 () Bool)

(assert (=> (not b_lambda!18717) (not b!451842)))

(declare-fun m!715497 () Bool)

(assert (=> b!451842 m!715497))

(declare-fun m!715499 () Bool)

(assert (=> b!451843 m!715499))

(assert (=> b!450907 d!172893))

(declare-fun lt!200696 () Bool)

(declare-fun d!172895 () Bool)

(assert (=> d!172895 (= lt!200696 (isEmpty!3322 (list!1940 (_1!2861 (lex!525 thiss!17480 rules!1920 (seqFromList!1060 lt!200208))))))))

(declare-fun isEmpty!3332 (Conc!1517) Bool)

(assert (=> d!172895 (= lt!200696 (isEmpty!3332 (c!91310 (_1!2861 (lex!525 thiss!17480 rules!1920 (seqFromList!1060 lt!200208))))))))

(assert (=> d!172895 (= (isEmpty!3323 (_1!2861 (lex!525 thiss!17480 rules!1920 (seqFromList!1060 lt!200208)))) lt!200696)))

(declare-fun bs!55951 () Bool)

(assert (= bs!55951 d!172895))

(declare-fun m!715501 () Bool)

(assert (=> bs!55951 m!715501))

(assert (=> bs!55951 m!715501))

(declare-fun m!715503 () Bool)

(assert (=> bs!55951 m!715503))

(declare-fun m!715505 () Bool)

(assert (=> bs!55951 m!715505))

(assert (=> b!450920 d!172895))

(declare-fun b!451844 () Bool)

(declare-fun e!276211 () Bool)

(declare-fun lt!200697 () tuple2!5290)

(assert (=> b!451844 (= e!276211 (not (isEmpty!3323 (_1!2861 lt!200697))))))

(declare-fun d!172897 () Bool)

(declare-fun e!276212 () Bool)

(assert (=> d!172897 e!276212))

(declare-fun res!200678 () Bool)

(assert (=> d!172897 (=> (not res!200678) (not e!276212))))

(declare-fun e!276210 () Bool)

(assert (=> d!172897 (= res!200678 e!276210)))

(declare-fun c!91505 () Bool)

(assert (=> d!172897 (= c!91505 (> (size!3591 (_1!2861 lt!200697)) 0))))

(assert (=> d!172897 (= lt!200697 (lexTailRecV2!252 thiss!17480 rules!1920 (seqFromList!1060 lt!200208) (BalanceConc!3041 Empty!1516) (seqFromList!1060 lt!200208) (BalanceConc!3043 Empty!1517)))))

(assert (=> d!172897 (= (lex!525 thiss!17480 rules!1920 (seqFromList!1060 lt!200208)) lt!200697)))

(declare-fun b!451845 () Bool)

(assert (=> b!451845 (= e!276210 (= (_2!2861 lt!200697) (seqFromList!1060 lt!200208)))))

(declare-fun b!451846 () Bool)

(declare-fun res!200677 () Bool)

(assert (=> b!451846 (=> (not res!200677) (not e!276212))))

(assert (=> b!451846 (= res!200677 (= (list!1940 (_1!2861 lt!200697)) (_1!2863 (lexList!285 thiss!17480 rules!1920 (list!1937 (seqFromList!1060 lt!200208))))))))

(declare-fun b!451847 () Bool)

(assert (=> b!451847 (= e!276212 (= (list!1937 (_2!2861 lt!200697)) (_2!2863 (lexList!285 thiss!17480 rules!1920 (list!1937 (seqFromList!1060 lt!200208))))))))

(declare-fun b!451848 () Bool)

(assert (=> b!451848 (= e!276210 e!276211)))

(declare-fun res!200679 () Bool)

(assert (=> b!451848 (= res!200679 (< (size!3597 (_2!2861 lt!200697)) (size!3597 (seqFromList!1060 lt!200208))))))

(assert (=> b!451848 (=> (not res!200679) (not e!276211))))

(assert (= (and d!172897 c!91505) b!451848))

(assert (= (and d!172897 (not c!91505)) b!451845))

(assert (= (and b!451848 res!200679) b!451844))

(assert (= (and d!172897 res!200678) b!451846))

(assert (= (and b!451846 res!200677) b!451847))

(declare-fun m!715507 () Bool)

(assert (=> b!451848 m!715507))

(assert (=> b!451848 m!713917))

(declare-fun m!715509 () Bool)

(assert (=> b!451848 m!715509))

(declare-fun m!715511 () Bool)

(assert (=> b!451847 m!715511))

(assert (=> b!451847 m!713917))

(declare-fun m!715513 () Bool)

(assert (=> b!451847 m!715513))

(assert (=> b!451847 m!715513))

(declare-fun m!715515 () Bool)

(assert (=> b!451847 m!715515))

(declare-fun m!715517 () Bool)

(assert (=> d!172897 m!715517))

(assert (=> d!172897 m!713917))

(assert (=> d!172897 m!713917))

(declare-fun m!715519 () Bool)

(assert (=> d!172897 m!715519))

(declare-fun m!715521 () Bool)

(assert (=> b!451844 m!715521))

(declare-fun m!715523 () Bool)

(assert (=> b!451846 m!715523))

(assert (=> b!451846 m!713917))

(assert (=> b!451846 m!715513))

(assert (=> b!451846 m!715513))

(assert (=> b!451846 m!715515))

(assert (=> b!450920 d!172897))

(declare-fun d!172899 () Bool)

(declare-fun fromListB!474 (List!4379) BalanceConc!3040)

(assert (=> d!172899 (= (seqFromList!1060 lt!200208) (fromListB!474 lt!200208))))

(declare-fun bs!55952 () Bool)

(assert (= bs!55952 d!172899))

(declare-fun m!715525 () Bool)

(assert (=> bs!55952 m!715525))

(assert (=> b!450920 d!172899))

(declare-fun d!172901 () Bool)

(declare-fun res!200682 () Bool)

(declare-fun e!276215 () Bool)

(assert (=> d!172901 (=> (not res!200682) (not e!276215))))

(declare-fun rulesValid!302 (LexerInterface!733 List!4380) Bool)

(assert (=> d!172901 (= res!200682 (rulesValid!302 thiss!17480 rules!1920))))

(assert (=> d!172901 (= (rulesInvariant!699 thiss!17480 rules!1920) e!276215)))

(declare-fun b!451851 () Bool)

(declare-datatypes ((List!4383 0))(
  ( (Nil!4373) (Cons!4373 (h!9770 String!5425) (t!70987 List!4383)) )
))
(declare-fun noDuplicateTag!302 (LexerInterface!733 List!4380 List!4383) Bool)

(assert (=> b!451851 (= e!276215 (noDuplicateTag!302 thiss!17480 rules!1920 Nil!4373))))

(assert (= (and d!172901 res!200682) b!451851))

(declare-fun m!715527 () Bool)

(assert (=> d!172901 m!715527))

(declare-fun m!715529 () Bool)

(assert (=> b!451851 m!715529))

(assert (=> b!450877 d!172901))

(declare-fun d!172903 () Bool)

(assert (=> d!172903 (= (get!1594 lt!200171) (v!15431 lt!200171))))

(assert (=> b!450898 d!172903))

(declare-fun d!172905 () Bool)

(assert (=> d!172905 (= (head!1095 tokens!465) (h!9768 tokens!465))))

(assert (=> b!450898 d!172905))

(declare-fun d!172907 () Bool)

(declare-fun lt!200700 () Int)

(assert (=> d!172907 (>= lt!200700 0)))

(declare-fun e!276218 () Int)

(assert (=> d!172907 (= lt!200700 e!276218)))

(declare-fun c!91508 () Bool)

(assert (=> d!172907 (= c!91508 ((_ is Nil!4371) (t!70899 tokens!465)))))

(assert (=> d!172907 (= (ListPrimitiveSize!34 (t!70899 tokens!465)) lt!200700)))

(declare-fun b!451856 () Bool)

(assert (=> b!451856 (= e!276218 0)))

(declare-fun b!451857 () Bool)

(assert (=> b!451857 (= e!276218 (+ 1 (ListPrimitiveSize!34 (t!70899 (t!70899 tokens!465)))))))

(assert (= (and d!172907 c!91508) b!451856))

(assert (= (and d!172907 (not c!91508)) b!451857))

(declare-fun m!715531 () Bool)

(assert (=> b!451857 m!715531))

(assert (=> b!450919 d!172907))

(declare-fun d!172909 () Bool)

(declare-fun lt!200701 () Int)

(assert (=> d!172909 (>= lt!200701 0)))

(declare-fun e!276219 () Int)

(assert (=> d!172909 (= lt!200701 e!276219)))

(declare-fun c!91509 () Bool)

(assert (=> d!172909 (= c!91509 ((_ is Nil!4371) tokens!465))))

(assert (=> d!172909 (= (ListPrimitiveSize!34 tokens!465) lt!200701)))

(declare-fun b!451858 () Bool)

(assert (=> b!451858 (= e!276219 0)))

(declare-fun b!451859 () Bool)

(assert (=> b!451859 (= e!276219 (+ 1 (ListPrimitiveSize!34 (t!70899 tokens!465))))))

(assert (= (and d!172909 c!91509) b!451858))

(assert (= (and d!172909 (not c!91509)) b!451859))

(assert (=> b!451859 m!714015))

(assert (=> b!450919 d!172909))

(declare-fun b!451870 () Bool)

(declare-fun e!276226 () Bool)

(declare-fun inv!15 (TokenValue!869) Bool)

(assert (=> b!451870 (= e!276226 (inv!15 (value!28455 (h!9768 tokens!465))))))

(declare-fun b!451871 () Bool)

(declare-fun e!276228 () Bool)

(declare-fun inv!17 (TokenValue!869) Bool)

(assert (=> b!451871 (= e!276228 (inv!17 (value!28455 (h!9768 tokens!465))))))

(declare-fun d!172911 () Bool)

(declare-fun c!91514 () Bool)

(assert (=> d!172911 (= c!91514 ((_ is IntegerValue!2607) (value!28455 (h!9768 tokens!465))))))

(declare-fun e!276227 () Bool)

(assert (=> d!172911 (= (inv!21 (value!28455 (h!9768 tokens!465))) e!276227)))

(declare-fun b!451872 () Bool)

(declare-fun res!200685 () Bool)

(assert (=> b!451872 (=> res!200685 e!276226)))

(assert (=> b!451872 (= res!200685 (not ((_ is IntegerValue!2609) (value!28455 (h!9768 tokens!465)))))))

(assert (=> b!451872 (= e!276228 e!276226)))

(declare-fun b!451873 () Bool)

(assert (=> b!451873 (= e!276227 e!276228)))

(declare-fun c!91515 () Bool)

(assert (=> b!451873 (= c!91515 ((_ is IntegerValue!2608) (value!28455 (h!9768 tokens!465))))))

(declare-fun b!451874 () Bool)

(declare-fun inv!16 (TokenValue!869) Bool)

(assert (=> b!451874 (= e!276227 (inv!16 (value!28455 (h!9768 tokens!465))))))

(assert (= (and d!172911 c!91514) b!451874))

(assert (= (and d!172911 (not c!91514)) b!451873))

(assert (= (and b!451873 c!91515) b!451871))

(assert (= (and b!451873 (not c!91515)) b!451872))

(assert (= (and b!451872 (not res!200685)) b!451870))

(declare-fun m!715533 () Bool)

(assert (=> b!451870 m!715533))

(declare-fun m!715535 () Bool)

(assert (=> b!451871 m!715535))

(declare-fun m!715537 () Bool)

(assert (=> b!451874 m!715537))

(assert (=> b!450900 d!172911))

(declare-fun b!451875 () Bool)

(declare-fun res!200692 () Bool)

(declare-fun e!276230 () Bool)

(assert (=> b!451875 (=> (not res!200692) (not e!276230))))

(declare-fun call!31306 () Bool)

(assert (=> b!451875 (= res!200692 (not call!31306))))

(declare-fun b!451876 () Bool)

(declare-fun res!200688 () Bool)

(assert (=> b!451876 (=> (not res!200688) (not e!276230))))

(assert (=> b!451876 (= res!200688 (isEmpty!3319 (tail!629 lt!200199)))))

(declare-fun b!451877 () Bool)

(assert (=> b!451877 (= e!276230 (= (head!1096 lt!200199) (c!91309 (regex!847 lt!200197))))))

(declare-fun bm!31301 () Bool)

(assert (=> bm!31301 (= call!31306 (isEmpty!3319 lt!200199))))

(declare-fun b!451878 () Bool)

(declare-fun e!276235 () Bool)

(declare-fun lt!200702 () Bool)

(assert (=> b!451878 (= e!276235 (not lt!200702))))

(declare-fun b!451879 () Bool)

(declare-fun e!276229 () Bool)

(assert (=> b!451879 (= e!276229 (= lt!200702 call!31306))))

(declare-fun d!172913 () Bool)

(assert (=> d!172913 e!276229))

(declare-fun c!91517 () Bool)

(assert (=> d!172913 (= c!91517 ((_ is EmptyExpr!1071) (regex!847 lt!200197)))))

(declare-fun e!276232 () Bool)

(assert (=> d!172913 (= lt!200702 e!276232)))

(declare-fun c!91518 () Bool)

(assert (=> d!172913 (= c!91518 (isEmpty!3319 lt!200199))))

(assert (=> d!172913 (validRegex!314 (regex!847 lt!200197))))

(assert (=> d!172913 (= (matchR!389 (regex!847 lt!200197) lt!200199) lt!200702)))

(declare-fun b!451880 () Bool)

(assert (=> b!451880 (= e!276232 (matchR!389 (derivativeStep!205 (regex!847 lt!200197) (head!1096 lt!200199)) (tail!629 lt!200199)))))

(declare-fun b!451881 () Bool)

(declare-fun e!276231 () Bool)

(declare-fun e!276234 () Bool)

(assert (=> b!451881 (= e!276231 e!276234)))

(declare-fun res!200687 () Bool)

(assert (=> b!451881 (=> res!200687 e!276234)))

(assert (=> b!451881 (= res!200687 call!31306)))

(declare-fun b!451882 () Bool)

(declare-fun e!276233 () Bool)

(assert (=> b!451882 (= e!276233 e!276231)))

(declare-fun res!200693 () Bool)

(assert (=> b!451882 (=> (not res!200693) (not e!276231))))

(assert (=> b!451882 (= res!200693 (not lt!200702))))

(declare-fun b!451883 () Bool)

(assert (=> b!451883 (= e!276234 (not (= (head!1096 lt!200199) (c!91309 (regex!847 lt!200197)))))))

(declare-fun b!451884 () Bool)

(assert (=> b!451884 (= e!276232 (nullable!239 (regex!847 lt!200197)))))

(declare-fun b!451885 () Bool)

(declare-fun res!200690 () Bool)

(assert (=> b!451885 (=> res!200690 e!276233)))

(assert (=> b!451885 (= res!200690 (not ((_ is ElementMatch!1071) (regex!847 lt!200197))))))

(assert (=> b!451885 (= e!276235 e!276233)))

(declare-fun b!451886 () Bool)

(assert (=> b!451886 (= e!276229 e!276235)))

(declare-fun c!91516 () Bool)

(assert (=> b!451886 (= c!91516 ((_ is EmptyLang!1071) (regex!847 lt!200197)))))

(declare-fun b!451887 () Bool)

(declare-fun res!200689 () Bool)

(assert (=> b!451887 (=> res!200689 e!276233)))

(assert (=> b!451887 (= res!200689 e!276230)))

(declare-fun res!200686 () Bool)

(assert (=> b!451887 (=> (not res!200686) (not e!276230))))

(assert (=> b!451887 (= res!200686 lt!200702)))

(declare-fun b!451888 () Bool)

(declare-fun res!200691 () Bool)

(assert (=> b!451888 (=> res!200691 e!276234)))

(assert (=> b!451888 (= res!200691 (not (isEmpty!3319 (tail!629 lt!200199))))))

(assert (= (and d!172913 c!91518) b!451884))

(assert (= (and d!172913 (not c!91518)) b!451880))

(assert (= (and d!172913 c!91517) b!451879))

(assert (= (and d!172913 (not c!91517)) b!451886))

(assert (= (and b!451886 c!91516) b!451878))

(assert (= (and b!451886 (not c!91516)) b!451885))

(assert (= (and b!451885 (not res!200690)) b!451887))

(assert (= (and b!451887 res!200686) b!451875))

(assert (= (and b!451875 res!200692) b!451876))

(assert (= (and b!451876 res!200688) b!451877))

(assert (= (and b!451887 (not res!200689)) b!451882))

(assert (= (and b!451882 res!200693) b!451881))

(assert (= (and b!451881 (not res!200687)) b!451888))

(assert (= (and b!451888 (not res!200691)) b!451883))

(assert (= (or b!451879 b!451875 b!451881) bm!31301))

(declare-fun m!715539 () Bool)

(assert (=> b!451888 m!715539))

(assert (=> b!451888 m!715539))

(declare-fun m!715541 () Bool)

(assert (=> b!451888 m!715541))

(declare-fun m!715543 () Bool)

(assert (=> bm!31301 m!715543))

(declare-fun m!715545 () Bool)

(assert (=> b!451884 m!715545))

(assert (=> d!172913 m!715543))

(declare-fun m!715547 () Bool)

(assert (=> d!172913 m!715547))

(declare-fun m!715549 () Bool)

(assert (=> b!451883 m!715549))

(assert (=> b!451880 m!715549))

(assert (=> b!451880 m!715549))

(declare-fun m!715551 () Bool)

(assert (=> b!451880 m!715551))

(assert (=> b!451880 m!715539))

(assert (=> b!451880 m!715551))

(assert (=> b!451880 m!715539))

(declare-fun m!715553 () Bool)

(assert (=> b!451880 m!715553))

(assert (=> b!451876 m!715539))

(assert (=> b!451876 m!715539))

(assert (=> b!451876 m!715541))

(assert (=> b!451877 m!715549))

(assert (=> b!450880 d!172913))

(declare-fun d!172915 () Bool)

(assert (=> d!172915 (= (get!1593 lt!200183) (v!15429 lt!200183))))

(assert (=> b!450880 d!172915))

(declare-fun d!172917 () Bool)

(declare-fun e!276236 () Bool)

(assert (=> d!172917 e!276236))

(declare-fun res!200694 () Bool)

(assert (=> d!172917 (=> (not res!200694) (not e!276236))))

(declare-fun lt!200703 () List!4379)

(assert (=> d!172917 (= res!200694 (= (content!733 lt!200703) ((_ map or) (content!733 lt!200199) (content!733 lt!200216))))))

(declare-fun e!276237 () List!4379)

(assert (=> d!172917 (= lt!200703 e!276237)))

(declare-fun c!91519 () Bool)

(assert (=> d!172917 (= c!91519 ((_ is Nil!4369) lt!200199))))

(assert (=> d!172917 (= (++!1268 lt!200199 lt!200216) lt!200703)))

(declare-fun b!451892 () Bool)

(assert (=> b!451892 (= e!276236 (or (not (= lt!200216 Nil!4369)) (= lt!200703 lt!200199)))))

(declare-fun b!451891 () Bool)

(declare-fun res!200695 () Bool)

(assert (=> b!451891 (=> (not res!200695) (not e!276236))))

(assert (=> b!451891 (= res!200695 (= (size!3596 lt!200703) (+ (size!3596 lt!200199) (size!3596 lt!200216))))))

(declare-fun b!451890 () Bool)

(assert (=> b!451890 (= e!276237 (Cons!4369 (h!9766 lt!200199) (++!1268 (t!70897 lt!200199) lt!200216)))))

(declare-fun b!451889 () Bool)

(assert (=> b!451889 (= e!276237 lt!200216)))

(assert (= (and d!172917 c!91519) b!451889))

(assert (= (and d!172917 (not c!91519)) b!451890))

(assert (= (and d!172917 res!200694) b!451891))

(assert (= (and b!451891 res!200695) b!451892))

(declare-fun m!715555 () Bool)

(assert (=> d!172917 m!715555))

(declare-fun m!715557 () Bool)

(assert (=> d!172917 m!715557))

(assert (=> d!172917 m!714105))

(declare-fun m!715559 () Bool)

(assert (=> b!451891 m!715559))

(declare-fun m!715561 () Bool)

(assert (=> b!451891 m!715561))

(assert (=> b!451891 m!714111))

(declare-fun m!715563 () Bool)

(assert (=> b!451890 m!715563))

(assert (=> b!450901 d!172917))

(declare-fun d!172919 () Bool)

(assert (=> d!172919 (= (list!1937 (charsOf!490 separatorToken!170)) (list!1941 (c!91308 (charsOf!490 separatorToken!170))))))

(declare-fun bs!55953 () Bool)

(assert (= bs!55953 d!172919))

(declare-fun m!715565 () Bool)

(assert (=> bs!55953 m!715565))

(assert (=> b!450901 d!172919))

(declare-fun d!172921 () Bool)

(assert (=> d!172921 (= (++!1268 (++!1268 lt!200208 lt!200199) lt!200216) (++!1268 lt!200208 (++!1268 lt!200199 lt!200216)))))

(declare-fun lt!200706 () Unit!7875)

(declare-fun choose!3421 (List!4379 List!4379 List!4379) Unit!7875)

(assert (=> d!172921 (= lt!200706 (choose!3421 lt!200208 lt!200199 lt!200216))))

(assert (=> d!172921 (= (lemmaConcatAssociativity!582 lt!200208 lt!200199 lt!200216) lt!200706)))

(declare-fun bs!55954 () Bool)

(assert (= bs!55954 d!172921))

(assert (=> bs!55954 m!713897))

(assert (=> bs!55954 m!713899))

(assert (=> bs!55954 m!713897))

(assert (=> bs!55954 m!713877))

(declare-fun m!715567 () Bool)

(assert (=> bs!55954 m!715567))

(assert (=> bs!55954 m!713877))

(declare-fun m!715569 () Bool)

(assert (=> bs!55954 m!715569))

(assert (=> b!450901 d!172921))

(declare-fun d!172923 () Bool)

(declare-fun e!276238 () Bool)

(assert (=> d!172923 e!276238))

(declare-fun res!200696 () Bool)

(assert (=> d!172923 (=> (not res!200696) (not e!276238))))

(declare-fun lt!200707 () List!4379)

(assert (=> d!172923 (= res!200696 (= (content!733 lt!200707) ((_ map or) (content!733 lt!200208) (content!733 lt!200199))))))

(declare-fun e!276239 () List!4379)

(assert (=> d!172923 (= lt!200707 e!276239)))

(declare-fun c!91520 () Bool)

(assert (=> d!172923 (= c!91520 ((_ is Nil!4369) lt!200208))))

(assert (=> d!172923 (= (++!1268 lt!200208 lt!200199) lt!200707)))

(declare-fun b!451896 () Bool)

(assert (=> b!451896 (= e!276238 (or (not (= lt!200199 Nil!4369)) (= lt!200707 lt!200208)))))

(declare-fun b!451895 () Bool)

(declare-fun res!200697 () Bool)

(assert (=> b!451895 (=> (not res!200697) (not e!276238))))

(assert (=> b!451895 (= res!200697 (= (size!3596 lt!200707) (+ (size!3596 lt!200208) (size!3596 lt!200199))))))

(declare-fun b!451894 () Bool)

(assert (=> b!451894 (= e!276239 (Cons!4369 (h!9766 lt!200208) (++!1268 (t!70897 lt!200208) lt!200199)))))

(declare-fun b!451893 () Bool)

(assert (=> b!451893 (= e!276239 lt!200199)))

(assert (= (and d!172923 c!91520) b!451893))

(assert (= (and d!172923 (not c!91520)) b!451894))

(assert (= (and d!172923 res!200696) b!451895))

(assert (= (and b!451895 res!200697) b!451896))

(declare-fun m!715571 () Bool)

(assert (=> d!172923 m!715571))

(assert (=> d!172923 m!714103))

(assert (=> d!172923 m!715557))

(declare-fun m!715573 () Bool)

(assert (=> b!451895 m!715573))

(assert (=> b!451895 m!714109))

(assert (=> b!451895 m!715561))

(declare-fun m!715575 () Bool)

(assert (=> b!451894 m!715575))

(assert (=> b!450901 d!172923))

(declare-fun d!172925 () Bool)

(assert (=> d!172925 (= (list!1937 (printWithSeparatorTokenWhenNeededRec!406 thiss!17480 rules!1920 lt!200206 separatorToken!170 0)) (list!1941 (c!91308 (printWithSeparatorTokenWhenNeededRec!406 thiss!17480 rules!1920 lt!200206 separatorToken!170 0))))))

(declare-fun bs!55955 () Bool)

(assert (= bs!55955 d!172925))

(declare-fun m!715577 () Bool)

(assert (=> bs!55955 m!715577))

(assert (=> b!450901 d!172925))

(declare-fun bs!55956 () Bool)

(declare-fun b!451900 () Bool)

(assert (= bs!55956 (and b!451900 d!172745)))

(declare-fun lambda!13131 () Int)

(assert (=> bs!55956 (= lambda!13131 lambda!13115)))

(declare-fun bs!55957 () Bool)

(assert (= bs!55957 (and b!451900 b!450894)))

(assert (=> bs!55957 (= lambda!13131 lambda!13098)))

(declare-fun bs!55958 () Bool)

(assert (= bs!55958 (and b!451900 b!450893)))

(assert (=> bs!55958 (not (= lambda!13131 lambda!13097))))

(declare-fun bs!55959 () Bool)

(assert (= bs!55959 (and b!451900 b!451793)))

(assert (=> bs!55959 (= lambda!13131 lambda!13130)))

(declare-fun bs!55960 () Bool)

(assert (= bs!55960 (and b!451900 b!451618)))

(assert (=> bs!55960 (= lambda!13131 lambda!13127)))

(declare-fun bs!55961 () Bool)

(assert (= bs!55961 (and b!451900 d!172759)))

(assert (=> bs!55961 (not (= lambda!13131 lambda!13126))))

(declare-fun b!451907 () Bool)

(declare-fun e!276246 () Bool)

(assert (=> b!451907 (= e!276246 true)))

(declare-fun b!451906 () Bool)

(declare-fun e!276245 () Bool)

(assert (=> b!451906 (= e!276245 e!276246)))

(declare-fun b!451905 () Bool)

(declare-fun e!276244 () Bool)

(assert (=> b!451905 (= e!276244 e!276245)))

(assert (=> b!451900 e!276244))

(assert (= b!451906 b!451907))

(assert (= b!451905 b!451906))

(assert (= (and b!451900 ((_ is Cons!4370) rules!1920)) b!451905))

(assert (=> b!451907 (< (dynLambda!2630 order!3833 (toValue!1662 (transformation!847 (h!9767 rules!1920)))) (dynLambda!2631 order!3835 lambda!13131))))

(assert (=> b!451907 (< (dynLambda!2632 order!3837 (toChars!1521 (transformation!847 (h!9767 rules!1920)))) (dynLambda!2631 order!3835 lambda!13131))))

(assert (=> b!451900 true))

(declare-fun b!451897 () Bool)

(declare-fun e!276243 () BalanceConc!3040)

(declare-fun call!31310 () BalanceConc!3040)

(assert (=> b!451897 (= e!276243 call!31310)))

(declare-fun bm!31302 () Bool)

(declare-fun call!31307 () List!4379)

(assert (=> bm!31302 (= call!31307 (list!1937 e!276243))))

(declare-fun c!91521 () Bool)

(declare-fun c!91522 () Bool)

(assert (=> bm!31302 (= c!91521 c!91522)))

(declare-fun b!451898 () Bool)

(declare-fun e!276240 () List!4379)

(declare-fun call!31311 () List!4379)

(assert (=> b!451898 (= e!276240 call!31311)))

(declare-fun bm!31303 () Bool)

(declare-fun call!31308 () BalanceConc!3040)

(assert (=> bm!31303 (= call!31308 (charsOf!490 (h!9768 (t!70899 tokens!465))))))

(declare-fun b!451899 () Bool)

(declare-fun e!276241 () List!4379)

(assert (=> b!451899 (= e!276241 Nil!4369)))

(declare-fun call!31309 () List!4379)

(declare-fun c!91524 () Bool)

(declare-fun bm!31304 () Bool)

(declare-fun lt!200709 () List!4379)

(assert (=> bm!31304 (= call!31311 (++!1268 call!31309 (ite c!91524 lt!200709 call!31307)))))

(assert (=> b!451900 (= e!276241 e!276240)))

(declare-fun lt!200711 () Unit!7875)

(assert (=> b!451900 (= lt!200711 (forallContained!400 (t!70899 tokens!465) lambda!13131 (h!9768 (t!70899 tokens!465))))))

(assert (=> b!451900 (= lt!200709 (printWithSeparatorTokenWhenNeededList!414 thiss!17480 rules!1920 (t!70899 (t!70899 tokens!465)) separatorToken!170))))

(declare-fun lt!200708 () Option!1125)

(assert (=> b!451900 (= lt!200708 (maxPrefix!449 thiss!17480 rules!1920 (++!1268 (list!1937 (charsOf!490 (h!9768 (t!70899 tokens!465)))) lt!200709)))))

(assert (=> b!451900 (= c!91524 (and ((_ is Some!1124) lt!200708) (= (_1!2859 (v!15431 lt!200708)) (h!9768 (t!70899 tokens!465)))))))

(declare-fun d!172927 () Bool)

(declare-fun c!91523 () Bool)

(assert (=> d!172927 (= c!91523 ((_ is Cons!4371) (t!70899 tokens!465)))))

(assert (=> d!172927 (= (printWithSeparatorTokenWhenNeededList!414 thiss!17480 rules!1920 (t!70899 tokens!465) separatorToken!170) e!276241)))

(declare-fun b!451901 () Bool)

(assert (=> b!451901 (= e!276243 (charsOf!490 separatorToken!170))))

(declare-fun bm!31305 () Bool)

(assert (=> bm!31305 (= call!31310 call!31308)))

(declare-fun b!451902 () Bool)

(declare-fun e!276242 () List!4379)

(assert (=> b!451902 (= e!276242 (++!1268 call!31311 lt!200709))))

(declare-fun b!451903 () Bool)

(assert (=> b!451903 (= e!276242 Nil!4369)))

(assert (=> b!451903 (= (print!458 thiss!17480 (singletonSeq!393 (h!9768 (t!70899 tokens!465)))) (printTailRec!419 thiss!17480 (singletonSeq!393 (h!9768 (t!70899 tokens!465))) 0 (BalanceConc!3041 Empty!1516)))))

(declare-fun lt!200713 () Unit!7875)

(declare-fun Unit!7895 () Unit!7875)

(assert (=> b!451903 (= lt!200713 Unit!7895)))

(declare-fun lt!200710 () Unit!7875)

(assert (=> b!451903 (= lt!200710 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!188 thiss!17480 rules!1920 call!31307 lt!200709))))

(assert (=> b!451903 false))

(declare-fun lt!200712 () Unit!7875)

(declare-fun Unit!7896 () Unit!7875)

(assert (=> b!451903 (= lt!200712 Unit!7896)))

(declare-fun b!451904 () Bool)

(assert (=> b!451904 (= c!91522 (and ((_ is Some!1124) lt!200708) (not (= (_1!2859 (v!15431 lt!200708)) (h!9768 (t!70899 tokens!465))))))))

(assert (=> b!451904 (= e!276240 e!276242)))

(declare-fun bm!31306 () Bool)

(assert (=> bm!31306 (= call!31309 (list!1937 (ite c!91524 call!31308 call!31310)))))

(assert (= (and d!172927 c!91523) b!451900))

(assert (= (and d!172927 (not c!91523)) b!451899))

(assert (= (and b!451900 c!91524) b!451898))

(assert (= (and b!451900 (not c!91524)) b!451904))

(assert (= (and b!451904 c!91522) b!451902))

(assert (= (and b!451904 (not c!91522)) b!451903))

(assert (= (or b!451902 b!451903) bm!31305))

(assert (= (or b!451902 b!451903) bm!31302))

(assert (= (and bm!31302 c!91521) b!451901))

(assert (= (and bm!31302 (not c!91521)) b!451897))

(assert (= (or b!451898 bm!31305) bm!31303))

(assert (= (or b!451898 b!451902) bm!31306))

(assert (= (or b!451898 b!451902) bm!31304))

(declare-fun m!715579 () Bool)

(assert (=> b!451900 m!715579))

(declare-fun m!715581 () Bool)

(assert (=> b!451900 m!715581))

(declare-fun m!715583 () Bool)

(assert (=> b!451900 m!715583))

(declare-fun m!715585 () Bool)

(assert (=> b!451900 m!715585))

(declare-fun m!715587 () Bool)

(assert (=> b!451900 m!715587))

(assert (=> b!451900 m!715579))

(assert (=> b!451900 m!715581))

(assert (=> b!451900 m!715583))

(declare-fun m!715589 () Bool)

(assert (=> b!451900 m!715589))

(assert (=> bm!31303 m!715579))

(declare-fun m!715591 () Bool)

(assert (=> bm!31306 m!715591))

(declare-fun m!715593 () Bool)

(assert (=> bm!31304 m!715593))

(assert (=> b!451901 m!713883))

(declare-fun m!715595 () Bool)

(assert (=> b!451902 m!715595))

(declare-fun m!715597 () Bool)

(assert (=> bm!31302 m!715597))

(declare-fun m!715599 () Bool)

(assert (=> b!451903 m!715599))

(assert (=> b!451903 m!715599))

(declare-fun m!715601 () Bool)

(assert (=> b!451903 m!715601))

(assert (=> b!451903 m!715599))

(declare-fun m!715603 () Bool)

(assert (=> b!451903 m!715603))

(declare-fun m!715605 () Bool)

(assert (=> b!451903 m!715605))

(assert (=> b!450901 d!172927))

(declare-fun d!172929 () Bool)

(declare-fun lt!200714 () BalanceConc!3040)

(assert (=> d!172929 (= (list!1937 lt!200714) (originalCharacters!890 separatorToken!170))))

(assert (=> d!172929 (= lt!200714 (dynLambda!2635 (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))) (value!28455 separatorToken!170)))))

(assert (=> d!172929 (= (charsOf!490 separatorToken!170) lt!200714)))

(declare-fun b_lambda!18719 () Bool)

(assert (=> (not b_lambda!18719) (not d!172929)))

(assert (=> d!172929 t!70969))

(declare-fun b_and!48569 () Bool)

(assert (= b_and!48563 (and (=> t!70969 result!50030) b_and!48569)))

(assert (=> d!172929 t!70971))

(declare-fun b_and!48571 () Bool)

(assert (= b_and!48565 (and (=> t!70971 result!50032) b_and!48571)))

(assert (=> d!172929 t!70973))

(declare-fun b_and!48573 () Bool)

(assert (= b_and!48567 (and (=> t!70973 result!50034) b_and!48573)))

(declare-fun m!715607 () Bool)

(assert (=> d!172929 m!715607))

(assert (=> d!172929 m!715435))

(assert (=> b!450901 d!172929))

(declare-fun bs!55962 () Bool)

(declare-fun d!172931 () Bool)

(assert (= bs!55962 (and d!172931 d!172745)))

(declare-fun lambda!13132 () Int)

(assert (=> bs!55962 (not (= lambda!13132 lambda!13115))))

(declare-fun bs!55963 () Bool)

(assert (= bs!55963 (and d!172931 b!450894)))

(assert (=> bs!55963 (not (= lambda!13132 lambda!13098))))

(declare-fun bs!55964 () Bool)

(assert (= bs!55964 (and d!172931 b!450893)))

(assert (=> bs!55964 (= lambda!13132 lambda!13097)))

(declare-fun bs!55965 () Bool)

(assert (= bs!55965 (and d!172931 b!451900)))

(assert (=> bs!55965 (not (= lambda!13132 lambda!13131))))

(declare-fun bs!55966 () Bool)

(assert (= bs!55966 (and d!172931 b!451793)))

(assert (=> bs!55966 (not (= lambda!13132 lambda!13130))))

(declare-fun bs!55967 () Bool)

(assert (= bs!55967 (and d!172931 b!451618)))

(assert (=> bs!55967 (not (= lambda!13132 lambda!13127))))

(declare-fun bs!55968 () Bool)

(assert (= bs!55968 (and d!172931 d!172759)))

(assert (=> bs!55968 (= lambda!13132 lambda!13126)))

(declare-fun bs!55969 () Bool)

(declare-fun b!451910 () Bool)

(assert (= bs!55969 (and b!451910 d!172745)))

(declare-fun lambda!13133 () Int)

(assert (=> bs!55969 (= lambda!13133 lambda!13115)))

(declare-fun bs!55970 () Bool)

(assert (= bs!55970 (and b!451910 d!172931)))

(assert (=> bs!55970 (not (= lambda!13133 lambda!13132))))

(declare-fun bs!55971 () Bool)

(assert (= bs!55971 (and b!451910 b!450894)))

(assert (=> bs!55971 (= lambda!13133 lambda!13098)))

(declare-fun bs!55972 () Bool)

(assert (= bs!55972 (and b!451910 b!450893)))

(assert (=> bs!55972 (not (= lambda!13133 lambda!13097))))

(declare-fun bs!55973 () Bool)

(assert (= bs!55973 (and b!451910 b!451900)))

(assert (=> bs!55973 (= lambda!13133 lambda!13131)))

(declare-fun bs!55974 () Bool)

(assert (= bs!55974 (and b!451910 b!451793)))

(assert (=> bs!55974 (= lambda!13133 lambda!13130)))

(declare-fun bs!55975 () Bool)

(assert (= bs!55975 (and b!451910 b!451618)))

(assert (=> bs!55975 (= lambda!13133 lambda!13127)))

(declare-fun bs!55976 () Bool)

(assert (= bs!55976 (and b!451910 d!172759)))

(assert (=> bs!55976 (not (= lambda!13133 lambda!13126))))

(declare-fun b!451921 () Bool)

(declare-fun e!276256 () Bool)

(assert (=> b!451921 (= e!276256 true)))

(declare-fun b!451920 () Bool)

(declare-fun e!276255 () Bool)

(assert (=> b!451920 (= e!276255 e!276256)))

(declare-fun b!451919 () Bool)

(declare-fun e!276254 () Bool)

(assert (=> b!451919 (= e!276254 e!276255)))

(assert (=> b!451910 e!276254))

(assert (= b!451920 b!451921))

(assert (= b!451919 b!451920))

(assert (= (and b!451910 ((_ is Cons!4370) rules!1920)) b!451919))

(assert (=> b!451921 (< (dynLambda!2630 order!3833 (toValue!1662 (transformation!847 (h!9767 rules!1920)))) (dynLambda!2631 order!3835 lambda!13133))))

(assert (=> b!451921 (< (dynLambda!2632 order!3837 (toChars!1521 (transformation!847 (h!9767 rules!1920)))) (dynLambda!2631 order!3835 lambda!13133))))

(assert (=> b!451910 true))

(declare-fun b!451908 () Bool)

(declare-fun e!276248 () BalanceConc!3040)

(declare-fun call!31312 () BalanceConc!3040)

(assert (=> b!451908 (= e!276248 call!31312)))

(declare-fun lt!200717 () BalanceConc!3040)

(assert (=> d!172931 (= (list!1937 lt!200717) (printWithSeparatorTokenWhenNeededList!414 thiss!17480 rules!1920 (dropList!240 lt!200206 0) separatorToken!170))))

(declare-fun e!276250 () BalanceConc!3040)

(assert (=> d!172931 (= lt!200717 e!276250)))

(declare-fun c!91526 () Bool)

(assert (=> d!172931 (= c!91526 (>= 0 (size!3591 lt!200206)))))

(declare-fun lt!200728 () Unit!7875)

(assert (=> d!172931 (= lt!200728 (lemmaContentSubsetPreservesForall!184 (list!1940 lt!200206) (dropList!240 lt!200206 0) lambda!13132))))

(declare-fun e!276251 () Bool)

(assert (=> d!172931 e!276251))

(declare-fun res!200698 () Bool)

(assert (=> d!172931 (=> (not res!200698) (not e!276251))))

(assert (=> d!172931 (= res!200698 (>= 0 0))))

(assert (=> d!172931 (= (printWithSeparatorTokenWhenNeededRec!406 thiss!17480 rules!1920 lt!200206 separatorToken!170 0) lt!200717)))

(declare-fun b!451909 () Bool)

(declare-fun e!276253 () Bool)

(declare-fun lt!200721 () Option!1124)

(assert (=> b!451909 (= e!276253 (= (_1!2860 (v!15430 lt!200721)) (apply!1112 lt!200206 0)))))

(declare-fun bm!31307 () Bool)

(declare-fun c!91528 () Bool)

(declare-fun c!91525 () Bool)

(assert (=> bm!31307 (= c!91528 c!91525)))

(declare-fun lt!200715 () BalanceConc!3040)

(declare-fun call!31316 () BalanceConc!3040)

(declare-fun call!31314 () BalanceConc!3040)

(assert (=> bm!31307 (= call!31316 (++!1270 e!276248 (ite c!91525 lt!200715 call!31314)))))

(declare-fun bm!31308 () Bool)

(declare-fun call!31315 () Token!1438)

(declare-fun call!31313 () Token!1438)

(assert (=> bm!31308 (= call!31315 call!31313)))

(declare-fun bm!31309 () Bool)

(declare-fun c!91527 () Bool)

(assert (=> bm!31309 (= call!31312 (charsOf!490 (ite c!91525 call!31313 (ite c!91527 separatorToken!170 call!31315))))))

(declare-fun bm!31310 () Bool)

(assert (=> bm!31310 (= call!31313 (apply!1112 lt!200206 0))))

(declare-fun e!276252 () BalanceConc!3040)

(assert (=> b!451910 (= e!276250 e!276252)))

(declare-fun lt!200725 () List!4381)

(assert (=> b!451910 (= lt!200725 (list!1940 lt!200206))))

(declare-fun lt!200727 () Unit!7875)

(assert (=> b!451910 (= lt!200727 (lemmaDropApply!280 lt!200725 0))))

(assert (=> b!451910 (= (head!1095 (drop!309 lt!200725 0)) (apply!1116 lt!200725 0))))

(declare-fun lt!200716 () Unit!7875)

(assert (=> b!451910 (= lt!200716 lt!200727)))

(declare-fun lt!200724 () List!4381)

(assert (=> b!451910 (= lt!200724 (list!1940 lt!200206))))

(declare-fun lt!200719 () Unit!7875)

(assert (=> b!451910 (= lt!200719 (lemmaDropTail!272 lt!200724 0))))

(assert (=> b!451910 (= (tail!630 (drop!309 lt!200724 0)) (drop!309 lt!200724 (+ 0 1)))))

(declare-fun lt!200723 () Unit!7875)

(assert (=> b!451910 (= lt!200723 lt!200719)))

(declare-fun lt!200722 () Unit!7875)

(assert (=> b!451910 (= lt!200722 (forallContained!400 (list!1940 lt!200206) lambda!13133 (apply!1112 lt!200206 0)))))

(assert (=> b!451910 (= lt!200715 (printWithSeparatorTokenWhenNeededRec!406 thiss!17480 rules!1920 lt!200206 separatorToken!170 (+ 0 1)))))

(assert (=> b!451910 (= lt!200721 (maxPrefixZipperSequence!412 thiss!17480 rules!1920 (++!1270 (charsOf!490 (apply!1112 lt!200206 0)) lt!200715)))))

(declare-fun res!200700 () Bool)

(assert (=> b!451910 (= res!200700 ((_ is Some!1123) lt!200721))))

(assert (=> b!451910 (=> (not res!200700) (not e!276253))))

(assert (=> b!451910 (= c!91525 e!276253)))

(declare-fun bm!31311 () Bool)

(assert (=> bm!31311 (= call!31314 call!31312)))

(declare-fun b!451911 () Bool)

(assert (=> b!451911 (= e!276251 (<= 0 (size!3591 lt!200206)))))

(declare-fun b!451912 () Bool)

(declare-fun e!276249 () Bool)

(assert (=> b!451912 (= e!276249 (not (= (_1!2860 (v!15430 lt!200721)) call!31313)))))

(declare-fun b!451913 () Bool)

(declare-fun e!276247 () BalanceConc!3040)

(assert (=> b!451913 (= e!276247 (++!1270 call!31316 lt!200715))))

(declare-fun b!451914 () Bool)

(assert (=> b!451914 (= e!276252 call!31316)))

(declare-fun b!451915 () Bool)

(assert (=> b!451915 (= e!276248 (charsOf!490 call!31315))))

(declare-fun b!451916 () Bool)

(assert (=> b!451916 (= c!91527 e!276249)))

(declare-fun res!200699 () Bool)

(assert (=> b!451916 (=> (not res!200699) (not e!276249))))

(assert (=> b!451916 (= res!200699 ((_ is Some!1123) lt!200721))))

(assert (=> b!451916 (= e!276252 e!276247)))

(declare-fun b!451917 () Bool)

(assert (=> b!451917 (= e!276250 (BalanceConc!3041 Empty!1516))))

(declare-fun b!451918 () Bool)

(assert (=> b!451918 (= e!276247 (BalanceConc!3041 Empty!1516))))

(assert (=> b!451918 (= (print!458 thiss!17480 (singletonSeq!393 call!31315)) (printTailRec!419 thiss!17480 (singletonSeq!393 call!31315) 0 (BalanceConc!3041 Empty!1516)))))

(declare-fun lt!200726 () Unit!7875)

(declare-fun Unit!7897 () Unit!7875)

(assert (=> b!451918 (= lt!200726 Unit!7897)))

(declare-fun lt!200718 () Unit!7875)

(assert (=> b!451918 (= lt!200718 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!188 thiss!17480 rules!1920 (list!1937 call!31314) (list!1937 lt!200715)))))

(assert (=> b!451918 false))

(declare-fun lt!200720 () Unit!7875)

(declare-fun Unit!7898 () Unit!7875)

(assert (=> b!451918 (= lt!200720 Unit!7898)))

(assert (= (and d!172931 res!200698) b!451911))

(assert (= (and d!172931 c!91526) b!451917))

(assert (= (and d!172931 (not c!91526)) b!451910))

(assert (= (and b!451910 res!200700) b!451909))

(assert (= (and b!451910 c!91525) b!451914))

(assert (= (and b!451910 (not c!91525)) b!451916))

(assert (= (and b!451916 res!200699) b!451912))

(assert (= (and b!451916 c!91527) b!451913))

(assert (= (and b!451916 (not c!91527)) b!451918))

(assert (= (or b!451913 b!451918) bm!31308))

(assert (= (or b!451913 b!451918) bm!31311))

(assert (= (or b!451914 b!451912 bm!31308) bm!31310))

(assert (= (or b!451914 bm!31311) bm!31309))

(assert (= (or b!451914 b!451913) bm!31307))

(assert (= (and bm!31307 c!91528) b!451908))

(assert (= (and bm!31307 (not c!91528)) b!451915))

(declare-fun m!715609 () Bool)

(assert (=> b!451910 m!715609))

(declare-fun m!715611 () Bool)

(assert (=> b!451910 m!715611))

(declare-fun m!715613 () Bool)

(assert (=> b!451910 m!715613))

(declare-fun m!715615 () Bool)

(assert (=> b!451910 m!715615))

(assert (=> b!451910 m!714899))

(assert (=> b!451910 m!715609))

(declare-fun m!715617 () Bool)

(assert (=> b!451910 m!715617))

(declare-fun m!715619 () Bool)

(assert (=> b!451910 m!715619))

(declare-fun m!715621 () Bool)

(assert (=> b!451910 m!715621))

(declare-fun m!715623 () Bool)

(assert (=> b!451910 m!715623))

(declare-fun m!715625 () Bool)

(assert (=> b!451910 m!715625))

(assert (=> b!451910 m!715609))

(declare-fun m!715627 () Bool)

(assert (=> b!451910 m!715627))

(assert (=> b!451910 m!715627))

(assert (=> b!451910 m!715611))

(declare-fun m!715629 () Bool)

(assert (=> b!451910 m!715629))

(declare-fun m!715631 () Bool)

(assert (=> b!451910 m!715631))

(declare-fun m!715633 () Bool)

(assert (=> b!451910 m!715633))

(assert (=> b!451910 m!714899))

(assert (=> b!451910 m!715629))

(declare-fun m!715635 () Bool)

(assert (=> b!451910 m!715635))

(assert (=> b!451910 m!715631))

(declare-fun m!715637 () Bool)

(assert (=> bm!31307 m!715637))

(declare-fun m!715639 () Bool)

(assert (=> d!172931 m!715639))

(declare-fun m!715641 () Bool)

(assert (=> d!172931 m!715641))

(assert (=> d!172931 m!715639))

(declare-fun m!715643 () Bool)

(assert (=> d!172931 m!715643))

(assert (=> d!172931 m!714899))

(assert (=> d!172931 m!715639))

(declare-fun m!715645 () Bool)

(assert (=> d!172931 m!715645))

(assert (=> d!172931 m!714899))

(declare-fun m!715647 () Bool)

(assert (=> d!172931 m!715647))

(assert (=> b!451911 m!715643))

(declare-fun m!715649 () Bool)

(assert (=> b!451913 m!715649))

(assert (=> b!451909 m!715609))

(declare-fun m!715651 () Bool)

(assert (=> b!451915 m!715651))

(assert (=> bm!31310 m!715609))

(declare-fun m!715653 () Bool)

(assert (=> b!451918 m!715653))

(declare-fun m!715655 () Bool)

(assert (=> b!451918 m!715655))

(declare-fun m!715657 () Bool)

(assert (=> b!451918 m!715657))

(declare-fun m!715659 () Bool)

(assert (=> b!451918 m!715659))

(declare-fun m!715661 () Bool)

(assert (=> b!451918 m!715661))

(assert (=> b!451918 m!715655))

(assert (=> b!451918 m!715659))

(assert (=> b!451918 m!715659))

(declare-fun m!715663 () Bool)

(assert (=> b!451918 m!715663))

(assert (=> b!451918 m!715653))

(declare-fun m!715665 () Bool)

(assert (=> bm!31309 m!715665))

(assert (=> b!450901 d!172931))

(declare-fun d!172933 () Bool)

(assert (=> d!172933 (= (list!1937 (charsOf!490 (h!9768 tokens!465))) (list!1941 (c!91308 (charsOf!490 (h!9768 tokens!465)))))))

(declare-fun bs!55977 () Bool)

(assert (= bs!55977 d!172933))

(declare-fun m!715667 () Bool)

(assert (=> bs!55977 m!715667))

(assert (=> b!450901 d!172933))

(declare-fun d!172935 () Bool)

(declare-fun lt!200729 () BalanceConc!3040)

(assert (=> d!172935 (= (list!1937 lt!200729) (originalCharacters!890 (h!9768 tokens!465)))))

(assert (=> d!172935 (= lt!200729 (dynLambda!2635 (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))) (value!28455 (h!9768 tokens!465))))))

(assert (=> d!172935 (= (charsOf!490 (h!9768 tokens!465)) lt!200729)))

(declare-fun b_lambda!18721 () Bool)

(assert (=> (not b_lambda!18721) (not d!172935)))

(assert (=> d!172935 t!70963))

(declare-fun b_and!48575 () Bool)

(assert (= b_and!48569 (and (=> t!70963 result!50024) b_and!48575)))

(assert (=> d!172935 t!70965))

(declare-fun b_and!48577 () Bool)

(assert (= b_and!48571 (and (=> t!70965 result!50026) b_and!48577)))

(assert (=> d!172935 t!70967))

(declare-fun b_and!48579 () Bool)

(assert (= b_and!48573 (and (=> t!70967 result!50028) b_and!48579)))

(declare-fun m!715669 () Bool)

(assert (=> d!172935 m!715669))

(assert (=> d!172935 m!715423))

(assert (=> b!450901 d!172935))

(declare-fun d!172937 () Bool)

(declare-fun e!276257 () Bool)

(assert (=> d!172937 e!276257))

(declare-fun res!200701 () Bool)

(assert (=> d!172937 (=> (not res!200701) (not e!276257))))

(declare-fun lt!200730 () List!4379)

(assert (=> d!172937 (= res!200701 (= (content!733 lt!200730) ((_ map or) (content!733 (++!1268 lt!200208 lt!200199)) (content!733 lt!200216))))))

(declare-fun e!276258 () List!4379)

(assert (=> d!172937 (= lt!200730 e!276258)))

(declare-fun c!91529 () Bool)

(assert (=> d!172937 (= c!91529 ((_ is Nil!4369) (++!1268 lt!200208 lt!200199)))))

(assert (=> d!172937 (= (++!1268 (++!1268 lt!200208 lt!200199) lt!200216) lt!200730)))

(declare-fun b!451925 () Bool)

(assert (=> b!451925 (= e!276257 (or (not (= lt!200216 Nil!4369)) (= lt!200730 (++!1268 lt!200208 lt!200199))))))

(declare-fun b!451924 () Bool)

(declare-fun res!200702 () Bool)

(assert (=> b!451924 (=> (not res!200702) (not e!276257))))

(assert (=> b!451924 (= res!200702 (= (size!3596 lt!200730) (+ (size!3596 (++!1268 lt!200208 lt!200199)) (size!3596 lt!200216))))))

(declare-fun b!451923 () Bool)

(assert (=> b!451923 (= e!276258 (Cons!4369 (h!9766 (++!1268 lt!200208 lt!200199)) (++!1268 (t!70897 (++!1268 lt!200208 lt!200199)) lt!200216)))))

(declare-fun b!451922 () Bool)

(assert (=> b!451922 (= e!276258 lt!200216)))

(assert (= (and d!172937 c!91529) b!451922))

(assert (= (and d!172937 (not c!91529)) b!451923))

(assert (= (and d!172937 res!200701) b!451924))

(assert (= (and b!451924 res!200702) b!451925))

(declare-fun m!715671 () Bool)

(assert (=> d!172937 m!715671))

(assert (=> d!172937 m!713897))

(declare-fun m!715673 () Bool)

(assert (=> d!172937 m!715673))

(assert (=> d!172937 m!714105))

(declare-fun m!715675 () Bool)

(assert (=> b!451924 m!715675))

(assert (=> b!451924 m!713897))

(declare-fun m!715677 () Bool)

(assert (=> b!451924 m!715677))

(assert (=> b!451924 m!714111))

(declare-fun m!715679 () Bool)

(assert (=> b!451923 m!715679))

(assert (=> b!450901 d!172937))

(declare-fun d!172939 () Bool)

(declare-fun fromListB!475 (List!4381) BalanceConc!3042)

(assert (=> d!172939 (= (seqFromList!1059 (t!70899 tokens!465)) (fromListB!475 (t!70899 tokens!465)))))

(declare-fun bs!55978 () Bool)

(assert (= bs!55978 d!172939))

(declare-fun m!715681 () Bool)

(assert (=> bs!55978 m!715681))

(assert (=> b!450901 d!172939))

(declare-fun d!172941 () Bool)

(declare-fun e!276259 () Bool)

(assert (=> d!172941 e!276259))

(declare-fun res!200703 () Bool)

(assert (=> d!172941 (=> (not res!200703) (not e!276259))))

(declare-fun lt!200731 () List!4379)

(assert (=> d!172941 (= res!200703 (= (content!733 lt!200731) ((_ map or) (content!733 lt!200208) (content!733 lt!200175))))))

(declare-fun e!276260 () List!4379)

(assert (=> d!172941 (= lt!200731 e!276260)))

(declare-fun c!91530 () Bool)

(assert (=> d!172941 (= c!91530 ((_ is Nil!4369) lt!200208))))

(assert (=> d!172941 (= (++!1268 lt!200208 lt!200175) lt!200731)))

(declare-fun b!451929 () Bool)

(assert (=> b!451929 (= e!276259 (or (not (= lt!200175 Nil!4369)) (= lt!200731 lt!200208)))))

(declare-fun b!451928 () Bool)

(declare-fun res!200704 () Bool)

(assert (=> b!451928 (=> (not res!200704) (not e!276259))))

(assert (=> b!451928 (= res!200704 (= (size!3596 lt!200731) (+ (size!3596 lt!200208) (size!3596 lt!200175))))))

(declare-fun b!451927 () Bool)

(assert (=> b!451927 (= e!276260 (Cons!4369 (h!9766 lt!200208) (++!1268 (t!70897 lt!200208) lt!200175)))))

(declare-fun b!451926 () Bool)

(assert (=> b!451926 (= e!276260 lt!200175)))

(assert (= (and d!172941 c!91530) b!451926))

(assert (= (and d!172941 (not c!91530)) b!451927))

(assert (= (and d!172941 res!200703) b!451928))

(assert (= (and b!451928 res!200704) b!451929))

(declare-fun m!715683 () Bool)

(assert (=> d!172941 m!715683))

(assert (=> d!172941 m!714103))

(declare-fun m!715685 () Bool)

(assert (=> d!172941 m!715685))

(declare-fun m!715687 () Bool)

(assert (=> b!451928 m!715687))

(assert (=> b!451928 m!714109))

(assert (=> b!451928 m!714727))

(declare-fun m!715689 () Bool)

(assert (=> b!451927 m!715689))

(assert (=> b!450901 d!172941))

(declare-fun d!172943 () Bool)

(assert (=> d!172943 (= (inv!5442 (tag!1105 (rule!1536 separatorToken!170))) (= (mod (str.len (value!28454 (tag!1105 (rule!1536 separatorToken!170)))) 2) 0))))

(assert (=> b!450879 d!172943))

(declare-fun d!172945 () Bool)

(declare-fun res!200705 () Bool)

(declare-fun e!276261 () Bool)

(assert (=> d!172945 (=> (not res!200705) (not e!276261))))

(assert (=> d!172945 (= res!200705 (semiInverseModEq!337 (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))) (toValue!1662 (transformation!847 (rule!1536 separatorToken!170)))))))

(assert (=> d!172945 (= (inv!5445 (transformation!847 (rule!1536 separatorToken!170))) e!276261)))

(declare-fun b!451930 () Bool)

(assert (=> b!451930 (= e!276261 (equivClasses!320 (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))) (toValue!1662 (transformation!847 (rule!1536 separatorToken!170)))))))

(assert (= (and d!172945 res!200705) b!451930))

(declare-fun m!715691 () Bool)

(assert (=> d!172945 m!715691))

(declare-fun m!715693 () Bool)

(assert (=> b!451930 m!715693))

(assert (=> b!450879 d!172945))

(declare-fun bs!55979 () Bool)

(declare-fun d!172947 () Bool)

(assert (= bs!55979 (and d!172947 d!172745)))

(declare-fun lambda!13134 () Int)

(assert (=> bs!55979 (= lambda!13134 lambda!13115)))

(declare-fun bs!55980 () Bool)

(assert (= bs!55980 (and d!172947 d!172931)))

(assert (=> bs!55980 (not (= lambda!13134 lambda!13132))))

(declare-fun bs!55981 () Bool)

(assert (= bs!55981 (and d!172947 b!450894)))

(assert (=> bs!55981 (= lambda!13134 lambda!13098)))

(declare-fun bs!55982 () Bool)

(assert (= bs!55982 (and d!172947 b!450893)))

(assert (=> bs!55982 (not (= lambda!13134 lambda!13097))))

(declare-fun bs!55983 () Bool)

(assert (= bs!55983 (and d!172947 b!451900)))

(assert (=> bs!55983 (= lambda!13134 lambda!13131)))

(declare-fun bs!55984 () Bool)

(assert (= bs!55984 (and d!172947 b!451910)))

(assert (=> bs!55984 (= lambda!13134 lambda!13133)))

(declare-fun bs!55985 () Bool)

(assert (= bs!55985 (and d!172947 b!451793)))

(assert (=> bs!55985 (= lambda!13134 lambda!13130)))

(declare-fun bs!55986 () Bool)

(assert (= bs!55986 (and d!172947 b!451618)))

(assert (=> bs!55986 (= lambda!13134 lambda!13127)))

(declare-fun bs!55987 () Bool)

(assert (= bs!55987 (and d!172947 d!172759)))

(assert (=> bs!55987 (not (= lambda!13134 lambda!13126))))

(declare-fun b!451934 () Bool)

(declare-fun e!276265 () Bool)

(assert (=> b!451934 (= e!276265 true)))

(declare-fun b!451933 () Bool)

(declare-fun e!276264 () Bool)

(assert (=> b!451933 (= e!276264 e!276265)))

(declare-fun b!451932 () Bool)

(declare-fun e!276263 () Bool)

(assert (=> b!451932 (= e!276263 e!276264)))

(assert (=> d!172947 e!276263))

(assert (= b!451933 b!451934))

(assert (= b!451932 b!451933))

(assert (= (and d!172947 ((_ is Cons!4370) rules!1920)) b!451932))

(assert (=> b!451934 (< (dynLambda!2630 order!3833 (toValue!1662 (transformation!847 (h!9767 rules!1920)))) (dynLambda!2631 order!3835 lambda!13134))))

(assert (=> b!451934 (< (dynLambda!2632 order!3837 (toChars!1521 (transformation!847 (h!9767 rules!1920)))) (dynLambda!2631 order!3835 lambda!13134))))

(assert (=> d!172947 true))

(declare-fun e!276262 () Bool)

(assert (=> d!172947 e!276262))

(declare-fun res!200706 () Bool)

(assert (=> d!172947 (=> (not res!200706) (not e!276262))))

(declare-fun lt!200732 () Bool)

(assert (=> d!172947 (= res!200706 (= lt!200732 (forall!1264 (list!1940 lt!200210) lambda!13134)))))

(assert (=> d!172947 (= lt!200732 (forall!1266 lt!200210 lambda!13134))))

(assert (=> d!172947 (not (isEmpty!3320 rules!1920))))

(assert (=> d!172947 (= (rulesProduceEachTokenIndividually!525 thiss!17480 rules!1920 lt!200210) lt!200732)))

(declare-fun b!451931 () Bool)

(assert (=> b!451931 (= e!276262 (= lt!200732 (rulesProduceEachTokenIndividuallyList!311 thiss!17480 rules!1920 (list!1940 lt!200210))))))

(assert (= (and d!172947 res!200706) b!451931))

(assert (=> d!172947 m!715189))

(assert (=> d!172947 m!715189))

(declare-fun m!715695 () Bool)

(assert (=> d!172947 m!715695))

(declare-fun m!715697 () Bool)

(assert (=> d!172947 m!715697))

(assert (=> d!172947 m!713933))

(assert (=> b!451931 m!715189))

(assert (=> b!451931 m!715189))

(declare-fun m!715699 () Bool)

(assert (=> b!451931 m!715699))

(assert (=> b!450881 d!172947))

(declare-fun d!172949 () Bool)

(assert (=> d!172949 (= (seqFromList!1059 tokens!465) (fromListB!475 tokens!465))))

(declare-fun bs!55988 () Bool)

(assert (= bs!55988 d!172949))

(declare-fun m!715701 () Bool)

(assert (=> bs!55988 m!715701))

(assert (=> b!450881 d!172949))

(declare-fun d!172951 () Bool)

(declare-fun lt!200735 () Token!1438)

(assert (=> d!172951 (= lt!200735 (apply!1116 (list!1940 (_1!2861 lt!200179)) 0))))

(declare-fun apply!1118 (Conc!1517 Int) Token!1438)

(assert (=> d!172951 (= lt!200735 (apply!1118 (c!91310 (_1!2861 lt!200179)) 0))))

(declare-fun e!276268 () Bool)

(assert (=> d!172951 e!276268))

(declare-fun res!200709 () Bool)

(assert (=> d!172951 (=> (not res!200709) (not e!276268))))

(assert (=> d!172951 (= res!200709 (<= 0 0))))

(assert (=> d!172951 (= (apply!1112 (_1!2861 lt!200179) 0) lt!200735)))

(declare-fun b!451937 () Bool)

(assert (=> b!451937 (= e!276268 (< 0 (size!3591 (_1!2861 lt!200179))))))

(assert (= (and d!172951 res!200709) b!451937))

(assert (=> d!172951 m!714701))

(assert (=> d!172951 m!714701))

(declare-fun m!715703 () Bool)

(assert (=> d!172951 m!715703))

(declare-fun m!715705 () Bool)

(assert (=> d!172951 m!715705))

(assert (=> b!451937 m!713945))

(assert (=> b!450902 d!172951))

(declare-fun b!451938 () Bool)

(declare-fun e!276269 () Bool)

(assert (=> b!451938 (= e!276269 (inv!15 (value!28455 separatorToken!170)))))

(declare-fun b!451939 () Bool)

(declare-fun e!276271 () Bool)

(assert (=> b!451939 (= e!276271 (inv!17 (value!28455 separatorToken!170)))))

(declare-fun d!172953 () Bool)

(declare-fun c!91531 () Bool)

(assert (=> d!172953 (= c!91531 ((_ is IntegerValue!2607) (value!28455 separatorToken!170)))))

(declare-fun e!276270 () Bool)

(assert (=> d!172953 (= (inv!21 (value!28455 separatorToken!170)) e!276270)))

(declare-fun b!451940 () Bool)

(declare-fun res!200710 () Bool)

(assert (=> b!451940 (=> res!200710 e!276269)))

(assert (=> b!451940 (= res!200710 (not ((_ is IntegerValue!2609) (value!28455 separatorToken!170))))))

(assert (=> b!451940 (= e!276271 e!276269)))

(declare-fun b!451941 () Bool)

(assert (=> b!451941 (= e!276270 e!276271)))

(declare-fun c!91532 () Bool)

(assert (=> b!451941 (= c!91532 ((_ is IntegerValue!2608) (value!28455 separatorToken!170)))))

(declare-fun b!451942 () Bool)

(assert (=> b!451942 (= e!276270 (inv!16 (value!28455 separatorToken!170)))))

(assert (= (and d!172953 c!91531) b!451942))

(assert (= (and d!172953 (not c!91531)) b!451941))

(assert (= (and b!451941 c!91532) b!451939))

(assert (= (and b!451941 (not c!91532)) b!451940))

(assert (= (and b!451940 (not res!200710)) b!451938))

(declare-fun m!715707 () Bool)

(assert (=> b!451938 m!715707))

(declare-fun m!715709 () Bool)

(assert (=> b!451939 m!715709))

(declare-fun m!715711 () Bool)

(assert (=> b!451942 m!715711))

(assert (=> b!450872 d!172953))

(declare-fun d!172955 () Bool)

(declare-fun res!200711 () Bool)

(declare-fun e!276272 () Bool)

(assert (=> d!172955 (=> res!200711 e!276272)))

(assert (=> d!172955 (= res!200711 ((_ is Nil!4371) tokens!465))))

(assert (=> d!172955 (= (forall!1264 tokens!465 lambda!13097) e!276272)))

(declare-fun b!451943 () Bool)

(declare-fun e!276273 () Bool)

(assert (=> b!451943 (= e!276272 e!276273)))

(declare-fun res!200712 () Bool)

(assert (=> b!451943 (=> (not res!200712) (not e!276273))))

(assert (=> b!451943 (= res!200712 (dynLambda!2636 lambda!13097 (h!9768 tokens!465)))))

(declare-fun b!451944 () Bool)

(assert (=> b!451944 (= e!276273 (forall!1264 (t!70899 tokens!465) lambda!13097))))

(assert (= (and d!172955 (not res!200711)) b!451943))

(assert (= (and b!451943 res!200712) b!451944))

(declare-fun b_lambda!18723 () Bool)

(assert (=> (not b_lambda!18723) (not b!451943)))

(declare-fun m!715713 () Bool)

(assert (=> b!451943 m!715713))

(assert (=> b!451944 m!713821))

(assert (=> b!450893 d!172955))

(declare-fun d!172957 () Bool)

(declare-fun lt!200736 () Token!1438)

(assert (=> d!172957 (= lt!200736 (apply!1116 (list!1940 (_1!2861 lt!200212)) 0))))

(assert (=> d!172957 (= lt!200736 (apply!1118 (c!91310 (_1!2861 lt!200212)) 0))))

(declare-fun e!276274 () Bool)

(assert (=> d!172957 e!276274))

(declare-fun res!200713 () Bool)

(assert (=> d!172957 (=> (not res!200713) (not e!276274))))

(assert (=> d!172957 (= res!200713 (<= 0 0))))

(assert (=> d!172957 (= (apply!1112 (_1!2861 lt!200212) 0) lt!200736)))

(declare-fun b!451945 () Bool)

(assert (=> b!451945 (= e!276274 (< 0 (size!3591 (_1!2861 lt!200212))))))

(assert (= (and d!172957 res!200713) b!451945))

(assert (=> d!172957 m!714355))

(assert (=> d!172957 m!714355))

(declare-fun m!715715 () Bool)

(assert (=> d!172957 m!715715))

(declare-fun m!715717 () Bool)

(assert (=> d!172957 m!715717))

(assert (=> b!451945 m!713947))

(assert (=> b!450914 d!172957))

(declare-fun d!172959 () Bool)

(declare-fun lt!200738 () Bool)

(declare-fun e!276275 () Bool)

(assert (=> d!172959 (= lt!200738 e!276275)))

(declare-fun res!200714 () Bool)

(assert (=> d!172959 (=> (not res!200714) (not e!276275))))

(assert (=> d!172959 (= res!200714 (= (list!1940 (_1!2861 (lex!525 thiss!17480 rules!1920 (print!458 thiss!17480 (singletonSeq!393 (h!9768 tokens!465)))))) (list!1940 (singletonSeq!393 (h!9768 tokens!465)))))))

(declare-fun e!276276 () Bool)

(assert (=> d!172959 (= lt!200738 e!276276)))

(declare-fun res!200715 () Bool)

(assert (=> d!172959 (=> (not res!200715) (not e!276276))))

(declare-fun lt!200737 () tuple2!5290)

(assert (=> d!172959 (= res!200715 (= (size!3591 (_1!2861 lt!200737)) 1))))

(assert (=> d!172959 (= lt!200737 (lex!525 thiss!17480 rules!1920 (print!458 thiss!17480 (singletonSeq!393 (h!9768 tokens!465)))))))

(assert (=> d!172959 (not (isEmpty!3320 rules!1920))))

(assert (=> d!172959 (= (rulesProduceIndividualToken!482 thiss!17480 rules!1920 (h!9768 tokens!465)) lt!200738)))

(declare-fun b!451946 () Bool)

(declare-fun res!200716 () Bool)

(assert (=> b!451946 (=> (not res!200716) (not e!276276))))

(assert (=> b!451946 (= res!200716 (= (apply!1112 (_1!2861 lt!200737) 0) (h!9768 tokens!465)))))

(declare-fun b!451947 () Bool)

(assert (=> b!451947 (= e!276276 (isEmpty!3321 (_2!2861 lt!200737)))))

(declare-fun b!451948 () Bool)

(assert (=> b!451948 (= e!276275 (isEmpty!3321 (_2!2861 (lex!525 thiss!17480 rules!1920 (print!458 thiss!17480 (singletonSeq!393 (h!9768 tokens!465)))))))))

(assert (= (and d!172959 res!200715) b!451946))

(assert (= (and b!451946 res!200716) b!451947))

(assert (= (and d!172959 res!200714) b!451948))

(declare-fun m!715719 () Bool)

(assert (=> d!172959 m!715719))

(assert (=> d!172959 m!713867))

(assert (=> d!172959 m!713933))

(assert (=> d!172959 m!715409))

(declare-fun m!715721 () Bool)

(assert (=> d!172959 m!715721))

(assert (=> d!172959 m!713867))

(assert (=> d!172959 m!715409))

(declare-fun m!715723 () Bool)

(assert (=> d!172959 m!715723))

(assert (=> d!172959 m!713867))

(declare-fun m!715725 () Bool)

(assert (=> d!172959 m!715725))

(declare-fun m!715727 () Bool)

(assert (=> b!451946 m!715727))

(declare-fun m!715729 () Bool)

(assert (=> b!451947 m!715729))

(assert (=> b!451948 m!713867))

(assert (=> b!451948 m!713867))

(assert (=> b!451948 m!715409))

(assert (=> b!451948 m!715409))

(assert (=> b!451948 m!715721))

(declare-fun m!715731 () Bool)

(assert (=> b!451948 m!715731))

(assert (=> b!450916 d!172959))

(declare-fun d!172961 () Bool)

(declare-fun isEmpty!3333 (Option!1124) Bool)

(assert (=> d!172961 (= (isDefined!962 (maxPrefixZipperSequence!412 thiss!17480 rules!1920 (seqFromList!1060 (originalCharacters!890 (h!9768 tokens!465))))) (not (isEmpty!3333 (maxPrefixZipperSequence!412 thiss!17480 rules!1920 (seqFromList!1060 (originalCharacters!890 (h!9768 tokens!465)))))))))

(declare-fun bs!55989 () Bool)

(assert (= bs!55989 d!172961))

(assert (=> bs!55989 m!713909))

(declare-fun m!715733 () Bool)

(assert (=> bs!55989 m!715733))

(assert (=> b!450894 d!172961))

(declare-fun b!451965 () Bool)

(declare-fun e!276294 () Bool)

(declare-fun e!276290 () Bool)

(assert (=> b!451965 (= e!276294 e!276290)))

(declare-fun res!200733 () Bool)

(assert (=> b!451965 (=> (not res!200733) (not e!276290))))

(declare-fun lt!200759 () Option!1124)

(declare-fun get!1596 (Option!1124) tuple2!5288)

(assert (=> b!451965 (= res!200733 (= (_1!2860 (get!1596 lt!200759)) (_1!2859 (get!1594 (maxPrefix!449 thiss!17480 rules!1920 (list!1937 (seqFromList!1060 (originalCharacters!890 (h!9768 tokens!465)))))))))))

(declare-fun b!451966 () Bool)

(declare-fun e!276289 () Bool)

(assert (=> b!451966 (= e!276289 e!276294)))

(declare-fun res!200732 () Bool)

(assert (=> b!451966 (=> res!200732 e!276294)))

(assert (=> b!451966 (= res!200732 (not (isDefined!962 lt!200759)))))

(declare-fun b!451967 () Bool)

(declare-fun e!276293 () Bool)

(declare-fun e!276292 () Bool)

(assert (=> b!451967 (= e!276293 e!276292)))

(declare-fun res!200730 () Bool)

(assert (=> b!451967 (=> (not res!200730) (not e!276292))))

(declare-fun maxPrefixZipper!186 (LexerInterface!733 List!4380 List!4379) Option!1125)

(assert (=> b!451967 (= res!200730 (= (_1!2860 (get!1596 lt!200759)) (_1!2859 (get!1594 (maxPrefixZipper!186 thiss!17480 rules!1920 (list!1937 (seqFromList!1060 (originalCharacters!890 (h!9768 tokens!465)))))))))))

(declare-fun b!451968 () Bool)

(assert (=> b!451968 (= e!276292 (= (list!1937 (_2!2860 (get!1596 lt!200759))) (_2!2859 (get!1594 (maxPrefixZipper!186 thiss!17480 rules!1920 (list!1937 (seqFromList!1060 (originalCharacters!890 (h!9768 tokens!465)))))))))))

(declare-fun b!451969 () Bool)

(declare-fun res!200729 () Bool)

(assert (=> b!451969 (=> (not res!200729) (not e!276289))))

(assert (=> b!451969 (= res!200729 e!276293)))

(declare-fun res!200734 () Bool)

(assert (=> b!451969 (=> res!200734 e!276293)))

(assert (=> b!451969 (= res!200734 (not (isDefined!962 lt!200759)))))

(declare-fun b!451970 () Bool)

(declare-fun e!276291 () Option!1124)

(declare-fun call!31319 () Option!1124)

(assert (=> b!451970 (= e!276291 call!31319)))

(declare-fun d!172963 () Bool)

(assert (=> d!172963 e!276289))

(declare-fun res!200731 () Bool)

(assert (=> d!172963 (=> (not res!200731) (not e!276289))))

(assert (=> d!172963 (= res!200731 (= (isDefined!962 lt!200759) (isDefined!963 (maxPrefixZipper!186 thiss!17480 rules!1920 (list!1937 (seqFromList!1060 (originalCharacters!890 (h!9768 tokens!465))))))))))

(assert (=> d!172963 (= lt!200759 e!276291)))

(declare-fun c!91535 () Bool)

(assert (=> d!172963 (= c!91535 (and ((_ is Cons!4370) rules!1920) ((_ is Nil!4370) (t!70898 rules!1920))))))

(declare-fun lt!200758 () Unit!7875)

(declare-fun lt!200755 () Unit!7875)

(assert (=> d!172963 (= lt!200758 lt!200755)))

(declare-fun lt!200754 () List!4379)

(declare-fun lt!200753 () List!4379)

(assert (=> d!172963 (isPrefix!507 lt!200754 lt!200753)))

(assert (=> d!172963 (= lt!200755 (lemmaIsPrefixRefl!283 lt!200754 lt!200753))))

(assert (=> d!172963 (= lt!200753 (list!1937 (seqFromList!1060 (originalCharacters!890 (h!9768 tokens!465)))))))

(assert (=> d!172963 (= lt!200754 (list!1937 (seqFromList!1060 (originalCharacters!890 (h!9768 tokens!465)))))))

(assert (=> d!172963 (rulesValidInductive!278 thiss!17480 rules!1920)))

(assert (=> d!172963 (= (maxPrefixZipperSequence!412 thiss!17480 rules!1920 (seqFromList!1060 (originalCharacters!890 (h!9768 tokens!465)))) lt!200759)))

(declare-fun b!451971 () Bool)

(assert (=> b!451971 (= e!276290 (= (list!1937 (_2!2860 (get!1596 lt!200759))) (_2!2859 (get!1594 (maxPrefix!449 thiss!17480 rules!1920 (list!1937 (seqFromList!1060 (originalCharacters!890 (h!9768 tokens!465)))))))))))

(declare-fun bm!31314 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!187 (LexerInterface!733 Rule!1494 BalanceConc!3040) Option!1124)

(assert (=> bm!31314 (= call!31319 (maxPrefixOneRuleZipperSequence!187 thiss!17480 (h!9767 rules!1920) (seqFromList!1060 (originalCharacters!890 (h!9768 tokens!465)))))))

(declare-fun b!451972 () Bool)

(declare-fun lt!200757 () Option!1124)

(declare-fun lt!200756 () Option!1124)

(assert (=> b!451972 (= e!276291 (ite (and ((_ is None!1123) lt!200757) ((_ is None!1123) lt!200756)) None!1123 (ite ((_ is None!1123) lt!200756) lt!200757 (ite ((_ is None!1123) lt!200757) lt!200756 (ite (>= (size!3590 (_1!2860 (v!15430 lt!200757))) (size!3590 (_1!2860 (v!15430 lt!200756)))) lt!200757 lt!200756)))))))

(assert (=> b!451972 (= lt!200757 call!31319)))

(assert (=> b!451972 (= lt!200756 (maxPrefixZipperSequence!412 thiss!17480 (t!70898 rules!1920) (seqFromList!1060 (originalCharacters!890 (h!9768 tokens!465)))))))

(assert (= (and d!172963 c!91535) b!451970))

(assert (= (and d!172963 (not c!91535)) b!451972))

(assert (= (or b!451970 b!451972) bm!31314))

(assert (= (and d!172963 res!200731) b!451969))

(assert (= (and b!451969 (not res!200734)) b!451967))

(assert (= (and b!451967 res!200730) b!451968))

(assert (= (and b!451969 res!200729) b!451966))

(assert (= (and b!451966 (not res!200732)) b!451965))

(assert (= (and b!451965 res!200733) b!451971))

(declare-fun m!715735 () Bool)

(assert (=> b!451965 m!715735))

(assert (=> b!451965 m!713907))

(declare-fun m!715737 () Bool)

(assert (=> b!451965 m!715737))

(assert (=> b!451965 m!715737))

(declare-fun m!715739 () Bool)

(assert (=> b!451965 m!715739))

(assert (=> b!451965 m!715739))

(declare-fun m!715741 () Bool)

(assert (=> b!451965 m!715741))

(declare-fun m!715743 () Bool)

(assert (=> b!451968 m!715743))

(declare-fun m!715745 () Bool)

(assert (=> b!451968 m!715745))

(assert (=> b!451968 m!715737))

(assert (=> b!451968 m!715743))

(assert (=> b!451968 m!713907))

(assert (=> b!451968 m!715737))

(assert (=> b!451968 m!715735))

(declare-fun m!715747 () Bool)

(assert (=> b!451968 m!715747))

(assert (=> b!451967 m!715735))

(assert (=> b!451967 m!713907))

(assert (=> b!451967 m!715737))

(assert (=> b!451967 m!715737))

(assert (=> b!451967 m!715743))

(assert (=> b!451967 m!715743))

(assert (=> b!451967 m!715745))

(declare-fun m!715749 () Bool)

(assert (=> b!451966 m!715749))

(assert (=> b!451972 m!713907))

(declare-fun m!715751 () Bool)

(assert (=> b!451972 m!715751))

(assert (=> b!451971 m!715737))

(assert (=> b!451971 m!715739))

(assert (=> b!451971 m!715739))

(assert (=> b!451971 m!715741))

(assert (=> b!451971 m!713907))

(assert (=> b!451971 m!715737))

(assert (=> b!451971 m!715735))

(assert (=> b!451971 m!715747))

(assert (=> d!172963 m!714735))

(assert (=> d!172963 m!715743))

(declare-fun m!715753 () Bool)

(assert (=> d!172963 m!715753))

(declare-fun m!715755 () Bool)

(assert (=> d!172963 m!715755))

(declare-fun m!715757 () Bool)

(assert (=> d!172963 m!715757))

(assert (=> d!172963 m!713907))

(assert (=> d!172963 m!715737))

(assert (=> d!172963 m!715737))

(assert (=> d!172963 m!715743))

(assert (=> d!172963 m!715749))

(assert (=> bm!31314 m!713907))

(declare-fun m!715759 () Bool)

(assert (=> bm!31314 m!715759))

(assert (=> b!451969 m!715749))

(assert (=> b!450894 d!172963))

(declare-fun d!172965 () Bool)

(assert (=> d!172965 (= (seqFromList!1060 (originalCharacters!890 (h!9768 tokens!465))) (fromListB!474 (originalCharacters!890 (h!9768 tokens!465))))))

(declare-fun bs!55990 () Bool)

(assert (= bs!55990 d!172965))

(declare-fun m!715761 () Bool)

(assert (=> bs!55990 m!715761))

(assert (=> b!450894 d!172965))

(declare-fun d!172967 () Bool)

(assert (=> d!172967 (dynLambda!2636 lambda!13098 (h!9768 tokens!465))))

(declare-fun lt!200760 () Unit!7875)

(assert (=> d!172967 (= lt!200760 (choose!3418 tokens!465 lambda!13098 (h!9768 tokens!465)))))

(declare-fun e!276295 () Bool)

(assert (=> d!172967 e!276295))

(declare-fun res!200735 () Bool)

(assert (=> d!172967 (=> (not res!200735) (not e!276295))))

(assert (=> d!172967 (= res!200735 (forall!1264 tokens!465 lambda!13098))))

(assert (=> d!172967 (= (forallContained!400 tokens!465 lambda!13098 (h!9768 tokens!465)) lt!200760)))

(declare-fun b!451973 () Bool)

(assert (=> b!451973 (= e!276295 (contains!981 tokens!465 (h!9768 tokens!465)))))

(assert (= (and d!172967 res!200735) b!451973))

(declare-fun b_lambda!18725 () Bool)

(assert (=> (not b_lambda!18725) (not d!172967)))

(declare-fun m!715763 () Bool)

(assert (=> d!172967 m!715763))

(declare-fun m!715765 () Bool)

(assert (=> d!172967 m!715765))

(assert (=> d!172967 m!714949))

(declare-fun m!715767 () Bool)

(assert (=> b!451973 m!715767))

(assert (=> b!450894 d!172967))

(declare-fun d!172969 () Bool)

(declare-fun res!200740 () Bool)

(declare-fun e!276300 () Bool)

(assert (=> d!172969 (=> res!200740 e!276300)))

(assert (=> d!172969 (= res!200740 (not ((_ is Cons!4370) rules!1920)))))

(assert (=> d!172969 (= (sepAndNonSepRulesDisjointChars!436 rules!1920 rules!1920) e!276300)))

(declare-fun b!451978 () Bool)

(declare-fun e!276301 () Bool)

(assert (=> b!451978 (= e!276300 e!276301)))

(declare-fun res!200741 () Bool)

(assert (=> b!451978 (=> (not res!200741) (not e!276301))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!195 (Rule!1494 List!4380) Bool)

(assert (=> b!451978 (= res!200741 (ruleDisjointCharsFromAllFromOtherType!195 (h!9767 rules!1920) rules!1920))))

(declare-fun b!451979 () Bool)

(assert (=> b!451979 (= e!276301 (sepAndNonSepRulesDisjointChars!436 rules!1920 (t!70898 rules!1920)))))

(assert (= (and d!172969 (not res!200740)) b!451978))

(assert (= (and b!451978 res!200741) b!451979))

(declare-fun m!715769 () Bool)

(assert (=> b!451978 m!715769))

(declare-fun m!715771 () Bool)

(assert (=> b!451979 m!715771))

(assert (=> b!450915 d!172969))

(declare-fun d!172971 () Bool)

(declare-fun lt!200761 () BalanceConc!3040)

(assert (=> d!172971 (= (list!1937 lt!200761) (printList!407 thiss!17480 (list!1940 lt!200189)))))

(assert (=> d!172971 (= lt!200761 (printTailRec!419 thiss!17480 lt!200189 0 (BalanceConc!3041 Empty!1516)))))

(assert (=> d!172971 (= (print!458 thiss!17480 lt!200189) lt!200761)))

(declare-fun bs!55991 () Bool)

(assert (= bs!55991 d!172971))

(declare-fun m!715773 () Bool)

(assert (=> bs!55991 m!715773))

(declare-fun m!715775 () Bool)

(assert (=> bs!55991 m!715775))

(assert (=> bs!55991 m!715775))

(declare-fun m!715777 () Bool)

(assert (=> bs!55991 m!715777))

(assert (=> bs!55991 m!713859))

(assert (=> b!450917 d!172971))

(declare-fun d!172973 () Bool)

(declare-fun lt!200768 () BalanceConc!3040)

(assert (=> d!172973 (= (list!1937 lt!200768) (printListTailRec!205 thiss!17480 (dropList!240 lt!200189 0) (list!1937 (BalanceConc!3041 Empty!1516))))))

(declare-fun e!276302 () BalanceConc!3040)

(assert (=> d!172973 (= lt!200768 e!276302)))

(declare-fun c!91536 () Bool)

(assert (=> d!172973 (= c!91536 (>= 0 (size!3591 lt!200189)))))

(declare-fun e!276303 () Bool)

(assert (=> d!172973 e!276303))

(declare-fun res!200742 () Bool)

(assert (=> d!172973 (=> (not res!200742) (not e!276303))))

(assert (=> d!172973 (= res!200742 (>= 0 0))))

(assert (=> d!172973 (= (printTailRec!419 thiss!17480 lt!200189 0 (BalanceConc!3041 Empty!1516)) lt!200768)))

(declare-fun b!451980 () Bool)

(assert (=> b!451980 (= e!276303 (<= 0 (size!3591 lt!200189)))))

(declare-fun b!451981 () Bool)

(assert (=> b!451981 (= e!276302 (BalanceConc!3041 Empty!1516))))

(declare-fun b!451982 () Bool)

(assert (=> b!451982 (= e!276302 (printTailRec!419 thiss!17480 lt!200189 (+ 0 1) (++!1270 (BalanceConc!3041 Empty!1516) (charsOf!490 (apply!1112 lt!200189 0)))))))

(declare-fun lt!200764 () List!4381)

(assert (=> b!451982 (= lt!200764 (list!1940 lt!200189))))

(declare-fun lt!200762 () Unit!7875)

(assert (=> b!451982 (= lt!200762 (lemmaDropApply!280 lt!200764 0))))

(assert (=> b!451982 (= (head!1095 (drop!309 lt!200764 0)) (apply!1116 lt!200764 0))))

(declare-fun lt!200767 () Unit!7875)

(assert (=> b!451982 (= lt!200767 lt!200762)))

(declare-fun lt!200763 () List!4381)

(assert (=> b!451982 (= lt!200763 (list!1940 lt!200189))))

(declare-fun lt!200766 () Unit!7875)

(assert (=> b!451982 (= lt!200766 (lemmaDropTail!272 lt!200763 0))))

(assert (=> b!451982 (= (tail!630 (drop!309 lt!200763 0)) (drop!309 lt!200763 (+ 0 1)))))

(declare-fun lt!200765 () Unit!7875)

(assert (=> b!451982 (= lt!200765 lt!200766)))

(assert (= (and d!172973 res!200742) b!451980))

(assert (= (and d!172973 c!91536) b!451981))

(assert (= (and d!172973 (not c!91536)) b!451982))

(declare-fun m!715779 () Bool)

(assert (=> d!172973 m!715779))

(assert (=> d!172973 m!714201))

(declare-fun m!715781 () Bool)

(assert (=> d!172973 m!715781))

(assert (=> d!172973 m!715779))

(assert (=> d!172973 m!714201))

(declare-fun m!715783 () Bool)

(assert (=> d!172973 m!715783))

(declare-fun m!715785 () Bool)

(assert (=> d!172973 m!715785))

(assert (=> b!451980 m!715783))

(declare-fun m!715787 () Bool)

(assert (=> b!451982 m!715787))

(declare-fun m!715789 () Bool)

(assert (=> b!451982 m!715789))

(assert (=> b!451982 m!715789))

(declare-fun m!715791 () Bool)

(assert (=> b!451982 m!715791))

(assert (=> b!451982 m!715775))

(declare-fun m!715793 () Bool)

(assert (=> b!451982 m!715793))

(declare-fun m!715795 () Bool)

(assert (=> b!451982 m!715795))

(declare-fun m!715797 () Bool)

(assert (=> b!451982 m!715797))

(declare-fun m!715799 () Bool)

(assert (=> b!451982 m!715799))

(declare-fun m!715801 () Bool)

(assert (=> b!451982 m!715801))

(declare-fun m!715803 () Bool)

(assert (=> b!451982 m!715803))

(assert (=> b!451982 m!715787))

(assert (=> b!451982 m!715801))

(declare-fun m!715805 () Bool)

(assert (=> b!451982 m!715805))

(assert (=> b!451982 m!715791))

(declare-fun m!715807 () Bool)

(assert (=> b!451982 m!715807))

(assert (=> b!451982 m!715805))

(declare-fun m!715809 () Bool)

(assert (=> b!451982 m!715809))

(assert (=> b!450917 d!172973))

(declare-fun d!172975 () Bool)

(assert (=> d!172975 (= (list!1937 lt!200198) (list!1941 (c!91308 lt!200198)))))

(declare-fun bs!55992 () Bool)

(assert (= bs!55992 d!172975))

(declare-fun m!715811 () Bool)

(assert (=> bs!55992 m!715811))

(assert (=> b!450917 d!172975))

(declare-fun d!172977 () Bool)

(declare-fun e!276304 () Bool)

(assert (=> d!172977 e!276304))

(declare-fun res!200743 () Bool)

(assert (=> d!172977 (=> (not res!200743) (not e!276304))))

(declare-fun lt!200769 () BalanceConc!3042)

(assert (=> d!172977 (= res!200743 (= (list!1940 lt!200769) (Cons!4371 (h!9768 tokens!465) Nil!4371)))))

(assert (=> d!172977 (= lt!200769 (singleton!190 (h!9768 tokens!465)))))

(assert (=> d!172977 (= (singletonSeq!393 (h!9768 tokens!465)) lt!200769)))

(declare-fun b!451983 () Bool)

(assert (=> b!451983 (= e!276304 (isBalanced!467 (c!91310 lt!200769)))))

(assert (= (and d!172977 res!200743) b!451983))

(declare-fun m!715813 () Bool)

(assert (=> d!172977 m!715813))

(declare-fun m!715815 () Bool)

(assert (=> d!172977 m!715815))

(declare-fun m!715817 () Bool)

(assert (=> b!451983 m!715817))

(assert (=> b!450917 d!172977))

(declare-fun d!172979 () Bool)

(declare-fun c!91539 () Bool)

(assert (=> d!172979 (= c!91539 ((_ is Cons!4371) (Cons!4371 (h!9768 tokens!465) Nil!4371)))))

(declare-fun e!276307 () List!4379)

(assert (=> d!172979 (= (printList!407 thiss!17480 (Cons!4371 (h!9768 tokens!465) Nil!4371)) e!276307)))

(declare-fun b!451988 () Bool)

(assert (=> b!451988 (= e!276307 (++!1268 (list!1937 (charsOf!490 (h!9768 (Cons!4371 (h!9768 tokens!465) Nil!4371)))) (printList!407 thiss!17480 (t!70899 (Cons!4371 (h!9768 tokens!465) Nil!4371)))))))

(declare-fun b!451989 () Bool)

(assert (=> b!451989 (= e!276307 Nil!4369)))

(assert (= (and d!172979 c!91539) b!451988))

(assert (= (and d!172979 (not c!91539)) b!451989))

(declare-fun m!715819 () Bool)

(assert (=> b!451988 m!715819))

(assert (=> b!451988 m!715819))

(declare-fun m!715821 () Bool)

(assert (=> b!451988 m!715821))

(declare-fun m!715823 () Bool)

(assert (=> b!451988 m!715823))

(assert (=> b!451988 m!715821))

(assert (=> b!451988 m!715823))

(declare-fun m!715825 () Bool)

(assert (=> b!451988 m!715825))

(assert (=> b!450917 d!172979))

(declare-fun b!451990 () Bool)

(declare-fun res!200750 () Bool)

(declare-fun e!276309 () Bool)

(assert (=> b!451990 (=> (not res!200750) (not e!276309))))

(declare-fun call!31320 () Bool)

(assert (=> b!451990 (= res!200750 (not call!31320))))

(declare-fun b!451991 () Bool)

(declare-fun res!200746 () Bool)

(assert (=> b!451991 (=> (not res!200746) (not e!276309))))

(assert (=> b!451991 (= res!200746 (isEmpty!3319 (tail!629 lt!200208)))))

(declare-fun b!451992 () Bool)

(assert (=> b!451992 (= e!276309 (= (head!1096 lt!200208) (c!91309 (regex!847 (rule!1536 (h!9768 tokens!465))))))))

(declare-fun bm!31315 () Bool)

(assert (=> bm!31315 (= call!31320 (isEmpty!3319 lt!200208))))

(declare-fun b!451993 () Bool)

(declare-fun e!276314 () Bool)

(declare-fun lt!200770 () Bool)

(assert (=> b!451993 (= e!276314 (not lt!200770))))

(declare-fun b!451994 () Bool)

(declare-fun e!276308 () Bool)

(assert (=> b!451994 (= e!276308 (= lt!200770 call!31320))))

(declare-fun d!172981 () Bool)

(assert (=> d!172981 e!276308))

(declare-fun c!91541 () Bool)

(assert (=> d!172981 (= c!91541 ((_ is EmptyExpr!1071) (regex!847 (rule!1536 (h!9768 tokens!465)))))))

(declare-fun e!276311 () Bool)

(assert (=> d!172981 (= lt!200770 e!276311)))

(declare-fun c!91542 () Bool)

(assert (=> d!172981 (= c!91542 (isEmpty!3319 lt!200208))))

(assert (=> d!172981 (validRegex!314 (regex!847 (rule!1536 (h!9768 tokens!465))))))

(assert (=> d!172981 (= (matchR!389 (regex!847 (rule!1536 (h!9768 tokens!465))) lt!200208) lt!200770)))

(declare-fun b!451995 () Bool)

(assert (=> b!451995 (= e!276311 (matchR!389 (derivativeStep!205 (regex!847 (rule!1536 (h!9768 tokens!465))) (head!1096 lt!200208)) (tail!629 lt!200208)))))

(declare-fun b!451996 () Bool)

(declare-fun e!276310 () Bool)

(declare-fun e!276313 () Bool)

(assert (=> b!451996 (= e!276310 e!276313)))

(declare-fun res!200745 () Bool)

(assert (=> b!451996 (=> res!200745 e!276313)))

(assert (=> b!451996 (= res!200745 call!31320)))

(declare-fun b!451997 () Bool)

(declare-fun e!276312 () Bool)

(assert (=> b!451997 (= e!276312 e!276310)))

(declare-fun res!200751 () Bool)

(assert (=> b!451997 (=> (not res!200751) (not e!276310))))

(assert (=> b!451997 (= res!200751 (not lt!200770))))

(declare-fun b!451998 () Bool)

(assert (=> b!451998 (= e!276313 (not (= (head!1096 lt!200208) (c!91309 (regex!847 (rule!1536 (h!9768 tokens!465)))))))))

(declare-fun b!451999 () Bool)

(assert (=> b!451999 (= e!276311 (nullable!239 (regex!847 (rule!1536 (h!9768 tokens!465)))))))

(declare-fun b!452000 () Bool)

(declare-fun res!200748 () Bool)

(assert (=> b!452000 (=> res!200748 e!276312)))

(assert (=> b!452000 (= res!200748 (not ((_ is ElementMatch!1071) (regex!847 (rule!1536 (h!9768 tokens!465))))))))

(assert (=> b!452000 (= e!276314 e!276312)))

(declare-fun b!452001 () Bool)

(assert (=> b!452001 (= e!276308 e!276314)))

(declare-fun c!91540 () Bool)

(assert (=> b!452001 (= c!91540 ((_ is EmptyLang!1071) (regex!847 (rule!1536 (h!9768 tokens!465)))))))

(declare-fun b!452002 () Bool)

(declare-fun res!200747 () Bool)

(assert (=> b!452002 (=> res!200747 e!276312)))

(assert (=> b!452002 (= res!200747 e!276309)))

(declare-fun res!200744 () Bool)

(assert (=> b!452002 (=> (not res!200744) (not e!276309))))

(assert (=> b!452002 (= res!200744 lt!200770)))

(declare-fun b!452003 () Bool)

(declare-fun res!200749 () Bool)

(assert (=> b!452003 (=> res!200749 e!276313)))

(assert (=> b!452003 (= res!200749 (not (isEmpty!3319 (tail!629 lt!200208))))))

(assert (= (and d!172981 c!91542) b!451999))

(assert (= (and d!172981 (not c!91542)) b!451995))

(assert (= (and d!172981 c!91541) b!451994))

(assert (= (and d!172981 (not c!91541)) b!452001))

(assert (= (and b!452001 c!91540) b!451993))

(assert (= (and b!452001 (not c!91540)) b!452000))

(assert (= (and b!452000 (not res!200748)) b!452002))

(assert (= (and b!452002 res!200744) b!451990))

(assert (= (and b!451990 res!200750) b!451991))

(assert (= (and b!451991 res!200746) b!451992))

(assert (= (and b!452002 (not res!200747)) b!451997))

(assert (= (and b!451997 res!200751) b!451996))

(assert (= (and b!451996 (not res!200745)) b!452003))

(assert (= (and b!452003 (not res!200749)) b!451998))

(assert (= (or b!451994 b!451990 b!451996) bm!31315))

(assert (=> b!452003 m!714383))

(assert (=> b!452003 m!714383))

(declare-fun m!715827 () Bool)

(assert (=> b!452003 m!715827))

(declare-fun m!715829 () Bool)

(assert (=> bm!31315 m!715829))

(declare-fun m!715831 () Bool)

(assert (=> b!451999 m!715831))

(assert (=> d!172981 m!715829))

(declare-fun m!715833 () Bool)

(assert (=> d!172981 m!715833))

(assert (=> b!451998 m!714379))

(assert (=> b!451995 m!714379))

(assert (=> b!451995 m!714379))

(declare-fun m!715835 () Bool)

(assert (=> b!451995 m!715835))

(assert (=> b!451995 m!714383))

(assert (=> b!451995 m!715835))

(assert (=> b!451995 m!714383))

(declare-fun m!715837 () Bool)

(assert (=> b!451995 m!715837))

(assert (=> b!451991 m!714383))

(assert (=> b!451991 m!714383))

(assert (=> b!451991 m!715827))

(assert (=> b!451992 m!714379))

(assert (=> b!450895 d!172981))

(declare-fun d!172983 () Bool)

(assert (=> d!172983 (= (isEmpty!3319 (_2!2859 lt!200191)) ((_ is Nil!4369) (_2!2859 lt!200191)))))

(assert (=> b!450876 d!172983))

(declare-fun d!172985 () Bool)

(declare-fun lt!200772 () Bool)

(declare-fun e!276315 () Bool)

(assert (=> d!172985 (= lt!200772 e!276315)))

(declare-fun res!200752 () Bool)

(assert (=> d!172985 (=> (not res!200752) (not e!276315))))

(assert (=> d!172985 (= res!200752 (= (list!1940 (_1!2861 (lex!525 thiss!17480 rules!1920 (print!458 thiss!17480 (singletonSeq!393 separatorToken!170))))) (list!1940 (singletonSeq!393 separatorToken!170))))))

(declare-fun e!276316 () Bool)

(assert (=> d!172985 (= lt!200772 e!276316)))

(declare-fun res!200753 () Bool)

(assert (=> d!172985 (=> (not res!200753) (not e!276316))))

(declare-fun lt!200771 () tuple2!5290)

(assert (=> d!172985 (= res!200753 (= (size!3591 (_1!2861 lt!200771)) 1))))

(assert (=> d!172985 (= lt!200771 (lex!525 thiss!17480 rules!1920 (print!458 thiss!17480 (singletonSeq!393 separatorToken!170))))))

(assert (=> d!172985 (not (isEmpty!3320 rules!1920))))

(assert (=> d!172985 (= (rulesProduceIndividualToken!482 thiss!17480 rules!1920 separatorToken!170) lt!200772)))

(declare-fun b!452004 () Bool)

(declare-fun res!200754 () Bool)

(assert (=> b!452004 (=> (not res!200754) (not e!276316))))

(assert (=> b!452004 (= res!200754 (= (apply!1112 (_1!2861 lt!200771) 0) separatorToken!170))))

(declare-fun b!452005 () Bool)

(assert (=> b!452005 (= e!276316 (isEmpty!3321 (_2!2861 lt!200771)))))

(declare-fun b!452006 () Bool)

(assert (=> b!452006 (= e!276315 (isEmpty!3321 (_2!2861 (lex!525 thiss!17480 rules!1920 (print!458 thiss!17480 (singletonSeq!393 separatorToken!170))))))))

(assert (= (and d!172985 res!200753) b!452004))

(assert (= (and b!452004 res!200754) b!452005))

(assert (= (and d!172985 res!200752) b!452006))

(declare-fun m!715839 () Bool)

(assert (=> d!172985 m!715839))

(assert (=> d!172985 m!713971))

(assert (=> d!172985 m!713933))

(declare-fun m!715841 () Bool)

(assert (=> d!172985 m!715841))

(declare-fun m!715843 () Bool)

(assert (=> d!172985 m!715843))

(assert (=> d!172985 m!713971))

(assert (=> d!172985 m!715841))

(declare-fun m!715845 () Bool)

(assert (=> d!172985 m!715845))

(assert (=> d!172985 m!713971))

(declare-fun m!715847 () Bool)

(assert (=> d!172985 m!715847))

(declare-fun m!715849 () Bool)

(assert (=> b!452004 m!715849))

(declare-fun m!715851 () Bool)

(assert (=> b!452005 m!715851))

(assert (=> b!452006 m!713971))

(assert (=> b!452006 m!713971))

(assert (=> b!452006 m!715841))

(assert (=> b!452006 m!715841))

(assert (=> b!452006 m!715843))

(declare-fun m!715853 () Bool)

(assert (=> b!452006 m!715853))

(assert (=> b!450897 d!172985))

(declare-fun d!172987 () Bool)

(assert (=> d!172987 (= (list!1937 (seqFromList!1060 lt!200192)) (list!1941 (c!91308 (seqFromList!1060 lt!200192))))))

(declare-fun bs!55993 () Bool)

(assert (= bs!55993 d!172987))

(declare-fun m!715855 () Bool)

(assert (=> bs!55993 m!715855))

(assert (=> b!450918 d!172987))

(declare-fun d!172989 () Bool)

(assert (=> d!172989 (= (seqFromList!1060 lt!200192) (fromListB!474 lt!200192))))

(declare-fun bs!55994 () Bool)

(assert (= bs!55994 d!172989))

(declare-fun m!715857 () Bool)

(assert (=> bs!55994 m!715857))

(assert (=> b!450918 d!172989))

(declare-fun b!452017 () Bool)

(declare-fun b_free!12517 () Bool)

(declare-fun b_next!12517 () Bool)

(assert (=> b!452017 (= b_free!12517 (not b_next!12517))))

(declare-fun tp!125691 () Bool)

(declare-fun b_and!48581 () Bool)

(assert (=> b!452017 (= tp!125691 b_and!48581)))

(declare-fun b_free!12519 () Bool)

(declare-fun b_next!12519 () Bool)

(assert (=> b!452017 (= b_free!12519 (not b_next!12519))))

(declare-fun tb!45489 () Bool)

(declare-fun t!70976 () Bool)

(assert (=> (and b!452017 (= (toChars!1521 (transformation!847 (h!9767 (t!70898 rules!1920)))) (toChars!1521 (transformation!847 (rule!1536 lt!200205)))) t!70976) tb!45489))

(declare-fun result!50038 () Bool)

(assert (= result!50038 result!49984))

(assert (=> d!172741 t!70976))

(declare-fun t!70978 () Bool)

(declare-fun tb!45491 () Bool)

(assert (=> (and b!452017 (= (toChars!1521 (transformation!847 (h!9767 (t!70898 rules!1920)))) (toChars!1521 (transformation!847 (rule!1536 separatorToken!170)))) t!70978) tb!45491))

(declare-fun result!50040 () Bool)

(assert (= result!50040 result!50030))

(assert (=> b!451808 t!70978))

(assert (=> d!172929 t!70978))

(declare-fun t!70980 () Bool)

(declare-fun tb!45493 () Bool)

(assert (=> (and b!452017 (= (toChars!1521 (transformation!847 (h!9767 (t!70898 rules!1920)))) (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465))))) t!70980) tb!45493))

(declare-fun result!50042 () Bool)

(assert (= result!50042 result!50024))

(assert (=> b!451805 t!70980))

(assert (=> d!172935 t!70980))

(declare-fun b_and!48583 () Bool)

(declare-fun tp!125690 () Bool)

(assert (=> b!452017 (= tp!125690 (and (=> t!70976 result!50038) (=> t!70980 result!50042) (=> t!70978 result!50040) b_and!48583))))

(declare-fun e!276326 () Bool)

(assert (=> b!452017 (= e!276326 (and tp!125691 tp!125690))))

(declare-fun b!452016 () Bool)

(declare-fun e!276327 () Bool)

(declare-fun tp!125693 () Bool)

(assert (=> b!452016 (= e!276327 (and tp!125693 (inv!5442 (tag!1105 (h!9767 (t!70898 rules!1920)))) (inv!5445 (transformation!847 (h!9767 (t!70898 rules!1920)))) e!276326))))

(declare-fun b!452015 () Bool)

(declare-fun e!276328 () Bool)

(declare-fun tp!125692 () Bool)

(assert (=> b!452015 (= e!276328 (and e!276327 tp!125692))))

(assert (=> b!450887 (= tp!125613 e!276328)))

(assert (= b!452016 b!452017))

(assert (= b!452015 b!452016))

(assert (= (and b!450887 ((_ is Cons!4370) (t!70898 rules!1920))) b!452015))

(declare-fun m!715859 () Bool)

(assert (=> b!452016 m!715859))

(declare-fun m!715861 () Bool)

(assert (=> b!452016 m!715861))

(declare-fun b!452022 () Bool)

(declare-fun e!276331 () Bool)

(declare-fun tp_is_empty!1971 () Bool)

(declare-fun tp!125696 () Bool)

(assert (=> b!452022 (= e!276331 (and tp_is_empty!1971 tp!125696))))

(assert (=> b!450900 (= tp!125607 e!276331)))

(assert (= (and b!450900 ((_ is Cons!4369) (originalCharacters!890 (h!9768 tokens!465)))) b!452022))

(declare-fun b!452025 () Bool)

(declare-fun e!276334 () Bool)

(assert (=> b!452025 (= e!276334 true)))

(declare-fun b!452024 () Bool)

(declare-fun e!276333 () Bool)

(assert (=> b!452024 (= e!276333 e!276334)))

(declare-fun b!452023 () Bool)

(declare-fun e!276332 () Bool)

(assert (=> b!452023 (= e!276332 e!276333)))

(assert (=> b!450930 e!276332))

(assert (= b!452024 b!452025))

(assert (= b!452023 b!452024))

(assert (= (and b!450930 ((_ is Cons!4370) (t!70898 rules!1920))) b!452023))

(assert (=> b!452025 (< (dynLambda!2630 order!3833 (toValue!1662 (transformation!847 (h!9767 (t!70898 rules!1920))))) (dynLambda!2631 order!3835 lambda!13098))))

(assert (=> b!452025 (< (dynLambda!2632 order!3837 (toChars!1521 (transformation!847 (h!9767 (t!70898 rules!1920))))) (dynLambda!2631 order!3835 lambda!13098))))

(declare-fun b!452037 () Bool)

(declare-fun e!276337 () Bool)

(declare-fun tp!125710 () Bool)

(declare-fun tp!125708 () Bool)

(assert (=> b!452037 (= e!276337 (and tp!125710 tp!125708))))

(assert (=> b!450879 (= tp!125614 e!276337)))

(declare-fun b!452039 () Bool)

(declare-fun tp!125707 () Bool)

(declare-fun tp!125709 () Bool)

(assert (=> b!452039 (= e!276337 (and tp!125707 tp!125709))))

(declare-fun b!452038 () Bool)

(declare-fun tp!125711 () Bool)

(assert (=> b!452038 (= e!276337 tp!125711)))

(declare-fun b!452036 () Bool)

(assert (=> b!452036 (= e!276337 tp_is_empty!1971)))

(assert (= (and b!450879 ((_ is ElementMatch!1071) (regex!847 (rule!1536 separatorToken!170)))) b!452036))

(assert (= (and b!450879 ((_ is Concat!1941) (regex!847 (rule!1536 separatorToken!170)))) b!452037))

(assert (= (and b!450879 ((_ is Star!1071) (regex!847 (rule!1536 separatorToken!170)))) b!452038))

(assert (= (and b!450879 ((_ is Union!1071) (regex!847 (rule!1536 separatorToken!170)))) b!452039))

(declare-fun b!452053 () Bool)

(declare-fun b_free!12521 () Bool)

(declare-fun b_next!12521 () Bool)

(assert (=> b!452053 (= b_free!12521 (not b_next!12521))))

(declare-fun tp!125725 () Bool)

(declare-fun b_and!48585 () Bool)

(assert (=> b!452053 (= tp!125725 b_and!48585)))

(declare-fun b_free!12523 () Bool)

(declare-fun b_next!12523 () Bool)

(assert (=> b!452053 (= b_free!12523 (not b_next!12523))))

(declare-fun t!70982 () Bool)

(declare-fun tb!45495 () Bool)

(assert (=> (and b!452053 (= (toChars!1521 (transformation!847 (rule!1536 (h!9768 (t!70899 tokens!465))))) (toChars!1521 (transformation!847 (rule!1536 lt!200205)))) t!70982) tb!45495))

(declare-fun result!50050 () Bool)

(assert (= result!50050 result!49984))

(assert (=> d!172741 t!70982))

(declare-fun t!70984 () Bool)

(declare-fun tb!45497 () Bool)

(assert (=> (and b!452053 (= (toChars!1521 (transformation!847 (rule!1536 (h!9768 (t!70899 tokens!465))))) (toChars!1521 (transformation!847 (rule!1536 separatorToken!170)))) t!70984) tb!45497))

(declare-fun result!50052 () Bool)

(assert (= result!50052 result!50030))

(assert (=> b!451808 t!70984))

(assert (=> d!172929 t!70984))

(declare-fun t!70986 () Bool)

(declare-fun tb!45499 () Bool)

(assert (=> (and b!452053 (= (toChars!1521 (transformation!847 (rule!1536 (h!9768 (t!70899 tokens!465))))) (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465))))) t!70986) tb!45499))

(declare-fun result!50054 () Bool)

(assert (= result!50054 result!50024))

(assert (=> b!451805 t!70986))

(assert (=> d!172935 t!70986))

(declare-fun b_and!48587 () Bool)

(declare-fun tp!125726 () Bool)

(assert (=> b!452053 (= tp!125726 (and (=> t!70982 result!50050) (=> t!70984 result!50052) (=> t!70986 result!50054) b_and!48587))))

(declare-fun b!452050 () Bool)

(declare-fun e!276350 () Bool)

(declare-fun e!276354 () Bool)

(declare-fun tp!125722 () Bool)

(assert (=> b!452050 (= e!276350 (and (inv!5446 (h!9768 (t!70899 tokens!465))) e!276354 tp!125722))))

(assert (=> b!450904 (= tp!125608 e!276350)))

(declare-fun e!276355 () Bool)

(declare-fun e!276351 () Bool)

(declare-fun b!452052 () Bool)

(declare-fun tp!125724 () Bool)

(assert (=> b!452052 (= e!276355 (and tp!125724 (inv!5442 (tag!1105 (rule!1536 (h!9768 (t!70899 tokens!465))))) (inv!5445 (transformation!847 (rule!1536 (h!9768 (t!70899 tokens!465))))) e!276351))))

(assert (=> b!452053 (= e!276351 (and tp!125725 tp!125726))))

(declare-fun b!452051 () Bool)

(declare-fun tp!125723 () Bool)

(assert (=> b!452051 (= e!276354 (and (inv!21 (value!28455 (h!9768 (t!70899 tokens!465)))) e!276355 tp!125723))))

(assert (= b!452052 b!452053))

(assert (= b!452051 b!452052))

(assert (= b!452050 b!452051))

(assert (= (and b!450904 ((_ is Cons!4371) (t!70899 tokens!465))) b!452050))

(declare-fun m!715863 () Bool)

(assert (=> b!452050 m!715863))

(declare-fun m!715865 () Bool)

(assert (=> b!452052 m!715865))

(declare-fun m!715867 () Bool)

(assert (=> b!452052 m!715867))

(declare-fun m!715869 () Bool)

(assert (=> b!452051 m!715869))

(declare-fun b!452054 () Bool)

(declare-fun e!276356 () Bool)

(declare-fun tp!125727 () Bool)

(assert (=> b!452054 (= e!276356 (and tp_is_empty!1971 tp!125727))))

(assert (=> b!450872 (= tp!125610 e!276356)))

(assert (= (and b!450872 ((_ is Cons!4369) (originalCharacters!890 separatorToken!170))) b!452054))

(declare-fun b!452056 () Bool)

(declare-fun e!276357 () Bool)

(declare-fun tp!125731 () Bool)

(declare-fun tp!125729 () Bool)

(assert (=> b!452056 (= e!276357 (and tp!125731 tp!125729))))

(assert (=> b!450882 (= tp!125606 e!276357)))

(declare-fun b!452058 () Bool)

(declare-fun tp!125728 () Bool)

(declare-fun tp!125730 () Bool)

(assert (=> b!452058 (= e!276357 (and tp!125728 tp!125730))))

(declare-fun b!452057 () Bool)

(declare-fun tp!125732 () Bool)

(assert (=> b!452057 (= e!276357 tp!125732)))

(declare-fun b!452055 () Bool)

(assert (=> b!452055 (= e!276357 tp_is_empty!1971)))

(assert (= (and b!450882 ((_ is ElementMatch!1071) (regex!847 (h!9767 rules!1920)))) b!452055))

(assert (= (and b!450882 ((_ is Concat!1941) (regex!847 (h!9767 rules!1920)))) b!452056))

(assert (= (and b!450882 ((_ is Star!1071) (regex!847 (h!9767 rules!1920)))) b!452057))

(assert (= (and b!450882 ((_ is Union!1071) (regex!847 (h!9767 rules!1920)))) b!452058))

(declare-fun b!452060 () Bool)

(declare-fun e!276358 () Bool)

(declare-fun tp!125736 () Bool)

(declare-fun tp!125734 () Bool)

(assert (=> b!452060 (= e!276358 (and tp!125736 tp!125734))))

(assert (=> b!450903 (= tp!125615 e!276358)))

(declare-fun b!452062 () Bool)

(declare-fun tp!125733 () Bool)

(declare-fun tp!125735 () Bool)

(assert (=> b!452062 (= e!276358 (and tp!125733 tp!125735))))

(declare-fun b!452061 () Bool)

(declare-fun tp!125737 () Bool)

(assert (=> b!452061 (= e!276358 tp!125737)))

(declare-fun b!452059 () Bool)

(assert (=> b!452059 (= e!276358 tp_is_empty!1971)))

(assert (= (and b!450903 ((_ is ElementMatch!1071) (regex!847 (rule!1536 (h!9768 tokens!465))))) b!452059))

(assert (= (and b!450903 ((_ is Concat!1941) (regex!847 (rule!1536 (h!9768 tokens!465))))) b!452060))

(assert (= (and b!450903 ((_ is Star!1071) (regex!847 (rule!1536 (h!9768 tokens!465))))) b!452061))

(assert (= (and b!450903 ((_ is Union!1071) (regex!847 (rule!1536 (h!9768 tokens!465))))) b!452062))

(declare-fun b_lambda!18727 () Bool)

(assert (= b_lambda!18713 (or (and b!450885 b_free!12499 (= (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))) (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))))) (and b!452017 b_free!12519 (= (toChars!1521 (transformation!847 (h!9767 (t!70898 rules!1920)))) (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))))) (and b!452053 b_free!12523 (= (toChars!1521 (transformation!847 (rule!1536 (h!9768 (t!70899 tokens!465))))) (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))))) (and b!450890 b_free!12503 (= (toChars!1521 (transformation!847 (h!9767 rules!1920))) (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))))) (and b!450899 b_free!12507) b_lambda!18727)))

(declare-fun b_lambda!18729 () Bool)

(assert (= b_lambda!18715 (or (and b!450885 b_free!12499) (and b!452053 b_free!12523 (= (toChars!1521 (transformation!847 (rule!1536 (h!9768 (t!70899 tokens!465))))) (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))))) (and b!450899 b_free!12507 (= (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))) (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))))) (and b!452017 b_free!12519 (= (toChars!1521 (transformation!847 (h!9767 (t!70898 rules!1920)))) (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))))) (and b!450890 b_free!12503 (= (toChars!1521 (transformation!847 (h!9767 rules!1920))) (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))))) b_lambda!18729)))

(declare-fun b_lambda!18731 () Bool)

(assert (= b_lambda!18725 (or b!450894 b_lambda!18731)))

(declare-fun bs!55995 () Bool)

(declare-fun d!172991 () Bool)

(assert (= bs!55995 (and d!172991 b!450894)))

(assert (=> bs!55995 (= (dynLambda!2636 lambda!13098 (h!9768 tokens!465)) (rulesProduceIndividualToken!482 thiss!17480 rules!1920 (h!9768 tokens!465)))))

(assert (=> bs!55995 m!713927))

(assert (=> d!172967 d!172991))

(declare-fun b_lambda!18733 () Bool)

(assert (= b_lambda!18683 (or b!450894 b_lambda!18733)))

(declare-fun bs!55996 () Bool)

(declare-fun d!172993 () Bool)

(assert (= bs!55996 (and d!172993 b!450894)))

(assert (=> bs!55996 (= (dynLambda!2636 lambda!13098 lt!200205) (rulesProduceIndividualToken!482 thiss!17480 rules!1920 lt!200205))))

(assert (=> bs!55996 m!713977))

(assert (=> d!172753 d!172993))

(declare-fun b_lambda!18735 () Bool)

(assert (= b_lambda!18721 (or (and b!450885 b_free!12499 (= (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))) (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))))) (and b!452017 b_free!12519 (= (toChars!1521 (transformation!847 (h!9767 (t!70898 rules!1920)))) (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))))) (and b!452053 b_free!12523 (= (toChars!1521 (transformation!847 (rule!1536 (h!9768 (t!70899 tokens!465))))) (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))))) (and b!450890 b_free!12503 (= (toChars!1521 (transformation!847 (h!9767 rules!1920))) (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))))) (and b!450899 b_free!12507) b_lambda!18735)))

(declare-fun b_lambda!18737 () Bool)

(assert (= b_lambda!18723 (or b!450893 b_lambda!18737)))

(declare-fun bs!55997 () Bool)

(declare-fun d!172995 () Bool)

(assert (= bs!55997 (and d!172995 b!450893)))

(assert (=> bs!55997 (= (dynLambda!2636 lambda!13097 (h!9768 tokens!465)) (not (isSeparator!847 (rule!1536 (h!9768 tokens!465)))))))

(assert (=> b!451943 d!172995))

(declare-fun b_lambda!18739 () Bool)

(assert (= b_lambda!18719 (or (and b!450885 b_free!12499) (and b!452053 b_free!12523 (= (toChars!1521 (transformation!847 (rule!1536 (h!9768 (t!70899 tokens!465))))) (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))))) (and b!450899 b_free!12507 (= (toChars!1521 (transformation!847 (rule!1536 (h!9768 tokens!465)))) (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))))) (and b!452017 b_free!12519 (= (toChars!1521 (transformation!847 (h!9767 (t!70898 rules!1920)))) (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))))) (and b!450890 b_free!12503 (= (toChars!1521 (transformation!847 (h!9767 rules!1920))) (toChars!1521 (transformation!847 (rule!1536 separatorToken!170))))) b_lambda!18739)))

(declare-fun b_lambda!18741 () Bool)

(assert (= b_lambda!18717 (or b!450893 b_lambda!18741)))

(declare-fun bs!55998 () Bool)

(declare-fun d!172997 () Bool)

(assert (= bs!55998 (and d!172997 b!450893)))

(assert (=> bs!55998 (= (dynLambda!2636 lambda!13097 (h!9768 (t!70899 tokens!465))) (not (isSeparator!847 (rule!1536 (h!9768 (t!70899 tokens!465))))))))

(assert (=> b!451842 d!172997))

(check-sat (not b_lambda!18741) (not bm!31314) (not b!451144) (not b!451035) (not b!451273) (not b!451846) b_and!48585 (not d!172967) (not b!451027) (not b!451883) (not bm!31225) (not d!172707) (not b!451821) b_and!48505 (not d!172977) (not b!451937) (not d!172751) (not d!172931) (not b!451145) (not b_next!12507) (not b!451980) (not b!452037) (not tb!45477) (not b!451438) (not b!451183) (not b!451815) (not b!452052) (not d!172867) (not d!172865) (not b!451805) (not d!172937) (not d!172643) (not d!172959) (not b!451403) (not d!172917) (not d!172965) (not b!451948) (not bm!31310) (not d!172641) (not d!172575) (not b!452005) (not d!172615) b_and!48583 (not b!451362) (not bm!31299) (not b_next!12523) (not b!451302) (not b!451938) (not bm!31275) (not b!451361) (not d!172885) (not bm!31272) (not b!451076) (not bm!31301) (not b!451167) (not b!451814) (not d!172971) (not bm!31303) (not d!172709) (not b_lambda!18737) (not b!451965) (not b!451298) (not b!452058) (not d!172569) (not b!451810) (not b!451992) (not d!172933) (not b!451966) (not d!172985) (not d!172929) (not b!451300) (not b!451178) (not b!451433) (not b_lambda!18681) (not b!451972) (not d!172565) (not d!172897) (not b!451031) (not b!451435) (not d!172627) (not b!451998) (not d!172675) (not b!451126) (not b!452062) (not d!172595) (not b!451877) (not d!172925) (not b_lambda!18735) (not b!451813) (not b!451847) (not bm!31296) (not b!451818) (not bm!31294) (not b!451945) (not bm!31185) (not bm!31298) (not d!172945) (not d!172981) (not b_next!12519) (not d!172899) (not b!451988) (not b!452054) tp_is_empty!1971 (not d!172951) (not b!451024) (not b!451890) (not b_lambda!18727) (not bm!31230) (not b!452060) (not b!451809) (not bm!31274) (not b!451932) b_and!48579 (not b!451303) (not b!451968) (not b!451228) (not d!172963) (not bm!31306) (not b!451880) (not b!451816) (not d!172919) (not d!172631) (not b!451231) (not b!451304) (not b!451930) (not b!451817) (not d!172701) (not b!451274) (not b!451179) (not b!451983) (not b!451995) (not d!172973) (not b!451844) (not b!451931) (not b!451913) (not b!451627) (not b!451967) (not d!172871) (not d!172753) (not b!451133) (not d!172625) (not d!172745) (not d!172621) (not tb!45447) (not b!450990) (not b!451924) (not d!172949) (not b!451180) b_and!48577 (not d!172587) (not b!451808) (not b!451820) (not b!451829) (not b!451795) (not b!451132) (not b!451871) (not b!451430) (not b!451619) (not d!172757) (not b!451078) (not bm!31307) (not d!172713) (not b!451626) (not b_next!12505) (not d!172617) (not b!451979) (not d!172975) (not b!451901) (not d!172619) (not b!451023) (not b_next!12503) (not bm!31304) (not b!451369) (not b!451927) (not b!451618) (not d!172939) b_and!48581 (not bm!31181) (not b!451030) (not d!172935) (not b!451090) (not bs!55996) (not d!172759) (not b!451973) (not b!451825) (not b!451182) (not b!452004) (not b!452050) (not b!451229) (not b!451165) (not b!451123) (not b!451971) (not b!451305) (not b!452016) (not d!172941) (not d!172989) (not b!451837) (not bm!31295) b_and!48509 (not b!451297) (not b!452003) (not b!451617) (not b_lambda!18733) (not b_lambda!18731) (not b!451851) (not b!451125) (not b!451807) (not d!172863) (not b!451233) (not b!451184) (not d!172741) (not b!451902) (not b!451798) (not b!452015) b_and!48587 (not bm!31300) (not b!451894) (not b!451272) (not b!451402) (not d!172987) (not b!451143) (not b!451991) (not d!172739) (not b!452038) (not b!451437) (not b!451793) (not b!451928) (not d!172703) (not tb!45483) (not b_next!12499) (not b!451621) (not b!451823) (not b!451891) (not d!172887) (not d!172567) (not b!452022) (not d!172921) (not b!451859) (not b!451978) (not d!172923) (not b_next!12521) (not b!451876) (not b!451826) (not b!451915) (not b!452039) (not b!451969) (not b_next!12497) (not b!452061) (not d!172743) (not b!451623) (not b!451832) (not bm!31302) (not b!451164) (not d!172895) (not b!451857) (not b!451942) (not b!451431) (not b!451909) (not d!172639) b_and!48575 (not b!451794) (not bm!31232) (not b!451923) (not b!451436) (not bm!31309) (not bm!31229) (not b!451947) (not d!172957) (not b!451946) (not d!172705) (not b!451822) (not d!172947) (not b!451806) (not b!451888) (not b!451870) (not b!451230) (not d!172673) (not b!452057) (not d!172881) (not b!451796) (not b_lambda!18729) (not b!450989) (not d!172901) (not bm!31228) (not b!451441) (not b!451432) (not b!451939) (not d!172563) (not b_next!12517) (not b!451127) (not bs!55995) (not b!451982) (not b!451833) (not b!451363) (not b!451364) (not d!172669) (not b!451905) (not b!451999) (not b!452056) (not bm!31233) (not b!451911) (not b_lambda!18739) (not b!451944) (not b!451874) b_and!48501 (not b!451848) (not b!451910) (not d!172875) (not b!451919) (not d!172879) (not b!452051) (not b!452023) (not d!172961) (not d!172913) (not d!172665) (not b!451918) (not d!172889) (not bm!31227) (not d!172671) (not b!451900) (not b!452006) (not b!451903) (not b!451884) (not b!451895) (not b!451276) (not b!451843) (not bm!31315) (not b_next!12501) (not b!451299))
(check-sat b_and!48585 (not b_next!12519) b_and!48579 b_and!48577 (not b_next!12505) b_and!48509 b_and!48587 (not b_next!12497) b_and!48575 (not b_next!12517) b_and!48501 (not b_next!12501) (not b_next!12507) b_and!48505 b_and!48583 (not b_next!12523) (not b_next!12503) b_and!48581 (not b_next!12499) (not b_next!12521))

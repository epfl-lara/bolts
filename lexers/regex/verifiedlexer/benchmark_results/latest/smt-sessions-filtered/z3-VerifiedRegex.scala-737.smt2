; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36274 () Bool)

(assert start!36274)

(declare-fun b!365856 () Bool)

(declare-fun b_free!11449 () Bool)

(declare-fun b_next!11449 () Bool)

(assert (=> b!365856 (= b_free!11449 (not b_next!11449))))

(declare-fun tp!116026 () Bool)

(declare-fun b_and!36781 () Bool)

(assert (=> b!365856 (= tp!116026 b_and!36781)))

(declare-fun b_free!11451 () Bool)

(declare-fun b_next!11451 () Bool)

(assert (=> b!365856 (= b_free!11451 (not b_next!11451))))

(declare-fun tp!116023 () Bool)

(declare-fun b_and!36783 () Bool)

(assert (=> b!365856 (= tp!116023 b_and!36783)))

(declare-fun b!365849 () Bool)

(declare-fun b_free!11453 () Bool)

(declare-fun b_next!11453 () Bool)

(assert (=> b!365849 (= b_free!11453 (not b_next!11453))))

(declare-fun tp!116033 () Bool)

(declare-fun b_and!36785 () Bool)

(assert (=> b!365849 (= tp!116033 b_and!36785)))

(declare-fun b_free!11455 () Bool)

(declare-fun b_next!11455 () Bool)

(assert (=> b!365849 (= b_free!11455 (not b_next!11455))))

(declare-fun tp!116029 () Bool)

(declare-fun b_and!36787 () Bool)

(assert (=> b!365849 (= tp!116029 b_and!36787)))

(declare-fun b!365865 () Bool)

(declare-fun b_free!11457 () Bool)

(declare-fun b_next!11457 () Bool)

(assert (=> b!365865 (= b_free!11457 (not b_next!11457))))

(declare-fun tp!116032 () Bool)

(declare-fun b_and!36789 () Bool)

(assert (=> b!365865 (= tp!116032 b_and!36789)))

(declare-fun b_free!11459 () Bool)

(declare-fun b_next!11459 () Bool)

(assert (=> b!365865 (= b_free!11459 (not b_next!11459))))

(declare-fun tp!116027 () Bool)

(declare-fun b_and!36791 () Bool)

(assert (=> b!365865 (= tp!116027 b_and!36791)))

(declare-fun bs!44314 () Bool)

(declare-fun b!365871 () Bool)

(declare-fun b!365872 () Bool)

(assert (= bs!44314 (and b!365871 b!365872)))

(declare-fun lambda!11384 () Int)

(declare-fun lambda!11383 () Int)

(assert (=> bs!44314 (not (= lambda!11384 lambda!11383))))

(declare-fun b!365890 () Bool)

(declare-fun e!224780 () Bool)

(assert (=> b!365890 (= e!224780 true)))

(declare-fun b!365889 () Bool)

(declare-fun e!224779 () Bool)

(assert (=> b!365889 (= e!224779 e!224780)))

(declare-fun b!365888 () Bool)

(declare-fun e!224778 () Bool)

(assert (=> b!365888 (= e!224778 e!224779)))

(assert (=> b!365871 e!224778))

(assert (= b!365889 b!365890))

(assert (= b!365888 b!365889))

(declare-datatypes ((List!4146 0))(
  ( (Nil!4136) (Cons!4136 (h!9533 (_ BitVec 16)) (t!56486 List!4146)) )
))
(declare-datatypes ((TokenValue!819 0))(
  ( (FloatLiteralValue!1638 (text!6178 List!4146)) (TokenValueExt!818 (__x!3125 Int)) (Broken!4095 (value!27004 List!4146)) (Object!828) (End!819) (Def!819) (Underscore!819) (Match!819) (Else!819) (Error!819) (Case!819) (If!819) (Extends!819) (Abstract!819) (Class!819) (Val!819) (DelimiterValue!1638 (del!879 List!4146)) (KeywordValue!825 (value!27005 List!4146)) (CommentValue!1638 (value!27006 List!4146)) (WhitespaceValue!1638 (value!27007 List!4146)) (IndentationValue!819 (value!27008 List!4146)) (String!5174) (Int32!819) (Broken!4096 (value!27009 List!4146)) (Boolean!820) (Unit!6489) (OperatorValue!822 (op!879 List!4146)) (IdentifierValue!1638 (value!27010 List!4146)) (IdentifierValue!1639 (value!27011 List!4146)) (WhitespaceValue!1639 (value!27012 List!4146)) (True!1638) (False!1638) (Broken!4097 (value!27013 List!4146)) (Broken!4098 (value!27014 List!4146)) (True!1639) (RightBrace!819) (RightBracket!819) (Colon!819) (Null!819) (Comma!819) (LeftBracket!819) (False!1639) (LeftBrace!819) (ImaginaryLiteralValue!819 (text!6179 List!4146)) (StringLiteralValue!2457 (value!27015 List!4146)) (EOFValue!819 (value!27016 List!4146)) (IdentValue!819 (value!27017 List!4146)) (DelimiterValue!1639 (value!27018 List!4146)) (DedentValue!819 (value!27019 List!4146)) (NewLineValue!819 (value!27020 List!4146)) (IntegerValue!2457 (value!27021 (_ BitVec 32)) (text!6180 List!4146)) (IntegerValue!2458 (value!27022 Int) (text!6181 List!4146)) (Times!819) (Or!819) (Equal!819) (Minus!819) (Broken!4099 (value!27023 List!4146)) (And!819) (Div!819) (LessEqual!819) (Mod!819) (Concat!1840) (Not!819) (Plus!819) (SpaceValue!819 (value!27024 List!4146)) (IntegerValue!2459 (value!27025 Int) (text!6182 List!4146)) (StringLiteralValue!2458 (text!6183 List!4146)) (FloatLiteralValue!1639 (text!6184 List!4146)) (BytesLiteralValue!819 (value!27026 List!4146)) (CommentValue!1639 (value!27027 List!4146)) (StringLiteralValue!2459 (value!27028 List!4146)) (ErrorTokenValue!819 (msg!880 List!4146)) )
))
(declare-datatypes ((C!2964 0))(
  ( (C!2965 (val!1368 Int)) )
))
(declare-datatypes ((List!4147 0))(
  ( (Nil!4137) (Cons!4137 (h!9534 C!2964) (t!56487 List!4147)) )
))
(declare-datatypes ((IArray!2833 0))(
  ( (IArray!2834 (innerList!1474 List!4147)) )
))
(declare-datatypes ((Conc!1416 0))(
  ( (Node!1416 (left!3449 Conc!1416) (right!3779 Conc!1416) (csize!3062 Int) (cheight!1627 Int)) (Leaf!2154 (xs!4035 IArray!2833) (csize!3063 Int)) (Empty!1416) )
))
(declare-datatypes ((BalanceConc!2840 0))(
  ( (BalanceConc!2841 (c!72028 Conc!1416)) )
))
(declare-datatypes ((TokenValueInjection!1410 0))(
  ( (TokenValueInjection!1411 (toValue!1576 Int) (toChars!1435 Int)) )
))
(declare-datatypes ((Regex!1021 0))(
  ( (ElementMatch!1021 (c!72029 C!2964)) (Concat!1841 (regOne!2554 Regex!1021) (regTwo!2554 Regex!1021)) (EmptyExpr!1021) (Star!1021 (reg!1350 Regex!1021)) (EmptyLang!1021) (Union!1021 (regOne!2555 Regex!1021) (regTwo!2555 Regex!1021)) )
))
(declare-datatypes ((String!5175 0))(
  ( (String!5176 (value!27029 String)) )
))
(declare-datatypes ((Rule!1394 0))(
  ( (Rule!1395 (regex!797 Regex!1021) (tag!1023 String!5175) (isSeparator!797 Bool) (transformation!797 TokenValueInjection!1410)) )
))
(declare-datatypes ((List!4148 0))(
  ( (Nil!4138) (Cons!4138 (h!9535 Rule!1394) (t!56488 List!4148)) )
))
(declare-fun rules!1920 () List!4148)

(get-info :version)

(assert (= (and b!365871 ((_ is Cons!4138) rules!1920)) b!365888))

(declare-fun order!3451 () Int)

(declare-fun order!3449 () Int)

(declare-fun dynLambda!2345 (Int Int) Int)

(declare-fun dynLambda!2346 (Int Int) Int)

(assert (=> b!365890 (< (dynLambda!2345 order!3449 (toValue!1576 (transformation!797 (h!9535 rules!1920)))) (dynLambda!2346 order!3451 lambda!11384))))

(declare-fun order!3453 () Int)

(declare-fun dynLambda!2347 (Int Int) Int)

(assert (=> b!365890 (< (dynLambda!2347 order!3453 (toChars!1435 (transformation!797 (h!9535 rules!1920)))) (dynLambda!2346 order!3451 lambda!11384))))

(assert (=> b!365871 true))

(declare-fun b!365836 () Bool)

(declare-fun res!163517 () Bool)

(declare-fun e!224771 () Bool)

(assert (=> b!365836 (=> (not res!163517) (not e!224771))))

(declare-datatypes ((Token!1338 0))(
  ( (Token!1339 (value!27030 TokenValue!819) (rule!1438 Rule!1394) (size!3338 Int) (originalCharacters!840 List!4147)) )
))
(declare-datatypes ((List!4149 0))(
  ( (Nil!4139) (Cons!4139 (h!9536 Token!1338) (t!56489 List!4149)) )
))
(declare-datatypes ((IArray!2835 0))(
  ( (IArray!2836 (innerList!1475 List!4149)) )
))
(declare-datatypes ((Conc!1417 0))(
  ( (Node!1417 (left!3450 Conc!1417) (right!3780 Conc!1417) (csize!3064 Int) (cheight!1628 Int)) (Leaf!2155 (xs!4036 IArray!2835) (csize!3065 Int)) (Empty!1417) )
))
(declare-datatypes ((BalanceConc!2842 0))(
  ( (BalanceConc!2843 (c!72030 Conc!1417)) )
))
(declare-datatypes ((tuple2!4850 0))(
  ( (tuple2!4851 (_1!2641 BalanceConc!2842) (_2!2641 BalanceConc!2840)) )
))
(declare-fun lt!157912 () tuple2!4850)

(declare-fun lt!157892 () Token!1338)

(declare-fun apply!948 (BalanceConc!2842 Int) Token!1338)

(assert (=> b!365836 (= res!163517 (= (apply!948 (_1!2641 lt!157912) 0) lt!157892))))

(declare-fun b!365837 () Bool)

(declare-fun res!163518 () Bool)

(declare-fun e!224769 () Bool)

(assert (=> b!365837 (=> (not res!163518) (not e!224769))))

(declare-fun separatorToken!170 () Token!1338)

(declare-datatypes ((LexerInterface!683 0))(
  ( (LexerInterfaceExt!680 (__x!3126 Int)) (Lexer!681) )
))
(declare-fun thiss!17480 () LexerInterface!683)

(declare-fun rulesProduceIndividualToken!432 (LexerInterface!683 List!4148 Token!1338) Bool)

(assert (=> b!365837 (= res!163518 (rulesProduceIndividualToken!432 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!365838 () Bool)

(declare-fun e!224741 () Bool)

(declare-fun lt!157907 () Rule!1394)

(assert (=> b!365838 (= e!224741 (= (rule!1438 lt!157892) lt!157907))))

(declare-fun b!365839 () Bool)

(declare-fun e!224750 () Bool)

(declare-fun e!224743 () Bool)

(assert (=> b!365839 (= e!224750 e!224743)))

(declare-fun res!163525 () Bool)

(assert (=> b!365839 (=> res!163525 e!224743)))

(declare-fun lt!157908 () Bool)

(assert (=> b!365839 (= res!163525 (not lt!157908))))

(declare-fun e!224747 () Bool)

(assert (=> b!365839 e!224747))

(declare-fun res!163520 () Bool)

(assert (=> b!365839 (=> (not res!163520) (not e!224747))))

(declare-datatypes ((tuple2!4852 0))(
  ( (tuple2!4853 (_1!2642 Token!1338) (_2!2642 List!4147)) )
))
(declare-fun lt!157926 () tuple2!4852)

(declare-fun tokens!465 () List!4149)

(assert (=> b!365839 (= res!163520 (= (_1!2642 lt!157926) (h!9536 tokens!465)))))

(declare-datatypes ((Option!973 0))(
  ( (None!972) (Some!972 (v!15075 tuple2!4852)) )
))
(declare-fun lt!157901 () Option!973)

(declare-fun get!1437 (Option!973) tuple2!4852)

(assert (=> b!365839 (= lt!157926 (get!1437 lt!157901))))

(declare-fun isDefined!812 (Option!973) Bool)

(assert (=> b!365839 (isDefined!812 lt!157901)))

(declare-fun lt!157931 () List!4147)

(declare-fun maxPrefix!399 (LexerInterface!683 List!4148 List!4147) Option!973)

(assert (=> b!365839 (= lt!157901 (maxPrefix!399 thiss!17480 rules!1920 lt!157931))))

(declare-fun b!365840 () Bool)

(declare-fun e!224753 () Bool)

(declare-fun lt!157929 () Rule!1394)

(assert (=> b!365840 (= e!224753 (= (rule!1438 separatorToken!170) lt!157929))))

(declare-fun b!365841 () Bool)

(declare-fun e!224759 () Bool)

(declare-fun lt!157894 () Option!973)

(declare-fun head!995 (List!4149) Token!1338)

(assert (=> b!365841 (= e!224759 (= (_1!2642 (get!1437 lt!157894)) (head!995 tokens!465)))))

(declare-fun e!224757 () Bool)

(declare-fun b!365842 () Bool)

(declare-fun e!224744 () Bool)

(declare-fun tp!116035 () Bool)

(declare-fun inv!5138 (String!5175) Bool)

(declare-fun inv!5141 (TokenValueInjection!1410) Bool)

(assert (=> b!365842 (= e!224757 (and tp!116035 (inv!5138 (tag!1023 (rule!1438 separatorToken!170))) (inv!5141 (transformation!797 (rule!1438 separatorToken!170))) e!224744))))

(declare-fun b!365843 () Bool)

(declare-fun e!224766 () Bool)

(declare-fun e!224739 () Bool)

(declare-fun tp!116025 () Bool)

(assert (=> b!365843 (= e!224766 (and e!224739 tp!116025))))

(declare-fun b!365844 () Bool)

(declare-fun e!224756 () Bool)

(assert (=> b!365844 (= e!224756 e!224759)))

(declare-fun res!163531 () Bool)

(assert (=> b!365844 (=> (not res!163531) (not e!224759))))

(assert (=> b!365844 (= res!163531 (isDefined!812 lt!157894))))

(declare-fun lt!157898 () List!4147)

(assert (=> b!365844 (= lt!157894 (maxPrefix!399 thiss!17480 rules!1920 lt!157898))))

(declare-fun e!224738 () Bool)

(declare-fun tp!116030 () Bool)

(declare-fun e!224748 () Bool)

(declare-fun b!365845 () Bool)

(declare-fun inv!5142 (Token!1338) Bool)

(assert (=> b!365845 (= e!224748 (and (inv!5142 (h!9536 tokens!465)) e!224738 tp!116030))))

(declare-fun b!365846 () Bool)

(declare-fun res!163519 () Bool)

(declare-fun e!224749 () Bool)

(assert (=> b!365846 (=> res!163519 e!224749)))

(declare-fun isEmpty!2910 (BalanceConc!2842) Bool)

(declare-fun lex!475 (LexerInterface!683 List!4148 BalanceConc!2840) tuple2!4850)

(declare-fun seqFromList!959 (List!4147) BalanceConc!2840)

(assert (=> b!365846 (= res!163519 (isEmpty!2910 (_1!2641 (lex!475 thiss!17480 rules!1920 (seqFromList!959 lt!157931)))))))

(declare-fun b!365847 () Bool)

(declare-fun e!224746 () Bool)

(declare-fun lt!157900 () tuple2!4850)

(declare-fun isEmpty!2911 (BalanceConc!2840) Bool)

(assert (=> b!365847 (= e!224746 (isEmpty!2911 (_2!2641 lt!157900)))))

(declare-fun b!365848 () Bool)

(declare-fun res!163537 () Bool)

(assert (=> b!365848 (=> (not res!163537) (not e!224769))))

(assert (=> b!365848 (= res!163537 (isSeparator!797 (rule!1438 separatorToken!170)))))

(declare-fun e!224737 () Bool)

(assert (=> b!365849 (= e!224737 (and tp!116033 tp!116029))))

(declare-fun b!365850 () Bool)

(declare-datatypes ((Unit!6490 0))(
  ( (Unit!6491) )
))
(declare-fun e!224770 () Unit!6490)

(declare-fun Unit!6492 () Unit!6490)

(assert (=> b!365850 (= e!224770 Unit!6492)))

(declare-fun e!224755 () Bool)

(declare-fun tp!116034 () Bool)

(declare-fun b!365851 () Bool)

(assert (=> b!365851 (= e!224755 (and tp!116034 (inv!5138 (tag!1023 (rule!1438 (h!9536 tokens!465)))) (inv!5141 (transformation!797 (rule!1438 (h!9536 tokens!465)))) e!224737))))

(declare-fun b!365852 () Bool)

(declare-fun e!224760 () Bool)

(assert (=> b!365852 (= e!224760 e!224749)))

(declare-fun res!163515 () Bool)

(assert (=> b!365852 (=> res!163515 e!224749)))

(declare-fun lt!157925 () List!4147)

(declare-fun lt!157893 () List!4147)

(assert (=> b!365852 (= res!163515 (or (not (= lt!157925 lt!157893)) (not (= lt!157893 lt!157931)) (not (= lt!157925 lt!157931))))))

(declare-fun printList!357 (LexerInterface!683 List!4149) List!4147)

(assert (=> b!365852 (= lt!157893 (printList!357 thiss!17480 (Cons!4139 (h!9536 tokens!465) Nil!4139)))))

(declare-fun lt!157923 () BalanceConc!2840)

(declare-fun list!1781 (BalanceConc!2840) List!4147)

(assert (=> b!365852 (= lt!157925 (list!1781 lt!157923))))

(declare-fun lt!157913 () BalanceConc!2842)

(declare-fun printTailRec!369 (LexerInterface!683 BalanceConc!2842 Int BalanceConc!2840) BalanceConc!2840)

(assert (=> b!365852 (= lt!157923 (printTailRec!369 thiss!17480 lt!157913 0 (BalanceConc!2841 Empty!1416)))))

(declare-fun print!408 (LexerInterface!683 BalanceConc!2842) BalanceConc!2840)

(assert (=> b!365852 (= lt!157923 (print!408 thiss!17480 lt!157913))))

(declare-fun singletonSeq!343 (Token!1338) BalanceConc!2842)

(assert (=> b!365852 (= lt!157913 (singletonSeq!343 (h!9536 tokens!465)))))

(declare-fun b!365853 () Bool)

(declare-fun e!224764 () Bool)

(declare-fun e!224761 () Bool)

(assert (=> b!365853 (= e!224764 (not e!224761))))

(declare-fun res!163536 () Bool)

(assert (=> b!365853 (=> res!163536 e!224761)))

(declare-fun lt!157910 () List!4147)

(declare-fun printWithSeparatorTokenWhenNeededRec!356 (LexerInterface!683 List!4148 BalanceConc!2842 Token!1338 Int) BalanceConc!2840)

(declare-fun seqFromList!960 (List!4149) BalanceConc!2842)

(assert (=> b!365853 (= res!163536 (not (= lt!157910 (list!1781 (printWithSeparatorTokenWhenNeededRec!356 thiss!17480 rules!1920 (seqFromList!960 (t!56489 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!157927 () List!4147)

(declare-fun lt!157905 () List!4147)

(assert (=> b!365853 (= lt!157927 lt!157905)))

(declare-fun lt!157903 () List!4147)

(declare-fun ++!1150 (List!4147 List!4147) List!4147)

(assert (=> b!365853 (= lt!157905 (++!1150 lt!157931 lt!157903))))

(declare-fun lt!157904 () List!4147)

(assert (=> b!365853 (= lt!157927 (++!1150 (++!1150 lt!157931 lt!157904) lt!157910))))

(declare-fun lt!157921 () Unit!6490)

(declare-fun lemmaConcatAssociativity!514 (List!4147 List!4147 List!4147) Unit!6490)

(assert (=> b!365853 (= lt!157921 (lemmaConcatAssociativity!514 lt!157931 lt!157904 lt!157910))))

(declare-fun charsOf!440 (Token!1338) BalanceConc!2840)

(assert (=> b!365853 (= lt!157931 (list!1781 (charsOf!440 (h!9536 tokens!465))))))

(assert (=> b!365853 (= lt!157903 (++!1150 lt!157904 lt!157910))))

(declare-fun printWithSeparatorTokenWhenNeededList!364 (LexerInterface!683 List!4148 List!4149 Token!1338) List!4147)

(assert (=> b!365853 (= lt!157910 (printWithSeparatorTokenWhenNeededList!364 thiss!17480 rules!1920 (t!56489 tokens!465) separatorToken!170))))

(assert (=> b!365853 (= lt!157904 (list!1781 (charsOf!440 separatorToken!170)))))

(declare-fun b!365854 () Bool)

(assert (=> b!365854 (= e!224771 (isEmpty!2911 (_2!2641 lt!157912)))))

(declare-fun b!365855 () Bool)

(declare-fun res!163535 () Bool)

(assert (=> b!365855 (=> (not res!163535) (not e!224747))))

(declare-fun isEmpty!2912 (List!4147) Bool)

(assert (=> b!365855 (= res!163535 (isEmpty!2912 (_2!2642 lt!157926)))))

(assert (=> b!365856 (= e!224744 (and tp!116026 tp!116023))))

(declare-fun b!365857 () Bool)

(declare-fun res!163530 () Bool)

(assert (=> b!365857 (=> res!163530 e!224749)))

(assert (=> b!365857 (= res!163530 (not (rulesProduceIndividualToken!432 thiss!17480 rules!1920 (h!9536 tokens!465))))))

(declare-fun b!365858 () Bool)

(declare-fun matchR!339 (Regex!1021 List!4147) Bool)

(assert (=> b!365858 (= e!224747 (matchR!339 (regex!797 (rule!1438 (h!9536 tokens!465))) lt!157931))))

(declare-fun b!365859 () Bool)

(declare-fun e!224742 () Bool)

(assert (=> b!365859 (= e!224742 e!224753)))

(declare-fun res!163508 () Bool)

(assert (=> b!365859 (=> (not res!163508) (not e!224753))))

(assert (=> b!365859 (= res!163508 (matchR!339 (regex!797 lt!157929) lt!157904))))

(declare-datatypes ((Option!974 0))(
  ( (None!973) (Some!973 (v!15076 Rule!1394)) )
))
(declare-fun lt!157924 () Option!974)

(declare-fun get!1438 (Option!974) Rule!1394)

(assert (=> b!365859 (= lt!157929 (get!1438 lt!157924))))

(declare-fun b!365860 () Bool)

(declare-fun res!163516 () Bool)

(assert (=> b!365860 (=> (not res!163516) (not e!224769))))

(assert (=> b!365860 (= res!163516 ((_ is Cons!4139) tokens!465))))

(declare-fun tp!116024 () Bool)

(declare-fun e!224765 () Bool)

(declare-fun b!365861 () Bool)

(declare-fun inv!21 (TokenValue!819) Bool)

(assert (=> b!365861 (= e!224765 (and (inv!21 (value!27030 separatorToken!170)) e!224757 tp!116024))))

(declare-fun b!365862 () Bool)

(declare-fun res!163533 () Bool)

(declare-fun e!224758 () Bool)

(assert (=> b!365862 (=> (not res!163533) (not e!224758))))

(declare-fun rulesInvariant!649 (LexerInterface!683 List!4148) Bool)

(assert (=> b!365862 (= res!163533 (rulesInvariant!649 thiss!17480 rules!1920))))

(declare-fun b!365863 () Bool)

(declare-fun res!163538 () Bool)

(assert (=> b!365863 (=> (not res!163538) (not e!224764))))

(declare-fun lt!157897 () List!4147)

(assert (=> b!365863 (= res!163538 (= (list!1781 (seqFromList!959 lt!157898)) lt!157897))))

(declare-fun b!365864 () Bool)

(declare-fun e!224740 () Bool)

(assert (=> b!365864 (= e!224743 e!224740)))

(declare-fun res!163529 () Bool)

(assert (=> b!365864 (=> res!163529 e!224740)))

(declare-fun lt!157896 () List!4147)

(declare-fun contains!837 (List!4147 C!2964) Bool)

(declare-fun usedCharacters!98 (Regex!1021) List!4147)

(declare-fun head!996 (List!4147) C!2964)

(assert (=> b!365864 (= res!163529 (contains!837 (usedCharacters!98 (regex!797 (rule!1438 lt!157892))) (head!996 lt!157896)))))

(declare-fun e!224763 () Bool)

(assert (=> b!365864 e!224763))

(declare-fun res!163532 () Bool)

(assert (=> b!365864 (=> (not res!163532) (not e!224763))))

(declare-fun lt!157909 () Option!974)

(declare-fun isDefined!813 (Option!974) Bool)

(assert (=> b!365864 (= res!163532 (isDefined!813 lt!157909))))

(declare-fun getRuleFromTag!156 (LexerInterface!683 List!4148 String!5175) Option!974)

(assert (=> b!365864 (= lt!157909 (getRuleFromTag!156 thiss!17480 rules!1920 (tag!1023 (rule!1438 lt!157892))))))

(declare-fun lt!157902 () Unit!6490)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!156 (LexerInterface!683 List!4148 List!4147 Token!1338) Unit!6490)

(assert (=> b!365864 (= lt!157902 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!156 thiss!17480 rules!1920 lt!157896 lt!157892))))

(assert (=> b!365864 (= lt!157896 (list!1781 (charsOf!440 lt!157892)))))

(declare-fun lt!157914 () Unit!6490)

(declare-fun forallContained!350 (List!4149 Int Token!1338) Unit!6490)

(assert (=> b!365864 (= lt!157914 (forallContained!350 tokens!465 lambda!11384 lt!157892))))

(assert (=> b!365864 e!224771))

(declare-fun res!163526 () Bool)

(assert (=> b!365864 (=> (not res!163526) (not e!224771))))

(declare-fun size!3339 (BalanceConc!2842) Int)

(assert (=> b!365864 (= res!163526 (= (size!3339 (_1!2641 lt!157912)) 1))))

(declare-fun lt!157895 () BalanceConc!2840)

(assert (=> b!365864 (= lt!157912 (lex!475 thiss!17480 rules!1920 lt!157895))))

(declare-fun lt!157915 () BalanceConc!2842)

(assert (=> b!365864 (= lt!157895 (printTailRec!369 thiss!17480 lt!157915 0 (BalanceConc!2841 Empty!1416)))))

(assert (=> b!365864 (= lt!157895 (print!408 thiss!17480 lt!157915))))

(assert (=> b!365864 (= lt!157915 (singletonSeq!343 lt!157892))))

(assert (=> b!365864 e!224742))

(declare-fun res!163511 () Bool)

(assert (=> b!365864 (=> (not res!163511) (not e!224742))))

(assert (=> b!365864 (= res!163511 (isDefined!813 lt!157924))))

(assert (=> b!365864 (= lt!157924 (getRuleFromTag!156 thiss!17480 rules!1920 (tag!1023 (rule!1438 separatorToken!170))))))

(declare-fun lt!157918 () Unit!6490)

(assert (=> b!365864 (= lt!157918 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!156 thiss!17480 rules!1920 lt!157904 separatorToken!170))))

(assert (=> b!365864 e!224746))

(declare-fun res!163512 () Bool)

(assert (=> b!365864 (=> (not res!163512) (not e!224746))))

(assert (=> b!365864 (= res!163512 (= (size!3339 (_1!2641 lt!157900)) 1))))

(declare-fun lt!157919 () BalanceConc!2840)

(assert (=> b!365864 (= lt!157900 (lex!475 thiss!17480 rules!1920 lt!157919))))

(declare-fun lt!157917 () BalanceConc!2842)

(assert (=> b!365864 (= lt!157919 (printTailRec!369 thiss!17480 lt!157917 0 (BalanceConc!2841 Empty!1416)))))

(assert (=> b!365864 (= lt!157919 (print!408 thiss!17480 lt!157917))))

(assert (=> b!365864 (= lt!157917 (singletonSeq!343 separatorToken!170))))

(assert (=> b!365864 (rulesProduceIndividualToken!432 thiss!17480 rules!1920 lt!157892)))

(declare-fun lt!157930 () Unit!6490)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!146 (LexerInterface!683 List!4148 List!4149 Token!1338) Unit!6490)

(assert (=> b!365864 (= lt!157930 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!146 thiss!17480 rules!1920 tokens!465 lt!157892))))

(assert (=> b!365864 (= lt!157892 (head!995 (t!56489 tokens!465)))))

(declare-fun lt!157911 () Unit!6490)

(assert (=> b!365864 (= lt!157911 e!224770)))

(declare-fun c!72027 () Bool)

(declare-fun isEmpty!2913 (List!4149) Bool)

(assert (=> b!365864 (= c!72027 (isEmpty!2913 (t!56489 tokens!465)))))

(declare-fun lt!157922 () Option!973)

(assert (=> b!365864 (= lt!157922 (maxPrefix!399 thiss!17480 rules!1920 lt!157903))))

(declare-fun lt!157916 () tuple2!4852)

(assert (=> b!365864 (= lt!157903 (_2!2642 lt!157916))))

(declare-fun lt!157920 () Unit!6490)

(declare-fun lemmaSamePrefixThenSameSuffix!242 (List!4147 List!4147 List!4147 List!4147 List!4147) Unit!6490)

(assert (=> b!365864 (= lt!157920 (lemmaSamePrefixThenSameSuffix!242 lt!157931 lt!157903 lt!157931 (_2!2642 lt!157916) lt!157898))))

(assert (=> b!365864 (= lt!157916 (get!1437 (maxPrefix!399 thiss!17480 rules!1920 lt!157898)))))

(declare-fun isPrefix!457 (List!4147 List!4147) Bool)

(assert (=> b!365864 (isPrefix!457 lt!157931 lt!157905)))

(declare-fun lt!157899 () Unit!6490)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!348 (List!4147 List!4147) Unit!6490)

(assert (=> b!365864 (= lt!157899 (lemmaConcatTwoListThenFirstIsPrefix!348 lt!157931 lt!157903))))

(assert (=> b!365864 e!224756))

(declare-fun res!163513 () Bool)

(assert (=> b!365864 (=> res!163513 e!224756)))

(assert (=> b!365864 (= res!163513 (isEmpty!2913 tokens!465))))

(declare-fun lt!157932 () Unit!6490)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!204 (LexerInterface!683 List!4148 List!4149 Token!1338) Unit!6490)

(assert (=> b!365864 (= lt!157932 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!204 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!224745 () Bool)

(assert (=> b!365865 (= e!224745 (and tp!116032 tp!116027))))

(declare-fun b!365866 () Bool)

(declare-fun Unit!6493 () Unit!6490)

(assert (=> b!365866 (= e!224770 Unit!6493)))

(assert (=> b!365866 false))

(declare-fun b!365867 () Bool)

(declare-fun validRegex!283 (Regex!1021) Bool)

(assert (=> b!365867 (= e!224740 (validRegex!283 (regex!797 (rule!1438 lt!157892))))))

(declare-fun b!365868 () Bool)

(assert (=> b!365868 (= e!224763 e!224741)))

(declare-fun res!163522 () Bool)

(assert (=> b!365868 (=> (not res!163522) (not e!224741))))

(assert (=> b!365868 (= res!163522 (matchR!339 (regex!797 lt!157907) lt!157896))))

(assert (=> b!365868 (= lt!157907 (get!1438 lt!157909))))

(declare-fun tp!116028 () Bool)

(declare-fun b!365869 () Bool)

(assert (=> b!365869 (= e!224739 (and tp!116028 (inv!5138 (tag!1023 (h!9535 rules!1920))) (inv!5141 (transformation!797 (h!9535 rules!1920))) e!224745))))

(declare-fun b!365870 () Bool)

(declare-fun res!163524 () Bool)

(assert (=> b!365870 (=> (not res!163524) (not e!224758))))

(declare-fun isEmpty!2914 (List!4148) Bool)

(assert (=> b!365870 (= res!163524 (not (isEmpty!2914 rules!1920)))))

(assert (=> b!365871 (= e!224749 e!224750)))

(declare-fun res!163510 () Bool)

(assert (=> b!365871 (=> res!163510 e!224750)))

(declare-datatypes ((tuple2!4854 0))(
  ( (tuple2!4855 (_1!2643 Token!1338) (_2!2643 BalanceConc!2840)) )
))
(declare-datatypes ((Option!975 0))(
  ( (None!974) (Some!974 (v!15077 tuple2!4854)) )
))
(declare-fun isDefined!814 (Option!975) Bool)

(declare-fun maxPrefixZipperSequence!362 (LexerInterface!683 List!4148 BalanceConc!2840) Option!975)

(assert (=> b!365871 (= res!163510 (not (isDefined!814 (maxPrefixZipperSequence!362 thiss!17480 rules!1920 (seqFromList!959 (originalCharacters!840 (h!9536 tokens!465)))))))))

(declare-fun lt!157906 () Unit!6490)

(assert (=> b!365871 (= lt!157906 (forallContained!350 tokens!465 lambda!11384 (h!9536 tokens!465)))))

(assert (=> b!365871 (= lt!157931 (originalCharacters!840 (h!9536 tokens!465)))))

(declare-fun res!163528 () Bool)

(assert (=> b!365872 (=> (not res!163528) (not e!224769))))

(declare-fun forall!1136 (List!4149 Int) Bool)

(assert (=> b!365872 (= res!163528 (forall!1136 tokens!465 lambda!11383))))

(declare-fun tp!116031 () Bool)

(declare-fun b!365873 () Bool)

(assert (=> b!365873 (= e!224738 (and (inv!21 (value!27030 (h!9536 tokens!465))) e!224755 tp!116031))))

(declare-fun b!365874 () Bool)

(assert (=> b!365874 (= e!224769 e!224764)))

(declare-fun res!163509 () Bool)

(assert (=> b!365874 (=> (not res!163509) (not e!224764))))

(assert (=> b!365874 (= res!163509 (= lt!157898 lt!157897))))

(declare-fun lt!157928 () BalanceConc!2842)

(assert (=> b!365874 (= lt!157897 (list!1781 (printWithSeparatorTokenWhenNeededRec!356 thiss!17480 rules!1920 lt!157928 separatorToken!170 0)))))

(assert (=> b!365874 (= lt!157898 (printWithSeparatorTokenWhenNeededList!364 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!365875 () Bool)

(assert (=> b!365875 (= e!224761 e!224760)))

(declare-fun res!163539 () Bool)

(assert (=> b!365875 (=> res!163539 e!224760)))

(declare-fun e!224768 () Bool)

(assert (=> b!365875 (= res!163539 e!224768)))

(declare-fun res!163514 () Bool)

(assert (=> b!365875 (=> (not res!163514) (not e!224768))))

(assert (=> b!365875 (= res!163514 (not lt!157908))))

(assert (=> b!365875 (= lt!157908 (= lt!157898 lt!157905))))

(declare-fun res!163534 () Bool)

(assert (=> start!36274 (=> (not res!163534) (not e!224758))))

(assert (=> start!36274 (= res!163534 ((_ is Lexer!681) thiss!17480))))

(assert (=> start!36274 e!224758))

(assert (=> start!36274 true))

(assert (=> start!36274 e!224766))

(assert (=> start!36274 (and (inv!5142 separatorToken!170) e!224765)))

(assert (=> start!36274 e!224748))

(declare-fun b!365876 () Bool)

(assert (=> b!365876 (= e!224758 e!224769)))

(declare-fun res!163521 () Bool)

(assert (=> b!365876 (=> (not res!163521) (not e!224769))))

(declare-fun rulesProduceEachTokenIndividually!475 (LexerInterface!683 List!4148 BalanceConc!2842) Bool)

(assert (=> b!365876 (= res!163521 (rulesProduceEachTokenIndividually!475 thiss!17480 rules!1920 lt!157928))))

(assert (=> b!365876 (= lt!157928 (seqFromList!960 tokens!465))))

(declare-fun b!365877 () Bool)

(declare-fun res!163527 () Bool)

(assert (=> b!365877 (=> (not res!163527) (not e!224769))))

(declare-fun sepAndNonSepRulesDisjointChars!386 (List!4148 List!4148) Bool)

(assert (=> b!365877 (= res!163527 (sepAndNonSepRulesDisjointChars!386 rules!1920 rules!1920))))

(declare-fun b!365878 () Bool)

(declare-fun res!163523 () Bool)

(assert (=> b!365878 (=> (not res!163523) (not e!224746))))

(assert (=> b!365878 (= res!163523 (= (apply!948 (_1!2641 lt!157900) 0) separatorToken!170))))

(declare-fun b!365879 () Bool)

(assert (=> b!365879 (= e!224768 (not (= lt!157898 (++!1150 lt!157931 lt!157910))))))

(assert (= (and start!36274 res!163534) b!365870))

(assert (= (and b!365870 res!163524) b!365862))

(assert (= (and b!365862 res!163533) b!365876))

(assert (= (and b!365876 res!163521) b!365837))

(assert (= (and b!365837 res!163518) b!365848))

(assert (= (and b!365848 res!163537) b!365872))

(assert (= (and b!365872 res!163528) b!365877))

(assert (= (and b!365877 res!163527) b!365860))

(assert (= (and b!365860 res!163516) b!365874))

(assert (= (and b!365874 res!163509) b!365863))

(assert (= (and b!365863 res!163538) b!365853))

(assert (= (and b!365853 (not res!163536)) b!365875))

(assert (= (and b!365875 res!163514) b!365879))

(assert (= (and b!365875 (not res!163539)) b!365852))

(assert (= (and b!365852 (not res!163515)) b!365857))

(assert (= (and b!365857 (not res!163530)) b!365846))

(assert (= (and b!365846 (not res!163519)) b!365871))

(assert (= (and b!365871 (not res!163510)) b!365839))

(assert (= (and b!365839 res!163520) b!365855))

(assert (= (and b!365855 res!163535) b!365858))

(assert (= (and b!365839 (not res!163525)) b!365864))

(assert (= (and b!365864 (not res!163513)) b!365844))

(assert (= (and b!365844 res!163531) b!365841))

(assert (= (and b!365864 c!72027) b!365866))

(assert (= (and b!365864 (not c!72027)) b!365850))

(assert (= (and b!365864 res!163512) b!365878))

(assert (= (and b!365878 res!163523) b!365847))

(assert (= (and b!365864 res!163511) b!365859))

(assert (= (and b!365859 res!163508) b!365840))

(assert (= (and b!365864 res!163526) b!365836))

(assert (= (and b!365836 res!163517) b!365854))

(assert (= (and b!365864 res!163532) b!365868))

(assert (= (and b!365868 res!163522) b!365838))

(assert (= (and b!365864 (not res!163529)) b!365867))

(assert (= b!365869 b!365865))

(assert (= b!365843 b!365869))

(assert (= (and start!36274 ((_ is Cons!4138) rules!1920)) b!365843))

(assert (= b!365842 b!365856))

(assert (= b!365861 b!365842))

(assert (= start!36274 b!365861))

(assert (= b!365851 b!365849))

(assert (= b!365873 b!365851))

(assert (= b!365845 b!365873))

(assert (= (and start!36274 ((_ is Cons!4139) tokens!465)) b!365845))

(declare-fun m!539595 () Bool)

(assert (=> b!365857 m!539595))

(declare-fun m!539597 () Bool)

(assert (=> b!365844 m!539597))

(declare-fun m!539599 () Bool)

(assert (=> b!365844 m!539599))

(declare-fun m!539601 () Bool)

(assert (=> b!365847 m!539601))

(declare-fun m!539603 () Bool)

(assert (=> b!365841 m!539603))

(declare-fun m!539605 () Bool)

(assert (=> b!365841 m!539605))

(declare-fun m!539607 () Bool)

(assert (=> b!365868 m!539607))

(declare-fun m!539609 () Bool)

(assert (=> b!365868 m!539609))

(declare-fun m!539611 () Bool)

(assert (=> b!365864 m!539611))

(declare-fun m!539613 () Bool)

(assert (=> b!365864 m!539613))

(declare-fun m!539615 () Bool)

(assert (=> b!365864 m!539615))

(declare-fun m!539617 () Bool)

(assert (=> b!365864 m!539617))

(declare-fun m!539619 () Bool)

(assert (=> b!365864 m!539619))

(declare-fun m!539621 () Bool)

(assert (=> b!365864 m!539621))

(declare-fun m!539623 () Bool)

(assert (=> b!365864 m!539623))

(declare-fun m!539625 () Bool)

(assert (=> b!365864 m!539625))

(assert (=> b!365864 m!539599))

(declare-fun m!539627 () Bool)

(assert (=> b!365864 m!539627))

(declare-fun m!539629 () Bool)

(assert (=> b!365864 m!539629))

(declare-fun m!539631 () Bool)

(assert (=> b!365864 m!539631))

(declare-fun m!539633 () Bool)

(assert (=> b!365864 m!539633))

(declare-fun m!539635 () Bool)

(assert (=> b!365864 m!539635))

(declare-fun m!539637 () Bool)

(assert (=> b!365864 m!539637))

(declare-fun m!539639 () Bool)

(assert (=> b!365864 m!539639))

(declare-fun m!539641 () Bool)

(assert (=> b!365864 m!539641))

(declare-fun m!539643 () Bool)

(assert (=> b!365864 m!539643))

(declare-fun m!539645 () Bool)

(assert (=> b!365864 m!539645))

(declare-fun m!539647 () Bool)

(assert (=> b!365864 m!539647))

(declare-fun m!539649 () Bool)

(assert (=> b!365864 m!539649))

(assert (=> b!365864 m!539599))

(declare-fun m!539651 () Bool)

(assert (=> b!365864 m!539651))

(declare-fun m!539653 () Bool)

(assert (=> b!365864 m!539653))

(declare-fun m!539655 () Bool)

(assert (=> b!365864 m!539655))

(declare-fun m!539657 () Bool)

(assert (=> b!365864 m!539657))

(declare-fun m!539659 () Bool)

(assert (=> b!365864 m!539659))

(declare-fun m!539661 () Bool)

(assert (=> b!365864 m!539661))

(assert (=> b!365864 m!539653))

(assert (=> b!365864 m!539631))

(declare-fun m!539663 () Bool)

(assert (=> b!365864 m!539663))

(declare-fun m!539665 () Bool)

(assert (=> b!365864 m!539665))

(declare-fun m!539667 () Bool)

(assert (=> b!365864 m!539667))

(assert (=> b!365864 m!539651))

(declare-fun m!539669 () Bool)

(assert (=> b!365864 m!539669))

(declare-fun m!539671 () Bool)

(assert (=> b!365864 m!539671))

(declare-fun m!539673 () Bool)

(assert (=> b!365864 m!539673))

(declare-fun m!539675 () Bool)

(assert (=> b!365864 m!539675))

(declare-fun m!539677 () Bool)

(assert (=> b!365867 m!539677))

(declare-fun m!539679 () Bool)

(assert (=> b!365861 m!539679))

(declare-fun m!539681 () Bool)

(assert (=> start!36274 m!539681))

(declare-fun m!539683 () Bool)

(assert (=> b!365845 m!539683))

(declare-fun m!539685 () Bool)

(assert (=> b!365839 m!539685))

(declare-fun m!539687 () Bool)

(assert (=> b!365839 m!539687))

(declare-fun m!539689 () Bool)

(assert (=> b!365839 m!539689))

(declare-fun m!539691 () Bool)

(assert (=> b!365871 m!539691))

(assert (=> b!365871 m!539691))

(declare-fun m!539693 () Bool)

(assert (=> b!365871 m!539693))

(assert (=> b!365871 m!539693))

(declare-fun m!539695 () Bool)

(assert (=> b!365871 m!539695))

(declare-fun m!539697 () Bool)

(assert (=> b!365871 m!539697))

(declare-fun m!539699 () Bool)

(assert (=> b!365879 m!539699))

(declare-fun m!539701 () Bool)

(assert (=> b!365837 m!539701))

(declare-fun m!539703 () Bool)

(assert (=> b!365872 m!539703))

(declare-fun m!539705 () Bool)

(assert (=> b!365855 m!539705))

(declare-fun m!539707 () Bool)

(assert (=> b!365876 m!539707))

(declare-fun m!539709 () Bool)

(assert (=> b!365876 m!539709))

(declare-fun m!539711 () Bool)

(assert (=> b!365877 m!539711))

(declare-fun m!539713 () Bool)

(assert (=> b!365878 m!539713))

(declare-fun m!539715 () Bool)

(assert (=> b!365853 m!539715))

(declare-fun m!539717 () Bool)

(assert (=> b!365853 m!539717))

(declare-fun m!539719 () Bool)

(assert (=> b!365853 m!539719))

(declare-fun m!539721 () Bool)

(assert (=> b!365853 m!539721))

(declare-fun m!539723 () Bool)

(assert (=> b!365853 m!539723))

(declare-fun m!539725 () Bool)

(assert (=> b!365853 m!539725))

(declare-fun m!539727 () Bool)

(assert (=> b!365853 m!539727))

(declare-fun m!539729 () Bool)

(assert (=> b!365853 m!539729))

(assert (=> b!365853 m!539721))

(assert (=> b!365853 m!539725))

(assert (=> b!365853 m!539719))

(declare-fun m!539731 () Bool)

(assert (=> b!365853 m!539731))

(declare-fun m!539733 () Bool)

(assert (=> b!365853 m!539733))

(declare-fun m!539735 () Bool)

(assert (=> b!365853 m!539735))

(assert (=> b!365853 m!539729))

(declare-fun m!539737 () Bool)

(assert (=> b!365853 m!539737))

(assert (=> b!365853 m!539727))

(declare-fun m!539739 () Bool)

(assert (=> b!365853 m!539739))

(declare-fun m!539741 () Bool)

(assert (=> b!365859 m!539741))

(declare-fun m!539743 () Bool)

(assert (=> b!365859 m!539743))

(declare-fun m!539745 () Bool)

(assert (=> b!365854 m!539745))

(declare-fun m!539747 () Bool)

(assert (=> b!365869 m!539747))

(declare-fun m!539749 () Bool)

(assert (=> b!365869 m!539749))

(declare-fun m!539751 () Bool)

(assert (=> b!365873 m!539751))

(declare-fun m!539753 () Bool)

(assert (=> b!365858 m!539753))

(declare-fun m!539755 () Bool)

(assert (=> b!365842 m!539755))

(declare-fun m!539757 () Bool)

(assert (=> b!365842 m!539757))

(declare-fun m!539759 () Bool)

(assert (=> b!365852 m!539759))

(declare-fun m!539761 () Bool)

(assert (=> b!365852 m!539761))

(declare-fun m!539763 () Bool)

(assert (=> b!365852 m!539763))

(declare-fun m!539765 () Bool)

(assert (=> b!365852 m!539765))

(declare-fun m!539767 () Bool)

(assert (=> b!365852 m!539767))

(declare-fun m!539769 () Bool)

(assert (=> b!365846 m!539769))

(assert (=> b!365846 m!539769))

(declare-fun m!539771 () Bool)

(assert (=> b!365846 m!539771))

(declare-fun m!539773 () Bool)

(assert (=> b!365846 m!539773))

(declare-fun m!539775 () Bool)

(assert (=> b!365863 m!539775))

(assert (=> b!365863 m!539775))

(declare-fun m!539777 () Bool)

(assert (=> b!365863 m!539777))

(declare-fun m!539779 () Bool)

(assert (=> b!365851 m!539779))

(declare-fun m!539781 () Bool)

(assert (=> b!365851 m!539781))

(declare-fun m!539783 () Bool)

(assert (=> b!365862 m!539783))

(declare-fun m!539785 () Bool)

(assert (=> b!365870 m!539785))

(declare-fun m!539787 () Bool)

(assert (=> b!365874 m!539787))

(assert (=> b!365874 m!539787))

(declare-fun m!539789 () Bool)

(assert (=> b!365874 m!539789))

(declare-fun m!539791 () Bool)

(assert (=> b!365874 m!539791))

(declare-fun m!539793 () Bool)

(assert (=> b!365836 m!539793))

(check-sat (not b_next!11455) (not b!365836) (not b!365837) (not b!365872) (not b!365878) (not b!365874) (not b_next!11449) (not b!365854) b_and!36781 (not b!365843) (not b!365867) (not b!365842) (not b!365845) (not b!365858) b_and!36785 (not b!365879) (not b!365846) (not b!365868) b_and!36789 (not b!365855) (not b!365871) (not b_next!11457) b_and!36783 (not b!365852) (not b!365862) (not start!36274) (not b!365877) (not b!365876) b_and!36787 (not b!365857) (not b!365859) (not b!365853) (not b!365870) (not b_next!11453) (not b!365864) b_and!36791 (not b!365847) (not b!365888) (not b!365844) (not b!365863) (not b_next!11459) (not b!365869) (not b!365873) (not b!365841) (not b!365851) (not b!365839) (not b_next!11451) (not b!365861))
(check-sat (not b_next!11455) b_and!36785 b_and!36789 b_and!36787 (not b_next!11453) b_and!36791 (not b_next!11459) (not b_next!11451) (not b_next!11449) b_and!36781 (not b_next!11457) b_and!36783)
(get-model)

(declare-fun d!128294 () Bool)

(declare-fun res!163568 () Bool)

(declare-fun e!224800 () Bool)

(assert (=> d!128294 (=> res!163568 e!224800)))

(assert (=> d!128294 (= res!163568 (not ((_ is Cons!4138) rules!1920)))))

(assert (=> d!128294 (= (sepAndNonSepRulesDisjointChars!386 rules!1920 rules!1920) e!224800)))

(declare-fun b!365918 () Bool)

(declare-fun e!224801 () Bool)

(assert (=> b!365918 (= e!224800 e!224801)))

(declare-fun res!163569 () Bool)

(assert (=> b!365918 (=> (not res!163569) (not e!224801))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!162 (Rule!1394 List!4148) Bool)

(assert (=> b!365918 (= res!163569 (ruleDisjointCharsFromAllFromOtherType!162 (h!9535 rules!1920) rules!1920))))

(declare-fun b!365919 () Bool)

(assert (=> b!365919 (= e!224801 (sepAndNonSepRulesDisjointChars!386 rules!1920 (t!56488 rules!1920)))))

(assert (= (and d!128294 (not res!163568)) b!365918))

(assert (= (and b!365918 res!163569) b!365919))

(declare-fun m!539823 () Bool)

(assert (=> b!365918 m!539823))

(declare-fun m!539825 () Bool)

(assert (=> b!365919 m!539825))

(assert (=> b!365877 d!128294))

(declare-fun bs!44324 () Bool)

(declare-fun d!128296 () Bool)

(assert (= bs!44324 (and d!128296 b!365872)))

(declare-fun lambda!11389 () Int)

(assert (=> bs!44324 (not (= lambda!11389 lambda!11383))))

(declare-fun bs!44325 () Bool)

(assert (= bs!44325 (and d!128296 b!365871)))

(assert (=> bs!44325 (= lambda!11389 lambda!11384)))

(declare-fun b!366015 () Bool)

(declare-fun e!224853 () Bool)

(assert (=> b!366015 (= e!224853 true)))

(declare-fun b!366014 () Bool)

(declare-fun e!224852 () Bool)

(assert (=> b!366014 (= e!224852 e!224853)))

(declare-fun b!366013 () Bool)

(declare-fun e!224851 () Bool)

(assert (=> b!366013 (= e!224851 e!224852)))

(assert (=> d!128296 e!224851))

(assert (= b!366014 b!366015))

(assert (= b!366013 b!366014))

(assert (= (and d!128296 ((_ is Cons!4138) rules!1920)) b!366013))

(assert (=> b!366015 (< (dynLambda!2345 order!3449 (toValue!1576 (transformation!797 (h!9535 rules!1920)))) (dynLambda!2346 order!3451 lambda!11389))))

(assert (=> b!366015 (< (dynLambda!2347 order!3453 (toChars!1435 (transformation!797 (h!9535 rules!1920)))) (dynLambda!2346 order!3451 lambda!11389))))

(assert (=> d!128296 true))

(declare-fun e!224850 () Bool)

(assert (=> d!128296 e!224850))

(declare-fun res!163625 () Bool)

(assert (=> d!128296 (=> (not res!163625) (not e!224850))))

(declare-fun lt!158015 () Bool)

(declare-fun list!1784 (BalanceConc!2842) List!4149)

(assert (=> d!128296 (= res!163625 (= lt!158015 (forall!1136 (list!1784 lt!157928) lambda!11389)))))

(declare-fun forall!1137 (BalanceConc!2842 Int) Bool)

(assert (=> d!128296 (= lt!158015 (forall!1137 lt!157928 lambda!11389))))

(assert (=> d!128296 (not (isEmpty!2914 rules!1920))))

(assert (=> d!128296 (= (rulesProduceEachTokenIndividually!475 thiss!17480 rules!1920 lt!157928) lt!158015)))

(declare-fun b!366012 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!278 (LexerInterface!683 List!4148 List!4149) Bool)

(assert (=> b!366012 (= e!224850 (= lt!158015 (rulesProduceEachTokenIndividuallyList!278 thiss!17480 rules!1920 (list!1784 lt!157928))))))

(assert (= (and d!128296 res!163625) b!366012))

(declare-fun m!540005 () Bool)

(assert (=> d!128296 m!540005))

(assert (=> d!128296 m!540005))

(declare-fun m!540007 () Bool)

(assert (=> d!128296 m!540007))

(declare-fun m!540009 () Bool)

(assert (=> d!128296 m!540009))

(assert (=> d!128296 m!539785))

(assert (=> b!366012 m!540005))

(assert (=> b!366012 m!540005))

(declare-fun m!540011 () Bool)

(assert (=> b!366012 m!540011))

(assert (=> b!365876 d!128296))

(declare-fun d!128336 () Bool)

(declare-fun fromListB!408 (List!4149) BalanceConc!2842)

(assert (=> d!128336 (= (seqFromList!960 tokens!465) (fromListB!408 tokens!465))))

(declare-fun bs!44326 () Bool)

(assert (= bs!44326 d!128336))

(declare-fun m!540013 () Bool)

(assert (=> bs!44326 m!540013))

(assert (=> b!365876 d!128336))

(declare-fun d!128338 () Bool)

(assert (=> d!128338 (= (isEmpty!2912 (_2!2642 lt!157926)) ((_ is Nil!4137) (_2!2642 lt!157926)))))

(assert (=> b!365855 d!128338))

(declare-fun d!128340 () Bool)

(declare-fun lt!158018 () Bool)

(assert (=> d!128340 (= lt!158018 (isEmpty!2912 (list!1781 (_2!2641 lt!157912))))))

(declare-fun isEmpty!2917 (Conc!1416) Bool)

(assert (=> d!128340 (= lt!158018 (isEmpty!2917 (c!72028 (_2!2641 lt!157912))))))

(assert (=> d!128340 (= (isEmpty!2911 (_2!2641 lt!157912)) lt!158018)))

(declare-fun bs!44327 () Bool)

(assert (= bs!44327 d!128340))

(declare-fun m!540015 () Bool)

(assert (=> bs!44327 m!540015))

(assert (=> bs!44327 m!540015))

(declare-fun m!540017 () Bool)

(assert (=> bs!44327 m!540017))

(declare-fun m!540019 () Bool)

(assert (=> bs!44327 m!540019))

(assert (=> b!365854 d!128340))

(declare-fun d!128342 () Bool)

(declare-fun list!1785 (Conc!1416) List!4147)

(assert (=> d!128342 (= (list!1781 (printWithSeparatorTokenWhenNeededRec!356 thiss!17480 rules!1920 lt!157928 separatorToken!170 0)) (list!1785 (c!72028 (printWithSeparatorTokenWhenNeededRec!356 thiss!17480 rules!1920 lt!157928 separatorToken!170 0))))))

(declare-fun bs!44328 () Bool)

(assert (= bs!44328 d!128342))

(declare-fun m!540021 () Bool)

(assert (=> bs!44328 m!540021))

(assert (=> b!365874 d!128342))

(declare-fun bs!44329 () Bool)

(declare-fun d!128344 () Bool)

(assert (= bs!44329 (and d!128344 b!365872)))

(declare-fun lambda!11394 () Int)

(assert (=> bs!44329 (= lambda!11394 lambda!11383)))

(declare-fun bs!44330 () Bool)

(assert (= bs!44330 (and d!128344 b!365871)))

(assert (=> bs!44330 (not (= lambda!11394 lambda!11384))))

(declare-fun bs!44331 () Bool)

(assert (= bs!44331 (and d!128344 d!128296)))

(assert (=> bs!44331 (not (= lambda!11394 lambda!11389))))

(declare-fun bs!44332 () Bool)

(declare-fun b!366076 () Bool)

(assert (= bs!44332 (and b!366076 b!365872)))

(declare-fun lambda!11395 () Int)

(assert (=> bs!44332 (not (= lambda!11395 lambda!11383))))

(declare-fun bs!44333 () Bool)

(assert (= bs!44333 (and b!366076 b!365871)))

(assert (=> bs!44333 (= lambda!11395 lambda!11384)))

(declare-fun bs!44334 () Bool)

(assert (= bs!44334 (and b!366076 d!128296)))

(assert (=> bs!44334 (= lambda!11395 lambda!11389)))

(declare-fun bs!44335 () Bool)

(assert (= bs!44335 (and b!366076 d!128344)))

(assert (=> bs!44335 (not (= lambda!11395 lambda!11394))))

(declare-fun b!366083 () Bool)

(declare-fun e!224902 () Bool)

(assert (=> b!366083 (= e!224902 true)))

(declare-fun b!366082 () Bool)

(declare-fun e!224901 () Bool)

(assert (=> b!366082 (= e!224901 e!224902)))

(declare-fun b!366081 () Bool)

(declare-fun e!224900 () Bool)

(assert (=> b!366081 (= e!224900 e!224901)))

(assert (=> b!366076 e!224900))

(assert (= b!366082 b!366083))

(assert (= b!366081 b!366082))

(assert (= (and b!366076 ((_ is Cons!4138) rules!1920)) b!366081))

(assert (=> b!366083 (< (dynLambda!2345 order!3449 (toValue!1576 (transformation!797 (h!9535 rules!1920)))) (dynLambda!2346 order!3451 lambda!11395))))

(assert (=> b!366083 (< (dynLambda!2347 order!3453 (toChars!1435 (transformation!797 (h!9535 rules!1920)))) (dynLambda!2346 order!3451 lambda!11395))))

(assert (=> b!366076 true))

(declare-fun bm!23056 () Bool)

(declare-fun call!23065 () Token!1338)

(assert (=> bm!23056 (= call!23065 (apply!948 lt!157928 0))))

(declare-fun b!366072 () Bool)

(declare-fun e!224898 () BalanceConc!2840)

(assert (=> b!366072 (= e!224898 (BalanceConc!2841 Empty!1416))))

(declare-fun call!23062 () Token!1338)

(assert (=> b!366072 (= (print!408 thiss!17480 (singletonSeq!343 call!23062)) (printTailRec!369 thiss!17480 (singletonSeq!343 call!23062) 0 (BalanceConc!2841 Empty!1416)))))

(declare-fun lt!158082 () Unit!6490)

(declare-fun Unit!6494 () Unit!6490)

(assert (=> b!366072 (= lt!158082 Unit!6494)))

(declare-fun lt!158071 () Unit!6490)

(declare-fun call!23063 () BalanceConc!2840)

(declare-fun lt!158070 () BalanceConc!2840)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!155 (LexerInterface!683 List!4148 List!4147 List!4147) Unit!6490)

(assert (=> b!366072 (= lt!158071 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!155 thiss!17480 rules!1920 (list!1781 call!23063) (list!1781 lt!158070)))))

(assert (=> b!366072 false))

(declare-fun lt!158072 () Unit!6490)

(declare-fun Unit!6495 () Unit!6490)

(assert (=> b!366072 (= lt!158072 Unit!6495)))

(declare-fun b!366073 () Bool)

(declare-fun e!224894 () BalanceConc!2840)

(assert (=> b!366073 (= e!224894 (BalanceConc!2841 Empty!1416))))

(declare-fun b!366074 () Bool)

(declare-fun e!224896 () Bool)

(declare-fun lt!158077 () Option!975)

(assert (=> b!366074 (= e!224896 (= (_1!2643 (v!15077 lt!158077)) (apply!948 lt!157928 0)))))

(declare-fun call!23061 () BalanceConc!2840)

(declare-fun c!72064 () Bool)

(declare-fun bm!23057 () Bool)

(assert (=> bm!23057 (= call!23061 (charsOf!440 (ite c!72064 call!23065 call!23062)))))

(declare-fun e!224897 () BalanceConc!2840)

(assert (=> b!366076 (= e!224894 e!224897)))

(declare-fun lt!158080 () List!4149)

(assert (=> b!366076 (= lt!158080 (list!1784 lt!157928))))

(declare-fun lt!158081 () Unit!6490)

(declare-fun lemmaDropApply!248 (List!4149 Int) Unit!6490)

(assert (=> b!366076 (= lt!158081 (lemmaDropApply!248 lt!158080 0))))

(declare-fun drop!271 (List!4149 Int) List!4149)

(declare-fun apply!952 (List!4149 Int) Token!1338)

(assert (=> b!366076 (= (head!995 (drop!271 lt!158080 0)) (apply!952 lt!158080 0))))

(declare-fun lt!158074 () Unit!6490)

(assert (=> b!366076 (= lt!158074 lt!158081)))

(declare-fun lt!158076 () List!4149)

(assert (=> b!366076 (= lt!158076 (list!1784 lt!157928))))

(declare-fun lt!158083 () Unit!6490)

(declare-fun lemmaDropTail!240 (List!4149 Int) Unit!6490)

(assert (=> b!366076 (= lt!158083 (lemmaDropTail!240 lt!158076 0))))

(declare-fun tail!564 (List!4149) List!4149)

(assert (=> b!366076 (= (tail!564 (drop!271 lt!158076 0)) (drop!271 lt!158076 (+ 0 1)))))

(declare-fun lt!158075 () Unit!6490)

(assert (=> b!366076 (= lt!158075 lt!158083)))

(declare-fun lt!158078 () Unit!6490)

(assert (=> b!366076 (= lt!158078 (forallContained!350 (list!1784 lt!157928) lambda!11395 (apply!948 lt!157928 0)))))

(assert (=> b!366076 (= lt!158070 (printWithSeparatorTokenWhenNeededRec!356 thiss!17480 rules!1920 lt!157928 separatorToken!170 (+ 0 1)))))

(declare-fun ++!1152 (BalanceConc!2840 BalanceConc!2840) BalanceConc!2840)

(assert (=> b!366076 (= lt!158077 (maxPrefixZipperSequence!362 thiss!17480 rules!1920 (++!1152 (charsOf!440 (apply!948 lt!157928 0)) lt!158070)))))

(declare-fun res!163666 () Bool)

(assert (=> b!366076 (= res!163666 ((_ is Some!974) lt!158077))))

(assert (=> b!366076 (=> (not res!163666) (not e!224896))))

(assert (=> b!366076 (= c!72064 e!224896)))

(declare-fun bm!23058 () Bool)

(declare-fun call!23064 () BalanceConc!2840)

(assert (=> bm!23058 (= call!23064 (++!1152 call!23061 (ite c!72064 lt!158070 call!23063)))))

(declare-fun b!366077 () Bool)

(assert (=> b!366077 (= e!224898 (++!1152 call!23064 lt!158070))))

(declare-fun b!366078 () Bool)

(assert (=> b!366078 (= e!224897 call!23064)))

(declare-fun b!366075 () Bool)

(declare-fun e!224895 () Bool)

(assert (=> b!366075 (= e!224895 (<= 0 (size!3339 lt!157928)))))

(declare-fun lt!158073 () BalanceConc!2840)

(declare-fun dropList!208 (BalanceConc!2842 Int) List!4149)

(assert (=> d!128344 (= (list!1781 lt!158073) (printWithSeparatorTokenWhenNeededList!364 thiss!17480 rules!1920 (dropList!208 lt!157928 0) separatorToken!170))))

(assert (=> d!128344 (= lt!158073 e!224894)))

(declare-fun c!72063 () Bool)

(assert (=> d!128344 (= c!72063 (>= 0 (size!3339 lt!157928)))))

(declare-fun lt!158079 () Unit!6490)

(declare-fun lemmaContentSubsetPreservesForall!151 (List!4149 List!4149 Int) Unit!6490)

(assert (=> d!128344 (= lt!158079 (lemmaContentSubsetPreservesForall!151 (list!1784 lt!157928) (dropList!208 lt!157928 0) lambda!11394))))

(assert (=> d!128344 e!224895))

(declare-fun res!163664 () Bool)

(assert (=> d!128344 (=> (not res!163664) (not e!224895))))

(assert (=> d!128344 (= res!163664 (>= 0 0))))

(assert (=> d!128344 (= (printWithSeparatorTokenWhenNeededRec!356 thiss!17480 rules!1920 lt!157928 separatorToken!170 0) lt!158073)))

(declare-fun bm!23059 () Bool)

(assert (=> bm!23059 (= call!23062 call!23065)))

(declare-fun b!366079 () Bool)

(declare-fun e!224899 () Bool)

(assert (=> b!366079 (= e!224899 (not (= (_1!2643 (v!15077 lt!158077)) call!23065)))))

(declare-fun b!366080 () Bool)

(declare-fun c!72062 () Bool)

(assert (=> b!366080 (= c!72062 e!224899)))

(declare-fun res!163665 () Bool)

(assert (=> b!366080 (=> (not res!163665) (not e!224899))))

(assert (=> b!366080 (= res!163665 ((_ is Some!974) lt!158077))))

(assert (=> b!366080 (= e!224897 e!224898)))

(declare-fun bm!23060 () Bool)

(assert (=> bm!23060 (= call!23063 (charsOf!440 (ite c!72062 separatorToken!170 call!23062)))))

(assert (= (and d!128344 res!163664) b!366075))

(assert (= (and d!128344 c!72063) b!366073))

(assert (= (and d!128344 (not c!72063)) b!366076))

(assert (= (and b!366076 res!163666) b!366074))

(assert (= (and b!366076 c!72064) b!366078))

(assert (= (and b!366076 (not c!72064)) b!366080))

(assert (= (and b!366080 res!163665) b!366079))

(assert (= (and b!366080 c!72062) b!366077))

(assert (= (and b!366080 (not c!72062)) b!366072))

(assert (= (or b!366077 b!366072) bm!23059))

(assert (= (or b!366077 b!366072) bm!23060))

(assert (= (or b!366078 bm!23059 b!366079) bm!23056))

(assert (= (or b!366078 b!366077) bm!23057))

(assert (= (or b!366078 b!366077) bm!23058))

(declare-fun m!540107 () Bool)

(assert (=> d!128344 m!540107))

(assert (=> d!128344 m!540005))

(declare-fun m!540109 () Bool)

(assert (=> d!128344 m!540109))

(declare-fun m!540111 () Bool)

(assert (=> d!128344 m!540111))

(assert (=> d!128344 m!540109))

(declare-fun m!540113 () Bool)

(assert (=> d!128344 m!540113))

(assert (=> d!128344 m!540109))

(declare-fun m!540115 () Bool)

(assert (=> d!128344 m!540115))

(assert (=> d!128344 m!540005))

(assert (=> b!366075 m!540107))

(declare-fun m!540117 () Bool)

(assert (=> bm!23058 m!540117))

(declare-fun m!540119 () Bool)

(assert (=> b!366074 m!540119))

(declare-fun m!540121 () Bool)

(assert (=> b!366072 m!540121))

(assert (=> b!366072 m!540121))

(declare-fun m!540123 () Bool)

(assert (=> b!366072 m!540123))

(declare-fun m!540125 () Bool)

(assert (=> b!366072 m!540125))

(declare-fun m!540127 () Bool)

(assert (=> b!366072 m!540127))

(assert (=> b!366072 m!540121))

(declare-fun m!540129 () Bool)

(assert (=> b!366072 m!540129))

(assert (=> b!366072 m!540127))

(assert (=> b!366072 m!540125))

(declare-fun m!540131 () Bool)

(assert (=> b!366072 m!540131))

(assert (=> b!366076 m!540119))

(declare-fun m!540133 () Bool)

(assert (=> b!366076 m!540133))

(declare-fun m!540135 () Bool)

(assert (=> b!366076 m!540135))

(assert (=> b!366076 m!540005))

(assert (=> b!366076 m!540119))

(declare-fun m!540137 () Bool)

(assert (=> b!366076 m!540137))

(declare-fun m!540139 () Bool)

(assert (=> b!366076 m!540139))

(declare-fun m!540141 () Bool)

(assert (=> b!366076 m!540141))

(declare-fun m!540143 () Bool)

(assert (=> b!366076 m!540143))

(declare-fun m!540145 () Bool)

(assert (=> b!366076 m!540145))

(declare-fun m!540147 () Bool)

(assert (=> b!366076 m!540147))

(declare-fun m!540149 () Bool)

(assert (=> b!366076 m!540149))

(assert (=> b!366076 m!540147))

(declare-fun m!540151 () Bool)

(assert (=> b!366076 m!540151))

(assert (=> b!366076 m!540149))

(declare-fun m!540153 () Bool)

(assert (=> b!366076 m!540153))

(declare-fun m!540155 () Bool)

(assert (=> b!366076 m!540155))

(assert (=> b!366076 m!540141))

(declare-fun m!540157 () Bool)

(assert (=> b!366076 m!540157))

(assert (=> b!366076 m!540005))

(assert (=> b!366076 m!540119))

(assert (=> b!366076 m!540139))

(declare-fun m!540159 () Bool)

(assert (=> bm!23060 m!540159))

(declare-fun m!540161 () Bool)

(assert (=> bm!23057 m!540161))

(declare-fun m!540163 () Bool)

(assert (=> b!366077 m!540163))

(assert (=> bm!23056 m!540119))

(assert (=> b!365874 d!128344))

(declare-fun bs!44336 () Bool)

(declare-fun b!366149 () Bool)

(assert (= bs!44336 (and b!366149 b!365872)))

(declare-fun lambda!11398 () Int)

(assert (=> bs!44336 (not (= lambda!11398 lambda!11383))))

(declare-fun bs!44337 () Bool)

(assert (= bs!44337 (and b!366149 b!365871)))

(assert (=> bs!44337 (= lambda!11398 lambda!11384)))

(declare-fun bs!44338 () Bool)

(assert (= bs!44338 (and b!366149 d!128344)))

(assert (=> bs!44338 (not (= lambda!11398 lambda!11394))))

(declare-fun bs!44339 () Bool)

(assert (= bs!44339 (and b!366149 b!366076)))

(assert (=> bs!44339 (= lambda!11398 lambda!11395)))

(declare-fun bs!44340 () Bool)

(assert (= bs!44340 (and b!366149 d!128296)))

(assert (=> bs!44340 (= lambda!11398 lambda!11389)))

(declare-fun b!366154 () Bool)

(declare-fun e!224944 () Bool)

(assert (=> b!366154 (= e!224944 true)))

(declare-fun b!366153 () Bool)

(declare-fun e!224943 () Bool)

(assert (=> b!366153 (= e!224943 e!224944)))

(declare-fun b!366152 () Bool)

(declare-fun e!224942 () Bool)

(assert (=> b!366152 (= e!224942 e!224943)))

(assert (=> b!366149 e!224942))

(assert (= b!366153 b!366154))

(assert (= b!366152 b!366153))

(assert (= (and b!366149 ((_ is Cons!4138) rules!1920)) b!366152))

(assert (=> b!366154 (< (dynLambda!2345 order!3449 (toValue!1576 (transformation!797 (h!9535 rules!1920)))) (dynLambda!2346 order!3451 lambda!11398))))

(assert (=> b!366154 (< (dynLambda!2347 order!3453 (toChars!1435 (transformation!797 (h!9535 rules!1920)))) (dynLambda!2346 order!3451 lambda!11398))))

(assert (=> b!366149 true))

(declare-fun b!366142 () Bool)

(declare-fun e!224940 () List!4147)

(declare-fun call!23091 () List!4147)

(assert (=> b!366142 (= e!224940 call!23091)))

(declare-fun b!366143 () Bool)

(declare-fun c!72090 () Bool)

(declare-fun lt!158106 () Option!973)

(assert (=> b!366143 (= c!72090 (and ((_ is Some!972) lt!158106) (not (= (_1!2642 (v!15075 lt!158106)) (h!9536 tokens!465)))))))

(declare-fun e!224939 () List!4147)

(declare-fun e!224937 () List!4147)

(assert (=> b!366143 (= e!224939 e!224937)))

(declare-fun bm!23083 () Bool)

(declare-fun call!23089 () List!4147)

(assert (=> bm!23083 (= call!23089 call!23091)))

(declare-fun c!72092 () Bool)

(assert (=> bm!23083 (= c!72092 c!72090)))

(declare-fun b!366144 () Bool)

(declare-fun e!224941 () List!4147)

(assert (=> b!366144 (= e!224941 Nil!4137)))

(declare-fun b!366145 () Bool)

(declare-fun call!23090 () List!4147)

(assert (=> b!366145 (= e!224939 call!23090)))

(declare-fun bm!23084 () Bool)

(declare-fun c!72089 () Bool)

(declare-fun c!72091 () Bool)

(assert (=> bm!23084 (= c!72089 c!72091)))

(declare-fun lt!158103 () List!4147)

(assert (=> bm!23084 (= call!23090 (++!1150 e!224940 (ite c!72091 lt!158103 call!23089)))))

(declare-fun b!366146 () Bool)

(assert (=> b!366146 (= e!224937 Nil!4137)))

(assert (=> b!366146 (= (print!408 thiss!17480 (singletonSeq!343 (h!9536 tokens!465))) (printTailRec!369 thiss!17480 (singletonSeq!343 (h!9536 tokens!465)) 0 (BalanceConc!2841 Empty!1416)))))

(declare-fun lt!158107 () Unit!6490)

(declare-fun Unit!6496 () Unit!6490)

(assert (=> b!366146 (= lt!158107 Unit!6496)))

(declare-fun lt!158105 () Unit!6490)

(assert (=> b!366146 (= lt!158105 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!155 thiss!17480 rules!1920 call!23089 lt!158103))))

(assert (=> b!366146 false))

(declare-fun lt!158104 () Unit!6490)

(declare-fun Unit!6497 () Unit!6490)

(assert (=> b!366146 (= lt!158104 Unit!6497)))

(declare-fun b!366147 () Bool)

(declare-fun call!23092 () BalanceConc!2840)

(assert (=> b!366147 (= e!224940 (list!1781 call!23092))))

(declare-fun b!366148 () Bool)

(assert (=> b!366148 (= e!224937 (++!1150 call!23090 lt!158103))))

(declare-fun e!224938 () BalanceConc!2840)

(declare-fun bm!23085 () Bool)

(declare-fun call!23088 () BalanceConc!2840)

(assert (=> bm!23085 (= call!23091 (list!1781 (ite c!72091 call!23088 e!224938)))))

(assert (=> b!366149 (= e!224941 e!224939)))

(declare-fun lt!158108 () Unit!6490)

(assert (=> b!366149 (= lt!158108 (forallContained!350 tokens!465 lambda!11398 (h!9536 tokens!465)))))

(assert (=> b!366149 (= lt!158103 (printWithSeparatorTokenWhenNeededList!364 thiss!17480 rules!1920 (t!56489 tokens!465) separatorToken!170))))

(assert (=> b!366149 (= lt!158106 (maxPrefix!399 thiss!17480 rules!1920 (++!1150 (list!1781 (charsOf!440 (h!9536 tokens!465))) lt!158103)))))

(assert (=> b!366149 (= c!72091 (and ((_ is Some!972) lt!158106) (= (_1!2642 (v!15075 lt!158106)) (h!9536 tokens!465))))))

(declare-fun bm!23086 () Bool)

(assert (=> bm!23086 (= call!23088 (charsOf!440 (h!9536 tokens!465)))))

(declare-fun d!128360 () Bool)

(declare-fun c!72088 () Bool)

(assert (=> d!128360 (= c!72088 ((_ is Cons!4139) tokens!465))))

(assert (=> d!128360 (= (printWithSeparatorTokenWhenNeededList!364 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!224941)))

(declare-fun b!366150 () Bool)

(assert (=> b!366150 (= e!224938 (charsOf!440 separatorToken!170))))

(declare-fun b!366151 () Bool)

(assert (=> b!366151 (= e!224938 call!23092)))

(declare-fun bm!23087 () Bool)

(assert (=> bm!23087 (= call!23092 call!23088)))

(assert (= (and d!128360 c!72088) b!366149))

(assert (= (and d!128360 (not c!72088)) b!366144))

(assert (= (and b!366149 c!72091) b!366145))

(assert (= (and b!366149 (not c!72091)) b!366143))

(assert (= (and b!366143 c!72090) b!366148))

(assert (= (and b!366143 (not c!72090)) b!366146))

(assert (= (or b!366148 b!366146) bm!23087))

(assert (= (or b!366148 b!366146) bm!23083))

(assert (= (and bm!23083 c!72092) b!366150))

(assert (= (and bm!23083 (not c!72092)) b!366151))

(assert (= (or b!366145 bm!23087) bm!23086))

(assert (= (or b!366145 bm!23083) bm!23085))

(assert (= (or b!366145 b!366148) bm!23084))

(assert (= (and bm!23084 c!72089) b!366142))

(assert (= (and bm!23084 (not c!72089)) b!366147))

(assert (=> b!366150 m!539719))

(assert (=> b!366146 m!539767))

(assert (=> b!366146 m!539767))

(declare-fun m!540205 () Bool)

(assert (=> b!366146 m!540205))

(assert (=> b!366146 m!539767))

(declare-fun m!540207 () Bool)

(assert (=> b!366146 m!540207))

(declare-fun m!540209 () Bool)

(assert (=> b!366146 m!540209))

(declare-fun m!540211 () Bool)

(assert (=> bm!23084 m!540211))

(declare-fun m!540213 () Bool)

(assert (=> b!366147 m!540213))

(declare-fun m!540215 () Bool)

(assert (=> b!366148 m!540215))

(declare-fun m!540217 () Bool)

(assert (=> b!366149 m!540217))

(declare-fun m!540219 () Bool)

(assert (=> b!366149 m!540219))

(declare-fun m!540221 () Bool)

(assert (=> b!366149 m!540221))

(assert (=> b!366149 m!539717))

(assert (=> b!366149 m!539729))

(assert (=> b!366149 m!539729))

(assert (=> b!366149 m!539737))

(assert (=> b!366149 m!539737))

(assert (=> b!366149 m!540219))

(assert (=> bm!23086 m!539729))

(declare-fun m!540223 () Bool)

(assert (=> bm!23085 m!540223))

(assert (=> b!365874 d!128360))

(declare-fun d!128370 () Bool)

(assert (=> d!128370 (= (seqFromList!960 (t!56489 tokens!465)) (fromListB!408 (t!56489 tokens!465)))))

(declare-fun bs!44341 () Bool)

(assert (= bs!44341 d!128370))

(declare-fun m!540225 () Bool)

(assert (=> bs!44341 m!540225))

(assert (=> b!365853 d!128370))

(declare-fun d!128372 () Bool)

(assert (=> d!128372 (= (list!1781 (charsOf!440 separatorToken!170)) (list!1785 (c!72028 (charsOf!440 separatorToken!170))))))

(declare-fun bs!44342 () Bool)

(assert (= bs!44342 d!128372))

(declare-fun m!540227 () Bool)

(assert (=> bs!44342 m!540227))

(assert (=> b!365853 d!128372))

(declare-fun d!128374 () Bool)

(assert (=> d!128374 (= (list!1781 (printWithSeparatorTokenWhenNeededRec!356 thiss!17480 rules!1920 (seqFromList!960 (t!56489 tokens!465)) separatorToken!170 0)) (list!1785 (c!72028 (printWithSeparatorTokenWhenNeededRec!356 thiss!17480 rules!1920 (seqFromList!960 (t!56489 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!44343 () Bool)

(assert (= bs!44343 d!128374))

(declare-fun m!540229 () Bool)

(assert (=> bs!44343 m!540229))

(assert (=> b!365853 d!128374))

(declare-fun lt!158111 () List!4147)

(declare-fun e!224949 () Bool)

(declare-fun b!366166 () Bool)

(assert (=> b!366166 (= e!224949 (or (not (= lt!157903 Nil!4137)) (= lt!158111 lt!157931)))))

(declare-fun b!366165 () Bool)

(declare-fun res!163684 () Bool)

(assert (=> b!366165 (=> (not res!163684) (not e!224949))))

(declare-fun size!3344 (List!4147) Int)

(assert (=> b!366165 (= res!163684 (= (size!3344 lt!158111) (+ (size!3344 lt!157931) (size!3344 lt!157903))))))

(declare-fun b!366163 () Bool)

(declare-fun e!224950 () List!4147)

(assert (=> b!366163 (= e!224950 lt!157903)))

(declare-fun d!128376 () Bool)

(assert (=> d!128376 e!224949))

(declare-fun res!163683 () Bool)

(assert (=> d!128376 (=> (not res!163683) (not e!224949))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!649 (List!4147) (InoxSet C!2964))

(assert (=> d!128376 (= res!163683 (= (content!649 lt!158111) ((_ map or) (content!649 lt!157931) (content!649 lt!157903))))))

(assert (=> d!128376 (= lt!158111 e!224950)))

(declare-fun c!72095 () Bool)

(assert (=> d!128376 (= c!72095 ((_ is Nil!4137) lt!157931))))

(assert (=> d!128376 (= (++!1150 lt!157931 lt!157903) lt!158111)))

(declare-fun b!366164 () Bool)

(assert (=> b!366164 (= e!224950 (Cons!4137 (h!9534 lt!157931) (++!1150 (t!56487 lt!157931) lt!157903)))))

(assert (= (and d!128376 c!72095) b!366163))

(assert (= (and d!128376 (not c!72095)) b!366164))

(assert (= (and d!128376 res!163683) b!366165))

(assert (= (and b!366165 res!163684) b!366166))

(declare-fun m!540231 () Bool)

(assert (=> b!366165 m!540231))

(declare-fun m!540233 () Bool)

(assert (=> b!366165 m!540233))

(declare-fun m!540235 () Bool)

(assert (=> b!366165 m!540235))

(declare-fun m!540237 () Bool)

(assert (=> d!128376 m!540237))

(declare-fun m!540239 () Bool)

(assert (=> d!128376 m!540239))

(declare-fun m!540241 () Bool)

(assert (=> d!128376 m!540241))

(declare-fun m!540243 () Bool)

(assert (=> b!366164 m!540243))

(assert (=> b!365853 d!128376))

(declare-fun bs!44344 () Bool)

(declare-fun b!366174 () Bool)

(assert (= bs!44344 (and b!366174 b!365872)))

(declare-fun lambda!11399 () Int)

(assert (=> bs!44344 (not (= lambda!11399 lambda!11383))))

(declare-fun bs!44345 () Bool)

(assert (= bs!44345 (and b!366174 b!365871)))

(assert (=> bs!44345 (= lambda!11399 lambda!11384)))

(declare-fun bs!44346 () Bool)

(assert (= bs!44346 (and b!366174 b!366149)))

(assert (=> bs!44346 (= lambda!11399 lambda!11398)))

(declare-fun bs!44347 () Bool)

(assert (= bs!44347 (and b!366174 d!128344)))

(assert (=> bs!44347 (not (= lambda!11399 lambda!11394))))

(declare-fun bs!44348 () Bool)

(assert (= bs!44348 (and b!366174 b!366076)))

(assert (=> bs!44348 (= lambda!11399 lambda!11395)))

(declare-fun bs!44349 () Bool)

(assert (= bs!44349 (and b!366174 d!128296)))

(assert (=> bs!44349 (= lambda!11399 lambda!11389)))

(declare-fun b!366179 () Bool)

(declare-fun e!224958 () Bool)

(assert (=> b!366179 (= e!224958 true)))

(declare-fun b!366178 () Bool)

(declare-fun e!224957 () Bool)

(assert (=> b!366178 (= e!224957 e!224958)))

(declare-fun b!366177 () Bool)

(declare-fun e!224956 () Bool)

(assert (=> b!366177 (= e!224956 e!224957)))

(assert (=> b!366174 e!224956))

(assert (= b!366178 b!366179))

(assert (= b!366177 b!366178))

(assert (= (and b!366174 ((_ is Cons!4138) rules!1920)) b!366177))

(assert (=> b!366179 (< (dynLambda!2345 order!3449 (toValue!1576 (transformation!797 (h!9535 rules!1920)))) (dynLambda!2346 order!3451 lambda!11399))))

(assert (=> b!366179 (< (dynLambda!2347 order!3453 (toChars!1435 (transformation!797 (h!9535 rules!1920)))) (dynLambda!2346 order!3451 lambda!11399))))

(assert (=> b!366174 true))

(declare-fun b!366167 () Bool)

(declare-fun e!224954 () List!4147)

(declare-fun call!23096 () List!4147)

(assert (=> b!366167 (= e!224954 call!23096)))

(declare-fun b!366168 () Bool)

(declare-fun c!72098 () Bool)

(declare-fun lt!158115 () Option!973)

(assert (=> b!366168 (= c!72098 (and ((_ is Some!972) lt!158115) (not (= (_1!2642 (v!15075 lt!158115)) (h!9536 (t!56489 tokens!465))))))))

(declare-fun e!224953 () List!4147)

(declare-fun e!224951 () List!4147)

(assert (=> b!366168 (= e!224953 e!224951)))

(declare-fun bm!23088 () Bool)

(declare-fun call!23094 () List!4147)

(assert (=> bm!23088 (= call!23094 call!23096)))

(declare-fun c!72100 () Bool)

(assert (=> bm!23088 (= c!72100 c!72098)))

(declare-fun b!366169 () Bool)

(declare-fun e!224955 () List!4147)

(assert (=> b!366169 (= e!224955 Nil!4137)))

(declare-fun b!366170 () Bool)

(declare-fun call!23095 () List!4147)

(assert (=> b!366170 (= e!224953 call!23095)))

(declare-fun bm!23089 () Bool)

(declare-fun c!72097 () Bool)

(declare-fun c!72099 () Bool)

(assert (=> bm!23089 (= c!72097 c!72099)))

(declare-fun lt!158112 () List!4147)

(assert (=> bm!23089 (= call!23095 (++!1150 e!224954 (ite c!72099 lt!158112 call!23094)))))

(declare-fun b!366171 () Bool)

(assert (=> b!366171 (= e!224951 Nil!4137)))

(assert (=> b!366171 (= (print!408 thiss!17480 (singletonSeq!343 (h!9536 (t!56489 tokens!465)))) (printTailRec!369 thiss!17480 (singletonSeq!343 (h!9536 (t!56489 tokens!465))) 0 (BalanceConc!2841 Empty!1416)))))

(declare-fun lt!158116 () Unit!6490)

(declare-fun Unit!6498 () Unit!6490)

(assert (=> b!366171 (= lt!158116 Unit!6498)))

(declare-fun lt!158114 () Unit!6490)

(assert (=> b!366171 (= lt!158114 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!155 thiss!17480 rules!1920 call!23094 lt!158112))))

(assert (=> b!366171 false))

(declare-fun lt!158113 () Unit!6490)

(declare-fun Unit!6499 () Unit!6490)

(assert (=> b!366171 (= lt!158113 Unit!6499)))

(declare-fun b!366172 () Bool)

(declare-fun call!23097 () BalanceConc!2840)

(assert (=> b!366172 (= e!224954 (list!1781 call!23097))))

(declare-fun b!366173 () Bool)

(assert (=> b!366173 (= e!224951 (++!1150 call!23095 lt!158112))))

(declare-fun bm!23090 () Bool)

(declare-fun e!224952 () BalanceConc!2840)

(declare-fun call!23093 () BalanceConc!2840)

(assert (=> bm!23090 (= call!23096 (list!1781 (ite c!72099 call!23093 e!224952)))))

(assert (=> b!366174 (= e!224955 e!224953)))

(declare-fun lt!158117 () Unit!6490)

(assert (=> b!366174 (= lt!158117 (forallContained!350 (t!56489 tokens!465) lambda!11399 (h!9536 (t!56489 tokens!465))))))

(assert (=> b!366174 (= lt!158112 (printWithSeparatorTokenWhenNeededList!364 thiss!17480 rules!1920 (t!56489 (t!56489 tokens!465)) separatorToken!170))))

(assert (=> b!366174 (= lt!158115 (maxPrefix!399 thiss!17480 rules!1920 (++!1150 (list!1781 (charsOf!440 (h!9536 (t!56489 tokens!465)))) lt!158112)))))

(assert (=> b!366174 (= c!72099 (and ((_ is Some!972) lt!158115) (= (_1!2642 (v!15075 lt!158115)) (h!9536 (t!56489 tokens!465)))))))

(declare-fun bm!23091 () Bool)

(assert (=> bm!23091 (= call!23093 (charsOf!440 (h!9536 (t!56489 tokens!465))))))

(declare-fun d!128378 () Bool)

(declare-fun c!72096 () Bool)

(assert (=> d!128378 (= c!72096 ((_ is Cons!4139) (t!56489 tokens!465)))))

(assert (=> d!128378 (= (printWithSeparatorTokenWhenNeededList!364 thiss!17480 rules!1920 (t!56489 tokens!465) separatorToken!170) e!224955)))

(declare-fun b!366175 () Bool)

(assert (=> b!366175 (= e!224952 (charsOf!440 separatorToken!170))))

(declare-fun b!366176 () Bool)

(assert (=> b!366176 (= e!224952 call!23097)))

(declare-fun bm!23092 () Bool)

(assert (=> bm!23092 (= call!23097 call!23093)))

(assert (= (and d!128378 c!72096) b!366174))

(assert (= (and d!128378 (not c!72096)) b!366169))

(assert (= (and b!366174 c!72099) b!366170))

(assert (= (and b!366174 (not c!72099)) b!366168))

(assert (= (and b!366168 c!72098) b!366173))

(assert (= (and b!366168 (not c!72098)) b!366171))

(assert (= (or b!366173 b!366171) bm!23092))

(assert (= (or b!366173 b!366171) bm!23088))

(assert (= (and bm!23088 c!72100) b!366175))

(assert (= (and bm!23088 (not c!72100)) b!366176))

(assert (= (or b!366170 bm!23092) bm!23091))

(assert (= (or b!366170 bm!23088) bm!23090))

(assert (= (or b!366170 b!366173) bm!23089))

(assert (= (and bm!23089 c!72097) b!366167))

(assert (= (and bm!23089 (not c!72097)) b!366172))

(assert (=> b!366175 m!539719))

(declare-fun m!540245 () Bool)

(assert (=> b!366171 m!540245))

(assert (=> b!366171 m!540245))

(declare-fun m!540247 () Bool)

(assert (=> b!366171 m!540247))

(assert (=> b!366171 m!540245))

(declare-fun m!540249 () Bool)

(assert (=> b!366171 m!540249))

(declare-fun m!540251 () Bool)

(assert (=> b!366171 m!540251))

(declare-fun m!540253 () Bool)

(assert (=> bm!23089 m!540253))

(declare-fun m!540255 () Bool)

(assert (=> b!366172 m!540255))

(declare-fun m!540257 () Bool)

(assert (=> b!366173 m!540257))

(declare-fun m!540259 () Bool)

(assert (=> b!366174 m!540259))

(declare-fun m!540261 () Bool)

(assert (=> b!366174 m!540261))

(declare-fun m!540263 () Bool)

(assert (=> b!366174 m!540263))

(declare-fun m!540265 () Bool)

(assert (=> b!366174 m!540265))

(declare-fun m!540267 () Bool)

(assert (=> b!366174 m!540267))

(assert (=> b!366174 m!540267))

(declare-fun m!540269 () Bool)

(assert (=> b!366174 m!540269))

(assert (=> b!366174 m!540269))

(assert (=> b!366174 m!540261))

(assert (=> bm!23091 m!540267))

(declare-fun m!540271 () Bool)

(assert (=> bm!23090 m!540271))

(assert (=> b!365853 d!128378))

(declare-fun d!128380 () Bool)

(assert (=> d!128380 (= (++!1150 (++!1150 lt!157931 lt!157904) lt!157910) (++!1150 lt!157931 (++!1150 lt!157904 lt!157910)))))

(declare-fun lt!158123 () Unit!6490)

(declare-fun choose!2938 (List!4147 List!4147 List!4147) Unit!6490)

(assert (=> d!128380 (= lt!158123 (choose!2938 lt!157931 lt!157904 lt!157910))))

(assert (=> d!128380 (= (lemmaConcatAssociativity!514 lt!157931 lt!157904 lt!157910) lt!158123)))

(declare-fun bs!44351 () Bool)

(assert (= bs!44351 d!128380))

(assert (=> bs!44351 m!539721))

(assert (=> bs!44351 m!539723))

(assert (=> bs!44351 m!539733))

(declare-fun m!540275 () Bool)

(assert (=> bs!44351 m!540275))

(assert (=> bs!44351 m!539733))

(declare-fun m!540277 () Bool)

(assert (=> bs!44351 m!540277))

(assert (=> bs!44351 m!539721))

(assert (=> b!365853 d!128380))

(declare-fun bs!44352 () Bool)

(declare-fun d!128384 () Bool)

(assert (= bs!44352 (and d!128384 b!365872)))

(declare-fun lambda!11400 () Int)

(assert (=> bs!44352 (= lambda!11400 lambda!11383)))

(declare-fun bs!44353 () Bool)

(assert (= bs!44353 (and d!128384 b!365871)))

(assert (=> bs!44353 (not (= lambda!11400 lambda!11384))))

(declare-fun bs!44354 () Bool)

(assert (= bs!44354 (and d!128384 b!366149)))

(assert (=> bs!44354 (not (= lambda!11400 lambda!11398))))

(declare-fun bs!44355 () Bool)

(assert (= bs!44355 (and d!128384 b!366174)))

(assert (=> bs!44355 (not (= lambda!11400 lambda!11399))))

(declare-fun bs!44356 () Bool)

(assert (= bs!44356 (and d!128384 d!128344)))

(assert (=> bs!44356 (= lambda!11400 lambda!11394)))

(declare-fun bs!44357 () Bool)

(assert (= bs!44357 (and d!128384 b!366076)))

(assert (=> bs!44357 (not (= lambda!11400 lambda!11395))))

(declare-fun bs!44358 () Bool)

(assert (= bs!44358 (and d!128384 d!128296)))

(assert (=> bs!44358 (not (= lambda!11400 lambda!11389))))

(declare-fun bs!44359 () Bool)

(declare-fun b!366184 () Bool)

(assert (= bs!44359 (and b!366184 b!365872)))

(declare-fun lambda!11401 () Int)

(assert (=> bs!44359 (not (= lambda!11401 lambda!11383))))

(declare-fun bs!44360 () Bool)

(assert (= bs!44360 (and b!366184 b!365871)))

(assert (=> bs!44360 (= lambda!11401 lambda!11384)))

(declare-fun bs!44361 () Bool)

(assert (= bs!44361 (and b!366184 b!366149)))

(assert (=> bs!44361 (= lambda!11401 lambda!11398)))

(declare-fun bs!44362 () Bool)

(assert (= bs!44362 (and b!366184 b!366174)))

(assert (=> bs!44362 (= lambda!11401 lambda!11399)))

(declare-fun bs!44363 () Bool)

(assert (= bs!44363 (and b!366184 d!128384)))

(assert (=> bs!44363 (not (= lambda!11401 lambda!11400))))

(declare-fun bs!44364 () Bool)

(assert (= bs!44364 (and b!366184 d!128344)))

(assert (=> bs!44364 (not (= lambda!11401 lambda!11394))))

(declare-fun bs!44365 () Bool)

(assert (= bs!44365 (and b!366184 b!366076)))

(assert (=> bs!44365 (= lambda!11401 lambda!11395)))

(declare-fun bs!44366 () Bool)

(assert (= bs!44366 (and b!366184 d!128296)))

(assert (=> bs!44366 (= lambda!11401 lambda!11389)))

(declare-fun b!366191 () Bool)

(declare-fun e!224967 () Bool)

(assert (=> b!366191 (= e!224967 true)))

(declare-fun b!366190 () Bool)

(declare-fun e!224966 () Bool)

(assert (=> b!366190 (= e!224966 e!224967)))

(declare-fun b!366189 () Bool)

(declare-fun e!224965 () Bool)

(assert (=> b!366189 (= e!224965 e!224966)))

(assert (=> b!366184 e!224965))

(assert (= b!366190 b!366191))

(assert (= b!366189 b!366190))

(assert (= (and b!366184 ((_ is Cons!4138) rules!1920)) b!366189))

(assert (=> b!366191 (< (dynLambda!2345 order!3449 (toValue!1576 (transformation!797 (h!9535 rules!1920)))) (dynLambda!2346 order!3451 lambda!11401))))

(assert (=> b!366191 (< (dynLambda!2347 order!3453 (toChars!1435 (transformation!797 (h!9535 rules!1920)))) (dynLambda!2346 order!3451 lambda!11401))))

(assert (=> b!366184 true))

(declare-fun bm!23093 () Bool)

(declare-fun call!23102 () Token!1338)

(assert (=> bm!23093 (= call!23102 (apply!948 (seqFromList!960 (t!56489 tokens!465)) 0))))

(declare-fun b!366180 () Bool)

(declare-fun e!224963 () BalanceConc!2840)

(assert (=> b!366180 (= e!224963 (BalanceConc!2841 Empty!1416))))

(declare-fun call!23099 () Token!1338)

(assert (=> b!366180 (= (print!408 thiss!17480 (singletonSeq!343 call!23099)) (printTailRec!369 thiss!17480 (singletonSeq!343 call!23099) 0 (BalanceConc!2841 Empty!1416)))))

(declare-fun lt!158136 () Unit!6490)

(declare-fun Unit!6500 () Unit!6490)

(assert (=> b!366180 (= lt!158136 Unit!6500)))

(declare-fun call!23100 () BalanceConc!2840)

(declare-fun lt!158125 () Unit!6490)

(declare-fun lt!158124 () BalanceConc!2840)

(assert (=> b!366180 (= lt!158125 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!155 thiss!17480 rules!1920 (list!1781 call!23100) (list!1781 lt!158124)))))

(assert (=> b!366180 false))

(declare-fun lt!158126 () Unit!6490)

(declare-fun Unit!6501 () Unit!6490)

(assert (=> b!366180 (= lt!158126 Unit!6501)))

(declare-fun b!366181 () Bool)

(declare-fun e!224959 () BalanceConc!2840)

(assert (=> b!366181 (= e!224959 (BalanceConc!2841 Empty!1416))))

(declare-fun b!366182 () Bool)

(declare-fun e!224961 () Bool)

(declare-fun lt!158131 () Option!975)

(assert (=> b!366182 (= e!224961 (= (_1!2643 (v!15077 lt!158131)) (apply!948 (seqFromList!960 (t!56489 tokens!465)) 0)))))

(declare-fun bm!23094 () Bool)

(declare-fun call!23098 () BalanceConc!2840)

(declare-fun c!72103 () Bool)

(assert (=> bm!23094 (= call!23098 (charsOf!440 (ite c!72103 call!23102 call!23099)))))

(declare-fun e!224962 () BalanceConc!2840)

(assert (=> b!366184 (= e!224959 e!224962)))

(declare-fun lt!158134 () List!4149)

(assert (=> b!366184 (= lt!158134 (list!1784 (seqFromList!960 (t!56489 tokens!465))))))

(declare-fun lt!158135 () Unit!6490)

(assert (=> b!366184 (= lt!158135 (lemmaDropApply!248 lt!158134 0))))

(assert (=> b!366184 (= (head!995 (drop!271 lt!158134 0)) (apply!952 lt!158134 0))))

(declare-fun lt!158128 () Unit!6490)

(assert (=> b!366184 (= lt!158128 lt!158135)))

(declare-fun lt!158130 () List!4149)

(assert (=> b!366184 (= lt!158130 (list!1784 (seqFromList!960 (t!56489 tokens!465))))))

(declare-fun lt!158137 () Unit!6490)

(assert (=> b!366184 (= lt!158137 (lemmaDropTail!240 lt!158130 0))))

(assert (=> b!366184 (= (tail!564 (drop!271 lt!158130 0)) (drop!271 lt!158130 (+ 0 1)))))

(declare-fun lt!158129 () Unit!6490)

(assert (=> b!366184 (= lt!158129 lt!158137)))

(declare-fun lt!158132 () Unit!6490)

(assert (=> b!366184 (= lt!158132 (forallContained!350 (list!1784 (seqFromList!960 (t!56489 tokens!465))) lambda!11401 (apply!948 (seqFromList!960 (t!56489 tokens!465)) 0)))))

(assert (=> b!366184 (= lt!158124 (printWithSeparatorTokenWhenNeededRec!356 thiss!17480 rules!1920 (seqFromList!960 (t!56489 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!366184 (= lt!158131 (maxPrefixZipperSequence!362 thiss!17480 rules!1920 (++!1152 (charsOf!440 (apply!948 (seqFromList!960 (t!56489 tokens!465)) 0)) lt!158124)))))

(declare-fun res!163687 () Bool)

(assert (=> b!366184 (= res!163687 ((_ is Some!974) lt!158131))))

(assert (=> b!366184 (=> (not res!163687) (not e!224961))))

(assert (=> b!366184 (= c!72103 e!224961)))

(declare-fun bm!23095 () Bool)

(declare-fun call!23101 () BalanceConc!2840)

(assert (=> bm!23095 (= call!23101 (++!1152 call!23098 (ite c!72103 lt!158124 call!23100)))))

(declare-fun b!366185 () Bool)

(assert (=> b!366185 (= e!224963 (++!1152 call!23101 lt!158124))))

(declare-fun b!366186 () Bool)

(assert (=> b!366186 (= e!224962 call!23101)))

(declare-fun b!366183 () Bool)

(declare-fun e!224960 () Bool)

(assert (=> b!366183 (= e!224960 (<= 0 (size!3339 (seqFromList!960 (t!56489 tokens!465)))))))

(declare-fun lt!158127 () BalanceConc!2840)

(assert (=> d!128384 (= (list!1781 lt!158127) (printWithSeparatorTokenWhenNeededList!364 thiss!17480 rules!1920 (dropList!208 (seqFromList!960 (t!56489 tokens!465)) 0) separatorToken!170))))

(assert (=> d!128384 (= lt!158127 e!224959)))

(declare-fun c!72102 () Bool)

(assert (=> d!128384 (= c!72102 (>= 0 (size!3339 (seqFromList!960 (t!56489 tokens!465)))))))

(declare-fun lt!158133 () Unit!6490)

(assert (=> d!128384 (= lt!158133 (lemmaContentSubsetPreservesForall!151 (list!1784 (seqFromList!960 (t!56489 tokens!465))) (dropList!208 (seqFromList!960 (t!56489 tokens!465)) 0) lambda!11400))))

(assert (=> d!128384 e!224960))

(declare-fun res!163685 () Bool)

(assert (=> d!128384 (=> (not res!163685) (not e!224960))))

(assert (=> d!128384 (= res!163685 (>= 0 0))))

(assert (=> d!128384 (= (printWithSeparatorTokenWhenNeededRec!356 thiss!17480 rules!1920 (seqFromList!960 (t!56489 tokens!465)) separatorToken!170 0) lt!158127)))

(declare-fun bm!23096 () Bool)

(assert (=> bm!23096 (= call!23099 call!23102)))

(declare-fun b!366187 () Bool)

(declare-fun e!224964 () Bool)

(assert (=> b!366187 (= e!224964 (not (= (_1!2643 (v!15077 lt!158131)) call!23102)))))

(declare-fun b!366188 () Bool)

(declare-fun c!72101 () Bool)

(assert (=> b!366188 (= c!72101 e!224964)))

(declare-fun res!163686 () Bool)

(assert (=> b!366188 (=> (not res!163686) (not e!224964))))

(assert (=> b!366188 (= res!163686 ((_ is Some!974) lt!158131))))

(assert (=> b!366188 (= e!224962 e!224963)))

(declare-fun bm!23097 () Bool)

(assert (=> bm!23097 (= call!23100 (charsOf!440 (ite c!72101 separatorToken!170 call!23099)))))

(assert (= (and d!128384 res!163685) b!366183))

(assert (= (and d!128384 c!72102) b!366181))

(assert (= (and d!128384 (not c!72102)) b!366184))

(assert (= (and b!366184 res!163687) b!366182))

(assert (= (and b!366184 c!72103) b!366186))

(assert (= (and b!366184 (not c!72103)) b!366188))

(assert (= (and b!366188 res!163686) b!366187))

(assert (= (and b!366188 c!72101) b!366185))

(assert (= (and b!366188 (not c!72101)) b!366180))

(assert (= (or b!366185 b!366180) bm!23096))

(assert (= (or b!366185 b!366180) bm!23097))

(assert (= (or b!366186 bm!23096 b!366187) bm!23093))

(assert (= (or b!366186 b!366185) bm!23094))

(assert (= (or b!366186 b!366185) bm!23095))

(assert (=> d!128384 m!539725))

(declare-fun m!540279 () Bool)

(assert (=> d!128384 m!540279))

(declare-fun m!540281 () Bool)

(assert (=> d!128384 m!540281))

(declare-fun m!540283 () Bool)

(assert (=> d!128384 m!540283))

(declare-fun m!540285 () Bool)

(assert (=> d!128384 m!540285))

(assert (=> d!128384 m!540283))

(declare-fun m!540287 () Bool)

(assert (=> d!128384 m!540287))

(assert (=> d!128384 m!539725))

(assert (=> d!128384 m!540283))

(declare-fun m!540289 () Bool)

(assert (=> d!128384 m!540289))

(assert (=> d!128384 m!539725))

(assert (=> d!128384 m!540281))

(assert (=> b!366183 m!539725))

(assert (=> b!366183 m!540279))

(declare-fun m!540291 () Bool)

(assert (=> bm!23095 m!540291))

(assert (=> b!366182 m!539725))

(declare-fun m!540293 () Bool)

(assert (=> b!366182 m!540293))

(declare-fun m!540295 () Bool)

(assert (=> b!366180 m!540295))

(assert (=> b!366180 m!540295))

(declare-fun m!540297 () Bool)

(assert (=> b!366180 m!540297))

(declare-fun m!540299 () Bool)

(assert (=> b!366180 m!540299))

(declare-fun m!540301 () Bool)

(assert (=> b!366180 m!540301))

(assert (=> b!366180 m!540295))

(declare-fun m!540303 () Bool)

(assert (=> b!366180 m!540303))

(assert (=> b!366180 m!540301))

(assert (=> b!366180 m!540299))

(declare-fun m!540305 () Bool)

(assert (=> b!366180 m!540305))

(assert (=> b!366184 m!539725))

(assert (=> b!366184 m!540293))

(declare-fun m!540307 () Bool)

(assert (=> b!366184 m!540307))

(declare-fun m!540309 () Bool)

(assert (=> b!366184 m!540309))

(assert (=> b!366184 m!540281))

(assert (=> b!366184 m!540293))

(declare-fun m!540311 () Bool)

(assert (=> b!366184 m!540311))

(declare-fun m!540313 () Bool)

(assert (=> b!366184 m!540313))

(declare-fun m!540315 () Bool)

(assert (=> b!366184 m!540315))

(assert (=> b!366184 m!539725))

(declare-fun m!540317 () Bool)

(assert (=> b!366184 m!540317))

(declare-fun m!540319 () Bool)

(assert (=> b!366184 m!540319))

(declare-fun m!540321 () Bool)

(assert (=> b!366184 m!540321))

(declare-fun m!540323 () Bool)

(assert (=> b!366184 m!540323))

(assert (=> b!366184 m!540321))

(declare-fun m!540325 () Bool)

(assert (=> b!366184 m!540325))

(assert (=> b!366184 m!540323))

(declare-fun m!540327 () Bool)

(assert (=> b!366184 m!540327))

(declare-fun m!540329 () Bool)

(assert (=> b!366184 m!540329))

(assert (=> b!366184 m!540315))

(declare-fun m!540331 () Bool)

(assert (=> b!366184 m!540331))

(assert (=> b!366184 m!539725))

(assert (=> b!366184 m!540281))

(assert (=> b!366184 m!540293))

(assert (=> b!366184 m!540313))

(declare-fun m!540333 () Bool)

(assert (=> bm!23097 m!540333))

(declare-fun m!540335 () Bool)

(assert (=> bm!23094 m!540335))

(declare-fun m!540337 () Bool)

(assert (=> b!366185 m!540337))

(assert (=> bm!23093 m!539725))

(assert (=> bm!23093 m!540293))

(assert (=> b!365853 d!128384))

(declare-fun d!128386 () Bool)

(declare-fun lt!158142 () BalanceConc!2840)

(assert (=> d!128386 (= (list!1781 lt!158142) (originalCharacters!840 separatorToken!170))))

(declare-fun dynLambda!2350 (Int TokenValue!819) BalanceConc!2840)

(assert (=> d!128386 (= lt!158142 (dynLambda!2350 (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))) (value!27030 separatorToken!170)))))

(assert (=> d!128386 (= (charsOf!440 separatorToken!170) lt!158142)))

(declare-fun b_lambda!14311 () Bool)

(assert (=> (not b_lambda!14311) (not d!128386)))

(declare-fun t!56510 () Bool)

(declare-fun tb!32107 () Bool)

(assert (=> (and b!365856 (= (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))) (toChars!1435 (transformation!797 (rule!1438 separatorToken!170)))) t!56510) tb!32107))

(declare-fun b!366238 () Bool)

(declare-fun e!224991 () Bool)

(declare-fun tp!116041 () Bool)

(declare-fun inv!5145 (Conc!1416) Bool)

(assert (=> b!366238 (= e!224991 (and (inv!5145 (c!72028 (dynLambda!2350 (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))) (value!27030 separatorToken!170)))) tp!116041))))

(declare-fun result!36252 () Bool)

(declare-fun inv!5146 (BalanceConc!2840) Bool)

(assert (=> tb!32107 (= result!36252 (and (inv!5146 (dynLambda!2350 (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))) (value!27030 separatorToken!170))) e!224991))))

(assert (= tb!32107 b!366238))

(declare-fun m!540339 () Bool)

(assert (=> b!366238 m!540339))

(declare-fun m!540341 () Bool)

(assert (=> tb!32107 m!540341))

(assert (=> d!128386 t!56510))

(declare-fun b_and!36799 () Bool)

(assert (= b_and!36783 (and (=> t!56510 result!36252) b_and!36799)))

(declare-fun tb!32109 () Bool)

(declare-fun t!56512 () Bool)

(assert (=> (and b!365849 (= (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))) (toChars!1435 (transformation!797 (rule!1438 separatorToken!170)))) t!56512) tb!32109))

(declare-fun result!36256 () Bool)

(assert (= result!36256 result!36252))

(assert (=> d!128386 t!56512))

(declare-fun b_and!36801 () Bool)

(assert (= b_and!36787 (and (=> t!56512 result!36256) b_and!36801)))

(declare-fun tb!32111 () Bool)

(declare-fun t!56514 () Bool)

(assert (=> (and b!365865 (= (toChars!1435 (transformation!797 (h!9535 rules!1920))) (toChars!1435 (transformation!797 (rule!1438 separatorToken!170)))) t!56514) tb!32111))

(declare-fun result!36258 () Bool)

(assert (= result!36258 result!36252))

(assert (=> d!128386 t!56514))

(declare-fun b_and!36803 () Bool)

(assert (= b_and!36791 (and (=> t!56514 result!36258) b_and!36803)))

(declare-fun m!540343 () Bool)

(assert (=> d!128386 m!540343))

(declare-fun m!540345 () Bool)

(assert (=> d!128386 m!540345))

(assert (=> b!365853 d!128386))

(declare-fun lt!158144 () List!4147)

(declare-fun b!366242 () Bool)

(declare-fun e!224992 () Bool)

(assert (=> b!366242 (= e!224992 (or (not (= lt!157910 Nil!4137)) (= lt!158144 (++!1150 lt!157931 lt!157904))))))

(declare-fun b!366241 () Bool)

(declare-fun res!163713 () Bool)

(assert (=> b!366241 (=> (not res!163713) (not e!224992))))

(assert (=> b!366241 (= res!163713 (= (size!3344 lt!158144) (+ (size!3344 (++!1150 lt!157931 lt!157904)) (size!3344 lt!157910))))))

(declare-fun b!366239 () Bool)

(declare-fun e!224993 () List!4147)

(assert (=> b!366239 (= e!224993 lt!157910)))

(declare-fun d!128388 () Bool)

(assert (=> d!128388 e!224992))

(declare-fun res!163712 () Bool)

(assert (=> d!128388 (=> (not res!163712) (not e!224992))))

(assert (=> d!128388 (= res!163712 (= (content!649 lt!158144) ((_ map or) (content!649 (++!1150 lt!157931 lt!157904)) (content!649 lt!157910))))))

(assert (=> d!128388 (= lt!158144 e!224993)))

(declare-fun c!72113 () Bool)

(assert (=> d!128388 (= c!72113 ((_ is Nil!4137) (++!1150 lt!157931 lt!157904)))))

(assert (=> d!128388 (= (++!1150 (++!1150 lt!157931 lt!157904) lt!157910) lt!158144)))

(declare-fun b!366240 () Bool)

(assert (=> b!366240 (= e!224993 (Cons!4137 (h!9534 (++!1150 lt!157931 lt!157904)) (++!1150 (t!56487 (++!1150 lt!157931 lt!157904)) lt!157910)))))

(assert (= (and d!128388 c!72113) b!366239))

(assert (= (and d!128388 (not c!72113)) b!366240))

(assert (= (and d!128388 res!163712) b!366241))

(assert (= (and b!366241 res!163713) b!366242))

(declare-fun m!540355 () Bool)

(assert (=> b!366241 m!540355))

(assert (=> b!366241 m!539721))

(declare-fun m!540361 () Bool)

(assert (=> b!366241 m!540361))

(declare-fun m!540363 () Bool)

(assert (=> b!366241 m!540363))

(declare-fun m!540365 () Bool)

(assert (=> d!128388 m!540365))

(assert (=> d!128388 m!539721))

(declare-fun m!540367 () Bool)

(assert (=> d!128388 m!540367))

(declare-fun m!540371 () Bool)

(assert (=> d!128388 m!540371))

(declare-fun m!540373 () Bool)

(assert (=> b!366240 m!540373))

(assert (=> b!365853 d!128388))

(declare-fun d!128392 () Bool)

(assert (=> d!128392 (= (list!1781 (charsOf!440 (h!9536 tokens!465))) (list!1785 (c!72028 (charsOf!440 (h!9536 tokens!465)))))))

(declare-fun bs!44367 () Bool)

(assert (= bs!44367 d!128392))

(declare-fun m!540375 () Bool)

(assert (=> bs!44367 m!540375))

(assert (=> b!365853 d!128392))

(declare-fun b!366246 () Bool)

(declare-fun e!224994 () Bool)

(declare-fun lt!158145 () List!4147)

(assert (=> b!366246 (= e!224994 (or (not (= lt!157910 Nil!4137)) (= lt!158145 lt!157904)))))

(declare-fun b!366245 () Bool)

(declare-fun res!163715 () Bool)

(assert (=> b!366245 (=> (not res!163715) (not e!224994))))

(assert (=> b!366245 (= res!163715 (= (size!3344 lt!158145) (+ (size!3344 lt!157904) (size!3344 lt!157910))))))

(declare-fun b!366243 () Bool)

(declare-fun e!224995 () List!4147)

(assert (=> b!366243 (= e!224995 lt!157910)))

(declare-fun d!128394 () Bool)

(assert (=> d!128394 e!224994))

(declare-fun res!163714 () Bool)

(assert (=> d!128394 (=> (not res!163714) (not e!224994))))

(assert (=> d!128394 (= res!163714 (= (content!649 lt!158145) ((_ map or) (content!649 lt!157904) (content!649 lt!157910))))))

(assert (=> d!128394 (= lt!158145 e!224995)))

(declare-fun c!72114 () Bool)

(assert (=> d!128394 (= c!72114 ((_ is Nil!4137) lt!157904))))

(assert (=> d!128394 (= (++!1150 lt!157904 lt!157910) lt!158145)))

(declare-fun b!366244 () Bool)

(assert (=> b!366244 (= e!224995 (Cons!4137 (h!9534 lt!157904) (++!1150 (t!56487 lt!157904) lt!157910)))))

(assert (= (and d!128394 c!72114) b!366243))

(assert (= (and d!128394 (not c!72114)) b!366244))

(assert (= (and d!128394 res!163714) b!366245))

(assert (= (and b!366245 res!163715) b!366246))

(declare-fun m!540377 () Bool)

(assert (=> b!366245 m!540377))

(declare-fun m!540379 () Bool)

(assert (=> b!366245 m!540379))

(assert (=> b!366245 m!540363))

(declare-fun m!540381 () Bool)

(assert (=> d!128394 m!540381))

(declare-fun m!540383 () Bool)

(assert (=> d!128394 m!540383))

(assert (=> d!128394 m!540371))

(declare-fun m!540385 () Bool)

(assert (=> b!366244 m!540385))

(assert (=> b!365853 d!128394))

(declare-fun d!128398 () Bool)

(declare-fun lt!158146 () BalanceConc!2840)

(assert (=> d!128398 (= (list!1781 lt!158146) (originalCharacters!840 (h!9536 tokens!465)))))

(assert (=> d!128398 (= lt!158146 (dynLambda!2350 (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))) (value!27030 (h!9536 tokens!465))))))

(assert (=> d!128398 (= (charsOf!440 (h!9536 tokens!465)) lt!158146)))

(declare-fun b_lambda!14313 () Bool)

(assert (=> (not b_lambda!14313) (not d!128398)))

(declare-fun t!56516 () Bool)

(declare-fun tb!32113 () Bool)

(assert (=> (and b!365856 (= (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))) (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465))))) t!56516) tb!32113))

(declare-fun b!366250 () Bool)

(declare-fun e!224998 () Bool)

(declare-fun tp!116042 () Bool)

(assert (=> b!366250 (= e!224998 (and (inv!5145 (c!72028 (dynLambda!2350 (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))) (value!27030 (h!9536 tokens!465))))) tp!116042))))

(declare-fun result!36260 () Bool)

(assert (=> tb!32113 (= result!36260 (and (inv!5146 (dynLambda!2350 (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))) (value!27030 (h!9536 tokens!465)))) e!224998))))

(assert (= tb!32113 b!366250))

(declare-fun m!540387 () Bool)

(assert (=> b!366250 m!540387))

(declare-fun m!540389 () Bool)

(assert (=> tb!32113 m!540389))

(assert (=> d!128398 t!56516))

(declare-fun b_and!36805 () Bool)

(assert (= b_and!36799 (and (=> t!56516 result!36260) b_and!36805)))

(declare-fun t!56518 () Bool)

(declare-fun tb!32115 () Bool)

(assert (=> (and b!365849 (= (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))) (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465))))) t!56518) tb!32115))

(declare-fun result!36262 () Bool)

(assert (= result!36262 result!36260))

(assert (=> d!128398 t!56518))

(declare-fun b_and!36807 () Bool)

(assert (= b_and!36801 (and (=> t!56518 result!36262) b_and!36807)))

(declare-fun tb!32117 () Bool)

(declare-fun t!56520 () Bool)

(assert (=> (and b!365865 (= (toChars!1435 (transformation!797 (h!9535 rules!1920))) (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465))))) t!56520) tb!32117))

(declare-fun result!36264 () Bool)

(assert (= result!36264 result!36260))

(assert (=> d!128398 t!56520))

(declare-fun b_and!36809 () Bool)

(assert (= b_and!36803 (and (=> t!56520 result!36264) b_and!36809)))

(declare-fun m!540391 () Bool)

(assert (=> d!128398 m!540391))

(declare-fun m!540393 () Bool)

(assert (=> d!128398 m!540393))

(assert (=> b!365853 d!128398))

(declare-fun b!366254 () Bool)

(declare-fun e!224999 () Bool)

(declare-fun lt!158154 () List!4147)

(assert (=> b!366254 (= e!224999 (or (not (= lt!157904 Nil!4137)) (= lt!158154 lt!157931)))))

(declare-fun b!366253 () Bool)

(declare-fun res!163718 () Bool)

(assert (=> b!366253 (=> (not res!163718) (not e!224999))))

(assert (=> b!366253 (= res!163718 (= (size!3344 lt!158154) (+ (size!3344 lt!157931) (size!3344 lt!157904))))))

(declare-fun b!366251 () Bool)

(declare-fun e!225000 () List!4147)

(assert (=> b!366251 (= e!225000 lt!157904)))

(declare-fun d!128400 () Bool)

(assert (=> d!128400 e!224999))

(declare-fun res!163717 () Bool)

(assert (=> d!128400 (=> (not res!163717) (not e!224999))))

(assert (=> d!128400 (= res!163717 (= (content!649 lt!158154) ((_ map or) (content!649 lt!157931) (content!649 lt!157904))))))

(assert (=> d!128400 (= lt!158154 e!225000)))

(declare-fun c!72116 () Bool)

(assert (=> d!128400 (= c!72116 ((_ is Nil!4137) lt!157931))))

(assert (=> d!128400 (= (++!1150 lt!157931 lt!157904) lt!158154)))

(declare-fun b!366252 () Bool)

(assert (=> b!366252 (= e!225000 (Cons!4137 (h!9534 lt!157931) (++!1150 (t!56487 lt!157931) lt!157904)))))

(assert (= (and d!128400 c!72116) b!366251))

(assert (= (and d!128400 (not c!72116)) b!366252))

(assert (= (and d!128400 res!163717) b!366253))

(assert (= (and b!366253 res!163718) b!366254))

(declare-fun m!540401 () Bool)

(assert (=> b!366253 m!540401))

(assert (=> b!366253 m!540233))

(assert (=> b!366253 m!540379))

(declare-fun m!540405 () Bool)

(assert (=> d!128400 m!540405))

(assert (=> d!128400 m!540239))

(assert (=> d!128400 m!540383))

(declare-fun m!540409 () Bool)

(assert (=> b!366252 m!540409))

(assert (=> b!365853 d!128400))

(declare-fun d!128402 () Bool)

(assert (=> d!128402 (= (list!1781 lt!157923) (list!1785 (c!72028 lt!157923)))))

(declare-fun bs!44368 () Bool)

(assert (= bs!44368 d!128402))

(declare-fun m!540415 () Bool)

(assert (=> bs!44368 m!540415))

(assert (=> b!365852 d!128402))

(declare-fun d!128404 () Bool)

(declare-fun lt!158160 () BalanceConc!2840)

(assert (=> d!128404 (= (list!1781 lt!158160) (printList!357 thiss!17480 (list!1784 lt!157913)))))

(assert (=> d!128404 (= lt!158160 (printTailRec!369 thiss!17480 lt!157913 0 (BalanceConc!2841 Empty!1416)))))

(assert (=> d!128404 (= (print!408 thiss!17480 lt!157913) lt!158160)))

(declare-fun bs!44373 () Bool)

(assert (= bs!44373 d!128404))

(declare-fun m!540479 () Bool)

(assert (=> bs!44373 m!540479))

(declare-fun m!540483 () Bool)

(assert (=> bs!44373 m!540483))

(assert (=> bs!44373 m!540483))

(declare-fun m!540485 () Bool)

(assert (=> bs!44373 m!540485))

(assert (=> bs!44373 m!539763))

(assert (=> b!365852 d!128404))

(declare-fun d!128426 () Bool)

(declare-fun lt!158188 () BalanceConc!2840)

(declare-fun printListTailRec!173 (LexerInterface!683 List!4149 List!4147) List!4147)

(assert (=> d!128426 (= (list!1781 lt!158188) (printListTailRec!173 thiss!17480 (dropList!208 lt!157913 0) (list!1781 (BalanceConc!2841 Empty!1416))))))

(declare-fun e!225054 () BalanceConc!2840)

(assert (=> d!128426 (= lt!158188 e!225054)))

(declare-fun c!72135 () Bool)

(assert (=> d!128426 (= c!72135 (>= 0 (size!3339 lt!157913)))))

(declare-fun e!225053 () Bool)

(assert (=> d!128426 e!225053))

(declare-fun res!163766 () Bool)

(assert (=> d!128426 (=> (not res!163766) (not e!225053))))

(assert (=> d!128426 (= res!163766 (>= 0 0))))

(assert (=> d!128426 (= (printTailRec!369 thiss!17480 lt!157913 0 (BalanceConc!2841 Empty!1416)) lt!158188)))

(declare-fun b!366338 () Bool)

(assert (=> b!366338 (= e!225053 (<= 0 (size!3339 lt!157913)))))

(declare-fun b!366339 () Bool)

(assert (=> b!366339 (= e!225054 (BalanceConc!2841 Empty!1416))))

(declare-fun b!366340 () Bool)

(assert (=> b!366340 (= e!225054 (printTailRec!369 thiss!17480 lt!157913 (+ 0 1) (++!1152 (BalanceConc!2841 Empty!1416) (charsOf!440 (apply!948 lt!157913 0)))))))

(declare-fun lt!158187 () List!4149)

(assert (=> b!366340 (= lt!158187 (list!1784 lt!157913))))

(declare-fun lt!158184 () Unit!6490)

(assert (=> b!366340 (= lt!158184 (lemmaDropApply!248 lt!158187 0))))

(assert (=> b!366340 (= (head!995 (drop!271 lt!158187 0)) (apply!952 lt!158187 0))))

(declare-fun lt!158185 () Unit!6490)

(assert (=> b!366340 (= lt!158185 lt!158184)))

(declare-fun lt!158190 () List!4149)

(assert (=> b!366340 (= lt!158190 (list!1784 lt!157913))))

(declare-fun lt!158186 () Unit!6490)

(assert (=> b!366340 (= lt!158186 (lemmaDropTail!240 lt!158190 0))))

(assert (=> b!366340 (= (tail!564 (drop!271 lt!158190 0)) (drop!271 lt!158190 (+ 0 1)))))

(declare-fun lt!158189 () Unit!6490)

(assert (=> b!366340 (= lt!158189 lt!158186)))

(assert (= (and d!128426 res!163766) b!366338))

(assert (= (and d!128426 c!72135) b!366339))

(assert (= (and d!128426 (not c!72135)) b!366340))

(declare-fun m!540547 () Bool)

(assert (=> d!128426 m!540547))

(declare-fun m!540549 () Bool)

(assert (=> d!128426 m!540549))

(declare-fun m!540551 () Bool)

(assert (=> d!128426 m!540551))

(assert (=> d!128426 m!540549))

(declare-fun m!540553 () Bool)

(assert (=> d!128426 m!540553))

(declare-fun m!540555 () Bool)

(assert (=> d!128426 m!540555))

(assert (=> d!128426 m!540547))

(assert (=> b!366338 m!540555))

(declare-fun m!540557 () Bool)

(assert (=> b!366340 m!540557))

(declare-fun m!540559 () Bool)

(assert (=> b!366340 m!540559))

(declare-fun m!540561 () Bool)

(assert (=> b!366340 m!540561))

(assert (=> b!366340 m!540483))

(assert (=> b!366340 m!540557))

(declare-fun m!540563 () Bool)

(assert (=> b!366340 m!540563))

(assert (=> b!366340 m!540559))

(declare-fun m!540565 () Bool)

(assert (=> b!366340 m!540565))

(assert (=> b!366340 m!540565))

(declare-fun m!540567 () Bool)

(assert (=> b!366340 m!540567))

(declare-fun m!540569 () Bool)

(assert (=> b!366340 m!540569))

(declare-fun m!540571 () Bool)

(assert (=> b!366340 m!540571))

(assert (=> b!366340 m!540569))

(declare-fun m!540573 () Bool)

(assert (=> b!366340 m!540573))

(assert (=> b!366340 m!540561))

(declare-fun m!540575 () Bool)

(assert (=> b!366340 m!540575))

(declare-fun m!540577 () Bool)

(assert (=> b!366340 m!540577))

(declare-fun m!540579 () Bool)

(assert (=> b!366340 m!540579))

(assert (=> b!365852 d!128426))

(declare-fun d!128446 () Bool)

(declare-fun e!225063 () Bool)

(assert (=> d!128446 e!225063))

(declare-fun res!163776 () Bool)

(assert (=> d!128446 (=> (not res!163776) (not e!225063))))

(declare-fun lt!158199 () BalanceConc!2842)

(assert (=> d!128446 (= res!163776 (= (list!1784 lt!158199) (Cons!4139 (h!9536 tokens!465) Nil!4139)))))

(declare-fun singleton!158 (Token!1338) BalanceConc!2842)

(assert (=> d!128446 (= lt!158199 (singleton!158 (h!9536 tokens!465)))))

(assert (=> d!128446 (= (singletonSeq!343 (h!9536 tokens!465)) lt!158199)))

(declare-fun b!366352 () Bool)

(declare-fun isBalanced!417 (Conc!1417) Bool)

(assert (=> b!366352 (= e!225063 (isBalanced!417 (c!72030 lt!158199)))))

(assert (= (and d!128446 res!163776) b!366352))

(declare-fun m!540627 () Bool)

(assert (=> d!128446 m!540627))

(declare-fun m!540629 () Bool)

(assert (=> d!128446 m!540629))

(declare-fun m!540631 () Bool)

(assert (=> b!366352 m!540631))

(assert (=> b!365852 d!128446))

(declare-fun d!128460 () Bool)

(declare-fun c!72141 () Bool)

(assert (=> d!128460 (= c!72141 ((_ is Cons!4139) (Cons!4139 (h!9536 tokens!465) Nil!4139)))))

(declare-fun e!225069 () List!4147)

(assert (=> d!128460 (= (printList!357 thiss!17480 (Cons!4139 (h!9536 tokens!465) Nil!4139)) e!225069)))

(declare-fun b!366362 () Bool)

(assert (=> b!366362 (= e!225069 (++!1150 (list!1781 (charsOf!440 (h!9536 (Cons!4139 (h!9536 tokens!465) Nil!4139)))) (printList!357 thiss!17480 (t!56489 (Cons!4139 (h!9536 tokens!465) Nil!4139)))))))

(declare-fun b!366363 () Bool)

(assert (=> b!366363 (= e!225069 Nil!4137)))

(assert (= (and d!128460 c!72141) b!366362))

(assert (= (and d!128460 (not c!72141)) b!366363))

(declare-fun m!540639 () Bool)

(assert (=> b!366362 m!540639))

(assert (=> b!366362 m!540639))

(declare-fun m!540641 () Bool)

(assert (=> b!366362 m!540641))

(declare-fun m!540643 () Bool)

(assert (=> b!366362 m!540643))

(assert (=> b!366362 m!540641))

(assert (=> b!366362 m!540643))

(declare-fun m!540645 () Bool)

(assert (=> b!366362 m!540645))

(assert (=> b!365852 d!128460))

(declare-fun b!366390 () Bool)

(declare-fun e!225085 () Bool)

(declare-fun inv!15 (TokenValue!819) Bool)

(assert (=> b!366390 (= e!225085 (inv!15 (value!27030 (h!9536 tokens!465))))))

(declare-fun d!128464 () Bool)

(declare-fun c!72150 () Bool)

(assert (=> d!128464 (= c!72150 ((_ is IntegerValue!2457) (value!27030 (h!9536 tokens!465))))))

(declare-fun e!225084 () Bool)

(assert (=> d!128464 (= (inv!21 (value!27030 (h!9536 tokens!465))) e!225084)))

(declare-fun b!366391 () Bool)

(declare-fun e!225086 () Bool)

(assert (=> b!366391 (= e!225084 e!225086)))

(declare-fun c!72151 () Bool)

(assert (=> b!366391 (= c!72151 ((_ is IntegerValue!2458) (value!27030 (h!9536 tokens!465))))))

(declare-fun b!366392 () Bool)

(declare-fun res!163788 () Bool)

(assert (=> b!366392 (=> res!163788 e!225085)))

(assert (=> b!366392 (= res!163788 (not ((_ is IntegerValue!2459) (value!27030 (h!9536 tokens!465)))))))

(assert (=> b!366392 (= e!225086 e!225085)))

(declare-fun b!366393 () Bool)

(declare-fun inv!16 (TokenValue!819) Bool)

(assert (=> b!366393 (= e!225084 (inv!16 (value!27030 (h!9536 tokens!465))))))

(declare-fun b!366394 () Bool)

(declare-fun inv!17 (TokenValue!819) Bool)

(assert (=> b!366394 (= e!225086 (inv!17 (value!27030 (h!9536 tokens!465))))))

(assert (= (and d!128464 c!72150) b!366393))

(assert (= (and d!128464 (not c!72150)) b!366391))

(assert (= (and b!366391 c!72151) b!366394))

(assert (= (and b!366391 (not c!72151)) b!366392))

(assert (= (and b!366392 (not res!163788)) b!366390))

(declare-fun m!540669 () Bool)

(assert (=> b!366390 m!540669))

(declare-fun m!540671 () Bool)

(assert (=> b!366393 m!540671))

(declare-fun m!540673 () Bool)

(assert (=> b!366394 m!540673))

(assert (=> b!365873 d!128464))

(declare-fun d!128470 () Bool)

(declare-fun res!163793 () Bool)

(declare-fun e!225091 () Bool)

(assert (=> d!128470 (=> res!163793 e!225091)))

(assert (=> d!128470 (= res!163793 ((_ is Nil!4139) tokens!465))))

(assert (=> d!128470 (= (forall!1136 tokens!465 lambda!11383) e!225091)))

(declare-fun b!366399 () Bool)

(declare-fun e!225092 () Bool)

(assert (=> b!366399 (= e!225091 e!225092)))

(declare-fun res!163794 () Bool)

(assert (=> b!366399 (=> (not res!163794) (not e!225092))))

(declare-fun dynLambda!2351 (Int Token!1338) Bool)

(assert (=> b!366399 (= res!163794 (dynLambda!2351 lambda!11383 (h!9536 tokens!465)))))

(declare-fun b!366400 () Bool)

(assert (=> b!366400 (= e!225092 (forall!1136 (t!56489 tokens!465) lambda!11383))))

(assert (= (and d!128470 (not res!163793)) b!366399))

(assert (= (and b!366399 res!163794) b!366400))

(declare-fun b_lambda!14315 () Bool)

(assert (=> (not b_lambda!14315) (not b!366399)))

(declare-fun m!540677 () Bool)

(assert (=> b!366399 m!540677))

(declare-fun m!540679 () Bool)

(assert (=> b!366400 m!540679))

(assert (=> b!365872 d!128470))

(declare-fun d!128474 () Bool)

(assert (=> d!128474 (= (inv!5138 (tag!1023 (rule!1438 (h!9536 tokens!465)))) (= (mod (str.len (value!27029 (tag!1023 (rule!1438 (h!9536 tokens!465))))) 2) 0))))

(assert (=> b!365851 d!128474))

(declare-fun d!128476 () Bool)

(declare-fun res!163797 () Bool)

(declare-fun e!225095 () Bool)

(assert (=> d!128476 (=> (not res!163797) (not e!225095))))

(declare-fun semiInverseModEq!305 (Int Int) Bool)

(assert (=> d!128476 (= res!163797 (semiInverseModEq!305 (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))) (toValue!1576 (transformation!797 (rule!1438 (h!9536 tokens!465))))))))

(assert (=> d!128476 (= (inv!5141 (transformation!797 (rule!1438 (h!9536 tokens!465)))) e!225095)))

(declare-fun b!366403 () Bool)

(declare-fun equivClasses!288 (Int Int) Bool)

(assert (=> b!366403 (= e!225095 (equivClasses!288 (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))) (toValue!1576 (transformation!797 (rule!1438 (h!9536 tokens!465))))))))

(assert (= (and d!128476 res!163797) b!366403))

(declare-fun m!540685 () Bool)

(assert (=> d!128476 m!540685))

(declare-fun m!540687 () Bool)

(assert (=> b!366403 m!540687))

(assert (=> b!365851 d!128476))

(declare-fun b!366404 () Bool)

(declare-fun e!225097 () Bool)

(assert (=> b!366404 (= e!225097 (inv!15 (value!27030 separatorToken!170)))))

(declare-fun d!128480 () Bool)

(declare-fun c!72152 () Bool)

(assert (=> d!128480 (= c!72152 ((_ is IntegerValue!2457) (value!27030 separatorToken!170)))))

(declare-fun e!225096 () Bool)

(assert (=> d!128480 (= (inv!21 (value!27030 separatorToken!170)) e!225096)))

(declare-fun b!366405 () Bool)

(declare-fun e!225098 () Bool)

(assert (=> b!366405 (= e!225096 e!225098)))

(declare-fun c!72153 () Bool)

(assert (=> b!366405 (= c!72153 ((_ is IntegerValue!2458) (value!27030 separatorToken!170)))))

(declare-fun b!366406 () Bool)

(declare-fun res!163798 () Bool)

(assert (=> b!366406 (=> res!163798 e!225097)))

(assert (=> b!366406 (= res!163798 (not ((_ is IntegerValue!2459) (value!27030 separatorToken!170))))))

(assert (=> b!366406 (= e!225098 e!225097)))

(declare-fun b!366407 () Bool)

(assert (=> b!366407 (= e!225096 (inv!16 (value!27030 separatorToken!170)))))

(declare-fun b!366408 () Bool)

(assert (=> b!366408 (= e!225098 (inv!17 (value!27030 separatorToken!170)))))

(assert (= (and d!128480 c!72152) b!366407))

(assert (= (and d!128480 (not c!72152)) b!366405))

(assert (= (and b!366405 c!72153) b!366408))

(assert (= (and b!366405 (not c!72153)) b!366406))

(assert (= (and b!366406 (not res!163798)) b!366404))

(declare-fun m!540689 () Bool)

(assert (=> b!366404 m!540689))

(declare-fun m!540691 () Bool)

(assert (=> b!366407 m!540691))

(declare-fun m!540693 () Bool)

(assert (=> b!366408 m!540693))

(assert (=> b!365861 d!128480))

(declare-fun d!128482 () Bool)

(assert (=> d!128482 (= (get!1437 lt!157901) (v!15075 lt!157901))))

(assert (=> b!365839 d!128482))

(declare-fun d!128484 () Bool)

(declare-fun isEmpty!2919 (Option!973) Bool)

(assert (=> d!128484 (= (isDefined!812 lt!157901) (not (isEmpty!2919 lt!157901)))))

(declare-fun bs!44380 () Bool)

(assert (= bs!44380 d!128484))

(declare-fun m!540695 () Bool)

(assert (=> bs!44380 m!540695))

(assert (=> b!365839 d!128484))

(declare-fun b!366427 () Bool)

(declare-fun res!163818 () Bool)

(declare-fun e!225107 () Bool)

(assert (=> b!366427 (=> (not res!163818) (not e!225107))))

(declare-fun lt!158217 () Option!973)

(assert (=> b!366427 (= res!163818 (< (size!3344 (_2!2642 (get!1437 lt!158217))) (size!3344 lt!157931)))))

(declare-fun b!366428 () Bool)

(declare-fun res!163819 () Bool)

(assert (=> b!366428 (=> (not res!163819) (not e!225107))))

(assert (=> b!366428 (= res!163819 (= (++!1150 (list!1781 (charsOf!440 (_1!2642 (get!1437 lt!158217)))) (_2!2642 (get!1437 lt!158217))) lt!157931))))

(declare-fun b!366429 () Bool)

(declare-fun e!225105 () Option!973)

(declare-fun call!23120 () Option!973)

(assert (=> b!366429 (= e!225105 call!23120)))

(declare-fun b!366430 () Bool)

(declare-fun lt!158220 () Option!973)

(declare-fun lt!158218 () Option!973)

(assert (=> b!366430 (= e!225105 (ite (and ((_ is None!972) lt!158220) ((_ is None!972) lt!158218)) None!972 (ite ((_ is None!972) lt!158218) lt!158220 (ite ((_ is None!972) lt!158220) lt!158218 (ite (>= (size!3338 (_1!2642 (v!15075 lt!158220))) (size!3338 (_1!2642 (v!15075 lt!158218)))) lt!158220 lt!158218)))))))

(assert (=> b!366430 (= lt!158220 call!23120)))

(assert (=> b!366430 (= lt!158218 (maxPrefix!399 thiss!17480 (t!56488 rules!1920) lt!157931))))

(declare-fun d!128486 () Bool)

(declare-fun e!225106 () Bool)

(assert (=> d!128486 e!225106))

(declare-fun res!163816 () Bool)

(assert (=> d!128486 (=> res!163816 e!225106)))

(assert (=> d!128486 (= res!163816 (isEmpty!2919 lt!158217))))

(assert (=> d!128486 (= lt!158217 e!225105)))

(declare-fun c!72156 () Bool)

(assert (=> d!128486 (= c!72156 (and ((_ is Cons!4138) rules!1920) ((_ is Nil!4138) (t!56488 rules!1920))))))

(declare-fun lt!158219 () Unit!6490)

(declare-fun lt!158221 () Unit!6490)

(assert (=> d!128486 (= lt!158219 lt!158221)))

(assert (=> d!128486 (isPrefix!457 lt!157931 lt!157931)))

(declare-fun lemmaIsPrefixRefl!251 (List!4147 List!4147) Unit!6490)

(assert (=> d!128486 (= lt!158221 (lemmaIsPrefixRefl!251 lt!157931 lt!157931))))

(declare-fun rulesValidInductive!246 (LexerInterface!683 List!4148) Bool)

(assert (=> d!128486 (rulesValidInductive!246 thiss!17480 rules!1920)))

(assert (=> d!128486 (= (maxPrefix!399 thiss!17480 rules!1920 lt!157931) lt!158217)))

(declare-fun b!366431 () Bool)

(declare-fun res!163815 () Bool)

(assert (=> b!366431 (=> (not res!163815) (not e!225107))))

(assert (=> b!366431 (= res!163815 (= (list!1781 (charsOf!440 (_1!2642 (get!1437 lt!158217)))) (originalCharacters!840 (_1!2642 (get!1437 lt!158217)))))))

(declare-fun bm!23115 () Bool)

(declare-fun maxPrefixOneRule!185 (LexerInterface!683 Rule!1394 List!4147) Option!973)

(assert (=> bm!23115 (= call!23120 (maxPrefixOneRule!185 thiss!17480 (h!9535 rules!1920) lt!157931))))

(declare-fun b!366432 () Bool)

(declare-fun res!163817 () Bool)

(assert (=> b!366432 (=> (not res!163817) (not e!225107))))

(assert (=> b!366432 (= res!163817 (matchR!339 (regex!797 (rule!1438 (_1!2642 (get!1437 lt!158217)))) (list!1781 (charsOf!440 (_1!2642 (get!1437 lt!158217))))))))

(declare-fun b!366433 () Bool)

(declare-fun res!163813 () Bool)

(assert (=> b!366433 (=> (not res!163813) (not e!225107))))

(declare-fun apply!953 (TokenValueInjection!1410 BalanceConc!2840) TokenValue!819)

(assert (=> b!366433 (= res!163813 (= (value!27030 (_1!2642 (get!1437 lt!158217))) (apply!953 (transformation!797 (rule!1438 (_1!2642 (get!1437 lt!158217)))) (seqFromList!959 (originalCharacters!840 (_1!2642 (get!1437 lt!158217)))))))))

(declare-fun b!366434 () Bool)

(assert (=> b!366434 (= e!225106 e!225107)))

(declare-fun res!163814 () Bool)

(assert (=> b!366434 (=> (not res!163814) (not e!225107))))

(assert (=> b!366434 (= res!163814 (isDefined!812 lt!158217))))

(declare-fun b!366435 () Bool)

(declare-fun contains!840 (List!4148 Rule!1394) Bool)

(assert (=> b!366435 (= e!225107 (contains!840 rules!1920 (rule!1438 (_1!2642 (get!1437 lt!158217)))))))

(assert (= (and d!128486 c!72156) b!366429))

(assert (= (and d!128486 (not c!72156)) b!366430))

(assert (= (or b!366429 b!366430) bm!23115))

(assert (= (and d!128486 (not res!163816)) b!366434))

(assert (= (and b!366434 res!163814) b!366431))

(assert (= (and b!366431 res!163815) b!366427))

(assert (= (and b!366427 res!163818) b!366428))

(assert (= (and b!366428 res!163819) b!366433))

(assert (= (and b!366433 res!163813) b!366432))

(assert (= (and b!366432 res!163817) b!366435))

(declare-fun m!540697 () Bool)

(assert (=> b!366430 m!540697))

(declare-fun m!540699 () Bool)

(assert (=> b!366432 m!540699))

(declare-fun m!540701 () Bool)

(assert (=> b!366432 m!540701))

(assert (=> b!366432 m!540701))

(declare-fun m!540703 () Bool)

(assert (=> b!366432 m!540703))

(assert (=> b!366432 m!540703))

(declare-fun m!540705 () Bool)

(assert (=> b!366432 m!540705))

(assert (=> b!366433 m!540699))

(declare-fun m!540707 () Bool)

(assert (=> b!366433 m!540707))

(assert (=> b!366433 m!540707))

(declare-fun m!540709 () Bool)

(assert (=> b!366433 m!540709))

(assert (=> b!366431 m!540699))

(assert (=> b!366431 m!540701))

(assert (=> b!366431 m!540701))

(assert (=> b!366431 m!540703))

(declare-fun m!540711 () Bool)

(assert (=> bm!23115 m!540711))

(assert (=> b!366427 m!540699))

(declare-fun m!540713 () Bool)

(assert (=> b!366427 m!540713))

(assert (=> b!366427 m!540233))

(declare-fun m!540715 () Bool)

(assert (=> b!366434 m!540715))

(assert (=> b!366435 m!540699))

(declare-fun m!540717 () Bool)

(assert (=> b!366435 m!540717))

(assert (=> b!366428 m!540699))

(assert (=> b!366428 m!540701))

(assert (=> b!366428 m!540701))

(assert (=> b!366428 m!540703))

(assert (=> b!366428 m!540703))

(declare-fun m!540719 () Bool)

(assert (=> b!366428 m!540719))

(declare-fun m!540721 () Bool)

(assert (=> d!128486 m!540721))

(declare-fun m!540723 () Bool)

(assert (=> d!128486 m!540723))

(declare-fun m!540725 () Bool)

(assert (=> d!128486 m!540725))

(declare-fun m!540727 () Bool)

(assert (=> d!128486 m!540727))

(assert (=> b!365839 d!128486))

(declare-fun d!128488 () Bool)

(declare-fun e!225124 () Bool)

(assert (=> d!128488 e!225124))

(declare-fun c!72163 () Bool)

(assert (=> d!128488 (= c!72163 ((_ is EmptyExpr!1021) (regex!797 lt!157929)))))

(declare-fun lt!158224 () Bool)

(declare-fun e!225128 () Bool)

(assert (=> d!128488 (= lt!158224 e!225128)))

(declare-fun c!72164 () Bool)

(assert (=> d!128488 (= c!72164 (isEmpty!2912 lt!157904))))

(assert (=> d!128488 (validRegex!283 (regex!797 lt!157929))))

(assert (=> d!128488 (= (matchR!339 (regex!797 lt!157929) lt!157904) lt!158224)))

(declare-fun b!366464 () Bool)

(declare-fun res!163837 () Bool)

(declare-fun e!225127 () Bool)

(assert (=> b!366464 (=> res!163837 e!225127)))

(declare-fun tail!566 (List!4147) List!4147)

(assert (=> b!366464 (= res!163837 (not (isEmpty!2912 (tail!566 lt!157904))))))

(declare-fun b!366465 () Bool)

(declare-fun derivativeStep!174 (Regex!1021 C!2964) Regex!1021)

(assert (=> b!366465 (= e!225128 (matchR!339 (derivativeStep!174 (regex!797 lt!157929) (head!996 lt!157904)) (tail!566 lt!157904)))))

(declare-fun b!366466 () Bool)

(declare-fun e!225123 () Bool)

(assert (=> b!366466 (= e!225124 e!225123)))

(declare-fun c!72165 () Bool)

(assert (=> b!366466 (= c!72165 ((_ is EmptyLang!1021) (regex!797 lt!157929)))))

(declare-fun b!366467 () Bool)

(declare-fun res!163842 () Bool)

(declare-fun e!225125 () Bool)

(assert (=> b!366467 (=> res!163842 e!225125)))

(declare-fun e!225126 () Bool)

(assert (=> b!366467 (= res!163842 e!225126)))

(declare-fun res!163836 () Bool)

(assert (=> b!366467 (=> (not res!163836) (not e!225126))))

(assert (=> b!366467 (= res!163836 lt!158224)))

(declare-fun b!366468 () Bool)

(assert (=> b!366468 (= e!225126 (= (head!996 lt!157904) (c!72029 (regex!797 lt!157929))))))

(declare-fun b!366469 () Bool)

(declare-fun res!163838 () Bool)

(assert (=> b!366469 (=> (not res!163838) (not e!225126))))

(assert (=> b!366469 (= res!163838 (isEmpty!2912 (tail!566 lt!157904)))))

(declare-fun bm!23118 () Bool)

(declare-fun call!23123 () Bool)

(assert (=> bm!23118 (= call!23123 (isEmpty!2912 lt!157904))))

(declare-fun b!366470 () Bool)

(declare-fun res!163840 () Bool)

(assert (=> b!366470 (=> (not res!163840) (not e!225126))))

(assert (=> b!366470 (= res!163840 (not call!23123))))

(declare-fun b!366471 () Bool)

(assert (=> b!366471 (= e!225124 (= lt!158224 call!23123))))

(declare-fun b!366472 () Bool)

(declare-fun res!163839 () Bool)

(assert (=> b!366472 (=> res!163839 e!225125)))

(assert (=> b!366472 (= res!163839 (not ((_ is ElementMatch!1021) (regex!797 lt!157929))))))

(assert (=> b!366472 (= e!225123 e!225125)))

(declare-fun b!366473 () Bool)

(assert (=> b!366473 (= e!225127 (not (= (head!996 lt!157904) (c!72029 (regex!797 lt!157929)))))))

(declare-fun b!366474 () Bool)

(declare-fun nullable!208 (Regex!1021) Bool)

(assert (=> b!366474 (= e!225128 (nullable!208 (regex!797 lt!157929)))))

(declare-fun b!366475 () Bool)

(declare-fun e!225122 () Bool)

(assert (=> b!366475 (= e!225125 e!225122)))

(declare-fun res!163843 () Bool)

(assert (=> b!366475 (=> (not res!163843) (not e!225122))))

(assert (=> b!366475 (= res!163843 (not lt!158224))))

(declare-fun b!366476 () Bool)

(assert (=> b!366476 (= e!225122 e!225127)))

(declare-fun res!163841 () Bool)

(assert (=> b!366476 (=> res!163841 e!225127)))

(assert (=> b!366476 (= res!163841 call!23123)))

(declare-fun b!366477 () Bool)

(assert (=> b!366477 (= e!225123 (not lt!158224))))

(assert (= (and d!128488 c!72164) b!366474))

(assert (= (and d!128488 (not c!72164)) b!366465))

(assert (= (and d!128488 c!72163) b!366471))

(assert (= (and d!128488 (not c!72163)) b!366466))

(assert (= (and b!366466 c!72165) b!366477))

(assert (= (and b!366466 (not c!72165)) b!366472))

(assert (= (and b!366472 (not res!163839)) b!366467))

(assert (= (and b!366467 res!163836) b!366470))

(assert (= (and b!366470 res!163840) b!366469))

(assert (= (and b!366469 res!163838) b!366468))

(assert (= (and b!366467 (not res!163842)) b!366475))

(assert (= (and b!366475 res!163843) b!366476))

(assert (= (and b!366476 (not res!163841)) b!366464))

(assert (= (and b!366464 (not res!163837)) b!366473))

(assert (= (or b!366471 b!366470 b!366476) bm!23118))

(declare-fun m!540729 () Bool)

(assert (=> bm!23118 m!540729))

(declare-fun m!540731 () Bool)

(assert (=> b!366474 m!540731))

(declare-fun m!540733 () Bool)

(assert (=> b!366469 m!540733))

(assert (=> b!366469 m!540733))

(declare-fun m!540735 () Bool)

(assert (=> b!366469 m!540735))

(assert (=> d!128488 m!540729))

(declare-fun m!540737 () Bool)

(assert (=> d!128488 m!540737))

(declare-fun m!540739 () Bool)

(assert (=> b!366465 m!540739))

(assert (=> b!366465 m!540739))

(declare-fun m!540741 () Bool)

(assert (=> b!366465 m!540741))

(assert (=> b!366465 m!540733))

(assert (=> b!366465 m!540741))

(assert (=> b!366465 m!540733))

(declare-fun m!540743 () Bool)

(assert (=> b!366465 m!540743))

(assert (=> b!366464 m!540733))

(assert (=> b!366464 m!540733))

(assert (=> b!366464 m!540735))

(assert (=> b!366473 m!540739))

(assert (=> b!366468 m!540739))

(assert (=> b!365859 d!128488))

(declare-fun d!128490 () Bool)

(assert (=> d!128490 (= (get!1438 lt!157924) (v!15076 lt!157924))))

(assert (=> b!365859 d!128490))

(declare-fun d!128492 () Bool)

(declare-fun e!225131 () Bool)

(assert (=> d!128492 e!225131))

(declare-fun c!72166 () Bool)

(assert (=> d!128492 (= c!72166 ((_ is EmptyExpr!1021) (regex!797 (rule!1438 (h!9536 tokens!465)))))))

(declare-fun lt!158225 () Bool)

(declare-fun e!225135 () Bool)

(assert (=> d!128492 (= lt!158225 e!225135)))

(declare-fun c!72167 () Bool)

(assert (=> d!128492 (= c!72167 (isEmpty!2912 lt!157931))))

(assert (=> d!128492 (validRegex!283 (regex!797 (rule!1438 (h!9536 tokens!465))))))

(assert (=> d!128492 (= (matchR!339 (regex!797 (rule!1438 (h!9536 tokens!465))) lt!157931) lt!158225)))

(declare-fun b!366478 () Bool)

(declare-fun res!163845 () Bool)

(declare-fun e!225134 () Bool)

(assert (=> b!366478 (=> res!163845 e!225134)))

(assert (=> b!366478 (= res!163845 (not (isEmpty!2912 (tail!566 lt!157931))))))

(declare-fun b!366479 () Bool)

(assert (=> b!366479 (= e!225135 (matchR!339 (derivativeStep!174 (regex!797 (rule!1438 (h!9536 tokens!465))) (head!996 lt!157931)) (tail!566 lt!157931)))))

(declare-fun b!366480 () Bool)

(declare-fun e!225130 () Bool)

(assert (=> b!366480 (= e!225131 e!225130)))

(declare-fun c!72168 () Bool)

(assert (=> b!366480 (= c!72168 ((_ is EmptyLang!1021) (regex!797 (rule!1438 (h!9536 tokens!465)))))))

(declare-fun b!366481 () Bool)

(declare-fun res!163850 () Bool)

(declare-fun e!225132 () Bool)

(assert (=> b!366481 (=> res!163850 e!225132)))

(declare-fun e!225133 () Bool)

(assert (=> b!366481 (= res!163850 e!225133)))

(declare-fun res!163844 () Bool)

(assert (=> b!366481 (=> (not res!163844) (not e!225133))))

(assert (=> b!366481 (= res!163844 lt!158225)))

(declare-fun b!366482 () Bool)

(assert (=> b!366482 (= e!225133 (= (head!996 lt!157931) (c!72029 (regex!797 (rule!1438 (h!9536 tokens!465))))))))

(declare-fun b!366483 () Bool)

(declare-fun res!163846 () Bool)

(assert (=> b!366483 (=> (not res!163846) (not e!225133))))

(assert (=> b!366483 (= res!163846 (isEmpty!2912 (tail!566 lt!157931)))))

(declare-fun bm!23119 () Bool)

(declare-fun call!23124 () Bool)

(assert (=> bm!23119 (= call!23124 (isEmpty!2912 lt!157931))))

(declare-fun b!366484 () Bool)

(declare-fun res!163848 () Bool)

(assert (=> b!366484 (=> (not res!163848) (not e!225133))))

(assert (=> b!366484 (= res!163848 (not call!23124))))

(declare-fun b!366485 () Bool)

(assert (=> b!366485 (= e!225131 (= lt!158225 call!23124))))

(declare-fun b!366486 () Bool)

(declare-fun res!163847 () Bool)

(assert (=> b!366486 (=> res!163847 e!225132)))

(assert (=> b!366486 (= res!163847 (not ((_ is ElementMatch!1021) (regex!797 (rule!1438 (h!9536 tokens!465))))))))

(assert (=> b!366486 (= e!225130 e!225132)))

(declare-fun b!366487 () Bool)

(assert (=> b!366487 (= e!225134 (not (= (head!996 lt!157931) (c!72029 (regex!797 (rule!1438 (h!9536 tokens!465)))))))))

(declare-fun b!366488 () Bool)

(assert (=> b!366488 (= e!225135 (nullable!208 (regex!797 (rule!1438 (h!9536 tokens!465)))))))

(declare-fun b!366489 () Bool)

(declare-fun e!225129 () Bool)

(assert (=> b!366489 (= e!225132 e!225129)))

(declare-fun res!163851 () Bool)

(assert (=> b!366489 (=> (not res!163851) (not e!225129))))

(assert (=> b!366489 (= res!163851 (not lt!158225))))

(declare-fun b!366490 () Bool)

(assert (=> b!366490 (= e!225129 e!225134)))

(declare-fun res!163849 () Bool)

(assert (=> b!366490 (=> res!163849 e!225134)))

(assert (=> b!366490 (= res!163849 call!23124)))

(declare-fun b!366491 () Bool)

(assert (=> b!366491 (= e!225130 (not lt!158225))))

(assert (= (and d!128492 c!72167) b!366488))

(assert (= (and d!128492 (not c!72167)) b!366479))

(assert (= (and d!128492 c!72166) b!366485))

(assert (= (and d!128492 (not c!72166)) b!366480))

(assert (= (and b!366480 c!72168) b!366491))

(assert (= (and b!366480 (not c!72168)) b!366486))

(assert (= (and b!366486 (not res!163847)) b!366481))

(assert (= (and b!366481 res!163844) b!366484))

(assert (= (and b!366484 res!163848) b!366483))

(assert (= (and b!366483 res!163846) b!366482))

(assert (= (and b!366481 (not res!163850)) b!366489))

(assert (= (and b!366489 res!163851) b!366490))

(assert (= (and b!366490 (not res!163849)) b!366478))

(assert (= (and b!366478 (not res!163845)) b!366487))

(assert (= (or b!366485 b!366484 b!366490) bm!23119))

(declare-fun m!540745 () Bool)

(assert (=> bm!23119 m!540745))

(declare-fun m!540747 () Bool)

(assert (=> b!366488 m!540747))

(declare-fun m!540749 () Bool)

(assert (=> b!366483 m!540749))

(assert (=> b!366483 m!540749))

(declare-fun m!540751 () Bool)

(assert (=> b!366483 m!540751))

(assert (=> d!128492 m!540745))

(declare-fun m!540753 () Bool)

(assert (=> d!128492 m!540753))

(declare-fun m!540755 () Bool)

(assert (=> b!366479 m!540755))

(assert (=> b!366479 m!540755))

(declare-fun m!540757 () Bool)

(assert (=> b!366479 m!540757))

(assert (=> b!366479 m!540749))

(assert (=> b!366479 m!540757))

(assert (=> b!366479 m!540749))

(declare-fun m!540759 () Bool)

(assert (=> b!366479 m!540759))

(assert (=> b!366478 m!540749))

(assert (=> b!366478 m!540749))

(assert (=> b!366478 m!540751))

(assert (=> b!366487 m!540755))

(assert (=> b!366482 m!540755))

(assert (=> b!365858 d!128492))

(declare-fun d!128494 () Bool)

(declare-fun lt!158254 () Bool)

(declare-fun e!225166 () Bool)

(assert (=> d!128494 (= lt!158254 e!225166)))

(declare-fun res!163864 () Bool)

(assert (=> d!128494 (=> (not res!163864) (not e!225166))))

(assert (=> d!128494 (= res!163864 (= (list!1784 (_1!2641 (lex!475 thiss!17480 rules!1920 (print!408 thiss!17480 (singletonSeq!343 separatorToken!170))))) (list!1784 (singletonSeq!343 separatorToken!170))))))

(declare-fun e!225167 () Bool)

(assert (=> d!128494 (= lt!158254 e!225167)))

(declare-fun res!163865 () Bool)

(assert (=> d!128494 (=> (not res!163865) (not e!225167))))

(declare-fun lt!158253 () tuple2!4850)

(assert (=> d!128494 (= res!163865 (= (size!3339 (_1!2641 lt!158253)) 1))))

(assert (=> d!128494 (= lt!158253 (lex!475 thiss!17480 rules!1920 (print!408 thiss!17480 (singletonSeq!343 separatorToken!170))))))

(assert (=> d!128494 (not (isEmpty!2914 rules!1920))))

(assert (=> d!128494 (= (rulesProduceIndividualToken!432 thiss!17480 rules!1920 separatorToken!170) lt!158254)))

(declare-fun b!366545 () Bool)

(declare-fun res!163866 () Bool)

(assert (=> b!366545 (=> (not res!163866) (not e!225167))))

(assert (=> b!366545 (= res!163866 (= (apply!948 (_1!2641 lt!158253) 0) separatorToken!170))))

(declare-fun b!366546 () Bool)

(assert (=> b!366546 (= e!225167 (isEmpty!2911 (_2!2641 lt!158253)))))

(declare-fun b!366547 () Bool)

(assert (=> b!366547 (= e!225166 (isEmpty!2911 (_2!2641 (lex!475 thiss!17480 rules!1920 (print!408 thiss!17480 (singletonSeq!343 separatorToken!170))))))))

(assert (= (and d!128494 res!163865) b!366545))

(assert (= (and b!366545 res!163866) b!366546))

(assert (= (and d!128494 res!163864) b!366547))

(assert (=> d!128494 m!539785))

(assert (=> d!128494 m!539647))

(declare-fun m!540835 () Bool)

(assert (=> d!128494 m!540835))

(assert (=> d!128494 m!539647))

(declare-fun m!540837 () Bool)

(assert (=> d!128494 m!540837))

(declare-fun m!540839 () Bool)

(assert (=> d!128494 m!540839))

(declare-fun m!540841 () Bool)

(assert (=> d!128494 m!540841))

(assert (=> d!128494 m!540835))

(declare-fun m!540843 () Bool)

(assert (=> d!128494 m!540843))

(assert (=> d!128494 m!539647))

(declare-fun m!540845 () Bool)

(assert (=> b!366545 m!540845))

(declare-fun m!540847 () Bool)

(assert (=> b!366546 m!540847))

(assert (=> b!366547 m!539647))

(assert (=> b!366547 m!539647))

(assert (=> b!366547 m!540835))

(assert (=> b!366547 m!540835))

(assert (=> b!366547 m!540843))

(declare-fun m!540849 () Bool)

(assert (=> b!366547 m!540849))

(assert (=> b!365837 d!128494))

(declare-fun d!128514 () Bool)

(declare-fun lt!158257 () Token!1338)

(assert (=> d!128514 (= lt!158257 (apply!952 (list!1784 (_1!2641 lt!157912)) 0))))

(declare-fun apply!954 (Conc!1417 Int) Token!1338)

(assert (=> d!128514 (= lt!158257 (apply!954 (c!72030 (_1!2641 lt!157912)) 0))))

(declare-fun e!225170 () Bool)

(assert (=> d!128514 e!225170))

(declare-fun res!163869 () Bool)

(assert (=> d!128514 (=> (not res!163869) (not e!225170))))

(assert (=> d!128514 (= res!163869 (<= 0 0))))

(assert (=> d!128514 (= (apply!948 (_1!2641 lt!157912) 0) lt!158257)))

(declare-fun b!366550 () Bool)

(assert (=> b!366550 (= e!225170 (< 0 (size!3339 (_1!2641 lt!157912))))))

(assert (= (and d!128514 res!163869) b!366550))

(declare-fun m!540851 () Bool)

(assert (=> d!128514 m!540851))

(assert (=> d!128514 m!540851))

(declare-fun m!540853 () Bool)

(assert (=> d!128514 m!540853))

(declare-fun m!540855 () Bool)

(assert (=> d!128514 m!540855))

(assert (=> b!366550 m!539619))

(assert (=> b!365836 d!128514))

(declare-fun lt!158258 () List!4147)

(declare-fun b!366554 () Bool)

(declare-fun e!225171 () Bool)

(assert (=> b!366554 (= e!225171 (or (not (= lt!157910 Nil!4137)) (= lt!158258 lt!157931)))))

(declare-fun b!366553 () Bool)

(declare-fun res!163871 () Bool)

(assert (=> b!366553 (=> (not res!163871) (not e!225171))))

(assert (=> b!366553 (= res!163871 (= (size!3344 lt!158258) (+ (size!3344 lt!157931) (size!3344 lt!157910))))))

(declare-fun b!366551 () Bool)

(declare-fun e!225172 () List!4147)

(assert (=> b!366551 (= e!225172 lt!157910)))

(declare-fun d!128516 () Bool)

(assert (=> d!128516 e!225171))

(declare-fun res!163870 () Bool)

(assert (=> d!128516 (=> (not res!163870) (not e!225171))))

(assert (=> d!128516 (= res!163870 (= (content!649 lt!158258) ((_ map or) (content!649 lt!157931) (content!649 lt!157910))))))

(assert (=> d!128516 (= lt!158258 e!225172)))

(declare-fun c!72187 () Bool)

(assert (=> d!128516 (= c!72187 ((_ is Nil!4137) lt!157931))))

(assert (=> d!128516 (= (++!1150 lt!157931 lt!157910) lt!158258)))

(declare-fun b!366552 () Bool)

(assert (=> b!366552 (= e!225172 (Cons!4137 (h!9534 lt!157931) (++!1150 (t!56487 lt!157931) lt!157910)))))

(assert (= (and d!128516 c!72187) b!366551))

(assert (= (and d!128516 (not c!72187)) b!366552))

(assert (= (and d!128516 res!163870) b!366553))

(assert (= (and b!366553 res!163871) b!366554))

(declare-fun m!540857 () Bool)

(assert (=> b!366553 m!540857))

(assert (=> b!366553 m!540233))

(assert (=> b!366553 m!540363))

(declare-fun m!540859 () Bool)

(assert (=> d!128516 m!540859))

(assert (=> d!128516 m!540239))

(assert (=> d!128516 m!540371))

(declare-fun m!540861 () Bool)

(assert (=> b!366552 m!540861))

(assert (=> b!365879 d!128516))

(declare-fun d!128518 () Bool)

(declare-fun lt!158259 () Token!1338)

(assert (=> d!128518 (= lt!158259 (apply!952 (list!1784 (_1!2641 lt!157900)) 0))))

(assert (=> d!128518 (= lt!158259 (apply!954 (c!72030 (_1!2641 lt!157900)) 0))))

(declare-fun e!225173 () Bool)

(assert (=> d!128518 e!225173))

(declare-fun res!163872 () Bool)

(assert (=> d!128518 (=> (not res!163872) (not e!225173))))

(assert (=> d!128518 (= res!163872 (<= 0 0))))

(assert (=> d!128518 (= (apply!948 (_1!2641 lt!157900) 0) lt!158259)))

(declare-fun b!366555 () Bool)

(assert (=> b!366555 (= e!225173 (< 0 (size!3339 (_1!2641 lt!157900))))))

(assert (= (and d!128518 res!163872) b!366555))

(declare-fun m!540863 () Bool)

(assert (=> d!128518 m!540863))

(assert (=> d!128518 m!540863))

(declare-fun m!540865 () Bool)

(assert (=> d!128518 m!540865))

(declare-fun m!540867 () Bool)

(assert (=> d!128518 m!540867))

(assert (=> b!366555 m!539623))

(assert (=> b!365878 d!128518))

(declare-fun d!128520 () Bool)

(declare-fun lt!158261 () Bool)

(declare-fun e!225174 () Bool)

(assert (=> d!128520 (= lt!158261 e!225174)))

(declare-fun res!163873 () Bool)

(assert (=> d!128520 (=> (not res!163873) (not e!225174))))

(assert (=> d!128520 (= res!163873 (= (list!1784 (_1!2641 (lex!475 thiss!17480 rules!1920 (print!408 thiss!17480 (singletonSeq!343 (h!9536 tokens!465)))))) (list!1784 (singletonSeq!343 (h!9536 tokens!465)))))))

(declare-fun e!225175 () Bool)

(assert (=> d!128520 (= lt!158261 e!225175)))

(declare-fun res!163874 () Bool)

(assert (=> d!128520 (=> (not res!163874) (not e!225175))))

(declare-fun lt!158260 () tuple2!4850)

(assert (=> d!128520 (= res!163874 (= (size!3339 (_1!2641 lt!158260)) 1))))

(assert (=> d!128520 (= lt!158260 (lex!475 thiss!17480 rules!1920 (print!408 thiss!17480 (singletonSeq!343 (h!9536 tokens!465)))))))

(assert (=> d!128520 (not (isEmpty!2914 rules!1920))))

(assert (=> d!128520 (= (rulesProduceIndividualToken!432 thiss!17480 rules!1920 (h!9536 tokens!465)) lt!158261)))

(declare-fun b!366556 () Bool)

(declare-fun res!163875 () Bool)

(assert (=> b!366556 (=> (not res!163875) (not e!225175))))

(assert (=> b!366556 (= res!163875 (= (apply!948 (_1!2641 lt!158260) 0) (h!9536 tokens!465)))))

(declare-fun b!366557 () Bool)

(assert (=> b!366557 (= e!225175 (isEmpty!2911 (_2!2641 lt!158260)))))

(declare-fun b!366558 () Bool)

(assert (=> b!366558 (= e!225174 (isEmpty!2911 (_2!2641 (lex!475 thiss!17480 rules!1920 (print!408 thiss!17480 (singletonSeq!343 (h!9536 tokens!465)))))))))

(assert (= (and d!128520 res!163874) b!366556))

(assert (= (and b!366556 res!163875) b!366557))

(assert (= (and d!128520 res!163873) b!366558))

(assert (=> d!128520 m!539785))

(assert (=> d!128520 m!539767))

(assert (=> d!128520 m!540205))

(assert (=> d!128520 m!539767))

(declare-fun m!540869 () Bool)

(assert (=> d!128520 m!540869))

(declare-fun m!540871 () Bool)

(assert (=> d!128520 m!540871))

(declare-fun m!540873 () Bool)

(assert (=> d!128520 m!540873))

(assert (=> d!128520 m!540205))

(declare-fun m!540875 () Bool)

(assert (=> d!128520 m!540875))

(assert (=> d!128520 m!539767))

(declare-fun m!540877 () Bool)

(assert (=> b!366556 m!540877))

(declare-fun m!540879 () Bool)

(assert (=> b!366557 m!540879))

(assert (=> b!366558 m!539767))

(assert (=> b!366558 m!539767))

(assert (=> b!366558 m!540205))

(assert (=> b!366558 m!540205))

(assert (=> b!366558 m!540875))

(declare-fun m!540881 () Bool)

(assert (=> b!366558 m!540881))

(assert (=> b!365857 d!128520))

(declare-fun d!128522 () Bool)

(declare-fun res!163880 () Bool)

(declare-fun e!225178 () Bool)

(assert (=> d!128522 (=> (not res!163880) (not e!225178))))

(assert (=> d!128522 (= res!163880 (not (isEmpty!2912 (originalCharacters!840 separatorToken!170))))))

(assert (=> d!128522 (= (inv!5142 separatorToken!170) e!225178)))

(declare-fun b!366563 () Bool)

(declare-fun res!163881 () Bool)

(assert (=> b!366563 (=> (not res!163881) (not e!225178))))

(assert (=> b!366563 (= res!163881 (= (originalCharacters!840 separatorToken!170) (list!1781 (dynLambda!2350 (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))) (value!27030 separatorToken!170)))))))

(declare-fun b!366564 () Bool)

(assert (=> b!366564 (= e!225178 (= (size!3338 separatorToken!170) (size!3344 (originalCharacters!840 separatorToken!170))))))

(assert (= (and d!128522 res!163880) b!366563))

(assert (= (and b!366563 res!163881) b!366564))

(declare-fun b_lambda!14321 () Bool)

(assert (=> (not b_lambda!14321) (not b!366563)))

(assert (=> b!366563 t!56510))

(declare-fun b_and!36823 () Bool)

(assert (= b_and!36805 (and (=> t!56510 result!36252) b_and!36823)))

(assert (=> b!366563 t!56512))

(declare-fun b_and!36825 () Bool)

(assert (= b_and!36807 (and (=> t!56512 result!36256) b_and!36825)))

(assert (=> b!366563 t!56514))

(declare-fun b_and!36827 () Bool)

(assert (= b_and!36809 (and (=> t!56514 result!36258) b_and!36827)))

(declare-fun m!540883 () Bool)

(assert (=> d!128522 m!540883))

(assert (=> b!366563 m!540345))

(assert (=> b!366563 m!540345))

(declare-fun m!540885 () Bool)

(assert (=> b!366563 m!540885))

(declare-fun m!540887 () Bool)

(assert (=> b!366564 m!540887))

(assert (=> start!36274 d!128522))

(declare-fun d!128524 () Bool)

(declare-fun res!163882 () Bool)

(declare-fun e!225179 () Bool)

(assert (=> d!128524 (=> (not res!163882) (not e!225179))))

(assert (=> d!128524 (= res!163882 (not (isEmpty!2912 (originalCharacters!840 (h!9536 tokens!465)))))))

(assert (=> d!128524 (= (inv!5142 (h!9536 tokens!465)) e!225179)))

(declare-fun b!366565 () Bool)

(declare-fun res!163883 () Bool)

(assert (=> b!366565 (=> (not res!163883) (not e!225179))))

(assert (=> b!366565 (= res!163883 (= (originalCharacters!840 (h!9536 tokens!465)) (list!1781 (dynLambda!2350 (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))) (value!27030 (h!9536 tokens!465))))))))

(declare-fun b!366566 () Bool)

(assert (=> b!366566 (= e!225179 (= (size!3338 (h!9536 tokens!465)) (size!3344 (originalCharacters!840 (h!9536 tokens!465)))))))

(assert (= (and d!128524 res!163882) b!366565))

(assert (= (and b!366565 res!163883) b!366566))

(declare-fun b_lambda!14323 () Bool)

(assert (=> (not b_lambda!14323) (not b!366565)))

(assert (=> b!366565 t!56516))

(declare-fun b_and!36829 () Bool)

(assert (= b_and!36823 (and (=> t!56516 result!36260) b_and!36829)))

(assert (=> b!366565 t!56518))

(declare-fun b_and!36831 () Bool)

(assert (= b_and!36825 (and (=> t!56518 result!36262) b_and!36831)))

(assert (=> b!366565 t!56520))

(declare-fun b_and!36833 () Bool)

(assert (= b_and!36827 (and (=> t!56520 result!36264) b_and!36833)))

(declare-fun m!540889 () Bool)

(assert (=> d!128524 m!540889))

(assert (=> b!366565 m!540393))

(assert (=> b!366565 m!540393))

(declare-fun m!540891 () Bool)

(assert (=> b!366565 m!540891))

(declare-fun m!540893 () Bool)

(assert (=> b!366566 m!540893))

(assert (=> b!365845 d!128524))

(declare-fun d!128526 () Bool)

(assert (=> d!128526 (= (isDefined!812 lt!157894) (not (isEmpty!2919 lt!157894)))))

(declare-fun bs!44386 () Bool)

(assert (= bs!44386 d!128526))

(declare-fun m!540895 () Bool)

(assert (=> bs!44386 m!540895))

(assert (=> b!365844 d!128526))

(declare-fun b!366567 () Bool)

(declare-fun res!163889 () Bool)

(declare-fun e!225182 () Bool)

(assert (=> b!366567 (=> (not res!163889) (not e!225182))))

(declare-fun lt!158262 () Option!973)

(assert (=> b!366567 (= res!163889 (< (size!3344 (_2!2642 (get!1437 lt!158262))) (size!3344 lt!157898)))))

(declare-fun b!366568 () Bool)

(declare-fun res!163890 () Bool)

(assert (=> b!366568 (=> (not res!163890) (not e!225182))))

(assert (=> b!366568 (= res!163890 (= (++!1150 (list!1781 (charsOf!440 (_1!2642 (get!1437 lt!158262)))) (_2!2642 (get!1437 lt!158262))) lt!157898))))

(declare-fun b!366569 () Bool)

(declare-fun e!225180 () Option!973)

(declare-fun call!23140 () Option!973)

(assert (=> b!366569 (= e!225180 call!23140)))

(declare-fun b!366570 () Bool)

(declare-fun lt!158265 () Option!973)

(declare-fun lt!158263 () Option!973)

(assert (=> b!366570 (= e!225180 (ite (and ((_ is None!972) lt!158265) ((_ is None!972) lt!158263)) None!972 (ite ((_ is None!972) lt!158263) lt!158265 (ite ((_ is None!972) lt!158265) lt!158263 (ite (>= (size!3338 (_1!2642 (v!15075 lt!158265))) (size!3338 (_1!2642 (v!15075 lt!158263)))) lt!158265 lt!158263)))))))

(assert (=> b!366570 (= lt!158265 call!23140)))

(assert (=> b!366570 (= lt!158263 (maxPrefix!399 thiss!17480 (t!56488 rules!1920) lt!157898))))

(declare-fun d!128528 () Bool)

(declare-fun e!225181 () Bool)

(assert (=> d!128528 e!225181))

(declare-fun res!163887 () Bool)

(assert (=> d!128528 (=> res!163887 e!225181)))

(assert (=> d!128528 (= res!163887 (isEmpty!2919 lt!158262))))

(assert (=> d!128528 (= lt!158262 e!225180)))

(declare-fun c!72188 () Bool)

(assert (=> d!128528 (= c!72188 (and ((_ is Cons!4138) rules!1920) ((_ is Nil!4138) (t!56488 rules!1920))))))

(declare-fun lt!158264 () Unit!6490)

(declare-fun lt!158266 () Unit!6490)

(assert (=> d!128528 (= lt!158264 lt!158266)))

(assert (=> d!128528 (isPrefix!457 lt!157898 lt!157898)))

(assert (=> d!128528 (= lt!158266 (lemmaIsPrefixRefl!251 lt!157898 lt!157898))))

(assert (=> d!128528 (rulesValidInductive!246 thiss!17480 rules!1920)))

(assert (=> d!128528 (= (maxPrefix!399 thiss!17480 rules!1920 lt!157898) lt!158262)))

(declare-fun b!366571 () Bool)

(declare-fun res!163886 () Bool)

(assert (=> b!366571 (=> (not res!163886) (not e!225182))))

(assert (=> b!366571 (= res!163886 (= (list!1781 (charsOf!440 (_1!2642 (get!1437 lt!158262)))) (originalCharacters!840 (_1!2642 (get!1437 lt!158262)))))))

(declare-fun bm!23135 () Bool)

(assert (=> bm!23135 (= call!23140 (maxPrefixOneRule!185 thiss!17480 (h!9535 rules!1920) lt!157898))))

(declare-fun b!366572 () Bool)

(declare-fun res!163888 () Bool)

(assert (=> b!366572 (=> (not res!163888) (not e!225182))))

(assert (=> b!366572 (= res!163888 (matchR!339 (regex!797 (rule!1438 (_1!2642 (get!1437 lt!158262)))) (list!1781 (charsOf!440 (_1!2642 (get!1437 lt!158262))))))))

(declare-fun b!366573 () Bool)

(declare-fun res!163884 () Bool)

(assert (=> b!366573 (=> (not res!163884) (not e!225182))))

(assert (=> b!366573 (= res!163884 (= (value!27030 (_1!2642 (get!1437 lt!158262))) (apply!953 (transformation!797 (rule!1438 (_1!2642 (get!1437 lt!158262)))) (seqFromList!959 (originalCharacters!840 (_1!2642 (get!1437 lt!158262)))))))))

(declare-fun b!366574 () Bool)

(assert (=> b!366574 (= e!225181 e!225182)))

(declare-fun res!163885 () Bool)

(assert (=> b!366574 (=> (not res!163885) (not e!225182))))

(assert (=> b!366574 (= res!163885 (isDefined!812 lt!158262))))

(declare-fun b!366575 () Bool)

(assert (=> b!366575 (= e!225182 (contains!840 rules!1920 (rule!1438 (_1!2642 (get!1437 lt!158262)))))))

(assert (= (and d!128528 c!72188) b!366569))

(assert (= (and d!128528 (not c!72188)) b!366570))

(assert (= (or b!366569 b!366570) bm!23135))

(assert (= (and d!128528 (not res!163887)) b!366574))

(assert (= (and b!366574 res!163885) b!366571))

(assert (= (and b!366571 res!163886) b!366567))

(assert (= (and b!366567 res!163889) b!366568))

(assert (= (and b!366568 res!163890) b!366573))

(assert (= (and b!366573 res!163884) b!366572))

(assert (= (and b!366572 res!163888) b!366575))

(declare-fun m!540897 () Bool)

(assert (=> b!366570 m!540897))

(declare-fun m!540899 () Bool)

(assert (=> b!366572 m!540899))

(declare-fun m!540901 () Bool)

(assert (=> b!366572 m!540901))

(assert (=> b!366572 m!540901))

(declare-fun m!540903 () Bool)

(assert (=> b!366572 m!540903))

(assert (=> b!366572 m!540903))

(declare-fun m!540905 () Bool)

(assert (=> b!366572 m!540905))

(assert (=> b!366573 m!540899))

(declare-fun m!540907 () Bool)

(assert (=> b!366573 m!540907))

(assert (=> b!366573 m!540907))

(declare-fun m!540909 () Bool)

(assert (=> b!366573 m!540909))

(assert (=> b!366571 m!540899))

(assert (=> b!366571 m!540901))

(assert (=> b!366571 m!540901))

(assert (=> b!366571 m!540903))

(declare-fun m!540911 () Bool)

(assert (=> bm!23135 m!540911))

(assert (=> b!366567 m!540899))

(declare-fun m!540913 () Bool)

(assert (=> b!366567 m!540913))

(declare-fun m!540915 () Bool)

(assert (=> b!366567 m!540915))

(declare-fun m!540917 () Bool)

(assert (=> b!366574 m!540917))

(assert (=> b!366575 m!540899))

(declare-fun m!540919 () Bool)

(assert (=> b!366575 m!540919))

(assert (=> b!366568 m!540899))

(assert (=> b!366568 m!540901))

(assert (=> b!366568 m!540901))

(assert (=> b!366568 m!540903))

(assert (=> b!366568 m!540903))

(declare-fun m!540921 () Bool)

(assert (=> b!366568 m!540921))

(declare-fun m!540923 () Bool)

(assert (=> d!128528 m!540923))

(declare-fun m!540925 () Bool)

(assert (=> d!128528 m!540925))

(declare-fun m!540927 () Bool)

(assert (=> d!128528 m!540927))

(assert (=> d!128528 m!540727))

(assert (=> b!365844 d!128528))

(declare-fun d!128530 () Bool)

(declare-fun lt!158269 () Int)

(declare-fun size!3345 (List!4149) Int)

(assert (=> d!128530 (= lt!158269 (size!3345 (list!1784 (_1!2641 lt!157912))))))

(declare-fun size!3346 (Conc!1417) Int)

(assert (=> d!128530 (= lt!158269 (size!3346 (c!72030 (_1!2641 lt!157912))))))

(assert (=> d!128530 (= (size!3339 (_1!2641 lt!157912)) lt!158269)))

(declare-fun bs!44387 () Bool)

(assert (= bs!44387 d!128530))

(assert (=> bs!44387 m!540851))

(assert (=> bs!44387 m!540851))

(declare-fun m!540929 () Bool)

(assert (=> bs!44387 m!540929))

(declare-fun m!540931 () Bool)

(assert (=> bs!44387 m!540931))

(assert (=> b!365864 d!128530))

(declare-fun d!128532 () Bool)

(declare-fun lt!158272 () Bool)

(assert (=> d!128532 (= lt!158272 (select (content!649 (usedCharacters!98 (regex!797 (rule!1438 lt!157892)))) (head!996 lt!157896)))))

(declare-fun e!225188 () Bool)

(assert (=> d!128532 (= lt!158272 e!225188)))

(declare-fun res!163896 () Bool)

(assert (=> d!128532 (=> (not res!163896) (not e!225188))))

(assert (=> d!128532 (= res!163896 ((_ is Cons!4137) (usedCharacters!98 (regex!797 (rule!1438 lt!157892)))))))

(assert (=> d!128532 (= (contains!837 (usedCharacters!98 (regex!797 (rule!1438 lt!157892))) (head!996 lt!157896)) lt!158272)))

(declare-fun b!366580 () Bool)

(declare-fun e!225187 () Bool)

(assert (=> b!366580 (= e!225188 e!225187)))

(declare-fun res!163895 () Bool)

(assert (=> b!366580 (=> res!163895 e!225187)))

(assert (=> b!366580 (= res!163895 (= (h!9534 (usedCharacters!98 (regex!797 (rule!1438 lt!157892)))) (head!996 lt!157896)))))

(declare-fun b!366581 () Bool)

(assert (=> b!366581 (= e!225187 (contains!837 (t!56487 (usedCharacters!98 (regex!797 (rule!1438 lt!157892)))) (head!996 lt!157896)))))

(assert (= (and d!128532 res!163896) b!366580))

(assert (= (and b!366580 (not res!163895)) b!366581))

(assert (=> d!128532 m!539651))

(declare-fun m!540933 () Bool)

(assert (=> d!128532 m!540933))

(assert (=> d!128532 m!539653))

(declare-fun m!540935 () Bool)

(assert (=> d!128532 m!540935))

(assert (=> b!366581 m!539653))

(declare-fun m!540937 () Bool)

(assert (=> b!366581 m!540937))

(assert (=> b!365864 d!128532))

(declare-fun d!128534 () Bool)

(declare-fun lt!158273 () BalanceConc!2840)

(assert (=> d!128534 (= (list!1781 lt!158273) (originalCharacters!840 lt!157892))))

(assert (=> d!128534 (= lt!158273 (dynLambda!2350 (toChars!1435 (transformation!797 (rule!1438 lt!157892))) (value!27030 lt!157892)))))

(assert (=> d!128534 (= (charsOf!440 lt!157892) lt!158273)))

(declare-fun b_lambda!14325 () Bool)

(assert (=> (not b_lambda!14325) (not d!128534)))

(declare-fun t!56538 () Bool)

(declare-fun tb!32131 () Bool)

(assert (=> (and b!365856 (= (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))) (toChars!1435 (transformation!797 (rule!1438 lt!157892)))) t!56538) tb!32131))

(declare-fun b!366582 () Bool)

(declare-fun e!225189 () Bool)

(declare-fun tp!116045 () Bool)

(assert (=> b!366582 (= e!225189 (and (inv!5145 (c!72028 (dynLambda!2350 (toChars!1435 (transformation!797 (rule!1438 lt!157892))) (value!27030 lt!157892)))) tp!116045))))

(declare-fun result!36278 () Bool)

(assert (=> tb!32131 (= result!36278 (and (inv!5146 (dynLambda!2350 (toChars!1435 (transformation!797 (rule!1438 lt!157892))) (value!27030 lt!157892))) e!225189))))

(assert (= tb!32131 b!366582))

(declare-fun m!540939 () Bool)

(assert (=> b!366582 m!540939))

(declare-fun m!540941 () Bool)

(assert (=> tb!32131 m!540941))

(assert (=> d!128534 t!56538))

(declare-fun b_and!36835 () Bool)

(assert (= b_and!36829 (and (=> t!56538 result!36278) b_and!36835)))

(declare-fun t!56540 () Bool)

(declare-fun tb!32133 () Bool)

(assert (=> (and b!365849 (= (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))) (toChars!1435 (transformation!797 (rule!1438 lt!157892)))) t!56540) tb!32133))

(declare-fun result!36280 () Bool)

(assert (= result!36280 result!36278))

(assert (=> d!128534 t!56540))

(declare-fun b_and!36837 () Bool)

(assert (= b_and!36831 (and (=> t!56540 result!36280) b_and!36837)))

(declare-fun tb!32135 () Bool)

(declare-fun t!56542 () Bool)

(assert (=> (and b!365865 (= (toChars!1435 (transformation!797 (h!9535 rules!1920))) (toChars!1435 (transformation!797 (rule!1438 lt!157892)))) t!56542) tb!32135))

(declare-fun result!36282 () Bool)

(assert (= result!36282 result!36278))

(assert (=> d!128534 t!56542))

(declare-fun b_and!36839 () Bool)

(assert (= b_and!36833 (and (=> t!56542 result!36282) b_and!36839)))

(declare-fun m!540943 () Bool)

(assert (=> d!128534 m!540943))

(declare-fun m!540945 () Bool)

(assert (=> d!128534 m!540945))

(assert (=> b!365864 d!128534))

(declare-fun d!128536 () Bool)

(assert (=> d!128536 (= (head!996 lt!157896) (h!9534 lt!157896))))

(assert (=> b!365864 d!128536))

(declare-fun d!128538 () Bool)

(declare-fun lt!158274 () BalanceConc!2840)

(assert (=> d!128538 (= (list!1781 lt!158274) (printList!357 thiss!17480 (list!1784 lt!157915)))))

(assert (=> d!128538 (= lt!158274 (printTailRec!369 thiss!17480 lt!157915 0 (BalanceConc!2841 Empty!1416)))))

(assert (=> d!128538 (= (print!408 thiss!17480 lt!157915) lt!158274)))

(declare-fun bs!44388 () Bool)

(assert (= bs!44388 d!128538))

(declare-fun m!540947 () Bool)

(assert (=> bs!44388 m!540947))

(declare-fun m!540949 () Bool)

(assert (=> bs!44388 m!540949))

(assert (=> bs!44388 m!540949))

(declare-fun m!540951 () Bool)

(assert (=> bs!44388 m!540951))

(assert (=> bs!44388 m!539675))

(assert (=> b!365864 d!128538))

(declare-fun b!366593 () Bool)

(declare-fun e!225196 () Bool)

(assert (=> b!366593 (= e!225196 (isPrefix!457 (tail!566 lt!157931) (tail!566 lt!157905)))))

(declare-fun b!366592 () Bool)

(declare-fun res!163906 () Bool)

(assert (=> b!366592 (=> (not res!163906) (not e!225196))))

(assert (=> b!366592 (= res!163906 (= (head!996 lt!157931) (head!996 lt!157905)))))

(declare-fun b!366594 () Bool)

(declare-fun e!225197 () Bool)

(assert (=> b!366594 (= e!225197 (>= (size!3344 lt!157905) (size!3344 lt!157931)))))

(declare-fun b!366591 () Bool)

(declare-fun e!225198 () Bool)

(assert (=> b!366591 (= e!225198 e!225196)))

(declare-fun res!163905 () Bool)

(assert (=> b!366591 (=> (not res!163905) (not e!225196))))

(assert (=> b!366591 (= res!163905 (not ((_ is Nil!4137) lt!157905)))))

(declare-fun d!128540 () Bool)

(assert (=> d!128540 e!225197))

(declare-fun res!163907 () Bool)

(assert (=> d!128540 (=> res!163907 e!225197)))

(declare-fun lt!158277 () Bool)

(assert (=> d!128540 (= res!163907 (not lt!158277))))

(assert (=> d!128540 (= lt!158277 e!225198)))

(declare-fun res!163908 () Bool)

(assert (=> d!128540 (=> res!163908 e!225198)))

(assert (=> d!128540 (= res!163908 ((_ is Nil!4137) lt!157931))))

(assert (=> d!128540 (= (isPrefix!457 lt!157931 lt!157905) lt!158277)))

(assert (= (and d!128540 (not res!163908)) b!366591))

(assert (= (and b!366591 res!163905) b!366592))

(assert (= (and b!366592 res!163906) b!366593))

(assert (= (and d!128540 (not res!163907)) b!366594))

(assert (=> b!366593 m!540749))

(declare-fun m!540953 () Bool)

(assert (=> b!366593 m!540953))

(assert (=> b!366593 m!540749))

(assert (=> b!366593 m!540953))

(declare-fun m!540955 () Bool)

(assert (=> b!366593 m!540955))

(assert (=> b!366592 m!540755))

(declare-fun m!540957 () Bool)

(assert (=> b!366592 m!540957))

(declare-fun m!540959 () Bool)

(assert (=> b!366594 m!540959))

(assert (=> b!366594 m!540233))

(assert (=> b!365864 d!128540))

(declare-fun d!128542 () Bool)

(declare-fun lt!158279 () Bool)

(declare-fun e!225199 () Bool)

(assert (=> d!128542 (= lt!158279 e!225199)))

(declare-fun res!163909 () Bool)

(assert (=> d!128542 (=> (not res!163909) (not e!225199))))

(assert (=> d!128542 (= res!163909 (= (list!1784 (_1!2641 (lex!475 thiss!17480 rules!1920 (print!408 thiss!17480 (singletonSeq!343 lt!157892))))) (list!1784 (singletonSeq!343 lt!157892))))))

(declare-fun e!225200 () Bool)

(assert (=> d!128542 (= lt!158279 e!225200)))

(declare-fun res!163910 () Bool)

(assert (=> d!128542 (=> (not res!163910) (not e!225200))))

(declare-fun lt!158278 () tuple2!4850)

(assert (=> d!128542 (= res!163910 (= (size!3339 (_1!2641 lt!158278)) 1))))

(assert (=> d!128542 (= lt!158278 (lex!475 thiss!17480 rules!1920 (print!408 thiss!17480 (singletonSeq!343 lt!157892))))))

(assert (=> d!128542 (not (isEmpty!2914 rules!1920))))

(assert (=> d!128542 (= (rulesProduceIndividualToken!432 thiss!17480 rules!1920 lt!157892) lt!158279)))

(declare-fun b!366595 () Bool)

(declare-fun res!163911 () Bool)

(assert (=> b!366595 (=> (not res!163911) (not e!225200))))

(assert (=> b!366595 (= res!163911 (= (apply!948 (_1!2641 lt!158278) 0) lt!157892))))

(declare-fun b!366596 () Bool)

(assert (=> b!366596 (= e!225200 (isEmpty!2911 (_2!2641 lt!158278)))))

(declare-fun b!366597 () Bool)

(assert (=> b!366597 (= e!225199 (isEmpty!2911 (_2!2641 (lex!475 thiss!17480 rules!1920 (print!408 thiss!17480 (singletonSeq!343 lt!157892))))))))

(assert (= (and d!128542 res!163910) b!366595))

(assert (= (and b!366595 res!163911) b!366596))

(assert (= (and d!128542 res!163909) b!366597))

(assert (=> d!128542 m!539785))

(assert (=> d!128542 m!539611))

(declare-fun m!540961 () Bool)

(assert (=> d!128542 m!540961))

(assert (=> d!128542 m!539611))

(declare-fun m!540963 () Bool)

(assert (=> d!128542 m!540963))

(declare-fun m!540965 () Bool)

(assert (=> d!128542 m!540965))

(declare-fun m!540967 () Bool)

(assert (=> d!128542 m!540967))

(assert (=> d!128542 m!540961))

(declare-fun m!540969 () Bool)

(assert (=> d!128542 m!540969))

(assert (=> d!128542 m!539611))

(declare-fun m!540971 () Bool)

(assert (=> b!366595 m!540971))

(declare-fun m!540973 () Bool)

(assert (=> b!366596 m!540973))

(assert (=> b!366597 m!539611))

(assert (=> b!366597 m!539611))

(assert (=> b!366597 m!540961))

(assert (=> b!366597 m!540961))

(assert (=> b!366597 m!540969))

(declare-fun m!540975 () Bool)

(assert (=> b!366597 m!540975))

(assert (=> b!365864 d!128542))

(declare-fun d!128544 () Bool)

(declare-fun lt!158284 () BalanceConc!2840)

(assert (=> d!128544 (= (list!1781 lt!158284) (printListTailRec!173 thiss!17480 (dropList!208 lt!157917 0) (list!1781 (BalanceConc!2841 Empty!1416))))))

(declare-fun e!225202 () BalanceConc!2840)

(assert (=> d!128544 (= lt!158284 e!225202)))

(declare-fun c!72189 () Bool)

(assert (=> d!128544 (= c!72189 (>= 0 (size!3339 lt!157917)))))

(declare-fun e!225201 () Bool)

(assert (=> d!128544 e!225201))

(declare-fun res!163912 () Bool)

(assert (=> d!128544 (=> (not res!163912) (not e!225201))))

(assert (=> d!128544 (= res!163912 (>= 0 0))))

(assert (=> d!128544 (= (printTailRec!369 thiss!17480 lt!157917 0 (BalanceConc!2841 Empty!1416)) lt!158284)))

(declare-fun b!366598 () Bool)

(assert (=> b!366598 (= e!225201 (<= 0 (size!3339 lt!157917)))))

(declare-fun b!366599 () Bool)

(assert (=> b!366599 (= e!225202 (BalanceConc!2841 Empty!1416))))

(declare-fun b!366600 () Bool)

(assert (=> b!366600 (= e!225202 (printTailRec!369 thiss!17480 lt!157917 (+ 0 1) (++!1152 (BalanceConc!2841 Empty!1416) (charsOf!440 (apply!948 lt!157917 0)))))))

(declare-fun lt!158283 () List!4149)

(assert (=> b!366600 (= lt!158283 (list!1784 lt!157917))))

(declare-fun lt!158280 () Unit!6490)

(assert (=> b!366600 (= lt!158280 (lemmaDropApply!248 lt!158283 0))))

(assert (=> b!366600 (= (head!995 (drop!271 lt!158283 0)) (apply!952 lt!158283 0))))

(declare-fun lt!158281 () Unit!6490)

(assert (=> b!366600 (= lt!158281 lt!158280)))

(declare-fun lt!158286 () List!4149)

(assert (=> b!366600 (= lt!158286 (list!1784 lt!157917))))

(declare-fun lt!158282 () Unit!6490)

(assert (=> b!366600 (= lt!158282 (lemmaDropTail!240 lt!158286 0))))

(assert (=> b!366600 (= (tail!564 (drop!271 lt!158286 0)) (drop!271 lt!158286 (+ 0 1)))))

(declare-fun lt!158285 () Unit!6490)

(assert (=> b!366600 (= lt!158285 lt!158282)))

(assert (= (and d!128544 res!163912) b!366598))

(assert (= (and d!128544 c!72189) b!366599))

(assert (= (and d!128544 (not c!72189)) b!366600))

(declare-fun m!540977 () Bool)

(assert (=> d!128544 m!540977))

(assert (=> d!128544 m!540549))

(declare-fun m!540979 () Bool)

(assert (=> d!128544 m!540979))

(assert (=> d!128544 m!540549))

(declare-fun m!540981 () Bool)

(assert (=> d!128544 m!540981))

(declare-fun m!540983 () Bool)

(assert (=> d!128544 m!540983))

(assert (=> d!128544 m!540977))

(assert (=> b!366598 m!540983))

(declare-fun m!540985 () Bool)

(assert (=> b!366600 m!540985))

(declare-fun m!540987 () Bool)

(assert (=> b!366600 m!540987))

(declare-fun m!540989 () Bool)

(assert (=> b!366600 m!540989))

(declare-fun m!540991 () Bool)

(assert (=> b!366600 m!540991))

(assert (=> b!366600 m!540985))

(declare-fun m!540993 () Bool)

(assert (=> b!366600 m!540993))

(assert (=> b!366600 m!540987))

(declare-fun m!540995 () Bool)

(assert (=> b!366600 m!540995))

(assert (=> b!366600 m!540995))

(declare-fun m!540997 () Bool)

(assert (=> b!366600 m!540997))

(declare-fun m!540999 () Bool)

(assert (=> b!366600 m!540999))

(declare-fun m!541001 () Bool)

(assert (=> b!366600 m!541001))

(assert (=> b!366600 m!540999))

(declare-fun m!541003 () Bool)

(assert (=> b!366600 m!541003))

(assert (=> b!366600 m!540989))

(declare-fun m!541005 () Bool)

(assert (=> b!366600 m!541005))

(declare-fun m!541007 () Bool)

(assert (=> b!366600 m!541007))

(declare-fun m!541009 () Bool)

(assert (=> b!366600 m!541009))

(assert (=> b!365864 d!128544))

(declare-fun d!128546 () Bool)

(declare-fun isEmpty!2922 (Option!974) Bool)

(assert (=> d!128546 (= (isDefined!813 lt!157924) (not (isEmpty!2922 lt!157924)))))

(declare-fun bs!44389 () Bool)

(assert (= bs!44389 d!128546))

(declare-fun m!541011 () Bool)

(assert (=> bs!44389 m!541011))

(assert (=> b!365864 d!128546))

(declare-fun b!366613 () Bool)

(declare-fun e!225211 () Bool)

(declare-fun lt!158293 () tuple2!4850)

(assert (=> b!366613 (= e!225211 (not (isEmpty!2910 (_1!2641 lt!158293))))))

(declare-fun b!366614 () Bool)

(declare-fun e!225212 () Bool)

(assert (=> b!366614 (= e!225212 (= (_2!2641 lt!158293) lt!157919))))

(declare-fun b!366615 () Bool)

(declare-fun res!163922 () Bool)

(declare-fun e!225213 () Bool)

(assert (=> b!366615 (=> (not res!163922) (not e!225213))))

(declare-datatypes ((tuple2!4858 0))(
  ( (tuple2!4859 (_1!2645 List!4149) (_2!2645 List!4147)) )
))
(declare-fun lexList!253 (LexerInterface!683 List!4148 List!4147) tuple2!4858)

(assert (=> b!366615 (= res!163922 (= (list!1784 (_1!2641 lt!158293)) (_1!2645 (lexList!253 thiss!17480 rules!1920 (list!1781 lt!157919)))))))

(declare-fun d!128548 () Bool)

(assert (=> d!128548 e!225213))

(declare-fun res!163923 () Bool)

(assert (=> d!128548 (=> (not res!163923) (not e!225213))))

(assert (=> d!128548 (= res!163923 e!225212)))

(declare-fun c!72192 () Bool)

(assert (=> d!128548 (= c!72192 (> (size!3339 (_1!2641 lt!158293)) 0))))

(declare-fun lexTailRecV2!220 (LexerInterface!683 List!4148 BalanceConc!2840 BalanceConc!2840 BalanceConc!2840 BalanceConc!2842) tuple2!4850)

(assert (=> d!128548 (= lt!158293 (lexTailRecV2!220 thiss!17480 rules!1920 lt!157919 (BalanceConc!2841 Empty!1416) lt!157919 (BalanceConc!2843 Empty!1417)))))

(assert (=> d!128548 (= (lex!475 thiss!17480 rules!1920 lt!157919) lt!158293)))

(declare-fun b!366616 () Bool)

(assert (=> b!366616 (= e!225212 e!225211)))

(declare-fun res!163921 () Bool)

(declare-fun size!3347 (BalanceConc!2840) Int)

(assert (=> b!366616 (= res!163921 (< (size!3347 (_2!2641 lt!158293)) (size!3347 lt!157919)))))

(assert (=> b!366616 (=> (not res!163921) (not e!225211))))

(declare-fun b!366617 () Bool)

(assert (=> b!366617 (= e!225213 (= (list!1781 (_2!2641 lt!158293)) (_2!2645 (lexList!253 thiss!17480 rules!1920 (list!1781 lt!157919)))))))

(assert (= (and d!128548 c!72192) b!366616))

(assert (= (and d!128548 (not c!72192)) b!366614))

(assert (= (and b!366616 res!163921) b!366613))

(assert (= (and d!128548 res!163923) b!366615))

(assert (= (and b!366615 res!163922) b!366617))

(declare-fun m!541013 () Bool)

(assert (=> b!366613 m!541013))

(declare-fun m!541015 () Bool)

(assert (=> b!366616 m!541015))

(declare-fun m!541017 () Bool)

(assert (=> b!366616 m!541017))

(declare-fun m!541019 () Bool)

(assert (=> b!366617 m!541019))

(declare-fun m!541021 () Bool)

(assert (=> b!366617 m!541021))

(assert (=> b!366617 m!541021))

(declare-fun m!541023 () Bool)

(assert (=> b!366617 m!541023))

(declare-fun m!541025 () Bool)

(assert (=> b!366615 m!541025))

(assert (=> b!366615 m!541021))

(assert (=> b!366615 m!541021))

(assert (=> b!366615 m!541023))

(declare-fun m!541027 () Bool)

(assert (=> d!128548 m!541027))

(declare-fun m!541029 () Bool)

(assert (=> d!128548 m!541029))

(assert (=> b!365864 d!128548))

(declare-fun b!366646 () Bool)

(declare-fun e!225233 () Option!974)

(assert (=> b!366646 (= e!225233 None!973)))

(declare-fun b!366647 () Bool)

(declare-fun e!225234 () Option!974)

(assert (=> b!366647 (= e!225234 e!225233)))

(declare-fun c!72203 () Bool)

(assert (=> b!366647 (= c!72203 (and ((_ is Cons!4138) rules!1920) (not (= (tag!1023 (h!9535 rules!1920)) (tag!1023 (rule!1438 lt!157892))))))))

(declare-fun b!366648 () Bool)

(declare-fun e!225235 () Bool)

(declare-fun e!225232 () Bool)

(assert (=> b!366648 (= e!225235 e!225232)))

(declare-fun res!163932 () Bool)

(assert (=> b!366648 (=> (not res!163932) (not e!225232))))

(declare-fun lt!158326 () Option!974)

(assert (=> b!366648 (= res!163932 (contains!840 rules!1920 (get!1438 lt!158326)))))

(declare-fun b!366649 () Bool)

(assert (=> b!366649 (= e!225232 (= (tag!1023 (get!1438 lt!158326)) (tag!1023 (rule!1438 lt!157892))))))

(declare-fun b!366650 () Bool)

(assert (=> b!366650 (= e!225234 (Some!973 (h!9535 rules!1920)))))

(declare-fun d!128550 () Bool)

(assert (=> d!128550 e!225235))

(declare-fun res!163933 () Bool)

(assert (=> d!128550 (=> res!163933 e!225235)))

(assert (=> d!128550 (= res!163933 (isEmpty!2922 lt!158326))))

(assert (=> d!128550 (= lt!158326 e!225234)))

(declare-fun c!72204 () Bool)

(assert (=> d!128550 (= c!72204 (and ((_ is Cons!4138) rules!1920) (= (tag!1023 (h!9535 rules!1920)) (tag!1023 (rule!1438 lt!157892)))))))

(assert (=> d!128550 (rulesInvariant!649 thiss!17480 rules!1920)))

(assert (=> d!128550 (= (getRuleFromTag!156 thiss!17480 rules!1920 (tag!1023 (rule!1438 lt!157892))) lt!158326)))

(declare-fun b!366651 () Bool)

(declare-fun lt!158324 () Unit!6490)

(declare-fun lt!158325 () Unit!6490)

(assert (=> b!366651 (= lt!158324 lt!158325)))

(assert (=> b!366651 (rulesInvariant!649 thiss!17480 (t!56488 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!50 (LexerInterface!683 Rule!1394 List!4148) Unit!6490)

(assert (=> b!366651 (= lt!158325 (lemmaInvariantOnRulesThenOnTail!50 thiss!17480 (h!9535 rules!1920) (t!56488 rules!1920)))))

(assert (=> b!366651 (= e!225233 (getRuleFromTag!156 thiss!17480 (t!56488 rules!1920) (tag!1023 (rule!1438 lt!157892))))))

(assert (= (and d!128550 c!72204) b!366650))

(assert (= (and d!128550 (not c!72204)) b!366647))

(assert (= (and b!366647 c!72203) b!366651))

(assert (= (and b!366647 (not c!72203)) b!366646))

(assert (= (and d!128550 (not res!163933)) b!366648))

(assert (= (and b!366648 res!163932) b!366649))

(declare-fun m!541031 () Bool)

(assert (=> b!366648 m!541031))

(assert (=> b!366648 m!541031))

(declare-fun m!541033 () Bool)

(assert (=> b!366648 m!541033))

(assert (=> b!366649 m!541031))

(declare-fun m!541035 () Bool)

(assert (=> d!128550 m!541035))

(assert (=> d!128550 m!539783))

(declare-fun m!541037 () Bool)

(assert (=> b!366651 m!541037))

(declare-fun m!541039 () Bool)

(assert (=> b!366651 m!541039))

(declare-fun m!541041 () Bool)

(assert (=> b!366651 m!541041))

(assert (=> b!365864 d!128550))

(declare-fun d!128552 () Bool)

(declare-fun e!225236 () Bool)

(assert (=> d!128552 e!225236))

(declare-fun res!163934 () Bool)

(assert (=> d!128552 (=> (not res!163934) (not e!225236))))

(declare-fun lt!158327 () BalanceConc!2842)

(assert (=> d!128552 (= res!163934 (= (list!1784 lt!158327) (Cons!4139 separatorToken!170 Nil!4139)))))

(assert (=> d!128552 (= lt!158327 (singleton!158 separatorToken!170))))

(assert (=> d!128552 (= (singletonSeq!343 separatorToken!170) lt!158327)))

(declare-fun b!366652 () Bool)

(assert (=> b!366652 (= e!225236 (isBalanced!417 (c!72030 lt!158327)))))

(assert (= (and d!128552 res!163934) b!366652))

(declare-fun m!541043 () Bool)

(assert (=> d!128552 m!541043))

(declare-fun m!541045 () Bool)

(assert (=> d!128552 m!541045))

(declare-fun m!541047 () Bool)

(assert (=> b!366652 m!541047))

(assert (=> b!365864 d!128552))

(declare-fun b!366653 () Bool)

(declare-fun e!225237 () Bool)

(declare-fun lt!158328 () tuple2!4850)

(assert (=> b!366653 (= e!225237 (not (isEmpty!2910 (_1!2641 lt!158328))))))

(declare-fun b!366654 () Bool)

(declare-fun e!225238 () Bool)

(assert (=> b!366654 (= e!225238 (= (_2!2641 lt!158328) lt!157895))))

(declare-fun b!366655 () Bool)

(declare-fun res!163936 () Bool)

(declare-fun e!225239 () Bool)

(assert (=> b!366655 (=> (not res!163936) (not e!225239))))

(assert (=> b!366655 (= res!163936 (= (list!1784 (_1!2641 lt!158328)) (_1!2645 (lexList!253 thiss!17480 rules!1920 (list!1781 lt!157895)))))))

(declare-fun d!128554 () Bool)

(assert (=> d!128554 e!225239))

(declare-fun res!163937 () Bool)

(assert (=> d!128554 (=> (not res!163937) (not e!225239))))

(assert (=> d!128554 (= res!163937 e!225238)))

(declare-fun c!72205 () Bool)

(assert (=> d!128554 (= c!72205 (> (size!3339 (_1!2641 lt!158328)) 0))))

(assert (=> d!128554 (= lt!158328 (lexTailRecV2!220 thiss!17480 rules!1920 lt!157895 (BalanceConc!2841 Empty!1416) lt!157895 (BalanceConc!2843 Empty!1417)))))

(assert (=> d!128554 (= (lex!475 thiss!17480 rules!1920 lt!157895) lt!158328)))

(declare-fun b!366656 () Bool)

(assert (=> b!366656 (= e!225238 e!225237)))

(declare-fun res!163935 () Bool)

(assert (=> b!366656 (= res!163935 (< (size!3347 (_2!2641 lt!158328)) (size!3347 lt!157895)))))

(assert (=> b!366656 (=> (not res!163935) (not e!225237))))

(declare-fun b!366657 () Bool)

(assert (=> b!366657 (= e!225239 (= (list!1781 (_2!2641 lt!158328)) (_2!2645 (lexList!253 thiss!17480 rules!1920 (list!1781 lt!157895)))))))

(assert (= (and d!128554 c!72205) b!366656))

(assert (= (and d!128554 (not c!72205)) b!366654))

(assert (= (and b!366656 res!163935) b!366653))

(assert (= (and d!128554 res!163937) b!366655))

(assert (= (and b!366655 res!163936) b!366657))

(declare-fun m!541049 () Bool)

(assert (=> b!366653 m!541049))

(declare-fun m!541051 () Bool)

(assert (=> b!366656 m!541051))

(declare-fun m!541053 () Bool)

(assert (=> b!366656 m!541053))

(declare-fun m!541055 () Bool)

(assert (=> b!366657 m!541055))

(declare-fun m!541057 () Bool)

(assert (=> b!366657 m!541057))

(assert (=> b!366657 m!541057))

(declare-fun m!541059 () Bool)

(assert (=> b!366657 m!541059))

(declare-fun m!541061 () Bool)

(assert (=> b!366655 m!541061))

(assert (=> b!366655 m!541057))

(assert (=> b!366655 m!541057))

(assert (=> b!366655 m!541059))

(declare-fun m!541063 () Bool)

(assert (=> d!128554 m!541063))

(declare-fun m!541065 () Bool)

(assert (=> d!128554 m!541065))

(assert (=> b!365864 d!128554))

(declare-fun d!128556 () Bool)

(assert (=> d!128556 (= (isEmpty!2913 (t!56489 tokens!465)) ((_ is Nil!4139) (t!56489 tokens!465)))))

(assert (=> b!365864 d!128556))

(declare-fun d!128558 () Bool)

(assert (=> d!128558 (= (isDefined!813 lt!157909) (not (isEmpty!2922 lt!157909)))))

(declare-fun bs!44390 () Bool)

(assert (= bs!44390 d!128558))

(declare-fun m!541067 () Bool)

(assert (=> bs!44390 m!541067))

(assert (=> b!365864 d!128558))

(declare-fun d!128560 () Bool)

(assert (=> d!128560 (isPrefix!457 lt!157931 (++!1150 lt!157931 lt!157903))))

(declare-fun lt!158345 () Unit!6490)

(declare-fun choose!2940 (List!4147 List!4147) Unit!6490)

(assert (=> d!128560 (= lt!158345 (choose!2940 lt!157931 lt!157903))))

(assert (=> d!128560 (= (lemmaConcatTwoListThenFirstIsPrefix!348 lt!157931 lt!157903) lt!158345)))

(declare-fun bs!44394 () Bool)

(assert (= bs!44394 d!128560))

(assert (=> bs!44394 m!539735))

(assert (=> bs!44394 m!539735))

(declare-fun m!541069 () Bool)

(assert (=> bs!44394 m!541069))

(declare-fun m!541071 () Bool)

(assert (=> bs!44394 m!541071))

(assert (=> b!365864 d!128560))

(declare-fun d!128562 () Bool)

(declare-fun e!225251 () Bool)

(assert (=> d!128562 e!225251))

(declare-fun res!163945 () Bool)

(assert (=> d!128562 (=> (not res!163945) (not e!225251))))

(assert (=> d!128562 (= res!163945 (isDefined!813 (getRuleFromTag!156 thiss!17480 rules!1920 (tag!1023 (rule!1438 separatorToken!170)))))))

(declare-fun lt!158348 () Unit!6490)

(declare-fun choose!2941 (LexerInterface!683 List!4148 List!4147 Token!1338) Unit!6490)

(assert (=> d!128562 (= lt!158348 (choose!2941 thiss!17480 rules!1920 lt!157904 separatorToken!170))))

(assert (=> d!128562 (rulesInvariant!649 thiss!17480 rules!1920)))

(assert (=> d!128562 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!156 thiss!17480 rules!1920 lt!157904 separatorToken!170) lt!158348)))

(declare-fun b!366674 () Bool)

(declare-fun res!163946 () Bool)

(assert (=> b!366674 (=> (not res!163946) (not e!225251))))

(assert (=> b!366674 (= res!163946 (matchR!339 (regex!797 (get!1438 (getRuleFromTag!156 thiss!17480 rules!1920 (tag!1023 (rule!1438 separatorToken!170))))) (list!1781 (charsOf!440 separatorToken!170))))))

(declare-fun b!366675 () Bool)

(assert (=> b!366675 (= e!225251 (= (rule!1438 separatorToken!170) (get!1438 (getRuleFromTag!156 thiss!17480 rules!1920 (tag!1023 (rule!1438 separatorToken!170))))))))

(assert (= (and d!128562 res!163945) b!366674))

(assert (= (and b!366674 res!163946) b!366675))

(assert (=> d!128562 m!539673))

(assert (=> d!128562 m!539673))

(declare-fun m!541135 () Bool)

(assert (=> d!128562 m!541135))

(declare-fun m!541137 () Bool)

(assert (=> d!128562 m!541137))

(assert (=> d!128562 m!539783))

(assert (=> b!366674 m!539673))

(assert (=> b!366674 m!539731))

(declare-fun m!541139 () Bool)

(assert (=> b!366674 m!541139))

(assert (=> b!366674 m!539673))

(declare-fun m!541141 () Bool)

(assert (=> b!366674 m!541141))

(assert (=> b!366674 m!539719))

(assert (=> b!366674 m!539731))

(assert (=> b!366674 m!539719))

(assert (=> b!366675 m!539673))

(assert (=> b!366675 m!539673))

(assert (=> b!366675 m!541141))

(assert (=> b!365864 d!128562))

(declare-fun d!128568 () Bool)

(declare-fun e!225252 () Bool)

(assert (=> d!128568 e!225252))

(declare-fun res!163947 () Bool)

(assert (=> d!128568 (=> (not res!163947) (not e!225252))))

(assert (=> d!128568 (= res!163947 (isDefined!813 (getRuleFromTag!156 thiss!17480 rules!1920 (tag!1023 (rule!1438 lt!157892)))))))

(declare-fun lt!158349 () Unit!6490)

(assert (=> d!128568 (= lt!158349 (choose!2941 thiss!17480 rules!1920 lt!157896 lt!157892))))

(assert (=> d!128568 (rulesInvariant!649 thiss!17480 rules!1920)))

(assert (=> d!128568 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!156 thiss!17480 rules!1920 lt!157896 lt!157892) lt!158349)))

(declare-fun b!366676 () Bool)

(declare-fun res!163948 () Bool)

(assert (=> b!366676 (=> (not res!163948) (not e!225252))))

(assert (=> b!366676 (= res!163948 (matchR!339 (regex!797 (get!1438 (getRuleFromTag!156 thiss!17480 rules!1920 (tag!1023 (rule!1438 lt!157892))))) (list!1781 (charsOf!440 lt!157892))))))

(declare-fun b!366677 () Bool)

(assert (=> b!366677 (= e!225252 (= (rule!1438 lt!157892) (get!1438 (getRuleFromTag!156 thiss!17480 rules!1920 (tag!1023 (rule!1438 lt!157892))))))))

(assert (= (and d!128568 res!163947) b!366676))

(assert (= (and b!366676 res!163948) b!366677))

(assert (=> d!128568 m!539625))

(assert (=> d!128568 m!539625))

(declare-fun m!541143 () Bool)

(assert (=> d!128568 m!541143))

(declare-fun m!541145 () Bool)

(assert (=> d!128568 m!541145))

(assert (=> d!128568 m!539783))

(assert (=> b!366676 m!539625))

(assert (=> b!366676 m!539633))

(declare-fun m!541147 () Bool)

(assert (=> b!366676 m!541147))

(assert (=> b!366676 m!539625))

(declare-fun m!541149 () Bool)

(assert (=> b!366676 m!541149))

(assert (=> b!366676 m!539631))

(assert (=> b!366676 m!539633))

(assert (=> b!366676 m!539631))

(assert (=> b!366677 m!539625))

(assert (=> b!366677 m!539625))

(assert (=> b!366677 m!541149))

(assert (=> b!365864 d!128568))

(declare-fun d!128570 () Bool)

(assert (=> d!128570 (dynLambda!2351 lambda!11384 lt!157892)))

(declare-fun lt!158352 () Unit!6490)

(declare-fun choose!2942 (List!4149 Int Token!1338) Unit!6490)

(assert (=> d!128570 (= lt!158352 (choose!2942 tokens!465 lambda!11384 lt!157892))))

(declare-fun e!225255 () Bool)

(assert (=> d!128570 e!225255))

(declare-fun res!163951 () Bool)

(assert (=> d!128570 (=> (not res!163951) (not e!225255))))

(assert (=> d!128570 (= res!163951 (forall!1136 tokens!465 lambda!11384))))

(assert (=> d!128570 (= (forallContained!350 tokens!465 lambda!11384 lt!157892) lt!158352)))

(declare-fun b!366680 () Bool)

(declare-fun contains!841 (List!4149 Token!1338) Bool)

(assert (=> b!366680 (= e!225255 (contains!841 tokens!465 lt!157892))))

(assert (= (and d!128570 res!163951) b!366680))

(declare-fun b_lambda!14327 () Bool)

(assert (=> (not b_lambda!14327) (not d!128570)))

(declare-fun m!541151 () Bool)

(assert (=> d!128570 m!541151))

(declare-fun m!541153 () Bool)

(assert (=> d!128570 m!541153))

(declare-fun m!541155 () Bool)

(assert (=> d!128570 m!541155))

(declare-fun m!541157 () Bool)

(assert (=> b!366680 m!541157))

(assert (=> b!365864 d!128570))

(declare-fun d!128572 () Bool)

(assert (=> d!128572 (= (get!1437 (maxPrefix!399 thiss!17480 rules!1920 lt!157898)) (v!15075 (maxPrefix!399 thiss!17480 rules!1920 lt!157898)))))

(assert (=> b!365864 d!128572))

(declare-fun d!128574 () Bool)

(assert (=> d!128574 (= (isEmpty!2913 tokens!465) ((_ is Nil!4139) tokens!465))))

(assert (=> b!365864 d!128574))

(declare-fun d!128576 () Bool)

(declare-fun e!225256 () Bool)

(assert (=> d!128576 e!225256))

(declare-fun res!163952 () Bool)

(assert (=> d!128576 (=> (not res!163952) (not e!225256))))

(declare-fun lt!158353 () BalanceConc!2842)

(assert (=> d!128576 (= res!163952 (= (list!1784 lt!158353) (Cons!4139 lt!157892 Nil!4139)))))

(assert (=> d!128576 (= lt!158353 (singleton!158 lt!157892))))

(assert (=> d!128576 (= (singletonSeq!343 lt!157892) lt!158353)))

(declare-fun b!366681 () Bool)

(assert (=> b!366681 (= e!225256 (isBalanced!417 (c!72030 lt!158353)))))

(assert (= (and d!128576 res!163952) b!366681))

(declare-fun m!541159 () Bool)

(assert (=> d!128576 m!541159))

(declare-fun m!541161 () Bool)

(assert (=> d!128576 m!541161))

(declare-fun m!541163 () Bool)

(assert (=> b!366681 m!541163))

(assert (=> b!365864 d!128576))

(declare-fun d!128578 () Bool)

(declare-fun lt!158358 () BalanceConc!2840)

(assert (=> d!128578 (= (list!1781 lt!158358) (printListTailRec!173 thiss!17480 (dropList!208 lt!157915 0) (list!1781 (BalanceConc!2841 Empty!1416))))))

(declare-fun e!225258 () BalanceConc!2840)

(assert (=> d!128578 (= lt!158358 e!225258)))

(declare-fun c!72209 () Bool)

(assert (=> d!128578 (= c!72209 (>= 0 (size!3339 lt!157915)))))

(declare-fun e!225257 () Bool)

(assert (=> d!128578 e!225257))

(declare-fun res!163953 () Bool)

(assert (=> d!128578 (=> (not res!163953) (not e!225257))))

(assert (=> d!128578 (= res!163953 (>= 0 0))))

(assert (=> d!128578 (= (printTailRec!369 thiss!17480 lt!157915 0 (BalanceConc!2841 Empty!1416)) lt!158358)))

(declare-fun b!366682 () Bool)

(assert (=> b!366682 (= e!225257 (<= 0 (size!3339 lt!157915)))))

(declare-fun b!366683 () Bool)

(assert (=> b!366683 (= e!225258 (BalanceConc!2841 Empty!1416))))

(declare-fun b!366684 () Bool)

(assert (=> b!366684 (= e!225258 (printTailRec!369 thiss!17480 lt!157915 (+ 0 1) (++!1152 (BalanceConc!2841 Empty!1416) (charsOf!440 (apply!948 lt!157915 0)))))))

(declare-fun lt!158357 () List!4149)

(assert (=> b!366684 (= lt!158357 (list!1784 lt!157915))))

(declare-fun lt!158354 () Unit!6490)

(assert (=> b!366684 (= lt!158354 (lemmaDropApply!248 lt!158357 0))))

(assert (=> b!366684 (= (head!995 (drop!271 lt!158357 0)) (apply!952 lt!158357 0))))

(declare-fun lt!158355 () Unit!6490)

(assert (=> b!366684 (= lt!158355 lt!158354)))

(declare-fun lt!158360 () List!4149)

(assert (=> b!366684 (= lt!158360 (list!1784 lt!157915))))

(declare-fun lt!158356 () Unit!6490)

(assert (=> b!366684 (= lt!158356 (lemmaDropTail!240 lt!158360 0))))

(assert (=> b!366684 (= (tail!564 (drop!271 lt!158360 0)) (drop!271 lt!158360 (+ 0 1)))))

(declare-fun lt!158359 () Unit!6490)

(assert (=> b!366684 (= lt!158359 lt!158356)))

(assert (= (and d!128578 res!163953) b!366682))

(assert (= (and d!128578 c!72209) b!366683))

(assert (= (and d!128578 (not c!72209)) b!366684))

(declare-fun m!541165 () Bool)

(assert (=> d!128578 m!541165))

(assert (=> d!128578 m!540549))

(declare-fun m!541167 () Bool)

(assert (=> d!128578 m!541167))

(assert (=> d!128578 m!540549))

(declare-fun m!541169 () Bool)

(assert (=> d!128578 m!541169))

(declare-fun m!541171 () Bool)

(assert (=> d!128578 m!541171))

(assert (=> d!128578 m!541165))

(assert (=> b!366682 m!541171))

(declare-fun m!541173 () Bool)

(assert (=> b!366684 m!541173))

(declare-fun m!541175 () Bool)

(assert (=> b!366684 m!541175))

(declare-fun m!541177 () Bool)

(assert (=> b!366684 m!541177))

(assert (=> b!366684 m!540949))

(assert (=> b!366684 m!541173))

(declare-fun m!541179 () Bool)

(assert (=> b!366684 m!541179))

(assert (=> b!366684 m!541175))

(declare-fun m!541181 () Bool)

(assert (=> b!366684 m!541181))

(assert (=> b!366684 m!541181))

(declare-fun m!541183 () Bool)

(assert (=> b!366684 m!541183))

(declare-fun m!541185 () Bool)

(assert (=> b!366684 m!541185))

(declare-fun m!541187 () Bool)

(assert (=> b!366684 m!541187))

(assert (=> b!366684 m!541185))

(declare-fun m!541189 () Bool)

(assert (=> b!366684 m!541189))

(assert (=> b!366684 m!541177))

(declare-fun m!541191 () Bool)

(assert (=> b!366684 m!541191))

(declare-fun m!541193 () Bool)

(assert (=> b!366684 m!541193))

(declare-fun m!541195 () Bool)

(assert (=> b!366684 m!541195))

(assert (=> b!365864 d!128578))

(declare-fun b!366685 () Bool)

(declare-fun res!163959 () Bool)

(declare-fun e!225261 () Bool)

(assert (=> b!366685 (=> (not res!163959) (not e!225261))))

(declare-fun lt!158361 () Option!973)

(assert (=> b!366685 (= res!163959 (< (size!3344 (_2!2642 (get!1437 lt!158361))) (size!3344 lt!157903)))))

(declare-fun b!366686 () Bool)

(declare-fun res!163960 () Bool)

(assert (=> b!366686 (=> (not res!163960) (not e!225261))))

(assert (=> b!366686 (= res!163960 (= (++!1150 (list!1781 (charsOf!440 (_1!2642 (get!1437 lt!158361)))) (_2!2642 (get!1437 lt!158361))) lt!157903))))

(declare-fun b!366687 () Bool)

(declare-fun e!225259 () Option!973)

(declare-fun call!23156 () Option!973)

(assert (=> b!366687 (= e!225259 call!23156)))

(declare-fun b!366688 () Bool)

(declare-fun lt!158364 () Option!973)

(declare-fun lt!158362 () Option!973)

(assert (=> b!366688 (= e!225259 (ite (and ((_ is None!972) lt!158364) ((_ is None!972) lt!158362)) None!972 (ite ((_ is None!972) lt!158362) lt!158364 (ite ((_ is None!972) lt!158364) lt!158362 (ite (>= (size!3338 (_1!2642 (v!15075 lt!158364))) (size!3338 (_1!2642 (v!15075 lt!158362)))) lt!158364 lt!158362)))))))

(assert (=> b!366688 (= lt!158364 call!23156)))

(assert (=> b!366688 (= lt!158362 (maxPrefix!399 thiss!17480 (t!56488 rules!1920) lt!157903))))

(declare-fun d!128580 () Bool)

(declare-fun e!225260 () Bool)

(assert (=> d!128580 e!225260))

(declare-fun res!163957 () Bool)

(assert (=> d!128580 (=> res!163957 e!225260)))

(assert (=> d!128580 (= res!163957 (isEmpty!2919 lt!158361))))

(assert (=> d!128580 (= lt!158361 e!225259)))

(declare-fun c!72210 () Bool)

(assert (=> d!128580 (= c!72210 (and ((_ is Cons!4138) rules!1920) ((_ is Nil!4138) (t!56488 rules!1920))))))

(declare-fun lt!158363 () Unit!6490)

(declare-fun lt!158365 () Unit!6490)

(assert (=> d!128580 (= lt!158363 lt!158365)))

(assert (=> d!128580 (isPrefix!457 lt!157903 lt!157903)))

(assert (=> d!128580 (= lt!158365 (lemmaIsPrefixRefl!251 lt!157903 lt!157903))))

(assert (=> d!128580 (rulesValidInductive!246 thiss!17480 rules!1920)))

(assert (=> d!128580 (= (maxPrefix!399 thiss!17480 rules!1920 lt!157903) lt!158361)))

(declare-fun b!366689 () Bool)

(declare-fun res!163956 () Bool)

(assert (=> b!366689 (=> (not res!163956) (not e!225261))))

(assert (=> b!366689 (= res!163956 (= (list!1781 (charsOf!440 (_1!2642 (get!1437 lt!158361)))) (originalCharacters!840 (_1!2642 (get!1437 lt!158361)))))))

(declare-fun bm!23151 () Bool)

(assert (=> bm!23151 (= call!23156 (maxPrefixOneRule!185 thiss!17480 (h!9535 rules!1920) lt!157903))))

(declare-fun b!366690 () Bool)

(declare-fun res!163958 () Bool)

(assert (=> b!366690 (=> (not res!163958) (not e!225261))))

(assert (=> b!366690 (= res!163958 (matchR!339 (regex!797 (rule!1438 (_1!2642 (get!1437 lt!158361)))) (list!1781 (charsOf!440 (_1!2642 (get!1437 lt!158361))))))))

(declare-fun b!366691 () Bool)

(declare-fun res!163954 () Bool)

(assert (=> b!366691 (=> (not res!163954) (not e!225261))))

(assert (=> b!366691 (= res!163954 (= (value!27030 (_1!2642 (get!1437 lt!158361))) (apply!953 (transformation!797 (rule!1438 (_1!2642 (get!1437 lt!158361)))) (seqFromList!959 (originalCharacters!840 (_1!2642 (get!1437 lt!158361)))))))))

(declare-fun b!366692 () Bool)

(assert (=> b!366692 (= e!225260 e!225261)))

(declare-fun res!163955 () Bool)

(assert (=> b!366692 (=> (not res!163955) (not e!225261))))

(assert (=> b!366692 (= res!163955 (isDefined!812 lt!158361))))

(declare-fun b!366693 () Bool)

(assert (=> b!366693 (= e!225261 (contains!840 rules!1920 (rule!1438 (_1!2642 (get!1437 lt!158361)))))))

(assert (= (and d!128580 c!72210) b!366687))

(assert (= (and d!128580 (not c!72210)) b!366688))

(assert (= (or b!366687 b!366688) bm!23151))

(assert (= (and d!128580 (not res!163957)) b!366692))

(assert (= (and b!366692 res!163955) b!366689))

(assert (= (and b!366689 res!163956) b!366685))

(assert (= (and b!366685 res!163959) b!366686))

(assert (= (and b!366686 res!163960) b!366691))

(assert (= (and b!366691 res!163954) b!366690))

(assert (= (and b!366690 res!163958) b!366693))

(declare-fun m!541197 () Bool)

(assert (=> b!366688 m!541197))

(declare-fun m!541199 () Bool)

(assert (=> b!366690 m!541199))

(declare-fun m!541201 () Bool)

(assert (=> b!366690 m!541201))

(assert (=> b!366690 m!541201))

(declare-fun m!541203 () Bool)

(assert (=> b!366690 m!541203))

(assert (=> b!366690 m!541203))

(declare-fun m!541205 () Bool)

(assert (=> b!366690 m!541205))

(assert (=> b!366691 m!541199))

(declare-fun m!541207 () Bool)

(assert (=> b!366691 m!541207))

(assert (=> b!366691 m!541207))

(declare-fun m!541209 () Bool)

(assert (=> b!366691 m!541209))

(assert (=> b!366689 m!541199))

(assert (=> b!366689 m!541201))

(assert (=> b!366689 m!541201))

(assert (=> b!366689 m!541203))

(declare-fun m!541211 () Bool)

(assert (=> bm!23151 m!541211))

(assert (=> b!366685 m!541199))

(declare-fun m!541213 () Bool)

(assert (=> b!366685 m!541213))

(assert (=> b!366685 m!540235))

(declare-fun m!541215 () Bool)

(assert (=> b!366692 m!541215))

(assert (=> b!366693 m!541199))

(declare-fun m!541217 () Bool)

(assert (=> b!366693 m!541217))

(assert (=> b!366686 m!541199))

(assert (=> b!366686 m!541201))

(assert (=> b!366686 m!541201))

(assert (=> b!366686 m!541203))

(assert (=> b!366686 m!541203))

(declare-fun m!541219 () Bool)

(assert (=> b!366686 m!541219))

(declare-fun m!541221 () Bool)

(assert (=> d!128580 m!541221))

(declare-fun m!541223 () Bool)

(assert (=> d!128580 m!541223))

(declare-fun m!541225 () Bool)

(assert (=> d!128580 m!541225))

(assert (=> d!128580 m!540727))

(assert (=> b!365864 d!128580))

(declare-fun d!128582 () Bool)

(declare-fun lt!158366 () BalanceConc!2840)

(assert (=> d!128582 (= (list!1781 lt!158366) (printList!357 thiss!17480 (list!1784 lt!157917)))))

(assert (=> d!128582 (= lt!158366 (printTailRec!369 thiss!17480 lt!157917 0 (BalanceConc!2841 Empty!1416)))))

(assert (=> d!128582 (= (print!408 thiss!17480 lt!157917) lt!158366)))

(declare-fun bs!44400 () Bool)

(assert (= bs!44400 d!128582))

(declare-fun m!541227 () Bool)

(assert (=> bs!44400 m!541227))

(assert (=> bs!44400 m!540991))

(assert (=> bs!44400 m!540991))

(declare-fun m!541229 () Bool)

(assert (=> bs!44400 m!541229))

(assert (=> bs!44400 m!539667))

(assert (=> b!365864 d!128582))

(declare-fun bm!23160 () Bool)

(declare-fun call!23166 () List!4147)

(declare-fun call!23165 () List!4147)

(declare-fun call!23167 () List!4147)

(assert (=> bm!23160 (= call!23166 (++!1150 call!23165 call!23167))))

(declare-fun d!128584 () Bool)

(declare-fun c!72219 () Bool)

(assert (=> d!128584 (= c!72219 (or ((_ is EmptyExpr!1021) (regex!797 (rule!1438 lt!157892))) ((_ is EmptyLang!1021) (regex!797 (rule!1438 lt!157892)))))))

(declare-fun e!225270 () List!4147)

(assert (=> d!128584 (= (usedCharacters!98 (regex!797 (rule!1438 lt!157892))) e!225270)))

(declare-fun b!366710 () Bool)

(declare-fun e!225273 () List!4147)

(assert (=> b!366710 (= e!225273 call!23166)))

(declare-fun b!366711 () Bool)

(assert (=> b!366711 (= e!225273 call!23166)))

(declare-fun b!366712 () Bool)

(declare-fun e!225271 () List!4147)

(declare-fun call!23168 () List!4147)

(assert (=> b!366712 (= e!225271 call!23168)))

(declare-fun c!72222 () Bool)

(declare-fun c!72221 () Bool)

(declare-fun bm!23161 () Bool)

(assert (=> bm!23161 (= call!23168 (usedCharacters!98 (ite c!72221 (reg!1350 (regex!797 (rule!1438 lt!157892))) (ite c!72222 (regTwo!2555 (regex!797 (rule!1438 lt!157892))) (regTwo!2554 (regex!797 (rule!1438 lt!157892)))))))))

(declare-fun b!366713 () Bool)

(assert (=> b!366713 (= c!72221 ((_ is Star!1021) (regex!797 (rule!1438 lt!157892))))))

(declare-fun e!225272 () List!4147)

(assert (=> b!366713 (= e!225272 e!225271)))

(declare-fun bm!23162 () Bool)

(assert (=> bm!23162 (= call!23165 (usedCharacters!98 (ite c!72222 (regOne!2555 (regex!797 (rule!1438 lt!157892))) (regOne!2554 (regex!797 (rule!1438 lt!157892))))))))

(declare-fun b!366714 () Bool)

(assert (=> b!366714 (= e!225270 e!225272)))

(declare-fun c!72220 () Bool)

(assert (=> b!366714 (= c!72220 ((_ is ElementMatch!1021) (regex!797 (rule!1438 lt!157892))))))

(declare-fun bm!23163 () Bool)

(assert (=> bm!23163 (= call!23167 call!23168)))

(declare-fun b!366715 () Bool)

(assert (=> b!366715 (= e!225272 (Cons!4137 (c!72029 (regex!797 (rule!1438 lt!157892))) Nil!4137))))

(declare-fun b!366716 () Bool)

(assert (=> b!366716 (= e!225270 Nil!4137)))

(declare-fun b!366717 () Bool)

(assert (=> b!366717 (= e!225271 e!225273)))

(assert (=> b!366717 (= c!72222 ((_ is Union!1021) (regex!797 (rule!1438 lt!157892))))))

(assert (= (and d!128584 c!72219) b!366716))

(assert (= (and d!128584 (not c!72219)) b!366714))

(assert (= (and b!366714 c!72220) b!366715))

(assert (= (and b!366714 (not c!72220)) b!366713))

(assert (= (and b!366713 c!72221) b!366712))

(assert (= (and b!366713 (not c!72221)) b!366717))

(assert (= (and b!366717 c!72222) b!366711))

(assert (= (and b!366717 (not c!72222)) b!366710))

(assert (= (or b!366711 b!366710) bm!23162))

(assert (= (or b!366711 b!366710) bm!23163))

(assert (= (or b!366711 b!366710) bm!23160))

(assert (= (or b!366712 bm!23163) bm!23161))

(declare-fun m!541231 () Bool)

(assert (=> bm!23160 m!541231))

(declare-fun m!541233 () Bool)

(assert (=> bm!23161 m!541233))

(declare-fun m!541235 () Bool)

(assert (=> bm!23162 m!541235))

(assert (=> b!365864 d!128584))

(declare-fun b!366718 () Bool)

(declare-fun e!225275 () Option!974)

(assert (=> b!366718 (= e!225275 None!973)))

(declare-fun b!366719 () Bool)

(declare-fun e!225276 () Option!974)

(assert (=> b!366719 (= e!225276 e!225275)))

(declare-fun c!72223 () Bool)

(assert (=> b!366719 (= c!72223 (and ((_ is Cons!4138) rules!1920) (not (= (tag!1023 (h!9535 rules!1920)) (tag!1023 (rule!1438 separatorToken!170))))))))

(declare-fun b!366720 () Bool)

(declare-fun e!225277 () Bool)

(declare-fun e!225274 () Bool)

(assert (=> b!366720 (= e!225277 e!225274)))

(declare-fun res!163961 () Bool)

(assert (=> b!366720 (=> (not res!163961) (not e!225274))))

(declare-fun lt!158369 () Option!974)

(assert (=> b!366720 (= res!163961 (contains!840 rules!1920 (get!1438 lt!158369)))))

(declare-fun b!366721 () Bool)

(assert (=> b!366721 (= e!225274 (= (tag!1023 (get!1438 lt!158369)) (tag!1023 (rule!1438 separatorToken!170))))))

(declare-fun b!366722 () Bool)

(assert (=> b!366722 (= e!225276 (Some!973 (h!9535 rules!1920)))))

(declare-fun d!128586 () Bool)

(assert (=> d!128586 e!225277))

(declare-fun res!163962 () Bool)

(assert (=> d!128586 (=> res!163962 e!225277)))

(assert (=> d!128586 (= res!163962 (isEmpty!2922 lt!158369))))

(assert (=> d!128586 (= lt!158369 e!225276)))

(declare-fun c!72224 () Bool)

(assert (=> d!128586 (= c!72224 (and ((_ is Cons!4138) rules!1920) (= (tag!1023 (h!9535 rules!1920)) (tag!1023 (rule!1438 separatorToken!170)))))))

(assert (=> d!128586 (rulesInvariant!649 thiss!17480 rules!1920)))

(assert (=> d!128586 (= (getRuleFromTag!156 thiss!17480 rules!1920 (tag!1023 (rule!1438 separatorToken!170))) lt!158369)))

(declare-fun b!366723 () Bool)

(declare-fun lt!158367 () Unit!6490)

(declare-fun lt!158368 () Unit!6490)

(assert (=> b!366723 (= lt!158367 lt!158368)))

(assert (=> b!366723 (rulesInvariant!649 thiss!17480 (t!56488 rules!1920))))

(assert (=> b!366723 (= lt!158368 (lemmaInvariantOnRulesThenOnTail!50 thiss!17480 (h!9535 rules!1920) (t!56488 rules!1920)))))

(assert (=> b!366723 (= e!225275 (getRuleFromTag!156 thiss!17480 (t!56488 rules!1920) (tag!1023 (rule!1438 separatorToken!170))))))

(assert (= (and d!128586 c!72224) b!366722))

(assert (= (and d!128586 (not c!72224)) b!366719))

(assert (= (and b!366719 c!72223) b!366723))

(assert (= (and b!366719 (not c!72223)) b!366718))

(assert (= (and d!128586 (not res!163962)) b!366720))

(assert (= (and b!366720 res!163961) b!366721))

(declare-fun m!541237 () Bool)

(assert (=> b!366720 m!541237))

(assert (=> b!366720 m!541237))

(declare-fun m!541239 () Bool)

(assert (=> b!366720 m!541239))

(assert (=> b!366721 m!541237))

(declare-fun m!541241 () Bool)

(assert (=> d!128586 m!541241))

(assert (=> d!128586 m!539783))

(assert (=> b!366723 m!541037))

(assert (=> b!366723 m!541039))

(declare-fun m!541243 () Bool)

(assert (=> b!366723 m!541243))

(assert (=> b!365864 d!128586))

(assert (=> b!365864 d!128528))

(declare-fun d!128588 () Bool)

(assert (=> d!128588 (= (head!995 (t!56489 tokens!465)) (h!9536 (t!56489 tokens!465)))))

(assert (=> b!365864 d!128588))

(declare-fun d!128590 () Bool)

(declare-fun e!225332 () Bool)

(assert (=> d!128590 e!225332))

(declare-fun res!164008 () Bool)

(assert (=> d!128590 (=> res!164008 e!225332)))

(assert (=> d!128590 (= res!164008 (isEmpty!2913 tokens!465))))

(declare-fun lt!158417 () Unit!6490)

(declare-fun choose!2943 (LexerInterface!683 List!4148 List!4149 Token!1338) Unit!6490)

(assert (=> d!128590 (= lt!158417 (choose!2943 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!128590 (not (isEmpty!2914 rules!1920))))

(assert (=> d!128590 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!204 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!158417)))

(declare-fun b!366796 () Bool)

(declare-fun e!225331 () Bool)

(assert (=> b!366796 (= e!225332 e!225331)))

(declare-fun res!164007 () Bool)

(assert (=> b!366796 (=> (not res!164007) (not e!225331))))

(assert (=> b!366796 (= res!164007 (isDefined!812 (maxPrefix!399 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!364 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!366797 () Bool)

(assert (=> b!366797 (= e!225331 (= (_1!2642 (get!1437 (maxPrefix!399 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!364 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!995 tokens!465)))))

(assert (= (and d!128590 (not res!164008)) b!366796))

(assert (= (and b!366796 res!164007) b!366797))

(assert (=> d!128590 m!539613))

(declare-fun m!541403 () Bool)

(assert (=> d!128590 m!541403))

(assert (=> d!128590 m!539785))

(assert (=> b!366796 m!539791))

(assert (=> b!366796 m!539791))

(declare-fun m!541405 () Bool)

(assert (=> b!366796 m!541405))

(assert (=> b!366796 m!541405))

(declare-fun m!541407 () Bool)

(assert (=> b!366796 m!541407))

(assert (=> b!366797 m!539791))

(assert (=> b!366797 m!539791))

(assert (=> b!366797 m!541405))

(assert (=> b!366797 m!541405))

(declare-fun m!541409 () Bool)

(assert (=> b!366797 m!541409))

(assert (=> b!366797 m!539605))

(assert (=> b!365864 d!128590))

(declare-fun d!128620 () Bool)

(assert (=> d!128620 (rulesProduceIndividualToken!432 thiss!17480 rules!1920 lt!157892)))

(declare-fun lt!158424 () Unit!6490)

(declare-fun choose!2944 (LexerInterface!683 List!4148 List!4149 Token!1338) Unit!6490)

(assert (=> d!128620 (= lt!158424 (choose!2944 thiss!17480 rules!1920 tokens!465 lt!157892))))

(assert (=> d!128620 (not (isEmpty!2914 rules!1920))))

(assert (=> d!128620 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!146 thiss!17480 rules!1920 tokens!465 lt!157892) lt!158424)))

(declare-fun bs!44435 () Bool)

(assert (= bs!44435 d!128620))

(assert (=> bs!44435 m!539663))

(declare-fun m!541439 () Bool)

(assert (=> bs!44435 m!541439))

(assert (=> bs!44435 m!539785))

(assert (=> b!365864 d!128620))

(declare-fun d!128640 () Bool)

(declare-fun lt!158425 () Int)

(assert (=> d!128640 (= lt!158425 (size!3345 (list!1784 (_1!2641 lt!157900))))))

(assert (=> d!128640 (= lt!158425 (size!3346 (c!72030 (_1!2641 lt!157900))))))

(assert (=> d!128640 (= (size!3339 (_1!2641 lt!157900)) lt!158425)))

(declare-fun bs!44436 () Bool)

(assert (= bs!44436 d!128640))

(assert (=> bs!44436 m!540863))

(assert (=> bs!44436 m!540863))

(declare-fun m!541441 () Bool)

(assert (=> bs!44436 m!541441))

(declare-fun m!541443 () Bool)

(assert (=> bs!44436 m!541443))

(assert (=> b!365864 d!128640))

(declare-fun d!128642 () Bool)

(assert (=> d!128642 (= lt!157903 (_2!2642 lt!157916))))

(declare-fun lt!158428 () Unit!6490)

(declare-fun choose!2945 (List!4147 List!4147 List!4147 List!4147 List!4147) Unit!6490)

(assert (=> d!128642 (= lt!158428 (choose!2945 lt!157931 lt!157903 lt!157931 (_2!2642 lt!157916) lt!157898))))

(assert (=> d!128642 (isPrefix!457 lt!157931 lt!157898)))

(assert (=> d!128642 (= (lemmaSamePrefixThenSameSuffix!242 lt!157931 lt!157903 lt!157931 (_2!2642 lt!157916) lt!157898) lt!158428)))

(declare-fun bs!44437 () Bool)

(assert (= bs!44437 d!128642))

(declare-fun m!541445 () Bool)

(assert (=> bs!44437 m!541445))

(declare-fun m!541447 () Bool)

(assert (=> bs!44437 m!541447))

(assert (=> b!365864 d!128642))

(declare-fun d!128644 () Bool)

(assert (=> d!128644 (= (list!1781 (charsOf!440 lt!157892)) (list!1785 (c!72028 (charsOf!440 lt!157892))))))

(declare-fun bs!44438 () Bool)

(assert (= bs!44438 d!128644))

(declare-fun m!541449 () Bool)

(assert (=> bs!44438 m!541449))

(assert (=> b!365864 d!128644))

(declare-fun d!128646 () Bool)

(assert (=> d!128646 (= (inv!5138 (tag!1023 (rule!1438 separatorToken!170))) (= (mod (str.len (value!27029 (tag!1023 (rule!1438 separatorToken!170)))) 2) 0))))

(assert (=> b!365842 d!128646))

(declare-fun d!128648 () Bool)

(declare-fun res!164019 () Bool)

(declare-fun e!225388 () Bool)

(assert (=> d!128648 (=> (not res!164019) (not e!225388))))

(assert (=> d!128648 (= res!164019 (semiInverseModEq!305 (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))) (toValue!1576 (transformation!797 (rule!1438 separatorToken!170)))))))

(assert (=> d!128648 (= (inv!5141 (transformation!797 (rule!1438 separatorToken!170))) e!225388)))

(declare-fun b!366867 () Bool)

(assert (=> b!366867 (= e!225388 (equivClasses!288 (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))) (toValue!1576 (transformation!797 (rule!1438 separatorToken!170)))))))

(assert (= (and d!128648 res!164019) b!366867))

(declare-fun m!541451 () Bool)

(assert (=> d!128648 m!541451))

(declare-fun m!541453 () Bool)

(assert (=> b!366867 m!541453))

(assert (=> b!365842 d!128648))

(declare-fun d!128650 () Bool)

(assert (=> d!128650 (= (list!1781 (seqFromList!959 lt!157898)) (list!1785 (c!72028 (seqFromList!959 lt!157898))))))

(declare-fun bs!44439 () Bool)

(assert (= bs!44439 d!128650))

(declare-fun m!541455 () Bool)

(assert (=> bs!44439 m!541455))

(assert (=> b!365863 d!128650))

(declare-fun d!128652 () Bool)

(declare-fun fromListB!411 (List!4147) BalanceConc!2840)

(assert (=> d!128652 (= (seqFromList!959 lt!157898) (fromListB!411 lt!157898))))

(declare-fun bs!44440 () Bool)

(assert (= bs!44440 d!128652))

(declare-fun m!541457 () Bool)

(assert (=> bs!44440 m!541457))

(assert (=> b!365863 d!128652))

(declare-fun d!128654 () Bool)

(declare-fun res!164022 () Bool)

(declare-fun e!225391 () Bool)

(assert (=> d!128654 (=> (not res!164022) (not e!225391))))

(declare-fun rulesValid!270 (LexerInterface!683 List!4148) Bool)

(assert (=> d!128654 (= res!164022 (rulesValid!270 thiss!17480 rules!1920))))

(assert (=> d!128654 (= (rulesInvariant!649 thiss!17480 rules!1920) e!225391)))

(declare-fun b!366870 () Bool)

(declare-datatypes ((List!4151 0))(
  ( (Nil!4141) (Cons!4141 (h!9538 String!5175) (t!56577 List!4151)) )
))
(declare-fun noDuplicateTag!270 (LexerInterface!683 List!4148 List!4151) Bool)

(assert (=> b!366870 (= e!225391 (noDuplicateTag!270 thiss!17480 rules!1920 Nil!4141))))

(assert (= (and d!128654 res!164022) b!366870))

(declare-fun m!541459 () Bool)

(assert (=> d!128654 m!541459))

(declare-fun m!541461 () Bool)

(assert (=> b!366870 m!541461))

(assert (=> b!365862 d!128654))

(declare-fun d!128656 () Bool)

(assert (=> d!128656 (= (get!1437 lt!157894) (v!15075 lt!157894))))

(assert (=> b!365841 d!128656))

(declare-fun d!128658 () Bool)

(assert (=> d!128658 (= (head!995 tokens!465) (h!9536 tokens!465))))

(assert (=> b!365841 d!128658))

(declare-fun d!128660 () Bool)

(declare-fun isEmpty!2923 (Option!975) Bool)

(assert (=> d!128660 (= (isDefined!814 (maxPrefixZipperSequence!362 thiss!17480 rules!1920 (seqFromList!959 (originalCharacters!840 (h!9536 tokens!465))))) (not (isEmpty!2923 (maxPrefixZipperSequence!362 thiss!17480 rules!1920 (seqFromList!959 (originalCharacters!840 (h!9536 tokens!465)))))))))

(declare-fun bs!44441 () Bool)

(assert (= bs!44441 d!128660))

(assert (=> bs!44441 m!539693))

(declare-fun m!541463 () Bool)

(assert (=> bs!44441 m!541463))

(assert (=> b!365871 d!128660))

(declare-fun b!366887 () Bool)

(declare-fun e!225406 () Bool)

(declare-fun e!225407 () Bool)

(assert (=> b!366887 (= e!225406 e!225407)))

(declare-fun res!164039 () Bool)

(assert (=> b!366887 (=> res!164039 e!225407)))

(declare-fun lt!158444 () Option!975)

(assert (=> b!366887 (= res!164039 (not (isDefined!814 lt!158444)))))

(declare-fun d!128662 () Bool)

(assert (=> d!128662 e!225406))

(declare-fun res!164037 () Bool)

(assert (=> d!128662 (=> (not res!164037) (not e!225406))))

(declare-fun maxPrefixZipper!155 (LexerInterface!683 List!4148 List!4147) Option!973)

(assert (=> d!128662 (= res!164037 (= (isDefined!814 lt!158444) (isDefined!812 (maxPrefixZipper!155 thiss!17480 rules!1920 (list!1781 (seqFromList!959 (originalCharacters!840 (h!9536 tokens!465))))))))))

(declare-fun e!225408 () Option!975)

(assert (=> d!128662 (= lt!158444 e!225408)))

(declare-fun c!72238 () Bool)

(assert (=> d!128662 (= c!72238 (and ((_ is Cons!4138) rules!1920) ((_ is Nil!4138) (t!56488 rules!1920))))))

(declare-fun lt!158447 () Unit!6490)

(declare-fun lt!158448 () Unit!6490)

(assert (=> d!128662 (= lt!158447 lt!158448)))

(declare-fun lt!158445 () List!4147)

(declare-fun lt!158446 () List!4147)

(assert (=> d!128662 (isPrefix!457 lt!158445 lt!158446)))

(assert (=> d!128662 (= lt!158448 (lemmaIsPrefixRefl!251 lt!158445 lt!158446))))

(assert (=> d!128662 (= lt!158446 (list!1781 (seqFromList!959 (originalCharacters!840 (h!9536 tokens!465)))))))

(assert (=> d!128662 (= lt!158445 (list!1781 (seqFromList!959 (originalCharacters!840 (h!9536 tokens!465)))))))

(assert (=> d!128662 (rulesValidInductive!246 thiss!17480 rules!1920)))

(assert (=> d!128662 (= (maxPrefixZipperSequence!362 thiss!17480 rules!1920 (seqFromList!959 (originalCharacters!840 (h!9536 tokens!465)))) lt!158444)))

(declare-fun call!23184 () Option!975)

(declare-fun bm!23179 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!156 (LexerInterface!683 Rule!1394 BalanceConc!2840) Option!975)

(assert (=> bm!23179 (= call!23184 (maxPrefixOneRuleZipperSequence!156 thiss!17480 (h!9535 rules!1920) (seqFromList!959 (originalCharacters!840 (h!9536 tokens!465)))))))

(declare-fun b!366888 () Bool)

(declare-fun lt!158443 () Option!975)

(declare-fun lt!158449 () Option!975)

(assert (=> b!366888 (= e!225408 (ite (and ((_ is None!974) lt!158443) ((_ is None!974) lt!158449)) None!974 (ite ((_ is None!974) lt!158449) lt!158443 (ite ((_ is None!974) lt!158443) lt!158449 (ite (>= (size!3338 (_1!2643 (v!15077 lt!158443))) (size!3338 (_1!2643 (v!15077 lt!158449)))) lt!158443 lt!158449)))))))

(assert (=> b!366888 (= lt!158443 call!23184)))

(assert (=> b!366888 (= lt!158449 (maxPrefixZipperSequence!362 thiss!17480 (t!56488 rules!1920) (seqFromList!959 (originalCharacters!840 (h!9536 tokens!465)))))))

(declare-fun b!366889 () Bool)

(declare-fun e!225404 () Bool)

(declare-fun get!1440 (Option!975) tuple2!4854)

(assert (=> b!366889 (= e!225404 (= (list!1781 (_2!2643 (get!1440 lt!158444))) (_2!2642 (get!1437 (maxPrefix!399 thiss!17480 rules!1920 (list!1781 (seqFromList!959 (originalCharacters!840 (h!9536 tokens!465)))))))))))

(declare-fun b!366890 () Bool)

(declare-fun e!225409 () Bool)

(declare-fun e!225405 () Bool)

(assert (=> b!366890 (= e!225409 e!225405)))

(declare-fun res!164036 () Bool)

(assert (=> b!366890 (=> (not res!164036) (not e!225405))))

(assert (=> b!366890 (= res!164036 (= (_1!2643 (get!1440 lt!158444)) (_1!2642 (get!1437 (maxPrefixZipper!155 thiss!17480 rules!1920 (list!1781 (seqFromList!959 (originalCharacters!840 (h!9536 tokens!465)))))))))))

(declare-fun b!366891 () Bool)

(assert (=> b!366891 (= e!225408 call!23184)))

(declare-fun b!366892 () Bool)

(assert (=> b!366892 (= e!225407 e!225404)))

(declare-fun res!164035 () Bool)

(assert (=> b!366892 (=> (not res!164035) (not e!225404))))

(assert (=> b!366892 (= res!164035 (= (_1!2643 (get!1440 lt!158444)) (_1!2642 (get!1437 (maxPrefix!399 thiss!17480 rules!1920 (list!1781 (seqFromList!959 (originalCharacters!840 (h!9536 tokens!465)))))))))))

(declare-fun b!366893 () Bool)

(declare-fun res!164040 () Bool)

(assert (=> b!366893 (=> (not res!164040) (not e!225406))))

(assert (=> b!366893 (= res!164040 e!225409)))

(declare-fun res!164038 () Bool)

(assert (=> b!366893 (=> res!164038 e!225409)))

(assert (=> b!366893 (= res!164038 (not (isDefined!814 lt!158444)))))

(declare-fun b!366894 () Bool)

(assert (=> b!366894 (= e!225405 (= (list!1781 (_2!2643 (get!1440 lt!158444))) (_2!2642 (get!1437 (maxPrefixZipper!155 thiss!17480 rules!1920 (list!1781 (seqFromList!959 (originalCharacters!840 (h!9536 tokens!465)))))))))))

(assert (= (and d!128662 c!72238) b!366891))

(assert (= (and d!128662 (not c!72238)) b!366888))

(assert (= (or b!366891 b!366888) bm!23179))

(assert (= (and d!128662 res!164037) b!366893))

(assert (= (and b!366893 (not res!164038)) b!366890))

(assert (= (and b!366890 res!164036) b!366894))

(assert (= (and b!366893 res!164040) b!366887))

(assert (= (and b!366887 (not res!164039)) b!366892))

(assert (= (and b!366892 res!164035) b!366889))

(assert (=> bm!23179 m!539691))

(declare-fun m!541465 () Bool)

(assert (=> bm!23179 m!541465))

(declare-fun m!541467 () Bool)

(assert (=> b!366893 m!541467))

(declare-fun m!541469 () Bool)

(assert (=> b!366892 m!541469))

(assert (=> b!366892 m!539691))

(declare-fun m!541471 () Bool)

(assert (=> b!366892 m!541471))

(assert (=> b!366892 m!541471))

(declare-fun m!541473 () Bool)

(assert (=> b!366892 m!541473))

(assert (=> b!366892 m!541473))

(declare-fun m!541475 () Bool)

(assert (=> b!366892 m!541475))

(assert (=> d!128662 m!541467))

(declare-fun m!541477 () Bool)

(assert (=> d!128662 m!541477))

(assert (=> d!128662 m!540727))

(declare-fun m!541479 () Bool)

(assert (=> d!128662 m!541479))

(assert (=> d!128662 m!539691))

(assert (=> d!128662 m!541471))

(declare-fun m!541481 () Bool)

(assert (=> d!128662 m!541481))

(declare-fun m!541483 () Bool)

(assert (=> d!128662 m!541483))

(assert (=> d!128662 m!541471))

(assert (=> d!128662 m!541481))

(assert (=> b!366887 m!541467))

(assert (=> b!366889 m!541469))

(declare-fun m!541485 () Bool)

(assert (=> b!366889 m!541485))

(assert (=> b!366889 m!539691))

(assert (=> b!366889 m!541471))

(assert (=> b!366889 m!541473))

(assert (=> b!366889 m!541475))

(assert (=> b!366889 m!541471))

(assert (=> b!366889 m!541473))

(assert (=> b!366894 m!541469))

(assert (=> b!366894 m!541485))

(assert (=> b!366894 m!539691))

(assert (=> b!366894 m!541471))

(assert (=> b!366894 m!541481))

(declare-fun m!541487 () Bool)

(assert (=> b!366894 m!541487))

(assert (=> b!366894 m!541471))

(assert (=> b!366894 m!541481))

(assert (=> b!366890 m!541469))

(assert (=> b!366890 m!539691))

(assert (=> b!366890 m!541471))

(assert (=> b!366890 m!541471))

(assert (=> b!366890 m!541481))

(assert (=> b!366890 m!541481))

(assert (=> b!366890 m!541487))

(assert (=> b!366888 m!539691))

(declare-fun m!541489 () Bool)

(assert (=> b!366888 m!541489))

(assert (=> b!365871 d!128662))

(declare-fun d!128664 () Bool)

(assert (=> d!128664 (= (seqFromList!959 (originalCharacters!840 (h!9536 tokens!465))) (fromListB!411 (originalCharacters!840 (h!9536 tokens!465))))))

(declare-fun bs!44442 () Bool)

(assert (= bs!44442 d!128664))

(declare-fun m!541491 () Bool)

(assert (=> bs!44442 m!541491))

(assert (=> b!365871 d!128664))

(declare-fun d!128666 () Bool)

(assert (=> d!128666 (dynLambda!2351 lambda!11384 (h!9536 tokens!465))))

(declare-fun lt!158450 () Unit!6490)

(assert (=> d!128666 (= lt!158450 (choose!2942 tokens!465 lambda!11384 (h!9536 tokens!465)))))

(declare-fun e!225410 () Bool)

(assert (=> d!128666 e!225410))

(declare-fun res!164041 () Bool)

(assert (=> d!128666 (=> (not res!164041) (not e!225410))))

(assert (=> d!128666 (= res!164041 (forall!1136 tokens!465 lambda!11384))))

(assert (=> d!128666 (= (forallContained!350 tokens!465 lambda!11384 (h!9536 tokens!465)) lt!158450)))

(declare-fun b!366895 () Bool)

(assert (=> b!366895 (= e!225410 (contains!841 tokens!465 (h!9536 tokens!465)))))

(assert (= (and d!128666 res!164041) b!366895))

(declare-fun b_lambda!14351 () Bool)

(assert (=> (not b_lambda!14351) (not d!128666)))

(declare-fun m!541493 () Bool)

(assert (=> d!128666 m!541493))

(declare-fun m!541495 () Bool)

(assert (=> d!128666 m!541495))

(assert (=> d!128666 m!541155))

(declare-fun m!541497 () Bool)

(assert (=> b!366895 m!541497))

(assert (=> b!365871 d!128666))

(declare-fun d!128668 () Bool)

(assert (=> d!128668 (= (isEmpty!2914 rules!1920) ((_ is Nil!4138) rules!1920))))

(assert (=> b!365870 d!128668))

(declare-fun d!128670 () Bool)

(assert (=> d!128670 (= (inv!5138 (tag!1023 (h!9535 rules!1920))) (= (mod (str.len (value!27029 (tag!1023 (h!9535 rules!1920)))) 2) 0))))

(assert (=> b!365869 d!128670))

(declare-fun d!128672 () Bool)

(declare-fun res!164042 () Bool)

(declare-fun e!225411 () Bool)

(assert (=> d!128672 (=> (not res!164042) (not e!225411))))

(assert (=> d!128672 (= res!164042 (semiInverseModEq!305 (toChars!1435 (transformation!797 (h!9535 rules!1920))) (toValue!1576 (transformation!797 (h!9535 rules!1920)))))))

(assert (=> d!128672 (= (inv!5141 (transformation!797 (h!9535 rules!1920))) e!225411)))

(declare-fun b!366896 () Bool)

(assert (=> b!366896 (= e!225411 (equivClasses!288 (toChars!1435 (transformation!797 (h!9535 rules!1920))) (toValue!1576 (transformation!797 (h!9535 rules!1920)))))))

(assert (= (and d!128672 res!164042) b!366896))

(declare-fun m!541499 () Bool)

(assert (=> d!128672 m!541499))

(declare-fun m!541501 () Bool)

(assert (=> b!366896 m!541501))

(assert (=> b!365869 d!128672))

(declare-fun d!128674 () Bool)

(declare-fun e!225414 () Bool)

(assert (=> d!128674 e!225414))

(declare-fun c!72239 () Bool)

(assert (=> d!128674 (= c!72239 ((_ is EmptyExpr!1021) (regex!797 lt!157907)))))

(declare-fun lt!158451 () Bool)

(declare-fun e!225418 () Bool)

(assert (=> d!128674 (= lt!158451 e!225418)))

(declare-fun c!72240 () Bool)

(assert (=> d!128674 (= c!72240 (isEmpty!2912 lt!157896))))

(assert (=> d!128674 (validRegex!283 (regex!797 lt!157907))))

(assert (=> d!128674 (= (matchR!339 (regex!797 lt!157907) lt!157896) lt!158451)))

(declare-fun b!366897 () Bool)

(declare-fun res!164044 () Bool)

(declare-fun e!225417 () Bool)

(assert (=> b!366897 (=> res!164044 e!225417)))

(assert (=> b!366897 (= res!164044 (not (isEmpty!2912 (tail!566 lt!157896))))))

(declare-fun b!366898 () Bool)

(assert (=> b!366898 (= e!225418 (matchR!339 (derivativeStep!174 (regex!797 lt!157907) (head!996 lt!157896)) (tail!566 lt!157896)))))

(declare-fun b!366899 () Bool)

(declare-fun e!225413 () Bool)

(assert (=> b!366899 (= e!225414 e!225413)))

(declare-fun c!72241 () Bool)

(assert (=> b!366899 (= c!72241 ((_ is EmptyLang!1021) (regex!797 lt!157907)))))

(declare-fun b!366900 () Bool)

(declare-fun res!164049 () Bool)

(declare-fun e!225415 () Bool)

(assert (=> b!366900 (=> res!164049 e!225415)))

(declare-fun e!225416 () Bool)

(assert (=> b!366900 (= res!164049 e!225416)))

(declare-fun res!164043 () Bool)

(assert (=> b!366900 (=> (not res!164043) (not e!225416))))

(assert (=> b!366900 (= res!164043 lt!158451)))

(declare-fun b!366901 () Bool)

(assert (=> b!366901 (= e!225416 (= (head!996 lt!157896) (c!72029 (regex!797 lt!157907))))))

(declare-fun b!366902 () Bool)

(declare-fun res!164045 () Bool)

(assert (=> b!366902 (=> (not res!164045) (not e!225416))))

(assert (=> b!366902 (= res!164045 (isEmpty!2912 (tail!566 lt!157896)))))

(declare-fun bm!23180 () Bool)

(declare-fun call!23185 () Bool)

(assert (=> bm!23180 (= call!23185 (isEmpty!2912 lt!157896))))

(declare-fun b!366903 () Bool)

(declare-fun res!164047 () Bool)

(assert (=> b!366903 (=> (not res!164047) (not e!225416))))

(assert (=> b!366903 (= res!164047 (not call!23185))))

(declare-fun b!366904 () Bool)

(assert (=> b!366904 (= e!225414 (= lt!158451 call!23185))))

(declare-fun b!366905 () Bool)

(declare-fun res!164046 () Bool)

(assert (=> b!366905 (=> res!164046 e!225415)))

(assert (=> b!366905 (= res!164046 (not ((_ is ElementMatch!1021) (regex!797 lt!157907))))))

(assert (=> b!366905 (= e!225413 e!225415)))

(declare-fun b!366906 () Bool)

(assert (=> b!366906 (= e!225417 (not (= (head!996 lt!157896) (c!72029 (regex!797 lt!157907)))))))

(declare-fun b!366907 () Bool)

(assert (=> b!366907 (= e!225418 (nullable!208 (regex!797 lt!157907)))))

(declare-fun b!366908 () Bool)

(declare-fun e!225412 () Bool)

(assert (=> b!366908 (= e!225415 e!225412)))

(declare-fun res!164050 () Bool)

(assert (=> b!366908 (=> (not res!164050) (not e!225412))))

(assert (=> b!366908 (= res!164050 (not lt!158451))))

(declare-fun b!366909 () Bool)

(assert (=> b!366909 (= e!225412 e!225417)))

(declare-fun res!164048 () Bool)

(assert (=> b!366909 (=> res!164048 e!225417)))

(assert (=> b!366909 (= res!164048 call!23185)))

(declare-fun b!366910 () Bool)

(assert (=> b!366910 (= e!225413 (not lt!158451))))

(assert (= (and d!128674 c!72240) b!366907))

(assert (= (and d!128674 (not c!72240)) b!366898))

(assert (= (and d!128674 c!72239) b!366904))

(assert (= (and d!128674 (not c!72239)) b!366899))

(assert (= (and b!366899 c!72241) b!366910))

(assert (= (and b!366899 (not c!72241)) b!366905))

(assert (= (and b!366905 (not res!164046)) b!366900))

(assert (= (and b!366900 res!164043) b!366903))

(assert (= (and b!366903 res!164047) b!366902))

(assert (= (and b!366902 res!164045) b!366901))

(assert (= (and b!366900 (not res!164049)) b!366908))

(assert (= (and b!366908 res!164050) b!366909))

(assert (= (and b!366909 (not res!164048)) b!366897))

(assert (= (and b!366897 (not res!164044)) b!366906))

(assert (= (or b!366904 b!366903 b!366909) bm!23180))

(declare-fun m!541503 () Bool)

(assert (=> bm!23180 m!541503))

(declare-fun m!541505 () Bool)

(assert (=> b!366907 m!541505))

(declare-fun m!541507 () Bool)

(assert (=> b!366902 m!541507))

(assert (=> b!366902 m!541507))

(declare-fun m!541509 () Bool)

(assert (=> b!366902 m!541509))

(assert (=> d!128674 m!541503))

(declare-fun m!541511 () Bool)

(assert (=> d!128674 m!541511))

(assert (=> b!366898 m!539653))

(assert (=> b!366898 m!539653))

(declare-fun m!541513 () Bool)

(assert (=> b!366898 m!541513))

(assert (=> b!366898 m!541507))

(assert (=> b!366898 m!541513))

(assert (=> b!366898 m!541507))

(declare-fun m!541515 () Bool)

(assert (=> b!366898 m!541515))

(assert (=> b!366897 m!541507))

(assert (=> b!366897 m!541507))

(assert (=> b!366897 m!541509))

(assert (=> b!366906 m!539653))

(assert (=> b!366901 m!539653))

(assert (=> b!365868 d!128674))

(declare-fun d!128676 () Bool)

(assert (=> d!128676 (= (get!1438 lt!157909) (v!15076 lt!157909))))

(assert (=> b!365868 d!128676))

(declare-fun d!128678 () Bool)

(declare-fun lt!158452 () Bool)

(assert (=> d!128678 (= lt!158452 (isEmpty!2912 (list!1781 (_2!2641 lt!157900))))))

(assert (=> d!128678 (= lt!158452 (isEmpty!2917 (c!72028 (_2!2641 lt!157900))))))

(assert (=> d!128678 (= (isEmpty!2911 (_2!2641 lt!157900)) lt!158452)))

(declare-fun bs!44443 () Bool)

(assert (= bs!44443 d!128678))

(declare-fun m!541517 () Bool)

(assert (=> bs!44443 m!541517))

(assert (=> bs!44443 m!541517))

(declare-fun m!541519 () Bool)

(assert (=> bs!44443 m!541519))

(declare-fun m!541521 () Bool)

(assert (=> bs!44443 m!541521))

(assert (=> b!365847 d!128678))

(declare-fun lt!158455 () Bool)

(declare-fun d!128680 () Bool)

(assert (=> d!128680 (= lt!158455 (isEmpty!2913 (list!1784 (_1!2641 (lex!475 thiss!17480 rules!1920 (seqFromList!959 lt!157931))))))))

(declare-fun isEmpty!2924 (Conc!1417) Bool)

(assert (=> d!128680 (= lt!158455 (isEmpty!2924 (c!72030 (_1!2641 (lex!475 thiss!17480 rules!1920 (seqFromList!959 lt!157931))))))))

(assert (=> d!128680 (= (isEmpty!2910 (_1!2641 (lex!475 thiss!17480 rules!1920 (seqFromList!959 lt!157931)))) lt!158455)))

(declare-fun bs!44444 () Bool)

(assert (= bs!44444 d!128680))

(declare-fun m!541523 () Bool)

(assert (=> bs!44444 m!541523))

(assert (=> bs!44444 m!541523))

(declare-fun m!541525 () Bool)

(assert (=> bs!44444 m!541525))

(declare-fun m!541527 () Bool)

(assert (=> bs!44444 m!541527))

(assert (=> b!365846 d!128680))

(declare-fun b!366911 () Bool)

(declare-fun e!225419 () Bool)

(declare-fun lt!158456 () tuple2!4850)

(assert (=> b!366911 (= e!225419 (not (isEmpty!2910 (_1!2641 lt!158456))))))

(declare-fun b!366912 () Bool)

(declare-fun e!225420 () Bool)

(assert (=> b!366912 (= e!225420 (= (_2!2641 lt!158456) (seqFromList!959 lt!157931)))))

(declare-fun b!366913 () Bool)

(declare-fun res!164052 () Bool)

(declare-fun e!225421 () Bool)

(assert (=> b!366913 (=> (not res!164052) (not e!225421))))

(assert (=> b!366913 (= res!164052 (= (list!1784 (_1!2641 lt!158456)) (_1!2645 (lexList!253 thiss!17480 rules!1920 (list!1781 (seqFromList!959 lt!157931))))))))

(declare-fun d!128682 () Bool)

(assert (=> d!128682 e!225421))

(declare-fun res!164053 () Bool)

(assert (=> d!128682 (=> (not res!164053) (not e!225421))))

(assert (=> d!128682 (= res!164053 e!225420)))

(declare-fun c!72242 () Bool)

(assert (=> d!128682 (= c!72242 (> (size!3339 (_1!2641 lt!158456)) 0))))

(assert (=> d!128682 (= lt!158456 (lexTailRecV2!220 thiss!17480 rules!1920 (seqFromList!959 lt!157931) (BalanceConc!2841 Empty!1416) (seqFromList!959 lt!157931) (BalanceConc!2843 Empty!1417)))))

(assert (=> d!128682 (= (lex!475 thiss!17480 rules!1920 (seqFromList!959 lt!157931)) lt!158456)))

(declare-fun b!366914 () Bool)

(assert (=> b!366914 (= e!225420 e!225419)))

(declare-fun res!164051 () Bool)

(assert (=> b!366914 (= res!164051 (< (size!3347 (_2!2641 lt!158456)) (size!3347 (seqFromList!959 lt!157931))))))

(assert (=> b!366914 (=> (not res!164051) (not e!225419))))

(declare-fun b!366915 () Bool)

(assert (=> b!366915 (= e!225421 (= (list!1781 (_2!2641 lt!158456)) (_2!2645 (lexList!253 thiss!17480 rules!1920 (list!1781 (seqFromList!959 lt!157931))))))))

(assert (= (and d!128682 c!72242) b!366914))

(assert (= (and d!128682 (not c!72242)) b!366912))

(assert (= (and b!366914 res!164051) b!366911))

(assert (= (and d!128682 res!164053) b!366913))

(assert (= (and b!366913 res!164052) b!366915))

(declare-fun m!541529 () Bool)

(assert (=> b!366911 m!541529))

(declare-fun m!541531 () Bool)

(assert (=> b!366914 m!541531))

(assert (=> b!366914 m!539769))

(declare-fun m!541533 () Bool)

(assert (=> b!366914 m!541533))

(declare-fun m!541535 () Bool)

(assert (=> b!366915 m!541535))

(assert (=> b!366915 m!539769))

(declare-fun m!541537 () Bool)

(assert (=> b!366915 m!541537))

(assert (=> b!366915 m!541537))

(declare-fun m!541539 () Bool)

(assert (=> b!366915 m!541539))

(declare-fun m!541541 () Bool)

(assert (=> b!366913 m!541541))

(assert (=> b!366913 m!539769))

(assert (=> b!366913 m!541537))

(assert (=> b!366913 m!541537))

(assert (=> b!366913 m!541539))

(declare-fun m!541543 () Bool)

(assert (=> d!128682 m!541543))

(assert (=> d!128682 m!539769))

(assert (=> d!128682 m!539769))

(declare-fun m!541545 () Bool)

(assert (=> d!128682 m!541545))

(assert (=> b!365846 d!128682))

(declare-fun d!128684 () Bool)

(assert (=> d!128684 (= (seqFromList!959 lt!157931) (fromListB!411 lt!157931))))

(declare-fun bs!44445 () Bool)

(assert (= bs!44445 d!128684))

(declare-fun m!541547 () Bool)

(assert (=> bs!44445 m!541547))

(assert (=> b!365846 d!128684))

(declare-fun bm!23187 () Bool)

(declare-fun call!23194 () Bool)

(declare-fun call!23192 () Bool)

(assert (=> bm!23187 (= call!23194 call!23192)))

(declare-fun b!366934 () Bool)

(declare-fun res!164066 () Bool)

(declare-fun e!225440 () Bool)

(assert (=> b!366934 (=> (not res!164066) (not e!225440))))

(assert (=> b!366934 (= res!164066 call!23194)))

(declare-fun e!225442 () Bool)

(assert (=> b!366934 (= e!225442 e!225440)))

(declare-fun b!366935 () Bool)

(declare-fun res!164068 () Bool)

(declare-fun e!225438 () Bool)

(assert (=> b!366935 (=> res!164068 e!225438)))

(assert (=> b!366935 (= res!164068 (not ((_ is Concat!1841) (regex!797 (rule!1438 lt!157892)))))))

(assert (=> b!366935 (= e!225442 e!225438)))

(declare-fun bm!23188 () Bool)

(declare-fun c!72247 () Bool)

(declare-fun c!72248 () Bool)

(assert (=> bm!23188 (= call!23192 (validRegex!283 (ite c!72247 (reg!1350 (regex!797 (rule!1438 lt!157892))) (ite c!72248 (regOne!2555 (regex!797 (rule!1438 lt!157892))) (regTwo!2554 (regex!797 (rule!1438 lt!157892)))))))))

(declare-fun b!366936 () Bool)

(declare-fun e!225441 () Bool)

(assert (=> b!366936 (= e!225441 call!23194)))

(declare-fun b!366937 () Bool)

(declare-fun call!23193 () Bool)

(assert (=> b!366937 (= e!225440 call!23193)))

(declare-fun d!128686 () Bool)

(declare-fun res!164064 () Bool)

(declare-fun e!225436 () Bool)

(assert (=> d!128686 (=> res!164064 e!225436)))

(assert (=> d!128686 (= res!164064 ((_ is ElementMatch!1021) (regex!797 (rule!1438 lt!157892))))))

(assert (=> d!128686 (= (validRegex!283 (regex!797 (rule!1438 lt!157892))) e!225436)))

(declare-fun bm!23189 () Bool)

(assert (=> bm!23189 (= call!23193 (validRegex!283 (ite c!72248 (regTwo!2555 (regex!797 (rule!1438 lt!157892))) (regOne!2554 (regex!797 (rule!1438 lt!157892))))))))

(declare-fun b!366938 () Bool)

(declare-fun e!225437 () Bool)

(assert (=> b!366938 (= e!225437 call!23192)))

(declare-fun b!366939 () Bool)

(declare-fun e!225439 () Bool)

(assert (=> b!366939 (= e!225439 e!225437)))

(declare-fun res!164067 () Bool)

(assert (=> b!366939 (= res!164067 (not (nullable!208 (reg!1350 (regex!797 (rule!1438 lt!157892))))))))

(assert (=> b!366939 (=> (not res!164067) (not e!225437))))

(declare-fun b!366940 () Bool)

(assert (=> b!366940 (= e!225438 e!225441)))

(declare-fun res!164065 () Bool)

(assert (=> b!366940 (=> (not res!164065) (not e!225441))))

(assert (=> b!366940 (= res!164065 call!23193)))

(declare-fun b!366941 () Bool)

(assert (=> b!366941 (= e!225436 e!225439)))

(assert (=> b!366941 (= c!72247 ((_ is Star!1021) (regex!797 (rule!1438 lt!157892))))))

(declare-fun b!366942 () Bool)

(assert (=> b!366942 (= e!225439 e!225442)))

(assert (=> b!366942 (= c!72248 ((_ is Union!1021) (regex!797 (rule!1438 lt!157892))))))

(assert (= (and d!128686 (not res!164064)) b!366941))

(assert (= (and b!366941 c!72247) b!366939))

(assert (= (and b!366941 (not c!72247)) b!366942))

(assert (= (and b!366939 res!164067) b!366938))

(assert (= (and b!366942 c!72248) b!366934))

(assert (= (and b!366942 (not c!72248)) b!366935))

(assert (= (and b!366934 res!164066) b!366937))

(assert (= (and b!366935 (not res!164068)) b!366940))

(assert (= (and b!366940 res!164065) b!366936))

(assert (= (or b!366934 b!366936) bm!23187))

(assert (= (or b!366937 b!366940) bm!23189))

(assert (= (or b!366938 bm!23187) bm!23188))

(declare-fun m!541549 () Bool)

(assert (=> bm!23188 m!541549))

(declare-fun m!541551 () Bool)

(assert (=> bm!23189 m!541551))

(declare-fun m!541553 () Bool)

(assert (=> b!366939 m!541553))

(assert (=> b!365867 d!128686))

(declare-fun b!366956 () Bool)

(declare-fun b_free!11469 () Bool)

(declare-fun b_next!11469 () Bool)

(assert (=> b!366956 (= b_free!11469 (not b_next!11469))))

(declare-fun tp!116114 () Bool)

(declare-fun b_and!36861 () Bool)

(assert (=> b!366956 (= tp!116114 b_and!36861)))

(declare-fun b_free!11471 () Bool)

(declare-fun b_next!11471 () Bool)

(assert (=> b!366956 (= b_free!11471 (not b_next!11471))))

(declare-fun tb!32149 () Bool)

(declare-fun t!56565 () Bool)

(assert (=> (and b!366956 (= (toChars!1435 (transformation!797 (rule!1438 (h!9536 (t!56489 tokens!465))))) (toChars!1435 (transformation!797 (rule!1438 lt!157892)))) t!56565) tb!32149))

(declare-fun result!36306 () Bool)

(assert (= result!36306 result!36278))

(assert (=> d!128534 t!56565))

(declare-fun t!56567 () Bool)

(declare-fun tb!32151 () Bool)

(assert (=> (and b!366956 (= (toChars!1435 (transformation!797 (rule!1438 (h!9536 (t!56489 tokens!465))))) (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465))))) t!56567) tb!32151))

(declare-fun result!36308 () Bool)

(assert (= result!36308 result!36260))

(assert (=> b!366565 t!56567))

(declare-fun t!56569 () Bool)

(declare-fun tb!32153 () Bool)

(assert (=> (and b!366956 (= (toChars!1435 (transformation!797 (rule!1438 (h!9536 (t!56489 tokens!465))))) (toChars!1435 (transformation!797 (rule!1438 separatorToken!170)))) t!56569) tb!32153))

(declare-fun result!36310 () Bool)

(assert (= result!36310 result!36252))

(assert (=> b!366563 t!56569))

(assert (=> d!128386 t!56569))

(assert (=> d!128398 t!56567))

(declare-fun tp!116113 () Bool)

(declare-fun b_and!36863 () Bool)

(assert (=> b!366956 (= tp!116113 (and (=> t!56567 result!36308) (=> t!56565 result!36306) (=> t!56569 result!36310) b_and!36863))))

(declare-fun e!225458 () Bool)

(assert (=> b!366956 (= e!225458 (and tp!116114 tp!116113))))

(declare-fun tp!116116 () Bool)

(declare-fun b!366954 () Bool)

(declare-fun e!225460 () Bool)

(declare-fun e!225456 () Bool)

(assert (=> b!366954 (= e!225460 (and (inv!21 (value!27030 (h!9536 (t!56489 tokens!465)))) e!225456 tp!116116))))

(declare-fun b!366953 () Bool)

(declare-fun tp!116112 () Bool)

(declare-fun e!225459 () Bool)

(assert (=> b!366953 (= e!225459 (and (inv!5142 (h!9536 (t!56489 tokens!465))) e!225460 tp!116112))))

(declare-fun b!366955 () Bool)

(declare-fun tp!116115 () Bool)

(assert (=> b!366955 (= e!225456 (and tp!116115 (inv!5138 (tag!1023 (rule!1438 (h!9536 (t!56489 tokens!465))))) (inv!5141 (transformation!797 (rule!1438 (h!9536 (t!56489 tokens!465))))) e!225458))))

(assert (=> b!365845 (= tp!116030 e!225459)))

(assert (= b!366955 b!366956))

(assert (= b!366954 b!366955))

(assert (= b!366953 b!366954))

(assert (= (and b!365845 ((_ is Cons!4139) (t!56489 tokens!465))) b!366953))

(declare-fun m!541555 () Bool)

(assert (=> b!366954 m!541555))

(declare-fun m!541557 () Bool)

(assert (=> b!366953 m!541557))

(declare-fun m!541559 () Bool)

(assert (=> b!366955 m!541559))

(declare-fun m!541561 () Bool)

(assert (=> b!366955 m!541561))

(declare-fun b!366967 () Bool)

(declare-fun b_free!11473 () Bool)

(declare-fun b_next!11473 () Bool)

(assert (=> b!366967 (= b_free!11473 (not b_next!11473))))

(declare-fun tp!116126 () Bool)

(declare-fun b_and!36865 () Bool)

(assert (=> b!366967 (= tp!116126 b_and!36865)))

(declare-fun b_free!11475 () Bool)

(declare-fun b_next!11475 () Bool)

(assert (=> b!366967 (= b_free!11475 (not b_next!11475))))

(declare-fun t!56571 () Bool)

(declare-fun tb!32155 () Bool)

(assert (=> (and b!366967 (= (toChars!1435 (transformation!797 (h!9535 (t!56488 rules!1920)))) (toChars!1435 (transformation!797 (rule!1438 lt!157892)))) t!56571) tb!32155))

(declare-fun result!36314 () Bool)

(assert (= result!36314 result!36278))

(assert (=> d!128534 t!56571))

(declare-fun t!56573 () Bool)

(declare-fun tb!32157 () Bool)

(assert (=> (and b!366967 (= (toChars!1435 (transformation!797 (h!9535 (t!56488 rules!1920)))) (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465))))) t!56573) tb!32157))

(declare-fun result!36316 () Bool)

(assert (= result!36316 result!36260))

(assert (=> b!366565 t!56573))

(declare-fun t!56575 () Bool)

(declare-fun tb!32159 () Bool)

(assert (=> (and b!366967 (= (toChars!1435 (transformation!797 (h!9535 (t!56488 rules!1920)))) (toChars!1435 (transformation!797 (rule!1438 separatorToken!170)))) t!56575) tb!32159))

(declare-fun result!36318 () Bool)

(assert (= result!36318 result!36252))

(assert (=> b!366563 t!56575))

(assert (=> d!128386 t!56575))

(assert (=> d!128398 t!56573))

(declare-fun b_and!36867 () Bool)

(declare-fun tp!116125 () Bool)

(assert (=> b!366967 (= tp!116125 (and (=> t!56575 result!36318) (=> t!56571 result!36314) (=> t!56573 result!36316) b_and!36867))))

(declare-fun e!225470 () Bool)

(assert (=> b!366967 (= e!225470 (and tp!116126 tp!116125))))

(declare-fun tp!116127 () Bool)

(declare-fun b!366966 () Bool)

(declare-fun e!225469 () Bool)

(assert (=> b!366966 (= e!225469 (and tp!116127 (inv!5138 (tag!1023 (h!9535 (t!56488 rules!1920)))) (inv!5141 (transformation!797 (h!9535 (t!56488 rules!1920)))) e!225470))))

(declare-fun b!366965 () Bool)

(declare-fun e!225471 () Bool)

(declare-fun tp!116128 () Bool)

(assert (=> b!366965 (= e!225471 (and e!225469 tp!116128))))

(assert (=> b!365843 (= tp!116025 e!225471)))

(assert (= b!366966 b!366967))

(assert (= b!366965 b!366966))

(assert (= (and b!365843 ((_ is Cons!4138) (t!56488 rules!1920))) b!366965))

(declare-fun m!541563 () Bool)

(assert (=> b!366966 m!541563))

(declare-fun m!541565 () Bool)

(assert (=> b!366966 m!541565))

(declare-fun e!225475 () Bool)

(assert (=> b!365842 (= tp!116035 e!225475)))

(declare-fun b!366978 () Bool)

(declare-fun tp_is_empty!1907 () Bool)

(assert (=> b!366978 (= e!225475 tp_is_empty!1907)))

(declare-fun b!366980 () Bool)

(declare-fun tp!116139 () Bool)

(assert (=> b!366980 (= e!225475 tp!116139)))

(declare-fun b!366979 () Bool)

(declare-fun tp!116140 () Bool)

(declare-fun tp!116143 () Bool)

(assert (=> b!366979 (= e!225475 (and tp!116140 tp!116143))))

(declare-fun b!366981 () Bool)

(declare-fun tp!116141 () Bool)

(declare-fun tp!116142 () Bool)

(assert (=> b!366981 (= e!225475 (and tp!116141 tp!116142))))

(assert (= (and b!365842 ((_ is ElementMatch!1021) (regex!797 (rule!1438 separatorToken!170)))) b!366978))

(assert (= (and b!365842 ((_ is Concat!1841) (regex!797 (rule!1438 separatorToken!170)))) b!366979))

(assert (= (and b!365842 ((_ is Star!1021) (regex!797 (rule!1438 separatorToken!170)))) b!366980))

(assert (= (and b!365842 ((_ is Union!1021) (regex!797 (rule!1438 separatorToken!170)))) b!366981))

(declare-fun b!366986 () Bool)

(declare-fun e!225478 () Bool)

(declare-fun tp!116146 () Bool)

(assert (=> b!366986 (= e!225478 (and tp_is_empty!1907 tp!116146))))

(assert (=> b!365873 (= tp!116031 e!225478)))

(assert (= (and b!365873 ((_ is Cons!4137) (originalCharacters!840 (h!9536 tokens!465)))) b!366986))

(declare-fun e!225479 () Bool)

(assert (=> b!365851 (= tp!116034 e!225479)))

(declare-fun b!366987 () Bool)

(assert (=> b!366987 (= e!225479 tp_is_empty!1907)))

(declare-fun b!366989 () Bool)

(declare-fun tp!116147 () Bool)

(assert (=> b!366989 (= e!225479 tp!116147)))

(declare-fun b!366988 () Bool)

(declare-fun tp!116148 () Bool)

(declare-fun tp!116151 () Bool)

(assert (=> b!366988 (= e!225479 (and tp!116148 tp!116151))))

(declare-fun b!366990 () Bool)

(declare-fun tp!116149 () Bool)

(declare-fun tp!116150 () Bool)

(assert (=> b!366990 (= e!225479 (and tp!116149 tp!116150))))

(assert (= (and b!365851 ((_ is ElementMatch!1021) (regex!797 (rule!1438 (h!9536 tokens!465))))) b!366987))

(assert (= (and b!365851 ((_ is Concat!1841) (regex!797 (rule!1438 (h!9536 tokens!465))))) b!366988))

(assert (= (and b!365851 ((_ is Star!1021) (regex!797 (rule!1438 (h!9536 tokens!465))))) b!366989))

(assert (= (and b!365851 ((_ is Union!1021) (regex!797 (rule!1438 (h!9536 tokens!465))))) b!366990))

(declare-fun b!366991 () Bool)

(declare-fun e!225480 () Bool)

(declare-fun tp!116152 () Bool)

(assert (=> b!366991 (= e!225480 (and tp_is_empty!1907 tp!116152))))

(assert (=> b!365861 (= tp!116024 e!225480)))

(assert (= (and b!365861 ((_ is Cons!4137) (originalCharacters!840 separatorToken!170))) b!366991))

(declare-fun b!366994 () Bool)

(declare-fun e!225483 () Bool)

(assert (=> b!366994 (= e!225483 true)))

(declare-fun b!366993 () Bool)

(declare-fun e!225482 () Bool)

(assert (=> b!366993 (= e!225482 e!225483)))

(declare-fun b!366992 () Bool)

(declare-fun e!225481 () Bool)

(assert (=> b!366992 (= e!225481 e!225482)))

(assert (=> b!365888 e!225481))

(assert (= b!366993 b!366994))

(assert (= b!366992 b!366993))

(assert (= (and b!365888 ((_ is Cons!4138) (t!56488 rules!1920))) b!366992))

(assert (=> b!366994 (< (dynLambda!2345 order!3449 (toValue!1576 (transformation!797 (h!9535 (t!56488 rules!1920))))) (dynLambda!2346 order!3451 lambda!11384))))

(assert (=> b!366994 (< (dynLambda!2347 order!3453 (toChars!1435 (transformation!797 (h!9535 (t!56488 rules!1920))))) (dynLambda!2346 order!3451 lambda!11384))))

(declare-fun e!225484 () Bool)

(assert (=> b!365869 (= tp!116028 e!225484)))

(declare-fun b!366995 () Bool)

(assert (=> b!366995 (= e!225484 tp_is_empty!1907)))

(declare-fun b!366997 () Bool)

(declare-fun tp!116153 () Bool)

(assert (=> b!366997 (= e!225484 tp!116153)))

(declare-fun b!366996 () Bool)

(declare-fun tp!116154 () Bool)

(declare-fun tp!116157 () Bool)

(assert (=> b!366996 (= e!225484 (and tp!116154 tp!116157))))

(declare-fun b!366998 () Bool)

(declare-fun tp!116155 () Bool)

(declare-fun tp!116156 () Bool)

(assert (=> b!366998 (= e!225484 (and tp!116155 tp!116156))))

(assert (= (and b!365869 ((_ is ElementMatch!1021) (regex!797 (h!9535 rules!1920)))) b!366995))

(assert (= (and b!365869 ((_ is Concat!1841) (regex!797 (h!9535 rules!1920)))) b!366996))

(assert (= (and b!365869 ((_ is Star!1021) (regex!797 (h!9535 rules!1920)))) b!366997))

(assert (= (and b!365869 ((_ is Union!1021) (regex!797 (h!9535 rules!1920)))) b!366998))

(declare-fun b_lambda!14353 () Bool)

(assert (= b_lambda!14313 (or (and b!366967 b_free!11475 (= (toChars!1435 (transformation!797 (h!9535 (t!56488 rules!1920)))) (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))))) (and b!366956 b_free!11471 (= (toChars!1435 (transformation!797 (rule!1438 (h!9536 (t!56489 tokens!465))))) (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))))) (and b!365849 b_free!11455) (and b!365856 b_free!11451 (= (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))) (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))))) (and b!365865 b_free!11459 (= (toChars!1435 (transformation!797 (h!9535 rules!1920))) (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))))) b_lambda!14353)))

(declare-fun b_lambda!14355 () Bool)

(assert (= b_lambda!14315 (or b!365872 b_lambda!14355)))

(declare-fun bs!44446 () Bool)

(declare-fun d!128688 () Bool)

(assert (= bs!44446 (and d!128688 b!365872)))

(assert (=> bs!44446 (= (dynLambda!2351 lambda!11383 (h!9536 tokens!465)) (not (isSeparator!797 (rule!1438 (h!9536 tokens!465)))))))

(assert (=> b!366399 d!128688))

(declare-fun b_lambda!14357 () Bool)

(assert (= b_lambda!14311 (or (and b!366967 b_free!11475 (= (toChars!1435 (transformation!797 (h!9535 (t!56488 rules!1920)))) (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))))) (and b!365849 b_free!11455 (= (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))) (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))))) (and b!365856 b_free!11451) (and b!365865 b_free!11459 (= (toChars!1435 (transformation!797 (h!9535 rules!1920))) (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))))) (and b!366956 b_free!11471 (= (toChars!1435 (transformation!797 (rule!1438 (h!9536 (t!56489 tokens!465))))) (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))))) b_lambda!14357)))

(declare-fun b_lambda!14359 () Bool)

(assert (= b_lambda!14321 (or (and b!366967 b_free!11475 (= (toChars!1435 (transformation!797 (h!9535 (t!56488 rules!1920)))) (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))))) (and b!365849 b_free!11455 (= (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))) (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))))) (and b!365856 b_free!11451) (and b!365865 b_free!11459 (= (toChars!1435 (transformation!797 (h!9535 rules!1920))) (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))))) (and b!366956 b_free!11471 (= (toChars!1435 (transformation!797 (rule!1438 (h!9536 (t!56489 tokens!465))))) (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))))) b_lambda!14359)))

(declare-fun b_lambda!14361 () Bool)

(assert (= b_lambda!14351 (or b!365871 b_lambda!14361)))

(declare-fun bs!44447 () Bool)

(declare-fun d!128690 () Bool)

(assert (= bs!44447 (and d!128690 b!365871)))

(assert (=> bs!44447 (= (dynLambda!2351 lambda!11384 (h!9536 tokens!465)) (rulesProduceIndividualToken!432 thiss!17480 rules!1920 (h!9536 tokens!465)))))

(assert (=> bs!44447 m!539595))

(assert (=> d!128666 d!128690))

(declare-fun b_lambda!14363 () Bool)

(assert (= b_lambda!14327 (or b!365871 b_lambda!14363)))

(declare-fun bs!44448 () Bool)

(declare-fun d!128692 () Bool)

(assert (= bs!44448 (and d!128692 b!365871)))

(assert (=> bs!44448 (= (dynLambda!2351 lambda!11384 lt!157892) (rulesProduceIndividualToken!432 thiss!17480 rules!1920 lt!157892))))

(assert (=> bs!44448 m!539663))

(assert (=> d!128570 d!128692))

(declare-fun b_lambda!14365 () Bool)

(assert (= b_lambda!14323 (or (and b!366967 b_free!11475 (= (toChars!1435 (transformation!797 (h!9535 (t!56488 rules!1920)))) (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))))) (and b!366956 b_free!11471 (= (toChars!1435 (transformation!797 (rule!1438 (h!9536 (t!56489 tokens!465))))) (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))))) (and b!365849 b_free!11455) (and b!365856 b_free!11451 (= (toChars!1435 (transformation!797 (rule!1438 separatorToken!170))) (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))))) (and b!365865 b_free!11459 (= (toChars!1435 (transformation!797 (h!9535 rules!1920))) (toChars!1435 (transformation!797 (rule!1438 (h!9536 tokens!465)))))) b_lambda!14365)))

(check-sat (not b!366552) (not b!366953) (not b!366894) (not b!366914) (not b!366902) (not b!366468) (not bs!44448) (not b_next!11449) (not b!366653) (not d!128650) b_and!36781 (not b!366890) (not b!366617) (not d!128558) (not b!366566) (not b!366592) (not b!366558) (not b!366692) (not b!366996) (not b!366689) (not b!366478) (not b!366648) (not b!366913) (not b!366435) (not d!128642) (not b!366596) (not tb!32107) (not bm!23180) (not b!366173) (not b_lambda!14355) (not b!366915) (not b!366172) (not b!366907) (not b!366582) (not b!366555) (not d!128426) (not b!366674) (not d!128522) (not d!128296) (not d!128554) (not b!366676) (not b!366616) (not b!366185) (not b!366404) (not b_lambda!14363) tp_is_empty!1907 (not bm!23093) (not d!128660) (not d!128392) (not b!366574) (not b!366563) (not b!366573) (not b!366431) (not b!366649) (not b!366012) (not d!128666) (not b!366991) (not b!366680) (not d!128620) (not b!366482) (not b!366072) (not b_next!11455) (not d!128514) (not b!366567) (not b!366656) (not b!366998) (not b!366615) (not tb!32113) (not b!366152) (not d!128336) (not d!128586) (not bm!23151) (not b!366595) (not b!365919) (not d!128648) (not bm!23091) b_and!36785 (not b!366681) (not b_lambda!14359) (not b!366797) (not bm!23056) (not b!366076) (not b!366557) b_and!36865 (not b_lambda!14357) (not b!366352) b_and!36863 (not b!366988) (not bm!23057) (not d!128526) (not b!366594) (not d!128388) b_and!36789 (not b!366434) (not d!128680) (not b!366430) (not b!366550) (not d!128394) (not d!128684) (not b!366655) (not d!128384) (not b_next!11457) (not d!128494) (not b!366901) (not b!366546) (not b!366469) (not b!366939) (not d!128582) (not b!366686) (not b!366652) (not b!366597) (not b!366465) (not d!128652) (not b!366146) (not b!366464) (not d!128552) (not b!366593) (not b!366906) (not b!366241) (not b!366182) (not b!366253) (not b!366889) (not b!366684) (not b!366177) (not b!366553) (not b!366427) (not d!128386) (not tb!32131) (not b!366184) (not b!366955) (not b!366400) (not d!128342) (not b!366997) (not b_lambda!14365) (not b!366657) (not b!366189) (not b!366150) (not d!128518) (not bm!23094) (not b!366393) (not d!128576) (not d!128400) (not d!128546) (not b_next!11473) (not d!128662) (not b_lambda!14353) (not b!366394) (not b!366867) (not b!366989) (not b!366252) (not b!366171) (not b!366164) (not bm!23084) (not b!366338) (not d!128532) (not d!128476) (not d!128372) (not b!366685) (not b!366980) (not b!366966) (not b!366598) (not d!128398) (not b!366428) (not bm!23188) (not b!366479) (not b!366487) (not b!366575) b_and!36837 (not d!128562) (not d!128340) (not b!366545) (not d!128580) (not b!366796) (not b!366979) (not d!128524) (not b!366245) (not d!128402) (not b_next!11453) (not b!366149) (not b_lambda!14325) (not b!366433) b_and!36861 (not d!128484) (not b!366897) (not b!366074) (not d!128376) (not b!366483) (not b!366895) (not b!366175) (not b!366570) (not b!366600) (not d!128528) b_and!36835 (not b!366688) (not b!366613) (not b!366572) (not bm!23060) (not b_next!11469) (not bm!23189) (not bm!23086) (not b!366581) (not b!366408) (not d!128380) (not b!366240) (not b!366568) (not b!366013) (not bm!23179) (not bm!23097) (not b!366691) (not b!366165) (not b!366888) (not d!128542) (not b!366556) (not b!366147) (not b!366990) (not bm!23115) (not bm!23162) (not d!128578) (not b!366340) (not d!128370) (not bs!44447) (not d!128516) (not d!128550) (not b!366362) (not b!366870) (not bm!23085) (not b!366403) (not d!128590) (not b!366986) (not b!366244) (not d!128644) (not d!128544) (not d!128654) (not bm!23089) (not bm!23160) (not d!128568) (not d!128672) (not bm!23161) (not d!128674) (not b!366081) (not b_next!11459) (not b!366174) (not b!366250) (not b!366077) (not b!366898) (not b!366565) (not b!366693) (not b!366474) (not b!366992) (not b!366723) (not b!366075) (not b!366675) (not d!128678) (not d!128640) (not d!128488) (not d!128486) (not bm!23058) (not bm!23095) (not b!366892) (not b!366721) (not b!366911) b_and!36867 (not b!366180) (not d!128492) (not b!366965) (not b_next!11475) (not d!128530) (not d!128344) (not d!128404) (not b!366571) (not b!366407) (not b_lambda!14361) (not d!128570) (not b!366432) (not b!366677) (not d!128534) (not b!365918) (not b!366183) (not b!366887) (not b!366893) (not d!128548) (not bm!23135) (not bm!23090) (not b!366690) (not b!366896) b_and!36839 (not bm!23118) (not b!366547) (not b_next!11471) (not b!366148) (not b!366473) (not b!366390) (not b!366488) (not b_next!11451) (not d!128520) (not b!366720) (not d!128560) (not b!366564) (not d!128538) (not b!366682) (not d!128446) (not d!128664) (not d!128682) (not d!128374) (not b!366954) (not b!366651) (not b!366238) (not bm!23119) (not b!366981))
(check-sat (not b_next!11455) b_and!36785 (not b_next!11457) (not b_next!11473) b_and!36837 (not b_next!11453) b_and!36861 (not b_next!11459) b_and!36839 (not b_next!11449) b_and!36781 b_and!36865 b_and!36863 b_and!36789 b_and!36835 (not b_next!11469) b_and!36867 (not b_next!11475) (not b_next!11471) (not b_next!11451))

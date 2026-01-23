; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20334 () Bool)

(assert start!20334)

(declare-fun b!187826 () Bool)

(declare-fun b_free!7409 () Bool)

(declare-fun b_next!7409 () Bool)

(assert (=> b!187826 (= b_free!7409 (not b_next!7409))))

(declare-fun tp!87951 () Bool)

(declare-fun b_and!12965 () Bool)

(assert (=> b!187826 (= tp!87951 b_and!12965)))

(declare-fun b_free!7411 () Bool)

(declare-fun b_next!7411 () Bool)

(assert (=> b!187826 (= b_free!7411 (not b_next!7411))))

(declare-fun tp!87954 () Bool)

(declare-fun b_and!12967 () Bool)

(assert (=> b!187826 (= tp!87954 b_and!12967)))

(declare-fun b!187840 () Bool)

(declare-fun b_free!7413 () Bool)

(declare-fun b_next!7413 () Bool)

(assert (=> b!187840 (= b_free!7413 (not b_next!7413))))

(declare-fun tp!87953 () Bool)

(declare-fun b_and!12969 () Bool)

(assert (=> b!187840 (= tp!87953 b_and!12969)))

(declare-fun b_free!7415 () Bool)

(declare-fun b_next!7415 () Bool)

(assert (=> b!187840 (= b_free!7415 (not b_next!7415))))

(declare-fun tp!87949 () Bool)

(declare-fun b_and!12971 () Bool)

(assert (=> b!187840 (= tp!87949 b_and!12971)))

(declare-fun b!187814 () Bool)

(declare-fun b_free!7417 () Bool)

(declare-fun b_next!7417 () Bool)

(assert (=> b!187814 (= b_free!7417 (not b_next!7417))))

(declare-fun tp!87958 () Bool)

(declare-fun b_and!12973 () Bool)

(assert (=> b!187814 (= tp!87958 b_and!12973)))

(declare-fun b_free!7419 () Bool)

(declare-fun b_next!7419 () Bool)

(assert (=> b!187814 (= b_free!7419 (not b_next!7419))))

(declare-fun tp!87948 () Bool)

(declare-fun b_and!12975 () Bool)

(assert (=> b!187814 (= tp!87948 b_and!12975)))

(declare-fun bs!18630 () Bool)

(declare-fun b!187842 () Bool)

(declare-fun b!187833 () Bool)

(assert (= bs!18630 (and b!187842 b!187833)))

(declare-fun lambda!5694 () Int)

(declare-fun lambda!5693 () Int)

(assert (=> bs!18630 (not (= lambda!5694 lambda!5693))))

(declare-fun b!187856 () Bool)

(declare-fun e!115089 () Bool)

(assert (=> b!187856 (= e!115089 true)))

(declare-fun b!187855 () Bool)

(declare-fun e!115088 () Bool)

(assert (=> b!187855 (= e!115088 e!115089)))

(declare-fun b!187854 () Bool)

(declare-fun e!115087 () Bool)

(assert (=> b!187854 (= e!115087 e!115088)))

(assert (=> b!187842 e!115087))

(assert (= b!187855 b!187856))

(assert (= b!187854 b!187855))

(declare-datatypes ((List!3153 0))(
  ( (Nil!3143) (Cons!3143 (h!8540 (_ BitVec 16)) (t!28751 List!3153)) )
))
(declare-datatypes ((TokenValue!597 0))(
  ( (FloatLiteralValue!1194 (text!4624 List!3153)) (TokenValueExt!596 (__x!2681 Int)) (Broken!2985 (value!20677 List!3153)) (Object!606) (End!597) (Def!597) (Underscore!597) (Match!597) (Else!597) (Error!597) (Case!597) (If!597) (Extends!597) (Abstract!597) (Class!597) (Val!597) (DelimiterValue!1194 (del!657 List!3153)) (KeywordValue!603 (value!20678 List!3153)) (CommentValue!1194 (value!20679 List!3153)) (WhitespaceValue!1194 (value!20680 List!3153)) (IndentationValue!597 (value!20681 List!3153)) (String!4064) (Int32!597) (Broken!2986 (value!20682 List!3153)) (Boolean!598) (Unit!2929) (OperatorValue!600 (op!657 List!3153)) (IdentifierValue!1194 (value!20683 List!3153)) (IdentifierValue!1195 (value!20684 List!3153)) (WhitespaceValue!1195 (value!20685 List!3153)) (True!1194) (False!1194) (Broken!2987 (value!20686 List!3153)) (Broken!2988 (value!20687 List!3153)) (True!1195) (RightBrace!597) (RightBracket!597) (Colon!597) (Null!597) (Comma!597) (LeftBracket!597) (False!1195) (LeftBrace!597) (ImaginaryLiteralValue!597 (text!4625 List!3153)) (StringLiteralValue!1791 (value!20688 List!3153)) (EOFValue!597 (value!20689 List!3153)) (IdentValue!597 (value!20690 List!3153)) (DelimiterValue!1195 (value!20691 List!3153)) (DedentValue!597 (value!20692 List!3153)) (NewLineValue!597 (value!20693 List!3153)) (IntegerValue!1791 (value!20694 (_ BitVec 32)) (text!4626 List!3153)) (IntegerValue!1792 (value!20695 Int) (text!4627 List!3153)) (Times!597) (Or!597) (Equal!597) (Minus!597) (Broken!2989 (value!20696 List!3153)) (And!597) (Div!597) (LessEqual!597) (Mod!597) (Concat!1396) (Not!597) (Plus!597) (SpaceValue!597 (value!20697 List!3153)) (IntegerValue!1793 (value!20698 Int) (text!4628 List!3153)) (StringLiteralValue!1792 (text!4629 List!3153)) (FloatLiteralValue!1195 (text!4630 List!3153)) (BytesLiteralValue!597 (value!20699 List!3153)) (CommentValue!1195 (value!20700 List!3153)) (StringLiteralValue!1793 (value!20701 List!3153)) (ErrorTokenValue!597 (msg!658 List!3153)) )
))
(declare-datatypes ((C!2520 0))(
  ( (C!2521 (val!1146 Int)) )
))
(declare-datatypes ((List!3154 0))(
  ( (Nil!3144) (Cons!3144 (h!8541 C!2520) (t!28752 List!3154)) )
))
(declare-datatypes ((IArray!1945 0))(
  ( (IArray!1946 (innerList!1030 List!3154)) )
))
(declare-datatypes ((Conc!972 0))(
  ( (Node!972 (left!2466 Conc!972) (right!2796 Conc!972) (csize!2174 Int) (cheight!1183 Int)) (Leaf!1599 (xs!3567 IArray!1945) (csize!2175 Int)) (Empty!972) )
))
(declare-datatypes ((BalanceConc!1952 0))(
  ( (BalanceConc!1953 (c!36145 Conc!972)) )
))
(declare-datatypes ((TokenValueInjection!966 0))(
  ( (TokenValueInjection!967 (toValue!1246 Int) (toChars!1105 Int)) )
))
(declare-datatypes ((String!4065 0))(
  ( (String!4066 (value!20702 String)) )
))
(declare-datatypes ((Regex!799 0))(
  ( (ElementMatch!799 (c!36146 C!2520)) (Concat!1397 (regOne!2110 Regex!799) (regTwo!2110 Regex!799)) (EmptyExpr!799) (Star!799 (reg!1128 Regex!799)) (EmptyLang!799) (Union!799 (regOne!2111 Regex!799) (regTwo!2111 Regex!799)) )
))
(declare-datatypes ((Rule!950 0))(
  ( (Rule!951 (regex!575 Regex!799) (tag!753 String!4065) (isSeparator!575 Bool) (transformation!575 TokenValueInjection!966)) )
))
(declare-datatypes ((List!3155 0))(
  ( (Nil!3145) (Cons!3145 (h!8542 Rule!950) (t!28753 List!3155)) )
))
(declare-fun rules!1920 () List!3155)

(get-info :version)

(assert (= (and b!187842 ((_ is Cons!3145) rules!1920)) b!187854))

(declare-fun order!1925 () Int)

(declare-fun order!1927 () Int)

(declare-fun dynLambda!1311 (Int Int) Int)

(declare-fun dynLambda!1312 (Int Int) Int)

(assert (=> b!187856 (< (dynLambda!1311 order!1925 (toValue!1246 (transformation!575 (h!8542 rules!1920)))) (dynLambda!1312 order!1927 lambda!5694))))

(declare-fun order!1929 () Int)

(declare-fun dynLambda!1313 (Int Int) Int)

(assert (=> b!187856 (< (dynLambda!1313 order!1929 (toChars!1105 (transformation!575 (h!8542 rules!1920)))) (dynLambda!1312 order!1927 lambda!5694))))

(assert (=> b!187842 true))

(declare-fun b!187811 () Bool)

(declare-fun e!115074 () Bool)

(declare-fun e!115071 () Bool)

(assert (=> b!187811 (= e!115074 e!115071)))

(declare-fun res!85747 () Bool)

(assert (=> b!187811 (=> res!85747 e!115071)))

(declare-fun lt!63356 () List!3154)

(declare-fun lt!63355 () List!3154)

(declare-fun lt!63334 () List!3154)

(assert (=> b!187811 (= res!85747 (or (not (= lt!63356 lt!63355)) (not (= lt!63355 lt!63334)) (not (= lt!63356 lt!63334))))))

(declare-datatypes ((LexerInterface!461 0))(
  ( (LexerInterfaceExt!458 (__x!2682 Int)) (Lexer!459) )
))
(declare-fun thiss!17480 () LexerInterface!461)

(declare-datatypes ((Token!894 0))(
  ( (Token!895 (value!20703 TokenValue!597) (rule!1090 Rule!950) (size!2529 Int) (originalCharacters!618 List!3154)) )
))
(declare-datatypes ((List!3156 0))(
  ( (Nil!3146) (Cons!3146 (h!8543 Token!894) (t!28754 List!3156)) )
))
(declare-fun tokens!465 () List!3156)

(declare-fun printList!145 (LexerInterface!461 List!3156) List!3154)

(assert (=> b!187811 (= lt!63355 (printList!145 thiss!17480 (Cons!3146 (h!8543 tokens!465) Nil!3146)))))

(declare-fun lt!63349 () BalanceConc!1952)

(declare-fun list!1157 (BalanceConc!1952) List!3154)

(assert (=> b!187811 (= lt!63356 (list!1157 lt!63349))))

(declare-datatypes ((IArray!1947 0))(
  ( (IArray!1948 (innerList!1031 List!3156)) )
))
(declare-datatypes ((Conc!973 0))(
  ( (Node!973 (left!2467 Conc!973) (right!2797 Conc!973) (csize!2176 Int) (cheight!1184 Int)) (Leaf!1600 (xs!3568 IArray!1947) (csize!2177 Int)) (Empty!973) )
))
(declare-datatypes ((BalanceConc!1954 0))(
  ( (BalanceConc!1955 (c!36147 Conc!973)) )
))
(declare-fun lt!63340 () BalanceConc!1954)

(declare-fun printTailRec!155 (LexerInterface!461 BalanceConc!1954 Int BalanceConc!1952) BalanceConc!1952)

(assert (=> b!187811 (= lt!63349 (printTailRec!155 thiss!17480 lt!63340 0 (BalanceConc!1953 Empty!972)))))

(declare-fun print!192 (LexerInterface!461 BalanceConc!1954) BalanceConc!1952)

(assert (=> b!187811 (= lt!63349 (print!192 thiss!17480 lt!63340))))

(declare-fun singletonSeq!127 (Token!894) BalanceConc!1954)

(assert (=> b!187811 (= lt!63340 (singletonSeq!127 (h!8543 tokens!465)))))

(declare-fun b!187812 () Bool)

(declare-datatypes ((Unit!2930 0))(
  ( (Unit!2931) )
))
(declare-fun e!115076 () Unit!2930)

(declare-fun Unit!2932 () Unit!2930)

(assert (=> b!187812 (= e!115076 Unit!2932)))

(assert (=> b!187812 false))

(declare-fun separatorToken!170 () Token!894)

(declare-fun b!187813 () Bool)

(declare-fun e!115072 () Bool)

(declare-fun e!115062 () Bool)

(declare-fun tp!87957 () Bool)

(declare-fun inv!3970 (String!4065) Bool)

(declare-fun inv!3973 (TokenValueInjection!966) Bool)

(assert (=> b!187813 (= e!115072 (and tp!87957 (inv!3970 (tag!753 (rule!1090 separatorToken!170))) (inv!3973 (transformation!575 (rule!1090 separatorToken!170))) e!115062))))

(declare-fun e!115054 () Bool)

(assert (=> b!187814 (= e!115054 (and tp!87958 tp!87948))))

(declare-fun lt!63348 () List!3154)

(declare-fun e!115057 () Bool)

(declare-fun lt!63341 () List!3154)

(declare-fun b!187815 () Bool)

(declare-fun ++!748 (List!3154 List!3154) List!3154)

(assert (=> b!187815 (= e!115057 (not (= lt!63348 (++!748 lt!63334 lt!63341))))))

(declare-fun tp!87955 () Bool)

(declare-fun e!115053 () Bool)

(declare-fun e!115066 () Bool)

(declare-fun b!187816 () Bool)

(declare-fun inv!21 (TokenValue!597) Bool)

(assert (=> b!187816 (= e!115053 (and (inv!21 (value!20703 (h!8543 tokens!465))) e!115066 tp!87955))))

(declare-fun b!187817 () Bool)

(declare-fun Unit!2933 () Unit!2930)

(assert (=> b!187817 (= e!115076 Unit!2933)))

(declare-fun b!187818 () Bool)

(declare-fun e!115069 () Bool)

(declare-fun e!115077 () Bool)

(assert (=> b!187818 (= e!115069 e!115077)))

(declare-fun res!85762 () Bool)

(assert (=> b!187818 (=> (not res!85762) (not e!115077))))

(declare-fun lt!63350 () List!3154)

(assert (=> b!187818 (= res!85762 (= lt!63348 lt!63350))))

(declare-fun lt!63346 () BalanceConc!1954)

(declare-fun printWithSeparatorTokenWhenNeededRec!144 (LexerInterface!461 List!3155 BalanceConc!1954 Token!894 Int) BalanceConc!1952)

(assert (=> b!187818 (= lt!63350 (list!1157 (printWithSeparatorTokenWhenNeededRec!144 thiss!17480 rules!1920 lt!63346 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!154 (LexerInterface!461 List!3155 List!3156 Token!894) List!3154)

(assert (=> b!187818 (= lt!63348 (printWithSeparatorTokenWhenNeededList!154 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!187819 () Bool)

(declare-fun e!115065 () Bool)

(assert (=> b!187819 (= e!115065 (not (= (t!28754 tokens!465) Nil!3146)))))

(declare-fun lt!63339 () Unit!2930)

(assert (=> b!187819 (= lt!63339 e!115076)))

(declare-fun c!36144 () Bool)

(declare-fun isEmpty!1519 (List!3156) Bool)

(assert (=> b!187819 (= c!36144 (isEmpty!1519 (t!28754 tokens!465)))))

(declare-fun lt!63354 () List!3154)

(declare-datatypes ((tuple2!3190 0))(
  ( (tuple2!3191 (_1!1811 Token!894) (_2!1811 List!3154)) )
))
(declare-datatypes ((Option!428 0))(
  ( (None!427) (Some!427 (v!13932 tuple2!3190)) )
))
(declare-fun lt!63338 () Option!428)

(declare-fun maxPrefix!191 (LexerInterface!461 List!3155 List!3154) Option!428)

(assert (=> b!187819 (= lt!63338 (maxPrefix!191 thiss!17480 rules!1920 lt!63354))))

(declare-fun lt!63352 () tuple2!3190)

(assert (=> b!187819 (= lt!63354 (_2!1811 lt!63352))))

(declare-fun lt!63353 () Unit!2930)

(declare-fun lemmaSamePrefixThenSameSuffix!96 (List!3154 List!3154 List!3154 List!3154 List!3154) Unit!2930)

(assert (=> b!187819 (= lt!63353 (lemmaSamePrefixThenSameSuffix!96 lt!63334 lt!63354 lt!63334 (_2!1811 lt!63352) lt!63348))))

(declare-fun get!901 (Option!428) tuple2!3190)

(assert (=> b!187819 (= lt!63352 (get!901 (maxPrefix!191 thiss!17480 rules!1920 lt!63348)))))

(declare-fun lt!63351 () List!3154)

(declare-fun isPrefix!271 (List!3154 List!3154) Bool)

(assert (=> b!187819 (isPrefix!271 lt!63334 lt!63351)))

(declare-fun lt!63335 () Unit!2930)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!166 (List!3154 List!3154) Unit!2930)

(assert (=> b!187819 (= lt!63335 (lemmaConcatTwoListThenFirstIsPrefix!166 lt!63334 lt!63354))))

(declare-fun e!115070 () Bool)

(assert (=> b!187819 e!115070))

(declare-fun res!85760 () Bool)

(assert (=> b!187819 (=> res!85760 e!115070)))

(assert (=> b!187819 (= res!85760 (isEmpty!1519 tokens!465))))

(declare-fun lt!63345 () Unit!2930)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!36 (LexerInterface!461 List!3155 List!3156 Token!894) Unit!2930)

(assert (=> b!187819 (= lt!63345 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!36 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!187820 () Bool)

(declare-fun tp!87956 () Bool)

(declare-fun e!115073 () Bool)

(assert (=> b!187820 (= e!115066 (and tp!87956 (inv!3970 (tag!753 (rule!1090 (h!8543 tokens!465)))) (inv!3973 (transformation!575 (rule!1090 (h!8543 tokens!465)))) e!115073))))

(declare-fun b!187821 () Bool)

(declare-fun res!85756 () Bool)

(declare-fun e!115080 () Bool)

(assert (=> b!187821 (=> (not res!85756) (not e!115080))))

(declare-fun isEmpty!1520 (List!3155) Bool)

(assert (=> b!187821 (= res!85756 (not (isEmpty!1520 rules!1920)))))

(declare-fun b!187822 () Bool)

(declare-fun e!115055 () Bool)

(assert (=> b!187822 (= e!115055 e!115065)))

(declare-fun res!85765 () Bool)

(assert (=> b!187822 (=> res!85765 e!115065)))

(declare-fun lt!63342 () Bool)

(assert (=> b!187822 (= res!85765 (not lt!63342))))

(declare-fun e!115067 () Bool)

(assert (=> b!187822 e!115067))

(declare-fun res!85748 () Bool)

(assert (=> b!187822 (=> (not res!85748) (not e!115067))))

(declare-fun lt!63347 () tuple2!3190)

(assert (=> b!187822 (= res!85748 (= (_1!1811 lt!63347) (h!8543 tokens!465)))))

(declare-fun lt!63344 () Option!428)

(assert (=> b!187822 (= lt!63347 (get!901 lt!63344))))

(declare-fun isDefined!279 (Option!428) Bool)

(assert (=> b!187822 (isDefined!279 lt!63344)))

(assert (=> b!187822 (= lt!63344 (maxPrefix!191 thiss!17480 rules!1920 lt!63334))))

(declare-fun e!115060 () Bool)

(declare-fun tp!87947 () Bool)

(declare-fun b!187823 () Bool)

(assert (=> b!187823 (= e!115060 (and (inv!21 (value!20703 separatorToken!170)) e!115072 tp!87947))))

(declare-fun b!187824 () Bool)

(declare-fun res!85751 () Bool)

(assert (=> b!187824 (=> (not res!85751) (not e!115080))))

(declare-fun rulesInvariant!427 (LexerInterface!461 List!3155) Bool)

(assert (=> b!187824 (= res!85751 (rulesInvariant!427 thiss!17480 rules!1920))))

(declare-fun e!115058 () Bool)

(declare-fun b!187825 () Bool)

(declare-fun tp!87952 () Bool)

(declare-fun inv!3974 (Token!894) Bool)

(assert (=> b!187825 (= e!115058 (and (inv!3974 (h!8543 tokens!465)) e!115053 tp!87952))))

(assert (=> b!187826 (= e!115073 (and tp!87951 tp!87954))))

(declare-fun b!187827 () Bool)

(declare-fun res!85755 () Bool)

(assert (=> b!187827 (=> (not res!85755) (not e!115077))))

(declare-fun seqFromList!527 (List!3154) BalanceConc!1952)

(assert (=> b!187827 (= res!85755 (= (list!1157 (seqFromList!527 lt!63348)) lt!63350))))

(declare-fun b!187828 () Bool)

(declare-fun res!85745 () Bool)

(assert (=> b!187828 (=> (not res!85745) (not e!115069))))

(assert (=> b!187828 (= res!85745 (isSeparator!575 (rule!1090 separatorToken!170)))))

(declare-fun b!187829 () Bool)

(assert (=> b!187829 (= e!115080 e!115069)))

(declare-fun res!85758 () Bool)

(assert (=> b!187829 (=> (not res!85758) (not e!115069))))

(declare-fun rulesProduceEachTokenIndividually!253 (LexerInterface!461 List!3155 BalanceConc!1954) Bool)

(assert (=> b!187829 (= res!85758 (rulesProduceEachTokenIndividually!253 thiss!17480 rules!1920 lt!63346))))

(declare-fun seqFromList!528 (List!3156) BalanceConc!1954)

(assert (=> b!187829 (= lt!63346 (seqFromList!528 tokens!465))))

(declare-fun b!187830 () Bool)

(declare-fun e!115056 () Bool)

(assert (=> b!187830 (= e!115077 (not e!115056))))

(declare-fun res!85764 () Bool)

(assert (=> b!187830 (=> res!85764 e!115056)))

(assert (=> b!187830 (= res!85764 (not (= lt!63341 (list!1157 (printWithSeparatorTokenWhenNeededRec!144 thiss!17480 rules!1920 (seqFromList!528 (t!28754 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!63343 () List!3154)

(assert (=> b!187830 (= lt!63343 lt!63351)))

(assert (=> b!187830 (= lt!63351 (++!748 lt!63334 lt!63354))))

(declare-fun lt!63336 () List!3154)

(assert (=> b!187830 (= lt!63343 (++!748 (++!748 lt!63334 lt!63336) lt!63341))))

(declare-fun lt!63337 () Unit!2930)

(declare-fun lemmaConcatAssociativity!264 (List!3154 List!3154 List!3154) Unit!2930)

(assert (=> b!187830 (= lt!63337 (lemmaConcatAssociativity!264 lt!63334 lt!63336 lt!63341))))

(declare-fun charsOf!230 (Token!894) BalanceConc!1952)

(assert (=> b!187830 (= lt!63334 (list!1157 (charsOf!230 (h!8543 tokens!465))))))

(assert (=> b!187830 (= lt!63354 (++!748 lt!63336 lt!63341))))

(assert (=> b!187830 (= lt!63341 (printWithSeparatorTokenWhenNeededList!154 thiss!17480 rules!1920 (t!28754 tokens!465) separatorToken!170))))

(assert (=> b!187830 (= lt!63336 (list!1157 (charsOf!230 separatorToken!170)))))

(declare-fun b!187831 () Bool)

(declare-fun matchR!137 (Regex!799 List!3154) Bool)

(assert (=> b!187831 (= e!115067 (matchR!137 (regex!575 (rule!1090 (h!8543 tokens!465))) lt!63334))))

(declare-fun b!187832 () Bool)

(declare-fun e!115068 () Bool)

(assert (=> b!187832 (= e!115070 e!115068)))

(declare-fun res!85752 () Bool)

(assert (=> b!187832 (=> (not res!85752) (not e!115068))))

(declare-fun lt!63332 () Option!428)

(assert (=> b!187832 (= res!85752 (isDefined!279 lt!63332))))

(assert (=> b!187832 (= lt!63332 (maxPrefix!191 thiss!17480 rules!1920 lt!63348))))

(declare-fun res!85759 () Bool)

(assert (=> b!187833 (=> (not res!85759) (not e!115069))))

(declare-fun forall!655 (List!3156 Int) Bool)

(assert (=> b!187833 (= res!85759 (forall!655 tokens!465 lambda!5693))))

(declare-fun b!187834 () Bool)

(declare-fun res!85749 () Bool)

(assert (=> b!187834 (=> (not res!85749) (not e!115069))))

(declare-fun sepAndNonSepRulesDisjointChars!164 (List!3155 List!3155) Bool)

(assert (=> b!187834 (= res!85749 (sepAndNonSepRulesDisjointChars!164 rules!1920 rules!1920))))

(declare-fun b!187835 () Bool)

(declare-fun res!85763 () Bool)

(assert (=> b!187835 (=> (not res!85763) (not e!115067))))

(declare-fun isEmpty!1521 (List!3154) Bool)

(assert (=> b!187835 (= res!85763 (isEmpty!1521 (_2!1811 lt!63347)))))

(declare-fun b!187836 () Bool)

(declare-fun res!85750 () Bool)

(assert (=> b!187836 (=> res!85750 e!115071)))

(declare-fun isEmpty!1522 (BalanceConc!1954) Bool)

(declare-datatypes ((tuple2!3192 0))(
  ( (tuple2!3193 (_1!1812 BalanceConc!1954) (_2!1812 BalanceConc!1952)) )
))
(declare-fun lex!261 (LexerInterface!461 List!3155 BalanceConc!1952) tuple2!3192)

(assert (=> b!187836 (= res!85750 (isEmpty!1522 (_1!1812 (lex!261 thiss!17480 rules!1920 (seqFromList!527 lt!63334)))))))

(declare-fun b!187837 () Bool)

(assert (=> b!187837 (= e!115056 e!115074)))

(declare-fun res!85746 () Bool)

(assert (=> b!187837 (=> res!85746 e!115074)))

(assert (=> b!187837 (= res!85746 e!115057)))

(declare-fun res!85757 () Bool)

(assert (=> b!187837 (=> (not res!85757) (not e!115057))))

(assert (=> b!187837 (= res!85757 (not lt!63342))))

(assert (=> b!187837 (= lt!63342 (= lt!63348 lt!63351))))

(declare-fun b!187838 () Bool)

(declare-fun res!85744 () Bool)

(assert (=> b!187838 (=> (not res!85744) (not e!115069))))

(declare-fun rulesProduceIndividualToken!210 (LexerInterface!461 List!3155 Token!894) Bool)

(assert (=> b!187838 (= res!85744 (rulesProduceIndividualToken!210 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun tp!87950 () Bool)

(declare-fun b!187839 () Bool)

(declare-fun e!115078 () Bool)

(assert (=> b!187839 (= e!115078 (and tp!87950 (inv!3970 (tag!753 (h!8542 rules!1920))) (inv!3973 (transformation!575 (h!8542 rules!1920))) e!115054))))

(assert (=> b!187840 (= e!115062 (and tp!87953 tp!87949))))

(declare-fun b!187841 () Bool)

(declare-fun res!85753 () Bool)

(assert (=> b!187841 (=> (not res!85753) (not e!115069))))

(assert (=> b!187841 (= res!85753 ((_ is Cons!3146) tokens!465))))

(declare-fun res!85761 () Bool)

(assert (=> start!20334 (=> (not res!85761) (not e!115080))))

(assert (=> start!20334 (= res!85761 ((_ is Lexer!459) thiss!17480))))

(assert (=> start!20334 e!115080))

(assert (=> start!20334 true))

(declare-fun e!115059 () Bool)

(assert (=> start!20334 e!115059))

(assert (=> start!20334 (and (inv!3974 separatorToken!170) e!115060)))

(assert (=> start!20334 e!115058))

(assert (=> b!187842 (= e!115071 e!115055)))

(declare-fun res!85754 () Bool)

(assert (=> b!187842 (=> res!85754 e!115055)))

(declare-datatypes ((tuple2!3194 0))(
  ( (tuple2!3195 (_1!1813 Token!894) (_2!1813 BalanceConc!1952)) )
))
(declare-datatypes ((Option!429 0))(
  ( (None!428) (Some!428 (v!13933 tuple2!3194)) )
))
(declare-fun isDefined!280 (Option!429) Bool)

(declare-fun maxPrefixZipperSequence!154 (LexerInterface!461 List!3155 BalanceConc!1952) Option!429)

(assert (=> b!187842 (= res!85754 (not (isDefined!280 (maxPrefixZipperSequence!154 thiss!17480 rules!1920 (seqFromList!527 (originalCharacters!618 (h!8543 tokens!465)))))))))

(declare-fun lt!63333 () Unit!2930)

(declare-fun forallContained!142 (List!3156 Int Token!894) Unit!2930)

(assert (=> b!187842 (= lt!63333 (forallContained!142 tokens!465 lambda!5694 (h!8543 tokens!465)))))

(assert (=> b!187842 (= lt!63334 (originalCharacters!618 (h!8543 tokens!465)))))

(declare-fun b!187843 () Bool)

(declare-fun tp!87959 () Bool)

(assert (=> b!187843 (= e!115059 (and e!115078 tp!87959))))

(declare-fun b!187844 () Bool)

(declare-fun res!85766 () Bool)

(assert (=> b!187844 (=> res!85766 e!115071)))

(assert (=> b!187844 (= res!85766 (not (rulesProduceIndividualToken!210 thiss!17480 rules!1920 (h!8543 tokens!465))))))

(declare-fun b!187845 () Bool)

(declare-fun head!662 (List!3156) Token!894)

(assert (=> b!187845 (= e!115068 (= (_1!1811 (get!901 lt!63332)) (head!662 tokens!465)))))

(assert (= (and start!20334 res!85761) b!187821))

(assert (= (and b!187821 res!85756) b!187824))

(assert (= (and b!187824 res!85751) b!187829))

(assert (= (and b!187829 res!85758) b!187838))

(assert (= (and b!187838 res!85744) b!187828))

(assert (= (and b!187828 res!85745) b!187833))

(assert (= (and b!187833 res!85759) b!187834))

(assert (= (and b!187834 res!85749) b!187841))

(assert (= (and b!187841 res!85753) b!187818))

(assert (= (and b!187818 res!85762) b!187827))

(assert (= (and b!187827 res!85755) b!187830))

(assert (= (and b!187830 (not res!85764)) b!187837))

(assert (= (and b!187837 res!85757) b!187815))

(assert (= (and b!187837 (not res!85746)) b!187811))

(assert (= (and b!187811 (not res!85747)) b!187844))

(assert (= (and b!187844 (not res!85766)) b!187836))

(assert (= (and b!187836 (not res!85750)) b!187842))

(assert (= (and b!187842 (not res!85754)) b!187822))

(assert (= (and b!187822 res!85748) b!187835))

(assert (= (and b!187835 res!85763) b!187831))

(assert (= (and b!187822 (not res!85765)) b!187819))

(assert (= (and b!187819 (not res!85760)) b!187832))

(assert (= (and b!187832 res!85752) b!187845))

(assert (= (and b!187819 c!36144) b!187812))

(assert (= (and b!187819 (not c!36144)) b!187817))

(assert (= b!187839 b!187814))

(assert (= b!187843 b!187839))

(assert (= (and start!20334 ((_ is Cons!3145) rules!1920)) b!187843))

(assert (= b!187813 b!187840))

(assert (= b!187823 b!187813))

(assert (= start!20334 b!187823))

(assert (= b!187820 b!187826))

(assert (= b!187816 b!187820))

(assert (= b!187825 b!187816))

(assert (= (and start!20334 ((_ is Cons!3146) tokens!465)) b!187825))

(declare-fun m!192427 () Bool)

(assert (=> b!187832 m!192427))

(declare-fun m!192429 () Bool)

(assert (=> b!187832 m!192429))

(declare-fun m!192431 () Bool)

(assert (=> b!187816 m!192431))

(declare-fun m!192433 () Bool)

(assert (=> b!187834 m!192433))

(declare-fun m!192435 () Bool)

(assert (=> b!187818 m!192435))

(assert (=> b!187818 m!192435))

(declare-fun m!192437 () Bool)

(assert (=> b!187818 m!192437))

(declare-fun m!192439 () Bool)

(assert (=> b!187818 m!192439))

(declare-fun m!192441 () Bool)

(assert (=> b!187830 m!192441))

(declare-fun m!192443 () Bool)

(assert (=> b!187830 m!192443))

(declare-fun m!192445 () Bool)

(assert (=> b!187830 m!192445))

(declare-fun m!192447 () Bool)

(assert (=> b!187830 m!192447))

(declare-fun m!192449 () Bool)

(assert (=> b!187830 m!192449))

(declare-fun m!192451 () Bool)

(assert (=> b!187830 m!192451))

(declare-fun m!192453 () Bool)

(assert (=> b!187830 m!192453))

(declare-fun m!192455 () Bool)

(assert (=> b!187830 m!192455))

(declare-fun m!192457 () Bool)

(assert (=> b!187830 m!192457))

(declare-fun m!192459 () Bool)

(assert (=> b!187830 m!192459))

(declare-fun m!192461 () Bool)

(assert (=> b!187830 m!192461))

(assert (=> b!187830 m!192455))

(assert (=> b!187830 m!192447))

(assert (=> b!187830 m!192451))

(assert (=> b!187830 m!192459))

(declare-fun m!192463 () Bool)

(assert (=> b!187830 m!192463))

(assert (=> b!187830 m!192457))

(declare-fun m!192465 () Bool)

(assert (=> b!187830 m!192465))

(declare-fun m!192467 () Bool)

(assert (=> b!187823 m!192467))

(declare-fun m!192469 () Bool)

(assert (=> b!187829 m!192469))

(declare-fun m!192471 () Bool)

(assert (=> b!187829 m!192471))

(declare-fun m!192473 () Bool)

(assert (=> b!187824 m!192473))

(declare-fun m!192475 () Bool)

(assert (=> b!187821 m!192475))

(declare-fun m!192477 () Bool)

(assert (=> start!20334 m!192477))

(declare-fun m!192479 () Bool)

(assert (=> b!187836 m!192479))

(assert (=> b!187836 m!192479))

(declare-fun m!192481 () Bool)

(assert (=> b!187836 m!192481))

(declare-fun m!192483 () Bool)

(assert (=> b!187836 m!192483))

(declare-fun m!192485 () Bool)

(assert (=> b!187819 m!192485))

(declare-fun m!192487 () Bool)

(assert (=> b!187819 m!192487))

(declare-fun m!192489 () Bool)

(assert (=> b!187819 m!192489))

(declare-fun m!192491 () Bool)

(assert (=> b!187819 m!192491))

(assert (=> b!187819 m!192429))

(assert (=> b!187819 m!192429))

(declare-fun m!192493 () Bool)

(assert (=> b!187819 m!192493))

(declare-fun m!192495 () Bool)

(assert (=> b!187819 m!192495))

(declare-fun m!192497 () Bool)

(assert (=> b!187819 m!192497))

(declare-fun m!192499 () Bool)

(assert (=> b!187819 m!192499))

(declare-fun m!192501 () Bool)

(assert (=> b!187811 m!192501))

(declare-fun m!192503 () Bool)

(assert (=> b!187811 m!192503))

(declare-fun m!192505 () Bool)

(assert (=> b!187811 m!192505))

(declare-fun m!192507 () Bool)

(assert (=> b!187811 m!192507))

(declare-fun m!192509 () Bool)

(assert (=> b!187811 m!192509))

(declare-fun m!192511 () Bool)

(assert (=> b!187822 m!192511))

(declare-fun m!192513 () Bool)

(assert (=> b!187822 m!192513))

(declare-fun m!192515 () Bool)

(assert (=> b!187822 m!192515))

(declare-fun m!192517 () Bool)

(assert (=> b!187813 m!192517))

(declare-fun m!192519 () Bool)

(assert (=> b!187813 m!192519))

(declare-fun m!192521 () Bool)

(assert (=> b!187820 m!192521))

(declare-fun m!192523 () Bool)

(assert (=> b!187820 m!192523))

(declare-fun m!192525 () Bool)

(assert (=> b!187842 m!192525))

(assert (=> b!187842 m!192525))

(declare-fun m!192527 () Bool)

(assert (=> b!187842 m!192527))

(assert (=> b!187842 m!192527))

(declare-fun m!192529 () Bool)

(assert (=> b!187842 m!192529))

(declare-fun m!192531 () Bool)

(assert (=> b!187842 m!192531))

(declare-fun m!192533 () Bool)

(assert (=> b!187825 m!192533))

(declare-fun m!192535 () Bool)

(assert (=> b!187831 m!192535))

(declare-fun m!192537 () Bool)

(assert (=> b!187839 m!192537))

(declare-fun m!192539 () Bool)

(assert (=> b!187839 m!192539))

(declare-fun m!192541 () Bool)

(assert (=> b!187827 m!192541))

(assert (=> b!187827 m!192541))

(declare-fun m!192543 () Bool)

(assert (=> b!187827 m!192543))

(declare-fun m!192545 () Bool)

(assert (=> b!187838 m!192545))

(declare-fun m!192547 () Bool)

(assert (=> b!187833 m!192547))

(declare-fun m!192549 () Bool)

(assert (=> b!187844 m!192549))

(declare-fun m!192551 () Bool)

(assert (=> b!187815 m!192551))

(declare-fun m!192553 () Bool)

(assert (=> b!187845 m!192553))

(declare-fun m!192555 () Bool)

(assert (=> b!187845 m!192555))

(declare-fun m!192557 () Bool)

(assert (=> b!187835 m!192557))

(check-sat (not b!187827) (not b!187811) (not b!187821) (not b!187832) (not b_next!7413) (not b!187836) (not b!187834) (not b!187845) (not b!187838) b_and!12973 (not b!187822) (not b!187818) (not b_next!7417) b_and!12971 (not start!20334) (not b!187813) (not b!187829) (not b!187825) (not b!187824) (not b_next!7411) (not b!187830) b_and!12969 (not b!187816) (not b_next!7409) (not b!187833) (not b!187831) (not b!187835) (not b!187823) b_and!12967 (not b!187839) (not b!187820) (not b!187854) (not b!187844) b_and!12975 (not b_next!7419) (not b!187819) b_and!12965 (not b!187843) (not b!187815) (not b!187842) (not b_next!7415))
(check-sat (not b_next!7411) (not b_next!7413) b_and!12969 (not b_next!7409) b_and!12973 b_and!12967 (not b_next!7417) b_and!12971 (not b_next!7415) b_and!12975 (not b_next!7419) b_and!12965)
(get-model)

(declare-fun d!47129 () Bool)

(assert (=> d!47129 (= (inv!3970 (tag!753 (rule!1090 (h!8543 tokens!465)))) (= (mod (str.len (value!20702 (tag!753 (rule!1090 (h!8543 tokens!465))))) 2) 0))))

(assert (=> b!187820 d!47129))

(declare-fun d!47131 () Bool)

(declare-fun res!85786 () Bool)

(declare-fun e!115098 () Bool)

(assert (=> d!47131 (=> (not res!85786) (not e!115098))))

(declare-fun semiInverseModEq!198 (Int Int) Bool)

(assert (=> d!47131 (= res!85786 (semiInverseModEq!198 (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))) (toValue!1246 (transformation!575 (rule!1090 (h!8543 tokens!465))))))))

(assert (=> d!47131 (= (inv!3973 (transformation!575 (rule!1090 (h!8543 tokens!465)))) e!115098)))

(declare-fun b!187867 () Bool)

(declare-fun equivClasses!181 (Int Int) Bool)

(assert (=> b!187867 (= e!115098 (equivClasses!181 (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))) (toValue!1246 (transformation!575 (rule!1090 (h!8543 tokens!465))))))))

(assert (= (and d!47131 res!85786) b!187867))

(declare-fun m!192571 () Bool)

(assert (=> d!47131 m!192571))

(declare-fun m!192573 () Bool)

(assert (=> b!187867 m!192573))

(assert (=> b!187820 d!47131))

(declare-fun d!47133 () Bool)

(assert (=> d!47133 (= (isEmpty!1520 rules!1920) ((_ is Nil!3145) rules!1920))))

(assert (=> b!187821 d!47133))

(declare-fun d!47135 () Bool)

(declare-fun isEmpty!1524 (Option!429) Bool)

(assert (=> d!47135 (= (isDefined!280 (maxPrefixZipperSequence!154 thiss!17480 rules!1920 (seqFromList!527 (originalCharacters!618 (h!8543 tokens!465))))) (not (isEmpty!1524 (maxPrefixZipperSequence!154 thiss!17480 rules!1920 (seqFromList!527 (originalCharacters!618 (h!8543 tokens!465)))))))))

(declare-fun bs!18632 () Bool)

(assert (= bs!18632 d!47135))

(assert (=> bs!18632 m!192527))

(declare-fun m!192575 () Bool)

(assert (=> bs!18632 m!192575))

(assert (=> b!187842 d!47135))

(declare-fun d!47137 () Bool)

(declare-fun e!115157 () Bool)

(assert (=> d!47137 e!115157))

(declare-fun res!85865 () Bool)

(assert (=> d!47137 (=> (not res!85865) (not e!115157))))

(declare-fun lt!63414 () Option!429)

(declare-fun maxPrefixZipper!60 (LexerInterface!461 List!3155 List!3154) Option!428)

(assert (=> d!47137 (= res!85865 (= (isDefined!280 lt!63414) (isDefined!279 (maxPrefixZipper!60 thiss!17480 rules!1920 (list!1157 (seqFromList!527 (originalCharacters!618 (h!8543 tokens!465))))))))))

(declare-fun e!115154 () Option!429)

(assert (=> d!47137 (= lt!63414 e!115154)))

(declare-fun c!36158 () Bool)

(assert (=> d!47137 (= c!36158 (and ((_ is Cons!3145) rules!1920) ((_ is Nil!3145) (t!28753 rules!1920))))))

(declare-fun lt!63415 () Unit!2930)

(declare-fun lt!63416 () Unit!2930)

(assert (=> d!47137 (= lt!63415 lt!63416)))

(declare-fun lt!63420 () List!3154)

(declare-fun lt!63419 () List!3154)

(assert (=> d!47137 (isPrefix!271 lt!63420 lt!63419)))

(declare-fun lemmaIsPrefixRefl!157 (List!3154 List!3154) Unit!2930)

(assert (=> d!47137 (= lt!63416 (lemmaIsPrefixRefl!157 lt!63420 lt!63419))))

(assert (=> d!47137 (= lt!63419 (list!1157 (seqFromList!527 (originalCharacters!618 (h!8543 tokens!465)))))))

(assert (=> d!47137 (= lt!63420 (list!1157 (seqFromList!527 (originalCharacters!618 (h!8543 tokens!465)))))))

(declare-fun rulesValidInductive!146 (LexerInterface!461 List!3155) Bool)

(assert (=> d!47137 (rulesValidInductive!146 thiss!17480 rules!1920)))

(assert (=> d!47137 (= (maxPrefixZipperSequence!154 thiss!17480 rules!1920 (seqFromList!527 (originalCharacters!618 (h!8543 tokens!465)))) lt!63414)))

(declare-fun e!115156 () Bool)

(declare-fun b!187965 () Bool)

(declare-fun get!902 (Option!429) tuple2!3194)

(assert (=> b!187965 (= e!115156 (= (list!1157 (_2!1813 (get!902 lt!63414))) (_2!1811 (get!901 (maxPrefix!191 thiss!17480 rules!1920 (list!1157 (seqFromList!527 (originalCharacters!618 (h!8543 tokens!465)))))))))))

(declare-fun b!187966 () Bool)

(declare-fun res!85864 () Bool)

(assert (=> b!187966 (=> (not res!85864) (not e!115157))))

(declare-fun e!115153 () Bool)

(assert (=> b!187966 (= res!85864 e!115153)))

(declare-fun res!85866 () Bool)

(assert (=> b!187966 (=> res!85866 e!115153)))

(assert (=> b!187966 (= res!85866 (not (isDefined!280 lt!63414)))))

(declare-fun e!115155 () Bool)

(declare-fun b!187967 () Bool)

(assert (=> b!187967 (= e!115155 (= (list!1157 (_2!1813 (get!902 lt!63414))) (_2!1811 (get!901 (maxPrefixZipper!60 thiss!17480 rules!1920 (list!1157 (seqFromList!527 (originalCharacters!618 (h!8543 tokens!465)))))))))))

(declare-fun b!187968 () Bool)

(declare-fun e!115158 () Bool)

(assert (=> b!187968 (= e!115157 e!115158)))

(declare-fun res!85863 () Bool)

(assert (=> b!187968 (=> res!85863 e!115158)))

(assert (=> b!187968 (= res!85863 (not (isDefined!280 lt!63414)))))

(declare-fun b!187969 () Bool)

(assert (=> b!187969 (= e!115153 e!115155)))

(declare-fun res!85862 () Bool)

(assert (=> b!187969 (=> (not res!85862) (not e!115155))))

(assert (=> b!187969 (= res!85862 (= (_1!1813 (get!902 lt!63414)) (_1!1811 (get!901 (maxPrefixZipper!60 thiss!17480 rules!1920 (list!1157 (seqFromList!527 (originalCharacters!618 (h!8543 tokens!465)))))))))))

(declare-fun b!187970 () Bool)

(assert (=> b!187970 (= e!115158 e!115156)))

(declare-fun res!85861 () Bool)

(assert (=> b!187970 (=> (not res!85861) (not e!115156))))

(assert (=> b!187970 (= res!85861 (= (_1!1813 (get!902 lt!63414)) (_1!1811 (get!901 (maxPrefix!191 thiss!17480 rules!1920 (list!1157 (seqFromList!527 (originalCharacters!618 (h!8543 tokens!465)))))))))))

(declare-fun b!187971 () Bool)

(declare-fun lt!63417 () Option!429)

(declare-fun lt!63418 () Option!429)

(assert (=> b!187971 (= e!115154 (ite (and ((_ is None!428) lt!63417) ((_ is None!428) lt!63418)) None!428 (ite ((_ is None!428) lt!63418) lt!63417 (ite ((_ is None!428) lt!63417) lt!63418 (ite (>= (size!2529 (_1!1813 (v!13933 lt!63417))) (size!2529 (_1!1813 (v!13933 lt!63418)))) lt!63417 lt!63418)))))))

(declare-fun call!8634 () Option!429)

(assert (=> b!187971 (= lt!63417 call!8634)))

(assert (=> b!187971 (= lt!63418 (maxPrefixZipperSequence!154 thiss!17480 (t!28753 rules!1920) (seqFromList!527 (originalCharacters!618 (h!8543 tokens!465)))))))

(declare-fun b!187972 () Bool)

(assert (=> b!187972 (= e!115154 call!8634)))

(declare-fun bm!8629 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!61 (LexerInterface!461 Rule!950 BalanceConc!1952) Option!429)

(assert (=> bm!8629 (= call!8634 (maxPrefixOneRuleZipperSequence!61 thiss!17480 (h!8542 rules!1920) (seqFromList!527 (originalCharacters!618 (h!8543 tokens!465)))))))

(assert (= (and d!47137 c!36158) b!187972))

(assert (= (and d!47137 (not c!36158)) b!187971))

(assert (= (or b!187972 b!187971) bm!8629))

(assert (= (and d!47137 res!85865) b!187966))

(assert (= (and b!187966 (not res!85866)) b!187969))

(assert (= (and b!187969 res!85862) b!187967))

(assert (= (and b!187966 res!85864) b!187968))

(assert (= (and b!187968 (not res!85863)) b!187970))

(assert (= (and b!187970 res!85861) b!187965))

(declare-fun m!192721 () Bool)

(assert (=> d!47137 m!192721))

(declare-fun m!192723 () Bool)

(assert (=> d!47137 m!192723))

(declare-fun m!192725 () Bool)

(assert (=> d!47137 m!192725))

(declare-fun m!192727 () Bool)

(assert (=> d!47137 m!192727))

(declare-fun m!192729 () Bool)

(assert (=> d!47137 m!192729))

(assert (=> d!47137 m!192723))

(declare-fun m!192731 () Bool)

(assert (=> d!47137 m!192731))

(declare-fun m!192733 () Bool)

(assert (=> d!47137 m!192733))

(assert (=> d!47137 m!192525))

(assert (=> d!47137 m!192721))

(declare-fun m!192735 () Bool)

(assert (=> b!187969 m!192735))

(assert (=> b!187969 m!192525))

(assert (=> b!187969 m!192721))

(assert (=> b!187969 m!192721))

(assert (=> b!187969 m!192723))

(assert (=> b!187969 m!192723))

(declare-fun m!192737 () Bool)

(assert (=> b!187969 m!192737))

(assert (=> b!187967 m!192721))

(assert (=> b!187967 m!192723))

(assert (=> b!187967 m!192525))

(assert (=> b!187967 m!192721))

(assert (=> b!187967 m!192735))

(assert (=> b!187967 m!192723))

(assert (=> b!187967 m!192737))

(declare-fun m!192739 () Bool)

(assert (=> b!187967 m!192739))

(assert (=> b!187968 m!192727))

(assert (=> b!187966 m!192727))

(assert (=> b!187970 m!192735))

(assert (=> b!187970 m!192525))

(assert (=> b!187970 m!192721))

(assert (=> b!187970 m!192721))

(declare-fun m!192741 () Bool)

(assert (=> b!187970 m!192741))

(assert (=> b!187970 m!192741))

(declare-fun m!192743 () Bool)

(assert (=> b!187970 m!192743))

(assert (=> b!187965 m!192721))

(assert (=> b!187965 m!192741))

(assert (=> b!187965 m!192525))

(assert (=> b!187965 m!192721))

(assert (=> b!187965 m!192735))

(assert (=> b!187965 m!192739))

(assert (=> b!187965 m!192741))

(assert (=> b!187965 m!192743))

(assert (=> bm!8629 m!192525))

(declare-fun m!192745 () Bool)

(assert (=> bm!8629 m!192745))

(assert (=> b!187971 m!192525))

(declare-fun m!192747 () Bool)

(assert (=> b!187971 m!192747))

(assert (=> b!187842 d!47137))

(declare-fun d!47167 () Bool)

(declare-fun fromListB!203 (List!3154) BalanceConc!1952)

(assert (=> d!47167 (= (seqFromList!527 (originalCharacters!618 (h!8543 tokens!465))) (fromListB!203 (originalCharacters!618 (h!8543 tokens!465))))))

(declare-fun bs!18639 () Bool)

(assert (= bs!18639 d!47167))

(declare-fun m!192749 () Bool)

(assert (=> bs!18639 m!192749))

(assert (=> b!187842 d!47167))

(declare-fun d!47169 () Bool)

(declare-fun dynLambda!1315 (Int Token!894) Bool)

(assert (=> d!47169 (dynLambda!1315 lambda!5694 (h!8543 tokens!465))))

(declare-fun lt!63426 () Unit!2930)

(declare-fun choose!1922 (List!3156 Int Token!894) Unit!2930)

(assert (=> d!47169 (= lt!63426 (choose!1922 tokens!465 lambda!5694 (h!8543 tokens!465)))))

(declare-fun e!115182 () Bool)

(assert (=> d!47169 e!115182))

(declare-fun res!85893 () Bool)

(assert (=> d!47169 (=> (not res!85893) (not e!115182))))

(assert (=> d!47169 (= res!85893 (forall!655 tokens!465 lambda!5694))))

(assert (=> d!47169 (= (forallContained!142 tokens!465 lambda!5694 (h!8543 tokens!465)) lt!63426)))

(declare-fun b!188017 () Bool)

(declare-fun contains!508 (List!3156 Token!894) Bool)

(assert (=> b!188017 (= e!115182 (contains!508 tokens!465 (h!8543 tokens!465)))))

(assert (= (and d!47169 res!85893) b!188017))

(declare-fun b_lambda!4559 () Bool)

(assert (=> (not b_lambda!4559) (not d!47169)))

(declare-fun m!192763 () Bool)

(assert (=> d!47169 m!192763))

(declare-fun m!192765 () Bool)

(assert (=> d!47169 m!192765))

(declare-fun m!192767 () Bool)

(assert (=> d!47169 m!192767))

(declare-fun m!192769 () Bool)

(assert (=> b!188017 m!192769))

(assert (=> b!187842 d!47169))

(declare-fun d!47173 () Bool)

(assert (=> d!47173 (= (get!901 lt!63344) (v!13932 lt!63344))))

(assert (=> b!187822 d!47173))

(declare-fun d!47175 () Bool)

(declare-fun isEmpty!1525 (Option!428) Bool)

(assert (=> d!47175 (= (isDefined!279 lt!63344) (not (isEmpty!1525 lt!63344)))))

(declare-fun bs!18640 () Bool)

(assert (= bs!18640 d!47175))

(declare-fun m!192771 () Bool)

(assert (=> bs!18640 m!192771))

(assert (=> b!187822 d!47175))

(declare-fun b!188066 () Bool)

(declare-fun res!85923 () Bool)

(declare-fun e!115208 () Bool)

(assert (=> b!188066 (=> (not res!85923) (not e!115208))))

(declare-fun lt!63440 () Option!428)

(assert (=> b!188066 (= res!85923 (matchR!137 (regex!575 (rule!1090 (_1!1811 (get!901 lt!63440)))) (list!1157 (charsOf!230 (_1!1811 (get!901 lt!63440))))))))

(declare-fun b!188067 () Bool)

(declare-fun res!85925 () Bool)

(assert (=> b!188067 (=> (not res!85925) (not e!115208))))

(declare-fun apply!480 (TokenValueInjection!966 BalanceConc!1952) TokenValue!597)

(assert (=> b!188067 (= res!85925 (= (value!20703 (_1!1811 (get!901 lt!63440))) (apply!480 (transformation!575 (rule!1090 (_1!1811 (get!901 lt!63440)))) (seqFromList!527 (originalCharacters!618 (_1!1811 (get!901 lt!63440)))))))))

(declare-fun b!188068 () Bool)

(declare-fun e!115206 () Option!428)

(declare-fun call!8640 () Option!428)

(assert (=> b!188068 (= e!115206 call!8640)))

(declare-fun b!188069 () Bool)

(declare-fun res!85921 () Bool)

(assert (=> b!188069 (=> (not res!85921) (not e!115208))))

(assert (=> b!188069 (= res!85921 (= (list!1157 (charsOf!230 (_1!1811 (get!901 lt!63440)))) (originalCharacters!618 (_1!1811 (get!901 lt!63440)))))))

(declare-fun b!188071 () Bool)

(declare-fun e!115207 () Bool)

(assert (=> b!188071 (= e!115207 e!115208)))

(declare-fun res!85924 () Bool)

(assert (=> b!188071 (=> (not res!85924) (not e!115208))))

(assert (=> b!188071 (= res!85924 (isDefined!279 lt!63440))))

(declare-fun b!188072 () Bool)

(declare-fun contains!509 (List!3155 Rule!950) Bool)

(assert (=> b!188072 (= e!115208 (contains!509 rules!1920 (rule!1090 (_1!1811 (get!901 lt!63440)))))))

(declare-fun b!188073 () Bool)

(declare-fun res!85922 () Bool)

(assert (=> b!188073 (=> (not res!85922) (not e!115208))))

(declare-fun size!2532 (List!3154) Int)

(assert (=> b!188073 (= res!85922 (< (size!2532 (_2!1811 (get!901 lt!63440))) (size!2532 lt!63334)))))

(declare-fun d!47177 () Bool)

(assert (=> d!47177 e!115207))

(declare-fun res!85919 () Bool)

(assert (=> d!47177 (=> res!85919 e!115207)))

(assert (=> d!47177 (= res!85919 (isEmpty!1525 lt!63440))))

(assert (=> d!47177 (= lt!63440 e!115206)))

(declare-fun c!36177 () Bool)

(assert (=> d!47177 (= c!36177 (and ((_ is Cons!3145) rules!1920) ((_ is Nil!3145) (t!28753 rules!1920))))))

(declare-fun lt!63441 () Unit!2930)

(declare-fun lt!63438 () Unit!2930)

(assert (=> d!47177 (= lt!63441 lt!63438)))

(assert (=> d!47177 (isPrefix!271 lt!63334 lt!63334)))

(assert (=> d!47177 (= lt!63438 (lemmaIsPrefixRefl!157 lt!63334 lt!63334))))

(assert (=> d!47177 (rulesValidInductive!146 thiss!17480 rules!1920)))

(assert (=> d!47177 (= (maxPrefix!191 thiss!17480 rules!1920 lt!63334) lt!63440)))

(declare-fun b!188070 () Bool)

(declare-fun res!85920 () Bool)

(assert (=> b!188070 (=> (not res!85920) (not e!115208))))

(assert (=> b!188070 (= res!85920 (= (++!748 (list!1157 (charsOf!230 (_1!1811 (get!901 lt!63440)))) (_2!1811 (get!901 lt!63440))) lt!63334))))

(declare-fun b!188074 () Bool)

(declare-fun lt!63442 () Option!428)

(declare-fun lt!63439 () Option!428)

(assert (=> b!188074 (= e!115206 (ite (and ((_ is None!427) lt!63442) ((_ is None!427) lt!63439)) None!427 (ite ((_ is None!427) lt!63439) lt!63442 (ite ((_ is None!427) lt!63442) lt!63439 (ite (>= (size!2529 (_1!1811 (v!13932 lt!63442))) (size!2529 (_1!1811 (v!13932 lt!63439)))) lt!63442 lt!63439)))))))

(assert (=> b!188074 (= lt!63442 call!8640)))

(assert (=> b!188074 (= lt!63439 (maxPrefix!191 thiss!17480 (t!28753 rules!1920) lt!63334))))

(declare-fun bm!8635 () Bool)

(declare-fun maxPrefixOneRule!91 (LexerInterface!461 Rule!950 List!3154) Option!428)

(assert (=> bm!8635 (= call!8640 (maxPrefixOneRule!91 thiss!17480 (h!8542 rules!1920) lt!63334))))

(assert (= (and d!47177 c!36177) b!188068))

(assert (= (and d!47177 (not c!36177)) b!188074))

(assert (= (or b!188068 b!188074) bm!8635))

(assert (= (and d!47177 (not res!85919)) b!188071))

(assert (= (and b!188071 res!85924) b!188069))

(assert (= (and b!188069 res!85921) b!188073))

(assert (= (and b!188073 res!85922) b!188070))

(assert (= (and b!188070 res!85920) b!188067))

(assert (= (and b!188067 res!85925) b!188066))

(assert (= (and b!188066 res!85923) b!188072))

(declare-fun m!192803 () Bool)

(assert (=> b!188072 m!192803))

(declare-fun m!192805 () Bool)

(assert (=> b!188072 m!192805))

(declare-fun m!192807 () Bool)

(assert (=> d!47177 m!192807))

(declare-fun m!192809 () Bool)

(assert (=> d!47177 m!192809))

(declare-fun m!192811 () Bool)

(assert (=> d!47177 m!192811))

(assert (=> d!47177 m!192729))

(assert (=> b!188067 m!192803))

(declare-fun m!192813 () Bool)

(assert (=> b!188067 m!192813))

(assert (=> b!188067 m!192813))

(declare-fun m!192815 () Bool)

(assert (=> b!188067 m!192815))

(assert (=> b!188069 m!192803))

(declare-fun m!192817 () Bool)

(assert (=> b!188069 m!192817))

(assert (=> b!188069 m!192817))

(declare-fun m!192819 () Bool)

(assert (=> b!188069 m!192819))

(declare-fun m!192821 () Bool)

(assert (=> b!188074 m!192821))

(assert (=> b!188073 m!192803))

(declare-fun m!192823 () Bool)

(assert (=> b!188073 m!192823))

(declare-fun m!192825 () Bool)

(assert (=> b!188073 m!192825))

(declare-fun m!192827 () Bool)

(assert (=> bm!8635 m!192827))

(assert (=> b!188070 m!192803))

(assert (=> b!188070 m!192817))

(assert (=> b!188070 m!192817))

(assert (=> b!188070 m!192819))

(assert (=> b!188070 m!192819))

(declare-fun m!192829 () Bool)

(assert (=> b!188070 m!192829))

(assert (=> b!188066 m!192803))

(assert (=> b!188066 m!192817))

(assert (=> b!188066 m!192817))

(assert (=> b!188066 m!192819))

(assert (=> b!188066 m!192819))

(declare-fun m!192831 () Bool)

(assert (=> b!188066 m!192831))

(declare-fun m!192833 () Bool)

(assert (=> b!188071 m!192833))

(assert (=> b!187822 d!47177))

(declare-fun b!188085 () Bool)

(declare-fun e!115216 () Bool)

(declare-fun inv!17 (TokenValue!597) Bool)

(assert (=> b!188085 (= e!115216 (inv!17 (value!20703 separatorToken!170)))))

(declare-fun b!188086 () Bool)

(declare-fun res!85928 () Bool)

(declare-fun e!115215 () Bool)

(assert (=> b!188086 (=> res!85928 e!115215)))

(assert (=> b!188086 (= res!85928 (not ((_ is IntegerValue!1793) (value!20703 separatorToken!170))))))

(assert (=> b!188086 (= e!115216 e!115215)))

(declare-fun b!188087 () Bool)

(declare-fun e!115217 () Bool)

(declare-fun inv!16 (TokenValue!597) Bool)

(assert (=> b!188087 (= e!115217 (inv!16 (value!20703 separatorToken!170)))))

(declare-fun d!47187 () Bool)

(declare-fun c!36183 () Bool)

(assert (=> d!47187 (= c!36183 ((_ is IntegerValue!1791) (value!20703 separatorToken!170)))))

(assert (=> d!47187 (= (inv!21 (value!20703 separatorToken!170)) e!115217)))

(declare-fun b!188088 () Bool)

(assert (=> b!188088 (= e!115217 e!115216)))

(declare-fun c!36182 () Bool)

(assert (=> b!188088 (= c!36182 ((_ is IntegerValue!1792) (value!20703 separatorToken!170)))))

(declare-fun b!188089 () Bool)

(declare-fun inv!15 (TokenValue!597) Bool)

(assert (=> b!188089 (= e!115215 (inv!15 (value!20703 separatorToken!170)))))

(assert (= (and d!47187 c!36183) b!188087))

(assert (= (and d!47187 (not c!36183)) b!188088))

(assert (= (and b!188088 c!36182) b!188085))

(assert (= (and b!188088 (not c!36182)) b!188086))

(assert (= (and b!188086 (not res!85928)) b!188089))

(declare-fun m!192835 () Bool)

(assert (=> b!188085 m!192835))

(declare-fun m!192837 () Bool)

(assert (=> b!188087 m!192837))

(declare-fun m!192839 () Bool)

(assert (=> b!188089 m!192839))

(assert (=> b!187823 d!47187))

(declare-fun d!47189 () Bool)

(declare-fun lt!63450 () Bool)

(declare-fun e!115225 () Bool)

(assert (=> d!47189 (= lt!63450 e!115225)))

(declare-fun res!85935 () Bool)

(assert (=> d!47189 (=> (not res!85935) (not e!115225))))

(declare-fun list!1160 (BalanceConc!1954) List!3156)

(assert (=> d!47189 (= res!85935 (= (list!1160 (_1!1812 (lex!261 thiss!17480 rules!1920 (print!192 thiss!17480 (singletonSeq!127 (h!8543 tokens!465)))))) (list!1160 (singletonSeq!127 (h!8543 tokens!465)))))))

(declare-fun e!115224 () Bool)

(assert (=> d!47189 (= lt!63450 e!115224)))

(declare-fun res!85937 () Bool)

(assert (=> d!47189 (=> (not res!85937) (not e!115224))))

(declare-fun lt!63449 () tuple2!3192)

(declare-fun size!2533 (BalanceConc!1954) Int)

(assert (=> d!47189 (= res!85937 (= (size!2533 (_1!1812 lt!63449)) 1))))

(assert (=> d!47189 (= lt!63449 (lex!261 thiss!17480 rules!1920 (print!192 thiss!17480 (singletonSeq!127 (h!8543 tokens!465)))))))

(assert (=> d!47189 (not (isEmpty!1520 rules!1920))))

(assert (=> d!47189 (= (rulesProduceIndividualToken!210 thiss!17480 rules!1920 (h!8543 tokens!465)) lt!63450)))

(declare-fun b!188100 () Bool)

(declare-fun res!85936 () Bool)

(assert (=> b!188100 (=> (not res!85936) (not e!115224))))

(declare-fun apply!481 (BalanceConc!1954 Int) Token!894)

(assert (=> b!188100 (= res!85936 (= (apply!481 (_1!1812 lt!63449) 0) (h!8543 tokens!465)))))

(declare-fun b!188101 () Bool)

(declare-fun isEmpty!1526 (BalanceConc!1952) Bool)

(assert (=> b!188101 (= e!115224 (isEmpty!1526 (_2!1812 lt!63449)))))

(declare-fun b!188102 () Bool)

(assert (=> b!188102 (= e!115225 (isEmpty!1526 (_2!1812 (lex!261 thiss!17480 rules!1920 (print!192 thiss!17480 (singletonSeq!127 (h!8543 tokens!465)))))))))

(assert (= (and d!47189 res!85937) b!188100))

(assert (= (and b!188100 res!85936) b!188101))

(assert (= (and d!47189 res!85935) b!188102))

(declare-fun m!192841 () Bool)

(assert (=> d!47189 m!192841))

(assert (=> d!47189 m!192509))

(declare-fun m!192843 () Bool)

(assert (=> d!47189 m!192843))

(assert (=> d!47189 m!192509))

(declare-fun m!192845 () Bool)

(assert (=> d!47189 m!192845))

(assert (=> d!47189 m!192475))

(declare-fun m!192847 () Bool)

(assert (=> d!47189 m!192847))

(assert (=> d!47189 m!192843))

(declare-fun m!192849 () Bool)

(assert (=> d!47189 m!192849))

(assert (=> d!47189 m!192509))

(declare-fun m!192851 () Bool)

(assert (=> b!188100 m!192851))

(declare-fun m!192853 () Bool)

(assert (=> b!188101 m!192853))

(assert (=> b!188102 m!192509))

(assert (=> b!188102 m!192509))

(assert (=> b!188102 m!192843))

(assert (=> b!188102 m!192843))

(assert (=> b!188102 m!192849))

(declare-fun m!192855 () Bool)

(assert (=> b!188102 m!192855))

(assert (=> b!187844 d!47189))

(declare-fun d!47191 () Bool)

(assert (=> d!47191 (= (get!901 lt!63332) (v!13932 lt!63332))))

(assert (=> b!187845 d!47191))

(declare-fun d!47193 () Bool)

(assert (=> d!47193 (= (head!662 tokens!465) (h!8543 tokens!465))))

(assert (=> b!187845 d!47193))

(declare-fun d!47195 () Bool)

(declare-fun res!85940 () Bool)

(declare-fun e!115236 () Bool)

(assert (=> d!47195 (=> (not res!85940) (not e!115236))))

(declare-fun rulesValid!164 (LexerInterface!461 List!3155) Bool)

(assert (=> d!47195 (= res!85940 (rulesValid!164 thiss!17480 rules!1920))))

(assert (=> d!47195 (= (rulesInvariant!427 thiss!17480 rules!1920) e!115236)))

(declare-fun b!188121 () Bool)

(declare-datatypes ((List!3157 0))(
  ( (Nil!3147) (Cons!3147 (h!8544 String!4065) (t!28819 List!3157)) )
))
(declare-fun noDuplicateTag!164 (LexerInterface!461 List!3155 List!3157) Bool)

(assert (=> b!188121 (= e!115236 (noDuplicateTag!164 thiss!17480 rules!1920 Nil!3147))))

(assert (= (and d!47195 res!85940) b!188121))

(declare-fun m!192857 () Bool)

(assert (=> d!47195 m!192857))

(declare-fun m!192859 () Bool)

(assert (=> b!188121 m!192859))

(assert (=> b!187824 d!47195))

(declare-fun d!47197 () Bool)

(declare-fun res!85945 () Bool)

(declare-fun e!115239 () Bool)

(assert (=> d!47197 (=> (not res!85945) (not e!115239))))

(assert (=> d!47197 (= res!85945 (not (isEmpty!1521 (originalCharacters!618 (h!8543 tokens!465)))))))

(assert (=> d!47197 (= (inv!3974 (h!8543 tokens!465)) e!115239)))

(declare-fun b!188126 () Bool)

(declare-fun res!85946 () Bool)

(assert (=> b!188126 (=> (not res!85946) (not e!115239))))

(declare-fun dynLambda!1316 (Int TokenValue!597) BalanceConc!1952)

(assert (=> b!188126 (= res!85946 (= (originalCharacters!618 (h!8543 tokens!465)) (list!1157 (dynLambda!1316 (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))) (value!20703 (h!8543 tokens!465))))))))

(declare-fun b!188127 () Bool)

(assert (=> b!188127 (= e!115239 (= (size!2529 (h!8543 tokens!465)) (size!2532 (originalCharacters!618 (h!8543 tokens!465)))))))

(assert (= (and d!47197 res!85945) b!188126))

(assert (= (and b!188126 res!85946) b!188127))

(declare-fun b_lambda!4563 () Bool)

(assert (=> (not b_lambda!4563) (not b!188126)))

(declare-fun t!28769 () Bool)

(declare-fun tb!7743 () Bool)

(assert (=> (and b!187826 (= (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))) (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465))))) t!28769) tb!7743))

(declare-fun b!188132 () Bool)

(declare-fun e!115242 () Bool)

(declare-fun tp!87965 () Bool)

(declare-fun inv!3977 (Conc!972) Bool)

(assert (=> b!188132 (= e!115242 (and (inv!3977 (c!36145 (dynLambda!1316 (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))) (value!20703 (h!8543 tokens!465))))) tp!87965))))

(declare-fun result!10644 () Bool)

(declare-fun inv!3978 (BalanceConc!1952) Bool)

(assert (=> tb!7743 (= result!10644 (and (inv!3978 (dynLambda!1316 (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))) (value!20703 (h!8543 tokens!465)))) e!115242))))

(assert (= tb!7743 b!188132))

(declare-fun m!192861 () Bool)

(assert (=> b!188132 m!192861))

(declare-fun m!192863 () Bool)

(assert (=> tb!7743 m!192863))

(assert (=> b!188126 t!28769))

(declare-fun b_and!12983 () Bool)

(assert (= b_and!12967 (and (=> t!28769 result!10644) b_and!12983)))

(declare-fun t!28771 () Bool)

(declare-fun tb!7745 () Bool)

(assert (=> (and b!187840 (= (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))) (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465))))) t!28771) tb!7745))

(declare-fun result!10648 () Bool)

(assert (= result!10648 result!10644))

(assert (=> b!188126 t!28771))

(declare-fun b_and!12985 () Bool)

(assert (= b_and!12971 (and (=> t!28771 result!10648) b_and!12985)))

(declare-fun tb!7747 () Bool)

(declare-fun t!28773 () Bool)

(assert (=> (and b!187814 (= (toChars!1105 (transformation!575 (h!8542 rules!1920))) (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465))))) t!28773) tb!7747))

(declare-fun result!10650 () Bool)

(assert (= result!10650 result!10644))

(assert (=> b!188126 t!28773))

(declare-fun b_and!12987 () Bool)

(assert (= b_and!12975 (and (=> t!28773 result!10650) b_and!12987)))

(declare-fun m!192865 () Bool)

(assert (=> d!47197 m!192865))

(declare-fun m!192867 () Bool)

(assert (=> b!188126 m!192867))

(assert (=> b!188126 m!192867))

(declare-fun m!192869 () Bool)

(assert (=> b!188126 m!192869))

(declare-fun m!192871 () Bool)

(assert (=> b!188127 m!192871))

(assert (=> b!187825 d!47197))

(declare-fun b!188154 () Bool)

(declare-fun e!115255 () List!3154)

(assert (=> b!188154 (= e!115255 lt!63341)))

(declare-fun b!188156 () Bool)

(declare-fun res!85951 () Bool)

(declare-fun e!115256 () Bool)

(assert (=> b!188156 (=> (not res!85951) (not e!115256))))

(declare-fun lt!63469 () List!3154)

(assert (=> b!188156 (= res!85951 (= (size!2532 lt!63469) (+ (size!2532 lt!63334) (size!2532 lt!63341))))))

(declare-fun b!188157 () Bool)

(assert (=> b!188157 (= e!115256 (or (not (= lt!63341 Nil!3144)) (= lt!63469 lt!63334)))))

(declare-fun b!188155 () Bool)

(assert (=> b!188155 (= e!115255 (Cons!3144 (h!8541 lt!63334) (++!748 (t!28752 lt!63334) lt!63341)))))

(declare-fun d!47199 () Bool)

(assert (=> d!47199 e!115256))

(declare-fun res!85952 () Bool)

(assert (=> d!47199 (=> (not res!85952) (not e!115256))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!427 (List!3154) (InoxSet C!2520))

(assert (=> d!47199 (= res!85952 (= (content!427 lt!63469) ((_ map or) (content!427 lt!63334) (content!427 lt!63341))))))

(assert (=> d!47199 (= lt!63469 e!115255)))

(declare-fun c!36201 () Bool)

(assert (=> d!47199 (= c!36201 ((_ is Nil!3144) lt!63334))))

(assert (=> d!47199 (= (++!748 lt!63334 lt!63341) lt!63469)))

(assert (= (and d!47199 c!36201) b!188154))

(assert (= (and d!47199 (not c!36201)) b!188155))

(assert (= (and d!47199 res!85952) b!188156))

(assert (= (and b!188156 res!85951) b!188157))

(declare-fun m!192901 () Bool)

(assert (=> b!188156 m!192901))

(assert (=> b!188156 m!192825))

(declare-fun m!192903 () Bool)

(assert (=> b!188156 m!192903))

(declare-fun m!192905 () Bool)

(assert (=> b!188155 m!192905))

(declare-fun m!192907 () Bool)

(assert (=> d!47199 m!192907))

(declare-fun m!192909 () Bool)

(assert (=> d!47199 m!192909))

(declare-fun m!192911 () Bool)

(assert (=> d!47199 m!192911))

(assert (=> b!187815 d!47199))

(declare-fun d!47203 () Bool)

(declare-fun res!85953 () Bool)

(declare-fun e!115257 () Bool)

(assert (=> d!47203 (=> (not res!85953) (not e!115257))))

(assert (=> d!47203 (= res!85953 (not (isEmpty!1521 (originalCharacters!618 separatorToken!170))))))

(assert (=> d!47203 (= (inv!3974 separatorToken!170) e!115257)))

(declare-fun b!188158 () Bool)

(declare-fun res!85954 () Bool)

(assert (=> b!188158 (=> (not res!85954) (not e!115257))))

(assert (=> b!188158 (= res!85954 (= (originalCharacters!618 separatorToken!170) (list!1157 (dynLambda!1316 (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))) (value!20703 separatorToken!170)))))))

(declare-fun b!188159 () Bool)

(assert (=> b!188159 (= e!115257 (= (size!2529 separatorToken!170) (size!2532 (originalCharacters!618 separatorToken!170))))))

(assert (= (and d!47203 res!85953) b!188158))

(assert (= (and b!188158 res!85954) b!188159))

(declare-fun b_lambda!4565 () Bool)

(assert (=> (not b_lambda!4565) (not b!188158)))

(declare-fun t!28775 () Bool)

(declare-fun tb!7749 () Bool)

(assert (=> (and b!187826 (= (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))) (toChars!1105 (transformation!575 (rule!1090 separatorToken!170)))) t!28775) tb!7749))

(declare-fun b!188160 () Bool)

(declare-fun e!115258 () Bool)

(declare-fun tp!87966 () Bool)

(assert (=> b!188160 (= e!115258 (and (inv!3977 (c!36145 (dynLambda!1316 (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))) (value!20703 separatorToken!170)))) tp!87966))))

(declare-fun result!10652 () Bool)

(assert (=> tb!7749 (= result!10652 (and (inv!3978 (dynLambda!1316 (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))) (value!20703 separatorToken!170))) e!115258))))

(assert (= tb!7749 b!188160))

(declare-fun m!192913 () Bool)

(assert (=> b!188160 m!192913))

(declare-fun m!192915 () Bool)

(assert (=> tb!7749 m!192915))

(assert (=> b!188158 t!28775))

(declare-fun b_and!12989 () Bool)

(assert (= b_and!12983 (and (=> t!28775 result!10652) b_and!12989)))

(declare-fun t!28777 () Bool)

(declare-fun tb!7751 () Bool)

(assert (=> (and b!187840 (= (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))) (toChars!1105 (transformation!575 (rule!1090 separatorToken!170)))) t!28777) tb!7751))

(declare-fun result!10654 () Bool)

(assert (= result!10654 result!10652))

(assert (=> b!188158 t!28777))

(declare-fun b_and!12991 () Bool)

(assert (= b_and!12985 (and (=> t!28777 result!10654) b_and!12991)))

(declare-fun tb!7753 () Bool)

(declare-fun t!28779 () Bool)

(assert (=> (and b!187814 (= (toChars!1105 (transformation!575 (h!8542 rules!1920))) (toChars!1105 (transformation!575 (rule!1090 separatorToken!170)))) t!28779) tb!7753))

(declare-fun result!10656 () Bool)

(assert (= result!10656 result!10652))

(assert (=> b!188158 t!28779))

(declare-fun b_and!12993 () Bool)

(assert (= b_and!12987 (and (=> t!28779 result!10656) b_and!12993)))

(declare-fun m!192917 () Bool)

(assert (=> d!47203 m!192917))

(declare-fun m!192919 () Bool)

(assert (=> b!188158 m!192919))

(assert (=> b!188158 m!192919))

(declare-fun m!192921 () Bool)

(assert (=> b!188158 m!192921))

(declare-fun m!192923 () Bool)

(assert (=> b!188159 m!192923))

(assert (=> start!20334 d!47203))

(declare-fun d!47205 () Bool)

(declare-fun lt!63472 () Bool)

(assert (=> d!47205 (= lt!63472 (isEmpty!1519 (list!1160 (_1!1812 (lex!261 thiss!17480 rules!1920 (seqFromList!527 lt!63334))))))))

(declare-fun isEmpty!1527 (Conc!973) Bool)

(assert (=> d!47205 (= lt!63472 (isEmpty!1527 (c!36147 (_1!1812 (lex!261 thiss!17480 rules!1920 (seqFromList!527 lt!63334))))))))

(assert (=> d!47205 (= (isEmpty!1522 (_1!1812 (lex!261 thiss!17480 rules!1920 (seqFromList!527 lt!63334)))) lt!63472)))

(declare-fun bs!18645 () Bool)

(assert (= bs!18645 d!47205))

(declare-fun m!192925 () Bool)

(assert (=> bs!18645 m!192925))

(assert (=> bs!18645 m!192925))

(declare-fun m!192927 () Bool)

(assert (=> bs!18645 m!192927))

(declare-fun m!192929 () Bool)

(assert (=> bs!18645 m!192929))

(assert (=> b!187836 d!47205))

(declare-fun b!188171 () Bool)

(declare-fun e!115265 () Bool)

(declare-fun e!115267 () Bool)

(assert (=> b!188171 (= e!115265 e!115267)))

(declare-fun res!85961 () Bool)

(declare-fun lt!63475 () tuple2!3192)

(declare-fun size!2534 (BalanceConc!1952) Int)

(assert (=> b!188171 (= res!85961 (< (size!2534 (_2!1812 lt!63475)) (size!2534 (seqFromList!527 lt!63334))))))

(assert (=> b!188171 (=> (not res!85961) (not e!115267))))

(declare-fun b!188172 () Bool)

(declare-fun res!85962 () Bool)

(declare-fun e!115266 () Bool)

(assert (=> b!188172 (=> (not res!85962) (not e!115266))))

(declare-datatypes ((tuple2!3196 0))(
  ( (tuple2!3197 (_1!1814 List!3156) (_2!1814 List!3154)) )
))
(declare-fun lexList!132 (LexerInterface!461 List!3155 List!3154) tuple2!3196)

(assert (=> b!188172 (= res!85962 (= (list!1160 (_1!1812 lt!63475)) (_1!1814 (lexList!132 thiss!17480 rules!1920 (list!1157 (seqFromList!527 lt!63334))))))))

(declare-fun d!47207 () Bool)

(assert (=> d!47207 e!115266))

(declare-fun res!85963 () Bool)

(assert (=> d!47207 (=> (not res!85963) (not e!115266))))

(assert (=> d!47207 (= res!85963 e!115265)))

(declare-fun c!36204 () Bool)

(assert (=> d!47207 (= c!36204 (> (size!2533 (_1!1812 lt!63475)) 0))))

(declare-fun lexTailRecV2!119 (LexerInterface!461 List!3155 BalanceConc!1952 BalanceConc!1952 BalanceConc!1952 BalanceConc!1954) tuple2!3192)

(assert (=> d!47207 (= lt!63475 (lexTailRecV2!119 thiss!17480 rules!1920 (seqFromList!527 lt!63334) (BalanceConc!1953 Empty!972) (seqFromList!527 lt!63334) (BalanceConc!1955 Empty!973)))))

(assert (=> d!47207 (= (lex!261 thiss!17480 rules!1920 (seqFromList!527 lt!63334)) lt!63475)))

(declare-fun b!188173 () Bool)

(assert (=> b!188173 (= e!115265 (= (_2!1812 lt!63475) (seqFromList!527 lt!63334)))))

(declare-fun b!188174 () Bool)

(assert (=> b!188174 (= e!115267 (not (isEmpty!1522 (_1!1812 lt!63475))))))

(declare-fun b!188175 () Bool)

(assert (=> b!188175 (= e!115266 (= (list!1157 (_2!1812 lt!63475)) (_2!1814 (lexList!132 thiss!17480 rules!1920 (list!1157 (seqFromList!527 lt!63334))))))))

(assert (= (and d!47207 c!36204) b!188171))

(assert (= (and d!47207 (not c!36204)) b!188173))

(assert (= (and b!188171 res!85961) b!188174))

(assert (= (and d!47207 res!85963) b!188172))

(assert (= (and b!188172 res!85962) b!188175))

(declare-fun m!192931 () Bool)

(assert (=> b!188174 m!192931))

(declare-fun m!192933 () Bool)

(assert (=> d!47207 m!192933))

(assert (=> d!47207 m!192479))

(assert (=> d!47207 m!192479))

(declare-fun m!192935 () Bool)

(assert (=> d!47207 m!192935))

(declare-fun m!192937 () Bool)

(assert (=> b!188172 m!192937))

(assert (=> b!188172 m!192479))

(declare-fun m!192939 () Bool)

(assert (=> b!188172 m!192939))

(assert (=> b!188172 m!192939))

(declare-fun m!192941 () Bool)

(assert (=> b!188172 m!192941))

(declare-fun m!192943 () Bool)

(assert (=> b!188171 m!192943))

(assert (=> b!188171 m!192479))

(declare-fun m!192945 () Bool)

(assert (=> b!188171 m!192945))

(declare-fun m!192947 () Bool)

(assert (=> b!188175 m!192947))

(assert (=> b!188175 m!192479))

(assert (=> b!188175 m!192939))

(assert (=> b!188175 m!192939))

(assert (=> b!188175 m!192941))

(assert (=> b!187836 d!47207))

(declare-fun d!47209 () Bool)

(assert (=> d!47209 (= (seqFromList!527 lt!63334) (fromListB!203 lt!63334))))

(declare-fun bs!18646 () Bool)

(assert (= bs!18646 d!47209))

(declare-fun m!192949 () Bool)

(assert (=> bs!18646 m!192949))

(assert (=> b!187836 d!47209))

(declare-fun b!188176 () Bool)

(declare-fun e!115269 () Bool)

(assert (=> b!188176 (= e!115269 (inv!17 (value!20703 (h!8543 tokens!465))))))

(declare-fun b!188177 () Bool)

(declare-fun res!85964 () Bool)

(declare-fun e!115268 () Bool)

(assert (=> b!188177 (=> res!85964 e!115268)))

(assert (=> b!188177 (= res!85964 (not ((_ is IntegerValue!1793) (value!20703 (h!8543 tokens!465)))))))

(assert (=> b!188177 (= e!115269 e!115268)))

(declare-fun b!188178 () Bool)

(declare-fun e!115270 () Bool)

(assert (=> b!188178 (= e!115270 (inv!16 (value!20703 (h!8543 tokens!465))))))

(declare-fun d!47211 () Bool)

(declare-fun c!36206 () Bool)

(assert (=> d!47211 (= c!36206 ((_ is IntegerValue!1791) (value!20703 (h!8543 tokens!465))))))

(assert (=> d!47211 (= (inv!21 (value!20703 (h!8543 tokens!465))) e!115270)))

(declare-fun b!188179 () Bool)

(assert (=> b!188179 (= e!115270 e!115269)))

(declare-fun c!36205 () Bool)

(assert (=> b!188179 (= c!36205 ((_ is IntegerValue!1792) (value!20703 (h!8543 tokens!465))))))

(declare-fun b!188180 () Bool)

(assert (=> b!188180 (= e!115268 (inv!15 (value!20703 (h!8543 tokens!465))))))

(assert (= (and d!47211 c!36206) b!188178))

(assert (= (and d!47211 (not c!36206)) b!188179))

(assert (= (and b!188179 c!36205) b!188176))

(assert (= (and b!188179 (not c!36205)) b!188177))

(assert (= (and b!188177 (not res!85964)) b!188180))

(declare-fun m!192951 () Bool)

(assert (=> b!188176 m!192951))

(declare-fun m!192953 () Bool)

(assert (=> b!188178 m!192953))

(declare-fun m!192955 () Bool)

(assert (=> b!188180 m!192955))

(assert (=> b!187816 d!47211))

(declare-fun d!47213 () Bool)

(declare-fun lt!63477 () Bool)

(declare-fun e!115272 () Bool)

(assert (=> d!47213 (= lt!63477 e!115272)))

(declare-fun res!85965 () Bool)

(assert (=> d!47213 (=> (not res!85965) (not e!115272))))

(assert (=> d!47213 (= res!85965 (= (list!1160 (_1!1812 (lex!261 thiss!17480 rules!1920 (print!192 thiss!17480 (singletonSeq!127 separatorToken!170))))) (list!1160 (singletonSeq!127 separatorToken!170))))))

(declare-fun e!115271 () Bool)

(assert (=> d!47213 (= lt!63477 e!115271)))

(declare-fun res!85967 () Bool)

(assert (=> d!47213 (=> (not res!85967) (not e!115271))))

(declare-fun lt!63476 () tuple2!3192)

(assert (=> d!47213 (= res!85967 (= (size!2533 (_1!1812 lt!63476)) 1))))

(assert (=> d!47213 (= lt!63476 (lex!261 thiss!17480 rules!1920 (print!192 thiss!17480 (singletonSeq!127 separatorToken!170))))))

(assert (=> d!47213 (not (isEmpty!1520 rules!1920))))

(assert (=> d!47213 (= (rulesProduceIndividualToken!210 thiss!17480 rules!1920 separatorToken!170) lt!63477)))

(declare-fun b!188181 () Bool)

(declare-fun res!85966 () Bool)

(assert (=> b!188181 (=> (not res!85966) (not e!115271))))

(assert (=> b!188181 (= res!85966 (= (apply!481 (_1!1812 lt!63476) 0) separatorToken!170))))

(declare-fun b!188182 () Bool)

(assert (=> b!188182 (= e!115271 (isEmpty!1526 (_2!1812 lt!63476)))))

(declare-fun b!188183 () Bool)

(assert (=> b!188183 (= e!115272 (isEmpty!1526 (_2!1812 (lex!261 thiss!17480 rules!1920 (print!192 thiss!17480 (singletonSeq!127 separatorToken!170))))))))

(assert (= (and d!47213 res!85967) b!188181))

(assert (= (and b!188181 res!85966) b!188182))

(assert (= (and d!47213 res!85965) b!188183))

(declare-fun m!192957 () Bool)

(assert (=> d!47213 m!192957))

(declare-fun m!192959 () Bool)

(assert (=> d!47213 m!192959))

(declare-fun m!192961 () Bool)

(assert (=> d!47213 m!192961))

(assert (=> d!47213 m!192959))

(declare-fun m!192963 () Bool)

(assert (=> d!47213 m!192963))

(assert (=> d!47213 m!192475))

(declare-fun m!192965 () Bool)

(assert (=> d!47213 m!192965))

(assert (=> d!47213 m!192961))

(declare-fun m!192967 () Bool)

(assert (=> d!47213 m!192967))

(assert (=> d!47213 m!192959))

(declare-fun m!192969 () Bool)

(assert (=> b!188181 m!192969))

(declare-fun m!192971 () Bool)

(assert (=> b!188182 m!192971))

(assert (=> b!188183 m!192959))

(assert (=> b!188183 m!192959))

(assert (=> b!188183 m!192961))

(assert (=> b!188183 m!192961))

(assert (=> b!188183 m!192967))

(declare-fun m!192973 () Bool)

(assert (=> b!188183 m!192973))

(assert (=> b!187838 d!47213))

(declare-fun d!47215 () Bool)

(assert (=> d!47215 (= (inv!3970 (tag!753 (h!8542 rules!1920))) (= (mod (str.len (value!20702 (tag!753 (h!8542 rules!1920)))) 2) 0))))

(assert (=> b!187839 d!47215))

(declare-fun d!47217 () Bool)

(declare-fun res!85968 () Bool)

(declare-fun e!115273 () Bool)

(assert (=> d!47217 (=> (not res!85968) (not e!115273))))

(assert (=> d!47217 (= res!85968 (semiInverseModEq!198 (toChars!1105 (transformation!575 (h!8542 rules!1920))) (toValue!1246 (transformation!575 (h!8542 rules!1920)))))))

(assert (=> d!47217 (= (inv!3973 (transformation!575 (h!8542 rules!1920))) e!115273)))

(declare-fun b!188184 () Bool)

(assert (=> b!188184 (= e!115273 (equivClasses!181 (toChars!1105 (transformation!575 (h!8542 rules!1920))) (toValue!1246 (transformation!575 (h!8542 rules!1920)))))))

(assert (= (and d!47217 res!85968) b!188184))

(declare-fun m!192975 () Bool)

(assert (=> d!47217 m!192975))

(declare-fun m!192977 () Bool)

(assert (=> b!188184 m!192977))

(assert (=> b!187839 d!47217))

(declare-fun d!47219 () Bool)

(declare-fun list!1161 (Conc!972) List!3154)

(assert (=> d!47219 (= (list!1157 (printWithSeparatorTokenWhenNeededRec!144 thiss!17480 rules!1920 lt!63346 separatorToken!170 0)) (list!1161 (c!36145 (printWithSeparatorTokenWhenNeededRec!144 thiss!17480 rules!1920 lt!63346 separatorToken!170 0))))))

(declare-fun bs!18647 () Bool)

(assert (= bs!18647 d!47219))

(declare-fun m!192979 () Bool)

(assert (=> bs!18647 m!192979))

(assert (=> b!187818 d!47219))

(declare-fun bs!18684 () Bool)

(declare-fun d!47221 () Bool)

(assert (= bs!18684 (and d!47221 b!187833)))

(declare-fun lambda!5716 () Int)

(assert (=> bs!18684 (= lambda!5716 lambda!5693)))

(declare-fun bs!18685 () Bool)

(assert (= bs!18685 (and d!47221 b!187842)))

(assert (=> bs!18685 (not (= lambda!5716 lambda!5694))))

(declare-fun bs!18686 () Bool)

(declare-fun b!188291 () Bool)

(assert (= bs!18686 (and b!188291 b!187833)))

(declare-fun lambda!5717 () Int)

(assert (=> bs!18686 (not (= lambda!5717 lambda!5693))))

(declare-fun bs!18687 () Bool)

(assert (= bs!18687 (and b!188291 b!187842)))

(assert (=> bs!18687 (= lambda!5717 lambda!5694)))

(declare-fun bs!18688 () Bool)

(assert (= bs!18688 (and b!188291 d!47221)))

(assert (=> bs!18688 (not (= lambda!5717 lambda!5716))))

(declare-fun b!188300 () Bool)

(declare-fun e!115350 () Bool)

(assert (=> b!188300 (= e!115350 true)))

(declare-fun b!188299 () Bool)

(declare-fun e!115349 () Bool)

(assert (=> b!188299 (= e!115349 e!115350)))

(declare-fun b!188298 () Bool)

(declare-fun e!115348 () Bool)

(assert (=> b!188298 (= e!115348 e!115349)))

(assert (=> b!188291 e!115348))

(assert (= b!188299 b!188300))

(assert (= b!188298 b!188299))

(assert (= (and b!188291 ((_ is Cons!3145) rules!1920)) b!188298))

(assert (=> b!188300 (< (dynLambda!1311 order!1925 (toValue!1246 (transformation!575 (h!8542 rules!1920)))) (dynLambda!1312 order!1927 lambda!5717))))

(assert (=> b!188300 (< (dynLambda!1313 order!1929 (toChars!1105 (transformation!575 (h!8542 rules!1920)))) (dynLambda!1312 order!1927 lambda!5717))))

(assert (=> b!188291 true))

(declare-fun b!188287 () Bool)

(declare-fun e!115341 () BalanceConc!1952)

(declare-fun call!8693 () BalanceConc!1952)

(declare-fun lt!63591 () BalanceConc!1952)

(declare-fun ++!750 (BalanceConc!1952 BalanceConc!1952) BalanceConc!1952)

(assert (=> b!188287 (= e!115341 (++!750 call!8693 lt!63591))))

(declare-fun b!188288 () Bool)

(declare-fun e!115347 () BalanceConc!1952)

(assert (=> b!188288 (= e!115347 (BalanceConc!1953 Empty!972))))

(declare-fun b!188289 () Bool)

(declare-fun e!115346 () BalanceConc!1952)

(assert (=> b!188289 (= e!115346 call!8693)))

(declare-fun b!188290 () Bool)

(assert (=> b!188290 (= e!115341 (BalanceConc!1953 Empty!972))))

(declare-fun call!8692 () Token!894)

(assert (=> b!188290 (= (print!192 thiss!17480 (singletonSeq!127 call!8692)) (printTailRec!155 thiss!17480 (singletonSeq!127 call!8692) 0 (BalanceConc!1953 Empty!972)))))

(declare-fun lt!63586 () Unit!2930)

(declare-fun Unit!2942 () Unit!2930)

(assert (=> b!188290 (= lt!63586 Unit!2942)))

(declare-fun lt!63582 () Unit!2930)

(declare-fun call!8691 () BalanceConc!1952)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!56 (LexerInterface!461 List!3155 List!3154 List!3154) Unit!2930)

(assert (=> b!188290 (= lt!63582 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!56 thiss!17480 rules!1920 (list!1157 call!8691) (list!1157 lt!63591)))))

(assert (=> b!188290 false))

(declare-fun lt!63583 () Unit!2930)

(declare-fun Unit!2943 () Unit!2930)

(assert (=> b!188290 (= lt!63583 Unit!2943)))

(declare-fun call!8695 () BalanceConc!1952)

(declare-fun c!36241 () Bool)

(declare-fun c!36242 () Bool)

(declare-fun call!8694 () Token!894)

(declare-fun bm!8686 () Bool)

(assert (=> bm!8686 (= call!8695 (charsOf!230 (ite c!36242 call!8694 (ite c!36241 separatorToken!170 call!8692))))))

(declare-fun bm!8687 () Bool)

(assert (=> bm!8687 (= call!8691 call!8695)))

(assert (=> b!188291 (= e!115347 e!115346)))

(declare-fun lt!63581 () List!3156)

(assert (=> b!188291 (= lt!63581 (list!1160 lt!63346))))

(declare-fun lt!63594 () Unit!2930)

(declare-fun lemmaDropApply!148 (List!3156 Int) Unit!2930)

(assert (=> b!188291 (= lt!63594 (lemmaDropApply!148 lt!63581 0))))

(declare-fun drop!161 (List!3156 Int) List!3156)

(declare-fun apply!482 (List!3156 Int) Token!894)

(assert (=> b!188291 (= (head!662 (drop!161 lt!63581 0)) (apply!482 lt!63581 0))))

(declare-fun lt!63592 () Unit!2930)

(assert (=> b!188291 (= lt!63592 lt!63594)))

(declare-fun lt!63593 () List!3156)

(assert (=> b!188291 (= lt!63593 (list!1160 lt!63346))))

(declare-fun lt!63585 () Unit!2930)

(declare-fun lemmaDropTail!140 (List!3156 Int) Unit!2930)

(assert (=> b!188291 (= lt!63585 (lemmaDropTail!140 lt!63593 0))))

(declare-fun tail!381 (List!3156) List!3156)

(assert (=> b!188291 (= (tail!381 (drop!161 lt!63593 0)) (drop!161 lt!63593 (+ 0 1)))))

(declare-fun lt!63590 () Unit!2930)

(assert (=> b!188291 (= lt!63590 lt!63585)))

(declare-fun lt!63587 () Unit!2930)

(assert (=> b!188291 (= lt!63587 (forallContained!142 (list!1160 lt!63346) lambda!5717 (apply!481 lt!63346 0)))))

(assert (=> b!188291 (= lt!63591 (printWithSeparatorTokenWhenNeededRec!144 thiss!17480 rules!1920 lt!63346 separatorToken!170 (+ 0 1)))))

(declare-fun lt!63588 () Option!429)

(assert (=> b!188291 (= lt!63588 (maxPrefixZipperSequence!154 thiss!17480 rules!1920 (++!750 (charsOf!230 (apply!481 lt!63346 0)) lt!63591)))))

(declare-fun res!85997 () Bool)

(assert (=> b!188291 (= res!85997 ((_ is Some!428) lt!63588))))

(declare-fun e!115345 () Bool)

(assert (=> b!188291 (=> (not res!85997) (not e!115345))))

(assert (=> b!188291 (= c!36242 e!115345)))

(declare-fun b!188292 () Bool)

(declare-fun e!115343 () Bool)

(assert (=> b!188292 (= e!115343 (not (= (_1!1813 (v!13933 lt!63588)) call!8694)))))

(declare-fun lt!63589 () BalanceConc!1952)

(declare-fun dropList!108 (BalanceConc!1954 Int) List!3156)

(assert (=> d!47221 (= (list!1157 lt!63589) (printWithSeparatorTokenWhenNeededList!154 thiss!17480 rules!1920 (dropList!108 lt!63346 0) separatorToken!170))))

(assert (=> d!47221 (= lt!63589 e!115347)))

(declare-fun c!36239 () Bool)

(assert (=> d!47221 (= c!36239 (>= 0 (size!2533 lt!63346)))))

(declare-fun lt!63584 () Unit!2930)

(declare-fun lemmaContentSubsetPreservesForall!52 (List!3156 List!3156 Int) Unit!2930)

(assert (=> d!47221 (= lt!63584 (lemmaContentSubsetPreservesForall!52 (list!1160 lt!63346) (dropList!108 lt!63346 0) lambda!5716))))

(declare-fun e!115342 () Bool)

(assert (=> d!47221 e!115342))

(declare-fun res!85998 () Bool)

(assert (=> d!47221 (=> (not res!85998) (not e!115342))))

(assert (=> d!47221 (= res!85998 (>= 0 0))))

(assert (=> d!47221 (= (printWithSeparatorTokenWhenNeededRec!144 thiss!17480 rules!1920 lt!63346 separatorToken!170 0) lt!63589)))

(declare-fun bm!8688 () Bool)

(assert (=> bm!8688 (= call!8694 (apply!481 lt!63346 0))))

(declare-fun bm!8689 () Bool)

(assert (=> bm!8689 (= call!8692 call!8694)))

(declare-fun b!188293 () Bool)

(declare-fun e!115344 () BalanceConc!1952)

(assert (=> b!188293 (= e!115344 call!8695)))

(declare-fun b!188294 () Bool)

(assert (=> b!188294 (= c!36241 e!115343)))

(declare-fun res!85999 () Bool)

(assert (=> b!188294 (=> (not res!85999) (not e!115343))))

(assert (=> b!188294 (= res!85999 ((_ is Some!428) lt!63588))))

(assert (=> b!188294 (= e!115346 e!115341)))

(declare-fun bm!8690 () Bool)

(declare-fun c!36240 () Bool)

(assert (=> bm!8690 (= c!36240 c!36242)))

(assert (=> bm!8690 (= call!8693 (++!750 e!115344 (ite c!36242 lt!63591 call!8691)))))

(declare-fun b!188295 () Bool)

(assert (=> b!188295 (= e!115344 (charsOf!230 call!8692))))

(declare-fun b!188296 () Bool)

(assert (=> b!188296 (= e!115342 (<= 0 (size!2533 lt!63346)))))

(declare-fun b!188297 () Bool)

(assert (=> b!188297 (= e!115345 (= (_1!1813 (v!13933 lt!63588)) (apply!481 lt!63346 0)))))

(assert (= (and d!47221 res!85998) b!188296))

(assert (= (and d!47221 c!36239) b!188288))

(assert (= (and d!47221 (not c!36239)) b!188291))

(assert (= (and b!188291 res!85997) b!188297))

(assert (= (and b!188291 c!36242) b!188289))

(assert (= (and b!188291 (not c!36242)) b!188294))

(assert (= (and b!188294 res!85999) b!188292))

(assert (= (and b!188294 c!36241) b!188287))

(assert (= (and b!188294 (not c!36241)) b!188290))

(assert (= (or b!188287 b!188290) bm!8689))

(assert (= (or b!188287 b!188290) bm!8687))

(assert (= (or b!188289 b!188292 bm!8689) bm!8688))

(assert (= (or b!188289 bm!8687) bm!8686))

(assert (= (or b!188289 b!188287) bm!8690))

(assert (= (and bm!8690 c!36240) b!188293))

(assert (= (and bm!8690 (not c!36240)) b!188295))

(declare-fun m!193179 () Bool)

(assert (=> b!188297 m!193179))

(declare-fun m!193181 () Bool)

(assert (=> bm!8690 m!193181))

(declare-fun m!193183 () Bool)

(assert (=> b!188291 m!193183))

(assert (=> b!188291 m!193179))

(declare-fun m!193185 () Bool)

(assert (=> b!188291 m!193185))

(declare-fun m!193187 () Bool)

(assert (=> b!188291 m!193187))

(declare-fun m!193189 () Bool)

(assert (=> b!188291 m!193189))

(declare-fun m!193191 () Bool)

(assert (=> b!188291 m!193191))

(declare-fun m!193193 () Bool)

(assert (=> b!188291 m!193193))

(declare-fun m!193195 () Bool)

(assert (=> b!188291 m!193195))

(assert (=> b!188291 m!193185))

(declare-fun m!193197 () Bool)

(assert (=> b!188291 m!193197))

(assert (=> b!188291 m!193197))

(declare-fun m!193199 () Bool)

(assert (=> b!188291 m!193199))

(declare-fun m!193201 () Bool)

(assert (=> b!188291 m!193201))

(declare-fun m!193203 () Bool)

(assert (=> b!188291 m!193203))

(assert (=> b!188291 m!193187))

(declare-fun m!193205 () Bool)

(assert (=> b!188291 m!193205))

(assert (=> b!188291 m!193179))

(assert (=> b!188291 m!193201))

(assert (=> b!188291 m!193179))

(declare-fun m!193207 () Bool)

(assert (=> b!188291 m!193207))

(assert (=> b!188291 m!193193))

(declare-fun m!193209 () Bool)

(assert (=> b!188291 m!193209))

(declare-fun m!193211 () Bool)

(assert (=> b!188295 m!193211))

(declare-fun m!193213 () Bool)

(assert (=> bm!8686 m!193213))

(assert (=> bm!8688 m!193179))

(declare-fun m!193215 () Bool)

(assert (=> b!188296 m!193215))

(declare-fun m!193217 () Bool)

(assert (=> d!47221 m!193217))

(declare-fun m!193219 () Bool)

(assert (=> d!47221 m!193219))

(declare-fun m!193221 () Bool)

(assert (=> d!47221 m!193221))

(assert (=> d!47221 m!193219))

(assert (=> d!47221 m!193201))

(assert (=> d!47221 m!193201))

(assert (=> d!47221 m!193219))

(declare-fun m!193223 () Bool)

(assert (=> d!47221 m!193223))

(assert (=> d!47221 m!193215))

(declare-fun m!193225 () Bool)

(assert (=> b!188287 m!193225))

(declare-fun m!193227 () Bool)

(assert (=> b!188290 m!193227))

(declare-fun m!193229 () Bool)

(assert (=> b!188290 m!193229))

(declare-fun m!193231 () Bool)

(assert (=> b!188290 m!193231))

(assert (=> b!188290 m!193227))

(declare-fun m!193233 () Bool)

(assert (=> b!188290 m!193233))

(declare-fun m!193235 () Bool)

(assert (=> b!188290 m!193235))

(assert (=> b!188290 m!193231))

(declare-fun m!193237 () Bool)

(assert (=> b!188290 m!193237))

(assert (=> b!188290 m!193227))

(assert (=> b!188290 m!193235))

(assert (=> b!187818 d!47221))

(declare-fun bs!18692 () Bool)

(declare-fun b!188375 () Bool)

(assert (= bs!18692 (and b!188375 b!187833)))

(declare-fun lambda!5720 () Int)

(assert (=> bs!18692 (not (= lambda!5720 lambda!5693))))

(declare-fun bs!18693 () Bool)

(assert (= bs!18693 (and b!188375 b!187842)))

(assert (=> bs!18693 (= lambda!5720 lambda!5694)))

(declare-fun bs!18694 () Bool)

(assert (= bs!18694 (and b!188375 d!47221)))

(assert (=> bs!18694 (not (= lambda!5720 lambda!5716))))

(declare-fun bs!18695 () Bool)

(assert (= bs!18695 (and b!188375 b!188291)))

(assert (=> bs!18695 (= lambda!5720 lambda!5717)))

(declare-fun b!188378 () Bool)

(declare-fun e!115401 () Bool)

(assert (=> b!188378 (= e!115401 true)))

(declare-fun b!188377 () Bool)

(declare-fun e!115400 () Bool)

(assert (=> b!188377 (= e!115400 e!115401)))

(declare-fun b!188376 () Bool)

(declare-fun e!115399 () Bool)

(assert (=> b!188376 (= e!115399 e!115400)))

(assert (=> b!188375 e!115399))

(assert (= b!188377 b!188378))

(assert (= b!188376 b!188377))

(assert (= (and b!188375 ((_ is Cons!3145) rules!1920)) b!188376))

(assert (=> b!188378 (< (dynLambda!1311 order!1925 (toValue!1246 (transformation!575 (h!8542 rules!1920)))) (dynLambda!1312 order!1927 lambda!5720))))

(assert (=> b!188378 (< (dynLambda!1313 order!1929 (toChars!1105 (transformation!575 (h!8542 rules!1920)))) (dynLambda!1312 order!1927 lambda!5720))))

(assert (=> b!188375 true))

(declare-fun d!47265 () Bool)

(declare-fun c!36259 () Bool)

(assert (=> d!47265 (= c!36259 ((_ is Cons!3146) tokens!465))))

(declare-fun e!115395 () List!3154)

(assert (=> d!47265 (= (printWithSeparatorTokenWhenNeededList!154 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!115395)))

(declare-fun bm!8704 () Bool)

(declare-fun e!115396 () BalanceConc!1952)

(declare-fun call!8712 () BalanceConc!1952)

(declare-fun call!8709 () List!3154)

(declare-fun c!36263 () Bool)

(assert (=> bm!8704 (= call!8709 (list!1157 (ite c!36263 call!8712 e!115396)))))

(declare-fun bm!8705 () Bool)

(declare-fun call!8711 () List!3154)

(assert (=> bm!8705 (= call!8711 call!8709)))

(declare-fun c!36262 () Bool)

(declare-fun c!36260 () Bool)

(assert (=> bm!8705 (= c!36262 c!36260)))

(declare-fun b!188366 () Bool)

(declare-fun call!8713 () BalanceConc!1952)

(assert (=> b!188366 (= e!115396 call!8713)))

(declare-fun b!188367 () Bool)

(declare-fun lt!63639 () Option!428)

(assert (=> b!188367 (= c!36260 (and ((_ is Some!427) lt!63639) (not (= (_1!1811 (v!13932 lt!63639)) (h!8543 tokens!465)))))))

(declare-fun e!115397 () List!3154)

(declare-fun e!115398 () List!3154)

(assert (=> b!188367 (= e!115397 e!115398)))

(declare-fun b!188368 () Bool)

(declare-fun call!8710 () List!3154)

(assert (=> b!188368 (= e!115397 call!8710)))

(declare-fun b!188369 () Bool)

(assert (=> b!188369 (= e!115396 (charsOf!230 separatorToken!170))))

(declare-fun bm!8706 () Bool)

(declare-fun c!36261 () Bool)

(assert (=> bm!8706 (= c!36261 c!36263)))

(declare-fun lt!63634 () List!3154)

(declare-fun e!115394 () List!3154)

(assert (=> bm!8706 (= call!8710 (++!748 e!115394 (ite c!36263 lt!63634 call!8711)))))

(declare-fun bm!8707 () Bool)

(assert (=> bm!8707 (= call!8713 call!8712)))

(declare-fun b!188370 () Bool)

(assert (=> b!188370 (= e!115394 (list!1157 call!8713))))

(declare-fun b!188371 () Bool)

(assert (=> b!188371 (= e!115398 (++!748 call!8710 lt!63634))))

(declare-fun b!188372 () Bool)

(assert (=> b!188372 (= e!115395 Nil!3144)))

(declare-fun bm!8708 () Bool)

(assert (=> bm!8708 (= call!8712 (charsOf!230 (h!8543 tokens!465)))))

(declare-fun b!188373 () Bool)

(assert (=> b!188373 (= e!115398 Nil!3144)))

(assert (=> b!188373 (= (print!192 thiss!17480 (singletonSeq!127 (h!8543 tokens!465))) (printTailRec!155 thiss!17480 (singletonSeq!127 (h!8543 tokens!465)) 0 (BalanceConc!1953 Empty!972)))))

(declare-fun lt!63638 () Unit!2930)

(declare-fun Unit!2944 () Unit!2930)

(assert (=> b!188373 (= lt!63638 Unit!2944)))

(declare-fun lt!63636 () Unit!2930)

(assert (=> b!188373 (= lt!63636 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!56 thiss!17480 rules!1920 call!8711 lt!63634))))

(assert (=> b!188373 false))

(declare-fun lt!63635 () Unit!2930)

(declare-fun Unit!2945 () Unit!2930)

(assert (=> b!188373 (= lt!63635 Unit!2945)))

(declare-fun b!188374 () Bool)

(assert (=> b!188374 (= e!115394 call!8709)))

(assert (=> b!188375 (= e!115395 e!115397)))

(declare-fun lt!63637 () Unit!2930)

(assert (=> b!188375 (= lt!63637 (forallContained!142 tokens!465 lambda!5720 (h!8543 tokens!465)))))

(assert (=> b!188375 (= lt!63634 (printWithSeparatorTokenWhenNeededList!154 thiss!17480 rules!1920 (t!28754 tokens!465) separatorToken!170))))

(assert (=> b!188375 (= lt!63639 (maxPrefix!191 thiss!17480 rules!1920 (++!748 (list!1157 (charsOf!230 (h!8543 tokens!465))) lt!63634)))))

(assert (=> b!188375 (= c!36263 (and ((_ is Some!427) lt!63639) (= (_1!1811 (v!13932 lt!63639)) (h!8543 tokens!465))))))

(assert (= (and d!47265 c!36259) b!188375))

(assert (= (and d!47265 (not c!36259)) b!188372))

(assert (= (and b!188375 c!36263) b!188368))

(assert (= (and b!188375 (not c!36263)) b!188367))

(assert (= (and b!188367 c!36260) b!188371))

(assert (= (and b!188367 (not c!36260)) b!188373))

(assert (= (or b!188371 b!188373) bm!8707))

(assert (= (or b!188371 b!188373) bm!8705))

(assert (= (and bm!8705 c!36262) b!188369))

(assert (= (and bm!8705 (not c!36262)) b!188366))

(assert (= (or b!188368 bm!8707) bm!8708))

(assert (= (or b!188368 bm!8705) bm!8704))

(assert (= (or b!188368 b!188371) bm!8706))

(assert (= (and bm!8706 c!36261) b!188374))

(assert (= (and bm!8706 (not c!36261)) b!188370))

(assert (=> b!188369 m!192451))

(declare-fun m!193301 () Bool)

(assert (=> b!188371 m!193301))

(assert (=> bm!8708 m!192459))

(declare-fun m!193303 () Bool)

(assert (=> b!188370 m!193303))

(assert (=> b!188373 m!192509))

(assert (=> b!188373 m!192509))

(assert (=> b!188373 m!192843))

(assert (=> b!188373 m!192509))

(declare-fun m!193305 () Bool)

(assert (=> b!188373 m!193305))

(declare-fun m!193307 () Bool)

(assert (=> b!188373 m!193307))

(declare-fun m!193309 () Bool)

(assert (=> bm!8704 m!193309))

(assert (=> b!188375 m!192459))

(assert (=> b!188375 m!192463))

(assert (=> b!188375 m!192445))

(assert (=> b!188375 m!192459))

(declare-fun m!193311 () Bool)

(assert (=> b!188375 m!193311))

(declare-fun m!193313 () Bool)

(assert (=> b!188375 m!193313))

(declare-fun m!193315 () Bool)

(assert (=> b!188375 m!193315))

(assert (=> b!188375 m!192463))

(assert (=> b!188375 m!193313))

(declare-fun m!193317 () Bool)

(assert (=> bm!8706 m!193317))

(assert (=> b!187818 d!47265))

(declare-fun d!47281 () Bool)

(assert (=> d!47281 (= lt!63354 (_2!1811 lt!63352))))

(declare-fun lt!63642 () Unit!2930)

(declare-fun choose!1925 (List!3154 List!3154 List!3154 List!3154 List!3154) Unit!2930)

(assert (=> d!47281 (= lt!63642 (choose!1925 lt!63334 lt!63354 lt!63334 (_2!1811 lt!63352) lt!63348))))

(assert (=> d!47281 (isPrefix!271 lt!63334 lt!63348)))

(assert (=> d!47281 (= (lemmaSamePrefixThenSameSuffix!96 lt!63334 lt!63354 lt!63334 (_2!1811 lt!63352) lt!63348) lt!63642)))

(declare-fun bs!18696 () Bool)

(assert (= bs!18696 d!47281))

(declare-fun m!193319 () Bool)

(assert (=> bs!18696 m!193319))

(declare-fun m!193321 () Bool)

(assert (=> bs!18696 m!193321))

(assert (=> b!187819 d!47281))

(declare-fun d!47283 () Bool)

(assert (=> d!47283 (isPrefix!271 lt!63334 (++!748 lt!63334 lt!63354))))

(declare-fun lt!63645 () Unit!2930)

(declare-fun choose!1926 (List!3154 List!3154) Unit!2930)

(assert (=> d!47283 (= lt!63645 (choose!1926 lt!63334 lt!63354))))

(assert (=> d!47283 (= (lemmaConcatTwoListThenFirstIsPrefix!166 lt!63334 lt!63354) lt!63645)))

(declare-fun bs!18697 () Bool)

(assert (= bs!18697 d!47283))

(assert (=> bs!18697 m!192443))

(assert (=> bs!18697 m!192443))

(declare-fun m!193323 () Bool)

(assert (=> bs!18697 m!193323))

(declare-fun m!193325 () Bool)

(assert (=> bs!18697 m!193325))

(assert (=> b!187819 d!47283))

(declare-fun b!188389 () Bool)

(declare-fun e!115410 () Bool)

(declare-fun tail!382 (List!3154) List!3154)

(assert (=> b!188389 (= e!115410 (isPrefix!271 (tail!382 lt!63334) (tail!382 lt!63351)))))

(declare-fun b!188390 () Bool)

(declare-fun e!115409 () Bool)

(assert (=> b!188390 (= e!115409 (>= (size!2532 lt!63351) (size!2532 lt!63334)))))

(declare-fun b!188387 () Bool)

(declare-fun e!115408 () Bool)

(assert (=> b!188387 (= e!115408 e!115410)))

(declare-fun res!86041 () Bool)

(assert (=> b!188387 (=> (not res!86041) (not e!115410))))

(assert (=> b!188387 (= res!86041 (not ((_ is Nil!3144) lt!63351)))))

(declare-fun b!188388 () Bool)

(declare-fun res!86044 () Bool)

(assert (=> b!188388 (=> (not res!86044) (not e!115410))))

(declare-fun head!664 (List!3154) C!2520)

(assert (=> b!188388 (= res!86044 (= (head!664 lt!63334) (head!664 lt!63351)))))

(declare-fun d!47285 () Bool)

(assert (=> d!47285 e!115409))

(declare-fun res!86042 () Bool)

(assert (=> d!47285 (=> res!86042 e!115409)))

(declare-fun lt!63648 () Bool)

(assert (=> d!47285 (= res!86042 (not lt!63648))))

(assert (=> d!47285 (= lt!63648 e!115408)))

(declare-fun res!86043 () Bool)

(assert (=> d!47285 (=> res!86043 e!115408)))

(assert (=> d!47285 (= res!86043 ((_ is Nil!3144) lt!63334))))

(assert (=> d!47285 (= (isPrefix!271 lt!63334 lt!63351) lt!63648)))

(assert (= (and d!47285 (not res!86043)) b!188387))

(assert (= (and b!188387 res!86041) b!188388))

(assert (= (and b!188388 res!86044) b!188389))

(assert (= (and d!47285 (not res!86042)) b!188390))

(declare-fun m!193327 () Bool)

(assert (=> b!188389 m!193327))

(declare-fun m!193329 () Bool)

(assert (=> b!188389 m!193329))

(assert (=> b!188389 m!193327))

(assert (=> b!188389 m!193329))

(declare-fun m!193331 () Bool)

(assert (=> b!188389 m!193331))

(declare-fun m!193333 () Bool)

(assert (=> b!188390 m!193333))

(assert (=> b!188390 m!192825))

(declare-fun m!193335 () Bool)

(assert (=> b!188388 m!193335))

(declare-fun m!193337 () Bool)

(assert (=> b!188388 m!193337))

(assert (=> b!187819 d!47285))

(declare-fun b!188391 () Bool)

(declare-fun res!86049 () Bool)

(declare-fun e!115413 () Bool)

(assert (=> b!188391 (=> (not res!86049) (not e!115413))))

(declare-fun lt!63651 () Option!428)

(assert (=> b!188391 (= res!86049 (matchR!137 (regex!575 (rule!1090 (_1!1811 (get!901 lt!63651)))) (list!1157 (charsOf!230 (_1!1811 (get!901 lt!63651))))))))

(declare-fun b!188392 () Bool)

(declare-fun res!86051 () Bool)

(assert (=> b!188392 (=> (not res!86051) (not e!115413))))

(assert (=> b!188392 (= res!86051 (= (value!20703 (_1!1811 (get!901 lt!63651))) (apply!480 (transformation!575 (rule!1090 (_1!1811 (get!901 lt!63651)))) (seqFromList!527 (originalCharacters!618 (_1!1811 (get!901 lt!63651)))))))))

(declare-fun b!188393 () Bool)

(declare-fun e!115411 () Option!428)

(declare-fun call!8714 () Option!428)

(assert (=> b!188393 (= e!115411 call!8714)))

(declare-fun b!188394 () Bool)

(declare-fun res!86047 () Bool)

(assert (=> b!188394 (=> (not res!86047) (not e!115413))))

(assert (=> b!188394 (= res!86047 (= (list!1157 (charsOf!230 (_1!1811 (get!901 lt!63651)))) (originalCharacters!618 (_1!1811 (get!901 lt!63651)))))))

(declare-fun b!188396 () Bool)

(declare-fun e!115412 () Bool)

(assert (=> b!188396 (= e!115412 e!115413)))

(declare-fun res!86050 () Bool)

(assert (=> b!188396 (=> (not res!86050) (not e!115413))))

(assert (=> b!188396 (= res!86050 (isDefined!279 lt!63651))))

(declare-fun b!188397 () Bool)

(assert (=> b!188397 (= e!115413 (contains!509 rules!1920 (rule!1090 (_1!1811 (get!901 lt!63651)))))))

(declare-fun b!188398 () Bool)

(declare-fun res!86048 () Bool)

(assert (=> b!188398 (=> (not res!86048) (not e!115413))))

(assert (=> b!188398 (= res!86048 (< (size!2532 (_2!1811 (get!901 lt!63651))) (size!2532 lt!63348)))))

(declare-fun d!47287 () Bool)

(assert (=> d!47287 e!115412))

(declare-fun res!86045 () Bool)

(assert (=> d!47287 (=> res!86045 e!115412)))

(assert (=> d!47287 (= res!86045 (isEmpty!1525 lt!63651))))

(assert (=> d!47287 (= lt!63651 e!115411)))

(declare-fun c!36264 () Bool)

(assert (=> d!47287 (= c!36264 (and ((_ is Cons!3145) rules!1920) ((_ is Nil!3145) (t!28753 rules!1920))))))

(declare-fun lt!63652 () Unit!2930)

(declare-fun lt!63649 () Unit!2930)

(assert (=> d!47287 (= lt!63652 lt!63649)))

(assert (=> d!47287 (isPrefix!271 lt!63348 lt!63348)))

(assert (=> d!47287 (= lt!63649 (lemmaIsPrefixRefl!157 lt!63348 lt!63348))))

(assert (=> d!47287 (rulesValidInductive!146 thiss!17480 rules!1920)))

(assert (=> d!47287 (= (maxPrefix!191 thiss!17480 rules!1920 lt!63348) lt!63651)))

(declare-fun b!188395 () Bool)

(declare-fun res!86046 () Bool)

(assert (=> b!188395 (=> (not res!86046) (not e!115413))))

(assert (=> b!188395 (= res!86046 (= (++!748 (list!1157 (charsOf!230 (_1!1811 (get!901 lt!63651)))) (_2!1811 (get!901 lt!63651))) lt!63348))))

(declare-fun b!188399 () Bool)

(declare-fun lt!63653 () Option!428)

(declare-fun lt!63650 () Option!428)

(assert (=> b!188399 (= e!115411 (ite (and ((_ is None!427) lt!63653) ((_ is None!427) lt!63650)) None!427 (ite ((_ is None!427) lt!63650) lt!63653 (ite ((_ is None!427) lt!63653) lt!63650 (ite (>= (size!2529 (_1!1811 (v!13932 lt!63653))) (size!2529 (_1!1811 (v!13932 lt!63650)))) lt!63653 lt!63650)))))))

(assert (=> b!188399 (= lt!63653 call!8714)))

(assert (=> b!188399 (= lt!63650 (maxPrefix!191 thiss!17480 (t!28753 rules!1920) lt!63348))))

(declare-fun bm!8709 () Bool)

(assert (=> bm!8709 (= call!8714 (maxPrefixOneRule!91 thiss!17480 (h!8542 rules!1920) lt!63348))))

(assert (= (and d!47287 c!36264) b!188393))

(assert (= (and d!47287 (not c!36264)) b!188399))

(assert (= (or b!188393 b!188399) bm!8709))

(assert (= (and d!47287 (not res!86045)) b!188396))

(assert (= (and b!188396 res!86050) b!188394))

(assert (= (and b!188394 res!86047) b!188398))

(assert (= (and b!188398 res!86048) b!188395))

(assert (= (and b!188395 res!86046) b!188392))

(assert (= (and b!188392 res!86051) b!188391))

(assert (= (and b!188391 res!86049) b!188397))

(declare-fun m!193339 () Bool)

(assert (=> b!188397 m!193339))

(declare-fun m!193341 () Bool)

(assert (=> b!188397 m!193341))

(declare-fun m!193343 () Bool)

(assert (=> d!47287 m!193343))

(declare-fun m!193345 () Bool)

(assert (=> d!47287 m!193345))

(declare-fun m!193347 () Bool)

(assert (=> d!47287 m!193347))

(assert (=> d!47287 m!192729))

(assert (=> b!188392 m!193339))

(declare-fun m!193349 () Bool)

(assert (=> b!188392 m!193349))

(assert (=> b!188392 m!193349))

(declare-fun m!193351 () Bool)

(assert (=> b!188392 m!193351))

(assert (=> b!188394 m!193339))

(declare-fun m!193353 () Bool)

(assert (=> b!188394 m!193353))

(assert (=> b!188394 m!193353))

(declare-fun m!193355 () Bool)

(assert (=> b!188394 m!193355))

(declare-fun m!193357 () Bool)

(assert (=> b!188399 m!193357))

(assert (=> b!188398 m!193339))

(declare-fun m!193359 () Bool)

(assert (=> b!188398 m!193359))

(declare-fun m!193361 () Bool)

(assert (=> b!188398 m!193361))

(declare-fun m!193363 () Bool)

(assert (=> bm!8709 m!193363))

(assert (=> b!188395 m!193339))

(assert (=> b!188395 m!193353))

(assert (=> b!188395 m!193353))

(assert (=> b!188395 m!193355))

(assert (=> b!188395 m!193355))

(declare-fun m!193365 () Bool)

(assert (=> b!188395 m!193365))

(assert (=> b!188391 m!193339))

(assert (=> b!188391 m!193353))

(assert (=> b!188391 m!193353))

(assert (=> b!188391 m!193355))

(assert (=> b!188391 m!193355))

(declare-fun m!193367 () Bool)

(assert (=> b!188391 m!193367))

(declare-fun m!193369 () Bool)

(assert (=> b!188396 m!193369))

(assert (=> b!187819 d!47287))

(declare-fun d!47289 () Bool)

(declare-fun e!115492 () Bool)

(assert (=> d!47289 e!115492))

(declare-fun res!86085 () Bool)

(assert (=> d!47289 (=> res!86085 e!115492)))

(assert (=> d!47289 (= res!86085 (isEmpty!1519 tokens!465))))

(declare-fun lt!63691 () Unit!2930)

(declare-fun choose!1927 (LexerInterface!461 List!3155 List!3156 Token!894) Unit!2930)

(assert (=> d!47289 (= lt!63691 (choose!1927 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!47289 (not (isEmpty!1520 rules!1920))))

(assert (=> d!47289 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!36 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!63691)))

(declare-fun b!188504 () Bool)

(declare-fun e!115491 () Bool)

(assert (=> b!188504 (= e!115492 e!115491)))

(declare-fun res!86084 () Bool)

(assert (=> b!188504 (=> (not res!86084) (not e!115491))))

(assert (=> b!188504 (= res!86084 (isDefined!279 (maxPrefix!191 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!154 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!188505 () Bool)

(assert (=> b!188505 (= e!115491 (= (_1!1811 (get!901 (maxPrefix!191 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!154 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!662 tokens!465)))))

(assert (= (and d!47289 (not res!86085)) b!188504))

(assert (= (and b!188504 res!86084) b!188505))

(assert (=> d!47289 m!192487))

(declare-fun m!193495 () Bool)

(assert (=> d!47289 m!193495))

(assert (=> d!47289 m!192475))

(assert (=> b!188504 m!192439))

(assert (=> b!188504 m!192439))

(declare-fun m!193497 () Bool)

(assert (=> b!188504 m!193497))

(assert (=> b!188504 m!193497))

(declare-fun m!193499 () Bool)

(assert (=> b!188504 m!193499))

(assert (=> b!188505 m!192439))

(assert (=> b!188505 m!192439))

(assert (=> b!188505 m!193497))

(assert (=> b!188505 m!193497))

(declare-fun m!193501 () Bool)

(assert (=> b!188505 m!193501))

(assert (=> b!188505 m!192555))

(assert (=> b!187819 d!47289))

(declare-fun b!188506 () Bool)

(declare-fun res!86090 () Bool)

(declare-fun e!115495 () Bool)

(assert (=> b!188506 (=> (not res!86090) (not e!115495))))

(declare-fun lt!63694 () Option!428)

(assert (=> b!188506 (= res!86090 (matchR!137 (regex!575 (rule!1090 (_1!1811 (get!901 lt!63694)))) (list!1157 (charsOf!230 (_1!1811 (get!901 lt!63694))))))))

(declare-fun b!188507 () Bool)

(declare-fun res!86092 () Bool)

(assert (=> b!188507 (=> (not res!86092) (not e!115495))))

(assert (=> b!188507 (= res!86092 (= (value!20703 (_1!1811 (get!901 lt!63694))) (apply!480 (transformation!575 (rule!1090 (_1!1811 (get!901 lt!63694)))) (seqFromList!527 (originalCharacters!618 (_1!1811 (get!901 lt!63694)))))))))

(declare-fun b!188508 () Bool)

(declare-fun e!115493 () Option!428)

(declare-fun call!8715 () Option!428)

(assert (=> b!188508 (= e!115493 call!8715)))

(declare-fun b!188509 () Bool)

(declare-fun res!86088 () Bool)

(assert (=> b!188509 (=> (not res!86088) (not e!115495))))

(assert (=> b!188509 (= res!86088 (= (list!1157 (charsOf!230 (_1!1811 (get!901 lt!63694)))) (originalCharacters!618 (_1!1811 (get!901 lt!63694)))))))

(declare-fun b!188511 () Bool)

(declare-fun e!115494 () Bool)

(assert (=> b!188511 (= e!115494 e!115495)))

(declare-fun res!86091 () Bool)

(assert (=> b!188511 (=> (not res!86091) (not e!115495))))

(assert (=> b!188511 (= res!86091 (isDefined!279 lt!63694))))

(declare-fun b!188512 () Bool)

(assert (=> b!188512 (= e!115495 (contains!509 rules!1920 (rule!1090 (_1!1811 (get!901 lt!63694)))))))

(declare-fun b!188513 () Bool)

(declare-fun res!86089 () Bool)

(assert (=> b!188513 (=> (not res!86089) (not e!115495))))

(assert (=> b!188513 (= res!86089 (< (size!2532 (_2!1811 (get!901 lt!63694))) (size!2532 lt!63354)))))

(declare-fun d!47321 () Bool)

(assert (=> d!47321 e!115494))

(declare-fun res!86086 () Bool)

(assert (=> d!47321 (=> res!86086 e!115494)))

(assert (=> d!47321 (= res!86086 (isEmpty!1525 lt!63694))))

(assert (=> d!47321 (= lt!63694 e!115493)))

(declare-fun c!36273 () Bool)

(assert (=> d!47321 (= c!36273 (and ((_ is Cons!3145) rules!1920) ((_ is Nil!3145) (t!28753 rules!1920))))))

(declare-fun lt!63695 () Unit!2930)

(declare-fun lt!63692 () Unit!2930)

(assert (=> d!47321 (= lt!63695 lt!63692)))

(assert (=> d!47321 (isPrefix!271 lt!63354 lt!63354)))

(assert (=> d!47321 (= lt!63692 (lemmaIsPrefixRefl!157 lt!63354 lt!63354))))

(assert (=> d!47321 (rulesValidInductive!146 thiss!17480 rules!1920)))

(assert (=> d!47321 (= (maxPrefix!191 thiss!17480 rules!1920 lt!63354) lt!63694)))

(declare-fun b!188510 () Bool)

(declare-fun res!86087 () Bool)

(assert (=> b!188510 (=> (not res!86087) (not e!115495))))

(assert (=> b!188510 (= res!86087 (= (++!748 (list!1157 (charsOf!230 (_1!1811 (get!901 lt!63694)))) (_2!1811 (get!901 lt!63694))) lt!63354))))

(declare-fun b!188514 () Bool)

(declare-fun lt!63696 () Option!428)

(declare-fun lt!63693 () Option!428)

(assert (=> b!188514 (= e!115493 (ite (and ((_ is None!427) lt!63696) ((_ is None!427) lt!63693)) None!427 (ite ((_ is None!427) lt!63693) lt!63696 (ite ((_ is None!427) lt!63696) lt!63693 (ite (>= (size!2529 (_1!1811 (v!13932 lt!63696))) (size!2529 (_1!1811 (v!13932 lt!63693)))) lt!63696 lt!63693)))))))

(assert (=> b!188514 (= lt!63696 call!8715)))

(assert (=> b!188514 (= lt!63693 (maxPrefix!191 thiss!17480 (t!28753 rules!1920) lt!63354))))

(declare-fun bm!8710 () Bool)

(assert (=> bm!8710 (= call!8715 (maxPrefixOneRule!91 thiss!17480 (h!8542 rules!1920) lt!63354))))

(assert (= (and d!47321 c!36273) b!188508))

(assert (= (and d!47321 (not c!36273)) b!188514))

(assert (= (or b!188508 b!188514) bm!8710))

(assert (= (and d!47321 (not res!86086)) b!188511))

(assert (= (and b!188511 res!86091) b!188509))

(assert (= (and b!188509 res!86088) b!188513))

(assert (= (and b!188513 res!86089) b!188510))

(assert (= (and b!188510 res!86087) b!188507))

(assert (= (and b!188507 res!86092) b!188506))

(assert (= (and b!188506 res!86090) b!188512))

(declare-fun m!193503 () Bool)

(assert (=> b!188512 m!193503))

(declare-fun m!193505 () Bool)

(assert (=> b!188512 m!193505))

(declare-fun m!193507 () Bool)

(assert (=> d!47321 m!193507))

(declare-fun m!193509 () Bool)

(assert (=> d!47321 m!193509))

(declare-fun m!193511 () Bool)

(assert (=> d!47321 m!193511))

(assert (=> d!47321 m!192729))

(assert (=> b!188507 m!193503))

(declare-fun m!193513 () Bool)

(assert (=> b!188507 m!193513))

(assert (=> b!188507 m!193513))

(declare-fun m!193515 () Bool)

(assert (=> b!188507 m!193515))

(assert (=> b!188509 m!193503))

(declare-fun m!193517 () Bool)

(assert (=> b!188509 m!193517))

(assert (=> b!188509 m!193517))

(declare-fun m!193519 () Bool)

(assert (=> b!188509 m!193519))

(declare-fun m!193521 () Bool)

(assert (=> b!188514 m!193521))

(assert (=> b!188513 m!193503))

(declare-fun m!193523 () Bool)

(assert (=> b!188513 m!193523))

(declare-fun m!193525 () Bool)

(assert (=> b!188513 m!193525))

(declare-fun m!193527 () Bool)

(assert (=> bm!8710 m!193527))

(assert (=> b!188510 m!193503))

(assert (=> b!188510 m!193517))

(assert (=> b!188510 m!193517))

(assert (=> b!188510 m!193519))

(assert (=> b!188510 m!193519))

(declare-fun m!193529 () Bool)

(assert (=> b!188510 m!193529))

(assert (=> b!188506 m!193503))

(assert (=> b!188506 m!193517))

(assert (=> b!188506 m!193517))

(assert (=> b!188506 m!193519))

(assert (=> b!188506 m!193519))

(declare-fun m!193531 () Bool)

(assert (=> b!188506 m!193531))

(declare-fun m!193533 () Bool)

(assert (=> b!188511 m!193533))

(assert (=> b!187819 d!47321))

(declare-fun d!47323 () Bool)

(assert (=> d!47323 (= (isEmpty!1519 (t!28754 tokens!465)) ((_ is Nil!3146) (t!28754 tokens!465)))))

(assert (=> b!187819 d!47323))

(declare-fun d!47325 () Bool)

(assert (=> d!47325 (= (isEmpty!1519 tokens!465) ((_ is Nil!3146) tokens!465))))

(assert (=> b!187819 d!47325))

(declare-fun d!47327 () Bool)

(assert (=> d!47327 (= (get!901 (maxPrefix!191 thiss!17480 rules!1920 lt!63348)) (v!13932 (maxPrefix!191 thiss!17480 rules!1920 lt!63348)))))

(assert (=> b!187819 d!47327))

(declare-fun b!188543 () Bool)

(declare-fun e!115515 () Bool)

(declare-fun derivativeStep!92 (Regex!799 C!2520) Regex!799)

(assert (=> b!188543 (= e!115515 (matchR!137 (derivativeStep!92 (regex!575 (rule!1090 (h!8543 tokens!465))) (head!664 lt!63334)) (tail!382 lt!63334)))))

(declare-fun b!188544 () Bool)

(declare-fun e!115511 () Bool)

(assert (=> b!188544 (= e!115511 (not (= (head!664 lt!63334) (c!36146 (regex!575 (rule!1090 (h!8543 tokens!465)))))))))

(declare-fun b!188545 () Bool)

(declare-fun res!86109 () Bool)

(declare-fun e!115514 () Bool)

(assert (=> b!188545 (=> (not res!86109) (not e!115514))))

(declare-fun call!8718 () Bool)

(assert (=> b!188545 (= res!86109 (not call!8718))))

(declare-fun b!188546 () Bool)

(declare-fun e!115513 () Bool)

(declare-fun e!115512 () Bool)

(assert (=> b!188546 (= e!115513 e!115512)))

(declare-fun c!36282 () Bool)

(assert (=> b!188546 (= c!36282 ((_ is EmptyLang!799) (regex!575 (rule!1090 (h!8543 tokens!465)))))))

(declare-fun b!188547 () Bool)

(assert (=> b!188547 (= e!115514 (= (head!664 lt!63334) (c!36146 (regex!575 (rule!1090 (h!8543 tokens!465))))))))

(declare-fun bm!8713 () Bool)

(assert (=> bm!8713 (= call!8718 (isEmpty!1521 lt!63334))))

(declare-fun b!188548 () Bool)

(declare-fun e!115516 () Bool)

(assert (=> b!188548 (= e!115516 e!115511)))

(declare-fun res!86112 () Bool)

(assert (=> b!188548 (=> res!86112 e!115511)))

(assert (=> b!188548 (= res!86112 call!8718)))

(declare-fun b!188549 () Bool)

(declare-fun res!86113 () Bool)

(assert (=> b!188549 (=> (not res!86113) (not e!115514))))

(assert (=> b!188549 (= res!86113 (isEmpty!1521 (tail!382 lt!63334)))))

(declare-fun b!188550 () Bool)

(declare-fun lt!63699 () Bool)

(assert (=> b!188550 (= e!115512 (not lt!63699))))

(declare-fun d!47329 () Bool)

(assert (=> d!47329 e!115513))

(declare-fun c!36281 () Bool)

(assert (=> d!47329 (= c!36281 ((_ is EmptyExpr!799) (regex!575 (rule!1090 (h!8543 tokens!465)))))))

(assert (=> d!47329 (= lt!63699 e!115515)))

(declare-fun c!36280 () Bool)

(assert (=> d!47329 (= c!36280 (isEmpty!1521 lt!63334))))

(declare-fun validRegex!199 (Regex!799) Bool)

(assert (=> d!47329 (validRegex!199 (regex!575 (rule!1090 (h!8543 tokens!465))))))

(assert (=> d!47329 (= (matchR!137 (regex!575 (rule!1090 (h!8543 tokens!465))) lt!63334) lt!63699)))

(declare-fun b!188551 () Bool)

(declare-fun nullable!126 (Regex!799) Bool)

(assert (=> b!188551 (= e!115515 (nullable!126 (regex!575 (rule!1090 (h!8543 tokens!465)))))))

(declare-fun b!188552 () Bool)

(declare-fun res!86115 () Bool)

(declare-fun e!115510 () Bool)

(assert (=> b!188552 (=> res!86115 e!115510)))

(assert (=> b!188552 (= res!86115 e!115514)))

(declare-fun res!86114 () Bool)

(assert (=> b!188552 (=> (not res!86114) (not e!115514))))

(assert (=> b!188552 (= res!86114 lt!63699)))

(declare-fun b!188553 () Bool)

(assert (=> b!188553 (= e!115513 (= lt!63699 call!8718))))

(declare-fun b!188554 () Bool)

(assert (=> b!188554 (= e!115510 e!115516)))

(declare-fun res!86110 () Bool)

(assert (=> b!188554 (=> (not res!86110) (not e!115516))))

(assert (=> b!188554 (= res!86110 (not lt!63699))))

(declare-fun b!188555 () Bool)

(declare-fun res!86116 () Bool)

(assert (=> b!188555 (=> res!86116 e!115511)))

(assert (=> b!188555 (= res!86116 (not (isEmpty!1521 (tail!382 lt!63334))))))

(declare-fun b!188556 () Bool)

(declare-fun res!86111 () Bool)

(assert (=> b!188556 (=> res!86111 e!115510)))

(assert (=> b!188556 (= res!86111 (not ((_ is ElementMatch!799) (regex!575 (rule!1090 (h!8543 tokens!465))))))))

(assert (=> b!188556 (= e!115512 e!115510)))

(assert (= (and d!47329 c!36280) b!188551))

(assert (= (and d!47329 (not c!36280)) b!188543))

(assert (= (and d!47329 c!36281) b!188553))

(assert (= (and d!47329 (not c!36281)) b!188546))

(assert (= (and b!188546 c!36282) b!188550))

(assert (= (and b!188546 (not c!36282)) b!188556))

(assert (= (and b!188556 (not res!86111)) b!188552))

(assert (= (and b!188552 res!86114) b!188545))

(assert (= (and b!188545 res!86109) b!188549))

(assert (= (and b!188549 res!86113) b!188547))

(assert (= (and b!188552 (not res!86115)) b!188554))

(assert (= (and b!188554 res!86110) b!188548))

(assert (= (and b!188548 (not res!86112)) b!188555))

(assert (= (and b!188555 (not res!86116)) b!188544))

(assert (= (or b!188553 b!188545 b!188548) bm!8713))

(assert (=> b!188547 m!193335))

(assert (=> b!188555 m!193327))

(assert (=> b!188555 m!193327))

(declare-fun m!193535 () Bool)

(assert (=> b!188555 m!193535))

(declare-fun m!193537 () Bool)

(assert (=> bm!8713 m!193537))

(assert (=> b!188543 m!193335))

(assert (=> b!188543 m!193335))

(declare-fun m!193539 () Bool)

(assert (=> b!188543 m!193539))

(assert (=> b!188543 m!193327))

(assert (=> b!188543 m!193539))

(assert (=> b!188543 m!193327))

(declare-fun m!193541 () Bool)

(assert (=> b!188543 m!193541))

(assert (=> b!188549 m!193327))

(assert (=> b!188549 m!193327))

(assert (=> b!188549 m!193535))

(assert (=> d!47329 m!193537))

(declare-fun m!193543 () Bool)

(assert (=> d!47329 m!193543))

(declare-fun m!193545 () Bool)

(assert (=> b!188551 m!193545))

(assert (=> b!188544 m!193335))

(assert (=> b!187831 d!47329))

(declare-fun d!47331 () Bool)

(assert (=> d!47331 (= (list!1157 lt!63349) (list!1161 (c!36145 lt!63349)))))

(declare-fun bs!18704 () Bool)

(assert (= bs!18704 d!47331))

(declare-fun m!193547 () Bool)

(assert (=> bs!18704 m!193547))

(assert (=> b!187811 d!47331))

(declare-fun d!47333 () Bool)

(declare-fun lt!63702 () BalanceConc!1952)

(assert (=> d!47333 (= (list!1157 lt!63702) (printList!145 thiss!17480 (list!1160 lt!63340)))))

(assert (=> d!47333 (= lt!63702 (printTailRec!155 thiss!17480 lt!63340 0 (BalanceConc!1953 Empty!972)))))

(assert (=> d!47333 (= (print!192 thiss!17480 lt!63340) lt!63702)))

(declare-fun bs!18705 () Bool)

(assert (= bs!18705 d!47333))

(declare-fun m!193549 () Bool)

(assert (=> bs!18705 m!193549))

(declare-fun m!193551 () Bool)

(assert (=> bs!18705 m!193551))

(assert (=> bs!18705 m!193551))

(declare-fun m!193553 () Bool)

(assert (=> bs!18705 m!193553))

(assert (=> bs!18705 m!192507))

(assert (=> b!187811 d!47333))

(declare-fun d!47335 () Bool)

(declare-fun lt!63717 () BalanceConc!1952)

(declare-fun printListTailRec!76 (LexerInterface!461 List!3156 List!3154) List!3154)

(assert (=> d!47335 (= (list!1157 lt!63717) (printListTailRec!76 thiss!17480 (dropList!108 lt!63340 0) (list!1157 (BalanceConc!1953 Empty!972))))))

(declare-fun e!115521 () BalanceConc!1952)

(assert (=> d!47335 (= lt!63717 e!115521)))

(declare-fun c!36285 () Bool)

(assert (=> d!47335 (= c!36285 (>= 0 (size!2533 lt!63340)))))

(declare-fun e!115522 () Bool)

(assert (=> d!47335 e!115522))

(declare-fun res!86119 () Bool)

(assert (=> d!47335 (=> (not res!86119) (not e!115522))))

(assert (=> d!47335 (= res!86119 (>= 0 0))))

(assert (=> d!47335 (= (printTailRec!155 thiss!17480 lt!63340 0 (BalanceConc!1953 Empty!972)) lt!63717)))

(declare-fun b!188563 () Bool)

(assert (=> b!188563 (= e!115522 (<= 0 (size!2533 lt!63340)))))

(declare-fun b!188564 () Bool)

(assert (=> b!188564 (= e!115521 (BalanceConc!1953 Empty!972))))

(declare-fun b!188565 () Bool)

(assert (=> b!188565 (= e!115521 (printTailRec!155 thiss!17480 lt!63340 (+ 0 1) (++!750 (BalanceConc!1953 Empty!972) (charsOf!230 (apply!481 lt!63340 0)))))))

(declare-fun lt!63718 () List!3156)

(assert (=> b!188565 (= lt!63718 (list!1160 lt!63340))))

(declare-fun lt!63719 () Unit!2930)

(assert (=> b!188565 (= lt!63719 (lemmaDropApply!148 lt!63718 0))))

(assert (=> b!188565 (= (head!662 (drop!161 lt!63718 0)) (apply!482 lt!63718 0))))

(declare-fun lt!63721 () Unit!2930)

(assert (=> b!188565 (= lt!63721 lt!63719)))

(declare-fun lt!63722 () List!3156)

(assert (=> b!188565 (= lt!63722 (list!1160 lt!63340))))

(declare-fun lt!63723 () Unit!2930)

(assert (=> b!188565 (= lt!63723 (lemmaDropTail!140 lt!63722 0))))

(assert (=> b!188565 (= (tail!381 (drop!161 lt!63722 0)) (drop!161 lt!63722 (+ 0 1)))))

(declare-fun lt!63720 () Unit!2930)

(assert (=> b!188565 (= lt!63720 lt!63723)))

(assert (= (and d!47335 res!86119) b!188563))

(assert (= (and d!47335 c!36285) b!188564))

(assert (= (and d!47335 (not c!36285)) b!188565))

(declare-fun m!193555 () Bool)

(assert (=> d!47335 m!193555))

(declare-fun m!193557 () Bool)

(assert (=> d!47335 m!193557))

(declare-fun m!193559 () Bool)

(assert (=> d!47335 m!193559))

(declare-fun m!193561 () Bool)

(assert (=> d!47335 m!193561))

(assert (=> d!47335 m!193559))

(assert (=> d!47335 m!193561))

(declare-fun m!193563 () Bool)

(assert (=> d!47335 m!193563))

(assert (=> b!188563 m!193557))

(declare-fun m!193565 () Bool)

(assert (=> b!188565 m!193565))

(declare-fun m!193567 () Bool)

(assert (=> b!188565 m!193567))

(declare-fun m!193569 () Bool)

(assert (=> b!188565 m!193569))

(declare-fun m!193571 () Bool)

(assert (=> b!188565 m!193571))

(declare-fun m!193573 () Bool)

(assert (=> b!188565 m!193573))

(assert (=> b!188565 m!193567))

(declare-fun m!193575 () Bool)

(assert (=> b!188565 m!193575))

(declare-fun m!193577 () Bool)

(assert (=> b!188565 m!193577))

(declare-fun m!193579 () Bool)

(assert (=> b!188565 m!193579))

(assert (=> b!188565 m!193551))

(assert (=> b!188565 m!193569))

(assert (=> b!188565 m!193575))

(declare-fun m!193581 () Bool)

(assert (=> b!188565 m!193581))

(assert (=> b!188565 m!193565))

(declare-fun m!193583 () Bool)

(assert (=> b!188565 m!193583))

(declare-fun m!193585 () Bool)

(assert (=> b!188565 m!193585))

(assert (=> b!188565 m!193571))

(declare-fun m!193587 () Bool)

(assert (=> b!188565 m!193587))

(assert (=> b!187811 d!47335))

(declare-fun d!47337 () Bool)

(declare-fun e!115525 () Bool)

(assert (=> d!47337 e!115525))

(declare-fun res!86122 () Bool)

(assert (=> d!47337 (=> (not res!86122) (not e!115525))))

(declare-fun lt!63726 () BalanceConc!1954)

(assert (=> d!47337 (= res!86122 (= (list!1160 lt!63726) (Cons!3146 (h!8543 tokens!465) Nil!3146)))))

(declare-fun singleton!57 (Token!894) BalanceConc!1954)

(assert (=> d!47337 (= lt!63726 (singleton!57 (h!8543 tokens!465)))))

(assert (=> d!47337 (= (singletonSeq!127 (h!8543 tokens!465)) lt!63726)))

(declare-fun b!188568 () Bool)

(declare-fun isBalanced!262 (Conc!973) Bool)

(assert (=> b!188568 (= e!115525 (isBalanced!262 (c!36147 lt!63726)))))

(assert (= (and d!47337 res!86122) b!188568))

(declare-fun m!193589 () Bool)

(assert (=> d!47337 m!193589))

(declare-fun m!193591 () Bool)

(assert (=> d!47337 m!193591))

(declare-fun m!193593 () Bool)

(assert (=> b!188568 m!193593))

(assert (=> b!187811 d!47337))

(declare-fun d!47339 () Bool)

(declare-fun c!36288 () Bool)

(assert (=> d!47339 (= c!36288 ((_ is Cons!3146) (Cons!3146 (h!8543 tokens!465) Nil!3146)))))

(declare-fun e!115528 () List!3154)

(assert (=> d!47339 (= (printList!145 thiss!17480 (Cons!3146 (h!8543 tokens!465) Nil!3146)) e!115528)))

(declare-fun b!188573 () Bool)

(assert (=> b!188573 (= e!115528 (++!748 (list!1157 (charsOf!230 (h!8543 (Cons!3146 (h!8543 tokens!465) Nil!3146)))) (printList!145 thiss!17480 (t!28754 (Cons!3146 (h!8543 tokens!465) Nil!3146)))))))

(declare-fun b!188574 () Bool)

(assert (=> b!188574 (= e!115528 Nil!3144)))

(assert (= (and d!47339 c!36288) b!188573))

(assert (= (and d!47339 (not c!36288)) b!188574))

(declare-fun m!193595 () Bool)

(assert (=> b!188573 m!193595))

(assert (=> b!188573 m!193595))

(declare-fun m!193597 () Bool)

(assert (=> b!188573 m!193597))

(declare-fun m!193599 () Bool)

(assert (=> b!188573 m!193599))

(assert (=> b!188573 m!193597))

(assert (=> b!188573 m!193599))

(declare-fun m!193601 () Bool)

(assert (=> b!188573 m!193601))

(assert (=> b!187811 d!47339))

(declare-fun d!47341 () Bool)

(assert (=> d!47341 (= (isDefined!279 lt!63332) (not (isEmpty!1525 lt!63332)))))

(declare-fun bs!18706 () Bool)

(assert (= bs!18706 d!47341))

(declare-fun m!193603 () Bool)

(assert (=> bs!18706 m!193603))

(assert (=> b!187832 d!47341))

(assert (=> b!187832 d!47287))

(declare-fun d!47343 () Bool)

(declare-fun res!86127 () Bool)

(declare-fun e!115533 () Bool)

(assert (=> d!47343 (=> res!86127 e!115533)))

(assert (=> d!47343 (= res!86127 ((_ is Nil!3146) tokens!465))))

(assert (=> d!47343 (= (forall!655 tokens!465 lambda!5693) e!115533)))

(declare-fun b!188579 () Bool)

(declare-fun e!115534 () Bool)

(assert (=> b!188579 (= e!115533 e!115534)))

(declare-fun res!86128 () Bool)

(assert (=> b!188579 (=> (not res!86128) (not e!115534))))

(assert (=> b!188579 (= res!86128 (dynLambda!1315 lambda!5693 (h!8543 tokens!465)))))

(declare-fun b!188580 () Bool)

(assert (=> b!188580 (= e!115534 (forall!655 (t!28754 tokens!465) lambda!5693))))

(assert (= (and d!47343 (not res!86127)) b!188579))

(assert (= (and b!188579 res!86128) b!188580))

(declare-fun b_lambda!4589 () Bool)

(assert (=> (not b_lambda!4589) (not b!188579)))

(declare-fun m!193605 () Bool)

(assert (=> b!188579 m!193605))

(declare-fun m!193607 () Bool)

(assert (=> b!188580 m!193607))

(assert (=> b!187833 d!47343))

(declare-fun d!47345 () Bool)

(assert (=> d!47345 (= (inv!3970 (tag!753 (rule!1090 separatorToken!170))) (= (mod (str.len (value!20702 (tag!753 (rule!1090 separatorToken!170)))) 2) 0))))

(assert (=> b!187813 d!47345))

(declare-fun d!47347 () Bool)

(declare-fun res!86129 () Bool)

(declare-fun e!115535 () Bool)

(assert (=> d!47347 (=> (not res!86129) (not e!115535))))

(assert (=> d!47347 (= res!86129 (semiInverseModEq!198 (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))) (toValue!1246 (transformation!575 (rule!1090 separatorToken!170)))))))

(assert (=> d!47347 (= (inv!3973 (transformation!575 (rule!1090 separatorToken!170))) e!115535)))

(declare-fun b!188581 () Bool)

(assert (=> b!188581 (= e!115535 (equivClasses!181 (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))) (toValue!1246 (transformation!575 (rule!1090 separatorToken!170)))))))

(assert (= (and d!47347 res!86129) b!188581))

(declare-fun m!193609 () Bool)

(assert (=> d!47347 m!193609))

(declare-fun m!193611 () Bool)

(assert (=> b!188581 m!193611))

(assert (=> b!187813 d!47347))

(declare-fun d!47349 () Bool)

(declare-fun res!86134 () Bool)

(declare-fun e!115540 () Bool)

(assert (=> d!47349 (=> res!86134 e!115540)))

(assert (=> d!47349 (= res!86134 (not ((_ is Cons!3145) rules!1920)))))

(assert (=> d!47349 (= (sepAndNonSepRulesDisjointChars!164 rules!1920 rules!1920) e!115540)))

(declare-fun b!188586 () Bool)

(declare-fun e!115541 () Bool)

(assert (=> b!188586 (= e!115540 e!115541)))

(declare-fun res!86135 () Bool)

(assert (=> b!188586 (=> (not res!86135) (not e!115541))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!58 (Rule!950 List!3155) Bool)

(assert (=> b!188586 (= res!86135 (ruleDisjointCharsFromAllFromOtherType!58 (h!8542 rules!1920) rules!1920))))

(declare-fun b!188587 () Bool)

(assert (=> b!188587 (= e!115541 (sepAndNonSepRulesDisjointChars!164 rules!1920 (t!28753 rules!1920)))))

(assert (= (and d!47349 (not res!86134)) b!188586))

(assert (= (and b!188586 res!86135) b!188587))

(declare-fun m!193613 () Bool)

(assert (=> b!188586 m!193613))

(declare-fun m!193615 () Bool)

(assert (=> b!188587 m!193615))

(assert (=> b!187834 d!47349))

(declare-fun d!47351 () Bool)

(assert (=> d!47351 (= (isEmpty!1521 (_2!1811 lt!63347)) ((_ is Nil!3144) (_2!1811 lt!63347)))))

(assert (=> b!187835 d!47351))

(declare-fun d!47353 () Bool)

(assert (=> d!47353 (= (list!1157 (seqFromList!527 lt!63348)) (list!1161 (c!36145 (seqFromList!527 lt!63348))))))

(declare-fun bs!18707 () Bool)

(assert (= bs!18707 d!47353))

(declare-fun m!193617 () Bool)

(assert (=> bs!18707 m!193617))

(assert (=> b!187827 d!47353))

(declare-fun d!47355 () Bool)

(assert (=> d!47355 (= (seqFromList!527 lt!63348) (fromListB!203 lt!63348))))

(declare-fun bs!18708 () Bool)

(assert (= bs!18708 d!47355))

(declare-fun m!193619 () Bool)

(assert (=> bs!18708 m!193619))

(assert (=> b!187827 d!47355))

(declare-fun bs!18709 () Bool)

(declare-fun d!47357 () Bool)

(assert (= bs!18709 (and d!47357 b!187842)))

(declare-fun lambda!5725 () Int)

(assert (=> bs!18709 (= lambda!5725 lambda!5694)))

(declare-fun bs!18710 () Bool)

(assert (= bs!18710 (and d!47357 b!188375)))

(assert (=> bs!18710 (= lambda!5725 lambda!5720)))

(declare-fun bs!18711 () Bool)

(assert (= bs!18711 (and d!47357 b!187833)))

(assert (=> bs!18711 (not (= lambda!5725 lambda!5693))))

(declare-fun bs!18712 () Bool)

(assert (= bs!18712 (and d!47357 d!47221)))

(assert (=> bs!18712 (not (= lambda!5725 lambda!5716))))

(declare-fun bs!18713 () Bool)

(assert (= bs!18713 (and d!47357 b!188291)))

(assert (=> bs!18713 (= lambda!5725 lambda!5717)))

(declare-fun b!188593 () Bool)

(declare-fun e!115547 () Bool)

(assert (=> b!188593 (= e!115547 true)))

(declare-fun b!188592 () Bool)

(declare-fun e!115546 () Bool)

(assert (=> b!188592 (= e!115546 e!115547)))

(declare-fun b!188591 () Bool)

(declare-fun e!115545 () Bool)

(assert (=> b!188591 (= e!115545 e!115546)))

(assert (=> d!47357 e!115545))

(assert (= b!188592 b!188593))

(assert (= b!188591 b!188592))

(assert (= (and d!47357 ((_ is Cons!3145) rules!1920)) b!188591))

(assert (=> b!188593 (< (dynLambda!1311 order!1925 (toValue!1246 (transformation!575 (h!8542 rules!1920)))) (dynLambda!1312 order!1927 lambda!5725))))

(assert (=> b!188593 (< (dynLambda!1313 order!1929 (toChars!1105 (transformation!575 (h!8542 rules!1920)))) (dynLambda!1312 order!1927 lambda!5725))))

(assert (=> d!47357 true))

(declare-fun e!115544 () Bool)

(assert (=> d!47357 e!115544))

(declare-fun res!86138 () Bool)

(assert (=> d!47357 (=> (not res!86138) (not e!115544))))

(declare-fun lt!63729 () Bool)

(assert (=> d!47357 (= res!86138 (= lt!63729 (forall!655 (list!1160 lt!63346) lambda!5725)))))

(declare-fun forall!657 (BalanceConc!1954 Int) Bool)

(assert (=> d!47357 (= lt!63729 (forall!657 lt!63346 lambda!5725))))

(assert (=> d!47357 (not (isEmpty!1520 rules!1920))))

(assert (=> d!47357 (= (rulesProduceEachTokenIndividually!253 thiss!17480 rules!1920 lt!63346) lt!63729)))

(declare-fun b!188590 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!151 (LexerInterface!461 List!3155 List!3156) Bool)

(assert (=> b!188590 (= e!115544 (= lt!63729 (rulesProduceEachTokenIndividuallyList!151 thiss!17480 rules!1920 (list!1160 lt!63346))))))

(assert (= (and d!47357 res!86138) b!188590))

(assert (=> d!47357 m!193201))

(assert (=> d!47357 m!193201))

(declare-fun m!193621 () Bool)

(assert (=> d!47357 m!193621))

(declare-fun m!193623 () Bool)

(assert (=> d!47357 m!193623))

(assert (=> d!47357 m!192475))

(assert (=> b!188590 m!193201))

(assert (=> b!188590 m!193201))

(declare-fun m!193625 () Bool)

(assert (=> b!188590 m!193625))

(assert (=> b!187829 d!47357))

(declare-fun d!47359 () Bool)

(declare-fun fromListB!205 (List!3156) BalanceConc!1954)

(assert (=> d!47359 (= (seqFromList!528 tokens!465) (fromListB!205 tokens!465))))

(declare-fun bs!18714 () Bool)

(assert (= bs!18714 d!47359))

(declare-fun m!193627 () Bool)

(assert (=> bs!18714 m!193627))

(assert (=> b!187829 d!47359))

(declare-fun d!47361 () Bool)

(assert (=> d!47361 (= (++!748 (++!748 lt!63334 lt!63336) lt!63341) (++!748 lt!63334 (++!748 lt!63336 lt!63341)))))

(declare-fun lt!63732 () Unit!2930)

(declare-fun choose!1928 (List!3154 List!3154 List!3154) Unit!2930)

(assert (=> d!47361 (= lt!63732 (choose!1928 lt!63334 lt!63336 lt!63341))))

(assert (=> d!47361 (= (lemmaConcatAssociativity!264 lt!63334 lt!63336 lt!63341) lt!63732)))

(declare-fun bs!18715 () Bool)

(assert (= bs!18715 d!47361))

(assert (=> bs!18715 m!192447))

(assert (=> bs!18715 m!192441))

(assert (=> bs!18715 m!192447))

(assert (=> bs!18715 m!192449))

(assert (=> bs!18715 m!192441))

(declare-fun m!193629 () Bool)

(assert (=> bs!18715 m!193629))

(declare-fun m!193631 () Bool)

(assert (=> bs!18715 m!193631))

(assert (=> b!187830 d!47361))

(declare-fun d!47363 () Bool)

(assert (=> d!47363 (= (seqFromList!528 (t!28754 tokens!465)) (fromListB!205 (t!28754 tokens!465)))))

(declare-fun bs!18716 () Bool)

(assert (= bs!18716 d!47363))

(declare-fun m!193633 () Bool)

(assert (=> bs!18716 m!193633))

(assert (=> b!187830 d!47363))

(declare-fun b!188594 () Bool)

(declare-fun e!115548 () List!3154)

(assert (=> b!188594 (= e!115548 lt!63354)))

(declare-fun b!188596 () Bool)

(declare-fun res!86139 () Bool)

(declare-fun e!115549 () Bool)

(assert (=> b!188596 (=> (not res!86139) (not e!115549))))

(declare-fun lt!63733 () List!3154)

(assert (=> b!188596 (= res!86139 (= (size!2532 lt!63733) (+ (size!2532 lt!63334) (size!2532 lt!63354))))))

(declare-fun b!188597 () Bool)

(assert (=> b!188597 (= e!115549 (or (not (= lt!63354 Nil!3144)) (= lt!63733 lt!63334)))))

(declare-fun b!188595 () Bool)

(assert (=> b!188595 (= e!115548 (Cons!3144 (h!8541 lt!63334) (++!748 (t!28752 lt!63334) lt!63354)))))

(declare-fun d!47365 () Bool)

(assert (=> d!47365 e!115549))

(declare-fun res!86140 () Bool)

(assert (=> d!47365 (=> (not res!86140) (not e!115549))))

(assert (=> d!47365 (= res!86140 (= (content!427 lt!63733) ((_ map or) (content!427 lt!63334) (content!427 lt!63354))))))

(assert (=> d!47365 (= lt!63733 e!115548)))

(declare-fun c!36289 () Bool)

(assert (=> d!47365 (= c!36289 ((_ is Nil!3144) lt!63334))))

(assert (=> d!47365 (= (++!748 lt!63334 lt!63354) lt!63733)))

(assert (= (and d!47365 c!36289) b!188594))

(assert (= (and d!47365 (not c!36289)) b!188595))

(assert (= (and d!47365 res!86140) b!188596))

(assert (= (and b!188596 res!86139) b!188597))

(declare-fun m!193635 () Bool)

(assert (=> b!188596 m!193635))

(assert (=> b!188596 m!192825))

(assert (=> b!188596 m!193525))

(declare-fun m!193637 () Bool)

(assert (=> b!188595 m!193637))

(declare-fun m!193639 () Bool)

(assert (=> d!47365 m!193639))

(assert (=> d!47365 m!192909))

(declare-fun m!193641 () Bool)

(assert (=> d!47365 m!193641))

(assert (=> b!187830 d!47365))

(declare-fun d!47367 () Bool)

(assert (=> d!47367 (= (list!1157 (charsOf!230 separatorToken!170)) (list!1161 (c!36145 (charsOf!230 separatorToken!170))))))

(declare-fun bs!18717 () Bool)

(assert (= bs!18717 d!47367))

(declare-fun m!193643 () Bool)

(assert (=> bs!18717 m!193643))

(assert (=> b!187830 d!47367))

(declare-fun b!188598 () Bool)

(declare-fun e!115550 () List!3154)

(assert (=> b!188598 (= e!115550 lt!63341)))

(declare-fun b!188600 () Bool)

(declare-fun res!86141 () Bool)

(declare-fun e!115551 () Bool)

(assert (=> b!188600 (=> (not res!86141) (not e!115551))))

(declare-fun lt!63734 () List!3154)

(assert (=> b!188600 (= res!86141 (= (size!2532 lt!63734) (+ (size!2532 lt!63336) (size!2532 lt!63341))))))

(declare-fun b!188601 () Bool)

(assert (=> b!188601 (= e!115551 (or (not (= lt!63341 Nil!3144)) (= lt!63734 lt!63336)))))

(declare-fun b!188599 () Bool)

(assert (=> b!188599 (= e!115550 (Cons!3144 (h!8541 lt!63336) (++!748 (t!28752 lt!63336) lt!63341)))))

(declare-fun d!47369 () Bool)

(assert (=> d!47369 e!115551))

(declare-fun res!86142 () Bool)

(assert (=> d!47369 (=> (not res!86142) (not e!115551))))

(assert (=> d!47369 (= res!86142 (= (content!427 lt!63734) ((_ map or) (content!427 lt!63336) (content!427 lt!63341))))))

(assert (=> d!47369 (= lt!63734 e!115550)))

(declare-fun c!36290 () Bool)

(assert (=> d!47369 (= c!36290 ((_ is Nil!3144) lt!63336))))

(assert (=> d!47369 (= (++!748 lt!63336 lt!63341) lt!63734)))

(assert (= (and d!47369 c!36290) b!188598))

(assert (= (and d!47369 (not c!36290)) b!188599))

(assert (= (and d!47369 res!86142) b!188600))

(assert (= (and b!188600 res!86141) b!188601))

(declare-fun m!193645 () Bool)

(assert (=> b!188600 m!193645))

(declare-fun m!193647 () Bool)

(assert (=> b!188600 m!193647))

(assert (=> b!188600 m!192903))

(declare-fun m!193649 () Bool)

(assert (=> b!188599 m!193649))

(declare-fun m!193651 () Bool)

(assert (=> d!47369 m!193651))

(declare-fun m!193653 () Bool)

(assert (=> d!47369 m!193653))

(assert (=> d!47369 m!192911))

(assert (=> b!187830 d!47369))

(declare-fun d!47371 () Bool)

(assert (=> d!47371 (= (list!1157 (printWithSeparatorTokenWhenNeededRec!144 thiss!17480 rules!1920 (seqFromList!528 (t!28754 tokens!465)) separatorToken!170 0)) (list!1161 (c!36145 (printWithSeparatorTokenWhenNeededRec!144 thiss!17480 rules!1920 (seqFromList!528 (t!28754 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!18718 () Bool)

(assert (= bs!18718 d!47371))

(declare-fun m!193655 () Bool)

(assert (=> bs!18718 m!193655))

(assert (=> b!187830 d!47371))

(declare-fun b!188602 () Bool)

(declare-fun e!115552 () List!3154)

(assert (=> b!188602 (= e!115552 lt!63336)))

(declare-fun b!188604 () Bool)

(declare-fun res!86143 () Bool)

(declare-fun e!115553 () Bool)

(assert (=> b!188604 (=> (not res!86143) (not e!115553))))

(declare-fun lt!63735 () List!3154)

(assert (=> b!188604 (= res!86143 (= (size!2532 lt!63735) (+ (size!2532 lt!63334) (size!2532 lt!63336))))))

(declare-fun b!188605 () Bool)

(assert (=> b!188605 (= e!115553 (or (not (= lt!63336 Nil!3144)) (= lt!63735 lt!63334)))))

(declare-fun b!188603 () Bool)

(assert (=> b!188603 (= e!115552 (Cons!3144 (h!8541 lt!63334) (++!748 (t!28752 lt!63334) lt!63336)))))

(declare-fun d!47373 () Bool)

(assert (=> d!47373 e!115553))

(declare-fun res!86144 () Bool)

(assert (=> d!47373 (=> (not res!86144) (not e!115553))))

(assert (=> d!47373 (= res!86144 (= (content!427 lt!63735) ((_ map or) (content!427 lt!63334) (content!427 lt!63336))))))

(assert (=> d!47373 (= lt!63735 e!115552)))

(declare-fun c!36291 () Bool)

(assert (=> d!47373 (= c!36291 ((_ is Nil!3144) lt!63334))))

(assert (=> d!47373 (= (++!748 lt!63334 lt!63336) lt!63735)))

(assert (= (and d!47373 c!36291) b!188602))

(assert (= (and d!47373 (not c!36291)) b!188603))

(assert (= (and d!47373 res!86144) b!188604))

(assert (= (and b!188604 res!86143) b!188605))

(declare-fun m!193657 () Bool)

(assert (=> b!188604 m!193657))

(assert (=> b!188604 m!192825))

(assert (=> b!188604 m!193647))

(declare-fun m!193659 () Bool)

(assert (=> b!188603 m!193659))

(declare-fun m!193661 () Bool)

(assert (=> d!47373 m!193661))

(assert (=> d!47373 m!192909))

(assert (=> d!47373 m!193653))

(assert (=> b!187830 d!47373))

(declare-fun bs!18719 () Bool)

(declare-fun d!47375 () Bool)

(assert (= bs!18719 (and d!47375 b!187842)))

(declare-fun lambda!5726 () Int)

(assert (=> bs!18719 (not (= lambda!5726 lambda!5694))))

(declare-fun bs!18720 () Bool)

(assert (= bs!18720 (and d!47375 b!188375)))

(assert (=> bs!18720 (not (= lambda!5726 lambda!5720))))

(declare-fun bs!18721 () Bool)

(assert (= bs!18721 (and d!47375 b!187833)))

(assert (=> bs!18721 (= lambda!5726 lambda!5693)))

(declare-fun bs!18722 () Bool)

(assert (= bs!18722 (and d!47375 d!47357)))

(assert (=> bs!18722 (not (= lambda!5726 lambda!5725))))

(declare-fun bs!18723 () Bool)

(assert (= bs!18723 (and d!47375 d!47221)))

(assert (=> bs!18723 (= lambda!5726 lambda!5716)))

(declare-fun bs!18724 () Bool)

(assert (= bs!18724 (and d!47375 b!188291)))

(assert (=> bs!18724 (not (= lambda!5726 lambda!5717))))

(declare-fun bs!18725 () Bool)

(declare-fun b!188610 () Bool)

(assert (= bs!18725 (and b!188610 d!47375)))

(declare-fun lambda!5727 () Int)

(assert (=> bs!18725 (not (= lambda!5727 lambda!5726))))

(declare-fun bs!18726 () Bool)

(assert (= bs!18726 (and b!188610 b!187842)))

(assert (=> bs!18726 (= lambda!5727 lambda!5694)))

(declare-fun bs!18727 () Bool)

(assert (= bs!18727 (and b!188610 b!188375)))

(assert (=> bs!18727 (= lambda!5727 lambda!5720)))

(declare-fun bs!18728 () Bool)

(assert (= bs!18728 (and b!188610 b!187833)))

(assert (=> bs!18728 (not (= lambda!5727 lambda!5693))))

(declare-fun bs!18729 () Bool)

(assert (= bs!18729 (and b!188610 d!47357)))

(assert (=> bs!18729 (= lambda!5727 lambda!5725)))

(declare-fun bs!18730 () Bool)

(assert (= bs!18730 (and b!188610 d!47221)))

(assert (=> bs!18730 (not (= lambda!5727 lambda!5716))))

(declare-fun bs!18731 () Bool)

(assert (= bs!18731 (and b!188610 b!188291)))

(assert (=> bs!18731 (= lambda!5727 lambda!5717)))

(declare-fun b!188619 () Bool)

(declare-fun e!115563 () Bool)

(assert (=> b!188619 (= e!115563 true)))

(declare-fun b!188618 () Bool)

(declare-fun e!115562 () Bool)

(assert (=> b!188618 (= e!115562 e!115563)))

(declare-fun b!188617 () Bool)

(declare-fun e!115561 () Bool)

(assert (=> b!188617 (= e!115561 e!115562)))

(assert (=> b!188610 e!115561))

(assert (= b!188618 b!188619))

(assert (= b!188617 b!188618))

(assert (= (and b!188610 ((_ is Cons!3145) rules!1920)) b!188617))

(assert (=> b!188619 (< (dynLambda!1311 order!1925 (toValue!1246 (transformation!575 (h!8542 rules!1920)))) (dynLambda!1312 order!1927 lambda!5727))))

(assert (=> b!188619 (< (dynLambda!1313 order!1929 (toChars!1105 (transformation!575 (h!8542 rules!1920)))) (dynLambda!1312 order!1927 lambda!5727))))

(assert (=> b!188610 true))

(declare-fun b!188606 () Bool)

(declare-fun e!115554 () BalanceConc!1952)

(declare-fun call!8721 () BalanceConc!1952)

(declare-fun lt!63746 () BalanceConc!1952)

(assert (=> b!188606 (= e!115554 (++!750 call!8721 lt!63746))))

(declare-fun b!188607 () Bool)

(declare-fun e!115560 () BalanceConc!1952)

(assert (=> b!188607 (= e!115560 (BalanceConc!1953 Empty!972))))

(declare-fun b!188608 () Bool)

(declare-fun e!115559 () BalanceConc!1952)

(assert (=> b!188608 (= e!115559 call!8721)))

(declare-fun b!188609 () Bool)

(assert (=> b!188609 (= e!115554 (BalanceConc!1953 Empty!972))))

(declare-fun call!8720 () Token!894)

(assert (=> b!188609 (= (print!192 thiss!17480 (singletonSeq!127 call!8720)) (printTailRec!155 thiss!17480 (singletonSeq!127 call!8720) 0 (BalanceConc!1953 Empty!972)))))

(declare-fun lt!63741 () Unit!2930)

(declare-fun Unit!2946 () Unit!2930)

(assert (=> b!188609 (= lt!63741 Unit!2946)))

(declare-fun call!8719 () BalanceConc!1952)

(declare-fun lt!63737 () Unit!2930)

(assert (=> b!188609 (= lt!63737 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!56 thiss!17480 rules!1920 (list!1157 call!8719) (list!1157 lt!63746)))))

(assert (=> b!188609 false))

(declare-fun lt!63738 () Unit!2930)

(declare-fun Unit!2947 () Unit!2930)

(assert (=> b!188609 (= lt!63738 Unit!2947)))

(declare-fun c!36294 () Bool)

(declare-fun bm!8714 () Bool)

(declare-fun call!8723 () BalanceConc!1952)

(declare-fun call!8722 () Token!894)

(declare-fun c!36295 () Bool)

(assert (=> bm!8714 (= call!8723 (charsOf!230 (ite c!36295 call!8722 (ite c!36294 separatorToken!170 call!8720))))))

(declare-fun bm!8715 () Bool)

(assert (=> bm!8715 (= call!8719 call!8723)))

(assert (=> b!188610 (= e!115560 e!115559)))

(declare-fun lt!63736 () List!3156)

(assert (=> b!188610 (= lt!63736 (list!1160 (seqFromList!528 (t!28754 tokens!465))))))

(declare-fun lt!63749 () Unit!2930)

(assert (=> b!188610 (= lt!63749 (lemmaDropApply!148 lt!63736 0))))

(assert (=> b!188610 (= (head!662 (drop!161 lt!63736 0)) (apply!482 lt!63736 0))))

(declare-fun lt!63747 () Unit!2930)

(assert (=> b!188610 (= lt!63747 lt!63749)))

(declare-fun lt!63748 () List!3156)

(assert (=> b!188610 (= lt!63748 (list!1160 (seqFromList!528 (t!28754 tokens!465))))))

(declare-fun lt!63740 () Unit!2930)

(assert (=> b!188610 (= lt!63740 (lemmaDropTail!140 lt!63748 0))))

(assert (=> b!188610 (= (tail!381 (drop!161 lt!63748 0)) (drop!161 lt!63748 (+ 0 1)))))

(declare-fun lt!63745 () Unit!2930)

(assert (=> b!188610 (= lt!63745 lt!63740)))

(declare-fun lt!63742 () Unit!2930)

(assert (=> b!188610 (= lt!63742 (forallContained!142 (list!1160 (seqFromList!528 (t!28754 tokens!465))) lambda!5727 (apply!481 (seqFromList!528 (t!28754 tokens!465)) 0)))))

(assert (=> b!188610 (= lt!63746 (printWithSeparatorTokenWhenNeededRec!144 thiss!17480 rules!1920 (seqFromList!528 (t!28754 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun lt!63743 () Option!429)

(assert (=> b!188610 (= lt!63743 (maxPrefixZipperSequence!154 thiss!17480 rules!1920 (++!750 (charsOf!230 (apply!481 (seqFromList!528 (t!28754 tokens!465)) 0)) lt!63746)))))

(declare-fun res!86145 () Bool)

(assert (=> b!188610 (= res!86145 ((_ is Some!428) lt!63743))))

(declare-fun e!115558 () Bool)

(assert (=> b!188610 (=> (not res!86145) (not e!115558))))

(assert (=> b!188610 (= c!36295 e!115558)))

(declare-fun b!188611 () Bool)

(declare-fun e!115556 () Bool)

(assert (=> b!188611 (= e!115556 (not (= (_1!1813 (v!13933 lt!63743)) call!8722)))))

(declare-fun lt!63744 () BalanceConc!1952)

(assert (=> d!47375 (= (list!1157 lt!63744) (printWithSeparatorTokenWhenNeededList!154 thiss!17480 rules!1920 (dropList!108 (seqFromList!528 (t!28754 tokens!465)) 0) separatorToken!170))))

(assert (=> d!47375 (= lt!63744 e!115560)))

(declare-fun c!36292 () Bool)

(assert (=> d!47375 (= c!36292 (>= 0 (size!2533 (seqFromList!528 (t!28754 tokens!465)))))))

(declare-fun lt!63739 () Unit!2930)

(assert (=> d!47375 (= lt!63739 (lemmaContentSubsetPreservesForall!52 (list!1160 (seqFromList!528 (t!28754 tokens!465))) (dropList!108 (seqFromList!528 (t!28754 tokens!465)) 0) lambda!5726))))

(declare-fun e!115555 () Bool)

(assert (=> d!47375 e!115555))

(declare-fun res!86146 () Bool)

(assert (=> d!47375 (=> (not res!86146) (not e!115555))))

(assert (=> d!47375 (= res!86146 (>= 0 0))))

(assert (=> d!47375 (= (printWithSeparatorTokenWhenNeededRec!144 thiss!17480 rules!1920 (seqFromList!528 (t!28754 tokens!465)) separatorToken!170 0) lt!63744)))

(declare-fun bm!8716 () Bool)

(assert (=> bm!8716 (= call!8722 (apply!481 (seqFromList!528 (t!28754 tokens!465)) 0))))

(declare-fun bm!8717 () Bool)

(assert (=> bm!8717 (= call!8720 call!8722)))

(declare-fun b!188612 () Bool)

(declare-fun e!115557 () BalanceConc!1952)

(assert (=> b!188612 (= e!115557 call!8723)))

(declare-fun b!188613 () Bool)

(assert (=> b!188613 (= c!36294 e!115556)))

(declare-fun res!86147 () Bool)

(assert (=> b!188613 (=> (not res!86147) (not e!115556))))

(assert (=> b!188613 (= res!86147 ((_ is Some!428) lt!63743))))

(assert (=> b!188613 (= e!115559 e!115554)))

(declare-fun bm!8718 () Bool)

(declare-fun c!36293 () Bool)

(assert (=> bm!8718 (= c!36293 c!36295)))

(assert (=> bm!8718 (= call!8721 (++!750 e!115557 (ite c!36295 lt!63746 call!8719)))))

(declare-fun b!188614 () Bool)

(assert (=> b!188614 (= e!115557 (charsOf!230 call!8720))))

(declare-fun b!188615 () Bool)

(assert (=> b!188615 (= e!115555 (<= 0 (size!2533 (seqFromList!528 (t!28754 tokens!465)))))))

(declare-fun b!188616 () Bool)

(assert (=> b!188616 (= e!115558 (= (_1!1813 (v!13933 lt!63743)) (apply!481 (seqFromList!528 (t!28754 tokens!465)) 0)))))

(assert (= (and d!47375 res!86146) b!188615))

(assert (= (and d!47375 c!36292) b!188607))

(assert (= (and d!47375 (not c!36292)) b!188610))

(assert (= (and b!188610 res!86145) b!188616))

(assert (= (and b!188610 c!36295) b!188608))

(assert (= (and b!188610 (not c!36295)) b!188613))

(assert (= (and b!188613 res!86147) b!188611))

(assert (= (and b!188613 c!36294) b!188606))

(assert (= (and b!188613 (not c!36294)) b!188609))

(assert (= (or b!188606 b!188609) bm!8717))

(assert (= (or b!188606 b!188609) bm!8715))

(assert (= (or b!188608 b!188611 bm!8717) bm!8716))

(assert (= (or b!188608 bm!8715) bm!8714))

(assert (= (or b!188608 b!188606) bm!8718))

(assert (= (and bm!8718 c!36293) b!188612))

(assert (= (and bm!8718 (not c!36293)) b!188614))

(assert (=> b!188616 m!192455))

(declare-fun m!193663 () Bool)

(assert (=> b!188616 m!193663))

(declare-fun m!193665 () Bool)

(assert (=> bm!8718 m!193665))

(declare-fun m!193667 () Bool)

(assert (=> b!188610 m!193667))

(assert (=> b!188610 m!193663))

(declare-fun m!193669 () Bool)

(assert (=> b!188610 m!193669))

(declare-fun m!193671 () Bool)

(assert (=> b!188610 m!193671))

(declare-fun m!193673 () Bool)

(assert (=> b!188610 m!193673))

(declare-fun m!193675 () Bool)

(assert (=> b!188610 m!193675))

(declare-fun m!193677 () Bool)

(assert (=> b!188610 m!193677))

(declare-fun m!193679 () Bool)

(assert (=> b!188610 m!193679))

(assert (=> b!188610 m!193669))

(declare-fun m!193681 () Bool)

(assert (=> b!188610 m!193681))

(assert (=> b!188610 m!193681))

(declare-fun m!193683 () Bool)

(assert (=> b!188610 m!193683))

(assert (=> b!188610 m!192455))

(declare-fun m!193685 () Bool)

(assert (=> b!188610 m!193685))

(declare-fun m!193687 () Bool)

(assert (=> b!188610 m!193687))

(assert (=> b!188610 m!193671))

(assert (=> b!188610 m!192455))

(declare-fun m!193689 () Bool)

(assert (=> b!188610 m!193689))

(assert (=> b!188610 m!192455))

(assert (=> b!188610 m!193663))

(assert (=> b!188610 m!193685))

(assert (=> b!188610 m!193663))

(declare-fun m!193691 () Bool)

(assert (=> b!188610 m!193691))

(assert (=> b!188610 m!193677))

(declare-fun m!193693 () Bool)

(assert (=> b!188610 m!193693))

(declare-fun m!193695 () Bool)

(assert (=> b!188614 m!193695))

(declare-fun m!193697 () Bool)

(assert (=> bm!8714 m!193697))

(assert (=> bm!8716 m!192455))

(assert (=> bm!8716 m!193663))

(assert (=> b!188615 m!192455))

(declare-fun m!193699 () Bool)

(assert (=> b!188615 m!193699))

(declare-fun m!193701 () Bool)

(assert (=> d!47375 m!193701))

(declare-fun m!193703 () Bool)

(assert (=> d!47375 m!193703))

(declare-fun m!193705 () Bool)

(assert (=> d!47375 m!193705))

(assert (=> d!47375 m!192455))

(assert (=> d!47375 m!193703))

(assert (=> d!47375 m!192455))

(assert (=> d!47375 m!193685))

(assert (=> d!47375 m!193685))

(assert (=> d!47375 m!193703))

(declare-fun m!193707 () Bool)

(assert (=> d!47375 m!193707))

(assert (=> d!47375 m!192455))

(assert (=> d!47375 m!193699))

(declare-fun m!193709 () Bool)

(assert (=> b!188606 m!193709))

(declare-fun m!193711 () Bool)

(assert (=> b!188609 m!193711))

(declare-fun m!193713 () Bool)

(assert (=> b!188609 m!193713))

(declare-fun m!193715 () Bool)

(assert (=> b!188609 m!193715))

(assert (=> b!188609 m!193711))

(declare-fun m!193717 () Bool)

(assert (=> b!188609 m!193717))

(declare-fun m!193719 () Bool)

(assert (=> b!188609 m!193719))

(assert (=> b!188609 m!193715))

(declare-fun m!193721 () Bool)

(assert (=> b!188609 m!193721))

(assert (=> b!188609 m!193711))

(assert (=> b!188609 m!193719))

(assert (=> b!187830 d!47375))

(declare-fun d!47377 () Bool)

(declare-fun lt!63752 () BalanceConc!1952)

(assert (=> d!47377 (= (list!1157 lt!63752) (originalCharacters!618 separatorToken!170))))

(assert (=> d!47377 (= lt!63752 (dynLambda!1316 (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))) (value!20703 separatorToken!170)))))

(assert (=> d!47377 (= (charsOf!230 separatorToken!170) lt!63752)))

(declare-fun b_lambda!4591 () Bool)

(assert (=> (not b_lambda!4591) (not d!47377)))

(assert (=> d!47377 t!28775))

(declare-fun b_and!13021 () Bool)

(assert (= b_and!12989 (and (=> t!28775 result!10652) b_and!13021)))

(assert (=> d!47377 t!28777))

(declare-fun b_and!13023 () Bool)

(assert (= b_and!12991 (and (=> t!28777 result!10654) b_and!13023)))

(assert (=> d!47377 t!28779))

(declare-fun b_and!13025 () Bool)

(assert (= b_and!12993 (and (=> t!28779 result!10656) b_and!13025)))

(declare-fun m!193723 () Bool)

(assert (=> d!47377 m!193723))

(assert (=> d!47377 m!192919))

(assert (=> b!187830 d!47377))

(declare-fun d!47379 () Bool)

(assert (=> d!47379 (= (list!1157 (charsOf!230 (h!8543 tokens!465))) (list!1161 (c!36145 (charsOf!230 (h!8543 tokens!465)))))))

(declare-fun bs!18732 () Bool)

(assert (= bs!18732 d!47379))

(declare-fun m!193725 () Bool)

(assert (=> bs!18732 m!193725))

(assert (=> b!187830 d!47379))

(declare-fun d!47381 () Bool)

(declare-fun lt!63753 () BalanceConc!1952)

(assert (=> d!47381 (= (list!1157 lt!63753) (originalCharacters!618 (h!8543 tokens!465)))))

(assert (=> d!47381 (= lt!63753 (dynLambda!1316 (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))) (value!20703 (h!8543 tokens!465))))))

(assert (=> d!47381 (= (charsOf!230 (h!8543 tokens!465)) lt!63753)))

(declare-fun b_lambda!4593 () Bool)

(assert (=> (not b_lambda!4593) (not d!47381)))

(assert (=> d!47381 t!28769))

(declare-fun b_and!13027 () Bool)

(assert (= b_and!13021 (and (=> t!28769 result!10644) b_and!13027)))

(assert (=> d!47381 t!28771))

(declare-fun b_and!13029 () Bool)

(assert (= b_and!13023 (and (=> t!28771 result!10648) b_and!13029)))

(assert (=> d!47381 t!28773))

(declare-fun b_and!13031 () Bool)

(assert (= b_and!13025 (and (=> t!28773 result!10650) b_and!13031)))

(declare-fun m!193727 () Bool)

(assert (=> d!47381 m!193727))

(assert (=> d!47381 m!192867))

(assert (=> b!187830 d!47381))

(declare-fun b!188620 () Bool)

(declare-fun e!115564 () List!3154)

(assert (=> b!188620 (= e!115564 lt!63341)))

(declare-fun b!188622 () Bool)

(declare-fun res!86148 () Bool)

(declare-fun e!115565 () Bool)

(assert (=> b!188622 (=> (not res!86148) (not e!115565))))

(declare-fun lt!63754 () List!3154)

(assert (=> b!188622 (= res!86148 (= (size!2532 lt!63754) (+ (size!2532 (++!748 lt!63334 lt!63336)) (size!2532 lt!63341))))))

(declare-fun b!188623 () Bool)

(assert (=> b!188623 (= e!115565 (or (not (= lt!63341 Nil!3144)) (= lt!63754 (++!748 lt!63334 lt!63336))))))

(declare-fun b!188621 () Bool)

(assert (=> b!188621 (= e!115564 (Cons!3144 (h!8541 (++!748 lt!63334 lt!63336)) (++!748 (t!28752 (++!748 lt!63334 lt!63336)) lt!63341)))))

(declare-fun d!47383 () Bool)

(assert (=> d!47383 e!115565))

(declare-fun res!86149 () Bool)

(assert (=> d!47383 (=> (not res!86149) (not e!115565))))

(assert (=> d!47383 (= res!86149 (= (content!427 lt!63754) ((_ map or) (content!427 (++!748 lt!63334 lt!63336)) (content!427 lt!63341))))))

(assert (=> d!47383 (= lt!63754 e!115564)))

(declare-fun c!36296 () Bool)

(assert (=> d!47383 (= c!36296 ((_ is Nil!3144) (++!748 lt!63334 lt!63336)))))

(assert (=> d!47383 (= (++!748 (++!748 lt!63334 lt!63336) lt!63341) lt!63754)))

(assert (= (and d!47383 c!36296) b!188620))

(assert (= (and d!47383 (not c!36296)) b!188621))

(assert (= (and d!47383 res!86149) b!188622))

(assert (= (and b!188622 res!86148) b!188623))

(declare-fun m!193729 () Bool)

(assert (=> b!188622 m!193729))

(assert (=> b!188622 m!192447))

(declare-fun m!193731 () Bool)

(assert (=> b!188622 m!193731))

(assert (=> b!188622 m!192903))

(declare-fun m!193733 () Bool)

(assert (=> b!188621 m!193733))

(declare-fun m!193735 () Bool)

(assert (=> d!47383 m!193735))

(assert (=> d!47383 m!192447))

(declare-fun m!193737 () Bool)

(assert (=> d!47383 m!193737))

(assert (=> d!47383 m!192911))

(assert (=> b!187830 d!47383))

(declare-fun bs!18733 () Bool)

(declare-fun b!188633 () Bool)

(assert (= bs!18733 (and b!188633 b!187842)))

(declare-fun lambda!5728 () Int)

(assert (=> bs!18733 (= lambda!5728 lambda!5694)))

(declare-fun bs!18734 () Bool)

(assert (= bs!18734 (and b!188633 b!188375)))

(assert (=> bs!18734 (= lambda!5728 lambda!5720)))

(declare-fun bs!18735 () Bool)

(assert (= bs!18735 (and b!188633 b!187833)))

(assert (=> bs!18735 (not (= lambda!5728 lambda!5693))))

(declare-fun bs!18736 () Bool)

(assert (= bs!18736 (and b!188633 d!47357)))

(assert (=> bs!18736 (= lambda!5728 lambda!5725)))

(declare-fun bs!18737 () Bool)

(assert (= bs!18737 (and b!188633 d!47221)))

(assert (=> bs!18737 (not (= lambda!5728 lambda!5716))))

(declare-fun bs!18738 () Bool)

(assert (= bs!18738 (and b!188633 b!188291)))

(assert (=> bs!18738 (= lambda!5728 lambda!5717)))

(declare-fun bs!18739 () Bool)

(assert (= bs!18739 (and b!188633 d!47375)))

(assert (=> bs!18739 (not (= lambda!5728 lambda!5726))))

(declare-fun bs!18740 () Bool)

(assert (= bs!18740 (and b!188633 b!188610)))

(assert (=> bs!18740 (= lambda!5728 lambda!5727)))

(declare-fun b!188636 () Bool)

(declare-fun e!115573 () Bool)

(assert (=> b!188636 (= e!115573 true)))

(declare-fun b!188635 () Bool)

(declare-fun e!115572 () Bool)

(assert (=> b!188635 (= e!115572 e!115573)))

(declare-fun b!188634 () Bool)

(declare-fun e!115571 () Bool)

(assert (=> b!188634 (= e!115571 e!115572)))

(assert (=> b!188633 e!115571))

(assert (= b!188635 b!188636))

(assert (= b!188634 b!188635))

(assert (= (and b!188633 ((_ is Cons!3145) rules!1920)) b!188634))

(assert (=> b!188636 (< (dynLambda!1311 order!1925 (toValue!1246 (transformation!575 (h!8542 rules!1920)))) (dynLambda!1312 order!1927 lambda!5728))))

(assert (=> b!188636 (< (dynLambda!1313 order!1929 (toChars!1105 (transformation!575 (h!8542 rules!1920)))) (dynLambda!1312 order!1927 lambda!5728))))

(assert (=> b!188633 true))

(declare-fun d!47385 () Bool)

(declare-fun c!36297 () Bool)

(assert (=> d!47385 (= c!36297 ((_ is Cons!3146) (t!28754 tokens!465)))))

(declare-fun e!115567 () List!3154)

(assert (=> d!47385 (= (printWithSeparatorTokenWhenNeededList!154 thiss!17480 rules!1920 (t!28754 tokens!465) separatorToken!170) e!115567)))

(declare-fun bm!8719 () Bool)

(declare-fun call!8727 () BalanceConc!1952)

(declare-fun call!8724 () List!3154)

(declare-fun e!115568 () BalanceConc!1952)

(declare-fun c!36301 () Bool)

(assert (=> bm!8719 (= call!8724 (list!1157 (ite c!36301 call!8727 e!115568)))))

(declare-fun bm!8720 () Bool)

(declare-fun call!8726 () List!3154)

(assert (=> bm!8720 (= call!8726 call!8724)))

(declare-fun c!36300 () Bool)

(declare-fun c!36298 () Bool)

(assert (=> bm!8720 (= c!36300 c!36298)))

(declare-fun b!188624 () Bool)

(declare-fun call!8728 () BalanceConc!1952)

(assert (=> b!188624 (= e!115568 call!8728)))

(declare-fun b!188625 () Bool)

(declare-fun lt!63760 () Option!428)

(assert (=> b!188625 (= c!36298 (and ((_ is Some!427) lt!63760) (not (= (_1!1811 (v!13932 lt!63760)) (h!8543 (t!28754 tokens!465))))))))

(declare-fun e!115569 () List!3154)

(declare-fun e!115570 () List!3154)

(assert (=> b!188625 (= e!115569 e!115570)))

(declare-fun b!188626 () Bool)

(declare-fun call!8725 () List!3154)

(assert (=> b!188626 (= e!115569 call!8725)))

(declare-fun b!188627 () Bool)

(assert (=> b!188627 (= e!115568 (charsOf!230 separatorToken!170))))

(declare-fun bm!8721 () Bool)

(declare-fun c!36299 () Bool)

(assert (=> bm!8721 (= c!36299 c!36301)))

(declare-fun e!115566 () List!3154)

(declare-fun lt!63755 () List!3154)

(assert (=> bm!8721 (= call!8725 (++!748 e!115566 (ite c!36301 lt!63755 call!8726)))))

(declare-fun bm!8722 () Bool)

(assert (=> bm!8722 (= call!8728 call!8727)))

(declare-fun b!188628 () Bool)

(assert (=> b!188628 (= e!115566 (list!1157 call!8728))))

(declare-fun b!188629 () Bool)

(assert (=> b!188629 (= e!115570 (++!748 call!8725 lt!63755))))

(declare-fun b!188630 () Bool)

(assert (=> b!188630 (= e!115567 Nil!3144)))

(declare-fun bm!8723 () Bool)

(assert (=> bm!8723 (= call!8727 (charsOf!230 (h!8543 (t!28754 tokens!465))))))

(declare-fun b!188631 () Bool)

(assert (=> b!188631 (= e!115570 Nil!3144)))

(assert (=> b!188631 (= (print!192 thiss!17480 (singletonSeq!127 (h!8543 (t!28754 tokens!465)))) (printTailRec!155 thiss!17480 (singletonSeq!127 (h!8543 (t!28754 tokens!465))) 0 (BalanceConc!1953 Empty!972)))))

(declare-fun lt!63759 () Unit!2930)

(declare-fun Unit!2948 () Unit!2930)

(assert (=> b!188631 (= lt!63759 Unit!2948)))

(declare-fun lt!63757 () Unit!2930)

(assert (=> b!188631 (= lt!63757 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!56 thiss!17480 rules!1920 call!8726 lt!63755))))

(assert (=> b!188631 false))

(declare-fun lt!63756 () Unit!2930)

(declare-fun Unit!2949 () Unit!2930)

(assert (=> b!188631 (= lt!63756 Unit!2949)))

(declare-fun b!188632 () Bool)

(assert (=> b!188632 (= e!115566 call!8724)))

(assert (=> b!188633 (= e!115567 e!115569)))

(declare-fun lt!63758 () Unit!2930)

(assert (=> b!188633 (= lt!63758 (forallContained!142 (t!28754 tokens!465) lambda!5728 (h!8543 (t!28754 tokens!465))))))

(assert (=> b!188633 (= lt!63755 (printWithSeparatorTokenWhenNeededList!154 thiss!17480 rules!1920 (t!28754 (t!28754 tokens!465)) separatorToken!170))))

(assert (=> b!188633 (= lt!63760 (maxPrefix!191 thiss!17480 rules!1920 (++!748 (list!1157 (charsOf!230 (h!8543 (t!28754 tokens!465)))) lt!63755)))))

(assert (=> b!188633 (= c!36301 (and ((_ is Some!427) lt!63760) (= (_1!1811 (v!13932 lt!63760)) (h!8543 (t!28754 tokens!465)))))))

(assert (= (and d!47385 c!36297) b!188633))

(assert (= (and d!47385 (not c!36297)) b!188630))

(assert (= (and b!188633 c!36301) b!188626))

(assert (= (and b!188633 (not c!36301)) b!188625))

(assert (= (and b!188625 c!36298) b!188629))

(assert (= (and b!188625 (not c!36298)) b!188631))

(assert (= (or b!188629 b!188631) bm!8722))

(assert (= (or b!188629 b!188631) bm!8720))

(assert (= (and bm!8720 c!36300) b!188627))

(assert (= (and bm!8720 (not c!36300)) b!188624))

(assert (= (or b!188626 bm!8722) bm!8723))

(assert (= (or b!188626 bm!8720) bm!8719))

(assert (= (or b!188626 b!188629) bm!8721))

(assert (= (and bm!8721 c!36299) b!188632))

(assert (= (and bm!8721 (not c!36299)) b!188628))

(assert (=> b!188627 m!192451))

(declare-fun m!193739 () Bool)

(assert (=> b!188629 m!193739))

(declare-fun m!193741 () Bool)

(assert (=> bm!8723 m!193741))

(declare-fun m!193743 () Bool)

(assert (=> b!188628 m!193743))

(declare-fun m!193745 () Bool)

(assert (=> b!188631 m!193745))

(assert (=> b!188631 m!193745))

(declare-fun m!193747 () Bool)

(assert (=> b!188631 m!193747))

(assert (=> b!188631 m!193745))

(declare-fun m!193749 () Bool)

(assert (=> b!188631 m!193749))

(declare-fun m!193751 () Bool)

(assert (=> b!188631 m!193751))

(declare-fun m!193753 () Bool)

(assert (=> bm!8719 m!193753))

(assert (=> b!188633 m!193741))

(declare-fun m!193755 () Bool)

(assert (=> b!188633 m!193755))

(declare-fun m!193757 () Bool)

(assert (=> b!188633 m!193757))

(assert (=> b!188633 m!193741))

(declare-fun m!193759 () Bool)

(assert (=> b!188633 m!193759))

(declare-fun m!193761 () Bool)

(assert (=> b!188633 m!193761))

(declare-fun m!193763 () Bool)

(assert (=> b!188633 m!193763))

(assert (=> b!188633 m!193755))

(assert (=> b!188633 m!193761))

(declare-fun m!193765 () Bool)

(assert (=> bm!8721 m!193765))

(assert (=> b!187830 d!47385))

(declare-fun b!188647 () Bool)

(declare-fun e!115576 () Bool)

(declare-fun tp_is_empty!1695 () Bool)

(assert (=> b!188647 (= e!115576 tp_is_empty!1695)))

(assert (=> b!187820 (= tp!87956 e!115576)))

(declare-fun b!188649 () Bool)

(declare-fun tp!88038 () Bool)

(assert (=> b!188649 (= e!115576 tp!88038)))

(declare-fun b!188650 () Bool)

(declare-fun tp!88034 () Bool)

(declare-fun tp!88035 () Bool)

(assert (=> b!188650 (= e!115576 (and tp!88034 tp!88035))))

(declare-fun b!188648 () Bool)

(declare-fun tp!88036 () Bool)

(declare-fun tp!88037 () Bool)

(assert (=> b!188648 (= e!115576 (and tp!88036 tp!88037))))

(assert (= (and b!187820 ((_ is ElementMatch!799) (regex!575 (rule!1090 (h!8543 tokens!465))))) b!188647))

(assert (= (and b!187820 ((_ is Concat!1397) (regex!575 (rule!1090 (h!8543 tokens!465))))) b!188648))

(assert (= (and b!187820 ((_ is Star!799) (regex!575 (rule!1090 (h!8543 tokens!465))))) b!188649))

(assert (= (and b!187820 ((_ is Union!799) (regex!575 (rule!1090 (h!8543 tokens!465))))) b!188650))

(declare-fun b!188661 () Bool)

(declare-fun b_free!7429 () Bool)

(declare-fun b_next!7429 () Bool)

(assert (=> b!188661 (= b_free!7429 (not b_next!7429))))

(declare-fun tp!88049 () Bool)

(declare-fun b_and!13033 () Bool)

(assert (=> b!188661 (= tp!88049 b_and!13033)))

(declare-fun b_free!7431 () Bool)

(declare-fun b_next!7431 () Bool)

(assert (=> b!188661 (= b_free!7431 (not b_next!7431))))

(declare-fun tb!7769 () Bool)

(declare-fun t!28812 () Bool)

(assert (=> (and b!188661 (= (toChars!1105 (transformation!575 (h!8542 (t!28753 rules!1920)))) (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465))))) t!28812) tb!7769))

(declare-fun result!10684 () Bool)

(assert (= result!10684 result!10644))

(assert (=> b!188126 t!28812))

(declare-fun t!28814 () Bool)

(declare-fun tb!7771 () Bool)

(assert (=> (and b!188661 (= (toChars!1105 (transformation!575 (h!8542 (t!28753 rules!1920)))) (toChars!1105 (transformation!575 (rule!1090 separatorToken!170)))) t!28814) tb!7771))

(declare-fun result!10686 () Bool)

(assert (= result!10686 result!10652))

(assert (=> b!188158 t!28814))

(assert (=> d!47377 t!28814))

(assert (=> d!47381 t!28812))

(declare-fun b_and!13035 () Bool)

(declare-fun tp!88050 () Bool)

(assert (=> b!188661 (= tp!88050 (and (=> t!28812 result!10684) (=> t!28814 result!10686) b_and!13035))))

(declare-fun e!115585 () Bool)

(assert (=> b!188661 (= e!115585 (and tp!88049 tp!88050))))

(declare-fun tp!88047 () Bool)

(declare-fun b!188660 () Bool)

(declare-fun e!115586 () Bool)

(assert (=> b!188660 (= e!115586 (and tp!88047 (inv!3970 (tag!753 (h!8542 (t!28753 rules!1920)))) (inv!3973 (transformation!575 (h!8542 (t!28753 rules!1920)))) e!115585))))

(declare-fun b!188659 () Bool)

(declare-fun e!115588 () Bool)

(declare-fun tp!88048 () Bool)

(assert (=> b!188659 (= e!115588 (and e!115586 tp!88048))))

(assert (=> b!187843 (= tp!87959 e!115588)))

(assert (= b!188660 b!188661))

(assert (= b!188659 b!188660))

(assert (= (and b!187843 ((_ is Cons!3145) (t!28753 rules!1920))) b!188659))

(declare-fun m!193767 () Bool)

(assert (=> b!188660 m!193767))

(declare-fun m!193769 () Bool)

(assert (=> b!188660 m!193769))

(declare-fun b!188666 () Bool)

(declare-fun e!115591 () Bool)

(declare-fun tp!88053 () Bool)

(assert (=> b!188666 (= e!115591 (and tp_is_empty!1695 tp!88053))))

(assert (=> b!187823 (= tp!87947 e!115591)))

(assert (= (and b!187823 ((_ is Cons!3144) (originalCharacters!618 separatorToken!170))) b!188666))

(declare-fun b!188667 () Bool)

(declare-fun e!115592 () Bool)

(assert (=> b!188667 (= e!115592 tp_is_empty!1695)))

(assert (=> b!187813 (= tp!87957 e!115592)))

(declare-fun b!188669 () Bool)

(declare-fun tp!88058 () Bool)

(assert (=> b!188669 (= e!115592 tp!88058)))

(declare-fun b!188670 () Bool)

(declare-fun tp!88054 () Bool)

(declare-fun tp!88055 () Bool)

(assert (=> b!188670 (= e!115592 (and tp!88054 tp!88055))))

(declare-fun b!188668 () Bool)

(declare-fun tp!88056 () Bool)

(declare-fun tp!88057 () Bool)

(assert (=> b!188668 (= e!115592 (and tp!88056 tp!88057))))

(assert (= (and b!187813 ((_ is ElementMatch!799) (regex!575 (rule!1090 separatorToken!170)))) b!188667))

(assert (= (and b!187813 ((_ is Concat!1397) (regex!575 (rule!1090 separatorToken!170)))) b!188668))

(assert (= (and b!187813 ((_ is Star!799) (regex!575 (rule!1090 separatorToken!170)))) b!188669))

(assert (= (and b!187813 ((_ is Union!799) (regex!575 (rule!1090 separatorToken!170)))) b!188670))

(declare-fun b!188684 () Bool)

(declare-fun b_free!7433 () Bool)

(declare-fun b_next!7433 () Bool)

(assert (=> b!188684 (= b_free!7433 (not b_next!7433))))

(declare-fun tp!88072 () Bool)

(declare-fun b_and!13037 () Bool)

(assert (=> b!188684 (= tp!88072 b_and!13037)))

(declare-fun b_free!7435 () Bool)

(declare-fun b_next!7435 () Bool)

(assert (=> b!188684 (= b_free!7435 (not b_next!7435))))

(declare-fun t!28816 () Bool)

(declare-fun tb!7773 () Bool)

(assert (=> (and b!188684 (= (toChars!1105 (transformation!575 (rule!1090 (h!8543 (t!28754 tokens!465))))) (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465))))) t!28816) tb!7773))

(declare-fun result!10692 () Bool)

(assert (= result!10692 result!10644))

(assert (=> b!188126 t!28816))

(declare-fun tb!7775 () Bool)

(declare-fun t!28818 () Bool)

(assert (=> (and b!188684 (= (toChars!1105 (transformation!575 (rule!1090 (h!8543 (t!28754 tokens!465))))) (toChars!1105 (transformation!575 (rule!1090 separatorToken!170)))) t!28818) tb!7775))

(declare-fun result!10694 () Bool)

(assert (= result!10694 result!10652))

(assert (=> b!188158 t!28818))

(assert (=> d!47377 t!28818))

(assert (=> d!47381 t!28816))

(declare-fun b_and!13039 () Bool)

(declare-fun tp!88070 () Bool)

(assert (=> b!188684 (= tp!88070 (and (=> t!28816 result!10692) (=> t!28818 result!10694) b_and!13039))))

(declare-fun e!115605 () Bool)

(assert (=> b!187825 (= tp!87952 e!115605)))

(declare-fun e!115610 () Bool)

(declare-fun b!188683 () Bool)

(declare-fun tp!88073 () Bool)

(declare-fun e!115609 () Bool)

(assert (=> b!188683 (= e!115609 (and tp!88073 (inv!3970 (tag!753 (rule!1090 (h!8543 (t!28754 tokens!465))))) (inv!3973 (transformation!575 (rule!1090 (h!8543 (t!28754 tokens!465))))) e!115610))))

(declare-fun tp!88069 () Bool)

(declare-fun b!188682 () Bool)

(declare-fun e!115608 () Bool)

(assert (=> b!188682 (= e!115608 (and (inv!21 (value!20703 (h!8543 (t!28754 tokens!465)))) e!115609 tp!88069))))

(declare-fun b!188681 () Bool)

(declare-fun tp!88071 () Bool)

(assert (=> b!188681 (= e!115605 (and (inv!3974 (h!8543 (t!28754 tokens!465))) e!115608 tp!88071))))

(assert (=> b!188684 (= e!115610 (and tp!88072 tp!88070))))

(assert (= b!188683 b!188684))

(assert (= b!188682 b!188683))

(assert (= b!188681 b!188682))

(assert (= (and b!187825 ((_ is Cons!3146) (t!28754 tokens!465))) b!188681))

(declare-fun m!193771 () Bool)

(assert (=> b!188683 m!193771))

(declare-fun m!193773 () Bool)

(assert (=> b!188683 m!193773))

(declare-fun m!193775 () Bool)

(assert (=> b!188682 m!193775))

(declare-fun m!193777 () Bool)

(assert (=> b!188681 m!193777))

(declare-fun b!188687 () Bool)

(declare-fun e!115613 () Bool)

(assert (=> b!188687 (= e!115613 true)))

(declare-fun b!188686 () Bool)

(declare-fun e!115612 () Bool)

(assert (=> b!188686 (= e!115612 e!115613)))

(declare-fun b!188685 () Bool)

(declare-fun e!115611 () Bool)

(assert (=> b!188685 (= e!115611 e!115612)))

(assert (=> b!187854 e!115611))

(assert (= b!188686 b!188687))

(assert (= b!188685 b!188686))

(assert (= (and b!187854 ((_ is Cons!3145) (t!28753 rules!1920))) b!188685))

(assert (=> b!188687 (< (dynLambda!1311 order!1925 (toValue!1246 (transformation!575 (h!8542 (t!28753 rules!1920))))) (dynLambda!1312 order!1927 lambda!5694))))

(assert (=> b!188687 (< (dynLambda!1313 order!1929 (toChars!1105 (transformation!575 (h!8542 (t!28753 rules!1920))))) (dynLambda!1312 order!1927 lambda!5694))))

(declare-fun b!188688 () Bool)

(declare-fun e!115614 () Bool)

(declare-fun tp!88074 () Bool)

(assert (=> b!188688 (= e!115614 (and tp_is_empty!1695 tp!88074))))

(assert (=> b!187816 (= tp!87955 e!115614)))

(assert (= (and b!187816 ((_ is Cons!3144) (originalCharacters!618 (h!8543 tokens!465)))) b!188688))

(declare-fun b!188689 () Bool)

(declare-fun e!115615 () Bool)

(assert (=> b!188689 (= e!115615 tp_is_empty!1695)))

(assert (=> b!187839 (= tp!87950 e!115615)))

(declare-fun b!188691 () Bool)

(declare-fun tp!88079 () Bool)

(assert (=> b!188691 (= e!115615 tp!88079)))

(declare-fun b!188692 () Bool)

(declare-fun tp!88075 () Bool)

(declare-fun tp!88076 () Bool)

(assert (=> b!188692 (= e!115615 (and tp!88075 tp!88076))))

(declare-fun b!188690 () Bool)

(declare-fun tp!88077 () Bool)

(declare-fun tp!88078 () Bool)

(assert (=> b!188690 (= e!115615 (and tp!88077 tp!88078))))

(assert (= (and b!187839 ((_ is ElementMatch!799) (regex!575 (h!8542 rules!1920)))) b!188689))

(assert (= (and b!187839 ((_ is Concat!1397) (regex!575 (h!8542 rules!1920)))) b!188690))

(assert (= (and b!187839 ((_ is Star!799) (regex!575 (h!8542 rules!1920)))) b!188691))

(assert (= (and b!187839 ((_ is Union!799) (regex!575 (h!8542 rules!1920)))) b!188692))

(declare-fun b_lambda!4595 () Bool)

(assert (= b_lambda!4565 (or (and b!188661 b_free!7431 (= (toChars!1105 (transformation!575 (h!8542 (t!28753 rules!1920)))) (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))))) (and b!187840 b_free!7415) (and b!187826 b_free!7411 (= (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))) (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))))) (and b!187814 b_free!7419 (= (toChars!1105 (transformation!575 (h!8542 rules!1920))) (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))))) (and b!188684 b_free!7435 (= (toChars!1105 (transformation!575 (rule!1090 (h!8543 (t!28754 tokens!465))))) (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))))) b_lambda!4595)))

(declare-fun b_lambda!4597 () Bool)

(assert (= b_lambda!4591 (or (and b!188661 b_free!7431 (= (toChars!1105 (transformation!575 (h!8542 (t!28753 rules!1920)))) (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))))) (and b!187840 b_free!7415) (and b!187826 b_free!7411 (= (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))) (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))))) (and b!187814 b_free!7419 (= (toChars!1105 (transformation!575 (h!8542 rules!1920))) (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))))) (and b!188684 b_free!7435 (= (toChars!1105 (transformation!575 (rule!1090 (h!8543 (t!28754 tokens!465))))) (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))))) b_lambda!4597)))

(declare-fun b_lambda!4599 () Bool)

(assert (= b_lambda!4589 (or b!187833 b_lambda!4599)))

(declare-fun bs!18741 () Bool)

(declare-fun d!47387 () Bool)

(assert (= bs!18741 (and d!47387 b!187833)))

(assert (=> bs!18741 (= (dynLambda!1315 lambda!5693 (h!8543 tokens!465)) (not (isSeparator!575 (rule!1090 (h!8543 tokens!465)))))))

(assert (=> b!188579 d!47387))

(declare-fun b_lambda!4601 () Bool)

(assert (= b_lambda!4593 (or (and b!187826 b_free!7411) (and b!188661 b_free!7431 (= (toChars!1105 (transformation!575 (h!8542 (t!28753 rules!1920)))) (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))))) (and b!188684 b_free!7435 (= (toChars!1105 (transformation!575 (rule!1090 (h!8543 (t!28754 tokens!465))))) (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))))) (and b!187840 b_free!7415 (= (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))) (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))))) (and b!187814 b_free!7419 (= (toChars!1105 (transformation!575 (h!8542 rules!1920))) (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))))) b_lambda!4601)))

(declare-fun b_lambda!4603 () Bool)

(assert (= b_lambda!4563 (or (and b!187826 b_free!7411) (and b!188661 b_free!7431 (= (toChars!1105 (transformation!575 (h!8542 (t!28753 rules!1920)))) (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))))) (and b!188684 b_free!7435 (= (toChars!1105 (transformation!575 (rule!1090 (h!8543 (t!28754 tokens!465))))) (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))))) (and b!187840 b_free!7415 (= (toChars!1105 (transformation!575 (rule!1090 separatorToken!170))) (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))))) (and b!187814 b_free!7419 (= (toChars!1105 (transformation!575 (h!8542 rules!1920))) (toChars!1105 (transformation!575 (rule!1090 (h!8543 tokens!465)))))) b_lambda!4603)))

(declare-fun b_lambda!4605 () Bool)

(assert (= b_lambda!4559 (or b!187842 b_lambda!4605)))

(declare-fun bs!18742 () Bool)

(declare-fun d!47389 () Bool)

(assert (= bs!18742 (and d!47389 b!187842)))

(assert (=> bs!18742 (= (dynLambda!1315 lambda!5694 (h!8543 tokens!465)) (rulesProduceIndividualToken!210 thiss!17480 rules!1920 (h!8543 tokens!465)))))

(assert (=> bs!18742 m!192549))

(assert (=> d!47169 d!47389))

(check-sat (not b!187967) (not b!188176) (not bm!8706) (not b!188126) (not b!188290) (not b!188171) (not d!47199) (not d!47383) (not b!188390) (not b!188573) (not b!188690) (not d!47367) (not d!47219) (not b!187965) (not b!188512) (not b!188182) (not b!188376) (not b!188085) (not d!47377) (not b!188297) (not d!47375) (not b!188692) (not b!188543) (not bm!8635) (not b!188551) (not d!47353) (not bm!8714) (not d!47347) (not b!188506) (not b!188691) (not d!47335) (not d!47361) (not d!47209) (not d!47321) (not b!188396) (not bs!18742) (not b!188659) (not b!188668) (not b!188101) (not d!47281) (not b!188071) (not d!47357) (not d!47333) (not b!188606) (not b!188595) (not b!188399) (not b_next!7411) (not d!47177) (not b!188513) (not b!188394) (not tb!7749) (not d!47373) (not b!188178) (not b!188121) (not b!188181) (not b!188555) b_and!13027 (not d!47369) (not bm!8723) (not b!188127) (not b!188291) (not b!188072) (not d!47283) (not d!47287) (not b_next!7413) (not b!188172) (not b!188590) (not b!188397) (not b!188610) (not bm!8690) (not d!47217) b_and!12969 (not d!47189) (not b!188295) (not d!47131) (not b!188549) (not b!188100) b_and!13037 (not b_lambda!4605) (not b!188287) (not b!188509) (not b!187971) (not b!188017) (not d!47167) (not d!47359) (not b!188155) (not b!188069) (not b_next!7435) (not tb!7743) (not d!47205) (not b_lambda!4603) (not b!188511) (not bm!8708) (not d!47381) (not b!188568) (not b!187969) (not b_next!7431) (not b!188622) (not d!47197) (not d!47337) b_and!13033 (not b!188066) (not b!188373) (not b!188681) (not b_next!7409) (not b!188391) (not bm!8719) (not b!188666) (not d!47289) (not d!47221) (not b!188670) (not b!188648) (not d!47355) (not b!188685) (not b!188371) (not d!47371) b_and!12973 (not b!188389) (not b!188631) (not b!188158) (not b!188073) (not b!188183) (not b!188388) (not d!47363) (not d!47329) (not b!188184) (not b!188160) (not b!188067) b_and!13039 (not b!188563) (not b_lambda!4595) (not b!187968) (not b!188609) (not b!188587) b_and!13031 (not b!188682) (not b!188547) (not d!47341) (not b!188596) (not bm!8710) (not b!188505) (not b!188074) (not b!188649) (not d!47379) (not b!188395) (not b!188392) (not b!188070) (not b!188296) (not b!188621) (not d!47207) (not b_next!7433) (not b!188132) (not bm!8709) (not b_next!7417) (not bm!8704) (not d!47203) (not bm!8629) (not d!47135) (not bm!8713) (not b!188634) (not b!188617) (not bm!8721) (not d!47213) (not b!188669) (not b!188298) (not b!188603) (not b!188633) (not d!47365) (not b!188614) (not b!188591) (not b!188102) (not d!47175) (not b!188628) (not b!188175) (not b!188627) (not b!188581) (not b!188580) (not b!188599) (not b_lambda!4601) b_and!13035 (not b!188615) (not b!188369) (not b!188174) (not b!188507) (not b!188370) (not b!188398) b_and!13029 (not b!188565) (not b!188375) (not b_next!7429) (not b_next!7419) (not bm!8686) (not b_lambda!4597) (not b!188156) (not b!188089) b_and!12965 (not b!187970) (not bm!8718) (not b!188504) tp_is_empty!1695 (not bm!8716) (not d!47137) (not b!188688) (not b_next!7415) (not b!188604) (not b!188660) (not b!188544) (not b!188510) (not b!188600) (not b!188180) (not b!188586) (not b!188514) (not b!188629) (not d!47195) (not d!47331) (not b!187867) (not d!47169) (not b!188087) (not b!188159) (not b!188616) (not bm!8688) (not b!188683) (not b!188650) (not b_lambda!4599) (not b!187966))
(check-sat (not b_next!7411) b_and!12969 b_and!13037 (not b_next!7435) (not b_next!7409) b_and!12973 (not b_next!7433) (not b_next!7417) b_and!13035 b_and!13029 (not b_next!7415) (not b_next!7413) b_and!13027 b_and!13033 (not b_next!7431) b_and!13039 b_and!13031 (not b_next!7429) (not b_next!7419) b_and!12965)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22282 () Bool)

(assert start!22282)

(declare-fun b!207012 () Bool)

(declare-fun b_free!7985 () Bool)

(declare-fun b_next!7985 () Bool)

(assert (=> b!207012 (= b_free!7985 (not b_next!7985))))

(declare-fun tp!90840 () Bool)

(declare-fun b_and!14957 () Bool)

(assert (=> b!207012 (= tp!90840 b_and!14957)))

(declare-fun b_free!7987 () Bool)

(declare-fun b_next!7987 () Bool)

(assert (=> b!207012 (= b_free!7987 (not b_next!7987))))

(declare-fun tp!90829 () Bool)

(declare-fun b_and!14959 () Bool)

(assert (=> b!207012 (= tp!90829 b_and!14959)))

(declare-fun b!207034 () Bool)

(declare-fun b_free!7989 () Bool)

(declare-fun b_next!7989 () Bool)

(assert (=> b!207034 (= b_free!7989 (not b_next!7989))))

(declare-fun tp!90841 () Bool)

(declare-fun b_and!14961 () Bool)

(assert (=> b!207034 (= tp!90841 b_and!14961)))

(declare-fun b_free!7991 () Bool)

(declare-fun b_next!7991 () Bool)

(assert (=> b!207034 (= b_free!7991 (not b_next!7991))))

(declare-fun tp!90837 () Bool)

(declare-fun b_and!14963 () Bool)

(assert (=> b!207034 (= tp!90837 b_and!14963)))

(declare-fun b!207026 () Bool)

(declare-fun b_free!7993 () Bool)

(declare-fun b_next!7993 () Bool)

(assert (=> b!207026 (= b_free!7993 (not b_next!7993))))

(declare-fun tp!90833 () Bool)

(declare-fun b_and!14965 () Bool)

(assert (=> b!207026 (= tp!90833 b_and!14965)))

(declare-fun b_free!7995 () Bool)

(declare-fun b_next!7995 () Bool)

(assert (=> b!207026 (= b_free!7995 (not b_next!7995))))

(declare-fun tp!90832 () Bool)

(declare-fun b_and!14967 () Bool)

(assert (=> b!207026 (= tp!90832 b_and!14967)))

(declare-fun bs!21022 () Bool)

(declare-fun b!207022 () Bool)

(declare-fun b!207040 () Bool)

(assert (= bs!21022 (and b!207022 b!207040)))

(declare-fun lambda!6340 () Int)

(declare-fun lambda!6339 () Int)

(assert (=> bs!21022 (not (= lambda!6340 lambda!6339))))

(declare-fun b!207058 () Bool)

(declare-fun e!127485 () Bool)

(assert (=> b!207058 (= e!127485 true)))

(declare-fun b!207057 () Bool)

(declare-fun e!127484 () Bool)

(assert (=> b!207057 (= e!127484 e!127485)))

(declare-fun b!207056 () Bool)

(declare-fun e!127483 () Bool)

(assert (=> b!207056 (= e!127483 e!127484)))

(assert (=> b!207022 e!127483))

(assert (= b!207057 b!207058))

(assert (= b!207056 b!207057))

(declare-datatypes ((List!3309 0))(
  ( (Nil!3299) (Cons!3299 (h!8696 (_ BitVec 16)) (t!31045 List!3309)) )
))
(declare-datatypes ((TokenValue!633 0))(
  ( (FloatLiteralValue!1266 (text!4876 List!3309)) (TokenValueExt!632 (__x!2753 Int)) (Broken!3165 (value!21703 List!3309)) (Object!642) (End!633) (Def!633) (Underscore!633) (Match!633) (Else!633) (Error!633) (Case!633) (If!633) (Extends!633) (Abstract!633) (Class!633) (Val!633) (DelimiterValue!1266 (del!693 List!3309)) (KeywordValue!639 (value!21704 List!3309)) (CommentValue!1266 (value!21705 List!3309)) (WhitespaceValue!1266 (value!21706 List!3309)) (IndentationValue!633 (value!21707 List!3309)) (String!4244) (Int32!633) (Broken!3166 (value!21708 List!3309)) (Boolean!634) (Unit!3373) (OperatorValue!636 (op!693 List!3309)) (IdentifierValue!1266 (value!21709 List!3309)) (IdentifierValue!1267 (value!21710 List!3309)) (WhitespaceValue!1267 (value!21711 List!3309)) (True!1266) (False!1266) (Broken!3167 (value!21712 List!3309)) (Broken!3168 (value!21713 List!3309)) (True!1267) (RightBrace!633) (RightBracket!633) (Colon!633) (Null!633) (Comma!633) (LeftBracket!633) (False!1267) (LeftBrace!633) (ImaginaryLiteralValue!633 (text!4877 List!3309)) (StringLiteralValue!1899 (value!21714 List!3309)) (EOFValue!633 (value!21715 List!3309)) (IdentValue!633 (value!21716 List!3309)) (DelimiterValue!1267 (value!21717 List!3309)) (DedentValue!633 (value!21718 List!3309)) (NewLineValue!633 (value!21719 List!3309)) (IntegerValue!1899 (value!21720 (_ BitVec 32)) (text!4878 List!3309)) (IntegerValue!1900 (value!21721 Int) (text!4879 List!3309)) (Times!633) (Or!633) (Equal!633) (Minus!633) (Broken!3169 (value!21722 List!3309)) (And!633) (Div!633) (LessEqual!633) (Mod!633) (Concat!1468) (Not!633) (Plus!633) (SpaceValue!633 (value!21723 List!3309)) (IntegerValue!1901 (value!21724 Int) (text!4880 List!3309)) (StringLiteralValue!1900 (text!4881 List!3309)) (FloatLiteralValue!1267 (text!4882 List!3309)) (BytesLiteralValue!633 (value!21725 List!3309)) (CommentValue!1267 (value!21726 List!3309)) (StringLiteralValue!1901 (value!21727 List!3309)) (ErrorTokenValue!633 (msg!694 List!3309)) )
))
(declare-datatypes ((C!2592 0))(
  ( (C!2593 (val!1182 Int)) )
))
(declare-datatypes ((List!3310 0))(
  ( (Nil!3300) (Cons!3300 (h!8697 C!2592) (t!31046 List!3310)) )
))
(declare-datatypes ((IArray!2089 0))(
  ( (IArray!2090 (innerList!1102 List!3310)) )
))
(declare-datatypes ((Conc!1044 0))(
  ( (Node!1044 (left!2628 Conc!1044) (right!2958 Conc!1044) (csize!2318 Int) (cheight!1255 Int)) (Leaf!1689 (xs!3639 IArray!2089) (csize!2319 Int)) (Empty!1044) )
))
(declare-datatypes ((BalanceConc!2096 0))(
  ( (BalanceConc!2097 (c!39617 Conc!1044)) )
))
(declare-datatypes ((TokenValueInjection!1038 0))(
  ( (TokenValueInjection!1039 (toValue!1294 Int) (toChars!1153 Int)) )
))
(declare-datatypes ((String!4245 0))(
  ( (String!4246 (value!21728 String)) )
))
(declare-datatypes ((Regex!835 0))(
  ( (ElementMatch!835 (c!39618 C!2592)) (Concat!1469 (regOne!2182 Regex!835) (regTwo!2182 Regex!835)) (EmptyExpr!835) (Star!835 (reg!1164 Regex!835)) (EmptyLang!835) (Union!835 (regOne!2183 Regex!835) (regTwo!2183 Regex!835)) )
))
(declare-datatypes ((Rule!1022 0))(
  ( (Rule!1023 (regex!611 Regex!835) (tag!799 String!4245) (isSeparator!611 Bool) (transformation!611 TokenValueInjection!1038)) )
))
(declare-datatypes ((List!3311 0))(
  ( (Nil!3301) (Cons!3301 (h!8698 Rule!1022) (t!31047 List!3311)) )
))
(declare-fun rules!1920 () List!3311)

(get-info :version)

(assert (= (and b!207022 ((_ is Cons!3301) rules!1920)) b!207056))

(declare-fun order!2165 () Int)

(declare-fun order!2167 () Int)

(declare-fun dynLambda!1461 (Int Int) Int)

(declare-fun dynLambda!1462 (Int Int) Int)

(assert (=> b!207058 (< (dynLambda!1461 order!2165 (toValue!1294 (transformation!611 (h!8698 rules!1920)))) (dynLambda!1462 order!2167 lambda!6340))))

(declare-fun order!2169 () Int)

(declare-fun dynLambda!1463 (Int Int) Int)

(assert (=> b!207058 (< (dynLambda!1463 order!2169 (toChars!1153 (transformation!611 (h!8698 rules!1920)))) (dynLambda!1462 order!2167 lambda!6340))))

(assert (=> b!207022 true))

(declare-fun b!206999 () Bool)

(declare-fun e!127462 () Bool)

(declare-datatypes ((Token!966 0))(
  ( (Token!967 (value!21729 TokenValue!633) (rule!1138 Rule!1022) (size!2644 Int) (originalCharacters!654 List!3310)) )
))
(declare-datatypes ((List!3312 0))(
  ( (Nil!3302) (Cons!3302 (h!8699 Token!966) (t!31048 List!3312)) )
))
(declare-fun tokens!465 () List!3312)

(declare-fun lt!75147 () List!3310)

(declare-fun matchR!173 (Regex!835 List!3310) Bool)

(assert (=> b!206999 (= e!127462 (matchR!173 (regex!611 (rule!1138 (h!8699 tokens!465))) lt!75147))))

(declare-fun b!207000 () Bool)

(declare-fun res!95025 () Bool)

(declare-fun e!127469 () Bool)

(assert (=> b!207000 (=> (not res!95025) (not e!127469))))

(declare-datatypes ((IArray!2091 0))(
  ( (IArray!2092 (innerList!1103 List!3312)) )
))
(declare-datatypes ((Conc!1045 0))(
  ( (Node!1045 (left!2629 Conc!1045) (right!2959 Conc!1045) (csize!2320 Int) (cheight!1256 Int)) (Leaf!1690 (xs!3640 IArray!2091) (csize!2321 Int)) (Empty!1045) )
))
(declare-datatypes ((BalanceConc!2098 0))(
  ( (BalanceConc!2099 (c!39619 Conc!1045)) )
))
(declare-datatypes ((tuple2!3454 0))(
  ( (tuple2!3455 (_1!1943 BalanceConc!2098) (_2!1943 BalanceConc!2096)) )
))
(declare-fun lt!75125 () tuple2!3454)

(declare-fun lt!75138 () Token!966)

(declare-fun apply!546 (BalanceConc!2098 Int) Token!966)

(assert (=> b!207000 (= res!95025 (= (apply!546 (_1!1943 lt!75125) 0) lt!75138))))

(declare-fun b!207001 () Bool)

(declare-fun e!127466 () Bool)

(declare-fun e!127448 () Bool)

(assert (=> b!207001 (= e!127466 (not e!127448))))

(declare-fun res!95048 () Bool)

(assert (=> b!207001 (=> res!95048 e!127448)))

(declare-fun lt!75119 () BalanceConc!2098)

(declare-fun separatorToken!170 () Token!966)

(declare-fun lt!75141 () List!3310)

(declare-datatypes ((LexerInterface!497 0))(
  ( (LexerInterfaceExt!494 (__x!2754 Int)) (Lexer!495) )
))
(declare-fun thiss!17480 () LexerInterface!497)

(declare-fun list!1229 (BalanceConc!2096) List!3310)

(declare-fun printWithSeparatorTokenWhenNeededRec!180 (LexerInterface!497 List!3311 BalanceConc!2098 Token!966 Int) BalanceConc!2096)

(assert (=> b!207001 (= res!95048 (not (= lt!75141 (list!1229 (printWithSeparatorTokenWhenNeededRec!180 thiss!17480 rules!1920 lt!75119 separatorToken!170 0)))))))

(declare-fun seqFromList!599 (List!3312) BalanceConc!2098)

(assert (=> b!207001 (= lt!75119 (seqFromList!599 (t!31048 tokens!465)))))

(declare-fun lt!75131 () List!3310)

(declare-fun lt!75158 () List!3310)

(assert (=> b!207001 (= lt!75131 lt!75158)))

(declare-fun lt!75159 () List!3310)

(declare-fun ++!808 (List!3310 List!3310) List!3310)

(assert (=> b!207001 (= lt!75158 (++!808 lt!75147 lt!75159))))

(declare-fun lt!75115 () List!3310)

(assert (=> b!207001 (= lt!75131 (++!808 (++!808 lt!75147 lt!75115) lt!75141))))

(declare-datatypes ((Unit!3374 0))(
  ( (Unit!3375) )
))
(declare-fun lt!75136 () Unit!3374)

(declare-fun lemmaConcatAssociativity!306 (List!3310 List!3310 List!3310) Unit!3374)

(assert (=> b!207001 (= lt!75136 (lemmaConcatAssociativity!306 lt!75147 lt!75115 lt!75141))))

(declare-fun charsOf!266 (Token!966) BalanceConc!2096)

(assert (=> b!207001 (= lt!75147 (list!1229 (charsOf!266 (h!8699 tokens!465))))))

(assert (=> b!207001 (= lt!75159 (++!808 lt!75115 lt!75141))))

(declare-fun printWithSeparatorTokenWhenNeededList!190 (LexerInterface!497 List!3311 List!3312 Token!966) List!3310)

(assert (=> b!207001 (= lt!75141 (printWithSeparatorTokenWhenNeededList!190 thiss!17480 rules!1920 (t!31048 tokens!465) separatorToken!170))))

(assert (=> b!207001 (= lt!75115 (list!1229 (charsOf!266 separatorToken!170)))))

(declare-fun b!207003 () Bool)

(declare-fun e!127444 () Bool)

(declare-fun e!127447 () Bool)

(assert (=> b!207003 (= e!127444 e!127447)))

(declare-fun res!95020 () Bool)

(assert (=> b!207003 (=> res!95020 e!127447)))

(declare-fun rulesProduceEachTokenIndividually!289 (LexerInterface!497 List!3311 BalanceConc!2098) Bool)

(assert (=> b!207003 (= res!95020 (not (rulesProduceEachTokenIndividually!289 thiss!17480 rules!1920 lt!75119)))))

(declare-datatypes ((tuple2!3456 0))(
  ( (tuple2!3457 (_1!1944 Token!966) (_2!1944 List!3310)) )
))
(declare-datatypes ((Option!525 0))(
  ( (None!524) (Some!524 (v!14083 tuple2!3456)) )
))
(declare-fun lt!75161 () Option!525)

(assert (=> b!207003 (= lt!75161 (Some!524 (tuple2!3457 separatorToken!170 lt!75141)))))

(declare-fun lt!75154 () Unit!3374)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!2 (LexerInterface!497 List!3311 Token!966 Rule!1022 List!3310 Rule!1022) Unit!3374)

(assert (=> b!207003 (= lt!75154 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!2 thiss!17480 rules!1920 separatorToken!170 (rule!1138 separatorToken!170) lt!75141 (rule!1138 lt!75138)))))

(declare-fun lt!75156 () Unit!3374)

(declare-fun e!127470 () Unit!3374)

(assert (=> b!207003 (= lt!75156 e!127470)))

(declare-fun c!39616 () Bool)

(declare-fun lt!75127 () C!2592)

(declare-fun contains!556 (List!3310 C!2592) Bool)

(declare-fun usedCharacters!16 (Regex!835) List!3310)

(assert (=> b!207003 (= c!39616 (contains!556 (usedCharacters!16 (regex!611 (rule!1138 separatorToken!170))) lt!75127))))

(declare-fun head!717 (List!3310) C!2592)

(assert (=> b!207003 (= lt!75127 (head!717 lt!75141))))

(declare-fun lt!75153 () Unit!3374)

(declare-fun e!127461 () Unit!3374)

(assert (=> b!207003 (= lt!75153 e!127461)))

(declare-fun c!39615 () Bool)

(declare-fun lt!75114 () C!2592)

(assert (=> b!207003 (= c!39615 (not (contains!556 (usedCharacters!16 (regex!611 (rule!1138 lt!75138))) lt!75114)))))

(declare-fun lt!75128 () List!3310)

(assert (=> b!207003 (= lt!75114 (head!717 lt!75128))))

(declare-fun e!127460 () Bool)

(assert (=> b!207003 e!127460))

(declare-fun res!95041 () Bool)

(assert (=> b!207003 (=> (not res!95041) (not e!127460))))

(declare-datatypes ((Option!526 0))(
  ( (None!525) (Some!525 (v!14084 Rule!1022)) )
))
(declare-fun lt!75152 () Option!526)

(declare-fun isDefined!376 (Option!526) Bool)

(assert (=> b!207003 (= res!95041 (isDefined!376 lt!75152))))

(declare-fun getRuleFromTag!52 (LexerInterface!497 List!3311 String!4245) Option!526)

(assert (=> b!207003 (= lt!75152 (getRuleFromTag!52 thiss!17480 rules!1920 (tag!799 (rule!1138 lt!75138))))))

(declare-fun lt!75134 () Unit!3374)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!52 (LexerInterface!497 List!3311 List!3310 Token!966) Unit!3374)

(assert (=> b!207003 (= lt!75134 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!52 thiss!17480 rules!1920 lt!75128 lt!75138))))

(assert (=> b!207003 (= lt!75128 (list!1229 (charsOf!266 lt!75138)))))

(declare-fun lt!75126 () Unit!3374)

(declare-fun forallContained!178 (List!3312 Int Token!966) Unit!3374)

(assert (=> b!207003 (= lt!75126 (forallContained!178 tokens!465 lambda!6340 lt!75138))))

(assert (=> b!207003 e!127469))

(declare-fun res!95029 () Bool)

(assert (=> b!207003 (=> (not res!95029) (not e!127469))))

(declare-fun size!2645 (BalanceConc!2098) Int)

(assert (=> b!207003 (= res!95029 (= (size!2645 (_1!1943 lt!75125)) 1))))

(declare-fun lt!75146 () BalanceConc!2096)

(declare-fun lex!297 (LexerInterface!497 List!3311 BalanceConc!2096) tuple2!3454)

(assert (=> b!207003 (= lt!75125 (lex!297 thiss!17480 rules!1920 lt!75146))))

(declare-fun lt!75145 () BalanceConc!2098)

(declare-fun printTailRec!191 (LexerInterface!497 BalanceConc!2098 Int BalanceConc!2096) BalanceConc!2096)

(assert (=> b!207003 (= lt!75146 (printTailRec!191 thiss!17480 lt!75145 0 (BalanceConc!2097 Empty!1044)))))

(declare-fun print!228 (LexerInterface!497 BalanceConc!2098) BalanceConc!2096)

(assert (=> b!207003 (= lt!75146 (print!228 thiss!17480 lt!75145))))

(declare-fun singletonSeq!163 (Token!966) BalanceConc!2098)

(assert (=> b!207003 (= lt!75145 (singletonSeq!163 lt!75138))))

(declare-fun e!127443 () Bool)

(assert (=> b!207003 e!127443))

(declare-fun res!95051 () Bool)

(assert (=> b!207003 (=> (not res!95051) (not e!127443))))

(declare-fun lt!75122 () Option!526)

(assert (=> b!207003 (= res!95051 (isDefined!376 lt!75122))))

(assert (=> b!207003 (= lt!75122 (getRuleFromTag!52 thiss!17480 rules!1920 (tag!799 (rule!1138 separatorToken!170))))))

(declare-fun lt!75133 () Unit!3374)

(assert (=> b!207003 (= lt!75133 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!52 thiss!17480 rules!1920 lt!75115 separatorToken!170))))

(declare-fun e!127468 () Bool)

(assert (=> b!207003 e!127468))

(declare-fun res!95037 () Bool)

(assert (=> b!207003 (=> (not res!95037) (not e!127468))))

(declare-fun lt!75135 () tuple2!3454)

(assert (=> b!207003 (= res!95037 (= (size!2645 (_1!1943 lt!75135)) 1))))

(declare-fun lt!75120 () BalanceConc!2096)

(assert (=> b!207003 (= lt!75135 (lex!297 thiss!17480 rules!1920 lt!75120))))

(declare-fun lt!75116 () BalanceConc!2098)

(assert (=> b!207003 (= lt!75120 (printTailRec!191 thiss!17480 lt!75116 0 (BalanceConc!2097 Empty!1044)))))

(assert (=> b!207003 (= lt!75120 (print!228 thiss!17480 lt!75116))))

(assert (=> b!207003 (= lt!75116 (singletonSeq!163 separatorToken!170))))

(declare-fun rulesProduceIndividualToken!246 (LexerInterface!497 List!3311 Token!966) Bool)

(assert (=> b!207003 (rulesProduceIndividualToken!246 thiss!17480 rules!1920 lt!75138)))

(declare-fun lt!75121 () Unit!3374)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!64 (LexerInterface!497 List!3311 List!3312 Token!966) Unit!3374)

(assert (=> b!207003 (= lt!75121 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!64 thiss!17480 rules!1920 tokens!465 lt!75138))))

(declare-fun head!718 (List!3312) Token!966)

(assert (=> b!207003 (= lt!75138 (head!718 (t!31048 tokens!465)))))

(declare-fun lt!75118 () Unit!3374)

(declare-fun e!127442 () Unit!3374)

(assert (=> b!207003 (= lt!75118 e!127442)))

(declare-fun c!39614 () Bool)

(declare-fun isEmpty!1748 (List!3312) Bool)

(assert (=> b!207003 (= c!39614 (isEmpty!1748 (t!31048 tokens!465)))))

(declare-fun maxPrefix!227 (LexerInterface!497 List!3311 List!3310) Option!525)

(assert (=> b!207003 (= lt!75161 (maxPrefix!227 thiss!17480 rules!1920 lt!75159))))

(declare-fun lt!75124 () tuple2!3456)

(assert (=> b!207003 (= lt!75159 (_2!1944 lt!75124))))

(declare-fun lt!75160 () Unit!3374)

(declare-fun lt!75140 () List!3310)

(declare-fun lemmaSamePrefixThenSameSuffix!132 (List!3310 List!3310 List!3310 List!3310 List!3310) Unit!3374)

(assert (=> b!207003 (= lt!75160 (lemmaSamePrefixThenSameSuffix!132 lt!75147 lt!75159 lt!75147 (_2!1944 lt!75124) lt!75140))))

(declare-fun get!992 (Option!525) tuple2!3456)

(assert (=> b!207003 (= lt!75124 (get!992 (maxPrefix!227 thiss!17480 rules!1920 lt!75140)))))

(declare-fun isPrefix!307 (List!3310 List!3310) Bool)

(assert (=> b!207003 (isPrefix!307 lt!75147 lt!75158)))

(declare-fun lt!75137 () Unit!3374)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!202 (List!3310 List!3310) Unit!3374)

(assert (=> b!207003 (= lt!75137 (lemmaConcatTwoListThenFirstIsPrefix!202 lt!75147 lt!75159))))

(declare-fun e!127473 () Bool)

(assert (=> b!207003 e!127473))

(declare-fun res!95032 () Bool)

(assert (=> b!207003 (=> res!95032 e!127473)))

(assert (=> b!207003 (= res!95032 (isEmpty!1748 tokens!465))))

(declare-fun lt!75132 () Unit!3374)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!72 (LexerInterface!497 List!3311 List!3312 Token!966) Unit!3374)

(assert (=> b!207003 (= lt!75132 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!72 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!207004 () Bool)

(declare-fun e!127445 () Bool)

(declare-fun lt!75142 () Rule!1022)

(assert (=> b!207004 (= e!127445 (= (rule!1138 separatorToken!170) lt!75142))))

(declare-fun b!207005 () Bool)

(declare-fun e!127450 () Bool)

(assert (=> b!207005 (= e!127448 e!127450)))

(declare-fun res!95028 () Bool)

(assert (=> b!207005 (=> res!95028 e!127450)))

(declare-fun e!127465 () Bool)

(assert (=> b!207005 (= res!95028 e!127465)))

(declare-fun res!95026 () Bool)

(assert (=> b!207005 (=> (not res!95026) (not e!127465))))

(declare-fun lt!75129 () Bool)

(assert (=> b!207005 (= res!95026 (not lt!75129))))

(assert (=> b!207005 (= lt!75129 (= lt!75140 lt!75158))))

(declare-fun b!207006 () Bool)

(declare-fun res!95031 () Bool)

(assert (=> b!207006 (=> (not res!95031) (not e!127466))))

(declare-fun lt!75150 () List!3310)

(declare-fun seqFromList!600 (List!3310) BalanceConc!2096)

(assert (=> b!207006 (= res!95031 (= (list!1229 (seqFromList!600 lt!75140)) lt!75150))))

(declare-fun b!207007 () Bool)

(assert (=> b!207007 (= e!127465 (not (= lt!75140 (++!808 lt!75147 lt!75141))))))

(declare-fun b!207008 () Bool)

(declare-fun Unit!3376 () Unit!3374)

(assert (=> b!207008 (= e!127461 Unit!3376)))

(declare-fun lt!75130 () Unit!3374)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!10 (Regex!835 List!3310 C!2592) Unit!3374)

(assert (=> b!207008 (= lt!75130 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!10 (regex!611 (rule!1138 lt!75138)) lt!75128 lt!75114))))

(declare-fun res!95045 () Bool)

(assert (=> b!207008 (= res!95045 (not (matchR!173 (regex!611 (rule!1138 lt!75138)) lt!75128)))))

(declare-fun e!127440 () Bool)

(assert (=> b!207008 (=> (not res!95045) (not e!127440))))

(assert (=> b!207008 e!127440))

(declare-fun b!207009 () Bool)

(assert (=> b!207009 (= e!127440 false)))

(declare-fun b!207010 () Bool)

(declare-fun e!127441 () Bool)

(declare-fun e!127474 () Bool)

(declare-fun tp!90830 () Bool)

(assert (=> b!207010 (= e!127441 (and e!127474 tp!90830))))

(declare-fun b!207011 () Bool)

(declare-fun e!127451 () Bool)

(declare-fun lt!75162 () Option!525)

(assert (=> b!207011 (= e!127451 (= (_1!1944 (get!992 lt!75162)) (head!718 tokens!465)))))

(declare-fun e!127457 () Bool)

(assert (=> b!207012 (= e!127457 (and tp!90840 tp!90829))))

(declare-fun tp!90836 () Bool)

(declare-fun e!127439 () Bool)

(declare-fun e!127475 () Bool)

(declare-fun b!207013 () Bool)

(declare-fun inv!4138 (String!4245) Bool)

(declare-fun inv!4141 (TokenValueInjection!1038) Bool)

(assert (=> b!207013 (= e!127439 (and tp!90836 (inv!4138 (tag!799 (rule!1138 separatorToken!170))) (inv!4141 (transformation!611 (rule!1138 separatorToken!170))) e!127475))))

(declare-fun b!207014 () Bool)

(declare-fun res!95044 () Bool)

(declare-fun e!127463 () Bool)

(assert (=> b!207014 (=> (not res!95044) (not e!127463))))

(assert (=> b!207014 (= res!95044 (rulesProduceIndividualToken!246 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun tp!90838 () Bool)

(declare-fun e!127459 () Bool)

(declare-fun b!207002 () Bool)

(assert (=> b!207002 (= e!127459 (and tp!90838 (inv!4138 (tag!799 (rule!1138 (h!8699 tokens!465)))) (inv!4141 (transformation!611 (rule!1138 (h!8699 tokens!465)))) e!127457))))

(declare-fun res!95022 () Bool)

(declare-fun e!127454 () Bool)

(assert (=> start!22282 (=> (not res!95022) (not e!127454))))

(assert (=> start!22282 (= res!95022 ((_ is Lexer!495) thiss!17480))))

(assert (=> start!22282 e!127454))

(assert (=> start!22282 true))

(assert (=> start!22282 e!127441))

(declare-fun e!127452 () Bool)

(declare-fun inv!4142 (Token!966) Bool)

(assert (=> start!22282 (and (inv!4142 separatorToken!170) e!127452)))

(declare-fun e!127446 () Bool)

(assert (=> start!22282 e!127446))

(declare-fun b!207015 () Bool)

(declare-fun e!127464 () Bool)

(assert (=> b!207015 (= e!127460 e!127464)))

(declare-fun res!95036 () Bool)

(assert (=> b!207015 (=> (not res!95036) (not e!127464))))

(declare-fun lt!75157 () Rule!1022)

(assert (=> b!207015 (= res!95036 (matchR!173 (regex!611 lt!75157) lt!75128))))

(declare-fun get!993 (Option!526) Rule!1022)

(assert (=> b!207015 (= lt!75157 (get!993 lt!75152))))

(declare-fun b!207016 () Bool)

(declare-fun res!95035 () Bool)

(assert (=> b!207016 (=> (not res!95035) (not e!127463))))

(declare-fun sepAndNonSepRulesDisjointChars!200 (List!3311 List!3311) Bool)

(assert (=> b!207016 (= res!95035 (sepAndNonSepRulesDisjointChars!200 rules!1920 rules!1920))))

(declare-fun b!207017 () Bool)

(assert (=> b!207017 (= e!127463 e!127466)))

(declare-fun res!95047 () Bool)

(assert (=> b!207017 (=> (not res!95047) (not e!127466))))

(assert (=> b!207017 (= res!95047 (= lt!75140 lt!75150))))

(declare-fun lt!75144 () BalanceConc!2098)

(assert (=> b!207017 (= lt!75150 (list!1229 (printWithSeparatorTokenWhenNeededRec!180 thiss!17480 rules!1920 lt!75144 separatorToken!170 0)))))

(assert (=> b!207017 (= lt!75140 (printWithSeparatorTokenWhenNeededList!190 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!90839 () Bool)

(declare-fun e!127449 () Bool)

(declare-fun b!207018 () Bool)

(assert (=> b!207018 (= e!127446 (and (inv!4142 (h!8699 tokens!465)) e!127449 tp!90839))))

(declare-fun b!207019 () Bool)

(declare-fun Unit!3377 () Unit!3374)

(assert (=> b!207019 (= e!127442 Unit!3377)))

(assert (=> b!207019 false))

(declare-fun b!207020 () Bool)

(declare-fun Unit!3378 () Unit!3374)

(assert (=> b!207020 (= e!127461 Unit!3378)))

(declare-fun b!207021 () Bool)

(declare-fun isEmpty!1749 (BalanceConc!2096) Bool)

(assert (=> b!207021 (= e!127468 (isEmpty!1749 (_2!1943 lt!75135)))))

(declare-fun e!127456 () Bool)

(declare-fun e!127476 () Bool)

(assert (=> b!207022 (= e!127456 e!127476)))

(declare-fun res!95046 () Bool)

(assert (=> b!207022 (=> res!95046 e!127476)))

(declare-datatypes ((tuple2!3458 0))(
  ( (tuple2!3459 (_1!1945 Token!966) (_2!1945 BalanceConc!2096)) )
))
(declare-datatypes ((Option!527 0))(
  ( (None!526) (Some!526 (v!14085 tuple2!3458)) )
))
(declare-fun isDefined!377 (Option!527) Bool)

(declare-fun maxPrefixZipperSequence!190 (LexerInterface!497 List!3311 BalanceConc!2096) Option!527)

(assert (=> b!207022 (= res!95046 (not (isDefined!377 (maxPrefixZipperSequence!190 thiss!17480 rules!1920 (seqFromList!600 (originalCharacters!654 (h!8699 tokens!465)))))))))

(declare-fun lt!75151 () Unit!3374)

(assert (=> b!207022 (= lt!75151 (forallContained!178 tokens!465 lambda!6340 (h!8699 tokens!465)))))

(assert (=> b!207022 (= lt!75147 (originalCharacters!654 (h!8699 tokens!465)))))

(declare-fun b!207023 () Bool)

(assert (=> b!207023 (= e!127469 (isEmpty!1749 (_2!1943 lt!75125)))))

(declare-fun tp!90834 () Bool)

(declare-fun b!207024 () Bool)

(declare-fun inv!21 (TokenValue!633) Bool)

(assert (=> b!207024 (= e!127449 (and (inv!21 (value!21729 (h!8699 tokens!465))) e!127459 tp!90834))))

(declare-fun b!207025 () Bool)

(declare-fun res!95024 () Bool)

(assert (=> b!207025 (=> res!95024 e!127456)))

(declare-fun isEmpty!1750 (BalanceConc!2098) Bool)

(assert (=> b!207025 (= res!95024 (isEmpty!1750 (_1!1943 (lex!297 thiss!17480 rules!1920 (seqFromList!600 lt!75147)))))))

(assert (=> b!207026 (= e!127475 (and tp!90833 tp!90832))))

(declare-fun b!207027 () Bool)

(declare-fun res!95034 () Bool)

(assert (=> b!207027 (=> (not res!95034) (not e!127462))))

(declare-fun lt!75139 () tuple2!3456)

(declare-fun isEmpty!1751 (List!3310) Bool)

(assert (=> b!207027 (= res!95034 (isEmpty!1751 (_2!1944 lt!75139)))))

(declare-fun b!207028 () Bool)

(declare-fun res!95039 () Bool)

(assert (=> b!207028 (=> (not res!95039) (not e!127454))))

(declare-fun isEmpty!1752 (List!3311) Bool)

(assert (=> b!207028 (= res!95039 (not (isEmpty!1752 rules!1920)))))

(declare-fun b!207029 () Bool)

(declare-fun tp!90835 () Bool)

(assert (=> b!207029 (= e!127452 (and (inv!21 (value!21729 separatorToken!170)) e!127439 tp!90835))))

(declare-fun b!207030 () Bool)

(declare-fun res!95050 () Bool)

(assert (=> b!207030 (=> (not res!95050) (not e!127463))))

(assert (=> b!207030 (= res!95050 ((_ is Cons!3302) tokens!465))))

(declare-fun tp!90831 () Bool)

(declare-fun e!127471 () Bool)

(declare-fun b!207031 () Bool)

(assert (=> b!207031 (= e!127474 (and tp!90831 (inv!4138 (tag!799 (h!8698 rules!1920))) (inv!4141 (transformation!611 (h!8698 rules!1920))) e!127471))))

(declare-fun b!207032 () Bool)

(assert (=> b!207032 (= e!127443 e!127445)))

(declare-fun res!95033 () Bool)

(assert (=> b!207032 (=> (not res!95033) (not e!127445))))

(assert (=> b!207032 (= res!95033 (matchR!173 (regex!611 lt!75142) lt!75115))))

(assert (=> b!207032 (= lt!75142 (get!993 lt!75122))))

(declare-fun b!207033 () Bool)

(assert (=> b!207033 (= e!127476 e!127444)))

(declare-fun res!95043 () Bool)

(assert (=> b!207033 (=> res!95043 e!127444)))

(assert (=> b!207033 (= res!95043 (not lt!75129))))

(assert (=> b!207033 e!127462))

(declare-fun res!95021 () Bool)

(assert (=> b!207033 (=> (not res!95021) (not e!127462))))

(assert (=> b!207033 (= res!95021 (= (_1!1944 lt!75139) (h!8699 tokens!465)))))

(declare-fun lt!75149 () Option!525)

(assert (=> b!207033 (= lt!75139 (get!992 lt!75149))))

(declare-fun isDefined!378 (Option!525) Bool)

(assert (=> b!207033 (isDefined!378 lt!75149)))

(assert (=> b!207033 (= lt!75149 (maxPrefix!227 thiss!17480 rules!1920 lt!75147))))

(assert (=> b!207034 (= e!127471 (and tp!90841 tp!90837))))

(declare-fun b!207035 () Bool)

(assert (=> b!207035 (= e!127473 e!127451)))

(declare-fun res!95027 () Bool)

(assert (=> b!207035 (=> (not res!95027) (not e!127451))))

(assert (=> b!207035 (= res!95027 (isDefined!378 lt!75162))))

(assert (=> b!207035 (= lt!75162 (maxPrefix!227 thiss!17480 rules!1920 lt!75140))))

(declare-fun b!207036 () Bool)

(declare-fun res!95023 () Bool)

(assert (=> b!207036 (=> (not res!95023) (not e!127454))))

(declare-fun rulesInvariant!463 (LexerInterface!497 List!3311) Bool)

(assert (=> b!207036 (= res!95023 (rulesInvariant!463 thiss!17480 rules!1920))))

(declare-fun b!207037 () Bool)

(declare-fun Unit!3379 () Unit!3374)

(assert (=> b!207037 (= e!127470 Unit!3379)))

(declare-fun b!207038 () Bool)

(assert (=> b!207038 (= e!127447 true)))

(declare-fun b!207039 () Bool)

(declare-fun res!95038 () Bool)

(assert (=> b!207039 (=> (not res!95038) (not e!127463))))

(assert (=> b!207039 (= res!95038 (isSeparator!611 (rule!1138 separatorToken!170)))))

(declare-fun res!95049 () Bool)

(assert (=> b!207040 (=> (not res!95049) (not e!127463))))

(declare-fun forall!715 (List!3312 Int) Bool)

(assert (=> b!207040 (= res!95049 (forall!715 tokens!465 lambda!6339))))

(declare-fun b!207041 () Bool)

(declare-fun res!95042 () Bool)

(assert (=> b!207041 (=> res!95042 e!127456)))

(assert (=> b!207041 (= res!95042 (not (rulesProduceIndividualToken!246 thiss!17480 rules!1920 (h!8699 tokens!465))))))

(declare-fun b!207042 () Bool)

(declare-fun res!95040 () Bool)

(assert (=> b!207042 (=> (not res!95040) (not e!127468))))

(assert (=> b!207042 (= res!95040 (= (apply!546 (_1!1943 lt!75135) 0) separatorToken!170))))

(declare-fun b!207043 () Bool)

(declare-fun Unit!3380 () Unit!3374)

(assert (=> b!207043 (= e!127470 Unit!3380)))

(declare-fun lt!75143 () Unit!3374)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!4 (LexerInterface!497 List!3311 List!3311 Rule!1022 Rule!1022 C!2592) Unit!3374)

(assert (=> b!207043 (= lt!75143 (lemmaSepRuleNotContainsCharContainedInANonSepRule!4 thiss!17480 rules!1920 rules!1920 (rule!1138 lt!75138) (rule!1138 separatorToken!170) lt!75127))))

(assert (=> b!207043 false))

(declare-fun b!207044 () Bool)

(declare-fun Unit!3381 () Unit!3374)

(assert (=> b!207044 (= e!127442 Unit!3381)))

(declare-fun b!207045 () Bool)

(assert (=> b!207045 (= e!127450 e!127456)))

(declare-fun res!95019 () Bool)

(assert (=> b!207045 (=> res!95019 e!127456)))

(declare-fun lt!75117 () List!3310)

(declare-fun lt!75123 () List!3310)

(assert (=> b!207045 (= res!95019 (or (not (= lt!75117 lt!75123)) (not (= lt!75123 lt!75147)) (not (= lt!75117 lt!75147))))))

(declare-fun printList!181 (LexerInterface!497 List!3312) List!3310)

(assert (=> b!207045 (= lt!75123 (printList!181 thiss!17480 (Cons!3302 (h!8699 tokens!465) Nil!3302)))))

(declare-fun lt!75155 () BalanceConc!2096)

(assert (=> b!207045 (= lt!75117 (list!1229 lt!75155))))

(declare-fun lt!75148 () BalanceConc!2098)

(assert (=> b!207045 (= lt!75155 (printTailRec!191 thiss!17480 lt!75148 0 (BalanceConc!2097 Empty!1044)))))

(assert (=> b!207045 (= lt!75155 (print!228 thiss!17480 lt!75148))))

(assert (=> b!207045 (= lt!75148 (singletonSeq!163 (h!8699 tokens!465)))))

(declare-fun b!207046 () Bool)

(assert (=> b!207046 (= e!127454 e!127463)))

(declare-fun res!95030 () Bool)

(assert (=> b!207046 (=> (not res!95030) (not e!127463))))

(assert (=> b!207046 (= res!95030 (rulesProduceEachTokenIndividually!289 thiss!17480 rules!1920 lt!75144))))

(assert (=> b!207046 (= lt!75144 (seqFromList!599 tokens!465))))

(declare-fun b!207047 () Bool)

(assert (=> b!207047 (= e!127464 (= (rule!1138 lt!75138) lt!75157))))

(assert (= (and start!22282 res!95022) b!207028))

(assert (= (and b!207028 res!95039) b!207036))

(assert (= (and b!207036 res!95023) b!207046))

(assert (= (and b!207046 res!95030) b!207014))

(assert (= (and b!207014 res!95044) b!207039))

(assert (= (and b!207039 res!95038) b!207040))

(assert (= (and b!207040 res!95049) b!207016))

(assert (= (and b!207016 res!95035) b!207030))

(assert (= (and b!207030 res!95050) b!207017))

(assert (= (and b!207017 res!95047) b!207006))

(assert (= (and b!207006 res!95031) b!207001))

(assert (= (and b!207001 (not res!95048)) b!207005))

(assert (= (and b!207005 res!95026) b!207007))

(assert (= (and b!207005 (not res!95028)) b!207045))

(assert (= (and b!207045 (not res!95019)) b!207041))

(assert (= (and b!207041 (not res!95042)) b!207025))

(assert (= (and b!207025 (not res!95024)) b!207022))

(assert (= (and b!207022 (not res!95046)) b!207033))

(assert (= (and b!207033 res!95021) b!207027))

(assert (= (and b!207027 res!95034) b!206999))

(assert (= (and b!207033 (not res!95043)) b!207003))

(assert (= (and b!207003 (not res!95032)) b!207035))

(assert (= (and b!207035 res!95027) b!207011))

(assert (= (and b!207003 c!39614) b!207019))

(assert (= (and b!207003 (not c!39614)) b!207044))

(assert (= (and b!207003 res!95037) b!207042))

(assert (= (and b!207042 res!95040) b!207021))

(assert (= (and b!207003 res!95051) b!207032))

(assert (= (and b!207032 res!95033) b!207004))

(assert (= (and b!207003 res!95029) b!207000))

(assert (= (and b!207000 res!95025) b!207023))

(assert (= (and b!207003 res!95041) b!207015))

(assert (= (and b!207015 res!95036) b!207047))

(assert (= (and b!207003 c!39615) b!207008))

(assert (= (and b!207003 (not c!39615)) b!207020))

(assert (= (and b!207008 res!95045) b!207009))

(assert (= (and b!207003 c!39616) b!207043))

(assert (= (and b!207003 (not c!39616)) b!207037))

(assert (= (and b!207003 (not res!95020)) b!207038))

(assert (= b!207031 b!207034))

(assert (= b!207010 b!207031))

(assert (= (and start!22282 ((_ is Cons!3301) rules!1920)) b!207010))

(assert (= b!207013 b!207026))

(assert (= b!207029 b!207013))

(assert (= start!22282 b!207029))

(assert (= b!207002 b!207012))

(assert (= b!207024 b!207002))

(assert (= b!207018 b!207024))

(assert (= (and start!22282 ((_ is Cons!3302) tokens!465)) b!207018))

(declare-fun m!228425 () Bool)

(assert (=> b!207018 m!228425))

(declare-fun m!228427 () Bool)

(assert (=> b!207035 m!228427))

(declare-fun m!228429 () Bool)

(assert (=> b!207035 m!228429))

(declare-fun m!228431 () Bool)

(assert (=> b!207016 m!228431))

(declare-fun m!228433 () Bool)

(assert (=> b!207029 m!228433))

(declare-fun m!228435 () Bool)

(assert (=> b!207013 m!228435))

(declare-fun m!228437 () Bool)

(assert (=> b!207013 m!228437))

(declare-fun m!228439 () Bool)

(assert (=> b!207007 m!228439))

(declare-fun m!228441 () Bool)

(assert (=> b!207027 m!228441))

(declare-fun m!228443 () Bool)

(assert (=> b!207017 m!228443))

(assert (=> b!207017 m!228443))

(declare-fun m!228445 () Bool)

(assert (=> b!207017 m!228445))

(declare-fun m!228447 () Bool)

(assert (=> b!207017 m!228447))

(declare-fun m!228449 () Bool)

(assert (=> b!207041 m!228449))

(declare-fun m!228451 () Bool)

(assert (=> b!207006 m!228451))

(assert (=> b!207006 m!228451))

(declare-fun m!228453 () Bool)

(assert (=> b!207006 m!228453))

(declare-fun m!228455 () Bool)

(assert (=> b!207025 m!228455))

(assert (=> b!207025 m!228455))

(declare-fun m!228457 () Bool)

(assert (=> b!207025 m!228457))

(declare-fun m!228459 () Bool)

(assert (=> b!207025 m!228459))

(declare-fun m!228461 () Bool)

(assert (=> b!207028 m!228461))

(declare-fun m!228463 () Bool)

(assert (=> b!207032 m!228463))

(declare-fun m!228465 () Bool)

(assert (=> b!207032 m!228465))

(declare-fun m!228467 () Bool)

(assert (=> b!207046 m!228467))

(declare-fun m!228469 () Bool)

(assert (=> b!207046 m!228469))

(declare-fun m!228471 () Bool)

(assert (=> b!207014 m!228471))

(declare-fun m!228473 () Bool)

(assert (=> b!207002 m!228473))

(declare-fun m!228475 () Bool)

(assert (=> b!207002 m!228475))

(declare-fun m!228477 () Bool)

(assert (=> b!207008 m!228477))

(declare-fun m!228479 () Bool)

(assert (=> b!207008 m!228479))

(declare-fun m!228481 () Bool)

(assert (=> b!207023 m!228481))

(declare-fun m!228483 () Bool)

(assert (=> b!207031 m!228483))

(declare-fun m!228485 () Bool)

(assert (=> b!207031 m!228485))

(declare-fun m!228487 () Bool)

(assert (=> b!206999 m!228487))

(declare-fun m!228489 () Bool)

(assert (=> b!207043 m!228489))

(declare-fun m!228491 () Bool)

(assert (=> b!207015 m!228491))

(declare-fun m!228493 () Bool)

(assert (=> b!207015 m!228493))

(declare-fun m!228495 () Bool)

(assert (=> start!22282 m!228495))

(declare-fun m!228497 () Bool)

(assert (=> b!207040 m!228497))

(declare-fun m!228499 () Bool)

(assert (=> b!207045 m!228499))

(declare-fun m!228501 () Bool)

(assert (=> b!207045 m!228501))

(declare-fun m!228503 () Bool)

(assert (=> b!207045 m!228503))

(declare-fun m!228505 () Bool)

(assert (=> b!207045 m!228505))

(declare-fun m!228507 () Bool)

(assert (=> b!207045 m!228507))

(declare-fun m!228509 () Bool)

(assert (=> b!207003 m!228509))

(declare-fun m!228511 () Bool)

(assert (=> b!207003 m!228511))

(declare-fun m!228513 () Bool)

(assert (=> b!207003 m!228513))

(declare-fun m!228515 () Bool)

(assert (=> b!207003 m!228515))

(declare-fun m!228517 () Bool)

(assert (=> b!207003 m!228517))

(declare-fun m!228519 () Bool)

(assert (=> b!207003 m!228519))

(declare-fun m!228521 () Bool)

(assert (=> b!207003 m!228521))

(declare-fun m!228523 () Bool)

(assert (=> b!207003 m!228523))

(declare-fun m!228525 () Bool)

(assert (=> b!207003 m!228525))

(declare-fun m!228527 () Bool)

(assert (=> b!207003 m!228527))

(assert (=> b!207003 m!228521))

(declare-fun m!228529 () Bool)

(assert (=> b!207003 m!228529))

(declare-fun m!228531 () Bool)

(assert (=> b!207003 m!228531))

(declare-fun m!228533 () Bool)

(assert (=> b!207003 m!228533))

(declare-fun m!228535 () Bool)

(assert (=> b!207003 m!228535))

(declare-fun m!228537 () Bool)

(assert (=> b!207003 m!228537))

(declare-fun m!228539 () Bool)

(assert (=> b!207003 m!228539))

(declare-fun m!228541 () Bool)

(assert (=> b!207003 m!228541))

(declare-fun m!228543 () Bool)

(assert (=> b!207003 m!228543))

(assert (=> b!207003 m!228429))

(declare-fun m!228545 () Bool)

(assert (=> b!207003 m!228545))

(declare-fun m!228547 () Bool)

(assert (=> b!207003 m!228547))

(declare-fun m!228549 () Bool)

(assert (=> b!207003 m!228549))

(declare-fun m!228551 () Bool)

(assert (=> b!207003 m!228551))

(declare-fun m!228553 () Bool)

(assert (=> b!207003 m!228553))

(declare-fun m!228555 () Bool)

(assert (=> b!207003 m!228555))

(declare-fun m!228557 () Bool)

(assert (=> b!207003 m!228557))

(declare-fun m!228559 () Bool)

(assert (=> b!207003 m!228559))

(declare-fun m!228561 () Bool)

(assert (=> b!207003 m!228561))

(declare-fun m!228563 () Bool)

(assert (=> b!207003 m!228563))

(assert (=> b!207003 m!228429))

(declare-fun m!228565 () Bool)

(assert (=> b!207003 m!228565))

(declare-fun m!228567 () Bool)

(assert (=> b!207003 m!228567))

(declare-fun m!228569 () Bool)

(assert (=> b!207003 m!228569))

(declare-fun m!228571 () Bool)

(assert (=> b!207003 m!228571))

(declare-fun m!228573 () Bool)

(assert (=> b!207003 m!228573))

(declare-fun m!228575 () Bool)

(assert (=> b!207003 m!228575))

(assert (=> b!207003 m!228509))

(declare-fun m!228577 () Bool)

(assert (=> b!207003 m!228577))

(assert (=> b!207003 m!228519))

(declare-fun m!228579 () Bool)

(assert (=> b!207003 m!228579))

(declare-fun m!228581 () Bool)

(assert (=> b!207003 m!228581))

(declare-fun m!228583 () Bool)

(assert (=> b!207003 m!228583))

(declare-fun m!228585 () Bool)

(assert (=> b!207024 m!228585))

(declare-fun m!228587 () Bool)

(assert (=> b!207033 m!228587))

(declare-fun m!228589 () Bool)

(assert (=> b!207033 m!228589))

(declare-fun m!228591 () Bool)

(assert (=> b!207033 m!228591))

(declare-fun m!228593 () Bool)

(assert (=> b!207036 m!228593))

(declare-fun m!228595 () Bool)

(assert (=> b!207021 m!228595))

(declare-fun m!228597 () Bool)

(assert (=> b!207000 m!228597))

(declare-fun m!228599 () Bool)

(assert (=> b!207042 m!228599))

(declare-fun m!228601 () Bool)

(assert (=> b!207001 m!228601))

(declare-fun m!228603 () Bool)

(assert (=> b!207001 m!228603))

(declare-fun m!228605 () Bool)

(assert (=> b!207001 m!228605))

(declare-fun m!228607 () Bool)

(assert (=> b!207001 m!228607))

(declare-fun m!228609 () Bool)

(assert (=> b!207001 m!228609))

(declare-fun m!228611 () Bool)

(assert (=> b!207001 m!228611))

(declare-fun m!228613 () Bool)

(assert (=> b!207001 m!228613))

(assert (=> b!207001 m!228607))

(declare-fun m!228615 () Bool)

(assert (=> b!207001 m!228615))

(assert (=> b!207001 m!228611))

(declare-fun m!228617 () Bool)

(assert (=> b!207001 m!228617))

(declare-fun m!228619 () Bool)

(assert (=> b!207001 m!228619))

(declare-fun m!228621 () Bool)

(assert (=> b!207001 m!228621))

(declare-fun m!228623 () Bool)

(assert (=> b!207001 m!228623))

(assert (=> b!207001 m!228601))

(assert (=> b!207001 m!228605))

(declare-fun m!228625 () Bool)

(assert (=> b!207001 m!228625))

(declare-fun m!228627 () Bool)

(assert (=> b!207022 m!228627))

(assert (=> b!207022 m!228627))

(declare-fun m!228629 () Bool)

(assert (=> b!207022 m!228629))

(assert (=> b!207022 m!228629))

(declare-fun m!228631 () Bool)

(assert (=> b!207022 m!228631))

(declare-fun m!228633 () Bool)

(assert (=> b!207022 m!228633))

(declare-fun m!228635 () Bool)

(assert (=> b!207011 m!228635))

(declare-fun m!228637 () Bool)

(assert (=> b!207011 m!228637))

(check-sat (not b!207018) (not b!207027) (not b_next!7987) b_and!14965 (not b!207007) (not b_next!7989) (not b!207023) (not b!207013) (not b!207043) b_and!14959 (not b!207032) (not b!207042) (not b!207015) (not b!207006) b_and!14957 (not b!207028) b_and!14963 (not b!206999) (not b!207008) (not b!207000) (not start!22282) (not b!207003) (not b!207010) b_and!14961 b_and!14967 (not b!207002) (not b_next!7991) (not b!207056) (not b!207017) (not b!207045) (not b!207029) (not b!207022) (not b!207031) (not b!207001) (not b!207035) (not b!207016) (not b_next!7995) (not b_next!7985) (not b!207024) (not b!207014) (not b!207036) (not b!207033) (not b!207041) (not b!207046) (not b!207040) (not b!207021) (not b!207025) (not b!207011) (not b_next!7993))
(check-sat b_and!14957 b_and!14963 (not b_next!7987) b_and!14965 (not b_next!7989) (not b_next!7991) b_and!14959 (not b_next!7993) b_and!14961 b_and!14967 (not b_next!7995) (not b_next!7985))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23018 () Bool)

(assert start!23018)

(declare-fun b!214578 () Bool)

(declare-fun b_free!8201 () Bool)

(declare-fun b_next!8201 () Bool)

(assert (=> b!214578 (= b_free!8201 (not b_next!8201))))

(declare-fun tp!91875 () Bool)

(declare-fun b_and!15653 () Bool)

(assert (=> b!214578 (= tp!91875 b_and!15653)))

(declare-fun b_free!8203 () Bool)

(declare-fun b_next!8203 () Bool)

(assert (=> b!214578 (= b_free!8203 (not b_next!8203))))

(declare-fun tp!91879 () Bool)

(declare-fun b_and!15655 () Bool)

(assert (=> b!214578 (= tp!91879 b_and!15655)))

(declare-fun b!214614 () Bool)

(declare-fun b_free!8205 () Bool)

(declare-fun b_next!8205 () Bool)

(assert (=> b!214614 (= b_free!8205 (not b_next!8205))))

(declare-fun tp!91878 () Bool)

(declare-fun b_and!15657 () Bool)

(assert (=> b!214614 (= tp!91878 b_and!15657)))

(declare-fun b_free!8207 () Bool)

(declare-fun b_next!8207 () Bool)

(assert (=> b!214614 (= b_free!8207 (not b_next!8207))))

(declare-fun tp!91871 () Bool)

(declare-fun b_and!15659 () Bool)

(assert (=> b!214614 (= tp!91871 b_and!15659)))

(declare-fun b!214621 () Bool)

(declare-fun b_free!8209 () Bool)

(declare-fun b_next!8209 () Bool)

(assert (=> b!214621 (= b_free!8209 (not b_next!8209))))

(declare-fun tp!91873 () Bool)

(declare-fun b_and!15661 () Bool)

(assert (=> b!214621 (= tp!91873 b_and!15661)))

(declare-fun b_free!8211 () Bool)

(declare-fun b_next!8211 () Bool)

(assert (=> b!214621 (= b_free!8211 (not b_next!8211))))

(declare-fun tp!91881 () Bool)

(declare-fun b_and!15663 () Bool)

(assert (=> b!214621 (= tp!91881 b_and!15663)))

(declare-fun bs!22148 () Bool)

(declare-fun b!214620 () Bool)

(declare-fun b!214610 () Bool)

(assert (= bs!22148 (and b!214620 b!214610)))

(declare-fun lambda!6636 () Int)

(declare-fun lambda!6635 () Int)

(assert (=> bs!22148 (not (= lambda!6636 lambda!6635))))

(declare-fun b!214634 () Bool)

(declare-fun e!132390 () Bool)

(assert (=> b!214634 (= e!132390 true)))

(declare-fun b!214633 () Bool)

(declare-fun e!132389 () Bool)

(assert (=> b!214633 (= e!132389 e!132390)))

(declare-fun b!214632 () Bool)

(declare-fun e!132388 () Bool)

(assert (=> b!214632 (= e!132388 e!132389)))

(assert (=> b!214620 e!132388))

(assert (= b!214633 b!214634))

(assert (= b!214632 b!214633))

(declare-datatypes ((List!3369 0))(
  ( (Nil!3359) (Cons!3359 (h!8756 (_ BitVec 16)) (t!31855 List!3369)) )
))
(declare-datatypes ((TokenValue!647 0))(
  ( (FloatLiteralValue!1294 (text!4974 List!3369)) (TokenValueExt!646 (__x!2781 Int)) (Broken!3235 (value!22102 List!3369)) (Object!656) (End!647) (Def!647) (Underscore!647) (Match!647) (Else!647) (Error!647) (Case!647) (If!647) (Extends!647) (Abstract!647) (Class!647) (Val!647) (DelimiterValue!1294 (del!707 List!3369)) (KeywordValue!653 (value!22103 List!3369)) (CommentValue!1294 (value!22104 List!3369)) (WhitespaceValue!1294 (value!22105 List!3369)) (IndentationValue!647 (value!22106 List!3369)) (String!4314) (Int32!647) (Broken!3236 (value!22107 List!3369)) (Boolean!648) (Unit!3587) (OperatorValue!650 (op!707 List!3369)) (IdentifierValue!1294 (value!22108 List!3369)) (IdentifierValue!1295 (value!22109 List!3369)) (WhitespaceValue!1295 (value!22110 List!3369)) (True!1294) (False!1294) (Broken!3237 (value!22111 List!3369)) (Broken!3238 (value!22112 List!3369)) (True!1295) (RightBrace!647) (RightBracket!647) (Colon!647) (Null!647) (Comma!647) (LeftBracket!647) (False!1295) (LeftBrace!647) (ImaginaryLiteralValue!647 (text!4975 List!3369)) (StringLiteralValue!1941 (value!22113 List!3369)) (EOFValue!647 (value!22114 List!3369)) (IdentValue!647 (value!22115 List!3369)) (DelimiterValue!1295 (value!22116 List!3369)) (DedentValue!647 (value!22117 List!3369)) (NewLineValue!647 (value!22118 List!3369)) (IntegerValue!1941 (value!22119 (_ BitVec 32)) (text!4976 List!3369)) (IntegerValue!1942 (value!22120 Int) (text!4977 List!3369)) (Times!647) (Or!647) (Equal!647) (Minus!647) (Broken!3239 (value!22121 List!3369)) (And!647) (Div!647) (LessEqual!647) (Mod!647) (Concat!1496) (Not!647) (Plus!647) (SpaceValue!647 (value!22122 List!3369)) (IntegerValue!1943 (value!22123 Int) (text!4978 List!3369)) (StringLiteralValue!1942 (text!4979 List!3369)) (FloatLiteralValue!1295 (text!4980 List!3369)) (BytesLiteralValue!647 (value!22124 List!3369)) (CommentValue!1295 (value!22125 List!3369)) (StringLiteralValue!1943 (value!22126 List!3369)) (ErrorTokenValue!647 (msg!708 List!3369)) )
))
(declare-datatypes ((C!2620 0))(
  ( (C!2621 (val!1196 Int)) )
))
(declare-datatypes ((List!3370 0))(
  ( (Nil!3360) (Cons!3360 (h!8757 C!2620) (t!31856 List!3370)) )
))
(declare-datatypes ((IArray!2145 0))(
  ( (IArray!2146 (innerList!1130 List!3370)) )
))
(declare-datatypes ((Conc!1072 0))(
  ( (Node!1072 (left!2691 Conc!1072) (right!3021 Conc!1072) (csize!2374 Int) (cheight!1283 Int)) (Leaf!1724 (xs!3667 IArray!2145) (csize!2375 Int)) (Empty!1072) )
))
(declare-datatypes ((BalanceConc!2152 0))(
  ( (BalanceConc!2153 (c!41054 Conc!1072)) )
))
(declare-datatypes ((TokenValueInjection!1066 0))(
  ( (TokenValueInjection!1067 (toValue!1312 Int) (toChars!1171 Int)) )
))
(declare-datatypes ((String!4315 0))(
  ( (String!4316 (value!22127 String)) )
))
(declare-datatypes ((Regex!849 0))(
  ( (ElementMatch!849 (c!41055 C!2620)) (Concat!1497 (regOne!2210 Regex!849) (regTwo!2210 Regex!849)) (EmptyExpr!849) (Star!849 (reg!1178 Regex!849)) (EmptyLang!849) (Union!849 (regOne!2211 Regex!849) (regTwo!2211 Regex!849)) )
))
(declare-datatypes ((Rule!1050 0))(
  ( (Rule!1051 (regex!625 Regex!849) (tag!817 String!4315) (isSeparator!625 Bool) (transformation!625 TokenValueInjection!1066)) )
))
(declare-datatypes ((List!3371 0))(
  ( (Nil!3361) (Cons!3361 (h!8758 Rule!1050) (t!31857 List!3371)) )
))
(declare-fun rules!1920 () List!3371)

(get-info :version)

(assert (= (and b!214620 ((_ is Cons!3361) rules!1920)) b!214632))

(declare-fun order!2257 () Int)

(declare-fun order!2259 () Int)

(declare-fun dynLambda!1517 (Int Int) Int)

(declare-fun dynLambda!1518 (Int Int) Int)

(assert (=> b!214634 (< (dynLambda!1517 order!2257 (toValue!1312 (transformation!625 (h!8758 rules!1920)))) (dynLambda!1518 order!2259 lambda!6636))))

(declare-fun order!2261 () Int)

(declare-fun dynLambda!1519 (Int Int) Int)

(assert (=> b!214634 (< (dynLambda!1519 order!2261 (toChars!1171 (transformation!625 (h!8758 rules!1920)))) (dynLambda!1518 order!2259 lambda!6636))))

(assert (=> b!214620 true))

(declare-fun b!214575 () Bool)

(declare-fun e!132357 () Bool)

(declare-fun e!132381 () Bool)

(assert (=> b!214575 (= e!132357 e!132381)))

(declare-fun res!98666 () Bool)

(assert (=> b!214575 (=> res!98666 e!132381)))

(declare-datatypes ((Token!994 0))(
  ( (Token!995 (value!22128 TokenValue!647) (rule!1162 Rule!1050) (size!2690 Int) (originalCharacters!668 List!3370)) )
))
(declare-datatypes ((List!3372 0))(
  ( (Nil!3362) (Cons!3362 (h!8759 Token!994) (t!31858 List!3372)) )
))
(declare-datatypes ((IArray!2147 0))(
  ( (IArray!2148 (innerList!1131 List!3372)) )
))
(declare-datatypes ((Conc!1073 0))(
  ( (Node!1073 (left!2692 Conc!1073) (right!3022 Conc!1073) (csize!2376 Int) (cheight!1284 Int)) (Leaf!1725 (xs!3668 IArray!2147) (csize!2377 Int)) (Empty!1073) )
))
(declare-datatypes ((BalanceConc!2154 0))(
  ( (BalanceConc!2155 (c!41056 Conc!1073)) )
))
(declare-fun lt!80095 () BalanceConc!2154)

(declare-fun size!2691 (BalanceConc!2154) Int)

(assert (=> b!214575 (= res!98666 (> 0 (size!2691 lt!80095)))))

(declare-fun tokens!465 () List!3372)

(declare-datatypes ((LexerInterface!511 0))(
  ( (LexerInterfaceExt!508 (__x!2782 Int)) (Lexer!509) )
))
(declare-fun thiss!17480 () LexerInterface!511)

(declare-fun lt!80089 () BalanceConc!2152)

(declare-fun filter!19 (List!3372 Int) List!3372)

(declare-fun list!1264 (BalanceConc!2154) List!3372)

(declare-datatypes ((tuple2!3554 0))(
  ( (tuple2!3555 (_1!1993 BalanceConc!2154) (_2!1993 BalanceConc!2152)) )
))
(declare-fun lex!311 (LexerInterface!511 List!3371 BalanceConc!2152) tuple2!3554)

(assert (=> b!214575 (= (filter!19 (list!1264 (_1!1993 (lex!311 thiss!17480 rules!1920 lt!80089))) lambda!6635) (t!31858 tokens!465))))

(declare-fun separatorToken!170 () Token!994)

(declare-datatypes ((Unit!3588 0))(
  ( (Unit!3589) )
))
(declare-fun lt!80094 () Unit!3588)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!10 (LexerInterface!511 List!3371 List!3372 Token!994) Unit!3588)

(assert (=> b!214575 (= lt!80094 (theoremInvertabilityFromTokensSepTokenWhenNeeded!10 thiss!17480 rules!1920 (t!31858 tokens!465) separatorToken!170))))

(declare-datatypes ((tuple2!3556 0))(
  ( (tuple2!3557 (_1!1994 Token!994) (_2!1994 List!3370)) )
))
(declare-datatypes ((Option!567 0))(
  ( (None!566) (Some!566 (v!14169 tuple2!3556)) )
))
(declare-fun lt!80097 () Option!567)

(declare-fun lt!80085 () List!3370)

(assert (=> b!214575 (= lt!80097 (Some!566 (tuple2!3557 separatorToken!170 lt!80085)))))

(declare-fun lt!80098 () Unit!3588)

(declare-fun lt!80126 () Token!994)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!16 (LexerInterface!511 List!3371 Token!994 Rule!1050 List!3370 Rule!1050) Unit!3588)

(assert (=> b!214575 (= lt!80098 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!16 thiss!17480 rules!1920 separatorToken!170 (rule!1162 separatorToken!170) lt!80085 (rule!1162 lt!80126)))))

(declare-fun lt!80082 () Unit!3588)

(declare-fun e!132358 () Unit!3588)

(assert (=> b!214575 (= lt!80082 e!132358)))

(declare-fun c!41052 () Bool)

(declare-fun lt!80090 () C!2620)

(declare-fun contains!580 (List!3370 C!2620) Bool)

(declare-fun usedCharacters!30 (Regex!849) List!3370)

(assert (=> b!214575 (= c!41052 (contains!580 (usedCharacters!30 (regex!625 (rule!1162 separatorToken!170))) lt!80090))))

(declare-fun head!745 (List!3370) C!2620)

(assert (=> b!214575 (= lt!80090 (head!745 lt!80085))))

(declare-fun lt!80100 () Unit!3588)

(declare-fun e!132347 () Unit!3588)

(assert (=> b!214575 (= lt!80100 e!132347)))

(declare-fun c!41051 () Bool)

(declare-fun lt!80111 () C!2620)

(assert (=> b!214575 (= c!41051 (not (contains!580 (usedCharacters!30 (regex!625 (rule!1162 lt!80126))) lt!80111)))))

(declare-fun lt!80080 () List!3370)

(assert (=> b!214575 (= lt!80111 (head!745 lt!80080))))

(declare-fun e!132350 () Bool)

(assert (=> b!214575 e!132350))

(declare-fun res!98663 () Bool)

(assert (=> b!214575 (=> (not res!98663) (not e!132350))))

(declare-datatypes ((Option!568 0))(
  ( (None!567) (Some!567 (v!14170 Rule!1050)) )
))
(declare-fun lt!80119 () Option!568)

(declare-fun isDefined!418 (Option!568) Bool)

(assert (=> b!214575 (= res!98663 (isDefined!418 lt!80119))))

(declare-fun getRuleFromTag!66 (LexerInterface!511 List!3371 String!4315) Option!568)

(assert (=> b!214575 (= lt!80119 (getRuleFromTag!66 thiss!17480 rules!1920 (tag!817 (rule!1162 lt!80126))))))

(declare-fun lt!80125 () Unit!3588)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!66 (LexerInterface!511 List!3371 List!3370 Token!994) Unit!3588)

(assert (=> b!214575 (= lt!80125 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!66 thiss!17480 rules!1920 lt!80080 lt!80126))))

(declare-fun list!1265 (BalanceConc!2152) List!3370)

(declare-fun charsOf!280 (Token!994) BalanceConc!2152)

(assert (=> b!214575 (= lt!80080 (list!1265 (charsOf!280 lt!80126)))))

(declare-fun lt!80103 () Unit!3588)

(declare-fun forallContained!192 (List!3372 Int Token!994) Unit!3588)

(assert (=> b!214575 (= lt!80103 (forallContained!192 tokens!465 lambda!6636 lt!80126))))

(declare-fun e!132367 () Bool)

(assert (=> b!214575 e!132367))

(declare-fun res!98681 () Bool)

(assert (=> b!214575 (=> (not res!98681) (not e!132367))))

(declare-fun lt!80087 () tuple2!3554)

(assert (=> b!214575 (= res!98681 (= (size!2691 (_1!1993 lt!80087)) 1))))

(declare-fun lt!80130 () BalanceConc!2152)

(assert (=> b!214575 (= lt!80087 (lex!311 thiss!17480 rules!1920 lt!80130))))

(declare-fun lt!80101 () BalanceConc!2154)

(declare-fun printTailRec!205 (LexerInterface!511 BalanceConc!2154 Int BalanceConc!2152) BalanceConc!2152)

(assert (=> b!214575 (= lt!80130 (printTailRec!205 thiss!17480 lt!80101 0 (BalanceConc!2153 Empty!1072)))))

(declare-fun print!242 (LexerInterface!511 BalanceConc!2154) BalanceConc!2152)

(assert (=> b!214575 (= lt!80130 (print!242 thiss!17480 lt!80101))))

(declare-fun singletonSeq!177 (Token!994) BalanceConc!2154)

(assert (=> b!214575 (= lt!80101 (singletonSeq!177 lt!80126))))

(declare-fun e!132373 () Bool)

(assert (=> b!214575 e!132373))

(declare-fun res!98670 () Bool)

(assert (=> b!214575 (=> (not res!98670) (not e!132373))))

(declare-fun lt!80109 () Option!568)

(assert (=> b!214575 (= res!98670 (isDefined!418 lt!80109))))

(assert (=> b!214575 (= lt!80109 (getRuleFromTag!66 thiss!17480 rules!1920 (tag!817 (rule!1162 separatorToken!170))))))

(declare-fun lt!80128 () List!3370)

(declare-fun lt!80102 () Unit!3588)

(assert (=> b!214575 (= lt!80102 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!66 thiss!17480 rules!1920 lt!80128 separatorToken!170))))

(declare-fun e!132351 () Bool)

(assert (=> b!214575 e!132351))

(declare-fun res!98668 () Bool)

(assert (=> b!214575 (=> (not res!98668) (not e!132351))))

(declare-fun lt!80113 () tuple2!3554)

(assert (=> b!214575 (= res!98668 (= (size!2691 (_1!1993 lt!80113)) 1))))

(declare-fun lt!80083 () BalanceConc!2152)

(assert (=> b!214575 (= lt!80113 (lex!311 thiss!17480 rules!1920 lt!80083))))

(declare-fun lt!80108 () BalanceConc!2154)

(assert (=> b!214575 (= lt!80083 (printTailRec!205 thiss!17480 lt!80108 0 (BalanceConc!2153 Empty!1072)))))

(assert (=> b!214575 (= lt!80083 (print!242 thiss!17480 lt!80108))))

(assert (=> b!214575 (= lt!80108 (singletonSeq!177 separatorToken!170))))

(declare-fun rulesProduceIndividualToken!260 (LexerInterface!511 List!3371 Token!994) Bool)

(assert (=> b!214575 (rulesProduceIndividualToken!260 thiss!17480 rules!1920 lt!80126)))

(declare-fun lt!80081 () Unit!3588)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!78 (LexerInterface!511 List!3371 List!3372 Token!994) Unit!3588)

(assert (=> b!214575 (= lt!80081 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!78 thiss!17480 rules!1920 tokens!465 lt!80126))))

(declare-fun head!746 (List!3372) Token!994)

(assert (=> b!214575 (= lt!80126 (head!746 (t!31858 tokens!465)))))

(declare-fun lt!80088 () Unit!3588)

(declare-fun e!132344 () Unit!3588)

(assert (=> b!214575 (= lt!80088 e!132344)))

(declare-fun c!41053 () Bool)

(declare-fun isEmpty!1838 (List!3372) Bool)

(assert (=> b!214575 (= c!41053 (isEmpty!1838 (t!31858 tokens!465)))))

(declare-fun lt!80096 () List!3370)

(declare-fun maxPrefix!241 (LexerInterface!511 List!3371 List!3370) Option!567)

(assert (=> b!214575 (= lt!80097 (maxPrefix!241 thiss!17480 rules!1920 lt!80096))))

(declare-fun lt!80079 () tuple2!3556)

(assert (=> b!214575 (= lt!80096 (_2!1994 lt!80079))))

(declare-fun lt!80099 () Unit!3588)

(declare-fun lt!80086 () List!3370)

(declare-fun lt!80115 () List!3370)

(declare-fun lemmaSamePrefixThenSameSuffix!146 (List!3370 List!3370 List!3370 List!3370 List!3370) Unit!3588)

(assert (=> b!214575 (= lt!80099 (lemmaSamePrefixThenSameSuffix!146 lt!80115 lt!80096 lt!80115 (_2!1994 lt!80079) lt!80086))))

(declare-fun get!1031 (Option!567) tuple2!3556)

(assert (=> b!214575 (= lt!80079 (get!1031 (maxPrefix!241 thiss!17480 rules!1920 lt!80086)))))

(declare-fun lt!80093 () List!3370)

(declare-fun isPrefix!321 (List!3370 List!3370) Bool)

(assert (=> b!214575 (isPrefix!321 lt!80115 lt!80093)))

(declare-fun lt!80107 () Unit!3588)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!216 (List!3370 List!3370) Unit!3588)

(assert (=> b!214575 (= lt!80107 (lemmaConcatTwoListThenFirstIsPrefix!216 lt!80115 lt!80096))))

(declare-fun e!132362 () Bool)

(assert (=> b!214575 e!132362))

(declare-fun res!98682 () Bool)

(assert (=> b!214575 (=> res!98682 e!132362)))

(assert (=> b!214575 (= res!98682 (isEmpty!1838 tokens!465))))

(declare-fun lt!80114 () Unit!3588)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!86 (LexerInterface!511 List!3371 List!3372 Token!994) Unit!3588)

(assert (=> b!214575 (= lt!80114 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!86 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!214576 () Bool)

(declare-fun e!132355 () Bool)

(declare-fun e!132364 () Bool)

(assert (=> b!214576 (= e!132355 (not e!132364))))

(declare-fun res!98662 () Bool)

(assert (=> b!214576 (=> res!98662 e!132364)))

(assert (=> b!214576 (= res!98662 (not (= lt!80085 (list!1265 lt!80089))))))

(declare-fun printWithSeparatorTokenWhenNeededRec!194 (LexerInterface!511 List!3371 BalanceConc!2154 Token!994 Int) BalanceConc!2152)

(assert (=> b!214576 (= lt!80089 (printWithSeparatorTokenWhenNeededRec!194 thiss!17480 rules!1920 lt!80095 separatorToken!170 0))))

(declare-fun seqFromList!627 (List!3372) BalanceConc!2154)

(assert (=> b!214576 (= lt!80095 (seqFromList!627 (t!31858 tokens!465)))))

(declare-fun lt!80129 () List!3370)

(assert (=> b!214576 (= lt!80129 lt!80093)))

(declare-fun ++!830 (List!3370 List!3370) List!3370)

(assert (=> b!214576 (= lt!80093 (++!830 lt!80115 lt!80096))))

(assert (=> b!214576 (= lt!80129 (++!830 (++!830 lt!80115 lt!80128) lt!80085))))

(declare-fun lt!80123 () Unit!3588)

(declare-fun lemmaConcatAssociativity!322 (List!3370 List!3370 List!3370) Unit!3588)

(assert (=> b!214576 (= lt!80123 (lemmaConcatAssociativity!322 lt!80115 lt!80128 lt!80085))))

(assert (=> b!214576 (= lt!80115 (list!1265 (charsOf!280 (h!8759 tokens!465))))))

(assert (=> b!214576 (= lt!80096 (++!830 lt!80128 lt!80085))))

(declare-fun printWithSeparatorTokenWhenNeededList!204 (LexerInterface!511 List!3371 List!3372 Token!994) List!3370)

(assert (=> b!214576 (= lt!80085 (printWithSeparatorTokenWhenNeededList!204 thiss!17480 rules!1920 (t!31858 tokens!465) separatorToken!170))))

(assert (=> b!214576 (= lt!80128 (list!1265 (charsOf!280 separatorToken!170)))))

(declare-fun b!214577 () Bool)

(declare-fun res!98656 () Bool)

(declare-fun e!132365 () Bool)

(assert (=> b!214577 (=> res!98656 e!132365)))

(declare-fun isEmpty!1839 (BalanceConc!2154) Bool)

(declare-fun seqFromList!628 (List!3370) BalanceConc!2152)

(assert (=> b!214577 (= res!98656 (isEmpty!1839 (_1!1993 (lex!311 thiss!17480 rules!1920 (seqFromList!628 lt!80115)))))))

(declare-fun e!132352 () Bool)

(assert (=> b!214578 (= e!132352 (and tp!91875 tp!91879))))

(declare-fun b!214579 () Bool)

(declare-fun res!98673 () Bool)

(assert (=> b!214579 (=> (not res!98673) (not e!132355))))

(declare-fun lt!80106 () List!3370)

(assert (=> b!214579 (= res!98673 (= (list!1265 (seqFromList!628 lt!80086)) lt!80106))))

(declare-fun b!214580 () Bool)

(declare-fun tp!91872 () Bool)

(declare-fun e!132363 () Bool)

(declare-fun e!132376 () Bool)

(declare-fun inv!21 (TokenValue!647) Bool)

(assert (=> b!214580 (= e!132363 (and (inv!21 (value!22128 separatorToken!170)) e!132376 tp!91872))))

(declare-fun b!214581 () Bool)

(declare-fun e!132372 () Bool)

(assert (=> b!214581 (= e!132372 e!132355)))

(declare-fun res!98672 () Bool)

(assert (=> b!214581 (=> (not res!98672) (not e!132355))))

(assert (=> b!214581 (= res!98672 (= lt!80086 lt!80106))))

(declare-fun lt!80120 () BalanceConc!2154)

(assert (=> b!214581 (= lt!80106 (list!1265 (printWithSeparatorTokenWhenNeededRec!194 thiss!17480 rules!1920 lt!80120 separatorToken!170 0)))))

(assert (=> b!214581 (= lt!80086 (printWithSeparatorTokenWhenNeededList!204 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!214582 () Bool)

(declare-fun e!132378 () Bool)

(assert (=> b!214582 (= e!132373 e!132378)))

(declare-fun res!98655 () Bool)

(assert (=> b!214582 (=> (not res!98655) (not e!132378))))

(declare-fun lt!80127 () Rule!1050)

(declare-fun matchR!187 (Regex!849 List!3370) Bool)

(assert (=> b!214582 (= res!98655 (matchR!187 (regex!625 lt!80127) lt!80128))))

(declare-fun get!1032 (Option!568) Rule!1050)

(assert (=> b!214582 (= lt!80127 (get!1032 lt!80109))))

(declare-fun b!214583 () Bool)

(declare-fun res!98685 () Bool)

(assert (=> b!214583 (=> (not res!98685) (not e!132372))))

(declare-fun sepAndNonSepRulesDisjointChars!214 (List!3371 List!3371) Bool)

(assert (=> b!214583 (= res!98685 (sepAndNonSepRulesDisjointChars!214 rules!1920 rules!1920))))

(declare-fun b!214584 () Bool)

(declare-fun Unit!3590 () Unit!3588)

(assert (=> b!214584 (= e!132358 Unit!3590)))

(declare-fun lt!80084 () Unit!3588)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!18 (LexerInterface!511 List!3371 List!3371 Rule!1050 Rule!1050 C!2620) Unit!3588)

(assert (=> b!214584 (= lt!80084 (lemmaSepRuleNotContainsCharContainedInANonSepRule!18 thiss!17480 rules!1920 rules!1920 (rule!1162 lt!80126) (rule!1162 separatorToken!170) lt!80090))))

(assert (=> b!214584 false))

(declare-fun b!214585 () Bool)

(declare-fun e!132375 () Bool)

(declare-fun lt!80118 () Option!567)

(assert (=> b!214585 (= e!132375 (= (_1!1994 (get!1031 lt!80118)) (head!746 tokens!465)))))

(declare-fun b!214586 () Bool)

(declare-fun res!98658 () Bool)

(assert (=> b!214586 (=> (not res!98658) (not e!132372))))

(assert (=> b!214586 (= res!98658 (isSeparator!625 (rule!1162 separatorToken!170)))))

(declare-fun b!214587 () Bool)

(declare-fun e!132349 () Bool)

(assert (=> b!214587 (= e!132349 e!132365)))

(declare-fun res!98659 () Bool)

(assert (=> b!214587 (=> res!98659 e!132365)))

(declare-fun lt!80092 () List!3370)

(declare-fun lt!80112 () List!3370)

(assert (=> b!214587 (= res!98659 (or (not (= lt!80092 lt!80112)) (not (= lt!80112 lt!80115)) (not (= lt!80092 lt!80115))))))

(declare-fun printList!195 (LexerInterface!511 List!3372) List!3370)

(assert (=> b!214587 (= lt!80112 (printList!195 thiss!17480 (Cons!3362 (h!8759 tokens!465) Nil!3362)))))

(declare-fun lt!80117 () BalanceConc!2152)

(assert (=> b!214587 (= lt!80092 (list!1265 lt!80117))))

(declare-fun lt!80104 () BalanceConc!2154)

(assert (=> b!214587 (= lt!80117 (printTailRec!205 thiss!17480 lt!80104 0 (BalanceConc!2153 Empty!1072)))))

(assert (=> b!214587 (= lt!80117 (print!242 thiss!17480 lt!80104))))

(assert (=> b!214587 (= lt!80104 (singletonSeq!177 (h!8759 tokens!465)))))

(declare-fun b!214588 () Bool)

(declare-fun e!132354 () Bool)

(declare-fun lt!80105 () Rule!1050)

(assert (=> b!214588 (= e!132354 (= (rule!1162 lt!80126) lt!80105))))

(declare-fun b!214589 () Bool)

(declare-fun Unit!3591 () Unit!3588)

(assert (=> b!214589 (= e!132358 Unit!3591)))

(declare-fun b!214590 () Bool)

(declare-fun Unit!3592 () Unit!3588)

(assert (=> b!214590 (= e!132347 Unit!3592)))

(declare-fun lt!80121 () Unit!3588)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!24 (Regex!849 List!3370 C!2620) Unit!3588)

(assert (=> b!214590 (= lt!80121 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!24 (regex!625 (rule!1162 lt!80126)) lt!80080 lt!80111))))

(declare-fun res!98667 () Bool)

(assert (=> b!214590 (= res!98667 (not (matchR!187 (regex!625 (rule!1162 lt!80126)) lt!80080)))))

(declare-fun e!132379 () Bool)

(assert (=> b!214590 (=> (not res!98667) (not e!132379))))

(assert (=> b!214590 e!132379))

(declare-fun b!214591 () Bool)

(assert (=> b!214591 (= e!132379 false)))

(declare-fun b!214592 () Bool)

(declare-fun res!98677 () Bool)

(assert (=> b!214592 (=> res!98677 e!132365)))

(assert (=> b!214592 (= res!98677 (not (rulesProduceIndividualToken!260 thiss!17480 rules!1920 (h!8759 tokens!465))))))

(declare-fun b!214593 () Bool)

(assert (=> b!214593 (= e!132381 true)))

(declare-fun lt!80124 () Bool)

(declare-fun rulesProduceEachTokenIndividually!303 (LexerInterface!511 List!3371 BalanceConc!2154) Bool)

(assert (=> b!214593 (= lt!80124 (rulesProduceEachTokenIndividually!303 thiss!17480 rules!1920 lt!80095))))

(declare-fun b!214594 () Bool)

(declare-fun res!98660 () Bool)

(declare-fun e!132345 () Bool)

(assert (=> b!214594 (=> (not res!98660) (not e!132345))))

(declare-fun isEmpty!1840 (List!3371) Bool)

(assert (=> b!214594 (= res!98660 (not (isEmpty!1840 rules!1920)))))

(declare-fun e!132360 () Bool)

(declare-fun tp!91880 () Bool)

(declare-fun e!132361 () Bool)

(declare-fun b!214595 () Bool)

(assert (=> b!214595 (= e!132360 (and (inv!21 (value!22128 (h!8759 tokens!465))) e!132361 tp!91880))))

(declare-fun b!214596 () Bool)

(declare-fun res!98674 () Bool)

(assert (=> b!214596 (=> (not res!98674) (not e!132351))))

(declare-fun apply!574 (BalanceConc!2154 Int) Token!994)

(assert (=> b!214596 (= res!98674 (= (apply!574 (_1!1993 lt!80113) 0) separatorToken!170))))

(declare-fun b!214597 () Bool)

(assert (=> b!214597 (= e!132364 e!132349)))

(declare-fun res!98680 () Bool)

(assert (=> b!214597 (=> res!98680 e!132349)))

(declare-fun e!132346 () Bool)

(assert (=> b!214597 (= res!98680 e!132346)))

(declare-fun res!98679 () Bool)

(assert (=> b!214597 (=> (not res!98679) (not e!132346))))

(declare-fun lt!80122 () Bool)

(assert (=> b!214597 (= res!98679 (not lt!80122))))

(assert (=> b!214597 (= lt!80122 (= lt!80086 lt!80093))))

(declare-fun b!214598 () Bool)

(declare-fun Unit!3593 () Unit!3588)

(assert (=> b!214598 (= e!132347 Unit!3593)))

(declare-fun b!214599 () Bool)

(declare-fun res!98671 () Bool)

(assert (=> b!214599 (=> (not res!98671) (not e!132345))))

(declare-fun rulesInvariant!477 (LexerInterface!511 List!3371) Bool)

(assert (=> b!214599 (= res!98671 (rulesInvariant!477 thiss!17480 rules!1920))))

(declare-fun tp!91882 () Bool)

(declare-fun e!132368 () Bool)

(declare-fun b!214600 () Bool)

(declare-fun inv!4204 (Token!994) Bool)

(assert (=> b!214600 (= e!132368 (and (inv!4204 (h!8759 tokens!465)) e!132360 tp!91882))))

(declare-fun b!214601 () Bool)

(declare-fun e!132359 () Bool)

(assert (=> b!214601 (= e!132359 (matchR!187 (regex!625 (rule!1162 (h!8759 tokens!465))) lt!80115))))

(declare-fun b!214602 () Bool)

(declare-fun res!98675 () Bool)

(assert (=> b!214602 (=> (not res!98675) (not e!132372))))

(assert (=> b!214602 (= res!98675 ((_ is Cons!3362) tokens!465))))

(declare-fun b!214603 () Bool)

(assert (=> b!214603 (= e!132345 e!132372)))

(declare-fun res!98683 () Bool)

(assert (=> b!214603 (=> (not res!98683) (not e!132372))))

(assert (=> b!214603 (= res!98683 (rulesProduceEachTokenIndividually!303 thiss!17480 rules!1920 lt!80120))))

(assert (=> b!214603 (= lt!80120 (seqFromList!627 tokens!465))))

(declare-fun b!214604 () Bool)

(declare-fun isEmpty!1841 (BalanceConc!2152) Bool)

(assert (=> b!214604 (= e!132351 (isEmpty!1841 (_2!1993 lt!80113)))))

(declare-fun b!214605 () Bool)

(declare-fun res!98678 () Bool)

(assert (=> b!214605 (=> (not res!98678) (not e!132359))))

(declare-fun lt!80091 () tuple2!3556)

(declare-fun isEmpty!1842 (List!3370) Bool)

(assert (=> b!214605 (= res!98678 (isEmpty!1842 (_2!1994 lt!80091)))))

(declare-fun b!214606 () Bool)

(assert (=> b!214606 (= e!132367 (isEmpty!1841 (_2!1993 lt!80087)))))

(declare-fun tp!91883 () Bool)

(declare-fun b!214607 () Bool)

(declare-fun e!132348 () Bool)

(declare-fun inv!4201 (String!4315) Bool)

(declare-fun inv!4205 (TokenValueInjection!1066) Bool)

(assert (=> b!214607 (= e!132361 (and tp!91883 (inv!4201 (tag!817 (rule!1162 (h!8759 tokens!465)))) (inv!4205 (transformation!625 (rule!1162 (h!8759 tokens!465)))) e!132348))))

(declare-fun b!214608 () Bool)

(declare-fun res!98664 () Bool)

(assert (=> b!214608 (=> (not res!98664) (not e!132367))))

(assert (=> b!214608 (= res!98664 (= (apply!574 (_1!1993 lt!80087) 0) lt!80126))))

(declare-fun b!214609 () Bool)

(declare-fun res!98661 () Bool)

(assert (=> b!214609 (=> (not res!98661) (not e!132372))))

(assert (=> b!214609 (= res!98661 (rulesProduceIndividualToken!260 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun res!98669 () Bool)

(assert (=> b!214610 (=> (not res!98669) (not e!132372))))

(declare-fun forall!737 (List!3372 Int) Bool)

(assert (=> b!214610 (= res!98669 (forall!737 tokens!465 lambda!6635))))

(declare-fun b!214611 () Bool)

(declare-fun e!132380 () Bool)

(assert (=> b!214611 (= e!132380 e!132357)))

(declare-fun res!98676 () Bool)

(assert (=> b!214611 (=> res!98676 e!132357)))

(assert (=> b!214611 (= res!98676 (not lt!80122))))

(assert (=> b!214611 e!132359))

(declare-fun res!98665 () Bool)

(assert (=> b!214611 (=> (not res!98665) (not e!132359))))

(assert (=> b!214611 (= res!98665 (= (_1!1994 lt!80091) (h!8759 tokens!465)))))

(declare-fun lt!80116 () Option!567)

(assert (=> b!214611 (= lt!80091 (get!1031 lt!80116))))

(declare-fun isDefined!419 (Option!567) Bool)

(assert (=> b!214611 (isDefined!419 lt!80116)))

(assert (=> b!214611 (= lt!80116 (maxPrefix!241 thiss!17480 rules!1920 lt!80115))))

(declare-fun b!214612 () Bool)

(declare-fun Unit!3594 () Unit!3588)

(assert (=> b!214612 (= e!132344 Unit!3594)))

(declare-fun b!214613 () Bool)

(declare-fun Unit!3595 () Unit!3588)

(assert (=> b!214613 (= e!132344 Unit!3595)))

(assert (=> b!214613 false))

(assert (=> b!214614 (= e!132348 (and tp!91878 tp!91871))))

(declare-fun b!214615 () Bool)

(assert (=> b!214615 (= e!132350 e!132354)))

(declare-fun res!98686 () Bool)

(assert (=> b!214615 (=> (not res!98686) (not e!132354))))

(assert (=> b!214615 (= res!98686 (matchR!187 (regex!625 lt!80105) lt!80080))))

(assert (=> b!214615 (= lt!80105 (get!1032 lt!80119))))

(declare-fun e!132356 () Bool)

(declare-fun b!214616 () Bool)

(declare-fun tp!91876 () Bool)

(assert (=> b!214616 (= e!132376 (and tp!91876 (inv!4201 (tag!817 (rule!1162 separatorToken!170))) (inv!4205 (transformation!625 (rule!1162 separatorToken!170))) e!132356))))

(declare-fun b!214617 () Bool)

(assert (=> b!214617 (= e!132378 (= (rule!1162 separatorToken!170) lt!80127))))

(declare-fun b!214618 () Bool)

(assert (=> b!214618 (= e!132346 (not (= lt!80086 (++!830 lt!80115 lt!80085))))))

(declare-fun res!98657 () Bool)

(assert (=> start!23018 (=> (not res!98657) (not e!132345))))

(assert (=> start!23018 (= res!98657 ((_ is Lexer!509) thiss!17480))))

(assert (=> start!23018 e!132345))

(assert (=> start!23018 true))

(declare-fun e!132374 () Bool)

(assert (=> start!23018 e!132374))

(assert (=> start!23018 (and (inv!4204 separatorToken!170) e!132363)))

(assert (=> start!23018 e!132368))

(declare-fun tp!91874 () Bool)

(declare-fun e!132371 () Bool)

(declare-fun b!214619 () Bool)

(assert (=> b!214619 (= e!132371 (and tp!91874 (inv!4201 (tag!817 (h!8758 rules!1920))) (inv!4205 (transformation!625 (h!8758 rules!1920))) e!132352))))

(assert (=> b!214620 (= e!132365 e!132380)))

(declare-fun res!98654 () Bool)

(assert (=> b!214620 (=> res!98654 e!132380)))

(declare-datatypes ((tuple2!3558 0))(
  ( (tuple2!3559 (_1!1995 Token!994) (_2!1995 BalanceConc!2152)) )
))
(declare-datatypes ((Option!569 0))(
  ( (None!568) (Some!568 (v!14171 tuple2!3558)) )
))
(declare-fun isDefined!420 (Option!569) Bool)

(declare-fun maxPrefixZipperSequence!204 (LexerInterface!511 List!3371 BalanceConc!2152) Option!569)

(assert (=> b!214620 (= res!98654 (not (isDefined!420 (maxPrefixZipperSequence!204 thiss!17480 rules!1920 (seqFromList!628 (originalCharacters!668 (h!8759 tokens!465)))))))))

(declare-fun lt!80110 () Unit!3588)

(assert (=> b!214620 (= lt!80110 (forallContained!192 tokens!465 lambda!6636 (h!8759 tokens!465)))))

(assert (=> b!214620 (= lt!80115 (originalCharacters!668 (h!8759 tokens!465)))))

(assert (=> b!214621 (= e!132356 (and tp!91873 tp!91881))))

(declare-fun b!214622 () Bool)

(assert (=> b!214622 (= e!132362 e!132375)))

(declare-fun res!98684 () Bool)

(assert (=> b!214622 (=> (not res!98684) (not e!132375))))

(assert (=> b!214622 (= res!98684 (isDefined!419 lt!80118))))

(assert (=> b!214622 (= lt!80118 (maxPrefix!241 thiss!17480 rules!1920 lt!80086))))

(declare-fun b!214623 () Bool)

(declare-fun tp!91877 () Bool)

(assert (=> b!214623 (= e!132374 (and e!132371 tp!91877))))

(assert (= (and start!23018 res!98657) b!214594))

(assert (= (and b!214594 res!98660) b!214599))

(assert (= (and b!214599 res!98671) b!214603))

(assert (= (and b!214603 res!98683) b!214609))

(assert (= (and b!214609 res!98661) b!214586))

(assert (= (and b!214586 res!98658) b!214610))

(assert (= (and b!214610 res!98669) b!214583))

(assert (= (and b!214583 res!98685) b!214602))

(assert (= (and b!214602 res!98675) b!214581))

(assert (= (and b!214581 res!98672) b!214579))

(assert (= (and b!214579 res!98673) b!214576))

(assert (= (and b!214576 (not res!98662)) b!214597))

(assert (= (and b!214597 res!98679) b!214618))

(assert (= (and b!214597 (not res!98680)) b!214587))

(assert (= (and b!214587 (not res!98659)) b!214592))

(assert (= (and b!214592 (not res!98677)) b!214577))

(assert (= (and b!214577 (not res!98656)) b!214620))

(assert (= (and b!214620 (not res!98654)) b!214611))

(assert (= (and b!214611 res!98665) b!214605))

(assert (= (and b!214605 res!98678) b!214601))

(assert (= (and b!214611 (not res!98676)) b!214575))

(assert (= (and b!214575 (not res!98682)) b!214622))

(assert (= (and b!214622 res!98684) b!214585))

(assert (= (and b!214575 c!41053) b!214613))

(assert (= (and b!214575 (not c!41053)) b!214612))

(assert (= (and b!214575 res!98668) b!214596))

(assert (= (and b!214596 res!98674) b!214604))

(assert (= (and b!214575 res!98670) b!214582))

(assert (= (and b!214582 res!98655) b!214617))

(assert (= (and b!214575 res!98681) b!214608))

(assert (= (and b!214608 res!98664) b!214606))

(assert (= (and b!214575 res!98663) b!214615))

(assert (= (and b!214615 res!98686) b!214588))

(assert (= (and b!214575 c!41051) b!214590))

(assert (= (and b!214575 (not c!41051)) b!214598))

(assert (= (and b!214590 res!98667) b!214591))

(assert (= (and b!214575 c!41052) b!214584))

(assert (= (and b!214575 (not c!41052)) b!214589))

(assert (= (and b!214575 (not res!98666)) b!214593))

(assert (= b!214619 b!214578))

(assert (= b!214623 b!214619))

(assert (= (and start!23018 ((_ is Cons!3361) rules!1920)) b!214623))

(assert (= b!214616 b!214621))

(assert (= b!214580 b!214616))

(assert (= start!23018 b!214580))

(assert (= b!214607 b!214614))

(assert (= b!214595 b!214607))

(assert (= b!214600 b!214595))

(assert (= (and start!23018 ((_ is Cons!3362) tokens!465)) b!214600))

(declare-fun m!242655 () Bool)

(assert (=> b!214599 m!242655))

(declare-fun m!242657 () Bool)

(assert (=> b!214595 m!242657))

(declare-fun m!242659 () Bool)

(assert (=> b!214616 m!242659))

(declare-fun m!242661 () Bool)

(assert (=> b!214616 m!242661))

(declare-fun m!242663 () Bool)

(assert (=> start!23018 m!242663))

(declare-fun m!242665 () Bool)

(assert (=> b!214618 m!242665))

(declare-fun m!242667 () Bool)

(assert (=> b!214590 m!242667))

(declare-fun m!242669 () Bool)

(assert (=> b!214590 m!242669))

(declare-fun m!242671 () Bool)

(assert (=> b!214605 m!242671))

(declare-fun m!242673 () Bool)

(assert (=> b!214622 m!242673))

(declare-fun m!242675 () Bool)

(assert (=> b!214622 m!242675))

(declare-fun m!242677 () Bool)

(assert (=> b!214585 m!242677))

(declare-fun m!242679 () Bool)

(assert (=> b!214585 m!242679))

(declare-fun m!242681 () Bool)

(assert (=> b!214583 m!242681))

(declare-fun m!242683 () Bool)

(assert (=> b!214606 m!242683))

(declare-fun m!242685 () Bool)

(assert (=> b!214604 m!242685))

(declare-fun m!242687 () Bool)

(assert (=> b!214608 m!242687))

(declare-fun m!242689 () Bool)

(assert (=> b!214596 m!242689))

(declare-fun m!242691 () Bool)

(assert (=> b!214593 m!242691))

(declare-fun m!242693 () Bool)

(assert (=> b!214601 m!242693))

(declare-fun m!242695 () Bool)

(assert (=> b!214580 m!242695))

(declare-fun m!242697 () Bool)

(assert (=> b!214620 m!242697))

(assert (=> b!214620 m!242697))

(declare-fun m!242699 () Bool)

(assert (=> b!214620 m!242699))

(assert (=> b!214620 m!242699))

(declare-fun m!242701 () Bool)

(assert (=> b!214620 m!242701))

(declare-fun m!242703 () Bool)

(assert (=> b!214620 m!242703))

(declare-fun m!242705 () Bool)

(assert (=> b!214610 m!242705))

(declare-fun m!242707 () Bool)

(assert (=> b!214600 m!242707))

(declare-fun m!242709 () Bool)

(assert (=> b!214603 m!242709))

(declare-fun m!242711 () Bool)

(assert (=> b!214603 m!242711))

(declare-fun m!242713 () Bool)

(assert (=> b!214581 m!242713))

(assert (=> b!214581 m!242713))

(declare-fun m!242715 () Bool)

(assert (=> b!214581 m!242715))

(declare-fun m!242717 () Bool)

(assert (=> b!214581 m!242717))

(declare-fun m!242719 () Bool)

(assert (=> b!214609 m!242719))

(declare-fun m!242721 () Bool)

(assert (=> b!214607 m!242721))

(declare-fun m!242723 () Bool)

(assert (=> b!214607 m!242723))

(declare-fun m!242725 () Bool)

(assert (=> b!214587 m!242725))

(declare-fun m!242727 () Bool)

(assert (=> b!214587 m!242727))

(declare-fun m!242729 () Bool)

(assert (=> b!214587 m!242729))

(declare-fun m!242731 () Bool)

(assert (=> b!214587 m!242731))

(declare-fun m!242733 () Bool)

(assert (=> b!214587 m!242733))

(declare-fun m!242735 () Bool)

(assert (=> b!214577 m!242735))

(assert (=> b!214577 m!242735))

(declare-fun m!242737 () Bool)

(assert (=> b!214577 m!242737))

(declare-fun m!242739 () Bool)

(assert (=> b!214577 m!242739))

(declare-fun m!242741 () Bool)

(assert (=> b!214592 m!242741))

(declare-fun m!242743 () Bool)

(assert (=> b!214582 m!242743))

(declare-fun m!242745 () Bool)

(assert (=> b!214582 m!242745))

(declare-fun m!242747 () Bool)

(assert (=> b!214594 m!242747))

(declare-fun m!242749 () Bool)

(assert (=> b!214619 m!242749))

(declare-fun m!242751 () Bool)

(assert (=> b!214619 m!242751))

(declare-fun m!242753 () Bool)

(assert (=> b!214615 m!242753))

(declare-fun m!242755 () Bool)

(assert (=> b!214615 m!242755))

(declare-fun m!242757 () Bool)

(assert (=> b!214611 m!242757))

(declare-fun m!242759 () Bool)

(assert (=> b!214611 m!242759))

(declare-fun m!242761 () Bool)

(assert (=> b!214611 m!242761))

(declare-fun m!242763 () Bool)

(assert (=> b!214584 m!242763))

(declare-fun m!242765 () Bool)

(assert (=> b!214575 m!242765))

(declare-fun m!242767 () Bool)

(assert (=> b!214575 m!242767))

(declare-fun m!242769 () Bool)

(assert (=> b!214575 m!242769))

(declare-fun m!242771 () Bool)

(assert (=> b!214575 m!242771))

(declare-fun m!242773 () Bool)

(assert (=> b!214575 m!242773))

(declare-fun m!242775 () Bool)

(assert (=> b!214575 m!242775))

(declare-fun m!242777 () Bool)

(assert (=> b!214575 m!242777))

(declare-fun m!242779 () Bool)

(assert (=> b!214575 m!242779))

(declare-fun m!242781 () Bool)

(assert (=> b!214575 m!242781))

(declare-fun m!242783 () Bool)

(assert (=> b!214575 m!242783))

(declare-fun m!242785 () Bool)

(assert (=> b!214575 m!242785))

(declare-fun m!242787 () Bool)

(assert (=> b!214575 m!242787))

(declare-fun m!242789 () Bool)

(assert (=> b!214575 m!242789))

(declare-fun m!242791 () Bool)

(assert (=> b!214575 m!242791))

(declare-fun m!242793 () Bool)

(assert (=> b!214575 m!242793))

(declare-fun m!242795 () Bool)

(assert (=> b!214575 m!242795))

(declare-fun m!242797 () Bool)

(assert (=> b!214575 m!242797))

(declare-fun m!242799 () Bool)

(assert (=> b!214575 m!242799))

(declare-fun m!242801 () Bool)

(assert (=> b!214575 m!242801))

(declare-fun m!242803 () Bool)

(assert (=> b!214575 m!242803))

(assert (=> b!214575 m!242675))

(declare-fun m!242805 () Bool)

(assert (=> b!214575 m!242805))

(declare-fun m!242807 () Bool)

(assert (=> b!214575 m!242807))

(declare-fun m!242809 () Bool)

(assert (=> b!214575 m!242809))

(declare-fun m!242811 () Bool)

(assert (=> b!214575 m!242811))

(declare-fun m!242813 () Bool)

(assert (=> b!214575 m!242813))

(declare-fun m!242815 () Bool)

(assert (=> b!214575 m!242815))

(declare-fun m!242817 () Bool)

(assert (=> b!214575 m!242817))

(declare-fun m!242819 () Bool)

(assert (=> b!214575 m!242819))

(assert (=> b!214575 m!242809))

(declare-fun m!242821 () Bool)

(assert (=> b!214575 m!242821))

(declare-fun m!242823 () Bool)

(assert (=> b!214575 m!242823))

(assert (=> b!214575 m!242675))

(declare-fun m!242825 () Bool)

(assert (=> b!214575 m!242825))

(declare-fun m!242827 () Bool)

(assert (=> b!214575 m!242827))

(declare-fun m!242829 () Bool)

(assert (=> b!214575 m!242829))

(assert (=> b!214575 m!242827))

(declare-fun m!242831 () Bool)

(assert (=> b!214575 m!242831))

(declare-fun m!242833 () Bool)

(assert (=> b!214575 m!242833))

(declare-fun m!242835 () Bool)

(assert (=> b!214575 m!242835))

(declare-fun m!242837 () Bool)

(assert (=> b!214575 m!242837))

(declare-fun m!242839 () Bool)

(assert (=> b!214575 m!242839))

(declare-fun m!242841 () Bool)

(assert (=> b!214575 m!242841))

(assert (=> b!214575 m!242793))

(declare-fun m!242843 () Bool)

(assert (=> b!214575 m!242843))

(assert (=> b!214575 m!242835))

(declare-fun m!242845 () Bool)

(assert (=> b!214575 m!242845))

(declare-fun m!242847 () Bool)

(assert (=> b!214575 m!242847))

(declare-fun m!242849 () Bool)

(assert (=> b!214576 m!242849))

(declare-fun m!242851 () Bool)

(assert (=> b!214576 m!242851))

(declare-fun m!242853 () Bool)

(assert (=> b!214576 m!242853))

(declare-fun m!242855 () Bool)

(assert (=> b!214576 m!242855))

(declare-fun m!242857 () Bool)

(assert (=> b!214576 m!242857))

(declare-fun m!242859 () Bool)

(assert (=> b!214576 m!242859))

(declare-fun m!242861 () Bool)

(assert (=> b!214576 m!242861))

(declare-fun m!242863 () Bool)

(assert (=> b!214576 m!242863))

(assert (=> b!214576 m!242861))

(declare-fun m!242865 () Bool)

(assert (=> b!214576 m!242865))

(assert (=> b!214576 m!242859))

(declare-fun m!242867 () Bool)

(assert (=> b!214576 m!242867))

(declare-fun m!242869 () Bool)

(assert (=> b!214576 m!242869))

(assert (=> b!214576 m!242863))

(declare-fun m!242871 () Bool)

(assert (=> b!214576 m!242871))

(declare-fun m!242873 () Bool)

(assert (=> b!214576 m!242873))

(declare-fun m!242875 () Bool)

(assert (=> b!214579 m!242875))

(assert (=> b!214579 m!242875))

(declare-fun m!242877 () Bool)

(assert (=> b!214579 m!242877))

(check-sat (not b!214583) (not b_next!8211) (not b!214575) (not b!214615) (not b!214577) (not b!214607) (not b!214606) (not b!214601) (not b_next!8203) (not b!214584) (not b!214603) (not b_next!8201) (not b!214587) (not b_next!8207) (not b!214611) (not b!214585) (not b!214579) (not b!214604) b_and!15663 (not b!214632) (not b!214616) (not b!214605) (not b_next!8205) b_and!15657 (not b!214618) (not b!214622) (not b!214590) b_and!15661 (not b!214581) (not b!214599) (not b!214595) (not b!214580) (not b!214623) b_and!15655 (not b!214619) (not b!214592) (not b!214593) b_and!15659 (not b!214576) (not b!214608) (not b!214620) (not b!214609) (not b!214596) (not b_next!8209) (not b!214582) b_and!15653 (not b!214600) (not b!214594) (not start!23018) (not b!214610))
(check-sat (not b_next!8203) (not b_next!8201) (not b_next!8207) b_and!15663 (not b_next!8211) (not b_next!8205) b_and!15657 b_and!15661 b_and!15655 b_and!15659 (not b_next!8209) b_and!15653)

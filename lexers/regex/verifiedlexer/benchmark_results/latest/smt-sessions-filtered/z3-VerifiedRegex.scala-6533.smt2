; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!345234 () Bool)

(assert start!345234)

(declare-fun b!3680092 () Bool)

(declare-fun b_free!97481 () Bool)

(declare-fun b_next!98185 () Bool)

(assert (=> b!3680092 (= b_free!97481 (not b_next!98185))))

(declare-fun tp!1118805 () Bool)

(declare-fun b_and!274811 () Bool)

(assert (=> b!3680092 (= tp!1118805 b_and!274811)))

(declare-fun b_free!97483 () Bool)

(declare-fun b_next!98187 () Bool)

(assert (=> b!3680092 (= b_free!97483 (not b_next!98187))))

(declare-fun tp!1118804 () Bool)

(declare-fun b_and!274813 () Bool)

(assert (=> b!3680092 (= tp!1118804 b_and!274813)))

(declare-fun b!3680111 () Bool)

(declare-fun b_free!97485 () Bool)

(declare-fun b_next!98189 () Bool)

(assert (=> b!3680111 (= b_free!97485 (not b_next!98189))))

(declare-fun tp!1118810 () Bool)

(declare-fun b_and!274815 () Bool)

(assert (=> b!3680111 (= tp!1118810 b_and!274815)))

(declare-fun b_free!97487 () Bool)

(declare-fun b_next!98191 () Bool)

(assert (=> b!3680111 (= b_free!97487 (not b_next!98191))))

(declare-fun tp!1118814 () Bool)

(declare-fun b_and!274817 () Bool)

(assert (=> b!3680111 (= tp!1118814 b_and!274817)))

(declare-fun b!3680068 () Bool)

(declare-fun b_free!97489 () Bool)

(declare-fun b_next!98193 () Bool)

(assert (=> b!3680068 (= b_free!97489 (not b_next!98193))))

(declare-fun tp!1118817 () Bool)

(declare-fun b_and!274819 () Bool)

(assert (=> b!3680068 (= tp!1118817 b_and!274819)))

(declare-fun b_free!97491 () Bool)

(declare-fun b_next!98195 () Bool)

(assert (=> b!3680068 (= b_free!97491 (not b_next!98195))))

(declare-fun tp!1118811 () Bool)

(declare-fun b_and!274821 () Bool)

(assert (=> b!3680068 (= tp!1118811 b_and!274821)))

(declare-fun b!3680106 () Bool)

(declare-fun b_free!97493 () Bool)

(declare-fun b_next!98197 () Bool)

(assert (=> b!3680106 (= b_free!97493 (not b_next!98197))))

(declare-fun tp!1118809 () Bool)

(declare-fun b_and!274823 () Bool)

(assert (=> b!3680106 (= tp!1118809 b_and!274823)))

(declare-fun b_free!97495 () Bool)

(declare-fun b_next!98199 () Bool)

(assert (=> b!3680106 (= b_free!97495 (not b_next!98199))))

(declare-fun tp!1118815 () Bool)

(declare-fun b_and!274825 () Bool)

(assert (=> b!3680106 (= tp!1118815 b_and!274825)))

(declare-fun tp!1118816 () Bool)

(declare-fun e!2278801 () Bool)

(declare-datatypes ((List!38941 0))(
  ( (Nil!38817) (Cons!38817 (h!44237 (_ BitVec 16)) (t!300556 List!38941)) )
))
(declare-datatypes ((TokenValue!6076 0))(
  ( (FloatLiteralValue!12152 (text!42977 List!38941)) (TokenValueExt!6075 (__x!24369 Int)) (Broken!30380 (value!187045 List!38941)) (Object!6199) (End!6076) (Def!6076) (Underscore!6076) (Match!6076) (Else!6076) (Error!6076) (Case!6076) (If!6076) (Extends!6076) (Abstract!6076) (Class!6076) (Val!6076) (DelimiterValue!12152 (del!6136 List!38941)) (KeywordValue!6082 (value!187046 List!38941)) (CommentValue!12152 (value!187047 List!38941)) (WhitespaceValue!12152 (value!187048 List!38941)) (IndentationValue!6076 (value!187049 List!38941)) (String!43713) (Int32!6076) (Broken!30381 (value!187050 List!38941)) (Boolean!6077) (Unit!56840) (OperatorValue!6079 (op!6136 List!38941)) (IdentifierValue!12152 (value!187051 List!38941)) (IdentifierValue!12153 (value!187052 List!38941)) (WhitespaceValue!12153 (value!187053 List!38941)) (True!12152) (False!12152) (Broken!30382 (value!187054 List!38941)) (Broken!30383 (value!187055 List!38941)) (True!12153) (RightBrace!6076) (RightBracket!6076) (Colon!6076) (Null!6076) (Comma!6076) (LeftBracket!6076) (False!12153) (LeftBrace!6076) (ImaginaryLiteralValue!6076 (text!42978 List!38941)) (StringLiteralValue!18228 (value!187056 List!38941)) (EOFValue!6076 (value!187057 List!38941)) (IdentValue!6076 (value!187058 List!38941)) (DelimiterValue!12153 (value!187059 List!38941)) (DedentValue!6076 (value!187060 List!38941)) (NewLineValue!6076 (value!187061 List!38941)) (IntegerValue!18228 (value!187062 (_ BitVec 32)) (text!42979 List!38941)) (IntegerValue!18229 (value!187063 Int) (text!42980 List!38941)) (Times!6076) (Or!6076) (Equal!6076) (Minus!6076) (Broken!30384 (value!187064 List!38941)) (And!6076) (Div!6076) (LessEqual!6076) (Mod!6076) (Concat!16681) (Not!6076) (Plus!6076) (SpaceValue!6076 (value!187065 List!38941)) (IntegerValue!18230 (value!187066 Int) (text!42981 List!38941)) (StringLiteralValue!18229 (text!42982 List!38941)) (FloatLiteralValue!12153 (text!42983 List!38941)) (BytesLiteralValue!6076 (value!187067 List!38941)) (CommentValue!12153 (value!187068 List!38941)) (StringLiteralValue!18230 (value!187069 List!38941)) (ErrorTokenValue!6076 (msg!6137 List!38941)) )
))
(declare-datatypes ((C!21396 0))(
  ( (C!21397 (val!12746 Int)) )
))
(declare-datatypes ((Regex!10605 0))(
  ( (ElementMatch!10605 (c!636548 C!21396)) (Concat!16682 (regOne!21722 Regex!10605) (regTwo!21722 Regex!10605)) (EmptyExpr!10605) (Star!10605 (reg!10934 Regex!10605)) (EmptyLang!10605) (Union!10605 (regOne!21723 Regex!10605) (regTwo!21723 Regex!10605)) )
))
(declare-datatypes ((String!43714 0))(
  ( (String!43715 (value!187070 String)) )
))
(declare-datatypes ((List!38942 0))(
  ( (Nil!38818) (Cons!38818 (h!44238 C!21396) (t!300557 List!38942)) )
))
(declare-datatypes ((IArray!23771 0))(
  ( (IArray!23772 (innerList!11943 List!38942)) )
))
(declare-datatypes ((Conc!11883 0))(
  ( (Node!11883 (left!30288 Conc!11883) (right!30618 Conc!11883) (csize!23996 Int) (cheight!12094 Int)) (Leaf!18417 (xs!15085 IArray!23771) (csize!23997 Int)) (Empty!11883) )
))
(declare-datatypes ((BalanceConc!23380 0))(
  ( (BalanceConc!23381 (c!636549 Conc!11883)) )
))
(declare-datatypes ((TokenValueInjection!11580 0))(
  ( (TokenValueInjection!11581 (toValue!8142 Int) (toChars!8001 Int)) )
))
(declare-datatypes ((Rule!11492 0))(
  ( (Rule!11493 (regex!5846 Regex!10605) (tag!6648 String!43714) (isSeparator!5846 Bool) (transformation!5846 TokenValueInjection!11580)) )
))
(declare-datatypes ((Token!11058 0))(
  ( (Token!11059 (value!187071 TokenValue!6076) (rule!8682 Rule!11492) (size!29681 Int) (originalCharacters!6560 List!38942)) )
))
(declare-fun token!511 () Token!11058)

(declare-fun e!2278809 () Bool)

(declare-fun b!3680060 () Bool)

(declare-fun inv!52312 (String!43714) Bool)

(declare-fun inv!52315 (TokenValueInjection!11580) Bool)

(assert (=> b!3680060 (= e!2278801 (and tp!1118816 (inv!52312 (tag!6648 (rule!8682 token!511))) (inv!52315 (transformation!5846 (rule!8682 token!511))) e!2278809))))

(declare-fun b!3680061 () Bool)

(declare-datatypes ((Unit!56841 0))(
  ( (Unit!56842) )
))
(declare-fun e!2278815 () Unit!56841)

(declare-fun Unit!56843 () Unit!56841)

(assert (=> b!3680061 (= e!2278815 Unit!56843)))

(declare-fun b!3680062 () Bool)

(declare-fun e!2278797 () Bool)

(declare-fun e!2278812 () Bool)

(assert (=> b!3680062 (= e!2278797 e!2278812)))

(declare-fun res!1495090 () Bool)

(assert (=> b!3680062 (=> res!1495090 e!2278812)))

(declare-fun lt!1286414 () List!38942)

(declare-datatypes ((tuple2!38684 0))(
  ( (tuple2!38685 (_1!22476 Token!11058) (_2!22476 List!38942)) )
))
(declare-datatypes ((Option!8320 0))(
  ( (None!8319) (Some!8319 (v!38255 tuple2!38684)) )
))
(declare-fun lt!1286443 () Option!8320)

(declare-fun lt!1286421 () tuple2!38684)

(assert (=> b!3680062 (= res!1495090 (or (not (= lt!1286414 (_2!22476 lt!1286421))) (not (= lt!1286443 (Some!8319 (tuple2!38685 (_1!22476 lt!1286421) lt!1286414))))))))

(assert (=> b!3680062 (= (_2!22476 lt!1286421) lt!1286414)))

(declare-fun lt!1286434 () List!38942)

(declare-fun lt!1286459 () List!38942)

(declare-fun lt!1286447 () Unit!56841)

(declare-fun lemmaSamePrefixThenSameSuffix!1536 (List!38942 List!38942 List!38942 List!38942 List!38942) Unit!56841)

(assert (=> b!3680062 (= lt!1286447 (lemmaSamePrefixThenSameSuffix!1536 lt!1286434 (_2!22476 lt!1286421) lt!1286434 lt!1286414 lt!1286459))))

(declare-fun getSuffix!1762 (List!38942 List!38942) List!38942)

(assert (=> b!3680062 (= lt!1286414 (getSuffix!1762 lt!1286459 lt!1286434))))

(declare-fun lt!1286448 () Int)

(declare-fun lt!1286417 () TokenValue!6076)

(assert (=> b!3680062 (= lt!1286443 (Some!8319 (tuple2!38685 (Token!11059 lt!1286417 (rule!8682 (_1!22476 lt!1286421)) lt!1286448 lt!1286434) (_2!22476 lt!1286421))))))

(declare-datatypes ((LexerInterface!5435 0))(
  ( (LexerInterfaceExt!5432 (__x!24370 Int)) (Lexer!5433) )
))
(declare-fun thiss!23823 () LexerInterface!5435)

(declare-fun maxPrefixOneRule!2107 (LexerInterface!5435 Rule!11492 List!38942) Option!8320)

(assert (=> b!3680062 (= lt!1286443 (maxPrefixOneRule!2107 thiss!23823 (rule!8682 (_1!22476 lt!1286421)) lt!1286459))))

(declare-fun size!29682 (List!38942) Int)

(assert (=> b!3680062 (= lt!1286448 (size!29682 lt!1286434))))

(declare-fun apply!9348 (TokenValueInjection!11580 BalanceConc!23380) TokenValue!6076)

(declare-fun seqFromList!4395 (List!38942) BalanceConc!23380)

(assert (=> b!3680062 (= lt!1286417 (apply!9348 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))) (seqFromList!4395 lt!1286434)))))

(declare-fun lt!1286442 () Unit!56841)

(declare-datatypes ((List!38943 0))(
  ( (Nil!38819) (Cons!38819 (h!44239 Rule!11492) (t!300558 List!38943)) )
))
(declare-fun rules!3307 () List!38943)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1163 (LexerInterface!5435 List!38943 List!38942 List!38942 List!38942 Rule!11492) Unit!56841)

(assert (=> b!3680062 (= lt!1286442 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1163 thiss!23823 rules!3307 lt!1286434 lt!1286459 (_2!22476 lt!1286421) (rule!8682 (_1!22476 lt!1286421))))))

(declare-fun b!3680063 () Bool)

(declare-fun e!2278804 () Bool)

(declare-fun e!2278802 () Bool)

(assert (=> b!3680063 (= e!2278804 e!2278802)))

(declare-fun res!1495082 () Bool)

(assert (=> b!3680063 (=> res!1495082 e!2278802)))

(declare-fun lt!1286426 () List!38942)

(declare-fun lt!1286438 () C!21396)

(declare-fun contains!7759 (List!38942 C!21396) Bool)

(assert (=> b!3680063 (= res!1495082 (contains!7759 lt!1286426 lt!1286438))))

(declare-fun suffix!1395 () List!38942)

(declare-fun head!7898 (List!38942) C!21396)

(assert (=> b!3680063 (= lt!1286438 (head!7898 suffix!1395))))

(declare-fun rule!403 () Rule!11492)

(declare-fun usedCharacters!1058 (Regex!10605) List!38942)

(assert (=> b!3680063 (= lt!1286426 (usedCharacters!1058 (regex!5846 rule!403)))))

(declare-fun b!3680064 () Bool)

(declare-fun e!2278817 () Unit!56841)

(declare-fun e!2278821 () Unit!56841)

(assert (=> b!3680064 (= e!2278817 e!2278821)))

(declare-fun lt!1286423 () Unit!56841)

(declare-fun lt!1286419 () List!38942)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!154 (List!38942 List!38942 List!38942 List!38942) Unit!56841)

(assert (=> b!3680064 (= lt!1286423 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!154 lt!1286419 suffix!1395 lt!1286434 lt!1286459))))

(assert (=> b!3680064 (contains!7759 lt!1286434 lt!1286438)))

(declare-fun c!636538 () Bool)

(assert (=> b!3680064 (= c!636538 (isSeparator!5846 rule!403))))

(declare-fun bm!266566 () Bool)

(declare-fun call!266576 () List!38942)

(assert (=> bm!266566 (= call!266576 (usedCharacters!1058 (regex!5846 (rule!8682 (_1!22476 lt!1286421)))))))

(declare-fun b!3680065 () Bool)

(declare-fun e!2278824 () Unit!56841)

(declare-fun Unit!56844 () Unit!56841)

(assert (=> b!3680065 (= e!2278824 Unit!56844)))

(declare-fun lt!1286441 () Int)

(declare-fun getIndex!514 (List!38943 Rule!11492) Int)

(assert (=> b!3680065 (= lt!1286441 (getIndex!514 rules!3307 (rule!8682 (_1!22476 lt!1286421))))))

(declare-fun lt!1286432 () Int)

(assert (=> b!3680065 (= lt!1286432 (getIndex!514 rules!3307 rule!403))))

(declare-fun c!636546 () Bool)

(assert (=> b!3680065 (= c!636546 (< lt!1286441 lt!1286432))))

(declare-fun lt!1286455 () Unit!56841)

(declare-fun e!2278820 () Unit!56841)

(assert (=> b!3680065 (= lt!1286455 e!2278820)))

(declare-fun c!636540 () Bool)

(assert (=> b!3680065 (= c!636540 (< lt!1286432 lt!1286441))))

(declare-fun lt!1286464 () Unit!56841)

(declare-fun e!2278816 () Unit!56841)

(assert (=> b!3680065 (= lt!1286464 e!2278816)))

(declare-fun lt!1286452 () Unit!56841)

(declare-fun lemmaSameIndexThenSameElement!246 (List!38943 Rule!11492 Rule!11492) Unit!56841)

(assert (=> b!3680065 (= lt!1286452 (lemmaSameIndexThenSameElement!246 rules!3307 (rule!8682 (_1!22476 lt!1286421)) rule!403))))

(assert (=> b!3680065 false))

(declare-fun b!3680066 () Bool)

(assert (=> b!3680066 false))

(declare-fun lt!1286428 () Unit!56841)

(declare-fun call!266573 () Unit!56841)

(assert (=> b!3680066 (= lt!1286428 call!266573)))

(declare-fun call!266575 () Bool)

(assert (=> b!3680066 (not call!266575)))

(declare-fun lt!1286420 () Unit!56841)

(declare-fun lt!1286457 () C!21396)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!492 (LexerInterface!5435 List!38943 List!38943 Rule!11492 Rule!11492 C!21396) Unit!56841)

(assert (=> b!3680066 (= lt!1286420 (lemmaNonSepRuleNotContainsCharContainedInASepRule!492 thiss!23823 rules!3307 rules!3307 (rule!8682 (_1!22476 lt!1286421)) rule!403 lt!1286457))))

(declare-fun e!2278811 () Unit!56841)

(declare-fun Unit!56845 () Unit!56841)

(assert (=> b!3680066 (= e!2278811 Unit!56845)))

(declare-fun bm!266567 () Bool)

(declare-fun call!266574 () List!38942)

(assert (=> bm!266567 (= call!266575 (contains!7759 call!266574 lt!1286457))))

(declare-fun b!3680067 () Bool)

(declare-fun e!2278792 () Bool)

(assert (=> b!3680067 (= e!2278792 false)))

(declare-fun e!2278805 () Bool)

(assert (=> b!3680068 (= e!2278805 (and tp!1118817 tp!1118811))))

(declare-fun b!3680069 () Bool)

(declare-fun res!1495092 () Bool)

(assert (=> b!3680069 (=> res!1495092 e!2278802)))

(declare-fun sepAndNonSepRulesDisjointChars!2014 (List!38943 List!38943) Bool)

(assert (=> b!3680069 (= res!1495092 (not (sepAndNonSepRulesDisjointChars!2014 rules!3307 rules!3307)))))

(declare-fun b!3680070 () Bool)

(declare-fun e!2278810 () Unit!56841)

(assert (=> b!3680070 (= e!2278810 e!2278811)))

(declare-fun c!636547 () Bool)

(assert (=> b!3680070 (= c!636547 (not (isSeparator!5846 (rule!8682 (_1!22476 lt!1286421)))))))

(declare-fun b!3680071 () Bool)

(declare-fun e!2278789 () Bool)

(declare-fun e!2278794 () Bool)

(assert (=> b!3680071 (= e!2278789 e!2278794)))

(declare-fun res!1495087 () Bool)

(assert (=> b!3680071 (=> (not res!1495087) (not e!2278794))))

(declare-fun lt!1286462 () Rule!11492)

(declare-fun matchR!5174 (Regex!10605 List!38942) Bool)

(declare-fun list!14428 (BalanceConc!23380) List!38942)

(declare-fun charsOf!3860 (Token!11058) BalanceConc!23380)

(assert (=> b!3680071 (= res!1495087 (matchR!5174 (regex!5846 lt!1286462) (list!14428 (charsOf!3860 (_1!22476 lt!1286421)))))))

(declare-datatypes ((Option!8321 0))(
  ( (None!8320) (Some!8320 (v!38256 Rule!11492)) )
))
(declare-fun lt!1286430 () Option!8321)

(declare-fun get!12853 (Option!8321) Rule!11492)

(assert (=> b!3680071 (= lt!1286462 (get!12853 lt!1286430))))

(declare-fun b!3680072 () Bool)

(declare-fun Unit!56846 () Unit!56841)

(assert (=> b!3680072 (= e!2278824 Unit!56846)))

(declare-fun b!3680073 () Bool)

(declare-fun e!2278791 () Bool)

(declare-fun e!2278795 () Bool)

(declare-fun tp!1118813 () Bool)

(assert (=> b!3680073 (= e!2278791 (and e!2278795 tp!1118813))))

(declare-fun b!3680074 () Bool)

(declare-fun e!2278808 () Unit!56841)

(declare-fun Unit!56847 () Unit!56841)

(assert (=> b!3680074 (= e!2278808 Unit!56847)))

(declare-fun lt!1286407 () Unit!56841)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!794 (Regex!10605 List!38942 C!21396) Unit!56841)

(assert (=> b!3680074 (= lt!1286407 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!794 (regex!5846 rule!403) lt!1286419 lt!1286457))))

(assert (=> b!3680074 false))

(declare-fun b!3680075 () Bool)

(declare-fun res!1495083 () Bool)

(assert (=> b!3680075 (=> res!1495083 e!2278804)))

(declare-fun isEmpty!23054 (List!38942) Bool)

(assert (=> b!3680075 (= res!1495083 (isEmpty!23054 suffix!1395))))

(declare-fun b!3680076 () Bool)

(declare-fun e!2278818 () Bool)

(assert (=> b!3680076 (= e!2278802 e!2278818)))

(declare-fun res!1495074 () Bool)

(assert (=> b!3680076 (=> res!1495074 e!2278818)))

(declare-fun isPrefix!3209 (List!38942 List!38942) Bool)

(assert (=> b!3680076 (= res!1495074 (not (isPrefix!3209 lt!1286434 lt!1286459)))))

(declare-fun lt!1286427 () List!38942)

(assert (=> b!3680076 (isPrefix!3209 lt!1286434 lt!1286427)))

(declare-fun ++!9662 (List!38942 List!38942) List!38942)

(assert (=> b!3680076 (= lt!1286427 (++!9662 lt!1286434 (_2!22476 lt!1286421)))))

(declare-fun lt!1286450 () Unit!56841)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2128 (List!38942 List!38942) Unit!56841)

(assert (=> b!3680076 (= lt!1286450 (lemmaConcatTwoListThenFirstIsPrefix!2128 lt!1286434 (_2!22476 lt!1286421)))))

(declare-fun lt!1286439 () BalanceConc!23380)

(assert (=> b!3680076 (= lt!1286434 (list!14428 lt!1286439))))

(assert (=> b!3680076 (= lt!1286439 (charsOf!3860 (_1!22476 lt!1286421)))))

(assert (=> b!3680076 e!2278789))

(declare-fun res!1495080 () Bool)

(assert (=> b!3680076 (=> (not res!1495080) (not e!2278789))))

(declare-fun isDefined!6552 (Option!8321) Bool)

(assert (=> b!3680076 (= res!1495080 (isDefined!6552 lt!1286430))))

(declare-fun getRuleFromTag!1450 (LexerInterface!5435 List!38943 String!43714) Option!8321)

(assert (=> b!3680076 (= lt!1286430 (getRuleFromTag!1450 thiss!23823 rules!3307 (tag!6648 (rule!8682 (_1!22476 lt!1286421)))))))

(declare-fun lt!1286425 () Unit!56841)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1450 (LexerInterface!5435 List!38943 List!38942 Token!11058) Unit!56841)

(assert (=> b!3680076 (= lt!1286425 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1450 thiss!23823 rules!3307 lt!1286459 (_1!22476 lt!1286421)))))

(declare-fun lt!1286465 () Option!8320)

(declare-fun get!12854 (Option!8320) tuple2!38684)

(assert (=> b!3680076 (= lt!1286421 (get!12854 lt!1286465))))

(declare-fun lt!1286424 () Unit!56841)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1113 (LexerInterface!5435 List!38943 List!38942 List!38942) Unit!56841)

(assert (=> b!3680076 (= lt!1286424 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1113 thiss!23823 rules!3307 lt!1286419 suffix!1395))))

(declare-fun maxPrefix!2969 (LexerInterface!5435 List!38943 List!38942) Option!8320)

(assert (=> b!3680076 (= lt!1286465 (maxPrefix!2969 thiss!23823 rules!3307 lt!1286459))))

(assert (=> b!3680076 (isPrefix!3209 lt!1286419 lt!1286459)))

(declare-fun lt!1286444 () Unit!56841)

(assert (=> b!3680076 (= lt!1286444 (lemmaConcatTwoListThenFirstIsPrefix!2128 lt!1286419 suffix!1395))))

(assert (=> b!3680076 (= lt!1286459 (++!9662 lt!1286419 suffix!1395))))

(declare-fun b!3680077 () Bool)

(declare-fun e!2278790 () Bool)

(declare-fun tp!1118807 () Bool)

(declare-fun inv!21 (TokenValue!6076) Bool)

(assert (=> b!3680077 (= e!2278790 (and (inv!21 (value!187071 token!511)) e!2278801 tp!1118807))))

(declare-fun b!3680078 () Bool)

(declare-fun Unit!56848 () Unit!56841)

(assert (=> b!3680078 (= e!2278811 Unit!56848)))

(declare-fun b!3680079 () Bool)

(declare-fun res!1495081 () Bool)

(declare-fun e!2278806 () Bool)

(assert (=> b!3680079 (=> (not res!1495081) (not e!2278806))))

(declare-fun lt!1286412 () tuple2!38684)

(assert (=> b!3680079 (= res!1495081 (isEmpty!23054 (_2!22476 lt!1286412)))))

(declare-fun b!3680080 () Bool)

(declare-fun res!1495079 () Bool)

(declare-fun e!2278822 () Bool)

(assert (=> b!3680080 (=> (not res!1495079) (not e!2278822))))

(declare-fun contains!7760 (List!38943 Rule!11492) Bool)

(assert (=> b!3680080 (= res!1495079 (contains!7760 rules!3307 rule!403))))

(declare-fun bm!266568 () Bool)

(assert (=> bm!266568 (= call!266574 (usedCharacters!1058 (regex!5846 (rule!8682 (_1!22476 lt!1286421)))))))

(declare-fun b!3680081 () Bool)

(declare-fun e!2278813 () Unit!56841)

(declare-fun Unit!56849 () Unit!56841)

(assert (=> b!3680081 (= e!2278813 Unit!56849)))

(declare-fun lt!1286409 () Unit!56841)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!388 (LexerInterface!5435 List!38943 Rule!11492 List!38942 List!38942 List!38942 Rule!11492) Unit!56841)

(assert (=> b!3680081 (= lt!1286409 (lemmaMaxPrefixOutputsMaxPrefix!388 thiss!23823 rules!3307 (rule!8682 (_1!22476 lt!1286421)) lt!1286434 lt!1286459 lt!1286419 rule!403))))

(assert (=> b!3680081 false))

(declare-fun b!3680082 () Bool)

(assert (=> b!3680082 (= e!2278794 (= (rule!8682 (_1!22476 lt!1286421)) lt!1286462))))

(declare-fun b!3680083 () Bool)

(declare-fun e!2278798 () Bool)

(assert (=> b!3680083 (= e!2278798 e!2278806)))

(declare-fun res!1495091 () Bool)

(assert (=> b!3680083 (=> (not res!1495091) (not e!2278806))))

(assert (=> b!3680083 (= res!1495091 (= (_1!22476 lt!1286412) token!511))))

(declare-fun lt!1286410 () Option!8320)

(assert (=> b!3680083 (= lt!1286412 (get!12854 lt!1286410))))

(declare-fun b!3680084 () Bool)

(assert (=> b!3680084 (= e!2278812 (= lt!1286427 lt!1286459))))

(declare-fun lt!1286435 () List!38942)

(assert (=> b!3680084 (= lt!1286435 (_2!22476 lt!1286421))))

(declare-fun lt!1286461 () Unit!56841)

(assert (=> b!3680084 (= lt!1286461 (lemmaSamePrefixThenSameSuffix!1536 lt!1286419 lt!1286435 lt!1286434 (_2!22476 lt!1286421) lt!1286459))))

(assert (=> b!3680084 (= (maxPrefixOneRule!2107 thiss!23823 rule!403 lt!1286459) (Some!8319 (tuple2!38685 (Token!11059 (apply!9348 (transformation!5846 rule!403) (seqFromList!4395 lt!1286419)) rule!403 (size!29682 lt!1286419) lt!1286419) lt!1286435)))))

(declare-fun lt!1286429 () Unit!56841)

(assert (=> b!3680084 (= lt!1286429 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1163 thiss!23823 rules!3307 lt!1286419 lt!1286459 lt!1286435 rule!403))))

(assert (=> b!3680084 (= lt!1286435 (getSuffix!1762 lt!1286459 lt!1286419))))

(declare-fun lt!1286413 () Unit!56841)

(assert (=> b!3680084 (= lt!1286413 e!2278824)))

(declare-fun c!636544 () Bool)

(assert (=> b!3680084 (= c!636544 (not (= (rule!8682 (_1!22476 lt!1286421)) (rule!8682 token!511))))))

(assert (=> b!3680084 (= lt!1286434 lt!1286419)))

(declare-fun lt!1286453 () Unit!56841)

(declare-fun lemmaIsPrefixSameLengthThenSameList!671 (List!38942 List!38942 List!38942) Unit!56841)

(assert (=> b!3680084 (= lt!1286453 (lemmaIsPrefixSameLengthThenSameList!671 lt!1286434 lt!1286419 lt!1286459))))

(declare-fun lt!1286437 () Unit!56841)

(assert (=> b!3680084 (= lt!1286437 e!2278813)))

(declare-fun c!636542 () Bool)

(declare-fun lt!1286460 () Int)

(declare-fun lt!1286466 () Int)

(assert (=> b!3680084 (= c!636542 (< lt!1286460 lt!1286466))))

(declare-fun lt!1286411 () Unit!56841)

(assert (=> b!3680084 (= lt!1286411 e!2278817)))

(declare-fun c!636541 () Bool)

(assert (=> b!3680084 (= c!636541 (> lt!1286460 lt!1286466))))

(declare-fun lt!1286456 () BalanceConc!23380)

(declare-fun size!29683 (BalanceConc!23380) Int)

(assert (=> b!3680084 (= lt!1286466 (size!29683 lt!1286456))))

(declare-fun lt!1286458 () Unit!56841)

(assert (=> b!3680084 (= lt!1286458 e!2278810)))

(declare-fun c!636543 () Bool)

(assert (=> b!3680084 (= c!636543 (isSeparator!5846 rule!403))))

(declare-fun lt!1286408 () Unit!56841)

(assert (=> b!3680084 (= lt!1286408 e!2278808)))

(declare-fun c!636539 () Bool)

(assert (=> b!3680084 (= c!636539 (not (contains!7759 lt!1286426 lt!1286457)))))

(assert (=> b!3680084 (= lt!1286457 (head!7898 lt!1286434))))

(declare-fun b!3680085 () Bool)

(declare-fun res!1495094 () Bool)

(assert (=> b!3680085 (=> (not res!1495094) (not e!2278822))))

(declare-fun rulesInvariant!4832 (LexerInterface!5435 List!38943) Bool)

(assert (=> b!3680085 (= res!1495094 (rulesInvariant!4832 thiss!23823 rules!3307))))

(declare-fun b!3680086 () Bool)

(assert (=> b!3680086 false))

(declare-fun lt!1286436 () Unit!56841)

(declare-fun call!266572 () Unit!56841)

(assert (=> b!3680086 (= lt!1286436 call!266572)))

(declare-fun call!266571 () Bool)

(assert (=> b!3680086 (not call!266571)))

(declare-fun lt!1286454 () Unit!56841)

(declare-fun anOtherTypeRule!33 () Rule!11492)

(assert (=> b!3680086 (= lt!1286454 (lemmaNonSepRuleNotContainsCharContainedInASepRule!492 thiss!23823 rules!3307 rules!3307 (rule!8682 (_1!22476 lt!1286421)) anOtherTypeRule!33 lt!1286438))))

(declare-fun Unit!56850 () Unit!56841)

(assert (=> b!3680086 (= e!2278821 Unit!56850)))

(declare-fun bm!266569 () Bool)

(assert (=> bm!266569 (= call!266572 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!794 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286434 lt!1286438))))

(declare-fun b!3680087 () Bool)

(declare-fun res!1495084 () Bool)

(assert (=> b!3680087 (=> res!1495084 e!2278802)))

(assert (=> b!3680087 (= res!1495084 (not (contains!7759 (usedCharacters!1058 (regex!5846 anOtherTypeRule!33)) lt!1286438)))))

(declare-fun res!1495086 () Bool)

(assert (=> start!345234 (=> (not res!1495086) (not e!2278822))))

(get-info :version)

(assert (=> start!345234 (= res!1495086 ((_ is Lexer!5433) thiss!23823))))

(assert (=> start!345234 e!2278822))

(assert (=> start!345234 e!2278791))

(declare-fun e!2278796 () Bool)

(assert (=> start!345234 e!2278796))

(assert (=> start!345234 true))

(declare-fun inv!52316 (Token!11058) Bool)

(assert (=> start!345234 (and (inv!52316 token!511) e!2278790)))

(declare-fun e!2278803 () Bool)

(assert (=> start!345234 e!2278803))

(declare-fun e!2278807 () Bool)

(assert (=> start!345234 e!2278807))

(declare-fun tp!1118818 () Bool)

(declare-fun e!2278799 () Bool)

(declare-fun b!3680088 () Bool)

(assert (=> b!3680088 (= e!2278803 (and tp!1118818 (inv!52312 (tag!6648 rule!403)) (inv!52315 (transformation!5846 rule!403)) e!2278799))))

(declare-fun b!3680089 () Bool)

(declare-fun res!1495093 () Bool)

(assert (=> b!3680089 (=> (not res!1495093) (not e!2278806))))

(assert (=> b!3680089 (= res!1495093 (= (rule!8682 token!511) rule!403))))

(declare-fun b!3680090 () Bool)

(declare-fun res!1495088 () Bool)

(assert (=> b!3680090 (=> (not res!1495088) (not e!2278822))))

(declare-fun isEmpty!23055 (List!38943) Bool)

(assert (=> b!3680090 (= res!1495088 (not (isEmpty!23055 rules!3307)))))

(declare-fun bm!266570 () Bool)

(assert (=> bm!266570 (= call!266571 (contains!7759 call!266576 lt!1286438))))

(declare-fun b!3680091 () Bool)

(declare-fun res!1495095 () Bool)

(assert (=> b!3680091 (=> (not res!1495095) (not e!2278822))))

(assert (=> b!3680091 (= res!1495095 (contains!7760 rules!3307 anOtherTypeRule!33))))

(assert (=> b!3680092 (= e!2278799 (and tp!1118805 tp!1118804))))

(declare-fun b!3680093 () Bool)

(declare-fun Unit!56851 () Unit!56841)

(assert (=> b!3680093 (= e!2278816 Unit!56851)))

(declare-fun b!3680094 () Bool)

(assert (=> b!3680094 false))

(declare-fun lt!1286422 () Unit!56841)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!254 (LexerInterface!5435 List!38943 Rule!11492 List!38942 List!38942 Rule!11492) Unit!56841)

(assert (=> b!3680094 (= lt!1286422 (lemmaMaxPrefNoSmallerRuleMatches!254 thiss!23823 rules!3307 (rule!8682 (_1!22476 lt!1286421)) lt!1286419 lt!1286459 rule!403))))

(declare-fun Unit!56852 () Unit!56841)

(assert (=> b!3680094 (= e!2278816 Unit!56852)))

(declare-fun b!3680095 () Bool)

(assert (=> b!3680095 false))

(declare-fun lt!1286451 () Unit!56841)

(assert (=> b!3680095 (= lt!1286451 call!266572)))

(assert (=> b!3680095 (not call!266571)))

(declare-fun lt!1286440 () Unit!56841)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!374 (LexerInterface!5435 List!38943 List!38943 Rule!11492 Rule!11492 C!21396) Unit!56841)

(assert (=> b!3680095 (= lt!1286440 (lemmaSepRuleNotContainsCharContainedInANonSepRule!374 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8682 (_1!22476 lt!1286421)) lt!1286438))))

(declare-fun Unit!56853 () Unit!56841)

(assert (=> b!3680095 (= e!2278821 Unit!56853)))

(declare-fun b!3680096 () Bool)

(assert (=> b!3680096 (= e!2278810 e!2278815)))

(declare-fun c!636545 () Bool)

(assert (=> b!3680096 (= c!636545 (isSeparator!5846 (rule!8682 (_1!22476 lt!1286421))))))

(declare-fun b!3680097 () Bool)

(declare-fun Unit!56854 () Unit!56841)

(assert (=> b!3680097 (= e!2278817 Unit!56854)))

(declare-fun b!3680098 () Bool)

(assert (=> b!3680098 e!2278792))

(declare-fun res!1495078 () Bool)

(assert (=> b!3680098 (=> (not res!1495078) (not e!2278792))))

(assert (=> b!3680098 (= res!1495078 (not (matchR!5174 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286419)))))

(declare-fun lt!1286431 () Unit!56841)

(assert (=> b!3680098 (= lt!1286431 (lemmaMaxPrefNoSmallerRuleMatches!254 thiss!23823 rules!3307 rule!403 lt!1286419 lt!1286419 (rule!8682 (_1!22476 lt!1286421))))))

(assert (=> b!3680098 (isEmpty!23054 (getSuffix!1762 lt!1286419 lt!1286419))))

(declare-fun lt!1286449 () Unit!56841)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!226 (List!38942) Unit!56841)

(assert (=> b!3680098 (= lt!1286449 (lemmaGetSuffixOnListWithItSelfIsEmpty!226 lt!1286419))))

(declare-fun Unit!56855 () Unit!56841)

(assert (=> b!3680098 (= e!2278820 Unit!56855)))

(declare-fun b!3680099 () Bool)

(declare-fun res!1495089 () Bool)

(assert (=> b!3680099 (=> (not res!1495089) (not e!2278822))))

(assert (=> b!3680099 (= res!1495089 (not (= (isSeparator!5846 anOtherTypeRule!33) (isSeparator!5846 rule!403))))))

(declare-fun b!3680100 () Bool)

(declare-fun Unit!56856 () Unit!56841)

(assert (=> b!3680100 (= e!2278813 Unit!56856)))

(declare-fun b!3680101 () Bool)

(assert (=> b!3680101 (= e!2278806 (not e!2278804))))

(declare-fun res!1495075 () Bool)

(assert (=> b!3680101 (=> res!1495075 e!2278804)))

(assert (=> b!3680101 (= res!1495075 (not (matchR!5174 (regex!5846 rule!403) lt!1286419)))))

(declare-fun ruleValid!2110 (LexerInterface!5435 Rule!11492) Bool)

(assert (=> b!3680101 (ruleValid!2110 thiss!23823 rule!403)))

(declare-fun lt!1286445 () Unit!56841)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1264 (LexerInterface!5435 Rule!11492 List!38943) Unit!56841)

(assert (=> b!3680101 (= lt!1286445 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1264 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3680102 () Bool)

(declare-fun Unit!56857 () Unit!56841)

(assert (=> b!3680102 (= e!2278808 Unit!56857)))

(declare-fun b!3680103 () Bool)

(assert (=> b!3680103 false))

(declare-fun lt!1286418 () Unit!56841)

(assert (=> b!3680103 (= lt!1286418 call!266573)))

(assert (=> b!3680103 (not call!266575)))

(declare-fun lt!1286433 () Unit!56841)

(assert (=> b!3680103 (= lt!1286433 (lemmaSepRuleNotContainsCharContainedInANonSepRule!374 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8682 (_1!22476 lt!1286421)) lt!1286457))))

(declare-fun Unit!56858 () Unit!56841)

(assert (=> b!3680103 (= e!2278815 Unit!56858)))

(declare-fun b!3680104 () Bool)

(declare-fun tp_is_empty!18293 () Bool)

(declare-fun tp!1118806 () Bool)

(assert (=> b!3680104 (= e!2278796 (and tp_is_empty!18293 tp!1118806))))

(declare-fun tp!1118812 () Bool)

(declare-fun b!3680105 () Bool)

(assert (=> b!3680105 (= e!2278807 (and tp!1118812 (inv!52312 (tag!6648 anOtherTypeRule!33)) (inv!52315 (transformation!5846 anOtherTypeRule!33)) e!2278805))))

(declare-fun bm!266571 () Bool)

(assert (=> bm!266571 (= call!266573 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!794 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286434 lt!1286457))))

(assert (=> b!3680106 (= e!2278809 (and tp!1118809 tp!1118815))))

(declare-fun b!3680107 () Bool)

(assert (=> b!3680107 (= e!2278822 e!2278798)))

(declare-fun res!1495076 () Bool)

(assert (=> b!3680107 (=> (not res!1495076) (not e!2278798))))

(declare-fun isDefined!6553 (Option!8320) Bool)

(assert (=> b!3680107 (= res!1495076 (isDefined!6553 lt!1286410))))

(assert (=> b!3680107 (= lt!1286410 (maxPrefix!2969 thiss!23823 rules!3307 lt!1286419))))

(assert (=> b!3680107 (= lt!1286419 (list!14428 lt!1286456))))

(assert (=> b!3680107 (= lt!1286456 (charsOf!3860 token!511))))

(declare-fun b!3680108 () Bool)

(assert (=> b!3680108 (= e!2278818 e!2278797)))

(declare-fun res!1495085 () Bool)

(assert (=> b!3680108 (=> res!1495085 e!2278797)))

(declare-fun lt!1286416 () TokenValue!6076)

(assert (=> b!3680108 (= res!1495085 (not (= lt!1286465 (Some!8319 (tuple2!38685 (Token!11059 lt!1286416 (rule!8682 (_1!22476 lt!1286421)) lt!1286460 lt!1286434) (_2!22476 lt!1286421))))))))

(assert (=> b!3680108 (= lt!1286460 (size!29683 lt!1286439))))

(assert (=> b!3680108 (= lt!1286416 (apply!9348 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286439))))

(declare-fun lt!1286415 () Unit!56841)

(declare-fun lemmaCharactersSize!891 (Token!11058) Unit!56841)

(assert (=> b!3680108 (= lt!1286415 (lemmaCharactersSize!891 (_1!22476 lt!1286421)))))

(declare-fun lt!1286463 () Unit!56841)

(declare-fun lemmaEqSameImage!1029 (TokenValueInjection!11580 BalanceConc!23380 BalanceConc!23380) Unit!56841)

(assert (=> b!3680108 (= lt!1286463 (lemmaEqSameImage!1029 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286439 (seqFromList!4395 (originalCharacters!6560 (_1!22476 lt!1286421)))))))

(declare-fun lt!1286446 () Unit!56841)

(declare-fun lemmaSemiInverse!1595 (TokenValueInjection!11580 BalanceConc!23380) Unit!56841)

(assert (=> b!3680108 (= lt!1286446 (lemmaSemiInverse!1595 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286439))))

(declare-fun b!3680109 () Bool)

(declare-fun Unit!56859 () Unit!56841)

(assert (=> b!3680109 (= e!2278820 Unit!56859)))

(declare-fun b!3680110 () Bool)

(declare-fun res!1495077 () Bool)

(assert (=> b!3680110 (=> res!1495077 e!2278818)))

(assert (=> b!3680110 (= res!1495077 (not (matchR!5174 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286434)))))

(declare-fun e!2278793 () Bool)

(assert (=> b!3680111 (= e!2278793 (and tp!1118810 tp!1118814))))

(declare-fun b!3680112 () Bool)

(declare-fun tp!1118808 () Bool)

(assert (=> b!3680112 (= e!2278795 (and tp!1118808 (inv!52312 (tag!6648 (h!44239 rules!3307))) (inv!52315 (transformation!5846 (h!44239 rules!3307))) e!2278793))))

(assert (= (and start!345234 res!1495086) b!3680090))

(assert (= (and b!3680090 res!1495088) b!3680085))

(assert (= (and b!3680085 res!1495094) b!3680080))

(assert (= (and b!3680080 res!1495079) b!3680091))

(assert (= (and b!3680091 res!1495095) b!3680099))

(assert (= (and b!3680099 res!1495089) b!3680107))

(assert (= (and b!3680107 res!1495076) b!3680083))

(assert (= (and b!3680083 res!1495091) b!3680079))

(assert (= (and b!3680079 res!1495081) b!3680089))

(assert (= (and b!3680089 res!1495093) b!3680101))

(assert (= (and b!3680101 (not res!1495075)) b!3680075))

(assert (= (and b!3680075 (not res!1495083)) b!3680063))

(assert (= (and b!3680063 (not res!1495082)) b!3680087))

(assert (= (and b!3680087 (not res!1495084)) b!3680069))

(assert (= (and b!3680069 (not res!1495092)) b!3680076))

(assert (= (and b!3680076 res!1495080) b!3680071))

(assert (= (and b!3680071 res!1495087) b!3680082))

(assert (= (and b!3680076 (not res!1495074)) b!3680110))

(assert (= (and b!3680110 (not res!1495077)) b!3680108))

(assert (= (and b!3680108 (not res!1495085)) b!3680062))

(assert (= (and b!3680062 (not res!1495090)) b!3680084))

(assert (= (and b!3680084 c!636539) b!3680074))

(assert (= (and b!3680084 (not c!636539)) b!3680102))

(assert (= (and b!3680084 c!636543) b!3680070))

(assert (= (and b!3680084 (not c!636543)) b!3680096))

(assert (= (and b!3680070 c!636547) b!3680066))

(assert (= (and b!3680070 (not c!636547)) b!3680078))

(assert (= (and b!3680096 c!636545) b!3680103))

(assert (= (and b!3680096 (not c!636545)) b!3680061))

(assert (= (or b!3680066 b!3680103) bm!266571))

(assert (= (or b!3680066 b!3680103) bm!266568))

(assert (= (or b!3680066 b!3680103) bm!266567))

(assert (= (and b!3680084 c!636541) b!3680064))

(assert (= (and b!3680084 (not c!636541)) b!3680097))

(assert (= (and b!3680064 c!636538) b!3680095))

(assert (= (and b!3680064 (not c!636538)) b!3680086))

(assert (= (or b!3680095 b!3680086) bm!266569))

(assert (= (or b!3680095 b!3680086) bm!266566))

(assert (= (or b!3680095 b!3680086) bm!266570))

(assert (= (and b!3680084 c!636542) b!3680081))

(assert (= (and b!3680084 (not c!636542)) b!3680100))

(assert (= (and b!3680084 c!636544) b!3680065))

(assert (= (and b!3680084 (not c!636544)) b!3680072))

(assert (= (and b!3680065 c!636546) b!3680098))

(assert (= (and b!3680065 (not c!636546)) b!3680109))

(assert (= (and b!3680098 res!1495078) b!3680067))

(assert (= (and b!3680065 c!636540) b!3680094))

(assert (= (and b!3680065 (not c!636540)) b!3680093))

(assert (= b!3680112 b!3680111))

(assert (= b!3680073 b!3680112))

(assert (= (and start!345234 ((_ is Cons!38819) rules!3307)) b!3680073))

(assert (= (and start!345234 ((_ is Cons!38818) suffix!1395)) b!3680104))

(assert (= b!3680060 b!3680106))

(assert (= b!3680077 b!3680060))

(assert (= start!345234 b!3680077))

(assert (= b!3680088 b!3680092))

(assert (= start!345234 b!3680088))

(assert (= b!3680105 b!3680068))

(assert (= start!345234 b!3680105))

(declare-fun m!4190367 () Bool)

(assert (=> b!3680084 m!4190367))

(declare-fun m!4190369 () Bool)

(assert (=> b!3680084 m!4190369))

(declare-fun m!4190371 () Bool)

(assert (=> b!3680084 m!4190371))

(assert (=> b!3680084 m!4190371))

(declare-fun m!4190373 () Bool)

(assert (=> b!3680084 m!4190373))

(declare-fun m!4190375 () Bool)

(assert (=> b!3680084 m!4190375))

(declare-fun m!4190377 () Bool)

(assert (=> b!3680084 m!4190377))

(declare-fun m!4190379 () Bool)

(assert (=> b!3680084 m!4190379))

(declare-fun m!4190381 () Bool)

(assert (=> b!3680084 m!4190381))

(declare-fun m!4190383 () Bool)

(assert (=> b!3680084 m!4190383))

(declare-fun m!4190385 () Bool)

(assert (=> b!3680084 m!4190385))

(declare-fun m!4190387 () Bool)

(assert (=> b!3680084 m!4190387))

(declare-fun m!4190389 () Bool)

(assert (=> bm!266566 m!4190389))

(declare-fun m!4190391 () Bool)

(assert (=> b!3680064 m!4190391))

(declare-fun m!4190393 () Bool)

(assert (=> b!3680064 m!4190393))

(declare-fun m!4190395 () Bool)

(assert (=> b!3680083 m!4190395))

(declare-fun m!4190397 () Bool)

(assert (=> bm!266567 m!4190397))

(declare-fun m!4190399 () Bool)

(assert (=> b!3680071 m!4190399))

(assert (=> b!3680071 m!4190399))

(declare-fun m!4190401 () Bool)

(assert (=> b!3680071 m!4190401))

(assert (=> b!3680071 m!4190401))

(declare-fun m!4190403 () Bool)

(assert (=> b!3680071 m!4190403))

(declare-fun m!4190405 () Bool)

(assert (=> b!3680071 m!4190405))

(declare-fun m!4190407 () Bool)

(assert (=> b!3680060 m!4190407))

(declare-fun m!4190409 () Bool)

(assert (=> b!3680060 m!4190409))

(declare-fun m!4190411 () Bool)

(assert (=> b!3680110 m!4190411))

(declare-fun m!4190413 () Bool)

(assert (=> b!3680074 m!4190413))

(declare-fun m!4190415 () Bool)

(assert (=> b!3680112 m!4190415))

(declare-fun m!4190417 () Bool)

(assert (=> b!3680112 m!4190417))

(declare-fun m!4190419 () Bool)

(assert (=> b!3680075 m!4190419))

(declare-fun m!4190421 () Bool)

(assert (=> bm!266570 m!4190421))

(declare-fun m!4190423 () Bool)

(assert (=> b!3680103 m!4190423))

(declare-fun m!4190425 () Bool)

(assert (=> b!3680081 m!4190425))

(declare-fun m!4190427 () Bool)

(assert (=> b!3680101 m!4190427))

(declare-fun m!4190429 () Bool)

(assert (=> b!3680101 m!4190429))

(declare-fun m!4190431 () Bool)

(assert (=> b!3680101 m!4190431))

(declare-fun m!4190433 () Bool)

(assert (=> b!3680080 m!4190433))

(declare-fun m!4190435 () Bool)

(assert (=> b!3680086 m!4190435))

(declare-fun m!4190437 () Bool)

(assert (=> b!3680108 m!4190437))

(assert (=> b!3680108 m!4190437))

(declare-fun m!4190439 () Bool)

(assert (=> b!3680108 m!4190439))

(declare-fun m!4190441 () Bool)

(assert (=> b!3680108 m!4190441))

(declare-fun m!4190443 () Bool)

(assert (=> b!3680108 m!4190443))

(declare-fun m!4190445 () Bool)

(assert (=> b!3680108 m!4190445))

(declare-fun m!4190447 () Bool)

(assert (=> b!3680108 m!4190447))

(declare-fun m!4190449 () Bool)

(assert (=> b!3680107 m!4190449))

(declare-fun m!4190451 () Bool)

(assert (=> b!3680107 m!4190451))

(declare-fun m!4190453 () Bool)

(assert (=> b!3680107 m!4190453))

(declare-fun m!4190455 () Bool)

(assert (=> b!3680107 m!4190455))

(declare-fun m!4190457 () Bool)

(assert (=> b!3680091 m!4190457))

(declare-fun m!4190459 () Bool)

(assert (=> b!3680079 m!4190459))

(declare-fun m!4190461 () Bool)

(assert (=> bm!266571 m!4190461))

(declare-fun m!4190463 () Bool)

(assert (=> b!3680077 m!4190463))

(declare-fun m!4190465 () Bool)

(assert (=> b!3680069 m!4190465))

(declare-fun m!4190467 () Bool)

(assert (=> b!3680076 m!4190467))

(assert (=> b!3680076 m!4190399))

(declare-fun m!4190469 () Bool)

(assert (=> b!3680076 m!4190469))

(declare-fun m!4190471 () Bool)

(assert (=> b!3680076 m!4190471))

(declare-fun m!4190473 () Bool)

(assert (=> b!3680076 m!4190473))

(declare-fun m!4190475 () Bool)

(assert (=> b!3680076 m!4190475))

(declare-fun m!4190477 () Bool)

(assert (=> b!3680076 m!4190477))

(declare-fun m!4190479 () Bool)

(assert (=> b!3680076 m!4190479))

(declare-fun m!4190481 () Bool)

(assert (=> b!3680076 m!4190481))

(declare-fun m!4190483 () Bool)

(assert (=> b!3680076 m!4190483))

(declare-fun m!4190485 () Bool)

(assert (=> b!3680076 m!4190485))

(declare-fun m!4190487 () Bool)

(assert (=> b!3680076 m!4190487))

(declare-fun m!4190489 () Bool)

(assert (=> b!3680076 m!4190489))

(declare-fun m!4190491 () Bool)

(assert (=> b!3680076 m!4190491))

(declare-fun m!4190493 () Bool)

(assert (=> b!3680076 m!4190493))

(declare-fun m!4190495 () Bool)

(assert (=> b!3680062 m!4190495))

(declare-fun m!4190497 () Bool)

(assert (=> b!3680062 m!4190497))

(declare-fun m!4190499 () Bool)

(assert (=> b!3680062 m!4190499))

(declare-fun m!4190501 () Bool)

(assert (=> b!3680062 m!4190501))

(declare-fun m!4190503 () Bool)

(assert (=> b!3680062 m!4190503))

(declare-fun m!4190505 () Bool)

(assert (=> b!3680062 m!4190505))

(assert (=> b!3680062 m!4190495))

(declare-fun m!4190507 () Bool)

(assert (=> b!3680062 m!4190507))

(declare-fun m!4190509 () Bool)

(assert (=> b!3680065 m!4190509))

(declare-fun m!4190511 () Bool)

(assert (=> b!3680065 m!4190511))

(declare-fun m!4190513 () Bool)

(assert (=> b!3680065 m!4190513))

(declare-fun m!4190515 () Bool)

(assert (=> b!3680085 m!4190515))

(declare-fun m!4190517 () Bool)

(assert (=> start!345234 m!4190517))

(declare-fun m!4190519 () Bool)

(assert (=> b!3680087 m!4190519))

(assert (=> b!3680087 m!4190519))

(declare-fun m!4190521 () Bool)

(assert (=> b!3680087 m!4190521))

(declare-fun m!4190523 () Bool)

(assert (=> bm!266569 m!4190523))

(declare-fun m!4190525 () Bool)

(assert (=> b!3680090 m!4190525))

(assert (=> bm!266568 m!4190389))

(declare-fun m!4190527 () Bool)

(assert (=> b!3680088 m!4190527))

(declare-fun m!4190529 () Bool)

(assert (=> b!3680088 m!4190529))

(declare-fun m!4190531 () Bool)

(assert (=> b!3680066 m!4190531))

(declare-fun m!4190533 () Bool)

(assert (=> b!3680098 m!4190533))

(declare-fun m!4190535 () Bool)

(assert (=> b!3680098 m!4190535))

(declare-fun m!4190537 () Bool)

(assert (=> b!3680098 m!4190537))

(assert (=> b!3680098 m!4190537))

(declare-fun m!4190539 () Bool)

(assert (=> b!3680098 m!4190539))

(declare-fun m!4190541 () Bool)

(assert (=> b!3680098 m!4190541))

(declare-fun m!4190543 () Bool)

(assert (=> b!3680095 m!4190543))

(declare-fun m!4190545 () Bool)

(assert (=> b!3680063 m!4190545))

(declare-fun m!4190547 () Bool)

(assert (=> b!3680063 m!4190547))

(declare-fun m!4190549 () Bool)

(assert (=> b!3680063 m!4190549))

(declare-fun m!4190551 () Bool)

(assert (=> b!3680094 m!4190551))

(declare-fun m!4190553 () Bool)

(assert (=> b!3680105 m!4190553))

(declare-fun m!4190555 () Bool)

(assert (=> b!3680105 m!4190555))

(check-sat (not b!3680086) (not b!3680079) (not b!3680076) (not b!3680107) b_and!274823 b_and!274817 (not b!3680091) b_and!274815 (not b!3680083) (not b!3680095) (not b_next!98187) (not b!3680087) (not b!3680062) (not bm!266569) (not b!3680077) (not b!3680081) (not bm!266566) (not b!3680071) (not b_next!98191) (not b!3680074) (not b!3680090) (not b_next!98189) (not b!3680084) (not bm!266568) (not b_next!98195) (not b_next!98193) b_and!274821 (not start!345234) b_and!274813 (not b!3680105) (not b!3680064) b_and!274825 (not b!3680063) (not b!3680103) (not b!3680094) (not b!3680073) (not b!3680101) (not b!3680104) (not b_next!98199) (not b!3680110) b_and!274811 (not b!3680065) (not bm!266571) (not b!3680108) (not bm!266570) tp_is_empty!18293 (not b!3680112) (not b!3680088) (not b!3680069) (not bm!266567) (not b!3680080) (not b!3680098) (not b!3680066) (not b_next!98197) (not b!3680060) b_and!274819 (not b!3680085) (not b!3680075) (not b_next!98185))
(check-sat (not b_next!98191) (not b_next!98189) b_and!274821 b_and!274823 b_and!274817 b_and!274815 (not b_next!98187) (not b_next!98185) (not b_next!98195) (not b_next!98193) b_and!274813 b_and!274825 (not b_next!98199) b_and!274811 (not b_next!98197) b_and!274819)
(get-model)

(declare-fun d!1080196 () Bool)

(declare-fun res!1495105 () Bool)

(declare-fun e!2278827 () Bool)

(assert (=> d!1080196 (=> (not res!1495105) (not e!2278827))))

(declare-fun rulesValid!2251 (LexerInterface!5435 List!38943) Bool)

(assert (=> d!1080196 (= res!1495105 (rulesValid!2251 thiss!23823 rules!3307))))

(assert (=> d!1080196 (= (rulesInvariant!4832 thiss!23823 rules!3307) e!2278827)))

(declare-fun b!3680115 () Bool)

(declare-datatypes ((List!38944 0))(
  ( (Nil!38820) (Cons!38820 (h!44240 String!43714) (t!300699 List!38944)) )
))
(declare-fun noDuplicateTag!2247 (LexerInterface!5435 List!38943 List!38944) Bool)

(assert (=> b!3680115 (= e!2278827 (noDuplicateTag!2247 thiss!23823 rules!3307 Nil!38820))))

(assert (= (and d!1080196 res!1495105) b!3680115))

(declare-fun m!4190557 () Bool)

(assert (=> d!1080196 m!4190557))

(declare-fun m!4190559 () Bool)

(assert (=> b!3680115 m!4190559))

(assert (=> b!3680085 d!1080196))

(declare-fun d!1080198 () Bool)

(assert (=> d!1080198 (not (contains!7759 (usedCharacters!1058 (regex!5846 (rule!8682 (_1!22476 lt!1286421)))) lt!1286457))))

(declare-fun lt!1286474 () Unit!56841)

(declare-fun choose!21989 (LexerInterface!5435 List!38943 List!38943 Rule!11492 Rule!11492 C!21396) Unit!56841)

(assert (=> d!1080198 (= lt!1286474 (choose!21989 thiss!23823 rules!3307 rules!3307 (rule!8682 (_1!22476 lt!1286421)) rule!403 lt!1286457))))

(assert (=> d!1080198 (rulesInvariant!4832 thiss!23823 rules!3307)))

(assert (=> d!1080198 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!492 thiss!23823 rules!3307 rules!3307 (rule!8682 (_1!22476 lt!1286421)) rule!403 lt!1286457) lt!1286474)))

(declare-fun bs!573533 () Bool)

(assert (= bs!573533 d!1080198))

(assert (=> bs!573533 m!4190389))

(assert (=> bs!573533 m!4190389))

(declare-fun m!4190565 () Bool)

(assert (=> bs!573533 m!4190565))

(declare-fun m!4190571 () Bool)

(assert (=> bs!573533 m!4190571))

(assert (=> bs!573533 m!4190515))

(assert (=> b!3680066 d!1080198))

(declare-fun d!1080206 () Bool)

(assert (=> d!1080206 (= (inv!52312 (tag!6648 anOtherTypeRule!33)) (= (mod (str.len (value!187070 (tag!6648 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3680105 d!1080206))

(declare-fun d!1080208 () Bool)

(declare-fun res!1495114 () Bool)

(declare-fun e!2278848 () Bool)

(assert (=> d!1080208 (=> (not res!1495114) (not e!2278848))))

(declare-fun semiInverseModEq!2495 (Int Int) Bool)

(assert (=> d!1080208 (= res!1495114 (semiInverseModEq!2495 (toChars!8001 (transformation!5846 anOtherTypeRule!33)) (toValue!8142 (transformation!5846 anOtherTypeRule!33))))))

(assert (=> d!1080208 (= (inv!52315 (transformation!5846 anOtherTypeRule!33)) e!2278848)))

(declare-fun b!3680148 () Bool)

(declare-fun equivClasses!2394 (Int Int) Bool)

(assert (=> b!3680148 (= e!2278848 (equivClasses!2394 (toChars!8001 (transformation!5846 anOtherTypeRule!33)) (toValue!8142 (transformation!5846 anOtherTypeRule!33))))))

(assert (= (and d!1080208 res!1495114) b!3680148))

(declare-fun m!4190581 () Bool)

(assert (=> d!1080208 m!4190581))

(declare-fun m!4190583 () Bool)

(assert (=> b!3680148 m!4190583))

(assert (=> b!3680105 d!1080208))

(declare-fun d!1080212 () Bool)

(assert (=> d!1080212 (not (contains!7759 (usedCharacters!1058 (regex!5846 (rule!8682 (_1!22476 lt!1286421)))) lt!1286438))))

(declare-fun lt!1286476 () Unit!56841)

(assert (=> d!1080212 (= lt!1286476 (choose!21989 thiss!23823 rules!3307 rules!3307 (rule!8682 (_1!22476 lt!1286421)) anOtherTypeRule!33 lt!1286438))))

(assert (=> d!1080212 (rulesInvariant!4832 thiss!23823 rules!3307)))

(assert (=> d!1080212 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!492 thiss!23823 rules!3307 rules!3307 (rule!8682 (_1!22476 lt!1286421)) anOtherTypeRule!33 lt!1286438) lt!1286476)))

(declare-fun bs!573534 () Bool)

(assert (= bs!573534 d!1080212))

(assert (=> bs!573534 m!4190389))

(assert (=> bs!573534 m!4190389))

(declare-fun m!4190585 () Bool)

(assert (=> bs!573534 m!4190585))

(declare-fun m!4190587 () Bool)

(assert (=> bs!573534 m!4190587))

(assert (=> bs!573534 m!4190515))

(assert (=> b!3680086 d!1080212))

(declare-fun d!1080214 () Bool)

(declare-fun lt!1286486 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5630 (List!38942) (InoxSet C!21396))

(assert (=> d!1080214 (= lt!1286486 (select (content!5630 call!266574) lt!1286457))))

(declare-fun e!2278867 () Bool)

(assert (=> d!1080214 (= lt!1286486 e!2278867)))

(declare-fun res!1495120 () Bool)

(assert (=> d!1080214 (=> (not res!1495120) (not e!2278867))))

(assert (=> d!1080214 (= res!1495120 ((_ is Cons!38818) call!266574))))

(assert (=> d!1080214 (= (contains!7759 call!266574 lt!1286457) lt!1286486)))

(declare-fun b!3680177 () Bool)

(declare-fun e!2278866 () Bool)

(assert (=> b!3680177 (= e!2278867 e!2278866)))

(declare-fun res!1495119 () Bool)

(assert (=> b!3680177 (=> res!1495119 e!2278866)))

(assert (=> b!3680177 (= res!1495119 (= (h!44238 call!266574) lt!1286457))))

(declare-fun b!3680178 () Bool)

(assert (=> b!3680178 (= e!2278866 (contains!7759 (t!300557 call!266574) lt!1286457))))

(assert (= (and d!1080214 res!1495120) b!3680177))

(assert (= (and b!3680177 (not res!1495119)) b!3680178))

(declare-fun m!4190603 () Bool)

(assert (=> d!1080214 m!4190603))

(declare-fun m!4190605 () Bool)

(assert (=> d!1080214 m!4190605))

(declare-fun m!4190607 () Bool)

(assert (=> b!3680178 m!4190607))

(assert (=> bm!266567 d!1080214))

(declare-fun d!1080226 () Bool)

(assert (=> d!1080226 (not (matchR!5174 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286434))))

(declare-fun lt!1286492 () Unit!56841)

(declare-fun choose!21990 (Regex!10605 List!38942 C!21396) Unit!56841)

(assert (=> d!1080226 (= lt!1286492 (choose!21990 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286434 lt!1286457))))

(declare-fun validRegex!4857 (Regex!10605) Bool)

(assert (=> d!1080226 (validRegex!4857 (regex!5846 (rule!8682 (_1!22476 lt!1286421))))))

(assert (=> d!1080226 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!794 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286434 lt!1286457) lt!1286492)))

(declare-fun bs!573537 () Bool)

(assert (= bs!573537 d!1080226))

(assert (=> bs!573537 m!4190411))

(declare-fun m!4190623 () Bool)

(assert (=> bs!573537 m!4190623))

(declare-fun m!4190625 () Bool)

(assert (=> bs!573537 m!4190625))

(assert (=> bm!266571 d!1080226))

(declare-fun d!1080234 () Bool)

(assert (=> d!1080234 (not (matchR!5174 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286434))))

(declare-fun lt!1286493 () Unit!56841)

(assert (=> d!1080234 (= lt!1286493 (choose!21990 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286434 lt!1286438))))

(assert (=> d!1080234 (validRegex!4857 (regex!5846 (rule!8682 (_1!22476 lt!1286421))))))

(assert (=> d!1080234 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!794 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286434 lt!1286438) lt!1286493)))

(declare-fun bs!573538 () Bool)

(assert (= bs!573538 d!1080234))

(assert (=> bs!573538 m!4190411))

(declare-fun m!4190627 () Bool)

(assert (=> bs!573538 m!4190627))

(assert (=> bs!573538 m!4190625))

(assert (=> bm!266569 d!1080234))

(declare-fun d!1080238 () Bool)

(declare-fun res!1495140 () Bool)

(declare-fun e!2278885 () Bool)

(assert (=> d!1080238 (=> (not res!1495140) (not e!2278885))))

(assert (=> d!1080238 (= res!1495140 (not (isEmpty!23054 (originalCharacters!6560 token!511))))))

(assert (=> d!1080238 (= (inv!52316 token!511) e!2278885)))

(declare-fun b!3680203 () Bool)

(declare-fun res!1495141 () Bool)

(assert (=> b!3680203 (=> (not res!1495141) (not e!2278885))))

(declare-fun dynLambda!17015 (Int TokenValue!6076) BalanceConc!23380)

(assert (=> b!3680203 (= res!1495141 (= (originalCharacters!6560 token!511) (list!14428 (dynLambda!17015 (toChars!8001 (transformation!5846 (rule!8682 token!511))) (value!187071 token!511)))))))

(declare-fun b!3680204 () Bool)

(assert (=> b!3680204 (= e!2278885 (= (size!29681 token!511) (size!29682 (originalCharacters!6560 token!511))))))

(assert (= (and d!1080238 res!1495140) b!3680203))

(assert (= (and b!3680203 res!1495141) b!3680204))

(declare-fun b_lambda!109301 () Bool)

(assert (=> (not b_lambda!109301) (not b!3680203)))

(declare-fun tb!213377 () Bool)

(declare-fun t!300568 () Bool)

(assert (=> (and b!3680092 (= (toChars!8001 (transformation!5846 rule!403)) (toChars!8001 (transformation!5846 (rule!8682 token!511)))) t!300568) tb!213377))

(declare-fun b!3680209 () Bool)

(declare-fun e!2278888 () Bool)

(declare-fun tp!1118824 () Bool)

(declare-fun inv!52319 (Conc!11883) Bool)

(assert (=> b!3680209 (= e!2278888 (and (inv!52319 (c!636549 (dynLambda!17015 (toChars!8001 (transformation!5846 (rule!8682 token!511))) (value!187071 token!511)))) tp!1118824))))

(declare-fun result!259624 () Bool)

(declare-fun inv!52320 (BalanceConc!23380) Bool)

(assert (=> tb!213377 (= result!259624 (and (inv!52320 (dynLambda!17015 (toChars!8001 (transformation!5846 (rule!8682 token!511))) (value!187071 token!511))) e!2278888))))

(assert (= tb!213377 b!3680209))

(declare-fun m!4190643 () Bool)

(assert (=> b!3680209 m!4190643))

(declare-fun m!4190645 () Bool)

(assert (=> tb!213377 m!4190645))

(assert (=> b!3680203 t!300568))

(declare-fun b_and!274835 () Bool)

(assert (= b_and!274813 (and (=> t!300568 result!259624) b_and!274835)))

(declare-fun tb!213379 () Bool)

(declare-fun t!300570 () Bool)

(assert (=> (and b!3680111 (= (toChars!8001 (transformation!5846 (h!44239 rules!3307))) (toChars!8001 (transformation!5846 (rule!8682 token!511)))) t!300570) tb!213379))

(declare-fun result!259628 () Bool)

(assert (= result!259628 result!259624))

(assert (=> b!3680203 t!300570))

(declare-fun b_and!274837 () Bool)

(assert (= b_and!274817 (and (=> t!300570 result!259628) b_and!274837)))

(declare-fun t!300572 () Bool)

(declare-fun tb!213381 () Bool)

(assert (=> (and b!3680068 (= (toChars!8001 (transformation!5846 anOtherTypeRule!33)) (toChars!8001 (transformation!5846 (rule!8682 token!511)))) t!300572) tb!213381))

(declare-fun result!259630 () Bool)

(assert (= result!259630 result!259624))

(assert (=> b!3680203 t!300572))

(declare-fun b_and!274839 () Bool)

(assert (= b_and!274821 (and (=> t!300572 result!259630) b_and!274839)))

(declare-fun t!300574 () Bool)

(declare-fun tb!213383 () Bool)

(assert (=> (and b!3680106 (= (toChars!8001 (transformation!5846 (rule!8682 token!511))) (toChars!8001 (transformation!5846 (rule!8682 token!511)))) t!300574) tb!213383))

(declare-fun result!259632 () Bool)

(assert (= result!259632 result!259624))

(assert (=> b!3680203 t!300574))

(declare-fun b_and!274841 () Bool)

(assert (= b_and!274825 (and (=> t!300574 result!259632) b_and!274841)))

(declare-fun m!4190647 () Bool)

(assert (=> d!1080238 m!4190647))

(declare-fun m!4190649 () Bool)

(assert (=> b!3680203 m!4190649))

(assert (=> b!3680203 m!4190649))

(declare-fun m!4190651 () Bool)

(assert (=> b!3680203 m!4190651))

(declare-fun m!4190653 () Bool)

(assert (=> b!3680204 m!4190653))

(assert (=> start!345234 d!1080238))

(declare-fun d!1080248 () Bool)

(assert (=> d!1080248 (contains!7759 lt!1286434 (head!7898 suffix!1395))))

(declare-fun lt!1286503 () Unit!56841)

(declare-fun choose!21993 (List!38942 List!38942 List!38942 List!38942) Unit!56841)

(assert (=> d!1080248 (= lt!1286503 (choose!21993 lt!1286419 suffix!1395 lt!1286434 lt!1286459))))

(assert (=> d!1080248 (isPrefix!3209 lt!1286434 lt!1286459)))

(assert (=> d!1080248 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!154 lt!1286419 suffix!1395 lt!1286434 lt!1286459) lt!1286503)))

(declare-fun bs!573540 () Bool)

(assert (= bs!573540 d!1080248))

(assert (=> bs!573540 m!4190547))

(assert (=> bs!573540 m!4190547))

(declare-fun m!4190667 () Bool)

(assert (=> bs!573540 m!4190667))

(declare-fun m!4190673 () Bool)

(assert (=> bs!573540 m!4190673))

(assert (=> bs!573540 m!4190481))

(assert (=> b!3680064 d!1080248))

(declare-fun d!1080252 () Bool)

(declare-fun lt!1286504 () Bool)

(assert (=> d!1080252 (= lt!1286504 (select (content!5630 lt!1286434) lt!1286438))))

(declare-fun e!2278911 () Bool)

(assert (=> d!1080252 (= lt!1286504 e!2278911)))

(declare-fun res!1495167 () Bool)

(assert (=> d!1080252 (=> (not res!1495167) (not e!2278911))))

(assert (=> d!1080252 (= res!1495167 ((_ is Cons!38818) lt!1286434))))

(assert (=> d!1080252 (= (contains!7759 lt!1286434 lt!1286438) lt!1286504)))

(declare-fun b!3680252 () Bool)

(declare-fun e!2278910 () Bool)

(assert (=> b!3680252 (= e!2278911 e!2278910)))

(declare-fun res!1495166 () Bool)

(assert (=> b!3680252 (=> res!1495166 e!2278910)))

(assert (=> b!3680252 (= res!1495166 (= (h!44238 lt!1286434) lt!1286438))))

(declare-fun b!3680253 () Bool)

(assert (=> b!3680253 (= e!2278910 (contains!7759 (t!300557 lt!1286434) lt!1286438))))

(assert (= (and d!1080252 res!1495167) b!3680252))

(assert (= (and b!3680252 (not res!1495166)) b!3680253))

(declare-fun m!4190675 () Bool)

(assert (=> d!1080252 m!4190675))

(declare-fun m!4190677 () Bool)

(assert (=> d!1080252 m!4190677))

(declare-fun m!4190679 () Bool)

(assert (=> b!3680253 m!4190679))

(assert (=> b!3680064 d!1080252))

(declare-fun d!1080254 () Bool)

(assert (=> d!1080254 (= (get!12854 lt!1286410) (v!38255 lt!1286410))))

(assert (=> b!3680083 d!1080254))

(declare-fun bm!266599 () Bool)

(declare-fun call!266607 () List!38942)

(declare-fun c!636596 () Bool)

(assert (=> bm!266599 (= call!266607 (usedCharacters!1058 (ite c!636596 (regTwo!21723 (regex!5846 (rule!8682 (_1!22476 lt!1286421)))) (regOne!21722 (regex!5846 (rule!8682 (_1!22476 lt!1286421)))))))))

(declare-fun b!3680283 () Bool)

(declare-fun e!2278933 () List!38942)

(assert (=> b!3680283 (= e!2278933 (Cons!38818 (c!636548 (regex!5846 (rule!8682 (_1!22476 lt!1286421)))) Nil!38818))))

(declare-fun b!3680284 () Bool)

(declare-fun e!2278931 () List!38942)

(declare-fun e!2278932 () List!38942)

(assert (=> b!3680284 (= e!2278931 e!2278932)))

(assert (=> b!3680284 (= c!636596 ((_ is Union!10605) (regex!5846 (rule!8682 (_1!22476 lt!1286421)))))))

(declare-fun d!1080258 () Bool)

(declare-fun c!636595 () Bool)

(assert (=> d!1080258 (= c!636595 (or ((_ is EmptyExpr!10605) (regex!5846 (rule!8682 (_1!22476 lt!1286421)))) ((_ is EmptyLang!10605) (regex!5846 (rule!8682 (_1!22476 lt!1286421))))))))

(declare-fun e!2278930 () List!38942)

(assert (=> d!1080258 (= (usedCharacters!1058 (regex!5846 (rule!8682 (_1!22476 lt!1286421)))) e!2278930)))

(declare-fun bm!266600 () Bool)

(declare-fun call!266604 () List!38942)

(declare-fun call!266606 () List!38942)

(assert (=> bm!266600 (= call!266604 call!266606)))

(declare-fun b!3680285 () Bool)

(declare-fun call!266605 () List!38942)

(assert (=> b!3680285 (= e!2278932 call!266605)))

(declare-fun bm!266601 () Bool)

(declare-fun c!636597 () Bool)

(assert (=> bm!266601 (= call!266606 (usedCharacters!1058 (ite c!636597 (reg!10934 (regex!5846 (rule!8682 (_1!22476 lt!1286421)))) (ite c!636596 (regOne!21723 (regex!5846 (rule!8682 (_1!22476 lt!1286421)))) (regTwo!21722 (regex!5846 (rule!8682 (_1!22476 lt!1286421))))))))))

(declare-fun b!3680286 () Bool)

(assert (=> b!3680286 (= e!2278932 call!266605)))

(declare-fun b!3680287 () Bool)

(assert (=> b!3680287 (= c!636597 ((_ is Star!10605) (regex!5846 (rule!8682 (_1!22476 lt!1286421)))))))

(assert (=> b!3680287 (= e!2278933 e!2278931)))

(declare-fun b!3680288 () Bool)

(assert (=> b!3680288 (= e!2278930 e!2278933)))

(declare-fun c!636598 () Bool)

(assert (=> b!3680288 (= c!636598 ((_ is ElementMatch!10605) (regex!5846 (rule!8682 (_1!22476 lt!1286421)))))))

(declare-fun bm!266602 () Bool)

(assert (=> bm!266602 (= call!266605 (++!9662 (ite c!636596 call!266604 call!266607) (ite c!636596 call!266607 call!266604)))))

(declare-fun b!3680289 () Bool)

(assert (=> b!3680289 (= e!2278931 call!266606)))

(declare-fun b!3680290 () Bool)

(assert (=> b!3680290 (= e!2278930 Nil!38818)))

(assert (= (and d!1080258 c!636595) b!3680290))

(assert (= (and d!1080258 (not c!636595)) b!3680288))

(assert (= (and b!3680288 c!636598) b!3680283))

(assert (= (and b!3680288 (not c!636598)) b!3680287))

(assert (= (and b!3680287 c!636597) b!3680289))

(assert (= (and b!3680287 (not c!636597)) b!3680284))

(assert (= (and b!3680284 c!636596) b!3680286))

(assert (= (and b!3680284 (not c!636596)) b!3680285))

(assert (= (or b!3680286 b!3680285) bm!266600))

(assert (= (or b!3680286 b!3680285) bm!266599))

(assert (= (or b!3680286 b!3680285) bm!266602))

(assert (= (or b!3680289 bm!266600) bm!266601))

(declare-fun m!4190705 () Bool)

(assert (=> bm!266599 m!4190705))

(declare-fun m!4190707 () Bool)

(assert (=> bm!266601 m!4190707))

(declare-fun m!4190709 () Bool)

(assert (=> bm!266602 m!4190709))

(assert (=> bm!266566 d!1080258))

(declare-fun d!1080272 () Bool)

(assert (=> d!1080272 (not (contains!7759 (usedCharacters!1058 (regex!5846 (rule!8682 (_1!22476 lt!1286421)))) lt!1286457))))

(declare-fun lt!1286521 () Unit!56841)

(declare-fun choose!21996 (LexerInterface!5435 List!38943 List!38943 Rule!11492 Rule!11492 C!21396) Unit!56841)

(assert (=> d!1080272 (= lt!1286521 (choose!21996 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8682 (_1!22476 lt!1286421)) lt!1286457))))

(assert (=> d!1080272 (rulesInvariant!4832 thiss!23823 rules!3307)))

(assert (=> d!1080272 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!374 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8682 (_1!22476 lt!1286421)) lt!1286457) lt!1286521)))

(declare-fun bs!573545 () Bool)

(assert (= bs!573545 d!1080272))

(assert (=> bs!573545 m!4190389))

(assert (=> bs!573545 m!4190389))

(assert (=> bs!573545 m!4190565))

(declare-fun m!4190723 () Bool)

(assert (=> bs!573545 m!4190723))

(assert (=> bs!573545 m!4190515))

(assert (=> b!3680103 d!1080272))

(declare-fun d!1080282 () Bool)

(declare-fun lt!1286522 () Bool)

(assert (=> d!1080282 (= lt!1286522 (select (content!5630 lt!1286426) lt!1286457))))

(declare-fun e!2278942 () Bool)

(assert (=> d!1080282 (= lt!1286522 e!2278942)))

(declare-fun res!1495189 () Bool)

(assert (=> d!1080282 (=> (not res!1495189) (not e!2278942))))

(assert (=> d!1080282 (= res!1495189 ((_ is Cons!38818) lt!1286426))))

(assert (=> d!1080282 (= (contains!7759 lt!1286426 lt!1286457) lt!1286522)))

(declare-fun b!3680298 () Bool)

(declare-fun e!2278941 () Bool)

(assert (=> b!3680298 (= e!2278942 e!2278941)))

(declare-fun res!1495188 () Bool)

(assert (=> b!3680298 (=> res!1495188 e!2278941)))

(assert (=> b!3680298 (= res!1495188 (= (h!44238 lt!1286426) lt!1286457))))

(declare-fun b!3680299 () Bool)

(assert (=> b!3680299 (= e!2278941 (contains!7759 (t!300557 lt!1286426) lt!1286457))))

(assert (= (and d!1080282 res!1495189) b!3680298))

(assert (= (and b!3680298 (not res!1495188)) b!3680299))

(declare-fun m!4190725 () Bool)

(assert (=> d!1080282 m!4190725))

(declare-fun m!4190727 () Bool)

(assert (=> d!1080282 m!4190727))

(declare-fun m!4190729 () Bool)

(assert (=> b!3680299 m!4190729))

(assert (=> b!3680084 d!1080282))

(declare-fun d!1080284 () Bool)

(assert (=> d!1080284 (= lt!1286434 lt!1286419)))

(declare-fun lt!1286525 () Unit!56841)

(declare-fun choose!21997 (List!38942 List!38942 List!38942) Unit!56841)

(assert (=> d!1080284 (= lt!1286525 (choose!21997 lt!1286434 lt!1286419 lt!1286459))))

(assert (=> d!1080284 (isPrefix!3209 lt!1286434 lt!1286459)))

(assert (=> d!1080284 (= (lemmaIsPrefixSameLengthThenSameList!671 lt!1286434 lt!1286419 lt!1286459) lt!1286525)))

(declare-fun bs!573546 () Bool)

(assert (= bs!573546 d!1080284))

(declare-fun m!4190731 () Bool)

(assert (=> bs!573546 m!4190731))

(assert (=> bs!573546 m!4190481))

(assert (=> b!3680084 d!1080284))

(declare-fun b!3680357 () Bool)

(declare-fun res!1495226 () Bool)

(declare-fun e!2278972 () Bool)

(assert (=> b!3680357 (=> (not res!1495226) (not e!2278972))))

(declare-fun lt!1286565 () Option!8320)

(assert (=> b!3680357 (= res!1495226 (= (rule!8682 (_1!22476 (get!12854 lt!1286565))) rule!403))))

(declare-fun b!3680358 () Bool)

(declare-fun e!2278970 () Bool)

(declare-datatypes ((tuple2!38686 0))(
  ( (tuple2!38687 (_1!22477 List!38942) (_2!22477 List!38942)) )
))
(declare-fun findLongestMatchInner!1090 (Regex!10605 List!38942 Int List!38942 List!38942 Int) tuple2!38686)

(assert (=> b!3680358 (= e!2278970 (matchR!5174 (regex!5846 rule!403) (_1!22477 (findLongestMatchInner!1090 (regex!5846 rule!403) Nil!38818 (size!29682 Nil!38818) lt!1286459 lt!1286459 (size!29682 lt!1286459)))))))

(declare-fun b!3680359 () Bool)

(declare-fun e!2278969 () Option!8320)

(declare-fun lt!1286564 () tuple2!38686)

(assert (=> b!3680359 (= e!2278969 (Some!8319 (tuple2!38685 (Token!11059 (apply!9348 (transformation!5846 rule!403) (seqFromList!4395 (_1!22477 lt!1286564))) rule!403 (size!29683 (seqFromList!4395 (_1!22477 lt!1286564))) (_1!22477 lt!1286564)) (_2!22477 lt!1286564))))))

(declare-fun lt!1286563 () Unit!56841)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1063 (Regex!10605 List!38942) Unit!56841)

(assert (=> b!3680359 (= lt!1286563 (longestMatchIsAcceptedByMatchOrIsEmpty!1063 (regex!5846 rule!403) lt!1286459))))

(declare-fun res!1495228 () Bool)

(assert (=> b!3680359 (= res!1495228 (isEmpty!23054 (_1!22477 (findLongestMatchInner!1090 (regex!5846 rule!403) Nil!38818 (size!29682 Nil!38818) lt!1286459 lt!1286459 (size!29682 lt!1286459)))))))

(assert (=> b!3680359 (=> res!1495228 e!2278970)))

(assert (=> b!3680359 e!2278970))

(declare-fun lt!1286566 () Unit!56841)

(assert (=> b!3680359 (= lt!1286566 lt!1286563)))

(declare-fun lt!1286567 () Unit!56841)

(assert (=> b!3680359 (= lt!1286567 (lemmaSemiInverse!1595 (transformation!5846 rule!403) (seqFromList!4395 (_1!22477 lt!1286564))))))

(declare-fun b!3680360 () Bool)

(assert (=> b!3680360 (= e!2278972 (= (size!29681 (_1!22476 (get!12854 lt!1286565))) (size!29682 (originalCharacters!6560 (_1!22476 (get!12854 lt!1286565))))))))

(declare-fun b!3680362 () Bool)

(declare-fun res!1495227 () Bool)

(assert (=> b!3680362 (=> (not res!1495227) (not e!2278972))))

(assert (=> b!3680362 (= res!1495227 (= (++!9662 (list!14428 (charsOf!3860 (_1!22476 (get!12854 lt!1286565)))) (_2!22476 (get!12854 lt!1286565))) lt!1286459))))

(declare-fun b!3680363 () Bool)

(declare-fun res!1495225 () Bool)

(assert (=> b!3680363 (=> (not res!1495225) (not e!2278972))))

(assert (=> b!3680363 (= res!1495225 (= (value!187071 (_1!22476 (get!12854 lt!1286565))) (apply!9348 (transformation!5846 (rule!8682 (_1!22476 (get!12854 lt!1286565)))) (seqFromList!4395 (originalCharacters!6560 (_1!22476 (get!12854 lt!1286565)))))))))

(declare-fun b!3680364 () Bool)

(assert (=> b!3680364 (= e!2278969 None!8319)))

(declare-fun b!3680365 () Bool)

(declare-fun res!1495230 () Bool)

(assert (=> b!3680365 (=> (not res!1495230) (not e!2278972))))

(assert (=> b!3680365 (= res!1495230 (< (size!29682 (_2!22476 (get!12854 lt!1286565))) (size!29682 lt!1286459)))))

(declare-fun d!1080286 () Bool)

(declare-fun e!2278971 () Bool)

(assert (=> d!1080286 e!2278971))

(declare-fun res!1495231 () Bool)

(assert (=> d!1080286 (=> res!1495231 e!2278971)))

(declare-fun isEmpty!23056 (Option!8320) Bool)

(assert (=> d!1080286 (= res!1495231 (isEmpty!23056 lt!1286565))))

(assert (=> d!1080286 (= lt!1286565 e!2278969)))

(declare-fun c!636612 () Bool)

(assert (=> d!1080286 (= c!636612 (isEmpty!23054 (_1!22477 lt!1286564)))))

(declare-fun findLongestMatch!1005 (Regex!10605 List!38942) tuple2!38686)

(assert (=> d!1080286 (= lt!1286564 (findLongestMatch!1005 (regex!5846 rule!403) lt!1286459))))

(assert (=> d!1080286 (ruleValid!2110 thiss!23823 rule!403)))

(assert (=> d!1080286 (= (maxPrefixOneRule!2107 thiss!23823 rule!403 lt!1286459) lt!1286565)))

(declare-fun b!3680361 () Bool)

(assert (=> b!3680361 (= e!2278971 e!2278972)))

(declare-fun res!1495229 () Bool)

(assert (=> b!3680361 (=> (not res!1495229) (not e!2278972))))

(assert (=> b!3680361 (= res!1495229 (matchR!5174 (regex!5846 rule!403) (list!14428 (charsOf!3860 (_1!22476 (get!12854 lt!1286565))))))))

(assert (= (and d!1080286 c!636612) b!3680364))

(assert (= (and d!1080286 (not c!636612)) b!3680359))

(assert (= (and b!3680359 (not res!1495228)) b!3680358))

(assert (= (and d!1080286 (not res!1495231)) b!3680361))

(assert (= (and b!3680361 res!1495229) b!3680362))

(assert (= (and b!3680362 res!1495227) b!3680365))

(assert (= (and b!3680365 res!1495230) b!3680357))

(assert (= (and b!3680357 res!1495226) b!3680363))

(assert (= (and b!3680363 res!1495225) b!3680360))

(declare-fun m!4190793 () Bool)

(assert (=> b!3680360 m!4190793))

(declare-fun m!4190795 () Bool)

(assert (=> b!3680360 m!4190795))

(assert (=> b!3680361 m!4190793))

(declare-fun m!4190799 () Bool)

(assert (=> b!3680361 m!4190799))

(assert (=> b!3680361 m!4190799))

(declare-fun m!4190801 () Bool)

(assert (=> b!3680361 m!4190801))

(assert (=> b!3680361 m!4190801))

(declare-fun m!4190803 () Bool)

(assert (=> b!3680361 m!4190803))

(declare-fun m!4190805 () Bool)

(assert (=> b!3680358 m!4190805))

(declare-fun m!4190807 () Bool)

(assert (=> b!3680358 m!4190807))

(assert (=> b!3680358 m!4190805))

(assert (=> b!3680358 m!4190807))

(declare-fun m!4190809 () Bool)

(assert (=> b!3680358 m!4190809))

(declare-fun m!4190811 () Bool)

(assert (=> b!3680358 m!4190811))

(assert (=> b!3680363 m!4190793))

(declare-fun m!4190813 () Bool)

(assert (=> b!3680363 m!4190813))

(assert (=> b!3680363 m!4190813))

(declare-fun m!4190817 () Bool)

(assert (=> b!3680363 m!4190817))

(declare-fun m!4190819 () Bool)

(assert (=> b!3680359 m!4190819))

(assert (=> b!3680359 m!4190819))

(declare-fun m!4190821 () Bool)

(assert (=> b!3680359 m!4190821))

(assert (=> b!3680359 m!4190819))

(declare-fun m!4190823 () Bool)

(assert (=> b!3680359 m!4190823))

(assert (=> b!3680359 m!4190807))

(assert (=> b!3680359 m!4190819))

(declare-fun m!4190825 () Bool)

(assert (=> b!3680359 m!4190825))

(assert (=> b!3680359 m!4190805))

(assert (=> b!3680359 m!4190807))

(assert (=> b!3680359 m!4190809))

(declare-fun m!4190827 () Bool)

(assert (=> b!3680359 m!4190827))

(declare-fun m!4190829 () Bool)

(assert (=> b!3680359 m!4190829))

(assert (=> b!3680359 m!4190805))

(declare-fun m!4190831 () Bool)

(assert (=> d!1080286 m!4190831))

(declare-fun m!4190833 () Bool)

(assert (=> d!1080286 m!4190833))

(declare-fun m!4190835 () Bool)

(assert (=> d!1080286 m!4190835))

(assert (=> d!1080286 m!4190429))

(assert (=> b!3680357 m!4190793))

(assert (=> b!3680362 m!4190793))

(assert (=> b!3680362 m!4190799))

(assert (=> b!3680362 m!4190799))

(assert (=> b!3680362 m!4190801))

(assert (=> b!3680362 m!4190801))

(declare-fun m!4190839 () Bool)

(assert (=> b!3680362 m!4190839))

(assert (=> b!3680365 m!4190793))

(declare-fun m!4190841 () Bool)

(assert (=> b!3680365 m!4190841))

(assert (=> b!3680365 m!4190807))

(assert (=> b!3680084 d!1080286))

(declare-fun d!1080304 () Bool)

(declare-fun lt!1286572 () Int)

(assert (=> d!1080304 (>= lt!1286572 0)))

(declare-fun e!2278985 () Int)

(assert (=> d!1080304 (= lt!1286572 e!2278985)))

(declare-fun c!636619 () Bool)

(assert (=> d!1080304 (= c!636619 ((_ is Nil!38818) lt!1286419))))

(assert (=> d!1080304 (= (size!29682 lt!1286419) lt!1286572)))

(declare-fun b!3680383 () Bool)

(assert (=> b!3680383 (= e!2278985 0)))

(declare-fun b!3680384 () Bool)

(assert (=> b!3680384 (= e!2278985 (+ 1 (size!29682 (t!300557 lt!1286419))))))

(assert (= (and d!1080304 c!636619) b!3680383))

(assert (= (and d!1080304 (not c!636619)) b!3680384))

(declare-fun m!4190859 () Bool)

(assert (=> b!3680384 m!4190859))

(assert (=> b!3680084 d!1080304))

(declare-fun d!1080318 () Bool)

(assert (=> d!1080318 (= lt!1286435 (_2!22476 lt!1286421))))

(declare-fun lt!1286575 () Unit!56841)

(declare-fun choose!22000 (List!38942 List!38942 List!38942 List!38942 List!38942) Unit!56841)

(assert (=> d!1080318 (= lt!1286575 (choose!22000 lt!1286419 lt!1286435 lt!1286434 (_2!22476 lt!1286421) lt!1286459))))

(assert (=> d!1080318 (isPrefix!3209 lt!1286419 lt!1286459)))

(assert (=> d!1080318 (= (lemmaSamePrefixThenSameSuffix!1536 lt!1286419 lt!1286435 lt!1286434 (_2!22476 lt!1286421) lt!1286459) lt!1286575)))

(declare-fun bs!573551 () Bool)

(assert (= bs!573551 d!1080318))

(declare-fun m!4190861 () Bool)

(assert (=> bs!573551 m!4190861))

(assert (=> bs!573551 m!4190469))

(assert (=> b!3680084 d!1080318))

(declare-fun d!1080320 () Bool)

(declare-fun lt!1286578 () List!38942)

(assert (=> d!1080320 (= (++!9662 lt!1286419 lt!1286578) lt!1286459)))

(declare-fun e!2278997 () List!38942)

(assert (=> d!1080320 (= lt!1286578 e!2278997)))

(declare-fun c!636628 () Bool)

(assert (=> d!1080320 (= c!636628 ((_ is Cons!38818) lt!1286419))))

(assert (=> d!1080320 (>= (size!29682 lt!1286459) (size!29682 lt!1286419))))

(assert (=> d!1080320 (= (getSuffix!1762 lt!1286459 lt!1286419) lt!1286578)))

(declare-fun b!3680404 () Bool)

(declare-fun tail!5693 (List!38942) List!38942)

(assert (=> b!3680404 (= e!2278997 (getSuffix!1762 (tail!5693 lt!1286459) (t!300557 lt!1286419)))))

(declare-fun b!3680405 () Bool)

(assert (=> b!3680405 (= e!2278997 lt!1286459)))

(assert (= (and d!1080320 c!636628) b!3680404))

(assert (= (and d!1080320 (not c!636628)) b!3680405))

(declare-fun m!4190869 () Bool)

(assert (=> d!1080320 m!4190869))

(assert (=> d!1080320 m!4190807))

(assert (=> d!1080320 m!4190383))

(declare-fun m!4190871 () Bool)

(assert (=> b!3680404 m!4190871))

(assert (=> b!3680404 m!4190871))

(declare-fun m!4190873 () Bool)

(assert (=> b!3680404 m!4190873))

(assert (=> b!3680084 d!1080320))

(declare-fun d!1080324 () Bool)

(declare-fun dynLambda!17016 (Int BalanceConc!23380) TokenValue!6076)

(assert (=> d!1080324 (= (apply!9348 (transformation!5846 rule!403) (seqFromList!4395 lt!1286419)) (dynLambda!17016 (toValue!8142 (transformation!5846 rule!403)) (seqFromList!4395 lt!1286419)))))

(declare-fun b_lambda!109305 () Bool)

(assert (=> (not b_lambda!109305) (not d!1080324)))

(declare-fun t!300584 () Bool)

(declare-fun tb!213393 () Bool)

(assert (=> (and b!3680092 (= (toValue!8142 (transformation!5846 rule!403)) (toValue!8142 (transformation!5846 rule!403))) t!300584) tb!213393))

(declare-fun result!259644 () Bool)

(assert (=> tb!213393 (= result!259644 (inv!21 (dynLambda!17016 (toValue!8142 (transformation!5846 rule!403)) (seqFromList!4395 lt!1286419))))))

(declare-fun m!4190877 () Bool)

(assert (=> tb!213393 m!4190877))

(assert (=> d!1080324 t!300584))

(declare-fun b_and!274851 () Bool)

(assert (= b_and!274811 (and (=> t!300584 result!259644) b_and!274851)))

(declare-fun tb!213395 () Bool)

(declare-fun t!300586 () Bool)

(assert (=> (and b!3680111 (= (toValue!8142 (transformation!5846 (h!44239 rules!3307))) (toValue!8142 (transformation!5846 rule!403))) t!300586) tb!213395))

(declare-fun result!259648 () Bool)

(assert (= result!259648 result!259644))

(assert (=> d!1080324 t!300586))

(declare-fun b_and!274853 () Bool)

(assert (= b_and!274815 (and (=> t!300586 result!259648) b_and!274853)))

(declare-fun tb!213397 () Bool)

(declare-fun t!300588 () Bool)

(assert (=> (and b!3680068 (= (toValue!8142 (transformation!5846 anOtherTypeRule!33)) (toValue!8142 (transformation!5846 rule!403))) t!300588) tb!213397))

(declare-fun result!259650 () Bool)

(assert (= result!259650 result!259644))

(assert (=> d!1080324 t!300588))

(declare-fun b_and!274855 () Bool)

(assert (= b_and!274819 (and (=> t!300588 result!259650) b_and!274855)))

(declare-fun tb!213399 () Bool)

(declare-fun t!300590 () Bool)

(assert (=> (and b!3680106 (= (toValue!8142 (transformation!5846 (rule!8682 token!511))) (toValue!8142 (transformation!5846 rule!403))) t!300590) tb!213399))

(declare-fun result!259652 () Bool)

(assert (= result!259652 result!259644))

(assert (=> d!1080324 t!300590))

(declare-fun b_and!274857 () Bool)

(assert (= b_and!274823 (and (=> t!300590 result!259652) b_and!274857)))

(assert (=> d!1080324 m!4190371))

(declare-fun m!4190881 () Bool)

(assert (=> d!1080324 m!4190881))

(assert (=> b!3680084 d!1080324))

(declare-fun d!1080330 () Bool)

(assert (=> d!1080330 (= (maxPrefixOneRule!2107 thiss!23823 rule!403 lt!1286459) (Some!8319 (tuple2!38685 (Token!11059 (apply!9348 (transformation!5846 rule!403) (seqFromList!4395 lt!1286419)) rule!403 (size!29682 lt!1286419) lt!1286419) lt!1286435)))))

(declare-fun lt!1286584 () Unit!56841)

(declare-fun choose!22001 (LexerInterface!5435 List!38943 List!38942 List!38942 List!38942 Rule!11492) Unit!56841)

(assert (=> d!1080330 (= lt!1286584 (choose!22001 thiss!23823 rules!3307 lt!1286419 lt!1286459 lt!1286435 rule!403))))

(assert (=> d!1080330 (not (isEmpty!23055 rules!3307))))

(assert (=> d!1080330 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1163 thiss!23823 rules!3307 lt!1286419 lt!1286459 lt!1286435 rule!403) lt!1286584)))

(declare-fun bs!573554 () Bool)

(assert (= bs!573554 d!1080330))

(assert (=> bs!573554 m!4190525))

(assert (=> bs!573554 m!4190377))

(assert (=> bs!573554 m!4190371))

(assert (=> bs!573554 m!4190373))

(assert (=> bs!573554 m!4190371))

(assert (=> bs!573554 m!4190383))

(declare-fun m!4190883 () Bool)

(assert (=> bs!573554 m!4190883))

(assert (=> b!3680084 d!1080330))

(declare-fun d!1080332 () Bool)

(declare-fun lt!1286587 () Int)

(assert (=> d!1080332 (= lt!1286587 (size!29682 (list!14428 lt!1286456)))))

(declare-fun size!29684 (Conc!11883) Int)

(assert (=> d!1080332 (= lt!1286587 (size!29684 (c!636549 lt!1286456)))))

(assert (=> d!1080332 (= (size!29683 lt!1286456) lt!1286587)))

(declare-fun bs!573555 () Bool)

(assert (= bs!573555 d!1080332))

(assert (=> bs!573555 m!4190453))

(assert (=> bs!573555 m!4190453))

(declare-fun m!4190885 () Bool)

(assert (=> bs!573555 m!4190885))

(declare-fun m!4190887 () Bool)

(assert (=> bs!573555 m!4190887))

(assert (=> b!3680084 d!1080332))

(declare-fun d!1080334 () Bool)

(assert (=> d!1080334 (= (head!7898 lt!1286434) (h!44238 lt!1286434))))

(assert (=> b!3680084 d!1080334))

(declare-fun d!1080336 () Bool)

(declare-fun fromListB!2031 (List!38942) BalanceConc!23380)

(assert (=> d!1080336 (= (seqFromList!4395 lt!1286419) (fromListB!2031 lt!1286419))))

(declare-fun bs!573556 () Bool)

(assert (= bs!573556 d!1080336))

(declare-fun m!4190889 () Bool)

(assert (=> bs!573556 m!4190889))

(assert (=> b!3680084 d!1080336))

(declare-fun b!3680418 () Bool)

(declare-fun e!2279007 () Int)

(assert (=> b!3680418 (= e!2279007 (+ 1 (getIndex!514 (t!300558 rules!3307) (rule!8682 (_1!22476 lt!1286421)))))))

(declare-fun d!1080338 () Bool)

(declare-fun lt!1286590 () Int)

(assert (=> d!1080338 (>= lt!1286590 0)))

(declare-fun e!2279006 () Int)

(assert (=> d!1080338 (= lt!1286590 e!2279006)))

(declare-fun c!636634 () Bool)

(assert (=> d!1080338 (= c!636634 (and ((_ is Cons!38819) rules!3307) (= (h!44239 rules!3307) (rule!8682 (_1!22476 lt!1286421)))))))

(assert (=> d!1080338 (contains!7760 rules!3307 (rule!8682 (_1!22476 lt!1286421)))))

(assert (=> d!1080338 (= (getIndex!514 rules!3307 (rule!8682 (_1!22476 lt!1286421))) lt!1286590)))

(declare-fun b!3680417 () Bool)

(assert (=> b!3680417 (= e!2279006 e!2279007)))

(declare-fun c!636633 () Bool)

(assert (=> b!3680417 (= c!636633 (and ((_ is Cons!38819) rules!3307) (not (= (h!44239 rules!3307) (rule!8682 (_1!22476 lt!1286421))))))))

(declare-fun b!3680416 () Bool)

(assert (=> b!3680416 (= e!2279006 0)))

(declare-fun b!3680419 () Bool)

(assert (=> b!3680419 (= e!2279007 (- 1))))

(assert (= (and d!1080338 c!636634) b!3680416))

(assert (= (and d!1080338 (not c!636634)) b!3680417))

(assert (= (and b!3680417 c!636633) b!3680418))

(assert (= (and b!3680417 (not c!636633)) b!3680419))

(declare-fun m!4190891 () Bool)

(assert (=> b!3680418 m!4190891))

(declare-fun m!4190893 () Bool)

(assert (=> d!1080338 m!4190893))

(assert (=> b!3680065 d!1080338))

(declare-fun b!3680422 () Bool)

(declare-fun e!2279009 () Int)

(assert (=> b!3680422 (= e!2279009 (+ 1 (getIndex!514 (t!300558 rules!3307) rule!403)))))

(declare-fun d!1080340 () Bool)

(declare-fun lt!1286591 () Int)

(assert (=> d!1080340 (>= lt!1286591 0)))

(declare-fun e!2279008 () Int)

(assert (=> d!1080340 (= lt!1286591 e!2279008)))

(declare-fun c!636636 () Bool)

(assert (=> d!1080340 (= c!636636 (and ((_ is Cons!38819) rules!3307) (= (h!44239 rules!3307) rule!403)))))

(assert (=> d!1080340 (contains!7760 rules!3307 rule!403)))

(assert (=> d!1080340 (= (getIndex!514 rules!3307 rule!403) lt!1286591)))

(declare-fun b!3680421 () Bool)

(assert (=> b!3680421 (= e!2279008 e!2279009)))

(declare-fun c!636635 () Bool)

(assert (=> b!3680421 (= c!636635 (and ((_ is Cons!38819) rules!3307) (not (= (h!44239 rules!3307) rule!403))))))

(declare-fun b!3680420 () Bool)

(assert (=> b!3680420 (= e!2279008 0)))

(declare-fun b!3680423 () Bool)

(assert (=> b!3680423 (= e!2279009 (- 1))))

(assert (= (and d!1080340 c!636636) b!3680420))

(assert (= (and d!1080340 (not c!636636)) b!3680421))

(assert (= (and b!3680421 c!636635) b!3680422))

(assert (= (and b!3680421 (not c!636635)) b!3680423))

(declare-fun m!4190895 () Bool)

(assert (=> b!3680422 m!4190895))

(assert (=> d!1080340 m!4190433))

(assert (=> b!3680065 d!1080340))

(declare-fun d!1080342 () Bool)

(assert (=> d!1080342 (= (rule!8682 (_1!22476 lt!1286421)) rule!403)))

(declare-fun lt!1286604 () Unit!56841)

(declare-fun choose!22002 (List!38943 Rule!11492 Rule!11492) Unit!56841)

(assert (=> d!1080342 (= lt!1286604 (choose!22002 rules!3307 (rule!8682 (_1!22476 lt!1286421)) rule!403))))

(assert (=> d!1080342 (contains!7760 rules!3307 (rule!8682 (_1!22476 lt!1286421)))))

(assert (=> d!1080342 (= (lemmaSameIndexThenSameElement!246 rules!3307 (rule!8682 (_1!22476 lt!1286421)) rule!403) lt!1286604)))

(declare-fun bs!573557 () Bool)

(assert (= bs!573557 d!1080342))

(declare-fun m!4190897 () Bool)

(assert (=> bs!573557 m!4190897))

(assert (=> bs!573557 m!4190893))

(assert (=> b!3680065 d!1080342))

(declare-fun d!1080344 () Bool)

(assert (=> d!1080344 (= (isEmpty!23055 rules!3307) ((_ is Nil!38819) rules!3307))))

(assert (=> b!3680090 d!1080344))

(declare-fun b!3680479 () Bool)

(declare-fun res!1495281 () Bool)

(declare-fun e!2279038 () Bool)

(assert (=> b!3680479 (=> res!1495281 e!2279038)))

(assert (=> b!3680479 (= res!1495281 (not (isEmpty!23054 (tail!5693 (list!14428 (charsOf!3860 (_1!22476 lt!1286421)))))))))

(declare-fun b!3680480 () Bool)

(declare-fun e!2279036 () Bool)

(declare-fun nullable!3695 (Regex!10605) Bool)

(assert (=> b!3680480 (= e!2279036 (nullable!3695 (regex!5846 lt!1286462)))))

(declare-fun b!3680481 () Bool)

(assert (=> b!3680481 (= e!2279038 (not (= (head!7898 (list!14428 (charsOf!3860 (_1!22476 lt!1286421)))) (c!636548 (regex!5846 lt!1286462)))))))

(declare-fun b!3680482 () Bool)

(declare-fun res!1495279 () Bool)

(declare-fun e!2279033 () Bool)

(assert (=> b!3680482 (=> res!1495279 e!2279033)))

(assert (=> b!3680482 (= res!1495279 (not ((_ is ElementMatch!10605) (regex!5846 lt!1286462))))))

(declare-fun e!2279037 () Bool)

(assert (=> b!3680482 (= e!2279037 e!2279033)))

(declare-fun b!3680483 () Bool)

(declare-fun e!2279039 () Bool)

(assert (=> b!3680483 (= e!2279033 e!2279039)))

(declare-fun res!1495276 () Bool)

(assert (=> b!3680483 (=> (not res!1495276) (not e!2279039))))

(declare-fun lt!1286614 () Bool)

(assert (=> b!3680483 (= res!1495276 (not lt!1286614))))

(declare-fun b!3680484 () Bool)

(declare-fun e!2279034 () Bool)

(assert (=> b!3680484 (= e!2279034 e!2279037)))

(declare-fun c!636647 () Bool)

(assert (=> b!3680484 (= c!636647 ((_ is EmptyLang!10605) (regex!5846 lt!1286462)))))

(declare-fun b!3680485 () Bool)

(assert (=> b!3680485 (= e!2279037 (not lt!1286614))))

(declare-fun b!3680486 () Bool)

(declare-fun res!1495278 () Bool)

(declare-fun e!2279035 () Bool)

(assert (=> b!3680486 (=> (not res!1495278) (not e!2279035))))

(assert (=> b!3680486 (= res!1495278 (isEmpty!23054 (tail!5693 (list!14428 (charsOf!3860 (_1!22476 lt!1286421))))))))

(declare-fun b!3680487 () Bool)

(assert (=> b!3680487 (= e!2279039 e!2279038)))

(declare-fun res!1495277 () Bool)

(assert (=> b!3680487 (=> res!1495277 e!2279038)))

(declare-fun call!266617 () Bool)

(assert (=> b!3680487 (= res!1495277 call!266617)))

(declare-fun b!3680488 () Bool)

(assert (=> b!3680488 (= e!2279034 (= lt!1286614 call!266617))))

(declare-fun b!3680489 () Bool)

(assert (=> b!3680489 (= e!2279035 (= (head!7898 (list!14428 (charsOf!3860 (_1!22476 lt!1286421)))) (c!636548 (regex!5846 lt!1286462))))))

(declare-fun b!3680490 () Bool)

(declare-fun res!1495282 () Bool)

(assert (=> b!3680490 (=> (not res!1495282) (not e!2279035))))

(assert (=> b!3680490 (= res!1495282 (not call!266617))))

(declare-fun bm!266612 () Bool)

(assert (=> bm!266612 (= call!266617 (isEmpty!23054 (list!14428 (charsOf!3860 (_1!22476 lt!1286421)))))))

(declare-fun b!3680491 () Bool)

(declare-fun res!1495280 () Bool)

(assert (=> b!3680491 (=> res!1495280 e!2279033)))

(assert (=> b!3680491 (= res!1495280 e!2279035)))

(declare-fun res!1495275 () Bool)

(assert (=> b!3680491 (=> (not res!1495275) (not e!2279035))))

(assert (=> b!3680491 (= res!1495275 lt!1286614)))

(declare-fun d!1080346 () Bool)

(assert (=> d!1080346 e!2279034))

(declare-fun c!636648 () Bool)

(assert (=> d!1080346 (= c!636648 ((_ is EmptyExpr!10605) (regex!5846 lt!1286462)))))

(assert (=> d!1080346 (= lt!1286614 e!2279036)))

(declare-fun c!636646 () Bool)

(assert (=> d!1080346 (= c!636646 (isEmpty!23054 (list!14428 (charsOf!3860 (_1!22476 lt!1286421)))))))

(assert (=> d!1080346 (validRegex!4857 (regex!5846 lt!1286462))))

(assert (=> d!1080346 (= (matchR!5174 (regex!5846 lt!1286462) (list!14428 (charsOf!3860 (_1!22476 lt!1286421)))) lt!1286614)))

(declare-fun b!3680492 () Bool)

(declare-fun derivativeStep!3244 (Regex!10605 C!21396) Regex!10605)

(assert (=> b!3680492 (= e!2279036 (matchR!5174 (derivativeStep!3244 (regex!5846 lt!1286462) (head!7898 (list!14428 (charsOf!3860 (_1!22476 lt!1286421))))) (tail!5693 (list!14428 (charsOf!3860 (_1!22476 lt!1286421))))))))

(assert (= (and d!1080346 c!636646) b!3680480))

(assert (= (and d!1080346 (not c!636646)) b!3680492))

(assert (= (and d!1080346 c!636648) b!3680488))

(assert (= (and d!1080346 (not c!636648)) b!3680484))

(assert (= (and b!3680484 c!636647) b!3680485))

(assert (= (and b!3680484 (not c!636647)) b!3680482))

(assert (= (and b!3680482 (not res!1495279)) b!3680491))

(assert (= (and b!3680491 res!1495275) b!3680490))

(assert (= (and b!3680490 res!1495282) b!3680486))

(assert (= (and b!3680486 res!1495278) b!3680489))

(assert (= (and b!3680491 (not res!1495280)) b!3680483))

(assert (= (and b!3680483 res!1495276) b!3680487))

(assert (= (and b!3680487 (not res!1495277)) b!3680479))

(assert (= (and b!3680479 (not res!1495281)) b!3680481))

(assert (= (or b!3680488 b!3680487 b!3680490) bm!266612))

(assert (=> b!3680479 m!4190401))

(declare-fun m!4190937 () Bool)

(assert (=> b!3680479 m!4190937))

(assert (=> b!3680479 m!4190937))

(declare-fun m!4190939 () Bool)

(assert (=> b!3680479 m!4190939))

(assert (=> b!3680486 m!4190401))

(assert (=> b!3680486 m!4190937))

(assert (=> b!3680486 m!4190937))

(assert (=> b!3680486 m!4190939))

(assert (=> d!1080346 m!4190401))

(declare-fun m!4190941 () Bool)

(assert (=> d!1080346 m!4190941))

(declare-fun m!4190943 () Bool)

(assert (=> d!1080346 m!4190943))

(declare-fun m!4190945 () Bool)

(assert (=> b!3680480 m!4190945))

(assert (=> b!3680489 m!4190401))

(declare-fun m!4190947 () Bool)

(assert (=> b!3680489 m!4190947))

(assert (=> bm!266612 m!4190401))

(assert (=> bm!266612 m!4190941))

(assert (=> b!3680492 m!4190401))

(assert (=> b!3680492 m!4190947))

(assert (=> b!3680492 m!4190947))

(declare-fun m!4190949 () Bool)

(assert (=> b!3680492 m!4190949))

(assert (=> b!3680492 m!4190401))

(assert (=> b!3680492 m!4190937))

(assert (=> b!3680492 m!4190949))

(assert (=> b!3680492 m!4190937))

(declare-fun m!4190951 () Bool)

(assert (=> b!3680492 m!4190951))

(assert (=> b!3680481 m!4190401))

(assert (=> b!3680481 m!4190947))

(assert (=> b!3680071 d!1080346))

(declare-fun d!1080356 () Bool)

(declare-fun list!14429 (Conc!11883) List!38942)

(assert (=> d!1080356 (= (list!14428 (charsOf!3860 (_1!22476 lt!1286421))) (list!14429 (c!636549 (charsOf!3860 (_1!22476 lt!1286421)))))))

(declare-fun bs!573560 () Bool)

(assert (= bs!573560 d!1080356))

(declare-fun m!4190969 () Bool)

(assert (=> bs!573560 m!4190969))

(assert (=> b!3680071 d!1080356))

(declare-fun d!1080360 () Bool)

(declare-fun lt!1286621 () BalanceConc!23380)

(assert (=> d!1080360 (= (list!14428 lt!1286621) (originalCharacters!6560 (_1!22476 lt!1286421)))))

(assert (=> d!1080360 (= lt!1286621 (dynLambda!17015 (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421)))) (value!187071 (_1!22476 lt!1286421))))))

(assert (=> d!1080360 (= (charsOf!3860 (_1!22476 lt!1286421)) lt!1286621)))

(declare-fun b_lambda!109311 () Bool)

(assert (=> (not b_lambda!109311) (not d!1080360)))

(declare-fun t!300600 () Bool)

(declare-fun tb!213409 () Bool)

(assert (=> (and b!3680092 (= (toChars!8001 (transformation!5846 rule!403)) (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300600) tb!213409))

(declare-fun b!3680508 () Bool)

(declare-fun e!2279048 () Bool)

(declare-fun tp!1118826 () Bool)

(assert (=> b!3680508 (= e!2279048 (and (inv!52319 (c!636549 (dynLambda!17015 (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421)))) (value!187071 (_1!22476 lt!1286421))))) tp!1118826))))

(declare-fun result!259662 () Bool)

(assert (=> tb!213409 (= result!259662 (and (inv!52320 (dynLambda!17015 (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421)))) (value!187071 (_1!22476 lt!1286421)))) e!2279048))))

(assert (= tb!213409 b!3680508))

(declare-fun m!4190981 () Bool)

(assert (=> b!3680508 m!4190981))

(declare-fun m!4190983 () Bool)

(assert (=> tb!213409 m!4190983))

(assert (=> d!1080360 t!300600))

(declare-fun b_and!274875 () Bool)

(assert (= b_and!274835 (and (=> t!300600 result!259662) b_and!274875)))

(declare-fun tb!213411 () Bool)

(declare-fun t!300602 () Bool)

(assert (=> (and b!3680111 (= (toChars!8001 (transformation!5846 (h!44239 rules!3307))) (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300602) tb!213411))

(declare-fun result!259664 () Bool)

(assert (= result!259664 result!259662))

(assert (=> d!1080360 t!300602))

(declare-fun b_and!274877 () Bool)

(assert (= b_and!274837 (and (=> t!300602 result!259664) b_and!274877)))

(declare-fun t!300604 () Bool)

(declare-fun tb!213413 () Bool)

(assert (=> (and b!3680068 (= (toChars!8001 (transformation!5846 anOtherTypeRule!33)) (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300604) tb!213413))

(declare-fun result!259666 () Bool)

(assert (= result!259666 result!259662))

(assert (=> d!1080360 t!300604))

(declare-fun b_and!274879 () Bool)

(assert (= b_and!274839 (and (=> t!300604 result!259666) b_and!274879)))

(declare-fun t!300606 () Bool)

(declare-fun tb!213415 () Bool)

(assert (=> (and b!3680106 (= (toChars!8001 (transformation!5846 (rule!8682 token!511))) (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300606) tb!213415))

(declare-fun result!259668 () Bool)

(assert (= result!259668 result!259662))

(assert (=> d!1080360 t!300606))

(declare-fun b_and!274881 () Bool)

(assert (= b_and!274841 (and (=> t!300606 result!259668) b_and!274881)))

(declare-fun m!4190987 () Bool)

(assert (=> d!1080360 m!4190987))

(declare-fun m!4190989 () Bool)

(assert (=> d!1080360 m!4190989))

(assert (=> b!3680071 d!1080360))

(declare-fun d!1080370 () Bool)

(assert (=> d!1080370 (= (get!12853 lt!1286430) (v!38256 lt!1286430))))

(assert (=> b!3680071 d!1080370))

(declare-fun b!3680509 () Bool)

(declare-fun res!1495297 () Bool)

(declare-fun e!2279055 () Bool)

(assert (=> b!3680509 (=> res!1495297 e!2279055)))

(assert (=> b!3680509 (= res!1495297 (not (isEmpty!23054 (tail!5693 lt!1286434))))))

(declare-fun b!3680510 () Bool)

(declare-fun e!2279053 () Bool)

(assert (=> b!3680510 (= e!2279053 (nullable!3695 (regex!5846 (rule!8682 (_1!22476 lt!1286421)))))))

(declare-fun b!3680511 () Bool)

(assert (=> b!3680511 (= e!2279055 (not (= (head!7898 lt!1286434) (c!636548 (regex!5846 (rule!8682 (_1!22476 lt!1286421)))))))))

(declare-fun b!3680512 () Bool)

(declare-fun res!1495295 () Bool)

(declare-fun e!2279050 () Bool)

(assert (=> b!3680512 (=> res!1495295 e!2279050)))

(assert (=> b!3680512 (= res!1495295 (not ((_ is ElementMatch!10605) (regex!5846 (rule!8682 (_1!22476 lt!1286421))))))))

(declare-fun e!2279054 () Bool)

(assert (=> b!3680512 (= e!2279054 e!2279050)))

(declare-fun b!3680513 () Bool)

(declare-fun e!2279056 () Bool)

(assert (=> b!3680513 (= e!2279050 e!2279056)))

(declare-fun res!1495292 () Bool)

(assert (=> b!3680513 (=> (not res!1495292) (not e!2279056))))

(declare-fun lt!1286622 () Bool)

(assert (=> b!3680513 (= res!1495292 (not lt!1286622))))

(declare-fun b!3680514 () Bool)

(declare-fun e!2279051 () Bool)

(assert (=> b!3680514 (= e!2279051 e!2279054)))

(declare-fun c!636653 () Bool)

(assert (=> b!3680514 (= c!636653 ((_ is EmptyLang!10605) (regex!5846 (rule!8682 (_1!22476 lt!1286421)))))))

(declare-fun b!3680515 () Bool)

(assert (=> b!3680515 (= e!2279054 (not lt!1286622))))

(declare-fun b!3680516 () Bool)

(declare-fun res!1495294 () Bool)

(declare-fun e!2279052 () Bool)

(assert (=> b!3680516 (=> (not res!1495294) (not e!2279052))))

(assert (=> b!3680516 (= res!1495294 (isEmpty!23054 (tail!5693 lt!1286434)))))

(declare-fun b!3680517 () Bool)

(assert (=> b!3680517 (= e!2279056 e!2279055)))

(declare-fun res!1495293 () Bool)

(assert (=> b!3680517 (=> res!1495293 e!2279055)))

(declare-fun call!266619 () Bool)

(assert (=> b!3680517 (= res!1495293 call!266619)))

(declare-fun b!3680518 () Bool)

(assert (=> b!3680518 (= e!2279051 (= lt!1286622 call!266619))))

(declare-fun b!3680519 () Bool)

(assert (=> b!3680519 (= e!2279052 (= (head!7898 lt!1286434) (c!636548 (regex!5846 (rule!8682 (_1!22476 lt!1286421))))))))

(declare-fun b!3680520 () Bool)

(declare-fun res!1495298 () Bool)

(assert (=> b!3680520 (=> (not res!1495298) (not e!2279052))))

(assert (=> b!3680520 (= res!1495298 (not call!266619))))

(declare-fun bm!266614 () Bool)

(assert (=> bm!266614 (= call!266619 (isEmpty!23054 lt!1286434))))

(declare-fun b!3680521 () Bool)

(declare-fun res!1495296 () Bool)

(assert (=> b!3680521 (=> res!1495296 e!2279050)))

(assert (=> b!3680521 (= res!1495296 e!2279052)))

(declare-fun res!1495291 () Bool)

(assert (=> b!3680521 (=> (not res!1495291) (not e!2279052))))

(assert (=> b!3680521 (= res!1495291 lt!1286622)))

(declare-fun d!1080372 () Bool)

(assert (=> d!1080372 e!2279051))

(declare-fun c!636654 () Bool)

(assert (=> d!1080372 (= c!636654 ((_ is EmptyExpr!10605) (regex!5846 (rule!8682 (_1!22476 lt!1286421)))))))

(assert (=> d!1080372 (= lt!1286622 e!2279053)))

(declare-fun c!636652 () Bool)

(assert (=> d!1080372 (= c!636652 (isEmpty!23054 lt!1286434))))

(assert (=> d!1080372 (validRegex!4857 (regex!5846 (rule!8682 (_1!22476 lt!1286421))))))

(assert (=> d!1080372 (= (matchR!5174 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286434) lt!1286622)))

(declare-fun b!3680522 () Bool)

(assert (=> b!3680522 (= e!2279053 (matchR!5174 (derivativeStep!3244 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) (head!7898 lt!1286434)) (tail!5693 lt!1286434)))))

(assert (= (and d!1080372 c!636652) b!3680510))

(assert (= (and d!1080372 (not c!636652)) b!3680522))

(assert (= (and d!1080372 c!636654) b!3680518))

(assert (= (and d!1080372 (not c!636654)) b!3680514))

(assert (= (and b!3680514 c!636653) b!3680515))

(assert (= (and b!3680514 (not c!636653)) b!3680512))

(assert (= (and b!3680512 (not res!1495295)) b!3680521))

(assert (= (and b!3680521 res!1495291) b!3680520))

(assert (= (and b!3680520 res!1495298) b!3680516))

(assert (= (and b!3680516 res!1495294) b!3680519))

(assert (= (and b!3680521 (not res!1495296)) b!3680513))

(assert (= (and b!3680513 res!1495292) b!3680517))

(assert (= (and b!3680517 (not res!1495293)) b!3680509))

(assert (= (and b!3680509 (not res!1495297)) b!3680511))

(assert (= (or b!3680518 b!3680517 b!3680520) bm!266614))

(declare-fun m!4190995 () Bool)

(assert (=> b!3680509 m!4190995))

(assert (=> b!3680509 m!4190995))

(declare-fun m!4190997 () Bool)

(assert (=> b!3680509 m!4190997))

(assert (=> b!3680516 m!4190995))

(assert (=> b!3680516 m!4190995))

(assert (=> b!3680516 m!4190997))

(declare-fun m!4190999 () Bool)

(assert (=> d!1080372 m!4190999))

(assert (=> d!1080372 m!4190625))

(declare-fun m!4191001 () Bool)

(assert (=> b!3680510 m!4191001))

(assert (=> b!3680519 m!4190387))

(assert (=> bm!266614 m!4190999))

(assert (=> b!3680522 m!4190387))

(assert (=> b!3680522 m!4190387))

(declare-fun m!4191003 () Bool)

(assert (=> b!3680522 m!4191003))

(assert (=> b!3680522 m!4190995))

(assert (=> b!3680522 m!4191003))

(assert (=> b!3680522 m!4190995))

(declare-fun m!4191005 () Bool)

(assert (=> b!3680522 m!4191005))

(assert (=> b!3680511 m!4190387))

(assert (=> b!3680110 d!1080372))

(declare-fun d!1080376 () Bool)

(declare-fun lt!1286623 () Bool)

(assert (=> d!1080376 (= lt!1286623 (select (content!5630 call!266576) lt!1286438))))

(declare-fun e!2279058 () Bool)

(assert (=> d!1080376 (= lt!1286623 e!2279058)))

(declare-fun res!1495300 () Bool)

(assert (=> d!1080376 (=> (not res!1495300) (not e!2279058))))

(assert (=> d!1080376 (= res!1495300 ((_ is Cons!38818) call!266576))))

(assert (=> d!1080376 (= (contains!7759 call!266576 lt!1286438) lt!1286623)))

(declare-fun b!3680523 () Bool)

(declare-fun e!2279057 () Bool)

(assert (=> b!3680523 (= e!2279058 e!2279057)))

(declare-fun res!1495299 () Bool)

(assert (=> b!3680523 (=> res!1495299 e!2279057)))

(assert (=> b!3680523 (= res!1495299 (= (h!44238 call!266576) lt!1286438))))

(declare-fun b!3680524 () Bool)

(assert (=> b!3680524 (= e!2279057 (contains!7759 (t!300557 call!266576) lt!1286438))))

(assert (= (and d!1080376 res!1495300) b!3680523))

(assert (= (and b!3680523 (not res!1495299)) b!3680524))

(declare-fun m!4191007 () Bool)

(assert (=> d!1080376 m!4191007))

(declare-fun m!4191009 () Bool)

(assert (=> d!1080376 m!4191009))

(declare-fun m!4191011 () Bool)

(assert (=> b!3680524 m!4191011))

(assert (=> bm!266570 d!1080376))

(declare-fun d!1080378 () Bool)

(declare-fun lt!1286624 () Bool)

(assert (=> d!1080378 (= lt!1286624 (select (content!5630 (usedCharacters!1058 (regex!5846 anOtherTypeRule!33))) lt!1286438))))

(declare-fun e!2279060 () Bool)

(assert (=> d!1080378 (= lt!1286624 e!2279060)))

(declare-fun res!1495302 () Bool)

(assert (=> d!1080378 (=> (not res!1495302) (not e!2279060))))

(assert (=> d!1080378 (= res!1495302 ((_ is Cons!38818) (usedCharacters!1058 (regex!5846 anOtherTypeRule!33))))))

(assert (=> d!1080378 (= (contains!7759 (usedCharacters!1058 (regex!5846 anOtherTypeRule!33)) lt!1286438) lt!1286624)))

(declare-fun b!3680525 () Bool)

(declare-fun e!2279059 () Bool)

(assert (=> b!3680525 (= e!2279060 e!2279059)))

(declare-fun res!1495301 () Bool)

(assert (=> b!3680525 (=> res!1495301 e!2279059)))

(assert (=> b!3680525 (= res!1495301 (= (h!44238 (usedCharacters!1058 (regex!5846 anOtherTypeRule!33))) lt!1286438))))

(declare-fun b!3680526 () Bool)

(assert (=> b!3680526 (= e!2279059 (contains!7759 (t!300557 (usedCharacters!1058 (regex!5846 anOtherTypeRule!33))) lt!1286438))))

(assert (= (and d!1080378 res!1495302) b!3680525))

(assert (= (and b!3680525 (not res!1495301)) b!3680526))

(assert (=> d!1080378 m!4190519))

(declare-fun m!4191013 () Bool)

(assert (=> d!1080378 m!4191013))

(declare-fun m!4191015 () Bool)

(assert (=> d!1080378 m!4191015))

(declare-fun m!4191017 () Bool)

(assert (=> b!3680526 m!4191017))

(assert (=> b!3680087 d!1080378))

(declare-fun bm!266615 () Bool)

(declare-fun call!266623 () List!38942)

(declare-fun c!636656 () Bool)

(assert (=> bm!266615 (= call!266623 (usedCharacters!1058 (ite c!636656 (regTwo!21723 (regex!5846 anOtherTypeRule!33)) (regOne!21722 (regex!5846 anOtherTypeRule!33)))))))

(declare-fun b!3680527 () Bool)

(declare-fun e!2279064 () List!38942)

(assert (=> b!3680527 (= e!2279064 (Cons!38818 (c!636548 (regex!5846 anOtherTypeRule!33)) Nil!38818))))

(declare-fun b!3680528 () Bool)

(declare-fun e!2279062 () List!38942)

(declare-fun e!2279063 () List!38942)

(assert (=> b!3680528 (= e!2279062 e!2279063)))

(assert (=> b!3680528 (= c!636656 ((_ is Union!10605) (regex!5846 anOtherTypeRule!33)))))

(declare-fun d!1080380 () Bool)

(declare-fun c!636655 () Bool)

(assert (=> d!1080380 (= c!636655 (or ((_ is EmptyExpr!10605) (regex!5846 anOtherTypeRule!33)) ((_ is EmptyLang!10605) (regex!5846 anOtherTypeRule!33))))))

(declare-fun e!2279061 () List!38942)

(assert (=> d!1080380 (= (usedCharacters!1058 (regex!5846 anOtherTypeRule!33)) e!2279061)))

(declare-fun bm!266616 () Bool)

(declare-fun call!266620 () List!38942)

(declare-fun call!266622 () List!38942)

(assert (=> bm!266616 (= call!266620 call!266622)))

(declare-fun b!3680529 () Bool)

(declare-fun call!266621 () List!38942)

(assert (=> b!3680529 (= e!2279063 call!266621)))

(declare-fun bm!266617 () Bool)

(declare-fun c!636657 () Bool)

(assert (=> bm!266617 (= call!266622 (usedCharacters!1058 (ite c!636657 (reg!10934 (regex!5846 anOtherTypeRule!33)) (ite c!636656 (regOne!21723 (regex!5846 anOtherTypeRule!33)) (regTwo!21722 (regex!5846 anOtherTypeRule!33))))))))

(declare-fun b!3680530 () Bool)

(assert (=> b!3680530 (= e!2279063 call!266621)))

(declare-fun b!3680531 () Bool)

(assert (=> b!3680531 (= c!636657 ((_ is Star!10605) (regex!5846 anOtherTypeRule!33)))))

(assert (=> b!3680531 (= e!2279064 e!2279062)))

(declare-fun b!3680532 () Bool)

(assert (=> b!3680532 (= e!2279061 e!2279064)))

(declare-fun c!636658 () Bool)

(assert (=> b!3680532 (= c!636658 ((_ is ElementMatch!10605) (regex!5846 anOtherTypeRule!33)))))

(declare-fun bm!266618 () Bool)

(assert (=> bm!266618 (= call!266621 (++!9662 (ite c!636656 call!266620 call!266623) (ite c!636656 call!266623 call!266620)))))

(declare-fun b!3680533 () Bool)

(assert (=> b!3680533 (= e!2279062 call!266622)))

(declare-fun b!3680534 () Bool)

(assert (=> b!3680534 (= e!2279061 Nil!38818)))

(assert (= (and d!1080380 c!636655) b!3680534))

(assert (= (and d!1080380 (not c!636655)) b!3680532))

(assert (= (and b!3680532 c!636658) b!3680527))

(assert (= (and b!3680532 (not c!636658)) b!3680531))

(assert (= (and b!3680531 c!636657) b!3680533))

(assert (= (and b!3680531 (not c!636657)) b!3680528))

(assert (= (and b!3680528 c!636656) b!3680530))

(assert (= (and b!3680528 (not c!636656)) b!3680529))

(assert (= (or b!3680530 b!3680529) bm!266616))

(assert (= (or b!3680530 b!3680529) bm!266615))

(assert (= (or b!3680530 b!3680529) bm!266618))

(assert (= (or b!3680533 bm!266616) bm!266617))

(declare-fun m!4191019 () Bool)

(assert (=> bm!266615 m!4191019))

(declare-fun m!4191021 () Bool)

(assert (=> bm!266617 m!4191021))

(declare-fun m!4191023 () Bool)

(assert (=> bm!266618 m!4191023))

(assert (=> b!3680087 d!1080380))

(declare-fun d!1080382 () Bool)

(assert (=> d!1080382 (= (isDefined!6553 lt!1286410) (not (isEmpty!23056 lt!1286410)))))

(declare-fun bs!573563 () Bool)

(assert (= bs!573563 d!1080382))

(declare-fun m!4191025 () Bool)

(assert (=> bs!573563 m!4191025))

(assert (=> b!3680107 d!1080382))

(declare-fun b!3680553 () Bool)

(declare-fun e!2279072 () Option!8320)

(declare-fun lt!1286638 () Option!8320)

(declare-fun lt!1286639 () Option!8320)

(assert (=> b!3680553 (= e!2279072 (ite (and ((_ is None!8319) lt!1286638) ((_ is None!8319) lt!1286639)) None!8319 (ite ((_ is None!8319) lt!1286639) lt!1286638 (ite ((_ is None!8319) lt!1286638) lt!1286639 (ite (>= (size!29681 (_1!22476 (v!38255 lt!1286638))) (size!29681 (_1!22476 (v!38255 lt!1286639)))) lt!1286638 lt!1286639)))))))

(declare-fun call!266626 () Option!8320)

(assert (=> b!3680553 (= lt!1286638 call!266626)))

(assert (=> b!3680553 (= lt!1286639 (maxPrefix!2969 thiss!23823 (t!300558 rules!3307) lt!1286419))))

(declare-fun b!3680554 () Bool)

(declare-fun res!1495320 () Bool)

(declare-fun e!2279073 () Bool)

(assert (=> b!3680554 (=> (not res!1495320) (not e!2279073))))

(declare-fun lt!1286641 () Option!8320)

(assert (=> b!3680554 (= res!1495320 (matchR!5174 (regex!5846 (rule!8682 (_1!22476 (get!12854 lt!1286641)))) (list!14428 (charsOf!3860 (_1!22476 (get!12854 lt!1286641))))))))

(declare-fun b!3680555 () Bool)

(declare-fun res!1495319 () Bool)

(assert (=> b!3680555 (=> (not res!1495319) (not e!2279073))))

(assert (=> b!3680555 (= res!1495319 (= (++!9662 (list!14428 (charsOf!3860 (_1!22476 (get!12854 lt!1286641)))) (_2!22476 (get!12854 lt!1286641))) lt!1286419))))

(declare-fun b!3680556 () Bool)

(declare-fun res!1495323 () Bool)

(assert (=> b!3680556 (=> (not res!1495323) (not e!2279073))))

(assert (=> b!3680556 (= res!1495323 (< (size!29682 (_2!22476 (get!12854 lt!1286641))) (size!29682 lt!1286419)))))

(declare-fun b!3680557 () Bool)

(declare-fun e!2279071 () Bool)

(assert (=> b!3680557 (= e!2279071 e!2279073)))

(declare-fun res!1495318 () Bool)

(assert (=> b!3680557 (=> (not res!1495318) (not e!2279073))))

(assert (=> b!3680557 (= res!1495318 (isDefined!6553 lt!1286641))))

(declare-fun d!1080384 () Bool)

(assert (=> d!1080384 e!2279071))

(declare-fun res!1495317 () Bool)

(assert (=> d!1080384 (=> res!1495317 e!2279071)))

(assert (=> d!1080384 (= res!1495317 (isEmpty!23056 lt!1286641))))

(assert (=> d!1080384 (= lt!1286641 e!2279072)))

(declare-fun c!636661 () Bool)

(assert (=> d!1080384 (= c!636661 (and ((_ is Cons!38819) rules!3307) ((_ is Nil!38819) (t!300558 rules!3307))))))

(declare-fun lt!1286640 () Unit!56841)

(declare-fun lt!1286637 () Unit!56841)

(assert (=> d!1080384 (= lt!1286640 lt!1286637)))

(assert (=> d!1080384 (isPrefix!3209 lt!1286419 lt!1286419)))

(declare-fun lemmaIsPrefixRefl!2018 (List!38942 List!38942) Unit!56841)

(assert (=> d!1080384 (= lt!1286637 (lemmaIsPrefixRefl!2018 lt!1286419 lt!1286419))))

(declare-fun rulesValidInductive!2081 (LexerInterface!5435 List!38943) Bool)

(assert (=> d!1080384 (rulesValidInductive!2081 thiss!23823 rules!3307)))

(assert (=> d!1080384 (= (maxPrefix!2969 thiss!23823 rules!3307 lt!1286419) lt!1286641)))

(declare-fun b!3680558 () Bool)

(assert (=> b!3680558 (= e!2279073 (contains!7760 rules!3307 (rule!8682 (_1!22476 (get!12854 lt!1286641)))))))

(declare-fun b!3680559 () Bool)

(declare-fun res!1495322 () Bool)

(assert (=> b!3680559 (=> (not res!1495322) (not e!2279073))))

(assert (=> b!3680559 (= res!1495322 (= (list!14428 (charsOf!3860 (_1!22476 (get!12854 lt!1286641)))) (originalCharacters!6560 (_1!22476 (get!12854 lt!1286641)))))))

(declare-fun b!3680560 () Bool)

(assert (=> b!3680560 (= e!2279072 call!266626)))

(declare-fun bm!266621 () Bool)

(assert (=> bm!266621 (= call!266626 (maxPrefixOneRule!2107 thiss!23823 (h!44239 rules!3307) lt!1286419))))

(declare-fun b!3680561 () Bool)

(declare-fun res!1495321 () Bool)

(assert (=> b!3680561 (=> (not res!1495321) (not e!2279073))))

(assert (=> b!3680561 (= res!1495321 (= (value!187071 (_1!22476 (get!12854 lt!1286641))) (apply!9348 (transformation!5846 (rule!8682 (_1!22476 (get!12854 lt!1286641)))) (seqFromList!4395 (originalCharacters!6560 (_1!22476 (get!12854 lt!1286641)))))))))

(assert (= (and d!1080384 c!636661) b!3680560))

(assert (= (and d!1080384 (not c!636661)) b!3680553))

(assert (= (or b!3680560 b!3680553) bm!266621))

(assert (= (and d!1080384 (not res!1495317)) b!3680557))

(assert (= (and b!3680557 res!1495318) b!3680559))

(assert (= (and b!3680559 res!1495322) b!3680556))

(assert (= (and b!3680556 res!1495323) b!3680555))

(assert (= (and b!3680555 res!1495319) b!3680561))

(assert (= (and b!3680561 res!1495321) b!3680554))

(assert (= (and b!3680554 res!1495320) b!3680558))

(declare-fun m!4191027 () Bool)

(assert (=> b!3680553 m!4191027))

(declare-fun m!4191029 () Bool)

(assert (=> b!3680555 m!4191029))

(declare-fun m!4191031 () Bool)

(assert (=> b!3680555 m!4191031))

(assert (=> b!3680555 m!4191031))

(declare-fun m!4191033 () Bool)

(assert (=> b!3680555 m!4191033))

(assert (=> b!3680555 m!4191033))

(declare-fun m!4191035 () Bool)

(assert (=> b!3680555 m!4191035))

(declare-fun m!4191037 () Bool)

(assert (=> d!1080384 m!4191037))

(declare-fun m!4191039 () Bool)

(assert (=> d!1080384 m!4191039))

(declare-fun m!4191041 () Bool)

(assert (=> d!1080384 m!4191041))

(declare-fun m!4191043 () Bool)

(assert (=> d!1080384 m!4191043))

(assert (=> b!3680554 m!4191029))

(assert (=> b!3680554 m!4191031))

(assert (=> b!3680554 m!4191031))

(assert (=> b!3680554 m!4191033))

(assert (=> b!3680554 m!4191033))

(declare-fun m!4191045 () Bool)

(assert (=> b!3680554 m!4191045))

(declare-fun m!4191047 () Bool)

(assert (=> b!3680557 m!4191047))

(declare-fun m!4191049 () Bool)

(assert (=> bm!266621 m!4191049))

(assert (=> b!3680556 m!4191029))

(declare-fun m!4191051 () Bool)

(assert (=> b!3680556 m!4191051))

(assert (=> b!3680556 m!4190383))

(assert (=> b!3680561 m!4191029))

(declare-fun m!4191053 () Bool)

(assert (=> b!3680561 m!4191053))

(assert (=> b!3680561 m!4191053))

(declare-fun m!4191055 () Bool)

(assert (=> b!3680561 m!4191055))

(assert (=> b!3680558 m!4191029))

(declare-fun m!4191057 () Bool)

(assert (=> b!3680558 m!4191057))

(assert (=> b!3680559 m!4191029))

(assert (=> b!3680559 m!4191031))

(assert (=> b!3680559 m!4191031))

(assert (=> b!3680559 m!4191033))

(assert (=> b!3680107 d!1080384))

(declare-fun d!1080386 () Bool)

(assert (=> d!1080386 (= (list!14428 lt!1286456) (list!14429 (c!636549 lt!1286456)))))

(declare-fun bs!573564 () Bool)

(assert (= bs!573564 d!1080386))

(declare-fun m!4191059 () Bool)

(assert (=> bs!573564 m!4191059))

(assert (=> b!3680107 d!1080386))

(declare-fun d!1080388 () Bool)

(declare-fun lt!1286642 () BalanceConc!23380)

(assert (=> d!1080388 (= (list!14428 lt!1286642) (originalCharacters!6560 token!511))))

(assert (=> d!1080388 (= lt!1286642 (dynLambda!17015 (toChars!8001 (transformation!5846 (rule!8682 token!511))) (value!187071 token!511)))))

(assert (=> d!1080388 (= (charsOf!3860 token!511) lt!1286642)))

(declare-fun b_lambda!109315 () Bool)

(assert (=> (not b_lambda!109315) (not d!1080388)))

(assert (=> d!1080388 t!300568))

(declare-fun b_and!274891 () Bool)

(assert (= b_and!274875 (and (=> t!300568 result!259624) b_and!274891)))

(assert (=> d!1080388 t!300570))

(declare-fun b_and!274893 () Bool)

(assert (= b_and!274877 (and (=> t!300570 result!259628) b_and!274893)))

(assert (=> d!1080388 t!300572))

(declare-fun b_and!274895 () Bool)

(assert (= b_and!274879 (and (=> t!300572 result!259630) b_and!274895)))

(assert (=> d!1080388 t!300574))

(declare-fun b_and!274897 () Bool)

(assert (= b_and!274881 (and (=> t!300574 result!259632) b_and!274897)))

(declare-fun m!4191061 () Bool)

(assert (=> d!1080388 m!4191061))

(assert (=> d!1080388 m!4190649))

(assert (=> b!3680107 d!1080388))

(declare-fun d!1080390 () Bool)

(assert (=> d!1080390 (= (inv!52312 (tag!6648 rule!403)) (= (mod (str.len (value!187070 (tag!6648 rule!403))) 2) 0))))

(assert (=> b!3680088 d!1080390))

(declare-fun d!1080392 () Bool)

(declare-fun res!1495324 () Bool)

(declare-fun e!2279074 () Bool)

(assert (=> d!1080392 (=> (not res!1495324) (not e!2279074))))

(assert (=> d!1080392 (= res!1495324 (semiInverseModEq!2495 (toChars!8001 (transformation!5846 rule!403)) (toValue!8142 (transformation!5846 rule!403))))))

(assert (=> d!1080392 (= (inv!52315 (transformation!5846 rule!403)) e!2279074)))

(declare-fun b!3680562 () Bool)

(assert (=> b!3680562 (= e!2279074 (equivClasses!2394 (toChars!8001 (transformation!5846 rule!403)) (toValue!8142 (transformation!5846 rule!403))))))

(assert (= (and d!1080392 res!1495324) b!3680562))

(declare-fun m!4191063 () Bool)

(assert (=> d!1080392 m!4191063))

(declare-fun m!4191065 () Bool)

(assert (=> b!3680562 m!4191065))

(assert (=> b!3680088 d!1080392))

(declare-fun d!1080394 () Bool)

(declare-fun res!1495329 () Bool)

(declare-fun e!2279079 () Bool)

(assert (=> d!1080394 (=> res!1495329 e!2279079)))

(assert (=> d!1080394 (= res!1495329 (not ((_ is Cons!38819) rules!3307)))))

(assert (=> d!1080394 (= (sepAndNonSepRulesDisjointChars!2014 rules!3307 rules!3307) e!2279079)))

(declare-fun b!3680567 () Bool)

(declare-fun e!2279080 () Bool)

(assert (=> b!3680567 (= e!2279079 e!2279080)))

(declare-fun res!1495330 () Bool)

(assert (=> b!3680567 (=> (not res!1495330) (not e!2279080))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!919 (Rule!11492 List!38943) Bool)

(assert (=> b!3680567 (= res!1495330 (ruleDisjointCharsFromAllFromOtherType!919 (h!44239 rules!3307) rules!3307))))

(declare-fun b!3680568 () Bool)

(assert (=> b!3680568 (= e!2279080 (sepAndNonSepRulesDisjointChars!2014 rules!3307 (t!300558 rules!3307)))))

(assert (= (and d!1080394 (not res!1495329)) b!3680567))

(assert (= (and b!3680567 res!1495330) b!3680568))

(declare-fun m!4191067 () Bool)

(assert (=> b!3680567 m!4191067))

(declare-fun m!4191069 () Bool)

(assert (=> b!3680568 m!4191069))

(assert (=> b!3680069 d!1080394))

(declare-fun b!3680629 () Bool)

(declare-fun e!2279121 () Bool)

(assert (=> b!3680629 (= e!2279121 true)))

(declare-fun d!1080396 () Bool)

(assert (=> d!1080396 e!2279121))

(assert (= d!1080396 b!3680629))

(declare-fun order!21517 () Int)

(declare-fun order!21515 () Int)

(declare-fun lambda!124762 () Int)

(declare-fun dynLambda!17021 (Int Int) Int)

(declare-fun dynLambda!17022 (Int Int) Int)

(assert (=> b!3680629 (< (dynLambda!17021 order!21515 (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) (dynLambda!17022 order!21517 lambda!124762))))

(declare-fun order!21519 () Int)

(declare-fun dynLambda!17023 (Int Int) Int)

(assert (=> b!3680629 (< (dynLambda!17023 order!21519 (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) (dynLambda!17022 order!21517 lambda!124762))))

(assert (=> d!1080396 (= (list!14428 (dynLambda!17015 (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421)))) (dynLambda!17016 (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421)))) lt!1286439))) (list!14428 lt!1286439))))

(declare-fun lt!1286675 () Unit!56841)

(declare-fun ForallOf!751 (Int BalanceConc!23380) Unit!56841)

(assert (=> d!1080396 (= lt!1286675 (ForallOf!751 lambda!124762 lt!1286439))))

(assert (=> d!1080396 (= (lemmaSemiInverse!1595 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286439) lt!1286675)))

(declare-fun b_lambda!109325 () Bool)

(assert (=> (not b_lambda!109325) (not d!1080396)))

(declare-fun tb!213441 () Bool)

(declare-fun t!300632 () Bool)

(assert (=> (and b!3680092 (= (toChars!8001 (transformation!5846 rule!403)) (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300632) tb!213441))

(declare-fun tp!1118828 () Bool)

(declare-fun e!2279122 () Bool)

(declare-fun b!3680630 () Bool)

(assert (=> b!3680630 (= e!2279122 (and (inv!52319 (c!636549 (dynLambda!17015 (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421)))) (dynLambda!17016 (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421)))) lt!1286439)))) tp!1118828))))

(declare-fun result!259694 () Bool)

(assert (=> tb!213441 (= result!259694 (and (inv!52320 (dynLambda!17015 (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421)))) (dynLambda!17016 (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421)))) lt!1286439))) e!2279122))))

(assert (= tb!213441 b!3680630))

(declare-fun m!4191163 () Bool)

(assert (=> b!3680630 m!4191163))

(declare-fun m!4191165 () Bool)

(assert (=> tb!213441 m!4191165))

(assert (=> d!1080396 t!300632))

(declare-fun b_and!274931 () Bool)

(assert (= b_and!274891 (and (=> t!300632 result!259694) b_and!274931)))

(declare-fun t!300634 () Bool)

(declare-fun tb!213443 () Bool)

(assert (=> (and b!3680111 (= (toChars!8001 (transformation!5846 (h!44239 rules!3307))) (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300634) tb!213443))

(declare-fun result!259696 () Bool)

(assert (= result!259696 result!259694))

(assert (=> d!1080396 t!300634))

(declare-fun b_and!274933 () Bool)

(assert (= b_and!274893 (and (=> t!300634 result!259696) b_and!274933)))

(declare-fun t!300636 () Bool)

(declare-fun tb!213445 () Bool)

(assert (=> (and b!3680068 (= (toChars!8001 (transformation!5846 anOtherTypeRule!33)) (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300636) tb!213445))

(declare-fun result!259698 () Bool)

(assert (= result!259698 result!259694))

(assert (=> d!1080396 t!300636))

(declare-fun b_and!274935 () Bool)

(assert (= b_and!274895 (and (=> t!300636 result!259698) b_and!274935)))

(declare-fun tb!213447 () Bool)

(declare-fun t!300638 () Bool)

(assert (=> (and b!3680106 (= (toChars!8001 (transformation!5846 (rule!8682 token!511))) (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300638) tb!213447))

(declare-fun result!259700 () Bool)

(assert (= result!259700 result!259694))

(assert (=> d!1080396 t!300638))

(declare-fun b_and!274937 () Bool)

(assert (= b_and!274897 (and (=> t!300638 result!259700) b_and!274937)))

(declare-fun b_lambda!109327 () Bool)

(assert (=> (not b_lambda!109327) (not d!1080396)))

(declare-fun tb!213449 () Bool)

(declare-fun t!300640 () Bool)

(assert (=> (and b!3680092 (= (toValue!8142 (transformation!5846 rule!403)) (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300640) tb!213449))

(declare-fun result!259702 () Bool)

(assert (=> tb!213449 (= result!259702 (inv!21 (dynLambda!17016 (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421)))) lt!1286439)))))

(declare-fun m!4191167 () Bool)

(assert (=> tb!213449 m!4191167))

(assert (=> d!1080396 t!300640))

(declare-fun b_and!274939 () Bool)

(assert (= b_and!274851 (and (=> t!300640 result!259702) b_and!274939)))

(declare-fun tb!213451 () Bool)

(declare-fun t!300642 () Bool)

(assert (=> (and b!3680111 (= (toValue!8142 (transformation!5846 (h!44239 rules!3307))) (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300642) tb!213451))

(declare-fun result!259704 () Bool)

(assert (= result!259704 result!259702))

(assert (=> d!1080396 t!300642))

(declare-fun b_and!274941 () Bool)

(assert (= b_and!274853 (and (=> t!300642 result!259704) b_and!274941)))

(declare-fun tb!213453 () Bool)

(declare-fun t!300644 () Bool)

(assert (=> (and b!3680068 (= (toValue!8142 (transformation!5846 anOtherTypeRule!33)) (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300644) tb!213453))

(declare-fun result!259706 () Bool)

(assert (= result!259706 result!259702))

(assert (=> d!1080396 t!300644))

(declare-fun b_and!274943 () Bool)

(assert (= b_and!274855 (and (=> t!300644 result!259706) b_and!274943)))

(declare-fun t!300646 () Bool)

(declare-fun tb!213455 () Bool)

(assert (=> (and b!3680106 (= (toValue!8142 (transformation!5846 (rule!8682 token!511))) (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300646) tb!213455))

(declare-fun result!259708 () Bool)

(assert (= result!259708 result!259702))

(assert (=> d!1080396 t!300646))

(declare-fun b_and!274945 () Bool)

(assert (= b_and!274857 (and (=> t!300646 result!259708) b_and!274945)))

(declare-fun m!4191169 () Bool)

(assert (=> d!1080396 m!4191169))

(declare-fun m!4191171 () Bool)

(assert (=> d!1080396 m!4191171))

(assert (=> d!1080396 m!4191171))

(declare-fun m!4191173 () Bool)

(assert (=> d!1080396 m!4191173))

(assert (=> d!1080396 m!4191173))

(declare-fun m!4191175 () Bool)

(assert (=> d!1080396 m!4191175))

(assert (=> d!1080396 m!4190489))

(assert (=> b!3680108 d!1080396))

(declare-fun d!1080422 () Bool)

(assert (=> d!1080422 (= (apply!9348 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286439) (dynLambda!17016 (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421)))) lt!1286439))))

(declare-fun b_lambda!109329 () Bool)

(assert (=> (not b_lambda!109329) (not d!1080422)))

(assert (=> d!1080422 t!300640))

(declare-fun b_and!274947 () Bool)

(assert (= b_and!274939 (and (=> t!300640 result!259702) b_and!274947)))

(assert (=> d!1080422 t!300642))

(declare-fun b_and!274949 () Bool)

(assert (= b_and!274941 (and (=> t!300642 result!259704) b_and!274949)))

(assert (=> d!1080422 t!300644))

(declare-fun b_and!274951 () Bool)

(assert (= b_and!274943 (and (=> t!300644 result!259706) b_and!274951)))

(assert (=> d!1080422 t!300646))

(declare-fun b_and!274953 () Bool)

(assert (= b_and!274945 (and (=> t!300646 result!259708) b_and!274953)))

(assert (=> d!1080422 m!4191171))

(assert (=> b!3680108 d!1080422))

(declare-fun d!1080424 () Bool)

(assert (=> d!1080424 (= (seqFromList!4395 (originalCharacters!6560 (_1!22476 lt!1286421))) (fromListB!2031 (originalCharacters!6560 (_1!22476 lt!1286421))))))

(declare-fun bs!573570 () Bool)

(assert (= bs!573570 d!1080424))

(declare-fun m!4191177 () Bool)

(assert (=> bs!573570 m!4191177))

(assert (=> b!3680108 d!1080424))

(declare-fun d!1080426 () Bool)

(declare-fun lt!1286678 () Int)

(assert (=> d!1080426 (= lt!1286678 (size!29682 (list!14428 lt!1286439)))))

(assert (=> d!1080426 (= lt!1286678 (size!29684 (c!636549 lt!1286439)))))

(assert (=> d!1080426 (= (size!29683 lt!1286439) lt!1286678)))

(declare-fun bs!573571 () Bool)

(assert (= bs!573571 d!1080426))

(assert (=> bs!573571 m!4190489))

(assert (=> bs!573571 m!4190489))

(declare-fun m!4191179 () Bool)

(assert (=> bs!573571 m!4191179))

(declare-fun m!4191181 () Bool)

(assert (=> bs!573571 m!4191181))

(assert (=> b!3680108 d!1080426))

(declare-fun b!3680659 () Bool)

(declare-fun e!2279140 () Bool)

(assert (=> b!3680659 (= e!2279140 true)))

(declare-fun d!1080428 () Bool)

(assert (=> d!1080428 e!2279140))

(assert (= d!1080428 b!3680659))

(declare-fun order!21521 () Int)

(declare-fun lambda!124765 () Int)

(declare-fun dynLambda!17025 (Int Int) Int)

(assert (=> b!3680659 (< (dynLambda!17021 order!21515 (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) (dynLambda!17025 order!21521 lambda!124765))))

(assert (=> b!3680659 (< (dynLambda!17023 order!21519 (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) (dynLambda!17025 order!21521 lambda!124765))))

(assert (=> d!1080428 (= (dynLambda!17016 (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421)))) lt!1286439) (dynLambda!17016 (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421)))) (seqFromList!4395 (originalCharacters!6560 (_1!22476 lt!1286421)))))))

(declare-fun lt!1286685 () Unit!56841)

(declare-fun Forall2of!410 (Int BalanceConc!23380 BalanceConc!23380) Unit!56841)

(assert (=> d!1080428 (= lt!1286685 (Forall2of!410 lambda!124765 lt!1286439 (seqFromList!4395 (originalCharacters!6560 (_1!22476 lt!1286421)))))))

(assert (=> d!1080428 (= (list!14428 lt!1286439) (list!14428 (seqFromList!4395 (originalCharacters!6560 (_1!22476 lt!1286421)))))))

(assert (=> d!1080428 (= (lemmaEqSameImage!1029 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286439 (seqFromList!4395 (originalCharacters!6560 (_1!22476 lt!1286421)))) lt!1286685)))

(declare-fun b_lambda!109331 () Bool)

(assert (=> (not b_lambda!109331) (not d!1080428)))

(assert (=> d!1080428 t!300640))

(declare-fun b_and!274955 () Bool)

(assert (= b_and!274947 (and (=> t!300640 result!259702) b_and!274955)))

(assert (=> d!1080428 t!300642))

(declare-fun b_and!274957 () Bool)

(assert (= b_and!274949 (and (=> t!300642 result!259704) b_and!274957)))

(assert (=> d!1080428 t!300644))

(declare-fun b_and!274959 () Bool)

(assert (= b_and!274951 (and (=> t!300644 result!259706) b_and!274959)))

(assert (=> d!1080428 t!300646))

(declare-fun b_and!274961 () Bool)

(assert (= b_and!274953 (and (=> t!300646 result!259708) b_and!274961)))

(declare-fun b_lambda!109333 () Bool)

(assert (=> (not b_lambda!109333) (not d!1080428)))

(declare-fun t!300648 () Bool)

(declare-fun tb!213457 () Bool)

(assert (=> (and b!3680092 (= (toValue!8142 (transformation!5846 rule!403)) (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300648) tb!213457))

(declare-fun result!259710 () Bool)

(assert (=> tb!213457 (= result!259710 (inv!21 (dynLambda!17016 (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421)))) (seqFromList!4395 (originalCharacters!6560 (_1!22476 lt!1286421))))))))

(declare-fun m!4191209 () Bool)

(assert (=> tb!213457 m!4191209))

(assert (=> d!1080428 t!300648))

(declare-fun b_and!274963 () Bool)

(assert (= b_and!274955 (and (=> t!300648 result!259710) b_and!274963)))

(declare-fun tb!213459 () Bool)

(declare-fun t!300650 () Bool)

(assert (=> (and b!3680111 (= (toValue!8142 (transformation!5846 (h!44239 rules!3307))) (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300650) tb!213459))

(declare-fun result!259712 () Bool)

(assert (= result!259712 result!259710))

(assert (=> d!1080428 t!300650))

(declare-fun b_and!274965 () Bool)

(assert (= b_and!274957 (and (=> t!300650 result!259712) b_and!274965)))

(declare-fun t!300652 () Bool)

(declare-fun tb!213461 () Bool)

(assert (=> (and b!3680068 (= (toValue!8142 (transformation!5846 anOtherTypeRule!33)) (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300652) tb!213461))

(declare-fun result!259714 () Bool)

(assert (= result!259714 result!259710))

(assert (=> d!1080428 t!300652))

(declare-fun b_and!274967 () Bool)

(assert (= b_and!274959 (and (=> t!300652 result!259714) b_and!274967)))

(declare-fun t!300654 () Bool)

(declare-fun tb!213463 () Bool)

(assert (=> (and b!3680106 (= (toValue!8142 (transformation!5846 (rule!8682 token!511))) (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300654) tb!213463))

(declare-fun result!259716 () Bool)

(assert (= result!259716 result!259710))

(assert (=> d!1080428 t!300654))

(declare-fun b_and!274969 () Bool)

(assert (= b_and!274961 (and (=> t!300654 result!259716) b_and!274969)))

(assert (=> d!1080428 m!4190437))

(declare-fun m!4191217 () Bool)

(assert (=> d!1080428 m!4191217))

(assert (=> d!1080428 m!4190437))

(declare-fun m!4191219 () Bool)

(assert (=> d!1080428 m!4191219))

(assert (=> d!1080428 m!4191171))

(assert (=> d!1080428 m!4190489))

(assert (=> d!1080428 m!4190437))

(declare-fun m!4191221 () Bool)

(assert (=> d!1080428 m!4191221))

(assert (=> b!3680108 d!1080428))

(declare-fun d!1080440 () Bool)

(assert (=> d!1080440 (= (size!29681 (_1!22476 lt!1286421)) (size!29682 (originalCharacters!6560 (_1!22476 lt!1286421))))))

(declare-fun Unit!56861 () Unit!56841)

(assert (=> d!1080440 (= (lemmaCharactersSize!891 (_1!22476 lt!1286421)) Unit!56861)))

(declare-fun bs!573573 () Bool)

(assert (= bs!573573 d!1080440))

(declare-fun m!4191223 () Bool)

(assert (=> bs!573573 m!4191223))

(assert (=> b!3680108 d!1080440))

(declare-fun d!1080442 () Bool)

(assert (=> d!1080442 (= (isEmpty!23054 suffix!1395) ((_ is Nil!38818) suffix!1395))))

(assert (=> b!3680075 d!1080442))

(declare-fun d!1080444 () Bool)

(assert (=> d!1080444 (not (matchR!5174 (regex!5846 rule!403) lt!1286419))))

(declare-fun lt!1286690 () Unit!56841)

(declare-fun choose!22004 (LexerInterface!5435 List!38943 Rule!11492 List!38942 List!38942 Rule!11492) Unit!56841)

(assert (=> d!1080444 (= lt!1286690 (choose!22004 thiss!23823 rules!3307 (rule!8682 (_1!22476 lt!1286421)) lt!1286419 lt!1286459 rule!403))))

(assert (=> d!1080444 (isPrefix!3209 lt!1286419 lt!1286459)))

(assert (=> d!1080444 (= (lemmaMaxPrefNoSmallerRuleMatches!254 thiss!23823 rules!3307 (rule!8682 (_1!22476 lt!1286421)) lt!1286419 lt!1286459 rule!403) lt!1286690)))

(declare-fun bs!573574 () Bool)

(assert (= bs!573574 d!1080444))

(assert (=> bs!573574 m!4190427))

(declare-fun m!4191225 () Bool)

(assert (=> bs!573574 m!4191225))

(assert (=> bs!573574 m!4190469))

(assert (=> b!3680094 d!1080444))

(declare-fun d!1080446 () Bool)

(assert (=> d!1080446 (isPrefix!3209 lt!1286419 (++!9662 lt!1286419 suffix!1395))))

(declare-fun lt!1286693 () Unit!56841)

(declare-fun choose!22005 (List!38942 List!38942) Unit!56841)

(assert (=> d!1080446 (= lt!1286693 (choose!22005 lt!1286419 suffix!1395))))

(assert (=> d!1080446 (= (lemmaConcatTwoListThenFirstIsPrefix!2128 lt!1286419 suffix!1395) lt!1286693)))

(declare-fun bs!573575 () Bool)

(assert (= bs!573575 d!1080446))

(assert (=> bs!573575 m!4190485))

(assert (=> bs!573575 m!4190485))

(declare-fun m!4191227 () Bool)

(assert (=> bs!573575 m!4191227))

(declare-fun m!4191229 () Bool)

(assert (=> bs!573575 m!4191229))

(assert (=> b!3680076 d!1080446))

(declare-fun b!3680676 () Bool)

(declare-fun lt!1286702 () Unit!56841)

(declare-fun lt!1286700 () Unit!56841)

(assert (=> b!3680676 (= lt!1286702 lt!1286700)))

(assert (=> b!3680676 (rulesInvariant!4832 thiss!23823 (t!300558 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!625 (LexerInterface!5435 Rule!11492 List!38943) Unit!56841)

(assert (=> b!3680676 (= lt!1286700 (lemmaInvariantOnRulesThenOnTail!625 thiss!23823 (h!44239 rules!3307) (t!300558 rules!3307)))))

(declare-fun e!2279153 () Option!8321)

(assert (=> b!3680676 (= e!2279153 (getRuleFromTag!1450 thiss!23823 (t!300558 rules!3307) (tag!6648 (rule!8682 (_1!22476 lt!1286421)))))))

(declare-fun b!3680677 () Bool)

(assert (=> b!3680677 (= e!2279153 None!8320)))

(declare-fun b!3680678 () Bool)

(declare-fun e!2279154 () Bool)

(declare-fun e!2279155 () Bool)

(assert (=> b!3680678 (= e!2279154 e!2279155)))

(declare-fun res!1495388 () Bool)

(assert (=> b!3680678 (=> (not res!1495388) (not e!2279155))))

(declare-fun lt!1286701 () Option!8321)

(assert (=> b!3680678 (= res!1495388 (contains!7760 rules!3307 (get!12853 lt!1286701)))))

(declare-fun b!3680679 () Bool)

(declare-fun e!2279156 () Option!8321)

(assert (=> b!3680679 (= e!2279156 (Some!8320 (h!44239 rules!3307)))))

(declare-fun d!1080448 () Bool)

(assert (=> d!1080448 e!2279154))

(declare-fun res!1495389 () Bool)

(assert (=> d!1080448 (=> res!1495389 e!2279154)))

(declare-fun isEmpty!23059 (Option!8321) Bool)

(assert (=> d!1080448 (= res!1495389 (isEmpty!23059 lt!1286701))))

(assert (=> d!1080448 (= lt!1286701 e!2279156)))

(declare-fun c!636678 () Bool)

(assert (=> d!1080448 (= c!636678 (and ((_ is Cons!38819) rules!3307) (= (tag!6648 (h!44239 rules!3307)) (tag!6648 (rule!8682 (_1!22476 lt!1286421))))))))

(assert (=> d!1080448 (rulesInvariant!4832 thiss!23823 rules!3307)))

(assert (=> d!1080448 (= (getRuleFromTag!1450 thiss!23823 rules!3307 (tag!6648 (rule!8682 (_1!22476 lt!1286421)))) lt!1286701)))

(declare-fun b!3680680 () Bool)

(assert (=> b!3680680 (= e!2279155 (= (tag!6648 (get!12853 lt!1286701)) (tag!6648 (rule!8682 (_1!22476 lt!1286421)))))))

(declare-fun b!3680681 () Bool)

(assert (=> b!3680681 (= e!2279156 e!2279153)))

(declare-fun c!636679 () Bool)

(assert (=> b!3680681 (= c!636679 (and ((_ is Cons!38819) rules!3307) (not (= (tag!6648 (h!44239 rules!3307)) (tag!6648 (rule!8682 (_1!22476 lt!1286421)))))))))

(assert (= (and d!1080448 c!636678) b!3680679))

(assert (= (and d!1080448 (not c!636678)) b!3680681))

(assert (= (and b!3680681 c!636679) b!3680676))

(assert (= (and b!3680681 (not c!636679)) b!3680677))

(assert (= (and d!1080448 (not res!1495389)) b!3680678))

(assert (= (and b!3680678 res!1495388) b!3680680))

(declare-fun m!4191231 () Bool)

(assert (=> b!3680676 m!4191231))

(declare-fun m!4191233 () Bool)

(assert (=> b!3680676 m!4191233))

(declare-fun m!4191235 () Bool)

(assert (=> b!3680676 m!4191235))

(declare-fun m!4191237 () Bool)

(assert (=> b!3680678 m!4191237))

(assert (=> b!3680678 m!4191237))

(declare-fun m!4191239 () Bool)

(assert (=> b!3680678 m!4191239))

(declare-fun m!4191241 () Bool)

(assert (=> d!1080448 m!4191241))

(assert (=> d!1080448 m!4190515))

(assert (=> b!3680680 m!4191237))

(assert (=> b!3680076 d!1080448))

(declare-fun d!1080450 () Bool)

(assert (=> d!1080450 (= (get!12854 lt!1286465) (v!38255 lt!1286465))))

(assert (=> b!3680076 d!1080450))

(assert (=> b!3680076 d!1080360))

(declare-fun b!3680692 () Bool)

(declare-fun e!2279164 () Bool)

(assert (=> b!3680692 (= e!2279164 (isPrefix!3209 (tail!5693 lt!1286419) (tail!5693 lt!1286459)))))

(declare-fun b!3680690 () Bool)

(declare-fun e!2279163 () Bool)

(assert (=> b!3680690 (= e!2279163 e!2279164)))

(declare-fun res!1495398 () Bool)

(assert (=> b!3680690 (=> (not res!1495398) (not e!2279164))))

(assert (=> b!3680690 (= res!1495398 (not ((_ is Nil!38818) lt!1286459)))))

(declare-fun d!1080452 () Bool)

(declare-fun e!2279165 () Bool)

(assert (=> d!1080452 e!2279165))

(declare-fun res!1495401 () Bool)

(assert (=> d!1080452 (=> res!1495401 e!2279165)))

(declare-fun lt!1286705 () Bool)

(assert (=> d!1080452 (= res!1495401 (not lt!1286705))))

(assert (=> d!1080452 (= lt!1286705 e!2279163)))

(declare-fun res!1495399 () Bool)

(assert (=> d!1080452 (=> res!1495399 e!2279163)))

(assert (=> d!1080452 (= res!1495399 ((_ is Nil!38818) lt!1286419))))

(assert (=> d!1080452 (= (isPrefix!3209 lt!1286419 lt!1286459) lt!1286705)))

(declare-fun b!3680693 () Bool)

(assert (=> b!3680693 (= e!2279165 (>= (size!29682 lt!1286459) (size!29682 lt!1286419)))))

(declare-fun b!3680691 () Bool)

(declare-fun res!1495400 () Bool)

(assert (=> b!3680691 (=> (not res!1495400) (not e!2279164))))

(assert (=> b!3680691 (= res!1495400 (= (head!7898 lt!1286419) (head!7898 lt!1286459)))))

(assert (= (and d!1080452 (not res!1495399)) b!3680690))

(assert (= (and b!3680690 res!1495398) b!3680691))

(assert (= (and b!3680691 res!1495400) b!3680692))

(assert (= (and d!1080452 (not res!1495401)) b!3680693))

(declare-fun m!4191243 () Bool)

(assert (=> b!3680692 m!4191243))

(assert (=> b!3680692 m!4190871))

(assert (=> b!3680692 m!4191243))

(assert (=> b!3680692 m!4190871))

(declare-fun m!4191245 () Bool)

(assert (=> b!3680692 m!4191245))

(assert (=> b!3680693 m!4190807))

(assert (=> b!3680693 m!4190383))

(declare-fun m!4191247 () Bool)

(assert (=> b!3680691 m!4191247))

(declare-fun m!4191249 () Bool)

(assert (=> b!3680691 m!4191249))

(assert (=> b!3680076 d!1080452))

(declare-fun lt!1286823 () Token!11058)

(declare-fun b!3680807 () Bool)

(declare-fun e!2279224 () Bool)

(assert (=> b!3680807 (= e!2279224 (= (rule!8682 lt!1286823) (get!12853 (getRuleFromTag!1450 thiss!23823 rules!3307 (tag!6648 (rule!8682 lt!1286823))))))))

(declare-fun b!3680808 () Bool)

(declare-fun e!2279225 () Unit!56841)

(declare-fun Unit!56862 () Unit!56841)

(assert (=> b!3680808 (= e!2279225 Unit!56862)))

(declare-fun lt!1286815 () List!38942)

(assert (=> b!3680808 (= lt!1286815 (++!9662 lt!1286419 suffix!1395))))

(declare-fun lt!1286814 () Unit!56841)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!581 (LexerInterface!5435 Rule!11492 List!38943 List!38942) Unit!56841)

(assert (=> b!3680808 (= lt!1286814 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!581 thiss!23823 (rule!8682 lt!1286823) rules!3307 lt!1286815))))

(assert (=> b!3680808 (isEmpty!23056 (maxPrefixOneRule!2107 thiss!23823 (rule!8682 lt!1286823) lt!1286815))))

(declare-fun lt!1286824 () Unit!56841)

(assert (=> b!3680808 (= lt!1286824 lt!1286814)))

(declare-fun lt!1286830 () List!38942)

(assert (=> b!3680808 (= lt!1286830 (list!14428 (charsOf!3860 lt!1286823)))))

(declare-fun lt!1286822 () Unit!56841)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!569 (LexerInterface!5435 Rule!11492 List!38942 List!38942) Unit!56841)

(assert (=> b!3680808 (= lt!1286822 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!569 thiss!23823 (rule!8682 lt!1286823) lt!1286830 (++!9662 lt!1286419 suffix!1395)))))

(assert (=> b!3680808 (not (matchR!5174 (regex!5846 (rule!8682 lt!1286823)) lt!1286830))))

(declare-fun lt!1286828 () Unit!56841)

(assert (=> b!3680808 (= lt!1286828 lt!1286822)))

(assert (=> b!3680808 false))

(declare-fun b!3680806 () Bool)

(declare-fun res!1495440 () Bool)

(assert (=> b!3680806 (=> (not res!1495440) (not e!2279224))))

(assert (=> b!3680806 (= res!1495440 (matchR!5174 (regex!5846 (get!12853 (getRuleFromTag!1450 thiss!23823 rules!3307 (tag!6648 (rule!8682 lt!1286823))))) (list!14428 (charsOf!3860 lt!1286823))))))

(declare-fun b!3680809 () Bool)

(declare-fun Unit!56863 () Unit!56841)

(assert (=> b!3680809 (= e!2279225 Unit!56863)))

(declare-fun d!1080454 () Bool)

(assert (=> d!1080454 (isDefined!6553 (maxPrefix!2969 thiss!23823 rules!3307 (++!9662 lt!1286419 suffix!1395)))))

(declare-fun lt!1286816 () Unit!56841)

(assert (=> d!1080454 (= lt!1286816 e!2279225)))

(declare-fun c!636696 () Bool)

(assert (=> d!1080454 (= c!636696 (isEmpty!23056 (maxPrefix!2969 thiss!23823 rules!3307 (++!9662 lt!1286419 suffix!1395))))))

(declare-fun lt!1286827 () Unit!56841)

(declare-fun lt!1286818 () Unit!56841)

(assert (=> d!1080454 (= lt!1286827 lt!1286818)))

(assert (=> d!1080454 e!2279224))

(declare-fun res!1495441 () Bool)

(assert (=> d!1080454 (=> (not res!1495441) (not e!2279224))))

(assert (=> d!1080454 (= res!1495441 (isDefined!6552 (getRuleFromTag!1450 thiss!23823 rules!3307 (tag!6648 (rule!8682 lt!1286823)))))))

(assert (=> d!1080454 (= lt!1286818 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1450 thiss!23823 rules!3307 lt!1286419 lt!1286823))))

(declare-fun lt!1286820 () Unit!56841)

(declare-fun lt!1286819 () Unit!56841)

(assert (=> d!1080454 (= lt!1286820 lt!1286819)))

(declare-fun lt!1286829 () List!38942)

(assert (=> d!1080454 (isPrefix!3209 lt!1286829 (++!9662 lt!1286419 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!545 (List!38942 List!38942 List!38942) Unit!56841)

(assert (=> d!1080454 (= lt!1286819 (lemmaPrefixStaysPrefixWhenAddingToSuffix!545 lt!1286829 lt!1286419 suffix!1395))))

(assert (=> d!1080454 (= lt!1286829 (list!14428 (charsOf!3860 lt!1286823)))))

(declare-fun lt!1286817 () Unit!56841)

(declare-fun lt!1286825 () Unit!56841)

(assert (=> d!1080454 (= lt!1286817 lt!1286825)))

(declare-fun lt!1286821 () List!38942)

(declare-fun lt!1286826 () List!38942)

(assert (=> d!1080454 (isPrefix!3209 lt!1286821 (++!9662 lt!1286821 lt!1286826))))

(assert (=> d!1080454 (= lt!1286825 (lemmaConcatTwoListThenFirstIsPrefix!2128 lt!1286821 lt!1286826))))

(assert (=> d!1080454 (= lt!1286826 (_2!22476 (get!12854 (maxPrefix!2969 thiss!23823 rules!3307 lt!1286419))))))

(assert (=> d!1080454 (= lt!1286821 (list!14428 (charsOf!3860 lt!1286823)))))

(declare-datatypes ((List!38946 0))(
  ( (Nil!38822) (Cons!38822 (h!44242 Token!11058) (t!300701 List!38946)) )
))
(declare-fun head!7899 (List!38946) Token!11058)

(declare-datatypes ((IArray!23773 0))(
  ( (IArray!23774 (innerList!11944 List!38946)) )
))
(declare-datatypes ((Conc!11884 0))(
  ( (Node!11884 (left!30293 Conc!11884) (right!30623 Conc!11884) (csize!23998 Int) (cheight!12095 Int)) (Leaf!18418 (xs!15086 IArray!23773) (csize!23999 Int)) (Empty!11884) )
))
(declare-datatypes ((BalanceConc!23382 0))(
  ( (BalanceConc!23383 (c!636722 Conc!11884)) )
))
(declare-fun list!14431 (BalanceConc!23382) List!38946)

(declare-datatypes ((tuple2!38690 0))(
  ( (tuple2!38691 (_1!22479 BalanceConc!23382) (_2!22479 BalanceConc!23380)) )
))
(declare-fun lex!2577 (LexerInterface!5435 List!38943 BalanceConc!23380) tuple2!38690)

(assert (=> d!1080454 (= lt!1286823 (head!7899 (list!14431 (_1!22479 (lex!2577 thiss!23823 rules!3307 (seqFromList!4395 lt!1286419))))))))

(assert (=> d!1080454 (not (isEmpty!23055 rules!3307))))

(assert (=> d!1080454 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1113 thiss!23823 rules!3307 lt!1286419 suffix!1395) lt!1286816)))

(assert (= (and d!1080454 res!1495441) b!3680806))

(assert (= (and b!3680806 res!1495440) b!3680807))

(assert (= (and d!1080454 c!636696) b!3680808))

(assert (= (and d!1080454 (not c!636696)) b!3680809))

(declare-fun m!4191403 () Bool)

(assert (=> b!3680807 m!4191403))

(assert (=> b!3680807 m!4191403))

(declare-fun m!4191405 () Bool)

(assert (=> b!3680807 m!4191405))

(declare-fun m!4191409 () Bool)

(assert (=> b!3680808 m!4191409))

(declare-fun m!4191413 () Bool)

(assert (=> b!3680808 m!4191413))

(assert (=> b!3680808 m!4190485))

(declare-fun m!4191415 () Bool)

(assert (=> b!3680808 m!4191415))

(assert (=> b!3680808 m!4190485))

(assert (=> b!3680808 m!4191409))

(declare-fun m!4191417 () Bool)

(assert (=> b!3680808 m!4191417))

(declare-fun m!4191419 () Bool)

(assert (=> b!3680808 m!4191419))

(assert (=> b!3680808 m!4191419))

(declare-fun m!4191421 () Bool)

(assert (=> b!3680808 m!4191421))

(declare-fun m!4191423 () Bool)

(assert (=> b!3680808 m!4191423))

(assert (=> b!3680806 m!4191403))

(assert (=> b!3680806 m!4191419))

(assert (=> b!3680806 m!4191421))

(declare-fun m!4191425 () Bool)

(assert (=> b!3680806 m!4191425))

(assert (=> b!3680806 m!4191419))

(assert (=> b!3680806 m!4191421))

(assert (=> b!3680806 m!4191403))

(assert (=> b!3680806 m!4191405))

(assert (=> d!1080454 m!4190451))

(declare-fun m!4191427 () Bool)

(assert (=> d!1080454 m!4191427))

(declare-fun m!4191429 () Bool)

(assert (=> d!1080454 m!4191429))

(declare-fun m!4191431 () Bool)

(assert (=> d!1080454 m!4191431))

(declare-fun m!4191433 () Bool)

(assert (=> d!1080454 m!4191433))

(assert (=> d!1080454 m!4190525))

(assert (=> d!1080454 m!4190485))

(assert (=> d!1080454 m!4190451))

(declare-fun m!4191435 () Bool)

(assert (=> d!1080454 m!4191435))

(assert (=> d!1080454 m!4191403))

(declare-fun m!4191437 () Bool)

(assert (=> d!1080454 m!4191437))

(assert (=> d!1080454 m!4190371))

(assert (=> d!1080454 m!4191427))

(declare-fun m!4191439 () Bool)

(assert (=> d!1080454 m!4191439))

(assert (=> d!1080454 m!4191419))

(assert (=> d!1080454 m!4191421))

(assert (=> d!1080454 m!4191403))

(declare-fun m!4191441 () Bool)

(assert (=> d!1080454 m!4191441))

(declare-fun m!4191443 () Bool)

(assert (=> d!1080454 m!4191443))

(declare-fun m!4191445 () Bool)

(assert (=> d!1080454 m!4191445))

(assert (=> d!1080454 m!4190371))

(declare-fun m!4191447 () Bool)

(assert (=> d!1080454 m!4191447))

(assert (=> d!1080454 m!4191419))

(declare-fun m!4191449 () Bool)

(assert (=> d!1080454 m!4191449))

(assert (=> d!1080454 m!4190485))

(declare-fun m!4191451 () Bool)

(assert (=> d!1080454 m!4191451))

(declare-fun m!4191453 () Bool)

(assert (=> d!1080454 m!4191453))

(assert (=> d!1080454 m!4191431))

(assert (=> d!1080454 m!4191443))

(assert (=> d!1080454 m!4190485))

(assert (=> d!1080454 m!4191427))

(assert (=> b!3680076 d!1080454))

(declare-fun d!1080500 () Bool)

(assert (=> d!1080500 (= (isDefined!6552 lt!1286430) (not (isEmpty!23059 lt!1286430)))))

(declare-fun bs!573584 () Bool)

(assert (= bs!573584 d!1080500))

(declare-fun m!4191455 () Bool)

(assert (=> bs!573584 m!4191455))

(assert (=> b!3680076 d!1080500))

(declare-fun d!1080502 () Bool)

(declare-fun e!2279232 () Bool)

(assert (=> d!1080502 e!2279232))

(declare-fun res!1495447 () Bool)

(assert (=> d!1080502 (=> (not res!1495447) (not e!2279232))))

(declare-fun lt!1286833 () List!38942)

(assert (=> d!1080502 (= res!1495447 (= (content!5630 lt!1286833) ((_ map or) (content!5630 lt!1286419) (content!5630 suffix!1395))))))

(declare-fun e!2279231 () List!38942)

(assert (=> d!1080502 (= lt!1286833 e!2279231)))

(declare-fun c!636699 () Bool)

(assert (=> d!1080502 (= c!636699 ((_ is Nil!38818) lt!1286419))))

(assert (=> d!1080502 (= (++!9662 lt!1286419 suffix!1395) lt!1286833)))

(declare-fun b!3680822 () Bool)

(assert (=> b!3680822 (= e!2279232 (or (not (= suffix!1395 Nil!38818)) (= lt!1286833 lt!1286419)))))

(declare-fun b!3680819 () Bool)

(assert (=> b!3680819 (= e!2279231 suffix!1395)))

(declare-fun b!3680820 () Bool)

(assert (=> b!3680820 (= e!2279231 (Cons!38818 (h!44238 lt!1286419) (++!9662 (t!300557 lt!1286419) suffix!1395)))))

(declare-fun b!3680821 () Bool)

(declare-fun res!1495446 () Bool)

(assert (=> b!3680821 (=> (not res!1495446) (not e!2279232))))

(assert (=> b!3680821 (= res!1495446 (= (size!29682 lt!1286833) (+ (size!29682 lt!1286419) (size!29682 suffix!1395))))))

(assert (= (and d!1080502 c!636699) b!3680819))

(assert (= (and d!1080502 (not c!636699)) b!3680820))

(assert (= (and d!1080502 res!1495447) b!3680821))

(assert (= (and b!3680821 res!1495446) b!3680822))

(declare-fun m!4191457 () Bool)

(assert (=> d!1080502 m!4191457))

(declare-fun m!4191459 () Bool)

(assert (=> d!1080502 m!4191459))

(declare-fun m!4191461 () Bool)

(assert (=> d!1080502 m!4191461))

(declare-fun m!4191463 () Bool)

(assert (=> b!3680820 m!4191463))

(declare-fun m!4191465 () Bool)

(assert (=> b!3680821 m!4191465))

(assert (=> b!3680821 m!4190383))

(declare-fun m!4191467 () Bool)

(assert (=> b!3680821 m!4191467))

(assert (=> b!3680076 d!1080502))

(declare-fun d!1080504 () Bool)

(assert (=> d!1080504 (isPrefix!3209 lt!1286434 (++!9662 lt!1286434 (_2!22476 lt!1286421)))))

(declare-fun lt!1286834 () Unit!56841)

(assert (=> d!1080504 (= lt!1286834 (choose!22005 lt!1286434 (_2!22476 lt!1286421)))))

(assert (=> d!1080504 (= (lemmaConcatTwoListThenFirstIsPrefix!2128 lt!1286434 (_2!22476 lt!1286421)) lt!1286834)))

(declare-fun bs!573585 () Bool)

(assert (= bs!573585 d!1080504))

(assert (=> bs!573585 m!4190467))

(assert (=> bs!573585 m!4190467))

(declare-fun m!4191469 () Bool)

(assert (=> bs!573585 m!4191469))

(declare-fun m!4191471 () Bool)

(assert (=> bs!573585 m!4191471))

(assert (=> b!3680076 d!1080504))

(declare-fun b!3680823 () Bool)

(declare-fun e!2279234 () Option!8320)

(declare-fun lt!1286836 () Option!8320)

(declare-fun lt!1286837 () Option!8320)

(assert (=> b!3680823 (= e!2279234 (ite (and ((_ is None!8319) lt!1286836) ((_ is None!8319) lt!1286837)) None!8319 (ite ((_ is None!8319) lt!1286837) lt!1286836 (ite ((_ is None!8319) lt!1286836) lt!1286837 (ite (>= (size!29681 (_1!22476 (v!38255 lt!1286836))) (size!29681 (_1!22476 (v!38255 lt!1286837)))) lt!1286836 lt!1286837)))))))

(declare-fun call!266630 () Option!8320)

(assert (=> b!3680823 (= lt!1286836 call!266630)))

(assert (=> b!3680823 (= lt!1286837 (maxPrefix!2969 thiss!23823 (t!300558 rules!3307) lt!1286459))))

(declare-fun b!3680824 () Bool)

(declare-fun res!1495451 () Bool)

(declare-fun e!2279235 () Bool)

(assert (=> b!3680824 (=> (not res!1495451) (not e!2279235))))

(declare-fun lt!1286839 () Option!8320)

(assert (=> b!3680824 (= res!1495451 (matchR!5174 (regex!5846 (rule!8682 (_1!22476 (get!12854 lt!1286839)))) (list!14428 (charsOf!3860 (_1!22476 (get!12854 lt!1286839))))))))

(declare-fun b!3680825 () Bool)

(declare-fun res!1495450 () Bool)

(assert (=> b!3680825 (=> (not res!1495450) (not e!2279235))))

(assert (=> b!3680825 (= res!1495450 (= (++!9662 (list!14428 (charsOf!3860 (_1!22476 (get!12854 lt!1286839)))) (_2!22476 (get!12854 lt!1286839))) lt!1286459))))

(declare-fun b!3680826 () Bool)

(declare-fun res!1495454 () Bool)

(assert (=> b!3680826 (=> (not res!1495454) (not e!2279235))))

(assert (=> b!3680826 (= res!1495454 (< (size!29682 (_2!22476 (get!12854 lt!1286839))) (size!29682 lt!1286459)))))

(declare-fun b!3680827 () Bool)

(declare-fun e!2279233 () Bool)

(assert (=> b!3680827 (= e!2279233 e!2279235)))

(declare-fun res!1495449 () Bool)

(assert (=> b!3680827 (=> (not res!1495449) (not e!2279235))))

(assert (=> b!3680827 (= res!1495449 (isDefined!6553 lt!1286839))))

(declare-fun d!1080506 () Bool)

(assert (=> d!1080506 e!2279233))

(declare-fun res!1495448 () Bool)

(assert (=> d!1080506 (=> res!1495448 e!2279233)))

(assert (=> d!1080506 (= res!1495448 (isEmpty!23056 lt!1286839))))

(assert (=> d!1080506 (= lt!1286839 e!2279234)))

(declare-fun c!636700 () Bool)

(assert (=> d!1080506 (= c!636700 (and ((_ is Cons!38819) rules!3307) ((_ is Nil!38819) (t!300558 rules!3307))))))

(declare-fun lt!1286838 () Unit!56841)

(declare-fun lt!1286835 () Unit!56841)

(assert (=> d!1080506 (= lt!1286838 lt!1286835)))

(assert (=> d!1080506 (isPrefix!3209 lt!1286459 lt!1286459)))

(assert (=> d!1080506 (= lt!1286835 (lemmaIsPrefixRefl!2018 lt!1286459 lt!1286459))))

(assert (=> d!1080506 (rulesValidInductive!2081 thiss!23823 rules!3307)))

(assert (=> d!1080506 (= (maxPrefix!2969 thiss!23823 rules!3307 lt!1286459) lt!1286839)))

(declare-fun b!3680828 () Bool)

(assert (=> b!3680828 (= e!2279235 (contains!7760 rules!3307 (rule!8682 (_1!22476 (get!12854 lt!1286839)))))))

(declare-fun b!3680829 () Bool)

(declare-fun res!1495453 () Bool)

(assert (=> b!3680829 (=> (not res!1495453) (not e!2279235))))

(assert (=> b!3680829 (= res!1495453 (= (list!14428 (charsOf!3860 (_1!22476 (get!12854 lt!1286839)))) (originalCharacters!6560 (_1!22476 (get!12854 lt!1286839)))))))

(declare-fun b!3680830 () Bool)

(assert (=> b!3680830 (= e!2279234 call!266630)))

(declare-fun bm!266625 () Bool)

(assert (=> bm!266625 (= call!266630 (maxPrefixOneRule!2107 thiss!23823 (h!44239 rules!3307) lt!1286459))))

(declare-fun b!3680831 () Bool)

(declare-fun res!1495452 () Bool)

(assert (=> b!3680831 (=> (not res!1495452) (not e!2279235))))

(assert (=> b!3680831 (= res!1495452 (= (value!187071 (_1!22476 (get!12854 lt!1286839))) (apply!9348 (transformation!5846 (rule!8682 (_1!22476 (get!12854 lt!1286839)))) (seqFromList!4395 (originalCharacters!6560 (_1!22476 (get!12854 lt!1286839)))))))))

(assert (= (and d!1080506 c!636700) b!3680830))

(assert (= (and d!1080506 (not c!636700)) b!3680823))

(assert (= (or b!3680830 b!3680823) bm!266625))

(assert (= (and d!1080506 (not res!1495448)) b!3680827))

(assert (= (and b!3680827 res!1495449) b!3680829))

(assert (= (and b!3680829 res!1495453) b!3680826))

(assert (= (and b!3680826 res!1495454) b!3680825))

(assert (= (and b!3680825 res!1495450) b!3680831))

(assert (= (and b!3680831 res!1495452) b!3680824))

(assert (= (and b!3680824 res!1495451) b!3680828))

(declare-fun m!4191473 () Bool)

(assert (=> b!3680823 m!4191473))

(declare-fun m!4191475 () Bool)

(assert (=> b!3680825 m!4191475))

(declare-fun m!4191477 () Bool)

(assert (=> b!3680825 m!4191477))

(assert (=> b!3680825 m!4191477))

(declare-fun m!4191479 () Bool)

(assert (=> b!3680825 m!4191479))

(assert (=> b!3680825 m!4191479))

(declare-fun m!4191481 () Bool)

(assert (=> b!3680825 m!4191481))

(declare-fun m!4191483 () Bool)

(assert (=> d!1080506 m!4191483))

(declare-fun m!4191485 () Bool)

(assert (=> d!1080506 m!4191485))

(declare-fun m!4191487 () Bool)

(assert (=> d!1080506 m!4191487))

(assert (=> d!1080506 m!4191043))

(assert (=> b!3680824 m!4191475))

(assert (=> b!3680824 m!4191477))

(assert (=> b!3680824 m!4191477))

(assert (=> b!3680824 m!4191479))

(assert (=> b!3680824 m!4191479))

(declare-fun m!4191489 () Bool)

(assert (=> b!3680824 m!4191489))

(declare-fun m!4191491 () Bool)

(assert (=> b!3680827 m!4191491))

(declare-fun m!4191493 () Bool)

(assert (=> bm!266625 m!4191493))

(assert (=> b!3680826 m!4191475))

(declare-fun m!4191495 () Bool)

(assert (=> b!3680826 m!4191495))

(assert (=> b!3680826 m!4190807))

(assert (=> b!3680831 m!4191475))

(declare-fun m!4191497 () Bool)

(assert (=> b!3680831 m!4191497))

(assert (=> b!3680831 m!4191497))

(declare-fun m!4191499 () Bool)

(assert (=> b!3680831 m!4191499))

(assert (=> b!3680828 m!4191475))

(declare-fun m!4191501 () Bool)

(assert (=> b!3680828 m!4191501))

(assert (=> b!3680829 m!4191475))

(assert (=> b!3680829 m!4191477))

(assert (=> b!3680829 m!4191477))

(assert (=> b!3680829 m!4191479))

(assert (=> b!3680076 d!1080506))

(declare-fun b!3680834 () Bool)

(declare-fun e!2279237 () Bool)

(assert (=> b!3680834 (= e!2279237 (isPrefix!3209 (tail!5693 lt!1286434) (tail!5693 lt!1286459)))))

(declare-fun b!3680832 () Bool)

(declare-fun e!2279236 () Bool)

(assert (=> b!3680832 (= e!2279236 e!2279237)))

(declare-fun res!1495455 () Bool)

(assert (=> b!3680832 (=> (not res!1495455) (not e!2279237))))

(assert (=> b!3680832 (= res!1495455 (not ((_ is Nil!38818) lt!1286459)))))

(declare-fun d!1080508 () Bool)

(declare-fun e!2279238 () Bool)

(assert (=> d!1080508 e!2279238))

(declare-fun res!1495458 () Bool)

(assert (=> d!1080508 (=> res!1495458 e!2279238)))

(declare-fun lt!1286840 () Bool)

(assert (=> d!1080508 (= res!1495458 (not lt!1286840))))

(assert (=> d!1080508 (= lt!1286840 e!2279236)))

(declare-fun res!1495456 () Bool)

(assert (=> d!1080508 (=> res!1495456 e!2279236)))

(assert (=> d!1080508 (= res!1495456 ((_ is Nil!38818) lt!1286434))))

(assert (=> d!1080508 (= (isPrefix!3209 lt!1286434 lt!1286459) lt!1286840)))

(declare-fun b!3680835 () Bool)

(assert (=> b!3680835 (= e!2279238 (>= (size!29682 lt!1286459) (size!29682 lt!1286434)))))

(declare-fun b!3680833 () Bool)

(declare-fun res!1495457 () Bool)

(assert (=> b!3680833 (=> (not res!1495457) (not e!2279237))))

(assert (=> b!3680833 (= res!1495457 (= (head!7898 lt!1286434) (head!7898 lt!1286459)))))

(assert (= (and d!1080508 (not res!1495456)) b!3680832))

(assert (= (and b!3680832 res!1495455) b!3680833))

(assert (= (and b!3680833 res!1495457) b!3680834))

(assert (= (and d!1080508 (not res!1495458)) b!3680835))

(assert (=> b!3680834 m!4190995))

(assert (=> b!3680834 m!4190871))

(assert (=> b!3680834 m!4190995))

(assert (=> b!3680834 m!4190871))

(declare-fun m!4191503 () Bool)

(assert (=> b!3680834 m!4191503))

(assert (=> b!3680835 m!4190807))

(assert (=> b!3680835 m!4190503))

(assert (=> b!3680833 m!4190387))

(assert (=> b!3680833 m!4191249))

(assert (=> b!3680076 d!1080508))

(declare-fun d!1080510 () Bool)

(declare-fun e!2279240 () Bool)

(assert (=> d!1080510 e!2279240))

(declare-fun res!1495460 () Bool)

(assert (=> d!1080510 (=> (not res!1495460) (not e!2279240))))

(declare-fun lt!1286841 () List!38942)

(assert (=> d!1080510 (= res!1495460 (= (content!5630 lt!1286841) ((_ map or) (content!5630 lt!1286434) (content!5630 (_2!22476 lt!1286421)))))))

(declare-fun e!2279239 () List!38942)

(assert (=> d!1080510 (= lt!1286841 e!2279239)))

(declare-fun c!636701 () Bool)

(assert (=> d!1080510 (= c!636701 ((_ is Nil!38818) lt!1286434))))

(assert (=> d!1080510 (= (++!9662 lt!1286434 (_2!22476 lt!1286421)) lt!1286841)))

(declare-fun b!3680839 () Bool)

(assert (=> b!3680839 (= e!2279240 (or (not (= (_2!22476 lt!1286421) Nil!38818)) (= lt!1286841 lt!1286434)))))

(declare-fun b!3680836 () Bool)

(assert (=> b!3680836 (= e!2279239 (_2!22476 lt!1286421))))

(declare-fun b!3680837 () Bool)

(assert (=> b!3680837 (= e!2279239 (Cons!38818 (h!44238 lt!1286434) (++!9662 (t!300557 lt!1286434) (_2!22476 lt!1286421))))))

(declare-fun b!3680838 () Bool)

(declare-fun res!1495459 () Bool)

(assert (=> b!3680838 (=> (not res!1495459) (not e!2279240))))

(assert (=> b!3680838 (= res!1495459 (= (size!29682 lt!1286841) (+ (size!29682 lt!1286434) (size!29682 (_2!22476 lt!1286421)))))))

(assert (= (and d!1080510 c!636701) b!3680836))

(assert (= (and d!1080510 (not c!636701)) b!3680837))

(assert (= (and d!1080510 res!1495460) b!3680838))

(assert (= (and b!3680838 res!1495459) b!3680839))

(declare-fun m!4191505 () Bool)

(assert (=> d!1080510 m!4191505))

(assert (=> d!1080510 m!4190675))

(declare-fun m!4191507 () Bool)

(assert (=> d!1080510 m!4191507))

(declare-fun m!4191509 () Bool)

(assert (=> b!3680837 m!4191509))

(declare-fun m!4191511 () Bool)

(assert (=> b!3680838 m!4191511))

(assert (=> b!3680838 m!4190503))

(declare-fun m!4191513 () Bool)

(assert (=> b!3680838 m!4191513))

(assert (=> b!3680076 d!1080510))

(declare-fun d!1080512 () Bool)

(declare-fun e!2279243 () Bool)

(assert (=> d!1080512 e!2279243))

(declare-fun res!1495465 () Bool)

(assert (=> d!1080512 (=> (not res!1495465) (not e!2279243))))

(assert (=> d!1080512 (= res!1495465 (isDefined!6552 (getRuleFromTag!1450 thiss!23823 rules!3307 (tag!6648 (rule!8682 (_1!22476 lt!1286421))))))))

(declare-fun lt!1286844 () Unit!56841)

(declare-fun choose!22008 (LexerInterface!5435 List!38943 List!38942 Token!11058) Unit!56841)

(assert (=> d!1080512 (= lt!1286844 (choose!22008 thiss!23823 rules!3307 lt!1286459 (_1!22476 lt!1286421)))))

(assert (=> d!1080512 (rulesInvariant!4832 thiss!23823 rules!3307)))

(assert (=> d!1080512 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1450 thiss!23823 rules!3307 lt!1286459 (_1!22476 lt!1286421)) lt!1286844)))

(declare-fun b!3680844 () Bool)

(declare-fun res!1495466 () Bool)

(assert (=> b!3680844 (=> (not res!1495466) (not e!2279243))))

(assert (=> b!3680844 (= res!1495466 (matchR!5174 (regex!5846 (get!12853 (getRuleFromTag!1450 thiss!23823 rules!3307 (tag!6648 (rule!8682 (_1!22476 lt!1286421)))))) (list!14428 (charsOf!3860 (_1!22476 lt!1286421)))))))

(declare-fun b!3680845 () Bool)

(assert (=> b!3680845 (= e!2279243 (= (rule!8682 (_1!22476 lt!1286421)) (get!12853 (getRuleFromTag!1450 thiss!23823 rules!3307 (tag!6648 (rule!8682 (_1!22476 lt!1286421)))))))))

(assert (= (and d!1080512 res!1495465) b!3680844))

(assert (= (and b!3680844 res!1495466) b!3680845))

(assert (=> d!1080512 m!4190487))

(assert (=> d!1080512 m!4190487))

(declare-fun m!4191515 () Bool)

(assert (=> d!1080512 m!4191515))

(declare-fun m!4191517 () Bool)

(assert (=> d!1080512 m!4191517))

(assert (=> d!1080512 m!4190515))

(assert (=> b!3680844 m!4190399))

(assert (=> b!3680844 m!4190487))

(assert (=> b!3680844 m!4190487))

(declare-fun m!4191519 () Bool)

(assert (=> b!3680844 m!4191519))

(assert (=> b!3680844 m!4190401))

(declare-fun m!4191521 () Bool)

(assert (=> b!3680844 m!4191521))

(assert (=> b!3680844 m!4190399))

(assert (=> b!3680844 m!4190401))

(assert (=> b!3680845 m!4190487))

(assert (=> b!3680845 m!4190487))

(assert (=> b!3680845 m!4191519))

(assert (=> b!3680076 d!1080512))

(declare-fun b!3680848 () Bool)

(declare-fun e!2279245 () Bool)

(assert (=> b!3680848 (= e!2279245 (isPrefix!3209 (tail!5693 lt!1286434) (tail!5693 lt!1286427)))))

(declare-fun b!3680846 () Bool)

(declare-fun e!2279244 () Bool)

(assert (=> b!3680846 (= e!2279244 e!2279245)))

(declare-fun res!1495467 () Bool)

(assert (=> b!3680846 (=> (not res!1495467) (not e!2279245))))

(assert (=> b!3680846 (= res!1495467 (not ((_ is Nil!38818) lt!1286427)))))

(declare-fun d!1080514 () Bool)

(declare-fun e!2279246 () Bool)

(assert (=> d!1080514 e!2279246))

(declare-fun res!1495470 () Bool)

(assert (=> d!1080514 (=> res!1495470 e!2279246)))

(declare-fun lt!1286845 () Bool)

(assert (=> d!1080514 (= res!1495470 (not lt!1286845))))

(assert (=> d!1080514 (= lt!1286845 e!2279244)))

(declare-fun res!1495468 () Bool)

(assert (=> d!1080514 (=> res!1495468 e!2279244)))

(assert (=> d!1080514 (= res!1495468 ((_ is Nil!38818) lt!1286434))))

(assert (=> d!1080514 (= (isPrefix!3209 lt!1286434 lt!1286427) lt!1286845)))

(declare-fun b!3680849 () Bool)

(assert (=> b!3680849 (= e!2279246 (>= (size!29682 lt!1286427) (size!29682 lt!1286434)))))

(declare-fun b!3680847 () Bool)

(declare-fun res!1495469 () Bool)

(assert (=> b!3680847 (=> (not res!1495469) (not e!2279245))))

(assert (=> b!3680847 (= res!1495469 (= (head!7898 lt!1286434) (head!7898 lt!1286427)))))

(assert (= (and d!1080514 (not res!1495468)) b!3680846))

(assert (= (and b!3680846 res!1495467) b!3680847))

(assert (= (and b!3680847 res!1495469) b!3680848))

(assert (= (and d!1080514 (not res!1495470)) b!3680849))

(assert (=> b!3680848 m!4190995))

(declare-fun m!4191523 () Bool)

(assert (=> b!3680848 m!4191523))

(assert (=> b!3680848 m!4190995))

(assert (=> b!3680848 m!4191523))

(declare-fun m!4191525 () Bool)

(assert (=> b!3680848 m!4191525))

(declare-fun m!4191527 () Bool)

(assert (=> b!3680849 m!4191527))

(assert (=> b!3680849 m!4190503))

(assert (=> b!3680847 m!4190387))

(declare-fun m!4191529 () Bool)

(assert (=> b!3680847 m!4191529))

(assert (=> b!3680076 d!1080514))

(declare-fun d!1080516 () Bool)

(assert (=> d!1080516 (= (list!14428 lt!1286439) (list!14429 (c!636549 lt!1286439)))))

(declare-fun bs!573586 () Bool)

(assert (= bs!573586 d!1080516))

(declare-fun m!4191531 () Bool)

(assert (=> bs!573586 m!4191531))

(assert (=> b!3680076 d!1080516))

(declare-fun d!1080518 () Bool)

(assert (=> d!1080518 (not (contains!7759 (usedCharacters!1058 (regex!5846 (rule!8682 (_1!22476 lt!1286421)))) lt!1286438))))

(declare-fun lt!1286846 () Unit!56841)

(assert (=> d!1080518 (= lt!1286846 (choose!21996 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8682 (_1!22476 lt!1286421)) lt!1286438))))

(assert (=> d!1080518 (rulesInvariant!4832 thiss!23823 rules!3307)))

(assert (=> d!1080518 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!374 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8682 (_1!22476 lt!1286421)) lt!1286438) lt!1286846)))

(declare-fun bs!573587 () Bool)

(assert (= bs!573587 d!1080518))

(assert (=> bs!573587 m!4190389))

(assert (=> bs!573587 m!4190389))

(assert (=> bs!573587 m!4190585))

(declare-fun m!4191533 () Bool)

(assert (=> bs!573587 m!4191533))

(assert (=> bs!573587 m!4190515))

(assert (=> b!3680095 d!1080518))

(declare-fun b!3680860 () Bool)

(declare-fun res!1495473 () Bool)

(declare-fun e!2279253 () Bool)

(assert (=> b!3680860 (=> res!1495473 e!2279253)))

(assert (=> b!3680860 (= res!1495473 (not ((_ is IntegerValue!18230) (value!187071 token!511))))))

(declare-fun e!2279255 () Bool)

(assert (=> b!3680860 (= e!2279255 e!2279253)))

(declare-fun b!3680861 () Bool)

(declare-fun e!2279254 () Bool)

(declare-fun inv!16 (TokenValue!6076) Bool)

(assert (=> b!3680861 (= e!2279254 (inv!16 (value!187071 token!511)))))

(declare-fun b!3680862 () Bool)

(declare-fun inv!17 (TokenValue!6076) Bool)

(assert (=> b!3680862 (= e!2279255 (inv!17 (value!187071 token!511)))))

(declare-fun b!3680863 () Bool)

(assert (=> b!3680863 (= e!2279254 e!2279255)))

(declare-fun c!636706 () Bool)

(assert (=> b!3680863 (= c!636706 ((_ is IntegerValue!18229) (value!187071 token!511)))))

(declare-fun d!1080520 () Bool)

(declare-fun c!636707 () Bool)

(assert (=> d!1080520 (= c!636707 ((_ is IntegerValue!18228) (value!187071 token!511)))))

(assert (=> d!1080520 (= (inv!21 (value!187071 token!511)) e!2279254)))

(declare-fun b!3680864 () Bool)

(declare-fun inv!15 (TokenValue!6076) Bool)

(assert (=> b!3680864 (= e!2279253 (inv!15 (value!187071 token!511)))))

(assert (= (and d!1080520 c!636707) b!3680861))

(assert (= (and d!1080520 (not c!636707)) b!3680863))

(assert (= (and b!3680863 c!636706) b!3680862))

(assert (= (and b!3680863 (not c!636706)) b!3680860))

(assert (= (and b!3680860 (not res!1495473)) b!3680864))

(declare-fun m!4191535 () Bool)

(assert (=> b!3680861 m!4191535))

(declare-fun m!4191537 () Bool)

(assert (=> b!3680862 m!4191537))

(declare-fun m!4191539 () Bool)

(assert (=> b!3680864 m!4191539))

(assert (=> b!3680077 d!1080520))

(declare-fun d!1080522 () Bool)

(declare-fun lt!1286849 () Bool)

(declare-fun content!5631 (List!38943) (InoxSet Rule!11492))

(assert (=> d!1080522 (= lt!1286849 (select (content!5631 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2279261 () Bool)

(assert (=> d!1080522 (= lt!1286849 e!2279261)))

(declare-fun res!1495479 () Bool)

(assert (=> d!1080522 (=> (not res!1495479) (not e!2279261))))

(assert (=> d!1080522 (= res!1495479 ((_ is Cons!38819) rules!3307))))

(assert (=> d!1080522 (= (contains!7760 rules!3307 anOtherTypeRule!33) lt!1286849)))

(declare-fun b!3680869 () Bool)

(declare-fun e!2279260 () Bool)

(assert (=> b!3680869 (= e!2279261 e!2279260)))

(declare-fun res!1495478 () Bool)

(assert (=> b!3680869 (=> res!1495478 e!2279260)))

(assert (=> b!3680869 (= res!1495478 (= (h!44239 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3680870 () Bool)

(assert (=> b!3680870 (= e!2279260 (contains!7760 (t!300558 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1080522 res!1495479) b!3680869))

(assert (= (and b!3680869 (not res!1495478)) b!3680870))

(declare-fun m!4191541 () Bool)

(assert (=> d!1080522 m!4191541))

(declare-fun m!4191543 () Bool)

(assert (=> d!1080522 m!4191543))

(declare-fun m!4191545 () Bool)

(assert (=> b!3680870 m!4191545))

(assert (=> b!3680091 d!1080522))

(declare-fun d!1080524 () Bool)

(assert (=> d!1080524 (= (inv!52312 (tag!6648 (h!44239 rules!3307))) (= (mod (str.len (value!187070 (tag!6648 (h!44239 rules!3307)))) 2) 0))))

(assert (=> b!3680112 d!1080524))

(declare-fun d!1080526 () Bool)

(declare-fun res!1495480 () Bool)

(declare-fun e!2279262 () Bool)

(assert (=> d!1080526 (=> (not res!1495480) (not e!2279262))))

(assert (=> d!1080526 (= res!1495480 (semiInverseModEq!2495 (toChars!8001 (transformation!5846 (h!44239 rules!3307))) (toValue!8142 (transformation!5846 (h!44239 rules!3307)))))))

(assert (=> d!1080526 (= (inv!52315 (transformation!5846 (h!44239 rules!3307))) e!2279262)))

(declare-fun b!3680871 () Bool)

(assert (=> b!3680871 (= e!2279262 (equivClasses!2394 (toChars!8001 (transformation!5846 (h!44239 rules!3307))) (toValue!8142 (transformation!5846 (h!44239 rules!3307)))))))

(assert (= (and d!1080526 res!1495480) b!3680871))

(declare-fun m!4191547 () Bool)

(assert (=> d!1080526 m!4191547))

(declare-fun m!4191549 () Bool)

(assert (=> b!3680871 m!4191549))

(assert (=> b!3680112 d!1080526))

(declare-fun d!1080528 () Bool)

(assert (=> d!1080528 (not (matchR!5174 (regex!5846 rule!403) lt!1286419))))

(declare-fun lt!1286850 () Unit!56841)

(assert (=> d!1080528 (= lt!1286850 (choose!21990 (regex!5846 rule!403) lt!1286419 lt!1286457))))

(assert (=> d!1080528 (validRegex!4857 (regex!5846 rule!403))))

(assert (=> d!1080528 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!794 (regex!5846 rule!403) lt!1286419 lt!1286457) lt!1286850)))

(declare-fun bs!573588 () Bool)

(assert (= bs!573588 d!1080528))

(assert (=> bs!573588 m!4190427))

(declare-fun m!4191551 () Bool)

(assert (=> bs!573588 m!4191551))

(declare-fun m!4191553 () Bool)

(assert (=> bs!573588 m!4191553))

(assert (=> b!3680074 d!1080528))

(assert (=> bm!266568 d!1080258))

(declare-fun d!1080530 () Bool)

(declare-fun lt!1286851 () List!38942)

(assert (=> d!1080530 (= (++!9662 lt!1286434 lt!1286851) lt!1286459)))

(declare-fun e!2279263 () List!38942)

(assert (=> d!1080530 (= lt!1286851 e!2279263)))

(declare-fun c!636708 () Bool)

(assert (=> d!1080530 (= c!636708 ((_ is Cons!38818) lt!1286434))))

(assert (=> d!1080530 (>= (size!29682 lt!1286459) (size!29682 lt!1286434))))

(assert (=> d!1080530 (= (getSuffix!1762 lt!1286459 lt!1286434) lt!1286851)))

(declare-fun b!3680872 () Bool)

(assert (=> b!3680872 (= e!2279263 (getSuffix!1762 (tail!5693 lt!1286459) (t!300557 lt!1286434)))))

(declare-fun b!3680873 () Bool)

(assert (=> b!3680873 (= e!2279263 lt!1286459)))

(assert (= (and d!1080530 c!636708) b!3680872))

(assert (= (and d!1080530 (not c!636708)) b!3680873))

(declare-fun m!4191555 () Bool)

(assert (=> d!1080530 m!4191555))

(assert (=> d!1080530 m!4190807))

(assert (=> d!1080530 m!4190503))

(assert (=> b!3680872 m!4190871))

(assert (=> b!3680872 m!4190871))

(declare-fun m!4191557 () Bool)

(assert (=> b!3680872 m!4191557))

(assert (=> b!3680062 d!1080530))

(declare-fun d!1080532 () Bool)

(assert (=> d!1080532 (= (apply!9348 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))) (seqFromList!4395 lt!1286434)) (dynLambda!17016 (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421)))) (seqFromList!4395 lt!1286434)))))

(declare-fun b_lambda!109343 () Bool)

(assert (=> (not b_lambda!109343) (not d!1080532)))

(declare-fun tb!213487 () Bool)

(declare-fun t!300678 () Bool)

(assert (=> (and b!3680092 (= (toValue!8142 (transformation!5846 rule!403)) (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300678) tb!213487))

(declare-fun result!259746 () Bool)

(assert (=> tb!213487 (= result!259746 (inv!21 (dynLambda!17016 (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421)))) (seqFromList!4395 lt!1286434))))))

(declare-fun m!4191559 () Bool)

(assert (=> tb!213487 m!4191559))

(assert (=> d!1080532 t!300678))

(declare-fun b_and!274983 () Bool)

(assert (= b_and!274963 (and (=> t!300678 result!259746) b_and!274983)))

(declare-fun tb!213489 () Bool)

(declare-fun t!300680 () Bool)

(assert (=> (and b!3680111 (= (toValue!8142 (transformation!5846 (h!44239 rules!3307))) (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300680) tb!213489))

(declare-fun result!259748 () Bool)

(assert (= result!259748 result!259746))

(assert (=> d!1080532 t!300680))

(declare-fun b_and!274985 () Bool)

(assert (= b_and!274965 (and (=> t!300680 result!259748) b_and!274985)))

(declare-fun tb!213491 () Bool)

(declare-fun t!300682 () Bool)

(assert (=> (and b!3680068 (= (toValue!8142 (transformation!5846 anOtherTypeRule!33)) (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300682) tb!213491))

(declare-fun result!259750 () Bool)

(assert (= result!259750 result!259746))

(assert (=> d!1080532 t!300682))

(declare-fun b_and!274987 () Bool)

(assert (= b_and!274967 (and (=> t!300682 result!259750) b_and!274987)))

(declare-fun tb!213493 () Bool)

(declare-fun t!300684 () Bool)

(assert (=> (and b!3680106 (= (toValue!8142 (transformation!5846 (rule!8682 token!511))) (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300684) tb!213493))

(declare-fun result!259752 () Bool)

(assert (= result!259752 result!259746))

(assert (=> d!1080532 t!300684))

(declare-fun b_and!274989 () Bool)

(assert (= b_and!274969 (and (=> t!300684 result!259752) b_and!274989)))

(assert (=> d!1080532 m!4190495))

(declare-fun m!4191561 () Bool)

(assert (=> d!1080532 m!4191561))

(assert (=> b!3680062 d!1080532))

(declare-fun d!1080534 () Bool)

(assert (=> d!1080534 (= (seqFromList!4395 lt!1286434) (fromListB!2031 lt!1286434))))

(declare-fun bs!573589 () Bool)

(assert (= bs!573589 d!1080534))

(declare-fun m!4191563 () Bool)

(assert (=> bs!573589 m!4191563))

(assert (=> b!3680062 d!1080534))

(declare-fun b!3680874 () Bool)

(declare-fun res!1495482 () Bool)

(declare-fun e!2279268 () Bool)

(assert (=> b!3680874 (=> (not res!1495482) (not e!2279268))))

(declare-fun lt!1286854 () Option!8320)

(assert (=> b!3680874 (= res!1495482 (= (rule!8682 (_1!22476 (get!12854 lt!1286854))) (rule!8682 (_1!22476 lt!1286421))))))

(declare-fun b!3680875 () Bool)

(declare-fun e!2279266 () Bool)

(assert (=> b!3680875 (= e!2279266 (matchR!5174 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) (_1!22477 (findLongestMatchInner!1090 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) Nil!38818 (size!29682 Nil!38818) lt!1286459 lt!1286459 (size!29682 lt!1286459)))))))

(declare-fun b!3680876 () Bool)

(declare-fun e!2279265 () Option!8320)

(declare-fun lt!1286853 () tuple2!38686)

(assert (=> b!3680876 (= e!2279265 (Some!8319 (tuple2!38685 (Token!11059 (apply!9348 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))) (seqFromList!4395 (_1!22477 lt!1286853))) (rule!8682 (_1!22476 lt!1286421)) (size!29683 (seqFromList!4395 (_1!22477 lt!1286853))) (_1!22477 lt!1286853)) (_2!22477 lt!1286853))))))

(declare-fun lt!1286852 () Unit!56841)

(assert (=> b!3680876 (= lt!1286852 (longestMatchIsAcceptedByMatchOrIsEmpty!1063 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286459))))

(declare-fun res!1495484 () Bool)

(assert (=> b!3680876 (= res!1495484 (isEmpty!23054 (_1!22477 (findLongestMatchInner!1090 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) Nil!38818 (size!29682 Nil!38818) lt!1286459 lt!1286459 (size!29682 lt!1286459)))))))

(assert (=> b!3680876 (=> res!1495484 e!2279266)))

(assert (=> b!3680876 e!2279266))

(declare-fun lt!1286855 () Unit!56841)

(assert (=> b!3680876 (= lt!1286855 lt!1286852)))

(declare-fun lt!1286856 () Unit!56841)

(assert (=> b!3680876 (= lt!1286856 (lemmaSemiInverse!1595 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))) (seqFromList!4395 (_1!22477 lt!1286853))))))

(declare-fun b!3680877 () Bool)

(assert (=> b!3680877 (= e!2279268 (= (size!29681 (_1!22476 (get!12854 lt!1286854))) (size!29682 (originalCharacters!6560 (_1!22476 (get!12854 lt!1286854))))))))

(declare-fun b!3680879 () Bool)

(declare-fun res!1495483 () Bool)

(assert (=> b!3680879 (=> (not res!1495483) (not e!2279268))))

(assert (=> b!3680879 (= res!1495483 (= (++!9662 (list!14428 (charsOf!3860 (_1!22476 (get!12854 lt!1286854)))) (_2!22476 (get!12854 lt!1286854))) lt!1286459))))

(declare-fun b!3680880 () Bool)

(declare-fun res!1495481 () Bool)

(assert (=> b!3680880 (=> (not res!1495481) (not e!2279268))))

(assert (=> b!3680880 (= res!1495481 (= (value!187071 (_1!22476 (get!12854 lt!1286854))) (apply!9348 (transformation!5846 (rule!8682 (_1!22476 (get!12854 lt!1286854)))) (seqFromList!4395 (originalCharacters!6560 (_1!22476 (get!12854 lt!1286854)))))))))

(declare-fun b!3680881 () Bool)

(assert (=> b!3680881 (= e!2279265 None!8319)))

(declare-fun b!3680882 () Bool)

(declare-fun res!1495486 () Bool)

(assert (=> b!3680882 (=> (not res!1495486) (not e!2279268))))

(assert (=> b!3680882 (= res!1495486 (< (size!29682 (_2!22476 (get!12854 lt!1286854))) (size!29682 lt!1286459)))))

(declare-fun d!1080536 () Bool)

(declare-fun e!2279267 () Bool)

(assert (=> d!1080536 e!2279267))

(declare-fun res!1495487 () Bool)

(assert (=> d!1080536 (=> res!1495487 e!2279267)))

(assert (=> d!1080536 (= res!1495487 (isEmpty!23056 lt!1286854))))

(assert (=> d!1080536 (= lt!1286854 e!2279265)))

(declare-fun c!636709 () Bool)

(assert (=> d!1080536 (= c!636709 (isEmpty!23054 (_1!22477 lt!1286853)))))

(assert (=> d!1080536 (= lt!1286853 (findLongestMatch!1005 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286459))))

(assert (=> d!1080536 (ruleValid!2110 thiss!23823 (rule!8682 (_1!22476 lt!1286421)))))

(assert (=> d!1080536 (= (maxPrefixOneRule!2107 thiss!23823 (rule!8682 (_1!22476 lt!1286421)) lt!1286459) lt!1286854)))

(declare-fun b!3680878 () Bool)

(assert (=> b!3680878 (= e!2279267 e!2279268)))

(declare-fun res!1495485 () Bool)

(assert (=> b!3680878 (=> (not res!1495485) (not e!2279268))))

(assert (=> b!3680878 (= res!1495485 (matchR!5174 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) (list!14428 (charsOf!3860 (_1!22476 (get!12854 lt!1286854))))))))

(assert (= (and d!1080536 c!636709) b!3680881))

(assert (= (and d!1080536 (not c!636709)) b!3680876))

(assert (= (and b!3680876 (not res!1495484)) b!3680875))

(assert (= (and d!1080536 (not res!1495487)) b!3680878))

(assert (= (and b!3680878 res!1495485) b!3680879))

(assert (= (and b!3680879 res!1495483) b!3680882))

(assert (= (and b!3680882 res!1495486) b!3680874))

(assert (= (and b!3680874 res!1495482) b!3680880))

(assert (= (and b!3680880 res!1495481) b!3680877))

(declare-fun m!4191565 () Bool)

(assert (=> b!3680877 m!4191565))

(declare-fun m!4191567 () Bool)

(assert (=> b!3680877 m!4191567))

(assert (=> b!3680878 m!4191565))

(declare-fun m!4191569 () Bool)

(assert (=> b!3680878 m!4191569))

(assert (=> b!3680878 m!4191569))

(declare-fun m!4191571 () Bool)

(assert (=> b!3680878 m!4191571))

(assert (=> b!3680878 m!4191571))

(declare-fun m!4191573 () Bool)

(assert (=> b!3680878 m!4191573))

(assert (=> b!3680875 m!4190805))

(assert (=> b!3680875 m!4190807))

(assert (=> b!3680875 m!4190805))

(assert (=> b!3680875 m!4190807))

(declare-fun m!4191575 () Bool)

(assert (=> b!3680875 m!4191575))

(declare-fun m!4191577 () Bool)

(assert (=> b!3680875 m!4191577))

(assert (=> b!3680880 m!4191565))

(declare-fun m!4191579 () Bool)

(assert (=> b!3680880 m!4191579))

(assert (=> b!3680880 m!4191579))

(declare-fun m!4191581 () Bool)

(assert (=> b!3680880 m!4191581))

(declare-fun m!4191583 () Bool)

(assert (=> b!3680876 m!4191583))

(assert (=> b!3680876 m!4191583))

(declare-fun m!4191585 () Bool)

(assert (=> b!3680876 m!4191585))

(assert (=> b!3680876 m!4191583))

(declare-fun m!4191587 () Bool)

(assert (=> b!3680876 m!4191587))

(assert (=> b!3680876 m!4190807))

(assert (=> b!3680876 m!4191583))

(declare-fun m!4191589 () Bool)

(assert (=> b!3680876 m!4191589))

(assert (=> b!3680876 m!4190805))

(assert (=> b!3680876 m!4190807))

(assert (=> b!3680876 m!4191575))

(declare-fun m!4191591 () Bool)

(assert (=> b!3680876 m!4191591))

(declare-fun m!4191593 () Bool)

(assert (=> b!3680876 m!4191593))

(assert (=> b!3680876 m!4190805))

(declare-fun m!4191595 () Bool)

(assert (=> d!1080536 m!4191595))

(declare-fun m!4191597 () Bool)

(assert (=> d!1080536 m!4191597))

(declare-fun m!4191599 () Bool)

(assert (=> d!1080536 m!4191599))

(declare-fun m!4191601 () Bool)

(assert (=> d!1080536 m!4191601))

(assert (=> b!3680874 m!4191565))

(assert (=> b!3680879 m!4191565))

(assert (=> b!3680879 m!4191569))

(assert (=> b!3680879 m!4191569))

(assert (=> b!3680879 m!4191571))

(assert (=> b!3680879 m!4191571))

(declare-fun m!4191603 () Bool)

(assert (=> b!3680879 m!4191603))

(assert (=> b!3680882 m!4191565))

(declare-fun m!4191605 () Bool)

(assert (=> b!3680882 m!4191605))

(assert (=> b!3680882 m!4190807))

(assert (=> b!3680062 d!1080536))

(declare-fun d!1080538 () Bool)

(declare-fun lt!1286857 () Int)

(assert (=> d!1080538 (>= lt!1286857 0)))

(declare-fun e!2279269 () Int)

(assert (=> d!1080538 (= lt!1286857 e!2279269)))

(declare-fun c!636710 () Bool)

(assert (=> d!1080538 (= c!636710 ((_ is Nil!38818) lt!1286434))))

(assert (=> d!1080538 (= (size!29682 lt!1286434) lt!1286857)))

(declare-fun b!3680883 () Bool)

(assert (=> b!3680883 (= e!2279269 0)))

(declare-fun b!3680884 () Bool)

(assert (=> b!3680884 (= e!2279269 (+ 1 (size!29682 (t!300557 lt!1286434))))))

(assert (= (and d!1080538 c!636710) b!3680883))

(assert (= (and d!1080538 (not c!636710)) b!3680884))

(declare-fun m!4191607 () Bool)

(assert (=> b!3680884 m!4191607))

(assert (=> b!3680062 d!1080538))

(declare-fun d!1080540 () Bool)

(assert (=> d!1080540 (= (_2!22476 lt!1286421) lt!1286414)))

(declare-fun lt!1286858 () Unit!56841)

(assert (=> d!1080540 (= lt!1286858 (choose!22000 lt!1286434 (_2!22476 lt!1286421) lt!1286434 lt!1286414 lt!1286459))))

(assert (=> d!1080540 (isPrefix!3209 lt!1286434 lt!1286459)))

(assert (=> d!1080540 (= (lemmaSamePrefixThenSameSuffix!1536 lt!1286434 (_2!22476 lt!1286421) lt!1286434 lt!1286414 lt!1286459) lt!1286858)))

(declare-fun bs!573590 () Bool)

(assert (= bs!573590 d!1080540))

(declare-fun m!4191609 () Bool)

(assert (=> bs!573590 m!4191609))

(assert (=> bs!573590 m!4190481))

(assert (=> b!3680062 d!1080540))

(declare-fun d!1080542 () Bool)

(assert (=> d!1080542 (= (maxPrefixOneRule!2107 thiss!23823 (rule!8682 (_1!22476 lt!1286421)) lt!1286459) (Some!8319 (tuple2!38685 (Token!11059 (apply!9348 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))) (seqFromList!4395 lt!1286434)) (rule!8682 (_1!22476 lt!1286421)) (size!29682 lt!1286434) lt!1286434) (_2!22476 lt!1286421))))))

(declare-fun lt!1286859 () Unit!56841)

(assert (=> d!1080542 (= lt!1286859 (choose!22001 thiss!23823 rules!3307 lt!1286434 lt!1286459 (_2!22476 lt!1286421) (rule!8682 (_1!22476 lt!1286421))))))

(assert (=> d!1080542 (not (isEmpty!23055 rules!3307))))

(assert (=> d!1080542 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1163 thiss!23823 rules!3307 lt!1286434 lt!1286459 (_2!22476 lt!1286421) (rule!8682 (_1!22476 lt!1286421))) lt!1286859)))

(declare-fun bs!573591 () Bool)

(assert (= bs!573591 d!1080542))

(assert (=> bs!573591 m!4190525))

(assert (=> bs!573591 m!4190501))

(assert (=> bs!573591 m!4190495))

(assert (=> bs!573591 m!4190497))

(assert (=> bs!573591 m!4190495))

(assert (=> bs!573591 m!4190503))

(declare-fun m!4191611 () Bool)

(assert (=> bs!573591 m!4191611))

(assert (=> b!3680062 d!1080542))

(declare-fun d!1080544 () Bool)

(assert (=> d!1080544 (not (matchR!5174 (regex!5846 rule!403) lt!1286419))))

(declare-fun lt!1286862 () Unit!56841)

(declare-fun choose!22010 (LexerInterface!5435 List!38943 Rule!11492 List!38942 List!38942 List!38942 Rule!11492) Unit!56841)

(assert (=> d!1080544 (= lt!1286862 (choose!22010 thiss!23823 rules!3307 (rule!8682 (_1!22476 lt!1286421)) lt!1286434 lt!1286459 lt!1286419 rule!403))))

(assert (=> d!1080544 (isPrefix!3209 lt!1286434 lt!1286459)))

(assert (=> d!1080544 (= (lemmaMaxPrefixOutputsMaxPrefix!388 thiss!23823 rules!3307 (rule!8682 (_1!22476 lt!1286421)) lt!1286434 lt!1286459 lt!1286419 rule!403) lt!1286862)))

(declare-fun bs!573592 () Bool)

(assert (= bs!573592 d!1080544))

(assert (=> bs!573592 m!4190427))

(declare-fun m!4191613 () Bool)

(assert (=> bs!573592 m!4191613))

(assert (=> bs!573592 m!4190481))

(assert (=> b!3680081 d!1080544))

(declare-fun d!1080546 () Bool)

(declare-fun lt!1286863 () Bool)

(assert (=> d!1080546 (= lt!1286863 (select (content!5630 lt!1286426) lt!1286438))))

(declare-fun e!2279271 () Bool)

(assert (=> d!1080546 (= lt!1286863 e!2279271)))

(declare-fun res!1495489 () Bool)

(assert (=> d!1080546 (=> (not res!1495489) (not e!2279271))))

(assert (=> d!1080546 (= res!1495489 ((_ is Cons!38818) lt!1286426))))

(assert (=> d!1080546 (= (contains!7759 lt!1286426 lt!1286438) lt!1286863)))

(declare-fun b!3680885 () Bool)

(declare-fun e!2279270 () Bool)

(assert (=> b!3680885 (= e!2279271 e!2279270)))

(declare-fun res!1495488 () Bool)

(assert (=> b!3680885 (=> res!1495488 e!2279270)))

(assert (=> b!3680885 (= res!1495488 (= (h!44238 lt!1286426) lt!1286438))))

(declare-fun b!3680886 () Bool)

(assert (=> b!3680886 (= e!2279270 (contains!7759 (t!300557 lt!1286426) lt!1286438))))

(assert (= (and d!1080546 res!1495489) b!3680885))

(assert (= (and b!3680885 (not res!1495488)) b!3680886))

(assert (=> d!1080546 m!4190725))

(declare-fun m!4191615 () Bool)

(assert (=> d!1080546 m!4191615))

(declare-fun m!4191617 () Bool)

(assert (=> b!3680886 m!4191617))

(assert (=> b!3680063 d!1080546))

(declare-fun d!1080548 () Bool)

(assert (=> d!1080548 (= (head!7898 suffix!1395) (h!44238 suffix!1395))))

(assert (=> b!3680063 d!1080548))

(declare-fun bm!266626 () Bool)

(declare-fun call!266634 () List!38942)

(declare-fun c!636712 () Bool)

(assert (=> bm!266626 (= call!266634 (usedCharacters!1058 (ite c!636712 (regTwo!21723 (regex!5846 rule!403)) (regOne!21722 (regex!5846 rule!403)))))))

(declare-fun b!3680887 () Bool)

(declare-fun e!2279275 () List!38942)

(assert (=> b!3680887 (= e!2279275 (Cons!38818 (c!636548 (regex!5846 rule!403)) Nil!38818))))

(declare-fun b!3680888 () Bool)

(declare-fun e!2279273 () List!38942)

(declare-fun e!2279274 () List!38942)

(assert (=> b!3680888 (= e!2279273 e!2279274)))

(assert (=> b!3680888 (= c!636712 ((_ is Union!10605) (regex!5846 rule!403)))))

(declare-fun d!1080550 () Bool)

(declare-fun c!636711 () Bool)

(assert (=> d!1080550 (= c!636711 (or ((_ is EmptyExpr!10605) (regex!5846 rule!403)) ((_ is EmptyLang!10605) (regex!5846 rule!403))))))

(declare-fun e!2279272 () List!38942)

(assert (=> d!1080550 (= (usedCharacters!1058 (regex!5846 rule!403)) e!2279272)))

(declare-fun bm!266627 () Bool)

(declare-fun call!266631 () List!38942)

(declare-fun call!266633 () List!38942)

(assert (=> bm!266627 (= call!266631 call!266633)))

(declare-fun b!3680889 () Bool)

(declare-fun call!266632 () List!38942)

(assert (=> b!3680889 (= e!2279274 call!266632)))

(declare-fun c!636713 () Bool)

(declare-fun bm!266628 () Bool)

(assert (=> bm!266628 (= call!266633 (usedCharacters!1058 (ite c!636713 (reg!10934 (regex!5846 rule!403)) (ite c!636712 (regOne!21723 (regex!5846 rule!403)) (regTwo!21722 (regex!5846 rule!403))))))))

(declare-fun b!3680890 () Bool)

(assert (=> b!3680890 (= e!2279274 call!266632)))

(declare-fun b!3680891 () Bool)

(assert (=> b!3680891 (= c!636713 ((_ is Star!10605) (regex!5846 rule!403)))))

(assert (=> b!3680891 (= e!2279275 e!2279273)))

(declare-fun b!3680892 () Bool)

(assert (=> b!3680892 (= e!2279272 e!2279275)))

(declare-fun c!636714 () Bool)

(assert (=> b!3680892 (= c!636714 ((_ is ElementMatch!10605) (regex!5846 rule!403)))))

(declare-fun bm!266629 () Bool)

(assert (=> bm!266629 (= call!266632 (++!9662 (ite c!636712 call!266631 call!266634) (ite c!636712 call!266634 call!266631)))))

(declare-fun b!3680893 () Bool)

(assert (=> b!3680893 (= e!2279273 call!266633)))

(declare-fun b!3680894 () Bool)

(assert (=> b!3680894 (= e!2279272 Nil!38818)))

(assert (= (and d!1080550 c!636711) b!3680894))

(assert (= (and d!1080550 (not c!636711)) b!3680892))

(assert (= (and b!3680892 c!636714) b!3680887))

(assert (= (and b!3680892 (not c!636714)) b!3680891))

(assert (= (and b!3680891 c!636713) b!3680893))

(assert (= (and b!3680891 (not c!636713)) b!3680888))

(assert (= (and b!3680888 c!636712) b!3680890))

(assert (= (and b!3680888 (not c!636712)) b!3680889))

(assert (= (or b!3680890 b!3680889) bm!266627))

(assert (= (or b!3680890 b!3680889) bm!266626))

(assert (= (or b!3680890 b!3680889) bm!266629))

(assert (= (or b!3680893 bm!266627) bm!266628))

(declare-fun m!4191619 () Bool)

(assert (=> bm!266626 m!4191619))

(declare-fun m!4191621 () Bool)

(assert (=> bm!266628 m!4191621))

(declare-fun m!4191623 () Bool)

(assert (=> bm!266629 m!4191623))

(assert (=> b!3680063 d!1080550))

(declare-fun b!3680895 () Bool)

(declare-fun res!1495496 () Bool)

(declare-fun e!2279281 () Bool)

(assert (=> b!3680895 (=> res!1495496 e!2279281)))

(assert (=> b!3680895 (= res!1495496 (not (isEmpty!23054 (tail!5693 lt!1286419))))))

(declare-fun b!3680896 () Bool)

(declare-fun e!2279279 () Bool)

(assert (=> b!3680896 (= e!2279279 (nullable!3695 (regex!5846 rule!403)))))

(declare-fun b!3680897 () Bool)

(assert (=> b!3680897 (= e!2279281 (not (= (head!7898 lt!1286419) (c!636548 (regex!5846 rule!403)))))))

(declare-fun b!3680898 () Bool)

(declare-fun res!1495494 () Bool)

(declare-fun e!2279276 () Bool)

(assert (=> b!3680898 (=> res!1495494 e!2279276)))

(assert (=> b!3680898 (= res!1495494 (not ((_ is ElementMatch!10605) (regex!5846 rule!403))))))

(declare-fun e!2279280 () Bool)

(assert (=> b!3680898 (= e!2279280 e!2279276)))

(declare-fun b!3680899 () Bool)

(declare-fun e!2279282 () Bool)

(assert (=> b!3680899 (= e!2279276 e!2279282)))

(declare-fun res!1495491 () Bool)

(assert (=> b!3680899 (=> (not res!1495491) (not e!2279282))))

(declare-fun lt!1286864 () Bool)

(assert (=> b!3680899 (= res!1495491 (not lt!1286864))))

(declare-fun b!3680900 () Bool)

(declare-fun e!2279277 () Bool)

(assert (=> b!3680900 (= e!2279277 e!2279280)))

(declare-fun c!636716 () Bool)

(assert (=> b!3680900 (= c!636716 ((_ is EmptyLang!10605) (regex!5846 rule!403)))))

(declare-fun b!3680901 () Bool)

(assert (=> b!3680901 (= e!2279280 (not lt!1286864))))

(declare-fun b!3680902 () Bool)

(declare-fun res!1495493 () Bool)

(declare-fun e!2279278 () Bool)

(assert (=> b!3680902 (=> (not res!1495493) (not e!2279278))))

(assert (=> b!3680902 (= res!1495493 (isEmpty!23054 (tail!5693 lt!1286419)))))

(declare-fun b!3680903 () Bool)

(assert (=> b!3680903 (= e!2279282 e!2279281)))

(declare-fun res!1495492 () Bool)

(assert (=> b!3680903 (=> res!1495492 e!2279281)))

(declare-fun call!266635 () Bool)

(assert (=> b!3680903 (= res!1495492 call!266635)))

(declare-fun b!3680904 () Bool)

(assert (=> b!3680904 (= e!2279277 (= lt!1286864 call!266635))))

(declare-fun b!3680905 () Bool)

(assert (=> b!3680905 (= e!2279278 (= (head!7898 lt!1286419) (c!636548 (regex!5846 rule!403))))))

(declare-fun b!3680906 () Bool)

(declare-fun res!1495497 () Bool)

(assert (=> b!3680906 (=> (not res!1495497) (not e!2279278))))

(assert (=> b!3680906 (= res!1495497 (not call!266635))))

(declare-fun bm!266630 () Bool)

(assert (=> bm!266630 (= call!266635 (isEmpty!23054 lt!1286419))))

(declare-fun b!3680907 () Bool)

(declare-fun res!1495495 () Bool)

(assert (=> b!3680907 (=> res!1495495 e!2279276)))

(assert (=> b!3680907 (= res!1495495 e!2279278)))

(declare-fun res!1495490 () Bool)

(assert (=> b!3680907 (=> (not res!1495490) (not e!2279278))))

(assert (=> b!3680907 (= res!1495490 lt!1286864)))

(declare-fun d!1080552 () Bool)

(assert (=> d!1080552 e!2279277))

(declare-fun c!636717 () Bool)

(assert (=> d!1080552 (= c!636717 ((_ is EmptyExpr!10605) (regex!5846 rule!403)))))

(assert (=> d!1080552 (= lt!1286864 e!2279279)))

(declare-fun c!636715 () Bool)

(assert (=> d!1080552 (= c!636715 (isEmpty!23054 lt!1286419))))

(assert (=> d!1080552 (validRegex!4857 (regex!5846 rule!403))))

(assert (=> d!1080552 (= (matchR!5174 (regex!5846 rule!403) lt!1286419) lt!1286864)))

(declare-fun b!3680908 () Bool)

(assert (=> b!3680908 (= e!2279279 (matchR!5174 (derivativeStep!3244 (regex!5846 rule!403) (head!7898 lt!1286419)) (tail!5693 lt!1286419)))))

(assert (= (and d!1080552 c!636715) b!3680896))

(assert (= (and d!1080552 (not c!636715)) b!3680908))

(assert (= (and d!1080552 c!636717) b!3680904))

(assert (= (and d!1080552 (not c!636717)) b!3680900))

(assert (= (and b!3680900 c!636716) b!3680901))

(assert (= (and b!3680900 (not c!636716)) b!3680898))

(assert (= (and b!3680898 (not res!1495494)) b!3680907))

(assert (= (and b!3680907 res!1495490) b!3680906))

(assert (= (and b!3680906 res!1495497) b!3680902))

(assert (= (and b!3680902 res!1495493) b!3680905))

(assert (= (and b!3680907 (not res!1495495)) b!3680899))

(assert (= (and b!3680899 res!1495491) b!3680903))

(assert (= (and b!3680903 (not res!1495492)) b!3680895))

(assert (= (and b!3680895 (not res!1495496)) b!3680897))

(assert (= (or b!3680904 b!3680903 b!3680906) bm!266630))

(assert (=> b!3680895 m!4191243))

(assert (=> b!3680895 m!4191243))

(declare-fun m!4191625 () Bool)

(assert (=> b!3680895 m!4191625))

(assert (=> b!3680902 m!4191243))

(assert (=> b!3680902 m!4191243))

(assert (=> b!3680902 m!4191625))

(declare-fun m!4191627 () Bool)

(assert (=> d!1080552 m!4191627))

(assert (=> d!1080552 m!4191553))

(declare-fun m!4191629 () Bool)

(assert (=> b!3680896 m!4191629))

(assert (=> b!3680905 m!4191247))

(assert (=> bm!266630 m!4191627))

(assert (=> b!3680908 m!4191247))

(assert (=> b!3680908 m!4191247))

(declare-fun m!4191631 () Bool)

(assert (=> b!3680908 m!4191631))

(assert (=> b!3680908 m!4191243))

(assert (=> b!3680908 m!4191631))

(assert (=> b!3680908 m!4191243))

(declare-fun m!4191633 () Bool)

(assert (=> b!3680908 m!4191633))

(assert (=> b!3680897 m!4191247))

(assert (=> b!3680101 d!1080552))

(declare-fun d!1080554 () Bool)

(declare-fun res!1495502 () Bool)

(declare-fun e!2279285 () Bool)

(assert (=> d!1080554 (=> (not res!1495502) (not e!2279285))))

(assert (=> d!1080554 (= res!1495502 (validRegex!4857 (regex!5846 rule!403)))))

(assert (=> d!1080554 (= (ruleValid!2110 thiss!23823 rule!403) e!2279285)))

(declare-fun b!3680913 () Bool)

(declare-fun res!1495503 () Bool)

(assert (=> b!3680913 (=> (not res!1495503) (not e!2279285))))

(assert (=> b!3680913 (= res!1495503 (not (nullable!3695 (regex!5846 rule!403))))))

(declare-fun b!3680914 () Bool)

(assert (=> b!3680914 (= e!2279285 (not (= (tag!6648 rule!403) (String!43715 ""))))))

(assert (= (and d!1080554 res!1495502) b!3680913))

(assert (= (and b!3680913 res!1495503) b!3680914))

(assert (=> d!1080554 m!4191553))

(assert (=> b!3680913 m!4191629))

(assert (=> b!3680101 d!1080554))

(declare-fun d!1080556 () Bool)

(assert (=> d!1080556 (ruleValid!2110 thiss!23823 rule!403)))

(declare-fun lt!1286867 () Unit!56841)

(declare-fun choose!22012 (LexerInterface!5435 Rule!11492 List!38943) Unit!56841)

(assert (=> d!1080556 (= lt!1286867 (choose!22012 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1080556 (contains!7760 rules!3307 rule!403)))

(assert (=> d!1080556 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1264 thiss!23823 rule!403 rules!3307) lt!1286867)))

(declare-fun bs!573593 () Bool)

(assert (= bs!573593 d!1080556))

(assert (=> bs!573593 m!4190429))

(declare-fun m!4191635 () Bool)

(assert (=> bs!573593 m!4191635))

(assert (=> bs!573593 m!4190433))

(assert (=> b!3680101 d!1080556))

(declare-fun d!1080558 () Bool)

(assert (=> d!1080558 (= (isEmpty!23054 (_2!22476 lt!1286412)) ((_ is Nil!38818) (_2!22476 lt!1286412)))))

(assert (=> b!3680079 d!1080558))

(declare-fun d!1080560 () Bool)

(assert (=> d!1080560 (= (inv!52312 (tag!6648 (rule!8682 token!511))) (= (mod (str.len (value!187070 (tag!6648 (rule!8682 token!511)))) 2) 0))))

(assert (=> b!3680060 d!1080560))

(declare-fun d!1080562 () Bool)

(declare-fun res!1495504 () Bool)

(declare-fun e!2279286 () Bool)

(assert (=> d!1080562 (=> (not res!1495504) (not e!2279286))))

(assert (=> d!1080562 (= res!1495504 (semiInverseModEq!2495 (toChars!8001 (transformation!5846 (rule!8682 token!511))) (toValue!8142 (transformation!5846 (rule!8682 token!511)))))))

(assert (=> d!1080562 (= (inv!52315 (transformation!5846 (rule!8682 token!511))) e!2279286)))

(declare-fun b!3680915 () Bool)

(assert (=> b!3680915 (= e!2279286 (equivClasses!2394 (toChars!8001 (transformation!5846 (rule!8682 token!511))) (toValue!8142 (transformation!5846 (rule!8682 token!511)))))))

(assert (= (and d!1080562 res!1495504) b!3680915))

(declare-fun m!4191637 () Bool)

(assert (=> d!1080562 m!4191637))

(declare-fun m!4191639 () Bool)

(assert (=> b!3680915 m!4191639))

(assert (=> b!3680060 d!1080562))

(declare-fun d!1080564 () Bool)

(assert (=> d!1080564 (= (isEmpty!23054 (getSuffix!1762 lt!1286419 lt!1286419)) ((_ is Nil!38818) (getSuffix!1762 lt!1286419 lt!1286419)))))

(assert (=> b!3680098 d!1080564))

(declare-fun d!1080566 () Bool)

(declare-fun lt!1286868 () List!38942)

(assert (=> d!1080566 (= (++!9662 lt!1286419 lt!1286868) lt!1286419)))

(declare-fun e!2279287 () List!38942)

(assert (=> d!1080566 (= lt!1286868 e!2279287)))

(declare-fun c!636718 () Bool)

(assert (=> d!1080566 (= c!636718 ((_ is Cons!38818) lt!1286419))))

(assert (=> d!1080566 (>= (size!29682 lt!1286419) (size!29682 lt!1286419))))

(assert (=> d!1080566 (= (getSuffix!1762 lt!1286419 lt!1286419) lt!1286868)))

(declare-fun b!3680916 () Bool)

(assert (=> b!3680916 (= e!2279287 (getSuffix!1762 (tail!5693 lt!1286419) (t!300557 lt!1286419)))))

(declare-fun b!3680917 () Bool)

(assert (=> b!3680917 (= e!2279287 lt!1286419)))

(assert (= (and d!1080566 c!636718) b!3680916))

(assert (= (and d!1080566 (not c!636718)) b!3680917))

(declare-fun m!4191641 () Bool)

(assert (=> d!1080566 m!4191641))

(assert (=> d!1080566 m!4190383))

(assert (=> d!1080566 m!4190383))

(assert (=> b!3680916 m!4191243))

(assert (=> b!3680916 m!4191243))

(declare-fun m!4191643 () Bool)

(assert (=> b!3680916 m!4191643))

(assert (=> b!3680098 d!1080566))

(declare-fun b!3680918 () Bool)

(declare-fun res!1495511 () Bool)

(declare-fun e!2279293 () Bool)

(assert (=> b!3680918 (=> res!1495511 e!2279293)))

(assert (=> b!3680918 (= res!1495511 (not (isEmpty!23054 (tail!5693 lt!1286419))))))

(declare-fun b!3680919 () Bool)

(declare-fun e!2279291 () Bool)

(assert (=> b!3680919 (= e!2279291 (nullable!3695 (regex!5846 (rule!8682 (_1!22476 lt!1286421)))))))

(declare-fun b!3680920 () Bool)

(assert (=> b!3680920 (= e!2279293 (not (= (head!7898 lt!1286419) (c!636548 (regex!5846 (rule!8682 (_1!22476 lt!1286421)))))))))

(declare-fun b!3680921 () Bool)

(declare-fun res!1495509 () Bool)

(declare-fun e!2279288 () Bool)

(assert (=> b!3680921 (=> res!1495509 e!2279288)))

(assert (=> b!3680921 (= res!1495509 (not ((_ is ElementMatch!10605) (regex!5846 (rule!8682 (_1!22476 lt!1286421))))))))

(declare-fun e!2279292 () Bool)

(assert (=> b!3680921 (= e!2279292 e!2279288)))

(declare-fun b!3680922 () Bool)

(declare-fun e!2279294 () Bool)

(assert (=> b!3680922 (= e!2279288 e!2279294)))

(declare-fun res!1495506 () Bool)

(assert (=> b!3680922 (=> (not res!1495506) (not e!2279294))))

(declare-fun lt!1286869 () Bool)

(assert (=> b!3680922 (= res!1495506 (not lt!1286869))))

(declare-fun b!3680923 () Bool)

(declare-fun e!2279289 () Bool)

(assert (=> b!3680923 (= e!2279289 e!2279292)))

(declare-fun c!636720 () Bool)

(assert (=> b!3680923 (= c!636720 ((_ is EmptyLang!10605) (regex!5846 (rule!8682 (_1!22476 lt!1286421)))))))

(declare-fun b!3680924 () Bool)

(assert (=> b!3680924 (= e!2279292 (not lt!1286869))))

(declare-fun b!3680925 () Bool)

(declare-fun res!1495508 () Bool)

(declare-fun e!2279290 () Bool)

(assert (=> b!3680925 (=> (not res!1495508) (not e!2279290))))

(assert (=> b!3680925 (= res!1495508 (isEmpty!23054 (tail!5693 lt!1286419)))))

(declare-fun b!3680926 () Bool)

(assert (=> b!3680926 (= e!2279294 e!2279293)))

(declare-fun res!1495507 () Bool)

(assert (=> b!3680926 (=> res!1495507 e!2279293)))

(declare-fun call!266636 () Bool)

(assert (=> b!3680926 (= res!1495507 call!266636)))

(declare-fun b!3680927 () Bool)

(assert (=> b!3680927 (= e!2279289 (= lt!1286869 call!266636))))

(declare-fun b!3680928 () Bool)

(assert (=> b!3680928 (= e!2279290 (= (head!7898 lt!1286419) (c!636548 (regex!5846 (rule!8682 (_1!22476 lt!1286421))))))))

(declare-fun b!3680929 () Bool)

(declare-fun res!1495512 () Bool)

(assert (=> b!3680929 (=> (not res!1495512) (not e!2279290))))

(assert (=> b!3680929 (= res!1495512 (not call!266636))))

(declare-fun bm!266631 () Bool)

(assert (=> bm!266631 (= call!266636 (isEmpty!23054 lt!1286419))))

(declare-fun b!3680930 () Bool)

(declare-fun res!1495510 () Bool)

(assert (=> b!3680930 (=> res!1495510 e!2279288)))

(assert (=> b!3680930 (= res!1495510 e!2279290)))

(declare-fun res!1495505 () Bool)

(assert (=> b!3680930 (=> (not res!1495505) (not e!2279290))))

(assert (=> b!3680930 (= res!1495505 lt!1286869)))

(declare-fun d!1080568 () Bool)

(assert (=> d!1080568 e!2279289))

(declare-fun c!636721 () Bool)

(assert (=> d!1080568 (= c!636721 ((_ is EmptyExpr!10605) (regex!5846 (rule!8682 (_1!22476 lt!1286421)))))))

(assert (=> d!1080568 (= lt!1286869 e!2279291)))

(declare-fun c!636719 () Bool)

(assert (=> d!1080568 (= c!636719 (isEmpty!23054 lt!1286419))))

(assert (=> d!1080568 (validRegex!4857 (regex!5846 (rule!8682 (_1!22476 lt!1286421))))))

(assert (=> d!1080568 (= (matchR!5174 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286419) lt!1286869)))

(declare-fun b!3680931 () Bool)

(assert (=> b!3680931 (= e!2279291 (matchR!5174 (derivativeStep!3244 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) (head!7898 lt!1286419)) (tail!5693 lt!1286419)))))

(assert (= (and d!1080568 c!636719) b!3680919))

(assert (= (and d!1080568 (not c!636719)) b!3680931))

(assert (= (and d!1080568 c!636721) b!3680927))

(assert (= (and d!1080568 (not c!636721)) b!3680923))

(assert (= (and b!3680923 c!636720) b!3680924))

(assert (= (and b!3680923 (not c!636720)) b!3680921))

(assert (= (and b!3680921 (not res!1495509)) b!3680930))

(assert (= (and b!3680930 res!1495505) b!3680929))

(assert (= (and b!3680929 res!1495512) b!3680925))

(assert (= (and b!3680925 res!1495508) b!3680928))

(assert (= (and b!3680930 (not res!1495510)) b!3680922))

(assert (= (and b!3680922 res!1495506) b!3680926))

(assert (= (and b!3680926 (not res!1495507)) b!3680918))

(assert (= (and b!3680918 (not res!1495511)) b!3680920))

(assert (= (or b!3680927 b!3680926 b!3680929) bm!266631))

(assert (=> b!3680918 m!4191243))

(assert (=> b!3680918 m!4191243))

(assert (=> b!3680918 m!4191625))

(assert (=> b!3680925 m!4191243))

(assert (=> b!3680925 m!4191243))

(assert (=> b!3680925 m!4191625))

(assert (=> d!1080568 m!4191627))

(assert (=> d!1080568 m!4190625))

(assert (=> b!3680919 m!4191001))

(assert (=> b!3680928 m!4191247))

(assert (=> bm!266631 m!4191627))

(assert (=> b!3680931 m!4191247))

(assert (=> b!3680931 m!4191247))

(declare-fun m!4191645 () Bool)

(assert (=> b!3680931 m!4191645))

(assert (=> b!3680931 m!4191243))

(assert (=> b!3680931 m!4191645))

(assert (=> b!3680931 m!4191243))

(declare-fun m!4191647 () Bool)

(assert (=> b!3680931 m!4191647))

(assert (=> b!3680920 m!4191247))

(assert (=> b!3680098 d!1080568))

(declare-fun d!1080570 () Bool)

(assert (=> d!1080570 (not (matchR!5174 (regex!5846 (rule!8682 (_1!22476 lt!1286421))) lt!1286419))))

(declare-fun lt!1286870 () Unit!56841)

(assert (=> d!1080570 (= lt!1286870 (choose!22004 thiss!23823 rules!3307 rule!403 lt!1286419 lt!1286419 (rule!8682 (_1!22476 lt!1286421))))))

(assert (=> d!1080570 (isPrefix!3209 lt!1286419 lt!1286419)))

(assert (=> d!1080570 (= (lemmaMaxPrefNoSmallerRuleMatches!254 thiss!23823 rules!3307 rule!403 lt!1286419 lt!1286419 (rule!8682 (_1!22476 lt!1286421))) lt!1286870)))

(declare-fun bs!573594 () Bool)

(assert (= bs!573594 d!1080570))

(assert (=> bs!573594 m!4190541))

(declare-fun m!4191649 () Bool)

(assert (=> bs!573594 m!4191649))

(assert (=> bs!573594 m!4191039))

(assert (=> b!3680098 d!1080570))

(declare-fun d!1080572 () Bool)

(assert (=> d!1080572 (isEmpty!23054 (getSuffix!1762 lt!1286419 lt!1286419))))

(declare-fun lt!1286873 () Unit!56841)

(declare-fun choose!22013 (List!38942) Unit!56841)

(assert (=> d!1080572 (= lt!1286873 (choose!22013 lt!1286419))))

(assert (=> d!1080572 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!226 lt!1286419) lt!1286873)))

(declare-fun bs!573595 () Bool)

(assert (= bs!573595 d!1080572))

(assert (=> bs!573595 m!4190537))

(assert (=> bs!573595 m!4190537))

(assert (=> bs!573595 m!4190539))

(declare-fun m!4191651 () Bool)

(assert (=> bs!573595 m!4191651))

(assert (=> b!3680098 d!1080572))

(declare-fun d!1080574 () Bool)

(declare-fun lt!1286874 () Bool)

(assert (=> d!1080574 (= lt!1286874 (select (content!5631 rules!3307) rule!403))))

(declare-fun e!2279296 () Bool)

(assert (=> d!1080574 (= lt!1286874 e!2279296)))

(declare-fun res!1495514 () Bool)

(assert (=> d!1080574 (=> (not res!1495514) (not e!2279296))))

(assert (=> d!1080574 (= res!1495514 ((_ is Cons!38819) rules!3307))))

(assert (=> d!1080574 (= (contains!7760 rules!3307 rule!403) lt!1286874)))

(declare-fun b!3680932 () Bool)

(declare-fun e!2279295 () Bool)

(assert (=> b!3680932 (= e!2279296 e!2279295)))

(declare-fun res!1495513 () Bool)

(assert (=> b!3680932 (=> res!1495513 e!2279295)))

(assert (=> b!3680932 (= res!1495513 (= (h!44239 rules!3307) rule!403))))

(declare-fun b!3680933 () Bool)

(assert (=> b!3680933 (= e!2279295 (contains!7760 (t!300558 rules!3307) rule!403))))

(assert (= (and d!1080574 res!1495514) b!3680932))

(assert (= (and b!3680932 (not res!1495513)) b!3680933))

(assert (=> d!1080574 m!4191541))

(declare-fun m!4191653 () Bool)

(assert (=> d!1080574 m!4191653))

(declare-fun m!4191655 () Bool)

(assert (=> b!3680933 m!4191655))

(assert (=> b!3680080 d!1080574))

(declare-fun b!3680938 () Bool)

(declare-fun e!2279299 () Bool)

(declare-fun tp!1118877 () Bool)

(assert (=> b!3680938 (= e!2279299 (and tp_is_empty!18293 tp!1118877))))

(assert (=> b!3680104 (= tp!1118806 e!2279299)))

(assert (= (and b!3680104 ((_ is Cons!38818) (t!300557 suffix!1395))) b!3680938))

(declare-fun b!3680950 () Bool)

(declare-fun e!2279302 () Bool)

(declare-fun tp!1118889 () Bool)

(declare-fun tp!1118888 () Bool)

(assert (=> b!3680950 (= e!2279302 (and tp!1118889 tp!1118888))))

(assert (=> b!3680105 (= tp!1118812 e!2279302)))

(declare-fun b!3680952 () Bool)

(declare-fun tp!1118892 () Bool)

(declare-fun tp!1118891 () Bool)

(assert (=> b!3680952 (= e!2279302 (and tp!1118892 tp!1118891))))

(declare-fun b!3680949 () Bool)

(assert (=> b!3680949 (= e!2279302 tp_is_empty!18293)))

(declare-fun b!3680951 () Bool)

(declare-fun tp!1118890 () Bool)

(assert (=> b!3680951 (= e!2279302 tp!1118890)))

(assert (= (and b!3680105 ((_ is ElementMatch!10605) (regex!5846 anOtherTypeRule!33))) b!3680949))

(assert (= (and b!3680105 ((_ is Concat!16682) (regex!5846 anOtherTypeRule!33))) b!3680950))

(assert (= (and b!3680105 ((_ is Star!10605) (regex!5846 anOtherTypeRule!33))) b!3680951))

(assert (= (and b!3680105 ((_ is Union!10605) (regex!5846 anOtherTypeRule!33))) b!3680952))

(declare-fun b!3680953 () Bool)

(declare-fun e!2279303 () Bool)

(declare-fun tp!1118893 () Bool)

(assert (=> b!3680953 (= e!2279303 (and tp_is_empty!18293 tp!1118893))))

(assert (=> b!3680077 (= tp!1118807 e!2279303)))

(assert (= (and b!3680077 ((_ is Cons!38818) (originalCharacters!6560 token!511))) b!3680953))

(declare-fun b!3680964 () Bool)

(declare-fun b_free!97501 () Bool)

(declare-fun b_next!98205 () Bool)

(assert (=> b!3680964 (= b_free!97501 (not b_next!98205))))

(declare-fun tb!213495 () Bool)

(declare-fun t!300686 () Bool)

(assert (=> (and b!3680964 (= (toValue!8142 (transformation!5846 (h!44239 (t!300558 rules!3307)))) (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300686) tb!213495))

(declare-fun result!259760 () Bool)

(assert (= result!259760 result!259710))

(assert (=> d!1080428 t!300686))

(declare-fun t!300688 () Bool)

(declare-fun tb!213497 () Bool)

(assert (=> (and b!3680964 (= (toValue!8142 (transformation!5846 (h!44239 (t!300558 rules!3307)))) (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300688) tb!213497))

(declare-fun result!259762 () Bool)

(assert (= result!259762 result!259746))

(assert (=> d!1080532 t!300688))

(declare-fun tb!213499 () Bool)

(declare-fun t!300690 () Bool)

(assert (=> (and b!3680964 (= (toValue!8142 (transformation!5846 (h!44239 (t!300558 rules!3307)))) (toValue!8142 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300690) tb!213499))

(declare-fun result!259764 () Bool)

(assert (= result!259764 result!259702))

(assert (=> d!1080428 t!300690))

(assert (=> d!1080422 t!300690))

(assert (=> d!1080396 t!300690))

(declare-fun tb!213501 () Bool)

(declare-fun t!300692 () Bool)

(assert (=> (and b!3680964 (= (toValue!8142 (transformation!5846 (h!44239 (t!300558 rules!3307)))) (toValue!8142 (transformation!5846 rule!403))) t!300692) tb!213501))

(declare-fun result!259766 () Bool)

(assert (= result!259766 result!259644))

(assert (=> d!1080324 t!300692))

(declare-fun b_and!274991 () Bool)

(declare-fun tp!1118904 () Bool)

(assert (=> b!3680964 (= tp!1118904 (and (=> t!300686 result!259760) (=> t!300688 result!259762) (=> t!300690 result!259764) (=> t!300692 result!259766) b_and!274991))))

(declare-fun b_free!97503 () Bool)

(declare-fun b_next!98207 () Bool)

(assert (=> b!3680964 (= b_free!97503 (not b_next!98207))))

(declare-fun tb!213503 () Bool)

(declare-fun t!300694 () Bool)

(assert (=> (and b!3680964 (= (toChars!8001 (transformation!5846 (h!44239 (t!300558 rules!3307)))) (toChars!8001 (transformation!5846 (rule!8682 token!511)))) t!300694) tb!213503))

(declare-fun result!259768 () Bool)

(assert (= result!259768 result!259624))

(assert (=> b!3680203 t!300694))

(declare-fun tb!213505 () Bool)

(declare-fun t!300696 () Bool)

(assert (=> (and b!3680964 (= (toChars!8001 (transformation!5846 (h!44239 (t!300558 rules!3307)))) (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300696) tb!213505))

(declare-fun result!259770 () Bool)

(assert (= result!259770 result!259662))

(assert (=> d!1080360 t!300696))

(assert (=> d!1080388 t!300694))

(declare-fun t!300698 () Bool)

(declare-fun tb!213507 () Bool)

(assert (=> (and b!3680964 (= (toChars!8001 (transformation!5846 (h!44239 (t!300558 rules!3307)))) (toChars!8001 (transformation!5846 (rule!8682 (_1!22476 lt!1286421))))) t!300698) tb!213507))

(declare-fun result!259772 () Bool)

(assert (= result!259772 result!259694))

(assert (=> d!1080396 t!300698))

(declare-fun b_and!274993 () Bool)

(declare-fun tp!1118905 () Bool)

(assert (=> b!3680964 (= tp!1118905 (and (=> t!300694 result!259768) (=> t!300696 result!259770) (=> t!300698 result!259772) b_and!274993))))

(declare-fun e!2279312 () Bool)

(assert (=> b!3680964 (= e!2279312 (and tp!1118904 tp!1118905))))

(declare-fun tp!1118902 () Bool)

(declare-fun e!2279314 () Bool)

(declare-fun b!3680963 () Bool)

(assert (=> b!3680963 (= e!2279314 (and tp!1118902 (inv!52312 (tag!6648 (h!44239 (t!300558 rules!3307)))) (inv!52315 (transformation!5846 (h!44239 (t!300558 rules!3307)))) e!2279312))))

(declare-fun b!3680962 () Bool)

(declare-fun e!2279315 () Bool)

(declare-fun tp!1118903 () Bool)

(assert (=> b!3680962 (= e!2279315 (and e!2279314 tp!1118903))))

(assert (=> b!3680073 (= tp!1118813 e!2279315)))

(assert (= b!3680963 b!3680964))

(assert (= b!3680962 b!3680963))

(assert (= (and b!3680073 ((_ is Cons!38819) (t!300558 rules!3307))) b!3680962))

(declare-fun m!4191657 () Bool)

(assert (=> b!3680963 m!4191657))

(declare-fun m!4191659 () Bool)

(assert (=> b!3680963 m!4191659))

(declare-fun b!3680966 () Bool)

(declare-fun e!2279316 () Bool)

(declare-fun tp!1118907 () Bool)

(declare-fun tp!1118906 () Bool)

(assert (=> b!3680966 (= e!2279316 (and tp!1118907 tp!1118906))))

(assert (=> b!3680112 (= tp!1118808 e!2279316)))

(declare-fun b!3680968 () Bool)

(declare-fun tp!1118910 () Bool)

(declare-fun tp!1118909 () Bool)

(assert (=> b!3680968 (= e!2279316 (and tp!1118910 tp!1118909))))

(declare-fun b!3680965 () Bool)

(assert (=> b!3680965 (= e!2279316 tp_is_empty!18293)))

(declare-fun b!3680967 () Bool)

(declare-fun tp!1118908 () Bool)

(assert (=> b!3680967 (= e!2279316 tp!1118908)))

(assert (= (and b!3680112 ((_ is ElementMatch!10605) (regex!5846 (h!44239 rules!3307)))) b!3680965))

(assert (= (and b!3680112 ((_ is Concat!16682) (regex!5846 (h!44239 rules!3307)))) b!3680966))

(assert (= (and b!3680112 ((_ is Star!10605) (regex!5846 (h!44239 rules!3307)))) b!3680967))

(assert (= (and b!3680112 ((_ is Union!10605) (regex!5846 (h!44239 rules!3307)))) b!3680968))

(declare-fun b!3680970 () Bool)

(declare-fun e!2279317 () Bool)

(declare-fun tp!1118912 () Bool)

(declare-fun tp!1118911 () Bool)

(assert (=> b!3680970 (= e!2279317 (and tp!1118912 tp!1118911))))

(assert (=> b!3680088 (= tp!1118818 e!2279317)))

(declare-fun b!3680972 () Bool)

(declare-fun tp!1118915 () Bool)

(declare-fun tp!1118914 () Bool)

(assert (=> b!3680972 (= e!2279317 (and tp!1118915 tp!1118914))))

(declare-fun b!3680969 () Bool)

(assert (=> b!3680969 (= e!2279317 tp_is_empty!18293)))

(declare-fun b!3680971 () Bool)

(declare-fun tp!1118913 () Bool)

(assert (=> b!3680971 (= e!2279317 tp!1118913)))

(assert (= (and b!3680088 ((_ is ElementMatch!10605) (regex!5846 rule!403))) b!3680969))

(assert (= (and b!3680088 ((_ is Concat!16682) (regex!5846 rule!403))) b!3680970))

(assert (= (and b!3680088 ((_ is Star!10605) (regex!5846 rule!403))) b!3680971))

(assert (= (and b!3680088 ((_ is Union!10605) (regex!5846 rule!403))) b!3680972))

(declare-fun b!3680974 () Bool)

(declare-fun e!2279318 () Bool)

(declare-fun tp!1118917 () Bool)

(declare-fun tp!1118916 () Bool)

(assert (=> b!3680974 (= e!2279318 (and tp!1118917 tp!1118916))))

(assert (=> b!3680060 (= tp!1118816 e!2279318)))

(declare-fun b!3680976 () Bool)

(declare-fun tp!1118920 () Bool)

(declare-fun tp!1118919 () Bool)

(assert (=> b!3680976 (= e!2279318 (and tp!1118920 tp!1118919))))

(declare-fun b!3680973 () Bool)

(assert (=> b!3680973 (= e!2279318 tp_is_empty!18293)))

(declare-fun b!3680975 () Bool)

(declare-fun tp!1118918 () Bool)

(assert (=> b!3680975 (= e!2279318 tp!1118918)))

(assert (= (and b!3680060 ((_ is ElementMatch!10605) (regex!5846 (rule!8682 token!511)))) b!3680973))

(assert (= (and b!3680060 ((_ is Concat!16682) (regex!5846 (rule!8682 token!511)))) b!3680974))

(assert (= (and b!3680060 ((_ is Star!10605) (regex!5846 (rule!8682 token!511)))) b!3680975))

(assert (= (and b!3680060 ((_ is Union!10605) (regex!5846 (rule!8682 token!511)))) b!3680976))

(declare-fun b_lambda!109345 () Bool)

(assert (= b_lambda!109301 (or (and b!3680111 b_free!97487 (= (toChars!8001 (transformation!5846 (h!44239 rules!3307))) (toChars!8001 (transformation!5846 (rule!8682 token!511))))) (and b!3680068 b_free!97491 (= (toChars!8001 (transformation!5846 anOtherTypeRule!33)) (toChars!8001 (transformation!5846 (rule!8682 token!511))))) (and b!3680964 b_free!97503 (= (toChars!8001 (transformation!5846 (h!44239 (t!300558 rules!3307)))) (toChars!8001 (transformation!5846 (rule!8682 token!511))))) (and b!3680092 b_free!97483 (= (toChars!8001 (transformation!5846 rule!403)) (toChars!8001 (transformation!5846 (rule!8682 token!511))))) (and b!3680106 b_free!97495) b_lambda!109345)))

(declare-fun b_lambda!109347 () Bool)

(assert (= b_lambda!109305 (or (and b!3680068 b_free!97489 (= (toValue!8142 (transformation!5846 anOtherTypeRule!33)) (toValue!8142 (transformation!5846 rule!403)))) (and b!3680111 b_free!97485 (= (toValue!8142 (transformation!5846 (h!44239 rules!3307))) (toValue!8142 (transformation!5846 rule!403)))) (and b!3680106 b_free!97493 (= (toValue!8142 (transformation!5846 (rule!8682 token!511))) (toValue!8142 (transformation!5846 rule!403)))) (and b!3680964 b_free!97501 (= (toValue!8142 (transformation!5846 (h!44239 (t!300558 rules!3307)))) (toValue!8142 (transformation!5846 rule!403)))) (and b!3680092 b_free!97481) b_lambda!109347)))

(declare-fun b_lambda!109349 () Bool)

(assert (= b_lambda!109315 (or (and b!3680111 b_free!97487 (= (toChars!8001 (transformation!5846 (h!44239 rules!3307))) (toChars!8001 (transformation!5846 (rule!8682 token!511))))) (and b!3680068 b_free!97491 (= (toChars!8001 (transformation!5846 anOtherTypeRule!33)) (toChars!8001 (transformation!5846 (rule!8682 token!511))))) (and b!3680964 b_free!97503 (= (toChars!8001 (transformation!5846 (h!44239 (t!300558 rules!3307)))) (toChars!8001 (transformation!5846 (rule!8682 token!511))))) (and b!3680092 b_free!97483 (= (toChars!8001 (transformation!5846 rule!403)) (toChars!8001 (transformation!5846 (rule!8682 token!511))))) (and b!3680106 b_free!97495) b_lambda!109349)))

(check-sat (not b!3680508) (not d!1080554) (not b!3680838) (not b!3680864) (not b_lambda!109331) (not b!3680884) b_and!274935 (not b!3680825) (not b!3680554) (not d!1080382) (not b!3680966) (not b!3680808) (not b!3680916) (not b!3680870) (not d!1080286) (not d!1080568) (not bm!266625) (not d!1080526) (not d!1080544) (not d!1080510) (not b!3680807) (not b!3680510) (not d!1080226) (not b!3680951) (not d!1080284) b_and!274937 (not b!3680568) (not b!3680486) (not b!3680876) (not d!1080330) (not tb!213449) (not b_next!98207) (not b_lambda!109345) (not d!1080214) (not b!3680837) (not d!1080504) (not bm!266621) (not d!1080396) (not b!3680676) (not b_lambda!109325) (not b!3680902) (not d!1080318) (not b!3680418) (not b_next!98191) (not b!3680962) b_and!274987 (not d!1080386) (not d!1080522) (not b!3680253) (not d!1080572) (not b_next!98189) (not b!3680915) (not d!1080556) (not d!1080500) (not b!3680820) (not d!1080346) (not d!1080376) (not b!3680826) (not d!1080542) (not b_next!98193) (not b!3680522) (not d!1080248) (not b_next!98195) (not b!3680874) (not d!1080282) (not b!3680422) (not b!3680526) (not b!3680963) (not b!3680115) (not d!1080320) (not b!3680567) (not d!1080208) (not d!1080562) (not b!3680871) (not d!1080212) (not d!1080506) (not b!3680479) (not b!3680908) (not d!1080252) (not b_lambda!109349) (not d!1080440) (not d!1080342) b_and!274983 (not b!3680562) (not b!3680480) (not tb!213393) (not b!3680806) (not d!1080518) (not d!1080272) (not b!3680878) (not b!3680680) (not b!3680357) (not d!1080512) (not b!3680967) b_and!274931 (not b!3680976) (not b!3680516) (not b!3680968) (not b!3680933) (not b!3680559) (not b!3680359) (not b!3680519) (not b!3680509) b_and!274985 (not b!3680299) (not d!1080360) (not d!1080454) (not b!3680678) (not d!1080198) (not b!3680362) b_and!274933 (not b!3680919) (not b!3680897) (not b!3680828) (not b!3680492) b_and!274991 (not bm!266599) (not b!3680489) (not b!3680972) (not b!3680553) (not b!3680974) (not b!3680556) (not b!3680693) (not b!3680861) (not b_lambda!109347) (not d!1080540) (not b!3680862) (not b!3680880) (not b!3680524) (not b!3680824) (not bm!266618) (not b!3680918) (not tb!213377) (not b!3680905) (not d!1080372) (not d!1080444) (not b!3680970) (not b!3680821) (not b!3680360) (not bm!266626) (not bm!266628) (not d!1080566) (not d!1080332) b_and!274993 (not b!3680511) (not b!3680950) (not d!1080428) (not b!3680204) (not b!3680875) (not b_next!98205) (not d!1080530) (not b!3680931) (not b_next!98199) (not b!3680203) (not b!3680879) (not b!3680829) (not d!1080446) (not d!1080534) (not bm!266630) (not b!3680953) (not d!1080238) (not b!3680925) (not b!3680895) (not d!1080552) (not d!1080234) (not tb!213487) (not b!3680913) (not b!3680561) (not d!1080340) (not b!3680831) (not b!3680630) (not d!1080336) (not b!3680848) (not b!3680896) (not d!1080516) (not b!3680404) (not tb!213441) (not b!3680178) (not b_lambda!109329) (not b!3680877) (not d!1080570) (not d!1080536) (not b!3680844) (not tb!213457) (not b_lambda!109311) (not b!3680558) (not b!3680847) (not d!1080338) (not d!1080196) (not b!3680975) (not b!3680834) (not b!3680691) (not d!1080426) (not b!3680361) tp_is_empty!18293 (not b!3680557) (not b!3680938) (not b!3680555) (not b!3680872) (not d!1080528) (not b_lambda!109327) (not bm!266631) (not b!3680363) (not b!3680845) (not d!1080378) (not b!3680209) (not b!3680823) (not b!3680886) (not b!3680849) (not b_next!98187) (not bm!266615) (not b!3680365) (not bm!266612) (not b_lambda!109343) (not bm!266601) (not b!3680358) (not d!1080448) (not b!3680384) (not d!1080546) (not bm!266602) (not b!3680692) (not b!3680952) (not bm!266617) b_and!274989 (not d!1080356) (not d!1080424) (not b!3680148) (not b!3680971) (not d!1080392) (not b!3680827) (not bm!266614) (not d!1080388) (not d!1080502) (not b_next!98197) (not d!1080384) (not b!3680928) (not d!1080574) (not b!3680835) (not b!3680481) (not b!3680920) (not b!3680833) (not tb!213409) (not b!3680882) (not b_next!98185) (not bm!266629) (not b_lambda!109333))
(check-sat b_and!274935 b_and!274937 (not b_next!98207) (not b_next!98191) b_and!274983 b_and!274931 b_and!274985 b_and!274933 b_and!274991 b_and!274993 (not b_next!98205) (not b_next!98199) (not b_next!98187) b_and!274989 (not b_next!98197) (not b_next!98185) b_and!274987 (not b_next!98189) (not b_next!98195) (not b_next!98193))

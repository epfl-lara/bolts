; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!337058 () Bool)

(assert start!337058)

(declare-fun b!3619209 () Bool)

(declare-fun b_free!94289 () Bool)

(declare-fun b_next!94993 () Bool)

(assert (=> b!3619209 (= b_free!94289 (not b_next!94993))))

(declare-fun tp!1105615 () Bool)

(declare-fun b_and!264499 () Bool)

(assert (=> b!3619209 (= tp!1105615 b_and!264499)))

(declare-fun b_free!94291 () Bool)

(declare-fun b_next!94995 () Bool)

(assert (=> b!3619209 (= b_free!94291 (not b_next!94995))))

(declare-fun tp!1105618 () Bool)

(declare-fun b_and!264501 () Bool)

(assert (=> b!3619209 (= tp!1105618 b_and!264501)))

(declare-fun b!3619195 () Bool)

(declare-fun b_free!94293 () Bool)

(declare-fun b_next!94997 () Bool)

(assert (=> b!3619195 (= b_free!94293 (not b_next!94997))))

(declare-fun tp!1105616 () Bool)

(declare-fun b_and!264503 () Bool)

(assert (=> b!3619195 (= tp!1105616 b_and!264503)))

(declare-fun b_free!94295 () Bool)

(declare-fun b_next!94999 () Bool)

(assert (=> b!3619195 (= b_free!94295 (not b_next!94999))))

(declare-fun tp!1105604 () Bool)

(declare-fun b_and!264505 () Bool)

(assert (=> b!3619195 (= tp!1105604 b_and!264505)))

(declare-fun b!3619240 () Bool)

(declare-fun b_free!94297 () Bool)

(declare-fun b_next!95001 () Bool)

(assert (=> b!3619240 (= b_free!94297 (not b_next!95001))))

(declare-fun tp!1105605 () Bool)

(declare-fun b_and!264507 () Bool)

(assert (=> b!3619240 (= tp!1105605 b_and!264507)))

(declare-fun b_free!94299 () Bool)

(declare-fun b_next!95003 () Bool)

(assert (=> b!3619240 (= b_free!94299 (not b_next!95003))))

(declare-fun tp!1105609 () Bool)

(declare-fun b_and!264509 () Bool)

(assert (=> b!3619240 (= tp!1105609 b_and!264509)))

(declare-fun b!3619230 () Bool)

(declare-fun b_free!94301 () Bool)

(declare-fun b_next!95005 () Bool)

(assert (=> b!3619230 (= b_free!94301 (not b_next!95005))))

(declare-fun tp!1105612 () Bool)

(declare-fun b_and!264511 () Bool)

(assert (=> b!3619230 (= tp!1105612 b_and!264511)))

(declare-fun b_free!94303 () Bool)

(declare-fun b_next!95007 () Bool)

(assert (=> b!3619230 (= b_free!94303 (not b_next!95007))))

(declare-fun tp!1105611 () Bool)

(declare-fun b_and!264513 () Bool)

(assert (=> b!3619230 (= tp!1105611 b_and!264513)))

(declare-fun b!3619194 () Bool)

(declare-fun res!1464510 () Bool)

(declare-fun e!2240154 () Bool)

(assert (=> b!3619194 (=> res!1464510 e!2240154)))

(declare-datatypes ((C!21044 0))(
  ( (C!21045 (val!12570 Int)) )
))
(declare-datatypes ((List!38239 0))(
  ( (Nil!38115) (Cons!38115 (h!43535 C!21044) (t!294030 List!38239)) )
))
(declare-fun suffix!1395 () List!38239)

(declare-fun isEmpty!22522 (List!38239) Bool)

(assert (=> b!3619194 (= res!1464510 (isEmpty!22522 suffix!1395))))

(declare-fun e!2240120 () Bool)

(assert (=> b!3619195 (= e!2240120 (and tp!1105616 tp!1105604))))

(declare-fun b!3619196 () Bool)

(assert (=> b!3619196 false))

(declare-datatypes ((Unit!54742 0))(
  ( (Unit!54743) )
))
(declare-fun lt!1249896 () Unit!54742)

(declare-fun call!261833 () Unit!54742)

(assert (=> b!3619196 (= lt!1249896 call!261833)))

(declare-fun call!261835 () Bool)

(assert (=> b!3619196 (not call!261835)))

(declare-datatypes ((List!38240 0))(
  ( (Nil!38116) (Cons!38116 (h!43536 (_ BitVec 16)) (t!294031 List!38240)) )
))
(declare-datatypes ((TokenValue!5900 0))(
  ( (FloatLiteralValue!11800 (text!41745 List!38240)) (TokenValueExt!5899 (__x!24017 Int)) (Broken!29500 (value!182029 List!38240)) (Object!6023) (End!5900) (Def!5900) (Underscore!5900) (Match!5900) (Else!5900) (Error!5900) (Case!5900) (If!5900) (Extends!5900) (Abstract!5900) (Class!5900) (Val!5900) (DelimiterValue!11800 (del!5960 List!38240)) (KeywordValue!5906 (value!182030 List!38240)) (CommentValue!11800 (value!182031 List!38240)) (WhitespaceValue!11800 (value!182032 List!38240)) (IndentationValue!5900 (value!182033 List!38240)) (String!42833) (Int32!5900) (Broken!29501 (value!182034 List!38240)) (Boolean!5901) (Unit!54744) (OperatorValue!5903 (op!5960 List!38240)) (IdentifierValue!11800 (value!182035 List!38240)) (IdentifierValue!11801 (value!182036 List!38240)) (WhitespaceValue!11801 (value!182037 List!38240)) (True!11800) (False!11800) (Broken!29502 (value!182038 List!38240)) (Broken!29503 (value!182039 List!38240)) (True!11801) (RightBrace!5900) (RightBracket!5900) (Colon!5900) (Null!5900) (Comma!5900) (LeftBracket!5900) (False!11801) (LeftBrace!5900) (ImaginaryLiteralValue!5900 (text!41746 List!38240)) (StringLiteralValue!17700 (value!182040 List!38240)) (EOFValue!5900 (value!182041 List!38240)) (IdentValue!5900 (value!182042 List!38240)) (DelimiterValue!11801 (value!182043 List!38240)) (DedentValue!5900 (value!182044 List!38240)) (NewLineValue!5900 (value!182045 List!38240)) (IntegerValue!17700 (value!182046 (_ BitVec 32)) (text!41747 List!38240)) (IntegerValue!17701 (value!182047 Int) (text!41748 List!38240)) (Times!5900) (Or!5900) (Equal!5900) (Minus!5900) (Broken!29504 (value!182048 List!38240)) (And!5900) (Div!5900) (LessEqual!5900) (Mod!5900) (Concat!16329) (Not!5900) (Plus!5900) (SpaceValue!5900 (value!182049 List!38240)) (IntegerValue!17702 (value!182050 Int) (text!41749 List!38240)) (StringLiteralValue!17701 (text!41750 List!38240)) (FloatLiteralValue!11801 (text!41751 List!38240)) (BytesLiteralValue!5900 (value!182051 List!38240)) (CommentValue!11801 (value!182052 List!38240)) (StringLiteralValue!17702 (value!182053 List!38240)) (ErrorTokenValue!5900 (msg!5961 List!38240)) )
))
(declare-datatypes ((String!42834 0))(
  ( (String!42835 (value!182054 String)) )
))
(declare-datatypes ((Regex!10429 0))(
  ( (ElementMatch!10429 (c!626292 C!21044)) (Concat!16330 (regOne!21370 Regex!10429) (regTwo!21370 Regex!10429)) (EmptyExpr!10429) (Star!10429 (reg!10758 Regex!10429)) (EmptyLang!10429) (Union!10429 (regOne!21371 Regex!10429) (regTwo!21371 Regex!10429)) )
))
(declare-datatypes ((IArray!23247 0))(
  ( (IArray!23248 (innerList!11681 List!38239)) )
))
(declare-datatypes ((Conc!11621 0))(
  ( (Node!11621 (left!29766 Conc!11621) (right!30096 Conc!11621) (csize!23472 Int) (cheight!11832 Int)) (Leaf!18067 (xs!14823 IArray!23247) (csize!23473 Int)) (Empty!11621) )
))
(declare-datatypes ((BalanceConc!22856 0))(
  ( (BalanceConc!22857 (c!626293 Conc!11621)) )
))
(declare-datatypes ((TokenValueInjection!11228 0))(
  ( (TokenValueInjection!11229 (toValue!7954 Int) (toChars!7813 Int)) )
))
(declare-datatypes ((Rule!11140 0))(
  ( (Rule!11141 (regex!5670 Regex!10429) (tag!6386 String!42834) (isSeparator!5670 Bool) (transformation!5670 TokenValueInjection!11228)) )
))
(declare-datatypes ((List!38241 0))(
  ( (Nil!38117) (Cons!38117 (h!43537 Rule!11140) (t!294032 List!38241)) )
))
(declare-fun rules!3307 () List!38241)

(declare-fun lt!1249904 () Unit!54742)

(declare-datatypes ((Token!10706 0))(
  ( (Token!10707 (value!182055 TokenValue!5900) (rule!8430 Rule!11140) (size!29077 Int) (originalCharacters!6384 List!38239)) )
))
(declare-datatypes ((tuple2!37996 0))(
  ( (tuple2!37997 (_1!22132 Token!10706) (_2!22132 List!38239)) )
))
(declare-fun lt!1249940 () tuple2!37996)

(declare-datatypes ((LexerInterface!5259 0))(
  ( (LexerInterfaceExt!5256 (__x!24018 Int)) (Lexer!5257) )
))
(declare-fun thiss!23823 () LexerInterface!5259)

(declare-fun rule!403 () Rule!11140)

(declare-fun lt!1249928 () C!21044)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!258 (LexerInterface!5259 List!38241 List!38241 Rule!11140 Rule!11140 C!21044) Unit!54742)

(assert (=> b!3619196 (= lt!1249904 (lemmaSepRuleNotContainsCharContainedInANonSepRule!258 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8430 (_1!22132 lt!1249940)) lt!1249928))))

(declare-fun e!2240133 () Unit!54742)

(declare-fun Unit!54745 () Unit!54742)

(assert (=> b!3619196 (= e!2240133 Unit!54745)))

(declare-fun b!3619197 () Bool)

(declare-fun e!2240122 () Unit!54742)

(declare-fun Unit!54746 () Unit!54742)

(assert (=> b!3619197 (= e!2240122 Unit!54746)))

(declare-fun lt!1249905 () List!38239)

(declare-fun lt!1249920 () List!38239)

(declare-fun lt!1249941 () List!38239)

(declare-fun lt!1249926 () Unit!54742)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!318 (LexerInterface!5259 List!38241 Rule!11140 List!38239 List!38239 List!38239 Rule!11140) Unit!54742)

(assert (=> b!3619197 (= lt!1249926 (lemmaMaxPrefixOutputsMaxPrefix!318 thiss!23823 rules!3307 (rule!8430 (_1!22132 lt!1249940)) lt!1249920 lt!1249941 lt!1249905 rule!403))))

(assert (=> b!3619197 false))

(declare-fun b!3619198 () Bool)

(declare-fun res!1464490 () Bool)

(declare-fun e!2240127 () Bool)

(assert (=> b!3619198 (=> (not res!1464490) (not e!2240127))))

(declare-fun anOtherTypeRule!33 () Rule!11140)

(assert (=> b!3619198 (= res!1464490 (not (= (isSeparator!5670 anOtherTypeRule!33) (isSeparator!5670 rule!403))))))

(declare-fun b!3619199 () Bool)

(declare-fun res!1464509 () Bool)

(declare-fun e!2240143 () Bool)

(assert (=> b!3619199 (=> (not res!1464509) (not e!2240143))))

(declare-fun lt!1249933 () tuple2!37996)

(assert (=> b!3619199 (= res!1464509 (isEmpty!22522 (_2!22132 lt!1249933)))))

(declare-fun tp!1105610 () Bool)

(declare-fun e!2240130 () Bool)

(declare-fun token!511 () Token!10706)

(declare-fun b!3619200 () Bool)

(declare-fun inv!51503 (String!42834) Bool)

(declare-fun inv!51506 (TokenValueInjection!11228) Bool)

(assert (=> b!3619200 (= e!2240130 (and tp!1105610 (inv!51503 (tag!6386 (rule!8430 token!511))) (inv!51506 (transformation!5670 (rule!8430 token!511))) e!2240120))))

(declare-fun b!3619201 () Bool)

(declare-fun e!2240142 () Bool)

(declare-fun e!2240149 () Bool)

(assert (=> b!3619201 (= e!2240142 e!2240149)))

(declare-fun res!1464495 () Bool)

(assert (=> b!3619201 (=> res!1464495 e!2240149)))

(declare-fun isPrefix!3033 (List!38239 List!38239) Bool)

(assert (=> b!3619201 (= res!1464495 (not (isPrefix!3033 lt!1249920 lt!1249941)))))

(declare-fun ++!9486 (List!38239 List!38239) List!38239)

(assert (=> b!3619201 (isPrefix!3033 lt!1249920 (++!9486 lt!1249920 (_2!22132 lt!1249940)))))

(declare-fun lt!1249937 () Unit!54742)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1954 (List!38239 List!38239) Unit!54742)

(assert (=> b!3619201 (= lt!1249937 (lemmaConcatTwoListThenFirstIsPrefix!1954 lt!1249920 (_2!22132 lt!1249940)))))

(declare-fun lt!1249924 () BalanceConc!22856)

(declare-fun list!14066 (BalanceConc!22856) List!38239)

(assert (=> b!3619201 (= lt!1249920 (list!14066 lt!1249924))))

(declare-fun charsOf!3684 (Token!10706) BalanceConc!22856)

(assert (=> b!3619201 (= lt!1249924 (charsOf!3684 (_1!22132 lt!1249940)))))

(declare-fun e!2240125 () Bool)

(assert (=> b!3619201 e!2240125))

(declare-fun res!1464511 () Bool)

(assert (=> b!3619201 (=> (not res!1464511) (not e!2240125))))

(declare-datatypes ((Option!7970 0))(
  ( (None!7969) (Some!7969 (v!37731 Rule!11140)) )
))
(declare-fun lt!1249943 () Option!7970)

(declare-fun isDefined!6202 (Option!7970) Bool)

(assert (=> b!3619201 (= res!1464511 (isDefined!6202 lt!1249943))))

(declare-fun getRuleFromTag!1276 (LexerInterface!5259 List!38241 String!42834) Option!7970)

(assert (=> b!3619201 (= lt!1249943 (getRuleFromTag!1276 thiss!23823 rules!3307 (tag!6386 (rule!8430 (_1!22132 lt!1249940)))))))

(declare-fun lt!1249946 () Unit!54742)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1276 (LexerInterface!5259 List!38241 List!38239 Token!10706) Unit!54742)

(assert (=> b!3619201 (= lt!1249946 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1276 thiss!23823 rules!3307 lt!1249941 (_1!22132 lt!1249940)))))

(declare-datatypes ((Option!7971 0))(
  ( (None!7970) (Some!7970 (v!37732 tuple2!37996)) )
))
(declare-fun lt!1249942 () Option!7971)

(declare-fun get!12415 (Option!7971) tuple2!37996)

(assert (=> b!3619201 (= lt!1249940 (get!12415 lt!1249942))))

(declare-fun lt!1249945 () Unit!54742)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!939 (LexerInterface!5259 List!38241 List!38239 List!38239) Unit!54742)

(assert (=> b!3619201 (= lt!1249945 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!939 thiss!23823 rules!3307 lt!1249905 suffix!1395))))

(declare-fun maxPrefix!2793 (LexerInterface!5259 List!38241 List!38239) Option!7971)

(assert (=> b!3619201 (= lt!1249942 (maxPrefix!2793 thiss!23823 rules!3307 lt!1249941))))

(assert (=> b!3619201 (isPrefix!3033 lt!1249905 lt!1249941)))

(declare-fun lt!1249938 () Unit!54742)

(assert (=> b!3619201 (= lt!1249938 (lemmaConcatTwoListThenFirstIsPrefix!1954 lt!1249905 suffix!1395))))

(assert (=> b!3619201 (= lt!1249941 (++!9486 lt!1249905 suffix!1395))))

(declare-fun b!3619202 () Bool)

(declare-fun Unit!54747 () Unit!54742)

(assert (=> b!3619202 (= e!2240122 Unit!54747)))

(declare-fun b!3619203 () Bool)

(declare-fun e!2240141 () Unit!54742)

(declare-fun Unit!54748 () Unit!54742)

(assert (=> b!3619203 (= e!2240141 Unit!54748)))

(declare-fun b!3619204 () Bool)

(declare-fun res!1464506 () Bool)

(assert (=> b!3619204 (=> res!1464506 e!2240142)))

(declare-fun sepAndNonSepRulesDisjointChars!1840 (List!38241 List!38241) Bool)

(assert (=> b!3619204 (= res!1464506 (not (sepAndNonSepRulesDisjointChars!1840 rules!3307 rules!3307)))))

(declare-fun bm!261828 () Bool)

(declare-fun call!261837 () List!38239)

(declare-fun usedCharacters!884 (Regex!10429) List!38239)

(assert (=> bm!261828 (= call!261837 (usedCharacters!884 (regex!5670 (rule!8430 (_1!22132 lt!1249940)))))))

(declare-fun b!3619205 () Bool)

(declare-fun e!2240132 () Bool)

(declare-fun lt!1249913 () Rule!11140)

(assert (=> b!3619205 (= e!2240132 (= (rule!8430 (_1!22132 lt!1249940)) lt!1249913))))

(declare-fun b!3619206 () Bool)

(declare-fun e!2240118 () Unit!54742)

(declare-fun Unit!54749 () Unit!54742)

(assert (=> b!3619206 (= e!2240118 Unit!54749)))

(declare-fun b!3619207 () Bool)

(declare-fun res!1464496 () Bool)

(assert (=> b!3619207 (=> res!1464496 e!2240149)))

(declare-fun matchR!4998 (Regex!10429 List!38239) Bool)

(assert (=> b!3619207 (= res!1464496 (not (matchR!4998 (regex!5670 (rule!8430 (_1!22132 lt!1249940))) lt!1249920)))))

(declare-fun b!3619208 () Bool)

(declare-fun Unit!54750 () Unit!54742)

(assert (=> b!3619208 (= e!2240141 Unit!54750)))

(declare-fun lt!1249910 () Unit!54742)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!654 (Regex!10429 List!38239 C!21044) Unit!54742)

(assert (=> b!3619208 (= lt!1249910 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!654 (regex!5670 rule!403) lt!1249905 lt!1249928))))

(assert (=> b!3619208 false))

(declare-fun e!2240126 () Bool)

(assert (=> b!3619209 (= e!2240126 (and tp!1105615 tp!1105618))))

(declare-fun tp!1105617 () Bool)

(declare-fun b!3619210 () Bool)

(declare-fun e!2240140 () Bool)

(assert (=> b!3619210 (= e!2240140 (and tp!1105617 (inv!51503 (tag!6386 rule!403)) (inv!51506 (transformation!5670 rule!403)) e!2240126))))

(declare-fun b!3619211 () Bool)

(assert (=> b!3619211 false))

(declare-fun lt!1249893 () Unit!54742)

(assert (=> b!3619211 (= lt!1249893 call!261833)))

(assert (=> b!3619211 (not call!261835)))

(declare-fun lt!1249934 () Unit!54742)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!376 (LexerInterface!5259 List!38241 List!38241 Rule!11140 Rule!11140 C!21044) Unit!54742)

(assert (=> b!3619211 (= lt!1249934 (lemmaNonSepRuleNotContainsCharContainedInASepRule!376 thiss!23823 rules!3307 rules!3307 (rule!8430 (_1!22132 lt!1249940)) rule!403 lt!1249928))))

(declare-fun e!2240147 () Unit!54742)

(declare-fun Unit!54751 () Unit!54742)

(assert (=> b!3619211 (= e!2240147 Unit!54751)))

(declare-fun b!3619212 () Bool)

(assert (=> b!3619212 (= e!2240125 e!2240132)))

(declare-fun res!1464502 () Bool)

(assert (=> b!3619212 (=> (not res!1464502) (not e!2240132))))

(assert (=> b!3619212 (= res!1464502 (matchR!4998 (regex!5670 lt!1249913) (list!14066 (charsOf!3684 (_1!22132 lt!1249940)))))))

(declare-fun get!12416 (Option!7970) Rule!11140)

(assert (=> b!3619212 (= lt!1249913 (get!12416 lt!1249943))))

(declare-fun b!3619213 () Bool)

(declare-fun e!2240131 () Unit!54742)

(declare-fun Unit!54752 () Unit!54742)

(assert (=> b!3619213 (= e!2240131 Unit!54752)))

(declare-fun lt!1249890 () Int)

(declare-fun getIndex!452 (List!38241 Rule!11140) Int)

(assert (=> b!3619213 (= lt!1249890 (getIndex!452 rules!3307 (rule!8430 (_1!22132 lt!1249940))))))

(declare-fun lt!1249909 () Int)

(assert (=> b!3619213 (= lt!1249909 (getIndex!452 rules!3307 rule!403))))

(declare-fun c!626285 () Bool)

(assert (=> b!3619213 (= c!626285 (< lt!1249890 lt!1249909))))

(declare-fun lt!1249919 () Unit!54742)

(declare-fun e!2240152 () Unit!54742)

(assert (=> b!3619213 (= lt!1249919 e!2240152)))

(declare-fun c!626291 () Bool)

(assert (=> b!3619213 (= c!626291 (< lt!1249909 lt!1249890))))

(declare-fun lt!1249931 () Unit!54742)

(declare-fun e!2240124 () Unit!54742)

(assert (=> b!3619213 (= lt!1249931 e!2240124)))

(declare-fun lt!1249923 () Unit!54742)

(declare-fun lemmaSameIndexThenSameElement!220 (List!38241 Rule!11140 Rule!11140) Unit!54742)

(assert (=> b!3619213 (= lt!1249923 (lemmaSameIndexThenSameElement!220 rules!3307 (rule!8430 (_1!22132 lt!1249940)) rule!403))))

(assert (=> b!3619213 false))

(declare-fun b!3619214 () Bool)

(declare-fun res!1464493 () Bool)

(assert (=> b!3619214 (=> res!1464493 e!2240142)))

(declare-fun lt!1249899 () C!21044)

(declare-fun contains!7403 (List!38239 C!21044) Bool)

(assert (=> b!3619214 (= res!1464493 (not (contains!7403 (usedCharacters!884 (regex!5670 anOtherTypeRule!33)) lt!1249899)))))

(declare-fun bm!261829 () Bool)

(declare-fun call!261836 () Unit!54742)

(assert (=> bm!261829 (= call!261836 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!654 (regex!5670 (rule!8430 (_1!22132 lt!1249940))) lt!1249920 lt!1249899))))

(declare-fun b!3619215 () Bool)

(declare-fun e!2240146 () Bool)

(declare-fun tp_is_empty!17941 () Bool)

(declare-fun tp!1105607 () Bool)

(assert (=> b!3619215 (= e!2240146 (and tp_is_empty!17941 tp!1105607))))

(declare-fun b!3619216 () Bool)

(declare-fun Unit!54753 () Unit!54742)

(assert (=> b!3619216 (= e!2240147 Unit!54753)))

(declare-fun b!3619217 () Bool)

(assert (=> b!3619217 (= e!2240143 (not e!2240154))))

(declare-fun res!1464499 () Bool)

(assert (=> b!3619217 (=> res!1464499 e!2240154)))

(assert (=> b!3619217 (= res!1464499 (not (matchR!4998 (regex!5670 rule!403) lt!1249905)))))

(declare-fun ruleValid!1935 (LexerInterface!5259 Rule!11140) Bool)

(assert (=> b!3619217 (ruleValid!1935 thiss!23823 rule!403)))

(declare-fun lt!1249901 () Unit!54742)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1090 (LexerInterface!5259 Rule!11140 List!38241) Unit!54742)

(assert (=> b!3619217 (= lt!1249901 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1090 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3619218 () Bool)

(declare-fun e!2240137 () Bool)

(assert (=> b!3619218 e!2240137))

(declare-fun res!1464500 () Bool)

(assert (=> b!3619218 (=> (not res!1464500) (not e!2240137))))

(assert (=> b!3619218 (= res!1464500 (not (matchR!4998 (regex!5670 (rule!8430 (_1!22132 lt!1249940))) lt!1249905)))))

(declare-fun lt!1249892 () Unit!54742)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!204 (LexerInterface!5259 List!38241 Rule!11140 List!38239 List!38239 Rule!11140) Unit!54742)

(assert (=> b!3619218 (= lt!1249892 (lemmaMaxPrefNoSmallerRuleMatches!204 thiss!23823 rules!3307 rule!403 lt!1249905 lt!1249905 (rule!8430 (_1!22132 lt!1249940))))))

(declare-fun getSuffix!1608 (List!38239 List!38239) List!38239)

(assert (=> b!3619218 (isEmpty!22522 (getSuffix!1608 lt!1249905 lt!1249905))))

(declare-fun lt!1249914 () Unit!54742)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!164 (List!38239) Unit!54742)

(assert (=> b!3619218 (= lt!1249914 (lemmaGetSuffixOnListWithItSelfIsEmpty!164 lt!1249905))))

(declare-fun Unit!54754 () Unit!54742)

(assert (=> b!3619218 (= e!2240152 Unit!54754)))

(declare-fun b!3619219 () Bool)

(declare-fun e!2240144 () Unit!54742)

(assert (=> b!3619219 (= e!2240144 e!2240147)))

(declare-fun c!626289 () Bool)

(assert (=> b!3619219 (= c!626289 (not (isSeparator!5670 (rule!8430 (_1!22132 lt!1249940)))))))

(declare-fun b!3619220 () Bool)

(assert (=> b!3619220 (= e!2240154 e!2240142)))

(declare-fun res!1464508 () Bool)

(assert (=> b!3619220 (=> res!1464508 e!2240142)))

(declare-fun lt!1249916 () List!38239)

(assert (=> b!3619220 (= res!1464508 (contains!7403 lt!1249916 lt!1249899))))

(declare-fun head!7638 (List!38239) C!21044)

(assert (=> b!3619220 (= lt!1249899 (head!7638 suffix!1395))))

(assert (=> b!3619220 (= lt!1249916 (usedCharacters!884 (regex!5670 rule!403)))))

(declare-fun b!3619221 () Bool)

(assert (=> b!3619221 false))

(declare-fun lt!1249918 () Unit!54742)

(assert (=> b!3619221 (= lt!1249918 call!261836)))

(declare-fun call!261838 () Bool)

(assert (=> b!3619221 (not call!261838)))

(declare-fun lt!1249932 () Unit!54742)

(assert (=> b!3619221 (= lt!1249932 (lemmaSepRuleNotContainsCharContainedInANonSepRule!258 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8430 (_1!22132 lt!1249940)) lt!1249899))))

(declare-fun e!2240135 () Unit!54742)

(declare-fun Unit!54755 () Unit!54742)

(assert (=> b!3619221 (= e!2240135 Unit!54755)))

(declare-fun b!3619222 () Bool)

(assert (=> b!3619222 (= e!2240118 e!2240135)))

(declare-fun lt!1249915 () Unit!54742)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!48 (List!38239 List!38239 List!38239 List!38239) Unit!54742)

(assert (=> b!3619222 (= lt!1249915 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!48 lt!1249905 suffix!1395 lt!1249920 lt!1249941))))

(assert (=> b!3619222 (contains!7403 lt!1249920 lt!1249899)))

(declare-fun c!626283 () Bool)

(assert (=> b!3619222 (= c!626283 (isSeparator!5670 rule!403))))

(declare-fun b!3619223 () Bool)

(declare-fun Unit!54756 () Unit!54742)

(assert (=> b!3619223 (= e!2240152 Unit!54756)))

(declare-fun b!3619224 () Bool)

(declare-fun res!1464498 () Bool)

(assert (=> b!3619224 (=> (not res!1464498) (not e!2240127))))

(declare-fun isEmpty!22523 (List!38241) Bool)

(assert (=> b!3619224 (= res!1464498 (not (isEmpty!22523 rules!3307)))))

(declare-fun tp!1105613 () Bool)

(declare-fun e!2240119 () Bool)

(declare-fun b!3619225 () Bool)

(declare-fun e!2240136 () Bool)

(assert (=> b!3619225 (= e!2240119 (and tp!1105613 (inv!51503 (tag!6386 (h!43537 rules!3307))) (inv!51506 (transformation!5670 (h!43537 rules!3307))) e!2240136))))

(declare-fun res!1464505 () Bool)

(assert (=> start!337058 (=> (not res!1464505) (not e!2240127))))

(get-info :version)

(assert (=> start!337058 (= res!1464505 ((_ is Lexer!5257) thiss!23823))))

(assert (=> start!337058 e!2240127))

(declare-fun e!2240134 () Bool)

(assert (=> start!337058 e!2240134))

(assert (=> start!337058 e!2240146))

(assert (=> start!337058 true))

(declare-fun e!2240138 () Bool)

(declare-fun inv!51507 (Token!10706) Bool)

(assert (=> start!337058 (and (inv!51507 token!511) e!2240138)))

(assert (=> start!337058 e!2240140))

(declare-fun e!2240148 () Bool)

(assert (=> start!337058 e!2240148))

(declare-fun b!3619226 () Bool)

(declare-fun e!2240139 () Bool)

(declare-fun e!2240129 () Bool)

(assert (=> b!3619226 (= e!2240139 e!2240129)))

(declare-fun res!1464507 () Bool)

(assert (=> b!3619226 (=> res!1464507 e!2240129)))

(declare-fun lt!1249894 () Option!7971)

(declare-fun lt!1249917 () List!38239)

(assert (=> b!3619226 (= res!1464507 (or (not (= lt!1249917 (_2!22132 lt!1249940))) (not (= lt!1249894 (Some!7970 (tuple2!37997 (_1!22132 lt!1249940) lt!1249917))))))))

(assert (=> b!3619226 (= (_2!22132 lt!1249940) lt!1249917)))

(declare-fun lt!1249936 () Unit!54742)

(declare-fun lemmaSamePrefixThenSameSuffix!1388 (List!38239 List!38239 List!38239 List!38239 List!38239) Unit!54742)

(assert (=> b!3619226 (= lt!1249936 (lemmaSamePrefixThenSameSuffix!1388 lt!1249920 (_2!22132 lt!1249940) lt!1249920 lt!1249917 lt!1249941))))

(assert (=> b!3619226 (= lt!1249917 (getSuffix!1608 lt!1249941 lt!1249920))))

(declare-fun lt!1249930 () Int)

(declare-fun lt!1249898 () TokenValue!5900)

(assert (=> b!3619226 (= lt!1249894 (Some!7970 (tuple2!37997 (Token!10707 lt!1249898 (rule!8430 (_1!22132 lt!1249940)) lt!1249930 lt!1249920) (_2!22132 lt!1249940))))))

(declare-fun maxPrefixOneRule!1937 (LexerInterface!5259 Rule!11140 List!38239) Option!7971)

(assert (=> b!3619226 (= lt!1249894 (maxPrefixOneRule!1937 thiss!23823 (rule!8430 (_1!22132 lt!1249940)) lt!1249941))))

(declare-fun size!29078 (List!38239) Int)

(assert (=> b!3619226 (= lt!1249930 (size!29078 lt!1249920))))

(declare-fun apply!9176 (TokenValueInjection!11228 BalanceConc!22856) TokenValue!5900)

(declare-fun seqFromList!4223 (List!38239) BalanceConc!22856)

(assert (=> b!3619226 (= lt!1249898 (apply!9176 (transformation!5670 (rule!8430 (_1!22132 lt!1249940))) (seqFromList!4223 lt!1249920)))))

(declare-fun lt!1249922 () Unit!54742)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1009 (LexerInterface!5259 List!38241 List!38239 List!38239 List!38239 Rule!11140) Unit!54742)

(assert (=> b!3619226 (= lt!1249922 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1009 thiss!23823 rules!3307 lt!1249920 lt!1249941 (_2!22132 lt!1249940) (rule!8430 (_1!22132 lt!1249940))))))

(declare-fun b!3619227 () Bool)

(declare-fun res!1464497 () Bool)

(assert (=> b!3619227 (=> (not res!1464497) (not e!2240127))))

(declare-fun rulesInvariant!4656 (LexerInterface!5259 List!38241) Bool)

(assert (=> b!3619227 (= res!1464497 (rulesInvariant!4656 thiss!23823 rules!3307))))

(declare-fun b!3619228 () Bool)

(declare-fun res!1464492 () Bool)

(assert (=> b!3619228 (=> (not res!1464492) (not e!2240127))))

(declare-fun contains!7404 (List!38241 Rule!11140) Bool)

(assert (=> b!3619228 (= res!1464492 (contains!7404 rules!3307 rule!403))))

(declare-fun b!3619229 () Bool)

(declare-fun tp!1105606 () Bool)

(declare-fun e!2240151 () Bool)

(assert (=> b!3619229 (= e!2240148 (and tp!1105606 (inv!51503 (tag!6386 anOtherTypeRule!33)) (inv!51506 (transformation!5670 anOtherTypeRule!33)) e!2240151))))

(assert (=> b!3619230 (= e!2240136 (and tp!1105612 tp!1105611))))

(declare-fun b!3619231 () Bool)

(declare-fun res!1464491 () Bool)

(assert (=> b!3619231 (=> (not res!1464491) (not e!2240127))))

(assert (=> b!3619231 (= res!1464491 (contains!7404 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3619232 () Bool)

(declare-fun res!1464501 () Bool)

(assert (=> b!3619232 (=> (not res!1464501) (not e!2240143))))

(assert (=> b!3619232 (= res!1464501 (= (rule!8430 token!511) rule!403))))

(declare-fun b!3619233 () Bool)

(declare-fun e!2240123 () Bool)

(assert (=> b!3619233 (= e!2240123 e!2240143)))

(declare-fun res!1464494 () Bool)

(assert (=> b!3619233 (=> (not res!1464494) (not e!2240143))))

(assert (=> b!3619233 (= res!1464494 (= (_1!22132 lt!1249933) token!511))))

(declare-fun lt!1249903 () Option!7971)

(assert (=> b!3619233 (= lt!1249933 (get!12415 lt!1249903))))

(declare-fun bm!261830 () Bool)

(assert (=> bm!261830 (= call!261835 (contains!7403 call!261837 lt!1249928))))

(declare-fun b!3619234 () Bool)

(assert (=> b!3619234 (= e!2240137 false)))

(declare-fun b!3619235 () Bool)

(declare-fun Unit!54757 () Unit!54742)

(assert (=> b!3619235 (= e!2240124 Unit!54757)))

(declare-fun b!3619236 () Bool)

(assert (=> b!3619236 (= e!2240149 e!2240139)))

(declare-fun res!1464503 () Bool)

(assert (=> b!3619236 (=> res!1464503 e!2240139)))

(declare-fun lt!1249895 () TokenValue!5900)

(declare-fun lt!1249944 () Int)

(assert (=> b!3619236 (= res!1464503 (not (= lt!1249942 (Some!7970 (tuple2!37997 (Token!10707 lt!1249895 (rule!8430 (_1!22132 lt!1249940)) lt!1249944 lt!1249920) (_2!22132 lt!1249940))))))))

(declare-fun size!29079 (BalanceConc!22856) Int)

(assert (=> b!3619236 (= lt!1249944 (size!29079 lt!1249924))))

(assert (=> b!3619236 (= lt!1249895 (apply!9176 (transformation!5670 (rule!8430 (_1!22132 lt!1249940))) lt!1249924))))

(declare-fun lt!1249925 () Unit!54742)

(declare-fun lemmaCharactersSize!723 (Token!10706) Unit!54742)

(assert (=> b!3619236 (= lt!1249925 (lemmaCharactersSize!723 (_1!22132 lt!1249940)))))

(declare-fun lt!1249927 () Unit!54742)

(declare-fun lemmaEqSameImage!861 (TokenValueInjection!11228 BalanceConc!22856 BalanceConc!22856) Unit!54742)

(assert (=> b!3619236 (= lt!1249927 (lemmaEqSameImage!861 (transformation!5670 (rule!8430 (_1!22132 lt!1249940))) lt!1249924 (seqFromList!4223 (originalCharacters!6384 (_1!22132 lt!1249940)))))))

(declare-fun lt!1249891 () Unit!54742)

(declare-fun lemmaSemiInverse!1427 (TokenValueInjection!11228 BalanceConc!22856) Unit!54742)

(assert (=> b!3619236 (= lt!1249891 (lemmaSemiInverse!1427 (transformation!5670 (rule!8430 (_1!22132 lt!1249940))) lt!1249924))))

(declare-fun bm!261831 () Bool)

(declare-fun call!261834 () List!38239)

(assert (=> bm!261831 (= call!261834 (usedCharacters!884 (regex!5670 (rule!8430 (_1!22132 lt!1249940)))))))

(declare-fun b!3619237 () Bool)

(assert (=> b!3619237 (= e!2240127 e!2240123)))

(declare-fun res!1464504 () Bool)

(assert (=> b!3619237 (=> (not res!1464504) (not e!2240123))))

(declare-fun isDefined!6203 (Option!7971) Bool)

(assert (=> b!3619237 (= res!1464504 (isDefined!6203 lt!1249903))))

(assert (=> b!3619237 (= lt!1249903 (maxPrefix!2793 thiss!23823 rules!3307 lt!1249905))))

(declare-fun lt!1249939 () BalanceConc!22856)

(assert (=> b!3619237 (= lt!1249905 (list!14066 lt!1249939))))

(assert (=> b!3619237 (= lt!1249939 (charsOf!3684 token!511))))

(declare-fun bm!261832 () Bool)

(assert (=> bm!261832 (= call!261833 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!654 (regex!5670 (rule!8430 (_1!22132 lt!1249940))) lt!1249920 lt!1249928))))

(declare-fun b!3619238 () Bool)

(assert (=> b!3619238 false))

(declare-fun lt!1249900 () Unit!54742)

(assert (=> b!3619238 (= lt!1249900 (lemmaMaxPrefNoSmallerRuleMatches!204 thiss!23823 rules!3307 (rule!8430 (_1!22132 lt!1249940)) lt!1249905 lt!1249941 rule!403))))

(declare-fun Unit!54758 () Unit!54742)

(assert (=> b!3619238 (= e!2240124 Unit!54758)))

(declare-fun b!3619239 () Bool)

(assert (=> b!3619239 false))

(declare-fun lt!1249929 () Unit!54742)

(assert (=> b!3619239 (= lt!1249929 call!261836)))

(assert (=> b!3619239 (not call!261838)))

(declare-fun lt!1249897 () Unit!54742)

(assert (=> b!3619239 (= lt!1249897 (lemmaNonSepRuleNotContainsCharContainedInASepRule!376 thiss!23823 rules!3307 rules!3307 (rule!8430 (_1!22132 lt!1249940)) anOtherTypeRule!33 lt!1249899))))

(declare-fun Unit!54759 () Unit!54742)

(assert (=> b!3619239 (= e!2240135 Unit!54759)))

(assert (=> b!3619240 (= e!2240151 (and tp!1105605 tp!1105609))))

(declare-fun b!3619241 () Bool)

(declare-fun tp!1105608 () Bool)

(assert (=> b!3619241 (= e!2240134 (and e!2240119 tp!1105608))))

(declare-fun b!3619242 () Bool)

(declare-fun Unit!54760 () Unit!54742)

(assert (=> b!3619242 (= e!2240131 Unit!54760)))

(declare-fun b!3619243 () Bool)

(assert (=> b!3619243 (= e!2240129 true)))

(declare-fun lt!1249907 () List!38239)

(assert (=> b!3619243 (= lt!1249907 (_2!22132 lt!1249940))))

(declare-fun lt!1249948 () Unit!54742)

(assert (=> b!3619243 (= lt!1249948 (lemmaSamePrefixThenSameSuffix!1388 lt!1249905 lt!1249907 lt!1249920 (_2!22132 lt!1249940) lt!1249941))))

(assert (=> b!3619243 (= (maxPrefixOneRule!1937 thiss!23823 rule!403 lt!1249941) (Some!7970 (tuple2!37997 (Token!10707 (apply!9176 (transformation!5670 rule!403) (seqFromList!4223 lt!1249905)) rule!403 (size!29078 lt!1249905) lt!1249905) lt!1249907)))))

(declare-fun lt!1249947 () Unit!54742)

(assert (=> b!3619243 (= lt!1249947 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1009 thiss!23823 rules!3307 lt!1249905 lt!1249941 lt!1249907 rule!403))))

(assert (=> b!3619243 (= lt!1249907 (getSuffix!1608 lt!1249941 lt!1249905))))

(declare-fun lt!1249921 () Unit!54742)

(assert (=> b!3619243 (= lt!1249921 e!2240131)))

(declare-fun c!626286 () Bool)

(assert (=> b!3619243 (= c!626286 (not (= (rule!8430 (_1!22132 lt!1249940)) (rule!8430 token!511))))))

(assert (=> b!3619243 (= lt!1249920 lt!1249905)))

(declare-fun lt!1249902 () Unit!54742)

(declare-fun lemmaIsPrefixSameLengthThenSameList!607 (List!38239 List!38239 List!38239) Unit!54742)

(assert (=> b!3619243 (= lt!1249902 (lemmaIsPrefixSameLengthThenSameList!607 lt!1249920 lt!1249905 lt!1249941))))

(declare-fun lt!1249912 () Unit!54742)

(assert (=> b!3619243 (= lt!1249912 e!2240122)))

(declare-fun c!626290 () Bool)

(declare-fun lt!1249911 () Int)

(assert (=> b!3619243 (= c!626290 (< lt!1249944 lt!1249911))))

(declare-fun lt!1249935 () Unit!54742)

(assert (=> b!3619243 (= lt!1249935 e!2240118)))

(declare-fun c!626288 () Bool)

(assert (=> b!3619243 (= c!626288 (> lt!1249944 lt!1249911))))

(assert (=> b!3619243 (= lt!1249911 (size!29079 lt!1249939))))

(declare-fun lt!1249906 () Unit!54742)

(assert (=> b!3619243 (= lt!1249906 e!2240144)))

(declare-fun c!626284 () Bool)

(assert (=> b!3619243 (= c!626284 (isSeparator!5670 rule!403))))

(declare-fun lt!1249908 () Unit!54742)

(assert (=> b!3619243 (= lt!1249908 e!2240141)))

(declare-fun c!626282 () Bool)

(assert (=> b!3619243 (= c!626282 (not (contains!7403 lt!1249916 lt!1249928)))))

(assert (=> b!3619243 (= lt!1249928 (head!7638 lt!1249920))))

(declare-fun bm!261833 () Bool)

(assert (=> bm!261833 (= call!261838 (contains!7403 call!261834 lt!1249899))))

(declare-fun b!3619244 () Bool)

(declare-fun tp!1105614 () Bool)

(declare-fun inv!21 (TokenValue!5900) Bool)

(assert (=> b!3619244 (= e!2240138 (and (inv!21 (value!182055 token!511)) e!2240130 tp!1105614))))

(declare-fun b!3619245 () Bool)

(declare-fun Unit!54761 () Unit!54742)

(assert (=> b!3619245 (= e!2240133 Unit!54761)))

(declare-fun b!3619246 () Bool)

(assert (=> b!3619246 (= e!2240144 e!2240133)))

(declare-fun c!626287 () Bool)

(assert (=> b!3619246 (= c!626287 (isSeparator!5670 (rule!8430 (_1!22132 lt!1249940))))))

(assert (= (and start!337058 res!1464505) b!3619224))

(assert (= (and b!3619224 res!1464498) b!3619227))

(assert (= (and b!3619227 res!1464497) b!3619228))

(assert (= (and b!3619228 res!1464492) b!3619231))

(assert (= (and b!3619231 res!1464491) b!3619198))

(assert (= (and b!3619198 res!1464490) b!3619237))

(assert (= (and b!3619237 res!1464504) b!3619233))

(assert (= (and b!3619233 res!1464494) b!3619199))

(assert (= (and b!3619199 res!1464509) b!3619232))

(assert (= (and b!3619232 res!1464501) b!3619217))

(assert (= (and b!3619217 (not res!1464499)) b!3619194))

(assert (= (and b!3619194 (not res!1464510)) b!3619220))

(assert (= (and b!3619220 (not res!1464508)) b!3619214))

(assert (= (and b!3619214 (not res!1464493)) b!3619204))

(assert (= (and b!3619204 (not res!1464506)) b!3619201))

(assert (= (and b!3619201 res!1464511) b!3619212))

(assert (= (and b!3619212 res!1464502) b!3619205))

(assert (= (and b!3619201 (not res!1464495)) b!3619207))

(assert (= (and b!3619207 (not res!1464496)) b!3619236))

(assert (= (and b!3619236 (not res!1464503)) b!3619226))

(assert (= (and b!3619226 (not res!1464507)) b!3619243))

(assert (= (and b!3619243 c!626282) b!3619208))

(assert (= (and b!3619243 (not c!626282)) b!3619203))

(assert (= (and b!3619243 c!626284) b!3619219))

(assert (= (and b!3619243 (not c!626284)) b!3619246))

(assert (= (and b!3619219 c!626289) b!3619211))

(assert (= (and b!3619219 (not c!626289)) b!3619216))

(assert (= (and b!3619246 c!626287) b!3619196))

(assert (= (and b!3619246 (not c!626287)) b!3619245))

(assert (= (or b!3619211 b!3619196) bm!261832))

(assert (= (or b!3619211 b!3619196) bm!261828))

(assert (= (or b!3619211 b!3619196) bm!261830))

(assert (= (and b!3619243 c!626288) b!3619222))

(assert (= (and b!3619243 (not c!626288)) b!3619206))

(assert (= (and b!3619222 c!626283) b!3619221))

(assert (= (and b!3619222 (not c!626283)) b!3619239))

(assert (= (or b!3619221 b!3619239) bm!261829))

(assert (= (or b!3619221 b!3619239) bm!261831))

(assert (= (or b!3619221 b!3619239) bm!261833))

(assert (= (and b!3619243 c!626290) b!3619197))

(assert (= (and b!3619243 (not c!626290)) b!3619202))

(assert (= (and b!3619243 c!626286) b!3619213))

(assert (= (and b!3619243 (not c!626286)) b!3619242))

(assert (= (and b!3619213 c!626285) b!3619218))

(assert (= (and b!3619213 (not c!626285)) b!3619223))

(assert (= (and b!3619218 res!1464500) b!3619234))

(assert (= (and b!3619213 c!626291) b!3619238))

(assert (= (and b!3619213 (not c!626291)) b!3619235))

(assert (= b!3619225 b!3619230))

(assert (= b!3619241 b!3619225))

(assert (= (and start!337058 ((_ is Cons!38117) rules!3307)) b!3619241))

(assert (= (and start!337058 ((_ is Cons!38115) suffix!1395)) b!3619215))

(assert (= b!3619200 b!3619195))

(assert (= b!3619244 b!3619200))

(assert (= start!337058 b!3619244))

(assert (= b!3619210 b!3619209))

(assert (= start!337058 b!3619210))

(assert (= b!3619229 b!3619240))

(assert (= start!337058 b!3619229))

(declare-fun m!4118407 () Bool)

(assert (=> b!3619222 m!4118407))

(declare-fun m!4118409 () Bool)

(assert (=> b!3619222 m!4118409))

(declare-fun m!4118411 () Bool)

(assert (=> b!3619243 m!4118411))

(declare-fun m!4118413 () Bool)

(assert (=> b!3619243 m!4118413))

(declare-fun m!4118415 () Bool)

(assert (=> b!3619243 m!4118415))

(declare-fun m!4118417 () Bool)

(assert (=> b!3619243 m!4118417))

(declare-fun m!4118419 () Bool)

(assert (=> b!3619243 m!4118419))

(assert (=> b!3619243 m!4118417))

(declare-fun m!4118421 () Bool)

(assert (=> b!3619243 m!4118421))

(declare-fun m!4118423 () Bool)

(assert (=> b!3619243 m!4118423))

(declare-fun m!4118425 () Bool)

(assert (=> b!3619243 m!4118425))

(declare-fun m!4118427 () Bool)

(assert (=> b!3619243 m!4118427))

(declare-fun m!4118429 () Bool)

(assert (=> b!3619243 m!4118429))

(declare-fun m!4118431 () Bool)

(assert (=> b!3619243 m!4118431))

(declare-fun m!4118433 () Bool)

(assert (=> start!337058 m!4118433))

(declare-fun m!4118435 () Bool)

(assert (=> b!3619201 m!4118435))

(declare-fun m!4118437 () Bool)

(assert (=> b!3619201 m!4118437))

(declare-fun m!4118439 () Bool)

(assert (=> b!3619201 m!4118439))

(declare-fun m!4118441 () Bool)

(assert (=> b!3619201 m!4118441))

(declare-fun m!4118443 () Bool)

(assert (=> b!3619201 m!4118443))

(declare-fun m!4118445 () Bool)

(assert (=> b!3619201 m!4118445))

(assert (=> b!3619201 m!4118445))

(declare-fun m!4118447 () Bool)

(assert (=> b!3619201 m!4118447))

(declare-fun m!4118449 () Bool)

(assert (=> b!3619201 m!4118449))

(declare-fun m!4118451 () Bool)

(assert (=> b!3619201 m!4118451))

(declare-fun m!4118453 () Bool)

(assert (=> b!3619201 m!4118453))

(declare-fun m!4118455 () Bool)

(assert (=> b!3619201 m!4118455))

(declare-fun m!4118457 () Bool)

(assert (=> b!3619201 m!4118457))

(declare-fun m!4118459 () Bool)

(assert (=> b!3619201 m!4118459))

(declare-fun m!4118461 () Bool)

(assert (=> b!3619201 m!4118461))

(declare-fun m!4118463 () Bool)

(assert (=> b!3619201 m!4118463))

(declare-fun m!4118465 () Bool)

(assert (=> bm!261832 m!4118465))

(declare-fun m!4118467 () Bool)

(assert (=> b!3619220 m!4118467))

(declare-fun m!4118469 () Bool)

(assert (=> b!3619220 m!4118469))

(declare-fun m!4118471 () Bool)

(assert (=> b!3619220 m!4118471))

(declare-fun m!4118473 () Bool)

(assert (=> b!3619228 m!4118473))

(declare-fun m!4118475 () Bool)

(assert (=> bm!261829 m!4118475))

(declare-fun m!4118477 () Bool)

(assert (=> b!3619197 m!4118477))

(declare-fun m!4118479 () Bool)

(assert (=> b!3619244 m!4118479))

(declare-fun m!4118481 () Bool)

(assert (=> b!3619194 m!4118481))

(declare-fun m!4118483 () Bool)

(assert (=> b!3619204 m!4118483))

(declare-fun m!4118485 () Bool)

(assert (=> b!3619226 m!4118485))

(declare-fun m!4118487 () Bool)

(assert (=> b!3619226 m!4118487))

(declare-fun m!4118489 () Bool)

(assert (=> b!3619226 m!4118489))

(declare-fun m!4118491 () Bool)

(assert (=> b!3619226 m!4118491))

(assert (=> b!3619226 m!4118489))

(declare-fun m!4118493 () Bool)

(assert (=> b!3619226 m!4118493))

(declare-fun m!4118495 () Bool)

(assert (=> b!3619226 m!4118495))

(declare-fun m!4118497 () Bool)

(assert (=> b!3619226 m!4118497))

(declare-fun m!4118499 () Bool)

(assert (=> b!3619233 m!4118499))

(declare-fun m!4118501 () Bool)

(assert (=> bm!261833 m!4118501))

(declare-fun m!4118503 () Bool)

(assert (=> bm!261828 m!4118503))

(declare-fun m!4118505 () Bool)

(assert (=> b!3619208 m!4118505))

(declare-fun m!4118507 () Bool)

(assert (=> b!3619214 m!4118507))

(assert (=> b!3619214 m!4118507))

(declare-fun m!4118509 () Bool)

(assert (=> b!3619214 m!4118509))

(declare-fun m!4118511 () Bool)

(assert (=> b!3619210 m!4118511))

(declare-fun m!4118513 () Bool)

(assert (=> b!3619210 m!4118513))

(declare-fun m!4118515 () Bool)

(assert (=> b!3619239 m!4118515))

(declare-fun m!4118517 () Bool)

(assert (=> b!3619231 m!4118517))

(declare-fun m!4118519 () Bool)

(assert (=> b!3619211 m!4118519))

(declare-fun m!4118521 () Bool)

(assert (=> b!3619236 m!4118521))

(declare-fun m!4118523 () Bool)

(assert (=> b!3619236 m!4118523))

(declare-fun m!4118525 () Bool)

(assert (=> b!3619236 m!4118525))

(declare-fun m!4118527 () Bool)

(assert (=> b!3619236 m!4118527))

(declare-fun m!4118529 () Bool)

(assert (=> b!3619236 m!4118529))

(declare-fun m!4118531 () Bool)

(assert (=> b!3619236 m!4118531))

(assert (=> b!3619236 m!4118523))

(declare-fun m!4118533 () Bool)

(assert (=> b!3619217 m!4118533))

(declare-fun m!4118535 () Bool)

(assert (=> b!3619217 m!4118535))

(declare-fun m!4118537 () Bool)

(assert (=> b!3619217 m!4118537))

(declare-fun m!4118539 () Bool)

(assert (=> b!3619225 m!4118539))

(declare-fun m!4118541 () Bool)

(assert (=> b!3619225 m!4118541))

(declare-fun m!4118543 () Bool)

(assert (=> b!3619238 m!4118543))

(declare-fun m!4118545 () Bool)

(assert (=> b!3619218 m!4118545))

(declare-fun m!4118547 () Bool)

(assert (=> b!3619218 m!4118547))

(declare-fun m!4118549 () Bool)

(assert (=> b!3619218 m!4118549))

(declare-fun m!4118551 () Bool)

(assert (=> b!3619218 m!4118551))

(assert (=> b!3619218 m!4118551))

(declare-fun m!4118553 () Bool)

(assert (=> b!3619218 m!4118553))

(assert (=> b!3619212 m!4118439))

(assert (=> b!3619212 m!4118439))

(declare-fun m!4118555 () Bool)

(assert (=> b!3619212 m!4118555))

(assert (=> b!3619212 m!4118555))

(declare-fun m!4118557 () Bool)

(assert (=> b!3619212 m!4118557))

(declare-fun m!4118559 () Bool)

(assert (=> b!3619212 m!4118559))

(declare-fun m!4118561 () Bool)

(assert (=> b!3619199 m!4118561))

(declare-fun m!4118563 () Bool)

(assert (=> b!3619200 m!4118563))

(declare-fun m!4118565 () Bool)

(assert (=> b!3619200 m!4118565))

(declare-fun m!4118567 () Bool)

(assert (=> b!3619237 m!4118567))

(declare-fun m!4118569 () Bool)

(assert (=> b!3619237 m!4118569))

(declare-fun m!4118571 () Bool)

(assert (=> b!3619237 m!4118571))

(declare-fun m!4118573 () Bool)

(assert (=> b!3619237 m!4118573))

(declare-fun m!4118575 () Bool)

(assert (=> b!3619213 m!4118575))

(declare-fun m!4118577 () Bool)

(assert (=> b!3619213 m!4118577))

(declare-fun m!4118579 () Bool)

(assert (=> b!3619213 m!4118579))

(declare-fun m!4118581 () Bool)

(assert (=> b!3619207 m!4118581))

(declare-fun m!4118583 () Bool)

(assert (=> b!3619221 m!4118583))

(declare-fun m!4118585 () Bool)

(assert (=> b!3619196 m!4118585))

(declare-fun m!4118587 () Bool)

(assert (=> b!3619227 m!4118587))

(declare-fun m!4118589 () Bool)

(assert (=> b!3619229 m!4118589))

(declare-fun m!4118591 () Bool)

(assert (=> b!3619229 m!4118591))

(declare-fun m!4118593 () Bool)

(assert (=> b!3619224 m!4118593))

(assert (=> bm!261831 m!4118503))

(declare-fun m!4118595 () Bool)

(assert (=> bm!261830 m!4118595))

(check-sat (not b!3619194) (not b!3619208) (not b!3619233) (not start!337058) b_and!264507 (not b!3619211) (not b!3619221) (not b_next!94993) (not bm!261828) (not b_next!95005) (not bm!261833) (not b!3619214) (not b!3619217) (not b!3619196) (not b!3619239) (not b!3619244) (not b!3619213) (not b!3619228) (not bm!261830) (not b!3619243) (not b!3619225) (not b!3619236) (not b!3619222) b_and!264513 (not b!3619224) (not b!3619199) (not b!3619197) (not b!3619226) b_and!264499 (not b!3619204) b_and!264509 (not b_next!95001) (not bm!261829) b_and!264501 (not b!3619231) (not b!3619220) b_and!264505 b_and!264511 (not b!3619207) (not bm!261831) (not b!3619212) (not b!3619229) (not b_next!94995) (not b!3619218) tp_is_empty!17941 (not b_next!95007) (not b!3619227) (not b!3619237) (not b_next!95003) (not b!3619210) (not b!3619215) (not bm!261832) (not b!3619238) (not b_next!94997) (not b_next!94999) (not b!3619200) b_and!264503 (not b!3619201) (not b!3619241))
(check-sat b_and!264507 b_and!264513 b_and!264499 b_and!264509 (not b_next!94993) (not b_next!95001) (not b_next!95005) b_and!264511 (not b_next!94995) (not b_next!95007) (not b_next!95003) b_and!264503 b_and!264501 b_and!264505 (not b_next!94997) (not b_next!94999))

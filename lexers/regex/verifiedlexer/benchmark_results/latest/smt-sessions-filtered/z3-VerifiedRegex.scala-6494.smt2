; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!341518 () Bool)

(assert start!341518)

(declare-fun b!3651831 () Bool)

(declare-fun b_free!96081 () Bool)

(declare-fun b_next!96785 () Bool)

(assert (=> b!3651831 (= b_free!96081 (not b_next!96785))))

(declare-fun tp!1113179 () Bool)

(declare-fun b_and!270203 () Bool)

(assert (=> b!3651831 (= tp!1113179 b_and!270203)))

(declare-fun b_free!96083 () Bool)

(declare-fun b_next!96787 () Bool)

(assert (=> b!3651831 (= b_free!96083 (not b_next!96787))))

(declare-fun tp!1113192 () Bool)

(declare-fun b_and!270205 () Bool)

(assert (=> b!3651831 (= tp!1113192 b_and!270205)))

(declare-fun b!3651855 () Bool)

(declare-fun b_free!96085 () Bool)

(declare-fun b_next!96789 () Bool)

(assert (=> b!3651855 (= b_free!96085 (not b_next!96789))))

(declare-fun tp!1113188 () Bool)

(declare-fun b_and!270207 () Bool)

(assert (=> b!3651855 (= tp!1113188 b_and!270207)))

(declare-fun b_free!96087 () Bool)

(declare-fun b_next!96791 () Bool)

(assert (=> b!3651855 (= b_free!96087 (not b_next!96791))))

(declare-fun tp!1113178 () Bool)

(declare-fun b_and!270209 () Bool)

(assert (=> b!3651855 (= tp!1113178 b_and!270209)))

(declare-fun b!3651854 () Bool)

(declare-fun b_free!96089 () Bool)

(declare-fun b_next!96793 () Bool)

(assert (=> b!3651854 (= b_free!96089 (not b_next!96793))))

(declare-fun tp!1113190 () Bool)

(declare-fun b_and!270211 () Bool)

(assert (=> b!3651854 (= tp!1113190 b_and!270211)))

(declare-fun b_free!96091 () Bool)

(declare-fun b_next!96795 () Bool)

(assert (=> b!3651854 (= b_free!96091 (not b_next!96795))))

(declare-fun tp!1113184 () Bool)

(declare-fun b_and!270213 () Bool)

(assert (=> b!3651854 (= tp!1113184 b_and!270213)))

(declare-fun b!3651828 () Bool)

(declare-fun b_free!96093 () Bool)

(declare-fun b_next!96797 () Bool)

(assert (=> b!3651828 (= b_free!96093 (not b_next!96797))))

(declare-fun tp!1113186 () Bool)

(declare-fun b_and!270215 () Bool)

(assert (=> b!3651828 (= tp!1113186 b_and!270215)))

(declare-fun b_free!96095 () Bool)

(declare-fun b_next!96799 () Bool)

(assert (=> b!3651828 (= b_free!96095 (not b_next!96799))))

(declare-fun tp!1113191 () Bool)

(declare-fun b_and!270217 () Bool)

(assert (=> b!3651828 (= tp!1113191 b_and!270217)))

(declare-fun e!2260957 () Bool)

(declare-fun e!2260962 () Bool)

(declare-datatypes ((List!38635 0))(
  ( (Nil!38511) (Cons!38511 (h!43931 (_ BitVec 16)) (t!297618 List!38635)) )
))
(declare-datatypes ((TokenValue!5998 0))(
  ( (FloatLiteralValue!11996 (text!42431 List!38635)) (TokenValueExt!5997 (__x!24213 Int)) (Broken!29990 (value!184822 List!38635)) (Object!6121) (End!5998) (Def!5998) (Underscore!5998) (Match!5998) (Else!5998) (Error!5998) (Case!5998) (If!5998) (Extends!5998) (Abstract!5998) (Class!5998) (Val!5998) (DelimiterValue!11996 (del!6058 List!38635)) (KeywordValue!6004 (value!184823 List!38635)) (CommentValue!11996 (value!184824 List!38635)) (WhitespaceValue!11996 (value!184825 List!38635)) (IndentationValue!5998 (value!184826 List!38635)) (String!43323) (Int32!5998) (Broken!29991 (value!184827 List!38635)) (Boolean!5999) (Unit!55529) (OperatorValue!6001 (op!6058 List!38635)) (IdentifierValue!11996 (value!184828 List!38635)) (IdentifierValue!11997 (value!184829 List!38635)) (WhitespaceValue!11997 (value!184830 List!38635)) (True!11996) (False!11996) (Broken!29992 (value!184831 List!38635)) (Broken!29993 (value!184832 List!38635)) (True!11997) (RightBrace!5998) (RightBracket!5998) (Colon!5998) (Null!5998) (Comma!5998) (LeftBracket!5998) (False!11997) (LeftBrace!5998) (ImaginaryLiteralValue!5998 (text!42432 List!38635)) (StringLiteralValue!17994 (value!184833 List!38635)) (EOFValue!5998 (value!184834 List!38635)) (IdentValue!5998 (value!184835 List!38635)) (DelimiterValue!11997 (value!184836 List!38635)) (DedentValue!5998 (value!184837 List!38635)) (NewLineValue!5998 (value!184838 List!38635)) (IntegerValue!17994 (value!184839 (_ BitVec 32)) (text!42433 List!38635)) (IntegerValue!17995 (value!184840 Int) (text!42434 List!38635)) (Times!5998) (Or!5998) (Equal!5998) (Minus!5998) (Broken!29994 (value!184841 List!38635)) (And!5998) (Div!5998) (LessEqual!5998) (Mod!5998) (Concat!16525) (Not!5998) (Plus!5998) (SpaceValue!5998 (value!184842 List!38635)) (IntegerValue!17996 (value!184843 Int) (text!42435 List!38635)) (StringLiteralValue!17995 (text!42436 List!38635)) (FloatLiteralValue!11997 (text!42437 List!38635)) (BytesLiteralValue!5998 (value!184844 List!38635)) (CommentValue!11997 (value!184845 List!38635)) (StringLiteralValue!17996 (value!184846 List!38635)) (ErrorTokenValue!5998 (msg!6059 List!38635)) )
))
(declare-datatypes ((C!21240 0))(
  ( (C!21241 (val!12668 Int)) )
))
(declare-datatypes ((Regex!10527 0))(
  ( (ElementMatch!10527 (c!631178 C!21240)) (Concat!16526 (regOne!21566 Regex!10527) (regTwo!21566 Regex!10527)) (EmptyExpr!10527) (Star!10527 (reg!10856 Regex!10527)) (EmptyLang!10527) (Union!10527 (regOne!21567 Regex!10527) (regTwo!21567 Regex!10527)) )
))
(declare-datatypes ((String!43324 0))(
  ( (String!43325 (value!184847 String)) )
))
(declare-datatypes ((List!38636 0))(
  ( (Nil!38512) (Cons!38512 (h!43932 C!21240) (t!297619 List!38636)) )
))
(declare-datatypes ((IArray!23543 0))(
  ( (IArray!23544 (innerList!11829 List!38636)) )
))
(declare-datatypes ((Conc!11769 0))(
  ( (Node!11769 (left!30063 Conc!11769) (right!30393 Conc!11769) (csize!23768 Int) (cheight!11980 Int)) (Leaf!18264 (xs!14971 IArray!23543) (csize!23769 Int)) (Empty!11769) )
))
(declare-datatypes ((BalanceConc!23152 0))(
  ( (BalanceConc!23153 (c!631179 Conc!11769)) )
))
(declare-datatypes ((TokenValueInjection!11424 0))(
  ( (TokenValueInjection!11425 (toValue!8060 Int) (toChars!7919 Int)) )
))
(declare-datatypes ((Rule!11336 0))(
  ( (Rule!11337 (regex!5768 Regex!10527) (tag!6534 String!43324) (isSeparator!5768 Bool) (transformation!5768 TokenValueInjection!11424)) )
))
(declare-datatypes ((Token!10902 0))(
  ( (Token!10903 (value!184848 TokenValue!5998) (rule!8568 Rule!11336) (size!29409 Int) (originalCharacters!6482 List!38636)) )
))
(declare-fun token!511 () Token!10902)

(declare-fun tp!1113182 () Bool)

(declare-fun b!3651816 () Bool)

(declare-fun inv!51961 (String!43324) Bool)

(declare-fun inv!51964 (TokenValueInjection!11424) Bool)

(assert (=> b!3651816 (= e!2260962 (and tp!1113182 (inv!51961 (tag!6534 (rule!8568 token!511))) (inv!51964 (transformation!5768 (rule!8568 token!511))) e!2260957))))

(declare-fun e!2260958 () Bool)

(declare-fun b!3651817 () Bool)

(declare-fun tp!1113183 () Bool)

(declare-fun inv!21 (TokenValue!5998) Bool)

(assert (=> b!3651817 (= e!2260958 (and (inv!21 (value!184848 token!511)) e!2260962 tp!1113183))))

(declare-fun b!3651818 () Bool)

(declare-fun e!2260960 () Bool)

(declare-datatypes ((tuple2!38380 0))(
  ( (tuple2!38381 (_1!22324 Token!10902) (_2!22324 List!38636)) )
))
(declare-fun lt!1267125 () tuple2!38380)

(declare-fun anOtherTypeRule!33 () Rule!11336)

(assert (=> b!3651818 (= e!2260960 (or (isSeparator!5768 (rule!8568 (_1!22324 lt!1267125))) (isSeparator!5768 anOtherTypeRule!33)))))

(declare-fun e!2260952 () Bool)

(declare-fun e!2260959 () Bool)

(declare-fun tp!1113189 () Bool)

(declare-fun b!3651819 () Bool)

(assert (=> b!3651819 (= e!2260952 (and tp!1113189 (inv!51961 (tag!6534 anOtherTypeRule!33)) (inv!51964 (transformation!5768 anOtherTypeRule!33)) e!2260959))))

(declare-fun b!3651820 () Bool)

(declare-fun e!2260967 () Bool)

(declare-fun e!2260964 () Bool)

(assert (=> b!3651820 (= e!2260967 e!2260964)))

(declare-fun res!1481619 () Bool)

(assert (=> b!3651820 (=> res!1481619 e!2260964)))

(declare-fun lt!1267155 () Int)

(declare-fun lt!1267138 () BalanceConc!23152)

(declare-fun size!29410 (BalanceConc!23152) Int)

(assert (=> b!3651820 (= res!1481619 (<= lt!1267155 (size!29410 lt!1267138)))))

(declare-datatypes ((Unit!55530 0))(
  ( (Unit!55531) )
))
(declare-fun lt!1267152 () Unit!55530)

(declare-fun e!2260945 () Unit!55530)

(assert (=> b!3651820 (= lt!1267152 e!2260945)))

(declare-fun c!631175 () Bool)

(declare-fun rule!403 () Rule!11336)

(assert (=> b!3651820 (= c!631175 (isSeparator!5768 rule!403))))

(declare-fun lt!1267136 () Unit!55530)

(declare-fun e!2260970 () Unit!55530)

(assert (=> b!3651820 (= lt!1267136 e!2260970)))

(declare-fun c!631177 () Bool)

(declare-fun lt!1267123 () List!38636)

(declare-fun lt!1267151 () C!21240)

(declare-fun contains!7601 (List!38636 C!21240) Bool)

(assert (=> b!3651820 (= c!631177 (not (contains!7601 lt!1267123 lt!1267151)))))

(declare-fun lt!1267146 () List!38636)

(declare-fun head!7784 (List!38636) C!21240)

(assert (=> b!3651820 (= lt!1267151 (head!7784 lt!1267146))))

(declare-fun b!3651821 () Bool)

(declare-fun e!2260946 () Bool)

(declare-fun e!2260953 () Bool)

(assert (=> b!3651821 (= e!2260946 e!2260953)))

(declare-fun res!1481618 () Bool)

(assert (=> b!3651821 (=> res!1481618 e!2260953)))

(declare-fun lt!1267157 () C!21240)

(assert (=> b!3651821 (= res!1481618 (contains!7601 lt!1267123 lt!1267157))))

(declare-fun suffix!1395 () List!38636)

(assert (=> b!3651821 (= lt!1267157 (head!7784 suffix!1395))))

(declare-fun usedCharacters!980 (Regex!10527) List!38636)

(assert (=> b!3651821 (= lt!1267123 (usedCharacters!980 (regex!5768 rule!403)))))

(declare-fun bm!263923 () Bool)

(declare-fun call!263930 () List!38636)

(assert (=> bm!263923 (= call!263930 (usedCharacters!980 (regex!5768 (rule!8568 (_1!22324 lt!1267125)))))))

(declare-fun b!3651822 () Bool)

(declare-fun e!2260948 () Bool)

(declare-fun e!2260943 () Bool)

(assert (=> b!3651822 (= e!2260948 e!2260943)))

(declare-fun res!1481620 () Bool)

(assert (=> b!3651822 (=> (not res!1481620) (not e!2260943))))

(declare-datatypes ((Option!8164 0))(
  ( (None!8163) (Some!8163 (v!38027 tuple2!38380)) )
))
(declare-fun lt!1267126 () Option!8164)

(declare-fun isDefined!6396 (Option!8164) Bool)

(assert (=> b!3651822 (= res!1481620 (isDefined!6396 lt!1267126))))

(declare-datatypes ((List!38637 0))(
  ( (Nil!38513) (Cons!38513 (h!43933 Rule!11336) (t!297620 List!38637)) )
))
(declare-fun rules!3307 () List!38637)

(declare-datatypes ((LexerInterface!5357 0))(
  ( (LexerInterfaceExt!5354 (__x!24214 Int)) (Lexer!5355) )
))
(declare-fun thiss!23823 () LexerInterface!5357)

(declare-fun lt!1267145 () List!38636)

(declare-fun maxPrefix!2891 (LexerInterface!5357 List!38637 List!38636) Option!8164)

(assert (=> b!3651822 (= lt!1267126 (maxPrefix!2891 thiss!23823 rules!3307 lt!1267145))))

(declare-fun list!14274 (BalanceConc!23152) List!38636)

(assert (=> b!3651822 (= lt!1267145 (list!14274 lt!1267138))))

(declare-fun charsOf!3782 (Token!10902) BalanceConc!23152)

(assert (=> b!3651822 (= lt!1267138 (charsOf!3782 token!511))))

(declare-fun b!3651823 () Bool)

(declare-fun res!1481614 () Bool)

(assert (=> b!3651823 (=> res!1481614 e!2260946)))

(declare-fun isEmpty!22824 (List!38636) Bool)

(assert (=> b!3651823 (= res!1481614 (isEmpty!22824 suffix!1395))))

(declare-fun b!3651824 () Bool)

(assert (=> b!3651824 false))

(declare-fun lt!1267134 () Unit!55530)

(declare-fun call!263928 () Unit!55530)

(assert (=> b!3651824 (= lt!1267134 call!263928)))

(declare-fun call!263929 () Bool)

(assert (=> b!3651824 (not call!263929)))

(declare-fun lt!1267140 () Unit!55530)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!414 (LexerInterface!5357 List!38637 List!38637 Rule!11336 Rule!11336 C!21240) Unit!55530)

(assert (=> b!3651824 (= lt!1267140 (lemmaNonSepRuleNotContainsCharContainedInASepRule!414 thiss!23823 rules!3307 rules!3307 (rule!8568 (_1!22324 lt!1267125)) rule!403 lt!1267151))))

(declare-fun e!2260965 () Unit!55530)

(declare-fun Unit!55532 () Unit!55530)

(assert (=> b!3651824 (= e!2260965 Unit!55532)))

(declare-fun b!3651825 () Bool)

(declare-fun res!1481623 () Bool)

(declare-fun e!2260949 () Bool)

(assert (=> b!3651825 (=> res!1481623 e!2260949)))

(declare-fun matchR!5096 (Regex!10527 List!38636) Bool)

(assert (=> b!3651825 (= res!1481623 (not (matchR!5096 (regex!5768 (rule!8568 (_1!22324 lt!1267125))) lt!1267146)))))

(declare-fun b!3651826 () Bool)

(declare-fun res!1481622 () Bool)

(assert (=> b!3651826 (=> res!1481622 e!2260960)))

(declare-fun contains!7602 (List!38637 Rule!11336) Bool)

(assert (=> b!3651826 (= res!1481622 (not (contains!7602 rules!3307 (rule!8568 (_1!22324 lt!1267125)))))))

(declare-fun res!1481636 () Bool)

(assert (=> start!341518 (=> (not res!1481636) (not e!2260948))))

(get-info :version)

(assert (=> start!341518 (= res!1481636 ((_ is Lexer!5355) thiss!23823))))

(assert (=> start!341518 e!2260948))

(declare-fun e!2260969 () Bool)

(assert (=> start!341518 e!2260969))

(declare-fun e!2260968 () Bool)

(assert (=> start!341518 e!2260968))

(assert (=> start!341518 true))

(declare-fun inv!51965 (Token!10902) Bool)

(assert (=> start!341518 (and (inv!51965 token!511) e!2260958)))

(declare-fun e!2260944 () Bool)

(assert (=> start!341518 e!2260944))

(assert (=> start!341518 e!2260952))

(declare-fun b!3651827 () Bool)

(assert (=> b!3651827 (= e!2260945 e!2260965)))

(declare-fun c!631174 () Bool)

(assert (=> b!3651827 (= c!631174 (not (isSeparator!5768 (rule!8568 (_1!22324 lt!1267125)))))))

(assert (=> b!3651828 (= e!2260957 (and tp!1113186 tp!1113191))))

(declare-fun b!3651829 () Bool)

(declare-fun res!1481625 () Bool)

(declare-fun e!2260951 () Bool)

(assert (=> b!3651829 (=> (not res!1481625) (not e!2260951))))

(declare-fun lt!1267133 () tuple2!38380)

(assert (=> b!3651829 (= res!1481625 (isEmpty!22824 (_2!22324 lt!1267133)))))

(declare-fun b!3651830 () Bool)

(declare-fun e!2260954 () Bool)

(declare-fun e!2260972 () Bool)

(declare-fun tp!1113185 () Bool)

(assert (=> b!3651830 (= e!2260972 (and tp!1113185 (inv!51961 (tag!6534 (h!43933 rules!3307))) (inv!51964 (transformation!5768 (h!43933 rules!3307))) e!2260954))))

(assert (=> b!3651831 (= e!2260954 (and tp!1113179 tp!1113192))))

(declare-fun b!3651832 () Bool)

(declare-fun Unit!55533 () Unit!55530)

(assert (=> b!3651832 (= e!2260970 Unit!55533)))

(declare-fun lt!1267128 () Unit!55530)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!716 (Regex!10527 List!38636 C!21240) Unit!55530)

(assert (=> b!3651832 (= lt!1267128 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!716 (regex!5768 rule!403) lt!1267145 lt!1267151))))

(assert (=> b!3651832 false))

(declare-fun bm!263924 () Bool)

(assert (=> bm!263924 (= call!263929 (contains!7601 call!263930 lt!1267151))))

(declare-fun bm!263925 () Bool)

(assert (=> bm!263925 (= call!263928 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!716 (regex!5768 (rule!8568 (_1!22324 lt!1267125))) lt!1267146 lt!1267151))))

(declare-fun b!3651833 () Bool)

(declare-fun res!1481626 () Bool)

(assert (=> b!3651833 (=> (not res!1481626) (not e!2260948))))

(declare-fun rulesInvariant!4754 (LexerInterface!5357 List!38637) Bool)

(assert (=> b!3651833 (= res!1481626 (rulesInvariant!4754 thiss!23823 rules!3307))))

(declare-fun b!3651834 () Bool)

(declare-fun Unit!55534 () Unit!55530)

(assert (=> b!3651834 (= e!2260970 Unit!55534)))

(declare-fun b!3651835 () Bool)

(declare-fun e!2260971 () Unit!55530)

(assert (=> b!3651835 (= e!2260945 e!2260971)))

(declare-fun c!631176 () Bool)

(assert (=> b!3651835 (= c!631176 (isSeparator!5768 (rule!8568 (_1!22324 lt!1267125))))))

(declare-fun b!3651836 () Bool)

(declare-fun e!2260961 () Bool)

(assert (=> b!3651836 (= e!2260961 e!2260967)))

(declare-fun res!1481633 () Bool)

(assert (=> b!3651836 (=> res!1481633 e!2260967)))

(declare-fun lt!1267141 () Option!8164)

(declare-fun lt!1267158 () List!38636)

(assert (=> b!3651836 (= res!1481633 (or (not (= lt!1267158 (_2!22324 lt!1267125))) (not (= lt!1267141 (Some!8163 (tuple2!38381 (_1!22324 lt!1267125) lt!1267158))))))))

(assert (=> b!3651836 (= (_2!22324 lt!1267125) lt!1267158)))

(declare-fun lt!1267137 () Unit!55530)

(declare-fun lt!1267149 () List!38636)

(declare-fun lemmaSamePrefixThenSameSuffix!1458 (List!38636 List!38636 List!38636 List!38636 List!38636) Unit!55530)

(assert (=> b!3651836 (= lt!1267137 (lemmaSamePrefixThenSameSuffix!1458 lt!1267146 (_2!22324 lt!1267125) lt!1267146 lt!1267158 lt!1267149))))

(declare-fun getSuffix!1684 (List!38636 List!38636) List!38636)

(assert (=> b!3651836 (= lt!1267158 (getSuffix!1684 lt!1267149 lt!1267146))))

(declare-fun lt!1267129 () TokenValue!5998)

(declare-fun lt!1267159 () Int)

(assert (=> b!3651836 (= lt!1267141 (Some!8163 (tuple2!38381 (Token!10903 lt!1267129 (rule!8568 (_1!22324 lt!1267125)) lt!1267159 lt!1267146) (_2!22324 lt!1267125))))))

(declare-fun maxPrefixOneRule!2029 (LexerInterface!5357 Rule!11336 List!38636) Option!8164)

(assert (=> b!3651836 (= lt!1267141 (maxPrefixOneRule!2029 thiss!23823 (rule!8568 (_1!22324 lt!1267125)) lt!1267149))))

(declare-fun size!29411 (List!38636) Int)

(assert (=> b!3651836 (= lt!1267159 (size!29411 lt!1267146))))

(declare-fun apply!9270 (TokenValueInjection!11424 BalanceConc!23152) TokenValue!5998)

(declare-fun seqFromList!4317 (List!38636) BalanceConc!23152)

(assert (=> b!3651836 (= lt!1267129 (apply!9270 (transformation!5768 (rule!8568 (_1!22324 lt!1267125))) (seqFromList!4317 lt!1267146)))))

(declare-fun lt!1267142 () Unit!55530)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1085 (LexerInterface!5357 List!38637 List!38636 List!38636 List!38636 Rule!11336) Unit!55530)

(assert (=> b!3651836 (= lt!1267142 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1085 thiss!23823 rules!3307 lt!1267146 lt!1267149 (_2!22324 lt!1267125) (rule!8568 (_1!22324 lt!1267125))))))

(declare-fun b!3651837 () Bool)

(declare-fun tp!1113180 () Bool)

(declare-fun e!2260955 () Bool)

(assert (=> b!3651837 (= e!2260944 (and tp!1113180 (inv!51961 (tag!6534 rule!403)) (inv!51964 (transformation!5768 rule!403)) e!2260955))))

(declare-fun b!3651838 () Bool)

(assert (=> b!3651838 false))

(declare-fun lt!1267154 () Unit!55530)

(assert (=> b!3651838 (= lt!1267154 call!263928)))

(assert (=> b!3651838 (not call!263929)))

(declare-fun lt!1267127 () Unit!55530)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!296 (LexerInterface!5357 List!38637 List!38637 Rule!11336 Rule!11336 C!21240) Unit!55530)

(assert (=> b!3651838 (= lt!1267127 (lemmaSepRuleNotContainsCharContainedInANonSepRule!296 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8568 (_1!22324 lt!1267125)) lt!1267151))))

(declare-fun Unit!55535 () Unit!55530)

(assert (=> b!3651838 (= e!2260971 Unit!55535)))

(declare-fun b!3651839 () Bool)

(declare-fun Unit!55536 () Unit!55530)

(assert (=> b!3651839 (= e!2260965 Unit!55536)))

(declare-fun b!3651840 () Bool)

(declare-fun res!1481634 () Bool)

(assert (=> b!3651840 (=> (not res!1481634) (not e!2260948))))

(declare-fun isEmpty!22825 (List!38637) Bool)

(assert (=> b!3651840 (= res!1481634 (not (isEmpty!22825 rules!3307)))))

(declare-fun b!3651841 () Bool)

(assert (=> b!3651841 (= e!2260949 e!2260961)))

(declare-fun res!1481630 () Bool)

(assert (=> b!3651841 (=> res!1481630 e!2260961)))

(declare-fun lt!1267139 () Option!8164)

(declare-fun lt!1267135 () TokenValue!5998)

(assert (=> b!3651841 (= res!1481630 (not (= lt!1267139 (Some!8163 (tuple2!38381 (Token!10903 lt!1267135 (rule!8568 (_1!22324 lt!1267125)) lt!1267155 lt!1267146) (_2!22324 lt!1267125))))))))

(declare-fun lt!1267132 () BalanceConc!23152)

(assert (=> b!3651841 (= lt!1267155 (size!29410 lt!1267132))))

(assert (=> b!3651841 (= lt!1267135 (apply!9270 (transformation!5768 (rule!8568 (_1!22324 lt!1267125))) lt!1267132))))

(declare-fun lt!1267131 () Unit!55530)

(declare-fun lemmaCharactersSize!813 (Token!10902) Unit!55530)

(assert (=> b!3651841 (= lt!1267131 (lemmaCharactersSize!813 (_1!22324 lt!1267125)))))

(declare-fun lt!1267153 () Unit!55530)

(declare-fun lemmaEqSameImage!951 (TokenValueInjection!11424 BalanceConc!23152 BalanceConc!23152) Unit!55530)

(assert (=> b!3651841 (= lt!1267153 (lemmaEqSameImage!951 (transformation!5768 (rule!8568 (_1!22324 lt!1267125))) lt!1267132 (seqFromList!4317 (originalCharacters!6482 (_1!22324 lt!1267125)))))))

(declare-fun lt!1267160 () Unit!55530)

(declare-fun lemmaSemiInverse!1517 (TokenValueInjection!11424 BalanceConc!23152) Unit!55530)

(assert (=> b!3651841 (= lt!1267160 (lemmaSemiInverse!1517 (transformation!5768 (rule!8568 (_1!22324 lt!1267125))) lt!1267132))))

(declare-fun b!3651842 () Bool)

(declare-fun res!1481631 () Bool)

(assert (=> b!3651842 (=> res!1481631 e!2260953)))

(assert (=> b!3651842 (= res!1481631 (not (contains!7601 (usedCharacters!980 (regex!5768 anOtherTypeRule!33)) lt!1267157)))))

(declare-fun b!3651843 () Bool)

(assert (=> b!3651843 (= e!2260951 (not e!2260946))))

(declare-fun res!1481617 () Bool)

(assert (=> b!3651843 (=> res!1481617 e!2260946)))

(assert (=> b!3651843 (= res!1481617 (not (matchR!5096 (regex!5768 rule!403) lt!1267145)))))

(declare-fun ruleValid!2032 (LexerInterface!5357 Rule!11336) Bool)

(assert (=> b!3651843 (ruleValid!2032 thiss!23823 rule!403)))

(declare-fun lt!1267150 () Unit!55530)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1186 (LexerInterface!5357 Rule!11336 List!38637) Unit!55530)

(assert (=> b!3651843 (= lt!1267150 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1186 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3651844 () Bool)

(declare-fun res!1481621 () Bool)

(assert (=> b!3651844 (=> (not res!1481621) (not e!2260948))))

(assert (=> b!3651844 (= res!1481621 (contains!7602 rules!3307 rule!403))))

(declare-fun b!3651845 () Bool)

(declare-fun res!1481613 () Bool)

(assert (=> b!3651845 (=> (not res!1481613) (not e!2260948))))

(assert (=> b!3651845 (= res!1481613 (contains!7602 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3651846 () Bool)

(assert (=> b!3651846 (= e!2260964 e!2260960)))

(declare-fun res!1481624 () Bool)

(assert (=> b!3651846 (=> res!1481624 e!2260960)))

(assert (=> b!3651846 (= res!1481624 (isSeparator!5768 rule!403))))

(assert (=> b!3651846 (contains!7601 lt!1267146 lt!1267157)))

(declare-fun lt!1267130 () Unit!55530)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!76 (List!38636 List!38636 List!38636 List!38636) Unit!55530)

(assert (=> b!3651846 (= lt!1267130 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!76 lt!1267145 suffix!1395 lt!1267146 lt!1267149))))

(declare-fun b!3651847 () Bool)

(declare-fun Unit!55537 () Unit!55530)

(assert (=> b!3651847 (= e!2260971 Unit!55537)))

(declare-fun b!3651848 () Bool)

(declare-fun tp_is_empty!18137 () Bool)

(declare-fun tp!1113187 () Bool)

(assert (=> b!3651848 (= e!2260968 (and tp_is_empty!18137 tp!1113187))))

(declare-fun b!3651849 () Bool)

(declare-fun res!1481627 () Bool)

(assert (=> b!3651849 (=> (not res!1481627) (not e!2260948))))

(assert (=> b!3651849 (= res!1481627 (not (= (isSeparator!5768 anOtherTypeRule!33) (isSeparator!5768 rule!403))))))

(declare-fun b!3651850 () Bool)

(assert (=> b!3651850 (= e!2260953 e!2260949)))

(declare-fun res!1481629 () Bool)

(assert (=> b!3651850 (=> res!1481629 e!2260949)))

(declare-fun isPrefix!3131 (List!38636 List!38636) Bool)

(assert (=> b!3651850 (= res!1481629 (not (isPrefix!3131 lt!1267146 lt!1267149)))))

(declare-fun ++!9584 (List!38636 List!38636) List!38636)

(assert (=> b!3651850 (isPrefix!3131 lt!1267146 (++!9584 lt!1267146 (_2!22324 lt!1267125)))))

(declare-fun lt!1267147 () Unit!55530)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2050 (List!38636 List!38636) Unit!55530)

(assert (=> b!3651850 (= lt!1267147 (lemmaConcatTwoListThenFirstIsPrefix!2050 lt!1267146 (_2!22324 lt!1267125)))))

(assert (=> b!3651850 (= lt!1267146 (list!14274 lt!1267132))))

(assert (=> b!3651850 (= lt!1267132 (charsOf!3782 (_1!22324 lt!1267125)))))

(declare-fun e!2260950 () Bool)

(assert (=> b!3651850 e!2260950))

(declare-fun res!1481632 () Bool)

(assert (=> b!3651850 (=> (not res!1481632) (not e!2260950))))

(declare-datatypes ((Option!8165 0))(
  ( (None!8164) (Some!8164 (v!38028 Rule!11336)) )
))
(declare-fun lt!1267148 () Option!8165)

(declare-fun isDefined!6397 (Option!8165) Bool)

(assert (=> b!3651850 (= res!1481632 (isDefined!6397 lt!1267148))))

(declare-fun getRuleFromTag!1372 (LexerInterface!5357 List!38637 String!43324) Option!8165)

(assert (=> b!3651850 (= lt!1267148 (getRuleFromTag!1372 thiss!23823 rules!3307 (tag!6534 (rule!8568 (_1!22324 lt!1267125)))))))

(declare-fun lt!1267156 () Unit!55530)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1372 (LexerInterface!5357 List!38637 List!38636 Token!10902) Unit!55530)

(assert (=> b!3651850 (= lt!1267156 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1372 thiss!23823 rules!3307 lt!1267149 (_1!22324 lt!1267125)))))

(declare-fun get!12658 (Option!8164) tuple2!38380)

(assert (=> b!3651850 (= lt!1267125 (get!12658 lt!1267139))))

(declare-fun lt!1267143 () Unit!55530)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1035 (LexerInterface!5357 List!38637 List!38636 List!38636) Unit!55530)

(assert (=> b!3651850 (= lt!1267143 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1035 thiss!23823 rules!3307 lt!1267145 suffix!1395))))

(assert (=> b!3651850 (= lt!1267139 (maxPrefix!2891 thiss!23823 rules!3307 lt!1267149))))

(assert (=> b!3651850 (isPrefix!3131 lt!1267145 lt!1267149)))

(declare-fun lt!1267144 () Unit!55530)

(assert (=> b!3651850 (= lt!1267144 (lemmaConcatTwoListThenFirstIsPrefix!2050 lt!1267145 suffix!1395))))

(assert (=> b!3651850 (= lt!1267149 (++!9584 lt!1267145 suffix!1395))))

(declare-fun b!3651851 () Bool)

(declare-fun res!1481615 () Bool)

(assert (=> b!3651851 (=> res!1481615 e!2260953)))

(declare-fun sepAndNonSepRulesDisjointChars!1936 (List!38637 List!38637) Bool)

(assert (=> b!3651851 (= res!1481615 (not (sepAndNonSepRulesDisjointChars!1936 rules!3307 rules!3307)))))

(declare-fun b!3651852 () Bool)

(declare-fun e!2260956 () Bool)

(assert (=> b!3651852 (= e!2260950 e!2260956)))

(declare-fun res!1481628 () Bool)

(assert (=> b!3651852 (=> (not res!1481628) (not e!2260956))))

(declare-fun lt!1267124 () Rule!11336)

(assert (=> b!3651852 (= res!1481628 (matchR!5096 (regex!5768 lt!1267124) (list!14274 (charsOf!3782 (_1!22324 lt!1267125)))))))

(declare-fun get!12659 (Option!8165) Rule!11336)

(assert (=> b!3651852 (= lt!1267124 (get!12659 lt!1267148))))

(declare-fun b!3651853 () Bool)

(assert (=> b!3651853 (= e!2260956 (= (rule!8568 (_1!22324 lt!1267125)) lt!1267124))))

(assert (=> b!3651854 (= e!2260959 (and tp!1113190 tp!1113184))))

(assert (=> b!3651855 (= e!2260955 (and tp!1113188 tp!1113178))))

(declare-fun b!3651856 () Bool)

(declare-fun tp!1113181 () Bool)

(assert (=> b!3651856 (= e!2260969 (and e!2260972 tp!1113181))))

(declare-fun b!3651857 () Bool)

(assert (=> b!3651857 (= e!2260943 e!2260951)))

(declare-fun res!1481616 () Bool)

(assert (=> b!3651857 (=> (not res!1481616) (not e!2260951))))

(assert (=> b!3651857 (= res!1481616 (= (_1!22324 lt!1267133) token!511))))

(assert (=> b!3651857 (= lt!1267133 (get!12658 lt!1267126))))

(declare-fun b!3651858 () Bool)

(declare-fun res!1481635 () Bool)

(assert (=> b!3651858 (=> (not res!1481635) (not e!2260951))))

(assert (=> b!3651858 (= res!1481635 (= (rule!8568 token!511) rule!403))))

(assert (= (and start!341518 res!1481636) b!3651840))

(assert (= (and b!3651840 res!1481634) b!3651833))

(assert (= (and b!3651833 res!1481626) b!3651844))

(assert (= (and b!3651844 res!1481621) b!3651845))

(assert (= (and b!3651845 res!1481613) b!3651849))

(assert (= (and b!3651849 res!1481627) b!3651822))

(assert (= (and b!3651822 res!1481620) b!3651857))

(assert (= (and b!3651857 res!1481616) b!3651829))

(assert (= (and b!3651829 res!1481625) b!3651858))

(assert (= (and b!3651858 res!1481635) b!3651843))

(assert (= (and b!3651843 (not res!1481617)) b!3651823))

(assert (= (and b!3651823 (not res!1481614)) b!3651821))

(assert (= (and b!3651821 (not res!1481618)) b!3651842))

(assert (= (and b!3651842 (not res!1481631)) b!3651851))

(assert (= (and b!3651851 (not res!1481615)) b!3651850))

(assert (= (and b!3651850 res!1481632) b!3651852))

(assert (= (and b!3651852 res!1481628) b!3651853))

(assert (= (and b!3651850 (not res!1481629)) b!3651825))

(assert (= (and b!3651825 (not res!1481623)) b!3651841))

(assert (= (and b!3651841 (not res!1481630)) b!3651836))

(assert (= (and b!3651836 (not res!1481633)) b!3651820))

(assert (= (and b!3651820 c!631177) b!3651832))

(assert (= (and b!3651820 (not c!631177)) b!3651834))

(assert (= (and b!3651820 c!631175) b!3651827))

(assert (= (and b!3651820 (not c!631175)) b!3651835))

(assert (= (and b!3651827 c!631174) b!3651824))

(assert (= (and b!3651827 (not c!631174)) b!3651839))

(assert (= (and b!3651835 c!631176) b!3651838))

(assert (= (and b!3651835 (not c!631176)) b!3651847))

(assert (= (or b!3651824 b!3651838) bm!263925))

(assert (= (or b!3651824 b!3651838) bm!263923))

(assert (= (or b!3651824 b!3651838) bm!263924))

(assert (= (and b!3651820 (not res!1481619)) b!3651846))

(assert (= (and b!3651846 (not res!1481624)) b!3651826))

(assert (= (and b!3651826 (not res!1481622)) b!3651818))

(assert (= b!3651830 b!3651831))

(assert (= b!3651856 b!3651830))

(assert (= (and start!341518 ((_ is Cons!38513) rules!3307)) b!3651856))

(assert (= (and start!341518 ((_ is Cons!38512) suffix!1395)) b!3651848))

(assert (= b!3651816 b!3651828))

(assert (= b!3651817 b!3651816))

(assert (= start!341518 b!3651817))

(assert (= b!3651837 b!3651855))

(assert (= start!341518 b!3651837))

(assert (= b!3651819 b!3651854))

(assert (= start!341518 b!3651819))

(declare-fun m!4156561 () Bool)

(assert (=> b!3651820 m!4156561))

(declare-fun m!4156563 () Bool)

(assert (=> b!3651820 m!4156563))

(declare-fun m!4156565 () Bool)

(assert (=> b!3651820 m!4156565))

(declare-fun m!4156567 () Bool)

(assert (=> b!3651840 m!4156567))

(declare-fun m!4156569 () Bool)

(assert (=> b!3651816 m!4156569))

(declare-fun m!4156571 () Bool)

(assert (=> b!3651816 m!4156571))

(declare-fun m!4156573 () Bool)

(assert (=> b!3651832 m!4156573))

(declare-fun m!4156575 () Bool)

(assert (=> b!3651823 m!4156575))

(declare-fun m!4156577 () Bool)

(assert (=> bm!263925 m!4156577))

(declare-fun m!4156579 () Bool)

(assert (=> b!3651846 m!4156579))

(declare-fun m!4156581 () Bool)

(assert (=> b!3651846 m!4156581))

(declare-fun m!4156583 () Bool)

(assert (=> b!3651857 m!4156583))

(declare-fun m!4156585 () Bool)

(assert (=> b!3651845 m!4156585))

(declare-fun m!4156587 () Bool)

(assert (=> b!3651842 m!4156587))

(assert (=> b!3651842 m!4156587))

(declare-fun m!4156589 () Bool)

(assert (=> b!3651842 m!4156589))

(declare-fun m!4156591 () Bool)

(assert (=> b!3651850 m!4156591))

(declare-fun m!4156593 () Bool)

(assert (=> b!3651850 m!4156593))

(declare-fun m!4156595 () Bool)

(assert (=> b!3651850 m!4156595))

(declare-fun m!4156597 () Bool)

(assert (=> b!3651850 m!4156597))

(declare-fun m!4156599 () Bool)

(assert (=> b!3651850 m!4156599))

(declare-fun m!4156601 () Bool)

(assert (=> b!3651850 m!4156601))

(declare-fun m!4156603 () Bool)

(assert (=> b!3651850 m!4156603))

(assert (=> b!3651850 m!4156593))

(declare-fun m!4156605 () Bool)

(assert (=> b!3651850 m!4156605))

(declare-fun m!4156607 () Bool)

(assert (=> b!3651850 m!4156607))

(declare-fun m!4156609 () Bool)

(assert (=> b!3651850 m!4156609))

(declare-fun m!4156611 () Bool)

(assert (=> b!3651850 m!4156611))

(declare-fun m!4156613 () Bool)

(assert (=> b!3651850 m!4156613))

(declare-fun m!4156615 () Bool)

(assert (=> b!3651850 m!4156615))

(declare-fun m!4156617 () Bool)

(assert (=> b!3651850 m!4156617))

(declare-fun m!4156619 () Bool)

(assert (=> b!3651850 m!4156619))

(declare-fun m!4156621 () Bool)

(assert (=> bm!263924 m!4156621))

(declare-fun m!4156623 () Bool)

(assert (=> b!3651817 m!4156623))

(declare-fun m!4156625 () Bool)

(assert (=> b!3651837 m!4156625))

(declare-fun m!4156627 () Bool)

(assert (=> b!3651837 m!4156627))

(declare-fun m!4156629 () Bool)

(assert (=> b!3651851 m!4156629))

(declare-fun m!4156631 () Bool)

(assert (=> b!3651838 m!4156631))

(declare-fun m!4156633 () Bool)

(assert (=> b!3651821 m!4156633))

(declare-fun m!4156635 () Bool)

(assert (=> b!3651821 m!4156635))

(declare-fun m!4156637 () Bool)

(assert (=> b!3651821 m!4156637))

(declare-fun m!4156639 () Bool)

(assert (=> b!3651819 m!4156639))

(declare-fun m!4156641 () Bool)

(assert (=> b!3651819 m!4156641))

(declare-fun m!4156643 () Bool)

(assert (=> start!341518 m!4156643))

(declare-fun m!4156645 () Bool)

(assert (=> b!3651844 m!4156645))

(declare-fun m!4156647 () Bool)

(assert (=> b!3651841 m!4156647))

(assert (=> b!3651841 m!4156647))

(declare-fun m!4156649 () Bool)

(assert (=> b!3651841 m!4156649))

(declare-fun m!4156651 () Bool)

(assert (=> b!3651841 m!4156651))

(declare-fun m!4156653 () Bool)

(assert (=> b!3651841 m!4156653))

(declare-fun m!4156655 () Bool)

(assert (=> b!3651841 m!4156655))

(declare-fun m!4156657 () Bool)

(assert (=> b!3651841 m!4156657))

(declare-fun m!4156659 () Bool)

(assert (=> b!3651843 m!4156659))

(declare-fun m!4156661 () Bool)

(assert (=> b!3651843 m!4156661))

(declare-fun m!4156663 () Bool)

(assert (=> b!3651843 m!4156663))

(declare-fun m!4156665 () Bool)

(assert (=> bm!263923 m!4156665))

(declare-fun m!4156667 () Bool)

(assert (=> b!3651826 m!4156667))

(declare-fun m!4156669 () Bool)

(assert (=> b!3651822 m!4156669))

(declare-fun m!4156671 () Bool)

(assert (=> b!3651822 m!4156671))

(declare-fun m!4156673 () Bool)

(assert (=> b!3651822 m!4156673))

(declare-fun m!4156675 () Bool)

(assert (=> b!3651822 m!4156675))

(declare-fun m!4156677 () Bool)

(assert (=> b!3651833 m!4156677))

(declare-fun m!4156679 () Bool)

(assert (=> b!3651830 m!4156679))

(declare-fun m!4156681 () Bool)

(assert (=> b!3651830 m!4156681))

(declare-fun m!4156683 () Bool)

(assert (=> b!3651825 m!4156683))

(declare-fun m!4156685 () Bool)

(assert (=> b!3651829 m!4156685))

(declare-fun m!4156687 () Bool)

(assert (=> b!3651836 m!4156687))

(declare-fun m!4156689 () Bool)

(assert (=> b!3651836 m!4156689))

(declare-fun m!4156691 () Bool)

(assert (=> b!3651836 m!4156691))

(declare-fun m!4156693 () Bool)

(assert (=> b!3651836 m!4156693))

(assert (=> b!3651836 m!4156691))

(declare-fun m!4156695 () Bool)

(assert (=> b!3651836 m!4156695))

(declare-fun m!4156697 () Bool)

(assert (=> b!3651836 m!4156697))

(declare-fun m!4156699 () Bool)

(assert (=> b!3651836 m!4156699))

(declare-fun m!4156701 () Bool)

(assert (=> b!3651824 m!4156701))

(assert (=> b!3651852 m!4156619))

(assert (=> b!3651852 m!4156619))

(declare-fun m!4156703 () Bool)

(assert (=> b!3651852 m!4156703))

(assert (=> b!3651852 m!4156703))

(declare-fun m!4156705 () Bool)

(assert (=> b!3651852 m!4156705))

(declare-fun m!4156707 () Bool)

(assert (=> b!3651852 m!4156707))

(check-sat (not b!3651852) (not b_next!96785) (not b!3651840) (not b!3651832) (not b!3651842) b_and!270211 b_and!270207 (not b_next!96789) (not b!3651823) (not b_next!96787) (not b!3651816) (not b_next!96799) (not b!3651846) b_and!270217 (not b!3651857) b_and!270213 b_and!270203 (not b_next!96795) (not b!3651850) (not start!341518) b_and!270209 (not b!3651833) (not b!3651829) (not b!3651822) (not b!3651824) (not b!3651830) (not b_next!96793) (not b!3651837) (not bm!263924) b_and!270215 (not b!3651844) (not b!3651819) (not b_next!96797) (not b!3651825) b_and!270205 tp_is_empty!18137 (not bm!263923) (not b!3651841) (not b!3651856) (not b!3651836) (not bm!263925) (not b!3651845) (not b!3651843) (not b_next!96791) (not b!3651848) (not b!3651851) (not b!3651826) (not b!3651838) (not b!3651817) (not b!3651820) (not b!3651821))
(check-sat (not b_next!96787) (not b_next!96799) (not b_next!96795) (not b_next!96785) b_and!270209 (not b_next!96793) b_and!270211 b_and!270207 b_and!270215 (not b_next!96797) (not b_next!96789) b_and!270205 (not b_next!96791) b_and!270217 b_and!270213 b_and!270203)

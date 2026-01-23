; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!332666 () Bool)

(assert start!332666)

(declare-fun b!3586039 () Bool)

(declare-fun b_free!92353 () Bool)

(declare-fun b_next!93057 () Bool)

(assert (=> b!3586039 (= b_free!92353 (not b_next!93057))))

(declare-fun tp!1097945 () Bool)

(declare-fun b_and!258991 () Bool)

(assert (=> b!3586039 (= tp!1097945 b_and!258991)))

(declare-fun b_free!92355 () Bool)

(declare-fun b_next!93059 () Bool)

(assert (=> b!3586039 (= b_free!92355 (not b_next!93059))))

(declare-fun tp!1097938 () Bool)

(declare-fun b_and!258993 () Bool)

(assert (=> b!3586039 (= tp!1097938 b_and!258993)))

(declare-fun b!3586041 () Bool)

(declare-fun b_free!92357 () Bool)

(declare-fun b_next!93061 () Bool)

(assert (=> b!3586041 (= b_free!92357 (not b_next!93061))))

(declare-fun tp!1097952 () Bool)

(declare-fun b_and!258995 () Bool)

(assert (=> b!3586041 (= tp!1097952 b_and!258995)))

(declare-fun b_free!92359 () Bool)

(declare-fun b_next!93063 () Bool)

(assert (=> b!3586041 (= b_free!92359 (not b_next!93063))))

(declare-fun tp!1097948 () Bool)

(declare-fun b_and!258997 () Bool)

(assert (=> b!3586041 (= tp!1097948 b_and!258997)))

(declare-fun b!3586048 () Bool)

(declare-fun b_free!92361 () Bool)

(declare-fun b_next!93065 () Bool)

(assert (=> b!3586048 (= b_free!92361 (not b_next!93065))))

(declare-fun tp!1097942 () Bool)

(declare-fun b_and!258999 () Bool)

(assert (=> b!3586048 (= tp!1097942 b_and!258999)))

(declare-fun b_free!92363 () Bool)

(declare-fun b_next!93067 () Bool)

(assert (=> b!3586048 (= b_free!92363 (not b_next!93067))))

(declare-fun tp!1097947 () Bool)

(declare-fun b_and!259001 () Bool)

(assert (=> b!3586048 (= tp!1097947 b_and!259001)))

(declare-fun b!3586042 () Bool)

(declare-fun b_free!92365 () Bool)

(declare-fun b_next!93069 () Bool)

(assert (=> b!3586042 (= b_free!92365 (not b_next!93069))))

(declare-fun tp!1097944 () Bool)

(declare-fun b_and!259003 () Bool)

(assert (=> b!3586042 (= tp!1097944 b_and!259003)))

(declare-fun b_free!92367 () Bool)

(declare-fun b_next!93071 () Bool)

(assert (=> b!3586042 (= b_free!92367 (not b_next!93071))))

(declare-fun tp!1097946 () Bool)

(declare-fun b_and!259005 () Bool)

(assert (=> b!3586042 (= tp!1097946 b_and!259005)))

(declare-fun b!3586036 () Bool)

(declare-fun e!2218868 () Bool)

(declare-fun e!2218851 () Bool)

(assert (=> b!3586036 (= e!2218868 e!2218851)))

(declare-fun res!1447224 () Bool)

(assert (=> b!3586036 (=> (not res!1447224) (not e!2218851))))

(declare-datatypes ((List!37817 0))(
  ( (Nil!37693) (Cons!37693 (h!43113 (_ BitVec 16)) (t!290590 List!37817)) )
))
(declare-datatypes ((TokenValue!5792 0))(
  ( (FloatLiteralValue!11584 (text!40989 List!37817)) (TokenValueExt!5791 (__x!23801 Int)) (Broken!28960 (value!178951 List!37817)) (Object!5915) (End!5792) (Def!5792) (Underscore!5792) (Match!5792) (Else!5792) (Error!5792) (Case!5792) (If!5792) (Extends!5792) (Abstract!5792) (Class!5792) (Val!5792) (DelimiterValue!11584 (del!5852 List!37817)) (KeywordValue!5798 (value!178952 List!37817)) (CommentValue!11584 (value!178953 List!37817)) (WhitespaceValue!11584 (value!178954 List!37817)) (IndentationValue!5792 (value!178955 List!37817)) (String!42293) (Int32!5792) (Broken!28961 (value!178956 List!37817)) (Boolean!5793) (Unit!53690) (OperatorValue!5795 (op!5852 List!37817)) (IdentifierValue!11584 (value!178957 List!37817)) (IdentifierValue!11585 (value!178958 List!37817)) (WhitespaceValue!11585 (value!178959 List!37817)) (True!11584) (False!11584) (Broken!28962 (value!178960 List!37817)) (Broken!28963 (value!178961 List!37817)) (True!11585) (RightBrace!5792) (RightBracket!5792) (Colon!5792) (Null!5792) (Comma!5792) (LeftBracket!5792) (False!11585) (LeftBrace!5792) (ImaginaryLiteralValue!5792 (text!40990 List!37817)) (StringLiteralValue!17376 (value!178962 List!37817)) (EOFValue!5792 (value!178963 List!37817)) (IdentValue!5792 (value!178964 List!37817)) (DelimiterValue!11585 (value!178965 List!37817)) (DedentValue!5792 (value!178966 List!37817)) (NewLineValue!5792 (value!178967 List!37817)) (IntegerValue!17376 (value!178968 (_ BitVec 32)) (text!40991 List!37817)) (IntegerValue!17377 (value!178969 Int) (text!40992 List!37817)) (Times!5792) (Or!5792) (Equal!5792) (Minus!5792) (Broken!28964 (value!178970 List!37817)) (And!5792) (Div!5792) (LessEqual!5792) (Mod!5792) (Concat!16113) (Not!5792) (Plus!5792) (SpaceValue!5792 (value!178971 List!37817)) (IntegerValue!17378 (value!178972 Int) (text!40993 List!37817)) (StringLiteralValue!17377 (text!40994 List!37817)) (FloatLiteralValue!11585 (text!40995 List!37817)) (BytesLiteralValue!5792 (value!178973 List!37817)) (CommentValue!11585 (value!178974 List!37817)) (StringLiteralValue!17378 (value!178975 List!37817)) (ErrorTokenValue!5792 (msg!5853 List!37817)) )
))
(declare-datatypes ((C!20828 0))(
  ( (C!20829 (val!12462 Int)) )
))
(declare-datatypes ((Regex!10321 0))(
  ( (ElementMatch!10321 (c!621150 C!20828)) (Concat!16114 (regOne!21154 Regex!10321) (regTwo!21154 Regex!10321)) (EmptyExpr!10321) (Star!10321 (reg!10650 Regex!10321)) (EmptyLang!10321) (Union!10321 (regOne!21155 Regex!10321) (regTwo!21155 Regex!10321)) )
))
(declare-datatypes ((String!42294 0))(
  ( (String!42295 (value!178976 String)) )
))
(declare-datatypes ((List!37818 0))(
  ( (Nil!37694) (Cons!37694 (h!43114 C!20828) (t!290591 List!37818)) )
))
(declare-datatypes ((IArray!22931 0))(
  ( (IArray!22932 (innerList!11523 List!37818)) )
))
(declare-datatypes ((Conc!11463 0))(
  ( (Node!11463 (left!29458 Conc!11463) (right!29788 Conc!11463) (csize!23156 Int) (cheight!11674 Int)) (Leaf!17855 (xs!14665 IArray!22931) (csize!23157 Int)) (Empty!11463) )
))
(declare-datatypes ((BalanceConc!22540 0))(
  ( (BalanceConc!22541 (c!621151 Conc!11463)) )
))
(declare-datatypes ((TokenValueInjection!11012 0))(
  ( (TokenValueInjection!11013 (toValue!7842 Int) (toChars!7701 Int)) )
))
(declare-datatypes ((Rule!10924 0))(
  ( (Rule!10925 (regex!5562 Regex!10321) (tag!6228 String!42294) (isSeparator!5562 Bool) (transformation!5562 TokenValueInjection!11012)) )
))
(declare-fun lt!1229993 () Rule!10924)

(declare-datatypes ((Token!10490 0))(
  ( (Token!10491 (value!178977 TokenValue!5792) (rule!8276 Rule!10924) (size!28718 Int) (originalCharacters!6276 List!37818)) )
))
(declare-datatypes ((tuple2!37584 0))(
  ( (tuple2!37585 (_1!21926 Token!10490) (_2!21926 List!37818)) )
))
(declare-fun lt!1229991 () tuple2!37584)

(declare-fun matchR!4890 (Regex!10321 List!37818) Bool)

(declare-fun list!13854 (BalanceConc!22540) List!37818)

(declare-fun charsOf!3576 (Token!10490) BalanceConc!22540)

(assert (=> b!3586036 (= res!1447224 (matchR!4890 (regex!5562 lt!1229993) (list!13854 (charsOf!3576 (_1!21926 lt!1229991)))))))

(declare-datatypes ((Option!7754 0))(
  ( (None!7753) (Some!7753 (v!37415 Rule!10924)) )
))
(declare-fun lt!1229999 () Option!7754)

(declare-fun get!12145 (Option!7754) Rule!10924)

(assert (=> b!3586036 (= lt!1229993 (get!12145 lt!1229999))))

(declare-fun b!3586037 () Bool)

(declare-fun e!2218867 () Bool)

(declare-fun e!2218862 () Bool)

(assert (=> b!3586037 (= e!2218867 e!2218862)))

(declare-fun res!1447230 () Bool)

(assert (=> b!3586037 (=> (not res!1447230) (not e!2218862))))

(declare-fun lt!1229996 () tuple2!37584)

(declare-fun token!511 () Token!10490)

(assert (=> b!3586037 (= res!1447230 (= (_1!21926 lt!1229996) token!511))))

(declare-datatypes ((Option!7755 0))(
  ( (None!7754) (Some!7754 (v!37416 tuple2!37584)) )
))
(declare-fun lt!1230000 () Option!7755)

(declare-fun get!12146 (Option!7755) tuple2!37584)

(assert (=> b!3586037 (= lt!1229996 (get!12146 lt!1230000))))

(declare-fun b!3586038 () Bool)

(declare-fun res!1447216 () Bool)

(declare-fun e!2218858 () Bool)

(assert (=> b!3586038 (=> (not res!1447216) (not e!2218858))))

(declare-datatypes ((List!37819 0))(
  ( (Nil!37695) (Cons!37695 (h!43115 Rule!10924) (t!290592 List!37819)) )
))
(declare-fun rules!3307 () List!37819)

(declare-fun anOtherTypeRule!33 () Rule!10924)

(declare-fun contains!7185 (List!37819 Rule!10924) Bool)

(assert (=> b!3586038 (= res!1447216 (contains!7185 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2218873 () Bool)

(assert (=> b!3586039 (= e!2218873 (and tp!1097945 tp!1097938))))

(declare-fun b!3586040 () Bool)

(declare-fun e!2218854 () Bool)

(declare-fun tp_is_empty!17725 () Bool)

(declare-fun tp!1097939 () Bool)

(assert (=> b!3586040 (= e!2218854 (and tp_is_empty!17725 tp!1097939))))

(declare-fun e!2218872 () Bool)

(assert (=> b!3586041 (= e!2218872 (and tp!1097952 tp!1097948))))

(declare-fun tp!1097950 () Bool)

(declare-fun e!2218871 () Bool)

(declare-fun b!3586043 () Bool)

(declare-fun inv!51019 (String!42294) Bool)

(declare-fun inv!51022 (TokenValueInjection!11012) Bool)

(assert (=> b!3586043 (= e!2218871 (and tp!1097950 (inv!51019 (tag!6228 anOtherTypeRule!33)) (inv!51022 (transformation!5562 anOtherTypeRule!33)) e!2218872))))

(declare-fun b!3586044 () Bool)

(assert (=> b!3586044 (= e!2218858 e!2218867)))

(declare-fun res!1447214 () Bool)

(assert (=> b!3586044 (=> (not res!1447214) (not e!2218867))))

(declare-fun isDefined!5986 (Option!7755) Bool)

(assert (=> b!3586044 (= res!1447214 (isDefined!5986 lt!1230000))))

(declare-fun lt!1229992 () List!37818)

(declare-datatypes ((LexerInterface!5151 0))(
  ( (LexerInterfaceExt!5148 (__x!23802 Int)) (Lexer!5149) )
))
(declare-fun thiss!23823 () LexerInterface!5151)

(declare-fun maxPrefix!2685 (LexerInterface!5151 List!37819 List!37818) Option!7755)

(assert (=> b!3586044 (= lt!1230000 (maxPrefix!2685 thiss!23823 rules!3307 lt!1229992))))

(assert (=> b!3586044 (= lt!1229992 (list!13854 (charsOf!3576 token!511)))))

(declare-fun b!3586045 () Bool)

(declare-fun e!2218869 () Bool)

(declare-fun e!2218865 () Bool)

(declare-fun tp!1097943 () Bool)

(assert (=> b!3586045 (= e!2218869 (and e!2218865 tp!1097943))))

(declare-fun e!2218860 () Bool)

(declare-fun b!3586046 () Bool)

(declare-fun rule!403 () Rule!10924)

(declare-fun tp!1097941 () Bool)

(declare-fun e!2218856 () Bool)

(assert (=> b!3586046 (= e!2218856 (and tp!1097941 (inv!51019 (tag!6228 rule!403)) (inv!51022 (transformation!5562 rule!403)) e!2218860))))

(declare-fun b!3586047 () Bool)

(declare-fun res!1447225 () Bool)

(assert (=> b!3586047 (=> (not res!1447225) (not e!2218858))))

(declare-fun isEmpty!22204 (List!37819) Bool)

(assert (=> b!3586047 (= res!1447225 (not (isEmpty!22204 rules!3307)))))

(assert (=> b!3586048 (= e!2218860 (and tp!1097942 tp!1097947))))

(declare-fun tp!1097940 () Bool)

(declare-fun b!3586049 () Bool)

(declare-fun e!2218852 () Bool)

(assert (=> b!3586049 (= e!2218865 (and tp!1097940 (inv!51019 (tag!6228 (h!43115 rules!3307))) (inv!51022 (transformation!5562 (h!43115 rules!3307))) e!2218852))))

(declare-fun b!3586050 () Bool)

(declare-fun res!1447223 () Bool)

(declare-fun e!2218855 () Bool)

(assert (=> b!3586050 (=> res!1447223 e!2218855)))

(declare-fun lt!1230002 () C!20828)

(declare-fun contains!7186 (List!37818 C!20828) Bool)

(declare-fun usedCharacters!776 (Regex!10321) List!37818)

(assert (=> b!3586050 (= res!1447223 (not (contains!7186 (usedCharacters!776 (regex!5562 anOtherTypeRule!33)) lt!1230002)))))

(declare-fun b!3586051 () Bool)

(declare-fun e!2218863 () Bool)

(assert (=> b!3586051 (= e!2218855 e!2218863)))

(declare-fun res!1447222 () Bool)

(assert (=> b!3586051 (=> res!1447222 e!2218863)))

(declare-fun lt!1229997 () List!37818)

(declare-fun lt!1229989 () List!37818)

(declare-fun isPrefix!2925 (List!37818 List!37818) Bool)

(assert (=> b!3586051 (= res!1447222 (not (isPrefix!2925 lt!1229997 lt!1229989)))))

(declare-fun ++!9378 (List!37818 List!37818) List!37818)

(assert (=> b!3586051 (isPrefix!2925 lt!1229997 (++!9378 lt!1229997 (_2!21926 lt!1229991)))))

(declare-datatypes ((Unit!53691 0))(
  ( (Unit!53692) )
))
(declare-fun lt!1229988 () Unit!53691)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1846 (List!37818 List!37818) Unit!53691)

(assert (=> b!3586051 (= lt!1229988 (lemmaConcatTwoListThenFirstIsPrefix!1846 lt!1229997 (_2!21926 lt!1229991)))))

(assert (=> b!3586051 (= lt!1229997 (list!13854 (charsOf!3576 (_1!21926 lt!1229991))))))

(assert (=> b!3586051 e!2218868))

(declare-fun res!1447217 () Bool)

(assert (=> b!3586051 (=> (not res!1447217) (not e!2218868))))

(declare-fun isDefined!5987 (Option!7754) Bool)

(assert (=> b!3586051 (= res!1447217 (isDefined!5987 lt!1229999))))

(declare-fun getRuleFromTag!1168 (LexerInterface!5151 List!37819 String!42294) Option!7754)

(assert (=> b!3586051 (= lt!1229999 (getRuleFromTag!1168 thiss!23823 rules!3307 (tag!6228 (rule!8276 (_1!21926 lt!1229991)))))))

(declare-fun lt!1229994 () Unit!53691)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1168 (LexerInterface!5151 List!37819 List!37818 Token!10490) Unit!53691)

(assert (=> b!3586051 (= lt!1229994 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1168 thiss!23823 rules!3307 lt!1229989 (_1!21926 lt!1229991)))))

(declare-fun lt!1229998 () Option!7755)

(assert (=> b!3586051 (= lt!1229991 (get!12146 lt!1229998))))

(declare-fun suffix!1395 () List!37818)

(declare-fun lt!1229990 () Unit!53691)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!831 (LexerInterface!5151 List!37819 List!37818 List!37818) Unit!53691)

(assert (=> b!3586051 (= lt!1229990 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!831 thiss!23823 rules!3307 lt!1229992 suffix!1395))))

(assert (=> b!3586051 (= lt!1229998 (maxPrefix!2685 thiss!23823 rules!3307 lt!1229989))))

(assert (=> b!3586051 (isPrefix!2925 lt!1229992 lt!1229989)))

(declare-fun lt!1230001 () Unit!53691)

(assert (=> b!3586051 (= lt!1230001 (lemmaConcatTwoListThenFirstIsPrefix!1846 lt!1229992 suffix!1395))))

(assert (=> b!3586051 (= lt!1229989 (++!9378 lt!1229992 suffix!1395))))

(declare-fun e!2218853 () Bool)

(declare-fun tp!1097949 () Bool)

(declare-fun b!3586052 () Bool)

(assert (=> b!3586052 (= e!2218853 (and tp!1097949 (inv!51019 (tag!6228 (rule!8276 token!511))) (inv!51022 (transformation!5562 (rule!8276 token!511))) e!2218873))))

(declare-fun b!3586053 () Bool)

(assert (=> b!3586053 (= e!2218851 (= (rule!8276 (_1!21926 lt!1229991)) lt!1229993))))

(declare-fun b!3586054 () Bool)

(declare-fun e!2218857 () Bool)

(assert (=> b!3586054 (= e!2218862 (not e!2218857))))

(declare-fun res!1447226 () Bool)

(assert (=> b!3586054 (=> res!1447226 e!2218857)))

(assert (=> b!3586054 (= res!1447226 (not (matchR!4890 (regex!5562 rule!403) lt!1229992)))))

(declare-fun ruleValid!1827 (LexerInterface!5151 Rule!10924) Bool)

(assert (=> b!3586054 (ruleValid!1827 thiss!23823 rule!403)))

(declare-fun lt!1229995 () Unit!53691)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!982 (LexerInterface!5151 Rule!10924 List!37819) Unit!53691)

(assert (=> b!3586054 (= lt!1229995 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!982 thiss!23823 rule!403 rules!3307))))

(declare-fun tp!1097951 () Bool)

(declare-fun b!3586055 () Bool)

(declare-fun e!2218864 () Bool)

(declare-fun inv!21 (TokenValue!5792) Bool)

(assert (=> b!3586055 (= e!2218864 (and (inv!21 (value!178977 token!511)) e!2218853 tp!1097951))))

(declare-fun res!1447215 () Bool)

(assert (=> start!332666 (=> (not res!1447215) (not e!2218858))))

(get-info :version)

(assert (=> start!332666 (= res!1447215 ((_ is Lexer!5149) thiss!23823))))

(assert (=> start!332666 e!2218858))

(assert (=> start!332666 e!2218869))

(assert (=> start!332666 e!2218854))

(assert (=> start!332666 true))

(declare-fun inv!51023 (Token!10490) Bool)

(assert (=> start!332666 (and (inv!51023 token!511) e!2218864)))

(assert (=> start!332666 e!2218856))

(assert (=> start!332666 e!2218871))

(assert (=> b!3586042 (= e!2218852 (and tp!1097944 tp!1097946))))

(declare-fun b!3586056 () Bool)

(declare-fun res!1447221 () Bool)

(assert (=> b!3586056 (=> (not res!1447221) (not e!2218858))))

(assert (=> b!3586056 (= res!1447221 (not (= (isSeparator!5562 anOtherTypeRule!33) (isSeparator!5562 rule!403))))))

(declare-fun b!3586057 () Bool)

(declare-fun res!1447227 () Bool)

(assert (=> b!3586057 (=> res!1447227 e!2218857)))

(declare-fun isEmpty!22205 (List!37818) Bool)

(assert (=> b!3586057 (= res!1447227 (isEmpty!22205 suffix!1395))))

(declare-fun b!3586058 () Bool)

(declare-fun res!1447218 () Bool)

(assert (=> b!3586058 (=> res!1447218 e!2218855)))

(declare-fun sepAndNonSepRulesDisjointChars!1732 (List!37819 List!37819) Bool)

(assert (=> b!3586058 (= res!1447218 (not (sepAndNonSepRulesDisjointChars!1732 rules!3307 rules!3307)))))

(declare-fun b!3586059 () Bool)

(declare-fun res!1447220 () Bool)

(assert (=> b!3586059 (=> (not res!1447220) (not e!2218862))))

(assert (=> b!3586059 (= res!1447220 (= (rule!8276 token!511) rule!403))))

(declare-fun b!3586060 () Bool)

(declare-fun res!1447213 () Bool)

(assert (=> b!3586060 (=> (not res!1447213) (not e!2218858))))

(assert (=> b!3586060 (= res!1447213 (contains!7185 rules!3307 rule!403))))

(declare-fun b!3586061 () Bool)

(declare-fun res!1447229 () Bool)

(assert (=> b!3586061 (=> (not res!1447229) (not e!2218858))))

(declare-fun rulesInvariant!4548 (LexerInterface!5151 List!37819) Bool)

(assert (=> b!3586061 (= res!1447229 (rulesInvariant!4548 thiss!23823 rules!3307))))

(declare-fun b!3586062 () Bool)

(declare-fun res!1447219 () Bool)

(assert (=> b!3586062 (=> (not res!1447219) (not e!2218862))))

(assert (=> b!3586062 (= res!1447219 (isEmpty!22205 (_2!21926 lt!1229996)))))

(declare-fun b!3586063 () Bool)

(declare-fun validRegex!4715 (Regex!10321) Bool)

(assert (=> b!3586063 (= e!2218863 (validRegex!4715 (regex!5562 (rule!8276 (_1!21926 lt!1229991)))))))

(declare-fun b!3586064 () Bool)

(assert (=> b!3586064 (= e!2218857 e!2218855)))

(declare-fun res!1447228 () Bool)

(assert (=> b!3586064 (=> res!1447228 e!2218855)))

(assert (=> b!3586064 (= res!1447228 (contains!7186 (usedCharacters!776 (regex!5562 rule!403)) lt!1230002))))

(declare-fun head!7480 (List!37818) C!20828)

(assert (=> b!3586064 (= lt!1230002 (head!7480 suffix!1395))))

(assert (= (and start!332666 res!1447215) b!3586047))

(assert (= (and b!3586047 res!1447225) b!3586061))

(assert (= (and b!3586061 res!1447229) b!3586060))

(assert (= (and b!3586060 res!1447213) b!3586038))

(assert (= (and b!3586038 res!1447216) b!3586056))

(assert (= (and b!3586056 res!1447221) b!3586044))

(assert (= (and b!3586044 res!1447214) b!3586037))

(assert (= (and b!3586037 res!1447230) b!3586062))

(assert (= (and b!3586062 res!1447219) b!3586059))

(assert (= (and b!3586059 res!1447220) b!3586054))

(assert (= (and b!3586054 (not res!1447226)) b!3586057))

(assert (= (and b!3586057 (not res!1447227)) b!3586064))

(assert (= (and b!3586064 (not res!1447228)) b!3586050))

(assert (= (and b!3586050 (not res!1447223)) b!3586058))

(assert (= (and b!3586058 (not res!1447218)) b!3586051))

(assert (= (and b!3586051 res!1447217) b!3586036))

(assert (= (and b!3586036 res!1447224) b!3586053))

(assert (= (and b!3586051 (not res!1447222)) b!3586063))

(assert (= b!3586049 b!3586042))

(assert (= b!3586045 b!3586049))

(assert (= (and start!332666 ((_ is Cons!37695) rules!3307)) b!3586045))

(assert (= (and start!332666 ((_ is Cons!37694) suffix!1395)) b!3586040))

(assert (= b!3586052 b!3586039))

(assert (= b!3586055 b!3586052))

(assert (= start!332666 b!3586055))

(assert (= b!3586046 b!3586048))

(assert (= start!332666 b!3586046))

(assert (= b!3586043 b!3586041))

(assert (= start!332666 b!3586043))

(declare-fun m!4079281 () Bool)

(assert (=> b!3586063 m!4079281))

(declare-fun m!4079283 () Bool)

(assert (=> b!3586052 m!4079283))

(declare-fun m!4079285 () Bool)

(assert (=> b!3586052 m!4079285))

(declare-fun m!4079287 () Bool)

(assert (=> b!3586043 m!4079287))

(declare-fun m!4079289 () Bool)

(assert (=> b!3586043 m!4079289))

(declare-fun m!4079291 () Bool)

(assert (=> b!3586044 m!4079291))

(declare-fun m!4079293 () Bool)

(assert (=> b!3586044 m!4079293))

(declare-fun m!4079295 () Bool)

(assert (=> b!3586044 m!4079295))

(assert (=> b!3586044 m!4079295))

(declare-fun m!4079297 () Bool)

(assert (=> b!3586044 m!4079297))

(declare-fun m!4079299 () Bool)

(assert (=> b!3586057 m!4079299))

(declare-fun m!4079301 () Bool)

(assert (=> b!3586050 m!4079301))

(assert (=> b!3586050 m!4079301))

(declare-fun m!4079303 () Bool)

(assert (=> b!3586050 m!4079303))

(declare-fun m!4079305 () Bool)

(assert (=> b!3586051 m!4079305))

(declare-fun m!4079307 () Bool)

(assert (=> b!3586051 m!4079307))

(declare-fun m!4079309 () Bool)

(assert (=> b!3586051 m!4079309))

(declare-fun m!4079311 () Bool)

(assert (=> b!3586051 m!4079311))

(declare-fun m!4079313 () Bool)

(assert (=> b!3586051 m!4079313))

(declare-fun m!4079315 () Bool)

(assert (=> b!3586051 m!4079315))

(assert (=> b!3586051 m!4079305))

(declare-fun m!4079317 () Bool)

(assert (=> b!3586051 m!4079317))

(declare-fun m!4079319 () Bool)

(assert (=> b!3586051 m!4079319))

(declare-fun m!4079321 () Bool)

(assert (=> b!3586051 m!4079321))

(assert (=> b!3586051 m!4079319))

(declare-fun m!4079323 () Bool)

(assert (=> b!3586051 m!4079323))

(declare-fun m!4079325 () Bool)

(assert (=> b!3586051 m!4079325))

(declare-fun m!4079327 () Bool)

(assert (=> b!3586051 m!4079327))

(declare-fun m!4079329 () Bool)

(assert (=> b!3586051 m!4079329))

(declare-fun m!4079331 () Bool)

(assert (=> b!3586051 m!4079331))

(declare-fun m!4079333 () Bool)

(assert (=> b!3586051 m!4079333))

(assert (=> b!3586036 m!4079305))

(assert (=> b!3586036 m!4079305))

(assert (=> b!3586036 m!4079317))

(assert (=> b!3586036 m!4079317))

(declare-fun m!4079335 () Bool)

(assert (=> b!3586036 m!4079335))

(declare-fun m!4079337 () Bool)

(assert (=> b!3586036 m!4079337))

(declare-fun m!4079339 () Bool)

(assert (=> start!332666 m!4079339))

(declare-fun m!4079341 () Bool)

(assert (=> b!3586058 m!4079341))

(declare-fun m!4079343 () Bool)

(assert (=> b!3586038 m!4079343))

(declare-fun m!4079345 () Bool)

(assert (=> b!3586049 m!4079345))

(declare-fun m!4079347 () Bool)

(assert (=> b!3586049 m!4079347))

(declare-fun m!4079349 () Bool)

(assert (=> b!3586046 m!4079349))

(declare-fun m!4079351 () Bool)

(assert (=> b!3586046 m!4079351))

(declare-fun m!4079353 () Bool)

(assert (=> b!3586061 m!4079353))

(declare-fun m!4079355 () Bool)

(assert (=> b!3586055 m!4079355))

(declare-fun m!4079357 () Bool)

(assert (=> b!3586060 m!4079357))

(declare-fun m!4079359 () Bool)

(assert (=> b!3586064 m!4079359))

(assert (=> b!3586064 m!4079359))

(declare-fun m!4079361 () Bool)

(assert (=> b!3586064 m!4079361))

(declare-fun m!4079363 () Bool)

(assert (=> b!3586064 m!4079363))

(declare-fun m!4079365 () Bool)

(assert (=> b!3586047 m!4079365))

(declare-fun m!4079367 () Bool)

(assert (=> b!3586062 m!4079367))

(declare-fun m!4079369 () Bool)

(assert (=> b!3586054 m!4079369))

(declare-fun m!4079371 () Bool)

(assert (=> b!3586054 m!4079371))

(declare-fun m!4079373 () Bool)

(assert (=> b!3586054 m!4079373))

(declare-fun m!4079375 () Bool)

(assert (=> b!3586037 m!4079375))

(check-sat (not b!3586047) (not b!3586049) (not b!3586054) (not b!3586058) (not b!3586063) (not b!3586044) (not b_next!93069) b_and!259003 (not b!3586045) (not b!3586040) (not b!3586061) (not b_next!93071) (not b_next!93061) tp_is_empty!17725 b_and!258995 b_and!258991 (not b!3586046) b_and!258999 b_and!258997 b_and!259001 b_and!259005 (not b!3586060) (not b!3586055) (not b!3586036) (not b!3586050) b_and!258993 (not b_next!93057) (not b!3586043) (not b!3586052) (not b!3586038) (not b!3586037) (not start!332666) (not b!3586062) (not b!3586051) (not b!3586064) (not b_next!93067) (not b_next!93063) (not b!3586057) (not b_next!93065) (not b_next!93059))
(check-sat (not b_next!93069) b_and!259003 b_and!259005 (not b_next!93071) (not b_next!93061) b_and!258995 b_and!258991 b_and!258999 b_and!258997 b_and!259001 b_and!258993 (not b_next!93057) (not b_next!93067) (not b_next!93063) (not b_next!93065) (not b_next!93059))
(get-model)

(declare-fun d!1057260 () Bool)

(assert (=> d!1057260 (= (isEmpty!22205 (_2!21926 lt!1229996)) ((_ is Nil!37694) (_2!21926 lt!1229996)))))

(assert (=> b!3586062 d!1057260))

(declare-fun d!1057264 () Bool)

(assert (=> d!1057264 (= (inv!51019 (tag!6228 (rule!8276 token!511))) (= (mod (str.len (value!178976 (tag!6228 (rule!8276 token!511)))) 2) 0))))

(assert (=> b!3586052 d!1057264))

(declare-fun d!1057268 () Bool)

(declare-fun res!1447335 () Bool)

(declare-fun e!2218986 () Bool)

(assert (=> d!1057268 (=> (not res!1447335) (not e!2218986))))

(declare-fun semiInverseModEq!2357 (Int Int) Bool)

(assert (=> d!1057268 (= res!1447335 (semiInverseModEq!2357 (toChars!7701 (transformation!5562 (rule!8276 token!511))) (toValue!7842 (transformation!5562 (rule!8276 token!511)))))))

(assert (=> d!1057268 (= (inv!51022 (transformation!5562 (rule!8276 token!511))) e!2218986)))

(declare-fun b!3586233 () Bool)

(declare-fun equivClasses!2256 (Int Int) Bool)

(assert (=> b!3586233 (= e!2218986 (equivClasses!2256 (toChars!7701 (transformation!5562 (rule!8276 token!511))) (toValue!7842 (transformation!5562 (rule!8276 token!511)))))))

(assert (= (and d!1057268 res!1447335) b!3586233))

(declare-fun m!4079479 () Bool)

(assert (=> d!1057268 m!4079479))

(declare-fun m!4079481 () Bool)

(assert (=> b!3586233 m!4079481))

(assert (=> b!3586052 d!1057268))

(declare-fun bm!259646 () Bool)

(declare-fun call!259651 () Bool)

(declare-fun c!621199 () Bool)

(assert (=> bm!259646 (= call!259651 (validRegex!4715 (ite c!621199 (regTwo!21155 (regex!5562 (rule!8276 (_1!21926 lt!1229991)))) (regOne!21154 (regex!5562 (rule!8276 (_1!21926 lt!1229991)))))))))

(declare-fun bm!259647 () Bool)

(declare-fun call!259652 () Bool)

(declare-fun call!259653 () Bool)

(assert (=> bm!259647 (= call!259652 call!259653)))

(declare-fun b!3586282 () Bool)

(declare-fun res!1447364 () Bool)

(declare-fun e!2219021 () Bool)

(assert (=> b!3586282 (=> res!1447364 e!2219021)))

(assert (=> b!3586282 (= res!1447364 (not ((_ is Concat!16114) (regex!5562 (rule!8276 (_1!21926 lt!1229991))))))))

(declare-fun e!2219022 () Bool)

(assert (=> b!3586282 (= e!2219022 e!2219021)))

(declare-fun b!3586283 () Bool)

(declare-fun e!2219025 () Bool)

(assert (=> b!3586283 (= e!2219021 e!2219025)))

(declare-fun res!1447366 () Bool)

(assert (=> b!3586283 (=> (not res!1447366) (not e!2219025))))

(assert (=> b!3586283 (= res!1447366 call!259651)))

(declare-fun b!3586284 () Bool)

(declare-fun e!2219024 () Bool)

(assert (=> b!3586284 (= e!2219024 call!259653)))

(declare-fun b!3586285 () Bool)

(declare-fun e!2219027 () Bool)

(declare-fun e!2219026 () Bool)

(assert (=> b!3586285 (= e!2219027 e!2219026)))

(declare-fun c!621198 () Bool)

(assert (=> b!3586285 (= c!621198 ((_ is Star!10321) (regex!5562 (rule!8276 (_1!21926 lt!1229991)))))))

(declare-fun b!3586286 () Bool)

(declare-fun res!1447365 () Bool)

(declare-fun e!2219023 () Bool)

(assert (=> b!3586286 (=> (not res!1447365) (not e!2219023))))

(assert (=> b!3586286 (= res!1447365 call!259652)))

(assert (=> b!3586286 (= e!2219022 e!2219023)))

(declare-fun d!1057272 () Bool)

(declare-fun res!1447362 () Bool)

(assert (=> d!1057272 (=> res!1447362 e!2219027)))

(assert (=> d!1057272 (= res!1447362 ((_ is ElementMatch!10321) (regex!5562 (rule!8276 (_1!21926 lt!1229991)))))))

(assert (=> d!1057272 (= (validRegex!4715 (regex!5562 (rule!8276 (_1!21926 lt!1229991)))) e!2219027)))

(declare-fun b!3586287 () Bool)

(assert (=> b!3586287 (= e!2219025 call!259652)))

(declare-fun b!3586288 () Bool)

(assert (=> b!3586288 (= e!2219026 e!2219024)))

(declare-fun res!1447363 () Bool)

(declare-fun nullable!3559 (Regex!10321) Bool)

(assert (=> b!3586288 (= res!1447363 (not (nullable!3559 (reg!10650 (regex!5562 (rule!8276 (_1!21926 lt!1229991)))))))))

(assert (=> b!3586288 (=> (not res!1447363) (not e!2219024))))

(declare-fun b!3586289 () Bool)

(assert (=> b!3586289 (= e!2219023 call!259651)))

(declare-fun bm!259648 () Bool)

(assert (=> bm!259648 (= call!259653 (validRegex!4715 (ite c!621198 (reg!10650 (regex!5562 (rule!8276 (_1!21926 lt!1229991)))) (ite c!621199 (regOne!21155 (regex!5562 (rule!8276 (_1!21926 lt!1229991)))) (regTwo!21154 (regex!5562 (rule!8276 (_1!21926 lt!1229991))))))))))

(declare-fun b!3586290 () Bool)

(assert (=> b!3586290 (= e!2219026 e!2219022)))

(assert (=> b!3586290 (= c!621199 ((_ is Union!10321) (regex!5562 (rule!8276 (_1!21926 lt!1229991)))))))

(assert (= (and d!1057272 (not res!1447362)) b!3586285))

(assert (= (and b!3586285 c!621198) b!3586288))

(assert (= (and b!3586285 (not c!621198)) b!3586290))

(assert (= (and b!3586288 res!1447363) b!3586284))

(assert (= (and b!3586290 c!621199) b!3586286))

(assert (= (and b!3586290 (not c!621199)) b!3586282))

(assert (= (and b!3586286 res!1447365) b!3586289))

(assert (= (and b!3586282 (not res!1447364)) b!3586283))

(assert (= (and b!3586283 res!1447366) b!3586287))

(assert (= (or b!3586286 b!3586287) bm!259647))

(assert (= (or b!3586289 b!3586283) bm!259646))

(assert (= (or b!3586284 bm!259647) bm!259648))

(declare-fun m!4079523 () Bool)

(assert (=> bm!259646 m!4079523))

(declare-fun m!4079525 () Bool)

(assert (=> b!3586288 m!4079525))

(declare-fun m!4079527 () Bool)

(assert (=> bm!259648 m!4079527))

(assert (=> b!3586063 d!1057272))

(declare-fun d!1057282 () Bool)

(declare-fun lt!1230034 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5356 (List!37818) (InoxSet C!20828))

(assert (=> d!1057282 (= lt!1230034 (select (content!5356 (usedCharacters!776 (regex!5562 anOtherTypeRule!33))) lt!1230002))))

(declare-fun e!2219033 () Bool)

(assert (=> d!1057282 (= lt!1230034 e!2219033)))

(declare-fun res!1447371 () Bool)

(assert (=> d!1057282 (=> (not res!1447371) (not e!2219033))))

(assert (=> d!1057282 (= res!1447371 ((_ is Cons!37694) (usedCharacters!776 (regex!5562 anOtherTypeRule!33))))))

(assert (=> d!1057282 (= (contains!7186 (usedCharacters!776 (regex!5562 anOtherTypeRule!33)) lt!1230002) lt!1230034)))

(declare-fun b!3586295 () Bool)

(declare-fun e!2219032 () Bool)

(assert (=> b!3586295 (= e!2219033 e!2219032)))

(declare-fun res!1447372 () Bool)

(assert (=> b!3586295 (=> res!1447372 e!2219032)))

(assert (=> b!3586295 (= res!1447372 (= (h!43114 (usedCharacters!776 (regex!5562 anOtherTypeRule!33))) lt!1230002))))

(declare-fun b!3586296 () Bool)

(assert (=> b!3586296 (= e!2219032 (contains!7186 (t!290591 (usedCharacters!776 (regex!5562 anOtherTypeRule!33))) lt!1230002))))

(assert (= (and d!1057282 res!1447371) b!3586295))

(assert (= (and b!3586295 (not res!1447372)) b!3586296))

(assert (=> d!1057282 m!4079301))

(declare-fun m!4079529 () Bool)

(assert (=> d!1057282 m!4079529))

(declare-fun m!4079531 () Bool)

(assert (=> d!1057282 m!4079531))

(declare-fun m!4079533 () Bool)

(assert (=> b!3586296 m!4079533))

(assert (=> b!3586050 d!1057282))

(declare-fun b!3586313 () Bool)

(declare-fun c!621210 () Bool)

(assert (=> b!3586313 (= c!621210 ((_ is Star!10321) (regex!5562 anOtherTypeRule!33)))))

(declare-fun e!2219045 () List!37818)

(declare-fun e!2219044 () List!37818)

(assert (=> b!3586313 (= e!2219045 e!2219044)))

(declare-fun b!3586314 () Bool)

(declare-fun e!2219043 () List!37818)

(declare-fun call!259662 () List!37818)

(assert (=> b!3586314 (= e!2219043 call!259662)))

(declare-fun b!3586315 () Bool)

(declare-fun call!259665 () List!37818)

(assert (=> b!3586315 (= e!2219044 call!259665)))

(declare-fun b!3586316 () Bool)

(assert (=> b!3586316 (= e!2219043 call!259662)))

(declare-fun b!3586317 () Bool)

(declare-fun e!2219042 () List!37818)

(assert (=> b!3586317 (= e!2219042 e!2219045)))

(declare-fun c!621208 () Bool)

(assert (=> b!3586317 (= c!621208 ((_ is ElementMatch!10321) (regex!5562 anOtherTypeRule!33)))))

(declare-fun b!3586318 () Bool)

(assert (=> b!3586318 (= e!2219042 Nil!37694)))

(declare-fun d!1057284 () Bool)

(declare-fun c!621209 () Bool)

(assert (=> d!1057284 (= c!621209 (or ((_ is EmptyExpr!10321) (regex!5562 anOtherTypeRule!33)) ((_ is EmptyLang!10321) (regex!5562 anOtherTypeRule!33))))))

(assert (=> d!1057284 (= (usedCharacters!776 (regex!5562 anOtherTypeRule!33)) e!2219042)))

(declare-fun b!3586319 () Bool)

(assert (=> b!3586319 (= e!2219044 e!2219043)))

(declare-fun c!621211 () Bool)

(assert (=> b!3586319 (= c!621211 ((_ is Union!10321) (regex!5562 anOtherTypeRule!33)))))

(declare-fun bm!259657 () Bool)

(assert (=> bm!259657 (= call!259665 (usedCharacters!776 (ite c!621210 (reg!10650 (regex!5562 anOtherTypeRule!33)) (ite c!621211 (regTwo!21155 (regex!5562 anOtherTypeRule!33)) (regOne!21154 (regex!5562 anOtherTypeRule!33))))))))

(declare-fun bm!259658 () Bool)

(declare-fun call!259664 () List!37818)

(assert (=> bm!259658 (= call!259664 call!259665)))

(declare-fun b!3586320 () Bool)

(assert (=> b!3586320 (= e!2219045 (Cons!37694 (c!621150 (regex!5562 anOtherTypeRule!33)) Nil!37694))))

(declare-fun bm!259659 () Bool)

(declare-fun call!259663 () List!37818)

(assert (=> bm!259659 (= call!259663 (usedCharacters!776 (ite c!621211 (regOne!21155 (regex!5562 anOtherTypeRule!33)) (regTwo!21154 (regex!5562 anOtherTypeRule!33)))))))

(declare-fun bm!259660 () Bool)

(assert (=> bm!259660 (= call!259662 (++!9378 (ite c!621211 call!259663 call!259664) (ite c!621211 call!259664 call!259663)))))

(assert (= (and d!1057284 c!621209) b!3586318))

(assert (= (and d!1057284 (not c!621209)) b!3586317))

(assert (= (and b!3586317 c!621208) b!3586320))

(assert (= (and b!3586317 (not c!621208)) b!3586313))

(assert (= (and b!3586313 c!621210) b!3586315))

(assert (= (and b!3586313 (not c!621210)) b!3586319))

(assert (= (and b!3586319 c!621211) b!3586316))

(assert (= (and b!3586319 (not c!621211)) b!3586314))

(assert (= (or b!3586316 b!3586314) bm!259659))

(assert (= (or b!3586316 b!3586314) bm!259658))

(assert (= (or b!3586316 b!3586314) bm!259660))

(assert (= (or b!3586315 bm!259658) bm!259657))

(declare-fun m!4079535 () Bool)

(assert (=> bm!259657 m!4079535))

(declare-fun m!4079537 () Bool)

(assert (=> bm!259659 m!4079537))

(declare-fun m!4079539 () Bool)

(assert (=> bm!259660 m!4079539))

(assert (=> b!3586050 d!1057284))

(declare-fun d!1057286 () Bool)

(declare-fun res!1447375 () Bool)

(declare-fun e!2219048 () Bool)

(assert (=> d!1057286 (=> (not res!1447375) (not e!2219048))))

(declare-fun rulesValid!2116 (LexerInterface!5151 List!37819) Bool)

(assert (=> d!1057286 (= res!1447375 (rulesValid!2116 thiss!23823 rules!3307))))

(assert (=> d!1057286 (= (rulesInvariant!4548 thiss!23823 rules!3307) e!2219048)))

(declare-fun b!3586323 () Bool)

(declare-datatypes ((List!37822 0))(
  ( (Nil!37698) (Cons!37698 (h!43118 String!42294) (t!290635 List!37822)) )
))
(declare-fun noDuplicateTag!2112 (LexerInterface!5151 List!37819 List!37822) Bool)

(assert (=> b!3586323 (= e!2219048 (noDuplicateTag!2112 thiss!23823 rules!3307 Nil!37698))))

(assert (= (and d!1057286 res!1447375) b!3586323))

(declare-fun m!4079541 () Bool)

(assert (=> d!1057286 m!4079541))

(declare-fun m!4079543 () Bool)

(assert (=> b!3586323 m!4079543))

(assert (=> b!3586061 d!1057286))

(declare-fun d!1057288 () Bool)

(declare-fun isEmpty!22208 (Option!7754) Bool)

(assert (=> d!1057288 (= (isDefined!5987 lt!1229999) (not (isEmpty!22208 lt!1229999)))))

(declare-fun bs!570045 () Bool)

(assert (= bs!570045 d!1057288))

(declare-fun m!4079545 () Bool)

(assert (=> bs!570045 m!4079545))

(assert (=> b!3586051 d!1057288))

(declare-fun d!1057290 () Bool)

(declare-fun list!13857 (Conc!11463) List!37818)

(assert (=> d!1057290 (= (list!13854 (charsOf!3576 (_1!21926 lt!1229991))) (list!13857 (c!621151 (charsOf!3576 (_1!21926 lt!1229991)))))))

(declare-fun bs!570046 () Bool)

(assert (= bs!570046 d!1057290))

(declare-fun m!4079547 () Bool)

(assert (=> bs!570046 m!4079547))

(assert (=> b!3586051 d!1057290))

(declare-fun b!3586342 () Bool)

(declare-fun e!2219055 () Option!7755)

(declare-fun lt!1230047 () Option!7755)

(declare-fun lt!1230046 () Option!7755)

(assert (=> b!3586342 (= e!2219055 (ite (and ((_ is None!7754) lt!1230047) ((_ is None!7754) lt!1230046)) None!7754 (ite ((_ is None!7754) lt!1230046) lt!1230047 (ite ((_ is None!7754) lt!1230047) lt!1230046 (ite (>= (size!28718 (_1!21926 (v!37416 lt!1230047))) (size!28718 (_1!21926 (v!37416 lt!1230046)))) lt!1230047 lt!1230046)))))))

(declare-fun call!259668 () Option!7755)

(assert (=> b!3586342 (= lt!1230047 call!259668)))

(assert (=> b!3586342 (= lt!1230046 (maxPrefix!2685 thiss!23823 (t!290592 rules!3307) lt!1229989))))

(declare-fun bm!259663 () Bool)

(declare-fun maxPrefixOneRule!1835 (LexerInterface!5151 Rule!10924 List!37818) Option!7755)

(assert (=> bm!259663 (= call!259668 (maxPrefixOneRule!1835 thiss!23823 (h!43115 rules!3307) lt!1229989))))

(declare-fun b!3586343 () Bool)

(declare-fun res!1447391 () Bool)

(declare-fun e!2219057 () Bool)

(assert (=> b!3586343 (=> (not res!1447391) (not e!2219057))))

(declare-fun lt!1230049 () Option!7755)

(assert (=> b!3586343 (= res!1447391 (matchR!4890 (regex!5562 (rule!8276 (_1!21926 (get!12146 lt!1230049)))) (list!13854 (charsOf!3576 (_1!21926 (get!12146 lt!1230049))))))))

(declare-fun b!3586344 () Bool)

(declare-fun res!1447396 () Bool)

(assert (=> b!3586344 (=> (not res!1447396) (not e!2219057))))

(declare-fun size!28720 (List!37818) Int)

(assert (=> b!3586344 (= res!1447396 (< (size!28720 (_2!21926 (get!12146 lt!1230049))) (size!28720 lt!1229989)))))

(declare-fun b!3586345 () Bool)

(declare-fun res!1447390 () Bool)

(assert (=> b!3586345 (=> (not res!1447390) (not e!2219057))))

(assert (=> b!3586345 (= res!1447390 (= (++!9378 (list!13854 (charsOf!3576 (_1!21926 (get!12146 lt!1230049)))) (_2!21926 (get!12146 lt!1230049))) lt!1229989))))

(declare-fun b!3586346 () Bool)

(declare-fun e!2219056 () Bool)

(assert (=> b!3586346 (= e!2219056 e!2219057)))

(declare-fun res!1447395 () Bool)

(assert (=> b!3586346 (=> (not res!1447395) (not e!2219057))))

(assert (=> b!3586346 (= res!1447395 (isDefined!5986 lt!1230049))))

(declare-fun b!3586347 () Bool)

(assert (=> b!3586347 (= e!2219057 (contains!7185 rules!3307 (rule!8276 (_1!21926 (get!12146 lt!1230049)))))))

(declare-fun d!1057292 () Bool)

(assert (=> d!1057292 e!2219056))

(declare-fun res!1447392 () Bool)

(assert (=> d!1057292 (=> res!1447392 e!2219056)))

(declare-fun isEmpty!22209 (Option!7755) Bool)

(assert (=> d!1057292 (= res!1447392 (isEmpty!22209 lt!1230049))))

(assert (=> d!1057292 (= lt!1230049 e!2219055)))

(declare-fun c!621214 () Bool)

(assert (=> d!1057292 (= c!621214 (and ((_ is Cons!37695) rules!3307) ((_ is Nil!37695) (t!290592 rules!3307))))))

(declare-fun lt!1230045 () Unit!53691)

(declare-fun lt!1230048 () Unit!53691)

(assert (=> d!1057292 (= lt!1230045 lt!1230048)))

(assert (=> d!1057292 (isPrefix!2925 lt!1229989 lt!1229989)))

(declare-fun lemmaIsPrefixRefl!1875 (List!37818 List!37818) Unit!53691)

(assert (=> d!1057292 (= lt!1230048 (lemmaIsPrefixRefl!1875 lt!1229989 lt!1229989))))

(declare-fun rulesValidInductive!1938 (LexerInterface!5151 List!37819) Bool)

(assert (=> d!1057292 (rulesValidInductive!1938 thiss!23823 rules!3307)))

(assert (=> d!1057292 (= (maxPrefix!2685 thiss!23823 rules!3307 lt!1229989) lt!1230049)))

(declare-fun b!3586348 () Bool)

(declare-fun res!1447394 () Bool)

(assert (=> b!3586348 (=> (not res!1447394) (not e!2219057))))

(declare-fun apply!9071 (TokenValueInjection!11012 BalanceConc!22540) TokenValue!5792)

(declare-fun seqFromList!4115 (List!37818) BalanceConc!22540)

(assert (=> b!3586348 (= res!1447394 (= (value!178977 (_1!21926 (get!12146 lt!1230049))) (apply!9071 (transformation!5562 (rule!8276 (_1!21926 (get!12146 lt!1230049)))) (seqFromList!4115 (originalCharacters!6276 (_1!21926 (get!12146 lt!1230049)))))))))

(declare-fun b!3586349 () Bool)

(assert (=> b!3586349 (= e!2219055 call!259668)))

(declare-fun b!3586350 () Bool)

(declare-fun res!1447393 () Bool)

(assert (=> b!3586350 (=> (not res!1447393) (not e!2219057))))

(assert (=> b!3586350 (= res!1447393 (= (list!13854 (charsOf!3576 (_1!21926 (get!12146 lt!1230049)))) (originalCharacters!6276 (_1!21926 (get!12146 lt!1230049)))))))

(assert (= (and d!1057292 c!621214) b!3586349))

(assert (= (and d!1057292 (not c!621214)) b!3586342))

(assert (= (or b!3586349 b!3586342) bm!259663))

(assert (= (and d!1057292 (not res!1447392)) b!3586346))

(assert (= (and b!3586346 res!1447395) b!3586350))

(assert (= (and b!3586350 res!1447393) b!3586344))

(assert (= (and b!3586344 res!1447396) b!3586345))

(assert (= (and b!3586345 res!1447390) b!3586348))

(assert (= (and b!3586348 res!1447394) b!3586343))

(assert (= (and b!3586343 res!1447391) b!3586347))

(declare-fun m!4079549 () Bool)

(assert (=> b!3586342 m!4079549))

(declare-fun m!4079551 () Bool)

(assert (=> b!3586343 m!4079551))

(declare-fun m!4079553 () Bool)

(assert (=> b!3586343 m!4079553))

(assert (=> b!3586343 m!4079553))

(declare-fun m!4079555 () Bool)

(assert (=> b!3586343 m!4079555))

(assert (=> b!3586343 m!4079555))

(declare-fun m!4079557 () Bool)

(assert (=> b!3586343 m!4079557))

(assert (=> b!3586348 m!4079551))

(declare-fun m!4079559 () Bool)

(assert (=> b!3586348 m!4079559))

(assert (=> b!3586348 m!4079559))

(declare-fun m!4079561 () Bool)

(assert (=> b!3586348 m!4079561))

(assert (=> b!3586345 m!4079551))

(assert (=> b!3586345 m!4079553))

(assert (=> b!3586345 m!4079553))

(assert (=> b!3586345 m!4079555))

(assert (=> b!3586345 m!4079555))

(declare-fun m!4079563 () Bool)

(assert (=> b!3586345 m!4079563))

(declare-fun m!4079565 () Bool)

(assert (=> bm!259663 m!4079565))

(assert (=> b!3586347 m!4079551))

(declare-fun m!4079567 () Bool)

(assert (=> b!3586347 m!4079567))

(declare-fun m!4079569 () Bool)

(assert (=> d!1057292 m!4079569))

(declare-fun m!4079571 () Bool)

(assert (=> d!1057292 m!4079571))

(declare-fun m!4079573 () Bool)

(assert (=> d!1057292 m!4079573))

(declare-fun m!4079575 () Bool)

(assert (=> d!1057292 m!4079575))

(assert (=> b!3586350 m!4079551))

(assert (=> b!3586350 m!4079553))

(assert (=> b!3586350 m!4079553))

(assert (=> b!3586350 m!4079555))

(assert (=> b!3586344 m!4079551))

(declare-fun m!4079577 () Bool)

(assert (=> b!3586344 m!4079577))

(declare-fun m!4079579 () Bool)

(assert (=> b!3586344 m!4079579))

(declare-fun m!4079581 () Bool)

(assert (=> b!3586346 m!4079581))

(assert (=> b!3586051 d!1057292))

(declare-fun b!3586372 () Bool)

(declare-fun res!1447413 () Bool)

(declare-fun e!2219071 () Bool)

(assert (=> b!3586372 (=> (not res!1447413) (not e!2219071))))

(assert (=> b!3586372 (= res!1447413 (= (head!7480 lt!1229997) (head!7480 (++!9378 lt!1229997 (_2!21926 lt!1229991)))))))

(declare-fun d!1057294 () Bool)

(declare-fun e!2219070 () Bool)

(assert (=> d!1057294 e!2219070))

(declare-fun res!1447412 () Bool)

(assert (=> d!1057294 (=> res!1447412 e!2219070)))

(declare-fun lt!1230103 () Bool)

(assert (=> d!1057294 (= res!1447412 (not lt!1230103))))

(declare-fun e!2219072 () Bool)

(assert (=> d!1057294 (= lt!1230103 e!2219072)))

(declare-fun res!1447414 () Bool)

(assert (=> d!1057294 (=> res!1447414 e!2219072)))

(assert (=> d!1057294 (= res!1447414 ((_ is Nil!37694) lt!1229997))))

(assert (=> d!1057294 (= (isPrefix!2925 lt!1229997 (++!9378 lt!1229997 (_2!21926 lt!1229991))) lt!1230103)))

(declare-fun b!3586374 () Bool)

(assert (=> b!3586374 (= e!2219070 (>= (size!28720 (++!9378 lt!1229997 (_2!21926 lt!1229991))) (size!28720 lt!1229997)))))

(declare-fun b!3586373 () Bool)

(declare-fun tail!5557 (List!37818) List!37818)

(assert (=> b!3586373 (= e!2219071 (isPrefix!2925 (tail!5557 lt!1229997) (tail!5557 (++!9378 lt!1229997 (_2!21926 lt!1229991)))))))

(declare-fun b!3586371 () Bool)

(assert (=> b!3586371 (= e!2219072 e!2219071)))

(declare-fun res!1447411 () Bool)

(assert (=> b!3586371 (=> (not res!1447411) (not e!2219071))))

(assert (=> b!3586371 (= res!1447411 (not ((_ is Nil!37694) (++!9378 lt!1229997 (_2!21926 lt!1229991)))))))

(assert (= (and d!1057294 (not res!1447414)) b!3586371))

(assert (= (and b!3586371 res!1447411) b!3586372))

(assert (= (and b!3586372 res!1447413) b!3586373))

(assert (= (and d!1057294 (not res!1447412)) b!3586374))

(declare-fun m!4079613 () Bool)

(assert (=> b!3586372 m!4079613))

(assert (=> b!3586372 m!4079319))

(declare-fun m!4079617 () Bool)

(assert (=> b!3586372 m!4079617))

(assert (=> b!3586374 m!4079319))

(declare-fun m!4079623 () Bool)

(assert (=> b!3586374 m!4079623))

(declare-fun m!4079627 () Bool)

(assert (=> b!3586374 m!4079627))

(declare-fun m!4079631 () Bool)

(assert (=> b!3586373 m!4079631))

(assert (=> b!3586373 m!4079319))

(declare-fun m!4079635 () Bool)

(assert (=> b!3586373 m!4079635))

(assert (=> b!3586373 m!4079631))

(assert (=> b!3586373 m!4079635))

(declare-fun m!4079641 () Bool)

(assert (=> b!3586373 m!4079641))

(assert (=> b!3586051 d!1057294))

(declare-fun d!1057296 () Bool)

(declare-fun e!2219080 () Bool)

(assert (=> d!1057296 e!2219080))

(declare-fun res!1447427 () Bool)

(assert (=> d!1057296 (=> (not res!1447427) (not e!2219080))))

(assert (=> d!1057296 (= res!1447427 (isDefined!5987 (getRuleFromTag!1168 thiss!23823 rules!3307 (tag!6228 (rule!8276 (_1!21926 lt!1229991))))))))

(declare-fun lt!1230114 () Unit!53691)

(declare-fun choose!20861 (LexerInterface!5151 List!37819 List!37818 Token!10490) Unit!53691)

(assert (=> d!1057296 (= lt!1230114 (choose!20861 thiss!23823 rules!3307 lt!1229989 (_1!21926 lt!1229991)))))

(assert (=> d!1057296 (rulesInvariant!4548 thiss!23823 rules!3307)))

(assert (=> d!1057296 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1168 thiss!23823 rules!3307 lt!1229989 (_1!21926 lt!1229991)) lt!1230114)))

(declare-fun b!3586389 () Bool)

(declare-fun res!1447428 () Bool)

(assert (=> b!3586389 (=> (not res!1447428) (not e!2219080))))

(assert (=> b!3586389 (= res!1447428 (matchR!4890 (regex!5562 (get!12145 (getRuleFromTag!1168 thiss!23823 rules!3307 (tag!6228 (rule!8276 (_1!21926 lt!1229991)))))) (list!13854 (charsOf!3576 (_1!21926 lt!1229991)))))))

(declare-fun b!3586390 () Bool)

(assert (=> b!3586390 (= e!2219080 (= (rule!8276 (_1!21926 lt!1229991)) (get!12145 (getRuleFromTag!1168 thiss!23823 rules!3307 (tag!6228 (rule!8276 (_1!21926 lt!1229991)))))))))

(assert (= (and d!1057296 res!1447427) b!3586389))

(assert (= (and b!3586389 res!1447428) b!3586390))

(assert (=> d!1057296 m!4079315))

(assert (=> d!1057296 m!4079315))

(declare-fun m!4079675 () Bool)

(assert (=> d!1057296 m!4079675))

(declare-fun m!4079677 () Bool)

(assert (=> d!1057296 m!4079677))

(assert (=> d!1057296 m!4079353))

(assert (=> b!3586389 m!4079315))

(declare-fun m!4079679 () Bool)

(assert (=> b!3586389 m!4079679))

(assert (=> b!3586389 m!4079305))

(assert (=> b!3586389 m!4079315))

(assert (=> b!3586389 m!4079317))

(declare-fun m!4079681 () Bool)

(assert (=> b!3586389 m!4079681))

(assert (=> b!3586389 m!4079305))

(assert (=> b!3586389 m!4079317))

(assert (=> b!3586390 m!4079315))

(assert (=> b!3586390 m!4079315))

(assert (=> b!3586390 m!4079679))

(assert (=> b!3586051 d!1057296))

(declare-fun b!3586403 () Bool)

(declare-fun lt!1230123 () Unit!53691)

(declare-fun lt!1230122 () Unit!53691)

(assert (=> b!3586403 (= lt!1230123 lt!1230122)))

(assert (=> b!3586403 (rulesInvariant!4548 thiss!23823 (t!290592 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!490 (LexerInterface!5151 Rule!10924 List!37819) Unit!53691)

(assert (=> b!3586403 (= lt!1230122 (lemmaInvariantOnRulesThenOnTail!490 thiss!23823 (h!43115 rules!3307) (t!290592 rules!3307)))))

(declare-fun e!2219091 () Option!7754)

(assert (=> b!3586403 (= e!2219091 (getRuleFromTag!1168 thiss!23823 (t!290592 rules!3307) (tag!6228 (rule!8276 (_1!21926 lt!1229991)))))))

(declare-fun b!3586404 () Bool)

(declare-fun e!2219092 () Bool)

(declare-fun e!2219090 () Bool)

(assert (=> b!3586404 (= e!2219092 e!2219090)))

(declare-fun res!1447433 () Bool)

(assert (=> b!3586404 (=> (not res!1447433) (not e!2219090))))

(declare-fun lt!1230121 () Option!7754)

(assert (=> b!3586404 (= res!1447433 (contains!7185 rules!3307 (get!12145 lt!1230121)))))

(declare-fun d!1057312 () Bool)

(assert (=> d!1057312 e!2219092))

(declare-fun res!1447434 () Bool)

(assert (=> d!1057312 (=> res!1447434 e!2219092)))

(assert (=> d!1057312 (= res!1447434 (isEmpty!22208 lt!1230121))))

(declare-fun e!2219089 () Option!7754)

(assert (=> d!1057312 (= lt!1230121 e!2219089)))

(declare-fun c!621223 () Bool)

(assert (=> d!1057312 (= c!621223 (and ((_ is Cons!37695) rules!3307) (= (tag!6228 (h!43115 rules!3307)) (tag!6228 (rule!8276 (_1!21926 lt!1229991))))))))

(assert (=> d!1057312 (rulesInvariant!4548 thiss!23823 rules!3307)))

(assert (=> d!1057312 (= (getRuleFromTag!1168 thiss!23823 rules!3307 (tag!6228 (rule!8276 (_1!21926 lt!1229991)))) lt!1230121)))

(declare-fun b!3586405 () Bool)

(assert (=> b!3586405 (= e!2219091 None!7753)))

(declare-fun b!3586406 () Bool)

(assert (=> b!3586406 (= e!2219089 (Some!7753 (h!43115 rules!3307)))))

(declare-fun b!3586407 () Bool)

(assert (=> b!3586407 (= e!2219089 e!2219091)))

(declare-fun c!621224 () Bool)

(assert (=> b!3586407 (= c!621224 (and ((_ is Cons!37695) rules!3307) (not (= (tag!6228 (h!43115 rules!3307)) (tag!6228 (rule!8276 (_1!21926 lt!1229991)))))))))

(declare-fun b!3586408 () Bool)

(assert (=> b!3586408 (= e!2219090 (= (tag!6228 (get!12145 lt!1230121)) (tag!6228 (rule!8276 (_1!21926 lt!1229991)))))))

(assert (= (and d!1057312 c!621223) b!3586406))

(assert (= (and d!1057312 (not c!621223)) b!3586407))

(assert (= (and b!3586407 c!621224) b!3586403))

(assert (= (and b!3586407 (not c!621224)) b!3586405))

(assert (= (and d!1057312 (not res!1447434)) b!3586404))

(assert (= (and b!3586404 res!1447433) b!3586408))

(declare-fun m!4079683 () Bool)

(assert (=> b!3586403 m!4079683))

(declare-fun m!4079685 () Bool)

(assert (=> b!3586403 m!4079685))

(declare-fun m!4079687 () Bool)

(assert (=> b!3586403 m!4079687))

(declare-fun m!4079689 () Bool)

(assert (=> b!3586404 m!4079689))

(assert (=> b!3586404 m!4079689))

(declare-fun m!4079691 () Bool)

(assert (=> b!3586404 m!4079691))

(declare-fun m!4079693 () Bool)

(assert (=> d!1057312 m!4079693))

(assert (=> d!1057312 m!4079353))

(assert (=> b!3586408 m!4079689))

(assert (=> b!3586051 d!1057312))

(declare-fun d!1057314 () Bool)

(assert (=> d!1057314 (isPrefix!2925 lt!1229997 (++!9378 lt!1229997 (_2!21926 lt!1229991)))))

(declare-fun lt!1230126 () Unit!53691)

(declare-fun choose!20862 (List!37818 List!37818) Unit!53691)

(assert (=> d!1057314 (= lt!1230126 (choose!20862 lt!1229997 (_2!21926 lt!1229991)))))

(assert (=> d!1057314 (= (lemmaConcatTwoListThenFirstIsPrefix!1846 lt!1229997 (_2!21926 lt!1229991)) lt!1230126)))

(declare-fun bs!570050 () Bool)

(assert (= bs!570050 d!1057314))

(assert (=> bs!570050 m!4079319))

(assert (=> bs!570050 m!4079319))

(assert (=> bs!570050 m!4079321))

(declare-fun m!4079695 () Bool)

(assert (=> bs!570050 m!4079695))

(assert (=> b!3586051 d!1057314))

(declare-fun b!3586410 () Bool)

(declare-fun res!1447437 () Bool)

(declare-fun e!2219094 () Bool)

(assert (=> b!3586410 (=> (not res!1447437) (not e!2219094))))

(assert (=> b!3586410 (= res!1447437 (= (head!7480 lt!1229992) (head!7480 lt!1229989)))))

(declare-fun d!1057316 () Bool)

(declare-fun e!2219093 () Bool)

(assert (=> d!1057316 e!2219093))

(declare-fun res!1447436 () Bool)

(assert (=> d!1057316 (=> res!1447436 e!2219093)))

(declare-fun lt!1230127 () Bool)

(assert (=> d!1057316 (= res!1447436 (not lt!1230127))))

(declare-fun e!2219095 () Bool)

(assert (=> d!1057316 (= lt!1230127 e!2219095)))

(declare-fun res!1447438 () Bool)

(assert (=> d!1057316 (=> res!1447438 e!2219095)))

(assert (=> d!1057316 (= res!1447438 ((_ is Nil!37694) lt!1229992))))

(assert (=> d!1057316 (= (isPrefix!2925 lt!1229992 lt!1229989) lt!1230127)))

(declare-fun b!3586412 () Bool)

(assert (=> b!3586412 (= e!2219093 (>= (size!28720 lt!1229989) (size!28720 lt!1229992)))))

(declare-fun b!3586411 () Bool)

(assert (=> b!3586411 (= e!2219094 (isPrefix!2925 (tail!5557 lt!1229992) (tail!5557 lt!1229989)))))

(declare-fun b!3586409 () Bool)

(assert (=> b!3586409 (= e!2219095 e!2219094)))

(declare-fun res!1447435 () Bool)

(assert (=> b!3586409 (=> (not res!1447435) (not e!2219094))))

(assert (=> b!3586409 (= res!1447435 (not ((_ is Nil!37694) lt!1229989)))))

(assert (= (and d!1057316 (not res!1447438)) b!3586409))

(assert (= (and b!3586409 res!1447435) b!3586410))

(assert (= (and b!3586410 res!1447437) b!3586411))

(assert (= (and d!1057316 (not res!1447436)) b!3586412))

(declare-fun m!4079697 () Bool)

(assert (=> b!3586410 m!4079697))

(declare-fun m!4079699 () Bool)

(assert (=> b!3586410 m!4079699))

(assert (=> b!3586412 m!4079579))

(declare-fun m!4079701 () Bool)

(assert (=> b!3586412 m!4079701))

(declare-fun m!4079703 () Bool)

(assert (=> b!3586411 m!4079703))

(declare-fun m!4079705 () Bool)

(assert (=> b!3586411 m!4079705))

(assert (=> b!3586411 m!4079703))

(assert (=> b!3586411 m!4079705))

(declare-fun m!4079707 () Bool)

(assert (=> b!3586411 m!4079707))

(assert (=> b!3586051 d!1057316))

(declare-fun b!3586423 () Bool)

(declare-fun res!1447444 () Bool)

(declare-fun e!2219101 () Bool)

(assert (=> b!3586423 (=> (not res!1447444) (not e!2219101))))

(declare-fun lt!1230130 () List!37818)

(assert (=> b!3586423 (= res!1447444 (= (size!28720 lt!1230130) (+ (size!28720 lt!1229997) (size!28720 (_2!21926 lt!1229991)))))))

(declare-fun b!3586421 () Bool)

(declare-fun e!2219100 () List!37818)

(assert (=> b!3586421 (= e!2219100 (_2!21926 lt!1229991))))

(declare-fun d!1057318 () Bool)

(assert (=> d!1057318 e!2219101))

(declare-fun res!1447443 () Bool)

(assert (=> d!1057318 (=> (not res!1447443) (not e!2219101))))

(assert (=> d!1057318 (= res!1447443 (= (content!5356 lt!1230130) ((_ map or) (content!5356 lt!1229997) (content!5356 (_2!21926 lt!1229991)))))))

(assert (=> d!1057318 (= lt!1230130 e!2219100)))

(declare-fun c!621227 () Bool)

(assert (=> d!1057318 (= c!621227 ((_ is Nil!37694) lt!1229997))))

(assert (=> d!1057318 (= (++!9378 lt!1229997 (_2!21926 lt!1229991)) lt!1230130)))

(declare-fun b!3586422 () Bool)

(assert (=> b!3586422 (= e!2219100 (Cons!37694 (h!43114 lt!1229997) (++!9378 (t!290591 lt!1229997) (_2!21926 lt!1229991))))))

(declare-fun b!3586424 () Bool)

(assert (=> b!3586424 (= e!2219101 (or (not (= (_2!21926 lt!1229991) Nil!37694)) (= lt!1230130 lt!1229997)))))

(assert (= (and d!1057318 c!621227) b!3586421))

(assert (= (and d!1057318 (not c!621227)) b!3586422))

(assert (= (and d!1057318 res!1447443) b!3586423))

(assert (= (and b!3586423 res!1447444) b!3586424))

(declare-fun m!4079709 () Bool)

(assert (=> b!3586423 m!4079709))

(assert (=> b!3586423 m!4079627))

(declare-fun m!4079711 () Bool)

(assert (=> b!3586423 m!4079711))

(declare-fun m!4079713 () Bool)

(assert (=> d!1057318 m!4079713))

(declare-fun m!4079715 () Bool)

(assert (=> d!1057318 m!4079715))

(declare-fun m!4079717 () Bool)

(assert (=> d!1057318 m!4079717))

(declare-fun m!4079719 () Bool)

(assert (=> b!3586422 m!4079719))

(assert (=> b!3586051 d!1057318))

(declare-fun b!3586548 () Bool)

(declare-fun e!2219159 () Unit!53691)

(declare-fun Unit!53695 () Unit!53691)

(assert (=> b!3586548 (= e!2219159 Unit!53695)))

(declare-fun b!3586545 () Bool)

(declare-fun res!1447496 () Bool)

(declare-fun e!2219160 () Bool)

(assert (=> b!3586545 (=> (not res!1447496) (not e!2219160))))

(declare-fun lt!1230199 () Token!10490)

(assert (=> b!3586545 (= res!1447496 (matchR!4890 (regex!5562 (get!12145 (getRuleFromTag!1168 thiss!23823 rules!3307 (tag!6228 (rule!8276 lt!1230199))))) (list!13854 (charsOf!3576 lt!1230199))))))

(declare-fun b!3586546 () Bool)

(assert (=> b!3586546 (= e!2219160 (= (rule!8276 lt!1230199) (get!12145 (getRuleFromTag!1168 thiss!23823 rules!3307 (tag!6228 (rule!8276 lt!1230199))))))))

(declare-fun d!1057320 () Bool)

(assert (=> d!1057320 (isDefined!5986 (maxPrefix!2685 thiss!23823 rules!3307 (++!9378 lt!1229992 suffix!1395)))))

(declare-fun lt!1230207 () Unit!53691)

(assert (=> d!1057320 (= lt!1230207 e!2219159)))

(declare-fun c!621241 () Bool)

(assert (=> d!1057320 (= c!621241 (isEmpty!22209 (maxPrefix!2685 thiss!23823 rules!3307 (++!9378 lt!1229992 suffix!1395))))))

(declare-fun lt!1230196 () Unit!53691)

(declare-fun lt!1230200 () Unit!53691)

(assert (=> d!1057320 (= lt!1230196 lt!1230200)))

(assert (=> d!1057320 e!2219160))

(declare-fun res!1447497 () Bool)

(assert (=> d!1057320 (=> (not res!1447497) (not e!2219160))))

(assert (=> d!1057320 (= res!1447497 (isDefined!5987 (getRuleFromTag!1168 thiss!23823 rules!3307 (tag!6228 (rule!8276 lt!1230199)))))))

(assert (=> d!1057320 (= lt!1230200 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1168 thiss!23823 rules!3307 lt!1229992 lt!1230199))))

(declare-fun lt!1230195 () Unit!53691)

(declare-fun lt!1230192 () Unit!53691)

(assert (=> d!1057320 (= lt!1230195 lt!1230192)))

(declare-fun lt!1230201 () List!37818)

(assert (=> d!1057320 (isPrefix!2925 lt!1230201 (++!9378 lt!1229992 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!410 (List!37818 List!37818 List!37818) Unit!53691)

(assert (=> d!1057320 (= lt!1230192 (lemmaPrefixStaysPrefixWhenAddingToSuffix!410 lt!1230201 lt!1229992 suffix!1395))))

(assert (=> d!1057320 (= lt!1230201 (list!13854 (charsOf!3576 lt!1230199)))))

(declare-fun lt!1230198 () Unit!53691)

(declare-fun lt!1230204 () Unit!53691)

(assert (=> d!1057320 (= lt!1230198 lt!1230204)))

(declare-fun lt!1230194 () List!37818)

(declare-fun lt!1230202 () List!37818)

(assert (=> d!1057320 (isPrefix!2925 lt!1230194 (++!9378 lt!1230194 lt!1230202))))

(assert (=> d!1057320 (= lt!1230204 (lemmaConcatTwoListThenFirstIsPrefix!1846 lt!1230194 lt!1230202))))

(assert (=> d!1057320 (= lt!1230202 (_2!21926 (get!12146 (maxPrefix!2685 thiss!23823 rules!3307 lt!1229992))))))

(assert (=> d!1057320 (= lt!1230194 (list!13854 (charsOf!3576 lt!1230199)))))

(declare-datatypes ((List!37823 0))(
  ( (Nil!37699) (Cons!37699 (h!43119 Token!10490) (t!290636 List!37823)) )
))
(declare-fun head!7482 (List!37823) Token!10490)

(declare-datatypes ((IArray!22935 0))(
  ( (IArray!22936 (innerList!11525 List!37823)) )
))
(declare-datatypes ((Conc!11465 0))(
  ( (Node!11465 (left!29460 Conc!11465) (right!29790 Conc!11465) (csize!23160 Int) (cheight!11676 Int)) (Leaf!17857 (xs!14667 IArray!22935) (csize!23161 Int)) (Empty!11465) )
))
(declare-datatypes ((BalanceConc!22544 0))(
  ( (BalanceConc!22545 (c!621267 Conc!11465)) )
))
(declare-fun list!13858 (BalanceConc!22544) List!37823)

(declare-datatypes ((tuple2!37588 0))(
  ( (tuple2!37589 (_1!21928 BalanceConc!22544) (_2!21928 BalanceConc!22540)) )
))
(declare-fun lex!2442 (LexerInterface!5151 List!37819 BalanceConc!22540) tuple2!37588)

(assert (=> d!1057320 (= lt!1230199 (head!7482 (list!13858 (_1!21928 (lex!2442 thiss!23823 rules!3307 (seqFromList!4115 lt!1229992))))))))

(assert (=> d!1057320 (not (isEmpty!22204 rules!3307))))

(assert (=> d!1057320 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!831 thiss!23823 rules!3307 lt!1229992 suffix!1395) lt!1230207)))

(declare-fun b!3586547 () Bool)

(declare-fun Unit!53696 () Unit!53691)

(assert (=> b!3586547 (= e!2219159 Unit!53696)))

(declare-fun lt!1230193 () List!37818)

(assert (=> b!3586547 (= lt!1230193 (++!9378 lt!1229992 suffix!1395))))

(declare-fun lt!1230208 () Unit!53691)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!446 (LexerInterface!5151 Rule!10924 List!37819 List!37818) Unit!53691)

(assert (=> b!3586547 (= lt!1230208 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!446 thiss!23823 (rule!8276 lt!1230199) rules!3307 lt!1230193))))

(assert (=> b!3586547 (isEmpty!22209 (maxPrefixOneRule!1835 thiss!23823 (rule!8276 lt!1230199) lt!1230193))))

(declare-fun lt!1230205 () Unit!53691)

(assert (=> b!3586547 (= lt!1230205 lt!1230208)))

(declare-fun lt!1230197 () List!37818)

(assert (=> b!3586547 (= lt!1230197 (list!13854 (charsOf!3576 lt!1230199)))))

(declare-fun lt!1230203 () Unit!53691)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!434 (LexerInterface!5151 Rule!10924 List!37818 List!37818) Unit!53691)

(assert (=> b!3586547 (= lt!1230203 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!434 thiss!23823 (rule!8276 lt!1230199) lt!1230197 (++!9378 lt!1229992 suffix!1395)))))

(assert (=> b!3586547 (not (matchR!4890 (regex!5562 (rule!8276 lt!1230199)) lt!1230197))))

(declare-fun lt!1230206 () Unit!53691)

(assert (=> b!3586547 (= lt!1230206 lt!1230203)))

(assert (=> b!3586547 false))

(assert (= (and d!1057320 res!1447497) b!3586545))

(assert (= (and b!3586545 res!1447496) b!3586546))

(assert (= (and d!1057320 c!621241) b!3586547))

(assert (= (and d!1057320 (not c!621241)) b!3586548))

(declare-fun m!4079827 () Bool)

(assert (=> b!3586545 m!4079827))

(declare-fun m!4079829 () Bool)

(assert (=> b!3586545 m!4079829))

(declare-fun m!4079831 () Bool)

(assert (=> b!3586545 m!4079831))

(declare-fun m!4079833 () Bool)

(assert (=> b!3586545 m!4079833))

(declare-fun m!4079835 () Bool)

(assert (=> b!3586545 m!4079835))

(assert (=> b!3586545 m!4079827))

(assert (=> b!3586545 m!4079835))

(assert (=> b!3586545 m!4079831))

(assert (=> b!3586546 m!4079827))

(assert (=> b!3586546 m!4079827))

(assert (=> b!3586546 m!4079829))

(declare-fun m!4079837 () Bool)

(assert (=> d!1057320 m!4079837))

(declare-fun m!4079839 () Bool)

(assert (=> d!1057320 m!4079839))

(declare-fun m!4079841 () Bool)

(assert (=> d!1057320 m!4079841))

(declare-fun m!4079843 () Bool)

(assert (=> d!1057320 m!4079843))

(assert (=> d!1057320 m!4079839))

(declare-fun m!4079845 () Bool)

(assert (=> d!1057320 m!4079845))

(assert (=> d!1057320 m!4079293))

(declare-fun m!4079847 () Bool)

(assert (=> d!1057320 m!4079847))

(assert (=> d!1057320 m!4079827))

(declare-fun m!4079849 () Bool)

(assert (=> d!1057320 m!4079849))

(declare-fun m!4079851 () Bool)

(assert (=> d!1057320 m!4079851))

(assert (=> d!1057320 m!4079293))

(declare-fun m!4079853 () Bool)

(assert (=> d!1057320 m!4079853))

(declare-fun m!4079855 () Bool)

(assert (=> d!1057320 m!4079855))

(assert (=> d!1057320 m!4079843))

(declare-fun m!4079857 () Bool)

(assert (=> d!1057320 m!4079857))

(assert (=> d!1057320 m!4079331))

(declare-fun m!4079859 () Bool)

(assert (=> d!1057320 m!4079859))

(assert (=> d!1057320 m!4079853))

(assert (=> d!1057320 m!4079835))

(assert (=> d!1057320 m!4079849))

(declare-fun m!4079861 () Bool)

(assert (=> d!1057320 m!4079861))

(assert (=> d!1057320 m!4079331))

(assert (=> d!1057320 m!4079849))

(declare-fun m!4079863 () Bool)

(assert (=> d!1057320 m!4079863))

(assert (=> d!1057320 m!4079365))

(assert (=> d!1057320 m!4079835))

(assert (=> d!1057320 m!4079831))

(assert (=> d!1057320 m!4079331))

(assert (=> d!1057320 m!4079827))

(declare-fun m!4079865 () Bool)

(assert (=> d!1057320 m!4079865))

(declare-fun m!4079867 () Bool)

(assert (=> b!3586547 m!4079867))

(declare-fun m!4079869 () Bool)

(assert (=> b!3586547 m!4079869))

(assert (=> b!3586547 m!4079835))

(assert (=> b!3586547 m!4079331))

(declare-fun m!4079871 () Bool)

(assert (=> b!3586547 m!4079871))

(assert (=> b!3586547 m!4079869))

(declare-fun m!4079873 () Bool)

(assert (=> b!3586547 m!4079873))

(assert (=> b!3586547 m!4079331))

(declare-fun m!4079875 () Bool)

(assert (=> b!3586547 m!4079875))

(assert (=> b!3586547 m!4079835))

(assert (=> b!3586547 m!4079831))

(assert (=> b!3586051 d!1057320))

(declare-fun b!3586551 () Bool)

(declare-fun res!1447499 () Bool)

(declare-fun e!2219162 () Bool)

(assert (=> b!3586551 (=> (not res!1447499) (not e!2219162))))

(declare-fun lt!1230209 () List!37818)

(assert (=> b!3586551 (= res!1447499 (= (size!28720 lt!1230209) (+ (size!28720 lt!1229992) (size!28720 suffix!1395))))))

(declare-fun b!3586549 () Bool)

(declare-fun e!2219161 () List!37818)

(assert (=> b!3586549 (= e!2219161 suffix!1395)))

(declare-fun d!1057348 () Bool)

(assert (=> d!1057348 e!2219162))

(declare-fun res!1447498 () Bool)

(assert (=> d!1057348 (=> (not res!1447498) (not e!2219162))))

(assert (=> d!1057348 (= res!1447498 (= (content!5356 lt!1230209) ((_ map or) (content!5356 lt!1229992) (content!5356 suffix!1395))))))

(assert (=> d!1057348 (= lt!1230209 e!2219161)))

(declare-fun c!621242 () Bool)

(assert (=> d!1057348 (= c!621242 ((_ is Nil!37694) lt!1229992))))

(assert (=> d!1057348 (= (++!9378 lt!1229992 suffix!1395) lt!1230209)))

(declare-fun b!3586550 () Bool)

(assert (=> b!3586550 (= e!2219161 (Cons!37694 (h!43114 lt!1229992) (++!9378 (t!290591 lt!1229992) suffix!1395)))))

(declare-fun b!3586552 () Bool)

(assert (=> b!3586552 (= e!2219162 (or (not (= suffix!1395 Nil!37694)) (= lt!1230209 lt!1229992)))))

(assert (= (and d!1057348 c!621242) b!3586549))

(assert (= (and d!1057348 (not c!621242)) b!3586550))

(assert (= (and d!1057348 res!1447498) b!3586551))

(assert (= (and b!3586551 res!1447499) b!3586552))

(declare-fun m!4079877 () Bool)

(assert (=> b!3586551 m!4079877))

(assert (=> b!3586551 m!4079701))

(declare-fun m!4079879 () Bool)

(assert (=> b!3586551 m!4079879))

(declare-fun m!4079881 () Bool)

(assert (=> d!1057348 m!4079881))

(declare-fun m!4079883 () Bool)

(assert (=> d!1057348 m!4079883))

(declare-fun m!4079885 () Bool)

(assert (=> d!1057348 m!4079885))

(declare-fun m!4079887 () Bool)

(assert (=> b!3586550 m!4079887))

(assert (=> b!3586051 d!1057348))

(declare-fun d!1057350 () Bool)

(assert (=> d!1057350 (= (get!12146 lt!1229998) (v!37416 lt!1229998))))

(assert (=> b!3586051 d!1057350))

(declare-fun d!1057352 () Bool)

(assert (=> d!1057352 (isPrefix!2925 lt!1229992 (++!9378 lt!1229992 suffix!1395))))

(declare-fun lt!1230210 () Unit!53691)

(assert (=> d!1057352 (= lt!1230210 (choose!20862 lt!1229992 suffix!1395))))

(assert (=> d!1057352 (= (lemmaConcatTwoListThenFirstIsPrefix!1846 lt!1229992 suffix!1395) lt!1230210)))

(declare-fun bs!570054 () Bool)

(assert (= bs!570054 d!1057352))

(assert (=> bs!570054 m!4079331))

(assert (=> bs!570054 m!4079331))

(declare-fun m!4079889 () Bool)

(assert (=> bs!570054 m!4079889))

(declare-fun m!4079891 () Bool)

(assert (=> bs!570054 m!4079891))

(assert (=> b!3586051 d!1057352))

(declare-fun d!1057354 () Bool)

(declare-fun lt!1230213 () BalanceConc!22540)

(assert (=> d!1057354 (= (list!13854 lt!1230213) (originalCharacters!6276 (_1!21926 lt!1229991)))))

(declare-fun dynLambda!16204 (Int TokenValue!5792) BalanceConc!22540)

(assert (=> d!1057354 (= lt!1230213 (dynLambda!16204 (toChars!7701 (transformation!5562 (rule!8276 (_1!21926 lt!1229991)))) (value!178977 (_1!21926 lt!1229991))))))

(assert (=> d!1057354 (= (charsOf!3576 (_1!21926 lt!1229991)) lt!1230213)))

(declare-fun b_lambda!105949 () Bool)

(assert (=> (not b_lambda!105949) (not d!1057354)))

(declare-fun t!290614 () Bool)

(declare-fun tb!204561 () Bool)

(assert (=> (and b!3586039 (= (toChars!7701 (transformation!5562 (rule!8276 token!511))) (toChars!7701 (transformation!5562 (rule!8276 (_1!21926 lt!1229991))))) t!290614) tb!204561))

(declare-fun b!3586557 () Bool)

(declare-fun e!2219165 () Bool)

(declare-fun tp!1098005 () Bool)

(declare-fun inv!51026 (Conc!11463) Bool)

(assert (=> b!3586557 (= e!2219165 (and (inv!51026 (c!621151 (dynLambda!16204 (toChars!7701 (transformation!5562 (rule!8276 (_1!21926 lt!1229991)))) (value!178977 (_1!21926 lt!1229991))))) tp!1098005))))

(declare-fun result!249430 () Bool)

(declare-fun inv!51027 (BalanceConc!22540) Bool)

(assert (=> tb!204561 (= result!249430 (and (inv!51027 (dynLambda!16204 (toChars!7701 (transformation!5562 (rule!8276 (_1!21926 lt!1229991)))) (value!178977 (_1!21926 lt!1229991)))) e!2219165))))

(assert (= tb!204561 b!3586557))

(declare-fun m!4079893 () Bool)

(assert (=> b!3586557 m!4079893))

(declare-fun m!4079895 () Bool)

(assert (=> tb!204561 m!4079895))

(assert (=> d!1057354 t!290614))

(declare-fun b_and!259035 () Bool)

(assert (= b_and!258993 (and (=> t!290614 result!249430) b_and!259035)))

(declare-fun t!290616 () Bool)

(declare-fun tb!204563 () Bool)

(assert (=> (and b!3586041 (= (toChars!7701 (transformation!5562 anOtherTypeRule!33)) (toChars!7701 (transformation!5562 (rule!8276 (_1!21926 lt!1229991))))) t!290616) tb!204563))

(declare-fun result!249434 () Bool)

(assert (= result!249434 result!249430))

(assert (=> d!1057354 t!290616))

(declare-fun b_and!259037 () Bool)

(assert (= b_and!258997 (and (=> t!290616 result!249434) b_and!259037)))

(declare-fun t!290618 () Bool)

(declare-fun tb!204565 () Bool)

(assert (=> (and b!3586048 (= (toChars!7701 (transformation!5562 rule!403)) (toChars!7701 (transformation!5562 (rule!8276 (_1!21926 lt!1229991))))) t!290618) tb!204565))

(declare-fun result!249436 () Bool)

(assert (= result!249436 result!249430))

(assert (=> d!1057354 t!290618))

(declare-fun b_and!259039 () Bool)

(assert (= b_and!259001 (and (=> t!290618 result!249436) b_and!259039)))

(declare-fun tb!204567 () Bool)

(declare-fun t!290620 () Bool)

(assert (=> (and b!3586042 (= (toChars!7701 (transformation!5562 (h!43115 rules!3307))) (toChars!7701 (transformation!5562 (rule!8276 (_1!21926 lt!1229991))))) t!290620) tb!204567))

(declare-fun result!249438 () Bool)

(assert (= result!249438 result!249430))

(assert (=> d!1057354 t!290620))

(declare-fun b_and!259041 () Bool)

(assert (= b_and!259005 (and (=> t!290620 result!249438) b_and!259041)))

(declare-fun m!4079897 () Bool)

(assert (=> d!1057354 m!4079897))

(declare-fun m!4079899 () Bool)

(assert (=> d!1057354 m!4079899))

(assert (=> b!3586051 d!1057354))

(declare-fun b!3586559 () Bool)

(declare-fun res!1447502 () Bool)

(declare-fun e!2219167 () Bool)

(assert (=> b!3586559 (=> (not res!1447502) (not e!2219167))))

(assert (=> b!3586559 (= res!1447502 (= (head!7480 lt!1229997) (head!7480 lt!1229989)))))

(declare-fun d!1057356 () Bool)

(declare-fun e!2219166 () Bool)

(assert (=> d!1057356 e!2219166))

(declare-fun res!1447501 () Bool)

(assert (=> d!1057356 (=> res!1447501 e!2219166)))

(declare-fun lt!1230214 () Bool)

(assert (=> d!1057356 (= res!1447501 (not lt!1230214))))

(declare-fun e!2219168 () Bool)

(assert (=> d!1057356 (= lt!1230214 e!2219168)))

(declare-fun res!1447503 () Bool)

(assert (=> d!1057356 (=> res!1447503 e!2219168)))

(assert (=> d!1057356 (= res!1447503 ((_ is Nil!37694) lt!1229997))))

(assert (=> d!1057356 (= (isPrefix!2925 lt!1229997 lt!1229989) lt!1230214)))

(declare-fun b!3586561 () Bool)

(assert (=> b!3586561 (= e!2219166 (>= (size!28720 lt!1229989) (size!28720 lt!1229997)))))

(declare-fun b!3586560 () Bool)

(assert (=> b!3586560 (= e!2219167 (isPrefix!2925 (tail!5557 lt!1229997) (tail!5557 lt!1229989)))))

(declare-fun b!3586558 () Bool)

(assert (=> b!3586558 (= e!2219168 e!2219167)))

(declare-fun res!1447500 () Bool)

(assert (=> b!3586558 (=> (not res!1447500) (not e!2219167))))

(assert (=> b!3586558 (= res!1447500 (not ((_ is Nil!37694) lt!1229989)))))

(assert (= (and d!1057356 (not res!1447503)) b!3586558))

(assert (= (and b!3586558 res!1447500) b!3586559))

(assert (= (and b!3586559 res!1447502) b!3586560))

(assert (= (and d!1057356 (not res!1447501)) b!3586561))

(assert (=> b!3586559 m!4079613))

(assert (=> b!3586559 m!4079699))

(assert (=> b!3586561 m!4079579))

(assert (=> b!3586561 m!4079627))

(assert (=> b!3586560 m!4079631))

(assert (=> b!3586560 m!4079705))

(assert (=> b!3586560 m!4079631))

(assert (=> b!3586560 m!4079705))

(declare-fun m!4079901 () Bool)

(assert (=> b!3586560 m!4079901))

(assert (=> b!3586051 d!1057356))

(declare-fun b!3586590 () Bool)

(declare-fun res!1447525 () Bool)

(declare-fun e!2219188 () Bool)

(assert (=> b!3586590 (=> res!1447525 e!2219188)))

(assert (=> b!3586590 (= res!1447525 (not ((_ is ElementMatch!10321) (regex!5562 rule!403))))))

(declare-fun e!2219186 () Bool)

(assert (=> b!3586590 (= e!2219186 e!2219188)))

(declare-fun b!3586591 () Bool)

(declare-fun e!2219184 () Bool)

(declare-fun lt!1230217 () Bool)

(declare-fun call!259680 () Bool)

(assert (=> b!3586591 (= e!2219184 (= lt!1230217 call!259680))))

(declare-fun b!3586592 () Bool)

(declare-fun e!2219187 () Bool)

(assert (=> b!3586592 (= e!2219188 e!2219187)))

(declare-fun res!1447526 () Bool)

(assert (=> b!3586592 (=> (not res!1447526) (not e!2219187))))

(assert (=> b!3586592 (= res!1447526 (not lt!1230217))))

(declare-fun b!3586593 () Bool)

(declare-fun e!2219189 () Bool)

(assert (=> b!3586593 (= e!2219189 (not (= (head!7480 lt!1229992) (c!621150 (regex!5562 rule!403)))))))

(declare-fun b!3586594 () Bool)

(declare-fun res!1447527 () Bool)

(declare-fun e!2219183 () Bool)

(assert (=> b!3586594 (=> (not res!1447527) (not e!2219183))))

(assert (=> b!3586594 (= res!1447527 (not call!259680))))

(declare-fun b!3586595 () Bool)

(assert (=> b!3586595 (= e!2219187 e!2219189)))

(declare-fun res!1447524 () Bool)

(assert (=> b!3586595 (=> res!1447524 e!2219189)))

(assert (=> b!3586595 (= res!1447524 call!259680)))

(declare-fun b!3586596 () Bool)

(assert (=> b!3586596 (= e!2219183 (= (head!7480 lt!1229992) (c!621150 (regex!5562 rule!403))))))

(declare-fun d!1057358 () Bool)

(assert (=> d!1057358 e!2219184))

(declare-fun c!621251 () Bool)

(assert (=> d!1057358 (= c!621251 ((_ is EmptyExpr!10321) (regex!5562 rule!403)))))

(declare-fun e!2219185 () Bool)

(assert (=> d!1057358 (= lt!1230217 e!2219185)))

(declare-fun c!621250 () Bool)

(assert (=> d!1057358 (= c!621250 (isEmpty!22205 lt!1229992))))

(assert (=> d!1057358 (validRegex!4715 (regex!5562 rule!403))))

(assert (=> d!1057358 (= (matchR!4890 (regex!5562 rule!403) lt!1229992) lt!1230217)))

(declare-fun b!3586597 () Bool)

(assert (=> b!3586597 (= e!2219185 (nullable!3559 (regex!5562 rule!403)))))

(declare-fun b!3586598 () Bool)

(declare-fun res!1447522 () Bool)

(assert (=> b!3586598 (=> (not res!1447522) (not e!2219183))))

(assert (=> b!3586598 (= res!1447522 (isEmpty!22205 (tail!5557 lt!1229992)))))

(declare-fun b!3586599 () Bool)

(assert (=> b!3586599 (= e!2219186 (not lt!1230217))))

(declare-fun bm!259675 () Bool)

(assert (=> bm!259675 (= call!259680 (isEmpty!22205 lt!1229992))))

(declare-fun b!3586600 () Bool)

(declare-fun derivativeStep!3108 (Regex!10321 C!20828) Regex!10321)

(assert (=> b!3586600 (= e!2219185 (matchR!4890 (derivativeStep!3108 (regex!5562 rule!403) (head!7480 lt!1229992)) (tail!5557 lt!1229992)))))

(declare-fun b!3586601 () Bool)

(declare-fun res!1447520 () Bool)

(assert (=> b!3586601 (=> res!1447520 e!2219189)))

(assert (=> b!3586601 (= res!1447520 (not (isEmpty!22205 (tail!5557 lt!1229992))))))

(declare-fun b!3586602 () Bool)

(assert (=> b!3586602 (= e!2219184 e!2219186)))

(declare-fun c!621249 () Bool)

(assert (=> b!3586602 (= c!621249 ((_ is EmptyLang!10321) (regex!5562 rule!403)))))

(declare-fun b!3586603 () Bool)

(declare-fun res!1447523 () Bool)

(assert (=> b!3586603 (=> res!1447523 e!2219188)))

(assert (=> b!3586603 (= res!1447523 e!2219183)))

(declare-fun res!1447521 () Bool)

(assert (=> b!3586603 (=> (not res!1447521) (not e!2219183))))

(assert (=> b!3586603 (= res!1447521 lt!1230217)))

(assert (= (and d!1057358 c!621250) b!3586597))

(assert (= (and d!1057358 (not c!621250)) b!3586600))

(assert (= (and d!1057358 c!621251) b!3586591))

(assert (= (and d!1057358 (not c!621251)) b!3586602))

(assert (= (and b!3586602 c!621249) b!3586599))

(assert (= (and b!3586602 (not c!621249)) b!3586590))

(assert (= (and b!3586590 (not res!1447525)) b!3586603))

(assert (= (and b!3586603 res!1447521) b!3586594))

(assert (= (and b!3586594 res!1447527) b!3586598))

(assert (= (and b!3586598 res!1447522) b!3586596))

(assert (= (and b!3586603 (not res!1447523)) b!3586592))

(assert (= (and b!3586592 res!1447526) b!3586595))

(assert (= (and b!3586595 (not res!1447524)) b!3586601))

(assert (= (and b!3586601 (not res!1447520)) b!3586593))

(assert (= (or b!3586591 b!3586594 b!3586595) bm!259675))

(assert (=> b!3586596 m!4079697))

(assert (=> b!3586600 m!4079697))

(assert (=> b!3586600 m!4079697))

(declare-fun m!4079903 () Bool)

(assert (=> b!3586600 m!4079903))

(assert (=> b!3586600 m!4079703))

(assert (=> b!3586600 m!4079903))

(assert (=> b!3586600 m!4079703))

(declare-fun m!4079905 () Bool)

(assert (=> b!3586600 m!4079905))

(assert (=> b!3586601 m!4079703))

(assert (=> b!3586601 m!4079703))

(declare-fun m!4079907 () Bool)

(assert (=> b!3586601 m!4079907))

(declare-fun m!4079909 () Bool)

(assert (=> d!1057358 m!4079909))

(declare-fun m!4079911 () Bool)

(assert (=> d!1057358 m!4079911))

(assert (=> bm!259675 m!4079909))

(assert (=> b!3586593 m!4079697))

(assert (=> b!3586598 m!4079703))

(assert (=> b!3586598 m!4079703))

(assert (=> b!3586598 m!4079907))

(declare-fun m!4079913 () Bool)

(assert (=> b!3586597 m!4079913))

(assert (=> b!3586054 d!1057358))

(declare-fun d!1057360 () Bool)

(declare-fun res!1447532 () Bool)

(declare-fun e!2219192 () Bool)

(assert (=> d!1057360 (=> (not res!1447532) (not e!2219192))))

(assert (=> d!1057360 (= res!1447532 (validRegex!4715 (regex!5562 rule!403)))))

(assert (=> d!1057360 (= (ruleValid!1827 thiss!23823 rule!403) e!2219192)))

(declare-fun b!3586608 () Bool)

(declare-fun res!1447533 () Bool)

(assert (=> b!3586608 (=> (not res!1447533) (not e!2219192))))

(assert (=> b!3586608 (= res!1447533 (not (nullable!3559 (regex!5562 rule!403))))))

(declare-fun b!3586609 () Bool)

(assert (=> b!3586609 (= e!2219192 (not (= (tag!6228 rule!403) (String!42295 ""))))))

(assert (= (and d!1057360 res!1447532) b!3586608))

(assert (= (and b!3586608 res!1447533) b!3586609))

(assert (=> d!1057360 m!4079911))

(assert (=> b!3586608 m!4079913))

(assert (=> b!3586054 d!1057360))

(declare-fun d!1057362 () Bool)

(assert (=> d!1057362 (ruleValid!1827 thiss!23823 rule!403)))

(declare-fun lt!1230220 () Unit!53691)

(declare-fun choose!20864 (LexerInterface!5151 Rule!10924 List!37819) Unit!53691)

(assert (=> d!1057362 (= lt!1230220 (choose!20864 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1057362 (contains!7185 rules!3307 rule!403)))

(assert (=> d!1057362 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!982 thiss!23823 rule!403 rules!3307) lt!1230220)))

(declare-fun bs!570055 () Bool)

(assert (= bs!570055 d!1057362))

(assert (=> bs!570055 m!4079371))

(declare-fun m!4079915 () Bool)

(assert (=> bs!570055 m!4079915))

(assert (=> bs!570055 m!4079357))

(assert (=> b!3586054 d!1057362))

(declare-fun d!1057364 () Bool)

(assert (=> d!1057364 (= (isDefined!5986 lt!1230000) (not (isEmpty!22209 lt!1230000)))))

(declare-fun bs!570056 () Bool)

(assert (= bs!570056 d!1057364))

(declare-fun m!4079917 () Bool)

(assert (=> bs!570056 m!4079917))

(assert (=> b!3586044 d!1057364))

(declare-fun b!3586610 () Bool)

(declare-fun e!2219193 () Option!7755)

(declare-fun lt!1230223 () Option!7755)

(declare-fun lt!1230222 () Option!7755)

(assert (=> b!3586610 (= e!2219193 (ite (and ((_ is None!7754) lt!1230223) ((_ is None!7754) lt!1230222)) None!7754 (ite ((_ is None!7754) lt!1230222) lt!1230223 (ite ((_ is None!7754) lt!1230223) lt!1230222 (ite (>= (size!28718 (_1!21926 (v!37416 lt!1230223))) (size!28718 (_1!21926 (v!37416 lt!1230222)))) lt!1230223 lt!1230222)))))))

(declare-fun call!259681 () Option!7755)

(assert (=> b!3586610 (= lt!1230223 call!259681)))

(assert (=> b!3586610 (= lt!1230222 (maxPrefix!2685 thiss!23823 (t!290592 rules!3307) lt!1229992))))

(declare-fun bm!259676 () Bool)

(assert (=> bm!259676 (= call!259681 (maxPrefixOneRule!1835 thiss!23823 (h!43115 rules!3307) lt!1229992))))

(declare-fun b!3586611 () Bool)

(declare-fun res!1447535 () Bool)

(declare-fun e!2219195 () Bool)

(assert (=> b!3586611 (=> (not res!1447535) (not e!2219195))))

(declare-fun lt!1230225 () Option!7755)

(assert (=> b!3586611 (= res!1447535 (matchR!4890 (regex!5562 (rule!8276 (_1!21926 (get!12146 lt!1230225)))) (list!13854 (charsOf!3576 (_1!21926 (get!12146 lt!1230225))))))))

(declare-fun b!3586612 () Bool)

(declare-fun res!1447540 () Bool)

(assert (=> b!3586612 (=> (not res!1447540) (not e!2219195))))

(assert (=> b!3586612 (= res!1447540 (< (size!28720 (_2!21926 (get!12146 lt!1230225))) (size!28720 lt!1229992)))))

(declare-fun b!3586613 () Bool)

(declare-fun res!1447534 () Bool)

(assert (=> b!3586613 (=> (not res!1447534) (not e!2219195))))

(assert (=> b!3586613 (= res!1447534 (= (++!9378 (list!13854 (charsOf!3576 (_1!21926 (get!12146 lt!1230225)))) (_2!21926 (get!12146 lt!1230225))) lt!1229992))))

(declare-fun b!3586614 () Bool)

(declare-fun e!2219194 () Bool)

(assert (=> b!3586614 (= e!2219194 e!2219195)))

(declare-fun res!1447539 () Bool)

(assert (=> b!3586614 (=> (not res!1447539) (not e!2219195))))

(assert (=> b!3586614 (= res!1447539 (isDefined!5986 lt!1230225))))

(declare-fun b!3586615 () Bool)

(assert (=> b!3586615 (= e!2219195 (contains!7185 rules!3307 (rule!8276 (_1!21926 (get!12146 lt!1230225)))))))

(declare-fun d!1057366 () Bool)

(assert (=> d!1057366 e!2219194))

(declare-fun res!1447536 () Bool)

(assert (=> d!1057366 (=> res!1447536 e!2219194)))

(assert (=> d!1057366 (= res!1447536 (isEmpty!22209 lt!1230225))))

(assert (=> d!1057366 (= lt!1230225 e!2219193)))

(declare-fun c!621252 () Bool)

(assert (=> d!1057366 (= c!621252 (and ((_ is Cons!37695) rules!3307) ((_ is Nil!37695) (t!290592 rules!3307))))))

(declare-fun lt!1230221 () Unit!53691)

(declare-fun lt!1230224 () Unit!53691)

(assert (=> d!1057366 (= lt!1230221 lt!1230224)))

(assert (=> d!1057366 (isPrefix!2925 lt!1229992 lt!1229992)))

(assert (=> d!1057366 (= lt!1230224 (lemmaIsPrefixRefl!1875 lt!1229992 lt!1229992))))

(assert (=> d!1057366 (rulesValidInductive!1938 thiss!23823 rules!3307)))

(assert (=> d!1057366 (= (maxPrefix!2685 thiss!23823 rules!3307 lt!1229992) lt!1230225)))

(declare-fun b!3586616 () Bool)

(declare-fun res!1447538 () Bool)

(assert (=> b!3586616 (=> (not res!1447538) (not e!2219195))))

(assert (=> b!3586616 (= res!1447538 (= (value!178977 (_1!21926 (get!12146 lt!1230225))) (apply!9071 (transformation!5562 (rule!8276 (_1!21926 (get!12146 lt!1230225)))) (seqFromList!4115 (originalCharacters!6276 (_1!21926 (get!12146 lt!1230225)))))))))

(declare-fun b!3586617 () Bool)

(assert (=> b!3586617 (= e!2219193 call!259681)))

(declare-fun b!3586618 () Bool)

(declare-fun res!1447537 () Bool)

(assert (=> b!3586618 (=> (not res!1447537) (not e!2219195))))

(assert (=> b!3586618 (= res!1447537 (= (list!13854 (charsOf!3576 (_1!21926 (get!12146 lt!1230225)))) (originalCharacters!6276 (_1!21926 (get!12146 lt!1230225)))))))

(assert (= (and d!1057366 c!621252) b!3586617))

(assert (= (and d!1057366 (not c!621252)) b!3586610))

(assert (= (or b!3586617 b!3586610) bm!259676))

(assert (= (and d!1057366 (not res!1447536)) b!3586614))

(assert (= (and b!3586614 res!1447539) b!3586618))

(assert (= (and b!3586618 res!1447537) b!3586612))

(assert (= (and b!3586612 res!1447540) b!3586613))

(assert (= (and b!3586613 res!1447534) b!3586616))

(assert (= (and b!3586616 res!1447538) b!3586611))

(assert (= (and b!3586611 res!1447535) b!3586615))

(declare-fun m!4079919 () Bool)

(assert (=> b!3586610 m!4079919))

(declare-fun m!4079921 () Bool)

(assert (=> b!3586611 m!4079921))

(declare-fun m!4079923 () Bool)

(assert (=> b!3586611 m!4079923))

(assert (=> b!3586611 m!4079923))

(declare-fun m!4079925 () Bool)

(assert (=> b!3586611 m!4079925))

(assert (=> b!3586611 m!4079925))

(declare-fun m!4079927 () Bool)

(assert (=> b!3586611 m!4079927))

(assert (=> b!3586616 m!4079921))

(declare-fun m!4079929 () Bool)

(assert (=> b!3586616 m!4079929))

(assert (=> b!3586616 m!4079929))

(declare-fun m!4079931 () Bool)

(assert (=> b!3586616 m!4079931))

(assert (=> b!3586613 m!4079921))

(assert (=> b!3586613 m!4079923))

(assert (=> b!3586613 m!4079923))

(assert (=> b!3586613 m!4079925))

(assert (=> b!3586613 m!4079925))

(declare-fun m!4079933 () Bool)

(assert (=> b!3586613 m!4079933))

(declare-fun m!4079935 () Bool)

(assert (=> bm!259676 m!4079935))

(assert (=> b!3586615 m!4079921))

(declare-fun m!4079937 () Bool)

(assert (=> b!3586615 m!4079937))

(declare-fun m!4079939 () Bool)

(assert (=> d!1057366 m!4079939))

(declare-fun m!4079941 () Bool)

(assert (=> d!1057366 m!4079941))

(declare-fun m!4079943 () Bool)

(assert (=> d!1057366 m!4079943))

(assert (=> d!1057366 m!4079575))

(assert (=> b!3586618 m!4079921))

(assert (=> b!3586618 m!4079923))

(assert (=> b!3586618 m!4079923))

(assert (=> b!3586618 m!4079925))

(assert (=> b!3586612 m!4079921))

(declare-fun m!4079945 () Bool)

(assert (=> b!3586612 m!4079945))

(assert (=> b!3586612 m!4079701))

(declare-fun m!4079947 () Bool)

(assert (=> b!3586614 m!4079947))

(assert (=> b!3586044 d!1057366))

(declare-fun d!1057368 () Bool)

(assert (=> d!1057368 (= (list!13854 (charsOf!3576 token!511)) (list!13857 (c!621151 (charsOf!3576 token!511))))))

(declare-fun bs!570057 () Bool)

(assert (= bs!570057 d!1057368))

(declare-fun m!4079949 () Bool)

(assert (=> bs!570057 m!4079949))

(assert (=> b!3586044 d!1057368))

(declare-fun d!1057370 () Bool)

(declare-fun lt!1230226 () BalanceConc!22540)

(assert (=> d!1057370 (= (list!13854 lt!1230226) (originalCharacters!6276 token!511))))

(assert (=> d!1057370 (= lt!1230226 (dynLambda!16204 (toChars!7701 (transformation!5562 (rule!8276 token!511))) (value!178977 token!511)))))

(assert (=> d!1057370 (= (charsOf!3576 token!511) lt!1230226)))

(declare-fun b_lambda!105951 () Bool)

(assert (=> (not b_lambda!105951) (not d!1057370)))

(declare-fun t!290623 () Bool)

(declare-fun tb!204569 () Bool)

(assert (=> (and b!3586039 (= (toChars!7701 (transformation!5562 (rule!8276 token!511))) (toChars!7701 (transformation!5562 (rule!8276 token!511)))) t!290623) tb!204569))

(declare-fun b!3586619 () Bool)

(declare-fun e!2219196 () Bool)

(declare-fun tp!1098006 () Bool)

(assert (=> b!3586619 (= e!2219196 (and (inv!51026 (c!621151 (dynLambda!16204 (toChars!7701 (transformation!5562 (rule!8276 token!511))) (value!178977 token!511)))) tp!1098006))))

(declare-fun result!249440 () Bool)

(assert (=> tb!204569 (= result!249440 (and (inv!51027 (dynLambda!16204 (toChars!7701 (transformation!5562 (rule!8276 token!511))) (value!178977 token!511))) e!2219196))))

(assert (= tb!204569 b!3586619))

(declare-fun m!4079951 () Bool)

(assert (=> b!3586619 m!4079951))

(declare-fun m!4079953 () Bool)

(assert (=> tb!204569 m!4079953))

(assert (=> d!1057370 t!290623))

(declare-fun b_and!259043 () Bool)

(assert (= b_and!259035 (and (=> t!290623 result!249440) b_and!259043)))

(declare-fun tb!204571 () Bool)

(declare-fun t!290625 () Bool)

(assert (=> (and b!3586041 (= (toChars!7701 (transformation!5562 anOtherTypeRule!33)) (toChars!7701 (transformation!5562 (rule!8276 token!511)))) t!290625) tb!204571))

(declare-fun result!249442 () Bool)

(assert (= result!249442 result!249440))

(assert (=> d!1057370 t!290625))

(declare-fun b_and!259045 () Bool)

(assert (= b_and!259037 (and (=> t!290625 result!249442) b_and!259045)))

(declare-fun t!290627 () Bool)

(declare-fun tb!204573 () Bool)

(assert (=> (and b!3586048 (= (toChars!7701 (transformation!5562 rule!403)) (toChars!7701 (transformation!5562 (rule!8276 token!511)))) t!290627) tb!204573))

(declare-fun result!249444 () Bool)

(assert (= result!249444 result!249440))

(assert (=> d!1057370 t!290627))

(declare-fun b_and!259047 () Bool)

(assert (= b_and!259039 (and (=> t!290627 result!249444) b_and!259047)))

(declare-fun t!290629 () Bool)

(declare-fun tb!204575 () Bool)

(assert (=> (and b!3586042 (= (toChars!7701 (transformation!5562 (h!43115 rules!3307))) (toChars!7701 (transformation!5562 (rule!8276 token!511)))) t!290629) tb!204575))

(declare-fun result!249446 () Bool)

(assert (= result!249446 result!249440))

(assert (=> d!1057370 t!290629))

(declare-fun b_and!259049 () Bool)

(assert (= b_and!259041 (and (=> t!290629 result!249446) b_and!259049)))

(declare-fun m!4079955 () Bool)

(assert (=> d!1057370 m!4079955))

(declare-fun m!4079957 () Bool)

(assert (=> d!1057370 m!4079957))

(assert (=> b!3586044 d!1057370))

(declare-fun b!3586631 () Bool)

(declare-fun e!2219205 () Bool)

(declare-fun inv!16 (TokenValue!5792) Bool)

(assert (=> b!3586631 (= e!2219205 (inv!16 (value!178977 token!511)))))

(declare-fun b!3586632 () Bool)

(declare-fun res!1447543 () Bool)

(declare-fun e!2219203 () Bool)

(assert (=> b!3586632 (=> res!1447543 e!2219203)))

(assert (=> b!3586632 (= res!1447543 (not ((_ is IntegerValue!17378) (value!178977 token!511))))))

(declare-fun e!2219204 () Bool)

(assert (=> b!3586632 (= e!2219204 e!2219203)))

(declare-fun b!3586633 () Bool)

(declare-fun inv!17 (TokenValue!5792) Bool)

(assert (=> b!3586633 (= e!2219204 (inv!17 (value!178977 token!511)))))

(declare-fun b!3586634 () Bool)

(assert (=> b!3586634 (= e!2219205 e!2219204)))

(declare-fun c!621257 () Bool)

(assert (=> b!3586634 (= c!621257 ((_ is IntegerValue!17377) (value!178977 token!511)))))

(declare-fun b!3586630 () Bool)

(declare-fun inv!15 (TokenValue!5792) Bool)

(assert (=> b!3586630 (= e!2219203 (inv!15 (value!178977 token!511)))))

(declare-fun d!1057372 () Bool)

(declare-fun c!621258 () Bool)

(assert (=> d!1057372 (= c!621258 ((_ is IntegerValue!17376) (value!178977 token!511)))))

(assert (=> d!1057372 (= (inv!21 (value!178977 token!511)) e!2219205)))

(assert (= (and d!1057372 c!621258) b!3586631))

(assert (= (and d!1057372 (not c!621258)) b!3586634))

(assert (= (and b!3586634 c!621257) b!3586633))

(assert (= (and b!3586634 (not c!621257)) b!3586632))

(assert (= (and b!3586632 (not res!1447543)) b!3586630))

(declare-fun m!4079959 () Bool)

(assert (=> b!3586631 m!4079959))

(declare-fun m!4079961 () Bool)

(assert (=> b!3586633 m!4079961))

(declare-fun m!4079963 () Bool)

(assert (=> b!3586630 m!4079963))

(assert (=> b!3586055 d!1057372))

(declare-fun d!1057374 () Bool)

(declare-fun lt!1230227 () Bool)

(assert (=> d!1057374 (= lt!1230227 (select (content!5356 (usedCharacters!776 (regex!5562 rule!403))) lt!1230002))))

(declare-fun e!2219207 () Bool)

(assert (=> d!1057374 (= lt!1230227 e!2219207)))

(declare-fun res!1447544 () Bool)

(assert (=> d!1057374 (=> (not res!1447544) (not e!2219207))))

(assert (=> d!1057374 (= res!1447544 ((_ is Cons!37694) (usedCharacters!776 (regex!5562 rule!403))))))

(assert (=> d!1057374 (= (contains!7186 (usedCharacters!776 (regex!5562 rule!403)) lt!1230002) lt!1230227)))

(declare-fun b!3586635 () Bool)

(declare-fun e!2219206 () Bool)

(assert (=> b!3586635 (= e!2219207 e!2219206)))

(declare-fun res!1447545 () Bool)

(assert (=> b!3586635 (=> res!1447545 e!2219206)))

(assert (=> b!3586635 (= res!1447545 (= (h!43114 (usedCharacters!776 (regex!5562 rule!403))) lt!1230002))))

(declare-fun b!3586636 () Bool)

(assert (=> b!3586636 (= e!2219206 (contains!7186 (t!290591 (usedCharacters!776 (regex!5562 rule!403))) lt!1230002))))

(assert (= (and d!1057374 res!1447544) b!3586635))

(assert (= (and b!3586635 (not res!1447545)) b!3586636))

(assert (=> d!1057374 m!4079359))

(declare-fun m!4079965 () Bool)

(assert (=> d!1057374 m!4079965))

(declare-fun m!4079967 () Bool)

(assert (=> d!1057374 m!4079967))

(declare-fun m!4079969 () Bool)

(assert (=> b!3586636 m!4079969))

(assert (=> b!3586064 d!1057374))

(declare-fun b!3586637 () Bool)

(declare-fun c!621261 () Bool)

(assert (=> b!3586637 (= c!621261 ((_ is Star!10321) (regex!5562 rule!403)))))

(declare-fun e!2219211 () List!37818)

(declare-fun e!2219210 () List!37818)

(assert (=> b!3586637 (= e!2219211 e!2219210)))

(declare-fun b!3586638 () Bool)

(declare-fun e!2219209 () List!37818)

(declare-fun call!259682 () List!37818)

(assert (=> b!3586638 (= e!2219209 call!259682)))

(declare-fun b!3586639 () Bool)

(declare-fun call!259685 () List!37818)

(assert (=> b!3586639 (= e!2219210 call!259685)))

(declare-fun b!3586640 () Bool)

(assert (=> b!3586640 (= e!2219209 call!259682)))

(declare-fun b!3586641 () Bool)

(declare-fun e!2219208 () List!37818)

(assert (=> b!3586641 (= e!2219208 e!2219211)))

(declare-fun c!621259 () Bool)

(assert (=> b!3586641 (= c!621259 ((_ is ElementMatch!10321) (regex!5562 rule!403)))))

(declare-fun b!3586642 () Bool)

(assert (=> b!3586642 (= e!2219208 Nil!37694)))

(declare-fun d!1057376 () Bool)

(declare-fun c!621260 () Bool)

(assert (=> d!1057376 (= c!621260 (or ((_ is EmptyExpr!10321) (regex!5562 rule!403)) ((_ is EmptyLang!10321) (regex!5562 rule!403))))))

(assert (=> d!1057376 (= (usedCharacters!776 (regex!5562 rule!403)) e!2219208)))

(declare-fun b!3586643 () Bool)

(assert (=> b!3586643 (= e!2219210 e!2219209)))

(declare-fun c!621262 () Bool)

(assert (=> b!3586643 (= c!621262 ((_ is Union!10321) (regex!5562 rule!403)))))

(declare-fun bm!259677 () Bool)

(assert (=> bm!259677 (= call!259685 (usedCharacters!776 (ite c!621261 (reg!10650 (regex!5562 rule!403)) (ite c!621262 (regTwo!21155 (regex!5562 rule!403)) (regOne!21154 (regex!5562 rule!403))))))))

(declare-fun bm!259678 () Bool)

(declare-fun call!259684 () List!37818)

(assert (=> bm!259678 (= call!259684 call!259685)))

(declare-fun b!3586644 () Bool)

(assert (=> b!3586644 (= e!2219211 (Cons!37694 (c!621150 (regex!5562 rule!403)) Nil!37694))))

(declare-fun bm!259679 () Bool)

(declare-fun call!259683 () List!37818)

(assert (=> bm!259679 (= call!259683 (usedCharacters!776 (ite c!621262 (regOne!21155 (regex!5562 rule!403)) (regTwo!21154 (regex!5562 rule!403)))))))

(declare-fun bm!259680 () Bool)

(assert (=> bm!259680 (= call!259682 (++!9378 (ite c!621262 call!259683 call!259684) (ite c!621262 call!259684 call!259683)))))

(assert (= (and d!1057376 c!621260) b!3586642))

(assert (= (and d!1057376 (not c!621260)) b!3586641))

(assert (= (and b!3586641 c!621259) b!3586644))

(assert (= (and b!3586641 (not c!621259)) b!3586637))

(assert (= (and b!3586637 c!621261) b!3586639))

(assert (= (and b!3586637 (not c!621261)) b!3586643))

(assert (= (and b!3586643 c!621262) b!3586640))

(assert (= (and b!3586643 (not c!621262)) b!3586638))

(assert (= (or b!3586640 b!3586638) bm!259679))

(assert (= (or b!3586640 b!3586638) bm!259678))

(assert (= (or b!3586640 b!3586638) bm!259680))

(assert (= (or b!3586639 bm!259678) bm!259677))

(declare-fun m!4079971 () Bool)

(assert (=> bm!259677 m!4079971))

(declare-fun m!4079973 () Bool)

(assert (=> bm!259679 m!4079973))

(declare-fun m!4079975 () Bool)

(assert (=> bm!259680 m!4079975))

(assert (=> b!3586064 d!1057376))

(declare-fun d!1057378 () Bool)

(assert (=> d!1057378 (= (head!7480 suffix!1395) (h!43114 suffix!1395))))

(assert (=> b!3586064 d!1057378))

(declare-fun d!1057380 () Bool)

(assert (=> d!1057380 (= (inv!51019 (tag!6228 anOtherTypeRule!33)) (= (mod (str.len (value!178976 (tag!6228 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3586043 d!1057380))

(declare-fun d!1057382 () Bool)

(declare-fun res!1447546 () Bool)

(declare-fun e!2219212 () Bool)

(assert (=> d!1057382 (=> (not res!1447546) (not e!2219212))))

(assert (=> d!1057382 (= res!1447546 (semiInverseModEq!2357 (toChars!7701 (transformation!5562 anOtherTypeRule!33)) (toValue!7842 (transformation!5562 anOtherTypeRule!33))))))

(assert (=> d!1057382 (= (inv!51022 (transformation!5562 anOtherTypeRule!33)) e!2219212)))

(declare-fun b!3586645 () Bool)

(assert (=> b!3586645 (= e!2219212 (equivClasses!2256 (toChars!7701 (transformation!5562 anOtherTypeRule!33)) (toValue!7842 (transformation!5562 anOtherTypeRule!33))))))

(assert (= (and d!1057382 res!1447546) b!3586645))

(declare-fun m!4079977 () Bool)

(assert (=> d!1057382 m!4079977))

(declare-fun m!4079979 () Bool)

(assert (=> b!3586645 m!4079979))

(assert (=> b!3586043 d!1057382))

(declare-fun d!1057384 () Bool)

(declare-fun res!1447551 () Bool)

(declare-fun e!2219215 () Bool)

(assert (=> d!1057384 (=> (not res!1447551) (not e!2219215))))

(assert (=> d!1057384 (= res!1447551 (not (isEmpty!22205 (originalCharacters!6276 token!511))))))

(assert (=> d!1057384 (= (inv!51023 token!511) e!2219215)))

(declare-fun b!3586650 () Bool)

(declare-fun res!1447552 () Bool)

(assert (=> b!3586650 (=> (not res!1447552) (not e!2219215))))

(assert (=> b!3586650 (= res!1447552 (= (originalCharacters!6276 token!511) (list!13854 (dynLambda!16204 (toChars!7701 (transformation!5562 (rule!8276 token!511))) (value!178977 token!511)))))))

(declare-fun b!3586651 () Bool)

(assert (=> b!3586651 (= e!2219215 (= (size!28718 token!511) (size!28720 (originalCharacters!6276 token!511))))))

(assert (= (and d!1057384 res!1447551) b!3586650))

(assert (= (and b!3586650 res!1447552) b!3586651))

(declare-fun b_lambda!105953 () Bool)

(assert (=> (not b_lambda!105953) (not b!3586650)))

(assert (=> b!3586650 t!290623))

(declare-fun b_and!259051 () Bool)

(assert (= b_and!259043 (and (=> t!290623 result!249440) b_and!259051)))

(assert (=> b!3586650 t!290625))

(declare-fun b_and!259053 () Bool)

(assert (= b_and!259045 (and (=> t!290625 result!249442) b_and!259053)))

(assert (=> b!3586650 t!290627))

(declare-fun b_and!259055 () Bool)

(assert (= b_and!259047 (and (=> t!290627 result!249444) b_and!259055)))

(assert (=> b!3586650 t!290629))

(declare-fun b_and!259057 () Bool)

(assert (= b_and!259049 (and (=> t!290629 result!249446) b_and!259057)))

(declare-fun m!4079981 () Bool)

(assert (=> d!1057384 m!4079981))

(assert (=> b!3586650 m!4079957))

(assert (=> b!3586650 m!4079957))

(declare-fun m!4079983 () Bool)

(assert (=> b!3586650 m!4079983))

(declare-fun m!4079985 () Bool)

(assert (=> b!3586651 m!4079985))

(assert (=> start!332666 d!1057384))

(declare-fun d!1057386 () Bool)

(assert (=> d!1057386 (= (inv!51019 (tag!6228 rule!403)) (= (mod (str.len (value!178976 (tag!6228 rule!403))) 2) 0))))

(assert (=> b!3586046 d!1057386))

(declare-fun d!1057388 () Bool)

(declare-fun res!1447553 () Bool)

(declare-fun e!2219216 () Bool)

(assert (=> d!1057388 (=> (not res!1447553) (not e!2219216))))

(assert (=> d!1057388 (= res!1447553 (semiInverseModEq!2357 (toChars!7701 (transformation!5562 rule!403)) (toValue!7842 (transformation!5562 rule!403))))))

(assert (=> d!1057388 (= (inv!51022 (transformation!5562 rule!403)) e!2219216)))

(declare-fun b!3586652 () Bool)

(assert (=> b!3586652 (= e!2219216 (equivClasses!2256 (toChars!7701 (transformation!5562 rule!403)) (toValue!7842 (transformation!5562 rule!403))))))

(assert (= (and d!1057388 res!1447553) b!3586652))

(declare-fun m!4079987 () Bool)

(assert (=> d!1057388 m!4079987))

(declare-fun m!4079989 () Bool)

(assert (=> b!3586652 m!4079989))

(assert (=> b!3586046 d!1057388))

(declare-fun d!1057390 () Bool)

(assert (=> d!1057390 (= (isEmpty!22205 suffix!1395) ((_ is Nil!37694) suffix!1395))))

(assert (=> b!3586057 d!1057390))

(declare-fun b!3586653 () Bool)

(declare-fun res!1447559 () Bool)

(declare-fun e!2219222 () Bool)

(assert (=> b!3586653 (=> res!1447559 e!2219222)))

(assert (=> b!3586653 (= res!1447559 (not ((_ is ElementMatch!10321) (regex!5562 lt!1229993))))))

(declare-fun e!2219220 () Bool)

(assert (=> b!3586653 (= e!2219220 e!2219222)))

(declare-fun b!3586654 () Bool)

(declare-fun e!2219218 () Bool)

(declare-fun lt!1230228 () Bool)

(declare-fun call!259686 () Bool)

(assert (=> b!3586654 (= e!2219218 (= lt!1230228 call!259686))))

(declare-fun b!3586655 () Bool)

(declare-fun e!2219221 () Bool)

(assert (=> b!3586655 (= e!2219222 e!2219221)))

(declare-fun res!1447560 () Bool)

(assert (=> b!3586655 (=> (not res!1447560) (not e!2219221))))

(assert (=> b!3586655 (= res!1447560 (not lt!1230228))))

(declare-fun b!3586656 () Bool)

(declare-fun e!2219223 () Bool)

(assert (=> b!3586656 (= e!2219223 (not (= (head!7480 (list!13854 (charsOf!3576 (_1!21926 lt!1229991)))) (c!621150 (regex!5562 lt!1229993)))))))

(declare-fun b!3586657 () Bool)

(declare-fun res!1447561 () Bool)

(declare-fun e!2219217 () Bool)

(assert (=> b!3586657 (=> (not res!1447561) (not e!2219217))))

(assert (=> b!3586657 (= res!1447561 (not call!259686))))

(declare-fun b!3586658 () Bool)

(assert (=> b!3586658 (= e!2219221 e!2219223)))

(declare-fun res!1447558 () Bool)

(assert (=> b!3586658 (=> res!1447558 e!2219223)))

(assert (=> b!3586658 (= res!1447558 call!259686)))

(declare-fun b!3586659 () Bool)

(assert (=> b!3586659 (= e!2219217 (= (head!7480 (list!13854 (charsOf!3576 (_1!21926 lt!1229991)))) (c!621150 (regex!5562 lt!1229993))))))

(declare-fun d!1057392 () Bool)

(assert (=> d!1057392 e!2219218))

(declare-fun c!621265 () Bool)

(assert (=> d!1057392 (= c!621265 ((_ is EmptyExpr!10321) (regex!5562 lt!1229993)))))

(declare-fun e!2219219 () Bool)

(assert (=> d!1057392 (= lt!1230228 e!2219219)))

(declare-fun c!621264 () Bool)

(assert (=> d!1057392 (= c!621264 (isEmpty!22205 (list!13854 (charsOf!3576 (_1!21926 lt!1229991)))))))

(assert (=> d!1057392 (validRegex!4715 (regex!5562 lt!1229993))))

(assert (=> d!1057392 (= (matchR!4890 (regex!5562 lt!1229993) (list!13854 (charsOf!3576 (_1!21926 lt!1229991)))) lt!1230228)))

(declare-fun b!3586660 () Bool)

(assert (=> b!3586660 (= e!2219219 (nullable!3559 (regex!5562 lt!1229993)))))

(declare-fun b!3586661 () Bool)

(declare-fun res!1447556 () Bool)

(assert (=> b!3586661 (=> (not res!1447556) (not e!2219217))))

(assert (=> b!3586661 (= res!1447556 (isEmpty!22205 (tail!5557 (list!13854 (charsOf!3576 (_1!21926 lt!1229991))))))))

(declare-fun b!3586662 () Bool)

(assert (=> b!3586662 (= e!2219220 (not lt!1230228))))

(declare-fun bm!259681 () Bool)

(assert (=> bm!259681 (= call!259686 (isEmpty!22205 (list!13854 (charsOf!3576 (_1!21926 lt!1229991)))))))

(declare-fun b!3586663 () Bool)

(assert (=> b!3586663 (= e!2219219 (matchR!4890 (derivativeStep!3108 (regex!5562 lt!1229993) (head!7480 (list!13854 (charsOf!3576 (_1!21926 lt!1229991))))) (tail!5557 (list!13854 (charsOf!3576 (_1!21926 lt!1229991))))))))

(declare-fun b!3586664 () Bool)

(declare-fun res!1447554 () Bool)

(assert (=> b!3586664 (=> res!1447554 e!2219223)))

(assert (=> b!3586664 (= res!1447554 (not (isEmpty!22205 (tail!5557 (list!13854 (charsOf!3576 (_1!21926 lt!1229991)))))))))

(declare-fun b!3586665 () Bool)

(assert (=> b!3586665 (= e!2219218 e!2219220)))

(declare-fun c!621263 () Bool)

(assert (=> b!3586665 (= c!621263 ((_ is EmptyLang!10321) (regex!5562 lt!1229993)))))

(declare-fun b!3586666 () Bool)

(declare-fun res!1447557 () Bool)

(assert (=> b!3586666 (=> res!1447557 e!2219222)))

(assert (=> b!3586666 (= res!1447557 e!2219217)))

(declare-fun res!1447555 () Bool)

(assert (=> b!3586666 (=> (not res!1447555) (not e!2219217))))

(assert (=> b!3586666 (= res!1447555 lt!1230228)))

(assert (= (and d!1057392 c!621264) b!3586660))

(assert (= (and d!1057392 (not c!621264)) b!3586663))

(assert (= (and d!1057392 c!621265) b!3586654))

(assert (= (and d!1057392 (not c!621265)) b!3586665))

(assert (= (and b!3586665 c!621263) b!3586662))

(assert (= (and b!3586665 (not c!621263)) b!3586653))

(assert (= (and b!3586653 (not res!1447559)) b!3586666))

(assert (= (and b!3586666 res!1447555) b!3586657))

(assert (= (and b!3586657 res!1447561) b!3586661))

(assert (= (and b!3586661 res!1447556) b!3586659))

(assert (= (and b!3586666 (not res!1447557)) b!3586655))

(assert (= (and b!3586655 res!1447560) b!3586658))

(assert (= (and b!3586658 (not res!1447558)) b!3586664))

(assert (= (and b!3586664 (not res!1447554)) b!3586656))

(assert (= (or b!3586654 b!3586657 b!3586658) bm!259681))

(assert (=> b!3586659 m!4079317))

(declare-fun m!4079991 () Bool)

(assert (=> b!3586659 m!4079991))

(assert (=> b!3586663 m!4079317))

(assert (=> b!3586663 m!4079991))

(assert (=> b!3586663 m!4079991))

(declare-fun m!4079993 () Bool)

(assert (=> b!3586663 m!4079993))

(assert (=> b!3586663 m!4079317))

(declare-fun m!4079995 () Bool)

(assert (=> b!3586663 m!4079995))

(assert (=> b!3586663 m!4079993))

(assert (=> b!3586663 m!4079995))

(declare-fun m!4079997 () Bool)

(assert (=> b!3586663 m!4079997))

(assert (=> b!3586664 m!4079317))

(assert (=> b!3586664 m!4079995))

(assert (=> b!3586664 m!4079995))

(declare-fun m!4079999 () Bool)

(assert (=> b!3586664 m!4079999))

(assert (=> d!1057392 m!4079317))

(declare-fun m!4080001 () Bool)

(assert (=> d!1057392 m!4080001))

(declare-fun m!4080003 () Bool)

(assert (=> d!1057392 m!4080003))

(assert (=> bm!259681 m!4079317))

(assert (=> bm!259681 m!4080001))

(assert (=> b!3586656 m!4079317))

(assert (=> b!3586656 m!4079991))

(assert (=> b!3586661 m!4079317))

(assert (=> b!3586661 m!4079995))

(assert (=> b!3586661 m!4079995))

(assert (=> b!3586661 m!4079999))

(declare-fun m!4080005 () Bool)

(assert (=> b!3586660 m!4080005))

(assert (=> b!3586036 d!1057392))

(assert (=> b!3586036 d!1057290))

(assert (=> b!3586036 d!1057354))

(declare-fun d!1057394 () Bool)

(assert (=> d!1057394 (= (get!12145 lt!1229999) (v!37415 lt!1229999))))

(assert (=> b!3586036 d!1057394))

(declare-fun d!1057396 () Bool)

(assert (=> d!1057396 (= (isEmpty!22204 rules!3307) ((_ is Nil!37695) rules!3307))))

(assert (=> b!3586047 d!1057396))

(declare-fun d!1057398 () Bool)

(declare-fun lt!1230231 () Bool)

(declare-fun content!5357 (List!37819) (InoxSet Rule!10924))

(assert (=> d!1057398 (= lt!1230231 (select (content!5357 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2219228 () Bool)

(assert (=> d!1057398 (= lt!1230231 e!2219228)))

(declare-fun res!1447567 () Bool)

(assert (=> d!1057398 (=> (not res!1447567) (not e!2219228))))

(assert (=> d!1057398 (= res!1447567 ((_ is Cons!37695) rules!3307))))

(assert (=> d!1057398 (= (contains!7185 rules!3307 anOtherTypeRule!33) lt!1230231)))

(declare-fun b!3586671 () Bool)

(declare-fun e!2219229 () Bool)

(assert (=> b!3586671 (= e!2219228 e!2219229)))

(declare-fun res!1447566 () Bool)

(assert (=> b!3586671 (=> res!1447566 e!2219229)))

(assert (=> b!3586671 (= res!1447566 (= (h!43115 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3586672 () Bool)

(assert (=> b!3586672 (= e!2219229 (contains!7185 (t!290592 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1057398 res!1447567) b!3586671))

(assert (= (and b!3586671 (not res!1447566)) b!3586672))

(declare-fun m!4080007 () Bool)

(assert (=> d!1057398 m!4080007))

(declare-fun m!4080009 () Bool)

(assert (=> d!1057398 m!4080009))

(declare-fun m!4080011 () Bool)

(assert (=> b!3586672 m!4080011))

(assert (=> b!3586038 d!1057398))

(declare-fun d!1057400 () Bool)

(assert (=> d!1057400 (= (inv!51019 (tag!6228 (h!43115 rules!3307))) (= (mod (str.len (value!178976 (tag!6228 (h!43115 rules!3307)))) 2) 0))))

(assert (=> b!3586049 d!1057400))

(declare-fun d!1057402 () Bool)

(declare-fun res!1447568 () Bool)

(declare-fun e!2219230 () Bool)

(assert (=> d!1057402 (=> (not res!1447568) (not e!2219230))))

(assert (=> d!1057402 (= res!1447568 (semiInverseModEq!2357 (toChars!7701 (transformation!5562 (h!43115 rules!3307))) (toValue!7842 (transformation!5562 (h!43115 rules!3307)))))))

(assert (=> d!1057402 (= (inv!51022 (transformation!5562 (h!43115 rules!3307))) e!2219230)))

(declare-fun b!3586673 () Bool)

(assert (=> b!3586673 (= e!2219230 (equivClasses!2256 (toChars!7701 (transformation!5562 (h!43115 rules!3307))) (toValue!7842 (transformation!5562 (h!43115 rules!3307)))))))

(assert (= (and d!1057402 res!1447568) b!3586673))

(declare-fun m!4080013 () Bool)

(assert (=> d!1057402 m!4080013))

(declare-fun m!4080015 () Bool)

(assert (=> b!3586673 m!4080015))

(assert (=> b!3586049 d!1057402))

(declare-fun d!1057404 () Bool)

(declare-fun lt!1230232 () Bool)

(assert (=> d!1057404 (= lt!1230232 (select (content!5357 rules!3307) rule!403))))

(declare-fun e!2219231 () Bool)

(assert (=> d!1057404 (= lt!1230232 e!2219231)))

(declare-fun res!1447570 () Bool)

(assert (=> d!1057404 (=> (not res!1447570) (not e!2219231))))

(assert (=> d!1057404 (= res!1447570 ((_ is Cons!37695) rules!3307))))

(assert (=> d!1057404 (= (contains!7185 rules!3307 rule!403) lt!1230232)))

(declare-fun b!3586674 () Bool)

(declare-fun e!2219232 () Bool)

(assert (=> b!3586674 (= e!2219231 e!2219232)))

(declare-fun res!1447569 () Bool)

(assert (=> b!3586674 (=> res!1447569 e!2219232)))

(assert (=> b!3586674 (= res!1447569 (= (h!43115 rules!3307) rule!403))))

(declare-fun b!3586675 () Bool)

(assert (=> b!3586675 (= e!2219232 (contains!7185 (t!290592 rules!3307) rule!403))))

(assert (= (and d!1057404 res!1447570) b!3586674))

(assert (= (and b!3586674 (not res!1447569)) b!3586675))

(assert (=> d!1057404 m!4080007))

(declare-fun m!4080017 () Bool)

(assert (=> d!1057404 m!4080017))

(declare-fun m!4080019 () Bool)

(assert (=> b!3586675 m!4080019))

(assert (=> b!3586060 d!1057404))

(declare-fun d!1057406 () Bool)

(declare-fun res!1447575 () Bool)

(declare-fun e!2219237 () Bool)

(assert (=> d!1057406 (=> res!1447575 e!2219237)))

(assert (=> d!1057406 (= res!1447575 (not ((_ is Cons!37695) rules!3307)))))

(assert (=> d!1057406 (= (sepAndNonSepRulesDisjointChars!1732 rules!3307 rules!3307) e!2219237)))

(declare-fun b!3586680 () Bool)

(declare-fun e!2219238 () Bool)

(assert (=> b!3586680 (= e!2219237 e!2219238)))

(declare-fun res!1447576 () Bool)

(assert (=> b!3586680 (=> (not res!1447576) (not e!2219238))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!783 (Rule!10924 List!37819) Bool)

(assert (=> b!3586680 (= res!1447576 (ruleDisjointCharsFromAllFromOtherType!783 (h!43115 rules!3307) rules!3307))))

(declare-fun b!3586681 () Bool)

(assert (=> b!3586681 (= e!2219238 (sepAndNonSepRulesDisjointChars!1732 rules!3307 (t!290592 rules!3307)))))

(assert (= (and d!1057406 (not res!1447575)) b!3586680))

(assert (= (and b!3586680 res!1447576) b!3586681))

(declare-fun m!4080021 () Bool)

(assert (=> b!3586680 m!4080021))

(declare-fun m!4080023 () Bool)

(assert (=> b!3586681 m!4080023))

(assert (=> b!3586058 d!1057406))

(declare-fun d!1057408 () Bool)

(assert (=> d!1057408 (= (get!12146 lt!1230000) (v!37416 lt!1230000))))

(assert (=> b!3586037 d!1057408))

(declare-fun b!3586692 () Bool)

(declare-fun e!2219241 () Bool)

(assert (=> b!3586692 (= e!2219241 tp_is_empty!17725)))

(declare-fun b!3586693 () Bool)

(declare-fun tp!1098020 () Bool)

(declare-fun tp!1098019 () Bool)

(assert (=> b!3586693 (= e!2219241 (and tp!1098020 tp!1098019))))

(assert (=> b!3586046 (= tp!1097941 e!2219241)))

(declare-fun b!3586695 () Bool)

(declare-fun tp!1098017 () Bool)

(declare-fun tp!1098018 () Bool)

(assert (=> b!3586695 (= e!2219241 (and tp!1098017 tp!1098018))))

(declare-fun b!3586694 () Bool)

(declare-fun tp!1098021 () Bool)

(assert (=> b!3586694 (= e!2219241 tp!1098021)))

(assert (= (and b!3586046 ((_ is ElementMatch!10321) (regex!5562 rule!403))) b!3586692))

(assert (= (and b!3586046 ((_ is Concat!16114) (regex!5562 rule!403))) b!3586693))

(assert (= (and b!3586046 ((_ is Star!10321) (regex!5562 rule!403))) b!3586694))

(assert (= (and b!3586046 ((_ is Union!10321) (regex!5562 rule!403))) b!3586695))

(declare-fun b!3586696 () Bool)

(declare-fun e!2219242 () Bool)

(assert (=> b!3586696 (= e!2219242 tp_is_empty!17725)))

(declare-fun b!3586697 () Bool)

(declare-fun tp!1098025 () Bool)

(declare-fun tp!1098024 () Bool)

(assert (=> b!3586697 (= e!2219242 (and tp!1098025 tp!1098024))))

(assert (=> b!3586052 (= tp!1097949 e!2219242)))

(declare-fun b!3586699 () Bool)

(declare-fun tp!1098022 () Bool)

(declare-fun tp!1098023 () Bool)

(assert (=> b!3586699 (= e!2219242 (and tp!1098022 tp!1098023))))

(declare-fun b!3586698 () Bool)

(declare-fun tp!1098026 () Bool)

(assert (=> b!3586698 (= e!2219242 tp!1098026)))

(assert (= (and b!3586052 ((_ is ElementMatch!10321) (regex!5562 (rule!8276 token!511)))) b!3586696))

(assert (= (and b!3586052 ((_ is Concat!16114) (regex!5562 (rule!8276 token!511)))) b!3586697))

(assert (= (and b!3586052 ((_ is Star!10321) (regex!5562 (rule!8276 token!511)))) b!3586698))

(assert (= (and b!3586052 ((_ is Union!10321) (regex!5562 (rule!8276 token!511)))) b!3586699))

(declare-fun b!3586710 () Bool)

(declare-fun b_free!92373 () Bool)

(declare-fun b_next!93077 () Bool)

(assert (=> b!3586710 (= b_free!92373 (not b_next!93077))))

(declare-fun tp!1098036 () Bool)

(declare-fun b_and!259059 () Bool)

(assert (=> b!3586710 (= tp!1098036 b_and!259059)))

(declare-fun b_free!92375 () Bool)

(declare-fun b_next!93079 () Bool)

(assert (=> b!3586710 (= b_free!92375 (not b_next!93079))))

(declare-fun tb!204577 () Bool)

(declare-fun t!290631 () Bool)

(assert (=> (and b!3586710 (= (toChars!7701 (transformation!5562 (h!43115 (t!290592 rules!3307)))) (toChars!7701 (transformation!5562 (rule!8276 (_1!21926 lt!1229991))))) t!290631) tb!204577))

(declare-fun result!249452 () Bool)

(assert (= result!249452 result!249430))

(assert (=> d!1057354 t!290631))

(declare-fun t!290633 () Bool)

(declare-fun tb!204579 () Bool)

(assert (=> (and b!3586710 (= (toChars!7701 (transformation!5562 (h!43115 (t!290592 rules!3307)))) (toChars!7701 (transformation!5562 (rule!8276 token!511)))) t!290633) tb!204579))

(declare-fun result!249454 () Bool)

(assert (= result!249454 result!249440))

(assert (=> d!1057370 t!290633))

(assert (=> b!3586650 t!290633))

(declare-fun b_and!259061 () Bool)

(declare-fun tp!1098037 () Bool)

(assert (=> b!3586710 (= tp!1098037 (and (=> t!290631 result!249452) (=> t!290633 result!249454) b_and!259061))))

(declare-fun e!2219251 () Bool)

(assert (=> b!3586710 (= e!2219251 (and tp!1098036 tp!1098037))))

(declare-fun e!2219253 () Bool)

(declare-fun tp!1098035 () Bool)

(declare-fun b!3586709 () Bool)

(assert (=> b!3586709 (= e!2219253 (and tp!1098035 (inv!51019 (tag!6228 (h!43115 (t!290592 rules!3307)))) (inv!51022 (transformation!5562 (h!43115 (t!290592 rules!3307)))) e!2219251))))

(declare-fun b!3586708 () Bool)

(declare-fun e!2219252 () Bool)

(declare-fun tp!1098038 () Bool)

(assert (=> b!3586708 (= e!2219252 (and e!2219253 tp!1098038))))

(assert (=> b!3586045 (= tp!1097943 e!2219252)))

(assert (= b!3586709 b!3586710))

(assert (= b!3586708 b!3586709))

(assert (= (and b!3586045 ((_ is Cons!37695) (t!290592 rules!3307))) b!3586708))

(declare-fun m!4080025 () Bool)

(assert (=> b!3586709 m!4080025))

(declare-fun m!4080027 () Bool)

(assert (=> b!3586709 m!4080027))

(declare-fun b!3586715 () Bool)

(declare-fun e!2219257 () Bool)

(declare-fun tp!1098041 () Bool)

(assert (=> b!3586715 (= e!2219257 (and tp_is_empty!17725 tp!1098041))))

(assert (=> b!3586040 (= tp!1097939 e!2219257)))

(assert (= (and b!3586040 ((_ is Cons!37694) (t!290591 suffix!1395))) b!3586715))

(declare-fun b!3586716 () Bool)

(declare-fun e!2219258 () Bool)

(assert (=> b!3586716 (= e!2219258 tp_is_empty!17725)))

(declare-fun b!3586717 () Bool)

(declare-fun tp!1098045 () Bool)

(declare-fun tp!1098044 () Bool)

(assert (=> b!3586717 (= e!2219258 (and tp!1098045 tp!1098044))))

(assert (=> b!3586049 (= tp!1097940 e!2219258)))

(declare-fun b!3586719 () Bool)

(declare-fun tp!1098042 () Bool)

(declare-fun tp!1098043 () Bool)

(assert (=> b!3586719 (= e!2219258 (and tp!1098042 tp!1098043))))

(declare-fun b!3586718 () Bool)

(declare-fun tp!1098046 () Bool)

(assert (=> b!3586718 (= e!2219258 tp!1098046)))

(assert (= (and b!3586049 ((_ is ElementMatch!10321) (regex!5562 (h!43115 rules!3307)))) b!3586716))

(assert (= (and b!3586049 ((_ is Concat!16114) (regex!5562 (h!43115 rules!3307)))) b!3586717))

(assert (= (and b!3586049 ((_ is Star!10321) (regex!5562 (h!43115 rules!3307)))) b!3586718))

(assert (= (and b!3586049 ((_ is Union!10321) (regex!5562 (h!43115 rules!3307)))) b!3586719))

(declare-fun b!3586720 () Bool)

(declare-fun e!2219259 () Bool)

(declare-fun tp!1098047 () Bool)

(assert (=> b!3586720 (= e!2219259 (and tp_is_empty!17725 tp!1098047))))

(assert (=> b!3586055 (= tp!1097951 e!2219259)))

(assert (= (and b!3586055 ((_ is Cons!37694) (originalCharacters!6276 token!511))) b!3586720))

(declare-fun b!3586721 () Bool)

(declare-fun e!2219260 () Bool)

(assert (=> b!3586721 (= e!2219260 tp_is_empty!17725)))

(declare-fun b!3586722 () Bool)

(declare-fun tp!1098051 () Bool)

(declare-fun tp!1098050 () Bool)

(assert (=> b!3586722 (= e!2219260 (and tp!1098051 tp!1098050))))

(assert (=> b!3586043 (= tp!1097950 e!2219260)))

(declare-fun b!3586724 () Bool)

(declare-fun tp!1098048 () Bool)

(declare-fun tp!1098049 () Bool)

(assert (=> b!3586724 (= e!2219260 (and tp!1098048 tp!1098049))))

(declare-fun b!3586723 () Bool)

(declare-fun tp!1098052 () Bool)

(assert (=> b!3586723 (= e!2219260 tp!1098052)))

(assert (= (and b!3586043 ((_ is ElementMatch!10321) (regex!5562 anOtherTypeRule!33))) b!3586721))

(assert (= (and b!3586043 ((_ is Concat!16114) (regex!5562 anOtherTypeRule!33))) b!3586722))

(assert (= (and b!3586043 ((_ is Star!10321) (regex!5562 anOtherTypeRule!33))) b!3586723))

(assert (= (and b!3586043 ((_ is Union!10321) (regex!5562 anOtherTypeRule!33))) b!3586724))

(declare-fun b_lambda!105955 () Bool)

(assert (= b_lambda!105951 (or (and b!3586042 b_free!92367 (= (toChars!7701 (transformation!5562 (h!43115 rules!3307))) (toChars!7701 (transformation!5562 (rule!8276 token!511))))) (and b!3586041 b_free!92359 (= (toChars!7701 (transformation!5562 anOtherTypeRule!33)) (toChars!7701 (transformation!5562 (rule!8276 token!511))))) (and b!3586710 b_free!92375 (= (toChars!7701 (transformation!5562 (h!43115 (t!290592 rules!3307)))) (toChars!7701 (transformation!5562 (rule!8276 token!511))))) (and b!3586039 b_free!92355) (and b!3586048 b_free!92363 (= (toChars!7701 (transformation!5562 rule!403)) (toChars!7701 (transformation!5562 (rule!8276 token!511))))) b_lambda!105955)))

(declare-fun b_lambda!105957 () Bool)

(assert (= b_lambda!105953 (or (and b!3586042 b_free!92367 (= (toChars!7701 (transformation!5562 (h!43115 rules!3307))) (toChars!7701 (transformation!5562 (rule!8276 token!511))))) (and b!3586041 b_free!92359 (= (toChars!7701 (transformation!5562 anOtherTypeRule!33)) (toChars!7701 (transformation!5562 (rule!8276 token!511))))) (and b!3586710 b_free!92375 (= (toChars!7701 (transformation!5562 (h!43115 (t!290592 rules!3307)))) (toChars!7701 (transformation!5562 (rule!8276 token!511))))) (and b!3586039 b_free!92355) (and b!3586048 b_free!92363 (= (toChars!7701 (transformation!5562 rule!403)) (toChars!7701 (transformation!5562 (rule!8276 token!511))))) b_lambda!105957)))

(check-sat (not b!3586344) (not bm!259675) (not d!1057370) (not b!3586672) (not b!3586612) (not b!3586347) (not bm!259657) (not d!1057384) (not tb!204561) (not b_next!93079) (not b!3586350) (not b!3586718) (not b!3586717) (not b!3586615) (not d!1057392) (not b!3586695) (not b!3586596) (not b!3586651) (not bm!259659) (not bm!259663) (not b!3586673) (not b!3586608) (not b!3586412) (not b!3586423) (not b!3586598) (not b!3586680) (not d!1057398) (not b!3586408) (not d!1057404) (not bm!259677) (not bm!259646) (not b!3586410) (not b!3586656) (not b_next!93069) (not b!3586664) (not b!3586601) (not b!3586614) (not b!3586720) (not b!3586560) (not b!3586611) (not b!3586708) (not b!3586630) (not b!3586233) (not d!1057362) (not b_lambda!105955) b_and!259003 (not b!3586403) (not b!3586616) (not b!3586600) (not b!3586547) (not b!3586561) (not d!1057368) (not b!3586719) (not d!1057382) (not b_lambda!105957) (not b!3586675) (not d!1057282) b_and!259055 (not bm!259660) (not b!3586550) (not d!1057286) (not bm!259680) (not d!1057354) (not b!3586545) b_and!259061 (not b!3586390) (not b!3586372) (not d!1057402) (not d!1057348) (not b!3586693) (not b!3586722) (not b!3586342) (not b!3586346) (not b!3586633) b_and!259051 (not b!3586709) (not b!3586411) (not tb!204569) (not b!3586715) (not d!1057374) (not b!3586288) (not d!1057320) (not b!3586373) (not b_next!93057) (not b!3586593) (not d!1057296) (not bm!259648) (not b_next!93071) (not b!3586557) (not b!3586345) (not b!3586323) (not b!3586636) (not bm!259679) (not bm!259681) (not b!3586681) (not d!1057312) (not b_lambda!105949) (not b!3586551) (not b!3586348) (not b!3586619) b_and!259057 (not b!3586610) (not b_next!93061) (not b!3586661) (not b!3586546) b_and!259059 (not b!3586697) (not d!1057352) (not d!1057288) (not d!1057318) (not b_next!93077) (not b!3586404) (not b!3586613) (not d!1057290) tp_is_empty!17725 (not b!3586694) b_and!258995 (not d!1057388) (not b!3586659) (not d!1057364) (not b_next!93067) (not bm!259676) (not d!1057292) (not b_next!93063) (not b!3586699) (not b!3586660) (not b!3586650) (not d!1057314) b_and!258991 (not b!3586559) (not b!3586389) (not b!3586343) (not b!3586422) (not b!3586296) (not b!3586724) (not b!3586597) b_and!259053 (not b!3586631) (not b!3586723) (not b!3586374) b_and!258999 (not b!3586618) (not b_next!93065) (not d!1057360) (not b_next!93059) (not b!3586645) (not b!3586698) (not d!1057358) (not b!3586663) (not b!3586652) (not d!1057366) (not d!1057268))
(check-sat (not b_next!93079) (not b_next!93069) b_and!259003 b_and!259055 b_and!259061 b_and!259051 (not b_next!93057) (not b_next!93071) b_and!259057 (not b_next!93077) b_and!258995 b_and!258991 b_and!259053 b_and!258999 (not b_next!93061) b_and!259059 (not b_next!93067) (not b_next!93063) (not b_next!93065) (not b_next!93059))

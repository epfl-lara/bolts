; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!379060 () Bool)

(assert start!379060)

(declare-fun b!4025081 () Bool)

(declare-fun b_free!112065 () Bool)

(declare-fun b_next!112769 () Bool)

(assert (=> b!4025081 (= b_free!112065 (not b_next!112769))))

(declare-fun tp!1223407 () Bool)

(declare-fun b_and!309247 () Bool)

(assert (=> b!4025081 (= tp!1223407 b_and!309247)))

(declare-fun b_free!112067 () Bool)

(declare-fun b_next!112771 () Bool)

(assert (=> b!4025081 (= b_free!112067 (not b_next!112771))))

(declare-fun tp!1223406 () Bool)

(declare-fun b_and!309249 () Bool)

(assert (=> b!4025081 (= tp!1223406 b_and!309249)))

(declare-fun b!4025076 () Bool)

(declare-fun b_free!112069 () Bool)

(declare-fun b_next!112773 () Bool)

(assert (=> b!4025076 (= b_free!112069 (not b_next!112773))))

(declare-fun tp!1223412 () Bool)

(declare-fun b_and!309251 () Bool)

(assert (=> b!4025076 (= tp!1223412 b_and!309251)))

(declare-fun b_free!112071 () Bool)

(declare-fun b_next!112775 () Bool)

(assert (=> b!4025076 (= b_free!112071 (not b_next!112775))))

(declare-fun tp!1223405 () Bool)

(declare-fun b_and!309253 () Bool)

(assert (=> b!4025076 (= tp!1223405 b_and!309253)))

(declare-fun b!4025073 () Bool)

(declare-fun e!2497067 () Bool)

(declare-fun e!2497064 () Bool)

(assert (=> b!4025073 (= e!2497067 e!2497064)))

(declare-fun res!1638004 () Bool)

(assert (=> b!4025073 (=> res!1638004 e!2497064)))

(declare-datatypes ((C!23756 0))(
  ( (C!23757 (val!13972 Int)) )
))
(declare-datatypes ((List!43221 0))(
  ( (Nil!43097) (Cons!43097 (h!48517 C!23756) (t!333886 List!43221)) )
))
(declare-fun lt!1429931 () List!43221)

(declare-fun lt!1429928 () List!43221)

(declare-fun lt!1429929 () List!43221)

(assert (=> b!4025073 (= res!1638004 (or (not (= lt!1429929 lt!1429931)) (not (= lt!1429929 lt!1429928))))))

(assert (=> b!4025073 (= lt!1429931 lt!1429928)))

(declare-fun lt!1429924 () List!43221)

(declare-fun lt!1429932 () List!43221)

(declare-fun ++!11282 (List!43221 List!43221) List!43221)

(assert (=> b!4025073 (= lt!1429928 (++!11282 lt!1429924 lt!1429932))))

(declare-fun lt!1429937 () List!43221)

(declare-fun suffix!1299 () List!43221)

(assert (=> b!4025073 (= lt!1429931 (++!11282 lt!1429937 suffix!1299))))

(declare-fun lt!1429930 () List!43221)

(assert (=> b!4025073 (= lt!1429932 (++!11282 lt!1429930 suffix!1299))))

(declare-datatypes ((Unit!62259 0))(
  ( (Unit!62260) )
))
(declare-fun lt!1429927 () Unit!62259)

(declare-fun lemmaConcatAssociativity!2584 (List!43221 List!43221 List!43221) Unit!62259)

(assert (=> b!4025073 (= lt!1429927 (lemmaConcatAssociativity!2584 lt!1429924 lt!1429930 suffix!1299))))

(declare-fun b!4025074 () Bool)

(declare-fun e!2497061 () Bool)

(declare-fun e!2497059 () Bool)

(declare-fun tp!1223404 () Bool)

(assert (=> b!4025074 (= e!2497061 (and e!2497059 tp!1223404))))

(declare-fun b!4025075 () Bool)

(declare-fun e!2497073 () Bool)

(declare-fun lt!1429923 () List!43221)

(assert (=> b!4025075 (= e!2497073 (= lt!1429929 lt!1429923))))

(declare-fun e!2497063 () Bool)

(assert (=> b!4025076 (= e!2497063 (and tp!1223412 tp!1223405))))

(declare-fun b!4025077 () Bool)

(declare-fun e!2497074 () Bool)

(declare-fun e!2497058 () Bool)

(assert (=> b!4025077 (= e!2497074 e!2497058)))

(declare-fun res!1638003 () Bool)

(assert (=> b!4025077 (=> (not res!1638003) (not e!2497058))))

(declare-fun prefix!494 () List!43221)

(declare-fun size!32217 (List!43221) Int)

(assert (=> b!4025077 (= res!1638003 (>= (size!32217 prefix!494) (size!32217 lt!1429924)))))

(declare-datatypes ((IArray!26187 0))(
  ( (IArray!26188 (innerList!13151 List!43221)) )
))
(declare-datatypes ((Conc!13091 0))(
  ( (Node!13091 (left!32477 Conc!13091) (right!32807 Conc!13091) (csize!26412 Int) (cheight!13302 Int)) (Leaf!20238 (xs!16397 IArray!26187) (csize!26413 Int)) (Empty!13091) )
))
(declare-datatypes ((BalanceConc!25776 0))(
  ( (BalanceConc!25777 (c!695470 Conc!13091)) )
))
(declare-datatypes ((List!43222 0))(
  ( (Nil!43098) (Cons!43098 (h!48518 (_ BitVec 16)) (t!333887 List!43222)) )
))
(declare-datatypes ((TokenValue!7110 0))(
  ( (FloatLiteralValue!14220 (text!50215 List!43222)) (TokenValueExt!7109 (__x!26437 Int)) (Broken!35550 (value!216688 List!43222)) (Object!7233) (End!7110) (Def!7110) (Underscore!7110) (Match!7110) (Else!7110) (Error!7110) (Case!7110) (If!7110) (Extends!7110) (Abstract!7110) (Class!7110) (Val!7110) (DelimiterValue!14220 (del!7170 List!43222)) (KeywordValue!7116 (value!216689 List!43222)) (CommentValue!14220 (value!216690 List!43222)) (WhitespaceValue!14220 (value!216691 List!43222)) (IndentationValue!7110 (value!216692 List!43222)) (String!49267) (Int32!7110) (Broken!35551 (value!216693 List!43222)) (Boolean!7111) (Unit!62261) (OperatorValue!7113 (op!7170 List!43222)) (IdentifierValue!14220 (value!216694 List!43222)) (IdentifierValue!14221 (value!216695 List!43222)) (WhitespaceValue!14221 (value!216696 List!43222)) (True!14220) (False!14220) (Broken!35552 (value!216697 List!43222)) (Broken!35553 (value!216698 List!43222)) (True!14221) (RightBrace!7110) (RightBracket!7110) (Colon!7110) (Null!7110) (Comma!7110) (LeftBracket!7110) (False!14221) (LeftBrace!7110) (ImaginaryLiteralValue!7110 (text!50216 List!43222)) (StringLiteralValue!21330 (value!216699 List!43222)) (EOFValue!7110 (value!216700 List!43222)) (IdentValue!7110 (value!216701 List!43222)) (DelimiterValue!14221 (value!216702 List!43222)) (DedentValue!7110 (value!216703 List!43222)) (NewLineValue!7110 (value!216704 List!43222)) (IntegerValue!21330 (value!216705 (_ BitVec 32)) (text!50217 List!43222)) (IntegerValue!21331 (value!216706 Int) (text!50218 List!43222)) (Times!7110) (Or!7110) (Equal!7110) (Minus!7110) (Broken!35554 (value!216707 List!43222)) (And!7110) (Div!7110) (LessEqual!7110) (Mod!7110) (Concat!18895) (Not!7110) (Plus!7110) (SpaceValue!7110 (value!216708 List!43222)) (IntegerValue!21332 (value!216709 Int) (text!50219 List!43222)) (StringLiteralValue!21331 (text!50220 List!43222)) (FloatLiteralValue!14221 (text!50221 List!43222)) (BytesLiteralValue!7110 (value!216710 List!43222)) (CommentValue!14221 (value!216711 List!43222)) (StringLiteralValue!21332 (value!216712 List!43222)) (ErrorTokenValue!7110 (msg!7171 List!43222)) )
))
(declare-datatypes ((Regex!11785 0))(
  ( (ElementMatch!11785 (c!695471 C!23756)) (Concat!18896 (regOne!24082 Regex!11785) (regTwo!24082 Regex!11785)) (EmptyExpr!11785) (Star!11785 (reg!12114 Regex!11785)) (EmptyLang!11785) (Union!11785 (regOne!24083 Regex!11785) (regTwo!24083 Regex!11785)) )
))
(declare-datatypes ((String!49268 0))(
  ( (String!49269 (value!216713 String)) )
))
(declare-datatypes ((TokenValueInjection!13648 0))(
  ( (TokenValueInjection!13649 (toValue!9396 Int) (toChars!9255 Int)) )
))
(declare-datatypes ((Rule!13560 0))(
  ( (Rule!13561 (regex!6880 Regex!11785) (tag!7740 String!49268) (isSeparator!6880 Bool) (transformation!6880 TokenValueInjection!13648)) )
))
(declare-datatypes ((Token!12898 0))(
  ( (Token!12899 (value!216714 TokenValue!7110) (rule!9936 Rule!13560) (size!32218 Int) (originalCharacters!7480 List!43221)) )
))
(declare-fun token!484 () Token!12898)

(declare-fun list!16028 (BalanceConc!25776) List!43221)

(declare-fun charsOf!4696 (Token!12898) BalanceConc!25776)

(assert (=> b!4025077 (= lt!1429924 (list!16028 (charsOf!4696 token!484)))))

(declare-fun b!4025078 () Bool)

(declare-fun e!2497071 () Bool)

(declare-fun tp_is_empty!20541 () Bool)

(declare-fun tp!1223403 () Bool)

(assert (=> b!4025078 (= e!2497071 (and tp_is_empty!20541 tp!1223403))))

(declare-fun tp!1223401 () Bool)

(declare-fun e!2497078 () Bool)

(declare-fun e!2497077 () Bool)

(declare-fun b!4025080 () Bool)

(declare-fun inv!57567 (String!49268) Bool)

(declare-fun inv!57570 (TokenValueInjection!13648) Bool)

(assert (=> b!4025080 (= e!2497078 (and tp!1223401 (inv!57567 (tag!7740 (rule!9936 token!484))) (inv!57570 (transformation!6880 (rule!9936 token!484))) e!2497077))))

(assert (=> b!4025081 (= e!2497077 (and tp!1223407 tp!1223406))))

(declare-fun b!4025082 () Bool)

(declare-fun e!2497070 () Bool)

(declare-fun tp!1223408 () Bool)

(assert (=> b!4025082 (= e!2497070 (and tp_is_empty!20541 tp!1223408))))

(declare-fun tp!1223402 () Bool)

(declare-datatypes ((List!43223 0))(
  ( (Nil!43099) (Cons!43099 (h!48519 Rule!13560) (t!333888 List!43223)) )
))
(declare-fun rules!2999 () List!43223)

(declare-fun b!4025083 () Bool)

(assert (=> b!4025083 (= e!2497059 (and tp!1223402 (inv!57567 (tag!7740 (h!48519 rules!2999))) (inv!57570 (transformation!6880 (h!48519 rules!2999))) e!2497063))))

(declare-fun b!4025084 () Bool)

(declare-fun e!2497060 () Bool)

(declare-fun e!2497062 () Bool)

(assert (=> b!4025084 (= e!2497060 (not e!2497062))))

(declare-fun res!1637994 () Bool)

(assert (=> b!4025084 (=> res!1637994 e!2497062)))

(assert (=> b!4025084 (= res!1637994 (not (= lt!1429923 lt!1429929)))))

(declare-fun suffixResult!105 () List!43221)

(assert (=> b!4025084 (= lt!1429923 (++!11282 lt!1429924 suffixResult!105))))

(declare-fun lt!1429922 () Unit!62259)

(declare-fun lemmaInv!1089 (TokenValueInjection!13648) Unit!62259)

(assert (=> b!4025084 (= lt!1429922 (lemmaInv!1089 (transformation!6880 (rule!9936 token!484))))))

(declare-datatypes ((LexerInterface!6469 0))(
  ( (LexerInterfaceExt!6466 (__x!26438 Int)) (Lexer!6467) )
))
(declare-fun thiss!21717 () LexerInterface!6469)

(declare-fun ruleValid!2810 (LexerInterface!6469 Rule!13560) Bool)

(assert (=> b!4025084 (ruleValid!2810 thiss!21717 (rule!9936 token!484))))

(declare-fun lt!1429933 () Unit!62259)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1880 (LexerInterface!6469 Rule!13560 List!43223) Unit!62259)

(assert (=> b!4025084 (= lt!1429933 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1880 thiss!21717 (rule!9936 token!484) rules!2999))))

(declare-fun b!4025085 () Bool)

(declare-fun res!1637995 () Bool)

(assert (=> b!4025085 (=> (not res!1637995) (not e!2497074))))

(declare-fun rulesInvariant!5812 (LexerInterface!6469 List!43223) Bool)

(assert (=> b!4025085 (= res!1637995 (rulesInvariant!5812 thiss!21717 rules!2999))))

(declare-fun b!4025086 () Bool)

(declare-fun e!2497065 () Bool)

(assert (=> b!4025086 (= e!2497065 e!2497067)))

(declare-fun res!1637998 () Bool)

(assert (=> b!4025086 (=> res!1637998 e!2497067)))

(assert (=> b!4025086 (= res!1637998 (not (= lt!1429937 prefix!494)))))

(assert (=> b!4025086 (= lt!1429937 (++!11282 lt!1429924 lt!1429930))))

(declare-fun getSuffix!2384 (List!43221 List!43221) List!43221)

(assert (=> b!4025086 (= lt!1429930 (getSuffix!2384 prefix!494 lt!1429924))))

(declare-fun isPrefix!3967 (List!43221 List!43221) Bool)

(assert (=> b!4025086 (isPrefix!3967 lt!1429924 prefix!494)))

(declare-fun lt!1429926 () Unit!62259)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!531 (List!43221 List!43221 List!43221) Unit!62259)

(assert (=> b!4025086 (= lt!1429926 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!531 prefix!494 lt!1429924 lt!1429929))))

(declare-fun b!4025087 () Bool)

(assert (=> b!4025087 (= e!2497062 e!2497065)))

(declare-fun res!1637996 () Bool)

(assert (=> b!4025087 (=> res!1637996 e!2497065)))

(assert (=> b!4025087 (= res!1637996 (not (isPrefix!3967 lt!1429924 lt!1429929)))))

(assert (=> b!4025087 (isPrefix!3967 prefix!494 lt!1429929)))

(declare-fun lt!1429934 () Unit!62259)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2802 (List!43221 List!43221) Unit!62259)

(assert (=> b!4025087 (= lt!1429934 (lemmaConcatTwoListThenFirstIsPrefix!2802 prefix!494 suffix!1299))))

(assert (=> b!4025087 (isPrefix!3967 lt!1429924 lt!1429923)))

(declare-fun lt!1429935 () Unit!62259)

(assert (=> b!4025087 (= lt!1429935 (lemmaConcatTwoListThenFirstIsPrefix!2802 lt!1429924 suffixResult!105))))

(declare-fun b!4025088 () Bool)

(declare-fun res!1637999 () Bool)

(assert (=> b!4025088 (=> (not res!1637999) (not e!2497074))))

(declare-fun newSuffix!27 () List!43221)

(assert (=> b!4025088 (= res!1637999 (>= (size!32217 suffix!1299) (size!32217 newSuffix!27)))))

(declare-fun b!4025079 () Bool)

(declare-fun res!1637997 () Bool)

(assert (=> b!4025079 (=> (not res!1637997) (not e!2497058))))

(declare-fun newSuffixResult!27 () List!43221)

(assert (=> b!4025079 (= res!1637997 (= (++!11282 lt!1429924 newSuffixResult!27) (++!11282 prefix!494 newSuffix!27)))))

(declare-fun res!1637993 () Bool)

(assert (=> start!379060 (=> (not res!1637993) (not e!2497074))))

(get-info :version)

(assert (=> start!379060 (= res!1637993 ((_ is Lexer!6467) thiss!21717))))

(assert (=> start!379060 e!2497074))

(assert (=> start!379060 e!2497071))

(declare-fun e!2497075 () Bool)

(declare-fun inv!57571 (Token!12898) Bool)

(assert (=> start!379060 (and (inv!57571 token!484) e!2497075)))

(assert (=> start!379060 e!2497070))

(declare-fun e!2497068 () Bool)

(assert (=> start!379060 e!2497068))

(declare-fun e!2497057 () Bool)

(assert (=> start!379060 e!2497057))

(assert (=> start!379060 true))

(assert (=> start!379060 e!2497061))

(declare-fun e!2497069 () Bool)

(assert (=> start!379060 e!2497069))

(declare-fun b!4025089 () Bool)

(declare-fun tp!1223410 () Bool)

(assert (=> b!4025089 (= e!2497068 (and tp_is_empty!20541 tp!1223410))))

(declare-fun b!4025090 () Bool)

(assert (=> b!4025090 (= e!2497064 e!2497073)))

(declare-fun res!1638001 () Bool)

(assert (=> b!4025090 (=> res!1638001 e!2497073)))

(declare-fun contains!8560 (List!43223 Rule!13560) Bool)

(assert (=> b!4025090 (= res!1638001 (not (contains!8560 rules!2999 (rule!9936 token!484))))))

(assert (=> b!4025090 (= lt!1429932 suffixResult!105)))

(declare-fun lt!1429925 () Unit!62259)

(declare-fun lemmaSamePrefixThenSameSuffix!2128 (List!43221 List!43221 List!43221 List!43221 List!43221) Unit!62259)

(assert (=> b!4025090 (= lt!1429925 (lemmaSamePrefixThenSameSuffix!2128 lt!1429924 lt!1429932 lt!1429924 suffixResult!105 lt!1429929))))

(assert (=> b!4025090 (isPrefix!3967 lt!1429924 lt!1429928)))

(declare-fun lt!1429936 () Unit!62259)

(assert (=> b!4025090 (= lt!1429936 (lemmaConcatTwoListThenFirstIsPrefix!2802 lt!1429924 lt!1429932))))

(declare-fun b!4025091 () Bool)

(declare-fun res!1638005 () Bool)

(assert (=> b!4025091 (=> (not res!1638005) (not e!2497074))))

(assert (=> b!4025091 (= res!1638005 (isPrefix!3967 newSuffix!27 suffix!1299))))

(declare-fun b!4025092 () Bool)

(declare-fun tp!1223400 () Bool)

(assert (=> b!4025092 (= e!2497069 (and tp_is_empty!20541 tp!1223400))))

(declare-fun b!4025093 () Bool)

(declare-fun tp!1223411 () Bool)

(assert (=> b!4025093 (= e!2497057 (and tp_is_empty!20541 tp!1223411))))

(declare-fun b!4025094 () Bool)

(assert (=> b!4025094 (= e!2497058 e!2497060)))

(declare-fun res!1638002 () Bool)

(assert (=> b!4025094 (=> (not res!1638002) (not e!2497060))))

(declare-datatypes ((tuple2!42206 0))(
  ( (tuple2!42207 (_1!24237 Token!12898) (_2!24237 List!43221)) )
))
(declare-datatypes ((Option!9294 0))(
  ( (None!9293) (Some!9293 (v!39675 tuple2!42206)) )
))
(declare-fun maxPrefix!3767 (LexerInterface!6469 List!43223 List!43221) Option!9294)

(assert (=> b!4025094 (= res!1638002 (= (maxPrefix!3767 thiss!21717 rules!2999 lt!1429929) (Some!9293 (tuple2!42207 token!484 suffixResult!105))))))

(assert (=> b!4025094 (= lt!1429929 (++!11282 prefix!494 suffix!1299))))

(declare-fun b!4025095 () Bool)

(declare-fun res!1638000 () Bool)

(assert (=> b!4025095 (=> (not res!1638000) (not e!2497074))))

(declare-fun isEmpty!25729 (List!43223) Bool)

(assert (=> b!4025095 (= res!1638000 (not (isEmpty!25729 rules!2999)))))

(declare-fun b!4025096 () Bool)

(declare-fun tp!1223409 () Bool)

(declare-fun inv!21 (TokenValue!7110) Bool)

(assert (=> b!4025096 (= e!2497075 (and (inv!21 (value!216714 token!484)) e!2497078 tp!1223409))))

(assert (= (and start!379060 res!1637993) b!4025095))

(assert (= (and b!4025095 res!1638000) b!4025085))

(assert (= (and b!4025085 res!1637995) b!4025088))

(assert (= (and b!4025088 res!1637999) b!4025091))

(assert (= (and b!4025091 res!1638005) b!4025077))

(assert (= (and b!4025077 res!1638003) b!4025079))

(assert (= (and b!4025079 res!1637997) b!4025094))

(assert (= (and b!4025094 res!1638002) b!4025084))

(assert (= (and b!4025084 (not res!1637994)) b!4025087))

(assert (= (and b!4025087 (not res!1637996)) b!4025086))

(assert (= (and b!4025086 (not res!1637998)) b!4025073))

(assert (= (and b!4025073 (not res!1638004)) b!4025090))

(assert (= (and b!4025090 (not res!1638001)) b!4025075))

(assert (= (and start!379060 ((_ is Cons!43097) prefix!494)) b!4025078))

(assert (= b!4025080 b!4025081))

(assert (= b!4025096 b!4025080))

(assert (= start!379060 b!4025096))

(assert (= (and start!379060 ((_ is Cons!43097) suffixResult!105)) b!4025082))

(assert (= (and start!379060 ((_ is Cons!43097) suffix!1299)) b!4025089))

(assert (= (and start!379060 ((_ is Cons!43097) newSuffix!27)) b!4025093))

(assert (= b!4025083 b!4025076))

(assert (= b!4025074 b!4025083))

(assert (= (and start!379060 ((_ is Cons!43099) rules!2999)) b!4025074))

(assert (= (and start!379060 ((_ is Cons!43097) newSuffixResult!27)) b!4025092))

(declare-fun m!4616145 () Bool)

(assert (=> b!4025090 m!4616145))

(declare-fun m!4616147 () Bool)

(assert (=> b!4025090 m!4616147))

(declare-fun m!4616149 () Bool)

(assert (=> b!4025090 m!4616149))

(declare-fun m!4616151 () Bool)

(assert (=> b!4025090 m!4616151))

(declare-fun m!4616153 () Bool)

(assert (=> b!4025080 m!4616153))

(declare-fun m!4616155 () Bool)

(assert (=> b!4025080 m!4616155))

(declare-fun m!4616157 () Bool)

(assert (=> b!4025073 m!4616157))

(declare-fun m!4616159 () Bool)

(assert (=> b!4025073 m!4616159))

(declare-fun m!4616161 () Bool)

(assert (=> b!4025073 m!4616161))

(declare-fun m!4616163 () Bool)

(assert (=> b!4025073 m!4616163))

(declare-fun m!4616165 () Bool)

(assert (=> b!4025077 m!4616165))

(declare-fun m!4616167 () Bool)

(assert (=> b!4025077 m!4616167))

(declare-fun m!4616169 () Bool)

(assert (=> b!4025077 m!4616169))

(assert (=> b!4025077 m!4616169))

(declare-fun m!4616171 () Bool)

(assert (=> b!4025077 m!4616171))

(declare-fun m!4616173 () Bool)

(assert (=> b!4025094 m!4616173))

(declare-fun m!4616175 () Bool)

(assert (=> b!4025094 m!4616175))

(declare-fun m!4616177 () Bool)

(assert (=> b!4025083 m!4616177))

(declare-fun m!4616179 () Bool)

(assert (=> b!4025083 m!4616179))

(declare-fun m!4616181 () Bool)

(assert (=> b!4025086 m!4616181))

(declare-fun m!4616183 () Bool)

(assert (=> b!4025086 m!4616183))

(declare-fun m!4616185 () Bool)

(assert (=> b!4025086 m!4616185))

(declare-fun m!4616187 () Bool)

(assert (=> b!4025086 m!4616187))

(declare-fun m!4616189 () Bool)

(assert (=> b!4025091 m!4616189))

(declare-fun m!4616191 () Bool)

(assert (=> b!4025084 m!4616191))

(declare-fun m!4616193 () Bool)

(assert (=> b!4025084 m!4616193))

(declare-fun m!4616195 () Bool)

(assert (=> b!4025084 m!4616195))

(declare-fun m!4616197 () Bool)

(assert (=> b!4025084 m!4616197))

(declare-fun m!4616199 () Bool)

(assert (=> b!4025088 m!4616199))

(declare-fun m!4616201 () Bool)

(assert (=> b!4025088 m!4616201))

(declare-fun m!4616203 () Bool)

(assert (=> b!4025085 m!4616203))

(declare-fun m!4616205 () Bool)

(assert (=> start!379060 m!4616205))

(declare-fun m!4616207 () Bool)

(assert (=> b!4025096 m!4616207))

(declare-fun m!4616209 () Bool)

(assert (=> b!4025095 m!4616209))

(declare-fun m!4616211 () Bool)

(assert (=> b!4025079 m!4616211))

(declare-fun m!4616213 () Bool)

(assert (=> b!4025079 m!4616213))

(declare-fun m!4616215 () Bool)

(assert (=> b!4025087 m!4616215))

(declare-fun m!4616217 () Bool)

(assert (=> b!4025087 m!4616217))

(declare-fun m!4616219 () Bool)

(assert (=> b!4025087 m!4616219))

(declare-fun m!4616221 () Bool)

(assert (=> b!4025087 m!4616221))

(declare-fun m!4616223 () Bool)

(assert (=> b!4025087 m!4616223))

(check-sat b_and!309251 b_and!309253 (not b!4025082) (not b!4025092) (not b!4025089) (not b!4025083) b_and!309247 (not b_next!112769) (not b_next!112773) (not b!4025078) (not b!4025077) (not b_next!112775) (not b!4025084) (not b!4025093) (not b!4025073) (not b_next!112771) (not start!379060) (not b!4025087) b_and!309249 (not b!4025088) (not b!4025090) (not b!4025085) (not b!4025095) (not b!4025080) (not b!4025096) (not b!4025086) (not b!4025074) (not b!4025091) tp_is_empty!20541 (not b!4025094) (not b!4025079))
(check-sat b_and!309251 b_and!309253 (not b_next!112775) (not b_next!112771) b_and!309249 b_and!309247 (not b_next!112769) (not b_next!112773))

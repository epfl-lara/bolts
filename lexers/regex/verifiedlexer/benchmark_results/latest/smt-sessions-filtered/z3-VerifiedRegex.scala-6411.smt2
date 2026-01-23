; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!334506 () Bool)

(assert start!334506)

(declare-fun b!3599176 () Bool)

(declare-fun b_free!93089 () Bool)

(declare-fun b_next!93793 () Bool)

(assert (=> b!3599176 (= b_free!93089 (not b_next!93793))))

(declare-fun tp!1101129 () Bool)

(declare-fun b_and!261267 () Bool)

(assert (=> b!3599176 (= tp!1101129 b_and!261267)))

(declare-fun b_free!93091 () Bool)

(declare-fun b_next!93795 () Bool)

(assert (=> b!3599176 (= b_free!93091 (not b_next!93795))))

(declare-fun tp!1101128 () Bool)

(declare-fun b_and!261269 () Bool)

(assert (=> b!3599176 (= tp!1101128 b_and!261269)))

(declare-fun b!3599179 () Bool)

(declare-fun b_free!93093 () Bool)

(declare-fun b_next!93797 () Bool)

(assert (=> b!3599179 (= b_free!93093 (not b_next!93797))))

(declare-fun tp!1101119 () Bool)

(declare-fun b_and!261271 () Bool)

(assert (=> b!3599179 (= tp!1101119 b_and!261271)))

(declare-fun b_free!93095 () Bool)

(declare-fun b_next!93799 () Bool)

(assert (=> b!3599179 (= b_free!93095 (not b_next!93799))))

(declare-fun tp!1101125 () Bool)

(declare-fun b_and!261273 () Bool)

(assert (=> b!3599179 (= tp!1101125 b_and!261273)))

(declare-fun b!3599159 () Bool)

(declare-fun b_free!93097 () Bool)

(declare-fun b_next!93801 () Bool)

(assert (=> b!3599159 (= b_free!93097 (not b_next!93801))))

(declare-fun tp!1101127 () Bool)

(declare-fun b_and!261275 () Bool)

(assert (=> b!3599159 (= tp!1101127 b_and!261275)))

(declare-fun b_free!93099 () Bool)

(declare-fun b_next!93803 () Bool)

(assert (=> b!3599159 (= b_free!93099 (not b_next!93803))))

(declare-fun tp!1101123 () Bool)

(declare-fun b_and!261277 () Bool)

(assert (=> b!3599159 (= tp!1101123 b_and!261277)))

(declare-fun b!3599194 () Bool)

(declare-fun b_free!93101 () Bool)

(declare-fun b_next!93805 () Bool)

(assert (=> b!3599194 (= b_free!93101 (not b_next!93805))))

(declare-fun tp!1101117 () Bool)

(declare-fun b_and!261279 () Bool)

(assert (=> b!3599194 (= tp!1101117 b_and!261279)))

(declare-fun b_free!93103 () Bool)

(declare-fun b_next!93807 () Bool)

(assert (=> b!3599194 (= b_free!93103 (not b_next!93807))))

(declare-fun tp!1101130 () Bool)

(declare-fun b_and!261281 () Bool)

(assert (=> b!3599194 (= tp!1101130 b_and!261281)))

(declare-fun e!2227192 () Bool)

(assert (=> b!3599159 (= e!2227192 (and tp!1101127 tp!1101123))))

(declare-fun b!3599160 () Bool)

(declare-fun res!1454293 () Bool)

(declare-fun e!2227187 () Bool)

(assert (=> b!3599160 (=> res!1454293 e!2227187)))

(declare-datatypes ((List!37981 0))(
  ( (Nil!37857) (Cons!37857 (h!43277 (_ BitVec 16)) (t!292072 List!37981)) )
))
(declare-datatypes ((TokenValue!5832 0))(
  ( (FloatLiteralValue!11664 (text!41269 List!37981)) (TokenValueExt!5831 (__x!23881 Int)) (Broken!29160 (value!180091 List!37981)) (Object!5955) (End!5832) (Def!5832) (Underscore!5832) (Match!5832) (Else!5832) (Error!5832) (Case!5832) (If!5832) (Extends!5832) (Abstract!5832) (Class!5832) (Val!5832) (DelimiterValue!11664 (del!5892 List!37981)) (KeywordValue!5838 (value!180092 List!37981)) (CommentValue!11664 (value!180093 List!37981)) (WhitespaceValue!11664 (value!180094 List!37981)) (IndentationValue!5832 (value!180095 List!37981)) (String!42493) (Int32!5832) (Broken!29161 (value!180096 List!37981)) (Boolean!5833) (Unit!53882) (OperatorValue!5835 (op!5892 List!37981)) (IdentifierValue!11664 (value!180097 List!37981)) (IdentifierValue!11665 (value!180098 List!37981)) (WhitespaceValue!11665 (value!180099 List!37981)) (True!11664) (False!11664) (Broken!29162 (value!180100 List!37981)) (Broken!29163 (value!180101 List!37981)) (True!11665) (RightBrace!5832) (RightBracket!5832) (Colon!5832) (Null!5832) (Comma!5832) (LeftBracket!5832) (False!11665) (LeftBrace!5832) (ImaginaryLiteralValue!5832 (text!41270 List!37981)) (StringLiteralValue!17496 (value!180102 List!37981)) (EOFValue!5832 (value!180103 List!37981)) (IdentValue!5832 (value!180104 List!37981)) (DelimiterValue!11665 (value!180105 List!37981)) (DedentValue!5832 (value!180106 List!37981)) (NewLineValue!5832 (value!180107 List!37981)) (IntegerValue!17496 (value!180108 (_ BitVec 32)) (text!41271 List!37981)) (IntegerValue!17497 (value!180109 Int) (text!41272 List!37981)) (Times!5832) (Or!5832) (Equal!5832) (Minus!5832) (Broken!29164 (value!180110 List!37981)) (And!5832) (Div!5832) (LessEqual!5832) (Mod!5832) (Concat!16193) (Not!5832) (Plus!5832) (SpaceValue!5832 (value!180111 List!37981)) (IntegerValue!17498 (value!180112 Int) (text!41273 List!37981)) (StringLiteralValue!17497 (text!41274 List!37981)) (FloatLiteralValue!11665 (text!41275 List!37981)) (BytesLiteralValue!5832 (value!180113 List!37981)) (CommentValue!11665 (value!180114 List!37981)) (StringLiteralValue!17498 (value!180115 List!37981)) (ErrorTokenValue!5832 (msg!5893 List!37981)) )
))
(declare-datatypes ((C!20908 0))(
  ( (C!20909 (val!12502 Int)) )
))
(declare-datatypes ((Regex!10361 0))(
  ( (ElementMatch!10361 (c!622964 C!20908)) (Concat!16194 (regOne!21234 Regex!10361) (regTwo!21234 Regex!10361)) (EmptyExpr!10361) (Star!10361 (reg!10690 Regex!10361)) (EmptyLang!10361) (Union!10361 (regOne!21235 Regex!10361) (regTwo!21235 Regex!10361)) )
))
(declare-datatypes ((String!42494 0))(
  ( (String!42495 (value!180116 String)) )
))
(declare-datatypes ((List!37982 0))(
  ( (Nil!37858) (Cons!37858 (h!43278 C!20908) (t!292073 List!37982)) )
))
(declare-datatypes ((IArray!23055 0))(
  ( (IArray!23056 (innerList!11585 List!37982)) )
))
(declare-datatypes ((Conc!11525 0))(
  ( (Node!11525 (left!29580 Conc!11525) (right!29910 Conc!11525) (csize!23280 Int) (cheight!11736 Int)) (Leaf!17937 (xs!14727 IArray!23055) (csize!23281 Int)) (Empty!11525) )
))
(declare-datatypes ((BalanceConc!22664 0))(
  ( (BalanceConc!22665 (c!622965 Conc!11525)) )
))
(declare-datatypes ((TokenValueInjection!11092 0))(
  ( (TokenValueInjection!11093 (toValue!7886 Int) (toChars!7745 Int)) )
))
(declare-datatypes ((Rule!11004 0))(
  ( (Rule!11005 (regex!5602 Regex!10361) (tag!6290 String!42494) (isSeparator!5602 Bool) (transformation!5602 TokenValueInjection!11092)) )
))
(declare-fun anOtherTypeRule!33 () Rule!11004)

(declare-fun lt!1236213 () C!20908)

(declare-fun contains!7267 (List!37982 C!20908) Bool)

(declare-fun usedCharacters!816 (Regex!10361) List!37982)

(assert (=> b!3599160 (= res!1454293 (not (contains!7267 (usedCharacters!816 (regex!5602 anOtherTypeRule!33)) lt!1236213)))))

(declare-fun b!3599161 () Bool)

(declare-fun res!1454299 () Bool)

(declare-fun e!2227200 () Bool)

(assert (=> b!3599161 (=> (not res!1454299) (not e!2227200))))

(declare-datatypes ((List!37983 0))(
  ( (Nil!37859) (Cons!37859 (h!43279 Rule!11004) (t!292074 List!37983)) )
))
(declare-fun rules!3307 () List!37983)

(declare-fun contains!7268 (List!37983 Rule!11004) Bool)

(assert (=> b!3599161 (= res!1454299 (contains!7268 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3599162 () Bool)

(declare-datatypes ((Unit!53883 0))(
  ( (Unit!53884) )
))
(declare-fun e!2227188 () Unit!53883)

(declare-fun Unit!53885 () Unit!53883)

(assert (=> b!3599162 (= e!2227188 Unit!53885)))

(declare-fun lt!1236215 () C!20908)

(declare-fun lt!1236230 () Unit!53883)

(declare-fun rule!403 () Rule!11004)

(declare-fun lt!1236216 () List!37982)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!586 (Regex!10361 List!37982 C!20908) Unit!53883)

(assert (=> b!3599162 (= lt!1236230 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!586 (regex!5602 rule!403) lt!1236216 lt!1236215))))

(assert (=> b!3599162 false))

(declare-fun b!3599163 () Bool)

(declare-fun e!2227195 () Bool)

(declare-fun tp_is_empty!17805 () Bool)

(declare-fun tp!1101124 () Bool)

(assert (=> b!3599163 (= e!2227195 (and tp_is_empty!17805 tp!1101124))))

(declare-fun b!3599164 () Bool)

(declare-fun res!1454298 () Bool)

(assert (=> b!3599164 (=> res!1454298 e!2227187)))

(declare-fun sepAndNonSepRulesDisjointChars!1772 (List!37983 List!37983) Bool)

(assert (=> b!3599164 (= res!1454298 (not (sepAndNonSepRulesDisjointChars!1772 rules!3307 rules!3307)))))

(declare-fun b!3599165 () Bool)

(declare-fun res!1454286 () Bool)

(declare-fun e!2227198 () Bool)

(assert (=> b!3599165 (=> res!1454286 e!2227198)))

(declare-datatypes ((Token!10570 0))(
  ( (Token!10571 (value!180117 TokenValue!5832) (rule!8334 Rule!11004) (size!28846 Int) (originalCharacters!6316 List!37982)) )
))
(declare-datatypes ((tuple2!37748 0))(
  ( (tuple2!37749 (_1!22008 Token!10570) (_2!22008 List!37982)) )
))
(declare-fun lt!1236228 () tuple2!37748)

(declare-fun lt!1236221 () List!37982)

(declare-fun matchR!4930 (Regex!10361 List!37982) Bool)

(assert (=> b!3599165 (= res!1454286 (not (matchR!4930 (regex!5602 (rule!8334 (_1!22008 lt!1236228))) lt!1236221)))))

(declare-fun e!2227207 () Bool)

(declare-fun tp!1101126 () Bool)

(declare-fun b!3599166 () Bool)

(declare-fun e!2227206 () Bool)

(declare-fun inv!51209 (String!42494) Bool)

(declare-fun inv!51212 (TokenValueInjection!11092) Bool)

(assert (=> b!3599166 (= e!2227206 (and tp!1101126 (inv!51209 (tag!6290 (h!43279 rules!3307))) (inv!51212 (transformation!5602 (h!43279 rules!3307))) e!2227207))))

(declare-fun e!2227201 () Bool)

(declare-fun tp!1101121 () Bool)

(declare-fun e!2227197 () Bool)

(declare-fun token!511 () Token!10570)

(declare-fun b!3599167 () Bool)

(declare-fun inv!21 (TokenValue!5832) Bool)

(assert (=> b!3599167 (= e!2227201 (and (inv!21 (value!180117 token!511)) e!2227197 tp!1101121))))

(declare-fun b!3599168 () Bool)

(declare-fun e!2227196 () Bool)

(declare-fun e!2227202 () Bool)

(assert (=> b!3599168 (= e!2227196 (not e!2227202))))

(declare-fun res!1454282 () Bool)

(assert (=> b!3599168 (=> res!1454282 e!2227202)))

(assert (=> b!3599168 (= res!1454282 (not (matchR!4930 (regex!5602 rule!403) lt!1236216)))))

(declare-datatypes ((LexerInterface!5191 0))(
  ( (LexerInterfaceExt!5188 (__x!23882 Int)) (Lexer!5189) )
))
(declare-fun thiss!23823 () LexerInterface!5191)

(declare-fun ruleValid!1867 (LexerInterface!5191 Rule!11004) Bool)

(assert (=> b!3599168 (ruleValid!1867 thiss!23823 rule!403)))

(declare-fun lt!1236229 () Unit!53883)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1022 (LexerInterface!5191 Rule!11004 List!37983) Unit!53883)

(assert (=> b!3599168 (= lt!1236229 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1022 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3599169 () Bool)

(declare-fun res!1454284 () Bool)

(declare-fun e!2227204 () Bool)

(assert (=> b!3599169 (=> res!1454284 e!2227204)))

(assert (=> b!3599169 (= res!1454284 (not (contains!7267 lt!1236216 lt!1236215)))))

(declare-fun b!3599170 () Bool)

(declare-fun e!2227186 () Bool)

(declare-fun tp!1101118 () Bool)

(assert (=> b!3599170 (= e!2227186 (and e!2227206 tp!1101118))))

(declare-fun b!3599171 () Bool)

(declare-fun Unit!53886 () Unit!53883)

(assert (=> b!3599171 (= e!2227188 Unit!53886)))

(declare-fun e!2227208 () Bool)

(declare-fun b!3599172 () Bool)

(declare-fun tp!1101120 () Bool)

(assert (=> b!3599172 (= e!2227208 (and tp!1101120 (inv!51209 (tag!6290 rule!403)) (inv!51212 (transformation!5602 rule!403)) e!2227192))))

(declare-fun b!3599173 () Bool)

(declare-fun e!2227190 () Bool)

(assert (=> b!3599173 (= e!2227198 e!2227190)))

(declare-fun res!1454300 () Bool)

(assert (=> b!3599173 (=> res!1454300 e!2227190)))

(declare-datatypes ((Option!7834 0))(
  ( (None!7833) (Some!7833 (v!37539 tuple2!37748)) )
))
(declare-fun lt!1236220 () Option!7834)

(declare-fun lt!1236234 () BalanceConc!22664)

(declare-fun apply!9108 (TokenValueInjection!11092 BalanceConc!22664) TokenValue!5832)

(declare-fun size!28847 (BalanceConc!22664) Int)

(assert (=> b!3599173 (= res!1454300 (not (= lt!1236220 (Some!7833 (tuple2!37749 (Token!10571 (apply!9108 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))) lt!1236234) (rule!8334 (_1!22008 lt!1236228)) (size!28847 lt!1236234) lt!1236221) (_2!22008 lt!1236228))))))))

(declare-fun lt!1236235 () Unit!53883)

(declare-fun lemmaCharactersSize!655 (Token!10570) Unit!53883)

(assert (=> b!3599173 (= lt!1236235 (lemmaCharactersSize!655 (_1!22008 lt!1236228)))))

(declare-fun lt!1236237 () Unit!53883)

(declare-fun lemmaEqSameImage!793 (TokenValueInjection!11092 BalanceConc!22664 BalanceConc!22664) Unit!53883)

(declare-fun seqFromList!4155 (List!37982) BalanceConc!22664)

(assert (=> b!3599173 (= lt!1236237 (lemmaEqSameImage!793 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))) lt!1236234 (seqFromList!4155 (originalCharacters!6316 (_1!22008 lt!1236228)))))))

(declare-fun lt!1236223 () Unit!53883)

(declare-fun lemmaSemiInverse!1359 (TokenValueInjection!11092 BalanceConc!22664) Unit!53883)

(assert (=> b!3599173 (= lt!1236223 (lemmaSemiInverse!1359 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))) lt!1236234))))

(declare-fun b!3599174 () Bool)

(declare-fun res!1454304 () Bool)

(assert (=> b!3599174 (=> res!1454304 e!2227202)))

(declare-fun suffix!1395 () List!37982)

(declare-fun isEmpty!22330 (List!37982) Bool)

(assert (=> b!3599174 (= res!1454304 (isEmpty!22330 suffix!1395))))

(declare-fun e!2227189 () Bool)

(declare-fun tp!1101116 () Bool)

(declare-fun b!3599175 () Bool)

(assert (=> b!3599175 (= e!2227197 (and tp!1101116 (inv!51209 (tag!6290 (rule!8334 token!511))) (inv!51212 (transformation!5602 (rule!8334 token!511))) e!2227189))))

(assert (=> b!3599176 (= e!2227207 (and tp!1101129 tp!1101128))))

(declare-fun b!3599177 () Bool)

(declare-fun e!2227185 () Bool)

(declare-fun lt!1236240 () Rule!11004)

(assert (=> b!3599177 (= e!2227185 (= (rule!8334 (_1!22008 lt!1236228)) lt!1236240))))

(declare-fun b!3599178 () Bool)

(declare-fun res!1454289 () Bool)

(assert (=> b!3599178 (=> (not res!1454289) (not e!2227196))))

(declare-fun lt!1236236 () tuple2!37748)

(assert (=> b!3599178 (= res!1454289 (isEmpty!22330 (_2!22008 lt!1236236)))))

(declare-fun e!2227203 () Bool)

(assert (=> b!3599179 (= e!2227203 (and tp!1101119 tp!1101125))))

(declare-fun b!3599180 () Bool)

(declare-fun e!2227181 () Bool)

(assert (=> b!3599180 (= e!2227181 e!2227185)))

(declare-fun res!1454283 () Bool)

(assert (=> b!3599180 (=> (not res!1454283) (not e!2227185))))

(declare-fun list!13942 (BalanceConc!22664) List!37982)

(declare-fun charsOf!3616 (Token!10570) BalanceConc!22664)

(assert (=> b!3599180 (= res!1454283 (matchR!4930 (regex!5602 lt!1236240) (list!13942 (charsOf!3616 (_1!22008 lt!1236228)))))))

(declare-datatypes ((Option!7835 0))(
  ( (None!7834) (Some!7834 (v!37540 Rule!11004)) )
))
(declare-fun lt!1236225 () Option!7835)

(declare-fun get!12245 (Option!7835) Rule!11004)

(assert (=> b!3599180 (= lt!1236240 (get!12245 lt!1236225))))

(declare-fun res!1454296 () Bool)

(assert (=> start!334506 (=> (not res!1454296) (not e!2227200))))

(get-info :version)

(assert (=> start!334506 (= res!1454296 ((_ is Lexer!5189) thiss!23823))))

(assert (=> start!334506 e!2227200))

(assert (=> start!334506 e!2227186))

(assert (=> start!334506 e!2227195))

(assert (=> start!334506 true))

(declare-fun inv!51213 (Token!10570) Bool)

(assert (=> start!334506 (and (inv!51213 token!511) e!2227201)))

(assert (=> start!334506 e!2227208))

(declare-fun e!2227191 () Bool)

(assert (=> start!334506 e!2227191))

(declare-fun tp!1101122 () Bool)

(declare-fun b!3599181 () Bool)

(assert (=> b!3599181 (= e!2227191 (and tp!1101122 (inv!51209 (tag!6290 anOtherTypeRule!33)) (inv!51212 (transformation!5602 anOtherTypeRule!33)) e!2227203))))

(declare-fun b!3599182 () Bool)

(declare-fun res!1454295 () Bool)

(assert (=> b!3599182 (=> (not res!1454295) (not e!2227200))))

(declare-fun isEmpty!22331 (List!37983) Bool)

(assert (=> b!3599182 (= res!1454295 (not (isEmpty!22331 rules!3307)))))

(declare-fun b!3599183 () Bool)

(declare-fun res!1454291 () Bool)

(assert (=> b!3599183 (=> (not res!1454291) (not e!2227200))))

(assert (=> b!3599183 (= res!1454291 (contains!7268 rules!3307 rule!403))))

(declare-fun b!3599184 () Bool)

(assert (=> b!3599184 (= e!2227187 e!2227198)))

(declare-fun res!1454288 () Bool)

(assert (=> b!3599184 (=> res!1454288 e!2227198)))

(declare-fun lt!1236214 () List!37982)

(declare-fun isPrefix!2965 (List!37982 List!37982) Bool)

(assert (=> b!3599184 (= res!1454288 (not (isPrefix!2965 lt!1236221 lt!1236214)))))

(declare-fun ++!9418 (List!37982 List!37982) List!37982)

(assert (=> b!3599184 (isPrefix!2965 lt!1236221 (++!9418 lt!1236221 (_2!22008 lt!1236228)))))

(declare-fun lt!1236231 () Unit!53883)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1886 (List!37982 List!37982) Unit!53883)

(assert (=> b!3599184 (= lt!1236231 (lemmaConcatTwoListThenFirstIsPrefix!1886 lt!1236221 (_2!22008 lt!1236228)))))

(assert (=> b!3599184 (= lt!1236221 (list!13942 lt!1236234))))

(assert (=> b!3599184 (= lt!1236234 (charsOf!3616 (_1!22008 lt!1236228)))))

(assert (=> b!3599184 e!2227181))

(declare-fun res!1454302 () Bool)

(assert (=> b!3599184 (=> (not res!1454302) (not e!2227181))))

(declare-fun isDefined!6066 (Option!7835) Bool)

(assert (=> b!3599184 (= res!1454302 (isDefined!6066 lt!1236225))))

(declare-fun getRuleFromTag!1208 (LexerInterface!5191 List!37983 String!42494) Option!7835)

(assert (=> b!3599184 (= lt!1236225 (getRuleFromTag!1208 thiss!23823 rules!3307 (tag!6290 (rule!8334 (_1!22008 lt!1236228)))))))

(declare-fun lt!1236232 () Unit!53883)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1208 (LexerInterface!5191 List!37983 List!37982 Token!10570) Unit!53883)

(assert (=> b!3599184 (= lt!1236232 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1208 thiss!23823 rules!3307 lt!1236214 (_1!22008 lt!1236228)))))

(declare-fun get!12246 (Option!7834) tuple2!37748)

(assert (=> b!3599184 (= lt!1236228 (get!12246 lt!1236220))))

(declare-fun lt!1236222 () Unit!53883)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!871 (LexerInterface!5191 List!37983 List!37982 List!37982) Unit!53883)

(assert (=> b!3599184 (= lt!1236222 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!871 thiss!23823 rules!3307 lt!1236216 suffix!1395))))

(declare-fun maxPrefix!2725 (LexerInterface!5191 List!37983 List!37982) Option!7834)

(assert (=> b!3599184 (= lt!1236220 (maxPrefix!2725 thiss!23823 rules!3307 lt!1236214))))

(assert (=> b!3599184 (isPrefix!2965 lt!1236216 lt!1236214)))

(declare-fun lt!1236217 () Unit!53883)

(assert (=> b!3599184 (= lt!1236217 (lemmaConcatTwoListThenFirstIsPrefix!1886 lt!1236216 suffix!1395))))

(assert (=> b!3599184 (= lt!1236214 (++!9418 lt!1236216 suffix!1395))))

(declare-fun b!3599185 () Bool)

(declare-fun e!2227193 () Bool)

(assert (=> b!3599185 (= e!2227193 e!2227196)))

(declare-fun res!1454294 () Bool)

(assert (=> b!3599185 (=> (not res!1454294) (not e!2227196))))

(assert (=> b!3599185 (= res!1454294 (= (_1!22008 lt!1236236) token!511))))

(declare-fun lt!1236218 () Option!7834)

(assert (=> b!3599185 (= lt!1236236 (get!12246 lt!1236218))))

(declare-fun b!3599186 () Bool)

(declare-fun res!1454287 () Bool)

(assert (=> b!3599186 (=> (not res!1454287) (not e!2227200))))

(declare-fun rulesInvariant!4588 (LexerInterface!5191 List!37983) Bool)

(assert (=> b!3599186 (= res!1454287 (rulesInvariant!4588 thiss!23823 rules!3307))))

(declare-fun b!3599187 () Bool)

(declare-fun res!1454292 () Bool)

(assert (=> b!3599187 (=> (not res!1454292) (not e!2227196))))

(assert (=> b!3599187 (= res!1454292 (= (rule!8334 token!511) rule!403))))

(declare-fun b!3599188 () Bool)

(declare-fun e!2227199 () Bool)

(assert (=> b!3599188 (= e!2227190 e!2227199)))

(declare-fun res!1454301 () Bool)

(assert (=> b!3599188 (=> res!1454301 e!2227199)))

(declare-fun lt!1236212 () List!37982)

(declare-fun lt!1236211 () Option!7834)

(assert (=> b!3599188 (= res!1454301 (or (not (= lt!1236212 (_2!22008 lt!1236228))) (not (= lt!1236211 (Some!7833 (tuple2!37749 (_1!22008 lt!1236228) lt!1236212))))))))

(assert (=> b!3599188 (= (_2!22008 lt!1236228) lt!1236212)))

(declare-fun lt!1236226 () Unit!53883)

(declare-fun lemmaSamePrefixThenSameSuffix!1320 (List!37982 List!37982 List!37982 List!37982 List!37982) Unit!53883)

(assert (=> b!3599188 (= lt!1236226 (lemmaSamePrefixThenSameSuffix!1320 lt!1236221 (_2!22008 lt!1236228) lt!1236221 lt!1236212 lt!1236214))))

(declare-fun getSuffix!1540 (List!37982 List!37982) List!37982)

(assert (=> b!3599188 (= lt!1236212 (getSuffix!1540 lt!1236214 lt!1236221))))

(declare-fun lt!1236238 () Int)

(declare-fun lt!1236227 () TokenValue!5832)

(assert (=> b!3599188 (= lt!1236211 (Some!7833 (tuple2!37749 (Token!10571 lt!1236227 (rule!8334 (_1!22008 lt!1236228)) lt!1236238 lt!1236221) (_2!22008 lt!1236228))))))

(declare-fun maxPrefixOneRule!1869 (LexerInterface!5191 Rule!11004 List!37982) Option!7834)

(assert (=> b!3599188 (= lt!1236211 (maxPrefixOneRule!1869 thiss!23823 (rule!8334 (_1!22008 lt!1236228)) lt!1236214))))

(declare-fun size!28848 (List!37982) Int)

(assert (=> b!3599188 (= lt!1236238 (size!28848 lt!1236221))))

(assert (=> b!3599188 (= lt!1236227 (apply!9108 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))) (seqFromList!4155 lt!1236221)))))

(declare-fun lt!1236219 () Unit!53883)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!941 (LexerInterface!5191 List!37983 List!37982 List!37982 List!37982 Rule!11004) Unit!53883)

(assert (=> b!3599188 (= lt!1236219 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!941 thiss!23823 rules!3307 lt!1236221 lt!1236214 (_2!22008 lt!1236228) (rule!8334 (_1!22008 lt!1236228))))))

(declare-fun b!3599189 () Bool)

(assert (=> b!3599189 (= e!2227200 e!2227193)))

(declare-fun res!1454303 () Bool)

(assert (=> b!3599189 (=> (not res!1454303) (not e!2227193))))

(declare-fun isDefined!6067 (Option!7834) Bool)

(assert (=> b!3599189 (= res!1454303 (isDefined!6067 lt!1236218))))

(assert (=> b!3599189 (= lt!1236218 (maxPrefix!2725 thiss!23823 rules!3307 lt!1236216))))

(assert (=> b!3599189 (= lt!1236216 (list!13942 (charsOf!3616 token!511)))))

(declare-fun b!3599190 () Bool)

(assert (=> b!3599190 (= e!2227202 e!2227187)))

(declare-fun res!1454290 () Bool)

(assert (=> b!3599190 (=> res!1454290 e!2227187)))

(declare-fun lt!1236224 () List!37982)

(assert (=> b!3599190 (= res!1454290 (contains!7267 lt!1236224 lt!1236213))))

(declare-fun head!7542 (List!37982) C!20908)

(assert (=> b!3599190 (= lt!1236213 (head!7542 suffix!1395))))

(assert (=> b!3599190 (= lt!1236224 (usedCharacters!816 (regex!5602 rule!403)))))

(declare-fun b!3599191 () Bool)

(assert (=> b!3599191 (= e!2227199 e!2227204)))

(declare-fun res!1454297 () Bool)

(assert (=> b!3599191 (=> res!1454297 e!2227204)))

(assert (=> b!3599191 (= res!1454297 (or (not (isSeparator!5602 rule!403)) (isSeparator!5602 (rule!8334 (_1!22008 lt!1236228)))))))

(declare-fun lt!1236239 () Unit!53883)

(assert (=> b!3599191 (= lt!1236239 e!2227188)))

(declare-fun c!622963 () Bool)

(declare-fun lt!1236233 () Bool)

(assert (=> b!3599191 (= c!622963 lt!1236233)))

(assert (=> b!3599191 (= lt!1236233 (not (contains!7267 lt!1236224 lt!1236215)))))

(assert (=> b!3599191 (= lt!1236215 (head!7542 lt!1236221))))

(declare-fun b!3599192 () Bool)

(assert (=> b!3599192 (= e!2227204 (or lt!1236233 (not (= lt!1236221 Nil!37858))))))

(declare-fun b!3599193 () Bool)

(declare-fun res!1454285 () Bool)

(assert (=> b!3599193 (=> (not res!1454285) (not e!2227200))))

(assert (=> b!3599193 (= res!1454285 (not (= (isSeparator!5602 anOtherTypeRule!33) (isSeparator!5602 rule!403))))))

(assert (=> b!3599194 (= e!2227189 (and tp!1101117 tp!1101130))))

(assert (= (and start!334506 res!1454296) b!3599182))

(assert (= (and b!3599182 res!1454295) b!3599186))

(assert (= (and b!3599186 res!1454287) b!3599183))

(assert (= (and b!3599183 res!1454291) b!3599161))

(assert (= (and b!3599161 res!1454299) b!3599193))

(assert (= (and b!3599193 res!1454285) b!3599189))

(assert (= (and b!3599189 res!1454303) b!3599185))

(assert (= (and b!3599185 res!1454294) b!3599178))

(assert (= (and b!3599178 res!1454289) b!3599187))

(assert (= (and b!3599187 res!1454292) b!3599168))

(assert (= (and b!3599168 (not res!1454282)) b!3599174))

(assert (= (and b!3599174 (not res!1454304)) b!3599190))

(assert (= (and b!3599190 (not res!1454290)) b!3599160))

(assert (= (and b!3599160 (not res!1454293)) b!3599164))

(assert (= (and b!3599164 (not res!1454298)) b!3599184))

(assert (= (and b!3599184 res!1454302) b!3599180))

(assert (= (and b!3599180 res!1454283) b!3599177))

(assert (= (and b!3599184 (not res!1454288)) b!3599165))

(assert (= (and b!3599165 (not res!1454286)) b!3599173))

(assert (= (and b!3599173 (not res!1454300)) b!3599188))

(assert (= (and b!3599188 (not res!1454301)) b!3599191))

(assert (= (and b!3599191 c!622963) b!3599162))

(assert (= (and b!3599191 (not c!622963)) b!3599171))

(assert (= (and b!3599191 (not res!1454297)) b!3599169))

(assert (= (and b!3599169 (not res!1454284)) b!3599192))

(assert (= b!3599166 b!3599176))

(assert (= b!3599170 b!3599166))

(assert (= (and start!334506 ((_ is Cons!37859) rules!3307)) b!3599170))

(assert (= (and start!334506 ((_ is Cons!37858) suffix!1395)) b!3599163))

(assert (= b!3599175 b!3599194))

(assert (= b!3599167 b!3599175))

(assert (= start!334506 b!3599167))

(assert (= b!3599172 b!3599159))

(assert (= start!334506 b!3599172))

(assert (= b!3599181 b!3599179))

(assert (= start!334506 b!3599181))

(declare-fun m!4094737 () Bool)

(assert (=> b!3599166 m!4094737))

(declare-fun m!4094739 () Bool)

(assert (=> b!3599166 m!4094739))

(declare-fun m!4094741 () Bool)

(assert (=> b!3599189 m!4094741))

(declare-fun m!4094743 () Bool)

(assert (=> b!3599189 m!4094743))

(declare-fun m!4094745 () Bool)

(assert (=> b!3599189 m!4094745))

(assert (=> b!3599189 m!4094745))

(declare-fun m!4094747 () Bool)

(assert (=> b!3599189 m!4094747))

(declare-fun m!4094749 () Bool)

(assert (=> start!334506 m!4094749))

(declare-fun m!4094751 () Bool)

(assert (=> b!3599165 m!4094751))

(declare-fun m!4094753 () Bool)

(assert (=> b!3599186 m!4094753))

(declare-fun m!4094755 () Bool)

(assert (=> b!3599174 m!4094755))

(declare-fun m!4094757 () Bool)

(assert (=> b!3599180 m!4094757))

(assert (=> b!3599180 m!4094757))

(declare-fun m!4094759 () Bool)

(assert (=> b!3599180 m!4094759))

(assert (=> b!3599180 m!4094759))

(declare-fun m!4094761 () Bool)

(assert (=> b!3599180 m!4094761))

(declare-fun m!4094763 () Bool)

(assert (=> b!3599180 m!4094763))

(declare-fun m!4094765 () Bool)

(assert (=> b!3599162 m!4094765))

(declare-fun m!4094767 () Bool)

(assert (=> b!3599167 m!4094767))

(declare-fun m!4094769 () Bool)

(assert (=> b!3599190 m!4094769))

(declare-fun m!4094771 () Bool)

(assert (=> b!3599190 m!4094771))

(declare-fun m!4094773 () Bool)

(assert (=> b!3599190 m!4094773))

(declare-fun m!4094775 () Bool)

(assert (=> b!3599188 m!4094775))

(declare-fun m!4094777 () Bool)

(assert (=> b!3599188 m!4094777))

(declare-fun m!4094779 () Bool)

(assert (=> b!3599188 m!4094779))

(declare-fun m!4094781 () Bool)

(assert (=> b!3599188 m!4094781))

(declare-fun m!4094783 () Bool)

(assert (=> b!3599188 m!4094783))

(declare-fun m!4094785 () Bool)

(assert (=> b!3599188 m!4094785))

(assert (=> b!3599188 m!4094775))

(declare-fun m!4094787 () Bool)

(assert (=> b!3599188 m!4094787))

(declare-fun m!4094789 () Bool)

(assert (=> b!3599160 m!4094789))

(assert (=> b!3599160 m!4094789))

(declare-fun m!4094791 () Bool)

(assert (=> b!3599160 m!4094791))

(declare-fun m!4094793 () Bool)

(assert (=> b!3599168 m!4094793))

(declare-fun m!4094795 () Bool)

(assert (=> b!3599168 m!4094795))

(declare-fun m!4094797 () Bool)

(assert (=> b!3599168 m!4094797))

(declare-fun m!4094799 () Bool)

(assert (=> b!3599191 m!4094799))

(declare-fun m!4094801 () Bool)

(assert (=> b!3599191 m!4094801))

(declare-fun m!4094803 () Bool)

(assert (=> b!3599181 m!4094803))

(declare-fun m!4094805 () Bool)

(assert (=> b!3599181 m!4094805))

(declare-fun m!4094807 () Bool)

(assert (=> b!3599169 m!4094807))

(declare-fun m!4094809 () Bool)

(assert (=> b!3599172 m!4094809))

(declare-fun m!4094811 () Bool)

(assert (=> b!3599172 m!4094811))

(declare-fun m!4094813 () Bool)

(assert (=> b!3599184 m!4094813))

(declare-fun m!4094815 () Bool)

(assert (=> b!3599184 m!4094815))

(declare-fun m!4094817 () Bool)

(assert (=> b!3599184 m!4094817))

(declare-fun m!4094819 () Bool)

(assert (=> b!3599184 m!4094819))

(declare-fun m!4094821 () Bool)

(assert (=> b!3599184 m!4094821))

(assert (=> b!3599184 m!4094757))

(assert (=> b!3599184 m!4094819))

(declare-fun m!4094823 () Bool)

(assert (=> b!3599184 m!4094823))

(declare-fun m!4094825 () Bool)

(assert (=> b!3599184 m!4094825))

(declare-fun m!4094827 () Bool)

(assert (=> b!3599184 m!4094827))

(declare-fun m!4094829 () Bool)

(assert (=> b!3599184 m!4094829))

(declare-fun m!4094831 () Bool)

(assert (=> b!3599184 m!4094831))

(declare-fun m!4094833 () Bool)

(assert (=> b!3599184 m!4094833))

(declare-fun m!4094835 () Bool)

(assert (=> b!3599184 m!4094835))

(declare-fun m!4094837 () Bool)

(assert (=> b!3599184 m!4094837))

(declare-fun m!4094839 () Bool)

(assert (=> b!3599184 m!4094839))

(declare-fun m!4094841 () Bool)

(assert (=> b!3599161 m!4094841))

(declare-fun m!4094843 () Bool)

(assert (=> b!3599182 m!4094843))

(declare-fun m!4094845 () Bool)

(assert (=> b!3599185 m!4094845))

(declare-fun m!4094847 () Bool)

(assert (=> b!3599164 m!4094847))

(declare-fun m!4094849 () Bool)

(assert (=> b!3599183 m!4094849))

(declare-fun m!4094851 () Bool)

(assert (=> b!3599173 m!4094851))

(declare-fun m!4094853 () Bool)

(assert (=> b!3599173 m!4094853))

(declare-fun m!4094855 () Bool)

(assert (=> b!3599173 m!4094855))

(declare-fun m!4094857 () Bool)

(assert (=> b!3599173 m!4094857))

(declare-fun m!4094859 () Bool)

(assert (=> b!3599173 m!4094859))

(assert (=> b!3599173 m!4094851))

(declare-fun m!4094861 () Bool)

(assert (=> b!3599173 m!4094861))

(declare-fun m!4094863 () Bool)

(assert (=> b!3599178 m!4094863))

(declare-fun m!4094865 () Bool)

(assert (=> b!3599175 m!4094865))

(declare-fun m!4094867 () Bool)

(assert (=> b!3599175 m!4094867))

(check-sat (not b!3599183) (not b_next!93795) (not b!3599180) (not b!3599188) (not b_next!93797) b_and!261281 (not b!3599169) (not start!334506) b_and!261267 (not b!3599167) (not b_next!93803) (not b!3599161) b_and!261269 (not b!3599170) (not b!3599178) (not b!3599189) (not b_next!93805) (not b!3599163) b_and!261273 b_and!261271 b_and!261277 (not b!3599165) (not b!3599184) (not b!3599182) (not b_next!93793) (not b_next!93801) b_and!261279 (not b!3599173) (not b!3599174) (not b!3599186) (not b!3599175) (not b!3599191) (not b!3599168) (not b!3599160) tp_is_empty!17805 (not b_next!93807) (not b!3599164) (not b!3599172) b_and!261275 (not b!3599181) (not b_next!93799) (not b!3599166) (not b!3599162) (not b!3599185) (not b!3599190))
(check-sat (not b_next!93795) (not b_next!93805) b_and!261273 (not b_next!93797) (not b_next!93793) b_and!261281 b_and!261267 (not b_next!93807) b_and!261275 (not b_next!93803) (not b_next!93799) b_and!261269 b_and!261271 b_and!261277 (not b_next!93801) b_and!261279)
(get-model)

(declare-fun b!3599290 () Bool)

(declare-fun e!2227268 () Bool)

(declare-fun derivativeStep!3130 (Regex!10361 C!20908) Regex!10361)

(declare-fun tail!5579 (List!37982) List!37982)

(assert (=> b!3599290 (= e!2227268 (matchR!4930 (derivativeStep!3130 (regex!5602 lt!1236240) (head!7542 (list!13942 (charsOf!3616 (_1!22008 lt!1236228))))) (tail!5579 (list!13942 (charsOf!3616 (_1!22008 lt!1236228))))))))

(declare-fun b!3599291 () Bool)

(declare-fun e!2227271 () Bool)

(declare-fun e!2227269 () Bool)

(assert (=> b!3599291 (= e!2227271 e!2227269)))

(declare-fun res!1454375 () Bool)

(assert (=> b!3599291 (=> res!1454375 e!2227269)))

(declare-fun call!260322 () Bool)

(assert (=> b!3599291 (= res!1454375 call!260322)))

(declare-fun d!1060580 () Bool)

(declare-fun e!2227272 () Bool)

(assert (=> d!1060580 e!2227272))

(declare-fun c!622984 () Bool)

(assert (=> d!1060580 (= c!622984 ((_ is EmptyExpr!10361) (regex!5602 lt!1236240)))))

(declare-fun lt!1236257 () Bool)

(assert (=> d!1060580 (= lt!1236257 e!2227268)))

(declare-fun c!622983 () Bool)

(assert (=> d!1060580 (= c!622983 (isEmpty!22330 (list!13942 (charsOf!3616 (_1!22008 lt!1236228)))))))

(declare-fun validRegex!4739 (Regex!10361) Bool)

(assert (=> d!1060580 (validRegex!4739 (regex!5602 lt!1236240))))

(assert (=> d!1060580 (= (matchR!4930 (regex!5602 lt!1236240) (list!13942 (charsOf!3616 (_1!22008 lt!1236228)))) lt!1236257)))

(declare-fun b!3599292 () Bool)

(declare-fun nullable!3581 (Regex!10361) Bool)

(assert (=> b!3599292 (= e!2227268 (nullable!3581 (regex!5602 lt!1236240)))))

(declare-fun b!3599293 () Bool)

(assert (=> b!3599293 (= e!2227272 (= lt!1236257 call!260322))))

(declare-fun b!3599294 () Bool)

(declare-fun res!1454374 () Bool)

(declare-fun e!2227273 () Bool)

(assert (=> b!3599294 (=> (not res!1454374) (not e!2227273))))

(assert (=> b!3599294 (= res!1454374 (not call!260322))))

(declare-fun b!3599295 () Bool)

(assert (=> b!3599295 (= e!2227273 (= (head!7542 (list!13942 (charsOf!3616 (_1!22008 lt!1236228)))) (c!622964 (regex!5602 lt!1236240))))))

(declare-fun b!3599296 () Bool)

(assert (=> b!3599296 (= e!2227269 (not (= (head!7542 (list!13942 (charsOf!3616 (_1!22008 lt!1236228)))) (c!622964 (regex!5602 lt!1236240)))))))

(declare-fun b!3599297 () Bool)

(declare-fun res!1454379 () Bool)

(assert (=> b!3599297 (=> (not res!1454379) (not e!2227273))))

(assert (=> b!3599297 (= res!1454379 (isEmpty!22330 (tail!5579 (list!13942 (charsOf!3616 (_1!22008 lt!1236228))))))))

(declare-fun b!3599298 () Bool)

(declare-fun res!1454377 () Bool)

(declare-fun e!2227274 () Bool)

(assert (=> b!3599298 (=> res!1454377 e!2227274)))

(assert (=> b!3599298 (= res!1454377 (not ((_ is ElementMatch!10361) (regex!5602 lt!1236240))))))

(declare-fun e!2227270 () Bool)

(assert (=> b!3599298 (= e!2227270 e!2227274)))

(declare-fun b!3599299 () Bool)

(declare-fun res!1454378 () Bool)

(assert (=> b!3599299 (=> res!1454378 e!2227274)))

(assert (=> b!3599299 (= res!1454378 e!2227273)))

(declare-fun res!1454373 () Bool)

(assert (=> b!3599299 (=> (not res!1454373) (not e!2227273))))

(assert (=> b!3599299 (= res!1454373 lt!1236257)))

(declare-fun bm!260317 () Bool)

(assert (=> bm!260317 (= call!260322 (isEmpty!22330 (list!13942 (charsOf!3616 (_1!22008 lt!1236228)))))))

(declare-fun b!3599300 () Bool)

(declare-fun res!1454376 () Bool)

(assert (=> b!3599300 (=> res!1454376 e!2227269)))

(assert (=> b!3599300 (= res!1454376 (not (isEmpty!22330 (tail!5579 (list!13942 (charsOf!3616 (_1!22008 lt!1236228)))))))))

(declare-fun b!3599301 () Bool)

(assert (=> b!3599301 (= e!2227270 (not lt!1236257))))

(declare-fun b!3599302 () Bool)

(assert (=> b!3599302 (= e!2227274 e!2227271)))

(declare-fun res!1454380 () Bool)

(assert (=> b!3599302 (=> (not res!1454380) (not e!2227271))))

(assert (=> b!3599302 (= res!1454380 (not lt!1236257))))

(declare-fun b!3599303 () Bool)

(assert (=> b!3599303 (= e!2227272 e!2227270)))

(declare-fun c!622982 () Bool)

(assert (=> b!3599303 (= c!622982 ((_ is EmptyLang!10361) (regex!5602 lt!1236240)))))

(assert (= (and d!1060580 c!622983) b!3599292))

(assert (= (and d!1060580 (not c!622983)) b!3599290))

(assert (= (and d!1060580 c!622984) b!3599293))

(assert (= (and d!1060580 (not c!622984)) b!3599303))

(assert (= (and b!3599303 c!622982) b!3599301))

(assert (= (and b!3599303 (not c!622982)) b!3599298))

(assert (= (and b!3599298 (not res!1454377)) b!3599299))

(assert (= (and b!3599299 res!1454373) b!3599294))

(assert (= (and b!3599294 res!1454374) b!3599297))

(assert (= (and b!3599297 res!1454379) b!3599295))

(assert (= (and b!3599299 (not res!1454378)) b!3599302))

(assert (= (and b!3599302 res!1454380) b!3599291))

(assert (= (and b!3599291 (not res!1454375)) b!3599300))

(assert (= (and b!3599300 (not res!1454376)) b!3599296))

(assert (= (or b!3599293 b!3599291 b!3599294) bm!260317))

(assert (=> b!3599297 m!4094759))

(declare-fun m!4094931 () Bool)

(assert (=> b!3599297 m!4094931))

(assert (=> b!3599297 m!4094931))

(declare-fun m!4094933 () Bool)

(assert (=> b!3599297 m!4094933))

(assert (=> b!3599300 m!4094759))

(assert (=> b!3599300 m!4094931))

(assert (=> b!3599300 m!4094931))

(assert (=> b!3599300 m!4094933))

(assert (=> d!1060580 m!4094759))

(declare-fun m!4094935 () Bool)

(assert (=> d!1060580 m!4094935))

(declare-fun m!4094937 () Bool)

(assert (=> d!1060580 m!4094937))

(assert (=> b!3599295 m!4094759))

(declare-fun m!4094939 () Bool)

(assert (=> b!3599295 m!4094939))

(assert (=> b!3599296 m!4094759))

(assert (=> b!3599296 m!4094939))

(assert (=> b!3599290 m!4094759))

(assert (=> b!3599290 m!4094939))

(assert (=> b!3599290 m!4094939))

(declare-fun m!4094941 () Bool)

(assert (=> b!3599290 m!4094941))

(assert (=> b!3599290 m!4094759))

(assert (=> b!3599290 m!4094931))

(assert (=> b!3599290 m!4094941))

(assert (=> b!3599290 m!4094931))

(declare-fun m!4094943 () Bool)

(assert (=> b!3599290 m!4094943))

(assert (=> bm!260317 m!4094759))

(assert (=> bm!260317 m!4094935))

(declare-fun m!4094945 () Bool)

(assert (=> b!3599292 m!4094945))

(assert (=> b!3599180 d!1060580))

(declare-fun d!1060600 () Bool)

(declare-fun list!13944 (Conc!11525) List!37982)

(assert (=> d!1060600 (= (list!13942 (charsOf!3616 (_1!22008 lt!1236228))) (list!13944 (c!622965 (charsOf!3616 (_1!22008 lt!1236228)))))))

(declare-fun bs!570493 () Bool)

(assert (= bs!570493 d!1060600))

(declare-fun m!4094947 () Bool)

(assert (=> bs!570493 m!4094947))

(assert (=> b!3599180 d!1060600))

(declare-fun d!1060602 () Bool)

(declare-fun lt!1236260 () BalanceConc!22664)

(assert (=> d!1060602 (= (list!13942 lt!1236260) (originalCharacters!6316 (_1!22008 lt!1236228)))))

(declare-fun dynLambda!16333 (Int TokenValue!5832) BalanceConc!22664)

(assert (=> d!1060602 (= lt!1236260 (dynLambda!16333 (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228)))) (value!180117 (_1!22008 lt!1236228))))))

(assert (=> d!1060602 (= (charsOf!3616 (_1!22008 lt!1236228)) lt!1236260)))

(declare-fun b_lambda!106427 () Bool)

(assert (=> (not b_lambda!106427) (not d!1060602)))

(declare-fun t!292092 () Bool)

(declare-fun tb!205873 () Bool)

(assert (=> (and b!3599176 (= (toChars!7745 (transformation!5602 (h!43279 rules!3307))) (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292092) tb!205873))

(declare-fun b!3599308 () Bool)

(declare-fun e!2227277 () Bool)

(declare-fun tp!1101136 () Bool)

(declare-fun inv!51216 (Conc!11525) Bool)

(assert (=> b!3599308 (= e!2227277 (and (inv!51216 (c!622965 (dynLambda!16333 (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228)))) (value!180117 (_1!22008 lt!1236228))))) tp!1101136))))

(declare-fun result!250958 () Bool)

(declare-fun inv!51217 (BalanceConc!22664) Bool)

(assert (=> tb!205873 (= result!250958 (and (inv!51217 (dynLambda!16333 (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228)))) (value!180117 (_1!22008 lt!1236228)))) e!2227277))))

(assert (= tb!205873 b!3599308))

(declare-fun m!4094949 () Bool)

(assert (=> b!3599308 m!4094949))

(declare-fun m!4094951 () Bool)

(assert (=> tb!205873 m!4094951))

(assert (=> d!1060602 t!292092))

(declare-fun b_and!261299 () Bool)

(assert (= b_and!261269 (and (=> t!292092 result!250958) b_and!261299)))

(declare-fun t!292094 () Bool)

(declare-fun tb!205875 () Bool)

(assert (=> (and b!3599179 (= (toChars!7745 (transformation!5602 anOtherTypeRule!33)) (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292094) tb!205875))

(declare-fun result!250962 () Bool)

(assert (= result!250962 result!250958))

(assert (=> d!1060602 t!292094))

(declare-fun b_and!261301 () Bool)

(assert (= b_and!261273 (and (=> t!292094 result!250962) b_and!261301)))

(declare-fun tb!205877 () Bool)

(declare-fun t!292096 () Bool)

(assert (=> (and b!3599159 (= (toChars!7745 (transformation!5602 rule!403)) (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292096) tb!205877))

(declare-fun result!250964 () Bool)

(assert (= result!250964 result!250958))

(assert (=> d!1060602 t!292096))

(declare-fun b_and!261303 () Bool)

(assert (= b_and!261277 (and (=> t!292096 result!250964) b_and!261303)))

(declare-fun tb!205879 () Bool)

(declare-fun t!292098 () Bool)

(assert (=> (and b!3599194 (= (toChars!7745 (transformation!5602 (rule!8334 token!511))) (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292098) tb!205879))

(declare-fun result!250966 () Bool)

(assert (= result!250966 result!250958))

(assert (=> d!1060602 t!292098))

(declare-fun b_and!261305 () Bool)

(assert (= b_and!261281 (and (=> t!292098 result!250966) b_and!261305)))

(declare-fun m!4094953 () Bool)

(assert (=> d!1060602 m!4094953))

(declare-fun m!4094955 () Bool)

(assert (=> d!1060602 m!4094955))

(assert (=> b!3599180 d!1060602))

(declare-fun d!1060604 () Bool)

(assert (=> d!1060604 (= (get!12245 lt!1236225) (v!37540 lt!1236225))))

(assert (=> b!3599180 d!1060604))

(declare-fun d!1060606 () Bool)

(assert (=> d!1060606 (= (isEmpty!22331 rules!3307) ((_ is Nil!37859) rules!3307))))

(assert (=> b!3599182 d!1060606))

(declare-fun d!1060608 () Bool)

(assert (=> d!1060608 (= (inv!51209 (tag!6290 anOtherTypeRule!33)) (= (mod (str.len (value!180116 (tag!6290 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3599181 d!1060608))

(declare-fun d!1060610 () Bool)

(declare-fun res!1454383 () Bool)

(declare-fun e!2227280 () Bool)

(assert (=> d!1060610 (=> (not res!1454383) (not e!2227280))))

(declare-fun semiInverseModEq!2379 (Int Int) Bool)

(assert (=> d!1060610 (= res!1454383 (semiInverseModEq!2379 (toChars!7745 (transformation!5602 anOtherTypeRule!33)) (toValue!7886 (transformation!5602 anOtherTypeRule!33))))))

(assert (=> d!1060610 (= (inv!51212 (transformation!5602 anOtherTypeRule!33)) e!2227280)))

(declare-fun b!3599311 () Bool)

(declare-fun equivClasses!2278 (Int Int) Bool)

(assert (=> b!3599311 (= e!2227280 (equivClasses!2278 (toChars!7745 (transformation!5602 anOtherTypeRule!33)) (toValue!7886 (transformation!5602 anOtherTypeRule!33))))))

(assert (= (and d!1060610 res!1454383) b!3599311))

(declare-fun m!4094957 () Bool)

(assert (=> d!1060610 m!4094957))

(declare-fun m!4094959 () Bool)

(assert (=> b!3599311 m!4094959))

(assert (=> b!3599181 d!1060610))

(declare-fun d!1060612 () Bool)

(declare-fun lt!1236263 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5400 (List!37982) (InoxSet C!20908))

(assert (=> d!1060612 (= lt!1236263 (select (content!5400 (usedCharacters!816 (regex!5602 anOtherTypeRule!33))) lt!1236213))))

(declare-fun e!2227285 () Bool)

(assert (=> d!1060612 (= lt!1236263 e!2227285)))

(declare-fun res!1454389 () Bool)

(assert (=> d!1060612 (=> (not res!1454389) (not e!2227285))))

(assert (=> d!1060612 (= res!1454389 ((_ is Cons!37858) (usedCharacters!816 (regex!5602 anOtherTypeRule!33))))))

(assert (=> d!1060612 (= (contains!7267 (usedCharacters!816 (regex!5602 anOtherTypeRule!33)) lt!1236213) lt!1236263)))

(declare-fun b!3599316 () Bool)

(declare-fun e!2227286 () Bool)

(assert (=> b!3599316 (= e!2227285 e!2227286)))

(declare-fun res!1454388 () Bool)

(assert (=> b!3599316 (=> res!1454388 e!2227286)))

(assert (=> b!3599316 (= res!1454388 (= (h!43278 (usedCharacters!816 (regex!5602 anOtherTypeRule!33))) lt!1236213))))

(declare-fun b!3599317 () Bool)

(assert (=> b!3599317 (= e!2227286 (contains!7267 (t!292073 (usedCharacters!816 (regex!5602 anOtherTypeRule!33))) lt!1236213))))

(assert (= (and d!1060612 res!1454389) b!3599316))

(assert (= (and b!3599316 (not res!1454388)) b!3599317))

(assert (=> d!1060612 m!4094789))

(declare-fun m!4094961 () Bool)

(assert (=> d!1060612 m!4094961))

(declare-fun m!4094963 () Bool)

(assert (=> d!1060612 m!4094963))

(declare-fun m!4094965 () Bool)

(assert (=> b!3599317 m!4094965))

(assert (=> b!3599160 d!1060612))

(declare-fun d!1060614 () Bool)

(declare-fun c!622993 () Bool)

(assert (=> d!1060614 (= c!622993 (or ((_ is EmptyExpr!10361) (regex!5602 anOtherTypeRule!33)) ((_ is EmptyLang!10361) (regex!5602 anOtherTypeRule!33))))))

(declare-fun e!2227295 () List!37982)

(assert (=> d!1060614 (= (usedCharacters!816 (regex!5602 anOtherTypeRule!33)) e!2227295)))

(declare-fun b!3599334 () Bool)

(declare-fun c!622995 () Bool)

(assert (=> b!3599334 (= c!622995 ((_ is Star!10361) (regex!5602 anOtherTypeRule!33)))))

(declare-fun e!2227298 () List!37982)

(declare-fun e!2227296 () List!37982)

(assert (=> b!3599334 (= e!2227298 e!2227296)))

(declare-fun bm!260326 () Bool)

(declare-fun call!260333 () List!37982)

(declare-fun call!260334 () List!37982)

(assert (=> bm!260326 (= call!260333 call!260334)))

(declare-fun b!3599335 () Bool)

(assert (=> b!3599335 (= e!2227298 (Cons!37858 (c!622964 (regex!5602 anOtherTypeRule!33)) Nil!37858))))

(declare-fun b!3599336 () Bool)

(declare-fun e!2227297 () List!37982)

(declare-fun call!260332 () List!37982)

(assert (=> b!3599336 (= e!2227297 call!260332)))

(declare-fun b!3599337 () Bool)

(assert (=> b!3599337 (= e!2227297 call!260332)))

(declare-fun b!3599338 () Bool)

(assert (=> b!3599338 (= e!2227296 e!2227297)))

(declare-fun c!622996 () Bool)

(assert (=> b!3599338 (= c!622996 ((_ is Union!10361) (regex!5602 anOtherTypeRule!33)))))

(declare-fun call!260331 () List!37982)

(declare-fun bm!260327 () Bool)

(assert (=> bm!260327 (= call!260332 (++!9418 (ite c!622996 call!260333 call!260331) (ite c!622996 call!260331 call!260333)))))

(declare-fun bm!260328 () Bool)

(assert (=> bm!260328 (= call!260331 (usedCharacters!816 (ite c!622996 (regTwo!21235 (regex!5602 anOtherTypeRule!33)) (regOne!21234 (regex!5602 anOtherTypeRule!33)))))))

(declare-fun bm!260329 () Bool)

(assert (=> bm!260329 (= call!260334 (usedCharacters!816 (ite c!622995 (reg!10690 (regex!5602 anOtherTypeRule!33)) (ite c!622996 (regOne!21235 (regex!5602 anOtherTypeRule!33)) (regTwo!21234 (regex!5602 anOtherTypeRule!33))))))))

(declare-fun b!3599339 () Bool)

(assert (=> b!3599339 (= e!2227296 call!260334)))

(declare-fun b!3599340 () Bool)

(assert (=> b!3599340 (= e!2227295 Nil!37858)))

(declare-fun b!3599341 () Bool)

(assert (=> b!3599341 (= e!2227295 e!2227298)))

(declare-fun c!622994 () Bool)

(assert (=> b!3599341 (= c!622994 ((_ is ElementMatch!10361) (regex!5602 anOtherTypeRule!33)))))

(assert (= (and d!1060614 c!622993) b!3599340))

(assert (= (and d!1060614 (not c!622993)) b!3599341))

(assert (= (and b!3599341 c!622994) b!3599335))

(assert (= (and b!3599341 (not c!622994)) b!3599334))

(assert (= (and b!3599334 c!622995) b!3599339))

(assert (= (and b!3599334 (not c!622995)) b!3599338))

(assert (= (and b!3599338 c!622996) b!3599337))

(assert (= (and b!3599338 (not c!622996)) b!3599336))

(assert (= (or b!3599337 b!3599336) bm!260326))

(assert (= (or b!3599337 b!3599336) bm!260328))

(assert (= (or b!3599337 b!3599336) bm!260327))

(assert (= (or b!3599339 bm!260326) bm!260329))

(declare-fun m!4094967 () Bool)

(assert (=> bm!260327 m!4094967))

(declare-fun m!4094969 () Bool)

(assert (=> bm!260328 m!4094969))

(declare-fun m!4094971 () Bool)

(assert (=> bm!260329 m!4094971))

(assert (=> b!3599160 d!1060614))

(declare-fun d!1060616 () Bool)

(declare-fun lt!1236266 () Bool)

(declare-fun content!5401 (List!37983) (InoxSet Rule!11004))

(assert (=> d!1060616 (= lt!1236266 (select (content!5401 rules!3307) rule!403))))

(declare-fun e!2227304 () Bool)

(assert (=> d!1060616 (= lt!1236266 e!2227304)))

(declare-fun res!1454394 () Bool)

(assert (=> d!1060616 (=> (not res!1454394) (not e!2227304))))

(assert (=> d!1060616 (= res!1454394 ((_ is Cons!37859) rules!3307))))

(assert (=> d!1060616 (= (contains!7268 rules!3307 rule!403) lt!1236266)))

(declare-fun b!3599346 () Bool)

(declare-fun e!2227303 () Bool)

(assert (=> b!3599346 (= e!2227304 e!2227303)))

(declare-fun res!1454395 () Bool)

(assert (=> b!3599346 (=> res!1454395 e!2227303)))

(assert (=> b!3599346 (= res!1454395 (= (h!43279 rules!3307) rule!403))))

(declare-fun b!3599347 () Bool)

(assert (=> b!3599347 (= e!2227303 (contains!7268 (t!292074 rules!3307) rule!403))))

(assert (= (and d!1060616 res!1454394) b!3599346))

(assert (= (and b!3599346 (not res!1454395)) b!3599347))

(declare-fun m!4094973 () Bool)

(assert (=> d!1060616 m!4094973))

(declare-fun m!4094975 () Bool)

(assert (=> d!1060616 m!4094975))

(declare-fun m!4094977 () Bool)

(assert (=> b!3599347 m!4094977))

(assert (=> b!3599183 d!1060616))

(declare-fun d!1060618 () Bool)

(assert (=> d!1060618 (not (matchR!4930 (regex!5602 rule!403) lt!1236216))))

(declare-fun lt!1236269 () Unit!53883)

(declare-fun choose!20972 (Regex!10361 List!37982 C!20908) Unit!53883)

(assert (=> d!1060618 (= lt!1236269 (choose!20972 (regex!5602 rule!403) lt!1236216 lt!1236215))))

(assert (=> d!1060618 (validRegex!4739 (regex!5602 rule!403))))

(assert (=> d!1060618 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!586 (regex!5602 rule!403) lt!1236216 lt!1236215) lt!1236269)))

(declare-fun bs!570494 () Bool)

(assert (= bs!570494 d!1060618))

(assert (=> bs!570494 m!4094793))

(declare-fun m!4094979 () Bool)

(assert (=> bs!570494 m!4094979))

(declare-fun m!4094981 () Bool)

(assert (=> bs!570494 m!4094981))

(assert (=> b!3599162 d!1060618))

(declare-fun d!1060620 () Bool)

(declare-fun lt!1236270 () Bool)

(assert (=> d!1060620 (= lt!1236270 (select (content!5401 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2227306 () Bool)

(assert (=> d!1060620 (= lt!1236270 e!2227306)))

(declare-fun res!1454396 () Bool)

(assert (=> d!1060620 (=> (not res!1454396) (not e!2227306))))

(assert (=> d!1060620 (= res!1454396 ((_ is Cons!37859) rules!3307))))

(assert (=> d!1060620 (= (contains!7268 rules!3307 anOtherTypeRule!33) lt!1236270)))

(declare-fun b!3599348 () Bool)

(declare-fun e!2227305 () Bool)

(assert (=> b!3599348 (= e!2227306 e!2227305)))

(declare-fun res!1454397 () Bool)

(assert (=> b!3599348 (=> res!1454397 e!2227305)))

(assert (=> b!3599348 (= res!1454397 (= (h!43279 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3599349 () Bool)

(assert (=> b!3599349 (= e!2227305 (contains!7268 (t!292074 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1060620 res!1454396) b!3599348))

(assert (= (and b!3599348 (not res!1454397)) b!3599349))

(assert (=> d!1060620 m!4094973))

(declare-fun m!4094983 () Bool)

(assert (=> d!1060620 m!4094983))

(declare-fun m!4094985 () Bool)

(assert (=> b!3599349 m!4094985))

(assert (=> b!3599161 d!1060620))

(declare-fun d!1060622 () Bool)

(assert (=> d!1060622 (= (isEmpty!22330 suffix!1395) ((_ is Nil!37858) suffix!1395))))

(assert (=> b!3599174 d!1060622))

(declare-fun d!1060624 () Bool)

(assert (=> d!1060624 (= (size!28846 (_1!22008 lt!1236228)) (size!28848 (originalCharacters!6316 (_1!22008 lt!1236228))))))

(declare-fun Unit!53888 () Unit!53883)

(assert (=> d!1060624 (= (lemmaCharactersSize!655 (_1!22008 lt!1236228)) Unit!53888)))

(declare-fun bs!570495 () Bool)

(assert (= bs!570495 d!1060624))

(declare-fun m!4094987 () Bool)

(assert (=> bs!570495 m!4094987))

(assert (=> b!3599173 d!1060624))

(declare-fun d!1060626 () Bool)

(declare-fun fromListB!1919 (List!37982) BalanceConc!22664)

(assert (=> d!1060626 (= (seqFromList!4155 (originalCharacters!6316 (_1!22008 lt!1236228))) (fromListB!1919 (originalCharacters!6316 (_1!22008 lt!1236228))))))

(declare-fun bs!570496 () Bool)

(assert (= bs!570496 d!1060626))

(declare-fun m!4094989 () Bool)

(assert (=> bs!570496 m!4094989))

(assert (=> b!3599173 d!1060626))

(declare-fun b!3599503 () Bool)

(declare-fun e!2227399 () Bool)

(assert (=> b!3599503 (= e!2227399 true)))

(declare-fun d!1060628 () Bool)

(assert (=> d!1060628 e!2227399))

(assert (= d!1060628 b!3599503))

(declare-fun lambda!123954 () Int)

(declare-fun order!20619 () Int)

(declare-fun order!20621 () Int)

(declare-fun dynLambda!16334 (Int Int) Int)

(declare-fun dynLambda!16335 (Int Int) Int)

(assert (=> b!3599503 (< (dynLambda!16334 order!20619 (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) (dynLambda!16335 order!20621 lambda!123954))))

(declare-fun order!20623 () Int)

(declare-fun dynLambda!16336 (Int Int) Int)

(assert (=> b!3599503 (< (dynLambda!16336 order!20623 (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) (dynLambda!16335 order!20621 lambda!123954))))

(declare-fun dynLambda!16337 (Int BalanceConc!22664) TokenValue!5832)

(assert (=> d!1060628 (= (dynLambda!16337 (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228)))) lt!1236234) (dynLambda!16337 (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228)))) (seqFromList!4155 (originalCharacters!6316 (_1!22008 lt!1236228)))))))

(declare-fun lt!1236321 () Unit!53883)

(declare-fun Forall2of!299 (Int BalanceConc!22664 BalanceConc!22664) Unit!53883)

(assert (=> d!1060628 (= lt!1236321 (Forall2of!299 lambda!123954 lt!1236234 (seqFromList!4155 (originalCharacters!6316 (_1!22008 lt!1236228)))))))

(assert (=> d!1060628 (= (list!13942 lt!1236234) (list!13942 (seqFromList!4155 (originalCharacters!6316 (_1!22008 lt!1236228)))))))

(assert (=> d!1060628 (= (lemmaEqSameImage!793 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))) lt!1236234 (seqFromList!4155 (originalCharacters!6316 (_1!22008 lt!1236228)))) lt!1236321)))

(declare-fun b_lambda!106441 () Bool)

(assert (=> (not b_lambda!106441) (not d!1060628)))

(declare-fun tb!205905 () Bool)

(declare-fun t!292124 () Bool)

(assert (=> (and b!3599176 (= (toValue!7886 (transformation!5602 (h!43279 rules!3307))) (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292124) tb!205905))

(declare-fun result!250992 () Bool)

(assert (=> tb!205905 (= result!250992 (inv!21 (dynLambda!16337 (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228)))) lt!1236234)))))

(declare-fun m!4095151 () Bool)

(assert (=> tb!205905 m!4095151))

(assert (=> d!1060628 t!292124))

(declare-fun b_and!261355 () Bool)

(assert (= b_and!261267 (and (=> t!292124 result!250992) b_and!261355)))

(declare-fun t!292126 () Bool)

(declare-fun tb!205907 () Bool)

(assert (=> (and b!3599179 (= (toValue!7886 (transformation!5602 anOtherTypeRule!33)) (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292126) tb!205907))

(declare-fun result!250996 () Bool)

(assert (= result!250996 result!250992))

(assert (=> d!1060628 t!292126))

(declare-fun b_and!261357 () Bool)

(assert (= b_and!261271 (and (=> t!292126 result!250996) b_and!261357)))

(declare-fun tb!205909 () Bool)

(declare-fun t!292128 () Bool)

(assert (=> (and b!3599159 (= (toValue!7886 (transformation!5602 rule!403)) (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292128) tb!205909))

(declare-fun result!250998 () Bool)

(assert (= result!250998 result!250992))

(assert (=> d!1060628 t!292128))

(declare-fun b_and!261359 () Bool)

(assert (= b_and!261275 (and (=> t!292128 result!250998) b_and!261359)))

(declare-fun t!292130 () Bool)

(declare-fun tb!205911 () Bool)

(assert (=> (and b!3599194 (= (toValue!7886 (transformation!5602 (rule!8334 token!511))) (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292130) tb!205911))

(declare-fun result!251000 () Bool)

(assert (= result!251000 result!250992))

(assert (=> d!1060628 t!292130))

(declare-fun b_and!261361 () Bool)

(assert (= b_and!261279 (and (=> t!292130 result!251000) b_and!261361)))

(declare-fun b_lambda!106443 () Bool)

(assert (=> (not b_lambda!106443) (not d!1060628)))

(declare-fun tb!205913 () Bool)

(declare-fun t!292132 () Bool)

(assert (=> (and b!3599176 (= (toValue!7886 (transformation!5602 (h!43279 rules!3307))) (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292132) tb!205913))

(declare-fun result!251002 () Bool)

(assert (=> tb!205913 (= result!251002 (inv!21 (dynLambda!16337 (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228)))) (seqFromList!4155 (originalCharacters!6316 (_1!22008 lt!1236228))))))))

(declare-fun m!4095153 () Bool)

(assert (=> tb!205913 m!4095153))

(assert (=> d!1060628 t!292132))

(declare-fun b_and!261363 () Bool)

(assert (= b_and!261355 (and (=> t!292132 result!251002) b_and!261363)))

(declare-fun t!292134 () Bool)

(declare-fun tb!205915 () Bool)

(assert (=> (and b!3599179 (= (toValue!7886 (transformation!5602 anOtherTypeRule!33)) (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292134) tb!205915))

(declare-fun result!251004 () Bool)

(assert (= result!251004 result!251002))

(assert (=> d!1060628 t!292134))

(declare-fun b_and!261365 () Bool)

(assert (= b_and!261357 (and (=> t!292134 result!251004) b_and!261365)))

(declare-fun t!292136 () Bool)

(declare-fun tb!205917 () Bool)

(assert (=> (and b!3599159 (= (toValue!7886 (transformation!5602 rule!403)) (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292136) tb!205917))

(declare-fun result!251006 () Bool)

(assert (= result!251006 result!251002))

(assert (=> d!1060628 t!292136))

(declare-fun b_and!261367 () Bool)

(assert (= b_and!261359 (and (=> t!292136 result!251006) b_and!261367)))

(declare-fun tb!205919 () Bool)

(declare-fun t!292138 () Bool)

(assert (=> (and b!3599194 (= (toValue!7886 (transformation!5602 (rule!8334 token!511))) (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292138) tb!205919))

(declare-fun result!251008 () Bool)

(assert (= result!251008 result!251002))

(assert (=> d!1060628 t!292138))

(declare-fun b_and!261369 () Bool)

(assert (= b_and!261361 (and (=> t!292138 result!251008) b_and!261369)))

(assert (=> d!1060628 m!4094833))

(declare-fun m!4095155 () Bool)

(assert (=> d!1060628 m!4095155))

(assert (=> d!1060628 m!4094851))

(declare-fun m!4095157 () Bool)

(assert (=> d!1060628 m!4095157))

(assert (=> d!1060628 m!4094851))

(declare-fun m!4095159 () Bool)

(assert (=> d!1060628 m!4095159))

(assert (=> d!1060628 m!4094851))

(declare-fun m!4095161 () Bool)

(assert (=> d!1060628 m!4095161))

(assert (=> b!3599173 d!1060628))

(declare-fun d!1060678 () Bool)

(assert (=> d!1060678 (= (apply!9108 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))) lt!1236234) (dynLambda!16337 (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228)))) lt!1236234))))

(declare-fun b_lambda!106445 () Bool)

(assert (=> (not b_lambda!106445) (not d!1060678)))

(assert (=> d!1060678 t!292124))

(declare-fun b_and!261371 () Bool)

(assert (= b_and!261363 (and (=> t!292124 result!250992) b_and!261371)))

(assert (=> d!1060678 t!292126))

(declare-fun b_and!261373 () Bool)

(assert (= b_and!261365 (and (=> t!292126 result!250996) b_and!261373)))

(assert (=> d!1060678 t!292128))

(declare-fun b_and!261375 () Bool)

(assert (= b_and!261367 (and (=> t!292128 result!250998) b_and!261375)))

(assert (=> d!1060678 t!292130))

(declare-fun b_and!261377 () Bool)

(assert (= b_and!261369 (and (=> t!292130 result!251000) b_and!261377)))

(assert (=> d!1060678 m!4095155))

(assert (=> b!3599173 d!1060678))

(declare-fun b!3599510 () Bool)

(declare-fun e!2227406 () Bool)

(assert (=> b!3599510 (= e!2227406 true)))

(declare-fun d!1060680 () Bool)

(assert (=> d!1060680 e!2227406))

(assert (= d!1060680 b!3599510))

(declare-fun lambda!123957 () Int)

(declare-fun order!20625 () Int)

(declare-fun dynLambda!16338 (Int Int) Int)

(assert (=> b!3599510 (< (dynLambda!16334 order!20619 (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) (dynLambda!16338 order!20625 lambda!123957))))

(assert (=> b!3599510 (< (dynLambda!16336 order!20623 (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) (dynLambda!16338 order!20625 lambda!123957))))

(assert (=> d!1060680 (= (list!13942 (dynLambda!16333 (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228)))) (dynLambda!16337 (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228)))) lt!1236234))) (list!13942 lt!1236234))))

(declare-fun lt!1236324 () Unit!53883)

(declare-fun ForallOf!640 (Int BalanceConc!22664) Unit!53883)

(assert (=> d!1060680 (= lt!1236324 (ForallOf!640 lambda!123957 lt!1236234))))

(assert (=> d!1060680 (= (lemmaSemiInverse!1359 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))) lt!1236234) lt!1236324)))

(declare-fun b_lambda!106447 () Bool)

(assert (=> (not b_lambda!106447) (not d!1060680)))

(declare-fun tb!205921 () Bool)

(declare-fun t!292140 () Bool)

(assert (=> (and b!3599176 (= (toChars!7745 (transformation!5602 (h!43279 rules!3307))) (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292140) tb!205921))

(declare-fun tp!1101139 () Bool)

(declare-fun e!2227407 () Bool)

(declare-fun b!3599511 () Bool)

(assert (=> b!3599511 (= e!2227407 (and (inv!51216 (c!622965 (dynLambda!16333 (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228)))) (dynLambda!16337 (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228)))) lt!1236234)))) tp!1101139))))

(declare-fun result!251010 () Bool)

(assert (=> tb!205921 (= result!251010 (and (inv!51217 (dynLambda!16333 (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228)))) (dynLambda!16337 (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228)))) lt!1236234))) e!2227407))))

(assert (= tb!205921 b!3599511))

(declare-fun m!4095163 () Bool)

(assert (=> b!3599511 m!4095163))

(declare-fun m!4095165 () Bool)

(assert (=> tb!205921 m!4095165))

(assert (=> d!1060680 t!292140))

(declare-fun b_and!261379 () Bool)

(assert (= b_and!261299 (and (=> t!292140 result!251010) b_and!261379)))

(declare-fun t!292142 () Bool)

(declare-fun tb!205923 () Bool)

(assert (=> (and b!3599179 (= (toChars!7745 (transformation!5602 anOtherTypeRule!33)) (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292142) tb!205923))

(declare-fun result!251012 () Bool)

(assert (= result!251012 result!251010))

(assert (=> d!1060680 t!292142))

(declare-fun b_and!261381 () Bool)

(assert (= b_and!261301 (and (=> t!292142 result!251012) b_and!261381)))

(declare-fun t!292144 () Bool)

(declare-fun tb!205925 () Bool)

(assert (=> (and b!3599159 (= (toChars!7745 (transformation!5602 rule!403)) (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292144) tb!205925))

(declare-fun result!251014 () Bool)

(assert (= result!251014 result!251010))

(assert (=> d!1060680 t!292144))

(declare-fun b_and!261383 () Bool)

(assert (= b_and!261303 (and (=> t!292144 result!251014) b_and!261383)))

(declare-fun tb!205927 () Bool)

(declare-fun t!292146 () Bool)

(assert (=> (and b!3599194 (= (toChars!7745 (transformation!5602 (rule!8334 token!511))) (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292146) tb!205927))

(declare-fun result!251016 () Bool)

(assert (= result!251016 result!251010))

(assert (=> d!1060680 t!292146))

(declare-fun b_and!261385 () Bool)

(assert (= b_and!261305 (and (=> t!292146 result!251016) b_and!261385)))

(declare-fun b_lambda!106449 () Bool)

(assert (=> (not b_lambda!106449) (not d!1060680)))

(assert (=> d!1060680 t!292124))

(declare-fun b_and!261387 () Bool)

(assert (= b_and!261371 (and (=> t!292124 result!250992) b_and!261387)))

(assert (=> d!1060680 t!292126))

(declare-fun b_and!261389 () Bool)

(assert (= b_and!261373 (and (=> t!292126 result!250996) b_and!261389)))

(assert (=> d!1060680 t!292128))

(declare-fun b_and!261391 () Bool)

(assert (= b_and!261375 (and (=> t!292128 result!250998) b_and!261391)))

(assert (=> d!1060680 t!292130))

(declare-fun b_and!261393 () Bool)

(assert (= b_and!261377 (and (=> t!292130 result!251000) b_and!261393)))

(assert (=> d!1060680 m!4095155))

(declare-fun m!4095167 () Bool)

(assert (=> d!1060680 m!4095167))

(assert (=> d!1060680 m!4095155))

(assert (=> d!1060680 m!4095167))

(declare-fun m!4095169 () Bool)

(assert (=> d!1060680 m!4095169))

(declare-fun m!4095171 () Bool)

(assert (=> d!1060680 m!4095171))

(assert (=> d!1060680 m!4094833))

(assert (=> b!3599173 d!1060680))

(declare-fun d!1060682 () Bool)

(declare-fun lt!1236327 () Int)

(assert (=> d!1060682 (= lt!1236327 (size!28848 (list!13942 lt!1236234)))))

(declare-fun size!28850 (Conc!11525) Int)

(assert (=> d!1060682 (= lt!1236327 (size!28850 (c!622965 lt!1236234)))))

(assert (=> d!1060682 (= (size!28847 lt!1236234) lt!1236327)))

(declare-fun bs!570502 () Bool)

(assert (= bs!570502 d!1060682))

(assert (=> bs!570502 m!4094833))

(assert (=> bs!570502 m!4094833))

(declare-fun m!4095173 () Bool)

(assert (=> bs!570502 m!4095173))

(declare-fun m!4095175 () Bool)

(assert (=> bs!570502 m!4095175))

(assert (=> b!3599173 d!1060682))

(declare-fun d!1060684 () Bool)

(assert (=> d!1060684 (= (inv!51209 (tag!6290 (rule!8334 token!511))) (= (mod (str.len (value!180116 (tag!6290 (rule!8334 token!511)))) 2) 0))))

(assert (=> b!3599175 d!1060684))

(declare-fun d!1060686 () Bool)

(declare-fun res!1454473 () Bool)

(declare-fun e!2227408 () Bool)

(assert (=> d!1060686 (=> (not res!1454473) (not e!2227408))))

(assert (=> d!1060686 (= res!1454473 (semiInverseModEq!2379 (toChars!7745 (transformation!5602 (rule!8334 token!511))) (toValue!7886 (transformation!5602 (rule!8334 token!511)))))))

(assert (=> d!1060686 (= (inv!51212 (transformation!5602 (rule!8334 token!511))) e!2227408)))

(declare-fun b!3599512 () Bool)

(assert (=> b!3599512 (= e!2227408 (equivClasses!2278 (toChars!7745 (transformation!5602 (rule!8334 token!511))) (toValue!7886 (transformation!5602 (rule!8334 token!511)))))))

(assert (= (and d!1060686 res!1454473) b!3599512))

(declare-fun m!4095177 () Bool)

(assert (=> d!1060686 m!4095177))

(declare-fun m!4095179 () Bool)

(assert (=> b!3599512 m!4095179))

(assert (=> b!3599175 d!1060686))

(declare-fun d!1060688 () Bool)

(declare-fun res!1454478 () Bool)

(declare-fun e!2227411 () Bool)

(assert (=> d!1060688 (=> (not res!1454478) (not e!2227411))))

(assert (=> d!1060688 (= res!1454478 (not (isEmpty!22330 (originalCharacters!6316 token!511))))))

(assert (=> d!1060688 (= (inv!51213 token!511) e!2227411)))

(declare-fun b!3599517 () Bool)

(declare-fun res!1454479 () Bool)

(assert (=> b!3599517 (=> (not res!1454479) (not e!2227411))))

(assert (=> b!3599517 (= res!1454479 (= (originalCharacters!6316 token!511) (list!13942 (dynLambda!16333 (toChars!7745 (transformation!5602 (rule!8334 token!511))) (value!180117 token!511)))))))

(declare-fun b!3599518 () Bool)

(assert (=> b!3599518 (= e!2227411 (= (size!28846 token!511) (size!28848 (originalCharacters!6316 token!511))))))

(assert (= (and d!1060688 res!1454478) b!3599517))

(assert (= (and b!3599517 res!1454479) b!3599518))

(declare-fun b_lambda!106451 () Bool)

(assert (=> (not b_lambda!106451) (not b!3599517)))

(declare-fun t!292148 () Bool)

(declare-fun tb!205929 () Bool)

(assert (=> (and b!3599176 (= (toChars!7745 (transformation!5602 (h!43279 rules!3307))) (toChars!7745 (transformation!5602 (rule!8334 token!511)))) t!292148) tb!205929))

(declare-fun b!3599519 () Bool)

(declare-fun e!2227412 () Bool)

(declare-fun tp!1101140 () Bool)

(assert (=> b!3599519 (= e!2227412 (and (inv!51216 (c!622965 (dynLambda!16333 (toChars!7745 (transformation!5602 (rule!8334 token!511))) (value!180117 token!511)))) tp!1101140))))

(declare-fun result!251018 () Bool)

(assert (=> tb!205929 (= result!251018 (and (inv!51217 (dynLambda!16333 (toChars!7745 (transformation!5602 (rule!8334 token!511))) (value!180117 token!511))) e!2227412))))

(assert (= tb!205929 b!3599519))

(declare-fun m!4095181 () Bool)

(assert (=> b!3599519 m!4095181))

(declare-fun m!4095183 () Bool)

(assert (=> tb!205929 m!4095183))

(assert (=> b!3599517 t!292148))

(declare-fun b_and!261395 () Bool)

(assert (= b_and!261379 (and (=> t!292148 result!251018) b_and!261395)))

(declare-fun tb!205931 () Bool)

(declare-fun t!292150 () Bool)

(assert (=> (and b!3599179 (= (toChars!7745 (transformation!5602 anOtherTypeRule!33)) (toChars!7745 (transformation!5602 (rule!8334 token!511)))) t!292150) tb!205931))

(declare-fun result!251020 () Bool)

(assert (= result!251020 result!251018))

(assert (=> b!3599517 t!292150))

(declare-fun b_and!261397 () Bool)

(assert (= b_and!261381 (and (=> t!292150 result!251020) b_and!261397)))

(declare-fun t!292152 () Bool)

(declare-fun tb!205933 () Bool)

(assert (=> (and b!3599159 (= (toChars!7745 (transformation!5602 rule!403)) (toChars!7745 (transformation!5602 (rule!8334 token!511)))) t!292152) tb!205933))

(declare-fun result!251022 () Bool)

(assert (= result!251022 result!251018))

(assert (=> b!3599517 t!292152))

(declare-fun b_and!261399 () Bool)

(assert (= b_and!261383 (and (=> t!292152 result!251022) b_and!261399)))

(declare-fun t!292154 () Bool)

(declare-fun tb!205935 () Bool)

(assert (=> (and b!3599194 (= (toChars!7745 (transformation!5602 (rule!8334 token!511))) (toChars!7745 (transformation!5602 (rule!8334 token!511)))) t!292154) tb!205935))

(declare-fun result!251024 () Bool)

(assert (= result!251024 result!251018))

(assert (=> b!3599517 t!292154))

(declare-fun b_and!261401 () Bool)

(assert (= b_and!261385 (and (=> t!292154 result!251024) b_and!261401)))

(declare-fun m!4095185 () Bool)

(assert (=> d!1060688 m!4095185))

(declare-fun m!4095187 () Bool)

(assert (=> b!3599517 m!4095187))

(assert (=> b!3599517 m!4095187))

(declare-fun m!4095189 () Bool)

(assert (=> b!3599517 m!4095189))

(declare-fun m!4095191 () Bool)

(assert (=> b!3599518 m!4095191))

(assert (=> start!334506 d!1060688))

(declare-fun d!1060690 () Bool)

(assert (=> d!1060690 (= (isEmpty!22330 (_2!22008 lt!1236236)) ((_ is Nil!37858) (_2!22008 lt!1236236)))))

(assert (=> b!3599178 d!1060690))

(declare-fun d!1060692 () Bool)

(declare-fun lt!1236328 () Bool)

(assert (=> d!1060692 (= lt!1236328 (select (content!5400 lt!1236224) lt!1236213))))

(declare-fun e!2227413 () Bool)

(assert (=> d!1060692 (= lt!1236328 e!2227413)))

(declare-fun res!1454481 () Bool)

(assert (=> d!1060692 (=> (not res!1454481) (not e!2227413))))

(assert (=> d!1060692 (= res!1454481 ((_ is Cons!37858) lt!1236224))))

(assert (=> d!1060692 (= (contains!7267 lt!1236224 lt!1236213) lt!1236328)))

(declare-fun b!3599520 () Bool)

(declare-fun e!2227414 () Bool)

(assert (=> b!3599520 (= e!2227413 e!2227414)))

(declare-fun res!1454480 () Bool)

(assert (=> b!3599520 (=> res!1454480 e!2227414)))

(assert (=> b!3599520 (= res!1454480 (= (h!43278 lt!1236224) lt!1236213))))

(declare-fun b!3599521 () Bool)

(assert (=> b!3599521 (= e!2227414 (contains!7267 (t!292073 lt!1236224) lt!1236213))))

(assert (= (and d!1060692 res!1454481) b!3599520))

(assert (= (and b!3599520 (not res!1454480)) b!3599521))

(declare-fun m!4095193 () Bool)

(assert (=> d!1060692 m!4095193))

(declare-fun m!4095195 () Bool)

(assert (=> d!1060692 m!4095195))

(declare-fun m!4095197 () Bool)

(assert (=> b!3599521 m!4095197))

(assert (=> b!3599190 d!1060692))

(declare-fun d!1060694 () Bool)

(assert (=> d!1060694 (= (head!7542 suffix!1395) (h!43278 suffix!1395))))

(assert (=> b!3599190 d!1060694))

(declare-fun d!1060696 () Bool)

(declare-fun c!623031 () Bool)

(assert (=> d!1060696 (= c!623031 (or ((_ is EmptyExpr!10361) (regex!5602 rule!403)) ((_ is EmptyLang!10361) (regex!5602 rule!403))))))

(declare-fun e!2227415 () List!37982)

(assert (=> d!1060696 (= (usedCharacters!816 (regex!5602 rule!403)) e!2227415)))

(declare-fun b!3599522 () Bool)

(declare-fun c!623033 () Bool)

(assert (=> b!3599522 (= c!623033 ((_ is Star!10361) (regex!5602 rule!403)))))

(declare-fun e!2227418 () List!37982)

(declare-fun e!2227416 () List!37982)

(assert (=> b!3599522 (= e!2227418 e!2227416)))

(declare-fun bm!260345 () Bool)

(declare-fun call!260352 () List!37982)

(declare-fun call!260353 () List!37982)

(assert (=> bm!260345 (= call!260352 call!260353)))

(declare-fun b!3599523 () Bool)

(assert (=> b!3599523 (= e!2227418 (Cons!37858 (c!622964 (regex!5602 rule!403)) Nil!37858))))

(declare-fun b!3599524 () Bool)

(declare-fun e!2227417 () List!37982)

(declare-fun call!260351 () List!37982)

(assert (=> b!3599524 (= e!2227417 call!260351)))

(declare-fun b!3599525 () Bool)

(assert (=> b!3599525 (= e!2227417 call!260351)))

(declare-fun b!3599526 () Bool)

(assert (=> b!3599526 (= e!2227416 e!2227417)))

(declare-fun c!623034 () Bool)

(assert (=> b!3599526 (= c!623034 ((_ is Union!10361) (regex!5602 rule!403)))))

(declare-fun call!260350 () List!37982)

(declare-fun bm!260346 () Bool)

(assert (=> bm!260346 (= call!260351 (++!9418 (ite c!623034 call!260352 call!260350) (ite c!623034 call!260350 call!260352)))))

(declare-fun bm!260347 () Bool)

(assert (=> bm!260347 (= call!260350 (usedCharacters!816 (ite c!623034 (regTwo!21235 (regex!5602 rule!403)) (regOne!21234 (regex!5602 rule!403)))))))

(declare-fun bm!260348 () Bool)

(assert (=> bm!260348 (= call!260353 (usedCharacters!816 (ite c!623033 (reg!10690 (regex!5602 rule!403)) (ite c!623034 (regOne!21235 (regex!5602 rule!403)) (regTwo!21234 (regex!5602 rule!403))))))))

(declare-fun b!3599527 () Bool)

(assert (=> b!3599527 (= e!2227416 call!260353)))

(declare-fun b!3599528 () Bool)

(assert (=> b!3599528 (= e!2227415 Nil!37858)))

(declare-fun b!3599529 () Bool)

(assert (=> b!3599529 (= e!2227415 e!2227418)))

(declare-fun c!623032 () Bool)

(assert (=> b!3599529 (= c!623032 ((_ is ElementMatch!10361) (regex!5602 rule!403)))))

(assert (= (and d!1060696 c!623031) b!3599528))

(assert (= (and d!1060696 (not c!623031)) b!3599529))

(assert (= (and b!3599529 c!623032) b!3599523))

(assert (= (and b!3599529 (not c!623032)) b!3599522))

(assert (= (and b!3599522 c!623033) b!3599527))

(assert (= (and b!3599522 (not c!623033)) b!3599526))

(assert (= (and b!3599526 c!623034) b!3599525))

(assert (= (and b!3599526 (not c!623034)) b!3599524))

(assert (= (or b!3599525 b!3599524) bm!260345))

(assert (= (or b!3599525 b!3599524) bm!260347))

(assert (= (or b!3599525 b!3599524) bm!260346))

(assert (= (or b!3599527 bm!260345) bm!260348))

(declare-fun m!4095199 () Bool)

(assert (=> bm!260346 m!4095199))

(declare-fun m!4095201 () Bool)

(assert (=> bm!260347 m!4095201))

(declare-fun m!4095203 () Bool)

(assert (=> bm!260348 m!4095203))

(assert (=> b!3599190 d!1060696))

(declare-fun d!1060698 () Bool)

(declare-fun isEmpty!22334 (Option!7834) Bool)

(assert (=> d!1060698 (= (isDefined!6067 lt!1236218) (not (isEmpty!22334 lt!1236218)))))

(declare-fun bs!570503 () Bool)

(assert (= bs!570503 d!1060698))

(declare-fun m!4095205 () Bool)

(assert (=> bs!570503 m!4095205))

(assert (=> b!3599189 d!1060698))

(declare-fun b!3599548 () Bool)

(declare-fun res!1454496 () Bool)

(declare-fun e!2227427 () Bool)

(assert (=> b!3599548 (=> (not res!1454496) (not e!2227427))))

(declare-fun lt!1236341 () Option!7834)

(assert (=> b!3599548 (= res!1454496 (< (size!28848 (_2!22008 (get!12246 lt!1236341))) (size!28848 lt!1236216)))))

(declare-fun b!3599549 () Bool)

(declare-fun e!2227426 () Bool)

(assert (=> b!3599549 (= e!2227426 e!2227427)))

(declare-fun res!1454499 () Bool)

(assert (=> b!3599549 (=> (not res!1454499) (not e!2227427))))

(assert (=> b!3599549 (= res!1454499 (isDefined!6067 lt!1236341))))

(declare-fun b!3599550 () Bool)

(assert (=> b!3599550 (= e!2227427 (contains!7268 rules!3307 (rule!8334 (_1!22008 (get!12246 lt!1236341)))))))

(declare-fun b!3599551 () Bool)

(declare-fun res!1454502 () Bool)

(assert (=> b!3599551 (=> (not res!1454502) (not e!2227427))))

(assert (=> b!3599551 (= res!1454502 (= (value!180117 (_1!22008 (get!12246 lt!1236341))) (apply!9108 (transformation!5602 (rule!8334 (_1!22008 (get!12246 lt!1236341)))) (seqFromList!4155 (originalCharacters!6316 (_1!22008 (get!12246 lt!1236341)))))))))

(declare-fun bm!260351 () Bool)

(declare-fun call!260356 () Option!7834)

(assert (=> bm!260351 (= call!260356 (maxPrefixOneRule!1869 thiss!23823 (h!43279 rules!3307) lt!1236216))))

(declare-fun d!1060700 () Bool)

(assert (=> d!1060700 e!2227426))

(declare-fun res!1454497 () Bool)

(assert (=> d!1060700 (=> res!1454497 e!2227426)))

(assert (=> d!1060700 (= res!1454497 (isEmpty!22334 lt!1236341))))

(declare-fun e!2227425 () Option!7834)

(assert (=> d!1060700 (= lt!1236341 e!2227425)))

(declare-fun c!623037 () Bool)

(assert (=> d!1060700 (= c!623037 (and ((_ is Cons!37859) rules!3307) ((_ is Nil!37859) (t!292074 rules!3307))))))

(declare-fun lt!1236340 () Unit!53883)

(declare-fun lt!1236342 () Unit!53883)

(assert (=> d!1060700 (= lt!1236340 lt!1236342)))

(assert (=> d!1060700 (isPrefix!2965 lt!1236216 lt!1236216)))

(declare-fun lemmaIsPrefixRefl!1898 (List!37982 List!37982) Unit!53883)

(assert (=> d!1060700 (= lt!1236342 (lemmaIsPrefixRefl!1898 lt!1236216 lt!1236216))))

(declare-fun rulesValidInductive!1963 (LexerInterface!5191 List!37983) Bool)

(assert (=> d!1060700 (rulesValidInductive!1963 thiss!23823 rules!3307)))

(assert (=> d!1060700 (= (maxPrefix!2725 thiss!23823 rules!3307 lt!1236216) lt!1236341)))

(declare-fun b!3599552 () Bool)

(declare-fun res!1454501 () Bool)

(assert (=> b!3599552 (=> (not res!1454501) (not e!2227427))))

(assert (=> b!3599552 (= res!1454501 (= (++!9418 (list!13942 (charsOf!3616 (_1!22008 (get!12246 lt!1236341)))) (_2!22008 (get!12246 lt!1236341))) lt!1236216))))

(declare-fun b!3599553 () Bool)

(declare-fun lt!1236343 () Option!7834)

(declare-fun lt!1236339 () Option!7834)

(assert (=> b!3599553 (= e!2227425 (ite (and ((_ is None!7833) lt!1236343) ((_ is None!7833) lt!1236339)) None!7833 (ite ((_ is None!7833) lt!1236339) lt!1236343 (ite ((_ is None!7833) lt!1236343) lt!1236339 (ite (>= (size!28846 (_1!22008 (v!37539 lt!1236343))) (size!28846 (_1!22008 (v!37539 lt!1236339)))) lt!1236343 lt!1236339)))))))

(assert (=> b!3599553 (= lt!1236343 call!260356)))

(assert (=> b!3599553 (= lt!1236339 (maxPrefix!2725 thiss!23823 (t!292074 rules!3307) lt!1236216))))

(declare-fun b!3599554 () Bool)

(assert (=> b!3599554 (= e!2227425 call!260356)))

(declare-fun b!3599555 () Bool)

(declare-fun res!1454500 () Bool)

(assert (=> b!3599555 (=> (not res!1454500) (not e!2227427))))

(assert (=> b!3599555 (= res!1454500 (matchR!4930 (regex!5602 (rule!8334 (_1!22008 (get!12246 lt!1236341)))) (list!13942 (charsOf!3616 (_1!22008 (get!12246 lt!1236341))))))))

(declare-fun b!3599556 () Bool)

(declare-fun res!1454498 () Bool)

(assert (=> b!3599556 (=> (not res!1454498) (not e!2227427))))

(assert (=> b!3599556 (= res!1454498 (= (list!13942 (charsOf!3616 (_1!22008 (get!12246 lt!1236341)))) (originalCharacters!6316 (_1!22008 (get!12246 lt!1236341)))))))

(assert (= (and d!1060700 c!623037) b!3599554))

(assert (= (and d!1060700 (not c!623037)) b!3599553))

(assert (= (or b!3599554 b!3599553) bm!260351))

(assert (= (and d!1060700 (not res!1454497)) b!3599549))

(assert (= (and b!3599549 res!1454499) b!3599556))

(assert (= (and b!3599556 res!1454498) b!3599548))

(assert (= (and b!3599548 res!1454496) b!3599552))

(assert (= (and b!3599552 res!1454501) b!3599551))

(assert (= (and b!3599551 res!1454502) b!3599555))

(assert (= (and b!3599555 res!1454500) b!3599550))

(declare-fun m!4095207 () Bool)

(assert (=> b!3599550 m!4095207))

(declare-fun m!4095209 () Bool)

(assert (=> b!3599550 m!4095209))

(assert (=> b!3599548 m!4095207))

(declare-fun m!4095211 () Bool)

(assert (=> b!3599548 m!4095211))

(declare-fun m!4095213 () Bool)

(assert (=> b!3599548 m!4095213))

(declare-fun m!4095215 () Bool)

(assert (=> b!3599549 m!4095215))

(declare-fun m!4095217 () Bool)

(assert (=> b!3599553 m!4095217))

(assert (=> b!3599555 m!4095207))

(declare-fun m!4095219 () Bool)

(assert (=> b!3599555 m!4095219))

(assert (=> b!3599555 m!4095219))

(declare-fun m!4095221 () Bool)

(assert (=> b!3599555 m!4095221))

(assert (=> b!3599555 m!4095221))

(declare-fun m!4095223 () Bool)

(assert (=> b!3599555 m!4095223))

(assert (=> b!3599556 m!4095207))

(assert (=> b!3599556 m!4095219))

(assert (=> b!3599556 m!4095219))

(assert (=> b!3599556 m!4095221))

(assert (=> b!3599551 m!4095207))

(declare-fun m!4095225 () Bool)

(assert (=> b!3599551 m!4095225))

(assert (=> b!3599551 m!4095225))

(declare-fun m!4095227 () Bool)

(assert (=> b!3599551 m!4095227))

(declare-fun m!4095229 () Bool)

(assert (=> d!1060700 m!4095229))

(declare-fun m!4095231 () Bool)

(assert (=> d!1060700 m!4095231))

(declare-fun m!4095233 () Bool)

(assert (=> d!1060700 m!4095233))

(declare-fun m!4095235 () Bool)

(assert (=> d!1060700 m!4095235))

(declare-fun m!4095237 () Bool)

(assert (=> bm!260351 m!4095237))

(assert (=> b!3599552 m!4095207))

(assert (=> b!3599552 m!4095219))

(assert (=> b!3599552 m!4095219))

(assert (=> b!3599552 m!4095221))

(assert (=> b!3599552 m!4095221))

(declare-fun m!4095239 () Bool)

(assert (=> b!3599552 m!4095239))

(assert (=> b!3599189 d!1060700))

(declare-fun d!1060702 () Bool)

(assert (=> d!1060702 (= (list!13942 (charsOf!3616 token!511)) (list!13944 (c!622965 (charsOf!3616 token!511))))))

(declare-fun bs!570504 () Bool)

(assert (= bs!570504 d!1060702))

(declare-fun m!4095241 () Bool)

(assert (=> bs!570504 m!4095241))

(assert (=> b!3599189 d!1060702))

(declare-fun d!1060704 () Bool)

(declare-fun lt!1236344 () BalanceConc!22664)

(assert (=> d!1060704 (= (list!13942 lt!1236344) (originalCharacters!6316 token!511))))

(assert (=> d!1060704 (= lt!1236344 (dynLambda!16333 (toChars!7745 (transformation!5602 (rule!8334 token!511))) (value!180117 token!511)))))

(assert (=> d!1060704 (= (charsOf!3616 token!511) lt!1236344)))

(declare-fun b_lambda!106453 () Bool)

(assert (=> (not b_lambda!106453) (not d!1060704)))

(assert (=> d!1060704 t!292148))

(declare-fun b_and!261403 () Bool)

(assert (= b_and!261395 (and (=> t!292148 result!251018) b_and!261403)))

(assert (=> d!1060704 t!292150))

(declare-fun b_and!261405 () Bool)

(assert (= b_and!261397 (and (=> t!292150 result!251020) b_and!261405)))

(assert (=> d!1060704 t!292152))

(declare-fun b_and!261407 () Bool)

(assert (= b_and!261399 (and (=> t!292152 result!251022) b_and!261407)))

(assert (=> d!1060704 t!292154))

(declare-fun b_and!261409 () Bool)

(assert (= b_and!261401 (and (=> t!292154 result!251024) b_and!261409)))

(declare-fun m!4095243 () Bool)

(assert (=> d!1060704 m!4095243))

(assert (=> d!1060704 m!4095187))

(assert (=> b!3599189 d!1060704))

(declare-fun b!3599557 () Bool)

(declare-fun e!2227428 () Bool)

(assert (=> b!3599557 (= e!2227428 (matchR!4930 (derivativeStep!3130 (regex!5602 rule!403) (head!7542 lt!1236216)) (tail!5579 lt!1236216)))))

(declare-fun b!3599558 () Bool)

(declare-fun e!2227431 () Bool)

(declare-fun e!2227429 () Bool)

(assert (=> b!3599558 (= e!2227431 e!2227429)))

(declare-fun res!1454505 () Bool)

(assert (=> b!3599558 (=> res!1454505 e!2227429)))

(declare-fun call!260357 () Bool)

(assert (=> b!3599558 (= res!1454505 call!260357)))

(declare-fun d!1060706 () Bool)

(declare-fun e!2227432 () Bool)

(assert (=> d!1060706 e!2227432))

(declare-fun c!623040 () Bool)

(assert (=> d!1060706 (= c!623040 ((_ is EmptyExpr!10361) (regex!5602 rule!403)))))

(declare-fun lt!1236345 () Bool)

(assert (=> d!1060706 (= lt!1236345 e!2227428)))

(declare-fun c!623039 () Bool)

(assert (=> d!1060706 (= c!623039 (isEmpty!22330 lt!1236216))))

(assert (=> d!1060706 (validRegex!4739 (regex!5602 rule!403))))

(assert (=> d!1060706 (= (matchR!4930 (regex!5602 rule!403) lt!1236216) lt!1236345)))

(declare-fun b!3599559 () Bool)

(assert (=> b!3599559 (= e!2227428 (nullable!3581 (regex!5602 rule!403)))))

(declare-fun b!3599560 () Bool)

(assert (=> b!3599560 (= e!2227432 (= lt!1236345 call!260357))))

(declare-fun b!3599561 () Bool)

(declare-fun res!1454504 () Bool)

(declare-fun e!2227433 () Bool)

(assert (=> b!3599561 (=> (not res!1454504) (not e!2227433))))

(assert (=> b!3599561 (= res!1454504 (not call!260357))))

(declare-fun b!3599562 () Bool)

(assert (=> b!3599562 (= e!2227433 (= (head!7542 lt!1236216) (c!622964 (regex!5602 rule!403))))))

(declare-fun b!3599563 () Bool)

(assert (=> b!3599563 (= e!2227429 (not (= (head!7542 lt!1236216) (c!622964 (regex!5602 rule!403)))))))

(declare-fun b!3599564 () Bool)

(declare-fun res!1454509 () Bool)

(assert (=> b!3599564 (=> (not res!1454509) (not e!2227433))))

(assert (=> b!3599564 (= res!1454509 (isEmpty!22330 (tail!5579 lt!1236216)))))

(declare-fun b!3599565 () Bool)

(declare-fun res!1454507 () Bool)

(declare-fun e!2227434 () Bool)

(assert (=> b!3599565 (=> res!1454507 e!2227434)))

(assert (=> b!3599565 (= res!1454507 (not ((_ is ElementMatch!10361) (regex!5602 rule!403))))))

(declare-fun e!2227430 () Bool)

(assert (=> b!3599565 (= e!2227430 e!2227434)))

(declare-fun b!3599566 () Bool)

(declare-fun res!1454508 () Bool)

(assert (=> b!3599566 (=> res!1454508 e!2227434)))

(assert (=> b!3599566 (= res!1454508 e!2227433)))

(declare-fun res!1454503 () Bool)

(assert (=> b!3599566 (=> (not res!1454503) (not e!2227433))))

(assert (=> b!3599566 (= res!1454503 lt!1236345)))

(declare-fun bm!260352 () Bool)

(assert (=> bm!260352 (= call!260357 (isEmpty!22330 lt!1236216))))

(declare-fun b!3599567 () Bool)

(declare-fun res!1454506 () Bool)

(assert (=> b!3599567 (=> res!1454506 e!2227429)))

(assert (=> b!3599567 (= res!1454506 (not (isEmpty!22330 (tail!5579 lt!1236216))))))

(declare-fun b!3599568 () Bool)

(assert (=> b!3599568 (= e!2227430 (not lt!1236345))))

(declare-fun b!3599569 () Bool)

(assert (=> b!3599569 (= e!2227434 e!2227431)))

(declare-fun res!1454510 () Bool)

(assert (=> b!3599569 (=> (not res!1454510) (not e!2227431))))

(assert (=> b!3599569 (= res!1454510 (not lt!1236345))))

(declare-fun b!3599570 () Bool)

(assert (=> b!3599570 (= e!2227432 e!2227430)))

(declare-fun c!623038 () Bool)

(assert (=> b!3599570 (= c!623038 ((_ is EmptyLang!10361) (regex!5602 rule!403)))))

(assert (= (and d!1060706 c!623039) b!3599559))

(assert (= (and d!1060706 (not c!623039)) b!3599557))

(assert (= (and d!1060706 c!623040) b!3599560))

(assert (= (and d!1060706 (not c!623040)) b!3599570))

(assert (= (and b!3599570 c!623038) b!3599568))

(assert (= (and b!3599570 (not c!623038)) b!3599565))

(assert (= (and b!3599565 (not res!1454507)) b!3599566))

(assert (= (and b!3599566 res!1454503) b!3599561))

(assert (= (and b!3599561 res!1454504) b!3599564))

(assert (= (and b!3599564 res!1454509) b!3599562))

(assert (= (and b!3599566 (not res!1454508)) b!3599569))

(assert (= (and b!3599569 res!1454510) b!3599558))

(assert (= (and b!3599558 (not res!1454505)) b!3599567))

(assert (= (and b!3599567 (not res!1454506)) b!3599563))

(assert (= (or b!3599560 b!3599558 b!3599561) bm!260352))

(declare-fun m!4095245 () Bool)

(assert (=> b!3599564 m!4095245))

(assert (=> b!3599564 m!4095245))

(declare-fun m!4095247 () Bool)

(assert (=> b!3599564 m!4095247))

(assert (=> b!3599567 m!4095245))

(assert (=> b!3599567 m!4095245))

(assert (=> b!3599567 m!4095247))

(declare-fun m!4095249 () Bool)

(assert (=> d!1060706 m!4095249))

(assert (=> d!1060706 m!4094981))

(declare-fun m!4095251 () Bool)

(assert (=> b!3599562 m!4095251))

(assert (=> b!3599563 m!4095251))

(assert (=> b!3599557 m!4095251))

(assert (=> b!3599557 m!4095251))

(declare-fun m!4095253 () Bool)

(assert (=> b!3599557 m!4095253))

(assert (=> b!3599557 m!4095245))

(assert (=> b!3599557 m!4095253))

(assert (=> b!3599557 m!4095245))

(declare-fun m!4095255 () Bool)

(assert (=> b!3599557 m!4095255))

(assert (=> bm!260352 m!4095249))

(declare-fun m!4095257 () Bool)

(assert (=> b!3599559 m!4095257))

(assert (=> b!3599168 d!1060706))

(declare-fun d!1060708 () Bool)

(declare-fun res!1454515 () Bool)

(declare-fun e!2227437 () Bool)

(assert (=> d!1060708 (=> (not res!1454515) (not e!2227437))))

(assert (=> d!1060708 (= res!1454515 (validRegex!4739 (regex!5602 rule!403)))))

(assert (=> d!1060708 (= (ruleValid!1867 thiss!23823 rule!403) e!2227437)))

(declare-fun b!3599575 () Bool)

(declare-fun res!1454516 () Bool)

(assert (=> b!3599575 (=> (not res!1454516) (not e!2227437))))

(assert (=> b!3599575 (= res!1454516 (not (nullable!3581 (regex!5602 rule!403))))))

(declare-fun b!3599576 () Bool)

(assert (=> b!3599576 (= e!2227437 (not (= (tag!6290 rule!403) (String!42495 ""))))))

(assert (= (and d!1060708 res!1454515) b!3599575))

(assert (= (and b!3599575 res!1454516) b!3599576))

(assert (=> d!1060708 m!4094981))

(assert (=> b!3599575 m!4095257))

(assert (=> b!3599168 d!1060708))

(declare-fun d!1060710 () Bool)

(assert (=> d!1060710 (ruleValid!1867 thiss!23823 rule!403)))

(declare-fun lt!1236348 () Unit!53883)

(declare-fun choose!20974 (LexerInterface!5191 Rule!11004 List!37983) Unit!53883)

(assert (=> d!1060710 (= lt!1236348 (choose!20974 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1060710 (contains!7268 rules!3307 rule!403)))

(assert (=> d!1060710 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1022 thiss!23823 rule!403 rules!3307) lt!1236348)))

(declare-fun bs!570505 () Bool)

(assert (= bs!570505 d!1060710))

(assert (=> bs!570505 m!4094795))

(declare-fun m!4095259 () Bool)

(assert (=> bs!570505 m!4095259))

(assert (=> bs!570505 m!4094849))

(assert (=> b!3599168 d!1060710))

(declare-fun d!1060712 () Bool)

(declare-fun lt!1236349 () Bool)

(assert (=> d!1060712 (= lt!1236349 (select (content!5400 lt!1236224) lt!1236215))))

(declare-fun e!2227438 () Bool)

(assert (=> d!1060712 (= lt!1236349 e!2227438)))

(declare-fun res!1454518 () Bool)

(assert (=> d!1060712 (=> (not res!1454518) (not e!2227438))))

(assert (=> d!1060712 (= res!1454518 ((_ is Cons!37858) lt!1236224))))

(assert (=> d!1060712 (= (contains!7267 lt!1236224 lt!1236215) lt!1236349)))

(declare-fun b!3599577 () Bool)

(declare-fun e!2227439 () Bool)

(assert (=> b!3599577 (= e!2227438 e!2227439)))

(declare-fun res!1454517 () Bool)

(assert (=> b!3599577 (=> res!1454517 e!2227439)))

(assert (=> b!3599577 (= res!1454517 (= (h!43278 lt!1236224) lt!1236215))))

(declare-fun b!3599578 () Bool)

(assert (=> b!3599578 (= e!2227439 (contains!7267 (t!292073 lt!1236224) lt!1236215))))

(assert (= (and d!1060712 res!1454518) b!3599577))

(assert (= (and b!3599577 (not res!1454517)) b!3599578))

(assert (=> d!1060712 m!4095193))

(declare-fun m!4095261 () Bool)

(assert (=> d!1060712 m!4095261))

(declare-fun m!4095263 () Bool)

(assert (=> b!3599578 m!4095263))

(assert (=> b!3599191 d!1060712))

(declare-fun d!1060714 () Bool)

(assert (=> d!1060714 (= (head!7542 lt!1236221) (h!43278 lt!1236221))))

(assert (=> b!3599191 d!1060714))

(declare-fun d!1060716 () Bool)

(declare-fun lt!1236350 () Bool)

(assert (=> d!1060716 (= lt!1236350 (select (content!5400 lt!1236216) lt!1236215))))

(declare-fun e!2227440 () Bool)

(assert (=> d!1060716 (= lt!1236350 e!2227440)))

(declare-fun res!1454520 () Bool)

(assert (=> d!1060716 (=> (not res!1454520) (not e!2227440))))

(assert (=> d!1060716 (= res!1454520 ((_ is Cons!37858) lt!1236216))))

(assert (=> d!1060716 (= (contains!7267 lt!1236216 lt!1236215) lt!1236350)))

(declare-fun b!3599579 () Bool)

(declare-fun e!2227441 () Bool)

(assert (=> b!3599579 (= e!2227440 e!2227441)))

(declare-fun res!1454519 () Bool)

(assert (=> b!3599579 (=> res!1454519 e!2227441)))

(assert (=> b!3599579 (= res!1454519 (= (h!43278 lt!1236216) lt!1236215))))

(declare-fun b!3599580 () Bool)

(assert (=> b!3599580 (= e!2227441 (contains!7267 (t!292073 lt!1236216) lt!1236215))))

(assert (= (and d!1060716 res!1454520) b!3599579))

(assert (= (and b!3599579 (not res!1454519)) b!3599580))

(declare-fun m!4095265 () Bool)

(assert (=> d!1060716 m!4095265))

(declare-fun m!4095267 () Bool)

(assert (=> d!1060716 m!4095267))

(declare-fun m!4095269 () Bool)

(assert (=> b!3599580 m!4095269))

(assert (=> b!3599169 d!1060716))

(declare-fun d!1060718 () Bool)

(assert (=> d!1060718 (= (inv!51209 (tag!6290 rule!403)) (= (mod (str.len (value!180116 (tag!6290 rule!403))) 2) 0))))

(assert (=> b!3599172 d!1060718))

(declare-fun d!1060720 () Bool)

(declare-fun res!1454521 () Bool)

(declare-fun e!2227442 () Bool)

(assert (=> d!1060720 (=> (not res!1454521) (not e!2227442))))

(assert (=> d!1060720 (= res!1454521 (semiInverseModEq!2379 (toChars!7745 (transformation!5602 rule!403)) (toValue!7886 (transformation!5602 rule!403))))))

(assert (=> d!1060720 (= (inv!51212 (transformation!5602 rule!403)) e!2227442)))

(declare-fun b!3599581 () Bool)

(assert (=> b!3599581 (= e!2227442 (equivClasses!2278 (toChars!7745 (transformation!5602 rule!403)) (toValue!7886 (transformation!5602 rule!403))))))

(assert (= (and d!1060720 res!1454521) b!3599581))

(declare-fun m!4095271 () Bool)

(assert (=> d!1060720 m!4095271))

(declare-fun m!4095273 () Bool)

(assert (=> b!3599581 m!4095273))

(assert (=> b!3599172 d!1060720))

(declare-fun d!1060722 () Bool)

(declare-fun e!2227448 () Bool)

(assert (=> d!1060722 e!2227448))

(declare-fun res!1454527 () Bool)

(assert (=> d!1060722 (=> (not res!1454527) (not e!2227448))))

(declare-fun lt!1236353 () List!37982)

(assert (=> d!1060722 (= res!1454527 (= (content!5400 lt!1236353) ((_ map or) (content!5400 lt!1236221) (content!5400 (_2!22008 lt!1236228)))))))

(declare-fun e!2227447 () List!37982)

(assert (=> d!1060722 (= lt!1236353 e!2227447)))

(declare-fun c!623043 () Bool)

(assert (=> d!1060722 (= c!623043 ((_ is Nil!37858) lt!1236221))))

(assert (=> d!1060722 (= (++!9418 lt!1236221 (_2!22008 lt!1236228)) lt!1236353)))

(declare-fun b!3599590 () Bool)

(assert (=> b!3599590 (= e!2227447 (_2!22008 lt!1236228))))

(declare-fun b!3599592 () Bool)

(declare-fun res!1454526 () Bool)

(assert (=> b!3599592 (=> (not res!1454526) (not e!2227448))))

(assert (=> b!3599592 (= res!1454526 (= (size!28848 lt!1236353) (+ (size!28848 lt!1236221) (size!28848 (_2!22008 lt!1236228)))))))

(declare-fun b!3599591 () Bool)

(assert (=> b!3599591 (= e!2227447 (Cons!37858 (h!43278 lt!1236221) (++!9418 (t!292073 lt!1236221) (_2!22008 lt!1236228))))))

(declare-fun b!3599593 () Bool)

(assert (=> b!3599593 (= e!2227448 (or (not (= (_2!22008 lt!1236228) Nil!37858)) (= lt!1236353 lt!1236221)))))

(assert (= (and d!1060722 c!623043) b!3599590))

(assert (= (and d!1060722 (not c!623043)) b!3599591))

(assert (= (and d!1060722 res!1454527) b!3599592))

(assert (= (and b!3599592 res!1454526) b!3599593))

(declare-fun m!4095275 () Bool)

(assert (=> d!1060722 m!4095275))

(declare-fun m!4095277 () Bool)

(assert (=> d!1060722 m!4095277))

(declare-fun m!4095279 () Bool)

(assert (=> d!1060722 m!4095279))

(declare-fun m!4095281 () Bool)

(assert (=> b!3599592 m!4095281))

(assert (=> b!3599592 m!4094783))

(declare-fun m!4095283 () Bool)

(assert (=> b!3599592 m!4095283))

(declare-fun m!4095285 () Bool)

(assert (=> b!3599591 m!4095285))

(assert (=> b!3599184 d!1060722))

(declare-fun b!3599679 () Bool)

(declare-fun e!2227493 () Unit!53883)

(declare-fun Unit!53891 () Unit!53883)

(assert (=> b!3599679 (= e!2227493 Unit!53891)))

(declare-fun lt!1236465 () List!37982)

(assert (=> b!3599679 (= lt!1236465 (++!9418 lt!1236216 suffix!1395))))

(declare-fun lt!1236463 () Token!10570)

(declare-fun lt!1236470 () Unit!53883)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!468 (LexerInterface!5191 Rule!11004 List!37983 List!37982) Unit!53883)

(assert (=> b!3599679 (= lt!1236470 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!468 thiss!23823 (rule!8334 lt!1236463) rules!3307 lt!1236465))))

(assert (=> b!3599679 (isEmpty!22334 (maxPrefixOneRule!1869 thiss!23823 (rule!8334 lt!1236463) lt!1236465))))

(declare-fun lt!1236468 () Unit!53883)

(assert (=> b!3599679 (= lt!1236468 lt!1236470)))

(declare-fun lt!1236472 () List!37982)

(assert (=> b!3599679 (= lt!1236472 (list!13942 (charsOf!3616 lt!1236463)))))

(declare-fun lt!1236475 () Unit!53883)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!456 (LexerInterface!5191 Rule!11004 List!37982 List!37982) Unit!53883)

(assert (=> b!3599679 (= lt!1236475 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!456 thiss!23823 (rule!8334 lt!1236463) lt!1236472 (++!9418 lt!1236216 suffix!1395)))))

(assert (=> b!3599679 (not (matchR!4930 (regex!5602 (rule!8334 lt!1236463)) lt!1236472))))

(declare-fun lt!1236467 () Unit!53883)

(assert (=> b!3599679 (= lt!1236467 lt!1236475)))

(assert (=> b!3599679 false))

(declare-fun b!3599680 () Bool)

(declare-fun Unit!53892 () Unit!53883)

(assert (=> b!3599680 (= e!2227493 Unit!53892)))

(declare-fun d!1060724 () Bool)

(assert (=> d!1060724 (isDefined!6067 (maxPrefix!2725 thiss!23823 rules!3307 (++!9418 lt!1236216 suffix!1395)))))

(declare-fun lt!1236466 () Unit!53883)

(assert (=> d!1060724 (= lt!1236466 e!2227493)))

(declare-fun c!623059 () Bool)

(assert (=> d!1060724 (= c!623059 (isEmpty!22334 (maxPrefix!2725 thiss!23823 rules!3307 (++!9418 lt!1236216 suffix!1395))))))

(declare-fun lt!1236476 () Unit!53883)

(declare-fun lt!1236477 () Unit!53883)

(assert (=> d!1060724 (= lt!1236476 lt!1236477)))

(declare-fun e!2227492 () Bool)

(assert (=> d!1060724 e!2227492))

(declare-fun res!1454581 () Bool)

(assert (=> d!1060724 (=> (not res!1454581) (not e!2227492))))

(assert (=> d!1060724 (= res!1454581 (isDefined!6066 (getRuleFromTag!1208 thiss!23823 rules!3307 (tag!6290 (rule!8334 lt!1236463)))))))

(assert (=> d!1060724 (= lt!1236477 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1208 thiss!23823 rules!3307 lt!1236216 lt!1236463))))

(declare-fun lt!1236473 () Unit!53883)

(declare-fun lt!1236462 () Unit!53883)

(assert (=> d!1060724 (= lt!1236473 lt!1236462)))

(declare-fun lt!1236469 () List!37982)

(assert (=> d!1060724 (isPrefix!2965 lt!1236469 (++!9418 lt!1236216 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!432 (List!37982 List!37982 List!37982) Unit!53883)

(assert (=> d!1060724 (= lt!1236462 (lemmaPrefixStaysPrefixWhenAddingToSuffix!432 lt!1236469 lt!1236216 suffix!1395))))

(assert (=> d!1060724 (= lt!1236469 (list!13942 (charsOf!3616 lt!1236463)))))

(declare-fun lt!1236464 () Unit!53883)

(declare-fun lt!1236461 () Unit!53883)

(assert (=> d!1060724 (= lt!1236464 lt!1236461)))

(declare-fun lt!1236474 () List!37982)

(declare-fun lt!1236471 () List!37982)

(assert (=> d!1060724 (isPrefix!2965 lt!1236474 (++!9418 lt!1236474 lt!1236471))))

(assert (=> d!1060724 (= lt!1236461 (lemmaConcatTwoListThenFirstIsPrefix!1886 lt!1236474 lt!1236471))))

(assert (=> d!1060724 (= lt!1236471 (_2!22008 (get!12246 (maxPrefix!2725 thiss!23823 rules!3307 lt!1236216))))))

(assert (=> d!1060724 (= lt!1236474 (list!13942 (charsOf!3616 lt!1236463)))))

(declare-datatypes ((List!37986 0))(
  ( (Nil!37862) (Cons!37862 (h!43282 Token!10570) (t!292197 List!37986)) )
))
(declare-fun head!7544 (List!37986) Token!10570)

(declare-datatypes ((IArray!23059 0))(
  ( (IArray!23060 (innerList!11587 List!37986)) )
))
(declare-datatypes ((Conc!11527 0))(
  ( (Node!11527 (left!29586 Conc!11527) (right!29916 Conc!11527) (csize!23284 Int) (cheight!11738 Int)) (Leaf!17939 (xs!14729 IArray!23059) (csize!23285 Int)) (Empty!11527) )
))
(declare-datatypes ((BalanceConc!22668 0))(
  ( (BalanceConc!22669 (c!623097 Conc!11527)) )
))
(declare-fun list!13946 (BalanceConc!22668) List!37986)

(declare-datatypes ((tuple2!37752 0))(
  ( (tuple2!37753 (_1!22010 BalanceConc!22668) (_2!22010 BalanceConc!22664)) )
))
(declare-fun lex!2464 (LexerInterface!5191 List!37983 BalanceConc!22664) tuple2!37752)

(assert (=> d!1060724 (= lt!1236463 (head!7544 (list!13946 (_1!22010 (lex!2464 thiss!23823 rules!3307 (seqFromList!4155 lt!1236216))))))))

(assert (=> d!1060724 (not (isEmpty!22331 rules!3307))))

(assert (=> d!1060724 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!871 thiss!23823 rules!3307 lt!1236216 suffix!1395) lt!1236466)))

(declare-fun b!3599677 () Bool)

(declare-fun res!1454582 () Bool)

(assert (=> b!3599677 (=> (not res!1454582) (not e!2227492))))

(assert (=> b!3599677 (= res!1454582 (matchR!4930 (regex!5602 (get!12245 (getRuleFromTag!1208 thiss!23823 rules!3307 (tag!6290 (rule!8334 lt!1236463))))) (list!13942 (charsOf!3616 lt!1236463))))))

(declare-fun b!3599678 () Bool)

(assert (=> b!3599678 (= e!2227492 (= (rule!8334 lt!1236463) (get!12245 (getRuleFromTag!1208 thiss!23823 rules!3307 (tag!6290 (rule!8334 lt!1236463))))))))

(assert (= (and d!1060724 res!1454581) b!3599677))

(assert (= (and b!3599677 res!1454582) b!3599678))

(assert (= (and d!1060724 c!623059) b!3599679))

(assert (= (and d!1060724 (not c!623059)) b!3599680))

(declare-fun m!4095433 () Bool)

(assert (=> b!3599679 m!4095433))

(declare-fun m!4095435 () Bool)

(assert (=> b!3599679 m!4095435))

(declare-fun m!4095437 () Bool)

(assert (=> b!3599679 m!4095437))

(assert (=> b!3599679 m!4095433))

(declare-fun m!4095439 () Bool)

(assert (=> b!3599679 m!4095439))

(assert (=> b!3599679 m!4094825))

(declare-fun m!4095441 () Bool)

(assert (=> b!3599679 m!4095441))

(assert (=> b!3599679 m!4094825))

(declare-fun m!4095443 () Bool)

(assert (=> b!3599679 m!4095443))

(assert (=> b!3599679 m!4095435))

(declare-fun m!4095445 () Bool)

(assert (=> b!3599679 m!4095445))

(declare-fun m!4095447 () Bool)

(assert (=> d!1060724 m!4095447))

(declare-fun m!4095449 () Bool)

(assert (=> d!1060724 m!4095449))

(declare-fun m!4095451 () Bool)

(assert (=> d!1060724 m!4095451))

(declare-fun m!4095453 () Bool)

(assert (=> d!1060724 m!4095453))

(declare-fun m!4095455 () Bool)

(assert (=> d!1060724 m!4095455))

(declare-fun m!4095457 () Bool)

(assert (=> d!1060724 m!4095457))

(assert (=> d!1060724 m!4095435))

(declare-fun m!4095459 () Bool)

(assert (=> d!1060724 m!4095459))

(declare-fun m!4095461 () Bool)

(assert (=> d!1060724 m!4095461))

(assert (=> d!1060724 m!4094843))

(assert (=> d!1060724 m!4095449))

(declare-fun m!4095463 () Bool)

(assert (=> d!1060724 m!4095463))

(assert (=> d!1060724 m!4094743))

(assert (=> d!1060724 m!4095435))

(assert (=> d!1060724 m!4095445))

(assert (=> d!1060724 m!4095453))

(declare-fun m!4095465 () Bool)

(assert (=> d!1060724 m!4095465))

(declare-fun m!4095467 () Bool)

(assert (=> d!1060724 m!4095467))

(assert (=> d!1060724 m!4094825))

(declare-fun m!4095469 () Bool)

(assert (=> d!1060724 m!4095469))

(assert (=> d!1060724 m!4094743))

(declare-fun m!4095471 () Bool)

(assert (=> d!1060724 m!4095471))

(assert (=> d!1060724 m!4094825))

(declare-fun m!4095473 () Bool)

(assert (=> d!1060724 m!4095473))

(assert (=> d!1060724 m!4095459))

(assert (=> d!1060724 m!4095473))

(declare-fun m!4095475 () Bool)

(assert (=> d!1060724 m!4095475))

(assert (=> d!1060724 m!4095465))

(assert (=> d!1060724 m!4095473))

(declare-fun m!4095477 () Bool)

(assert (=> d!1060724 m!4095477))

(assert (=> d!1060724 m!4094825))

(assert (=> b!3599677 m!4095435))

(assert (=> b!3599677 m!4095445))

(assert (=> b!3599677 m!4095459))

(declare-fun m!4095479 () Bool)

(assert (=> b!3599677 m!4095479))

(assert (=> b!3599677 m!4095459))

(assert (=> b!3599677 m!4095435))

(assert (=> b!3599677 m!4095445))

(declare-fun m!4095481 () Bool)

(assert (=> b!3599677 m!4095481))

(assert (=> b!3599678 m!4095459))

(assert (=> b!3599678 m!4095459))

(assert (=> b!3599678 m!4095479))

(assert (=> b!3599184 d!1060724))

(declare-fun d!1060758 () Bool)

(assert (=> d!1060758 (= (get!12246 lt!1236220) (v!37539 lt!1236220))))

(assert (=> b!3599184 d!1060758))

(declare-fun d!1060760 () Bool)

(declare-fun e!2227495 () Bool)

(assert (=> d!1060760 e!2227495))

(declare-fun res!1454584 () Bool)

(assert (=> d!1060760 (=> (not res!1454584) (not e!2227495))))

(declare-fun lt!1236478 () List!37982)

(assert (=> d!1060760 (= res!1454584 (= (content!5400 lt!1236478) ((_ map or) (content!5400 lt!1236216) (content!5400 suffix!1395))))))

(declare-fun e!2227494 () List!37982)

(assert (=> d!1060760 (= lt!1236478 e!2227494)))

(declare-fun c!623060 () Bool)

(assert (=> d!1060760 (= c!623060 ((_ is Nil!37858) lt!1236216))))

(assert (=> d!1060760 (= (++!9418 lt!1236216 suffix!1395) lt!1236478)))

(declare-fun b!3599681 () Bool)

(assert (=> b!3599681 (= e!2227494 suffix!1395)))

(declare-fun b!3599683 () Bool)

(declare-fun res!1454583 () Bool)

(assert (=> b!3599683 (=> (not res!1454583) (not e!2227495))))

(assert (=> b!3599683 (= res!1454583 (= (size!28848 lt!1236478) (+ (size!28848 lt!1236216) (size!28848 suffix!1395))))))

(declare-fun b!3599682 () Bool)

(assert (=> b!3599682 (= e!2227494 (Cons!37858 (h!43278 lt!1236216) (++!9418 (t!292073 lt!1236216) suffix!1395)))))

(declare-fun b!3599684 () Bool)

(assert (=> b!3599684 (= e!2227495 (or (not (= suffix!1395 Nil!37858)) (= lt!1236478 lt!1236216)))))

(assert (= (and d!1060760 c!623060) b!3599681))

(assert (= (and d!1060760 (not c!623060)) b!3599682))

(assert (= (and d!1060760 res!1454584) b!3599683))

(assert (= (and b!3599683 res!1454583) b!3599684))

(declare-fun m!4095483 () Bool)

(assert (=> d!1060760 m!4095483))

(assert (=> d!1060760 m!4095265))

(declare-fun m!4095485 () Bool)

(assert (=> d!1060760 m!4095485))

(declare-fun m!4095487 () Bool)

(assert (=> b!3599683 m!4095487))

(assert (=> b!3599683 m!4095213))

(declare-fun m!4095489 () Bool)

(assert (=> b!3599683 m!4095489))

(declare-fun m!4095491 () Bool)

(assert (=> b!3599682 m!4095491))

(assert (=> b!3599184 d!1060760))

(assert (=> b!3599184 d!1060602))

(declare-fun d!1060762 () Bool)

(declare-fun e!2227503 () Bool)

(assert (=> d!1060762 e!2227503))

(declare-fun res!1454595 () Bool)

(assert (=> d!1060762 (=> res!1454595 e!2227503)))

(declare-fun lt!1236481 () Bool)

(assert (=> d!1060762 (= res!1454595 (not lt!1236481))))

(declare-fun e!2227504 () Bool)

(assert (=> d!1060762 (= lt!1236481 e!2227504)))

(declare-fun res!1454594 () Bool)

(assert (=> d!1060762 (=> res!1454594 e!2227504)))

(assert (=> d!1060762 (= res!1454594 ((_ is Nil!37858) lt!1236221))))

(assert (=> d!1060762 (= (isPrefix!2965 lt!1236221 (++!9418 lt!1236221 (_2!22008 lt!1236228))) lt!1236481)))

(declare-fun b!3599693 () Bool)

(declare-fun e!2227502 () Bool)

(assert (=> b!3599693 (= e!2227504 e!2227502)))

(declare-fun res!1454596 () Bool)

(assert (=> b!3599693 (=> (not res!1454596) (not e!2227502))))

(assert (=> b!3599693 (= res!1454596 (not ((_ is Nil!37858) (++!9418 lt!1236221 (_2!22008 lt!1236228)))))))

(declare-fun b!3599696 () Bool)

(assert (=> b!3599696 (= e!2227503 (>= (size!28848 (++!9418 lt!1236221 (_2!22008 lt!1236228))) (size!28848 lt!1236221)))))

(declare-fun b!3599694 () Bool)

(declare-fun res!1454593 () Bool)

(assert (=> b!3599694 (=> (not res!1454593) (not e!2227502))))

(assert (=> b!3599694 (= res!1454593 (= (head!7542 lt!1236221) (head!7542 (++!9418 lt!1236221 (_2!22008 lt!1236228)))))))

(declare-fun b!3599695 () Bool)

(assert (=> b!3599695 (= e!2227502 (isPrefix!2965 (tail!5579 lt!1236221) (tail!5579 (++!9418 lt!1236221 (_2!22008 lt!1236228)))))))

(assert (= (and d!1060762 (not res!1454594)) b!3599693))

(assert (= (and b!3599693 res!1454596) b!3599694))

(assert (= (and b!3599694 res!1454593) b!3599695))

(assert (= (and d!1060762 (not res!1454595)) b!3599696))

(assert (=> b!3599696 m!4094819))

(declare-fun m!4095493 () Bool)

(assert (=> b!3599696 m!4095493))

(assert (=> b!3599696 m!4094783))

(assert (=> b!3599694 m!4094801))

(assert (=> b!3599694 m!4094819))

(declare-fun m!4095495 () Bool)

(assert (=> b!3599694 m!4095495))

(declare-fun m!4095497 () Bool)

(assert (=> b!3599695 m!4095497))

(assert (=> b!3599695 m!4094819))

(declare-fun m!4095499 () Bool)

(assert (=> b!3599695 m!4095499))

(assert (=> b!3599695 m!4095497))

(assert (=> b!3599695 m!4095499))

(declare-fun m!4095501 () Bool)

(assert (=> b!3599695 m!4095501))

(assert (=> b!3599184 d!1060762))

(declare-fun d!1060764 () Bool)

(declare-fun e!2227524 () Bool)

(assert (=> d!1060764 e!2227524))

(declare-fun res!1454616 () Bool)

(assert (=> d!1060764 (=> res!1454616 e!2227524)))

(declare-fun lt!1236499 () Option!7835)

(declare-fun isEmpty!22335 (Option!7835) Bool)

(assert (=> d!1060764 (= res!1454616 (isEmpty!22335 lt!1236499))))

(declare-fun e!2227521 () Option!7835)

(assert (=> d!1060764 (= lt!1236499 e!2227521)))

(declare-fun c!623067 () Bool)

(assert (=> d!1060764 (= c!623067 (and ((_ is Cons!37859) rules!3307) (= (tag!6290 (h!43279 rules!3307)) (tag!6290 (rule!8334 (_1!22008 lt!1236228))))))))

(assert (=> d!1060764 (rulesInvariant!4588 thiss!23823 rules!3307)))

(assert (=> d!1060764 (= (getRuleFromTag!1208 thiss!23823 rules!3307 (tag!6290 (rule!8334 (_1!22008 lt!1236228)))) lt!1236499)))

(declare-fun b!3599727 () Bool)

(declare-fun e!2227522 () Option!7835)

(assert (=> b!3599727 (= e!2227522 None!7834)))

(declare-fun b!3599728 () Bool)

(declare-fun e!2227523 () Bool)

(assert (=> b!3599728 (= e!2227523 (= (tag!6290 (get!12245 lt!1236499)) (tag!6290 (rule!8334 (_1!22008 lt!1236228)))))))

(declare-fun b!3599729 () Bool)

(declare-fun lt!1236500 () Unit!53883)

(declare-fun lt!1236498 () Unit!53883)

(assert (=> b!3599729 (= lt!1236500 lt!1236498)))

(assert (=> b!3599729 (rulesInvariant!4588 thiss!23823 (t!292074 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!512 (LexerInterface!5191 Rule!11004 List!37983) Unit!53883)

(assert (=> b!3599729 (= lt!1236498 (lemmaInvariantOnRulesThenOnTail!512 thiss!23823 (h!43279 rules!3307) (t!292074 rules!3307)))))

(assert (=> b!3599729 (= e!2227522 (getRuleFromTag!1208 thiss!23823 (t!292074 rules!3307) (tag!6290 (rule!8334 (_1!22008 lt!1236228)))))))

(declare-fun b!3599730 () Bool)

(assert (=> b!3599730 (= e!2227521 e!2227522)))

(declare-fun c!623068 () Bool)

(assert (=> b!3599730 (= c!623068 (and ((_ is Cons!37859) rules!3307) (not (= (tag!6290 (h!43279 rules!3307)) (tag!6290 (rule!8334 (_1!22008 lt!1236228)))))))))

(declare-fun b!3599731 () Bool)

(assert (=> b!3599731 (= e!2227521 (Some!7834 (h!43279 rules!3307)))))

(declare-fun b!3599732 () Bool)

(assert (=> b!3599732 (= e!2227524 e!2227523)))

(declare-fun res!1454615 () Bool)

(assert (=> b!3599732 (=> (not res!1454615) (not e!2227523))))

(assert (=> b!3599732 (= res!1454615 (contains!7268 rules!3307 (get!12245 lt!1236499)))))

(assert (= (and d!1060764 c!623067) b!3599731))

(assert (= (and d!1060764 (not c!623067)) b!3599730))

(assert (= (and b!3599730 c!623068) b!3599729))

(assert (= (and b!3599730 (not c!623068)) b!3599727))

(assert (= (and d!1060764 (not res!1454616)) b!3599732))

(assert (= (and b!3599732 res!1454615) b!3599728))

(declare-fun m!4095503 () Bool)

(assert (=> d!1060764 m!4095503))

(assert (=> d!1060764 m!4094753))

(declare-fun m!4095505 () Bool)

(assert (=> b!3599728 m!4095505))

(declare-fun m!4095507 () Bool)

(assert (=> b!3599729 m!4095507))

(declare-fun m!4095509 () Bool)

(assert (=> b!3599729 m!4095509))

(declare-fun m!4095511 () Bool)

(assert (=> b!3599729 m!4095511))

(assert (=> b!3599732 m!4095505))

(assert (=> b!3599732 m!4095505))

(declare-fun m!4095513 () Bool)

(assert (=> b!3599732 m!4095513))

(assert (=> b!3599184 d!1060764))

(declare-fun b!3599733 () Bool)

(declare-fun res!1454617 () Bool)

(declare-fun e!2227527 () Bool)

(assert (=> b!3599733 (=> (not res!1454617) (not e!2227527))))

(declare-fun lt!1236503 () Option!7834)

(assert (=> b!3599733 (= res!1454617 (< (size!28848 (_2!22008 (get!12246 lt!1236503))) (size!28848 lt!1236214)))))

(declare-fun b!3599734 () Bool)

(declare-fun e!2227526 () Bool)

(assert (=> b!3599734 (= e!2227526 e!2227527)))

(declare-fun res!1454620 () Bool)

(assert (=> b!3599734 (=> (not res!1454620) (not e!2227527))))

(assert (=> b!3599734 (= res!1454620 (isDefined!6067 lt!1236503))))

(declare-fun b!3599735 () Bool)

(assert (=> b!3599735 (= e!2227527 (contains!7268 rules!3307 (rule!8334 (_1!22008 (get!12246 lt!1236503)))))))

(declare-fun b!3599736 () Bool)

(declare-fun res!1454623 () Bool)

(assert (=> b!3599736 (=> (not res!1454623) (not e!2227527))))

(assert (=> b!3599736 (= res!1454623 (= (value!180117 (_1!22008 (get!12246 lt!1236503))) (apply!9108 (transformation!5602 (rule!8334 (_1!22008 (get!12246 lt!1236503)))) (seqFromList!4155 (originalCharacters!6316 (_1!22008 (get!12246 lt!1236503)))))))))

(declare-fun bm!260356 () Bool)

(declare-fun call!260361 () Option!7834)

(assert (=> bm!260356 (= call!260361 (maxPrefixOneRule!1869 thiss!23823 (h!43279 rules!3307) lt!1236214))))

(declare-fun d!1060766 () Bool)

(assert (=> d!1060766 e!2227526))

(declare-fun res!1454618 () Bool)

(assert (=> d!1060766 (=> res!1454618 e!2227526)))

(assert (=> d!1060766 (= res!1454618 (isEmpty!22334 lt!1236503))))

(declare-fun e!2227525 () Option!7834)

(assert (=> d!1060766 (= lt!1236503 e!2227525)))

(declare-fun c!623069 () Bool)

(assert (=> d!1060766 (= c!623069 (and ((_ is Cons!37859) rules!3307) ((_ is Nil!37859) (t!292074 rules!3307))))))

(declare-fun lt!1236502 () Unit!53883)

(declare-fun lt!1236504 () Unit!53883)

(assert (=> d!1060766 (= lt!1236502 lt!1236504)))

(assert (=> d!1060766 (isPrefix!2965 lt!1236214 lt!1236214)))

(assert (=> d!1060766 (= lt!1236504 (lemmaIsPrefixRefl!1898 lt!1236214 lt!1236214))))

(assert (=> d!1060766 (rulesValidInductive!1963 thiss!23823 rules!3307)))

(assert (=> d!1060766 (= (maxPrefix!2725 thiss!23823 rules!3307 lt!1236214) lt!1236503)))

(declare-fun b!3599737 () Bool)

(declare-fun res!1454622 () Bool)

(assert (=> b!3599737 (=> (not res!1454622) (not e!2227527))))

(assert (=> b!3599737 (= res!1454622 (= (++!9418 (list!13942 (charsOf!3616 (_1!22008 (get!12246 lt!1236503)))) (_2!22008 (get!12246 lt!1236503))) lt!1236214))))

(declare-fun b!3599738 () Bool)

(declare-fun lt!1236505 () Option!7834)

(declare-fun lt!1236501 () Option!7834)

(assert (=> b!3599738 (= e!2227525 (ite (and ((_ is None!7833) lt!1236505) ((_ is None!7833) lt!1236501)) None!7833 (ite ((_ is None!7833) lt!1236501) lt!1236505 (ite ((_ is None!7833) lt!1236505) lt!1236501 (ite (>= (size!28846 (_1!22008 (v!37539 lt!1236505))) (size!28846 (_1!22008 (v!37539 lt!1236501)))) lt!1236505 lt!1236501)))))))

(assert (=> b!3599738 (= lt!1236505 call!260361)))

(assert (=> b!3599738 (= lt!1236501 (maxPrefix!2725 thiss!23823 (t!292074 rules!3307) lt!1236214))))

(declare-fun b!3599739 () Bool)

(assert (=> b!3599739 (= e!2227525 call!260361)))

(declare-fun b!3599740 () Bool)

(declare-fun res!1454621 () Bool)

(assert (=> b!3599740 (=> (not res!1454621) (not e!2227527))))

(assert (=> b!3599740 (= res!1454621 (matchR!4930 (regex!5602 (rule!8334 (_1!22008 (get!12246 lt!1236503)))) (list!13942 (charsOf!3616 (_1!22008 (get!12246 lt!1236503))))))))

(declare-fun b!3599741 () Bool)

(declare-fun res!1454619 () Bool)

(assert (=> b!3599741 (=> (not res!1454619) (not e!2227527))))

(assert (=> b!3599741 (= res!1454619 (= (list!13942 (charsOf!3616 (_1!22008 (get!12246 lt!1236503)))) (originalCharacters!6316 (_1!22008 (get!12246 lt!1236503)))))))

(assert (= (and d!1060766 c!623069) b!3599739))

(assert (= (and d!1060766 (not c!623069)) b!3599738))

(assert (= (or b!3599739 b!3599738) bm!260356))

(assert (= (and d!1060766 (not res!1454618)) b!3599734))

(assert (= (and b!3599734 res!1454620) b!3599741))

(assert (= (and b!3599741 res!1454619) b!3599733))

(assert (= (and b!3599733 res!1454617) b!3599737))

(assert (= (and b!3599737 res!1454622) b!3599736))

(assert (= (and b!3599736 res!1454623) b!3599740))

(assert (= (and b!3599740 res!1454621) b!3599735))

(declare-fun m!4095515 () Bool)

(assert (=> b!3599735 m!4095515))

(declare-fun m!4095517 () Bool)

(assert (=> b!3599735 m!4095517))

(assert (=> b!3599733 m!4095515))

(declare-fun m!4095519 () Bool)

(assert (=> b!3599733 m!4095519))

(declare-fun m!4095521 () Bool)

(assert (=> b!3599733 m!4095521))

(declare-fun m!4095523 () Bool)

(assert (=> b!3599734 m!4095523))

(declare-fun m!4095525 () Bool)

(assert (=> b!3599738 m!4095525))

(assert (=> b!3599740 m!4095515))

(declare-fun m!4095527 () Bool)

(assert (=> b!3599740 m!4095527))

(assert (=> b!3599740 m!4095527))

(declare-fun m!4095529 () Bool)

(assert (=> b!3599740 m!4095529))

(assert (=> b!3599740 m!4095529))

(declare-fun m!4095531 () Bool)

(assert (=> b!3599740 m!4095531))

(assert (=> b!3599741 m!4095515))

(assert (=> b!3599741 m!4095527))

(assert (=> b!3599741 m!4095527))

(assert (=> b!3599741 m!4095529))

(assert (=> b!3599736 m!4095515))

(declare-fun m!4095533 () Bool)

(assert (=> b!3599736 m!4095533))

(assert (=> b!3599736 m!4095533))

(declare-fun m!4095535 () Bool)

(assert (=> b!3599736 m!4095535))

(declare-fun m!4095537 () Bool)

(assert (=> d!1060766 m!4095537))

(declare-fun m!4095539 () Bool)

(assert (=> d!1060766 m!4095539))

(declare-fun m!4095541 () Bool)

(assert (=> d!1060766 m!4095541))

(assert (=> d!1060766 m!4095235))

(declare-fun m!4095543 () Bool)

(assert (=> bm!260356 m!4095543))

(assert (=> b!3599737 m!4095515))

(assert (=> b!3599737 m!4095527))

(assert (=> b!3599737 m!4095527))

(assert (=> b!3599737 m!4095529))

(assert (=> b!3599737 m!4095529))

(declare-fun m!4095545 () Bool)

(assert (=> b!3599737 m!4095545))

(assert (=> b!3599184 d!1060766))

(declare-fun d!1060768 () Bool)

(assert (=> d!1060768 (= (list!13942 lt!1236234) (list!13944 (c!622965 lt!1236234)))))

(declare-fun bs!570512 () Bool)

(assert (= bs!570512 d!1060768))

(declare-fun m!4095547 () Bool)

(assert (=> bs!570512 m!4095547))

(assert (=> b!3599184 d!1060768))

(declare-fun d!1060770 () Bool)

(declare-fun e!2227533 () Bool)

(assert (=> d!1060770 e!2227533))

(declare-fun res!1454633 () Bool)

(assert (=> d!1060770 (=> res!1454633 e!2227533)))

(declare-fun lt!1236511 () Bool)

(assert (=> d!1060770 (= res!1454633 (not lt!1236511))))

(declare-fun e!2227534 () Bool)

(assert (=> d!1060770 (= lt!1236511 e!2227534)))

(declare-fun res!1454632 () Bool)

(assert (=> d!1060770 (=> res!1454632 e!2227534)))

(assert (=> d!1060770 (= res!1454632 ((_ is Nil!37858) lt!1236216))))

(assert (=> d!1060770 (= (isPrefix!2965 lt!1236216 lt!1236214) lt!1236511)))

(declare-fun b!3599751 () Bool)

(declare-fun e!2227532 () Bool)

(assert (=> b!3599751 (= e!2227534 e!2227532)))

(declare-fun res!1454634 () Bool)

(assert (=> b!3599751 (=> (not res!1454634) (not e!2227532))))

(assert (=> b!3599751 (= res!1454634 (not ((_ is Nil!37858) lt!1236214)))))

(declare-fun b!3599754 () Bool)

(assert (=> b!3599754 (= e!2227533 (>= (size!28848 lt!1236214) (size!28848 lt!1236216)))))

(declare-fun b!3599752 () Bool)

(declare-fun res!1454631 () Bool)

(assert (=> b!3599752 (=> (not res!1454631) (not e!2227532))))

(assert (=> b!3599752 (= res!1454631 (= (head!7542 lt!1236216) (head!7542 lt!1236214)))))

(declare-fun b!3599753 () Bool)

(assert (=> b!3599753 (= e!2227532 (isPrefix!2965 (tail!5579 lt!1236216) (tail!5579 lt!1236214)))))

(assert (= (and d!1060770 (not res!1454632)) b!3599751))

(assert (= (and b!3599751 res!1454634) b!3599752))

(assert (= (and b!3599752 res!1454631) b!3599753))

(assert (= (and d!1060770 (not res!1454633)) b!3599754))

(assert (=> b!3599754 m!4095521))

(assert (=> b!3599754 m!4095213))

(assert (=> b!3599752 m!4095251))

(declare-fun m!4095549 () Bool)

(assert (=> b!3599752 m!4095549))

(assert (=> b!3599753 m!4095245))

(declare-fun m!4095551 () Bool)

(assert (=> b!3599753 m!4095551))

(assert (=> b!3599753 m!4095245))

(assert (=> b!3599753 m!4095551))

(declare-fun m!4095553 () Bool)

(assert (=> b!3599753 m!4095553))

(assert (=> b!3599184 d!1060770))

(declare-fun d!1060772 () Bool)

(declare-fun e!2227542 () Bool)

(assert (=> d!1060772 e!2227542))

(declare-fun res!1454641 () Bool)

(assert (=> d!1060772 (=> (not res!1454641) (not e!2227542))))

(assert (=> d!1060772 (= res!1454641 (isDefined!6066 (getRuleFromTag!1208 thiss!23823 rules!3307 (tag!6290 (rule!8334 (_1!22008 lt!1236228))))))))

(declare-fun lt!1236521 () Unit!53883)

(declare-fun choose!20978 (LexerInterface!5191 List!37983 List!37982 Token!10570) Unit!53883)

(assert (=> d!1060772 (= lt!1236521 (choose!20978 thiss!23823 rules!3307 lt!1236214 (_1!22008 lt!1236228)))))

(assert (=> d!1060772 (rulesInvariant!4588 thiss!23823 rules!3307)))

(assert (=> d!1060772 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1208 thiss!23823 rules!3307 lt!1236214 (_1!22008 lt!1236228)) lt!1236521)))

(declare-fun b!3599767 () Bool)

(declare-fun res!1454642 () Bool)

(assert (=> b!3599767 (=> (not res!1454642) (not e!2227542))))

(assert (=> b!3599767 (= res!1454642 (matchR!4930 (regex!5602 (get!12245 (getRuleFromTag!1208 thiss!23823 rules!3307 (tag!6290 (rule!8334 (_1!22008 lt!1236228)))))) (list!13942 (charsOf!3616 (_1!22008 lt!1236228)))))))

(declare-fun b!3599768 () Bool)

(assert (=> b!3599768 (= e!2227542 (= (rule!8334 (_1!22008 lt!1236228)) (get!12245 (getRuleFromTag!1208 thiss!23823 rules!3307 (tag!6290 (rule!8334 (_1!22008 lt!1236228)))))))))

(assert (= (and d!1060772 res!1454641) b!3599767))

(assert (= (and b!3599767 res!1454642) b!3599768))

(assert (=> d!1060772 m!4094837))

(assert (=> d!1060772 m!4094837))

(declare-fun m!4095607 () Bool)

(assert (=> d!1060772 m!4095607))

(declare-fun m!4095609 () Bool)

(assert (=> d!1060772 m!4095609))

(assert (=> d!1060772 m!4094753))

(assert (=> b!3599767 m!4094757))

(assert (=> b!3599767 m!4094759))

(assert (=> b!3599767 m!4094757))

(assert (=> b!3599767 m!4094837))

(declare-fun m!4095611 () Bool)

(assert (=> b!3599767 m!4095611))

(assert (=> b!3599767 m!4094759))

(declare-fun m!4095613 () Bool)

(assert (=> b!3599767 m!4095613))

(assert (=> b!3599767 m!4094837))

(assert (=> b!3599768 m!4094837))

(assert (=> b!3599768 m!4094837))

(assert (=> b!3599768 m!4095611))

(assert (=> b!3599184 d!1060772))

(declare-fun d!1060784 () Bool)

(declare-fun e!2227548 () Bool)

(assert (=> d!1060784 e!2227548))

(declare-fun res!1454645 () Bool)

(assert (=> d!1060784 (=> res!1454645 e!2227548)))

(declare-fun lt!1236522 () Bool)

(assert (=> d!1060784 (= res!1454645 (not lt!1236522))))

(declare-fun e!2227549 () Bool)

(assert (=> d!1060784 (= lt!1236522 e!2227549)))

(declare-fun res!1454644 () Bool)

(assert (=> d!1060784 (=> res!1454644 e!2227549)))

(assert (=> d!1060784 (= res!1454644 ((_ is Nil!37858) lt!1236221))))

(assert (=> d!1060784 (= (isPrefix!2965 lt!1236221 lt!1236214) lt!1236522)))

(declare-fun b!3599777 () Bool)

(declare-fun e!2227547 () Bool)

(assert (=> b!3599777 (= e!2227549 e!2227547)))

(declare-fun res!1454646 () Bool)

(assert (=> b!3599777 (=> (not res!1454646) (not e!2227547))))

(assert (=> b!3599777 (= res!1454646 (not ((_ is Nil!37858) lt!1236214)))))

(declare-fun b!3599780 () Bool)

(assert (=> b!3599780 (= e!2227548 (>= (size!28848 lt!1236214) (size!28848 lt!1236221)))))

(declare-fun b!3599778 () Bool)

(declare-fun res!1454643 () Bool)

(assert (=> b!3599778 (=> (not res!1454643) (not e!2227547))))

(assert (=> b!3599778 (= res!1454643 (= (head!7542 lt!1236221) (head!7542 lt!1236214)))))

(declare-fun b!3599779 () Bool)

(assert (=> b!3599779 (= e!2227547 (isPrefix!2965 (tail!5579 lt!1236221) (tail!5579 lt!1236214)))))

(assert (= (and d!1060784 (not res!1454644)) b!3599777))

(assert (= (and b!3599777 res!1454646) b!3599778))

(assert (= (and b!3599778 res!1454643) b!3599779))

(assert (= (and d!1060784 (not res!1454645)) b!3599780))

(assert (=> b!3599780 m!4095521))

(assert (=> b!3599780 m!4094783))

(assert (=> b!3599778 m!4094801))

(assert (=> b!3599778 m!4095549))

(assert (=> b!3599779 m!4095497))

(assert (=> b!3599779 m!4095551))

(assert (=> b!3599779 m!4095497))

(assert (=> b!3599779 m!4095551))

(declare-fun m!4095621 () Bool)

(assert (=> b!3599779 m!4095621))

(assert (=> b!3599184 d!1060784))

(declare-fun d!1060788 () Bool)

(assert (=> d!1060788 (= (isDefined!6066 lt!1236225) (not (isEmpty!22335 lt!1236225)))))

(declare-fun bs!570514 () Bool)

(assert (= bs!570514 d!1060788))

(declare-fun m!4095623 () Bool)

(assert (=> bs!570514 m!4095623))

(assert (=> b!3599184 d!1060788))

(declare-fun d!1060790 () Bool)

(assert (=> d!1060790 (isPrefix!2965 lt!1236221 (++!9418 lt!1236221 (_2!22008 lt!1236228)))))

(declare-fun lt!1236525 () Unit!53883)

(declare-fun choose!20980 (List!37982 List!37982) Unit!53883)

(assert (=> d!1060790 (= lt!1236525 (choose!20980 lt!1236221 (_2!22008 lt!1236228)))))

(assert (=> d!1060790 (= (lemmaConcatTwoListThenFirstIsPrefix!1886 lt!1236221 (_2!22008 lt!1236228)) lt!1236525)))

(declare-fun bs!570515 () Bool)

(assert (= bs!570515 d!1060790))

(assert (=> bs!570515 m!4094819))

(assert (=> bs!570515 m!4094819))

(assert (=> bs!570515 m!4094821))

(declare-fun m!4095625 () Bool)

(assert (=> bs!570515 m!4095625))

(assert (=> b!3599184 d!1060790))

(declare-fun d!1060792 () Bool)

(assert (=> d!1060792 (isPrefix!2965 lt!1236216 (++!9418 lt!1236216 suffix!1395))))

(declare-fun lt!1236526 () Unit!53883)

(assert (=> d!1060792 (= lt!1236526 (choose!20980 lt!1236216 suffix!1395))))

(assert (=> d!1060792 (= (lemmaConcatTwoListThenFirstIsPrefix!1886 lt!1236216 suffix!1395) lt!1236526)))

(declare-fun bs!570516 () Bool)

(assert (= bs!570516 d!1060792))

(assert (=> bs!570516 m!4094825))

(assert (=> bs!570516 m!4094825))

(declare-fun m!4095627 () Bool)

(assert (=> bs!570516 m!4095627))

(declare-fun m!4095629 () Bool)

(assert (=> bs!570516 m!4095629))

(assert (=> b!3599184 d!1060792))

(declare-fun d!1060794 () Bool)

(declare-fun res!1454649 () Bool)

(declare-fun e!2227573 () Bool)

(assert (=> d!1060794 (=> (not res!1454649) (not e!2227573))))

(declare-fun rulesValid!2138 (LexerInterface!5191 List!37983) Bool)

(assert (=> d!1060794 (= res!1454649 (rulesValid!2138 thiss!23823 rules!3307))))

(assert (=> d!1060794 (= (rulesInvariant!4588 thiss!23823 rules!3307) e!2227573)))

(declare-fun b!3599825 () Bool)

(declare-datatypes ((List!37987 0))(
  ( (Nil!37863) (Cons!37863 (h!43283 String!42494) (t!292198 List!37987)) )
))
(declare-fun noDuplicateTag!2134 (LexerInterface!5191 List!37983 List!37987) Bool)

(assert (=> b!3599825 (= e!2227573 (noDuplicateTag!2134 thiss!23823 rules!3307 Nil!37863))))

(assert (= (and d!1060794 res!1454649) b!3599825))

(declare-fun m!4095631 () Bool)

(assert (=> d!1060794 m!4095631))

(declare-fun m!4095633 () Bool)

(assert (=> b!3599825 m!4095633))

(assert (=> b!3599186 d!1060794))

(declare-fun d!1060796 () Bool)

(assert (=> d!1060796 (= (get!12246 lt!1236218) (v!37539 lt!1236218))))

(assert (=> b!3599185 d!1060796))

(declare-fun d!1060798 () Bool)

(declare-fun res!1454654 () Bool)

(declare-fun e!2227579 () Bool)

(assert (=> d!1060798 (=> res!1454654 e!2227579)))

(assert (=> d!1060798 (= res!1454654 (not ((_ is Cons!37859) rules!3307)))))

(assert (=> d!1060798 (= (sepAndNonSepRulesDisjointChars!1772 rules!3307 rules!3307) e!2227579)))

(declare-fun b!3599831 () Bool)

(declare-fun e!2227580 () Bool)

(assert (=> b!3599831 (= e!2227579 e!2227580)))

(declare-fun res!1454655 () Bool)

(assert (=> b!3599831 (=> (not res!1454655) (not e!2227580))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!805 (Rule!11004 List!37983) Bool)

(assert (=> b!3599831 (= res!1454655 (ruleDisjointCharsFromAllFromOtherType!805 (h!43279 rules!3307) rules!3307))))

(declare-fun b!3599832 () Bool)

(assert (=> b!3599832 (= e!2227580 (sepAndNonSepRulesDisjointChars!1772 rules!3307 (t!292074 rules!3307)))))

(assert (= (and d!1060798 (not res!1454654)) b!3599831))

(assert (= (and b!3599831 res!1454655) b!3599832))

(declare-fun m!4095639 () Bool)

(assert (=> b!3599831 m!4095639))

(declare-fun m!4095641 () Bool)

(assert (=> b!3599832 m!4095641))

(assert (=> b!3599164 d!1060798))

(declare-fun d!1060800 () Bool)

(assert (=> d!1060800 (= (inv!51209 (tag!6290 (h!43279 rules!3307))) (= (mod (str.len (value!180116 (tag!6290 (h!43279 rules!3307)))) 2) 0))))

(assert (=> b!3599166 d!1060800))

(declare-fun d!1060802 () Bool)

(declare-fun res!1454656 () Bool)

(declare-fun e!2227581 () Bool)

(assert (=> d!1060802 (=> (not res!1454656) (not e!2227581))))

(assert (=> d!1060802 (= res!1454656 (semiInverseModEq!2379 (toChars!7745 (transformation!5602 (h!43279 rules!3307))) (toValue!7886 (transformation!5602 (h!43279 rules!3307)))))))

(assert (=> d!1060802 (= (inv!51212 (transformation!5602 (h!43279 rules!3307))) e!2227581)))

(declare-fun b!3599833 () Bool)

(assert (=> b!3599833 (= e!2227581 (equivClasses!2278 (toChars!7745 (transformation!5602 (h!43279 rules!3307))) (toValue!7886 (transformation!5602 (h!43279 rules!3307)))))))

(assert (= (and d!1060802 res!1454656) b!3599833))

(declare-fun m!4095643 () Bool)

(assert (=> d!1060802 m!4095643))

(declare-fun m!4095645 () Bool)

(assert (=> b!3599833 m!4095645))

(assert (=> b!3599166 d!1060802))

(declare-fun b!3599834 () Bool)

(declare-fun e!2227582 () Bool)

(assert (=> b!3599834 (= e!2227582 (matchR!4930 (derivativeStep!3130 (regex!5602 (rule!8334 (_1!22008 lt!1236228))) (head!7542 lt!1236221)) (tail!5579 lt!1236221)))))

(declare-fun b!3599835 () Bool)

(declare-fun e!2227585 () Bool)

(declare-fun e!2227583 () Bool)

(assert (=> b!3599835 (= e!2227585 e!2227583)))

(declare-fun res!1454659 () Bool)

(assert (=> b!3599835 (=> res!1454659 e!2227583)))

(declare-fun call!260366 () Bool)

(assert (=> b!3599835 (= res!1454659 call!260366)))

(declare-fun d!1060804 () Bool)

(declare-fun e!2227586 () Bool)

(assert (=> d!1060804 e!2227586))

(declare-fun c!623080 () Bool)

(assert (=> d!1060804 (= c!623080 ((_ is EmptyExpr!10361) (regex!5602 (rule!8334 (_1!22008 lt!1236228)))))))

(declare-fun lt!1236527 () Bool)

(assert (=> d!1060804 (= lt!1236527 e!2227582)))

(declare-fun c!623079 () Bool)

(assert (=> d!1060804 (= c!623079 (isEmpty!22330 lt!1236221))))

(assert (=> d!1060804 (validRegex!4739 (regex!5602 (rule!8334 (_1!22008 lt!1236228))))))

(assert (=> d!1060804 (= (matchR!4930 (regex!5602 (rule!8334 (_1!22008 lt!1236228))) lt!1236221) lt!1236527)))

(declare-fun b!3599836 () Bool)

(assert (=> b!3599836 (= e!2227582 (nullable!3581 (regex!5602 (rule!8334 (_1!22008 lt!1236228)))))))

(declare-fun b!3599837 () Bool)

(assert (=> b!3599837 (= e!2227586 (= lt!1236527 call!260366))))

(declare-fun b!3599838 () Bool)

(declare-fun res!1454658 () Bool)

(declare-fun e!2227587 () Bool)

(assert (=> b!3599838 (=> (not res!1454658) (not e!2227587))))

(assert (=> b!3599838 (= res!1454658 (not call!260366))))

(declare-fun b!3599839 () Bool)

(assert (=> b!3599839 (= e!2227587 (= (head!7542 lt!1236221) (c!622964 (regex!5602 (rule!8334 (_1!22008 lt!1236228))))))))

(declare-fun b!3599840 () Bool)

(assert (=> b!3599840 (= e!2227583 (not (= (head!7542 lt!1236221) (c!622964 (regex!5602 (rule!8334 (_1!22008 lt!1236228)))))))))

(declare-fun b!3599841 () Bool)

(declare-fun res!1454663 () Bool)

(assert (=> b!3599841 (=> (not res!1454663) (not e!2227587))))

(assert (=> b!3599841 (= res!1454663 (isEmpty!22330 (tail!5579 lt!1236221)))))

(declare-fun b!3599842 () Bool)

(declare-fun res!1454661 () Bool)

(declare-fun e!2227588 () Bool)

(assert (=> b!3599842 (=> res!1454661 e!2227588)))

(assert (=> b!3599842 (= res!1454661 (not ((_ is ElementMatch!10361) (regex!5602 (rule!8334 (_1!22008 lt!1236228))))))))

(declare-fun e!2227584 () Bool)

(assert (=> b!3599842 (= e!2227584 e!2227588)))

(declare-fun b!3599843 () Bool)

(declare-fun res!1454662 () Bool)

(assert (=> b!3599843 (=> res!1454662 e!2227588)))

(assert (=> b!3599843 (= res!1454662 e!2227587)))

(declare-fun res!1454657 () Bool)

(assert (=> b!3599843 (=> (not res!1454657) (not e!2227587))))

(assert (=> b!3599843 (= res!1454657 lt!1236527)))

(declare-fun bm!260361 () Bool)

(assert (=> bm!260361 (= call!260366 (isEmpty!22330 lt!1236221))))

(declare-fun b!3599844 () Bool)

(declare-fun res!1454660 () Bool)

(assert (=> b!3599844 (=> res!1454660 e!2227583)))

(assert (=> b!3599844 (= res!1454660 (not (isEmpty!22330 (tail!5579 lt!1236221))))))

(declare-fun b!3599845 () Bool)

(assert (=> b!3599845 (= e!2227584 (not lt!1236527))))

(declare-fun b!3599846 () Bool)

(assert (=> b!3599846 (= e!2227588 e!2227585)))

(declare-fun res!1454664 () Bool)

(assert (=> b!3599846 (=> (not res!1454664) (not e!2227585))))

(assert (=> b!3599846 (= res!1454664 (not lt!1236527))))

(declare-fun b!3599847 () Bool)

(assert (=> b!3599847 (= e!2227586 e!2227584)))

(declare-fun c!623078 () Bool)

(assert (=> b!3599847 (= c!623078 ((_ is EmptyLang!10361) (regex!5602 (rule!8334 (_1!22008 lt!1236228)))))))

(assert (= (and d!1060804 c!623079) b!3599836))

(assert (= (and d!1060804 (not c!623079)) b!3599834))

(assert (= (and d!1060804 c!623080) b!3599837))

(assert (= (and d!1060804 (not c!623080)) b!3599847))

(assert (= (and b!3599847 c!623078) b!3599845))

(assert (= (and b!3599847 (not c!623078)) b!3599842))

(assert (= (and b!3599842 (not res!1454661)) b!3599843))

(assert (= (and b!3599843 res!1454657) b!3599838))

(assert (= (and b!3599838 res!1454658) b!3599841))

(assert (= (and b!3599841 res!1454663) b!3599839))

(assert (= (and b!3599843 (not res!1454662)) b!3599846))

(assert (= (and b!3599846 res!1454664) b!3599835))

(assert (= (and b!3599835 (not res!1454659)) b!3599844))

(assert (= (and b!3599844 (not res!1454660)) b!3599840))

(assert (= (or b!3599837 b!3599835 b!3599838) bm!260361))

(assert (=> b!3599841 m!4095497))

(assert (=> b!3599841 m!4095497))

(declare-fun m!4095647 () Bool)

(assert (=> b!3599841 m!4095647))

(assert (=> b!3599844 m!4095497))

(assert (=> b!3599844 m!4095497))

(assert (=> b!3599844 m!4095647))

(declare-fun m!4095649 () Bool)

(assert (=> d!1060804 m!4095649))

(declare-fun m!4095651 () Bool)

(assert (=> d!1060804 m!4095651))

(assert (=> b!3599839 m!4094801))

(assert (=> b!3599840 m!4094801))

(assert (=> b!3599834 m!4094801))

(assert (=> b!3599834 m!4094801))

(declare-fun m!4095653 () Bool)

(assert (=> b!3599834 m!4095653))

(assert (=> b!3599834 m!4095497))

(assert (=> b!3599834 m!4095653))

(assert (=> b!3599834 m!4095497))

(declare-fun m!4095655 () Bool)

(assert (=> b!3599834 m!4095655))

(assert (=> bm!260361 m!4095649))

(declare-fun m!4095657 () Bool)

(assert (=> b!3599836 m!4095657))

(assert (=> b!3599165 d!1060804))

(declare-fun b!3599858 () Bool)

(declare-fun res!1454667 () Bool)

(declare-fun e!2227597 () Bool)

(assert (=> b!3599858 (=> res!1454667 e!2227597)))

(assert (=> b!3599858 (= res!1454667 (not ((_ is IntegerValue!17498) (value!180117 token!511))))))

(declare-fun e!2227596 () Bool)

(assert (=> b!3599858 (= e!2227596 e!2227597)))

(declare-fun b!3599859 () Bool)

(declare-fun e!2227595 () Bool)

(assert (=> b!3599859 (= e!2227595 e!2227596)))

(declare-fun c!623086 () Bool)

(assert (=> b!3599859 (= c!623086 ((_ is IntegerValue!17497) (value!180117 token!511)))))

(declare-fun b!3599860 () Bool)

(declare-fun inv!17 (TokenValue!5832) Bool)

(assert (=> b!3599860 (= e!2227596 (inv!17 (value!180117 token!511)))))

(declare-fun b!3599861 () Bool)

(declare-fun inv!16 (TokenValue!5832) Bool)

(assert (=> b!3599861 (= e!2227595 (inv!16 (value!180117 token!511)))))

(declare-fun b!3599862 () Bool)

(declare-fun inv!15 (TokenValue!5832) Bool)

(assert (=> b!3599862 (= e!2227597 (inv!15 (value!180117 token!511)))))

(declare-fun d!1060806 () Bool)

(declare-fun c!623085 () Bool)

(assert (=> d!1060806 (= c!623085 ((_ is IntegerValue!17496) (value!180117 token!511)))))

(assert (=> d!1060806 (= (inv!21 (value!180117 token!511)) e!2227595)))

(assert (= (and d!1060806 c!623085) b!3599861))

(assert (= (and d!1060806 (not c!623085)) b!3599859))

(assert (= (and b!3599859 c!623086) b!3599860))

(assert (= (and b!3599859 (not c!623086)) b!3599858))

(assert (= (and b!3599858 (not res!1454667)) b!3599862))

(declare-fun m!4095659 () Bool)

(assert (=> b!3599860 m!4095659))

(declare-fun m!4095661 () Bool)

(assert (=> b!3599861 m!4095661))

(declare-fun m!4095663 () Bool)

(assert (=> b!3599862 m!4095663))

(assert (=> b!3599167 d!1060806))

(declare-fun d!1060808 () Bool)

(assert (=> d!1060808 (= (_2!22008 lt!1236228) lt!1236212)))

(declare-fun lt!1236530 () Unit!53883)

(declare-fun choose!20981 (List!37982 List!37982 List!37982 List!37982 List!37982) Unit!53883)

(assert (=> d!1060808 (= lt!1236530 (choose!20981 lt!1236221 (_2!22008 lt!1236228) lt!1236221 lt!1236212 lt!1236214))))

(assert (=> d!1060808 (isPrefix!2965 lt!1236221 lt!1236214)))

(assert (=> d!1060808 (= (lemmaSamePrefixThenSameSuffix!1320 lt!1236221 (_2!22008 lt!1236228) lt!1236221 lt!1236212 lt!1236214) lt!1236530)))

(declare-fun bs!570517 () Bool)

(assert (= bs!570517 d!1060808))

(declare-fun m!4095665 () Bool)

(assert (=> bs!570517 m!4095665))

(assert (=> bs!570517 m!4094823))

(assert (=> b!3599188 d!1060808))

(declare-fun d!1060810 () Bool)

(declare-fun lt!1236533 () Int)

(assert (=> d!1060810 (>= lt!1236533 0)))

(declare-fun e!2227600 () Int)

(assert (=> d!1060810 (= lt!1236533 e!2227600)))

(declare-fun c!623089 () Bool)

(assert (=> d!1060810 (= c!623089 ((_ is Nil!37858) lt!1236221))))

(assert (=> d!1060810 (= (size!28848 lt!1236221) lt!1236533)))

(declare-fun b!3599867 () Bool)

(assert (=> b!3599867 (= e!2227600 0)))

(declare-fun b!3599868 () Bool)

(assert (=> b!3599868 (= e!2227600 (+ 1 (size!28848 (t!292073 lt!1236221))))))

(assert (= (and d!1060810 c!623089) b!3599867))

(assert (= (and d!1060810 (not c!623089)) b!3599868))

(declare-fun m!4095667 () Bool)

(assert (=> b!3599868 m!4095667))

(assert (=> b!3599188 d!1060810))

(declare-fun d!1060812 () Bool)

(assert (=> d!1060812 (= (seqFromList!4155 lt!1236221) (fromListB!1919 lt!1236221))))

(declare-fun bs!570518 () Bool)

(assert (= bs!570518 d!1060812))

(declare-fun m!4095669 () Bool)

(assert (=> bs!570518 m!4095669))

(assert (=> b!3599188 d!1060812))

(declare-fun b!3599887 () Bool)

(declare-fun e!2227609 () Bool)

(declare-fun lt!1236544 () Option!7834)

(assert (=> b!3599887 (= e!2227609 (= (size!28846 (_1!22008 (get!12246 lt!1236544))) (size!28848 (originalCharacters!6316 (_1!22008 (get!12246 lt!1236544))))))))

(declare-fun b!3599888 () Bool)

(declare-fun res!1454683 () Bool)

(assert (=> b!3599888 (=> (not res!1454683) (not e!2227609))))

(assert (=> b!3599888 (= res!1454683 (< (size!28848 (_2!22008 (get!12246 lt!1236544))) (size!28848 lt!1236214)))))

(declare-fun b!3599889 () Bool)

(declare-fun res!1454685 () Bool)

(assert (=> b!3599889 (=> (not res!1454685) (not e!2227609))))

(assert (=> b!3599889 (= res!1454685 (= (value!180117 (_1!22008 (get!12246 lt!1236544))) (apply!9108 (transformation!5602 (rule!8334 (_1!22008 (get!12246 lt!1236544)))) (seqFromList!4155 (originalCharacters!6316 (_1!22008 (get!12246 lt!1236544)))))))))

(declare-fun b!3599890 () Bool)

(declare-fun res!1454684 () Bool)

(assert (=> b!3599890 (=> (not res!1454684) (not e!2227609))))

(assert (=> b!3599890 (= res!1454684 (= (rule!8334 (_1!22008 (get!12246 lt!1236544))) (rule!8334 (_1!22008 lt!1236228))))))

(declare-fun b!3599892 () Bool)

(declare-fun e!2227611 () Bool)

(assert (=> b!3599892 (= e!2227611 e!2227609)))

(declare-fun res!1454682 () Bool)

(assert (=> b!3599892 (=> (not res!1454682) (not e!2227609))))

(assert (=> b!3599892 (= res!1454682 (matchR!4930 (regex!5602 (rule!8334 (_1!22008 lt!1236228))) (list!13942 (charsOf!3616 (_1!22008 (get!12246 lt!1236544))))))))

(declare-fun b!3599893 () Bool)

(declare-fun e!2227612 () Option!7834)

(assert (=> b!3599893 (= e!2227612 None!7833)))

(declare-fun b!3599894 () Bool)

(declare-fun e!2227610 () Bool)

(declare-datatypes ((tuple2!37756 0))(
  ( (tuple2!37757 (_1!22012 List!37982) (_2!22012 List!37982)) )
))
(declare-fun findLongestMatchInner!987 (Regex!10361 List!37982 Int List!37982 List!37982 Int) tuple2!37756)

(assert (=> b!3599894 (= e!2227610 (matchR!4930 (regex!5602 (rule!8334 (_1!22008 lt!1236228))) (_1!22012 (findLongestMatchInner!987 (regex!5602 (rule!8334 (_1!22008 lt!1236228))) Nil!37858 (size!28848 Nil!37858) lt!1236214 lt!1236214 (size!28848 lt!1236214)))))))

(declare-fun b!3599895 () Bool)

(declare-fun res!1454686 () Bool)

(assert (=> b!3599895 (=> (not res!1454686) (not e!2227609))))

(assert (=> b!3599895 (= res!1454686 (= (++!9418 (list!13942 (charsOf!3616 (_1!22008 (get!12246 lt!1236544)))) (_2!22008 (get!12246 lt!1236544))) lt!1236214))))

(declare-fun d!1060814 () Bool)

(assert (=> d!1060814 e!2227611))

(declare-fun res!1454688 () Bool)

(assert (=> d!1060814 (=> res!1454688 e!2227611)))

(assert (=> d!1060814 (= res!1454688 (isEmpty!22334 lt!1236544))))

(assert (=> d!1060814 (= lt!1236544 e!2227612)))

(declare-fun c!623092 () Bool)

(declare-fun lt!1236546 () tuple2!37756)

(assert (=> d!1060814 (= c!623092 (isEmpty!22330 (_1!22012 lt!1236546)))))

(declare-fun findLongestMatch!902 (Regex!10361 List!37982) tuple2!37756)

(assert (=> d!1060814 (= lt!1236546 (findLongestMatch!902 (regex!5602 (rule!8334 (_1!22008 lt!1236228))) lt!1236214))))

(assert (=> d!1060814 (ruleValid!1867 thiss!23823 (rule!8334 (_1!22008 lt!1236228)))))

(assert (=> d!1060814 (= (maxPrefixOneRule!1869 thiss!23823 (rule!8334 (_1!22008 lt!1236228)) lt!1236214) lt!1236544)))

(declare-fun b!3599891 () Bool)

(assert (=> b!3599891 (= e!2227612 (Some!7833 (tuple2!37749 (Token!10571 (apply!9108 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))) (seqFromList!4155 (_1!22012 lt!1236546))) (rule!8334 (_1!22008 lt!1236228)) (size!28847 (seqFromList!4155 (_1!22012 lt!1236546))) (_1!22012 lt!1236546)) (_2!22012 lt!1236546))))))

(declare-fun lt!1236545 () Unit!53883)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!960 (Regex!10361 List!37982) Unit!53883)

(assert (=> b!3599891 (= lt!1236545 (longestMatchIsAcceptedByMatchOrIsEmpty!960 (regex!5602 (rule!8334 (_1!22008 lt!1236228))) lt!1236214))))

(declare-fun res!1454687 () Bool)

(assert (=> b!3599891 (= res!1454687 (isEmpty!22330 (_1!22012 (findLongestMatchInner!987 (regex!5602 (rule!8334 (_1!22008 lt!1236228))) Nil!37858 (size!28848 Nil!37858) lt!1236214 lt!1236214 (size!28848 lt!1236214)))))))

(assert (=> b!3599891 (=> res!1454687 e!2227610)))

(assert (=> b!3599891 e!2227610))

(declare-fun lt!1236547 () Unit!53883)

(assert (=> b!3599891 (= lt!1236547 lt!1236545)))

(declare-fun lt!1236548 () Unit!53883)

(assert (=> b!3599891 (= lt!1236548 (lemmaSemiInverse!1359 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))) (seqFromList!4155 (_1!22012 lt!1236546))))))

(assert (= (and d!1060814 c!623092) b!3599893))

(assert (= (and d!1060814 (not c!623092)) b!3599891))

(assert (= (and b!3599891 (not res!1454687)) b!3599894))

(assert (= (and d!1060814 (not res!1454688)) b!3599892))

(assert (= (and b!3599892 res!1454682) b!3599895))

(assert (= (and b!3599895 res!1454686) b!3599888))

(assert (= (and b!3599888 res!1454683) b!3599890))

(assert (= (and b!3599890 res!1454684) b!3599889))

(assert (= (and b!3599889 res!1454685) b!3599887))

(declare-fun m!4095671 () Bool)

(assert (=> b!3599888 m!4095671))

(declare-fun m!4095673 () Bool)

(assert (=> b!3599888 m!4095673))

(assert (=> b!3599888 m!4095521))

(declare-fun m!4095675 () Bool)

(assert (=> d!1060814 m!4095675))

(declare-fun m!4095677 () Bool)

(assert (=> d!1060814 m!4095677))

(declare-fun m!4095679 () Bool)

(assert (=> d!1060814 m!4095679))

(declare-fun m!4095681 () Bool)

(assert (=> d!1060814 m!4095681))

(assert (=> b!3599889 m!4095671))

(declare-fun m!4095683 () Bool)

(assert (=> b!3599889 m!4095683))

(assert (=> b!3599889 m!4095683))

(declare-fun m!4095685 () Bool)

(assert (=> b!3599889 m!4095685))

(assert (=> b!3599895 m!4095671))

(declare-fun m!4095687 () Bool)

(assert (=> b!3599895 m!4095687))

(assert (=> b!3599895 m!4095687))

(declare-fun m!4095689 () Bool)

(assert (=> b!3599895 m!4095689))

(assert (=> b!3599895 m!4095689))

(declare-fun m!4095691 () Bool)

(assert (=> b!3599895 m!4095691))

(assert (=> b!3599892 m!4095671))

(assert (=> b!3599892 m!4095687))

(assert (=> b!3599892 m!4095687))

(assert (=> b!3599892 m!4095689))

(assert (=> b!3599892 m!4095689))

(declare-fun m!4095693 () Bool)

(assert (=> b!3599892 m!4095693))

(assert (=> b!3599890 m!4095671))

(declare-fun m!4095695 () Bool)

(assert (=> b!3599894 m!4095695))

(assert (=> b!3599894 m!4095521))

(assert (=> b!3599894 m!4095695))

(assert (=> b!3599894 m!4095521))

(declare-fun m!4095697 () Bool)

(assert (=> b!3599894 m!4095697))

(declare-fun m!4095699 () Bool)

(assert (=> b!3599894 m!4095699))

(assert (=> b!3599887 m!4095671))

(declare-fun m!4095701 () Bool)

(assert (=> b!3599887 m!4095701))

(assert (=> b!3599891 m!4095521))

(declare-fun m!4095703 () Bool)

(assert (=> b!3599891 m!4095703))

(declare-fun m!4095705 () Bool)

(assert (=> b!3599891 m!4095705))

(declare-fun m!4095707 () Bool)

(assert (=> b!3599891 m!4095707))

(assert (=> b!3599891 m!4095695))

(assert (=> b!3599891 m!4095521))

(assert (=> b!3599891 m!4095697))

(assert (=> b!3599891 m!4095705))

(declare-fun m!4095709 () Bool)

(assert (=> b!3599891 m!4095709))

(assert (=> b!3599891 m!4095705))

(assert (=> b!3599891 m!4095705))

(declare-fun m!4095711 () Bool)

(assert (=> b!3599891 m!4095711))

(assert (=> b!3599891 m!4095695))

(declare-fun m!4095713 () Bool)

(assert (=> b!3599891 m!4095713))

(assert (=> b!3599188 d!1060814))

(declare-fun d!1060816 () Bool)

(assert (=> d!1060816 (= (apply!9108 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))) (seqFromList!4155 lt!1236221)) (dynLambda!16337 (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228)))) (seqFromList!4155 lt!1236221)))))

(declare-fun b_lambda!106461 () Bool)

(assert (=> (not b_lambda!106461) (not d!1060816)))

(declare-fun tb!205957 () Bool)

(declare-fun t!292176 () Bool)

(assert (=> (and b!3599176 (= (toValue!7886 (transformation!5602 (h!43279 rules!3307))) (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292176) tb!205957))

(declare-fun result!251052 () Bool)

(assert (=> tb!205957 (= result!251052 (inv!21 (dynLambda!16337 (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228)))) (seqFromList!4155 lt!1236221))))))

(declare-fun m!4095715 () Bool)

(assert (=> tb!205957 m!4095715))

(assert (=> d!1060816 t!292176))

(declare-fun b_and!261423 () Bool)

(assert (= b_and!261387 (and (=> t!292176 result!251052) b_and!261423)))

(declare-fun tb!205959 () Bool)

(declare-fun t!292178 () Bool)

(assert (=> (and b!3599179 (= (toValue!7886 (transformation!5602 anOtherTypeRule!33)) (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292178) tb!205959))

(declare-fun result!251054 () Bool)

(assert (= result!251054 result!251052))

(assert (=> d!1060816 t!292178))

(declare-fun b_and!261425 () Bool)

(assert (= b_and!261389 (and (=> t!292178 result!251054) b_and!261425)))

(declare-fun tb!205961 () Bool)

(declare-fun t!292180 () Bool)

(assert (=> (and b!3599159 (= (toValue!7886 (transformation!5602 rule!403)) (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292180) tb!205961))

(declare-fun result!251056 () Bool)

(assert (= result!251056 result!251052))

(assert (=> d!1060816 t!292180))

(declare-fun b_and!261427 () Bool)

(assert (= b_and!261391 (and (=> t!292180 result!251056) b_and!261427)))

(declare-fun t!292182 () Bool)

(declare-fun tb!205963 () Bool)

(assert (=> (and b!3599194 (= (toValue!7886 (transformation!5602 (rule!8334 token!511))) (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292182) tb!205963))

(declare-fun result!251058 () Bool)

(assert (= result!251058 result!251052))

(assert (=> d!1060816 t!292182))

(declare-fun b_and!261429 () Bool)

(assert (= b_and!261393 (and (=> t!292182 result!251058) b_and!261429)))

(assert (=> d!1060816 m!4094775))

(declare-fun m!4095717 () Bool)

(assert (=> d!1060816 m!4095717))

(assert (=> b!3599188 d!1060816))

(declare-fun d!1060818 () Bool)

(assert (=> d!1060818 (= (maxPrefixOneRule!1869 thiss!23823 (rule!8334 (_1!22008 lt!1236228)) lt!1236214) (Some!7833 (tuple2!37749 (Token!10571 (apply!9108 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))) (seqFromList!4155 lt!1236221)) (rule!8334 (_1!22008 lt!1236228)) (size!28848 lt!1236221) lt!1236221) (_2!22008 lt!1236228))))))

(declare-fun lt!1236551 () Unit!53883)

(declare-fun choose!20982 (LexerInterface!5191 List!37983 List!37982 List!37982 List!37982 Rule!11004) Unit!53883)

(assert (=> d!1060818 (= lt!1236551 (choose!20982 thiss!23823 rules!3307 lt!1236221 lt!1236214 (_2!22008 lt!1236228) (rule!8334 (_1!22008 lt!1236228))))))

(assert (=> d!1060818 (not (isEmpty!22331 rules!3307))))

(assert (=> d!1060818 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!941 thiss!23823 rules!3307 lt!1236221 lt!1236214 (_2!22008 lt!1236228) (rule!8334 (_1!22008 lt!1236228))) lt!1236551)))

(declare-fun bs!570519 () Bool)

(assert (= bs!570519 d!1060818))

(declare-fun m!4095719 () Bool)

(assert (=> bs!570519 m!4095719))

(assert (=> bs!570519 m!4094775))

(assert (=> bs!570519 m!4094779))

(assert (=> bs!570519 m!4094843))

(assert (=> bs!570519 m!4094775))

(assert (=> bs!570519 m!4094777))

(assert (=> bs!570519 m!4094783))

(assert (=> b!3599188 d!1060818))

(declare-fun d!1060820 () Bool)

(declare-fun lt!1236554 () List!37982)

(assert (=> d!1060820 (= (++!9418 lt!1236221 lt!1236554) lt!1236214)))

(declare-fun e!2227616 () List!37982)

(assert (=> d!1060820 (= lt!1236554 e!2227616)))

(declare-fun c!623095 () Bool)

(assert (=> d!1060820 (= c!623095 ((_ is Cons!37858) lt!1236221))))

(assert (=> d!1060820 (>= (size!28848 lt!1236214) (size!28848 lt!1236221))))

(assert (=> d!1060820 (= (getSuffix!1540 lt!1236214 lt!1236221) lt!1236554)))

(declare-fun b!3599900 () Bool)

(assert (=> b!3599900 (= e!2227616 (getSuffix!1540 (tail!5579 lt!1236214) (t!292073 lt!1236221)))))

(declare-fun b!3599901 () Bool)

(assert (=> b!3599901 (= e!2227616 lt!1236214)))

(assert (= (and d!1060820 c!623095) b!3599900))

(assert (= (and d!1060820 (not c!623095)) b!3599901))

(declare-fun m!4095721 () Bool)

(assert (=> d!1060820 m!4095721))

(assert (=> d!1060820 m!4095521))

(assert (=> d!1060820 m!4094783))

(assert (=> b!3599900 m!4095551))

(assert (=> b!3599900 m!4095551))

(declare-fun m!4095723 () Bool)

(assert (=> b!3599900 m!4095723))

(assert (=> b!3599188 d!1060820))

(declare-fun b!3599906 () Bool)

(declare-fun e!2227619 () Bool)

(declare-fun tp!1101189 () Bool)

(assert (=> b!3599906 (= e!2227619 (and tp_is_empty!17805 tp!1101189))))

(assert (=> b!3599163 (= tp!1101124 e!2227619)))

(assert (= (and b!3599163 ((_ is Cons!37858) (t!292073 suffix!1395))) b!3599906))

(declare-fun b!3599917 () Bool)

(declare-fun e!2227622 () Bool)

(assert (=> b!3599917 (= e!2227622 tp_is_empty!17805)))

(declare-fun b!3599919 () Bool)

(declare-fun tp!1101203 () Bool)

(assert (=> b!3599919 (= e!2227622 tp!1101203)))

(declare-fun b!3599920 () Bool)

(declare-fun tp!1101204 () Bool)

(declare-fun tp!1101200 () Bool)

(assert (=> b!3599920 (= e!2227622 (and tp!1101204 tp!1101200))))

(declare-fun b!3599918 () Bool)

(declare-fun tp!1101201 () Bool)

(declare-fun tp!1101202 () Bool)

(assert (=> b!3599918 (= e!2227622 (and tp!1101201 tp!1101202))))

(assert (=> b!3599175 (= tp!1101116 e!2227622)))

(assert (= (and b!3599175 ((_ is ElementMatch!10361) (regex!5602 (rule!8334 token!511)))) b!3599917))

(assert (= (and b!3599175 ((_ is Concat!16194) (regex!5602 (rule!8334 token!511)))) b!3599918))

(assert (= (and b!3599175 ((_ is Star!10361) (regex!5602 (rule!8334 token!511)))) b!3599919))

(assert (= (and b!3599175 ((_ is Union!10361) (regex!5602 (rule!8334 token!511)))) b!3599920))

(declare-fun b!3599931 () Bool)

(declare-fun b_free!93109 () Bool)

(declare-fun b_next!93813 () Bool)

(assert (=> b!3599931 (= b_free!93109 (not b_next!93813))))

(declare-fun t!292184 () Bool)

(declare-fun tb!205965 () Bool)

(assert (=> (and b!3599931 (= (toValue!7886 (transformation!5602 (h!43279 (t!292074 rules!3307)))) (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292184) tb!205965))

(declare-fun result!251066 () Bool)

(assert (= result!251066 result!251002))

(assert (=> d!1060628 t!292184))

(declare-fun t!292186 () Bool)

(declare-fun tb!205967 () Bool)

(assert (=> (and b!3599931 (= (toValue!7886 (transformation!5602 (h!43279 (t!292074 rules!3307)))) (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292186) tb!205967))

(declare-fun result!251068 () Bool)

(assert (= result!251068 result!250992))

(assert (=> d!1060628 t!292186))

(declare-fun t!292188 () Bool)

(declare-fun tb!205969 () Bool)

(assert (=> (and b!3599931 (= (toValue!7886 (transformation!5602 (h!43279 (t!292074 rules!3307)))) (toValue!7886 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292188) tb!205969))

(declare-fun result!251070 () Bool)

(assert (= result!251070 result!251052))

(assert (=> d!1060816 t!292188))

(assert (=> d!1060680 t!292186))

(assert (=> d!1060678 t!292186))

(declare-fun tp!1101214 () Bool)

(declare-fun b_and!261431 () Bool)

(assert (=> b!3599931 (= tp!1101214 (and (=> t!292188 result!251070) (=> t!292184 result!251066) (=> t!292186 result!251068) b_and!261431))))

(declare-fun b_free!93111 () Bool)

(declare-fun b_next!93815 () Bool)

(assert (=> b!3599931 (= b_free!93111 (not b_next!93815))))

(declare-fun tb!205971 () Bool)

(declare-fun t!292190 () Bool)

(assert (=> (and b!3599931 (= (toChars!7745 (transformation!5602 (h!43279 (t!292074 rules!3307)))) (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292190) tb!205971))

(declare-fun result!251072 () Bool)

(assert (= result!251072 result!250958))

(assert (=> d!1060602 t!292190))

(declare-fun t!292192 () Bool)

(declare-fun tb!205973 () Bool)

(assert (=> (and b!3599931 (= (toChars!7745 (transformation!5602 (h!43279 (t!292074 rules!3307)))) (toChars!7745 (transformation!5602 (rule!8334 (_1!22008 lt!1236228))))) t!292192) tb!205973))

(declare-fun result!251074 () Bool)

(assert (= result!251074 result!251010))

(assert (=> d!1060680 t!292192))

(declare-fun t!292194 () Bool)

(declare-fun tb!205975 () Bool)

(assert (=> (and b!3599931 (= (toChars!7745 (transformation!5602 (h!43279 (t!292074 rules!3307)))) (toChars!7745 (transformation!5602 (rule!8334 token!511)))) t!292194) tb!205975))

(declare-fun result!251076 () Bool)

(assert (= result!251076 result!251018))

(assert (=> b!3599517 t!292194))

(assert (=> d!1060704 t!292194))

(declare-fun b_and!261433 () Bool)

(declare-fun tp!1101215 () Bool)

(assert (=> b!3599931 (= tp!1101215 (and (=> t!292190 result!251072) (=> t!292192 result!251074) (=> t!292194 result!251076) b_and!261433))))

(declare-fun e!2227632 () Bool)

(assert (=> b!3599931 (= e!2227632 (and tp!1101214 tp!1101215))))

(declare-fun e!2227631 () Bool)

(declare-fun b!3599930 () Bool)

(declare-fun tp!1101216 () Bool)

(assert (=> b!3599930 (= e!2227631 (and tp!1101216 (inv!51209 (tag!6290 (h!43279 (t!292074 rules!3307)))) (inv!51212 (transformation!5602 (h!43279 (t!292074 rules!3307)))) e!2227632))))

(declare-fun b!3599929 () Bool)

(declare-fun e!2227633 () Bool)

(declare-fun tp!1101213 () Bool)

(assert (=> b!3599929 (= e!2227633 (and e!2227631 tp!1101213))))

(assert (=> b!3599170 (= tp!1101118 e!2227633)))

(assert (= b!3599930 b!3599931))

(assert (= b!3599929 b!3599930))

(assert (= (and b!3599170 ((_ is Cons!37859) (t!292074 rules!3307))) b!3599929))

(declare-fun m!4095725 () Bool)

(assert (=> b!3599930 m!4095725))

(declare-fun m!4095727 () Bool)

(assert (=> b!3599930 m!4095727))

(declare-fun b!3599932 () Bool)

(declare-fun e!2227635 () Bool)

(assert (=> b!3599932 (= e!2227635 tp_is_empty!17805)))

(declare-fun b!3599934 () Bool)

(declare-fun tp!1101220 () Bool)

(assert (=> b!3599934 (= e!2227635 tp!1101220)))

(declare-fun b!3599935 () Bool)

(declare-fun tp!1101221 () Bool)

(declare-fun tp!1101217 () Bool)

(assert (=> b!3599935 (= e!2227635 (and tp!1101221 tp!1101217))))

(declare-fun b!3599933 () Bool)

(declare-fun tp!1101218 () Bool)

(declare-fun tp!1101219 () Bool)

(assert (=> b!3599933 (= e!2227635 (and tp!1101218 tp!1101219))))

(assert (=> b!3599166 (= tp!1101126 e!2227635)))

(assert (= (and b!3599166 ((_ is ElementMatch!10361) (regex!5602 (h!43279 rules!3307)))) b!3599932))

(assert (= (and b!3599166 ((_ is Concat!16194) (regex!5602 (h!43279 rules!3307)))) b!3599933))

(assert (= (and b!3599166 ((_ is Star!10361) (regex!5602 (h!43279 rules!3307)))) b!3599934))

(assert (= (and b!3599166 ((_ is Union!10361) (regex!5602 (h!43279 rules!3307)))) b!3599935))

(declare-fun b!3599936 () Bool)

(declare-fun e!2227636 () Bool)

(assert (=> b!3599936 (= e!2227636 tp_is_empty!17805)))

(declare-fun b!3599938 () Bool)

(declare-fun tp!1101225 () Bool)

(assert (=> b!3599938 (= e!2227636 tp!1101225)))

(declare-fun b!3599939 () Bool)

(declare-fun tp!1101226 () Bool)

(declare-fun tp!1101222 () Bool)

(assert (=> b!3599939 (= e!2227636 (and tp!1101226 tp!1101222))))

(declare-fun b!3599937 () Bool)

(declare-fun tp!1101223 () Bool)

(declare-fun tp!1101224 () Bool)

(assert (=> b!3599937 (= e!2227636 (and tp!1101223 tp!1101224))))

(assert (=> b!3599181 (= tp!1101122 e!2227636)))

(assert (= (and b!3599181 ((_ is ElementMatch!10361) (regex!5602 anOtherTypeRule!33))) b!3599936))

(assert (= (and b!3599181 ((_ is Concat!16194) (regex!5602 anOtherTypeRule!33))) b!3599937))

(assert (= (and b!3599181 ((_ is Star!10361) (regex!5602 anOtherTypeRule!33))) b!3599938))

(assert (= (and b!3599181 ((_ is Union!10361) (regex!5602 anOtherTypeRule!33))) b!3599939))

(declare-fun b!3599940 () Bool)

(declare-fun e!2227637 () Bool)

(declare-fun tp!1101227 () Bool)

(assert (=> b!3599940 (= e!2227637 (and tp_is_empty!17805 tp!1101227))))

(assert (=> b!3599167 (= tp!1101121 e!2227637)))

(assert (= (and b!3599167 ((_ is Cons!37858) (originalCharacters!6316 token!511))) b!3599940))

(declare-fun b!3599941 () Bool)

(declare-fun e!2227638 () Bool)

(assert (=> b!3599941 (= e!2227638 tp_is_empty!17805)))

(declare-fun b!3599943 () Bool)

(declare-fun tp!1101231 () Bool)

(assert (=> b!3599943 (= e!2227638 tp!1101231)))

(declare-fun b!3599944 () Bool)

(declare-fun tp!1101232 () Bool)

(declare-fun tp!1101228 () Bool)

(assert (=> b!3599944 (= e!2227638 (and tp!1101232 tp!1101228))))

(declare-fun b!3599942 () Bool)

(declare-fun tp!1101229 () Bool)

(declare-fun tp!1101230 () Bool)

(assert (=> b!3599942 (= e!2227638 (and tp!1101229 tp!1101230))))

(assert (=> b!3599172 (= tp!1101120 e!2227638)))

(assert (= (and b!3599172 ((_ is ElementMatch!10361) (regex!5602 rule!403))) b!3599941))

(assert (= (and b!3599172 ((_ is Concat!16194) (regex!5602 rule!403))) b!3599942))

(assert (= (and b!3599172 ((_ is Star!10361) (regex!5602 rule!403))) b!3599943))

(assert (= (and b!3599172 ((_ is Union!10361) (regex!5602 rule!403))) b!3599944))

(declare-fun b_lambda!106463 () Bool)

(assert (= b_lambda!106453 (or (and b!3599176 b_free!93091 (= (toChars!7745 (transformation!5602 (h!43279 rules!3307))) (toChars!7745 (transformation!5602 (rule!8334 token!511))))) (and b!3599931 b_free!93111 (= (toChars!7745 (transformation!5602 (h!43279 (t!292074 rules!3307)))) (toChars!7745 (transformation!5602 (rule!8334 token!511))))) (and b!3599159 b_free!93099 (= (toChars!7745 (transformation!5602 rule!403)) (toChars!7745 (transformation!5602 (rule!8334 token!511))))) (and b!3599194 b_free!93103) (and b!3599179 b_free!93095 (= (toChars!7745 (transformation!5602 anOtherTypeRule!33)) (toChars!7745 (transformation!5602 (rule!8334 token!511))))) b_lambda!106463)))

(declare-fun b_lambda!106465 () Bool)

(assert (= b_lambda!106451 (or (and b!3599176 b_free!93091 (= (toChars!7745 (transformation!5602 (h!43279 rules!3307))) (toChars!7745 (transformation!5602 (rule!8334 token!511))))) (and b!3599931 b_free!93111 (= (toChars!7745 (transformation!5602 (h!43279 (t!292074 rules!3307)))) (toChars!7745 (transformation!5602 (rule!8334 token!511))))) (and b!3599159 b_free!93099 (= (toChars!7745 (transformation!5602 rule!403)) (toChars!7745 (transformation!5602 (rule!8334 token!511))))) (and b!3599194 b_free!93103) (and b!3599179 b_free!93095 (= (toChars!7745 (transformation!5602 anOtherTypeRule!33)) (toChars!7745 (transformation!5602 (rule!8334 token!511))))) b_lambda!106465)))

(check-sat (not b!3599741) (not b!3599840) (not d!1060602) (not b!3599832) (not bm!260356) (not d!1060766) (not b_next!93795) b_and!261433 (not b!3599557) (not b!3599868) (not tb!205929) (not b!3599938) (not b_lambda!106465) (not b!3599728) (not d!1060792) (not d!1060710) (not b!3599548) (not b!3599753) (not b!3599553) (not b!3599695) (not b!3599900) (not d!1060788) (not b!3599694) (not b_next!93805) (not b!3599831) (not d!1060818) (not b!3599732) (not d!1060722) (not d!1060626) (not b!3599295) (not b!3599887) (not b!3599519) (not b!3599937) (not b!3599733) b_and!261423 (not b!3599677) (not b!3599296) (not b!3599549) (not b!3599933) (not b_next!93797) b_and!261429 (not bm!260346) (not tb!205873) (not tb!205957) (not b!3599767) (not tb!205905) (not b!3599521) (not d!1060802) (not bm!260361) (not b_lambda!106461) (not b!3599833) (not b!3599559) (not b!3599734) (not bm!260352) b_and!261403 (not b!3599738) (not b!3599575) (not b_next!93793) (not b!3599300) (not d!1060680) (not b!3599906) (not d!1060624) (not d!1060712) (not b!3599517) (not b!3599563) (not b!3599678) (not b!3599550) (not d!1060610) b_and!261425 (not b!3599841) (not d!1060768) (not b!3599862) (not b!3599349) (not tb!205921) (not b!3599844) (not b!3599939) (not d!1060628) (not d!1060794) (not b!3599736) (not b_next!93815) b_and!261405 (not b_lambda!106449) (not b!3599754) (not b_next!93813) (not b!3599347) (not b!3599934) (not b_next!93801) (not b!3599860) (not b!3599920) (not b_lambda!106463) (not b!3599729) (not b!3599929) (not b!3599578) (not b!3599940) (not b!3599511) (not b!3599890) (not b!3599682) (not b!3599891) (not d!1060716) (not b!3599552) (not d!1060618) (not d!1060706) (not b!3599889) (not b!3599591) (not b!3599679) (not b!3599737) (not b!3599290) (not d!1060616) (not bm!260328) b_and!261431 (not bm!260351) (not b!3599567) (not b_lambda!106441) (not b!3599592) (not b!3599735) tp_is_empty!17805 (not b_next!93807) (not d!1060698) (not d!1060704) (not b_lambda!106445) (not d!1060686) (not b!3599311) (not b!3599768) (not bm!260317) (not d!1060620) (not b!3599308) (not b!3599861) (not d!1060580) (not d!1060820) b_and!261409 (not b!3599555) (not d!1060688) (not b!3599919) (not d!1060708) (not bm!260347) (not b_next!93803) (not d!1060812) (not b!3599935) (not bm!260348) (not b!3599512) (not b!3599740) (not b!3599942) (not b_lambda!106443) (not b!3599892) (not d!1060772) (not d!1060612) (not b!3599581) (not b!3599518) (not d!1060790) (not b_lambda!106427) (not b!3599894) (not d!1060720) (not b_lambda!106447) (not b!3599779) (not b!3599918) (not b!3599292) (not b!3599778) (not d!1060692) (not bm!260327) (not bm!260329) (not b_next!93799) (not b!3599825) (not d!1060682) (not b!3599836) (not b!3599839) (not b!3599895) (not b!3599930) (not d!1060760) (not b!3599888) (not b!3599556) (not b!3599683) (not b!3599562) (not b!3599564) b_and!261427 b_and!261407 (not d!1060814) (not d!1060600) (not d!1060808) (not b!3599780) (not d!1060804) (not d!1060764) (not d!1060724) (not b!3599752) (not b!3599834) (not b!3599551) (not b!3599297) (not d!1060702) (not tb!205913) (not b!3599580) (not b!3599317) (not b!3599696) (not d!1060700) (not b!3599944) (not b!3599943))
(check-sat (not b_next!93805) b_and!261423 b_and!261425 b_and!261431 (not b_next!93807) (not b_next!93799) (not b_next!93795) b_and!261433 (not b_next!93797) b_and!261429 b_and!261403 (not b_next!93793) (not b_next!93815) b_and!261405 (not b_next!93813) (not b_next!93801) (not b_next!93803) b_and!261409 b_and!261427 b_and!261407)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!348078 () Bool)

(assert start!348078)

(declare-fun b!3696368 () Bool)

(declare-fun b_free!98321 () Bool)

(declare-fun b_next!99025 () Bool)

(assert (=> b!3696368 (= b_free!98321 (not b_next!99025))))

(declare-fun tp!1123448 () Bool)

(declare-fun b_and!276259 () Bool)

(assert (=> b!3696368 (= tp!1123448 b_and!276259)))

(declare-fun b_free!98323 () Bool)

(declare-fun b_next!99027 () Bool)

(assert (=> b!3696368 (= b_free!98323 (not b_next!99027))))

(declare-fun tp!1123451 () Bool)

(declare-fun b_and!276261 () Bool)

(assert (=> b!3696368 (= tp!1123451 b_and!276261)))

(declare-fun b!3696384 () Bool)

(declare-fun b_free!98325 () Bool)

(declare-fun b_next!99029 () Bool)

(assert (=> b!3696384 (= b_free!98325 (not b_next!99029))))

(declare-fun tp!1123447 () Bool)

(declare-fun b_and!276263 () Bool)

(assert (=> b!3696384 (= tp!1123447 b_and!276263)))

(declare-fun b_free!98327 () Bool)

(declare-fun b_next!99031 () Bool)

(assert (=> b!3696384 (= b_free!98327 (not b_next!99031))))

(declare-fun tp!1123454 () Bool)

(declare-fun b_and!276265 () Bool)

(assert (=> b!3696384 (= tp!1123454 b_and!276265)))

(declare-fun b!3696366 () Bool)

(declare-fun e!2289083 () Bool)

(declare-datatypes ((List!39350 0))(
  ( (Nil!39226) (Cons!39226 (h!44646 (_ BitVec 16)) (t!301697 List!39350)) )
))
(declare-datatypes ((TokenValue!6178 0))(
  ( (FloatLiteralValue!12356 (text!43691 List!39350)) (TokenValueExt!6177 (__x!24573 Int)) (Broken!30890 (value!189946 List!39350)) (Object!6301) (End!6178) (Def!6178) (Underscore!6178) (Match!6178) (Else!6178) (Error!6178) (Case!6178) (If!6178) (Extends!6178) (Abstract!6178) (Class!6178) (Val!6178) (DelimiterValue!12356 (del!6238 List!39350)) (KeywordValue!6184 (value!189947 List!39350)) (CommentValue!12356 (value!189948 List!39350)) (WhitespaceValue!12356 (value!189949 List!39350)) (IndentationValue!6178 (value!189950 List!39350)) (String!44223) (Int32!6178) (Broken!30891 (value!189951 List!39350)) (Boolean!6179) (Unit!57215) (OperatorValue!6181 (op!6238 List!39350)) (IdentifierValue!12356 (value!189952 List!39350)) (IdentifierValue!12357 (value!189953 List!39350)) (WhitespaceValue!12357 (value!189954 List!39350)) (True!12356) (False!12356) (Broken!30892 (value!189955 List!39350)) (Broken!30893 (value!189956 List!39350)) (True!12357) (RightBrace!6178) (RightBracket!6178) (Colon!6178) (Null!6178) (Comma!6178) (LeftBracket!6178) (False!12357) (LeftBrace!6178) (ImaginaryLiteralValue!6178 (text!43692 List!39350)) (StringLiteralValue!18534 (value!189957 List!39350)) (EOFValue!6178 (value!189958 List!39350)) (IdentValue!6178 (value!189959 List!39350)) (DelimiterValue!12357 (value!189960 List!39350)) (DedentValue!6178 (value!189961 List!39350)) (NewLineValue!6178 (value!189962 List!39350)) (IntegerValue!18534 (value!189963 (_ BitVec 32)) (text!43693 List!39350)) (IntegerValue!18535 (value!189964 Int) (text!43694 List!39350)) (Times!6178) (Or!6178) (Equal!6178) (Minus!6178) (Broken!30894 (value!189965 List!39350)) (And!6178) (Div!6178) (LessEqual!6178) (Mod!6178) (Concat!16885) (Not!6178) (Plus!6178) (SpaceValue!6178 (value!189966 List!39350)) (IntegerValue!18536 (value!189967 Int) (text!43695 List!39350)) (StringLiteralValue!18535 (text!43696 List!39350)) (FloatLiteralValue!12357 (text!43697 List!39350)) (BytesLiteralValue!6178 (value!189968 List!39350)) (CommentValue!12357 (value!189969 List!39350)) (StringLiteralValue!18536 (value!189970 List!39350)) (ErrorTokenValue!6178 (msg!6239 List!39350)) )
))
(declare-datatypes ((C!21600 0))(
  ( (C!21601 (val!12848 Int)) )
))
(declare-datatypes ((List!39351 0))(
  ( (Nil!39227) (Cons!39227 (h!44647 C!21600) (t!301698 List!39351)) )
))
(declare-datatypes ((IArray!24095 0))(
  ( (IArray!24096 (innerList!12105 List!39351)) )
))
(declare-datatypes ((Conc!12045 0))(
  ( (Node!12045 (left!30565 Conc!12045) (right!30895 Conc!12045) (csize!24320 Int) (cheight!12256 Int)) (Leaf!18630 (xs!15247 IArray!24095) (csize!24321 Int)) (Empty!12045) )
))
(declare-datatypes ((BalanceConc!23704 0))(
  ( (BalanceConc!23705 (c!638926 Conc!12045)) )
))
(declare-datatypes ((Regex!10707 0))(
  ( (ElementMatch!10707 (c!638927 C!21600)) (Concat!16886 (regOne!21926 Regex!10707) (regTwo!21926 Regex!10707)) (EmptyExpr!10707) (Star!10707 (reg!11036 Regex!10707)) (EmptyLang!10707) (Union!10707 (regOne!21927 Regex!10707) (regTwo!21927 Regex!10707)) )
))
(declare-datatypes ((String!44224 0))(
  ( (String!44225 (value!189971 String)) )
))
(declare-datatypes ((TokenValueInjection!11784 0))(
  ( (TokenValueInjection!11785 (toValue!8280 Int) (toChars!8139 Int)) )
))
(declare-datatypes ((Rule!11696 0))(
  ( (Rule!11697 (regex!5948 Regex!10707) (tag!6776 String!44224) (isSeparator!5948 Bool) (transformation!5948 TokenValueInjection!11784)) )
))
(declare-datatypes ((Token!11250 0))(
  ( (Token!11251 (value!189972 TokenValue!6178) (rule!8804 Rule!11696) (size!29930 Int) (originalCharacters!6656 List!39351)) )
))
(declare-fun token!544 () Token!11250)

(declare-fun lt!1293866 () Rule!11696)

(assert (=> b!3696366 (= e!2289083 (= (rule!8804 token!544) lt!1293866))))

(declare-fun b!3696367 () Bool)

(declare-fun e!2289084 () Bool)

(assert (=> b!3696367 (= e!2289084 true)))

(declare-fun lt!1293857 () Bool)

(declare-datatypes ((Option!8475 0))(
  ( (None!8474) (Some!8474 (v!38432 Rule!11696)) )
))
(declare-fun lt!1293865 () Option!8475)

(declare-fun matchR!5246 (Regex!10707 List!39351) Bool)

(declare-fun get!13038 (Option!8475) Rule!11696)

(declare-fun list!14658 (BalanceConc!23704) List!39351)

(declare-fun charsOf!3943 (Token!11250) BalanceConc!23704)

(assert (=> b!3696367 (= lt!1293857 (matchR!5246 (regex!5948 (get!13038 lt!1293865)) (list!14658 (charsOf!3943 token!544))))))

(declare-fun e!2289086 () Bool)

(assert (=> b!3696368 (= e!2289086 (and tp!1123448 tp!1123451))))

(declare-fun b!3696369 () Bool)

(declare-fun e!2289074 () Bool)

(assert (=> b!3696369 (= e!2289074 e!2289083)))

(declare-fun res!1503164 () Bool)

(assert (=> b!3696369 (=> (not res!1503164) (not e!2289083))))

(assert (=> b!3696369 (= res!1503164 (matchR!5246 (regex!5948 lt!1293866) (list!14658 (charsOf!3943 token!544))))))

(declare-fun lt!1293864 () Option!8475)

(assert (=> b!3696369 (= lt!1293866 (get!13038 lt!1293864))))

(declare-fun b!3696370 () Bool)

(declare-fun e!2289071 () Bool)

(declare-fun e!2289078 () Bool)

(assert (=> b!3696370 (= e!2289071 (not e!2289078))))

(declare-fun res!1503167 () Bool)

(assert (=> b!3696370 (=> res!1503167 e!2289078)))

(declare-datatypes ((LexerInterface!5537 0))(
  ( (LexerInterfaceExt!5534 (__x!24574 Int)) (Lexer!5535) )
))
(declare-fun thiss!25322 () LexerInterface!5537)

(declare-datatypes ((List!39352 0))(
  ( (Nil!39228) (Cons!39228 (h!44648 Rule!11696) (t!301699 List!39352)) )
))
(declare-fun lt!1293861 () List!39352)

(declare-fun rulesInvariant!4934 (LexerInterface!5537 List!39352) Bool)

(assert (=> b!3696370 (= res!1503167 (not (rulesInvariant!4934 thiss!25322 lt!1293861)))))

(declare-fun rules!3598 () List!39352)

(assert (=> b!3696370 (= lt!1293861 (Cons!39228 (h!44648 rules!3598) (t!301699 rules!3598)))))

(assert (=> b!3696370 e!2289074))

(declare-fun res!1503163 () Bool)

(assert (=> b!3696370 (=> (not res!1503163) (not e!2289074))))

(declare-fun lt!1293858 () Bool)

(assert (=> b!3696370 (= res!1503163 (not lt!1293858))))

(declare-fun isDefined!6666 (Option!8475) Bool)

(assert (=> b!3696370 (= lt!1293858 (not (isDefined!6666 lt!1293864)))))

(declare-fun getRuleFromTag!1504 (LexerInterface!5537 List!39352 String!44224) Option!8475)

(assert (=> b!3696370 (= lt!1293864 (getRuleFromTag!1504 thiss!25322 (t!301699 rules!3598) (tag!6776 (rule!8804 token!544))))))

(declare-fun input!3172 () List!39351)

(declare-datatypes ((Unit!57216 0))(
  ( (Unit!57217) )
))
(declare-fun lt!1293856 () Unit!57216)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1498 (LexerInterface!5537 List!39352 List!39351 Token!11250) Unit!57216)

(assert (=> b!3696370 (= lt!1293856 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1498 thiss!25322 (t!301699 rules!3598) input!3172 token!544))))

(assert (=> b!3696370 (rulesInvariant!4934 thiss!25322 (t!301699 rules!3598))))

(declare-fun lt!1293860 () Unit!57216)

(declare-fun lemmaInvariantOnRulesThenOnTail!656 (LexerInterface!5537 Rule!11696 List!39352) Unit!57216)

(assert (=> b!3696370 (= lt!1293860 (lemmaInvariantOnRulesThenOnTail!656 thiss!25322 (h!44648 rules!3598) (t!301699 rules!3598)))))

(declare-fun b!3696371 () Bool)

(declare-fun res!1503160 () Bool)

(declare-fun e!2289079 () Bool)

(assert (=> b!3696371 (=> (not res!1503160) (not e!2289079))))

(get-info :version)

(assert (=> b!3696371 (= res!1503160 ((_ is Cons!39228) rules!3598))))

(declare-fun b!3696372 () Bool)

(declare-fun e!2289081 () Bool)

(declare-fun tp_is_empty!18489 () Bool)

(declare-fun tp!1123453 () Bool)

(assert (=> b!3696372 (= e!2289081 (and tp_is_empty!18489 tp!1123453))))

(declare-fun b!3696373 () Bool)

(declare-fun e!2289075 () Bool)

(declare-fun e!2289080 () Bool)

(declare-fun tp!1123446 () Bool)

(assert (=> b!3696373 (= e!2289075 (and e!2289080 tp!1123446))))

(declare-fun b!3696375 () Bool)

(declare-fun res!1503162 () Bool)

(declare-fun e!2289082 () Bool)

(assert (=> b!3696375 (=> (not res!1503162) (not e!2289082))))

(declare-fun isEmpty!23374 (List!39352) Bool)

(assert (=> b!3696375 (= res!1503162 (not (isEmpty!23374 rules!3598)))))

(declare-fun b!3696376 () Bool)

(declare-fun res!1503168 () Bool)

(assert (=> b!3696376 (=> (not res!1503168) (not e!2289071))))

(assert (=> b!3696376 (= res!1503168 (not (isEmpty!23374 (t!301699 rules!3598))))))

(declare-fun b!3696377 () Bool)

(declare-fun res!1503158 () Bool)

(assert (=> b!3696377 (=> res!1503158 e!2289078)))

(assert (=> b!3696377 (= res!1503158 lt!1293858)))

(declare-fun b!3696378 () Bool)

(assert (=> b!3696378 (= e!2289078 e!2289084)))

(declare-fun res!1503157 () Bool)

(assert (=> b!3696378 (=> res!1503157 e!2289084)))

(assert (=> b!3696378 (= res!1503157 (not (isDefined!6666 lt!1293865)))))

(assert (=> b!3696378 (= lt!1293865 (getRuleFromTag!1504 thiss!25322 rules!3598 (tag!6776 (rule!8804 token!544))))))

(assert (=> b!3696378 (= (get!13038 lt!1293864) (get!13038 (getRuleFromTag!1504 thiss!25322 lt!1293861 (tag!6776 (rule!8804 token!544)))))))

(declare-fun lt!1293859 () Unit!57216)

(declare-fun lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag!8 (LexerInterface!5537 List!39352 Rule!11696 String!44224) Unit!57216)

(assert (=> b!3696378 (= lt!1293859 (lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag!8 thiss!25322 (t!301699 rules!3598) (h!44648 rules!3598) (tag!6776 (rule!8804 token!544))))))

(declare-fun tp!1123449 () Bool)

(declare-fun b!3696379 () Bool)

(declare-fun e!2289070 () Bool)

(declare-fun e!2289073 () Bool)

(declare-fun inv!52715 (String!44224) Bool)

(declare-fun inv!52718 (TokenValueInjection!11784) Bool)

(assert (=> b!3696379 (= e!2289073 (and tp!1123449 (inv!52715 (tag!6776 (rule!8804 token!544))) (inv!52718 (transformation!5948 (rule!8804 token!544))) e!2289070))))

(declare-fun e!2289077 () Bool)

(declare-fun tp!1123452 () Bool)

(declare-fun b!3696380 () Bool)

(declare-fun inv!21 (TokenValue!6178) Bool)

(assert (=> b!3696380 (= e!2289077 (and (inv!21 (value!189972 token!544)) e!2289073 tp!1123452))))

(declare-fun b!3696381 () Bool)

(assert (=> b!3696381 (= e!2289082 e!2289079)))

(declare-fun res!1503169 () Bool)

(assert (=> b!3696381 (=> (not res!1503169) (not e!2289079))))

(declare-datatypes ((tuple2!39108 0))(
  ( (tuple2!39109 (_1!22688 Token!11250) (_2!22688 List!39351)) )
))
(declare-datatypes ((Option!8476 0))(
  ( (None!8475) (Some!8475 (v!38433 tuple2!39108)) )
))
(declare-fun lt!1293862 () Option!8476)

(declare-fun isDefined!6667 (Option!8476) Bool)

(assert (=> b!3696381 (= res!1503169 (isDefined!6667 lt!1293862))))

(declare-fun maxPrefix!3059 (LexerInterface!5537 List!39352 List!39351) Option!8476)

(assert (=> b!3696381 (= lt!1293862 (maxPrefix!3059 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3696382 () Bool)

(declare-fun res!1503156 () Bool)

(assert (=> b!3696382 (=> (not res!1503156) (not e!2289079))))

(declare-fun get!13039 (Option!8476) tuple2!39108)

(assert (=> b!3696382 (= res!1503156 (= (_1!22688 (get!13039 lt!1293862)) token!544))))

(declare-fun tp!1123450 () Bool)

(declare-fun b!3696383 () Bool)

(assert (=> b!3696383 (= e!2289080 (and tp!1123450 (inv!52715 (tag!6776 (h!44648 rules!3598))) (inv!52718 (transformation!5948 (h!44648 rules!3598))) e!2289086))))

(assert (=> b!3696384 (= e!2289070 (and tp!1123447 tp!1123454))))

(declare-fun b!3696374 () Bool)

(declare-fun res!1503161 () Bool)

(assert (=> b!3696374 (=> (not res!1503161) (not e!2289082))))

(assert (=> b!3696374 (= res!1503161 (rulesInvariant!4934 thiss!25322 rules!3598))))

(declare-fun res!1503165 () Bool)

(assert (=> start!348078 (=> (not res!1503165) (not e!2289082))))

(assert (=> start!348078 (= res!1503165 ((_ is Lexer!5535) thiss!25322))))

(assert (=> start!348078 e!2289082))

(assert (=> start!348078 true))

(assert (=> start!348078 e!2289075))

(declare-fun inv!52719 (Token!11250) Bool)

(assert (=> start!348078 (and (inv!52719 token!544) e!2289077)))

(assert (=> start!348078 e!2289081))

(declare-fun b!3696385 () Bool)

(assert (=> b!3696385 (= e!2289079 e!2289071)))

(declare-fun res!1503166 () Bool)

(assert (=> b!3696385 (=> (not res!1503166) (not e!2289071))))

(declare-fun e!2289072 () Bool)

(assert (=> b!3696385 (= res!1503166 e!2289072)))

(declare-fun res!1503159 () Bool)

(assert (=> b!3696385 (=> res!1503159 e!2289072)))

(declare-fun lt!1293863 () Option!8476)

(assert (=> b!3696385 (= res!1503159 (not (isDefined!6667 lt!1293863)))))

(declare-fun maxPrefixOneRule!2173 (LexerInterface!5537 Rule!11696 List!39351) Option!8476)

(assert (=> b!3696385 (= lt!1293863 (maxPrefixOneRule!2173 thiss!25322 (h!44648 rules!3598) input!3172))))

(declare-fun b!3696386 () Bool)

(assert (=> b!3696386 (= e!2289072 (not (= (_1!22688 (get!13039 lt!1293863)) token!544)))))

(assert (= (and start!348078 res!1503165) b!3696374))

(assert (= (and b!3696374 res!1503161) b!3696375))

(assert (= (and b!3696375 res!1503162) b!3696381))

(assert (= (and b!3696381 res!1503169) b!3696382))

(assert (= (and b!3696382 res!1503156) b!3696371))

(assert (= (and b!3696371 res!1503160) b!3696385))

(assert (= (and b!3696385 (not res!1503159)) b!3696386))

(assert (= (and b!3696385 res!1503166) b!3696376))

(assert (= (and b!3696376 res!1503168) b!3696370))

(assert (= (and b!3696370 res!1503163) b!3696369))

(assert (= (and b!3696369 res!1503164) b!3696366))

(assert (= (and b!3696370 (not res!1503167)) b!3696377))

(assert (= (and b!3696377 (not res!1503158)) b!3696378))

(assert (= (and b!3696378 (not res!1503157)) b!3696367))

(assert (= b!3696383 b!3696368))

(assert (= b!3696373 b!3696383))

(assert (= (and start!348078 ((_ is Cons!39228) rules!3598)) b!3696373))

(assert (= b!3696379 b!3696384))

(assert (= b!3696380 b!3696379))

(assert (= start!348078 b!3696380))

(assert (= (and start!348078 ((_ is Cons!39227) input!3172)) b!3696372))

(declare-fun m!4208061 () Bool)

(assert (=> b!3696383 m!4208061))

(declare-fun m!4208063 () Bool)

(assert (=> b!3696383 m!4208063))

(declare-fun m!4208065 () Bool)

(assert (=> b!3696376 m!4208065))

(declare-fun m!4208067 () Bool)

(assert (=> b!3696374 m!4208067))

(declare-fun m!4208069 () Bool)

(assert (=> b!3696379 m!4208069))

(declare-fun m!4208071 () Bool)

(assert (=> b!3696379 m!4208071))

(declare-fun m!4208073 () Bool)

(assert (=> b!3696369 m!4208073))

(assert (=> b!3696369 m!4208073))

(declare-fun m!4208075 () Bool)

(assert (=> b!3696369 m!4208075))

(assert (=> b!3696369 m!4208075))

(declare-fun m!4208077 () Bool)

(assert (=> b!3696369 m!4208077))

(declare-fun m!4208079 () Bool)

(assert (=> b!3696369 m!4208079))

(declare-fun m!4208081 () Bool)

(assert (=> b!3696370 m!4208081))

(declare-fun m!4208083 () Bool)

(assert (=> b!3696370 m!4208083))

(declare-fun m!4208085 () Bool)

(assert (=> b!3696370 m!4208085))

(declare-fun m!4208087 () Bool)

(assert (=> b!3696370 m!4208087))

(declare-fun m!4208089 () Bool)

(assert (=> b!3696370 m!4208089))

(declare-fun m!4208091 () Bool)

(assert (=> b!3696370 m!4208091))

(assert (=> b!3696378 m!4208079))

(declare-fun m!4208093 () Bool)

(assert (=> b!3696378 m!4208093))

(declare-fun m!4208095 () Bool)

(assert (=> b!3696378 m!4208095))

(declare-fun m!4208097 () Bool)

(assert (=> b!3696378 m!4208097))

(declare-fun m!4208099 () Bool)

(assert (=> b!3696378 m!4208099))

(assert (=> b!3696378 m!4208097))

(declare-fun m!4208101 () Bool)

(assert (=> b!3696378 m!4208101))

(declare-fun m!4208103 () Bool)

(assert (=> b!3696367 m!4208103))

(assert (=> b!3696367 m!4208073))

(assert (=> b!3696367 m!4208073))

(assert (=> b!3696367 m!4208075))

(assert (=> b!3696367 m!4208075))

(declare-fun m!4208105 () Bool)

(assert (=> b!3696367 m!4208105))

(declare-fun m!4208107 () Bool)

(assert (=> b!3696380 m!4208107))

(declare-fun m!4208109 () Bool)

(assert (=> b!3696381 m!4208109))

(declare-fun m!4208111 () Bool)

(assert (=> b!3696381 m!4208111))

(declare-fun m!4208113 () Bool)

(assert (=> start!348078 m!4208113))

(declare-fun m!4208115 () Bool)

(assert (=> b!3696385 m!4208115))

(declare-fun m!4208117 () Bool)

(assert (=> b!3696385 m!4208117))

(declare-fun m!4208119 () Bool)

(assert (=> b!3696375 m!4208119))

(declare-fun m!4208121 () Bool)

(assert (=> b!3696382 m!4208121))

(declare-fun m!4208123 () Bool)

(assert (=> b!3696386 m!4208123))

(check-sat (not start!348078) (not b!3696372) (not b!3696383) (not b!3696381) (not b!3696376) (not b!3696385) (not b!3696386) (not b!3696369) b_and!276263 (not b!3696382) (not b!3696378) b_and!276259 b_and!276261 (not b!3696367) (not b!3696380) (not b!3696379) b_and!276265 (not b_next!99031) (not b!3696375) (not b_next!99029) (not b!3696373) (not b!3696370) (not b_next!99025) (not b!3696374) tp_is_empty!18489 (not b_next!99027))
(check-sat (not b_next!99029) b_and!276263 (not b_next!99025) (not b_next!99027) b_and!276259 b_and!276261 b_and!276265 (not b_next!99031))

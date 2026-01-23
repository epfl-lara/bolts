; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!355596 () Bool)

(assert start!355596)

(declare-fun b!3794065 () Bool)

(declare-fun b_free!101229 () Bool)

(declare-fun b_next!101933 () Bool)

(assert (=> b!3794065 (= b_free!101229 (not b_next!101933))))

(declare-fun tp!1154130 () Bool)

(declare-fun b_and!281983 () Bool)

(assert (=> b!3794065 (= tp!1154130 b_and!281983)))

(declare-fun b_free!101231 () Bool)

(declare-fun b_next!101935 () Bool)

(assert (=> b!3794065 (= b_free!101231 (not b_next!101935))))

(declare-fun tp!1154132 () Bool)

(declare-fun b_and!281985 () Bool)

(assert (=> b!3794065 (= tp!1154132 b_and!281985)))

(declare-fun b!3794058 () Bool)

(declare-fun e!2345080 () Bool)

(declare-fun e!2345090 () Bool)

(declare-fun tp!1154131 () Bool)

(assert (=> b!3794058 (= e!2345080 (and e!2345090 tp!1154131))))

(declare-fun e!2345086 () Bool)

(declare-fun tp!1154135 () Bool)

(declare-fun b!3794059 () Bool)

(declare-datatypes ((List!40450 0))(
  ( (Nil!40326) (Cons!40326 (h!45746 (_ BitVec 16)) (t!306501 List!40450)) )
))
(declare-datatypes ((TokenValue!6434 0))(
  ( (FloatLiteralValue!12868 (text!45483 List!40450)) (TokenValueExt!6433 (__x!25085 Int)) (Broken!32170 (value!197395 List!40450)) (Object!6557) (End!6434) (Def!6434) (Underscore!6434) (Match!6434) (Else!6434) (Error!6434) (Case!6434) (If!6434) (Extends!6434) (Abstract!6434) (Class!6434) (Val!6434) (DelimiterValue!12868 (del!6494 List!40450)) (KeywordValue!6440 (value!197396 List!40450)) (CommentValue!12868 (value!197397 List!40450)) (WhitespaceValue!12868 (value!197398 List!40450)) (IndentationValue!6434 (value!197399 List!40450)) (String!45851) (Int32!6434) (Broken!32171 (value!197400 List!40450)) (Boolean!6435) (Unit!58059) (OperatorValue!6437 (op!6494 List!40450)) (IdentifierValue!12868 (value!197401 List!40450)) (IdentifierValue!12869 (value!197402 List!40450)) (WhitespaceValue!12869 (value!197403 List!40450)) (True!12868) (False!12868) (Broken!32172 (value!197404 List!40450)) (Broken!32173 (value!197405 List!40450)) (True!12869) (RightBrace!6434) (RightBracket!6434) (Colon!6434) (Null!6434) (Comma!6434) (LeftBracket!6434) (False!12869) (LeftBrace!6434) (ImaginaryLiteralValue!6434 (text!45484 List!40450)) (StringLiteralValue!19302 (value!197406 List!40450)) (EOFValue!6434 (value!197407 List!40450)) (IdentValue!6434 (value!197408 List!40450)) (DelimiterValue!12869 (value!197409 List!40450)) (DedentValue!6434 (value!197410 List!40450)) (NewLineValue!6434 (value!197411 List!40450)) (IntegerValue!19302 (value!197412 (_ BitVec 32)) (text!45485 List!40450)) (IntegerValue!19303 (value!197413 Int) (text!45486 List!40450)) (Times!6434) (Or!6434) (Equal!6434) (Minus!6434) (Broken!32174 (value!197414 List!40450)) (And!6434) (Div!6434) (LessEqual!6434) (Mod!6434) (Concat!17543) (Not!6434) (Plus!6434) (SpaceValue!6434 (value!197415 List!40450)) (IntegerValue!19304 (value!197416 Int) (text!45487 List!40450)) (StringLiteralValue!19303 (text!45488 List!40450)) (FloatLiteralValue!12869 (text!45489 List!40450)) (BytesLiteralValue!6434 (value!197417 List!40450)) (CommentValue!12869 (value!197418 List!40450)) (StringLiteralValue!19304 (value!197419 List!40450)) (ErrorTokenValue!6434 (msg!6495 List!40450)) )
))
(declare-datatypes ((C!22404 0))(
  ( (C!22405 (val!13278 Int)) )
))
(declare-datatypes ((Regex!11109 0))(
  ( (ElementMatch!11109 (c!659201 C!22404)) (Concat!17544 (regOne!22730 Regex!11109) (regTwo!22730 Regex!11109)) (EmptyExpr!11109) (Star!11109 (reg!11438 Regex!11109)) (EmptyLang!11109) (Union!11109 (regOne!22731 Regex!11109) (regTwo!22731 Regex!11109)) )
))
(declare-datatypes ((String!45852 0))(
  ( (String!45853 (value!197420 String)) )
))
(declare-datatypes ((List!40451 0))(
  ( (Nil!40327) (Cons!40327 (h!45747 C!22404) (t!306502 List!40451)) )
))
(declare-datatypes ((IArray!24769 0))(
  ( (IArray!24770 (innerList!12442 List!40451)) )
))
(declare-datatypes ((Conc!12382 0))(
  ( (Node!12382 (left!31201 Conc!12382) (right!31531 Conc!12382) (csize!24994 Int) (cheight!12593 Int)) (Leaf!19182 (xs!15632 IArray!24769) (csize!24995 Int)) (Empty!12382) )
))
(declare-datatypes ((BalanceConc!24358 0))(
  ( (BalanceConc!24359 (c!659202 Conc!12382)) )
))
(declare-datatypes ((TokenValueInjection!12296 0))(
  ( (TokenValueInjection!12297 (toValue!8580 Int) (toChars!8439 Int)) )
))
(declare-datatypes ((Rule!12208 0))(
  ( (Rule!12209 (regex!6204 Regex!11109) (tag!7064 String!45852) (isSeparator!6204 Bool) (transformation!6204 TokenValueInjection!12296)) )
))
(declare-datatypes ((List!40452 0))(
  ( (Nil!40328) (Cons!40328 (h!45748 Rule!12208) (t!306503 List!40452)) )
))
(declare-fun rules!1265 () List!40452)

(declare-fun inv!54240 (String!45852) Bool)

(declare-fun inv!54246 (TokenValueInjection!12296) Bool)

(assert (=> b!3794059 (= e!2345090 (and tp!1154135 (inv!54240 (tag!7064 (h!45748 rules!1265))) (inv!54246 (transformation!6204 (h!45748 rules!1265))) e!2345086))))

(declare-fun b!3794060 () Bool)

(declare-fun res!1536049 () Bool)

(declare-fun e!2345082 () Bool)

(assert (=> b!3794060 (=> (not res!1536049) (not e!2345082))))

(declare-fun isEmpty!23723 (List!40452) Bool)

(assert (=> b!3794060 (= res!1536049 (not (isEmpty!23723 rules!1265)))))

(declare-fun b!3794061 () Bool)

(declare-fun e!2345083 () Bool)

(declare-fun e!2345081 () Bool)

(assert (=> b!3794061 (= e!2345083 e!2345081)))

(declare-fun res!1536048 () Bool)

(assert (=> b!3794061 (=> (not res!1536048) (not e!2345081))))

(declare-datatypes ((Token!11546 0))(
  ( (Token!11547 (value!197421 TokenValue!6434) (rule!8992 Rule!12208) (size!30351 Int) (originalCharacters!6804 List!40451)) )
))
(declare-datatypes ((List!40453 0))(
  ( (Nil!40329) (Cons!40329 (h!45749 Token!11546) (t!306504 List!40453)) )
))
(declare-datatypes ((IArray!24771 0))(
  ( (IArray!24772 (innerList!12443 List!40453)) )
))
(declare-datatypes ((Conc!12383 0))(
  ( (Node!12383 (left!31202 Conc!12383) (right!31532 Conc!12383) (csize!24996 Int) (cheight!12594 Int)) (Leaf!19183 (xs!15633 IArray!24771) (csize!24997 Int)) (Empty!12383) )
))
(declare-datatypes ((BalanceConc!24360 0))(
  ( (BalanceConc!24361 (c!659203 Conc!12383)) )
))
(declare-datatypes ((tuple2!39440 0))(
  ( (tuple2!39441 (_1!22854 BalanceConc!24360) (_2!22854 BalanceConc!24358)) )
))
(declare-fun lt!1315102 () tuple2!39440)

(declare-fun acc!335 () BalanceConc!24360)

(declare-fun list!14959 (BalanceConc!24360) List!40453)

(assert (=> b!3794061 (= res!1536048 (= (list!14959 (_1!22854 lt!1315102)) (list!14959 acc!335)))))

(declare-fun treated!13 () BalanceConc!24358)

(declare-datatypes ((LexerInterface!5793 0))(
  ( (LexerInterfaceExt!5790 (__x!25086 Int)) (Lexer!5791) )
))
(declare-fun thiss!11876 () LexerInterface!5793)

(declare-fun lexRec!817 (LexerInterface!5793 List!40452 BalanceConc!24358) tuple2!39440)

(assert (=> b!3794061 (= lt!1315102 (lexRec!817 thiss!11876 rules!1265 treated!13))))

(declare-fun b!3794063 () Bool)

(declare-fun e!2345085 () Bool)

(declare-fun lt!1315105 () List!40451)

(declare-fun lt!1315104 () List!40451)

(declare-fun isSuffix!978 (List!40451 List!40451) Bool)

(assert (=> b!3794063 (= e!2345085 (not (isSuffix!978 lt!1315105 lt!1315104)))))

(declare-fun lt!1315100 () List!40451)

(assert (=> b!3794063 (isSuffix!978 lt!1315105 lt!1315100)))

(declare-datatypes ((Unit!58060 0))(
  ( (Unit!58061) )
))
(declare-fun lt!1315103 () Unit!58060)

(declare-fun lt!1315099 () List!40451)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!663 (List!40451 List!40451) Unit!58060)

(assert (=> b!3794063 (= lt!1315103 (lemmaConcatTwoListThenFSndIsSuffix!663 lt!1315099 lt!1315105))))

(declare-fun b!3794064 () Bool)

(declare-fun res!1536046 () Bool)

(assert (=> b!3794064 (=> (not res!1536046) (not e!2345082))))

(declare-fun rulesInvariant!5136 (LexerInterface!5793 List!40452) Bool)

(assert (=> b!3794064 (= res!1536046 (rulesInvariant!5136 thiss!11876 rules!1265))))

(assert (=> b!3794065 (= e!2345086 (and tp!1154130 tp!1154132))))

(declare-fun b!3794066 () Bool)

(declare-fun e!2345089 () Bool)

(declare-fun input!678 () BalanceConc!24358)

(declare-fun tp!1154133 () Bool)

(declare-fun inv!54247 (Conc!12382) Bool)

(assert (=> b!3794066 (= e!2345089 (and (inv!54247 (c!659202 input!678)) tp!1154133))))

(declare-fun b!3794067 () Bool)

(assert (=> b!3794067 (= e!2345081 e!2345085)))

(declare-fun res!1536050 () Bool)

(assert (=> b!3794067 (=> (not res!1536050) (not e!2345085))))

(declare-fun lt!1315098 () tuple2!39440)

(declare-fun lt!1315101 () tuple2!39440)

(declare-fun ++!10101 (BalanceConc!24360 BalanceConc!24360) BalanceConc!24360)

(assert (=> b!3794067 (= res!1536050 (= (list!14959 (_1!22854 lt!1315101)) (list!14959 (++!10101 acc!335 (_1!22854 lt!1315098)))))))

(assert (=> b!3794067 (= lt!1315098 (lexRec!817 thiss!11876 rules!1265 input!678))))

(declare-fun totalInput!335 () BalanceConc!24358)

(assert (=> b!3794067 (= lt!1315101 (lexRec!817 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3794068 () Bool)

(declare-fun e!2345079 () Bool)

(declare-fun tp!1154134 () Bool)

(assert (=> b!3794068 (= e!2345079 (and (inv!54247 (c!659202 treated!13)) tp!1154134))))

(declare-fun res!1536051 () Bool)

(assert (=> start!355596 (=> (not res!1536051) (not e!2345082))))

(get-info :version)

(assert (=> start!355596 (= res!1536051 ((_ is Lexer!5791) thiss!11876))))

(assert (=> start!355596 e!2345082))

(declare-fun inv!54248 (BalanceConc!24358) Bool)

(assert (=> start!355596 (and (inv!54248 input!678) e!2345089)))

(declare-fun e!2345088 () Bool)

(declare-fun inv!54249 (BalanceConc!24360) Bool)

(assert (=> start!355596 (and (inv!54249 acc!335) e!2345088)))

(assert (=> start!355596 (and (inv!54248 treated!13) e!2345079)))

(assert (=> start!355596 e!2345080))

(assert (=> start!355596 true))

(declare-fun e!2345087 () Bool)

(assert (=> start!355596 (and (inv!54248 totalInput!335) e!2345087)))

(declare-fun b!3794062 () Bool)

(assert (=> b!3794062 (= e!2345082 e!2345083)))

(declare-fun res!1536052 () Bool)

(assert (=> b!3794062 (=> (not res!1536052) (not e!2345083))))

(assert (=> b!3794062 (= res!1536052 (= lt!1315104 lt!1315100))))

(declare-fun ++!10102 (List!40451 List!40451) List!40451)

(assert (=> b!3794062 (= lt!1315100 (++!10102 lt!1315099 lt!1315105))))

(declare-fun list!14960 (BalanceConc!24358) List!40451)

(assert (=> b!3794062 (= lt!1315104 (list!14960 totalInput!335))))

(assert (=> b!3794062 (= lt!1315105 (list!14960 input!678))))

(assert (=> b!3794062 (= lt!1315099 (list!14960 treated!13))))

(declare-fun b!3794069 () Bool)

(declare-fun tp!1154136 () Bool)

(declare-fun inv!54250 (Conc!12383) Bool)

(assert (=> b!3794069 (= e!2345088 (and (inv!54250 (c!659203 acc!335)) tp!1154136))))

(declare-fun b!3794070 () Bool)

(declare-fun tp!1154129 () Bool)

(assert (=> b!3794070 (= e!2345087 (and (inv!54247 (c!659202 totalInput!335)) tp!1154129))))

(declare-fun b!3794071 () Bool)

(declare-fun res!1536047 () Bool)

(assert (=> b!3794071 (=> (not res!1536047) (not e!2345085))))

(assert (=> b!3794071 (= res!1536047 (= (list!14960 (_2!22854 lt!1315101)) (list!14960 (_2!22854 lt!1315098))))))

(declare-fun b!3794072 () Bool)

(declare-fun res!1536053 () Bool)

(assert (=> b!3794072 (=> (not res!1536053) (not e!2345081))))

(declare-fun isEmpty!23724 (List!40451) Bool)

(assert (=> b!3794072 (= res!1536053 (isEmpty!23724 (list!14960 (_2!22854 lt!1315102))))))

(assert (= (and start!355596 res!1536051) b!3794060))

(assert (= (and b!3794060 res!1536049) b!3794064))

(assert (= (and b!3794064 res!1536046) b!3794062))

(assert (= (and b!3794062 res!1536052) b!3794061))

(assert (= (and b!3794061 res!1536048) b!3794072))

(assert (= (and b!3794072 res!1536053) b!3794067))

(assert (= (and b!3794067 res!1536050) b!3794071))

(assert (= (and b!3794071 res!1536047) b!3794063))

(assert (= start!355596 b!3794066))

(assert (= start!355596 b!3794069))

(assert (= start!355596 b!3794068))

(assert (= b!3794059 b!3794065))

(assert (= b!3794058 b!3794059))

(assert (= (and start!355596 ((_ is Cons!40328) rules!1265)) b!3794058))

(assert (= start!355596 b!3794070))

(declare-fun m!4316815 () Bool)

(assert (=> b!3794067 m!4316815))

(declare-fun m!4316817 () Bool)

(assert (=> b!3794067 m!4316817))

(declare-fun m!4316819 () Bool)

(assert (=> b!3794067 m!4316819))

(assert (=> b!3794067 m!4316815))

(declare-fun m!4316821 () Bool)

(assert (=> b!3794067 m!4316821))

(declare-fun m!4316823 () Bool)

(assert (=> b!3794067 m!4316823))

(declare-fun m!4316825 () Bool)

(assert (=> b!3794062 m!4316825))

(declare-fun m!4316827 () Bool)

(assert (=> b!3794062 m!4316827))

(declare-fun m!4316829 () Bool)

(assert (=> b!3794062 m!4316829))

(declare-fun m!4316831 () Bool)

(assert (=> b!3794062 m!4316831))

(declare-fun m!4316833 () Bool)

(assert (=> b!3794063 m!4316833))

(declare-fun m!4316835 () Bool)

(assert (=> b!3794063 m!4316835))

(declare-fun m!4316837 () Bool)

(assert (=> b!3794063 m!4316837))

(declare-fun m!4316839 () Bool)

(assert (=> b!3794060 m!4316839))

(declare-fun m!4316841 () Bool)

(assert (=> b!3794064 m!4316841))

(declare-fun m!4316843 () Bool)

(assert (=> start!355596 m!4316843))

(declare-fun m!4316845 () Bool)

(assert (=> start!355596 m!4316845))

(declare-fun m!4316847 () Bool)

(assert (=> start!355596 m!4316847))

(declare-fun m!4316849 () Bool)

(assert (=> start!355596 m!4316849))

(declare-fun m!4316851 () Bool)

(assert (=> b!3794061 m!4316851))

(declare-fun m!4316853 () Bool)

(assert (=> b!3794061 m!4316853))

(declare-fun m!4316855 () Bool)

(assert (=> b!3794061 m!4316855))

(declare-fun m!4316857 () Bool)

(assert (=> b!3794059 m!4316857))

(declare-fun m!4316859 () Bool)

(assert (=> b!3794059 m!4316859))

(declare-fun m!4316861 () Bool)

(assert (=> b!3794066 m!4316861))

(declare-fun m!4316863 () Bool)

(assert (=> b!3794068 m!4316863))

(declare-fun m!4316865 () Bool)

(assert (=> b!3794069 m!4316865))

(declare-fun m!4316867 () Bool)

(assert (=> b!3794071 m!4316867))

(declare-fun m!4316869 () Bool)

(assert (=> b!3794071 m!4316869))

(declare-fun m!4316871 () Bool)

(assert (=> b!3794070 m!4316871))

(declare-fun m!4316873 () Bool)

(assert (=> b!3794072 m!4316873))

(assert (=> b!3794072 m!4316873))

(declare-fun m!4316875 () Bool)

(assert (=> b!3794072 m!4316875))

(check-sat (not b!3794066) (not b!3794070) (not b_next!101933) (not b!3794072) (not start!355596) b_and!281985 (not b!3794071) (not b!3794059) (not b_next!101935) (not b!3794068) b_and!281983 (not b!3794062) (not b!3794060) (not b!3794061) (not b!3794063) (not b!3794069) (not b!3794058) (not b!3794067) (not b!3794064))
(check-sat b_and!281983 b_and!281985 (not b_next!101933) (not b_next!101935))

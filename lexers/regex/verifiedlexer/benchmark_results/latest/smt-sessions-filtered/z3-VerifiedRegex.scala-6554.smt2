; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!346346 () Bool)

(assert start!346346)

(declare-fun b!3686297 () Bool)

(declare-fun b_free!97797 () Bool)

(declare-fun b_next!98501 () Bool)

(assert (=> b!3686297 (= b_free!97797 (not b_next!98501))))

(declare-fun tp!1120485 () Bool)

(declare-fun b_and!275483 () Bool)

(assert (=> b!3686297 (= tp!1120485 b_and!275483)))

(declare-fun b_free!97799 () Bool)

(declare-fun b_next!98503 () Bool)

(assert (=> b!3686297 (= b_free!97799 (not b_next!98503))))

(declare-fun tp!1120488 () Bool)

(declare-fun b_and!275485 () Bool)

(assert (=> b!3686297 (= tp!1120488 b_and!275485)))

(declare-fun b!3686292 () Bool)

(declare-fun e!2282788 () Bool)

(declare-fun e!2282792 () Bool)

(assert (=> b!3686292 (= e!2282788 e!2282792)))

(declare-fun res!1498030 () Bool)

(assert (=> b!3686292 (=> (not res!1498030) (not e!2282792))))

(declare-datatypes ((List!39124 0))(
  ( (Nil!39000) (Cons!39000 (h!44420 (_ BitVec 16)) (t!301107 List!39124)) )
))
(declare-datatypes ((TokenValue!6118 0))(
  ( (FloatLiteralValue!12236 (text!43271 List!39124)) (TokenValueExt!6117 (__x!24453 Int)) (Broken!30590 (value!188242 List!39124)) (Object!6241) (End!6118) (Def!6118) (Underscore!6118) (Match!6118) (Else!6118) (Error!6118) (Case!6118) (If!6118) (Extends!6118) (Abstract!6118) (Class!6118) (Val!6118) (DelimiterValue!12236 (del!6178 List!39124)) (KeywordValue!6124 (value!188243 List!39124)) (CommentValue!12236 (value!188244 List!39124)) (WhitespaceValue!12236 (value!188245 List!39124)) (IndentationValue!6118 (value!188246 List!39124)) (String!43923) (Int32!6118) (Broken!30591 (value!188247 List!39124)) (Boolean!6119) (Unit!57059) (OperatorValue!6121 (op!6178 List!39124)) (IdentifierValue!12236 (value!188248 List!39124)) (IdentifierValue!12237 (value!188249 List!39124)) (WhitespaceValue!12237 (value!188250 List!39124)) (True!12236) (False!12236) (Broken!30592 (value!188251 List!39124)) (Broken!30593 (value!188252 List!39124)) (True!12237) (RightBrace!6118) (RightBracket!6118) (Colon!6118) (Null!6118) (Comma!6118) (LeftBracket!6118) (False!12237) (LeftBrace!6118) (ImaginaryLiteralValue!6118 (text!43272 List!39124)) (StringLiteralValue!18354 (value!188253 List!39124)) (EOFValue!6118 (value!188254 List!39124)) (IdentValue!6118 (value!188255 List!39124)) (DelimiterValue!12237 (value!188256 List!39124)) (DedentValue!6118 (value!188257 List!39124)) (NewLineValue!6118 (value!188258 List!39124)) (IntegerValue!18354 (value!188259 (_ BitVec 32)) (text!43273 List!39124)) (IntegerValue!18355 (value!188260 Int) (text!43274 List!39124)) (Times!6118) (Or!6118) (Equal!6118) (Minus!6118) (Broken!30594 (value!188261 List!39124)) (And!6118) (Div!6118) (LessEqual!6118) (Mod!6118) (Concat!16765) (Not!6118) (Plus!6118) (SpaceValue!6118 (value!188262 List!39124)) (IntegerValue!18356 (value!188263 Int) (text!43275 List!39124)) (StringLiteralValue!18355 (text!43276 List!39124)) (FloatLiteralValue!12237 (text!43277 List!39124)) (BytesLiteralValue!6118 (value!188264 List!39124)) (CommentValue!12237 (value!188265 List!39124)) (StringLiteralValue!18356 (value!188266 List!39124)) (ErrorTokenValue!6118 (msg!6179 List!39124)) )
))
(declare-datatypes ((C!21480 0))(
  ( (C!21481 (val!12788 Int)) )
))
(declare-datatypes ((Regex!10647 0))(
  ( (ElementMatch!10647 (c!637587 C!21480)) (Concat!16766 (regOne!21806 Regex!10647) (regTwo!21806 Regex!10647)) (EmptyExpr!10647) (Star!10647 (reg!10976 Regex!10647)) (EmptyLang!10647) (Union!10647 (regOne!21807 Regex!10647) (regTwo!21807 Regex!10647)) )
))
(declare-datatypes ((String!43924 0))(
  ( (String!43925 (value!188267 String)) )
))
(declare-datatypes ((List!39125 0))(
  ( (Nil!39001) (Cons!39001 (h!44421 C!21480) (t!301108 List!39125)) )
))
(declare-datatypes ((IArray!23937 0))(
  ( (IArray!23938 (innerList!12026 List!39125)) )
))
(declare-datatypes ((Conc!11966 0))(
  ( (Node!11966 (left!30420 Conc!11966) (right!30750 Conc!11966) (csize!24162 Int) (cheight!12177 Int)) (Leaf!18521 (xs!15168 IArray!23937) (csize!24163 Int)) (Empty!11966) )
))
(declare-datatypes ((BalanceConc!23546 0))(
  ( (BalanceConc!23547 (c!637588 Conc!11966)) )
))
(declare-datatypes ((TokenValueInjection!11664 0))(
  ( (TokenValueInjection!11665 (toValue!8196 Int) (toChars!8055 Int)) )
))
(declare-datatypes ((Rule!11576 0))(
  ( (Rule!11577 (regex!5888 Regex!10647) (tag!6700 String!43924) (isSeparator!5888 Bool) (transformation!5888 TokenValueInjection!11664)) )
))
(declare-datatypes ((Token!11142 0))(
  ( (Token!11143 (value!188268 TokenValue!6118) (rule!8730 Rule!11576) (size!29790 Int) (originalCharacters!6602 List!39125)) )
))
(declare-datatypes ((List!39126 0))(
  ( (Nil!39002) (Cons!39002 (h!44422 Token!11142) (t!301109 List!39126)) )
))
(declare-datatypes ((IArray!23939 0))(
  ( (IArray!23940 (innerList!12027 List!39126)) )
))
(declare-datatypes ((Conc!11967 0))(
  ( (Node!11967 (left!30421 Conc!11967) (right!30751 Conc!11967) (csize!24164 Int) (cheight!12178 Int)) (Leaf!18522 (xs!15169 IArray!23939) (csize!24165 Int)) (Empty!11967) )
))
(declare-datatypes ((BalanceConc!23548 0))(
  ( (BalanceConc!23549 (c!637589 Conc!11967)) )
))
(declare-datatypes ((tuple2!38884 0))(
  ( (tuple2!38885 (_1!22576 BalanceConc!23548) (_2!22576 BalanceConc!23546)) )
))
(declare-fun lt!1290097 () tuple2!38884)

(declare-fun isEmpty!23199 (BalanceConc!23548) Bool)

(assert (=> b!3686292 (= res!1498030 (not (isEmpty!23199 (_1!22576 lt!1290097))))))

(declare-datatypes ((LexerInterface!5477 0))(
  ( (LexerInterfaceExt!5474 (__x!24454 Int)) (Lexer!5475) )
))
(declare-fun thiss!25197 () LexerInterface!5477)

(declare-fun input!3129 () List!39125)

(declare-datatypes ((List!39127 0))(
  ( (Nil!39003) (Cons!39003 (h!44423 Rule!11576) (t!301110 List!39127)) )
))
(declare-fun rules!3568 () List!39127)

(declare-fun lex!2618 (LexerInterface!5477 List!39127 BalanceConc!23546) tuple2!38884)

(declare-fun seqFromList!4437 (List!39125) BalanceConc!23546)

(assert (=> b!3686292 (= lt!1290097 (lex!2618 thiss!25197 rules!3568 (seqFromList!4437 input!3129)))))

(declare-fun e!2282794 () Bool)

(declare-fun b!3686293 () Bool)

(declare-fun e!2282789 () Bool)

(declare-fun tp!1120486 () Bool)

(declare-fun inv!52462 (String!43924) Bool)

(declare-fun inv!52464 (TokenValueInjection!11664) Bool)

(assert (=> b!3686293 (= e!2282794 (and tp!1120486 (inv!52462 (tag!6700 (h!44423 rules!3568))) (inv!52464 (transformation!5888 (h!44423 rules!3568))) e!2282789))))

(declare-fun b!3686294 () Bool)

(declare-fun e!2282793 () Bool)

(declare-fun tp_is_empty!18377 () Bool)

(declare-fun tp!1120484 () Bool)

(assert (=> b!3686294 (= e!2282793 (and tp_is_empty!18377 tp!1120484))))

(declare-fun b!3686295 () Bool)

(declare-fun res!1498028 () Bool)

(assert (=> b!3686295 (=> (not res!1498028) (not e!2282788))))

(declare-fun rulesInvariant!4874 (LexerInterface!5477 List!39127) Bool)

(assert (=> b!3686295 (= res!1498028 (rulesInvariant!4874 thiss!25197 rules!3568))))

(declare-fun b!3686296 () Bool)

(declare-fun e!2282791 () Bool)

(declare-fun tp!1120487 () Bool)

(assert (=> b!3686296 (= e!2282791 (and e!2282794 tp!1120487))))

(declare-fun res!1498029 () Bool)

(assert (=> start!346346 (=> (not res!1498029) (not e!2282788))))

(get-info :version)

(assert (=> start!346346 (= res!1498029 ((_ is Lexer!5475) thiss!25197))))

(assert (=> start!346346 e!2282788))

(assert (=> start!346346 true))

(assert (=> start!346346 e!2282791))

(assert (=> start!346346 e!2282793))

(declare-fun e!2282790 () Bool)

(assert (=> start!346346 e!2282790))

(assert (=> b!3686297 (= e!2282789 (and tp!1120485 tp!1120488))))

(declare-fun b!3686298 () Bool)

(declare-fun e!2282787 () Bool)

(declare-fun e!2282785 () Bool)

(assert (=> b!3686298 (= e!2282787 e!2282785)))

(declare-fun res!1498032 () Bool)

(assert (=> b!3686298 (=> (not res!1498032) (not e!2282785))))

(declare-fun lt!1290101 () Rule!11576)

(declare-fun lt!1290100 () List!39125)

(declare-fun matchR!5202 (Regex!10647 List!39125) Bool)

(assert (=> b!3686298 (= res!1498032 (matchR!5202 (regex!5888 lt!1290101) lt!1290100))))

(declare-datatypes ((Option!8387 0))(
  ( (None!8386) (Some!8386 (v!38332 Rule!11576)) )
))
(declare-fun lt!1290099 () Option!8387)

(declare-fun get!12932 (Option!8387) Rule!11576)

(assert (=> b!3686298 (= lt!1290101 (get!12932 lt!1290099))))

(declare-fun b!3686299 () Bool)

(declare-fun res!1498031 () Bool)

(assert (=> b!3686299 (=> (not res!1498031) (not e!2282788))))

(declare-fun isEmpty!23200 (List!39127) Bool)

(assert (=> b!3686299 (= res!1498031 (not (isEmpty!23200 rules!3568)))))

(declare-fun b!3686300 () Bool)

(declare-fun tp!1120483 () Bool)

(assert (=> b!3686300 (= e!2282790 (and tp_is_empty!18377 tp!1120483))))

(declare-fun b!3686301 () Bool)

(declare-fun lt!1290096 () Token!11142)

(assert (=> b!3686301 (= e!2282785 (= (rule!8730 lt!1290096) lt!1290101))))

(declare-fun b!3686302 () Bool)

(assert (=> b!3686302 (= e!2282792 (not (matchR!5202 (regex!5888 (rule!8730 lt!1290096)) lt!1290100)))))

(assert (=> b!3686302 e!2282787))

(declare-fun res!1498033 () Bool)

(assert (=> b!3686302 (=> (not res!1498033) (not e!2282787))))

(declare-fun isDefined!6591 (Option!8387) Bool)

(assert (=> b!3686302 (= res!1498033 (isDefined!6591 lt!1290099))))

(declare-fun getRuleFromTag!1476 (LexerInterface!5477 List!39127 String!43924) Option!8387)

(assert (=> b!3686302 (= lt!1290099 (getRuleFromTag!1476 thiss!25197 rules!3568 (tag!6700 (rule!8730 lt!1290096))))))

(declare-datatypes ((Unit!57060 0))(
  ( (Unit!57061) )
))
(declare-fun lt!1290103 () Unit!57060)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1476 (LexerInterface!5477 List!39127 List!39125 Token!11142) Unit!57060)

(assert (=> b!3686302 (= lt!1290103 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1476 thiss!25197 rules!3568 input!3129 lt!1290096))))

(declare-fun suffix!1448 () List!39125)

(declare-fun isPrefix!3241 (List!39125 List!39125) Bool)

(declare-fun ++!9707 (List!39125 List!39125) List!39125)

(assert (=> b!3686302 (isPrefix!3241 lt!1290100 (++!9707 input!3129 suffix!1448))))

(declare-fun lt!1290098 () Unit!57060)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!572 (List!39125 List!39125 List!39125) Unit!57060)

(assert (=> b!3686302 (= lt!1290098 (lemmaPrefixStaysPrefixWhenAddingToSuffix!572 lt!1290100 input!3129 suffix!1448))))

(declare-datatypes ((tuple2!38886 0))(
  ( (tuple2!38887 (_1!22577 Token!11142) (_2!22577 List!39125)) )
))
(declare-fun lt!1290104 () tuple2!38886)

(assert (=> b!3686302 (isPrefix!3241 lt!1290100 (++!9707 lt!1290100 (_2!22577 lt!1290104)))))

(declare-fun lt!1290102 () Unit!57060)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2158 (List!39125 List!39125) Unit!57060)

(assert (=> b!3686302 (= lt!1290102 (lemmaConcatTwoListThenFirstIsPrefix!2158 lt!1290100 (_2!22577 lt!1290104)))))

(declare-datatypes ((Option!8388 0))(
  ( (None!8387) (Some!8387 (v!38333 tuple2!38886)) )
))
(declare-fun get!12933 (Option!8388) tuple2!38886)

(declare-fun maxPrefix!3005 (LexerInterface!5477 List!39127 List!39125) Option!8388)

(assert (=> b!3686302 (= lt!1290104 (get!12933 (maxPrefix!3005 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14544 (BalanceConc!23546) List!39125)

(declare-fun charsOf!3899 (Token!11142) BalanceConc!23546)

(assert (=> b!3686302 (= lt!1290100 (list!14544 (charsOf!3899 lt!1290096)))))

(declare-fun head!7948 (List!39126) Token!11142)

(declare-fun list!14545 (BalanceConc!23548) List!39126)

(assert (=> b!3686302 (= lt!1290096 (head!7948 (list!14545 (_1!22576 lt!1290097))))))

(assert (= (and start!346346 res!1498029) b!3686299))

(assert (= (and b!3686299 res!1498031) b!3686295))

(assert (= (and b!3686295 res!1498028) b!3686292))

(assert (= (and b!3686292 res!1498030) b!3686302))

(assert (= (and b!3686302 res!1498033) b!3686298))

(assert (= (and b!3686298 res!1498032) b!3686301))

(assert (= b!3686293 b!3686297))

(assert (= b!3686296 b!3686293))

(assert (= (and start!346346 ((_ is Cons!39003) rules!3568)) b!3686296))

(assert (= (and start!346346 ((_ is Cons!39001) suffix!1448)) b!3686294))

(assert (= (and start!346346 ((_ is Cons!39001) input!3129)) b!3686300))

(declare-fun m!4197903 () Bool)

(assert (=> b!3686299 m!4197903))

(declare-fun m!4197905 () Bool)

(assert (=> b!3686293 m!4197905))

(declare-fun m!4197907 () Bool)

(assert (=> b!3686293 m!4197907))

(declare-fun m!4197909 () Bool)

(assert (=> b!3686298 m!4197909))

(declare-fun m!4197911 () Bool)

(assert (=> b!3686298 m!4197911))

(declare-fun m!4197913 () Bool)

(assert (=> b!3686292 m!4197913))

(declare-fun m!4197915 () Bool)

(assert (=> b!3686292 m!4197915))

(assert (=> b!3686292 m!4197915))

(declare-fun m!4197917 () Bool)

(assert (=> b!3686292 m!4197917))

(declare-fun m!4197919 () Bool)

(assert (=> b!3686295 m!4197919))

(declare-fun m!4197921 () Bool)

(assert (=> b!3686302 m!4197921))

(declare-fun m!4197923 () Bool)

(assert (=> b!3686302 m!4197923))

(declare-fun m!4197925 () Bool)

(assert (=> b!3686302 m!4197925))

(declare-fun m!4197927 () Bool)

(assert (=> b!3686302 m!4197927))

(declare-fun m!4197929 () Bool)

(assert (=> b!3686302 m!4197929))

(declare-fun m!4197931 () Bool)

(assert (=> b!3686302 m!4197931))

(declare-fun m!4197933 () Bool)

(assert (=> b!3686302 m!4197933))

(declare-fun m!4197935 () Bool)

(assert (=> b!3686302 m!4197935))

(declare-fun m!4197937 () Bool)

(assert (=> b!3686302 m!4197937))

(assert (=> b!3686302 m!4197935))

(assert (=> b!3686302 m!4197921))

(declare-fun m!4197939 () Bool)

(assert (=> b!3686302 m!4197939))

(assert (=> b!3686302 m!4197929))

(declare-fun m!4197941 () Bool)

(assert (=> b!3686302 m!4197941))

(declare-fun m!4197943 () Bool)

(assert (=> b!3686302 m!4197943))

(declare-fun m!4197945 () Bool)

(assert (=> b!3686302 m!4197945))

(assert (=> b!3686302 m!4197941))

(declare-fun m!4197947 () Bool)

(assert (=> b!3686302 m!4197947))

(assert (=> b!3686302 m!4197923))

(declare-fun m!4197949 () Bool)

(assert (=> b!3686302 m!4197949))

(declare-fun m!4197951 () Bool)

(assert (=> b!3686302 m!4197951))

(check-sat (not b_next!98503) (not b!3686298) b_and!275483 (not b!3686302) (not b!3686292) (not b!3686294) (not b_next!98501) tp_is_empty!18377 (not b!3686295) (not b!3686296) b_and!275485 (not b!3686293) (not b!3686299) (not b!3686300))
(check-sat b_and!275483 b_and!275485 (not b_next!98503) (not b_next!98501))

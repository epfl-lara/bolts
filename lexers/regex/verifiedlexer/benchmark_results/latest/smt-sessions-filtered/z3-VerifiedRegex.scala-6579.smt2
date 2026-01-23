; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347978 () Bool)

(assert start!347978)

(declare-fun b!3695321 () Bool)

(declare-fun b_free!98233 () Bool)

(declare-fun b_next!98937 () Bool)

(assert (=> b!3695321 (= b_free!98233 (not b_next!98937))))

(declare-fun tp!1123099 () Bool)

(declare-fun b_and!276155 () Bool)

(assert (=> b!3695321 (= tp!1123099 b_and!276155)))

(declare-fun b_free!98235 () Bool)

(declare-fun b_next!98939 () Bool)

(assert (=> b!3695321 (= b_free!98235 (not b_next!98939))))

(declare-fun tp!1123104 () Bool)

(declare-fun b_and!276157 () Bool)

(assert (=> b!3695321 (= tp!1123104 b_and!276157)))

(declare-fun b!3695320 () Bool)

(declare-fun b_free!98237 () Bool)

(declare-fun b_next!98941 () Bool)

(assert (=> b!3695320 (= b_free!98237 (not b_next!98941))))

(declare-fun tp!1123101 () Bool)

(declare-fun b_and!276159 () Bool)

(assert (=> b!3695320 (= tp!1123101 b_and!276159)))

(declare-fun b_free!98239 () Bool)

(declare-fun b_next!98943 () Bool)

(assert (=> b!3695320 (= b_free!98239 (not b_next!98943))))

(declare-fun tp!1123098 () Bool)

(declare-fun b_and!276161 () Bool)

(assert (=> b!3695320 (= tp!1123098 b_and!276161)))

(declare-datatypes ((List!39318 0))(
  ( (Nil!39194) (Cons!39194 (h!44614 (_ BitVec 16)) (t!301653 List!39318)) )
))
(declare-datatypes ((TokenValue!6168 0))(
  ( (FloatLiteralValue!12336 (text!43621 List!39318)) (TokenValueExt!6167 (__x!24553 Int)) (Broken!30840 (value!189661 List!39318)) (Object!6291) (End!6168) (Def!6168) (Underscore!6168) (Match!6168) (Else!6168) (Error!6168) (Case!6168) (If!6168) (Extends!6168) (Abstract!6168) (Class!6168) (Val!6168) (DelimiterValue!12336 (del!6228 List!39318)) (KeywordValue!6174 (value!189662 List!39318)) (CommentValue!12336 (value!189663 List!39318)) (WhitespaceValue!12336 (value!189664 List!39318)) (IndentationValue!6168 (value!189665 List!39318)) (String!44173) (Int32!6168) (Broken!30841 (value!189666 List!39318)) (Boolean!6169) (Unit!57185) (OperatorValue!6171 (op!6228 List!39318)) (IdentifierValue!12336 (value!189667 List!39318)) (IdentifierValue!12337 (value!189668 List!39318)) (WhitespaceValue!12337 (value!189669 List!39318)) (True!12336) (False!12336) (Broken!30842 (value!189670 List!39318)) (Broken!30843 (value!189671 List!39318)) (True!12337) (RightBrace!6168) (RightBracket!6168) (Colon!6168) (Null!6168) (Comma!6168) (LeftBracket!6168) (False!12337) (LeftBrace!6168) (ImaginaryLiteralValue!6168 (text!43622 List!39318)) (StringLiteralValue!18504 (value!189672 List!39318)) (EOFValue!6168 (value!189673 List!39318)) (IdentValue!6168 (value!189674 List!39318)) (DelimiterValue!12337 (value!189675 List!39318)) (DedentValue!6168 (value!189676 List!39318)) (NewLineValue!6168 (value!189677 List!39318)) (IntegerValue!18504 (value!189678 (_ BitVec 32)) (text!43623 List!39318)) (IntegerValue!18505 (value!189679 Int) (text!43624 List!39318)) (Times!6168) (Or!6168) (Equal!6168) (Minus!6168) (Broken!30844 (value!189680 List!39318)) (And!6168) (Div!6168) (LessEqual!6168) (Mod!6168) (Concat!16865) (Not!6168) (Plus!6168) (SpaceValue!6168 (value!189681 List!39318)) (IntegerValue!18506 (value!189682 Int) (text!43625 List!39318)) (StringLiteralValue!18505 (text!43626 List!39318)) (FloatLiteralValue!12337 (text!43627 List!39318)) (BytesLiteralValue!6168 (value!189683 List!39318)) (CommentValue!12337 (value!189684 List!39318)) (StringLiteralValue!18506 (value!189685 List!39318)) (ErrorTokenValue!6168 (msg!6229 List!39318)) )
))
(declare-datatypes ((C!21580 0))(
  ( (C!21581 (val!12838 Int)) )
))
(declare-datatypes ((Regex!10697 0))(
  ( (ElementMatch!10697 (c!638822 C!21580)) (Concat!16866 (regOne!21906 Regex!10697) (regTwo!21906 Regex!10697)) (EmptyExpr!10697) (Star!10697 (reg!11026 Regex!10697)) (EmptyLang!10697) (Union!10697 (regOne!21907 Regex!10697) (regTwo!21907 Regex!10697)) )
))
(declare-datatypes ((String!44174 0))(
  ( (String!44175 (value!189686 String)) )
))
(declare-datatypes ((List!39319 0))(
  ( (Nil!39195) (Cons!39195 (h!44615 C!21580) (t!301654 List!39319)) )
))
(declare-datatypes ((IArray!24075 0))(
  ( (IArray!24076 (innerList!12095 List!39319)) )
))
(declare-datatypes ((Conc!12035 0))(
  ( (Node!12035 (left!30550 Conc!12035) (right!30880 Conc!12035) (csize!24300 Int) (cheight!12246 Int)) (Leaf!18615 (xs!15237 IArray!24075) (csize!24301 Int)) (Empty!12035) )
))
(declare-datatypes ((BalanceConc!23684 0))(
  ( (BalanceConc!23685 (c!638823 Conc!12035)) )
))
(declare-datatypes ((TokenValueInjection!11764 0))(
  ( (TokenValueInjection!11765 (toValue!8270 Int) (toChars!8129 Int)) )
))
(declare-datatypes ((Rule!11676 0))(
  ( (Rule!11677 (regex!5938 Regex!10697) (tag!6762 String!44174) (isSeparator!5938 Bool) (transformation!5938 TokenValueInjection!11764)) )
))
(declare-datatypes ((List!39320 0))(
  ( (Nil!39196) (Cons!39196 (h!44616 Rule!11676) (t!301655 List!39320)) )
))
(declare-fun rules!3598 () List!39320)

(declare-fun e!2288303 () Bool)

(declare-fun e!2288299 () Bool)

(declare-fun tp!1123100 () Bool)

(declare-fun b!3695313 () Bool)

(declare-fun inv!52676 (String!44174) Bool)

(declare-fun inv!52679 (TokenValueInjection!11764) Bool)

(assert (=> b!3695313 (= e!2288303 (and tp!1123100 (inv!52676 (tag!6762 (h!44616 rules!3598))) (inv!52679 (transformation!5938 (h!44616 rules!3598))) e!2288299))))

(declare-fun b!3695314 () Bool)

(declare-fun e!2288304 () Bool)

(declare-fun e!2288297 () Bool)

(assert (=> b!3695314 (= e!2288304 e!2288297)))

(declare-fun res!1502536 () Bool)

(assert (=> b!3695314 (=> (not res!1502536) (not e!2288297))))

(declare-datatypes ((Token!11230 0))(
  ( (Token!11231 (value!189687 TokenValue!6168) (rule!8792 Rule!11676) (size!29916 Int) (originalCharacters!6646 List!39319)) )
))
(declare-datatypes ((tuple2!39084 0))(
  ( (tuple2!39085 (_1!22676 Token!11230) (_2!22676 List!39319)) )
))
(declare-datatypes ((Option!8456 0))(
  ( (None!8455) (Some!8455 (v!38413 tuple2!39084)) )
))
(declare-fun lt!1293458 () Option!8456)

(declare-fun isDefined!6647 (Option!8456) Bool)

(assert (=> b!3695314 (= res!1502536 (isDefined!6647 lt!1293458))))

(declare-fun input!3172 () List!39319)

(declare-datatypes ((LexerInterface!5527 0))(
  ( (LexerInterfaceExt!5524 (__x!24554 Int)) (Lexer!5525) )
))
(declare-fun thiss!25322 () LexerInterface!5527)

(declare-fun maxPrefix!3049 (LexerInterface!5527 List!39320 List!39319) Option!8456)

(assert (=> b!3695314 (= lt!1293458 (maxPrefix!3049 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3695315 () Bool)

(declare-fun res!1502540 () Bool)

(declare-fun e!2288308 () Bool)

(assert (=> b!3695315 (=> (not res!1502540) (not e!2288308))))

(declare-fun isEmpty!23358 (List!39320) Bool)

(assert (=> b!3695315 (= res!1502540 (not (isEmpty!23358 (t!301655 rules!3598))))))

(declare-fun token!544 () Token!11230)

(declare-fun tp!1123106 () Bool)

(declare-fun e!2288309 () Bool)

(declare-fun b!3695316 () Bool)

(declare-fun e!2288302 () Bool)

(assert (=> b!3695316 (= e!2288309 (and tp!1123106 (inv!52676 (tag!6762 (rule!8792 token!544))) (inv!52679 (transformation!5938 (rule!8792 token!544))) e!2288302))))

(declare-fun b!3695317 () Bool)

(declare-fun e!2288310 () Bool)

(declare-fun tp_is_empty!18469 () Bool)

(declare-fun tp!1123102 () Bool)

(assert (=> b!3695317 (= e!2288310 (and tp_is_empty!18469 tp!1123102))))

(declare-fun b!3695318 () Bool)

(assert (=> b!3695318 (= e!2288297 e!2288308)))

(declare-fun res!1502535 () Bool)

(assert (=> b!3695318 (=> (not res!1502535) (not e!2288308))))

(declare-fun e!2288300 () Bool)

(assert (=> b!3695318 (= res!1502535 e!2288300)))

(declare-fun res!1502539 () Bool)

(assert (=> b!3695318 (=> res!1502539 e!2288300)))

(declare-fun lt!1293456 () Option!8456)

(assert (=> b!3695318 (= res!1502539 (not (isDefined!6647 lt!1293456)))))

(declare-fun maxPrefixOneRule!2163 (LexerInterface!5527 Rule!11676 List!39319) Option!8456)

(assert (=> b!3695318 (= lt!1293456 (maxPrefixOneRule!2163 thiss!25322 (h!44616 rules!3598) input!3172))))

(declare-fun b!3695319 () Bool)

(declare-fun res!1502534 () Bool)

(assert (=> b!3695319 (=> (not res!1502534) (not e!2288304))))

(assert (=> b!3695319 (= res!1502534 (not (isEmpty!23358 rules!3598)))))

(assert (=> b!3695320 (= e!2288302 (and tp!1123101 tp!1123098))))

(assert (=> b!3695321 (= e!2288299 (and tp!1123099 tp!1123104))))

(declare-fun b!3695323 () Bool)

(declare-fun res!1502541 () Bool)

(assert (=> b!3695323 (=> (not res!1502541) (not e!2288297))))

(get-info :version)

(assert (=> b!3695323 (= res!1502541 ((_ is Cons!39196) rules!3598))))

(declare-fun b!3695324 () Bool)

(declare-fun res!1502538 () Bool)

(assert (=> b!3695324 (=> (not res!1502538) (not e!2288304))))

(declare-fun rulesInvariant!4924 (LexerInterface!5527 List!39320) Bool)

(assert (=> b!3695324 (= res!1502538 (rulesInvariant!4924 thiss!25322 rules!3598))))

(declare-fun b!3695325 () Bool)

(assert (=> b!3695325 (= e!2288308 (not true))))

(declare-fun lt!1293455 () Option!8456)

(assert (=> b!3695325 (= lt!1293455 (maxPrefix!3049 thiss!25322 (t!301655 rules!3598) input!3172))))

(assert (=> b!3695325 (rulesInvariant!4924 thiss!25322 (t!301655 rules!3598))))

(declare-datatypes ((Unit!57186 0))(
  ( (Unit!57187) )
))
(declare-fun lt!1293457 () Unit!57186)

(declare-fun lemmaInvariantOnRulesThenOnTail!646 (LexerInterface!5527 Rule!11676 List!39320) Unit!57186)

(assert (=> b!3695325 (= lt!1293457 (lemmaInvariantOnRulesThenOnTail!646 thiss!25322 (h!44616 rules!3598) (t!301655 rules!3598)))))

(declare-fun b!3695326 () Bool)

(declare-fun get!13014 (Option!8456) tuple2!39084)

(assert (=> b!3695326 (= e!2288300 (not (= (_1!22676 (get!13014 lt!1293456)) token!544)))))

(declare-fun b!3695327 () Bool)

(declare-fun e!2288301 () Bool)

(declare-fun tp!1123103 () Bool)

(assert (=> b!3695327 (= e!2288301 (and e!2288303 tp!1123103))))

(declare-fun b!3695328 () Bool)

(declare-fun tp!1123105 () Bool)

(declare-fun e!2288307 () Bool)

(declare-fun inv!21 (TokenValue!6168) Bool)

(assert (=> b!3695328 (= e!2288307 (and (inv!21 (value!189687 token!544)) e!2288309 tp!1123105))))

(declare-fun b!3695322 () Bool)

(declare-fun res!1502537 () Bool)

(assert (=> b!3695322 (=> (not res!1502537) (not e!2288297))))

(assert (=> b!3695322 (= res!1502537 (= (_1!22676 (get!13014 lt!1293458)) token!544))))

(declare-fun res!1502533 () Bool)

(assert (=> start!347978 (=> (not res!1502533) (not e!2288304))))

(assert (=> start!347978 (= res!1502533 ((_ is Lexer!5525) thiss!25322))))

(assert (=> start!347978 e!2288304))

(assert (=> start!347978 true))

(assert (=> start!347978 e!2288301))

(declare-fun inv!52680 (Token!11230) Bool)

(assert (=> start!347978 (and (inv!52680 token!544) e!2288307)))

(assert (=> start!347978 e!2288310))

(assert (= (and start!347978 res!1502533) b!3695324))

(assert (= (and b!3695324 res!1502538) b!3695319))

(assert (= (and b!3695319 res!1502534) b!3695314))

(assert (= (and b!3695314 res!1502536) b!3695322))

(assert (= (and b!3695322 res!1502537) b!3695323))

(assert (= (and b!3695323 res!1502541) b!3695318))

(assert (= (and b!3695318 (not res!1502539)) b!3695326))

(assert (= (and b!3695318 res!1502535) b!3695315))

(assert (= (and b!3695315 res!1502540) b!3695325))

(assert (= b!3695313 b!3695321))

(assert (= b!3695327 b!3695313))

(assert (= (and start!347978 ((_ is Cons!39196) rules!3598)) b!3695327))

(assert (= b!3695316 b!3695320))

(assert (= b!3695328 b!3695316))

(assert (= start!347978 b!3695328))

(assert (= (and start!347978 ((_ is Cons!39195) input!3172)) b!3695317))

(declare-fun m!4207105 () Bool)

(assert (=> b!3695313 m!4207105))

(declare-fun m!4207107 () Bool)

(assert (=> b!3695313 m!4207107))

(declare-fun m!4207109 () Bool)

(assert (=> b!3695315 m!4207109))

(declare-fun m!4207111 () Bool)

(assert (=> b!3695318 m!4207111))

(declare-fun m!4207113 () Bool)

(assert (=> b!3695318 m!4207113))

(declare-fun m!4207115 () Bool)

(assert (=> b!3695314 m!4207115))

(declare-fun m!4207117 () Bool)

(assert (=> b!3695314 m!4207117))

(declare-fun m!4207119 () Bool)

(assert (=> b!3695326 m!4207119))

(declare-fun m!4207121 () Bool)

(assert (=> b!3695325 m!4207121))

(declare-fun m!4207123 () Bool)

(assert (=> b!3695325 m!4207123))

(declare-fun m!4207125 () Bool)

(assert (=> b!3695325 m!4207125))

(declare-fun m!4207127 () Bool)

(assert (=> b!3695328 m!4207127))

(declare-fun m!4207129 () Bool)

(assert (=> b!3695324 m!4207129))

(declare-fun m!4207131 () Bool)

(assert (=> b!3695322 m!4207131))

(declare-fun m!4207133 () Bool)

(assert (=> b!3695316 m!4207133))

(declare-fun m!4207135 () Bool)

(assert (=> b!3695316 m!4207135))

(declare-fun m!4207137 () Bool)

(assert (=> b!3695319 m!4207137))

(declare-fun m!4207139 () Bool)

(assert (=> start!347978 m!4207139))

(check-sat (not b!3695317) (not b!3695315) (not b!3695319) (not b_next!98943) (not b!3695324) tp_is_empty!18469 (not b!3695313) (not b!3695322) (not b!3695325) (not b_next!98937) b_and!276161 (not b!3695328) (not b_next!98941) b_and!276159 (not b!3695316) (not b!3695326) (not b!3695327) (not b!3695318) b_and!276155 (not start!347978) b_and!276157 (not b_next!98939) (not b!3695314))
(check-sat (not b_next!98943) b_and!276155 b_and!276157 (not b_next!98939) (not b_next!98937) b_and!276161 (not b_next!98941) b_and!276159)

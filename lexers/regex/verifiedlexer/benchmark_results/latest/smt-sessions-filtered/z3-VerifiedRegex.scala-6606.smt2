; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349006 () Bool)

(assert start!349006)

(declare-fun b!3703160 () Bool)

(declare-fun b_free!98777 () Bool)

(declare-fun b_next!99481 () Bool)

(assert (=> b!3703160 (= b_free!98777 (not b_next!99481))))

(declare-fun tp!1125739 () Bool)

(declare-fun b_and!277011 () Bool)

(assert (=> b!3703160 (= tp!1125739 b_and!277011)))

(declare-fun b_free!98779 () Bool)

(declare-fun b_next!99483 () Bool)

(assert (=> b!3703160 (= b_free!98779 (not b_next!99483))))

(declare-fun tp!1125742 () Bool)

(declare-fun b_and!277013 () Bool)

(assert (=> b!3703160 (= tp!1125742 b_and!277013)))

(declare-fun b!3703156 () Bool)

(declare-fun b_free!98781 () Bool)

(declare-fun b_next!99485 () Bool)

(assert (=> b!3703156 (= b_free!98781 (not b_next!99485))))

(declare-fun tp!1125743 () Bool)

(declare-fun b_and!277015 () Bool)

(assert (=> b!3703156 (= tp!1125743 b_and!277015)))

(declare-fun b_free!98783 () Bool)

(declare-fun b_next!99487 () Bool)

(assert (=> b!3703156 (= b_free!98783 (not b_next!99487))))

(declare-fun tp!1125744 () Bool)

(declare-fun b_and!277017 () Bool)

(assert (=> b!3703156 (= tp!1125744 b_and!277017)))

(declare-fun e!2293487 () Bool)

(declare-fun tp!1125740 () Bool)

(declare-fun e!2293485 () Bool)

(declare-datatypes ((List!39505 0))(
  ( (Nil!39381) (Cons!39381 (h!44801 (_ BitVec 16)) (t!302188 List!39505)) )
))
(declare-datatypes ((TokenValue!6222 0))(
  ( (FloatLiteralValue!12444 (text!43999 List!39505)) (TokenValueExt!6221 (__x!24661 Int)) (Broken!31110 (value!191193 List!39505)) (Object!6345) (End!6222) (Def!6222) (Underscore!6222) (Match!6222) (Else!6222) (Error!6222) (Case!6222) (If!6222) (Extends!6222) (Abstract!6222) (Class!6222) (Val!6222) (DelimiterValue!12444 (del!6282 List!39505)) (KeywordValue!6228 (value!191194 List!39505)) (CommentValue!12444 (value!191195 List!39505)) (WhitespaceValue!12444 (value!191196 List!39505)) (IndentationValue!6222 (value!191197 List!39505)) (String!44443) (Int32!6222) (Broken!31111 (value!191198 List!39505)) (Boolean!6223) (Unit!57343) (OperatorValue!6225 (op!6282 List!39505)) (IdentifierValue!12444 (value!191199 List!39505)) (IdentifierValue!12445 (value!191200 List!39505)) (WhitespaceValue!12445 (value!191201 List!39505)) (True!12444) (False!12444) (Broken!31112 (value!191202 List!39505)) (Broken!31113 (value!191203 List!39505)) (True!12445) (RightBrace!6222) (RightBracket!6222) (Colon!6222) (Null!6222) (Comma!6222) (LeftBracket!6222) (False!12445) (LeftBrace!6222) (ImaginaryLiteralValue!6222 (text!44000 List!39505)) (StringLiteralValue!18666 (value!191204 List!39505)) (EOFValue!6222 (value!191205 List!39505)) (IdentValue!6222 (value!191206 List!39505)) (DelimiterValue!12445 (value!191207 List!39505)) (DedentValue!6222 (value!191208 List!39505)) (NewLineValue!6222 (value!191209 List!39505)) (IntegerValue!18666 (value!191210 (_ BitVec 32)) (text!44001 List!39505)) (IntegerValue!18667 (value!191211 Int) (text!44002 List!39505)) (Times!6222) (Or!6222) (Equal!6222) (Minus!6222) (Broken!31114 (value!191212 List!39505)) (And!6222) (Div!6222) (LessEqual!6222) (Mod!6222) (Concat!16973) (Not!6222) (Plus!6222) (SpaceValue!6222 (value!191213 List!39505)) (IntegerValue!18668 (value!191214 Int) (text!44003 List!39505)) (StringLiteralValue!18667 (text!44004 List!39505)) (FloatLiteralValue!12445 (text!44005 List!39505)) (BytesLiteralValue!6222 (value!191215 List!39505)) (CommentValue!12445 (value!191216 List!39505)) (StringLiteralValue!18668 (value!191217 List!39505)) (ErrorTokenValue!6222 (msg!6283 List!39505)) )
))
(declare-datatypes ((C!21688 0))(
  ( (C!21689 (val!12892 Int)) )
))
(declare-datatypes ((List!39506 0))(
  ( (Nil!39382) (Cons!39382 (h!44802 C!21688) (t!302189 List!39506)) )
))
(declare-datatypes ((IArray!24183 0))(
  ( (IArray!24184 (innerList!12149 List!39506)) )
))
(declare-datatypes ((Conc!12089 0))(
  ( (Node!12089 (left!30639 Conc!12089) (right!30969 Conc!12089) (csize!24408 Int) (cheight!12300 Int)) (Leaf!18696 (xs!15291 IArray!24183) (csize!24409 Int)) (Empty!12089) )
))
(declare-datatypes ((BalanceConc!23792 0))(
  ( (BalanceConc!23793 (c!639826 Conc!12089)) )
))
(declare-datatypes ((TokenValueInjection!11872 0))(
  ( (TokenValueInjection!11873 (toValue!8332 Int) (toChars!8191 Int)) )
))
(declare-datatypes ((String!44444 0))(
  ( (String!44445 (value!191218 String)) )
))
(declare-datatypes ((Regex!10751 0))(
  ( (ElementMatch!10751 (c!639827 C!21688)) (Concat!16974 (regOne!22014 Regex!10751) (regTwo!22014 Regex!10751)) (EmptyExpr!10751) (Star!10751 (reg!11080 Regex!10751)) (EmptyLang!10751) (Union!10751 (regOne!22015 Regex!10751) (regTwo!22015 Regex!10751)) )
))
(declare-datatypes ((Rule!11784 0))(
  ( (Rule!11785 (regex!5992 Regex!10751) (tag!6832 String!44444) (isSeparator!5992 Bool) (transformation!5992 TokenValueInjection!11872)) )
))
(declare-datatypes ((List!39507 0))(
  ( (Nil!39383) (Cons!39383 (h!44803 Rule!11784) (t!302190 List!39507)) )
))
(declare-fun rules!3698 () List!39507)

(declare-fun b!3703155 () Bool)

(declare-fun inv!52918 (String!44444) Bool)

(declare-fun inv!52920 (TokenValueInjection!11872) Bool)

(assert (=> b!3703155 (= e!2293487 (and tp!1125740 (inv!52918 (tag!6832 (h!44803 rules!3698))) (inv!52920 (transformation!5992 (h!44803 rules!3698))) e!2293485))))

(declare-fun e!2293486 () Bool)

(assert (=> b!3703156 (= e!2293486 (and tp!1125743 tp!1125744))))

(declare-fun b!3703157 () Bool)

(declare-fun e!2293484 () Bool)

(assert (=> b!3703157 (= e!2293484 true)))

(declare-fun lt!1295808 () Bool)

(declare-datatypes ((Option!8534 0))(
  ( (None!8533) (Some!8533 (v!38495 Rule!11784)) )
))
(declare-fun lt!1295805 () Option!8534)

(declare-fun contains!7850 (List!39507 Rule!11784) Bool)

(declare-fun get!13115 (Option!8534) Rule!11784)

(assert (=> b!3703157 (= lt!1295808 (contains!7850 rules!3698 (get!13115 lt!1295805)))))

(declare-fun res!1506426 () Bool)

(declare-fun e!2293480 () Bool)

(assert (=> start!349006 (=> (not res!1506426) (not e!2293480))))

(declare-datatypes ((LexerInterface!5581 0))(
  ( (LexerInterfaceExt!5578 (__x!24662 Int)) (Lexer!5579) )
))
(declare-fun thiss!25522 () LexerInterface!5581)

(get-info :version)

(assert (=> start!349006 (= res!1506426 ((_ is Lexer!5579) thiss!25522))))

(assert (=> start!349006 e!2293480))

(assert (=> start!349006 true))

(declare-fun e!2293489 () Bool)

(assert (=> start!349006 e!2293489))

(declare-fun e!2293488 () Bool)

(assert (=> start!349006 e!2293488))

(declare-fun tag!250 () String!44444)

(assert (=> start!349006 (inv!52918 tag!250)))

(declare-fun b!3703158 () Bool)

(declare-fun tp!1125741 () Bool)

(declare-fun newHd!19 () Rule!11784)

(assert (=> b!3703158 (= e!2293489 (and tp!1125741 (inv!52918 (tag!6832 newHd!19)) (inv!52920 (transformation!5992 newHd!19)) e!2293486))))

(declare-fun b!3703159 () Bool)

(declare-fun e!2293481 () Bool)

(assert (=> b!3703159 (= e!2293480 (not e!2293481))))

(declare-fun res!1506424 () Bool)

(assert (=> b!3703159 (=> res!1506424 e!2293481)))

(declare-fun isDefined!6721 (Option!8534) Bool)

(assert (=> b!3703159 (= res!1506424 (not (isDefined!6721 lt!1295805)))))

(declare-fun getRuleFromTag!1526 (LexerInterface!5581 List!39507 String!44444) Option!8534)

(assert (=> b!3703159 (= lt!1295805 (getRuleFromTag!1526 thiss!25522 rules!3698 tag!250))))

(declare-fun rulesInvariant!4978 (LexerInterface!5581 List!39507) Bool)

(assert (=> b!3703159 (rulesInvariant!4978 thiss!25522 rules!3698)))

(declare-datatypes ((Unit!57344 0))(
  ( (Unit!57345) )
))
(declare-fun lt!1295806 () Unit!57344)

(declare-fun lemmaInvariantOnRulesThenOnTail!684 (LexerInterface!5581 Rule!11784 List!39507) Unit!57344)

(assert (=> b!3703159 (= lt!1295806 (lemmaInvariantOnRulesThenOnTail!684 thiss!25522 newHd!19 rules!3698))))

(assert (=> b!3703160 (= e!2293485 (and tp!1125739 tp!1125742))))

(declare-fun b!3703161 () Bool)

(declare-fun res!1506425 () Bool)

(assert (=> b!3703161 (=> res!1506425 e!2293484)))

(declare-datatypes ((List!39508 0))(
  ( (Nil!39384) (Cons!39384 (h!44804 String!44444) (t!302191 List!39508)) )
))
(declare-fun lt!1295807 () List!39508)

(declare-fun noDuplicateTag!2313 (LexerInterface!5581 List!39507 List!39508) Bool)

(assert (=> b!3703161 (= res!1506425 (not (noDuplicateTag!2313 thiss!25522 rules!3698 lt!1295807)))))

(declare-fun b!3703162 () Bool)

(assert (=> b!3703162 (= e!2293481 e!2293484)))

(declare-fun res!1506423 () Bool)

(assert (=> b!3703162 (=> res!1506423 e!2293484)))

(declare-fun contains!7851 (List!39508 String!44444) Bool)

(assert (=> b!3703162 (= res!1506423 (not (contains!7851 lt!1295807 (tag!6832 newHd!19))))))

(assert (=> b!3703162 (= lt!1295807 (Cons!39384 (tag!6832 newHd!19) Nil!39384))))

(declare-fun b!3703163 () Bool)

(declare-fun res!1506427 () Bool)

(assert (=> b!3703163 (=> (not res!1506427) (not e!2293480))))

(assert (=> b!3703163 (= res!1506427 (rulesInvariant!4978 thiss!25522 (Cons!39383 newHd!19 rules!3698)))))

(declare-fun b!3703164 () Bool)

(declare-fun tp!1125738 () Bool)

(assert (=> b!3703164 (= e!2293488 (and e!2293487 tp!1125738))))

(assert (= (and start!349006 res!1506426) b!3703163))

(assert (= (and b!3703163 res!1506427) b!3703159))

(assert (= (and b!3703159 (not res!1506424)) b!3703162))

(assert (= (and b!3703162 (not res!1506423)) b!3703161))

(assert (= (and b!3703161 (not res!1506425)) b!3703157))

(assert (= b!3703158 b!3703156))

(assert (= start!349006 b!3703158))

(assert (= b!3703155 b!3703160))

(assert (= b!3703164 b!3703155))

(assert (= (and start!349006 ((_ is Cons!39383) rules!3698)) b!3703164))

(declare-fun m!4214097 () Bool)

(assert (=> b!3703157 m!4214097))

(assert (=> b!3703157 m!4214097))

(declare-fun m!4214099 () Bool)

(assert (=> b!3703157 m!4214099))

(declare-fun m!4214101 () Bool)

(assert (=> b!3703159 m!4214101))

(declare-fun m!4214103 () Bool)

(assert (=> b!3703159 m!4214103))

(declare-fun m!4214105 () Bool)

(assert (=> b!3703159 m!4214105))

(declare-fun m!4214107 () Bool)

(assert (=> b!3703159 m!4214107))

(declare-fun m!4214109 () Bool)

(assert (=> b!3703155 m!4214109))

(declare-fun m!4214111 () Bool)

(assert (=> b!3703155 m!4214111))

(declare-fun m!4214113 () Bool)

(assert (=> b!3703161 m!4214113))

(declare-fun m!4214115 () Bool)

(assert (=> start!349006 m!4214115))

(declare-fun m!4214117 () Bool)

(assert (=> b!3703162 m!4214117))

(declare-fun m!4214119 () Bool)

(assert (=> b!3703158 m!4214119))

(declare-fun m!4214121 () Bool)

(assert (=> b!3703158 m!4214121))

(declare-fun m!4214123 () Bool)

(assert (=> b!3703163 m!4214123))

(check-sat (not b_next!99485) (not b!3703158) (not b_next!99483) (not b!3703159) b_and!277015 (not b_next!99481) (not b!3703162) (not start!349006) b_and!277013 (not b!3703164) (not b_next!99487) (not b!3703161) b_and!277017 (not b!3703155) (not b!3703163) (not b!3703157) b_and!277011)
(check-sat (not b_next!99487) (not b_next!99485) b_and!277017 (not b_next!99483) b_and!277015 (not b_next!99481) b_and!277011 b_and!277013)

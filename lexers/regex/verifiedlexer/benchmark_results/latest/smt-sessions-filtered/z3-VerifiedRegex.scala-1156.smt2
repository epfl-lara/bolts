; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59972 () Bool)

(assert start!59972)

(declare-fun b!622316 () Bool)

(declare-fun b_free!18189 () Bool)

(declare-fun b_next!18205 () Bool)

(assert (=> b!622316 (= b_free!18189 (not b_next!18205))))

(declare-fun tp!193267 () Bool)

(declare-fun b_and!61847 () Bool)

(assert (=> b!622316 (= tp!193267 b_and!61847)))

(declare-fun b_free!18191 () Bool)

(declare-fun b_next!18207 () Bool)

(assert (=> b!622316 (= b_free!18191 (not b_next!18207))))

(declare-fun tp!193269 () Bool)

(declare-fun b_and!61849 () Bool)

(assert (=> b!622316 (= tp!193269 b_and!61849)))

(declare-fun b!622312 () Bool)

(declare-fun e!377786 () Bool)

(declare-fun e!377783 () Bool)

(assert (=> b!622312 (= e!377786 e!377783)))

(declare-fun res!270788 () Bool)

(assert (=> b!622312 (=> (not res!270788) (not e!377783))))

(declare-fun lt!266180 () Int)

(declare-fun from!852 () Int)

(declare-datatypes ((List!6388 0))(
  ( (Nil!6378) (Cons!6378 (h!11779 (_ BitVec 16)) (t!81895 List!6388)) )
))
(declare-datatypes ((TokenValue!1321 0))(
  ( (FloatLiteralValue!2642 (text!9692 List!6388)) (TokenValueExt!1320 (__x!4542 Int)) (Broken!6605 (value!41802 List!6388)) (Object!1330) (End!1321) (Def!1321) (Underscore!1321) (Match!1321) (Else!1321) (Error!1321) (Case!1321) (If!1321) (Extends!1321) (Abstract!1321) (Class!1321) (Val!1321) (DelimiterValue!2642 (del!1381 List!6388)) (KeywordValue!1327 (value!41803 List!6388)) (CommentValue!2642 (value!41804 List!6388)) (WhitespaceValue!2642 (value!41805 List!6388)) (IndentationValue!1321 (value!41806 List!6388)) (String!8352) (Int32!1321) (Broken!6606 (value!41807 List!6388)) (Boolean!1322) (Unit!11471) (OperatorValue!1324 (op!1381 List!6388)) (IdentifierValue!2642 (value!41808 List!6388)) (IdentifierValue!2643 (value!41809 List!6388)) (WhitespaceValue!2643 (value!41810 List!6388)) (True!2642) (False!2642) (Broken!6607 (value!41811 List!6388)) (Broken!6608 (value!41812 List!6388)) (True!2643) (RightBrace!1321) (RightBracket!1321) (Colon!1321) (Null!1321) (Comma!1321) (LeftBracket!1321) (False!2643) (LeftBrace!1321) (ImaginaryLiteralValue!1321 (text!9693 List!6388)) (StringLiteralValue!3963 (value!41813 List!6388)) (EOFValue!1321 (value!41814 List!6388)) (IdentValue!1321 (value!41815 List!6388)) (DelimiterValue!2643 (value!41816 List!6388)) (DedentValue!1321 (value!41817 List!6388)) (NewLineValue!1321 (value!41818 List!6388)) (IntegerValue!3963 (value!41819 (_ BitVec 32)) (text!9694 List!6388)) (IntegerValue!3964 (value!41820 Int) (text!9695 List!6388)) (Times!1321) (Or!1321) (Equal!1321) (Minus!1321) (Broken!6609 (value!41821 List!6388)) (And!1321) (Div!1321) (LessEqual!1321) (Mod!1321) (Concat!2952) (Not!1321) (Plus!1321) (SpaceValue!1321 (value!41822 List!6388)) (IntegerValue!3965 (value!41823 Int) (text!9696 List!6388)) (StringLiteralValue!3964 (text!9697 List!6388)) (FloatLiteralValue!2643 (text!9698 List!6388)) (BytesLiteralValue!1321 (value!41824 List!6388)) (CommentValue!2643 (value!41825 List!6388)) (StringLiteralValue!3965 (value!41826 List!6388)) (ErrorTokenValue!1321 (msg!1382 List!6388)) )
))
(declare-datatypes ((C!4188 0))(
  ( (C!4189 (val!2320 Int)) )
))
(declare-datatypes ((List!6389 0))(
  ( (Nil!6379) (Cons!6379 (h!11780 C!4188) (t!81896 List!6389)) )
))
(declare-datatypes ((IArray!4071 0))(
  ( (IArray!4072 (innerList!2093 List!6389)) )
))
(declare-datatypes ((Conc!2035 0))(
  ( (Node!2035 (left!5057 Conc!2035) (right!5387 Conc!2035) (csize!4300 Int) (cheight!2246 Int)) (Leaf!3192 (xs!4672 IArray!4071) (csize!4301 Int)) (Empty!2035) )
))
(declare-datatypes ((BalanceConc!4078 0))(
  ( (BalanceConc!4079 (c!114405 Conc!2035)) )
))
(declare-datatypes ((TokenValueInjection!2410 0))(
  ( (TokenValueInjection!2411 (toValue!2222 Int) (toChars!2081 Int)) )
))
(declare-datatypes ((String!8353 0))(
  ( (String!8354 (value!41827 String)) )
))
(declare-datatypes ((Regex!1631 0))(
  ( (ElementMatch!1631 (c!114406 C!4188)) (Concat!2953 (regOne!3774 Regex!1631) (regTwo!3774 Regex!1631)) (EmptyExpr!1631) (Star!1631 (reg!1960 Regex!1631)) (EmptyLang!1631) (Union!1631 (regOne!3775 Regex!1631) (regTwo!3775 Regex!1631)) )
))
(declare-datatypes ((Rule!2394 0))(
  ( (Rule!2395 (regex!1297 Regex!1631) (tag!1559 String!8353) (isSeparator!1297 Bool) (transformation!1297 TokenValueInjection!2410)) )
))
(declare-datatypes ((Token!2318 0))(
  ( (Token!2319 (value!41828 TokenValue!1321) (rule!2093 Rule!2394) (size!4975 Int) (originalCharacters!1330 List!6389)) )
))
(declare-fun separatorToken!136 () Token!2318)

(assert (=> b!622312 (= res!270788 (and (<= from!852 lt!266180) (isSeparator!1297 (rule!2093 separatorToken!136)) (< from!852 lt!266180)))))

(declare-datatypes ((List!6390 0))(
  ( (Nil!6380) (Cons!6380 (h!11781 Token!2318) (t!81897 List!6390)) )
))
(declare-datatypes ((IArray!4073 0))(
  ( (IArray!4074 (innerList!2094 List!6390)) )
))
(declare-datatypes ((Conc!2036 0))(
  ( (Node!2036 (left!5058 Conc!2036) (right!5388 Conc!2036) (csize!4302 Int) (cheight!2247 Int)) (Leaf!3193 (xs!4673 IArray!4073) (csize!4303 Int)) (Empty!2036) )
))
(declare-datatypes ((BalanceConc!4080 0))(
  ( (BalanceConc!4081 (c!114407 Conc!2036)) )
))
(declare-fun v!6361 () BalanceConc!4080)

(declare-fun size!4976 (BalanceConc!4080) Int)

(assert (=> b!622312 (= lt!266180 (size!4976 v!6361))))

(declare-fun res!270789 () Bool)

(assert (=> start!59972 (=> (not res!270789) (not e!377786))))

(declare-datatypes ((LexerInterface!1185 0))(
  ( (LexerInterfaceExt!1182 (__x!4543 Int)) (Lexer!1183) )
))
(declare-fun thiss!14007 () LexerInterface!1185)

(get-info :version)

(assert (=> start!59972 (= res!270789 (and ((_ is Lexer!1183) thiss!14007) (>= from!852 0)))))

(assert (=> start!59972 e!377786))

(assert (=> start!59972 true))

(declare-fun e!377781 () Bool)

(declare-fun inv!8080 (BalanceConc!4080) Bool)

(assert (=> start!59972 (and (inv!8080 v!6361) e!377781)))

(declare-fun e!377785 () Bool)

(declare-fun inv!8081 (Token!2318) Bool)

(assert (=> start!59972 (and (inv!8081 separatorToken!136) e!377785)))

(declare-fun b!622313 () Bool)

(declare-fun tp!193270 () Bool)

(declare-fun inv!8082 (Conc!2036) Bool)

(assert (=> b!622313 (= e!377781 (and (inv!8082 (c!114407 v!6361)) tp!193270))))

(declare-fun b!622314 () Bool)

(declare-fun e!377784 () Bool)

(declare-fun tp!193271 () Bool)

(declare-fun inv!21 (TokenValue!1321) Bool)

(assert (=> b!622314 (= e!377785 (and (inv!21 (value!41828 separatorToken!136)) e!377784 tp!193271))))

(declare-fun e!377787 () Bool)

(declare-fun b!622315 () Bool)

(declare-fun tp!193268 () Bool)

(declare-fun inv!8075 (String!8353) Bool)

(declare-fun inv!8083 (TokenValueInjection!2410) Bool)

(assert (=> b!622315 (= e!377784 (and tp!193268 (inv!8075 (tag!1559 (rule!2093 separatorToken!136))) (inv!8083 (transformation!1297 (rule!2093 separatorToken!136))) e!377787))))

(assert (=> b!622316 (= e!377787 (and tp!193267 tp!193269))))

(declare-fun b!622317 () Bool)

(assert (=> b!622317 (= e!377783 (not true))))

(declare-fun lt!266179 () Int)

(declare-fun lt!266181 () List!6390)

(declare-fun size!4977 (List!6390) Int)

(assert (=> b!622317 (= lt!266179 (size!4977 lt!266181))))

(declare-fun head!1317 (List!6390) Token!2318)

(declare-fun drop!328 (List!6390 Int) List!6390)

(declare-fun apply!1513 (List!6390 Int) Token!2318)

(assert (=> b!622317 (= (head!1317 (drop!328 lt!266181 from!852)) (apply!1513 lt!266181 from!852))))

(declare-datatypes ((Unit!11472 0))(
  ( (Unit!11473) )
))
(declare-fun lt!266182 () Unit!11472)

(declare-fun lemmaDropApply!296 (List!6390 Int) Unit!11472)

(assert (=> b!622317 (= lt!266182 (lemmaDropApply!296 lt!266181 from!852))))

(declare-fun list!2677 (BalanceConc!4080) List!6390)

(assert (=> b!622317 (= lt!266181 (list!2677 v!6361))))

(assert (= (and start!59972 res!270789) b!622312))

(assert (= (and b!622312 res!270788) b!622317))

(assert (= start!59972 b!622313))

(assert (= b!622315 b!622316))

(assert (= b!622314 b!622315))

(assert (= start!59972 b!622314))

(declare-fun m!890461 () Bool)

(assert (=> b!622314 m!890461))

(declare-fun m!890463 () Bool)

(assert (=> b!622313 m!890463))

(declare-fun m!890465 () Bool)

(assert (=> b!622317 m!890465))

(declare-fun m!890467 () Bool)

(assert (=> b!622317 m!890467))

(declare-fun m!890469 () Bool)

(assert (=> b!622317 m!890469))

(declare-fun m!890471 () Bool)

(assert (=> b!622317 m!890471))

(declare-fun m!890473 () Bool)

(assert (=> b!622317 m!890473))

(assert (=> b!622317 m!890467))

(declare-fun m!890475 () Bool)

(assert (=> b!622317 m!890475))

(declare-fun m!890477 () Bool)

(assert (=> b!622315 m!890477))

(declare-fun m!890479 () Bool)

(assert (=> b!622315 m!890479))

(declare-fun m!890481 () Bool)

(assert (=> start!59972 m!890481))

(declare-fun m!890483 () Bool)

(assert (=> start!59972 m!890483))

(declare-fun m!890485 () Bool)

(assert (=> b!622312 m!890485))

(check-sat (not b_next!18207) (not b!622317) (not b_next!18205) b_and!61847 (not b!622313) (not start!59972) b_and!61849 (not b!622314) (not b!622312) (not b!622315))
(check-sat b_and!61847 b_and!61849 (not b_next!18207) (not b_next!18205))

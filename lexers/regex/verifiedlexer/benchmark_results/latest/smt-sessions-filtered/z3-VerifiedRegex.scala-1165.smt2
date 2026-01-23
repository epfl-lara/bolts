; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60324 () Bool)

(assert start!60324)

(declare-fun b!626176 () Bool)

(declare-fun b_free!18349 () Bool)

(declare-fun b_next!18365 () Bool)

(assert (=> b!626176 (= b_free!18349 (not b_next!18365))))

(declare-fun tp!195698 () Bool)

(declare-fun b_and!62123 () Bool)

(assert (=> b!626176 (= tp!195698 b_and!62123)))

(declare-fun b_free!18351 () Bool)

(declare-fun b_next!18367 () Bool)

(assert (=> b!626176 (= b_free!18351 (not b_next!18367))))

(declare-fun tp!195699 () Bool)

(declare-fun b_and!62125 () Bool)

(assert (=> b!626176 (= tp!195699 b_and!62125)))

(declare-fun res!271578 () Bool)

(declare-fun e!379812 () Bool)

(assert (=> start!60324 (=> (not res!271578) (not e!379812))))

(declare-datatypes ((LexerInterface!1203 0))(
  ( (LexerInterfaceExt!1200 (__x!4578 Int)) (Lexer!1201) )
))
(declare-fun thiss!14007 () LexerInterface!1203)

(declare-fun from!852 () Int)

(get-info :version)

(assert (=> start!60324 (= res!271578 (and ((_ is Lexer!1201) thiss!14007) (>= from!852 0)))))

(assert (=> start!60324 e!379812))

(assert (=> start!60324 true))

(declare-datatypes ((C!4224 0))(
  ( (C!4225 (val!2338 Int)) )
))
(declare-datatypes ((List!6442 0))(
  ( (Nil!6432) (Cons!6432 (h!11833 C!4224) (t!82361 List!6442)) )
))
(declare-datatypes ((IArray!4143 0))(
  ( (IArray!4144 (innerList!2129 List!6442)) )
))
(declare-datatypes ((Conc!2071 0))(
  ( (Node!2071 (left!5106 Conc!2071) (right!5436 Conc!2071) (csize!4372 Int) (cheight!2282 Int)) (Leaf!3237 (xs!4708 IArray!4143) (csize!4373 Int)) (Empty!2071) )
))
(declare-datatypes ((BalanceConc!4150 0))(
  ( (BalanceConc!4151 (c!114989 Conc!2071)) )
))
(declare-datatypes ((List!6443 0))(
  ( (Nil!6433) (Cons!6433 (h!11834 (_ BitVec 16)) (t!82362 List!6443)) )
))
(declare-datatypes ((TokenValue!1339 0))(
  ( (FloatLiteralValue!2678 (text!9818 List!6443)) (TokenValueExt!1338 (__x!4579 Int)) (Broken!6695 (value!42315 List!6443)) (Object!1348) (End!1339) (Def!1339) (Underscore!1339) (Match!1339) (Else!1339) (Error!1339) (Case!1339) (If!1339) (Extends!1339) (Abstract!1339) (Class!1339) (Val!1339) (DelimiterValue!2678 (del!1399 List!6443)) (KeywordValue!1345 (value!42316 List!6443)) (CommentValue!2678 (value!42317 List!6443)) (WhitespaceValue!2678 (value!42318 List!6443)) (IndentationValue!1339 (value!42319 List!6443)) (String!8442) (Int32!1339) (Broken!6696 (value!42320 List!6443)) (Boolean!1340) (Unit!11513) (OperatorValue!1342 (op!1399 List!6443)) (IdentifierValue!2678 (value!42321 List!6443)) (IdentifierValue!2679 (value!42322 List!6443)) (WhitespaceValue!2679 (value!42323 List!6443)) (True!2678) (False!2678) (Broken!6697 (value!42324 List!6443)) (Broken!6698 (value!42325 List!6443)) (True!2679) (RightBrace!1339) (RightBracket!1339) (Colon!1339) (Null!1339) (Comma!1339) (LeftBracket!1339) (False!2679) (LeftBrace!1339) (ImaginaryLiteralValue!1339 (text!9819 List!6443)) (StringLiteralValue!4017 (value!42326 List!6443)) (EOFValue!1339 (value!42327 List!6443)) (IdentValue!1339 (value!42328 List!6443)) (DelimiterValue!2679 (value!42329 List!6443)) (DedentValue!1339 (value!42330 List!6443)) (NewLineValue!1339 (value!42331 List!6443)) (IntegerValue!4017 (value!42332 (_ BitVec 32)) (text!9820 List!6443)) (IntegerValue!4018 (value!42333 Int) (text!9821 List!6443)) (Times!1339) (Or!1339) (Equal!1339) (Minus!1339) (Broken!6699 (value!42334 List!6443)) (And!1339) (Div!1339) (LessEqual!1339) (Mod!1339) (Concat!2988) (Not!1339) (Plus!1339) (SpaceValue!1339 (value!42335 List!6443)) (IntegerValue!4019 (value!42336 Int) (text!9822 List!6443)) (StringLiteralValue!4018 (text!9823 List!6443)) (FloatLiteralValue!2679 (text!9824 List!6443)) (BytesLiteralValue!1339 (value!42337 List!6443)) (CommentValue!2679 (value!42338 List!6443)) (StringLiteralValue!4019 (value!42339 List!6443)) (ErrorTokenValue!1339 (msg!1400 List!6443)) )
))
(declare-datatypes ((Regex!1649 0))(
  ( (ElementMatch!1649 (c!114990 C!4224)) (Concat!2989 (regOne!3810 Regex!1649) (regTwo!3810 Regex!1649)) (EmptyExpr!1649) (Star!1649 (reg!1978 Regex!1649)) (EmptyLang!1649) (Union!1649 (regOne!3811 Regex!1649) (regTwo!3811 Regex!1649)) )
))
(declare-datatypes ((String!8443 0))(
  ( (String!8444 (value!42340 String)) )
))
(declare-datatypes ((TokenValueInjection!2446 0))(
  ( (TokenValueInjection!2447 (toValue!2244 Int) (toChars!2103 Int)) )
))
(declare-datatypes ((Rule!2430 0))(
  ( (Rule!2431 (regex!1315 Regex!1649) (tag!1577 String!8443) (isSeparator!1315 Bool) (transformation!1315 TokenValueInjection!2446)) )
))
(declare-datatypes ((Token!2354 0))(
  ( (Token!2355 (value!42341 TokenValue!1339) (rule!2111 Rule!2430) (size!5030 Int) (originalCharacters!1348 List!6442)) )
))
(declare-datatypes ((List!6444 0))(
  ( (Nil!6434) (Cons!6434 (h!11835 Token!2354) (t!82363 List!6444)) )
))
(declare-datatypes ((IArray!4145 0))(
  ( (IArray!4146 (innerList!2130 List!6444)) )
))
(declare-datatypes ((Conc!2072 0))(
  ( (Node!2072 (left!5107 Conc!2072) (right!5437 Conc!2072) (csize!4374 Int) (cheight!2283 Int)) (Leaf!3238 (xs!4709 IArray!4145) (csize!4375 Int)) (Empty!2072) )
))
(declare-datatypes ((BalanceConc!4152 0))(
  ( (BalanceConc!4153 (c!114991 Conc!2072)) )
))
(declare-fun v!6361 () BalanceConc!4152)

(declare-fun e!379814 () Bool)

(declare-fun inv!8212 (BalanceConc!4152) Bool)

(assert (=> start!60324 (and (inv!8212 v!6361) e!379814)))

(declare-fun separatorToken!136 () Token!2354)

(declare-fun e!379811 () Bool)

(declare-fun inv!8213 (Token!2354) Bool)

(assert (=> start!60324 (and (inv!8213 separatorToken!136) e!379811)))

(declare-fun e!379815 () Bool)

(declare-fun tp!195697 () Bool)

(declare-fun e!379818 () Bool)

(declare-fun b!626172 () Bool)

(declare-fun inv!8207 (String!8443) Bool)

(declare-fun inv!8214 (TokenValueInjection!2446) Bool)

(assert (=> b!626172 (= e!379815 (and tp!195697 (inv!8207 (tag!1577 (rule!2111 separatorToken!136))) (inv!8214 (transformation!1315 (rule!2111 separatorToken!136))) e!379818))))

(declare-fun b!626173 () Bool)

(declare-fun e!379813 () Bool)

(assert (=> b!626173 (= e!379812 e!379813)))

(declare-fun res!271577 () Bool)

(assert (=> b!626173 (=> (not res!271577) (not e!379813))))

(declare-fun lt!266655 () Int)

(assert (=> b!626173 (= res!271577 (and (<= from!852 lt!266655) (isSeparator!1315 (rule!2111 separatorToken!136)) (< from!852 lt!266655)))))

(declare-fun size!5031 (BalanceConc!4152) Int)

(assert (=> b!626173 (= lt!266655 (size!5031 v!6361))))

(declare-fun b!626174 () Bool)

(assert (=> b!626174 (= e!379813 (not (< (- lt!266655 (+ 1 from!852)) (- lt!266655 from!852))))))

(declare-fun lt!266656 () BalanceConc!4150)

(declare-fun ++!1773 (BalanceConc!4150 BalanceConc!4150) BalanceConc!4150)

(declare-fun charsOf!900 (Token!2354) BalanceConc!4150)

(declare-fun apply!1532 (BalanceConc!4152 Int) Token!2354)

(assert (=> b!626174 (= lt!266656 (++!1773 (charsOf!900 (apply!1532 v!6361 from!852)) (charsOf!900 separatorToken!136)))))

(declare-fun lt!266659 () List!6444)

(declare-fun lt!266660 () List!6444)

(declare-fun tail!857 (List!6444) List!6444)

(declare-fun drop!342 (List!6444 Int) List!6444)

(assert (=> b!626174 (= (tail!857 lt!266659) (drop!342 lt!266660 (+ 1 from!852)))))

(declare-datatypes ((Unit!11514 0))(
  ( (Unit!11515) )
))
(declare-fun lt!266658 () Unit!11514)

(declare-fun lemmaDropTail!296 (List!6444 Int) Unit!11514)

(assert (=> b!626174 (= lt!266658 (lemmaDropTail!296 lt!266660 from!852))))

(declare-fun head!1329 (List!6444) Token!2354)

(declare-fun apply!1533 (List!6444 Int) Token!2354)

(assert (=> b!626174 (= (head!1329 lt!266659) (apply!1533 lt!266660 from!852))))

(assert (=> b!626174 (= lt!266659 (drop!342 lt!266660 from!852))))

(declare-fun lt!266657 () Unit!11514)

(declare-fun lemmaDropApply!308 (List!6444 Int) Unit!11514)

(assert (=> b!626174 (= lt!266657 (lemmaDropApply!308 lt!266660 from!852))))

(declare-fun list!2709 (BalanceConc!4152) List!6444)

(assert (=> b!626174 (= lt!266660 (list!2709 v!6361))))

(declare-fun b!626175 () Bool)

(declare-fun tp!195696 () Bool)

(declare-fun inv!21 (TokenValue!1339) Bool)

(assert (=> b!626175 (= e!379811 (and (inv!21 (value!42341 separatorToken!136)) e!379815 tp!195696))))

(assert (=> b!626176 (= e!379818 (and tp!195698 tp!195699))))

(declare-fun b!626177 () Bool)

(declare-fun tp!195695 () Bool)

(declare-fun inv!8215 (Conc!2072) Bool)

(assert (=> b!626177 (= e!379814 (and (inv!8215 (c!114991 v!6361)) tp!195695))))

(assert (= (and start!60324 res!271578) b!626173))

(assert (= (and b!626173 res!271577) b!626174))

(assert (= start!60324 b!626177))

(assert (= b!626172 b!626176))

(assert (= b!626175 b!626172))

(assert (= start!60324 b!626175))

(declare-fun m!894089 () Bool)

(assert (=> b!626173 m!894089))

(declare-fun m!894091 () Bool)

(assert (=> b!626174 m!894091))

(declare-fun m!894093 () Bool)

(assert (=> b!626174 m!894093))

(declare-fun m!894095 () Bool)

(assert (=> b!626174 m!894095))

(declare-fun m!894097 () Bool)

(assert (=> b!626174 m!894097))

(declare-fun m!894099 () Bool)

(assert (=> b!626174 m!894099))

(declare-fun m!894101 () Bool)

(assert (=> b!626174 m!894101))

(declare-fun m!894103 () Bool)

(assert (=> b!626174 m!894103))

(declare-fun m!894105 () Bool)

(assert (=> b!626174 m!894105))

(declare-fun m!894107 () Bool)

(assert (=> b!626174 m!894107))

(declare-fun m!894109 () Bool)

(assert (=> b!626174 m!894109))

(assert (=> b!626174 m!894107))

(assert (=> b!626174 m!894097))

(declare-fun m!894111 () Bool)

(assert (=> b!626174 m!894111))

(declare-fun m!894113 () Bool)

(assert (=> b!626174 m!894113))

(assert (=> b!626174 m!894105))

(declare-fun m!894115 () Bool)

(assert (=> b!626177 m!894115))

(declare-fun m!894117 () Bool)

(assert (=> b!626172 m!894117))

(declare-fun m!894119 () Bool)

(assert (=> b!626172 m!894119))

(declare-fun m!894121 () Bool)

(assert (=> b!626175 m!894121))

(declare-fun m!894123 () Bool)

(assert (=> start!60324 m!894123))

(declare-fun m!894125 () Bool)

(assert (=> start!60324 m!894125))

(check-sat (not b!626174) (not start!60324) b_and!62125 b_and!62123 (not b!626172) (not b_next!18365) (not b!626177) (not b!626175) (not b!626173) (not b_next!18367))
(check-sat b_and!62123 b_and!62125 (not b_next!18367) (not b_next!18365))

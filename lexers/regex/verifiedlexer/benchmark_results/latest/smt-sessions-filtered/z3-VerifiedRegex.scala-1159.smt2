; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59984 () Bool)

(assert start!59984)

(declare-fun b!622423 () Bool)

(declare-fun b_free!18213 () Bool)

(declare-fun b_next!18229 () Bool)

(assert (=> b!622423 (= b_free!18213 (not b_next!18229))))

(declare-fun tp!193361 () Bool)

(declare-fun b_and!61871 () Bool)

(assert (=> b!622423 (= tp!193361 b_and!61871)))

(declare-fun b_free!18215 () Bool)

(declare-fun b_next!18231 () Bool)

(assert (=> b!622423 (= b_free!18215 (not b_next!18231))))

(declare-fun tp!193359 () Bool)

(declare-fun b_and!61873 () Bool)

(assert (=> b!622423 (= tp!193359 b_and!61873)))

(declare-fun e!377930 () Bool)

(declare-datatypes ((List!6406 0))(
  ( (Nil!6396) (Cons!6396 (h!11797 (_ BitVec 16)) (t!81913 List!6406)) )
))
(declare-datatypes ((TokenValue!1327 0))(
  ( (FloatLiteralValue!2654 (text!9734 List!6406)) (TokenValueExt!1326 (__x!4554 Int)) (Broken!6635 (value!41973 List!6406)) (Object!1336) (End!1327) (Def!1327) (Underscore!1327) (Match!1327) (Else!1327) (Error!1327) (Case!1327) (If!1327) (Extends!1327) (Abstract!1327) (Class!1327) (Val!1327) (DelimiterValue!2654 (del!1387 List!6406)) (KeywordValue!1333 (value!41974 List!6406)) (CommentValue!2654 (value!41975 List!6406)) (WhitespaceValue!2654 (value!41976 List!6406)) (IndentationValue!1327 (value!41977 List!6406)) (String!8382) (Int32!1327) (Broken!6636 (value!41978 List!6406)) (Boolean!1328) (Unit!11489) (OperatorValue!1330 (op!1387 List!6406)) (IdentifierValue!2654 (value!41979 List!6406)) (IdentifierValue!2655 (value!41980 List!6406)) (WhitespaceValue!2655 (value!41981 List!6406)) (True!2654) (False!2654) (Broken!6637 (value!41982 List!6406)) (Broken!6638 (value!41983 List!6406)) (True!2655) (RightBrace!1327) (RightBracket!1327) (Colon!1327) (Null!1327) (Comma!1327) (LeftBracket!1327) (False!2655) (LeftBrace!1327) (ImaginaryLiteralValue!1327 (text!9735 List!6406)) (StringLiteralValue!3981 (value!41984 List!6406)) (EOFValue!1327 (value!41985 List!6406)) (IdentValue!1327 (value!41986 List!6406)) (DelimiterValue!2655 (value!41987 List!6406)) (DedentValue!1327 (value!41988 List!6406)) (NewLineValue!1327 (value!41989 List!6406)) (IntegerValue!3981 (value!41990 (_ BitVec 32)) (text!9736 List!6406)) (IntegerValue!3982 (value!41991 Int) (text!9737 List!6406)) (Times!1327) (Or!1327) (Equal!1327) (Minus!1327) (Broken!6639 (value!41992 List!6406)) (And!1327) (Div!1327) (LessEqual!1327) (Mod!1327) (Concat!2964) (Not!1327) (Plus!1327) (SpaceValue!1327 (value!41993 List!6406)) (IntegerValue!3983 (value!41994 Int) (text!9738 List!6406)) (StringLiteralValue!3982 (text!9739 List!6406)) (FloatLiteralValue!2655 (text!9740 List!6406)) (BytesLiteralValue!1327 (value!41995 List!6406)) (CommentValue!2655 (value!41996 List!6406)) (StringLiteralValue!3983 (value!41997 List!6406)) (ErrorTokenValue!1327 (msg!1388 List!6406)) )
))
(declare-datatypes ((C!4200 0))(
  ( (C!4201 (val!2326 Int)) )
))
(declare-datatypes ((List!6407 0))(
  ( (Nil!6397) (Cons!6397 (h!11798 C!4200) (t!81914 List!6407)) )
))
(declare-datatypes ((String!8383 0))(
  ( (String!8384 (value!41998 String)) )
))
(declare-datatypes ((IArray!4095 0))(
  ( (IArray!4096 (innerList!2105 List!6407)) )
))
(declare-datatypes ((Conc!2047 0))(
  ( (Node!2047 (left!5072 Conc!2047) (right!5402 Conc!2047) (csize!4324 Int) (cheight!2258 Int)) (Leaf!3207 (xs!4684 IArray!4095) (csize!4325 Int)) (Empty!2047) )
))
(declare-datatypes ((BalanceConc!4102 0))(
  ( (BalanceConc!4103 (c!114423 Conc!2047)) )
))
(declare-datatypes ((TokenValueInjection!2422 0))(
  ( (TokenValueInjection!2423 (toValue!2228 Int) (toChars!2087 Int)) )
))
(declare-datatypes ((Regex!1637 0))(
  ( (ElementMatch!1637 (c!114424 C!4200)) (Concat!2965 (regOne!3786 Regex!1637) (regTwo!3786 Regex!1637)) (EmptyExpr!1637) (Star!1637 (reg!1966 Regex!1637)) (EmptyLang!1637) (Union!1637 (regOne!3787 Regex!1637) (regTwo!3787 Regex!1637)) )
))
(declare-datatypes ((Rule!2406 0))(
  ( (Rule!2407 (regex!1303 Regex!1637) (tag!1565 String!8383) (isSeparator!1303 Bool) (transformation!1303 TokenValueInjection!2422)) )
))
(declare-datatypes ((Token!2330 0))(
  ( (Token!2331 (value!41999 TokenValue!1327) (rule!2099 Rule!2406) (size!4988 Int) (originalCharacters!1336 List!6407)) )
))
(declare-fun separatorToken!136 () Token!2330)

(declare-fun b!622420 () Bool)

(declare-fun e!377931 () Bool)

(declare-fun tp!193358 () Bool)

(declare-fun inv!21 (TokenValue!1327) Bool)

(assert (=> b!622420 (= e!377930 (and (inv!21 (value!41999 separatorToken!136)) e!377931 tp!193358))))

(declare-fun e!377932 () Bool)

(declare-fun b!622421 () Bool)

(declare-fun tp!193360 () Bool)

(declare-fun inv!8108 (String!8383) Bool)

(declare-fun inv!8113 (TokenValueInjection!2422) Bool)

(assert (=> b!622421 (= e!377931 (and tp!193360 (inv!8108 (tag!1565 (rule!2099 separatorToken!136))) (inv!8113 (transformation!1303 (rule!2099 separatorToken!136))) e!377932))))

(declare-fun res!270825 () Bool)

(declare-fun e!377926 () Bool)

(assert (=> start!59984 (=> (not res!270825) (not e!377926))))

(declare-datatypes ((LexerInterface!1191 0))(
  ( (LexerInterfaceExt!1188 (__x!4555 Int)) (Lexer!1189) )
))
(declare-fun thiss!14007 () LexerInterface!1191)

(declare-fun from!852 () Int)

(get-info :version)

(assert (=> start!59984 (= res!270825 (and ((_ is Lexer!1189) thiss!14007) (>= from!852 0)))))

(assert (=> start!59984 e!377926))

(assert (=> start!59984 true))

(declare-datatypes ((List!6408 0))(
  ( (Nil!6398) (Cons!6398 (h!11799 Token!2330) (t!81915 List!6408)) )
))
(declare-datatypes ((IArray!4097 0))(
  ( (IArray!4098 (innerList!2106 List!6408)) )
))
(declare-datatypes ((Conc!2048 0))(
  ( (Node!2048 (left!5073 Conc!2048) (right!5403 Conc!2048) (csize!4326 Int) (cheight!2259 Int)) (Leaf!3208 (xs!4685 IArray!4097) (csize!4327 Int)) (Empty!2048) )
))
(declare-datatypes ((BalanceConc!4104 0))(
  ( (BalanceConc!4105 (c!114425 Conc!2048)) )
))
(declare-fun v!6361 () BalanceConc!4104)

(declare-fun e!377927 () Bool)

(declare-fun inv!8114 (BalanceConc!4104) Bool)

(assert (=> start!59984 (and (inv!8114 v!6361) e!377927)))

(declare-fun inv!8115 (Token!2330) Bool)

(assert (=> start!59984 (and (inv!8115 separatorToken!136) e!377930)))

(declare-fun b!622422 () Bool)

(declare-fun e!377929 () Bool)

(declare-fun lt!266282 () Int)

(assert (=> b!622422 (= e!377929 (not (and (>= (+ 1 from!852) 0) (<= (+ 1 from!852) lt!266282))))))

(declare-fun lt!266283 () BalanceConc!4102)

(declare-fun ++!1765 (BalanceConc!4102 BalanceConc!4102) BalanceConc!4102)

(declare-fun charsOf!894 (Token!2330) BalanceConc!4102)

(declare-fun apply!1522 (BalanceConc!4104 Int) Token!2330)

(assert (=> b!622422 (= lt!266283 (++!1765 (charsOf!894 (apply!1522 v!6361 from!852)) (charsOf!894 separatorToken!136)))))

(declare-fun lt!266281 () List!6408)

(declare-fun lt!266280 () List!6408)

(declare-fun tail!852 (List!6408) List!6408)

(declare-fun drop!334 (List!6408 Int) List!6408)

(assert (=> b!622422 (= (tail!852 lt!266281) (drop!334 lt!266280 (+ 1 from!852)))))

(declare-datatypes ((Unit!11490 0))(
  ( (Unit!11491) )
))
(declare-fun lt!266284 () Unit!11490)

(declare-fun lemmaDropTail!292 (List!6408 Int) Unit!11490)

(assert (=> b!622422 (= lt!266284 (lemmaDropTail!292 lt!266280 from!852))))

(declare-fun head!1323 (List!6408) Token!2330)

(declare-fun apply!1523 (List!6408 Int) Token!2330)

(assert (=> b!622422 (= (head!1323 lt!266281) (apply!1523 lt!266280 from!852))))

(assert (=> b!622422 (= lt!266281 (drop!334 lt!266280 from!852))))

(declare-fun lt!266279 () Unit!11490)

(declare-fun lemmaDropApply!302 (List!6408 Int) Unit!11490)

(assert (=> b!622422 (= lt!266279 (lemmaDropApply!302 lt!266280 from!852))))

(declare-fun list!2683 (BalanceConc!4104) List!6408)

(assert (=> b!622422 (= lt!266280 (list!2683 v!6361))))

(assert (=> b!622423 (= e!377932 (and tp!193361 tp!193359))))

(declare-fun b!622424 () Bool)

(declare-fun tp!193357 () Bool)

(declare-fun inv!8116 (Conc!2048) Bool)

(assert (=> b!622424 (= e!377927 (and (inv!8116 (c!114425 v!6361)) tp!193357))))

(declare-fun b!622425 () Bool)

(assert (=> b!622425 (= e!377926 e!377929)))

(declare-fun res!270824 () Bool)

(assert (=> b!622425 (=> (not res!270824) (not e!377929))))

(assert (=> b!622425 (= res!270824 (and (<= from!852 lt!266282) (isSeparator!1303 (rule!2099 separatorToken!136)) (< from!852 lt!266282)))))

(declare-fun size!4989 (BalanceConc!4104) Int)

(assert (=> b!622425 (= lt!266282 (size!4989 v!6361))))

(assert (= (and start!59984 res!270825) b!622425))

(assert (= (and b!622425 res!270824) b!622422))

(assert (= start!59984 b!622424))

(assert (= b!622421 b!622423))

(assert (= b!622420 b!622421))

(assert (= start!59984 b!622420))

(declare-fun m!890661 () Bool)

(assert (=> b!622420 m!890661))

(declare-fun m!890663 () Bool)

(assert (=> b!622424 m!890663))

(declare-fun m!890665 () Bool)

(assert (=> b!622425 m!890665))

(declare-fun m!890667 () Bool)

(assert (=> b!622421 m!890667))

(declare-fun m!890669 () Bool)

(assert (=> b!622421 m!890669))

(declare-fun m!890671 () Bool)

(assert (=> b!622422 m!890671))

(declare-fun m!890673 () Bool)

(assert (=> b!622422 m!890673))

(declare-fun m!890675 () Bool)

(assert (=> b!622422 m!890675))

(declare-fun m!890677 () Bool)

(assert (=> b!622422 m!890677))

(declare-fun m!890679 () Bool)

(assert (=> b!622422 m!890679))

(declare-fun m!890681 () Bool)

(assert (=> b!622422 m!890681))

(declare-fun m!890683 () Bool)

(assert (=> b!622422 m!890683))

(declare-fun m!890685 () Bool)

(assert (=> b!622422 m!890685))

(assert (=> b!622422 m!890675))

(declare-fun m!890687 () Bool)

(assert (=> b!622422 m!890687))

(declare-fun m!890689 () Bool)

(assert (=> b!622422 m!890689))

(declare-fun m!890691 () Bool)

(assert (=> b!622422 m!890691))

(declare-fun m!890693 () Bool)

(assert (=> b!622422 m!890693))

(assert (=> b!622422 m!890673))

(assert (=> b!622422 m!890693))

(declare-fun m!890695 () Bool)

(assert (=> start!59984 m!890695))

(declare-fun m!890697 () Bool)

(assert (=> start!59984 m!890697))

(check-sat b_and!61873 (not b!622421) (not b_next!18229) (not b!622424) (not b!622425) (not start!59984) (not b!622422) b_and!61871 (not b!622420) (not b_next!18231))
(check-sat b_and!61871 b_and!61873 (not b_next!18231) (not b_next!18229))

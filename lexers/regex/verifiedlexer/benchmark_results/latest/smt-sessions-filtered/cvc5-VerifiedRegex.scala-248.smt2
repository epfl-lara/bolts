; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!3736 () Bool)

(assert start!3736)

(declare-fun b!51493 () Bool)

(declare-fun b_free!1633 () Bool)

(declare-fun b_next!1633 () Bool)

(assert (=> b!51493 (= b_free!1633 (not b_next!1633))))

(declare-fun tp!33778 () Bool)

(declare-fun b_and!1683 () Bool)

(assert (=> b!51493 (= tp!33778 b_and!1683)))

(declare-fun b_free!1635 () Bool)

(declare-fun b_next!1635 () Bool)

(assert (=> b!51493 (= b_free!1635 (not b_next!1635))))

(declare-fun tp!33777 () Bool)

(declare-fun b_and!1685 () Bool)

(assert (=> b!51493 (= tp!33777 b_and!1685)))

(declare-fun e!30251 () Bool)

(declare-fun e!30255 () Bool)

(declare-fun b!51485 () Bool)

(declare-fun tp!33779 () Bool)

(declare-datatypes ((List!1052 0))(
  ( (Nil!1046) (Cons!1046 (h!6443 (_ BitVec 16)) (t!17271 List!1052)) )
))
(declare-datatypes ((TokenValue!216 0))(
  ( (FloatLiteralValue!432 (text!1957 List!1052)) (TokenValueExt!215 (__x!1527 Int)) (Broken!1080 (value!9314 List!1052)) (Object!221) (End!216) (Def!216) (Underscore!216) (Match!216) (Else!216) (Error!216) (Case!216) (If!216) (Extends!216) (Abstract!216) (Class!216) (Val!216) (DelimiterValue!432 (del!276 List!1052)) (KeywordValue!222 (value!9315 List!1052)) (CommentValue!432 (value!9316 List!1052)) (WhitespaceValue!432 (value!9317 List!1052)) (IndentationValue!216 (value!9318 List!1052)) (String!1473) (Int32!216) (Broken!1081 (value!9319 List!1052)) (Boolean!217) (Unit!594) (OperatorValue!219 (op!276 List!1052)) (IdentifierValue!432 (value!9320 List!1052)) (IdentifierValue!433 (value!9321 List!1052)) (WhitespaceValue!433 (value!9322 List!1052)) (True!432) (False!432) (Broken!1082 (value!9323 List!1052)) (Broken!1083 (value!9324 List!1052)) (True!433) (RightBrace!216) (RightBracket!216) (Colon!216) (Null!216) (Comma!216) (LeftBracket!216) (False!433) (LeftBrace!216) (ImaginaryLiteralValue!216 (text!1958 List!1052)) (StringLiteralValue!648 (value!9325 List!1052)) (EOFValue!216 (value!9326 List!1052)) (IdentValue!216 (value!9327 List!1052)) (DelimiterValue!433 (value!9328 List!1052)) (DedentValue!216 (value!9329 List!1052)) (NewLineValue!216 (value!9330 List!1052)) (IntegerValue!648 (value!9331 (_ BitVec 32)) (text!1959 List!1052)) (IntegerValue!649 (value!9332 Int) (text!1960 List!1052)) (Times!216) (Or!216) (Equal!216) (Minus!216) (Broken!1084 (value!9333 List!1052)) (And!216) (Div!216) (LessEqual!216) (Mod!216) (Concat!510) (Not!216) (Plus!216) (SpaceValue!216 (value!9334 List!1052)) (IntegerValue!650 (value!9335 Int) (text!1961 List!1052)) (StringLiteralValue!649 (text!1962 List!1052)) (FloatLiteralValue!433 (text!1963 List!1052)) (BytesLiteralValue!216 (value!9336 List!1052)) (CommentValue!433 (value!9337 List!1052)) (StringLiteralValue!650 (value!9338 List!1052)) (ErrorTokenValue!216 (msg!277 List!1052)) )
))
(declare-datatypes ((C!1510 0))(
  ( (C!1511 (val!362 Int)) )
))
(declare-datatypes ((List!1053 0))(
  ( (Nil!1047) (Cons!1047 (h!6444 C!1510) (t!17272 List!1053)) )
))
(declare-datatypes ((IArray!513 0))(
  ( (IArray!514 (innerList!314 List!1053)) )
))
(declare-datatypes ((Conc!256 0))(
  ( (Node!256 (left!786 Conc!256) (right!1116 Conc!256) (csize!742 Int) (cheight!467 Int)) (Leaf!505 (xs!2835 IArray!513) (csize!743 Int)) (Empty!256) )
))
(declare-datatypes ((BalanceConc!516 0))(
  ( (BalanceConc!517 (c!16720 Conc!256)) )
))
(declare-datatypes ((Regex!294 0))(
  ( (ElementMatch!294 (c!16721 C!1510)) (Concat!511 (regOne!1100 Regex!294) (regTwo!1100 Regex!294)) (EmptyExpr!294) (Star!294 (reg!623 Regex!294)) (EmptyLang!294) (Union!294 (regOne!1101 Regex!294) (regTwo!1101 Regex!294)) )
))
(declare-datatypes ((String!1474 0))(
  ( (String!1475 (value!9339 String)) )
))
(declare-datatypes ((TokenValueInjection!256 0))(
  ( (TokenValueInjection!257 (toValue!705 Int) (toChars!564 Int)) )
))
(declare-datatypes ((Rule!252 0))(
  ( (Rule!253 (regex!226 Regex!294) (tag!404 String!1474) (isSeparator!226 Bool) (transformation!226 TokenValueInjection!256)) )
))
(declare-datatypes ((List!1054 0))(
  ( (Nil!1048) (Cons!1048 (h!6445 Rule!252) (t!17273 List!1054)) )
))
(declare-fun rules!1069 () List!1054)

(declare-fun inv!1376 (String!1474) Bool)

(declare-fun inv!1379 (TokenValueInjection!256) Bool)

(assert (=> b!51485 (= e!30255 (and tp!33779 (inv!1376 (tag!404 (h!6445 rules!1069))) (inv!1379 (transformation!226 (h!6445 rules!1069))) e!30251))))

(declare-fun b!51486 () Bool)

(declare-fun res!33757 () Bool)

(declare-fun e!30250 () Bool)

(assert (=> b!51486 (=> (not res!33757) (not e!30250))))

(declare-datatypes ((LexerInterface!118 0))(
  ( (LexerInterfaceExt!115 (__x!1528 Int)) (Lexer!116) )
))
(declare-fun thiss!11059 () LexerInterface!118)

(declare-datatypes ((Token!216 0))(
  ( (Token!217 (value!9340 TokenValue!216) (rule!701 Rule!252) (size!963 Int) (originalCharacters!279 List!1053)) )
))
(declare-datatypes ((List!1055 0))(
  ( (Nil!1049) (Cons!1049 (h!6446 Token!216) (t!17274 List!1055)) )
))
(declare-datatypes ((IArray!515 0))(
  ( (IArray!516 (innerList!315 List!1055)) )
))
(declare-datatypes ((Conc!257 0))(
  ( (Node!257 (left!787 Conc!257) (right!1117 Conc!257) (csize!744 Int) (cheight!468 Int)) (Leaf!506 (xs!2836 IArray!515) (csize!745 Int)) (Empty!257) )
))
(declare-datatypes ((BalanceConc!518 0))(
  ( (BalanceConc!519 (c!16722 Conc!257)) )
))
(declare-fun v!6227 () BalanceConc!518)

(declare-fun rulesProduceEachTokenIndividually!56 (LexerInterface!118 List!1054 BalanceConc!518) Bool)

(assert (=> b!51486 (= res!33757 (rulesProduceEachTokenIndividually!56 thiss!11059 rules!1069 v!6227))))

(declare-fun b!51487 () Bool)

(declare-fun e!30252 () Bool)

(declare-fun tp!33776 () Bool)

(assert (=> b!51487 (= e!30252 (and e!30255 tp!33776))))

(declare-fun b!51488 () Bool)

(declare-fun res!33758 () Bool)

(assert (=> b!51488 (=> (not res!33758) (not e!30250))))

(declare-fun from!821 () Int)

(declare-fun lt!9092 () Int)

(assert (=> b!51488 (= res!33758 (< from!821 (- lt!9092 1)))))

(declare-fun b!51489 () Bool)

(declare-fun e!30253 () Bool)

(declare-fun lt!9090 () List!1055)

(declare-fun lt!9089 () Token!216)

(declare-fun contains!114 (List!1055 Token!216) Bool)

(assert (=> b!51489 (= e!30253 (contains!114 lt!9090 lt!9089))))

(declare-fun b!51490 () Bool)

(assert (=> b!51490 (= e!30250 (not e!30253))))

(declare-fun res!33760 () Bool)

(assert (=> b!51490 (=> res!33760 e!30253)))

(declare-fun contains!115 (BalanceConc!518 Token!216) Bool)

(assert (=> b!51490 (= res!33760 (not (contains!115 v!6227 lt!9089)))))

(declare-fun apply!99 (BalanceConc!518 Int) Token!216)

(assert (=> b!51490 (= lt!9089 (apply!99 v!6227 from!821))))

(declare-fun lt!9087 () List!1055)

(declare-fun tail!66 (List!1055) List!1055)

(declare-fun drop!41 (List!1055 Int) List!1055)

(assert (=> b!51490 (= (tail!66 lt!9087) (drop!41 lt!9090 (+ 2 from!821)))))

(declare-datatypes ((Unit!595 0))(
  ( (Unit!596) )
))
(declare-fun lt!9085 () Unit!595)

(declare-fun lemmaDropTail!37 (List!1055 Int) Unit!595)

(assert (=> b!51490 (= lt!9085 (lemmaDropTail!37 lt!9090 (+ 1 from!821)))))

(declare-fun lt!9091 () List!1055)

(assert (=> b!51490 (= (tail!66 lt!9091) lt!9087)))

(declare-fun lt!9086 () Unit!595)

(assert (=> b!51490 (= lt!9086 (lemmaDropTail!37 lt!9090 from!821))))

(declare-fun head!381 (List!1055) Token!216)

(declare-fun apply!100 (List!1055 Int) Token!216)

(assert (=> b!51490 (= (head!381 lt!9087) (apply!100 lt!9090 (+ 1 from!821)))))

(assert (=> b!51490 (= lt!9087 (drop!41 lt!9090 (+ 1 from!821)))))

(declare-fun lt!9088 () Unit!595)

(declare-fun lemmaDropApply!41 (List!1055 Int) Unit!595)

(assert (=> b!51490 (= lt!9088 (lemmaDropApply!41 lt!9090 (+ 1 from!821)))))

(assert (=> b!51490 (= (head!381 lt!9091) (apply!100 lt!9090 from!821))))

(assert (=> b!51490 (= lt!9091 (drop!41 lt!9090 from!821))))

(declare-fun lt!9093 () Unit!595)

(assert (=> b!51490 (= lt!9093 (lemmaDropApply!41 lt!9090 from!821))))

(declare-fun list!266 (BalanceConc!518) List!1055)

(assert (=> b!51490 (= lt!9090 (list!266 v!6227))))

(declare-fun b!51491 () Bool)

(declare-fun e!30256 () Bool)

(declare-fun tp!33775 () Bool)

(declare-fun inv!1380 (Conc!257) Bool)

(assert (=> b!51491 (= e!30256 (and (inv!1380 (c!16722 v!6227)) tp!33775))))

(declare-fun res!33761 () Bool)

(declare-fun e!30254 () Bool)

(assert (=> start!3736 (=> (not res!33761) (not e!30254))))

(assert (=> start!3736 (= res!33761 (and (is-Lexer!116 thiss!11059) (>= from!821 0)))))

(assert (=> start!3736 e!30254))

(assert (=> start!3736 true))

(declare-fun inv!1381 (BalanceConc!518) Bool)

(assert (=> start!3736 (and (inv!1381 v!6227) e!30256)))

(assert (=> start!3736 e!30252))

(declare-fun b!51492 () Bool)

(declare-fun res!33763 () Bool)

(assert (=> b!51492 (=> (not res!33763) (not e!30250))))

(declare-fun isEmpty!212 (List!1054) Bool)

(assert (=> b!51492 (= res!33763 (not (isEmpty!212 rules!1069)))))

(assert (=> b!51493 (= e!30251 (and tp!33778 tp!33777))))

(declare-fun b!51494 () Bool)

(declare-fun res!33759 () Bool)

(assert (=> b!51494 (=> (not res!33759) (not e!30250))))

(declare-fun rulesInvariant!112 (LexerInterface!118 List!1054) Bool)

(assert (=> b!51494 (= res!33759 (rulesInvariant!112 thiss!11059 rules!1069))))

(declare-fun b!51495 () Bool)

(assert (=> b!51495 (= e!30254 e!30250)))

(declare-fun res!33762 () Bool)

(assert (=> b!51495 (=> (not res!33762) (not e!30250))))

(assert (=> b!51495 (= res!33762 (<= from!821 lt!9092))))

(declare-fun size!964 (BalanceConc!518) Int)

(assert (=> b!51495 (= lt!9092 (size!964 v!6227))))

(assert (= (and start!3736 res!33761) b!51495))

(assert (= (and b!51495 res!33762) b!51492))

(assert (= (and b!51492 res!33763) b!51494))

(assert (= (and b!51494 res!33759) b!51486))

(assert (= (and b!51486 res!33757) b!51488))

(assert (= (and b!51488 res!33758) b!51490))

(assert (= (and b!51490 (not res!33760)) b!51489))

(assert (= start!3736 b!51491))

(assert (= b!51485 b!51493))

(assert (= b!51487 b!51485))

(assert (= (and start!3736 (is-Cons!1048 rules!1069)) b!51487))

(declare-fun m!25858 () Bool)

(assert (=> b!51495 m!25858))

(declare-fun m!25860 () Bool)

(assert (=> b!51485 m!25860))

(declare-fun m!25862 () Bool)

(assert (=> b!51485 m!25862))

(declare-fun m!25864 () Bool)

(assert (=> b!51492 m!25864))

(declare-fun m!25866 () Bool)

(assert (=> b!51491 m!25866))

(declare-fun m!25868 () Bool)

(assert (=> b!51494 m!25868))

(declare-fun m!25870 () Bool)

(assert (=> b!51489 m!25870))

(declare-fun m!25872 () Bool)

(assert (=> start!3736 m!25872))

(declare-fun m!25874 () Bool)

(assert (=> b!51486 m!25874))

(declare-fun m!25876 () Bool)

(assert (=> b!51490 m!25876))

(declare-fun m!25878 () Bool)

(assert (=> b!51490 m!25878))

(declare-fun m!25880 () Bool)

(assert (=> b!51490 m!25880))

(declare-fun m!25882 () Bool)

(assert (=> b!51490 m!25882))

(declare-fun m!25884 () Bool)

(assert (=> b!51490 m!25884))

(declare-fun m!25886 () Bool)

(assert (=> b!51490 m!25886))

(declare-fun m!25888 () Bool)

(assert (=> b!51490 m!25888))

(declare-fun m!25890 () Bool)

(assert (=> b!51490 m!25890))

(declare-fun m!25892 () Bool)

(assert (=> b!51490 m!25892))

(declare-fun m!25894 () Bool)

(assert (=> b!51490 m!25894))

(declare-fun m!25896 () Bool)

(assert (=> b!51490 m!25896))

(declare-fun m!25898 () Bool)

(assert (=> b!51490 m!25898))

(declare-fun m!25900 () Bool)

(assert (=> b!51490 m!25900))

(declare-fun m!25902 () Bool)

(assert (=> b!51490 m!25902))

(declare-fun m!25904 () Bool)

(assert (=> b!51490 m!25904))

(declare-fun m!25906 () Bool)

(assert (=> b!51490 m!25906))

(push 1)

(assert (not b!51486))

(assert (not b!51487))

(assert (not b!51490))

(assert (not b_next!1635))

(assert b_and!1685)

(assert (not b!51485))

(assert (not start!3736))

(assert (not b!51492))

(assert (not b!51489))

(assert b_and!1683)

(assert (not b!51491))

(assert (not b!51495))

(assert (not b!51494))

(assert (not b_next!1633))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1685)

(assert b_and!1683)

(assert (not b_next!1633))

(assert (not b_next!1635))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6153 () Bool)

(declare-fun res!33789 () Bool)

(declare-fun e!30284 () Bool)

(assert (=> d!6153 (=> (not res!33789) (not e!30284))))

(declare-fun rulesValid!26 (LexerInterface!118 List!1054) Bool)

(assert (=> d!6153 (= res!33789 (rulesValid!26 thiss!11059 rules!1069))))

(assert (=> d!6153 (= (rulesInvariant!112 thiss!11059 rules!1069) e!30284)))

(declare-fun b!51531 () Bool)

(declare-datatypes ((List!1060 0))(
  ( (Nil!1054) (Cons!1054 (h!6451 String!1474) (t!17285 List!1060)) )
))
(declare-fun noDuplicateTag!26 (LexerInterface!118 List!1054 List!1060) Bool)

(assert (=> b!51531 (= e!30284 (noDuplicateTag!26 thiss!11059 rules!1069 Nil!1054))))

(assert (= (and d!6153 res!33789) b!51531))

(declare-fun m!25958 () Bool)

(assert (=> d!6153 m!25958))

(declare-fun m!25960 () Bool)

(assert (=> b!51531 m!25960))

(assert (=> b!51494 d!6153))

(declare-fun d!6155 () Bool)

(declare-fun lt!9123 () Bool)

(declare-fun content!26 (List!1055) (Set Token!216))

(assert (=> d!6155 (= lt!9123 (set.member lt!9089 (content!26 lt!9090)))))

(declare-fun e!30289 () Bool)

(assert (=> d!6155 (= lt!9123 e!30289)))

(declare-fun res!33795 () Bool)

(assert (=> d!6155 (=> (not res!33795) (not e!30289))))

(assert (=> d!6155 (= res!33795 (is-Cons!1049 lt!9090))))

(assert (=> d!6155 (= (contains!114 lt!9090 lt!9089) lt!9123)))

(declare-fun b!51536 () Bool)

(declare-fun e!30290 () Bool)

(assert (=> b!51536 (= e!30289 e!30290)))

(declare-fun res!33794 () Bool)

(assert (=> b!51536 (=> res!33794 e!30290)))

(assert (=> b!51536 (= res!33794 (= (h!6446 lt!9090) lt!9089))))

(declare-fun b!51537 () Bool)

(assert (=> b!51537 (= e!30290 (contains!114 (t!17274 lt!9090) lt!9089))))

(assert (= (and d!6155 res!33795) b!51536))

(assert (= (and b!51536 (not res!33794)) b!51537))

(declare-fun m!25962 () Bool)

(assert (=> d!6155 m!25962))

(declare-fun m!25964 () Bool)

(assert (=> d!6155 m!25964))

(declare-fun m!25966 () Bool)

(assert (=> b!51537 m!25966))

(assert (=> b!51489 d!6155))

(declare-fun d!6157 () Bool)

(declare-fun lt!9126 () Token!216)

(assert (=> d!6157 (= lt!9126 (apply!100 (list!266 v!6227) from!821))))

(declare-fun apply!103 (Conc!257 Int) Token!216)

(assert (=> d!6157 (= lt!9126 (apply!103 (c!16722 v!6227) from!821))))

(declare-fun e!30293 () Bool)

(assert (=> d!6157 e!30293))

(declare-fun res!33800 () Bool)

(assert (=> d!6157 (=> (not res!33800) (not e!30293))))

(assert (=> d!6157 (= res!33800 (<= 0 from!821))))

(assert (=> d!6157 (= (apply!99 v!6227 from!821) lt!9126)))

(declare-fun b!51540 () Bool)

(assert (=> b!51540 (= e!30293 (< from!821 (size!964 v!6227)))))

(assert (= (and d!6157 res!33800) b!51540))

(assert (=> d!6157 m!25888))

(assert (=> d!6157 m!25888))

(declare-fun m!25968 () Bool)

(assert (=> d!6157 m!25968))

(declare-fun m!25970 () Bool)

(assert (=> d!6157 m!25970))

(assert (=> b!51540 m!25858))

(assert (=> b!51490 d!6157))

(declare-fun d!6159 () Bool)

(assert (=> d!6159 (= (tail!66 (drop!41 lt!9090 from!821)) (drop!41 lt!9090 (+ from!821 1)))))

(declare-fun lt!9129 () Unit!595)

(declare-fun choose!1180 (List!1055 Int) Unit!595)

(assert (=> d!6159 (= lt!9129 (choose!1180 lt!9090 from!821))))

(declare-fun e!30296 () Bool)

(assert (=> d!6159 e!30296))

(declare-fun res!33803 () Bool)

(assert (=> d!6159 (=> (not res!33803) (not e!30296))))

(assert (=> d!6159 (= res!33803 (>= from!821 0))))

(assert (=> d!6159 (= (lemmaDropTail!37 lt!9090 from!821) lt!9129)))

(declare-fun b!51543 () Bool)

(declare-fun size!967 (List!1055) Int)

(assert (=> b!51543 (= e!30296 (< from!821 (size!967 lt!9090)))))

(assert (= (and d!6159 res!33803) b!51543))

(assert (=> d!6159 m!25898))

(assert (=> d!6159 m!25898))

(declare-fun m!25972 () Bool)

(assert (=> d!6159 m!25972))

(declare-fun m!25974 () Bool)

(assert (=> d!6159 m!25974))

(declare-fun m!25976 () Bool)

(assert (=> d!6159 m!25976))

(declare-fun m!25978 () Bool)

(assert (=> b!51543 m!25978))

(assert (=> b!51490 d!6159))

(declare-fun d!6161 () Bool)

(declare-fun lt!9132 () Token!216)

(assert (=> d!6161 (contains!114 lt!9090 lt!9132)))

(declare-fun e!30302 () Token!216)

(assert (=> d!6161 (= lt!9132 e!30302)))

(declare-fun c!16728 () Bool)

(assert (=> d!6161 (= c!16728 (= (+ 1 from!821) 0))))

(declare-fun e!30301 () Bool)

(assert (=> d!6161 e!30301))

(declare-fun res!33806 () Bool)

(assert (=> d!6161 (=> (not res!33806) (not e!30301))))

(assert (=> d!6161 (= res!33806 (<= 0 (+ 1 from!821)))))

(assert (=> d!6161 (= (apply!100 lt!9090 (+ 1 from!821)) lt!9132)))

(declare-fun b!51550 () Bool)

(assert (=> b!51550 (= e!30301 (< (+ 1 from!821) (size!967 lt!9090)))))

(declare-fun b!51551 () Bool)

(assert (=> b!51551 (= e!30302 (head!381 lt!9090))))

(declare-fun b!51552 () Bool)

(assert (=> b!51552 (= e!30302 (apply!100 (tail!66 lt!9090) (- (+ 1 from!821) 1)))))

(assert (= (and d!6161 res!33806) b!51550))

(assert (= (and d!6161 c!16728) b!51551))

(assert (= (and d!6161 (not c!16728)) b!51552))

(declare-fun m!25980 () Bool)

(assert (=> d!6161 m!25980))

(assert (=> b!51550 m!25978))

(declare-fun m!25982 () Bool)

(assert (=> b!51551 m!25982))

(declare-fun m!25984 () Bool)

(assert (=> b!51552 m!25984))

(assert (=> b!51552 m!25984))

(declare-fun m!25986 () Bool)

(assert (=> b!51552 m!25986))

(assert (=> b!51490 d!6161))

(declare-fun d!6163 () Bool)

(declare-fun lt!9133 () Token!216)

(assert (=> d!6163 (contains!114 lt!9090 lt!9133)))

(declare-fun e!30304 () Token!216)

(assert (=> d!6163 (= lt!9133 e!30304)))

(declare-fun c!16729 () Bool)

(assert (=> d!6163 (= c!16729 (= from!821 0))))

(declare-fun e!30303 () Bool)

(assert (=> d!6163 e!30303))

(declare-fun res!33807 () Bool)

(assert (=> d!6163 (=> (not res!33807) (not e!30303))))

(assert (=> d!6163 (= res!33807 (<= 0 from!821))))

(assert (=> d!6163 (= (apply!100 lt!9090 from!821) lt!9133)))

(declare-fun b!51553 () Bool)

(assert (=> b!51553 (= e!30303 (< from!821 (size!967 lt!9090)))))

(declare-fun b!51554 () Bool)

(assert (=> b!51554 (= e!30304 (head!381 lt!9090))))

(declare-fun b!51555 () Bool)

(assert (=> b!51555 (= e!30304 (apply!100 (tail!66 lt!9090) (- from!821 1)))))

(assert (= (and d!6163 res!33807) b!51553))

(assert (= (and d!6163 c!16729) b!51554))

(assert (= (and d!6163 (not c!16729)) b!51555))

(declare-fun m!25988 () Bool)

(assert (=> d!6163 m!25988))

(assert (=> b!51553 m!25978))

(assert (=> b!51554 m!25982))

(assert (=> b!51555 m!25984))

(assert (=> b!51555 m!25984))

(declare-fun m!25990 () Bool)

(assert (=> b!51555 m!25990))

(assert (=> b!51490 d!6163))

(declare-fun d!6165 () Bool)

(assert (=> d!6165 (= (tail!66 lt!9087) (t!17274 lt!9087))))

(assert (=> b!51490 d!6165))

(declare-fun b!51574 () Bool)

(declare-fun e!30318 () List!1055)

(assert (=> b!51574 (= e!30318 (drop!41 (t!17274 lt!9090) (- (+ 1 from!821) 1)))))

(declare-fun bm!3344 () Bool)

(declare-fun call!3349 () Int)

(assert (=> bm!3344 (= call!3349 (size!967 lt!9090))))

(declare-fun b!51575 () Bool)

(assert (=> b!51575 (= e!30318 lt!9090)))

(declare-fun b!51576 () Bool)

(declare-fun e!30317 () Int)

(assert (=> b!51576 (= e!30317 0)))

(declare-fun b!51577 () Bool)

(declare-fun e!30316 () Int)

(assert (=> b!51577 (= e!30316 call!3349)))

(declare-fun b!51578 () Bool)

(declare-fun e!30319 () Bool)

(declare-fun lt!9136 () List!1055)

(assert (=> b!51578 (= e!30319 (= (size!967 lt!9136) e!30316))))

(declare-fun c!16738 () Bool)

(assert (=> b!51578 (= c!16738 (<= (+ 1 from!821) 0))))

(declare-fun b!51579 () Bool)

(assert (=> b!51579 (= e!30317 (- call!3349 (+ 1 from!821)))))

(declare-fun b!51580 () Bool)

(declare-fun e!30315 () List!1055)

(assert (=> b!51580 (= e!30315 Nil!1049)))

(declare-fun d!6167 () Bool)

(assert (=> d!6167 e!30319))

(declare-fun res!33810 () Bool)

(assert (=> d!6167 (=> (not res!33810) (not e!30319))))

(assert (=> d!6167 (= res!33810 (set.subset (content!26 lt!9136) (content!26 lt!9090)))))

(assert (=> d!6167 (= lt!9136 e!30315)))

(declare-fun c!16740 () Bool)

(assert (=> d!6167 (= c!16740 (is-Nil!1049 lt!9090))))

(assert (=> d!6167 (= (drop!41 lt!9090 (+ 1 from!821)) lt!9136)))

(declare-fun b!51581 () Bool)

(assert (=> b!51581 (= e!30315 e!30318)))

(declare-fun c!16741 () Bool)

(assert (=> b!51581 (= c!16741 (<= (+ 1 from!821) 0))))

(declare-fun b!51582 () Bool)

(assert (=> b!51582 (= e!30316 e!30317)))

(declare-fun c!16739 () Bool)

(assert (=> b!51582 (= c!16739 (>= (+ 1 from!821) call!3349))))

(assert (= (and d!6167 c!16740) b!51580))

(assert (= (and d!6167 (not c!16740)) b!51581))

(assert (= (and b!51581 c!16741) b!51575))

(assert (= (and b!51581 (not c!16741)) b!51574))

(assert (= (and d!6167 res!33810) b!51578))

(assert (= (and b!51578 c!16738) b!51577))

(assert (= (and b!51578 (not c!16738)) b!51582))

(assert (= (and b!51582 c!16739) b!51576))

(assert (= (and b!51582 (not c!16739)) b!51579))

(assert (= (or b!51577 b!51582 b!51579) bm!3344))

(declare-fun m!25992 () Bool)

(assert (=> b!51574 m!25992))

(assert (=> bm!3344 m!25978))

(declare-fun m!25994 () Bool)

(assert (=> b!51578 m!25994))

(declare-fun m!25996 () Bool)

(assert (=> d!6167 m!25996))

(assert (=> d!6167 m!25962))

(assert (=> b!51490 d!6167))

(declare-fun d!6169 () Bool)

(assert (=> d!6169 (= (tail!66 (drop!41 lt!9090 (+ 1 from!821))) (drop!41 lt!9090 (+ 1 from!821 1)))))

(declare-fun lt!9137 () Unit!595)

(assert (=> d!6169 (= lt!9137 (choose!1180 lt!9090 (+ 1 from!821)))))

(declare-fun e!30320 () Bool)

(assert (=> d!6169 e!30320))

(declare-fun res!33811 () Bool)

(assert (=> d!6169 (=> (not res!33811) (not e!30320))))

(assert (=> d!6169 (= res!33811 (>= (+ 1 from!821) 0))))

(assert (=> d!6169 (= (lemmaDropTail!37 lt!9090 (+ 1 from!821)) lt!9137)))

(declare-fun b!51583 () Bool)

(assert (=> b!51583 (= e!30320 (< (+ 1 from!821) (size!967 lt!9090)))))

(assert (= (and d!6169 res!33811) b!51583))

(assert (=> d!6169 m!25900))

(assert (=> d!6169 m!25900))

(declare-fun m!25998 () Bool)

(assert (=> d!6169 m!25998))

(declare-fun m!26000 () Bool)

(assert (=> d!6169 m!26000))

(declare-fun m!26002 () Bool)

(assert (=> d!6169 m!26002))

(assert (=> b!51583 m!25978))

(assert (=> b!51490 d!6169))

(declare-fun b!51584 () Bool)

(declare-fun e!30324 () List!1055)

(assert (=> b!51584 (= e!30324 (drop!41 (t!17274 lt!9090) (- from!821 1)))))

(declare-fun bm!3345 () Bool)

(declare-fun call!3350 () Int)

(assert (=> bm!3345 (= call!3350 (size!967 lt!9090))))

(declare-fun b!51585 () Bool)

(assert (=> b!51585 (= e!30324 lt!9090)))

(declare-fun b!51586 () Bool)

(declare-fun e!30323 () Int)

(assert (=> b!51586 (= e!30323 0)))

(declare-fun b!51587 () Bool)

(declare-fun e!30322 () Int)

(assert (=> b!51587 (= e!30322 call!3350)))

(declare-fun b!51588 () Bool)

(declare-fun e!30325 () Bool)

(declare-fun lt!9138 () List!1055)

(assert (=> b!51588 (= e!30325 (= (size!967 lt!9138) e!30322))))

(declare-fun c!16742 () Bool)

(assert (=> b!51588 (= c!16742 (<= from!821 0))))

(declare-fun b!51589 () Bool)

(assert (=> b!51589 (= e!30323 (- call!3350 from!821))))

(declare-fun b!51590 () Bool)

(declare-fun e!30321 () List!1055)

(assert (=> b!51590 (= e!30321 Nil!1049)))

(declare-fun d!6171 () Bool)

(assert (=> d!6171 e!30325))

(declare-fun res!33812 () Bool)

(assert (=> d!6171 (=> (not res!33812) (not e!30325))))

(assert (=> d!6171 (= res!33812 (set.subset (content!26 lt!9138) (content!26 lt!9090)))))

(assert (=> d!6171 (= lt!9138 e!30321)))

(declare-fun c!16744 () Bool)

(assert (=> d!6171 (= c!16744 (is-Nil!1049 lt!9090))))

(assert (=> d!6171 (= (drop!41 lt!9090 from!821) lt!9138)))

(declare-fun b!51591 () Bool)

(assert (=> b!51591 (= e!30321 e!30324)))

(declare-fun c!16745 () Bool)

(assert (=> b!51591 (= c!16745 (<= from!821 0))))

(declare-fun b!51592 () Bool)

(assert (=> b!51592 (= e!30322 e!30323)))

(declare-fun c!16743 () Bool)

(assert (=> b!51592 (= c!16743 (>= from!821 call!3350))))

(assert (= (and d!6171 c!16744) b!51590))

(assert (= (and d!6171 (not c!16744)) b!51591))

(assert (= (and b!51591 c!16745) b!51585))

(assert (= (and b!51591 (not c!16745)) b!51584))

(assert (= (and d!6171 res!33812) b!51588))

(assert (= (and b!51588 c!16742) b!51587))

(assert (= (and b!51588 (not c!16742)) b!51592))

(assert (= (and b!51592 c!16743) b!51586))

(assert (= (and b!51592 (not c!16743)) b!51589))

(assert (= (or b!51587 b!51592 b!51589) bm!3345))

(declare-fun m!26004 () Bool)

(assert (=> b!51584 m!26004))

(assert (=> bm!3345 m!25978))

(declare-fun m!26006 () Bool)

(assert (=> b!51588 m!26006))

(declare-fun m!26008 () Bool)

(assert (=> d!6171 m!26008))

(assert (=> d!6171 m!25962))

(assert (=> b!51490 d!6171))

(declare-fun b!51593 () Bool)

(declare-fun e!30329 () List!1055)

(assert (=> b!51593 (= e!30329 (drop!41 (t!17274 lt!9090) (- (+ 2 from!821) 1)))))

(declare-fun bm!3346 () Bool)

(declare-fun call!3351 () Int)

(assert (=> bm!3346 (= call!3351 (size!967 lt!9090))))

(declare-fun b!51594 () Bool)

(assert (=> b!51594 (= e!30329 lt!9090)))

(declare-fun b!51595 () Bool)

(declare-fun e!30328 () Int)

(assert (=> b!51595 (= e!30328 0)))

(declare-fun b!51596 () Bool)

(declare-fun e!30327 () Int)

(assert (=> b!51596 (= e!30327 call!3351)))

(declare-fun b!51597 () Bool)

(declare-fun e!30330 () Bool)

(declare-fun lt!9139 () List!1055)

(assert (=> b!51597 (= e!30330 (= (size!967 lt!9139) e!30327))))

(declare-fun c!16746 () Bool)

(assert (=> b!51597 (= c!16746 (<= (+ 2 from!821) 0))))

(declare-fun b!51598 () Bool)

(assert (=> b!51598 (= e!30328 (- call!3351 (+ 2 from!821)))))

(declare-fun b!51599 () Bool)

(declare-fun e!30326 () List!1055)

(assert (=> b!51599 (= e!30326 Nil!1049)))

(declare-fun d!6173 () Bool)

(assert (=> d!6173 e!30330))

(declare-fun res!33813 () Bool)

(assert (=> d!6173 (=> (not res!33813) (not e!30330))))

(assert (=> d!6173 (= res!33813 (set.subset (content!26 lt!9139) (content!26 lt!9090)))))

(assert (=> d!6173 (= lt!9139 e!30326)))

(declare-fun c!16748 () Bool)

(assert (=> d!6173 (= c!16748 (is-Nil!1049 lt!9090))))

(assert (=> d!6173 (= (drop!41 lt!9090 (+ 2 from!821)) lt!9139)))

(declare-fun b!51600 () Bool)

(assert (=> b!51600 (= e!30326 e!30329)))

(declare-fun c!16749 () Bool)

(assert (=> b!51600 (= c!16749 (<= (+ 2 from!821) 0))))

(declare-fun b!51601 () Bool)

(assert (=> b!51601 (= e!30327 e!30328)))

(declare-fun c!16747 () Bool)

(assert (=> b!51601 (= c!16747 (>= (+ 2 from!821) call!3351))))

(assert (= (and d!6173 c!16748) b!51599))

(assert (= (and d!6173 (not c!16748)) b!51600))

(assert (= (and b!51600 c!16749) b!51594))

(assert (= (and b!51600 (not c!16749)) b!51593))

(assert (= (and d!6173 res!33813) b!51597))

(assert (= (and b!51597 c!16746) b!51596))

(assert (= (and b!51597 (not c!16746)) b!51601))

(assert (= (and b!51601 c!16747) b!51595))

(assert (= (and b!51601 (not c!16747)) b!51598))

(assert (= (or b!51596 b!51601 b!51598) bm!3346))

(declare-fun m!26010 () Bool)

(assert (=> b!51593 m!26010))

(assert (=> bm!3346 m!25978))

(declare-fun m!26012 () Bool)

(assert (=> b!51597 m!26012))

(declare-fun m!26014 () Bool)

(assert (=> d!6173 m!26014))

(assert (=> d!6173 m!25962))

(assert (=> b!51490 d!6173))

(declare-fun d!6175 () Bool)

(assert (=> d!6175 (= (tail!66 lt!9091) (t!17274 lt!9091))))

(assert (=> b!51490 d!6175))

(declare-fun d!6177 () Bool)

(assert (=> d!6177 (= (head!381 (drop!41 lt!9090 (+ 1 from!821))) (apply!100 lt!9090 (+ 1 from!821)))))

(declare-fun lt!9142 () Unit!595)

(declare-fun choose!1181 (List!1055 Int) Unit!595)

(assert (=> d!6177 (= lt!9142 (choose!1181 lt!9090 (+ 1 from!821)))))

(declare-fun e!30333 () Bool)

(assert (=> d!6177 e!30333))

(declare-fun res!33816 () Bool)

(assert (=> d!6177 (=> (not res!33816) (not e!30333))))

(assert (=> d!6177 (= res!33816 (>= (+ 1 from!821) 0))))

(assert (=> d!6177 (= (lemmaDropApply!41 lt!9090 (+ 1 from!821)) lt!9142)))

(declare-fun b!51604 () Bool)

(assert (=> b!51604 (= e!30333 (< (+ 1 from!821) (size!967 lt!9090)))))

(assert (= (and d!6177 res!33816) b!51604))

(assert (=> d!6177 m!25900))

(assert (=> d!6177 m!25900))

(declare-fun m!26016 () Bool)

(assert (=> d!6177 m!26016))

(assert (=> d!6177 m!25896))

(declare-fun m!26018 () Bool)

(assert (=> d!6177 m!26018))

(assert (=> b!51604 m!25978))

(assert (=> b!51490 d!6177))

(declare-fun d!6181 () Bool)

(declare-fun list!268 (Conc!257) List!1055)

(assert (=> d!6181 (= (list!266 v!6227) (list!268 (c!16722 v!6227)))))

(declare-fun bs!6666 () Bool)

(assert (= bs!6666 d!6181))

(declare-fun m!26020 () Bool)

(assert (=> bs!6666 m!26020))

(assert (=> b!51490 d!6181))

(declare-fun d!6185 () Bool)

(assert (=> d!6185 (= (head!381 lt!9087) (h!6446 lt!9087))))

(assert (=> b!51490 d!6185))

(declare-fun d!6187 () Bool)

(assert (=> d!6187 (= (head!381 (drop!41 lt!9090 from!821)) (apply!100 lt!9090 from!821))))

(declare-fun lt!9143 () Unit!595)

(assert (=> d!6187 (= lt!9143 (choose!1181 lt!9090 from!821))))

(declare-fun e!30334 () Bool)

(assert (=> d!6187 e!30334))

(declare-fun res!33817 () Bool)

(assert (=> d!6187 (=> (not res!33817) (not e!30334))))

(assert (=> d!6187 (= res!33817 (>= from!821 0))))

(assert (=> d!6187 (= (lemmaDropApply!41 lt!9090 from!821) lt!9143)))

(declare-fun b!51605 () Bool)

(assert (=> b!51605 (= e!30334 (< from!821 (size!967 lt!9090)))))

(assert (= (and d!6187 res!33817) b!51605))

(assert (=> d!6187 m!25898))

(assert (=> d!6187 m!25898))

(declare-fun m!26022 () Bool)

(assert (=> d!6187 m!26022))

(assert (=> d!6187 m!25902))

(declare-fun m!26024 () Bool)

(assert (=> d!6187 m!26024))

(assert (=> b!51605 m!25978))

(assert (=> b!51490 d!6187))

(declare-fun d!6189 () Bool)

(declare-fun lt!9146 () Bool)

(assert (=> d!6189 (= lt!9146 (contains!114 (list!266 v!6227) lt!9089))))

(declare-fun contains!118 (Conc!257 Token!216) Bool)

(assert (=> d!6189 (= lt!9146 (contains!118 (c!16722 v!6227) lt!9089))))

(assert (=> d!6189 (= (contains!115 v!6227 lt!9089) lt!9146)))

(declare-fun bs!6667 () Bool)

(assert (= bs!6667 d!6189))

(assert (=> bs!6667 m!25888))

(assert (=> bs!6667 m!25888))

(declare-fun m!26026 () Bool)

(assert (=> bs!6667 m!26026))

(declare-fun m!26028 () Bool)

(assert (=> bs!6667 m!26028))

(assert (=> b!51490 d!6189))

(declare-fun d!6191 () Bool)

(assert (=> d!6191 (= (head!381 lt!9091) (h!6446 lt!9091))))

(assert (=> b!51490 d!6191))

(declare-fun d!6193 () Bool)

(declare-fun lt!9149 () Int)

(assert (=> d!6193 (= lt!9149 (size!967 (list!266 v!6227)))))

(declare-fun size!968 (Conc!257) Int)

(assert (=> d!6193 (= lt!9149 (size!968 (c!16722 v!6227)))))

(assert (=> d!6193 (= (size!964 v!6227) lt!9149)))

(declare-fun bs!6668 () Bool)

(assert (= bs!6668 d!6193))

(assert (=> bs!6668 m!25888))

(assert (=> bs!6668 m!25888))

(declare-fun m!26030 () Bool)

(assert (=> bs!6668 m!26030))

(declare-fun m!26032 () Bool)

(assert (=> bs!6668 m!26032))

(assert (=> b!51495 d!6193))

(declare-fun d!6195 () Bool)

(assert (=> d!6195 (= (inv!1376 (tag!404 (h!6445 rules!1069))) (= (mod (str.len (value!9339 (tag!404 (h!6445 rules!1069)))) 2) 0))))

(assert (=> b!51485 d!6195))

(declare-fun d!6197 () Bool)

(declare-fun res!33823 () Bool)

(declare-fun e!30340 () Bool)

(assert (=> d!6197 (=> (not res!33823) (not e!30340))))

(declare-fun semiInverseModEq!16 (Int Int) Bool)

(assert (=> d!6197 (= res!33823 (semiInverseModEq!16 (toChars!564 (transformation!226 (h!6445 rules!1069))) (toValue!705 (transformation!226 (h!6445 rules!1069)))))))

(assert (=> d!6197 (= (inv!1379 (transformation!226 (h!6445 rules!1069))) e!30340)))

(declare-fun b!51611 () Bool)

(declare-fun equivClasses!12 (Int Int) Bool)

(assert (=> b!51611 (= e!30340 (equivClasses!12 (toChars!564 (transformation!226 (h!6445 rules!1069))) (toValue!705 (transformation!226 (h!6445 rules!1069)))))))

(assert (= (and d!6197 res!33823) b!51611))

(declare-fun m!26038 () Bool)

(assert (=> d!6197 m!26038))

(declare-fun m!26040 () Bool)

(assert (=> b!51611 m!26040))

(assert (=> b!51485 d!6197))

(declare-fun b!51699 () Bool)

(declare-fun e!30402 () Bool)

(assert (=> b!51699 (= e!30402 true)))

(declare-fun b!51698 () Bool)

(declare-fun e!30401 () Bool)

(assert (=> b!51698 (= e!30401 e!30402)))

(declare-fun b!51697 () Bool)

(declare-fun e!30400 () Bool)

(assert (=> b!51697 (= e!30400 e!30401)))

(declare-fun d!6201 () Bool)

(assert (=> d!6201 e!30400))

(assert (= b!51698 b!51699))

(assert (= b!51697 b!51698))

(assert (= (and d!6201 (is-Cons!1048 rules!1069)) b!51697))

(declare-fun order!277 () Int)

(declare-fun lambda!1034 () Int)

(declare-fun order!279 () Int)

(declare-fun dynLambda!171 (Int Int) Int)

(declare-fun dynLambda!172 (Int Int) Int)

(assert (=> b!51699 (< (dynLambda!171 order!277 (toValue!705 (transformation!226 (h!6445 rules!1069)))) (dynLambda!172 order!279 lambda!1034))))

(declare-fun order!281 () Int)

(declare-fun dynLambda!173 (Int Int) Int)

(assert (=> b!51699 (< (dynLambda!173 order!281 (toChars!564 (transformation!226 (h!6445 rules!1069)))) (dynLambda!172 order!279 lambda!1034))))

(assert (=> d!6201 true))

(declare-fun e!30393 () Bool)

(assert (=> d!6201 e!30393))

(declare-fun res!33852 () Bool)

(assert (=> d!6201 (=> (not res!33852) (not e!30393))))

(declare-fun lt!9183 () Bool)

(declare-fun forall!115 (List!1055 Int) Bool)

(assert (=> d!6201 (= res!33852 (= lt!9183 (forall!115 (list!266 v!6227) lambda!1034)))))

(declare-fun forall!116 (BalanceConc!518 Int) Bool)

(assert (=> d!6201 (= lt!9183 (forall!116 v!6227 lambda!1034))))

(assert (=> d!6201 (not (isEmpty!212 rules!1069))))

(assert (=> d!6201 (= (rulesProduceEachTokenIndividually!56 thiss!11059 rules!1069 v!6227) lt!9183)))

(declare-fun b!51688 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!34 (LexerInterface!118 List!1054 List!1055) Bool)

(assert (=> b!51688 (= e!30393 (= lt!9183 (rulesProduceEachTokenIndividuallyList!34 thiss!11059 rules!1069 (list!266 v!6227))))))

(assert (= (and d!6201 res!33852) b!51688))

(assert (=> d!6201 m!25888))

(assert (=> d!6201 m!25888))

(declare-fun m!26116 () Bool)

(assert (=> d!6201 m!26116))

(declare-fun m!26118 () Bool)

(assert (=> d!6201 m!26118))

(assert (=> d!6201 m!25864))

(assert (=> b!51688 m!25888))

(assert (=> b!51688 m!25888))

(declare-fun m!26120 () Bool)

(assert (=> b!51688 m!26120))

(assert (=> b!51486 d!6201))

(declare-fun d!6243 () Bool)

(declare-fun c!16776 () Bool)

(assert (=> d!6243 (= c!16776 (is-Node!257 (c!16722 v!6227)))))

(declare-fun e!30407 () Bool)

(assert (=> d!6243 (= (inv!1380 (c!16722 v!6227)) e!30407)))

(declare-fun b!51708 () Bool)

(declare-fun inv!1385 (Conc!257) Bool)

(assert (=> b!51708 (= e!30407 (inv!1385 (c!16722 v!6227)))))

(declare-fun b!51709 () Bool)

(declare-fun e!30408 () Bool)

(assert (=> b!51709 (= e!30407 e!30408)))

(declare-fun res!33855 () Bool)

(assert (=> b!51709 (= res!33855 (not (is-Leaf!506 (c!16722 v!6227))))))

(assert (=> b!51709 (=> res!33855 e!30408)))

(declare-fun b!51710 () Bool)

(declare-fun inv!1386 (Conc!257) Bool)

(assert (=> b!51710 (= e!30408 (inv!1386 (c!16722 v!6227)))))

(assert (= (and d!6243 c!16776) b!51708))

(assert (= (and d!6243 (not c!16776)) b!51709))

(assert (= (and b!51709 (not res!33855)) b!51710))

(declare-fun m!26122 () Bool)

(assert (=> b!51708 m!26122))

(declare-fun m!26124 () Bool)

(assert (=> b!51710 m!26124))

(assert (=> b!51491 d!6243))

(declare-fun d!6245 () Bool)

(assert (=> d!6245 (= (isEmpty!212 rules!1069) (is-Nil!1048 rules!1069))))

(assert (=> b!51492 d!6245))

(declare-fun d!6247 () Bool)

(declare-fun isBalanced!33 (Conc!257) Bool)

(assert (=> d!6247 (= (inv!1381 v!6227) (isBalanced!33 (c!16722 v!6227)))))

(declare-fun bs!6673 () Bool)

(assert (= bs!6673 d!6247))

(declare-fun m!26126 () Bool)

(assert (=> bs!6673 m!26126))

(assert (=> start!3736 d!6247))

(declare-fun b!51721 () Bool)

(declare-fun e!30411 () Bool)

(declare-fun tp_is_empty!527 () Bool)

(assert (=> b!51721 (= e!30411 tp_is_empty!527)))

(assert (=> b!51485 (= tp!33779 e!30411)))

(declare-fun b!51722 () Bool)

(declare-fun tp!33806 () Bool)

(declare-fun tp!33809 () Bool)

(assert (=> b!51722 (= e!30411 (and tp!33806 tp!33809))))

(declare-fun b!51723 () Bool)

(declare-fun tp!33808 () Bool)

(assert (=> b!51723 (= e!30411 tp!33808)))

(declare-fun b!51724 () Bool)

(declare-fun tp!33805 () Bool)

(declare-fun tp!33807 () Bool)

(assert (=> b!51724 (= e!30411 (and tp!33805 tp!33807))))

(assert (= (and b!51485 (is-ElementMatch!294 (regex!226 (h!6445 rules!1069)))) b!51721))

(assert (= (and b!51485 (is-Concat!511 (regex!226 (h!6445 rules!1069)))) b!51722))

(assert (= (and b!51485 (is-Star!294 (regex!226 (h!6445 rules!1069)))) b!51723))

(assert (= (and b!51485 (is-Union!294 (regex!226 (h!6445 rules!1069)))) b!51724))

(declare-fun b!51733 () Bool)

(declare-fun tp!33817 () Bool)

(declare-fun tp!33818 () Bool)

(declare-fun e!30417 () Bool)

(assert (=> b!51733 (= e!30417 (and (inv!1380 (left!787 (c!16722 v!6227))) tp!33818 (inv!1380 (right!1117 (c!16722 v!6227))) tp!33817))))

(declare-fun b!51735 () Bool)

(declare-fun e!30416 () Bool)

(declare-fun tp!33816 () Bool)

(assert (=> b!51735 (= e!30416 tp!33816)))

(declare-fun b!51734 () Bool)

(declare-fun inv!1387 (IArray!515) Bool)

(assert (=> b!51734 (= e!30417 (and (inv!1387 (xs!2836 (c!16722 v!6227))) e!30416))))

(assert (=> b!51491 (= tp!33775 (and (inv!1380 (c!16722 v!6227)) e!30417))))

(assert (= (and b!51491 (is-Node!257 (c!16722 v!6227))) b!51733))

(assert (= b!51734 b!51735))

(assert (= (and b!51491 (is-Leaf!506 (c!16722 v!6227))) b!51734))

(declare-fun m!26128 () Bool)

(assert (=> b!51733 m!26128))

(declare-fun m!26130 () Bool)

(assert (=> b!51733 m!26130))

(declare-fun m!26132 () Bool)

(assert (=> b!51734 m!26132))

(assert (=> b!51491 m!25866))

(declare-fun b!51746 () Bool)

(declare-fun b_free!1641 () Bool)

(declare-fun b_next!1641 () Bool)

(assert (=> b!51746 (= b_free!1641 (not b_next!1641))))

(declare-fun tp!33827 () Bool)

(declare-fun b_and!1691 () Bool)

(assert (=> b!51746 (= tp!33827 b_and!1691)))

(declare-fun b_free!1643 () Bool)

(declare-fun b_next!1643 () Bool)

(assert (=> b!51746 (= b_free!1643 (not b_next!1643))))

(declare-fun tp!33829 () Bool)

(declare-fun b_and!1693 () Bool)

(assert (=> b!51746 (= tp!33829 b_and!1693)))

(declare-fun e!30429 () Bool)

(assert (=> b!51746 (= e!30429 (and tp!33827 tp!33829))))

(declare-fun tp!33830 () Bool)

(declare-fun b!51745 () Bool)

(declare-fun e!30428 () Bool)

(assert (=> b!51745 (= e!30428 (and tp!33830 (inv!1376 (tag!404 (h!6445 (t!17273 rules!1069)))) (inv!1379 (transformation!226 (h!6445 (t!17273 rules!1069)))) e!30429))))

(declare-fun b!51744 () Bool)

(declare-fun e!30426 () Bool)

(declare-fun tp!33828 () Bool)

(assert (=> b!51744 (= e!30426 (and e!30428 tp!33828))))

(assert (=> b!51487 (= tp!33776 e!30426)))

(assert (= b!51745 b!51746))

(assert (= b!51744 b!51745))

(assert (= (and b!51487 (is-Cons!1048 (t!17273 rules!1069))) b!51744))

(declare-fun m!26134 () Bool)

(assert (=> b!51745 m!26134))

(declare-fun m!26136 () Bool)

(assert (=> b!51745 m!26136))

(push 1)

(assert (not b!51735))

(assert (not d!6189))

(assert (not b!51550))

(assert (not d!6167))

(assert (not b!51724))

(assert b_and!1693)

(assert (not b!51597))

(assert (not b!51540))

(assert (not b!51734))

(assert (not b!51733))

(assert (not b!51722))

(assert (not b!51552))

(assert (not bm!3344))

(assert (not b!51555))

(assert (not b_next!1635))

(assert (not d!6173))

(assert (not b_next!1643))

(assert (not b!51708))

(assert b_and!1685)

(assert (not b!51723))

(assert (not b!51688))

(assert (not d!6201))

(assert (not b!51745))

(assert b_and!1683)

(assert (not d!6155))

(assert (not b!51491))

(assert (not b!51543))

(assert (not bm!3345))

(assert (not b!51553))

(assert (not b_next!1633))

(assert (not b!51531))

(assert (not b!51588))

(assert (not bm!3346))

(assert (not b!51697))

(assert (not d!6177))

(assert (not d!6161))

(assert b_and!1691)

(assert (not b!51578))

(assert tp_is_empty!527)

(assert (not b!51710))

(assert (not b!51537))

(assert (not d!6169))

(assert (not d!6153))

(assert (not b!51605))

(assert (not d!6159))

(assert (not d!6197))

(assert (not b!51574))

(assert (not d!6187))

(assert (not b!51584))

(assert (not b!51551))

(assert (not d!6247))

(assert (not b!51611))

(assert (not d!6163))

(assert (not b!51744))

(assert (not d!6157))

(assert (not b!51604))

(assert (not b!51554))

(assert (not d!6171))

(assert (not d!6181))

(assert (not b!51593))

(assert (not b!51583))

(assert (not b_next!1641))

(assert (not d!6193))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1635))

(assert (not b_next!1643))

(assert b_and!1685)

(assert b_and!1683)

(assert (not b_next!1633))

(assert b_and!1691)

(assert b_and!1693)

(assert (not b_next!1641))

(check-sat)

(pop 1)


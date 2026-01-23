; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!95028 () Bool)

(assert start!95028)

(declare-fun bs!259665 () Bool)

(declare-fun b!1103073 () Bool)

(assert (= bs!259665 (and b!1103073 start!95028)))

(declare-fun lambda!43706 () Int)

(declare-fun lambda!43705 () Int)

(assert (=> bs!259665 (not (= lambda!43706 lambda!43705))))

(declare-fun b!1103097 () Bool)

(declare-fun e!698818 () Bool)

(assert (=> b!1103097 (= e!698818 true)))

(declare-fun b!1103096 () Bool)

(declare-fun e!698817 () Bool)

(assert (=> b!1103096 (= e!698817 e!698818)))

(assert (=> b!1103073 e!698817))

(assert (= b!1103096 b!1103097))

(assert (= b!1103073 b!1103096))

(declare-fun lambda!43707 () Int)

(assert (=> bs!259665 (not (= lambda!43707 lambda!43705))))

(assert (=> b!1103073 (not (= lambda!43707 lambda!43706))))

(declare-fun b!1103099 () Bool)

(declare-fun e!698820 () Bool)

(assert (=> b!1103099 (= e!698820 true)))

(declare-fun b!1103098 () Bool)

(declare-fun e!698819 () Bool)

(assert (=> b!1103098 (= e!698819 e!698820)))

(assert (=> b!1103073 e!698819))

(assert (= b!1103098 b!1103099))

(assert (= b!1103073 b!1103098))

(declare-fun lambda!43708 () Int)

(assert (=> bs!259665 (not (= lambda!43708 lambda!43705))))

(assert (=> b!1103073 (not (= lambda!43708 lambda!43706))))

(assert (=> b!1103073 (not (= lambda!43708 lambda!43707))))

(declare-fun b!1103101 () Bool)

(declare-fun e!698822 () Bool)

(assert (=> b!1103101 (= e!698822 true)))

(declare-fun b!1103100 () Bool)

(declare-fun e!698821 () Bool)

(assert (=> b!1103100 (= e!698821 e!698822)))

(assert (=> b!1103073 e!698821))

(assert (= b!1103100 b!1103101))

(assert (= b!1103073 b!1103100))

(declare-fun b!1103072 () Bool)

(declare-fun e!698799 () Bool)

(declare-datatypes ((List!10691 0))(
  ( (Nil!10675) (Cons!10675 (h!16076 (_ BitVec 16)) (t!104341 List!10691)) )
))
(declare-datatypes ((TokenValue!1903 0))(
  ( (FloatLiteralValue!3806 (text!13766 List!10691)) (TokenValueExt!1902 (__x!7485 Int)) (Broken!9515 (value!60283 List!10691)) (Object!1918) (End!1903) (Def!1903) (Underscore!1903) (Match!1903) (Else!1903) (Error!1903) (Case!1903) (If!1903) (Extends!1903) (Abstract!1903) (Class!1903) (Val!1903) (DelimiterValue!3806 (del!1963 List!10691)) (KeywordValue!1909 (value!60284 List!10691)) (CommentValue!3806 (value!60285 List!10691)) (WhitespaceValue!3806 (value!60286 List!10691)) (IndentationValue!1903 (value!60287 List!10691)) (String!13086) (Int32!1903) (Broken!9516 (value!60288 List!10691)) (Boolean!1904) (Unit!16295) (OperatorValue!1906 (op!1963 List!10691)) (IdentifierValue!3806 (value!60289 List!10691)) (IdentifierValue!3807 (value!60290 List!10691)) (WhitespaceValue!3807 (value!60291 List!10691)) (True!3806) (False!3806) (Broken!9517 (value!60292 List!10691)) (Broken!9518 (value!60293 List!10691)) (True!3807) (RightBrace!1903) (RightBracket!1903) (Colon!1903) (Null!1903) (Comma!1903) (LeftBracket!1903) (False!3807) (LeftBrace!1903) (ImaginaryLiteralValue!1903 (text!13767 List!10691)) (StringLiteralValue!5709 (value!60294 List!10691)) (EOFValue!1903 (value!60295 List!10691)) (IdentValue!1903 (value!60296 List!10691)) (DelimiterValue!3807 (value!60297 List!10691)) (DedentValue!1903 (value!60298 List!10691)) (NewLineValue!1903 (value!60299 List!10691)) (IntegerValue!5709 (value!60300 (_ BitVec 32)) (text!13768 List!10691)) (IntegerValue!5710 (value!60301 Int) (text!13769 List!10691)) (Times!1903) (Or!1903) (Equal!1903) (Minus!1903) (Broken!9519 (value!60302 List!10691)) (And!1903) (Div!1903) (LessEqual!1903) (Mod!1903) (Concat!5009) (Not!1903) (Plus!1903) (SpaceValue!1903 (value!60303 List!10691)) (IntegerValue!5711 (value!60304 Int) (text!13770 List!10691)) (StringLiteralValue!5710 (text!13771 List!10691)) (FloatLiteralValue!3807 (text!13772 List!10691)) (BytesLiteralValue!1903 (value!60305 List!10691)) (CommentValue!3807 (value!60306 List!10691)) (StringLiteralValue!5711 (value!60307 List!10691)) (ErrorTokenValue!1903 (msg!1964 List!10691)) )
))
(declare-datatypes ((Regex!3106 0))(
  ( (ElementMatch!3106 (c!187248 (_ BitVec 16))) (Concat!5010 (regOne!6724 Regex!3106) (regTwo!6724 Regex!3106)) (EmptyExpr!3106) (Star!3106 (reg!3435 Regex!3106)) (EmptyLang!3106) (Union!3106 (regOne!6725 Regex!3106) (regTwo!6725 Regex!3106)) )
))
(declare-datatypes ((String!13087 0))(
  ( (String!13088 (value!60308 String)) )
))
(declare-datatypes ((IArray!6681 0))(
  ( (IArray!6682 (innerList!3398 List!10691)) )
))
(declare-datatypes ((Conc!3338 0))(
  ( (Node!3338 (left!9250 Conc!3338) (right!9580 Conc!3338) (csize!6906 Int) (cheight!3549 Int)) (Leaf!5263 (xs!6031 IArray!6681) (csize!6907 Int)) (Empty!3338) )
))
(declare-datatypes ((BalanceConc!6690 0))(
  ( (BalanceConc!6691 (c!187249 Conc!3338)) )
))
(declare-datatypes ((TokenValueInjection!3506 0))(
  ( (TokenValueInjection!3507 (toValue!2914 Int) (toChars!2773 Int)) )
))
(declare-datatypes ((Rule!3474 0))(
  ( (Rule!3475 (regex!1837 Regex!3106) (tag!2099 String!13087) (isSeparator!1837 Bool) (transformation!1837 TokenValueInjection!3506)) )
))
(declare-datatypes ((Token!3340 0))(
  ( (Token!3341 (value!60309 TokenValue!1903) (rule!3260 Rule!3474) (size!8295 Int) (originalCharacters!2393 List!10691)) )
))
(declare-datatypes ((List!10692 0))(
  ( (Nil!10676) (Cons!10676 (h!16077 Token!3340) (t!104342 List!10692)) )
))
(declare-datatypes ((IArray!6683 0))(
  ( (IArray!6684 (innerList!3399 List!10692)) )
))
(declare-datatypes ((Conc!3339 0))(
  ( (Node!3339 (left!9251 Conc!3339) (right!9581 Conc!3339) (csize!6908 Int) (cheight!3550 Int)) (Leaf!5264 (xs!6032 IArray!6683) (csize!6909 Int)) (Empty!3339) )
))
(declare-datatypes ((List!10693 0))(
  ( (Nil!10677) (Cons!10677 (h!16078 Rule!3474) (t!104343 List!10693)) )
))
(declare-datatypes ((BalanceConc!6692 0))(
  ( (BalanceConc!6693 (c!187250 Conc!3339)) )
))
(declare-datatypes ((PrintableTokens!390 0))(
  ( (PrintableTokens!391 (rules!9124 List!10693) (tokens!1396 BalanceConc!6692)) )
))
(declare-datatypes ((tuple2!11800 0))(
  ( (tuple2!11801 (_1!6726 Int) (_2!6726 PrintableTokens!390)) )
))
(declare-datatypes ((List!10694 0))(
  ( (Nil!10678) (Cons!10678 (h!16079 tuple2!11800) (t!104344 List!10694)) )
))
(declare-fun lt!373137 () List!10694)

(declare-fun size!8296 (List!10694) Int)

(declare-fun filter!375 (List!10694 Int) List!10694)

(assert (=> b!1103072 (= e!698799 (< (size!8296 (filter!375 lt!373137 lambda!43706)) (size!8296 lt!373137)))))

(declare-fun e!698805 () Bool)

(declare-fun e!698806 () Bool)

(assert (=> b!1103073 (= e!698805 e!698806)))

(declare-fun res!489090 () Bool)

(assert (=> b!1103073 (=> (not res!489090) (not e!698806))))

(declare-datatypes ((IArray!6685 0))(
  ( (IArray!6686 (innerList!3400 List!10694)) )
))
(declare-datatypes ((Conc!3340 0))(
  ( (Node!3340 (left!9252 Conc!3340) (right!9582 Conc!3340) (csize!6910 Int) (cheight!3551 Int)) (Leaf!5265 (xs!6033 IArray!6685) (csize!6911 Int)) (Empty!3340) )
))
(declare-datatypes ((BalanceConc!6694 0))(
  ( (BalanceConc!6695 (c!187251 Conc!3340)) )
))
(declare-fun objs!8 () BalanceConc!6694)

(declare-fun lt!373133 () tuple2!11800)

(declare-fun contains!1900 (BalanceConc!6694 tuple2!11800) Bool)

(assert (=> b!1103073 (= res!489090 (contains!1900 objs!8 lt!373133))))

(declare-fun lt!373135 () BalanceConc!6694)

(declare-fun filter!376 (BalanceConc!6694 Int) BalanceConc!6694)

(assert (=> b!1103073 (= lt!373135 (filter!376 objs!8 lambda!43708))))

(declare-fun lt!373124 () BalanceConc!6694)

(assert (=> b!1103073 (= lt!373124 (filter!376 objs!8 lambda!43707))))

(declare-fun lt!373141 () BalanceConc!6694)

(assert (=> b!1103073 (= lt!373141 (filter!376 objs!8 lambda!43706))))

(declare-fun lt!373139 () Int)

(declare-fun apply!2172 (BalanceConc!6694 Int) tuple2!11800)

(assert (=> b!1103073 (= lt!373133 (apply!2172 objs!8 (ite (>= lt!373139 0) (div lt!373139 2) (- (div (- lt!373139) 2)))))))

(declare-fun b!1103074 () Bool)

(declare-datatypes ((Unit!16296 0))(
  ( (Unit!16297) )
))
(declare-fun e!698809 () Unit!16296)

(declare-fun Unit!16298 () Unit!16296)

(assert (=> b!1103074 (= e!698809 Unit!16298)))

(declare-fun b!1103075 () Bool)

(declare-fun e!698802 () Bool)

(declare-fun tp!327185 () Bool)

(declare-fun inv!13730 (Conc!3340) Bool)

(assert (=> b!1103075 (= e!698802 (and (inv!13730 (c!187251 objs!8)) tp!327185))))

(declare-fun b!1103076 () Bool)

(declare-fun e!698800 () Unit!16296)

(declare-fun err!2769 () Unit!16296)

(assert (=> b!1103076 (= e!698800 err!2769)))

(declare-fun lt!373148 () Unit!16296)

(declare-fun forallContained!531 (List!10694 Int tuple2!11800) Unit!16296)

(declare-fun list!3853 (BalanceConc!6694) List!10694)

(assert (=> b!1103076 (= lt!373148 (forallContained!531 (list!3853 lt!373141) lambda!43706 lt!373133))))

(assert (=> b!1103076 true))

(declare-fun b!1103077 () Bool)

(declare-fun e!698803 () Unit!16296)

(declare-fun err!2767 () Unit!16296)

(assert (=> b!1103077 (= e!698803 err!2767)))

(declare-fun lt!373140 () Unit!16296)

(assert (=> b!1103077 (= lt!373140 (forallContained!531 (list!3853 lt!373135) lambda!43708 lt!373133))))

(assert (=> b!1103077 true))

(declare-fun b!1103078 () Bool)

(declare-fun e!698811 () Bool)

(assert (=> b!1103078 (= e!698811 (< (size!8296 (filter!375 lt!373137 lambda!43708)) (size!8296 lt!373137)))))

(declare-fun b!1103079 () Bool)

(declare-fun e!698812 () Bool)

(declare-fun e!698804 () Bool)

(assert (=> b!1103079 (= e!698812 (not e!698804))))

(declare-fun res!489089 () Bool)

(assert (=> b!1103079 (=> res!489089 e!698804)))

(declare-fun size!8297 (BalanceConc!6694) Int)

(assert (=> b!1103079 (= res!489089 (>= (size!8297 lt!373141) lt!373139))))

(assert (=> b!1103079 e!698799))

(declare-fun res!489082 () Bool)

(assert (=> b!1103079 (=> res!489082 e!698799)))

(declare-fun lt!373138 () Bool)

(assert (=> b!1103079 (= res!489082 lt!373138)))

(declare-fun isEmpty!6702 (List!10694) Bool)

(assert (=> b!1103079 (= lt!373138 (isEmpty!6702 lt!373137))))

(declare-fun lt!373134 () Unit!16296)

(declare-fun lemmaNotForallFilterShorter!64 (List!10694 Int) Unit!16296)

(assert (=> b!1103079 (= lt!373134 (lemmaNotForallFilterShorter!64 lt!373137 lambda!43706))))

(assert (=> b!1103079 (= lt!373137 (list!3853 objs!8))))

(declare-fun lt!373136 () Unit!16296)

(declare-fun e!698808 () Unit!16296)

(assert (=> b!1103079 (= lt!373136 e!698808)))

(declare-fun c!187247 () Bool)

(declare-fun forall!2487 (BalanceConc!6694 Int) Bool)

(assert (=> b!1103079 (= c!187247 (forall!2487 objs!8 lambda!43706))))

(declare-fun b!1103080 () Bool)

(declare-fun Unit!16299 () Unit!16296)

(assert (=> b!1103080 (= e!698800 Unit!16299)))

(declare-fun b!1103081 () Bool)

(declare-fun err!2768 () Unit!16296)

(assert (=> b!1103081 (= e!698809 err!2768)))

(declare-fun lt!373147 () Unit!16296)

(assert (=> b!1103081 (= lt!373147 (forallContained!531 lt!373137 lambda!43708 lt!373133))))

(assert (=> b!1103081 true))

(declare-fun b!1103082 () Bool)

(declare-fun Unit!16300 () Unit!16296)

(assert (=> b!1103082 (= e!698808 Unit!16300)))

(declare-fun b!1103083 () Bool)

(declare-fun e!698810 () Bool)

(assert (=> b!1103083 (= e!698804 e!698810)))

(declare-fun res!489088 () Bool)

(assert (=> b!1103083 (=> res!489088 e!698810)))

(declare-fun lt!373125 () Bool)

(assert (=> b!1103083 (= res!489088 lt!373125)))

(declare-fun lt!373132 () Unit!16296)

(assert (=> b!1103083 (= lt!373132 e!698803)))

(declare-fun c!187245 () Bool)

(assert (=> b!1103083 (= c!187245 lt!373125)))

(assert (=> b!1103083 (= lt!373125 (contains!1900 lt!373135 lt!373133))))

(declare-fun res!489085 () Bool)

(declare-fun e!698807 () Bool)

(assert (=> start!95028 (=> (not res!489085) (not e!698807))))

(assert (=> start!95028 (= res!489085 (forall!2487 objs!8 lambda!43705))))

(assert (=> start!95028 e!698807))

(declare-fun inv!13731 (BalanceConc!6694) Bool)

(assert (=> start!95028 (and (inv!13731 objs!8) e!698802)))

(declare-fun b!1103084 () Bool)

(declare-fun e!698801 () Bool)

(declare-fun forall!2488 (List!10694 Int) Bool)

(assert (=> b!1103084 (= e!698801 (forall!2488 lt!373137 lambda!43705))))

(declare-fun lt!373130 () List!10694)

(assert (=> b!1103084 (= lt!373130 (list!3853 (filter!376 objs!8 lambda!43707)))))

(declare-fun lt!373144 () List!10694)

(assert (=> b!1103084 (forall!2488 lt!373144 lambda!43705)))

(declare-fun lt!373146 () Unit!16296)

(declare-fun lemmaForallSubseq!50 (List!10694 List!10694 Int) Unit!16296)

(assert (=> b!1103084 (= lt!373146 (lemmaForallSubseq!50 lt!373144 lt!373137 lambda!43705))))

(assert (=> b!1103084 (= lt!373144 (list!3853 (filter!376 objs!8 lambda!43706)))))

(declare-fun lt!373143 () Unit!16296)

(declare-fun filterSubseq!46 (List!10694 Int) Unit!16296)

(assert (=> b!1103084 (= lt!373143 (filterSubseq!46 lt!373137 lambda!43708))))

(declare-fun lt!373142 () Unit!16296)

(assert (=> b!1103084 (= lt!373142 (filterSubseq!46 lt!373137 lambda!43707))))

(declare-fun lt!373126 () Unit!16296)

(assert (=> b!1103084 (= lt!373126 (filterSubseq!46 lt!373137 lambda!43706))))

(declare-fun b!1103085 () Bool)

(declare-fun err!2766 () Unit!16296)

(assert (=> b!1103085 (= e!698808 err!2766)))

(declare-fun lt!373129 () Unit!16296)

(assert (=> b!1103085 (= lt!373129 (forallContained!531 (list!3853 objs!8) lambda!43706 lt!373133))))

(assert (=> b!1103085 true))

(declare-fun b!1103086 () Bool)

(assert (=> b!1103086 (= e!698806 e!698812)))

(declare-fun res!489086 () Bool)

(assert (=> b!1103086 (=> (not res!489086) (not e!698812))))

(declare-fun lt!373131 () Bool)

(assert (=> b!1103086 (= res!489086 (not lt!373131))))

(declare-fun lt!373128 () Unit!16296)

(assert (=> b!1103086 (= lt!373128 e!698800)))

(declare-fun c!187246 () Bool)

(assert (=> b!1103086 (= c!187246 lt!373131)))

(assert (=> b!1103086 (= lt!373131 (contains!1900 lt!373141 lt!373133))))

(declare-fun b!1103087 () Bool)

(declare-fun Unit!16301 () Unit!16296)

(assert (=> b!1103087 (= e!698803 Unit!16301)))

(declare-fun b!1103088 () Bool)

(assert (=> b!1103088 (= e!698807 e!698805)))

(declare-fun res!489087 () Bool)

(assert (=> b!1103088 (=> (not res!489087) (not e!698805))))

(assert (=> b!1103088 (= res!489087 (> lt!373139 1))))

(assert (=> b!1103088 (= lt!373139 (size!8297 objs!8))))

(declare-fun b!1103089 () Bool)

(assert (=> b!1103089 (= e!698810 e!698801)))

(declare-fun res!489084 () Bool)

(assert (=> b!1103089 (=> res!489084 e!698801)))

(assert (=> b!1103089 (= res!489084 (>= (size!8297 lt!373135) lt!373139))))

(assert (=> b!1103089 e!698811))

(declare-fun res!489083 () Bool)

(assert (=> b!1103089 (=> res!489083 e!698811)))

(assert (=> b!1103089 (= res!489083 lt!373138)))

(declare-fun lt!373127 () Unit!16296)

(assert (=> b!1103089 (= lt!373127 (lemmaNotForallFilterShorter!64 lt!373137 lambda!43708))))

(declare-fun lt!373145 () Unit!16296)

(assert (=> b!1103089 (= lt!373145 e!698809)))

(declare-fun c!187244 () Bool)

(assert (=> b!1103089 (= c!187244 (forall!2487 objs!8 lambda!43708))))

(assert (= (and start!95028 res!489085) b!1103088))

(assert (= (and b!1103088 res!489087) b!1103073))

(assert (= (and b!1103073 res!489090) b!1103086))

(assert (= (and b!1103086 c!187246) b!1103076))

(assert (= (and b!1103086 (not c!187246)) b!1103080))

(assert (= (and b!1103086 res!489086) b!1103079))

(assert (= (and b!1103079 c!187247) b!1103085))

(assert (= (and b!1103079 (not c!187247)) b!1103082))

(assert (= (and b!1103079 (not res!489082)) b!1103072))

(assert (= (and b!1103079 (not res!489089)) b!1103083))

(assert (= (and b!1103083 c!187245) b!1103077))

(assert (= (and b!1103083 (not c!187245)) b!1103087))

(assert (= (and b!1103083 (not res!489088)) b!1103089))

(assert (= (and b!1103089 c!187244) b!1103081))

(assert (= (and b!1103089 (not c!187244)) b!1103074))

(assert (= (and b!1103089 (not res!489083)) b!1103078))

(assert (= (and b!1103089 (not res!489084)) b!1103084))

(assert (= start!95028 b!1103075))

(declare-fun m!1259239 () Bool)

(assert (=> b!1103072 m!1259239))

(assert (=> b!1103072 m!1259239))

(declare-fun m!1259241 () Bool)

(assert (=> b!1103072 m!1259241))

(declare-fun m!1259243 () Bool)

(assert (=> b!1103072 m!1259243))

(declare-fun m!1259245 () Bool)

(assert (=> b!1103077 m!1259245))

(assert (=> b!1103077 m!1259245))

(declare-fun m!1259247 () Bool)

(assert (=> b!1103077 m!1259247))

(declare-fun m!1259249 () Bool)

(assert (=> b!1103073 m!1259249))

(declare-fun m!1259251 () Bool)

(assert (=> b!1103073 m!1259251))

(declare-fun m!1259253 () Bool)

(assert (=> b!1103073 m!1259253))

(declare-fun m!1259255 () Bool)

(assert (=> b!1103073 m!1259255))

(declare-fun m!1259257 () Bool)

(assert (=> b!1103073 m!1259257))

(declare-fun m!1259259 () Bool)

(assert (=> b!1103076 m!1259259))

(assert (=> b!1103076 m!1259259))

(declare-fun m!1259261 () Bool)

(assert (=> b!1103076 m!1259261))

(declare-fun m!1259263 () Bool)

(assert (=> b!1103089 m!1259263))

(declare-fun m!1259265 () Bool)

(assert (=> b!1103089 m!1259265))

(declare-fun m!1259267 () Bool)

(assert (=> b!1103089 m!1259267))

(declare-fun m!1259269 () Bool)

(assert (=> b!1103078 m!1259269))

(assert (=> b!1103078 m!1259269))

(declare-fun m!1259271 () Bool)

(assert (=> b!1103078 m!1259271))

(assert (=> b!1103078 m!1259243))

(declare-fun m!1259273 () Bool)

(assert (=> b!1103088 m!1259273))

(declare-fun m!1259275 () Bool)

(assert (=> start!95028 m!1259275))

(declare-fun m!1259277 () Bool)

(assert (=> start!95028 m!1259277))

(declare-fun m!1259279 () Bool)

(assert (=> b!1103081 m!1259279))

(declare-fun m!1259281 () Bool)

(assert (=> b!1103075 m!1259281))

(assert (=> b!1103084 m!1259249))

(declare-fun m!1259283 () Bool)

(assert (=> b!1103084 m!1259283))

(assert (=> b!1103084 m!1259253))

(declare-fun m!1259285 () Bool)

(assert (=> b!1103084 m!1259285))

(declare-fun m!1259287 () Bool)

(assert (=> b!1103084 m!1259287))

(declare-fun m!1259289 () Bool)

(assert (=> b!1103084 m!1259289))

(assert (=> b!1103084 m!1259253))

(declare-fun m!1259291 () Bool)

(assert (=> b!1103084 m!1259291))

(declare-fun m!1259293 () Bool)

(assert (=> b!1103084 m!1259293))

(declare-fun m!1259295 () Bool)

(assert (=> b!1103084 m!1259295))

(declare-fun m!1259297 () Bool)

(assert (=> b!1103084 m!1259297))

(assert (=> b!1103084 m!1259249))

(declare-fun m!1259299 () Bool)

(assert (=> b!1103085 m!1259299))

(assert (=> b!1103085 m!1259299))

(declare-fun m!1259301 () Bool)

(assert (=> b!1103085 m!1259301))

(declare-fun m!1259303 () Bool)

(assert (=> b!1103086 m!1259303))

(assert (=> b!1103079 m!1259299))

(declare-fun m!1259305 () Bool)

(assert (=> b!1103079 m!1259305))

(declare-fun m!1259307 () Bool)

(assert (=> b!1103079 m!1259307))

(declare-fun m!1259309 () Bool)

(assert (=> b!1103079 m!1259309))

(declare-fun m!1259311 () Bool)

(assert (=> b!1103079 m!1259311))

(declare-fun m!1259313 () Bool)

(assert (=> b!1103083 m!1259313))

(push 1)

(assert (not b!1103073))

(assert (not b!1103072))

(assert (not b!1103089))

(assert (not b!1103083))

(assert (not b!1103097))

(assert (not b!1103098))

(assert (not b!1103075))

(assert (not b!1103079))

(assert (not b!1103086))

(assert (not b!1103100))

(assert (not start!95028))

(assert (not b!1103076))

(assert (not b!1103096))

(assert (not b!1103077))

(assert (not b!1103081))

(assert (not b!1103099))

(assert (not b!1103085))

(assert (not b!1103088))

(assert (not b!1103101))

(assert (not b!1103078))

(assert (not b!1103084))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!312151 () Bool)

(declare-fun dynLambda!4712 (Int tuple2!11800) Bool)

(assert (=> d!312151 (dynLambda!4712 lambda!43706 lt!373133)))

(declare-fun lt!373226 () Unit!16296)

(declare-fun choose!7121 (List!10694 Int tuple2!11800) Unit!16296)

(assert (=> d!312151 (= lt!373226 (choose!7121 (list!3853 objs!8) lambda!43706 lt!373133))))

(declare-fun e!698877 () Bool)

(assert (=> d!312151 e!698877))

(declare-fun res!489120 () Bool)

(assert (=> d!312151 (=> (not res!489120) (not e!698877))))

(assert (=> d!312151 (= res!489120 (forall!2488 (list!3853 objs!8) lambda!43706))))

(assert (=> d!312151 (= (forallContained!531 (list!3853 objs!8) lambda!43706 lt!373133) lt!373226)))

(declare-fun b!1103170 () Bool)

(declare-fun contains!1902 (List!10694 tuple2!11800) Bool)

(assert (=> b!1103170 (= e!698877 (contains!1902 (list!3853 objs!8) lt!373133))))

(assert (= (and d!312151 res!489120) b!1103170))

(declare-fun b_lambda!32435 () Bool)

(assert (=> (not b_lambda!32435) (not d!312151)))

(declare-fun m!1259391 () Bool)

(assert (=> d!312151 m!1259391))

(assert (=> d!312151 m!1259299))

(declare-fun m!1259393 () Bool)

(assert (=> d!312151 m!1259393))

(assert (=> d!312151 m!1259299))

(declare-fun m!1259395 () Bool)

(assert (=> d!312151 m!1259395))

(assert (=> b!1103170 m!1259299))

(declare-fun m!1259397 () Bool)

(assert (=> b!1103170 m!1259397))

(assert (=> b!1103085 d!312151))

(declare-fun d!312153 () Bool)

(declare-fun list!3855 (Conc!3340) List!10694)

(assert (=> d!312153 (= (list!3853 objs!8) (list!3855 (c!187251 objs!8)))))

(declare-fun bs!259667 () Bool)

(assert (= bs!259667 d!312153))

(declare-fun m!1259399 () Bool)

(assert (=> bs!259667 m!1259399))

(assert (=> b!1103085 d!312153))

(declare-fun d!312155 () Bool)

(declare-fun subseq!156 (List!10694 List!10694) Bool)

(assert (=> d!312155 (subseq!156 (filter!375 lt!373137 lambda!43707) lt!373137)))

(declare-fun lt!373229 () Unit!16296)

(declare-fun choose!7122 (List!10694 Int) Unit!16296)

(assert (=> d!312155 (= lt!373229 (choose!7122 lt!373137 lambda!43707))))

(assert (=> d!312155 (= (filterSubseq!46 lt!373137 lambda!43707) lt!373229)))

(declare-fun bs!259668 () Bool)

(assert (= bs!259668 d!312155))

(declare-fun m!1259401 () Bool)

(assert (=> bs!259668 m!1259401))

(assert (=> bs!259668 m!1259401))

(declare-fun m!1259403 () Bool)

(assert (=> bs!259668 m!1259403))

(declare-fun m!1259405 () Bool)

(assert (=> bs!259668 m!1259405))

(assert (=> b!1103084 d!312155))

(declare-fun d!312157 () Bool)

(assert (=> d!312157 (= (list!3853 (filter!376 objs!8 lambda!43706)) (list!3855 (c!187251 (filter!376 objs!8 lambda!43706))))))

(declare-fun bs!259669 () Bool)

(assert (= bs!259669 d!312157))

(declare-fun m!1259407 () Bool)

(assert (=> bs!259669 m!1259407))

(assert (=> b!1103084 d!312157))

(declare-fun d!312159 () Bool)

(declare-fun e!698880 () Bool)

(assert (=> d!312159 e!698880))

(declare-fun res!489123 () Bool)

(assert (=> d!312159 (=> (not res!489123) (not e!698880))))

(declare-fun isBalanced!924 (Conc!3340) Bool)

(declare-fun filter!379 (Conc!3340 Int) Conc!3340)

(assert (=> d!312159 (= res!489123 (isBalanced!924 (filter!379 (c!187251 objs!8) lambda!43706)))))

(declare-fun lt!373232 () BalanceConc!6694)

(assert (=> d!312159 (= lt!373232 (BalanceConc!6695 (filter!379 (c!187251 objs!8) lambda!43706)))))

(assert (=> d!312159 (= (filter!376 objs!8 lambda!43706) lt!373232)))

(declare-fun b!1103173 () Bool)

(assert (=> b!1103173 (= e!698880 (= (list!3853 lt!373232) (filter!375 (list!3853 objs!8) lambda!43706)))))

(assert (= (and d!312159 res!489123) b!1103173))

(declare-fun m!1259409 () Bool)

(assert (=> d!312159 m!1259409))

(assert (=> d!312159 m!1259409))

(declare-fun m!1259411 () Bool)

(assert (=> d!312159 m!1259411))

(declare-fun m!1259413 () Bool)

(assert (=> b!1103173 m!1259413))

(assert (=> b!1103173 m!1259299))

(assert (=> b!1103173 m!1259299))

(declare-fun m!1259415 () Bool)

(assert (=> b!1103173 m!1259415))

(assert (=> b!1103084 d!312159))

(declare-fun d!312163 () Bool)

(assert (=> d!312163 (subseq!156 (filter!375 lt!373137 lambda!43706) lt!373137)))

(declare-fun lt!373233 () Unit!16296)

(assert (=> d!312163 (= lt!373233 (choose!7122 lt!373137 lambda!43706))))

(assert (=> d!312163 (= (filterSubseq!46 lt!373137 lambda!43706) lt!373233)))

(declare-fun bs!259670 () Bool)

(assert (= bs!259670 d!312163))

(assert (=> bs!259670 m!1259239))

(assert (=> bs!259670 m!1259239))

(declare-fun m!1259417 () Bool)

(assert (=> bs!259670 m!1259417))

(declare-fun m!1259419 () Bool)

(assert (=> bs!259670 m!1259419))

(assert (=> b!1103084 d!312163))

(declare-fun d!312165 () Bool)

(declare-fun res!489130 () Bool)

(declare-fun e!698887 () Bool)

(assert (=> d!312165 (=> res!489130 e!698887)))

(assert (=> d!312165 (= res!489130 (is-Nil!10678 lt!373137))))

(assert (=> d!312165 (= (forall!2488 lt!373137 lambda!43705) e!698887)))

(declare-fun b!1103180 () Bool)

(declare-fun e!698888 () Bool)

(assert (=> b!1103180 (= e!698887 e!698888)))

(declare-fun res!489131 () Bool)

(assert (=> b!1103180 (=> (not res!489131) (not e!698888))))

(assert (=> b!1103180 (= res!489131 (dynLambda!4712 lambda!43705 (h!16079 lt!373137)))))

(declare-fun b!1103181 () Bool)

(assert (=> b!1103181 (= e!698888 (forall!2488 (t!104344 lt!373137) lambda!43705))))

(assert (= (and d!312165 (not res!489130)) b!1103180))

(assert (= (and b!1103180 res!489131) b!1103181))

(declare-fun b_lambda!32437 () Bool)

(assert (=> (not b_lambda!32437) (not b!1103180)))

(declare-fun m!1259421 () Bool)

(assert (=> b!1103180 m!1259421))

(declare-fun m!1259423 () Bool)

(assert (=> b!1103181 m!1259423))

(assert (=> b!1103084 d!312165))

(declare-fun d!312167 () Bool)

(assert (=> d!312167 (subseq!156 (filter!375 lt!373137 lambda!43708) lt!373137)))

(declare-fun lt!373236 () Unit!16296)

(assert (=> d!312167 (= lt!373236 (choose!7122 lt!373137 lambda!43708))))

(assert (=> d!312167 (= (filterSubseq!46 lt!373137 lambda!43708) lt!373236)))

(declare-fun bs!259671 () Bool)

(assert (= bs!259671 d!312167))

(assert (=> bs!259671 m!1259269))

(assert (=> bs!259671 m!1259269))

(declare-fun m!1259425 () Bool)

(assert (=> bs!259671 m!1259425))

(declare-fun m!1259427 () Bool)

(assert (=> bs!259671 m!1259427))

(assert (=> b!1103084 d!312167))

(declare-fun d!312169 () Bool)

(assert (=> d!312169 (= (list!3853 (filter!376 objs!8 lambda!43707)) (list!3855 (c!187251 (filter!376 objs!8 lambda!43707))))))

(declare-fun bs!259672 () Bool)

(assert (= bs!259672 d!312169))

(declare-fun m!1259429 () Bool)

(assert (=> bs!259672 m!1259429))

(assert (=> b!1103084 d!312169))

(declare-fun d!312171 () Bool)

(assert (=> d!312171 (forall!2488 lt!373144 lambda!43705)))

(declare-fun lt!373240 () Unit!16296)

(declare-fun choose!7123 (List!10694 List!10694 Int) Unit!16296)

(assert (=> d!312171 (= lt!373240 (choose!7123 lt!373144 lt!373137 lambda!43705))))

(assert (=> d!312171 (forall!2488 lt!373137 lambda!43705)))

(assert (=> d!312171 (= (lemmaForallSubseq!50 lt!373144 lt!373137 lambda!43705) lt!373240)))

(declare-fun bs!259673 () Bool)

(assert (= bs!259673 d!312171))

(assert (=> bs!259673 m!1259289))

(declare-fun m!1259439 () Bool)

(assert (=> bs!259673 m!1259439))

(assert (=> bs!259673 m!1259295))

(assert (=> b!1103084 d!312171))

(declare-fun d!312175 () Bool)

(declare-fun res!489133 () Bool)

(declare-fun e!698890 () Bool)

(assert (=> d!312175 (=> res!489133 e!698890)))

(assert (=> d!312175 (= res!489133 (is-Nil!10678 lt!373144))))

(assert (=> d!312175 (= (forall!2488 lt!373144 lambda!43705) e!698890)))

(declare-fun b!1103183 () Bool)

(declare-fun e!698891 () Bool)

(assert (=> b!1103183 (= e!698890 e!698891)))

(declare-fun res!489134 () Bool)

(assert (=> b!1103183 (=> (not res!489134) (not e!698891))))

(assert (=> b!1103183 (= res!489134 (dynLambda!4712 lambda!43705 (h!16079 lt!373144)))))

(declare-fun b!1103184 () Bool)

(assert (=> b!1103184 (= e!698891 (forall!2488 (t!104344 lt!373144) lambda!43705))))

(assert (= (and d!312175 (not res!489133)) b!1103183))

(assert (= (and b!1103183 res!489134) b!1103184))

(declare-fun b_lambda!32441 () Bool)

(assert (=> (not b_lambda!32441) (not b!1103183)))

(declare-fun m!1259441 () Bool)

(assert (=> b!1103183 m!1259441))

(declare-fun m!1259443 () Bool)

(assert (=> b!1103184 m!1259443))

(assert (=> b!1103084 d!312175))

(declare-fun d!312177 () Bool)

(declare-fun e!698892 () Bool)

(assert (=> d!312177 e!698892))

(declare-fun res!489135 () Bool)

(assert (=> d!312177 (=> (not res!489135) (not e!698892))))

(assert (=> d!312177 (= res!489135 (isBalanced!924 (filter!379 (c!187251 objs!8) lambda!43707)))))

(declare-fun lt!373241 () BalanceConc!6694)

(assert (=> d!312177 (= lt!373241 (BalanceConc!6695 (filter!379 (c!187251 objs!8) lambda!43707)))))

(assert (=> d!312177 (= (filter!376 objs!8 lambda!43707) lt!373241)))

(declare-fun b!1103185 () Bool)

(assert (=> b!1103185 (= e!698892 (= (list!3853 lt!373241) (filter!375 (list!3853 objs!8) lambda!43707)))))

(assert (= (and d!312177 res!489135) b!1103185))

(declare-fun m!1259445 () Bool)

(assert (=> d!312177 m!1259445))

(assert (=> d!312177 m!1259445))

(declare-fun m!1259447 () Bool)

(assert (=> d!312177 m!1259447))

(declare-fun m!1259449 () Bool)

(assert (=> b!1103185 m!1259449))

(assert (=> b!1103185 m!1259299))

(assert (=> b!1103185 m!1259299))

(declare-fun m!1259451 () Bool)

(assert (=> b!1103185 m!1259451))

(assert (=> b!1103084 d!312177))

(declare-fun d!312179 () Bool)

(declare-fun e!698893 () Bool)

(assert (=> d!312179 e!698893))

(declare-fun res!489136 () Bool)

(assert (=> d!312179 (=> (not res!489136) (not e!698893))))

(assert (=> d!312179 (= res!489136 (isBalanced!924 (filter!379 (c!187251 objs!8) lambda!43708)))))

(declare-fun lt!373242 () BalanceConc!6694)

(assert (=> d!312179 (= lt!373242 (BalanceConc!6695 (filter!379 (c!187251 objs!8) lambda!43708)))))

(assert (=> d!312179 (= (filter!376 objs!8 lambda!43708) lt!373242)))

(declare-fun b!1103186 () Bool)

(assert (=> b!1103186 (= e!698893 (= (list!3853 lt!373242) (filter!375 (list!3853 objs!8) lambda!43708)))))

(assert (= (and d!312179 res!489136) b!1103186))

(declare-fun m!1259453 () Bool)

(assert (=> d!312179 m!1259453))

(assert (=> d!312179 m!1259453))

(declare-fun m!1259455 () Bool)

(assert (=> d!312179 m!1259455))

(declare-fun m!1259457 () Bool)

(assert (=> b!1103186 m!1259457))

(assert (=> b!1103186 m!1259299))

(assert (=> b!1103186 m!1259299))

(declare-fun m!1259459 () Bool)

(assert (=> b!1103186 m!1259459))

(assert (=> b!1103073 d!312179))

(assert (=> b!1103073 d!312159))

(declare-fun d!312181 () Bool)

(declare-fun lt!373248 () tuple2!11800)

(declare-fun apply!2174 (List!10694 Int) tuple2!11800)

(assert (=> d!312181 (= lt!373248 (apply!2174 (list!3853 objs!8) (ite (>= lt!373139 0) (div lt!373139 2) (- (div (- lt!373139) 2)))))))

(declare-fun apply!2175 (Conc!3340 Int) tuple2!11800)

(assert (=> d!312181 (= lt!373248 (apply!2175 (c!187251 objs!8) (ite (>= lt!373139 0) (div lt!373139 2) (- (div (- lt!373139) 2)))))))

(declare-fun e!698896 () Bool)

(assert (=> d!312181 e!698896))

(declare-fun res!489139 () Bool)

(assert (=> d!312181 (=> (not res!489139) (not e!698896))))

(assert (=> d!312181 (= res!489139 (<= 0 (ite (>= lt!373139 0) (div lt!373139 2) (- (div (- lt!373139) 2)))))))

(assert (=> d!312181 (= (apply!2172 objs!8 (ite (>= lt!373139 0) (div lt!373139 2) (- (div (- lt!373139) 2)))) lt!373248)))

(declare-fun b!1103189 () Bool)

(assert (=> b!1103189 (= e!698896 (< (ite (>= lt!373139 0) (div lt!373139 2) (- (div (- lt!373139) 2))) (size!8297 objs!8)))))

(assert (= (and d!312181 res!489139) b!1103189))

(assert (=> d!312181 m!1259299))

(assert (=> d!312181 m!1259299))

(declare-fun m!1259467 () Bool)

(assert (=> d!312181 m!1259467))

(declare-fun m!1259469 () Bool)

(assert (=> d!312181 m!1259469))

(assert (=> b!1103189 m!1259273))

(assert (=> b!1103073 d!312181))

(assert (=> b!1103073 d!312177))

(declare-fun d!312187 () Bool)

(declare-fun lt!373251 () Bool)

(assert (=> d!312187 (= lt!373251 (contains!1902 (list!3853 objs!8) lt!373133))))

(declare-fun contains!1903 (Conc!3340 tuple2!11800) Bool)

(assert (=> d!312187 (= lt!373251 (contains!1903 (c!187251 objs!8) lt!373133))))

(assert (=> d!312187 (= (contains!1900 objs!8 lt!373133) lt!373251)))

(declare-fun bs!259676 () Bool)

(assert (= bs!259676 d!312187))

(assert (=> bs!259676 m!1259299))

(assert (=> bs!259676 m!1259299))

(assert (=> bs!259676 m!1259397))

(declare-fun m!1259471 () Bool)

(assert (=> bs!259676 m!1259471))

(assert (=> b!1103073 d!312187))

(declare-fun d!312189 () Bool)

(declare-fun lt!373256 () Int)

(assert (=> d!312189 (>= lt!373256 0)))

(declare-fun e!698899 () Int)

(assert (=> d!312189 (= lt!373256 e!698899)))

(declare-fun c!187271 () Bool)

(assert (=> d!312189 (= c!187271 (is-Nil!10678 (filter!375 lt!373137 lambda!43706)))))

(assert (=> d!312189 (= (size!8296 (filter!375 lt!373137 lambda!43706)) lt!373256)))

(declare-fun b!1103194 () Bool)

(assert (=> b!1103194 (= e!698899 0)))

(declare-fun b!1103195 () Bool)

(assert (=> b!1103195 (= e!698899 (+ 1 (size!8296 (t!104344 (filter!375 lt!373137 lambda!43706)))))))

(assert (= (and d!312189 c!187271) b!1103194))

(assert (= (and d!312189 (not c!187271)) b!1103195))

(declare-fun m!1259473 () Bool)

(assert (=> b!1103195 m!1259473))

(assert (=> b!1103072 d!312189))

(declare-fun b!1103211 () Bool)

(declare-fun e!698909 () List!10694)

(declare-fun call!80465 () List!10694)

(assert (=> b!1103211 (= e!698909 (Cons!10678 (h!16079 lt!373137) call!80465))))

(declare-fun b!1103212 () Bool)

(declare-fun e!698911 () Bool)

(declare-fun lt!373260 () List!10694)

(assert (=> b!1103212 (= e!698911 (forall!2488 lt!373260 lambda!43706))))

(declare-fun b!1103213 () Bool)

(declare-fun res!489147 () Bool)

(assert (=> b!1103213 (=> (not res!489147) (not e!698911))))

(declare-fun content!1543 (List!10694) (Set tuple2!11800))

(assert (=> b!1103213 (= res!489147 (set.subset (content!1543 lt!373260) (content!1543 lt!373137)))))

(declare-fun b!1103214 () Bool)

(assert (=> b!1103214 (= e!698909 call!80465)))

(declare-fun b!1103215 () Bool)

(declare-fun e!698910 () List!10694)

(assert (=> b!1103215 (= e!698910 e!698909)))

(declare-fun c!187276 () Bool)

(assert (=> b!1103215 (= c!187276 (dynLambda!4712 lambda!43706 (h!16079 lt!373137)))))

(declare-fun d!312191 () Bool)

(assert (=> d!312191 e!698911))

(declare-fun res!489148 () Bool)

(assert (=> d!312191 (=> (not res!489148) (not e!698911))))

(assert (=> d!312191 (= res!489148 (<= (size!8296 lt!373260) (size!8296 lt!373137)))))

(assert (=> d!312191 (= lt!373260 e!698910)))

(declare-fun c!187277 () Bool)

(assert (=> d!312191 (= c!187277 (is-Nil!10678 lt!373137))))

(assert (=> d!312191 (= (filter!375 lt!373137 lambda!43706) lt!373260)))

(declare-fun bm!80460 () Bool)

(assert (=> bm!80460 (= call!80465 (filter!375 (t!104344 lt!373137) lambda!43706))))

(declare-fun b!1103216 () Bool)

(assert (=> b!1103216 (= e!698910 Nil!10678)))

(assert (= (and d!312191 c!187277) b!1103216))

(assert (= (and d!312191 (not c!187277)) b!1103215))

(assert (= (and b!1103215 c!187276) b!1103211))

(assert (= (and b!1103215 (not c!187276)) b!1103214))

(assert (= (or b!1103211 b!1103214) bm!80460))

(assert (= (and d!312191 res!489148) b!1103213))

(assert (= (and b!1103213 res!489147) b!1103212))

(declare-fun b_lambda!32443 () Bool)

(assert (=> (not b_lambda!32443) (not b!1103215)))

(declare-fun m!1259479 () Bool)

(assert (=> d!312191 m!1259479))

(assert (=> d!312191 m!1259243))

(declare-fun m!1259481 () Bool)

(assert (=> b!1103215 m!1259481))

(declare-fun m!1259483 () Bool)

(assert (=> b!1103212 m!1259483))

(declare-fun m!1259485 () Bool)

(assert (=> bm!80460 m!1259485))

(declare-fun m!1259487 () Bool)

(assert (=> b!1103213 m!1259487))

(declare-fun m!1259489 () Bool)

(assert (=> b!1103213 m!1259489))

(assert (=> b!1103072 d!312191))

(declare-fun d!312195 () Bool)

(declare-fun lt!373261 () Int)

(assert (=> d!312195 (>= lt!373261 0)))

(declare-fun e!698912 () Int)

(assert (=> d!312195 (= lt!373261 e!698912)))

(declare-fun c!187278 () Bool)

(assert (=> d!312195 (= c!187278 (is-Nil!10678 lt!373137))))

(assert (=> d!312195 (= (size!8296 lt!373137) lt!373261)))

(declare-fun b!1103217 () Bool)

(assert (=> b!1103217 (= e!698912 0)))

(declare-fun b!1103218 () Bool)

(assert (=> b!1103218 (= e!698912 (+ 1 (size!8296 (t!104344 lt!373137))))))

(assert (= (and d!312195 c!187278) b!1103217))

(assert (= (and d!312195 (not c!187278)) b!1103218))

(declare-fun m!1259491 () Bool)

(assert (=> b!1103218 m!1259491))

(assert (=> b!1103072 d!312195))

(declare-fun d!312197 () Bool)

(declare-fun lt!373262 () Bool)

(assert (=> d!312197 (= lt!373262 (contains!1902 (list!3853 lt!373135) lt!373133))))

(assert (=> d!312197 (= lt!373262 (contains!1903 (c!187251 lt!373135) lt!373133))))

(assert (=> d!312197 (= (contains!1900 lt!373135 lt!373133) lt!373262)))

(declare-fun bs!259677 () Bool)

(assert (= bs!259677 d!312197))

(assert (=> bs!259677 m!1259245))

(assert (=> bs!259677 m!1259245))

(declare-fun m!1259493 () Bool)

(assert (=> bs!259677 m!1259493))

(declare-fun m!1259495 () Bool)

(assert (=> bs!259677 m!1259495))

(assert (=> b!1103083 d!312197))

(declare-fun d!312199 () Bool)

(assert (=> d!312199 (dynLambda!4712 lambda!43708 lt!373133)))

(declare-fun lt!373263 () Unit!16296)

(assert (=> d!312199 (= lt!373263 (choose!7121 lt!373137 lambda!43708 lt!373133))))

(declare-fun e!698913 () Bool)

(assert (=> d!312199 e!698913))

(declare-fun res!489149 () Bool)

(assert (=> d!312199 (=> (not res!489149) (not e!698913))))

(assert (=> d!312199 (= res!489149 (forall!2488 lt!373137 lambda!43708))))

(assert (=> d!312199 (= (forallContained!531 lt!373137 lambda!43708 lt!373133) lt!373263)))

(declare-fun b!1103219 () Bool)

(assert (=> b!1103219 (= e!698913 (contains!1902 lt!373137 lt!373133))))

(assert (= (and d!312199 res!489149) b!1103219))

(declare-fun b_lambda!32445 () Bool)

(assert (=> (not b_lambda!32445) (not d!312199)))

(declare-fun m!1259497 () Bool)

(assert (=> d!312199 m!1259497))

(declare-fun m!1259499 () Bool)

(assert (=> d!312199 m!1259499))

(declare-fun m!1259501 () Bool)

(assert (=> d!312199 m!1259501))

(declare-fun m!1259503 () Bool)

(assert (=> b!1103219 m!1259503))

(assert (=> b!1103081 d!312199))

(assert (=> b!1103079 d!312153))

(declare-fun d!312201 () Bool)

(declare-fun e!698916 () Bool)

(assert (=> d!312201 e!698916))

(declare-fun res!489152 () Bool)

(assert (=> d!312201 (=> res!489152 e!698916)))

(assert (=> d!312201 (= res!489152 (isEmpty!6702 lt!373137))))

(declare-fun lt!373269 () Unit!16296)

(declare-fun choose!7124 (List!10694 Int) Unit!16296)

(assert (=> d!312201 (= lt!373269 (choose!7124 lt!373137 lambda!43706))))

(assert (=> d!312201 (not (forall!2488 lt!373137 lambda!43706))))

(assert (=> d!312201 (= (lemmaNotForallFilterShorter!64 lt!373137 lambda!43706) lt!373269)))

(declare-fun b!1103222 () Bool)

(assert (=> b!1103222 (= e!698916 (< (size!8296 (filter!375 lt!373137 lambda!43706)) (size!8296 lt!373137)))))

(assert (= (and d!312201 (not res!489152)) b!1103222))

(assert (=> d!312201 m!1259309))

(declare-fun m!1259509 () Bool)

(assert (=> d!312201 m!1259509))

(declare-fun m!1259511 () Bool)

(assert (=> d!312201 m!1259511))

(assert (=> b!1103222 m!1259239))

(assert (=> b!1103222 m!1259239))

(assert (=> b!1103222 m!1259241))

(assert (=> b!1103222 m!1259243))

(assert (=> b!1103079 d!312201))

(declare-fun d!312205 () Bool)

(declare-fun lt!373272 () Bool)

(assert (=> d!312205 (= lt!373272 (forall!2488 (list!3853 objs!8) lambda!43706))))

(declare-fun forall!2491 (Conc!3340 Int) Bool)

(assert (=> d!312205 (= lt!373272 (forall!2491 (c!187251 objs!8) lambda!43706))))

(assert (=> d!312205 (= (forall!2487 objs!8 lambda!43706) lt!373272)))

(declare-fun bs!259679 () Bool)

(assert (= bs!259679 d!312205))

(assert (=> bs!259679 m!1259299))

(assert (=> bs!259679 m!1259299))

(assert (=> bs!259679 m!1259395))

(declare-fun m!1259513 () Bool)

(assert (=> bs!259679 m!1259513))

(assert (=> b!1103079 d!312205))

(declare-fun d!312207 () Bool)

(assert (=> d!312207 (= (isEmpty!6702 lt!373137) (is-Nil!10678 lt!373137))))

(assert (=> b!1103079 d!312207))

(declare-fun d!312209 () Bool)

(declare-fun lt!373278 () Int)

(assert (=> d!312209 (= lt!373278 (size!8296 (list!3853 lt!373141)))))

(declare-fun size!8301 (Conc!3340) Int)

(assert (=> d!312209 (= lt!373278 (size!8301 (c!187251 lt!373141)))))

(assert (=> d!312209 (= (size!8297 lt!373141) lt!373278)))

(declare-fun bs!259681 () Bool)

(assert (= bs!259681 d!312209))

(assert (=> bs!259681 m!1259259))

(assert (=> bs!259681 m!1259259))

(declare-fun m!1259519 () Bool)

(assert (=> bs!259681 m!1259519))

(declare-fun m!1259521 () Bool)

(assert (=> bs!259681 m!1259521))

(assert (=> b!1103079 d!312209))

(declare-fun d!312213 () Bool)

(declare-fun lt!373279 () Int)

(assert (=> d!312213 (>= lt!373279 0)))

(declare-fun e!698917 () Int)

(assert (=> d!312213 (= lt!373279 e!698917)))

(declare-fun c!187279 () Bool)

(assert (=> d!312213 (= c!187279 (is-Nil!10678 (filter!375 lt!373137 lambda!43708)))))

(assert (=> d!312213 (= (size!8296 (filter!375 lt!373137 lambda!43708)) lt!373279)))

(declare-fun b!1103223 () Bool)

(assert (=> b!1103223 (= e!698917 0)))

(declare-fun b!1103224 () Bool)

(assert (=> b!1103224 (= e!698917 (+ 1 (size!8296 (t!104344 (filter!375 lt!373137 lambda!43708)))))))

(assert (= (and d!312213 c!187279) b!1103223))

(assert (= (and d!312213 (not c!187279)) b!1103224))

(declare-fun m!1259523 () Bool)

(assert (=> b!1103224 m!1259523))

(assert (=> b!1103078 d!312213))

(declare-fun b!1103225 () Bool)

(declare-fun e!698918 () List!10694)

(declare-fun call!80466 () List!10694)

(assert (=> b!1103225 (= e!698918 (Cons!10678 (h!16079 lt!373137) call!80466))))

(declare-fun b!1103226 () Bool)

(declare-fun e!698920 () Bool)

(declare-fun lt!373280 () List!10694)

(assert (=> b!1103226 (= e!698920 (forall!2488 lt!373280 lambda!43708))))

(declare-fun b!1103227 () Bool)

(declare-fun res!489153 () Bool)

(assert (=> b!1103227 (=> (not res!489153) (not e!698920))))

(assert (=> b!1103227 (= res!489153 (set.subset (content!1543 lt!373280) (content!1543 lt!373137)))))

(declare-fun b!1103228 () Bool)

(assert (=> b!1103228 (= e!698918 call!80466)))

(declare-fun b!1103229 () Bool)

(declare-fun e!698919 () List!10694)

(assert (=> b!1103229 (= e!698919 e!698918)))

(declare-fun c!187280 () Bool)

(assert (=> b!1103229 (= c!187280 (dynLambda!4712 lambda!43708 (h!16079 lt!373137)))))

(declare-fun d!312215 () Bool)

(assert (=> d!312215 e!698920))

(declare-fun res!489154 () Bool)

(assert (=> d!312215 (=> (not res!489154) (not e!698920))))

(assert (=> d!312215 (= res!489154 (<= (size!8296 lt!373280) (size!8296 lt!373137)))))

(assert (=> d!312215 (= lt!373280 e!698919)))

(declare-fun c!187281 () Bool)

(assert (=> d!312215 (= c!187281 (is-Nil!10678 lt!373137))))

(assert (=> d!312215 (= (filter!375 lt!373137 lambda!43708) lt!373280)))

(declare-fun bm!80461 () Bool)

(assert (=> bm!80461 (= call!80466 (filter!375 (t!104344 lt!373137) lambda!43708))))

(declare-fun b!1103230 () Bool)

(assert (=> b!1103230 (= e!698919 Nil!10678)))

(assert (= (and d!312215 c!187281) b!1103230))

(assert (= (and d!312215 (not c!187281)) b!1103229))

(assert (= (and b!1103229 c!187280) b!1103225))

(assert (= (and b!1103229 (not c!187280)) b!1103228))

(assert (= (or b!1103225 b!1103228) bm!80461))

(assert (= (and d!312215 res!489154) b!1103227))

(assert (= (and b!1103227 res!489153) b!1103226))

(declare-fun b_lambda!32447 () Bool)

(assert (=> (not b_lambda!32447) (not b!1103229)))

(declare-fun m!1259525 () Bool)

(assert (=> d!312215 m!1259525))

(assert (=> d!312215 m!1259243))

(declare-fun m!1259527 () Bool)

(assert (=> b!1103229 m!1259527))

(declare-fun m!1259529 () Bool)

(assert (=> b!1103226 m!1259529))

(declare-fun m!1259531 () Bool)

(assert (=> bm!80461 m!1259531))

(declare-fun m!1259533 () Bool)

(assert (=> b!1103227 m!1259533))

(assert (=> b!1103227 m!1259489))

(assert (=> b!1103078 d!312215))

(assert (=> b!1103078 d!312195))

(declare-fun d!312217 () Bool)

(declare-fun lt!373281 () Int)

(assert (=> d!312217 (= lt!373281 (size!8296 (list!3853 lt!373135)))))

(assert (=> d!312217 (= lt!373281 (size!8301 (c!187251 lt!373135)))))

(assert (=> d!312217 (= (size!8297 lt!373135) lt!373281)))

(declare-fun bs!259682 () Bool)

(assert (= bs!259682 d!312217))

(assert (=> bs!259682 m!1259245))

(assert (=> bs!259682 m!1259245))

(declare-fun m!1259535 () Bool)

(assert (=> bs!259682 m!1259535))

(declare-fun m!1259537 () Bool)

(assert (=> bs!259682 m!1259537))

(assert (=> b!1103089 d!312217))

(declare-fun d!312219 () Bool)

(declare-fun e!698921 () Bool)

(assert (=> d!312219 e!698921))

(declare-fun res!489155 () Bool)

(assert (=> d!312219 (=> res!489155 e!698921)))

(assert (=> d!312219 (= res!489155 (isEmpty!6702 lt!373137))))

(declare-fun lt!373282 () Unit!16296)

(assert (=> d!312219 (= lt!373282 (choose!7124 lt!373137 lambda!43708))))

(assert (=> d!312219 (not (forall!2488 lt!373137 lambda!43708))))

(assert (=> d!312219 (= (lemmaNotForallFilterShorter!64 lt!373137 lambda!43708) lt!373282)))

(declare-fun b!1103231 () Bool)

(assert (=> b!1103231 (= e!698921 (< (size!8296 (filter!375 lt!373137 lambda!43708)) (size!8296 lt!373137)))))

(assert (= (and d!312219 (not res!489155)) b!1103231))

(assert (=> d!312219 m!1259309))

(declare-fun m!1259539 () Bool)

(assert (=> d!312219 m!1259539))

(assert (=> d!312219 m!1259501))

(assert (=> b!1103231 m!1259269))

(assert (=> b!1103231 m!1259269))

(assert (=> b!1103231 m!1259271))

(assert (=> b!1103231 m!1259243))

(assert (=> b!1103089 d!312219))

(declare-fun d!312221 () Bool)

(declare-fun lt!373283 () Bool)

(assert (=> d!312221 (= lt!373283 (forall!2488 (list!3853 objs!8) lambda!43708))))

(assert (=> d!312221 (= lt!373283 (forall!2491 (c!187251 objs!8) lambda!43708))))

(assert (=> d!312221 (= (forall!2487 objs!8 lambda!43708) lt!373283)))

(declare-fun bs!259683 () Bool)

(assert (= bs!259683 d!312221))

(assert (=> bs!259683 m!1259299))

(assert (=> bs!259683 m!1259299))

(declare-fun m!1259541 () Bool)

(assert (=> bs!259683 m!1259541))

(declare-fun m!1259543 () Bool)

(assert (=> bs!259683 m!1259543))

(assert (=> b!1103089 d!312221))

(declare-fun d!312223 () Bool)

(declare-fun lt!373284 () Int)

(assert (=> d!312223 (= lt!373284 (size!8296 (list!3853 objs!8)))))

(assert (=> d!312223 (= lt!373284 (size!8301 (c!187251 objs!8)))))

(assert (=> d!312223 (= (size!8297 objs!8) lt!373284)))

(declare-fun bs!259684 () Bool)

(assert (= bs!259684 d!312223))

(assert (=> bs!259684 m!1259299))

(assert (=> bs!259684 m!1259299))

(declare-fun m!1259545 () Bool)

(assert (=> bs!259684 m!1259545))

(declare-fun m!1259547 () Bool)

(assert (=> bs!259684 m!1259547))

(assert (=> b!1103088 d!312223))

(declare-fun d!312225 () Bool)

(declare-fun lt!373285 () Bool)

(assert (=> d!312225 (= lt!373285 (forall!2488 (list!3853 objs!8) lambda!43705))))

(assert (=> d!312225 (= lt!373285 (forall!2491 (c!187251 objs!8) lambda!43705))))

(assert (=> d!312225 (= (forall!2487 objs!8 lambda!43705) lt!373285)))

(declare-fun bs!259685 () Bool)

(assert (= bs!259685 d!312225))

(assert (=> bs!259685 m!1259299))

(assert (=> bs!259685 m!1259299))

(declare-fun m!1259549 () Bool)

(assert (=> bs!259685 m!1259549))

(declare-fun m!1259551 () Bool)

(assert (=> bs!259685 m!1259551))

(assert (=> start!95028 d!312225))

(declare-fun d!312227 () Bool)

(assert (=> d!312227 (= (inv!13731 objs!8) (isBalanced!924 (c!187251 objs!8)))))

(declare-fun bs!259686 () Bool)

(assert (= bs!259686 d!312227))

(declare-fun m!1259553 () Bool)

(assert (=> bs!259686 m!1259553))

(assert (=> start!95028 d!312227))

(declare-fun d!312229 () Bool)

(assert (=> d!312229 (dynLambda!4712 lambda!43708 lt!373133)))

(declare-fun lt!373286 () Unit!16296)

(assert (=> d!312229 (= lt!373286 (choose!7121 (list!3853 lt!373135) lambda!43708 lt!373133))))

(declare-fun e!698922 () Bool)

(assert (=> d!312229 e!698922))

(declare-fun res!489156 () Bool)

(assert (=> d!312229 (=> (not res!489156) (not e!698922))))

(assert (=> d!312229 (= res!489156 (forall!2488 (list!3853 lt!373135) lambda!43708))))

(assert (=> d!312229 (= (forallContained!531 (list!3853 lt!373135) lambda!43708 lt!373133) lt!373286)))

(declare-fun b!1103232 () Bool)

(assert (=> b!1103232 (= e!698922 (contains!1902 (list!3853 lt!373135) lt!373133))))

(assert (= (and d!312229 res!489156) b!1103232))

(declare-fun b_lambda!32449 () Bool)

(assert (=> (not b_lambda!32449) (not d!312229)))

(assert (=> d!312229 m!1259497))

(assert (=> d!312229 m!1259245))

(declare-fun m!1259555 () Bool)

(assert (=> d!312229 m!1259555))

(assert (=> d!312229 m!1259245))

(declare-fun m!1259557 () Bool)

(assert (=> d!312229 m!1259557))

(assert (=> b!1103232 m!1259245))

(assert (=> b!1103232 m!1259493))

(assert (=> b!1103077 d!312229))

(declare-fun d!312231 () Bool)

(assert (=> d!312231 (= (list!3853 lt!373135) (list!3855 (c!187251 lt!373135)))))

(declare-fun bs!259687 () Bool)

(assert (= bs!259687 d!312231))

(declare-fun m!1259559 () Bool)

(assert (=> bs!259687 m!1259559))

(assert (=> b!1103077 d!312231))

(declare-fun d!312233 () Bool)

(assert (=> d!312233 (dynLambda!4712 lambda!43706 lt!373133)))

(declare-fun lt!373287 () Unit!16296)

(assert (=> d!312233 (= lt!373287 (choose!7121 (list!3853 lt!373141) lambda!43706 lt!373133))))

(declare-fun e!698927 () Bool)

(assert (=> d!312233 e!698927))

(declare-fun res!489159 () Bool)

(assert (=> d!312233 (=> (not res!489159) (not e!698927))))

(assert (=> d!312233 (= res!489159 (forall!2488 (list!3853 lt!373141) lambda!43706))))

(assert (=> d!312233 (= (forallContained!531 (list!3853 lt!373141) lambda!43706 lt!373133) lt!373287)))

(declare-fun b!1103239 () Bool)

(assert (=> b!1103239 (= e!698927 (contains!1902 (list!3853 lt!373141) lt!373133))))

(assert (= (and d!312233 res!489159) b!1103239))

(declare-fun b_lambda!32451 () Bool)

(assert (=> (not b_lambda!32451) (not d!312233)))

(assert (=> d!312233 m!1259391))

(assert (=> d!312233 m!1259259))

(declare-fun m!1259561 () Bool)

(assert (=> d!312233 m!1259561))

(assert (=> d!312233 m!1259259))

(declare-fun m!1259563 () Bool)

(assert (=> d!312233 m!1259563))

(assert (=> b!1103239 m!1259259))

(declare-fun m!1259565 () Bool)

(assert (=> b!1103239 m!1259565))

(assert (=> b!1103076 d!312233))

(declare-fun d!312235 () Bool)

(assert (=> d!312235 (= (list!3853 lt!373141) (list!3855 (c!187251 lt!373141)))))

(declare-fun bs!259688 () Bool)

(assert (= bs!259688 d!312235))

(declare-fun m!1259567 () Bool)

(assert (=> bs!259688 m!1259567))

(assert (=> b!1103076 d!312235))

(declare-fun d!312237 () Bool)

(declare-fun lt!373288 () Bool)

(assert (=> d!312237 (= lt!373288 (contains!1902 (list!3853 lt!373141) lt!373133))))

(assert (=> d!312237 (= lt!373288 (contains!1903 (c!187251 lt!373141) lt!373133))))

(assert (=> d!312237 (= (contains!1900 lt!373141 lt!373133) lt!373288)))

(declare-fun bs!259689 () Bool)

(assert (= bs!259689 d!312237))

(assert (=> bs!259689 m!1259259))

(assert (=> bs!259689 m!1259259))

(assert (=> bs!259689 m!1259565))

(declare-fun m!1259569 () Bool)

(assert (=> bs!259689 m!1259569))

(assert (=> b!1103086 d!312237))

(declare-fun d!312239 () Bool)

(declare-fun c!187287 () Bool)

(assert (=> d!312239 (= c!187287 (is-Node!3340 (c!187251 objs!8)))))

(declare-fun e!698934 () Bool)

(assert (=> d!312239 (= (inv!13730 (c!187251 objs!8)) e!698934)))

(declare-fun b!1103249 () Bool)

(declare-fun inv!13734 (Conc!3340) Bool)

(assert (=> b!1103249 (= e!698934 (inv!13734 (c!187251 objs!8)))))

(declare-fun b!1103250 () Bool)

(declare-fun e!698935 () Bool)

(assert (=> b!1103250 (= e!698934 e!698935)))

(declare-fun res!489163 () Bool)

(assert (=> b!1103250 (= res!489163 (not (is-Leaf!5265 (c!187251 objs!8))))))

(assert (=> b!1103250 (=> res!489163 e!698935)))

(declare-fun b!1103251 () Bool)

(declare-fun inv!13735 (Conc!3340) Bool)

(assert (=> b!1103251 (= e!698935 (inv!13735 (c!187251 objs!8)))))

(assert (= (and d!312239 c!187287) b!1103249))

(assert (= (and d!312239 (not c!187287)) b!1103250))

(assert (= (and b!1103250 (not res!489163)) b!1103251))

(declare-fun m!1259579 () Bool)

(assert (=> b!1103249 m!1259579))

(declare-fun m!1259581 () Bool)

(assert (=> b!1103251 m!1259581))

(assert (=> b!1103075 d!312239))

(declare-fun b!1103260 () Bool)

(declare-fun e!698940 () Bool)

(assert (=> b!1103260 (= e!698940 true)))

(declare-fun b!1103262 () Bool)

(declare-fun e!698941 () Bool)

(assert (=> b!1103262 (= e!698941 true)))

(declare-fun b!1103261 () Bool)

(assert (=> b!1103261 (= e!698940 e!698941)))

(assert (=> b!1103101 e!698940))

(assert (= (and b!1103101 (is-Node!3339 (c!187250 (tokens!1396 (_2!6726 lt!373133))))) b!1103260))

(assert (= b!1103261 b!1103262))

(assert (= (and b!1103101 (is-Leaf!5264 (c!187250 (tokens!1396 (_2!6726 lt!373133))))) b!1103261))

(declare-fun b!1103263 () Bool)

(declare-fun e!698942 () Bool)

(assert (=> b!1103263 (= e!698942 true)))

(declare-fun b!1103265 () Bool)

(declare-fun e!698943 () Bool)

(assert (=> b!1103265 (= e!698943 true)))

(declare-fun b!1103264 () Bool)

(assert (=> b!1103264 (= e!698942 e!698943)))

(assert (=> b!1103099 e!698942))

(assert (= (and b!1103099 (is-Node!3339 (c!187250 (tokens!1396 (_2!6726 lt!373133))))) b!1103263))

(assert (= b!1103264 b!1103265))

(assert (= (and b!1103099 (is-Leaf!5264 (c!187250 (tokens!1396 (_2!6726 lt!373133))))) b!1103264))

(declare-fun b!1103277 () Bool)

(declare-fun e!698953 () Bool)

(assert (=> b!1103277 (= e!698953 true)))

(declare-fun b!1103276 () Bool)

(declare-fun e!698952 () Bool)

(assert (=> b!1103276 (= e!698952 e!698953)))

(declare-fun b!1103275 () Bool)

(declare-fun e!698951 () Bool)

(assert (=> b!1103275 (= e!698951 e!698952)))

(assert (=> b!1103098 e!698951))

(assert (= b!1103276 b!1103277))

(assert (= b!1103275 b!1103276))

(assert (= (and b!1103098 (is-Cons!10677 (rules!9124 (_2!6726 lt!373133)))) b!1103275))

(declare-fun order!6537 () Int)

(declare-fun order!6539 () Int)

(declare-fun dynLambda!4714 (Int Int) Int)

(declare-fun dynLambda!4715 (Int Int) Int)

(assert (=> b!1103277 (< (dynLambda!4714 order!6537 (toValue!2914 (transformation!1837 (h!16078 (rules!9124 (_2!6726 lt!373133)))))) (dynLambda!4715 order!6539 lambda!43707))))

(declare-fun order!6541 () Int)

(declare-fun dynLambda!4716 (Int Int) Int)

(assert (=> b!1103277 (< (dynLambda!4716 order!6541 (toChars!2773 (transformation!1837 (h!16078 (rules!9124 (_2!6726 lt!373133)))))) (dynLambda!4715 order!6539 lambda!43707))))

(declare-fun b!1103278 () Bool)

(declare-fun e!698954 () Bool)

(assert (=> b!1103278 (= e!698954 true)))

(declare-fun b!1103280 () Bool)

(declare-fun e!698955 () Bool)

(assert (=> b!1103280 (= e!698955 true)))

(declare-fun b!1103279 () Bool)

(assert (=> b!1103279 (= e!698954 e!698955)))

(assert (=> b!1103097 e!698954))

(assert (= (and b!1103097 (is-Node!3339 (c!187250 (tokens!1396 (_2!6726 lt!373133))))) b!1103278))

(assert (= b!1103279 b!1103280))

(assert (= (and b!1103097 (is-Leaf!5264 (c!187250 (tokens!1396 (_2!6726 lt!373133))))) b!1103279))

(declare-fun b!1103283 () Bool)

(declare-fun e!698958 () Bool)

(assert (=> b!1103283 (= e!698958 true)))

(declare-fun b!1103282 () Bool)

(declare-fun e!698957 () Bool)

(assert (=> b!1103282 (= e!698957 e!698958)))

(declare-fun b!1103281 () Bool)

(declare-fun e!698956 () Bool)

(assert (=> b!1103281 (= e!698956 e!698957)))

(assert (=> b!1103096 e!698956))

(assert (= b!1103282 b!1103283))

(assert (= b!1103281 b!1103282))

(assert (= (and b!1103096 (is-Cons!10677 (rules!9124 (_2!6726 lt!373133)))) b!1103281))

(assert (=> b!1103283 (< (dynLambda!4714 order!6537 (toValue!2914 (transformation!1837 (h!16078 (rules!9124 (_2!6726 lt!373133)))))) (dynLambda!4715 order!6539 lambda!43706))))

(assert (=> b!1103283 (< (dynLambda!4716 order!6541 (toChars!2773 (transformation!1837 (h!16078 (rules!9124 (_2!6726 lt!373133)))))) (dynLambda!4715 order!6539 lambda!43706))))

(declare-fun b!1103293 () Bool)

(declare-fun tp!327196 () Bool)

(declare-fun tp!327195 () Bool)

(declare-fun e!698965 () Bool)

(assert (=> b!1103293 (= e!698965 (and (inv!13730 (left!9252 (c!187251 objs!8))) tp!327196 (inv!13730 (right!9582 (c!187251 objs!8))) tp!327195))))

(declare-fun b!1103295 () Bool)

(declare-fun e!698964 () Bool)

(declare-fun tp!327197 () Bool)

(assert (=> b!1103295 (= e!698964 tp!327197)))

(declare-fun b!1103294 () Bool)

(declare-fun inv!13738 (IArray!6685) Bool)

(assert (=> b!1103294 (= e!698965 (and (inv!13738 (xs!6033 (c!187251 objs!8))) e!698964))))

(assert (=> b!1103075 (= tp!327185 (and (inv!13730 (c!187251 objs!8)) e!698965))))

(assert (= (and b!1103075 (is-Node!3340 (c!187251 objs!8))) b!1103293))

(assert (= b!1103294 b!1103295))

(assert (= (and b!1103075 (is-Leaf!5265 (c!187251 objs!8))) b!1103294))

(declare-fun m!1259599 () Bool)

(assert (=> b!1103293 m!1259599))

(declare-fun m!1259601 () Bool)

(assert (=> b!1103293 m!1259601))

(declare-fun m!1259603 () Bool)

(assert (=> b!1103294 m!1259603))

(assert (=> b!1103075 m!1259281))

(declare-fun b!1103298 () Bool)

(declare-fun e!698968 () Bool)

(assert (=> b!1103298 (= e!698968 true)))

(declare-fun b!1103297 () Bool)

(declare-fun e!698967 () Bool)

(assert (=> b!1103297 (= e!698967 e!698968)))

(declare-fun b!1103296 () Bool)

(declare-fun e!698966 () Bool)

(assert (=> b!1103296 (= e!698966 e!698967)))

(assert (=> b!1103100 e!698966))

(assert (= b!1103297 b!1103298))

(assert (= b!1103296 b!1103297))

(assert (= (and b!1103100 (is-Cons!10677 (rules!9124 (_2!6726 lt!373133)))) b!1103296))

(assert (=> b!1103298 (< (dynLambda!4714 order!6537 (toValue!2914 (transformation!1837 (h!16078 (rules!9124 (_2!6726 lt!373133)))))) (dynLambda!4715 order!6539 lambda!43708))))

(assert (=> b!1103298 (< (dynLambda!4716 order!6541 (toChars!2773 (transformation!1837 (h!16078 (rules!9124 (_2!6726 lt!373133)))))) (dynLambda!4715 order!6539 lambda!43708))))

(declare-fun b_lambda!32457 () Bool)

(assert (= b_lambda!32447 (or b!1103073 b_lambda!32457)))

(declare-fun bs!259693 () Bool)

(declare-fun d!312253 () Bool)

(assert (= bs!259693 (and d!312253 b!1103073)))

(assert (=> bs!259693 (= (dynLambda!4712 lambda!43708 (h!16079 lt!373137)) (> (_1!6726 (h!16079 lt!373137)) (_1!6726 lt!373133)))))

(assert (=> b!1103229 d!312253))

(declare-fun b_lambda!32459 () Bool)

(assert (= b_lambda!32441 (or start!95028 b_lambda!32459)))

(declare-fun bs!259694 () Bool)

(declare-fun d!312255 () Bool)

(assert (= bs!259694 (and d!312255 start!95028)))

(declare-fun usesJsonRules!0 (PrintableTokens!390) Bool)

(assert (=> bs!259694 (= (dynLambda!4712 lambda!43705 (h!16079 lt!373144)) (usesJsonRules!0 (_2!6726 (h!16079 lt!373144))))))

(declare-fun m!1259605 () Bool)

(assert (=> bs!259694 m!1259605))

(assert (=> b!1103183 d!312255))

(declare-fun b_lambda!32461 () Bool)

(assert (= b_lambda!32445 (or b!1103073 b_lambda!32461)))

(declare-fun bs!259695 () Bool)

(declare-fun d!312257 () Bool)

(assert (= bs!259695 (and d!312257 b!1103073)))

(assert (=> bs!259695 (= (dynLambda!4712 lambda!43708 lt!373133) (> (_1!6726 lt!373133) (_1!6726 lt!373133)))))

(assert (=> d!312199 d!312257))

(declare-fun b_lambda!32463 () Bool)

(assert (= b_lambda!32435 (or b!1103073 b_lambda!32463)))

(declare-fun bs!259696 () Bool)

(declare-fun d!312259 () Bool)

(assert (= bs!259696 (and d!312259 b!1103073)))

(assert (=> bs!259696 (= (dynLambda!4712 lambda!43706 lt!373133) (< (_1!6726 lt!373133) (_1!6726 lt!373133)))))

(assert (=> d!312151 d!312259))

(declare-fun b_lambda!32465 () Bool)

(assert (= b_lambda!32451 (or b!1103073 b_lambda!32465)))

(assert (=> d!312233 d!312259))

(declare-fun b_lambda!32467 () Bool)

(assert (= b_lambda!32443 (or b!1103073 b_lambda!32467)))

(declare-fun bs!259697 () Bool)

(declare-fun d!312261 () Bool)

(assert (= bs!259697 (and d!312261 b!1103073)))

(assert (=> bs!259697 (= (dynLambda!4712 lambda!43706 (h!16079 lt!373137)) (< (_1!6726 (h!16079 lt!373137)) (_1!6726 lt!373133)))))

(assert (=> b!1103215 d!312261))

(declare-fun b_lambda!32469 () Bool)

(assert (= b_lambda!32437 (or start!95028 b_lambda!32469)))

(declare-fun bs!259698 () Bool)

(declare-fun d!312263 () Bool)

(assert (= bs!259698 (and d!312263 start!95028)))

(assert (=> bs!259698 (= (dynLambda!4712 lambda!43705 (h!16079 lt!373137)) (usesJsonRules!0 (_2!6726 (h!16079 lt!373137))))))

(declare-fun m!1259607 () Bool)

(assert (=> bs!259698 m!1259607))

(assert (=> b!1103180 d!312263))

(declare-fun b_lambda!32471 () Bool)

(assert (= b_lambda!32449 (or b!1103073 b_lambda!32471)))

(assert (=> d!312229 d!312257))

(push 1)

(assert (not d!312157))

(assert (not b!1103265))

(assert (not bm!80461))

(assert (not b!1103249))

(assert (not d!312219))

(assert (not bm!80460))

(assert (not b!1103189))

(assert (not d!312181))

(assert (not b!1103219))

(assert (not d!312231))

(assert (not d!312235))

(assert (not b!1103280))

(assert (not d!312233))

(assert (not d!312151))

(assert (not d!312191))

(assert (not b!1103181))

(assert (not b!1103170))

(assert (not b!1103186))

(assert (not d!312217))

(assert (not d!312171))

(assert (not b!1103293))

(assert (not d!312197))

(assert (not b!1103260))

(assert (not b!1103281))

(assert (not b!1103224))

(assert (not d!312205))

(assert (not b_lambda!32471))

(assert (not b!1103222))

(assert (not b_lambda!32469))

(assert (not b!1103184))

(assert (not d!312225))

(assert (not b!1103232))

(assert (not d!312215))

(assert (not d!312237))

(assert (not d!312187))

(assert (not b_lambda!32465))

(assert (not d!312153))

(assert (not d!312167))

(assert (not b!1103226))

(assert (not d!312159))

(assert (not b!1103231))

(assert (not d!312227))

(assert (not b!1103262))

(assert (not b!1103239))

(assert (not d!312163))

(assert (not d!312223))

(assert (not d!312155))

(assert (not b!1103275))

(assert (not bs!259694))

(assert (not d!312229))

(assert (not d!312201))

(assert (not b!1103227))

(assert (not b_lambda!32457))

(assert (not b!1103075))

(assert (not b!1103251))

(assert (not b!1103173))

(assert (not b!1103278))

(assert (not d!312169))

(assert (not b_lambda!32459))

(assert (not bs!259698))

(assert (not b_lambda!32467))

(assert (not b!1103296))

(assert (not d!312177))

(assert (not b!1103185))

(assert (not d!312209))

(assert (not b!1103263))

(assert (not b!1103218))

(assert (not b!1103295))

(assert (not b!1103212))

(assert (not d!312179))

(assert (not b!1103294))

(assert (not b_lambda!32463))

(assert (not d!312221))

(assert (not b!1103213))

(assert (not b_lambda!32461))

(assert (not d!312199))

(assert (not b!1103195))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


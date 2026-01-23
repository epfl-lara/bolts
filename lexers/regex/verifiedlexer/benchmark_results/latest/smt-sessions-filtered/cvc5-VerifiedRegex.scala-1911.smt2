; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!94360 () Bool)

(assert start!94360)

(declare-fun bs!259271 () Bool)

(declare-fun b!1099236 () Bool)

(assert (= bs!259271 (and b!1099236 start!94360)))

(declare-fun lambda!43156 () Int)

(declare-fun lambda!43155 () Int)

(assert (=> bs!259271 (not (= lambda!43156 lambda!43155))))

(declare-fun b!1099250 () Bool)

(declare-fun e!696078 () Bool)

(assert (=> b!1099250 (= e!696078 true)))

(declare-fun b!1099249 () Bool)

(declare-fun e!696077 () Bool)

(assert (=> b!1099249 (= e!696077 e!696078)))

(assert (=> b!1099236 e!696077))

(assert (= b!1099249 b!1099250))

(assert (= b!1099236 b!1099249))

(declare-fun lambda!43157 () Int)

(assert (=> bs!259271 (not (= lambda!43157 lambda!43155))))

(assert (=> b!1099236 (not (= lambda!43157 lambda!43156))))

(declare-fun b!1099252 () Bool)

(declare-fun e!696080 () Bool)

(assert (=> b!1099252 (= e!696080 true)))

(declare-fun b!1099251 () Bool)

(declare-fun e!696079 () Bool)

(assert (=> b!1099251 (= e!696079 e!696080)))

(assert (=> b!1099236 e!696079))

(assert (= b!1099251 b!1099252))

(assert (= b!1099236 b!1099251))

(declare-fun lambda!43158 () Int)

(assert (=> bs!259271 (not (= lambda!43158 lambda!43155))))

(assert (=> b!1099236 (not (= lambda!43158 lambda!43156))))

(assert (=> b!1099236 (not (= lambda!43158 lambda!43157))))

(declare-fun b!1099254 () Bool)

(declare-fun e!696082 () Bool)

(assert (=> b!1099254 (= e!696082 true)))

(declare-fun b!1099253 () Bool)

(declare-fun e!696081 () Bool)

(assert (=> b!1099253 (= e!696081 e!696082)))

(assert (=> b!1099236 e!696081))

(assert (= b!1099253 b!1099254))

(assert (= b!1099236 b!1099253))

(declare-fun b!1099230 () Bool)

(declare-fun e!696069 () Bool)

(declare-fun e!696065 () Bool)

(assert (=> b!1099230 (= e!696069 (not e!696065))))

(declare-fun res!487747 () Bool)

(assert (=> b!1099230 (=> res!487747 e!696065)))

(declare-datatypes ((List!10587 0))(
  ( (Nil!10571) (Cons!10571 (h!15972 (_ BitVec 16)) (t!103753 List!10587)) )
))
(declare-datatypes ((TokenValue!1877 0))(
  ( (FloatLiteralValue!3754 (text!13584 List!10587)) (TokenValueExt!1876 (__x!7459 Int)) (Broken!9385 (value!59542 List!10587)) (Object!1892) (End!1877) (Def!1877) (Underscore!1877) (Match!1877) (Else!1877) (Error!1877) (Case!1877) (If!1877) (Extends!1877) (Abstract!1877) (Class!1877) (Val!1877) (DelimiterValue!3754 (del!1937 List!10587)) (KeywordValue!1883 (value!59543 List!10587)) (CommentValue!3754 (value!59544 List!10587)) (WhitespaceValue!3754 (value!59545 List!10587)) (IndentationValue!1877 (value!59546 List!10587)) (String!12956) (Int32!1877) (Broken!9386 (value!59547 List!10587)) (Boolean!1878) (Unit!16173) (OperatorValue!1880 (op!1937 List!10587)) (IdentifierValue!3754 (value!59548 List!10587)) (IdentifierValue!3755 (value!59549 List!10587)) (WhitespaceValue!3755 (value!59550 List!10587)) (True!3754) (False!3754) (Broken!9387 (value!59551 List!10587)) (Broken!9388 (value!59552 List!10587)) (True!3755) (RightBrace!1877) (RightBracket!1877) (Colon!1877) (Null!1877) (Comma!1877) (LeftBracket!1877) (False!3755) (LeftBrace!1877) (ImaginaryLiteralValue!1877 (text!13585 List!10587)) (StringLiteralValue!5631 (value!59553 List!10587)) (EOFValue!1877 (value!59554 List!10587)) (IdentValue!1877 (value!59555 List!10587)) (DelimiterValue!3755 (value!59556 List!10587)) (DedentValue!1877 (value!59557 List!10587)) (NewLineValue!1877 (value!59558 List!10587)) (IntegerValue!5631 (value!59559 (_ BitVec 32)) (text!13586 List!10587)) (IntegerValue!5632 (value!59560 Int) (text!13587 List!10587)) (Times!1877) (Or!1877) (Equal!1877) (Minus!1877) (Broken!9389 (value!59561 List!10587)) (And!1877) (Div!1877) (LessEqual!1877) (Mod!1877) (Concat!4957) (Not!1877) (Plus!1877) (SpaceValue!1877 (value!59562 List!10587)) (IntegerValue!5633 (value!59563 Int) (text!13588 List!10587)) (StringLiteralValue!5632 (text!13589 List!10587)) (FloatLiteralValue!3755 (text!13590 List!10587)) (BytesLiteralValue!1877 (value!59564 List!10587)) (CommentValue!3755 (value!59565 List!10587)) (StringLiteralValue!5633 (value!59566 List!10587)) (ErrorTokenValue!1877 (msg!1938 List!10587)) )
))
(declare-datatypes ((Regex!3080 0))(
  ( (ElementMatch!3080 (c!186575 (_ BitVec 16))) (Concat!4958 (regOne!6672 Regex!3080) (regTwo!6672 Regex!3080)) (EmptyExpr!3080) (Star!3080 (reg!3409 Regex!3080)) (EmptyLang!3080) (Union!3080 (regOne!6673 Regex!3080) (regTwo!6673 Regex!3080)) )
))
(declare-datatypes ((String!12957 0))(
  ( (String!12958 (value!59567 String)) )
))
(declare-datatypes ((IArray!6525 0))(
  ( (IArray!6526 (innerList!3320 List!10587)) )
))
(declare-datatypes ((Conc!3260 0))(
  ( (Node!3260 (left!9119 Conc!3260) (right!9449 Conc!3260) (csize!6750 Int) (cheight!3471 Int)) (Leaf!5172 (xs!5953 IArray!6525) (csize!6751 Int)) (Empty!3260) )
))
(declare-datatypes ((BalanceConc!6534 0))(
  ( (BalanceConc!6535 (c!186576 Conc!3260)) )
))
(declare-datatypes ((TokenValueInjection!3454 0))(
  ( (TokenValueInjection!3455 (toValue!2888 Int) (toChars!2747 Int)) )
))
(declare-datatypes ((Rule!3422 0))(
  ( (Rule!3423 (regex!1811 Regex!3080) (tag!2073 String!12957) (isSeparator!1811 Bool) (transformation!1811 TokenValueInjection!3454)) )
))
(declare-datatypes ((Token!3288 0))(
  ( (Token!3289 (value!59568 TokenValue!1877) (rule!3234 Rule!3422) (size!8199 Int) (originalCharacters!2367 List!10587)) )
))
(declare-datatypes ((List!10588 0))(
  ( (Nil!10572) (Cons!10572 (h!15973 Token!3288) (t!103754 List!10588)) )
))
(declare-datatypes ((IArray!6527 0))(
  ( (IArray!6528 (innerList!3321 List!10588)) )
))
(declare-datatypes ((Conc!3261 0))(
  ( (Node!3261 (left!9120 Conc!3261) (right!9450 Conc!3261) (csize!6752 Int) (cheight!3472 Int)) (Leaf!5173 (xs!5954 IArray!6527) (csize!6753 Int)) (Empty!3261) )
))
(declare-datatypes ((List!10589 0))(
  ( (Nil!10573) (Cons!10573 (h!15974 Rule!3422) (t!103755 List!10589)) )
))
(declare-datatypes ((BalanceConc!6536 0))(
  ( (BalanceConc!6537 (c!186577 Conc!3261)) )
))
(declare-datatypes ((PrintableTokens!338 0))(
  ( (PrintableTokens!339 (rules!9098 List!10589) (tokens!1370 BalanceConc!6536)) )
))
(declare-datatypes ((tuple2!11748 0))(
  ( (tuple2!11749 (_1!6700 Int) (_2!6700 PrintableTokens!338)) )
))
(declare-datatypes ((List!10590 0))(
  ( (Nil!10574) (Cons!10574 (h!15975 tuple2!11748) (t!103756 List!10590)) )
))
(declare-datatypes ((IArray!6529 0))(
  ( (IArray!6530 (innerList!3322 List!10590)) )
))
(declare-datatypes ((Conc!3262 0))(
  ( (Node!3262 (left!9121 Conc!3262) (right!9451 Conc!3262) (csize!6754 Int) (cheight!3473 Int)) (Leaf!5174 (xs!5955 IArray!6529) (csize!6755 Int)) (Empty!3262) )
))
(declare-datatypes ((BalanceConc!6538 0))(
  ( (BalanceConc!6539 (c!186578 Conc!3262)) )
))
(declare-fun lt!371338 () BalanceConc!6538)

(declare-fun lt!371328 () Int)

(declare-fun size!8200 (BalanceConc!6538) Int)

(assert (=> b!1099230 (= res!487747 (>= (size!8200 lt!371338) lt!371328))))

(declare-fun e!696066 () Bool)

(assert (=> b!1099230 e!696066))

(declare-fun res!487745 () Bool)

(assert (=> b!1099230 (=> res!487745 e!696066)))

(declare-fun lt!371336 () List!10590)

(declare-fun isEmpty!6685 (List!10590) Bool)

(assert (=> b!1099230 (= res!487745 (isEmpty!6685 lt!371336))))

(declare-datatypes ((Unit!16174 0))(
  ( (Unit!16175) )
))
(declare-fun lt!371339 () Unit!16174)

(declare-fun lemmaNotForallFilterShorter!50 (List!10590 Int) Unit!16174)

(assert (=> b!1099230 (= lt!371339 (lemmaNotForallFilterShorter!50 lt!371336 lambda!43156))))

(declare-fun objs!8 () BalanceConc!6538)

(declare-fun list!3806 (BalanceConc!6538) List!10590)

(assert (=> b!1099230 (= lt!371336 (list!3806 objs!8))))

(declare-fun lt!371332 () Unit!16174)

(declare-fun e!696071 () Unit!16174)

(assert (=> b!1099230 (= lt!371332 e!696071)))

(declare-fun c!186572 () Bool)

(declare-fun forall!2414 (BalanceConc!6538 Int) Bool)

(assert (=> b!1099230 (= c!186572 (forall!2414 objs!8 lambda!43156))))

(declare-fun b!1099231 () Bool)

(declare-fun err!2548 () Unit!16174)

(assert (=> b!1099231 (= e!696071 err!2548)))

(declare-fun lt!371342 () tuple2!11748)

(declare-fun lt!371335 () Unit!16174)

(declare-fun forallContained!511 (List!10590 Int tuple2!11748) Unit!16174)

(assert (=> b!1099231 (= lt!371335 (forallContained!511 (list!3806 objs!8) lambda!43156 lt!371342))))

(assert (=> b!1099231 true))

(declare-fun b!1099232 () Bool)

(declare-fun lt!371334 () Bool)

(assert (=> b!1099232 (= e!696065 (not lt!371334))))

(declare-fun lt!371333 () Unit!16174)

(declare-fun e!696068 () Unit!16174)

(assert (=> b!1099232 (= lt!371333 e!696068)))

(declare-fun c!186574 () Bool)

(assert (=> b!1099232 (= c!186574 lt!371334)))

(declare-fun lt!371330 () BalanceConc!6538)

(declare-fun contains!1838 (BalanceConc!6538 tuple2!11748) Bool)

(assert (=> b!1099232 (= lt!371334 (contains!1838 lt!371330 lt!371342))))

(declare-fun b!1099233 () Bool)

(declare-fun size!8201 (List!10590) Int)

(declare-fun filter!316 (List!10590 Int) List!10590)

(assert (=> b!1099233 (= e!696066 (< (size!8201 (filter!316 lt!371336 lambda!43156)) (size!8201 lt!371336)))))

(declare-fun b!1099234 () Bool)

(declare-fun e!696072 () Bool)

(declare-fun e!696070 () Bool)

(assert (=> b!1099234 (= e!696072 e!696070)))

(declare-fun res!487746 () Bool)

(assert (=> b!1099234 (=> (not res!487746) (not e!696070))))

(assert (=> b!1099234 (= res!487746 (> lt!371328 1))))

(assert (=> b!1099234 (= lt!371328 (size!8200 objs!8))))

(declare-fun e!696067 () Bool)

(assert (=> b!1099236 (= e!696070 e!696067)))

(declare-fun res!487744 () Bool)

(assert (=> b!1099236 (=> (not res!487744) (not e!696067))))

(assert (=> b!1099236 (= res!487744 (contains!1838 objs!8 lt!371342))))

(declare-fun filter!317 (BalanceConc!6538 Int) BalanceConc!6538)

(assert (=> b!1099236 (= lt!371330 (filter!317 objs!8 lambda!43158))))

(declare-fun lt!371341 () BalanceConc!6538)

(assert (=> b!1099236 (= lt!371341 (filter!317 objs!8 lambda!43157))))

(assert (=> b!1099236 (= lt!371338 (filter!317 objs!8 lambda!43156))))

(declare-fun apply!2116 (BalanceConc!6538 Int) tuple2!11748)

(assert (=> b!1099236 (= lt!371342 (apply!2116 objs!8 (ite (>= lt!371328 0) (div lt!371328 2) (- (div (- lt!371328) 2)))))))

(declare-fun b!1099237 () Bool)

(declare-fun Unit!16176 () Unit!16174)

(assert (=> b!1099237 (= e!696071 Unit!16176)))

(declare-fun b!1099238 () Bool)

(declare-fun e!696063 () Unit!16174)

(declare-fun Unit!16177 () Unit!16174)

(assert (=> b!1099238 (= e!696063 Unit!16177)))

(declare-fun b!1099239 () Bool)

(declare-fun err!2549 () Unit!16174)

(assert (=> b!1099239 (= e!696063 err!2549)))

(declare-fun lt!371331 () Unit!16174)

(assert (=> b!1099239 (= lt!371331 (forallContained!511 (list!3806 lt!371338) lambda!43156 lt!371342))))

(assert (=> b!1099239 true))

(declare-fun b!1099240 () Bool)

(declare-fun e!696064 () Bool)

(declare-fun tp!326849 () Bool)

(declare-fun inv!13576 (Conc!3262) Bool)

(assert (=> b!1099240 (= e!696064 (and (inv!13576 (c!186578 objs!8)) tp!326849))))

(declare-fun b!1099241 () Bool)

(declare-fun err!2547 () Unit!16174)

(assert (=> b!1099241 (= e!696068 err!2547)))

(declare-fun lt!371337 () Unit!16174)

(assert (=> b!1099241 (= lt!371337 (forallContained!511 (list!3806 lt!371330) lambda!43158 lt!371342))))

(assert (=> b!1099241 true))

(declare-fun b!1099242 () Bool)

(assert (=> b!1099242 (= e!696067 e!696069)))

(declare-fun res!487743 () Bool)

(assert (=> b!1099242 (=> (not res!487743) (not e!696069))))

(declare-fun lt!371340 () Bool)

(assert (=> b!1099242 (= res!487743 (not lt!371340))))

(declare-fun lt!371329 () Unit!16174)

(assert (=> b!1099242 (= lt!371329 e!696063)))

(declare-fun c!186573 () Bool)

(assert (=> b!1099242 (= c!186573 lt!371340)))

(assert (=> b!1099242 (= lt!371340 (contains!1838 lt!371338 lt!371342))))

(declare-fun b!1099235 () Bool)

(declare-fun Unit!16178 () Unit!16174)

(assert (=> b!1099235 (= e!696068 Unit!16178)))

(declare-fun res!487742 () Bool)

(assert (=> start!94360 (=> (not res!487742) (not e!696072))))

(assert (=> start!94360 (= res!487742 (forall!2414 objs!8 lambda!43155))))

(assert (=> start!94360 e!696072))

(declare-fun inv!13577 (BalanceConc!6538) Bool)

(assert (=> start!94360 (and (inv!13577 objs!8) e!696064)))

(assert (= (and start!94360 res!487742) b!1099234))

(assert (= (and b!1099234 res!487746) b!1099236))

(assert (= (and b!1099236 res!487744) b!1099242))

(assert (= (and b!1099242 c!186573) b!1099239))

(assert (= (and b!1099242 (not c!186573)) b!1099238))

(assert (= (and b!1099242 res!487743) b!1099230))

(assert (= (and b!1099230 c!186572) b!1099231))

(assert (= (and b!1099230 (not c!186572)) b!1099237))

(assert (= (and b!1099230 (not res!487745)) b!1099233))

(assert (= (and b!1099230 (not res!487747)) b!1099232))

(assert (= (and b!1099232 c!186574) b!1099241))

(assert (= (and b!1099232 (not c!186574)) b!1099235))

(assert (= start!94360 b!1099240))

(declare-fun m!1255023 () Bool)

(assert (=> b!1099232 m!1255023))

(declare-fun m!1255025 () Bool)

(assert (=> b!1099242 m!1255025))

(declare-fun m!1255027 () Bool)

(assert (=> b!1099234 m!1255027))

(declare-fun m!1255029 () Bool)

(assert (=> b!1099239 m!1255029))

(assert (=> b!1099239 m!1255029))

(declare-fun m!1255031 () Bool)

(assert (=> b!1099239 m!1255031))

(declare-fun m!1255033 () Bool)

(assert (=> b!1099233 m!1255033))

(assert (=> b!1099233 m!1255033))

(declare-fun m!1255035 () Bool)

(assert (=> b!1099233 m!1255035))

(declare-fun m!1255037 () Bool)

(assert (=> b!1099233 m!1255037))

(declare-fun m!1255039 () Bool)

(assert (=> b!1099240 m!1255039))

(declare-fun m!1255041 () Bool)

(assert (=> b!1099230 m!1255041))

(declare-fun m!1255043 () Bool)

(assert (=> b!1099230 m!1255043))

(declare-fun m!1255045 () Bool)

(assert (=> b!1099230 m!1255045))

(declare-fun m!1255047 () Bool)

(assert (=> b!1099230 m!1255047))

(declare-fun m!1255049 () Bool)

(assert (=> b!1099230 m!1255049))

(declare-fun m!1255051 () Bool)

(assert (=> b!1099241 m!1255051))

(assert (=> b!1099241 m!1255051))

(declare-fun m!1255053 () Bool)

(assert (=> b!1099241 m!1255053))

(assert (=> b!1099231 m!1255041))

(assert (=> b!1099231 m!1255041))

(declare-fun m!1255055 () Bool)

(assert (=> b!1099231 m!1255055))

(declare-fun m!1255057 () Bool)

(assert (=> start!94360 m!1255057))

(declare-fun m!1255059 () Bool)

(assert (=> start!94360 m!1255059))

(declare-fun m!1255061 () Bool)

(assert (=> b!1099236 m!1255061))

(declare-fun m!1255063 () Bool)

(assert (=> b!1099236 m!1255063))

(declare-fun m!1255065 () Bool)

(assert (=> b!1099236 m!1255065))

(declare-fun m!1255067 () Bool)

(assert (=> b!1099236 m!1255067))

(declare-fun m!1255069 () Bool)

(assert (=> b!1099236 m!1255069))

(push 1)

(assert (not b!1099239))

(assert (not b!1099253))

(assert (not start!94360))

(assert (not b!1099236))

(assert (not b!1099250))

(assert (not b!1099232))

(assert (not b!1099234))

(assert (not b!1099231))

(assert (not b!1099240))

(assert (not b!1099249))

(assert (not b!1099252))

(assert (not b!1099233))

(assert (not b!1099242))

(assert (not b!1099230))

(assert (not b!1099241))

(assert (not b!1099254))

(assert (not b!1099251))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!310680 () Bool)

(declare-fun e!696127 () Bool)

(assert (=> d!310680 e!696127))

(declare-fun res!487770 () Bool)

(assert (=> d!310680 (=> (not res!487770) (not e!696127))))

(declare-fun isBalanced!903 (Conc!3262) Bool)

(declare-fun filter!320 (Conc!3262 Int) Conc!3262)

(assert (=> d!310680 (= res!487770 (isBalanced!903 (filter!320 (c!186578 objs!8) lambda!43158)))))

(declare-fun lt!371398 () BalanceConc!6538)

(assert (=> d!310680 (= lt!371398 (BalanceConc!6539 (filter!320 (c!186578 objs!8) lambda!43158)))))

(assert (=> d!310680 (= (filter!317 objs!8 lambda!43158) lt!371398)))

(declare-fun b!1099310 () Bool)

(assert (=> b!1099310 (= e!696127 (= (list!3806 lt!371398) (filter!316 (list!3806 objs!8) lambda!43158)))))

(assert (= (and d!310680 res!487770) b!1099310))

(declare-fun m!1255129 () Bool)

(assert (=> d!310680 m!1255129))

(assert (=> d!310680 m!1255129))

(declare-fun m!1255131 () Bool)

(assert (=> d!310680 m!1255131))

(declare-fun m!1255133 () Bool)

(assert (=> b!1099310 m!1255133))

(assert (=> b!1099310 m!1255041))

(assert (=> b!1099310 m!1255041))

(declare-fun m!1255135 () Bool)

(assert (=> b!1099310 m!1255135))

(assert (=> b!1099236 d!310680))

(declare-fun d!310686 () Bool)

(declare-fun e!696128 () Bool)

(assert (=> d!310686 e!696128))

(declare-fun res!487771 () Bool)

(assert (=> d!310686 (=> (not res!487771) (not e!696128))))

(assert (=> d!310686 (= res!487771 (isBalanced!903 (filter!320 (c!186578 objs!8) lambda!43156)))))

(declare-fun lt!371399 () BalanceConc!6538)

(assert (=> d!310686 (= lt!371399 (BalanceConc!6539 (filter!320 (c!186578 objs!8) lambda!43156)))))

(assert (=> d!310686 (= (filter!317 objs!8 lambda!43156) lt!371399)))

(declare-fun b!1099311 () Bool)

(assert (=> b!1099311 (= e!696128 (= (list!3806 lt!371399) (filter!316 (list!3806 objs!8) lambda!43156)))))

(assert (= (and d!310686 res!487771) b!1099311))

(declare-fun m!1255137 () Bool)

(assert (=> d!310686 m!1255137))

(assert (=> d!310686 m!1255137))

(declare-fun m!1255139 () Bool)

(assert (=> d!310686 m!1255139))

(declare-fun m!1255141 () Bool)

(assert (=> b!1099311 m!1255141))

(assert (=> b!1099311 m!1255041))

(assert (=> b!1099311 m!1255041))

(declare-fun m!1255143 () Bool)

(assert (=> b!1099311 m!1255143))

(assert (=> b!1099236 d!310686))

(declare-fun d!310688 () Bool)

(declare-fun e!696130 () Bool)

(assert (=> d!310688 e!696130))

(declare-fun res!487773 () Bool)

(assert (=> d!310688 (=> (not res!487773) (not e!696130))))

(assert (=> d!310688 (= res!487773 (isBalanced!903 (filter!320 (c!186578 objs!8) lambda!43157)))))

(declare-fun lt!371401 () BalanceConc!6538)

(assert (=> d!310688 (= lt!371401 (BalanceConc!6539 (filter!320 (c!186578 objs!8) lambda!43157)))))

(assert (=> d!310688 (= (filter!317 objs!8 lambda!43157) lt!371401)))

(declare-fun b!1099313 () Bool)

(assert (=> b!1099313 (= e!696130 (= (list!3806 lt!371401) (filter!316 (list!3806 objs!8) lambda!43157)))))

(assert (= (and d!310688 res!487773) b!1099313))

(declare-fun m!1255145 () Bool)

(assert (=> d!310688 m!1255145))

(assert (=> d!310688 m!1255145))

(declare-fun m!1255147 () Bool)

(assert (=> d!310688 m!1255147))

(declare-fun m!1255149 () Bool)

(assert (=> b!1099313 m!1255149))

(assert (=> b!1099313 m!1255041))

(assert (=> b!1099313 m!1255041))

(declare-fun m!1255151 () Bool)

(assert (=> b!1099313 m!1255151))

(assert (=> b!1099236 d!310688))

(declare-fun d!310690 () Bool)

(declare-fun lt!371406 () tuple2!11748)

(declare-fun apply!2118 (List!10590 Int) tuple2!11748)

(assert (=> d!310690 (= lt!371406 (apply!2118 (list!3806 objs!8) (ite (>= lt!371328 0) (div lt!371328 2) (- (div (- lt!371328) 2)))))))

(declare-fun apply!2119 (Conc!3262 Int) tuple2!11748)

(assert (=> d!310690 (= lt!371406 (apply!2119 (c!186578 objs!8) (ite (>= lt!371328 0) (div lt!371328 2) (- (div (- lt!371328) 2)))))))

(declare-fun e!696135 () Bool)

(assert (=> d!310690 e!696135))

(declare-fun res!487778 () Bool)

(assert (=> d!310690 (=> (not res!487778) (not e!696135))))

(assert (=> d!310690 (= res!487778 (<= 0 (ite (>= lt!371328 0) (div lt!371328 2) (- (div (- lt!371328) 2)))))))

(assert (=> d!310690 (= (apply!2116 objs!8 (ite (>= lt!371328 0) (div lt!371328 2) (- (div (- lt!371328) 2)))) lt!371406)))

(declare-fun b!1099318 () Bool)

(assert (=> b!1099318 (= e!696135 (< (ite (>= lt!371328 0) (div lt!371328 2) (- (div (- lt!371328) 2))) (size!8200 objs!8)))))

(assert (= (and d!310690 res!487778) b!1099318))

(assert (=> d!310690 m!1255041))

(assert (=> d!310690 m!1255041))

(declare-fun m!1255157 () Bool)

(assert (=> d!310690 m!1255157))

(declare-fun m!1255159 () Bool)

(assert (=> d!310690 m!1255159))

(assert (=> b!1099318 m!1255027))

(assert (=> b!1099236 d!310690))

(declare-fun d!310694 () Bool)

(declare-fun lt!371410 () Bool)

(declare-fun contains!1840 (List!10590 tuple2!11748) Bool)

(assert (=> d!310694 (= lt!371410 (contains!1840 (list!3806 objs!8) lt!371342))))

(declare-fun contains!1841 (Conc!3262 tuple2!11748) Bool)

(assert (=> d!310694 (= lt!371410 (contains!1841 (c!186578 objs!8) lt!371342))))

(assert (=> d!310694 (= (contains!1838 objs!8 lt!371342) lt!371410)))

(declare-fun bs!259277 () Bool)

(assert (= bs!259277 d!310694))

(assert (=> bs!259277 m!1255041))

(assert (=> bs!259277 m!1255041))

(declare-fun m!1255171 () Bool)

(assert (=> bs!259277 m!1255171))

(declare-fun m!1255173 () Bool)

(assert (=> bs!259277 m!1255173))

(assert (=> b!1099236 d!310694))

(declare-fun d!310700 () Bool)

(declare-fun lt!371411 () Bool)

(assert (=> d!310700 (= lt!371411 (contains!1840 (list!3806 lt!371330) lt!371342))))

(assert (=> d!310700 (= lt!371411 (contains!1841 (c!186578 lt!371330) lt!371342))))

(assert (=> d!310700 (= (contains!1838 lt!371330 lt!371342) lt!371411)))

(declare-fun bs!259278 () Bool)

(assert (= bs!259278 d!310700))

(assert (=> bs!259278 m!1255051))

(assert (=> bs!259278 m!1255051))

(declare-fun m!1255175 () Bool)

(assert (=> bs!259278 m!1255175))

(declare-fun m!1255177 () Bool)

(assert (=> bs!259278 m!1255177))

(assert (=> b!1099232 d!310700))

(declare-fun d!310702 () Bool)

(declare-fun lt!371414 () Bool)

(declare-fun forall!2416 (List!10590 Int) Bool)

(assert (=> d!310702 (= lt!371414 (forall!2416 (list!3806 objs!8) lambda!43155))))

(declare-fun forall!2417 (Conc!3262 Int) Bool)

(assert (=> d!310702 (= lt!371414 (forall!2417 (c!186578 objs!8) lambda!43155))))

(assert (=> d!310702 (= (forall!2414 objs!8 lambda!43155) lt!371414)))

(declare-fun bs!259279 () Bool)

(assert (= bs!259279 d!310702))

(assert (=> bs!259279 m!1255041))

(assert (=> bs!259279 m!1255041))

(declare-fun m!1255179 () Bool)

(assert (=> bs!259279 m!1255179))

(declare-fun m!1255181 () Bool)

(assert (=> bs!259279 m!1255181))

(assert (=> start!94360 d!310702))

(declare-fun d!310704 () Bool)

(assert (=> d!310704 (= (inv!13577 objs!8) (isBalanced!903 (c!186578 objs!8)))))

(declare-fun bs!259280 () Bool)

(assert (= bs!259280 d!310704))

(declare-fun m!1255183 () Bool)

(assert (=> bs!259280 m!1255183))

(assert (=> start!94360 d!310704))

(declare-fun d!310706 () Bool)

(declare-fun lt!371417 () Int)

(assert (=> d!310706 (>= lt!371417 0)))

(declare-fun e!696139 () Int)

(assert (=> d!310706 (= lt!371417 e!696139)))

(declare-fun c!186595 () Bool)

(assert (=> d!310706 (= c!186595 (is-Nil!10574 (filter!316 lt!371336 lambda!43156)))))

(assert (=> d!310706 (= (size!8201 (filter!316 lt!371336 lambda!43156)) lt!371417)))

(declare-fun b!1099324 () Bool)

(assert (=> b!1099324 (= e!696139 0)))

(declare-fun b!1099325 () Bool)

(assert (=> b!1099325 (= e!696139 (+ 1 (size!8201 (t!103756 (filter!316 lt!371336 lambda!43156)))))))

(assert (= (and d!310706 c!186595) b!1099324))

(assert (= (and d!310706 (not c!186595)) b!1099325))

(declare-fun m!1255185 () Bool)

(assert (=> b!1099325 m!1255185))

(assert (=> b!1099233 d!310706))

(declare-fun b!1099340 () Bool)

(declare-fun e!696148 () List!10590)

(declare-fun e!696149 () List!10590)

(assert (=> b!1099340 (= e!696148 e!696149)))

(declare-fun c!186601 () Bool)

(declare-fun dynLambda!4649 (Int tuple2!11748) Bool)

(assert (=> b!1099340 (= c!186601 (dynLambda!4649 lambda!43156 (h!15975 lt!371336)))))

(declare-fun b!1099341 () Bool)

(declare-fun call!80401 () List!10590)

(assert (=> b!1099341 (= e!696149 call!80401)))

(declare-fun b!1099342 () Bool)

(declare-fun res!487787 () Bool)

(declare-fun e!696150 () Bool)

(assert (=> b!1099342 (=> (not res!487787) (not e!696150))))

(declare-fun lt!371422 () List!10590)

(declare-fun content!1529 (List!10590) (Set tuple2!11748))

(assert (=> b!1099342 (= res!487787 (set.subset (content!1529 lt!371422) (content!1529 lt!371336)))))

(declare-fun d!310708 () Bool)

(assert (=> d!310708 e!696150))

(declare-fun res!487786 () Bool)

(assert (=> d!310708 (=> (not res!487786) (not e!696150))))

(assert (=> d!310708 (= res!487786 (<= (size!8201 lt!371422) (size!8201 lt!371336)))))

(assert (=> d!310708 (= lt!371422 e!696148)))

(declare-fun c!186602 () Bool)

(assert (=> d!310708 (= c!186602 (is-Nil!10574 lt!371336))))

(assert (=> d!310708 (= (filter!316 lt!371336 lambda!43156) lt!371422)))

(declare-fun b!1099343 () Bool)

(assert (=> b!1099343 (= e!696149 (Cons!10574 (h!15975 lt!371336) call!80401))))

(declare-fun b!1099344 () Bool)

(assert (=> b!1099344 (= e!696148 Nil!10574)))

(declare-fun b!1099345 () Bool)

(assert (=> b!1099345 (= e!696150 (forall!2416 lt!371422 lambda!43156))))

(declare-fun bm!80396 () Bool)

(assert (=> bm!80396 (= call!80401 (filter!316 (t!103756 lt!371336) lambda!43156))))

(assert (= (and d!310708 c!186602) b!1099344))

(assert (= (and d!310708 (not c!186602)) b!1099340))

(assert (= (and b!1099340 c!186601) b!1099343))

(assert (= (and b!1099340 (not c!186601)) b!1099341))

(assert (= (or b!1099343 b!1099341) bm!80396))

(assert (= (and d!310708 res!487786) b!1099342))

(assert (= (and b!1099342 res!487787) b!1099345))

(declare-fun b_lambda!31925 () Bool)

(assert (=> (not b_lambda!31925) (not b!1099340)))

(declare-fun m!1255187 () Bool)

(assert (=> bm!80396 m!1255187))

(declare-fun m!1255189 () Bool)

(assert (=> b!1099345 m!1255189))

(declare-fun m!1255191 () Bool)

(assert (=> b!1099342 m!1255191))

(declare-fun m!1255193 () Bool)

(assert (=> b!1099342 m!1255193))

(declare-fun m!1255195 () Bool)

(assert (=> d!310708 m!1255195))

(assert (=> d!310708 m!1255037))

(declare-fun m!1255197 () Bool)

(assert (=> b!1099340 m!1255197))

(assert (=> b!1099233 d!310708))

(declare-fun d!310710 () Bool)

(declare-fun lt!371423 () Int)

(assert (=> d!310710 (>= lt!371423 0)))

(declare-fun e!696151 () Int)

(assert (=> d!310710 (= lt!371423 e!696151)))

(declare-fun c!186603 () Bool)

(assert (=> d!310710 (= c!186603 (is-Nil!10574 lt!371336))))

(assert (=> d!310710 (= (size!8201 lt!371336) lt!371423)))

(declare-fun b!1099346 () Bool)

(assert (=> b!1099346 (= e!696151 0)))

(declare-fun b!1099347 () Bool)

(assert (=> b!1099347 (= e!696151 (+ 1 (size!8201 (t!103756 lt!371336))))))

(assert (= (and d!310710 c!186603) b!1099346))

(assert (= (and d!310710 (not c!186603)) b!1099347))

(declare-fun m!1255199 () Bool)

(assert (=> b!1099347 m!1255199))

(assert (=> b!1099233 d!310710))

(declare-fun d!310712 () Bool)

(declare-fun lt!371427 () Int)

(assert (=> d!310712 (= lt!371427 (size!8201 (list!3806 objs!8)))))

(declare-fun size!8205 (Conc!3262) Int)

(assert (=> d!310712 (= lt!371427 (size!8205 (c!186578 objs!8)))))

(assert (=> d!310712 (= (size!8200 objs!8) lt!371427)))

(declare-fun bs!259281 () Bool)

(assert (= bs!259281 d!310712))

(assert (=> bs!259281 m!1255041))

(assert (=> bs!259281 m!1255041))

(declare-fun m!1255205 () Bool)

(assert (=> bs!259281 m!1255205))

(declare-fun m!1255209 () Bool)

(assert (=> bs!259281 m!1255209))

(assert (=> b!1099234 d!310712))

(declare-fun d!310714 () Bool)

(declare-fun c!186606 () Bool)

(assert (=> d!310714 (= c!186606 (is-Node!3262 (c!186578 objs!8)))))

(declare-fun e!696158 () Bool)

(assert (=> d!310714 (= (inv!13576 (c!186578 objs!8)) e!696158)))

(declare-fun b!1099356 () Bool)

(declare-fun inv!13580 (Conc!3262) Bool)

(assert (=> b!1099356 (= e!696158 (inv!13580 (c!186578 objs!8)))))

(declare-fun b!1099357 () Bool)

(declare-fun e!696159 () Bool)

(assert (=> b!1099357 (= e!696158 e!696159)))

(declare-fun res!487792 () Bool)

(assert (=> b!1099357 (= res!487792 (not (is-Leaf!5174 (c!186578 objs!8))))))

(assert (=> b!1099357 (=> res!487792 e!696159)))

(declare-fun b!1099358 () Bool)

(declare-fun inv!13581 (Conc!3262) Bool)

(assert (=> b!1099358 (= e!696159 (inv!13581 (c!186578 objs!8)))))

(assert (= (and d!310714 c!186606) b!1099356))

(assert (= (and d!310714 (not c!186606)) b!1099357))

(assert (= (and b!1099357 (not res!487792)) b!1099358))

(declare-fun m!1255221 () Bool)

(assert (=> b!1099356 m!1255221))

(declare-fun m!1255223 () Bool)

(assert (=> b!1099358 m!1255223))

(assert (=> b!1099240 d!310714))

(declare-fun d!310720 () Bool)

(assert (=> d!310720 (dynLambda!4649 lambda!43158 lt!371342)))

(declare-fun lt!371433 () Unit!16174)

(declare-fun choose!7085 (List!10590 Int tuple2!11748) Unit!16174)

(assert (=> d!310720 (= lt!371433 (choose!7085 (list!3806 lt!371330) lambda!43158 lt!371342))))

(declare-fun e!696162 () Bool)

(assert (=> d!310720 e!696162))

(declare-fun res!487795 () Bool)

(assert (=> d!310720 (=> (not res!487795) (not e!696162))))

(assert (=> d!310720 (= res!487795 (forall!2416 (list!3806 lt!371330) lambda!43158))))

(assert (=> d!310720 (= (forallContained!511 (list!3806 lt!371330) lambda!43158 lt!371342) lt!371433)))

(declare-fun b!1099361 () Bool)

(assert (=> b!1099361 (= e!696162 (contains!1840 (list!3806 lt!371330) lt!371342))))

(assert (= (and d!310720 res!487795) b!1099361))

(declare-fun b_lambda!31927 () Bool)

(assert (=> (not b_lambda!31927) (not d!310720)))

(declare-fun m!1255225 () Bool)

(assert (=> d!310720 m!1255225))

(assert (=> d!310720 m!1255051))

(declare-fun m!1255227 () Bool)

(assert (=> d!310720 m!1255227))

(assert (=> d!310720 m!1255051))

(declare-fun m!1255229 () Bool)

(assert (=> d!310720 m!1255229))

(assert (=> b!1099361 m!1255051))

(assert (=> b!1099361 m!1255175))

(assert (=> b!1099241 d!310720))

(declare-fun d!310722 () Bool)

(declare-fun list!3808 (Conc!3262) List!10590)

(assert (=> d!310722 (= (list!3806 lt!371330) (list!3808 (c!186578 lt!371330)))))

(declare-fun bs!259283 () Bool)

(assert (= bs!259283 d!310722))

(declare-fun m!1255235 () Bool)

(assert (=> bs!259283 m!1255235))

(assert (=> b!1099241 d!310722))

(declare-fun d!310726 () Bool)

(assert (=> d!310726 (= (list!3806 objs!8) (list!3808 (c!186578 objs!8)))))

(declare-fun bs!259284 () Bool)

(assert (= bs!259284 d!310726))

(declare-fun m!1255237 () Bool)

(assert (=> bs!259284 m!1255237))

(assert (=> b!1099230 d!310726))

(declare-fun d!310728 () Bool)

(declare-fun e!696166 () Bool)

(assert (=> d!310728 e!696166))

(declare-fun res!487799 () Bool)

(assert (=> d!310728 (=> res!487799 e!696166)))

(assert (=> d!310728 (= res!487799 (isEmpty!6685 lt!371336))))

(declare-fun lt!371438 () Unit!16174)

(declare-fun choose!7086 (List!10590 Int) Unit!16174)

(assert (=> d!310728 (= lt!371438 (choose!7086 lt!371336 lambda!43156))))

(assert (=> d!310728 (not (forall!2416 lt!371336 lambda!43156))))

(assert (=> d!310728 (= (lemmaNotForallFilterShorter!50 lt!371336 lambda!43156) lt!371438)))

(declare-fun b!1099365 () Bool)

(assert (=> b!1099365 (= e!696166 (< (size!8201 (filter!316 lt!371336 lambda!43156)) (size!8201 lt!371336)))))

(assert (= (and d!310728 (not res!487799)) b!1099365))

(assert (=> d!310728 m!1255049))

(declare-fun m!1255247 () Bool)

(assert (=> d!310728 m!1255247))

(declare-fun m!1255249 () Bool)

(assert (=> d!310728 m!1255249))

(assert (=> b!1099365 m!1255033))

(assert (=> b!1099365 m!1255033))

(assert (=> b!1099365 m!1255035))

(assert (=> b!1099365 m!1255037))

(assert (=> b!1099230 d!310728))

(declare-fun d!310732 () Bool)

(declare-fun lt!371439 () Int)

(assert (=> d!310732 (= lt!371439 (size!8201 (list!3806 lt!371338)))))

(assert (=> d!310732 (= lt!371439 (size!8205 (c!186578 lt!371338)))))

(assert (=> d!310732 (= (size!8200 lt!371338) lt!371439)))

(declare-fun bs!259285 () Bool)

(assert (= bs!259285 d!310732))

(assert (=> bs!259285 m!1255029))

(assert (=> bs!259285 m!1255029))

(declare-fun m!1255251 () Bool)

(assert (=> bs!259285 m!1255251))

(declare-fun m!1255253 () Bool)

(assert (=> bs!259285 m!1255253))

(assert (=> b!1099230 d!310732))

(declare-fun d!310734 () Bool)

(declare-fun lt!371440 () Bool)

(assert (=> d!310734 (= lt!371440 (forall!2416 (list!3806 objs!8) lambda!43156))))

(assert (=> d!310734 (= lt!371440 (forall!2417 (c!186578 objs!8) lambda!43156))))

(assert (=> d!310734 (= (forall!2414 objs!8 lambda!43156) lt!371440)))

(declare-fun bs!259286 () Bool)

(assert (= bs!259286 d!310734))

(assert (=> bs!259286 m!1255041))

(assert (=> bs!259286 m!1255041))

(declare-fun m!1255255 () Bool)

(assert (=> bs!259286 m!1255255))

(declare-fun m!1255257 () Bool)

(assert (=> bs!259286 m!1255257))

(assert (=> b!1099230 d!310734))

(declare-fun d!310736 () Bool)

(assert (=> d!310736 (= (isEmpty!6685 lt!371336) (is-Nil!10574 lt!371336))))

(assert (=> b!1099230 d!310736))

(declare-fun d!310738 () Bool)

(assert (=> d!310738 (dynLambda!4649 lambda!43156 lt!371342)))

(declare-fun lt!371441 () Unit!16174)

(assert (=> d!310738 (= lt!371441 (choose!7085 (list!3806 objs!8) lambda!43156 lt!371342))))

(declare-fun e!696167 () Bool)

(assert (=> d!310738 e!696167))

(declare-fun res!487800 () Bool)

(assert (=> d!310738 (=> (not res!487800) (not e!696167))))

(assert (=> d!310738 (= res!487800 (forall!2416 (list!3806 objs!8) lambda!43156))))

(assert (=> d!310738 (= (forallContained!511 (list!3806 objs!8) lambda!43156 lt!371342) lt!371441)))

(declare-fun b!1099366 () Bool)

(assert (=> b!1099366 (= e!696167 (contains!1840 (list!3806 objs!8) lt!371342))))

(assert (= (and d!310738 res!487800) b!1099366))

(declare-fun b_lambda!31929 () Bool)

(assert (=> (not b_lambda!31929) (not d!310738)))

(declare-fun m!1255259 () Bool)

(assert (=> d!310738 m!1255259))

(assert (=> d!310738 m!1255041))

(declare-fun m!1255261 () Bool)

(assert (=> d!310738 m!1255261))

(assert (=> d!310738 m!1255041))

(assert (=> d!310738 m!1255255))

(assert (=> b!1099366 m!1255041))

(assert (=> b!1099366 m!1255171))

(assert (=> b!1099231 d!310738))

(assert (=> b!1099231 d!310726))

(declare-fun d!310740 () Bool)

(declare-fun lt!371442 () Bool)

(assert (=> d!310740 (= lt!371442 (contains!1840 (list!3806 lt!371338) lt!371342))))

(assert (=> d!310740 (= lt!371442 (contains!1841 (c!186578 lt!371338) lt!371342))))

(assert (=> d!310740 (= (contains!1838 lt!371338 lt!371342) lt!371442)))

(declare-fun bs!259287 () Bool)

(assert (= bs!259287 d!310740))

(assert (=> bs!259287 m!1255029))

(assert (=> bs!259287 m!1255029))

(declare-fun m!1255263 () Bool)

(assert (=> bs!259287 m!1255263))

(declare-fun m!1255265 () Bool)

(assert (=> bs!259287 m!1255265))

(assert (=> b!1099242 d!310740))

(declare-fun d!310742 () Bool)

(assert (=> d!310742 (dynLambda!4649 lambda!43156 lt!371342)))

(declare-fun lt!371443 () Unit!16174)

(assert (=> d!310742 (= lt!371443 (choose!7085 (list!3806 lt!371338) lambda!43156 lt!371342))))

(declare-fun e!696168 () Bool)

(assert (=> d!310742 e!696168))

(declare-fun res!487801 () Bool)

(assert (=> d!310742 (=> (not res!487801) (not e!696168))))

(assert (=> d!310742 (= res!487801 (forall!2416 (list!3806 lt!371338) lambda!43156))))

(assert (=> d!310742 (= (forallContained!511 (list!3806 lt!371338) lambda!43156 lt!371342) lt!371443)))

(declare-fun b!1099367 () Bool)

(assert (=> b!1099367 (= e!696168 (contains!1840 (list!3806 lt!371338) lt!371342))))

(assert (= (and d!310742 res!487801) b!1099367))

(declare-fun b_lambda!31931 () Bool)

(assert (=> (not b_lambda!31931) (not d!310742)))

(assert (=> d!310742 m!1255259))

(assert (=> d!310742 m!1255029))

(declare-fun m!1255267 () Bool)

(assert (=> d!310742 m!1255267))

(assert (=> d!310742 m!1255029))

(declare-fun m!1255269 () Bool)

(assert (=> d!310742 m!1255269))

(assert (=> b!1099367 m!1255029))

(assert (=> b!1099367 m!1255263))

(assert (=> b!1099239 d!310742))

(declare-fun d!310744 () Bool)

(assert (=> d!310744 (= (list!3806 lt!371338) (list!3808 (c!186578 lt!371338)))))

(declare-fun bs!259288 () Bool)

(assert (= bs!259288 d!310744))

(declare-fun m!1255271 () Bool)

(assert (=> bs!259288 m!1255271))

(assert (=> b!1099239 d!310744))

(declare-fun b!1099376 () Bool)

(declare-fun e!696173 () Bool)

(assert (=> b!1099376 (= e!696173 true)))

(declare-fun b!1099378 () Bool)

(declare-fun e!696174 () Bool)

(assert (=> b!1099378 (= e!696174 true)))

(declare-fun b!1099377 () Bool)

(assert (=> b!1099377 (= e!696173 e!696174)))

(assert (=> b!1099252 e!696173))

(assert (= (and b!1099252 (is-Node!3261 (c!186577 (tokens!1370 (_2!6700 lt!371342))))) b!1099376))

(assert (= b!1099377 b!1099378))

(assert (= (and b!1099252 (is-Leaf!5173 (c!186577 (tokens!1370 (_2!6700 lt!371342))))) b!1099377))

(declare-fun e!696179 () Bool)

(declare-fun tp!326861 () Bool)

(declare-fun tp!326859 () Bool)

(declare-fun b!1099387 () Bool)

(assert (=> b!1099387 (= e!696179 (and (inv!13576 (left!9121 (c!186578 objs!8))) tp!326859 (inv!13576 (right!9451 (c!186578 objs!8))) tp!326861))))

(declare-fun b!1099389 () Bool)

(declare-fun e!696180 () Bool)

(declare-fun tp!326860 () Bool)

(assert (=> b!1099389 (= e!696180 tp!326860)))

(declare-fun b!1099388 () Bool)

(declare-fun inv!13582 (IArray!6529) Bool)

(assert (=> b!1099388 (= e!696179 (and (inv!13582 (xs!5955 (c!186578 objs!8))) e!696180))))

(assert (=> b!1099240 (= tp!326849 (and (inv!13576 (c!186578 objs!8)) e!696179))))

(assert (= (and b!1099240 (is-Node!3262 (c!186578 objs!8))) b!1099387))

(assert (= b!1099388 b!1099389))

(assert (= (and b!1099240 (is-Leaf!5174 (c!186578 objs!8))) b!1099388))

(declare-fun m!1255273 () Bool)

(assert (=> b!1099387 m!1255273))

(declare-fun m!1255275 () Bool)

(assert (=> b!1099387 m!1255275))

(declare-fun m!1255277 () Bool)

(assert (=> b!1099388 m!1255277))

(assert (=> b!1099240 m!1255039))

(declare-fun b!1099402 () Bool)

(declare-fun e!696191 () Bool)

(assert (=> b!1099402 (= e!696191 true)))

(declare-fun b!1099401 () Bool)

(declare-fun e!696190 () Bool)

(assert (=> b!1099401 (= e!696190 e!696191)))

(declare-fun b!1099400 () Bool)

(declare-fun e!696189 () Bool)

(assert (=> b!1099400 (= e!696189 e!696190)))

(assert (=> b!1099249 e!696189))

(assert (= b!1099401 b!1099402))

(assert (= b!1099400 b!1099401))

(assert (= (and b!1099249 (is-Cons!10573 (rules!9098 (_2!6700 lt!371342)))) b!1099400))

(declare-fun order!6417 () Int)

(declare-fun order!6419 () Int)

(declare-fun dynLambda!4651 (Int Int) Int)

(declare-fun dynLambda!4652 (Int Int) Int)

(assert (=> b!1099402 (< (dynLambda!4651 order!6417 (toValue!2888 (transformation!1811 (h!15974 (rules!9098 (_2!6700 lt!371342)))))) (dynLambda!4652 order!6419 lambda!43156))))

(declare-fun order!6421 () Int)

(declare-fun dynLambda!4653 (Int Int) Int)

(assert (=> b!1099402 (< (dynLambda!4653 order!6421 (toChars!2747 (transformation!1811 (h!15974 (rules!9098 (_2!6700 lt!371342)))))) (dynLambda!4652 order!6419 lambda!43156))))

(declare-fun b!1099405 () Bool)

(declare-fun e!696194 () Bool)

(assert (=> b!1099405 (= e!696194 true)))

(declare-fun b!1099404 () Bool)

(declare-fun e!696193 () Bool)

(assert (=> b!1099404 (= e!696193 e!696194)))

(declare-fun b!1099403 () Bool)

(declare-fun e!696192 () Bool)

(assert (=> b!1099403 (= e!696192 e!696193)))

(assert (=> b!1099251 e!696192))

(assert (= b!1099404 b!1099405))

(assert (= b!1099403 b!1099404))

(assert (= (and b!1099251 (is-Cons!10573 (rules!9098 (_2!6700 lt!371342)))) b!1099403))

(assert (=> b!1099405 (< (dynLambda!4651 order!6417 (toValue!2888 (transformation!1811 (h!15974 (rules!9098 (_2!6700 lt!371342)))))) (dynLambda!4652 order!6419 lambda!43157))))

(assert (=> b!1099405 (< (dynLambda!4653 order!6421 (toChars!2747 (transformation!1811 (h!15974 (rules!9098 (_2!6700 lt!371342)))))) (dynLambda!4652 order!6419 lambda!43157))))

(declare-fun b!1099408 () Bool)

(declare-fun e!696197 () Bool)

(assert (=> b!1099408 (= e!696197 true)))

(declare-fun b!1099407 () Bool)

(declare-fun e!696196 () Bool)

(assert (=> b!1099407 (= e!696196 e!696197)))

(declare-fun b!1099406 () Bool)

(declare-fun e!696195 () Bool)

(assert (=> b!1099406 (= e!696195 e!696196)))

(assert (=> b!1099253 e!696195))

(assert (= b!1099407 b!1099408))

(assert (= b!1099406 b!1099407))

(assert (= (and b!1099253 (is-Cons!10573 (rules!9098 (_2!6700 lt!371342)))) b!1099406))

(assert (=> b!1099408 (< (dynLambda!4651 order!6417 (toValue!2888 (transformation!1811 (h!15974 (rules!9098 (_2!6700 lt!371342)))))) (dynLambda!4652 order!6419 lambda!43158))))

(assert (=> b!1099408 (< (dynLambda!4653 order!6421 (toChars!2747 (transformation!1811 (h!15974 (rules!9098 (_2!6700 lt!371342)))))) (dynLambda!4652 order!6419 lambda!43158))))

(declare-fun b!1099409 () Bool)

(declare-fun e!696198 () Bool)

(assert (=> b!1099409 (= e!696198 true)))

(declare-fun b!1099411 () Bool)

(declare-fun e!696199 () Bool)

(assert (=> b!1099411 (= e!696199 true)))

(declare-fun b!1099410 () Bool)

(assert (=> b!1099410 (= e!696198 e!696199)))

(assert (=> b!1099254 e!696198))

(assert (= (and b!1099254 (is-Node!3261 (c!186577 (tokens!1370 (_2!6700 lt!371342))))) b!1099409))

(assert (= b!1099410 b!1099411))

(assert (= (and b!1099254 (is-Leaf!5173 (c!186577 (tokens!1370 (_2!6700 lt!371342))))) b!1099410))

(declare-fun b!1099412 () Bool)

(declare-fun e!696200 () Bool)

(assert (=> b!1099412 (= e!696200 true)))

(declare-fun b!1099414 () Bool)

(declare-fun e!696201 () Bool)

(assert (=> b!1099414 (= e!696201 true)))

(declare-fun b!1099413 () Bool)

(assert (=> b!1099413 (= e!696200 e!696201)))

(assert (=> b!1099250 e!696200))

(assert (= (and b!1099250 (is-Node!3261 (c!186577 (tokens!1370 (_2!6700 lt!371342))))) b!1099412))

(assert (= b!1099413 b!1099414))

(assert (= (and b!1099250 (is-Leaf!5173 (c!186577 (tokens!1370 (_2!6700 lt!371342))))) b!1099413))

(declare-fun b_lambda!31933 () Bool)

(assert (= b_lambda!31925 (or b!1099236 b_lambda!31933)))

(declare-fun bs!259289 () Bool)

(declare-fun d!310746 () Bool)

(assert (= bs!259289 (and d!310746 b!1099236)))

(assert (=> bs!259289 (= (dynLambda!4649 lambda!43156 (h!15975 lt!371336)) (< (_1!6700 (h!15975 lt!371336)) (_1!6700 lt!371342)))))

(assert (=> b!1099340 d!310746))

(declare-fun b_lambda!31935 () Bool)

(assert (= b_lambda!31931 (or b!1099236 b_lambda!31935)))

(declare-fun bs!259290 () Bool)

(declare-fun d!310748 () Bool)

(assert (= bs!259290 (and d!310748 b!1099236)))

(assert (=> bs!259290 (= (dynLambda!4649 lambda!43156 lt!371342) (< (_1!6700 lt!371342) (_1!6700 lt!371342)))))

(assert (=> d!310742 d!310748))

(declare-fun b_lambda!31937 () Bool)

(assert (= b_lambda!31929 (or b!1099236 b_lambda!31937)))

(assert (=> d!310738 d!310748))

(declare-fun b_lambda!31939 () Bool)

(assert (= b_lambda!31927 (or b!1099236 b_lambda!31939)))

(declare-fun bs!259291 () Bool)

(declare-fun d!310750 () Bool)

(assert (= bs!259291 (and d!310750 b!1099236)))

(assert (=> bs!259291 (= (dynLambda!4649 lambda!43158 lt!371342) (> (_1!6700 lt!371342) (_1!6700 lt!371342)))))

(assert (=> d!310720 d!310750))

(push 1)

(assert (not b!1099400))

(assert (not b!1099367))

(assert (not b!1099342))

(assert (not d!310740))

(assert (not b!1099389))

(assert (not b_lambda!31939))

(assert (not d!310690))

(assert (not d!310744))

(assert (not d!310732))

(assert (not bm!80396))

(assert (not b!1099240))

(assert (not b!1099325))

(assert (not d!310680))

(assert (not b_lambda!31933))

(assert (not d!310704))

(assert (not b!1099318))

(assert (not d!310702))

(assert (not d!310700))

(assert (not b!1099356))

(assert (not d!310728))

(assert (not d!310734))

(assert (not b!1099313))

(assert (not b_lambda!31937))

(assert (not b_lambda!31935))

(assert (not b!1099412))

(assert (not b!1099406))

(assert (not d!310694))

(assert (not b!1099310))

(assert (not d!310726))

(assert (not b!1099345))

(assert (not b!1099378))

(assert (not b!1099365))

(assert (not d!310688))

(assert (not b!1099387))

(assert (not b!1099311))

(assert (not b!1099414))

(assert (not b!1099347))

(assert (not d!310720))

(assert (not b!1099366))

(assert (not d!310708))

(assert (not d!310742))

(assert (not d!310722))

(assert (not b!1099358))

(assert (not b!1099376))

(assert (not b!1099411))

(assert (not d!310712))

(assert (not b!1099409))

(assert (not d!310738))

(assert (not d!310686))

(assert (not b!1099403))

(assert (not b!1099361))

(assert (not b!1099388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


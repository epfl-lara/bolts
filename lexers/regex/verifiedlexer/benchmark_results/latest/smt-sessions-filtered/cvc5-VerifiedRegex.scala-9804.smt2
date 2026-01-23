; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!512406 () Bool)

(assert start!512406)

(declare-fun b!4893356 () Bool)

(declare-fun b_free!131567 () Bool)

(declare-fun b_next!132357 () Bool)

(assert (=> b!4893356 (= b_free!131567 (not b_next!132357))))

(declare-fun tp!1377223 () Bool)

(declare-fun b_and!344927 () Bool)

(assert (=> b!4893356 (= tp!1377223 b_and!344927)))

(declare-fun b_free!131569 () Bool)

(declare-fun b_next!132359 () Bool)

(assert (=> b!4893356 (= b_free!131569 (not b_next!132359))))

(declare-fun tp!1377224 () Bool)

(declare-fun b_and!344929 () Bool)

(assert (=> b!4893356 (= tp!1377224 b_and!344929)))

(declare-fun b!4893350 () Bool)

(declare-fun res!2089854 () Bool)

(declare-fun e!3059059 () Bool)

(assert (=> b!4893350 (=> (not res!2089854) (not e!3059059))))

(declare-datatypes ((C!26698 0))(
  ( (C!26699 (val!22683 Int)) )
))
(declare-datatypes ((List!56532 0))(
  ( (Nil!56408) (Cons!56408 (h!62856 C!26698) (t!365672 List!56532)) )
))
(declare-datatypes ((IArray!29547 0))(
  ( (IArray!29548 (innerList!14831 List!56532)) )
))
(declare-datatypes ((Conc!14743 0))(
  ( (Node!14743 (left!40981 Conc!14743) (right!41311 Conc!14743) (csize!29716 Int) (cheight!14954 Int)) (Leaf!24548 (xs!18059 IArray!29547) (csize!29717 Int)) (Empty!14743) )
))
(declare-datatypes ((BalanceConc!28916 0))(
  ( (BalanceConc!28917 (c!831694 Conc!14743)) )
))
(declare-datatypes ((List!56533 0))(
  ( (Nil!56409) (Cons!56409 (h!62857 (_ BitVec 16)) (t!365673 List!56533)) )
))
(declare-datatypes ((TokenValue!8485 0))(
  ( (FloatLiteralValue!16970 (text!59840 List!56533)) (TokenValueExt!8484 (__x!34263 Int)) (Broken!42425 (value!262113 List!56533)) (Object!8608) (End!8485) (Def!8485) (Underscore!8485) (Match!8485) (Else!8485) (Error!8485) (Case!8485) (If!8485) (Extends!8485) (Abstract!8485) (Class!8485) (Val!8485) (DelimiterValue!16970 (del!8545 List!56533)) (KeywordValue!8491 (value!262114 List!56533)) (CommentValue!16970 (value!262115 List!56533)) (WhitespaceValue!16970 (value!262116 List!56533)) (IndentationValue!8485 (value!262117 List!56533)) (String!63868) (Int32!8485) (Broken!42426 (value!262118 List!56533)) (Boolean!8486) (Unit!146434) (OperatorValue!8488 (op!8545 List!56533)) (IdentifierValue!16970 (value!262119 List!56533)) (IdentifierValue!16971 (value!262120 List!56533)) (WhitespaceValue!16971 (value!262121 List!56533)) (True!16970) (False!16970) (Broken!42427 (value!262122 List!56533)) (Broken!42428 (value!262123 List!56533)) (True!16971) (RightBrace!8485) (RightBracket!8485) (Colon!8485) (Null!8485) (Comma!8485) (LeftBracket!8485) (False!16971) (LeftBrace!8485) (ImaginaryLiteralValue!8485 (text!59841 List!56533)) (StringLiteralValue!25455 (value!262124 List!56533)) (EOFValue!8485 (value!262125 List!56533)) (IdentValue!8485 (value!262126 List!56533)) (DelimiterValue!16971 (value!262127 List!56533)) (DedentValue!8485 (value!262128 List!56533)) (NewLineValue!8485 (value!262129 List!56533)) (IntegerValue!25455 (value!262130 (_ BitVec 32)) (text!59842 List!56533)) (IntegerValue!25456 (value!262131 Int) (text!59843 List!56533)) (Times!8485) (Or!8485) (Equal!8485) (Minus!8485) (Broken!42429 (value!262132 List!56533)) (And!8485) (Div!8485) (LessEqual!8485) (Mod!8485) (Concat!21735) (Not!8485) (Plus!8485) (SpaceValue!8485 (value!262133 List!56533)) (IntegerValue!25457 (value!262134 Int) (text!59844 List!56533)) (StringLiteralValue!25456 (text!59845 List!56533)) (FloatLiteralValue!16971 (text!59846 List!56533)) (BytesLiteralValue!8485 (value!262135 List!56533)) (CommentValue!16971 (value!262136 List!56533)) (StringLiteralValue!25457 (value!262137 List!56533)) (ErrorTokenValue!8485 (msg!8546 List!56533)) )
))
(declare-datatypes ((Regex!13250 0))(
  ( (ElementMatch!13250 (c!831695 C!26698)) (Concat!21736 (regOne!27012 Regex!13250) (regTwo!27012 Regex!13250)) (EmptyExpr!13250) (Star!13250 (reg!13579 Regex!13250)) (EmptyLang!13250) (Union!13250 (regOne!27013 Regex!13250) (regTwo!27013 Regex!13250)) )
))
(declare-datatypes ((String!63869 0))(
  ( (String!63870 (value!262138 String)) )
))
(declare-datatypes ((TokenValueInjection!16278 0))(
  ( (TokenValueInjection!16279 (toValue!11070 Int) (toChars!10929 Int)) )
))
(declare-datatypes ((Rule!16150 0))(
  ( (Rule!16151 (regex!8175 Regex!13250) (tag!9039 String!63869) (isSeparator!8175 Bool) (transformation!8175 TokenValueInjection!16278)) )
))
(declare-datatypes ((List!56534 0))(
  ( (Nil!56410) (Cons!56410 (h!62858 Rule!16150) (t!365674 List!56534)) )
))
(declare-fun rulesArg!165 () List!56534)

(declare-fun isEmpty!30265 (List!56534) Bool)

(assert (=> b!4893350 (= res!2089854 (not (isEmpty!30265 rulesArg!165)))))

(declare-fun b!4893351 () Bool)

(declare-fun res!2089861 () Bool)

(assert (=> b!4893351 (=> (not res!2089861) (not e!3059059))))

(declare-datatypes ((LexerInterface!7767 0))(
  ( (LexerInterfaceExt!7764 (__x!34264 Int)) (Lexer!7765) )
))
(declare-fun thiss!14805 () LexerInterface!7767)

(declare-fun rulesValidInductive!3154 (LexerInterface!7767 List!56534) Bool)

(assert (=> b!4893351 (= res!2089861 (rulesValidInductive!3154 thiss!14805 rulesArg!165))))

(declare-fun e!3059058 () Bool)

(declare-fun b!4893352 () Bool)

(declare-fun e!3059064 () Bool)

(declare-fun tp!1377222 () Bool)

(declare-fun inv!72686 (String!63869) Bool)

(declare-fun inv!72689 (TokenValueInjection!16278) Bool)

(assert (=> b!4893352 (= e!3059058 (and tp!1377222 (inv!72686 (tag!9039 (h!62858 rulesArg!165))) (inv!72689 (transformation!8175 (h!62858 rulesArg!165))) e!3059064))))

(declare-fun b!4893353 () Bool)

(declare-fun e!3059053 () Bool)

(declare-fun tp!1377220 () Bool)

(assert (=> b!4893353 (= e!3059053 (and e!3059058 tp!1377220))))

(declare-fun b!4893354 () Bool)

(declare-fun e!3059057 () Bool)

(declare-fun e!3059060 () Bool)

(assert (=> b!4893354 (= e!3059057 e!3059060)))

(declare-fun res!2089858 () Bool)

(assert (=> b!4893354 (=> res!2089858 e!3059060)))

(declare-datatypes ((Token!14914 0))(
  ( (Token!14915 (value!262139 TokenValue!8485) (rule!11365 Rule!16150) (size!37143 Int) (originalCharacters!8488 List!56532)) )
))
(declare-datatypes ((tuple2!60456 0))(
  ( (tuple2!60457 (_1!33531 Token!14914) (_2!33531 BalanceConc!28916)) )
))
(declare-datatypes ((Option!14027 0))(
  ( (None!14026) (Some!14026 (v!49980 tuple2!60456)) )
))
(declare-fun lt!2005836 () Option!14027)

(declare-fun lt!2005840 () Option!14027)

(assert (=> b!4893354 (= res!2089858 (or (and (is-None!14026 lt!2005836) (is-None!14026 lt!2005840)) (not (is-None!14026 lt!2005840))))))

(declare-fun input!1236 () BalanceConc!28916)

(declare-fun maxPrefixZipperSequence!1316 (LexerInterface!7767 List!56534 BalanceConc!28916) Option!14027)

(assert (=> b!4893354 (= lt!2005840 (maxPrefixZipperSequence!1316 thiss!14805 (t!365674 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!685 (LexerInterface!7767 Rule!16150 BalanceConc!28916) Option!14027)

(assert (=> b!4893354 (= lt!2005836 (maxPrefixOneRuleZipperSequence!685 thiss!14805 (h!62858 rulesArg!165) input!1236))))

(declare-fun res!2089863 () Bool)

(assert (=> start!512406 (=> (not res!2089863) (not e!3059059))))

(assert (=> start!512406 (= res!2089863 (is-Lexer!7765 thiss!14805))))

(assert (=> start!512406 e!3059059))

(assert (=> start!512406 true))

(assert (=> start!512406 e!3059053))

(declare-fun e!3059056 () Bool)

(declare-fun inv!72690 (BalanceConc!28916) Bool)

(assert (=> start!512406 (and (inv!72690 input!1236) e!3059056)))

(declare-fun b!4893355 () Bool)

(declare-fun e!3059061 () Bool)

(declare-fun lt!2005838 () tuple2!60456)

(declare-datatypes ((tuple2!60458 0))(
  ( (tuple2!60459 (_1!33532 Token!14914) (_2!33532 List!56532)) )
))
(declare-fun lt!2005839 () tuple2!60458)

(declare-fun list!17727 (BalanceConc!28916) List!56532)

(assert (=> b!4893355 (= e!3059061 (= (list!17727 (_2!33531 lt!2005838)) (_2!33532 lt!2005839)))))

(assert (=> b!4893356 (= e!3059064 (and tp!1377223 tp!1377224))))

(declare-fun b!4893357 () Bool)

(declare-fun tp!1377221 () Bool)

(declare-fun inv!72691 (Conc!14743) Bool)

(assert (=> b!4893357 (= e!3059056 (and (inv!72691 (c!831694 input!1236)) tp!1377221))))

(declare-fun b!4893358 () Bool)

(declare-fun e!3059055 () Bool)

(declare-fun e!3059063 () Bool)

(assert (=> b!4893358 (= e!3059055 e!3059063)))

(declare-fun res!2089857 () Bool)

(assert (=> b!4893358 (=> (not res!2089857) (not e!3059063))))

(declare-fun lt!2005841 () tuple2!60456)

(declare-fun lt!2005834 () tuple2!60458)

(assert (=> b!4893358 (= res!2089857 (= (_1!33531 lt!2005841) (_1!33532 lt!2005834)))))

(declare-datatypes ((Option!14028 0))(
  ( (None!14027) (Some!14027 (v!49981 tuple2!60458)) )
))
(declare-fun lt!2005837 () Option!14028)

(declare-fun get!19481 (Option!14028) tuple2!60458)

(assert (=> b!4893358 (= lt!2005834 (get!19481 lt!2005837))))

(declare-fun get!19482 (Option!14027) tuple2!60456)

(assert (=> b!4893358 (= lt!2005841 (get!19482 lt!2005836))))

(declare-fun b!4893359 () Bool)

(declare-fun e!3059062 () Bool)

(declare-fun e!3059052 () Bool)

(assert (=> b!4893359 (= e!3059062 e!3059052)))

(declare-fun res!2089856 () Bool)

(assert (=> b!4893359 (=> res!2089856 e!3059052)))

(declare-fun lt!2005835 () Bool)

(assert (=> b!4893359 (= res!2089856 lt!2005835)))

(declare-fun b!4893360 () Bool)

(declare-fun e!3059054 () Bool)

(assert (=> b!4893360 (= e!3059054 e!3059062)))

(declare-fun res!2089859 () Bool)

(assert (=> b!4893360 (=> (not res!2089859) (not e!3059062))))

(assert (=> b!4893360 (= res!2089859 e!3059055)))

(declare-fun res!2089864 () Bool)

(assert (=> b!4893360 (=> res!2089864 e!3059055)))

(assert (=> b!4893360 (= res!2089864 lt!2005835)))

(declare-fun lt!2005842 () Bool)

(assert (=> b!4893360 (= lt!2005835 (not lt!2005842))))

(declare-fun b!4893361 () Bool)

(assert (=> b!4893361 (= e!3059063 (= (list!17727 (_2!33531 lt!2005841)) (_2!33532 lt!2005834)))))

(declare-fun b!4893362 () Bool)

(assert (=> b!4893362 (= e!3059060 e!3059054)))

(declare-fun res!2089860 () Bool)

(assert (=> b!4893362 (=> (not res!2089860) (not e!3059054))))

(declare-fun isDefined!11040 (Option!14028) Bool)

(assert (=> b!4893362 (= res!2089860 (= lt!2005842 (isDefined!11040 lt!2005837)))))

(declare-fun isDefined!11041 (Option!14027) Bool)

(assert (=> b!4893362 (= lt!2005842 (isDefined!11041 lt!2005836))))

(declare-fun lt!2005844 () List!56532)

(declare-fun maxPrefixZipper!674 (LexerInterface!7767 List!56534 List!56532) Option!14028)

(assert (=> b!4893362 (= lt!2005837 (maxPrefixZipper!674 thiss!14805 rulesArg!165 lt!2005844))))

(declare-fun b!4893363 () Bool)

(assert (=> b!4893363 (= e!3059059 (not e!3059057))))

(declare-fun res!2089855 () Bool)

(assert (=> b!4893363 (=> res!2089855 e!3059057)))

(assert (=> b!4893363 (= res!2089855 (or (and (is-Cons!56410 rulesArg!165) (is-Nil!56410 (t!365674 rulesArg!165))) (not (is-Cons!56410 rulesArg!165))))))

(declare-fun isPrefix!4895 (List!56532 List!56532) Bool)

(assert (=> b!4893363 (isPrefix!4895 lt!2005844 lt!2005844)))

(declare-datatypes ((Unit!146435 0))(
  ( (Unit!146436) )
))
(declare-fun lt!2005843 () Unit!146435)

(declare-fun lemmaIsPrefixRefl!3292 (List!56532 List!56532) Unit!146435)

(assert (=> b!4893363 (= lt!2005843 (lemmaIsPrefixRefl!3292 lt!2005844 lt!2005844))))

(assert (=> b!4893363 (= lt!2005844 (list!17727 input!1236))))

(declare-fun b!4893364 () Bool)

(assert (=> b!4893364 (= e!3059052 e!3059061)))

(declare-fun res!2089862 () Bool)

(assert (=> b!4893364 (=> (not res!2089862) (not e!3059061))))

(assert (=> b!4893364 (= res!2089862 (= (_1!33531 lt!2005838) (_1!33532 lt!2005839)))))

(declare-fun maxPrefix!4604 (LexerInterface!7767 List!56534 List!56532) Option!14028)

(assert (=> b!4893364 (= lt!2005839 (get!19481 (maxPrefix!4604 thiss!14805 rulesArg!165 lt!2005844)))))

(assert (=> b!4893364 (= lt!2005838 (get!19482 lt!2005836))))

(assert (= (and start!512406 res!2089863) b!4893351))

(assert (= (and b!4893351 res!2089861) b!4893350))

(assert (= (and b!4893350 res!2089854) b!4893363))

(assert (= (and b!4893363 (not res!2089855)) b!4893354))

(assert (= (and b!4893354 (not res!2089858)) b!4893362))

(assert (= (and b!4893362 res!2089860) b!4893360))

(assert (= (and b!4893360 (not res!2089864)) b!4893358))

(assert (= (and b!4893358 res!2089857) b!4893361))

(assert (= (and b!4893360 res!2089859) b!4893359))

(assert (= (and b!4893359 (not res!2089856)) b!4893364))

(assert (= (and b!4893364 res!2089862) b!4893355))

(assert (= b!4893352 b!4893356))

(assert (= b!4893353 b!4893352))

(assert (= (and start!512406 (is-Cons!56410 rulesArg!165)) b!4893353))

(assert (= start!512406 b!4893357))

(declare-fun m!5898410 () Bool)

(assert (=> b!4893357 m!5898410))

(declare-fun m!5898412 () Bool)

(assert (=> b!4893350 m!5898412))

(declare-fun m!5898414 () Bool)

(assert (=> start!512406 m!5898414))

(declare-fun m!5898416 () Bool)

(assert (=> b!4893355 m!5898416))

(declare-fun m!5898418 () Bool)

(assert (=> b!4893358 m!5898418))

(declare-fun m!5898420 () Bool)

(assert (=> b!4893358 m!5898420))

(declare-fun m!5898422 () Bool)

(assert (=> b!4893364 m!5898422))

(assert (=> b!4893364 m!5898422))

(declare-fun m!5898424 () Bool)

(assert (=> b!4893364 m!5898424))

(assert (=> b!4893364 m!5898420))

(declare-fun m!5898426 () Bool)

(assert (=> b!4893354 m!5898426))

(declare-fun m!5898428 () Bool)

(assert (=> b!4893354 m!5898428))

(declare-fun m!5898430 () Bool)

(assert (=> b!4893361 m!5898430))

(declare-fun m!5898432 () Bool)

(assert (=> b!4893351 m!5898432))

(declare-fun m!5898434 () Bool)

(assert (=> b!4893362 m!5898434))

(declare-fun m!5898436 () Bool)

(assert (=> b!4893362 m!5898436))

(declare-fun m!5898438 () Bool)

(assert (=> b!4893362 m!5898438))

(declare-fun m!5898440 () Bool)

(assert (=> b!4893363 m!5898440))

(declare-fun m!5898442 () Bool)

(assert (=> b!4893363 m!5898442))

(declare-fun m!5898444 () Bool)

(assert (=> b!4893363 m!5898444))

(declare-fun m!5898446 () Bool)

(assert (=> b!4893352 m!5898446))

(declare-fun m!5898448 () Bool)

(assert (=> b!4893352 m!5898448))

(push 1)

(assert (not b_next!132357))

(assert (not b!4893358))

(assert (not b_next!132359))

(assert (not b!4893362))

(assert (not start!512406))

(assert (not b!4893357))

(assert (not b!4893353))

(assert (not b!4893350))

(assert (not b!4893355))

(assert (not b!4893363))

(assert b_and!344929)

(assert (not b!4893352))

(assert (not b!4893354))

(assert (not b!4893361))

(assert (not b!4893351))

(assert b_and!344927)

(assert (not b!4893364))

(check-sat)

(pop 1)

(push 1)

(assert b_and!344929)

(assert b_and!344927)

(assert (not b_next!132357))

(assert (not b_next!132359))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1571837 () Bool)

(declare-fun list!17729 (Conc!14743) List!56532)

(assert (=> d!1571837 (= (list!17727 (_2!33531 lt!2005838)) (list!17729 (c!831694 (_2!33531 lt!2005838))))))

(declare-fun bs!1176073 () Bool)

(assert (= bs!1176073 d!1571837))

(declare-fun m!5898490 () Bool)

(assert (=> bs!1176073 m!5898490))

(assert (=> b!4893355 d!1571837))

(declare-fun d!1571839 () Bool)

(declare-fun isBalanced!4013 (Conc!14743) Bool)

(assert (=> d!1571839 (= (inv!72690 input!1236) (isBalanced!4013 (c!831694 input!1236)))))

(declare-fun bs!1176074 () Bool)

(assert (= bs!1176074 d!1571839))

(declare-fun m!5898492 () Bool)

(assert (=> bs!1176074 m!5898492))

(assert (=> start!512406 d!1571839))

(declare-fun d!1571841 () Bool)

(declare-fun c!831701 () Bool)

(assert (=> d!1571841 (= c!831701 (is-Node!14743 (c!831694 input!1236)))))

(declare-fun e!3059111 () Bool)

(assert (=> d!1571841 (= (inv!72691 (c!831694 input!1236)) e!3059111)))

(declare-fun b!4893416 () Bool)

(declare-fun inv!72695 (Conc!14743) Bool)

(assert (=> b!4893416 (= e!3059111 (inv!72695 (c!831694 input!1236)))))

(declare-fun b!4893417 () Bool)

(declare-fun e!3059112 () Bool)

(assert (=> b!4893417 (= e!3059111 e!3059112)))

(declare-fun res!2089908 () Bool)

(assert (=> b!4893417 (= res!2089908 (not (is-Leaf!24548 (c!831694 input!1236))))))

(assert (=> b!4893417 (=> res!2089908 e!3059112)))

(declare-fun b!4893418 () Bool)

(declare-fun inv!72696 (Conc!14743) Bool)

(assert (=> b!4893418 (= e!3059112 (inv!72696 (c!831694 input!1236)))))

(assert (= (and d!1571841 c!831701) b!4893416))

(assert (= (and d!1571841 (not c!831701)) b!4893417))

(assert (= (and b!4893417 (not res!2089908)) b!4893418))

(declare-fun m!5898494 () Bool)

(assert (=> b!4893416 m!5898494))

(declare-fun m!5898496 () Bool)

(assert (=> b!4893418 m!5898496))

(assert (=> b!4893357 d!1571841))

(declare-fun d!1571843 () Bool)

(assert (=> d!1571843 (= (get!19481 lt!2005837) (v!49981 lt!2005837))))

(assert (=> b!4893358 d!1571843))

(declare-fun d!1571845 () Bool)

(assert (=> d!1571845 (= (get!19482 lt!2005836) (v!49980 lt!2005836))))

(assert (=> b!4893358 d!1571845))

(declare-fun d!1571847 () Bool)

(assert (=> d!1571847 (= (list!17727 (_2!33531 lt!2005841)) (list!17729 (c!831694 (_2!33531 lt!2005841))))))

(declare-fun bs!1176075 () Bool)

(assert (= bs!1176075 d!1571847))

(declare-fun m!5898498 () Bool)

(assert (=> bs!1176075 m!5898498))

(assert (=> b!4893361 d!1571847))

(declare-fun d!1571849 () Bool)

(assert (=> d!1571849 (= (isEmpty!30265 rulesArg!165) (is-Nil!56410 rulesArg!165))))

(assert (=> b!4893350 d!1571849))

(declare-fun d!1571851 () Bool)

(assert (=> d!1571851 true))

(declare-fun lt!2005903 () Bool)

(declare-fun lambda!244023 () Int)

(declare-fun forall!13091 (List!56534 Int) Bool)

(assert (=> d!1571851 (= lt!2005903 (forall!13091 rulesArg!165 lambda!244023))))

(declare-fun e!3059133 () Bool)

(assert (=> d!1571851 (= lt!2005903 e!3059133)))

(declare-fun res!2089937 () Bool)

(assert (=> d!1571851 (=> res!2089937 e!3059133)))

(assert (=> d!1571851 (= res!2089937 (not (is-Cons!56410 rulesArg!165)))))

(assert (=> d!1571851 (= (rulesValidInductive!3154 thiss!14805 rulesArg!165) lt!2005903)))

(declare-fun b!4893445 () Bool)

(declare-fun e!3059134 () Bool)

(assert (=> b!4893445 (= e!3059133 e!3059134)))

(declare-fun res!2089938 () Bool)

(assert (=> b!4893445 (=> (not res!2089938) (not e!3059134))))

(declare-fun ruleValid!3673 (LexerInterface!7767 Rule!16150) Bool)

(assert (=> b!4893445 (= res!2089938 (ruleValid!3673 thiss!14805 (h!62858 rulesArg!165)))))

(declare-fun b!4893446 () Bool)

(assert (=> b!4893446 (= e!3059134 (rulesValidInductive!3154 thiss!14805 (t!365674 rulesArg!165)))))

(assert (= (and d!1571851 (not res!2089937)) b!4893445))

(assert (= (and b!4893445 res!2089938) b!4893446))

(declare-fun m!5898524 () Bool)

(assert (=> d!1571851 m!5898524))

(declare-fun m!5898526 () Bool)

(assert (=> b!4893445 m!5898526))

(declare-fun m!5898528 () Bool)

(assert (=> b!4893446 m!5898528))

(assert (=> b!4893351 d!1571851))

(declare-fun d!1571877 () Bool)

(declare-fun isEmpty!30267 (Option!14028) Bool)

(assert (=> d!1571877 (= (isDefined!11040 lt!2005837) (not (isEmpty!30267 lt!2005837)))))

(declare-fun bs!1176082 () Bool)

(assert (= bs!1176082 d!1571877))

(declare-fun m!5898530 () Bool)

(assert (=> bs!1176082 m!5898530))

(assert (=> b!4893362 d!1571877))

(declare-fun d!1571879 () Bool)

(declare-fun isEmpty!30268 (Option!14027) Bool)

(assert (=> d!1571879 (= (isDefined!11041 lt!2005836) (not (isEmpty!30268 lt!2005836)))))

(declare-fun bs!1176083 () Bool)

(assert (= bs!1176083 d!1571879))

(declare-fun m!5898532 () Bool)

(assert (=> bs!1176083 m!5898532))

(assert (=> b!4893362 d!1571879))

(declare-fun lt!2005918 () Option!14028)

(declare-fun d!1571881 () Bool)

(assert (=> d!1571881 (= lt!2005918 (maxPrefix!4604 thiss!14805 rulesArg!165 lt!2005844))))

(declare-fun e!3059137 () Option!14028)

(assert (=> d!1571881 (= lt!2005918 e!3059137)))

(declare-fun c!831707 () Bool)

(assert (=> d!1571881 (= c!831707 (and (is-Cons!56410 rulesArg!165) (is-Nil!56410 (t!365674 rulesArg!165))))))

(declare-fun lt!2005916 () Unit!146435)

(declare-fun lt!2005917 () Unit!146435)

(assert (=> d!1571881 (= lt!2005916 lt!2005917)))

(assert (=> d!1571881 (isPrefix!4895 lt!2005844 lt!2005844)))

(assert (=> d!1571881 (= lt!2005917 (lemmaIsPrefixRefl!3292 lt!2005844 lt!2005844))))

(assert (=> d!1571881 (rulesValidInductive!3154 thiss!14805 rulesArg!165)))

(assert (=> d!1571881 (= (maxPrefixZipper!674 thiss!14805 rulesArg!165 lt!2005844) lt!2005918)))

(declare-fun bm!339399 () Bool)

(declare-fun call!339404 () Option!14028)

(declare-fun maxPrefixOneRuleZipper!259 (LexerInterface!7767 Rule!16150 List!56532) Option!14028)

(assert (=> bm!339399 (= call!339404 (maxPrefixOneRuleZipper!259 thiss!14805 (h!62858 rulesArg!165) lt!2005844))))

(declare-fun b!4893453 () Bool)

(assert (=> b!4893453 (= e!3059137 call!339404)))

(declare-fun b!4893454 () Bool)

(declare-fun lt!2005915 () Option!14028)

(declare-fun lt!2005914 () Option!14028)

(assert (=> b!4893454 (= e!3059137 (ite (and (is-None!14027 lt!2005915) (is-None!14027 lt!2005914)) None!14027 (ite (is-None!14027 lt!2005914) lt!2005915 (ite (is-None!14027 lt!2005915) lt!2005914 (ite (>= (size!37143 (_1!33532 (v!49981 lt!2005915))) (size!37143 (_1!33532 (v!49981 lt!2005914)))) lt!2005915 lt!2005914)))))))

(assert (=> b!4893454 (= lt!2005915 call!339404)))

(assert (=> b!4893454 (= lt!2005914 (maxPrefixZipper!674 thiss!14805 (t!365674 rulesArg!165) lt!2005844))))

(assert (= (and d!1571881 c!831707) b!4893453))

(assert (= (and d!1571881 (not c!831707)) b!4893454))

(assert (= (or b!4893453 b!4893454) bm!339399))

(assert (=> d!1571881 m!5898422))

(assert (=> d!1571881 m!5898440))

(assert (=> d!1571881 m!5898442))

(assert (=> d!1571881 m!5898432))

(declare-fun m!5898534 () Bool)

(assert (=> bm!339399 m!5898534))

(declare-fun m!5898536 () Bool)

(assert (=> b!4893454 m!5898536))

(assert (=> b!4893362 d!1571881))

(declare-fun b!4893466 () Bool)

(declare-fun e!3059144 () Bool)

(declare-fun size!37145 (List!56532) Int)

(assert (=> b!4893466 (= e!3059144 (>= (size!37145 lt!2005844) (size!37145 lt!2005844)))))

(declare-fun d!1571883 () Bool)

(assert (=> d!1571883 e!3059144))

(declare-fun res!2089949 () Bool)

(assert (=> d!1571883 (=> res!2089949 e!3059144)))

(declare-fun lt!2005921 () Bool)

(assert (=> d!1571883 (= res!2089949 (not lt!2005921))))

(declare-fun e!3059146 () Bool)

(assert (=> d!1571883 (= lt!2005921 e!3059146)))

(declare-fun res!2089947 () Bool)

(assert (=> d!1571883 (=> res!2089947 e!3059146)))

(assert (=> d!1571883 (= res!2089947 (is-Nil!56408 lt!2005844))))

(assert (=> d!1571883 (= (isPrefix!4895 lt!2005844 lt!2005844) lt!2005921)))

(declare-fun b!4893464 () Bool)

(declare-fun res!2089950 () Bool)

(declare-fun e!3059145 () Bool)

(assert (=> b!4893464 (=> (not res!2089950) (not e!3059145))))

(declare-fun head!10456 (List!56532) C!26698)

(assert (=> b!4893464 (= res!2089950 (= (head!10456 lt!2005844) (head!10456 lt!2005844)))))

(declare-fun b!4893463 () Bool)

(assert (=> b!4893463 (= e!3059146 e!3059145)))

(declare-fun res!2089948 () Bool)

(assert (=> b!4893463 (=> (not res!2089948) (not e!3059145))))

(assert (=> b!4893463 (= res!2089948 (not (is-Nil!56408 lt!2005844)))))

(declare-fun b!4893465 () Bool)

(declare-fun tail!9602 (List!56532) List!56532)

(assert (=> b!4893465 (= e!3059145 (isPrefix!4895 (tail!9602 lt!2005844) (tail!9602 lt!2005844)))))

(assert (= (and d!1571883 (not res!2089947)) b!4893463))

(assert (= (and b!4893463 res!2089948) b!4893464))

(assert (= (and b!4893464 res!2089950) b!4893465))

(assert (= (and d!1571883 (not res!2089949)) b!4893466))

(declare-fun m!5898538 () Bool)

(assert (=> b!4893466 m!5898538))

(assert (=> b!4893466 m!5898538))

(declare-fun m!5898540 () Bool)

(assert (=> b!4893464 m!5898540))

(assert (=> b!4893464 m!5898540))

(declare-fun m!5898542 () Bool)

(assert (=> b!4893465 m!5898542))

(assert (=> b!4893465 m!5898542))

(assert (=> b!4893465 m!5898542))

(assert (=> b!4893465 m!5898542))

(declare-fun m!5898544 () Bool)

(assert (=> b!4893465 m!5898544))

(assert (=> b!4893363 d!1571883))

(declare-fun d!1571885 () Bool)

(assert (=> d!1571885 (isPrefix!4895 lt!2005844 lt!2005844)))

(declare-fun lt!2005924 () Unit!146435)

(declare-fun choose!35724 (List!56532 List!56532) Unit!146435)

(assert (=> d!1571885 (= lt!2005924 (choose!35724 lt!2005844 lt!2005844))))

(assert (=> d!1571885 (= (lemmaIsPrefixRefl!3292 lt!2005844 lt!2005844) lt!2005924)))

(declare-fun bs!1176084 () Bool)

(assert (= bs!1176084 d!1571885))

(assert (=> bs!1176084 m!5898440))

(declare-fun m!5898546 () Bool)

(assert (=> bs!1176084 m!5898546))

(assert (=> b!4893363 d!1571885))

(declare-fun d!1571887 () Bool)

(assert (=> d!1571887 (= (list!17727 input!1236) (list!17729 (c!831694 input!1236)))))

(declare-fun bs!1176085 () Bool)

(assert (= bs!1176085 d!1571887))

(declare-fun m!5898548 () Bool)

(assert (=> bs!1176085 m!5898548))

(assert (=> b!4893363 d!1571887))

(declare-fun d!1571889 () Bool)

(assert (=> d!1571889 (= (inv!72686 (tag!9039 (h!62858 rulesArg!165))) (= (mod (str.len (value!262138 (tag!9039 (h!62858 rulesArg!165)))) 2) 0))))

(assert (=> b!4893352 d!1571889))

(declare-fun d!1571891 () Bool)

(declare-fun res!2089953 () Bool)

(declare-fun e!3059149 () Bool)

(assert (=> d!1571891 (=> (not res!2089953) (not e!3059149))))

(declare-fun semiInverseModEq!3587 (Int Int) Bool)

(assert (=> d!1571891 (= res!2089953 (semiInverseModEq!3587 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))))))

(assert (=> d!1571891 (= (inv!72689 (transformation!8175 (h!62858 rulesArg!165))) e!3059149)))

(declare-fun b!4893469 () Bool)

(declare-fun equivClasses!3466 (Int Int) Bool)

(assert (=> b!4893469 (= e!3059149 (equivClasses!3466 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))))))

(assert (= (and d!1571891 res!2089953) b!4893469))

(declare-fun m!5898550 () Bool)

(assert (=> d!1571891 m!5898550))

(declare-fun m!5898552 () Bool)

(assert (=> b!4893469 m!5898552))

(assert (=> b!4893352 d!1571891))

(declare-fun d!1571893 () Bool)

(assert (=> d!1571893 (= (get!19481 (maxPrefix!4604 thiss!14805 rulesArg!165 lt!2005844)) (v!49981 (maxPrefix!4604 thiss!14805 rulesArg!165 lt!2005844)))))

(assert (=> b!4893364 d!1571893))

(declare-fun b!4893488 () Bool)

(declare-fun e!3059157 () Bool)

(declare-fun e!3059158 () Bool)

(assert (=> b!4893488 (= e!3059157 e!3059158)))

(declare-fun res!2089969 () Bool)

(assert (=> b!4893488 (=> (not res!2089969) (not e!3059158))))

(declare-fun lt!2005936 () Option!14028)

(assert (=> b!4893488 (= res!2089969 (isDefined!11040 lt!2005936))))

(declare-fun b!4893489 () Bool)

(declare-fun contains!19438 (List!56534 Rule!16150) Bool)

(assert (=> b!4893489 (= e!3059158 (contains!19438 rulesArg!165 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))))

(declare-fun d!1571895 () Bool)

(assert (=> d!1571895 e!3059157))

(declare-fun res!2089968 () Bool)

(assert (=> d!1571895 (=> res!2089968 e!3059157)))

(assert (=> d!1571895 (= res!2089968 (isEmpty!30267 lt!2005936))))

(declare-fun e!3059156 () Option!14028)

(assert (=> d!1571895 (= lt!2005936 e!3059156)))

(declare-fun c!831710 () Bool)

(assert (=> d!1571895 (= c!831710 (and (is-Cons!56410 rulesArg!165) (is-Nil!56410 (t!365674 rulesArg!165))))))

(declare-fun lt!2005937 () Unit!146435)

(declare-fun lt!2005938 () Unit!146435)

(assert (=> d!1571895 (= lt!2005937 lt!2005938)))

(assert (=> d!1571895 (isPrefix!4895 lt!2005844 lt!2005844)))

(assert (=> d!1571895 (= lt!2005938 (lemmaIsPrefixRefl!3292 lt!2005844 lt!2005844))))

(assert (=> d!1571895 (rulesValidInductive!3154 thiss!14805 rulesArg!165)))

(assert (=> d!1571895 (= (maxPrefix!4604 thiss!14805 rulesArg!165 lt!2005844) lt!2005936)))

(declare-fun b!4893490 () Bool)

(declare-fun res!2089970 () Bool)

(assert (=> b!4893490 (=> (not res!2089970) (not e!3059158))))

(declare-fun ++!12244 (List!56532 List!56532) List!56532)

(declare-fun charsOf!5375 (Token!14914) BalanceConc!28916)

(assert (=> b!4893490 (= res!2089970 (= (++!12244 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))) (_2!33532 (get!19481 lt!2005936))) lt!2005844))))

(declare-fun bm!339402 () Bool)

(declare-fun call!339407 () Option!14028)

(declare-fun maxPrefixOneRule!3530 (LexerInterface!7767 Rule!16150 List!56532) Option!14028)

(assert (=> bm!339402 (= call!339407 (maxPrefixOneRule!3530 thiss!14805 (h!62858 rulesArg!165) lt!2005844))))

(declare-fun b!4893491 () Bool)

(declare-fun lt!2005939 () Option!14028)

(declare-fun lt!2005935 () Option!14028)

(assert (=> b!4893491 (= e!3059156 (ite (and (is-None!14027 lt!2005939) (is-None!14027 lt!2005935)) None!14027 (ite (is-None!14027 lt!2005935) lt!2005939 (ite (is-None!14027 lt!2005939) lt!2005935 (ite (>= (size!37143 (_1!33532 (v!49981 lt!2005939))) (size!37143 (_1!33532 (v!49981 lt!2005935)))) lt!2005939 lt!2005935)))))))

(assert (=> b!4893491 (= lt!2005939 call!339407)))

(assert (=> b!4893491 (= lt!2005935 (maxPrefix!4604 thiss!14805 (t!365674 rulesArg!165) lt!2005844))))

(declare-fun b!4893492 () Bool)

(assert (=> b!4893492 (= e!3059156 call!339407)))

(declare-fun b!4893493 () Bool)

(declare-fun res!2089974 () Bool)

(assert (=> b!4893493 (=> (not res!2089974) (not e!3059158))))

(declare-fun matchR!6531 (Regex!13250 List!56532) Bool)

(assert (=> b!4893493 (= res!2089974 (matchR!6531 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))) (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))

(declare-fun b!4893494 () Bool)

(declare-fun res!2089973 () Bool)

(assert (=> b!4893494 (=> (not res!2089973) (not e!3059158))))

(assert (=> b!4893494 (= res!2089973 (= (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))) (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936)))))))

(declare-fun b!4893495 () Bool)

(declare-fun res!2089972 () Bool)

(assert (=> b!4893495 (=> (not res!2089972) (not e!3059158))))

(declare-fun apply!13541 (TokenValueInjection!16278 BalanceConc!28916) TokenValue!8485)

(declare-fun seqFromList!5937 (List!56532) BalanceConc!28916)

(assert (=> b!4893495 (= res!2089972 (= (value!262139 (_1!33532 (get!19481 lt!2005936))) (apply!13541 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936)))))))))

(declare-fun b!4893496 () Bool)

(declare-fun res!2089971 () Bool)

(assert (=> b!4893496 (=> (not res!2089971) (not e!3059158))))

(assert (=> b!4893496 (= res!2089971 (< (size!37145 (_2!33532 (get!19481 lt!2005936))) (size!37145 lt!2005844)))))

(assert (= (and d!1571895 c!831710) b!4893492))

(assert (= (and d!1571895 (not c!831710)) b!4893491))

(assert (= (or b!4893492 b!4893491) bm!339402))

(assert (= (and d!1571895 (not res!2089968)) b!4893488))

(assert (= (and b!4893488 res!2089969) b!4893494))

(assert (= (and b!4893494 res!2089973) b!4893496))

(assert (= (and b!4893496 res!2089971) b!4893490))

(assert (= (and b!4893490 res!2089970) b!4893495))

(assert (= (and b!4893495 res!2089972) b!4893493))

(assert (= (and b!4893493 res!2089974) b!4893489))

(declare-fun m!5898554 () Bool)

(assert (=> b!4893489 m!5898554))

(declare-fun m!5898556 () Bool)

(assert (=> b!4893489 m!5898556))

(declare-fun m!5898558 () Bool)

(assert (=> d!1571895 m!5898558))

(assert (=> d!1571895 m!5898440))

(assert (=> d!1571895 m!5898442))

(assert (=> d!1571895 m!5898432))

(declare-fun m!5898562 () Bool)

(assert (=> b!4893491 m!5898562))

(assert (=> b!4893493 m!5898554))

(declare-fun m!5898568 () Bool)

(assert (=> b!4893493 m!5898568))

(assert (=> b!4893493 m!5898568))

(declare-fun m!5898570 () Bool)

(assert (=> b!4893493 m!5898570))

(assert (=> b!4893493 m!5898570))

(declare-fun m!5898572 () Bool)

(assert (=> b!4893493 m!5898572))

(assert (=> b!4893494 m!5898554))

(assert (=> b!4893494 m!5898568))

(assert (=> b!4893494 m!5898568))

(assert (=> b!4893494 m!5898570))

(assert (=> b!4893490 m!5898554))

(assert (=> b!4893490 m!5898568))

(assert (=> b!4893490 m!5898568))

(assert (=> b!4893490 m!5898570))

(assert (=> b!4893490 m!5898570))

(declare-fun m!5898574 () Bool)

(assert (=> b!4893490 m!5898574))

(assert (=> b!4893496 m!5898554))

(declare-fun m!5898576 () Bool)

(assert (=> b!4893496 m!5898576))

(assert (=> b!4893496 m!5898538))

(assert (=> b!4893495 m!5898554))

(declare-fun m!5898578 () Bool)

(assert (=> b!4893495 m!5898578))

(assert (=> b!4893495 m!5898578))

(declare-fun m!5898580 () Bool)

(assert (=> b!4893495 m!5898580))

(declare-fun m!5898582 () Bool)

(assert (=> bm!339402 m!5898582))

(declare-fun m!5898584 () Bool)

(assert (=> b!4893488 m!5898584))

(assert (=> b!4893364 d!1571895))

(assert (=> b!4893364 d!1571845))

(declare-fun d!1571899 () Bool)

(declare-fun e!3059185 () Bool)

(assert (=> d!1571899 e!3059185))

(declare-fun res!2090003 () Bool)

(assert (=> d!1571899 (=> (not res!2090003) (not e!3059185))))

(declare-fun lt!2005974 () Option!14027)

(assert (=> d!1571899 (= res!2090003 (= (isDefined!11041 lt!2005974) (isDefined!11040 (maxPrefixZipper!674 thiss!14805 (t!365674 rulesArg!165) (list!17727 input!1236)))))))

(declare-fun e!3059190 () Option!14027)

(assert (=> d!1571899 (= lt!2005974 e!3059190)))

(declare-fun c!831715 () Bool)

(assert (=> d!1571899 (= c!831715 (and (is-Cons!56410 (t!365674 rulesArg!165)) (is-Nil!56410 (t!365674 (t!365674 rulesArg!165)))))))

(declare-fun lt!2005973 () Unit!146435)

(declare-fun lt!2005971 () Unit!146435)

(assert (=> d!1571899 (= lt!2005973 lt!2005971)))

(declare-fun lt!2005969 () List!56532)

(declare-fun lt!2005975 () List!56532)

(assert (=> d!1571899 (isPrefix!4895 lt!2005969 lt!2005975)))

(assert (=> d!1571899 (= lt!2005971 (lemmaIsPrefixRefl!3292 lt!2005969 lt!2005975))))

(assert (=> d!1571899 (= lt!2005975 (list!17727 input!1236))))

(assert (=> d!1571899 (= lt!2005969 (list!17727 input!1236))))

(assert (=> d!1571899 (rulesValidInductive!3154 thiss!14805 (t!365674 rulesArg!165))))

(assert (=> d!1571899 (= (maxPrefixZipperSequence!1316 thiss!14805 (t!365674 rulesArg!165) input!1236) lt!2005974)))

(declare-fun b!4893533 () Bool)

(declare-fun e!3059189 () Bool)

(declare-fun e!3059187 () Bool)

(assert (=> b!4893533 (= e!3059189 e!3059187)))

(declare-fun res!2090004 () Bool)

(assert (=> b!4893533 (=> (not res!2090004) (not e!3059187))))

(assert (=> b!4893533 (= res!2090004 (= (_1!33531 (get!19482 lt!2005974)) (_1!33532 (get!19481 (maxPrefix!4604 thiss!14805 (t!365674 rulesArg!165) (list!17727 input!1236))))))))

(declare-fun b!4893534 () Bool)

(assert (=> b!4893534 (= e!3059185 e!3059189)))

(declare-fun res!2090001 () Bool)

(assert (=> b!4893534 (=> res!2090001 e!3059189)))

(assert (=> b!4893534 (= res!2090001 (not (isDefined!11041 lt!2005974)))))

(declare-fun b!4893535 () Bool)

(declare-fun res!2090006 () Bool)

(assert (=> b!4893535 (=> (not res!2090006) (not e!3059185))))

(declare-fun e!3059186 () Bool)

(assert (=> b!4893535 (= res!2090006 e!3059186)))

(declare-fun res!2090002 () Bool)

(assert (=> b!4893535 (=> res!2090002 e!3059186)))

(assert (=> b!4893535 (= res!2090002 (not (isDefined!11041 lt!2005974)))))

(declare-fun b!4893536 () Bool)

(assert (=> b!4893536 (= e!3059187 (= (list!17727 (_2!33531 (get!19482 lt!2005974))) (_2!33532 (get!19481 (maxPrefix!4604 thiss!14805 (t!365674 rulesArg!165) (list!17727 input!1236))))))))

(declare-fun b!4893537 () Bool)

(declare-fun call!339412 () Option!14027)

(assert (=> b!4893537 (= e!3059190 call!339412)))

(declare-fun b!4893538 () Bool)

(declare-fun lt!2005972 () Option!14027)

(declare-fun lt!2005970 () Option!14027)

(assert (=> b!4893538 (= e!3059190 (ite (and (is-None!14026 lt!2005972) (is-None!14026 lt!2005970)) None!14026 (ite (is-None!14026 lt!2005970) lt!2005972 (ite (is-None!14026 lt!2005972) lt!2005970 (ite (>= (size!37143 (_1!33531 (v!49980 lt!2005972))) (size!37143 (_1!33531 (v!49980 lt!2005970)))) lt!2005972 lt!2005970)))))))

(assert (=> b!4893538 (= lt!2005972 call!339412)))

(assert (=> b!4893538 (= lt!2005970 (maxPrefixZipperSequence!1316 thiss!14805 (t!365674 (t!365674 rulesArg!165)) input!1236))))

(declare-fun e!3059188 () Bool)

(declare-fun b!4893539 () Bool)

(assert (=> b!4893539 (= e!3059188 (= (list!17727 (_2!33531 (get!19482 lt!2005974))) (_2!33532 (get!19481 (maxPrefixZipper!674 thiss!14805 (t!365674 rulesArg!165) (list!17727 input!1236))))))))

(declare-fun bm!339407 () Bool)

(assert (=> bm!339407 (= call!339412 (maxPrefixOneRuleZipperSequence!685 thiss!14805 (h!62858 (t!365674 rulesArg!165)) input!1236))))

(declare-fun b!4893540 () Bool)

(assert (=> b!4893540 (= e!3059186 e!3059188)))

(declare-fun res!2090005 () Bool)

(assert (=> b!4893540 (=> (not res!2090005) (not e!3059188))))

(assert (=> b!4893540 (= res!2090005 (= (_1!33531 (get!19482 lt!2005974)) (_1!33532 (get!19481 (maxPrefixZipper!674 thiss!14805 (t!365674 rulesArg!165) (list!17727 input!1236))))))))

(assert (= (and d!1571899 c!831715) b!4893537))

(assert (= (and d!1571899 (not c!831715)) b!4893538))

(assert (= (or b!4893537 b!4893538) bm!339407))

(assert (= (and d!1571899 res!2090003) b!4893535))

(assert (= (and b!4893535 (not res!2090002)) b!4893540))

(assert (= (and b!4893540 res!2090005) b!4893539))

(assert (= (and b!4893535 res!2090006) b!4893534))

(assert (= (and b!4893534 (not res!2090001)) b!4893533))

(assert (= (and b!4893533 res!2090004) b!4893536))

(declare-fun m!5898586 () Bool)

(assert (=> b!4893540 m!5898586))

(assert (=> b!4893540 m!5898444))

(assert (=> b!4893540 m!5898444))

(declare-fun m!5898588 () Bool)

(assert (=> b!4893540 m!5898588))

(assert (=> b!4893540 m!5898588))

(declare-fun m!5898590 () Bool)

(assert (=> b!4893540 m!5898590))

(declare-fun m!5898592 () Bool)

(assert (=> b!4893534 m!5898592))

(assert (=> b!4893539 m!5898588))

(assert (=> b!4893539 m!5898590))

(assert (=> b!4893539 m!5898586))

(assert (=> b!4893539 m!5898444))

(assert (=> b!4893539 m!5898444))

(assert (=> b!4893539 m!5898588))

(declare-fun m!5898594 () Bool)

(assert (=> b!4893539 m!5898594))

(assert (=> b!4893535 m!5898592))

(assert (=> b!4893536 m!5898586))

(assert (=> b!4893536 m!5898444))

(declare-fun m!5898596 () Bool)

(assert (=> b!4893536 m!5898596))

(declare-fun m!5898598 () Bool)

(assert (=> b!4893536 m!5898598))

(assert (=> b!4893536 m!5898444))

(assert (=> b!4893536 m!5898596))

(assert (=> b!4893536 m!5898594))

(assert (=> b!4893533 m!5898586))

(assert (=> b!4893533 m!5898444))

(assert (=> b!4893533 m!5898444))

(assert (=> b!4893533 m!5898596))

(assert (=> b!4893533 m!5898596))

(assert (=> b!4893533 m!5898598))

(declare-fun m!5898600 () Bool)

(assert (=> bm!339407 m!5898600))

(assert (=> d!1571899 m!5898528))

(declare-fun m!5898602 () Bool)

(assert (=> d!1571899 m!5898602))

(declare-fun m!5898604 () Bool)

(assert (=> d!1571899 m!5898604))

(assert (=> d!1571899 m!5898592))

(assert (=> d!1571899 m!5898444))

(assert (=> d!1571899 m!5898444))

(assert (=> d!1571899 m!5898588))

(assert (=> d!1571899 m!5898588))

(declare-fun m!5898606 () Bool)

(assert (=> d!1571899 m!5898606))

(declare-fun m!5898608 () Bool)

(assert (=> b!4893538 m!5898608))

(assert (=> b!4893354 d!1571899))

(declare-fun b!4893586 () Bool)

(declare-fun e!3059227 () Bool)

(assert (=> b!4893586 (= e!3059227 true)))

(declare-fun b!4893585 () Bool)

(declare-fun e!3059226 () Bool)

(assert (=> b!4893585 (= e!3059226 e!3059227)))

(declare-fun b!4893578 () Bool)

(assert (=> b!4893578 e!3059226))

(assert (= b!4893585 b!4893586))

(assert (= b!4893578 b!4893585))

(declare-fun order!25479 () Int)

(declare-fun lambda!244035 () Int)

(declare-fun order!25481 () Int)

(declare-fun dynLambda!22635 (Int Int) Int)

(declare-fun dynLambda!22636 (Int Int) Int)

(assert (=> b!4893586 (< (dynLambda!22635 order!25479 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) (dynLambda!22636 order!25481 lambda!244035))))

(declare-fun order!25483 () Int)

(declare-fun dynLambda!22637 (Int Int) Int)

(assert (=> b!4893586 (< (dynLambda!22637 order!25483 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) (dynLambda!22636 order!25481 lambda!244035))))

(declare-fun b!4893573 () Bool)

(declare-fun e!3059217 () Bool)

(declare-fun e!3059219 () Bool)

(assert (=> b!4893573 (= e!3059217 e!3059219)))

(declare-fun res!2090029 () Bool)

(assert (=> b!4893573 (=> res!2090029 e!3059219)))

(declare-fun lt!2006028 () Option!14027)

(assert (=> b!4893573 (= res!2090029 (not (isDefined!11041 lt!2006028)))))

(declare-fun d!1571901 () Bool)

(assert (=> d!1571901 e!3059217))

(declare-fun res!2090030 () Bool)

(assert (=> d!1571901 (=> (not res!2090030) (not e!3059217))))

(assert (=> d!1571901 (= res!2090030 (= (isDefined!11041 lt!2006028) (isDefined!11040 (maxPrefixOneRule!3530 thiss!14805 (h!62858 rulesArg!165) (list!17727 input!1236)))))))

(declare-fun e!3059221 () Option!14027)

(assert (=> d!1571901 (= lt!2006028 e!3059221)))

(declare-fun c!831721 () Bool)

(declare-datatypes ((tuple2!60464 0))(
  ( (tuple2!60465 (_1!33535 BalanceConc!28916) (_2!33535 BalanceConc!28916)) )
))
(declare-fun lt!2006025 () tuple2!60464)

(declare-fun isEmpty!30271 (BalanceConc!28916) Bool)

(assert (=> d!1571901 (= c!831721 (isEmpty!30271 (_1!33535 lt!2006025)))))

(declare-fun findLongestMatchWithZipperSequence!269 (Regex!13250 BalanceConc!28916) tuple2!60464)

(assert (=> d!1571901 (= lt!2006025 (findLongestMatchWithZipperSequence!269 (regex!8175 (h!62858 rulesArg!165)) input!1236))))

(assert (=> d!1571901 (ruleValid!3673 thiss!14805 (h!62858 rulesArg!165))))

(assert (=> d!1571901 (= (maxPrefixOneRuleZipperSequence!685 thiss!14805 (h!62858 rulesArg!165) input!1236) lt!2006028)))

(declare-fun b!4893574 () Bool)

(declare-fun e!3059220 () Bool)

(assert (=> b!4893574 (= e!3059219 e!3059220)))

(declare-fun res!2090031 () Bool)

(assert (=> b!4893574 (=> (not res!2090031) (not e!3059220))))

(assert (=> b!4893574 (= res!2090031 (= (_1!33531 (get!19482 lt!2006028)) (_1!33532 (get!19481 (maxPrefixOneRule!3530 thiss!14805 (h!62858 rulesArg!165) (list!17727 input!1236))))))))

(declare-fun b!4893575 () Bool)

(assert (=> b!4893575 (= e!3059220 (= (list!17727 (_2!33531 (get!19482 lt!2006028))) (_2!33532 (get!19481 (maxPrefixOneRule!3530 thiss!14805 (h!62858 rulesArg!165) (list!17727 input!1236))))))))

(declare-fun b!4893576 () Bool)

(declare-fun e!3059218 () Bool)

(declare-fun lt!2006027 () List!56532)

(declare-datatypes ((tuple2!60466 0))(
  ( (tuple2!60467 (_1!33536 List!56532) (_2!33536 List!56532)) )
))
(declare-fun findLongestMatchInner!1754 (Regex!13250 List!56532 Int List!56532 List!56532 Int) tuple2!60466)

(assert (=> b!4893576 (= e!3059218 (matchR!6531 (regex!8175 (h!62858 rulesArg!165)) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))

(declare-fun b!4893577 () Bool)

(assert (=> b!4893577 (= e!3059221 None!14026)))

(declare-fun size!37147 (BalanceConc!28916) Int)

(assert (=> b!4893578 (= e!3059221 (Some!14026 (tuple2!60457 (Token!14915 (apply!13541 (transformation!8175 (h!62858 rulesArg!165)) (_1!33535 lt!2006025)) (h!62858 rulesArg!165) (size!37147 (_1!33535 lt!2006025)) (list!17727 (_1!33535 lt!2006025))) (_2!33535 lt!2006025))))))

(assert (=> b!4893578 (= lt!2006027 (list!17727 input!1236))))

(declare-fun lt!2006030 () Unit!146435)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1717 (Regex!13250 List!56532) Unit!146435)

(assert (=> b!4893578 (= lt!2006030 (longestMatchIsAcceptedByMatchOrIsEmpty!1717 (regex!8175 (h!62858 rulesArg!165)) lt!2006027))))

(declare-fun res!2090032 () Bool)

(declare-fun isEmpty!30272 (List!56532) Bool)

(assert (=> b!4893578 (= res!2090032 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))

(assert (=> b!4893578 (=> res!2090032 e!3059218)))

(assert (=> b!4893578 e!3059218))

(declare-fun lt!2006029 () Unit!146435)

(assert (=> b!4893578 (= lt!2006029 lt!2006030)))

(declare-fun lt!2006023 () Unit!146435)

(declare-fun lemmaInv!1237 (TokenValueInjection!16278) Unit!146435)

(assert (=> b!4893578 (= lt!2006023 (lemmaInv!1237 (transformation!8175 (h!62858 rulesArg!165))))))

(declare-fun lt!2006024 () Unit!146435)

(declare-fun ForallOf!1134 (Int BalanceConc!28916) Unit!146435)

(assert (=> b!4893578 (= lt!2006024 (ForallOf!1134 lambda!244035 (_1!33535 lt!2006025)))))

(declare-fun lt!2006032 () Unit!146435)

(assert (=> b!4893578 (= lt!2006032 (ForallOf!1134 lambda!244035 (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))))

(declare-fun lt!2006026 () Option!14027)

(assert (=> b!4893578 (= lt!2006026 (Some!14026 (tuple2!60457 (Token!14915 (apply!13541 (transformation!8175 (h!62858 rulesArg!165)) (_1!33535 lt!2006025)) (h!62858 rulesArg!165) (size!37147 (_1!33535 lt!2006025)) (list!17727 (_1!33535 lt!2006025))) (_2!33535 lt!2006025))))))

(declare-fun lt!2006031 () Unit!146435)

(declare-fun lemmaEqSameImage!1091 (TokenValueInjection!16278 BalanceConc!28916 BalanceConc!28916) Unit!146435)

(assert (=> b!4893578 (= lt!2006031 (lemmaEqSameImage!1091 (transformation!8175 (h!62858 rulesArg!165)) (_1!33535 lt!2006025) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))))

(assert (= (and d!1571901 c!831721) b!4893577))

(assert (= (and d!1571901 (not c!831721)) b!4893578))

(assert (= (and b!4893578 (not res!2090032)) b!4893576))

(assert (= (and d!1571901 res!2090030) b!4893573))

(assert (= (and b!4893573 (not res!2090029)) b!4893574))

(assert (= (and b!4893574 res!2090031) b!4893575))

(declare-fun m!5898634 () Bool)

(assert (=> b!4893573 m!5898634))

(declare-fun m!5898636 () Bool)

(assert (=> b!4893578 m!5898636))

(declare-fun m!5898638 () Bool)

(assert (=> b!4893578 m!5898638))

(declare-fun m!5898640 () Bool)

(assert (=> b!4893578 m!5898640))

(declare-fun m!5898642 () Bool)

(assert (=> b!4893578 m!5898642))

(declare-fun m!5898644 () Bool)

(assert (=> b!4893578 m!5898644))

(declare-fun m!5898646 () Bool)

(assert (=> b!4893578 m!5898646))

(assert (=> b!4893578 m!5898640))

(assert (=> b!4893578 m!5898444))

(assert (=> b!4893578 m!5898636))

(assert (=> b!4893578 m!5898638))

(declare-fun m!5898648 () Bool)

(assert (=> b!4893578 m!5898648))

(assert (=> b!4893578 m!5898642))

(declare-fun m!5898650 () Bool)

(assert (=> b!4893578 m!5898650))

(declare-fun m!5898652 () Bool)

(assert (=> b!4893578 m!5898652))

(declare-fun m!5898654 () Bool)

(assert (=> b!4893578 m!5898654))

(assert (=> b!4893578 m!5898642))

(declare-fun m!5898656 () Bool)

(assert (=> b!4893578 m!5898656))

(declare-fun m!5898658 () Bool)

(assert (=> b!4893578 m!5898658))

(declare-fun m!5898660 () Bool)

(assert (=> b!4893578 m!5898660))

(declare-fun m!5898662 () Bool)

(assert (=> b!4893575 m!5898662))

(assert (=> b!4893575 m!5898444))

(declare-fun m!5898664 () Bool)

(assert (=> b!4893575 m!5898664))

(declare-fun m!5898666 () Bool)

(assert (=> b!4893575 m!5898666))

(declare-fun m!5898668 () Bool)

(assert (=> b!4893575 m!5898668))

(assert (=> b!4893575 m!5898444))

(assert (=> b!4893575 m!5898664))

(assert (=> b!4893574 m!5898668))

(assert (=> b!4893574 m!5898444))

(assert (=> b!4893574 m!5898444))

(assert (=> b!4893574 m!5898664))

(assert (=> b!4893574 m!5898664))

(assert (=> b!4893574 m!5898666))

(assert (=> b!4893576 m!5898636))

(assert (=> b!4893576 m!5898638))

(assert (=> b!4893576 m!5898636))

(assert (=> b!4893576 m!5898638))

(assert (=> b!4893576 m!5898648))

(declare-fun m!5898670 () Bool)

(assert (=> b!4893576 m!5898670))

(assert (=> d!1571901 m!5898664))

(declare-fun m!5898672 () Bool)

(assert (=> d!1571901 m!5898672))

(assert (=> d!1571901 m!5898444))

(assert (=> d!1571901 m!5898634))

(declare-fun m!5898674 () Bool)

(assert (=> d!1571901 m!5898674))

(assert (=> d!1571901 m!5898526))

(declare-fun m!5898676 () Bool)

(assert (=> d!1571901 m!5898676))

(assert (=> d!1571901 m!5898444))

(assert (=> d!1571901 m!5898664))

(assert (=> b!4893354 d!1571901))

(declare-fun tp!1377248 () Bool)

(declare-fun tp!1377247 () Bool)

(declare-fun b!4893609 () Bool)

(declare-fun e!3059243 () Bool)

(assert (=> b!4893609 (= e!3059243 (and (inv!72691 (left!40981 (c!831694 input!1236))) tp!1377247 (inv!72691 (right!41311 (c!831694 input!1236))) tp!1377248))))

(declare-fun b!4893611 () Bool)

(declare-fun e!3059244 () Bool)

(declare-fun tp!1377246 () Bool)

(assert (=> b!4893611 (= e!3059244 tp!1377246)))

(declare-fun b!4893610 () Bool)

(declare-fun inv!72697 (IArray!29547) Bool)

(assert (=> b!4893610 (= e!3059243 (and (inv!72697 (xs!18059 (c!831694 input!1236))) e!3059244))))

(assert (=> b!4893357 (= tp!1377221 (and (inv!72691 (c!831694 input!1236)) e!3059243))))

(assert (= (and b!4893357 (is-Node!14743 (c!831694 input!1236))) b!4893609))

(assert (= b!4893610 b!4893611))

(assert (= (and b!4893357 (is-Leaf!24548 (c!831694 input!1236))) b!4893610))

(declare-fun m!5898678 () Bool)

(assert (=> b!4893609 m!5898678))

(declare-fun m!5898680 () Bool)

(assert (=> b!4893609 m!5898680))

(declare-fun m!5898682 () Bool)

(assert (=> b!4893610 m!5898682))

(assert (=> b!4893357 m!5898410))

(declare-fun b!4893625 () Bool)

(declare-fun e!3059247 () Bool)

(declare-fun tp!1377263 () Bool)

(declare-fun tp!1377260 () Bool)

(assert (=> b!4893625 (= e!3059247 (and tp!1377263 tp!1377260))))

(declare-fun b!4893624 () Bool)

(declare-fun tp!1377262 () Bool)

(assert (=> b!4893624 (= e!3059247 tp!1377262)))

(declare-fun b!4893623 () Bool)

(declare-fun tp!1377259 () Bool)

(declare-fun tp!1377261 () Bool)

(assert (=> b!4893623 (= e!3059247 (and tp!1377259 tp!1377261))))

(declare-fun b!4893622 () Bool)

(declare-fun tp_is_empty!35781 () Bool)

(assert (=> b!4893622 (= e!3059247 tp_is_empty!35781)))

(assert (=> b!4893352 (= tp!1377222 e!3059247)))

(assert (= (and b!4893352 (is-ElementMatch!13250 (regex!8175 (h!62858 rulesArg!165)))) b!4893622))

(assert (= (and b!4893352 (is-Concat!21736 (regex!8175 (h!62858 rulesArg!165)))) b!4893623))

(assert (= (and b!4893352 (is-Star!13250 (regex!8175 (h!62858 rulesArg!165)))) b!4893624))

(assert (= (and b!4893352 (is-Union!13250 (regex!8175 (h!62858 rulesArg!165)))) b!4893625))

(declare-fun b!4893636 () Bool)

(declare-fun b_free!131575 () Bool)

(declare-fun b_next!132365 () Bool)

(assert (=> b!4893636 (= b_free!131575 (not b_next!132365))))

(declare-fun tp!1377275 () Bool)

(declare-fun b_and!344935 () Bool)

(assert (=> b!4893636 (= tp!1377275 b_and!344935)))

(declare-fun b_free!131577 () Bool)

(declare-fun b_next!132367 () Bool)

(assert (=> b!4893636 (= b_free!131577 (not b_next!132367))))

(declare-fun tp!1377273 () Bool)

(declare-fun b_and!344937 () Bool)

(assert (=> b!4893636 (= tp!1377273 b_and!344937)))

(declare-fun e!3059259 () Bool)

(assert (=> b!4893636 (= e!3059259 (and tp!1377275 tp!1377273))))

(declare-fun e!3059256 () Bool)

(declare-fun b!4893635 () Bool)

(declare-fun tp!1377274 () Bool)

(assert (=> b!4893635 (= e!3059256 (and tp!1377274 (inv!72686 (tag!9039 (h!62858 (t!365674 rulesArg!165)))) (inv!72689 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) e!3059259))))

(declare-fun b!4893634 () Bool)

(declare-fun e!3059258 () Bool)

(declare-fun tp!1377272 () Bool)

(assert (=> b!4893634 (= e!3059258 (and e!3059256 tp!1377272))))

(assert (=> b!4893353 (= tp!1377220 e!3059258)))

(assert (= b!4893635 b!4893636))

(assert (= b!4893634 b!4893635))

(assert (= (and b!4893353 (is-Cons!56410 (t!365674 rulesArg!165))) b!4893634))

(declare-fun m!5898728 () Bool)

(assert (=> b!4893635 m!5898728))

(declare-fun m!5898730 () Bool)

(assert (=> b!4893635 m!5898730))

(push 1)

(assert (not b!4893494))

(assert (not b!4893623))

(assert (not b!4893466))

(assert (not b!4893464))

(assert (not d!1571901))

(assert (not b!4893576))

(assert (not d!1571879))

(assert (not b_next!132367))

(assert tp_is_empty!35781)

(assert (not b!4893491))

(assert (not d!1571887))

(assert (not bm!339402))

(assert (not b!4893609))

(assert (not b_next!132357))

(assert (not b!4893416))

(assert (not d!1571895))

(assert (not b!4893489))

(assert (not b!4893610))

(assert (not d!1571891))

(assert (not d!1571837))

(assert (not b!4893445))

(assert (not b_next!132359))

(assert (not b!4893635))

(assert (not b!4893536))

(assert (not d!1571839))

(assert (not b!4893634))

(assert (not b!4893465))

(assert (not b!4893538))

(assert (not b!4893574))

(assert (not b!4893533))

(assert (not b!4893539))

(assert (not b!4893575))

(assert (not b!4893418))

(assert (not b!4893488))

(assert (not b!4893490))

(assert (not b!4893496))

(assert (not b!4893540))

(assert (not b!4893446))

(assert (not d!1571851))

(assert (not b!4893535))

(assert (not b!4893357))

(assert (not b!4893495))

(assert (not b_next!132365))

(assert (not b!4893573))

(assert (not b!4893624))

(assert b_and!344927)

(assert (not bm!339399))

(assert (not b!4893611))

(assert (not b!4893454))

(assert (not d!1571881))

(assert (not d!1571885))

(assert (not d!1571847))

(assert b_and!344935)

(assert (not d!1571877))

(assert (not b!4893534))

(assert (not b!4893469))

(assert (not b!4893625))

(assert (not bm!339407))

(assert (not d!1571899))

(assert b_and!344937)

(assert b_and!344929)

(assert (not b!4893493))

(assert (not b!4893578))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!132357))

(assert (not b_next!132359))

(assert (not b_next!132365))

(assert b_and!344927)

(assert b_and!344935)

(assert (not b_next!132367))

(assert b_and!344937)

(assert b_and!344929)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1571917 () Bool)

(declare-fun res!2090093 () Bool)

(declare-fun e!3059301 () Bool)

(assert (=> d!1571917 (=> (not res!2090093) (not e!3059301))))

(declare-fun list!17731 (IArray!29547) List!56532)

(assert (=> d!1571917 (= res!2090093 (<= (size!37145 (list!17731 (xs!18059 (c!831694 input!1236)))) 512))))

(assert (=> d!1571917 (= (inv!72696 (c!831694 input!1236)) e!3059301)))

(declare-fun b!4893716 () Bool)

(declare-fun res!2090094 () Bool)

(assert (=> b!4893716 (=> (not res!2090094) (not e!3059301))))

(assert (=> b!4893716 (= res!2090094 (= (csize!29717 (c!831694 input!1236)) (size!37145 (list!17731 (xs!18059 (c!831694 input!1236))))))))

(declare-fun b!4893717 () Bool)

(assert (=> b!4893717 (= e!3059301 (and (> (csize!29717 (c!831694 input!1236)) 0) (<= (csize!29717 (c!831694 input!1236)) 512)))))

(assert (= (and d!1571917 res!2090093) b!4893716))

(assert (= (and b!4893716 res!2090094) b!4893717))

(declare-fun m!5898778 () Bool)

(assert (=> d!1571917 m!5898778))

(assert (=> d!1571917 m!5898778))

(declare-fun m!5898780 () Bool)

(assert (=> d!1571917 m!5898780))

(assert (=> b!4893716 m!5898778))

(assert (=> b!4893716 m!5898778))

(assert (=> b!4893716 m!5898780))

(assert (=> b!4893418 d!1571917))

(declare-fun d!1571919 () Bool)

(assert (=> d!1571919 (= (isEmpty!30267 lt!2005936) (not (is-Some!14027 lt!2005936)))))

(assert (=> d!1571895 d!1571919))

(assert (=> d!1571895 d!1571883))

(assert (=> d!1571895 d!1571885))

(assert (=> d!1571895 d!1571851))

(declare-fun d!1571921 () Bool)

(assert (=> d!1571921 (= (isDefined!11041 lt!2006028) (not (isEmpty!30268 lt!2006028)))))

(declare-fun bs!1176087 () Bool)

(assert (= bs!1176087 d!1571921))

(declare-fun m!5898782 () Bool)

(assert (=> bs!1176087 m!5898782))

(assert (=> d!1571901 d!1571921))

(declare-fun d!1571923 () Bool)

(assert (=> d!1571923 (= (isDefined!11040 (maxPrefixOneRule!3530 thiss!14805 (h!62858 rulesArg!165) (list!17727 input!1236))) (not (isEmpty!30267 (maxPrefixOneRule!3530 thiss!14805 (h!62858 rulesArg!165) (list!17727 input!1236)))))))

(declare-fun bs!1176088 () Bool)

(assert (= bs!1176088 d!1571923))

(assert (=> bs!1176088 m!5898664))

(declare-fun m!5898784 () Bool)

(assert (=> bs!1176088 m!5898784))

(assert (=> d!1571901 d!1571923))

(declare-fun b!4893736 () Bool)

(declare-fun res!2090110 () Bool)

(declare-fun e!3059310 () Bool)

(assert (=> b!4893736 (=> (not res!2090110) (not e!3059310))))

(declare-fun lt!2006068 () Option!14028)

(assert (=> b!4893736 (= res!2090110 (< (size!37145 (_2!33532 (get!19481 lt!2006068))) (size!37145 (list!17727 input!1236))))))

(declare-fun b!4893737 () Bool)

(declare-fun res!2090112 () Bool)

(assert (=> b!4893737 (=> (not res!2090112) (not e!3059310))))

(assert (=> b!4893737 (= res!2090112 (= (++!12244 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068)))) (_2!33532 (get!19481 lt!2006068))) (list!17727 input!1236)))))

(declare-fun b!4893738 () Bool)

(declare-fun e!3059311 () Option!14028)

(declare-fun lt!2006069 () tuple2!60466)

(assert (=> b!4893738 (= e!3059311 (Some!14027 (tuple2!60459 (Token!14915 (apply!13541 (transformation!8175 (h!62858 rulesArg!165)) (seqFromList!5937 (_1!33536 lt!2006069))) (h!62858 rulesArg!165) (size!37147 (seqFromList!5937 (_1!33536 lt!2006069))) (_1!33536 lt!2006069)) (_2!33536 lt!2006069))))))

(declare-fun lt!2006070 () Unit!146435)

(assert (=> b!4893738 (= lt!2006070 (longestMatchIsAcceptedByMatchOrIsEmpty!1717 (regex!8175 (h!62858 rulesArg!165)) (list!17727 input!1236)))))

(declare-fun res!2090111 () Bool)

(assert (=> b!4893738 (= res!2090111 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236))))))))

(declare-fun e!3059313 () Bool)

(assert (=> b!4893738 (=> res!2090111 e!3059313)))

(assert (=> b!4893738 e!3059313))

(declare-fun lt!2006071 () Unit!146435)

(assert (=> b!4893738 (= lt!2006071 lt!2006070)))

(declare-fun lt!2006072 () Unit!146435)

(declare-fun lemmaSemiInverse!2565 (TokenValueInjection!16278 BalanceConc!28916) Unit!146435)

(assert (=> b!4893738 (= lt!2006072 (lemmaSemiInverse!2565 (transformation!8175 (h!62858 rulesArg!165)) (seqFromList!5937 (_1!33536 lt!2006069))))))

(declare-fun b!4893739 () Bool)

(assert (=> b!4893739 (= e!3059310 (= (size!37143 (_1!33532 (get!19481 lt!2006068))) (size!37145 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006068))))))))

(declare-fun b!4893740 () Bool)

(declare-fun e!3059312 () Bool)

(assert (=> b!4893740 (= e!3059312 e!3059310)))

(declare-fun res!2090113 () Bool)

(assert (=> b!4893740 (=> (not res!2090113) (not e!3059310))))

(assert (=> b!4893740 (= res!2090113 (matchR!6531 (regex!8175 (h!62858 rulesArg!165)) (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068))))))))

(declare-fun d!1571925 () Bool)

(assert (=> d!1571925 e!3059312))

(declare-fun res!2090114 () Bool)

(assert (=> d!1571925 (=> res!2090114 e!3059312)))

(assert (=> d!1571925 (= res!2090114 (isEmpty!30267 lt!2006068))))

(assert (=> d!1571925 (= lt!2006068 e!3059311)))

(declare-fun c!831731 () Bool)

(assert (=> d!1571925 (= c!831731 (isEmpty!30272 (_1!33536 lt!2006069)))))

(declare-fun findLongestMatch!1648 (Regex!13250 List!56532) tuple2!60466)

(assert (=> d!1571925 (= lt!2006069 (findLongestMatch!1648 (regex!8175 (h!62858 rulesArg!165)) (list!17727 input!1236)))))

(assert (=> d!1571925 (ruleValid!3673 thiss!14805 (h!62858 rulesArg!165))))

(assert (=> d!1571925 (= (maxPrefixOneRule!3530 thiss!14805 (h!62858 rulesArg!165) (list!17727 input!1236)) lt!2006068)))

(declare-fun b!4893741 () Bool)

(assert (=> b!4893741 (= e!3059313 (matchR!6531 (regex!8175 (h!62858 rulesArg!165)) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236))))))))

(declare-fun b!4893742 () Bool)

(declare-fun res!2090109 () Bool)

(assert (=> b!4893742 (=> (not res!2090109) (not e!3059310))))

(assert (=> b!4893742 (= res!2090109 (= (value!262139 (_1!33532 (get!19481 lt!2006068))) (apply!13541 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006068)))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006068)))))))))

(declare-fun b!4893743 () Bool)

(assert (=> b!4893743 (= e!3059311 None!14027)))

(declare-fun b!4893744 () Bool)

(declare-fun res!2090115 () Bool)

(assert (=> b!4893744 (=> (not res!2090115) (not e!3059310))))

(assert (=> b!4893744 (= res!2090115 (= (rule!11365 (_1!33532 (get!19481 lt!2006068))) (h!62858 rulesArg!165)))))

(assert (= (and d!1571925 c!831731) b!4893743))

(assert (= (and d!1571925 (not c!831731)) b!4893738))

(assert (= (and b!4893738 (not res!2090111)) b!4893741))

(assert (= (and d!1571925 (not res!2090114)) b!4893740))

(assert (= (and b!4893740 res!2090113) b!4893737))

(assert (= (and b!4893737 res!2090112) b!4893736))

(assert (= (and b!4893736 res!2090110) b!4893744))

(assert (= (and b!4893744 res!2090115) b!4893742))

(assert (= (and b!4893742 res!2090109) b!4893739))

(declare-fun m!5898786 () Bool)

(assert (=> b!4893738 m!5898786))

(declare-fun m!5898788 () Bool)

(assert (=> b!4893738 m!5898788))

(assert (=> b!4893738 m!5898636))

(assert (=> b!4893738 m!5898444))

(assert (=> b!4893738 m!5898444))

(declare-fun m!5898790 () Bool)

(assert (=> b!4893738 m!5898790))

(declare-fun m!5898792 () Bool)

(assert (=> b!4893738 m!5898792))

(assert (=> b!4893738 m!5898786))

(declare-fun m!5898794 () Bool)

(assert (=> b!4893738 m!5898794))

(declare-fun m!5898796 () Bool)

(assert (=> b!4893738 m!5898796))

(assert (=> b!4893738 m!5898786))

(assert (=> b!4893738 m!5898444))

(declare-fun m!5898798 () Bool)

(assert (=> b!4893738 m!5898798))

(assert (=> b!4893738 m!5898786))

(declare-fun m!5898800 () Bool)

(assert (=> b!4893738 m!5898800))

(assert (=> b!4893738 m!5898444))

(assert (=> b!4893738 m!5898790))

(assert (=> b!4893738 m!5898636))

(declare-fun m!5898802 () Bool)

(assert (=> b!4893742 m!5898802))

(declare-fun m!5898804 () Bool)

(assert (=> b!4893742 m!5898804))

(assert (=> b!4893742 m!5898804))

(declare-fun m!5898806 () Bool)

(assert (=> b!4893742 m!5898806))

(assert (=> b!4893740 m!5898802))

(declare-fun m!5898808 () Bool)

(assert (=> b!4893740 m!5898808))

(assert (=> b!4893740 m!5898808))

(declare-fun m!5898810 () Bool)

(assert (=> b!4893740 m!5898810))

(assert (=> b!4893740 m!5898810))

(declare-fun m!5898812 () Bool)

(assert (=> b!4893740 m!5898812))

(declare-fun m!5898814 () Bool)

(assert (=> d!1571925 m!5898814))

(declare-fun m!5898816 () Bool)

(assert (=> d!1571925 m!5898816))

(assert (=> d!1571925 m!5898444))

(declare-fun m!5898818 () Bool)

(assert (=> d!1571925 m!5898818))

(assert (=> d!1571925 m!5898526))

(assert (=> b!4893737 m!5898802))

(assert (=> b!4893737 m!5898808))

(assert (=> b!4893737 m!5898808))

(assert (=> b!4893737 m!5898810))

(assert (=> b!4893737 m!5898810))

(declare-fun m!5898820 () Bool)

(assert (=> b!4893737 m!5898820))

(assert (=> b!4893741 m!5898636))

(assert (=> b!4893741 m!5898444))

(assert (=> b!4893741 m!5898790))

(assert (=> b!4893741 m!5898636))

(assert (=> b!4893741 m!5898444))

(assert (=> b!4893741 m!5898444))

(assert (=> b!4893741 m!5898790))

(assert (=> b!4893741 m!5898792))

(declare-fun m!5898822 () Bool)

(assert (=> b!4893741 m!5898822))

(assert (=> b!4893744 m!5898802))

(assert (=> b!4893739 m!5898802))

(declare-fun m!5898824 () Bool)

(assert (=> b!4893739 m!5898824))

(assert (=> b!4893736 m!5898802))

(declare-fun m!5898826 () Bool)

(assert (=> b!4893736 m!5898826))

(assert (=> b!4893736 m!5898444))

(assert (=> b!4893736 m!5898790))

(assert (=> d!1571901 d!1571925))

(assert (=> d!1571901 d!1571887))

(declare-fun d!1571927 () Bool)

(declare-fun lt!2006075 () tuple2!60464)

(assert (=> d!1571927 (= (tuple2!60467 (list!17727 (_1!33535 lt!2006075)) (list!17727 (_2!33535 lt!2006075))) (findLongestMatch!1648 (regex!8175 (h!62858 rulesArg!165)) (list!17727 input!1236)))))

(declare-fun choose!35726 (Regex!13250 BalanceConc!28916) tuple2!60464)

(assert (=> d!1571927 (= lt!2006075 (choose!35726 (regex!8175 (h!62858 rulesArg!165)) input!1236))))

(declare-fun validRegex!5883 (Regex!13250) Bool)

(assert (=> d!1571927 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165)))))

(assert (=> d!1571927 (= (findLongestMatchWithZipperSequence!269 (regex!8175 (h!62858 rulesArg!165)) input!1236) lt!2006075)))

(declare-fun bs!1176089 () Bool)

(assert (= bs!1176089 d!1571927))

(assert (=> bs!1176089 m!5898444))

(assert (=> bs!1176089 m!5898818))

(declare-fun m!5898828 () Bool)

(assert (=> bs!1176089 m!5898828))

(assert (=> bs!1176089 m!5898444))

(declare-fun m!5898830 () Bool)

(assert (=> bs!1176089 m!5898830))

(declare-fun m!5898832 () Bool)

(assert (=> bs!1176089 m!5898832))

(declare-fun m!5898834 () Bool)

(assert (=> bs!1176089 m!5898834))

(assert (=> d!1571901 d!1571927))

(declare-fun d!1571929 () Bool)

(declare-fun lt!2006078 () Bool)

(assert (=> d!1571929 (= lt!2006078 (isEmpty!30272 (list!17727 (_1!33535 lt!2006025))))))

(declare-fun isEmpty!30275 (Conc!14743) Bool)

(assert (=> d!1571929 (= lt!2006078 (isEmpty!30275 (c!831694 (_1!33535 lt!2006025))))))

(assert (=> d!1571929 (= (isEmpty!30271 (_1!33535 lt!2006025)) lt!2006078)))

(declare-fun bs!1176090 () Bool)

(assert (= bs!1176090 d!1571929))

(assert (=> bs!1176090 m!5898640))

(assert (=> bs!1176090 m!5898640))

(declare-fun m!5898836 () Bool)

(assert (=> bs!1176090 m!5898836))

(declare-fun m!5898838 () Bool)

(assert (=> bs!1176090 m!5898838))

(assert (=> d!1571901 d!1571929))

(declare-fun d!1571931 () Bool)

(declare-fun res!2090120 () Bool)

(declare-fun e!3059316 () Bool)

(assert (=> d!1571931 (=> (not res!2090120) (not e!3059316))))

(assert (=> d!1571931 (= res!2090120 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165))))))

(assert (=> d!1571931 (= (ruleValid!3673 thiss!14805 (h!62858 rulesArg!165)) e!3059316)))

(declare-fun b!4893749 () Bool)

(declare-fun res!2090121 () Bool)

(assert (=> b!4893749 (=> (not res!2090121) (not e!3059316))))

(declare-fun nullable!4556 (Regex!13250) Bool)

(assert (=> b!4893749 (= res!2090121 (not (nullable!4556 (regex!8175 (h!62858 rulesArg!165)))))))

(declare-fun b!4893750 () Bool)

(assert (=> b!4893750 (= e!3059316 (not (= (tag!9039 (h!62858 rulesArg!165)) (String!63870 ""))))))

(assert (= (and d!1571931 res!2090120) b!4893749))

(assert (= (and b!4893749 res!2090121) b!4893750))

(assert (=> d!1571931 m!5898834))

(declare-fun m!5898840 () Bool)

(assert (=> b!4893749 m!5898840))

(assert (=> d!1571901 d!1571931))

(declare-fun b!4893759 () Bool)

(declare-fun e!3059322 () List!56532)

(assert (=> b!4893759 (= e!3059322 (_2!33532 (get!19481 lt!2005936)))))

(declare-fun b!4893761 () Bool)

(declare-fun res!2090126 () Bool)

(declare-fun e!3059321 () Bool)

(assert (=> b!4893761 (=> (not res!2090126) (not e!3059321))))

(declare-fun lt!2006081 () List!56532)

(assert (=> b!4893761 (= res!2090126 (= (size!37145 lt!2006081) (+ (size!37145 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))) (size!37145 (_2!33532 (get!19481 lt!2005936))))))))

(declare-fun b!4893760 () Bool)

(assert (=> b!4893760 (= e!3059322 (Cons!56408 (h!62856 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))) (++!12244 (t!365672 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))) (_2!33532 (get!19481 lt!2005936)))))))

(declare-fun d!1571933 () Bool)

(assert (=> d!1571933 e!3059321))

(declare-fun res!2090127 () Bool)

(assert (=> d!1571933 (=> (not res!2090127) (not e!3059321))))

(declare-fun content!10019 (List!56532) (Set C!26698))

(assert (=> d!1571933 (= res!2090127 (= (content!10019 lt!2006081) (set.union (content!10019 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))) (content!10019 (_2!33532 (get!19481 lt!2005936))))))))

(assert (=> d!1571933 (= lt!2006081 e!3059322)))

(declare-fun c!831734 () Bool)

(assert (=> d!1571933 (= c!831734 (is-Nil!56408 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))

(assert (=> d!1571933 (= (++!12244 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))) (_2!33532 (get!19481 lt!2005936))) lt!2006081)))

(declare-fun b!4893762 () Bool)

(assert (=> b!4893762 (= e!3059321 (or (not (= (_2!33532 (get!19481 lt!2005936)) Nil!56408)) (= lt!2006081 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))))))

(assert (= (and d!1571933 c!831734) b!4893759))

(assert (= (and d!1571933 (not c!831734)) b!4893760))

(assert (= (and d!1571933 res!2090127) b!4893761))

(assert (= (and b!4893761 res!2090126) b!4893762))

(declare-fun m!5898842 () Bool)

(assert (=> b!4893761 m!5898842))

(assert (=> b!4893761 m!5898570))

(declare-fun m!5898844 () Bool)

(assert (=> b!4893761 m!5898844))

(assert (=> b!4893761 m!5898576))

(declare-fun m!5898846 () Bool)

(assert (=> b!4893760 m!5898846))

(declare-fun m!5898848 () Bool)

(assert (=> d!1571933 m!5898848))

(assert (=> d!1571933 m!5898570))

(declare-fun m!5898850 () Bool)

(assert (=> d!1571933 m!5898850))

(declare-fun m!5898852 () Bool)

(assert (=> d!1571933 m!5898852))

(assert (=> b!4893490 d!1571933))

(declare-fun d!1571935 () Bool)

(assert (=> d!1571935 (= (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))) (list!17729 (c!831694 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))

(declare-fun bs!1176091 () Bool)

(assert (= bs!1176091 d!1571935))

(declare-fun m!5898854 () Bool)

(assert (=> bs!1176091 m!5898854))

(assert (=> b!4893490 d!1571935))

(declare-fun d!1571937 () Bool)

(declare-fun lt!2006084 () BalanceConc!28916)

(assert (=> d!1571937 (= (list!17727 lt!2006084) (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936))))))

(declare-fun dynLambda!22641 (Int TokenValue!8485) BalanceConc!28916)

(assert (=> d!1571937 (= lt!2006084 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (value!262139 (_1!33532 (get!19481 lt!2005936)))))))

(assert (=> d!1571937 (= (charsOf!5375 (_1!33532 (get!19481 lt!2005936))) lt!2006084)))

(declare-fun b_lambda!194417 () Bool)

(assert (=> (not b_lambda!194417) (not d!1571937)))

(declare-fun t!365679 () Bool)

(declare-fun tb!258923 () Bool)

(assert (=> (and b!4893356 (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))) t!365679) tb!258923))

(declare-fun b!4893767 () Bool)

(declare-fun e!3059325 () Bool)

(declare-fun tp!1377314 () Bool)

(assert (=> b!4893767 (= e!3059325 (and (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (value!262139 (_1!33532 (get!19481 lt!2005936)))))) tp!1377314))))

(declare-fun result!322498 () Bool)

(assert (=> tb!258923 (= result!322498 (and (inv!72690 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (value!262139 (_1!33532 (get!19481 lt!2005936))))) e!3059325))))

(assert (= tb!258923 b!4893767))

(declare-fun m!5898856 () Bool)

(assert (=> b!4893767 m!5898856))

(declare-fun m!5898858 () Bool)

(assert (=> tb!258923 m!5898858))

(assert (=> d!1571937 t!365679))

(declare-fun b_and!344943 () Bool)

(assert (= b_and!344929 (and (=> t!365679 result!322498) b_and!344943)))

(declare-fun tb!258925 () Bool)

(declare-fun t!365681 () Bool)

(assert (=> (and b!4893636 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))) t!365681) tb!258925))

(declare-fun result!322502 () Bool)

(assert (= result!322502 result!322498))

(assert (=> d!1571937 t!365681))

(declare-fun b_and!344945 () Bool)

(assert (= b_and!344937 (and (=> t!365681 result!322502) b_and!344945)))

(declare-fun m!5898860 () Bool)

(assert (=> d!1571937 m!5898860))

(declare-fun m!5898862 () Bool)

(assert (=> d!1571937 m!5898862))

(assert (=> b!4893490 d!1571937))

(declare-fun d!1571939 () Bool)

(assert (=> d!1571939 (= (get!19481 lt!2005936) (v!49981 lt!2005936))))

(assert (=> b!4893490 d!1571939))

(assert (=> d!1571885 d!1571883))

(declare-fun d!1571941 () Bool)

(assert (=> d!1571941 (isPrefix!4895 lt!2005844 lt!2005844)))

(assert (=> d!1571941 true))

(declare-fun _$45!2170 () Unit!146435)

(assert (=> d!1571941 (= (choose!35724 lt!2005844 lt!2005844) _$45!2170)))

(declare-fun bs!1176092 () Bool)

(assert (= bs!1176092 d!1571941))

(assert (=> bs!1176092 m!5898440))

(assert (=> d!1571885 d!1571941))

(declare-fun d!1571943 () Bool)

(declare-fun res!2090132 () Bool)

(declare-fun e!3059330 () Bool)

(assert (=> d!1571943 (=> res!2090132 e!3059330)))

(assert (=> d!1571943 (= res!2090132 (is-Nil!56410 rulesArg!165))))

(assert (=> d!1571943 (= (forall!13091 rulesArg!165 lambda!244023) e!3059330)))

(declare-fun b!4893772 () Bool)

(declare-fun e!3059331 () Bool)

(assert (=> b!4893772 (= e!3059330 e!3059331)))

(declare-fun res!2090133 () Bool)

(assert (=> b!4893772 (=> (not res!2090133) (not e!3059331))))

(declare-fun dynLambda!22642 (Int Rule!16150) Bool)

(assert (=> b!4893772 (= res!2090133 (dynLambda!22642 lambda!244023 (h!62858 rulesArg!165)))))

(declare-fun b!4893773 () Bool)

(assert (=> b!4893773 (= e!3059331 (forall!13091 (t!365674 rulesArg!165) lambda!244023))))

(assert (= (and d!1571943 (not res!2090132)) b!4893772))

(assert (= (and b!4893772 res!2090133) b!4893773))

(declare-fun b_lambda!194419 () Bool)

(assert (=> (not b_lambda!194419) (not b!4893772)))

(declare-fun m!5898864 () Bool)

(assert (=> b!4893772 m!5898864))

(declare-fun m!5898866 () Bool)

(assert (=> b!4893773 m!5898866))

(assert (=> d!1571851 d!1571943))

(declare-fun d!1571945 () Bool)

(assert (=> d!1571945 (= (isDefined!11041 lt!2005974) (not (isEmpty!30268 lt!2005974)))))

(declare-fun bs!1176093 () Bool)

(assert (= bs!1176093 d!1571945))

(declare-fun m!5898868 () Bool)

(assert (=> bs!1176093 m!5898868))

(assert (=> b!4893534 d!1571945))

(declare-fun d!1571947 () Bool)

(assert (=> d!1571947 (= (inv!72697 (xs!18059 (c!831694 input!1236))) (<= (size!37145 (innerList!14831 (xs!18059 (c!831694 input!1236)))) 2147483647))))

(declare-fun bs!1176094 () Bool)

(assert (= bs!1176094 d!1571947))

(declare-fun m!5898870 () Bool)

(assert (=> bs!1176094 m!5898870))

(assert (=> b!4893610 d!1571947))

(declare-fun b!4893774 () Bool)

(declare-fun e!3059333 () Bool)

(declare-fun e!3059334 () Bool)

(assert (=> b!4893774 (= e!3059333 e!3059334)))

(declare-fun res!2090135 () Bool)

(assert (=> b!4893774 (=> (not res!2090135) (not e!3059334))))

(declare-fun lt!2006086 () Option!14028)

(assert (=> b!4893774 (= res!2090135 (isDefined!11040 lt!2006086))))

(declare-fun b!4893775 () Bool)

(assert (=> b!4893775 (= e!3059334 (contains!19438 (t!365674 rulesArg!165) (rule!11365 (_1!33532 (get!19481 lt!2006086)))))))

(declare-fun d!1571949 () Bool)

(assert (=> d!1571949 e!3059333))

(declare-fun res!2090134 () Bool)

(assert (=> d!1571949 (=> res!2090134 e!3059333)))

(assert (=> d!1571949 (= res!2090134 (isEmpty!30267 lt!2006086))))

(declare-fun e!3059332 () Option!14028)

(assert (=> d!1571949 (= lt!2006086 e!3059332)))

(declare-fun c!831735 () Bool)

(assert (=> d!1571949 (= c!831735 (and (is-Cons!56410 (t!365674 rulesArg!165)) (is-Nil!56410 (t!365674 (t!365674 rulesArg!165)))))))

(declare-fun lt!2006087 () Unit!146435)

(declare-fun lt!2006088 () Unit!146435)

(assert (=> d!1571949 (= lt!2006087 lt!2006088)))

(assert (=> d!1571949 (isPrefix!4895 lt!2005844 lt!2005844)))

(assert (=> d!1571949 (= lt!2006088 (lemmaIsPrefixRefl!3292 lt!2005844 lt!2005844))))

(assert (=> d!1571949 (rulesValidInductive!3154 thiss!14805 (t!365674 rulesArg!165))))

(assert (=> d!1571949 (= (maxPrefix!4604 thiss!14805 (t!365674 rulesArg!165) lt!2005844) lt!2006086)))

(declare-fun b!4893776 () Bool)

(declare-fun res!2090136 () Bool)

(assert (=> b!4893776 (=> (not res!2090136) (not e!3059334))))

(assert (=> b!4893776 (= res!2090136 (= (++!12244 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086)))) (_2!33532 (get!19481 lt!2006086))) lt!2005844))))

(declare-fun bm!339412 () Bool)

(declare-fun call!339417 () Option!14028)

(assert (=> bm!339412 (= call!339417 (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 rulesArg!165)) lt!2005844))))

(declare-fun b!4893777 () Bool)

(declare-fun lt!2006089 () Option!14028)

(declare-fun lt!2006085 () Option!14028)

(assert (=> b!4893777 (= e!3059332 (ite (and (is-None!14027 lt!2006089) (is-None!14027 lt!2006085)) None!14027 (ite (is-None!14027 lt!2006085) lt!2006089 (ite (is-None!14027 lt!2006089) lt!2006085 (ite (>= (size!37143 (_1!33532 (v!49981 lt!2006089))) (size!37143 (_1!33532 (v!49981 lt!2006085)))) lt!2006089 lt!2006085)))))))

(assert (=> b!4893777 (= lt!2006089 call!339417)))

(assert (=> b!4893777 (= lt!2006085 (maxPrefix!4604 thiss!14805 (t!365674 (t!365674 rulesArg!165)) lt!2005844))))

(declare-fun b!4893778 () Bool)

(assert (=> b!4893778 (= e!3059332 call!339417)))

(declare-fun b!4893779 () Bool)

(declare-fun res!2090140 () Bool)

(assert (=> b!4893779 (=> (not res!2090140) (not e!3059334))))

(assert (=> b!4893779 (= res!2090140 (matchR!6531 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086)))) (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086))))))))

(declare-fun b!4893780 () Bool)

(declare-fun res!2090139 () Bool)

(assert (=> b!4893780 (=> (not res!2090139) (not e!3059334))))

(assert (=> b!4893780 (= res!2090139 (= (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086)))) (originalCharacters!8488 (_1!33532 (get!19481 lt!2006086)))))))

(declare-fun b!4893781 () Bool)

(declare-fun res!2090138 () Bool)

(assert (=> b!4893781 (=> (not res!2090138) (not e!3059334))))

(assert (=> b!4893781 (= res!2090138 (= (value!262139 (_1!33532 (get!19481 lt!2006086))) (apply!13541 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086)))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006086)))))))))

(declare-fun b!4893782 () Bool)

(declare-fun res!2090137 () Bool)

(assert (=> b!4893782 (=> (not res!2090137) (not e!3059334))))

(assert (=> b!4893782 (= res!2090137 (< (size!37145 (_2!33532 (get!19481 lt!2006086))) (size!37145 lt!2005844)))))

(assert (= (and d!1571949 c!831735) b!4893778))

(assert (= (and d!1571949 (not c!831735)) b!4893777))

(assert (= (or b!4893778 b!4893777) bm!339412))

(assert (= (and d!1571949 (not res!2090134)) b!4893774))

(assert (= (and b!4893774 res!2090135) b!4893780))

(assert (= (and b!4893780 res!2090139) b!4893782))

(assert (= (and b!4893782 res!2090137) b!4893776))

(assert (= (and b!4893776 res!2090136) b!4893781))

(assert (= (and b!4893781 res!2090138) b!4893779))

(assert (= (and b!4893779 res!2090140) b!4893775))

(declare-fun m!5898872 () Bool)

(assert (=> b!4893775 m!5898872))

(declare-fun m!5898874 () Bool)

(assert (=> b!4893775 m!5898874))

(declare-fun m!5898876 () Bool)

(assert (=> d!1571949 m!5898876))

(assert (=> d!1571949 m!5898440))

(assert (=> d!1571949 m!5898442))

(assert (=> d!1571949 m!5898528))

(declare-fun m!5898878 () Bool)

(assert (=> b!4893777 m!5898878))

(assert (=> b!4893779 m!5898872))

(declare-fun m!5898880 () Bool)

(assert (=> b!4893779 m!5898880))

(assert (=> b!4893779 m!5898880))

(declare-fun m!5898882 () Bool)

(assert (=> b!4893779 m!5898882))

(assert (=> b!4893779 m!5898882))

(declare-fun m!5898884 () Bool)

(assert (=> b!4893779 m!5898884))

(assert (=> b!4893780 m!5898872))

(assert (=> b!4893780 m!5898880))

(assert (=> b!4893780 m!5898880))

(assert (=> b!4893780 m!5898882))

(assert (=> b!4893776 m!5898872))

(assert (=> b!4893776 m!5898880))

(assert (=> b!4893776 m!5898880))

(assert (=> b!4893776 m!5898882))

(assert (=> b!4893776 m!5898882))

(declare-fun m!5898886 () Bool)

(assert (=> b!4893776 m!5898886))

(assert (=> b!4893782 m!5898872))

(declare-fun m!5898888 () Bool)

(assert (=> b!4893782 m!5898888))

(assert (=> b!4893782 m!5898538))

(assert (=> b!4893781 m!5898872))

(declare-fun m!5898890 () Bool)

(assert (=> b!4893781 m!5898890))

(assert (=> b!4893781 m!5898890))

(declare-fun m!5898892 () Bool)

(assert (=> b!4893781 m!5898892))

(declare-fun m!5898894 () Bool)

(assert (=> bm!339412 m!5898894))

(declare-fun m!5898896 () Bool)

(assert (=> b!4893774 m!5898896))

(assert (=> b!4893491 d!1571949))

(declare-fun d!1571951 () Bool)

(assert (=> d!1571951 (= (get!19481 (maxPrefix!4604 thiss!14805 (t!365674 rulesArg!165) (list!17727 input!1236))) (v!49981 (maxPrefix!4604 thiss!14805 (t!365674 rulesArg!165) (list!17727 input!1236))))))

(assert (=> b!4893536 d!1571951))

(declare-fun d!1571953 () Bool)

(assert (=> d!1571953 (= (get!19482 lt!2005974) (v!49980 lt!2005974))))

(assert (=> b!4893536 d!1571953))

(declare-fun d!1571955 () Bool)

(assert (=> d!1571955 (= (list!17727 (_2!33531 (get!19482 lt!2005974))) (list!17729 (c!831694 (_2!33531 (get!19482 lt!2005974)))))))

(declare-fun bs!1176095 () Bool)

(assert (= bs!1176095 d!1571955))

(declare-fun m!5898898 () Bool)

(assert (=> bs!1176095 m!5898898))

(assert (=> b!4893536 d!1571955))

(assert (=> b!4893536 d!1571887))

(declare-fun b!4893783 () Bool)

(declare-fun e!3059336 () Bool)

(declare-fun e!3059337 () Bool)

(assert (=> b!4893783 (= e!3059336 e!3059337)))

(declare-fun res!2090142 () Bool)

(assert (=> b!4893783 (=> (not res!2090142) (not e!3059337))))

(declare-fun lt!2006091 () Option!14028)

(assert (=> b!4893783 (= res!2090142 (isDefined!11040 lt!2006091))))

(declare-fun b!4893784 () Bool)

(assert (=> b!4893784 (= e!3059337 (contains!19438 (t!365674 rulesArg!165) (rule!11365 (_1!33532 (get!19481 lt!2006091)))))))

(declare-fun d!1571957 () Bool)

(assert (=> d!1571957 e!3059336))

(declare-fun res!2090141 () Bool)

(assert (=> d!1571957 (=> res!2090141 e!3059336)))

(assert (=> d!1571957 (= res!2090141 (isEmpty!30267 lt!2006091))))

(declare-fun e!3059335 () Option!14028)

(assert (=> d!1571957 (= lt!2006091 e!3059335)))

(declare-fun c!831736 () Bool)

(assert (=> d!1571957 (= c!831736 (and (is-Cons!56410 (t!365674 rulesArg!165)) (is-Nil!56410 (t!365674 (t!365674 rulesArg!165)))))))

(declare-fun lt!2006092 () Unit!146435)

(declare-fun lt!2006093 () Unit!146435)

(assert (=> d!1571957 (= lt!2006092 lt!2006093)))

(assert (=> d!1571957 (isPrefix!4895 (list!17727 input!1236) (list!17727 input!1236))))

(assert (=> d!1571957 (= lt!2006093 (lemmaIsPrefixRefl!3292 (list!17727 input!1236) (list!17727 input!1236)))))

(assert (=> d!1571957 (rulesValidInductive!3154 thiss!14805 (t!365674 rulesArg!165))))

(assert (=> d!1571957 (= (maxPrefix!4604 thiss!14805 (t!365674 rulesArg!165) (list!17727 input!1236)) lt!2006091)))

(declare-fun b!4893785 () Bool)

(declare-fun res!2090143 () Bool)

(assert (=> b!4893785 (=> (not res!2090143) (not e!3059337))))

(assert (=> b!4893785 (= res!2090143 (= (++!12244 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091)))) (_2!33532 (get!19481 lt!2006091))) (list!17727 input!1236)))))

(declare-fun call!339418 () Option!14028)

(declare-fun bm!339413 () Bool)

(assert (=> bm!339413 (= call!339418 (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 rulesArg!165)) (list!17727 input!1236)))))

(declare-fun b!4893786 () Bool)

(declare-fun lt!2006094 () Option!14028)

(declare-fun lt!2006090 () Option!14028)

(assert (=> b!4893786 (= e!3059335 (ite (and (is-None!14027 lt!2006094) (is-None!14027 lt!2006090)) None!14027 (ite (is-None!14027 lt!2006090) lt!2006094 (ite (is-None!14027 lt!2006094) lt!2006090 (ite (>= (size!37143 (_1!33532 (v!49981 lt!2006094))) (size!37143 (_1!33532 (v!49981 lt!2006090)))) lt!2006094 lt!2006090)))))))

(assert (=> b!4893786 (= lt!2006094 call!339418)))

(assert (=> b!4893786 (= lt!2006090 (maxPrefix!4604 thiss!14805 (t!365674 (t!365674 rulesArg!165)) (list!17727 input!1236)))))

(declare-fun b!4893787 () Bool)

(assert (=> b!4893787 (= e!3059335 call!339418)))

(declare-fun b!4893788 () Bool)

(declare-fun res!2090147 () Bool)

(assert (=> b!4893788 (=> (not res!2090147) (not e!3059337))))

(assert (=> b!4893788 (= res!2090147 (matchR!6531 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091)))) (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091))))))))

(declare-fun b!4893789 () Bool)

(declare-fun res!2090146 () Bool)

(assert (=> b!4893789 (=> (not res!2090146) (not e!3059337))))

(assert (=> b!4893789 (= res!2090146 (= (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091)))) (originalCharacters!8488 (_1!33532 (get!19481 lt!2006091)))))))

(declare-fun b!4893790 () Bool)

(declare-fun res!2090145 () Bool)

(assert (=> b!4893790 (=> (not res!2090145) (not e!3059337))))

(assert (=> b!4893790 (= res!2090145 (= (value!262139 (_1!33532 (get!19481 lt!2006091))) (apply!13541 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091)))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006091)))))))))

(declare-fun b!4893791 () Bool)

(declare-fun res!2090144 () Bool)

(assert (=> b!4893791 (=> (not res!2090144) (not e!3059337))))

(assert (=> b!4893791 (= res!2090144 (< (size!37145 (_2!33532 (get!19481 lt!2006091))) (size!37145 (list!17727 input!1236))))))

(assert (= (and d!1571957 c!831736) b!4893787))

(assert (= (and d!1571957 (not c!831736)) b!4893786))

(assert (= (or b!4893787 b!4893786) bm!339413))

(assert (= (and d!1571957 (not res!2090141)) b!4893783))

(assert (= (and b!4893783 res!2090142) b!4893789))

(assert (= (and b!4893789 res!2090146) b!4893791))

(assert (= (and b!4893791 res!2090144) b!4893785))

(assert (= (and b!4893785 res!2090143) b!4893790))

(assert (= (and b!4893790 res!2090145) b!4893788))

(assert (= (and b!4893788 res!2090147) b!4893784))

(declare-fun m!5898900 () Bool)

(assert (=> b!4893784 m!5898900))

(declare-fun m!5898902 () Bool)

(assert (=> b!4893784 m!5898902))

(declare-fun m!5898904 () Bool)

(assert (=> d!1571957 m!5898904))

(assert (=> d!1571957 m!5898444))

(assert (=> d!1571957 m!5898444))

(declare-fun m!5898906 () Bool)

(assert (=> d!1571957 m!5898906))

(assert (=> d!1571957 m!5898444))

(assert (=> d!1571957 m!5898444))

(declare-fun m!5898908 () Bool)

(assert (=> d!1571957 m!5898908))

(assert (=> d!1571957 m!5898528))

(assert (=> b!4893786 m!5898444))

(declare-fun m!5898910 () Bool)

(assert (=> b!4893786 m!5898910))

(assert (=> b!4893788 m!5898900))

(declare-fun m!5898912 () Bool)

(assert (=> b!4893788 m!5898912))

(assert (=> b!4893788 m!5898912))

(declare-fun m!5898914 () Bool)

(assert (=> b!4893788 m!5898914))

(assert (=> b!4893788 m!5898914))

(declare-fun m!5898916 () Bool)

(assert (=> b!4893788 m!5898916))

(assert (=> b!4893789 m!5898900))

(assert (=> b!4893789 m!5898912))

(assert (=> b!4893789 m!5898912))

(assert (=> b!4893789 m!5898914))

(assert (=> b!4893785 m!5898900))

(assert (=> b!4893785 m!5898912))

(assert (=> b!4893785 m!5898912))

(assert (=> b!4893785 m!5898914))

(assert (=> b!4893785 m!5898914))

(declare-fun m!5898918 () Bool)

(assert (=> b!4893785 m!5898918))

(assert (=> b!4893791 m!5898900))

(declare-fun m!5898920 () Bool)

(assert (=> b!4893791 m!5898920))

(assert (=> b!4893791 m!5898444))

(assert (=> b!4893791 m!5898790))

(assert (=> b!4893790 m!5898900))

(declare-fun m!5898922 () Bool)

(assert (=> b!4893790 m!5898922))

(assert (=> b!4893790 m!5898922))

(declare-fun m!5898924 () Bool)

(assert (=> b!4893790 m!5898924))

(assert (=> bm!339413 m!5898444))

(declare-fun m!5898926 () Bool)

(assert (=> bm!339413 m!5898926))

(declare-fun m!5898928 () Bool)

(assert (=> b!4893783 m!5898928))

(assert (=> b!4893536 d!1571957))

(declare-fun b!4893820 () Bool)

(declare-fun res!2090168 () Bool)

(declare-fun e!3059358 () Bool)

(assert (=> b!4893820 (=> (not res!2090168) (not e!3059358))))

(assert (=> b!4893820 (= res!2090168 (isEmpty!30272 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))))))

(declare-fun b!4893821 () Bool)

(declare-fun res!2090164 () Bool)

(assert (=> b!4893821 (=> (not res!2090164) (not e!3059358))))

(declare-fun call!339421 () Bool)

(assert (=> b!4893821 (= res!2090164 (not call!339421))))

(declare-fun b!4893822 () Bool)

(declare-fun e!3059355 () Bool)

(declare-fun lt!2006097 () Bool)

(assert (=> b!4893822 (= e!3059355 (= lt!2006097 call!339421))))

(declare-fun b!4893823 () Bool)

(declare-fun e!3059357 () Bool)

(declare-fun e!3059353 () Bool)

(assert (=> b!4893823 (= e!3059357 e!3059353)))

(declare-fun res!2090167 () Bool)

(assert (=> b!4893823 (=> res!2090167 e!3059353)))

(assert (=> b!4893823 (= res!2090167 call!339421)))

(declare-fun b!4893824 () Bool)

(declare-fun e!3059352 () Bool)

(assert (=> b!4893824 (= e!3059352 (nullable!4556 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))))

(declare-fun b!4893825 () Bool)

(declare-fun e!3059354 () Bool)

(assert (=> b!4893825 (= e!3059354 e!3059357)))

(declare-fun res!2090166 () Bool)

(assert (=> b!4893825 (=> (not res!2090166) (not e!3059357))))

(assert (=> b!4893825 (= res!2090166 (not lt!2006097))))

(declare-fun b!4893826 () Bool)

(declare-fun e!3059356 () Bool)

(assert (=> b!4893826 (= e!3059356 (not lt!2006097))))

(declare-fun bm!339416 () Bool)

(assert (=> bm!339416 (= call!339421 (isEmpty!30272 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))

(declare-fun d!1571959 () Bool)

(assert (=> d!1571959 e!3059355))

(declare-fun c!831744 () Bool)

(assert (=> d!1571959 (= c!831744 (is-EmptyExpr!13250 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))))

(assert (=> d!1571959 (= lt!2006097 e!3059352)))

(declare-fun c!831743 () Bool)

(assert (=> d!1571959 (= c!831743 (isEmpty!30272 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))

(assert (=> d!1571959 (validRegex!5883 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))))

(assert (=> d!1571959 (= (matchR!6531 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))) (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))) lt!2006097)))

(declare-fun b!4893827 () Bool)

(assert (=> b!4893827 (= e!3059355 e!3059356)))

(declare-fun c!831745 () Bool)

(assert (=> b!4893827 (= c!831745 (is-EmptyLang!13250 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))))

(declare-fun b!4893828 () Bool)

(declare-fun res!2090170 () Bool)

(assert (=> b!4893828 (=> res!2090170 e!3059353)))

(assert (=> b!4893828 (= res!2090170 (not (isEmpty!30272 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))))

(declare-fun b!4893829 () Bool)

(assert (=> b!4893829 (= e!3059353 (not (= (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))) (c!831695 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))))))

(declare-fun b!4893830 () Bool)

(declare-fun derivativeStep!3879 (Regex!13250 C!26698) Regex!13250)

(assert (=> b!4893830 (= e!3059352 (matchR!6531 (derivativeStep!3879 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))) (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))) (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))))))

(declare-fun b!4893831 () Bool)

(assert (=> b!4893831 (= e!3059358 (= (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))) (c!831695 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))))))

(declare-fun b!4893832 () Bool)

(declare-fun res!2090165 () Bool)

(assert (=> b!4893832 (=> res!2090165 e!3059354)))

(assert (=> b!4893832 (= res!2090165 e!3059358)))

(declare-fun res!2090171 () Bool)

(assert (=> b!4893832 (=> (not res!2090171) (not e!3059358))))

(assert (=> b!4893832 (= res!2090171 lt!2006097)))

(declare-fun b!4893833 () Bool)

(declare-fun res!2090169 () Bool)

(assert (=> b!4893833 (=> res!2090169 e!3059354)))

(assert (=> b!4893833 (= res!2090169 (not (is-ElementMatch!13250 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))))))

(assert (=> b!4893833 (= e!3059356 e!3059354)))

(assert (= (and d!1571959 c!831743) b!4893824))

(assert (= (and d!1571959 (not c!831743)) b!4893830))

(assert (= (and d!1571959 c!831744) b!4893822))

(assert (= (and d!1571959 (not c!831744)) b!4893827))

(assert (= (and b!4893827 c!831745) b!4893826))

(assert (= (and b!4893827 (not c!831745)) b!4893833))

(assert (= (and b!4893833 (not res!2090169)) b!4893832))

(assert (= (and b!4893832 res!2090171) b!4893821))

(assert (= (and b!4893821 res!2090164) b!4893820))

(assert (= (and b!4893820 res!2090168) b!4893831))

(assert (= (and b!4893832 (not res!2090165)) b!4893825))

(assert (= (and b!4893825 res!2090166) b!4893823))

(assert (= (and b!4893823 (not res!2090167)) b!4893828))

(assert (= (and b!4893828 (not res!2090170)) b!4893829))

(assert (= (or b!4893822 b!4893821 b!4893823) bm!339416))

(assert (=> b!4893830 m!5898570))

(declare-fun m!5898930 () Bool)

(assert (=> b!4893830 m!5898930))

(assert (=> b!4893830 m!5898930))

(declare-fun m!5898932 () Bool)

(assert (=> b!4893830 m!5898932))

(assert (=> b!4893830 m!5898570))

(declare-fun m!5898934 () Bool)

(assert (=> b!4893830 m!5898934))

(assert (=> b!4893830 m!5898932))

(assert (=> b!4893830 m!5898934))

(declare-fun m!5898936 () Bool)

(assert (=> b!4893830 m!5898936))

(assert (=> b!4893828 m!5898570))

(assert (=> b!4893828 m!5898934))

(assert (=> b!4893828 m!5898934))

(declare-fun m!5898938 () Bool)

(assert (=> b!4893828 m!5898938))

(assert (=> bm!339416 m!5898570))

(declare-fun m!5898940 () Bool)

(assert (=> bm!339416 m!5898940))

(assert (=> b!4893820 m!5898570))

(assert (=> b!4893820 m!5898934))

(assert (=> b!4893820 m!5898934))

(assert (=> b!4893820 m!5898938))

(assert (=> d!1571959 m!5898570))

(assert (=> d!1571959 m!5898940))

(declare-fun m!5898942 () Bool)

(assert (=> d!1571959 m!5898942))

(assert (=> b!4893829 m!5898570))

(assert (=> b!4893829 m!5898930))

(declare-fun m!5898944 () Bool)

(assert (=> b!4893824 m!5898944))

(assert (=> b!4893831 m!5898570))

(assert (=> b!4893831 m!5898930))

(assert (=> b!4893493 d!1571959))

(assert (=> b!4893493 d!1571939))

(assert (=> b!4893493 d!1571935))

(assert (=> b!4893493 d!1571937))

(declare-fun d!1571961 () Bool)

(assert (=> d!1571961 (= (list!17727 (_2!33531 (get!19482 lt!2006028))) (list!17729 (c!831694 (_2!33531 (get!19482 lt!2006028)))))))

(declare-fun bs!1176096 () Bool)

(assert (= bs!1176096 d!1571961))

(declare-fun m!5898946 () Bool)

(assert (=> bs!1176096 m!5898946))

(assert (=> b!4893575 d!1571961))

(declare-fun d!1571963 () Bool)

(assert (=> d!1571963 (= (get!19481 (maxPrefixOneRule!3530 thiss!14805 (h!62858 rulesArg!165) (list!17727 input!1236))) (v!49981 (maxPrefixOneRule!3530 thiss!14805 (h!62858 rulesArg!165) (list!17727 input!1236))))))

(assert (=> b!4893575 d!1571963))

(assert (=> b!4893575 d!1571925))

(declare-fun d!1571965 () Bool)

(assert (=> d!1571965 (= (get!19482 lt!2006028) (v!49980 lt!2006028))))

(assert (=> b!4893575 d!1571965))

(assert (=> b!4893575 d!1571887))

(declare-fun bs!1176097 () Bool)

(declare-fun d!1571967 () Bool)

(assert (= bs!1176097 (and d!1571967 d!1571851)))

(declare-fun lambda!244037 () Int)

(assert (=> bs!1176097 (= lambda!244037 lambda!244023)))

(assert (=> d!1571967 true))

(declare-fun lt!2006098 () Bool)

(assert (=> d!1571967 (= lt!2006098 (forall!13091 (t!365674 rulesArg!165) lambda!244037))))

(declare-fun e!3059359 () Bool)

(assert (=> d!1571967 (= lt!2006098 e!3059359)))

(declare-fun res!2090172 () Bool)

(assert (=> d!1571967 (=> res!2090172 e!3059359)))

(assert (=> d!1571967 (= res!2090172 (not (is-Cons!56410 (t!365674 rulesArg!165))))))

(assert (=> d!1571967 (= (rulesValidInductive!3154 thiss!14805 (t!365674 rulesArg!165)) lt!2006098)))

(declare-fun b!4893834 () Bool)

(declare-fun e!3059360 () Bool)

(assert (=> b!4893834 (= e!3059359 e!3059360)))

(declare-fun res!2090173 () Bool)

(assert (=> b!4893834 (=> (not res!2090173) (not e!3059360))))

(assert (=> b!4893834 (= res!2090173 (ruleValid!3673 thiss!14805 (h!62858 (t!365674 rulesArg!165))))))

(declare-fun b!4893835 () Bool)

(assert (=> b!4893835 (= e!3059360 (rulesValidInductive!3154 thiss!14805 (t!365674 (t!365674 rulesArg!165))))))

(assert (= (and d!1571967 (not res!2090172)) b!4893834))

(assert (= (and b!4893834 res!2090173) b!4893835))

(declare-fun m!5898948 () Bool)

(assert (=> d!1571967 m!5898948))

(declare-fun m!5898950 () Bool)

(assert (=> b!4893834 m!5898950))

(declare-fun m!5898952 () Bool)

(assert (=> b!4893835 m!5898952))

(assert (=> d!1571899 d!1571967))

(declare-fun d!1571969 () Bool)

(assert (=> d!1571969 (= (isDefined!11040 (maxPrefixZipper!674 thiss!14805 (t!365674 rulesArg!165) (list!17727 input!1236))) (not (isEmpty!30267 (maxPrefixZipper!674 thiss!14805 (t!365674 rulesArg!165) (list!17727 input!1236)))))))

(declare-fun bs!1176098 () Bool)

(assert (= bs!1176098 d!1571969))

(assert (=> bs!1176098 m!5898588))

(declare-fun m!5898954 () Bool)

(assert (=> bs!1176098 m!5898954))

(assert (=> d!1571899 d!1571969))

(assert (=> d!1571899 d!1571945))

(declare-fun d!1571971 () Bool)

(declare-fun lt!2006103 () Option!14028)

(assert (=> d!1571971 (= lt!2006103 (maxPrefix!4604 thiss!14805 (t!365674 rulesArg!165) (list!17727 input!1236)))))

(declare-fun e!3059361 () Option!14028)

(assert (=> d!1571971 (= lt!2006103 e!3059361)))

(declare-fun c!831746 () Bool)

(assert (=> d!1571971 (= c!831746 (and (is-Cons!56410 (t!365674 rulesArg!165)) (is-Nil!56410 (t!365674 (t!365674 rulesArg!165)))))))

(declare-fun lt!2006101 () Unit!146435)

(declare-fun lt!2006102 () Unit!146435)

(assert (=> d!1571971 (= lt!2006101 lt!2006102)))

(assert (=> d!1571971 (isPrefix!4895 (list!17727 input!1236) (list!17727 input!1236))))

(assert (=> d!1571971 (= lt!2006102 (lemmaIsPrefixRefl!3292 (list!17727 input!1236) (list!17727 input!1236)))))

(assert (=> d!1571971 (rulesValidInductive!3154 thiss!14805 (t!365674 rulesArg!165))))

(assert (=> d!1571971 (= (maxPrefixZipper!674 thiss!14805 (t!365674 rulesArg!165) (list!17727 input!1236)) lt!2006103)))

(declare-fun bm!339417 () Bool)

(declare-fun call!339422 () Option!14028)

(assert (=> bm!339417 (= call!339422 (maxPrefixOneRuleZipper!259 thiss!14805 (h!62858 (t!365674 rulesArg!165)) (list!17727 input!1236)))))

(declare-fun b!4893836 () Bool)

(assert (=> b!4893836 (= e!3059361 call!339422)))

(declare-fun b!4893837 () Bool)

(declare-fun lt!2006100 () Option!14028)

(declare-fun lt!2006099 () Option!14028)

(assert (=> b!4893837 (= e!3059361 (ite (and (is-None!14027 lt!2006100) (is-None!14027 lt!2006099)) None!14027 (ite (is-None!14027 lt!2006099) lt!2006100 (ite (is-None!14027 lt!2006100) lt!2006099 (ite (>= (size!37143 (_1!33532 (v!49981 lt!2006100))) (size!37143 (_1!33532 (v!49981 lt!2006099)))) lt!2006100 lt!2006099)))))))

(assert (=> b!4893837 (= lt!2006100 call!339422)))

(assert (=> b!4893837 (= lt!2006099 (maxPrefixZipper!674 thiss!14805 (t!365674 (t!365674 rulesArg!165)) (list!17727 input!1236)))))

(assert (= (and d!1571971 c!831746) b!4893836))

(assert (= (and d!1571971 (not c!831746)) b!4893837))

(assert (= (or b!4893836 b!4893837) bm!339417))

(assert (=> d!1571971 m!5898444))

(assert (=> d!1571971 m!5898596))

(assert (=> d!1571971 m!5898444))

(assert (=> d!1571971 m!5898444))

(assert (=> d!1571971 m!5898906))

(assert (=> d!1571971 m!5898444))

(assert (=> d!1571971 m!5898444))

(assert (=> d!1571971 m!5898908))

(assert (=> d!1571971 m!5898528))

(assert (=> bm!339417 m!5898444))

(declare-fun m!5898956 () Bool)

(assert (=> bm!339417 m!5898956))

(assert (=> b!4893837 m!5898444))

(declare-fun m!5898958 () Bool)

(assert (=> b!4893837 m!5898958))

(assert (=> d!1571899 d!1571971))

(declare-fun b!4893841 () Bool)

(declare-fun e!3059362 () Bool)

(assert (=> b!4893841 (= e!3059362 (>= (size!37145 lt!2005975) (size!37145 lt!2005969)))))

(declare-fun d!1571973 () Bool)

(assert (=> d!1571973 e!3059362))

(declare-fun res!2090176 () Bool)

(assert (=> d!1571973 (=> res!2090176 e!3059362)))

(declare-fun lt!2006104 () Bool)

(assert (=> d!1571973 (= res!2090176 (not lt!2006104))))

(declare-fun e!3059364 () Bool)

(assert (=> d!1571973 (= lt!2006104 e!3059364)))

(declare-fun res!2090174 () Bool)

(assert (=> d!1571973 (=> res!2090174 e!3059364)))

(assert (=> d!1571973 (= res!2090174 (is-Nil!56408 lt!2005969))))

(assert (=> d!1571973 (= (isPrefix!4895 lt!2005969 lt!2005975) lt!2006104)))

(declare-fun b!4893839 () Bool)

(declare-fun res!2090177 () Bool)

(declare-fun e!3059363 () Bool)

(assert (=> b!4893839 (=> (not res!2090177) (not e!3059363))))

(assert (=> b!4893839 (= res!2090177 (= (head!10456 lt!2005969) (head!10456 lt!2005975)))))

(declare-fun b!4893838 () Bool)

(assert (=> b!4893838 (= e!3059364 e!3059363)))

(declare-fun res!2090175 () Bool)

(assert (=> b!4893838 (=> (not res!2090175) (not e!3059363))))

(assert (=> b!4893838 (= res!2090175 (not (is-Nil!56408 lt!2005975)))))

(declare-fun b!4893840 () Bool)

(assert (=> b!4893840 (= e!3059363 (isPrefix!4895 (tail!9602 lt!2005969) (tail!9602 lt!2005975)))))

(assert (= (and d!1571973 (not res!2090174)) b!4893838))

(assert (= (and b!4893838 res!2090175) b!4893839))

(assert (= (and b!4893839 res!2090177) b!4893840))

(assert (= (and d!1571973 (not res!2090176)) b!4893841))

(declare-fun m!5898960 () Bool)

(assert (=> b!4893841 m!5898960))

(declare-fun m!5898962 () Bool)

(assert (=> b!4893841 m!5898962))

(declare-fun m!5898964 () Bool)

(assert (=> b!4893839 m!5898964))

(declare-fun m!5898966 () Bool)

(assert (=> b!4893839 m!5898966))

(declare-fun m!5898968 () Bool)

(assert (=> b!4893840 m!5898968))

(declare-fun m!5898970 () Bool)

(assert (=> b!4893840 m!5898970))

(assert (=> b!4893840 m!5898968))

(assert (=> b!4893840 m!5898970))

(declare-fun m!5898972 () Bool)

(assert (=> b!4893840 m!5898972))

(assert (=> d!1571899 d!1571973))

(assert (=> d!1571899 d!1571887))

(declare-fun d!1571977 () Bool)

(assert (=> d!1571977 (isPrefix!4895 lt!2005969 lt!2005975)))

(declare-fun lt!2006105 () Unit!146435)

(assert (=> d!1571977 (= lt!2006105 (choose!35724 lt!2005969 lt!2005975))))

(assert (=> d!1571977 (= (lemmaIsPrefixRefl!3292 lt!2005969 lt!2005975) lt!2006105)))

(declare-fun bs!1176099 () Bool)

(assert (= bs!1176099 d!1571977))

(assert (=> bs!1176099 m!5898604))

(declare-fun m!5898974 () Bool)

(assert (=> bs!1176099 m!5898974))

(assert (=> d!1571899 d!1571977))

(assert (=> b!4893573 d!1571921))

(declare-fun d!1571979 () Bool)

(declare-fun res!2090184 () Bool)

(declare-fun e!3059367 () Bool)

(assert (=> d!1571979 (=> (not res!2090184) (not e!3059367))))

(declare-fun size!37149 (Conc!14743) Int)

(assert (=> d!1571979 (= res!2090184 (= (csize!29716 (c!831694 input!1236)) (+ (size!37149 (left!40981 (c!831694 input!1236))) (size!37149 (right!41311 (c!831694 input!1236))))))))

(assert (=> d!1571979 (= (inv!72695 (c!831694 input!1236)) e!3059367)))

(declare-fun b!4893848 () Bool)

(declare-fun res!2090185 () Bool)

(assert (=> b!4893848 (=> (not res!2090185) (not e!3059367))))

(assert (=> b!4893848 (= res!2090185 (and (not (= (left!40981 (c!831694 input!1236)) Empty!14743)) (not (= (right!41311 (c!831694 input!1236)) Empty!14743))))))

(declare-fun b!4893849 () Bool)

(declare-fun res!2090186 () Bool)

(assert (=> b!4893849 (=> (not res!2090186) (not e!3059367))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1956 (Conc!14743) Int)

(assert (=> b!4893849 (= res!2090186 (= (cheight!14954 (c!831694 input!1236)) (+ (max!0 (height!1956 (left!40981 (c!831694 input!1236))) (height!1956 (right!41311 (c!831694 input!1236)))) 1)))))

(declare-fun b!4893850 () Bool)

(assert (=> b!4893850 (= e!3059367 (<= 0 (cheight!14954 (c!831694 input!1236))))))

(assert (= (and d!1571979 res!2090184) b!4893848))

(assert (= (and b!4893848 res!2090185) b!4893849))

(assert (= (and b!4893849 res!2090186) b!4893850))

(declare-fun m!5898976 () Bool)

(assert (=> d!1571979 m!5898976))

(declare-fun m!5898978 () Bool)

(assert (=> d!1571979 m!5898978))

(declare-fun m!5898980 () Bool)

(assert (=> b!4893849 m!5898980))

(declare-fun m!5898982 () Bool)

(assert (=> b!4893849 m!5898982))

(assert (=> b!4893849 m!5898980))

(assert (=> b!4893849 m!5898982))

(declare-fun m!5898984 () Bool)

(assert (=> b!4893849 m!5898984))

(assert (=> b!4893416 d!1571979))

(assert (=> b!4893445 d!1571931))

(declare-fun d!1571983 () Bool)

(assert (=> d!1571983 (= (isDefined!11040 lt!2005936) (not (isEmpty!30267 lt!2005936)))))

(declare-fun bs!1176101 () Bool)

(assert (= bs!1176101 d!1571983))

(assert (=> bs!1176101 m!5898558))

(assert (=> b!4893488 d!1571983))

(declare-fun d!1571985 () Bool)

(declare-fun lt!2006110 () Int)

(assert (=> d!1571985 (>= lt!2006110 0)))

(declare-fun e!3059372 () Int)

(assert (=> d!1571985 (= lt!2006110 e!3059372)))

(declare-fun c!831751 () Bool)

(assert (=> d!1571985 (= c!831751 (is-Nil!56408 lt!2005844))))

(assert (=> d!1571985 (= (size!37145 lt!2005844) lt!2006110)))

(declare-fun b!4893859 () Bool)

(assert (=> b!4893859 (= e!3059372 0)))

(declare-fun b!4893860 () Bool)

(assert (=> b!4893860 (= e!3059372 (+ 1 (size!37145 (t!365672 lt!2005844))))))

(assert (= (and d!1571985 c!831751) b!4893859))

(assert (= (and d!1571985 (not c!831751)) b!4893860))

(declare-fun m!5898986 () Bool)

(assert (=> b!4893860 m!5898986))

(assert (=> b!4893466 d!1571985))

(assert (=> d!1571881 d!1571895))

(assert (=> d!1571881 d!1571883))

(assert (=> d!1571881 d!1571885))

(assert (=> d!1571881 d!1571851))

(declare-fun d!1571987 () Bool)

(assert (=> d!1571987 true))

(declare-fun lambda!244040 () Int)

(declare-fun order!25491 () Int)

(declare-fun dynLambda!22643 (Int Int) Int)

(assert (=> d!1571987 (< (dynLambda!22635 order!25479 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) (dynLambda!22643 order!25491 lambda!244040))))

(declare-fun Forall2!1268 (Int) Bool)

(assert (=> d!1571987 (= (equivClasses!3466 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) (Forall2!1268 lambda!244040))))

(declare-fun bs!1176102 () Bool)

(assert (= bs!1176102 d!1571987))

(declare-fun m!5898988 () Bool)

(assert (=> bs!1176102 m!5898988))

(assert (=> b!4893469 d!1571987))

(declare-fun d!1571989 () Bool)

(assert (=> d!1571989 (= (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))) (is-Nil!56408 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))

(assert (=> b!4893578 d!1571989))

(declare-fun d!1571991 () Bool)

(declare-fun lt!2006111 () Int)

(assert (=> d!1571991 (>= lt!2006111 0)))

(declare-fun e!3059387 () Int)

(assert (=> d!1571991 (= lt!2006111 e!3059387)))

(declare-fun c!831756 () Bool)

(assert (=> d!1571991 (= c!831756 (is-Nil!56408 lt!2006027))))

(assert (=> d!1571991 (= (size!37145 lt!2006027) lt!2006111)))

(declare-fun b!4893889 () Bool)

(assert (=> b!4893889 (= e!3059387 0)))

(declare-fun b!4893890 () Bool)

(assert (=> b!4893890 (= e!3059387 (+ 1 (size!37145 (t!365672 lt!2006027))))))

(assert (= (and d!1571991 c!831756) b!4893889))

(assert (= (and d!1571991 (not c!831756)) b!4893890))

(declare-fun m!5898990 () Bool)

(assert (=> b!4893890 m!5898990))

(assert (=> b!4893578 d!1571991))

(declare-fun b!4893961 () Bool)

(declare-fun e!3059431 () tuple2!60466)

(assert (=> b!4893961 (= e!3059431 (tuple2!60467 Nil!56408 lt!2006027))))

(declare-fun b!4893962 () Bool)

(declare-fun e!3059433 () tuple2!60466)

(declare-fun call!339461 () tuple2!60466)

(assert (=> b!4893962 (= e!3059433 call!339461)))

(declare-fun b!4893964 () Bool)

(declare-fun e!3059428 () Bool)

(declare-fun lt!2006251 () tuple2!60466)

(assert (=> b!4893964 (= e!3059428 (>= (size!37145 (_1!33536 lt!2006251)) (size!37145 Nil!56408)))))

(declare-fun b!4893965 () Bool)

(declare-fun e!3059429 () Unit!146435)

(declare-fun Unit!146443 () Unit!146435)

(assert (=> b!4893965 (= e!3059429 Unit!146443)))

(declare-fun lt!2006238 () Unit!146435)

(declare-fun call!339465 () Unit!146435)

(assert (=> b!4893965 (= lt!2006238 call!339465)))

(declare-fun call!339463 () Bool)

(assert (=> b!4893965 call!339463))

(declare-fun lt!2006235 () Unit!146435)

(assert (=> b!4893965 (= lt!2006235 lt!2006238)))

(declare-fun lt!2006234 () Unit!146435)

(declare-fun call!339464 () Unit!146435)

(assert (=> b!4893965 (= lt!2006234 call!339464)))

(assert (=> b!4893965 (= lt!2006027 Nil!56408)))

(declare-fun lt!2006227 () Unit!146435)

(assert (=> b!4893965 (= lt!2006227 lt!2006234)))

(assert (=> b!4893965 false))

(declare-fun b!4893966 () Bool)

(declare-fun e!3059430 () tuple2!60466)

(declare-fun lt!2006229 () tuple2!60466)

(assert (=> b!4893966 (= e!3059430 lt!2006229)))

(declare-fun bm!339453 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1059 (List!56532 List!56532 List!56532) Unit!146435)

(assert (=> bm!339453 (= call!339464 (lemmaIsPrefixSameLengthThenSameList!1059 lt!2006027 Nil!56408 lt!2006027))))

(declare-fun b!4893967 () Bool)

(declare-fun e!3059434 () tuple2!60466)

(assert (=> b!4893967 (= e!3059431 e!3059434)))

(declare-fun c!831789 () Bool)

(assert (=> b!4893967 (= c!831789 (= (size!37145 Nil!56408) (size!37145 lt!2006027)))))

(declare-fun bm!339454 () Bool)

(declare-fun call!339460 () C!26698)

(assert (=> bm!339454 (= call!339460 (head!10456 lt!2006027))))

(declare-fun bm!339455 () Bool)

(declare-fun call!339462 () Regex!13250)

(assert (=> bm!339455 (= call!339462 (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) call!339460))))

(declare-fun call!339459 () List!56532)

(declare-fun lt!2006239 () List!56532)

(declare-fun bm!339456 () Bool)

(assert (=> bm!339456 (= call!339461 (findLongestMatchInner!1754 call!339462 lt!2006239 (+ (size!37145 Nil!56408) 1) call!339459 lt!2006027 (size!37145 lt!2006027)))))

(declare-fun bm!339457 () Bool)

(assert (=> bm!339457 (= call!339459 (tail!9602 lt!2006027))))

(declare-fun b!4893968 () Bool)

(declare-fun e!3059427 () tuple2!60466)

(assert (=> b!4893968 (= e!3059427 (tuple2!60467 Nil!56408 Nil!56408))))

(declare-fun b!4893969 () Bool)

(declare-fun e!3059432 () Bool)

(assert (=> b!4893969 (= e!3059432 e!3059428)))

(declare-fun res!2090221 () Bool)

(assert (=> b!4893969 (=> res!2090221 e!3059428)))

(assert (=> b!4893969 (= res!2090221 (isEmpty!30272 (_1!33536 lt!2006251)))))

(declare-fun b!4893970 () Bool)

(declare-fun c!831785 () Bool)

(declare-fun call!339458 () Bool)

(assert (=> b!4893970 (= c!831785 call!339458)))

(declare-fun lt!2006232 () Unit!146435)

(declare-fun lt!2006231 () Unit!146435)

(assert (=> b!4893970 (= lt!2006232 lt!2006231)))

(declare-fun lt!2006226 () C!26698)

(declare-fun lt!2006228 () List!56532)

(assert (=> b!4893970 (= (++!12244 (++!12244 Nil!56408 (Cons!56408 lt!2006226 Nil!56408)) lt!2006228) lt!2006027)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1331 (List!56532 C!26698 List!56532 List!56532) Unit!146435)

(assert (=> b!4893970 (= lt!2006231 (lemmaMoveElementToOtherListKeepsConcatEq!1331 Nil!56408 lt!2006226 lt!2006228 lt!2006027))))

(assert (=> b!4893970 (= lt!2006228 (tail!9602 lt!2006027))))

(assert (=> b!4893970 (= lt!2006226 (head!10456 lt!2006027))))

(declare-fun lt!2006225 () Unit!146435)

(declare-fun lt!2006233 () Unit!146435)

(assert (=> b!4893970 (= lt!2006225 lt!2006233)))

(declare-fun getSuffix!2888 (List!56532 List!56532) List!56532)

(assert (=> b!4893970 (isPrefix!4895 (++!12244 Nil!56408 (Cons!56408 (head!10456 (getSuffix!2888 lt!2006027 Nil!56408)) Nil!56408)) lt!2006027)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!713 (List!56532 List!56532) Unit!146435)

(assert (=> b!4893970 (= lt!2006233 (lemmaAddHeadSuffixToPrefixStillPrefix!713 Nil!56408 lt!2006027))))

(declare-fun lt!2006243 () Unit!146435)

(declare-fun lt!2006240 () Unit!146435)

(assert (=> b!4893970 (= lt!2006243 lt!2006240)))

(assert (=> b!4893970 (= lt!2006240 (lemmaAddHeadSuffixToPrefixStillPrefix!713 Nil!56408 lt!2006027))))

(assert (=> b!4893970 (= lt!2006239 (++!12244 Nil!56408 (Cons!56408 (head!10456 lt!2006027) Nil!56408)))))

(declare-fun lt!2006245 () Unit!146435)

(assert (=> b!4893970 (= lt!2006245 e!3059429)))

(declare-fun c!831788 () Bool)

(assert (=> b!4893970 (= c!831788 (= (size!37145 Nil!56408) (size!37145 lt!2006027)))))

(declare-fun lt!2006237 () Unit!146435)

(declare-fun lt!2006252 () Unit!146435)

(assert (=> b!4893970 (= lt!2006237 lt!2006252)))

(assert (=> b!4893970 (<= (size!37145 Nil!56408) (size!37145 lt!2006027))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!625 (List!56532 List!56532) Unit!146435)

(assert (=> b!4893970 (= lt!2006252 (lemmaIsPrefixThenSmallerEqSize!625 Nil!56408 lt!2006027))))

(assert (=> b!4893970 (= e!3059434 e!3059433)))

(declare-fun bm!339458 () Bool)

(assert (=> bm!339458 (= call!339463 (isPrefix!4895 lt!2006027 lt!2006027))))

(declare-fun bm!339459 () Bool)

(assert (=> bm!339459 (= call!339465 (lemmaIsPrefixRefl!3292 lt!2006027 lt!2006027))))

(declare-fun b!4893971 () Bool)

(declare-fun c!831784 () Bool)

(assert (=> b!4893971 (= c!831784 call!339458)))

(declare-fun lt!2006244 () Unit!146435)

(declare-fun lt!2006242 () Unit!146435)

(assert (=> b!4893971 (= lt!2006244 lt!2006242)))

(assert (=> b!4893971 (= lt!2006027 Nil!56408)))

(assert (=> b!4893971 (= lt!2006242 call!339464)))

(declare-fun lt!2006230 () Unit!146435)

(declare-fun lt!2006236 () Unit!146435)

(assert (=> b!4893971 (= lt!2006230 lt!2006236)))

(assert (=> b!4893971 call!339463))

(assert (=> b!4893971 (= lt!2006236 call!339465)))

(assert (=> b!4893971 (= e!3059434 e!3059427)))

(declare-fun b!4893972 () Bool)

(assert (=> b!4893972 (= e!3059433 e!3059430)))

(assert (=> b!4893972 (= lt!2006229 call!339461)))

(declare-fun c!831787 () Bool)

(assert (=> b!4893972 (= c!831787 (isEmpty!30272 (_1!33536 lt!2006229)))))

(declare-fun b!4893963 () Bool)

(assert (=> b!4893963 (= e!3059427 (tuple2!60467 Nil!56408 lt!2006027))))

(declare-fun d!1571993 () Bool)

(assert (=> d!1571993 e!3059432))

(declare-fun res!2090222 () Bool)

(assert (=> d!1571993 (=> (not res!2090222) (not e!3059432))))

(assert (=> d!1571993 (= res!2090222 (= (++!12244 (_1!33536 lt!2006251) (_2!33536 lt!2006251)) lt!2006027))))

(assert (=> d!1571993 (= lt!2006251 e!3059431)))

(declare-fun c!831786 () Bool)

(declare-fun lostCause!1087 (Regex!13250) Bool)

(assert (=> d!1571993 (= c!831786 (lostCause!1087 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun lt!2006248 () Unit!146435)

(declare-fun Unit!146444 () Unit!146435)

(assert (=> d!1571993 (= lt!2006248 Unit!146444)))

(assert (=> d!1571993 (= (getSuffix!2888 lt!2006027 Nil!56408) lt!2006027)))

(declare-fun lt!2006250 () Unit!146435)

(declare-fun lt!2006249 () Unit!146435)

(assert (=> d!1571993 (= lt!2006250 lt!2006249)))

(declare-fun lt!2006247 () List!56532)

(assert (=> d!1571993 (= lt!2006027 lt!2006247)))

(declare-fun lemmaSamePrefixThenSameSuffix!2304 (List!56532 List!56532 List!56532 List!56532 List!56532) Unit!146435)

(assert (=> d!1571993 (= lt!2006249 (lemmaSamePrefixThenSameSuffix!2304 Nil!56408 lt!2006027 Nil!56408 lt!2006247 lt!2006027))))

(assert (=> d!1571993 (= lt!2006247 (getSuffix!2888 lt!2006027 Nil!56408))))

(declare-fun lt!2006246 () Unit!146435)

(declare-fun lt!2006241 () Unit!146435)

(assert (=> d!1571993 (= lt!2006246 lt!2006241)))

(assert (=> d!1571993 (isPrefix!4895 Nil!56408 (++!12244 Nil!56408 lt!2006027))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3124 (List!56532 List!56532) Unit!146435)

(assert (=> d!1571993 (= lt!2006241 (lemmaConcatTwoListThenFirstIsPrefix!3124 Nil!56408 lt!2006027))))

(assert (=> d!1571993 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165)))))

(assert (=> d!1571993 (= (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)) lt!2006251)))

(declare-fun bm!339460 () Bool)

(assert (=> bm!339460 (= call!339458 (nullable!4556 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun b!4893973 () Bool)

(assert (=> b!4893973 (= e!3059430 (tuple2!60467 Nil!56408 lt!2006027))))

(declare-fun b!4893974 () Bool)

(declare-fun Unit!146445 () Unit!146435)

(assert (=> b!4893974 (= e!3059429 Unit!146445)))

(assert (= (and d!1571993 c!831786) b!4893961))

(assert (= (and d!1571993 (not c!831786)) b!4893967))

(assert (= (and b!4893967 c!831789) b!4893971))

(assert (= (and b!4893967 (not c!831789)) b!4893970))

(assert (= (and b!4893971 c!831784) b!4893968))

(assert (= (and b!4893971 (not c!831784)) b!4893963))

(assert (= (and b!4893970 c!831788) b!4893965))

(assert (= (and b!4893970 (not c!831788)) b!4893974))

(assert (= (and b!4893970 c!831785) b!4893972))

(assert (= (and b!4893970 (not c!831785)) b!4893962))

(assert (= (and b!4893972 c!831787) b!4893973))

(assert (= (and b!4893972 (not c!831787)) b!4893966))

(assert (= (or b!4893972 b!4893962) bm!339457))

(assert (= (or b!4893972 b!4893962) bm!339454))

(assert (= (or b!4893972 b!4893962) bm!339455))

(assert (= (or b!4893972 b!4893962) bm!339456))

(assert (= (or b!4893971 b!4893970) bm!339460))

(assert (= (or b!4893971 b!4893965) bm!339459))

(assert (= (or b!4893971 b!4893965) bm!339453))

(assert (= (or b!4893971 b!4893965) bm!339458))

(assert (= (and d!1571993 res!2090222) b!4893969))

(assert (= (and b!4893969 (not res!2090221)) b!4893964))

(declare-fun m!5899006 () Bool)

(assert (=> bm!339454 m!5899006))

(declare-fun m!5899008 () Bool)

(assert (=> bm!339455 m!5899008))

(assert (=> bm!339460 m!5898840))

(declare-fun m!5899010 () Bool)

(assert (=> bm!339459 m!5899010))

(assert (=> bm!339456 m!5898638))

(declare-fun m!5899012 () Bool)

(assert (=> bm!339456 m!5899012))

(declare-fun m!5899014 () Bool)

(assert (=> b!4893972 m!5899014))

(declare-fun m!5899016 () Bool)

(assert (=> b!4893970 m!5899016))

(declare-fun m!5899018 () Bool)

(assert (=> b!4893970 m!5899018))

(declare-fun m!5899020 () Bool)

(assert (=> b!4893970 m!5899020))

(declare-fun m!5899022 () Bool)

(assert (=> b!4893970 m!5899022))

(declare-fun m!5899024 () Bool)

(assert (=> b!4893970 m!5899024))

(declare-fun m!5899026 () Bool)

(assert (=> b!4893970 m!5899026))

(declare-fun m!5899028 () Bool)

(assert (=> b!4893970 m!5899028))

(declare-fun m!5899030 () Bool)

(assert (=> b!4893970 m!5899030))

(assert (=> b!4893970 m!5898638))

(assert (=> b!4893970 m!5899026))

(assert (=> b!4893970 m!5899016))

(declare-fun m!5899032 () Bool)

(assert (=> b!4893970 m!5899032))

(declare-fun m!5899034 () Bool)

(assert (=> b!4893970 m!5899034))

(assert (=> b!4893970 m!5899022))

(declare-fun m!5899036 () Bool)

(assert (=> b!4893970 m!5899036))

(assert (=> b!4893970 m!5899006))

(assert (=> b!4893970 m!5898636))

(declare-fun m!5899038 () Bool)

(assert (=> b!4893969 m!5899038))

(declare-fun m!5899040 () Bool)

(assert (=> bm!339458 m!5899040))

(assert (=> bm!339457 m!5899030))

(declare-fun m!5899042 () Bool)

(assert (=> b!4893964 m!5899042))

(assert (=> b!4893964 m!5898636))

(declare-fun m!5899044 () Bool)

(assert (=> bm!339453 m!5899044))

(declare-fun m!5899046 () Bool)

(assert (=> d!1571993 m!5899046))

(assert (=> d!1571993 m!5898834))

(declare-fun m!5899048 () Bool)

(assert (=> d!1571993 m!5899048))

(declare-fun m!5899050 () Bool)

(assert (=> d!1571993 m!5899050))

(declare-fun m!5899052 () Bool)

(assert (=> d!1571993 m!5899052))

(declare-fun m!5899054 () Bool)

(assert (=> d!1571993 m!5899054))

(declare-fun m!5899056 () Bool)

(assert (=> d!1571993 m!5899056))

(assert (=> d!1571993 m!5899048))

(assert (=> d!1571993 m!5899016))

(assert (=> b!4893578 d!1571993))

(declare-fun d!1571997 () Bool)

(declare-fun dynLambda!22645 (Int BalanceConc!28916) Bool)

(assert (=> d!1571997 (dynLambda!22645 lambda!244035 (_1!33535 lt!2006025))))

(declare-fun lt!2006283 () Unit!146435)

(declare-fun choose!35727 (Int BalanceConc!28916) Unit!146435)

(assert (=> d!1571997 (= lt!2006283 (choose!35727 lambda!244035 (_1!33535 lt!2006025)))))

(declare-fun Forall!1688 (Int) Bool)

(assert (=> d!1571997 (Forall!1688 lambda!244035)))

(assert (=> d!1571997 (= (ForallOf!1134 lambda!244035 (_1!33535 lt!2006025)) lt!2006283)))

(declare-fun b_lambda!194421 () Bool)

(assert (=> (not b_lambda!194421) (not d!1571997)))

(declare-fun bs!1176103 () Bool)

(assert (= bs!1176103 d!1571997))

(declare-fun m!5899078 () Bool)

(assert (=> bs!1176103 m!5899078))

(declare-fun m!5899080 () Bool)

(assert (=> bs!1176103 m!5899080))

(declare-fun m!5899082 () Bool)

(assert (=> bs!1176103 m!5899082))

(assert (=> b!4893578 d!1571997))

(declare-fun d!1571999 () Bool)

(declare-fun lt!2006286 () Int)

(assert (=> d!1571999 (= lt!2006286 (size!37145 (list!17727 (_1!33535 lt!2006025))))))

(assert (=> d!1571999 (= lt!2006286 (size!37149 (c!831694 (_1!33535 lt!2006025))))))

(assert (=> d!1571999 (= (size!37147 (_1!33535 lt!2006025)) lt!2006286)))

(declare-fun bs!1176104 () Bool)

(assert (= bs!1176104 d!1571999))

(assert (=> bs!1176104 m!5898640))

(assert (=> bs!1176104 m!5898640))

(declare-fun m!5899116 () Bool)

(assert (=> bs!1176104 m!5899116))

(declare-fun m!5899118 () Bool)

(assert (=> bs!1176104 m!5899118))

(assert (=> b!4893578 d!1571999))

(declare-fun d!1572003 () Bool)

(declare-fun dynLambda!22646 (Int BalanceConc!28916) TokenValue!8485)

(assert (=> d!1572003 (= (apply!13541 (transformation!8175 (h!62858 rulesArg!165)) (_1!33535 lt!2006025)) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025)))))

(declare-fun b_lambda!194423 () Bool)

(assert (=> (not b_lambda!194423) (not d!1572003)))

(declare-fun t!365683 () Bool)

(declare-fun tb!258927 () Bool)

(assert (=> (and b!4893356 (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365683) tb!258927))

(declare-fun result!322504 () Bool)

(declare-fun inv!21 (TokenValue!8485) Bool)

(assert (=> tb!258927 (= result!322504 (inv!21 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025))))))

(declare-fun m!5899126 () Bool)

(assert (=> tb!258927 m!5899126))

(assert (=> d!1572003 t!365683))

(declare-fun b_and!344947 () Bool)

(assert (= b_and!344927 (and (=> t!365683 result!322504) b_and!344947)))

(declare-fun t!365685 () Bool)

(declare-fun tb!258929 () Bool)

(assert (=> (and b!4893636 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365685) tb!258929))

(declare-fun result!322508 () Bool)

(assert (= result!322508 result!322504))

(assert (=> d!1572003 t!365685))

(declare-fun b_and!344949 () Bool)

(assert (= b_and!344935 (and (=> t!365685 result!322508) b_and!344949)))

(declare-fun m!5899128 () Bool)

(assert (=> d!1572003 m!5899128))

(assert (=> b!4893578 d!1572003))

(declare-fun bs!1176106 () Bool)

(declare-fun d!1572013 () Bool)

(assert (= bs!1176106 (and d!1572013 d!1571987)))

(declare-fun lambda!244043 () Int)

(assert (=> bs!1176106 (= lambda!244043 lambda!244040)))

(declare-fun b!4894005 () Bool)

(declare-fun e!3059454 () Bool)

(assert (=> b!4894005 (= e!3059454 true)))

(assert (=> d!1572013 e!3059454))

(assert (= d!1572013 b!4894005))

(assert (=> b!4894005 (< (dynLambda!22635 order!25479 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) (dynLambda!22643 order!25491 lambda!244043))))

(assert (=> b!4894005 (< (dynLambda!22637 order!25483 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) (dynLambda!22643 order!25491 lambda!244043))))

(assert (=> d!1572013 (= (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025)) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))))

(declare-fun lt!2006293 () Unit!146435)

(declare-fun Forall2of!447 (Int BalanceConc!28916 BalanceConc!28916) Unit!146435)

(assert (=> d!1572013 (= lt!2006293 (Forall2of!447 lambda!244043 (_1!33535 lt!2006025) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))))

(assert (=> d!1572013 (= (list!17727 (_1!33535 lt!2006025)) (list!17727 (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))))

(assert (=> d!1572013 (= (lemmaEqSameImage!1091 (transformation!8175 (h!62858 rulesArg!165)) (_1!33535 lt!2006025) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))) lt!2006293)))

(declare-fun b_lambda!194425 () Bool)

(assert (=> (not b_lambda!194425) (not d!1572013)))

(assert (=> d!1572013 t!365683))

(declare-fun b_and!344951 () Bool)

(assert (= b_and!344947 (and (=> t!365683 result!322504) b_and!344951)))

(assert (=> d!1572013 t!365685))

(declare-fun b_and!344953 () Bool)

(assert (= b_and!344949 (and (=> t!365685 result!322508) b_and!344953)))

(declare-fun b_lambda!194427 () Bool)

(assert (=> (not b_lambda!194427) (not d!1572013)))

(declare-fun t!365687 () Bool)

(declare-fun tb!258931 () Bool)

(assert (=> (and b!4893356 (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365687) tb!258931))

(declare-fun result!322510 () Bool)

(assert (=> tb!258931 (= result!322510 (inv!21 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))))

(declare-fun m!5899130 () Bool)

(assert (=> tb!258931 m!5899130))

(assert (=> d!1572013 t!365687))

(declare-fun b_and!344955 () Bool)

(assert (= b_and!344951 (and (=> t!365687 result!322510) b_and!344955)))

(declare-fun t!365689 () Bool)

(declare-fun tb!258933 () Bool)

(assert (=> (and b!4893636 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365689) tb!258933))

(declare-fun result!322512 () Bool)

(assert (= result!322512 result!322510))

(assert (=> d!1572013 t!365689))

(declare-fun b_and!344957 () Bool)

(assert (= b_and!344953 (and (=> t!365689 result!322512) b_and!344957)))

(assert (=> d!1572013 m!5898642))

(declare-fun m!5899132 () Bool)

(assert (=> d!1572013 m!5899132))

(assert (=> d!1572013 m!5898640))

(assert (=> d!1572013 m!5898642))

(declare-fun m!5899134 () Bool)

(assert (=> d!1572013 m!5899134))

(assert (=> d!1572013 m!5898642))

(declare-fun m!5899136 () Bool)

(assert (=> d!1572013 m!5899136))

(assert (=> d!1572013 m!5899128))

(assert (=> b!4893578 d!1572013))

(declare-fun d!1572015 () Bool)

(assert (=> d!1572015 (= (list!17727 (_1!33535 lt!2006025)) (list!17729 (c!831694 (_1!33535 lt!2006025))))))

(declare-fun bs!1176107 () Bool)

(assert (= bs!1176107 d!1572015))

(declare-fun m!5899138 () Bool)

(assert (=> bs!1176107 m!5899138))

(assert (=> b!4893578 d!1572015))

(assert (=> b!4893578 d!1571887))

(declare-fun d!1572017 () Bool)

(declare-fun e!3059458 () Bool)

(assert (=> d!1572017 e!3059458))

(declare-fun res!2090229 () Bool)

(assert (=> d!1572017 (=> res!2090229 e!3059458)))

(assert (=> d!1572017 (= res!2090229 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))

(declare-fun lt!2006296 () Unit!146435)

(declare-fun choose!35728 (Regex!13250 List!56532) Unit!146435)

(assert (=> d!1572017 (= lt!2006296 (choose!35728 (regex!8175 (h!62858 rulesArg!165)) lt!2006027))))

(assert (=> d!1572017 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165)))))

(assert (=> d!1572017 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1717 (regex!8175 (h!62858 rulesArg!165)) lt!2006027) lt!2006296)))

(declare-fun b!4894008 () Bool)

(assert (=> b!4894008 (= e!3059458 (matchR!6531 (regex!8175 (h!62858 rulesArg!165)) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))

(assert (= (and d!1572017 (not res!2090229)) b!4894008))

(assert (=> d!1572017 m!5898646))

(assert (=> d!1572017 m!5898638))

(assert (=> d!1572017 m!5898636))

(assert (=> d!1572017 m!5898638))

(assert (=> d!1572017 m!5898648))

(declare-fun m!5899140 () Bool)

(assert (=> d!1572017 m!5899140))

(assert (=> d!1572017 m!5898636))

(assert (=> d!1572017 m!5898834))

(assert (=> b!4894008 m!5898636))

(assert (=> b!4894008 m!5898638))

(assert (=> b!4894008 m!5898636))

(assert (=> b!4894008 m!5898638))

(assert (=> b!4894008 m!5898648))

(assert (=> b!4894008 m!5898670))

(assert (=> b!4893578 d!1572017))

(declare-fun d!1572019 () Bool)

(assert (=> d!1572019 (dynLambda!22645 lambda!244035 (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))

(declare-fun lt!2006297 () Unit!146435)

(assert (=> d!1572019 (= lt!2006297 (choose!35727 lambda!244035 (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))))

(assert (=> d!1572019 (Forall!1688 lambda!244035)))

(assert (=> d!1572019 (= (ForallOf!1134 lambda!244035 (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))) lt!2006297)))

(declare-fun b_lambda!194429 () Bool)

(assert (=> (not b_lambda!194429) (not d!1572019)))

(declare-fun bs!1176108 () Bool)

(assert (= bs!1176108 d!1572019))

(assert (=> bs!1176108 m!5898642))

(declare-fun m!5899142 () Bool)

(assert (=> bs!1176108 m!5899142))

(assert (=> bs!1176108 m!5898642))

(declare-fun m!5899144 () Bool)

(assert (=> bs!1176108 m!5899144))

(assert (=> bs!1176108 m!5899082))

(assert (=> b!4893578 d!1572019))

(declare-fun d!1572021 () Bool)

(declare-fun e!3059461 () Bool)

(assert (=> d!1572021 e!3059461))

(declare-fun res!2090232 () Bool)

(assert (=> d!1572021 (=> (not res!2090232) (not e!3059461))))

(assert (=> d!1572021 (= res!2090232 (semiInverseModEq!3587 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))))))

(declare-fun Unit!146446 () Unit!146435)

(assert (=> d!1572021 (= (lemmaInv!1237 (transformation!8175 (h!62858 rulesArg!165))) Unit!146446)))

(declare-fun b!4894011 () Bool)

(assert (=> b!4894011 (= e!3059461 (equivClasses!3466 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))))))

(assert (= (and d!1572021 res!2090232) b!4894011))

(assert (=> d!1572021 m!5898550))

(assert (=> b!4894011 m!5898552))

(assert (=> b!4893578 d!1572021))

(declare-fun d!1572023 () Bool)

(declare-fun fromListB!2693 (List!56532) BalanceConc!28916)

(assert (=> d!1572023 (= (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))) (fromListB!2693 (list!17727 (_1!33535 lt!2006025))))))

(declare-fun bs!1176109 () Bool)

(assert (= bs!1176109 d!1572023))

(assert (=> bs!1176109 m!5898640))

(declare-fun m!5899146 () Bool)

(assert (=> bs!1176109 m!5899146))

(assert (=> b!4893578 d!1572023))

(declare-fun d!1572025 () Bool)

(declare-fun lt!2006308 () Int)

(assert (=> d!1572025 (>= lt!2006308 0)))

(declare-fun e!3059470 () Int)

(assert (=> d!1572025 (= lt!2006308 e!3059470)))

(declare-fun c!831802 () Bool)

(assert (=> d!1572025 (= c!831802 (is-Nil!56408 Nil!56408))))

(assert (=> d!1572025 (= (size!37145 Nil!56408) lt!2006308)))

(declare-fun b!4894030 () Bool)

(assert (=> b!4894030 (= e!3059470 0)))

(declare-fun b!4894031 () Bool)

(assert (=> b!4894031 (= e!3059470 (+ 1 (size!37145 (t!365672 Nil!56408))))))

(assert (= (and d!1572025 c!831802) b!4894030))

(assert (= (and d!1572025 (not c!831802)) b!4894031))

(declare-fun m!5899148 () Bool)

(assert (=> b!4894031 m!5899148))

(assert (=> b!4893578 d!1572025))

(declare-fun d!1572027 () Bool)

(assert (=> d!1572027 (= (isEmpty!30268 lt!2005836) (not (is-Some!14026 lt!2005836)))))

(assert (=> d!1571879 d!1572027))

(assert (=> b!4893494 d!1571935))

(assert (=> b!4893494 d!1571937))

(assert (=> b!4893494 d!1571939))

(declare-fun d!1572029 () Bool)

(assert (=> d!1572029 (= (get!19481 (maxPrefixZipper!674 thiss!14805 (t!365674 rulesArg!165) (list!17727 input!1236))) (v!49981 (maxPrefixZipper!674 thiss!14805 (t!365674 rulesArg!165) (list!17727 input!1236))))))

(assert (=> b!4893539 d!1572029))

(assert (=> b!4893539 d!1571953))

(assert (=> b!4893539 d!1571955))

(assert (=> b!4893539 d!1571887))

(assert (=> b!4893539 d!1571971))

(declare-fun b!4894043 () Bool)

(declare-fun e!3059476 () List!56532)

(assert (=> b!4894043 (= e!3059476 (++!12244 (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005841)))) (list!17729 (right!41311 (c!831694 (_2!33531 lt!2005841))))))))

(declare-fun b!4894040 () Bool)

(declare-fun e!3059475 () List!56532)

(assert (=> b!4894040 (= e!3059475 Nil!56408)))

(declare-fun d!1572031 () Bool)

(declare-fun c!831807 () Bool)

(assert (=> d!1572031 (= c!831807 (is-Empty!14743 (c!831694 (_2!33531 lt!2005841))))))

(assert (=> d!1572031 (= (list!17729 (c!831694 (_2!33531 lt!2005841))) e!3059475)))

(declare-fun b!4894041 () Bool)

(assert (=> b!4894041 (= e!3059475 e!3059476)))

(declare-fun c!831808 () Bool)

(assert (=> b!4894041 (= c!831808 (is-Leaf!24548 (c!831694 (_2!33531 lt!2005841))))))

(declare-fun b!4894042 () Bool)

(assert (=> b!4894042 (= e!3059476 (list!17731 (xs!18059 (c!831694 (_2!33531 lt!2005841)))))))

(assert (= (and d!1572031 c!831807) b!4894040))

(assert (= (and d!1572031 (not c!831807)) b!4894041))

(assert (= (and b!4894041 c!831808) b!4894042))

(assert (= (and b!4894041 (not c!831808)) b!4894043))

(declare-fun m!5899150 () Bool)

(assert (=> b!4894043 m!5899150))

(declare-fun m!5899152 () Bool)

(assert (=> b!4894043 m!5899152))

(assert (=> b!4894043 m!5899150))

(assert (=> b!4894043 m!5899152))

(declare-fun m!5899154 () Bool)

(assert (=> b!4894043 m!5899154))

(declare-fun m!5899156 () Bool)

(assert (=> b!4894042 m!5899156))

(assert (=> d!1571847 d!1572031))

(declare-fun d!1572033 () Bool)

(declare-fun lt!2006309 () Int)

(assert (=> d!1572033 (>= lt!2006309 0)))

(declare-fun e!3059477 () Int)

(assert (=> d!1572033 (= lt!2006309 e!3059477)))

(declare-fun c!831809 () Bool)

(assert (=> d!1572033 (= c!831809 (is-Nil!56408 (_2!33532 (get!19481 lt!2005936))))))

(assert (=> d!1572033 (= (size!37145 (_2!33532 (get!19481 lt!2005936))) lt!2006309)))

(declare-fun b!4894044 () Bool)

(assert (=> b!4894044 (= e!3059477 0)))

(declare-fun b!4894045 () Bool)

(assert (=> b!4894045 (= e!3059477 (+ 1 (size!37145 (t!365672 (_2!33532 (get!19481 lt!2005936))))))))

(assert (= (and d!1572033 c!831809) b!4894044))

(assert (= (and d!1572033 (not c!831809)) b!4894045))

(declare-fun m!5899158 () Bool)

(assert (=> b!4894045 m!5899158))

(assert (=> b!4893496 d!1572033))

(assert (=> b!4893496 d!1571939))

(assert (=> b!4893496 d!1571985))

(assert (=> b!4893540 d!1571953))

(assert (=> b!4893540 d!1572029))

(assert (=> b!4893540 d!1571971))

(assert (=> b!4893540 d!1571887))

(declare-fun lt!2006344 () Option!14028)

(declare-fun d!1572035 () Bool)

(assert (=> d!1572035 (= lt!2006344 (maxPrefixOneRule!3530 thiss!14805 (h!62858 rulesArg!165) lt!2005844))))

(declare-fun e!3059511 () Option!14028)

(assert (=> d!1572035 (= lt!2006344 e!3059511)))

(declare-fun c!831823 () Bool)

(declare-fun lt!2006346 () tuple2!60466)

(assert (=> d!1572035 (= c!831823 (isEmpty!30272 (_1!33536 lt!2006346)))))

(declare-fun findLongestMatchWithZipper!84 (Regex!13250 List!56532) tuple2!60466)

(assert (=> d!1572035 (= lt!2006346 (findLongestMatchWithZipper!84 (regex!8175 (h!62858 rulesArg!165)) lt!2005844))))

(assert (=> d!1572035 (ruleValid!3673 thiss!14805 (h!62858 rulesArg!165))))

(assert (=> d!1572035 (= (maxPrefixOneRuleZipper!259 thiss!14805 (h!62858 rulesArg!165) lt!2005844) lt!2006344)))

(declare-fun b!4894100 () Bool)

(assert (=> b!4894100 (= e!3059511 None!14027)))

(declare-fun b!4894101 () Bool)

(assert (=> b!4894101 (= e!3059511 (Some!14027 (tuple2!60459 (Token!14915 (apply!13541 (transformation!8175 (h!62858 rulesArg!165)) (seqFromList!5937 (_1!33536 lt!2006346))) (h!62858 rulesArg!165) (size!37145 (_1!33536 lt!2006346)) (_1!33536 lt!2006346)) (_2!33536 lt!2006346))))))

(declare-fun lt!2006343 () Unit!146435)

(assert (=> b!4894101 (= lt!2006343 (longestMatchIsAcceptedByMatchOrIsEmpty!1717 (regex!8175 (h!62858 rulesArg!165)) lt!2005844))))

(declare-fun res!2090273 () Bool)

(assert (=> b!4894101 (= res!2090273 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))))))

(declare-fun e!3059512 () Bool)

(assert (=> b!4894101 (=> res!2090273 e!3059512)))

(assert (=> b!4894101 e!3059512))

(declare-fun lt!2006345 () Unit!146435)

(assert (=> b!4894101 (= lt!2006345 lt!2006343)))

(declare-fun lt!2006342 () Unit!146435)

(assert (=> b!4894101 (= lt!2006342 (lemmaInv!1237 (transformation!8175 (h!62858 rulesArg!165))))))

(declare-fun lt!2006347 () Unit!146435)

(assert (=> b!4894101 (= lt!2006347 (lemmaSemiInverse!2565 (transformation!8175 (h!62858 rulesArg!165)) (seqFromList!5937 (_1!33536 lt!2006346))))))

(declare-fun b!4894102 () Bool)

(assert (=> b!4894102 (= e!3059512 (matchR!6531 (regex!8175 (h!62858 rulesArg!165)) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))))))

(assert (= (and d!1572035 c!831823) b!4894100))

(assert (= (and d!1572035 (not c!831823)) b!4894101))

(assert (= (and b!4894101 (not res!2090273)) b!4894102))

(assert (=> d!1572035 m!5898582))

(declare-fun m!5899270 () Bool)

(assert (=> d!1572035 m!5899270))

(declare-fun m!5899272 () Bool)

(assert (=> d!1572035 m!5899272))

(assert (=> d!1572035 m!5898526))

(declare-fun m!5899274 () Bool)

(assert (=> b!4894101 m!5899274))

(declare-fun m!5899276 () Bool)

(assert (=> b!4894101 m!5899276))

(assert (=> b!4894101 m!5898636))

(declare-fun m!5899278 () Bool)

(assert (=> b!4894101 m!5899278))

(assert (=> b!4894101 m!5899274))

(declare-fun m!5899280 () Bool)

(assert (=> b!4894101 m!5899280))

(assert (=> b!4894101 m!5898538))

(assert (=> b!4894101 m!5899274))

(declare-fun m!5899282 () Bool)

(assert (=> b!4894101 m!5899282))

(assert (=> b!4894101 m!5898658))

(assert (=> b!4894101 m!5898636))

(assert (=> b!4894101 m!5898538))

(declare-fun m!5899284 () Bool)

(assert (=> b!4894101 m!5899284))

(declare-fun m!5899286 () Bool)

(assert (=> b!4894101 m!5899286))

(assert (=> b!4894102 m!5898636))

(assert (=> b!4894102 m!5898538))

(assert (=> b!4894102 m!5898636))

(assert (=> b!4894102 m!5898538))

(assert (=> b!4894102 m!5899284))

(declare-fun m!5899288 () Bool)

(assert (=> b!4894102 m!5899288))

(assert (=> bm!339399 d!1572035))

(declare-fun d!1572079 () Bool)

(assert (=> d!1572079 (= (head!10456 lt!2005844) (h!62856 lt!2005844))))

(assert (=> b!4893464 d!1572079))

(assert (=> b!4893446 d!1571967))

(declare-fun d!1572081 () Bool)

(declare-fun lt!2006350 () Bool)

(declare-fun content!10021 (List!56534) (Set Rule!16150))

(assert (=> d!1572081 (= lt!2006350 (set.member (rule!11365 (_1!33532 (get!19481 lt!2005936))) (content!10021 rulesArg!165)))))

(declare-fun e!3059517 () Bool)

(assert (=> d!1572081 (= lt!2006350 e!3059517)))

(declare-fun res!2090278 () Bool)

(assert (=> d!1572081 (=> (not res!2090278) (not e!3059517))))

(assert (=> d!1572081 (= res!2090278 (is-Cons!56410 rulesArg!165))))

(assert (=> d!1572081 (= (contains!19438 rulesArg!165 (rule!11365 (_1!33532 (get!19481 lt!2005936)))) lt!2006350)))

(declare-fun b!4894107 () Bool)

(declare-fun e!3059518 () Bool)

(assert (=> b!4894107 (= e!3059517 e!3059518)))

(declare-fun res!2090279 () Bool)

(assert (=> b!4894107 (=> res!2090279 e!3059518)))

(assert (=> b!4894107 (= res!2090279 (= (h!62858 rulesArg!165) (rule!11365 (_1!33532 (get!19481 lt!2005936)))))))

(declare-fun b!4894108 () Bool)

(assert (=> b!4894108 (= e!3059518 (contains!19438 (t!365674 rulesArg!165) (rule!11365 (_1!33532 (get!19481 lt!2005936)))))))

(assert (= (and d!1572081 res!2090278) b!4894107))

(assert (= (and b!4894107 (not res!2090279)) b!4894108))

(declare-fun m!5899290 () Bool)

(assert (=> d!1572081 m!5899290))

(declare-fun m!5899292 () Bool)

(assert (=> d!1572081 m!5899292))

(declare-fun m!5899294 () Bool)

(assert (=> b!4894108 m!5899294))

(assert (=> b!4893489 d!1572081))

(assert (=> b!4893489 d!1571939))

(assert (=> b!4893533 d!1571953))

(assert (=> b!4893533 d!1571951))

(assert (=> b!4893533 d!1571957))

(assert (=> b!4893533 d!1571887))

(declare-fun bs!1176114 () Bool)

(declare-fun d!1572083 () Bool)

(assert (= bs!1176114 (and d!1572083 b!4893578)))

(declare-fun lambda!244046 () Int)

(assert (=> bs!1176114 (= lambda!244046 lambda!244035)))

(assert (=> d!1572083 true))

(assert (=> d!1572083 (< (dynLambda!22637 order!25483 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) (dynLambda!22636 order!25481 lambda!244046))))

(assert (=> d!1572083 true))

(assert (=> d!1572083 (< (dynLambda!22635 order!25479 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) (dynLambda!22636 order!25481 lambda!244046))))

(assert (=> d!1572083 (= (semiInverseModEq!3587 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) (Forall!1688 lambda!244046))))

(declare-fun bs!1176115 () Bool)

(assert (= bs!1176115 d!1572083))

(declare-fun m!5899296 () Bool)

(assert (=> bs!1176115 m!5899296))

(assert (=> d!1571891 d!1572083))

(declare-fun b!4894113 () Bool)

(declare-fun res!2090281 () Bool)

(declare-fun e!3059519 () Bool)

(assert (=> b!4894113 (=> (not res!2090281) (not e!3059519))))

(declare-fun lt!2006351 () Option!14028)

(assert (=> b!4894113 (= res!2090281 (< (size!37145 (_2!33532 (get!19481 lt!2006351))) (size!37145 lt!2005844)))))

(declare-fun b!4894114 () Bool)

(declare-fun res!2090283 () Bool)

(assert (=> b!4894114 (=> (not res!2090283) (not e!3059519))))

(assert (=> b!4894114 (= res!2090283 (= (++!12244 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351)))) (_2!33532 (get!19481 lt!2006351))) lt!2005844))))

(declare-fun b!4894115 () Bool)

(declare-fun e!3059520 () Option!14028)

(declare-fun lt!2006352 () tuple2!60466)

(assert (=> b!4894115 (= e!3059520 (Some!14027 (tuple2!60459 (Token!14915 (apply!13541 (transformation!8175 (h!62858 rulesArg!165)) (seqFromList!5937 (_1!33536 lt!2006352))) (h!62858 rulesArg!165) (size!37147 (seqFromList!5937 (_1!33536 lt!2006352))) (_1!33536 lt!2006352)) (_2!33536 lt!2006352))))))

(declare-fun lt!2006353 () Unit!146435)

(assert (=> b!4894115 (= lt!2006353 (longestMatchIsAcceptedByMatchOrIsEmpty!1717 (regex!8175 (h!62858 rulesArg!165)) lt!2005844))))

(declare-fun res!2090282 () Bool)

(assert (=> b!4894115 (= res!2090282 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))))))

(declare-fun e!3059522 () Bool)

(assert (=> b!4894115 (=> res!2090282 e!3059522)))

(assert (=> b!4894115 e!3059522))

(declare-fun lt!2006354 () Unit!146435)

(assert (=> b!4894115 (= lt!2006354 lt!2006353)))

(declare-fun lt!2006355 () Unit!146435)

(assert (=> b!4894115 (= lt!2006355 (lemmaSemiInverse!2565 (transformation!8175 (h!62858 rulesArg!165)) (seqFromList!5937 (_1!33536 lt!2006352))))))

(declare-fun b!4894116 () Bool)

(assert (=> b!4894116 (= e!3059519 (= (size!37143 (_1!33532 (get!19481 lt!2006351))) (size!37145 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006351))))))))

(declare-fun b!4894117 () Bool)

(declare-fun e!3059521 () Bool)

(assert (=> b!4894117 (= e!3059521 e!3059519)))

(declare-fun res!2090284 () Bool)

(assert (=> b!4894117 (=> (not res!2090284) (not e!3059519))))

(assert (=> b!4894117 (= res!2090284 (matchR!6531 (regex!8175 (h!62858 rulesArg!165)) (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351))))))))

(declare-fun d!1572085 () Bool)

(assert (=> d!1572085 e!3059521))

(declare-fun res!2090285 () Bool)

(assert (=> d!1572085 (=> res!2090285 e!3059521)))

(assert (=> d!1572085 (= res!2090285 (isEmpty!30267 lt!2006351))))

(assert (=> d!1572085 (= lt!2006351 e!3059520)))

(declare-fun c!831824 () Bool)

(assert (=> d!1572085 (= c!831824 (isEmpty!30272 (_1!33536 lt!2006352)))))

(assert (=> d!1572085 (= lt!2006352 (findLongestMatch!1648 (regex!8175 (h!62858 rulesArg!165)) lt!2005844))))

(assert (=> d!1572085 (ruleValid!3673 thiss!14805 (h!62858 rulesArg!165))))

(assert (=> d!1572085 (= (maxPrefixOneRule!3530 thiss!14805 (h!62858 rulesArg!165) lt!2005844) lt!2006351)))

(declare-fun b!4894118 () Bool)

(assert (=> b!4894118 (= e!3059522 (matchR!6531 (regex!8175 (h!62858 rulesArg!165)) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))))))

(declare-fun b!4894119 () Bool)

(declare-fun res!2090280 () Bool)

(assert (=> b!4894119 (=> (not res!2090280) (not e!3059519))))

(assert (=> b!4894119 (= res!2090280 (= (value!262139 (_1!33532 (get!19481 lt!2006351))) (apply!13541 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006351)))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006351)))))))))

(declare-fun b!4894120 () Bool)

(assert (=> b!4894120 (= e!3059520 None!14027)))

(declare-fun b!4894121 () Bool)

(declare-fun res!2090286 () Bool)

(assert (=> b!4894121 (=> (not res!2090286) (not e!3059519))))

(assert (=> b!4894121 (= res!2090286 (= (rule!11365 (_1!33532 (get!19481 lt!2006351))) (h!62858 rulesArg!165)))))

(assert (= (and d!1572085 c!831824) b!4894120))

(assert (= (and d!1572085 (not c!831824)) b!4894115))

(assert (= (and b!4894115 (not res!2090282)) b!4894118))

(assert (= (and d!1572085 (not res!2090285)) b!4894117))

(assert (= (and b!4894117 res!2090284) b!4894114))

(assert (= (and b!4894114 res!2090283) b!4894113))

(assert (= (and b!4894113 res!2090281) b!4894121))

(assert (= (and b!4894121 res!2090286) b!4894119))

(assert (= (and b!4894119 res!2090280) b!4894116))

(declare-fun m!5899298 () Bool)

(assert (=> b!4894115 m!5899298))

(declare-fun m!5899300 () Bool)

(assert (=> b!4894115 m!5899300))

(assert (=> b!4894115 m!5898636))

(assert (=> b!4894115 m!5898538))

(assert (=> b!4894115 m!5899284))

(assert (=> b!4894115 m!5899298))

(declare-fun m!5899302 () Bool)

(assert (=> b!4894115 m!5899302))

(assert (=> b!4894115 m!5899282))

(assert (=> b!4894115 m!5899298))

(assert (=> b!4894115 m!5899278))

(assert (=> b!4894115 m!5899298))

(declare-fun m!5899304 () Bool)

(assert (=> b!4894115 m!5899304))

(assert (=> b!4894115 m!5898538))

(assert (=> b!4894115 m!5898636))

(declare-fun m!5899306 () Bool)

(assert (=> b!4894119 m!5899306))

(declare-fun m!5899308 () Bool)

(assert (=> b!4894119 m!5899308))

(assert (=> b!4894119 m!5899308))

(declare-fun m!5899310 () Bool)

(assert (=> b!4894119 m!5899310))

(assert (=> b!4894117 m!5899306))

(declare-fun m!5899312 () Bool)

(assert (=> b!4894117 m!5899312))

(assert (=> b!4894117 m!5899312))

(declare-fun m!5899314 () Bool)

(assert (=> b!4894117 m!5899314))

(assert (=> b!4894117 m!5899314))

(declare-fun m!5899316 () Bool)

(assert (=> b!4894117 m!5899316))

(declare-fun m!5899318 () Bool)

(assert (=> d!1572085 m!5899318))

(declare-fun m!5899320 () Bool)

(assert (=> d!1572085 m!5899320))

(declare-fun m!5899322 () Bool)

(assert (=> d!1572085 m!5899322))

(assert (=> d!1572085 m!5898526))

(assert (=> b!4894114 m!5899306))

(assert (=> b!4894114 m!5899312))

(assert (=> b!4894114 m!5899312))

(assert (=> b!4894114 m!5899314))

(assert (=> b!4894114 m!5899314))

(declare-fun m!5899324 () Bool)

(assert (=> b!4894114 m!5899324))

(assert (=> b!4894118 m!5898636))

(assert (=> b!4894118 m!5898538))

(assert (=> b!4894118 m!5898636))

(assert (=> b!4894118 m!5898538))

(assert (=> b!4894118 m!5899284))

(assert (=> b!4894118 m!5899288))

(assert (=> b!4894121 m!5899306))

(assert (=> b!4894116 m!5899306))

(declare-fun m!5899326 () Bool)

(assert (=> b!4894116 m!5899326))

(assert (=> b!4894113 m!5899306))

(declare-fun m!5899328 () Bool)

(assert (=> b!4894113 m!5899328))

(assert (=> b!4894113 m!5898538))

(assert (=> bm!339402 d!1572085))

(assert (=> b!4893535 d!1571945))

(declare-fun d!1572087 () Bool)

(declare-fun c!831825 () Bool)

(assert (=> d!1572087 (= c!831825 (is-Node!14743 (left!40981 (c!831694 input!1236))))))

(declare-fun e!3059523 () Bool)

(assert (=> d!1572087 (= (inv!72691 (left!40981 (c!831694 input!1236))) e!3059523)))

(declare-fun b!4894122 () Bool)

(assert (=> b!4894122 (= e!3059523 (inv!72695 (left!40981 (c!831694 input!1236))))))

(declare-fun b!4894123 () Bool)

(declare-fun e!3059524 () Bool)

(assert (=> b!4894123 (= e!3059523 e!3059524)))

(declare-fun res!2090287 () Bool)

(assert (=> b!4894123 (= res!2090287 (not (is-Leaf!24548 (left!40981 (c!831694 input!1236)))))))

(assert (=> b!4894123 (=> res!2090287 e!3059524)))

(declare-fun b!4894124 () Bool)

(assert (=> b!4894124 (= e!3059524 (inv!72696 (left!40981 (c!831694 input!1236))))))

(assert (= (and d!1572087 c!831825) b!4894122))

(assert (= (and d!1572087 (not c!831825)) b!4894123))

(assert (= (and b!4894123 (not res!2090287)) b!4894124))

(declare-fun m!5899330 () Bool)

(assert (=> b!4894122 m!5899330))

(declare-fun m!5899332 () Bool)

(assert (=> b!4894124 m!5899332))

(assert (=> b!4893609 d!1572087))

(declare-fun d!1572089 () Bool)

(declare-fun c!831826 () Bool)

(assert (=> d!1572089 (= c!831826 (is-Node!14743 (right!41311 (c!831694 input!1236))))))

(declare-fun e!3059525 () Bool)

(assert (=> d!1572089 (= (inv!72691 (right!41311 (c!831694 input!1236))) e!3059525)))

(declare-fun b!4894125 () Bool)

(assert (=> b!4894125 (= e!3059525 (inv!72695 (right!41311 (c!831694 input!1236))))))

(declare-fun b!4894126 () Bool)

(declare-fun e!3059526 () Bool)

(assert (=> b!4894126 (= e!3059525 e!3059526)))

(declare-fun res!2090288 () Bool)

(assert (=> b!4894126 (= res!2090288 (not (is-Leaf!24548 (right!41311 (c!831694 input!1236)))))))

(assert (=> b!4894126 (=> res!2090288 e!3059526)))

(declare-fun b!4894127 () Bool)

(assert (=> b!4894127 (= e!3059526 (inv!72696 (right!41311 (c!831694 input!1236))))))

(assert (= (and d!1572089 c!831826) b!4894125))

(assert (= (and d!1572089 (not c!831826)) b!4894126))

(assert (= (and b!4894126 (not res!2090288)) b!4894127))

(declare-fun m!5899334 () Bool)

(assert (=> b!4894125 m!5899334))

(declare-fun m!5899336 () Bool)

(assert (=> b!4894127 m!5899336))

(assert (=> b!4893609 d!1572089))

(declare-fun b!4894128 () Bool)

(declare-fun res!2090293 () Bool)

(declare-fun e!3059533 () Bool)

(assert (=> b!4894128 (=> (not res!2090293) (not e!3059533))))

(assert (=> b!4894128 (= res!2090293 (isEmpty!30272 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))))))

(declare-fun b!4894129 () Bool)

(declare-fun res!2090289 () Bool)

(assert (=> b!4894129 (=> (not res!2090289) (not e!3059533))))

(declare-fun call!339476 () Bool)

(assert (=> b!4894129 (= res!2090289 (not call!339476))))

(declare-fun b!4894130 () Bool)

(declare-fun e!3059530 () Bool)

(declare-fun lt!2006356 () Bool)

(assert (=> b!4894130 (= e!3059530 (= lt!2006356 call!339476))))

(declare-fun b!4894131 () Bool)

(declare-fun e!3059532 () Bool)

(declare-fun e!3059528 () Bool)

(assert (=> b!4894131 (= e!3059532 e!3059528)))

(declare-fun res!2090292 () Bool)

(assert (=> b!4894131 (=> res!2090292 e!3059528)))

(assert (=> b!4894131 (= res!2090292 call!339476)))

(declare-fun b!4894132 () Bool)

(declare-fun e!3059527 () Bool)

(assert (=> b!4894132 (= e!3059527 (nullable!4556 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun b!4894133 () Bool)

(declare-fun e!3059529 () Bool)

(assert (=> b!4894133 (= e!3059529 e!3059532)))

(declare-fun res!2090291 () Bool)

(assert (=> b!4894133 (=> (not res!2090291) (not e!3059532))))

(assert (=> b!4894133 (= res!2090291 (not lt!2006356))))

(declare-fun b!4894134 () Bool)

(declare-fun e!3059531 () Bool)

(assert (=> b!4894134 (= e!3059531 (not lt!2006356))))

(declare-fun bm!339471 () Bool)

(assert (=> bm!339471 (= call!339476 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))

(declare-fun d!1572091 () Bool)

(assert (=> d!1572091 e!3059530))

(declare-fun c!831828 () Bool)

(assert (=> d!1572091 (= c!831828 (is-EmptyExpr!13250 (regex!8175 (h!62858 rulesArg!165))))))

(assert (=> d!1572091 (= lt!2006356 e!3059527)))

(declare-fun c!831827 () Bool)

(assert (=> d!1572091 (= c!831827 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))

(assert (=> d!1572091 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165)))))

(assert (=> d!1572091 (= (matchR!6531 (regex!8175 (h!62858 rulesArg!165)) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))) lt!2006356)))

(declare-fun b!4894135 () Bool)

(assert (=> b!4894135 (= e!3059530 e!3059531)))

(declare-fun c!831829 () Bool)

(assert (=> b!4894135 (= c!831829 (is-EmptyLang!13250 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun b!4894136 () Bool)

(declare-fun res!2090295 () Bool)

(assert (=> b!4894136 (=> res!2090295 e!3059528)))

(assert (=> b!4894136 (= res!2090295 (not (isEmpty!30272 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))))

(declare-fun b!4894137 () Bool)

(assert (=> b!4894137 (= e!3059528 (not (= (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))) (c!831695 (regex!8175 (h!62858 rulesArg!165))))))))

(declare-fun b!4894138 () Bool)

(assert (=> b!4894138 (= e!3059527 (matchR!6531 (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))) (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))))))

(declare-fun b!4894139 () Bool)

(assert (=> b!4894139 (= e!3059533 (= (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))) (c!831695 (regex!8175 (h!62858 rulesArg!165)))))))

(declare-fun b!4894140 () Bool)

(declare-fun res!2090290 () Bool)

(assert (=> b!4894140 (=> res!2090290 e!3059529)))

(assert (=> b!4894140 (= res!2090290 e!3059533)))

(declare-fun res!2090296 () Bool)

(assert (=> b!4894140 (=> (not res!2090296) (not e!3059533))))

(assert (=> b!4894140 (= res!2090296 lt!2006356)))

(declare-fun b!4894141 () Bool)

(declare-fun res!2090294 () Bool)

(assert (=> b!4894141 (=> res!2090294 e!3059529)))

(assert (=> b!4894141 (= res!2090294 (not (is-ElementMatch!13250 (regex!8175 (h!62858 rulesArg!165)))))))

(assert (=> b!4894141 (= e!3059531 e!3059529)))

(assert (= (and d!1572091 c!831827) b!4894132))

(assert (= (and d!1572091 (not c!831827)) b!4894138))

(assert (= (and d!1572091 c!831828) b!4894130))

(assert (= (and d!1572091 (not c!831828)) b!4894135))

(assert (= (and b!4894135 c!831829) b!4894134))

(assert (= (and b!4894135 (not c!831829)) b!4894141))

(assert (= (and b!4894141 (not res!2090294)) b!4894140))

(assert (= (and b!4894140 res!2090296) b!4894129))

(assert (= (and b!4894129 res!2090289) b!4894128))

(assert (= (and b!4894128 res!2090293) b!4894139))

(assert (= (and b!4894140 (not res!2090290)) b!4894133))

(assert (= (and b!4894133 res!2090291) b!4894131))

(assert (= (and b!4894131 (not res!2090292)) b!4894136))

(assert (= (and b!4894136 (not res!2090295)) b!4894137))

(assert (= (or b!4894130 b!4894129 b!4894131) bm!339471))

(declare-fun m!5899338 () Bool)

(assert (=> b!4894138 m!5899338))

(assert (=> b!4894138 m!5899338))

(declare-fun m!5899340 () Bool)

(assert (=> b!4894138 m!5899340))

(declare-fun m!5899342 () Bool)

(assert (=> b!4894138 m!5899342))

(assert (=> b!4894138 m!5899340))

(assert (=> b!4894138 m!5899342))

(declare-fun m!5899344 () Bool)

(assert (=> b!4894138 m!5899344))

(assert (=> b!4894136 m!5899342))

(assert (=> b!4894136 m!5899342))

(declare-fun m!5899346 () Bool)

(assert (=> b!4894136 m!5899346))

(assert (=> bm!339471 m!5898646))

(assert (=> b!4894128 m!5899342))

(assert (=> b!4894128 m!5899342))

(assert (=> b!4894128 m!5899346))

(assert (=> d!1572091 m!5898646))

(assert (=> d!1572091 m!5898834))

(assert (=> b!4894137 m!5899338))

(assert (=> b!4894132 m!5898840))

(assert (=> b!4894139 m!5899338))

(assert (=> b!4893576 d!1572091))

(assert (=> b!4893576 d!1571993))

(assert (=> b!4893576 d!1572025))

(assert (=> b!4893576 d!1571991))

(declare-fun b!4894160 () Bool)

(declare-fun res!2090313 () Bool)

(declare-fun e!3059542 () Bool)

(assert (=> b!4894160 (=> (not res!2090313) (not e!3059542))))

(assert (=> b!4894160 (= res!2090313 (isBalanced!4013 (left!40981 (c!831694 input!1236))))))

(declare-fun b!4894161 () Bool)

(declare-fun res!2090311 () Bool)

(assert (=> b!4894161 (=> (not res!2090311) (not e!3059542))))

(assert (=> b!4894161 (= res!2090311 (<= (- (height!1956 (left!40981 (c!831694 input!1236))) (height!1956 (right!41311 (c!831694 input!1236)))) 1))))

(declare-fun b!4894162 () Bool)

(declare-fun e!3059543 () Bool)

(assert (=> b!4894162 (= e!3059543 e!3059542)))

(declare-fun res!2090314 () Bool)

(assert (=> b!4894162 (=> (not res!2090314) (not e!3059542))))

(assert (=> b!4894162 (= res!2090314 (<= (- 1) (- (height!1956 (left!40981 (c!831694 input!1236))) (height!1956 (right!41311 (c!831694 input!1236))))))))

(declare-fun b!4894163 () Bool)

(assert (=> b!4894163 (= e!3059542 (not (isEmpty!30275 (right!41311 (c!831694 input!1236)))))))

(declare-fun d!1572093 () Bool)

(declare-fun res!2090312 () Bool)

(assert (=> d!1572093 (=> res!2090312 e!3059543)))

(assert (=> d!1572093 (= res!2090312 (not (is-Node!14743 (c!831694 input!1236))))))

(assert (=> d!1572093 (= (isBalanced!4013 (c!831694 input!1236)) e!3059543)))

(declare-fun b!4894164 () Bool)

(declare-fun res!2090315 () Bool)

(assert (=> b!4894164 (=> (not res!2090315) (not e!3059542))))

(assert (=> b!4894164 (= res!2090315 (isBalanced!4013 (right!41311 (c!831694 input!1236))))))

(declare-fun b!4894165 () Bool)

(declare-fun res!2090316 () Bool)

(assert (=> b!4894165 (=> (not res!2090316) (not e!3059542))))

(assert (=> b!4894165 (= res!2090316 (not (isEmpty!30275 (left!40981 (c!831694 input!1236)))))))

(assert (= (and d!1572093 (not res!2090312)) b!4894162))

(assert (= (and b!4894162 res!2090314) b!4894161))

(assert (= (and b!4894161 res!2090311) b!4894160))

(assert (= (and b!4894160 res!2090313) b!4894164))

(assert (= (and b!4894164 res!2090315) b!4894165))

(assert (= (and b!4894165 res!2090316) b!4894163))

(declare-fun m!5899348 () Bool)

(assert (=> b!4894160 m!5899348))

(assert (=> b!4894162 m!5898980))

(assert (=> b!4894162 m!5898982))

(declare-fun m!5899350 () Bool)

(assert (=> b!4894165 m!5899350))

(declare-fun m!5899352 () Bool)

(assert (=> b!4894163 m!5899352))

(declare-fun m!5899354 () Bool)

(assert (=> b!4894164 m!5899354))

(assert (=> b!4894161 m!5898980))

(assert (=> b!4894161 m!5898982))

(assert (=> d!1571839 d!1572093))

(assert (=> b!4893574 d!1571965))

(assert (=> b!4893574 d!1571963))

(assert (=> b!4893574 d!1571925))

(assert (=> b!4893574 d!1571887))

(declare-fun d!1572095 () Bool)

(assert (=> d!1572095 (= (isEmpty!30267 lt!2005837) (not (is-Some!14027 lt!2005837)))))

(assert (=> d!1571877 d!1572095))

(declare-fun d!1572097 () Bool)

(assert (=> d!1572097 (= (inv!72686 (tag!9039 (h!62858 (t!365674 rulesArg!165)))) (= (mod (str.len (value!262138 (tag!9039 (h!62858 (t!365674 rulesArg!165))))) 2) 0))))

(assert (=> b!4893635 d!1572097))

(declare-fun d!1572099 () Bool)

(declare-fun res!2090317 () Bool)

(declare-fun e!3059544 () Bool)

(assert (=> d!1572099 (=> (not res!2090317) (not e!3059544))))

(assert (=> d!1572099 (= res!2090317 (semiInverseModEq!3587 (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))))))

(assert (=> d!1572099 (= (inv!72689 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) e!3059544)))

(declare-fun b!4894166 () Bool)

(assert (=> b!4894166 (= e!3059544 (equivClasses!3466 (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))))))

(assert (= (and d!1572099 res!2090317) b!4894166))

(declare-fun m!5899356 () Bool)

(assert (=> d!1572099 m!5899356))

(declare-fun m!5899358 () Bool)

(assert (=> b!4894166 m!5899358))

(assert (=> b!4893635 d!1572099))

(declare-fun b!4894170 () Bool)

(declare-fun e!3059545 () Bool)

(assert (=> b!4894170 (= e!3059545 (>= (size!37145 (tail!9602 lt!2005844)) (size!37145 (tail!9602 lt!2005844))))))

(declare-fun d!1572101 () Bool)

(assert (=> d!1572101 e!3059545))

(declare-fun res!2090320 () Bool)

(assert (=> d!1572101 (=> res!2090320 e!3059545)))

(declare-fun lt!2006369 () Bool)

(assert (=> d!1572101 (= res!2090320 (not lt!2006369))))

(declare-fun e!3059547 () Bool)

(assert (=> d!1572101 (= lt!2006369 e!3059547)))

(declare-fun res!2090318 () Bool)

(assert (=> d!1572101 (=> res!2090318 e!3059547)))

(assert (=> d!1572101 (= res!2090318 (is-Nil!56408 (tail!9602 lt!2005844)))))

(assert (=> d!1572101 (= (isPrefix!4895 (tail!9602 lt!2005844) (tail!9602 lt!2005844)) lt!2006369)))

(declare-fun b!4894168 () Bool)

(declare-fun res!2090321 () Bool)

(declare-fun e!3059546 () Bool)

(assert (=> b!4894168 (=> (not res!2090321) (not e!3059546))))

(assert (=> b!4894168 (= res!2090321 (= (head!10456 (tail!9602 lt!2005844)) (head!10456 (tail!9602 lt!2005844))))))

(declare-fun b!4894167 () Bool)

(assert (=> b!4894167 (= e!3059547 e!3059546)))

(declare-fun res!2090319 () Bool)

(assert (=> b!4894167 (=> (not res!2090319) (not e!3059546))))

(assert (=> b!4894167 (= res!2090319 (not (is-Nil!56408 (tail!9602 lt!2005844))))))

(declare-fun b!4894169 () Bool)

(assert (=> b!4894169 (= e!3059546 (isPrefix!4895 (tail!9602 (tail!9602 lt!2005844)) (tail!9602 (tail!9602 lt!2005844))))))

(assert (= (and d!1572101 (not res!2090318)) b!4894167))

(assert (= (and b!4894167 res!2090319) b!4894168))

(assert (= (and b!4894168 res!2090321) b!4894169))

(assert (= (and d!1572101 (not res!2090320)) b!4894170))

(assert (=> b!4894170 m!5898542))

(declare-fun m!5899360 () Bool)

(assert (=> b!4894170 m!5899360))

(assert (=> b!4894170 m!5898542))

(assert (=> b!4894170 m!5899360))

(assert (=> b!4894168 m!5898542))

(declare-fun m!5899362 () Bool)

(assert (=> b!4894168 m!5899362))

(assert (=> b!4894168 m!5898542))

(assert (=> b!4894168 m!5899362))

(assert (=> b!4894169 m!5898542))

(declare-fun m!5899364 () Bool)

(assert (=> b!4894169 m!5899364))

(assert (=> b!4894169 m!5898542))

(assert (=> b!4894169 m!5899364))

(assert (=> b!4894169 m!5899364))

(assert (=> b!4894169 m!5899364))

(declare-fun m!5899366 () Bool)

(assert (=> b!4894169 m!5899366))

(assert (=> b!4893465 d!1572101))

(declare-fun d!1572103 () Bool)

(assert (=> d!1572103 (= (tail!9602 lt!2005844) (t!365672 lt!2005844))))

(assert (=> b!4893465 d!1572103))

(assert (=> b!4893357 d!1571841))

(declare-fun b!4894177 () Bool)

(declare-fun e!3059551 () List!56532)

(assert (=> b!4894177 (= e!3059551 (++!12244 (list!17729 (left!40981 (c!831694 input!1236))) (list!17729 (right!41311 (c!831694 input!1236)))))))

(declare-fun b!4894174 () Bool)

(declare-fun e!3059550 () List!56532)

(assert (=> b!4894174 (= e!3059550 Nil!56408)))

(declare-fun d!1572105 () Bool)

(declare-fun c!831833 () Bool)

(assert (=> d!1572105 (= c!831833 (is-Empty!14743 (c!831694 input!1236)))))

(assert (=> d!1572105 (= (list!17729 (c!831694 input!1236)) e!3059550)))

(declare-fun b!4894175 () Bool)

(assert (=> b!4894175 (= e!3059550 e!3059551)))

(declare-fun c!831834 () Bool)

(assert (=> b!4894175 (= c!831834 (is-Leaf!24548 (c!831694 input!1236)))))

(declare-fun b!4894176 () Bool)

(assert (=> b!4894176 (= e!3059551 (list!17731 (xs!18059 (c!831694 input!1236))))))

(assert (= (and d!1572105 c!831833) b!4894174))

(assert (= (and d!1572105 (not c!831833)) b!4894175))

(assert (= (and b!4894175 c!831834) b!4894176))

(assert (= (and b!4894175 (not c!831834)) b!4894177))

(declare-fun m!5899372 () Bool)

(assert (=> b!4894177 m!5899372))

(declare-fun m!5899374 () Bool)

(assert (=> b!4894177 m!5899374))

(assert (=> b!4894177 m!5899372))

(assert (=> b!4894177 m!5899374))

(declare-fun m!5899378 () Bool)

(assert (=> b!4894177 m!5899378))

(assert (=> b!4894176 m!5898778))

(assert (=> d!1571887 d!1572105))

(declare-fun d!1572107 () Bool)

(declare-fun e!3059552 () Bool)

(assert (=> d!1572107 e!3059552))

(declare-fun res!2090325 () Bool)

(assert (=> d!1572107 (=> (not res!2090325) (not e!3059552))))

(declare-fun lt!2006381 () Option!14027)

(assert (=> d!1572107 (= res!2090325 (= (isDefined!11041 lt!2006381) (isDefined!11040 (maxPrefixZipper!674 thiss!14805 (t!365674 (t!365674 rulesArg!165)) (list!17727 input!1236)))))))

(declare-fun e!3059557 () Option!14027)

(assert (=> d!1572107 (= lt!2006381 e!3059557)))

(declare-fun c!831835 () Bool)

(assert (=> d!1572107 (= c!831835 (and (is-Cons!56410 (t!365674 (t!365674 rulesArg!165))) (is-Nil!56410 (t!365674 (t!365674 (t!365674 rulesArg!165))))))))

(declare-fun lt!2006380 () Unit!146435)

(declare-fun lt!2006378 () Unit!146435)

(assert (=> d!1572107 (= lt!2006380 lt!2006378)))

(declare-fun lt!2006376 () List!56532)

(declare-fun lt!2006382 () List!56532)

(assert (=> d!1572107 (isPrefix!4895 lt!2006376 lt!2006382)))

(assert (=> d!1572107 (= lt!2006378 (lemmaIsPrefixRefl!3292 lt!2006376 lt!2006382))))

(assert (=> d!1572107 (= lt!2006382 (list!17727 input!1236))))

(assert (=> d!1572107 (= lt!2006376 (list!17727 input!1236))))

(assert (=> d!1572107 (rulesValidInductive!3154 thiss!14805 (t!365674 (t!365674 rulesArg!165)))))

(assert (=> d!1572107 (= (maxPrefixZipperSequence!1316 thiss!14805 (t!365674 (t!365674 rulesArg!165)) input!1236) lt!2006381)))

(declare-fun b!4894178 () Bool)

(declare-fun e!3059556 () Bool)

(declare-fun e!3059554 () Bool)

(assert (=> b!4894178 (= e!3059556 e!3059554)))

(declare-fun res!2090326 () Bool)

(assert (=> b!4894178 (=> (not res!2090326) (not e!3059554))))

(assert (=> b!4894178 (= res!2090326 (= (_1!33531 (get!19482 lt!2006381)) (_1!33532 (get!19481 (maxPrefix!4604 thiss!14805 (t!365674 (t!365674 rulesArg!165)) (list!17727 input!1236))))))))

(declare-fun b!4894179 () Bool)

(assert (=> b!4894179 (= e!3059552 e!3059556)))

(declare-fun res!2090323 () Bool)

(assert (=> b!4894179 (=> res!2090323 e!3059556)))

(assert (=> b!4894179 (= res!2090323 (not (isDefined!11041 lt!2006381)))))

(declare-fun b!4894180 () Bool)

(declare-fun res!2090328 () Bool)

(assert (=> b!4894180 (=> (not res!2090328) (not e!3059552))))

(declare-fun e!3059553 () Bool)

(assert (=> b!4894180 (= res!2090328 e!3059553)))

(declare-fun res!2090324 () Bool)

(assert (=> b!4894180 (=> res!2090324 e!3059553)))

(assert (=> b!4894180 (= res!2090324 (not (isDefined!11041 lt!2006381)))))

(declare-fun b!4894181 () Bool)

(assert (=> b!4894181 (= e!3059554 (= (list!17727 (_2!33531 (get!19482 lt!2006381))) (_2!33532 (get!19481 (maxPrefix!4604 thiss!14805 (t!365674 (t!365674 rulesArg!165)) (list!17727 input!1236))))))))

(declare-fun b!4894182 () Bool)

(declare-fun call!339477 () Option!14027)

(assert (=> b!4894182 (= e!3059557 call!339477)))

(declare-fun b!4894183 () Bool)

(declare-fun lt!2006379 () Option!14027)

(declare-fun lt!2006377 () Option!14027)

(assert (=> b!4894183 (= e!3059557 (ite (and (is-None!14026 lt!2006379) (is-None!14026 lt!2006377)) None!14026 (ite (is-None!14026 lt!2006377) lt!2006379 (ite (is-None!14026 lt!2006379) lt!2006377 (ite (>= (size!37143 (_1!33531 (v!49980 lt!2006379))) (size!37143 (_1!33531 (v!49980 lt!2006377)))) lt!2006379 lt!2006377)))))))

(assert (=> b!4894183 (= lt!2006379 call!339477)))

(assert (=> b!4894183 (= lt!2006377 (maxPrefixZipperSequence!1316 thiss!14805 (t!365674 (t!365674 (t!365674 rulesArg!165))) input!1236))))

(declare-fun b!4894184 () Bool)

(declare-fun e!3059555 () Bool)

(assert (=> b!4894184 (= e!3059555 (= (list!17727 (_2!33531 (get!19482 lt!2006381))) (_2!33532 (get!19481 (maxPrefixZipper!674 thiss!14805 (t!365674 (t!365674 rulesArg!165)) (list!17727 input!1236))))))))

(declare-fun bm!339472 () Bool)

(assert (=> bm!339472 (= call!339477 (maxPrefixOneRuleZipperSequence!685 thiss!14805 (h!62858 (t!365674 (t!365674 rulesArg!165))) input!1236))))

(declare-fun b!4894185 () Bool)

(assert (=> b!4894185 (= e!3059553 e!3059555)))

(declare-fun res!2090327 () Bool)

(assert (=> b!4894185 (=> (not res!2090327) (not e!3059555))))

(assert (=> b!4894185 (= res!2090327 (= (_1!33531 (get!19482 lt!2006381)) (_1!33532 (get!19481 (maxPrefixZipper!674 thiss!14805 (t!365674 (t!365674 rulesArg!165)) (list!17727 input!1236))))))))

(assert (= (and d!1572107 c!831835) b!4894182))

(assert (= (and d!1572107 (not c!831835)) b!4894183))

(assert (= (or b!4894182 b!4894183) bm!339472))

(assert (= (and d!1572107 res!2090325) b!4894180))

(assert (= (and b!4894180 (not res!2090324)) b!4894185))

(assert (= (and b!4894185 res!2090327) b!4894184))

(assert (= (and b!4894180 res!2090328) b!4894179))

(assert (= (and b!4894179 (not res!2090323)) b!4894178))

(assert (= (and b!4894178 res!2090326) b!4894181))

(declare-fun m!5899394 () Bool)

(assert (=> b!4894185 m!5899394))

(assert (=> b!4894185 m!5898444))

(assert (=> b!4894185 m!5898444))

(assert (=> b!4894185 m!5898958))

(assert (=> b!4894185 m!5898958))

(declare-fun m!5899396 () Bool)

(assert (=> b!4894185 m!5899396))

(declare-fun m!5899398 () Bool)

(assert (=> b!4894179 m!5899398))

(assert (=> b!4894184 m!5898958))

(assert (=> b!4894184 m!5899396))

(assert (=> b!4894184 m!5899394))

(assert (=> b!4894184 m!5898444))

(assert (=> b!4894184 m!5898444))

(assert (=> b!4894184 m!5898958))

(declare-fun m!5899400 () Bool)

(assert (=> b!4894184 m!5899400))

(assert (=> b!4894180 m!5899398))

(assert (=> b!4894181 m!5899394))

(assert (=> b!4894181 m!5898444))

(assert (=> b!4894181 m!5898910))

(declare-fun m!5899402 () Bool)

(assert (=> b!4894181 m!5899402))

(assert (=> b!4894181 m!5898444))

(assert (=> b!4894181 m!5898910))

(assert (=> b!4894181 m!5899400))

(assert (=> b!4894178 m!5899394))

(assert (=> b!4894178 m!5898444))

(assert (=> b!4894178 m!5898444))

(assert (=> b!4894178 m!5898910))

(assert (=> b!4894178 m!5898910))

(assert (=> b!4894178 m!5899402))

(declare-fun m!5899404 () Bool)

(assert (=> bm!339472 m!5899404))

(assert (=> d!1572107 m!5898952))

(declare-fun m!5899406 () Bool)

(assert (=> d!1572107 m!5899406))

(declare-fun m!5899408 () Bool)

(assert (=> d!1572107 m!5899408))

(assert (=> d!1572107 m!5899398))

(assert (=> d!1572107 m!5898444))

(assert (=> d!1572107 m!5898444))

(assert (=> d!1572107 m!5898958))

(assert (=> d!1572107 m!5898958))

(declare-fun m!5899410 () Bool)

(assert (=> d!1572107 m!5899410))

(declare-fun m!5899412 () Bool)

(assert (=> b!4894183 m!5899412))

(assert (=> b!4893538 d!1572107))

(assert (=> b!4893495 d!1571939))

(declare-fun d!1572111 () Bool)

(assert (=> d!1572111 (= (apply!13541 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936))))) (dynLambda!22646 (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936))))))))

(declare-fun b_lambda!194433 () Bool)

(assert (=> (not b_lambda!194433) (not d!1572111)))

(declare-fun tb!258939 () Bool)

(declare-fun t!365698 () Bool)

(assert (=> (and b!4893356 (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))) t!365698) tb!258939))

(declare-fun result!322520 () Bool)

(assert (=> tb!258939 (= result!322520 (inv!21 (dynLambda!22646 (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936)))))))))

(declare-fun m!5899416 () Bool)

(assert (=> tb!258939 m!5899416))

(assert (=> d!1572111 t!365698))

(declare-fun b_and!344963 () Bool)

(assert (= b_and!344955 (and (=> t!365698 result!322520) b_and!344963)))

(declare-fun tb!258941 () Bool)

(declare-fun t!365700 () Bool)

(assert (=> (and b!4893636 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))) t!365700) tb!258941))

(declare-fun result!322522 () Bool)

(assert (= result!322522 result!322520))

(assert (=> d!1572111 t!365700))

(declare-fun b_and!344965 () Bool)

(assert (= b_and!344957 (and (=> t!365700 result!322522) b_and!344965)))

(assert (=> d!1572111 m!5898578))

(declare-fun m!5899422 () Bool)

(assert (=> d!1572111 m!5899422))

(assert (=> b!4893495 d!1572111))

(declare-fun d!1572115 () Bool)

(assert (=> d!1572115 (= (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936)))) (fromListB!2693 (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936)))))))

(declare-fun bs!1176116 () Bool)

(assert (= bs!1176116 d!1572115))

(declare-fun m!5899424 () Bool)

(assert (=> bs!1176116 m!5899424))

(assert (=> b!4893495 d!1572115))

(declare-fun bs!1176117 () Bool)

(declare-fun b!4894201 () Bool)

(assert (= bs!1176117 (and b!4894201 b!4893578)))

(declare-fun lambda!244047 () Int)

(assert (=> bs!1176117 (= (and (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (= lambda!244047 lambda!244035))))

(declare-fun bs!1176118 () Bool)

(assert (= bs!1176118 (and b!4894201 d!1572083)))

(assert (=> bs!1176118 (= (and (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (= lambda!244047 lambda!244046))))

(declare-fun b!4894203 () Bool)

(declare-fun e!3059573 () Bool)

(assert (=> b!4894203 (= e!3059573 true)))

(declare-fun b!4894202 () Bool)

(declare-fun e!3059572 () Bool)

(assert (=> b!4894202 (= e!3059572 e!3059573)))

(assert (=> b!4894201 e!3059572))

(assert (= b!4894202 b!4894203))

(assert (= b!4894201 b!4894202))

(assert (=> b!4894203 (< (dynLambda!22635 order!25479 (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) (dynLambda!22636 order!25481 lambda!244047))))

(assert (=> b!4894203 (< (dynLambda!22637 order!25483 (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) (dynLambda!22636 order!25481 lambda!244047))))

(declare-fun b!4894196 () Bool)

(declare-fun e!3059567 () Bool)

(declare-fun e!3059569 () Bool)

(assert (=> b!4894196 (= e!3059567 e!3059569)))

(declare-fun res!2090335 () Bool)

(assert (=> b!4894196 (=> res!2090335 e!3059569)))

(declare-fun lt!2006391 () Option!14027)

(assert (=> b!4894196 (= res!2090335 (not (isDefined!11041 lt!2006391)))))

(declare-fun d!1572117 () Bool)

(assert (=> d!1572117 e!3059567))

(declare-fun res!2090336 () Bool)

(assert (=> d!1572117 (=> (not res!2090336) (not e!3059567))))

(assert (=> d!1572117 (= res!2090336 (= (isDefined!11041 lt!2006391) (isDefined!11040 (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 rulesArg!165)) (list!17727 input!1236)))))))

(declare-fun e!3059571 () Option!14027)

(assert (=> d!1572117 (= lt!2006391 e!3059571)))

(declare-fun c!831838 () Bool)

(declare-fun lt!2006388 () tuple2!60464)

(assert (=> d!1572117 (= c!831838 (isEmpty!30271 (_1!33535 lt!2006388)))))

(assert (=> d!1572117 (= lt!2006388 (findLongestMatchWithZipperSequence!269 (regex!8175 (h!62858 (t!365674 rulesArg!165))) input!1236))))

(assert (=> d!1572117 (ruleValid!3673 thiss!14805 (h!62858 (t!365674 rulesArg!165)))))

(assert (=> d!1572117 (= (maxPrefixOneRuleZipperSequence!685 thiss!14805 (h!62858 (t!365674 rulesArg!165)) input!1236) lt!2006391)))

(declare-fun b!4894197 () Bool)

(declare-fun e!3059570 () Bool)

(assert (=> b!4894197 (= e!3059569 e!3059570)))

(declare-fun res!2090337 () Bool)

(assert (=> b!4894197 (=> (not res!2090337) (not e!3059570))))

(assert (=> b!4894197 (= res!2090337 (= (_1!33531 (get!19482 lt!2006391)) (_1!33532 (get!19481 (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 rulesArg!165)) (list!17727 input!1236))))))))

(declare-fun b!4894198 () Bool)

(assert (=> b!4894198 (= e!3059570 (= (list!17727 (_2!33531 (get!19482 lt!2006391))) (_2!33532 (get!19481 (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 rulesArg!165)) (list!17727 input!1236))))))))

(declare-fun b!4894199 () Bool)

(declare-fun e!3059568 () Bool)

(declare-fun lt!2006390 () List!56532)

(assert (=> b!4894199 (= e!3059568 (matchR!6531 (regex!8175 (h!62858 (t!365674 rulesArg!165))) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2006390 lt!2006390 (size!37145 lt!2006390)))))))

(declare-fun b!4894200 () Bool)

(assert (=> b!4894200 (= e!3059571 None!14026)))

(assert (=> b!4894201 (= e!3059571 (Some!14026 (tuple2!60457 (Token!14915 (apply!13541 (transformation!8175 (h!62858 (t!365674 rulesArg!165))) (_1!33535 lt!2006388)) (h!62858 (t!365674 rulesArg!165)) (size!37147 (_1!33535 lt!2006388)) (list!17727 (_1!33535 lt!2006388))) (_2!33535 lt!2006388))))))

(assert (=> b!4894201 (= lt!2006390 (list!17727 input!1236))))

(declare-fun lt!2006393 () Unit!146435)

(assert (=> b!4894201 (= lt!2006393 (longestMatchIsAcceptedByMatchOrIsEmpty!1717 (regex!8175 (h!62858 (t!365674 rulesArg!165))) lt!2006390))))

(declare-fun res!2090338 () Bool)

(assert (=> b!4894201 (= res!2090338 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2006390 lt!2006390 (size!37145 lt!2006390)))))))

(assert (=> b!4894201 (=> res!2090338 e!3059568)))

(assert (=> b!4894201 e!3059568))

(declare-fun lt!2006392 () Unit!146435)

(assert (=> b!4894201 (= lt!2006392 lt!2006393)))

(declare-fun lt!2006386 () Unit!146435)

(assert (=> b!4894201 (= lt!2006386 (lemmaInv!1237 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))))

(declare-fun lt!2006387 () Unit!146435)

(assert (=> b!4894201 (= lt!2006387 (ForallOf!1134 lambda!244047 (_1!33535 lt!2006388)))))

(declare-fun lt!2006395 () Unit!146435)

(assert (=> b!4894201 (= lt!2006395 (ForallOf!1134 lambda!244047 (seqFromList!5937 (list!17727 (_1!33535 lt!2006388)))))))

(declare-fun lt!2006389 () Option!14027)

(assert (=> b!4894201 (= lt!2006389 (Some!14026 (tuple2!60457 (Token!14915 (apply!13541 (transformation!8175 (h!62858 (t!365674 rulesArg!165))) (_1!33535 lt!2006388)) (h!62858 (t!365674 rulesArg!165)) (size!37147 (_1!33535 lt!2006388)) (list!17727 (_1!33535 lt!2006388))) (_2!33535 lt!2006388))))))

(declare-fun lt!2006394 () Unit!146435)

(assert (=> b!4894201 (= lt!2006394 (lemmaEqSameImage!1091 (transformation!8175 (h!62858 (t!365674 rulesArg!165))) (_1!33535 lt!2006388) (seqFromList!5937 (list!17727 (_1!33535 lt!2006388)))))))

(assert (= (and d!1572117 c!831838) b!4894200))

(assert (= (and d!1572117 (not c!831838)) b!4894201))

(assert (= (and b!4894201 (not res!2090338)) b!4894199))

(assert (= (and d!1572117 res!2090336) b!4894196))

(assert (= (and b!4894196 (not res!2090335)) b!4894197))

(assert (= (and b!4894197 res!2090337) b!4894198))

(declare-fun m!5899440 () Bool)

(assert (=> b!4894196 m!5899440))

(assert (=> b!4894201 m!5898636))

(declare-fun m!5899442 () Bool)

(assert (=> b!4894201 m!5899442))

(declare-fun m!5899444 () Bool)

(assert (=> b!4894201 m!5899444))

(declare-fun m!5899446 () Bool)

(assert (=> b!4894201 m!5899446))

(declare-fun m!5899448 () Bool)

(assert (=> b!4894201 m!5899448))

(declare-fun m!5899450 () Bool)

(assert (=> b!4894201 m!5899450))

(assert (=> b!4894201 m!5899444))

(assert (=> b!4894201 m!5898444))

(assert (=> b!4894201 m!5898636))

(assert (=> b!4894201 m!5899442))

(declare-fun m!5899452 () Bool)

(assert (=> b!4894201 m!5899452))

(assert (=> b!4894201 m!5899446))

(declare-fun m!5899454 () Bool)

(assert (=> b!4894201 m!5899454))

(declare-fun m!5899456 () Bool)

(assert (=> b!4894201 m!5899456))

(declare-fun m!5899458 () Bool)

(assert (=> b!4894201 m!5899458))

(assert (=> b!4894201 m!5899446))

(declare-fun m!5899460 () Bool)

(assert (=> b!4894201 m!5899460))

(declare-fun m!5899462 () Bool)

(assert (=> b!4894201 m!5899462))

(declare-fun m!5899464 () Bool)

(assert (=> b!4894201 m!5899464))

(declare-fun m!5899466 () Bool)

(assert (=> b!4894198 m!5899466))

(assert (=> b!4894198 m!5898444))

(assert (=> b!4894198 m!5898926))

(declare-fun m!5899468 () Bool)

(assert (=> b!4894198 m!5899468))

(declare-fun m!5899470 () Bool)

(assert (=> b!4894198 m!5899470))

(assert (=> b!4894198 m!5898444))

(assert (=> b!4894198 m!5898926))

(assert (=> b!4894197 m!5899470))

(assert (=> b!4894197 m!5898444))

(assert (=> b!4894197 m!5898444))

(assert (=> b!4894197 m!5898926))

(assert (=> b!4894197 m!5898926))

(assert (=> b!4894197 m!5899468))

(assert (=> b!4894199 m!5898636))

(assert (=> b!4894199 m!5899442))

(assert (=> b!4894199 m!5898636))

(assert (=> b!4894199 m!5899442))

(assert (=> b!4894199 m!5899452))

(declare-fun m!5899472 () Bool)

(assert (=> b!4894199 m!5899472))

(assert (=> d!1572117 m!5898926))

(declare-fun m!5899474 () Bool)

(assert (=> d!1572117 m!5899474))

(assert (=> d!1572117 m!5898444))

(assert (=> d!1572117 m!5899440))

(declare-fun m!5899476 () Bool)

(assert (=> d!1572117 m!5899476))

(assert (=> d!1572117 m!5898950))

(declare-fun m!5899478 () Bool)

(assert (=> d!1572117 m!5899478))

(assert (=> d!1572117 m!5898444))

(assert (=> d!1572117 m!5898926))

(assert (=> bm!339407 d!1572117))

(declare-fun d!1572125 () Bool)

(declare-fun lt!2006403 () Option!14028)

(assert (=> d!1572125 (= lt!2006403 (maxPrefix!4604 thiss!14805 (t!365674 rulesArg!165) lt!2005844))))

(declare-fun e!3059574 () Option!14028)

(assert (=> d!1572125 (= lt!2006403 e!3059574)))

(declare-fun c!831839 () Bool)

(assert (=> d!1572125 (= c!831839 (and (is-Cons!56410 (t!365674 rulesArg!165)) (is-Nil!56410 (t!365674 (t!365674 rulesArg!165)))))))

(declare-fun lt!2006401 () Unit!146435)

(declare-fun lt!2006402 () Unit!146435)

(assert (=> d!1572125 (= lt!2006401 lt!2006402)))

(assert (=> d!1572125 (isPrefix!4895 lt!2005844 lt!2005844)))

(assert (=> d!1572125 (= lt!2006402 (lemmaIsPrefixRefl!3292 lt!2005844 lt!2005844))))

(assert (=> d!1572125 (rulesValidInductive!3154 thiss!14805 (t!365674 rulesArg!165))))

(assert (=> d!1572125 (= (maxPrefixZipper!674 thiss!14805 (t!365674 rulesArg!165) lt!2005844) lt!2006403)))

(declare-fun bm!339473 () Bool)

(declare-fun call!339478 () Option!14028)

(assert (=> bm!339473 (= call!339478 (maxPrefixOneRuleZipper!259 thiss!14805 (h!62858 (t!365674 rulesArg!165)) lt!2005844))))

(declare-fun b!4894204 () Bool)

(assert (=> b!4894204 (= e!3059574 call!339478)))

(declare-fun b!4894205 () Bool)

(declare-fun lt!2006400 () Option!14028)

(declare-fun lt!2006399 () Option!14028)

(assert (=> b!4894205 (= e!3059574 (ite (and (is-None!14027 lt!2006400) (is-None!14027 lt!2006399)) None!14027 (ite (is-None!14027 lt!2006399) lt!2006400 (ite (is-None!14027 lt!2006400) lt!2006399 (ite (>= (size!37143 (_1!33532 (v!49981 lt!2006400))) (size!37143 (_1!33532 (v!49981 lt!2006399)))) lt!2006400 lt!2006399)))))))

(assert (=> b!4894205 (= lt!2006400 call!339478)))

(assert (=> b!4894205 (= lt!2006399 (maxPrefixZipper!674 thiss!14805 (t!365674 (t!365674 rulesArg!165)) lt!2005844))))

(assert (= (and d!1572125 c!831839) b!4894204))

(assert (= (and d!1572125 (not c!831839)) b!4894205))

(assert (= (or b!4894204 b!4894205) bm!339473))

(assert (=> d!1572125 m!5898562))

(assert (=> d!1572125 m!5898440))

(assert (=> d!1572125 m!5898442))

(assert (=> d!1572125 m!5898528))

(declare-fun m!5899480 () Bool)

(assert (=> bm!339473 m!5899480))

(declare-fun m!5899482 () Bool)

(assert (=> b!4894205 m!5899482))

(assert (=> b!4893454 d!1572125))

(declare-fun b!4894209 () Bool)

(declare-fun e!3059576 () List!56532)

(assert (=> b!4894209 (= e!3059576 (++!12244 (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005838)))) (list!17729 (right!41311 (c!831694 (_2!33531 lt!2005838))))))))

(declare-fun b!4894206 () Bool)

(declare-fun e!3059575 () List!56532)

(assert (=> b!4894206 (= e!3059575 Nil!56408)))

(declare-fun d!1572127 () Bool)

(declare-fun c!831840 () Bool)

(assert (=> d!1572127 (= c!831840 (is-Empty!14743 (c!831694 (_2!33531 lt!2005838))))))

(assert (=> d!1572127 (= (list!17729 (c!831694 (_2!33531 lt!2005838))) e!3059575)))

(declare-fun b!4894207 () Bool)

(assert (=> b!4894207 (= e!3059575 e!3059576)))

(declare-fun c!831841 () Bool)

(assert (=> b!4894207 (= c!831841 (is-Leaf!24548 (c!831694 (_2!33531 lt!2005838))))))

(declare-fun b!4894208 () Bool)

(assert (=> b!4894208 (= e!3059576 (list!17731 (xs!18059 (c!831694 (_2!33531 lt!2005838)))))))

(assert (= (and d!1572127 c!831840) b!4894206))

(assert (= (and d!1572127 (not c!831840)) b!4894207))

(assert (= (and b!4894207 c!831841) b!4894208))

(assert (= (and b!4894207 (not c!831841)) b!4894209))

(declare-fun m!5899484 () Bool)

(assert (=> b!4894209 m!5899484))

(declare-fun m!5899486 () Bool)

(assert (=> b!4894209 m!5899486))

(assert (=> b!4894209 m!5899484))

(assert (=> b!4894209 m!5899486))

(declare-fun m!5899488 () Bool)

(assert (=> b!4894209 m!5899488))

(declare-fun m!5899490 () Bool)

(assert (=> b!4894208 m!5899490))

(assert (=> d!1571837 d!1572127))

(declare-fun b!4894213 () Bool)

(declare-fun e!3059577 () Bool)

(declare-fun tp!1377319 () Bool)

(declare-fun tp!1377316 () Bool)

(assert (=> b!4894213 (= e!3059577 (and tp!1377319 tp!1377316))))

(declare-fun b!4894212 () Bool)

(declare-fun tp!1377318 () Bool)

(assert (=> b!4894212 (= e!3059577 tp!1377318)))

(declare-fun b!4894211 () Bool)

(declare-fun tp!1377315 () Bool)

(declare-fun tp!1377317 () Bool)

(assert (=> b!4894211 (= e!3059577 (and tp!1377315 tp!1377317))))

(declare-fun b!4894210 () Bool)

(assert (=> b!4894210 (= e!3059577 tp_is_empty!35781)))

(assert (=> b!4893623 (= tp!1377259 e!3059577)))

(assert (= (and b!4893623 (is-ElementMatch!13250 (regOne!27012 (regex!8175 (h!62858 rulesArg!165))))) b!4894210))

(assert (= (and b!4893623 (is-Concat!21736 (regOne!27012 (regex!8175 (h!62858 rulesArg!165))))) b!4894211))

(assert (= (and b!4893623 (is-Star!13250 (regOne!27012 (regex!8175 (h!62858 rulesArg!165))))) b!4894212))

(assert (= (and b!4893623 (is-Union!13250 (regOne!27012 (regex!8175 (h!62858 rulesArg!165))))) b!4894213))

(declare-fun b!4894217 () Bool)

(declare-fun e!3059578 () Bool)

(declare-fun tp!1377324 () Bool)

(declare-fun tp!1377321 () Bool)

(assert (=> b!4894217 (= e!3059578 (and tp!1377324 tp!1377321))))

(declare-fun b!4894216 () Bool)

(declare-fun tp!1377323 () Bool)

(assert (=> b!4894216 (= e!3059578 tp!1377323)))

(declare-fun b!4894215 () Bool)

(declare-fun tp!1377320 () Bool)

(declare-fun tp!1377322 () Bool)

(assert (=> b!4894215 (= e!3059578 (and tp!1377320 tp!1377322))))

(declare-fun b!4894214 () Bool)

(assert (=> b!4894214 (= e!3059578 tp_is_empty!35781)))

(assert (=> b!4893623 (= tp!1377261 e!3059578)))

(assert (= (and b!4893623 (is-ElementMatch!13250 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165))))) b!4894214))

(assert (= (and b!4893623 (is-Concat!21736 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165))))) b!4894215))

(assert (= (and b!4893623 (is-Star!13250 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165))))) b!4894216))

(assert (= (and b!4893623 (is-Union!13250 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165))))) b!4894217))

(declare-fun b!4894220 () Bool)

(declare-fun b_free!131583 () Bool)

(declare-fun b_next!132373 () Bool)

(assert (=> b!4894220 (= b_free!131583 (not b_next!132373))))

(declare-fun t!365702 () Bool)

(declare-fun tb!258943 () Bool)

(assert (=> (and b!4894220 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365702) tb!258943))

(declare-fun result!322524 () Bool)

(assert (= result!322524 result!322504))

(assert (=> d!1572003 t!365702))

(assert (=> d!1572013 t!365702))

(declare-fun t!365704 () Bool)

(declare-fun tb!258945 () Bool)

(assert (=> (and b!4894220 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365704) tb!258945))

(declare-fun result!322526 () Bool)

(assert (= result!322526 result!322510))

(assert (=> d!1572013 t!365704))

(declare-fun t!365706 () Bool)

(declare-fun tb!258947 () Bool)

(assert (=> (and b!4894220 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))) t!365706) tb!258947))

(declare-fun result!322528 () Bool)

(assert (= result!322528 result!322520))

(assert (=> d!1572111 t!365706))

(declare-fun tp!1377328 () Bool)

(declare-fun b_and!344967 () Bool)

(assert (=> b!4894220 (= tp!1377328 (and (=> t!365702 result!322524) (=> t!365704 result!322526) (=> t!365706 result!322528) b_and!344967))))

(declare-fun b_free!131585 () Bool)

(declare-fun b_next!132375 () Bool)

(assert (=> b!4894220 (= b_free!131585 (not b_next!132375))))

(declare-fun t!365708 () Bool)

(declare-fun tb!258949 () Bool)

(assert (=> (and b!4894220 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))) t!365708) tb!258949))

(declare-fun result!322530 () Bool)

(assert (= result!322530 result!322498))

(assert (=> d!1571937 t!365708))

(declare-fun b_and!344969 () Bool)

(declare-fun tp!1377326 () Bool)

(assert (=> b!4894220 (= tp!1377326 (and (=> t!365708 result!322530) b_and!344969))))

(declare-fun e!3059582 () Bool)

(assert (=> b!4894220 (= e!3059582 (and tp!1377328 tp!1377326))))

(declare-fun b!4894219 () Bool)

(declare-fun tp!1377327 () Bool)

(declare-fun e!3059579 () Bool)

(assert (=> b!4894219 (= e!3059579 (and tp!1377327 (inv!72686 (tag!9039 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (inv!72689 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) e!3059582))))

(declare-fun b!4894218 () Bool)

(declare-fun e!3059581 () Bool)

(declare-fun tp!1377325 () Bool)

(assert (=> b!4894218 (= e!3059581 (and e!3059579 tp!1377325))))

(assert (=> b!4893634 (= tp!1377272 e!3059581)))

(assert (= b!4894219 b!4894220))

(assert (= b!4894218 b!4894219))

(assert (= (and b!4893634 (is-Cons!56410 (t!365674 (t!365674 rulesArg!165)))) b!4894218))

(declare-fun m!5899492 () Bool)

(assert (=> b!4894219 m!5899492))

(declare-fun m!5899494 () Bool)

(assert (=> b!4894219 m!5899494))

(declare-fun b!4894225 () Bool)

(declare-fun e!3059585 () Bool)

(declare-fun tp!1377331 () Bool)

(assert (=> b!4894225 (= e!3059585 (and tp_is_empty!35781 tp!1377331))))

(assert (=> b!4893611 (= tp!1377246 e!3059585)))

(assert (= (and b!4893611 (is-Cons!56408 (innerList!14831 (xs!18059 (c!831694 input!1236))))) b!4894225))

(declare-fun b!4894229 () Bool)

(declare-fun e!3059586 () Bool)

(declare-fun tp!1377336 () Bool)

(declare-fun tp!1377333 () Bool)

(assert (=> b!4894229 (= e!3059586 (and tp!1377336 tp!1377333))))

(declare-fun b!4894228 () Bool)

(declare-fun tp!1377335 () Bool)

(assert (=> b!4894228 (= e!3059586 tp!1377335)))

(declare-fun b!4894227 () Bool)

(declare-fun tp!1377332 () Bool)

(declare-fun tp!1377334 () Bool)

(assert (=> b!4894227 (= e!3059586 (and tp!1377332 tp!1377334))))

(declare-fun b!4894226 () Bool)

(assert (=> b!4894226 (= e!3059586 tp_is_empty!35781)))

(assert (=> b!4893625 (= tp!1377263 e!3059586)))

(assert (= (and b!4893625 (is-ElementMatch!13250 (regOne!27013 (regex!8175 (h!62858 rulesArg!165))))) b!4894226))

(assert (= (and b!4893625 (is-Concat!21736 (regOne!27013 (regex!8175 (h!62858 rulesArg!165))))) b!4894227))

(assert (= (and b!4893625 (is-Star!13250 (regOne!27013 (regex!8175 (h!62858 rulesArg!165))))) b!4894228))

(assert (= (and b!4893625 (is-Union!13250 (regOne!27013 (regex!8175 (h!62858 rulesArg!165))))) b!4894229))

(declare-fun b!4894233 () Bool)

(declare-fun e!3059587 () Bool)

(declare-fun tp!1377341 () Bool)

(declare-fun tp!1377338 () Bool)

(assert (=> b!4894233 (= e!3059587 (and tp!1377341 tp!1377338))))

(declare-fun b!4894232 () Bool)

(declare-fun tp!1377340 () Bool)

(assert (=> b!4894232 (= e!3059587 tp!1377340)))

(declare-fun b!4894231 () Bool)

(declare-fun tp!1377337 () Bool)

(declare-fun tp!1377339 () Bool)

(assert (=> b!4894231 (= e!3059587 (and tp!1377337 tp!1377339))))

(declare-fun b!4894230 () Bool)

(assert (=> b!4894230 (= e!3059587 tp_is_empty!35781)))

(assert (=> b!4893625 (= tp!1377260 e!3059587)))

(assert (= (and b!4893625 (is-ElementMatch!13250 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165))))) b!4894230))

(assert (= (and b!4893625 (is-Concat!21736 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165))))) b!4894231))

(assert (= (and b!4893625 (is-Star!13250 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165))))) b!4894232))

(assert (= (and b!4893625 (is-Union!13250 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165))))) b!4894233))

(declare-fun tp!1377344 () Bool)

(declare-fun b!4894234 () Bool)

(declare-fun tp!1377343 () Bool)

(declare-fun e!3059588 () Bool)

(assert (=> b!4894234 (= e!3059588 (and (inv!72691 (left!40981 (left!40981 (c!831694 input!1236)))) tp!1377343 (inv!72691 (right!41311 (left!40981 (c!831694 input!1236)))) tp!1377344))))

(declare-fun b!4894236 () Bool)

(declare-fun e!3059589 () Bool)

(declare-fun tp!1377342 () Bool)

(assert (=> b!4894236 (= e!3059589 tp!1377342)))

(declare-fun b!4894235 () Bool)

(assert (=> b!4894235 (= e!3059588 (and (inv!72697 (xs!18059 (left!40981 (c!831694 input!1236)))) e!3059589))))

(assert (=> b!4893609 (= tp!1377247 (and (inv!72691 (left!40981 (c!831694 input!1236))) e!3059588))))

(assert (= (and b!4893609 (is-Node!14743 (left!40981 (c!831694 input!1236)))) b!4894234))

(assert (= b!4894235 b!4894236))

(assert (= (and b!4893609 (is-Leaf!24548 (left!40981 (c!831694 input!1236)))) b!4894235))

(declare-fun m!5899496 () Bool)

(assert (=> b!4894234 m!5899496))

(declare-fun m!5899498 () Bool)

(assert (=> b!4894234 m!5899498))

(declare-fun m!5899500 () Bool)

(assert (=> b!4894235 m!5899500))

(assert (=> b!4893609 m!5898678))

(declare-fun e!3059590 () Bool)

(declare-fun tp!1377347 () Bool)

(declare-fun b!4894237 () Bool)

(declare-fun tp!1377346 () Bool)

(assert (=> b!4894237 (= e!3059590 (and (inv!72691 (left!40981 (right!41311 (c!831694 input!1236)))) tp!1377346 (inv!72691 (right!41311 (right!41311 (c!831694 input!1236)))) tp!1377347))))

(declare-fun b!4894239 () Bool)

(declare-fun e!3059591 () Bool)

(declare-fun tp!1377345 () Bool)

(assert (=> b!4894239 (= e!3059591 tp!1377345)))

(declare-fun b!4894238 () Bool)

(assert (=> b!4894238 (= e!3059590 (and (inv!72697 (xs!18059 (right!41311 (c!831694 input!1236)))) e!3059591))))

(assert (=> b!4893609 (= tp!1377248 (and (inv!72691 (right!41311 (c!831694 input!1236))) e!3059590))))

(assert (= (and b!4893609 (is-Node!14743 (right!41311 (c!831694 input!1236)))) b!4894237))

(assert (= b!4894238 b!4894239))

(assert (= (and b!4893609 (is-Leaf!24548 (right!41311 (c!831694 input!1236)))) b!4894238))

(declare-fun m!5899502 () Bool)

(assert (=> b!4894237 m!5899502))

(declare-fun m!5899504 () Bool)

(assert (=> b!4894237 m!5899504))

(declare-fun m!5899506 () Bool)

(assert (=> b!4894238 m!5899506))

(assert (=> b!4893609 m!5898680))

(declare-fun b!4894243 () Bool)

(declare-fun e!3059592 () Bool)

(declare-fun tp!1377352 () Bool)

(declare-fun tp!1377349 () Bool)

(assert (=> b!4894243 (= e!3059592 (and tp!1377352 tp!1377349))))

(declare-fun b!4894242 () Bool)

(declare-fun tp!1377351 () Bool)

(assert (=> b!4894242 (= e!3059592 tp!1377351)))

(declare-fun b!4894241 () Bool)

(declare-fun tp!1377348 () Bool)

(declare-fun tp!1377350 () Bool)

(assert (=> b!4894241 (= e!3059592 (and tp!1377348 tp!1377350))))

(declare-fun b!4894240 () Bool)

(assert (=> b!4894240 (= e!3059592 tp_is_empty!35781)))

(assert (=> b!4893624 (= tp!1377262 e!3059592)))

(assert (= (and b!4893624 (is-ElementMatch!13250 (reg!13579 (regex!8175 (h!62858 rulesArg!165))))) b!4894240))

(assert (= (and b!4893624 (is-Concat!21736 (reg!13579 (regex!8175 (h!62858 rulesArg!165))))) b!4894241))

(assert (= (and b!4893624 (is-Star!13250 (reg!13579 (regex!8175 (h!62858 rulesArg!165))))) b!4894242))

(assert (= (and b!4893624 (is-Union!13250 (reg!13579 (regex!8175 (h!62858 rulesArg!165))))) b!4894243))

(declare-fun b!4894247 () Bool)

(declare-fun e!3059593 () Bool)

(declare-fun tp!1377357 () Bool)

(declare-fun tp!1377354 () Bool)

(assert (=> b!4894247 (= e!3059593 (and tp!1377357 tp!1377354))))

(declare-fun b!4894246 () Bool)

(declare-fun tp!1377356 () Bool)

(assert (=> b!4894246 (= e!3059593 tp!1377356)))

(declare-fun b!4894245 () Bool)

(declare-fun tp!1377353 () Bool)

(declare-fun tp!1377355 () Bool)

(assert (=> b!4894245 (= e!3059593 (and tp!1377353 tp!1377355))))

(declare-fun b!4894244 () Bool)

(assert (=> b!4894244 (= e!3059593 tp_is_empty!35781)))

(assert (=> b!4893635 (= tp!1377274 e!3059593)))

(assert (= (and b!4893635 (is-ElementMatch!13250 (regex!8175 (h!62858 (t!365674 rulesArg!165))))) b!4894244))

(assert (= (and b!4893635 (is-Concat!21736 (regex!8175 (h!62858 (t!365674 rulesArg!165))))) b!4894245))

(assert (= (and b!4893635 (is-Star!13250 (regex!8175 (h!62858 (t!365674 rulesArg!165))))) b!4894246))

(assert (= (and b!4893635 (is-Union!13250 (regex!8175 (h!62858 (t!365674 rulesArg!165))))) b!4894247))

(declare-fun b_lambda!194435 () Bool)

(assert (= b_lambda!194419 (or d!1571851 b_lambda!194435)))

(declare-fun bs!1176122 () Bool)

(declare-fun d!1572133 () Bool)

(assert (= bs!1176122 (and d!1572133 d!1571851)))

(assert (=> bs!1176122 (= (dynLambda!22642 lambda!244023 (h!62858 rulesArg!165)) (ruleValid!3673 thiss!14805 (h!62858 rulesArg!165)))))

(assert (=> bs!1176122 m!5898526))

(assert (=> b!4893772 d!1572133))

(declare-fun b_lambda!194437 () Bool)

(assert (= b_lambda!194429 (or b!4893578 b_lambda!194437)))

(declare-fun bs!1176123 () Bool)

(declare-fun d!1572135 () Bool)

(assert (= bs!1176123 (and d!1572135 b!4893578)))

(assert (=> bs!1176123 (= (dynLambda!22645 lambda!244035 (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))) (= (list!17727 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))) (list!17727 (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))))

(declare-fun b_lambda!194447 () Bool)

(assert (=> (not b_lambda!194447) (not bs!1176123)))

(declare-fun t!365710 () Bool)

(declare-fun tb!258951 () Bool)

(assert (=> (and b!4893356 (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365710) tb!258951))

(declare-fun b!4894257 () Bool)

(declare-fun e!3059597 () Bool)

(declare-fun tp!1377358 () Bool)

(assert (=> b!4894257 (= e!3059597 (and (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))) tp!1377358))))

(declare-fun result!322534 () Bool)

(assert (=> tb!258951 (= result!322534 (and (inv!72690 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))) e!3059597))))

(assert (= tb!258951 b!4894257))

(declare-fun m!5899514 () Bool)

(assert (=> b!4894257 m!5899514))

(declare-fun m!5899516 () Bool)

(assert (=> tb!258951 m!5899516))

(assert (=> bs!1176123 t!365710))

(declare-fun b_and!344971 () Bool)

(assert (= b_and!344943 (and (=> t!365710 result!322534) b_and!344971)))

(declare-fun t!365712 () Bool)

(declare-fun tb!258953 () Bool)

(assert (=> (and b!4893636 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365712) tb!258953))

(declare-fun result!322536 () Bool)

(assert (= result!322536 result!322534))

(assert (=> bs!1176123 t!365712))

(declare-fun b_and!344973 () Bool)

(assert (= b_and!344945 (and (=> t!365712 result!322536) b_and!344973)))

(declare-fun t!365714 () Bool)

(declare-fun tb!258955 () Bool)

(assert (=> (and b!4894220 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365714) tb!258955))

(declare-fun result!322538 () Bool)

(assert (= result!322538 result!322534))

(assert (=> bs!1176123 t!365714))

(declare-fun b_and!344975 () Bool)

(assert (= b_and!344969 (and (=> t!365714 result!322538) b_and!344975)))

(declare-fun b_lambda!194449 () Bool)

(assert (=> (not b_lambda!194449) (not bs!1176123)))

(assert (=> bs!1176123 t!365687))

(declare-fun b_and!344977 () Bool)

(assert (= b_and!344963 (and (=> t!365687 result!322510) b_and!344977)))

(assert (=> bs!1176123 t!365689))

(declare-fun b_and!344979 () Bool)

(assert (= b_and!344965 (and (=> t!365689 result!322512) b_and!344979)))

(assert (=> bs!1176123 t!365704))

(declare-fun b_and!344981 () Bool)

(assert (= b_and!344967 (and (=> t!365704 result!322526) b_and!344981)))

(declare-fun m!5899518 () Bool)

(assert (=> bs!1176123 m!5899518))

(declare-fun m!5899520 () Bool)

(assert (=> bs!1176123 m!5899520))

(assert (=> bs!1176123 m!5898642))

(assert (=> bs!1176123 m!5899132))

(assert (=> bs!1176123 m!5899136))

(assert (=> bs!1176123 m!5899518))

(assert (=> bs!1176123 m!5898642))

(assert (=> bs!1176123 m!5899136))

(assert (=> d!1572019 d!1572135))

(declare-fun b_lambda!194439 () Bool)

(assert (= b_lambda!194425 (or (and b!4893356 b_free!131567) (and b!4893636 b_free!131575 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4894220 b_free!131583 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) b_lambda!194439)))

(declare-fun b_lambda!194441 () Bool)

(assert (= b_lambda!194423 (or (and b!4893356 b_free!131567) (and b!4893636 b_free!131575 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4894220 b_free!131583 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) b_lambda!194441)))

(declare-fun b_lambda!194443 () Bool)

(assert (= b_lambda!194421 (or b!4893578 b_lambda!194443)))

(declare-fun bs!1176124 () Bool)

(declare-fun d!1572137 () Bool)

(assert (= bs!1176124 (and d!1572137 b!4893578)))

(assert (=> bs!1176124 (= (dynLambda!22645 lambda!244035 (_1!33535 lt!2006025)) (= (list!17727 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025)))) (list!17727 (_1!33535 lt!2006025))))))

(declare-fun b_lambda!194451 () Bool)

(assert (=> (not b_lambda!194451) (not bs!1176124)))

(declare-fun t!365716 () Bool)

(declare-fun tb!258957 () Bool)

(assert (=> (and b!4893356 (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365716) tb!258957))

(declare-fun e!3059598 () Bool)

(declare-fun tp!1377359 () Bool)

(declare-fun b!4894258 () Bool)

(assert (=> b!4894258 (= e!3059598 (and (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025))))) tp!1377359))))

(declare-fun result!322540 () Bool)

(assert (=> tb!258957 (= result!322540 (and (inv!72690 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025)))) e!3059598))))

(assert (= tb!258957 b!4894258))

(declare-fun m!5899534 () Bool)

(assert (=> b!4894258 m!5899534))

(declare-fun m!5899536 () Bool)

(assert (=> tb!258957 m!5899536))

(assert (=> bs!1176124 t!365716))

(declare-fun b_and!344983 () Bool)

(assert (= b_and!344971 (and (=> t!365716 result!322540) b_and!344983)))

(declare-fun t!365718 () Bool)

(declare-fun tb!258959 () Bool)

(assert (=> (and b!4893636 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365718) tb!258959))

(declare-fun result!322542 () Bool)

(assert (= result!322542 result!322540))

(assert (=> bs!1176124 t!365718))

(declare-fun b_and!344985 () Bool)

(assert (= b_and!344973 (and (=> t!365718 result!322542) b_and!344985)))

(declare-fun t!365720 () Bool)

(declare-fun tb!258961 () Bool)

(assert (=> (and b!4894220 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365720) tb!258961))

(declare-fun result!322544 () Bool)

(assert (= result!322544 result!322540))

(assert (=> bs!1176124 t!365720))

(declare-fun b_and!344987 () Bool)

(assert (= b_and!344975 (and (=> t!365720 result!322544) b_and!344987)))

(declare-fun b_lambda!194453 () Bool)

(assert (=> (not b_lambda!194453) (not bs!1176124)))

(assert (=> bs!1176124 t!365683))

(declare-fun b_and!344989 () Bool)

(assert (= b_and!344977 (and (=> t!365683 result!322504) b_and!344989)))

(assert (=> bs!1176124 t!365685))

(declare-fun b_and!344991 () Bool)

(assert (= b_and!344979 (and (=> t!365685 result!322508) b_and!344991)))

(assert (=> bs!1176124 t!365702))

(declare-fun b_and!344993 () Bool)

(assert (= b_and!344981 (and (=> t!365702 result!322524) b_and!344993)))

(declare-fun m!5899546 () Bool)

(assert (=> bs!1176124 m!5899546))

(declare-fun m!5899548 () Bool)

(assert (=> bs!1176124 m!5899548))

(assert (=> bs!1176124 m!5898640))

(assert (=> bs!1176124 m!5899128))

(assert (=> bs!1176124 m!5899546))

(assert (=> bs!1176124 m!5899128))

(assert (=> d!1571997 d!1572137))

(declare-fun b_lambda!194445 () Bool)

(assert (= b_lambda!194427 (or (and b!4893356 b_free!131567) (and b!4893636 b_free!131575 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4894220 b_free!131583 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) b_lambda!194445)))

(push 1)

(assert (not bm!339453))

(assert (not d!1571929))

(assert (not tb!258931))

(assert (not b!4893609))

(assert (not b!4894169))

(assert (not b_next!132357))

(assert (not b!4893837))

(assert (not b!4893969))

(assert (not b_next!132375))

(assert (not b_next!132373))

(assert (not d!1572117))

(assert (not b!4894043))

(assert (not b!4893840))

(assert (not d!1571993))

(assert (not b!4894211))

(assert (not b!4893761))

(assert (not b!4894225))

(assert (not b!4893782))

(assert (not d!1571937))

(assert (not b!4894201))

(assert (not b!4894177))

(assert (not b!4894234))

(assert (not b!4893791))

(assert (not d!1572015))

(assert (not b!4893972))

(assert (not b!4894139))

(assert (not b!4894185))

(assert (not b!4893780))

(assert (not b!4894164))

(assert (not b_lambda!194449))

(assert (not b!4894239))

(assert (not b!4894231))

(assert (not b!4893775))

(assert (not b_next!132359))

(assert (not b!4893737))

(assert (not d!1572019))

(assert (not b!4894242))

(assert (not b!4893786))

(assert (not b!4894218))

(assert (not d!1571997))

(assert (not b!4893738))

(assert (not b!4894229))

(assert (not d!1571967))

(assert (not d!1571957))

(assert (not bm!339473))

(assert (not b!4894102))

(assert (not d!1571983))

(assert (not b!4894216))

(assert (not b!4893785))

(assert (not b!4893742))

(assert (not d!1571933))

(assert (not d!1572085))

(assert (not b!4894136))

(assert (not b!4893831))

(assert (not d!1572115))

(assert (not b!4894235))

(assert (not b!4894219))

(assert (not b!4894247))

(assert (not b!4894122))

(assert (not b!4894045))

(assert (not b!4893964))

(assert (not b_lambda!194437))

(assert (not d!1572091))

(assert (not d!1572107))

(assert (not bm!339454))

(assert (not tb!258923))

(assert (not b!4894161))

(assert b_and!344993)

(assert (not b!4894138))

(assert (not b!4894168))

(assert (not b!4894163))

(assert (not bm!339459))

(assert (not d!1571977))

(assert (not bm!339458))

(assert (not b!4894199))

(assert (not bm!339413))

(assert (not b!4893749))

(assert (not b!4893790))

(assert (not b!4894183))

(assert (not b!4894165))

(assert (not b!4894212))

(assert (not b!4894257))

(assert (not d!1571949))

(assert (not b_lambda!194445))

(assert (not b!4894162))

(assert (not b!4894042))

(assert (not d!1571923))

(assert (not b!4894258))

(assert (not b!4894160))

(assert (not b!4893828))

(assert (not d!1571931))

(assert (not b!4894205))

(assert (not b!4894196))

(assert (not b!4893788))

(assert (not bm!339456))

(assert (not d!1571999))

(assert (not b!4894176))

(assert (not b!4893784))

(assert (not b!4894117))

(assert b_and!344983)

(assert (not b!4894227))

(assert (not b!4893834))

(assert (not b!4894137))

(assert (not d!1572021))

(assert (not d!1571959))

(assert (not d!1571979))

(assert (not bm!339460))

(assert (not bm!339417))

(assert (not b_next!132365))

(assert (not b!4894031))

(assert (not d!1572125))

(assert (not d!1571925))

(assert (not b!4894128))

(assert (not b!4893767))

(assert (not b!4894197))

(assert (not b!4894166))

(assert (not b!4893739))

(assert (not b_lambda!194453))

(assert (not b_lambda!194447))

(assert (not b_lambda!194451))

(assert (not b!4894125))

(assert (not d!1571955))

(assert (not b_lambda!194417))

(assert b_and!344987)

(assert (not bm!339472))

(assert (not tb!258951))

(assert (not b!4893774))

(assert (not d!1572035))

(assert (not b!4893744))

(assert (not b!4894184))

(assert (not tb!258927))

(assert (not b!4893716))

(assert (not bs!1176124))

(assert (not b!4893824))

(assert (not b_lambda!194435))

(assert (not b!4894232))

(assert (not d!1572023))

(assert (not b!4893740))

(assert (not b!4894243))

(assert (not b!4894124))

(assert (not b!4894113))

(assert (not b!4894132))

(assert (not b!4894215))

(assert (not b!4893849))

(assert (not bs!1176123))

(assert (not d!1572017))

(assert (not b!4894228))

(assert (not b!4893970))

(assert (not d!1571917))

(assert (not d!1571935))

(assert b_and!344989)

(assert (not d!1572083))

(assert (not b_lambda!194443))

(assert (not b!4894245))

(assert (not b!4893789))

(assert (not b!4893781))

(assert (not b!4893820))

(assert (not b!4894011))

(assert (not bm!339471))

(assert (not bm!339455))

(assert (not b!4894208))

(assert (not b!4894170))

(assert (not b!4893830))

(assert (not b!4894217))

(assert (not d!1571947))

(assert (not b!4894115))

(assert (not tb!258957))

(assert (not b!4893829))

(assert (not bm!339457))

(assert (not b!4894101))

(assert (not b!4893741))

(assert (not b!4894114))

(assert (not b!4893835))

(assert (not b!4894236))

(assert (not b!4894119))

(assert (not b_lambda!194439))

(assert (not d!1572099))

(assert (not b!4894213))

(assert (not b_next!132367))

(assert (not b!4893783))

(assert (not b!4893736))

(assert (not d!1571927))

(assert (not d!1571969))

(assert (not d!1571971))

(assert (not d!1571987))

(assert (not b!4893777))

(assert (not b!4894116))

(assert (not b!4893779))

(assert (not bs!1176122))

(assert (not b!4893860))

(assert (not b!4894209))

(assert (not d!1571921))

(assert (not b!4894121))

(assert (not b!4893760))

(assert b_and!344985)

(assert (not b!4894233))

(assert (not tb!258939))

(assert (not b!4894008))

(assert (not b!4894179))

(assert (not b!4893839))

(assert (not d!1571945))

(assert (not b!4894238))

(assert (not b!4894118))

(assert (not b!4894108))

(assert (not b!4894180))

(assert (not b!4893841))

(assert tp_is_empty!35781)

(assert (not bm!339412))

(assert (not b!4893773))

(assert (not d!1572081))

(assert (not d!1571941))

(assert (not b!4894178))

(assert (not b!4894237))

(assert (not b!4894241))

(assert (not d!1571961))

(assert (not b!4894127))

(assert (not b!4894246))

(assert (not bm!339416))

(assert (not b!4893890))

(assert b_and!344991)

(assert (not b!4894181))

(assert (not b!4894198))

(assert (not b!4893776))

(assert (not b_lambda!194433))

(assert (not d!1572013))

(assert (not b_lambda!194441))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!132357))

(assert (not b_next!132359))

(assert b_and!344993)

(assert b_and!344983)

(assert (not b_next!132365))

(assert b_and!344987)

(assert b_and!344989)

(assert (not b_next!132367))

(assert b_and!344985)

(assert b_and!344991)

(assert (not b_next!132375))

(assert (not b_next!132373))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!194489 () Bool)

(assert (= b_lambda!194447 (or (and b!4893356 b_free!131569) (and b!4893636 b_free!131577 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4894220 b_free!131585 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))))) b_lambda!194489)))

(declare-fun b_lambda!194491 () Bool)

(assert (= b_lambda!194449 (or (and b!4893356 b_free!131567) (and b!4893636 b_free!131575 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4894220 b_free!131583 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) b_lambda!194491)))

(declare-fun b_lambda!194493 () Bool)

(assert (= b_lambda!194451 (or (and b!4893356 b_free!131569) (and b!4893636 b_free!131577 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4894220 b_free!131585 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))))) b_lambda!194493)))

(declare-fun b_lambda!194495 () Bool)

(assert (= b_lambda!194453 (or (and b!4893356 b_free!131567) (and b!4893636 b_free!131575 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4894220 b_free!131583 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) b_lambda!194495)))

(push 1)

(assert (not bm!339453))

(assert (not d!1571929))

(assert (not tb!258931))

(assert (not b!4893609))

(assert (not b!4894169))

(assert (not b_next!132357))

(assert (not b!4893837))

(assert (not b!4893969))

(assert (not b_next!132375))

(assert (not b_next!132373))

(assert (not d!1572117))

(assert (not b!4894043))

(assert (not b!4893840))

(assert (not b_lambda!194493))

(assert (not d!1571993))

(assert (not b!4894211))

(assert (not b!4893761))

(assert (not b!4894225))

(assert (not b!4893782))

(assert (not d!1571937))

(assert (not b!4894201))

(assert (not b!4894177))

(assert (not b!4894234))

(assert (not b!4893791))

(assert (not d!1572015))

(assert (not b!4893972))

(assert (not b!4894139))

(assert (not b!4894185))

(assert (not b!4893780))

(assert (not b!4894164))

(assert (not b!4894239))

(assert (not b!4894231))

(assert (not b!4893775))

(assert (not b_next!132359))

(assert (not b!4893737))

(assert (not d!1572019))

(assert (not b!4894242))

(assert (not b!4893786))

(assert (not b!4894218))

(assert (not d!1571997))

(assert (not b!4893738))

(assert (not b!4894229))

(assert (not d!1571967))

(assert (not d!1571957))

(assert (not bm!339473))

(assert (not b!4894102))

(assert (not d!1571983))

(assert (not b!4894216))

(assert (not b!4893785))

(assert (not b!4893742))

(assert (not d!1571933))

(assert (not d!1572085))

(assert (not b!4894136))

(assert (not b!4893831))

(assert (not d!1572115))

(assert (not b!4894235))

(assert (not b!4894219))

(assert (not b!4894247))

(assert (not b!4894122))

(assert (not b!4894045))

(assert (not b!4893964))

(assert (not b_lambda!194437))

(assert (not d!1572091))

(assert (not d!1572107))

(assert (not bm!339454))

(assert (not tb!258923))

(assert (not b!4894161))

(assert b_and!344993)

(assert (not b!4894138))

(assert (not b!4894168))

(assert (not b!4894163))

(assert (not bm!339459))

(assert (not d!1571977))

(assert (not bm!339458))

(assert (not b!4894199))

(assert (not bm!339413))

(assert (not b!4893749))

(assert (not b!4893790))

(assert (not b!4894183))

(assert (not b!4894165))

(assert (not b!4894212))

(assert (not b!4894257))

(assert (not d!1571949))

(assert (not b_lambda!194445))

(assert (not b!4894162))

(assert (not b!4894042))

(assert (not d!1571923))

(assert (not b!4894258))

(assert (not b!4894160))

(assert (not b!4893828))

(assert (not d!1571931))

(assert (not b!4894205))

(assert (not b!4894196))

(assert (not b!4893788))

(assert (not bm!339456))

(assert (not d!1571999))

(assert (not b!4894176))

(assert (not b!4893784))

(assert (not b!4894117))

(assert b_and!344983)

(assert (not b!4894227))

(assert (not b!4893834))

(assert (not b!4894137))

(assert (not d!1572021))

(assert (not d!1571959))

(assert (not d!1571979))

(assert (not bm!339460))

(assert (not bm!339417))

(assert (not b_next!132365))

(assert (not b!4894031))

(assert (not d!1572125))

(assert (not d!1571925))

(assert (not b!4894128))

(assert (not b!4893767))

(assert (not b!4894197))

(assert (not b!4894166))

(assert (not b!4893739))

(assert (not b!4894125))

(assert (not d!1571955))

(assert (not b_lambda!194417))

(assert b_and!344987)

(assert (not bm!339472))

(assert (not tb!258951))

(assert (not b!4893774))

(assert (not d!1572035))

(assert (not b!4893744))

(assert (not b!4894184))

(assert (not tb!258927))

(assert (not b!4893716))

(assert (not bs!1176124))

(assert (not b!4893824))

(assert (not b_lambda!194435))

(assert (not b!4894232))

(assert (not d!1572023))

(assert (not b!4893740))

(assert (not b!4894243))

(assert (not b!4894124))

(assert (not b!4894113))

(assert (not b!4894132))

(assert (not b!4894215))

(assert (not b!4893849))

(assert (not bs!1176123))

(assert (not d!1572017))

(assert (not b!4893970))

(assert (not d!1571917))

(assert (not d!1571935))

(assert b_and!344989)

(assert (not d!1572083))

(assert (not b_lambda!194443))

(assert (not b!4894245))

(assert (not b!4893789))

(assert (not b!4893781))

(assert (not b_lambda!194489))

(assert (not b!4894228))

(assert (not b!4893820))

(assert (not b!4894011))

(assert (not bm!339471))

(assert (not bm!339455))

(assert (not b!4894208))

(assert (not b!4894170))

(assert (not b!4893830))

(assert (not b!4894217))

(assert (not d!1571947))

(assert (not b_lambda!194495))

(assert (not b!4894115))

(assert (not tb!258957))

(assert (not b!4893829))

(assert (not bm!339457))

(assert (not b!4894101))

(assert (not b!4893741))

(assert (not b!4894114))

(assert (not b!4893835))

(assert (not b!4894236))

(assert (not b!4894119))

(assert (not b_lambda!194439))

(assert (not d!1572099))

(assert (not b!4894213))

(assert (not b_lambda!194491))

(assert (not b_next!132367))

(assert (not b!4893783))

(assert (not b!4893736))

(assert (not d!1571927))

(assert (not d!1571969))

(assert (not d!1571971))

(assert (not d!1571987))

(assert (not b!4893777))

(assert (not b!4894116))

(assert (not b!4893779))

(assert (not bs!1176122))

(assert (not b!4893860))

(assert (not b!4894209))

(assert (not d!1571921))

(assert (not b!4894121))

(assert (not b!4893760))

(assert b_and!344985)

(assert (not b!4894233))

(assert (not tb!258939))

(assert (not b!4894008))

(assert (not b!4894179))

(assert (not b!4893839))

(assert (not d!1571945))

(assert (not b!4894238))

(assert (not b!4894118))

(assert (not b!4894108))

(assert (not b!4894180))

(assert (not b!4893841))

(assert tp_is_empty!35781)

(assert (not bm!339412))

(assert (not b!4893773))

(assert (not d!1572081))

(assert (not d!1571941))

(assert (not b!4894178))

(assert (not b!4894237))

(assert (not b!4894241))

(assert (not d!1571961))

(assert (not b!4894127))

(assert (not b!4894246))

(assert (not bm!339416))

(assert (not b!4893890))

(assert b_and!344991)

(assert (not b!4894181))

(assert (not b!4894198))

(assert (not b!4893776))

(assert (not b_lambda!194433))

(assert (not d!1572013))

(assert (not b_lambda!194441))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!132357))

(assert (not b_next!132359))

(assert b_and!344993)

(assert b_and!344983)

(assert (not b_next!132365))

(assert b_and!344987)

(assert b_and!344989)

(assert (not b_next!132367))

(assert b_and!344985)

(assert b_and!344991)

(assert (not b_next!132375))

(assert (not b_next!132373))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1572217 () Bool)

(assert (=> d!1572217 (= (list!17727 lt!2006084) (list!17729 (c!831694 lt!2006084)))))

(declare-fun bs!1176145 () Bool)

(assert (= bs!1176145 d!1572217))

(declare-fun m!5899826 () Bool)

(assert (=> bs!1176145 m!5899826))

(assert (=> d!1571937 d!1572217))

(declare-fun b!4894434 () Bool)

(declare-fun e!3059694 () List!56532)

(assert (=> b!4894434 (= e!3059694 (list!17729 (right!41311 (c!831694 (_2!33531 lt!2005838)))))))

(declare-fun b!4894436 () Bool)

(declare-fun res!2090435 () Bool)

(declare-fun e!3059693 () Bool)

(assert (=> b!4894436 (=> (not res!2090435) (not e!3059693))))

(declare-fun lt!2006460 () List!56532)

(assert (=> b!4894436 (= res!2090435 (= (size!37145 lt!2006460) (+ (size!37145 (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005838))))) (size!37145 (list!17729 (right!41311 (c!831694 (_2!33531 lt!2005838))))))))))

(declare-fun b!4894435 () Bool)

(assert (=> b!4894435 (= e!3059694 (Cons!56408 (h!62856 (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005838))))) (++!12244 (t!365672 (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005838))))) (list!17729 (right!41311 (c!831694 (_2!33531 lt!2005838)))))))))

(declare-fun d!1572219 () Bool)

(assert (=> d!1572219 e!3059693))

(declare-fun res!2090436 () Bool)

(assert (=> d!1572219 (=> (not res!2090436) (not e!3059693))))

(assert (=> d!1572219 (= res!2090436 (= (content!10019 lt!2006460) (set.union (content!10019 (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005838))))) (content!10019 (list!17729 (right!41311 (c!831694 (_2!33531 lt!2005838))))))))))

(assert (=> d!1572219 (= lt!2006460 e!3059694)))

(declare-fun c!831857 () Bool)

(assert (=> d!1572219 (= c!831857 (is-Nil!56408 (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005838))))))))

(assert (=> d!1572219 (= (++!12244 (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005838)))) (list!17729 (right!41311 (c!831694 (_2!33531 lt!2005838))))) lt!2006460)))

(declare-fun b!4894437 () Bool)

(assert (=> b!4894437 (= e!3059693 (or (not (= (list!17729 (right!41311 (c!831694 (_2!33531 lt!2005838)))) Nil!56408)) (= lt!2006460 (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005838)))))))))

(assert (= (and d!1572219 c!831857) b!4894434))

(assert (= (and d!1572219 (not c!831857)) b!4894435))

(assert (= (and d!1572219 res!2090436) b!4894436))

(assert (= (and b!4894436 res!2090435) b!4894437))

(declare-fun m!5899828 () Bool)

(assert (=> b!4894436 m!5899828))

(assert (=> b!4894436 m!5899484))

(declare-fun m!5899830 () Bool)

(assert (=> b!4894436 m!5899830))

(assert (=> b!4894436 m!5899486))

(declare-fun m!5899832 () Bool)

(assert (=> b!4894436 m!5899832))

(assert (=> b!4894435 m!5899486))

(declare-fun m!5899834 () Bool)

(assert (=> b!4894435 m!5899834))

(declare-fun m!5899836 () Bool)

(assert (=> d!1572219 m!5899836))

(assert (=> d!1572219 m!5899484))

(declare-fun m!5899838 () Bool)

(assert (=> d!1572219 m!5899838))

(assert (=> d!1572219 m!5899486))

(declare-fun m!5899840 () Bool)

(assert (=> d!1572219 m!5899840))

(assert (=> b!4894209 d!1572219))

(declare-fun b!4894441 () Bool)

(declare-fun e!3059696 () List!56532)

(assert (=> b!4894441 (= e!3059696 (++!12244 (list!17729 (left!40981 (left!40981 (c!831694 (_2!33531 lt!2005838))))) (list!17729 (right!41311 (left!40981 (c!831694 (_2!33531 lt!2005838)))))))))

(declare-fun b!4894438 () Bool)

(declare-fun e!3059695 () List!56532)

(assert (=> b!4894438 (= e!3059695 Nil!56408)))

(declare-fun d!1572221 () Bool)

(declare-fun c!831858 () Bool)

(assert (=> d!1572221 (= c!831858 (is-Empty!14743 (left!40981 (c!831694 (_2!33531 lt!2005838)))))))

(assert (=> d!1572221 (= (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005838)))) e!3059695)))

(declare-fun b!4894439 () Bool)

(assert (=> b!4894439 (= e!3059695 e!3059696)))

(declare-fun c!831859 () Bool)

(assert (=> b!4894439 (= c!831859 (is-Leaf!24548 (left!40981 (c!831694 (_2!33531 lt!2005838)))))))

(declare-fun b!4894440 () Bool)

(assert (=> b!4894440 (= e!3059696 (list!17731 (xs!18059 (left!40981 (c!831694 (_2!33531 lt!2005838))))))))

(assert (= (and d!1572221 c!831858) b!4894438))

(assert (= (and d!1572221 (not c!831858)) b!4894439))

(assert (= (and b!4894439 c!831859) b!4894440))

(assert (= (and b!4894439 (not c!831859)) b!4894441))

(declare-fun m!5899842 () Bool)

(assert (=> b!4894441 m!5899842))

(declare-fun m!5899844 () Bool)

(assert (=> b!4894441 m!5899844))

(assert (=> b!4894441 m!5899842))

(assert (=> b!4894441 m!5899844))

(declare-fun m!5899846 () Bool)

(assert (=> b!4894441 m!5899846))

(declare-fun m!5899848 () Bool)

(assert (=> b!4894440 m!5899848))

(assert (=> b!4894209 d!1572221))

(declare-fun b!4894445 () Bool)

(declare-fun e!3059698 () List!56532)

(assert (=> b!4894445 (= e!3059698 (++!12244 (list!17729 (left!40981 (right!41311 (c!831694 (_2!33531 lt!2005838))))) (list!17729 (right!41311 (right!41311 (c!831694 (_2!33531 lt!2005838)))))))))

(declare-fun b!4894442 () Bool)

(declare-fun e!3059697 () List!56532)

(assert (=> b!4894442 (= e!3059697 Nil!56408)))

(declare-fun d!1572223 () Bool)

(declare-fun c!831860 () Bool)

(assert (=> d!1572223 (= c!831860 (is-Empty!14743 (right!41311 (c!831694 (_2!33531 lt!2005838)))))))

(assert (=> d!1572223 (= (list!17729 (right!41311 (c!831694 (_2!33531 lt!2005838)))) e!3059697)))

(declare-fun b!4894443 () Bool)

(assert (=> b!4894443 (= e!3059697 e!3059698)))

(declare-fun c!831861 () Bool)

(assert (=> b!4894443 (= c!831861 (is-Leaf!24548 (right!41311 (c!831694 (_2!33531 lt!2005838)))))))

(declare-fun b!4894444 () Bool)

(assert (=> b!4894444 (= e!3059698 (list!17731 (xs!18059 (right!41311 (c!831694 (_2!33531 lt!2005838))))))))

(assert (= (and d!1572223 c!831860) b!4894442))

(assert (= (and d!1572223 (not c!831860)) b!4894443))

(assert (= (and b!4894443 c!831861) b!4894444))

(assert (= (and b!4894443 (not c!831861)) b!4894445))

(declare-fun m!5899850 () Bool)

(assert (=> b!4894445 m!5899850))

(declare-fun m!5899852 () Bool)

(assert (=> b!4894445 m!5899852))

(assert (=> b!4894445 m!5899850))

(assert (=> b!4894445 m!5899852))

(declare-fun m!5899854 () Bool)

(assert (=> b!4894445 m!5899854))

(declare-fun m!5899856 () Bool)

(assert (=> b!4894444 m!5899856))

(assert (=> b!4894209 d!1572223))

(declare-fun d!1572225 () Bool)

(assert (=> d!1572225 (= (isEmpty!30268 lt!2005974) (not (is-Some!14026 lt!2005974)))))

(assert (=> d!1571945 d!1572225))

(declare-fun d!1572227 () Bool)

(assert (=> d!1572227 (= lt!2006027 Nil!56408)))

(declare-fun lt!2006463 () Unit!146435)

(declare-fun choose!35732 (List!56532 List!56532 List!56532) Unit!146435)

(assert (=> d!1572227 (= lt!2006463 (choose!35732 lt!2006027 Nil!56408 lt!2006027))))

(assert (=> d!1572227 (isPrefix!4895 lt!2006027 lt!2006027)))

(assert (=> d!1572227 (= (lemmaIsPrefixSameLengthThenSameList!1059 lt!2006027 Nil!56408 lt!2006027) lt!2006463)))

(declare-fun bs!1176146 () Bool)

(assert (= bs!1176146 d!1572227))

(declare-fun m!5899858 () Bool)

(assert (=> bs!1176146 m!5899858))

(assert (=> bs!1176146 m!5899040))

(assert (=> bm!339453 d!1572227))

(declare-fun b!4894456 () Bool)

(declare-fun e!3059706 () Bool)

(declare-fun inv!16 (TokenValue!8485) Bool)

(assert (=> b!4894456 (= e!3059706 (inv!16 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025))))))

(declare-fun b!4894457 () Bool)

(declare-fun e!3059705 () Bool)

(declare-fun inv!15 (TokenValue!8485) Bool)

(assert (=> b!4894457 (= e!3059705 (inv!15 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025))))))

(declare-fun d!1572229 () Bool)

(declare-fun c!831867 () Bool)

(assert (=> d!1572229 (= c!831867 (is-IntegerValue!25455 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025))))))

(assert (=> d!1572229 (= (inv!21 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025))) e!3059706)))

(declare-fun b!4894458 () Bool)

(declare-fun e!3059707 () Bool)

(assert (=> b!4894458 (= e!3059706 e!3059707)))

(declare-fun c!831866 () Bool)

(assert (=> b!4894458 (= c!831866 (is-IntegerValue!25456 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025))))))

(declare-fun b!4894459 () Bool)

(declare-fun inv!17 (TokenValue!8485) Bool)

(assert (=> b!4894459 (= e!3059707 (inv!17 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025))))))

(declare-fun b!4894460 () Bool)

(declare-fun res!2090439 () Bool)

(assert (=> b!4894460 (=> res!2090439 e!3059705)))

(assert (=> b!4894460 (= res!2090439 (not (is-IntegerValue!25457 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025)))))))

(assert (=> b!4894460 (= e!3059707 e!3059705)))

(assert (= (and d!1572229 c!831867) b!4894456))

(assert (= (and d!1572229 (not c!831867)) b!4894458))

(assert (= (and b!4894458 c!831866) b!4894459))

(assert (= (and b!4894458 (not c!831866)) b!4894460))

(assert (= (and b!4894460 (not res!2090439)) b!4894457))

(declare-fun m!5899860 () Bool)

(assert (=> b!4894456 m!5899860))

(declare-fun m!5899862 () Bool)

(assert (=> b!4894457 m!5899862))

(declare-fun m!5899864 () Bool)

(assert (=> b!4894459 m!5899864))

(assert (=> tb!258927 d!1572229))

(declare-fun d!1572231 () Bool)

(assert (=> d!1572231 (= (head!10456 (tail!9602 lt!2005844)) (h!62856 (tail!9602 lt!2005844)))))

(assert (=> b!4894168 d!1572231))

(declare-fun d!1572233 () Bool)

(declare-fun lt!2006464 () Int)

(assert (=> d!1572233 (>= lt!2006464 0)))

(declare-fun e!3059708 () Int)

(assert (=> d!1572233 (= lt!2006464 e!3059708)))

(declare-fun c!831868 () Bool)

(assert (=> d!1572233 (= c!831868 (is-Nil!56408 (list!17731 (xs!18059 (c!831694 input!1236)))))))

(assert (=> d!1572233 (= (size!37145 (list!17731 (xs!18059 (c!831694 input!1236)))) lt!2006464)))

(declare-fun b!4894461 () Bool)

(assert (=> b!4894461 (= e!3059708 0)))

(declare-fun b!4894462 () Bool)

(assert (=> b!4894462 (= e!3059708 (+ 1 (size!37145 (t!365672 (list!17731 (xs!18059 (c!831694 input!1236)))))))))

(assert (= (and d!1572233 c!831868) b!4894461))

(assert (= (and d!1572233 (not c!831868)) b!4894462))

(declare-fun m!5899866 () Bool)

(assert (=> b!4894462 m!5899866))

(assert (=> b!4893716 d!1572233))

(declare-fun d!1572235 () Bool)

(assert (=> d!1572235 (= (list!17731 (xs!18059 (c!831694 input!1236))) (innerList!14831 (xs!18059 (c!831694 input!1236))))))

(assert (=> b!4893716 d!1572235))

(declare-fun d!1572237 () Bool)

(declare-fun lt!2006465 () Int)

(assert (=> d!1572237 (>= lt!2006465 0)))

(declare-fun e!3059709 () Int)

(assert (=> d!1572237 (= lt!2006465 e!3059709)))

(declare-fun c!831869 () Bool)

(assert (=> d!1572237 (= c!831869 (is-Nil!56408 (_2!33532 (get!19481 lt!2006086))))))

(assert (=> d!1572237 (= (size!37145 (_2!33532 (get!19481 lt!2006086))) lt!2006465)))

(declare-fun b!4894463 () Bool)

(assert (=> b!4894463 (= e!3059709 0)))

(declare-fun b!4894464 () Bool)

(assert (=> b!4894464 (= e!3059709 (+ 1 (size!37145 (t!365672 (_2!33532 (get!19481 lt!2006086))))))))

(assert (= (and d!1572237 c!831869) b!4894463))

(assert (= (and d!1572237 (not c!831869)) b!4894464))

(declare-fun m!5899868 () Bool)

(assert (=> b!4894464 m!5899868))

(assert (=> b!4893782 d!1572237))

(declare-fun d!1572239 () Bool)

(assert (=> d!1572239 (= (get!19481 lt!2006086) (v!49981 lt!2006086))))

(assert (=> b!4893782 d!1572239))

(assert (=> b!4893782 d!1571985))

(declare-fun b!4894465 () Bool)

(declare-fun e!3059711 () List!56532)

(assert (=> b!4894465 (= e!3059711 (_2!33532 (get!19481 lt!2006091)))))

(declare-fun b!4894467 () Bool)

(declare-fun res!2090440 () Bool)

(declare-fun e!3059710 () Bool)

(assert (=> b!4894467 (=> (not res!2090440) (not e!3059710))))

(declare-fun lt!2006466 () List!56532)

(assert (=> b!4894467 (= res!2090440 (= (size!37145 lt!2006466) (+ (size!37145 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091))))) (size!37145 (_2!33532 (get!19481 lt!2006091))))))))

(declare-fun b!4894466 () Bool)

(assert (=> b!4894466 (= e!3059711 (Cons!56408 (h!62856 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091))))) (++!12244 (t!365672 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091))))) (_2!33532 (get!19481 lt!2006091)))))))

(declare-fun d!1572241 () Bool)

(assert (=> d!1572241 e!3059710))

(declare-fun res!2090441 () Bool)

(assert (=> d!1572241 (=> (not res!2090441) (not e!3059710))))

(assert (=> d!1572241 (= res!2090441 (= (content!10019 lt!2006466) (set.union (content!10019 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091))))) (content!10019 (_2!33532 (get!19481 lt!2006091))))))))

(assert (=> d!1572241 (= lt!2006466 e!3059711)))

(declare-fun c!831870 () Bool)

(assert (=> d!1572241 (= c!831870 (is-Nil!56408 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091))))))))

(assert (=> d!1572241 (= (++!12244 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091)))) (_2!33532 (get!19481 lt!2006091))) lt!2006466)))

(declare-fun b!4894468 () Bool)

(assert (=> b!4894468 (= e!3059710 (or (not (= (_2!33532 (get!19481 lt!2006091)) Nil!56408)) (= lt!2006466 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091)))))))))

(assert (= (and d!1572241 c!831870) b!4894465))

(assert (= (and d!1572241 (not c!831870)) b!4894466))

(assert (= (and d!1572241 res!2090441) b!4894467))

(assert (= (and b!4894467 res!2090440) b!4894468))

(declare-fun m!5899870 () Bool)

(assert (=> b!4894467 m!5899870))

(assert (=> b!4894467 m!5898914))

(declare-fun m!5899872 () Bool)

(assert (=> b!4894467 m!5899872))

(assert (=> b!4894467 m!5898920))

(declare-fun m!5899874 () Bool)

(assert (=> b!4894466 m!5899874))

(declare-fun m!5899876 () Bool)

(assert (=> d!1572241 m!5899876))

(assert (=> d!1572241 m!5898914))

(declare-fun m!5899878 () Bool)

(assert (=> d!1572241 m!5899878))

(declare-fun m!5899880 () Bool)

(assert (=> d!1572241 m!5899880))

(assert (=> b!4893785 d!1572241))

(declare-fun d!1572243 () Bool)

(assert (=> d!1572243 (= (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091)))) (list!17729 (c!831694 (charsOf!5375 (_1!33532 (get!19481 lt!2006091))))))))

(declare-fun bs!1176147 () Bool)

(assert (= bs!1176147 d!1572243))

(declare-fun m!5899882 () Bool)

(assert (=> bs!1176147 m!5899882))

(assert (=> b!4893785 d!1572243))

(declare-fun d!1572245 () Bool)

(declare-fun lt!2006467 () BalanceConc!28916)

(assert (=> d!1572245 (= (list!17727 lt!2006467) (originalCharacters!8488 (_1!33532 (get!19481 lt!2006091))))))

(assert (=> d!1572245 (= lt!2006467 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091))))) (value!262139 (_1!33532 (get!19481 lt!2006091)))))))

(assert (=> d!1572245 (= (charsOf!5375 (_1!33532 (get!19481 lt!2006091))) lt!2006467)))

(declare-fun b_lambda!194505 () Bool)

(assert (=> (not b_lambda!194505) (not d!1572245)))

(declare-fun tb!258995 () Bool)

(declare-fun t!365755 () Bool)

(assert (=> (and b!4893356 (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091)))))) t!365755) tb!258995))

(declare-fun b!4894469 () Bool)

(declare-fun e!3059712 () Bool)

(declare-fun tp!1377408 () Bool)

(assert (=> b!4894469 (= e!3059712 (and (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091))))) (value!262139 (_1!33532 (get!19481 lt!2006091)))))) tp!1377408))))

(declare-fun result!322582 () Bool)

(assert (=> tb!258995 (= result!322582 (and (inv!72690 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091))))) (value!262139 (_1!33532 (get!19481 lt!2006091))))) e!3059712))))

(assert (= tb!258995 b!4894469))

(declare-fun m!5899884 () Bool)

(assert (=> b!4894469 m!5899884))

(declare-fun m!5899886 () Bool)

(assert (=> tb!258995 m!5899886))

(assert (=> d!1572245 t!365755))

(declare-fun b_and!345039 () Bool)

(assert (= b_and!344983 (and (=> t!365755 result!322582) b_and!345039)))

(declare-fun tb!258997 () Bool)

(declare-fun t!365757 () Bool)

(assert (=> (and b!4893636 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091)))))) t!365757) tb!258997))

(declare-fun result!322584 () Bool)

(assert (= result!322584 result!322582))

(assert (=> d!1572245 t!365757))

(declare-fun b_and!345041 () Bool)

(assert (= b_and!344985 (and (=> t!365757 result!322584) b_and!345041)))

(declare-fun tb!258999 () Bool)

(declare-fun t!365759 () Bool)

(assert (=> (and b!4894220 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091)))))) t!365759) tb!258999))

(declare-fun result!322586 () Bool)

(assert (= result!322586 result!322582))

(assert (=> d!1572245 t!365759))

(declare-fun b_and!345043 () Bool)

(assert (= b_and!344987 (and (=> t!365759 result!322586) b_and!345043)))

(declare-fun m!5899888 () Bool)

(assert (=> d!1572245 m!5899888))

(declare-fun m!5899890 () Bool)

(assert (=> d!1572245 m!5899890))

(assert (=> b!4893785 d!1572245))

(declare-fun d!1572247 () Bool)

(assert (=> d!1572247 (= (get!19481 lt!2006091) (v!49981 lt!2006091))))

(assert (=> b!4893785 d!1572247))

(declare-fun d!1572249 () Bool)

(assert (=> d!1572249 (= (head!10456 lt!2005969) (h!62856 lt!2005969))))

(assert (=> b!4893839 d!1572249))

(declare-fun d!1572251 () Bool)

(assert (=> d!1572251 (= (head!10456 lt!2005975) (h!62856 lt!2005975))))

(assert (=> b!4893839 d!1572251))

(declare-fun d!1572253 () Bool)

(assert (=> d!1572253 (= (isDefined!11041 lt!2006381) (not (isEmpty!30268 lt!2006381)))))

(declare-fun bs!1176148 () Bool)

(assert (= bs!1176148 d!1572253))

(declare-fun m!5899892 () Bool)

(assert (=> bs!1176148 m!5899892))

(assert (=> b!4894180 d!1572253))

(declare-fun d!1572255 () Bool)

(declare-fun c!831871 () Bool)

(assert (=> d!1572255 (= c!831871 (is-Node!14743 (left!40981 (left!40981 (c!831694 input!1236)))))))

(declare-fun e!3059713 () Bool)

(assert (=> d!1572255 (= (inv!72691 (left!40981 (left!40981 (c!831694 input!1236)))) e!3059713)))

(declare-fun b!4894470 () Bool)

(assert (=> b!4894470 (= e!3059713 (inv!72695 (left!40981 (left!40981 (c!831694 input!1236)))))))

(declare-fun b!4894471 () Bool)

(declare-fun e!3059714 () Bool)

(assert (=> b!4894471 (= e!3059713 e!3059714)))

(declare-fun res!2090442 () Bool)

(assert (=> b!4894471 (= res!2090442 (not (is-Leaf!24548 (left!40981 (left!40981 (c!831694 input!1236))))))))

(assert (=> b!4894471 (=> res!2090442 e!3059714)))

(declare-fun b!4894472 () Bool)

(assert (=> b!4894472 (= e!3059714 (inv!72696 (left!40981 (left!40981 (c!831694 input!1236)))))))

(assert (= (and d!1572255 c!831871) b!4894470))

(assert (= (and d!1572255 (not c!831871)) b!4894471))

(assert (= (and b!4894471 (not res!2090442)) b!4894472))

(declare-fun m!5899894 () Bool)

(assert (=> b!4894470 m!5899894))

(declare-fun m!5899896 () Bool)

(assert (=> b!4894472 m!5899896))

(assert (=> b!4894234 d!1572255))

(declare-fun d!1572257 () Bool)

(declare-fun c!831872 () Bool)

(assert (=> d!1572257 (= c!831872 (is-Node!14743 (right!41311 (left!40981 (c!831694 input!1236)))))))

(declare-fun e!3059715 () Bool)

(assert (=> d!1572257 (= (inv!72691 (right!41311 (left!40981 (c!831694 input!1236)))) e!3059715)))

(declare-fun b!4894473 () Bool)

(assert (=> b!4894473 (= e!3059715 (inv!72695 (right!41311 (left!40981 (c!831694 input!1236)))))))

(declare-fun b!4894474 () Bool)

(declare-fun e!3059716 () Bool)

(assert (=> b!4894474 (= e!3059715 e!3059716)))

(declare-fun res!2090443 () Bool)

(assert (=> b!4894474 (= res!2090443 (not (is-Leaf!24548 (right!41311 (left!40981 (c!831694 input!1236))))))))

(assert (=> b!4894474 (=> res!2090443 e!3059716)))

(declare-fun b!4894475 () Bool)

(assert (=> b!4894475 (= e!3059716 (inv!72696 (right!41311 (left!40981 (c!831694 input!1236)))))))

(assert (= (and d!1572257 c!831872) b!4894473))

(assert (= (and d!1572257 (not c!831872)) b!4894474))

(assert (= (and b!4894474 (not res!2090443)) b!4894475))

(declare-fun m!5899898 () Bool)

(assert (=> b!4894473 m!5899898))

(declare-fun m!5899900 () Bool)

(assert (=> b!4894475 m!5899900))

(assert (=> b!4894234 d!1572257))

(declare-fun d!1572259 () Bool)

(assert (=> d!1572259 (= (isEmpty!30267 (maxPrefixZipper!674 thiss!14805 (t!365674 rulesArg!165) (list!17727 input!1236))) (not (is-Some!14027 (maxPrefixZipper!674 thiss!14805 (t!365674 rulesArg!165) (list!17727 input!1236)))))))

(assert (=> d!1571969 d!1572259))

(declare-fun d!1572261 () Bool)

(declare-fun res!2090444 () Bool)

(declare-fun e!3059717 () Bool)

(assert (=> d!1572261 (=> res!2090444 e!3059717)))

(assert (=> d!1572261 (= res!2090444 (is-Nil!56410 (t!365674 rulesArg!165)))))

(assert (=> d!1572261 (= (forall!13091 (t!365674 rulesArg!165) lambda!244037) e!3059717)))

(declare-fun b!4894476 () Bool)

(declare-fun e!3059718 () Bool)

(assert (=> b!4894476 (= e!3059717 e!3059718)))

(declare-fun res!2090445 () Bool)

(assert (=> b!4894476 (=> (not res!2090445) (not e!3059718))))

(assert (=> b!4894476 (= res!2090445 (dynLambda!22642 lambda!244037 (h!62858 (t!365674 rulesArg!165))))))

(declare-fun b!4894477 () Bool)

(assert (=> b!4894477 (= e!3059718 (forall!13091 (t!365674 (t!365674 rulesArg!165)) lambda!244037))))

(assert (= (and d!1572261 (not res!2090444)) b!4894476))

(assert (= (and b!4894476 res!2090445) b!4894477))

(declare-fun b_lambda!194507 () Bool)

(assert (=> (not b_lambda!194507) (not b!4894476)))

(declare-fun m!5899902 () Bool)

(assert (=> b!4894476 m!5899902))

(declare-fun m!5899904 () Bool)

(assert (=> b!4894477 m!5899904))

(assert (=> d!1571967 d!1572261))

(declare-fun d!1572263 () Bool)

(declare-fun res!2090446 () Bool)

(declare-fun e!3059719 () Bool)

(assert (=> d!1572263 (=> (not res!2090446) (not e!3059719))))

(assert (=> d!1572263 (= res!2090446 (= (csize!29716 (right!41311 (c!831694 input!1236))) (+ (size!37149 (left!40981 (right!41311 (c!831694 input!1236)))) (size!37149 (right!41311 (right!41311 (c!831694 input!1236)))))))))

(assert (=> d!1572263 (= (inv!72695 (right!41311 (c!831694 input!1236))) e!3059719)))

(declare-fun b!4894478 () Bool)

(declare-fun res!2090447 () Bool)

(assert (=> b!4894478 (=> (not res!2090447) (not e!3059719))))

(assert (=> b!4894478 (= res!2090447 (and (not (= (left!40981 (right!41311 (c!831694 input!1236))) Empty!14743)) (not (= (right!41311 (right!41311 (c!831694 input!1236))) Empty!14743))))))

(declare-fun b!4894479 () Bool)

(declare-fun res!2090448 () Bool)

(assert (=> b!4894479 (=> (not res!2090448) (not e!3059719))))

(assert (=> b!4894479 (= res!2090448 (= (cheight!14954 (right!41311 (c!831694 input!1236))) (+ (max!0 (height!1956 (left!40981 (right!41311 (c!831694 input!1236)))) (height!1956 (right!41311 (right!41311 (c!831694 input!1236))))) 1)))))

(declare-fun b!4894480 () Bool)

(assert (=> b!4894480 (= e!3059719 (<= 0 (cheight!14954 (right!41311 (c!831694 input!1236)))))))

(assert (= (and d!1572263 res!2090446) b!4894478))

(assert (= (and b!4894478 res!2090447) b!4894479))

(assert (= (and b!4894479 res!2090448) b!4894480))

(declare-fun m!5899906 () Bool)

(assert (=> d!1572263 m!5899906))

(declare-fun m!5899908 () Bool)

(assert (=> d!1572263 m!5899908))

(declare-fun m!5899910 () Bool)

(assert (=> b!4894479 m!5899910))

(declare-fun m!5899912 () Bool)

(assert (=> b!4894479 m!5899912))

(assert (=> b!4894479 m!5899910))

(assert (=> b!4894479 m!5899912))

(declare-fun m!5899914 () Bool)

(assert (=> b!4894479 m!5899914))

(assert (=> b!4894125 d!1572263))

(declare-fun d!1572265 () Bool)

(assert (=> d!1572265 (= (get!19482 lt!2006381) (v!49980 lt!2006381))))

(assert (=> b!4894185 d!1572265))

(declare-fun d!1572267 () Bool)

(assert (=> d!1572267 (= (get!19481 (maxPrefixZipper!674 thiss!14805 (t!365674 (t!365674 rulesArg!165)) (list!17727 input!1236))) (v!49981 (maxPrefixZipper!674 thiss!14805 (t!365674 (t!365674 rulesArg!165)) (list!17727 input!1236))))))

(assert (=> b!4894185 d!1572267))

(declare-fun d!1572269 () Bool)

(declare-fun lt!2006472 () Option!14028)

(assert (=> d!1572269 (= lt!2006472 (maxPrefix!4604 thiss!14805 (t!365674 (t!365674 rulesArg!165)) (list!17727 input!1236)))))

(declare-fun e!3059720 () Option!14028)

(assert (=> d!1572269 (= lt!2006472 e!3059720)))

(declare-fun c!831873 () Bool)

(assert (=> d!1572269 (= c!831873 (and (is-Cons!56410 (t!365674 (t!365674 rulesArg!165))) (is-Nil!56410 (t!365674 (t!365674 (t!365674 rulesArg!165))))))))

(declare-fun lt!2006470 () Unit!146435)

(declare-fun lt!2006471 () Unit!146435)

(assert (=> d!1572269 (= lt!2006470 lt!2006471)))

(assert (=> d!1572269 (isPrefix!4895 (list!17727 input!1236) (list!17727 input!1236))))

(assert (=> d!1572269 (= lt!2006471 (lemmaIsPrefixRefl!3292 (list!17727 input!1236) (list!17727 input!1236)))))

(assert (=> d!1572269 (rulesValidInductive!3154 thiss!14805 (t!365674 (t!365674 rulesArg!165)))))

(assert (=> d!1572269 (= (maxPrefixZipper!674 thiss!14805 (t!365674 (t!365674 rulesArg!165)) (list!17727 input!1236)) lt!2006472)))

(declare-fun call!339483 () Option!14028)

(declare-fun bm!339478 () Bool)

(assert (=> bm!339478 (= call!339483 (maxPrefixOneRuleZipper!259 thiss!14805 (h!62858 (t!365674 (t!365674 rulesArg!165))) (list!17727 input!1236)))))

(declare-fun b!4894481 () Bool)

(assert (=> b!4894481 (= e!3059720 call!339483)))

(declare-fun b!4894482 () Bool)

(declare-fun lt!2006469 () Option!14028)

(declare-fun lt!2006468 () Option!14028)

(assert (=> b!4894482 (= e!3059720 (ite (and (is-None!14027 lt!2006469) (is-None!14027 lt!2006468)) None!14027 (ite (is-None!14027 lt!2006468) lt!2006469 (ite (is-None!14027 lt!2006469) lt!2006468 (ite (>= (size!37143 (_1!33532 (v!49981 lt!2006469))) (size!37143 (_1!33532 (v!49981 lt!2006468)))) lt!2006469 lt!2006468)))))))

(assert (=> b!4894482 (= lt!2006469 call!339483)))

(assert (=> b!4894482 (= lt!2006468 (maxPrefixZipper!674 thiss!14805 (t!365674 (t!365674 (t!365674 rulesArg!165))) (list!17727 input!1236)))))

(assert (= (and d!1572269 c!831873) b!4894481))

(assert (= (and d!1572269 (not c!831873)) b!4894482))

(assert (= (or b!4894481 b!4894482) bm!339478))

(assert (=> d!1572269 m!5898444))

(assert (=> d!1572269 m!5898910))

(assert (=> d!1572269 m!5898444))

(assert (=> d!1572269 m!5898444))

(assert (=> d!1572269 m!5898906))

(assert (=> d!1572269 m!5898444))

(assert (=> d!1572269 m!5898444))

(assert (=> d!1572269 m!5898908))

(assert (=> d!1572269 m!5898952))

(assert (=> bm!339478 m!5898444))

(declare-fun m!5899916 () Bool)

(assert (=> bm!339478 m!5899916))

(assert (=> b!4894482 m!5898444))

(declare-fun m!5899918 () Bool)

(assert (=> b!4894482 m!5899918))

(assert (=> b!4894185 d!1572269))

(assert (=> b!4894185 d!1571887))

(declare-fun b!4894483 () Bool)

(declare-fun res!2090451 () Bool)

(declare-fun e!3059721 () Bool)

(assert (=> b!4894483 (=> (not res!2090451) (not e!3059721))))

(assert (=> b!4894483 (= res!2090451 (isBalanced!4013 (left!40981 (left!40981 (c!831694 input!1236)))))))

(declare-fun b!4894484 () Bool)

(declare-fun res!2090449 () Bool)

(assert (=> b!4894484 (=> (not res!2090449) (not e!3059721))))

(assert (=> b!4894484 (= res!2090449 (<= (- (height!1956 (left!40981 (left!40981 (c!831694 input!1236)))) (height!1956 (right!41311 (left!40981 (c!831694 input!1236))))) 1))))

(declare-fun b!4894485 () Bool)

(declare-fun e!3059722 () Bool)

(assert (=> b!4894485 (= e!3059722 e!3059721)))

(declare-fun res!2090452 () Bool)

(assert (=> b!4894485 (=> (not res!2090452) (not e!3059721))))

(assert (=> b!4894485 (= res!2090452 (<= (- 1) (- (height!1956 (left!40981 (left!40981 (c!831694 input!1236)))) (height!1956 (right!41311 (left!40981 (c!831694 input!1236)))))))))

(declare-fun b!4894486 () Bool)

(assert (=> b!4894486 (= e!3059721 (not (isEmpty!30275 (right!41311 (left!40981 (c!831694 input!1236))))))))

(declare-fun d!1572271 () Bool)

(declare-fun res!2090450 () Bool)

(assert (=> d!1572271 (=> res!2090450 e!3059722)))

(assert (=> d!1572271 (= res!2090450 (not (is-Node!14743 (left!40981 (c!831694 input!1236)))))))

(assert (=> d!1572271 (= (isBalanced!4013 (left!40981 (c!831694 input!1236))) e!3059722)))

(declare-fun b!4894487 () Bool)

(declare-fun res!2090453 () Bool)

(assert (=> b!4894487 (=> (not res!2090453) (not e!3059721))))

(assert (=> b!4894487 (= res!2090453 (isBalanced!4013 (right!41311 (left!40981 (c!831694 input!1236)))))))

(declare-fun b!4894488 () Bool)

(declare-fun res!2090454 () Bool)

(assert (=> b!4894488 (=> (not res!2090454) (not e!3059721))))

(assert (=> b!4894488 (= res!2090454 (not (isEmpty!30275 (left!40981 (left!40981 (c!831694 input!1236))))))))

(assert (= (and d!1572271 (not res!2090450)) b!4894485))

(assert (= (and b!4894485 res!2090452) b!4894484))

(assert (= (and b!4894484 res!2090449) b!4894483))

(assert (= (and b!4894483 res!2090451) b!4894487))

(assert (= (and b!4894487 res!2090453) b!4894488))

(assert (= (and b!4894488 res!2090454) b!4894486))

(declare-fun m!5899920 () Bool)

(assert (=> b!4894483 m!5899920))

(declare-fun m!5899922 () Bool)

(assert (=> b!4894485 m!5899922))

(declare-fun m!5899924 () Bool)

(assert (=> b!4894485 m!5899924))

(declare-fun m!5899926 () Bool)

(assert (=> b!4894488 m!5899926))

(declare-fun m!5899928 () Bool)

(assert (=> b!4894486 m!5899928))

(declare-fun m!5899930 () Bool)

(assert (=> b!4894487 m!5899930))

(assert (=> b!4894484 m!5899922))

(assert (=> b!4894484 m!5899924))

(assert (=> b!4894160 d!1572271))

(declare-fun b!4894489 () Bool)

(declare-fun e!3059727 () tuple2!60466)

(assert (=> b!4894489 (= e!3059727 (tuple2!60467 Nil!56408 lt!2006027))))

(declare-fun b!4894490 () Bool)

(declare-fun e!3059729 () tuple2!60466)

(declare-fun call!339487 () tuple2!60466)

(assert (=> b!4894490 (= e!3059729 call!339487)))

(declare-fun b!4894492 () Bool)

(declare-fun e!3059724 () Bool)

(declare-fun lt!2006499 () tuple2!60466)

(assert (=> b!4894492 (= e!3059724 (>= (size!37145 (_1!33536 lt!2006499)) (size!37145 lt!2006239)))))

(declare-fun b!4894493 () Bool)

(declare-fun e!3059725 () Unit!146435)

(declare-fun Unit!146448 () Unit!146435)

(assert (=> b!4894493 (= e!3059725 Unit!146448)))

(declare-fun lt!2006486 () Unit!146435)

(declare-fun call!339491 () Unit!146435)

(assert (=> b!4894493 (= lt!2006486 call!339491)))

(declare-fun call!339489 () Bool)

(assert (=> b!4894493 call!339489))

(declare-fun lt!2006483 () Unit!146435)

(assert (=> b!4894493 (= lt!2006483 lt!2006486)))

(declare-fun lt!2006482 () Unit!146435)

(declare-fun call!339490 () Unit!146435)

(assert (=> b!4894493 (= lt!2006482 call!339490)))

(assert (=> b!4894493 (= lt!2006027 lt!2006239)))

(declare-fun lt!2006475 () Unit!146435)

(assert (=> b!4894493 (= lt!2006475 lt!2006482)))

(assert (=> b!4894493 false))

(declare-fun b!4894494 () Bool)

(declare-fun e!3059726 () tuple2!60466)

(declare-fun lt!2006477 () tuple2!60466)

(assert (=> b!4894494 (= e!3059726 lt!2006477)))

(declare-fun bm!339479 () Bool)

(assert (=> bm!339479 (= call!339490 (lemmaIsPrefixSameLengthThenSameList!1059 lt!2006027 lt!2006239 lt!2006027))))

(declare-fun b!4894495 () Bool)

(declare-fun e!3059730 () tuple2!60466)

(assert (=> b!4894495 (= e!3059727 e!3059730)))

(declare-fun c!831879 () Bool)

(assert (=> b!4894495 (= c!831879 (= (+ (size!37145 Nil!56408) 1) (size!37145 lt!2006027)))))

(declare-fun bm!339480 () Bool)

(declare-fun call!339486 () C!26698)

(assert (=> bm!339480 (= call!339486 (head!10456 call!339459))))

(declare-fun bm!339481 () Bool)

(declare-fun call!339488 () Regex!13250)

(assert (=> bm!339481 (= call!339488 (derivativeStep!3879 call!339462 call!339486))))

(declare-fun bm!339482 () Bool)

(declare-fun lt!2006487 () List!56532)

(declare-fun call!339485 () List!56532)

(assert (=> bm!339482 (= call!339487 (findLongestMatchInner!1754 call!339488 lt!2006487 (+ (size!37145 Nil!56408) 1 1) call!339485 lt!2006027 (size!37145 lt!2006027)))))

(declare-fun bm!339483 () Bool)

(assert (=> bm!339483 (= call!339485 (tail!9602 call!339459))))

(declare-fun b!4894496 () Bool)

(declare-fun e!3059723 () tuple2!60466)

(assert (=> b!4894496 (= e!3059723 (tuple2!60467 lt!2006239 Nil!56408))))

(declare-fun b!4894497 () Bool)

(declare-fun e!3059728 () Bool)

(assert (=> b!4894497 (= e!3059728 e!3059724)))

(declare-fun res!2090455 () Bool)

(assert (=> b!4894497 (=> res!2090455 e!3059724)))

(assert (=> b!4894497 (= res!2090455 (isEmpty!30272 (_1!33536 lt!2006499)))))

(declare-fun b!4894498 () Bool)

(declare-fun c!831875 () Bool)

(declare-fun call!339484 () Bool)

(assert (=> b!4894498 (= c!831875 call!339484)))

(declare-fun lt!2006480 () Unit!146435)

(declare-fun lt!2006479 () Unit!146435)

(assert (=> b!4894498 (= lt!2006480 lt!2006479)))

(declare-fun lt!2006474 () C!26698)

(declare-fun lt!2006476 () List!56532)

(assert (=> b!4894498 (= (++!12244 (++!12244 lt!2006239 (Cons!56408 lt!2006474 Nil!56408)) lt!2006476) lt!2006027)))

(assert (=> b!4894498 (= lt!2006479 (lemmaMoveElementToOtherListKeepsConcatEq!1331 lt!2006239 lt!2006474 lt!2006476 lt!2006027))))

(assert (=> b!4894498 (= lt!2006476 (tail!9602 call!339459))))

(assert (=> b!4894498 (= lt!2006474 (head!10456 call!339459))))

(declare-fun lt!2006473 () Unit!146435)

(declare-fun lt!2006481 () Unit!146435)

(assert (=> b!4894498 (= lt!2006473 lt!2006481)))

(assert (=> b!4894498 (isPrefix!4895 (++!12244 lt!2006239 (Cons!56408 (head!10456 (getSuffix!2888 lt!2006027 lt!2006239)) Nil!56408)) lt!2006027)))

(assert (=> b!4894498 (= lt!2006481 (lemmaAddHeadSuffixToPrefixStillPrefix!713 lt!2006239 lt!2006027))))

(declare-fun lt!2006491 () Unit!146435)

(declare-fun lt!2006488 () Unit!146435)

(assert (=> b!4894498 (= lt!2006491 lt!2006488)))

(assert (=> b!4894498 (= lt!2006488 (lemmaAddHeadSuffixToPrefixStillPrefix!713 lt!2006239 lt!2006027))))

(assert (=> b!4894498 (= lt!2006487 (++!12244 lt!2006239 (Cons!56408 (head!10456 call!339459) Nil!56408)))))

(declare-fun lt!2006493 () Unit!146435)

(assert (=> b!4894498 (= lt!2006493 e!3059725)))

(declare-fun c!831878 () Bool)

(assert (=> b!4894498 (= c!831878 (= (size!37145 lt!2006239) (size!37145 lt!2006027)))))

(declare-fun lt!2006485 () Unit!146435)

(declare-fun lt!2006500 () Unit!146435)

(assert (=> b!4894498 (= lt!2006485 lt!2006500)))

(assert (=> b!4894498 (<= (size!37145 lt!2006239) (size!37145 lt!2006027))))

(assert (=> b!4894498 (= lt!2006500 (lemmaIsPrefixThenSmallerEqSize!625 lt!2006239 lt!2006027))))

(assert (=> b!4894498 (= e!3059730 e!3059729)))

(declare-fun bm!339484 () Bool)

(assert (=> bm!339484 (= call!339489 (isPrefix!4895 lt!2006027 lt!2006027))))

(declare-fun bm!339485 () Bool)

(assert (=> bm!339485 (= call!339491 (lemmaIsPrefixRefl!3292 lt!2006027 lt!2006027))))

(declare-fun b!4894499 () Bool)

(declare-fun c!831874 () Bool)

(assert (=> b!4894499 (= c!831874 call!339484)))

(declare-fun lt!2006492 () Unit!146435)

(declare-fun lt!2006490 () Unit!146435)

(assert (=> b!4894499 (= lt!2006492 lt!2006490)))

(assert (=> b!4894499 (= lt!2006027 lt!2006239)))

(assert (=> b!4894499 (= lt!2006490 call!339490)))

(declare-fun lt!2006478 () Unit!146435)

(declare-fun lt!2006484 () Unit!146435)

(assert (=> b!4894499 (= lt!2006478 lt!2006484)))

(assert (=> b!4894499 call!339489))

(assert (=> b!4894499 (= lt!2006484 call!339491)))

(assert (=> b!4894499 (= e!3059730 e!3059723)))

(declare-fun b!4894500 () Bool)

(assert (=> b!4894500 (= e!3059729 e!3059726)))

(assert (=> b!4894500 (= lt!2006477 call!339487)))

(declare-fun c!831877 () Bool)

(assert (=> b!4894500 (= c!831877 (isEmpty!30272 (_1!33536 lt!2006477)))))

(declare-fun b!4894491 () Bool)

(assert (=> b!4894491 (= e!3059723 (tuple2!60467 Nil!56408 lt!2006027))))

(declare-fun d!1572273 () Bool)

(assert (=> d!1572273 e!3059728))

(declare-fun res!2090456 () Bool)

(assert (=> d!1572273 (=> (not res!2090456) (not e!3059728))))

(assert (=> d!1572273 (= res!2090456 (= (++!12244 (_1!33536 lt!2006499) (_2!33536 lt!2006499)) lt!2006027))))

(assert (=> d!1572273 (= lt!2006499 e!3059727)))

(declare-fun c!831876 () Bool)

(assert (=> d!1572273 (= c!831876 (lostCause!1087 call!339462))))

(declare-fun lt!2006496 () Unit!146435)

(declare-fun Unit!146449 () Unit!146435)

(assert (=> d!1572273 (= lt!2006496 Unit!146449)))

(assert (=> d!1572273 (= (getSuffix!2888 lt!2006027 lt!2006239) call!339459)))

(declare-fun lt!2006498 () Unit!146435)

(declare-fun lt!2006497 () Unit!146435)

(assert (=> d!1572273 (= lt!2006498 lt!2006497)))

(declare-fun lt!2006495 () List!56532)

(assert (=> d!1572273 (= call!339459 lt!2006495)))

(assert (=> d!1572273 (= lt!2006497 (lemmaSamePrefixThenSameSuffix!2304 lt!2006239 call!339459 lt!2006239 lt!2006495 lt!2006027))))

(assert (=> d!1572273 (= lt!2006495 (getSuffix!2888 lt!2006027 lt!2006239))))

(declare-fun lt!2006494 () Unit!146435)

(declare-fun lt!2006489 () Unit!146435)

(assert (=> d!1572273 (= lt!2006494 lt!2006489)))

(assert (=> d!1572273 (isPrefix!4895 lt!2006239 (++!12244 lt!2006239 call!339459))))

(assert (=> d!1572273 (= lt!2006489 (lemmaConcatTwoListThenFirstIsPrefix!3124 lt!2006239 call!339459))))

(assert (=> d!1572273 (validRegex!5883 call!339462)))

(assert (=> d!1572273 (= (findLongestMatchInner!1754 call!339462 lt!2006239 (+ (size!37145 Nil!56408) 1) call!339459 lt!2006027 (size!37145 lt!2006027)) lt!2006499)))

(declare-fun bm!339486 () Bool)

(assert (=> bm!339486 (= call!339484 (nullable!4556 call!339462))))

(declare-fun b!4894501 () Bool)

(assert (=> b!4894501 (= e!3059726 (tuple2!60467 lt!2006239 call!339459))))

(declare-fun b!4894502 () Bool)

(declare-fun Unit!146450 () Unit!146435)

(assert (=> b!4894502 (= e!3059725 Unit!146450)))

(assert (= (and d!1572273 c!831876) b!4894489))

(assert (= (and d!1572273 (not c!831876)) b!4894495))

(assert (= (and b!4894495 c!831879) b!4894499))

(assert (= (and b!4894495 (not c!831879)) b!4894498))

(assert (= (and b!4894499 c!831874) b!4894496))

(assert (= (and b!4894499 (not c!831874)) b!4894491))

(assert (= (and b!4894498 c!831878) b!4894493))

(assert (= (and b!4894498 (not c!831878)) b!4894502))

(assert (= (and b!4894498 c!831875) b!4894500))

(assert (= (and b!4894498 (not c!831875)) b!4894490))

(assert (= (and b!4894500 c!831877) b!4894501))

(assert (= (and b!4894500 (not c!831877)) b!4894494))

(assert (= (or b!4894500 b!4894490) bm!339483))

(assert (= (or b!4894500 b!4894490) bm!339480))

(assert (= (or b!4894500 b!4894490) bm!339481))

(assert (= (or b!4894500 b!4894490) bm!339482))

(assert (= (or b!4894499 b!4894498) bm!339486))

(assert (= (or b!4894499 b!4894493) bm!339485))

(assert (= (or b!4894499 b!4894493) bm!339479))

(assert (= (or b!4894499 b!4894493) bm!339484))

(assert (= (and d!1572273 res!2090456) b!4894497))

(assert (= (and b!4894497 (not res!2090455)) b!4894492))

(declare-fun m!5899932 () Bool)

(assert (=> bm!339480 m!5899932))

(declare-fun m!5899934 () Bool)

(assert (=> bm!339481 m!5899934))

(declare-fun m!5899936 () Bool)

(assert (=> bm!339486 m!5899936))

(assert (=> bm!339485 m!5899010))

(assert (=> bm!339482 m!5898638))

(declare-fun m!5899938 () Bool)

(assert (=> bm!339482 m!5899938))

(declare-fun m!5899940 () Bool)

(assert (=> b!4894500 m!5899940))

(declare-fun m!5899942 () Bool)

(assert (=> b!4894498 m!5899942))

(declare-fun m!5899944 () Bool)

(assert (=> b!4894498 m!5899944))

(declare-fun m!5899946 () Bool)

(assert (=> b!4894498 m!5899946))

(declare-fun m!5899948 () Bool)

(assert (=> b!4894498 m!5899948))

(declare-fun m!5899950 () Bool)

(assert (=> b!4894498 m!5899950))

(declare-fun m!5899952 () Bool)

(assert (=> b!4894498 m!5899952))

(declare-fun m!5899954 () Bool)

(assert (=> b!4894498 m!5899954))

(declare-fun m!5899956 () Bool)

(assert (=> b!4894498 m!5899956))

(assert (=> b!4894498 m!5898638))

(assert (=> b!4894498 m!5899952))

(assert (=> b!4894498 m!5899942))

(declare-fun m!5899958 () Bool)

(assert (=> b!4894498 m!5899958))

(declare-fun m!5899960 () Bool)

(assert (=> b!4894498 m!5899960))

(assert (=> b!4894498 m!5899948))

(declare-fun m!5899962 () Bool)

(assert (=> b!4894498 m!5899962))

(assert (=> b!4894498 m!5899932))

(declare-fun m!5899964 () Bool)

(assert (=> b!4894498 m!5899964))

(declare-fun m!5899966 () Bool)

(assert (=> b!4894497 m!5899966))

(assert (=> bm!339484 m!5899040))

(assert (=> bm!339483 m!5899956))

(declare-fun m!5899968 () Bool)

(assert (=> b!4894492 m!5899968))

(assert (=> b!4894492 m!5899964))

(declare-fun m!5899970 () Bool)

(assert (=> bm!339479 m!5899970))

(declare-fun m!5899972 () Bool)

(assert (=> d!1572273 m!5899972))

(declare-fun m!5899974 () Bool)

(assert (=> d!1572273 m!5899974))

(declare-fun m!5899976 () Bool)

(assert (=> d!1572273 m!5899976))

(declare-fun m!5899978 () Bool)

(assert (=> d!1572273 m!5899978))

(declare-fun m!5899980 () Bool)

(assert (=> d!1572273 m!5899980))

(declare-fun m!5899982 () Bool)

(assert (=> d!1572273 m!5899982))

(declare-fun m!5899984 () Bool)

(assert (=> d!1572273 m!5899984))

(assert (=> d!1572273 m!5899976))

(assert (=> d!1572273 m!5899942))

(assert (=> bm!339456 d!1572273))

(declare-fun d!1572275 () Bool)

(assert (=> d!1572275 (= (isEmpty!30272 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))) (is-Nil!56408 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))))))

(assert (=> b!4894136 d!1572275))

(declare-fun d!1572277 () Bool)

(assert (=> d!1572277 (= (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))) (t!365672 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))

(assert (=> b!4894136 d!1572277))

(declare-fun b!4894503 () Bool)

(declare-fun res!2090461 () Bool)

(declare-fun e!3059737 () Bool)

(assert (=> b!4894503 (=> (not res!2090461) (not e!3059737))))

(assert (=> b!4894503 (= res!2090461 (isEmpty!30272 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091)))))))))

(declare-fun b!4894504 () Bool)

(declare-fun res!2090457 () Bool)

(assert (=> b!4894504 (=> (not res!2090457) (not e!3059737))))

(declare-fun call!339492 () Bool)

(assert (=> b!4894504 (= res!2090457 (not call!339492))))

(declare-fun b!4894505 () Bool)

(declare-fun e!3059734 () Bool)

(declare-fun lt!2006501 () Bool)

(assert (=> b!4894505 (= e!3059734 (= lt!2006501 call!339492))))

(declare-fun b!4894506 () Bool)

(declare-fun e!3059736 () Bool)

(declare-fun e!3059732 () Bool)

(assert (=> b!4894506 (= e!3059736 e!3059732)))

(declare-fun res!2090460 () Bool)

(assert (=> b!4894506 (=> res!2090460 e!3059732)))

(assert (=> b!4894506 (= res!2090460 call!339492)))

(declare-fun b!4894507 () Bool)

(declare-fun e!3059731 () Bool)

(assert (=> b!4894507 (= e!3059731 (nullable!4556 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091))))))))

(declare-fun b!4894508 () Bool)

(declare-fun e!3059733 () Bool)

(assert (=> b!4894508 (= e!3059733 e!3059736)))

(declare-fun res!2090459 () Bool)

(assert (=> b!4894508 (=> (not res!2090459) (not e!3059736))))

(assert (=> b!4894508 (= res!2090459 (not lt!2006501))))

(declare-fun b!4894509 () Bool)

(declare-fun e!3059735 () Bool)

(assert (=> b!4894509 (= e!3059735 (not lt!2006501))))

(declare-fun bm!339487 () Bool)

(assert (=> bm!339487 (= call!339492 (isEmpty!30272 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091))))))))

(declare-fun d!1572279 () Bool)

(assert (=> d!1572279 e!3059734))

(declare-fun c!831881 () Bool)

(assert (=> d!1572279 (= c!831881 (is-EmptyExpr!13250 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091))))))))

(assert (=> d!1572279 (= lt!2006501 e!3059731)))

(declare-fun c!831880 () Bool)

(assert (=> d!1572279 (= c!831880 (isEmpty!30272 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091))))))))

(assert (=> d!1572279 (validRegex!5883 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091)))))))

(assert (=> d!1572279 (= (matchR!6531 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091)))) (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091))))) lt!2006501)))

(declare-fun b!4894510 () Bool)

(assert (=> b!4894510 (= e!3059734 e!3059735)))

(declare-fun c!831882 () Bool)

(assert (=> b!4894510 (= c!831882 (is-EmptyLang!13250 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091))))))))

(declare-fun b!4894511 () Bool)

(declare-fun res!2090463 () Bool)

(assert (=> b!4894511 (=> res!2090463 e!3059732)))

(assert (=> b!4894511 (= res!2090463 (not (isEmpty!30272 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091))))))))))

(declare-fun b!4894512 () Bool)

(assert (=> b!4894512 (= e!3059732 (not (= (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091))))) (c!831695 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091))))))))))

(declare-fun b!4894513 () Bool)

(assert (=> b!4894513 (= e!3059731 (matchR!6531 (derivativeStep!3879 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091)))) (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091)))))) (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091)))))))))

(declare-fun b!4894514 () Bool)

(assert (=> b!4894514 (= e!3059737 (= (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006091))))) (c!831695 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091)))))))))

(declare-fun b!4894515 () Bool)

(declare-fun res!2090458 () Bool)

(assert (=> b!4894515 (=> res!2090458 e!3059733)))

(assert (=> b!4894515 (= res!2090458 e!3059737)))

(declare-fun res!2090464 () Bool)

(assert (=> b!4894515 (=> (not res!2090464) (not e!3059737))))

(assert (=> b!4894515 (= res!2090464 lt!2006501)))

(declare-fun b!4894516 () Bool)

(declare-fun res!2090462 () Bool)

(assert (=> b!4894516 (=> res!2090462 e!3059733)))

(assert (=> b!4894516 (= res!2090462 (not (is-ElementMatch!13250 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091)))))))))

(assert (=> b!4894516 (= e!3059735 e!3059733)))

(assert (= (and d!1572279 c!831880) b!4894507))

(assert (= (and d!1572279 (not c!831880)) b!4894513))

(assert (= (and d!1572279 c!831881) b!4894505))

(assert (= (and d!1572279 (not c!831881)) b!4894510))

(assert (= (and b!4894510 c!831882) b!4894509))

(assert (= (and b!4894510 (not c!831882)) b!4894516))

(assert (= (and b!4894516 (not res!2090462)) b!4894515))

(assert (= (and b!4894515 res!2090464) b!4894504))

(assert (= (and b!4894504 res!2090457) b!4894503))

(assert (= (and b!4894503 res!2090461) b!4894514))

(assert (= (and b!4894515 (not res!2090458)) b!4894508))

(assert (= (and b!4894508 res!2090459) b!4894506))

(assert (= (and b!4894506 (not res!2090460)) b!4894511))

(assert (= (and b!4894511 (not res!2090463)) b!4894512))

(assert (= (or b!4894505 b!4894504 b!4894506) bm!339487))

(assert (=> b!4894513 m!5898914))

(declare-fun m!5899986 () Bool)

(assert (=> b!4894513 m!5899986))

(assert (=> b!4894513 m!5899986))

(declare-fun m!5899988 () Bool)

(assert (=> b!4894513 m!5899988))

(assert (=> b!4894513 m!5898914))

(declare-fun m!5899990 () Bool)

(assert (=> b!4894513 m!5899990))

(assert (=> b!4894513 m!5899988))

(assert (=> b!4894513 m!5899990))

(declare-fun m!5899992 () Bool)

(assert (=> b!4894513 m!5899992))

(assert (=> b!4894511 m!5898914))

(assert (=> b!4894511 m!5899990))

(assert (=> b!4894511 m!5899990))

(declare-fun m!5899994 () Bool)

(assert (=> b!4894511 m!5899994))

(assert (=> bm!339487 m!5898914))

(declare-fun m!5899996 () Bool)

(assert (=> bm!339487 m!5899996))

(assert (=> b!4894503 m!5898914))

(assert (=> b!4894503 m!5899990))

(assert (=> b!4894503 m!5899990))

(assert (=> b!4894503 m!5899994))

(assert (=> d!1572279 m!5898914))

(assert (=> d!1572279 m!5899996))

(declare-fun m!5899998 () Bool)

(assert (=> d!1572279 m!5899998))

(assert (=> b!4894512 m!5898914))

(assert (=> b!4894512 m!5899986))

(declare-fun m!5900000 () Bool)

(assert (=> b!4894507 m!5900000))

(assert (=> b!4894514 m!5898914))

(assert (=> b!4894514 m!5899986))

(assert (=> b!4893788 d!1572279))

(assert (=> b!4893788 d!1572247))

(assert (=> b!4893788 d!1572243))

(assert (=> b!4893788 d!1572245))

(assert (=> b!4893837 d!1572269))

(declare-fun d!1572281 () Bool)

(declare-fun lt!2006502 () Bool)

(assert (=> d!1572281 (= lt!2006502 (set.member (rule!11365 (_1!33532 (get!19481 lt!2006086))) (content!10021 (t!365674 rulesArg!165))))))

(declare-fun e!3059738 () Bool)

(assert (=> d!1572281 (= lt!2006502 e!3059738)))

(declare-fun res!2090465 () Bool)

(assert (=> d!1572281 (=> (not res!2090465) (not e!3059738))))

(assert (=> d!1572281 (= res!2090465 (is-Cons!56410 (t!365674 rulesArg!165)))))

(assert (=> d!1572281 (= (contains!19438 (t!365674 rulesArg!165) (rule!11365 (_1!33532 (get!19481 lt!2006086)))) lt!2006502)))

(declare-fun b!4894517 () Bool)

(declare-fun e!3059739 () Bool)

(assert (=> b!4894517 (= e!3059738 e!3059739)))

(declare-fun res!2090466 () Bool)

(assert (=> b!4894517 (=> res!2090466 e!3059739)))

(assert (=> b!4894517 (= res!2090466 (= (h!62858 (t!365674 rulesArg!165)) (rule!11365 (_1!33532 (get!19481 lt!2006086)))))))

(declare-fun b!4894518 () Bool)

(assert (=> b!4894518 (= e!3059739 (contains!19438 (t!365674 (t!365674 rulesArg!165)) (rule!11365 (_1!33532 (get!19481 lt!2006086)))))))

(assert (= (and d!1572281 res!2090465) b!4894517))

(assert (= (and b!4894517 (not res!2090466)) b!4894518))

(declare-fun m!5900002 () Bool)

(assert (=> d!1572281 m!5900002))

(declare-fun m!5900004 () Bool)

(assert (=> d!1572281 m!5900004))

(declare-fun m!5900006 () Bool)

(assert (=> b!4894518 m!5900006))

(assert (=> b!4893775 d!1572281))

(assert (=> b!4893775 d!1572239))

(declare-fun b!4894522 () Bool)

(declare-fun e!3059741 () List!56532)

(assert (=> b!4894522 (= e!3059741 (++!12244 (list!17729 (left!40981 (c!831694 (_1!33535 lt!2006025)))) (list!17729 (right!41311 (c!831694 (_1!33535 lt!2006025))))))))

(declare-fun b!4894519 () Bool)

(declare-fun e!3059740 () List!56532)

(assert (=> b!4894519 (= e!3059740 Nil!56408)))

(declare-fun d!1572283 () Bool)

(declare-fun c!831883 () Bool)

(assert (=> d!1572283 (= c!831883 (is-Empty!14743 (c!831694 (_1!33535 lt!2006025))))))

(assert (=> d!1572283 (= (list!17729 (c!831694 (_1!33535 lt!2006025))) e!3059740)))

(declare-fun b!4894520 () Bool)

(assert (=> b!4894520 (= e!3059740 e!3059741)))

(declare-fun c!831884 () Bool)

(assert (=> b!4894520 (= c!831884 (is-Leaf!24548 (c!831694 (_1!33535 lt!2006025))))))

(declare-fun b!4894521 () Bool)

(assert (=> b!4894521 (= e!3059741 (list!17731 (xs!18059 (c!831694 (_1!33535 lt!2006025)))))))

(assert (= (and d!1572283 c!831883) b!4894519))

(assert (= (and d!1572283 (not c!831883)) b!4894520))

(assert (= (and b!4894520 c!831884) b!4894521))

(assert (= (and b!4894520 (not c!831884)) b!4894522))

(declare-fun m!5900008 () Bool)

(assert (=> b!4894522 m!5900008))

(declare-fun m!5900010 () Bool)

(assert (=> b!4894522 m!5900010))

(assert (=> b!4894522 m!5900008))

(assert (=> b!4894522 m!5900010))

(declare-fun m!5900012 () Bool)

(assert (=> b!4894522 m!5900012))

(declare-fun m!5900014 () Bool)

(assert (=> b!4894521 m!5900014))

(assert (=> d!1572015 d!1572283))

(declare-fun d!1572285 () Bool)

(declare-fun lt!2006505 () Bool)

(assert (=> d!1572285 (= lt!2006505 (isEmpty!30272 (list!17729 (left!40981 (c!831694 input!1236)))))))

(assert (=> d!1572285 (= lt!2006505 (= (size!37149 (left!40981 (c!831694 input!1236))) 0))))

(assert (=> d!1572285 (= (isEmpty!30275 (left!40981 (c!831694 input!1236))) lt!2006505)))

(declare-fun bs!1176149 () Bool)

(assert (= bs!1176149 d!1572285))

(assert (=> bs!1176149 m!5899372))

(assert (=> bs!1176149 m!5899372))

(declare-fun m!5900016 () Bool)

(assert (=> bs!1176149 m!5900016))

(assert (=> bs!1176149 m!5898976))

(assert (=> b!4894165 d!1572285))

(declare-fun b!4894523 () Bool)

(declare-fun res!2090471 () Bool)

(declare-fun e!3059748 () Bool)

(assert (=> b!4894523 (=> (not res!2090471) (not e!3059748))))

(assert (=> b!4894523 (= res!2090471 (isEmpty!30272 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2006390 lt!2006390 (size!37145 lt!2006390))))))))

(declare-fun b!4894524 () Bool)

(declare-fun res!2090467 () Bool)

(assert (=> b!4894524 (=> (not res!2090467) (not e!3059748))))

(declare-fun call!339493 () Bool)

(assert (=> b!4894524 (= res!2090467 (not call!339493))))

(declare-fun b!4894525 () Bool)

(declare-fun e!3059745 () Bool)

(declare-fun lt!2006506 () Bool)

(assert (=> b!4894525 (= e!3059745 (= lt!2006506 call!339493))))

(declare-fun b!4894526 () Bool)

(declare-fun e!3059747 () Bool)

(declare-fun e!3059743 () Bool)

(assert (=> b!4894526 (= e!3059747 e!3059743)))

(declare-fun res!2090470 () Bool)

(assert (=> b!4894526 (=> res!2090470 e!3059743)))

(assert (=> b!4894526 (= res!2090470 call!339493)))

(declare-fun b!4894527 () Bool)

(declare-fun e!3059742 () Bool)

(assert (=> b!4894527 (= e!3059742 (nullable!4556 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))))

(declare-fun b!4894528 () Bool)

(declare-fun e!3059744 () Bool)

(assert (=> b!4894528 (= e!3059744 e!3059747)))

(declare-fun res!2090469 () Bool)

(assert (=> b!4894528 (=> (not res!2090469) (not e!3059747))))

(assert (=> b!4894528 (= res!2090469 (not lt!2006506))))

(declare-fun b!4894529 () Bool)

(declare-fun e!3059746 () Bool)

(assert (=> b!4894529 (= e!3059746 (not lt!2006506))))

(declare-fun bm!339488 () Bool)

(assert (=> bm!339488 (= call!339493 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2006390 lt!2006390 (size!37145 lt!2006390)))))))

(declare-fun d!1572287 () Bool)

(assert (=> d!1572287 e!3059745))

(declare-fun c!831886 () Bool)

(assert (=> d!1572287 (= c!831886 (is-EmptyExpr!13250 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))))

(assert (=> d!1572287 (= lt!2006506 e!3059742)))

(declare-fun c!831885 () Bool)

(assert (=> d!1572287 (= c!831885 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2006390 lt!2006390 (size!37145 lt!2006390)))))))

(assert (=> d!1572287 (validRegex!5883 (regex!8175 (h!62858 (t!365674 rulesArg!165))))))

(assert (=> d!1572287 (= (matchR!6531 (regex!8175 (h!62858 (t!365674 rulesArg!165))) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2006390 lt!2006390 (size!37145 lt!2006390)))) lt!2006506)))

(declare-fun b!4894530 () Bool)

(assert (=> b!4894530 (= e!3059745 e!3059746)))

(declare-fun c!831887 () Bool)

(assert (=> b!4894530 (= c!831887 (is-EmptyLang!13250 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))))

(declare-fun b!4894531 () Bool)

(declare-fun res!2090473 () Bool)

(assert (=> b!4894531 (=> res!2090473 e!3059743)))

(assert (=> b!4894531 (= res!2090473 (not (isEmpty!30272 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2006390 lt!2006390 (size!37145 lt!2006390)))))))))

(declare-fun b!4894532 () Bool)

(assert (=> b!4894532 (= e!3059743 (not (= (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2006390 lt!2006390 (size!37145 lt!2006390)))) (c!831695 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))))))

(declare-fun b!4894533 () Bool)

(assert (=> b!4894533 (= e!3059742 (matchR!6531 (derivativeStep!3879 (regex!8175 (h!62858 (t!365674 rulesArg!165))) (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2006390 lt!2006390 (size!37145 lt!2006390))))) (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2006390 lt!2006390 (size!37145 lt!2006390))))))))

(declare-fun b!4894534 () Bool)

(assert (=> b!4894534 (= e!3059748 (= (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2006390 lt!2006390 (size!37145 lt!2006390)))) (c!831695 (regex!8175 (h!62858 (t!365674 rulesArg!165))))))))

(declare-fun b!4894535 () Bool)

(declare-fun res!2090468 () Bool)

(assert (=> b!4894535 (=> res!2090468 e!3059744)))

(assert (=> b!4894535 (= res!2090468 e!3059748)))

(declare-fun res!2090474 () Bool)

(assert (=> b!4894535 (=> (not res!2090474) (not e!3059748))))

(assert (=> b!4894535 (= res!2090474 lt!2006506)))

(declare-fun b!4894536 () Bool)

(declare-fun res!2090472 () Bool)

(assert (=> b!4894536 (=> res!2090472 e!3059744)))

(assert (=> b!4894536 (= res!2090472 (not (is-ElementMatch!13250 (regex!8175 (h!62858 (t!365674 rulesArg!165))))))))

(assert (=> b!4894536 (= e!3059746 e!3059744)))

(assert (= (and d!1572287 c!831885) b!4894527))

(assert (= (and d!1572287 (not c!831885)) b!4894533))

(assert (= (and d!1572287 c!831886) b!4894525))

(assert (= (and d!1572287 (not c!831886)) b!4894530))

(assert (= (and b!4894530 c!831887) b!4894529))

(assert (= (and b!4894530 (not c!831887)) b!4894536))

(assert (= (and b!4894536 (not res!2090472)) b!4894535))

(assert (= (and b!4894535 res!2090474) b!4894524))

(assert (= (and b!4894524 res!2090467) b!4894523))

(assert (= (and b!4894523 res!2090471) b!4894534))

(assert (= (and b!4894535 (not res!2090468)) b!4894528))

(assert (= (and b!4894528 res!2090469) b!4894526))

(assert (= (and b!4894526 (not res!2090470)) b!4894531))

(assert (= (and b!4894531 (not res!2090473)) b!4894532))

(assert (= (or b!4894525 b!4894524 b!4894526) bm!339488))

(declare-fun m!5900018 () Bool)

(assert (=> b!4894533 m!5900018))

(assert (=> b!4894533 m!5900018))

(declare-fun m!5900020 () Bool)

(assert (=> b!4894533 m!5900020))

(declare-fun m!5900022 () Bool)

(assert (=> b!4894533 m!5900022))

(assert (=> b!4894533 m!5900020))

(assert (=> b!4894533 m!5900022))

(declare-fun m!5900024 () Bool)

(assert (=> b!4894533 m!5900024))

(assert (=> b!4894531 m!5900022))

(assert (=> b!4894531 m!5900022))

(declare-fun m!5900026 () Bool)

(assert (=> b!4894531 m!5900026))

(assert (=> bm!339488 m!5899450))

(assert (=> b!4894523 m!5900022))

(assert (=> b!4894523 m!5900022))

(assert (=> b!4894523 m!5900026))

(assert (=> d!1572287 m!5899450))

(declare-fun m!5900028 () Bool)

(assert (=> d!1572287 m!5900028))

(assert (=> b!4894532 m!5900018))

(declare-fun m!5900030 () Bool)

(assert (=> b!4894527 m!5900030))

(assert (=> b!4894534 m!5900018))

(assert (=> b!4894199 d!1572287))

(declare-fun b!4894537 () Bool)

(declare-fun e!3059753 () tuple2!60466)

(assert (=> b!4894537 (= e!3059753 (tuple2!60467 Nil!56408 lt!2006390))))

(declare-fun b!4894538 () Bool)

(declare-fun e!3059755 () tuple2!60466)

(declare-fun call!339497 () tuple2!60466)

(assert (=> b!4894538 (= e!3059755 call!339497)))

(declare-fun b!4894540 () Bool)

(declare-fun e!3059750 () Bool)

(declare-fun lt!2006533 () tuple2!60466)

(assert (=> b!4894540 (= e!3059750 (>= (size!37145 (_1!33536 lt!2006533)) (size!37145 Nil!56408)))))

(declare-fun b!4894541 () Bool)

(declare-fun e!3059751 () Unit!146435)

(declare-fun Unit!146451 () Unit!146435)

(assert (=> b!4894541 (= e!3059751 Unit!146451)))

(declare-fun lt!2006520 () Unit!146435)

(declare-fun call!339501 () Unit!146435)

(assert (=> b!4894541 (= lt!2006520 call!339501)))

(declare-fun call!339499 () Bool)

(assert (=> b!4894541 call!339499))

(declare-fun lt!2006517 () Unit!146435)

(assert (=> b!4894541 (= lt!2006517 lt!2006520)))

(declare-fun lt!2006516 () Unit!146435)

(declare-fun call!339500 () Unit!146435)

(assert (=> b!4894541 (= lt!2006516 call!339500)))

(assert (=> b!4894541 (= lt!2006390 Nil!56408)))

(declare-fun lt!2006509 () Unit!146435)

(assert (=> b!4894541 (= lt!2006509 lt!2006516)))

(assert (=> b!4894541 false))

(declare-fun b!4894542 () Bool)

(declare-fun e!3059752 () tuple2!60466)

(declare-fun lt!2006511 () tuple2!60466)

(assert (=> b!4894542 (= e!3059752 lt!2006511)))

(declare-fun bm!339489 () Bool)

(assert (=> bm!339489 (= call!339500 (lemmaIsPrefixSameLengthThenSameList!1059 lt!2006390 Nil!56408 lt!2006390))))

(declare-fun b!4894543 () Bool)

(declare-fun e!3059756 () tuple2!60466)

(assert (=> b!4894543 (= e!3059753 e!3059756)))

(declare-fun c!831893 () Bool)

(assert (=> b!4894543 (= c!831893 (= (size!37145 Nil!56408) (size!37145 lt!2006390)))))

(declare-fun bm!339490 () Bool)

(declare-fun call!339496 () C!26698)

(assert (=> bm!339490 (= call!339496 (head!10456 lt!2006390))))

(declare-fun bm!339491 () Bool)

(declare-fun call!339498 () Regex!13250)

(assert (=> bm!339491 (= call!339498 (derivativeStep!3879 (regex!8175 (h!62858 (t!365674 rulesArg!165))) call!339496))))

(declare-fun call!339495 () List!56532)

(declare-fun lt!2006521 () List!56532)

(declare-fun bm!339492 () Bool)

(assert (=> bm!339492 (= call!339497 (findLongestMatchInner!1754 call!339498 lt!2006521 (+ (size!37145 Nil!56408) 1) call!339495 lt!2006390 (size!37145 lt!2006390)))))

(declare-fun bm!339493 () Bool)

(assert (=> bm!339493 (= call!339495 (tail!9602 lt!2006390))))

(declare-fun b!4894544 () Bool)

(declare-fun e!3059749 () tuple2!60466)

(assert (=> b!4894544 (= e!3059749 (tuple2!60467 Nil!56408 Nil!56408))))

(declare-fun b!4894545 () Bool)

(declare-fun e!3059754 () Bool)

(assert (=> b!4894545 (= e!3059754 e!3059750)))

(declare-fun res!2090475 () Bool)

(assert (=> b!4894545 (=> res!2090475 e!3059750)))

(assert (=> b!4894545 (= res!2090475 (isEmpty!30272 (_1!33536 lt!2006533)))))

(declare-fun b!4894546 () Bool)

(declare-fun c!831889 () Bool)

(declare-fun call!339494 () Bool)

(assert (=> b!4894546 (= c!831889 call!339494)))

(declare-fun lt!2006514 () Unit!146435)

(declare-fun lt!2006513 () Unit!146435)

(assert (=> b!4894546 (= lt!2006514 lt!2006513)))

(declare-fun lt!2006508 () C!26698)

(declare-fun lt!2006510 () List!56532)

(assert (=> b!4894546 (= (++!12244 (++!12244 Nil!56408 (Cons!56408 lt!2006508 Nil!56408)) lt!2006510) lt!2006390)))

(assert (=> b!4894546 (= lt!2006513 (lemmaMoveElementToOtherListKeepsConcatEq!1331 Nil!56408 lt!2006508 lt!2006510 lt!2006390))))

(assert (=> b!4894546 (= lt!2006510 (tail!9602 lt!2006390))))

(assert (=> b!4894546 (= lt!2006508 (head!10456 lt!2006390))))

(declare-fun lt!2006507 () Unit!146435)

(declare-fun lt!2006515 () Unit!146435)

(assert (=> b!4894546 (= lt!2006507 lt!2006515)))

(assert (=> b!4894546 (isPrefix!4895 (++!12244 Nil!56408 (Cons!56408 (head!10456 (getSuffix!2888 lt!2006390 Nil!56408)) Nil!56408)) lt!2006390)))

(assert (=> b!4894546 (= lt!2006515 (lemmaAddHeadSuffixToPrefixStillPrefix!713 Nil!56408 lt!2006390))))

(declare-fun lt!2006525 () Unit!146435)

(declare-fun lt!2006522 () Unit!146435)

(assert (=> b!4894546 (= lt!2006525 lt!2006522)))

(assert (=> b!4894546 (= lt!2006522 (lemmaAddHeadSuffixToPrefixStillPrefix!713 Nil!56408 lt!2006390))))

(assert (=> b!4894546 (= lt!2006521 (++!12244 Nil!56408 (Cons!56408 (head!10456 lt!2006390) Nil!56408)))))

(declare-fun lt!2006527 () Unit!146435)

(assert (=> b!4894546 (= lt!2006527 e!3059751)))

(declare-fun c!831892 () Bool)

(assert (=> b!4894546 (= c!831892 (= (size!37145 Nil!56408) (size!37145 lt!2006390)))))

(declare-fun lt!2006519 () Unit!146435)

(declare-fun lt!2006534 () Unit!146435)

(assert (=> b!4894546 (= lt!2006519 lt!2006534)))

(assert (=> b!4894546 (<= (size!37145 Nil!56408) (size!37145 lt!2006390))))

(assert (=> b!4894546 (= lt!2006534 (lemmaIsPrefixThenSmallerEqSize!625 Nil!56408 lt!2006390))))

(assert (=> b!4894546 (= e!3059756 e!3059755)))

(declare-fun bm!339494 () Bool)

(assert (=> bm!339494 (= call!339499 (isPrefix!4895 lt!2006390 lt!2006390))))

(declare-fun bm!339495 () Bool)

(assert (=> bm!339495 (= call!339501 (lemmaIsPrefixRefl!3292 lt!2006390 lt!2006390))))

(declare-fun b!4894547 () Bool)

(declare-fun c!831888 () Bool)

(assert (=> b!4894547 (= c!831888 call!339494)))

(declare-fun lt!2006526 () Unit!146435)

(declare-fun lt!2006524 () Unit!146435)

(assert (=> b!4894547 (= lt!2006526 lt!2006524)))

(assert (=> b!4894547 (= lt!2006390 Nil!56408)))

(assert (=> b!4894547 (= lt!2006524 call!339500)))

(declare-fun lt!2006512 () Unit!146435)

(declare-fun lt!2006518 () Unit!146435)

(assert (=> b!4894547 (= lt!2006512 lt!2006518)))

(assert (=> b!4894547 call!339499))

(assert (=> b!4894547 (= lt!2006518 call!339501)))

(assert (=> b!4894547 (= e!3059756 e!3059749)))

(declare-fun b!4894548 () Bool)

(assert (=> b!4894548 (= e!3059755 e!3059752)))

(assert (=> b!4894548 (= lt!2006511 call!339497)))

(declare-fun c!831891 () Bool)

(assert (=> b!4894548 (= c!831891 (isEmpty!30272 (_1!33536 lt!2006511)))))

(declare-fun b!4894539 () Bool)

(assert (=> b!4894539 (= e!3059749 (tuple2!60467 Nil!56408 lt!2006390))))

(declare-fun d!1572289 () Bool)

(assert (=> d!1572289 e!3059754))

(declare-fun res!2090476 () Bool)

(assert (=> d!1572289 (=> (not res!2090476) (not e!3059754))))

(assert (=> d!1572289 (= res!2090476 (= (++!12244 (_1!33536 lt!2006533) (_2!33536 lt!2006533)) lt!2006390))))

(assert (=> d!1572289 (= lt!2006533 e!3059753)))

(declare-fun c!831890 () Bool)

(assert (=> d!1572289 (= c!831890 (lostCause!1087 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))))

(declare-fun lt!2006530 () Unit!146435)

(declare-fun Unit!146452 () Unit!146435)

(assert (=> d!1572289 (= lt!2006530 Unit!146452)))

(assert (=> d!1572289 (= (getSuffix!2888 lt!2006390 Nil!56408) lt!2006390)))

(declare-fun lt!2006532 () Unit!146435)

(declare-fun lt!2006531 () Unit!146435)

(assert (=> d!1572289 (= lt!2006532 lt!2006531)))

(declare-fun lt!2006529 () List!56532)

(assert (=> d!1572289 (= lt!2006390 lt!2006529)))

(assert (=> d!1572289 (= lt!2006531 (lemmaSamePrefixThenSameSuffix!2304 Nil!56408 lt!2006390 Nil!56408 lt!2006529 lt!2006390))))

(assert (=> d!1572289 (= lt!2006529 (getSuffix!2888 lt!2006390 Nil!56408))))

(declare-fun lt!2006528 () Unit!146435)

(declare-fun lt!2006523 () Unit!146435)

(assert (=> d!1572289 (= lt!2006528 lt!2006523)))

(assert (=> d!1572289 (isPrefix!4895 Nil!56408 (++!12244 Nil!56408 lt!2006390))))

(assert (=> d!1572289 (= lt!2006523 (lemmaConcatTwoListThenFirstIsPrefix!3124 Nil!56408 lt!2006390))))

(assert (=> d!1572289 (validRegex!5883 (regex!8175 (h!62858 (t!365674 rulesArg!165))))))

(assert (=> d!1572289 (= (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2006390 lt!2006390 (size!37145 lt!2006390)) lt!2006533)))

(declare-fun bm!339496 () Bool)

(assert (=> bm!339496 (= call!339494 (nullable!4556 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))))

(declare-fun b!4894549 () Bool)

(assert (=> b!4894549 (= e!3059752 (tuple2!60467 Nil!56408 lt!2006390))))

(declare-fun b!4894550 () Bool)

(declare-fun Unit!146453 () Unit!146435)

(assert (=> b!4894550 (= e!3059751 Unit!146453)))

(assert (= (and d!1572289 c!831890) b!4894537))

(assert (= (and d!1572289 (not c!831890)) b!4894543))

(assert (= (and b!4894543 c!831893) b!4894547))

(assert (= (and b!4894543 (not c!831893)) b!4894546))

(assert (= (and b!4894547 c!831888) b!4894544))

(assert (= (and b!4894547 (not c!831888)) b!4894539))

(assert (= (and b!4894546 c!831892) b!4894541))

(assert (= (and b!4894546 (not c!831892)) b!4894550))

(assert (= (and b!4894546 c!831889) b!4894548))

(assert (= (and b!4894546 (not c!831889)) b!4894538))

(assert (= (and b!4894548 c!831891) b!4894549))

(assert (= (and b!4894548 (not c!831891)) b!4894542))

(assert (= (or b!4894548 b!4894538) bm!339493))

(assert (= (or b!4894548 b!4894538) bm!339490))

(assert (= (or b!4894548 b!4894538) bm!339491))

(assert (= (or b!4894548 b!4894538) bm!339492))

(assert (= (or b!4894547 b!4894546) bm!339496))

(assert (= (or b!4894547 b!4894541) bm!339495))

(assert (= (or b!4894547 b!4894541) bm!339489))

(assert (= (or b!4894547 b!4894541) bm!339494))

(assert (= (and d!1572289 res!2090476) b!4894545))

(assert (= (and b!4894545 (not res!2090475)) b!4894540))

(declare-fun m!5900032 () Bool)

(assert (=> bm!339490 m!5900032))

(declare-fun m!5900034 () Bool)

(assert (=> bm!339491 m!5900034))

(assert (=> bm!339496 m!5900030))

(declare-fun m!5900036 () Bool)

(assert (=> bm!339495 m!5900036))

(assert (=> bm!339492 m!5899442))

(declare-fun m!5900038 () Bool)

(assert (=> bm!339492 m!5900038))

(declare-fun m!5900040 () Bool)

(assert (=> b!4894548 m!5900040))

(declare-fun m!5900042 () Bool)

(assert (=> b!4894546 m!5900042))

(declare-fun m!5900044 () Bool)

(assert (=> b!4894546 m!5900044))

(declare-fun m!5900046 () Bool)

(assert (=> b!4894546 m!5900046))

(declare-fun m!5900048 () Bool)

(assert (=> b!4894546 m!5900048))

(declare-fun m!5900050 () Bool)

(assert (=> b!4894546 m!5900050))

(declare-fun m!5900052 () Bool)

(assert (=> b!4894546 m!5900052))

(declare-fun m!5900054 () Bool)

(assert (=> b!4894546 m!5900054))

(declare-fun m!5900056 () Bool)

(assert (=> b!4894546 m!5900056))

(assert (=> b!4894546 m!5899442))

(assert (=> b!4894546 m!5900052))

(assert (=> b!4894546 m!5900042))

(declare-fun m!5900058 () Bool)

(assert (=> b!4894546 m!5900058))

(declare-fun m!5900060 () Bool)

(assert (=> b!4894546 m!5900060))

(assert (=> b!4894546 m!5900048))

(declare-fun m!5900062 () Bool)

(assert (=> b!4894546 m!5900062))

(assert (=> b!4894546 m!5900032))

(assert (=> b!4894546 m!5898636))

(declare-fun m!5900064 () Bool)

(assert (=> b!4894545 m!5900064))

(declare-fun m!5900066 () Bool)

(assert (=> bm!339494 m!5900066))

(assert (=> bm!339493 m!5900056))

(declare-fun m!5900068 () Bool)

(assert (=> b!4894540 m!5900068))

(assert (=> b!4894540 m!5898636))

(declare-fun m!5900070 () Bool)

(assert (=> bm!339489 m!5900070))

(declare-fun m!5900072 () Bool)

(assert (=> d!1572289 m!5900072))

(assert (=> d!1572289 m!5900028))

(declare-fun m!5900074 () Bool)

(assert (=> d!1572289 m!5900074))

(declare-fun m!5900076 () Bool)

(assert (=> d!1572289 m!5900076))

(declare-fun m!5900078 () Bool)

(assert (=> d!1572289 m!5900078))

(declare-fun m!5900080 () Bool)

(assert (=> d!1572289 m!5900080))

(declare-fun m!5900082 () Bool)

(assert (=> d!1572289 m!5900082))

(assert (=> d!1572289 m!5900074))

(assert (=> d!1572289 m!5900042))

(assert (=> b!4894199 d!1572289))

(assert (=> b!4894199 d!1572025))

(declare-fun d!1572291 () Bool)

(declare-fun lt!2006535 () Int)

(assert (=> d!1572291 (>= lt!2006535 0)))

(declare-fun e!3059757 () Int)

(assert (=> d!1572291 (= lt!2006535 e!3059757)))

(declare-fun c!831894 () Bool)

(assert (=> d!1572291 (= c!831894 (is-Nil!56408 lt!2006390))))

(assert (=> d!1572291 (= (size!37145 lt!2006390) lt!2006535)))

(declare-fun b!4894551 () Bool)

(assert (=> b!4894551 (= e!3059757 0)))

(declare-fun b!4894552 () Bool)

(assert (=> b!4894552 (= e!3059757 (+ 1 (size!37145 (t!365672 lt!2006390))))))

(assert (= (and d!1572291 c!831894) b!4894551))

(assert (= (and d!1572291 (not c!831894)) b!4894552))

(declare-fun m!5900084 () Bool)

(assert (=> b!4894552 m!5900084))

(assert (=> b!4894199 d!1572291))

(assert (=> b!4894008 d!1572091))

(assert (=> b!4894008 d!1571993))

(assert (=> b!4894008 d!1572025))

(assert (=> b!4894008 d!1571991))

(declare-fun b!4894553 () Bool)

(declare-fun res!2090481 () Bool)

(declare-fun e!3059764 () Bool)

(assert (=> b!4894553 (=> (not res!2090481) (not e!3059764))))

(assert (=> b!4894553 (= res!2090481 (isEmpty!30272 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844))))))))

(declare-fun b!4894554 () Bool)

(declare-fun res!2090477 () Bool)

(assert (=> b!4894554 (=> (not res!2090477) (not e!3059764))))

(declare-fun call!339502 () Bool)

(assert (=> b!4894554 (= res!2090477 (not call!339502))))

(declare-fun b!4894555 () Bool)

(declare-fun e!3059761 () Bool)

(declare-fun lt!2006536 () Bool)

(assert (=> b!4894555 (= e!3059761 (= lt!2006536 call!339502))))

(declare-fun b!4894556 () Bool)

(declare-fun e!3059763 () Bool)

(declare-fun e!3059759 () Bool)

(assert (=> b!4894556 (= e!3059763 e!3059759)))

(declare-fun res!2090480 () Bool)

(assert (=> b!4894556 (=> res!2090480 e!3059759)))

(assert (=> b!4894556 (= res!2090480 call!339502)))

(declare-fun b!4894557 () Bool)

(declare-fun e!3059758 () Bool)

(assert (=> b!4894557 (= e!3059758 (nullable!4556 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun b!4894558 () Bool)

(declare-fun e!3059760 () Bool)

(assert (=> b!4894558 (= e!3059760 e!3059763)))

(declare-fun res!2090479 () Bool)

(assert (=> b!4894558 (=> (not res!2090479) (not e!3059763))))

(assert (=> b!4894558 (= res!2090479 (not lt!2006536))))

(declare-fun b!4894559 () Bool)

(declare-fun e!3059762 () Bool)

(assert (=> b!4894559 (= e!3059762 (not lt!2006536))))

(declare-fun bm!339497 () Bool)

(assert (=> bm!339497 (= call!339502 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))))))

(declare-fun d!1572293 () Bool)

(assert (=> d!1572293 e!3059761))

(declare-fun c!831896 () Bool)

(assert (=> d!1572293 (= c!831896 (is-EmptyExpr!13250 (regex!8175 (h!62858 rulesArg!165))))))

(assert (=> d!1572293 (= lt!2006536 e!3059758)))

(declare-fun c!831895 () Bool)

(assert (=> d!1572293 (= c!831895 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))))))

(assert (=> d!1572293 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165)))))

(assert (=> d!1572293 (= (matchR!6531 (regex!8175 (h!62858 rulesArg!165)) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))) lt!2006536)))

(declare-fun b!4894560 () Bool)

(assert (=> b!4894560 (= e!3059761 e!3059762)))

(declare-fun c!831897 () Bool)

(assert (=> b!4894560 (= c!831897 (is-EmptyLang!13250 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun b!4894561 () Bool)

(declare-fun res!2090483 () Bool)

(assert (=> b!4894561 (=> res!2090483 e!3059759)))

(assert (=> b!4894561 (= res!2090483 (not (isEmpty!30272 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))))))))

(declare-fun b!4894562 () Bool)

(assert (=> b!4894562 (= e!3059759 (not (= (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))) (c!831695 (regex!8175 (h!62858 rulesArg!165))))))))

(declare-fun b!4894563 () Bool)

(assert (=> b!4894563 (= e!3059758 (matchR!6531 (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844))))) (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844))))))))

(declare-fun b!4894564 () Bool)

(assert (=> b!4894564 (= e!3059764 (= (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))) (c!831695 (regex!8175 (h!62858 rulesArg!165)))))))

(declare-fun b!4894565 () Bool)

(declare-fun res!2090478 () Bool)

(assert (=> b!4894565 (=> res!2090478 e!3059760)))

(assert (=> b!4894565 (= res!2090478 e!3059764)))

(declare-fun res!2090484 () Bool)

(assert (=> b!4894565 (=> (not res!2090484) (not e!3059764))))

(assert (=> b!4894565 (= res!2090484 lt!2006536)))

(declare-fun b!4894566 () Bool)

(declare-fun res!2090482 () Bool)

(assert (=> b!4894566 (=> res!2090482 e!3059760)))

(assert (=> b!4894566 (= res!2090482 (not (is-ElementMatch!13250 (regex!8175 (h!62858 rulesArg!165)))))))

(assert (=> b!4894566 (= e!3059762 e!3059760)))

(assert (= (and d!1572293 c!831895) b!4894557))

(assert (= (and d!1572293 (not c!831895)) b!4894563))

(assert (= (and d!1572293 c!831896) b!4894555))

(assert (= (and d!1572293 (not c!831896)) b!4894560))

(assert (= (and b!4894560 c!831897) b!4894559))

(assert (= (and b!4894560 (not c!831897)) b!4894566))

(assert (= (and b!4894566 (not res!2090482)) b!4894565))

(assert (= (and b!4894565 res!2090484) b!4894554))

(assert (= (and b!4894554 res!2090477) b!4894553))

(assert (= (and b!4894553 res!2090481) b!4894564))

(assert (= (and b!4894565 (not res!2090478)) b!4894558))

(assert (= (and b!4894558 res!2090479) b!4894556))

(assert (= (and b!4894556 (not res!2090480)) b!4894561))

(assert (= (and b!4894561 (not res!2090483)) b!4894562))

(assert (= (or b!4894555 b!4894554 b!4894556) bm!339497))

(declare-fun m!5900086 () Bool)

(assert (=> b!4894563 m!5900086))

(assert (=> b!4894563 m!5900086))

(declare-fun m!5900088 () Bool)

(assert (=> b!4894563 m!5900088))

(declare-fun m!5900090 () Bool)

(assert (=> b!4894563 m!5900090))

(assert (=> b!4894563 m!5900088))

(assert (=> b!4894563 m!5900090))

(declare-fun m!5900092 () Bool)

(assert (=> b!4894563 m!5900092))

(assert (=> b!4894561 m!5900090))

(assert (=> b!4894561 m!5900090))

(declare-fun m!5900094 () Bool)

(assert (=> b!4894561 m!5900094))

(assert (=> bm!339497 m!5899282))

(assert (=> b!4894553 m!5900090))

(assert (=> b!4894553 m!5900090))

(assert (=> b!4894553 m!5900094))

(assert (=> d!1572293 m!5899282))

(assert (=> d!1572293 m!5898834))

(assert (=> b!4894562 m!5900086))

(assert (=> b!4894557 m!5898840))

(assert (=> b!4894564 m!5900086))

(assert (=> b!4894102 d!1572293))

(declare-fun b!4894567 () Bool)

(declare-fun e!3059769 () tuple2!60466)

(assert (=> b!4894567 (= e!3059769 (tuple2!60467 Nil!56408 lt!2005844))))

(declare-fun b!4894568 () Bool)

(declare-fun e!3059771 () tuple2!60466)

(declare-fun call!339506 () tuple2!60466)

(assert (=> b!4894568 (= e!3059771 call!339506)))

(declare-fun b!4894570 () Bool)

(declare-fun e!3059766 () Bool)

(declare-fun lt!2006563 () tuple2!60466)

(assert (=> b!4894570 (= e!3059766 (>= (size!37145 (_1!33536 lt!2006563)) (size!37145 Nil!56408)))))

(declare-fun b!4894571 () Bool)

(declare-fun e!3059767 () Unit!146435)

(declare-fun Unit!146454 () Unit!146435)

(assert (=> b!4894571 (= e!3059767 Unit!146454)))

(declare-fun lt!2006550 () Unit!146435)

(declare-fun call!339510 () Unit!146435)

(assert (=> b!4894571 (= lt!2006550 call!339510)))

(declare-fun call!339508 () Bool)

(assert (=> b!4894571 call!339508))

(declare-fun lt!2006547 () Unit!146435)

(assert (=> b!4894571 (= lt!2006547 lt!2006550)))

(declare-fun lt!2006546 () Unit!146435)

(declare-fun call!339509 () Unit!146435)

(assert (=> b!4894571 (= lt!2006546 call!339509)))

(assert (=> b!4894571 (= lt!2005844 Nil!56408)))

(declare-fun lt!2006539 () Unit!146435)

(assert (=> b!4894571 (= lt!2006539 lt!2006546)))

(assert (=> b!4894571 false))

(declare-fun b!4894572 () Bool)

(declare-fun e!3059768 () tuple2!60466)

(declare-fun lt!2006541 () tuple2!60466)

(assert (=> b!4894572 (= e!3059768 lt!2006541)))

(declare-fun bm!339498 () Bool)

(assert (=> bm!339498 (= call!339509 (lemmaIsPrefixSameLengthThenSameList!1059 lt!2005844 Nil!56408 lt!2005844))))

(declare-fun b!4894573 () Bool)

(declare-fun e!3059772 () tuple2!60466)

(assert (=> b!4894573 (= e!3059769 e!3059772)))

(declare-fun c!831903 () Bool)

(assert (=> b!4894573 (= c!831903 (= (size!37145 Nil!56408) (size!37145 lt!2005844)))))

(declare-fun bm!339499 () Bool)

(declare-fun call!339505 () C!26698)

(assert (=> bm!339499 (= call!339505 (head!10456 lt!2005844))))

(declare-fun bm!339500 () Bool)

(declare-fun call!339507 () Regex!13250)

(assert (=> bm!339500 (= call!339507 (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) call!339505))))

(declare-fun bm!339501 () Bool)

(declare-fun call!339504 () List!56532)

(declare-fun lt!2006551 () List!56532)

(assert (=> bm!339501 (= call!339506 (findLongestMatchInner!1754 call!339507 lt!2006551 (+ (size!37145 Nil!56408) 1) call!339504 lt!2005844 (size!37145 lt!2005844)))))

(declare-fun bm!339502 () Bool)

(assert (=> bm!339502 (= call!339504 (tail!9602 lt!2005844))))

(declare-fun b!4894574 () Bool)

(declare-fun e!3059765 () tuple2!60466)

(assert (=> b!4894574 (= e!3059765 (tuple2!60467 Nil!56408 Nil!56408))))

(declare-fun b!4894575 () Bool)

(declare-fun e!3059770 () Bool)

(assert (=> b!4894575 (= e!3059770 e!3059766)))

(declare-fun res!2090485 () Bool)

(assert (=> b!4894575 (=> res!2090485 e!3059766)))

(assert (=> b!4894575 (= res!2090485 (isEmpty!30272 (_1!33536 lt!2006563)))))

(declare-fun b!4894576 () Bool)

(declare-fun c!831899 () Bool)

(declare-fun call!339503 () Bool)

(assert (=> b!4894576 (= c!831899 call!339503)))

(declare-fun lt!2006544 () Unit!146435)

(declare-fun lt!2006543 () Unit!146435)

(assert (=> b!4894576 (= lt!2006544 lt!2006543)))

(declare-fun lt!2006538 () C!26698)

(declare-fun lt!2006540 () List!56532)

(assert (=> b!4894576 (= (++!12244 (++!12244 Nil!56408 (Cons!56408 lt!2006538 Nil!56408)) lt!2006540) lt!2005844)))

(assert (=> b!4894576 (= lt!2006543 (lemmaMoveElementToOtherListKeepsConcatEq!1331 Nil!56408 lt!2006538 lt!2006540 lt!2005844))))

(assert (=> b!4894576 (= lt!2006540 (tail!9602 lt!2005844))))

(assert (=> b!4894576 (= lt!2006538 (head!10456 lt!2005844))))

(declare-fun lt!2006537 () Unit!146435)

(declare-fun lt!2006545 () Unit!146435)

(assert (=> b!4894576 (= lt!2006537 lt!2006545)))

(assert (=> b!4894576 (isPrefix!4895 (++!12244 Nil!56408 (Cons!56408 (head!10456 (getSuffix!2888 lt!2005844 Nil!56408)) Nil!56408)) lt!2005844)))

(assert (=> b!4894576 (= lt!2006545 (lemmaAddHeadSuffixToPrefixStillPrefix!713 Nil!56408 lt!2005844))))

(declare-fun lt!2006555 () Unit!146435)

(declare-fun lt!2006552 () Unit!146435)

(assert (=> b!4894576 (= lt!2006555 lt!2006552)))

(assert (=> b!4894576 (= lt!2006552 (lemmaAddHeadSuffixToPrefixStillPrefix!713 Nil!56408 lt!2005844))))

(assert (=> b!4894576 (= lt!2006551 (++!12244 Nil!56408 (Cons!56408 (head!10456 lt!2005844) Nil!56408)))))

(declare-fun lt!2006557 () Unit!146435)

(assert (=> b!4894576 (= lt!2006557 e!3059767)))

(declare-fun c!831902 () Bool)

(assert (=> b!4894576 (= c!831902 (= (size!37145 Nil!56408) (size!37145 lt!2005844)))))

(declare-fun lt!2006549 () Unit!146435)

(declare-fun lt!2006564 () Unit!146435)

(assert (=> b!4894576 (= lt!2006549 lt!2006564)))

(assert (=> b!4894576 (<= (size!37145 Nil!56408) (size!37145 lt!2005844))))

(assert (=> b!4894576 (= lt!2006564 (lemmaIsPrefixThenSmallerEqSize!625 Nil!56408 lt!2005844))))

(assert (=> b!4894576 (= e!3059772 e!3059771)))

(declare-fun bm!339503 () Bool)

(assert (=> bm!339503 (= call!339508 (isPrefix!4895 lt!2005844 lt!2005844))))

(declare-fun bm!339504 () Bool)

(assert (=> bm!339504 (= call!339510 (lemmaIsPrefixRefl!3292 lt!2005844 lt!2005844))))

(declare-fun b!4894577 () Bool)

(declare-fun c!831898 () Bool)

(assert (=> b!4894577 (= c!831898 call!339503)))

(declare-fun lt!2006556 () Unit!146435)

(declare-fun lt!2006554 () Unit!146435)

(assert (=> b!4894577 (= lt!2006556 lt!2006554)))

(assert (=> b!4894577 (= lt!2005844 Nil!56408)))

(assert (=> b!4894577 (= lt!2006554 call!339509)))

(declare-fun lt!2006542 () Unit!146435)

(declare-fun lt!2006548 () Unit!146435)

(assert (=> b!4894577 (= lt!2006542 lt!2006548)))

(assert (=> b!4894577 call!339508))

(assert (=> b!4894577 (= lt!2006548 call!339510)))

(assert (=> b!4894577 (= e!3059772 e!3059765)))

(declare-fun b!4894578 () Bool)

(assert (=> b!4894578 (= e!3059771 e!3059768)))

(assert (=> b!4894578 (= lt!2006541 call!339506)))

(declare-fun c!831901 () Bool)

(assert (=> b!4894578 (= c!831901 (isEmpty!30272 (_1!33536 lt!2006541)))))

(declare-fun b!4894569 () Bool)

(assert (=> b!4894569 (= e!3059765 (tuple2!60467 Nil!56408 lt!2005844))))

(declare-fun d!1572295 () Bool)

(assert (=> d!1572295 e!3059770))

(declare-fun res!2090486 () Bool)

(assert (=> d!1572295 (=> (not res!2090486) (not e!3059770))))

(assert (=> d!1572295 (= res!2090486 (= (++!12244 (_1!33536 lt!2006563) (_2!33536 lt!2006563)) lt!2005844))))

(assert (=> d!1572295 (= lt!2006563 e!3059769)))

(declare-fun c!831900 () Bool)

(assert (=> d!1572295 (= c!831900 (lostCause!1087 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun lt!2006560 () Unit!146435)

(declare-fun Unit!146455 () Unit!146435)

(assert (=> d!1572295 (= lt!2006560 Unit!146455)))

(assert (=> d!1572295 (= (getSuffix!2888 lt!2005844 Nil!56408) lt!2005844)))

(declare-fun lt!2006562 () Unit!146435)

(declare-fun lt!2006561 () Unit!146435)

(assert (=> d!1572295 (= lt!2006562 lt!2006561)))

(declare-fun lt!2006559 () List!56532)

(assert (=> d!1572295 (= lt!2005844 lt!2006559)))

(assert (=> d!1572295 (= lt!2006561 (lemmaSamePrefixThenSameSuffix!2304 Nil!56408 lt!2005844 Nil!56408 lt!2006559 lt!2005844))))

(assert (=> d!1572295 (= lt!2006559 (getSuffix!2888 lt!2005844 Nil!56408))))

(declare-fun lt!2006558 () Unit!146435)

(declare-fun lt!2006553 () Unit!146435)

(assert (=> d!1572295 (= lt!2006558 lt!2006553)))

(assert (=> d!1572295 (isPrefix!4895 Nil!56408 (++!12244 Nil!56408 lt!2005844))))

(assert (=> d!1572295 (= lt!2006553 (lemmaConcatTwoListThenFirstIsPrefix!3124 Nil!56408 lt!2005844))))

(assert (=> d!1572295 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165)))))

(assert (=> d!1572295 (= (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)) lt!2006563)))

(declare-fun bm!339505 () Bool)

(assert (=> bm!339505 (= call!339503 (nullable!4556 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun b!4894579 () Bool)

(assert (=> b!4894579 (= e!3059768 (tuple2!60467 Nil!56408 lt!2005844))))

(declare-fun b!4894580 () Bool)

(declare-fun Unit!146456 () Unit!146435)

(assert (=> b!4894580 (= e!3059767 Unit!146456)))

(assert (= (and d!1572295 c!831900) b!4894567))

(assert (= (and d!1572295 (not c!831900)) b!4894573))

(assert (= (and b!4894573 c!831903) b!4894577))

(assert (= (and b!4894573 (not c!831903)) b!4894576))

(assert (= (and b!4894577 c!831898) b!4894574))

(assert (= (and b!4894577 (not c!831898)) b!4894569))

(assert (= (and b!4894576 c!831902) b!4894571))

(assert (= (and b!4894576 (not c!831902)) b!4894580))

(assert (= (and b!4894576 c!831899) b!4894578))

(assert (= (and b!4894576 (not c!831899)) b!4894568))

(assert (= (and b!4894578 c!831901) b!4894579))

(assert (= (and b!4894578 (not c!831901)) b!4894572))

(assert (= (or b!4894578 b!4894568) bm!339502))

(assert (= (or b!4894578 b!4894568) bm!339499))

(assert (= (or b!4894578 b!4894568) bm!339500))

(assert (= (or b!4894578 b!4894568) bm!339501))

(assert (= (or b!4894577 b!4894576) bm!339505))

(assert (= (or b!4894577 b!4894571) bm!339504))

(assert (= (or b!4894577 b!4894571) bm!339498))

(assert (= (or b!4894577 b!4894571) bm!339503))

(assert (= (and d!1572295 res!2090486) b!4894575))

(assert (= (and b!4894575 (not res!2090485)) b!4894570))

(assert (=> bm!339499 m!5898540))

(declare-fun m!5900096 () Bool)

(assert (=> bm!339500 m!5900096))

(assert (=> bm!339505 m!5898840))

(assert (=> bm!339504 m!5898442))

(assert (=> bm!339501 m!5898538))

(declare-fun m!5900098 () Bool)

(assert (=> bm!339501 m!5900098))

(declare-fun m!5900100 () Bool)

(assert (=> b!4894578 m!5900100))

(declare-fun m!5900102 () Bool)

(assert (=> b!4894576 m!5900102))

(declare-fun m!5900104 () Bool)

(assert (=> b!4894576 m!5900104))

(declare-fun m!5900106 () Bool)

(assert (=> b!4894576 m!5900106))

(declare-fun m!5900108 () Bool)

(assert (=> b!4894576 m!5900108))

(declare-fun m!5900110 () Bool)

(assert (=> b!4894576 m!5900110))

(declare-fun m!5900112 () Bool)

(assert (=> b!4894576 m!5900112))

(declare-fun m!5900114 () Bool)

(assert (=> b!4894576 m!5900114))

(assert (=> b!4894576 m!5898542))

(assert (=> b!4894576 m!5898538))

(assert (=> b!4894576 m!5900112))

(assert (=> b!4894576 m!5900102))

(declare-fun m!5900116 () Bool)

(assert (=> b!4894576 m!5900116))

(declare-fun m!5900118 () Bool)

(assert (=> b!4894576 m!5900118))

(assert (=> b!4894576 m!5900108))

(declare-fun m!5900120 () Bool)

(assert (=> b!4894576 m!5900120))

(assert (=> b!4894576 m!5898540))

(assert (=> b!4894576 m!5898636))

(declare-fun m!5900122 () Bool)

(assert (=> b!4894575 m!5900122))

(assert (=> bm!339503 m!5898440))

(assert (=> bm!339502 m!5898542))

(declare-fun m!5900124 () Bool)

(assert (=> b!4894570 m!5900124))

(assert (=> b!4894570 m!5898636))

(declare-fun m!5900126 () Bool)

(assert (=> bm!339498 m!5900126))

(declare-fun m!5900128 () Bool)

(assert (=> d!1572295 m!5900128))

(assert (=> d!1572295 m!5898834))

(declare-fun m!5900130 () Bool)

(assert (=> d!1572295 m!5900130))

(declare-fun m!5900132 () Bool)

(assert (=> d!1572295 m!5900132))

(assert (=> d!1572295 m!5899052))

(declare-fun m!5900134 () Bool)

(assert (=> d!1572295 m!5900134))

(declare-fun m!5900136 () Bool)

(assert (=> d!1572295 m!5900136))

(assert (=> d!1572295 m!5900130))

(assert (=> d!1572295 m!5900102))

(assert (=> b!4894102 d!1572295))

(assert (=> b!4894102 d!1572025))

(assert (=> b!4894102 d!1571985))

(declare-fun b!4894584 () Bool)

(declare-fun e!3059773 () Bool)

(assert (=> b!4894584 (= e!3059773 (>= (size!37145 lt!2006027) (size!37145 lt!2006027)))))

(declare-fun d!1572297 () Bool)

(assert (=> d!1572297 e!3059773))

(declare-fun res!2090489 () Bool)

(assert (=> d!1572297 (=> res!2090489 e!3059773)))

(declare-fun lt!2006565 () Bool)

(assert (=> d!1572297 (= res!2090489 (not lt!2006565))))

(declare-fun e!3059775 () Bool)

(assert (=> d!1572297 (= lt!2006565 e!3059775)))

(declare-fun res!2090487 () Bool)

(assert (=> d!1572297 (=> res!2090487 e!3059775)))

(assert (=> d!1572297 (= res!2090487 (is-Nil!56408 lt!2006027))))

(assert (=> d!1572297 (= (isPrefix!4895 lt!2006027 lt!2006027) lt!2006565)))

(declare-fun b!4894582 () Bool)

(declare-fun res!2090490 () Bool)

(declare-fun e!3059774 () Bool)

(assert (=> b!4894582 (=> (not res!2090490) (not e!3059774))))

(assert (=> b!4894582 (= res!2090490 (= (head!10456 lt!2006027) (head!10456 lt!2006027)))))

(declare-fun b!4894581 () Bool)

(assert (=> b!4894581 (= e!3059775 e!3059774)))

(declare-fun res!2090488 () Bool)

(assert (=> b!4894581 (=> (not res!2090488) (not e!3059774))))

(assert (=> b!4894581 (= res!2090488 (not (is-Nil!56408 lt!2006027)))))

(declare-fun b!4894583 () Bool)

(assert (=> b!4894583 (= e!3059774 (isPrefix!4895 (tail!9602 lt!2006027) (tail!9602 lt!2006027)))))

(assert (= (and d!1572297 (not res!2090487)) b!4894581))

(assert (= (and b!4894581 res!2090488) b!4894582))

(assert (= (and b!4894582 res!2090490) b!4894583))

(assert (= (and d!1572297 (not res!2090489)) b!4894584))

(assert (=> b!4894584 m!5898638))

(assert (=> b!4894584 m!5898638))

(assert (=> b!4894582 m!5899006))

(assert (=> b!4894582 m!5899006))

(assert (=> b!4894583 m!5899030))

(assert (=> b!4894583 m!5899030))

(assert (=> b!4894583 m!5899030))

(assert (=> b!4894583 m!5899030))

(declare-fun m!5900138 () Bool)

(assert (=> b!4894583 m!5900138))

(assert (=> bm!339458 d!1572297))

(declare-fun d!1572299 () Bool)

(declare-fun lt!2006566 () Int)

(assert (=> d!1572299 (>= lt!2006566 0)))

(declare-fun e!3059776 () Int)

(assert (=> d!1572299 (= lt!2006566 e!3059776)))

(declare-fun c!831904 () Bool)

(assert (=> d!1572299 (= c!831904 (is-Nil!56408 (_2!33532 (get!19481 lt!2006068))))))

(assert (=> d!1572299 (= (size!37145 (_2!33532 (get!19481 lt!2006068))) lt!2006566)))

(declare-fun b!4894585 () Bool)

(assert (=> b!4894585 (= e!3059776 0)))

(declare-fun b!4894586 () Bool)

(assert (=> b!4894586 (= e!3059776 (+ 1 (size!37145 (t!365672 (_2!33532 (get!19481 lt!2006068))))))))

(assert (= (and d!1572299 c!831904) b!4894585))

(assert (= (and d!1572299 (not c!831904)) b!4894586))

(declare-fun m!5900140 () Bool)

(assert (=> b!4894586 m!5900140))

(assert (=> b!4893736 d!1572299))

(declare-fun d!1572301 () Bool)

(assert (=> d!1572301 (= (get!19481 lt!2006068) (v!49981 lt!2006068))))

(assert (=> b!4893736 d!1572301))

(declare-fun d!1572303 () Bool)

(declare-fun lt!2006567 () Int)

(assert (=> d!1572303 (>= lt!2006567 0)))

(declare-fun e!3059777 () Int)

(assert (=> d!1572303 (= lt!2006567 e!3059777)))

(declare-fun c!831905 () Bool)

(assert (=> d!1572303 (= c!831905 (is-Nil!56408 (list!17727 input!1236)))))

(assert (=> d!1572303 (= (size!37145 (list!17727 input!1236)) lt!2006567)))

(declare-fun b!4894587 () Bool)

(assert (=> b!4894587 (= e!3059777 0)))

(declare-fun b!4894588 () Bool)

(assert (=> b!4894588 (= e!3059777 (+ 1 (size!37145 (t!365672 (list!17727 input!1236)))))))

(assert (= (and d!1572303 c!831905) b!4894587))

(assert (= (and d!1572303 (not c!831905)) b!4894588))

(declare-fun m!5900142 () Bool)

(assert (=> b!4894588 m!5900142))

(assert (=> b!4893736 d!1572303))

(declare-fun d!1572305 () Bool)

(assert (=> d!1572305 (= (list!17727 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025)))) (list!17729 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025))))))))

(declare-fun bs!1176150 () Bool)

(assert (= bs!1176150 d!1572305))

(declare-fun m!5900144 () Bool)

(assert (=> bs!1176150 m!5900144))

(assert (=> bs!1176124 d!1572305))

(assert (=> bs!1176124 d!1572015))

(assert (=> d!1572035 d!1572085))

(declare-fun d!1572307 () Bool)

(assert (=> d!1572307 (= (isEmpty!30272 (_1!33536 lt!2006346)) (is-Nil!56408 (_1!33536 lt!2006346)))))

(assert (=> d!1572035 d!1572307))

(declare-fun d!1572309 () Bool)

(declare-fun lt!2006585 () tuple2!60466)

(assert (=> d!1572309 (= lt!2006585 (findLongestMatch!1648 (regex!8175 (h!62858 rulesArg!165)) lt!2005844))))

(declare-datatypes ((List!56538 0))(
  ( (Nil!56414) (Cons!56414 (h!62862 Regex!13250) (t!365913 List!56538)) )
))
(declare-datatypes ((Context!5952 0))(
  ( (Context!5953 (exprs!3476 List!56538)) )
))
(declare-fun lt!2006587 () (Set Context!5952))

(declare-fun findLongestMatchZipper!10 ((Set Context!5952) List!56532) tuple2!60466)

(assert (=> d!1572309 (= lt!2006585 (findLongestMatchZipper!10 lt!2006587 lt!2005844))))

(declare-fun lt!2006583 () Unit!146435)

(declare-fun lt!2006588 () Unit!146435)

(assert (=> d!1572309 (= lt!2006583 lt!2006588)))

(declare-fun lt!2006582 () Int)

(declare-fun sizeTr!341 (List!56532 Int) Int)

(assert (=> d!1572309 (= (sizeTr!341 lt!2005844 lt!2006582) (+ (size!37145 lt!2005844) lt!2006582))))

(declare-fun lemmaSizeTrEqualsSize!340 (List!56532 Int) Unit!146435)

(assert (=> d!1572309 (= lt!2006588 (lemmaSizeTrEqualsSize!340 lt!2005844 lt!2006582))))

(assert (=> d!1572309 (= lt!2006582 0)))

(declare-fun lt!2006584 () Unit!146435)

(declare-fun lt!2006586 () Unit!146435)

(assert (=> d!1572309 (= lt!2006584 lt!2006586)))

(assert (=> d!1572309 (= (findLongestMatchZipper!10 lt!2006587 lt!2005844) (findLongestMatch!1648 (regex!8175 (h!62858 rulesArg!165)) lt!2005844))))

(declare-fun longestMatchSameAsRegex!9 (Regex!13250 (Set Context!5952) List!56532) Unit!146435)

(assert (=> d!1572309 (= lt!2006586 (longestMatchSameAsRegex!9 (regex!8175 (h!62858 rulesArg!165)) lt!2006587 lt!2005844))))

(declare-fun focus!332 (Regex!13250) (Set Context!5952))

(assert (=> d!1572309 (= lt!2006587 (focus!332 (regex!8175 (h!62858 rulesArg!165))))))

(assert (=> d!1572309 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165)))))

(assert (=> d!1572309 (= (findLongestMatchWithZipper!84 (regex!8175 (h!62858 rulesArg!165)) lt!2005844) lt!2006585)))

(declare-fun bs!1176151 () Bool)

(assert (= bs!1176151 d!1572309))

(declare-fun m!5900146 () Bool)

(assert (=> bs!1176151 m!5900146))

(assert (=> bs!1176151 m!5898538))

(declare-fun m!5900148 () Bool)

(assert (=> bs!1176151 m!5900148))

(assert (=> bs!1176151 m!5899322))

(declare-fun m!5900150 () Bool)

(assert (=> bs!1176151 m!5900150))

(declare-fun m!5900152 () Bool)

(assert (=> bs!1176151 m!5900152))

(declare-fun m!5900154 () Bool)

(assert (=> bs!1176151 m!5900154))

(assert (=> bs!1176151 m!5898834))

(assert (=> d!1572035 d!1572309))

(assert (=> d!1572035 d!1571931))

(declare-fun d!1572311 () Bool)

(assert (=> d!1572311 (= (get!19481 lt!2006351) (v!49981 lt!2006351))))

(assert (=> b!4894119 d!1572311))

(declare-fun d!1572313 () Bool)

(assert (=> d!1572313 (= (apply!13541 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006351)))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006351))))) (dynLambda!22646 (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006351))))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006351))))))))

(declare-fun b_lambda!194509 () Bool)

(assert (=> (not b_lambda!194509) (not d!1572313)))

(declare-fun tb!259001 () Bool)

(declare-fun t!365762 () Bool)

(assert (=> (and b!4893356 (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006351)))))) t!365762) tb!259001))

(declare-fun result!322588 () Bool)

(assert (=> tb!259001 (= result!322588 (inv!21 (dynLambda!22646 (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006351))))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006351)))))))))

(declare-fun m!5900156 () Bool)

(assert (=> tb!259001 m!5900156))

(assert (=> d!1572313 t!365762))

(declare-fun b_and!345045 () Bool)

(assert (= b_and!344989 (and (=> t!365762 result!322588) b_and!345045)))

(declare-fun tb!259003 () Bool)

(declare-fun t!365764 () Bool)

(assert (=> (and b!4893636 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006351)))))) t!365764) tb!259003))

(declare-fun result!322590 () Bool)

(assert (= result!322590 result!322588))

(assert (=> d!1572313 t!365764))

(declare-fun b_and!345047 () Bool)

(assert (= b_and!344991 (and (=> t!365764 result!322590) b_and!345047)))

(declare-fun tb!259005 () Bool)

(declare-fun t!365766 () Bool)

(assert (=> (and b!4894220 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006351)))))) t!365766) tb!259005))

(declare-fun result!322592 () Bool)

(assert (= result!322592 result!322588))

(assert (=> d!1572313 t!365766))

(declare-fun b_and!345049 () Bool)

(assert (= b_and!344993 (and (=> t!365766 result!322592) b_and!345049)))

(assert (=> d!1572313 m!5899308))

(declare-fun m!5900158 () Bool)

(assert (=> d!1572313 m!5900158))

(assert (=> b!4894119 d!1572313))

(declare-fun d!1572315 () Bool)

(assert (=> d!1572315 (= (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006351)))) (fromListB!2693 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006351)))))))

(declare-fun bs!1176152 () Bool)

(assert (= bs!1176152 d!1572315))

(declare-fun m!5900160 () Bool)

(assert (=> bs!1176152 m!5900160))

(assert (=> b!4894119 d!1572315))

(assert (=> d!1572125 d!1571949))

(assert (=> d!1572125 d!1571883))

(assert (=> d!1572125 d!1571885))

(assert (=> d!1572125 d!1571967))

(declare-fun b!4894589 () Bool)

(declare-fun e!3059780 () List!56532)

(assert (=> b!4894589 (= e!3059780 (list!17729 (right!41311 (c!831694 input!1236))))))

(declare-fun b!4894591 () Bool)

(declare-fun res!2090491 () Bool)

(declare-fun e!3059779 () Bool)

(assert (=> b!4894591 (=> (not res!2090491) (not e!3059779))))

(declare-fun lt!2006589 () List!56532)

(assert (=> b!4894591 (= res!2090491 (= (size!37145 lt!2006589) (+ (size!37145 (list!17729 (left!40981 (c!831694 input!1236)))) (size!37145 (list!17729 (right!41311 (c!831694 input!1236)))))))))

(declare-fun b!4894590 () Bool)

(assert (=> b!4894590 (= e!3059780 (Cons!56408 (h!62856 (list!17729 (left!40981 (c!831694 input!1236)))) (++!12244 (t!365672 (list!17729 (left!40981 (c!831694 input!1236)))) (list!17729 (right!41311 (c!831694 input!1236))))))))

(declare-fun d!1572317 () Bool)

(assert (=> d!1572317 e!3059779))

(declare-fun res!2090492 () Bool)

(assert (=> d!1572317 (=> (not res!2090492) (not e!3059779))))

(assert (=> d!1572317 (= res!2090492 (= (content!10019 lt!2006589) (set.union (content!10019 (list!17729 (left!40981 (c!831694 input!1236)))) (content!10019 (list!17729 (right!41311 (c!831694 input!1236)))))))))

(assert (=> d!1572317 (= lt!2006589 e!3059780)))

(declare-fun c!831906 () Bool)

(assert (=> d!1572317 (= c!831906 (is-Nil!56408 (list!17729 (left!40981 (c!831694 input!1236)))))))

(assert (=> d!1572317 (= (++!12244 (list!17729 (left!40981 (c!831694 input!1236))) (list!17729 (right!41311 (c!831694 input!1236)))) lt!2006589)))

(declare-fun b!4894592 () Bool)

(assert (=> b!4894592 (= e!3059779 (or (not (= (list!17729 (right!41311 (c!831694 input!1236))) Nil!56408)) (= lt!2006589 (list!17729 (left!40981 (c!831694 input!1236))))))))

(assert (= (and d!1572317 c!831906) b!4894589))

(assert (= (and d!1572317 (not c!831906)) b!4894590))

(assert (= (and d!1572317 res!2090492) b!4894591))

(assert (= (and b!4894591 res!2090491) b!4894592))

(declare-fun m!5900162 () Bool)

(assert (=> b!4894591 m!5900162))

(assert (=> b!4894591 m!5899372))

(declare-fun m!5900164 () Bool)

(assert (=> b!4894591 m!5900164))

(assert (=> b!4894591 m!5899374))

(declare-fun m!5900166 () Bool)

(assert (=> b!4894591 m!5900166))

(assert (=> b!4894590 m!5899374))

(declare-fun m!5900168 () Bool)

(assert (=> b!4894590 m!5900168))

(declare-fun m!5900170 () Bool)

(assert (=> d!1572317 m!5900170))

(assert (=> d!1572317 m!5899372))

(declare-fun m!5900172 () Bool)

(assert (=> d!1572317 m!5900172))

(assert (=> d!1572317 m!5899374))

(declare-fun m!5900174 () Bool)

(assert (=> d!1572317 m!5900174))

(assert (=> b!4894177 d!1572317))

(declare-fun b!4894596 () Bool)

(declare-fun e!3059782 () List!56532)

(assert (=> b!4894596 (= e!3059782 (++!12244 (list!17729 (left!40981 (left!40981 (c!831694 input!1236)))) (list!17729 (right!41311 (left!40981 (c!831694 input!1236))))))))

(declare-fun b!4894593 () Bool)

(declare-fun e!3059781 () List!56532)

(assert (=> b!4894593 (= e!3059781 Nil!56408)))

(declare-fun d!1572319 () Bool)

(declare-fun c!831907 () Bool)

(assert (=> d!1572319 (= c!831907 (is-Empty!14743 (left!40981 (c!831694 input!1236))))))

(assert (=> d!1572319 (= (list!17729 (left!40981 (c!831694 input!1236))) e!3059781)))

(declare-fun b!4894594 () Bool)

(assert (=> b!4894594 (= e!3059781 e!3059782)))

(declare-fun c!831908 () Bool)

(assert (=> b!4894594 (= c!831908 (is-Leaf!24548 (left!40981 (c!831694 input!1236))))))

(declare-fun b!4894595 () Bool)

(assert (=> b!4894595 (= e!3059782 (list!17731 (xs!18059 (left!40981 (c!831694 input!1236)))))))

(assert (= (and d!1572319 c!831907) b!4894593))

(assert (= (and d!1572319 (not c!831907)) b!4894594))

(assert (= (and b!4894594 c!831908) b!4894595))

(assert (= (and b!4894594 (not c!831908)) b!4894596))

(declare-fun m!5900176 () Bool)

(assert (=> b!4894596 m!5900176))

(declare-fun m!5900178 () Bool)

(assert (=> b!4894596 m!5900178))

(assert (=> b!4894596 m!5900176))

(assert (=> b!4894596 m!5900178))

(declare-fun m!5900180 () Bool)

(assert (=> b!4894596 m!5900180))

(declare-fun m!5900182 () Bool)

(assert (=> b!4894595 m!5900182))

(assert (=> b!4894177 d!1572319))

(declare-fun b!4894600 () Bool)

(declare-fun e!3059784 () List!56532)

(assert (=> b!4894600 (= e!3059784 (++!12244 (list!17729 (left!40981 (right!41311 (c!831694 input!1236)))) (list!17729 (right!41311 (right!41311 (c!831694 input!1236))))))))

(declare-fun b!4894597 () Bool)

(declare-fun e!3059783 () List!56532)

(assert (=> b!4894597 (= e!3059783 Nil!56408)))

(declare-fun d!1572321 () Bool)

(declare-fun c!831909 () Bool)

(assert (=> d!1572321 (= c!831909 (is-Empty!14743 (right!41311 (c!831694 input!1236))))))

(assert (=> d!1572321 (= (list!17729 (right!41311 (c!831694 input!1236))) e!3059783)))

(declare-fun b!4894598 () Bool)

(assert (=> b!4894598 (= e!3059783 e!3059784)))

(declare-fun c!831910 () Bool)

(assert (=> b!4894598 (= c!831910 (is-Leaf!24548 (right!41311 (c!831694 input!1236))))))

(declare-fun b!4894599 () Bool)

(assert (=> b!4894599 (= e!3059784 (list!17731 (xs!18059 (right!41311 (c!831694 input!1236)))))))

(assert (= (and d!1572321 c!831909) b!4894597))

(assert (= (and d!1572321 (not c!831909)) b!4894598))

(assert (= (and b!4894598 c!831910) b!4894599))

(assert (= (and b!4894598 (not c!831910)) b!4894600))

(declare-fun m!5900184 () Bool)

(assert (=> b!4894600 m!5900184))

(declare-fun m!5900186 () Bool)

(assert (=> b!4894600 m!5900186))

(assert (=> b!4894600 m!5900184))

(assert (=> b!4894600 m!5900186))

(declare-fun m!5900188 () Bool)

(assert (=> b!4894600 m!5900188))

(declare-fun m!5900190 () Bool)

(assert (=> b!4894599 m!5900190))

(assert (=> b!4894177 d!1572321))

(declare-fun d!1572323 () Bool)

(declare-fun c!831911 () Bool)

(assert (=> d!1572323 (= c!831911 (is-Node!14743 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025))))))))

(declare-fun e!3059785 () Bool)

(assert (=> d!1572323 (= (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025))))) e!3059785)))

(declare-fun b!4894601 () Bool)

(assert (=> b!4894601 (= e!3059785 (inv!72695 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025))))))))

(declare-fun b!4894602 () Bool)

(declare-fun e!3059786 () Bool)

(assert (=> b!4894602 (= e!3059785 e!3059786)))

(declare-fun res!2090493 () Bool)

(assert (=> b!4894602 (= res!2090493 (not (is-Leaf!24548 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025)))))))))

(assert (=> b!4894602 (=> res!2090493 e!3059786)))

(declare-fun b!4894603 () Bool)

(assert (=> b!4894603 (= e!3059786 (inv!72696 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025))))))))

(assert (= (and d!1572323 c!831911) b!4894601))

(assert (= (and d!1572323 (not c!831911)) b!4894602))

(assert (= (and b!4894602 (not res!2090493)) b!4894603))

(declare-fun m!5900192 () Bool)

(assert (=> b!4894601 m!5900192))

(declare-fun m!5900194 () Bool)

(assert (=> b!4894603 m!5900194))

(assert (=> b!4894258 d!1572323))

(declare-fun d!1572325 () Bool)

(assert (=> d!1572325 (= (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))) (h!62856 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))

(assert (=> b!4893829 d!1572325))

(declare-fun bs!1176153 () Bool)

(declare-fun d!1572327 () Bool)

(assert (= bs!1176153 (and d!1572327 d!1571851)))

(declare-fun lambda!244059 () Int)

(assert (=> bs!1176153 (= lambda!244059 lambda!244023)))

(declare-fun bs!1176154 () Bool)

(assert (= bs!1176154 (and d!1572327 d!1571967)))

(assert (=> bs!1176154 (= lambda!244059 lambda!244037)))

(assert (=> d!1572327 true))

(declare-fun lt!2006590 () Bool)

(assert (=> d!1572327 (= lt!2006590 (forall!13091 (t!365674 (t!365674 rulesArg!165)) lambda!244059))))

(declare-fun e!3059787 () Bool)

(assert (=> d!1572327 (= lt!2006590 e!3059787)))

(declare-fun res!2090494 () Bool)

(assert (=> d!1572327 (=> res!2090494 e!3059787)))

(assert (=> d!1572327 (= res!2090494 (not (is-Cons!56410 (t!365674 (t!365674 rulesArg!165)))))))

(assert (=> d!1572327 (= (rulesValidInductive!3154 thiss!14805 (t!365674 (t!365674 rulesArg!165))) lt!2006590)))

(declare-fun b!4894604 () Bool)

(declare-fun e!3059788 () Bool)

(assert (=> b!4894604 (= e!3059787 e!3059788)))

(declare-fun res!2090495 () Bool)

(assert (=> b!4894604 (=> (not res!2090495) (not e!3059788))))

(assert (=> b!4894604 (= res!2090495 (ruleValid!3673 thiss!14805 (h!62858 (t!365674 (t!365674 rulesArg!165)))))))

(declare-fun b!4894605 () Bool)

(assert (=> b!4894605 (= e!3059788 (rulesValidInductive!3154 thiss!14805 (t!365674 (t!365674 (t!365674 rulesArg!165)))))))

(assert (= (and d!1572327 (not res!2090494)) b!4894604))

(assert (= (and b!4894604 res!2090495) b!4894605))

(declare-fun m!5900196 () Bool)

(assert (=> d!1572327 m!5900196))

(declare-fun m!5900198 () Bool)

(assert (=> b!4894604 m!5900198))

(declare-fun m!5900200 () Bool)

(assert (=> b!4894605 m!5900200))

(assert (=> b!4893835 d!1572327))

(declare-fun d!1572329 () Bool)

(assert (=> d!1572329 (= (inv!72686 (tag!9039 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (= (mod (str.len (value!262138 (tag!9039 (h!62858 (t!365674 (t!365674 rulesArg!165)))))) 2) 0))))

(assert (=> b!4894219 d!1572329))

(declare-fun d!1572331 () Bool)

(declare-fun res!2090496 () Bool)

(declare-fun e!3059789 () Bool)

(assert (=> d!1572331 (=> (not res!2090496) (not e!3059789))))

(assert (=> d!1572331 (= res!2090496 (semiInverseModEq!3587 (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165)))))))))

(assert (=> d!1572331 (= (inv!72689 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) e!3059789)))

(declare-fun b!4894606 () Bool)

(assert (=> b!4894606 (= e!3059789 (equivClasses!3466 (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165)))))))))

(assert (= (and d!1572331 res!2090496) b!4894606))

(declare-fun m!5900202 () Bool)

(assert (=> d!1572331 m!5900202))

(declare-fun m!5900204 () Bool)

(assert (=> b!4894606 m!5900204))

(assert (=> b!4894219 d!1572331))

(declare-fun d!1572333 () Bool)

(assert (=> d!1572333 (= (inv!72690 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))) (isBalanced!4013 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))))))

(declare-fun bs!1176155 () Bool)

(assert (= bs!1176155 d!1572333))

(declare-fun m!5900206 () Bool)

(assert (=> bs!1176155 m!5900206))

(assert (=> tb!258951 d!1572333))

(declare-fun b!4894610 () Bool)

(declare-fun e!3059791 () List!56532)

(assert (=> b!4894610 (= e!3059791 (++!12244 (list!17729 (left!40981 (c!831694 (_2!33531 (get!19482 lt!2005974))))) (list!17729 (right!41311 (c!831694 (_2!33531 (get!19482 lt!2005974)))))))))

(declare-fun b!4894607 () Bool)

(declare-fun e!3059790 () List!56532)

(assert (=> b!4894607 (= e!3059790 Nil!56408)))

(declare-fun d!1572335 () Bool)

(declare-fun c!831912 () Bool)

(assert (=> d!1572335 (= c!831912 (is-Empty!14743 (c!831694 (_2!33531 (get!19482 lt!2005974)))))))

(assert (=> d!1572335 (= (list!17729 (c!831694 (_2!33531 (get!19482 lt!2005974)))) e!3059790)))

(declare-fun b!4894608 () Bool)

(assert (=> b!4894608 (= e!3059790 e!3059791)))

(declare-fun c!831913 () Bool)

(assert (=> b!4894608 (= c!831913 (is-Leaf!24548 (c!831694 (_2!33531 (get!19482 lt!2005974)))))))

(declare-fun b!4894609 () Bool)

(assert (=> b!4894609 (= e!3059791 (list!17731 (xs!18059 (c!831694 (_2!33531 (get!19482 lt!2005974))))))))

(assert (= (and d!1572335 c!831912) b!4894607))

(assert (= (and d!1572335 (not c!831912)) b!4894608))

(assert (= (and b!4894608 c!831913) b!4894609))

(assert (= (and b!4894608 (not c!831913)) b!4894610))

(declare-fun m!5900208 () Bool)

(assert (=> b!4894610 m!5900208))

(declare-fun m!5900210 () Bool)

(assert (=> b!4894610 m!5900210))

(assert (=> b!4894610 m!5900208))

(assert (=> b!4894610 m!5900210))

(declare-fun m!5900212 () Bool)

(assert (=> b!4894610 m!5900212))

(declare-fun m!5900214 () Bool)

(assert (=> b!4894609 m!5900214))

(assert (=> d!1571955 d!1572335))

(declare-fun d!1572337 () Bool)

(assert (=> d!1572337 (dynLambda!22645 lambda!244035 (_1!33535 lt!2006025))))

(assert (=> d!1572337 true))

(declare-fun _$1!11189 () Unit!146435)

(assert (=> d!1572337 (= (choose!35727 lambda!244035 (_1!33535 lt!2006025)) _$1!11189)))

(declare-fun b_lambda!194511 () Bool)

(assert (=> (not b_lambda!194511) (not d!1572337)))

(declare-fun bs!1176156 () Bool)

(assert (= bs!1176156 d!1572337))

(assert (=> bs!1176156 m!5899078))

(assert (=> d!1571997 d!1572337))

(declare-fun d!1572339 () Bool)

(declare-fun choose!35733 (Int) Bool)

(assert (=> d!1572339 (= (Forall!1688 lambda!244035) (choose!35733 lambda!244035))))

(declare-fun bs!1176157 () Bool)

(assert (= bs!1176157 d!1572339))

(declare-fun m!5900216 () Bool)

(assert (=> bs!1176157 m!5900216))

(assert (=> d!1571997 d!1572339))

(declare-fun d!1572341 () Bool)

(assert (=> d!1572341 (dynLambda!22645 lambda!244035 (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))

(assert (=> d!1572341 true))

(declare-fun _$1!11190 () Unit!146435)

(assert (=> d!1572341 (= (choose!35727 lambda!244035 (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))) _$1!11190)))

(declare-fun b_lambda!194513 () Bool)

(assert (=> (not b_lambda!194513) (not d!1572341)))

(declare-fun bs!1176158 () Bool)

(assert (= bs!1176158 d!1572341))

(assert (=> bs!1176158 m!5898642))

(assert (=> bs!1176158 m!5899142))

(assert (=> d!1572019 d!1572341))

(assert (=> d!1572019 d!1572339))

(declare-fun d!1572343 () Bool)

(declare-fun nullableFct!1239 (Regex!13250) Bool)

(assert (=> d!1572343 (= (nullable!4556 (regex!8175 (h!62858 rulesArg!165))) (nullableFct!1239 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun bs!1176159 () Bool)

(assert (= bs!1176159 d!1572343))

(declare-fun m!5900218 () Bool)

(assert (=> bs!1176159 m!5900218))

(assert (=> bm!339460 d!1572343))

(declare-fun b!4894611 () Bool)

(declare-fun res!2090501 () Bool)

(declare-fun e!3059798 () Bool)

(assert (=> b!4894611 (=> (not res!2090501) (not e!3059798))))

(assert (=> b!4894611 (= res!2090501 (isEmpty!30272 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068)))))))))

(declare-fun b!4894612 () Bool)

(declare-fun res!2090497 () Bool)

(assert (=> b!4894612 (=> (not res!2090497) (not e!3059798))))

(declare-fun call!339511 () Bool)

(assert (=> b!4894612 (= res!2090497 (not call!339511))))

(declare-fun b!4894613 () Bool)

(declare-fun e!3059795 () Bool)

(declare-fun lt!2006591 () Bool)

(assert (=> b!4894613 (= e!3059795 (= lt!2006591 call!339511))))

(declare-fun b!4894614 () Bool)

(declare-fun e!3059797 () Bool)

(declare-fun e!3059793 () Bool)

(assert (=> b!4894614 (= e!3059797 e!3059793)))

(declare-fun res!2090500 () Bool)

(assert (=> b!4894614 (=> res!2090500 e!3059793)))

(assert (=> b!4894614 (= res!2090500 call!339511)))

(declare-fun b!4894615 () Bool)

(declare-fun e!3059792 () Bool)

(assert (=> b!4894615 (= e!3059792 (nullable!4556 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun b!4894616 () Bool)

(declare-fun e!3059794 () Bool)

(assert (=> b!4894616 (= e!3059794 e!3059797)))

(declare-fun res!2090499 () Bool)

(assert (=> b!4894616 (=> (not res!2090499) (not e!3059797))))

(assert (=> b!4894616 (= res!2090499 (not lt!2006591))))

(declare-fun b!4894617 () Bool)

(declare-fun e!3059796 () Bool)

(assert (=> b!4894617 (= e!3059796 (not lt!2006591))))

(declare-fun bm!339506 () Bool)

(assert (=> bm!339506 (= call!339511 (isEmpty!30272 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068))))))))

(declare-fun d!1572345 () Bool)

(assert (=> d!1572345 e!3059795))

(declare-fun c!831915 () Bool)

(assert (=> d!1572345 (= c!831915 (is-EmptyExpr!13250 (regex!8175 (h!62858 rulesArg!165))))))

(assert (=> d!1572345 (= lt!2006591 e!3059792)))

(declare-fun c!831914 () Bool)

(assert (=> d!1572345 (= c!831914 (isEmpty!30272 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068))))))))

(assert (=> d!1572345 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165)))))

(assert (=> d!1572345 (= (matchR!6531 (regex!8175 (h!62858 rulesArg!165)) (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068))))) lt!2006591)))

(declare-fun b!4894618 () Bool)

(assert (=> b!4894618 (= e!3059795 e!3059796)))

(declare-fun c!831916 () Bool)

(assert (=> b!4894618 (= c!831916 (is-EmptyLang!13250 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun b!4894619 () Bool)

(declare-fun res!2090503 () Bool)

(assert (=> b!4894619 (=> res!2090503 e!3059793)))

(assert (=> b!4894619 (= res!2090503 (not (isEmpty!30272 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068))))))))))

(declare-fun b!4894620 () Bool)

(assert (=> b!4894620 (= e!3059793 (not (= (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068))))) (c!831695 (regex!8175 (h!62858 rulesArg!165))))))))

(declare-fun b!4894621 () Bool)

(assert (=> b!4894621 (= e!3059792 (matchR!6531 (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068)))))) (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068)))))))))

(declare-fun b!4894622 () Bool)

(assert (=> b!4894622 (= e!3059798 (= (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068))))) (c!831695 (regex!8175 (h!62858 rulesArg!165)))))))

(declare-fun b!4894623 () Bool)

(declare-fun res!2090498 () Bool)

(assert (=> b!4894623 (=> res!2090498 e!3059794)))

(assert (=> b!4894623 (= res!2090498 e!3059798)))

(declare-fun res!2090504 () Bool)

(assert (=> b!4894623 (=> (not res!2090504) (not e!3059798))))

(assert (=> b!4894623 (= res!2090504 lt!2006591)))

(declare-fun b!4894624 () Bool)

(declare-fun res!2090502 () Bool)

(assert (=> b!4894624 (=> res!2090502 e!3059794)))

(assert (=> b!4894624 (= res!2090502 (not (is-ElementMatch!13250 (regex!8175 (h!62858 rulesArg!165)))))))

(assert (=> b!4894624 (= e!3059796 e!3059794)))

(assert (= (and d!1572345 c!831914) b!4894615))

(assert (= (and d!1572345 (not c!831914)) b!4894621))

(assert (= (and d!1572345 c!831915) b!4894613))

(assert (= (and d!1572345 (not c!831915)) b!4894618))

(assert (= (and b!4894618 c!831916) b!4894617))

(assert (= (and b!4894618 (not c!831916)) b!4894624))

(assert (= (and b!4894624 (not res!2090502)) b!4894623))

(assert (= (and b!4894623 res!2090504) b!4894612))

(assert (= (and b!4894612 res!2090497) b!4894611))

(assert (= (and b!4894611 res!2090501) b!4894622))

(assert (= (and b!4894623 (not res!2090498)) b!4894616))

(assert (= (and b!4894616 res!2090499) b!4894614))

(assert (= (and b!4894614 (not res!2090500)) b!4894619))

(assert (= (and b!4894619 (not res!2090503)) b!4894620))

(assert (= (or b!4894613 b!4894612 b!4894614) bm!339506))

(assert (=> b!4894621 m!5898810))

(declare-fun m!5900220 () Bool)

(assert (=> b!4894621 m!5900220))

(assert (=> b!4894621 m!5900220))

(declare-fun m!5900222 () Bool)

(assert (=> b!4894621 m!5900222))

(assert (=> b!4894621 m!5898810))

(declare-fun m!5900224 () Bool)

(assert (=> b!4894621 m!5900224))

(assert (=> b!4894621 m!5900222))

(assert (=> b!4894621 m!5900224))

(declare-fun m!5900226 () Bool)

(assert (=> b!4894621 m!5900226))

(assert (=> b!4894619 m!5898810))

(assert (=> b!4894619 m!5900224))

(assert (=> b!4894619 m!5900224))

(declare-fun m!5900228 () Bool)

(assert (=> b!4894619 m!5900228))

(assert (=> bm!339506 m!5898810))

(declare-fun m!5900230 () Bool)

(assert (=> bm!339506 m!5900230))

(assert (=> b!4894611 m!5898810))

(assert (=> b!4894611 m!5900224))

(assert (=> b!4894611 m!5900224))

(assert (=> b!4894611 m!5900228))

(assert (=> d!1572345 m!5898810))

(assert (=> d!1572345 m!5900230))

(assert (=> d!1572345 m!5898834))

(assert (=> b!4894620 m!5898810))

(assert (=> b!4894620 m!5900220))

(assert (=> b!4894615 m!5898840))

(assert (=> b!4894622 m!5898810))

(assert (=> b!4894622 m!5900220))

(assert (=> b!4893740 d!1572345))

(declare-fun d!1572347 () Bool)

(assert (=> d!1572347 (= (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068)))) (list!17729 (c!831694 (charsOf!5375 (_1!33532 (get!19481 lt!2006068))))))))

(declare-fun bs!1176160 () Bool)

(assert (= bs!1176160 d!1572347))

(declare-fun m!5900232 () Bool)

(assert (=> bs!1176160 m!5900232))

(assert (=> b!4893740 d!1572347))

(declare-fun d!1572349 () Bool)

(declare-fun lt!2006592 () BalanceConc!28916)

(assert (=> d!1572349 (= (list!17727 lt!2006592) (originalCharacters!8488 (_1!33532 (get!19481 lt!2006068))))))

(assert (=> d!1572349 (= lt!2006592 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006068))))) (value!262139 (_1!33532 (get!19481 lt!2006068)))))))

(assert (=> d!1572349 (= (charsOf!5375 (_1!33532 (get!19481 lt!2006068))) lt!2006592)))

(declare-fun b_lambda!194515 () Bool)

(assert (=> (not b_lambda!194515) (not d!1572349)))

(declare-fun tb!259007 () Bool)

(declare-fun t!365768 () Bool)

(assert (=> (and b!4893356 (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006068)))))) t!365768) tb!259007))

(declare-fun b!4894625 () Bool)

(declare-fun e!3059799 () Bool)

(declare-fun tp!1377409 () Bool)

(assert (=> b!4894625 (= e!3059799 (and (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006068))))) (value!262139 (_1!33532 (get!19481 lt!2006068)))))) tp!1377409))))

(declare-fun result!322594 () Bool)

(assert (=> tb!259007 (= result!322594 (and (inv!72690 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006068))))) (value!262139 (_1!33532 (get!19481 lt!2006068))))) e!3059799))))

(assert (= tb!259007 b!4894625))

(declare-fun m!5900234 () Bool)

(assert (=> b!4894625 m!5900234))

(declare-fun m!5900236 () Bool)

(assert (=> tb!259007 m!5900236))

(assert (=> d!1572349 t!365768))

(declare-fun b_and!345051 () Bool)

(assert (= b_and!345039 (and (=> t!365768 result!322594) b_and!345051)))

(declare-fun tb!259009 () Bool)

(declare-fun t!365770 () Bool)

(assert (=> (and b!4893636 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006068)))))) t!365770) tb!259009))

(declare-fun result!322596 () Bool)

(assert (= result!322596 result!322594))

(assert (=> d!1572349 t!365770))

(declare-fun b_and!345053 () Bool)

(assert (= b_and!345041 (and (=> t!365770 result!322596) b_and!345053)))

(declare-fun tb!259011 () Bool)

(declare-fun t!365772 () Bool)

(assert (=> (and b!4894220 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006068)))))) t!365772) tb!259011))

(declare-fun result!322598 () Bool)

(assert (= result!322598 result!322594))

(assert (=> d!1572349 t!365772))

(declare-fun b_and!345055 () Bool)

(assert (= b_and!345043 (and (=> t!365772 result!322598) b_and!345055)))

(declare-fun m!5900238 () Bool)

(assert (=> d!1572349 m!5900238))

(declare-fun m!5900240 () Bool)

(assert (=> d!1572349 m!5900240))

(assert (=> b!4893740 d!1572349))

(assert (=> b!4893740 d!1572301))

(declare-fun d!1572351 () Bool)

(declare-fun lt!2006593 () Int)

(assert (=> d!1572351 (>= lt!2006593 0)))

(declare-fun e!3059800 () Int)

(assert (=> d!1572351 (= lt!2006593 e!3059800)))

(declare-fun c!831917 () Bool)

(assert (=> d!1572351 (= c!831917 (is-Nil!56408 (t!365672 (_2!33532 (get!19481 lt!2005936)))))))

(assert (=> d!1572351 (= (size!37145 (t!365672 (_2!33532 (get!19481 lt!2005936)))) lt!2006593)))

(declare-fun b!4894626 () Bool)

(assert (=> b!4894626 (= e!3059800 0)))

(declare-fun b!4894627 () Bool)

(assert (=> b!4894627 (= e!3059800 (+ 1 (size!37145 (t!365672 (t!365672 (_2!33532 (get!19481 lt!2005936)))))))))

(assert (= (and d!1572351 c!831917) b!4894626))

(assert (= (and d!1572351 (not c!831917)) b!4894627))

(declare-fun m!5900242 () Bool)

(assert (=> b!4894627 m!5900242))

(assert (=> b!4894045 d!1572351))

(declare-fun d!1572353 () Bool)

(assert (=> d!1572353 (= (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))) (is-Nil!56408 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))))))

(assert (=> b!4894115 d!1572353))

(declare-fun d!1572355 () Bool)

(declare-fun e!3059801 () Bool)

(assert (=> d!1572355 e!3059801))

(declare-fun res!2090505 () Bool)

(assert (=> d!1572355 (=> res!2090505 e!3059801)))

(assert (=> d!1572355 (= res!2090505 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))))))

(declare-fun lt!2006594 () Unit!146435)

(assert (=> d!1572355 (= lt!2006594 (choose!35728 (regex!8175 (h!62858 rulesArg!165)) lt!2005844))))

(assert (=> d!1572355 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165)))))

(assert (=> d!1572355 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1717 (regex!8175 (h!62858 rulesArg!165)) lt!2005844) lt!2006594)))

(declare-fun b!4894628 () Bool)

(assert (=> b!4894628 (= e!3059801 (matchR!6531 (regex!8175 (h!62858 rulesArg!165)) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))))))

(assert (= (and d!1572355 (not res!2090505)) b!4894628))

(assert (=> d!1572355 m!5899282))

(assert (=> d!1572355 m!5898538))

(assert (=> d!1572355 m!5898636))

(assert (=> d!1572355 m!5898538))

(assert (=> d!1572355 m!5899284))

(declare-fun m!5900244 () Bool)

(assert (=> d!1572355 m!5900244))

(assert (=> d!1572355 m!5898636))

(assert (=> d!1572355 m!5898834))

(assert (=> b!4894628 m!5898636))

(assert (=> b!4894628 m!5898538))

(assert (=> b!4894628 m!5898636))

(assert (=> b!4894628 m!5898538))

(assert (=> b!4894628 m!5899284))

(assert (=> b!4894628 m!5899288))

(assert (=> b!4894115 d!1572355))

(declare-fun bs!1176161 () Bool)

(declare-fun d!1572357 () Bool)

(assert (= bs!1176161 (and d!1572357 b!4893578)))

(declare-fun lambda!244062 () Int)

(assert (=> bs!1176161 (= lambda!244062 lambda!244035)))

(declare-fun bs!1176162 () Bool)

(assert (= bs!1176162 (and d!1572357 d!1572083)))

(assert (=> bs!1176162 (= lambda!244062 lambda!244046)))

(declare-fun bs!1176163 () Bool)

(assert (= bs!1176163 (and d!1572357 b!4894201)))

(assert (=> bs!1176163 (= (and (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))) (= lambda!244062 lambda!244047))))

(declare-fun b!4894633 () Bool)

(declare-fun e!3059804 () Bool)

(assert (=> b!4894633 (= e!3059804 true)))

(assert (=> d!1572357 e!3059804))

(assert (= d!1572357 b!4894633))

(assert (=> b!4894633 (< (dynLambda!22635 order!25479 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) (dynLambda!22636 order!25481 lambda!244062))))

(assert (=> b!4894633 (< (dynLambda!22637 order!25483 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) (dynLambda!22636 order!25481 lambda!244062))))

(assert (=> d!1572357 (= (list!17727 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006352))))) (list!17727 (seqFromList!5937 (_1!33536 lt!2006352))))))

(declare-fun lt!2006597 () Unit!146435)

(assert (=> d!1572357 (= lt!2006597 (ForallOf!1134 lambda!244062 (seqFromList!5937 (_1!33536 lt!2006352))))))

(assert (=> d!1572357 (= (lemmaSemiInverse!2565 (transformation!8175 (h!62858 rulesArg!165)) (seqFromList!5937 (_1!33536 lt!2006352))) lt!2006597)))

(declare-fun b_lambda!194517 () Bool)

(assert (=> (not b_lambda!194517) (not d!1572357)))

(declare-fun t!365774 () Bool)

(declare-fun tb!259013 () Bool)

(assert (=> (and b!4893356 (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365774) tb!259013))

(declare-fun tp!1377410 () Bool)

(declare-fun e!3059805 () Bool)

(declare-fun b!4894634 () Bool)

(assert (=> b!4894634 (= e!3059805 (and (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006352)))))) tp!1377410))))

(declare-fun result!322600 () Bool)

(assert (=> tb!259013 (= result!322600 (and (inv!72690 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006352))))) e!3059805))))

(assert (= tb!259013 b!4894634))

(declare-fun m!5900246 () Bool)

(assert (=> b!4894634 m!5900246))

(declare-fun m!5900248 () Bool)

(assert (=> tb!259013 m!5900248))

(assert (=> d!1572357 t!365774))

(declare-fun b_and!345057 () Bool)

(assert (= b_and!345051 (and (=> t!365774 result!322600) b_and!345057)))

(declare-fun t!365776 () Bool)

(declare-fun tb!259015 () Bool)

(assert (=> (and b!4893636 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365776) tb!259015))

(declare-fun result!322602 () Bool)

(assert (= result!322602 result!322600))

(assert (=> d!1572357 t!365776))

(declare-fun b_and!345059 () Bool)

(assert (= b_and!345053 (and (=> t!365776 result!322602) b_and!345059)))

(declare-fun t!365778 () Bool)

(declare-fun tb!259017 () Bool)

(assert (=> (and b!4894220 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365778) tb!259017))

(declare-fun result!322604 () Bool)

(assert (= result!322604 result!322600))

(assert (=> d!1572357 t!365778))

(declare-fun b_and!345061 () Bool)

(assert (= b_and!345055 (and (=> t!365778 result!322604) b_and!345061)))

(declare-fun b_lambda!194519 () Bool)

(assert (=> (not b_lambda!194519) (not d!1572357)))

(declare-fun t!365780 () Bool)

(declare-fun tb!259019 () Bool)

(assert (=> (and b!4893356 (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365780) tb!259019))

(declare-fun result!322606 () Bool)

(assert (=> tb!259019 (= result!322606 (inv!21 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006352)))))))

(declare-fun m!5900250 () Bool)

(assert (=> tb!259019 m!5900250))

(assert (=> d!1572357 t!365780))

(declare-fun b_and!345063 () Bool)

(assert (= b_and!345045 (and (=> t!365780 result!322606) b_and!345063)))

(declare-fun t!365782 () Bool)

(declare-fun tb!259021 () Bool)

(assert (=> (and b!4893636 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365782) tb!259021))

(declare-fun result!322608 () Bool)

(assert (= result!322608 result!322606))

(assert (=> d!1572357 t!365782))

(declare-fun b_and!345065 () Bool)

(assert (= b_and!345047 (and (=> t!365782 result!322608) b_and!345065)))

(declare-fun t!365784 () Bool)

(declare-fun tb!259023 () Bool)

(assert (=> (and b!4894220 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365784) tb!259023))

(declare-fun result!322610 () Bool)

(assert (= result!322610 result!322606))

(assert (=> d!1572357 t!365784))

(declare-fun b_and!345067 () Bool)

(assert (= b_and!345049 (and (=> t!365784 result!322610) b_and!345067)))

(assert (=> d!1572357 m!5899298))

(declare-fun m!5900252 () Bool)

(assert (=> d!1572357 m!5900252))

(assert (=> d!1572357 m!5900252))

(declare-fun m!5900254 () Bool)

(assert (=> d!1572357 m!5900254))

(assert (=> d!1572357 m!5899298))

(declare-fun m!5900256 () Bool)

(assert (=> d!1572357 m!5900256))

(assert (=> d!1572357 m!5900254))

(declare-fun m!5900258 () Bool)

(assert (=> d!1572357 m!5900258))

(assert (=> d!1572357 m!5899298))

(declare-fun m!5900260 () Bool)

(assert (=> d!1572357 m!5900260))

(assert (=> b!4894115 d!1572357))

(assert (=> b!4894115 d!1572295))

(declare-fun d!1572359 () Bool)

(declare-fun lt!2006598 () Int)

(assert (=> d!1572359 (= lt!2006598 (size!37145 (list!17727 (seqFromList!5937 (_1!33536 lt!2006352)))))))

(assert (=> d!1572359 (= lt!2006598 (size!37149 (c!831694 (seqFromList!5937 (_1!33536 lt!2006352)))))))

(assert (=> d!1572359 (= (size!37147 (seqFromList!5937 (_1!33536 lt!2006352))) lt!2006598)))

(declare-fun bs!1176164 () Bool)

(assert (= bs!1176164 d!1572359))

(assert (=> bs!1176164 m!5899298))

(assert (=> bs!1176164 m!5900260))

(assert (=> bs!1176164 m!5900260))

(declare-fun m!5900262 () Bool)

(assert (=> bs!1176164 m!5900262))

(declare-fun m!5900264 () Bool)

(assert (=> bs!1176164 m!5900264))

(assert (=> b!4894115 d!1572359))

(declare-fun d!1572361 () Bool)

(assert (=> d!1572361 (= (apply!13541 (transformation!8175 (h!62858 rulesArg!165)) (seqFromList!5937 (_1!33536 lt!2006352))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006352))))))

(declare-fun b_lambda!194521 () Bool)

(assert (=> (not b_lambda!194521) (not d!1572361)))

(assert (=> d!1572361 t!365780))

(declare-fun b_and!345069 () Bool)

(assert (= b_and!345063 (and (=> t!365780 result!322606) b_and!345069)))

(assert (=> d!1572361 t!365782))

(declare-fun b_and!345071 () Bool)

(assert (= b_and!345065 (and (=> t!365782 result!322608) b_and!345071)))

(assert (=> d!1572361 t!365784))

(declare-fun b_and!345073 () Bool)

(assert (= b_and!345067 (and (=> t!365784 result!322610) b_and!345073)))

(assert (=> d!1572361 m!5899298))

(assert (=> d!1572361 m!5900252))

(assert (=> b!4894115 d!1572361))

(assert (=> b!4894115 d!1572025))

(assert (=> b!4894115 d!1571985))

(declare-fun d!1572363 () Bool)

(assert (=> d!1572363 (= (seqFromList!5937 (_1!33536 lt!2006352)) (fromListB!2693 (_1!33536 lt!2006352)))))

(declare-fun bs!1176165 () Bool)

(assert (= bs!1176165 d!1572363))

(declare-fun m!5900266 () Bool)

(assert (=> bs!1176165 m!5900266))

(assert (=> b!4894115 d!1572363))

(declare-fun d!1572365 () Bool)

(declare-fun res!2090506 () Bool)

(declare-fun e!3059807 () Bool)

(assert (=> d!1572365 (=> res!2090506 e!3059807)))

(assert (=> d!1572365 (= res!2090506 (is-Nil!56410 (t!365674 rulesArg!165)))))

(assert (=> d!1572365 (= (forall!13091 (t!365674 rulesArg!165) lambda!244023) e!3059807)))

(declare-fun b!4894635 () Bool)

(declare-fun e!3059808 () Bool)

(assert (=> b!4894635 (= e!3059807 e!3059808)))

(declare-fun res!2090507 () Bool)

(assert (=> b!4894635 (=> (not res!2090507) (not e!3059808))))

(assert (=> b!4894635 (= res!2090507 (dynLambda!22642 lambda!244023 (h!62858 (t!365674 rulesArg!165))))))

(declare-fun b!4894636 () Bool)

(assert (=> b!4894636 (= e!3059808 (forall!13091 (t!365674 (t!365674 rulesArg!165)) lambda!244023))))

(assert (= (and d!1572365 (not res!2090506)) b!4894635))

(assert (= (and b!4894635 res!2090507) b!4894636))

(declare-fun b_lambda!194523 () Bool)

(assert (=> (not b_lambda!194523) (not b!4894635)))

(declare-fun m!5900268 () Bool)

(assert (=> b!4894635 m!5900268))

(declare-fun m!5900270 () Bool)

(assert (=> b!4894636 m!5900270))

(assert (=> b!4893773 d!1572365))

(declare-fun b!4894640 () Bool)

(declare-fun e!3059809 () Bool)

(assert (=> b!4894640 (= e!3059809 (>= (size!37145 (tail!9602 (tail!9602 lt!2005844))) (size!37145 (tail!9602 (tail!9602 lt!2005844)))))))

(declare-fun d!1572367 () Bool)

(assert (=> d!1572367 e!3059809))

(declare-fun res!2090510 () Bool)

(assert (=> d!1572367 (=> res!2090510 e!3059809)))

(declare-fun lt!2006599 () Bool)

(assert (=> d!1572367 (= res!2090510 (not lt!2006599))))

(declare-fun e!3059811 () Bool)

(assert (=> d!1572367 (= lt!2006599 e!3059811)))

(declare-fun res!2090508 () Bool)

(assert (=> d!1572367 (=> res!2090508 e!3059811)))

(assert (=> d!1572367 (= res!2090508 (is-Nil!56408 (tail!9602 (tail!9602 lt!2005844))))))

(assert (=> d!1572367 (= (isPrefix!4895 (tail!9602 (tail!9602 lt!2005844)) (tail!9602 (tail!9602 lt!2005844))) lt!2006599)))

(declare-fun b!4894638 () Bool)

(declare-fun res!2090511 () Bool)

(declare-fun e!3059810 () Bool)

(assert (=> b!4894638 (=> (not res!2090511) (not e!3059810))))

(assert (=> b!4894638 (= res!2090511 (= (head!10456 (tail!9602 (tail!9602 lt!2005844))) (head!10456 (tail!9602 (tail!9602 lt!2005844)))))))

(declare-fun b!4894637 () Bool)

(assert (=> b!4894637 (= e!3059811 e!3059810)))

(declare-fun res!2090509 () Bool)

(assert (=> b!4894637 (=> (not res!2090509) (not e!3059810))))

(assert (=> b!4894637 (= res!2090509 (not (is-Nil!56408 (tail!9602 (tail!9602 lt!2005844)))))))

(declare-fun b!4894639 () Bool)

(assert (=> b!4894639 (= e!3059810 (isPrefix!4895 (tail!9602 (tail!9602 (tail!9602 lt!2005844))) (tail!9602 (tail!9602 (tail!9602 lt!2005844)))))))

(assert (= (and d!1572367 (not res!2090508)) b!4894637))

(assert (= (and b!4894637 res!2090509) b!4894638))

(assert (= (and b!4894638 res!2090511) b!4894639))

(assert (= (and d!1572367 (not res!2090510)) b!4894640))

(assert (=> b!4894640 m!5899364))

(declare-fun m!5900272 () Bool)

(assert (=> b!4894640 m!5900272))

(assert (=> b!4894640 m!5899364))

(assert (=> b!4894640 m!5900272))

(assert (=> b!4894638 m!5899364))

(declare-fun m!5900274 () Bool)

(assert (=> b!4894638 m!5900274))

(assert (=> b!4894638 m!5899364))

(assert (=> b!4894638 m!5900274))

(assert (=> b!4894639 m!5899364))

(declare-fun m!5900276 () Bool)

(assert (=> b!4894639 m!5900276))

(assert (=> b!4894639 m!5899364))

(assert (=> b!4894639 m!5900276))

(assert (=> b!4894639 m!5900276))

(assert (=> b!4894639 m!5900276))

(declare-fun m!5900278 () Bool)

(assert (=> b!4894639 m!5900278))

(assert (=> b!4894169 d!1572367))

(declare-fun d!1572369 () Bool)

(assert (=> d!1572369 (= (tail!9602 (tail!9602 lt!2005844)) (t!365672 (tail!9602 lt!2005844)))))

(assert (=> b!4894169 d!1572369))

(declare-fun d!1572371 () Bool)

(assert (=> d!1572371 (= (isEmpty!30267 lt!2006091) (not (is-Some!14027 lt!2006091)))))

(assert (=> d!1571957 d!1572371))

(declare-fun b!4894644 () Bool)

(declare-fun e!3059812 () Bool)

(assert (=> b!4894644 (= e!3059812 (>= (size!37145 (list!17727 input!1236)) (size!37145 (list!17727 input!1236))))))

(declare-fun d!1572373 () Bool)

(assert (=> d!1572373 e!3059812))

(declare-fun res!2090514 () Bool)

(assert (=> d!1572373 (=> res!2090514 e!3059812)))

(declare-fun lt!2006600 () Bool)

(assert (=> d!1572373 (= res!2090514 (not lt!2006600))))

(declare-fun e!3059814 () Bool)

(assert (=> d!1572373 (= lt!2006600 e!3059814)))

(declare-fun res!2090512 () Bool)

(assert (=> d!1572373 (=> res!2090512 e!3059814)))

(assert (=> d!1572373 (= res!2090512 (is-Nil!56408 (list!17727 input!1236)))))

(assert (=> d!1572373 (= (isPrefix!4895 (list!17727 input!1236) (list!17727 input!1236)) lt!2006600)))

(declare-fun b!4894642 () Bool)

(declare-fun res!2090515 () Bool)

(declare-fun e!3059813 () Bool)

(assert (=> b!4894642 (=> (not res!2090515) (not e!3059813))))

(assert (=> b!4894642 (= res!2090515 (= (head!10456 (list!17727 input!1236)) (head!10456 (list!17727 input!1236))))))

(declare-fun b!4894641 () Bool)

(assert (=> b!4894641 (= e!3059814 e!3059813)))

(declare-fun res!2090513 () Bool)

(assert (=> b!4894641 (=> (not res!2090513) (not e!3059813))))

(assert (=> b!4894641 (= res!2090513 (not (is-Nil!56408 (list!17727 input!1236))))))

(declare-fun b!4894643 () Bool)

(assert (=> b!4894643 (= e!3059813 (isPrefix!4895 (tail!9602 (list!17727 input!1236)) (tail!9602 (list!17727 input!1236))))))

(assert (= (and d!1572373 (not res!2090512)) b!4894641))

(assert (= (and b!4894641 res!2090513) b!4894642))

(assert (= (and b!4894642 res!2090515) b!4894643))

(assert (= (and d!1572373 (not res!2090514)) b!4894644))

(assert (=> b!4894644 m!5898444))

(assert (=> b!4894644 m!5898790))

(assert (=> b!4894644 m!5898444))

(assert (=> b!4894644 m!5898790))

(assert (=> b!4894642 m!5898444))

(declare-fun m!5900280 () Bool)

(assert (=> b!4894642 m!5900280))

(assert (=> b!4894642 m!5898444))

(assert (=> b!4894642 m!5900280))

(assert (=> b!4894643 m!5898444))

(declare-fun m!5900282 () Bool)

(assert (=> b!4894643 m!5900282))

(assert (=> b!4894643 m!5898444))

(assert (=> b!4894643 m!5900282))

(assert (=> b!4894643 m!5900282))

(assert (=> b!4894643 m!5900282))

(declare-fun m!5900284 () Bool)

(assert (=> b!4894643 m!5900284))

(assert (=> d!1571957 d!1572373))

(declare-fun d!1572375 () Bool)

(assert (=> d!1572375 (isPrefix!4895 (list!17727 input!1236) (list!17727 input!1236))))

(declare-fun lt!2006601 () Unit!146435)

(assert (=> d!1572375 (= lt!2006601 (choose!35724 (list!17727 input!1236) (list!17727 input!1236)))))

(assert (=> d!1572375 (= (lemmaIsPrefixRefl!3292 (list!17727 input!1236) (list!17727 input!1236)) lt!2006601)))

(declare-fun bs!1176166 () Bool)

(assert (= bs!1176166 d!1572375))

(assert (=> bs!1176166 m!5898444))

(assert (=> bs!1176166 m!5898444))

(assert (=> bs!1176166 m!5898906))

(assert (=> bs!1176166 m!5898444))

(assert (=> bs!1176166 m!5898444))

(declare-fun m!5900286 () Bool)

(assert (=> bs!1176166 m!5900286))

(assert (=> d!1571957 d!1572375))

(assert (=> d!1571957 d!1571967))

(declare-fun d!1572377 () Bool)

(assert (=> d!1572377 (= (get!19481 (maxPrefix!4604 thiss!14805 (t!365674 (t!365674 rulesArg!165)) (list!17727 input!1236))) (v!49981 (maxPrefix!4604 thiss!14805 (t!365674 (t!365674 rulesArg!165)) (list!17727 input!1236))))))

(assert (=> b!4894181 d!1572377))

(declare-fun d!1572379 () Bool)

(assert (=> d!1572379 (= (list!17727 (_2!33531 (get!19482 lt!2006381))) (list!17729 (c!831694 (_2!33531 (get!19482 lt!2006381)))))))

(declare-fun bs!1176167 () Bool)

(assert (= bs!1176167 d!1572379))

(declare-fun m!5900288 () Bool)

(assert (=> bs!1176167 m!5900288))

(assert (=> b!4894181 d!1572379))

(declare-fun b!4894645 () Bool)

(declare-fun e!3059816 () Bool)

(declare-fun e!3059817 () Bool)

(assert (=> b!4894645 (= e!3059816 e!3059817)))

(declare-fun res!2090517 () Bool)

(assert (=> b!4894645 (=> (not res!2090517) (not e!3059817))))

(declare-fun lt!2006603 () Option!14028)

(assert (=> b!4894645 (= res!2090517 (isDefined!11040 lt!2006603))))

(declare-fun b!4894646 () Bool)

(assert (=> b!4894646 (= e!3059817 (contains!19438 (t!365674 (t!365674 rulesArg!165)) (rule!11365 (_1!33532 (get!19481 lt!2006603)))))))

(declare-fun d!1572381 () Bool)

(assert (=> d!1572381 e!3059816))

(declare-fun res!2090516 () Bool)

(assert (=> d!1572381 (=> res!2090516 e!3059816)))

(assert (=> d!1572381 (= res!2090516 (isEmpty!30267 lt!2006603))))

(declare-fun e!3059815 () Option!14028)

(assert (=> d!1572381 (= lt!2006603 e!3059815)))

(declare-fun c!831919 () Bool)

(assert (=> d!1572381 (= c!831919 (and (is-Cons!56410 (t!365674 (t!365674 rulesArg!165))) (is-Nil!56410 (t!365674 (t!365674 (t!365674 rulesArg!165))))))))

(declare-fun lt!2006604 () Unit!146435)

(declare-fun lt!2006605 () Unit!146435)

(assert (=> d!1572381 (= lt!2006604 lt!2006605)))

(assert (=> d!1572381 (isPrefix!4895 (list!17727 input!1236) (list!17727 input!1236))))

(assert (=> d!1572381 (= lt!2006605 (lemmaIsPrefixRefl!3292 (list!17727 input!1236) (list!17727 input!1236)))))

(assert (=> d!1572381 (rulesValidInductive!3154 thiss!14805 (t!365674 (t!365674 rulesArg!165)))))

(assert (=> d!1572381 (= (maxPrefix!4604 thiss!14805 (t!365674 (t!365674 rulesArg!165)) (list!17727 input!1236)) lt!2006603)))

(declare-fun b!4894647 () Bool)

(declare-fun res!2090518 () Bool)

(assert (=> b!4894647 (=> (not res!2090518) (not e!3059817))))

(assert (=> b!4894647 (= res!2090518 (= (++!12244 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006603)))) (_2!33532 (get!19481 lt!2006603))) (list!17727 input!1236)))))

(declare-fun bm!339507 () Bool)

(declare-fun call!339512 () Option!14028)

(assert (=> bm!339507 (= call!339512 (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 (t!365674 rulesArg!165))) (list!17727 input!1236)))))

(declare-fun b!4894648 () Bool)

(declare-fun lt!2006606 () Option!14028)

(declare-fun lt!2006602 () Option!14028)

(assert (=> b!4894648 (= e!3059815 (ite (and (is-None!14027 lt!2006606) (is-None!14027 lt!2006602)) None!14027 (ite (is-None!14027 lt!2006602) lt!2006606 (ite (is-None!14027 lt!2006606) lt!2006602 (ite (>= (size!37143 (_1!33532 (v!49981 lt!2006606))) (size!37143 (_1!33532 (v!49981 lt!2006602)))) lt!2006606 lt!2006602)))))))

(assert (=> b!4894648 (= lt!2006606 call!339512)))

(assert (=> b!4894648 (= lt!2006602 (maxPrefix!4604 thiss!14805 (t!365674 (t!365674 (t!365674 rulesArg!165))) (list!17727 input!1236)))))

(declare-fun b!4894649 () Bool)

(assert (=> b!4894649 (= e!3059815 call!339512)))

(declare-fun b!4894650 () Bool)

(declare-fun res!2090522 () Bool)

(assert (=> b!4894650 (=> (not res!2090522) (not e!3059817))))

(assert (=> b!4894650 (= res!2090522 (matchR!6531 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006603)))) (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006603))))))))

(declare-fun b!4894651 () Bool)

(declare-fun res!2090521 () Bool)

(assert (=> b!4894651 (=> (not res!2090521) (not e!3059817))))

(assert (=> b!4894651 (= res!2090521 (= (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006603)))) (originalCharacters!8488 (_1!33532 (get!19481 lt!2006603)))))))

(declare-fun b!4894652 () Bool)

(declare-fun res!2090520 () Bool)

(assert (=> b!4894652 (=> (not res!2090520) (not e!3059817))))

(assert (=> b!4894652 (= res!2090520 (= (value!262139 (_1!33532 (get!19481 lt!2006603))) (apply!13541 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006603)))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006603)))))))))

(declare-fun b!4894653 () Bool)

(declare-fun res!2090519 () Bool)

(assert (=> b!4894653 (=> (not res!2090519) (not e!3059817))))

(assert (=> b!4894653 (= res!2090519 (< (size!37145 (_2!33532 (get!19481 lt!2006603))) (size!37145 (list!17727 input!1236))))))

(assert (= (and d!1572381 c!831919) b!4894649))

(assert (= (and d!1572381 (not c!831919)) b!4894648))

(assert (= (or b!4894649 b!4894648) bm!339507))

(assert (= (and d!1572381 (not res!2090516)) b!4894645))

(assert (= (and b!4894645 res!2090517) b!4894651))

(assert (= (and b!4894651 res!2090521) b!4894653))

(assert (= (and b!4894653 res!2090519) b!4894647))

(assert (= (and b!4894647 res!2090518) b!4894652))

(assert (= (and b!4894652 res!2090520) b!4894650))

(assert (= (and b!4894650 res!2090522) b!4894646))

(declare-fun m!5900290 () Bool)

(assert (=> b!4894646 m!5900290))

(declare-fun m!5900292 () Bool)

(assert (=> b!4894646 m!5900292))

(declare-fun m!5900294 () Bool)

(assert (=> d!1572381 m!5900294))

(assert (=> d!1572381 m!5898444))

(assert (=> d!1572381 m!5898444))

(assert (=> d!1572381 m!5898906))

(assert (=> d!1572381 m!5898444))

(assert (=> d!1572381 m!5898444))

(assert (=> d!1572381 m!5898908))

(assert (=> d!1572381 m!5898952))

(assert (=> b!4894648 m!5898444))

(declare-fun m!5900296 () Bool)

(assert (=> b!4894648 m!5900296))

(assert (=> b!4894650 m!5900290))

(declare-fun m!5900298 () Bool)

(assert (=> b!4894650 m!5900298))

(assert (=> b!4894650 m!5900298))

(declare-fun m!5900300 () Bool)

(assert (=> b!4894650 m!5900300))

(assert (=> b!4894650 m!5900300))

(declare-fun m!5900302 () Bool)

(assert (=> b!4894650 m!5900302))

(assert (=> b!4894651 m!5900290))

(assert (=> b!4894651 m!5900298))

(assert (=> b!4894651 m!5900298))

(assert (=> b!4894651 m!5900300))

(assert (=> b!4894647 m!5900290))

(assert (=> b!4894647 m!5900298))

(assert (=> b!4894647 m!5900298))

(assert (=> b!4894647 m!5900300))

(assert (=> b!4894647 m!5900300))

(declare-fun m!5900304 () Bool)

(assert (=> b!4894647 m!5900304))

(assert (=> b!4894653 m!5900290))

(declare-fun m!5900306 () Bool)

(assert (=> b!4894653 m!5900306))

(assert (=> b!4894653 m!5898444))

(assert (=> b!4894653 m!5898790))

(assert (=> b!4894652 m!5900290))

(declare-fun m!5900308 () Bool)

(assert (=> b!4894652 m!5900308))

(assert (=> b!4894652 m!5900308))

(declare-fun m!5900310 () Bool)

(assert (=> b!4894652 m!5900310))

(assert (=> bm!339507 m!5898444))

(declare-fun m!5900312 () Bool)

(assert (=> bm!339507 m!5900312))

(declare-fun m!5900314 () Bool)

(assert (=> b!4894645 m!5900314))

(assert (=> b!4894181 d!1572381))

(assert (=> b!4894181 d!1572265))

(assert (=> b!4894181 d!1571887))

(declare-fun d!1572383 () Bool)

(declare-fun c!831920 () Bool)

(assert (=> d!1572383 (= c!831920 (is-Node!14743 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))))))

(declare-fun e!3059818 () Bool)

(assert (=> d!1572383 (= (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))) e!3059818)))

(declare-fun b!4894654 () Bool)

(assert (=> b!4894654 (= e!3059818 (inv!72695 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))))))

(declare-fun b!4894655 () Bool)

(declare-fun e!3059819 () Bool)

(assert (=> b!4894655 (= e!3059818 e!3059819)))

(declare-fun res!2090523 () Bool)

(assert (=> b!4894655 (= res!2090523 (not (is-Leaf!24548 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))))))))

(assert (=> b!4894655 (=> res!2090523 e!3059819)))

(declare-fun b!4894656 () Bool)

(assert (=> b!4894656 (= e!3059819 (inv!72696 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))))))

(assert (= (and d!1572383 c!831920) b!4894654))

(assert (= (and d!1572383 (not c!831920)) b!4894655))

(assert (= (and b!4894655 (not res!2090523)) b!4894656))

(declare-fun m!5900316 () Bool)

(assert (=> b!4894654 m!5900316))

(declare-fun m!5900318 () Bool)

(assert (=> b!4894656 m!5900318))

(assert (=> b!4894257 d!1572383))

(declare-fun b!4894657 () Bool)

(declare-fun res!2090525 () Bool)

(declare-fun e!3059820 () Bool)

(assert (=> b!4894657 (=> (not res!2090525) (not e!3059820))))

(declare-fun lt!2006607 () Option!14028)

(assert (=> b!4894657 (= res!2090525 (< (size!37145 (_2!33532 (get!19481 lt!2006607))) (size!37145 (list!17727 input!1236))))))

(declare-fun b!4894658 () Bool)

(declare-fun res!2090527 () Bool)

(assert (=> b!4894658 (=> (not res!2090527) (not e!3059820))))

(assert (=> b!4894658 (= res!2090527 (= (++!12244 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006607)))) (_2!33532 (get!19481 lt!2006607))) (list!17727 input!1236)))))

(declare-fun b!4894659 () Bool)

(declare-fun e!3059821 () Option!14028)

(declare-fun lt!2006608 () tuple2!60466)

(assert (=> b!4894659 (= e!3059821 (Some!14027 (tuple2!60459 (Token!14915 (apply!13541 (transformation!8175 (h!62858 (t!365674 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006608))) (h!62858 (t!365674 rulesArg!165)) (size!37147 (seqFromList!5937 (_1!33536 lt!2006608))) (_1!33536 lt!2006608)) (_2!33536 lt!2006608))))))

(declare-fun lt!2006609 () Unit!146435)

(assert (=> b!4894659 (= lt!2006609 (longestMatchIsAcceptedByMatchOrIsEmpty!1717 (regex!8175 (h!62858 (t!365674 rulesArg!165))) (list!17727 input!1236)))))

(declare-fun res!2090526 () Bool)

(assert (=> b!4894659 (= res!2090526 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236))))))))

(declare-fun e!3059823 () Bool)

(assert (=> b!4894659 (=> res!2090526 e!3059823)))

(assert (=> b!4894659 e!3059823))

(declare-fun lt!2006610 () Unit!146435)

(assert (=> b!4894659 (= lt!2006610 lt!2006609)))

(declare-fun lt!2006611 () Unit!146435)

(assert (=> b!4894659 (= lt!2006611 (lemmaSemiInverse!2565 (transformation!8175 (h!62858 (t!365674 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006608))))))

(declare-fun b!4894660 () Bool)

(assert (=> b!4894660 (= e!3059820 (= (size!37143 (_1!33532 (get!19481 lt!2006607))) (size!37145 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006607))))))))

(declare-fun b!4894661 () Bool)

(declare-fun e!3059822 () Bool)

(assert (=> b!4894661 (= e!3059822 e!3059820)))

(declare-fun res!2090528 () Bool)

(assert (=> b!4894661 (=> (not res!2090528) (not e!3059820))))

(assert (=> b!4894661 (= res!2090528 (matchR!6531 (regex!8175 (h!62858 (t!365674 rulesArg!165))) (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006607))))))))

(declare-fun d!1572385 () Bool)

(assert (=> d!1572385 e!3059822))

(declare-fun res!2090529 () Bool)

(assert (=> d!1572385 (=> res!2090529 e!3059822)))

(assert (=> d!1572385 (= res!2090529 (isEmpty!30267 lt!2006607))))

(assert (=> d!1572385 (= lt!2006607 e!3059821)))

(declare-fun c!831921 () Bool)

(assert (=> d!1572385 (= c!831921 (isEmpty!30272 (_1!33536 lt!2006608)))))

(assert (=> d!1572385 (= lt!2006608 (findLongestMatch!1648 (regex!8175 (h!62858 (t!365674 rulesArg!165))) (list!17727 input!1236)))))

(assert (=> d!1572385 (ruleValid!3673 thiss!14805 (h!62858 (t!365674 rulesArg!165)))))

(assert (=> d!1572385 (= (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 rulesArg!165)) (list!17727 input!1236)) lt!2006607)))

(declare-fun b!4894662 () Bool)

(assert (=> b!4894662 (= e!3059823 (matchR!6531 (regex!8175 (h!62858 (t!365674 rulesArg!165))) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236))))))))

(declare-fun b!4894663 () Bool)

(declare-fun res!2090524 () Bool)

(assert (=> b!4894663 (=> (not res!2090524) (not e!3059820))))

(assert (=> b!4894663 (= res!2090524 (= (value!262139 (_1!33532 (get!19481 lt!2006607))) (apply!13541 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006607)))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006607)))))))))

(declare-fun b!4894664 () Bool)

(assert (=> b!4894664 (= e!3059821 None!14027)))

(declare-fun b!4894665 () Bool)

(declare-fun res!2090530 () Bool)

(assert (=> b!4894665 (=> (not res!2090530) (not e!3059820))))

(assert (=> b!4894665 (= res!2090530 (= (rule!11365 (_1!33532 (get!19481 lt!2006607))) (h!62858 (t!365674 rulesArg!165))))))

(assert (= (and d!1572385 c!831921) b!4894664))

(assert (= (and d!1572385 (not c!831921)) b!4894659))

(assert (= (and b!4894659 (not res!2090526)) b!4894662))

(assert (= (and d!1572385 (not res!2090529)) b!4894661))

(assert (= (and b!4894661 res!2090528) b!4894658))

(assert (= (and b!4894658 res!2090527) b!4894657))

(assert (= (and b!4894657 res!2090525) b!4894665))

(assert (= (and b!4894665 res!2090530) b!4894663))

(assert (= (and b!4894663 res!2090524) b!4894660))

(declare-fun m!5900320 () Bool)

(assert (=> b!4894659 m!5900320))

(declare-fun m!5900322 () Bool)

(assert (=> b!4894659 m!5900322))

(assert (=> b!4894659 m!5898636))

(assert (=> b!4894659 m!5898444))

(assert (=> b!4894659 m!5898444))

(assert (=> b!4894659 m!5898790))

(declare-fun m!5900324 () Bool)

(assert (=> b!4894659 m!5900324))

(assert (=> b!4894659 m!5900320))

(declare-fun m!5900326 () Bool)

(assert (=> b!4894659 m!5900326))

(declare-fun m!5900328 () Bool)

(assert (=> b!4894659 m!5900328))

(assert (=> b!4894659 m!5900320))

(assert (=> b!4894659 m!5898444))

(declare-fun m!5900330 () Bool)

(assert (=> b!4894659 m!5900330))

(assert (=> b!4894659 m!5900320))

(declare-fun m!5900332 () Bool)

(assert (=> b!4894659 m!5900332))

(assert (=> b!4894659 m!5898444))

(assert (=> b!4894659 m!5898790))

(assert (=> b!4894659 m!5898636))

(declare-fun m!5900334 () Bool)

(assert (=> b!4894663 m!5900334))

(declare-fun m!5900336 () Bool)

(assert (=> b!4894663 m!5900336))

(assert (=> b!4894663 m!5900336))

(declare-fun m!5900338 () Bool)

(assert (=> b!4894663 m!5900338))

(assert (=> b!4894661 m!5900334))

(declare-fun m!5900340 () Bool)

(assert (=> b!4894661 m!5900340))

(assert (=> b!4894661 m!5900340))

(declare-fun m!5900342 () Bool)

(assert (=> b!4894661 m!5900342))

(assert (=> b!4894661 m!5900342))

(declare-fun m!5900344 () Bool)

(assert (=> b!4894661 m!5900344))

(declare-fun m!5900346 () Bool)

(assert (=> d!1572385 m!5900346))

(declare-fun m!5900348 () Bool)

(assert (=> d!1572385 m!5900348))

(assert (=> d!1572385 m!5898444))

(declare-fun m!5900350 () Bool)

(assert (=> d!1572385 m!5900350))

(assert (=> d!1572385 m!5898950))

(assert (=> b!4894658 m!5900334))

(assert (=> b!4894658 m!5900340))

(assert (=> b!4894658 m!5900340))

(assert (=> b!4894658 m!5900342))

(assert (=> b!4894658 m!5900342))

(declare-fun m!5900352 () Bool)

(assert (=> b!4894658 m!5900352))

(assert (=> b!4894662 m!5898636))

(assert (=> b!4894662 m!5898444))

(assert (=> b!4894662 m!5898790))

(assert (=> b!4894662 m!5898636))

(assert (=> b!4894662 m!5898444))

(assert (=> b!4894662 m!5898444))

(assert (=> b!4894662 m!5898790))

(assert (=> b!4894662 m!5900324))

(declare-fun m!5900354 () Bool)

(assert (=> b!4894662 m!5900354))

(assert (=> b!4894665 m!5900334))

(assert (=> b!4894660 m!5900334))

(declare-fun m!5900356 () Bool)

(assert (=> b!4894660 m!5900356))

(assert (=> b!4894657 m!5900334))

(declare-fun m!5900358 () Bool)

(assert (=> b!4894657 m!5900358))

(assert (=> b!4894657 m!5898444))

(assert (=> b!4894657 m!5898790))

(assert (=> bm!339413 d!1572385))

(declare-fun b!4894669 () Bool)

(declare-fun e!3059824 () Bool)

(assert (=> b!4894669 (= e!3059824 (>= (size!37145 (tail!9602 lt!2005975)) (size!37145 (tail!9602 lt!2005969))))))

(declare-fun d!1572387 () Bool)

(assert (=> d!1572387 e!3059824))

(declare-fun res!2090533 () Bool)

(assert (=> d!1572387 (=> res!2090533 e!3059824)))

(declare-fun lt!2006612 () Bool)

(assert (=> d!1572387 (= res!2090533 (not lt!2006612))))

(declare-fun e!3059826 () Bool)

(assert (=> d!1572387 (= lt!2006612 e!3059826)))

(declare-fun res!2090531 () Bool)

(assert (=> d!1572387 (=> res!2090531 e!3059826)))

(assert (=> d!1572387 (= res!2090531 (is-Nil!56408 (tail!9602 lt!2005969)))))

(assert (=> d!1572387 (= (isPrefix!4895 (tail!9602 lt!2005969) (tail!9602 lt!2005975)) lt!2006612)))

(declare-fun b!4894667 () Bool)

(declare-fun res!2090534 () Bool)

(declare-fun e!3059825 () Bool)

(assert (=> b!4894667 (=> (not res!2090534) (not e!3059825))))

(assert (=> b!4894667 (= res!2090534 (= (head!10456 (tail!9602 lt!2005969)) (head!10456 (tail!9602 lt!2005975))))))

(declare-fun b!4894666 () Bool)

(assert (=> b!4894666 (= e!3059826 e!3059825)))

(declare-fun res!2090532 () Bool)

(assert (=> b!4894666 (=> (not res!2090532) (not e!3059825))))

(assert (=> b!4894666 (= res!2090532 (not (is-Nil!56408 (tail!9602 lt!2005975))))))

(declare-fun b!4894668 () Bool)

(assert (=> b!4894668 (= e!3059825 (isPrefix!4895 (tail!9602 (tail!9602 lt!2005969)) (tail!9602 (tail!9602 lt!2005975))))))

(assert (= (and d!1572387 (not res!2090531)) b!4894666))

(assert (= (and b!4894666 res!2090532) b!4894667))

(assert (= (and b!4894667 res!2090534) b!4894668))

(assert (= (and d!1572387 (not res!2090533)) b!4894669))

(assert (=> b!4894669 m!5898970))

(declare-fun m!5900360 () Bool)

(assert (=> b!4894669 m!5900360))

(assert (=> b!4894669 m!5898968))

(declare-fun m!5900362 () Bool)

(assert (=> b!4894669 m!5900362))

(assert (=> b!4894667 m!5898968))

(declare-fun m!5900364 () Bool)

(assert (=> b!4894667 m!5900364))

(assert (=> b!4894667 m!5898970))

(declare-fun m!5900366 () Bool)

(assert (=> b!4894667 m!5900366))

(assert (=> b!4894668 m!5898968))

(declare-fun m!5900368 () Bool)

(assert (=> b!4894668 m!5900368))

(assert (=> b!4894668 m!5898970))

(declare-fun m!5900370 () Bool)

(assert (=> b!4894668 m!5900370))

(assert (=> b!4894668 m!5900368))

(assert (=> b!4894668 m!5900370))

(declare-fun m!5900372 () Bool)

(assert (=> b!4894668 m!5900372))

(assert (=> b!4893840 d!1572387))

(declare-fun d!1572389 () Bool)

(assert (=> d!1572389 (= (tail!9602 lt!2005969) (t!365672 lt!2005969))))

(assert (=> b!4893840 d!1572389))

(declare-fun d!1572391 () Bool)

(assert (=> d!1572391 (= (tail!9602 lt!2005975) (t!365672 lt!2005975))))

(assert (=> b!4893840 d!1572391))

(declare-fun d!1572393 () Bool)

(assert (=> d!1572393 (= (inv!72697 (xs!18059 (left!40981 (c!831694 input!1236)))) (<= (size!37145 (innerList!14831 (xs!18059 (left!40981 (c!831694 input!1236))))) 2147483647))))

(declare-fun bs!1176168 () Bool)

(assert (= bs!1176168 d!1572393))

(declare-fun m!5900374 () Bool)

(assert (=> bs!1176168 m!5900374))

(assert (=> b!4894235 d!1572393))

(declare-fun b!4894670 () Bool)

(declare-fun e!3059828 () Bool)

(assert (=> b!4894670 (= e!3059828 (inv!16 (dynLambda!22646 (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936)))))))))

(declare-fun b!4894671 () Bool)

(declare-fun e!3059827 () Bool)

(assert (=> b!4894671 (= e!3059827 (inv!15 (dynLambda!22646 (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936)))))))))

(declare-fun d!1572395 () Bool)

(declare-fun c!831923 () Bool)

(assert (=> d!1572395 (= c!831923 (is-IntegerValue!25455 (dynLambda!22646 (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936)))))))))

(assert (=> d!1572395 (= (inv!21 (dynLambda!22646 (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936)))))) e!3059828)))

(declare-fun b!4894672 () Bool)

(declare-fun e!3059829 () Bool)

(assert (=> b!4894672 (= e!3059828 e!3059829)))

(declare-fun c!831922 () Bool)

(assert (=> b!4894672 (= c!831922 (is-IntegerValue!25456 (dynLambda!22646 (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936)))))))))

(declare-fun b!4894673 () Bool)

(assert (=> b!4894673 (= e!3059829 (inv!17 (dynLambda!22646 (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936)))))))))

(declare-fun b!4894674 () Bool)

(declare-fun res!2090535 () Bool)

(assert (=> b!4894674 (=> res!2090535 e!3059827)))

(assert (=> b!4894674 (= res!2090535 (not (is-IntegerValue!25457 (dynLambda!22646 (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936))))))))))

(assert (=> b!4894674 (= e!3059829 e!3059827)))

(assert (= (and d!1572395 c!831923) b!4894670))

(assert (= (and d!1572395 (not c!831923)) b!4894672))

(assert (= (and b!4894672 c!831922) b!4894673))

(assert (= (and b!4894672 (not c!831922)) b!4894674))

(assert (= (and b!4894674 (not res!2090535)) b!4894671))

(declare-fun m!5900376 () Bool)

(assert (=> b!4894670 m!5900376))

(declare-fun m!5900378 () Bool)

(assert (=> b!4894671 m!5900378))

(declare-fun m!5900380 () Bool)

(assert (=> b!4894673 m!5900380))

(assert (=> tb!258939 d!1572395))

(assert (=> b!4893744 d!1572301))

(declare-fun d!1572397 () Bool)

(declare-fun lt!2006613 () Int)

(assert (=> d!1572397 (>= lt!2006613 0)))

(declare-fun e!3059830 () Int)

(assert (=> d!1572397 (= lt!2006613 e!3059830)))

(declare-fun c!831924 () Bool)

(assert (=> d!1572397 (= c!831924 (is-Nil!56408 (_1!33536 lt!2006251)))))

(assert (=> d!1572397 (= (size!37145 (_1!33536 lt!2006251)) lt!2006613)))

(declare-fun b!4894675 () Bool)

(assert (=> b!4894675 (= e!3059830 0)))

(declare-fun b!4894676 () Bool)

(assert (=> b!4894676 (= e!3059830 (+ 1 (size!37145 (t!365672 (_1!33536 lt!2006251)))))))

(assert (= (and d!1572397 c!831924) b!4894675))

(assert (= (and d!1572397 (not c!831924)) b!4894676))

(declare-fun m!5900382 () Bool)

(assert (=> b!4894676 m!5900382))

(assert (=> b!4893964 d!1572397))

(assert (=> b!4893964 d!1572025))

(declare-fun d!1572399 () Bool)

(assert (=> d!1572399 (= (list!17731 (xs!18059 (c!831694 (_2!33531 lt!2005841)))) (innerList!14831 (xs!18059 (c!831694 (_2!33531 lt!2005841)))))))

(assert (=> b!4894042 d!1572399))

(declare-fun d!1572401 () Bool)

(assert (=> d!1572401 (= (height!1956 (left!40981 (c!831694 input!1236))) (ite (is-Empty!14743 (left!40981 (c!831694 input!1236))) 0 (ite (is-Leaf!24548 (left!40981 (c!831694 input!1236))) 1 (cheight!14954 (left!40981 (c!831694 input!1236))))))))

(assert (=> b!4894161 d!1572401))

(declare-fun d!1572403 () Bool)

(assert (=> d!1572403 (= (height!1956 (right!41311 (c!831694 input!1236))) (ite (is-Empty!14743 (right!41311 (c!831694 input!1236))) 0 (ite (is-Leaf!24548 (right!41311 (c!831694 input!1236))) 1 (cheight!14954 (right!41311 (c!831694 input!1236))))))))

(assert (=> b!4894161 d!1572403))

(declare-fun d!1572405 () Bool)

(assert (=> d!1572405 (= (tail!9602 lt!2006027) (t!365672 lt!2006027))))

(assert (=> bm!339457 d!1572405))

(declare-fun d!1572407 () Bool)

(declare-fun lt!2006614 () Int)

(assert (=> d!1572407 (>= lt!2006614 0)))

(declare-fun e!3059831 () Int)

(assert (=> d!1572407 (= lt!2006614 e!3059831)))

(declare-fun c!831925 () Bool)

(assert (=> d!1572407 (= c!831925 (is-Nil!56408 (innerList!14831 (xs!18059 (c!831694 input!1236)))))))

(assert (=> d!1572407 (= (size!37145 (innerList!14831 (xs!18059 (c!831694 input!1236)))) lt!2006614)))

(declare-fun b!4894677 () Bool)

(assert (=> b!4894677 (= e!3059831 0)))

(declare-fun b!4894678 () Bool)

(assert (=> b!4894678 (= e!3059831 (+ 1 (size!37145 (t!365672 (innerList!14831 (xs!18059 (c!831694 input!1236)))))))))

(assert (= (and d!1572407 c!831925) b!4894677))

(assert (= (and d!1572407 (not c!831925)) b!4894678))

(declare-fun m!5900384 () Bool)

(assert (=> b!4894678 m!5900384))

(assert (=> d!1571947 d!1572407))

(declare-fun bs!1176169 () Bool)

(declare-fun d!1572409 () Bool)

(assert (= bs!1176169 (and d!1572409 d!1571987)))

(declare-fun lambda!244063 () Int)

(assert (=> bs!1176169 (= (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) (= lambda!244063 lambda!244040))))

(declare-fun bs!1176170 () Bool)

(assert (= bs!1176170 (and d!1572409 d!1572013)))

(assert (=> bs!1176170 (= (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) (= lambda!244063 lambda!244043))))

(assert (=> d!1572409 true))

(assert (=> d!1572409 (< (dynLambda!22635 order!25479 (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) (dynLambda!22643 order!25491 lambda!244063))))

(assert (=> d!1572409 (= (equivClasses!3466 (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) (Forall2!1268 lambda!244063))))

(declare-fun bs!1176171 () Bool)

(assert (= bs!1176171 d!1572409))

(declare-fun m!5900386 () Bool)

(assert (=> bs!1176171 m!5900386))

(assert (=> b!4894166 d!1572409))

(declare-fun d!1572411 () Bool)

(assert (=> d!1572411 (= (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))) (h!62856 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))

(assert (=> b!4894137 d!1572411))

(declare-fun lt!2006617 () Option!14028)

(declare-fun d!1572413 () Bool)

(assert (=> d!1572413 (= lt!2006617 (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 rulesArg!165)) (list!17727 input!1236)))))

(declare-fun e!3059832 () Option!14028)

(assert (=> d!1572413 (= lt!2006617 e!3059832)))

(declare-fun c!831926 () Bool)

(declare-fun lt!2006619 () tuple2!60466)

(assert (=> d!1572413 (= c!831926 (isEmpty!30272 (_1!33536 lt!2006619)))))

(assert (=> d!1572413 (= lt!2006619 (findLongestMatchWithZipper!84 (regex!8175 (h!62858 (t!365674 rulesArg!165))) (list!17727 input!1236)))))

(assert (=> d!1572413 (ruleValid!3673 thiss!14805 (h!62858 (t!365674 rulesArg!165)))))

(assert (=> d!1572413 (= (maxPrefixOneRuleZipper!259 thiss!14805 (h!62858 (t!365674 rulesArg!165)) (list!17727 input!1236)) lt!2006617)))

(declare-fun b!4894679 () Bool)

(assert (=> b!4894679 (= e!3059832 None!14027)))

(declare-fun b!4894680 () Bool)

(assert (=> b!4894680 (= e!3059832 (Some!14027 (tuple2!60459 (Token!14915 (apply!13541 (transformation!8175 (h!62858 (t!365674 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006619))) (h!62858 (t!365674 rulesArg!165)) (size!37145 (_1!33536 lt!2006619)) (_1!33536 lt!2006619)) (_2!33536 lt!2006619))))))

(declare-fun lt!2006616 () Unit!146435)

(assert (=> b!4894680 (= lt!2006616 (longestMatchIsAcceptedByMatchOrIsEmpty!1717 (regex!8175 (h!62858 (t!365674 rulesArg!165))) (list!17727 input!1236)))))

(declare-fun res!2090536 () Bool)

(assert (=> b!4894680 (= res!2090536 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236))))))))

(declare-fun e!3059833 () Bool)

(assert (=> b!4894680 (=> res!2090536 e!3059833)))

(assert (=> b!4894680 e!3059833))

(declare-fun lt!2006618 () Unit!146435)

(assert (=> b!4894680 (= lt!2006618 lt!2006616)))

(declare-fun lt!2006615 () Unit!146435)

(assert (=> b!4894680 (= lt!2006615 (lemmaInv!1237 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))))

(declare-fun lt!2006620 () Unit!146435)

(assert (=> b!4894680 (= lt!2006620 (lemmaSemiInverse!2565 (transformation!8175 (h!62858 (t!365674 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006619))))))

(declare-fun b!4894681 () Bool)

(assert (=> b!4894681 (= e!3059833 (matchR!6531 (regex!8175 (h!62858 (t!365674 rulesArg!165))) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236))))))))

(assert (= (and d!1572413 c!831926) b!4894679))

(assert (= (and d!1572413 (not c!831926)) b!4894680))

(assert (= (and b!4894680 (not res!2090536)) b!4894681))

(assert (=> d!1572413 m!5898444))

(assert (=> d!1572413 m!5898926))

(declare-fun m!5900388 () Bool)

(assert (=> d!1572413 m!5900388))

(assert (=> d!1572413 m!5898444))

(declare-fun m!5900390 () Bool)

(assert (=> d!1572413 m!5900390))

(assert (=> d!1572413 m!5898950))

(declare-fun m!5900392 () Bool)

(assert (=> b!4894680 m!5900392))

(declare-fun m!5900394 () Bool)

(assert (=> b!4894680 m!5900394))

(assert (=> b!4894680 m!5898636))

(assert (=> b!4894680 m!5898444))

(assert (=> b!4894680 m!5900330))

(assert (=> b!4894680 m!5900392))

(declare-fun m!5900396 () Bool)

(assert (=> b!4894680 m!5900396))

(assert (=> b!4894680 m!5898444))

(assert (=> b!4894680 m!5898790))

(assert (=> b!4894680 m!5900392))

(assert (=> b!4894680 m!5900328))

(assert (=> b!4894680 m!5899462))

(assert (=> b!4894680 m!5898636))

(assert (=> b!4894680 m!5898444))

(assert (=> b!4894680 m!5898444))

(assert (=> b!4894680 m!5898790))

(assert (=> b!4894680 m!5900324))

(declare-fun m!5900398 () Bool)

(assert (=> b!4894680 m!5900398))

(assert (=> b!4894681 m!5898636))

(assert (=> b!4894681 m!5898444))

(assert (=> b!4894681 m!5898790))

(assert (=> b!4894681 m!5898636))

(assert (=> b!4894681 m!5898444))

(assert (=> b!4894681 m!5898444))

(assert (=> b!4894681 m!5898790))

(assert (=> b!4894681 m!5900324))

(assert (=> b!4894681 m!5900354))

(assert (=> bm!339417 d!1572413))

(declare-fun d!1572415 () Bool)

(declare-fun dynLambda!22651 (Int BalanceConc!28916 BalanceConc!28916) Bool)

(assert (=> d!1572415 (dynLambda!22651 lambda!244043 (_1!33535 lt!2006025) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))

(declare-fun lt!2006623 () Unit!146435)

(declare-fun choose!35734 (Int BalanceConc!28916 BalanceConc!28916) Unit!146435)

(assert (=> d!1572415 (= lt!2006623 (choose!35734 lambda!244043 (_1!33535 lt!2006025) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))))

(assert (=> d!1572415 (Forall2!1268 lambda!244043)))

(assert (=> d!1572415 (= (Forall2of!447 lambda!244043 (_1!33535 lt!2006025) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))) lt!2006623)))

(declare-fun b_lambda!194525 () Bool)

(assert (=> (not b_lambda!194525) (not d!1572415)))

(declare-fun bs!1176172 () Bool)

(assert (= bs!1176172 d!1572415))

(assert (=> bs!1176172 m!5898642))

(declare-fun m!5900400 () Bool)

(assert (=> bs!1176172 m!5900400))

(assert (=> bs!1176172 m!5898642))

(declare-fun m!5900402 () Bool)

(assert (=> bs!1176172 m!5900402))

(declare-fun m!5900404 () Bool)

(assert (=> bs!1176172 m!5900404))

(assert (=> d!1572013 d!1572415))

(assert (=> d!1572013 d!1572015))

(declare-fun d!1572417 () Bool)

(assert (=> d!1572417 (= (list!17727 (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))) (list!17729 (c!831694 (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))))

(declare-fun bs!1176173 () Bool)

(assert (= bs!1176173 d!1572417))

(declare-fun m!5900406 () Bool)

(assert (=> bs!1176173 m!5900406))

(assert (=> d!1572013 d!1572417))

(declare-fun d!1572419 () Bool)

(declare-fun e!3059834 () Bool)

(assert (=> d!1572419 e!3059834))

(declare-fun res!2090539 () Bool)

(assert (=> d!1572419 (=> (not res!2090539) (not e!3059834))))

(declare-fun lt!2006629 () Option!14027)

(assert (=> d!1572419 (= res!2090539 (= (isDefined!11041 lt!2006629) (isDefined!11040 (maxPrefixZipper!674 thiss!14805 (t!365674 (t!365674 (t!365674 rulesArg!165))) (list!17727 input!1236)))))))

(declare-fun e!3059839 () Option!14027)

(assert (=> d!1572419 (= lt!2006629 e!3059839)))

(declare-fun c!831927 () Bool)

(assert (=> d!1572419 (= c!831927 (and (is-Cons!56410 (t!365674 (t!365674 (t!365674 rulesArg!165)))) (is-Nil!56410 (t!365674 (t!365674 (t!365674 (t!365674 rulesArg!165)))))))))

(declare-fun lt!2006628 () Unit!146435)

(declare-fun lt!2006626 () Unit!146435)

(assert (=> d!1572419 (= lt!2006628 lt!2006626)))

(declare-fun lt!2006624 () List!56532)

(declare-fun lt!2006630 () List!56532)

(assert (=> d!1572419 (isPrefix!4895 lt!2006624 lt!2006630)))

(assert (=> d!1572419 (= lt!2006626 (lemmaIsPrefixRefl!3292 lt!2006624 lt!2006630))))

(assert (=> d!1572419 (= lt!2006630 (list!17727 input!1236))))

(assert (=> d!1572419 (= lt!2006624 (list!17727 input!1236))))

(assert (=> d!1572419 (rulesValidInductive!3154 thiss!14805 (t!365674 (t!365674 (t!365674 rulesArg!165))))))

(assert (=> d!1572419 (= (maxPrefixZipperSequence!1316 thiss!14805 (t!365674 (t!365674 (t!365674 rulesArg!165))) input!1236) lt!2006629)))

(declare-fun b!4894683 () Bool)

(declare-fun e!3059838 () Bool)

(declare-fun e!3059836 () Bool)

(assert (=> b!4894683 (= e!3059838 e!3059836)))

(declare-fun res!2090540 () Bool)

(assert (=> b!4894683 (=> (not res!2090540) (not e!3059836))))

(assert (=> b!4894683 (= res!2090540 (= (_1!33531 (get!19482 lt!2006629)) (_1!33532 (get!19481 (maxPrefix!4604 thiss!14805 (t!365674 (t!365674 (t!365674 rulesArg!165))) (list!17727 input!1236))))))))

(declare-fun b!4894684 () Bool)

(assert (=> b!4894684 (= e!3059834 e!3059838)))

(declare-fun res!2090537 () Bool)

(assert (=> b!4894684 (=> res!2090537 e!3059838)))

(assert (=> b!4894684 (= res!2090537 (not (isDefined!11041 lt!2006629)))))

(declare-fun b!4894685 () Bool)

(declare-fun res!2090542 () Bool)

(assert (=> b!4894685 (=> (not res!2090542) (not e!3059834))))

(declare-fun e!3059835 () Bool)

(assert (=> b!4894685 (= res!2090542 e!3059835)))

(declare-fun res!2090538 () Bool)

(assert (=> b!4894685 (=> res!2090538 e!3059835)))

(assert (=> b!4894685 (= res!2090538 (not (isDefined!11041 lt!2006629)))))

(declare-fun b!4894686 () Bool)

(assert (=> b!4894686 (= e!3059836 (= (list!17727 (_2!33531 (get!19482 lt!2006629))) (_2!33532 (get!19481 (maxPrefix!4604 thiss!14805 (t!365674 (t!365674 (t!365674 rulesArg!165))) (list!17727 input!1236))))))))

(declare-fun b!4894687 () Bool)

(declare-fun call!339513 () Option!14027)

(assert (=> b!4894687 (= e!3059839 call!339513)))

(declare-fun b!4894688 () Bool)

(declare-fun lt!2006627 () Option!14027)

(declare-fun lt!2006625 () Option!14027)

(assert (=> b!4894688 (= e!3059839 (ite (and (is-None!14026 lt!2006627) (is-None!14026 lt!2006625)) None!14026 (ite (is-None!14026 lt!2006625) lt!2006627 (ite (is-None!14026 lt!2006627) lt!2006625 (ite (>= (size!37143 (_1!33531 (v!49980 lt!2006627))) (size!37143 (_1!33531 (v!49980 lt!2006625)))) lt!2006627 lt!2006625)))))))

(assert (=> b!4894688 (= lt!2006627 call!339513)))

(assert (=> b!4894688 (= lt!2006625 (maxPrefixZipperSequence!1316 thiss!14805 (t!365674 (t!365674 (t!365674 (t!365674 rulesArg!165)))) input!1236))))

(declare-fun b!4894689 () Bool)

(declare-fun e!3059837 () Bool)

(assert (=> b!4894689 (= e!3059837 (= (list!17727 (_2!33531 (get!19482 lt!2006629))) (_2!33532 (get!19481 (maxPrefixZipper!674 thiss!14805 (t!365674 (t!365674 (t!365674 rulesArg!165))) (list!17727 input!1236))))))))

(declare-fun bm!339508 () Bool)

(assert (=> bm!339508 (= call!339513 (maxPrefixOneRuleZipperSequence!685 thiss!14805 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))) input!1236))))

(declare-fun b!4894690 () Bool)

(assert (=> b!4894690 (= e!3059835 e!3059837)))

(declare-fun res!2090541 () Bool)

(assert (=> b!4894690 (=> (not res!2090541) (not e!3059837))))

(assert (=> b!4894690 (= res!2090541 (= (_1!33531 (get!19482 lt!2006629)) (_1!33532 (get!19481 (maxPrefixZipper!674 thiss!14805 (t!365674 (t!365674 (t!365674 rulesArg!165))) (list!17727 input!1236))))))))

(assert (= (and d!1572419 c!831927) b!4894687))

(assert (= (and d!1572419 (not c!831927)) b!4894688))

(assert (= (or b!4894687 b!4894688) bm!339508))

(assert (= (and d!1572419 res!2090539) b!4894685))

(assert (= (and b!4894685 (not res!2090538)) b!4894690))

(assert (= (and b!4894690 res!2090541) b!4894689))

(assert (= (and b!4894685 res!2090542) b!4894684))

(assert (= (and b!4894684 (not res!2090537)) b!4894683))

(assert (= (and b!4894683 res!2090540) b!4894686))

(declare-fun m!5900408 () Bool)

(assert (=> b!4894690 m!5900408))

(assert (=> b!4894690 m!5898444))

(assert (=> b!4894690 m!5898444))

(assert (=> b!4894690 m!5899918))

(assert (=> b!4894690 m!5899918))

(declare-fun m!5900410 () Bool)

(assert (=> b!4894690 m!5900410))

(declare-fun m!5900412 () Bool)

(assert (=> b!4894684 m!5900412))

(assert (=> b!4894689 m!5899918))

(assert (=> b!4894689 m!5900410))

(assert (=> b!4894689 m!5900408))

(assert (=> b!4894689 m!5898444))

(assert (=> b!4894689 m!5898444))

(assert (=> b!4894689 m!5899918))

(declare-fun m!5900414 () Bool)

(assert (=> b!4894689 m!5900414))

(assert (=> b!4894685 m!5900412))

(assert (=> b!4894686 m!5900408))

(assert (=> b!4894686 m!5898444))

(assert (=> b!4894686 m!5900296))

(declare-fun m!5900416 () Bool)

(assert (=> b!4894686 m!5900416))

(assert (=> b!4894686 m!5898444))

(assert (=> b!4894686 m!5900296))

(assert (=> b!4894686 m!5900414))

(assert (=> b!4894683 m!5900408))

(assert (=> b!4894683 m!5898444))

(assert (=> b!4894683 m!5898444))

(assert (=> b!4894683 m!5900296))

(assert (=> b!4894683 m!5900296))

(assert (=> b!4894683 m!5900416))

(declare-fun m!5900418 () Bool)

(assert (=> bm!339508 m!5900418))

(assert (=> d!1572419 m!5900200))

(declare-fun m!5900420 () Bool)

(assert (=> d!1572419 m!5900420))

(declare-fun m!5900422 () Bool)

(assert (=> d!1572419 m!5900422))

(assert (=> d!1572419 m!5900412))

(assert (=> d!1572419 m!5898444))

(assert (=> d!1572419 m!5898444))

(assert (=> d!1572419 m!5899918))

(assert (=> d!1572419 m!5899918))

(declare-fun m!5900424 () Bool)

(assert (=> d!1572419 m!5900424))

(declare-fun m!5900426 () Bool)

(assert (=> b!4894688 m!5900426))

(assert (=> b!4894183 d!1572419))

(assert (=> b!4893789 d!1572243))

(assert (=> b!4893789 d!1572245))

(assert (=> b!4893789 d!1572247))

(declare-fun d!1572421 () Bool)

(declare-fun c!831928 () Bool)

(assert (=> d!1572421 (= c!831928 (is-Node!14743 (left!40981 (right!41311 (c!831694 input!1236)))))))

(declare-fun e!3059840 () Bool)

(assert (=> d!1572421 (= (inv!72691 (left!40981 (right!41311 (c!831694 input!1236)))) e!3059840)))

(declare-fun b!4894691 () Bool)

(assert (=> b!4894691 (= e!3059840 (inv!72695 (left!40981 (right!41311 (c!831694 input!1236)))))))

(declare-fun b!4894692 () Bool)

(declare-fun e!3059841 () Bool)

(assert (=> b!4894692 (= e!3059840 e!3059841)))

(declare-fun res!2090543 () Bool)

(assert (=> b!4894692 (= res!2090543 (not (is-Leaf!24548 (left!40981 (right!41311 (c!831694 input!1236))))))))

(assert (=> b!4894692 (=> res!2090543 e!3059841)))

(declare-fun b!4894693 () Bool)

(assert (=> b!4894693 (= e!3059841 (inv!72696 (left!40981 (right!41311 (c!831694 input!1236)))))))

(assert (= (and d!1572421 c!831928) b!4894691))

(assert (= (and d!1572421 (not c!831928)) b!4894692))

(assert (= (and b!4894692 (not res!2090543)) b!4894693))

(declare-fun m!5900428 () Bool)

(assert (=> b!4894691 m!5900428))

(declare-fun m!5900430 () Bool)

(assert (=> b!4894693 m!5900430))

(assert (=> b!4894237 d!1572421))

(declare-fun d!1572423 () Bool)

(declare-fun c!831929 () Bool)

(assert (=> d!1572423 (= c!831929 (is-Node!14743 (right!41311 (right!41311 (c!831694 input!1236)))))))

(declare-fun e!3059842 () Bool)

(assert (=> d!1572423 (= (inv!72691 (right!41311 (right!41311 (c!831694 input!1236)))) e!3059842)))

(declare-fun b!4894694 () Bool)

(assert (=> b!4894694 (= e!3059842 (inv!72695 (right!41311 (right!41311 (c!831694 input!1236)))))))

(declare-fun b!4894695 () Bool)

(declare-fun e!3059843 () Bool)

(assert (=> b!4894695 (= e!3059842 e!3059843)))

(declare-fun res!2090544 () Bool)

(assert (=> b!4894695 (= res!2090544 (not (is-Leaf!24548 (right!41311 (right!41311 (c!831694 input!1236))))))))

(assert (=> b!4894695 (=> res!2090544 e!3059843)))

(declare-fun b!4894696 () Bool)

(assert (=> b!4894696 (= e!3059843 (inv!72696 (right!41311 (right!41311 (c!831694 input!1236)))))))

(assert (= (and d!1572423 c!831929) b!4894694))

(assert (= (and d!1572423 (not c!831929)) b!4894695))

(assert (= (and b!4894695 (not res!2090544)) b!4894696))

(declare-fun m!5900432 () Bool)

(assert (=> b!4894694 m!5900432))

(declare-fun m!5900434 () Bool)

(assert (=> b!4894696 m!5900434))

(assert (=> b!4894237 d!1572423))

(declare-fun b!4894697 () Bool)

(declare-fun e!3059845 () List!56532)

(assert (=> b!4894697 (= e!3059845 (_2!33532 (get!19481 lt!2006068)))))

(declare-fun b!4894699 () Bool)

(declare-fun res!2090545 () Bool)

(declare-fun e!3059844 () Bool)

(assert (=> b!4894699 (=> (not res!2090545) (not e!3059844))))

(declare-fun lt!2006631 () List!56532)

(assert (=> b!4894699 (= res!2090545 (= (size!37145 lt!2006631) (+ (size!37145 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068))))) (size!37145 (_2!33532 (get!19481 lt!2006068))))))))

(declare-fun b!4894698 () Bool)

(assert (=> b!4894698 (= e!3059845 (Cons!56408 (h!62856 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068))))) (++!12244 (t!365672 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068))))) (_2!33532 (get!19481 lt!2006068)))))))

(declare-fun d!1572425 () Bool)

(assert (=> d!1572425 e!3059844))

(declare-fun res!2090546 () Bool)

(assert (=> d!1572425 (=> (not res!2090546) (not e!3059844))))

(assert (=> d!1572425 (= res!2090546 (= (content!10019 lt!2006631) (set.union (content!10019 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068))))) (content!10019 (_2!33532 (get!19481 lt!2006068))))))))

(assert (=> d!1572425 (= lt!2006631 e!3059845)))

(declare-fun c!831930 () Bool)

(assert (=> d!1572425 (= c!831930 (is-Nil!56408 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068))))))))

(assert (=> d!1572425 (= (++!12244 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068)))) (_2!33532 (get!19481 lt!2006068))) lt!2006631)))

(declare-fun b!4894700 () Bool)

(assert (=> b!4894700 (= e!3059844 (or (not (= (_2!33532 (get!19481 lt!2006068)) Nil!56408)) (= lt!2006631 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006068)))))))))

(assert (= (and d!1572425 c!831930) b!4894697))

(assert (= (and d!1572425 (not c!831930)) b!4894698))

(assert (= (and d!1572425 res!2090546) b!4894699))

(assert (= (and b!4894699 res!2090545) b!4894700))

(declare-fun m!5900436 () Bool)

(assert (=> b!4894699 m!5900436))

(assert (=> b!4894699 m!5898810))

(declare-fun m!5900438 () Bool)

(assert (=> b!4894699 m!5900438))

(assert (=> b!4894699 m!5898826))

(declare-fun m!5900440 () Bool)

(assert (=> b!4894698 m!5900440))

(declare-fun m!5900442 () Bool)

(assert (=> d!1572425 m!5900442))

(assert (=> d!1572425 m!5898810))

(declare-fun m!5900444 () Bool)

(assert (=> d!1572425 m!5900444))

(declare-fun m!5900446 () Bool)

(assert (=> d!1572425 m!5900446))

(assert (=> b!4893737 d!1572425))

(assert (=> b!4893737 d!1572347))

(assert (=> b!4893737 d!1572349))

(assert (=> b!4893737 d!1572301))

(declare-fun d!1572427 () Bool)

(assert (=> d!1572427 (isPrefix!4895 lt!2006027 lt!2006027)))

(declare-fun lt!2006632 () Unit!146435)

(assert (=> d!1572427 (= lt!2006632 (choose!35724 lt!2006027 lt!2006027))))

(assert (=> d!1572427 (= (lemmaIsPrefixRefl!3292 lt!2006027 lt!2006027) lt!2006632)))

(declare-fun bs!1176174 () Bool)

(assert (= bs!1176174 d!1572427))

(assert (=> bs!1176174 m!5899040))

(declare-fun m!5900448 () Bool)

(assert (=> bs!1176174 m!5900448))

(assert (=> bm!339459 d!1572427))

(declare-fun d!1572429 () Bool)

(declare-fun res!2090547 () Bool)

(declare-fun e!3059846 () Bool)

(assert (=> d!1572429 (=> (not res!2090547) (not e!3059846))))

(assert (=> d!1572429 (= res!2090547 (<= (size!37145 (list!17731 (xs!18059 (right!41311 (c!831694 input!1236))))) 512))))

(assert (=> d!1572429 (= (inv!72696 (right!41311 (c!831694 input!1236))) e!3059846)))

(declare-fun b!4894701 () Bool)

(declare-fun res!2090548 () Bool)

(assert (=> b!4894701 (=> (not res!2090548) (not e!3059846))))

(assert (=> b!4894701 (= res!2090548 (= (csize!29717 (right!41311 (c!831694 input!1236))) (size!37145 (list!17731 (xs!18059 (right!41311 (c!831694 input!1236)))))))))

(declare-fun b!4894702 () Bool)

(assert (=> b!4894702 (= e!3059846 (and (> (csize!29717 (right!41311 (c!831694 input!1236))) 0) (<= (csize!29717 (right!41311 (c!831694 input!1236))) 512)))))

(assert (= (and d!1572429 res!2090547) b!4894701))

(assert (= (and b!4894701 res!2090548) b!4894702))

(assert (=> d!1572429 m!5900190))

(assert (=> d!1572429 m!5900190))

(declare-fun m!5900450 () Bool)

(assert (=> d!1572429 m!5900450))

(assert (=> b!4894701 m!5900190))

(assert (=> b!4894701 m!5900190))

(assert (=> b!4894701 m!5900450))

(assert (=> b!4894127 d!1572429))

(declare-fun d!1572431 () Bool)

(declare-fun e!3059849 () Bool)

(assert (=> d!1572431 e!3059849))

(declare-fun res!2090551 () Bool)

(assert (=> d!1572431 (=> (not res!2090551) (not e!3059849))))

(declare-fun lt!2006635 () BalanceConc!28916)

(assert (=> d!1572431 (= res!2090551 (= (list!17727 lt!2006635) (list!17727 (_1!33535 lt!2006025))))))

(declare-fun fromList!933 (List!56532) Conc!14743)

(assert (=> d!1572431 (= lt!2006635 (BalanceConc!28917 (fromList!933 (list!17727 (_1!33535 lt!2006025)))))))

(assert (=> d!1572431 (= (fromListB!2693 (list!17727 (_1!33535 lt!2006025))) lt!2006635)))

(declare-fun b!4894705 () Bool)

(assert (=> b!4894705 (= e!3059849 (isBalanced!4013 (fromList!933 (list!17727 (_1!33535 lt!2006025)))))))

(assert (= (and d!1572431 res!2090551) b!4894705))

(declare-fun m!5900452 () Bool)

(assert (=> d!1572431 m!5900452))

(assert (=> d!1572431 m!5898640))

(declare-fun m!5900454 () Bool)

(assert (=> d!1572431 m!5900454))

(assert (=> b!4894705 m!5898640))

(assert (=> b!4894705 m!5900454))

(assert (=> b!4894705 m!5900454))

(declare-fun m!5900456 () Bool)

(assert (=> b!4894705 m!5900456))

(assert (=> d!1572023 d!1572431))

(declare-fun d!1572433 () Bool)

(assert (=> d!1572433 (= (max!0 (height!1956 (left!40981 (c!831694 input!1236))) (height!1956 (right!41311 (c!831694 input!1236)))) (ite (< (height!1956 (left!40981 (c!831694 input!1236))) (height!1956 (right!41311 (c!831694 input!1236)))) (height!1956 (right!41311 (c!831694 input!1236))) (height!1956 (left!40981 (c!831694 input!1236)))))))

(assert (=> b!4893849 d!1572433))

(assert (=> b!4893849 d!1572401))

(assert (=> b!4893849 d!1572403))

(declare-fun d!1572435 () Bool)

(assert (=> d!1572435 (= (inv!72690 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025)))) (isBalanced!4013 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025))))))))

(declare-fun bs!1176175 () Bool)

(assert (= bs!1176175 d!1572435))

(declare-fun m!5900458 () Bool)

(assert (=> bs!1176175 m!5900458))

(assert (=> tb!258957 d!1572435))

(declare-fun b!4894706 () Bool)

(declare-fun res!2090556 () Bool)

(declare-fun e!3059856 () Bool)

(assert (=> b!4894706 (=> (not res!2090556) (not e!3059856))))

(assert (=> b!4894706 (= res!2090556 (isEmpty!30272 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086)))))))))

(declare-fun b!4894707 () Bool)

(declare-fun res!2090552 () Bool)

(assert (=> b!4894707 (=> (not res!2090552) (not e!3059856))))

(declare-fun call!339514 () Bool)

(assert (=> b!4894707 (= res!2090552 (not call!339514))))

(declare-fun b!4894708 () Bool)

(declare-fun e!3059853 () Bool)

(declare-fun lt!2006636 () Bool)

(assert (=> b!4894708 (= e!3059853 (= lt!2006636 call!339514))))

(declare-fun b!4894709 () Bool)

(declare-fun e!3059855 () Bool)

(declare-fun e!3059851 () Bool)

(assert (=> b!4894709 (= e!3059855 e!3059851)))

(declare-fun res!2090555 () Bool)

(assert (=> b!4894709 (=> res!2090555 e!3059851)))

(assert (=> b!4894709 (= res!2090555 call!339514)))

(declare-fun b!4894710 () Bool)

(declare-fun e!3059850 () Bool)

(assert (=> b!4894710 (= e!3059850 (nullable!4556 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086))))))))

(declare-fun b!4894711 () Bool)

(declare-fun e!3059852 () Bool)

(assert (=> b!4894711 (= e!3059852 e!3059855)))

(declare-fun res!2090554 () Bool)

(assert (=> b!4894711 (=> (not res!2090554) (not e!3059855))))

(assert (=> b!4894711 (= res!2090554 (not lt!2006636))))

(declare-fun b!4894712 () Bool)

(declare-fun e!3059854 () Bool)

(assert (=> b!4894712 (= e!3059854 (not lt!2006636))))

(declare-fun bm!339509 () Bool)

(assert (=> bm!339509 (= call!339514 (isEmpty!30272 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086))))))))

(declare-fun d!1572437 () Bool)

(assert (=> d!1572437 e!3059853))

(declare-fun c!831933 () Bool)

(assert (=> d!1572437 (= c!831933 (is-EmptyExpr!13250 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086))))))))

(assert (=> d!1572437 (= lt!2006636 e!3059850)))

(declare-fun c!831932 () Bool)

(assert (=> d!1572437 (= c!831932 (isEmpty!30272 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086))))))))

(assert (=> d!1572437 (validRegex!5883 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086)))))))

(assert (=> d!1572437 (= (matchR!6531 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086)))) (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086))))) lt!2006636)))

(declare-fun b!4894713 () Bool)

(assert (=> b!4894713 (= e!3059853 e!3059854)))

(declare-fun c!831934 () Bool)

(assert (=> b!4894713 (= c!831934 (is-EmptyLang!13250 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086))))))))

(declare-fun b!4894714 () Bool)

(declare-fun res!2090558 () Bool)

(assert (=> b!4894714 (=> res!2090558 e!3059851)))

(assert (=> b!4894714 (= res!2090558 (not (isEmpty!30272 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086))))))))))

(declare-fun b!4894715 () Bool)

(assert (=> b!4894715 (= e!3059851 (not (= (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086))))) (c!831695 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086))))))))))

(declare-fun b!4894716 () Bool)

(assert (=> b!4894716 (= e!3059850 (matchR!6531 (derivativeStep!3879 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086)))) (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086)))))) (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086)))))))))

(declare-fun b!4894717 () Bool)

(assert (=> b!4894717 (= e!3059856 (= (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086))))) (c!831695 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086)))))))))

(declare-fun b!4894718 () Bool)

(declare-fun res!2090553 () Bool)

(assert (=> b!4894718 (=> res!2090553 e!3059852)))

(assert (=> b!4894718 (= res!2090553 e!3059856)))

(declare-fun res!2090559 () Bool)

(assert (=> b!4894718 (=> (not res!2090559) (not e!3059856))))

(assert (=> b!4894718 (= res!2090559 lt!2006636)))

(declare-fun b!4894719 () Bool)

(declare-fun res!2090557 () Bool)

(assert (=> b!4894719 (=> res!2090557 e!3059852)))

(assert (=> b!4894719 (= res!2090557 (not (is-ElementMatch!13250 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086)))))))))

(assert (=> b!4894719 (= e!3059854 e!3059852)))

(assert (= (and d!1572437 c!831932) b!4894710))

(assert (= (and d!1572437 (not c!831932)) b!4894716))

(assert (= (and d!1572437 c!831933) b!4894708))

(assert (= (and d!1572437 (not c!831933)) b!4894713))

(assert (= (and b!4894713 c!831934) b!4894712))

(assert (= (and b!4894713 (not c!831934)) b!4894719))

(assert (= (and b!4894719 (not res!2090557)) b!4894718))

(assert (= (and b!4894718 res!2090559) b!4894707))

(assert (= (and b!4894707 res!2090552) b!4894706))

(assert (= (and b!4894706 res!2090556) b!4894717))

(assert (= (and b!4894718 (not res!2090553)) b!4894711))

(assert (= (and b!4894711 res!2090554) b!4894709))

(assert (= (and b!4894709 (not res!2090555)) b!4894714))

(assert (= (and b!4894714 (not res!2090558)) b!4894715))

(assert (= (or b!4894708 b!4894707 b!4894709) bm!339509))

(assert (=> b!4894716 m!5898882))

(declare-fun m!5900460 () Bool)

(assert (=> b!4894716 m!5900460))

(assert (=> b!4894716 m!5900460))

(declare-fun m!5900462 () Bool)

(assert (=> b!4894716 m!5900462))

(assert (=> b!4894716 m!5898882))

(declare-fun m!5900464 () Bool)

(assert (=> b!4894716 m!5900464))

(assert (=> b!4894716 m!5900462))

(assert (=> b!4894716 m!5900464))

(declare-fun m!5900466 () Bool)

(assert (=> b!4894716 m!5900466))

(assert (=> b!4894714 m!5898882))

(assert (=> b!4894714 m!5900464))

(assert (=> b!4894714 m!5900464))

(declare-fun m!5900468 () Bool)

(assert (=> b!4894714 m!5900468))

(assert (=> bm!339509 m!5898882))

(declare-fun m!5900470 () Bool)

(assert (=> bm!339509 m!5900470))

(assert (=> b!4894706 m!5898882))

(assert (=> b!4894706 m!5900464))

(assert (=> b!4894706 m!5900464))

(assert (=> b!4894706 m!5900468))

(assert (=> d!1572437 m!5898882))

(assert (=> d!1572437 m!5900470))

(declare-fun m!5900472 () Bool)

(assert (=> d!1572437 m!5900472))

(assert (=> b!4894715 m!5898882))

(assert (=> b!4894715 m!5900460))

(declare-fun m!5900474 () Bool)

(assert (=> b!4894710 m!5900474))

(assert (=> b!4894717 m!5898882))

(assert (=> b!4894717 m!5900460))

(assert (=> b!4893779 d!1572437))

(assert (=> b!4893779 d!1572239))

(declare-fun d!1572439 () Bool)

(assert (=> d!1572439 (= (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086)))) (list!17729 (c!831694 (charsOf!5375 (_1!33532 (get!19481 lt!2006086))))))))

(declare-fun bs!1176176 () Bool)

(assert (= bs!1176176 d!1572439))

(declare-fun m!5900476 () Bool)

(assert (=> bs!1176176 m!5900476))

(assert (=> b!4893779 d!1572439))

(declare-fun d!1572441 () Bool)

(declare-fun lt!2006637 () BalanceConc!28916)

(assert (=> d!1572441 (= (list!17727 lt!2006637) (originalCharacters!8488 (_1!33532 (get!19481 lt!2006086))))))

(assert (=> d!1572441 (= lt!2006637 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086))))) (value!262139 (_1!33532 (get!19481 lt!2006086)))))))

(assert (=> d!1572441 (= (charsOf!5375 (_1!33532 (get!19481 lt!2006086))) lt!2006637)))

(declare-fun b_lambda!194527 () Bool)

(assert (=> (not b_lambda!194527) (not d!1572441)))

(declare-fun t!365787 () Bool)

(declare-fun tb!259025 () Bool)

(assert (=> (and b!4893356 (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086)))))) t!365787) tb!259025))

(declare-fun b!4894720 () Bool)

(declare-fun e!3059857 () Bool)

(declare-fun tp!1377411 () Bool)

(assert (=> b!4894720 (= e!3059857 (and (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086))))) (value!262139 (_1!33532 (get!19481 lt!2006086)))))) tp!1377411))))

(declare-fun result!322612 () Bool)

(assert (=> tb!259025 (= result!322612 (and (inv!72690 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086))))) (value!262139 (_1!33532 (get!19481 lt!2006086))))) e!3059857))))

(assert (= tb!259025 b!4894720))

(declare-fun m!5900478 () Bool)

(assert (=> b!4894720 m!5900478))

(declare-fun m!5900480 () Bool)

(assert (=> tb!259025 m!5900480))

(assert (=> d!1572441 t!365787))

(declare-fun b_and!345075 () Bool)

(assert (= b_and!345057 (and (=> t!365787 result!322612) b_and!345075)))

(declare-fun t!365789 () Bool)

(declare-fun tb!259027 () Bool)

(assert (=> (and b!4893636 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086)))))) t!365789) tb!259027))

(declare-fun result!322614 () Bool)

(assert (= result!322614 result!322612))

(assert (=> d!1572441 t!365789))

(declare-fun b_and!345077 () Bool)

(assert (= b_and!345059 (and (=> t!365789 result!322614) b_and!345077)))

(declare-fun tb!259029 () Bool)

(declare-fun t!365791 () Bool)

(assert (=> (and b!4894220 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086)))))) t!365791) tb!259029))

(declare-fun result!322616 () Bool)

(assert (= result!322616 result!322612))

(assert (=> d!1572441 t!365791))

(declare-fun b_and!345079 () Bool)

(assert (= b_and!345061 (and (=> t!365791 result!322616) b_and!345079)))

(declare-fun m!5900482 () Bool)

(assert (=> d!1572441 m!5900482))

(declare-fun m!5900484 () Bool)

(assert (=> d!1572441 m!5900484))

(assert (=> b!4893779 d!1572441))

(declare-fun b!4894721 () Bool)

(declare-fun res!2090564 () Bool)

(declare-fun e!3059864 () Bool)

(assert (=> b!4894721 (=> (not res!2090564) (not e!3059864))))

(assert (=> b!4894721 (= res!2090564 (isEmpty!30272 (tail!9602 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))))

(declare-fun b!4894722 () Bool)

(declare-fun res!2090560 () Bool)

(assert (=> b!4894722 (=> (not res!2090560) (not e!3059864))))

(declare-fun call!339515 () Bool)

(assert (=> b!4894722 (= res!2090560 (not call!339515))))

(declare-fun b!4894723 () Bool)

(declare-fun e!3059861 () Bool)

(declare-fun lt!2006638 () Bool)

(assert (=> b!4894723 (= e!3059861 (= lt!2006638 call!339515))))

(declare-fun b!4894724 () Bool)

(declare-fun e!3059863 () Bool)

(declare-fun e!3059859 () Bool)

(assert (=> b!4894724 (= e!3059863 e!3059859)))

(declare-fun res!2090563 () Bool)

(assert (=> b!4894724 (=> res!2090563 e!3059859)))

(assert (=> b!4894724 (= res!2090563 call!339515)))

(declare-fun b!4894725 () Bool)

(declare-fun e!3059858 () Bool)

(assert (=> b!4894725 (= e!3059858 (nullable!4556 (derivativeStep!3879 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))) (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))))

(declare-fun b!4894726 () Bool)

(declare-fun e!3059860 () Bool)

(assert (=> b!4894726 (= e!3059860 e!3059863)))

(declare-fun res!2090562 () Bool)

(assert (=> b!4894726 (=> (not res!2090562) (not e!3059863))))

(assert (=> b!4894726 (= res!2090562 (not lt!2006638))))

(declare-fun b!4894727 () Bool)

(declare-fun e!3059862 () Bool)

(assert (=> b!4894727 (= e!3059862 (not lt!2006638))))

(declare-fun bm!339510 () Bool)

(assert (=> bm!339510 (= call!339515 (isEmpty!30272 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))))))

(declare-fun d!1572443 () Bool)

(assert (=> d!1572443 e!3059861))

(declare-fun c!831936 () Bool)

(assert (=> d!1572443 (= c!831936 (is-EmptyExpr!13250 (derivativeStep!3879 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))) (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))))

(assert (=> d!1572443 (= lt!2006638 e!3059858)))

(declare-fun c!831935 () Bool)

(assert (=> d!1572443 (= c!831935 (isEmpty!30272 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))))))

(assert (=> d!1572443 (validRegex!5883 (derivativeStep!3879 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))) (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))))))

(assert (=> d!1572443 (= (matchR!6531 (derivativeStep!3879 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))) (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))) (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))) lt!2006638)))

(declare-fun b!4894728 () Bool)

(assert (=> b!4894728 (= e!3059861 e!3059862)))

(declare-fun c!831937 () Bool)

(assert (=> b!4894728 (= c!831937 (is-EmptyLang!13250 (derivativeStep!3879 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))) (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))))

(declare-fun b!4894729 () Bool)

(declare-fun res!2090566 () Bool)

(assert (=> b!4894729 (=> res!2090566 e!3059859)))

(assert (=> b!4894729 (= res!2090566 (not (isEmpty!30272 (tail!9602 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))))))))

(declare-fun b!4894730 () Bool)

(assert (=> b!4894730 (= e!3059859 (not (= (head!10456 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))) (c!831695 (derivativeStep!3879 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))) (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))))))

(declare-fun b!4894731 () Bool)

(assert (=> b!4894731 (= e!3059858 (matchR!6531 (derivativeStep!3879 (derivativeStep!3879 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))) (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))) (head!10456 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))) (tail!9602 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))))

(declare-fun b!4894732 () Bool)

(assert (=> b!4894732 (= e!3059864 (= (head!10456 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))) (c!831695 (derivativeStep!3879 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))) (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))))))))

(declare-fun b!4894733 () Bool)

(declare-fun res!2090561 () Bool)

(assert (=> b!4894733 (=> res!2090561 e!3059860)))

(assert (=> b!4894733 (= res!2090561 e!3059864)))

(declare-fun res!2090567 () Bool)

(assert (=> b!4894733 (=> (not res!2090567) (not e!3059864))))

(assert (=> b!4894733 (= res!2090567 lt!2006638)))

(declare-fun b!4894734 () Bool)

(declare-fun res!2090565 () Bool)

(assert (=> b!4894734 (=> res!2090565 e!3059860)))

(assert (=> b!4894734 (= res!2090565 (not (is-ElementMatch!13250 (derivativeStep!3879 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))) (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))))))))

(assert (=> b!4894734 (= e!3059862 e!3059860)))

(assert (= (and d!1572443 c!831935) b!4894725))

(assert (= (and d!1572443 (not c!831935)) b!4894731))

(assert (= (and d!1572443 c!831936) b!4894723))

(assert (= (and d!1572443 (not c!831936)) b!4894728))

(assert (= (and b!4894728 c!831937) b!4894727))

(assert (= (and b!4894728 (not c!831937)) b!4894734))

(assert (= (and b!4894734 (not res!2090565)) b!4894733))

(assert (= (and b!4894733 res!2090567) b!4894722))

(assert (= (and b!4894722 res!2090560) b!4894721))

(assert (= (and b!4894721 res!2090564) b!4894732))

(assert (= (and b!4894733 (not res!2090561)) b!4894726))

(assert (= (and b!4894726 res!2090562) b!4894724))

(assert (= (and b!4894724 (not res!2090563)) b!4894729))

(assert (= (and b!4894729 (not res!2090566)) b!4894730))

(assert (= (or b!4894723 b!4894722 b!4894724) bm!339510))

(assert (=> b!4894731 m!5898934))

(declare-fun m!5900486 () Bool)

(assert (=> b!4894731 m!5900486))

(assert (=> b!4894731 m!5898932))

(assert (=> b!4894731 m!5900486))

(declare-fun m!5900488 () Bool)

(assert (=> b!4894731 m!5900488))

(assert (=> b!4894731 m!5898934))

(declare-fun m!5900490 () Bool)

(assert (=> b!4894731 m!5900490))

(assert (=> b!4894731 m!5900488))

(assert (=> b!4894731 m!5900490))

(declare-fun m!5900492 () Bool)

(assert (=> b!4894731 m!5900492))

(assert (=> b!4894729 m!5898934))

(assert (=> b!4894729 m!5900490))

(assert (=> b!4894729 m!5900490))

(declare-fun m!5900494 () Bool)

(assert (=> b!4894729 m!5900494))

(assert (=> bm!339510 m!5898934))

(assert (=> bm!339510 m!5898938))

(assert (=> b!4894721 m!5898934))

(assert (=> b!4894721 m!5900490))

(assert (=> b!4894721 m!5900490))

(assert (=> b!4894721 m!5900494))

(assert (=> d!1572443 m!5898934))

(assert (=> d!1572443 m!5898938))

(assert (=> d!1572443 m!5898932))

(declare-fun m!5900496 () Bool)

(assert (=> d!1572443 m!5900496))

(assert (=> b!4894730 m!5898934))

(assert (=> b!4894730 m!5900486))

(assert (=> b!4894725 m!5898932))

(declare-fun m!5900498 () Bool)

(assert (=> b!4894725 m!5900498))

(assert (=> b!4894732 m!5898934))

(assert (=> b!4894732 m!5900486))

(assert (=> b!4893830 d!1572443))

(declare-fun bm!339519 () Bool)

(declare-fun call!339527 () Regex!13250)

(declare-fun c!831952 () Bool)

(declare-fun c!831950 () Bool)

(assert (=> bm!339519 (= call!339527 (derivativeStep!3879 (ite c!831950 (regOne!27013 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (ite c!831952 (reg!13579 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (regOne!27012 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))) (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))))))

(declare-fun b!4894755 () Bool)

(declare-fun e!3059877 () Regex!13250)

(declare-fun e!3059875 () Regex!13250)

(assert (=> b!4894755 (= e!3059877 e!3059875)))

(assert (=> b!4894755 (= c!831952 (is-Star!13250 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))))

(declare-fun d!1572445 () Bool)

(declare-fun lt!2006641 () Regex!13250)

(assert (=> d!1572445 (validRegex!5883 lt!2006641)))

(declare-fun e!3059878 () Regex!13250)

(assert (=> d!1572445 (= lt!2006641 e!3059878)))

(declare-fun c!831951 () Bool)

(assert (=> d!1572445 (= c!831951 (or (is-EmptyExpr!13250 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (is-EmptyLang!13250 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))))))

(assert (=> d!1572445 (validRegex!5883 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))))

(assert (=> d!1572445 (= (derivativeStep!3879 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))) (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))) lt!2006641)))

(declare-fun bm!339520 () Bool)

(declare-fun call!339526 () Regex!13250)

(declare-fun call!339524 () Regex!13250)

(assert (=> bm!339520 (= call!339526 call!339524)))

(declare-fun b!4894756 () Bool)

(declare-fun e!3059876 () Regex!13250)

(assert (=> b!4894756 (= e!3059876 (ite (= (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))) (c!831695 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))) EmptyExpr!13250 EmptyLang!13250))))

(declare-fun bm!339521 () Bool)

(declare-fun call!339525 () Regex!13250)

(assert (=> bm!339521 (= call!339525 (derivativeStep!3879 (ite c!831950 (regTwo!27013 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (regTwo!27012 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))) (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))))))

(declare-fun b!4894757 () Bool)

(assert (=> b!4894757 (= e!3059877 (Union!13250 call!339527 call!339525))))

(declare-fun b!4894758 () Bool)

(declare-fun c!831948 () Bool)

(assert (=> b!4894758 (= c!831948 (nullable!4556 (regOne!27012 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))))))

(declare-fun e!3059879 () Regex!13250)

(assert (=> b!4894758 (= e!3059875 e!3059879)))

(declare-fun b!4894759 () Bool)

(assert (=> b!4894759 (= e!3059878 EmptyLang!13250)))

(declare-fun bm!339522 () Bool)

(assert (=> bm!339522 (= call!339524 call!339527)))

(declare-fun b!4894760 () Bool)

(assert (=> b!4894760 (= e!3059875 (Concat!21736 call!339524 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))))

(declare-fun b!4894761 () Bool)

(assert (=> b!4894761 (= e!3059879 (Union!13250 (Concat!21736 call!339526 (regTwo!27012 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))) call!339525))))

(declare-fun b!4894762 () Bool)

(assert (=> b!4894762 (= e!3059879 (Union!13250 (Concat!21736 call!339526 (regTwo!27012 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))) EmptyLang!13250))))

(declare-fun b!4894763 () Bool)

(assert (=> b!4894763 (= c!831950 (is-Union!13250 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))))

(assert (=> b!4894763 (= e!3059876 e!3059877)))

(declare-fun b!4894764 () Bool)

(assert (=> b!4894764 (= e!3059878 e!3059876)))

(declare-fun c!831949 () Bool)

(assert (=> b!4894764 (= c!831949 (is-ElementMatch!13250 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))))

(assert (= (and d!1572445 c!831951) b!4894759))

(assert (= (and d!1572445 (not c!831951)) b!4894764))

(assert (= (and b!4894764 c!831949) b!4894756))

(assert (= (and b!4894764 (not c!831949)) b!4894763))

(assert (= (and b!4894763 c!831950) b!4894757))

(assert (= (and b!4894763 (not c!831950)) b!4894755))

(assert (= (and b!4894755 c!831952) b!4894760))

(assert (= (and b!4894755 (not c!831952)) b!4894758))

(assert (= (and b!4894758 c!831948) b!4894761))

(assert (= (and b!4894758 (not c!831948)) b!4894762))

(assert (= (or b!4894761 b!4894762) bm!339520))

(assert (= (or b!4894760 bm!339520) bm!339522))

(assert (= (or b!4894757 bm!339522) bm!339519))

(assert (= (or b!4894757 b!4894761) bm!339521))

(assert (=> bm!339519 m!5898930))

(declare-fun m!5900500 () Bool)

(assert (=> bm!339519 m!5900500))

(declare-fun m!5900502 () Bool)

(assert (=> d!1572445 m!5900502))

(assert (=> d!1572445 m!5898942))

(assert (=> bm!339521 m!5898930))

(declare-fun m!5900504 () Bool)

(assert (=> bm!339521 m!5900504))

(declare-fun m!5900506 () Bool)

(assert (=> b!4894758 m!5900506))

(assert (=> b!4893830 d!1572445))

(assert (=> b!4893830 d!1572325))

(declare-fun d!1572447 () Bool)

(assert (=> d!1572447 (= (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))) (t!365672 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))

(assert (=> b!4893830 d!1572447))

(assert (=> b!4893749 d!1572343))

(declare-fun d!1572449 () Bool)

(declare-fun res!2090568 () Bool)

(declare-fun e!3059880 () Bool)

(assert (=> d!1572449 (=> (not res!2090568) (not e!3059880))))

(assert (=> d!1572449 (= res!2090568 (<= (size!37145 (list!17731 (xs!18059 (left!40981 (c!831694 input!1236))))) 512))))

(assert (=> d!1572449 (= (inv!72696 (left!40981 (c!831694 input!1236))) e!3059880)))

(declare-fun b!4894765 () Bool)

(declare-fun res!2090569 () Bool)

(assert (=> b!4894765 (=> (not res!2090569) (not e!3059880))))

(assert (=> b!4894765 (= res!2090569 (= (csize!29717 (left!40981 (c!831694 input!1236))) (size!37145 (list!17731 (xs!18059 (left!40981 (c!831694 input!1236)))))))))

(declare-fun b!4894766 () Bool)

(assert (=> b!4894766 (= e!3059880 (and (> (csize!29717 (left!40981 (c!831694 input!1236))) 0) (<= (csize!29717 (left!40981 (c!831694 input!1236))) 512)))))

(assert (= (and d!1572449 res!2090568) b!4894765))

(assert (= (and b!4894765 res!2090569) b!4894766))

(assert (=> d!1572449 m!5900182))

(assert (=> d!1572449 m!5900182))

(declare-fun m!5900508 () Bool)

(assert (=> d!1572449 m!5900508))

(assert (=> b!4894765 m!5900182))

(assert (=> b!4894765 m!5900182))

(assert (=> b!4894765 m!5900508))

(assert (=> b!4894124 d!1572449))

(declare-fun d!1572451 () Bool)

(declare-fun e!3059881 () Bool)

(assert (=> d!1572451 e!3059881))

(declare-fun res!2090570 () Bool)

(assert (=> d!1572451 (=> (not res!2090570) (not e!3059881))))

(declare-fun lt!2006642 () BalanceConc!28916)

(assert (=> d!1572451 (= res!2090570 (= (list!17727 lt!2006642) (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936)))))))

(assert (=> d!1572451 (= lt!2006642 (BalanceConc!28917 (fromList!933 (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936))))))))

(assert (=> d!1572451 (= (fromListB!2693 (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936)))) lt!2006642)))

(declare-fun b!4894767 () Bool)

(assert (=> b!4894767 (= e!3059881 (isBalanced!4013 (fromList!933 (originalCharacters!8488 (_1!33532 (get!19481 lt!2005936))))))))

(assert (= (and d!1572451 res!2090570) b!4894767))

(declare-fun m!5900510 () Bool)

(assert (=> d!1572451 m!5900510))

(declare-fun m!5900512 () Bool)

(assert (=> d!1572451 m!5900512))

(assert (=> b!4894767 m!5900512))

(assert (=> b!4894767 m!5900512))

(declare-fun m!5900514 () Bool)

(assert (=> b!4894767 m!5900514))

(assert (=> d!1572115 d!1572451))

(assert (=> d!1572017 d!1571991))

(assert (=> d!1572017 d!1571993))

(declare-fun b!4894786 () Bool)

(declare-fun e!3059897 () Bool)

(declare-fun call!339534 () Bool)

(assert (=> b!4894786 (= e!3059897 call!339534)))

(declare-fun b!4894787 () Bool)

(declare-fun e!3059902 () Bool)

(declare-fun e!3059901 () Bool)

(assert (=> b!4894787 (= e!3059902 e!3059901)))

(declare-fun res!2090583 () Bool)

(assert (=> b!4894787 (=> (not res!2090583) (not e!3059901))))

(declare-fun call!339536 () Bool)

(assert (=> b!4894787 (= res!2090583 call!339536)))

(declare-fun b!4894788 () Bool)

(declare-fun res!2090585 () Bool)

(assert (=> b!4894788 (=> res!2090585 e!3059902)))

(assert (=> b!4894788 (= res!2090585 (not (is-Concat!21736 (regex!8175 (h!62858 rulesArg!165)))))))

(declare-fun e!3059898 () Bool)

(assert (=> b!4894788 (= e!3059898 e!3059902)))

(declare-fun b!4894789 () Bool)

(declare-fun e!3059896 () Bool)

(assert (=> b!4894789 (= e!3059896 e!3059898)))

(declare-fun c!831958 () Bool)

(assert (=> b!4894789 (= c!831958 (is-Union!13250 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun d!1572453 () Bool)

(declare-fun res!2090582 () Bool)

(declare-fun e!3059899 () Bool)

(assert (=> d!1572453 (=> res!2090582 e!3059899)))

(assert (=> d!1572453 (= res!2090582 (is-ElementMatch!13250 (regex!8175 (h!62858 rulesArg!165))))))

(assert (=> d!1572453 (= (validRegex!5883 (regex!8175 (h!62858 rulesArg!165))) e!3059899)))

(declare-fun bm!339529 () Bool)

(assert (=> bm!339529 (= call!339536 call!339534)))

(declare-fun c!831957 () Bool)

(declare-fun bm!339530 () Bool)

(assert (=> bm!339530 (= call!339534 (validRegex!5883 (ite c!831957 (reg!13579 (regex!8175 (h!62858 rulesArg!165))) (ite c!831958 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165))) (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))))))

(declare-fun b!4894790 () Bool)

(assert (=> b!4894790 (= e!3059899 e!3059896)))

(assert (=> b!4894790 (= c!831957 (is-Star!13250 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun b!4894791 () Bool)

(assert (=> b!4894791 (= e!3059896 e!3059897)))

(declare-fun res!2090584 () Bool)

(assert (=> b!4894791 (= res!2090584 (not (nullable!4556 (reg!13579 (regex!8175 (h!62858 rulesArg!165))))))))

(assert (=> b!4894791 (=> (not res!2090584) (not e!3059897))))

(declare-fun b!4894792 () Bool)

(declare-fun res!2090581 () Bool)

(declare-fun e!3059900 () Bool)

(assert (=> b!4894792 (=> (not res!2090581) (not e!3059900))))

(declare-fun call!339535 () Bool)

(assert (=> b!4894792 (= res!2090581 call!339535)))

(assert (=> b!4894792 (= e!3059898 e!3059900)))

(declare-fun b!4894793 () Bool)

(assert (=> b!4894793 (= e!3059900 call!339536)))

(declare-fun bm!339531 () Bool)

(assert (=> bm!339531 (= call!339535 (validRegex!5883 (ite c!831958 (regOne!27013 (regex!8175 (h!62858 rulesArg!165))) (regTwo!27012 (regex!8175 (h!62858 rulesArg!165))))))))

(declare-fun b!4894794 () Bool)

(assert (=> b!4894794 (= e!3059901 call!339535)))

(assert (= (and d!1572453 (not res!2090582)) b!4894790))

(assert (= (and b!4894790 c!831957) b!4894791))

(assert (= (and b!4894790 (not c!831957)) b!4894789))

(assert (= (and b!4894791 res!2090584) b!4894786))

(assert (= (and b!4894789 c!831958) b!4894792))

(assert (= (and b!4894789 (not c!831958)) b!4894788))

(assert (= (and b!4894792 res!2090581) b!4894793))

(assert (= (and b!4894788 (not res!2090585)) b!4894787))

(assert (= (and b!4894787 res!2090583) b!4894794))

(assert (= (or b!4894793 b!4894787) bm!339529))

(assert (= (or b!4894792 b!4894794) bm!339531))

(assert (= (or b!4894786 bm!339529) bm!339530))

(declare-fun m!5900516 () Bool)

(assert (=> bm!339530 m!5900516))

(declare-fun m!5900518 () Bool)

(assert (=> b!4894791 m!5900518))

(declare-fun m!5900520 () Bool)

(assert (=> bm!339531 m!5900520))

(assert (=> d!1572017 d!1572453))

(assert (=> d!1572017 d!1572025))

(assert (=> d!1572017 d!1571989))

(declare-fun d!1572455 () Bool)

(declare-fun e!3059905 () Bool)

(assert (=> d!1572455 e!3059905))

(declare-fun res!2090588 () Bool)

(assert (=> d!1572455 (=> res!2090588 e!3059905)))

(assert (=> d!1572455 (= res!2090588 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))

(assert (=> d!1572455 true))

(declare-fun _$92!488 () Unit!146435)

(assert (=> d!1572455 (= (choose!35728 (regex!8175 (h!62858 rulesArg!165)) lt!2006027) _$92!488)))

(declare-fun b!4894797 () Bool)

(assert (=> b!4894797 (= e!3059905 (matchR!6531 (regex!8175 (h!62858 rulesArg!165)) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))

(assert (= (and d!1572455 (not res!2090588)) b!4894797))

(assert (=> d!1572455 m!5898636))

(assert (=> d!1572455 m!5898638))

(assert (=> d!1572455 m!5898636))

(assert (=> d!1572455 m!5898638))

(assert (=> d!1572455 m!5898648))

(assert (=> d!1572455 m!5898646))

(assert (=> b!4894797 m!5898636))

(assert (=> b!4894797 m!5898638))

(assert (=> b!4894797 m!5898636))

(assert (=> b!4894797 m!5898638))

(assert (=> b!4894797 m!5898648))

(assert (=> b!4894797 m!5898670))

(assert (=> d!1572017 d!1572455))

(declare-fun b!4894798 () Bool)

(declare-fun res!2090593 () Bool)

(declare-fun e!3059912 () Bool)

(assert (=> b!4894798 (=> (not res!2090593) (not e!3059912))))

(assert (=> b!4894798 (= res!2090593 (isEmpty!30272 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236)))))))))

(declare-fun b!4894799 () Bool)

(declare-fun res!2090589 () Bool)

(assert (=> b!4894799 (=> (not res!2090589) (not e!3059912))))

(declare-fun call!339537 () Bool)

(assert (=> b!4894799 (= res!2090589 (not call!339537))))

(declare-fun b!4894800 () Bool)

(declare-fun e!3059909 () Bool)

(declare-fun lt!2006643 () Bool)

(assert (=> b!4894800 (= e!3059909 (= lt!2006643 call!339537))))

(declare-fun b!4894801 () Bool)

(declare-fun e!3059911 () Bool)

(declare-fun e!3059907 () Bool)

(assert (=> b!4894801 (= e!3059911 e!3059907)))

(declare-fun res!2090592 () Bool)

(assert (=> b!4894801 (=> res!2090592 e!3059907)))

(assert (=> b!4894801 (= res!2090592 call!339537)))

(declare-fun b!4894802 () Bool)

(declare-fun e!3059906 () Bool)

(assert (=> b!4894802 (= e!3059906 (nullable!4556 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun b!4894803 () Bool)

(declare-fun e!3059908 () Bool)

(assert (=> b!4894803 (= e!3059908 e!3059911)))

(declare-fun res!2090591 () Bool)

(assert (=> b!4894803 (=> (not res!2090591) (not e!3059911))))

(assert (=> b!4894803 (= res!2090591 (not lt!2006643))))

(declare-fun b!4894804 () Bool)

(declare-fun e!3059910 () Bool)

(assert (=> b!4894804 (= e!3059910 (not lt!2006643))))

(declare-fun bm!339532 () Bool)

(assert (=> bm!339532 (= call!339537 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236))))))))

(declare-fun d!1572457 () Bool)

(assert (=> d!1572457 e!3059909))

(declare-fun c!831960 () Bool)

(assert (=> d!1572457 (= c!831960 (is-EmptyExpr!13250 (regex!8175 (h!62858 rulesArg!165))))))

(assert (=> d!1572457 (= lt!2006643 e!3059906)))

(declare-fun c!831959 () Bool)

(assert (=> d!1572457 (= c!831959 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236))))))))

(assert (=> d!1572457 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165)))))

(assert (=> d!1572457 (= (matchR!6531 (regex!8175 (h!62858 rulesArg!165)) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236))))) lt!2006643)))

(declare-fun b!4894805 () Bool)

(assert (=> b!4894805 (= e!3059909 e!3059910)))

(declare-fun c!831961 () Bool)

(assert (=> b!4894805 (= c!831961 (is-EmptyLang!13250 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun b!4894806 () Bool)

(declare-fun res!2090595 () Bool)

(assert (=> b!4894806 (=> res!2090595 e!3059907)))

(assert (=> b!4894806 (= res!2090595 (not (isEmpty!30272 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236))))))))))

(declare-fun b!4894807 () Bool)

(assert (=> b!4894807 (= e!3059907 (not (= (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236))))) (c!831695 (regex!8175 (h!62858 rulesArg!165))))))))

(declare-fun b!4894808 () Bool)

(assert (=> b!4894808 (= e!3059906 (matchR!6531 (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236)))))) (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236)))))))))

(declare-fun b!4894809 () Bool)

(assert (=> b!4894809 (= e!3059912 (= (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236))))) (c!831695 (regex!8175 (h!62858 rulesArg!165)))))))

(declare-fun b!4894810 () Bool)

(declare-fun res!2090590 () Bool)

(assert (=> b!4894810 (=> res!2090590 e!3059908)))

(assert (=> b!4894810 (= res!2090590 e!3059912)))

(declare-fun res!2090596 () Bool)

(assert (=> b!4894810 (=> (not res!2090596) (not e!3059912))))

(assert (=> b!4894810 (= res!2090596 lt!2006643)))

(declare-fun b!4894811 () Bool)

(declare-fun res!2090594 () Bool)

(assert (=> b!4894811 (=> res!2090594 e!3059908)))

(assert (=> b!4894811 (= res!2090594 (not (is-ElementMatch!13250 (regex!8175 (h!62858 rulesArg!165)))))))

(assert (=> b!4894811 (= e!3059910 e!3059908)))

(assert (= (and d!1572457 c!831959) b!4894802))

(assert (= (and d!1572457 (not c!831959)) b!4894808))

(assert (= (and d!1572457 c!831960) b!4894800))

(assert (= (and d!1572457 (not c!831960)) b!4894805))

(assert (= (and b!4894805 c!831961) b!4894804))

(assert (= (and b!4894805 (not c!831961)) b!4894811))

(assert (= (and b!4894811 (not res!2090594)) b!4894810))

(assert (= (and b!4894810 res!2090596) b!4894799))

(assert (= (and b!4894799 res!2090589) b!4894798))

(assert (= (and b!4894798 res!2090593) b!4894809))

(assert (= (and b!4894810 (not res!2090590)) b!4894803))

(assert (= (and b!4894803 res!2090591) b!4894801))

(assert (= (and b!4894801 (not res!2090592)) b!4894806))

(assert (= (and b!4894806 (not res!2090595)) b!4894807))

(assert (= (or b!4894800 b!4894799 b!4894801) bm!339532))

(declare-fun m!5900522 () Bool)

(assert (=> b!4894808 m!5900522))

(assert (=> b!4894808 m!5900522))

(declare-fun m!5900524 () Bool)

(assert (=> b!4894808 m!5900524))

(declare-fun m!5900526 () Bool)

(assert (=> b!4894808 m!5900526))

(assert (=> b!4894808 m!5900524))

(assert (=> b!4894808 m!5900526))

(declare-fun m!5900528 () Bool)

(assert (=> b!4894808 m!5900528))

(assert (=> b!4894806 m!5900526))

(assert (=> b!4894806 m!5900526))

(declare-fun m!5900530 () Bool)

(assert (=> b!4894806 m!5900530))

(assert (=> bm!339532 m!5898796))

(assert (=> b!4894798 m!5900526))

(assert (=> b!4894798 m!5900526))

(assert (=> b!4894798 m!5900530))

(assert (=> d!1572457 m!5898796))

(assert (=> d!1572457 m!5898834))

(assert (=> b!4894807 m!5900522))

(assert (=> b!4894802 m!5898840))

(assert (=> b!4894809 m!5900522))

(assert (=> b!4893741 d!1572457))

(declare-fun b!4894812 () Bool)

(declare-fun e!3059917 () tuple2!60466)

(assert (=> b!4894812 (= e!3059917 (tuple2!60467 Nil!56408 (list!17727 input!1236)))))

(declare-fun b!4894813 () Bool)

(declare-fun e!3059919 () tuple2!60466)

(declare-fun call!339541 () tuple2!60466)

(assert (=> b!4894813 (= e!3059919 call!339541)))

(declare-fun b!4894815 () Bool)

(declare-fun e!3059914 () Bool)

(declare-fun lt!2006670 () tuple2!60466)

(assert (=> b!4894815 (= e!3059914 (>= (size!37145 (_1!33536 lt!2006670)) (size!37145 Nil!56408)))))

(declare-fun b!4894816 () Bool)

(declare-fun e!3059915 () Unit!146435)

(declare-fun Unit!146457 () Unit!146435)

(assert (=> b!4894816 (= e!3059915 Unit!146457)))

(declare-fun lt!2006657 () Unit!146435)

(declare-fun call!339545 () Unit!146435)

(assert (=> b!4894816 (= lt!2006657 call!339545)))

(declare-fun call!339543 () Bool)

(assert (=> b!4894816 call!339543))

(declare-fun lt!2006654 () Unit!146435)

(assert (=> b!4894816 (= lt!2006654 lt!2006657)))

(declare-fun lt!2006653 () Unit!146435)

(declare-fun call!339544 () Unit!146435)

(assert (=> b!4894816 (= lt!2006653 call!339544)))

(assert (=> b!4894816 (= (list!17727 input!1236) Nil!56408)))

(declare-fun lt!2006646 () Unit!146435)

(assert (=> b!4894816 (= lt!2006646 lt!2006653)))

(assert (=> b!4894816 false))

(declare-fun b!4894817 () Bool)

(declare-fun e!3059916 () tuple2!60466)

(declare-fun lt!2006648 () tuple2!60466)

(assert (=> b!4894817 (= e!3059916 lt!2006648)))

(declare-fun bm!339533 () Bool)

(assert (=> bm!339533 (= call!339544 (lemmaIsPrefixSameLengthThenSameList!1059 (list!17727 input!1236) Nil!56408 (list!17727 input!1236)))))

(declare-fun b!4894818 () Bool)

(declare-fun e!3059920 () tuple2!60466)

(assert (=> b!4894818 (= e!3059917 e!3059920)))

(declare-fun c!831967 () Bool)

(assert (=> b!4894818 (= c!831967 (= (size!37145 Nil!56408) (size!37145 (list!17727 input!1236))))))

(declare-fun bm!339534 () Bool)

(declare-fun call!339540 () C!26698)

(assert (=> bm!339534 (= call!339540 (head!10456 (list!17727 input!1236)))))

(declare-fun bm!339535 () Bool)

(declare-fun call!339542 () Regex!13250)

(assert (=> bm!339535 (= call!339542 (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) call!339540))))

(declare-fun bm!339536 () Bool)

(declare-fun call!339539 () List!56532)

(declare-fun lt!2006658 () List!56532)

(assert (=> bm!339536 (= call!339541 (findLongestMatchInner!1754 call!339542 lt!2006658 (+ (size!37145 Nil!56408) 1) call!339539 (list!17727 input!1236) (size!37145 (list!17727 input!1236))))))

(declare-fun bm!339537 () Bool)

(assert (=> bm!339537 (= call!339539 (tail!9602 (list!17727 input!1236)))))

(declare-fun b!4894819 () Bool)

(declare-fun e!3059913 () tuple2!60466)

(assert (=> b!4894819 (= e!3059913 (tuple2!60467 Nil!56408 Nil!56408))))

(declare-fun b!4894820 () Bool)

(declare-fun e!3059918 () Bool)

(assert (=> b!4894820 (= e!3059918 e!3059914)))

(declare-fun res!2090597 () Bool)

(assert (=> b!4894820 (=> res!2090597 e!3059914)))

(assert (=> b!4894820 (= res!2090597 (isEmpty!30272 (_1!33536 lt!2006670)))))

(declare-fun b!4894821 () Bool)

(declare-fun c!831963 () Bool)

(declare-fun call!339538 () Bool)

(assert (=> b!4894821 (= c!831963 call!339538)))

(declare-fun lt!2006651 () Unit!146435)

(declare-fun lt!2006650 () Unit!146435)

(assert (=> b!4894821 (= lt!2006651 lt!2006650)))

(declare-fun lt!2006645 () C!26698)

(declare-fun lt!2006647 () List!56532)

(assert (=> b!4894821 (= (++!12244 (++!12244 Nil!56408 (Cons!56408 lt!2006645 Nil!56408)) lt!2006647) (list!17727 input!1236))))

(assert (=> b!4894821 (= lt!2006650 (lemmaMoveElementToOtherListKeepsConcatEq!1331 Nil!56408 lt!2006645 lt!2006647 (list!17727 input!1236)))))

(assert (=> b!4894821 (= lt!2006647 (tail!9602 (list!17727 input!1236)))))

(assert (=> b!4894821 (= lt!2006645 (head!10456 (list!17727 input!1236)))))

(declare-fun lt!2006644 () Unit!146435)

(declare-fun lt!2006652 () Unit!146435)

(assert (=> b!4894821 (= lt!2006644 lt!2006652)))

(assert (=> b!4894821 (isPrefix!4895 (++!12244 Nil!56408 (Cons!56408 (head!10456 (getSuffix!2888 (list!17727 input!1236) Nil!56408)) Nil!56408)) (list!17727 input!1236))))

(assert (=> b!4894821 (= lt!2006652 (lemmaAddHeadSuffixToPrefixStillPrefix!713 Nil!56408 (list!17727 input!1236)))))

(declare-fun lt!2006662 () Unit!146435)

(declare-fun lt!2006659 () Unit!146435)

(assert (=> b!4894821 (= lt!2006662 lt!2006659)))

(assert (=> b!4894821 (= lt!2006659 (lemmaAddHeadSuffixToPrefixStillPrefix!713 Nil!56408 (list!17727 input!1236)))))

(assert (=> b!4894821 (= lt!2006658 (++!12244 Nil!56408 (Cons!56408 (head!10456 (list!17727 input!1236)) Nil!56408)))))

(declare-fun lt!2006664 () Unit!146435)

(assert (=> b!4894821 (= lt!2006664 e!3059915)))

(declare-fun c!831966 () Bool)

(assert (=> b!4894821 (= c!831966 (= (size!37145 Nil!56408) (size!37145 (list!17727 input!1236))))))

(declare-fun lt!2006656 () Unit!146435)

(declare-fun lt!2006671 () Unit!146435)

(assert (=> b!4894821 (= lt!2006656 lt!2006671)))

(assert (=> b!4894821 (<= (size!37145 Nil!56408) (size!37145 (list!17727 input!1236)))))

(assert (=> b!4894821 (= lt!2006671 (lemmaIsPrefixThenSmallerEqSize!625 Nil!56408 (list!17727 input!1236)))))

(assert (=> b!4894821 (= e!3059920 e!3059919)))

(declare-fun bm!339538 () Bool)

(assert (=> bm!339538 (= call!339543 (isPrefix!4895 (list!17727 input!1236) (list!17727 input!1236)))))

(declare-fun bm!339539 () Bool)

(assert (=> bm!339539 (= call!339545 (lemmaIsPrefixRefl!3292 (list!17727 input!1236) (list!17727 input!1236)))))

(declare-fun b!4894822 () Bool)

(declare-fun c!831962 () Bool)

(assert (=> b!4894822 (= c!831962 call!339538)))

(declare-fun lt!2006663 () Unit!146435)

(declare-fun lt!2006661 () Unit!146435)

(assert (=> b!4894822 (= lt!2006663 lt!2006661)))

(assert (=> b!4894822 (= (list!17727 input!1236) Nil!56408)))

(assert (=> b!4894822 (= lt!2006661 call!339544)))

(declare-fun lt!2006649 () Unit!146435)

(declare-fun lt!2006655 () Unit!146435)

(assert (=> b!4894822 (= lt!2006649 lt!2006655)))

(assert (=> b!4894822 call!339543))

(assert (=> b!4894822 (= lt!2006655 call!339545)))

(assert (=> b!4894822 (= e!3059920 e!3059913)))

(declare-fun b!4894823 () Bool)

(assert (=> b!4894823 (= e!3059919 e!3059916)))

(assert (=> b!4894823 (= lt!2006648 call!339541)))

(declare-fun c!831965 () Bool)

(assert (=> b!4894823 (= c!831965 (isEmpty!30272 (_1!33536 lt!2006648)))))

(declare-fun b!4894814 () Bool)

(assert (=> b!4894814 (= e!3059913 (tuple2!60467 Nil!56408 (list!17727 input!1236)))))

(declare-fun d!1572459 () Bool)

(assert (=> d!1572459 e!3059918))

(declare-fun res!2090598 () Bool)

(assert (=> d!1572459 (=> (not res!2090598) (not e!3059918))))

(assert (=> d!1572459 (= res!2090598 (= (++!12244 (_1!33536 lt!2006670) (_2!33536 lt!2006670)) (list!17727 input!1236)))))

(assert (=> d!1572459 (= lt!2006670 e!3059917)))

(declare-fun c!831964 () Bool)

(assert (=> d!1572459 (= c!831964 (lostCause!1087 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun lt!2006667 () Unit!146435)

(declare-fun Unit!146458 () Unit!146435)

(assert (=> d!1572459 (= lt!2006667 Unit!146458)))

(assert (=> d!1572459 (= (getSuffix!2888 (list!17727 input!1236) Nil!56408) (list!17727 input!1236))))

(declare-fun lt!2006669 () Unit!146435)

(declare-fun lt!2006668 () Unit!146435)

(assert (=> d!1572459 (= lt!2006669 lt!2006668)))

(declare-fun lt!2006666 () List!56532)

(assert (=> d!1572459 (= (list!17727 input!1236) lt!2006666)))

(assert (=> d!1572459 (= lt!2006668 (lemmaSamePrefixThenSameSuffix!2304 Nil!56408 (list!17727 input!1236) Nil!56408 lt!2006666 (list!17727 input!1236)))))

(assert (=> d!1572459 (= lt!2006666 (getSuffix!2888 (list!17727 input!1236) Nil!56408))))

(declare-fun lt!2006665 () Unit!146435)

(declare-fun lt!2006660 () Unit!146435)

(assert (=> d!1572459 (= lt!2006665 lt!2006660)))

(assert (=> d!1572459 (isPrefix!4895 Nil!56408 (++!12244 Nil!56408 (list!17727 input!1236)))))

(assert (=> d!1572459 (= lt!2006660 (lemmaConcatTwoListThenFirstIsPrefix!3124 Nil!56408 (list!17727 input!1236)))))

(assert (=> d!1572459 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165)))))

(assert (=> d!1572459 (= (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236))) lt!2006670)))

(declare-fun bm!339540 () Bool)

(assert (=> bm!339540 (= call!339538 (nullable!4556 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun b!4894824 () Bool)

(assert (=> b!4894824 (= e!3059916 (tuple2!60467 Nil!56408 (list!17727 input!1236)))))

(declare-fun b!4894825 () Bool)

(declare-fun Unit!146459 () Unit!146435)

(assert (=> b!4894825 (= e!3059915 Unit!146459)))

(assert (= (and d!1572459 c!831964) b!4894812))

(assert (= (and d!1572459 (not c!831964)) b!4894818))

(assert (= (and b!4894818 c!831967) b!4894822))

(assert (= (and b!4894818 (not c!831967)) b!4894821))

(assert (= (and b!4894822 c!831962) b!4894819))

(assert (= (and b!4894822 (not c!831962)) b!4894814))

(assert (= (and b!4894821 c!831966) b!4894816))

(assert (= (and b!4894821 (not c!831966)) b!4894825))

(assert (= (and b!4894821 c!831963) b!4894823))

(assert (= (and b!4894821 (not c!831963)) b!4894813))

(assert (= (and b!4894823 c!831965) b!4894824))

(assert (= (and b!4894823 (not c!831965)) b!4894817))

(assert (= (or b!4894823 b!4894813) bm!339537))

(assert (= (or b!4894823 b!4894813) bm!339534))

(assert (= (or b!4894823 b!4894813) bm!339535))

(assert (= (or b!4894823 b!4894813) bm!339536))

(assert (= (or b!4894822 b!4894821) bm!339540))

(assert (= (or b!4894822 b!4894816) bm!339539))

(assert (= (or b!4894822 b!4894816) bm!339533))

(assert (= (or b!4894822 b!4894816) bm!339538))

(assert (= (and d!1572459 res!2090598) b!4894820))

(assert (= (and b!4894820 (not res!2090597)) b!4894815))

(assert (=> bm!339534 m!5898444))

(assert (=> bm!339534 m!5900280))

(declare-fun m!5900532 () Bool)

(assert (=> bm!339535 m!5900532))

(assert (=> bm!339540 m!5898840))

(assert (=> bm!339539 m!5898444))

(assert (=> bm!339539 m!5898444))

(assert (=> bm!339539 m!5898908))

(assert (=> bm!339536 m!5898444))

(assert (=> bm!339536 m!5898790))

(declare-fun m!5900534 () Bool)

(assert (=> bm!339536 m!5900534))

(declare-fun m!5900536 () Bool)

(assert (=> b!4894823 m!5900536))

(declare-fun m!5900538 () Bool)

(assert (=> b!4894821 m!5900538))

(declare-fun m!5900540 () Bool)

(assert (=> b!4894821 m!5900540))

(assert (=> b!4894821 m!5898444))

(declare-fun m!5900542 () Bool)

(assert (=> b!4894821 m!5900542))

(declare-fun m!5900544 () Bool)

(assert (=> b!4894821 m!5900544))

(assert (=> b!4894821 m!5898444))

(declare-fun m!5900546 () Bool)

(assert (=> b!4894821 m!5900546))

(declare-fun m!5900548 () Bool)

(assert (=> b!4894821 m!5900548))

(declare-fun m!5900550 () Bool)

(assert (=> b!4894821 m!5900550))

(assert (=> b!4894821 m!5898444))

(assert (=> b!4894821 m!5900282))

(assert (=> b!4894821 m!5898444))

(assert (=> b!4894821 m!5898790))

(assert (=> b!4894821 m!5900548))

(assert (=> b!4894821 m!5898444))

(assert (=> b!4894821 m!5900538))

(assert (=> b!4894821 m!5898444))

(declare-fun m!5900552 () Bool)

(assert (=> b!4894821 m!5900552))

(declare-fun m!5900554 () Bool)

(assert (=> b!4894821 m!5900554))

(assert (=> b!4894821 m!5900544))

(assert (=> b!4894821 m!5898444))

(declare-fun m!5900556 () Bool)

(assert (=> b!4894821 m!5900556))

(assert (=> b!4894821 m!5898444))

(assert (=> b!4894821 m!5900280))

(assert (=> b!4894821 m!5898636))

(declare-fun m!5900558 () Bool)

(assert (=> b!4894820 m!5900558))

(assert (=> bm!339538 m!5898444))

(assert (=> bm!339538 m!5898444))

(assert (=> bm!339538 m!5898906))

(assert (=> bm!339537 m!5898444))

(assert (=> bm!339537 m!5900282))

(declare-fun m!5900560 () Bool)

(assert (=> b!4894815 m!5900560))

(assert (=> b!4894815 m!5898636))

(assert (=> bm!339533 m!5898444))

(assert (=> bm!339533 m!5898444))

(declare-fun m!5900562 () Bool)

(assert (=> bm!339533 m!5900562))

(assert (=> d!1572459 m!5898444))

(declare-fun m!5900564 () Bool)

(assert (=> d!1572459 m!5900564))

(assert (=> d!1572459 m!5898834))

(declare-fun m!5900566 () Bool)

(assert (=> d!1572459 m!5900566))

(declare-fun m!5900568 () Bool)

(assert (=> d!1572459 m!5900568))

(assert (=> d!1572459 m!5899052))

(assert (=> d!1572459 m!5898444))

(assert (=> d!1572459 m!5898444))

(declare-fun m!5900570 () Bool)

(assert (=> d!1572459 m!5900570))

(declare-fun m!5900572 () Bool)

(assert (=> d!1572459 m!5900572))

(assert (=> d!1572459 m!5898444))

(assert (=> d!1572459 m!5900566))

(assert (=> d!1572459 m!5898444))

(assert (=> d!1572459 m!5900538))

(assert (=> b!4893741 d!1572459))

(assert (=> b!4893741 d!1572025))

(assert (=> b!4893741 d!1572303))

(assert (=> b!4894116 d!1572311))

(declare-fun d!1572461 () Bool)

(declare-fun lt!2006672 () Int)

(assert (=> d!1572461 (>= lt!2006672 0)))

(declare-fun e!3059921 () Int)

(assert (=> d!1572461 (= lt!2006672 e!3059921)))

(declare-fun c!831968 () Bool)

(assert (=> d!1572461 (= c!831968 (is-Nil!56408 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006351)))))))

(assert (=> d!1572461 (= (size!37145 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006351)))) lt!2006672)))

(declare-fun b!4894826 () Bool)

(assert (=> b!4894826 (= e!3059921 0)))

(declare-fun b!4894827 () Bool)

(assert (=> b!4894827 (= e!3059921 (+ 1 (size!37145 (t!365672 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006351)))))))))

(assert (= (and d!1572461 c!831968) b!4894826))

(assert (= (and d!1572461 (not c!831968)) b!4894827))

(declare-fun m!5900574 () Bool)

(assert (=> b!4894827 m!5900574))

(assert (=> b!4894116 d!1572461))

(declare-fun d!1572463 () Bool)

(declare-fun c!831969 () Bool)

(assert (=> d!1572463 (= c!831969 (is-Node!14743 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (value!262139 (_1!33532 (get!19481 lt!2005936)))))))))

(declare-fun e!3059922 () Bool)

(assert (=> d!1572463 (= (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (value!262139 (_1!33532 (get!19481 lt!2005936)))))) e!3059922)))

(declare-fun b!4894828 () Bool)

(assert (=> b!4894828 (= e!3059922 (inv!72695 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (value!262139 (_1!33532 (get!19481 lt!2005936)))))))))

(declare-fun b!4894829 () Bool)

(declare-fun e!3059923 () Bool)

(assert (=> b!4894829 (= e!3059922 e!3059923)))

(declare-fun res!2090599 () Bool)

(assert (=> b!4894829 (= res!2090599 (not (is-Leaf!24548 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (value!262139 (_1!33532 (get!19481 lt!2005936))))))))))

(assert (=> b!4894829 (=> res!2090599 e!3059923)))

(declare-fun b!4894830 () Bool)

(assert (=> b!4894830 (= e!3059923 (inv!72696 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (value!262139 (_1!33532 (get!19481 lt!2005936)))))))))

(assert (= (and d!1572463 c!831969) b!4894828))

(assert (= (and d!1572463 (not c!831969)) b!4894829))

(assert (= (and b!4894829 (not res!2090599)) b!4894830))

(declare-fun m!5900576 () Bool)

(assert (=> b!4894828 m!5900576))

(declare-fun m!5900578 () Bool)

(assert (=> b!4894830 m!5900578))

(assert (=> b!4893767 d!1572463))

(declare-fun d!1572465 () Bool)

(assert (=> d!1572465 (= (isEmpty!30267 lt!2006351) (not (is-Some!14027 lt!2006351)))))

(assert (=> d!1572085 d!1572465))

(declare-fun d!1572467 () Bool)

(assert (=> d!1572467 (= (isEmpty!30272 (_1!33536 lt!2006352)) (is-Nil!56408 (_1!33536 lt!2006352)))))

(assert (=> d!1572085 d!1572467))

(declare-fun d!1572469 () Bool)

(declare-fun lt!2006690 () tuple2!60466)

(assert (=> d!1572469 (= (++!12244 (_1!33536 lt!2006690) (_2!33536 lt!2006690)) lt!2005844)))

(assert (=> d!1572469 (= lt!2006690 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 0 lt!2005844 lt!2005844 (sizeTr!341 lt!2005844 0)))))

(declare-fun lt!2006696 () Unit!146435)

(declare-fun lt!2006695 () Unit!146435)

(assert (=> d!1572469 (= lt!2006696 lt!2006695)))

(declare-fun lt!2006692 () List!56532)

(declare-fun lt!2006691 () Int)

(assert (=> d!1572469 (= (sizeTr!341 lt!2006692 lt!2006691) (+ (size!37145 lt!2006692) lt!2006691))))

(assert (=> d!1572469 (= lt!2006695 (lemmaSizeTrEqualsSize!340 lt!2006692 lt!2006691))))

(assert (=> d!1572469 (= lt!2006691 0)))

(assert (=> d!1572469 (= lt!2006692 Nil!56408)))

(declare-fun lt!2006689 () Unit!146435)

(declare-fun lt!2006693 () Unit!146435)

(assert (=> d!1572469 (= lt!2006689 lt!2006693)))

(declare-fun lt!2006694 () Int)

(assert (=> d!1572469 (= (sizeTr!341 lt!2005844 lt!2006694) (+ (size!37145 lt!2005844) lt!2006694))))

(assert (=> d!1572469 (= lt!2006693 (lemmaSizeTrEqualsSize!340 lt!2005844 lt!2006694))))

(assert (=> d!1572469 (= lt!2006694 0)))

(assert (=> d!1572469 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165)))))

(assert (=> d!1572469 (= (findLongestMatch!1648 (regex!8175 (h!62858 rulesArg!165)) lt!2005844) lt!2006690)))

(declare-fun bs!1176177 () Bool)

(assert (= bs!1176177 d!1572469))

(declare-fun m!5900580 () Bool)

(assert (=> bs!1176177 m!5900580))

(declare-fun m!5900582 () Bool)

(assert (=> bs!1176177 m!5900582))

(declare-fun m!5900584 () Bool)

(assert (=> bs!1176177 m!5900584))

(declare-fun m!5900586 () Bool)

(assert (=> bs!1176177 m!5900586))

(assert (=> bs!1176177 m!5898834))

(declare-fun m!5900588 () Bool)

(assert (=> bs!1176177 m!5900588))

(declare-fun m!5900590 () Bool)

(assert (=> bs!1176177 m!5900590))

(assert (=> bs!1176177 m!5900580))

(declare-fun m!5900592 () Bool)

(assert (=> bs!1176177 m!5900592))

(assert (=> bs!1176177 m!5898538))

(declare-fun m!5900594 () Bool)

(assert (=> bs!1176177 m!5900594))

(assert (=> d!1572085 d!1572469))

(assert (=> d!1572085 d!1571931))

(declare-fun b!4894831 () Bool)

(declare-fun e!3059925 () List!56532)

(assert (=> b!4894831 (= e!3059925 (_2!33532 (get!19481 lt!2006086)))))

(declare-fun b!4894833 () Bool)

(declare-fun res!2090600 () Bool)

(declare-fun e!3059924 () Bool)

(assert (=> b!4894833 (=> (not res!2090600) (not e!3059924))))

(declare-fun lt!2006697 () List!56532)

(assert (=> b!4894833 (= res!2090600 (= (size!37145 lt!2006697) (+ (size!37145 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086))))) (size!37145 (_2!33532 (get!19481 lt!2006086))))))))

(declare-fun b!4894832 () Bool)

(assert (=> b!4894832 (= e!3059925 (Cons!56408 (h!62856 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086))))) (++!12244 (t!365672 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086))))) (_2!33532 (get!19481 lt!2006086)))))))

(declare-fun d!1572471 () Bool)

(assert (=> d!1572471 e!3059924))

(declare-fun res!2090601 () Bool)

(assert (=> d!1572471 (=> (not res!2090601) (not e!3059924))))

(assert (=> d!1572471 (= res!2090601 (= (content!10019 lt!2006697) (set.union (content!10019 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086))))) (content!10019 (_2!33532 (get!19481 lt!2006086))))))))

(assert (=> d!1572471 (= lt!2006697 e!3059925)))

(declare-fun c!831970 () Bool)

(assert (=> d!1572471 (= c!831970 (is-Nil!56408 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086))))))))

(assert (=> d!1572471 (= (++!12244 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086)))) (_2!33532 (get!19481 lt!2006086))) lt!2006697)))

(declare-fun b!4894834 () Bool)

(assert (=> b!4894834 (= e!3059924 (or (not (= (_2!33532 (get!19481 lt!2006086)) Nil!56408)) (= lt!2006697 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006086)))))))))

(assert (= (and d!1572471 c!831970) b!4894831))

(assert (= (and d!1572471 (not c!831970)) b!4894832))

(assert (= (and d!1572471 res!2090601) b!4894833))

(assert (= (and b!4894833 res!2090600) b!4894834))

(declare-fun m!5900596 () Bool)

(assert (=> b!4894833 m!5900596))

(assert (=> b!4894833 m!5898882))

(declare-fun m!5900598 () Bool)

(assert (=> b!4894833 m!5900598))

(assert (=> b!4894833 m!5898888))

(declare-fun m!5900600 () Bool)

(assert (=> b!4894832 m!5900600))

(declare-fun m!5900602 () Bool)

(assert (=> d!1572471 m!5900602))

(assert (=> d!1572471 m!5898882))

(declare-fun m!5900604 () Bool)

(assert (=> d!1572471 m!5900604))

(declare-fun m!5900606 () Bool)

(assert (=> d!1572471 m!5900606))

(assert (=> b!4893776 d!1572471))

(assert (=> b!4893776 d!1572439))

(assert (=> b!4893776 d!1572441))

(assert (=> b!4893776 d!1572239))

(declare-fun d!1572473 () Bool)

(assert (=> d!1572473 (= (isEmpty!30272 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))) (is-Nil!56408 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))

(assert (=> bm!339416 d!1572473))

(declare-fun d!1572475 () Bool)

(assert (=> d!1572475 (= (isEmpty!30268 lt!2006028) (not (is-Some!14026 lt!2006028)))))

(assert (=> d!1571921 d!1572475))

(assert (=> d!1572107 d!1572253))

(assert (=> d!1572107 d!1572327))

(declare-fun b!4894838 () Bool)

(declare-fun e!3059926 () Bool)

(assert (=> b!4894838 (= e!3059926 (>= (size!37145 lt!2006382) (size!37145 lt!2006376)))))

(declare-fun d!1572477 () Bool)

(assert (=> d!1572477 e!3059926))

(declare-fun res!2090604 () Bool)

(assert (=> d!1572477 (=> res!2090604 e!3059926)))

(declare-fun lt!2006698 () Bool)

(assert (=> d!1572477 (= res!2090604 (not lt!2006698))))

(declare-fun e!3059928 () Bool)

(assert (=> d!1572477 (= lt!2006698 e!3059928)))

(declare-fun res!2090602 () Bool)

(assert (=> d!1572477 (=> res!2090602 e!3059928)))

(assert (=> d!1572477 (= res!2090602 (is-Nil!56408 lt!2006376))))

(assert (=> d!1572477 (= (isPrefix!4895 lt!2006376 lt!2006382) lt!2006698)))

(declare-fun b!4894836 () Bool)

(declare-fun res!2090605 () Bool)

(declare-fun e!3059927 () Bool)

(assert (=> b!4894836 (=> (not res!2090605) (not e!3059927))))

(assert (=> b!4894836 (= res!2090605 (= (head!10456 lt!2006376) (head!10456 lt!2006382)))))

(declare-fun b!4894835 () Bool)

(assert (=> b!4894835 (= e!3059928 e!3059927)))

(declare-fun res!2090603 () Bool)

(assert (=> b!4894835 (=> (not res!2090603) (not e!3059927))))

(assert (=> b!4894835 (= res!2090603 (not (is-Nil!56408 lt!2006382)))))

(declare-fun b!4894837 () Bool)

(assert (=> b!4894837 (= e!3059927 (isPrefix!4895 (tail!9602 lt!2006376) (tail!9602 lt!2006382)))))

(assert (= (and d!1572477 (not res!2090602)) b!4894835))

(assert (= (and b!4894835 res!2090603) b!4894836))

(assert (= (and b!4894836 res!2090605) b!4894837))

(assert (= (and d!1572477 (not res!2090604)) b!4894838))

(declare-fun m!5900608 () Bool)

(assert (=> b!4894838 m!5900608))

(declare-fun m!5900610 () Bool)

(assert (=> b!4894838 m!5900610))

(declare-fun m!5900612 () Bool)

(assert (=> b!4894836 m!5900612))

(declare-fun m!5900614 () Bool)

(assert (=> b!4894836 m!5900614))

(declare-fun m!5900616 () Bool)

(assert (=> b!4894837 m!5900616))

(declare-fun m!5900618 () Bool)

(assert (=> b!4894837 m!5900618))

(assert (=> b!4894837 m!5900616))

(assert (=> b!4894837 m!5900618))

(declare-fun m!5900620 () Bool)

(assert (=> b!4894837 m!5900620))

(assert (=> d!1572107 d!1572477))

(declare-fun d!1572479 () Bool)

(assert (=> d!1572479 (= (isDefined!11040 (maxPrefixZipper!674 thiss!14805 (t!365674 (t!365674 rulesArg!165)) (list!17727 input!1236))) (not (isEmpty!30267 (maxPrefixZipper!674 thiss!14805 (t!365674 (t!365674 rulesArg!165)) (list!17727 input!1236)))))))

(declare-fun bs!1176178 () Bool)

(assert (= bs!1176178 d!1572479))

(assert (=> bs!1176178 m!5898958))

(declare-fun m!5900622 () Bool)

(assert (=> bs!1176178 m!5900622))

(assert (=> d!1572107 d!1572479))

(assert (=> d!1572107 d!1572269))

(assert (=> d!1572107 d!1571887))

(declare-fun d!1572481 () Bool)

(assert (=> d!1572481 (isPrefix!4895 lt!2006376 lt!2006382)))

(declare-fun lt!2006699 () Unit!146435)

(assert (=> d!1572481 (= lt!2006699 (choose!35724 lt!2006376 lt!2006382))))

(assert (=> d!1572481 (= (lemmaIsPrefixRefl!3292 lt!2006376 lt!2006382) lt!2006699)))

(declare-fun bs!1176179 () Bool)

(assert (= bs!1176179 d!1572481))

(assert (=> bs!1176179 m!5899408))

(declare-fun m!5900624 () Bool)

(assert (=> bs!1176179 m!5900624))

(assert (=> d!1572107 d!1572481))

(declare-fun d!1572483 () Bool)

(assert (=> d!1572483 (= (isEmpty!30272 (list!17727 (_1!33535 lt!2006025))) (is-Nil!56408 (list!17727 (_1!33535 lt!2006025))))))

(assert (=> d!1571929 d!1572483))

(assert (=> d!1571929 d!1572015))

(declare-fun d!1572485 () Bool)

(declare-fun lt!2006700 () Bool)

(assert (=> d!1572485 (= lt!2006700 (isEmpty!30272 (list!17729 (c!831694 (_1!33535 lt!2006025)))))))

(assert (=> d!1572485 (= lt!2006700 (= (size!37149 (c!831694 (_1!33535 lt!2006025))) 0))))

(assert (=> d!1572485 (= (isEmpty!30275 (c!831694 (_1!33535 lt!2006025))) lt!2006700)))

(declare-fun bs!1176180 () Bool)

(assert (= bs!1176180 d!1572485))

(assert (=> bs!1176180 m!5899138))

(assert (=> bs!1176180 m!5899138))

(declare-fun m!5900626 () Bool)

(assert (=> bs!1176180 m!5900626))

(assert (=> bs!1176180 m!5899118))

(assert (=> d!1571929 d!1572485))

(assert (=> b!4893786 d!1572381))

(declare-fun d!1572487 () Bool)

(declare-fun lt!2006701 () Int)

(assert (=> d!1572487 (>= lt!2006701 0)))

(declare-fun e!3059929 () Int)

(assert (=> d!1572487 (= lt!2006701 e!3059929)))

(declare-fun c!831971 () Bool)

(assert (=> d!1572487 (= c!831971 (is-Nil!56408 lt!2005975))))

(assert (=> d!1572487 (= (size!37145 lt!2005975) lt!2006701)))

(declare-fun b!4894839 () Bool)

(assert (=> b!4894839 (= e!3059929 0)))

(declare-fun b!4894840 () Bool)

(assert (=> b!4894840 (= e!3059929 (+ 1 (size!37145 (t!365672 lt!2005975))))))

(assert (= (and d!1572487 c!831971) b!4894839))

(assert (= (and d!1572487 (not c!831971)) b!4894840))

(declare-fun m!5900628 () Bool)

(assert (=> b!4894840 m!5900628))

(assert (=> b!4893841 d!1572487))

(declare-fun d!1572489 () Bool)

(declare-fun lt!2006702 () Int)

(assert (=> d!1572489 (>= lt!2006702 0)))

(declare-fun e!3059930 () Int)

(assert (=> d!1572489 (= lt!2006702 e!3059930)))

(declare-fun c!831972 () Bool)

(assert (=> d!1572489 (= c!831972 (is-Nil!56408 lt!2005969))))

(assert (=> d!1572489 (= (size!37145 lt!2005969) lt!2006702)))

(declare-fun b!4894841 () Bool)

(assert (=> b!4894841 (= e!3059930 0)))

(declare-fun b!4894842 () Bool)

(assert (=> b!4894842 (= e!3059930 (+ 1 (size!37145 (t!365672 lt!2005969))))))

(assert (= (and d!1572489 c!831972) b!4894841))

(assert (= (and d!1572489 (not c!831972)) b!4894842))

(declare-fun m!5900630 () Bool)

(assert (=> b!4894842 m!5900630))

(assert (=> b!4893841 d!1572489))

(declare-fun d!1572491 () Bool)

(declare-fun res!2090606 () Bool)

(declare-fun e!3059931 () Bool)

(assert (=> d!1572491 (=> (not res!2090606) (not e!3059931))))

(assert (=> d!1572491 (= res!2090606 (validRegex!5883 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))))

(assert (=> d!1572491 (= (ruleValid!3673 thiss!14805 (h!62858 (t!365674 rulesArg!165))) e!3059931)))

(declare-fun b!4894843 () Bool)

(declare-fun res!2090607 () Bool)

(assert (=> b!4894843 (=> (not res!2090607) (not e!3059931))))

(assert (=> b!4894843 (= res!2090607 (not (nullable!4556 (regex!8175 (h!62858 (t!365674 rulesArg!165))))))))

(declare-fun b!4894844 () Bool)

(assert (=> b!4894844 (= e!3059931 (not (= (tag!9039 (h!62858 (t!365674 rulesArg!165))) (String!63870 ""))))))

(assert (= (and d!1572491 res!2090606) b!4894843))

(assert (= (and b!4894843 res!2090607) b!4894844))

(assert (=> d!1572491 m!5900028))

(assert (=> b!4894843 m!5900030))

(assert (=> d!1572117 d!1572491))

(declare-fun d!1572493 () Bool)

(declare-fun lt!2006703 () Bool)

(assert (=> d!1572493 (= lt!2006703 (isEmpty!30272 (list!17727 (_1!33535 lt!2006388))))))

(assert (=> d!1572493 (= lt!2006703 (isEmpty!30275 (c!831694 (_1!33535 lt!2006388))))))

(assert (=> d!1572493 (= (isEmpty!30271 (_1!33535 lt!2006388)) lt!2006703)))

(declare-fun bs!1176181 () Bool)

(assert (= bs!1176181 d!1572493))

(assert (=> bs!1176181 m!5899444))

(assert (=> bs!1176181 m!5899444))

(declare-fun m!5900632 () Bool)

(assert (=> bs!1176181 m!5900632))

(declare-fun m!5900634 () Bool)

(assert (=> bs!1176181 m!5900634))

(assert (=> d!1572117 d!1572493))

(assert (=> d!1572117 d!1572385))

(assert (=> d!1572117 d!1571887))

(declare-fun d!1572495 () Bool)

(assert (=> d!1572495 (= (isDefined!11040 (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 rulesArg!165)) (list!17727 input!1236))) (not (isEmpty!30267 (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 rulesArg!165)) (list!17727 input!1236)))))))

(declare-fun bs!1176182 () Bool)

(assert (= bs!1176182 d!1572495))

(assert (=> bs!1176182 m!5898926))

(declare-fun m!5900636 () Bool)

(assert (=> bs!1176182 m!5900636))

(assert (=> d!1572117 d!1572495))

(declare-fun d!1572497 () Bool)

(assert (=> d!1572497 (= (isDefined!11041 lt!2006391) (not (isEmpty!30268 lt!2006391)))))

(declare-fun bs!1176183 () Bool)

(assert (= bs!1176183 d!1572497))

(declare-fun m!5900638 () Bool)

(assert (=> bs!1176183 m!5900638))

(assert (=> d!1572117 d!1572497))

(declare-fun d!1572499 () Bool)

(declare-fun lt!2006704 () tuple2!60464)

(assert (=> d!1572499 (= (tuple2!60467 (list!17727 (_1!33535 lt!2006704)) (list!17727 (_2!33535 lt!2006704))) (findLongestMatch!1648 (regex!8175 (h!62858 (t!365674 rulesArg!165))) (list!17727 input!1236)))))

(assert (=> d!1572499 (= lt!2006704 (choose!35726 (regex!8175 (h!62858 (t!365674 rulesArg!165))) input!1236))))

(assert (=> d!1572499 (validRegex!5883 (regex!8175 (h!62858 (t!365674 rulesArg!165))))))

(assert (=> d!1572499 (= (findLongestMatchWithZipperSequence!269 (regex!8175 (h!62858 (t!365674 rulesArg!165))) input!1236) lt!2006704)))

(declare-fun bs!1176184 () Bool)

(assert (= bs!1176184 d!1572499))

(assert (=> bs!1176184 m!5898444))

(assert (=> bs!1176184 m!5900350))

(declare-fun m!5900640 () Bool)

(assert (=> bs!1176184 m!5900640))

(assert (=> bs!1176184 m!5898444))

(declare-fun m!5900642 () Bool)

(assert (=> bs!1176184 m!5900642))

(declare-fun m!5900644 () Bool)

(assert (=> bs!1176184 m!5900644))

(assert (=> bs!1176184 m!5900028))

(assert (=> d!1572117 d!1572499))

(declare-fun d!1572501 () Bool)

(declare-fun c!831975 () Bool)

(assert (=> d!1572501 (= c!831975 (is-Nil!56408 lt!2006081))))

(declare-fun e!3059934 () (Set C!26698))

(assert (=> d!1572501 (= (content!10019 lt!2006081) e!3059934)))

(declare-fun b!4894849 () Bool)

(assert (=> b!4894849 (= e!3059934 (as set.empty (Set C!26698)))))

(declare-fun b!4894850 () Bool)

(assert (=> b!4894850 (= e!3059934 (set.union (set.insert (h!62856 lt!2006081) (as set.empty (Set C!26698))) (content!10019 (t!365672 lt!2006081))))))

(assert (= (and d!1572501 c!831975) b!4894849))

(assert (= (and d!1572501 (not c!831975)) b!4894850))

(declare-fun m!5900646 () Bool)

(assert (=> b!4894850 m!5900646))

(declare-fun m!5900648 () Bool)

(assert (=> b!4894850 m!5900648))

(assert (=> d!1571933 d!1572501))

(declare-fun d!1572503 () Bool)

(declare-fun c!831976 () Bool)

(assert (=> d!1572503 (= c!831976 (is-Nil!56408 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))

(declare-fun e!3059935 () (Set C!26698))

(assert (=> d!1572503 (= (content!10019 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))) e!3059935)))

(declare-fun b!4894851 () Bool)

(assert (=> b!4894851 (= e!3059935 (as set.empty (Set C!26698)))))

(declare-fun b!4894852 () Bool)

(assert (=> b!4894852 (= e!3059935 (set.union (set.insert (h!62856 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))) (as set.empty (Set C!26698))) (content!10019 (t!365672 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))))

(assert (= (and d!1572503 c!831976) b!4894851))

(assert (= (and d!1572503 (not c!831976)) b!4894852))

(declare-fun m!5900650 () Bool)

(assert (=> b!4894852 m!5900650))

(declare-fun m!5900652 () Bool)

(assert (=> b!4894852 m!5900652))

(assert (=> d!1571933 d!1572503))

(declare-fun d!1572505 () Bool)

(declare-fun c!831977 () Bool)

(assert (=> d!1572505 (= c!831977 (is-Nil!56408 (_2!33532 (get!19481 lt!2005936))))))

(declare-fun e!3059936 () (Set C!26698))

(assert (=> d!1572505 (= (content!10019 (_2!33532 (get!19481 lt!2005936))) e!3059936)))

(declare-fun b!4894853 () Bool)

(assert (=> b!4894853 (= e!3059936 (as set.empty (Set C!26698)))))

(declare-fun b!4894854 () Bool)

(assert (=> b!4894854 (= e!3059936 (set.union (set.insert (h!62856 (_2!33532 (get!19481 lt!2005936))) (as set.empty (Set C!26698))) (content!10019 (t!365672 (_2!33532 (get!19481 lt!2005936))))))))

(assert (= (and d!1572505 c!831977) b!4894853))

(assert (= (and d!1572505 (not c!831977)) b!4894854))

(declare-fun m!5900654 () Bool)

(assert (=> b!4894854 m!5900654))

(declare-fun m!5900656 () Bool)

(assert (=> b!4894854 m!5900656))

(assert (=> d!1571933 d!1572505))

(declare-fun b!4894855 () Bool)

(declare-fun e!3059938 () List!56532)

(assert (=> b!4894855 (= e!3059938 (_2!33532 (get!19481 lt!2005936)))))

(declare-fun b!4894857 () Bool)

(declare-fun res!2090608 () Bool)

(declare-fun e!3059937 () Bool)

(assert (=> b!4894857 (=> (not res!2090608) (not e!3059937))))

(declare-fun lt!2006705 () List!56532)

(assert (=> b!4894857 (= res!2090608 (= (size!37145 lt!2006705) (+ (size!37145 (t!365672 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))) (size!37145 (_2!33532 (get!19481 lt!2005936))))))))

(declare-fun b!4894856 () Bool)

(assert (=> b!4894856 (= e!3059938 (Cons!56408 (h!62856 (t!365672 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))) (++!12244 (t!365672 (t!365672 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))) (_2!33532 (get!19481 lt!2005936)))))))

(declare-fun d!1572507 () Bool)

(assert (=> d!1572507 e!3059937))

(declare-fun res!2090609 () Bool)

(assert (=> d!1572507 (=> (not res!2090609) (not e!3059937))))

(assert (=> d!1572507 (= res!2090609 (= (content!10019 lt!2006705) (set.union (content!10019 (t!365672 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))) (content!10019 (_2!33532 (get!19481 lt!2005936))))))))

(assert (=> d!1572507 (= lt!2006705 e!3059938)))

(declare-fun c!831978 () Bool)

(assert (=> d!1572507 (= c!831978 (is-Nil!56408 (t!365672 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))))))

(assert (=> d!1572507 (= (++!12244 (t!365672 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))) (_2!33532 (get!19481 lt!2005936))) lt!2006705)))

(declare-fun b!4894858 () Bool)

(assert (=> b!4894858 (= e!3059937 (or (not (= (_2!33532 (get!19481 lt!2005936)) Nil!56408)) (= lt!2006705 (t!365672 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))))

(assert (= (and d!1572507 c!831978) b!4894855))

(assert (= (and d!1572507 (not c!831978)) b!4894856))

(assert (= (and d!1572507 res!2090609) b!4894857))

(assert (= (and b!4894857 res!2090608) b!4894858))

(declare-fun m!5900658 () Bool)

(assert (=> b!4894857 m!5900658))

(declare-fun m!5900660 () Bool)

(assert (=> b!4894857 m!5900660))

(assert (=> b!4894857 m!5898576))

(declare-fun m!5900662 () Bool)

(assert (=> b!4894856 m!5900662))

(declare-fun m!5900664 () Bool)

(assert (=> d!1572507 m!5900664))

(assert (=> d!1572507 m!5900652))

(assert (=> d!1572507 m!5898852))

(assert (=> b!4893760 d!1572507))

(assert (=> bm!339471 d!1571989))

(assert (=> d!1571983 d!1571919))

(declare-fun d!1572509 () Bool)

(declare-fun lt!2006706 () Bool)

(assert (=> d!1572509 (= lt!2006706 (set.member (rule!11365 (_1!33532 (get!19481 lt!2005936))) (content!10021 (t!365674 rulesArg!165))))))

(declare-fun e!3059939 () Bool)

(assert (=> d!1572509 (= lt!2006706 e!3059939)))

(declare-fun res!2090610 () Bool)

(assert (=> d!1572509 (=> (not res!2090610) (not e!3059939))))

(assert (=> d!1572509 (= res!2090610 (is-Cons!56410 (t!365674 rulesArg!165)))))

(assert (=> d!1572509 (= (contains!19438 (t!365674 rulesArg!165) (rule!11365 (_1!33532 (get!19481 lt!2005936)))) lt!2006706)))

(declare-fun b!4894859 () Bool)

(declare-fun e!3059940 () Bool)

(assert (=> b!4894859 (= e!3059939 e!3059940)))

(declare-fun res!2090611 () Bool)

(assert (=> b!4894859 (=> res!2090611 e!3059940)))

(assert (=> b!4894859 (= res!2090611 (= (h!62858 (t!365674 rulesArg!165)) (rule!11365 (_1!33532 (get!19481 lt!2005936)))))))

(declare-fun b!4894860 () Bool)

(assert (=> b!4894860 (= e!3059940 (contains!19438 (t!365674 (t!365674 rulesArg!165)) (rule!11365 (_1!33532 (get!19481 lt!2005936)))))))

(assert (= (and d!1572509 res!2090610) b!4894859))

(assert (= (and b!4894859 (not res!2090611)) b!4894860))

(assert (=> d!1572509 m!5900002))

(declare-fun m!5900666 () Bool)

(assert (=> d!1572509 m!5900666))

(declare-fun m!5900668 () Bool)

(assert (=> b!4894860 m!5900668))

(assert (=> b!4894108 d!1572509))

(assert (=> b!4893831 d!1572325))

(assert (=> b!4894178 d!1572265))

(assert (=> b!4894178 d!1572377))

(assert (=> b!4894178 d!1572381))

(assert (=> b!4894178 d!1571887))

(assert (=> d!1571917 d!1572233))

(assert (=> d!1571917 d!1572235))

(declare-fun b!4894861 () Bool)

(declare-fun e!3059942 () List!56532)

(assert (=> b!4894861 (= e!3059942 (list!17729 (right!41311 (c!831694 (_2!33531 lt!2005841)))))))

(declare-fun b!4894863 () Bool)

(declare-fun res!2090612 () Bool)

(declare-fun e!3059941 () Bool)

(assert (=> b!4894863 (=> (not res!2090612) (not e!3059941))))

(declare-fun lt!2006707 () List!56532)

(assert (=> b!4894863 (= res!2090612 (= (size!37145 lt!2006707) (+ (size!37145 (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005841))))) (size!37145 (list!17729 (right!41311 (c!831694 (_2!33531 lt!2005841))))))))))

(declare-fun b!4894862 () Bool)

(assert (=> b!4894862 (= e!3059942 (Cons!56408 (h!62856 (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005841))))) (++!12244 (t!365672 (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005841))))) (list!17729 (right!41311 (c!831694 (_2!33531 lt!2005841)))))))))

(declare-fun d!1572511 () Bool)

(assert (=> d!1572511 e!3059941))

(declare-fun res!2090613 () Bool)

(assert (=> d!1572511 (=> (not res!2090613) (not e!3059941))))

(assert (=> d!1572511 (= res!2090613 (= (content!10019 lt!2006707) (set.union (content!10019 (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005841))))) (content!10019 (list!17729 (right!41311 (c!831694 (_2!33531 lt!2005841))))))))))

(assert (=> d!1572511 (= lt!2006707 e!3059942)))

(declare-fun c!831979 () Bool)

(assert (=> d!1572511 (= c!831979 (is-Nil!56408 (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005841))))))))

(assert (=> d!1572511 (= (++!12244 (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005841)))) (list!17729 (right!41311 (c!831694 (_2!33531 lt!2005841))))) lt!2006707)))

(declare-fun b!4894864 () Bool)

(assert (=> b!4894864 (= e!3059941 (or (not (= (list!17729 (right!41311 (c!831694 (_2!33531 lt!2005841)))) Nil!56408)) (= lt!2006707 (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005841)))))))))

(assert (= (and d!1572511 c!831979) b!4894861))

(assert (= (and d!1572511 (not c!831979)) b!4894862))

(assert (= (and d!1572511 res!2090613) b!4894863))

(assert (= (and b!4894863 res!2090612) b!4894864))

(declare-fun m!5900670 () Bool)

(assert (=> b!4894863 m!5900670))

(assert (=> b!4894863 m!5899150))

(declare-fun m!5900672 () Bool)

(assert (=> b!4894863 m!5900672))

(assert (=> b!4894863 m!5899152))

(declare-fun m!5900674 () Bool)

(assert (=> b!4894863 m!5900674))

(assert (=> b!4894862 m!5899152))

(declare-fun m!5900676 () Bool)

(assert (=> b!4894862 m!5900676))

(declare-fun m!5900678 () Bool)

(assert (=> d!1572511 m!5900678))

(assert (=> d!1572511 m!5899150))

(declare-fun m!5900680 () Bool)

(assert (=> d!1572511 m!5900680))

(assert (=> d!1572511 m!5899152))

(declare-fun m!5900682 () Bool)

(assert (=> d!1572511 m!5900682))

(assert (=> b!4894043 d!1572511))

(declare-fun b!4894868 () Bool)

(declare-fun e!3059944 () List!56532)

(assert (=> b!4894868 (= e!3059944 (++!12244 (list!17729 (left!40981 (left!40981 (c!831694 (_2!33531 lt!2005841))))) (list!17729 (right!41311 (left!40981 (c!831694 (_2!33531 lt!2005841)))))))))

(declare-fun b!4894865 () Bool)

(declare-fun e!3059943 () List!56532)

(assert (=> b!4894865 (= e!3059943 Nil!56408)))

(declare-fun d!1572513 () Bool)

(declare-fun c!831980 () Bool)

(assert (=> d!1572513 (= c!831980 (is-Empty!14743 (left!40981 (c!831694 (_2!33531 lt!2005841)))))))

(assert (=> d!1572513 (= (list!17729 (left!40981 (c!831694 (_2!33531 lt!2005841)))) e!3059943)))

(declare-fun b!4894866 () Bool)

(assert (=> b!4894866 (= e!3059943 e!3059944)))

(declare-fun c!831981 () Bool)

(assert (=> b!4894866 (= c!831981 (is-Leaf!24548 (left!40981 (c!831694 (_2!33531 lt!2005841)))))))

(declare-fun b!4894867 () Bool)

(assert (=> b!4894867 (= e!3059944 (list!17731 (xs!18059 (left!40981 (c!831694 (_2!33531 lt!2005841))))))))

(assert (= (and d!1572513 c!831980) b!4894865))

(assert (= (and d!1572513 (not c!831980)) b!4894866))

(assert (= (and b!4894866 c!831981) b!4894867))

(assert (= (and b!4894866 (not c!831981)) b!4894868))

(declare-fun m!5900684 () Bool)

(assert (=> b!4894868 m!5900684))

(declare-fun m!5900686 () Bool)

(assert (=> b!4894868 m!5900686))

(assert (=> b!4894868 m!5900684))

(assert (=> b!4894868 m!5900686))

(declare-fun m!5900688 () Bool)

(assert (=> b!4894868 m!5900688))

(declare-fun m!5900690 () Bool)

(assert (=> b!4894867 m!5900690))

(assert (=> b!4894043 d!1572513))

(declare-fun b!4894872 () Bool)

(declare-fun e!3059946 () List!56532)

(assert (=> b!4894872 (= e!3059946 (++!12244 (list!17729 (left!40981 (right!41311 (c!831694 (_2!33531 lt!2005841))))) (list!17729 (right!41311 (right!41311 (c!831694 (_2!33531 lt!2005841)))))))))

(declare-fun b!4894869 () Bool)

(declare-fun e!3059945 () List!56532)

(assert (=> b!4894869 (= e!3059945 Nil!56408)))

(declare-fun d!1572515 () Bool)

(declare-fun c!831982 () Bool)

(assert (=> d!1572515 (= c!831982 (is-Empty!14743 (right!41311 (c!831694 (_2!33531 lt!2005841)))))))

(assert (=> d!1572515 (= (list!17729 (right!41311 (c!831694 (_2!33531 lt!2005841)))) e!3059945)))

(declare-fun b!4894870 () Bool)

(assert (=> b!4894870 (= e!3059945 e!3059946)))

(declare-fun c!831983 () Bool)

(assert (=> b!4894870 (= c!831983 (is-Leaf!24548 (right!41311 (c!831694 (_2!33531 lt!2005841)))))))

(declare-fun b!4894871 () Bool)

(assert (=> b!4894871 (= e!3059946 (list!17731 (xs!18059 (right!41311 (c!831694 (_2!33531 lt!2005841))))))))

(assert (= (and d!1572515 c!831982) b!4894869))

(assert (= (and d!1572515 (not c!831982)) b!4894870))

(assert (= (and b!4894870 c!831983) b!4894871))

(assert (= (and b!4894870 (not c!831983)) b!4894872))

(declare-fun m!5900692 () Bool)

(assert (=> b!4894872 m!5900692))

(declare-fun m!5900694 () Bool)

(assert (=> b!4894872 m!5900694))

(assert (=> b!4894872 m!5900692))

(assert (=> b!4894872 m!5900694))

(declare-fun m!5900696 () Bool)

(assert (=> b!4894872 m!5900696))

(declare-fun m!5900698 () Bool)

(assert (=> b!4894871 m!5900698))

(assert (=> b!4894043 d!1572515))

(assert (=> b!4893780 d!1572439))

(assert (=> b!4893780 d!1572441))

(assert (=> b!4893780 d!1572239))

(assert (=> b!4894121 d!1572311))

(declare-fun d!1572517 () Bool)

(assert (=> d!1572517 (= (Forall!1688 lambda!244046) (choose!35733 lambda!244046))))

(declare-fun bs!1176185 () Bool)

(assert (= bs!1176185 d!1572517))

(declare-fun m!5900700 () Bool)

(assert (=> bs!1176185 m!5900700))

(assert (=> d!1572083 d!1572517))

(assert (=> b!4894162 d!1572401))

(assert (=> b!4894162 d!1572403))

(assert (=> b!4894196 d!1572497))

(assert (=> b!4894184 d!1572379))

(assert (=> b!4894184 d!1572265))

(assert (=> b!4894184 d!1571887))

(assert (=> b!4894184 d!1572269))

(assert (=> b!4894184 d!1572267))

(declare-fun d!1572519 () Bool)

(declare-fun lt!2006708 () Int)

(assert (=> d!1572519 (>= lt!2006708 0)))

(declare-fun e!3059947 () Int)

(assert (=> d!1572519 (= lt!2006708 e!3059947)))

(declare-fun c!831984 () Bool)

(assert (=> d!1572519 (= c!831984 (is-Nil!56408 (t!365672 lt!2006027)))))

(assert (=> d!1572519 (= (size!37145 (t!365672 lt!2006027)) lt!2006708)))

(declare-fun b!4894873 () Bool)

(assert (=> b!4894873 (= e!3059947 0)))

(declare-fun b!4894874 () Bool)

(assert (=> b!4894874 (= e!3059947 (+ 1 (size!37145 (t!365672 (t!365672 lt!2006027)))))))

(assert (= (and d!1572519 c!831984) b!4894873))

(assert (= (and d!1572519 (not c!831984)) b!4894874))

(declare-fun m!5900702 () Bool)

(assert (=> b!4894874 m!5900702))

(assert (=> b!4893890 d!1572519))

(declare-fun lt!2006713 () Option!14028)

(declare-fun d!1572521 () Bool)

(assert (=> d!1572521 (= lt!2006713 (maxPrefix!4604 thiss!14805 (t!365674 (t!365674 rulesArg!165)) lt!2005844))))

(declare-fun e!3059948 () Option!14028)

(assert (=> d!1572521 (= lt!2006713 e!3059948)))

(declare-fun c!831985 () Bool)

(assert (=> d!1572521 (= c!831985 (and (is-Cons!56410 (t!365674 (t!365674 rulesArg!165))) (is-Nil!56410 (t!365674 (t!365674 (t!365674 rulesArg!165))))))))

(declare-fun lt!2006711 () Unit!146435)

(declare-fun lt!2006712 () Unit!146435)

(assert (=> d!1572521 (= lt!2006711 lt!2006712)))

(assert (=> d!1572521 (isPrefix!4895 lt!2005844 lt!2005844)))

(assert (=> d!1572521 (= lt!2006712 (lemmaIsPrefixRefl!3292 lt!2005844 lt!2005844))))

(assert (=> d!1572521 (rulesValidInductive!3154 thiss!14805 (t!365674 (t!365674 rulesArg!165)))))

(assert (=> d!1572521 (= (maxPrefixZipper!674 thiss!14805 (t!365674 (t!365674 rulesArg!165)) lt!2005844) lt!2006713)))

(declare-fun bm!339541 () Bool)

(declare-fun call!339546 () Option!14028)

(assert (=> bm!339541 (= call!339546 (maxPrefixOneRuleZipper!259 thiss!14805 (h!62858 (t!365674 (t!365674 rulesArg!165))) lt!2005844))))

(declare-fun b!4894875 () Bool)

(assert (=> b!4894875 (= e!3059948 call!339546)))

(declare-fun b!4894876 () Bool)

(declare-fun lt!2006710 () Option!14028)

(declare-fun lt!2006709 () Option!14028)

(assert (=> b!4894876 (= e!3059948 (ite (and (is-None!14027 lt!2006710) (is-None!14027 lt!2006709)) None!14027 (ite (is-None!14027 lt!2006709) lt!2006710 (ite (is-None!14027 lt!2006710) lt!2006709 (ite (>= (size!37143 (_1!33532 (v!49981 lt!2006710))) (size!37143 (_1!33532 (v!49981 lt!2006709)))) lt!2006710 lt!2006709)))))))

(assert (=> b!4894876 (= lt!2006710 call!339546)))

(assert (=> b!4894876 (= lt!2006709 (maxPrefixZipper!674 thiss!14805 (t!365674 (t!365674 (t!365674 rulesArg!165))) lt!2005844))))

(assert (= (and d!1572521 c!831985) b!4894875))

(assert (= (and d!1572521 (not c!831985)) b!4894876))

(assert (= (or b!4894875 b!4894876) bm!339541))

(assert (=> d!1572521 m!5898878))

(assert (=> d!1572521 m!5898440))

(assert (=> d!1572521 m!5898442))

(assert (=> d!1572521 m!5898952))

(declare-fun m!5900704 () Bool)

(assert (=> bm!339541 m!5900704))

(declare-fun m!5900706 () Bool)

(assert (=> b!4894876 m!5900706))

(assert (=> b!4894205 d!1572521))

(assert (=> b!4893790 d!1572247))

(declare-fun d!1572523 () Bool)

(assert (=> d!1572523 (= (apply!13541 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091)))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006091))))) (dynLambda!22646 (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091))))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006091))))))))

(declare-fun b_lambda!194529 () Bool)

(assert (=> (not b_lambda!194529) (not d!1572523)))

(declare-fun tb!259031 () Bool)

(declare-fun t!365793 () Bool)

(assert (=> (and b!4893356 (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091)))))) t!365793) tb!259031))

(declare-fun result!322618 () Bool)

(assert (=> tb!259031 (= result!322618 (inv!21 (dynLambda!22646 (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091))))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006091)))))))))

(declare-fun m!5900708 () Bool)

(assert (=> tb!259031 m!5900708))

(assert (=> d!1572523 t!365793))

(declare-fun b_and!345081 () Bool)

(assert (= b_and!345069 (and (=> t!365793 result!322618) b_and!345081)))

(declare-fun tb!259033 () Bool)

(declare-fun t!365795 () Bool)

(assert (=> (and b!4893636 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091)))))) t!365795) tb!259033))

(declare-fun result!322620 () Bool)

(assert (= result!322620 result!322618))

(assert (=> d!1572523 t!365795))

(declare-fun b_and!345083 () Bool)

(assert (= b_and!345071 (and (=> t!365795 result!322620) b_and!345083)))

(declare-fun tb!259035 () Bool)

(declare-fun t!365797 () Bool)

(assert (=> (and b!4894220 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091)))))) t!365797) tb!259035))

(declare-fun result!322622 () Bool)

(assert (= result!322622 result!322618))

(assert (=> d!1572523 t!365797))

(declare-fun b_and!345085 () Bool)

(assert (= b_and!345073 (and (=> t!365797 result!322622) b_and!345085)))

(assert (=> d!1572523 m!5898922))

(declare-fun m!5900710 () Bool)

(assert (=> d!1572523 m!5900710))

(assert (=> b!4893790 d!1572523))

(declare-fun d!1572525 () Bool)

(assert (=> d!1572525 (= (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006091)))) (fromListB!2693 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006091)))))))

(declare-fun bs!1176186 () Bool)

(assert (= bs!1176186 d!1572525))

(declare-fun m!5900712 () Bool)

(assert (=> bs!1176186 m!5900712))

(assert (=> b!4893790 d!1572525))

(assert (=> d!1572021 d!1572083))

(declare-fun d!1572527 () Bool)

(declare-fun lt!2006716 () Int)

(assert (=> d!1572527 (= lt!2006716 (size!37145 (list!17729 (left!40981 (c!831694 input!1236)))))))

(assert (=> d!1572527 (= lt!2006716 (ite (is-Empty!14743 (left!40981 (c!831694 input!1236))) 0 (ite (is-Leaf!24548 (left!40981 (c!831694 input!1236))) (csize!29717 (left!40981 (c!831694 input!1236))) (csize!29716 (left!40981 (c!831694 input!1236))))))))

(assert (=> d!1572527 (= (size!37149 (left!40981 (c!831694 input!1236))) lt!2006716)))

(declare-fun bs!1176187 () Bool)

(assert (= bs!1176187 d!1572527))

(assert (=> bs!1176187 m!5899372))

(assert (=> bs!1176187 m!5899372))

(assert (=> bs!1176187 m!5900164))

(assert (=> d!1571979 d!1572527))

(declare-fun d!1572529 () Bool)

(declare-fun lt!2006717 () Int)

(assert (=> d!1572529 (= lt!2006717 (size!37145 (list!17729 (right!41311 (c!831694 input!1236)))))))

(assert (=> d!1572529 (= lt!2006717 (ite (is-Empty!14743 (right!41311 (c!831694 input!1236))) 0 (ite (is-Leaf!24548 (right!41311 (c!831694 input!1236))) (csize!29717 (right!41311 (c!831694 input!1236))) (csize!29716 (right!41311 (c!831694 input!1236))))))))

(assert (=> d!1572529 (= (size!37149 (right!41311 (c!831694 input!1236))) lt!2006717)))

(declare-fun bs!1176188 () Bool)

(assert (= bs!1176188 d!1572529))

(assert (=> bs!1176188 m!5899374))

(assert (=> bs!1176188 m!5899374))

(assert (=> bs!1176188 m!5900166))

(assert (=> d!1571979 d!1572529))

(declare-fun b!4894877 () Bool)

(declare-fun res!2090618 () Bool)

(declare-fun e!3059956 () Bool)

(assert (=> b!4894877 (=> (not res!2090618) (not e!3059956))))

(assert (=> b!4894877 (= res!2090618 (isEmpty!30272 (tail!9602 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))))

(declare-fun b!4894878 () Bool)

(declare-fun res!2090614 () Bool)

(assert (=> b!4894878 (=> (not res!2090614) (not e!3059956))))

(declare-fun call!339547 () Bool)

(assert (=> b!4894878 (= res!2090614 (not call!339547))))

(declare-fun b!4894879 () Bool)

(declare-fun e!3059953 () Bool)

(declare-fun lt!2006718 () Bool)

(assert (=> b!4894879 (= e!3059953 (= lt!2006718 call!339547))))

(declare-fun b!4894880 () Bool)

(declare-fun e!3059955 () Bool)

(declare-fun e!3059951 () Bool)

(assert (=> b!4894880 (= e!3059955 e!3059951)))

(declare-fun res!2090617 () Bool)

(assert (=> b!4894880 (=> res!2090617 e!3059951)))

(assert (=> b!4894880 (= res!2090617 call!339547)))

(declare-fun b!4894881 () Bool)

(declare-fun e!3059950 () Bool)

(assert (=> b!4894881 (= e!3059950 (nullable!4556 (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))))

(declare-fun b!4894882 () Bool)

(declare-fun e!3059952 () Bool)

(assert (=> b!4894882 (= e!3059952 e!3059955)))

(declare-fun res!2090616 () Bool)

(assert (=> b!4894882 (=> (not res!2090616) (not e!3059955))))

(assert (=> b!4894882 (= res!2090616 (not lt!2006718))))

(declare-fun b!4894883 () Bool)

(declare-fun e!3059954 () Bool)

(assert (=> b!4894883 (= e!3059954 (not lt!2006718))))

(declare-fun bm!339542 () Bool)

(assert (=> bm!339542 (= call!339547 (isEmpty!30272 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))))))

(declare-fun d!1572531 () Bool)

(assert (=> d!1572531 e!3059953))

(declare-fun c!831987 () Bool)

(assert (=> d!1572531 (= c!831987 (is-EmptyExpr!13250 (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))))

(assert (=> d!1572531 (= lt!2006718 e!3059950)))

(declare-fun c!831986 () Bool)

(assert (=> d!1572531 (= c!831986 (isEmpty!30272 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))))))

(assert (=> d!1572531 (validRegex!5883 (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))))))

(assert (=> d!1572531 (= (matchR!6531 (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))) (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))) lt!2006718)))

(declare-fun b!4894884 () Bool)

(assert (=> b!4894884 (= e!3059953 e!3059954)))

(declare-fun c!831988 () Bool)

(assert (=> b!4894884 (= c!831988 (is-EmptyLang!13250 (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))))

(declare-fun b!4894885 () Bool)

(declare-fun res!2090620 () Bool)

(assert (=> b!4894885 (=> res!2090620 e!3059951)))

(assert (=> b!4894885 (= res!2090620 (not (isEmpty!30272 (tail!9602 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))))))))

(declare-fun b!4894886 () Bool)

(assert (=> b!4894886 (= e!3059951 (not (= (head!10456 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))) (c!831695 (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))))))

(declare-fun b!4894887 () Bool)

(assert (=> b!4894887 (= e!3059950 (matchR!6531 (derivativeStep!3879 (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))) (head!10456 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))) (tail!9602 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))))))))

(declare-fun b!4894888 () Bool)

(assert (=> b!4894888 (= e!3059956 (= (head!10456 (tail!9602 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))) (c!831695 (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))))))))

(declare-fun b!4894889 () Bool)

(declare-fun res!2090615 () Bool)

(assert (=> b!4894889 (=> res!2090615 e!3059952)))

(assert (=> b!4894889 (= res!2090615 e!3059956)))

(declare-fun res!2090621 () Bool)

(assert (=> b!4894889 (=> (not res!2090621) (not e!3059956))))

(assert (=> b!4894889 (= res!2090621 lt!2006718)))

(declare-fun b!4894890 () Bool)

(declare-fun res!2090619 () Bool)

(assert (=> b!4894890 (=> res!2090619 e!3059952)))

(assert (=> b!4894890 (= res!2090619 (not (is-ElementMatch!13250 (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))))))))

(assert (=> b!4894890 (= e!3059954 e!3059952)))

(assert (= (and d!1572531 c!831986) b!4894881))

(assert (= (and d!1572531 (not c!831986)) b!4894887))

(assert (= (and d!1572531 c!831987) b!4894879))

(assert (= (and d!1572531 (not c!831987)) b!4894884))

(assert (= (and b!4894884 c!831988) b!4894883))

(assert (= (and b!4894884 (not c!831988)) b!4894890))

(assert (= (and b!4894890 (not res!2090619)) b!4894889))

(assert (= (and b!4894889 res!2090621) b!4894878))

(assert (= (and b!4894878 res!2090614) b!4894877))

(assert (= (and b!4894877 res!2090618) b!4894888))

(assert (= (and b!4894889 (not res!2090615)) b!4894882))

(assert (= (and b!4894882 res!2090616) b!4894880))

(assert (= (and b!4894880 (not res!2090617)) b!4894885))

(assert (= (and b!4894885 (not res!2090620)) b!4894886))

(assert (= (or b!4894879 b!4894878 b!4894880) bm!339542))

(assert (=> b!4894887 m!5899342))

(declare-fun m!5900714 () Bool)

(assert (=> b!4894887 m!5900714))

(assert (=> b!4894887 m!5899340))

(assert (=> b!4894887 m!5900714))

(declare-fun m!5900716 () Bool)

(assert (=> b!4894887 m!5900716))

(assert (=> b!4894887 m!5899342))

(declare-fun m!5900718 () Bool)

(assert (=> b!4894887 m!5900718))

(assert (=> b!4894887 m!5900716))

(assert (=> b!4894887 m!5900718))

(declare-fun m!5900720 () Bool)

(assert (=> b!4894887 m!5900720))

(assert (=> b!4894885 m!5899342))

(assert (=> b!4894885 m!5900718))

(assert (=> b!4894885 m!5900718))

(declare-fun m!5900722 () Bool)

(assert (=> b!4894885 m!5900722))

(assert (=> bm!339542 m!5899342))

(assert (=> bm!339542 m!5899346))

(assert (=> b!4894877 m!5899342))

(assert (=> b!4894877 m!5900718))

(assert (=> b!4894877 m!5900718))

(assert (=> b!4894877 m!5900722))

(assert (=> d!1572531 m!5899342))

(assert (=> d!1572531 m!5899346))

(assert (=> d!1572531 m!5899340))

(declare-fun m!5900724 () Bool)

(assert (=> d!1572531 m!5900724))

(assert (=> b!4894886 m!5899342))

(assert (=> b!4894886 m!5900714))

(assert (=> b!4894881 m!5899340))

(declare-fun m!5900726 () Bool)

(assert (=> b!4894881 m!5900726))

(assert (=> b!4894888 m!5899342))

(assert (=> b!4894888 m!5900714))

(assert (=> b!4894138 d!1572531))

(declare-fun c!831993 () Bool)

(declare-fun c!831991 () Bool)

(declare-fun call!339551 () Regex!13250)

(declare-fun bm!339543 () Bool)

(assert (=> bm!339543 (= call!339551 (derivativeStep!3879 (ite c!831991 (regOne!27013 (regex!8175 (h!62858 rulesArg!165))) (ite c!831993 (reg!13579 (regex!8175 (h!62858 rulesArg!165))) (regOne!27012 (regex!8175 (h!62858 rulesArg!165))))) (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))))))

(declare-fun b!4894891 () Bool)

(declare-fun e!3059959 () Regex!13250)

(declare-fun e!3059957 () Regex!13250)

(assert (=> b!4894891 (= e!3059959 e!3059957)))

(assert (=> b!4894891 (= c!831993 (is-Star!13250 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun d!1572533 () Bool)

(declare-fun lt!2006719 () Regex!13250)

(assert (=> d!1572533 (validRegex!5883 lt!2006719)))

(declare-fun e!3059960 () Regex!13250)

(assert (=> d!1572533 (= lt!2006719 e!3059960)))

(declare-fun c!831992 () Bool)

(assert (=> d!1572533 (= c!831992 (or (is-EmptyExpr!13250 (regex!8175 (h!62858 rulesArg!165))) (is-EmptyLang!13250 (regex!8175 (h!62858 rulesArg!165)))))))

(assert (=> d!1572533 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165)))))

(assert (=> d!1572533 (= (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))) lt!2006719)))

(declare-fun bm!339544 () Bool)

(declare-fun call!339550 () Regex!13250)

(declare-fun call!339548 () Regex!13250)

(assert (=> bm!339544 (= call!339550 call!339548)))

(declare-fun b!4894892 () Bool)

(declare-fun e!3059958 () Regex!13250)

(assert (=> b!4894892 (= e!3059958 (ite (= (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027)))) (c!831695 (regex!8175 (h!62858 rulesArg!165)))) EmptyExpr!13250 EmptyLang!13250))))

(declare-fun call!339549 () Regex!13250)

(declare-fun bm!339545 () Bool)

(assert (=> bm!339545 (= call!339549 (derivativeStep!3879 (ite c!831991 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165))) (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))) (head!10456 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) lt!2006027 lt!2006027 (size!37145 lt!2006027))))))))

(declare-fun b!4894893 () Bool)

(assert (=> b!4894893 (= e!3059959 (Union!13250 call!339551 call!339549))))

(declare-fun b!4894894 () Bool)

(declare-fun c!831989 () Bool)

(assert (=> b!4894894 (= c!831989 (nullable!4556 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))))

(declare-fun e!3059961 () Regex!13250)

(assert (=> b!4894894 (= e!3059957 e!3059961)))

(declare-fun b!4894895 () Bool)

(assert (=> b!4894895 (= e!3059960 EmptyLang!13250)))

(declare-fun bm!339546 () Bool)

(assert (=> bm!339546 (= call!339548 call!339551)))

(declare-fun b!4894896 () Bool)

(assert (=> b!4894896 (= e!3059957 (Concat!21736 call!339548 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun b!4894897 () Bool)

(assert (=> b!4894897 (= e!3059961 (Union!13250 (Concat!21736 call!339550 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))) call!339549))))

(declare-fun b!4894898 () Bool)

(assert (=> b!4894898 (= e!3059961 (Union!13250 (Concat!21736 call!339550 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))) EmptyLang!13250))))

(declare-fun b!4894899 () Bool)

(assert (=> b!4894899 (= c!831991 (is-Union!13250 (regex!8175 (h!62858 rulesArg!165))))))

(assert (=> b!4894899 (= e!3059958 e!3059959)))

(declare-fun b!4894900 () Bool)

(assert (=> b!4894900 (= e!3059960 e!3059958)))

(declare-fun c!831990 () Bool)

(assert (=> b!4894900 (= c!831990 (is-ElementMatch!13250 (regex!8175 (h!62858 rulesArg!165))))))

(assert (= (and d!1572533 c!831992) b!4894895))

(assert (= (and d!1572533 (not c!831992)) b!4894900))

(assert (= (and b!4894900 c!831990) b!4894892))

(assert (= (and b!4894900 (not c!831990)) b!4894899))

(assert (= (and b!4894899 c!831991) b!4894893))

(assert (= (and b!4894899 (not c!831991)) b!4894891))

(assert (= (and b!4894891 c!831993) b!4894896))

(assert (= (and b!4894891 (not c!831993)) b!4894894))

(assert (= (and b!4894894 c!831989) b!4894897))

(assert (= (and b!4894894 (not c!831989)) b!4894898))

(assert (= (or b!4894897 b!4894898) bm!339544))

(assert (= (or b!4894896 bm!339544) bm!339546))

(assert (= (or b!4894893 bm!339546) bm!339543))

(assert (= (or b!4894893 b!4894897) bm!339545))

(assert (=> bm!339543 m!5899338))

(declare-fun m!5900728 () Bool)

(assert (=> bm!339543 m!5900728))

(declare-fun m!5900730 () Bool)

(assert (=> d!1572533 m!5900730))

(assert (=> d!1572533 m!5898834))

(assert (=> bm!339545 m!5899338))

(declare-fun m!5900732 () Bool)

(assert (=> bm!339545 m!5900732))

(declare-fun m!5900734 () Bool)

(assert (=> b!4894894 m!5900734))

(assert (=> b!4894138 d!1572533))

(assert (=> b!4894138 d!1572411))

(assert (=> b!4894138 d!1572277))

(declare-fun d!1572535 () Bool)

(assert (not d!1572535))

(assert (=> b!4894031 d!1572535))

(declare-fun d!1572537 () Bool)

(assert (=> d!1572537 (= (head!10456 lt!2006027) (h!62856 lt!2006027))))

(assert (=> bm!339454 d!1572537))

(declare-fun d!1572539 () Bool)

(declare-fun lt!2006720 () Int)

(assert (=> d!1572539 (>= lt!2006720 0)))

(declare-fun e!3059962 () Int)

(assert (=> d!1572539 (= lt!2006720 e!3059962)))

(declare-fun c!831994 () Bool)

(assert (=> d!1572539 (= c!831994 (is-Nil!56408 (tail!9602 lt!2005844)))))

(assert (=> d!1572539 (= (size!37145 (tail!9602 lt!2005844)) lt!2006720)))

(declare-fun b!4894901 () Bool)

(assert (=> b!4894901 (= e!3059962 0)))

(declare-fun b!4894902 () Bool)

(assert (=> b!4894902 (= e!3059962 (+ 1 (size!37145 (t!365672 (tail!9602 lt!2005844)))))))

(assert (= (and d!1572539 c!831994) b!4894901))

(assert (= (and d!1572539 (not c!831994)) b!4894902))

(declare-fun m!5900736 () Bool)

(assert (=> b!4894902 m!5900736))

(assert (=> b!4894170 d!1572539))

(declare-fun bs!1176189 () Bool)

(declare-fun d!1572541 () Bool)

(assert (= bs!1176189 (and d!1572541 b!4893578)))

(declare-fun lambda!244064 () Int)

(assert (=> bs!1176189 (= (and (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (= lambda!244064 lambda!244035))))

(declare-fun bs!1176190 () Bool)

(assert (= bs!1176190 (and d!1572541 d!1572083)))

(assert (=> bs!1176190 (= (and (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (= lambda!244064 lambda!244046))))

(declare-fun bs!1176191 () Bool)

(assert (= bs!1176191 (and d!1572541 b!4894201)))

(assert (=> bs!1176191 (= lambda!244064 lambda!244047)))

(declare-fun bs!1176192 () Bool)

(assert (= bs!1176192 (and d!1572541 d!1572357)))

(assert (=> bs!1176192 (= (and (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (= lambda!244064 lambda!244062))))

(assert (=> d!1572541 true))

(assert (=> d!1572541 (< (dynLambda!22637 order!25483 (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) (dynLambda!22636 order!25481 lambda!244064))))

(assert (=> d!1572541 true))

(assert (=> d!1572541 (< (dynLambda!22635 order!25479 (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) (dynLambda!22636 order!25481 lambda!244064))))

(assert (=> d!1572541 (= (semiInverseModEq!3587 (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) (Forall!1688 lambda!244064))))

(declare-fun bs!1176193 () Bool)

(assert (= bs!1176193 d!1572541))

(declare-fun m!5900738 () Bool)

(assert (=> bs!1176193 m!5900738))

(assert (=> d!1572099 d!1572541))

(declare-fun d!1572543 () Bool)

(assert (=> d!1572543 (= (list!17727 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))) (list!17729 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))))))

(declare-fun bs!1176194 () Bool)

(assert (= bs!1176194 d!1572543))

(declare-fun m!5900740 () Bool)

(assert (=> bs!1176194 m!5900740))

(assert (=> bs!1176123 d!1572543))

(assert (=> bs!1176123 d!1572417))

(declare-fun d!1572545 () Bool)

(declare-fun lt!2006721 () Int)

(assert (=> d!1572545 (>= lt!2006721 0)))

(declare-fun e!3059963 () Int)

(assert (=> d!1572545 (= lt!2006721 e!3059963)))

(declare-fun c!831995 () Bool)

(assert (=> d!1572545 (= c!831995 (is-Nil!56408 (list!17727 (_1!33535 lt!2006025))))))

(assert (=> d!1572545 (= (size!37145 (list!17727 (_1!33535 lt!2006025))) lt!2006721)))

(declare-fun b!4894903 () Bool)

(assert (=> b!4894903 (= e!3059963 0)))

(declare-fun b!4894904 () Bool)

(assert (=> b!4894904 (= e!3059963 (+ 1 (size!37145 (t!365672 (list!17727 (_1!33535 lt!2006025))))))))

(assert (= (and d!1572545 c!831995) b!4894903))

(assert (= (and d!1572545 (not c!831995)) b!4894904))

(declare-fun m!5900742 () Bool)

(assert (=> b!4894904 m!5900742))

(assert (=> d!1571999 d!1572545))

(assert (=> d!1571999 d!1572015))

(declare-fun d!1572547 () Bool)

(declare-fun lt!2006722 () Int)

(assert (=> d!1572547 (= lt!2006722 (size!37145 (list!17729 (c!831694 (_1!33535 lt!2006025)))))))

(assert (=> d!1572547 (= lt!2006722 (ite (is-Empty!14743 (c!831694 (_1!33535 lt!2006025))) 0 (ite (is-Leaf!24548 (c!831694 (_1!33535 lt!2006025))) (csize!29717 (c!831694 (_1!33535 lt!2006025))) (csize!29716 (c!831694 (_1!33535 lt!2006025))))))))

(assert (=> d!1572547 (= (size!37149 (c!831694 (_1!33535 lt!2006025))) lt!2006722)))

(declare-fun bs!1176195 () Bool)

(assert (= bs!1176195 d!1572547))

(assert (=> bs!1176195 m!5899138))

(assert (=> bs!1176195 m!5899138))

(declare-fun m!5900744 () Bool)

(assert (=> bs!1176195 m!5900744))

(assert (=> d!1571999 d!1572547))

(declare-fun d!1572549 () Bool)

(assert (=> d!1572549 (dynLambda!22645 lambda!244047 (_1!33535 lt!2006388))))

(declare-fun lt!2006723 () Unit!146435)

(assert (=> d!1572549 (= lt!2006723 (choose!35727 lambda!244047 (_1!33535 lt!2006388)))))

(assert (=> d!1572549 (Forall!1688 lambda!244047)))

(assert (=> d!1572549 (= (ForallOf!1134 lambda!244047 (_1!33535 lt!2006388)) lt!2006723)))

(declare-fun b_lambda!194531 () Bool)

(assert (=> (not b_lambda!194531) (not d!1572549)))

(declare-fun bs!1176196 () Bool)

(assert (= bs!1176196 d!1572549))

(declare-fun m!5900746 () Bool)

(assert (=> bs!1176196 m!5900746))

(declare-fun m!5900748 () Bool)

(assert (=> bs!1176196 m!5900748))

(declare-fun m!5900750 () Bool)

(assert (=> bs!1176196 m!5900750))

(assert (=> b!4894201 d!1572549))

(declare-fun d!1572551 () Bool)

(assert (=> d!1572551 (dynLambda!22645 lambda!244047 (seqFromList!5937 (list!17727 (_1!33535 lt!2006388))))))

(declare-fun lt!2006724 () Unit!146435)

(assert (=> d!1572551 (= lt!2006724 (choose!35727 lambda!244047 (seqFromList!5937 (list!17727 (_1!33535 lt!2006388)))))))

(assert (=> d!1572551 (Forall!1688 lambda!244047)))

(assert (=> d!1572551 (= (ForallOf!1134 lambda!244047 (seqFromList!5937 (list!17727 (_1!33535 lt!2006388)))) lt!2006724)))

(declare-fun b_lambda!194533 () Bool)

(assert (=> (not b_lambda!194533) (not d!1572551)))

(declare-fun bs!1176197 () Bool)

(assert (= bs!1176197 d!1572551))

(assert (=> bs!1176197 m!5899446))

(declare-fun m!5900752 () Bool)

(assert (=> bs!1176197 m!5900752))

(assert (=> bs!1176197 m!5899446))

(declare-fun m!5900754 () Bool)

(assert (=> bs!1176197 m!5900754))

(assert (=> bs!1176197 m!5900750))

(assert (=> b!4894201 d!1572551))

(declare-fun bs!1176198 () Bool)

(declare-fun d!1572553 () Bool)

(assert (= bs!1176198 (and d!1572553 d!1571987)))

(declare-fun lambda!244065 () Int)

(assert (=> bs!1176198 (= (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) (= lambda!244065 lambda!244040))))

(declare-fun bs!1176199 () Bool)

(assert (= bs!1176199 (and d!1572553 d!1572013)))

(assert (=> bs!1176199 (= (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) (= lambda!244065 lambda!244043))))

(declare-fun bs!1176200 () Bool)

(assert (= bs!1176200 (and d!1572553 d!1572409)))

(assert (=> bs!1176200 (= lambda!244065 lambda!244063)))

(declare-fun b!4894905 () Bool)

(declare-fun e!3059964 () Bool)

(assert (=> b!4894905 (= e!3059964 true)))

(assert (=> d!1572553 e!3059964))

(assert (= d!1572553 b!4894905))

(assert (=> b!4894905 (< (dynLambda!22635 order!25479 (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) (dynLambda!22643 order!25491 lambda!244065))))

(assert (=> b!4894905 (< (dynLambda!22637 order!25483 (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) (dynLambda!22643 order!25491 lambda!244065))))

(assert (=> d!1572553 (= (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (_1!33535 lt!2006388)) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006388)))))))

(declare-fun lt!2006725 () Unit!146435)

(assert (=> d!1572553 (= lt!2006725 (Forall2of!447 lambda!244065 (_1!33535 lt!2006388) (seqFromList!5937 (list!17727 (_1!33535 lt!2006388)))))))

(assert (=> d!1572553 (= (list!17727 (_1!33535 lt!2006388)) (list!17727 (seqFromList!5937 (list!17727 (_1!33535 lt!2006388)))))))

(assert (=> d!1572553 (= (lemmaEqSameImage!1091 (transformation!8175 (h!62858 (t!365674 rulesArg!165))) (_1!33535 lt!2006388) (seqFromList!5937 (list!17727 (_1!33535 lt!2006388)))) lt!2006725)))

(declare-fun b_lambda!194535 () Bool)

(assert (=> (not b_lambda!194535) (not d!1572553)))

(declare-fun t!365800 () Bool)

(declare-fun tb!259037 () Bool)

(assert (=> (and b!4893356 (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) t!365800) tb!259037))

(declare-fun result!322624 () Bool)

(assert (=> tb!259037 (= result!322624 (inv!21 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (_1!33535 lt!2006388))))))

(declare-fun m!5900756 () Bool)

(assert (=> tb!259037 m!5900756))

(assert (=> d!1572553 t!365800))

(declare-fun b_and!345087 () Bool)

(assert (= b_and!345081 (and (=> t!365800 result!322624) b_and!345087)))

(declare-fun t!365802 () Bool)

(declare-fun tb!259039 () Bool)

(assert (=> (and b!4893636 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) t!365802) tb!259039))

(declare-fun result!322626 () Bool)

(assert (= result!322626 result!322624))

(assert (=> d!1572553 t!365802))

(declare-fun b_and!345089 () Bool)

(assert (= b_and!345083 (and (=> t!365802 result!322626) b_and!345089)))

(declare-fun t!365804 () Bool)

(declare-fun tb!259041 () Bool)

(assert (=> (and b!4894220 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) t!365804) tb!259041))

(declare-fun result!322628 () Bool)

(assert (= result!322628 result!322624))

(assert (=> d!1572553 t!365804))

(declare-fun b_and!345091 () Bool)

(assert (= b_and!345085 (and (=> t!365804 result!322628) b_and!345091)))

(declare-fun b_lambda!194537 () Bool)

(assert (=> (not b_lambda!194537) (not d!1572553)))

(declare-fun t!365806 () Bool)

(declare-fun tb!259043 () Bool)

(assert (=> (and b!4893356 (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) t!365806) tb!259043))

(declare-fun result!322630 () Bool)

(assert (=> tb!259043 (= result!322630 (inv!21 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006388))))))))

(declare-fun m!5900758 () Bool)

(assert (=> tb!259043 m!5900758))

(assert (=> d!1572553 t!365806))

(declare-fun b_and!345093 () Bool)

(assert (= b_and!345087 (and (=> t!365806 result!322630) b_and!345093)))

(declare-fun t!365808 () Bool)

(declare-fun tb!259045 () Bool)

(assert (=> (and b!4893636 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) t!365808) tb!259045))

(declare-fun result!322632 () Bool)

(assert (= result!322632 result!322630))

(assert (=> d!1572553 t!365808))

(declare-fun b_and!345095 () Bool)

(assert (= b_and!345089 (and (=> t!365808 result!322632) b_and!345095)))

(declare-fun t!365810 () Bool)

(declare-fun tb!259047 () Bool)

(assert (=> (and b!4894220 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) t!365810) tb!259047))

(declare-fun result!322634 () Bool)

(assert (= result!322634 result!322630))

(assert (=> d!1572553 t!365810))

(declare-fun b_and!345097 () Bool)

(assert (= b_and!345091 (and (=> t!365810 result!322634) b_and!345097)))

(assert (=> d!1572553 m!5899446))

(declare-fun m!5900760 () Bool)

(assert (=> d!1572553 m!5900760))

(assert (=> d!1572553 m!5899444))

(assert (=> d!1572553 m!5899446))

(declare-fun m!5900762 () Bool)

(assert (=> d!1572553 m!5900762))

(assert (=> d!1572553 m!5899446))

(declare-fun m!5900764 () Bool)

(assert (=> d!1572553 m!5900764))

(declare-fun m!5900766 () Bool)

(assert (=> d!1572553 m!5900766))

(assert (=> b!4894201 d!1572553))

(declare-fun d!1572555 () Bool)

(assert (=> d!1572555 (= (seqFromList!5937 (list!17727 (_1!33535 lt!2006388))) (fromListB!2693 (list!17727 (_1!33535 lt!2006388))))))

(declare-fun bs!1176201 () Bool)

(assert (= bs!1176201 d!1572555))

(assert (=> bs!1176201 m!5899444))

(declare-fun m!5900768 () Bool)

(assert (=> bs!1176201 m!5900768))

(assert (=> b!4894201 d!1572555))

(declare-fun d!1572557 () Bool)

(declare-fun e!3059967 () Bool)

(assert (=> d!1572557 e!3059967))

(declare-fun res!2090622 () Bool)

(assert (=> d!1572557 (=> res!2090622 e!3059967)))

(assert (=> d!1572557 (= res!2090622 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2006390 lt!2006390 (size!37145 lt!2006390)))))))

(declare-fun lt!2006726 () Unit!146435)

(assert (=> d!1572557 (= lt!2006726 (choose!35728 (regex!8175 (h!62858 (t!365674 rulesArg!165))) lt!2006390))))

(assert (=> d!1572557 (validRegex!5883 (regex!8175 (h!62858 (t!365674 rulesArg!165))))))

(assert (=> d!1572557 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1717 (regex!8175 (h!62858 (t!365674 rulesArg!165))) lt!2006390) lt!2006726)))

(declare-fun b!4894906 () Bool)

(assert (=> b!4894906 (= e!3059967 (matchR!6531 (regex!8175 (h!62858 (t!365674 rulesArg!165))) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2006390 lt!2006390 (size!37145 lt!2006390)))))))

(assert (= (and d!1572557 (not res!2090622)) b!4894906))

(assert (=> d!1572557 m!5899450))

(assert (=> d!1572557 m!5899442))

(assert (=> d!1572557 m!5898636))

(assert (=> d!1572557 m!5899442))

(assert (=> d!1572557 m!5899452))

(declare-fun m!5900770 () Bool)

(assert (=> d!1572557 m!5900770))

(assert (=> d!1572557 m!5898636))

(assert (=> d!1572557 m!5900028))

(assert (=> b!4894906 m!5898636))

(assert (=> b!4894906 m!5899442))

(assert (=> b!4894906 m!5898636))

(assert (=> b!4894906 m!5899442))

(assert (=> b!4894906 m!5899452))

(assert (=> b!4894906 m!5899472))

(assert (=> b!4894201 d!1572557))

(declare-fun d!1572559 () Bool)

(assert (=> d!1572559 (= (apply!13541 (transformation!8175 (h!62858 (t!365674 rulesArg!165))) (_1!33535 lt!2006388)) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (_1!33535 lt!2006388)))))

(declare-fun b_lambda!194539 () Bool)

(assert (=> (not b_lambda!194539) (not d!1572559)))

(assert (=> d!1572559 t!365800))

(declare-fun b_and!345099 () Bool)

(assert (= b_and!345093 (and (=> t!365800 result!322624) b_and!345099)))

(assert (=> d!1572559 t!365802))

(declare-fun b_and!345101 () Bool)

(assert (= b_and!345095 (and (=> t!365802 result!322626) b_and!345101)))

(assert (=> d!1572559 t!365804))

(declare-fun b_and!345103 () Bool)

(assert (= b_and!345097 (and (=> t!365804 result!322628) b_and!345103)))

(assert (=> d!1572559 m!5900766))

(assert (=> b!4894201 d!1572559))

(declare-fun d!1572561 () Bool)

(declare-fun e!3059968 () Bool)

(assert (=> d!1572561 e!3059968))

(declare-fun res!2090623 () Bool)

(assert (=> d!1572561 (=> (not res!2090623) (not e!3059968))))

(assert (=> d!1572561 (= res!2090623 (semiInverseModEq!3587 (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))))))

(declare-fun Unit!146460 () Unit!146435)

(assert (=> d!1572561 (= (lemmaInv!1237 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) Unit!146460)))

(declare-fun b!4894907 () Bool)

(assert (=> b!4894907 (= e!3059968 (equivClasses!3466 (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))))))

(assert (= (and d!1572561 res!2090623) b!4894907))

(assert (=> d!1572561 m!5899356))

(assert (=> b!4894907 m!5899358))

(assert (=> b!4894201 d!1572561))

(declare-fun d!1572563 () Bool)

(assert (=> d!1572563 (= (list!17727 (_1!33535 lt!2006388)) (list!17729 (c!831694 (_1!33535 lt!2006388))))))

(declare-fun bs!1176202 () Bool)

(assert (= bs!1176202 d!1572563))

(declare-fun m!5900772 () Bool)

(assert (=> bs!1176202 m!5900772))

(assert (=> b!4894201 d!1572563))

(declare-fun d!1572565 () Bool)

(assert (=> d!1572565 (= (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2006390 lt!2006390 (size!37145 lt!2006390)))) (is-Nil!56408 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2006390 lt!2006390 (size!37145 lt!2006390)))))))

(assert (=> b!4894201 d!1572565))

(declare-fun d!1572567 () Bool)

(declare-fun lt!2006727 () Int)

(assert (=> d!1572567 (= lt!2006727 (size!37145 (list!17727 (_1!33535 lt!2006388))))))

(assert (=> d!1572567 (= lt!2006727 (size!37149 (c!831694 (_1!33535 lt!2006388))))))

(assert (=> d!1572567 (= (size!37147 (_1!33535 lt!2006388)) lt!2006727)))

(declare-fun bs!1176203 () Bool)

(assert (= bs!1176203 d!1572567))

(assert (=> bs!1176203 m!5899444))

(assert (=> bs!1176203 m!5899444))

(declare-fun m!5900774 () Bool)

(assert (=> bs!1176203 m!5900774))

(declare-fun m!5900776 () Bool)

(assert (=> bs!1176203 m!5900776))

(assert (=> b!4894201 d!1572567))

(assert (=> b!4894201 d!1571887))

(assert (=> b!4894201 d!1572289))

(assert (=> b!4894201 d!1572291))

(assert (=> b!4894201 d!1572025))

(declare-fun d!1572569 () Bool)

(assert (=> d!1572569 (= (seqFromList!5937 (_1!33536 lt!2006069)) (fromListB!2693 (_1!33536 lt!2006069)))))

(declare-fun bs!1176204 () Bool)

(assert (= bs!1176204 d!1572569))

(declare-fun m!5900778 () Bool)

(assert (=> bs!1176204 m!5900778))

(assert (=> b!4893738 d!1572569))

(assert (=> b!4893738 d!1572303))

(declare-fun d!1572571 () Bool)

(assert (=> d!1572571 (= (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236))))) (is-Nil!56408 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236))))))))

(assert (=> b!4893738 d!1572571))

(declare-fun d!1572573 () Bool)

(declare-fun lt!2006728 () Int)

(assert (=> d!1572573 (= lt!2006728 (size!37145 (list!17727 (seqFromList!5937 (_1!33536 lt!2006069)))))))

(assert (=> d!1572573 (= lt!2006728 (size!37149 (c!831694 (seqFromList!5937 (_1!33536 lt!2006069)))))))

(assert (=> d!1572573 (= (size!37147 (seqFromList!5937 (_1!33536 lt!2006069))) lt!2006728)))

(declare-fun bs!1176205 () Bool)

(assert (= bs!1176205 d!1572573))

(assert (=> bs!1176205 m!5898786))

(declare-fun m!5900780 () Bool)

(assert (=> bs!1176205 m!5900780))

(assert (=> bs!1176205 m!5900780))

(declare-fun m!5900782 () Bool)

(assert (=> bs!1176205 m!5900782))

(declare-fun m!5900784 () Bool)

(assert (=> bs!1176205 m!5900784))

(assert (=> b!4893738 d!1572573))

(assert (=> b!4893738 d!1572025))

(declare-fun bs!1176206 () Bool)

(declare-fun d!1572575 () Bool)

(assert (= bs!1176206 (and d!1572575 d!1572541)))

(declare-fun lambda!244066 () Int)

(assert (=> bs!1176206 (= (and (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))) (= lambda!244066 lambda!244064))))

(declare-fun bs!1176207 () Bool)

(assert (= bs!1176207 (and d!1572575 d!1572357)))

(assert (=> bs!1176207 (= lambda!244066 lambda!244062)))

(declare-fun bs!1176208 () Bool)

(assert (= bs!1176208 (and d!1572575 b!4893578)))

(assert (=> bs!1176208 (= lambda!244066 lambda!244035)))

(declare-fun bs!1176209 () Bool)

(assert (= bs!1176209 (and d!1572575 d!1572083)))

(assert (=> bs!1176209 (= lambda!244066 lambda!244046)))

(declare-fun bs!1176210 () Bool)

(assert (= bs!1176210 (and d!1572575 b!4894201)))

(assert (=> bs!1176210 (= (and (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))) (= lambda!244066 lambda!244047))))

(declare-fun b!4894908 () Bool)

(declare-fun e!3059969 () Bool)

(assert (=> b!4894908 (= e!3059969 true)))

(assert (=> d!1572575 e!3059969))

(assert (= d!1572575 b!4894908))

(assert (=> b!4894908 (< (dynLambda!22635 order!25479 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) (dynLambda!22636 order!25481 lambda!244066))))

(assert (=> b!4894908 (< (dynLambda!22637 order!25483 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) (dynLambda!22636 order!25481 lambda!244066))))

(assert (=> d!1572575 (= (list!17727 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006069))))) (list!17727 (seqFromList!5937 (_1!33536 lt!2006069))))))

(declare-fun lt!2006729 () Unit!146435)

(assert (=> d!1572575 (= lt!2006729 (ForallOf!1134 lambda!244066 (seqFromList!5937 (_1!33536 lt!2006069))))))

(assert (=> d!1572575 (= (lemmaSemiInverse!2565 (transformation!8175 (h!62858 rulesArg!165)) (seqFromList!5937 (_1!33536 lt!2006069))) lt!2006729)))

(declare-fun b_lambda!194541 () Bool)

(assert (=> (not b_lambda!194541) (not d!1572575)))

(declare-fun t!365812 () Bool)

(declare-fun tb!259049 () Bool)

(assert (=> (and b!4893356 (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365812) tb!259049))

(declare-fun b!4894909 () Bool)

(declare-fun tp!1377412 () Bool)

(declare-fun e!3059970 () Bool)

(assert (=> b!4894909 (= e!3059970 (and (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006069)))))) tp!1377412))))

(declare-fun result!322636 () Bool)

(assert (=> tb!259049 (= result!322636 (and (inv!72690 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006069))))) e!3059970))))

(assert (= tb!259049 b!4894909))

(declare-fun m!5900786 () Bool)

(assert (=> b!4894909 m!5900786))

(declare-fun m!5900788 () Bool)

(assert (=> tb!259049 m!5900788))

(assert (=> d!1572575 t!365812))

(declare-fun b_and!345105 () Bool)

(assert (= b_and!345075 (and (=> t!365812 result!322636) b_and!345105)))

(declare-fun t!365814 () Bool)

(declare-fun tb!259051 () Bool)

(assert (=> (and b!4893636 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365814) tb!259051))

(declare-fun result!322638 () Bool)

(assert (= result!322638 result!322636))

(assert (=> d!1572575 t!365814))

(declare-fun b_and!345107 () Bool)

(assert (= b_and!345077 (and (=> t!365814 result!322638) b_and!345107)))

(declare-fun t!365816 () Bool)

(declare-fun tb!259053 () Bool)

(assert (=> (and b!4894220 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365816) tb!259053))

(declare-fun result!322640 () Bool)

(assert (= result!322640 result!322636))

(assert (=> d!1572575 t!365816))

(declare-fun b_and!345109 () Bool)

(assert (= b_and!345079 (and (=> t!365816 result!322640) b_and!345109)))

(declare-fun b_lambda!194543 () Bool)

(assert (=> (not b_lambda!194543) (not d!1572575)))

(declare-fun t!365818 () Bool)

(declare-fun tb!259055 () Bool)

(assert (=> (and b!4893356 (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365818) tb!259055))

(declare-fun result!322642 () Bool)

(assert (=> tb!259055 (= result!322642 (inv!21 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006069)))))))

(declare-fun m!5900790 () Bool)

(assert (=> tb!259055 m!5900790))

(assert (=> d!1572575 t!365818))

(declare-fun b_and!345111 () Bool)

(assert (= b_and!345099 (and (=> t!365818 result!322642) b_and!345111)))

(declare-fun t!365820 () Bool)

(declare-fun tb!259057 () Bool)

(assert (=> (and b!4893636 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365820) tb!259057))

(declare-fun result!322644 () Bool)

(assert (= result!322644 result!322642))

(assert (=> d!1572575 t!365820))

(declare-fun b_and!345113 () Bool)

(assert (= b_and!345101 (and (=> t!365820 result!322644) b_and!345113)))

(declare-fun t!365822 () Bool)

(declare-fun tb!259059 () Bool)

(assert (=> (and b!4894220 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365822) tb!259059))

(declare-fun result!322646 () Bool)

(assert (= result!322646 result!322642))

(assert (=> d!1572575 t!365822))

(declare-fun b_and!345115 () Bool)

(assert (= b_and!345103 (and (=> t!365822 result!322646) b_and!345115)))

(assert (=> d!1572575 m!5898786))

(declare-fun m!5900792 () Bool)

(assert (=> d!1572575 m!5900792))

(assert (=> d!1572575 m!5900792))

(declare-fun m!5900794 () Bool)

(assert (=> d!1572575 m!5900794))

(assert (=> d!1572575 m!5898786))

(declare-fun m!5900796 () Bool)

(assert (=> d!1572575 m!5900796))

(assert (=> d!1572575 m!5900794))

(declare-fun m!5900798 () Bool)

(assert (=> d!1572575 m!5900798))

(assert (=> d!1572575 m!5898786))

(assert (=> d!1572575 m!5900780))

(assert (=> b!4893738 d!1572575))

(declare-fun d!1572577 () Bool)

(declare-fun e!3059972 () Bool)

(assert (=> d!1572577 e!3059972))

(declare-fun res!2090624 () Bool)

(assert (=> d!1572577 (=> res!2090624 e!3059972)))

(assert (=> d!1572577 (= res!2090624 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236))))))))

(declare-fun lt!2006730 () Unit!146435)

(assert (=> d!1572577 (= lt!2006730 (choose!35728 (regex!8175 (h!62858 rulesArg!165)) (list!17727 input!1236)))))

(assert (=> d!1572577 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165)))))

(assert (=> d!1572577 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1717 (regex!8175 (h!62858 rulesArg!165)) (list!17727 input!1236)) lt!2006730)))

(declare-fun b!4894910 () Bool)

(assert (=> b!4894910 (= e!3059972 (matchR!6531 (regex!8175 (h!62858 rulesArg!165)) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 (size!37145 Nil!56408) (list!17727 input!1236) (list!17727 input!1236) (size!37145 (list!17727 input!1236))))))))

(assert (= (and d!1572577 (not res!2090624)) b!4894910))

(assert (=> d!1572577 m!5898796))

(assert (=> d!1572577 m!5898444))

(assert (=> d!1572577 m!5898790))

(assert (=> d!1572577 m!5898636))

(assert (=> d!1572577 m!5898444))

(assert (=> d!1572577 m!5898444))

(assert (=> d!1572577 m!5898790))

(assert (=> d!1572577 m!5898792))

(assert (=> d!1572577 m!5898444))

(declare-fun m!5900800 () Bool)

(assert (=> d!1572577 m!5900800))

(assert (=> d!1572577 m!5898636))

(assert (=> d!1572577 m!5898834))

(assert (=> b!4894910 m!5898636))

(assert (=> b!4894910 m!5898444))

(assert (=> b!4894910 m!5898790))

(assert (=> b!4894910 m!5898636))

(assert (=> b!4894910 m!5898444))

(assert (=> b!4894910 m!5898444))

(assert (=> b!4894910 m!5898790))

(assert (=> b!4894910 m!5898792))

(assert (=> b!4894910 m!5898822))

(assert (=> b!4893738 d!1572577))

(declare-fun d!1572579 () Bool)

(assert (=> d!1572579 (= (apply!13541 (transformation!8175 (h!62858 rulesArg!165)) (seqFromList!5937 (_1!33536 lt!2006069))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006069))))))

(declare-fun b_lambda!194545 () Bool)

(assert (=> (not b_lambda!194545) (not d!1572579)))

(assert (=> d!1572579 t!365818))

(declare-fun b_and!345117 () Bool)

(assert (= b_and!345111 (and (=> t!365818 result!322642) b_and!345117)))

(assert (=> d!1572579 t!365820))

(declare-fun b_and!345119 () Bool)

(assert (= b_and!345113 (and (=> t!365820 result!322644) b_and!345119)))

(assert (=> d!1572579 t!365822))

(declare-fun b_and!345121 () Bool)

(assert (= b_and!345115 (and (=> t!365822 result!322646) b_and!345121)))

(assert (=> d!1572579 m!5898786))

(assert (=> d!1572579 m!5900792))

(assert (=> b!4893738 d!1572579))

(assert (=> b!4893738 d!1572459))

(declare-fun d!1572581 () Bool)

(assert (=> d!1572581 (= (inv!72697 (xs!18059 (right!41311 (c!831694 input!1236)))) (<= (size!37145 (innerList!14831 (xs!18059 (right!41311 (c!831694 input!1236))))) 2147483647))))

(declare-fun bs!1176211 () Bool)

(assert (= bs!1176211 d!1572581))

(declare-fun m!5900802 () Bool)

(assert (=> bs!1176211 m!5900802))

(assert (=> b!4894238 d!1572581))

(declare-fun d!1572583 () Bool)

(assert (=> d!1572583 (= (nullable!4556 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (nullableFct!1239 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))))

(declare-fun bs!1176212 () Bool)

(assert (= bs!1176212 d!1572583))

(declare-fun m!5900804 () Bool)

(assert (=> bs!1176212 m!5900804))

(assert (=> b!4893824 d!1572583))

(declare-fun d!1572585 () Bool)

(declare-fun lt!2006731 () Int)

(assert (=> d!1572585 (>= lt!2006731 0)))

(declare-fun e!3059973 () Int)

(assert (=> d!1572585 (= lt!2006731 e!3059973)))

(declare-fun c!831996 () Bool)

(assert (=> d!1572585 (= c!831996 (is-Nil!56408 (_2!33532 (get!19481 lt!2006351))))))

(assert (=> d!1572585 (= (size!37145 (_2!33532 (get!19481 lt!2006351))) lt!2006731)))

(declare-fun b!4894911 () Bool)

(assert (=> b!4894911 (= e!3059973 0)))

(declare-fun b!4894912 () Bool)

(assert (=> b!4894912 (= e!3059973 (+ 1 (size!37145 (t!365672 (_2!33532 (get!19481 lt!2006351))))))))

(assert (= (and d!1572585 c!831996) b!4894911))

(assert (= (and d!1572585 (not c!831996)) b!4894912))

(declare-fun m!5900806 () Bool)

(assert (=> b!4894912 m!5900806))

(assert (=> b!4894113 d!1572585))

(assert (=> b!4894113 d!1572311))

(assert (=> b!4894113 d!1571985))

(declare-fun b!4894913 () Bool)

(declare-fun e!3059975 () Bool)

(assert (=> b!4894913 (= e!3059975 (inv!16 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))))

(declare-fun b!4894914 () Bool)

(declare-fun e!3059974 () Bool)

(assert (=> b!4894914 (= e!3059974 (inv!15 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))))

(declare-fun d!1572587 () Bool)

(declare-fun c!831998 () Bool)

(assert (=> d!1572587 (= c!831998 (is-IntegerValue!25455 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))))

(assert (=> d!1572587 (= (inv!21 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))) e!3059975)))

(declare-fun b!4894915 () Bool)

(declare-fun e!3059976 () Bool)

(assert (=> b!4894915 (= e!3059975 e!3059976)))

(declare-fun c!831997 () Bool)

(assert (=> b!4894915 (= c!831997 (is-IntegerValue!25456 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))))

(declare-fun b!4894916 () Bool)

(assert (=> b!4894916 (= e!3059976 (inv!17 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))))

(declare-fun b!4894917 () Bool)

(declare-fun res!2090625 () Bool)

(assert (=> b!4894917 (=> res!2090625 e!3059974)))

(assert (=> b!4894917 (= res!2090625 (not (is-IntegerValue!25457 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))))))

(assert (=> b!4894917 (= e!3059976 e!3059974)))

(assert (= (and d!1572587 c!831998) b!4894913))

(assert (= (and d!1572587 (not c!831998)) b!4894915))

(assert (= (and b!4894915 c!831997) b!4894916))

(assert (= (and b!4894915 (not c!831997)) b!4894917))

(assert (= (and b!4894917 (not res!2090625)) b!4894914))

(declare-fun m!5900808 () Bool)

(assert (=> b!4894913 m!5900808))

(declare-fun m!5900810 () Bool)

(assert (=> b!4894914 m!5900810))

(declare-fun m!5900812 () Bool)

(assert (=> b!4894916 m!5900812))

(assert (=> tb!258931 d!1572587))

(declare-fun d!1572589 () Bool)

(declare-fun lt!2006732 () Bool)

(assert (=> d!1572589 (= lt!2006732 (isEmpty!30272 (list!17729 (right!41311 (c!831694 input!1236)))))))

(assert (=> d!1572589 (= lt!2006732 (= (size!37149 (right!41311 (c!831694 input!1236))) 0))))

(assert (=> d!1572589 (= (isEmpty!30275 (right!41311 (c!831694 input!1236))) lt!2006732)))

(declare-fun bs!1176213 () Bool)

(assert (= bs!1176213 d!1572589))

(assert (=> bs!1176213 m!5899374))

(assert (=> bs!1176213 m!5899374))

(declare-fun m!5900814 () Bool)

(assert (=> bs!1176213 m!5900814))

(assert (=> bs!1176213 m!5898978))

(assert (=> b!4894163 d!1572589))

(declare-fun d!1572591 () Bool)

(assert (=> d!1572591 (= (get!19482 lt!2006391) (v!49980 lt!2006391))))

(assert (=> b!4894197 d!1572591))

(declare-fun d!1572593 () Bool)

(assert (=> d!1572593 (= (get!19481 (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 rulesArg!165)) (list!17727 input!1236))) (v!49981 (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 rulesArg!165)) (list!17727 input!1236))))))

(assert (=> b!4894197 d!1572593))

(assert (=> b!4894197 d!1572385))

(assert (=> b!4894197 d!1571887))

(declare-fun d!1572595 () Bool)

(assert (=> d!1572595 (= (isEmpty!30267 (maxPrefixOneRule!3530 thiss!14805 (h!62858 rulesArg!165) (list!17727 input!1236))) (not (is-Some!14027 (maxPrefixOneRule!3530 thiss!14805 (h!62858 rulesArg!165) (list!17727 input!1236)))))))

(assert (=> d!1571923 d!1572595))

(declare-fun d!1572597 () Bool)

(assert (=> d!1572597 (= (isDefined!11040 lt!2006091) (not (isEmpty!30267 lt!2006091)))))

(declare-fun bs!1176214 () Bool)

(assert (= bs!1176214 d!1572597))

(assert (=> bs!1176214 m!5898904))

(assert (=> b!4893783 d!1572597))

(assert (=> d!1571941 d!1571883))

(assert (=> b!4893742 d!1572301))

(declare-fun d!1572599 () Bool)

(assert (=> d!1572599 (= (apply!13541 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006068)))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006068))))) (dynLambda!22646 (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006068))))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006068))))))))

(declare-fun b_lambda!194547 () Bool)

(assert (=> (not b_lambda!194547) (not d!1572599)))

(declare-fun tb!259061 () Bool)

(declare-fun t!365824 () Bool)

(assert (=> (and b!4893356 (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006068)))))) t!365824) tb!259061))

(declare-fun result!322648 () Bool)

(assert (=> tb!259061 (= result!322648 (inv!21 (dynLambda!22646 (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006068))))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006068)))))))))

(declare-fun m!5900816 () Bool)

(assert (=> tb!259061 m!5900816))

(assert (=> d!1572599 t!365824))

(declare-fun b_and!345123 () Bool)

(assert (= b_and!345117 (and (=> t!365824 result!322648) b_and!345123)))

(declare-fun t!365826 () Bool)

(declare-fun tb!259063 () Bool)

(assert (=> (and b!4893636 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006068)))))) t!365826) tb!259063))

(declare-fun result!322650 () Bool)

(assert (= result!322650 result!322648))

(assert (=> d!1572599 t!365826))

(declare-fun b_and!345125 () Bool)

(assert (= b_and!345119 (and (=> t!365826 result!322650) b_and!345125)))

(declare-fun t!365828 () Bool)

(declare-fun tb!259065 () Bool)

(assert (=> (and b!4894220 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006068)))))) t!365828) tb!259065))

(declare-fun result!322652 () Bool)

(assert (= result!322652 result!322648))

(assert (=> d!1572599 t!365828))

(declare-fun b_and!345127 () Bool)

(assert (= b_and!345121 (and (=> t!365828 result!322652) b_and!345127)))

(assert (=> d!1572599 m!5898804))

(declare-fun m!5900818 () Bool)

(assert (=> d!1572599 m!5900818))

(assert (=> b!4893742 d!1572599))

(declare-fun d!1572601 () Bool)

(assert (=> d!1572601 (= (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006068)))) (fromListB!2693 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006068)))))))

(declare-fun bs!1176215 () Bool)

(assert (= bs!1176215 d!1572601))

(declare-fun m!5900820 () Bool)

(assert (=> bs!1176215 m!5900820))

(assert (=> b!4893742 d!1572601))

(declare-fun d!1572603 () Bool)

(declare-fun c!832001 () Bool)

(assert (=> d!1572603 (= c!832001 (is-Nil!56410 rulesArg!165))))

(declare-fun e!3059980 () (Set Rule!16150))

(assert (=> d!1572603 (= (content!10021 rulesArg!165) e!3059980)))

(declare-fun b!4894922 () Bool)

(assert (=> b!4894922 (= e!3059980 (as set.empty (Set Rule!16150)))))

(declare-fun b!4894923 () Bool)

(assert (=> b!4894923 (= e!3059980 (set.union (set.insert (h!62858 rulesArg!165) (as set.empty (Set Rule!16150))) (content!10021 (t!365674 rulesArg!165))))))

(assert (= (and d!1572603 c!832001) b!4894922))

(assert (= (and d!1572603 (not c!832001)) b!4894923))

(declare-fun m!5900822 () Bool)

(assert (=> b!4894923 m!5900822))

(assert (=> b!4894923 m!5900002))

(assert (=> d!1572081 d!1572603))

(declare-fun d!1572605 () Bool)

(assert (=> d!1572605 (= (isEmpty!30267 lt!2006086) (not (is-Some!14027 lt!2006086)))))

(assert (=> d!1571949 d!1572605))

(assert (=> d!1571949 d!1571883))

(assert (=> d!1571949 d!1571885))

(assert (=> d!1571949 d!1571967))

(assert (=> d!1571931 d!1572453))

(declare-fun b!4894924 () Bool)

(declare-fun res!2090627 () Bool)

(declare-fun e!3059981 () Bool)

(assert (=> b!4894924 (=> (not res!2090627) (not e!3059981))))

(declare-fun lt!2006733 () Option!14028)

(assert (=> b!4894924 (= res!2090627 (< (size!37145 (_2!33532 (get!19481 lt!2006733))) (size!37145 lt!2005844)))))

(declare-fun b!4894925 () Bool)

(declare-fun res!2090629 () Bool)

(assert (=> b!4894925 (=> (not res!2090629) (not e!3059981))))

(assert (=> b!4894925 (= res!2090629 (= (++!12244 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006733)))) (_2!33532 (get!19481 lt!2006733))) lt!2005844))))

(declare-fun b!4894926 () Bool)

(declare-fun e!3059982 () Option!14028)

(declare-fun lt!2006734 () tuple2!60466)

(assert (=> b!4894926 (= e!3059982 (Some!14027 (tuple2!60459 (Token!14915 (apply!13541 (transformation!8175 (h!62858 (t!365674 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006734))) (h!62858 (t!365674 rulesArg!165)) (size!37147 (seqFromList!5937 (_1!33536 lt!2006734))) (_1!33536 lt!2006734)) (_2!33536 lt!2006734))))))

(declare-fun lt!2006735 () Unit!146435)

(assert (=> b!4894926 (= lt!2006735 (longestMatchIsAcceptedByMatchOrIsEmpty!1717 (regex!8175 (h!62858 (t!365674 rulesArg!165))) lt!2005844))))

(declare-fun res!2090628 () Bool)

(assert (=> b!4894926 (= res!2090628 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))))))

(declare-fun e!3059984 () Bool)

(assert (=> b!4894926 (=> res!2090628 e!3059984)))

(assert (=> b!4894926 e!3059984))

(declare-fun lt!2006736 () Unit!146435)

(assert (=> b!4894926 (= lt!2006736 lt!2006735)))

(declare-fun lt!2006737 () Unit!146435)

(assert (=> b!4894926 (= lt!2006737 (lemmaSemiInverse!2565 (transformation!8175 (h!62858 (t!365674 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006734))))))

(declare-fun b!4894927 () Bool)

(assert (=> b!4894927 (= e!3059981 (= (size!37143 (_1!33532 (get!19481 lt!2006733))) (size!37145 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006733))))))))

(declare-fun b!4894928 () Bool)

(declare-fun e!3059983 () Bool)

(assert (=> b!4894928 (= e!3059983 e!3059981)))

(declare-fun res!2090630 () Bool)

(assert (=> b!4894928 (=> (not res!2090630) (not e!3059981))))

(assert (=> b!4894928 (= res!2090630 (matchR!6531 (regex!8175 (h!62858 (t!365674 rulesArg!165))) (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006733))))))))

(declare-fun d!1572607 () Bool)

(assert (=> d!1572607 e!3059983))

(declare-fun res!2090631 () Bool)

(assert (=> d!1572607 (=> res!2090631 e!3059983)))

(assert (=> d!1572607 (= res!2090631 (isEmpty!30267 lt!2006733))))

(assert (=> d!1572607 (= lt!2006733 e!3059982)))

(declare-fun c!832002 () Bool)

(assert (=> d!1572607 (= c!832002 (isEmpty!30272 (_1!33536 lt!2006734)))))

(assert (=> d!1572607 (= lt!2006734 (findLongestMatch!1648 (regex!8175 (h!62858 (t!365674 rulesArg!165))) lt!2005844))))

(assert (=> d!1572607 (ruleValid!3673 thiss!14805 (h!62858 (t!365674 rulesArg!165)))))

(assert (=> d!1572607 (= (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 rulesArg!165)) lt!2005844) lt!2006733)))

(declare-fun b!4894929 () Bool)

(assert (=> b!4894929 (= e!3059984 (matchR!6531 (regex!8175 (h!62858 (t!365674 rulesArg!165))) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))))))

(declare-fun b!4894930 () Bool)

(declare-fun res!2090626 () Bool)

(assert (=> b!4894930 (=> (not res!2090626) (not e!3059981))))

(assert (=> b!4894930 (= res!2090626 (= (value!262139 (_1!33532 (get!19481 lt!2006733))) (apply!13541 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006733)))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006733)))))))))

(declare-fun b!4894931 () Bool)

(assert (=> b!4894931 (= e!3059982 None!14027)))

(declare-fun b!4894932 () Bool)

(declare-fun res!2090632 () Bool)

(assert (=> b!4894932 (=> (not res!2090632) (not e!3059981))))

(assert (=> b!4894932 (= res!2090632 (= (rule!11365 (_1!33532 (get!19481 lt!2006733))) (h!62858 (t!365674 rulesArg!165))))))

(assert (= (and d!1572607 c!832002) b!4894931))

(assert (= (and d!1572607 (not c!832002)) b!4894926))

(assert (= (and b!4894926 (not res!2090628)) b!4894929))

(assert (= (and d!1572607 (not res!2090631)) b!4894928))

(assert (= (and b!4894928 res!2090630) b!4894925))

(assert (= (and b!4894925 res!2090629) b!4894924))

(assert (= (and b!4894924 res!2090627) b!4894932))

(assert (= (and b!4894932 res!2090632) b!4894930))

(assert (= (and b!4894930 res!2090626) b!4894927))

(declare-fun m!5900824 () Bool)

(assert (=> b!4894926 m!5900824))

(declare-fun m!5900826 () Bool)

(assert (=> b!4894926 m!5900826))

(assert (=> b!4894926 m!5898636))

(assert (=> b!4894926 m!5898538))

(declare-fun m!5900828 () Bool)

(assert (=> b!4894926 m!5900828))

(assert (=> b!4894926 m!5900824))

(declare-fun m!5900830 () Bool)

(assert (=> b!4894926 m!5900830))

(declare-fun m!5900832 () Bool)

(assert (=> b!4894926 m!5900832))

(assert (=> b!4894926 m!5900824))

(declare-fun m!5900834 () Bool)

(assert (=> b!4894926 m!5900834))

(assert (=> b!4894926 m!5900824))

(declare-fun m!5900836 () Bool)

(assert (=> b!4894926 m!5900836))

(assert (=> b!4894926 m!5898538))

(assert (=> b!4894926 m!5898636))

(declare-fun m!5900838 () Bool)

(assert (=> b!4894930 m!5900838))

(declare-fun m!5900840 () Bool)

(assert (=> b!4894930 m!5900840))

(assert (=> b!4894930 m!5900840))

(declare-fun m!5900842 () Bool)

(assert (=> b!4894930 m!5900842))

(assert (=> b!4894928 m!5900838))

(declare-fun m!5900844 () Bool)

(assert (=> b!4894928 m!5900844))

(assert (=> b!4894928 m!5900844))

(declare-fun m!5900846 () Bool)

(assert (=> b!4894928 m!5900846))

(assert (=> b!4894928 m!5900846))

(declare-fun m!5900848 () Bool)

(assert (=> b!4894928 m!5900848))

(declare-fun m!5900850 () Bool)

(assert (=> d!1572607 m!5900850))

(declare-fun m!5900852 () Bool)

(assert (=> d!1572607 m!5900852))

(declare-fun m!5900854 () Bool)

(assert (=> d!1572607 m!5900854))

(assert (=> d!1572607 m!5898950))

(assert (=> b!4894925 m!5900838))

(assert (=> b!4894925 m!5900844))

(assert (=> b!4894925 m!5900844))

(assert (=> b!4894925 m!5900846))

(assert (=> b!4894925 m!5900846))

(declare-fun m!5900856 () Bool)

(assert (=> b!4894925 m!5900856))

(assert (=> b!4894929 m!5898636))

(assert (=> b!4894929 m!5898538))

(assert (=> b!4894929 m!5898636))

(assert (=> b!4894929 m!5898538))

(assert (=> b!4894929 m!5900828))

(declare-fun m!5900858 () Bool)

(assert (=> b!4894929 m!5900858))

(assert (=> b!4894932 m!5900838))

(assert (=> b!4894927 m!5900838))

(declare-fun m!5900860 () Bool)

(assert (=> b!4894927 m!5900860))

(assert (=> b!4894924 m!5900838))

(declare-fun m!5900862 () Bool)

(assert (=> b!4894924 m!5900862))

(assert (=> b!4894924 m!5898538))

(assert (=> bm!339412 d!1572607))

(declare-fun b!4894933 () Bool)

(declare-fun res!2090637 () Bool)

(declare-fun e!3059991 () Bool)

(assert (=> b!4894933 (=> (not res!2090637) (not e!3059991))))

(assert (=> b!4894933 (= res!2090637 (isEmpty!30272 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351)))))))))

(declare-fun b!4894934 () Bool)

(declare-fun res!2090633 () Bool)

(assert (=> b!4894934 (=> (not res!2090633) (not e!3059991))))

(declare-fun call!339552 () Bool)

(assert (=> b!4894934 (= res!2090633 (not call!339552))))

(declare-fun b!4894935 () Bool)

(declare-fun e!3059988 () Bool)

(declare-fun lt!2006738 () Bool)

(assert (=> b!4894935 (= e!3059988 (= lt!2006738 call!339552))))

(declare-fun b!4894936 () Bool)

(declare-fun e!3059990 () Bool)

(declare-fun e!3059986 () Bool)

(assert (=> b!4894936 (= e!3059990 e!3059986)))

(declare-fun res!2090636 () Bool)

(assert (=> b!4894936 (=> res!2090636 e!3059986)))

(assert (=> b!4894936 (= res!2090636 call!339552)))

(declare-fun b!4894937 () Bool)

(declare-fun e!3059985 () Bool)

(assert (=> b!4894937 (= e!3059985 (nullable!4556 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun b!4894938 () Bool)

(declare-fun e!3059987 () Bool)

(assert (=> b!4894938 (= e!3059987 e!3059990)))

(declare-fun res!2090635 () Bool)

(assert (=> b!4894938 (=> (not res!2090635) (not e!3059990))))

(assert (=> b!4894938 (= res!2090635 (not lt!2006738))))

(declare-fun b!4894939 () Bool)

(declare-fun e!3059989 () Bool)

(assert (=> b!4894939 (= e!3059989 (not lt!2006738))))

(declare-fun bm!339547 () Bool)

(assert (=> bm!339547 (= call!339552 (isEmpty!30272 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351))))))))

(declare-fun d!1572609 () Bool)

(assert (=> d!1572609 e!3059988))

(declare-fun c!832004 () Bool)

(assert (=> d!1572609 (= c!832004 (is-EmptyExpr!13250 (regex!8175 (h!62858 rulesArg!165))))))

(assert (=> d!1572609 (= lt!2006738 e!3059985)))

(declare-fun c!832003 () Bool)

(assert (=> d!1572609 (= c!832003 (isEmpty!30272 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351))))))))

(assert (=> d!1572609 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165)))))

(assert (=> d!1572609 (= (matchR!6531 (regex!8175 (h!62858 rulesArg!165)) (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351))))) lt!2006738)))

(declare-fun b!4894940 () Bool)

(assert (=> b!4894940 (= e!3059988 e!3059989)))

(declare-fun c!832005 () Bool)

(assert (=> b!4894940 (= c!832005 (is-EmptyLang!13250 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun b!4894941 () Bool)

(declare-fun res!2090639 () Bool)

(assert (=> b!4894941 (=> res!2090639 e!3059986)))

(assert (=> b!4894941 (= res!2090639 (not (isEmpty!30272 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351))))))))))

(declare-fun b!4894942 () Bool)

(assert (=> b!4894942 (= e!3059986 (not (= (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351))))) (c!831695 (regex!8175 (h!62858 rulesArg!165))))))))

(declare-fun b!4894943 () Bool)

(assert (=> b!4894943 (= e!3059985 (matchR!6531 (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351)))))) (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351)))))))))

(declare-fun b!4894944 () Bool)

(assert (=> b!4894944 (= e!3059991 (= (head!10456 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351))))) (c!831695 (regex!8175 (h!62858 rulesArg!165)))))))

(declare-fun b!4894945 () Bool)

(declare-fun res!2090634 () Bool)

(assert (=> b!4894945 (=> res!2090634 e!3059987)))

(assert (=> b!4894945 (= res!2090634 e!3059991)))

(declare-fun res!2090640 () Bool)

(assert (=> b!4894945 (=> (not res!2090640) (not e!3059991))))

(assert (=> b!4894945 (= res!2090640 lt!2006738)))

(declare-fun b!4894946 () Bool)

(declare-fun res!2090638 () Bool)

(assert (=> b!4894946 (=> res!2090638 e!3059987)))

(assert (=> b!4894946 (= res!2090638 (not (is-ElementMatch!13250 (regex!8175 (h!62858 rulesArg!165)))))))

(assert (=> b!4894946 (= e!3059989 e!3059987)))

(assert (= (and d!1572609 c!832003) b!4894937))

(assert (= (and d!1572609 (not c!832003)) b!4894943))

(assert (= (and d!1572609 c!832004) b!4894935))

(assert (= (and d!1572609 (not c!832004)) b!4894940))

(assert (= (and b!4894940 c!832005) b!4894939))

(assert (= (and b!4894940 (not c!832005)) b!4894946))

(assert (= (and b!4894946 (not res!2090638)) b!4894945))

(assert (= (and b!4894945 res!2090640) b!4894934))

(assert (= (and b!4894934 res!2090633) b!4894933))

(assert (= (and b!4894933 res!2090637) b!4894944))

(assert (= (and b!4894945 (not res!2090634)) b!4894938))

(assert (= (and b!4894938 res!2090635) b!4894936))

(assert (= (and b!4894936 (not res!2090636)) b!4894941))

(assert (= (and b!4894941 (not res!2090639)) b!4894942))

(assert (= (or b!4894935 b!4894934 b!4894936) bm!339547))

(assert (=> b!4894943 m!5899314))

(declare-fun m!5900864 () Bool)

(assert (=> b!4894943 m!5900864))

(assert (=> b!4894943 m!5900864))

(declare-fun m!5900866 () Bool)

(assert (=> b!4894943 m!5900866))

(assert (=> b!4894943 m!5899314))

(declare-fun m!5900868 () Bool)

(assert (=> b!4894943 m!5900868))

(assert (=> b!4894943 m!5900866))

(assert (=> b!4894943 m!5900868))

(declare-fun m!5900870 () Bool)

(assert (=> b!4894943 m!5900870))

(assert (=> b!4894941 m!5899314))

(assert (=> b!4894941 m!5900868))

(assert (=> b!4894941 m!5900868))

(declare-fun m!5900872 () Bool)

(assert (=> b!4894941 m!5900872))

(assert (=> bm!339547 m!5899314))

(declare-fun m!5900874 () Bool)

(assert (=> bm!339547 m!5900874))

(assert (=> b!4894933 m!5899314))

(assert (=> b!4894933 m!5900868))

(assert (=> b!4894933 m!5900868))

(assert (=> b!4894933 m!5900872))

(assert (=> d!1572609 m!5899314))

(assert (=> d!1572609 m!5900874))

(assert (=> d!1572609 m!5898834))

(assert (=> b!4894942 m!5899314))

(assert (=> b!4894942 m!5900864))

(assert (=> b!4894937 m!5898840))

(assert (=> b!4894944 m!5899314))

(assert (=> b!4894944 m!5900864))

(assert (=> b!4894117 d!1572609))

(declare-fun d!1572611 () Bool)

(assert (=> d!1572611 (= (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351)))) (list!17729 (c!831694 (charsOf!5375 (_1!33532 (get!19481 lt!2006351))))))))

(declare-fun bs!1176216 () Bool)

(assert (= bs!1176216 d!1572611))

(declare-fun m!5900876 () Bool)

(assert (=> bs!1176216 m!5900876))

(assert (=> b!4894117 d!1572611))

(declare-fun d!1572613 () Bool)

(declare-fun lt!2006739 () BalanceConc!28916)

(assert (=> d!1572613 (= (list!17727 lt!2006739) (originalCharacters!8488 (_1!33532 (get!19481 lt!2006351))))))

(assert (=> d!1572613 (= lt!2006739 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006351))))) (value!262139 (_1!33532 (get!19481 lt!2006351)))))))

(assert (=> d!1572613 (= (charsOf!5375 (_1!33532 (get!19481 lt!2006351))) lt!2006739)))

(declare-fun b_lambda!194549 () Bool)

(assert (=> (not b_lambda!194549) (not d!1572613)))

(declare-fun tb!259067 () Bool)

(declare-fun t!365830 () Bool)

(assert (=> (and b!4893356 (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006351)))))) t!365830) tb!259067))

(declare-fun b!4894947 () Bool)

(declare-fun e!3059992 () Bool)

(declare-fun tp!1377413 () Bool)

(assert (=> b!4894947 (= e!3059992 (and (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006351))))) (value!262139 (_1!33532 (get!19481 lt!2006351)))))) tp!1377413))))

(declare-fun result!322654 () Bool)

(assert (=> tb!259067 (= result!322654 (and (inv!72690 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006351))))) (value!262139 (_1!33532 (get!19481 lt!2006351))))) e!3059992))))

(assert (= tb!259067 b!4894947))

(declare-fun m!5900878 () Bool)

(assert (=> b!4894947 m!5900878))

(declare-fun m!5900880 () Bool)

(assert (=> tb!259067 m!5900880))

(assert (=> d!1572613 t!365830))

(declare-fun b_and!345129 () Bool)

(assert (= b_and!345105 (and (=> t!365830 result!322654) b_and!345129)))

(declare-fun tb!259069 () Bool)

(declare-fun t!365832 () Bool)

(assert (=> (and b!4893636 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006351)))))) t!365832) tb!259069))

(declare-fun result!322656 () Bool)

(assert (= result!322656 result!322654))

(assert (=> d!1572613 t!365832))

(declare-fun b_and!345131 () Bool)

(assert (= b_and!345107 (and (=> t!365832 result!322656) b_and!345131)))

(declare-fun t!365834 () Bool)

(declare-fun tb!259071 () Bool)

(assert (=> (and b!4894220 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006351)))))) t!365834) tb!259071))

(declare-fun result!322658 () Bool)

(assert (= result!322658 result!322654))

(assert (=> d!1572613 t!365834))

(declare-fun b_and!345133 () Bool)

(assert (= b_and!345109 (and (=> t!365834 result!322658) b_and!345133)))

(declare-fun m!5900882 () Bool)

(assert (=> d!1572613 m!5900882))

(declare-fun m!5900884 () Bool)

(assert (=> d!1572613 m!5900884))

(assert (=> b!4894117 d!1572613))

(assert (=> b!4894117 d!1572311))

(assert (=> d!1571971 d!1571957))

(assert (=> d!1571971 d!1572373))

(assert (=> d!1571971 d!1572375))

(assert (=> d!1571971 d!1571967))

(declare-fun d!1572615 () Bool)

(assert (=> d!1572615 (= (isEmpty!30267 lt!2006068) (not (is-Some!14027 lt!2006068)))))

(assert (=> d!1571925 d!1572615))

(declare-fun d!1572617 () Bool)

(assert (=> d!1572617 (= (isEmpty!30272 (_1!33536 lt!2006069)) (is-Nil!56408 (_1!33536 lt!2006069)))))

(assert (=> d!1571925 d!1572617))

(declare-fun d!1572619 () Bool)

(declare-fun lt!2006741 () tuple2!60466)

(assert (=> d!1572619 (= (++!12244 (_1!33536 lt!2006741) (_2!33536 lt!2006741)) (list!17727 input!1236))))

(assert (=> d!1572619 (= lt!2006741 (findLongestMatchInner!1754 (regex!8175 (h!62858 rulesArg!165)) Nil!56408 0 (list!17727 input!1236) (list!17727 input!1236) (sizeTr!341 (list!17727 input!1236) 0)))))

(declare-fun lt!2006747 () Unit!146435)

(declare-fun lt!2006746 () Unit!146435)

(assert (=> d!1572619 (= lt!2006747 lt!2006746)))

(declare-fun lt!2006743 () List!56532)

(declare-fun lt!2006742 () Int)

(assert (=> d!1572619 (= (sizeTr!341 lt!2006743 lt!2006742) (+ (size!37145 lt!2006743) lt!2006742))))

(assert (=> d!1572619 (= lt!2006746 (lemmaSizeTrEqualsSize!340 lt!2006743 lt!2006742))))

(assert (=> d!1572619 (= lt!2006742 0)))

(assert (=> d!1572619 (= lt!2006743 Nil!56408)))

(declare-fun lt!2006740 () Unit!146435)

(declare-fun lt!2006744 () Unit!146435)

(assert (=> d!1572619 (= lt!2006740 lt!2006744)))

(declare-fun lt!2006745 () Int)

(assert (=> d!1572619 (= (sizeTr!341 (list!17727 input!1236) lt!2006745) (+ (size!37145 (list!17727 input!1236)) lt!2006745))))

(assert (=> d!1572619 (= lt!2006744 (lemmaSizeTrEqualsSize!340 (list!17727 input!1236) lt!2006745))))

(assert (=> d!1572619 (= lt!2006745 0)))

(assert (=> d!1572619 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165)))))

(assert (=> d!1572619 (= (findLongestMatch!1648 (regex!8175 (h!62858 rulesArg!165)) (list!17727 input!1236)) lt!2006741)))

(declare-fun bs!1176217 () Bool)

(assert (= bs!1176217 d!1572619))

(assert (=> bs!1176217 m!5898444))

(declare-fun m!5900886 () Bool)

(assert (=> bs!1176217 m!5900886))

(declare-fun m!5900888 () Bool)

(assert (=> bs!1176217 m!5900888))

(assert (=> bs!1176217 m!5898444))

(declare-fun m!5900890 () Bool)

(assert (=> bs!1176217 m!5900890))

(declare-fun m!5900892 () Bool)

(assert (=> bs!1176217 m!5900892))

(assert (=> bs!1176217 m!5898834))

(assert (=> bs!1176217 m!5898444))

(declare-fun m!5900894 () Bool)

(assert (=> bs!1176217 m!5900894))

(declare-fun m!5900896 () Bool)

(assert (=> bs!1176217 m!5900896))

(assert (=> bs!1176217 m!5898444))

(assert (=> bs!1176217 m!5898444))

(assert (=> bs!1176217 m!5900886))

(declare-fun m!5900898 () Bool)

(assert (=> bs!1176217 m!5900898))

(assert (=> bs!1176217 m!5898444))

(assert (=> bs!1176217 m!5898790))

(declare-fun m!5900900 () Bool)

(assert (=> bs!1176217 m!5900900))

(assert (=> d!1571925 d!1572619))

(assert (=> d!1571925 d!1571931))

(declare-fun d!1572621 () Bool)

(declare-fun lt!2006748 () Int)

(assert (=> d!1572621 (>= lt!2006748 0)))

(declare-fun e!3059993 () Int)

(assert (=> d!1572621 (= lt!2006748 e!3059993)))

(declare-fun c!832006 () Bool)

(assert (=> d!1572621 (= c!832006 (is-Nil!56408 lt!2006081))))

(assert (=> d!1572621 (= (size!37145 lt!2006081) lt!2006748)))

(declare-fun b!4894948 () Bool)

(assert (=> b!4894948 (= e!3059993 0)))

(declare-fun b!4894949 () Bool)

(assert (=> b!4894949 (= e!3059993 (+ 1 (size!37145 (t!365672 lt!2006081))))))

(assert (= (and d!1572621 c!832006) b!4894948))

(assert (= (and d!1572621 (not c!832006)) b!4894949))

(declare-fun m!5900902 () Bool)

(assert (=> b!4894949 m!5900902))

(assert (=> b!4893761 d!1572621))

(declare-fun d!1572623 () Bool)

(declare-fun lt!2006749 () Int)

(assert (=> d!1572623 (>= lt!2006749 0)))

(declare-fun e!3059994 () Int)

(assert (=> d!1572623 (= lt!2006749 e!3059994)))

(declare-fun c!832007 () Bool)

(assert (=> d!1572623 (= c!832007 (is-Nil!56408 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))

(assert (=> d!1572623 (= (size!37145 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))) lt!2006749)))

(declare-fun b!4894950 () Bool)

(assert (=> b!4894950 (= e!3059994 0)))

(declare-fun b!4894951 () Bool)

(assert (=> b!4894951 (= e!3059994 (+ 1 (size!37145 (t!365672 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))))

(assert (= (and d!1572623 c!832007) b!4894950))

(assert (= (and d!1572623 (not c!832007)) b!4894951))

(assert (=> b!4894951 m!5900660))

(assert (=> b!4893761 d!1572623))

(assert (=> b!4893761 d!1572033))

(assert (=> b!4894179 d!1572253))

(declare-fun d!1572625 () Bool)

(assert (=> d!1572625 (= (list!17731 (xs!18059 (c!831694 (_2!33531 lt!2005838)))) (innerList!14831 (xs!18059 (c!831694 (_2!33531 lt!2005838)))))))

(assert (=> b!4894208 d!1572625))

(assert (=> b!4893781 d!1572239))

(declare-fun d!1572627 () Bool)

(assert (=> d!1572627 (= (apply!13541 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086)))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006086))))) (dynLambda!22646 (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086))))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006086))))))))

(declare-fun b_lambda!194551 () Bool)

(assert (=> (not b_lambda!194551) (not d!1572627)))

(declare-fun tb!259073 () Bool)

(declare-fun t!365836 () Bool)

(assert (=> (and b!4893356 (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086)))))) t!365836) tb!259073))

(declare-fun result!322660 () Bool)

(assert (=> tb!259073 (= result!322660 (inv!21 (dynLambda!22646 (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086))))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006086)))))))))

(declare-fun m!5900904 () Bool)

(assert (=> tb!259073 m!5900904))

(assert (=> d!1572627 t!365836))

(declare-fun b_and!345135 () Bool)

(assert (= b_and!345123 (and (=> t!365836 result!322660) b_and!345135)))

(declare-fun tb!259075 () Bool)

(declare-fun t!365838 () Bool)

(assert (=> (and b!4893636 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086)))))) t!365838) tb!259075))

(declare-fun result!322662 () Bool)

(assert (= result!322662 result!322660))

(assert (=> d!1572627 t!365838))

(declare-fun b_and!345137 () Bool)

(assert (= b_and!345125 (and (=> t!365838 result!322662) b_and!345137)))

(declare-fun t!365840 () Bool)

(declare-fun tb!259077 () Bool)

(assert (=> (and b!4894220 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086)))))) t!365840) tb!259077))

(declare-fun result!322664 () Bool)

(assert (= result!322664 result!322660))

(assert (=> d!1572627 t!365840))

(declare-fun b_and!345139 () Bool)

(assert (= b_and!345127 (and (=> t!365840 result!322664) b_and!345139)))

(assert (=> d!1572627 m!5898890))

(declare-fun m!5900906 () Bool)

(assert (=> d!1572627 m!5900906))

(assert (=> b!4893781 d!1572627))

(declare-fun d!1572629 () Bool)

(assert (=> d!1572629 (= (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006086)))) (fromListB!2693 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006086)))))))

(declare-fun bs!1176218 () Bool)

(assert (= bs!1176218 d!1572629))

(declare-fun m!5900908 () Bool)

(assert (=> bs!1176218 m!5900908))

(assert (=> b!4893781 d!1572629))

(declare-fun b!4894955 () Bool)

(declare-fun e!3059997 () List!56532)

(assert (=> b!4894955 (= e!3059997 (++!12244 (list!17729 (left!40981 (c!831694 (_2!33531 (get!19482 lt!2006028))))) (list!17729 (right!41311 (c!831694 (_2!33531 (get!19482 lt!2006028)))))))))

(declare-fun b!4894952 () Bool)

(declare-fun e!3059996 () List!56532)

(assert (=> b!4894952 (= e!3059996 Nil!56408)))

(declare-fun d!1572631 () Bool)

(declare-fun c!832008 () Bool)

(assert (=> d!1572631 (= c!832008 (is-Empty!14743 (c!831694 (_2!33531 (get!19482 lt!2006028)))))))

(assert (=> d!1572631 (= (list!17729 (c!831694 (_2!33531 (get!19482 lt!2006028)))) e!3059996)))

(declare-fun b!4894953 () Bool)

(assert (=> b!4894953 (= e!3059996 e!3059997)))

(declare-fun c!832009 () Bool)

(assert (=> b!4894953 (= c!832009 (is-Leaf!24548 (c!831694 (_2!33531 (get!19482 lt!2006028)))))))

(declare-fun b!4894954 () Bool)

(assert (=> b!4894954 (= e!3059997 (list!17731 (xs!18059 (c!831694 (_2!33531 (get!19482 lt!2006028))))))))

(assert (= (and d!1572631 c!832008) b!4894952))

(assert (= (and d!1572631 (not c!832008)) b!4894953))

(assert (= (and b!4894953 c!832009) b!4894954))

(assert (= (and b!4894953 (not c!832009)) b!4894955))

(declare-fun m!5900910 () Bool)

(assert (=> b!4894955 m!5900910))

(declare-fun m!5900912 () Bool)

(assert (=> b!4894955 m!5900912))

(assert (=> b!4894955 m!5900910))

(assert (=> b!4894955 m!5900912))

(declare-fun m!5900914 () Bool)

(assert (=> b!4894955 m!5900914))

(declare-fun m!5900916 () Bool)

(assert (=> b!4894954 m!5900916))

(assert (=> d!1571961 d!1572631))

(assert (=> b!4893609 d!1572087))

(assert (=> b!4893609 d!1572089))

(assert (=> d!1571977 d!1571973))

(declare-fun d!1572633 () Bool)

(assert (=> d!1572633 (isPrefix!4895 lt!2005969 lt!2005975)))

(assert (=> d!1572633 true))

(declare-fun _$45!2174 () Unit!146435)

(assert (=> d!1572633 (= (choose!35724 lt!2005969 lt!2005975) _$45!2174)))

(declare-fun bs!1176219 () Bool)

(assert (= bs!1176219 d!1572633))

(assert (=> bs!1176219 m!5898604))

(assert (=> d!1571977 d!1572633))

(assert (=> b!4894132 d!1572343))

(declare-fun d!1572635 () Bool)

(declare-fun lt!2006750 () Bool)

(assert (=> d!1572635 (= lt!2006750 (set.member (rule!11365 (_1!33532 (get!19481 lt!2006091))) (content!10021 (t!365674 rulesArg!165))))))

(declare-fun e!3059998 () Bool)

(assert (=> d!1572635 (= lt!2006750 e!3059998)))

(declare-fun res!2090641 () Bool)

(assert (=> d!1572635 (=> (not res!2090641) (not e!3059998))))

(assert (=> d!1572635 (= res!2090641 (is-Cons!56410 (t!365674 rulesArg!165)))))

(assert (=> d!1572635 (= (contains!19438 (t!365674 rulesArg!165) (rule!11365 (_1!33532 (get!19481 lt!2006091)))) lt!2006750)))

(declare-fun b!4894956 () Bool)

(declare-fun e!3059999 () Bool)

(assert (=> b!4894956 (= e!3059998 e!3059999)))

(declare-fun res!2090642 () Bool)

(assert (=> b!4894956 (=> res!2090642 e!3059999)))

(assert (=> b!4894956 (= res!2090642 (= (h!62858 (t!365674 rulesArg!165)) (rule!11365 (_1!33532 (get!19481 lt!2006091)))))))

(declare-fun b!4894957 () Bool)

(assert (=> b!4894957 (= e!3059999 (contains!19438 (t!365674 (t!365674 rulesArg!165)) (rule!11365 (_1!33532 (get!19481 lt!2006091)))))))

(assert (= (and d!1572635 res!2090641) b!4894956))

(assert (= (and b!4894956 (not res!2090642)) b!4894957))

(assert (=> d!1572635 m!5900002))

(declare-fun m!5900918 () Bool)

(assert (=> d!1572635 m!5900918))

(declare-fun m!5900920 () Bool)

(assert (=> b!4894957 m!5900920))

(assert (=> b!4893784 d!1572635))

(assert (=> b!4893784 d!1572247))

(declare-fun d!1572637 () Bool)

(declare-fun lt!2006753 () List!56532)

(assert (=> d!1572637 (= (++!12244 Nil!56408 lt!2006753) lt!2006027)))

(declare-fun e!3060002 () List!56532)

(assert (=> d!1572637 (= lt!2006753 e!3060002)))

(declare-fun c!832012 () Bool)

(assert (=> d!1572637 (= c!832012 (is-Cons!56408 Nil!56408))))

(assert (=> d!1572637 (>= (size!37145 lt!2006027) (size!37145 Nil!56408))))

(assert (=> d!1572637 (= (getSuffix!2888 lt!2006027 Nil!56408) lt!2006753)))

(declare-fun b!4894962 () Bool)

(assert (=> b!4894962 (= e!3060002 (getSuffix!2888 (tail!9602 lt!2006027) (t!365672 Nil!56408)))))

(declare-fun b!4894963 () Bool)

(assert (=> b!4894963 (= e!3060002 lt!2006027)))

(assert (= (and d!1572637 c!832012) b!4894962))

(assert (= (and d!1572637 (not c!832012)) b!4894963))

(declare-fun m!5900922 () Bool)

(assert (=> d!1572637 m!5900922))

(assert (=> d!1572637 m!5898638))

(assert (=> d!1572637 m!5898636))

(assert (=> b!4894962 m!5899030))

(assert (=> b!4894962 m!5899030))

(declare-fun m!5900924 () Bool)

(assert (=> b!4894962 m!5900924))

(assert (=> d!1571993 d!1572637))

(declare-fun b!4894967 () Bool)

(declare-fun e!3060003 () Bool)

(assert (=> b!4894967 (= e!3060003 (>= (size!37145 (++!12244 Nil!56408 lt!2006027)) (size!37145 Nil!56408)))))

(declare-fun d!1572639 () Bool)

(assert (=> d!1572639 e!3060003))

(declare-fun res!2090645 () Bool)

(assert (=> d!1572639 (=> res!2090645 e!3060003)))

(declare-fun lt!2006754 () Bool)

(assert (=> d!1572639 (= res!2090645 (not lt!2006754))))

(declare-fun e!3060005 () Bool)

(assert (=> d!1572639 (= lt!2006754 e!3060005)))

(declare-fun res!2090643 () Bool)

(assert (=> d!1572639 (=> res!2090643 e!3060005)))

(assert (=> d!1572639 (= res!2090643 (is-Nil!56408 Nil!56408))))

(assert (=> d!1572639 (= (isPrefix!4895 Nil!56408 (++!12244 Nil!56408 lt!2006027)) lt!2006754)))

(declare-fun b!4894965 () Bool)

(declare-fun res!2090646 () Bool)

(declare-fun e!3060004 () Bool)

(assert (=> b!4894965 (=> (not res!2090646) (not e!3060004))))

(assert (=> b!4894965 (= res!2090646 (= (head!10456 Nil!56408) (head!10456 (++!12244 Nil!56408 lt!2006027))))))

(declare-fun b!4894964 () Bool)

(assert (=> b!4894964 (= e!3060005 e!3060004)))

(declare-fun res!2090644 () Bool)

(assert (=> b!4894964 (=> (not res!2090644) (not e!3060004))))

(assert (=> b!4894964 (= res!2090644 (not (is-Nil!56408 (++!12244 Nil!56408 lt!2006027))))))

(declare-fun b!4894966 () Bool)

(assert (=> b!4894966 (= e!3060004 (isPrefix!4895 (tail!9602 Nil!56408) (tail!9602 (++!12244 Nil!56408 lt!2006027))))))

(assert (= (and d!1572639 (not res!2090643)) b!4894964))

(assert (= (and b!4894964 res!2090644) b!4894965))

(assert (= (and b!4894965 res!2090646) b!4894966))

(assert (= (and d!1572639 (not res!2090645)) b!4894967))

(assert (=> b!4894967 m!5899048))

(declare-fun m!5900926 () Bool)

(assert (=> b!4894967 m!5900926))

(assert (=> b!4894967 m!5898636))

(declare-fun m!5900928 () Bool)

(assert (=> b!4894965 m!5900928))

(assert (=> b!4894965 m!5899048))

(declare-fun m!5900930 () Bool)

(assert (=> b!4894965 m!5900930))

(declare-fun m!5900932 () Bool)

(assert (=> b!4894966 m!5900932))

(assert (=> b!4894966 m!5899048))

(declare-fun m!5900934 () Bool)

(assert (=> b!4894966 m!5900934))

(assert (=> b!4894966 m!5900932))

(assert (=> b!4894966 m!5900934))

(declare-fun m!5900936 () Bool)

(assert (=> b!4894966 m!5900936))

(assert (=> d!1571993 d!1572639))

(declare-fun d!1572641 () Bool)

(assert (=> d!1572641 (= lt!2006027 lt!2006247)))

(declare-fun lt!2006757 () Unit!146435)

(declare-fun choose!35736 (List!56532 List!56532 List!56532 List!56532 List!56532) Unit!146435)

(assert (=> d!1572641 (= lt!2006757 (choose!35736 Nil!56408 lt!2006027 Nil!56408 lt!2006247 lt!2006027))))

(assert (=> d!1572641 (isPrefix!4895 Nil!56408 lt!2006027)))

(assert (=> d!1572641 (= (lemmaSamePrefixThenSameSuffix!2304 Nil!56408 lt!2006027 Nil!56408 lt!2006247 lt!2006027) lt!2006757)))

(declare-fun bs!1176220 () Bool)

(assert (= bs!1176220 d!1572641))

(declare-fun m!5900938 () Bool)

(assert (=> bs!1176220 m!5900938))

(declare-fun m!5900940 () Bool)

(assert (=> bs!1176220 m!5900940))

(assert (=> d!1571993 d!1572641))

(assert (=> d!1571993 d!1572453))

(declare-fun b!4894968 () Bool)

(declare-fun e!3060007 () List!56532)

(assert (=> b!4894968 (= e!3060007 lt!2006027)))

(declare-fun b!4894970 () Bool)

(declare-fun res!2090647 () Bool)

(declare-fun e!3060006 () Bool)

(assert (=> b!4894970 (=> (not res!2090647) (not e!3060006))))

(declare-fun lt!2006758 () List!56532)

(assert (=> b!4894970 (= res!2090647 (= (size!37145 lt!2006758) (+ (size!37145 Nil!56408) (size!37145 lt!2006027))))))

(declare-fun b!4894969 () Bool)

(assert (=> b!4894969 (= e!3060007 (Cons!56408 (h!62856 Nil!56408) (++!12244 (t!365672 Nil!56408) lt!2006027)))))

(declare-fun d!1572643 () Bool)

(assert (=> d!1572643 e!3060006))

(declare-fun res!2090648 () Bool)

(assert (=> d!1572643 (=> (not res!2090648) (not e!3060006))))

(assert (=> d!1572643 (= res!2090648 (= (content!10019 lt!2006758) (set.union (content!10019 Nil!56408) (content!10019 lt!2006027))))))

(assert (=> d!1572643 (= lt!2006758 e!3060007)))

(declare-fun c!832013 () Bool)

(assert (=> d!1572643 (= c!832013 (is-Nil!56408 Nil!56408))))

(assert (=> d!1572643 (= (++!12244 Nil!56408 lt!2006027) lt!2006758)))

(declare-fun b!4894971 () Bool)

(assert (=> b!4894971 (= e!3060006 (or (not (= lt!2006027 Nil!56408)) (= lt!2006758 Nil!56408)))))

(assert (= (and d!1572643 c!832013) b!4894968))

(assert (= (and d!1572643 (not c!832013)) b!4894969))

(assert (= (and d!1572643 res!2090648) b!4894970))

(assert (= (and b!4894970 res!2090647) b!4894971))

(declare-fun m!5900942 () Bool)

(assert (=> b!4894970 m!5900942))

(assert (=> b!4894970 m!5898636))

(assert (=> b!4894970 m!5898638))

(declare-fun m!5900944 () Bool)

(assert (=> b!4894969 m!5900944))

(declare-fun m!5900946 () Bool)

(assert (=> d!1572643 m!5900946))

(declare-fun m!5900948 () Bool)

(assert (=> d!1572643 m!5900948))

(declare-fun m!5900950 () Bool)

(assert (=> d!1572643 m!5900950))

(assert (=> d!1571993 d!1572643))

(declare-fun b!4894972 () Bool)

(declare-fun e!3060009 () List!56532)

(assert (=> b!4894972 (= e!3060009 (_2!33536 lt!2006251))))

(declare-fun b!4894974 () Bool)

(declare-fun res!2090649 () Bool)

(declare-fun e!3060008 () Bool)

(assert (=> b!4894974 (=> (not res!2090649) (not e!3060008))))

(declare-fun lt!2006759 () List!56532)

(assert (=> b!4894974 (= res!2090649 (= (size!37145 lt!2006759) (+ (size!37145 (_1!33536 lt!2006251)) (size!37145 (_2!33536 lt!2006251)))))))

(declare-fun b!4894973 () Bool)

(assert (=> b!4894973 (= e!3060009 (Cons!56408 (h!62856 (_1!33536 lt!2006251)) (++!12244 (t!365672 (_1!33536 lt!2006251)) (_2!33536 lt!2006251))))))

(declare-fun d!1572645 () Bool)

(assert (=> d!1572645 e!3060008))

(declare-fun res!2090650 () Bool)

(assert (=> d!1572645 (=> (not res!2090650) (not e!3060008))))

(assert (=> d!1572645 (= res!2090650 (= (content!10019 lt!2006759) (set.union (content!10019 (_1!33536 lt!2006251)) (content!10019 (_2!33536 lt!2006251)))))))

(assert (=> d!1572645 (= lt!2006759 e!3060009)))

(declare-fun c!832014 () Bool)

(assert (=> d!1572645 (= c!832014 (is-Nil!56408 (_1!33536 lt!2006251)))))

(assert (=> d!1572645 (= (++!12244 (_1!33536 lt!2006251) (_2!33536 lt!2006251)) lt!2006759)))

(declare-fun b!4894975 () Bool)

(assert (=> b!4894975 (= e!3060008 (or (not (= (_2!33536 lt!2006251) Nil!56408)) (= lt!2006759 (_1!33536 lt!2006251))))))

(assert (= (and d!1572645 c!832014) b!4894972))

(assert (= (and d!1572645 (not c!832014)) b!4894973))

(assert (= (and d!1572645 res!2090650) b!4894974))

(assert (= (and b!4894974 res!2090649) b!4894975))

(declare-fun m!5900952 () Bool)

(assert (=> b!4894974 m!5900952))

(assert (=> b!4894974 m!5899042))

(declare-fun m!5900954 () Bool)

(assert (=> b!4894974 m!5900954))

(declare-fun m!5900956 () Bool)

(assert (=> b!4894973 m!5900956))

(declare-fun m!5900958 () Bool)

(assert (=> d!1572645 m!5900958))

(declare-fun m!5900960 () Bool)

(assert (=> d!1572645 m!5900960))

(declare-fun m!5900962 () Bool)

(assert (=> d!1572645 m!5900962))

(assert (=> d!1571993 d!1572645))

(declare-fun d!1572647 () Bool)

(assert (=> d!1572647 (isPrefix!4895 Nil!56408 (++!12244 Nil!56408 lt!2006027))))

(declare-fun lt!2006762 () Unit!146435)

(declare-fun choose!35738 (List!56532 List!56532) Unit!146435)

(assert (=> d!1572647 (= lt!2006762 (choose!35738 Nil!56408 lt!2006027))))

(assert (=> d!1572647 (= (lemmaConcatTwoListThenFirstIsPrefix!3124 Nil!56408 lt!2006027) lt!2006762)))

(declare-fun bs!1176221 () Bool)

(assert (= bs!1176221 d!1572647))

(assert (=> bs!1176221 m!5899048))

(assert (=> bs!1176221 m!5899048))

(assert (=> bs!1176221 m!5899050))

(declare-fun m!5900964 () Bool)

(assert (=> bs!1176221 m!5900964))

(assert (=> d!1571993 d!1572647))

(declare-fun d!1572649 () Bool)

(declare-fun lostCauseFct!273 (Regex!13250) Bool)

(assert (=> d!1572649 (= (lostCause!1087 (regex!8175 (h!62858 rulesArg!165))) (lostCauseFct!273 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun bs!1176222 () Bool)

(assert (= bs!1176222 d!1572649))

(declare-fun m!5900966 () Bool)

(assert (=> bs!1176222 m!5900966))

(assert (=> d!1571993 d!1572649))

(declare-fun d!1572651 () Bool)

(assert (=> d!1572651 (= (isEmpty!30272 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))) (is-Nil!56408 (tail!9602 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))))))

(assert (=> b!4893820 d!1572651))

(assert (=> b!4893820 d!1572447))

(declare-fun bs!1176223 () Bool)

(declare-fun b!4894981 () Bool)

(assert (= bs!1176223 (and b!4894981 d!1572541)))

(declare-fun lambda!244067 () Int)

(assert (=> bs!1176223 (= (and (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))) (= lambda!244067 lambda!244064))))

(declare-fun bs!1176224 () Bool)

(assert (= bs!1176224 (and b!4894981 d!1572575)))

(assert (=> bs!1176224 (= (and (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (= lambda!244067 lambda!244066))))

(declare-fun bs!1176225 () Bool)

(assert (= bs!1176225 (and b!4894981 d!1572357)))

(assert (=> bs!1176225 (= (and (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (= lambda!244067 lambda!244062))))

(declare-fun bs!1176226 () Bool)

(assert (= bs!1176226 (and b!4894981 b!4893578)))

(assert (=> bs!1176226 (= (and (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (= lambda!244067 lambda!244035))))

(declare-fun bs!1176227 () Bool)

(assert (= bs!1176227 (and b!4894981 d!1572083)))

(assert (=> bs!1176227 (= (and (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (= lambda!244067 lambda!244046))))

(declare-fun bs!1176228 () Bool)

(assert (= bs!1176228 (and b!4894981 b!4894201)))

(assert (=> bs!1176228 (= (and (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))) (= lambda!244067 lambda!244047))))

(declare-fun b!4894983 () Bool)

(declare-fun e!3060016 () Bool)

(assert (=> b!4894983 (= e!3060016 true)))

(declare-fun b!4894982 () Bool)

(declare-fun e!3060015 () Bool)

(assert (=> b!4894982 (= e!3060015 e!3060016)))

(assert (=> b!4894981 e!3060015))

(assert (= b!4894982 b!4894983))

(assert (= b!4894981 b!4894982))

(assert (=> b!4894983 (< (dynLambda!22635 order!25479 (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165)))))) (dynLambda!22636 order!25481 lambda!244067))))

(assert (=> b!4894983 (< (dynLambda!22637 order!25483 (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165)))))) (dynLambda!22636 order!25481 lambda!244067))))

(declare-fun b!4894976 () Bool)

(declare-fun e!3060010 () Bool)

(declare-fun e!3060012 () Bool)

(assert (=> b!4894976 (= e!3060010 e!3060012)))

(declare-fun res!2090651 () Bool)

(assert (=> b!4894976 (=> res!2090651 e!3060012)))

(declare-fun lt!2006768 () Option!14027)

(assert (=> b!4894976 (= res!2090651 (not (isDefined!11041 lt!2006768)))))

(declare-fun d!1572653 () Bool)

(assert (=> d!1572653 e!3060010))

(declare-fun res!2090652 () Bool)

(assert (=> d!1572653 (=> (not res!2090652) (not e!3060010))))

(assert (=> d!1572653 (= res!2090652 (= (isDefined!11041 lt!2006768) (isDefined!11040 (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 (t!365674 rulesArg!165))) (list!17727 input!1236)))))))

(declare-fun e!3060014 () Option!14027)

(assert (=> d!1572653 (= lt!2006768 e!3060014)))

(declare-fun c!832015 () Bool)

(declare-fun lt!2006765 () tuple2!60464)

(assert (=> d!1572653 (= c!832015 (isEmpty!30271 (_1!33535 lt!2006765)))))

(assert (=> d!1572653 (= lt!2006765 (findLongestMatchWithZipperSequence!269 (regex!8175 (h!62858 (t!365674 (t!365674 rulesArg!165)))) input!1236))))

(assert (=> d!1572653 (ruleValid!3673 thiss!14805 (h!62858 (t!365674 (t!365674 rulesArg!165))))))

(assert (=> d!1572653 (= (maxPrefixOneRuleZipperSequence!685 thiss!14805 (h!62858 (t!365674 (t!365674 rulesArg!165))) input!1236) lt!2006768)))

(declare-fun b!4894977 () Bool)

(declare-fun e!3060013 () Bool)

(assert (=> b!4894977 (= e!3060012 e!3060013)))

(declare-fun res!2090653 () Bool)

(assert (=> b!4894977 (=> (not res!2090653) (not e!3060013))))

(assert (=> b!4894977 (= res!2090653 (= (_1!33531 (get!19482 lt!2006768)) (_1!33532 (get!19481 (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 (t!365674 rulesArg!165))) (list!17727 input!1236))))))))

(declare-fun b!4894978 () Bool)

(assert (=> b!4894978 (= e!3060013 (= (list!17727 (_2!33531 (get!19482 lt!2006768))) (_2!33532 (get!19481 (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 (t!365674 rulesArg!165))) (list!17727 input!1236))))))))

(declare-fun b!4894979 () Bool)

(declare-fun e!3060011 () Bool)

(declare-fun lt!2006767 () List!56532)

(assert (=> b!4894979 (= e!3060011 (matchR!6531 (regex!8175 (h!62858 (t!365674 (t!365674 rulesArg!165)))) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 (t!365674 rulesArg!165)))) Nil!56408 (size!37145 Nil!56408) lt!2006767 lt!2006767 (size!37145 lt!2006767)))))))

(declare-fun b!4894980 () Bool)

(assert (=> b!4894980 (= e!3060014 None!14026)))

(assert (=> b!4894981 (= e!3060014 (Some!14026 (tuple2!60457 (Token!14915 (apply!13541 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165)))) (_1!33535 lt!2006765)) (h!62858 (t!365674 (t!365674 rulesArg!165))) (size!37147 (_1!33535 lt!2006765)) (list!17727 (_1!33535 lt!2006765))) (_2!33535 lt!2006765))))))

(assert (=> b!4894981 (= lt!2006767 (list!17727 input!1236))))

(declare-fun lt!2006770 () Unit!146435)

(assert (=> b!4894981 (= lt!2006770 (longestMatchIsAcceptedByMatchOrIsEmpty!1717 (regex!8175 (h!62858 (t!365674 (t!365674 rulesArg!165)))) lt!2006767))))

(declare-fun res!2090654 () Bool)

(assert (=> b!4894981 (= res!2090654 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 (t!365674 rulesArg!165)))) Nil!56408 (size!37145 Nil!56408) lt!2006767 lt!2006767 (size!37145 lt!2006767)))))))

(assert (=> b!4894981 (=> res!2090654 e!3060011)))

(assert (=> b!4894981 e!3060011))

(declare-fun lt!2006769 () Unit!146435)

(assert (=> b!4894981 (= lt!2006769 lt!2006770)))

(declare-fun lt!2006763 () Unit!146435)

(assert (=> b!4894981 (= lt!2006763 (lemmaInv!1237 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))))))

(declare-fun lt!2006764 () Unit!146435)

(assert (=> b!4894981 (= lt!2006764 (ForallOf!1134 lambda!244067 (_1!33535 lt!2006765)))))

(declare-fun lt!2006772 () Unit!146435)

(assert (=> b!4894981 (= lt!2006772 (ForallOf!1134 lambda!244067 (seqFromList!5937 (list!17727 (_1!33535 lt!2006765)))))))

(declare-fun lt!2006766 () Option!14027)

(assert (=> b!4894981 (= lt!2006766 (Some!14026 (tuple2!60457 (Token!14915 (apply!13541 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165)))) (_1!33535 lt!2006765)) (h!62858 (t!365674 (t!365674 rulesArg!165))) (size!37147 (_1!33535 lt!2006765)) (list!17727 (_1!33535 lt!2006765))) (_2!33535 lt!2006765))))))

(declare-fun lt!2006771 () Unit!146435)

(assert (=> b!4894981 (= lt!2006771 (lemmaEqSameImage!1091 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165)))) (_1!33535 lt!2006765) (seqFromList!5937 (list!17727 (_1!33535 lt!2006765)))))))

(assert (= (and d!1572653 c!832015) b!4894980))

(assert (= (and d!1572653 (not c!832015)) b!4894981))

(assert (= (and b!4894981 (not res!2090654)) b!4894979))

(assert (= (and d!1572653 res!2090652) b!4894976))

(assert (= (and b!4894976 (not res!2090651)) b!4894977))

(assert (= (and b!4894977 res!2090653) b!4894978))

(declare-fun m!5900968 () Bool)

(assert (=> b!4894976 m!5900968))

(assert (=> b!4894981 m!5898636))

(declare-fun m!5900970 () Bool)

(assert (=> b!4894981 m!5900970))

(declare-fun m!5900972 () Bool)

(assert (=> b!4894981 m!5900972))

(declare-fun m!5900974 () Bool)

(assert (=> b!4894981 m!5900974))

(declare-fun m!5900976 () Bool)

(assert (=> b!4894981 m!5900976))

(declare-fun m!5900978 () Bool)

(assert (=> b!4894981 m!5900978))

(assert (=> b!4894981 m!5900972))

(assert (=> b!4894981 m!5898444))

(assert (=> b!4894981 m!5898636))

(assert (=> b!4894981 m!5900970))

(declare-fun m!5900980 () Bool)

(assert (=> b!4894981 m!5900980))

(assert (=> b!4894981 m!5900974))

(declare-fun m!5900982 () Bool)

(assert (=> b!4894981 m!5900982))

(declare-fun m!5900984 () Bool)

(assert (=> b!4894981 m!5900984))

(declare-fun m!5900986 () Bool)

(assert (=> b!4894981 m!5900986))

(assert (=> b!4894981 m!5900974))

(declare-fun m!5900988 () Bool)

(assert (=> b!4894981 m!5900988))

(declare-fun m!5900990 () Bool)

(assert (=> b!4894981 m!5900990))

(declare-fun m!5900992 () Bool)

(assert (=> b!4894981 m!5900992))

(declare-fun m!5900994 () Bool)

(assert (=> b!4894978 m!5900994))

(assert (=> b!4894978 m!5898444))

(assert (=> b!4894978 m!5900312))

(declare-fun m!5900996 () Bool)

(assert (=> b!4894978 m!5900996))

(declare-fun m!5900998 () Bool)

(assert (=> b!4894978 m!5900998))

(assert (=> b!4894978 m!5898444))

(assert (=> b!4894978 m!5900312))

(assert (=> b!4894977 m!5900998))

(assert (=> b!4894977 m!5898444))

(assert (=> b!4894977 m!5898444))

(assert (=> b!4894977 m!5900312))

(assert (=> b!4894977 m!5900312))

(assert (=> b!4894977 m!5900996))

(assert (=> b!4894979 m!5898636))

(assert (=> b!4894979 m!5900970))

(assert (=> b!4894979 m!5898636))

(assert (=> b!4894979 m!5900970))

(assert (=> b!4894979 m!5900980))

(declare-fun m!5901000 () Bool)

(assert (=> b!4894979 m!5901000))

(assert (=> d!1572653 m!5900312))

(declare-fun m!5901002 () Bool)

(assert (=> d!1572653 m!5901002))

(assert (=> d!1572653 m!5898444))

(assert (=> d!1572653 m!5900968))

(declare-fun m!5901004 () Bool)

(assert (=> d!1572653 m!5901004))

(assert (=> d!1572653 m!5900198))

(declare-fun m!5901006 () Bool)

(assert (=> d!1572653 m!5901006))

(assert (=> d!1572653 m!5898444))

(assert (=> d!1572653 m!5900312))

(assert (=> bm!339472 d!1572653))

(declare-fun d!1572655 () Bool)

(assert (=> d!1572655 (= (isEmpty!30272 (_1!33536 lt!2006251)) (is-Nil!56408 (_1!33536 lt!2006251)))))

(assert (=> b!4893969 d!1572655))

(declare-fun d!1572657 () Bool)

(declare-fun lt!2006775 () Option!14028)

(assert (=> d!1572657 (= lt!2006775 (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 rulesArg!165)) lt!2005844))))

(declare-fun e!3060017 () Option!14028)

(assert (=> d!1572657 (= lt!2006775 e!3060017)))

(declare-fun c!832016 () Bool)

(declare-fun lt!2006777 () tuple2!60466)

(assert (=> d!1572657 (= c!832016 (isEmpty!30272 (_1!33536 lt!2006777)))))

(assert (=> d!1572657 (= lt!2006777 (findLongestMatchWithZipper!84 (regex!8175 (h!62858 (t!365674 rulesArg!165))) lt!2005844))))

(assert (=> d!1572657 (ruleValid!3673 thiss!14805 (h!62858 (t!365674 rulesArg!165)))))

(assert (=> d!1572657 (= (maxPrefixOneRuleZipper!259 thiss!14805 (h!62858 (t!365674 rulesArg!165)) lt!2005844) lt!2006775)))

(declare-fun b!4894984 () Bool)

(assert (=> b!4894984 (= e!3060017 None!14027)))

(declare-fun b!4894985 () Bool)

(assert (=> b!4894985 (= e!3060017 (Some!14027 (tuple2!60459 (Token!14915 (apply!13541 (transformation!8175 (h!62858 (t!365674 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006777))) (h!62858 (t!365674 rulesArg!165)) (size!37145 (_1!33536 lt!2006777)) (_1!33536 lt!2006777)) (_2!33536 lt!2006777))))))

(declare-fun lt!2006774 () Unit!146435)

(assert (=> b!4894985 (= lt!2006774 (longestMatchIsAcceptedByMatchOrIsEmpty!1717 (regex!8175 (h!62858 (t!365674 rulesArg!165))) lt!2005844))))

(declare-fun res!2090655 () Bool)

(assert (=> b!4894985 (= res!2090655 (isEmpty!30272 (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))))))

(declare-fun e!3060018 () Bool)

(assert (=> b!4894985 (=> res!2090655 e!3060018)))

(assert (=> b!4894985 e!3060018))

(declare-fun lt!2006776 () Unit!146435)

(assert (=> b!4894985 (= lt!2006776 lt!2006774)))

(declare-fun lt!2006773 () Unit!146435)

(assert (=> b!4894985 (= lt!2006773 (lemmaInv!1237 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))))

(declare-fun lt!2006778 () Unit!146435)

(assert (=> b!4894985 (= lt!2006778 (lemmaSemiInverse!2565 (transformation!8175 (h!62858 (t!365674 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006777))))))

(declare-fun b!4894986 () Bool)

(assert (=> b!4894986 (= e!3060018 (matchR!6531 (regex!8175 (h!62858 (t!365674 rulesArg!165))) (_1!33536 (findLongestMatchInner!1754 (regex!8175 (h!62858 (t!365674 rulesArg!165))) Nil!56408 (size!37145 Nil!56408) lt!2005844 lt!2005844 (size!37145 lt!2005844)))))))

(assert (= (and d!1572657 c!832016) b!4894984))

(assert (= (and d!1572657 (not c!832016)) b!4894985))

(assert (= (and b!4894985 (not res!2090655)) b!4894986))

(assert (=> d!1572657 m!5898894))

(declare-fun m!5901008 () Bool)

(assert (=> d!1572657 m!5901008))

(declare-fun m!5901010 () Bool)

(assert (=> d!1572657 m!5901010))

(assert (=> d!1572657 m!5898950))

(declare-fun m!5901012 () Bool)

(assert (=> b!4894985 m!5901012))

(declare-fun m!5901014 () Bool)

(assert (=> b!4894985 m!5901014))

(assert (=> b!4894985 m!5898636))

(assert (=> b!4894985 m!5900834))

(assert (=> b!4894985 m!5901012))

(declare-fun m!5901016 () Bool)

(assert (=> b!4894985 m!5901016))

(assert (=> b!4894985 m!5898538))

(assert (=> b!4894985 m!5901012))

(assert (=> b!4894985 m!5900832))

(assert (=> b!4894985 m!5899462))

(assert (=> b!4894985 m!5898636))

(assert (=> b!4894985 m!5898538))

(assert (=> b!4894985 m!5900828))

(declare-fun m!5901018 () Bool)

(assert (=> b!4894985 m!5901018))

(assert (=> b!4894986 m!5898636))

(assert (=> b!4894986 m!5898538))

(assert (=> b!4894986 m!5898636))

(assert (=> b!4894986 m!5898538))

(assert (=> b!4894986 m!5900828))

(assert (=> b!4894986 m!5900858))

(assert (=> bm!339473 d!1572657))

(assert (=> b!4894139 d!1572411))

(declare-fun d!1572659 () Bool)

(declare-fun lt!2006779 () Int)

(assert (=> d!1572659 (>= lt!2006779 0)))

(declare-fun e!3060019 () Int)

(assert (=> d!1572659 (= lt!2006779 e!3060019)))

(declare-fun c!832017 () Bool)

(assert (=> d!1572659 (= c!832017 (is-Nil!56408 (_2!33532 (get!19481 lt!2006091))))))

(assert (=> d!1572659 (= (size!37145 (_2!33532 (get!19481 lt!2006091))) lt!2006779)))

(declare-fun b!4894987 () Bool)

(assert (=> b!4894987 (= e!3060019 0)))

(declare-fun b!4894988 () Bool)

(assert (=> b!4894988 (= e!3060019 (+ 1 (size!37145 (t!365672 (_2!33532 (get!19481 lt!2006091))))))))

(assert (= (and d!1572659 c!832017) b!4894987))

(assert (= (and d!1572659 (not c!832017)) b!4894988))

(declare-fun m!5901020 () Bool)

(assert (=> b!4894988 m!5901020))

(assert (=> b!4893791 d!1572659))

(assert (=> b!4893791 d!1572247))

(assert (=> b!4893791 d!1572303))

(assert (=> d!1571959 d!1572473))

(declare-fun b!4894989 () Bool)

(declare-fun e!3060021 () Bool)

(declare-fun call!339553 () Bool)

(assert (=> b!4894989 (= e!3060021 call!339553)))

(declare-fun b!4894990 () Bool)

(declare-fun e!3060026 () Bool)

(declare-fun e!3060025 () Bool)

(assert (=> b!4894990 (= e!3060026 e!3060025)))

(declare-fun res!2090658 () Bool)

(assert (=> b!4894990 (=> (not res!2090658) (not e!3060025))))

(declare-fun call!339555 () Bool)

(assert (=> b!4894990 (= res!2090658 call!339555)))

(declare-fun b!4894991 () Bool)

(declare-fun res!2090660 () Bool)

(assert (=> b!4894991 (=> res!2090660 e!3060026)))

(assert (=> b!4894991 (= res!2090660 (not (is-Concat!21736 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))))))

(declare-fun e!3060022 () Bool)

(assert (=> b!4894991 (= e!3060022 e!3060026)))

(declare-fun b!4894992 () Bool)

(declare-fun e!3060020 () Bool)

(assert (=> b!4894992 (= e!3060020 e!3060022)))

(declare-fun c!832019 () Bool)

(assert (=> b!4894992 (= c!832019 (is-Union!13250 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))))

(declare-fun d!1572661 () Bool)

(declare-fun res!2090657 () Bool)

(declare-fun e!3060023 () Bool)

(assert (=> d!1572661 (=> res!2090657 e!3060023)))

(assert (=> d!1572661 (= res!2090657 (is-ElementMatch!13250 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))))

(assert (=> d!1572661 (= (validRegex!5883 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) e!3060023)))

(declare-fun bm!339548 () Bool)

(assert (=> bm!339548 (= call!339555 call!339553)))

(declare-fun bm!339549 () Bool)

(declare-fun c!832018 () Bool)

(assert (=> bm!339549 (= call!339553 (validRegex!5883 (ite c!832018 (reg!13579 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (ite c!832019 (regTwo!27013 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (regOne!27012 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))))))))

(declare-fun b!4894993 () Bool)

(assert (=> b!4894993 (= e!3060023 e!3060020)))

(assert (=> b!4894993 (= c!832018 (is-Star!13250 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))))

(declare-fun b!4894994 () Bool)

(assert (=> b!4894994 (= e!3060020 e!3060021)))

(declare-fun res!2090659 () Bool)

(assert (=> b!4894994 (= res!2090659 (not (nullable!4556 (reg!13579 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))))))

(assert (=> b!4894994 (=> (not res!2090659) (not e!3060021))))

(declare-fun b!4894995 () Bool)

(declare-fun res!2090656 () Bool)

(declare-fun e!3060024 () Bool)

(assert (=> b!4894995 (=> (not res!2090656) (not e!3060024))))

(declare-fun call!339554 () Bool)

(assert (=> b!4894995 (= res!2090656 call!339554)))

(assert (=> b!4894995 (= e!3060022 e!3060024)))

(declare-fun b!4894996 () Bool)

(assert (=> b!4894996 (= e!3060024 call!339555)))

(declare-fun bm!339550 () Bool)

(assert (=> bm!339550 (= call!339554 (validRegex!5883 (ite c!832019 (regOne!27013 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (regTwo!27012 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))))))

(declare-fun b!4894997 () Bool)

(assert (=> b!4894997 (= e!3060025 call!339554)))

(assert (= (and d!1572661 (not res!2090657)) b!4894993))

(assert (= (and b!4894993 c!832018) b!4894994))

(assert (= (and b!4894993 (not c!832018)) b!4894992))

(assert (= (and b!4894994 res!2090659) b!4894989))

(assert (= (and b!4894992 c!832019) b!4894995))

(assert (= (and b!4894992 (not c!832019)) b!4894991))

(assert (= (and b!4894995 res!2090656) b!4894996))

(assert (= (and b!4894991 (not res!2090660)) b!4894990))

(assert (= (and b!4894990 res!2090658) b!4894997))

(assert (= (or b!4894996 b!4894990) bm!339548))

(assert (= (or b!4894995 b!4894997) bm!339550))

(assert (= (or b!4894989 bm!339548) bm!339549))

(declare-fun m!5901022 () Bool)

(assert (=> bm!339549 m!5901022))

(declare-fun m!5901024 () Bool)

(assert (=> b!4894994 m!5901024))

(declare-fun m!5901026 () Bool)

(assert (=> bm!339550 m!5901026))

(assert (=> d!1571959 d!1572661))

(declare-fun d!1572663 () Bool)

(declare-fun choose!35740 (Int) Bool)

(assert (=> d!1572663 (= (Forall2!1268 lambda!244040) (choose!35740 lambda!244040))))

(declare-fun bs!1176229 () Bool)

(assert (= bs!1176229 d!1572663))

(declare-fun m!5901028 () Bool)

(assert (=> bs!1176229 m!5901028))

(assert (=> d!1571987 d!1572663))

(declare-fun call!339559 () Regex!13250)

(declare-fun c!832024 () Bool)

(declare-fun c!832022 () Bool)

(declare-fun bm!339551 () Bool)

(assert (=> bm!339551 (= call!339559 (derivativeStep!3879 (ite c!832022 (regOne!27013 (regex!8175 (h!62858 rulesArg!165))) (ite c!832024 (reg!13579 (regex!8175 (h!62858 rulesArg!165))) (regOne!27012 (regex!8175 (h!62858 rulesArg!165))))) call!339460))))

(declare-fun b!4894998 () Bool)

(declare-fun e!3060029 () Regex!13250)

(declare-fun e!3060027 () Regex!13250)

(assert (=> b!4894998 (= e!3060029 e!3060027)))

(assert (=> b!4894998 (= c!832024 (is-Star!13250 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun d!1572665 () Bool)

(declare-fun lt!2006780 () Regex!13250)

(assert (=> d!1572665 (validRegex!5883 lt!2006780)))

(declare-fun e!3060030 () Regex!13250)

(assert (=> d!1572665 (= lt!2006780 e!3060030)))

(declare-fun c!832023 () Bool)

(assert (=> d!1572665 (= c!832023 (or (is-EmptyExpr!13250 (regex!8175 (h!62858 rulesArg!165))) (is-EmptyLang!13250 (regex!8175 (h!62858 rulesArg!165)))))))

(assert (=> d!1572665 (validRegex!5883 (regex!8175 (h!62858 rulesArg!165)))))

(assert (=> d!1572665 (= (derivativeStep!3879 (regex!8175 (h!62858 rulesArg!165)) call!339460) lt!2006780)))

(declare-fun bm!339552 () Bool)

(declare-fun call!339558 () Regex!13250)

(declare-fun call!339556 () Regex!13250)

(assert (=> bm!339552 (= call!339558 call!339556)))

(declare-fun b!4894999 () Bool)

(declare-fun e!3060028 () Regex!13250)

(assert (=> b!4894999 (= e!3060028 (ite (= call!339460 (c!831695 (regex!8175 (h!62858 rulesArg!165)))) EmptyExpr!13250 EmptyLang!13250))))

(declare-fun bm!339553 () Bool)

(declare-fun call!339557 () Regex!13250)

(assert (=> bm!339553 (= call!339557 (derivativeStep!3879 (ite c!832022 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165))) (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))) call!339460))))

(declare-fun b!4895000 () Bool)

(assert (=> b!4895000 (= e!3060029 (Union!13250 call!339559 call!339557))))

(declare-fun b!4895001 () Bool)

(declare-fun c!832020 () Bool)

(assert (=> b!4895001 (= c!832020 (nullable!4556 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))))

(declare-fun e!3060031 () Regex!13250)

(assert (=> b!4895001 (= e!3060027 e!3060031)))

(declare-fun b!4895002 () Bool)

(assert (=> b!4895002 (= e!3060030 EmptyLang!13250)))

(declare-fun bm!339554 () Bool)

(assert (=> bm!339554 (= call!339556 call!339559)))

(declare-fun b!4895003 () Bool)

(assert (=> b!4895003 (= e!3060027 (Concat!21736 call!339556 (regex!8175 (h!62858 rulesArg!165))))))

(declare-fun b!4895004 () Bool)

(assert (=> b!4895004 (= e!3060031 (Union!13250 (Concat!21736 call!339558 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))) call!339557))))

(declare-fun b!4895005 () Bool)

(assert (=> b!4895005 (= e!3060031 (Union!13250 (Concat!21736 call!339558 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))) EmptyLang!13250))))

(declare-fun b!4895006 () Bool)

(assert (=> b!4895006 (= c!832022 (is-Union!13250 (regex!8175 (h!62858 rulesArg!165))))))

(assert (=> b!4895006 (= e!3060028 e!3060029)))

(declare-fun b!4895007 () Bool)

(assert (=> b!4895007 (= e!3060030 e!3060028)))

(declare-fun c!832021 () Bool)

(assert (=> b!4895007 (= c!832021 (is-ElementMatch!13250 (regex!8175 (h!62858 rulesArg!165))))))

(assert (= (and d!1572665 c!832023) b!4895002))

(assert (= (and d!1572665 (not c!832023)) b!4895007))

(assert (= (and b!4895007 c!832021) b!4894999))

(assert (= (and b!4895007 (not c!832021)) b!4895006))

(assert (= (and b!4895006 c!832022) b!4895000))

(assert (= (and b!4895006 (not c!832022)) b!4894998))

(assert (= (and b!4894998 c!832024) b!4895003))

(assert (= (and b!4894998 (not c!832024)) b!4895001))

(assert (= (and b!4895001 c!832020) b!4895004))

(assert (= (and b!4895001 (not c!832020)) b!4895005))

(assert (= (or b!4895004 b!4895005) bm!339552))

(assert (= (or b!4895003 bm!339552) bm!339554))

(assert (= (or b!4895000 bm!339554) bm!339551))

(assert (= (or b!4895000 b!4895004) bm!339553))

(declare-fun m!5901030 () Bool)

(assert (=> bm!339551 m!5901030))

(declare-fun m!5901032 () Bool)

(assert (=> d!1572665 m!5901032))

(assert (=> d!1572665 m!5898834))

(declare-fun m!5901034 () Bool)

(assert (=> bm!339553 m!5901034))

(assert (=> b!4895001 m!5900734))

(assert (=> bm!339455 d!1572665))

(declare-fun d!1572667 () Bool)

(assert (=> d!1572667 (= (isDefined!11040 lt!2006086) (not (isEmpty!30267 lt!2006086)))))

(declare-fun bs!1176230 () Bool)

(assert (= bs!1176230 d!1572667))

(assert (=> bs!1176230 m!5898876))

(assert (=> b!4893774 d!1572667))

(declare-fun b!4895008 () Bool)

(declare-fun e!3060033 () List!56532)

(assert (=> b!4895008 (= e!3060033 (_2!33532 (get!19481 lt!2006351)))))

(declare-fun b!4895010 () Bool)

(declare-fun res!2090661 () Bool)

(declare-fun e!3060032 () Bool)

(assert (=> b!4895010 (=> (not res!2090661) (not e!3060032))))

(declare-fun lt!2006781 () List!56532)

(assert (=> b!4895010 (= res!2090661 (= (size!37145 lt!2006781) (+ (size!37145 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351))))) (size!37145 (_2!33532 (get!19481 lt!2006351))))))))

(declare-fun b!4895009 () Bool)

(assert (=> b!4895009 (= e!3060033 (Cons!56408 (h!62856 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351))))) (++!12244 (t!365672 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351))))) (_2!33532 (get!19481 lt!2006351)))))))

(declare-fun d!1572669 () Bool)

(assert (=> d!1572669 e!3060032))

(declare-fun res!2090662 () Bool)

(assert (=> d!1572669 (=> (not res!2090662) (not e!3060032))))

(assert (=> d!1572669 (= res!2090662 (= (content!10019 lt!2006781) (set.union (content!10019 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351))))) (content!10019 (_2!33532 (get!19481 lt!2006351))))))))

(assert (=> d!1572669 (= lt!2006781 e!3060033)))

(declare-fun c!832025 () Bool)

(assert (=> d!1572669 (= c!832025 (is-Nil!56408 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351))))))))

(assert (=> d!1572669 (= (++!12244 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351)))) (_2!33532 (get!19481 lt!2006351))) lt!2006781)))

(declare-fun b!4895011 () Bool)

(assert (=> b!4895011 (= e!3060032 (or (not (= (_2!33532 (get!19481 lt!2006351)) Nil!56408)) (= lt!2006781 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006351)))))))))

(assert (= (and d!1572669 c!832025) b!4895008))

(assert (= (and d!1572669 (not c!832025)) b!4895009))

(assert (= (and d!1572669 res!2090662) b!4895010))

(assert (= (and b!4895010 res!2090661) b!4895011))

(declare-fun m!5901036 () Bool)

(assert (=> b!4895010 m!5901036))

(assert (=> b!4895010 m!5899314))

(declare-fun m!5901038 () Bool)

(assert (=> b!4895010 m!5901038))

(assert (=> b!4895010 m!5899328))

(declare-fun m!5901040 () Bool)

(assert (=> b!4895009 m!5901040))

(declare-fun m!5901042 () Bool)

(assert (=> d!1572669 m!5901042))

(assert (=> d!1572669 m!5899314))

(declare-fun m!5901044 () Bool)

(assert (=> d!1572669 m!5901044))

(declare-fun m!5901046 () Bool)

(assert (=> d!1572669 m!5901046))

(assert (=> b!4894114 d!1572669))

(assert (=> b!4894114 d!1572611))

(assert (=> b!4894114 d!1572613))

(assert (=> b!4894114 d!1572311))

(declare-fun d!1572671 () Bool)

(assert (=> d!1572671 (= (isEmpty!30272 (_1!33536 lt!2006229)) (is-Nil!56408 (_1!33536 lt!2006229)))))

(assert (=> b!4893972 d!1572671))

(declare-fun b!4895012 () Bool)

(declare-fun res!2090665 () Bool)

(declare-fun e!3060034 () Bool)

(assert (=> b!4895012 (=> (not res!2090665) (not e!3060034))))

(assert (=> b!4895012 (= res!2090665 (isBalanced!4013 (left!40981 (right!41311 (c!831694 input!1236)))))))

(declare-fun b!4895013 () Bool)

(declare-fun res!2090663 () Bool)

(assert (=> b!4895013 (=> (not res!2090663) (not e!3060034))))

(assert (=> b!4895013 (= res!2090663 (<= (- (height!1956 (left!40981 (right!41311 (c!831694 input!1236)))) (height!1956 (right!41311 (right!41311 (c!831694 input!1236))))) 1))))

(declare-fun b!4895014 () Bool)

(declare-fun e!3060035 () Bool)

(assert (=> b!4895014 (= e!3060035 e!3060034)))

(declare-fun res!2090666 () Bool)

(assert (=> b!4895014 (=> (not res!2090666) (not e!3060034))))

(assert (=> b!4895014 (= res!2090666 (<= (- 1) (- (height!1956 (left!40981 (right!41311 (c!831694 input!1236)))) (height!1956 (right!41311 (right!41311 (c!831694 input!1236)))))))))

(declare-fun b!4895015 () Bool)

(assert (=> b!4895015 (= e!3060034 (not (isEmpty!30275 (right!41311 (right!41311 (c!831694 input!1236))))))))

(declare-fun d!1572673 () Bool)

(declare-fun res!2090664 () Bool)

(assert (=> d!1572673 (=> res!2090664 e!3060035)))

(assert (=> d!1572673 (= res!2090664 (not (is-Node!14743 (right!41311 (c!831694 input!1236)))))))

(assert (=> d!1572673 (= (isBalanced!4013 (right!41311 (c!831694 input!1236))) e!3060035)))

(declare-fun b!4895016 () Bool)

(declare-fun res!2090667 () Bool)

(assert (=> b!4895016 (=> (not res!2090667) (not e!3060034))))

(assert (=> b!4895016 (= res!2090667 (isBalanced!4013 (right!41311 (right!41311 (c!831694 input!1236)))))))

(declare-fun b!4895017 () Bool)

(declare-fun res!2090668 () Bool)

(assert (=> b!4895017 (=> (not res!2090668) (not e!3060034))))

(assert (=> b!4895017 (= res!2090668 (not (isEmpty!30275 (left!40981 (right!41311 (c!831694 input!1236))))))))

(assert (= (and d!1572673 (not res!2090664)) b!4895014))

(assert (= (and b!4895014 res!2090666) b!4895013))

(assert (= (and b!4895013 res!2090663) b!4895012))

(assert (= (and b!4895012 res!2090665) b!4895016))

(assert (= (and b!4895016 res!2090667) b!4895017))

(assert (= (and b!4895017 res!2090668) b!4895015))

(declare-fun m!5901048 () Bool)

(assert (=> b!4895012 m!5901048))

(assert (=> b!4895014 m!5899910))

(assert (=> b!4895014 m!5899912))

(declare-fun m!5901050 () Bool)

(assert (=> b!4895017 m!5901050))

(declare-fun m!5901052 () Bool)

(assert (=> b!4895015 m!5901052))

(declare-fun m!5901054 () Bool)

(assert (=> b!4895016 m!5901054))

(assert (=> b!4895013 m!5899910))

(assert (=> b!4895013 m!5899912))

(assert (=> b!4894164 d!1572673))

(assert (=> b!4894198 d!1572591))

(assert (=> b!4894198 d!1572385))

(assert (=> b!4894198 d!1571887))

(declare-fun d!1572675 () Bool)

(assert (=> d!1572675 (= (list!17727 (_2!33531 (get!19482 lt!2006391))) (list!17729 (c!831694 (_2!33531 (get!19482 lt!2006391)))))))

(declare-fun bs!1176231 () Bool)

(assert (= bs!1176231 d!1572675))

(declare-fun m!5901056 () Bool)

(assert (=> bs!1176231 m!5901056))

(assert (=> b!4894198 d!1572675))

(assert (=> b!4894198 d!1572593))

(assert (=> bs!1176122 d!1571931))

(declare-fun bs!1176232 () Bool)

(declare-fun d!1572677 () Bool)

(assert (= bs!1176232 (and d!1572677 d!1572541)))

(declare-fun lambda!244068 () Int)

(assert (=> bs!1176232 (= (and (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))) (= lambda!244068 lambda!244064))))

(declare-fun bs!1176233 () Bool)

(assert (= bs!1176233 (and d!1572677 b!4894981)))

(assert (=> bs!1176233 (= (and (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165)))))) (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))))) (= lambda!244068 lambda!244067))))

(declare-fun bs!1176234 () Bool)

(assert (= bs!1176234 (and d!1572677 d!1572575)))

(assert (=> bs!1176234 (= lambda!244068 lambda!244066)))

(declare-fun bs!1176235 () Bool)

(assert (= bs!1176235 (and d!1572677 d!1572357)))

(assert (=> bs!1176235 (= lambda!244068 lambda!244062)))

(declare-fun bs!1176236 () Bool)

(assert (= bs!1176236 (and d!1572677 b!4893578)))

(assert (=> bs!1176236 (= lambda!244068 lambda!244035)))

(declare-fun bs!1176237 () Bool)

(assert (= bs!1176237 (and d!1572677 d!1572083)))

(assert (=> bs!1176237 (= lambda!244068 lambda!244046)))

(declare-fun bs!1176238 () Bool)

(assert (= bs!1176238 (and d!1572677 b!4894201)))

(assert (=> bs!1176238 (= (and (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))) (= lambda!244068 lambda!244047))))

(declare-fun b!4895018 () Bool)

(declare-fun e!3060036 () Bool)

(assert (=> b!4895018 (= e!3060036 true)))

(assert (=> d!1572677 e!3060036))

(assert (= d!1572677 b!4895018))

(assert (=> b!4895018 (< (dynLambda!22635 order!25479 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) (dynLambda!22636 order!25481 lambda!244068))))

(assert (=> b!4895018 (< (dynLambda!22637 order!25483 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) (dynLambda!22636 order!25481 lambda!244068))))

(assert (=> d!1572677 (= (list!17727 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006346))))) (list!17727 (seqFromList!5937 (_1!33536 lt!2006346))))))

(declare-fun lt!2006782 () Unit!146435)

(assert (=> d!1572677 (= lt!2006782 (ForallOf!1134 lambda!244068 (seqFromList!5937 (_1!33536 lt!2006346))))))

(assert (=> d!1572677 (= (lemmaSemiInverse!2565 (transformation!8175 (h!62858 rulesArg!165)) (seqFromList!5937 (_1!33536 lt!2006346))) lt!2006782)))

(declare-fun b_lambda!194553 () Bool)

(assert (=> (not b_lambda!194553) (not d!1572677)))

(declare-fun t!365842 () Bool)

(declare-fun tb!259079 () Bool)

(assert (=> (and b!4893356 (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365842) tb!259079))

(declare-fun e!3060037 () Bool)

(declare-fun tp!1377414 () Bool)

(declare-fun b!4895019 () Bool)

(assert (=> b!4895019 (= e!3060037 (and (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006346)))))) tp!1377414))))

(declare-fun result!322666 () Bool)

(assert (=> tb!259079 (= result!322666 (and (inv!72690 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006346))))) e!3060037))))

(assert (= tb!259079 b!4895019))

(declare-fun m!5901058 () Bool)

(assert (=> b!4895019 m!5901058))

(declare-fun m!5901060 () Bool)

(assert (=> tb!259079 m!5901060))

(assert (=> d!1572677 t!365842))

(declare-fun b_and!345141 () Bool)

(assert (= b_and!345129 (and (=> t!365842 result!322666) b_and!345141)))

(declare-fun t!365844 () Bool)

(declare-fun tb!259081 () Bool)

(assert (=> (and b!4893636 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365844) tb!259081))

(declare-fun result!322668 () Bool)

(assert (= result!322668 result!322666))

(assert (=> d!1572677 t!365844))

(declare-fun b_and!345143 () Bool)

(assert (= b_and!345131 (and (=> t!365844 result!322668) b_and!345143)))

(declare-fun t!365846 () Bool)

(declare-fun tb!259083 () Bool)

(assert (=> (and b!4894220 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365846) tb!259083))

(declare-fun result!322670 () Bool)

(assert (= result!322670 result!322666))

(assert (=> d!1572677 t!365846))

(declare-fun b_and!345145 () Bool)

(assert (= b_and!345133 (and (=> t!365846 result!322670) b_and!345145)))

(declare-fun b_lambda!194555 () Bool)

(assert (=> (not b_lambda!194555) (not d!1572677)))

(declare-fun t!365848 () Bool)

(declare-fun tb!259085 () Bool)

(assert (=> (and b!4893356 (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365848) tb!259085))

(declare-fun result!322672 () Bool)

(assert (=> tb!259085 (= result!322672 (inv!21 (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006346)))))))

(declare-fun m!5901062 () Bool)

(assert (=> tb!259085 m!5901062))

(assert (=> d!1572677 t!365848))

(declare-fun b_and!345147 () Bool)

(assert (= b_and!345135 (and (=> t!365848 result!322672) b_and!345147)))

(declare-fun t!365850 () Bool)

(declare-fun tb!259087 () Bool)

(assert (=> (and b!4893636 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365850) tb!259087))

(declare-fun result!322674 () Bool)

(assert (= result!322674 result!322672))

(assert (=> d!1572677 t!365850))

(declare-fun b_and!345149 () Bool)

(assert (= b_and!345137 (and (=> t!365850 result!322674) b_and!345149)))

(declare-fun t!365852 () Bool)

(declare-fun tb!259089 () Bool)

(assert (=> (and b!4894220 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365852) tb!259089))

(declare-fun result!322676 () Bool)

(assert (= result!322676 result!322672))

(assert (=> d!1572677 t!365852))

(declare-fun b_and!345151 () Bool)

(assert (= b_and!345139 (and (=> t!365852 result!322676) b_and!345151)))

(assert (=> d!1572677 m!5899274))

(declare-fun m!5901064 () Bool)

(assert (=> d!1572677 m!5901064))

(assert (=> d!1572677 m!5901064))

(declare-fun m!5901066 () Bool)

(assert (=> d!1572677 m!5901066))

(assert (=> d!1572677 m!5899274))

(declare-fun m!5901068 () Bool)

(assert (=> d!1572677 m!5901068))

(assert (=> d!1572677 m!5901066))

(declare-fun m!5901070 () Bool)

(assert (=> d!1572677 m!5901070))

(assert (=> d!1572677 m!5899274))

(declare-fun m!5901072 () Bool)

(assert (=> d!1572677 m!5901072))

(assert (=> b!4894101 d!1572677))

(assert (=> b!4894101 d!1572353))

(assert (=> b!4894101 d!1571985))

(assert (=> b!4894101 d!1572355))

(assert (=> b!4894101 d!1572295))

(declare-fun d!1572679 () Bool)

(declare-fun lt!2006783 () Int)

(assert (=> d!1572679 (>= lt!2006783 0)))

(declare-fun e!3060039 () Int)

(assert (=> d!1572679 (= lt!2006783 e!3060039)))

(declare-fun c!832026 () Bool)

(assert (=> d!1572679 (= c!832026 (is-Nil!56408 (_1!33536 lt!2006346)))))

(assert (=> d!1572679 (= (size!37145 (_1!33536 lt!2006346)) lt!2006783)))

(declare-fun b!4895020 () Bool)

(assert (=> b!4895020 (= e!3060039 0)))

(declare-fun b!4895021 () Bool)

(assert (=> b!4895021 (= e!3060039 (+ 1 (size!37145 (t!365672 (_1!33536 lt!2006346)))))))

(assert (= (and d!1572679 c!832026) b!4895020))

(assert (= (and d!1572679 (not c!832026)) b!4895021))

(declare-fun m!5901074 () Bool)

(assert (=> b!4895021 m!5901074))

(assert (=> b!4894101 d!1572679))

(declare-fun d!1572681 () Bool)

(assert (=> d!1572681 (= (apply!13541 (transformation!8175 (h!62858 rulesArg!165)) (seqFromList!5937 (_1!33536 lt!2006346))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (_1!33536 lt!2006346))))))

(declare-fun b_lambda!194557 () Bool)

(assert (=> (not b_lambda!194557) (not d!1572681)))

(assert (=> d!1572681 t!365848))

(declare-fun b_and!345153 () Bool)

(assert (= b_and!345147 (and (=> t!365848 result!322672) b_and!345153)))

(assert (=> d!1572681 t!365850))

(declare-fun b_and!345155 () Bool)

(assert (= b_and!345149 (and (=> t!365850 result!322674) b_and!345155)))

(assert (=> d!1572681 t!365852))

(declare-fun b_and!345157 () Bool)

(assert (= b_and!345151 (and (=> t!365852 result!322676) b_and!345157)))

(assert (=> d!1572681 m!5899274))

(assert (=> d!1572681 m!5901064))

(assert (=> b!4894101 d!1572681))

(assert (=> b!4894101 d!1572021))

(declare-fun d!1572683 () Bool)

(assert (=> d!1572683 (= (seqFromList!5937 (_1!33536 lt!2006346)) (fromListB!2693 (_1!33536 lt!2006346)))))

(declare-fun bs!1176239 () Bool)

(assert (= bs!1176239 d!1572683))

(declare-fun m!5901076 () Bool)

(assert (=> bs!1176239 m!5901076))

(assert (=> b!4894101 d!1572683))

(assert (=> b!4894101 d!1572025))

(assert (=> d!1571927 d!1572619))

(assert (=> d!1571927 d!1572453))

(assert (=> d!1571927 d!1571887))

(declare-fun d!1572685 () Bool)

(assert (=> d!1572685 (= (list!17727 (_2!33535 lt!2006075)) (list!17729 (c!831694 (_2!33535 lt!2006075))))))

(declare-fun bs!1176240 () Bool)

(assert (= bs!1176240 d!1572685))

(declare-fun m!5901078 () Bool)

(assert (=> bs!1176240 m!5901078))

(assert (=> d!1571927 d!1572685))

(declare-fun d!1572687 () Bool)

(assert (=> d!1572687 (= (list!17727 (_1!33535 lt!2006075)) (list!17729 (c!831694 (_1!33535 lt!2006075))))))

(declare-fun bs!1176241 () Bool)

(assert (= bs!1176241 d!1572687))

(declare-fun m!5901080 () Bool)

(assert (=> bs!1176241 m!5901080))

(assert (=> d!1571927 d!1572687))

(declare-fun d!1572689 () Bool)

(declare-fun res!2090671 () tuple2!60464)

(assert (=> d!1572689 (= (tuple2!60467 (list!17727 (_1!33535 res!2090671)) (list!17727 (_2!33535 res!2090671))) (findLongestMatch!1648 (regex!8175 (h!62858 rulesArg!165)) (list!17727 input!1236)))))

(declare-fun e!3060044 () Bool)

(declare-fun e!3060045 () Bool)

(assert (=> d!1572689 (and (inv!72690 (_1!33535 res!2090671)) e!3060044 (inv!72690 (_2!33535 res!2090671)) e!3060045)))

(assert (=> d!1572689 (= (choose!35726 (regex!8175 (h!62858 rulesArg!165)) input!1236) res!2090671)))

(declare-fun b!4895026 () Bool)

(declare-fun tp!1377419 () Bool)

(assert (=> b!4895026 (= e!3060044 (and (inv!72691 (c!831694 (_1!33535 res!2090671))) tp!1377419))))

(declare-fun b!4895027 () Bool)

(declare-fun tp!1377420 () Bool)

(assert (=> b!4895027 (= e!3060045 (and (inv!72691 (c!831694 (_2!33535 res!2090671))) tp!1377420))))

(assert (= d!1572689 b!4895026))

(assert (= d!1572689 b!4895027))

(assert (=> d!1572689 m!5898444))

(declare-fun m!5901082 () Bool)

(assert (=> d!1572689 m!5901082))

(assert (=> d!1572689 m!5898444))

(assert (=> d!1572689 m!5898818))

(declare-fun m!5901084 () Bool)

(assert (=> d!1572689 m!5901084))

(declare-fun m!5901086 () Bool)

(assert (=> d!1572689 m!5901086))

(declare-fun m!5901088 () Bool)

(assert (=> d!1572689 m!5901088))

(declare-fun m!5901090 () Bool)

(assert (=> b!4895026 m!5901090))

(declare-fun m!5901092 () Bool)

(assert (=> b!4895027 m!5901092))

(assert (=> d!1571927 d!1572689))

(assert (=> b!4893970 d!1571991))

(declare-fun b!4895028 () Bool)

(declare-fun e!3060047 () List!56532)

(assert (=> b!4895028 (= e!3060047 (Cons!56408 lt!2006226 Nil!56408))))

(declare-fun b!4895030 () Bool)

(declare-fun res!2090672 () Bool)

(declare-fun e!3060046 () Bool)

(assert (=> b!4895030 (=> (not res!2090672) (not e!3060046))))

(declare-fun lt!2006784 () List!56532)

(assert (=> b!4895030 (= res!2090672 (= (size!37145 lt!2006784) (+ (size!37145 Nil!56408) (size!37145 (Cons!56408 lt!2006226 Nil!56408)))))))

(declare-fun b!4895029 () Bool)

(assert (=> b!4895029 (= e!3060047 (Cons!56408 (h!62856 Nil!56408) (++!12244 (t!365672 Nil!56408) (Cons!56408 lt!2006226 Nil!56408))))))

(declare-fun d!1572691 () Bool)

(assert (=> d!1572691 e!3060046))

(declare-fun res!2090673 () Bool)

(assert (=> d!1572691 (=> (not res!2090673) (not e!3060046))))

(assert (=> d!1572691 (= res!2090673 (= (content!10019 lt!2006784) (set.union (content!10019 Nil!56408) (content!10019 (Cons!56408 lt!2006226 Nil!56408)))))))

(assert (=> d!1572691 (= lt!2006784 e!3060047)))

(declare-fun c!832027 () Bool)

(assert (=> d!1572691 (= c!832027 (is-Nil!56408 Nil!56408))))

(assert (=> d!1572691 (= (++!12244 Nil!56408 (Cons!56408 lt!2006226 Nil!56408)) lt!2006784)))

(declare-fun b!4895031 () Bool)

(assert (=> b!4895031 (= e!3060046 (or (not (= (Cons!56408 lt!2006226 Nil!56408) Nil!56408)) (= lt!2006784 Nil!56408)))))

(assert (= (and d!1572691 c!832027) b!4895028))

(assert (= (and d!1572691 (not c!832027)) b!4895029))

(assert (= (and d!1572691 res!2090673) b!4895030))

(assert (= (and b!4895030 res!2090672) b!4895031))

(declare-fun m!5901094 () Bool)

(assert (=> b!4895030 m!5901094))

(assert (=> b!4895030 m!5898636))

(declare-fun m!5901096 () Bool)

(assert (=> b!4895030 m!5901096))

(declare-fun m!5901098 () Bool)

(assert (=> b!4895029 m!5901098))

(declare-fun m!5901100 () Bool)

(assert (=> d!1572691 m!5901100))

(assert (=> d!1572691 m!5900948))

(declare-fun m!5901102 () Bool)

(assert (=> d!1572691 m!5901102))

(assert (=> b!4893970 d!1572691))

(declare-fun d!1572693 () Bool)

(assert (=> d!1572693 (= (++!12244 (++!12244 Nil!56408 (Cons!56408 lt!2006226 Nil!56408)) lt!2006228) lt!2006027)))

(declare-fun lt!2006787 () Unit!146435)

(declare-fun choose!35741 (List!56532 C!26698 List!56532 List!56532) Unit!146435)

(assert (=> d!1572693 (= lt!2006787 (choose!35741 Nil!56408 lt!2006226 lt!2006228 lt!2006027))))

(assert (=> d!1572693 (= (++!12244 Nil!56408 (Cons!56408 lt!2006226 lt!2006228)) lt!2006027)))

(assert (=> d!1572693 (= (lemmaMoveElementToOtherListKeepsConcatEq!1331 Nil!56408 lt!2006226 lt!2006228 lt!2006027) lt!2006787)))

(declare-fun bs!1176242 () Bool)

(assert (= bs!1176242 d!1572693))

(assert (=> bs!1176242 m!5899026))

(assert (=> bs!1176242 m!5899026))

(assert (=> bs!1176242 m!5899028))

(declare-fun m!5901104 () Bool)

(assert (=> bs!1176242 m!5901104))

(declare-fun m!5901106 () Bool)

(assert (=> bs!1176242 m!5901106))

(assert (=> b!4893970 d!1572693))

(declare-fun d!1572695 () Bool)

(assert (=> d!1572695 (isPrefix!4895 (++!12244 Nil!56408 (Cons!56408 (head!10456 (getSuffix!2888 lt!2006027 Nil!56408)) Nil!56408)) lt!2006027)))

(declare-fun lt!2006790 () Unit!146435)

(declare-fun choose!35742 (List!56532 List!56532) Unit!146435)

(assert (=> d!1572695 (= lt!2006790 (choose!35742 Nil!56408 lt!2006027))))

(assert (=> d!1572695 (isPrefix!4895 Nil!56408 lt!2006027)))

(assert (=> d!1572695 (= (lemmaAddHeadSuffixToPrefixStillPrefix!713 Nil!56408 lt!2006027) lt!2006790)))

(declare-fun bs!1176243 () Bool)

(assert (= bs!1176243 d!1572695))

(assert (=> bs!1176243 m!5900940))

(assert (=> bs!1176243 m!5899016))

(assert (=> bs!1176243 m!5899022))

(assert (=> bs!1176243 m!5899016))

(assert (=> bs!1176243 m!5899018))

(assert (=> bs!1176243 m!5899022))

(assert (=> bs!1176243 m!5899024))

(declare-fun m!5901108 () Bool)

(assert (=> bs!1176243 m!5901108))

(assert (=> b!4893970 d!1572695))

(declare-fun d!1572697 () Bool)

(assert (=> d!1572697 (= (head!10456 (getSuffix!2888 lt!2006027 Nil!56408)) (h!62856 (getSuffix!2888 lt!2006027 Nil!56408)))))

(assert (=> b!4893970 d!1572697))

(declare-fun b!4895035 () Bool)

(declare-fun e!3060048 () Bool)

(assert (=> b!4895035 (= e!3060048 (>= (size!37145 lt!2006027) (size!37145 (++!12244 Nil!56408 (Cons!56408 (head!10456 (getSuffix!2888 lt!2006027 Nil!56408)) Nil!56408)))))))

(declare-fun d!1572699 () Bool)

(assert (=> d!1572699 e!3060048))

(declare-fun res!2090676 () Bool)

(assert (=> d!1572699 (=> res!2090676 e!3060048)))

(declare-fun lt!2006791 () Bool)

(assert (=> d!1572699 (= res!2090676 (not lt!2006791))))

(declare-fun e!3060050 () Bool)

(assert (=> d!1572699 (= lt!2006791 e!3060050)))

(declare-fun res!2090674 () Bool)

(assert (=> d!1572699 (=> res!2090674 e!3060050)))

(assert (=> d!1572699 (= res!2090674 (is-Nil!56408 (++!12244 Nil!56408 (Cons!56408 (head!10456 (getSuffix!2888 lt!2006027 Nil!56408)) Nil!56408))))))

(assert (=> d!1572699 (= (isPrefix!4895 (++!12244 Nil!56408 (Cons!56408 (head!10456 (getSuffix!2888 lt!2006027 Nil!56408)) Nil!56408)) lt!2006027) lt!2006791)))

(declare-fun b!4895033 () Bool)

(declare-fun res!2090677 () Bool)

(declare-fun e!3060049 () Bool)

(assert (=> b!4895033 (=> (not res!2090677) (not e!3060049))))

(assert (=> b!4895033 (= res!2090677 (= (head!10456 (++!12244 Nil!56408 (Cons!56408 (head!10456 (getSuffix!2888 lt!2006027 Nil!56408)) Nil!56408))) (head!10456 lt!2006027)))))

(declare-fun b!4895032 () Bool)

(assert (=> b!4895032 (= e!3060050 e!3060049)))

(declare-fun res!2090675 () Bool)

(assert (=> b!4895032 (=> (not res!2090675) (not e!3060049))))

(assert (=> b!4895032 (= res!2090675 (not (is-Nil!56408 lt!2006027)))))

(declare-fun b!4895034 () Bool)

(assert (=> b!4895034 (= e!3060049 (isPrefix!4895 (tail!9602 (++!12244 Nil!56408 (Cons!56408 (head!10456 (getSuffix!2888 lt!2006027 Nil!56408)) Nil!56408))) (tail!9602 lt!2006027)))))

(assert (= (and d!1572699 (not res!2090674)) b!4895032))

(assert (= (and b!4895032 res!2090675) b!4895033))

(assert (= (and b!4895033 res!2090677) b!4895034))

(assert (= (and d!1572699 (not res!2090676)) b!4895035))

(assert (=> b!4895035 m!5898638))

(assert (=> b!4895035 m!5899022))

(declare-fun m!5901110 () Bool)

(assert (=> b!4895035 m!5901110))

(assert (=> b!4895033 m!5899022))

(declare-fun m!5901112 () Bool)

(assert (=> b!4895033 m!5901112))

(assert (=> b!4895033 m!5899006))

(assert (=> b!4895034 m!5899022))

(declare-fun m!5901114 () Bool)

(assert (=> b!4895034 m!5901114))

(assert (=> b!4895034 m!5899030))

(assert (=> b!4895034 m!5901114))

(assert (=> b!4895034 m!5899030))

(declare-fun m!5901116 () Bool)

(assert (=> b!4895034 m!5901116))

(assert (=> b!4893970 d!1572699))

(declare-fun d!1572701 () Bool)

(assert (=> d!1572701 (<= (size!37145 Nil!56408) (size!37145 lt!2006027))))

(declare-fun lt!2006794 () Unit!146435)

(declare-fun choose!35743 (List!56532 List!56532) Unit!146435)

(assert (=> d!1572701 (= lt!2006794 (choose!35743 Nil!56408 lt!2006027))))

(assert (=> d!1572701 (isPrefix!4895 Nil!56408 lt!2006027)))

(assert (=> d!1572701 (= (lemmaIsPrefixThenSmallerEqSize!625 Nil!56408 lt!2006027) lt!2006794)))

(declare-fun bs!1176244 () Bool)

(assert (= bs!1176244 d!1572701))

(assert (=> bs!1176244 m!5898636))

(assert (=> bs!1176244 m!5898638))

(declare-fun m!5901118 () Bool)

(assert (=> bs!1176244 m!5901118))

(assert (=> bs!1176244 m!5900940))

(assert (=> b!4893970 d!1572701))

(assert (=> b!4893970 d!1572637))

(assert (=> b!4893970 d!1572405))

(assert (=> b!4893970 d!1572537))

(declare-fun b!4895036 () Bool)

(declare-fun e!3060052 () List!56532)

(assert (=> b!4895036 (= e!3060052 lt!2006228)))

(declare-fun b!4895038 () Bool)

(declare-fun res!2090678 () Bool)

(declare-fun e!3060051 () Bool)

(assert (=> b!4895038 (=> (not res!2090678) (not e!3060051))))

(declare-fun lt!2006795 () List!56532)

(assert (=> b!4895038 (= res!2090678 (= (size!37145 lt!2006795) (+ (size!37145 (++!12244 Nil!56408 (Cons!56408 lt!2006226 Nil!56408))) (size!37145 lt!2006228))))))

(declare-fun b!4895037 () Bool)

(assert (=> b!4895037 (= e!3060052 (Cons!56408 (h!62856 (++!12244 Nil!56408 (Cons!56408 lt!2006226 Nil!56408))) (++!12244 (t!365672 (++!12244 Nil!56408 (Cons!56408 lt!2006226 Nil!56408))) lt!2006228)))))

(declare-fun d!1572703 () Bool)

(assert (=> d!1572703 e!3060051))

(declare-fun res!2090679 () Bool)

(assert (=> d!1572703 (=> (not res!2090679) (not e!3060051))))

(assert (=> d!1572703 (= res!2090679 (= (content!10019 lt!2006795) (set.union (content!10019 (++!12244 Nil!56408 (Cons!56408 lt!2006226 Nil!56408))) (content!10019 lt!2006228))))))

(assert (=> d!1572703 (= lt!2006795 e!3060052)))

(declare-fun c!832028 () Bool)

(assert (=> d!1572703 (= c!832028 (is-Nil!56408 (++!12244 Nil!56408 (Cons!56408 lt!2006226 Nil!56408))))))

(assert (=> d!1572703 (= (++!12244 (++!12244 Nil!56408 (Cons!56408 lt!2006226 Nil!56408)) lt!2006228) lt!2006795)))

(declare-fun b!4895039 () Bool)

(assert (=> b!4895039 (= e!3060051 (or (not (= lt!2006228 Nil!56408)) (= lt!2006795 (++!12244 Nil!56408 (Cons!56408 lt!2006226 Nil!56408)))))))

(assert (= (and d!1572703 c!832028) b!4895036))

(assert (= (and d!1572703 (not c!832028)) b!4895037))

(assert (= (and d!1572703 res!2090679) b!4895038))

(assert (= (and b!4895038 res!2090678) b!4895039))

(declare-fun m!5901120 () Bool)

(assert (=> b!4895038 m!5901120))

(assert (=> b!4895038 m!5899026))

(declare-fun m!5901122 () Bool)

(assert (=> b!4895038 m!5901122))

(declare-fun m!5901124 () Bool)

(assert (=> b!4895038 m!5901124))

(declare-fun m!5901126 () Bool)

(assert (=> b!4895037 m!5901126))

(declare-fun m!5901128 () Bool)

(assert (=> d!1572703 m!5901128))

(assert (=> d!1572703 m!5899026))

(declare-fun m!5901130 () Bool)

(assert (=> d!1572703 m!5901130))

(declare-fun m!5901132 () Bool)

(assert (=> d!1572703 m!5901132))

(assert (=> b!4893970 d!1572703))

(declare-fun b!4895040 () Bool)

(declare-fun e!3060054 () List!56532)

(assert (=> b!4895040 (= e!3060054 (Cons!56408 (head!10456 (getSuffix!2888 lt!2006027 Nil!56408)) Nil!56408))))

(declare-fun b!4895042 () Bool)

(declare-fun res!2090680 () Bool)

(declare-fun e!3060053 () Bool)

(assert (=> b!4895042 (=> (not res!2090680) (not e!3060053))))

(declare-fun lt!2006796 () List!56532)

(assert (=> b!4895042 (= res!2090680 (= (size!37145 lt!2006796) (+ (size!37145 Nil!56408) (size!37145 (Cons!56408 (head!10456 (getSuffix!2888 lt!2006027 Nil!56408)) Nil!56408)))))))

(declare-fun b!4895041 () Bool)

(assert (=> b!4895041 (= e!3060054 (Cons!56408 (h!62856 Nil!56408) (++!12244 (t!365672 Nil!56408) (Cons!56408 (head!10456 (getSuffix!2888 lt!2006027 Nil!56408)) Nil!56408))))))

(declare-fun d!1572705 () Bool)

(assert (=> d!1572705 e!3060053))

(declare-fun res!2090681 () Bool)

(assert (=> d!1572705 (=> (not res!2090681) (not e!3060053))))

(assert (=> d!1572705 (= res!2090681 (= (content!10019 lt!2006796) (set.union (content!10019 Nil!56408) (content!10019 (Cons!56408 (head!10456 (getSuffix!2888 lt!2006027 Nil!56408)) Nil!56408)))))))

(assert (=> d!1572705 (= lt!2006796 e!3060054)))

(declare-fun c!832029 () Bool)

(assert (=> d!1572705 (= c!832029 (is-Nil!56408 Nil!56408))))

(assert (=> d!1572705 (= (++!12244 Nil!56408 (Cons!56408 (head!10456 (getSuffix!2888 lt!2006027 Nil!56408)) Nil!56408)) lt!2006796)))

(declare-fun b!4895043 () Bool)

(assert (=> b!4895043 (= e!3060053 (or (not (= (Cons!56408 (head!10456 (getSuffix!2888 lt!2006027 Nil!56408)) Nil!56408) Nil!56408)) (= lt!2006796 Nil!56408)))))

(assert (= (and d!1572705 c!832029) b!4895040))

(assert (= (and d!1572705 (not c!832029)) b!4895041))

(assert (= (and d!1572705 res!2090681) b!4895042))

(assert (= (and b!4895042 res!2090680) b!4895043))

(declare-fun m!5901134 () Bool)

(assert (=> b!4895042 m!5901134))

(assert (=> b!4895042 m!5898636))

(declare-fun m!5901136 () Bool)

(assert (=> b!4895042 m!5901136))

(declare-fun m!5901138 () Bool)

(assert (=> b!4895041 m!5901138))

(declare-fun m!5901140 () Bool)

(assert (=> d!1572705 m!5901140))

(assert (=> d!1572705 m!5900948))

(declare-fun m!5901142 () Bool)

(assert (=> d!1572705 m!5901142))

(assert (=> b!4893970 d!1572705))

(declare-fun b!4895044 () Bool)

(declare-fun e!3060056 () List!56532)

(assert (=> b!4895044 (= e!3060056 (Cons!56408 (head!10456 lt!2006027) Nil!56408))))

(declare-fun b!4895046 () Bool)

(declare-fun res!2090682 () Bool)

(declare-fun e!3060055 () Bool)

(assert (=> b!4895046 (=> (not res!2090682) (not e!3060055))))

(declare-fun lt!2006797 () List!56532)

(assert (=> b!4895046 (= res!2090682 (= (size!37145 lt!2006797) (+ (size!37145 Nil!56408) (size!37145 (Cons!56408 (head!10456 lt!2006027) Nil!56408)))))))

(declare-fun b!4895045 () Bool)

(assert (=> b!4895045 (= e!3060056 (Cons!56408 (h!62856 Nil!56408) (++!12244 (t!365672 Nil!56408) (Cons!56408 (head!10456 lt!2006027) Nil!56408))))))

(declare-fun d!1572707 () Bool)

(assert (=> d!1572707 e!3060055))

(declare-fun res!2090683 () Bool)

(assert (=> d!1572707 (=> (not res!2090683) (not e!3060055))))

(assert (=> d!1572707 (= res!2090683 (= (content!10019 lt!2006797) (set.union (content!10019 Nil!56408) (content!10019 (Cons!56408 (head!10456 lt!2006027) Nil!56408)))))))

(assert (=> d!1572707 (= lt!2006797 e!3060056)))

(declare-fun c!832030 () Bool)

(assert (=> d!1572707 (= c!832030 (is-Nil!56408 Nil!56408))))

(assert (=> d!1572707 (= (++!12244 Nil!56408 (Cons!56408 (head!10456 lt!2006027) Nil!56408)) lt!2006797)))

(declare-fun b!4895047 () Bool)

(assert (=> b!4895047 (= e!3060055 (or (not (= (Cons!56408 (head!10456 lt!2006027) Nil!56408) Nil!56408)) (= lt!2006797 Nil!56408)))))

(assert (= (and d!1572707 c!832030) b!4895044))

(assert (= (and d!1572707 (not c!832030)) b!4895045))

(assert (= (and d!1572707 res!2090683) b!4895046))

(assert (= (and b!4895046 res!2090682) b!4895047))

(declare-fun m!5901144 () Bool)

(assert (=> b!4895046 m!5901144))

(assert (=> b!4895046 m!5898636))

(declare-fun m!5901146 () Bool)

(assert (=> b!4895046 m!5901146))

(declare-fun m!5901148 () Bool)

(assert (=> b!4895045 m!5901148))

(declare-fun m!5901150 () Bool)

(assert (=> d!1572707 m!5901150))

(assert (=> d!1572707 m!5900948))

(declare-fun m!5901152 () Bool)

(assert (=> d!1572707 m!5901152))

(assert (=> b!4893970 d!1572707))

(assert (=> b!4893970 d!1572025))

(declare-fun d!1572709 () Bool)

(assert (=> d!1572709 (= (inv!72690 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (value!262139 (_1!33532 (get!19481 lt!2005936))))) (isBalanced!4013 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (value!262139 (_1!33532 (get!19481 lt!2005936)))))))))

(declare-fun bs!1176245 () Bool)

(assert (= bs!1176245 d!1572709))

(declare-fun m!5901154 () Bool)

(assert (=> bs!1176245 m!5901154))

(assert (=> tb!258923 d!1572709))

(declare-fun b!4895051 () Bool)

(declare-fun e!3060058 () List!56532)

(assert (=> b!4895051 (= e!3060058 (++!12244 (list!17729 (left!40981 (c!831694 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))) (list!17729 (right!41311 (c!831694 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))))

(declare-fun b!4895048 () Bool)

(declare-fun e!3060057 () List!56532)

(assert (=> b!4895048 (= e!3060057 Nil!56408)))

(declare-fun d!1572711 () Bool)

(declare-fun c!832031 () Bool)

(assert (=> d!1572711 (= c!832031 (is-Empty!14743 (c!831694 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))

(assert (=> d!1572711 (= (list!17729 (c!831694 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))) e!3060057)))

(declare-fun b!4895049 () Bool)

(assert (=> b!4895049 (= e!3060057 e!3060058)))

(declare-fun c!832032 () Bool)

(assert (=> b!4895049 (= c!832032 (is-Leaf!24548 (c!831694 (charsOf!5375 (_1!33532 (get!19481 lt!2005936))))))))

(declare-fun b!4895050 () Bool)

(assert (=> b!4895050 (= e!3060058 (list!17731 (xs!18059 (c!831694 (charsOf!5375 (_1!33532 (get!19481 lt!2005936)))))))))

(assert (= (and d!1572711 c!832031) b!4895048))

(assert (= (and d!1572711 (not c!832031)) b!4895049))

(assert (= (and b!4895049 c!832032) b!4895050))

(assert (= (and b!4895049 (not c!832032)) b!4895051))

(declare-fun m!5901156 () Bool)

(assert (=> b!4895051 m!5901156))

(declare-fun m!5901158 () Bool)

(assert (=> b!4895051 m!5901158))

(assert (=> b!4895051 m!5901156))

(assert (=> b!4895051 m!5901158))

(declare-fun m!5901160 () Bool)

(assert (=> b!4895051 m!5901160))

(declare-fun m!5901162 () Bool)

(assert (=> b!4895050 m!5901162))

(assert (=> d!1571935 d!1572711))

(assert (=> b!4894011 d!1571987))

(declare-fun d!1572713 () Bool)

(declare-fun res!2090684 () Bool)

(declare-fun e!3060059 () Bool)

(assert (=> d!1572713 (=> (not res!2090684) (not e!3060059))))

(assert (=> d!1572713 (= res!2090684 (= (csize!29716 (left!40981 (c!831694 input!1236))) (+ (size!37149 (left!40981 (left!40981 (c!831694 input!1236)))) (size!37149 (right!41311 (left!40981 (c!831694 input!1236)))))))))

(assert (=> d!1572713 (= (inv!72695 (left!40981 (c!831694 input!1236))) e!3060059)))

(declare-fun b!4895052 () Bool)

(declare-fun res!2090685 () Bool)

(assert (=> b!4895052 (=> (not res!2090685) (not e!3060059))))

(assert (=> b!4895052 (= res!2090685 (and (not (= (left!40981 (left!40981 (c!831694 input!1236))) Empty!14743)) (not (= (right!41311 (left!40981 (c!831694 input!1236))) Empty!14743))))))

(declare-fun b!4895053 () Bool)

(declare-fun res!2090686 () Bool)

(assert (=> b!4895053 (=> (not res!2090686) (not e!3060059))))

(assert (=> b!4895053 (= res!2090686 (= (cheight!14954 (left!40981 (c!831694 input!1236))) (+ (max!0 (height!1956 (left!40981 (left!40981 (c!831694 input!1236)))) (height!1956 (right!41311 (left!40981 (c!831694 input!1236))))) 1)))))

(declare-fun b!4895054 () Bool)

(assert (=> b!4895054 (= e!3060059 (<= 0 (cheight!14954 (left!40981 (c!831694 input!1236)))))))

(assert (= (and d!1572713 res!2090684) b!4895052))

(assert (= (and b!4895052 res!2090685) b!4895053))

(assert (= (and b!4895053 res!2090686) b!4895054))

(declare-fun m!5901164 () Bool)

(assert (=> d!1572713 m!5901164))

(declare-fun m!5901166 () Bool)

(assert (=> d!1572713 m!5901166))

(assert (=> b!4895053 m!5899922))

(assert (=> b!4895053 m!5899924))

(assert (=> b!4895053 m!5899922))

(assert (=> b!4895053 m!5899924))

(declare-fun m!5901168 () Bool)

(assert (=> b!4895053 m!5901168))

(assert (=> b!4894122 d!1572713))

(declare-fun b!4895055 () Bool)

(declare-fun e!3060061 () Bool)

(declare-fun e!3060062 () Bool)

(assert (=> b!4895055 (= e!3060061 e!3060062)))

(declare-fun res!2090688 () Bool)

(assert (=> b!4895055 (=> (not res!2090688) (not e!3060062))))

(declare-fun lt!2006799 () Option!14028)

(assert (=> b!4895055 (= res!2090688 (isDefined!11040 lt!2006799))))

(declare-fun b!4895056 () Bool)

(assert (=> b!4895056 (= e!3060062 (contains!19438 (t!365674 (t!365674 rulesArg!165)) (rule!11365 (_1!33532 (get!19481 lt!2006799)))))))

(declare-fun d!1572715 () Bool)

(assert (=> d!1572715 e!3060061))

(declare-fun res!2090687 () Bool)

(assert (=> d!1572715 (=> res!2090687 e!3060061)))

(assert (=> d!1572715 (= res!2090687 (isEmpty!30267 lt!2006799))))

(declare-fun e!3060060 () Option!14028)

(assert (=> d!1572715 (= lt!2006799 e!3060060)))

(declare-fun c!832033 () Bool)

(assert (=> d!1572715 (= c!832033 (and (is-Cons!56410 (t!365674 (t!365674 rulesArg!165))) (is-Nil!56410 (t!365674 (t!365674 (t!365674 rulesArg!165))))))))

(declare-fun lt!2006800 () Unit!146435)

(declare-fun lt!2006801 () Unit!146435)

(assert (=> d!1572715 (= lt!2006800 lt!2006801)))

(assert (=> d!1572715 (isPrefix!4895 lt!2005844 lt!2005844)))

(assert (=> d!1572715 (= lt!2006801 (lemmaIsPrefixRefl!3292 lt!2005844 lt!2005844))))

(assert (=> d!1572715 (rulesValidInductive!3154 thiss!14805 (t!365674 (t!365674 rulesArg!165)))))

(assert (=> d!1572715 (= (maxPrefix!4604 thiss!14805 (t!365674 (t!365674 rulesArg!165)) lt!2005844) lt!2006799)))

(declare-fun b!4895057 () Bool)

(declare-fun res!2090689 () Bool)

(assert (=> b!4895057 (=> (not res!2090689) (not e!3060062))))

(assert (=> b!4895057 (= res!2090689 (= (++!12244 (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006799)))) (_2!33532 (get!19481 lt!2006799))) lt!2005844))))

(declare-fun bm!339555 () Bool)

(declare-fun call!339560 () Option!14028)

(assert (=> bm!339555 (= call!339560 (maxPrefixOneRule!3530 thiss!14805 (h!62858 (t!365674 (t!365674 rulesArg!165))) lt!2005844))))

(declare-fun b!4895058 () Bool)

(declare-fun lt!2006802 () Option!14028)

(declare-fun lt!2006798 () Option!14028)

(assert (=> b!4895058 (= e!3060060 (ite (and (is-None!14027 lt!2006802) (is-None!14027 lt!2006798)) None!14027 (ite (is-None!14027 lt!2006798) lt!2006802 (ite (is-None!14027 lt!2006802) lt!2006798 (ite (>= (size!37143 (_1!33532 (v!49981 lt!2006802))) (size!37143 (_1!33532 (v!49981 lt!2006798)))) lt!2006802 lt!2006798)))))))

(assert (=> b!4895058 (= lt!2006802 call!339560)))

(assert (=> b!4895058 (= lt!2006798 (maxPrefix!4604 thiss!14805 (t!365674 (t!365674 (t!365674 rulesArg!165))) lt!2005844))))

(declare-fun b!4895059 () Bool)

(assert (=> b!4895059 (= e!3060060 call!339560)))

(declare-fun b!4895060 () Bool)

(declare-fun res!2090693 () Bool)

(assert (=> b!4895060 (=> (not res!2090693) (not e!3060062))))

(assert (=> b!4895060 (= res!2090693 (matchR!6531 (regex!8175 (rule!11365 (_1!33532 (get!19481 lt!2006799)))) (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006799))))))))

(declare-fun b!4895061 () Bool)

(declare-fun res!2090692 () Bool)

(assert (=> b!4895061 (=> (not res!2090692) (not e!3060062))))

(assert (=> b!4895061 (= res!2090692 (= (list!17727 (charsOf!5375 (_1!33532 (get!19481 lt!2006799)))) (originalCharacters!8488 (_1!33532 (get!19481 lt!2006799)))))))

(declare-fun b!4895062 () Bool)

(declare-fun res!2090691 () Bool)

(assert (=> b!4895062 (=> (not res!2090691) (not e!3060062))))

(assert (=> b!4895062 (= res!2090691 (= (value!262139 (_1!33532 (get!19481 lt!2006799))) (apply!13541 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006799)))) (seqFromList!5937 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006799)))))))))

(declare-fun b!4895063 () Bool)

(declare-fun res!2090690 () Bool)

(assert (=> b!4895063 (=> (not res!2090690) (not e!3060062))))

(assert (=> b!4895063 (= res!2090690 (< (size!37145 (_2!33532 (get!19481 lt!2006799))) (size!37145 lt!2005844)))))

(assert (= (and d!1572715 c!832033) b!4895059))

(assert (= (and d!1572715 (not c!832033)) b!4895058))

(assert (= (or b!4895059 b!4895058) bm!339555))

(assert (= (and d!1572715 (not res!2090687)) b!4895055))

(assert (= (and b!4895055 res!2090688) b!4895061))

(assert (= (and b!4895061 res!2090692) b!4895063))

(assert (= (and b!4895063 res!2090690) b!4895057))

(assert (= (and b!4895057 res!2090689) b!4895062))

(assert (= (and b!4895062 res!2090691) b!4895060))

(assert (= (and b!4895060 res!2090693) b!4895056))

(declare-fun m!5901170 () Bool)

(assert (=> b!4895056 m!5901170))

(declare-fun m!5901172 () Bool)

(assert (=> b!4895056 m!5901172))

(declare-fun m!5901174 () Bool)

(assert (=> d!1572715 m!5901174))

(assert (=> d!1572715 m!5898440))

(assert (=> d!1572715 m!5898442))

(assert (=> d!1572715 m!5898952))

(declare-fun m!5901176 () Bool)

(assert (=> b!4895058 m!5901176))

(assert (=> b!4895060 m!5901170))

(declare-fun m!5901178 () Bool)

(assert (=> b!4895060 m!5901178))

(assert (=> b!4895060 m!5901178))

(declare-fun m!5901180 () Bool)

(assert (=> b!4895060 m!5901180))

(assert (=> b!4895060 m!5901180))

(declare-fun m!5901182 () Bool)

(assert (=> b!4895060 m!5901182))

(assert (=> b!4895061 m!5901170))

(assert (=> b!4895061 m!5901178))

(assert (=> b!4895061 m!5901178))

(assert (=> b!4895061 m!5901180))

(assert (=> b!4895057 m!5901170))

(assert (=> b!4895057 m!5901178))

(assert (=> b!4895057 m!5901178))

(assert (=> b!4895057 m!5901180))

(assert (=> b!4895057 m!5901180))

(declare-fun m!5901184 () Bool)

(assert (=> b!4895057 m!5901184))

(assert (=> b!4895063 m!5901170))

(declare-fun m!5901186 () Bool)

(assert (=> b!4895063 m!5901186))

(assert (=> b!4895063 m!5898538))

(assert (=> b!4895062 m!5901170))

(declare-fun m!5901188 () Bool)

(assert (=> b!4895062 m!5901188))

(assert (=> b!4895062 m!5901188))

(declare-fun m!5901190 () Bool)

(assert (=> b!4895062 m!5901190))

(declare-fun m!5901192 () Bool)

(assert (=> bm!339555 m!5901192))

(declare-fun m!5901194 () Bool)

(assert (=> b!4895055 m!5901194))

(assert (=> b!4893777 d!1572715))

(assert (=> b!4894118 d!1572293))

(assert (=> b!4894118 d!1572295))

(assert (=> b!4894118 d!1572025))

(assert (=> b!4894118 d!1571985))

(assert (=> b!4894176 d!1572235))

(assert (=> b!4893828 d!1572651))

(assert (=> b!4893828 d!1572447))

(assert (=> b!4893834 d!1572491))

(assert (=> b!4894128 d!1572275))

(assert (=> b!4894128 d!1572277))

(assert (=> d!1572091 d!1571989))

(assert (=> d!1572091 d!1572453))

(assert (=> b!4893739 d!1572301))

(declare-fun d!1572717 () Bool)

(declare-fun lt!2006803 () Int)

(assert (=> d!1572717 (>= lt!2006803 0)))

(declare-fun e!3060063 () Int)

(assert (=> d!1572717 (= lt!2006803 e!3060063)))

(declare-fun c!832034 () Bool)

(assert (=> d!1572717 (= c!832034 (is-Nil!56408 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006068)))))))

(assert (=> d!1572717 (= (size!37145 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006068)))) lt!2006803)))

(declare-fun b!4895064 () Bool)

(assert (=> b!4895064 (= e!3060063 0)))

(declare-fun b!4895065 () Bool)

(assert (=> b!4895065 (= e!3060063 (+ 1 (size!37145 (t!365672 (originalCharacters!8488 (_1!33532 (get!19481 lt!2006068)))))))))

(assert (= (and d!1572717 c!832034) b!4895064))

(assert (= (and d!1572717 (not c!832034)) b!4895065))

(declare-fun m!5901196 () Bool)

(assert (=> b!4895065 m!5901196))

(assert (=> b!4893739 d!1572717))

(declare-fun d!1572719 () Bool)

(declare-fun lt!2006804 () Int)

(assert (=> d!1572719 (>= lt!2006804 0)))

(declare-fun e!3060064 () Int)

(assert (=> d!1572719 (= lt!2006804 e!3060064)))

(declare-fun c!832035 () Bool)

(assert (=> d!1572719 (= c!832035 (is-Nil!56408 (t!365672 lt!2005844)))))

(assert (=> d!1572719 (= (size!37145 (t!365672 lt!2005844)) lt!2006804)))

(declare-fun b!4895066 () Bool)

(assert (=> b!4895066 (= e!3060064 0)))

(declare-fun b!4895067 () Bool)

(assert (=> b!4895067 (= e!3060064 (+ 1 (size!37145 (t!365672 (t!365672 lt!2005844)))))))

(assert (= (and d!1572719 c!832035) b!4895066))

(assert (= (and d!1572719 (not c!832035)) b!4895067))

(declare-fun m!5901198 () Bool)

(assert (=> b!4895067 m!5901198))

(assert (=> b!4893860 d!1572719))

(declare-fun b!4895071 () Bool)

(declare-fun e!3060065 () Bool)

(declare-fun tp!1377425 () Bool)

(declare-fun tp!1377422 () Bool)

(assert (=> b!4895071 (= e!3060065 (and tp!1377425 tp!1377422))))

(declare-fun b!4895070 () Bool)

(declare-fun tp!1377424 () Bool)

(assert (=> b!4895070 (= e!3060065 tp!1377424)))

(declare-fun b!4895069 () Bool)

(declare-fun tp!1377421 () Bool)

(declare-fun tp!1377423 () Bool)

(assert (=> b!4895069 (= e!3060065 (and tp!1377421 tp!1377423))))

(declare-fun b!4895068 () Bool)

(assert (=> b!4895068 (= e!3060065 tp_is_empty!35781)))

(assert (=> b!4894245 (= tp!1377353 e!3060065)))

(assert (= (and b!4894245 (is-ElementMatch!13250 (regOne!27012 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895068))

(assert (= (and b!4894245 (is-Concat!21736 (regOne!27012 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895069))

(assert (= (and b!4894245 (is-Star!13250 (regOne!27012 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895070))

(assert (= (and b!4894245 (is-Union!13250 (regOne!27012 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895071))

(declare-fun b!4895075 () Bool)

(declare-fun e!3060066 () Bool)

(declare-fun tp!1377430 () Bool)

(declare-fun tp!1377427 () Bool)

(assert (=> b!4895075 (= e!3060066 (and tp!1377430 tp!1377427))))

(declare-fun b!4895074 () Bool)

(declare-fun tp!1377429 () Bool)

(assert (=> b!4895074 (= e!3060066 tp!1377429)))

(declare-fun b!4895073 () Bool)

(declare-fun tp!1377426 () Bool)

(declare-fun tp!1377428 () Bool)

(assert (=> b!4895073 (= e!3060066 (and tp!1377426 tp!1377428))))

(declare-fun b!4895072 () Bool)

(assert (=> b!4895072 (= e!3060066 tp_is_empty!35781)))

(assert (=> b!4894245 (= tp!1377355 e!3060066)))

(assert (= (and b!4894245 (is-ElementMatch!13250 (regTwo!27012 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895072))

(assert (= (and b!4894245 (is-Concat!21736 (regTwo!27012 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895073))

(assert (= (and b!4894245 (is-Star!13250 (regTwo!27012 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895074))

(assert (= (and b!4894245 (is-Union!13250 (regTwo!27012 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895075))

(declare-fun b!4895079 () Bool)

(declare-fun e!3060067 () Bool)

(declare-fun tp!1377435 () Bool)

(declare-fun tp!1377432 () Bool)

(assert (=> b!4895079 (= e!3060067 (and tp!1377435 tp!1377432))))

(declare-fun b!4895078 () Bool)

(declare-fun tp!1377434 () Bool)

(assert (=> b!4895078 (= e!3060067 tp!1377434)))

(declare-fun b!4895077 () Bool)

(declare-fun tp!1377431 () Bool)

(declare-fun tp!1377433 () Bool)

(assert (=> b!4895077 (= e!3060067 (and tp!1377431 tp!1377433))))

(declare-fun b!4895076 () Bool)

(assert (=> b!4895076 (= e!3060067 tp_is_empty!35781)))

(assert (=> b!4894246 (= tp!1377356 e!3060067)))

(assert (= (and b!4894246 (is-ElementMatch!13250 (reg!13579 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895076))

(assert (= (and b!4894246 (is-Concat!21736 (reg!13579 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895077))

(assert (= (and b!4894246 (is-Star!13250 (reg!13579 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895078))

(assert (= (and b!4894246 (is-Union!13250 (reg!13579 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895079))

(declare-fun b!4895080 () Bool)

(declare-fun e!3060068 () Bool)

(declare-fun tp!1377436 () Bool)

(assert (=> b!4895080 (= e!3060068 (and tp_is_empty!35781 tp!1377436))))

(assert (=> b!4894236 (= tp!1377342 e!3060068)))

(assert (= (and b!4894236 (is-Cons!56408 (innerList!14831 (xs!18059 (left!40981 (c!831694 input!1236)))))) b!4895080))

(declare-fun b!4895081 () Bool)

(declare-fun e!3060069 () Bool)

(declare-fun tp!1377439 () Bool)

(declare-fun tp!1377438 () Bool)

(assert (=> b!4895081 (= e!3060069 (and (inv!72691 (left!40981 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))))) tp!1377438 (inv!72691 (right!41311 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))))) tp!1377439))))

(declare-fun b!4895083 () Bool)

(declare-fun e!3060070 () Bool)

(declare-fun tp!1377437 () Bool)

(assert (=> b!4895083 (= e!3060070 tp!1377437)))

(declare-fun b!4895082 () Bool)

(assert (=> b!4895082 (= e!3060069 (and (inv!72697 (xs!18059 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))))) e!3060070))))

(assert (=> b!4894257 (= tp!1377358 (and (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))) e!3060069))))

(assert (= (and b!4894257 (is-Node!14743 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))))) b!4895081))

(assert (= b!4895082 b!4895083))

(assert (= (and b!4894257 (is-Leaf!24548 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))))) b!4895082))

(declare-fun m!5901200 () Bool)

(assert (=> b!4895081 m!5901200))

(declare-fun m!5901202 () Bool)

(assert (=> b!4895081 m!5901202))

(declare-fun m!5901204 () Bool)

(assert (=> b!4895082 m!5901204))

(assert (=> b!4894257 m!5899514))

(declare-fun b!4895087 () Bool)

(declare-fun e!3060071 () Bool)

(declare-fun tp!1377444 () Bool)

(declare-fun tp!1377441 () Bool)

(assert (=> b!4895087 (= e!3060071 (and tp!1377444 tp!1377441))))

(declare-fun b!4895086 () Bool)

(declare-fun tp!1377443 () Bool)

(assert (=> b!4895086 (= e!3060071 tp!1377443)))

(declare-fun b!4895085 () Bool)

(declare-fun tp!1377440 () Bool)

(declare-fun tp!1377442 () Bool)

(assert (=> b!4895085 (= e!3060071 (and tp!1377440 tp!1377442))))

(declare-fun b!4895084 () Bool)

(assert (=> b!4895084 (= e!3060071 tp_is_empty!35781)))

(assert (=> b!4894229 (= tp!1377336 e!3060071)))

(assert (= (and b!4894229 (is-ElementMatch!13250 (regOne!27013 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895084))

(assert (= (and b!4894229 (is-Concat!21736 (regOne!27013 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895085))

(assert (= (and b!4894229 (is-Star!13250 (regOne!27013 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895086))

(assert (= (and b!4894229 (is-Union!13250 (regOne!27013 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895087))

(declare-fun b!4895091 () Bool)

(declare-fun e!3060072 () Bool)

(declare-fun tp!1377449 () Bool)

(declare-fun tp!1377446 () Bool)

(assert (=> b!4895091 (= e!3060072 (and tp!1377449 tp!1377446))))

(declare-fun b!4895090 () Bool)

(declare-fun tp!1377448 () Bool)

(assert (=> b!4895090 (= e!3060072 tp!1377448)))

(declare-fun b!4895089 () Bool)

(declare-fun tp!1377445 () Bool)

(declare-fun tp!1377447 () Bool)

(assert (=> b!4895089 (= e!3060072 (and tp!1377445 tp!1377447))))

(declare-fun b!4895088 () Bool)

(assert (=> b!4895088 (= e!3060072 tp_is_empty!35781)))

(assert (=> b!4894229 (= tp!1377333 e!3060072)))

(assert (= (and b!4894229 (is-ElementMatch!13250 (regTwo!27013 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895088))

(assert (= (and b!4894229 (is-Concat!21736 (regTwo!27013 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895089))

(assert (= (and b!4894229 (is-Star!13250 (regTwo!27013 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895090))

(assert (= (and b!4894229 (is-Union!13250 (regTwo!27013 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895091))

(declare-fun b!4895092 () Bool)

(declare-fun tp!1377451 () Bool)

(declare-fun tp!1377452 () Bool)

(declare-fun e!3060073 () Bool)

(assert (=> b!4895092 (= e!3060073 (and (inv!72691 (left!40981 (left!40981 (left!40981 (c!831694 input!1236))))) tp!1377451 (inv!72691 (right!41311 (left!40981 (left!40981 (c!831694 input!1236))))) tp!1377452))))

(declare-fun b!4895094 () Bool)

(declare-fun e!3060074 () Bool)

(declare-fun tp!1377450 () Bool)

(assert (=> b!4895094 (= e!3060074 tp!1377450)))

(declare-fun b!4895093 () Bool)

(assert (=> b!4895093 (= e!3060073 (and (inv!72697 (xs!18059 (left!40981 (left!40981 (c!831694 input!1236))))) e!3060074))))

(assert (=> b!4894234 (= tp!1377343 (and (inv!72691 (left!40981 (left!40981 (c!831694 input!1236)))) e!3060073))))

(assert (= (and b!4894234 (is-Node!14743 (left!40981 (left!40981 (c!831694 input!1236))))) b!4895092))

(assert (= b!4895093 b!4895094))

(assert (= (and b!4894234 (is-Leaf!24548 (left!40981 (left!40981 (c!831694 input!1236))))) b!4895093))

(declare-fun m!5901206 () Bool)

(assert (=> b!4895092 m!5901206))

(declare-fun m!5901208 () Bool)

(assert (=> b!4895092 m!5901208))

(declare-fun m!5901210 () Bool)

(assert (=> b!4895093 m!5901210))

(assert (=> b!4894234 m!5899496))

(declare-fun tp!1377455 () Bool)

(declare-fun tp!1377454 () Bool)

(declare-fun b!4895095 () Bool)

(declare-fun e!3060075 () Bool)

(assert (=> b!4895095 (= e!3060075 (and (inv!72691 (left!40981 (right!41311 (left!40981 (c!831694 input!1236))))) tp!1377454 (inv!72691 (right!41311 (right!41311 (left!40981 (c!831694 input!1236))))) tp!1377455))))

(declare-fun b!4895097 () Bool)

(declare-fun e!3060076 () Bool)

(declare-fun tp!1377453 () Bool)

(assert (=> b!4895097 (= e!3060076 tp!1377453)))

(declare-fun b!4895096 () Bool)

(assert (=> b!4895096 (= e!3060075 (and (inv!72697 (xs!18059 (right!41311 (left!40981 (c!831694 input!1236))))) e!3060076))))

(assert (=> b!4894234 (= tp!1377344 (and (inv!72691 (right!41311 (left!40981 (c!831694 input!1236)))) e!3060075))))

(assert (= (and b!4894234 (is-Node!14743 (right!41311 (left!40981 (c!831694 input!1236))))) b!4895095))

(assert (= b!4895096 b!4895097))

(assert (= (and b!4894234 (is-Leaf!24548 (right!41311 (left!40981 (c!831694 input!1236))))) b!4895096))

(declare-fun m!5901212 () Bool)

(assert (=> b!4895095 m!5901212))

(declare-fun m!5901214 () Bool)

(assert (=> b!4895095 m!5901214))

(declare-fun m!5901216 () Bool)

(assert (=> b!4895096 m!5901216))

(assert (=> b!4894234 m!5899498))

(declare-fun b!4895101 () Bool)

(declare-fun e!3060077 () Bool)

(declare-fun tp!1377460 () Bool)

(declare-fun tp!1377457 () Bool)

(assert (=> b!4895101 (= e!3060077 (and tp!1377460 tp!1377457))))

(declare-fun b!4895100 () Bool)

(declare-fun tp!1377459 () Bool)

(assert (=> b!4895100 (= e!3060077 tp!1377459)))

(declare-fun b!4895099 () Bool)

(declare-fun tp!1377456 () Bool)

(declare-fun tp!1377458 () Bool)

(assert (=> b!4895099 (= e!3060077 (and tp!1377456 tp!1377458))))

(declare-fun b!4895098 () Bool)

(assert (=> b!4895098 (= e!3060077 tp_is_empty!35781)))

(assert (=> b!4894217 (= tp!1377324 e!3060077)))

(assert (= (and b!4894217 (is-ElementMatch!13250 (regOne!27013 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895098))

(assert (= (and b!4894217 (is-Concat!21736 (regOne!27013 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895099))

(assert (= (and b!4894217 (is-Star!13250 (regOne!27013 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895100))

(assert (= (and b!4894217 (is-Union!13250 (regOne!27013 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895101))

(declare-fun b!4895105 () Bool)

(declare-fun e!3060078 () Bool)

(declare-fun tp!1377465 () Bool)

(declare-fun tp!1377462 () Bool)

(assert (=> b!4895105 (= e!3060078 (and tp!1377465 tp!1377462))))

(declare-fun b!4895104 () Bool)

(declare-fun tp!1377464 () Bool)

(assert (=> b!4895104 (= e!3060078 tp!1377464)))

(declare-fun b!4895103 () Bool)

(declare-fun tp!1377461 () Bool)

(declare-fun tp!1377463 () Bool)

(assert (=> b!4895103 (= e!3060078 (and tp!1377461 tp!1377463))))

(declare-fun b!4895102 () Bool)

(assert (=> b!4895102 (= e!3060078 tp_is_empty!35781)))

(assert (=> b!4894217 (= tp!1377321 e!3060078)))

(assert (= (and b!4894217 (is-ElementMatch!13250 (regTwo!27013 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895102))

(assert (= (and b!4894217 (is-Concat!21736 (regTwo!27013 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895103))

(assert (= (and b!4894217 (is-Star!13250 (regTwo!27013 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895104))

(assert (= (and b!4894217 (is-Union!13250 (regTwo!27013 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895105))

(declare-fun b!4895109 () Bool)

(declare-fun e!3060079 () Bool)

(declare-fun tp!1377470 () Bool)

(declare-fun tp!1377467 () Bool)

(assert (=> b!4895109 (= e!3060079 (and tp!1377470 tp!1377467))))

(declare-fun b!4895108 () Bool)

(declare-fun tp!1377469 () Bool)

(assert (=> b!4895108 (= e!3060079 tp!1377469)))

(declare-fun b!4895107 () Bool)

(declare-fun tp!1377466 () Bool)

(declare-fun tp!1377468 () Bool)

(assert (=> b!4895107 (= e!3060079 (and tp!1377466 tp!1377468))))

(declare-fun b!4895106 () Bool)

(assert (=> b!4895106 (= e!3060079 tp_is_empty!35781)))

(assert (=> b!4894233 (= tp!1377341 e!3060079)))

(assert (= (and b!4894233 (is-ElementMatch!13250 (regOne!27013 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895106))

(assert (= (and b!4894233 (is-Concat!21736 (regOne!27013 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895107))

(assert (= (and b!4894233 (is-Star!13250 (regOne!27013 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895108))

(assert (= (and b!4894233 (is-Union!13250 (regOne!27013 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895109))

(declare-fun b!4895113 () Bool)

(declare-fun e!3060080 () Bool)

(declare-fun tp!1377475 () Bool)

(declare-fun tp!1377472 () Bool)

(assert (=> b!4895113 (= e!3060080 (and tp!1377475 tp!1377472))))

(declare-fun b!4895112 () Bool)

(declare-fun tp!1377474 () Bool)

(assert (=> b!4895112 (= e!3060080 tp!1377474)))

(declare-fun b!4895111 () Bool)

(declare-fun tp!1377471 () Bool)

(declare-fun tp!1377473 () Bool)

(assert (=> b!4895111 (= e!3060080 (and tp!1377471 tp!1377473))))

(declare-fun b!4895110 () Bool)

(assert (=> b!4895110 (= e!3060080 tp_is_empty!35781)))

(assert (=> b!4894233 (= tp!1377338 e!3060080)))

(assert (= (and b!4894233 (is-ElementMatch!13250 (regTwo!27013 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895110))

(assert (= (and b!4894233 (is-Concat!21736 (regTwo!27013 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895111))

(assert (= (and b!4894233 (is-Star!13250 (regTwo!27013 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895112))

(assert (= (and b!4894233 (is-Union!13250 (regTwo!27013 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895113))

(declare-fun b!4895117 () Bool)

(declare-fun e!3060081 () Bool)

(declare-fun tp!1377480 () Bool)

(declare-fun tp!1377477 () Bool)

(assert (=> b!4895117 (= e!3060081 (and tp!1377480 tp!1377477))))

(declare-fun b!4895116 () Bool)

(declare-fun tp!1377479 () Bool)

(assert (=> b!4895116 (= e!3060081 tp!1377479)))

(declare-fun b!4895115 () Bool)

(declare-fun tp!1377476 () Bool)

(declare-fun tp!1377478 () Bool)

(assert (=> b!4895115 (= e!3060081 (and tp!1377476 tp!1377478))))

(declare-fun b!4895114 () Bool)

(assert (=> b!4895114 (= e!3060081 tp_is_empty!35781)))

(assert (=> b!4894241 (= tp!1377348 e!3060081)))

(assert (= (and b!4894241 (is-ElementMatch!13250 (regOne!27012 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895114))

(assert (= (and b!4894241 (is-Concat!21736 (regOne!27012 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895115))

(assert (= (and b!4894241 (is-Star!13250 (regOne!27012 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895116))

(assert (= (and b!4894241 (is-Union!13250 (regOne!27012 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895117))

(declare-fun b!4895121 () Bool)

(declare-fun e!3060082 () Bool)

(declare-fun tp!1377485 () Bool)

(declare-fun tp!1377482 () Bool)

(assert (=> b!4895121 (= e!3060082 (and tp!1377485 tp!1377482))))

(declare-fun b!4895120 () Bool)

(declare-fun tp!1377484 () Bool)

(assert (=> b!4895120 (= e!3060082 tp!1377484)))

(declare-fun b!4895119 () Bool)

(declare-fun tp!1377481 () Bool)

(declare-fun tp!1377483 () Bool)

(assert (=> b!4895119 (= e!3060082 (and tp!1377481 tp!1377483))))

(declare-fun b!4895118 () Bool)

(assert (=> b!4895118 (= e!3060082 tp_is_empty!35781)))

(assert (=> b!4894241 (= tp!1377350 e!3060082)))

(assert (= (and b!4894241 (is-ElementMatch!13250 (regTwo!27012 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895118))

(assert (= (and b!4894241 (is-Concat!21736 (regTwo!27012 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895119))

(assert (= (and b!4894241 (is-Star!13250 (regTwo!27012 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895120))

(assert (= (and b!4894241 (is-Union!13250 (regTwo!27012 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895121))

(declare-fun b!4895125 () Bool)

(declare-fun e!3060083 () Bool)

(declare-fun tp!1377490 () Bool)

(declare-fun tp!1377487 () Bool)

(assert (=> b!4895125 (= e!3060083 (and tp!1377490 tp!1377487))))

(declare-fun b!4895124 () Bool)

(declare-fun tp!1377489 () Bool)

(assert (=> b!4895124 (= e!3060083 tp!1377489)))

(declare-fun b!4895123 () Bool)

(declare-fun tp!1377486 () Bool)

(declare-fun tp!1377488 () Bool)

(assert (=> b!4895123 (= e!3060083 (and tp!1377486 tp!1377488))))

(declare-fun b!4895122 () Bool)

(assert (=> b!4895122 (= e!3060083 tp_is_empty!35781)))

(assert (=> b!4894231 (= tp!1377337 e!3060083)))

(assert (= (and b!4894231 (is-ElementMatch!13250 (regOne!27012 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895122))

(assert (= (and b!4894231 (is-Concat!21736 (regOne!27012 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895123))

(assert (= (and b!4894231 (is-Star!13250 (regOne!27012 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895124))

(assert (= (and b!4894231 (is-Union!13250 (regOne!27012 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895125))

(declare-fun b!4895129 () Bool)

(declare-fun e!3060084 () Bool)

(declare-fun tp!1377495 () Bool)

(declare-fun tp!1377492 () Bool)

(assert (=> b!4895129 (= e!3060084 (and tp!1377495 tp!1377492))))

(declare-fun b!4895128 () Bool)

(declare-fun tp!1377494 () Bool)

(assert (=> b!4895128 (= e!3060084 tp!1377494)))

(declare-fun b!4895127 () Bool)

(declare-fun tp!1377491 () Bool)

(declare-fun tp!1377493 () Bool)

(assert (=> b!4895127 (= e!3060084 (and tp!1377491 tp!1377493))))

(declare-fun b!4895126 () Bool)

(assert (=> b!4895126 (= e!3060084 tp_is_empty!35781)))

(assert (=> b!4894231 (= tp!1377339 e!3060084)))

(assert (= (and b!4894231 (is-ElementMatch!13250 (regTwo!27012 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895126))

(assert (= (and b!4894231 (is-Concat!21736 (regTwo!27012 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895127))

(assert (= (and b!4894231 (is-Star!13250 (regTwo!27012 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895128))

(assert (= (and b!4894231 (is-Union!13250 (regTwo!27012 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895129))

(declare-fun b!4895133 () Bool)

(declare-fun e!3060085 () Bool)

(declare-fun tp!1377500 () Bool)

(declare-fun tp!1377497 () Bool)

(assert (=> b!4895133 (= e!3060085 (and tp!1377500 tp!1377497))))

(declare-fun b!4895132 () Bool)

(declare-fun tp!1377499 () Bool)

(assert (=> b!4895132 (= e!3060085 tp!1377499)))

(declare-fun b!4895131 () Bool)

(declare-fun tp!1377496 () Bool)

(declare-fun tp!1377498 () Bool)

(assert (=> b!4895131 (= e!3060085 (and tp!1377496 tp!1377498))))

(declare-fun b!4895130 () Bool)

(assert (=> b!4895130 (= e!3060085 tp_is_empty!35781)))

(assert (=> b!4894216 (= tp!1377323 e!3060085)))

(assert (= (and b!4894216 (is-ElementMatch!13250 (reg!13579 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895130))

(assert (= (and b!4894216 (is-Concat!21736 (reg!13579 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895131))

(assert (= (and b!4894216 (is-Star!13250 (reg!13579 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895132))

(assert (= (and b!4894216 (is-Union!13250 (reg!13579 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895133))

(declare-fun b!4895137 () Bool)

(declare-fun e!3060086 () Bool)

(declare-fun tp!1377505 () Bool)

(declare-fun tp!1377502 () Bool)

(assert (=> b!4895137 (= e!3060086 (and tp!1377505 tp!1377502))))

(declare-fun b!4895136 () Bool)

(declare-fun tp!1377504 () Bool)

(assert (=> b!4895136 (= e!3060086 tp!1377504)))

(declare-fun b!4895135 () Bool)

(declare-fun tp!1377501 () Bool)

(declare-fun tp!1377503 () Bool)

(assert (=> b!4895135 (= e!3060086 (and tp!1377501 tp!1377503))))

(declare-fun b!4895134 () Bool)

(assert (=> b!4895134 (= e!3060086 tp_is_empty!35781)))

(assert (=> b!4894232 (= tp!1377340 e!3060086)))

(assert (= (and b!4894232 (is-ElementMatch!13250 (reg!13579 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895134))

(assert (= (and b!4894232 (is-Concat!21736 (reg!13579 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895135))

(assert (= (and b!4894232 (is-Star!13250 (reg!13579 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895136))

(assert (= (and b!4894232 (is-Union!13250 (reg!13579 (regTwo!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895137))

(declare-fun b!4895141 () Bool)

(declare-fun e!3060087 () Bool)

(declare-fun tp!1377510 () Bool)

(declare-fun tp!1377507 () Bool)

(assert (=> b!4895141 (= e!3060087 (and tp!1377510 tp!1377507))))

(declare-fun b!4895140 () Bool)

(declare-fun tp!1377509 () Bool)

(assert (=> b!4895140 (= e!3060087 tp!1377509)))

(declare-fun b!4895139 () Bool)

(declare-fun tp!1377506 () Bool)

(declare-fun tp!1377508 () Bool)

(assert (=> b!4895139 (= e!3060087 (and tp!1377506 tp!1377508))))

(declare-fun b!4895138 () Bool)

(assert (=> b!4895138 (= e!3060087 tp_is_empty!35781)))

(assert (=> b!4894215 (= tp!1377320 e!3060087)))

(assert (= (and b!4894215 (is-ElementMatch!13250 (regOne!27012 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895138))

(assert (= (and b!4894215 (is-Concat!21736 (regOne!27012 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895139))

(assert (= (and b!4894215 (is-Star!13250 (regOne!27012 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895140))

(assert (= (and b!4894215 (is-Union!13250 (regOne!27012 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895141))

(declare-fun b!4895145 () Bool)

(declare-fun e!3060088 () Bool)

(declare-fun tp!1377515 () Bool)

(declare-fun tp!1377512 () Bool)

(assert (=> b!4895145 (= e!3060088 (and tp!1377515 tp!1377512))))

(declare-fun b!4895144 () Bool)

(declare-fun tp!1377514 () Bool)

(assert (=> b!4895144 (= e!3060088 tp!1377514)))

(declare-fun b!4895143 () Bool)

(declare-fun tp!1377511 () Bool)

(declare-fun tp!1377513 () Bool)

(assert (=> b!4895143 (= e!3060088 (and tp!1377511 tp!1377513))))

(declare-fun b!4895142 () Bool)

(assert (=> b!4895142 (= e!3060088 tp_is_empty!35781)))

(assert (=> b!4894215 (= tp!1377322 e!3060088)))

(assert (= (and b!4894215 (is-ElementMatch!13250 (regTwo!27012 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895142))

(assert (= (and b!4894215 (is-Concat!21736 (regTwo!27012 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895143))

(assert (= (and b!4894215 (is-Star!13250 (regTwo!27012 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895144))

(assert (= (and b!4894215 (is-Union!13250 (regTwo!27012 (regTwo!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895145))

(declare-fun b!4895149 () Bool)

(declare-fun e!3060089 () Bool)

(declare-fun tp!1377520 () Bool)

(declare-fun tp!1377517 () Bool)

(assert (=> b!4895149 (= e!3060089 (and tp!1377520 tp!1377517))))

(declare-fun b!4895148 () Bool)

(declare-fun tp!1377519 () Bool)

(assert (=> b!4895148 (= e!3060089 tp!1377519)))

(declare-fun b!4895147 () Bool)

(declare-fun tp!1377516 () Bool)

(declare-fun tp!1377518 () Bool)

(assert (=> b!4895147 (= e!3060089 (and tp!1377516 tp!1377518))))

(declare-fun b!4895146 () Bool)

(assert (=> b!4895146 (= e!3060089 tp_is_empty!35781)))

(assert (=> b!4894247 (= tp!1377357 e!3060089)))

(assert (= (and b!4894247 (is-ElementMatch!13250 (regOne!27013 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895146))

(assert (= (and b!4894247 (is-Concat!21736 (regOne!27013 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895147))

(assert (= (and b!4894247 (is-Star!13250 (regOne!27013 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895148))

(assert (= (and b!4894247 (is-Union!13250 (regOne!27013 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895149))

(declare-fun b!4895153 () Bool)

(declare-fun e!3060090 () Bool)

(declare-fun tp!1377525 () Bool)

(declare-fun tp!1377522 () Bool)

(assert (=> b!4895153 (= e!3060090 (and tp!1377525 tp!1377522))))

(declare-fun b!4895152 () Bool)

(declare-fun tp!1377524 () Bool)

(assert (=> b!4895152 (= e!3060090 tp!1377524)))

(declare-fun b!4895151 () Bool)

(declare-fun tp!1377521 () Bool)

(declare-fun tp!1377523 () Bool)

(assert (=> b!4895151 (= e!3060090 (and tp!1377521 tp!1377523))))

(declare-fun b!4895150 () Bool)

(assert (=> b!4895150 (= e!3060090 tp_is_empty!35781)))

(assert (=> b!4894247 (= tp!1377354 e!3060090)))

(assert (= (and b!4894247 (is-ElementMatch!13250 (regTwo!27013 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895150))

(assert (= (and b!4894247 (is-Concat!21736 (regTwo!27013 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895151))

(assert (= (and b!4894247 (is-Star!13250 (regTwo!27013 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895152))

(assert (= (and b!4894247 (is-Union!13250 (regTwo!27013 (regex!8175 (h!62858 (t!365674 rulesArg!165)))))) b!4895153))

(declare-fun b!4895154 () Bool)

(declare-fun tp!1377527 () Bool)

(declare-fun tp!1377528 () Bool)

(declare-fun e!3060091 () Bool)

(assert (=> b!4895154 (= e!3060091 (and (inv!72691 (left!40981 (left!40981 (right!41311 (c!831694 input!1236))))) tp!1377527 (inv!72691 (right!41311 (left!40981 (right!41311 (c!831694 input!1236))))) tp!1377528))))

(declare-fun b!4895156 () Bool)

(declare-fun e!3060092 () Bool)

(declare-fun tp!1377526 () Bool)

(assert (=> b!4895156 (= e!3060092 tp!1377526)))

(declare-fun b!4895155 () Bool)

(assert (=> b!4895155 (= e!3060091 (and (inv!72697 (xs!18059 (left!40981 (right!41311 (c!831694 input!1236))))) e!3060092))))

(assert (=> b!4894237 (= tp!1377346 (and (inv!72691 (left!40981 (right!41311 (c!831694 input!1236)))) e!3060091))))

(assert (= (and b!4894237 (is-Node!14743 (left!40981 (right!41311 (c!831694 input!1236))))) b!4895154))

(assert (= b!4895155 b!4895156))

(assert (= (and b!4894237 (is-Leaf!24548 (left!40981 (right!41311 (c!831694 input!1236))))) b!4895155))

(declare-fun m!5901218 () Bool)

(assert (=> b!4895154 m!5901218))

(declare-fun m!5901220 () Bool)

(assert (=> b!4895154 m!5901220))

(declare-fun m!5901222 () Bool)

(assert (=> b!4895155 m!5901222))

(assert (=> b!4894237 m!5899502))

(declare-fun tp!1377531 () Bool)

(declare-fun b!4895157 () Bool)

(declare-fun e!3060093 () Bool)

(declare-fun tp!1377530 () Bool)

(assert (=> b!4895157 (= e!3060093 (and (inv!72691 (left!40981 (right!41311 (right!41311 (c!831694 input!1236))))) tp!1377530 (inv!72691 (right!41311 (right!41311 (right!41311 (c!831694 input!1236))))) tp!1377531))))

(declare-fun b!4895159 () Bool)

(declare-fun e!3060094 () Bool)

(declare-fun tp!1377529 () Bool)

(assert (=> b!4895159 (= e!3060094 tp!1377529)))

(declare-fun b!4895158 () Bool)

(assert (=> b!4895158 (= e!3060093 (and (inv!72697 (xs!18059 (right!41311 (right!41311 (c!831694 input!1236))))) e!3060094))))

(assert (=> b!4894237 (= tp!1377347 (and (inv!72691 (right!41311 (right!41311 (c!831694 input!1236)))) e!3060093))))

(assert (= (and b!4894237 (is-Node!14743 (right!41311 (right!41311 (c!831694 input!1236))))) b!4895157))

(assert (= b!4895158 b!4895159))

(assert (= (and b!4894237 (is-Leaf!24548 (right!41311 (right!41311 (c!831694 input!1236))))) b!4895158))

(declare-fun m!5901224 () Bool)

(assert (=> b!4895157 m!5901224))

(declare-fun m!5901226 () Bool)

(assert (=> b!4895157 m!5901226))

(declare-fun m!5901228 () Bool)

(assert (=> b!4895158 m!5901228))

(assert (=> b!4894237 m!5899504))

(declare-fun b!4895163 () Bool)

(declare-fun e!3060095 () Bool)

(declare-fun tp!1377536 () Bool)

(declare-fun tp!1377533 () Bool)

(assert (=> b!4895163 (= e!3060095 (and tp!1377536 tp!1377533))))

(declare-fun b!4895162 () Bool)

(declare-fun tp!1377535 () Bool)

(assert (=> b!4895162 (= e!3060095 tp!1377535)))

(declare-fun b!4895161 () Bool)

(declare-fun tp!1377532 () Bool)

(declare-fun tp!1377534 () Bool)

(assert (=> b!4895161 (= e!3060095 (and tp!1377532 tp!1377534))))

(declare-fun b!4895160 () Bool)

(assert (=> b!4895160 (= e!3060095 tp_is_empty!35781)))

(assert (=> b!4894243 (= tp!1377352 e!3060095)))

(assert (= (and b!4894243 (is-ElementMatch!13250 (regOne!27013 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895160))

(assert (= (and b!4894243 (is-Concat!21736 (regOne!27013 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895161))

(assert (= (and b!4894243 (is-Star!13250 (regOne!27013 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895162))

(assert (= (and b!4894243 (is-Union!13250 (regOne!27013 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895163))

(declare-fun b!4895167 () Bool)

(declare-fun e!3060096 () Bool)

(declare-fun tp!1377541 () Bool)

(declare-fun tp!1377538 () Bool)

(assert (=> b!4895167 (= e!3060096 (and tp!1377541 tp!1377538))))

(declare-fun b!4895166 () Bool)

(declare-fun tp!1377540 () Bool)

(assert (=> b!4895166 (= e!3060096 tp!1377540)))

(declare-fun b!4895165 () Bool)

(declare-fun tp!1377537 () Bool)

(declare-fun tp!1377539 () Bool)

(assert (=> b!4895165 (= e!3060096 (and tp!1377537 tp!1377539))))

(declare-fun b!4895164 () Bool)

(assert (=> b!4895164 (= e!3060096 tp_is_empty!35781)))

(assert (=> b!4894243 (= tp!1377349 e!3060096)))

(assert (= (and b!4894243 (is-ElementMatch!13250 (regTwo!27013 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895164))

(assert (= (and b!4894243 (is-Concat!21736 (regTwo!27013 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895165))

(assert (= (and b!4894243 (is-Star!13250 (regTwo!27013 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895166))

(assert (= (and b!4894243 (is-Union!13250 (regTwo!27013 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895167))

(declare-fun b!4895168 () Bool)

(declare-fun e!3060097 () Bool)

(declare-fun tp!1377542 () Bool)

(assert (=> b!4895168 (= e!3060097 (and tp_is_empty!35781 tp!1377542))))

(assert (=> b!4894225 (= tp!1377331 e!3060097)))

(assert (= (and b!4894225 (is-Cons!56408 (t!365672 (innerList!14831 (xs!18059 (c!831694 input!1236)))))) b!4895168))

(declare-fun b!4895172 () Bool)

(declare-fun e!3060098 () Bool)

(declare-fun tp!1377547 () Bool)

(declare-fun tp!1377544 () Bool)

(assert (=> b!4895172 (= e!3060098 (and tp!1377547 tp!1377544))))

(declare-fun b!4895171 () Bool)

(declare-fun tp!1377546 () Bool)

(assert (=> b!4895171 (= e!3060098 tp!1377546)))

(declare-fun b!4895170 () Bool)

(declare-fun tp!1377543 () Bool)

(declare-fun tp!1377545 () Bool)

(assert (=> b!4895170 (= e!3060098 (and tp!1377543 tp!1377545))))

(declare-fun b!4895169 () Bool)

(assert (=> b!4895169 (= e!3060098 tp_is_empty!35781)))

(assert (=> b!4894242 (= tp!1377351 e!3060098)))

(assert (= (and b!4894242 (is-ElementMatch!13250 (reg!13579 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895169))

(assert (= (and b!4894242 (is-Concat!21736 (reg!13579 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895170))

(assert (= (and b!4894242 (is-Star!13250 (reg!13579 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895171))

(assert (= (and b!4894242 (is-Union!13250 (reg!13579 (reg!13579 (regex!8175 (h!62858 rulesArg!165)))))) b!4895172))

(declare-fun b!4895176 () Bool)

(declare-fun e!3060099 () Bool)

(declare-fun tp!1377552 () Bool)

(declare-fun tp!1377549 () Bool)

(assert (=> b!4895176 (= e!3060099 (and tp!1377552 tp!1377549))))

(declare-fun b!4895175 () Bool)

(declare-fun tp!1377551 () Bool)

(assert (=> b!4895175 (= e!3060099 tp!1377551)))

(declare-fun b!4895174 () Bool)

(declare-fun tp!1377548 () Bool)

(declare-fun tp!1377550 () Bool)

(assert (=> b!4895174 (= e!3060099 (and tp!1377548 tp!1377550))))

(declare-fun b!4895173 () Bool)

(assert (=> b!4895173 (= e!3060099 tp_is_empty!35781)))

(assert (=> b!4894228 (= tp!1377335 e!3060099)))

(assert (= (and b!4894228 (is-ElementMatch!13250 (reg!13579 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895173))

(assert (= (and b!4894228 (is-Concat!21736 (reg!13579 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895174))

(assert (= (and b!4894228 (is-Star!13250 (reg!13579 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895175))

(assert (= (and b!4894228 (is-Union!13250 (reg!13579 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895176))

(declare-fun tp!1377555 () Bool)

(declare-fun e!3060100 () Bool)

(declare-fun tp!1377554 () Bool)

(declare-fun b!4895177 () Bool)

(assert (=> b!4895177 (= e!3060100 (and (inv!72691 (left!40981 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025)))))) tp!1377554 (inv!72691 (right!41311 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025)))))) tp!1377555))))

(declare-fun b!4895179 () Bool)

(declare-fun e!3060101 () Bool)

(declare-fun tp!1377553 () Bool)

(assert (=> b!4895179 (= e!3060101 tp!1377553)))

(declare-fun b!4895178 () Bool)

(assert (=> b!4895178 (= e!3060100 (and (inv!72697 (xs!18059 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025)))))) e!3060101))))

(assert (=> b!4894258 (= tp!1377359 (and (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025))))) e!3060100))))

(assert (= (and b!4894258 (is-Node!14743 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025)))))) b!4895177))

(assert (= b!4895178 b!4895179))

(assert (= (and b!4894258 (is-Leaf!24548 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025)))))) b!4895178))

(declare-fun m!5901230 () Bool)

(assert (=> b!4895177 m!5901230))

(declare-fun m!5901232 () Bool)

(assert (=> b!4895177 m!5901232))

(declare-fun m!5901234 () Bool)

(assert (=> b!4895178 m!5901234))

(assert (=> b!4894258 m!5899534))

(declare-fun b!4895183 () Bool)

(declare-fun e!3060102 () Bool)

(declare-fun tp!1377560 () Bool)

(declare-fun tp!1377557 () Bool)

(assert (=> b!4895183 (= e!3060102 (and tp!1377560 tp!1377557))))

(declare-fun b!4895182 () Bool)

(declare-fun tp!1377559 () Bool)

(assert (=> b!4895182 (= e!3060102 tp!1377559)))

(declare-fun b!4895181 () Bool)

(declare-fun tp!1377556 () Bool)

(declare-fun tp!1377558 () Bool)

(assert (=> b!4895181 (= e!3060102 (and tp!1377556 tp!1377558))))

(declare-fun b!4895180 () Bool)

(assert (=> b!4895180 (= e!3060102 tp_is_empty!35781)))

(assert (=> b!4894213 (= tp!1377319 e!3060102)))

(assert (= (and b!4894213 (is-ElementMatch!13250 (regOne!27013 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895180))

(assert (= (and b!4894213 (is-Concat!21736 (regOne!27013 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895181))

(assert (= (and b!4894213 (is-Star!13250 (regOne!27013 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895182))

(assert (= (and b!4894213 (is-Union!13250 (regOne!27013 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895183))

(declare-fun b!4895187 () Bool)

(declare-fun e!3060103 () Bool)

(declare-fun tp!1377565 () Bool)

(declare-fun tp!1377562 () Bool)

(assert (=> b!4895187 (= e!3060103 (and tp!1377565 tp!1377562))))

(declare-fun b!4895186 () Bool)

(declare-fun tp!1377564 () Bool)

(assert (=> b!4895186 (= e!3060103 tp!1377564)))

(declare-fun b!4895185 () Bool)

(declare-fun tp!1377561 () Bool)

(declare-fun tp!1377563 () Bool)

(assert (=> b!4895185 (= e!3060103 (and tp!1377561 tp!1377563))))

(declare-fun b!4895184 () Bool)

(assert (=> b!4895184 (= e!3060103 tp_is_empty!35781)))

(assert (=> b!4894213 (= tp!1377316 e!3060103)))

(assert (= (and b!4894213 (is-ElementMatch!13250 (regTwo!27013 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895184))

(assert (= (and b!4894213 (is-Concat!21736 (regTwo!27013 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895185))

(assert (= (and b!4894213 (is-Star!13250 (regTwo!27013 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895186))

(assert (= (and b!4894213 (is-Union!13250 (regTwo!27013 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895187))

(declare-fun b!4895191 () Bool)

(declare-fun e!3060104 () Bool)

(declare-fun tp!1377570 () Bool)

(declare-fun tp!1377567 () Bool)

(assert (=> b!4895191 (= e!3060104 (and tp!1377570 tp!1377567))))

(declare-fun b!4895190 () Bool)

(declare-fun tp!1377569 () Bool)

(assert (=> b!4895190 (= e!3060104 tp!1377569)))

(declare-fun b!4895189 () Bool)

(declare-fun tp!1377566 () Bool)

(declare-fun tp!1377568 () Bool)

(assert (=> b!4895189 (= e!3060104 (and tp!1377566 tp!1377568))))

(declare-fun b!4895188 () Bool)

(assert (=> b!4895188 (= e!3060104 tp_is_empty!35781)))

(assert (=> b!4894211 (= tp!1377315 e!3060104)))

(assert (= (and b!4894211 (is-ElementMatch!13250 (regOne!27012 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895188))

(assert (= (and b!4894211 (is-Concat!21736 (regOne!27012 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895189))

(assert (= (and b!4894211 (is-Star!13250 (regOne!27012 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895190))

(assert (= (and b!4894211 (is-Union!13250 (regOne!27012 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895191))

(declare-fun b!4895195 () Bool)

(declare-fun e!3060105 () Bool)

(declare-fun tp!1377575 () Bool)

(declare-fun tp!1377572 () Bool)

(assert (=> b!4895195 (= e!3060105 (and tp!1377575 tp!1377572))))

(declare-fun b!4895194 () Bool)

(declare-fun tp!1377574 () Bool)

(assert (=> b!4895194 (= e!3060105 tp!1377574)))

(declare-fun b!4895193 () Bool)

(declare-fun tp!1377571 () Bool)

(declare-fun tp!1377573 () Bool)

(assert (=> b!4895193 (= e!3060105 (and tp!1377571 tp!1377573))))

(declare-fun b!4895192 () Bool)

(assert (=> b!4895192 (= e!3060105 tp_is_empty!35781)))

(assert (=> b!4894211 (= tp!1377317 e!3060105)))

(assert (= (and b!4894211 (is-ElementMatch!13250 (regTwo!27012 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895192))

(assert (= (and b!4894211 (is-Concat!21736 (regTwo!27012 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895193))

(assert (= (and b!4894211 (is-Star!13250 (regTwo!27012 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895194))

(assert (= (and b!4894211 (is-Union!13250 (regTwo!27012 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895195))

(declare-fun b!4895199 () Bool)

(declare-fun e!3060106 () Bool)

(declare-fun tp!1377580 () Bool)

(declare-fun tp!1377577 () Bool)

(assert (=> b!4895199 (= e!3060106 (and tp!1377580 tp!1377577))))

(declare-fun b!4895198 () Bool)

(declare-fun tp!1377579 () Bool)

(assert (=> b!4895198 (= e!3060106 tp!1377579)))

(declare-fun b!4895197 () Bool)

(declare-fun tp!1377576 () Bool)

(declare-fun tp!1377578 () Bool)

(assert (=> b!4895197 (= e!3060106 (and tp!1377576 tp!1377578))))

(declare-fun b!4895196 () Bool)

(assert (=> b!4895196 (= e!3060106 tp_is_empty!35781)))

(assert (=> b!4894227 (= tp!1377332 e!3060106)))

(assert (= (and b!4894227 (is-ElementMatch!13250 (regOne!27012 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895196))

(assert (= (and b!4894227 (is-Concat!21736 (regOne!27012 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895197))

(assert (= (and b!4894227 (is-Star!13250 (regOne!27012 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895198))

(assert (= (and b!4894227 (is-Union!13250 (regOne!27012 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895199))

(declare-fun b!4895203 () Bool)

(declare-fun e!3060107 () Bool)

(declare-fun tp!1377585 () Bool)

(declare-fun tp!1377582 () Bool)

(assert (=> b!4895203 (= e!3060107 (and tp!1377585 tp!1377582))))

(declare-fun b!4895202 () Bool)

(declare-fun tp!1377584 () Bool)

(assert (=> b!4895202 (= e!3060107 tp!1377584)))

(declare-fun b!4895201 () Bool)

(declare-fun tp!1377581 () Bool)

(declare-fun tp!1377583 () Bool)

(assert (=> b!4895201 (= e!3060107 (and tp!1377581 tp!1377583))))

(declare-fun b!4895200 () Bool)

(assert (=> b!4895200 (= e!3060107 tp_is_empty!35781)))

(assert (=> b!4894227 (= tp!1377334 e!3060107)))

(assert (= (and b!4894227 (is-ElementMatch!13250 (regTwo!27012 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895200))

(assert (= (and b!4894227 (is-Concat!21736 (regTwo!27012 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895201))

(assert (= (and b!4894227 (is-Star!13250 (regTwo!27012 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895202))

(assert (= (and b!4894227 (is-Union!13250 (regTwo!27012 (regOne!27013 (regex!8175 (h!62858 rulesArg!165)))))) b!4895203))

(declare-fun b!4895207 () Bool)

(declare-fun e!3060108 () Bool)

(declare-fun tp!1377590 () Bool)

(declare-fun tp!1377587 () Bool)

(assert (=> b!4895207 (= e!3060108 (and tp!1377590 tp!1377587))))

(declare-fun b!4895206 () Bool)

(declare-fun tp!1377589 () Bool)

(assert (=> b!4895206 (= e!3060108 tp!1377589)))

(declare-fun b!4895205 () Bool)

(declare-fun tp!1377586 () Bool)

(declare-fun tp!1377588 () Bool)

(assert (=> b!4895205 (= e!3060108 (and tp!1377586 tp!1377588))))

(declare-fun b!4895204 () Bool)

(assert (=> b!4895204 (= e!3060108 tp_is_empty!35781)))

(assert (=> b!4894219 (= tp!1377327 e!3060108)))

(assert (= (and b!4894219 (is-ElementMatch!13250 (regex!8175 (h!62858 (t!365674 (t!365674 rulesArg!165)))))) b!4895204))

(assert (= (and b!4894219 (is-Concat!21736 (regex!8175 (h!62858 (t!365674 (t!365674 rulesArg!165)))))) b!4895205))

(assert (= (and b!4894219 (is-Star!13250 (regex!8175 (h!62858 (t!365674 (t!365674 rulesArg!165)))))) b!4895206))

(assert (= (and b!4894219 (is-Union!13250 (regex!8175 (h!62858 (t!365674 (t!365674 rulesArg!165)))))) b!4895207))

(declare-fun b!4895211 () Bool)

(declare-fun e!3060109 () Bool)

(declare-fun tp!1377595 () Bool)

(declare-fun tp!1377592 () Bool)

(assert (=> b!4895211 (= e!3060109 (and tp!1377595 tp!1377592))))

(declare-fun b!4895210 () Bool)

(declare-fun tp!1377594 () Bool)

(assert (=> b!4895210 (= e!3060109 tp!1377594)))

(declare-fun b!4895209 () Bool)

(declare-fun tp!1377591 () Bool)

(declare-fun tp!1377593 () Bool)

(assert (=> b!4895209 (= e!3060109 (and tp!1377591 tp!1377593))))

(declare-fun b!4895208 () Bool)

(assert (=> b!4895208 (= e!3060109 tp_is_empty!35781)))

(assert (=> b!4894212 (= tp!1377318 e!3060109)))

(assert (= (and b!4894212 (is-ElementMatch!13250 (reg!13579 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895208))

(assert (= (and b!4894212 (is-Concat!21736 (reg!13579 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895209))

(assert (= (and b!4894212 (is-Star!13250 (reg!13579 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895210))

(assert (= (and b!4894212 (is-Union!13250 (reg!13579 (regOne!27012 (regex!8175 (h!62858 rulesArg!165)))))) b!4895211))

(declare-fun e!3060110 () Bool)

(declare-fun tp!1377597 () Bool)

(declare-fun b!4895212 () Bool)

(declare-fun tp!1377598 () Bool)

(assert (=> b!4895212 (= e!3060110 (and (inv!72691 (left!40981 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (value!262139 (_1!33532 (get!19481 lt!2005936))))))) tp!1377597 (inv!72691 (right!41311 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (value!262139 (_1!33532 (get!19481 lt!2005936))))))) tp!1377598))))

(declare-fun b!4895214 () Bool)

(declare-fun e!3060111 () Bool)

(declare-fun tp!1377596 () Bool)

(assert (=> b!4895214 (= e!3060111 tp!1377596)))

(declare-fun b!4895213 () Bool)

(assert (=> b!4895213 (= e!3060110 (and (inv!72697 (xs!18059 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (value!262139 (_1!33532 (get!19481 lt!2005936))))))) e!3060111))))

(assert (=> b!4893767 (= tp!1377314 (and (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (value!262139 (_1!33532 (get!19481 lt!2005936)))))) e!3060110))))

(assert (= (and b!4893767 (is-Node!14743 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (value!262139 (_1!33532 (get!19481 lt!2005936))))))) b!4895212))

(assert (= b!4895213 b!4895214))

(assert (= (and b!4893767 (is-Leaf!24548 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))) (value!262139 (_1!33532 (get!19481 lt!2005936))))))) b!4895213))

(declare-fun m!5901236 () Bool)

(assert (=> b!4895212 m!5901236))

(declare-fun m!5901238 () Bool)

(assert (=> b!4895212 m!5901238))

(declare-fun m!5901240 () Bool)

(assert (=> b!4895213 m!5901240))

(assert (=> b!4893767 m!5898856))

(declare-fun b!4895217 () Bool)

(declare-fun b_free!131591 () Bool)

(declare-fun b_next!132381 () Bool)

(assert (=> b!4895217 (= b_free!131591 (not b_next!132381))))

(declare-fun t!365854 () Bool)

(declare-fun tb!259091 () Bool)

(assert (=> (and b!4895217 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) t!365854) tb!259091))

(declare-fun result!322678 () Bool)

(assert (= result!322678 result!322630))

(assert (=> d!1572553 t!365854))

(declare-fun t!365856 () Bool)

(declare-fun tb!259093 () Bool)

(assert (=> (and b!4895217 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365856) tb!259093))

(declare-fun result!322680 () Bool)

(assert (= result!322680 result!322672))

(assert (=> d!1572681 t!365856))

(declare-fun t!365858 () Bool)

(declare-fun tb!259095 () Bool)

(assert (=> (and b!4895217 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365858) tb!259095))

(declare-fun result!322682 () Bool)

(assert (= result!322682 result!322642))

(assert (=> d!1572579 t!365858))

(declare-fun t!365860 () Bool)

(declare-fun tb!259097 () Bool)

(assert (=> (and b!4895217 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365860) tb!259097))

(declare-fun result!322684 () Bool)

(assert (= result!322684 result!322510))

(assert (=> bs!1176123 t!365860))

(declare-fun t!365862 () Bool)

(declare-fun tb!259099 () Bool)

(assert (=> (and b!4895217 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365862) tb!259099))

(declare-fun result!322686 () Bool)

(assert (= result!322686 result!322504))

(assert (=> d!1572013 t!365862))

(assert (=> bs!1176124 t!365862))

(declare-fun t!365864 () Bool)

(declare-fun tb!259101 () Bool)

(assert (=> (and b!4895217 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) t!365864) tb!259101))

(declare-fun result!322688 () Bool)

(assert (= result!322688 result!322624))

(assert (=> d!1572559 t!365864))

(assert (=> d!1572003 t!365862))

(assert (=> d!1572013 t!365860))

(declare-fun tb!259103 () Bool)

(declare-fun t!365866 () Bool)

(assert (=> (and b!4895217 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006351)))))) t!365866) tb!259103))

(declare-fun result!322690 () Bool)

(assert (= result!322690 result!322588))

(assert (=> d!1572313 t!365866))

(assert (=> d!1572575 t!365858))

(declare-fun t!365868 () Bool)

(declare-fun tb!259105 () Bool)

(assert (=> (and b!4895217 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165)))) t!365868) tb!259105))

(declare-fun result!322692 () Bool)

(assert (= result!322692 result!322606))

(assert (=> d!1572357 t!365868))

(declare-fun tb!259107 () Bool)

(declare-fun t!365870 () Bool)

(assert (=> (and b!4895217 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086)))))) t!365870) tb!259107))

(declare-fun result!322694 () Bool)

(assert (= result!322694 result!322660))

(assert (=> d!1572627 t!365870))

(declare-fun tb!259109 () Bool)

(declare-fun t!365872 () Bool)

(assert (=> (and b!4895217 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006068)))))) t!365872) tb!259109))

(declare-fun result!322696 () Bool)

(assert (= result!322696 result!322648))

(assert (=> d!1572599 t!365872))

(assert (=> d!1572553 t!365864))

(declare-fun t!365874 () Bool)

(declare-fun tb!259111 () Bool)

(assert (=> (and b!4895217 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091)))))) t!365874) tb!259111))

(declare-fun result!322698 () Bool)

(assert (= result!322698 result!322618))

(assert (=> d!1572523 t!365874))

(assert (=> d!1572677 t!365856))

(assert (=> d!1572361 t!365868))

(declare-fun t!365876 () Bool)

(declare-fun tb!259113 () Bool)

(assert (=> (and b!4895217 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))) t!365876) tb!259113))

(declare-fun result!322700 () Bool)

(assert (= result!322700 result!322520))

(assert (=> d!1572111 t!365876))

(declare-fun b_and!345159 () Bool)

(declare-fun tp!1377602 () Bool)

(assert (=> b!4895217 (= tp!1377602 (and (=> t!365872 result!322696) (=> t!365860 result!322684) (=> t!365876 result!322700) (=> t!365870 result!322694) (=> t!365868 result!322692) (=> t!365862 result!322686) (=> t!365866 result!322690) (=> t!365854 result!322678) (=> t!365874 result!322698) (=> t!365858 result!322682) (=> t!365856 result!322680) (=> t!365864 result!322688) b_and!345159))))

(declare-fun b_free!131593 () Bool)

(declare-fun b_next!132383 () Bool)

(assert (=> b!4895217 (= b_free!131593 (not b_next!132383))))

(declare-fun t!365878 () Bool)

(declare-fun tb!259115 () Bool)

(assert (=> (and b!4895217 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006351)))))) t!365878) tb!259115))

(declare-fun result!322702 () Bool)

(assert (= result!322702 result!322654))

(assert (=> d!1572613 t!365878))

(declare-fun t!365880 () Bool)

(declare-fun tb!259117 () Bool)

(assert (=> (and b!4895217 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006086)))))) t!365880) tb!259117))

(declare-fun result!322704 () Bool)

(assert (= result!322704 result!322612))

(assert (=> d!1572441 t!365880))

(declare-fun t!365882 () Bool)

(declare-fun tb!259119 () Bool)

(assert (=> (and b!4895217 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365882) tb!259119))

(declare-fun result!322706 () Bool)

(assert (= result!322706 result!322636))

(assert (=> d!1572575 t!365882))

(declare-fun t!365884 () Bool)

(declare-fun tb!259121 () Bool)

(assert (=> (and b!4895217 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006091)))))) t!365884) tb!259121))

(declare-fun result!322708 () Bool)

(assert (= result!322708 result!322582))

(assert (=> d!1572245 t!365884))

(declare-fun t!365886 () Bool)

(declare-fun tb!259123 () Bool)

(assert (=> (and b!4895217 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365886) tb!259123))

(declare-fun result!322710 () Bool)

(assert (= result!322710 result!322666))

(assert (=> d!1572677 t!365886))

(declare-fun t!365888 () Bool)

(declare-fun tb!259125 () Bool)

(assert (=> (and b!4895217 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365888) tb!259125))

(declare-fun result!322712 () Bool)

(assert (= result!322712 result!322540))

(assert (=> bs!1176124 t!365888))

(declare-fun tb!259127 () Bool)

(declare-fun t!365890 () Bool)

(assert (=> (and b!4895217 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2006068)))))) t!365890) tb!259127))

(declare-fun result!322714 () Bool)

(assert (= result!322714 result!322594))

(assert (=> d!1572349 t!365890))

(declare-fun t!365892 () Bool)

(declare-fun tb!259129 () Bool)

(assert (=> (and b!4895217 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365892) tb!259129))

(declare-fun result!322716 () Bool)

(assert (= result!322716 result!322600))

(assert (=> d!1572357 t!365892))

(declare-fun t!365894 () Bool)

(declare-fun tb!259131 () Bool)

(assert (=> (and b!4895217 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165)))) t!365894) tb!259131))

(declare-fun result!322718 () Bool)

(assert (= result!322718 result!322534))

(assert (=> bs!1176123 t!365894))

(declare-fun t!365896 () Bool)

(declare-fun tb!259133 () Bool)

(assert (=> (and b!4895217 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936)))))) t!365896) tb!259133))

(declare-fun result!322720 () Bool)

(assert (= result!322720 result!322498))

(assert (=> d!1571937 t!365896))

(declare-fun tp!1377600 () Bool)

(declare-fun b_and!345161 () Bool)

(assert (=> b!4895217 (= tp!1377600 (and (=> t!365896 result!322720) (=> t!365884 result!322708) (=> t!365886 result!322710) (=> t!365890 result!322714) (=> t!365882 result!322706) (=> t!365892 result!322716) (=> t!365880 result!322704) (=> t!365878 result!322702) (=> t!365888 result!322712) (=> t!365894 result!322718) b_and!345161))))

(declare-fun e!3060115 () Bool)

(assert (=> b!4895217 (= e!3060115 (and tp!1377602 tp!1377600))))

(declare-fun b!4895216 () Bool)

(declare-fun e!3060112 () Bool)

(declare-fun tp!1377601 () Bool)

(assert (=> b!4895216 (= e!3060112 (and tp!1377601 (inv!72686 (tag!9039 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (inv!72689 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) e!3060115))))

(declare-fun b!4895215 () Bool)

(declare-fun e!3060114 () Bool)

(declare-fun tp!1377599 () Bool)

(assert (=> b!4895215 (= e!3060114 (and e!3060112 tp!1377599))))

(assert (=> b!4894218 (= tp!1377325 e!3060114)))

(assert (= b!4895216 b!4895217))

(assert (= b!4895215 b!4895216))

(assert (= (and b!4894218 (is-Cons!56410 (t!365674 (t!365674 (t!365674 rulesArg!165))))) b!4895215))

(declare-fun m!5901242 () Bool)

(assert (=> b!4895216 m!5901242))

(declare-fun m!5901244 () Bool)

(assert (=> b!4895216 m!5901244))

(declare-fun b!4895218 () Bool)

(declare-fun e!3060116 () Bool)

(declare-fun tp!1377603 () Bool)

(assert (=> b!4895218 (= e!3060116 (and tp_is_empty!35781 tp!1377603))))

(assert (=> b!4894239 (= tp!1377345 e!3060116)))

(assert (= (and b!4894239 (is-Cons!56408 (innerList!14831 (xs!18059 (right!41311 (c!831694 input!1236)))))) b!4895218))

(declare-fun b_lambda!194559 () Bool)

(assert (= b_lambda!194511 (or b!4893578 b_lambda!194559)))

(assert (=> d!1572337 d!1572137))

(declare-fun b_lambda!194561 () Bool)

(assert (= b_lambda!194507 (or d!1571967 b_lambda!194561)))

(declare-fun bs!1176246 () Bool)

(declare-fun d!1572721 () Bool)

(assert (= bs!1176246 (and d!1572721 d!1571967)))

(assert (=> bs!1176246 (= (dynLambda!22642 lambda!244037 (h!62858 (t!365674 rulesArg!165))) (ruleValid!3673 thiss!14805 (h!62858 (t!365674 rulesArg!165))))))

(assert (=> bs!1176246 m!5898950))

(assert (=> b!4894476 d!1572721))

(declare-fun b_lambda!194563 () Bool)

(assert (= b_lambda!194545 (or (and b!4893356 b_free!131567) (and b!4893636 b_free!131575 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4894220 b_free!131583 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4895217 b_free!131591 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) b_lambda!194563)))

(declare-fun b_lambda!194565 () Bool)

(assert (= b_lambda!194533 (or b!4894201 b_lambda!194565)))

(declare-fun bs!1176247 () Bool)

(declare-fun d!1572723 () Bool)

(assert (= bs!1176247 (and d!1572723 b!4894201)))

(assert (=> bs!1176247 (= (dynLambda!22645 lambda!244047 (seqFromList!5937 (list!17727 (_1!33535 lt!2006388)))) (= (list!17727 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006388)))))) (list!17727 (seqFromList!5937 (list!17727 (_1!33535 lt!2006388))))))))

(declare-fun b_lambda!194601 () Bool)

(assert (=> (not b_lambda!194601) (not bs!1176247)))

(declare-fun t!365898 () Bool)

(declare-fun tb!259135 () Bool)

(assert (=> (and b!4893356 (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) t!365898) tb!259135))

(declare-fun e!3060117 () Bool)

(declare-fun b!4895219 () Bool)

(declare-fun tp!1377604 () Bool)

(assert (=> b!4895219 (= e!3060117 (and (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006388))))))) tp!1377604))))

(declare-fun result!322722 () Bool)

(assert (=> tb!259135 (= result!322722 (and (inv!72690 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006388)))))) e!3060117))))

(assert (= tb!259135 b!4895219))

(declare-fun m!5901246 () Bool)

(assert (=> b!4895219 m!5901246))

(declare-fun m!5901248 () Bool)

(assert (=> tb!259135 m!5901248))

(assert (=> bs!1176247 t!365898))

(declare-fun b_and!345163 () Bool)

(assert (= b_and!345141 (and (=> t!365898 result!322722) b_and!345163)))

(declare-fun t!365900 () Bool)

(declare-fun tb!259137 () Bool)

(assert (=> (and b!4893636 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) t!365900) tb!259137))

(declare-fun result!322724 () Bool)

(assert (= result!322724 result!322722))

(assert (=> bs!1176247 t!365900))

(declare-fun b_and!345165 () Bool)

(assert (= b_and!345143 (and (=> t!365900 result!322724) b_and!345165)))

(declare-fun t!365902 () Bool)

(declare-fun tb!259139 () Bool)

(assert (=> (and b!4894220 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) t!365902) tb!259139))

(declare-fun result!322726 () Bool)

(assert (= result!322726 result!322722))

(assert (=> bs!1176247 t!365902))

(declare-fun b_and!345167 () Bool)

(assert (= b_and!345145 (and (=> t!365902 result!322726) b_and!345167)))

(declare-fun t!365904 () Bool)

(declare-fun tb!259141 () Bool)

(assert (=> (and b!4895217 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) t!365904) tb!259141))

(declare-fun result!322728 () Bool)

(assert (= result!322728 result!322722))

(assert (=> bs!1176247 t!365904))

(declare-fun b_and!345169 () Bool)

(assert (= b_and!345161 (and (=> t!365904 result!322728) b_and!345169)))

(declare-fun b_lambda!194603 () Bool)

(assert (=> (not b_lambda!194603) (not bs!1176247)))

(assert (=> bs!1176247 t!365806))

(declare-fun b_and!345171 () Bool)

(assert (= b_and!345153 (and (=> t!365806 result!322630) b_and!345171)))

(assert (=> bs!1176247 t!365808))

(declare-fun b_and!345173 () Bool)

(assert (= b_and!345155 (and (=> t!365808 result!322632) b_and!345173)))

(assert (=> bs!1176247 t!365810))

(declare-fun b_and!345175 () Bool)

(assert (= b_and!345157 (and (=> t!365810 result!322634) b_and!345175)))

(assert (=> bs!1176247 t!365854))

(declare-fun b_and!345177 () Bool)

(assert (= b_and!345159 (and (=> t!365854 result!322678) b_and!345177)))

(declare-fun m!5901250 () Bool)

(assert (=> bs!1176247 m!5901250))

(declare-fun m!5901252 () Bool)

(assert (=> bs!1176247 m!5901252))

(assert (=> bs!1176247 m!5899446))

(assert (=> bs!1176247 m!5900760))

(assert (=> bs!1176247 m!5900764))

(assert (=> bs!1176247 m!5901250))

(assert (=> bs!1176247 m!5899446))

(assert (=> bs!1176247 m!5900764))

(assert (=> d!1572551 d!1572723))

(declare-fun b_lambda!194567 () Bool)

(assert (= b_lambda!194541 (or (and b!4893356 b_free!131569) (and b!4893636 b_free!131577 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4894220 b_free!131585 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4895217 b_free!131593 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))))) b_lambda!194567)))

(declare-fun b_lambda!194569 () Bool)

(assert (= b_lambda!194531 (or b!4894201 b_lambda!194569)))

(declare-fun bs!1176248 () Bool)

(declare-fun d!1572725 () Bool)

(assert (= bs!1176248 (and d!1572725 b!4894201)))

(assert (=> bs!1176248 (= (dynLambda!22645 lambda!244047 (_1!33535 lt!2006388)) (= (list!17727 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (_1!33535 lt!2006388)))) (list!17727 (_1!33535 lt!2006388))))))

(declare-fun b_lambda!194605 () Bool)

(assert (=> (not b_lambda!194605) (not bs!1176248)))

(declare-fun t!365906 () Bool)

(declare-fun tb!259143 () Bool)

(assert (=> (and b!4893356 (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) t!365906) tb!259143))

(declare-fun b!4895220 () Bool)

(declare-fun tp!1377605 () Bool)

(declare-fun e!3060118 () Bool)

(assert (=> b!4895220 (= e!3060118 (and (inv!72691 (c!831694 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (_1!33535 lt!2006388))))) tp!1377605))))

(declare-fun result!322730 () Bool)

(assert (=> tb!259143 (= result!322730 (and (inv!72690 (dynLambda!22641 (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (_1!33535 lt!2006388)))) e!3060118))))

(assert (= tb!259143 b!4895220))

(declare-fun m!5901254 () Bool)

(assert (=> b!4895220 m!5901254))

(declare-fun m!5901256 () Bool)

(assert (=> tb!259143 m!5901256))

(assert (=> bs!1176248 t!365906))

(declare-fun b_and!345179 () Bool)

(assert (= b_and!345163 (and (=> t!365906 result!322730) b_and!345179)))

(declare-fun t!365908 () Bool)

(declare-fun tb!259145 () Bool)

(assert (=> (and b!4893636 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) t!365908) tb!259145))

(declare-fun result!322732 () Bool)

(assert (= result!322732 result!322730))

(assert (=> bs!1176248 t!365908))

(declare-fun b_and!345181 () Bool)

(assert (= b_and!345165 (and (=> t!365908 result!322732) b_and!345181)))

(declare-fun t!365910 () Bool)

(declare-fun tb!259147 () Bool)

(assert (=> (and b!4894220 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) t!365910) tb!259147))

(declare-fun result!322734 () Bool)

(assert (= result!322734 result!322730))

(assert (=> bs!1176248 t!365910))

(declare-fun b_and!345183 () Bool)

(assert (= b_and!345167 (and (=> t!365910 result!322734) b_and!345183)))

(declare-fun t!365912 () Bool)

(declare-fun tb!259149 () Bool)

(assert (=> (and b!4895217 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165))))) t!365912) tb!259149))

(declare-fun result!322736 () Bool)

(assert (= result!322736 result!322730))

(assert (=> bs!1176248 t!365912))

(declare-fun b_and!345185 () Bool)

(assert (= b_and!345169 (and (=> t!365912 result!322736) b_and!345185)))

(declare-fun b_lambda!194607 () Bool)

(assert (=> (not b_lambda!194607) (not bs!1176248)))

(assert (=> bs!1176248 t!365800))

(declare-fun b_and!345187 () Bool)

(assert (= b_and!345171 (and (=> t!365800 result!322624) b_and!345187)))

(assert (=> bs!1176248 t!365802))

(declare-fun b_and!345189 () Bool)

(assert (= b_and!345173 (and (=> t!365802 result!322626) b_and!345189)))

(assert (=> bs!1176248 t!365804))

(declare-fun b_and!345191 () Bool)

(assert (= b_and!345175 (and (=> t!365804 result!322628) b_and!345191)))

(assert (=> bs!1176248 t!365864))

(declare-fun b_and!345193 () Bool)

(assert (= b_and!345177 (and (=> t!365864 result!322688) b_and!345193)))

(declare-fun m!5901258 () Bool)

(assert (=> bs!1176248 m!5901258))

(declare-fun m!5901260 () Bool)

(assert (=> bs!1176248 m!5901260))

(assert (=> bs!1176248 m!5899444))

(assert (=> bs!1176248 m!5900766))

(assert (=> bs!1176248 m!5901258))

(assert (=> bs!1176248 m!5900766))

(assert (=> d!1572549 d!1572725))

(declare-fun b_lambda!194571 () Bool)

(assert (= b_lambda!194543 (or (and b!4893356 b_free!131567) (and b!4893636 b_free!131575 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4894220 b_free!131583 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4895217 b_free!131591 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) b_lambda!194571)))

(declare-fun b_lambda!194573 () Bool)

(assert (= b_lambda!194513 (or b!4893578 b_lambda!194573)))

(assert (=> d!1572341 d!1572135))

(declare-fun b_lambda!194575 () Bool)

(assert (= b_lambda!194535 (or (and b!4893356 b_free!131567 (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))) (and b!4893636 b_free!131575) (and b!4894220 b_free!131583 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))) (and b!4895217 b_free!131591 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))) b_lambda!194575)))

(declare-fun b_lambda!194577 () Bool)

(assert (= b_lambda!194525 (or d!1572013 b_lambda!194577)))

(declare-fun bs!1176249 () Bool)

(declare-fun d!1572727 () Bool)

(assert (= bs!1176249 (and d!1572727 d!1572013)))

(declare-fun res!2090694 () Bool)

(declare-fun e!3060119 () Bool)

(assert (=> bs!1176249 (=> res!2090694 e!3060119)))

(assert (=> bs!1176249 (= res!2090694 (not (= (list!17727 (_1!33535 lt!2006025)) (list!17727 (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))))))))

(assert (=> bs!1176249 (= (dynLambda!22651 lambda!244043 (_1!33535 lt!2006025) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025)))) e!3060119)))

(declare-fun b!4895221 () Bool)

(assert (=> b!4895221 (= e!3060119 (= (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (_1!33535 lt!2006025)) (dynLambda!22646 (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (seqFromList!5937 (list!17727 (_1!33535 lt!2006025))))))))

(assert (= (and bs!1176249 (not res!2090694)) b!4895221))

(declare-fun b_lambda!194609 () Bool)

(assert (=> (not b_lambda!194609) (not b!4895221)))

(assert (=> b!4895221 t!365683))

(declare-fun b_and!345195 () Bool)

(assert (= b_and!345187 (and (=> t!365683 result!322504) b_and!345195)))

(assert (=> b!4895221 t!365685))

(declare-fun b_and!345197 () Bool)

(assert (= b_and!345189 (and (=> t!365685 result!322508) b_and!345197)))

(assert (=> b!4895221 t!365702))

(declare-fun b_and!345199 () Bool)

(assert (= b_and!345191 (and (=> t!365702 result!322524) b_and!345199)))

(assert (=> b!4895221 t!365862))

(declare-fun b_and!345201 () Bool)

(assert (= b_and!345193 (and (=> t!365862 result!322686) b_and!345201)))

(declare-fun b_lambda!194611 () Bool)

(assert (=> (not b_lambda!194611) (not b!4895221)))

(assert (=> b!4895221 t!365687))

(declare-fun b_and!345203 () Bool)

(assert (= b_and!345195 (and (=> t!365687 result!322510) b_and!345203)))

(assert (=> b!4895221 t!365689))

(declare-fun b_and!345205 () Bool)

(assert (= b_and!345197 (and (=> t!365689 result!322512) b_and!345205)))

(assert (=> b!4895221 t!365704))

(declare-fun b_and!345207 () Bool)

(assert (= b_and!345199 (and (=> t!365704 result!322526) b_and!345207)))

(assert (=> b!4895221 t!365860))

(declare-fun b_and!345209 () Bool)

(assert (= b_and!345201 (and (=> t!365860 result!322684) b_and!345209)))

(assert (=> bs!1176249 m!5898640))

(assert (=> bs!1176249 m!5898642))

(assert (=> bs!1176249 m!5899132))

(assert (=> b!4895221 m!5899128))

(assert (=> b!4895221 m!5898642))

(assert (=> b!4895221 m!5899136))

(assert (=> d!1572415 d!1572727))

(declare-fun b_lambda!194579 () Bool)

(assert (= b_lambda!194537 (or (and b!4893356 b_free!131567 (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))) (and b!4893636 b_free!131575) (and b!4894220 b_free!131583 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))) (and b!4895217 b_free!131591 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))) b_lambda!194579)))

(declare-fun b_lambda!194581 () Bool)

(assert (= b_lambda!194433 (or (and b!4893356 b_free!131567 (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))) (and b!4893636 b_free!131575 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))) (and b!4894220 b_free!131583 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))) (and b!4895217 b_free!131591 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))) b_lambda!194581)))

(declare-fun b_lambda!194583 () Bool)

(assert (= b_lambda!194517 (or (and b!4893356 b_free!131569) (and b!4893636 b_free!131577 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4894220 b_free!131585 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4895217 b_free!131593 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))))) b_lambda!194583)))

(declare-fun b_lambda!194585 () Bool)

(assert (= b_lambda!194521 (or (and b!4893356 b_free!131567) (and b!4893636 b_free!131575 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4894220 b_free!131583 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4895217 b_free!131591 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) b_lambda!194585)))

(declare-fun b_lambda!194587 () Bool)

(assert (= b_lambda!194523 (or d!1571851 b_lambda!194587)))

(declare-fun bs!1176250 () Bool)

(declare-fun d!1572729 () Bool)

(assert (= bs!1176250 (and d!1572729 d!1571851)))

(assert (=> bs!1176250 (= (dynLambda!22642 lambda!244023 (h!62858 (t!365674 rulesArg!165))) (ruleValid!3673 thiss!14805 (h!62858 (t!365674 rulesArg!165))))))

(assert (=> bs!1176250 m!5898950))

(assert (=> b!4894635 d!1572729))

(declare-fun b_lambda!194589 () Bool)

(assert (= b_lambda!194417 (or (and b!4893356 b_free!131569 (= (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))) (and b!4893636 b_free!131577 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))) (and b!4894220 b_free!131585 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))) (and b!4895217 b_free!131593 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toChars!10929 (transformation!8175 (rule!11365 (_1!33532 (get!19481 lt!2005936))))))) b_lambda!194589)))

(declare-fun b_lambda!194591 () Bool)

(assert (= b_lambda!194553 (or (and b!4893356 b_free!131569) (and b!4893636 b_free!131577 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4894220 b_free!131585 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4895217 b_free!131593 (= (toChars!10929 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toChars!10929 (transformation!8175 (h!62858 rulesArg!165))))) b_lambda!194591)))

(declare-fun b_lambda!194593 () Bool)

(assert (= b_lambda!194555 (or (and b!4893356 b_free!131567) (and b!4893636 b_free!131575 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4894220 b_free!131583 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4895217 b_free!131591 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) b_lambda!194593)))

(declare-fun b_lambda!194595 () Bool)

(assert (= b_lambda!194519 (or (and b!4893356 b_free!131567) (and b!4893636 b_free!131575 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4894220 b_free!131583 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4895217 b_free!131591 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) b_lambda!194595)))

(declare-fun b_lambda!194597 () Bool)

(assert (= b_lambda!194557 (or (and b!4893356 b_free!131567) (and b!4893636 b_free!131575 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4894220 b_free!131583 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) (and b!4895217 b_free!131591 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))))) b_lambda!194597)))

(declare-fun b_lambda!194599 () Bool)

(assert (= b_lambda!194539 (or (and b!4893356 b_free!131567 (= (toValue!11070 (transformation!8175 (h!62858 rulesArg!165))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))) (and b!4893636 b_free!131575) (and b!4894220 b_free!131583 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 rulesArg!165))))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))) (and b!4895217 b_free!131591 (= (toValue!11070 (transformation!8175 (h!62858 (t!365674 (t!365674 (t!365674 rulesArg!165)))))) (toValue!11070 (transformation!8175 (h!62858 (t!365674 rulesArg!165)))))) b_lambda!194599)))

(push 1)

(assert (not b!4894951))

(assert (not b!4895143))

(assert (not bm!339549))

(assert (not b!4895037))

(assert (not b!4894518))

(assert (not b!4895112))

(assert (not b!4894485))

(assert (not b!4895207))

(assert (not b!4895183))

(assert (not bm!339480))

(assert (not d!1572315))

(assert (not b!4894466))

(assert (not tb!259019))

(assert (not b!4894673))

(assert (not b!4894665))

(assert (not bm!339550))

(assert (not b!4894714))

(assert (not b!4894867))

(assert (not b!4895082))

(assert (not b!4894653))

(assert (not b_lambda!194561))

(assert (not b_next!132357))

(assert (not b!4894645))

(assert (not b!4894710))

(assert (not d!1572481))

(assert (not b!4894651))

(assert (not b!4894646))

(assert (not b!4895157))

(assert (not d!1572245))

(assert (not bm!339506))

(assert (not b!4895182))

(assert (not d!1572293))

(assert (not b!4895125))

(assert (not b_lambda!194493))

(assert (not b!4894863))

(assert (not d!1572333))

(assert (not d!1572665))

(assert (not bm!339504))

(assert (not b!4895133))

(assert (not b!4894621))

(assert (not b_next!132375))

(assert (not b!4894874))

(assert (not b_next!132373))

(assert (not b!4895116))

(assert (not d!1572555))

(assert (not bm!339553))

(assert (not b!4895100))

(assert (not bm!339508))

(assert (not b!4894663))

(assert (not b!4894857))

(assert (not b!4895139))

(assert (not d!1572227))

(assert (not d!1572279))

(assert (not b!4894634))

(assert (not b!4895131))

(assert (not bs!1176250))

(assert (not b!4895058))

(assert (not b!4894601))

(assert (not b!4895093))

(assert (not b!4895016))

(assert (not d!1572657))

(assert (not bm!339533))

(assert (not bs!1176248))

(assert (not b!4894479))

(assert (not b!4895202))

(assert (not b!4894234))

(assert (not b!4894444))

(assert (not b!4895056))

(assert (not b!4894973))

(assert (not b!4894985))

(assert (not b!4895211))

(assert (not b!4894821))

(assert (not b!4894546))

(assert (not b_next!132359))

(assert (not b!4894969))

(assert (not d!1572533))

(assert (not b!4894582))

(assert (not bm!339495))

(assert (not b!4894876))

(assert (not b!4894981))

(assert (not d!1572485))

(assert (not b!4894943))

(assert (not b!4895151))

(assert (not b!4895153))

(assert (not b!4895085))

(assert (not b!4894808))

(assert (not d!1572531))

(assert (not bm!339496))

(assert (not d!1572495))

(assert (not bm!339539))

(assert (not d!1572635))

(assert (not d!1572561))

(assert (not b!4894955))

(assert (not b!4894758))

(assert (not d!1572575))

(assert (not b!4894610))

(assert (not b!4894472))

(assert (not tb!259049))

(assert (not b!4894467))

(assert (not d!1572707))

(assert (not b!4894942))

(assert (not b!4895096))

(assert (not b!4895099))

(assert (not b!4894966))

(assert (not b!4894832))

(assert (not d!1572715))

(assert (not b!4894445))

(assert (not d!1572569))

(assert (not d!1572643))

(assert (not b!4894871))

(assert (not d!1572709))

(assert (not b!4894671))

(assert (not d!1572685))

(assert (not b!4894483))

(assert (not b!4894721))

(assert (not d!1572701))

(assert (not d!1572471))

(assert (not bm!339503))

(assert (not b!4894765))

(assert (not b!4894469))

(assert (not b!4895073))

(assert (not d!1572343))

(assert (not b!4895055))

(assert (not b!4894830))

(assert (not d!1572451))

(assert (not b!4894937))

(assert (not b!4894620))

(assert (not d!1572425))

(assert (not b!4894640))

(assert (not b!4895219))

(assert (not d!1572457))

(assert (not d!1572253))

(assert (not bm!339488))

(assert (not b_lambda!194437))

(assert b_and!345203)

(assert (not b!4895063))

(assert (not b!4895141))

(assert (not b!4894552))

(assert (not b!4894532))

(assert b_and!345185)

(assert (not b!4895079))

(assert (not b!4894436))

(assert (not b!4895178))

(assert (not b!4895115))

(assert (not b!4894681))

(assert (not b!4894564))

(assert (not b!4894729))

(assert (not b!4894462))

(assert (not b!4895181))

(assert (not b!4895129))

(assert (not b!4894553))

(assert (not b!4894988))

(assert (not b!4895194))

(assert (not b!4894492))

(assert (not d!1572713))

(assert (not b!4895220))

(assert (not b!4895095))

(assert (not d!1572629))

(assert (not d!1572415))

(assert (not b!4894625))

(assert (not d!1572263))

(assert (not b!4894576))

(assert (not b!4894514))

(assert (not b!4894440))

(assert (not b!4894806))

(assert (not b!4895216))

(assert (not tb!259013))

(assert (not d!1572289))

(assert (not b!4895206))

(assert (not b!4894941))

(assert (not b!4894606))

(assert (not bm!339519))

(assert (not b!4895185))

(assert (not b!4894809))

(assert (not d!1572429))

(assert (not b!4895179))

(assert (not b!4894977))

(assert (not b!4894685))

(assert (not b!4895135))

(assert (not b!4895218))

(assert (not d!1572381))

(assert (not b!4894767))

(assert (not b!4895147))

(assert (not d!1572295))

(assert (not b!4894691))

(assert (not b!4895081))

(assert (not b!4895172))

(assert (not b!4894730))

(assert (not b!4894257))

(assert (not d!1572609))

(assert (not b!4895061))

(assert (not b!4895161))

(assert (not b_lambda!194445))

(assert (not b!4895109))

(assert (not b!4894622))

(assert (not b!4895107))

(assert (not d!1572479))

(assert (not b!4894575))

(assert (not b!4894642))

(assert (not bm!339538))

(assert (not b!4894686))

(assert (not b!4894540))

(assert (not d!1572541))

(assert (not b!4895203))

(assert (not b!4895128))

(assert (not b!4894916))

(assert (not b!4895035))

(assert (not b_next!132381))

(assert (not bm!339509))

(assert (not b!4894654))

(assert (not tb!259073))

(assert (not d!1572393))

(assert (not tb!258995))

(assert (not b!4894583))

(assert (not bm!339530))

(assert (not b_lambda!194581))

(assert (not b_lambda!194569))

(assert (not b!4894909))

(assert (not d!1572525))

(assert (not b_lambda!194603))

(assert (not b!4894258))

(assert (not d!1572669))

(assert (not d!1572409))

(assert (not b!4895163))

(assert (not d!1572437))

(assert (not d!1572359))

(assert (not b!4894678))

(assert (not b!4894807))

(assert (not d!1572445))

(assert (not b!4895097))

(assert (not d!1572449))

(assert (not b!4894798))

(assert (not b!4895101))

(assert (not b!4895210))

(assert (not b!4895103))

(assert (not b!4894464))

(assert (not d!1572491))

(assert (not d!1572355))

(assert (not b!4894656))

(assert (not b!4894820))

(assert (not b!4895030))

(assert (not b!4894628))

(assert (not d!1572419))

(assert (not d!1572241))

(assert (not b!4894511))

(assert (not d!1572581))

(assert (not b_lambda!194611))

(assert (not b!4894657))

(assert (not b!4895089))

(assert (not tb!259025))

(assert (not b!4894644))

(assert (not bm!339545))

(assert (not b!4895113))

(assert (not d!1572601))

(assert (not bm!339490))

(assert (not d!1572317))

(assert (not b!4895187))

(assert (not d!1572663))

(assert (not b!4894486))

(assert (not b_lambda!194595))

(assert (not bm!339481))

(assert (not b!4894482))

(assert (not b!4895117))

(assert (not b!4894833))

(assert (not d!1572645))

(assert (not b!4895067))

(assert (not bm!339482))

(assert (not b_next!132365))

(assert (not b!4894684))

(assert (not d!1572633))

(assert (not b!4894562))

(assert (not b!4894906))

(assert (not tb!259031))

(assert (not b!4895071))

(assert (not b!4894930))

(assert (not d!1572507))

(assert (not b!4893767))

(assert (not b_lambda!194529))

(assert (not b!4894588))

(assert (not b!4895213))

(assert (not b!4894662))

(assert (not bs!1176247))

(assert (not b!4894647))

(assert (not b!4894716))

(assert (not b!4895215))

(assert b_and!345209)

(assert (not b!4894658))

(assert (not tb!259055))

(assert (not d!1572427))

(assert (not b!4894827))

(assert (not b!4894838))

(assert (not d!1572607))

(assert (not b!4894668))

(assert (not d!1572493))

(assert (not d!1572517))

(assert (not d!1572439))

(assert (not b!4895195))

(assert (not b!4894595))

(assert (not b!4895108))

(assert (not d!1572703))

(assert (not b!4894627))

(assert (not d!1572553))

(assert (not b!4894648))

(assert (not b!4894660))

(assert (not b!4894910))

(assert (not b!4895205))

(assert (not b!4894497))

(assert (not b!4895162))

(assert (not d!1572375))

(assert (not b!4894636))

(assert (not b!4894533))

(assert (not b!4894828))

(assert (not b_next!132383))

(assert (not b!4894527))

(assert (not b!4895167))

(assert (not b!4895201))

(assert (not b!4894643))

(assert (not d!1572219))

(assert (not b!4894507))

(assert (not b_lambda!194601))

(assert (not b!4894928))

(assert (not b!4894705))

(assert (not b!4894925))

(assert (not bm!339551))

(assert (not b!4895090))

(assert (not b!4894488))

(assert (not b!4895051))

(assert (not b!4894881))

(assert (not d!1572687))

(assert (not tb!259037))

(assert (not d!1572339))

(assert (not b!4894887))

(assert (not b!4894913))

(assert (not b!4895136))

(assert (not b!4894947))

(assert (not b!4894877))

(assert (not d!1572567))

(assert (not d!1572563))

(assert (not d!1572327))

(assert (not b!4894840))

(assert (not d!1572675))

(assert (not d!1572509))

(assert (not b_lambda!194435))

(assert (not b!4895171))

(assert (not b!4894473))

(assert (not d!1572529))

(assert (not b!4894531))

(assert (not b!4895156))

(assert (not b!4894605))

(assert (not b!4894978))

(assert (not b!4895074))

(assert (not b!4894484))

(assert (not b!4894715))

(assert (not b!4894591))

(assert (not b!4894701))

(assert (not b!4895029))

(assert (not b!4894924))

(assert (not d!1572551))

(assert (not b!4894503))

(assert b_and!345207)

(assert (not b!4895177))

(assert (not b!4894852))

(assert (not b_lambda!194593))

(assert (not b_lambda!194571))

(assert (not b!4894843))

(assert (not d!1572455))

(assert (not b!4894680))

(assert (not b_lambda!194559))

(assert (not b!4894500))

(assert (not b!4895077))

(assert (not d!1572305))

(assert (not b!4895013))

(assert (not b_lambda!194565))

(assert (not d!1572243))

(assert (not b!4895046))

(assert (not d!1572695))

(assert (not bm!339491))

(assert (not b!4894619))

(assert (not bm!339501))

(assert (not bm!339507))

(assert (not b!4894994))

(assert (not d!1572693))

(assert (not b!4895033))

(assert (not b!4894487))

(assert (not b_lambda!194509))

(assert (not b!4894962))

(assert (not b!4895050))

(assert (not b!4895105))

(assert (not b!4894561))

(assert (not bm!339484))

(assert (not tb!259067))

(assert (not b!4895092))

(assert (not d!1572273))

(assert (not b!4895012))

(assert (not b!4895174))

(assert (not b!4894570))

(assert (not b_lambda!194563))

(assert (not b!4894683))

(assert (not b!4895176))

(assert (not bm!339532))

(assert (not b!4895148))

(assert (not b!4894823))

(assert (not d!1572347))

(assert (not b!4894650))

(assert (not b!4894932))

(assert (not b_lambda!194443))

(assert (not b!4894441))

(assert b_and!345205)

(assert (not b!4894670))

(assert (not bm!339486))

(assert (not d!1572527))

(assert (not b!4894603))

(assert (not b!4894688))

(assert (not d!1572287))

(assert (not b!4895009))

(assert (not b_lambda!194567))

(assert (not b_lambda!194597))

(assert (not b_lambda!194489))

(assert (not b!4895198))

(assert (not b!4895209))

(assert (not b!4894904))

(assert (not b!4895166))

(assert (not b!4894521))

(assert (not d!1572443))

(assert (not b!4894693))

(assert (not b_lambda!194577))

(assert (not b!4894604))

(assert (not b!4894615))

(assert (not bm!339542))

(assert (not d!1572691))

(assert (not b!4894929))

(assert (not b!4894970))

(assert (not b!4894667))

(assert (not b!4894862))

(assert (not b!4894842))

(assert (not b!4894522))

(assert (not b!4894557))

(assert (not b_lambda!194527))

(assert (not bm!339502))

(assert (not d!1572521))

(assert (not d!1572385))

(assert (not b!4894694))

(assert (not d!1572641))

(assert (not b!4895086))

(assert (not b!4895080))

(assert (not b!4894611))

(assert (not b!4894477))

(assert (not d!1572611))

(assert (not b!4894944))

(assert (not bm!339536))

(assert (not b!4894435))

(assert (not b!4895019))

(assert (not b!4895065))

(assert (not b!4894894))

(assert (not d!1572677))

(assert (not b!4894563))

(assert (not d!1572357))

(assert (not b!4894600))

(assert (not bm!339505))

(assert (not b!4894545))

(assert (not b!4895190))

(assert (not b_lambda!194515))

(assert (not b!4894661))

(assert (not d!1572469))

(assert (not bm!339497))

(assert (not b!4895212))

(assert (not b!4895170))

(assert (not b!4894689))

(assert (not b_lambda!194495))

(assert (not bm!339547))

(assert (not d!1572269))

(assert (not d!1572431))

(assert (not bm!339479))

(assert (not b!4895034))

(assert (not b!4894475))

(assert (not b!4895165))

(assert (not d!1572413))

(assert (not b!4894850))

(assert (not b!4894523))

(assert (not bm!339540))

(assert (not b_lambda!194599))

(assert (not d!1572349))

(assert (not b!4895123))

(assert (not b_lambda!194505))

(assert (not b!4894802))

(assert (not bm!339485))

(assert (not tb!259085))

(assert (not b!4895083))

(assert (not d!1572363))

(assert (not b!4895197))

(assert (not b!4895149))

(assert (not b_lambda!194585))

(assert (not d!1572653))

(assert (not b!4894659))

(assert (not b!4895069))

(assert (not d!1572281))

(assert (not bm!339555))

(assert (not b!4894470))

(assert (not b!4894639))

(assert (not b!4894669))

(assert (not bm!339541))

(assert (not d!1572667))

(assert (not b!4895075))

(assert (not b!4894837))

(assert (not d!1572573))

(assert (not b!4894860))

(assert (not b!4895121))

(assert (not b_lambda!194573))

(assert (not b_lambda!194549))

(assert (not bm!339537))

(assert (not b!4894836))

(assert (not d!1572619))

(assert (not b_lambda!194439))

(assert (not b!4894706))

(assert (not b_lambda!194591))

(assert (not b_lambda!194491))

(assert (not b!4894457))

(assert (not b!4894725))

(assert (not b!4894676))

(assert (not d!1572683))

(assert (not bm!339494))

(assert (not bm!339521))

(assert (not b!4894888))

(assert (not d!1572309))

(assert (not b!4895060))

(assert (not b!4894698))

(assert (not bm!339534))

(assert (not b_next!132367))

(assert (not b!4895120))

(assert (not bm!339487))

(assert (not d!1572583))

(assert (not b!4894696))

(assert (not b!4894902))

(assert (not b!4894957))

(assert (not d!1572613))

(assert (not b!4894886))

(assert (not b!4895027))

(assert (not d!1572285))

(assert (not b!4894872))

(assert (not b!4895175))

(assert (not b_lambda!194609))

(assert (not b!4894652))

(assert (not b!4894720))

(assert (not d!1572689))

(assert (not bm!339478))

(assert (not d!1572549))

(assert (not b!4894907))

(assert (not b!4894949))

(assert (not d!1572589))

(assert (not b!4894459))

(assert (not b!4894638))

(assert (not b!4895124))

(assert (not bm!339489))

(assert (not b!4894914))

(assert (not b!4894979))

(assert (not d!1572497))

(assert (not d!1572547))

(assert (not tb!259043))

(assert (not bs!1176249))

(assert (not b_lambda!194605))

(assert (not b!4895078))

(assert (not tb!259079))

(assert (not bm!339500))

(assert (not b!4894578))

(assert (not b!4894513))

(assert (not b!4895154))

(assert (not d!1572499))

(assert (not b!4894933))

(assert (not d!1572649))

(assert (not b!4895041))

(assert b_and!345181)

(assert (not bm!339493))

(assert (not b!4895001))

(assert (not b!4894584))

(assert (not b!4895140))

(assert (not bm!339531))

(assert (not b!4895062))

(assert (not b!4895132))

(assert (not b!4894732))

(assert (not b!4895127))

(assert (not b_lambda!194551))

(assert b_and!345183)

(assert (not b!4895021))

(assert (not d!1572417))

(assert (not b_lambda!194579))

(assert (not d!1572217))

(assert (not b!4894974))

(assert (not b!4894856))

(assert (not b!4894498))

(assert (not b!4895014))

(assert (not tb!259007))

(assert (not b!4894534))

(assert (not b!4894986))

(assert (not b!4895111))

(assert (not tb!259135))

(assert (not b!4895045))

(assert tp_is_empty!35781)

(assert (not b!4895094))

(assert (not b!4894609))

(assert (not d!1572597))

(assert (not b!4894237))

(assert (not b!4895053))

(assert (not b!4895010))

(assert (not b!4894590))

(assert (not b_lambda!194587))

(assert (not b!4895193))

(assert (not b!4894912))

(assert (not bs!1176246))

(assert (not b!4894927))

(assert (not b!4895186))

(assert (not b!4895057))

(assert (not d!1572637))

(assert (not b!4895026))

(assert (not b!4894717))

(assert (not d!1572557))

(assert (not b!4895145))

(assert (not bm!339499))

(assert (not d!1572435))

(assert (not b!4894791))

(assert (not d!1572331))

(assert (not b!4895015))

(assert (not b_lambda!194607))

(assert (not b_lambda!194589))

(assert b_and!345179)

(assert (not b!4895155))

(assert (not b!4895214))

(assert (not b!4894596))

(assert (not b!4894954))

(assert (not b!4895038))

(assert (not d!1572647))

(assert (not d!1572543))

(assert (not tb!259143))

(assert (not b!4894731))

(assert (not bm!339498))

(assert (not b!4895158))

(assert (not b!4894512))

(assert (not b!4895119))

(assert (not b!4895070))

(assert (not b!4894926))

(assert (not b!4895087))

(assert (not b!4894699))

(assert (not b!4894923))

(assert (not b!4894599))

(assert (not b!4894965))

(assert (not b!4895191))

(assert (not b!4894967))

(assert (not b!4894854))

(assert (not b_lambda!194583))

(assert (not b!4895091))

(assert (not bm!339483))

(assert (not d!1572705))

(assert (not b!4894690))

(assert (not d!1572345))

(assert (not b!4894976))

(assert (not b_lambda!194441))

(assert (not b!4894586))

(assert (not tb!259001))

(assert (not bm!339492))

(assert (not d!1572379))

(assert (not b_lambda!194575))

(assert (not b!4895017))

(assert (not b!4894456))

(assert (not d!1572441))

(assert (not b_lambda!194547))

(assert (not b!4894548))

(assert (not b!4894815))

(assert (not b!4895152))

(assert (not b!4895104))

(assert (not b!4895137))

(assert (not b!4894885))

(assert (not b!4895159))

(assert (not d!1572511))

(assert (not d!1572459))

(assert (not b!4895042))

(assert (not bm!339510))

(assert (not bm!339535))

(assert (not b!4895189))

(assert (not b!4894868))

(assert (not b!4895144))

(assert (not d!1572577))

(assert (not b!4895168))

(assert (not tb!259061))

(assert (not b!4894797))

(assert (not b!4895199))

(assert (not bm!339543))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!132357))

(assert (not b_next!132359))

(assert (not b_next!132381))

(assert (not b_next!132383))

(assert b_and!345207)

(assert b_and!345205)

(assert (not b_next!132367))

(assert b_and!345179)

(assert (not b_next!132375))

(assert (not b_next!132373))

(assert b_and!345185)

(assert b_and!345203)

(assert (not b_next!132365))

(assert b_and!345209)

(assert b_and!345183)

(assert b_and!345181)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!511274 () Bool)

(assert start!511274)

(declare-fun b!4885496 () Bool)

(declare-fun b_free!131207 () Bool)

(declare-fun b_next!131997 () Bool)

(assert (=> b!4885496 (= b_free!131207 (not b_next!131997))))

(declare-fun tp!1374851 () Bool)

(declare-fun b_and!344039 () Bool)

(assert (=> b!4885496 (= tp!1374851 b_and!344039)))

(declare-fun b_free!131209 () Bool)

(declare-fun b_next!131999 () Bool)

(assert (=> b!4885496 (= b_free!131209 (not b_next!131999))))

(declare-fun tp!1374850 () Bool)

(declare-fun b_and!344041 () Bool)

(assert (=> b!4885496 (= tp!1374850 b_and!344041)))

(declare-fun b!4885491 () Bool)

(declare-fun e!3053814 () Bool)

(declare-datatypes ((C!26594 0))(
  ( (C!26595 (val!22631 Int)) )
))
(declare-datatypes ((List!56374 0))(
  ( (Nil!56250) (Cons!56250 (h!62698 C!26594) (t!365020 List!56374)) )
))
(declare-datatypes ((List!56375 0))(
  ( (Nil!56251) (Cons!56251 (h!62699 (_ BitVec 16)) (t!365021 List!56375)) )
))
(declare-datatypes ((TokenValue!8433 0))(
  ( (FloatLiteralValue!16866 (text!59476 List!56375)) (TokenValueExt!8432 (__x!34159 Int)) (Broken!42165 (value!260633 List!56375)) (Object!8556) (End!8433) (Def!8433) (Underscore!8433) (Match!8433) (Else!8433) (Error!8433) (Case!8433) (If!8433) (Extends!8433) (Abstract!8433) (Class!8433) (Val!8433) (DelimiterValue!16866 (del!8493 List!56375)) (KeywordValue!8439 (value!260634 List!56375)) (CommentValue!16866 (value!260635 List!56375)) (WhitespaceValue!16866 (value!260636 List!56375)) (IndentationValue!8433 (value!260637 List!56375)) (String!63608) (Int32!8433) (Broken!42166 (value!260638 List!56375)) (Boolean!8434) (Unit!146240) (OperatorValue!8436 (op!8493 List!56375)) (IdentifierValue!16866 (value!260639 List!56375)) (IdentifierValue!16867 (value!260640 List!56375)) (WhitespaceValue!16867 (value!260641 List!56375)) (True!16866) (False!16866) (Broken!42167 (value!260642 List!56375)) (Broken!42168 (value!260643 List!56375)) (True!16867) (RightBrace!8433) (RightBracket!8433) (Colon!8433) (Null!8433) (Comma!8433) (LeftBracket!8433) (False!16867) (LeftBrace!8433) (ImaginaryLiteralValue!8433 (text!59477 List!56375)) (StringLiteralValue!25299 (value!260644 List!56375)) (EOFValue!8433 (value!260645 List!56375)) (IdentValue!8433 (value!260646 List!56375)) (DelimiterValue!16867 (value!260647 List!56375)) (DedentValue!8433 (value!260648 List!56375)) (NewLineValue!8433 (value!260649 List!56375)) (IntegerValue!25299 (value!260650 (_ BitVec 32)) (text!59478 List!56375)) (IntegerValue!25300 (value!260651 Int) (text!59479 List!56375)) (Times!8433) (Or!8433) (Equal!8433) (Minus!8433) (Broken!42169 (value!260652 List!56375)) (And!8433) (Div!8433) (LessEqual!8433) (Mod!8433) (Concat!21631) (Not!8433) (Plus!8433) (SpaceValue!8433 (value!260653 List!56375)) (IntegerValue!25301 (value!260654 Int) (text!59480 List!56375)) (StringLiteralValue!25300 (text!59481 List!56375)) (FloatLiteralValue!16867 (text!59482 List!56375)) (BytesLiteralValue!8433 (value!260655 List!56375)) (CommentValue!16867 (value!260656 List!56375)) (StringLiteralValue!25301 (value!260657 List!56375)) (ErrorTokenValue!8433 (msg!8494 List!56375)) )
))
(declare-datatypes ((Regex!13198 0))(
  ( (ElementMatch!13198 (c!830640 C!26594)) (Concat!21632 (regOne!26908 Regex!13198) (regTwo!26908 Regex!13198)) (EmptyExpr!13198) (Star!13198 (reg!13527 Regex!13198)) (EmptyLang!13198) (Union!13198 (regOne!26909 Regex!13198) (regTwo!26909 Regex!13198)) )
))
(declare-datatypes ((String!63609 0))(
  ( (String!63610 (value!260658 String)) )
))
(declare-datatypes ((IArray!29443 0))(
  ( (IArray!29444 (innerList!14779 List!56374)) )
))
(declare-datatypes ((Conc!14691 0))(
  ( (Node!14691 (left!40859 Conc!14691) (right!41189 Conc!14691) (csize!29612 Int) (cheight!14902 Int)) (Leaf!24470 (xs!18007 IArray!29443) (csize!29613 Int)) (Empty!14691) )
))
(declare-datatypes ((BalanceConc!28812 0))(
  ( (BalanceConc!28813 (c!830641 Conc!14691)) )
))
(declare-datatypes ((TokenValueInjection!16174 0))(
  ( (TokenValueInjection!16175 (toValue!11010 Int) (toChars!10869 Int)) )
))
(declare-datatypes ((Rule!16046 0))(
  ( (Rule!16047 (regex!8123 Regex!13198) (tag!8987 String!63609) (isSeparator!8123 Bool) (transformation!8123 TokenValueInjection!16174)) )
))
(declare-datatypes ((Token!14814 0))(
  ( (Token!14815 (value!260659 TokenValue!8433) (rule!11291 Rule!16046) (size!37052 Int) (originalCharacters!8438 List!56374)) )
))
(declare-datatypes ((tuple2!60204 0))(
  ( (tuple2!60205 (_1!33405 Token!14814) (_2!33405 List!56374)) )
))
(declare-datatypes ((Option!13929 0))(
  ( (None!13928) (Some!13928 (v!49878 tuple2!60204)) )
))
(declare-fun lt!2001775 () Option!13929)

(declare-fun isDefined!10952 (Option!13929) Bool)

(assert (=> b!4885491 (= e!3053814 (isDefined!10952 lt!2001775))))

(declare-fun b!4885492 () Bool)

(declare-fun e!3053811 () Bool)

(declare-fun e!3053807 () Bool)

(assert (=> b!4885492 (= e!3053811 e!3053807)))

(declare-fun res!2086030 () Bool)

(assert (=> b!4885492 (=> res!2086030 e!3053807)))

(declare-datatypes ((tuple2!60206 0))(
  ( (tuple2!60207 (_1!33406 Token!14814) (_2!33406 BalanceConc!28812)) )
))
(declare-datatypes ((Option!13930 0))(
  ( (None!13929) (Some!13929 (v!49879 tuple2!60206)) )
))
(declare-fun lt!2001780 () Option!13930)

(declare-fun lt!2001776 () Option!13930)

(assert (=> b!4885492 (= res!2086030 (or (and (is-None!13929 lt!2001780) (is-None!13929 lt!2001776)) (is-None!13929 lt!2001776) (not (is-None!13929 lt!2001780))))))

(declare-datatypes ((LexerInterface!7715 0))(
  ( (LexerInterfaceExt!7712 (__x!34160 Int)) (Lexer!7713) )
))
(declare-fun thiss!14805 () LexerInterface!7715)

(declare-fun input!1236 () BalanceConc!28812)

(declare-datatypes ((List!56376 0))(
  ( (Nil!56252) (Cons!56252 (h!62700 Rule!16046) (t!365022 List!56376)) )
))
(declare-fun rulesArg!165 () List!56376)

(declare-fun maxPrefixZipperSequence!1284 (LexerInterface!7715 List!56376 BalanceConc!28812) Option!13930)

(assert (=> b!4885492 (= lt!2001776 (maxPrefixZipperSequence!1284 thiss!14805 (t!365022 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!649 (LexerInterface!7715 Rule!16046 BalanceConc!28812) Option!13930)

(assert (=> b!4885492 (= lt!2001780 (maxPrefixOneRuleZipperSequence!649 thiss!14805 (h!62700 rulesArg!165) input!1236))))

(declare-fun b!4885493 () Bool)

(declare-fun e!3053805 () Bool)

(declare-fun e!3053803 () Bool)

(assert (=> b!4885493 (= e!3053805 e!3053803)))

(declare-fun res!2086021 () Bool)

(assert (=> b!4885493 (=> res!2086021 e!3053803)))

(declare-fun lt!2001778 () tuple2!60206)

(declare-fun lt!2001783 () tuple2!60204)

(assert (=> b!4885493 (= res!2086021 (not (= (_1!33406 lt!2001778) (_1!33405 lt!2001783))))))

(declare-fun lt!2001777 () Option!13929)

(declare-fun get!19379 (Option!13929) tuple2!60204)

(assert (=> b!4885493 (= lt!2001783 (get!19379 lt!2001777))))

(declare-fun get!19380 (Option!13930) tuple2!60206)

(assert (=> b!4885493 (= lt!2001778 (get!19380 lt!2001776))))

(declare-fun e!3053812 () Bool)

(declare-fun b!4885494 () Bool)

(declare-fun e!3053808 () Bool)

(declare-fun tp!1374852 () Bool)

(declare-fun inv!72392 (String!63609) Bool)

(declare-fun inv!72395 (TokenValueInjection!16174) Bool)

(assert (=> b!4885494 (= e!3053808 (and tp!1374852 (inv!72392 (tag!8987 (h!62700 rulesArg!165))) (inv!72395 (transformation!8123 (h!62700 rulesArg!165))) e!3053812))))

(assert (=> b!4885496 (= e!3053812 (and tp!1374851 tp!1374850))))

(declare-fun b!4885497 () Bool)

(declare-fun e!3053815 () Bool)

(assert (=> b!4885497 (= e!3053815 e!3053814)))

(declare-fun res!2086026 () Bool)

(assert (=> b!4885497 (=> res!2086026 e!3053814)))

(assert (=> b!4885497 (= res!2086026 (not (= (_1!33406 (get!19380 lt!2001776)) (_1!33405 (get!19379 lt!2001775)))))))

(declare-fun lt!2001782 () List!56374)

(declare-fun maxPrefix!4580 (LexerInterface!7715 List!56376 List!56374) Option!13929)

(assert (=> b!4885497 (= lt!2001775 (maxPrefix!4580 thiss!14805 rulesArg!165 lt!2001782))))

(declare-fun b!4885498 () Bool)

(declare-fun res!2086029 () Bool)

(declare-fun e!3053804 () Bool)

(assert (=> b!4885498 (=> (not res!2086029) (not e!3053804))))

(declare-fun rulesValidInductive!3102 (LexerInterface!7715 List!56376) Bool)

(assert (=> b!4885498 (= res!2086029 (rulesValidInductive!3102 thiss!14805 rulesArg!165))))

(declare-fun b!4885499 () Bool)

(declare-fun res!2086024 () Bool)

(assert (=> b!4885499 (=> res!2086024 e!3053815)))

(declare-fun lt!2001784 () Bool)

(assert (=> b!4885499 (= res!2086024 lt!2001784)))

(declare-fun b!4885500 () Bool)

(declare-fun res!2086022 () Bool)

(assert (=> b!4885500 (=> (not res!2086022) (not e!3053804))))

(declare-fun isEmpty!30144 (List!56376) Bool)

(assert (=> b!4885500 (= res!2086022 (not (isEmpty!30144 rulesArg!165)))))

(declare-fun b!4885501 () Bool)

(declare-fun e!3053809 () Bool)

(declare-fun tp!1374848 () Bool)

(assert (=> b!4885501 (= e!3053809 (and e!3053808 tp!1374848))))

(declare-fun res!2086027 () Bool)

(assert (=> start!511274 (=> (not res!2086027) (not e!3053804))))

(assert (=> start!511274 (= res!2086027 (is-Lexer!7713 thiss!14805))))

(assert (=> start!511274 e!3053804))

(assert (=> start!511274 true))

(assert (=> start!511274 e!3053809))

(declare-fun e!3053806 () Bool)

(declare-fun inv!72396 (BalanceConc!28812) Bool)

(assert (=> start!511274 (and (inv!72396 input!1236) e!3053806)))

(declare-fun b!4885495 () Bool)

(assert (=> b!4885495 (= e!3053804 (not e!3053811))))

(declare-fun res!2086020 () Bool)

(assert (=> b!4885495 (=> res!2086020 e!3053811)))

(assert (=> b!4885495 (= res!2086020 (or (and (is-Cons!56252 rulesArg!165) (is-Nil!56252 (t!365022 rulesArg!165))) (not (is-Cons!56252 rulesArg!165))))))

(declare-fun isPrefix!4845 (List!56374 List!56374) Bool)

(assert (=> b!4885495 (isPrefix!4845 lt!2001782 lt!2001782)))

(declare-datatypes ((Unit!146241 0))(
  ( (Unit!146242) )
))
(declare-fun lt!2001781 () Unit!146241)

(declare-fun lemmaIsPrefixRefl!3242 (List!56374 List!56374) Unit!146241)

(assert (=> b!4885495 (= lt!2001781 (lemmaIsPrefixRefl!3242 lt!2001782 lt!2001782))))

(declare-fun list!17654 (BalanceConc!28812) List!56374)

(assert (=> b!4885495 (= lt!2001782 (list!17654 input!1236))))

(declare-fun b!4885502 () Bool)

(declare-fun e!3053810 () Bool)

(assert (=> b!4885502 (= e!3053807 e!3053810)))

(declare-fun res!2086023 () Bool)

(assert (=> b!4885502 (=> res!2086023 e!3053810)))

(declare-fun lt!2001779 () Bool)

(assert (=> b!4885502 (= res!2086023 (not (= lt!2001779 (isDefined!10952 lt!2001777))))))

(declare-fun isDefined!10953 (Option!13930) Bool)

(assert (=> b!4885502 (= lt!2001779 (isDefined!10953 lt!2001776))))

(declare-fun maxPrefixZipper!626 (LexerInterface!7715 List!56376 List!56374) Option!13929)

(assert (=> b!4885502 (= lt!2001777 (maxPrefixZipper!626 thiss!14805 rulesArg!165 lt!2001782))))

(declare-fun b!4885503 () Bool)

(assert (=> b!4885503 (= e!3053803 (not (= (list!17654 (_2!33406 lt!2001778)) (_2!33405 lt!2001783))))))

(declare-fun b!4885504 () Bool)

(declare-fun tp!1374849 () Bool)

(declare-fun inv!72397 (Conc!14691) Bool)

(assert (=> b!4885504 (= e!3053806 (and (inv!72397 (c!830641 input!1236)) tp!1374849))))

(declare-fun b!4885505 () Bool)

(assert (=> b!4885505 (= e!3053810 e!3053815)))

(declare-fun res!2086028 () Bool)

(assert (=> b!4885505 (=> res!2086028 e!3053815)))

(assert (=> b!4885505 (= res!2086028 e!3053805)))

(declare-fun res!2086025 () Bool)

(assert (=> b!4885505 (=> (not res!2086025) (not e!3053805))))

(assert (=> b!4885505 (= res!2086025 (not lt!2001784))))

(assert (=> b!4885505 (= lt!2001784 (not lt!2001779))))

(assert (= (and start!511274 res!2086027) b!4885498))

(assert (= (and b!4885498 res!2086029) b!4885500))

(assert (= (and b!4885500 res!2086022) b!4885495))

(assert (= (and b!4885495 (not res!2086020)) b!4885492))

(assert (= (and b!4885492 (not res!2086030)) b!4885502))

(assert (= (and b!4885502 (not res!2086023)) b!4885505))

(assert (= (and b!4885505 res!2086025) b!4885493))

(assert (= (and b!4885493 (not res!2086021)) b!4885503))

(assert (= (and b!4885505 (not res!2086028)) b!4885499))

(assert (= (and b!4885499 (not res!2086024)) b!4885497))

(assert (= (and b!4885497 (not res!2086026)) b!4885491))

(assert (= b!4885494 b!4885496))

(assert (= b!4885501 b!4885494))

(assert (= (and start!511274 (is-Cons!56252 rulesArg!165)) b!4885501))

(assert (= start!511274 b!4885504))

(declare-fun m!5889332 () Bool)

(assert (=> b!4885503 m!5889332))

(declare-fun m!5889334 () Bool)

(assert (=> b!4885491 m!5889334))

(declare-fun m!5889336 () Bool)

(assert (=> b!4885495 m!5889336))

(declare-fun m!5889338 () Bool)

(assert (=> b!4885495 m!5889338))

(declare-fun m!5889340 () Bool)

(assert (=> b!4885495 m!5889340))

(declare-fun m!5889342 () Bool)

(assert (=> b!4885502 m!5889342))

(declare-fun m!5889344 () Bool)

(assert (=> b!4885502 m!5889344))

(declare-fun m!5889346 () Bool)

(assert (=> b!4885502 m!5889346))

(declare-fun m!5889348 () Bool)

(assert (=> b!4885504 m!5889348))

(declare-fun m!5889350 () Bool)

(assert (=> b!4885498 m!5889350))

(declare-fun m!5889352 () Bool)

(assert (=> b!4885494 m!5889352))

(declare-fun m!5889354 () Bool)

(assert (=> b!4885494 m!5889354))

(declare-fun m!5889356 () Bool)

(assert (=> b!4885492 m!5889356))

(declare-fun m!5889358 () Bool)

(assert (=> b!4885492 m!5889358))

(declare-fun m!5889360 () Bool)

(assert (=> b!4885497 m!5889360))

(declare-fun m!5889362 () Bool)

(assert (=> b!4885497 m!5889362))

(declare-fun m!5889364 () Bool)

(assert (=> b!4885497 m!5889364))

(declare-fun m!5889366 () Bool)

(assert (=> b!4885493 m!5889366))

(assert (=> b!4885493 m!5889360))

(declare-fun m!5889368 () Bool)

(assert (=> b!4885500 m!5889368))

(declare-fun m!5889370 () Bool)

(assert (=> start!511274 m!5889370))

(push 1)

(assert (not b!4885502))

(assert (not start!511274))

(assert (not b_next!131999))

(assert b_and!344039)

(assert (not b!4885498))

(assert (not b!4885500))

(assert (not b!4885494))

(assert (not b!4885492))

(assert (not b!4885504))

(assert (not b!4885501))

(assert (not b_next!131997))

(assert (not b!4885497))

(assert (not b!4885493))

(assert (not b!4885491))

(assert b_and!344041)

(assert (not b!4885503))

(assert (not b!4885495))

(check-sat)

(pop 1)

(push 1)

(assert b_and!344041)

(assert b_and!344039)

(assert (not b_next!131997))

(assert (not b_next!131999))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1569453 () Bool)

(assert (=> d!1569453 true))

(declare-fun lt!2001838 () Bool)

(declare-fun lambda!243818 () Int)

(declare-fun forall!13072 (List!56376 Int) Bool)

(assert (=> d!1569453 (= lt!2001838 (forall!13072 rulesArg!165 lambda!243818))))

(declare-fun e!3053878 () Bool)

(assert (=> d!1569453 (= lt!2001838 e!3053878)))

(declare-fun res!2086114 () Bool)

(assert (=> d!1569453 (=> res!2086114 e!3053878)))

(assert (=> d!1569453 (= res!2086114 (not (is-Cons!56252 rulesArg!165)))))

(assert (=> d!1569453 (= (rulesValidInductive!3102 thiss!14805 rulesArg!165) lt!2001838)))

(declare-fun b!4885594 () Bool)

(declare-fun e!3053877 () Bool)

(assert (=> b!4885594 (= e!3053878 e!3053877)))

(declare-fun res!2086113 () Bool)

(assert (=> b!4885594 (=> (not res!2086113) (not e!3053877))))

(declare-fun ruleValid!3654 (LexerInterface!7715 Rule!16046) Bool)

(assert (=> b!4885594 (= res!2086113 (ruleValid!3654 thiss!14805 (h!62700 rulesArg!165)))))

(declare-fun b!4885595 () Bool)

(assert (=> b!4885595 (= e!3053877 (rulesValidInductive!3102 thiss!14805 (t!365022 rulesArg!165)))))

(assert (= (and d!1569453 (not res!2086114)) b!4885594))

(assert (= (and b!4885594 res!2086113) b!4885595))

(declare-fun m!5889458 () Bool)

(assert (=> d!1569453 m!5889458))

(declare-fun m!5889460 () Bool)

(assert (=> b!4885594 m!5889460))

(declare-fun m!5889462 () Bool)

(assert (=> b!4885595 m!5889462))

(assert (=> b!4885498 d!1569453))

(declare-fun d!1569481 () Bool)

(assert (=> d!1569481 (= (get!19380 lt!2001776) (v!49879 lt!2001776))))

(assert (=> b!4885497 d!1569481))

(declare-fun d!1569483 () Bool)

(assert (=> d!1569483 (= (get!19379 lt!2001775) (v!49878 lt!2001775))))

(assert (=> b!4885497 d!1569483))

(declare-fun b!4885622 () Bool)

(declare-fun e!3053890 () Bool)

(declare-fun lt!2001866 () Option!13929)

(declare-fun contains!19421 (List!56376 Rule!16046) Bool)

(assert (=> b!4885622 (= e!3053890 (contains!19421 rulesArg!165 (rule!11291 (_1!33405 (get!19379 lt!2001866)))))))

(declare-fun bm!338976 () Bool)

(declare-fun call!338981 () Option!13929)

(declare-fun maxPrefixOneRule!3511 (LexerInterface!7715 Rule!16046 List!56374) Option!13929)

(assert (=> bm!338976 (= call!338981 (maxPrefixOneRule!3511 thiss!14805 (h!62700 rulesArg!165) lt!2001782))))

(declare-fun b!4885623 () Bool)

(declare-fun res!2086135 () Bool)

(assert (=> b!4885623 (=> (not res!2086135) (not e!3053890))))

(declare-fun size!37054 (List!56374) Int)

(assert (=> b!4885623 (= res!2086135 (< (size!37054 (_2!33405 (get!19379 lt!2001866))) (size!37054 lt!2001782)))))

(declare-fun b!4885624 () Bool)

(declare-fun res!2086134 () Bool)

(assert (=> b!4885624 (=> (not res!2086134) (not e!3053890))))

(declare-fun charsOf!5358 (Token!14814) BalanceConc!28812)

(assert (=> b!4885624 (= res!2086134 (= (list!17654 (charsOf!5358 (_1!33405 (get!19379 lt!2001866)))) (originalCharacters!8438 (_1!33405 (get!19379 lt!2001866)))))))

(declare-fun d!1569485 () Bool)

(declare-fun e!3053889 () Bool)

(assert (=> d!1569485 e!3053889))

(declare-fun res!2086132 () Bool)

(assert (=> d!1569485 (=> res!2086132 e!3053889)))

(declare-fun isEmpty!30146 (Option!13929) Bool)

(assert (=> d!1569485 (= res!2086132 (isEmpty!30146 lt!2001866))))

(declare-fun e!3053888 () Option!13929)

(assert (=> d!1569485 (= lt!2001866 e!3053888)))

(declare-fun c!830653 () Bool)

(assert (=> d!1569485 (= c!830653 (and (is-Cons!56252 rulesArg!165) (is-Nil!56252 (t!365022 rulesArg!165))))))

(declare-fun lt!2001864 () Unit!146241)

(declare-fun lt!2001868 () Unit!146241)

(assert (=> d!1569485 (= lt!2001864 lt!2001868)))

(assert (=> d!1569485 (isPrefix!4845 lt!2001782 lt!2001782)))

(assert (=> d!1569485 (= lt!2001868 (lemmaIsPrefixRefl!3242 lt!2001782 lt!2001782))))

(assert (=> d!1569485 (rulesValidInductive!3102 thiss!14805 rulesArg!165)))

(assert (=> d!1569485 (= (maxPrefix!4580 thiss!14805 rulesArg!165 lt!2001782) lt!2001866)))

(declare-fun b!4885625 () Bool)

(assert (=> b!4885625 (= e!3053889 e!3053890)))

(declare-fun res!2086129 () Bool)

(assert (=> b!4885625 (=> (not res!2086129) (not e!3053890))))

(assert (=> b!4885625 (= res!2086129 (isDefined!10952 lt!2001866))))

(declare-fun b!4885626 () Bool)

(declare-fun res!2086130 () Bool)

(assert (=> b!4885626 (=> (not res!2086130) (not e!3053890))))

(declare-fun matchR!6512 (Regex!13198 List!56374) Bool)

(assert (=> b!4885626 (= res!2086130 (matchR!6512 (regex!8123 (rule!11291 (_1!33405 (get!19379 lt!2001866)))) (list!17654 (charsOf!5358 (_1!33405 (get!19379 lt!2001866))))))))

(declare-fun b!4885627 () Bool)

(declare-fun res!2086133 () Bool)

(assert (=> b!4885627 (=> (not res!2086133) (not e!3053890))))

(declare-fun apply!13522 (TokenValueInjection!16174 BalanceConc!28812) TokenValue!8433)

(declare-fun seqFromList!5918 (List!56374) BalanceConc!28812)

(assert (=> b!4885627 (= res!2086133 (= (value!260659 (_1!33405 (get!19379 lt!2001866))) (apply!13522 (transformation!8123 (rule!11291 (_1!33405 (get!19379 lt!2001866)))) (seqFromList!5918 (originalCharacters!8438 (_1!33405 (get!19379 lt!2001866)))))))))

(declare-fun b!4885628 () Bool)

(assert (=> b!4885628 (= e!3053888 call!338981)))

(declare-fun b!4885629 () Bool)

(declare-fun res!2086131 () Bool)

(assert (=> b!4885629 (=> (not res!2086131) (not e!3053890))))

(declare-fun ++!12227 (List!56374 List!56374) List!56374)

(assert (=> b!4885629 (= res!2086131 (= (++!12227 (list!17654 (charsOf!5358 (_1!33405 (get!19379 lt!2001866)))) (_2!33405 (get!19379 lt!2001866))) lt!2001782))))

(declare-fun b!4885630 () Bool)

(declare-fun lt!2001867 () Option!13929)

(declare-fun lt!2001865 () Option!13929)

(assert (=> b!4885630 (= e!3053888 (ite (and (is-None!13928 lt!2001867) (is-None!13928 lt!2001865)) None!13928 (ite (is-None!13928 lt!2001865) lt!2001867 (ite (is-None!13928 lt!2001867) lt!2001865 (ite (>= (size!37052 (_1!33405 (v!49878 lt!2001867))) (size!37052 (_1!33405 (v!49878 lt!2001865)))) lt!2001867 lt!2001865)))))))

(assert (=> b!4885630 (= lt!2001867 call!338981)))

(assert (=> b!4885630 (= lt!2001865 (maxPrefix!4580 thiss!14805 (t!365022 rulesArg!165) lt!2001782))))

(assert (= (and d!1569485 c!830653) b!4885628))

(assert (= (and d!1569485 (not c!830653)) b!4885630))

(assert (= (or b!4885628 b!4885630) bm!338976))

(assert (= (and d!1569485 (not res!2086132)) b!4885625))

(assert (= (and b!4885625 res!2086129) b!4885624))

(assert (= (and b!4885624 res!2086134) b!4885623))

(assert (= (and b!4885623 res!2086135) b!4885629))

(assert (= (and b!4885629 res!2086131) b!4885627))

(assert (= (and b!4885627 res!2086133) b!4885626))

(assert (= (and b!4885626 res!2086130) b!4885622))

(declare-fun m!5889468 () Bool)

(assert (=> b!4885630 m!5889468))

(declare-fun m!5889470 () Bool)

(assert (=> b!4885625 m!5889470))

(declare-fun m!5889472 () Bool)

(assert (=> b!4885626 m!5889472))

(declare-fun m!5889474 () Bool)

(assert (=> b!4885626 m!5889474))

(assert (=> b!4885626 m!5889474))

(declare-fun m!5889476 () Bool)

(assert (=> b!4885626 m!5889476))

(assert (=> b!4885626 m!5889476))

(declare-fun m!5889478 () Bool)

(assert (=> b!4885626 m!5889478))

(declare-fun m!5889480 () Bool)

(assert (=> bm!338976 m!5889480))

(assert (=> b!4885622 m!5889472))

(declare-fun m!5889482 () Bool)

(assert (=> b!4885622 m!5889482))

(assert (=> b!4885629 m!5889472))

(assert (=> b!4885629 m!5889474))

(assert (=> b!4885629 m!5889474))

(assert (=> b!4885629 m!5889476))

(assert (=> b!4885629 m!5889476))

(declare-fun m!5889484 () Bool)

(assert (=> b!4885629 m!5889484))

(declare-fun m!5889486 () Bool)

(assert (=> d!1569485 m!5889486))

(assert (=> d!1569485 m!5889336))

(assert (=> d!1569485 m!5889338))

(assert (=> d!1569485 m!5889350))

(assert (=> b!4885627 m!5889472))

(declare-fun m!5889488 () Bool)

(assert (=> b!4885627 m!5889488))

(assert (=> b!4885627 m!5889488))

(declare-fun m!5889490 () Bool)

(assert (=> b!4885627 m!5889490))

(assert (=> b!4885624 m!5889472))

(assert (=> b!4885624 m!5889474))

(assert (=> b!4885624 m!5889474))

(assert (=> b!4885624 m!5889476))

(assert (=> b!4885623 m!5889472))

(declare-fun m!5889492 () Bool)

(assert (=> b!4885623 m!5889492))

(declare-fun m!5889494 () Bool)

(assert (=> b!4885623 m!5889494))

(assert (=> b!4885497 d!1569485))

(declare-fun b!4885642 () Bool)

(declare-fun e!3053899 () Bool)

(assert (=> b!4885642 (= e!3053899 (>= (size!37054 lt!2001782) (size!37054 lt!2001782)))))

(declare-fun b!4885640 () Bool)

(declare-fun res!2086147 () Bool)

(declare-fun e!3053897 () Bool)

(assert (=> b!4885640 (=> (not res!2086147) (not e!3053897))))

(declare-fun head!10437 (List!56374) C!26594)

(assert (=> b!4885640 (= res!2086147 (= (head!10437 lt!2001782) (head!10437 lt!2001782)))))

(declare-fun b!4885639 () Bool)

(declare-fun e!3053898 () Bool)

(assert (=> b!4885639 (= e!3053898 e!3053897)))

(declare-fun res!2086144 () Bool)

(assert (=> b!4885639 (=> (not res!2086144) (not e!3053897))))

(assert (=> b!4885639 (= res!2086144 (not (is-Nil!56250 lt!2001782)))))

(declare-fun b!4885641 () Bool)

(declare-fun tail!9583 (List!56374) List!56374)

(assert (=> b!4885641 (= e!3053897 (isPrefix!4845 (tail!9583 lt!2001782) (tail!9583 lt!2001782)))))

(declare-fun d!1569489 () Bool)

(assert (=> d!1569489 e!3053899))

(declare-fun res!2086145 () Bool)

(assert (=> d!1569489 (=> res!2086145 e!3053899)))

(declare-fun lt!2001871 () Bool)

(assert (=> d!1569489 (= res!2086145 (not lt!2001871))))

(assert (=> d!1569489 (= lt!2001871 e!3053898)))

(declare-fun res!2086146 () Bool)

(assert (=> d!1569489 (=> res!2086146 e!3053898)))

(assert (=> d!1569489 (= res!2086146 (is-Nil!56250 lt!2001782))))

(assert (=> d!1569489 (= (isPrefix!4845 lt!2001782 lt!2001782) lt!2001871)))

(assert (= (and d!1569489 (not res!2086146)) b!4885639))

(assert (= (and b!4885639 res!2086144) b!4885640))

(assert (= (and b!4885640 res!2086147) b!4885641))

(assert (= (and d!1569489 (not res!2086145)) b!4885642))

(assert (=> b!4885642 m!5889494))

(assert (=> b!4885642 m!5889494))

(declare-fun m!5889496 () Bool)

(assert (=> b!4885640 m!5889496))

(assert (=> b!4885640 m!5889496))

(declare-fun m!5889498 () Bool)

(assert (=> b!4885641 m!5889498))

(assert (=> b!4885641 m!5889498))

(assert (=> b!4885641 m!5889498))

(assert (=> b!4885641 m!5889498))

(declare-fun m!5889500 () Bool)

(assert (=> b!4885641 m!5889500))

(assert (=> b!4885495 d!1569489))

(declare-fun d!1569491 () Bool)

(assert (=> d!1569491 (isPrefix!4845 lt!2001782 lt!2001782)))

(declare-fun lt!2001874 () Unit!146241)

(declare-fun choose!35675 (List!56374 List!56374) Unit!146241)

(assert (=> d!1569491 (= lt!2001874 (choose!35675 lt!2001782 lt!2001782))))

(assert (=> d!1569491 (= (lemmaIsPrefixRefl!3242 lt!2001782 lt!2001782) lt!2001874)))

(declare-fun bs!1175580 () Bool)

(assert (= bs!1175580 d!1569491))

(assert (=> bs!1175580 m!5889336))

(declare-fun m!5889502 () Bool)

(assert (=> bs!1175580 m!5889502))

(assert (=> b!4885495 d!1569491))

(declare-fun d!1569493 () Bool)

(declare-fun list!17656 (Conc!14691) List!56374)

(assert (=> d!1569493 (= (list!17654 input!1236) (list!17656 (c!830641 input!1236)))))

(declare-fun bs!1175581 () Bool)

(assert (= bs!1175581 d!1569493))

(declare-fun m!5889504 () Bool)

(assert (=> bs!1175581 m!5889504))

(assert (=> b!4885495 d!1569493))

(declare-fun d!1569495 () Bool)

(assert (=> d!1569495 (= (list!17654 (_2!33406 lt!2001778)) (list!17656 (c!830641 (_2!33406 lt!2001778))))))

(declare-fun bs!1175582 () Bool)

(assert (= bs!1175582 d!1569495))

(declare-fun m!5889506 () Bool)

(assert (=> bs!1175582 m!5889506))

(assert (=> b!4885503 d!1569495))

(declare-fun b!4885683 () Bool)

(declare-fun e!3053930 () Option!13930)

(declare-fun call!338987 () Option!13930)

(assert (=> b!4885683 (= e!3053930 call!338987)))

(declare-fun b!4885684 () Bool)

(declare-fun e!3053934 () Bool)

(declare-fun e!3053931 () Bool)

(assert (=> b!4885684 (= e!3053934 e!3053931)))

(declare-fun res!2086180 () Bool)

(assert (=> b!4885684 (=> res!2086180 e!3053931)))

(declare-fun lt!2001915 () Option!13930)

(assert (=> b!4885684 (= res!2086180 (not (isDefined!10953 lt!2001915)))))

(declare-fun bm!338982 () Bool)

(assert (=> bm!338982 (= call!338987 (maxPrefixOneRuleZipperSequence!649 thiss!14805 (h!62700 (t!365022 rulesArg!165)) input!1236))))

(declare-fun e!3053933 () Bool)

(declare-fun b!4885685 () Bool)

(assert (=> b!4885685 (= e!3053933 (= (list!17654 (_2!33406 (get!19380 lt!2001915))) (_2!33405 (get!19379 (maxPrefix!4580 thiss!14805 (t!365022 rulesArg!165) (list!17654 input!1236))))))))

(declare-fun b!4885686 () Bool)

(declare-fun e!3053935 () Bool)

(assert (=> b!4885686 (= e!3053935 (= (list!17654 (_2!33406 (get!19380 lt!2001915))) (_2!33405 (get!19379 (maxPrefixZipper!626 thiss!14805 (t!365022 rulesArg!165) (list!17654 input!1236))))))))

(declare-fun b!4885688 () Bool)

(declare-fun e!3053932 () Bool)

(assert (=> b!4885688 (= e!3053932 e!3053935)))

(declare-fun res!2086179 () Bool)

(assert (=> b!4885688 (=> (not res!2086179) (not e!3053935))))

(assert (=> b!4885688 (= res!2086179 (= (_1!33406 (get!19380 lt!2001915)) (_1!33405 (get!19379 (maxPrefixZipper!626 thiss!14805 (t!365022 rulesArg!165) (list!17654 input!1236))))))))

(declare-fun b!4885689 () Bool)

(declare-fun res!2086182 () Bool)

(assert (=> b!4885689 (=> (not res!2086182) (not e!3053934))))

(assert (=> b!4885689 (= res!2086182 e!3053932)))

(declare-fun res!2086178 () Bool)

(assert (=> b!4885689 (=> res!2086178 e!3053932)))

(assert (=> b!4885689 (= res!2086178 (not (isDefined!10953 lt!2001915)))))

(declare-fun b!4885690 () Bool)

(declare-fun lt!2001916 () Option!13930)

(declare-fun lt!2001914 () Option!13930)

(assert (=> b!4885690 (= e!3053930 (ite (and (is-None!13929 lt!2001916) (is-None!13929 lt!2001914)) None!13929 (ite (is-None!13929 lt!2001914) lt!2001916 (ite (is-None!13929 lt!2001916) lt!2001914 (ite (>= (size!37052 (_1!33406 (v!49879 lt!2001916))) (size!37052 (_1!33406 (v!49879 lt!2001914)))) lt!2001916 lt!2001914)))))))

(assert (=> b!4885690 (= lt!2001916 call!338987)))

(assert (=> b!4885690 (= lt!2001914 (maxPrefixZipperSequence!1284 thiss!14805 (t!365022 (t!365022 rulesArg!165)) input!1236))))

(declare-fun b!4885687 () Bool)

(assert (=> b!4885687 (= e!3053931 e!3053933)))

(declare-fun res!2086183 () Bool)

(assert (=> b!4885687 (=> (not res!2086183) (not e!3053933))))

(assert (=> b!4885687 (= res!2086183 (= (_1!33406 (get!19380 lt!2001915)) (_1!33405 (get!19379 (maxPrefix!4580 thiss!14805 (t!365022 rulesArg!165) (list!17654 input!1236))))))))

(declare-fun d!1569497 () Bool)

(assert (=> d!1569497 e!3053934))

(declare-fun res!2086181 () Bool)

(assert (=> d!1569497 (=> (not res!2086181) (not e!3053934))))

(assert (=> d!1569497 (= res!2086181 (= (isDefined!10953 lt!2001915) (isDefined!10952 (maxPrefixZipper!626 thiss!14805 (t!365022 rulesArg!165) (list!17654 input!1236)))))))

(assert (=> d!1569497 (= lt!2001915 e!3053930)))

(declare-fun c!830659 () Bool)

(assert (=> d!1569497 (= c!830659 (and (is-Cons!56252 (t!365022 rulesArg!165)) (is-Nil!56252 (t!365022 (t!365022 rulesArg!165)))))))

(declare-fun lt!2001912 () Unit!146241)

(declare-fun lt!2001910 () Unit!146241)

(assert (=> d!1569497 (= lt!2001912 lt!2001910)))

(declare-fun lt!2001913 () List!56374)

(declare-fun lt!2001911 () List!56374)

(assert (=> d!1569497 (isPrefix!4845 lt!2001913 lt!2001911)))

(assert (=> d!1569497 (= lt!2001910 (lemmaIsPrefixRefl!3242 lt!2001913 lt!2001911))))

(assert (=> d!1569497 (= lt!2001911 (list!17654 input!1236))))

(assert (=> d!1569497 (= lt!2001913 (list!17654 input!1236))))

(assert (=> d!1569497 (rulesValidInductive!3102 thiss!14805 (t!365022 rulesArg!165))))

(assert (=> d!1569497 (= (maxPrefixZipperSequence!1284 thiss!14805 (t!365022 rulesArg!165) input!1236) lt!2001915)))

(assert (= (and d!1569497 c!830659) b!4885683))

(assert (= (and d!1569497 (not c!830659)) b!4885690))

(assert (= (or b!4885683 b!4885690) bm!338982))

(assert (= (and d!1569497 res!2086181) b!4885689))

(assert (= (and b!4885689 (not res!2086178)) b!4885688))

(assert (= (and b!4885688 res!2086179) b!4885686))

(assert (= (and b!4885689 res!2086182) b!4885684))

(assert (= (and b!4885684 (not res!2086180)) b!4885687))

(assert (= (and b!4885687 res!2086183) b!4885685))

(declare-fun m!5889534 () Bool)

(assert (=> b!4885685 m!5889534))

(declare-fun m!5889536 () Bool)

(assert (=> b!4885685 m!5889536))

(assert (=> b!4885685 m!5889340))

(declare-fun m!5889538 () Bool)

(assert (=> b!4885685 m!5889538))

(assert (=> b!4885685 m!5889340))

(assert (=> b!4885685 m!5889538))

(declare-fun m!5889540 () Bool)

(assert (=> b!4885685 m!5889540))

(assert (=> b!4885687 m!5889534))

(assert (=> b!4885687 m!5889340))

(assert (=> b!4885687 m!5889340))

(assert (=> b!4885687 m!5889538))

(assert (=> b!4885687 m!5889538))

(assert (=> b!4885687 m!5889540))

(declare-fun m!5889542 () Bool)

(assert (=> d!1569497 m!5889542))

(declare-fun m!5889544 () Bool)

(assert (=> d!1569497 m!5889544))

(declare-fun m!5889546 () Bool)

(assert (=> d!1569497 m!5889546))

(declare-fun m!5889548 () Bool)

(assert (=> d!1569497 m!5889548))

(assert (=> d!1569497 m!5889340))

(declare-fun m!5889550 () Bool)

(assert (=> d!1569497 m!5889550))

(assert (=> d!1569497 m!5889340))

(assert (=> d!1569497 m!5889542))

(assert (=> d!1569497 m!5889462))

(assert (=> b!4885686 m!5889534))

(assert (=> b!4885686 m!5889542))

(declare-fun m!5889552 () Bool)

(assert (=> b!4885686 m!5889552))

(assert (=> b!4885686 m!5889536))

(assert (=> b!4885686 m!5889340))

(assert (=> b!4885686 m!5889340))

(assert (=> b!4885686 m!5889542))

(assert (=> b!4885688 m!5889534))

(assert (=> b!4885688 m!5889340))

(assert (=> b!4885688 m!5889340))

(assert (=> b!4885688 m!5889542))

(assert (=> b!4885688 m!5889542))

(assert (=> b!4885688 m!5889552))

(assert (=> b!4885689 m!5889546))

(declare-fun m!5889554 () Bool)

(assert (=> bm!338982 m!5889554))

(assert (=> b!4885684 m!5889546))

(declare-fun m!5889556 () Bool)

(assert (=> b!4885690 m!5889556))

(assert (=> b!4885492 d!1569497))

(declare-fun b!4885722 () Bool)

(declare-fun e!3053960 () Bool)

(assert (=> b!4885722 (= e!3053960 true)))

(declare-fun b!4885721 () Bool)

(declare-fun e!3053959 () Bool)

(assert (=> b!4885721 (= e!3053959 e!3053960)))

(declare-fun b!4885713 () Bool)

(assert (=> b!4885713 e!3053959))

(assert (= b!4885721 b!4885722))

(assert (= b!4885713 b!4885721))

(declare-fun order!25375 () Int)

(declare-fun order!25377 () Int)

(declare-fun lambda!243823 () Int)

(declare-fun dynLambda!22567 (Int Int) Int)

(declare-fun dynLambda!22568 (Int Int) Int)

(assert (=> b!4885722 (< (dynLambda!22567 order!25375 (toValue!11010 (transformation!8123 (h!62700 rulesArg!165)))) (dynLambda!22568 order!25377 lambda!243823))))

(declare-fun order!25379 () Int)

(declare-fun dynLambda!22569 (Int Int) Int)

(assert (=> b!4885722 (< (dynLambda!22569 order!25379 (toChars!10869 (transformation!8123 (h!62700 rulesArg!165)))) (dynLambda!22568 order!25377 lambda!243823))))

(declare-fun b!4885709 () Bool)

(declare-fun e!3053951 () Option!13930)

(assert (=> b!4885709 (= e!3053951 None!13929)))

(declare-fun d!1569501 () Bool)

(declare-fun e!3053950 () Bool)

(assert (=> d!1569501 e!3053950))

(declare-fun res!2086196 () Bool)

(assert (=> d!1569501 (=> (not res!2086196) (not e!3053950))))

(declare-fun lt!2001957 () Option!13930)

(assert (=> d!1569501 (= res!2086196 (= (isDefined!10953 lt!2001957) (isDefined!10952 (maxPrefixOneRule!3511 thiss!14805 (h!62700 rulesArg!165) (list!17654 input!1236)))))))

(assert (=> d!1569501 (= lt!2001957 e!3053951)))

(declare-fun c!830664 () Bool)

(declare-datatypes ((tuple2!60212 0))(
  ( (tuple2!60213 (_1!33409 BalanceConc!28812) (_2!33409 BalanceConc!28812)) )
))
(declare-fun lt!2001958 () tuple2!60212)

(declare-fun isEmpty!30147 (BalanceConc!28812) Bool)

(assert (=> d!1569501 (= c!830664 (isEmpty!30147 (_1!33409 lt!2001958)))))

(declare-fun findLongestMatchWithZipperSequence!255 (Regex!13198 BalanceConc!28812) tuple2!60212)

(assert (=> d!1569501 (= lt!2001958 (findLongestMatchWithZipperSequence!255 (regex!8123 (h!62700 rulesArg!165)) input!1236))))

(assert (=> d!1569501 (ruleValid!3654 thiss!14805 (h!62700 rulesArg!165))))

(assert (=> d!1569501 (= (maxPrefixOneRuleZipperSequence!649 thiss!14805 (h!62700 rulesArg!165) input!1236) lt!2001957)))

(declare-fun b!4885710 () Bool)

(declare-fun e!3053953 () Bool)

(assert (=> b!4885710 (= e!3053950 e!3053953)))

(declare-fun res!2086195 () Bool)

(assert (=> b!4885710 (=> res!2086195 e!3053953)))

(assert (=> b!4885710 (= res!2086195 (not (isDefined!10953 lt!2001957)))))

(declare-fun b!4885711 () Bool)

(declare-fun e!3053952 () Bool)

(assert (=> b!4885711 (= e!3053953 e!3053952)))

(declare-fun res!2086197 () Bool)

(assert (=> b!4885711 (=> (not res!2086197) (not e!3053952))))

(assert (=> b!4885711 (= res!2086197 (= (_1!33406 (get!19380 lt!2001957)) (_1!33405 (get!19379 (maxPrefixOneRule!3511 thiss!14805 (h!62700 rulesArg!165) (list!17654 input!1236))))))))

(declare-fun b!4885712 () Bool)

(declare-fun e!3053954 () Bool)

(declare-fun lt!2001959 () List!56374)

(declare-datatypes ((tuple2!60214 0))(
  ( (tuple2!60215 (_1!33410 List!56374) (_2!33410 List!56374)) )
))
(declare-fun findLongestMatchInner!1740 (Regex!13198 List!56374 Int List!56374 List!56374 Int) tuple2!60214)

(assert (=> b!4885712 (= e!3053954 (matchR!6512 (regex!8123 (h!62700 rulesArg!165)) (_1!33410 (findLongestMatchInner!1740 (regex!8123 (h!62700 rulesArg!165)) Nil!56250 (size!37054 Nil!56250) lt!2001959 lt!2001959 (size!37054 lt!2001959)))))))

(declare-fun size!37055 (BalanceConc!28812) Int)

(assert (=> b!4885713 (= e!3053951 (Some!13929 (tuple2!60207 (Token!14815 (apply!13522 (transformation!8123 (h!62700 rulesArg!165)) (_1!33409 lt!2001958)) (h!62700 rulesArg!165) (size!37055 (_1!33409 lt!2001958)) (list!17654 (_1!33409 lt!2001958))) (_2!33409 lt!2001958))))))

(assert (=> b!4885713 (= lt!2001959 (list!17654 input!1236))))

(declare-fun lt!2001955 () Unit!146241)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1703 (Regex!13198 List!56374) Unit!146241)

(assert (=> b!4885713 (= lt!2001955 (longestMatchIsAcceptedByMatchOrIsEmpty!1703 (regex!8123 (h!62700 rulesArg!165)) lt!2001959))))

(declare-fun res!2086194 () Bool)

(declare-fun isEmpty!30148 (List!56374) Bool)

(assert (=> b!4885713 (= res!2086194 (isEmpty!30148 (_1!33410 (findLongestMatchInner!1740 (regex!8123 (h!62700 rulesArg!165)) Nil!56250 (size!37054 Nil!56250) lt!2001959 lt!2001959 (size!37054 lt!2001959)))))))

(assert (=> b!4885713 (=> res!2086194 e!3053954)))

(assert (=> b!4885713 e!3053954))

(declare-fun lt!2001952 () Unit!146241)

(assert (=> b!4885713 (= lt!2001952 lt!2001955)))

(declare-fun lt!2001960 () Unit!146241)

(declare-fun lemmaInv!1223 (TokenValueInjection!16174) Unit!146241)

(assert (=> b!4885713 (= lt!2001960 (lemmaInv!1223 (transformation!8123 (h!62700 rulesArg!165))))))

(declare-fun lt!2001954 () Unit!146241)

(declare-fun ForallOf!1120 (Int BalanceConc!28812) Unit!146241)

(assert (=> b!4885713 (= lt!2001954 (ForallOf!1120 lambda!243823 (_1!33409 lt!2001958)))))

(declare-fun lt!2001953 () Unit!146241)

(assert (=> b!4885713 (= lt!2001953 (ForallOf!1120 lambda!243823 (seqFromList!5918 (list!17654 (_1!33409 lt!2001958)))))))

(declare-fun lt!2001956 () Option!13930)

(assert (=> b!4885713 (= lt!2001956 (Some!13929 (tuple2!60207 (Token!14815 (apply!13522 (transformation!8123 (h!62700 rulesArg!165)) (_1!33409 lt!2001958)) (h!62700 rulesArg!165) (size!37055 (_1!33409 lt!2001958)) (list!17654 (_1!33409 lt!2001958))) (_2!33409 lt!2001958))))))

(declare-fun lt!2001951 () Unit!146241)

(declare-fun lemmaEqSameImage!1077 (TokenValueInjection!16174 BalanceConc!28812 BalanceConc!28812) Unit!146241)

(assert (=> b!4885713 (= lt!2001951 (lemmaEqSameImage!1077 (transformation!8123 (h!62700 rulesArg!165)) (_1!33409 lt!2001958) (seqFromList!5918 (list!17654 (_1!33409 lt!2001958)))))))

(declare-fun b!4885714 () Bool)

(assert (=> b!4885714 (= e!3053952 (= (list!17654 (_2!33406 (get!19380 lt!2001957))) (_2!33405 (get!19379 (maxPrefixOneRule!3511 thiss!14805 (h!62700 rulesArg!165) (list!17654 input!1236))))))))

(assert (= (and d!1569501 c!830664) b!4885709))

(assert (= (and d!1569501 (not c!830664)) b!4885713))

(assert (= (and b!4885713 (not res!2086194)) b!4885712))

(assert (= (and d!1569501 res!2086196) b!4885710))

(assert (= (and b!4885710 (not res!2086195)) b!4885711))

(assert (= (and b!4885711 res!2086197) b!4885714))

(declare-fun m!5889558 () Bool)

(assert (=> d!1569501 m!5889558))

(declare-fun m!5889560 () Bool)

(assert (=> d!1569501 m!5889560))

(declare-fun m!5889562 () Bool)

(assert (=> d!1569501 m!5889562))

(assert (=> d!1569501 m!5889460))

(assert (=> d!1569501 m!5889340))

(assert (=> d!1569501 m!5889558))

(declare-fun m!5889564 () Bool)

(assert (=> d!1569501 m!5889564))

(declare-fun m!5889566 () Bool)

(assert (=> d!1569501 m!5889566))

(assert (=> d!1569501 m!5889340))

(assert (=> b!4885710 m!5889562))

(declare-fun m!5889568 () Bool)

(assert (=> b!4885714 m!5889568))

(assert (=> b!4885714 m!5889558))

(declare-fun m!5889570 () Bool)

(assert (=> b!4885714 m!5889570))

(assert (=> b!4885714 m!5889340))

(declare-fun m!5889572 () Bool)

(assert (=> b!4885714 m!5889572))

(assert (=> b!4885714 m!5889340))

(assert (=> b!4885714 m!5889558))

(declare-fun m!5889574 () Bool)

(assert (=> b!4885713 m!5889574))

(declare-fun m!5889576 () Bool)

(assert (=> b!4885713 m!5889576))

(declare-fun m!5889578 () Bool)

(assert (=> b!4885713 m!5889578))

(declare-fun m!5889580 () Bool)

(assert (=> b!4885713 m!5889580))

(declare-fun m!5889582 () Bool)

(assert (=> b!4885713 m!5889582))

(declare-fun m!5889584 () Bool)

(assert (=> b!4885713 m!5889584))

(assert (=> b!4885713 m!5889340))

(declare-fun m!5889586 () Bool)

(assert (=> b!4885713 m!5889586))

(declare-fun m!5889588 () Bool)

(assert (=> b!4885713 m!5889588))

(declare-fun m!5889590 () Bool)

(assert (=> b!4885713 m!5889590))

(declare-fun m!5889592 () Bool)

(assert (=> b!4885713 m!5889592))

(assert (=> b!4885713 m!5889576))

(assert (=> b!4885713 m!5889580))

(assert (=> b!4885713 m!5889586))

(assert (=> b!4885713 m!5889574))

(declare-fun m!5889594 () Bool)

(assert (=> b!4885713 m!5889594))

(assert (=> b!4885713 m!5889586))

(declare-fun m!5889596 () Bool)

(assert (=> b!4885713 m!5889596))

(declare-fun m!5889598 () Bool)

(assert (=> b!4885713 m!5889598))

(assert (=> b!4885711 m!5889572))

(assert (=> b!4885711 m!5889340))

(assert (=> b!4885711 m!5889340))

(assert (=> b!4885711 m!5889558))

(assert (=> b!4885711 m!5889558))

(assert (=> b!4885711 m!5889570))

(assert (=> b!4885712 m!5889574))

(assert (=> b!4885712 m!5889576))

(assert (=> b!4885712 m!5889574))

(assert (=> b!4885712 m!5889576))

(assert (=> b!4885712 m!5889578))

(declare-fun m!5889600 () Bool)

(assert (=> b!4885712 m!5889600))

(assert (=> b!4885492 d!1569501))

(declare-fun d!1569503 () Bool)

(assert (=> d!1569503 (= (inv!72392 (tag!8987 (h!62700 rulesArg!165))) (= (mod (str.len (value!260658 (tag!8987 (h!62700 rulesArg!165)))) 2) 0))))

(assert (=> b!4885494 d!1569503))

(declare-fun d!1569505 () Bool)

(declare-fun res!2086200 () Bool)

(declare-fun e!3053963 () Bool)

(assert (=> d!1569505 (=> (not res!2086200) (not e!3053963))))

(declare-fun semiInverseModEq!3569 (Int Int) Bool)

(assert (=> d!1569505 (= res!2086200 (semiInverseModEq!3569 (toChars!10869 (transformation!8123 (h!62700 rulesArg!165))) (toValue!11010 (transformation!8123 (h!62700 rulesArg!165)))))))

(assert (=> d!1569505 (= (inv!72395 (transformation!8123 (h!62700 rulesArg!165))) e!3053963)))

(declare-fun b!4885725 () Bool)

(declare-fun equivClasses!3448 (Int Int) Bool)

(assert (=> b!4885725 (= e!3053963 (equivClasses!3448 (toChars!10869 (transformation!8123 (h!62700 rulesArg!165))) (toValue!11010 (transformation!8123 (h!62700 rulesArg!165)))))))

(assert (= (and d!1569505 res!2086200) b!4885725))

(declare-fun m!5889602 () Bool)

(assert (=> d!1569505 m!5889602))

(declare-fun m!5889604 () Bool)

(assert (=> b!4885725 m!5889604))

(assert (=> b!4885494 d!1569505))

(declare-fun d!1569507 () Bool)

(assert (=> d!1569507 (= (get!19379 lt!2001777) (v!49878 lt!2001777))))

(assert (=> b!4885493 d!1569507))

(assert (=> b!4885493 d!1569481))

(declare-fun d!1569509 () Bool)

(declare-fun c!830667 () Bool)

(assert (=> d!1569509 (= c!830667 (is-Node!14691 (c!830641 input!1236)))))

(declare-fun e!3053968 () Bool)

(assert (=> d!1569509 (= (inv!72397 (c!830641 input!1236)) e!3053968)))

(declare-fun b!4885732 () Bool)

(declare-fun inv!72401 (Conc!14691) Bool)

(assert (=> b!4885732 (= e!3053968 (inv!72401 (c!830641 input!1236)))))

(declare-fun b!4885733 () Bool)

(declare-fun e!3053969 () Bool)

(assert (=> b!4885733 (= e!3053968 e!3053969)))

(declare-fun res!2086203 () Bool)

(assert (=> b!4885733 (= res!2086203 (not (is-Leaf!24470 (c!830641 input!1236))))))

(assert (=> b!4885733 (=> res!2086203 e!3053969)))

(declare-fun b!4885734 () Bool)

(declare-fun inv!72402 (Conc!14691) Bool)

(assert (=> b!4885734 (= e!3053969 (inv!72402 (c!830641 input!1236)))))

(assert (= (and d!1569509 c!830667) b!4885732))

(assert (= (and d!1569509 (not c!830667)) b!4885733))

(assert (= (and b!4885733 (not res!2086203)) b!4885734))

(declare-fun m!5889606 () Bool)

(assert (=> b!4885732 m!5889606))

(declare-fun m!5889608 () Bool)

(assert (=> b!4885734 m!5889608))

(assert (=> b!4885504 d!1569509))

(declare-fun d!1569511 () Bool)

(assert (=> d!1569511 (= (isEmpty!30144 rulesArg!165) (is-Nil!56252 rulesArg!165))))

(assert (=> b!4885500 d!1569511))

(declare-fun d!1569513 () Bool)

(assert (=> d!1569513 (= (isDefined!10952 lt!2001775) (not (isEmpty!30146 lt!2001775)))))

(declare-fun bs!1175583 () Bool)

(assert (= bs!1175583 d!1569513))

(declare-fun m!5889610 () Bool)

(assert (=> bs!1175583 m!5889610))

(assert (=> b!4885491 d!1569513))

(declare-fun d!1569515 () Bool)

(declare-fun isBalanced!3994 (Conc!14691) Bool)

(assert (=> d!1569515 (= (inv!72396 input!1236) (isBalanced!3994 (c!830641 input!1236)))))

(declare-fun bs!1175584 () Bool)

(assert (= bs!1175584 d!1569515))

(declare-fun m!5889612 () Bool)

(assert (=> bs!1175584 m!5889612))

(assert (=> start!511274 d!1569515))

(declare-fun d!1569517 () Bool)

(assert (=> d!1569517 (= (isDefined!10952 lt!2001777) (not (isEmpty!30146 lt!2001777)))))

(declare-fun bs!1175585 () Bool)

(assert (= bs!1175585 d!1569517))

(declare-fun m!5889614 () Bool)

(assert (=> bs!1175585 m!5889614))

(assert (=> b!4885502 d!1569517))

(declare-fun d!1569519 () Bool)

(declare-fun isEmpty!30149 (Option!13930) Bool)

(assert (=> d!1569519 (= (isDefined!10953 lt!2001776) (not (isEmpty!30149 lt!2001776)))))

(declare-fun bs!1175586 () Bool)

(assert (= bs!1175586 d!1569519))

(declare-fun m!5889616 () Bool)

(assert (=> bs!1175586 m!5889616))

(assert (=> b!4885502 d!1569519))

(declare-fun lt!2001973 () Option!13929)

(declare-fun d!1569521 () Bool)

(assert (=> d!1569521 (= lt!2001973 (maxPrefix!4580 thiss!14805 rulesArg!165 lt!2001782))))

(declare-fun e!3053972 () Option!13929)

(assert (=> d!1569521 (= lt!2001973 e!3053972)))

(declare-fun c!830670 () Bool)

(assert (=> d!1569521 (= c!830670 (and (is-Cons!56252 rulesArg!165) (is-Nil!56252 (t!365022 rulesArg!165))))))

(declare-fun lt!2001975 () Unit!146241)

(declare-fun lt!2001972 () Unit!146241)

(assert (=> d!1569521 (= lt!2001975 lt!2001972)))

(assert (=> d!1569521 (isPrefix!4845 lt!2001782 lt!2001782)))

(assert (=> d!1569521 (= lt!2001972 (lemmaIsPrefixRefl!3242 lt!2001782 lt!2001782))))

(assert (=> d!1569521 (rulesValidInductive!3102 thiss!14805 rulesArg!165)))

(assert (=> d!1569521 (= (maxPrefixZipper!626 thiss!14805 rulesArg!165 lt!2001782) lt!2001973)))

(declare-fun bm!338985 () Bool)

(declare-fun call!338990 () Option!13929)

(declare-fun maxPrefixOneRuleZipper!243 (LexerInterface!7715 Rule!16046 List!56374) Option!13929)

(assert (=> bm!338985 (= call!338990 (maxPrefixOneRuleZipper!243 thiss!14805 (h!62700 rulesArg!165) lt!2001782))))

(declare-fun b!4885739 () Bool)

(assert (=> b!4885739 (= e!3053972 call!338990)))

(declare-fun b!4885740 () Bool)

(declare-fun lt!2001971 () Option!13929)

(declare-fun lt!2001974 () Option!13929)

(assert (=> b!4885740 (= e!3053972 (ite (and (is-None!13928 lt!2001971) (is-None!13928 lt!2001974)) None!13928 (ite (is-None!13928 lt!2001974) lt!2001971 (ite (is-None!13928 lt!2001971) lt!2001974 (ite (>= (size!37052 (_1!33405 (v!49878 lt!2001971))) (size!37052 (_1!33405 (v!49878 lt!2001974)))) lt!2001971 lt!2001974)))))))

(assert (=> b!4885740 (= lt!2001971 call!338990)))

(assert (=> b!4885740 (= lt!2001974 (maxPrefixZipper!626 thiss!14805 (t!365022 rulesArg!165) lt!2001782))))

(assert (= (and d!1569521 c!830670) b!4885739))

(assert (= (and d!1569521 (not c!830670)) b!4885740))

(assert (= (or b!4885739 b!4885740) bm!338985))

(assert (=> d!1569521 m!5889364))

(assert (=> d!1569521 m!5889336))

(assert (=> d!1569521 m!5889338))

(assert (=> d!1569521 m!5889350))

(declare-fun m!5889618 () Bool)

(assert (=> bm!338985 m!5889618))

(declare-fun m!5889620 () Bool)

(assert (=> b!4885740 m!5889620))

(assert (=> b!4885502 d!1569521))

(declare-fun b!4885751 () Bool)

(declare-fun e!3053975 () Bool)

(declare-fun tp_is_empty!35737 () Bool)

(assert (=> b!4885751 (= e!3053975 tp_is_empty!35737)))

(declare-fun b!4885754 () Bool)

(declare-fun tp!1374880 () Bool)

(declare-fun tp!1374878 () Bool)

(assert (=> b!4885754 (= e!3053975 (and tp!1374880 tp!1374878))))

(declare-fun b!4885752 () Bool)

(declare-fun tp!1374882 () Bool)

(declare-fun tp!1374881 () Bool)

(assert (=> b!4885752 (= e!3053975 (and tp!1374882 tp!1374881))))

(assert (=> b!4885494 (= tp!1374852 e!3053975)))

(declare-fun b!4885753 () Bool)

(declare-fun tp!1374879 () Bool)

(assert (=> b!4885753 (= e!3053975 tp!1374879)))

(assert (= (and b!4885494 (is-ElementMatch!13198 (regex!8123 (h!62700 rulesArg!165)))) b!4885751))

(assert (= (and b!4885494 (is-Concat!21632 (regex!8123 (h!62700 rulesArg!165)))) b!4885752))

(assert (= (and b!4885494 (is-Star!13198 (regex!8123 (h!62700 rulesArg!165)))) b!4885753))

(assert (= (and b!4885494 (is-Union!13198 (regex!8123 (h!62700 rulesArg!165)))) b!4885754))

(declare-fun b!4885763 () Bool)

(declare-fun tp!1374890 () Bool)

(declare-fun tp!1374891 () Bool)

(declare-fun e!3053981 () Bool)

(assert (=> b!4885763 (= e!3053981 (and (inv!72397 (left!40859 (c!830641 input!1236))) tp!1374890 (inv!72397 (right!41189 (c!830641 input!1236))) tp!1374891))))

(declare-fun b!4885765 () Bool)

(declare-fun e!3053980 () Bool)

(declare-fun tp!1374889 () Bool)

(assert (=> b!4885765 (= e!3053980 tp!1374889)))

(declare-fun b!4885764 () Bool)

(declare-fun inv!72403 (IArray!29443) Bool)

(assert (=> b!4885764 (= e!3053981 (and (inv!72403 (xs!18007 (c!830641 input!1236))) e!3053980))))

(assert (=> b!4885504 (= tp!1374849 (and (inv!72397 (c!830641 input!1236)) e!3053981))))

(assert (= (and b!4885504 (is-Node!14691 (c!830641 input!1236))) b!4885763))

(assert (= b!4885764 b!4885765))

(assert (= (and b!4885504 (is-Leaf!24470 (c!830641 input!1236))) b!4885764))

(declare-fun m!5889622 () Bool)

(assert (=> b!4885763 m!5889622))

(declare-fun m!5889624 () Bool)

(assert (=> b!4885763 m!5889624))

(declare-fun m!5889626 () Bool)

(assert (=> b!4885764 m!5889626))

(assert (=> b!4885504 m!5889348))

(declare-fun b!4885776 () Bool)

(declare-fun b_free!131215 () Bool)

(declare-fun b_next!132005 () Bool)

(assert (=> b!4885776 (= b_free!131215 (not b_next!132005))))

(declare-fun tp!1374902 () Bool)

(declare-fun b_and!344047 () Bool)

(assert (=> b!4885776 (= tp!1374902 b_and!344047)))

(declare-fun b_free!131217 () Bool)

(declare-fun b_next!132007 () Bool)

(assert (=> b!4885776 (= b_free!131217 (not b_next!132007))))

(declare-fun tp!1374900 () Bool)

(declare-fun b_and!344049 () Bool)

(assert (=> b!4885776 (= tp!1374900 b_and!344049)))

(declare-fun e!3053991 () Bool)

(assert (=> b!4885776 (= e!3053991 (and tp!1374902 tp!1374900))))

(declare-fun b!4885775 () Bool)

(declare-fun e!3053993 () Bool)

(declare-fun tp!1374901 () Bool)

(assert (=> b!4885775 (= e!3053993 (and tp!1374901 (inv!72392 (tag!8987 (h!62700 (t!365022 rulesArg!165)))) (inv!72395 (transformation!8123 (h!62700 (t!365022 rulesArg!165)))) e!3053991))))

(declare-fun b!4885774 () Bool)

(declare-fun e!3053992 () Bool)

(declare-fun tp!1374903 () Bool)

(assert (=> b!4885774 (= e!3053992 (and e!3053993 tp!1374903))))

(assert (=> b!4885501 (= tp!1374848 e!3053992)))

(assert (= b!4885775 b!4885776))

(assert (= b!4885774 b!4885775))

(assert (= (and b!4885501 (is-Cons!56252 (t!365022 rulesArg!165))) b!4885774))

(declare-fun m!5889628 () Bool)

(assert (=> b!4885775 m!5889628))

(declare-fun m!5889630 () Bool)

(assert (=> b!4885775 m!5889630))

(push 1)

(assert (not b!4885732))

(assert (not d!1569519))

(assert (not b!4885764))

(assert (not b!4885690))

(assert (not d!1569453))

(assert (not b!4885622))

(assert (not bm!338982))

(assert (not b!4885713))

(assert (not bm!338976))

(assert (not b!4885774))

(assert (not b!4885642))

(assert (not d!1569501))

(assert (not b!4885687))

(assert (not d!1569495))

(assert (not d!1569517))

(assert (not b!4885712))

(assert b_and!344049)

(assert (not b!4885710))

(assert b_and!344047)

(assert (not d!1569497))

(assert (not b_next!131999))

(assert (not b!4885740))

(assert (not b!4885688))

(assert (not b!4885625))

(assert b_and!344039)

(assert (not b!4885629))

(assert (not d!1569515))

(assert (not b!4885686))

(assert (not b!4885734))

(assert tp_is_empty!35737)

(assert (not b!4885711))

(assert (not b!4885775))

(assert (not b!4885725))

(assert (not d!1569485))

(assert (not b!4885685))

(assert (not b!4885689))

(assert (not b_next!132007))

(assert (not b!4885627))

(assert (not d!1569513))

(assert (not b!4885714))

(assert (not b_next!132005))

(assert (not d!1569505))

(assert (not b!4885594))

(assert b_and!344041)

(assert (not b!4885504))

(assert (not b!4885641))

(assert (not b!4885626))

(assert (not b!4885624))

(assert (not d!1569493))

(assert (not b!4885623))

(assert (not b!4885595))

(assert (not b!4885752))

(assert (not b!4885754))

(assert (not d!1569521))

(assert (not b!4885630))

(assert (not b!4885765))

(assert (not d!1569491))

(assert (not bm!338985))

(assert (not b!4885640))

(assert (not b!4885684))

(assert (not b!4885753))

(assert (not b_next!131997))

(assert (not b!4885763))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!131999))

(assert b_and!344039)

(assert (not b_next!132007))

(assert (not b_next!132005))

(assert b_and!344041)

(assert (not b_next!131997))

(assert b_and!344049)

(assert b_and!344047)

(check-sat)

(pop 1)


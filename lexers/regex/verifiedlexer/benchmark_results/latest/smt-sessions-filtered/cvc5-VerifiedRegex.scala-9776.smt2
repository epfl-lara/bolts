; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!511198 () Bool)

(assert start!511198)

(declare-fun b!4885025 () Bool)

(declare-fun b_free!131183 () Bool)

(declare-fun b_next!131973 () Bool)

(assert (=> b!4885025 (= b_free!131183 (not b_next!131973))))

(declare-fun tp!1374719 () Bool)

(declare-fun b_and!344015 () Bool)

(assert (=> b!4885025 (= tp!1374719 b_and!344015)))

(declare-fun b_free!131185 () Bool)

(declare-fun b_next!131975 () Bool)

(assert (=> b!4885025 (= b_free!131185 (not b_next!131975))))

(declare-fun tp!1374720 () Bool)

(declare-fun b_and!344017 () Bool)

(assert (=> b!4885025 (= tp!1374720 b_and!344017)))

(declare-fun b!4885019 () Bool)

(declare-fun e!3053471 () Bool)

(declare-fun e!3053472 () Bool)

(declare-fun tp!1374718 () Bool)

(assert (=> b!4885019 (= e!3053471 (and e!3053472 tp!1374718))))

(declare-fun b!4885020 () Bool)

(declare-fun res!2085741 () Bool)

(declare-fun e!3053467 () Bool)

(assert (=> b!4885020 (=> res!2085741 e!3053467)))

(declare-fun lt!2001480 () Bool)

(assert (=> b!4885020 (= res!2085741 lt!2001480)))

(declare-fun b!4885021 () Bool)

(declare-fun e!3053469 () Bool)

(declare-fun e!3053470 () Bool)

(assert (=> b!4885021 (= e!3053469 e!3053470)))

(declare-fun res!2085744 () Bool)

(assert (=> b!4885021 (=> res!2085744 e!3053470)))

(declare-fun lt!2001484 () Bool)

(declare-datatypes ((C!26586 0))(
  ( (C!26587 (val!22627 Int)) )
))
(declare-datatypes ((List!56362 0))(
  ( (Nil!56238) (Cons!56238 (h!62686 C!26586) (t!365008 List!56362)) )
))
(declare-datatypes ((List!56363 0))(
  ( (Nil!56239) (Cons!56239 (h!62687 (_ BitVec 16)) (t!365009 List!56363)) )
))
(declare-datatypes ((TokenValue!8429 0))(
  ( (FloatLiteralValue!16858 (text!59448 List!56363)) (TokenValueExt!8428 (__x!34151 Int)) (Broken!42145 (value!260519 List!56363)) (Object!8552) (End!8429) (Def!8429) (Underscore!8429) (Match!8429) (Else!8429) (Error!8429) (Case!8429) (If!8429) (Extends!8429) (Abstract!8429) (Class!8429) (Val!8429) (DelimiterValue!16858 (del!8489 List!56363)) (KeywordValue!8435 (value!260520 List!56363)) (CommentValue!16858 (value!260521 List!56363)) (WhitespaceValue!16858 (value!260522 List!56363)) (IndentationValue!8429 (value!260523 List!56363)) (String!63588) (Int32!8429) (Broken!42146 (value!260524 List!56363)) (Boolean!8430) (Unit!146228) (OperatorValue!8432 (op!8489 List!56363)) (IdentifierValue!16858 (value!260525 List!56363)) (IdentifierValue!16859 (value!260526 List!56363)) (WhitespaceValue!16859 (value!260527 List!56363)) (True!16858) (False!16858) (Broken!42147 (value!260528 List!56363)) (Broken!42148 (value!260529 List!56363)) (True!16859) (RightBrace!8429) (RightBracket!8429) (Colon!8429) (Null!8429) (Comma!8429) (LeftBracket!8429) (False!16859) (LeftBrace!8429) (ImaginaryLiteralValue!8429 (text!59449 List!56363)) (StringLiteralValue!25287 (value!260530 List!56363)) (EOFValue!8429 (value!260531 List!56363)) (IdentValue!8429 (value!260532 List!56363)) (DelimiterValue!16859 (value!260533 List!56363)) (DedentValue!8429 (value!260534 List!56363)) (NewLineValue!8429 (value!260535 List!56363)) (IntegerValue!25287 (value!260536 (_ BitVec 32)) (text!59450 List!56363)) (IntegerValue!25288 (value!260537 Int) (text!59451 List!56363)) (Times!8429) (Or!8429) (Equal!8429) (Minus!8429) (Broken!42149 (value!260538 List!56363)) (And!8429) (Div!8429) (LessEqual!8429) (Mod!8429) (Concat!21623) (Not!8429) (Plus!8429) (SpaceValue!8429 (value!260539 List!56363)) (IntegerValue!25289 (value!260540 Int) (text!59452 List!56363)) (StringLiteralValue!25288 (text!59453 List!56363)) (FloatLiteralValue!16859 (text!59454 List!56363)) (BytesLiteralValue!8429 (value!260541 List!56363)) (CommentValue!16859 (value!260542 List!56363)) (StringLiteralValue!25289 (value!260543 List!56363)) (ErrorTokenValue!8429 (msg!8490 List!56363)) )
))
(declare-datatypes ((Regex!13194 0))(
  ( (ElementMatch!13194 (c!830598 C!26586)) (Concat!21624 (regOne!26900 Regex!13194) (regTwo!26900 Regex!13194)) (EmptyExpr!13194) (Star!13194 (reg!13523 Regex!13194)) (EmptyLang!13194) (Union!13194 (regOne!26901 Regex!13194) (regTwo!26901 Regex!13194)) )
))
(declare-datatypes ((String!63589 0))(
  ( (String!63590 (value!260544 String)) )
))
(declare-datatypes ((IArray!29435 0))(
  ( (IArray!29436 (innerList!14775 List!56362)) )
))
(declare-datatypes ((Conc!14687 0))(
  ( (Node!14687 (left!40849 Conc!14687) (right!41179 Conc!14687) (csize!29604 Int) (cheight!14898 Int)) (Leaf!24464 (xs!18003 IArray!29435) (csize!29605 Int)) (Empty!14687) )
))
(declare-datatypes ((BalanceConc!28804 0))(
  ( (BalanceConc!28805 (c!830599 Conc!14687)) )
))
(declare-datatypes ((TokenValueInjection!16166 0))(
  ( (TokenValueInjection!16167 (toValue!11006 Int) (toChars!10865 Int)) )
))
(declare-datatypes ((Rule!16038 0))(
  ( (Rule!16039 (regex!8119 Regex!13194) (tag!8983 String!63589) (isSeparator!8119 Bool) (transformation!8119 TokenValueInjection!16166)) )
))
(declare-datatypes ((Token!14806 0))(
  ( (Token!14807 (value!260545 TokenValue!8429) (rule!11285 Rule!16038) (size!37045 Int) (originalCharacters!8434 List!56362)) )
))
(declare-datatypes ((tuple2!60184 0))(
  ( (tuple2!60185 (_1!33395 Token!14806) (_2!33395 List!56362)) )
))
(declare-datatypes ((Option!13921 0))(
  ( (None!13920) (Some!13920 (v!49870 tuple2!60184)) )
))
(declare-fun lt!2001485 () Option!13921)

(declare-fun isDefined!10944 (Option!13921) Bool)

(assert (=> b!4885021 (= res!2085744 (not (= lt!2001484 (isDefined!10944 lt!2001485))))))

(declare-datatypes ((tuple2!60186 0))(
  ( (tuple2!60187 (_1!33396 Token!14806) (_2!33396 BalanceConc!28804)) )
))
(declare-datatypes ((Option!13922 0))(
  ( (None!13921) (Some!13921 (v!49871 tuple2!60186)) )
))
(declare-fun lt!2001481 () Option!13922)

(declare-fun isDefined!10945 (Option!13922) Bool)

(assert (=> b!4885021 (= lt!2001484 (isDefined!10945 lt!2001481))))

(declare-datatypes ((LexerInterface!7711 0))(
  ( (LexerInterfaceExt!7708 (__x!34152 Int)) (Lexer!7709) )
))
(declare-fun thiss!14805 () LexerInterface!7711)

(declare-fun lt!2001479 () List!56362)

(declare-datatypes ((List!56364 0))(
  ( (Nil!56240) (Cons!56240 (h!62688 Rule!16038) (t!365010 List!56364)) )
))
(declare-fun rulesArg!165 () List!56364)

(declare-fun maxPrefixZipper!622 (LexerInterface!7711 List!56364 List!56362) Option!13921)

(assert (=> b!4885021 (= lt!2001485 (maxPrefixZipper!622 thiss!14805 rulesArg!165 lt!2001479))))

(declare-fun b!4885022 () Bool)

(declare-fun e!3053468 () Bool)

(declare-fun lt!2001482 () tuple2!60186)

(declare-fun lt!2001487 () tuple2!60184)

(declare-fun list!17648 (BalanceConc!28804) List!56362)

(assert (=> b!4885022 (= e!3053468 (not (= (list!17648 (_2!33396 lt!2001482)) (_2!33395 lt!2001487))))))

(declare-fun res!2085737 () Bool)

(declare-fun e!3053476 () Bool)

(assert (=> start!511198 (=> (not res!2085737) (not e!3053476))))

(assert (=> start!511198 (= res!2085737 (is-Lexer!7709 thiss!14805))))

(assert (=> start!511198 e!3053476))

(assert (=> start!511198 true))

(assert (=> start!511198 e!3053471))

(declare-fun input!1236 () BalanceConc!28804)

(declare-fun e!3053465 () Bool)

(declare-fun inv!72372 (BalanceConc!28804) Bool)

(assert (=> start!511198 (and (inv!72372 input!1236) e!3053465)))

(declare-fun b!4885023 () Bool)

(declare-fun e!3053475 () Bool)

(assert (=> b!4885023 (= e!3053475 e!3053468)))

(declare-fun res!2085736 () Bool)

(assert (=> b!4885023 (=> res!2085736 e!3053468)))

(assert (=> b!4885023 (= res!2085736 (not (= (_1!33396 lt!2001482) (_1!33395 lt!2001487))))))

(declare-fun get!19369 (Option!13921) tuple2!60184)

(assert (=> b!4885023 (= lt!2001487 (get!19369 lt!2001485))))

(declare-fun get!19370 (Option!13922) tuple2!60186)

(assert (=> b!4885023 (= lt!2001482 (get!19370 lt!2001481))))

(declare-fun b!4885024 () Bool)

(declare-fun e!3053474 () Bool)

(assert (=> b!4885024 (= e!3053474 e!3053469)))

(declare-fun res!2085742 () Bool)

(assert (=> b!4885024 (=> res!2085742 e!3053469)))

(declare-fun lt!2001486 () Option!13922)

(assert (=> b!4885024 (= res!2085742 (or (and (is-None!13921 lt!2001486) (is-None!13921 lt!2001481)) (is-None!13921 lt!2001481) (not (is-None!13921 lt!2001486))))))

(declare-fun maxPrefixZipperSequence!1280 (LexerInterface!7711 List!56364 BalanceConc!28804) Option!13922)

(assert (=> b!4885024 (= lt!2001481 (maxPrefixZipperSequence!1280 thiss!14805 (t!365010 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!645 (LexerInterface!7711 Rule!16038 BalanceConc!28804) Option!13922)

(assert (=> b!4885024 (= lt!2001486 (maxPrefixOneRuleZipperSequence!645 thiss!14805 (h!62688 rulesArg!165) input!1236))))

(declare-fun e!3053473 () Bool)

(assert (=> b!4885025 (= e!3053473 (and tp!1374719 tp!1374720))))

(declare-fun b!4885026 () Bool)

(declare-fun res!2085745 () Bool)

(assert (=> b!4885026 (=> (not res!2085745) (not e!3053476))))

(declare-fun isEmpty!30134 (List!56364) Bool)

(assert (=> b!4885026 (= res!2085745 (not (isEmpty!30134 rulesArg!165)))))

(declare-fun b!4885027 () Bool)

(declare-fun maxPrefix!4576 (LexerInterface!7711 List!56364 List!56362) Option!13921)

(assert (=> b!4885027 (= e!3053467 (isDefined!10944 (maxPrefix!4576 thiss!14805 rulesArg!165 lt!2001479)))))

(declare-fun b!4885028 () Bool)

(assert (=> b!4885028 (= e!3053470 e!3053467)))

(declare-fun res!2085740 () Bool)

(assert (=> b!4885028 (=> res!2085740 e!3053467)))

(assert (=> b!4885028 (= res!2085740 e!3053475)))

(declare-fun res!2085738 () Bool)

(assert (=> b!4885028 (=> (not res!2085738) (not e!3053475))))

(assert (=> b!4885028 (= res!2085738 (not lt!2001480))))

(assert (=> b!4885028 (= lt!2001480 (not lt!2001484))))

(declare-fun b!4885029 () Bool)

(assert (=> b!4885029 (= e!3053476 (not e!3053474))))

(declare-fun res!2085739 () Bool)

(assert (=> b!4885029 (=> res!2085739 e!3053474)))

(assert (=> b!4885029 (= res!2085739 (or (and (is-Cons!56240 rulesArg!165) (is-Nil!56240 (t!365010 rulesArg!165))) (not (is-Cons!56240 rulesArg!165))))))

(declare-fun isPrefix!4841 (List!56362 List!56362) Bool)

(assert (=> b!4885029 (isPrefix!4841 lt!2001479 lt!2001479)))

(declare-datatypes ((Unit!146229 0))(
  ( (Unit!146230) )
))
(declare-fun lt!2001483 () Unit!146229)

(declare-fun lemmaIsPrefixRefl!3238 (List!56362 List!56362) Unit!146229)

(assert (=> b!4885029 (= lt!2001483 (lemmaIsPrefixRefl!3238 lt!2001479 lt!2001479))))

(assert (=> b!4885029 (= lt!2001479 (list!17648 input!1236))))

(declare-fun b!4885030 () Bool)

(declare-fun res!2085743 () Bool)

(assert (=> b!4885030 (=> (not res!2085743) (not e!3053476))))

(declare-fun rulesValidInductive!3098 (LexerInterface!7711 List!56364) Bool)

(assert (=> b!4885030 (= res!2085743 (rulesValidInductive!3098 thiss!14805 rulesArg!165))))

(declare-fun b!4885031 () Bool)

(declare-fun tp!1374716 () Bool)

(declare-fun inv!72373 (Conc!14687) Bool)

(assert (=> b!4885031 (= e!3053465 (and (inv!72373 (c!830599 input!1236)) tp!1374716))))

(declare-fun tp!1374717 () Bool)

(declare-fun b!4885032 () Bool)

(declare-fun inv!72369 (String!63589) Bool)

(declare-fun inv!72374 (TokenValueInjection!16166) Bool)

(assert (=> b!4885032 (= e!3053472 (and tp!1374717 (inv!72369 (tag!8983 (h!62688 rulesArg!165))) (inv!72374 (transformation!8119 (h!62688 rulesArg!165))) e!3053473))))

(assert (= (and start!511198 res!2085737) b!4885030))

(assert (= (and b!4885030 res!2085743) b!4885026))

(assert (= (and b!4885026 res!2085745) b!4885029))

(assert (= (and b!4885029 (not res!2085739)) b!4885024))

(assert (= (and b!4885024 (not res!2085742)) b!4885021))

(assert (= (and b!4885021 (not res!2085744)) b!4885028))

(assert (= (and b!4885028 res!2085738) b!4885023))

(assert (= (and b!4885023 (not res!2085736)) b!4885022))

(assert (= (and b!4885028 (not res!2085740)) b!4885020))

(assert (= (and b!4885020 (not res!2085741)) b!4885027))

(assert (= b!4885032 b!4885025))

(assert (= b!4885019 b!4885032))

(assert (= (and start!511198 (is-Cons!56240 rulesArg!165)) b!4885019))

(assert (= start!511198 b!4885031))

(declare-fun m!5888896 () Bool)

(assert (=> b!4885029 m!5888896))

(declare-fun m!5888898 () Bool)

(assert (=> b!4885029 m!5888898))

(declare-fun m!5888900 () Bool)

(assert (=> b!4885029 m!5888900))

(declare-fun m!5888902 () Bool)

(assert (=> b!4885024 m!5888902))

(declare-fun m!5888904 () Bool)

(assert (=> b!4885024 m!5888904))

(declare-fun m!5888906 () Bool)

(assert (=> b!4885026 m!5888906))

(declare-fun m!5888908 () Bool)

(assert (=> b!4885021 m!5888908))

(declare-fun m!5888910 () Bool)

(assert (=> b!4885021 m!5888910))

(declare-fun m!5888912 () Bool)

(assert (=> b!4885021 m!5888912))

(declare-fun m!5888914 () Bool)

(assert (=> b!4885030 m!5888914))

(declare-fun m!5888916 () Bool)

(assert (=> b!4885032 m!5888916))

(declare-fun m!5888918 () Bool)

(assert (=> b!4885032 m!5888918))

(declare-fun m!5888920 () Bool)

(assert (=> b!4885027 m!5888920))

(assert (=> b!4885027 m!5888920))

(declare-fun m!5888922 () Bool)

(assert (=> b!4885027 m!5888922))

(declare-fun m!5888924 () Bool)

(assert (=> b!4885022 m!5888924))

(declare-fun m!5888926 () Bool)

(assert (=> b!4885023 m!5888926))

(declare-fun m!5888928 () Bool)

(assert (=> b!4885023 m!5888928))

(declare-fun m!5888930 () Bool)

(assert (=> start!511198 m!5888930))

(declare-fun m!5888932 () Bool)

(assert (=> b!4885031 m!5888932))

(push 1)

(assert (not b_next!131973))

(assert (not b!4885021))

(assert (not b!4885031))

(assert (not b!4885032))

(assert (not b!4885029))

(assert (not b!4885027))

(assert (not b!4885030))

(assert (not b!4885024))

(assert (not b!4885022))

(assert (not b!4885019))

(assert (not b!4885023))

(assert (not b!4885026))

(assert (not start!511198))

(assert b_and!344015)

(assert b_and!344017)

(assert (not b_next!131975))

(check-sat)

(pop 1)

(push 1)

(assert b_and!344017)

(assert b_and!344015)

(assert (not b_next!131973))

(assert (not b_next!131975))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4885085 () Bool)

(declare-fun e!3053520 () Bool)

(declare-fun tail!9581 (List!56362) List!56362)

(assert (=> b!4885085 (= e!3053520 (isPrefix!4841 (tail!9581 lt!2001479) (tail!9581 lt!2001479)))))

(declare-fun b!4885086 () Bool)

(declare-fun e!3053521 () Bool)

(declare-fun size!37047 (List!56362) Int)

(assert (=> b!4885086 (= e!3053521 (>= (size!37047 lt!2001479) (size!37047 lt!2001479)))))

(declare-fun b!4885083 () Bool)

(declare-fun e!3053519 () Bool)

(assert (=> b!4885083 (= e!3053519 e!3053520)))

(declare-fun res!2085799 () Bool)

(assert (=> b!4885083 (=> (not res!2085799) (not e!3053520))))

(assert (=> b!4885083 (= res!2085799 (not (is-Nil!56238 lt!2001479)))))

(declare-fun b!4885084 () Bool)

(declare-fun res!2085798 () Bool)

(assert (=> b!4885084 (=> (not res!2085798) (not e!3053520))))

(declare-fun head!10435 (List!56362) C!26586)

(assert (=> b!4885084 (= res!2085798 (= (head!10435 lt!2001479) (head!10435 lt!2001479)))))

(declare-fun d!1569375 () Bool)

(assert (=> d!1569375 e!3053521))

(declare-fun res!2085797 () Bool)

(assert (=> d!1569375 (=> res!2085797 e!3053521)))

(declare-fun lt!2001517 () Bool)

(assert (=> d!1569375 (= res!2085797 (not lt!2001517))))

(assert (=> d!1569375 (= lt!2001517 e!3053519)))

(declare-fun res!2085796 () Bool)

(assert (=> d!1569375 (=> res!2085796 e!3053519)))

(assert (=> d!1569375 (= res!2085796 (is-Nil!56238 lt!2001479))))

(assert (=> d!1569375 (= (isPrefix!4841 lt!2001479 lt!2001479) lt!2001517)))

(assert (= (and d!1569375 (not res!2085796)) b!4885083))

(assert (= (and b!4885083 res!2085799) b!4885084))

(assert (= (and b!4885084 res!2085798) b!4885085))

(assert (= (and d!1569375 (not res!2085797)) b!4885086))

(declare-fun m!5888972 () Bool)

(assert (=> b!4885085 m!5888972))

(assert (=> b!4885085 m!5888972))

(assert (=> b!4885085 m!5888972))

(assert (=> b!4885085 m!5888972))

(declare-fun m!5888974 () Bool)

(assert (=> b!4885085 m!5888974))

(declare-fun m!5888976 () Bool)

(assert (=> b!4885086 m!5888976))

(assert (=> b!4885086 m!5888976))

(declare-fun m!5888978 () Bool)

(assert (=> b!4885084 m!5888978))

(assert (=> b!4885084 m!5888978))

(assert (=> b!4885029 d!1569375))

(declare-fun d!1569377 () Bool)

(assert (=> d!1569377 (isPrefix!4841 lt!2001479 lt!2001479)))

(declare-fun lt!2001520 () Unit!146229)

(declare-fun choose!35673 (List!56362 List!56362) Unit!146229)

(assert (=> d!1569377 (= lt!2001520 (choose!35673 lt!2001479 lt!2001479))))

(assert (=> d!1569377 (= (lemmaIsPrefixRefl!3238 lt!2001479 lt!2001479) lt!2001520)))

(declare-fun bs!1175556 () Bool)

(assert (= bs!1175556 d!1569377))

(assert (=> bs!1175556 m!5888896))

(declare-fun m!5888980 () Bool)

(assert (=> bs!1175556 m!5888980))

(assert (=> b!4885029 d!1569377))

(declare-fun d!1569379 () Bool)

(declare-fun list!17650 (Conc!14687) List!56362)

(assert (=> d!1569379 (= (list!17648 input!1236) (list!17650 (c!830599 input!1236)))))

(declare-fun bs!1175557 () Bool)

(assert (= bs!1175557 d!1569379))

(declare-fun m!5888982 () Bool)

(assert (=> bs!1175557 m!5888982))

(assert (=> b!4885029 d!1569379))

(declare-fun d!1569381 () Bool)

(declare-fun isEmpty!30136 (Option!13921) Bool)

(assert (=> d!1569381 (= (isDefined!10944 (maxPrefix!4576 thiss!14805 rulesArg!165 lt!2001479)) (not (isEmpty!30136 (maxPrefix!4576 thiss!14805 rulesArg!165 lt!2001479))))))

(declare-fun bs!1175558 () Bool)

(assert (= bs!1175558 d!1569381))

(assert (=> bs!1175558 m!5888920))

(declare-fun m!5888984 () Bool)

(assert (=> bs!1175558 m!5888984))

(assert (=> b!4885027 d!1569381))

(declare-fun d!1569383 () Bool)

(declare-fun e!3053528 () Bool)

(assert (=> d!1569383 e!3053528))

(declare-fun res!2085815 () Bool)

(assert (=> d!1569383 (=> res!2085815 e!3053528)))

(declare-fun lt!2001531 () Option!13921)

(assert (=> d!1569383 (= res!2085815 (isEmpty!30136 lt!2001531))))

(declare-fun e!3053530 () Option!13921)

(assert (=> d!1569383 (= lt!2001531 e!3053530)))

(declare-fun c!830605 () Bool)

(assert (=> d!1569383 (= c!830605 (and (is-Cons!56240 rulesArg!165) (is-Nil!56240 (t!365010 rulesArg!165))))))

(declare-fun lt!2001535 () Unit!146229)

(declare-fun lt!2001533 () Unit!146229)

(assert (=> d!1569383 (= lt!2001535 lt!2001533)))

(assert (=> d!1569383 (isPrefix!4841 lt!2001479 lt!2001479)))

(assert (=> d!1569383 (= lt!2001533 (lemmaIsPrefixRefl!3238 lt!2001479 lt!2001479))))

(assert (=> d!1569383 (rulesValidInductive!3098 thiss!14805 rulesArg!165)))

(assert (=> d!1569383 (= (maxPrefix!4576 thiss!14805 rulesArg!165 lt!2001479) lt!2001531)))

(declare-fun b!4885105 () Bool)

(declare-fun res!2085814 () Bool)

(declare-fun e!3053529 () Bool)

(assert (=> b!4885105 (=> (not res!2085814) (not e!3053529))))

(declare-fun apply!13520 (TokenValueInjection!16166 BalanceConc!28804) TokenValue!8429)

(declare-fun seqFromList!5916 (List!56362) BalanceConc!28804)

(assert (=> b!4885105 (= res!2085814 (= (value!260545 (_1!33395 (get!19369 lt!2001531))) (apply!13520 (transformation!8119 (rule!11285 (_1!33395 (get!19369 lt!2001531)))) (seqFromList!5916 (originalCharacters!8434 (_1!33395 (get!19369 lt!2001531)))))))))

(declare-fun b!4885106 () Bool)

(declare-fun res!2085817 () Bool)

(assert (=> b!4885106 (=> (not res!2085817) (not e!3053529))))

(declare-fun ++!12225 (List!56362 List!56362) List!56362)

(declare-fun charsOf!5356 (Token!14806) BalanceConc!28804)

(assert (=> b!4885106 (= res!2085817 (= (++!12225 (list!17648 (charsOf!5356 (_1!33395 (get!19369 lt!2001531)))) (_2!33395 (get!19369 lt!2001531))) lt!2001479))))

(declare-fun b!4885107 () Bool)

(declare-fun res!2085816 () Bool)

(assert (=> b!4885107 (=> (not res!2085816) (not e!3053529))))

(declare-fun matchR!6510 (Regex!13194 List!56362) Bool)

(assert (=> b!4885107 (= res!2085816 (matchR!6510 (regex!8119 (rule!11285 (_1!33395 (get!19369 lt!2001531)))) (list!17648 (charsOf!5356 (_1!33395 (get!19369 lt!2001531))))))))

(declare-fun b!4885108 () Bool)

(declare-fun contains!19419 (List!56364 Rule!16038) Bool)

(assert (=> b!4885108 (= e!3053529 (contains!19419 rulesArg!165 (rule!11285 (_1!33395 (get!19369 lt!2001531)))))))

(declare-fun bm!338952 () Bool)

(declare-fun call!338957 () Option!13921)

(declare-fun maxPrefixOneRule!3509 (LexerInterface!7711 Rule!16038 List!56362) Option!13921)

(assert (=> bm!338952 (= call!338957 (maxPrefixOneRule!3509 thiss!14805 (h!62688 rulesArg!165) lt!2001479))))

(declare-fun b!4885109 () Bool)

(declare-fun res!2085820 () Bool)

(assert (=> b!4885109 (=> (not res!2085820) (not e!3053529))))

(assert (=> b!4885109 (= res!2085820 (< (size!37047 (_2!33395 (get!19369 lt!2001531))) (size!37047 lt!2001479)))))

(declare-fun b!4885110 () Bool)

(declare-fun lt!2001534 () Option!13921)

(declare-fun lt!2001532 () Option!13921)

(assert (=> b!4885110 (= e!3053530 (ite (and (is-None!13920 lt!2001534) (is-None!13920 lt!2001532)) None!13920 (ite (is-None!13920 lt!2001532) lt!2001534 (ite (is-None!13920 lt!2001534) lt!2001532 (ite (>= (size!37045 (_1!33395 (v!49870 lt!2001534))) (size!37045 (_1!33395 (v!49870 lt!2001532)))) lt!2001534 lt!2001532)))))))

(assert (=> b!4885110 (= lt!2001534 call!338957)))

(assert (=> b!4885110 (= lt!2001532 (maxPrefix!4576 thiss!14805 (t!365010 rulesArg!165) lt!2001479))))

(declare-fun b!4885111 () Bool)

(assert (=> b!4885111 (= e!3053530 call!338957)))

(declare-fun b!4885112 () Bool)

(assert (=> b!4885112 (= e!3053528 e!3053529)))

(declare-fun res!2085819 () Bool)

(assert (=> b!4885112 (=> (not res!2085819) (not e!3053529))))

(assert (=> b!4885112 (= res!2085819 (isDefined!10944 lt!2001531))))

(declare-fun b!4885113 () Bool)

(declare-fun res!2085818 () Bool)

(assert (=> b!4885113 (=> (not res!2085818) (not e!3053529))))

(assert (=> b!4885113 (= res!2085818 (= (list!17648 (charsOf!5356 (_1!33395 (get!19369 lt!2001531)))) (originalCharacters!8434 (_1!33395 (get!19369 lt!2001531)))))))

(assert (= (and d!1569383 c!830605) b!4885111))

(assert (= (and d!1569383 (not c!830605)) b!4885110))

(assert (= (or b!4885111 b!4885110) bm!338952))

(assert (= (and d!1569383 (not res!2085815)) b!4885112))

(assert (= (and b!4885112 res!2085819) b!4885113))

(assert (= (and b!4885113 res!2085818) b!4885109))

(assert (= (and b!4885109 res!2085820) b!4885106))

(assert (= (and b!4885106 res!2085817) b!4885105))

(assert (= (and b!4885105 res!2085814) b!4885107))

(assert (= (and b!4885107 res!2085816) b!4885108))

(declare-fun m!5888990 () Bool)

(assert (=> b!4885109 m!5888990))

(declare-fun m!5888992 () Bool)

(assert (=> b!4885109 m!5888992))

(assert (=> b!4885109 m!5888976))

(declare-fun m!5888994 () Bool)

(assert (=> b!4885110 m!5888994))

(declare-fun m!5888996 () Bool)

(assert (=> bm!338952 m!5888996))

(assert (=> b!4885105 m!5888990))

(declare-fun m!5888998 () Bool)

(assert (=> b!4885105 m!5888998))

(assert (=> b!4885105 m!5888998))

(declare-fun m!5889000 () Bool)

(assert (=> b!4885105 m!5889000))

(assert (=> b!4885106 m!5888990))

(declare-fun m!5889002 () Bool)

(assert (=> b!4885106 m!5889002))

(assert (=> b!4885106 m!5889002))

(declare-fun m!5889004 () Bool)

(assert (=> b!4885106 m!5889004))

(assert (=> b!4885106 m!5889004))

(declare-fun m!5889006 () Bool)

(assert (=> b!4885106 m!5889006))

(declare-fun m!5889008 () Bool)

(assert (=> d!1569383 m!5889008))

(assert (=> d!1569383 m!5888896))

(assert (=> d!1569383 m!5888898))

(assert (=> d!1569383 m!5888914))

(declare-fun m!5889010 () Bool)

(assert (=> b!4885112 m!5889010))

(assert (=> b!4885113 m!5888990))

(assert (=> b!4885113 m!5889002))

(assert (=> b!4885113 m!5889002))

(assert (=> b!4885113 m!5889004))

(assert (=> b!4885108 m!5888990))

(declare-fun m!5889012 () Bool)

(assert (=> b!4885108 m!5889012))

(assert (=> b!4885107 m!5888990))

(assert (=> b!4885107 m!5889002))

(assert (=> b!4885107 m!5889002))

(assert (=> b!4885107 m!5889004))

(assert (=> b!4885107 m!5889004))

(declare-fun m!5889014 () Bool)

(assert (=> b!4885107 m!5889014))

(assert (=> b!4885027 d!1569383))

(declare-fun d!1569397 () Bool)

(assert (=> d!1569397 (= (isEmpty!30134 rulesArg!165) (is-Nil!56240 rulesArg!165))))

(assert (=> b!4885026 d!1569397))

(declare-fun b!4885130 () Bool)

(declare-fun e!3053546 () Option!13922)

(declare-fun call!338960 () Option!13922)

(assert (=> b!4885130 (= e!3053546 call!338960)))

(declare-fun b!4885131 () Bool)

(declare-fun lt!2001551 () Option!13922)

(declare-fun lt!2001553 () Option!13922)

(assert (=> b!4885131 (= e!3053546 (ite (and (is-None!13921 lt!2001551) (is-None!13921 lt!2001553)) None!13921 (ite (is-None!13921 lt!2001553) lt!2001551 (ite (is-None!13921 lt!2001551) lt!2001553 (ite (>= (size!37045 (_1!33396 (v!49871 lt!2001551))) (size!37045 (_1!33396 (v!49871 lt!2001553)))) lt!2001551 lt!2001553)))))))

(assert (=> b!4885131 (= lt!2001551 call!338960)))

(assert (=> b!4885131 (= lt!2001553 (maxPrefixZipperSequence!1280 thiss!14805 (t!365010 (t!365010 rulesArg!165)) input!1236))))

(declare-fun d!1569399 () Bool)

(declare-fun e!3053547 () Bool)

(assert (=> d!1569399 e!3053547))

(declare-fun res!2085836 () Bool)

(assert (=> d!1569399 (=> (not res!2085836) (not e!3053547))))

(declare-fun lt!2001550 () Option!13922)

(assert (=> d!1569399 (= res!2085836 (= (isDefined!10945 lt!2001550) (isDefined!10944 (maxPrefixZipper!622 thiss!14805 (t!365010 rulesArg!165) (list!17648 input!1236)))))))

(assert (=> d!1569399 (= lt!2001550 e!3053546)))

(declare-fun c!830608 () Bool)

(assert (=> d!1569399 (= c!830608 (and (is-Cons!56240 (t!365010 rulesArg!165)) (is-Nil!56240 (t!365010 (t!365010 rulesArg!165)))))))

(declare-fun lt!2001555 () Unit!146229)

(declare-fun lt!2001556 () Unit!146229)

(assert (=> d!1569399 (= lt!2001555 lt!2001556)))

(declare-fun lt!2001552 () List!56362)

(declare-fun lt!2001554 () List!56362)

(assert (=> d!1569399 (isPrefix!4841 lt!2001552 lt!2001554)))

(assert (=> d!1569399 (= lt!2001556 (lemmaIsPrefixRefl!3238 lt!2001552 lt!2001554))))

(assert (=> d!1569399 (= lt!2001554 (list!17648 input!1236))))

(assert (=> d!1569399 (= lt!2001552 (list!17648 input!1236))))

(assert (=> d!1569399 (rulesValidInductive!3098 thiss!14805 (t!365010 rulesArg!165))))

(assert (=> d!1569399 (= (maxPrefixZipperSequence!1280 thiss!14805 (t!365010 rulesArg!165) input!1236) lt!2001550)))

(declare-fun bm!338955 () Bool)

(assert (=> bm!338955 (= call!338960 (maxPrefixOneRuleZipperSequence!645 thiss!14805 (h!62688 (t!365010 rulesArg!165)) input!1236))))

(declare-fun b!4885132 () Bool)

(declare-fun e!3053548 () Bool)

(declare-fun e!3053545 () Bool)

(assert (=> b!4885132 (= e!3053548 e!3053545)))

(declare-fun res!2085834 () Bool)

(assert (=> b!4885132 (=> (not res!2085834) (not e!3053545))))

(assert (=> b!4885132 (= res!2085834 (= (_1!33396 (get!19370 lt!2001550)) (_1!33395 (get!19369 (maxPrefix!4576 thiss!14805 (t!365010 rulesArg!165) (list!17648 input!1236))))))))

(declare-fun b!4885133 () Bool)

(declare-fun res!2085833 () Bool)

(assert (=> b!4885133 (=> (not res!2085833) (not e!3053547))))

(declare-fun e!3053544 () Bool)

(assert (=> b!4885133 (= res!2085833 e!3053544)))

(declare-fun res!2085837 () Bool)

(assert (=> b!4885133 (=> res!2085837 e!3053544)))

(assert (=> b!4885133 (= res!2085837 (not (isDefined!10945 lt!2001550)))))

(declare-fun b!4885134 () Bool)

(declare-fun e!3053543 () Bool)

(assert (=> b!4885134 (= e!3053544 e!3053543)))

(declare-fun res!2085838 () Bool)

(assert (=> b!4885134 (=> (not res!2085838) (not e!3053543))))

(assert (=> b!4885134 (= res!2085838 (= (_1!33396 (get!19370 lt!2001550)) (_1!33395 (get!19369 (maxPrefixZipper!622 thiss!14805 (t!365010 rulesArg!165) (list!17648 input!1236))))))))

(declare-fun b!4885135 () Bool)

(assert (=> b!4885135 (= e!3053547 e!3053548)))

(declare-fun res!2085835 () Bool)

(assert (=> b!4885135 (=> res!2085835 e!3053548)))

(assert (=> b!4885135 (= res!2085835 (not (isDefined!10945 lt!2001550)))))

(declare-fun b!4885136 () Bool)

(assert (=> b!4885136 (= e!3053545 (= (list!17648 (_2!33396 (get!19370 lt!2001550))) (_2!33395 (get!19369 (maxPrefix!4576 thiss!14805 (t!365010 rulesArg!165) (list!17648 input!1236))))))))

(declare-fun b!4885137 () Bool)

(assert (=> b!4885137 (= e!3053543 (= (list!17648 (_2!33396 (get!19370 lt!2001550))) (_2!33395 (get!19369 (maxPrefixZipper!622 thiss!14805 (t!365010 rulesArg!165) (list!17648 input!1236))))))))

(assert (= (and d!1569399 c!830608) b!4885130))

(assert (= (and d!1569399 (not c!830608)) b!4885131))

(assert (= (or b!4885130 b!4885131) bm!338955))

(assert (= (and d!1569399 res!2085836) b!4885133))

(assert (= (and b!4885133 (not res!2085837)) b!4885134))

(assert (= (and b!4885134 res!2085838) b!4885137))

(assert (= (and b!4885133 res!2085833) b!4885135))

(assert (= (and b!4885135 (not res!2085835)) b!4885132))

(assert (= (and b!4885132 res!2085834) b!4885136))

(declare-fun m!5889016 () Bool)

(assert (=> b!4885133 m!5889016))

(assert (=> b!4885136 m!5888900))

(declare-fun m!5889018 () Bool)

(assert (=> b!4885136 m!5889018))

(declare-fun m!5889020 () Bool)

(assert (=> b!4885136 m!5889020))

(assert (=> b!4885136 m!5888900))

(assert (=> b!4885136 m!5889018))

(declare-fun m!5889022 () Bool)

(assert (=> b!4885136 m!5889022))

(declare-fun m!5889024 () Bool)

(assert (=> b!4885136 m!5889024))

(declare-fun m!5889026 () Bool)

(assert (=> b!4885131 m!5889026))

(declare-fun m!5889028 () Bool)

(assert (=> d!1569399 m!5889028))

(declare-fun m!5889030 () Bool)

(assert (=> d!1569399 m!5889030))

(declare-fun m!5889032 () Bool)

(assert (=> d!1569399 m!5889032))

(declare-fun m!5889034 () Bool)

(assert (=> d!1569399 m!5889034))

(declare-fun m!5889036 () Bool)

(assert (=> d!1569399 m!5889036))

(assert (=> d!1569399 m!5888900))

(assert (=> d!1569399 m!5889016))

(assert (=> d!1569399 m!5888900))

(assert (=> d!1569399 m!5889028))

(declare-fun m!5889038 () Bool)

(assert (=> bm!338955 m!5889038))

(assert (=> b!4885132 m!5889024))

(assert (=> b!4885132 m!5888900))

(assert (=> b!4885132 m!5888900))

(assert (=> b!4885132 m!5889018))

(assert (=> b!4885132 m!5889018))

(assert (=> b!4885132 m!5889022))

(assert (=> b!4885134 m!5889024))

(assert (=> b!4885134 m!5888900))

(assert (=> b!4885134 m!5888900))

(assert (=> b!4885134 m!5889028))

(assert (=> b!4885134 m!5889028))

(declare-fun m!5889040 () Bool)

(assert (=> b!4885134 m!5889040))

(assert (=> b!4885135 m!5889016))

(assert (=> b!4885137 m!5889020))

(assert (=> b!4885137 m!5889024))

(assert (=> b!4885137 m!5889028))

(assert (=> b!4885137 m!5889040))

(assert (=> b!4885137 m!5888900))

(assert (=> b!4885137 m!5888900))

(assert (=> b!4885137 m!5889028))

(assert (=> b!4885024 d!1569399))

(declare-fun b!4885250 () Bool)

(declare-fun e!3053621 () Bool)

(assert (=> b!4885250 (= e!3053621 true)))

(declare-fun b!4885249 () Bool)

(declare-fun e!3053620 () Bool)

(assert (=> b!4885249 (= e!3053620 e!3053621)))

(declare-fun b!4885242 () Bool)

(assert (=> b!4885242 e!3053620))

(assert (= b!4885249 b!4885250))

(assert (= b!4885242 b!4885249))

(declare-fun order!25363 () Int)

(declare-fun lambda!243804 () Int)

(declare-fun order!25365 () Int)

(declare-fun dynLambda!22564 (Int Int) Int)

(declare-fun dynLambda!22565 (Int Int) Int)

(assert (=> b!4885250 (< (dynLambda!22564 order!25363 (toValue!11006 (transformation!8119 (h!62688 rulesArg!165)))) (dynLambda!22565 order!25365 lambda!243804))))

(declare-fun order!25367 () Int)

(declare-fun dynLambda!22566 (Int Int) Int)

(assert (=> b!4885250 (< (dynLambda!22566 order!25367 (toChars!10865 (transformation!8119 (h!62688 rulesArg!165)))) (dynLambda!22565 order!25365 lambda!243804))))

(declare-fun b!4885237 () Bool)

(declare-fun e!3053615 () Bool)

(declare-fun e!3053613 () Bool)

(assert (=> b!4885237 (= e!3053615 e!3053613)))

(declare-fun res!2085909 () Bool)

(assert (=> b!4885237 (=> res!2085909 e!3053613)))

(declare-fun lt!2001651 () Option!13922)

(assert (=> b!4885237 (= res!2085909 (not (isDefined!10945 lt!2001651)))))

(declare-fun e!3053614 () Bool)

(declare-fun b!4885238 () Bool)

(assert (=> b!4885238 (= e!3053614 (= (list!17648 (_2!33396 (get!19370 lt!2001651))) (_2!33395 (get!19369 (maxPrefixOneRule!3509 thiss!14805 (h!62688 rulesArg!165) (list!17648 input!1236))))))))

(declare-fun d!1569401 () Bool)

(assert (=> d!1569401 e!3053615))

(declare-fun res!2085908 () Bool)

(assert (=> d!1569401 (=> (not res!2085908) (not e!3053615))))

(assert (=> d!1569401 (= res!2085908 (= (isDefined!10945 lt!2001651) (isDefined!10944 (maxPrefixOneRule!3509 thiss!14805 (h!62688 rulesArg!165) (list!17648 input!1236)))))))

(declare-fun e!3053612 () Option!13922)

(assert (=> d!1569401 (= lt!2001651 e!3053612)))

(declare-fun c!830625 () Bool)

(declare-datatypes ((tuple2!60192 0))(
  ( (tuple2!60193 (_1!33399 BalanceConc!28804) (_2!33399 BalanceConc!28804)) )
))
(declare-fun lt!2001653 () tuple2!60192)

(declare-fun isEmpty!30137 (BalanceConc!28804) Bool)

(assert (=> d!1569401 (= c!830625 (isEmpty!30137 (_1!33399 lt!2001653)))))

(declare-fun findLongestMatchWithZipperSequence!254 (Regex!13194 BalanceConc!28804) tuple2!60192)

(assert (=> d!1569401 (= lt!2001653 (findLongestMatchWithZipperSequence!254 (regex!8119 (h!62688 rulesArg!165)) input!1236))))

(declare-fun ruleValid!3653 (LexerInterface!7711 Rule!16038) Bool)

(assert (=> d!1569401 (ruleValid!3653 thiss!14805 (h!62688 rulesArg!165))))

(assert (=> d!1569401 (= (maxPrefixOneRuleZipperSequence!645 thiss!14805 (h!62688 rulesArg!165) input!1236) lt!2001651)))

(declare-fun b!4885239 () Bool)

(declare-fun e!3053611 () Bool)

(declare-fun lt!2001649 () List!56362)

(declare-datatypes ((tuple2!60194 0))(
  ( (tuple2!60195 (_1!33400 List!56362) (_2!33400 List!56362)) )
))
(declare-fun findLongestMatchInner!1739 (Regex!13194 List!56362 Int List!56362 List!56362 Int) tuple2!60194)

(assert (=> b!4885239 (= e!3053611 (matchR!6510 (regex!8119 (h!62688 rulesArg!165)) (_1!33400 (findLongestMatchInner!1739 (regex!8119 (h!62688 rulesArg!165)) Nil!56238 (size!37047 Nil!56238) lt!2001649 lt!2001649 (size!37047 lt!2001649)))))))

(declare-fun b!4885240 () Bool)

(assert (=> b!4885240 (= e!3053613 e!3053614)))

(declare-fun res!2085907 () Bool)

(assert (=> b!4885240 (=> (not res!2085907) (not e!3053614))))

(assert (=> b!4885240 (= res!2085907 (= (_1!33396 (get!19370 lt!2001651)) (_1!33395 (get!19369 (maxPrefixOneRule!3509 thiss!14805 (h!62688 rulesArg!165) (list!17648 input!1236))))))))

(declare-fun b!4885241 () Bool)

(assert (=> b!4885241 (= e!3053612 None!13921)))

(declare-fun size!37048 (BalanceConc!28804) Int)

(assert (=> b!4885242 (= e!3053612 (Some!13921 (tuple2!60187 (Token!14807 (apply!13520 (transformation!8119 (h!62688 rulesArg!165)) (_1!33399 lt!2001653)) (h!62688 rulesArg!165) (size!37048 (_1!33399 lt!2001653)) (list!17648 (_1!33399 lt!2001653))) (_2!33399 lt!2001653))))))

(assert (=> b!4885242 (= lt!2001649 (list!17648 input!1236))))

(declare-fun lt!2001656 () Unit!146229)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1702 (Regex!13194 List!56362) Unit!146229)

(assert (=> b!4885242 (= lt!2001656 (longestMatchIsAcceptedByMatchOrIsEmpty!1702 (regex!8119 (h!62688 rulesArg!165)) lt!2001649))))

(declare-fun res!2085906 () Bool)

(declare-fun isEmpty!30138 (List!56362) Bool)

(assert (=> b!4885242 (= res!2085906 (isEmpty!30138 (_1!33400 (findLongestMatchInner!1739 (regex!8119 (h!62688 rulesArg!165)) Nil!56238 (size!37047 Nil!56238) lt!2001649 lt!2001649 (size!37047 lt!2001649)))))))

(assert (=> b!4885242 (=> res!2085906 e!3053611)))

(assert (=> b!4885242 e!3053611))

(declare-fun lt!2001650 () Unit!146229)

(assert (=> b!4885242 (= lt!2001650 lt!2001656)))

(declare-fun lt!2001654 () Unit!146229)

(declare-fun lemmaInv!1222 (TokenValueInjection!16166) Unit!146229)

(assert (=> b!4885242 (= lt!2001654 (lemmaInv!1222 (transformation!8119 (h!62688 rulesArg!165))))))

(declare-fun lt!2001655 () Unit!146229)

(declare-fun ForallOf!1119 (Int BalanceConc!28804) Unit!146229)

(assert (=> b!4885242 (= lt!2001655 (ForallOf!1119 lambda!243804 (_1!33399 lt!2001653)))))

(declare-fun lt!2001648 () Unit!146229)

(assert (=> b!4885242 (= lt!2001648 (ForallOf!1119 lambda!243804 (seqFromList!5916 (list!17648 (_1!33399 lt!2001653)))))))

(declare-fun lt!2001652 () Option!13922)

(assert (=> b!4885242 (= lt!2001652 (Some!13921 (tuple2!60187 (Token!14807 (apply!13520 (transformation!8119 (h!62688 rulesArg!165)) (_1!33399 lt!2001653)) (h!62688 rulesArg!165) (size!37048 (_1!33399 lt!2001653)) (list!17648 (_1!33399 lt!2001653))) (_2!33399 lt!2001653))))))

(declare-fun lt!2001657 () Unit!146229)

(declare-fun lemmaEqSameImage!1076 (TokenValueInjection!16166 BalanceConc!28804 BalanceConc!28804) Unit!146229)

(assert (=> b!4885242 (= lt!2001657 (lemmaEqSameImage!1076 (transformation!8119 (h!62688 rulesArg!165)) (_1!33399 lt!2001653) (seqFromList!5916 (list!17648 (_1!33399 lt!2001653)))))))

(assert (= (and d!1569401 c!830625) b!4885241))

(assert (= (and d!1569401 (not c!830625)) b!4885242))

(assert (= (and b!4885242 (not res!2085906)) b!4885239))

(assert (= (and d!1569401 res!2085908) b!4885237))

(assert (= (and b!4885237 (not res!2085909)) b!4885240))

(assert (= (and b!4885240 res!2085907) b!4885238))

(declare-fun m!5889122 () Bool)

(assert (=> b!4885238 m!5889122))

(declare-fun m!5889124 () Bool)

(assert (=> b!4885238 m!5889124))

(declare-fun m!5889126 () Bool)

(assert (=> b!4885238 m!5889126))

(declare-fun m!5889128 () Bool)

(assert (=> b!4885238 m!5889128))

(assert (=> b!4885238 m!5888900))

(assert (=> b!4885238 m!5888900))

(assert (=> b!4885238 m!5889126))

(declare-fun m!5889130 () Bool)

(assert (=> b!4885239 m!5889130))

(declare-fun m!5889132 () Bool)

(assert (=> b!4885239 m!5889132))

(assert (=> b!4885239 m!5889130))

(assert (=> b!4885239 m!5889132))

(declare-fun m!5889134 () Bool)

(assert (=> b!4885239 m!5889134))

(declare-fun m!5889136 () Bool)

(assert (=> b!4885239 m!5889136))

(declare-fun m!5889138 () Bool)

(assert (=> d!1569401 m!5889138))

(assert (=> d!1569401 m!5889126))

(declare-fun m!5889140 () Bool)

(assert (=> d!1569401 m!5889140))

(declare-fun m!5889142 () Bool)

(assert (=> d!1569401 m!5889142))

(declare-fun m!5889144 () Bool)

(assert (=> d!1569401 m!5889144))

(declare-fun m!5889146 () Bool)

(assert (=> d!1569401 m!5889146))

(assert (=> d!1569401 m!5888900))

(assert (=> d!1569401 m!5888900))

(assert (=> d!1569401 m!5889126))

(assert (=> b!4885242 m!5889130))

(declare-fun m!5889148 () Bool)

(assert (=> b!4885242 m!5889148))

(declare-fun m!5889150 () Bool)

(assert (=> b!4885242 m!5889150))

(declare-fun m!5889152 () Bool)

(assert (=> b!4885242 m!5889152))

(declare-fun m!5889154 () Bool)

(assert (=> b!4885242 m!5889154))

(assert (=> b!4885242 m!5889148))

(declare-fun m!5889156 () Bool)

(assert (=> b!4885242 m!5889156))

(declare-fun m!5889158 () Bool)

(assert (=> b!4885242 m!5889158))

(declare-fun m!5889160 () Bool)

(assert (=> b!4885242 m!5889160))

(assert (=> b!4885242 m!5889132))

(assert (=> b!4885242 m!5889130))

(assert (=> b!4885242 m!5889132))

(assert (=> b!4885242 m!5889134))

(declare-fun m!5889162 () Bool)

(assert (=> b!4885242 m!5889162))

(assert (=> b!4885242 m!5888900))

(assert (=> b!4885242 m!5889148))

(declare-fun m!5889164 () Bool)

(assert (=> b!4885242 m!5889164))

(assert (=> b!4885242 m!5889154))

(declare-fun m!5889166 () Bool)

(assert (=> b!4885242 m!5889166))

(assert (=> b!4885237 m!5889144))

(assert (=> b!4885240 m!5889124))

(assert (=> b!4885240 m!5888900))

(assert (=> b!4885240 m!5888900))

(assert (=> b!4885240 m!5889126))

(assert (=> b!4885240 m!5889126))

(assert (=> b!4885240 m!5889128))

(assert (=> b!4885024 d!1569401))

(declare-fun d!1569425 () Bool)

(assert (=> d!1569425 (= (get!19369 lt!2001485) (v!49870 lt!2001485))))

(assert (=> b!4885023 d!1569425))

(declare-fun d!1569427 () Bool)

(assert (=> d!1569427 (= (get!19370 lt!2001481) (v!49871 lt!2001481))))

(assert (=> b!4885023 d!1569427))

(declare-fun d!1569429 () Bool)

(assert (=> d!1569429 (= (inv!72369 (tag!8983 (h!62688 rulesArg!165))) (= (mod (str.len (value!260544 (tag!8983 (h!62688 rulesArg!165)))) 2) 0))))

(assert (=> b!4885032 d!1569429))

(declare-fun d!1569431 () Bool)

(declare-fun res!2085912 () Bool)

(declare-fun e!3053624 () Bool)

(assert (=> d!1569431 (=> (not res!2085912) (not e!3053624))))

(declare-fun semiInverseModEq!3567 (Int Int) Bool)

(assert (=> d!1569431 (= res!2085912 (semiInverseModEq!3567 (toChars!10865 (transformation!8119 (h!62688 rulesArg!165))) (toValue!11006 (transformation!8119 (h!62688 rulesArg!165)))))))

(assert (=> d!1569431 (= (inv!72374 (transformation!8119 (h!62688 rulesArg!165))) e!3053624)))

(declare-fun b!4885253 () Bool)

(declare-fun equivClasses!3446 (Int Int) Bool)

(assert (=> b!4885253 (= e!3053624 (equivClasses!3446 (toChars!10865 (transformation!8119 (h!62688 rulesArg!165))) (toValue!11006 (transformation!8119 (h!62688 rulesArg!165)))))))

(assert (= (and d!1569431 res!2085912) b!4885253))

(declare-fun m!5889168 () Bool)

(assert (=> d!1569431 m!5889168))

(declare-fun m!5889170 () Bool)

(assert (=> b!4885253 m!5889170))

(assert (=> b!4885032 d!1569431))

(declare-fun d!1569433 () Bool)

(assert (=> d!1569433 (= (list!17648 (_2!33396 lt!2001482)) (list!17650 (c!830599 (_2!33396 lt!2001482))))))

(declare-fun bs!1175565 () Bool)

(assert (= bs!1175565 d!1569433))

(declare-fun m!5889172 () Bool)

(assert (=> bs!1175565 m!5889172))

(assert (=> b!4885022 d!1569433))

(declare-fun d!1569435 () Bool)

(declare-fun c!830628 () Bool)

(assert (=> d!1569435 (= c!830628 (is-Node!14687 (c!830599 input!1236)))))

(declare-fun e!3053629 () Bool)

(assert (=> d!1569435 (= (inv!72373 (c!830599 input!1236)) e!3053629)))

(declare-fun b!4885260 () Bool)

(declare-fun inv!72378 (Conc!14687) Bool)

(assert (=> b!4885260 (= e!3053629 (inv!72378 (c!830599 input!1236)))))

(declare-fun b!4885261 () Bool)

(declare-fun e!3053630 () Bool)

(assert (=> b!4885261 (= e!3053629 e!3053630)))

(declare-fun res!2085915 () Bool)

(assert (=> b!4885261 (= res!2085915 (not (is-Leaf!24464 (c!830599 input!1236))))))

(assert (=> b!4885261 (=> res!2085915 e!3053630)))

(declare-fun b!4885262 () Bool)

(declare-fun inv!72379 (Conc!14687) Bool)

(assert (=> b!4885262 (= e!3053630 (inv!72379 (c!830599 input!1236)))))

(assert (= (and d!1569435 c!830628) b!4885260))

(assert (= (and d!1569435 (not c!830628)) b!4885261))

(assert (= (and b!4885261 (not res!2085915)) b!4885262))

(declare-fun m!5889174 () Bool)

(assert (=> b!4885260 m!5889174))

(declare-fun m!5889176 () Bool)

(assert (=> b!4885262 m!5889176))

(assert (=> b!4885031 d!1569435))

(declare-fun d!1569437 () Bool)

(assert (=> d!1569437 (= (isDefined!10944 lt!2001485) (not (isEmpty!30136 lt!2001485)))))

(declare-fun bs!1175566 () Bool)

(assert (= bs!1175566 d!1569437))

(declare-fun m!5889178 () Bool)

(assert (=> bs!1175566 m!5889178))

(assert (=> b!4885021 d!1569437))

(declare-fun d!1569439 () Bool)

(declare-fun isEmpty!30139 (Option!13922) Bool)

(assert (=> d!1569439 (= (isDefined!10945 lt!2001481) (not (isEmpty!30139 lt!2001481)))))

(declare-fun bs!1175567 () Bool)

(assert (= bs!1175567 d!1569439))

(declare-fun m!5889180 () Bool)

(assert (=> bs!1175567 m!5889180))

(assert (=> b!4885021 d!1569439))

(declare-fun d!1569441 () Bool)

(declare-fun lt!2001672 () Option!13921)

(assert (=> d!1569441 (= lt!2001672 (maxPrefix!4576 thiss!14805 rulesArg!165 lt!2001479))))

(declare-fun e!3053633 () Option!13921)

(assert (=> d!1569441 (= lt!2001672 e!3053633)))

(declare-fun c!830631 () Bool)

(assert (=> d!1569441 (= c!830631 (and (is-Cons!56240 rulesArg!165) (is-Nil!56240 (t!365010 rulesArg!165))))))

(declare-fun lt!2001668 () Unit!146229)

(declare-fun lt!2001669 () Unit!146229)

(assert (=> d!1569441 (= lt!2001668 lt!2001669)))

(assert (=> d!1569441 (isPrefix!4841 lt!2001479 lt!2001479)))

(assert (=> d!1569441 (= lt!2001669 (lemmaIsPrefixRefl!3238 lt!2001479 lt!2001479))))

(assert (=> d!1569441 (rulesValidInductive!3098 thiss!14805 rulesArg!165)))

(assert (=> d!1569441 (= (maxPrefixZipper!622 thiss!14805 rulesArg!165 lt!2001479) lt!2001672)))

(declare-fun call!338972 () Option!13921)

(declare-fun bm!338967 () Bool)

(declare-fun maxPrefixOneRuleZipper!241 (LexerInterface!7711 Rule!16038 List!56362) Option!13921)

(assert (=> bm!338967 (= call!338972 (maxPrefixOneRuleZipper!241 thiss!14805 (h!62688 rulesArg!165) lt!2001479))))

(declare-fun b!4885267 () Bool)

(assert (=> b!4885267 (= e!3053633 call!338972)))

(declare-fun b!4885268 () Bool)

(declare-fun lt!2001670 () Option!13921)

(declare-fun lt!2001671 () Option!13921)

(assert (=> b!4885268 (= e!3053633 (ite (and (is-None!13920 lt!2001670) (is-None!13920 lt!2001671)) None!13920 (ite (is-None!13920 lt!2001671) lt!2001670 (ite (is-None!13920 lt!2001670) lt!2001671 (ite (>= (size!37045 (_1!33395 (v!49870 lt!2001670))) (size!37045 (_1!33395 (v!49870 lt!2001671)))) lt!2001670 lt!2001671)))))))

(assert (=> b!4885268 (= lt!2001670 call!338972)))

(assert (=> b!4885268 (= lt!2001671 (maxPrefixZipper!622 thiss!14805 (t!365010 rulesArg!165) lt!2001479))))

(assert (= (and d!1569441 c!830631) b!4885267))

(assert (= (and d!1569441 (not c!830631)) b!4885268))

(assert (= (or b!4885267 b!4885268) bm!338967))

(assert (=> d!1569441 m!5888920))

(assert (=> d!1569441 m!5888896))

(assert (=> d!1569441 m!5888898))

(assert (=> d!1569441 m!5888914))

(declare-fun m!5889182 () Bool)

(assert (=> bm!338967 m!5889182))

(declare-fun m!5889184 () Bool)

(assert (=> b!4885268 m!5889184))

(assert (=> b!4885021 d!1569441))

(declare-fun d!1569443 () Bool)

(declare-fun isBalanced!3993 (Conc!14687) Bool)

(assert (=> d!1569443 (= (inv!72372 input!1236) (isBalanced!3993 (c!830599 input!1236)))))

(declare-fun bs!1175568 () Bool)

(assert (= bs!1175568 d!1569443))

(declare-fun m!5889186 () Bool)

(assert (=> bs!1175568 m!5889186))

(assert (=> start!511198 d!1569443))

(declare-fun d!1569445 () Bool)

(assert (=> d!1569445 true))

(declare-fun lt!2001675 () Bool)

(declare-fun lambda!243807 () Int)

(declare-fun forall!13071 (List!56364 Int) Bool)

(assert (=> d!1569445 (= lt!2001675 (forall!13071 rulesArg!165 lambda!243807))))

(declare-fun e!3053638 () Bool)

(assert (=> d!1569445 (= lt!2001675 e!3053638)))

(declare-fun res!2085921 () Bool)

(assert (=> d!1569445 (=> res!2085921 e!3053638)))

(assert (=> d!1569445 (= res!2085921 (not (is-Cons!56240 rulesArg!165)))))

(assert (=> d!1569445 (= (rulesValidInductive!3098 thiss!14805 rulesArg!165) lt!2001675)))

(declare-fun b!4885273 () Bool)

(declare-fun e!3053639 () Bool)

(assert (=> b!4885273 (= e!3053638 e!3053639)))

(declare-fun res!2085920 () Bool)

(assert (=> b!4885273 (=> (not res!2085920) (not e!3053639))))

(assert (=> b!4885273 (= res!2085920 (ruleValid!3653 thiss!14805 (h!62688 rulesArg!165)))))

(declare-fun b!4885274 () Bool)

(assert (=> b!4885274 (= e!3053639 (rulesValidInductive!3098 thiss!14805 (t!365010 rulesArg!165)))))

(assert (= (and d!1569445 (not res!2085921)) b!4885273))

(assert (= (and b!4885273 res!2085920) b!4885274))

(declare-fun m!5889188 () Bool)

(assert (=> d!1569445 m!5889188))

(assert (=> b!4885273 m!5889142))

(assert (=> b!4885274 m!5889032))

(assert (=> b!4885030 d!1569445))

(declare-fun b!4885287 () Bool)

(declare-fun e!3053642 () Bool)

(declare-fun tp_is_empty!35733 () Bool)

(assert (=> b!4885287 (= e!3053642 tp_is_empty!35733)))

(declare-fun b!4885289 () Bool)

(declare-fun tp!1374747 () Bool)

(assert (=> b!4885289 (= e!3053642 tp!1374747)))

(declare-fun b!4885288 () Bool)

(declare-fun tp!1374750 () Bool)

(declare-fun tp!1374749 () Bool)

(assert (=> b!4885288 (= e!3053642 (and tp!1374750 tp!1374749))))

(declare-fun b!4885290 () Bool)

(declare-fun tp!1374746 () Bool)

(declare-fun tp!1374748 () Bool)

(assert (=> b!4885290 (= e!3053642 (and tp!1374746 tp!1374748))))

(assert (=> b!4885032 (= tp!1374717 e!3053642)))

(assert (= (and b!4885032 (is-ElementMatch!13194 (regex!8119 (h!62688 rulesArg!165)))) b!4885287))

(assert (= (and b!4885032 (is-Concat!21624 (regex!8119 (h!62688 rulesArg!165)))) b!4885288))

(assert (= (and b!4885032 (is-Star!13194 (regex!8119 (h!62688 rulesArg!165)))) b!4885289))

(assert (= (and b!4885032 (is-Union!13194 (regex!8119 (h!62688 rulesArg!165)))) b!4885290))

(declare-fun b!4885299 () Bool)

(declare-fun tp!1374759 () Bool)

(declare-fun e!3053647 () Bool)

(declare-fun tp!1374757 () Bool)

(assert (=> b!4885299 (= e!3053647 (and (inv!72373 (left!40849 (c!830599 input!1236))) tp!1374757 (inv!72373 (right!41179 (c!830599 input!1236))) tp!1374759))))

(declare-fun b!4885301 () Bool)

(declare-fun e!3053648 () Bool)

(declare-fun tp!1374758 () Bool)

(assert (=> b!4885301 (= e!3053648 tp!1374758)))

(declare-fun b!4885300 () Bool)

(declare-fun inv!72380 (IArray!29435) Bool)

(assert (=> b!4885300 (= e!3053647 (and (inv!72380 (xs!18003 (c!830599 input!1236))) e!3053648))))

(assert (=> b!4885031 (= tp!1374716 (and (inv!72373 (c!830599 input!1236)) e!3053647))))

(assert (= (and b!4885031 (is-Node!14687 (c!830599 input!1236))) b!4885299))

(assert (= b!4885300 b!4885301))

(assert (= (and b!4885031 (is-Leaf!24464 (c!830599 input!1236))) b!4885300))

(declare-fun m!5889190 () Bool)

(assert (=> b!4885299 m!5889190))

(declare-fun m!5889192 () Bool)

(assert (=> b!4885299 m!5889192))

(declare-fun m!5889194 () Bool)

(assert (=> b!4885300 m!5889194))

(assert (=> b!4885031 m!5888932))

(declare-fun b!4885312 () Bool)

(declare-fun b_free!131191 () Bool)

(declare-fun b_next!131981 () Bool)

(assert (=> b!4885312 (= b_free!131191 (not b_next!131981))))

(declare-fun tp!1374770 () Bool)

(declare-fun b_and!344023 () Bool)

(assert (=> b!4885312 (= tp!1374770 b_and!344023)))

(declare-fun b_free!131193 () Bool)

(declare-fun b_next!131983 () Bool)

(assert (=> b!4885312 (= b_free!131193 (not b_next!131983))))

(declare-fun tp!1374769 () Bool)

(declare-fun b_and!344025 () Bool)

(assert (=> b!4885312 (= tp!1374769 b_and!344025)))

(declare-fun e!3053658 () Bool)

(assert (=> b!4885312 (= e!3053658 (and tp!1374770 tp!1374769))))

(declare-fun e!3053657 () Bool)

(declare-fun b!4885311 () Bool)

(declare-fun tp!1374768 () Bool)

(assert (=> b!4885311 (= e!3053657 (and tp!1374768 (inv!72369 (tag!8983 (h!62688 (t!365010 rulesArg!165)))) (inv!72374 (transformation!8119 (h!62688 (t!365010 rulesArg!165)))) e!3053658))))

(declare-fun b!4885310 () Bool)

(declare-fun e!3053659 () Bool)

(declare-fun tp!1374771 () Bool)

(assert (=> b!4885310 (= e!3053659 (and e!3053657 tp!1374771))))

(assert (=> b!4885019 (= tp!1374718 e!3053659)))

(assert (= b!4885311 b!4885312))

(assert (= b!4885310 b!4885311))

(assert (= (and b!4885019 (is-Cons!56240 (t!365010 rulesArg!165))) b!4885310))

(declare-fun m!5889196 () Bool)

(assert (=> b!4885311 m!5889196))

(declare-fun m!5889198 () Bool)

(assert (=> b!4885311 m!5889198))

(push 1)

(assert (not b_next!131981))

(assert (not bm!338955))

(assert (not b!4885288))

(assert (not b!4885106))

(assert (not b!4885134))

(assert b_and!344025)

(assert (not d!1569439))

(assert (not bm!338967))

(assert (not b!4885240))

(assert (not b!4885274))

(assert (not b!4885107))

(assert (not d!1569379))

(assert (not b_next!131973))

(assert (not d!1569377))

(assert (not b!4885109))

(assert tp_is_empty!35733)

(assert (not b!4885301))

(assert (not b_next!131983))

(assert (not b!4885113))

(assert (not b!4885268))

(assert (not b!4885132))

(assert (not b!4885031))

(assert (not b!4885299))

(assert (not b!4885085))

(assert (not b!4885110))

(assert (not d!1569431))

(assert (not b!4885112))

(assert (not b!4885290))

(assert (not d!1569433))

(assert (not b!4885105))

(assert (not b!4885310))

(assert (not b!4885137))

(assert (not b!4885131))

(assert (not b!4885253))

(assert (not b!4885237))

(assert (not b!4885086))

(assert (not b!4885273))

(assert (not bm!338952))

(assert (not b!4885136))

(assert (not d!1569443))

(assert (not d!1569401))

(assert (not d!1569445))

(assert b_and!344015)

(assert (not b!4885238))

(assert (not d!1569441))

(assert (not d!1569399))

(assert (not b!4885239))

(assert (not b!4885133))

(assert (not b!4885289))

(assert b_and!344023)

(assert (not b!4885108))

(assert (not d!1569383))

(assert b_and!344017)

(assert (not b_next!131975))

(assert (not b!4885242))

(assert (not b!4885260))

(assert (not b!4885084))

(assert (not b!4885311))

(assert (not d!1569437))

(assert (not b!4885262))

(assert (not b!4885300))

(assert (not d!1569381))

(assert (not b!4885135))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!131973))

(assert (not b_next!131983))

(assert (not b_next!131981))

(assert b_and!344015)

(assert b_and!344023)

(assert b_and!344025)

(assert b_and!344017)

(assert (not b_next!131975))

(check-sat)

(pop 1)


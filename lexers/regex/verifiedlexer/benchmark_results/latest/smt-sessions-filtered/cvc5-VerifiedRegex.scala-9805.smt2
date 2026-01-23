; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!512722 () Bool)

(assert start!512722)

(declare-fun b!4896051 () Bool)

(declare-fun b_free!131599 () Bool)

(declare-fun b_next!132389 () Bool)

(assert (=> b!4896051 (= b_free!131599 (not b_next!132389))))

(declare-fun tp!1377818 () Bool)

(declare-fun b_and!345383 () Bool)

(assert (=> b!4896051 (= tp!1377818 b_and!345383)))

(declare-fun b_free!131601 () Bool)

(declare-fun b_next!132391 () Bool)

(assert (=> b!4896051 (= b_free!131601 (not b_next!132391))))

(declare-fun tp!1377816 () Bool)

(declare-fun b_and!345385 () Bool)

(assert (=> b!4896051 (= tp!1377816 b_and!345385)))

(declare-fun b!4896040 () Bool)

(declare-fun e!3060580 () Bool)

(declare-datatypes ((C!26702 0))(
  ( (C!26703 (val!22685 Int)) )
))
(declare-datatypes ((List!56540 0))(
  ( (Nil!56416) (Cons!56416 (h!62864 C!26702) (t!366074 List!56540)) )
))
(declare-datatypes ((IArray!29551 0))(
  ( (IArray!29552 (innerList!14833 List!56540)) )
))
(declare-datatypes ((Conc!14745 0))(
  ( (Node!14745 (left!40988 Conc!14745) (right!41318 Conc!14745) (csize!29720 Int) (cheight!14956 Int)) (Leaf!24551 (xs!18061 IArray!29551) (csize!29721 Int)) (Empty!14745) )
))
(declare-datatypes ((BalanceConc!28920 0))(
  ( (BalanceConc!28921 (c!832216 Conc!14745)) )
))
(declare-fun input!1236 () BalanceConc!28920)

(declare-fun tp!1377817 () Bool)

(declare-fun inv!72704 (Conc!14745) Bool)

(assert (=> b!4896040 (= e!3060580 (and (inv!72704 (c!832216 input!1236)) tp!1377817))))

(declare-fun tp!1377814 () Bool)

(declare-fun b!4896041 () Bool)

(declare-datatypes ((List!56541 0))(
  ( (Nil!56417) (Cons!56417 (h!62865 (_ BitVec 16)) (t!366075 List!56541)) )
))
(declare-datatypes ((TokenValue!8487 0))(
  ( (FloatLiteralValue!16974 (text!59854 List!56541)) (TokenValueExt!8486 (__x!34267 Int)) (Broken!42435 (value!262170 List!56541)) (Object!8610) (End!8487) (Def!8487) (Underscore!8487) (Match!8487) (Else!8487) (Error!8487) (Case!8487) (If!8487) (Extends!8487) (Abstract!8487) (Class!8487) (Val!8487) (DelimiterValue!16974 (del!8547 List!56541)) (KeywordValue!8493 (value!262171 List!56541)) (CommentValue!16974 (value!262172 List!56541)) (WhitespaceValue!16974 (value!262173 List!56541)) (IndentationValue!8487 (value!262174 List!56541)) (String!63878) (Int32!8487) (Broken!42436 (value!262175 List!56541)) (Boolean!8488) (Unit!146474) (OperatorValue!8490 (op!8547 List!56541)) (IdentifierValue!16974 (value!262176 List!56541)) (IdentifierValue!16975 (value!262177 List!56541)) (WhitespaceValue!16975 (value!262178 List!56541)) (True!16974) (False!16974) (Broken!42437 (value!262179 List!56541)) (Broken!42438 (value!262180 List!56541)) (True!16975) (RightBrace!8487) (RightBracket!8487) (Colon!8487) (Null!8487) (Comma!8487) (LeftBracket!8487) (False!16975) (LeftBrace!8487) (ImaginaryLiteralValue!8487 (text!59855 List!56541)) (StringLiteralValue!25461 (value!262181 List!56541)) (EOFValue!8487 (value!262182 List!56541)) (IdentValue!8487 (value!262183 List!56541)) (DelimiterValue!16975 (value!262184 List!56541)) (DedentValue!8487 (value!262185 List!56541)) (NewLineValue!8487 (value!262186 List!56541)) (IntegerValue!25461 (value!262187 (_ BitVec 32)) (text!59856 List!56541)) (IntegerValue!25462 (value!262188 Int) (text!59857 List!56541)) (Times!8487) (Or!8487) (Equal!8487) (Minus!8487) (Broken!42439 (value!262189 List!56541)) (And!8487) (Div!8487) (LessEqual!8487) (Mod!8487) (Concat!21739) (Not!8487) (Plus!8487) (SpaceValue!8487 (value!262190 List!56541)) (IntegerValue!25463 (value!262191 Int) (text!59858 List!56541)) (StringLiteralValue!25462 (text!59859 List!56541)) (FloatLiteralValue!16975 (text!59860 List!56541)) (BytesLiteralValue!8487 (value!262192 List!56541)) (CommentValue!16975 (value!262193 List!56541)) (StringLiteralValue!25463 (value!262194 List!56541)) (ErrorTokenValue!8487 (msg!8548 List!56541)) )
))
(declare-datatypes ((Regex!13252 0))(
  ( (ElementMatch!13252 (c!832217 C!26702)) (Concat!21740 (regOne!27016 Regex!13252) (regTwo!27016 Regex!13252)) (EmptyExpr!13252) (Star!13252 (reg!13581 Regex!13252)) (EmptyLang!13252) (Union!13252 (regOne!27017 Regex!13252) (regTwo!27017 Regex!13252)) )
))
(declare-datatypes ((String!63879 0))(
  ( (String!63880 (value!262195 String)) )
))
(declare-datatypes ((TokenValueInjection!16282 0))(
  ( (TokenValueInjection!16283 (toValue!11076 Int) (toChars!10935 Int)) )
))
(declare-datatypes ((Rule!16154 0))(
  ( (Rule!16155 (regex!8177 Regex!13252) (tag!9041 String!63879) (isSeparator!8177 Bool) (transformation!8177 TokenValueInjection!16282)) )
))
(declare-datatypes ((List!56542 0))(
  ( (Nil!56418) (Cons!56418 (h!62866 Rule!16154) (t!366076 List!56542)) )
))
(declare-fun rulesArg!165 () List!56542)

(declare-fun e!3060579 () Bool)

(declare-fun e!3060586 () Bool)

(declare-fun inv!72701 (String!63879) Bool)

(declare-fun inv!72705 (TokenValueInjection!16282) Bool)

(assert (=> b!4896041 (= e!3060579 (and tp!1377814 (inv!72701 (tag!9041 (h!62866 rulesArg!165))) (inv!72705 (transformation!8177 (h!62866 rulesArg!165))) e!3060586))))

(declare-fun res!2090978 () Bool)

(declare-fun e!3060583 () Bool)

(assert (=> start!512722 (=> (not res!2090978) (not e!3060583))))

(declare-datatypes ((LexerInterface!7769 0))(
  ( (LexerInterfaceExt!7766 (__x!34268 Int)) (Lexer!7767) )
))
(declare-fun thiss!14805 () LexerInterface!7769)

(assert (=> start!512722 (= res!2090978 (is-Lexer!7767 thiss!14805))))

(assert (=> start!512722 e!3060583))

(assert (=> start!512722 true))

(declare-fun e!3060587 () Bool)

(assert (=> start!512722 e!3060587))

(declare-fun inv!72706 (BalanceConc!28920) Bool)

(assert (=> start!512722 (and (inv!72706 input!1236) e!3060580)))

(declare-fun b!4896042 () Bool)

(declare-fun e!3060582 () Bool)

(declare-fun e!3060588 () Bool)

(assert (=> b!4896042 (= e!3060582 e!3060588)))

(declare-fun res!2090981 () Bool)

(assert (=> b!4896042 (=> res!2090981 e!3060588)))

(declare-fun lt!2007175 () Bool)

(assert (=> b!4896042 (= res!2090981 lt!2007175)))

(declare-fun b!4896043 () Bool)

(declare-fun e!3060577 () Bool)

(assert (=> b!4896043 (= e!3060588 e!3060577)))

(declare-fun res!2090987 () Bool)

(assert (=> b!4896043 (=> (not res!2090987) (not e!3060577))))

(declare-datatypes ((Token!14918 0))(
  ( (Token!14919 (value!262196 TokenValue!8487) (rule!11373 Rule!16154) (size!37151 Int) (originalCharacters!8490 List!56540)) )
))
(declare-datatypes ((tuple2!60472 0))(
  ( (tuple2!60473 (_1!33539 Token!14918) (_2!33539 BalanceConc!28920)) )
))
(declare-fun lt!2007174 () tuple2!60472)

(declare-datatypes ((tuple2!60474 0))(
  ( (tuple2!60475 (_1!33540 Token!14918) (_2!33540 List!56540)) )
))
(declare-fun lt!2007180 () tuple2!60474)

(assert (=> b!4896043 (= res!2090987 (= (_1!33539 lt!2007174) (_1!33540 lt!2007180)))))

(declare-fun lt!2007181 () List!56540)

(declare-datatypes ((Option!14031 0))(
  ( (None!14030) (Some!14030 (v!49986 tuple2!60474)) )
))
(declare-fun get!19486 (Option!14031) tuple2!60474)

(declare-fun maxPrefix!4606 (LexerInterface!7769 List!56542 List!56540) Option!14031)

(assert (=> b!4896043 (= lt!2007180 (get!19486 (maxPrefix!4606 thiss!14805 rulesArg!165 lt!2007181)))))

(declare-datatypes ((Option!14032 0))(
  ( (None!14031) (Some!14031 (v!49987 tuple2!60472)) )
))
(declare-fun lt!2007179 () Option!14032)

(declare-fun get!19487 (Option!14032) tuple2!60472)

(assert (=> b!4896043 (= lt!2007174 (get!19487 lt!2007179))))

(declare-fun b!4896044 () Bool)

(declare-fun e!3060581 () Bool)

(declare-fun e!3060584 () Bool)

(assert (=> b!4896044 (= e!3060581 e!3060584)))

(declare-fun res!2090980 () Bool)

(assert (=> b!4896044 (=> (not res!2090980) (not e!3060584))))

(declare-fun lt!2007177 () tuple2!60472)

(declare-fun lt!2007182 () tuple2!60474)

(assert (=> b!4896044 (= res!2090980 (= (_1!33539 lt!2007177) (_1!33540 lt!2007182)))))

(declare-fun lt!2007173 () Option!14031)

(assert (=> b!4896044 (= lt!2007182 (get!19486 lt!2007173))))

(assert (=> b!4896044 (= lt!2007177 (get!19487 lt!2007179))))

(declare-fun b!4896045 () Bool)

(declare-fun e!3060576 () Bool)

(declare-fun e!3060585 () Bool)

(assert (=> b!4896045 (= e!3060576 e!3060585)))

(declare-fun res!2090979 () Bool)

(assert (=> b!4896045 (=> (not res!2090979) (not e!3060585))))

(declare-fun lt!2007172 () Bool)

(declare-fun isDefined!11044 (Option!14031) Bool)

(assert (=> b!4896045 (= res!2090979 (= lt!2007172 (isDefined!11044 lt!2007173)))))

(declare-fun isDefined!11045 (Option!14032) Bool)

(assert (=> b!4896045 (= lt!2007172 (isDefined!11045 lt!2007179))))

(declare-fun maxPrefixZipper!676 (LexerInterface!7769 List!56542 List!56540) Option!14031)

(assert (=> b!4896045 (= lt!2007173 (maxPrefixZipper!676 thiss!14805 rulesArg!165 lt!2007181))))

(declare-fun b!4896046 () Bool)

(declare-fun list!17733 (BalanceConc!28920) List!56540)

(assert (=> b!4896046 (= e!3060584 (= (list!17733 (_2!33539 lt!2007177)) (_2!33540 lt!2007182)))))

(declare-fun b!4896047 () Bool)

(declare-fun e!3060578 () Bool)

(assert (=> b!4896047 (= e!3060583 (not e!3060578))))

(declare-fun res!2090986 () Bool)

(assert (=> b!4896047 (=> res!2090986 e!3060578)))

(assert (=> b!4896047 (= res!2090986 (or (and (is-Cons!56418 rulesArg!165) (is-Nil!56418 (t!366076 rulesArg!165))) (not (is-Cons!56418 rulesArg!165))))))

(declare-fun isPrefix!4897 (List!56540 List!56540) Bool)

(assert (=> b!4896047 (isPrefix!4897 lt!2007181 lt!2007181)))

(declare-datatypes ((Unit!146475 0))(
  ( (Unit!146476) )
))
(declare-fun lt!2007176 () Unit!146475)

(declare-fun lemmaIsPrefixRefl!3294 (List!56540 List!56540) Unit!146475)

(assert (=> b!4896047 (= lt!2007176 (lemmaIsPrefixRefl!3294 lt!2007181 lt!2007181))))

(assert (=> b!4896047 (= lt!2007181 (list!17733 input!1236))))

(declare-fun b!4896048 () Bool)

(declare-fun res!2090983 () Bool)

(assert (=> b!4896048 (=> (not res!2090983) (not e!3060583))))

(declare-fun isEmpty!30277 (List!56542) Bool)

(assert (=> b!4896048 (= res!2090983 (not (isEmpty!30277 rulesArg!165)))))

(declare-fun b!4896049 () Bool)

(assert (=> b!4896049 (= e!3060577 (= (list!17733 (_2!33539 lt!2007174)) (_2!33540 lt!2007180)))))

(declare-fun b!4896050 () Bool)

(assert (=> b!4896050 (= e!3060578 e!3060576)))

(declare-fun res!2090982 () Bool)

(assert (=> b!4896050 (=> res!2090982 e!3060576)))

(declare-fun lt!2007178 () Option!14032)

(assert (=> b!4896050 (= res!2090982 (or (and (is-None!14031 lt!2007178) (is-None!14031 lt!2007179)) (is-None!14031 lt!2007179) (not (is-None!14031 lt!2007178))))))

(declare-fun maxPrefixZipperSequence!1318 (LexerInterface!7769 List!56542 BalanceConc!28920) Option!14032)

(assert (=> b!4896050 (= lt!2007179 (maxPrefixZipperSequence!1318 thiss!14805 (t!366076 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!687 (LexerInterface!7769 Rule!16154 BalanceConc!28920) Option!14032)

(assert (=> b!4896050 (= lt!2007178 (maxPrefixOneRuleZipperSequence!687 thiss!14805 (h!62866 rulesArg!165) input!1236))))

(assert (=> b!4896051 (= e!3060586 (and tp!1377818 tp!1377816))))

(declare-fun b!4896052 () Bool)

(assert (=> b!4896052 (= e!3060585 e!3060582)))

(declare-fun res!2090985 () Bool)

(assert (=> b!4896052 (=> (not res!2090985) (not e!3060582))))

(assert (=> b!4896052 (= res!2090985 e!3060581)))

(declare-fun res!2090984 () Bool)

(assert (=> b!4896052 (=> res!2090984 e!3060581)))

(assert (=> b!4896052 (= res!2090984 lt!2007175)))

(assert (=> b!4896052 (= lt!2007175 (not lt!2007172))))

(declare-fun b!4896053 () Bool)

(declare-fun res!2090977 () Bool)

(assert (=> b!4896053 (=> (not res!2090977) (not e!3060583))))

(declare-fun rulesValidInductive!3156 (LexerInterface!7769 List!56542) Bool)

(assert (=> b!4896053 (= res!2090977 (rulesValidInductive!3156 thiss!14805 rulesArg!165))))

(declare-fun b!4896054 () Bool)

(declare-fun tp!1377815 () Bool)

(assert (=> b!4896054 (= e!3060587 (and e!3060579 tp!1377815))))

(assert (= (and start!512722 res!2090978) b!4896053))

(assert (= (and b!4896053 res!2090977) b!4896048))

(assert (= (and b!4896048 res!2090983) b!4896047))

(assert (= (and b!4896047 (not res!2090986)) b!4896050))

(assert (= (and b!4896050 (not res!2090982)) b!4896045))

(assert (= (and b!4896045 res!2090979) b!4896052))

(assert (= (and b!4896052 (not res!2090984)) b!4896044))

(assert (= (and b!4896044 res!2090980) b!4896046))

(assert (= (and b!4896052 res!2090985) b!4896042))

(assert (= (and b!4896042 (not res!2090981)) b!4896043))

(assert (= (and b!4896043 res!2090987) b!4896049))

(assert (= b!4896041 b!4896051))

(assert (= b!4896054 b!4896041))

(assert (= (and start!512722 (is-Cons!56418 rulesArg!165)) b!4896054))

(assert (= start!512722 b!4896040))

(declare-fun m!5902698 () Bool)

(assert (=> b!4896040 m!5902698))

(declare-fun m!5902700 () Bool)

(assert (=> b!4896053 m!5902700))

(declare-fun m!5902702 () Bool)

(assert (=> b!4896041 m!5902702))

(declare-fun m!5902704 () Bool)

(assert (=> b!4896041 m!5902704))

(declare-fun m!5902706 () Bool)

(assert (=> b!4896050 m!5902706))

(declare-fun m!5902708 () Bool)

(assert (=> b!4896050 m!5902708))

(declare-fun m!5902710 () Bool)

(assert (=> b!4896048 m!5902710))

(declare-fun m!5902712 () Bool)

(assert (=> start!512722 m!5902712))

(declare-fun m!5902714 () Bool)

(assert (=> b!4896047 m!5902714))

(declare-fun m!5902716 () Bool)

(assert (=> b!4896047 m!5902716))

(declare-fun m!5902718 () Bool)

(assert (=> b!4896047 m!5902718))

(declare-fun m!5902720 () Bool)

(assert (=> b!4896043 m!5902720))

(assert (=> b!4896043 m!5902720))

(declare-fun m!5902722 () Bool)

(assert (=> b!4896043 m!5902722))

(declare-fun m!5902724 () Bool)

(assert (=> b!4896043 m!5902724))

(declare-fun m!5902726 () Bool)

(assert (=> b!4896049 m!5902726))

(declare-fun m!5902728 () Bool)

(assert (=> b!4896046 m!5902728))

(declare-fun m!5902730 () Bool)

(assert (=> b!4896045 m!5902730))

(declare-fun m!5902732 () Bool)

(assert (=> b!4896045 m!5902732))

(declare-fun m!5902734 () Bool)

(assert (=> b!4896045 m!5902734))

(declare-fun m!5902736 () Bool)

(assert (=> b!4896044 m!5902736))

(assert (=> b!4896044 m!5902724))

(push 1)

(assert (not b_next!132391))

(assert (not b!4896040))

(assert (not b!4896049))

(assert b_and!345385)

(assert (not b!4896053))

(assert (not b!4896047))

(assert (not b!4896043))

(assert (not b!4896050))

(assert (not b!4896048))

(assert (not b_next!132389))

(assert (not b!4896054))

(assert (not b!4896044))

(assert (not b!4896046))

(assert (not b!4896045))

(assert (not start!512722))

(assert (not b!4896041))

(assert b_and!345383)

(check-sat)

(pop 1)

(push 1)

(assert b_and!345385)

(assert b_and!345383)

(assert (not b_next!132389))

(assert (not b_next!132391))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4896116 () Bool)

(declare-fun e!3060643 () Option!14032)

(declare-fun lt!2007231 () Option!14032)

(declare-fun lt!2007236 () Option!14032)

(assert (=> b!4896116 (= e!3060643 (ite (and (is-None!14031 lt!2007231) (is-None!14031 lt!2007236)) None!14031 (ite (is-None!14031 lt!2007236) lt!2007231 (ite (is-None!14031 lt!2007231) lt!2007236 (ite (>= (size!37151 (_1!33539 (v!49987 lt!2007231))) (size!37151 (_1!33539 (v!49987 lt!2007236)))) lt!2007231 lt!2007236)))))))

(declare-fun call!339641 () Option!14032)

(assert (=> b!4896116 (= lt!2007231 call!339641)))

(assert (=> b!4896116 (= lt!2007236 (maxPrefixZipperSequence!1318 thiss!14805 (t!366076 (t!366076 rulesArg!165)) input!1236))))

(declare-fun b!4896117 () Bool)

(declare-fun e!3060648 () Bool)

(declare-fun e!3060645 () Bool)

(assert (=> b!4896117 (= e!3060648 e!3060645)))

(declare-fun res!2091049 () Bool)

(assert (=> b!4896117 (=> (not res!2091049) (not e!3060645))))

(declare-fun lt!2007235 () Option!14032)

(assert (=> b!4896117 (= res!2091049 (= (_1!33539 (get!19487 lt!2007235)) (_1!33540 (get!19486 (maxPrefixZipper!676 thiss!14805 (t!366076 rulesArg!165) (list!17733 input!1236))))))))

(declare-fun b!4896118 () Bool)

(declare-fun e!3060647 () Bool)

(declare-fun e!3060644 () Bool)

(assert (=> b!4896118 (= e!3060647 e!3060644)))

(declare-fun res!2091052 () Bool)

(assert (=> b!4896118 (=> res!2091052 e!3060644)))

(assert (=> b!4896118 (= res!2091052 (not (isDefined!11045 lt!2007235)))))

(declare-fun d!1573246 () Bool)

(assert (=> d!1573246 e!3060647))

(declare-fun res!2091054 () Bool)

(assert (=> d!1573246 (=> (not res!2091054) (not e!3060647))))

(assert (=> d!1573246 (= res!2091054 (= (isDefined!11045 lt!2007235) (isDefined!11044 (maxPrefixZipper!676 thiss!14805 (t!366076 rulesArg!165) (list!17733 input!1236)))))))

(assert (=> d!1573246 (= lt!2007235 e!3060643)))

(declare-fun c!832223 () Bool)

(assert (=> d!1573246 (= c!832223 (and (is-Cons!56418 (t!366076 rulesArg!165)) (is-Nil!56418 (t!366076 (t!366076 rulesArg!165)))))))

(declare-fun lt!2007230 () Unit!146475)

(declare-fun lt!2007232 () Unit!146475)

(assert (=> d!1573246 (= lt!2007230 lt!2007232)))

(declare-fun lt!2007234 () List!56540)

(declare-fun lt!2007233 () List!56540)

(assert (=> d!1573246 (isPrefix!4897 lt!2007234 lt!2007233)))

(assert (=> d!1573246 (= lt!2007232 (lemmaIsPrefixRefl!3294 lt!2007234 lt!2007233))))

(assert (=> d!1573246 (= lt!2007233 (list!17733 input!1236))))

(assert (=> d!1573246 (= lt!2007234 (list!17733 input!1236))))

(assert (=> d!1573246 (rulesValidInductive!3156 thiss!14805 (t!366076 rulesArg!165))))

(assert (=> d!1573246 (= (maxPrefixZipperSequence!1318 thiss!14805 (t!366076 rulesArg!165) input!1236) lt!2007235)))

(declare-fun bm!339636 () Bool)

(assert (=> bm!339636 (= call!339641 (maxPrefixOneRuleZipperSequence!687 thiss!14805 (h!62866 (t!366076 rulesArg!165)) input!1236))))

(declare-fun b!4896119 () Bool)

(declare-fun res!2091051 () Bool)

(assert (=> b!4896119 (=> (not res!2091051) (not e!3060647))))

(assert (=> b!4896119 (= res!2091051 e!3060648)))

(declare-fun res!2091050 () Bool)

(assert (=> b!4896119 (=> res!2091050 e!3060648)))

(assert (=> b!4896119 (= res!2091050 (not (isDefined!11045 lt!2007235)))))

(declare-fun b!4896120 () Bool)

(declare-fun e!3060646 () Bool)

(assert (=> b!4896120 (= e!3060644 e!3060646)))

(declare-fun res!2091053 () Bool)

(assert (=> b!4896120 (=> (not res!2091053) (not e!3060646))))

(assert (=> b!4896120 (= res!2091053 (= (_1!33539 (get!19487 lt!2007235)) (_1!33540 (get!19486 (maxPrefix!4606 thiss!14805 (t!366076 rulesArg!165) (list!17733 input!1236))))))))

(declare-fun b!4896121 () Bool)

(assert (=> b!4896121 (= e!3060646 (= (list!17733 (_2!33539 (get!19487 lt!2007235))) (_2!33540 (get!19486 (maxPrefix!4606 thiss!14805 (t!366076 rulesArg!165) (list!17733 input!1236))))))))

(declare-fun b!4896122 () Bool)

(assert (=> b!4896122 (= e!3060643 call!339641)))

(declare-fun b!4896123 () Bool)

(assert (=> b!4896123 (= e!3060645 (= (list!17733 (_2!33539 (get!19487 lt!2007235))) (_2!33540 (get!19486 (maxPrefixZipper!676 thiss!14805 (t!366076 rulesArg!165) (list!17733 input!1236))))))))

(assert (= (and d!1573246 c!832223) b!4896122))

(assert (= (and d!1573246 (not c!832223)) b!4896116))

(assert (= (or b!4896122 b!4896116) bm!339636))

(assert (= (and d!1573246 res!2091054) b!4896119))

(assert (= (and b!4896119 (not res!2091050)) b!4896117))

(assert (= (and b!4896117 res!2091049) b!4896123))

(assert (= (and b!4896119 res!2091051) b!4896118))

(assert (= (and b!4896118 (not res!2091052)) b!4896120))

(assert (= (and b!4896120 res!2091053) b!4896121))

(declare-fun m!5902782 () Bool)

(assert (=> b!4896117 m!5902782))

(assert (=> b!4896117 m!5902718))

(assert (=> b!4896117 m!5902718))

(declare-fun m!5902784 () Bool)

(assert (=> b!4896117 m!5902784))

(assert (=> b!4896117 m!5902784))

(declare-fun m!5902786 () Bool)

(assert (=> b!4896117 m!5902786))

(declare-fun m!5902788 () Bool)

(assert (=> b!4896121 m!5902788))

(declare-fun m!5902790 () Bool)

(assert (=> b!4896121 m!5902790))

(assert (=> b!4896121 m!5902782))

(declare-fun m!5902792 () Bool)

(assert (=> b!4896121 m!5902792))

(assert (=> b!4896121 m!5902718))

(assert (=> b!4896121 m!5902718))

(assert (=> b!4896121 m!5902788))

(declare-fun m!5902794 () Bool)

(assert (=> bm!339636 m!5902794))

(assert (=> b!4896120 m!5902782))

(assert (=> b!4896120 m!5902718))

(assert (=> b!4896120 m!5902718))

(assert (=> b!4896120 m!5902788))

(assert (=> b!4896120 m!5902788))

(assert (=> b!4896120 m!5902790))

(declare-fun m!5902796 () Bool)

(assert (=> b!4896118 m!5902796))

(declare-fun m!5902798 () Bool)

(assert (=> d!1573246 m!5902798))

(assert (=> d!1573246 m!5902796))

(assert (=> d!1573246 m!5902718))

(assert (=> d!1573246 m!5902784))

(assert (=> d!1573246 m!5902784))

(declare-fun m!5902800 () Bool)

(assert (=> d!1573246 m!5902800))

(declare-fun m!5902802 () Bool)

(assert (=> d!1573246 m!5902802))

(declare-fun m!5902804 () Bool)

(assert (=> d!1573246 m!5902804))

(assert (=> d!1573246 m!5902718))

(assert (=> b!4896119 m!5902796))

(assert (=> b!4896123 m!5902782))

(assert (=> b!4896123 m!5902792))

(assert (=> b!4896123 m!5902784))

(assert (=> b!4896123 m!5902786))

(assert (=> b!4896123 m!5902718))

(assert (=> b!4896123 m!5902718))

(assert (=> b!4896123 m!5902784))

(declare-fun m!5902806 () Bool)

(assert (=> b!4896116 m!5902806))

(assert (=> b!4896050 d!1573246))

(declare-fun b!4896186 () Bool)

(declare-fun e!3060685 () Bool)

(assert (=> b!4896186 (= e!3060685 true)))

(declare-fun b!4896185 () Bool)

(declare-fun e!3060684 () Bool)

(assert (=> b!4896185 (= e!3060684 e!3060685)))

(declare-fun b!4896175 () Bool)

(assert (=> b!4896175 e!3060684))

(assert (= b!4896185 b!4896186))

(assert (= b!4896175 b!4896185))

(declare-fun lambda!244083 () Int)

(declare-fun order!25495 () Int)

(declare-fun order!25497 () Int)

(declare-fun dynLambda!22653 (Int Int) Int)

(declare-fun dynLambda!22654 (Int Int) Int)

(assert (=> b!4896186 (< (dynLambda!22653 order!25495 (toValue!11076 (transformation!8177 (h!62866 rulesArg!165)))) (dynLambda!22654 order!25497 lambda!244083))))

(declare-fun order!25499 () Int)

(declare-fun dynLambda!22655 (Int Int) Int)

(assert (=> b!4896186 (< (dynLambda!22655 order!25499 (toChars!10935 (transformation!8177 (h!62866 rulesArg!165)))) (dynLambda!22654 order!25497 lambda!244083))))

(declare-fun b!4896173 () Bool)

(declare-fun e!3060678 () Option!14032)

(assert (=> b!4896173 (= e!3060678 None!14031)))

(declare-fun b!4896174 () Bool)

(declare-fun e!3060679 () Bool)

(declare-fun e!3060675 () Bool)

(assert (=> b!4896174 (= e!3060679 e!3060675)))

(declare-fun res!2091089 () Bool)

(assert (=> b!4896174 (=> (not res!2091089) (not e!3060675))))

(declare-fun lt!2007292 () Option!14032)

(declare-fun maxPrefixOneRule!3532 (LexerInterface!7769 Rule!16154 List!56540) Option!14031)

(assert (=> b!4896174 (= res!2091089 (= (_1!33539 (get!19487 lt!2007292)) (_1!33540 (get!19486 (maxPrefixOneRule!3532 thiss!14805 (h!62866 rulesArg!165) (list!17733 input!1236))))))))

(declare-datatypes ((tuple2!60480 0))(
  ( (tuple2!60481 (_1!33543 BalanceConc!28920) (_2!33543 BalanceConc!28920)) )
))
(declare-fun lt!2007293 () tuple2!60480)

(declare-fun apply!13543 (TokenValueInjection!16282 BalanceConc!28920) TokenValue!8487)

(declare-fun size!37153 (BalanceConc!28920) Int)

(assert (=> b!4896175 (= e!3060678 (Some!14031 (tuple2!60473 (Token!14919 (apply!13543 (transformation!8177 (h!62866 rulesArg!165)) (_1!33543 lt!2007293)) (h!62866 rulesArg!165) (size!37153 (_1!33543 lt!2007293)) (list!17733 (_1!33543 lt!2007293))) (_2!33543 lt!2007293))))))

(declare-fun lt!2007290 () List!56540)

(assert (=> b!4896175 (= lt!2007290 (list!17733 input!1236))))

(declare-fun lt!2007298 () Unit!146475)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1719 (Regex!13252 List!56540) Unit!146475)

(assert (=> b!4896175 (= lt!2007298 (longestMatchIsAcceptedByMatchOrIsEmpty!1719 (regex!8177 (h!62866 rulesArg!165)) lt!2007290))))

(declare-fun res!2091091 () Bool)

(declare-fun isEmpty!30279 (List!56540) Bool)

(declare-datatypes ((tuple2!60482 0))(
  ( (tuple2!60483 (_1!33544 List!56540) (_2!33544 List!56540)) )
))
(declare-fun findLongestMatchInner!1756 (Regex!13252 List!56540 Int List!56540 List!56540 Int) tuple2!60482)

(declare-fun size!37154 (List!56540) Int)

(assert (=> b!4896175 (= res!2091091 (isEmpty!30279 (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007290 lt!2007290 (size!37154 lt!2007290)))))))

(declare-fun e!3060676 () Bool)

(assert (=> b!4896175 (=> res!2091091 e!3060676)))

(assert (=> b!4896175 e!3060676))

(declare-fun lt!2007291 () Unit!146475)

(assert (=> b!4896175 (= lt!2007291 lt!2007298)))

(declare-fun lt!2007289 () Unit!146475)

(declare-fun lemmaInv!1239 (TokenValueInjection!16282) Unit!146475)

(assert (=> b!4896175 (= lt!2007289 (lemmaInv!1239 (transformation!8177 (h!62866 rulesArg!165))))))

(declare-fun lt!2007294 () Unit!146475)

(declare-fun ForallOf!1136 (Int BalanceConc!28920) Unit!146475)

(assert (=> b!4896175 (= lt!2007294 (ForallOf!1136 lambda!244083 (_1!33543 lt!2007293)))))

(declare-fun lt!2007297 () Unit!146475)

(declare-fun seqFromList!5939 (List!56540) BalanceConc!28920)

(assert (=> b!4896175 (= lt!2007297 (ForallOf!1136 lambda!244083 (seqFromList!5939 (list!17733 (_1!33543 lt!2007293)))))))

(declare-fun lt!2007295 () Option!14032)

(assert (=> b!4896175 (= lt!2007295 (Some!14031 (tuple2!60473 (Token!14919 (apply!13543 (transformation!8177 (h!62866 rulesArg!165)) (_1!33543 lt!2007293)) (h!62866 rulesArg!165) (size!37153 (_1!33543 lt!2007293)) (list!17733 (_1!33543 lt!2007293))) (_2!33543 lt!2007293))))))

(declare-fun lt!2007296 () Unit!146475)

(declare-fun lemmaEqSameImage!1093 (TokenValueInjection!16282 BalanceConc!28920 BalanceConc!28920) Unit!146475)

(assert (=> b!4896175 (= lt!2007296 (lemmaEqSameImage!1093 (transformation!8177 (h!62866 rulesArg!165)) (_1!33543 lt!2007293) (seqFromList!5939 (list!17733 (_1!33543 lt!2007293)))))))

(declare-fun d!1573254 () Bool)

(declare-fun e!3060677 () Bool)

(assert (=> d!1573254 e!3060677))

(declare-fun res!2091090 () Bool)

(assert (=> d!1573254 (=> (not res!2091090) (not e!3060677))))

(assert (=> d!1573254 (= res!2091090 (= (isDefined!11045 lt!2007292) (isDefined!11044 (maxPrefixOneRule!3532 thiss!14805 (h!62866 rulesArg!165) (list!17733 input!1236)))))))

(assert (=> d!1573254 (= lt!2007292 e!3060678)))

(declare-fun c!832232 () Bool)

(declare-fun isEmpty!30280 (BalanceConc!28920) Bool)

(assert (=> d!1573254 (= c!832232 (isEmpty!30280 (_1!33543 lt!2007293)))))

(declare-fun findLongestMatchWithZipperSequence!271 (Regex!13252 BalanceConc!28920) tuple2!60480)

(assert (=> d!1573254 (= lt!2007293 (findLongestMatchWithZipperSequence!271 (regex!8177 (h!62866 rulesArg!165)) input!1236))))

(declare-fun ruleValid!3675 (LexerInterface!7769 Rule!16154) Bool)

(assert (=> d!1573254 (ruleValid!3675 thiss!14805 (h!62866 rulesArg!165))))

(assert (=> d!1573254 (= (maxPrefixOneRuleZipperSequence!687 thiss!14805 (h!62866 rulesArg!165) input!1236) lt!2007292)))

(declare-fun b!4896176 () Bool)

(assert (=> b!4896176 (= e!3060675 (= (list!17733 (_2!33539 (get!19487 lt!2007292))) (_2!33540 (get!19486 (maxPrefixOneRule!3532 thiss!14805 (h!62866 rulesArg!165) (list!17733 input!1236))))))))

(declare-fun b!4896177 () Bool)

(assert (=> b!4896177 (= e!3060677 e!3060679)))

(declare-fun res!2091088 () Bool)

(assert (=> b!4896177 (=> res!2091088 e!3060679)))

(assert (=> b!4896177 (= res!2091088 (not (isDefined!11045 lt!2007292)))))

(declare-fun b!4896178 () Bool)

(declare-fun matchR!6533 (Regex!13252 List!56540) Bool)

(assert (=> b!4896178 (= e!3060676 (matchR!6533 (regex!8177 (h!62866 rulesArg!165)) (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007290 lt!2007290 (size!37154 lt!2007290)))))))

(assert (= (and d!1573254 c!832232) b!4896173))

(assert (= (and d!1573254 (not c!832232)) b!4896175))

(assert (= (and b!4896175 (not res!2091091)) b!4896178))

(assert (= (and d!1573254 res!2091090) b!4896177))

(assert (= (and b!4896177 (not res!2091088)) b!4896174))

(assert (= (and b!4896174 res!2091089) b!4896176))

(declare-fun m!5902842 () Bool)

(assert (=> b!4896178 m!5902842))

(declare-fun m!5902844 () Bool)

(assert (=> b!4896178 m!5902844))

(assert (=> b!4896178 m!5902842))

(assert (=> b!4896178 m!5902844))

(declare-fun m!5902846 () Bool)

(assert (=> b!4896178 m!5902846))

(declare-fun m!5902848 () Bool)

(assert (=> b!4896178 m!5902848))

(declare-fun m!5902850 () Bool)

(assert (=> b!4896176 m!5902850))

(assert (=> b!4896176 m!5902718))

(declare-fun m!5902852 () Bool)

(assert (=> b!4896176 m!5902852))

(assert (=> b!4896176 m!5902718))

(assert (=> b!4896176 m!5902852))

(declare-fun m!5902854 () Bool)

(assert (=> b!4896176 m!5902854))

(declare-fun m!5902856 () Bool)

(assert (=> b!4896176 m!5902856))

(assert (=> b!4896174 m!5902856))

(assert (=> b!4896174 m!5902718))

(assert (=> b!4896174 m!5902718))

(assert (=> b!4896174 m!5902852))

(assert (=> b!4896174 m!5902852))

(assert (=> b!4896174 m!5902854))

(assert (=> b!4896175 m!5902842))

(assert (=> b!4896175 m!5902844))

(assert (=> b!4896175 m!5902846))

(declare-fun m!5902858 () Bool)

(assert (=> b!4896175 m!5902858))

(declare-fun m!5902860 () Bool)

(assert (=> b!4896175 m!5902860))

(assert (=> b!4896175 m!5902718))

(declare-fun m!5902862 () Bool)

(assert (=> b!4896175 m!5902862))

(declare-fun m!5902864 () Bool)

(assert (=> b!4896175 m!5902864))

(declare-fun m!5902866 () Bool)

(assert (=> b!4896175 m!5902866))

(declare-fun m!5902868 () Bool)

(assert (=> b!4896175 m!5902868))

(assert (=> b!4896175 m!5902864))

(assert (=> b!4896175 m!5902844))

(assert (=> b!4896175 m!5902868))

(assert (=> b!4896175 m!5902864))

(declare-fun m!5902870 () Bool)

(assert (=> b!4896175 m!5902870))

(assert (=> b!4896175 m!5902842))

(declare-fun m!5902872 () Bool)

(assert (=> b!4896175 m!5902872))

(declare-fun m!5902874 () Bool)

(assert (=> b!4896175 m!5902874))

(declare-fun m!5902876 () Bool)

(assert (=> b!4896175 m!5902876))

(assert (=> d!1573254 m!5902718))

(assert (=> d!1573254 m!5902852))

(assert (=> d!1573254 m!5902718))

(declare-fun m!5902878 () Bool)

(assert (=> d!1573254 m!5902878))

(declare-fun m!5902880 () Bool)

(assert (=> d!1573254 m!5902880))

(declare-fun m!5902882 () Bool)

(assert (=> d!1573254 m!5902882))

(declare-fun m!5902884 () Bool)

(assert (=> d!1573254 m!5902884))

(assert (=> d!1573254 m!5902852))

(declare-fun m!5902886 () Bool)

(assert (=> d!1573254 m!5902886))

(assert (=> b!4896177 m!5902878))

(assert (=> b!4896050 d!1573254))

(declare-fun d!1573268 () Bool)

(declare-fun list!17735 (Conc!14745) List!56540)

(assert (=> d!1573268 (= (list!17733 (_2!33539 lt!2007174)) (list!17735 (c!832216 (_2!33539 lt!2007174))))))

(declare-fun bs!1176362 () Bool)

(assert (= bs!1176362 d!1573268))

(declare-fun m!5902888 () Bool)

(assert (=> bs!1176362 m!5902888))

(assert (=> b!4896049 d!1573268))

(declare-fun d!1573270 () Bool)

(assert (=> d!1573270 (= (isEmpty!30277 rulesArg!165) (is-Nil!56418 rulesArg!165))))

(assert (=> b!4896048 d!1573270))

(declare-fun b!4896196 () Bool)

(declare-fun res!2091102 () Bool)

(declare-fun e!3060694 () Bool)

(assert (=> b!4896196 (=> (not res!2091102) (not e!3060694))))

(declare-fun head!10458 (List!56540) C!26702)

(assert (=> b!4896196 (= res!2091102 (= (head!10458 lt!2007181) (head!10458 lt!2007181)))))

(declare-fun b!4896197 () Bool)

(declare-fun tail!9604 (List!56540) List!56540)

(assert (=> b!4896197 (= e!3060694 (isPrefix!4897 (tail!9604 lt!2007181) (tail!9604 lt!2007181)))))

(declare-fun d!1573272 () Bool)

(declare-fun e!3060693 () Bool)

(assert (=> d!1573272 e!3060693))

(declare-fun res!2091100 () Bool)

(assert (=> d!1573272 (=> res!2091100 e!3060693)))

(declare-fun lt!2007301 () Bool)

(assert (=> d!1573272 (= res!2091100 (not lt!2007301))))

(declare-fun e!3060692 () Bool)

(assert (=> d!1573272 (= lt!2007301 e!3060692)))

(declare-fun res!2091101 () Bool)

(assert (=> d!1573272 (=> res!2091101 e!3060692)))

(assert (=> d!1573272 (= res!2091101 (is-Nil!56416 lt!2007181))))

(assert (=> d!1573272 (= (isPrefix!4897 lt!2007181 lt!2007181) lt!2007301)))

(declare-fun b!4896195 () Bool)

(assert (=> b!4896195 (= e!3060692 e!3060694)))

(declare-fun res!2091103 () Bool)

(assert (=> b!4896195 (=> (not res!2091103) (not e!3060694))))

(assert (=> b!4896195 (= res!2091103 (not (is-Nil!56416 lt!2007181)))))

(declare-fun b!4896198 () Bool)

(assert (=> b!4896198 (= e!3060693 (>= (size!37154 lt!2007181) (size!37154 lt!2007181)))))

(assert (= (and d!1573272 (not res!2091101)) b!4896195))

(assert (= (and b!4896195 res!2091103) b!4896196))

(assert (= (and b!4896196 res!2091102) b!4896197))

(assert (= (and d!1573272 (not res!2091100)) b!4896198))

(declare-fun m!5902890 () Bool)

(assert (=> b!4896196 m!5902890))

(assert (=> b!4896196 m!5902890))

(declare-fun m!5902892 () Bool)

(assert (=> b!4896197 m!5902892))

(assert (=> b!4896197 m!5902892))

(assert (=> b!4896197 m!5902892))

(assert (=> b!4896197 m!5902892))

(declare-fun m!5902894 () Bool)

(assert (=> b!4896197 m!5902894))

(declare-fun m!5902896 () Bool)

(assert (=> b!4896198 m!5902896))

(assert (=> b!4896198 m!5902896))

(assert (=> b!4896047 d!1573272))

(declare-fun d!1573274 () Bool)

(assert (=> d!1573274 (isPrefix!4897 lt!2007181 lt!2007181)))

(declare-fun lt!2007304 () Unit!146475)

(declare-fun choose!35750 (List!56540 List!56540) Unit!146475)

(assert (=> d!1573274 (= lt!2007304 (choose!35750 lt!2007181 lt!2007181))))

(assert (=> d!1573274 (= (lemmaIsPrefixRefl!3294 lt!2007181 lt!2007181) lt!2007304)))

(declare-fun bs!1176363 () Bool)

(assert (= bs!1176363 d!1573274))

(assert (=> bs!1176363 m!5902714))

(declare-fun m!5902898 () Bool)

(assert (=> bs!1176363 m!5902898))

(assert (=> b!4896047 d!1573274))

(declare-fun d!1573276 () Bool)

(assert (=> d!1573276 (= (list!17733 input!1236) (list!17735 (c!832216 input!1236)))))

(declare-fun bs!1176364 () Bool)

(assert (= bs!1176364 d!1573276))

(declare-fun m!5902900 () Bool)

(assert (=> bs!1176364 m!5902900))

(assert (=> b!4896047 d!1573276))

(declare-fun d!1573278 () Bool)

(assert (=> d!1573278 (= (list!17733 (_2!33539 lt!2007177)) (list!17735 (c!832216 (_2!33539 lt!2007177))))))

(declare-fun bs!1176365 () Bool)

(assert (= bs!1176365 d!1573278))

(declare-fun m!5902902 () Bool)

(assert (=> bs!1176365 m!5902902))

(assert (=> b!4896046 d!1573278))

(declare-fun d!1573280 () Bool)

(declare-fun isEmpty!30281 (Option!14031) Bool)

(assert (=> d!1573280 (= (isDefined!11044 lt!2007173) (not (isEmpty!30281 lt!2007173)))))

(declare-fun bs!1176366 () Bool)

(assert (= bs!1176366 d!1573280))

(declare-fun m!5902904 () Bool)

(assert (=> bs!1176366 m!5902904))

(assert (=> b!4896045 d!1573280))

(declare-fun d!1573282 () Bool)

(declare-fun isEmpty!30282 (Option!14032) Bool)

(assert (=> d!1573282 (= (isDefined!11045 lt!2007179) (not (isEmpty!30282 lt!2007179)))))

(declare-fun bs!1176367 () Bool)

(assert (= bs!1176367 d!1573282))

(declare-fun m!5902906 () Bool)

(assert (=> bs!1176367 m!5902906))

(assert (=> b!4896045 d!1573282))

(declare-fun lt!2007318 () Option!14031)

(declare-fun d!1573284 () Bool)

(assert (=> d!1573284 (= lt!2007318 (maxPrefix!4606 thiss!14805 rulesArg!165 lt!2007181))))

(declare-fun e!3060702 () Option!14031)

(assert (=> d!1573284 (= lt!2007318 e!3060702)))

(declare-fun c!832235 () Bool)

(assert (=> d!1573284 (= c!832235 (and (is-Cons!56418 rulesArg!165) (is-Nil!56418 (t!366076 rulesArg!165))))))

(declare-fun lt!2007316 () Unit!146475)

(declare-fun lt!2007319 () Unit!146475)

(assert (=> d!1573284 (= lt!2007316 lt!2007319)))

(assert (=> d!1573284 (isPrefix!4897 lt!2007181 lt!2007181)))

(assert (=> d!1573284 (= lt!2007319 (lemmaIsPrefixRefl!3294 lt!2007181 lt!2007181))))

(assert (=> d!1573284 (rulesValidInductive!3156 thiss!14805 rulesArg!165)))

(assert (=> d!1573284 (= (maxPrefixZipper!676 thiss!14805 rulesArg!165 lt!2007181) lt!2007318)))

(declare-fun call!339650 () Option!14031)

(declare-fun bm!339645 () Bool)

(declare-fun maxPrefixOneRuleZipper!261 (LexerInterface!7769 Rule!16154 List!56540) Option!14031)

(assert (=> bm!339645 (= call!339650 (maxPrefixOneRuleZipper!261 thiss!14805 (h!62866 rulesArg!165) lt!2007181))))

(declare-fun b!4896210 () Bool)

(assert (=> b!4896210 (= e!3060702 call!339650)))

(declare-fun b!4896211 () Bool)

(declare-fun lt!2007317 () Option!14031)

(declare-fun lt!2007320 () Option!14031)

(assert (=> b!4896211 (= e!3060702 (ite (and (is-None!14030 lt!2007317) (is-None!14030 lt!2007320)) None!14030 (ite (is-None!14030 lt!2007320) lt!2007317 (ite (is-None!14030 lt!2007317) lt!2007320 (ite (>= (size!37151 (_1!33540 (v!49986 lt!2007317))) (size!37151 (_1!33540 (v!49986 lt!2007320)))) lt!2007317 lt!2007320)))))))

(assert (=> b!4896211 (= lt!2007317 call!339650)))

(assert (=> b!4896211 (= lt!2007320 (maxPrefixZipper!676 thiss!14805 (t!366076 rulesArg!165) lt!2007181))))

(assert (= (and d!1573284 c!832235) b!4896210))

(assert (= (and d!1573284 (not c!832235)) b!4896211))

(assert (= (or b!4896210 b!4896211) bm!339645))

(assert (=> d!1573284 m!5902720))

(assert (=> d!1573284 m!5902714))

(assert (=> d!1573284 m!5902716))

(assert (=> d!1573284 m!5902700))

(declare-fun m!5902918 () Bool)

(assert (=> bm!339645 m!5902918))

(declare-fun m!5902920 () Bool)

(assert (=> b!4896211 m!5902920))

(assert (=> b!4896045 d!1573284))

(declare-fun d!1573292 () Bool)

(declare-fun isBalanced!4015 (Conc!14745) Bool)

(assert (=> d!1573292 (= (inv!72706 input!1236) (isBalanced!4015 (c!832216 input!1236)))))

(declare-fun bs!1176369 () Bool)

(assert (= bs!1176369 d!1573292))

(declare-fun m!5902924 () Bool)

(assert (=> bs!1176369 m!5902924))

(assert (=> start!512722 d!1573292))

(declare-fun d!1573296 () Bool)

(assert (=> d!1573296 (= (get!19486 lt!2007173) (v!49986 lt!2007173))))

(assert (=> b!4896044 d!1573296))

(declare-fun d!1573298 () Bool)

(assert (=> d!1573298 (= (get!19487 lt!2007179) (v!49987 lt!2007179))))

(assert (=> b!4896044 d!1573298))

(declare-fun d!1573300 () Bool)

(assert (=> d!1573300 (= (get!19486 (maxPrefix!4606 thiss!14805 rulesArg!165 lt!2007181)) (v!49986 (maxPrefix!4606 thiss!14805 rulesArg!165 lt!2007181)))))

(assert (=> b!4896043 d!1573300))

(declare-fun b!4896230 () Bool)

(declare-fun e!3060710 () Option!14031)

(declare-fun lt!2007333 () Option!14031)

(declare-fun lt!2007332 () Option!14031)

(assert (=> b!4896230 (= e!3060710 (ite (and (is-None!14030 lt!2007333) (is-None!14030 lt!2007332)) None!14030 (ite (is-None!14030 lt!2007332) lt!2007333 (ite (is-None!14030 lt!2007333) lt!2007332 (ite (>= (size!37151 (_1!33540 (v!49986 lt!2007333))) (size!37151 (_1!33540 (v!49986 lt!2007332)))) lt!2007333 lt!2007332)))))))

(declare-fun call!339653 () Option!14031)

(assert (=> b!4896230 (= lt!2007333 call!339653)))

(assert (=> b!4896230 (= lt!2007332 (maxPrefix!4606 thiss!14805 (t!366076 rulesArg!165) lt!2007181))))

(declare-fun b!4896231 () Bool)

(declare-fun res!2091127 () Bool)

(declare-fun e!3060709 () Bool)

(assert (=> b!4896231 (=> (not res!2091127) (not e!3060709))))

(declare-fun lt!2007334 () Option!14031)

(declare-fun charsOf!5377 (Token!14918) BalanceConc!28920)

(assert (=> b!4896231 (= res!2091127 (= (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334)))) (originalCharacters!8490 (_1!33540 (get!19486 lt!2007334)))))))

(declare-fun b!4896232 () Bool)

(assert (=> b!4896232 (= e!3060710 call!339653)))

(declare-fun d!1573302 () Bool)

(declare-fun e!3060711 () Bool)

(assert (=> d!1573302 e!3060711))

(declare-fun res!2091125 () Bool)

(assert (=> d!1573302 (=> res!2091125 e!3060711)))

(assert (=> d!1573302 (= res!2091125 (isEmpty!30281 lt!2007334))))

(assert (=> d!1573302 (= lt!2007334 e!3060710)))

(declare-fun c!832238 () Bool)

(assert (=> d!1573302 (= c!832238 (and (is-Cons!56418 rulesArg!165) (is-Nil!56418 (t!366076 rulesArg!165))))))

(declare-fun lt!2007331 () Unit!146475)

(declare-fun lt!2007335 () Unit!146475)

(assert (=> d!1573302 (= lt!2007331 lt!2007335)))

(assert (=> d!1573302 (isPrefix!4897 lt!2007181 lt!2007181)))

(assert (=> d!1573302 (= lt!2007335 (lemmaIsPrefixRefl!3294 lt!2007181 lt!2007181))))

(assert (=> d!1573302 (rulesValidInductive!3156 thiss!14805 rulesArg!165)))

(assert (=> d!1573302 (= (maxPrefix!4606 thiss!14805 rulesArg!165 lt!2007181) lt!2007334)))

(declare-fun b!4896233 () Bool)

(declare-fun contains!19440 (List!56542 Rule!16154) Bool)

(assert (=> b!4896233 (= e!3060709 (contains!19440 rulesArg!165 (rule!11373 (_1!33540 (get!19486 lt!2007334)))))))

(declare-fun b!4896234 () Bool)

(assert (=> b!4896234 (= e!3060711 e!3060709)))

(declare-fun res!2091123 () Bool)

(assert (=> b!4896234 (=> (not res!2091123) (not e!3060709))))

(assert (=> b!4896234 (= res!2091123 (isDefined!11044 lt!2007334))))

(declare-fun b!4896235 () Bool)

(declare-fun res!2091124 () Bool)

(assert (=> b!4896235 (=> (not res!2091124) (not e!3060709))))

(assert (=> b!4896235 (= res!2091124 (matchR!6533 (regex!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334)))) (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334))))))))

(declare-fun b!4896236 () Bool)

(declare-fun res!2091129 () Bool)

(assert (=> b!4896236 (=> (not res!2091129) (not e!3060709))))

(assert (=> b!4896236 (= res!2091129 (< (size!37154 (_2!33540 (get!19486 lt!2007334))) (size!37154 lt!2007181)))))

(declare-fun b!4896237 () Bool)

(declare-fun res!2091126 () Bool)

(assert (=> b!4896237 (=> (not res!2091126) (not e!3060709))))

(assert (=> b!4896237 (= res!2091126 (= (value!262196 (_1!33540 (get!19486 lt!2007334))) (apply!13543 (transformation!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334)))) (seqFromList!5939 (originalCharacters!8490 (_1!33540 (get!19486 lt!2007334)))))))))

(declare-fun b!4896238 () Bool)

(declare-fun res!2091128 () Bool)

(assert (=> b!4896238 (=> (not res!2091128) (not e!3060709))))

(declare-fun ++!12246 (List!56540 List!56540) List!56540)

(assert (=> b!4896238 (= res!2091128 (= (++!12246 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334)))) (_2!33540 (get!19486 lt!2007334))) lt!2007181))))

(declare-fun bm!339648 () Bool)

(assert (=> bm!339648 (= call!339653 (maxPrefixOneRule!3532 thiss!14805 (h!62866 rulesArg!165) lt!2007181))))

(assert (= (and d!1573302 c!832238) b!4896232))

(assert (= (and d!1573302 (not c!832238)) b!4896230))

(assert (= (or b!4896232 b!4896230) bm!339648))

(assert (= (and d!1573302 (not res!2091125)) b!4896234))

(assert (= (and b!4896234 res!2091123) b!4896231))

(assert (= (and b!4896231 res!2091127) b!4896236))

(assert (= (and b!4896236 res!2091129) b!4896238))

(assert (= (and b!4896238 res!2091128) b!4896237))

(assert (= (and b!4896237 res!2091126) b!4896235))

(assert (= (and b!4896235 res!2091124) b!4896233))

(declare-fun m!5902926 () Bool)

(assert (=> b!4896231 m!5902926))

(declare-fun m!5902928 () Bool)

(assert (=> b!4896231 m!5902928))

(assert (=> b!4896231 m!5902928))

(declare-fun m!5902930 () Bool)

(assert (=> b!4896231 m!5902930))

(declare-fun m!5902932 () Bool)

(assert (=> bm!339648 m!5902932))

(declare-fun m!5902934 () Bool)

(assert (=> d!1573302 m!5902934))

(assert (=> d!1573302 m!5902714))

(assert (=> d!1573302 m!5902716))

(assert (=> d!1573302 m!5902700))

(assert (=> b!4896236 m!5902926))

(declare-fun m!5902936 () Bool)

(assert (=> b!4896236 m!5902936))

(assert (=> b!4896236 m!5902896))

(declare-fun m!5902938 () Bool)

(assert (=> b!4896234 m!5902938))

(assert (=> b!4896235 m!5902926))

(assert (=> b!4896235 m!5902928))

(assert (=> b!4896235 m!5902928))

(assert (=> b!4896235 m!5902930))

(assert (=> b!4896235 m!5902930))

(declare-fun m!5902940 () Bool)

(assert (=> b!4896235 m!5902940))

(declare-fun m!5902942 () Bool)

(assert (=> b!4896230 m!5902942))

(assert (=> b!4896237 m!5902926))

(declare-fun m!5902944 () Bool)

(assert (=> b!4896237 m!5902944))

(assert (=> b!4896237 m!5902944))

(declare-fun m!5902946 () Bool)

(assert (=> b!4896237 m!5902946))

(assert (=> b!4896233 m!5902926))

(declare-fun m!5902948 () Bool)

(assert (=> b!4896233 m!5902948))

(assert (=> b!4896238 m!5902926))

(assert (=> b!4896238 m!5902928))

(assert (=> b!4896238 m!5902928))

(assert (=> b!4896238 m!5902930))

(assert (=> b!4896238 m!5902930))

(declare-fun m!5902950 () Bool)

(assert (=> b!4896238 m!5902950))

(assert (=> b!4896043 d!1573302))

(assert (=> b!4896043 d!1573298))

(declare-fun d!1573304 () Bool)

(assert (=> d!1573304 true))

(declare-fun lt!2007338 () Bool)

(declare-fun lambda!244089 () Int)

(declare-fun forall!13093 (List!56542 Int) Bool)

(assert (=> d!1573304 (= lt!2007338 (forall!13093 rulesArg!165 lambda!244089))))

(declare-fun e!3060716 () Bool)

(assert (=> d!1573304 (= lt!2007338 e!3060716)))

(declare-fun res!2091134 () Bool)

(assert (=> d!1573304 (=> res!2091134 e!3060716)))

(assert (=> d!1573304 (= res!2091134 (not (is-Cons!56418 rulesArg!165)))))

(assert (=> d!1573304 (= (rulesValidInductive!3156 thiss!14805 rulesArg!165) lt!2007338)))

(declare-fun b!4896243 () Bool)

(declare-fun e!3060717 () Bool)

(assert (=> b!4896243 (= e!3060716 e!3060717)))

(declare-fun res!2091135 () Bool)

(assert (=> b!4896243 (=> (not res!2091135) (not e!3060717))))

(assert (=> b!4896243 (= res!2091135 (ruleValid!3675 thiss!14805 (h!62866 rulesArg!165)))))

(declare-fun b!4896244 () Bool)

(assert (=> b!4896244 (= e!3060717 (rulesValidInductive!3156 thiss!14805 (t!366076 rulesArg!165)))))

(assert (= (and d!1573304 (not res!2091134)) b!4896243))

(assert (= (and b!4896243 res!2091135) b!4896244))

(declare-fun m!5902952 () Bool)

(assert (=> d!1573304 m!5902952))

(assert (=> b!4896243 m!5902884))

(assert (=> b!4896244 m!5902798))

(assert (=> b!4896053 d!1573304))

(declare-fun d!1573306 () Bool)

(assert (=> d!1573306 (= (inv!72701 (tag!9041 (h!62866 rulesArg!165))) (= (mod (str.len (value!262195 (tag!9041 (h!62866 rulesArg!165)))) 2) 0))))

(assert (=> b!4896041 d!1573306))

(declare-fun d!1573308 () Bool)

(declare-fun res!2091138 () Bool)

(declare-fun e!3060720 () Bool)

(assert (=> d!1573308 (=> (not res!2091138) (not e!3060720))))

(declare-fun semiInverseModEq!3589 (Int Int) Bool)

(assert (=> d!1573308 (= res!2091138 (semiInverseModEq!3589 (toChars!10935 (transformation!8177 (h!62866 rulesArg!165))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165)))))))

(assert (=> d!1573308 (= (inv!72705 (transformation!8177 (h!62866 rulesArg!165))) e!3060720)))

(declare-fun b!4896249 () Bool)

(declare-fun equivClasses!3468 (Int Int) Bool)

(assert (=> b!4896249 (= e!3060720 (equivClasses!3468 (toChars!10935 (transformation!8177 (h!62866 rulesArg!165))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165)))))))

(assert (= (and d!1573308 res!2091138) b!4896249))

(declare-fun m!5902954 () Bool)

(assert (=> d!1573308 m!5902954))

(declare-fun m!5902956 () Bool)

(assert (=> b!4896249 m!5902956))

(assert (=> b!4896041 d!1573308))

(declare-fun d!1573310 () Bool)

(declare-fun c!832243 () Bool)

(assert (=> d!1573310 (= c!832243 (is-Node!14745 (c!832216 input!1236)))))

(declare-fun e!3060727 () Bool)

(assert (=> d!1573310 (= (inv!72704 (c!832216 input!1236)) e!3060727)))

(declare-fun b!4896260 () Bool)

(declare-fun inv!72710 (Conc!14745) Bool)

(assert (=> b!4896260 (= e!3060727 (inv!72710 (c!832216 input!1236)))))

(declare-fun b!4896261 () Bool)

(declare-fun e!3060728 () Bool)

(assert (=> b!4896261 (= e!3060727 e!3060728)))

(declare-fun res!2091141 () Bool)

(assert (=> b!4896261 (= res!2091141 (not (is-Leaf!24551 (c!832216 input!1236))))))

(assert (=> b!4896261 (=> res!2091141 e!3060728)))

(declare-fun b!4896262 () Bool)

(declare-fun inv!72711 (Conc!14745) Bool)

(assert (=> b!4896262 (= e!3060728 (inv!72711 (c!832216 input!1236)))))

(assert (= (and d!1573310 c!832243) b!4896260))

(assert (= (and d!1573310 (not c!832243)) b!4896261))

(assert (= (and b!4896261 (not res!2091141)) b!4896262))

(declare-fun m!5902958 () Bool)

(assert (=> b!4896260 m!5902958))

(declare-fun m!5902960 () Bool)

(assert (=> b!4896262 m!5902960))

(assert (=> b!4896040 d!1573310))

(declare-fun b!4896285 () Bool)

(declare-fun b_free!131607 () Bool)

(declare-fun b_next!132397 () Bool)

(assert (=> b!4896285 (= b_free!131607 (not b_next!132397))))

(declare-fun tp!1377844 () Bool)

(declare-fun b_and!345391 () Bool)

(assert (=> b!4896285 (= tp!1377844 b_and!345391)))

(declare-fun b_free!131609 () Bool)

(declare-fun b_next!132399 () Bool)

(assert (=> b!4896285 (= b_free!131609 (not b_next!132399))))

(declare-fun tp!1377842 () Bool)

(declare-fun b_and!345393 () Bool)

(assert (=> b!4896285 (= tp!1377842 b_and!345393)))

(declare-fun e!3060749 () Bool)

(assert (=> b!4896285 (= e!3060749 (and tp!1377844 tp!1377842))))

(declare-fun e!3060747 () Bool)

(declare-fun b!4896284 () Bool)

(declare-fun tp!1377843 () Bool)

(assert (=> b!4896284 (= e!3060747 (and tp!1377843 (inv!72701 (tag!9041 (h!62866 (t!366076 rulesArg!165)))) (inv!72705 (transformation!8177 (h!62866 (t!366076 rulesArg!165)))) e!3060749))))

(declare-fun b!4896283 () Bool)

(declare-fun e!3060748 () Bool)

(declare-fun tp!1377845 () Bool)

(assert (=> b!4896283 (= e!3060748 (and e!3060747 tp!1377845))))

(assert (=> b!4896054 (= tp!1377815 e!3060748)))

(assert (= b!4896284 b!4896285))

(assert (= b!4896283 b!4896284))

(assert (= (and b!4896054 (is-Cons!56418 (t!366076 rulesArg!165))) b!4896283))

(declare-fun m!5902962 () Bool)

(assert (=> b!4896284 m!5902962))

(declare-fun m!5902964 () Bool)

(assert (=> b!4896284 m!5902964))

(declare-fun b!4896298 () Bool)

(declare-fun e!3060753 () Bool)

(declare-fun tp!1377859 () Bool)

(assert (=> b!4896298 (= e!3060753 tp!1377859)))

(assert (=> b!4896041 (= tp!1377814 e!3060753)))

(declare-fun b!4896299 () Bool)

(declare-fun tp!1377857 () Bool)

(declare-fun tp!1377856 () Bool)

(assert (=> b!4896299 (= e!3060753 (and tp!1377857 tp!1377856))))

(declare-fun b!4896296 () Bool)

(declare-fun tp_is_empty!35785 () Bool)

(assert (=> b!4896296 (= e!3060753 tp_is_empty!35785)))

(declare-fun b!4896297 () Bool)

(declare-fun tp!1377858 () Bool)

(declare-fun tp!1377860 () Bool)

(assert (=> b!4896297 (= e!3060753 (and tp!1377858 tp!1377860))))

(assert (= (and b!4896041 (is-ElementMatch!13252 (regex!8177 (h!62866 rulesArg!165)))) b!4896296))

(assert (= (and b!4896041 (is-Concat!21740 (regex!8177 (h!62866 rulesArg!165)))) b!4896297))

(assert (= (and b!4896041 (is-Star!13252 (regex!8177 (h!62866 rulesArg!165)))) b!4896298))

(assert (= (and b!4896041 (is-Union!13252 (regex!8177 (h!62866 rulesArg!165)))) b!4896299))

(declare-fun b!4896308 () Bool)

(declare-fun e!3060759 () Bool)

(declare-fun tp!1377868 () Bool)

(declare-fun tp!1377867 () Bool)

(assert (=> b!4896308 (= e!3060759 (and (inv!72704 (left!40988 (c!832216 input!1236))) tp!1377868 (inv!72704 (right!41318 (c!832216 input!1236))) tp!1377867))))

(declare-fun b!4896310 () Bool)

(declare-fun e!3060758 () Bool)

(declare-fun tp!1377869 () Bool)

(assert (=> b!4896310 (= e!3060758 tp!1377869)))

(declare-fun b!4896309 () Bool)

(declare-fun inv!72712 (IArray!29551) Bool)

(assert (=> b!4896309 (= e!3060759 (and (inv!72712 (xs!18061 (c!832216 input!1236))) e!3060758))))

(assert (=> b!4896040 (= tp!1377817 (and (inv!72704 (c!832216 input!1236)) e!3060759))))

(assert (= (and b!4896040 (is-Node!14745 (c!832216 input!1236))) b!4896308))

(assert (= b!4896309 b!4896310))

(assert (= (and b!4896040 (is-Leaf!24551 (c!832216 input!1236))) b!4896309))

(declare-fun m!5902966 () Bool)

(assert (=> b!4896308 m!5902966))

(declare-fun m!5902968 () Bool)

(assert (=> b!4896308 m!5902968))

(declare-fun m!5902970 () Bool)

(assert (=> b!4896309 m!5902970))

(assert (=> b!4896040 m!5902698))

(push 1)

(assert (not b!4896177))

(assert (not b_next!132397))

(assert (not b!4896176))

(assert b_and!345385)

(assert (not b!4896244))

(assert (not b!4896123))

(assert (not b!4896230))

(assert (not b!4896243))

(assert (not b!4896237))

(assert (not b!4896308))

(assert (not b_next!132391))

(assert (not b!4896118))

(assert (not d!1573284))

(assert (not b!4896249))

(assert (not b!4896116))

(assert (not b!4896197))

(assert b_and!345393)

(assert tp_is_empty!35785)

(assert (not d!1573276))

(assert (not b!4896119))

(assert (not b!4896211))

(assert (not d!1573246))

(assert (not b!4896178))

(assert b_and!345391)

(assert (not b!4896120))

(assert (not d!1573280))

(assert (not b!4896236))

(assert (not d!1573254))

(assert (not d!1573282))

(assert (not b!4896121))

(assert (not d!1573292))

(assert (not b!4896196))

(assert (not b!4896040))

(assert (not b!4896299))

(assert (not b!4896309))

(assert (not d!1573274))

(assert (not bm!339636))

(assert (not b!4896297))

(assert (not b!4896310))

(assert (not bm!339645))

(assert (not b_next!132389))

(assert (not b!4896284))

(assert (not b!4896198))

(assert (not b!4896117))

(assert (not b!4896283))

(assert (not b!4896235))

(assert (not b!4896262))

(assert (not b!4896238))

(assert (not b!4896260))

(assert (not b!4896234))

(assert (not bm!339648))

(assert (not d!1573308))

(assert (not d!1573278))

(assert (not b!4896174))

(assert (not b!4896233))

(assert (not b!4896298))

(assert (not d!1573302))

(assert (not b!4896175))

(assert (not d!1573304))

(assert b_and!345383)

(assert (not b_next!132399))

(assert (not d!1573268))

(assert (not b!4896231))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!132391))

(assert b_and!345393)

(assert b_and!345391)

(assert (not b_next!132397))

(assert (not b_next!132389))

(assert b_and!345385)

(assert b_and!345383)

(assert (not b_next!132399))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1573326 () Bool)

(declare-fun res!2091195 () Bool)

(declare-fun e!3060825 () Bool)

(assert (=> d!1573326 (=> (not res!2091195) (not e!3060825))))

(declare-fun validRegex!5885 (Regex!13252) Bool)

(assert (=> d!1573326 (= res!2091195 (validRegex!5885 (regex!8177 (h!62866 rulesArg!165))))))

(assert (=> d!1573326 (= (ruleValid!3675 thiss!14805 (h!62866 rulesArg!165)) e!3060825)))

(declare-fun b!4896406 () Bool)

(declare-fun res!2091196 () Bool)

(assert (=> b!4896406 (=> (not res!2091196) (not e!3060825))))

(declare-fun nullable!4558 (Regex!13252) Bool)

(assert (=> b!4896406 (= res!2091196 (not (nullable!4558 (regex!8177 (h!62866 rulesArg!165)))))))

(declare-fun b!4896407 () Bool)

(assert (=> b!4896407 (= e!3060825 (not (= (tag!9041 (h!62866 rulesArg!165)) (String!63880 ""))))))

(assert (= (and d!1573326 res!2091195) b!4896406))

(assert (= (and b!4896406 res!2091196) b!4896407))

(declare-fun m!5903066 () Bool)

(assert (=> d!1573326 m!5903066))

(declare-fun m!5903068 () Bool)

(assert (=> b!4896406 m!5903068))

(assert (=> d!1573254 d!1573326))

(declare-fun d!1573328 () Bool)

(assert (=> d!1573328 (= (isDefined!11044 (maxPrefixOneRule!3532 thiss!14805 (h!62866 rulesArg!165) (list!17733 input!1236))) (not (isEmpty!30281 (maxPrefixOneRule!3532 thiss!14805 (h!62866 rulesArg!165) (list!17733 input!1236)))))))

(declare-fun bs!1176373 () Bool)

(assert (= bs!1176373 d!1573328))

(assert (=> bs!1176373 m!5902852))

(declare-fun m!5903070 () Bool)

(assert (=> bs!1176373 m!5903070))

(assert (=> d!1573254 d!1573328))

(declare-fun b!4896426 () Bool)

(declare-fun res!2091215 () Bool)

(declare-fun e!3060837 () Bool)

(assert (=> b!4896426 (=> (not res!2091215) (not e!3060837))))

(declare-fun lt!2007410 () Option!14031)

(assert (=> b!4896426 (= res!2091215 (= (++!12246 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007410)))) (_2!33540 (get!19486 lt!2007410))) (list!17733 input!1236)))))

(declare-fun b!4896427 () Bool)

(declare-fun res!2091216 () Bool)

(assert (=> b!4896427 (=> (not res!2091216) (not e!3060837))))

(assert (=> b!4896427 (= res!2091216 (= (rule!11373 (_1!33540 (get!19486 lt!2007410))) (h!62866 rulesArg!165)))))

(declare-fun b!4896429 () Bool)

(declare-fun res!2091214 () Bool)

(assert (=> b!4896429 (=> (not res!2091214) (not e!3060837))))

(assert (=> b!4896429 (= res!2091214 (= (value!262196 (_1!33540 (get!19486 lt!2007410))) (apply!13543 (transformation!8177 (rule!11373 (_1!33540 (get!19486 lt!2007410)))) (seqFromList!5939 (originalCharacters!8490 (_1!33540 (get!19486 lt!2007410)))))))))

(declare-fun b!4896430 () Bool)

(declare-fun e!3060834 () Option!14031)

(assert (=> b!4896430 (= e!3060834 None!14030)))

(declare-fun b!4896431 () Bool)

(assert (=> b!4896431 (= e!3060837 (= (size!37151 (_1!33540 (get!19486 lt!2007410))) (size!37154 (originalCharacters!8490 (_1!33540 (get!19486 lt!2007410))))))))

(declare-fun b!4896432 () Bool)

(declare-fun lt!2007406 () tuple2!60482)

(assert (=> b!4896432 (= e!3060834 (Some!14030 (tuple2!60475 (Token!14919 (apply!13543 (transformation!8177 (h!62866 rulesArg!165)) (seqFromList!5939 (_1!33544 lt!2007406))) (h!62866 rulesArg!165) (size!37153 (seqFromList!5939 (_1!33544 lt!2007406))) (_1!33544 lt!2007406)) (_2!33544 lt!2007406))))))

(declare-fun lt!2007408 () Unit!146475)

(assert (=> b!4896432 (= lt!2007408 (longestMatchIsAcceptedByMatchOrIsEmpty!1719 (regex!8177 (h!62866 rulesArg!165)) (list!17733 input!1236)))))

(declare-fun res!2091213 () Bool)

(assert (=> b!4896432 (= res!2091213 (isEmpty!30279 (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) (list!17733 input!1236) (list!17733 input!1236) (size!37154 (list!17733 input!1236))))))))

(declare-fun e!3060835 () Bool)

(assert (=> b!4896432 (=> res!2091213 e!3060835)))

(assert (=> b!4896432 e!3060835))

(declare-fun lt!2007407 () Unit!146475)

(assert (=> b!4896432 (= lt!2007407 lt!2007408)))

(declare-fun lt!2007409 () Unit!146475)

(declare-fun lemmaSemiInverse!2567 (TokenValueInjection!16282 BalanceConc!28920) Unit!146475)

(assert (=> b!4896432 (= lt!2007409 (lemmaSemiInverse!2567 (transformation!8177 (h!62866 rulesArg!165)) (seqFromList!5939 (_1!33544 lt!2007406))))))

(declare-fun b!4896433 () Bool)

(declare-fun res!2091211 () Bool)

(assert (=> b!4896433 (=> (not res!2091211) (not e!3060837))))

(assert (=> b!4896433 (= res!2091211 (< (size!37154 (_2!33540 (get!19486 lt!2007410))) (size!37154 (list!17733 input!1236))))))

(declare-fun b!4896434 () Bool)

(declare-fun e!3060836 () Bool)

(assert (=> b!4896434 (= e!3060836 e!3060837)))

(declare-fun res!2091212 () Bool)

(assert (=> b!4896434 (=> (not res!2091212) (not e!3060837))))

(assert (=> b!4896434 (= res!2091212 (matchR!6533 (regex!8177 (h!62866 rulesArg!165)) (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007410))))))))

(declare-fun d!1573330 () Bool)

(assert (=> d!1573330 e!3060836))

(declare-fun res!2091217 () Bool)

(assert (=> d!1573330 (=> res!2091217 e!3060836)))

(assert (=> d!1573330 (= res!2091217 (isEmpty!30281 lt!2007410))))

(assert (=> d!1573330 (= lt!2007410 e!3060834)))

(declare-fun c!832253 () Bool)

(assert (=> d!1573330 (= c!832253 (isEmpty!30279 (_1!33544 lt!2007406)))))

(declare-fun findLongestMatch!1650 (Regex!13252 List!56540) tuple2!60482)

(assert (=> d!1573330 (= lt!2007406 (findLongestMatch!1650 (regex!8177 (h!62866 rulesArg!165)) (list!17733 input!1236)))))

(assert (=> d!1573330 (ruleValid!3675 thiss!14805 (h!62866 rulesArg!165))))

(assert (=> d!1573330 (= (maxPrefixOneRule!3532 thiss!14805 (h!62866 rulesArg!165) (list!17733 input!1236)) lt!2007410)))

(declare-fun b!4896428 () Bool)

(assert (=> b!4896428 (= e!3060835 (matchR!6533 (regex!8177 (h!62866 rulesArg!165)) (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) (list!17733 input!1236) (list!17733 input!1236) (size!37154 (list!17733 input!1236))))))))

(assert (= (and d!1573330 c!832253) b!4896430))

(assert (= (and d!1573330 (not c!832253)) b!4896432))

(assert (= (and b!4896432 (not res!2091213)) b!4896428))

(assert (= (and d!1573330 (not res!2091217)) b!4896434))

(assert (= (and b!4896434 res!2091212) b!4896426))

(assert (= (and b!4896426 res!2091215) b!4896433))

(assert (= (and b!4896433 res!2091211) b!4896427))

(assert (= (and b!4896427 res!2091216) b!4896429))

(assert (= (and b!4896429 res!2091214) b!4896431))

(declare-fun m!5903072 () Bool)

(assert (=> d!1573330 m!5903072))

(declare-fun m!5903074 () Bool)

(assert (=> d!1573330 m!5903074))

(assert (=> d!1573330 m!5902718))

(declare-fun m!5903076 () Bool)

(assert (=> d!1573330 m!5903076))

(assert (=> d!1573330 m!5902884))

(declare-fun m!5903078 () Bool)

(assert (=> b!4896433 m!5903078))

(declare-fun m!5903080 () Bool)

(assert (=> b!4896433 m!5903080))

(assert (=> b!4896433 m!5902718))

(declare-fun m!5903082 () Bool)

(assert (=> b!4896433 m!5903082))

(assert (=> b!4896428 m!5902842))

(assert (=> b!4896428 m!5902718))

(assert (=> b!4896428 m!5903082))

(assert (=> b!4896428 m!5902842))

(assert (=> b!4896428 m!5902718))

(assert (=> b!4896428 m!5902718))

(assert (=> b!4896428 m!5903082))

(declare-fun m!5903084 () Bool)

(assert (=> b!4896428 m!5903084))

(declare-fun m!5903086 () Bool)

(assert (=> b!4896428 m!5903086))

(assert (=> b!4896427 m!5903078))

(assert (=> b!4896426 m!5903078))

(declare-fun m!5903088 () Bool)

(assert (=> b!4896426 m!5903088))

(assert (=> b!4896426 m!5903088))

(declare-fun m!5903090 () Bool)

(assert (=> b!4896426 m!5903090))

(assert (=> b!4896426 m!5903090))

(declare-fun m!5903092 () Bool)

(assert (=> b!4896426 m!5903092))

(assert (=> b!4896434 m!5903078))

(assert (=> b!4896434 m!5903088))

(assert (=> b!4896434 m!5903088))

(assert (=> b!4896434 m!5903090))

(assert (=> b!4896434 m!5903090))

(declare-fun m!5903094 () Bool)

(assert (=> b!4896434 m!5903094))

(declare-fun m!5903096 () Bool)

(assert (=> b!4896432 m!5903096))

(declare-fun m!5903098 () Bool)

(assert (=> b!4896432 m!5903098))

(assert (=> b!4896432 m!5903096))

(assert (=> b!4896432 m!5902718))

(assert (=> b!4896432 m!5903082))

(assert (=> b!4896432 m!5902842))

(assert (=> b!4896432 m!5902718))

(assert (=> b!4896432 m!5902718))

(assert (=> b!4896432 m!5903082))

(assert (=> b!4896432 m!5903084))

(assert (=> b!4896432 m!5903096))

(declare-fun m!5903100 () Bool)

(assert (=> b!4896432 m!5903100))

(assert (=> b!4896432 m!5902842))

(declare-fun m!5903102 () Bool)

(assert (=> b!4896432 m!5903102))

(assert (=> b!4896432 m!5903096))

(declare-fun m!5903104 () Bool)

(assert (=> b!4896432 m!5903104))

(assert (=> b!4896432 m!5902718))

(declare-fun m!5903106 () Bool)

(assert (=> b!4896432 m!5903106))

(assert (=> b!4896431 m!5903078))

(declare-fun m!5903108 () Bool)

(assert (=> b!4896431 m!5903108))

(assert (=> b!4896429 m!5903078))

(declare-fun m!5903110 () Bool)

(assert (=> b!4896429 m!5903110))

(assert (=> b!4896429 m!5903110))

(declare-fun m!5903112 () Bool)

(assert (=> b!4896429 m!5903112))

(assert (=> d!1573254 d!1573330))

(declare-fun d!1573332 () Bool)

(assert (=> d!1573332 (= (isDefined!11045 lt!2007292) (not (isEmpty!30282 lt!2007292)))))

(declare-fun bs!1176374 () Bool)

(assert (= bs!1176374 d!1573332))

(declare-fun m!5903114 () Bool)

(assert (=> bs!1176374 m!5903114))

(assert (=> d!1573254 d!1573332))

(assert (=> d!1573254 d!1573276))

(declare-fun d!1573334 () Bool)

(declare-fun lt!2007413 () Bool)

(assert (=> d!1573334 (= lt!2007413 (isEmpty!30279 (list!17733 (_1!33543 lt!2007293))))))

(declare-fun isEmpty!30287 (Conc!14745) Bool)

(assert (=> d!1573334 (= lt!2007413 (isEmpty!30287 (c!832216 (_1!33543 lt!2007293))))))

(assert (=> d!1573334 (= (isEmpty!30280 (_1!33543 lt!2007293)) lt!2007413)))

(declare-fun bs!1176375 () Bool)

(assert (= bs!1176375 d!1573334))

(assert (=> bs!1176375 m!5902868))

(assert (=> bs!1176375 m!5902868))

(declare-fun m!5903116 () Bool)

(assert (=> bs!1176375 m!5903116))

(declare-fun m!5903118 () Bool)

(assert (=> bs!1176375 m!5903118))

(assert (=> d!1573254 d!1573334))

(declare-fun d!1573336 () Bool)

(declare-fun lt!2007416 () tuple2!60480)

(assert (=> d!1573336 (= (tuple2!60483 (list!17733 (_1!33543 lt!2007416)) (list!17733 (_2!33543 lt!2007416))) (findLongestMatch!1650 (regex!8177 (h!62866 rulesArg!165)) (list!17733 input!1236)))))

(declare-fun choose!35752 (Regex!13252 BalanceConc!28920) tuple2!60480)

(assert (=> d!1573336 (= lt!2007416 (choose!35752 (regex!8177 (h!62866 rulesArg!165)) input!1236))))

(assert (=> d!1573336 (validRegex!5885 (regex!8177 (h!62866 rulesArg!165)))))

(assert (=> d!1573336 (= (findLongestMatchWithZipperSequence!271 (regex!8177 (h!62866 rulesArg!165)) input!1236) lt!2007416)))

(declare-fun bs!1176376 () Bool)

(assert (= bs!1176376 d!1573336))

(declare-fun m!5903120 () Bool)

(assert (=> bs!1176376 m!5903120))

(assert (=> bs!1176376 m!5902718))

(declare-fun m!5903122 () Bool)

(assert (=> bs!1176376 m!5903122))

(declare-fun m!5903124 () Bool)

(assert (=> bs!1176376 m!5903124))

(assert (=> bs!1176376 m!5903066))

(assert (=> bs!1176376 m!5902718))

(assert (=> bs!1176376 m!5903076))

(assert (=> d!1573254 d!1573336))

(assert (=> b!4896177 d!1573332))

(declare-fun d!1573338 () Bool)

(assert (=> d!1573338 true))

(declare-fun lambda!244097 () Int)

(declare-fun order!25507 () Int)

(declare-fun dynLambda!22659 (Int Int) Int)

(assert (=> d!1573338 (< (dynLambda!22653 order!25495 (toValue!11076 (transformation!8177 (h!62866 rulesArg!165)))) (dynLambda!22659 order!25507 lambda!244097))))

(declare-fun Forall2!1270 (Int) Bool)

(assert (=> d!1573338 (= (equivClasses!3468 (toChars!10935 (transformation!8177 (h!62866 rulesArg!165))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165)))) (Forall2!1270 lambda!244097))))

(declare-fun bs!1176377 () Bool)

(assert (= bs!1176377 d!1573338))

(declare-fun m!5903126 () Bool)

(assert (=> bs!1176377 m!5903126))

(assert (=> b!4896249 d!1573338))

(declare-fun b!4896450 () Bool)

(declare-fun e!3060845 () List!56540)

(assert (=> b!4896450 (= e!3060845 (++!12246 (list!17735 (left!40988 (c!832216 (_2!33539 lt!2007174)))) (list!17735 (right!41318 (c!832216 (_2!33539 lt!2007174))))))))

(declare-fun b!4896449 () Bool)

(declare-fun list!17737 (IArray!29551) List!56540)

(assert (=> b!4896449 (= e!3060845 (list!17737 (xs!18061 (c!832216 (_2!33539 lt!2007174)))))))

(declare-fun b!4896447 () Bool)

(declare-fun e!3060844 () List!56540)

(assert (=> b!4896447 (= e!3060844 Nil!56416)))

(declare-fun b!4896448 () Bool)

(assert (=> b!4896448 (= e!3060844 e!3060845)))

(declare-fun c!832259 () Bool)

(assert (=> b!4896448 (= c!832259 (is-Leaf!24551 (c!832216 (_2!33539 lt!2007174))))))

(declare-fun d!1573340 () Bool)

(declare-fun c!832258 () Bool)

(assert (=> d!1573340 (= c!832258 (is-Empty!14745 (c!832216 (_2!33539 lt!2007174))))))

(assert (=> d!1573340 (= (list!17735 (c!832216 (_2!33539 lt!2007174))) e!3060844)))

(assert (= (and d!1573340 c!832258) b!4896447))

(assert (= (and d!1573340 (not c!832258)) b!4896448))

(assert (= (and b!4896448 c!832259) b!4896449))

(assert (= (and b!4896448 (not c!832259)) b!4896450))

(declare-fun m!5903128 () Bool)

(assert (=> b!4896450 m!5903128))

(declare-fun m!5903130 () Bool)

(assert (=> b!4896450 m!5903130))

(assert (=> b!4896450 m!5903128))

(assert (=> b!4896450 m!5903130))

(declare-fun m!5903132 () Bool)

(assert (=> b!4896450 m!5903132))

(declare-fun m!5903134 () Bool)

(assert (=> b!4896449 m!5903134))

(assert (=> d!1573268 d!1573340))

(declare-fun bs!1176378 () Bool)

(declare-fun d!1573342 () Bool)

(assert (= bs!1176378 (and d!1573342 d!1573304)))

(declare-fun lambda!244098 () Int)

(assert (=> bs!1176378 (= lambda!244098 lambda!244089)))

(assert (=> d!1573342 true))

(declare-fun lt!2007417 () Bool)

(assert (=> d!1573342 (= lt!2007417 (forall!13093 (t!366076 rulesArg!165) lambda!244098))))

(declare-fun e!3060846 () Bool)

(assert (=> d!1573342 (= lt!2007417 e!3060846)))

(declare-fun res!2091226 () Bool)

(assert (=> d!1573342 (=> res!2091226 e!3060846)))

(assert (=> d!1573342 (= res!2091226 (not (is-Cons!56418 (t!366076 rulesArg!165))))))

(assert (=> d!1573342 (= (rulesValidInductive!3156 thiss!14805 (t!366076 rulesArg!165)) lt!2007417)))

(declare-fun b!4896451 () Bool)

(declare-fun e!3060847 () Bool)

(assert (=> b!4896451 (= e!3060846 e!3060847)))

(declare-fun res!2091227 () Bool)

(assert (=> b!4896451 (=> (not res!2091227) (not e!3060847))))

(assert (=> b!4896451 (= res!2091227 (ruleValid!3675 thiss!14805 (h!62866 (t!366076 rulesArg!165))))))

(declare-fun b!4896452 () Bool)

(assert (=> b!4896452 (= e!3060847 (rulesValidInductive!3156 thiss!14805 (t!366076 (t!366076 rulesArg!165))))))

(assert (= (and d!1573342 (not res!2091226)) b!4896451))

(assert (= (and b!4896451 res!2091227) b!4896452))

(declare-fun m!5903136 () Bool)

(assert (=> d!1573342 m!5903136))

(declare-fun m!5903138 () Bool)

(assert (=> b!4896451 m!5903138))

(declare-fun m!5903140 () Bool)

(assert (=> b!4896452 m!5903140))

(assert (=> d!1573246 d!1573342))

(declare-fun d!1573344 () Bool)

(assert (=> d!1573344 (isPrefix!4897 lt!2007234 lt!2007233)))

(declare-fun lt!2007418 () Unit!146475)

(assert (=> d!1573344 (= lt!2007418 (choose!35750 lt!2007234 lt!2007233))))

(assert (=> d!1573344 (= (lemmaIsPrefixRefl!3294 lt!2007234 lt!2007233) lt!2007418)))

(declare-fun bs!1176379 () Bool)

(assert (= bs!1176379 d!1573344))

(assert (=> bs!1176379 m!5902802))

(declare-fun m!5903142 () Bool)

(assert (=> bs!1176379 m!5903142))

(assert (=> d!1573246 d!1573344))

(declare-fun d!1573346 () Bool)

(assert (=> d!1573346 (= (isDefined!11044 (maxPrefixZipper!676 thiss!14805 (t!366076 rulesArg!165) (list!17733 input!1236))) (not (isEmpty!30281 (maxPrefixZipper!676 thiss!14805 (t!366076 rulesArg!165) (list!17733 input!1236)))))))

(declare-fun bs!1176380 () Bool)

(assert (= bs!1176380 d!1573346))

(assert (=> bs!1176380 m!5902784))

(declare-fun m!5903144 () Bool)

(assert (=> bs!1176380 m!5903144))

(assert (=> d!1573246 d!1573346))

(declare-fun d!1573348 () Bool)

(declare-fun lt!2007421 () Option!14031)

(assert (=> d!1573348 (= lt!2007421 (maxPrefix!4606 thiss!14805 (t!366076 rulesArg!165) (list!17733 input!1236)))))

(declare-fun e!3060848 () Option!14031)

(assert (=> d!1573348 (= lt!2007421 e!3060848)))

(declare-fun c!832260 () Bool)

(assert (=> d!1573348 (= c!832260 (and (is-Cons!56418 (t!366076 rulesArg!165)) (is-Nil!56418 (t!366076 (t!366076 rulesArg!165)))))))

(declare-fun lt!2007419 () Unit!146475)

(declare-fun lt!2007422 () Unit!146475)

(assert (=> d!1573348 (= lt!2007419 lt!2007422)))

(assert (=> d!1573348 (isPrefix!4897 (list!17733 input!1236) (list!17733 input!1236))))

(assert (=> d!1573348 (= lt!2007422 (lemmaIsPrefixRefl!3294 (list!17733 input!1236) (list!17733 input!1236)))))

(assert (=> d!1573348 (rulesValidInductive!3156 thiss!14805 (t!366076 rulesArg!165))))

(assert (=> d!1573348 (= (maxPrefixZipper!676 thiss!14805 (t!366076 rulesArg!165) (list!17733 input!1236)) lt!2007421)))

(declare-fun call!339657 () Option!14031)

(declare-fun bm!339652 () Bool)

(assert (=> bm!339652 (= call!339657 (maxPrefixOneRuleZipper!261 thiss!14805 (h!62866 (t!366076 rulesArg!165)) (list!17733 input!1236)))))

(declare-fun b!4896453 () Bool)

(assert (=> b!4896453 (= e!3060848 call!339657)))

(declare-fun b!4896454 () Bool)

(declare-fun lt!2007420 () Option!14031)

(declare-fun lt!2007423 () Option!14031)

(assert (=> b!4896454 (= e!3060848 (ite (and (is-None!14030 lt!2007420) (is-None!14030 lt!2007423)) None!14030 (ite (is-None!14030 lt!2007423) lt!2007420 (ite (is-None!14030 lt!2007420) lt!2007423 (ite (>= (size!37151 (_1!33540 (v!49986 lt!2007420))) (size!37151 (_1!33540 (v!49986 lt!2007423)))) lt!2007420 lt!2007423)))))))

(assert (=> b!4896454 (= lt!2007420 call!339657)))

(assert (=> b!4896454 (= lt!2007423 (maxPrefixZipper!676 thiss!14805 (t!366076 (t!366076 rulesArg!165)) (list!17733 input!1236)))))

(assert (= (and d!1573348 c!832260) b!4896453))

(assert (= (and d!1573348 (not c!832260)) b!4896454))

(assert (= (or b!4896453 b!4896454) bm!339652))

(assert (=> d!1573348 m!5902718))

(assert (=> d!1573348 m!5902788))

(assert (=> d!1573348 m!5902718))

(assert (=> d!1573348 m!5902718))

(declare-fun m!5903146 () Bool)

(assert (=> d!1573348 m!5903146))

(assert (=> d!1573348 m!5902718))

(assert (=> d!1573348 m!5902718))

(declare-fun m!5903148 () Bool)

(assert (=> d!1573348 m!5903148))

(assert (=> d!1573348 m!5902798))

(assert (=> bm!339652 m!5902718))

(declare-fun m!5903150 () Bool)

(assert (=> bm!339652 m!5903150))

(assert (=> b!4896454 m!5902718))

(declare-fun m!5903152 () Bool)

(assert (=> b!4896454 m!5903152))

(assert (=> d!1573246 d!1573348))

(assert (=> d!1573246 d!1573276))

(declare-fun d!1573350 () Bool)

(assert (=> d!1573350 (= (isDefined!11045 lt!2007235) (not (isEmpty!30282 lt!2007235)))))

(declare-fun bs!1176381 () Bool)

(assert (= bs!1176381 d!1573350))

(declare-fun m!5903154 () Bool)

(assert (=> bs!1176381 m!5903154))

(assert (=> d!1573246 d!1573350))

(declare-fun b!4896456 () Bool)

(declare-fun res!2091231 () Bool)

(declare-fun e!3060851 () Bool)

(assert (=> b!4896456 (=> (not res!2091231) (not e!3060851))))

(assert (=> b!4896456 (= res!2091231 (= (head!10458 lt!2007234) (head!10458 lt!2007233)))))

(declare-fun b!4896457 () Bool)

(assert (=> b!4896457 (= e!3060851 (isPrefix!4897 (tail!9604 lt!2007234) (tail!9604 lt!2007233)))))

(declare-fun d!1573352 () Bool)

(declare-fun e!3060850 () Bool)

(assert (=> d!1573352 e!3060850))

(declare-fun res!2091229 () Bool)

(assert (=> d!1573352 (=> res!2091229 e!3060850)))

(declare-fun lt!2007424 () Bool)

(assert (=> d!1573352 (= res!2091229 (not lt!2007424))))

(declare-fun e!3060849 () Bool)

(assert (=> d!1573352 (= lt!2007424 e!3060849)))

(declare-fun res!2091230 () Bool)

(assert (=> d!1573352 (=> res!2091230 e!3060849)))

(assert (=> d!1573352 (= res!2091230 (is-Nil!56416 lt!2007234))))

(assert (=> d!1573352 (= (isPrefix!4897 lt!2007234 lt!2007233) lt!2007424)))

(declare-fun b!4896455 () Bool)

(assert (=> b!4896455 (= e!3060849 e!3060851)))

(declare-fun res!2091232 () Bool)

(assert (=> b!4896455 (=> (not res!2091232) (not e!3060851))))

(assert (=> b!4896455 (= res!2091232 (not (is-Nil!56416 lt!2007233)))))

(declare-fun b!4896458 () Bool)

(assert (=> b!4896458 (= e!3060850 (>= (size!37154 lt!2007233) (size!37154 lt!2007234)))))

(assert (= (and d!1573352 (not res!2091230)) b!4896455))

(assert (= (and b!4896455 res!2091232) b!4896456))

(assert (= (and b!4896456 res!2091231) b!4896457))

(assert (= (and d!1573352 (not res!2091229)) b!4896458))

(declare-fun m!5903156 () Bool)

(assert (=> b!4896456 m!5903156))

(declare-fun m!5903158 () Bool)

(assert (=> b!4896456 m!5903158))

(declare-fun m!5903160 () Bool)

(assert (=> b!4896457 m!5903160))

(declare-fun m!5903162 () Bool)

(assert (=> b!4896457 m!5903162))

(assert (=> b!4896457 m!5903160))

(assert (=> b!4896457 m!5903162))

(declare-fun m!5903164 () Bool)

(assert (=> b!4896457 m!5903164))

(declare-fun m!5903166 () Bool)

(assert (=> b!4896458 m!5903166))

(declare-fun m!5903168 () Bool)

(assert (=> b!4896458 m!5903168))

(assert (=> d!1573246 d!1573352))

(declare-fun bs!1176382 () Bool)

(declare-fun d!1573354 () Bool)

(assert (= bs!1176382 (and d!1573354 d!1573338)))

(declare-fun lambda!244101 () Int)

(assert (=> bs!1176382 (= lambda!244101 lambda!244097)))

(declare-fun b!4896465 () Bool)

(declare-fun e!3060856 () Bool)

(assert (=> b!4896465 (= e!3060856 true)))

(assert (=> d!1573354 e!3060856))

(assert (= d!1573354 b!4896465))

(assert (=> b!4896465 (< (dynLambda!22653 order!25495 (toValue!11076 (transformation!8177 (h!62866 rulesArg!165)))) (dynLambda!22659 order!25507 lambda!244101))))

(assert (=> b!4896465 (< (dynLambda!22655 order!25499 (toChars!10935 (transformation!8177 (h!62866 rulesArg!165)))) (dynLambda!22659 order!25507 lambda!244101))))

(declare-fun dynLambda!22660 (Int BalanceConc!28920) TokenValue!8487)

(assert (=> d!1573354 (= (dynLambda!22660 (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))) (_1!33543 lt!2007293)) (dynLambda!22660 (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))) (seqFromList!5939 (list!17733 (_1!33543 lt!2007293)))))))

(declare-fun lt!2007427 () Unit!146475)

(declare-fun Forall2of!449 (Int BalanceConc!28920 BalanceConc!28920) Unit!146475)

(assert (=> d!1573354 (= lt!2007427 (Forall2of!449 lambda!244101 (_1!33543 lt!2007293) (seqFromList!5939 (list!17733 (_1!33543 lt!2007293)))))))

(assert (=> d!1573354 (= (list!17733 (_1!33543 lt!2007293)) (list!17733 (seqFromList!5939 (list!17733 (_1!33543 lt!2007293)))))))

(assert (=> d!1573354 (= (lemmaEqSameImage!1093 (transformation!8177 (h!62866 rulesArg!165)) (_1!33543 lt!2007293) (seqFromList!5939 (list!17733 (_1!33543 lt!2007293)))) lt!2007427)))

(declare-fun b_lambda!194721 () Bool)

(assert (=> (not b_lambda!194721) (not d!1573354)))

(declare-fun t!366082 () Bool)

(declare-fun tb!259307 () Bool)

(assert (=> (and b!4896051 (= (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165)))) t!366082) tb!259307))

(declare-fun result!322906 () Bool)

(declare-fun inv!21 (TokenValue!8487) Bool)

(assert (=> tb!259307 (= result!322906 (inv!21 (dynLambda!22660 (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))) (_1!33543 lt!2007293))))))

(declare-fun m!5903170 () Bool)

(assert (=> tb!259307 m!5903170))

(assert (=> d!1573354 t!366082))

(declare-fun b_and!345399 () Bool)

(assert (= b_and!345383 (and (=> t!366082 result!322906) b_and!345399)))

(declare-fun t!366084 () Bool)

(declare-fun tb!259309 () Bool)

(assert (=> (and b!4896285 (= (toValue!11076 (transformation!8177 (h!62866 (t!366076 rulesArg!165)))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165)))) t!366084) tb!259309))

(declare-fun result!322910 () Bool)

(assert (= result!322910 result!322906))

(assert (=> d!1573354 t!366084))

(declare-fun b_and!345401 () Bool)

(assert (= b_and!345391 (and (=> t!366084 result!322910) b_and!345401)))

(declare-fun b_lambda!194723 () Bool)

(assert (=> (not b_lambda!194723) (not d!1573354)))

(declare-fun t!366086 () Bool)

(declare-fun tb!259311 () Bool)

(assert (=> (and b!4896051 (= (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165)))) t!366086) tb!259311))

(declare-fun result!322912 () Bool)

(assert (=> tb!259311 (= result!322912 (inv!21 (dynLambda!22660 (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))) (seqFromList!5939 (list!17733 (_1!33543 lt!2007293))))))))

(declare-fun m!5903172 () Bool)

(assert (=> tb!259311 m!5903172))

(assert (=> d!1573354 t!366086))

(declare-fun b_and!345403 () Bool)

(assert (= b_and!345399 (and (=> t!366086 result!322912) b_and!345403)))

(declare-fun t!366088 () Bool)

(declare-fun tb!259313 () Bool)

(assert (=> (and b!4896285 (= (toValue!11076 (transformation!8177 (h!62866 (t!366076 rulesArg!165)))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165)))) t!366088) tb!259313))

(declare-fun result!322914 () Bool)

(assert (= result!322914 result!322912))

(assert (=> d!1573354 t!366088))

(declare-fun b_and!345405 () Bool)

(assert (= b_and!345401 (and (=> t!366088 result!322914) b_and!345405)))

(declare-fun m!5903174 () Bool)

(assert (=> d!1573354 m!5903174))

(assert (=> d!1573354 m!5902868))

(assert (=> d!1573354 m!5902864))

(declare-fun m!5903176 () Bool)

(assert (=> d!1573354 m!5903176))

(assert (=> d!1573354 m!5902864))

(declare-fun m!5903178 () Bool)

(assert (=> d!1573354 m!5903178))

(assert (=> d!1573354 m!5902864))

(declare-fun m!5903180 () Bool)

(assert (=> d!1573354 m!5903180))

(assert (=> b!4896175 d!1573354))

(declare-fun b!4896496 () Bool)

(declare-fun e!3060879 () tuple2!60482)

(assert (=> b!4896496 (= e!3060879 (tuple2!60483 Nil!56416 lt!2007290))))

(declare-fun b!4896497 () Bool)

(declare-fun e!3060878 () tuple2!60482)

(declare-fun call!339681 () tuple2!60482)

(assert (=> b!4896497 (= e!3060878 call!339681)))

(declare-fun b!4896498 () Bool)

(declare-fun e!3060880 () Bool)

(declare-fun lt!2007510 () tuple2!60482)

(assert (=> b!4896498 (= e!3060880 (>= (size!37154 (_1!33544 lt!2007510)) (size!37154 Nil!56416)))))

(declare-fun b!4896499 () Bool)

(declare-fun e!3060883 () Bool)

(assert (=> b!4896499 (= e!3060883 e!3060880)))

(declare-fun res!2091258 () Bool)

(assert (=> b!4896499 (=> res!2091258 e!3060880)))

(assert (=> b!4896499 (= res!2091258 (isEmpty!30279 (_1!33544 lt!2007510)))))

(declare-fun b!4896500 () Bool)

(declare-fun e!3060877 () tuple2!60482)

(assert (=> b!4896500 (= e!3060877 (tuple2!60483 Nil!56416 lt!2007290))))

(declare-fun b!4896501 () Bool)

(declare-fun e!3060881 () Unit!146475)

(declare-fun Unit!146480 () Unit!146475)

(assert (=> b!4896501 (= e!3060881 Unit!146480)))

(declare-fun lt!2007494 () Unit!146475)

(declare-fun call!339674 () Unit!146475)

(assert (=> b!4896501 (= lt!2007494 call!339674)))

(declare-fun call!339680 () Bool)

(assert (=> b!4896501 call!339680))

(declare-fun lt!2007506 () Unit!146475)

(assert (=> b!4896501 (= lt!2007506 lt!2007494)))

(declare-fun lt!2007511 () Unit!146475)

(declare-fun call!339675 () Unit!146475)

(assert (=> b!4896501 (= lt!2007511 call!339675)))

(assert (=> b!4896501 (= lt!2007290 Nil!56416)))

(declare-fun lt!2007502 () Unit!146475)

(assert (=> b!4896501 (= lt!2007502 lt!2007511)))

(assert (=> b!4896501 false))

(declare-fun b!4896502 () Bool)

(declare-fun Unit!146481 () Unit!146475)

(assert (=> b!4896502 (= e!3060881 Unit!146481)))

(declare-fun b!4896503 () Bool)

(declare-fun e!3060884 () tuple2!60482)

(declare-fun lt!2007500 () tuple2!60482)

(assert (=> b!4896503 (= e!3060884 lt!2007500)))

(declare-fun bm!339669 () Bool)

(declare-fun call!339676 () List!56540)

(declare-fun call!339678 () Regex!13252)

(declare-fun lt!2007509 () List!56540)

(assert (=> bm!339669 (= call!339681 (findLongestMatchInner!1756 call!339678 lt!2007509 (+ (size!37154 Nil!56416) 1) call!339676 lt!2007290 (size!37154 lt!2007290)))))

(declare-fun bm!339670 () Bool)

(assert (=> bm!339670 (= call!339674 (lemmaIsPrefixRefl!3294 lt!2007290 lt!2007290))))

(declare-fun bm!339671 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1060 (List!56540 List!56540 List!56540) Unit!146475)

(assert (=> bm!339671 (= call!339675 (lemmaIsPrefixSameLengthThenSameList!1060 lt!2007290 Nil!56416 lt!2007290))))

(declare-fun d!1573356 () Bool)

(assert (=> d!1573356 e!3060883))

(declare-fun res!2091259 () Bool)

(assert (=> d!1573356 (=> (not res!2091259) (not e!3060883))))

(assert (=> d!1573356 (= res!2091259 (= (++!12246 (_1!33544 lt!2007510) (_2!33544 lt!2007510)) lt!2007290))))

(assert (=> d!1573356 (= lt!2007510 e!3060879)))

(declare-fun c!832277 () Bool)

(declare-fun lostCause!1088 (Regex!13252) Bool)

(assert (=> d!1573356 (= c!832277 (lostCause!1088 (regex!8177 (h!62866 rulesArg!165))))))

(declare-fun lt!2007486 () Unit!146475)

(declare-fun Unit!146482 () Unit!146475)

(assert (=> d!1573356 (= lt!2007486 Unit!146482)))

(declare-fun getSuffix!2889 (List!56540 List!56540) List!56540)

(assert (=> d!1573356 (= (getSuffix!2889 lt!2007290 Nil!56416) lt!2007290)))

(declare-fun lt!2007490 () Unit!146475)

(declare-fun lt!2007498 () Unit!146475)

(assert (=> d!1573356 (= lt!2007490 lt!2007498)))

(declare-fun lt!2007488 () List!56540)

(assert (=> d!1573356 (= lt!2007290 lt!2007488)))

(declare-fun lemmaSamePrefixThenSameSuffix!2305 (List!56540 List!56540 List!56540 List!56540 List!56540) Unit!146475)

(assert (=> d!1573356 (= lt!2007498 (lemmaSamePrefixThenSameSuffix!2305 Nil!56416 lt!2007290 Nil!56416 lt!2007488 lt!2007290))))

(assert (=> d!1573356 (= lt!2007488 (getSuffix!2889 lt!2007290 Nil!56416))))

(declare-fun lt!2007492 () Unit!146475)

(declare-fun lt!2007504 () Unit!146475)

(assert (=> d!1573356 (= lt!2007492 lt!2007504)))

(assert (=> d!1573356 (isPrefix!4897 Nil!56416 (++!12246 Nil!56416 lt!2007290))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3125 (List!56540 List!56540) Unit!146475)

(assert (=> d!1573356 (= lt!2007504 (lemmaConcatTwoListThenFirstIsPrefix!3125 Nil!56416 lt!2007290))))

(assert (=> d!1573356 (validRegex!5885 (regex!8177 (h!62866 rulesArg!165)))))

(assert (=> d!1573356 (= (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007290 lt!2007290 (size!37154 lt!2007290)) lt!2007510)))

(declare-fun bm!339672 () Bool)

(assert (=> bm!339672 (= call!339676 (tail!9604 lt!2007290))))

(declare-fun b!4896504 () Bool)

(assert (=> b!4896504 (= e!3060884 (tuple2!60483 Nil!56416 lt!2007290))))

(declare-fun bm!339673 () Bool)

(declare-fun call!339679 () C!26702)

(assert (=> bm!339673 (= call!339679 (head!10458 lt!2007290))))

(declare-fun b!4896505 () Bool)

(assert (=> b!4896505 (= e!3060878 e!3060884)))

(assert (=> b!4896505 (= lt!2007500 call!339681)))

(declare-fun c!832273 () Bool)

(assert (=> b!4896505 (= c!832273 (isEmpty!30279 (_1!33544 lt!2007500)))))

(declare-fun b!4896506 () Bool)

(declare-fun e!3060882 () tuple2!60482)

(assert (=> b!4896506 (= e!3060879 e!3060882)))

(declare-fun c!832275 () Bool)

(assert (=> b!4896506 (= c!832275 (= (size!37154 Nil!56416) (size!37154 lt!2007290)))))

(declare-fun bm!339674 () Bool)

(declare-fun derivativeStep!3880 (Regex!13252 C!26702) Regex!13252)

(assert (=> bm!339674 (= call!339678 (derivativeStep!3880 (regex!8177 (h!62866 rulesArg!165)) call!339679))))

(declare-fun b!4896507 () Bool)

(declare-fun c!832274 () Bool)

(declare-fun call!339677 () Bool)

(assert (=> b!4896507 (= c!832274 call!339677)))

(declare-fun lt!2007499 () Unit!146475)

(declare-fun lt!2007496 () Unit!146475)

(assert (=> b!4896507 (= lt!2007499 lt!2007496)))

(declare-fun lt!2007485 () C!26702)

(declare-fun lt!2007484 () List!56540)

(assert (=> b!4896507 (= (++!12246 (++!12246 Nil!56416 (Cons!56416 lt!2007485 Nil!56416)) lt!2007484) lt!2007290)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1332 (List!56540 C!26702 List!56540 List!56540) Unit!146475)

(assert (=> b!4896507 (= lt!2007496 (lemmaMoveElementToOtherListKeepsConcatEq!1332 Nil!56416 lt!2007485 lt!2007484 lt!2007290))))

(assert (=> b!4896507 (= lt!2007484 (tail!9604 lt!2007290))))

(assert (=> b!4896507 (= lt!2007485 (head!10458 lt!2007290))))

(declare-fun lt!2007489 () Unit!146475)

(declare-fun lt!2007508 () Unit!146475)

(assert (=> b!4896507 (= lt!2007489 lt!2007508)))

(assert (=> b!4896507 (isPrefix!4897 (++!12246 Nil!56416 (Cons!56416 (head!10458 (getSuffix!2889 lt!2007290 Nil!56416)) Nil!56416)) lt!2007290)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!714 (List!56540 List!56540) Unit!146475)

(assert (=> b!4896507 (= lt!2007508 (lemmaAddHeadSuffixToPrefixStillPrefix!714 Nil!56416 lt!2007290))))

(declare-fun lt!2007497 () Unit!146475)

(declare-fun lt!2007503 () Unit!146475)

(assert (=> b!4896507 (= lt!2007497 lt!2007503)))

(assert (=> b!4896507 (= lt!2007503 (lemmaAddHeadSuffixToPrefixStillPrefix!714 Nil!56416 lt!2007290))))

(assert (=> b!4896507 (= lt!2007509 (++!12246 Nil!56416 (Cons!56416 (head!10458 lt!2007290) Nil!56416)))))

(declare-fun lt!2007495 () Unit!146475)

(assert (=> b!4896507 (= lt!2007495 e!3060881)))

(declare-fun c!832276 () Bool)

(assert (=> b!4896507 (= c!832276 (= (size!37154 Nil!56416) (size!37154 lt!2007290)))))

(declare-fun lt!2007491 () Unit!146475)

(declare-fun lt!2007505 () Unit!146475)

(assert (=> b!4896507 (= lt!2007491 lt!2007505)))

(assert (=> b!4896507 (<= (size!37154 Nil!56416) (size!37154 lt!2007290))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!626 (List!56540 List!56540) Unit!146475)

(assert (=> b!4896507 (= lt!2007505 (lemmaIsPrefixThenSmallerEqSize!626 Nil!56416 lt!2007290))))

(assert (=> b!4896507 (= e!3060882 e!3060878)))

(declare-fun b!4896508 () Bool)

(assert (=> b!4896508 (= e!3060877 (tuple2!60483 Nil!56416 Nil!56416))))

(declare-fun bm!339675 () Bool)

(assert (=> bm!339675 (= call!339677 (nullable!4558 (regex!8177 (h!62866 rulesArg!165))))))

(declare-fun bm!339676 () Bool)

(assert (=> bm!339676 (= call!339680 (isPrefix!4897 lt!2007290 lt!2007290))))

(declare-fun b!4896509 () Bool)

(declare-fun c!832278 () Bool)

(assert (=> b!4896509 (= c!832278 call!339677)))

(declare-fun lt!2007507 () Unit!146475)

(declare-fun lt!2007493 () Unit!146475)

(assert (=> b!4896509 (= lt!2007507 lt!2007493)))

(assert (=> b!4896509 (= lt!2007290 Nil!56416)))

(assert (=> b!4896509 (= lt!2007493 call!339675)))

(declare-fun lt!2007501 () Unit!146475)

(declare-fun lt!2007487 () Unit!146475)

(assert (=> b!4896509 (= lt!2007501 lt!2007487)))

(assert (=> b!4896509 call!339680))

(assert (=> b!4896509 (= lt!2007487 call!339674)))

(assert (=> b!4896509 (= e!3060882 e!3060877)))

(assert (= (and d!1573356 c!832277) b!4896496))

(assert (= (and d!1573356 (not c!832277)) b!4896506))

(assert (= (and b!4896506 c!832275) b!4896509))

(assert (= (and b!4896506 (not c!832275)) b!4896507))

(assert (= (and b!4896509 c!832278) b!4896508))

(assert (= (and b!4896509 (not c!832278)) b!4896500))

(assert (= (and b!4896507 c!832276) b!4896501))

(assert (= (and b!4896507 (not c!832276)) b!4896502))

(assert (= (and b!4896507 c!832274) b!4896505))

(assert (= (and b!4896507 (not c!832274)) b!4896497))

(assert (= (and b!4896505 c!832273) b!4896504))

(assert (= (and b!4896505 (not c!832273)) b!4896503))

(assert (= (or b!4896505 b!4896497) bm!339672))

(assert (= (or b!4896505 b!4896497) bm!339673))

(assert (= (or b!4896505 b!4896497) bm!339674))

(assert (= (or b!4896505 b!4896497) bm!339669))

(assert (= (or b!4896509 b!4896507) bm!339675))

(assert (= (or b!4896509 b!4896501) bm!339670))

(assert (= (or b!4896509 b!4896501) bm!339671))

(assert (= (or b!4896509 b!4896501) bm!339676))

(assert (= (and d!1573356 res!2091259) b!4896499))

(assert (= (and b!4896499 (not res!2091258)) b!4896498))

(declare-fun m!5903182 () Bool)

(assert (=> b!4896499 m!5903182))

(declare-fun m!5903184 () Bool)

(assert (=> bm!339674 m!5903184))

(declare-fun m!5903186 () Bool)

(assert (=> bm!339670 m!5903186))

(declare-fun m!5903188 () Bool)

(assert (=> bm!339671 m!5903188))

(declare-fun m!5903190 () Bool)

(assert (=> b!4896507 m!5903190))

(declare-fun m!5903192 () Bool)

(assert (=> b!4896507 m!5903192))

(declare-fun m!5903194 () Bool)

(assert (=> b!4896507 m!5903194))

(declare-fun m!5903196 () Bool)

(assert (=> b!4896507 m!5903196))

(declare-fun m!5903198 () Bool)

(assert (=> b!4896507 m!5903198))

(declare-fun m!5903200 () Bool)

(assert (=> b!4896507 m!5903200))

(assert (=> b!4896507 m!5903190))

(assert (=> b!4896507 m!5902844))

(declare-fun m!5903202 () Bool)

(assert (=> b!4896507 m!5903202))

(assert (=> b!4896507 m!5902842))

(declare-fun m!5903204 () Bool)

(assert (=> b!4896507 m!5903204))

(assert (=> b!4896507 m!5903200))

(declare-fun m!5903206 () Bool)

(assert (=> b!4896507 m!5903206))

(declare-fun m!5903208 () Bool)

(assert (=> b!4896507 m!5903208))

(declare-fun m!5903210 () Bool)

(assert (=> b!4896507 m!5903210))

(assert (=> b!4896507 m!5903202))

(declare-fun m!5903212 () Bool)

(assert (=> b!4896507 m!5903212))

(declare-fun m!5903214 () Bool)

(assert (=> b!4896505 m!5903214))

(assert (=> bm!339669 m!5902844))

(declare-fun m!5903216 () Bool)

(assert (=> bm!339669 m!5903216))

(assert (=> bm!339672 m!5903198))

(assert (=> bm!339675 m!5903068))

(assert (=> d!1573356 m!5903066))

(declare-fun m!5903218 () Bool)

(assert (=> d!1573356 m!5903218))

(declare-fun m!5903220 () Bool)

(assert (=> d!1573356 m!5903220))

(declare-fun m!5903222 () Bool)

(assert (=> d!1573356 m!5903222))

(declare-fun m!5903224 () Bool)

(assert (=> d!1573356 m!5903224))

(assert (=> d!1573356 m!5903190))

(declare-fun m!5903226 () Bool)

(assert (=> d!1573356 m!5903226))

(assert (=> d!1573356 m!5903224))

(declare-fun m!5903228 () Bool)

(assert (=> d!1573356 m!5903228))

(assert (=> bm!339673 m!5903196))

(declare-fun m!5903230 () Bool)

(assert (=> b!4896498 m!5903230))

(assert (=> b!4896498 m!5902842))

(declare-fun m!5903232 () Bool)

(assert (=> bm!339676 m!5903232))

(assert (=> b!4896175 d!1573356))

(declare-fun d!1573358 () Bool)

(declare-fun e!3060887 () Bool)

(assert (=> d!1573358 e!3060887))

(declare-fun res!2091262 () Bool)

(assert (=> d!1573358 (=> res!2091262 e!3060887)))

(assert (=> d!1573358 (= res!2091262 (isEmpty!30279 (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007290 lt!2007290 (size!37154 lt!2007290)))))))

(declare-fun lt!2007514 () Unit!146475)

(declare-fun choose!35753 (Regex!13252 List!56540) Unit!146475)

(assert (=> d!1573358 (= lt!2007514 (choose!35753 (regex!8177 (h!62866 rulesArg!165)) lt!2007290))))

(assert (=> d!1573358 (validRegex!5885 (regex!8177 (h!62866 rulesArg!165)))))

(assert (=> d!1573358 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1719 (regex!8177 (h!62866 rulesArg!165)) lt!2007290) lt!2007514)))

(declare-fun b!4896512 () Bool)

(assert (=> b!4896512 (= e!3060887 (matchR!6533 (regex!8177 (h!62866 rulesArg!165)) (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007290 lt!2007290 (size!37154 lt!2007290)))))))

(assert (= (and d!1573358 (not res!2091262)) b!4896512))

(assert (=> d!1573358 m!5902842))

(assert (=> d!1573358 m!5902844))

(assert (=> d!1573358 m!5902842))

(assert (=> d!1573358 m!5902844))

(assert (=> d!1573358 m!5902846))

(assert (=> d!1573358 m!5903066))

(declare-fun m!5903234 () Bool)

(assert (=> d!1573358 m!5903234))

(assert (=> d!1573358 m!5902876))

(assert (=> b!4896512 m!5902842))

(assert (=> b!4896512 m!5902844))

(assert (=> b!4896512 m!5902842))

(assert (=> b!4896512 m!5902844))

(assert (=> b!4896512 m!5902846))

(assert (=> b!4896512 m!5902848))

(assert (=> b!4896175 d!1573358))

(declare-fun d!1573360 () Bool)

(assert (=> d!1573360 (= (isEmpty!30279 (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007290 lt!2007290 (size!37154 lt!2007290)))) (is-Nil!56416 (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007290 lt!2007290 (size!37154 lt!2007290)))))))

(assert (=> b!4896175 d!1573360))

(declare-fun d!1573362 () Bool)

(declare-fun dynLambda!22661 (Int BalanceConc!28920) Bool)

(assert (=> d!1573362 (dynLambda!22661 lambda!244083 (_1!33543 lt!2007293))))

(declare-fun lt!2007517 () Unit!146475)

(declare-fun choose!35754 (Int BalanceConc!28920) Unit!146475)

(assert (=> d!1573362 (= lt!2007517 (choose!35754 lambda!244083 (_1!33543 lt!2007293)))))

(declare-fun Forall!1690 (Int) Bool)

(assert (=> d!1573362 (Forall!1690 lambda!244083)))

(assert (=> d!1573362 (= (ForallOf!1136 lambda!244083 (_1!33543 lt!2007293)) lt!2007517)))

(declare-fun b_lambda!194725 () Bool)

(assert (=> (not b_lambda!194725) (not d!1573362)))

(declare-fun bs!1176383 () Bool)

(assert (= bs!1176383 d!1573362))

(declare-fun m!5903236 () Bool)

(assert (=> bs!1176383 m!5903236))

(declare-fun m!5903238 () Bool)

(assert (=> bs!1176383 m!5903238))

(declare-fun m!5903240 () Bool)

(assert (=> bs!1176383 m!5903240))

(assert (=> b!4896175 d!1573362))

(declare-fun d!1573364 () Bool)

(assert (=> d!1573364 (= (apply!13543 (transformation!8177 (h!62866 rulesArg!165)) (_1!33543 lt!2007293)) (dynLambda!22660 (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))) (_1!33543 lt!2007293)))))

(declare-fun b_lambda!194727 () Bool)

(assert (=> (not b_lambda!194727) (not d!1573364)))

(assert (=> d!1573364 t!366082))

(declare-fun b_and!345407 () Bool)

(assert (= b_and!345403 (and (=> t!366082 result!322906) b_and!345407)))

(assert (=> d!1573364 t!366084))

(declare-fun b_and!345409 () Bool)

(assert (= b_and!345405 (and (=> t!366084 result!322910) b_and!345409)))

(assert (=> d!1573364 m!5903174))

(assert (=> b!4896175 d!1573364))

(assert (=> b!4896175 d!1573276))

(declare-fun d!1573366 () Bool)

(declare-fun lt!2007520 () Int)

(assert (=> d!1573366 (>= lt!2007520 0)))

(declare-fun e!3060890 () Int)

(assert (=> d!1573366 (= lt!2007520 e!3060890)))

(declare-fun c!832281 () Bool)

(assert (=> d!1573366 (= c!832281 (is-Nil!56416 Nil!56416))))

(assert (=> d!1573366 (= (size!37154 Nil!56416) lt!2007520)))

(declare-fun b!4896517 () Bool)

(assert (=> b!4896517 (= e!3060890 0)))

(declare-fun b!4896518 () Bool)

(assert (=> b!4896518 (= e!3060890 (+ 1 (size!37154 (t!366074 Nil!56416))))))

(assert (= (and d!1573366 c!832281) b!4896517))

(assert (= (and d!1573366 (not c!832281)) b!4896518))

(declare-fun m!5903242 () Bool)

(assert (=> b!4896518 m!5903242))

(assert (=> b!4896175 d!1573366))

(declare-fun d!1573368 () Bool)

(declare-fun lt!2007521 () Int)

(assert (=> d!1573368 (>= lt!2007521 0)))

(declare-fun e!3060891 () Int)

(assert (=> d!1573368 (= lt!2007521 e!3060891)))

(declare-fun c!832282 () Bool)

(assert (=> d!1573368 (= c!832282 (is-Nil!56416 lt!2007290))))

(assert (=> d!1573368 (= (size!37154 lt!2007290) lt!2007521)))

(declare-fun b!4896519 () Bool)

(assert (=> b!4896519 (= e!3060891 0)))

(declare-fun b!4896520 () Bool)

(assert (=> b!4896520 (= e!3060891 (+ 1 (size!37154 (t!366074 lt!2007290))))))

(assert (= (and d!1573368 c!832282) b!4896519))

(assert (= (and d!1573368 (not c!832282)) b!4896520))

(declare-fun m!5903244 () Bool)

(assert (=> b!4896520 m!5903244))

(assert (=> b!4896175 d!1573368))

(declare-fun d!1573370 () Bool)

(declare-fun fromListB!2694 (List!56540) BalanceConc!28920)

(assert (=> d!1573370 (= (seqFromList!5939 (list!17733 (_1!33543 lt!2007293))) (fromListB!2694 (list!17733 (_1!33543 lt!2007293))))))

(declare-fun bs!1176384 () Bool)

(assert (= bs!1176384 d!1573370))

(assert (=> bs!1176384 m!5902868))

(declare-fun m!5903246 () Bool)

(assert (=> bs!1176384 m!5903246))

(assert (=> b!4896175 d!1573370))

(declare-fun d!1573376 () Bool)

(assert (=> d!1573376 (= (list!17733 (_1!33543 lt!2007293)) (list!17735 (c!832216 (_1!33543 lt!2007293))))))

(declare-fun bs!1176385 () Bool)

(assert (= bs!1176385 d!1573376))

(declare-fun m!5903250 () Bool)

(assert (=> bs!1176385 m!5903250))

(assert (=> b!4896175 d!1573376))

(declare-fun d!1573378 () Bool)

(declare-fun lt!2007524 () Int)

(assert (=> d!1573378 (= lt!2007524 (size!37154 (list!17733 (_1!33543 lt!2007293))))))

(declare-fun size!37157 (Conc!14745) Int)

(assert (=> d!1573378 (= lt!2007524 (size!37157 (c!832216 (_1!33543 lt!2007293))))))

(assert (=> d!1573378 (= (size!37153 (_1!33543 lt!2007293)) lt!2007524)))

(declare-fun bs!1176387 () Bool)

(assert (= bs!1176387 d!1573378))

(assert (=> bs!1176387 m!5902868))

(assert (=> bs!1176387 m!5902868))

(declare-fun m!5903256 () Bool)

(assert (=> bs!1176387 m!5903256))

(declare-fun m!5903258 () Bool)

(assert (=> bs!1176387 m!5903258))

(assert (=> b!4896175 d!1573378))

(declare-fun d!1573386 () Bool)

(declare-fun e!3060901 () Bool)

(assert (=> d!1573386 e!3060901))

(declare-fun res!2091272 () Bool)

(assert (=> d!1573386 (=> (not res!2091272) (not e!3060901))))

(assert (=> d!1573386 (= res!2091272 (semiInverseModEq!3589 (toChars!10935 (transformation!8177 (h!62866 rulesArg!165))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165)))))))

(declare-fun Unit!146483 () Unit!146475)

(assert (=> d!1573386 (= (lemmaInv!1239 (transformation!8177 (h!62866 rulesArg!165))) Unit!146483)))

(declare-fun b!4896530 () Bool)

(assert (=> b!4896530 (= e!3060901 (equivClasses!3468 (toChars!10935 (transformation!8177 (h!62866 rulesArg!165))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165)))))))

(assert (= (and d!1573386 res!2091272) b!4896530))

(assert (=> d!1573386 m!5902954))

(assert (=> b!4896530 m!5902956))

(assert (=> b!4896175 d!1573386))

(declare-fun d!1573392 () Bool)

(assert (=> d!1573392 (dynLambda!22661 lambda!244083 (seqFromList!5939 (list!17733 (_1!33543 lt!2007293))))))

(declare-fun lt!2007528 () Unit!146475)

(assert (=> d!1573392 (= lt!2007528 (choose!35754 lambda!244083 (seqFromList!5939 (list!17733 (_1!33543 lt!2007293)))))))

(assert (=> d!1573392 (Forall!1690 lambda!244083)))

(assert (=> d!1573392 (= (ForallOf!1136 lambda!244083 (seqFromList!5939 (list!17733 (_1!33543 lt!2007293)))) lt!2007528)))

(declare-fun b_lambda!194729 () Bool)

(assert (=> (not b_lambda!194729) (not d!1573392)))

(declare-fun bs!1176388 () Bool)

(assert (= bs!1176388 d!1573392))

(assert (=> bs!1176388 m!5902864))

(declare-fun m!5903266 () Bool)

(assert (=> bs!1176388 m!5903266))

(assert (=> bs!1176388 m!5902864))

(declare-fun m!5903268 () Bool)

(assert (=> bs!1176388 m!5903268))

(assert (=> bs!1176388 m!5903240))

(assert (=> b!4896175 d!1573392))

(assert (=> d!1573274 d!1573272))

(declare-fun d!1573394 () Bool)

(assert (=> d!1573394 (isPrefix!4897 lt!2007181 lt!2007181)))

(assert (=> d!1573394 true))

(declare-fun _$45!2178 () Unit!146475)

(assert (=> d!1573394 (= (choose!35750 lt!2007181 lt!2007181) _$45!2178)))

(declare-fun bs!1176389 () Bool)

(assert (= bs!1176389 d!1573394))

(assert (=> bs!1176389 m!5902714))

(assert (=> d!1573274 d!1573394))

(declare-fun lt!2007563 () Option!14031)

(declare-fun d!1573396 () Bool)

(assert (=> d!1573396 (= lt!2007563 (maxPrefixOneRule!3532 thiss!14805 (h!62866 rulesArg!165) lt!2007181))))

(declare-fun e!3060957 () Option!14031)

(assert (=> d!1573396 (= lt!2007563 e!3060957)))

(declare-fun c!832302 () Bool)

(declare-fun lt!2007562 () tuple2!60482)

(assert (=> d!1573396 (= c!832302 (isEmpty!30279 (_1!33544 lt!2007562)))))

(declare-fun findLongestMatchWithZipper!85 (Regex!13252 List!56540) tuple2!60482)

(assert (=> d!1573396 (= lt!2007562 (findLongestMatchWithZipper!85 (regex!8177 (h!62866 rulesArg!165)) lt!2007181))))

(assert (=> d!1573396 (ruleValid!3675 thiss!14805 (h!62866 rulesArg!165))))

(assert (=> d!1573396 (= (maxPrefixOneRuleZipper!261 thiss!14805 (h!62866 rulesArg!165) lt!2007181) lt!2007563)))

(declare-fun b!4896636 () Bool)

(assert (=> b!4896636 (= e!3060957 None!14030)))

(declare-fun b!4896637 () Bool)

(assert (=> b!4896637 (= e!3060957 (Some!14030 (tuple2!60475 (Token!14919 (apply!13543 (transformation!8177 (h!62866 rulesArg!165)) (seqFromList!5939 (_1!33544 lt!2007562))) (h!62866 rulesArg!165) (size!37154 (_1!33544 lt!2007562)) (_1!33544 lt!2007562)) (_2!33544 lt!2007562))))))

(declare-fun lt!2007560 () Unit!146475)

(assert (=> b!4896637 (= lt!2007560 (longestMatchIsAcceptedByMatchOrIsEmpty!1719 (regex!8177 (h!62866 rulesArg!165)) lt!2007181))))

(declare-fun res!2091336 () Bool)

(assert (=> b!4896637 (= res!2091336 (isEmpty!30279 (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007181 lt!2007181 (size!37154 lt!2007181)))))))

(declare-fun e!3060956 () Bool)

(assert (=> b!4896637 (=> res!2091336 e!3060956)))

(assert (=> b!4896637 e!3060956))

(declare-fun lt!2007559 () Unit!146475)

(assert (=> b!4896637 (= lt!2007559 lt!2007560)))

(declare-fun lt!2007564 () Unit!146475)

(assert (=> b!4896637 (= lt!2007564 (lemmaInv!1239 (transformation!8177 (h!62866 rulesArg!165))))))

(declare-fun lt!2007561 () Unit!146475)

(assert (=> b!4896637 (= lt!2007561 (lemmaSemiInverse!2567 (transformation!8177 (h!62866 rulesArg!165)) (seqFromList!5939 (_1!33544 lt!2007562))))))

(declare-fun b!4896638 () Bool)

(assert (=> b!4896638 (= e!3060956 (matchR!6533 (regex!8177 (h!62866 rulesArg!165)) (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007181 lt!2007181 (size!37154 lt!2007181)))))))

(assert (= (and d!1573396 c!832302) b!4896636))

(assert (= (and d!1573396 (not c!832302)) b!4896637))

(assert (= (and b!4896637 (not res!2091336)) b!4896638))

(assert (=> d!1573396 m!5902932))

(declare-fun m!5903374 () Bool)

(assert (=> d!1573396 m!5903374))

(declare-fun m!5903376 () Bool)

(assert (=> d!1573396 m!5903376))

(assert (=> d!1573396 m!5902884))

(assert (=> b!4896637 m!5902842))

(declare-fun m!5903378 () Bool)

(assert (=> b!4896637 m!5903378))

(declare-fun m!5903380 () Bool)

(assert (=> b!4896637 m!5903380))

(assert (=> b!4896637 m!5902896))

(declare-fun m!5903382 () Bool)

(assert (=> b!4896637 m!5903382))

(declare-fun m!5903384 () Bool)

(assert (=> b!4896637 m!5903384))

(assert (=> b!4896637 m!5903382))

(declare-fun m!5903386 () Bool)

(assert (=> b!4896637 m!5903386))

(declare-fun m!5903388 () Bool)

(assert (=> b!4896637 m!5903388))

(assert (=> b!4896637 m!5902862))

(assert (=> b!4896637 m!5903382))

(assert (=> b!4896637 m!5902842))

(assert (=> b!4896637 m!5902896))

(declare-fun m!5903390 () Bool)

(assert (=> b!4896637 m!5903390))

(assert (=> b!4896638 m!5902842))

(assert (=> b!4896638 m!5902896))

(assert (=> b!4896638 m!5902842))

(assert (=> b!4896638 m!5902896))

(assert (=> b!4896638 m!5903390))

(declare-fun m!5903392 () Bool)

(assert (=> b!4896638 m!5903392))

(assert (=> bm!339645 d!1573396))

(declare-fun d!1573424 () Bool)

(declare-fun res!2091341 () Bool)

(declare-fun e!3060960 () Bool)

(assert (=> d!1573424 (=> (not res!2091341) (not e!3060960))))

(assert (=> d!1573424 (= res!2091341 (<= (size!37154 (list!17737 (xs!18061 (c!832216 input!1236)))) 512))))

(assert (=> d!1573424 (= (inv!72711 (c!832216 input!1236)) e!3060960)))

(declare-fun b!4896643 () Bool)

(declare-fun res!2091342 () Bool)

(assert (=> b!4896643 (=> (not res!2091342) (not e!3060960))))

(assert (=> b!4896643 (= res!2091342 (= (csize!29721 (c!832216 input!1236)) (size!37154 (list!17737 (xs!18061 (c!832216 input!1236))))))))

(declare-fun b!4896644 () Bool)

(assert (=> b!4896644 (= e!3060960 (and (> (csize!29721 (c!832216 input!1236)) 0) (<= (csize!29721 (c!832216 input!1236)) 512)))))

(assert (= (and d!1573424 res!2091341) b!4896643))

(assert (= (and b!4896643 res!2091342) b!4896644))

(declare-fun m!5903394 () Bool)

(assert (=> d!1573424 m!5903394))

(assert (=> d!1573424 m!5903394))

(declare-fun m!5903396 () Bool)

(assert (=> d!1573424 m!5903396))

(assert (=> b!4896643 m!5903394))

(assert (=> b!4896643 m!5903394))

(assert (=> b!4896643 m!5903396))

(assert (=> b!4896262 d!1573424))

(declare-fun d!1573426 () Bool)

(declare-fun res!2091349 () Bool)

(declare-fun e!3060963 () Bool)

(assert (=> d!1573426 (=> (not res!2091349) (not e!3060963))))

(assert (=> d!1573426 (= res!2091349 (= (csize!29720 (c!832216 input!1236)) (+ (size!37157 (left!40988 (c!832216 input!1236))) (size!37157 (right!41318 (c!832216 input!1236))))))))

(assert (=> d!1573426 (= (inv!72710 (c!832216 input!1236)) e!3060963)))

(declare-fun b!4896651 () Bool)

(declare-fun res!2091350 () Bool)

(assert (=> b!4896651 (=> (not res!2091350) (not e!3060963))))

(assert (=> b!4896651 (= res!2091350 (and (not (= (left!40988 (c!832216 input!1236)) Empty!14745)) (not (= (right!41318 (c!832216 input!1236)) Empty!14745))))))

(declare-fun b!4896652 () Bool)

(declare-fun res!2091351 () Bool)

(assert (=> b!4896652 (=> (not res!2091351) (not e!3060963))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1958 (Conc!14745) Int)

(assert (=> b!4896652 (= res!2091351 (= (cheight!14956 (c!832216 input!1236)) (+ (max!0 (height!1958 (left!40988 (c!832216 input!1236))) (height!1958 (right!41318 (c!832216 input!1236)))) 1)))))

(declare-fun b!4896653 () Bool)

(assert (=> b!4896653 (= e!3060963 (<= 0 (cheight!14956 (c!832216 input!1236))))))

(assert (= (and d!1573426 res!2091349) b!4896651))

(assert (= (and b!4896651 res!2091350) b!4896652))

(assert (= (and b!4896652 res!2091351) b!4896653))

(declare-fun m!5903398 () Bool)

(assert (=> d!1573426 m!5903398))

(declare-fun m!5903400 () Bool)

(assert (=> d!1573426 m!5903400))

(declare-fun m!5903402 () Bool)

(assert (=> b!4896652 m!5903402))

(declare-fun m!5903404 () Bool)

(assert (=> b!4896652 m!5903404))

(assert (=> b!4896652 m!5903402))

(assert (=> b!4896652 m!5903404))

(declare-fun m!5903406 () Bool)

(assert (=> b!4896652 m!5903406))

(assert (=> b!4896260 d!1573426))

(declare-fun b!4896657 () Bool)

(declare-fun e!3060965 () List!56540)

(assert (=> b!4896657 (= e!3060965 (++!12246 (list!17735 (left!40988 (c!832216 (_2!33539 lt!2007177)))) (list!17735 (right!41318 (c!832216 (_2!33539 lt!2007177))))))))

(declare-fun b!4896656 () Bool)

(assert (=> b!4896656 (= e!3060965 (list!17737 (xs!18061 (c!832216 (_2!33539 lt!2007177)))))))

(declare-fun b!4896654 () Bool)

(declare-fun e!3060964 () List!56540)

(assert (=> b!4896654 (= e!3060964 Nil!56416)))

(declare-fun b!4896655 () Bool)

(assert (=> b!4896655 (= e!3060964 e!3060965)))

(declare-fun c!832304 () Bool)

(assert (=> b!4896655 (= c!832304 (is-Leaf!24551 (c!832216 (_2!33539 lt!2007177))))))

(declare-fun d!1573428 () Bool)

(declare-fun c!832303 () Bool)

(assert (=> d!1573428 (= c!832303 (is-Empty!14745 (c!832216 (_2!33539 lt!2007177))))))

(assert (=> d!1573428 (= (list!17735 (c!832216 (_2!33539 lt!2007177))) e!3060964)))

(assert (= (and d!1573428 c!832303) b!4896654))

(assert (= (and d!1573428 (not c!832303)) b!4896655))

(assert (= (and b!4896655 c!832304) b!4896656))

(assert (= (and b!4896655 (not c!832304)) b!4896657))

(declare-fun m!5903408 () Bool)

(assert (=> b!4896657 m!5903408))

(declare-fun m!5903410 () Bool)

(assert (=> b!4896657 m!5903410))

(assert (=> b!4896657 m!5903408))

(assert (=> b!4896657 m!5903410))

(declare-fun m!5903412 () Bool)

(assert (=> b!4896657 m!5903412))

(declare-fun m!5903414 () Bool)

(assert (=> b!4896656 m!5903414))

(assert (=> d!1573278 d!1573428))

(declare-fun d!1573430 () Bool)

(assert (=> d!1573430 (= (isEmpty!30281 lt!2007334) (not (is-Some!14030 lt!2007334)))))

(assert (=> d!1573302 d!1573430))

(assert (=> d!1573302 d!1573272))

(assert (=> d!1573302 d!1573274))

(assert (=> d!1573302 d!1573304))

(assert (=> d!1573284 d!1573302))

(assert (=> d!1573284 d!1573272))

(assert (=> d!1573284 d!1573274))

(assert (=> d!1573284 d!1573304))

(declare-fun b!4896658 () Bool)

(declare-fun res!2091356 () Bool)

(declare-fun e!3060969 () Bool)

(assert (=> b!4896658 (=> (not res!2091356) (not e!3060969))))

(declare-fun lt!2007569 () Option!14031)

(assert (=> b!4896658 (= res!2091356 (= (++!12246 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007569)))) (_2!33540 (get!19486 lt!2007569))) lt!2007181))))

(declare-fun b!4896659 () Bool)

(declare-fun res!2091357 () Bool)

(assert (=> b!4896659 (=> (not res!2091357) (not e!3060969))))

(assert (=> b!4896659 (= res!2091357 (= (rule!11373 (_1!33540 (get!19486 lt!2007569))) (h!62866 rulesArg!165)))))

(declare-fun b!4896661 () Bool)

(declare-fun res!2091355 () Bool)

(assert (=> b!4896661 (=> (not res!2091355) (not e!3060969))))

(assert (=> b!4896661 (= res!2091355 (= (value!262196 (_1!33540 (get!19486 lt!2007569))) (apply!13543 (transformation!8177 (rule!11373 (_1!33540 (get!19486 lt!2007569)))) (seqFromList!5939 (originalCharacters!8490 (_1!33540 (get!19486 lt!2007569)))))))))

(declare-fun b!4896662 () Bool)

(declare-fun e!3060966 () Option!14031)

(assert (=> b!4896662 (= e!3060966 None!14030)))

(declare-fun b!4896663 () Bool)

(assert (=> b!4896663 (= e!3060969 (= (size!37151 (_1!33540 (get!19486 lt!2007569))) (size!37154 (originalCharacters!8490 (_1!33540 (get!19486 lt!2007569))))))))

(declare-fun b!4896664 () Bool)

(declare-fun lt!2007565 () tuple2!60482)

(assert (=> b!4896664 (= e!3060966 (Some!14030 (tuple2!60475 (Token!14919 (apply!13543 (transformation!8177 (h!62866 rulesArg!165)) (seqFromList!5939 (_1!33544 lt!2007565))) (h!62866 rulesArg!165) (size!37153 (seqFromList!5939 (_1!33544 lt!2007565))) (_1!33544 lt!2007565)) (_2!33544 lt!2007565))))))

(declare-fun lt!2007567 () Unit!146475)

(assert (=> b!4896664 (= lt!2007567 (longestMatchIsAcceptedByMatchOrIsEmpty!1719 (regex!8177 (h!62866 rulesArg!165)) lt!2007181))))

(declare-fun res!2091354 () Bool)

(assert (=> b!4896664 (= res!2091354 (isEmpty!30279 (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007181 lt!2007181 (size!37154 lt!2007181)))))))

(declare-fun e!3060967 () Bool)

(assert (=> b!4896664 (=> res!2091354 e!3060967)))

(assert (=> b!4896664 e!3060967))

(declare-fun lt!2007566 () Unit!146475)

(assert (=> b!4896664 (= lt!2007566 lt!2007567)))

(declare-fun lt!2007568 () Unit!146475)

(assert (=> b!4896664 (= lt!2007568 (lemmaSemiInverse!2567 (transformation!8177 (h!62866 rulesArg!165)) (seqFromList!5939 (_1!33544 lt!2007565))))))

(declare-fun b!4896665 () Bool)

(declare-fun res!2091352 () Bool)

(assert (=> b!4896665 (=> (not res!2091352) (not e!3060969))))

(assert (=> b!4896665 (= res!2091352 (< (size!37154 (_2!33540 (get!19486 lt!2007569))) (size!37154 lt!2007181)))))

(declare-fun b!4896666 () Bool)

(declare-fun e!3060968 () Bool)

(assert (=> b!4896666 (= e!3060968 e!3060969)))

(declare-fun res!2091353 () Bool)

(assert (=> b!4896666 (=> (not res!2091353) (not e!3060969))))

(assert (=> b!4896666 (= res!2091353 (matchR!6533 (regex!8177 (h!62866 rulesArg!165)) (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007569))))))))

(declare-fun d!1573432 () Bool)

(assert (=> d!1573432 e!3060968))

(declare-fun res!2091358 () Bool)

(assert (=> d!1573432 (=> res!2091358 e!3060968)))

(assert (=> d!1573432 (= res!2091358 (isEmpty!30281 lt!2007569))))

(assert (=> d!1573432 (= lt!2007569 e!3060966)))

(declare-fun c!832305 () Bool)

(assert (=> d!1573432 (= c!832305 (isEmpty!30279 (_1!33544 lt!2007565)))))

(assert (=> d!1573432 (= lt!2007565 (findLongestMatch!1650 (regex!8177 (h!62866 rulesArg!165)) lt!2007181))))

(assert (=> d!1573432 (ruleValid!3675 thiss!14805 (h!62866 rulesArg!165))))

(assert (=> d!1573432 (= (maxPrefixOneRule!3532 thiss!14805 (h!62866 rulesArg!165) lt!2007181) lt!2007569)))

(declare-fun b!4896660 () Bool)

(assert (=> b!4896660 (= e!3060967 (matchR!6533 (regex!8177 (h!62866 rulesArg!165)) (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007181 lt!2007181 (size!37154 lt!2007181)))))))

(assert (= (and d!1573432 c!832305) b!4896662))

(assert (= (and d!1573432 (not c!832305)) b!4896664))

(assert (= (and b!4896664 (not res!2091354)) b!4896660))

(assert (= (and d!1573432 (not res!2091358)) b!4896666))

(assert (= (and b!4896666 res!2091353) b!4896658))

(assert (= (and b!4896658 res!2091356) b!4896665))

(assert (= (and b!4896665 res!2091352) b!4896659))

(assert (= (and b!4896659 res!2091357) b!4896661))

(assert (= (and b!4896661 res!2091355) b!4896663))

(declare-fun m!5903416 () Bool)

(assert (=> d!1573432 m!5903416))

(declare-fun m!5903418 () Bool)

(assert (=> d!1573432 m!5903418))

(declare-fun m!5903420 () Bool)

(assert (=> d!1573432 m!5903420))

(assert (=> d!1573432 m!5902884))

(declare-fun m!5903422 () Bool)

(assert (=> b!4896665 m!5903422))

(declare-fun m!5903424 () Bool)

(assert (=> b!4896665 m!5903424))

(assert (=> b!4896665 m!5902896))

(assert (=> b!4896660 m!5902842))

(assert (=> b!4896660 m!5902896))

(assert (=> b!4896660 m!5902842))

(assert (=> b!4896660 m!5902896))

(assert (=> b!4896660 m!5903390))

(assert (=> b!4896660 m!5903392))

(assert (=> b!4896659 m!5903422))

(assert (=> b!4896658 m!5903422))

(declare-fun m!5903426 () Bool)

(assert (=> b!4896658 m!5903426))

(assert (=> b!4896658 m!5903426))

(declare-fun m!5903428 () Bool)

(assert (=> b!4896658 m!5903428))

(assert (=> b!4896658 m!5903428))

(declare-fun m!5903430 () Bool)

(assert (=> b!4896658 m!5903430))

(assert (=> b!4896666 m!5903422))

(assert (=> b!4896666 m!5903426))

(assert (=> b!4896666 m!5903426))

(assert (=> b!4896666 m!5903428))

(assert (=> b!4896666 m!5903428))

(declare-fun m!5903432 () Bool)

(assert (=> b!4896666 m!5903432))

(declare-fun m!5903434 () Bool)

(assert (=> b!4896664 m!5903434))

(declare-fun m!5903436 () Bool)

(assert (=> b!4896664 m!5903436))

(assert (=> b!4896664 m!5903434))

(assert (=> b!4896664 m!5902896))

(assert (=> b!4896664 m!5902842))

(assert (=> b!4896664 m!5902896))

(assert (=> b!4896664 m!5903390))

(assert (=> b!4896664 m!5903434))

(declare-fun m!5903438 () Bool)

(assert (=> b!4896664 m!5903438))

(assert (=> b!4896664 m!5902842))

(assert (=> b!4896664 m!5903380))

(assert (=> b!4896664 m!5903434))

(declare-fun m!5903440 () Bool)

(assert (=> b!4896664 m!5903440))

(assert (=> b!4896664 m!5903378))

(assert (=> b!4896663 m!5903422))

(declare-fun m!5903442 () Bool)

(assert (=> b!4896663 m!5903442))

(assert (=> b!4896661 m!5903422))

(declare-fun m!5903444 () Bool)

(assert (=> b!4896661 m!5903444))

(assert (=> b!4896661 m!5903444))

(declare-fun m!5903446 () Bool)

(assert (=> b!4896661 m!5903446))

(assert (=> bm!339648 d!1573432))

(assert (=> b!4896244 d!1573342))

(declare-fun b!4896676 () Bool)

(declare-fun e!3060975 () List!56540)

(assert (=> b!4896676 (= e!3060975 (Cons!56416 (h!62864 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334))))) (++!12246 (t!366074 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334))))) (_2!33540 (get!19486 lt!2007334)))))))

(declare-fun b!4896677 () Bool)

(declare-fun res!2091363 () Bool)

(declare-fun e!3060974 () Bool)

(assert (=> b!4896677 (=> (not res!2091363) (not e!3060974))))

(declare-fun lt!2007572 () List!56540)

(assert (=> b!4896677 (= res!2091363 (= (size!37154 lt!2007572) (+ (size!37154 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334))))) (size!37154 (_2!33540 (get!19486 lt!2007334))))))))

(declare-fun d!1573434 () Bool)

(assert (=> d!1573434 e!3060974))

(declare-fun res!2091364 () Bool)

(assert (=> d!1573434 (=> (not res!2091364) (not e!3060974))))

(declare-fun content!10023 (List!56540) (Set C!26702))

(assert (=> d!1573434 (= res!2091364 (= (content!10023 lt!2007572) (set.union (content!10023 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334))))) (content!10023 (_2!33540 (get!19486 lt!2007334))))))))

(assert (=> d!1573434 (= lt!2007572 e!3060975)))

(declare-fun c!832308 () Bool)

(assert (=> d!1573434 (= c!832308 (is-Nil!56416 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334))))))))

(assert (=> d!1573434 (= (++!12246 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334)))) (_2!33540 (get!19486 lt!2007334))) lt!2007572)))

(declare-fun b!4896675 () Bool)

(assert (=> b!4896675 (= e!3060975 (_2!33540 (get!19486 lt!2007334)))))

(declare-fun b!4896678 () Bool)

(assert (=> b!4896678 (= e!3060974 (or (not (= (_2!33540 (get!19486 lt!2007334)) Nil!56416)) (= lt!2007572 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334)))))))))

(assert (= (and d!1573434 c!832308) b!4896675))

(assert (= (and d!1573434 (not c!832308)) b!4896676))

(assert (= (and d!1573434 res!2091364) b!4896677))

(assert (= (and b!4896677 res!2091363) b!4896678))

(declare-fun m!5903448 () Bool)

(assert (=> b!4896676 m!5903448))

(declare-fun m!5903450 () Bool)

(assert (=> b!4896677 m!5903450))

(assert (=> b!4896677 m!5902930))

(declare-fun m!5903452 () Bool)

(assert (=> b!4896677 m!5903452))

(assert (=> b!4896677 m!5902936))

(declare-fun m!5903454 () Bool)

(assert (=> d!1573434 m!5903454))

(assert (=> d!1573434 m!5902930))

(declare-fun m!5903456 () Bool)

(assert (=> d!1573434 m!5903456))

(declare-fun m!5903458 () Bool)

(assert (=> d!1573434 m!5903458))

(assert (=> b!4896238 d!1573434))

(declare-fun d!1573436 () Bool)

(assert (=> d!1573436 (= (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334)))) (list!17735 (c!832216 (charsOf!5377 (_1!33540 (get!19486 lt!2007334))))))))

(declare-fun bs!1176393 () Bool)

(assert (= bs!1176393 d!1573436))

(declare-fun m!5903460 () Bool)

(assert (=> bs!1176393 m!5903460))

(assert (=> b!4896238 d!1573436))

(declare-fun d!1573438 () Bool)

(declare-fun lt!2007575 () BalanceConc!28920)

(assert (=> d!1573438 (= (list!17733 lt!2007575) (originalCharacters!8490 (_1!33540 (get!19486 lt!2007334))))))

(declare-fun dynLambda!22662 (Int TokenValue!8487) BalanceConc!28920)

(assert (=> d!1573438 (= lt!2007575 (dynLambda!22662 (toChars!10935 (transformation!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334))))) (value!262196 (_1!33540 (get!19486 lt!2007334)))))))

(assert (=> d!1573438 (= (charsOf!5377 (_1!33540 (get!19486 lt!2007334))) lt!2007575)))

(declare-fun b_lambda!194733 () Bool)

(assert (=> (not b_lambda!194733) (not d!1573438)))

(declare-fun tb!259319 () Bool)

(declare-fun t!366096 () Bool)

(assert (=> (and b!4896051 (= (toChars!10935 (transformation!8177 (h!62866 rulesArg!165))) (toChars!10935 (transformation!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334)))))) t!366096) tb!259319))

(declare-fun b!4896683 () Bool)

(declare-fun e!3060978 () Bool)

(declare-fun tp!1377908 () Bool)

(assert (=> b!4896683 (= e!3060978 (and (inv!72704 (c!832216 (dynLambda!22662 (toChars!10935 (transformation!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334))))) (value!262196 (_1!33540 (get!19486 lt!2007334)))))) tp!1377908))))

(declare-fun result!322922 () Bool)

(assert (=> tb!259319 (= result!322922 (and (inv!72706 (dynLambda!22662 (toChars!10935 (transformation!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334))))) (value!262196 (_1!33540 (get!19486 lt!2007334))))) e!3060978))))

(assert (= tb!259319 b!4896683))

(declare-fun m!5903462 () Bool)

(assert (=> b!4896683 m!5903462))

(declare-fun m!5903464 () Bool)

(assert (=> tb!259319 m!5903464))

(assert (=> d!1573438 t!366096))

(declare-fun b_and!345415 () Bool)

(assert (= b_and!345385 (and (=> t!366096 result!322922) b_and!345415)))

(declare-fun tb!259321 () Bool)

(declare-fun t!366098 () Bool)

(assert (=> (and b!4896285 (= (toChars!10935 (transformation!8177 (h!62866 (t!366076 rulesArg!165)))) (toChars!10935 (transformation!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334)))))) t!366098) tb!259321))

(declare-fun result!322926 () Bool)

(assert (= result!322926 result!322922))

(assert (=> d!1573438 t!366098))

(declare-fun b_and!345417 () Bool)

(assert (= b_and!345393 (and (=> t!366098 result!322926) b_and!345417)))

(declare-fun m!5903466 () Bool)

(assert (=> d!1573438 m!5903466))

(declare-fun m!5903468 () Bool)

(assert (=> d!1573438 m!5903468))

(assert (=> b!4896238 d!1573438))

(declare-fun d!1573440 () Bool)

(assert (=> d!1573440 (= (get!19486 lt!2007334) (v!49986 lt!2007334))))

(assert (=> b!4896238 d!1573440))

(declare-fun d!1573442 () Bool)

(assert (=> d!1573442 (= (list!17733 (_2!33539 (get!19487 lt!2007235))) (list!17735 (c!832216 (_2!33539 (get!19487 lt!2007235)))))))

(declare-fun bs!1176394 () Bool)

(assert (= bs!1176394 d!1573442))

(declare-fun m!5903470 () Bool)

(assert (=> bs!1176394 m!5903470))

(assert (=> b!4896121 d!1573442))

(declare-fun d!1573444 () Bool)

(assert (=> d!1573444 (= (get!19486 (maxPrefix!4606 thiss!14805 (t!366076 rulesArg!165) (list!17733 input!1236))) (v!49986 (maxPrefix!4606 thiss!14805 (t!366076 rulesArg!165) (list!17733 input!1236))))))

(assert (=> b!4896121 d!1573444))

(declare-fun d!1573446 () Bool)

(assert (=> d!1573446 (= (get!19487 lt!2007235) (v!49987 lt!2007235))))

(assert (=> b!4896121 d!1573446))

(assert (=> b!4896121 d!1573276))

(declare-fun b!4896684 () Bool)

(declare-fun e!3060980 () Option!14031)

(declare-fun lt!2007578 () Option!14031)

(declare-fun lt!2007577 () Option!14031)

(assert (=> b!4896684 (= e!3060980 (ite (and (is-None!14030 lt!2007578) (is-None!14030 lt!2007577)) None!14030 (ite (is-None!14030 lt!2007577) lt!2007578 (ite (is-None!14030 lt!2007578) lt!2007577 (ite (>= (size!37151 (_1!33540 (v!49986 lt!2007578))) (size!37151 (_1!33540 (v!49986 lt!2007577)))) lt!2007578 lt!2007577)))))))

(declare-fun call!339686 () Option!14031)

(assert (=> b!4896684 (= lt!2007578 call!339686)))

(assert (=> b!4896684 (= lt!2007577 (maxPrefix!4606 thiss!14805 (t!366076 (t!366076 rulesArg!165)) (list!17733 input!1236)))))

(declare-fun b!4896685 () Bool)

(declare-fun res!2091369 () Bool)

(declare-fun e!3060979 () Bool)

(assert (=> b!4896685 (=> (not res!2091369) (not e!3060979))))

(declare-fun lt!2007579 () Option!14031)

(assert (=> b!4896685 (= res!2091369 (= (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007579)))) (originalCharacters!8490 (_1!33540 (get!19486 lt!2007579)))))))

(declare-fun b!4896686 () Bool)

(assert (=> b!4896686 (= e!3060980 call!339686)))

(declare-fun d!1573448 () Bool)

(declare-fun e!3060981 () Bool)

(assert (=> d!1573448 e!3060981))

(declare-fun res!2091367 () Bool)

(assert (=> d!1573448 (=> res!2091367 e!3060981)))

(assert (=> d!1573448 (= res!2091367 (isEmpty!30281 lt!2007579))))

(assert (=> d!1573448 (= lt!2007579 e!3060980)))

(declare-fun c!832309 () Bool)

(assert (=> d!1573448 (= c!832309 (and (is-Cons!56418 (t!366076 rulesArg!165)) (is-Nil!56418 (t!366076 (t!366076 rulesArg!165)))))))

(declare-fun lt!2007576 () Unit!146475)

(declare-fun lt!2007580 () Unit!146475)

(assert (=> d!1573448 (= lt!2007576 lt!2007580)))

(assert (=> d!1573448 (isPrefix!4897 (list!17733 input!1236) (list!17733 input!1236))))

(assert (=> d!1573448 (= lt!2007580 (lemmaIsPrefixRefl!3294 (list!17733 input!1236) (list!17733 input!1236)))))

(assert (=> d!1573448 (rulesValidInductive!3156 thiss!14805 (t!366076 rulesArg!165))))

(assert (=> d!1573448 (= (maxPrefix!4606 thiss!14805 (t!366076 rulesArg!165) (list!17733 input!1236)) lt!2007579)))

(declare-fun b!4896687 () Bool)

(assert (=> b!4896687 (= e!3060979 (contains!19440 (t!366076 rulesArg!165) (rule!11373 (_1!33540 (get!19486 lt!2007579)))))))

(declare-fun b!4896688 () Bool)

(assert (=> b!4896688 (= e!3060981 e!3060979)))

(declare-fun res!2091365 () Bool)

(assert (=> b!4896688 (=> (not res!2091365) (not e!3060979))))

(assert (=> b!4896688 (= res!2091365 (isDefined!11044 lt!2007579))))

(declare-fun b!4896689 () Bool)

(declare-fun res!2091366 () Bool)

(assert (=> b!4896689 (=> (not res!2091366) (not e!3060979))))

(assert (=> b!4896689 (= res!2091366 (matchR!6533 (regex!8177 (rule!11373 (_1!33540 (get!19486 lt!2007579)))) (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007579))))))))

(declare-fun b!4896690 () Bool)

(declare-fun res!2091371 () Bool)

(assert (=> b!4896690 (=> (not res!2091371) (not e!3060979))))

(assert (=> b!4896690 (= res!2091371 (< (size!37154 (_2!33540 (get!19486 lt!2007579))) (size!37154 (list!17733 input!1236))))))

(declare-fun b!4896691 () Bool)

(declare-fun res!2091368 () Bool)

(assert (=> b!4896691 (=> (not res!2091368) (not e!3060979))))

(assert (=> b!4896691 (= res!2091368 (= (value!262196 (_1!33540 (get!19486 lt!2007579))) (apply!13543 (transformation!8177 (rule!11373 (_1!33540 (get!19486 lt!2007579)))) (seqFromList!5939 (originalCharacters!8490 (_1!33540 (get!19486 lt!2007579)))))))))

(declare-fun b!4896692 () Bool)

(declare-fun res!2091370 () Bool)

(assert (=> b!4896692 (=> (not res!2091370) (not e!3060979))))

(assert (=> b!4896692 (= res!2091370 (= (++!12246 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007579)))) (_2!33540 (get!19486 lt!2007579))) (list!17733 input!1236)))))

(declare-fun bm!339681 () Bool)

(assert (=> bm!339681 (= call!339686 (maxPrefixOneRule!3532 thiss!14805 (h!62866 (t!366076 rulesArg!165)) (list!17733 input!1236)))))

(assert (= (and d!1573448 c!832309) b!4896686))

(assert (= (and d!1573448 (not c!832309)) b!4896684))

(assert (= (or b!4896686 b!4896684) bm!339681))

(assert (= (and d!1573448 (not res!2091367)) b!4896688))

(assert (= (and b!4896688 res!2091365) b!4896685))

(assert (= (and b!4896685 res!2091369) b!4896690))

(assert (= (and b!4896690 res!2091371) b!4896692))

(assert (= (and b!4896692 res!2091370) b!4896691))

(assert (= (and b!4896691 res!2091368) b!4896689))

(assert (= (and b!4896689 res!2091366) b!4896687))

(declare-fun m!5903472 () Bool)

(assert (=> b!4896685 m!5903472))

(declare-fun m!5903474 () Bool)

(assert (=> b!4896685 m!5903474))

(assert (=> b!4896685 m!5903474))

(declare-fun m!5903476 () Bool)

(assert (=> b!4896685 m!5903476))

(assert (=> bm!339681 m!5902718))

(declare-fun m!5903478 () Bool)

(assert (=> bm!339681 m!5903478))

(declare-fun m!5903480 () Bool)

(assert (=> d!1573448 m!5903480))

(assert (=> d!1573448 m!5902718))

(assert (=> d!1573448 m!5902718))

(assert (=> d!1573448 m!5903146))

(assert (=> d!1573448 m!5902718))

(assert (=> d!1573448 m!5902718))

(assert (=> d!1573448 m!5903148))

(assert (=> d!1573448 m!5902798))

(assert (=> b!4896690 m!5903472))

(declare-fun m!5903482 () Bool)

(assert (=> b!4896690 m!5903482))

(assert (=> b!4896690 m!5902718))

(assert (=> b!4896690 m!5903082))

(declare-fun m!5903484 () Bool)

(assert (=> b!4896688 m!5903484))

(assert (=> b!4896689 m!5903472))

(assert (=> b!4896689 m!5903474))

(assert (=> b!4896689 m!5903474))

(assert (=> b!4896689 m!5903476))

(assert (=> b!4896689 m!5903476))

(declare-fun m!5903486 () Bool)

(assert (=> b!4896689 m!5903486))

(assert (=> b!4896684 m!5902718))

(declare-fun m!5903488 () Bool)

(assert (=> b!4896684 m!5903488))

(assert (=> b!4896691 m!5903472))

(declare-fun m!5903490 () Bool)

(assert (=> b!4896691 m!5903490))

(assert (=> b!4896691 m!5903490))

(declare-fun m!5903492 () Bool)

(assert (=> b!4896691 m!5903492))

(assert (=> b!4896687 m!5903472))

(declare-fun m!5903494 () Bool)

(assert (=> b!4896687 m!5903494))

(assert (=> b!4896692 m!5903472))

(assert (=> b!4896692 m!5903474))

(assert (=> b!4896692 m!5903474))

(assert (=> b!4896692 m!5903476))

(assert (=> b!4896692 m!5903476))

(declare-fun m!5903496 () Bool)

(assert (=> b!4896692 m!5903496))

(assert (=> b!4896121 d!1573448))

(declare-fun d!1573450 () Bool)

(declare-fun lt!2007581 () Int)

(assert (=> d!1573450 (>= lt!2007581 0)))

(declare-fun e!3060982 () Int)

(assert (=> d!1573450 (= lt!2007581 e!3060982)))

(declare-fun c!832310 () Bool)

(assert (=> d!1573450 (= c!832310 (is-Nil!56416 (_2!33540 (get!19486 lt!2007334))))))

(assert (=> d!1573450 (= (size!37154 (_2!33540 (get!19486 lt!2007334))) lt!2007581)))

(declare-fun b!4896693 () Bool)

(assert (=> b!4896693 (= e!3060982 0)))

(declare-fun b!4896694 () Bool)

(assert (=> b!4896694 (= e!3060982 (+ 1 (size!37154 (t!366074 (_2!33540 (get!19486 lt!2007334))))))))

(assert (= (and d!1573450 c!832310) b!4896693))

(assert (= (and d!1573450 (not c!832310)) b!4896694))

(declare-fun m!5903498 () Bool)

(assert (=> b!4896694 m!5903498))

(assert (=> b!4896236 d!1573450))

(assert (=> b!4896236 d!1573440))

(declare-fun d!1573452 () Bool)

(declare-fun lt!2007582 () Int)

(assert (=> d!1573452 (>= lt!2007582 0)))

(declare-fun e!3060983 () Int)

(assert (=> d!1573452 (= lt!2007582 e!3060983)))

(declare-fun c!832311 () Bool)

(assert (=> d!1573452 (= c!832311 (is-Nil!56416 lt!2007181))))

(assert (=> d!1573452 (= (size!37154 lt!2007181) lt!2007582)))

(declare-fun b!4896695 () Bool)

(assert (=> b!4896695 (= e!3060983 0)))

(declare-fun b!4896696 () Bool)

(assert (=> b!4896696 (= e!3060983 (+ 1 (size!37154 (t!366074 lt!2007181))))))

(assert (= (and d!1573452 c!832311) b!4896695))

(assert (= (and d!1573452 (not c!832311)) b!4896696))

(declare-fun m!5903500 () Bool)

(assert (=> b!4896696 m!5903500))

(assert (=> b!4896236 d!1573452))

(assert (=> b!4896119 d!1573350))

(declare-fun d!1573454 () Bool)

(assert (=> d!1573454 (= (isDefined!11044 lt!2007334) (not (isEmpty!30281 lt!2007334)))))

(declare-fun bs!1176395 () Bool)

(assert (= bs!1176395 d!1573454))

(assert (=> bs!1176395 m!5902934))

(assert (=> b!4896234 d!1573454))

(assert (=> b!4896118 d!1573350))

(declare-fun b!4896700 () Bool)

(declare-fun e!3060985 () List!56540)

(assert (=> b!4896700 (= e!3060985 (++!12246 (list!17735 (left!40988 (c!832216 input!1236))) (list!17735 (right!41318 (c!832216 input!1236)))))))

(declare-fun b!4896699 () Bool)

(assert (=> b!4896699 (= e!3060985 (list!17737 (xs!18061 (c!832216 input!1236))))))

(declare-fun b!4896697 () Bool)

(declare-fun e!3060984 () List!56540)

(assert (=> b!4896697 (= e!3060984 Nil!56416)))

(declare-fun b!4896698 () Bool)

(assert (=> b!4896698 (= e!3060984 e!3060985)))

(declare-fun c!832313 () Bool)

(assert (=> b!4896698 (= c!832313 (is-Leaf!24551 (c!832216 input!1236)))))

(declare-fun d!1573456 () Bool)

(declare-fun c!832312 () Bool)

(assert (=> d!1573456 (= c!832312 (is-Empty!14745 (c!832216 input!1236)))))

(assert (=> d!1573456 (= (list!17735 (c!832216 input!1236)) e!3060984)))

(assert (= (and d!1573456 c!832312) b!4896697))

(assert (= (and d!1573456 (not c!832312)) b!4896698))

(assert (= (and b!4896698 c!832313) b!4896699))

(assert (= (and b!4896698 (not c!832313)) b!4896700))

(declare-fun m!5903502 () Bool)

(assert (=> b!4896700 m!5903502))

(declare-fun m!5903504 () Bool)

(assert (=> b!4896700 m!5903504))

(assert (=> b!4896700 m!5903502))

(assert (=> b!4896700 m!5903504))

(declare-fun m!5903506 () Bool)

(assert (=> b!4896700 m!5903506))

(assert (=> b!4896699 m!5903394))

(assert (=> d!1573276 d!1573456))

(declare-fun b!4896713 () Bool)

(declare-fun res!2091384 () Bool)

(declare-fun e!3060990 () Bool)

(assert (=> b!4896713 (=> (not res!2091384) (not e!3060990))))

(assert (=> b!4896713 (= res!2091384 (<= (- (height!1958 (left!40988 (c!832216 input!1236))) (height!1958 (right!41318 (c!832216 input!1236)))) 1))))

(declare-fun b!4896714 () Bool)

(assert (=> b!4896714 (= e!3060990 (not (isEmpty!30287 (right!41318 (c!832216 input!1236)))))))

(declare-fun d!1573458 () Bool)

(declare-fun res!2091388 () Bool)

(declare-fun e!3060991 () Bool)

(assert (=> d!1573458 (=> res!2091388 e!3060991)))

(assert (=> d!1573458 (= res!2091388 (not (is-Node!14745 (c!832216 input!1236))))))

(assert (=> d!1573458 (= (isBalanced!4015 (c!832216 input!1236)) e!3060991)))

(declare-fun b!4896715 () Bool)

(declare-fun res!2091389 () Bool)

(assert (=> b!4896715 (=> (not res!2091389) (not e!3060990))))

(assert (=> b!4896715 (= res!2091389 (isBalanced!4015 (left!40988 (c!832216 input!1236))))))

(declare-fun b!4896716 () Bool)

(declare-fun res!2091386 () Bool)

(assert (=> b!4896716 (=> (not res!2091386) (not e!3060990))))

(assert (=> b!4896716 (= res!2091386 (not (isEmpty!30287 (left!40988 (c!832216 input!1236)))))))

(declare-fun b!4896717 () Bool)

(assert (=> b!4896717 (= e!3060991 e!3060990)))

(declare-fun res!2091385 () Bool)

(assert (=> b!4896717 (=> (not res!2091385) (not e!3060990))))

(assert (=> b!4896717 (= res!2091385 (<= (- 1) (- (height!1958 (left!40988 (c!832216 input!1236))) (height!1958 (right!41318 (c!832216 input!1236))))))))

(declare-fun b!4896718 () Bool)

(declare-fun res!2091387 () Bool)

(assert (=> b!4896718 (=> (not res!2091387) (not e!3060990))))

(assert (=> b!4896718 (= res!2091387 (isBalanced!4015 (right!41318 (c!832216 input!1236))))))

(assert (= (and d!1573458 (not res!2091388)) b!4896717))

(assert (= (and b!4896717 res!2091385) b!4896713))

(assert (= (and b!4896713 res!2091384) b!4896715))

(assert (= (and b!4896715 res!2091389) b!4896718))

(assert (= (and b!4896718 res!2091387) b!4896716))

(assert (= (and b!4896716 res!2091386) b!4896714))

(declare-fun m!5903508 () Bool)

(assert (=> b!4896714 m!5903508))

(assert (=> b!4896713 m!5903402))

(assert (=> b!4896713 m!5903404))

(declare-fun m!5903510 () Bool)

(assert (=> b!4896715 m!5903510))

(declare-fun m!5903512 () Bool)

(assert (=> b!4896718 m!5903512))

(assert (=> b!4896717 m!5903402))

(assert (=> b!4896717 m!5903404))

(declare-fun m!5903514 () Bool)

(assert (=> b!4896716 m!5903514))

(assert (=> d!1573292 d!1573458))

(declare-fun b!4896720 () Bool)

(declare-fun res!2091392 () Bool)

(declare-fun e!3060994 () Bool)

(assert (=> b!4896720 (=> (not res!2091392) (not e!3060994))))

(assert (=> b!4896720 (= res!2091392 (= (head!10458 (tail!9604 lt!2007181)) (head!10458 (tail!9604 lt!2007181))))))

(declare-fun b!4896721 () Bool)

(assert (=> b!4896721 (= e!3060994 (isPrefix!4897 (tail!9604 (tail!9604 lt!2007181)) (tail!9604 (tail!9604 lt!2007181))))))

(declare-fun d!1573460 () Bool)

(declare-fun e!3060993 () Bool)

(assert (=> d!1573460 e!3060993))

(declare-fun res!2091390 () Bool)

(assert (=> d!1573460 (=> res!2091390 e!3060993)))

(declare-fun lt!2007583 () Bool)

(assert (=> d!1573460 (= res!2091390 (not lt!2007583))))

(declare-fun e!3060992 () Bool)

(assert (=> d!1573460 (= lt!2007583 e!3060992)))

(declare-fun res!2091391 () Bool)

(assert (=> d!1573460 (=> res!2091391 e!3060992)))

(assert (=> d!1573460 (= res!2091391 (is-Nil!56416 (tail!9604 lt!2007181)))))

(assert (=> d!1573460 (= (isPrefix!4897 (tail!9604 lt!2007181) (tail!9604 lt!2007181)) lt!2007583)))

(declare-fun b!4896719 () Bool)

(assert (=> b!4896719 (= e!3060992 e!3060994)))

(declare-fun res!2091393 () Bool)

(assert (=> b!4896719 (=> (not res!2091393) (not e!3060994))))

(assert (=> b!4896719 (= res!2091393 (not (is-Nil!56416 (tail!9604 lt!2007181))))))

(declare-fun b!4896722 () Bool)

(assert (=> b!4896722 (= e!3060993 (>= (size!37154 (tail!9604 lt!2007181)) (size!37154 (tail!9604 lt!2007181))))))

(assert (= (and d!1573460 (not res!2091391)) b!4896719))

(assert (= (and b!4896719 res!2091393) b!4896720))

(assert (= (and b!4896720 res!2091392) b!4896721))

(assert (= (and d!1573460 (not res!2091390)) b!4896722))

(assert (=> b!4896720 m!5902892))

(declare-fun m!5903516 () Bool)

(assert (=> b!4896720 m!5903516))

(assert (=> b!4896720 m!5902892))

(assert (=> b!4896720 m!5903516))

(assert (=> b!4896721 m!5902892))

(declare-fun m!5903518 () Bool)

(assert (=> b!4896721 m!5903518))

(assert (=> b!4896721 m!5902892))

(assert (=> b!4896721 m!5903518))

(assert (=> b!4896721 m!5903518))

(assert (=> b!4896721 m!5903518))

(declare-fun m!5903520 () Bool)

(assert (=> b!4896721 m!5903520))

(assert (=> b!4896722 m!5902892))

(declare-fun m!5903522 () Bool)

(assert (=> b!4896722 m!5903522))

(assert (=> b!4896722 m!5902892))

(assert (=> b!4896722 m!5903522))

(assert (=> b!4896197 d!1573460))

(declare-fun d!1573462 () Bool)

(assert (=> d!1573462 (= (tail!9604 lt!2007181) (t!366074 lt!2007181))))

(assert (=> b!4896197 d!1573462))

(declare-fun b!4896723 () Bool)

(declare-fun e!3060995 () Option!14032)

(declare-fun lt!2007585 () Option!14032)

(declare-fun lt!2007590 () Option!14032)

(assert (=> b!4896723 (= e!3060995 (ite (and (is-None!14031 lt!2007585) (is-None!14031 lt!2007590)) None!14031 (ite (is-None!14031 lt!2007590) lt!2007585 (ite (is-None!14031 lt!2007585) lt!2007590 (ite (>= (size!37151 (_1!33539 (v!49987 lt!2007585))) (size!37151 (_1!33539 (v!49987 lt!2007590)))) lt!2007585 lt!2007590)))))))

(declare-fun call!339687 () Option!14032)

(assert (=> b!4896723 (= lt!2007585 call!339687)))

(assert (=> b!4896723 (= lt!2007590 (maxPrefixZipperSequence!1318 thiss!14805 (t!366076 (t!366076 (t!366076 rulesArg!165))) input!1236))))

(declare-fun b!4896724 () Bool)

(declare-fun e!3061000 () Bool)

(declare-fun e!3060997 () Bool)

(assert (=> b!4896724 (= e!3061000 e!3060997)))

(declare-fun res!2091394 () Bool)

(assert (=> b!4896724 (=> (not res!2091394) (not e!3060997))))

(declare-fun lt!2007589 () Option!14032)

(assert (=> b!4896724 (= res!2091394 (= (_1!33539 (get!19487 lt!2007589)) (_1!33540 (get!19486 (maxPrefixZipper!676 thiss!14805 (t!366076 (t!366076 rulesArg!165)) (list!17733 input!1236))))))))

(declare-fun b!4896725 () Bool)

(declare-fun e!3060999 () Bool)

(declare-fun e!3060996 () Bool)

(assert (=> b!4896725 (= e!3060999 e!3060996)))

(declare-fun res!2091397 () Bool)

(assert (=> b!4896725 (=> res!2091397 e!3060996)))

(assert (=> b!4896725 (= res!2091397 (not (isDefined!11045 lt!2007589)))))

(declare-fun d!1573464 () Bool)

(assert (=> d!1573464 e!3060999))

(declare-fun res!2091399 () Bool)

(assert (=> d!1573464 (=> (not res!2091399) (not e!3060999))))

(assert (=> d!1573464 (= res!2091399 (= (isDefined!11045 lt!2007589) (isDefined!11044 (maxPrefixZipper!676 thiss!14805 (t!366076 (t!366076 rulesArg!165)) (list!17733 input!1236)))))))

(assert (=> d!1573464 (= lt!2007589 e!3060995)))

(declare-fun c!832314 () Bool)

(assert (=> d!1573464 (= c!832314 (and (is-Cons!56418 (t!366076 (t!366076 rulesArg!165))) (is-Nil!56418 (t!366076 (t!366076 (t!366076 rulesArg!165))))))))

(declare-fun lt!2007584 () Unit!146475)

(declare-fun lt!2007586 () Unit!146475)

(assert (=> d!1573464 (= lt!2007584 lt!2007586)))

(declare-fun lt!2007588 () List!56540)

(declare-fun lt!2007587 () List!56540)

(assert (=> d!1573464 (isPrefix!4897 lt!2007588 lt!2007587)))

(assert (=> d!1573464 (= lt!2007586 (lemmaIsPrefixRefl!3294 lt!2007588 lt!2007587))))

(assert (=> d!1573464 (= lt!2007587 (list!17733 input!1236))))

(assert (=> d!1573464 (= lt!2007588 (list!17733 input!1236))))

(assert (=> d!1573464 (rulesValidInductive!3156 thiss!14805 (t!366076 (t!366076 rulesArg!165)))))

(assert (=> d!1573464 (= (maxPrefixZipperSequence!1318 thiss!14805 (t!366076 (t!366076 rulesArg!165)) input!1236) lt!2007589)))

(declare-fun bm!339682 () Bool)

(assert (=> bm!339682 (= call!339687 (maxPrefixOneRuleZipperSequence!687 thiss!14805 (h!62866 (t!366076 (t!366076 rulesArg!165))) input!1236))))

(declare-fun b!4896726 () Bool)

(declare-fun res!2091396 () Bool)

(assert (=> b!4896726 (=> (not res!2091396) (not e!3060999))))

(assert (=> b!4896726 (= res!2091396 e!3061000)))

(declare-fun res!2091395 () Bool)

(assert (=> b!4896726 (=> res!2091395 e!3061000)))

(assert (=> b!4896726 (= res!2091395 (not (isDefined!11045 lt!2007589)))))

(declare-fun b!4896727 () Bool)

(declare-fun e!3060998 () Bool)

(assert (=> b!4896727 (= e!3060996 e!3060998)))

(declare-fun res!2091398 () Bool)

(assert (=> b!4896727 (=> (not res!2091398) (not e!3060998))))

(assert (=> b!4896727 (= res!2091398 (= (_1!33539 (get!19487 lt!2007589)) (_1!33540 (get!19486 (maxPrefix!4606 thiss!14805 (t!366076 (t!366076 rulesArg!165)) (list!17733 input!1236))))))))

(declare-fun b!4896728 () Bool)

(assert (=> b!4896728 (= e!3060998 (= (list!17733 (_2!33539 (get!19487 lt!2007589))) (_2!33540 (get!19486 (maxPrefix!4606 thiss!14805 (t!366076 (t!366076 rulesArg!165)) (list!17733 input!1236))))))))

(declare-fun b!4896729 () Bool)

(assert (=> b!4896729 (= e!3060995 call!339687)))

(declare-fun b!4896730 () Bool)

(assert (=> b!4896730 (= e!3060997 (= (list!17733 (_2!33539 (get!19487 lt!2007589))) (_2!33540 (get!19486 (maxPrefixZipper!676 thiss!14805 (t!366076 (t!366076 rulesArg!165)) (list!17733 input!1236))))))))

(assert (= (and d!1573464 c!832314) b!4896729))

(assert (= (and d!1573464 (not c!832314)) b!4896723))

(assert (= (or b!4896729 b!4896723) bm!339682))

(assert (= (and d!1573464 res!2091399) b!4896726))

(assert (= (and b!4896726 (not res!2091395)) b!4896724))

(assert (= (and b!4896724 res!2091394) b!4896730))

(assert (= (and b!4896726 res!2091396) b!4896725))

(assert (= (and b!4896725 (not res!2091397)) b!4896727))

(assert (= (and b!4896727 res!2091398) b!4896728))

(declare-fun m!5903524 () Bool)

(assert (=> b!4896724 m!5903524))

(assert (=> b!4896724 m!5902718))

(assert (=> b!4896724 m!5902718))

(assert (=> b!4896724 m!5903152))

(assert (=> b!4896724 m!5903152))

(declare-fun m!5903526 () Bool)

(assert (=> b!4896724 m!5903526))

(assert (=> b!4896728 m!5903488))

(declare-fun m!5903528 () Bool)

(assert (=> b!4896728 m!5903528))

(assert (=> b!4896728 m!5903524))

(declare-fun m!5903530 () Bool)

(assert (=> b!4896728 m!5903530))

(assert (=> b!4896728 m!5902718))

(assert (=> b!4896728 m!5902718))

(assert (=> b!4896728 m!5903488))

(declare-fun m!5903532 () Bool)

(assert (=> bm!339682 m!5903532))

(assert (=> b!4896727 m!5903524))

(assert (=> b!4896727 m!5902718))

(assert (=> b!4896727 m!5902718))

(assert (=> b!4896727 m!5903488))

(assert (=> b!4896727 m!5903488))

(assert (=> b!4896727 m!5903528))

(declare-fun m!5903534 () Bool)

(assert (=> b!4896725 m!5903534))

(assert (=> d!1573464 m!5903140))

(assert (=> d!1573464 m!5903534))

(assert (=> d!1573464 m!5902718))

(assert (=> d!1573464 m!5903152))

(assert (=> d!1573464 m!5903152))

(declare-fun m!5903536 () Bool)

(assert (=> d!1573464 m!5903536))

(declare-fun m!5903538 () Bool)

(assert (=> d!1573464 m!5903538))

(declare-fun m!5903540 () Bool)

(assert (=> d!1573464 m!5903540))

(assert (=> d!1573464 m!5902718))

(assert (=> b!4896726 m!5903534))

(assert (=> b!4896730 m!5903524))

(assert (=> b!4896730 m!5903530))

(assert (=> b!4896730 m!5903152))

(assert (=> b!4896730 m!5903526))

(assert (=> b!4896730 m!5902718))

(assert (=> b!4896730 m!5902718))

(assert (=> b!4896730 m!5903152))

(declare-fun m!5903542 () Bool)

(assert (=> b!4896723 m!5903542))

(assert (=> b!4896116 d!1573464))

(declare-fun d!1573466 () Bool)

(declare-fun c!832315 () Bool)

(assert (=> d!1573466 (= c!832315 (is-Node!14745 (left!40988 (c!832216 input!1236))))))

(declare-fun e!3061001 () Bool)

(assert (=> d!1573466 (= (inv!72704 (left!40988 (c!832216 input!1236))) e!3061001)))

(declare-fun b!4896731 () Bool)

(assert (=> b!4896731 (= e!3061001 (inv!72710 (left!40988 (c!832216 input!1236))))))

(declare-fun b!4896732 () Bool)

(declare-fun e!3061002 () Bool)

(assert (=> b!4896732 (= e!3061001 e!3061002)))

(declare-fun res!2091400 () Bool)

(assert (=> b!4896732 (= res!2091400 (not (is-Leaf!24551 (left!40988 (c!832216 input!1236)))))))

(assert (=> b!4896732 (=> res!2091400 e!3061002)))

(declare-fun b!4896733 () Bool)

(assert (=> b!4896733 (= e!3061002 (inv!72711 (left!40988 (c!832216 input!1236))))))

(assert (= (and d!1573466 c!832315) b!4896731))

(assert (= (and d!1573466 (not c!832315)) b!4896732))

(assert (= (and b!4896732 (not res!2091400)) b!4896733))

(declare-fun m!5903544 () Bool)

(assert (=> b!4896731 m!5903544))

(declare-fun m!5903546 () Bool)

(assert (=> b!4896733 m!5903546))

(assert (=> b!4896308 d!1573466))

(declare-fun d!1573468 () Bool)

(declare-fun c!832316 () Bool)

(assert (=> d!1573468 (= c!832316 (is-Node!14745 (right!41318 (c!832216 input!1236))))))

(declare-fun e!3061003 () Bool)

(assert (=> d!1573468 (= (inv!72704 (right!41318 (c!832216 input!1236))) e!3061003)))

(declare-fun b!4896734 () Bool)

(assert (=> b!4896734 (= e!3061003 (inv!72710 (right!41318 (c!832216 input!1236))))))

(declare-fun b!4896735 () Bool)

(declare-fun e!3061004 () Bool)

(assert (=> b!4896735 (= e!3061003 e!3061004)))

(declare-fun res!2091401 () Bool)

(assert (=> b!4896735 (= res!2091401 (not (is-Leaf!24551 (right!41318 (c!832216 input!1236)))))))

(assert (=> b!4896735 (=> res!2091401 e!3061004)))

(declare-fun b!4896736 () Bool)

(assert (=> b!4896736 (= e!3061004 (inv!72711 (right!41318 (c!832216 input!1236))))))

(assert (= (and d!1573468 c!832316) b!4896734))

(assert (= (and d!1573468 (not c!832316)) b!4896735))

(assert (= (and b!4896735 (not res!2091401)) b!4896736))

(declare-fun m!5903548 () Bool)

(assert (=> b!4896734 m!5903548))

(declare-fun m!5903550 () Bool)

(assert (=> b!4896736 m!5903550))

(assert (=> b!4896308 d!1573468))

(declare-fun b!4896737 () Bool)

(declare-fun e!3061006 () Option!14031)

(declare-fun lt!2007593 () Option!14031)

(declare-fun lt!2007592 () Option!14031)

(assert (=> b!4896737 (= e!3061006 (ite (and (is-None!14030 lt!2007593) (is-None!14030 lt!2007592)) None!14030 (ite (is-None!14030 lt!2007592) lt!2007593 (ite (is-None!14030 lt!2007593) lt!2007592 (ite (>= (size!37151 (_1!33540 (v!49986 lt!2007593))) (size!37151 (_1!33540 (v!49986 lt!2007592)))) lt!2007593 lt!2007592)))))))

(declare-fun call!339688 () Option!14031)

(assert (=> b!4896737 (= lt!2007593 call!339688)))

(assert (=> b!4896737 (= lt!2007592 (maxPrefix!4606 thiss!14805 (t!366076 (t!366076 rulesArg!165)) lt!2007181))))

(declare-fun b!4896738 () Bool)

(declare-fun res!2091406 () Bool)

(declare-fun e!3061005 () Bool)

(assert (=> b!4896738 (=> (not res!2091406) (not e!3061005))))

(declare-fun lt!2007594 () Option!14031)

(assert (=> b!4896738 (= res!2091406 (= (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007594)))) (originalCharacters!8490 (_1!33540 (get!19486 lt!2007594)))))))

(declare-fun b!4896739 () Bool)

(assert (=> b!4896739 (= e!3061006 call!339688)))

(declare-fun d!1573470 () Bool)

(declare-fun e!3061007 () Bool)

(assert (=> d!1573470 e!3061007))

(declare-fun res!2091404 () Bool)

(assert (=> d!1573470 (=> res!2091404 e!3061007)))

(assert (=> d!1573470 (= res!2091404 (isEmpty!30281 lt!2007594))))

(assert (=> d!1573470 (= lt!2007594 e!3061006)))

(declare-fun c!832317 () Bool)

(assert (=> d!1573470 (= c!832317 (and (is-Cons!56418 (t!366076 rulesArg!165)) (is-Nil!56418 (t!366076 (t!366076 rulesArg!165)))))))

(declare-fun lt!2007591 () Unit!146475)

(declare-fun lt!2007595 () Unit!146475)

(assert (=> d!1573470 (= lt!2007591 lt!2007595)))

(assert (=> d!1573470 (isPrefix!4897 lt!2007181 lt!2007181)))

(assert (=> d!1573470 (= lt!2007595 (lemmaIsPrefixRefl!3294 lt!2007181 lt!2007181))))

(assert (=> d!1573470 (rulesValidInductive!3156 thiss!14805 (t!366076 rulesArg!165))))

(assert (=> d!1573470 (= (maxPrefix!4606 thiss!14805 (t!366076 rulesArg!165) lt!2007181) lt!2007594)))

(declare-fun b!4896740 () Bool)

(assert (=> b!4896740 (= e!3061005 (contains!19440 (t!366076 rulesArg!165) (rule!11373 (_1!33540 (get!19486 lt!2007594)))))))

(declare-fun b!4896741 () Bool)

(assert (=> b!4896741 (= e!3061007 e!3061005)))

(declare-fun res!2091402 () Bool)

(assert (=> b!4896741 (=> (not res!2091402) (not e!3061005))))

(assert (=> b!4896741 (= res!2091402 (isDefined!11044 lt!2007594))))

(declare-fun b!4896742 () Bool)

(declare-fun res!2091403 () Bool)

(assert (=> b!4896742 (=> (not res!2091403) (not e!3061005))))

(assert (=> b!4896742 (= res!2091403 (matchR!6533 (regex!8177 (rule!11373 (_1!33540 (get!19486 lt!2007594)))) (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007594))))))))

(declare-fun b!4896743 () Bool)

(declare-fun res!2091408 () Bool)

(assert (=> b!4896743 (=> (not res!2091408) (not e!3061005))))

(assert (=> b!4896743 (= res!2091408 (< (size!37154 (_2!33540 (get!19486 lt!2007594))) (size!37154 lt!2007181)))))

(declare-fun b!4896744 () Bool)

(declare-fun res!2091405 () Bool)

(assert (=> b!4896744 (=> (not res!2091405) (not e!3061005))))

(assert (=> b!4896744 (= res!2091405 (= (value!262196 (_1!33540 (get!19486 lt!2007594))) (apply!13543 (transformation!8177 (rule!11373 (_1!33540 (get!19486 lt!2007594)))) (seqFromList!5939 (originalCharacters!8490 (_1!33540 (get!19486 lt!2007594)))))))))

(declare-fun b!4896745 () Bool)

(declare-fun res!2091407 () Bool)

(assert (=> b!4896745 (=> (not res!2091407) (not e!3061005))))

(assert (=> b!4896745 (= res!2091407 (= (++!12246 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007594)))) (_2!33540 (get!19486 lt!2007594))) lt!2007181))))

(declare-fun bm!339683 () Bool)

(assert (=> bm!339683 (= call!339688 (maxPrefixOneRule!3532 thiss!14805 (h!62866 (t!366076 rulesArg!165)) lt!2007181))))

(assert (= (and d!1573470 c!832317) b!4896739))

(assert (= (and d!1573470 (not c!832317)) b!4896737))

(assert (= (or b!4896739 b!4896737) bm!339683))

(assert (= (and d!1573470 (not res!2091404)) b!4896741))

(assert (= (and b!4896741 res!2091402) b!4896738))

(assert (= (and b!4896738 res!2091406) b!4896743))

(assert (= (and b!4896743 res!2091408) b!4896745))

(assert (= (and b!4896745 res!2091407) b!4896744))

(assert (= (and b!4896744 res!2091405) b!4896742))

(assert (= (and b!4896742 res!2091403) b!4896740))

(declare-fun m!5903552 () Bool)

(assert (=> b!4896738 m!5903552))

(declare-fun m!5903554 () Bool)

(assert (=> b!4896738 m!5903554))

(assert (=> b!4896738 m!5903554))

(declare-fun m!5903556 () Bool)

(assert (=> b!4896738 m!5903556))

(declare-fun m!5903558 () Bool)

(assert (=> bm!339683 m!5903558))

(declare-fun m!5903560 () Bool)

(assert (=> d!1573470 m!5903560))

(assert (=> d!1573470 m!5902714))

(assert (=> d!1573470 m!5902716))

(assert (=> d!1573470 m!5902798))

(assert (=> b!4896743 m!5903552))

(declare-fun m!5903562 () Bool)

(assert (=> b!4896743 m!5903562))

(assert (=> b!4896743 m!5902896))

(declare-fun m!5903564 () Bool)

(assert (=> b!4896741 m!5903564))

(assert (=> b!4896742 m!5903552))

(assert (=> b!4896742 m!5903554))

(assert (=> b!4896742 m!5903554))

(assert (=> b!4896742 m!5903556))

(assert (=> b!4896742 m!5903556))

(declare-fun m!5903566 () Bool)

(assert (=> b!4896742 m!5903566))

(declare-fun m!5903568 () Bool)

(assert (=> b!4896737 m!5903568))

(assert (=> b!4896744 m!5903552))

(declare-fun m!5903570 () Bool)

(assert (=> b!4896744 m!5903570))

(assert (=> b!4896744 m!5903570))

(declare-fun m!5903572 () Bool)

(assert (=> b!4896744 m!5903572))

(assert (=> b!4896740 m!5903552))

(declare-fun m!5903574 () Bool)

(assert (=> b!4896740 m!5903574))

(assert (=> b!4896745 m!5903552))

(assert (=> b!4896745 m!5903554))

(assert (=> b!4896745 m!5903554))

(assert (=> b!4896745 m!5903556))

(assert (=> b!4896745 m!5903556))

(declare-fun m!5903576 () Bool)

(assert (=> b!4896745 m!5903576))

(assert (=> b!4896230 d!1573470))

(declare-fun b!4896802 () Bool)

(declare-fun res!2091432 () Bool)

(declare-fun e!3061042 () Bool)

(assert (=> b!4896802 (=> res!2091432 e!3061042)))

(assert (=> b!4896802 (= res!2091432 (not (is-ElementMatch!13252 (regex!8177 (h!62866 rulesArg!165)))))))

(declare-fun e!3061039 () Bool)

(assert (=> b!4896802 (= e!3061039 e!3061042)))

(declare-fun b!4896803 () Bool)

(declare-fun e!3061040 () Bool)

(assert (=> b!4896803 (= e!3061042 e!3061040)))

(declare-fun res!2091434 () Bool)

(assert (=> b!4896803 (=> (not res!2091434) (not e!3061040))))

(declare-fun lt!2007654 () Bool)

(assert (=> b!4896803 (= res!2091434 (not lt!2007654))))

(declare-fun d!1573472 () Bool)

(declare-fun e!3061044 () Bool)

(assert (=> d!1573472 e!3061044))

(declare-fun c!832338 () Bool)

(assert (=> d!1573472 (= c!832338 (is-EmptyExpr!13252 (regex!8177 (h!62866 rulesArg!165))))))

(declare-fun e!3061043 () Bool)

(assert (=> d!1573472 (= lt!2007654 e!3061043)))

(declare-fun c!832336 () Bool)

(assert (=> d!1573472 (= c!832336 (isEmpty!30279 (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007290 lt!2007290 (size!37154 lt!2007290)))))))

(assert (=> d!1573472 (validRegex!5885 (regex!8177 (h!62866 rulesArg!165)))))

(assert (=> d!1573472 (= (matchR!6533 (regex!8177 (h!62866 rulesArg!165)) (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007290 lt!2007290 (size!37154 lt!2007290)))) lt!2007654)))

(declare-fun b!4896804 () Bool)

(declare-fun e!3061041 () Bool)

(assert (=> b!4896804 (= e!3061041 (= (head!10458 (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007290 lt!2007290 (size!37154 lt!2007290)))) (c!832217 (regex!8177 (h!62866 rulesArg!165)))))))

(declare-fun b!4896805 () Bool)

(assert (=> b!4896805 (= e!3061044 e!3061039)))

(declare-fun c!832337 () Bool)

(assert (=> b!4896805 (= c!832337 (is-EmptyLang!13252 (regex!8177 (h!62866 rulesArg!165))))))

(declare-fun b!4896806 () Bool)

(declare-fun e!3061038 () Bool)

(assert (=> b!4896806 (= e!3061040 e!3061038)))

(declare-fun res!2091433 () Bool)

(assert (=> b!4896806 (=> res!2091433 e!3061038)))

(declare-fun call!339707 () Bool)

(assert (=> b!4896806 (= res!2091433 call!339707)))

(declare-fun b!4896807 () Bool)

(declare-fun res!2091436 () Bool)

(assert (=> b!4896807 (=> (not res!2091436) (not e!3061041))))

(assert (=> b!4896807 (= res!2091436 (isEmpty!30279 (tail!9604 (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007290 lt!2007290 (size!37154 lt!2007290))))))))

(declare-fun b!4896808 () Bool)

(declare-fun res!2091429 () Bool)

(assert (=> b!4896808 (=> (not res!2091429) (not e!3061041))))

(assert (=> b!4896808 (= res!2091429 (not call!339707))))

(declare-fun b!4896809 () Bool)

(assert (=> b!4896809 (= e!3061038 (not (= (head!10458 (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007290 lt!2007290 (size!37154 lt!2007290)))) (c!832217 (regex!8177 (h!62866 rulesArg!165))))))))

(declare-fun b!4896810 () Bool)

(assert (=> b!4896810 (= e!3061043 (nullable!4558 (regex!8177 (h!62866 rulesArg!165))))))

(declare-fun b!4896811 () Bool)

(assert (=> b!4896811 (= e!3061039 (not lt!2007654))))

(declare-fun b!4896812 () Bool)

(assert (=> b!4896812 (= e!3061044 (= lt!2007654 call!339707))))

(declare-fun b!4896813 () Bool)

(declare-fun res!2091430 () Bool)

(assert (=> b!4896813 (=> res!2091430 e!3061038)))

(assert (=> b!4896813 (= res!2091430 (not (isEmpty!30279 (tail!9604 (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007290 lt!2007290 (size!37154 lt!2007290)))))))))

(declare-fun bm!339702 () Bool)

(assert (=> bm!339702 (= call!339707 (isEmpty!30279 (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007290 lt!2007290 (size!37154 lt!2007290)))))))

(declare-fun b!4896814 () Bool)

(assert (=> b!4896814 (= e!3061043 (matchR!6533 (derivativeStep!3880 (regex!8177 (h!62866 rulesArg!165)) (head!10458 (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007290 lt!2007290 (size!37154 lt!2007290))))) (tail!9604 (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 rulesArg!165)) Nil!56416 (size!37154 Nil!56416) lt!2007290 lt!2007290 (size!37154 lt!2007290))))))))

(declare-fun b!4896815 () Bool)

(declare-fun res!2091435 () Bool)

(assert (=> b!4896815 (=> res!2091435 e!3061042)))

(assert (=> b!4896815 (= res!2091435 e!3061041)))

(declare-fun res!2091431 () Bool)

(assert (=> b!4896815 (=> (not res!2091431) (not e!3061041))))

(assert (=> b!4896815 (= res!2091431 lt!2007654)))

(assert (= (and d!1573472 c!832336) b!4896810))

(assert (= (and d!1573472 (not c!832336)) b!4896814))

(assert (= (and d!1573472 c!832338) b!4896812))

(assert (= (and d!1573472 (not c!832338)) b!4896805))

(assert (= (and b!4896805 c!832337) b!4896811))

(assert (= (and b!4896805 (not c!832337)) b!4896802))

(assert (= (and b!4896802 (not res!2091432)) b!4896815))

(assert (= (and b!4896815 res!2091431) b!4896808))

(assert (= (and b!4896808 res!2091429) b!4896807))

(assert (= (and b!4896807 res!2091436) b!4896804))

(assert (= (and b!4896815 (not res!2091435)) b!4896803))

(assert (= (and b!4896803 res!2091434) b!4896806))

(assert (= (and b!4896806 (not res!2091433)) b!4896813))

(assert (= (and b!4896813 (not res!2091430)) b!4896809))

(assert (= (or b!4896812 b!4896806 b!4896808) bm!339702))

(assert (=> bm!339702 m!5902876))

(declare-fun m!5903578 () Bool)

(assert (=> b!4896809 m!5903578))

(declare-fun m!5903580 () Bool)

(assert (=> b!4896807 m!5903580))

(assert (=> b!4896807 m!5903580))

(declare-fun m!5903582 () Bool)

(assert (=> b!4896807 m!5903582))

(assert (=> b!4896814 m!5903578))

(assert (=> b!4896814 m!5903578))

(declare-fun m!5903584 () Bool)

(assert (=> b!4896814 m!5903584))

(assert (=> b!4896814 m!5903580))

(assert (=> b!4896814 m!5903584))

(assert (=> b!4896814 m!5903580))

(declare-fun m!5903586 () Bool)

(assert (=> b!4896814 m!5903586))

(assert (=> b!4896804 m!5903578))

(assert (=> b!4896810 m!5903068))

(assert (=> b!4896813 m!5903580))

(assert (=> b!4896813 m!5903580))

(assert (=> b!4896813 m!5903582))

(assert (=> d!1573472 m!5902876))

(assert (=> d!1573472 m!5903066))

(assert (=> b!4896178 d!1573472))

(assert (=> b!4896178 d!1573356))

(assert (=> b!4896178 d!1573366))

(assert (=> b!4896178 d!1573368))

(declare-fun d!1573474 () Bool)

(declare-fun res!2091441 () Bool)

(declare-fun e!3061049 () Bool)

(assert (=> d!1573474 (=> res!2091441 e!3061049)))

(assert (=> d!1573474 (= res!2091441 (is-Nil!56418 rulesArg!165))))

(assert (=> d!1573474 (= (forall!13093 rulesArg!165 lambda!244089) e!3061049)))

(declare-fun b!4896820 () Bool)

(declare-fun e!3061050 () Bool)

(assert (=> b!4896820 (= e!3061049 e!3061050)))

(declare-fun res!2091442 () Bool)

(assert (=> b!4896820 (=> (not res!2091442) (not e!3061050))))

(declare-fun dynLambda!22664 (Int Rule!16154) Bool)

(assert (=> b!4896820 (= res!2091442 (dynLambda!22664 lambda!244089 (h!62866 rulesArg!165)))))

(declare-fun b!4896821 () Bool)

(assert (=> b!4896821 (= e!3061050 (forall!13093 (t!366076 rulesArg!165) lambda!244089))))

(assert (= (and d!1573474 (not res!2091441)) b!4896820))

(assert (= (and b!4896820 res!2091442) b!4896821))

(declare-fun b_lambda!194735 () Bool)

(assert (=> (not b_lambda!194735) (not b!4896820)))

(declare-fun m!5903588 () Bool)

(assert (=> b!4896820 m!5903588))

(declare-fun m!5903590 () Bool)

(assert (=> b!4896821 m!5903590))

(assert (=> d!1573304 d!1573474))

(assert (=> b!4896176 d!1573330))

(assert (=> b!4896176 d!1573276))

(declare-fun d!1573476 () Bool)

(assert (=> d!1573476 (= (get!19487 lt!2007292) (v!49987 lt!2007292))))

(assert (=> b!4896176 d!1573476))

(declare-fun d!1573478 () Bool)

(assert (=> d!1573478 (= (list!17733 (_2!33539 (get!19487 lt!2007292))) (list!17735 (c!832216 (_2!33539 (get!19487 lt!2007292)))))))

(declare-fun bs!1176396 () Bool)

(assert (= bs!1176396 d!1573478))

(declare-fun m!5903592 () Bool)

(assert (=> bs!1176396 m!5903592))

(assert (=> b!4896176 d!1573478))

(declare-fun d!1573480 () Bool)

(assert (=> d!1573480 (= (get!19486 (maxPrefixOneRule!3532 thiss!14805 (h!62866 rulesArg!165) (list!17733 input!1236))) (v!49986 (maxPrefixOneRule!3532 thiss!14805 (h!62866 rulesArg!165) (list!17733 input!1236))))))

(assert (=> b!4896176 d!1573480))

(declare-fun d!1573482 () Bool)

(assert (=> d!1573482 (= (isEmpty!30281 lt!2007173) (not (is-Some!14030 lt!2007173)))))

(assert (=> d!1573280 d!1573482))

(assert (=> b!4896174 d!1573476))

(assert (=> b!4896174 d!1573480))

(assert (=> b!4896174 d!1573330))

(assert (=> b!4896174 d!1573276))

(declare-fun d!1573484 () Bool)

(declare-fun lt!2007657 () Option!14031)

(assert (=> d!1573484 (= lt!2007657 (maxPrefix!4606 thiss!14805 (t!366076 rulesArg!165) lt!2007181))))

(declare-fun e!3061051 () Option!14031)

(assert (=> d!1573484 (= lt!2007657 e!3061051)))

(declare-fun c!832339 () Bool)

(assert (=> d!1573484 (= c!832339 (and (is-Cons!56418 (t!366076 rulesArg!165)) (is-Nil!56418 (t!366076 (t!366076 rulesArg!165)))))))

(declare-fun lt!2007655 () Unit!146475)

(declare-fun lt!2007658 () Unit!146475)

(assert (=> d!1573484 (= lt!2007655 lt!2007658)))

(assert (=> d!1573484 (isPrefix!4897 lt!2007181 lt!2007181)))

(assert (=> d!1573484 (= lt!2007658 (lemmaIsPrefixRefl!3294 lt!2007181 lt!2007181))))

(assert (=> d!1573484 (rulesValidInductive!3156 thiss!14805 (t!366076 rulesArg!165))))

(assert (=> d!1573484 (= (maxPrefixZipper!676 thiss!14805 (t!366076 rulesArg!165) lt!2007181) lt!2007657)))

(declare-fun bm!339703 () Bool)

(declare-fun call!339708 () Option!14031)

(assert (=> bm!339703 (= call!339708 (maxPrefixOneRuleZipper!261 thiss!14805 (h!62866 (t!366076 rulesArg!165)) lt!2007181))))

(declare-fun b!4896822 () Bool)

(assert (=> b!4896822 (= e!3061051 call!339708)))

(declare-fun b!4896823 () Bool)

(declare-fun lt!2007656 () Option!14031)

(declare-fun lt!2007659 () Option!14031)

(assert (=> b!4896823 (= e!3061051 (ite (and (is-None!14030 lt!2007656) (is-None!14030 lt!2007659)) None!14030 (ite (is-None!14030 lt!2007659) lt!2007656 (ite (is-None!14030 lt!2007656) lt!2007659 (ite (>= (size!37151 (_1!33540 (v!49986 lt!2007656))) (size!37151 (_1!33540 (v!49986 lt!2007659)))) lt!2007656 lt!2007659)))))))

(assert (=> b!4896823 (= lt!2007656 call!339708)))

(assert (=> b!4896823 (= lt!2007659 (maxPrefixZipper!676 thiss!14805 (t!366076 (t!366076 rulesArg!165)) lt!2007181))))

(assert (= (and d!1573484 c!832339) b!4896822))

(assert (= (and d!1573484 (not c!832339)) b!4896823))

(assert (= (or b!4896822 b!4896823) bm!339703))

(assert (=> d!1573484 m!5902942))

(assert (=> d!1573484 m!5902714))

(assert (=> d!1573484 m!5902716))

(assert (=> d!1573484 m!5902798))

(declare-fun m!5903594 () Bool)

(assert (=> bm!339703 m!5903594))

(declare-fun m!5903596 () Bool)

(assert (=> b!4896823 m!5903596))

(assert (=> b!4896211 d!1573484))

(assert (=> b!4896123 d!1573442))

(declare-fun d!1573486 () Bool)

(assert (=> d!1573486 (= (get!19486 (maxPrefixZipper!676 thiss!14805 (t!366076 rulesArg!165) (list!17733 input!1236))) (v!49986 (maxPrefixZipper!676 thiss!14805 (t!366076 rulesArg!165) (list!17733 input!1236))))))

(assert (=> b!4896123 d!1573486))

(assert (=> b!4896123 d!1573446))

(assert (=> b!4896123 d!1573276))

(assert (=> b!4896123 d!1573348))

(assert (=> b!4896040 d!1573310))

(assert (=> b!4896237 d!1573440))

(declare-fun d!1573488 () Bool)

(assert (=> d!1573488 (= (apply!13543 (transformation!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334)))) (seqFromList!5939 (originalCharacters!8490 (_1!33540 (get!19486 lt!2007334))))) (dynLambda!22660 (toValue!11076 (transformation!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334))))) (seqFromList!5939 (originalCharacters!8490 (_1!33540 (get!19486 lt!2007334))))))))

(declare-fun b_lambda!194737 () Bool)

(assert (=> (not b_lambda!194737) (not d!1573488)))

(declare-fun t!366101 () Bool)

(declare-fun tb!259323 () Bool)

(assert (=> (and b!4896051 (= (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))) (toValue!11076 (transformation!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334)))))) t!366101) tb!259323))

(declare-fun result!322928 () Bool)

(assert (=> tb!259323 (= result!322928 (inv!21 (dynLambda!22660 (toValue!11076 (transformation!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334))))) (seqFromList!5939 (originalCharacters!8490 (_1!33540 (get!19486 lt!2007334)))))))))

(declare-fun m!5903598 () Bool)

(assert (=> tb!259323 m!5903598))

(assert (=> d!1573488 t!366101))

(declare-fun b_and!345419 () Bool)

(assert (= b_and!345407 (and (=> t!366101 result!322928) b_and!345419)))

(declare-fun t!366103 () Bool)

(declare-fun tb!259325 () Bool)

(assert (=> (and b!4896285 (= (toValue!11076 (transformation!8177 (h!62866 (t!366076 rulesArg!165)))) (toValue!11076 (transformation!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334)))))) t!366103) tb!259325))

(declare-fun result!322930 () Bool)

(assert (= result!322930 result!322928))

(assert (=> d!1573488 t!366103))

(declare-fun b_and!345421 () Bool)

(assert (= b_and!345409 (and (=> t!366103 result!322930) b_and!345421)))

(assert (=> d!1573488 m!5902944))

(declare-fun m!5903600 () Bool)

(assert (=> d!1573488 m!5903600))

(assert (=> b!4896237 d!1573488))

(declare-fun d!1573490 () Bool)

(assert (=> d!1573490 (= (seqFromList!5939 (originalCharacters!8490 (_1!33540 (get!19486 lt!2007334)))) (fromListB!2694 (originalCharacters!8490 (_1!33540 (get!19486 lt!2007334)))))))

(declare-fun bs!1176397 () Bool)

(assert (= bs!1176397 d!1573490))

(declare-fun m!5903602 () Bool)

(assert (=> bs!1176397 m!5903602))

(assert (=> b!4896237 d!1573490))

(assert (=> b!4896120 d!1573446))

(assert (=> b!4896120 d!1573444))

(assert (=> b!4896120 d!1573448))

(assert (=> b!4896120 d!1573276))

(assert (=> b!4896243 d!1573326))

(declare-fun bs!1176398 () Bool)

(declare-fun b!4896826 () Bool)

(assert (= bs!1176398 (and b!4896826 b!4896175)))

(declare-fun lambda!244103 () Int)

(assert (=> bs!1176398 (= (and (= (toChars!10935 (transformation!8177 (h!62866 (t!366076 rulesArg!165)))) (toChars!10935 (transformation!8177 (h!62866 rulesArg!165)))) (= (toValue!11076 (transformation!8177 (h!62866 (t!366076 rulesArg!165)))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))))) (= lambda!244103 lambda!244083))))

(declare-fun b!4896845 () Bool)

(declare-fun e!3061067 () Bool)

(assert (=> b!4896845 (= e!3061067 true)))

(declare-fun b!4896844 () Bool)

(declare-fun e!3061066 () Bool)

(assert (=> b!4896844 (= e!3061066 e!3061067)))

(assert (=> b!4896826 e!3061066))

(assert (= b!4896844 b!4896845))

(assert (= b!4896826 b!4896844))

(assert (=> b!4896845 (< (dynLambda!22653 order!25495 (toValue!11076 (transformation!8177 (h!62866 (t!366076 rulesArg!165))))) (dynLambda!22654 order!25497 lambda!244103))))

(assert (=> b!4896845 (< (dynLambda!22655 order!25499 (toChars!10935 (transformation!8177 (h!62866 (t!366076 rulesArg!165))))) (dynLambda!22654 order!25497 lambda!244103))))

(declare-fun b!4896824 () Bool)

(declare-fun e!3061056 () Option!14032)

(assert (=> b!4896824 (= e!3061056 None!14031)))

(declare-fun b!4896825 () Bool)

(declare-fun e!3061057 () Bool)

(declare-fun e!3061053 () Bool)

(assert (=> b!4896825 (= e!3061057 e!3061053)))

(declare-fun res!2091444 () Bool)

(assert (=> b!4896825 (=> (not res!2091444) (not e!3061053))))

(declare-fun lt!2007663 () Option!14032)

(assert (=> b!4896825 (= res!2091444 (= (_1!33539 (get!19487 lt!2007663)) (_1!33540 (get!19486 (maxPrefixOneRule!3532 thiss!14805 (h!62866 (t!366076 rulesArg!165)) (list!17733 input!1236))))))))

(declare-fun lt!2007664 () tuple2!60480)

(assert (=> b!4896826 (= e!3061056 (Some!14031 (tuple2!60473 (Token!14919 (apply!13543 (transformation!8177 (h!62866 (t!366076 rulesArg!165))) (_1!33543 lt!2007664)) (h!62866 (t!366076 rulesArg!165)) (size!37153 (_1!33543 lt!2007664)) (list!17733 (_1!33543 lt!2007664))) (_2!33543 lt!2007664))))))

(declare-fun lt!2007661 () List!56540)

(assert (=> b!4896826 (= lt!2007661 (list!17733 input!1236))))

(declare-fun lt!2007669 () Unit!146475)

(assert (=> b!4896826 (= lt!2007669 (longestMatchIsAcceptedByMatchOrIsEmpty!1719 (regex!8177 (h!62866 (t!366076 rulesArg!165))) lt!2007661))))

(declare-fun res!2091446 () Bool)

(assert (=> b!4896826 (= res!2091446 (isEmpty!30279 (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 (t!366076 rulesArg!165))) Nil!56416 (size!37154 Nil!56416) lt!2007661 lt!2007661 (size!37154 lt!2007661)))))))

(declare-fun e!3061054 () Bool)

(assert (=> b!4896826 (=> res!2091446 e!3061054)))

(assert (=> b!4896826 e!3061054))

(declare-fun lt!2007662 () Unit!146475)

(assert (=> b!4896826 (= lt!2007662 lt!2007669)))

(declare-fun lt!2007660 () Unit!146475)

(assert (=> b!4896826 (= lt!2007660 (lemmaInv!1239 (transformation!8177 (h!62866 (t!366076 rulesArg!165)))))))

(declare-fun lt!2007665 () Unit!146475)

(assert (=> b!4896826 (= lt!2007665 (ForallOf!1136 lambda!244103 (_1!33543 lt!2007664)))))

(declare-fun lt!2007668 () Unit!146475)

(assert (=> b!4896826 (= lt!2007668 (ForallOf!1136 lambda!244103 (seqFromList!5939 (list!17733 (_1!33543 lt!2007664)))))))

(declare-fun lt!2007666 () Option!14032)

(assert (=> b!4896826 (= lt!2007666 (Some!14031 (tuple2!60473 (Token!14919 (apply!13543 (transformation!8177 (h!62866 (t!366076 rulesArg!165))) (_1!33543 lt!2007664)) (h!62866 (t!366076 rulesArg!165)) (size!37153 (_1!33543 lt!2007664)) (list!17733 (_1!33543 lt!2007664))) (_2!33543 lt!2007664))))))

(declare-fun lt!2007667 () Unit!146475)

(assert (=> b!4896826 (= lt!2007667 (lemmaEqSameImage!1093 (transformation!8177 (h!62866 (t!366076 rulesArg!165))) (_1!33543 lt!2007664) (seqFromList!5939 (list!17733 (_1!33543 lt!2007664)))))))

(declare-fun d!1573492 () Bool)

(declare-fun e!3061055 () Bool)

(assert (=> d!1573492 e!3061055))

(declare-fun res!2091445 () Bool)

(assert (=> d!1573492 (=> (not res!2091445) (not e!3061055))))

(assert (=> d!1573492 (= res!2091445 (= (isDefined!11045 lt!2007663) (isDefined!11044 (maxPrefixOneRule!3532 thiss!14805 (h!62866 (t!366076 rulesArg!165)) (list!17733 input!1236)))))))

(assert (=> d!1573492 (= lt!2007663 e!3061056)))

(declare-fun c!832340 () Bool)

(assert (=> d!1573492 (= c!832340 (isEmpty!30280 (_1!33543 lt!2007664)))))

(assert (=> d!1573492 (= lt!2007664 (findLongestMatchWithZipperSequence!271 (regex!8177 (h!62866 (t!366076 rulesArg!165))) input!1236))))

(assert (=> d!1573492 (ruleValid!3675 thiss!14805 (h!62866 (t!366076 rulesArg!165)))))

(assert (=> d!1573492 (= (maxPrefixOneRuleZipperSequence!687 thiss!14805 (h!62866 (t!366076 rulesArg!165)) input!1236) lt!2007663)))

(declare-fun b!4896827 () Bool)

(assert (=> b!4896827 (= e!3061053 (= (list!17733 (_2!33539 (get!19487 lt!2007663))) (_2!33540 (get!19486 (maxPrefixOneRule!3532 thiss!14805 (h!62866 (t!366076 rulesArg!165)) (list!17733 input!1236))))))))

(declare-fun b!4896828 () Bool)

(assert (=> b!4896828 (= e!3061055 e!3061057)))

(declare-fun res!2091443 () Bool)

(assert (=> b!4896828 (=> res!2091443 e!3061057)))

(assert (=> b!4896828 (= res!2091443 (not (isDefined!11045 lt!2007663)))))

(declare-fun b!4896829 () Bool)

(assert (=> b!4896829 (= e!3061054 (matchR!6533 (regex!8177 (h!62866 (t!366076 rulesArg!165))) (_1!33544 (findLongestMatchInner!1756 (regex!8177 (h!62866 (t!366076 rulesArg!165))) Nil!56416 (size!37154 Nil!56416) lt!2007661 lt!2007661 (size!37154 lt!2007661)))))))

(assert (= (and d!1573492 c!832340) b!4896824))

(assert (= (and d!1573492 (not c!832340)) b!4896826))

(assert (= (and b!4896826 (not res!2091446)) b!4896829))

(assert (= (and d!1573492 res!2091445) b!4896828))

(assert (= (and b!4896828 (not res!2091443)) b!4896825))

(assert (= (and b!4896825 res!2091444) b!4896827))

(assert (=> b!4896829 m!5902842))

(declare-fun m!5903652 () Bool)

(assert (=> b!4896829 m!5903652))

(assert (=> b!4896829 m!5902842))

(assert (=> b!4896829 m!5903652))

(declare-fun m!5903656 () Bool)

(assert (=> b!4896829 m!5903656))

(declare-fun m!5903660 () Bool)

(assert (=> b!4896829 m!5903660))

(declare-fun m!5903662 () Bool)

(assert (=> b!4896827 m!5903662))

(assert (=> b!4896827 m!5902718))

(assert (=> b!4896827 m!5903478))

(assert (=> b!4896827 m!5902718))

(assert (=> b!4896827 m!5903478))

(declare-fun m!5903664 () Bool)

(assert (=> b!4896827 m!5903664))

(declare-fun m!5903666 () Bool)

(assert (=> b!4896827 m!5903666))

(assert (=> b!4896825 m!5903666))

(assert (=> b!4896825 m!5902718))

(assert (=> b!4896825 m!5902718))

(assert (=> b!4896825 m!5903478))

(assert (=> b!4896825 m!5903478))

(assert (=> b!4896825 m!5903664))

(assert (=> b!4896826 m!5902842))

(assert (=> b!4896826 m!5903652))

(assert (=> b!4896826 m!5903656))

(declare-fun m!5903668 () Bool)

(assert (=> b!4896826 m!5903668))

(declare-fun m!5903670 () Bool)

(assert (=> b!4896826 m!5903670))

(assert (=> b!4896826 m!5902718))

(declare-fun m!5903672 () Bool)

(assert (=> b!4896826 m!5903672))

(declare-fun m!5903674 () Bool)

(assert (=> b!4896826 m!5903674))

(declare-fun m!5903676 () Bool)

(assert (=> b!4896826 m!5903676))

(declare-fun m!5903678 () Bool)

(assert (=> b!4896826 m!5903678))

(assert (=> b!4896826 m!5903674))

(assert (=> b!4896826 m!5903652))

(assert (=> b!4896826 m!5903678))

(assert (=> b!4896826 m!5903674))

(declare-fun m!5903680 () Bool)

(assert (=> b!4896826 m!5903680))

(assert (=> b!4896826 m!5902842))

(declare-fun m!5903682 () Bool)

(assert (=> b!4896826 m!5903682))

(declare-fun m!5903684 () Bool)

(assert (=> b!4896826 m!5903684))

(declare-fun m!5903686 () Bool)

(assert (=> b!4896826 m!5903686))

(assert (=> d!1573492 m!5902718))

(assert (=> d!1573492 m!5903478))

(assert (=> d!1573492 m!5902718))

(declare-fun m!5903688 () Bool)

(assert (=> d!1573492 m!5903688))

(declare-fun m!5903690 () Bool)

(assert (=> d!1573492 m!5903690))

(declare-fun m!5903692 () Bool)

(assert (=> d!1573492 m!5903692))

(assert (=> d!1573492 m!5903138))

(assert (=> d!1573492 m!5903478))

(declare-fun m!5903694 () Bool)

(assert (=> d!1573492 m!5903694))

(assert (=> b!4896828 m!5903688))

(assert (=> bm!339636 d!1573492))

(declare-fun b!4896850 () Bool)

(declare-fun res!2091452 () Bool)

(declare-fun e!3061074 () Bool)

(assert (=> b!4896850 (=> res!2091452 e!3061074)))

(assert (=> b!4896850 (= res!2091452 (not (is-ElementMatch!13252 (regex!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334)))))))))

(declare-fun e!3061071 () Bool)

(assert (=> b!4896850 (= e!3061071 e!3061074)))

(declare-fun b!4896851 () Bool)

(declare-fun e!3061072 () Bool)

(assert (=> b!4896851 (= e!3061074 e!3061072)))

(declare-fun res!2091454 () Bool)

(assert (=> b!4896851 (=> (not res!2091454) (not e!3061072))))

(declare-fun lt!2007700 () Bool)

(assert (=> b!4896851 (= res!2091454 (not lt!2007700))))

(declare-fun d!1573496 () Bool)

(declare-fun e!3061076 () Bool)

(assert (=> d!1573496 e!3061076))

(declare-fun c!832351 () Bool)

(assert (=> d!1573496 (= c!832351 (is-EmptyExpr!13252 (regex!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334))))))))

(declare-fun e!3061075 () Bool)

(assert (=> d!1573496 (= lt!2007700 e!3061075)))

(declare-fun c!832349 () Bool)

(assert (=> d!1573496 (= c!832349 (isEmpty!30279 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334))))))))

(assert (=> d!1573496 (validRegex!5885 (regex!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334)))))))

(assert (=> d!1573496 (= (matchR!6533 (regex!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334)))) (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334))))) lt!2007700)))

(declare-fun b!4896852 () Bool)

(declare-fun e!3061073 () Bool)

(assert (=> b!4896852 (= e!3061073 (= (head!10458 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334))))) (c!832217 (regex!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334)))))))))

(declare-fun b!4896853 () Bool)

(assert (=> b!4896853 (= e!3061076 e!3061071)))

(declare-fun c!832350 () Bool)

(assert (=> b!4896853 (= c!832350 (is-EmptyLang!13252 (regex!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334))))))))

(declare-fun b!4896854 () Bool)

(declare-fun e!3061070 () Bool)

(assert (=> b!4896854 (= e!3061072 e!3061070)))

(declare-fun res!2091453 () Bool)

(assert (=> b!4896854 (=> res!2091453 e!3061070)))

(declare-fun call!339717 () Bool)

(assert (=> b!4896854 (= res!2091453 call!339717)))

(declare-fun b!4896855 () Bool)

(declare-fun res!2091456 () Bool)

(assert (=> b!4896855 (=> (not res!2091456) (not e!3061073))))

(assert (=> b!4896855 (= res!2091456 (isEmpty!30279 (tail!9604 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334)))))))))

(declare-fun b!4896856 () Bool)

(declare-fun res!2091449 () Bool)

(assert (=> b!4896856 (=> (not res!2091449) (not e!3061073))))

(assert (=> b!4896856 (= res!2091449 (not call!339717))))

(declare-fun b!4896857 () Bool)

(assert (=> b!4896857 (= e!3061070 (not (= (head!10458 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334))))) (c!832217 (regex!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334))))))))))

(declare-fun b!4896858 () Bool)

(assert (=> b!4896858 (= e!3061075 (nullable!4558 (regex!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334))))))))

(declare-fun b!4896859 () Bool)

(assert (=> b!4896859 (= e!3061071 (not lt!2007700))))

(declare-fun b!4896860 () Bool)

(assert (=> b!4896860 (= e!3061076 (= lt!2007700 call!339717))))

(declare-fun b!4896861 () Bool)

(declare-fun res!2091450 () Bool)

(assert (=> b!4896861 (=> res!2091450 e!3061070)))

(assert (=> b!4896861 (= res!2091450 (not (isEmpty!30279 (tail!9604 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334))))))))))

(declare-fun bm!339712 () Bool)

(assert (=> bm!339712 (= call!339717 (isEmpty!30279 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334))))))))

(declare-fun b!4896862 () Bool)

(assert (=> b!4896862 (= e!3061075 (matchR!6533 (derivativeStep!3880 (regex!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334)))) (head!10458 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334)))))) (tail!9604 (list!17733 (charsOf!5377 (_1!33540 (get!19486 lt!2007334)))))))))

(declare-fun b!4896863 () Bool)

(declare-fun res!2091455 () Bool)

(assert (=> b!4896863 (=> res!2091455 e!3061074)))

(assert (=> b!4896863 (= res!2091455 e!3061073)))

(declare-fun res!2091451 () Bool)

(assert (=> b!4896863 (=> (not res!2091451) (not e!3061073))))

(assert (=> b!4896863 (= res!2091451 lt!2007700)))

(assert (= (and d!1573496 c!832349) b!4896858))

(assert (= (and d!1573496 (not c!832349)) b!4896862))

(assert (= (and d!1573496 c!832351) b!4896860))

(assert (= (and d!1573496 (not c!832351)) b!4896853))

(assert (= (and b!4896853 c!832350) b!4896859))

(assert (= (and b!4896853 (not c!832350)) b!4896850))

(assert (= (and b!4896850 (not res!2091452)) b!4896863))

(assert (= (and b!4896863 res!2091451) b!4896856))

(assert (= (and b!4896856 res!2091449) b!4896855))

(assert (= (and b!4896855 res!2091456) b!4896852))

(assert (= (and b!4896863 (not res!2091455)) b!4896851))

(assert (= (and b!4896851 res!2091454) b!4896854))

(assert (= (and b!4896854 (not res!2091453)) b!4896861))

(assert (= (and b!4896861 (not res!2091450)) b!4896857))

(assert (= (or b!4896860 b!4896854 b!4896856) bm!339712))

(assert (=> bm!339712 m!5902930))

(declare-fun m!5903700 () Bool)

(assert (=> bm!339712 m!5903700))

(assert (=> b!4896857 m!5902930))

(declare-fun m!5903702 () Bool)

(assert (=> b!4896857 m!5903702))

(assert (=> b!4896855 m!5902930))

(declare-fun m!5903706 () Bool)

(assert (=> b!4896855 m!5903706))

(assert (=> b!4896855 m!5903706))

(declare-fun m!5903708 () Bool)

(assert (=> b!4896855 m!5903708))

(assert (=> b!4896862 m!5902930))

(assert (=> b!4896862 m!5903702))

(assert (=> b!4896862 m!5903702))

(declare-fun m!5903710 () Bool)

(assert (=> b!4896862 m!5903710))

(assert (=> b!4896862 m!5902930))

(assert (=> b!4896862 m!5903706))

(assert (=> b!4896862 m!5903710))

(assert (=> b!4896862 m!5903706))

(declare-fun m!5903712 () Bool)

(assert (=> b!4896862 m!5903712))

(assert (=> b!4896852 m!5902930))

(assert (=> b!4896852 m!5903702))

(declare-fun m!5903714 () Bool)

(assert (=> b!4896858 m!5903714))

(assert (=> b!4896861 m!5902930))

(assert (=> b!4896861 m!5903706))

(assert (=> b!4896861 m!5903706))

(assert (=> b!4896861 m!5903708))

(assert (=> d!1573496 m!5902930))

(assert (=> d!1573496 m!5903700))

(declare-fun m!5903716 () Bool)

(assert (=> d!1573496 m!5903716))

(assert (=> b!4896235 d!1573496))

(assert (=> b!4896235 d!1573440))

(assert (=> b!4896235 d!1573436))

(assert (=> b!4896235 d!1573438))

(declare-fun d!1573504 () Bool)

(declare-fun lt!2007705 () Bool)

(declare-fun content!10025 (List!56542) (Set Rule!16154))

(assert (=> d!1573504 (= lt!2007705 (set.member (rule!11373 (_1!33540 (get!19486 lt!2007334))) (content!10025 rulesArg!165)))))

(declare-fun e!3061083 () Bool)

(assert (=> d!1573504 (= lt!2007705 e!3061083)))

(declare-fun res!2091462 () Bool)

(assert (=> d!1573504 (=> (not res!2091462) (not e!3061083))))

(assert (=> d!1573504 (= res!2091462 (is-Cons!56418 rulesArg!165))))

(assert (=> d!1573504 (= (contains!19440 rulesArg!165 (rule!11373 (_1!33540 (get!19486 lt!2007334)))) lt!2007705)))

(declare-fun b!4896872 () Bool)

(declare-fun e!3061084 () Bool)

(assert (=> b!4896872 (= e!3061083 e!3061084)))

(declare-fun res!2091461 () Bool)

(assert (=> b!4896872 (=> res!2091461 e!3061084)))

(assert (=> b!4896872 (= res!2091461 (= (h!62866 rulesArg!165) (rule!11373 (_1!33540 (get!19486 lt!2007334)))))))

(declare-fun b!4896873 () Bool)

(assert (=> b!4896873 (= e!3061084 (contains!19440 (t!366076 rulesArg!165) (rule!11373 (_1!33540 (get!19486 lt!2007334)))))))

(assert (= (and d!1573504 res!2091462) b!4896872))

(assert (= (and b!4896872 (not res!2091461)) b!4896873))

(declare-fun m!5903718 () Bool)

(assert (=> d!1573504 m!5903718))

(declare-fun m!5903720 () Bool)

(assert (=> d!1573504 m!5903720))

(declare-fun m!5903722 () Bool)

(assert (=> b!4896873 m!5903722))

(assert (=> b!4896233 d!1573504))

(assert (=> b!4896233 d!1573440))

(assert (=> b!4896198 d!1573452))

(assert (=> b!4896117 d!1573446))

(assert (=> b!4896117 d!1573486))

(assert (=> b!4896117 d!1573348))

(assert (=> b!4896117 d!1573276))

(declare-fun bs!1176400 () Bool)

(declare-fun d!1573506 () Bool)

(assert (= bs!1176400 (and d!1573506 b!4896175)))

(declare-fun lambda!244106 () Int)

(assert (=> bs!1176400 (= lambda!244106 lambda!244083)))

(declare-fun bs!1176401 () Bool)

(assert (= bs!1176401 (and d!1573506 b!4896826)))

(assert (=> bs!1176401 (= (and (= (toChars!10935 (transformation!8177 (h!62866 rulesArg!165))) (toChars!10935 (transformation!8177 (h!62866 (t!366076 rulesArg!165))))) (= (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))) (toValue!11076 (transformation!8177 (h!62866 (t!366076 rulesArg!165)))))) (= lambda!244106 lambda!244103))))

(assert (=> d!1573506 true))

(assert (=> d!1573506 (< (dynLambda!22655 order!25499 (toChars!10935 (transformation!8177 (h!62866 rulesArg!165)))) (dynLambda!22654 order!25497 lambda!244106))))

(assert (=> d!1573506 true))

(assert (=> d!1573506 (< (dynLambda!22653 order!25495 (toValue!11076 (transformation!8177 (h!62866 rulesArg!165)))) (dynLambda!22654 order!25497 lambda!244106))))

(assert (=> d!1573506 (= (semiInverseModEq!3589 (toChars!10935 (transformation!8177 (h!62866 rulesArg!165))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165)))) (Forall!1690 lambda!244106))))

(declare-fun bs!1176402 () Bool)

(assert (= bs!1176402 d!1573506))

(declare-fun m!5903724 () Bool)

(assert (=> bs!1176402 m!5903724))

(assert (=> d!1573308 d!1573506))

(declare-fun d!1573508 () Bool)

(assert (=> d!1573508 (= (head!10458 lt!2007181) (h!62864 lt!2007181))))

(assert (=> b!4896196 d!1573508))

(declare-fun d!1573510 () Bool)

(assert (=> d!1573510 (= (isEmpty!30282 lt!2007179) (not (is-Some!14031 lt!2007179)))))

(assert (=> d!1573282 d!1573510))

(declare-fun d!1573512 () Bool)

(assert (=> d!1573512 (= (inv!72701 (tag!9041 (h!62866 (t!366076 rulesArg!165)))) (= (mod (str.len (value!262195 (tag!9041 (h!62866 (t!366076 rulesArg!165))))) 2) 0))))

(assert (=> b!4896284 d!1573512))

(declare-fun d!1573514 () Bool)

(declare-fun res!2091463 () Bool)

(declare-fun e!3061085 () Bool)

(assert (=> d!1573514 (=> (not res!2091463) (not e!3061085))))

(assert (=> d!1573514 (= res!2091463 (semiInverseModEq!3589 (toChars!10935 (transformation!8177 (h!62866 (t!366076 rulesArg!165)))) (toValue!11076 (transformation!8177 (h!62866 (t!366076 rulesArg!165))))))))

(assert (=> d!1573514 (= (inv!72705 (transformation!8177 (h!62866 (t!366076 rulesArg!165)))) e!3061085)))

(declare-fun b!4896878 () Bool)

(assert (=> b!4896878 (= e!3061085 (equivClasses!3468 (toChars!10935 (transformation!8177 (h!62866 (t!366076 rulesArg!165)))) (toValue!11076 (transformation!8177 (h!62866 (t!366076 rulesArg!165))))))))

(assert (= (and d!1573514 res!2091463) b!4896878))

(declare-fun m!5903726 () Bool)

(assert (=> d!1573514 m!5903726))

(declare-fun m!5903728 () Bool)

(assert (=> b!4896878 m!5903728))

(assert (=> b!4896284 d!1573514))

(assert (=> b!4896231 d!1573436))

(assert (=> b!4896231 d!1573438))

(assert (=> b!4896231 d!1573440))

(declare-fun d!1573516 () Bool)

(assert (=> d!1573516 (= (inv!72712 (xs!18061 (c!832216 input!1236))) (<= (size!37154 (innerList!14833 (xs!18061 (c!832216 input!1236)))) 2147483647))))

(declare-fun bs!1176403 () Bool)

(assert (= bs!1176403 d!1573516))

(declare-fun m!5903730 () Bool)

(assert (=> bs!1176403 m!5903730))

(assert (=> b!4896309 d!1573516))

(declare-fun b!4896881 () Bool)

(declare-fun e!3061086 () Bool)

(declare-fun tp!1377912 () Bool)

(assert (=> b!4896881 (= e!3061086 tp!1377912)))

(assert (=> b!4896298 (= tp!1377859 e!3061086)))

(declare-fun b!4896882 () Bool)

(declare-fun tp!1377910 () Bool)

(declare-fun tp!1377909 () Bool)

(assert (=> b!4896882 (= e!3061086 (and tp!1377910 tp!1377909))))

(declare-fun b!4896879 () Bool)

(assert (=> b!4896879 (= e!3061086 tp_is_empty!35785)))

(declare-fun b!4896880 () Bool)

(declare-fun tp!1377911 () Bool)

(declare-fun tp!1377913 () Bool)

(assert (=> b!4896880 (= e!3061086 (and tp!1377911 tp!1377913))))

(assert (= (and b!4896298 (is-ElementMatch!13252 (reg!13581 (regex!8177 (h!62866 rulesArg!165))))) b!4896879))

(assert (= (and b!4896298 (is-Concat!21740 (reg!13581 (regex!8177 (h!62866 rulesArg!165))))) b!4896880))

(assert (= (and b!4896298 (is-Star!13252 (reg!13581 (regex!8177 (h!62866 rulesArg!165))))) b!4896881))

(assert (= (and b!4896298 (is-Union!13252 (reg!13581 (regex!8177 (h!62866 rulesArg!165))))) b!4896882))

(declare-fun b!4896885 () Bool)

(declare-fun b_free!131615 () Bool)

(declare-fun b_next!132405 () Bool)

(assert (=> b!4896885 (= b_free!131615 (not b_next!132405))))

(declare-fun t!366105 () Bool)

(declare-fun tb!259327 () Bool)

(assert (=> (and b!4896885 (= (toValue!11076 (transformation!8177 (h!62866 (t!366076 (t!366076 rulesArg!165))))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165)))) t!366105) tb!259327))

(declare-fun result!322932 () Bool)

(assert (= result!322932 result!322906))

(assert (=> d!1573354 t!366105))

(declare-fun t!366107 () Bool)

(declare-fun tb!259329 () Bool)

(assert (=> (and b!4896885 (= (toValue!11076 (transformation!8177 (h!62866 (t!366076 (t!366076 rulesArg!165))))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165)))) t!366107) tb!259329))

(declare-fun result!322934 () Bool)

(assert (= result!322934 result!322912))

(assert (=> d!1573354 t!366107))

(assert (=> d!1573364 t!366105))

(declare-fun t!366109 () Bool)

(declare-fun tb!259331 () Bool)

(assert (=> (and b!4896885 (= (toValue!11076 (transformation!8177 (h!62866 (t!366076 (t!366076 rulesArg!165))))) (toValue!11076 (transformation!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334)))))) t!366109) tb!259331))

(declare-fun result!322936 () Bool)

(assert (= result!322936 result!322928))

(assert (=> d!1573488 t!366109))

(declare-fun tp!1377916 () Bool)

(declare-fun b_and!345423 () Bool)

(assert (=> b!4896885 (= tp!1377916 (and (=> t!366105 result!322932) (=> t!366107 result!322934) (=> t!366109 result!322936) b_and!345423))))

(declare-fun b_free!131617 () Bool)

(declare-fun b_next!132407 () Bool)

(assert (=> b!4896885 (= b_free!131617 (not b_next!132407))))

(declare-fun tb!259333 () Bool)

(declare-fun t!366111 () Bool)

(assert (=> (and b!4896885 (= (toChars!10935 (transformation!8177 (h!62866 (t!366076 (t!366076 rulesArg!165))))) (toChars!10935 (transformation!8177 (rule!11373 (_1!33540 (get!19486 lt!2007334)))))) t!366111) tb!259333))

(declare-fun result!322938 () Bool)

(assert (= result!322938 result!322922))

(assert (=> d!1573438 t!366111))

(declare-fun b_and!345425 () Bool)

(declare-fun tp!1377914 () Bool)

(assert (=> b!4896885 (= tp!1377914 (and (=> t!366111 result!322938) b_and!345425))))

(declare-fun e!3061089 () Bool)

(assert (=> b!4896885 (= e!3061089 (and tp!1377916 tp!1377914))))

(declare-fun b!4896884 () Bool)

(declare-fun tp!1377915 () Bool)

(declare-fun e!3061087 () Bool)

(assert (=> b!4896884 (= e!3061087 (and tp!1377915 (inv!72701 (tag!9041 (h!62866 (t!366076 (t!366076 rulesArg!165))))) (inv!72705 (transformation!8177 (h!62866 (t!366076 (t!366076 rulesArg!165))))) e!3061089))))

(declare-fun b!4896883 () Bool)

(declare-fun e!3061088 () Bool)

(declare-fun tp!1377917 () Bool)

(assert (=> b!4896883 (= e!3061088 (and e!3061087 tp!1377917))))

(assert (=> b!4896283 (= tp!1377845 e!3061088)))

(assert (= b!4896884 b!4896885))

(assert (= b!4896883 b!4896884))

(assert (= (and b!4896283 (is-Cons!56418 (t!366076 (t!366076 rulesArg!165)))) b!4896883))

(declare-fun m!5903732 () Bool)

(assert (=> b!4896884 m!5903732))

(declare-fun m!5903734 () Bool)

(assert (=> b!4896884 m!5903734))

(declare-fun b!4896888 () Bool)

(declare-fun e!3061091 () Bool)

(declare-fun tp!1377921 () Bool)

(assert (=> b!4896888 (= e!3061091 tp!1377921)))

(assert (=> b!4896284 (= tp!1377843 e!3061091)))

(declare-fun b!4896889 () Bool)

(declare-fun tp!1377919 () Bool)

(declare-fun tp!1377918 () Bool)

(assert (=> b!4896889 (= e!3061091 (and tp!1377919 tp!1377918))))

(declare-fun b!4896886 () Bool)

(assert (=> b!4896886 (= e!3061091 tp_is_empty!35785)))

(declare-fun b!4896887 () Bool)

(declare-fun tp!1377920 () Bool)

(declare-fun tp!1377922 () Bool)

(assert (=> b!4896887 (= e!3061091 (and tp!1377920 tp!1377922))))

(assert (= (and b!4896284 (is-ElementMatch!13252 (regex!8177 (h!62866 (t!366076 rulesArg!165))))) b!4896886))

(assert (= (and b!4896284 (is-Concat!21740 (regex!8177 (h!62866 (t!366076 rulesArg!165))))) b!4896887))

(assert (= (and b!4896284 (is-Star!13252 (regex!8177 (h!62866 (t!366076 rulesArg!165))))) b!4896888))

(assert (= (and b!4896284 (is-Union!13252 (regex!8177 (h!62866 (t!366076 rulesArg!165))))) b!4896889))

(declare-fun b!4896892 () Bool)

(declare-fun e!3061092 () Bool)

(declare-fun tp!1377926 () Bool)

(assert (=> b!4896892 (= e!3061092 tp!1377926)))

(assert (=> b!4896297 (= tp!1377858 e!3061092)))

(declare-fun b!4896893 () Bool)

(declare-fun tp!1377924 () Bool)

(declare-fun tp!1377923 () Bool)

(assert (=> b!4896893 (= e!3061092 (and tp!1377924 tp!1377923))))

(declare-fun b!4896890 () Bool)

(assert (=> b!4896890 (= e!3061092 tp_is_empty!35785)))

(declare-fun b!4896891 () Bool)

(declare-fun tp!1377925 () Bool)

(declare-fun tp!1377927 () Bool)

(assert (=> b!4896891 (= e!3061092 (and tp!1377925 tp!1377927))))

(assert (= (and b!4896297 (is-ElementMatch!13252 (regOne!27016 (regex!8177 (h!62866 rulesArg!165))))) b!4896890))

(assert (= (and b!4896297 (is-Concat!21740 (regOne!27016 (regex!8177 (h!62866 rulesArg!165))))) b!4896891))

(assert (= (and b!4896297 (is-Star!13252 (regOne!27016 (regex!8177 (h!62866 rulesArg!165))))) b!4896892))

(assert (= (and b!4896297 (is-Union!13252 (regOne!27016 (regex!8177 (h!62866 rulesArg!165))))) b!4896893))

(declare-fun b!4896896 () Bool)

(declare-fun e!3061093 () Bool)

(declare-fun tp!1377931 () Bool)

(assert (=> b!4896896 (= e!3061093 tp!1377931)))

(assert (=> b!4896297 (= tp!1377860 e!3061093)))

(declare-fun b!4896897 () Bool)

(declare-fun tp!1377929 () Bool)

(declare-fun tp!1377928 () Bool)

(assert (=> b!4896897 (= e!3061093 (and tp!1377929 tp!1377928))))

(declare-fun b!4896894 () Bool)

(assert (=> b!4896894 (= e!3061093 tp_is_empty!35785)))

(declare-fun b!4896895 () Bool)

(declare-fun tp!1377930 () Bool)

(declare-fun tp!1377932 () Bool)

(assert (=> b!4896895 (= e!3061093 (and tp!1377930 tp!1377932))))

(assert (= (and b!4896297 (is-ElementMatch!13252 (regTwo!27016 (regex!8177 (h!62866 rulesArg!165))))) b!4896894))

(assert (= (and b!4896297 (is-Concat!21740 (regTwo!27016 (regex!8177 (h!62866 rulesArg!165))))) b!4896895))

(assert (= (and b!4896297 (is-Star!13252 (regTwo!27016 (regex!8177 (h!62866 rulesArg!165))))) b!4896896))

(assert (= (and b!4896297 (is-Union!13252 (regTwo!27016 (regex!8177 (h!62866 rulesArg!165))))) b!4896897))

(declare-fun b!4896902 () Bool)

(declare-fun e!3061096 () Bool)

(declare-fun tp!1377935 () Bool)

(assert (=> b!4896902 (= e!3061096 (and tp_is_empty!35785 tp!1377935))))

(assert (=> b!4896310 (= tp!1377869 e!3061096)))

(assert (= (and b!4896310 (is-Cons!56416 (innerList!14833 (xs!18061 (c!832216 input!1236))))) b!4896902))

(declare-fun e!3061098 () Bool)

(declare-fun b!4896903 () Bool)

(declare-fun tp!1377936 () Bool)

(declare-fun tp!1377937 () Bool)

(assert (=> b!4896903 (= e!3061098 (and (inv!72704 (left!40988 (left!40988 (c!832216 input!1236)))) tp!1377937 (inv!72704 (right!41318 (left!40988 (c!832216 input!1236)))) tp!1377936))))

(declare-fun b!4896905 () Bool)

(declare-fun e!3061097 () Bool)

(declare-fun tp!1377938 () Bool)

(assert (=> b!4896905 (= e!3061097 tp!1377938)))

(declare-fun b!4896904 () Bool)

(assert (=> b!4896904 (= e!3061098 (and (inv!72712 (xs!18061 (left!40988 (c!832216 input!1236)))) e!3061097))))

(assert (=> b!4896308 (= tp!1377868 (and (inv!72704 (left!40988 (c!832216 input!1236))) e!3061098))))

(assert (= (and b!4896308 (is-Node!14745 (left!40988 (c!832216 input!1236)))) b!4896903))

(assert (= b!4896904 b!4896905))

(assert (= (and b!4896308 (is-Leaf!24551 (left!40988 (c!832216 input!1236)))) b!4896904))

(declare-fun m!5903736 () Bool)

(assert (=> b!4896903 m!5903736))

(declare-fun m!5903738 () Bool)

(assert (=> b!4896903 m!5903738))

(declare-fun m!5903740 () Bool)

(assert (=> b!4896904 m!5903740))

(assert (=> b!4896308 m!5902966))

(declare-fun tp!1377940 () Bool)

(declare-fun tp!1377939 () Bool)

(declare-fun e!3061100 () Bool)

(declare-fun b!4896906 () Bool)

(assert (=> b!4896906 (= e!3061100 (and (inv!72704 (left!40988 (right!41318 (c!832216 input!1236)))) tp!1377940 (inv!72704 (right!41318 (right!41318 (c!832216 input!1236)))) tp!1377939))))

(declare-fun b!4896908 () Bool)

(declare-fun e!3061099 () Bool)

(declare-fun tp!1377941 () Bool)

(assert (=> b!4896908 (= e!3061099 tp!1377941)))

(declare-fun b!4896907 () Bool)

(assert (=> b!4896907 (= e!3061100 (and (inv!72712 (xs!18061 (right!41318 (c!832216 input!1236)))) e!3061099))))

(assert (=> b!4896308 (= tp!1377867 (and (inv!72704 (right!41318 (c!832216 input!1236))) e!3061100))))

(assert (= (and b!4896308 (is-Node!14745 (right!41318 (c!832216 input!1236)))) b!4896906))

(assert (= b!4896907 b!4896908))

(assert (= (and b!4896308 (is-Leaf!24551 (right!41318 (c!832216 input!1236)))) b!4896907))

(declare-fun m!5903742 () Bool)

(assert (=> b!4896906 m!5903742))

(declare-fun m!5903744 () Bool)

(assert (=> b!4896906 m!5903744))

(declare-fun m!5903746 () Bool)

(assert (=> b!4896907 m!5903746))

(assert (=> b!4896308 m!5902968))

(declare-fun b!4896911 () Bool)

(declare-fun e!3061101 () Bool)

(declare-fun tp!1377945 () Bool)

(assert (=> b!4896911 (= e!3061101 tp!1377945)))

(assert (=> b!4896299 (= tp!1377857 e!3061101)))

(declare-fun b!4896912 () Bool)

(declare-fun tp!1377943 () Bool)

(declare-fun tp!1377942 () Bool)

(assert (=> b!4896912 (= e!3061101 (and tp!1377943 tp!1377942))))

(declare-fun b!4896909 () Bool)

(assert (=> b!4896909 (= e!3061101 tp_is_empty!35785)))

(declare-fun b!4896910 () Bool)

(declare-fun tp!1377944 () Bool)

(declare-fun tp!1377946 () Bool)

(assert (=> b!4896910 (= e!3061101 (and tp!1377944 tp!1377946))))

(assert (= (and b!4896299 (is-ElementMatch!13252 (regOne!27017 (regex!8177 (h!62866 rulesArg!165))))) b!4896909))

(assert (= (and b!4896299 (is-Concat!21740 (regOne!27017 (regex!8177 (h!62866 rulesArg!165))))) b!4896910))

(assert (= (and b!4896299 (is-Star!13252 (regOne!27017 (regex!8177 (h!62866 rulesArg!165))))) b!4896911))

(assert (= (and b!4896299 (is-Union!13252 (regOne!27017 (regex!8177 (h!62866 rulesArg!165))))) b!4896912))

(declare-fun b!4896915 () Bool)

(declare-fun e!3061102 () Bool)

(declare-fun tp!1377950 () Bool)

(assert (=> b!4896915 (= e!3061102 tp!1377950)))

(assert (=> b!4896299 (= tp!1377856 e!3061102)))

(declare-fun b!4896916 () Bool)

(declare-fun tp!1377948 () Bool)

(declare-fun tp!1377947 () Bool)

(assert (=> b!4896916 (= e!3061102 (and tp!1377948 tp!1377947))))

(declare-fun b!4896913 () Bool)

(assert (=> b!4896913 (= e!3061102 tp_is_empty!35785)))

(declare-fun b!4896914 () Bool)

(declare-fun tp!1377949 () Bool)

(declare-fun tp!1377951 () Bool)

(assert (=> b!4896914 (= e!3061102 (and tp!1377949 tp!1377951))))

(assert (= (and b!4896299 (is-ElementMatch!13252 (regTwo!27017 (regex!8177 (h!62866 rulesArg!165))))) b!4896913))

(assert (= (and b!4896299 (is-Concat!21740 (regTwo!27017 (regex!8177 (h!62866 rulesArg!165))))) b!4896914))

(assert (= (and b!4896299 (is-Star!13252 (regTwo!27017 (regex!8177 (h!62866 rulesArg!165))))) b!4896915))

(assert (= (and b!4896299 (is-Union!13252 (regTwo!27017 (regex!8177 (h!62866 rulesArg!165))))) b!4896916))

(declare-fun b_lambda!194739 () Bool)

(assert (= b_lambda!194727 (or (and b!4896051 b_free!131599) (and b!4896285 b_free!131607 (= (toValue!11076 (transformation!8177 (h!62866 (t!366076 rulesArg!165)))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))))) (and b!4896885 b_free!131615 (= (toValue!11076 (transformation!8177 (h!62866 (t!366076 (t!366076 rulesArg!165))))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))))) b_lambda!194739)))

(declare-fun b_lambda!194741 () Bool)

(assert (= b_lambda!194735 (or d!1573304 b_lambda!194741)))

(declare-fun bs!1176404 () Bool)

(declare-fun d!1573518 () Bool)

(assert (= bs!1176404 (and d!1573518 d!1573304)))

(assert (=> bs!1176404 (= (dynLambda!22664 lambda!244089 (h!62866 rulesArg!165)) (ruleValid!3675 thiss!14805 (h!62866 rulesArg!165)))))

(assert (=> bs!1176404 m!5902884))

(assert (=> b!4896820 d!1573518))

(declare-fun b_lambda!194743 () Bool)

(assert (= b_lambda!194729 (or b!4896175 b_lambda!194743)))

(declare-fun bs!1176405 () Bool)

(declare-fun d!1573520 () Bool)

(assert (= bs!1176405 (and d!1573520 b!4896175)))

(assert (=> bs!1176405 (= (dynLambda!22661 lambda!244083 (seqFromList!5939 (list!17733 (_1!33543 lt!2007293)))) (= (list!17733 (dynLambda!22662 (toChars!10935 (transformation!8177 (h!62866 rulesArg!165))) (dynLambda!22660 (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))) (seqFromList!5939 (list!17733 (_1!33543 lt!2007293)))))) (list!17733 (seqFromList!5939 (list!17733 (_1!33543 lt!2007293))))))))

(declare-fun b_lambda!194751 () Bool)

(assert (=> (not b_lambda!194751) (not bs!1176405)))

(declare-fun t!366113 () Bool)

(declare-fun tb!259335 () Bool)

(assert (=> (and b!4896051 (= (toChars!10935 (transformation!8177 (h!62866 rulesArg!165))) (toChars!10935 (transformation!8177 (h!62866 rulesArg!165)))) t!366113) tb!259335))

(declare-fun e!3061103 () Bool)

(declare-fun b!4896917 () Bool)

(declare-fun tp!1377952 () Bool)

(assert (=> b!4896917 (= e!3061103 (and (inv!72704 (c!832216 (dynLambda!22662 (toChars!10935 (transformation!8177 (h!62866 rulesArg!165))) (dynLambda!22660 (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))) (seqFromList!5939 (list!17733 (_1!33543 lt!2007293))))))) tp!1377952))))

(declare-fun result!322942 () Bool)

(assert (=> tb!259335 (= result!322942 (and (inv!72706 (dynLambda!22662 (toChars!10935 (transformation!8177 (h!62866 rulesArg!165))) (dynLambda!22660 (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))) (seqFromList!5939 (list!17733 (_1!33543 lt!2007293)))))) e!3061103))))

(assert (= tb!259335 b!4896917))

(declare-fun m!5903748 () Bool)

(assert (=> b!4896917 m!5903748))

(declare-fun m!5903750 () Bool)

(assert (=> tb!259335 m!5903750))

(assert (=> bs!1176405 t!366113))

(declare-fun b_and!345427 () Bool)

(assert (= b_and!345415 (and (=> t!366113 result!322942) b_and!345427)))

(declare-fun t!366115 () Bool)

(declare-fun tb!259337 () Bool)

(assert (=> (and b!4896285 (= (toChars!10935 (transformation!8177 (h!62866 (t!366076 rulesArg!165)))) (toChars!10935 (transformation!8177 (h!62866 rulesArg!165)))) t!366115) tb!259337))

(declare-fun result!322944 () Bool)

(assert (= result!322944 result!322942))

(assert (=> bs!1176405 t!366115))

(declare-fun b_and!345429 () Bool)

(assert (= b_and!345417 (and (=> t!366115 result!322944) b_and!345429)))

(declare-fun t!366117 () Bool)

(declare-fun tb!259339 () Bool)

(assert (=> (and b!4896885 (= (toChars!10935 (transformation!8177 (h!62866 (t!366076 (t!366076 rulesArg!165))))) (toChars!10935 (transformation!8177 (h!62866 rulesArg!165)))) t!366117) tb!259339))

(declare-fun result!322946 () Bool)

(assert (= result!322946 result!322942))

(assert (=> bs!1176405 t!366117))

(declare-fun b_and!345431 () Bool)

(assert (= b_and!345425 (and (=> t!366117 result!322946) b_and!345431)))

(declare-fun b_lambda!194753 () Bool)

(assert (=> (not b_lambda!194753) (not bs!1176405)))

(assert (=> bs!1176405 t!366086))

(declare-fun b_and!345433 () Bool)

(assert (= b_and!345419 (and (=> t!366086 result!322912) b_and!345433)))

(assert (=> bs!1176405 t!366088))

(declare-fun b_and!345435 () Bool)

(assert (= b_and!345421 (and (=> t!366088 result!322914) b_and!345435)))

(assert (=> bs!1176405 t!366107))

(declare-fun b_and!345437 () Bool)

(assert (= b_and!345423 (and (=> t!366107 result!322934) b_and!345437)))

(assert (=> bs!1176405 m!5903176))

(declare-fun m!5903752 () Bool)

(assert (=> bs!1176405 m!5903752))

(assert (=> bs!1176405 m!5902864))

(assert (=> bs!1176405 m!5903176))

(assert (=> bs!1176405 m!5903752))

(declare-fun m!5903754 () Bool)

(assert (=> bs!1176405 m!5903754))

(assert (=> bs!1176405 m!5902864))

(assert (=> bs!1176405 m!5903178))

(assert (=> d!1573392 d!1573520))

(declare-fun b_lambda!194745 () Bool)

(assert (= b_lambda!194725 (or b!4896175 b_lambda!194745)))

(declare-fun bs!1176406 () Bool)

(declare-fun d!1573522 () Bool)

(assert (= bs!1176406 (and d!1573522 b!4896175)))

(assert (=> bs!1176406 (= (dynLambda!22661 lambda!244083 (_1!33543 lt!2007293)) (= (list!17733 (dynLambda!22662 (toChars!10935 (transformation!8177 (h!62866 rulesArg!165))) (dynLambda!22660 (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))) (_1!33543 lt!2007293)))) (list!17733 (_1!33543 lt!2007293))))))

(declare-fun b_lambda!194755 () Bool)

(assert (=> (not b_lambda!194755) (not bs!1176406)))

(declare-fun t!366119 () Bool)

(declare-fun tb!259341 () Bool)

(assert (=> (and b!4896051 (= (toChars!10935 (transformation!8177 (h!62866 rulesArg!165))) (toChars!10935 (transformation!8177 (h!62866 rulesArg!165)))) t!366119) tb!259341))

(declare-fun e!3061104 () Bool)

(declare-fun b!4896918 () Bool)

(declare-fun tp!1377953 () Bool)

(assert (=> b!4896918 (= e!3061104 (and (inv!72704 (c!832216 (dynLambda!22662 (toChars!10935 (transformation!8177 (h!62866 rulesArg!165))) (dynLambda!22660 (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))) (_1!33543 lt!2007293))))) tp!1377953))))

(declare-fun result!322948 () Bool)

(assert (=> tb!259341 (= result!322948 (and (inv!72706 (dynLambda!22662 (toChars!10935 (transformation!8177 (h!62866 rulesArg!165))) (dynLambda!22660 (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))) (_1!33543 lt!2007293)))) e!3061104))))

(assert (= tb!259341 b!4896918))

(declare-fun m!5903756 () Bool)

(assert (=> b!4896918 m!5903756))

(declare-fun m!5903758 () Bool)

(assert (=> tb!259341 m!5903758))

(assert (=> bs!1176406 t!366119))

(declare-fun b_and!345439 () Bool)

(assert (= b_and!345427 (and (=> t!366119 result!322948) b_and!345439)))

(declare-fun t!366121 () Bool)

(declare-fun tb!259343 () Bool)

(assert (=> (and b!4896285 (= (toChars!10935 (transformation!8177 (h!62866 (t!366076 rulesArg!165)))) (toChars!10935 (transformation!8177 (h!62866 rulesArg!165)))) t!366121) tb!259343))

(declare-fun result!322950 () Bool)

(assert (= result!322950 result!322948))

(assert (=> bs!1176406 t!366121))

(declare-fun b_and!345441 () Bool)

(assert (= b_and!345429 (and (=> t!366121 result!322950) b_and!345441)))

(declare-fun t!366123 () Bool)

(declare-fun tb!259345 () Bool)

(assert (=> (and b!4896885 (= (toChars!10935 (transformation!8177 (h!62866 (t!366076 (t!366076 rulesArg!165))))) (toChars!10935 (transformation!8177 (h!62866 rulesArg!165)))) t!366123) tb!259345))

(declare-fun result!322952 () Bool)

(assert (= result!322952 result!322948))

(assert (=> bs!1176406 t!366123))

(declare-fun b_and!345443 () Bool)

(assert (= b_and!345431 (and (=> t!366123 result!322952) b_and!345443)))

(declare-fun b_lambda!194757 () Bool)

(assert (=> (not b_lambda!194757) (not bs!1176406)))

(assert (=> bs!1176406 t!366082))

(declare-fun b_and!345445 () Bool)

(assert (= b_and!345433 (and (=> t!366082 result!322906) b_and!345445)))

(assert (=> bs!1176406 t!366084))

(declare-fun b_and!345447 () Bool)

(assert (= b_and!345435 (and (=> t!366084 result!322910) b_and!345447)))

(assert (=> bs!1176406 t!366105))

(declare-fun b_and!345449 () Bool)

(assert (= b_and!345437 (and (=> t!366105 result!322932) b_and!345449)))

(assert (=> bs!1176406 m!5903174))

(declare-fun m!5903760 () Bool)

(assert (=> bs!1176406 m!5903760))

(assert (=> bs!1176406 m!5903174))

(assert (=> bs!1176406 m!5903760))

(declare-fun m!5903762 () Bool)

(assert (=> bs!1176406 m!5903762))

(assert (=> bs!1176406 m!5902868))

(assert (=> d!1573362 d!1573522))

(declare-fun b_lambda!194747 () Bool)

(assert (= b_lambda!194721 (or (and b!4896051 b_free!131599) (and b!4896285 b_free!131607 (= (toValue!11076 (transformation!8177 (h!62866 (t!366076 rulesArg!165)))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))))) (and b!4896885 b_free!131615 (= (toValue!11076 (transformation!8177 (h!62866 (t!366076 (t!366076 rulesArg!165))))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))))) b_lambda!194747)))

(declare-fun b_lambda!194749 () Bool)

(assert (= b_lambda!194723 (or (and b!4896051 b_free!131599) (and b!4896285 b_free!131607 (= (toValue!11076 (transformation!8177 (h!62866 (t!366076 rulesArg!165)))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))))) (and b!4896885 b_free!131615 (= (toValue!11076 (transformation!8177 (h!62866 (t!366076 (t!366076 rulesArg!165))))) (toValue!11076 (transformation!8177 (h!62866 rulesArg!165))))) b_lambda!194749)))

(push 1)

(assert (not b!4896308))

(assert (not b_next!132391))

(assert b_and!345447)

(assert (not b!4896722))

(assert (not b!4896810))

(assert (not b!4896823))

(assert (not b!4896880))

(assert (not b!4896512))

(assert (not b!4896916))

(assert (not d!1573454))

(assert (not b!4896814))

(assert (not d!1573484))

(assert (not b!4896530))

(assert (not b!4896687))

(assert (not tb!259311))

(assert (not b!4896661))

(assert (not b!4896889))

(assert (not b!4896912))

(assert (not b!4896520))

(assert (not b!4896638))

(assert (not d!1573326))

(assert (not b!4896652))

(assert (not b!4896677))

(assert (not b!4896731))

(assert (not bm!339671))

(assert (not tb!259319))

(assert tp_is_empty!35785)

(assert (not d!1573348))

(assert (not b!4896897))

(assert (not b!4896694))

(assert (not bm!339681))

(assert (not b!4896727))

(assert (not b!4896637))

(assert (not b!4896914))

(assert (not b!4896428))

(assert (not b!4896738))

(assert (not d!1573442))

(assert (not d!1573492))

(assert (not b_lambda!194747))

(assert (not b!4896507))

(assert (not b!4896918))

(assert (not d!1573338))

(assert (not b!4896907))

(assert (not b!4896690))

(assert (not b!4896713))

(assert (not b!4896659))

(assert (not b!4896689))

(assert (not b!4896684))

(assert (not b!4896852))

(assert (not bs!1176405))

(assert (not b!4896656))

(assert (not b_lambda!194753))

(assert (not b!4896906))

(assert (not b!4896429))

(assert (not b!4896720))

(assert (not bm!339682))

(assert (not b!4896884))

(assert (not d!1573370))

(assert (not bs!1176406))

(assert (not b!4896663))

(assert (not b!4896696))

(assert (not b!4896432))

(assert (not b!4896427))

(assert (not b!4896715))

(assert (not b!4896734))

(assert (not b!4896893))

(assert (not d!1573394))

(assert (not b!4896743))

(assert (not b!4896643))

(assert (not d!1573490))

(assert (not b!4896821))

(assert (not b!4896904))

(assert (not d!1573496))

(assert (not b!4896737))

(assert (not b!4896911))

(assert (not d!1573478))

(assert (not d!1573330))

(assert (not b!4896740))

(assert (not d!1573328))

(assert (not b!4896828))

(assert (not b!4896726))

(assert (not d!1573506))

(assert (not d!1573332))

(assert (not d!1573356))

(assert (not b!4896723))

(assert (not b!4896807))

(assert (not b!4896827))

(assert (not b!4896917))

(assert (not b!4896721))

(assert (not b!4896456))

(assert (not b!4896724))

(assert (not b!4896882))

(assert b_and!345445)

(assert (not b!4896451))

(assert (not b_next!132407))

(assert (not b_next!132397))

(assert b_and!345441)

(assert (not b!4896457))

(assert (not bm!339712))

(assert (not b_lambda!194737))

(assert (not tb!259341))

(assert (not b_next!132389))

(assert (not b!4896741))

(assert (not b!4896434))

(assert (not d!1573472))

(assert (not d!1573354))

(assert (not d!1573448))

(assert (not b!4896878))

(assert (not b!4896699))

(assert (not bm!339673))

(assert (not b!4896688))

(assert (not b!4896452))

(assert (not bm!339669))

(assert (not b_lambda!194739))

(assert (not bm!339652))

(assert (not b_lambda!194755))

(assert (not b!4896730))

(assert (not b_lambda!194745))

(assert (not b!4896718))

(assert (not b!4896873))

(assert (not b!4896426))

(assert (not d!1573464))

(assert (not b!4896745))

(assert (not b!4896858))

(assert (not b!4896657))

(assert (not b!4896905))

(assert (not b!4896691))

(assert (not b!4896676))

(assert (not bm!339676))

(assert (not b_lambda!194733))

(assert (not d!1573396))

(assert (not b!4896892))

(assert (not b!4896450))

(assert (not bm!339670))

(assert (not d!1573358))

(assert (not d!1573378))

(assert (not d!1573426))

(assert (not b!4896664))

(assert (not bm!339702))

(assert (not b_lambda!194743))

(assert b_and!345443)

(assert (not bm!339674))

(assert (not d!1573350))

(assert (not b!4896505))

(assert (not d!1573386))

(assert (not b!4896883))

(assert (not b!4896454))

(assert (not b!4896881))

(assert (not b!4896518))

(assert (not b!4896449))

(assert b_and!345439)

(assert (not b!4896700))

(assert (not d!1573376))

(assert (not bm!339683))

(assert (not b!4896861))

(assert (not b!4896829))

(assert (not b_next!132405))

(assert (not tb!259335))

(assert (not b!4896804))

(assert (not d!1573516))

(assert (not b!4896813))

(assert (not b!4896658))

(assert (not b!4896809))

(assert (not bm!339675))

(assert (not b!4896665))

(assert (not b!4896692))

(assert (not b!4896908))

(assert (not b!4896825))

(assert (not b!4896433))

(assert (not d!1573434))

(assert (not bm!339703))

(assert (not b!4896666))

(assert (not b!4896431))

(assert (not b!4896896))

(assert (not b!4896903))

(assert (not d!1573346))

(assert (not b!4896887))

(assert (not b!4896891))

(assert (not b!4896902))

(assert (not d!1573334))

(assert (not d!1573392))

(assert (not b!4896742))

(assert (not d!1573336))

(assert (not b_lambda!194741))

(assert (not b!4896716))

(assert (not b!4896910))

(assert (not bm!339672))

(assert (not b!4896406))

(assert (not d!1573362))

(assert (not d!1573438))

(assert (not b!4896498))

(assert (not b!4896895))

(assert (not b!4896683))

(assert (not b_lambda!194751))

(assert (not d!1573344))

(assert (not b!4896714))

(assert (not b!4896660))

(assert (not b!4896826))

(assert (not b!4896725))

(assert (not tb!259307))

(assert (not d!1573436))

(assert (not d!1573470))

(assert (not b!4896862))

(assert (not b!4896857))

(assert (not b_lambda!194749))

(assert (not b!4896915))

(assert (not d!1573514))

(assert (not b!4896888))

(assert (not bs!1176404))

(assert (not tb!259323))

(assert (not b!4896728))

(assert (not b!4896458))

(assert (not b!4896733))

(assert (not b!4896685))

(assert (not d!1573424))

(assert (not d!1573342))

(assert (not b_lambda!194757))

(assert (not b!4896736))

(assert (not b_next!132399))

(assert b_and!345449)

(assert (not b!4896499))

(assert (not b!4896855))

(assert (not d!1573504))

(assert (not b!4896717))

(assert (not b!4896744))

(assert (not d!1573432))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!132389))

(assert b_and!345443)

(assert (not b_next!132391))

(assert b_and!345447)

(assert b_and!345445)

(assert (not b_next!132407))

(assert (not b_next!132397))

(assert b_and!345441)

(assert b_and!345439)

(assert (not b_next!132405))

(assert (not b_next!132399))

(assert b_and!345449)

(check-sat)

(pop 1)


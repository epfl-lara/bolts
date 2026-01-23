; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511524 () Bool)

(assert start!511524)

(declare-fun b!4887202 () Bool)

(declare-fun b_free!131323 () Bool)

(declare-fun b_next!132113 () Bool)

(assert (=> b!4887202 (= b_free!131323 (not b_next!132113))))

(declare-fun tp!1375411 () Bool)

(declare-fun b_and!344155 () Bool)

(assert (=> b!4887202 (= tp!1375411 b_and!344155)))

(declare-fun b_free!131325 () Bool)

(declare-fun b_next!132115 () Bool)

(assert (=> b!4887202 (= b_free!131325 (not b_next!132115))))

(declare-fun tp!1375409 () Bool)

(declare-fun b_and!344157 () Bool)

(assert (=> b!4887202 (= tp!1375409 b_and!344157)))

(declare-fun b!4887195 () Bool)

(declare-fun e!3055074 () Bool)

(assert (=> b!4887195 (= e!3055074 true)))

(declare-fun lt!2002846 () Bool)

(declare-fun e!3055079 () Bool)

(assert (=> b!4887195 (= lt!2002846 e!3055079)))

(declare-fun res!2087038 () Bool)

(assert (=> b!4887195 (=> res!2087038 e!3055079)))

(declare-fun lt!2002847 () Bool)

(assert (=> b!4887195 (= res!2087038 (not lt!2002847))))

(declare-fun res!2087037 () Bool)

(declare-fun e!3055082 () Bool)

(assert (=> start!511524 (=> (not res!2087037) (not e!3055082))))

(declare-datatypes ((LexerInterface!7738 0))(
  ( (LexerInterfaceExt!7735 (__x!34205 Int)) (Lexer!7736) )
))
(declare-fun thiss!14805 () LexerInterface!7738)

(get-info :version)

(assert (=> start!511524 (= res!2087037 ((_ is Lexer!7736) thiss!14805))))

(assert (=> start!511524 e!3055082))

(assert (=> start!511524 true))

(declare-fun e!3055084 () Bool)

(assert (=> start!511524 e!3055084))

(declare-datatypes ((C!26640 0))(
  ( (C!26641 (val!22654 Int)) )
))
(declare-datatypes ((List!56443 0))(
  ( (Nil!56319) (Cons!56319 (h!62767 C!26640) (t!365089 List!56443)) )
))
(declare-datatypes ((IArray!29489 0))(
  ( (IArray!29490 (innerList!14802 List!56443)) )
))
(declare-datatypes ((Conc!14714 0))(
  ( (Node!14714 (left!40905 Conc!14714) (right!41235 Conc!14714) (csize!29658 Int) (cheight!14925 Int)) (Leaf!24504 (xs!18030 IArray!29489) (csize!29659 Int)) (Empty!14714) )
))
(declare-datatypes ((BalanceConc!28858 0))(
  ( (BalanceConc!28859 (c!830799 Conc!14714)) )
))
(declare-fun input!1236 () BalanceConc!28858)

(declare-fun e!3055077 () Bool)

(declare-fun inv!72511 (BalanceConc!28858) Bool)

(assert (=> start!511524 (and (inv!72511 input!1236) e!3055077)))

(declare-fun b!4887196 () Bool)

(declare-fun e!3055081 () Bool)

(declare-fun e!3055083 () Bool)

(declare-fun tp!1375413 () Bool)

(declare-datatypes ((List!56444 0))(
  ( (Nil!56320) (Cons!56320 (h!62768 (_ BitVec 16)) (t!365090 List!56444)) )
))
(declare-datatypes ((TokenValue!8456 0))(
  ( (FloatLiteralValue!16912 (text!59637 List!56444)) (TokenValueExt!8455 (__x!34206 Int)) (Broken!42280 (value!261287 List!56444)) (Object!8579) (End!8456) (Def!8456) (Underscore!8456) (Match!8456) (Else!8456) (Error!8456) (Case!8456) (If!8456) (Extends!8456) (Abstract!8456) (Class!8456) (Val!8456) (DelimiterValue!16912 (del!8516 List!56444)) (KeywordValue!8462 (value!261288 List!56444)) (CommentValue!16912 (value!261289 List!56444)) (WhitespaceValue!16912 (value!261290 List!56444)) (IndentationValue!8456 (value!261291 List!56444)) (String!63721) (Int32!8456) (Broken!42281 (value!261292 List!56444)) (Boolean!8457) (Unit!146309) (OperatorValue!8459 (op!8516 List!56444)) (IdentifierValue!16912 (value!261293 List!56444)) (IdentifierValue!16913 (value!261294 List!56444)) (WhitespaceValue!16913 (value!261295 List!56444)) (True!16912) (False!16912) (Broken!42282 (value!261296 List!56444)) (Broken!42283 (value!261297 List!56444)) (True!16913) (RightBrace!8456) (RightBracket!8456) (Colon!8456) (Null!8456) (Comma!8456) (LeftBracket!8456) (False!16913) (LeftBrace!8456) (ImaginaryLiteralValue!8456 (text!59638 List!56444)) (StringLiteralValue!25368 (value!261298 List!56444)) (EOFValue!8456 (value!261299 List!56444)) (IdentValue!8456 (value!261300 List!56444)) (DelimiterValue!16913 (value!261301 List!56444)) (DedentValue!8456 (value!261302 List!56444)) (NewLineValue!8456 (value!261303 List!56444)) (IntegerValue!25368 (value!261304 (_ BitVec 32)) (text!59639 List!56444)) (IntegerValue!25369 (value!261305 Int) (text!59640 List!56444)) (Times!8456) (Or!8456) (Equal!8456) (Minus!8456) (Broken!42284 (value!261306 List!56444)) (And!8456) (Div!8456) (LessEqual!8456) (Mod!8456) (Concat!21677) (Not!8456) (Plus!8456) (SpaceValue!8456 (value!261307 List!56444)) (IntegerValue!25370 (value!261308 Int) (text!59641 List!56444)) (StringLiteralValue!25369 (text!59642 List!56444)) (FloatLiteralValue!16913 (text!59643 List!56444)) (BytesLiteralValue!8456 (value!261309 List!56444)) (CommentValue!16913 (value!261310 List!56444)) (StringLiteralValue!25370 (value!261311 List!56444)) (ErrorTokenValue!8456 (msg!8517 List!56444)) )
))
(declare-datatypes ((Regex!13221 0))(
  ( (ElementMatch!13221 (c!830800 C!26640)) (Concat!21678 (regOne!26954 Regex!13221) (regTwo!26954 Regex!13221)) (EmptyExpr!13221) (Star!13221 (reg!13550 Regex!13221)) (EmptyLang!13221) (Union!13221 (regOne!26955 Regex!13221) (regTwo!26955 Regex!13221)) )
))
(declare-datatypes ((String!63722 0))(
  ( (String!63723 (value!261312 String)) )
))
(declare-datatypes ((TokenValueInjection!16220 0))(
  ( (TokenValueInjection!16221 (toValue!11033 Int) (toChars!10892 Int)) )
))
(declare-datatypes ((Rule!16092 0))(
  ( (Rule!16093 (regex!8146 Regex!13221) (tag!9010 String!63722) (isSeparator!8146 Bool) (transformation!8146 TokenValueInjection!16220)) )
))
(declare-datatypes ((List!56445 0))(
  ( (Nil!56321) (Cons!56321 (h!62769 Rule!16092) (t!365091 List!56445)) )
))
(declare-fun rulesArg!165 () List!56445)

(declare-fun inv!72507 (String!63722) Bool)

(declare-fun inv!72512 (TokenValueInjection!16220) Bool)

(assert (=> b!4887196 (= e!3055081 (and tp!1375413 (inv!72507 (tag!9010 (h!62769 rulesArg!165))) (inv!72512 (transformation!8146 (h!62769 rulesArg!165))) e!3055083))))

(declare-fun b!4887197 () Bool)

(declare-fun e!3055080 () Bool)

(declare-datatypes ((Token!14860 0))(
  ( (Token!14861 (value!261313 TokenValue!8456) (rule!11320 Rule!16092) (size!37086 Int) (originalCharacters!8461 List!56443)) )
))
(declare-datatypes ((tuple2!60316 0))(
  ( (tuple2!60317 (_1!33461 Token!14860) (_2!33461 BalanceConc!28858)) )
))
(declare-fun lt!2002852 () tuple2!60316)

(declare-datatypes ((tuple2!60318 0))(
  ( (tuple2!60319 (_1!33462 Token!14860) (_2!33462 List!56443)) )
))
(declare-fun lt!2002848 () tuple2!60318)

(declare-fun list!17683 (BalanceConc!28858) List!56443)

(assert (=> b!4887197 (= e!3055080 (= (list!17683 (_2!33461 lt!2002852)) (_2!33462 lt!2002848)))))

(declare-fun b!4887198 () Bool)

(declare-fun tp!1375412 () Bool)

(assert (=> b!4887198 (= e!3055084 (and e!3055081 tp!1375412))))

(declare-fun b!4887199 () Bool)

(assert (=> b!4887199 (= e!3055079 e!3055080)))

(declare-fun res!2087035 () Bool)

(assert (=> b!4887199 (=> (not res!2087035) (not e!3055080))))

(assert (=> b!4887199 (= res!2087035 (= (_1!33461 lt!2002852) (_1!33462 lt!2002848)))))

(declare-datatypes ((Option!13975 0))(
  ( (None!13974) (Some!13974 (v!49924 tuple2!60318)) )
))
(declare-fun lt!2002845 () Option!13975)

(declare-fun get!19420 (Option!13975) tuple2!60318)

(assert (=> b!4887199 (= lt!2002848 (get!19420 lt!2002845))))

(declare-datatypes ((Option!13976 0))(
  ( (None!13975) (Some!13975 (v!49925 tuple2!60316)) )
))
(declare-fun lt!2002851 () Option!13976)

(declare-fun get!19421 (Option!13976) tuple2!60316)

(assert (=> b!4887199 (= lt!2002852 (get!19421 lt!2002851))))

(declare-fun b!4887200 () Bool)

(declare-fun tp!1375410 () Bool)

(declare-fun inv!72513 (Conc!14714) Bool)

(assert (=> b!4887200 (= e!3055077 (and (inv!72513 (c!830799 input!1236)) tp!1375410))))

(declare-fun b!4887201 () Bool)

(declare-fun res!2087036 () Bool)

(assert (=> b!4887201 (=> (not res!2087036) (not e!3055082))))

(declare-fun isEmpty!30188 (List!56445) Bool)

(assert (=> b!4887201 (= res!2087036 (not (isEmpty!30188 rulesArg!165)))))

(assert (=> b!4887202 (= e!3055083 (and tp!1375411 tp!1375409))))

(declare-fun b!4887203 () Bool)

(declare-fun e!3055076 () Bool)

(declare-fun e!3055078 () Bool)

(assert (=> b!4887203 (= e!3055076 e!3055078)))

(declare-fun res!2087033 () Bool)

(assert (=> b!4887203 (=> res!2087033 e!3055078)))

(declare-fun lt!2002850 () Option!13976)

(assert (=> b!4887203 (= res!2087033 (or (and ((_ is None!13975) lt!2002850) ((_ is None!13975) lt!2002851)) ((_ is None!13975) lt!2002851) ((_ is None!13975) lt!2002850) (>= (size!37086 (_1!33461 (v!49925 lt!2002850))) (size!37086 (_1!33461 (v!49925 lt!2002851))))))))

(declare-fun maxPrefixZipperSequence!1307 (LexerInterface!7738 List!56445 BalanceConc!28858) Option!13976)

(assert (=> b!4887203 (= lt!2002851 (maxPrefixZipperSequence!1307 thiss!14805 (t!365091 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!672 (LexerInterface!7738 Rule!16092 BalanceConc!28858) Option!13976)

(assert (=> b!4887203 (= lt!2002850 (maxPrefixOneRuleZipperSequence!672 thiss!14805 (h!62769 rulesArg!165) input!1236))))

(declare-fun b!4887204 () Bool)

(assert (=> b!4887204 (= e!3055082 (not e!3055076))))

(declare-fun res!2087034 () Bool)

(assert (=> b!4887204 (=> res!2087034 e!3055076)))

(assert (=> b!4887204 (= res!2087034 (or (and ((_ is Cons!56321) rulesArg!165) ((_ is Nil!56321) (t!365091 rulesArg!165))) (not ((_ is Cons!56321) rulesArg!165))))))

(declare-fun lt!2002849 () List!56443)

(declare-fun isPrefix!4868 (List!56443 List!56443) Bool)

(assert (=> b!4887204 (isPrefix!4868 lt!2002849 lt!2002849)))

(declare-datatypes ((Unit!146310 0))(
  ( (Unit!146311) )
))
(declare-fun lt!2002844 () Unit!146310)

(declare-fun lemmaIsPrefixRefl!3265 (List!56443 List!56443) Unit!146310)

(assert (=> b!4887204 (= lt!2002844 (lemmaIsPrefixRefl!3265 lt!2002849 lt!2002849))))

(assert (=> b!4887204 (= lt!2002849 (list!17683 input!1236))))

(declare-fun b!4887205 () Bool)

(declare-fun res!2087032 () Bool)

(assert (=> b!4887205 (=> (not res!2087032) (not e!3055082))))

(declare-fun rulesValidInductive!3125 (LexerInterface!7738 List!56445) Bool)

(assert (=> b!4887205 (= res!2087032 (rulesValidInductive!3125 thiss!14805 rulesArg!165))))

(declare-fun b!4887206 () Bool)

(assert (=> b!4887206 (= e!3055078 e!3055074)))

(declare-fun res!2087039 () Bool)

(assert (=> b!4887206 (=> res!2087039 e!3055074)))

(declare-fun isDefined!10990 (Option!13975) Bool)

(assert (=> b!4887206 (= res!2087039 (not (= lt!2002847 (isDefined!10990 lt!2002845))))))

(declare-fun isDefined!10991 (Option!13976) Bool)

(assert (=> b!4887206 (= lt!2002847 (isDefined!10991 lt!2002851))))

(declare-fun maxPrefixZipper!649 (LexerInterface!7738 List!56445 List!56443) Option!13975)

(assert (=> b!4887206 (= lt!2002845 (maxPrefixZipper!649 thiss!14805 rulesArg!165 lt!2002849))))

(assert (= (and start!511524 res!2087037) b!4887205))

(assert (= (and b!4887205 res!2087032) b!4887201))

(assert (= (and b!4887201 res!2087036) b!4887204))

(assert (= (and b!4887204 (not res!2087034)) b!4887203))

(assert (= (and b!4887203 (not res!2087033)) b!4887206))

(assert (= (and b!4887206 (not res!2087039)) b!4887195))

(assert (= (and b!4887195 (not res!2087038)) b!4887199))

(assert (= (and b!4887199 res!2087035) b!4887197))

(assert (= b!4887196 b!4887202))

(assert (= b!4887198 b!4887196))

(assert (= (and start!511524 ((_ is Cons!56321) rulesArg!165)) b!4887198))

(assert (= start!511524 b!4887200))

(declare-fun m!5890942 () Bool)

(assert (=> start!511524 m!5890942))

(declare-fun m!5890944 () Bool)

(assert (=> b!4887201 m!5890944))

(declare-fun m!5890946 () Bool)

(assert (=> b!4887204 m!5890946))

(declare-fun m!5890948 () Bool)

(assert (=> b!4887204 m!5890948))

(declare-fun m!5890950 () Bool)

(assert (=> b!4887204 m!5890950))

(declare-fun m!5890952 () Bool)

(assert (=> b!4887205 m!5890952))

(declare-fun m!5890954 () Bool)

(assert (=> b!4887197 m!5890954))

(declare-fun m!5890956 () Bool)

(assert (=> b!4887199 m!5890956))

(declare-fun m!5890958 () Bool)

(assert (=> b!4887199 m!5890958))

(declare-fun m!5890960 () Bool)

(assert (=> b!4887203 m!5890960))

(declare-fun m!5890962 () Bool)

(assert (=> b!4887203 m!5890962))

(declare-fun m!5890964 () Bool)

(assert (=> b!4887200 m!5890964))

(declare-fun m!5890966 () Bool)

(assert (=> b!4887206 m!5890966))

(declare-fun m!5890968 () Bool)

(assert (=> b!4887206 m!5890968))

(declare-fun m!5890970 () Bool)

(assert (=> b!4887206 m!5890970))

(declare-fun m!5890972 () Bool)

(assert (=> b!4887196 m!5890972))

(declare-fun m!5890974 () Bool)

(assert (=> b!4887196 m!5890974))

(check-sat b_and!344155 (not b_next!132113) (not b!4887201) (not b!4887199) b_and!344157 (not b!4887200) (not b!4887205) (not b_next!132115) (not start!511524) (not b!4887204) (not b!4887197) (not b!4887203) (not b!4887196) (not b!4887198) (not b!4887206))
(check-sat b_and!344157 b_and!344155 (not b_next!132113) (not b_next!132115))

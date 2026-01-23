; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745688 () Bool)

(assert start!745688)

(declare-fun b!7903949 () Bool)

(declare-fun b_free!134831 () Bool)

(declare-fun b_next!135621 () Bool)

(assert (=> b!7903949 (= b_free!134831 (not b_next!135621))))

(declare-fun tp!2354616 () Bool)

(declare-fun b_and!352923 () Bool)

(assert (=> b!7903949 (= tp!2354616 b_and!352923)))

(declare-fun b_free!134833 () Bool)

(declare-fun b_next!135623 () Bool)

(assert (=> b!7903949 (= b_free!134833 (not b_next!135623))))

(declare-fun tp!2354620 () Bool)

(declare-fun b_and!352925 () Bool)

(assert (=> b!7903949 (= tp!2354620 b_and!352925)))

(declare-fun b!7903937 () Bool)

(declare-fun res!3136233 () Bool)

(declare-fun e!4665456 () Bool)

(assert (=> b!7903937 (=> res!3136233 e!4665456)))

(declare-datatypes ((List!74338 0))(
  ( (Nil!74214) (Cons!74214 (h!80662 (_ BitVec 16)) (t!389441 List!74338)) )
))
(declare-datatypes ((TokenValue!8922 0))(
  ( (FloatLiteralValue!17844 (text!62899 List!74338)) (TokenValueExt!8921 (__x!35131 Int)) (Broken!44610 (value!287226 List!74338)) (Object!9045) (End!8922) (Def!8922) (Underscore!8922) (Match!8922) (Else!8922) (Error!8922) (Case!8922) (If!8922) (Extends!8922) (Abstract!8922) (Class!8922) (Val!8922) (DelimiterValue!17844 (del!8982 List!74338)) (KeywordValue!8928 (value!287227 List!74338)) (CommentValue!17844 (value!287228 List!74338)) (WhitespaceValue!17844 (value!287229 List!74338)) (IndentationValue!8922 (value!287230 List!74338)) (String!83031) (Int32!8922) (Broken!44611 (value!287231 List!74338)) (Boolean!8923) (Unit!169250) (OperatorValue!8925 (op!8982 List!74338)) (IdentifierValue!17844 (value!287232 List!74338)) (IdentifierValue!17845 (value!287233 List!74338)) (WhitespaceValue!17845 (value!287234 List!74338)) (True!17844) (False!17844) (Broken!44612 (value!287235 List!74338)) (Broken!44613 (value!287236 List!74338)) (True!17845) (RightBrace!8922) (RightBracket!8922) (Colon!8922) (Null!8922) (Comma!8922) (LeftBracket!8922) (False!17845) (LeftBrace!8922) (ImaginaryLiteralValue!8922 (text!62900 List!74338)) (StringLiteralValue!26766 (value!287237 List!74338)) (EOFValue!8922 (value!287238 List!74338)) (IdentValue!8922 (value!287239 List!74338)) (DelimiterValue!17845 (value!287240 List!74338)) (DedentValue!8922 (value!287241 List!74338)) (NewLineValue!8922 (value!287242 List!74338)) (IntegerValue!26766 (value!287243 (_ BitVec 32)) (text!62901 List!74338)) (IntegerValue!26767 (value!287244 Int) (text!62902 List!74338)) (Times!8922) (Or!8922) (Equal!8922) (Minus!8922) (Broken!44614 (value!287245 List!74338)) (And!8922) (Div!8922) (LessEqual!8922) (Mod!8922) (Concat!30231) (Not!8922) (Plus!8922) (SpaceValue!8922 (value!287246 List!74338)) (IntegerValue!26768 (value!287247 Int) (text!62903 List!74338)) (StringLiteralValue!26767 (text!62904 List!74338)) (FloatLiteralValue!17845 (text!62905 List!74338)) (BytesLiteralValue!8922 (value!287248 List!74338)) (CommentValue!17845 (value!287249 List!74338)) (StringLiteralValue!26768 (value!287250 List!74338)) (ErrorTokenValue!8922 (msg!8983 List!74338)) )
))
(declare-datatypes ((C!42948 0))(
  ( (C!42949 (val!31938 Int)) )
))
(declare-datatypes ((List!74339 0))(
  ( (Nil!74215) (Cons!74215 (h!80663 C!42948) (t!389442 List!74339)) )
))
(declare-datatypes ((IArray!31621 0))(
  ( (IArray!31622 (innerList!15868 List!74339)) )
))
(declare-datatypes ((Conc!15780 0))(
  ( (Node!15780 (left!56610 Conc!15780) (right!56940 Conc!15780) (csize!31790 Int) (cheight!15991 Int)) (Leaf!30051 (xs!19162 IArray!31621) (csize!31791 Int)) (Empty!15780) )
))
(declare-datatypes ((BalanceConc!30678 0))(
  ( (BalanceConc!30679 (c!1450441 Conc!15780)) )
))
(declare-datatypes ((String!83032 0))(
  ( (String!83033 (value!287251 String)) )
))
(declare-datatypes ((Regex!21309 0))(
  ( (ElementMatch!21309 (c!1450442 C!42948)) (Concat!30232 (regOne!43130 Regex!21309) (regTwo!43130 Regex!21309)) (EmptyExpr!21309) (Star!21309 (reg!21638 Regex!21309)) (EmptyLang!21309) (Union!21309 (regOne!43131 Regex!21309) (regTwo!43131 Regex!21309)) )
))
(declare-datatypes ((TokenValueInjection!17152 0))(
  ( (TokenValueInjection!17153 (toValue!11659 Int) (toChars!11518 Int)) )
))
(declare-datatypes ((Rule!17012 0))(
  ( (Rule!17013 (regex!8606 Regex!21309) (tag!9470 String!83032) (isSeparator!8606 Bool) (transformation!8606 TokenValueInjection!17152)) )
))
(declare-datatypes ((Token!15632 0))(
  ( (Token!15633 (value!287252 TokenValue!8922) (rule!11896 Rule!17012) (size!43008 Int) (originalCharacters!8847 List!74339)) )
))
(declare-datatypes ((tuple2!70242 0))(
  ( (tuple2!70243 (_1!38424 Token!15632) (_2!38424 List!74339)) )
))
(declare-datatypes ((Option!17888 0))(
  ( (None!17887) (Some!17887 (v!55030 tuple2!70242)) )
))
(declare-fun lt!2684437 () Option!17888)

(declare-fun isDefined!14464 (Option!17888) Bool)

(assert (=> b!7903937 (= res!3136233 (not (isDefined!14464 lt!2684437)))))

(declare-fun res!3136234 () Bool)

(declare-fun e!4665454 () Bool)

(assert (=> start!745688 (=> (not res!3136234) (not e!4665454))))

(declare-datatypes ((LexerInterface!8198 0))(
  ( (LexerInterfaceExt!8195 (__x!35132 Int)) (Lexer!8196) )
))
(declare-fun thiss!14377 () LexerInterface!8198)

(get-info :version)

(assert (=> start!745688 (= res!3136234 ((_ is Lexer!8196) thiss!14377))))

(assert (=> start!745688 e!4665454))

(assert (=> start!745688 true))

(declare-fun e!4665452 () Bool)

(assert (=> start!745688 e!4665452))

(declare-fun e!4665455 () Bool)

(assert (=> start!745688 e!4665455))

(declare-fun tp!2354618 () Bool)

(declare-fun b!7903938 () Bool)

(declare-fun e!4665453 () Bool)

(declare-datatypes ((List!74340 0))(
  ( (Nil!74216) (Cons!74216 (h!80664 Rule!17012) (t!389443 List!74340)) )
))
(declare-fun rulesArg!141 () List!74340)

(declare-fun e!4665450 () Bool)

(declare-fun inv!95207 (String!83032) Bool)

(declare-fun inv!95209 (TokenValueInjection!17152) Bool)

(assert (=> b!7903938 (= e!4665453 (and tp!2354618 (inv!95207 (tag!9470 (h!80664 rulesArg!141))) (inv!95209 (transformation!8606 (h!80664 rulesArg!141))) e!4665450))))

(declare-fun b!7903939 () Bool)

(declare-fun res!3136230 () Bool)

(assert (=> b!7903939 (=> res!3136230 e!4665456)))

(declare-fun isEmpty!42582 (Option!17888) Bool)

(assert (=> b!7903939 (= res!3136230 (isEmpty!42582 lt!2684437))))

(declare-fun b!7903940 () Bool)

(declare-fun e!4665458 () Bool)

(assert (=> b!7903940 (= e!4665454 (not e!4665458))))

(declare-fun res!3136235 () Bool)

(assert (=> b!7903940 (=> res!3136235 e!4665458)))

(assert (=> b!7903940 (= res!3136235 (or (and ((_ is Cons!74216) rulesArg!141) ((_ is Nil!74216) (t!389443 rulesArg!141))) (not ((_ is Cons!74216) rulesArg!141))))))

(declare-fun input!1184 () List!74339)

(declare-fun isPrefix!6439 (List!74339 List!74339) Bool)

(assert (=> b!7903940 (isPrefix!6439 input!1184 input!1184)))

(declare-datatypes ((Unit!169251 0))(
  ( (Unit!169252) )
))
(declare-fun lt!2684434 () Unit!169251)

(declare-fun lemmaIsPrefixRefl!3950 (List!74339 List!74339) Unit!169251)

(assert (=> b!7903940 (= lt!2684434 (lemmaIsPrefixRefl!3950 input!1184 input!1184))))

(declare-fun b!7903941 () Bool)

(declare-fun res!3136231 () Bool)

(assert (=> b!7903941 (=> (not res!3136231) (not e!4665454))))

(declare-fun isEmpty!42583 (List!74340) Bool)

(assert (=> b!7903941 (= res!3136231 (not (isEmpty!42583 rulesArg!141)))))

(declare-fun b!7903942 () Bool)

(declare-fun res!3136238 () Bool)

(assert (=> b!7903942 (=> (not res!3136238) (not e!4665454))))

(declare-fun rulesValidInductive!3417 (LexerInterface!8198 List!74340) Bool)

(assert (=> b!7903942 (= res!3136238 (rulesValidInductive!3417 thiss!14377 rulesArg!141))))

(declare-fun b!7903943 () Bool)

(declare-fun res!3136232 () Bool)

(declare-fun e!4665451 () Bool)

(assert (=> b!7903943 (=> res!3136232 e!4665451)))

(declare-fun lt!2684436 () List!74339)

(declare-fun lt!2684435 () tuple2!70242)

(declare-fun ++!18164 (List!74339 List!74339) List!74339)

(assert (=> b!7903943 (= res!3136232 (not (= (++!18164 lt!2684436 (_2!38424 lt!2684435)) input!1184)))))

(declare-fun b!7903944 () Bool)

(assert (=> b!7903944 (= e!4665451 true)))

(declare-fun b!7903945 () Bool)

(declare-fun tp_is_empty!52993 () Bool)

(declare-fun tp!2354619 () Bool)

(assert (=> b!7903945 (= e!4665455 (and tp_is_empty!52993 tp!2354619))))

(declare-fun b!7903946 () Bool)

(declare-fun res!3136237 () Bool)

(assert (=> b!7903946 (=> res!3136237 e!4665451)))

(declare-fun size!43009 (List!74339) Int)

(assert (=> b!7903946 (= res!3136237 (>= (size!43009 (_2!38424 lt!2684435)) (size!43009 input!1184)))))

(declare-fun b!7903947 () Bool)

(assert (=> b!7903947 (= e!4665456 e!4665451)))

(declare-fun res!3136236 () Bool)

(assert (=> b!7903947 (=> res!3136236 e!4665451)))

(assert (=> b!7903947 (= res!3136236 (not (= lt!2684436 (originalCharacters!8847 (_1!38424 lt!2684435)))))))

(declare-fun list!19237 (BalanceConc!30678) List!74339)

(declare-fun charsOf!5550 (Token!15632) BalanceConc!30678)

(assert (=> b!7903947 (= lt!2684436 (list!19237 (charsOf!5550 (_1!38424 lt!2684435))))))

(declare-fun get!26663 (Option!17888) tuple2!70242)

(assert (=> b!7903947 (= lt!2684435 (get!26663 lt!2684437))))

(declare-fun b!7903948 () Bool)

(declare-fun tp!2354617 () Bool)

(assert (=> b!7903948 (= e!4665452 (and e!4665453 tp!2354617))))

(assert (=> b!7903949 (= e!4665450 (and tp!2354616 tp!2354620))))

(declare-fun b!7903950 () Bool)

(assert (=> b!7903950 (= e!4665458 e!4665456)))

(declare-fun res!3136229 () Bool)

(assert (=> b!7903950 (=> res!3136229 e!4665456)))

(declare-fun lt!2684438 () Option!17888)

(assert (=> b!7903950 (= res!3136229 (or (and ((_ is None!17887) lt!2684438) ((_ is None!17887) lt!2684437)) ((_ is None!17887) lt!2684437) ((_ is None!17887) lt!2684438) (>= (size!43008 (_1!38424 (v!55030 lt!2684438))) (size!43008 (_1!38424 (v!55030 lt!2684437))))))))

(declare-fun maxPrefix!4739 (LexerInterface!8198 List!74340 List!74339) Option!17888)

(assert (=> b!7903950 (= lt!2684437 (maxPrefix!4739 thiss!14377 (t!389443 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3786 (LexerInterface!8198 Rule!17012 List!74339) Option!17888)

(assert (=> b!7903950 (= lt!2684438 (maxPrefixOneRule!3786 thiss!14377 (h!80664 rulesArg!141) input!1184))))

(assert (= (and start!745688 res!3136234) b!7903942))

(assert (= (and b!7903942 res!3136238) b!7903941))

(assert (= (and b!7903941 res!3136231) b!7903940))

(assert (= (and b!7903940 (not res!3136235)) b!7903950))

(assert (= (and b!7903950 (not res!3136229)) b!7903939))

(assert (= (and b!7903939 (not res!3136230)) b!7903937))

(assert (= (and b!7903937 (not res!3136233)) b!7903947))

(assert (= (and b!7903947 (not res!3136236)) b!7903946))

(assert (= (and b!7903946 (not res!3136237)) b!7903943))

(assert (= (and b!7903943 (not res!3136232)) b!7903944))

(assert (= b!7903938 b!7903949))

(assert (= b!7903948 b!7903938))

(assert (= (and start!745688 ((_ is Cons!74216) rulesArg!141)) b!7903948))

(assert (= (and start!745688 ((_ is Cons!74215) input!1184)) b!7903945))

(declare-fun m!8278568 () Bool)

(assert (=> b!7903950 m!8278568))

(declare-fun m!8278570 () Bool)

(assert (=> b!7903950 m!8278570))

(declare-fun m!8278572 () Bool)

(assert (=> b!7903940 m!8278572))

(declare-fun m!8278574 () Bool)

(assert (=> b!7903940 m!8278574))

(declare-fun m!8278576 () Bool)

(assert (=> b!7903947 m!8278576))

(assert (=> b!7903947 m!8278576))

(declare-fun m!8278578 () Bool)

(assert (=> b!7903947 m!8278578))

(declare-fun m!8278580 () Bool)

(assert (=> b!7903947 m!8278580))

(declare-fun m!8278582 () Bool)

(assert (=> b!7903942 m!8278582))

(declare-fun m!8278584 () Bool)

(assert (=> b!7903937 m!8278584))

(declare-fun m!8278586 () Bool)

(assert (=> b!7903939 m!8278586))

(declare-fun m!8278588 () Bool)

(assert (=> b!7903938 m!8278588))

(declare-fun m!8278590 () Bool)

(assert (=> b!7903938 m!8278590))

(declare-fun m!8278592 () Bool)

(assert (=> b!7903946 m!8278592))

(declare-fun m!8278594 () Bool)

(assert (=> b!7903946 m!8278594))

(declare-fun m!8278596 () Bool)

(assert (=> b!7903943 m!8278596))

(declare-fun m!8278598 () Bool)

(assert (=> b!7903941 m!8278598))

(check-sat (not b!7903943) (not b!7903939) (not b!7903940) (not b!7903946) (not b!7903945) (not b!7903942) (not b!7903948) (not b_next!135621) (not b!7903950) (not b!7903941) (not b_next!135623) tp_is_empty!52993 (not b!7903938) b_and!352925 (not b!7903937) b_and!352923 (not b!7903947))
(check-sat b_and!352925 b_and!352923 (not b_next!135623) (not b_next!135621))

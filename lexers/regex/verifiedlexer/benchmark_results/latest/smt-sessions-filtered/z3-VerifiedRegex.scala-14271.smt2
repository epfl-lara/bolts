; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745692 () Bool)

(assert start!745692)

(declare-fun b!7904036 () Bool)

(declare-fun b_free!134839 () Bool)

(declare-fun b_next!135629 () Bool)

(assert (=> b!7904036 (= b_free!134839 (not b_next!135629))))

(declare-fun tp!2354646 () Bool)

(declare-fun b_and!352931 () Bool)

(assert (=> b!7904036 (= tp!2354646 b_and!352931)))

(declare-fun b_free!134841 () Bool)

(declare-fun b_next!135631 () Bool)

(assert (=> b!7904036 (= b_free!134841 (not b_next!135631))))

(declare-fun tp!2354648 () Bool)

(declare-fun b_and!352933 () Bool)

(assert (=> b!7904036 (= tp!2354648 b_and!352933)))

(declare-fun b!7904026 () Bool)

(declare-fun res!3136304 () Bool)

(declare-fun e!4665511 () Bool)

(assert (=> b!7904026 (=> (not res!3136304) (not e!4665511))))

(declare-datatypes ((LexerInterface!8200 0))(
  ( (LexerInterfaceExt!8197 (__x!35135 Int)) (Lexer!8198) )
))
(declare-fun thiss!14377 () LexerInterface!8200)

(declare-datatypes ((List!74344 0))(
  ( (Nil!74220) (Cons!74220 (h!80668 (_ BitVec 16)) (t!389447 List!74344)) )
))
(declare-datatypes ((TokenValue!8924 0))(
  ( (FloatLiteralValue!17848 (text!62913 List!74344)) (TokenValueExt!8923 (__x!35136 Int)) (Broken!44620 (value!287283 List!74344)) (Object!9047) (End!8924) (Def!8924) (Underscore!8924) (Match!8924) (Else!8924) (Error!8924) (Case!8924) (If!8924) (Extends!8924) (Abstract!8924) (Class!8924) (Val!8924) (DelimiterValue!17848 (del!8984 List!74344)) (KeywordValue!8930 (value!287284 List!74344)) (CommentValue!17848 (value!287285 List!74344)) (WhitespaceValue!17848 (value!287286 List!74344)) (IndentationValue!8924 (value!287287 List!74344)) (String!83041) (Int32!8924) (Broken!44621 (value!287288 List!74344)) (Boolean!8925) (Unit!169256) (OperatorValue!8927 (op!8984 List!74344)) (IdentifierValue!17848 (value!287289 List!74344)) (IdentifierValue!17849 (value!287290 List!74344)) (WhitespaceValue!17849 (value!287291 List!74344)) (True!17848) (False!17848) (Broken!44622 (value!287292 List!74344)) (Broken!44623 (value!287293 List!74344)) (True!17849) (RightBrace!8924) (RightBracket!8924) (Colon!8924) (Null!8924) (Comma!8924) (LeftBracket!8924) (False!17849) (LeftBrace!8924) (ImaginaryLiteralValue!8924 (text!62914 List!74344)) (StringLiteralValue!26772 (value!287294 List!74344)) (EOFValue!8924 (value!287295 List!74344)) (IdentValue!8924 (value!287296 List!74344)) (DelimiterValue!17849 (value!287297 List!74344)) (DedentValue!8924 (value!287298 List!74344)) (NewLineValue!8924 (value!287299 List!74344)) (IntegerValue!26772 (value!287300 (_ BitVec 32)) (text!62915 List!74344)) (IntegerValue!26773 (value!287301 Int) (text!62916 List!74344)) (Times!8924) (Or!8924) (Equal!8924) (Minus!8924) (Broken!44624 (value!287302 List!74344)) (And!8924) (Div!8924) (LessEqual!8924) (Mod!8924) (Concat!30235) (Not!8924) (Plus!8924) (SpaceValue!8924 (value!287303 List!74344)) (IntegerValue!26774 (value!287304 Int) (text!62917 List!74344)) (StringLiteralValue!26773 (text!62918 List!74344)) (FloatLiteralValue!17849 (text!62919 List!74344)) (BytesLiteralValue!8924 (value!287305 List!74344)) (CommentValue!17849 (value!287306 List!74344)) (StringLiteralValue!26774 (value!287307 List!74344)) (ErrorTokenValue!8924 (msg!8985 List!74344)) )
))
(declare-datatypes ((C!42952 0))(
  ( (C!42953 (val!31940 Int)) )
))
(declare-datatypes ((List!74345 0))(
  ( (Nil!74221) (Cons!74221 (h!80669 C!42952) (t!389448 List!74345)) )
))
(declare-datatypes ((IArray!31625 0))(
  ( (IArray!31626 (innerList!15870 List!74345)) )
))
(declare-datatypes ((Conc!15782 0))(
  ( (Node!15782 (left!56613 Conc!15782) (right!56943 Conc!15782) (csize!31794 Int) (cheight!15993 Int)) (Leaf!30054 (xs!19164 IArray!31625) (csize!31795 Int)) (Empty!15782) )
))
(declare-datatypes ((BalanceConc!30682 0))(
  ( (BalanceConc!30683 (c!1450447 Conc!15782)) )
))
(declare-datatypes ((Regex!21311 0))(
  ( (ElementMatch!21311 (c!1450448 C!42952)) (Concat!30236 (regOne!43134 Regex!21311) (regTwo!43134 Regex!21311)) (EmptyExpr!21311) (Star!21311 (reg!21640 Regex!21311)) (EmptyLang!21311) (Union!21311 (regOne!43135 Regex!21311) (regTwo!43135 Regex!21311)) )
))
(declare-datatypes ((String!83042 0))(
  ( (String!83043 (value!287308 String)) )
))
(declare-datatypes ((TokenValueInjection!17156 0))(
  ( (TokenValueInjection!17157 (toValue!11661 Int) (toChars!11520 Int)) )
))
(declare-datatypes ((Rule!17016 0))(
  ( (Rule!17017 (regex!8608 Regex!21311) (tag!9472 String!83042) (isSeparator!8608 Bool) (transformation!8608 TokenValueInjection!17156)) )
))
(declare-datatypes ((List!74346 0))(
  ( (Nil!74222) (Cons!74222 (h!80670 Rule!17016) (t!389449 List!74346)) )
))
(declare-fun rulesArg!141 () List!74346)

(declare-fun rulesValidInductive!3419 (LexerInterface!8200 List!74346) Bool)

(assert (=> b!7904026 (= res!3136304 (rulesValidInductive!3419 thiss!14377 rulesArg!141))))

(declare-fun b!7904027 () Bool)

(declare-fun e!4665505 () Bool)

(assert (=> b!7904027 (= e!4665511 (not e!4665505))))

(declare-fun res!3136294 () Bool)

(assert (=> b!7904027 (=> res!3136294 e!4665505)))

(get-info :version)

(assert (=> b!7904027 (= res!3136294 (or (and ((_ is Cons!74222) rulesArg!141) ((_ is Nil!74222) (t!389449 rulesArg!141))) (not ((_ is Cons!74222) rulesArg!141))))))

(declare-fun input!1184 () List!74345)

(declare-fun isPrefix!6441 (List!74345 List!74345) Bool)

(assert (=> b!7904027 (isPrefix!6441 input!1184 input!1184)))

(declare-datatypes ((Unit!169257 0))(
  ( (Unit!169258) )
))
(declare-fun lt!2684464 () Unit!169257)

(declare-fun lemmaIsPrefixRefl!3952 (List!74345 List!74345) Unit!169257)

(assert (=> b!7904027 (= lt!2684464 (lemmaIsPrefixRefl!3952 input!1184 input!1184))))

(declare-fun b!7904028 () Bool)

(declare-fun res!3136301 () Bool)

(declare-fun e!4665510 () Bool)

(assert (=> b!7904028 (=> res!3136301 e!4665510)))

(declare-datatypes ((Token!15636 0))(
  ( (Token!15637 (value!287309 TokenValue!8924) (rule!11898 Rule!17016) (size!43012 Int) (originalCharacters!8849 List!74345)) )
))
(declare-datatypes ((tuple2!70246 0))(
  ( (tuple2!70247 (_1!38426 Token!15636) (_2!38426 List!74345)) )
))
(declare-fun lt!2684466 () tuple2!70246)

(declare-fun lt!2684468 () List!74345)

(declare-fun ++!18166 (List!74345 List!74345) List!74345)

(assert (=> b!7904028 (= res!3136301 (not (= (++!18166 lt!2684468 (_2!38426 lt!2684466)) input!1184)))))

(declare-fun b!7904029 () Bool)

(declare-fun e!4665512 () Bool)

(declare-fun tp_is_empty!52997 () Bool)

(declare-fun tp!2354650 () Bool)

(assert (=> b!7904029 (= e!4665512 (and tp_is_empty!52997 tp!2354650))))

(declare-fun b!7904030 () Bool)

(declare-fun res!3136298 () Bool)

(declare-fun e!4665509 () Bool)

(assert (=> b!7904030 (=> res!3136298 e!4665509)))

(declare-datatypes ((Option!17890 0))(
  ( (None!17889) (Some!17889 (v!55032 tuple2!70246)) )
))
(declare-fun lt!2684467 () Option!17890)

(declare-fun isDefined!14466 (Option!17890) Bool)

(assert (=> b!7904030 (= res!3136298 (not (isDefined!14466 lt!2684467)))))

(declare-fun b!7904031 () Bool)

(declare-fun res!3136299 () Bool)

(assert (=> b!7904031 (=> res!3136299 e!4665510)))

(declare-fun size!43013 (List!74345) Int)

(assert (=> b!7904031 (= res!3136299 (>= (size!43013 (_2!38426 lt!2684466)) (size!43013 input!1184)))))

(declare-fun b!7904032 () Bool)

(declare-fun res!3136297 () Bool)

(assert (=> b!7904032 (=> res!3136297 e!4665509)))

(declare-fun isEmpty!42586 (Option!17890) Bool)

(assert (=> b!7904032 (= res!3136297 (isEmpty!42586 lt!2684467))))

(declare-fun b!7904033 () Bool)

(declare-fun e!4665507 () Bool)

(declare-fun e!4665504 () Bool)

(declare-fun tp!2354647 () Bool)

(assert (=> b!7904033 (= e!4665507 (and e!4665504 tp!2354647))))

(declare-fun b!7904034 () Bool)

(declare-fun res!3136295 () Bool)

(assert (=> b!7904034 (=> (not res!3136295) (not e!4665511))))

(declare-fun isEmpty!42587 (List!74346) Bool)

(assert (=> b!7904034 (= res!3136295 (not (isEmpty!42587 rulesArg!141)))))

(declare-fun b!7904035 () Bool)

(declare-fun tp!2354649 () Bool)

(declare-fun e!4665506 () Bool)

(declare-fun inv!95212 (String!83042) Bool)

(declare-fun inv!95214 (TokenValueInjection!17156) Bool)

(assert (=> b!7904035 (= e!4665504 (and tp!2354649 (inv!95212 (tag!9472 (h!80670 rulesArg!141))) (inv!95214 (transformation!8608 (h!80670 rulesArg!141))) e!4665506))))

(assert (=> b!7904036 (= e!4665506 (and tp!2354646 tp!2354648))))

(declare-fun res!3136303 () Bool)

(assert (=> start!745692 (=> (not res!3136303) (not e!4665511))))

(assert (=> start!745692 (= res!3136303 ((_ is Lexer!8198) thiss!14377))))

(assert (=> start!745692 e!4665511))

(assert (=> start!745692 true))

(assert (=> start!745692 e!4665507))

(assert (=> start!745692 e!4665512))

(declare-fun b!7904037 () Bool)

(assert (=> b!7904037 (= e!4665509 e!4665510)))

(declare-fun res!3136300 () Bool)

(assert (=> b!7904037 (=> res!3136300 e!4665510)))

(assert (=> b!7904037 (= res!3136300 (not (= lt!2684468 (originalCharacters!8849 (_1!38426 lt!2684466)))))))

(declare-fun list!19239 (BalanceConc!30682) List!74345)

(declare-fun charsOf!5552 (Token!15636) BalanceConc!30682)

(assert (=> b!7904037 (= lt!2684468 (list!19239 (charsOf!5552 (_1!38426 lt!2684466))))))

(declare-fun get!26666 (Option!17890) tuple2!70246)

(assert (=> b!7904037 (= lt!2684466 (get!26666 lt!2684467))))

(declare-fun b!7904038 () Bool)

(assert (=> b!7904038 (= e!4665510 true)))

(declare-fun b!7904039 () Bool)

(declare-fun res!3136296 () Bool)

(assert (=> b!7904039 (=> res!3136296 e!4665510)))

(declare-fun apply!14337 (TokenValueInjection!17156 BalanceConc!30682) TokenValue!8924)

(declare-fun seqFromList!6155 (List!74345) BalanceConc!30682)

(assert (=> b!7904039 (= res!3136296 (not (= (value!287309 (_1!38426 lt!2684466)) (apply!14337 (transformation!8608 (rule!11898 (_1!38426 lt!2684466))) (seqFromList!6155 (originalCharacters!8849 (_1!38426 lt!2684466)))))))))

(declare-fun b!7904040 () Bool)

(assert (=> b!7904040 (= e!4665505 e!4665509)))

(declare-fun res!3136302 () Bool)

(assert (=> b!7904040 (=> res!3136302 e!4665509)))

(declare-fun lt!2684465 () Option!17890)

(assert (=> b!7904040 (= res!3136302 (or (and ((_ is None!17889) lt!2684465) ((_ is None!17889) lt!2684467)) ((_ is None!17889) lt!2684467) ((_ is None!17889) lt!2684465) (>= (size!43012 (_1!38426 (v!55032 lt!2684465))) (size!43012 (_1!38426 (v!55032 lt!2684467))))))))

(declare-fun maxPrefix!4741 (LexerInterface!8200 List!74346 List!74345) Option!17890)

(assert (=> b!7904040 (= lt!2684467 (maxPrefix!4741 thiss!14377 (t!389449 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3788 (LexerInterface!8200 Rule!17016 List!74345) Option!17890)

(assert (=> b!7904040 (= lt!2684465 (maxPrefixOneRule!3788 thiss!14377 (h!80670 rulesArg!141) input!1184))))

(assert (= (and start!745692 res!3136303) b!7904026))

(assert (= (and b!7904026 res!3136304) b!7904034))

(assert (= (and b!7904034 res!3136295) b!7904027))

(assert (= (and b!7904027 (not res!3136294)) b!7904040))

(assert (= (and b!7904040 (not res!3136302)) b!7904032))

(assert (= (and b!7904032 (not res!3136297)) b!7904030))

(assert (= (and b!7904030 (not res!3136298)) b!7904037))

(assert (= (and b!7904037 (not res!3136300)) b!7904031))

(assert (= (and b!7904031 (not res!3136299)) b!7904028))

(assert (= (and b!7904028 (not res!3136301)) b!7904039))

(assert (= (and b!7904039 (not res!3136296)) b!7904038))

(assert (= b!7904035 b!7904036))

(assert (= b!7904033 b!7904035))

(assert (= (and start!745692 ((_ is Cons!74222) rulesArg!141)) b!7904033))

(assert (= (and start!745692 ((_ is Cons!74221) input!1184)) b!7904029))

(declare-fun m!8278636 () Bool)

(assert (=> b!7904026 m!8278636))

(declare-fun m!8278638 () Bool)

(assert (=> b!7904031 m!8278638))

(declare-fun m!8278640 () Bool)

(assert (=> b!7904031 m!8278640))

(declare-fun m!8278642 () Bool)

(assert (=> b!7904030 m!8278642))

(declare-fun m!8278644 () Bool)

(assert (=> b!7904028 m!8278644))

(declare-fun m!8278646 () Bool)

(assert (=> b!7904040 m!8278646))

(declare-fun m!8278648 () Bool)

(assert (=> b!7904040 m!8278648))

(declare-fun m!8278650 () Bool)

(assert (=> b!7904035 m!8278650))

(declare-fun m!8278652 () Bool)

(assert (=> b!7904035 m!8278652))

(declare-fun m!8278654 () Bool)

(assert (=> b!7904034 m!8278654))

(declare-fun m!8278656 () Bool)

(assert (=> b!7904037 m!8278656))

(assert (=> b!7904037 m!8278656))

(declare-fun m!8278658 () Bool)

(assert (=> b!7904037 m!8278658))

(declare-fun m!8278660 () Bool)

(assert (=> b!7904037 m!8278660))

(declare-fun m!8278662 () Bool)

(assert (=> b!7904032 m!8278662))

(declare-fun m!8278664 () Bool)

(assert (=> b!7904039 m!8278664))

(assert (=> b!7904039 m!8278664))

(declare-fun m!8278666 () Bool)

(assert (=> b!7904039 m!8278666))

(declare-fun m!8278668 () Bool)

(assert (=> b!7904027 m!8278668))

(declare-fun m!8278670 () Bool)

(assert (=> b!7904027 m!8278670))

(check-sat b_and!352931 (not b!7904033) (not b!7904026) (not b!7904032) (not b!7904029) (not b!7904031) (not b!7904034) (not b!7904040) (not b!7904027) (not b!7904039) (not b!7904035) tp_is_empty!52997 (not b_next!135631) (not b!7904030) (not b_next!135629) (not b!7904028) (not b!7904037) b_and!352933)
(check-sat b_and!352933 b_and!352931 (not b_next!135631) (not b_next!135629))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745140 () Bool)

(assert start!745140)

(declare-fun b!7899722 () Bool)

(declare-fun b_free!134647 () Bool)

(declare-fun b_next!135437 () Bool)

(assert (=> b!7899722 (= b_free!134647 (not b_next!135437))))

(declare-fun tp!2353630 () Bool)

(declare-fun b_and!352547 () Bool)

(assert (=> b!7899722 (= tp!2353630 b_and!352547)))

(declare-fun b_free!134649 () Bool)

(declare-fun b_next!135439 () Bool)

(assert (=> b!7899722 (= b_free!134649 (not b_next!135439))))

(declare-fun tp!2353629 () Bool)

(declare-fun b_and!352549 () Bool)

(assert (=> b!7899722 (= tp!2353629 b_and!352549)))

(declare-fun b!7899718 () Bool)

(declare-fun res!3134003 () Bool)

(declare-fun e!4662940 () Bool)

(assert (=> b!7899718 (=> res!3134003 e!4662940)))

(declare-datatypes ((C!42880 0))(
  ( (C!42881 (val!31904 Int)) )
))
(declare-datatypes ((List!74236 0))(
  ( (Nil!74112) (Cons!74112 (h!80560 C!42880) (t!389045 List!74236)) )
))
(declare-fun input!1184 () List!74236)

(declare-datatypes ((List!74237 0))(
  ( (Nil!74113) (Cons!74113 (h!80561 (_ BitVec 16)) (t!389046 List!74237)) )
))
(declare-datatypes ((TokenValue!8888 0))(
  ( (FloatLiteralValue!17776 (text!62661 List!74237)) (TokenValueExt!8887 (__x!35063 Int)) (Broken!44440 (value!286257 List!74237)) (Object!9011) (End!8888) (Def!8888) (Underscore!8888) (Match!8888) (Else!8888) (Error!8888) (Case!8888) (If!8888) (Extends!8888) (Abstract!8888) (Class!8888) (Val!8888) (DelimiterValue!17776 (del!8948 List!74237)) (KeywordValue!8894 (value!286258 List!74237)) (CommentValue!17776 (value!286259 List!74237)) (WhitespaceValue!17776 (value!286260 List!74237)) (IndentationValue!8888 (value!286261 List!74237)) (String!82861) (Int32!8888) (Broken!44441 (value!286262 List!74237)) (Boolean!8889) (Unit!169130) (OperatorValue!8891 (op!8948 List!74237)) (IdentifierValue!17776 (value!286263 List!74237)) (IdentifierValue!17777 (value!286264 List!74237)) (WhitespaceValue!17777 (value!286265 List!74237)) (True!17776) (False!17776) (Broken!44442 (value!286266 List!74237)) (Broken!44443 (value!286267 List!74237)) (True!17777) (RightBrace!8888) (RightBracket!8888) (Colon!8888) (Null!8888) (Comma!8888) (LeftBracket!8888) (False!17777) (LeftBrace!8888) (ImaginaryLiteralValue!8888 (text!62662 List!74237)) (StringLiteralValue!26664 (value!286268 List!74237)) (EOFValue!8888 (value!286269 List!74237)) (IdentValue!8888 (value!286270 List!74237)) (DelimiterValue!17777 (value!286271 List!74237)) (DedentValue!8888 (value!286272 List!74237)) (NewLineValue!8888 (value!286273 List!74237)) (IntegerValue!26664 (value!286274 (_ BitVec 32)) (text!62663 List!74237)) (IntegerValue!26665 (value!286275 Int) (text!62664 List!74237)) (Times!8888) (Or!8888) (Equal!8888) (Minus!8888) (Broken!44444 (value!286276 List!74237)) (And!8888) (Div!8888) (LessEqual!8888) (Mod!8888) (Concat!30163) (Not!8888) (Plus!8888) (SpaceValue!8888 (value!286277 List!74237)) (IntegerValue!26666 (value!286278 Int) (text!62665 List!74237)) (StringLiteralValue!26665 (text!62666 List!74237)) (FloatLiteralValue!17777 (text!62667 List!74237)) (BytesLiteralValue!8888 (value!286279 List!74237)) (CommentValue!17777 (value!286280 List!74237)) (StringLiteralValue!26666 (value!286281 List!74237)) (ErrorTokenValue!8888 (msg!8949 List!74237)) )
))
(declare-datatypes ((IArray!31553 0))(
  ( (IArray!31554 (innerList!15834 List!74236)) )
))
(declare-datatypes ((Conc!15746 0))(
  ( (Node!15746 (left!56547 Conc!15746) (right!56877 Conc!15746) (csize!31722 Int) (cheight!15957 Int)) (Leaf!30000 (xs!19128 IArray!31553) (csize!31723 Int)) (Empty!15746) )
))
(declare-datatypes ((BalanceConc!30610 0))(
  ( (BalanceConc!30611 (c!1449793 Conc!15746)) )
))
(declare-datatypes ((Regex!21275 0))(
  ( (ElementMatch!21275 (c!1449794 C!42880)) (Concat!30164 (regOne!43062 Regex!21275) (regTwo!43062 Regex!21275)) (EmptyExpr!21275) (Star!21275 (reg!21604 Regex!21275)) (EmptyLang!21275) (Union!21275 (regOne!43063 Regex!21275) (regTwo!43063 Regex!21275)) )
))
(declare-datatypes ((String!82862 0))(
  ( (String!82863 (value!286282 String)) )
))
(declare-datatypes ((TokenValueInjection!17084 0))(
  ( (TokenValueInjection!17085 (toValue!11613 Int) (toChars!11472 Int)) )
))
(declare-datatypes ((Rule!16944 0))(
  ( (Rule!16945 (regex!8572 Regex!21275) (tag!9436 String!82862) (isSeparator!8572 Bool) (transformation!8572 TokenValueInjection!17084)) )
))
(declare-datatypes ((Token!15564 0))(
  ( (Token!15565 (value!286283 TokenValue!8888) (rule!11856 Rule!16944) (size!42934 Int) (originalCharacters!8813 List!74236)) )
))
(declare-datatypes ((tuple2!70162 0))(
  ( (tuple2!70163 (_1!38384 Token!15564) (_2!38384 List!74236)) )
))
(declare-fun lt!2682716 () tuple2!70162)

(declare-fun lt!2682712 () List!74236)

(declare-fun ++!18142 (List!74236 List!74236) List!74236)

(assert (=> b!7899718 (= res!3134003 (not (= (++!18142 lt!2682712 (_2!38384 lt!2682716)) input!1184)))))

(declare-fun res!3134009 () Bool)

(declare-fun e!4662939 () Bool)

(assert (=> start!745140 (=> (not res!3134009) (not e!4662939))))

(declare-datatypes ((LexerInterface!8164 0))(
  ( (LexerInterfaceExt!8161 (__x!35064 Int)) (Lexer!8162) )
))
(declare-fun thiss!14377 () LexerInterface!8164)

(get-info :version)

(assert (=> start!745140 (= res!3134009 ((_ is Lexer!8162) thiss!14377))))

(assert (=> start!745140 e!4662939))

(assert (=> start!745140 true))

(declare-fun e!4662936 () Bool)

(assert (=> start!745140 e!4662936))

(declare-fun e!4662943 () Bool)

(assert (=> start!745140 e!4662943))

(declare-fun b!7899719 () Bool)

(declare-fun res!3134011 () Bool)

(assert (=> b!7899719 (=> (not res!3134011) (not e!4662939))))

(declare-datatypes ((List!74238 0))(
  ( (Nil!74114) (Cons!74114 (h!80562 Rule!16944) (t!389047 List!74238)) )
))
(declare-fun rulesArg!141 () List!74238)

(declare-fun rulesValidInductive!3383 (LexerInterface!8164 List!74238) Bool)

(assert (=> b!7899719 (= res!3134011 (rulesValidInductive!3383 thiss!14377 rulesArg!141))))

(declare-fun b!7899720 () Bool)

(declare-fun res!3134006 () Bool)

(assert (=> b!7899720 (=> (not res!3134006) (not e!4662939))))

(declare-fun isEmpty!42508 (List!74238) Bool)

(assert (=> b!7899720 (= res!3134006 (not (isEmpty!42508 rulesArg!141)))))

(declare-fun b!7899721 () Bool)

(declare-fun res!3134008 () Bool)

(declare-fun e!4662937 () Bool)

(assert (=> b!7899721 (=> res!3134008 e!4662937)))

(declare-datatypes ((Option!17854 0))(
  ( (None!17853) (Some!17853 (v!54990 tuple2!70162)) )
))
(declare-fun lt!2682714 () Option!17854)

(declare-fun isEmpty!42509 (Option!17854) Bool)

(assert (=> b!7899721 (= res!3134008 (isEmpty!42509 lt!2682714))))

(declare-fun e!4662942 () Bool)

(assert (=> b!7899722 (= e!4662942 (and tp!2353630 tp!2353629))))

(declare-fun b!7899723 () Bool)

(assert (=> b!7899723 (= e!4662940 true)))

(declare-fun b!7899724 () Bool)

(declare-fun res!3134005 () Bool)

(assert (=> b!7899724 (=> res!3134005 e!4662940)))

(declare-fun size!42935 (List!74236) Int)

(assert (=> b!7899724 (= res!3134005 (>= (size!42935 (_2!38384 lt!2682716)) (size!42935 input!1184)))))

(declare-fun b!7899725 () Bool)

(declare-fun e!4662938 () Bool)

(assert (=> b!7899725 (= e!4662938 e!4662937)))

(declare-fun res!3134013 () Bool)

(assert (=> b!7899725 (=> res!3134013 e!4662937)))

(declare-fun lt!2682715 () Option!17854)

(assert (=> b!7899725 (= res!3134013 (or (and ((_ is None!17853) lt!2682714) ((_ is None!17853) lt!2682715)) (not ((_ is None!17853) lt!2682715))))))

(declare-fun maxPrefix!4705 (LexerInterface!8164 List!74238 List!74236) Option!17854)

(assert (=> b!7899725 (= lt!2682715 (maxPrefix!4705 thiss!14377 (t!389047 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3752 (LexerInterface!8164 Rule!16944 List!74236) Option!17854)

(assert (=> b!7899725 (= lt!2682714 (maxPrefixOneRule!3752 thiss!14377 (h!80562 rulesArg!141) input!1184))))

(declare-fun b!7899726 () Bool)

(declare-fun res!3134004 () Bool)

(assert (=> b!7899726 (=> res!3134004 e!4662940)))

(declare-fun apply!14319 (TokenValueInjection!17084 BalanceConc!30610) TokenValue!8888)

(declare-fun seqFromList!6137 (List!74236) BalanceConc!30610)

(assert (=> b!7899726 (= res!3134004 (not (= (value!286283 (_1!38384 lt!2682716)) (apply!14319 (transformation!8572 (rule!11856 (_1!38384 lt!2682716))) (seqFromList!6137 (originalCharacters!8813 (_1!38384 lt!2682716)))))))))

(declare-fun b!7899727 () Bool)

(declare-fun tp_is_empty!52925 () Bool)

(declare-fun tp!2353627 () Bool)

(assert (=> b!7899727 (= e!4662943 (and tp_is_empty!52925 tp!2353627))))

(declare-fun b!7899728 () Bool)

(declare-fun res!3134010 () Bool)

(assert (=> b!7899728 (=> res!3134010 e!4662937)))

(declare-fun isDefined!14430 (Option!17854) Bool)

(assert (=> b!7899728 (= res!3134010 (not (isDefined!14430 lt!2682714)))))

(declare-fun b!7899729 () Bool)

(assert (=> b!7899729 (= e!4662939 (not e!4662938))))

(declare-fun res!3134007 () Bool)

(assert (=> b!7899729 (=> res!3134007 e!4662938)))

(assert (=> b!7899729 (= res!3134007 (or (and ((_ is Cons!74114) rulesArg!141) ((_ is Nil!74114) (t!389047 rulesArg!141))) (not ((_ is Cons!74114) rulesArg!141))))))

(declare-fun isPrefix!6405 (List!74236 List!74236) Bool)

(assert (=> b!7899729 (isPrefix!6405 input!1184 input!1184)))

(declare-datatypes ((Unit!169131 0))(
  ( (Unit!169132) )
))
(declare-fun lt!2682713 () Unit!169131)

(declare-fun lemmaIsPrefixRefl!3916 (List!74236 List!74236) Unit!169131)

(assert (=> b!7899729 (= lt!2682713 (lemmaIsPrefixRefl!3916 input!1184 input!1184))))

(declare-fun b!7899730 () Bool)

(assert (=> b!7899730 (= e!4662937 e!4662940)))

(declare-fun res!3134012 () Bool)

(assert (=> b!7899730 (=> res!3134012 e!4662940)))

(assert (=> b!7899730 (= res!3134012 (not (= lt!2682712 (originalCharacters!8813 (_1!38384 lt!2682716)))))))

(declare-fun list!19191 (BalanceConc!30610) List!74236)

(declare-fun charsOf!5516 (Token!15564) BalanceConc!30610)

(assert (=> b!7899730 (= lt!2682712 (list!19191 (charsOf!5516 (_1!38384 lt!2682716))))))

(declare-fun get!26612 (Option!17854) tuple2!70162)

(assert (=> b!7899730 (= lt!2682716 (get!26612 lt!2682714))))

(declare-fun b!7899731 () Bool)

(declare-fun e!4662941 () Bool)

(declare-fun tp!2353626 () Bool)

(assert (=> b!7899731 (= e!4662936 (and e!4662941 tp!2353626))))

(declare-fun tp!2353628 () Bool)

(declare-fun b!7899732 () Bool)

(declare-fun inv!95092 (String!82862) Bool)

(declare-fun inv!95094 (TokenValueInjection!17084) Bool)

(assert (=> b!7899732 (= e!4662941 (and tp!2353628 (inv!95092 (tag!9436 (h!80562 rulesArg!141))) (inv!95094 (transformation!8572 (h!80562 rulesArg!141))) e!4662942))))

(assert (= (and start!745140 res!3134009) b!7899719))

(assert (= (and b!7899719 res!3134011) b!7899720))

(assert (= (and b!7899720 res!3134006) b!7899729))

(assert (= (and b!7899729 (not res!3134007)) b!7899725))

(assert (= (and b!7899725 (not res!3134013)) b!7899721))

(assert (= (and b!7899721 (not res!3134008)) b!7899728))

(assert (= (and b!7899728 (not res!3134010)) b!7899730))

(assert (= (and b!7899730 (not res!3134012)) b!7899724))

(assert (= (and b!7899724 (not res!3134005)) b!7899718))

(assert (= (and b!7899718 (not res!3134003)) b!7899726))

(assert (= (and b!7899726 (not res!3134004)) b!7899723))

(assert (= b!7899732 b!7899722))

(assert (= b!7899731 b!7899732))

(assert (= (and start!745140 ((_ is Cons!74114) rulesArg!141)) b!7899731))

(assert (= (and start!745140 ((_ is Cons!74112) input!1184)) b!7899727))

(declare-fun m!8274472 () Bool)

(assert (=> b!7899725 m!8274472))

(declare-fun m!8274474 () Bool)

(assert (=> b!7899725 m!8274474))

(declare-fun m!8274476 () Bool)

(assert (=> b!7899721 m!8274476))

(declare-fun m!8274478 () Bool)

(assert (=> b!7899732 m!8274478))

(declare-fun m!8274480 () Bool)

(assert (=> b!7899732 m!8274480))

(declare-fun m!8274482 () Bool)

(assert (=> b!7899719 m!8274482))

(declare-fun m!8274484 () Bool)

(assert (=> b!7899729 m!8274484))

(declare-fun m!8274486 () Bool)

(assert (=> b!7899729 m!8274486))

(declare-fun m!8274488 () Bool)

(assert (=> b!7899726 m!8274488))

(assert (=> b!7899726 m!8274488))

(declare-fun m!8274490 () Bool)

(assert (=> b!7899726 m!8274490))

(declare-fun m!8274492 () Bool)

(assert (=> b!7899730 m!8274492))

(assert (=> b!7899730 m!8274492))

(declare-fun m!8274494 () Bool)

(assert (=> b!7899730 m!8274494))

(declare-fun m!8274496 () Bool)

(assert (=> b!7899730 m!8274496))

(declare-fun m!8274498 () Bool)

(assert (=> b!7899720 m!8274498))

(declare-fun m!8274500 () Bool)

(assert (=> b!7899728 m!8274500))

(declare-fun m!8274502 () Bool)

(assert (=> b!7899724 m!8274502))

(declare-fun m!8274504 () Bool)

(assert (=> b!7899724 m!8274504))

(declare-fun m!8274506 () Bool)

(assert (=> b!7899718 m!8274506))

(check-sat (not b!7899726) (not b!7899721) (not b!7899719) tp_is_empty!52925 (not b!7899718) (not b_next!135439) (not b!7899730) (not b!7899725) (not b!7899731) (not b!7899732) (not b_next!135437) (not b!7899727) (not b!7899720) b_and!352549 b_and!352547 (not b!7899728) (not b!7899724) (not b!7899729))
(check-sat b_and!352549 b_and!352547 (not b_next!135439) (not b_next!135437))

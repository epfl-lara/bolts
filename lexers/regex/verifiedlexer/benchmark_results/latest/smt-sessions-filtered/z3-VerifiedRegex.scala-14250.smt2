; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745128 () Bool)

(assert start!745128)

(declare-fun b!7899478 () Bool)

(declare-fun b_free!134623 () Bool)

(declare-fun b_next!135413 () Bool)

(assert (=> b!7899478 (= b_free!134623 (not b_next!135413))))

(declare-fun tp!2353540 () Bool)

(declare-fun b_and!352523 () Bool)

(assert (=> b!7899478 (= tp!2353540 b_and!352523)))

(declare-fun b_free!134625 () Bool)

(declare-fun b_next!135415 () Bool)

(assert (=> b!7899478 (= b_free!134625 (not b_next!135415))))

(declare-fun tp!2353536 () Bool)

(declare-fun b_and!352525 () Bool)

(assert (=> b!7899478 (= tp!2353536 b_and!352525)))

(declare-fun b!7899476 () Bool)

(declare-fun e!4662780 () Bool)

(declare-fun e!4662779 () Bool)

(assert (=> b!7899476 (= e!4662780 e!4662779)))

(declare-fun res!3133839 () Bool)

(assert (=> b!7899476 (=> res!3133839 e!4662779)))

(declare-datatypes ((List!74218 0))(
  ( (Nil!74094) (Cons!74094 (h!80542 (_ BitVec 16)) (t!389027 List!74218)) )
))
(declare-datatypes ((TokenValue!8882 0))(
  ( (FloatLiteralValue!17764 (text!62619 List!74218)) (TokenValueExt!8881 (__x!35051 Int)) (Broken!44410 (value!286086 List!74218)) (Object!9005) (End!8882) (Def!8882) (Underscore!8882) (Match!8882) (Else!8882) (Error!8882) (Case!8882) (If!8882) (Extends!8882) (Abstract!8882) (Class!8882) (Val!8882) (DelimiterValue!17764 (del!8942 List!74218)) (KeywordValue!8888 (value!286087 List!74218)) (CommentValue!17764 (value!286088 List!74218)) (WhitespaceValue!17764 (value!286089 List!74218)) (IndentationValue!8882 (value!286090 List!74218)) (String!82831) (Int32!8882) (Broken!44411 (value!286091 List!74218)) (Boolean!8883) (Unit!169112) (OperatorValue!8885 (op!8942 List!74218)) (IdentifierValue!17764 (value!286092 List!74218)) (IdentifierValue!17765 (value!286093 List!74218)) (WhitespaceValue!17765 (value!286094 List!74218)) (True!17764) (False!17764) (Broken!44412 (value!286095 List!74218)) (Broken!44413 (value!286096 List!74218)) (True!17765) (RightBrace!8882) (RightBracket!8882) (Colon!8882) (Null!8882) (Comma!8882) (LeftBracket!8882) (False!17765) (LeftBrace!8882) (ImaginaryLiteralValue!8882 (text!62620 List!74218)) (StringLiteralValue!26646 (value!286097 List!74218)) (EOFValue!8882 (value!286098 List!74218)) (IdentValue!8882 (value!286099 List!74218)) (DelimiterValue!17765 (value!286100 List!74218)) (DedentValue!8882 (value!286101 List!74218)) (NewLineValue!8882 (value!286102 List!74218)) (IntegerValue!26646 (value!286103 (_ BitVec 32)) (text!62621 List!74218)) (IntegerValue!26647 (value!286104 Int) (text!62622 List!74218)) (Times!8882) (Or!8882) (Equal!8882) (Minus!8882) (Broken!44414 (value!286105 List!74218)) (And!8882) (Div!8882) (LessEqual!8882) (Mod!8882) (Concat!30151) (Not!8882) (Plus!8882) (SpaceValue!8882 (value!286106 List!74218)) (IntegerValue!26648 (value!286107 Int) (text!62623 List!74218)) (StringLiteralValue!26647 (text!62624 List!74218)) (FloatLiteralValue!17765 (text!62625 List!74218)) (BytesLiteralValue!8882 (value!286108 List!74218)) (CommentValue!17765 (value!286109 List!74218)) (StringLiteralValue!26648 (value!286110 List!74218)) (ErrorTokenValue!8882 (msg!8943 List!74218)) )
))
(declare-datatypes ((C!42868 0))(
  ( (C!42869 (val!31898 Int)) )
))
(declare-datatypes ((List!74219 0))(
  ( (Nil!74095) (Cons!74095 (h!80543 C!42868) (t!389028 List!74219)) )
))
(declare-datatypes ((IArray!31541 0))(
  ( (IArray!31542 (innerList!15828 List!74219)) )
))
(declare-datatypes ((Conc!15740 0))(
  ( (Node!15740 (left!56538 Conc!15740) (right!56868 Conc!15740) (csize!31710 Int) (cheight!15951 Int)) (Leaf!29991 (xs!19122 IArray!31541) (csize!31711 Int)) (Empty!15740) )
))
(declare-datatypes ((BalanceConc!30598 0))(
  ( (BalanceConc!30599 (c!1449775 Conc!15740)) )
))
(declare-datatypes ((String!82832 0))(
  ( (String!82833 (value!286111 String)) )
))
(declare-datatypes ((Regex!21269 0))(
  ( (ElementMatch!21269 (c!1449776 C!42868)) (Concat!30152 (regOne!43050 Regex!21269) (regTwo!43050 Regex!21269)) (EmptyExpr!21269) (Star!21269 (reg!21598 Regex!21269)) (EmptyLang!21269) (Union!21269 (regOne!43051 Regex!21269) (regTwo!43051 Regex!21269)) )
))
(declare-datatypes ((TokenValueInjection!17072 0))(
  ( (TokenValueInjection!17073 (toValue!11607 Int) (toChars!11466 Int)) )
))
(declare-datatypes ((Rule!16932 0))(
  ( (Rule!16933 (regex!8566 Regex!21269) (tag!9430 String!82832) (isSeparator!8566 Bool) (transformation!8566 TokenValueInjection!17072)) )
))
(declare-datatypes ((Token!15552 0))(
  ( (Token!15553 (value!286112 TokenValue!8882) (rule!11850 Rule!16932) (size!42923 Int) (originalCharacters!8807 List!74219)) )
))
(declare-datatypes ((tuple2!70150 0))(
  ( (tuple2!70151 (_1!38378 Token!15552) (_2!38378 List!74219)) )
))
(declare-datatypes ((Option!17848 0))(
  ( (None!17847) (Some!17847 (v!54984 tuple2!70150)) )
))
(declare-fun lt!2682619 () Option!17848)

(declare-fun lt!2682617 () Option!17848)

(get-info :version)

(assert (=> b!7899476 (= res!3133839 (or (and ((_ is None!17847) lt!2682619) ((_ is None!17847) lt!2682617)) (not ((_ is None!17847) lt!2682617))))))

(declare-fun input!1184 () List!74219)

(declare-datatypes ((LexerInterface!8158 0))(
  ( (LexerInterfaceExt!8155 (__x!35052 Int)) (Lexer!8156) )
))
(declare-fun thiss!14377 () LexerInterface!8158)

(declare-datatypes ((List!74220 0))(
  ( (Nil!74096) (Cons!74096 (h!80544 Rule!16932) (t!389029 List!74220)) )
))
(declare-fun rulesArg!141 () List!74220)

(declare-fun maxPrefix!4699 (LexerInterface!8158 List!74220 List!74219) Option!17848)

(assert (=> b!7899476 (= lt!2682617 (maxPrefix!4699 thiss!14377 (t!389029 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3746 (LexerInterface!8158 Rule!16932 List!74219) Option!17848)

(assert (=> b!7899476 (= lt!2682619 (maxPrefixOneRule!3746 thiss!14377 (h!80544 rulesArg!141) input!1184))))

(declare-fun b!7899477 () Bool)

(assert (=> b!7899477 (= e!4662779 true)))

(declare-fun lt!2682620 () List!74219)

(declare-fun list!19185 (BalanceConc!30598) List!74219)

(declare-fun charsOf!5510 (Token!15552) BalanceConc!30598)

(declare-fun get!26603 (Option!17848) tuple2!70150)

(assert (=> b!7899477 (= lt!2682620 (list!19185 (charsOf!5510 (_1!38378 (get!26603 lt!2682619)))))))

(declare-fun e!4662776 () Bool)

(assert (=> b!7899478 (= e!4662776 (and tp!2353540 tp!2353536))))

(declare-fun b!7899479 () Bool)

(declare-fun res!3133838 () Bool)

(declare-fun e!4662775 () Bool)

(assert (=> b!7899479 (=> (not res!3133838) (not e!4662775))))

(declare-fun isEmpty!42496 (List!74220) Bool)

(assert (=> b!7899479 (= res!3133838 (not (isEmpty!42496 rulesArg!141)))))

(declare-fun b!7899480 () Bool)

(declare-fun e!4662777 () Bool)

(declare-fun tp_is_empty!52913 () Bool)

(declare-fun tp!2353538 () Bool)

(assert (=> b!7899480 (= e!4662777 (and tp_is_empty!52913 tp!2353538))))

(declare-fun b!7899481 () Bool)

(declare-fun res!3133833 () Bool)

(assert (=> b!7899481 (=> res!3133833 e!4662779)))

(declare-fun isEmpty!42497 (Option!17848) Bool)

(assert (=> b!7899481 (= res!3133833 (isEmpty!42497 lt!2682619))))

(declare-fun e!4662778 () Bool)

(declare-fun b!7899482 () Bool)

(declare-fun tp!2353539 () Bool)

(declare-fun inv!95077 (String!82832) Bool)

(declare-fun inv!95079 (TokenValueInjection!17072) Bool)

(assert (=> b!7899482 (= e!4662778 (and tp!2353539 (inv!95077 (tag!9430 (h!80544 rulesArg!141))) (inv!95079 (transformation!8566 (h!80544 rulesArg!141))) e!4662776))))

(declare-fun res!3133835 () Bool)

(assert (=> start!745128 (=> (not res!3133835) (not e!4662775))))

(assert (=> start!745128 (= res!3133835 ((_ is Lexer!8156) thiss!14377))))

(assert (=> start!745128 e!4662775))

(assert (=> start!745128 true))

(declare-fun e!4662782 () Bool)

(assert (=> start!745128 e!4662782))

(assert (=> start!745128 e!4662777))

(declare-fun b!7899483 () Bool)

(declare-fun res!3133836 () Bool)

(assert (=> b!7899483 (=> res!3133836 e!4662779)))

(declare-fun isDefined!14424 (Option!17848) Bool)

(assert (=> b!7899483 (= res!3133836 (not (isDefined!14424 lt!2682619)))))

(declare-fun b!7899484 () Bool)

(declare-fun res!3133837 () Bool)

(assert (=> b!7899484 (=> (not res!3133837) (not e!4662775))))

(declare-fun rulesValidInductive!3377 (LexerInterface!8158 List!74220) Bool)

(assert (=> b!7899484 (= res!3133837 (rulesValidInductive!3377 thiss!14377 rulesArg!141))))

(declare-fun b!7899485 () Bool)

(declare-fun tp!2353537 () Bool)

(assert (=> b!7899485 (= e!4662782 (and e!4662778 tp!2353537))))

(declare-fun b!7899486 () Bool)

(assert (=> b!7899486 (= e!4662775 (not e!4662780))))

(declare-fun res!3133834 () Bool)

(assert (=> b!7899486 (=> res!3133834 e!4662780)))

(assert (=> b!7899486 (= res!3133834 (or (and ((_ is Cons!74096) rulesArg!141) ((_ is Nil!74096) (t!389029 rulesArg!141))) (not ((_ is Cons!74096) rulesArg!141))))))

(declare-fun isPrefix!6399 (List!74219 List!74219) Bool)

(assert (=> b!7899486 (isPrefix!6399 input!1184 input!1184)))

(declare-datatypes ((Unit!169113 0))(
  ( (Unit!169114) )
))
(declare-fun lt!2682618 () Unit!169113)

(declare-fun lemmaIsPrefixRefl!3910 (List!74219 List!74219) Unit!169113)

(assert (=> b!7899486 (= lt!2682618 (lemmaIsPrefixRefl!3910 input!1184 input!1184))))

(assert (= (and start!745128 res!3133835) b!7899484))

(assert (= (and b!7899484 res!3133837) b!7899479))

(assert (= (and b!7899479 res!3133838) b!7899486))

(assert (= (and b!7899486 (not res!3133834)) b!7899476))

(assert (= (and b!7899476 (not res!3133839)) b!7899481))

(assert (= (and b!7899481 (not res!3133833)) b!7899483))

(assert (= (and b!7899483 (not res!3133836)) b!7899477))

(assert (= b!7899482 b!7899478))

(assert (= b!7899485 b!7899482))

(assert (= (and start!745128 ((_ is Cons!74096) rulesArg!141)) b!7899485))

(assert (= (and start!745128 ((_ is Cons!74095) input!1184)) b!7899480))

(declare-fun m!8274286 () Bool)

(assert (=> b!7899484 m!8274286))

(declare-fun m!8274288 () Bool)

(assert (=> b!7899481 m!8274288))

(declare-fun m!8274290 () Bool)

(assert (=> b!7899477 m!8274290))

(declare-fun m!8274292 () Bool)

(assert (=> b!7899477 m!8274292))

(assert (=> b!7899477 m!8274292))

(declare-fun m!8274294 () Bool)

(assert (=> b!7899477 m!8274294))

(declare-fun m!8274296 () Bool)

(assert (=> b!7899479 m!8274296))

(declare-fun m!8274298 () Bool)

(assert (=> b!7899483 m!8274298))

(declare-fun m!8274300 () Bool)

(assert (=> b!7899482 m!8274300))

(declare-fun m!8274302 () Bool)

(assert (=> b!7899482 m!8274302))

(declare-fun m!8274304 () Bool)

(assert (=> b!7899476 m!8274304))

(declare-fun m!8274306 () Bool)

(assert (=> b!7899476 m!8274306))

(declare-fun m!8274308 () Bool)

(assert (=> b!7899486 m!8274308))

(declare-fun m!8274310 () Bool)

(assert (=> b!7899486 m!8274310))

(check-sat (not b!7899479) (not b!7899477) b_and!352525 (not b!7899480) (not b!7899481) (not b!7899486) b_and!352523 (not b_next!135413) tp_is_empty!52913 (not b!7899484) (not b!7899483) (not b!7899476) (not b_next!135415) (not b!7899482) (not b!7899485))
(check-sat b_and!352525 b_and!352523 (not b_next!135415) (not b_next!135413))

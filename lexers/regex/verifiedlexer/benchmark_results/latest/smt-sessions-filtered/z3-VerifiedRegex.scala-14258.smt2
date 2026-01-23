; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745320 () Bool)

(assert start!745320)

(declare-fun b!7901077 () Bool)

(declare-fun b_free!134703 () Bool)

(declare-fun b_next!135493 () Bool)

(assert (=> b!7901077 (= b_free!134703 (not b_next!135493))))

(declare-fun tp!2353938 () Bool)

(declare-fun b_and!352667 () Bool)

(assert (=> b!7901077 (= tp!2353938 b_and!352667)))

(declare-fun b_free!134705 () Bool)

(declare-fun b_next!135495 () Bool)

(assert (=> b!7901077 (= b_free!134705 (not b_next!135495))))

(declare-fun tp!2353939 () Bool)

(declare-fun b_and!352669 () Bool)

(assert (=> b!7901077 (= tp!2353939 b_and!352669)))

(declare-fun tp!2353940 () Bool)

(declare-datatypes ((List!74266 0))(
  ( (Nil!74142) (Cons!74142 (h!80590 (_ BitVec 16)) (t!389173 List!74266)) )
))
(declare-datatypes ((TokenValue!8898 0))(
  ( (FloatLiteralValue!17796 (text!62731 List!74266)) (TokenValueExt!8897 (__x!35083 Int)) (Broken!44490 (value!286542 List!74266)) (Object!9021) (End!8898) (Def!8898) (Underscore!8898) (Match!8898) (Else!8898) (Error!8898) (Case!8898) (If!8898) (Extends!8898) (Abstract!8898) (Class!8898) (Val!8898) (DelimiterValue!17796 (del!8958 List!74266)) (KeywordValue!8904 (value!286543 List!74266)) (CommentValue!17796 (value!286544 List!74266)) (WhitespaceValue!17796 (value!286545 List!74266)) (IndentationValue!8898 (value!286546 List!74266)) (String!82911) (Int32!8898) (Broken!44491 (value!286547 List!74266)) (Boolean!8899) (Unit!169166) (OperatorValue!8901 (op!8958 List!74266)) (IdentifierValue!17796 (value!286548 List!74266)) (IdentifierValue!17797 (value!286549 List!74266)) (WhitespaceValue!17797 (value!286550 List!74266)) (True!17796) (False!17796) (Broken!44492 (value!286551 List!74266)) (Broken!44493 (value!286552 List!74266)) (True!17797) (RightBrace!8898) (RightBracket!8898) (Colon!8898) (Null!8898) (Comma!8898) (LeftBracket!8898) (False!17797) (LeftBrace!8898) (ImaginaryLiteralValue!8898 (text!62732 List!74266)) (StringLiteralValue!26694 (value!286553 List!74266)) (EOFValue!8898 (value!286554 List!74266)) (IdentValue!8898 (value!286555 List!74266)) (DelimiterValue!17797 (value!286556 List!74266)) (DedentValue!8898 (value!286557 List!74266)) (NewLineValue!8898 (value!286558 List!74266)) (IntegerValue!26694 (value!286559 (_ BitVec 32)) (text!62733 List!74266)) (IntegerValue!26695 (value!286560 Int) (text!62734 List!74266)) (Times!8898) (Or!8898) (Equal!8898) (Minus!8898) (Broken!44494 (value!286561 List!74266)) (And!8898) (Div!8898) (LessEqual!8898) (Mod!8898) (Concat!30183) (Not!8898) (Plus!8898) (SpaceValue!8898 (value!286562 List!74266)) (IntegerValue!26696 (value!286563 Int) (text!62735 List!74266)) (StringLiteralValue!26695 (text!62736 List!74266)) (FloatLiteralValue!17797 (text!62737 List!74266)) (BytesLiteralValue!8898 (value!286564 List!74266)) (CommentValue!17797 (value!286565 List!74266)) (StringLiteralValue!26696 (value!286566 List!74266)) (ErrorTokenValue!8898 (msg!8959 List!74266)) )
))
(declare-datatypes ((C!42900 0))(
  ( (C!42901 (val!31914 Int)) )
))
(declare-datatypes ((List!74267 0))(
  ( (Nil!74143) (Cons!74143 (h!80591 C!42900) (t!389174 List!74267)) )
))
(declare-datatypes ((IArray!31573 0))(
  ( (IArray!31574 (innerList!15844 List!74267)) )
))
(declare-datatypes ((Conc!15756 0))(
  ( (Node!15756 (left!56566 Conc!15756) (right!56896 Conc!15756) (csize!31742 Int) (cheight!15967 Int)) (Leaf!30015 (xs!19138 IArray!31573) (csize!31743 Int)) (Empty!15756) )
))
(declare-datatypes ((BalanceConc!30630 0))(
  ( (BalanceConc!30631 (c!1450005 Conc!15756)) )
))
(declare-datatypes ((Regex!21285 0))(
  ( (ElementMatch!21285 (c!1450006 C!42900)) (Concat!30184 (regOne!43082 Regex!21285) (regTwo!43082 Regex!21285)) (EmptyExpr!21285) (Star!21285 (reg!21614 Regex!21285)) (EmptyLang!21285) (Union!21285 (regOne!43083 Regex!21285) (regTwo!43083 Regex!21285)) )
))
(declare-datatypes ((String!82912 0))(
  ( (String!82913 (value!286567 String)) )
))
(declare-datatypes ((TokenValueInjection!17104 0))(
  ( (TokenValueInjection!17105 (toValue!11627 Int) (toChars!11486 Int)) )
))
(declare-datatypes ((Rule!16964 0))(
  ( (Rule!16965 (regex!8582 Regex!21285) (tag!9446 String!82912) (isSeparator!8582 Bool) (transformation!8582 TokenValueInjection!17104)) )
))
(declare-datatypes ((List!74268 0))(
  ( (Nil!74144) (Cons!74144 (h!80592 Rule!16964) (t!389175 List!74268)) )
))
(declare-fun rulesArg!141 () List!74268)

(declare-fun e!4663739 () Bool)

(declare-fun b!7901065 () Bool)

(declare-fun e!4663746 () Bool)

(declare-fun inv!95127 (String!82912) Bool)

(declare-fun inv!95129 (TokenValueInjection!17104) Bool)

(assert (=> b!7901065 (= e!4663746 (and tp!2353940 (inv!95127 (tag!9446 (h!80592 rulesArg!141))) (inv!95129 (transformation!8582 (h!80592 rulesArg!141))) e!4663739))))

(declare-fun b!7901066 () Bool)

(declare-fun res!3134710 () Bool)

(declare-fun e!4663745 () Bool)

(assert (=> b!7901066 (=> res!3134710 e!4663745)))

(declare-fun input!1184 () List!74267)

(declare-datatypes ((Token!15584 0))(
  ( (Token!15585 (value!286568 TokenValue!8898) (rule!11868 Rule!16964) (size!42956 Int) (originalCharacters!8823 List!74267)) )
))
(declare-datatypes ((tuple2!70186 0))(
  ( (tuple2!70187 (_1!38396 Token!15584) (_2!38396 List!74267)) )
))
(declare-fun lt!2683268 () tuple2!70186)

(declare-fun lt!2683270 () List!74267)

(declare-fun ++!18148 (List!74267 List!74267) List!74267)

(assert (=> b!7901066 (= res!3134710 (not (= (++!18148 lt!2683270 (_2!38396 lt!2683268)) input!1184)))))

(declare-fun b!7901068 () Bool)

(declare-fun e!4663740 () Bool)

(assert (=> b!7901068 (= e!4663740 e!4663745)))

(declare-fun res!3134709 () Bool)

(assert (=> b!7901068 (=> res!3134709 e!4663745)))

(assert (=> b!7901068 (= res!3134709 (not (= lt!2683270 (originalCharacters!8823 (_1!38396 lt!2683268)))))))

(declare-fun list!19205 (BalanceConc!30630) List!74267)

(declare-fun charsOf!5526 (Token!15584) BalanceConc!30630)

(assert (=> b!7901068 (= lt!2683270 (list!19205 (charsOf!5526 (_1!38396 lt!2683268))))))

(declare-datatypes ((Option!17864 0))(
  ( (None!17863) (Some!17863 (v!55002 tuple2!70186)) )
))
(declare-fun lt!2683266 () Option!17864)

(declare-fun get!26627 (Option!17864) tuple2!70186)

(assert (=> b!7901068 (= lt!2683268 (get!26627 lt!2683266))))

(declare-fun b!7901069 () Bool)

(declare-fun e!4663744 () Bool)

(declare-fun e!4663738 () Bool)

(assert (=> b!7901069 (= e!4663744 (not e!4663738))))

(declare-fun res!3134706 () Bool)

(assert (=> b!7901069 (=> res!3134706 e!4663738)))

(get-info :version)

(assert (=> b!7901069 (= res!3134706 (or (and ((_ is Cons!74144) rulesArg!141) ((_ is Nil!74144) (t!389175 rulesArg!141))) (not ((_ is Cons!74144) rulesArg!141))))))

(declare-fun isPrefix!6415 (List!74267 List!74267) Bool)

(assert (=> b!7901069 (isPrefix!6415 input!1184 input!1184)))

(declare-datatypes ((Unit!169167 0))(
  ( (Unit!169168) )
))
(declare-fun lt!2683269 () Unit!169167)

(declare-fun lemmaIsPrefixRefl!3926 (List!74267 List!74267) Unit!169167)

(assert (=> b!7901069 (= lt!2683269 (lemmaIsPrefixRefl!3926 input!1184 input!1184))))

(declare-fun b!7901070 () Bool)

(declare-fun res!3134707 () Bool)

(assert (=> b!7901070 (=> res!3134707 e!4663745)))

(declare-fun size!42957 (List!74267) Int)

(assert (=> b!7901070 (= res!3134707 (>= (size!42957 (_2!38396 lt!2683268)) (size!42957 input!1184)))))

(declare-fun b!7901071 () Bool)

(declare-fun res!3134703 () Bool)

(assert (=> b!7901071 (=> res!3134703 e!4663740)))

(declare-fun isEmpty!42530 (Option!17864) Bool)

(assert (=> b!7901071 (= res!3134703 (isEmpty!42530 lt!2683266))))

(declare-fun b!7901072 () Bool)

(declare-fun res!3134702 () Bool)

(assert (=> b!7901072 (=> res!3134702 e!4663740)))

(declare-fun isDefined!14440 (Option!17864) Bool)

(assert (=> b!7901072 (= res!3134702 (not (isDefined!14440 lt!2683266)))))

(declare-fun b!7901073 () Bool)

(declare-fun e!4663741 () Bool)

(declare-fun tp_is_empty!52945 () Bool)

(declare-fun tp!2353937 () Bool)

(assert (=> b!7901073 (= e!4663741 (and tp_is_empty!52945 tp!2353937))))

(declare-fun b!7901074 () Bool)

(declare-fun e!4663742 () Bool)

(declare-fun tp!2353936 () Bool)

(assert (=> b!7901074 (= e!4663742 (and e!4663746 tp!2353936))))

(declare-fun b!7901075 () Bool)

(declare-fun res!3134708 () Bool)

(assert (=> b!7901075 (=> (not res!3134708) (not e!4663744))))

(declare-datatypes ((LexerInterface!8174 0))(
  ( (LexerInterfaceExt!8171 (__x!35084 Int)) (Lexer!8172) )
))
(declare-fun thiss!14377 () LexerInterface!8174)

(declare-fun rulesValidInductive!3393 (LexerInterface!8174 List!74268) Bool)

(assert (=> b!7901075 (= res!3134708 (rulesValidInductive!3393 thiss!14377 rulesArg!141))))

(declare-fun b!7901076 () Bool)

(assert (=> b!7901076 (= e!4663738 e!4663740)))

(declare-fun res!3134705 () Bool)

(assert (=> b!7901076 (=> res!3134705 e!4663740)))

(declare-fun lt!2683267 () Option!17864)

(assert (=> b!7901076 (= res!3134705 (or (and ((_ is None!17863) lt!2683267) ((_ is None!17863) lt!2683266)) ((_ is None!17863) lt!2683266) (not ((_ is None!17863) lt!2683267))))))

(declare-fun maxPrefix!4715 (LexerInterface!8174 List!74268 List!74267) Option!17864)

(assert (=> b!7901076 (= lt!2683266 (maxPrefix!4715 thiss!14377 (t!389175 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3762 (LexerInterface!8174 Rule!16964 List!74267) Option!17864)

(assert (=> b!7901076 (= lt!2683267 (maxPrefixOneRule!3762 thiss!14377 (h!80592 rulesArg!141) input!1184))))

(declare-fun b!7901067 () Bool)

(assert (=> b!7901067 (= e!4663745 true)))

(declare-fun res!3134704 () Bool)

(assert (=> start!745320 (=> (not res!3134704) (not e!4663744))))

(assert (=> start!745320 (= res!3134704 ((_ is Lexer!8172) thiss!14377))))

(assert (=> start!745320 e!4663744))

(assert (=> start!745320 true))

(assert (=> start!745320 e!4663742))

(assert (=> start!745320 e!4663741))

(assert (=> b!7901077 (= e!4663739 (and tp!2353938 tp!2353939))))

(declare-fun b!7901078 () Bool)

(declare-fun res!3134701 () Bool)

(assert (=> b!7901078 (=> (not res!3134701) (not e!4663744))))

(declare-fun isEmpty!42531 (List!74268) Bool)

(assert (=> b!7901078 (= res!3134701 (not (isEmpty!42531 rulesArg!141)))))

(assert (= (and start!745320 res!3134704) b!7901075))

(assert (= (and b!7901075 res!3134708) b!7901078))

(assert (= (and b!7901078 res!3134701) b!7901069))

(assert (= (and b!7901069 (not res!3134706)) b!7901076))

(assert (= (and b!7901076 (not res!3134705)) b!7901071))

(assert (= (and b!7901071 (not res!3134703)) b!7901072))

(assert (= (and b!7901072 (not res!3134702)) b!7901068))

(assert (= (and b!7901068 (not res!3134709)) b!7901070))

(assert (= (and b!7901070 (not res!3134707)) b!7901066))

(assert (= (and b!7901066 (not res!3134710)) b!7901067))

(assert (= b!7901065 b!7901077))

(assert (= b!7901074 b!7901065))

(assert (= (and start!745320 ((_ is Cons!74144) rulesArg!141)) b!7901074))

(assert (= (and start!745320 ((_ is Cons!74143) input!1184)) b!7901073))

(declare-fun m!8275792 () Bool)

(assert (=> b!7901071 m!8275792))

(declare-fun m!8275794 () Bool)

(assert (=> b!7901066 m!8275794))

(declare-fun m!8275796 () Bool)

(assert (=> b!7901065 m!8275796))

(declare-fun m!8275798 () Bool)

(assert (=> b!7901065 m!8275798))

(declare-fun m!8275800 () Bool)

(assert (=> b!7901072 m!8275800))

(declare-fun m!8275802 () Bool)

(assert (=> b!7901068 m!8275802))

(assert (=> b!7901068 m!8275802))

(declare-fun m!8275804 () Bool)

(assert (=> b!7901068 m!8275804))

(declare-fun m!8275806 () Bool)

(assert (=> b!7901068 m!8275806))

(declare-fun m!8275808 () Bool)

(assert (=> b!7901078 m!8275808))

(declare-fun m!8275810 () Bool)

(assert (=> b!7901070 m!8275810))

(declare-fun m!8275812 () Bool)

(assert (=> b!7901070 m!8275812))

(declare-fun m!8275814 () Bool)

(assert (=> b!7901075 m!8275814))

(declare-fun m!8275816 () Bool)

(assert (=> b!7901076 m!8275816))

(declare-fun m!8275818 () Bool)

(assert (=> b!7901076 m!8275818))

(declare-fun m!8275820 () Bool)

(assert (=> b!7901069 m!8275820))

(declare-fun m!8275822 () Bool)

(assert (=> b!7901069 m!8275822))

(check-sat (not b_next!135493) (not b!7901073) (not b!7901071) (not b!7901070) tp_is_empty!52945 (not b!7901069) (not b!7901068) b_and!352669 (not b!7901075) (not b!7901076) (not b!7901078) (not b!7901066) (not b!7901065) (not b!7901074) (not b!7901072) b_and!352667 (not b_next!135495))
(check-sat b_and!352669 b_and!352667 (not b_next!135495) (not b_next!135493))

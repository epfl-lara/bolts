; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!744850 () Bool)

(assert start!744850)

(declare-fun b!7897184 () Bool)

(declare-fun b_free!134451 () Bool)

(declare-fun b_next!135241 () Bool)

(assert (=> b!7897184 (= b_free!134451 (not b_next!135241))))

(declare-fun tp!2352733 () Bool)

(declare-fun b_and!352303 () Bool)

(assert (=> b!7897184 (= tp!2352733 b_and!352303)))

(declare-fun b_free!134453 () Bool)

(declare-fun b_next!135243 () Bool)

(assert (=> b!7897184 (= b_free!134453 (not b_next!135243))))

(declare-fun tp!2352735 () Bool)

(declare-fun b_and!352305 () Bool)

(assert (=> b!7897184 (= tp!2352735 b_and!352305)))

(declare-fun b!7897181 () Bool)

(declare-fun e!4661232 () Bool)

(declare-fun tp!2352736 () Bool)

(declare-datatypes ((List!74113 0))(
  ( (Nil!73989) (Cons!73989 (h!80437 (_ BitVec 16)) (t!388848 List!74113)) )
))
(declare-datatypes ((TokenValue!8847 0))(
  ( (FloatLiteralValue!17694 (text!62374 List!74113)) (TokenValueExt!8846 (__x!34981 Int)) (Broken!44235 (value!285090 List!74113)) (Object!8970) (End!8847) (Def!8847) (Underscore!8847) (Match!8847) (Else!8847) (Error!8847) (Case!8847) (If!8847) (Extends!8847) (Abstract!8847) (Class!8847) (Val!8847) (DelimiterValue!17694 (del!8907 List!74113)) (KeywordValue!8853 (value!285091 List!74113)) (CommentValue!17694 (value!285092 List!74113)) (WhitespaceValue!17694 (value!285093 List!74113)) (IndentationValue!8847 (value!285094 List!74113)) (String!82658) (Int32!8847) (Broken!44236 (value!285095 List!74113)) (Boolean!8848) (Unit!169004) (OperatorValue!8850 (op!8907 List!74113)) (IdentifierValue!17694 (value!285096 List!74113)) (IdentifierValue!17695 (value!285097 List!74113)) (WhitespaceValue!17695 (value!285098 List!74113)) (True!17694) (False!17694) (Broken!44237 (value!285099 List!74113)) (Broken!44238 (value!285100 List!74113)) (True!17695) (RightBrace!8847) (RightBracket!8847) (Colon!8847) (Null!8847) (Comma!8847) (LeftBracket!8847) (False!17695) (LeftBrace!8847) (ImaginaryLiteralValue!8847 (text!62375 List!74113)) (StringLiteralValue!26541 (value!285101 List!74113)) (EOFValue!8847 (value!285102 List!74113)) (IdentValue!8847 (value!285103 List!74113)) (DelimiterValue!17695 (value!285104 List!74113)) (DedentValue!8847 (value!285105 List!74113)) (NewLineValue!8847 (value!285106 List!74113)) (IntegerValue!26541 (value!285107 (_ BitVec 32)) (text!62376 List!74113)) (IntegerValue!26542 (value!285108 Int) (text!62377 List!74113)) (Times!8847) (Or!8847) (Equal!8847) (Minus!8847) (Broken!44239 (value!285109 List!74113)) (And!8847) (Div!8847) (LessEqual!8847) (Mod!8847) (Concat!30081) (Not!8847) (Plus!8847) (SpaceValue!8847 (value!285110 List!74113)) (IntegerValue!26543 (value!285111 Int) (text!62378 List!74113)) (StringLiteralValue!26542 (text!62379 List!74113)) (FloatLiteralValue!17695 (text!62380 List!74113)) (BytesLiteralValue!8847 (value!285112 List!74113)) (CommentValue!17695 (value!285113 List!74113)) (StringLiteralValue!26543 (value!285114 List!74113)) (ErrorTokenValue!8847 (msg!8908 List!74113)) )
))
(declare-datatypes ((C!42798 0))(
  ( (C!42799 (val!31863 Int)) )
))
(declare-datatypes ((List!74114 0))(
  ( (Nil!73990) (Cons!73990 (h!80438 C!42798) (t!388849 List!74114)) )
))
(declare-datatypes ((IArray!31471 0))(
  ( (IArray!31472 (innerList!15793 List!74114)) )
))
(declare-datatypes ((Conc!15705 0))(
  ( (Node!15705 (left!56474 Conc!15705) (right!56804 Conc!15705) (csize!31640 Int) (cheight!15916 Int)) (Leaf!29939 (xs!19087 IArray!31471) (csize!31641 Int)) (Empty!15705) )
))
(declare-datatypes ((BalanceConc!30528 0))(
  ( (BalanceConc!30529 (c!1449505 Conc!15705)) )
))
(declare-datatypes ((Regex!21234 0))(
  ( (ElementMatch!21234 (c!1449506 C!42798)) (Concat!30082 (regOne!42980 Regex!21234) (regTwo!42980 Regex!21234)) (EmptyExpr!21234) (Star!21234 (reg!21563 Regex!21234)) (EmptyLang!21234) (Union!21234 (regOne!42981 Regex!21234) (regTwo!42981 Regex!21234)) )
))
(declare-datatypes ((String!82659 0))(
  ( (String!82660 (value!285115 String)) )
))
(declare-datatypes ((TokenValueInjection!17002 0))(
  ( (TokenValueInjection!17003 (toValue!11568 Int) (toChars!11427 Int)) )
))
(declare-datatypes ((Rule!16862 0))(
  ( (Rule!16863 (regex!8531 Regex!21234) (tag!9395 String!82659) (isSeparator!8531 Bool) (transformation!8531 TokenValueInjection!17002)) )
))
(declare-datatypes ((List!74115 0))(
  ( (Nil!73991) (Cons!73991 (h!80439 Rule!16862) (t!388850 List!74115)) )
))
(declare-fun rulesArg!141 () List!74115)

(declare-fun e!4661228 () Bool)

(declare-fun inv!94981 (String!82659) Bool)

(declare-fun inv!94984 (TokenValueInjection!17002) Bool)

(assert (=> b!7897181 (= e!4661232 (and tp!2352736 (inv!94981 (tag!9395 (h!80439 rulesArg!141))) (inv!94984 (transformation!8531 (h!80439 rulesArg!141))) e!4661228))))

(declare-fun b!7897182 () Bool)

(declare-fun e!4661231 () Bool)

(declare-fun tp_is_empty!52843 () Bool)

(declare-fun tp!2352737 () Bool)

(assert (=> b!7897182 (= e!4661231 (and tp_is_empty!52843 tp!2352737))))

(declare-fun b!7897183 () Bool)

(declare-fun e!4661229 () Bool)

(declare-fun tp!2352734 () Bool)

(assert (=> b!7897183 (= e!4661229 (and e!4661232 tp!2352734))))

(assert (=> b!7897184 (= e!4661228 (and tp!2352733 tp!2352735))))

(declare-fun b!7897185 () Bool)

(declare-fun res!3132590 () Bool)

(declare-fun e!4661227 () Bool)

(assert (=> b!7897185 (=> (not res!3132590) (not e!4661227))))

(declare-datatypes ((LexerInterface!8123 0))(
  ( (LexerInterfaceExt!8120 (__x!34982 Int)) (Lexer!8121) )
))
(declare-fun thiss!14377 () LexerInterface!8123)

(declare-fun rulesValidInductive!3342 (LexerInterface!8123 List!74115) Bool)

(assert (=> b!7897185 (= res!3132590 (rulesValidInductive!3342 thiss!14377 rulesArg!141))))

(declare-fun b!7897186 () Bool)

(declare-fun e!4661233 () Bool)

(assert (=> b!7897186 (= e!4661233 true)))

(declare-datatypes ((Token!15482 0))(
  ( (Token!15483 (value!285116 TokenValue!8847) (rule!11809 Rule!16862) (size!42859 Int) (originalCharacters!8772 List!74114)) )
))
(declare-datatypes ((tuple2!70070 0))(
  ( (tuple2!70071 (_1!38338 Token!15482) (_2!38338 List!74114)) )
))
(declare-datatypes ((Option!17813 0))(
  ( (None!17812) (Some!17812 (v!54949 tuple2!70070)) )
))
(declare-fun lt!2681772 () Option!17813)

(declare-fun input!1184 () List!74114)

(declare-fun maxPrefixOneRule!3711 (LexerInterface!8123 Rule!16862 List!74114) Option!17813)

(assert (=> b!7897186 (= lt!2681772 (maxPrefixOneRule!3711 thiss!14377 (h!80439 rulesArg!141) input!1184))))

(declare-fun res!3132591 () Bool)

(assert (=> start!744850 (=> (not res!3132591) (not e!4661227))))

(assert (=> start!744850 (= res!3132591 (is-Lexer!8121 thiss!14377))))

(assert (=> start!744850 e!4661227))

(assert (=> start!744850 true))

(assert (=> start!744850 e!4661229))

(assert (=> start!744850 e!4661231))

(declare-fun b!7897187 () Bool)

(assert (=> b!7897187 (= e!4661227 (not e!4661233))))

(declare-fun res!3132589 () Bool)

(assert (=> b!7897187 (=> res!3132589 e!4661233)))

(assert (=> b!7897187 (= res!3132589 (or (not (is-Cons!73991 rulesArg!141)) (not (is-Nil!73991 (t!388850 rulesArg!141)))))))

(declare-fun isPrefix!6364 (List!74114 List!74114) Bool)

(assert (=> b!7897187 (isPrefix!6364 input!1184 input!1184)))

(declare-datatypes ((Unit!169005 0))(
  ( (Unit!169006) )
))
(declare-fun lt!2681771 () Unit!169005)

(declare-fun lemmaIsPrefixRefl!3875 (List!74114 List!74114) Unit!169005)

(assert (=> b!7897187 (= lt!2681771 (lemmaIsPrefixRefl!3875 input!1184 input!1184))))

(declare-fun b!7897188 () Bool)

(declare-fun res!3132592 () Bool)

(assert (=> b!7897188 (=> (not res!3132592) (not e!4661227))))

(declare-fun isEmpty!42440 (List!74115) Bool)

(assert (=> b!7897188 (= res!3132592 (not (isEmpty!42440 rulesArg!141)))))

(assert (= (and start!744850 res!3132591) b!7897185))

(assert (= (and b!7897185 res!3132590) b!7897188))

(assert (= (and b!7897188 res!3132592) b!7897187))

(assert (= (and b!7897187 (not res!3132589)) b!7897186))

(assert (= b!7897181 b!7897184))

(assert (= b!7897183 b!7897181))

(assert (= (and start!744850 (is-Cons!73991 rulesArg!141)) b!7897183))

(assert (= (and start!744850 (is-Cons!73990 input!1184)) b!7897182))

(declare-fun m!8272396 () Bool)

(assert (=> b!7897185 m!8272396))

(declare-fun m!8272398 () Bool)

(assert (=> b!7897181 m!8272398))

(declare-fun m!8272400 () Bool)

(assert (=> b!7897181 m!8272400))

(declare-fun m!8272402 () Bool)

(assert (=> b!7897186 m!8272402))

(declare-fun m!8272404 () Bool)

(assert (=> b!7897188 m!8272404))

(declare-fun m!8272406 () Bool)

(assert (=> b!7897187 m!8272406))

(declare-fun m!8272408 () Bool)

(assert (=> b!7897187 m!8272408))

(push 1)

(assert b_and!352303)

(assert (not b!7897183))

(assert (not b!7897186))

(assert b_and!352305)

(assert tp_is_empty!52843)

(assert (not b_next!135243))

(assert (not b!7897188))

(assert (not b!7897187))

(assert (not b!7897181))

(assert (not b!7897182))

(assert (not b!7897185))

(assert (not b_next!135241))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352305)

(assert b_and!352303)

(assert (not b_next!135243))

(assert (not b_next!135241))

(check-sat)

(pop 1)


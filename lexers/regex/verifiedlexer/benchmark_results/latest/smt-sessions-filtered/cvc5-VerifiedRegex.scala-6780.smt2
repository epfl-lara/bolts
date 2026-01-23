; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!353626 () Bool)

(assert start!353626)

(declare-fun b!3765292 () Bool)

(declare-fun b_free!100841 () Bool)

(declare-fun b_next!101545 () Bool)

(assert (=> b!3765292 (= b_free!100841 (not b_next!101545))))

(declare-fun tp!1150208 () Bool)

(declare-fun b_and!279635 () Bool)

(assert (=> b!3765292 (= tp!1150208 b_and!279635)))

(declare-fun b_free!100843 () Bool)

(declare-fun b_next!101547 () Bool)

(assert (=> b!3765292 (= b_free!100843 (not b_next!101547))))

(declare-fun tp!1150209 () Bool)

(declare-fun b_and!279637 () Bool)

(assert (=> b!3765292 (= tp!1150209 b_and!279637)))

(declare-fun tp!1150207 () Bool)

(declare-fun e!2328688 () Bool)

(declare-fun e!2328690 () Bool)

(declare-datatypes ((String!45658 0))(
  ( (String!45659 (value!196285 String)) )
))
(declare-datatypes ((C!22326 0))(
  ( (C!22327 (val!13239 Int)) )
))
(declare-datatypes ((List!40290 0))(
  ( (Nil!40166) (Cons!40166 (h!45586 (_ BitVec 16)) (t!304293 List!40290)) )
))
(declare-datatypes ((Regex!11070 0))(
  ( (ElementMatch!11070 (c!652280 C!22326)) (Concat!17465 (regOne!22652 Regex!11070) (regTwo!22652 Regex!11070)) (EmptyExpr!11070) (Star!11070 (reg!11399 Regex!11070)) (EmptyLang!11070) (Union!11070 (regOne!22653 Regex!11070) (regTwo!22653 Regex!11070)) )
))
(declare-datatypes ((TokenValue!6395 0))(
  ( (FloatLiteralValue!12790 (text!45210 List!40290)) (TokenValueExt!6394 (__x!25007 Int)) (Broken!31975 (value!196286 List!40290)) (Object!6518) (End!6395) (Def!6395) (Underscore!6395) (Match!6395) (Else!6395) (Error!6395) (Case!6395) (If!6395) (Extends!6395) (Abstract!6395) (Class!6395) (Val!6395) (DelimiterValue!12790 (del!6455 List!40290)) (KeywordValue!6401 (value!196287 List!40290)) (CommentValue!12790 (value!196288 List!40290)) (WhitespaceValue!12790 (value!196289 List!40290)) (IndentationValue!6395 (value!196290 List!40290)) (String!45660) (Int32!6395) (Broken!31976 (value!196291 List!40290)) (Boolean!6396) (Unit!57886) (OperatorValue!6398 (op!6455 List!40290)) (IdentifierValue!12790 (value!196292 List!40290)) (IdentifierValue!12791 (value!196293 List!40290)) (WhitespaceValue!12791 (value!196294 List!40290)) (True!12790) (False!12790) (Broken!31977 (value!196295 List!40290)) (Broken!31978 (value!196296 List!40290)) (True!12791) (RightBrace!6395) (RightBracket!6395) (Colon!6395) (Null!6395) (Comma!6395) (LeftBracket!6395) (False!12791) (LeftBrace!6395) (ImaginaryLiteralValue!6395 (text!45211 List!40290)) (StringLiteralValue!19185 (value!196297 List!40290)) (EOFValue!6395 (value!196298 List!40290)) (IdentValue!6395 (value!196299 List!40290)) (DelimiterValue!12791 (value!196300 List!40290)) (DedentValue!6395 (value!196301 List!40290)) (NewLineValue!6395 (value!196302 List!40290)) (IntegerValue!19185 (value!196303 (_ BitVec 32)) (text!45212 List!40290)) (IntegerValue!19186 (value!196304 Int) (text!45213 List!40290)) (Times!6395) (Or!6395) (Equal!6395) (Minus!6395) (Broken!31979 (value!196305 List!40290)) (And!6395) (Div!6395) (LessEqual!6395) (Mod!6395) (Concat!17466) (Not!6395) (Plus!6395) (SpaceValue!6395 (value!196306 List!40290)) (IntegerValue!19187 (value!196307 Int) (text!45214 List!40290)) (StringLiteralValue!19186 (text!45215 List!40290)) (FloatLiteralValue!12791 (text!45216 List!40290)) (BytesLiteralValue!6395 (value!196308 List!40290)) (CommentValue!12791 (value!196309 List!40290)) (StringLiteralValue!19187 (value!196310 List!40290)) (ErrorTokenValue!6395 (msg!6456 List!40290)) )
))
(declare-datatypes ((List!40291 0))(
  ( (Nil!40167) (Cons!40167 (h!45587 C!22326) (t!304294 List!40291)) )
))
(declare-datatypes ((IArray!24629 0))(
  ( (IArray!24630 (innerList!12372 List!40291)) )
))
(declare-datatypes ((Conc!12312 0))(
  ( (Node!12312 (left!31096 Conc!12312) (right!31426 Conc!12312) (csize!24854 Int) (cheight!12523 Int)) (Leaf!19093 (xs!15522 IArray!24629) (csize!24855 Int)) (Empty!12312) )
))
(declare-datatypes ((BalanceConc!24218 0))(
  ( (BalanceConc!24219 (c!652281 Conc!12312)) )
))
(declare-datatypes ((TokenValueInjection!12218 0))(
  ( (TokenValueInjection!12219 (toValue!8525 Int) (toChars!8384 Int)) )
))
(declare-datatypes ((Rule!12130 0))(
  ( (Rule!12131 (regex!6165 Regex!11070) (tag!7025 String!45658) (isSeparator!6165 Bool) (transformation!6165 TokenValueInjection!12218)) )
))
(declare-datatypes ((Token!11468 0))(
  ( (Token!11469 (value!196311 TokenValue!6395) (rule!8929 Rule!12130) (size!30236 Int) (originalCharacters!6765 List!40291)) )
))
(declare-datatypes ((List!40292 0))(
  ( (Nil!40168) (Cons!40168 (h!45588 Token!11468) (t!304295 List!40292)) )
))
(declare-fun l!4168 () List!40292)

(declare-fun b!3765288 () Bool)

(declare-fun inv!21 (TokenValue!6395) Bool)

(assert (=> b!3765288 (= e!2328690 (and (inv!21 (value!196311 (h!45588 l!4168))) e!2328688 tp!1150207))))

(declare-fun b!3765289 () Bool)

(declare-fun e!2328687 () Bool)

(assert (=> b!3765289 (= e!2328687 (not true))))

(declare-datatypes ((LexerInterface!5754 0))(
  ( (LexerInterfaceExt!5751 (__x!25008 Int)) (Lexer!5752) )
))
(declare-fun thiss!13564 () LexerInterface!5754)

(declare-fun lt!1302864 () List!40291)

(declare-fun lt!1302865 () List!40291)

(declare-fun printListTailRec!749 (LexerInterface!5754 List!40292 List!40291) List!40291)

(assert (=> b!3765289 (= lt!1302865 (printListTailRec!749 thiss!13564 (t!304295 l!4168) lt!1302864))))

(declare-fun lt!1302866 () List!40291)

(declare-fun acc!396 () List!40291)

(declare-fun lt!1302863 () List!40291)

(declare-fun ++!9969 (List!40291 List!40291) List!40291)

(assert (=> b!3765289 (= (++!9969 lt!1302864 lt!1302866) (++!9969 acc!396 (++!9969 lt!1302863 lt!1302866)))))

(assert (=> b!3765289 (= lt!1302864 (++!9969 acc!396 lt!1302863))))

(declare-datatypes ((Unit!57887 0))(
  ( (Unit!57888) )
))
(declare-fun lt!1302862 () Unit!57887)

(declare-fun lemmaConcatAssociativity!2109 (List!40291 List!40291 List!40291) Unit!57887)

(assert (=> b!3765289 (= lt!1302862 (lemmaConcatAssociativity!2109 acc!396 lt!1302863 lt!1302866))))

(declare-fun printList!1666 (LexerInterface!5754 List!40292) List!40291)

(assert (=> b!3765289 (= lt!1302866 (printList!1666 thiss!13564 (t!304295 l!4168)))))

(declare-fun list!14845 (BalanceConc!24218) List!40291)

(declare-fun charsOf!4015 (Token!11468) BalanceConc!24218)

(assert (=> b!3765289 (= lt!1302863 (list!14845 (charsOf!4015 (h!45588 l!4168))))))

(declare-fun b!3765290 () Bool)

(declare-fun e!2328691 () Bool)

(declare-fun tp!1150211 () Bool)

(declare-fun inv!53926 (Token!11468) Bool)

(assert (=> b!3765290 (= e!2328691 (and (inv!53926 (h!45588 l!4168)) e!2328690 tp!1150211))))

(declare-fun e!2328692 () Bool)

(declare-fun tp!1150212 () Bool)

(declare-fun b!3765291 () Bool)

(declare-fun inv!53923 (String!45658) Bool)

(declare-fun inv!53927 (TokenValueInjection!12218) Bool)

(assert (=> b!3765291 (= e!2328688 (and tp!1150212 (inv!53923 (tag!7025 (rule!8929 (h!45588 l!4168)))) (inv!53927 (transformation!6165 (rule!8929 (h!45588 l!4168)))) e!2328692))))

(assert (=> b!3765292 (= e!2328692 (and tp!1150208 tp!1150209))))

(declare-fun res!1524397 () Bool)

(assert (=> start!353626 (=> (not res!1524397) (not e!2328687))))

(assert (=> start!353626 (= res!1524397 (and (is-Lexer!5752 thiss!13564) (is-Cons!40168 l!4168)))))

(assert (=> start!353626 e!2328687))

(assert (=> start!353626 true))

(assert (=> start!353626 e!2328691))

(declare-fun e!2328694 () Bool)

(assert (=> start!353626 e!2328694))

(declare-fun b!3765287 () Bool)

(declare-fun tp_is_empty!19135 () Bool)

(declare-fun tp!1150210 () Bool)

(assert (=> b!3765287 (= e!2328694 (and tp_is_empty!19135 tp!1150210))))

(assert (= (and start!353626 res!1524397) b!3765289))

(assert (= b!3765291 b!3765292))

(assert (= b!3765288 b!3765291))

(assert (= b!3765290 b!3765288))

(assert (= (and start!353626 (is-Cons!40168 l!4168)) b!3765290))

(assert (= (and start!353626 (is-Cons!40167 acc!396)) b!3765287))

(declare-fun m!4261341 () Bool)

(assert (=> b!3765288 m!4261341))

(declare-fun m!4261343 () Bool)

(assert (=> b!3765289 m!4261343))

(declare-fun m!4261345 () Bool)

(assert (=> b!3765289 m!4261345))

(declare-fun m!4261347 () Bool)

(assert (=> b!3765289 m!4261347))

(declare-fun m!4261349 () Bool)

(assert (=> b!3765289 m!4261349))

(declare-fun m!4261351 () Bool)

(assert (=> b!3765289 m!4261351))

(assert (=> b!3765289 m!4261349))

(declare-fun m!4261353 () Bool)

(assert (=> b!3765289 m!4261353))

(declare-fun m!4261355 () Bool)

(assert (=> b!3765289 m!4261355))

(assert (=> b!3765289 m!4261345))

(declare-fun m!4261357 () Bool)

(assert (=> b!3765289 m!4261357))

(declare-fun m!4261359 () Bool)

(assert (=> b!3765289 m!4261359))

(declare-fun m!4261361 () Bool)

(assert (=> b!3765290 m!4261361))

(declare-fun m!4261363 () Bool)

(assert (=> b!3765291 m!4261363))

(declare-fun m!4261365 () Bool)

(assert (=> b!3765291 m!4261365))

(push 1)

(assert (not b!3765290))

(assert (not b!3765289))

(assert (not b!3765287))

(assert (not b_next!101545))

(assert (not b!3765288))

(assert (not b_next!101547))

(assert b_and!279635)

(assert (not b!3765291))

(assert tp_is_empty!19135)

(assert b_and!279637)

(check-sat)

(pop 1)

(push 1)

(assert b_and!279637)

(assert b_and!279635)

(assert (not b_next!101545))

(assert (not b_next!101547))

(check-sat)

(pop 1)


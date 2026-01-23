; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389580 () Bool)

(assert start!389580)

(declare-fun b!4110417 () Bool)

(declare-fun b_free!115491 () Bool)

(declare-fun b_next!116195 () Bool)

(assert (=> b!4110417 (= b_free!115491 (not b_next!116195))))

(declare-fun tp!1249330 () Bool)

(declare-fun b_and!317377 () Bool)

(assert (=> b!4110417 (= tp!1249330 b_and!317377)))

(declare-fun b_free!115493 () Bool)

(declare-fun b_next!116197 () Bool)

(assert (=> b!4110417 (= b_free!115493 (not b_next!116197))))

(declare-fun tp!1249332 () Bool)

(declare-fun b_and!317379 () Bool)

(assert (=> b!4110417 (= tp!1249332 b_and!317379)))

(declare-fun b!4110416 () Bool)

(declare-fun b_free!115495 () Bool)

(declare-fun b_next!116199 () Bool)

(assert (=> b!4110416 (= b_free!115495 (not b_next!116199))))

(declare-fun tp!1249333 () Bool)

(declare-fun b_and!317381 () Bool)

(assert (=> b!4110416 (= tp!1249333 b_and!317381)))

(declare-fun b_free!115497 () Bool)

(declare-fun b_next!116201 () Bool)

(assert (=> b!4110416 (= b_free!115497 (not b_next!116201))))

(declare-fun tp!1249334 () Bool)

(declare-fun b_and!317383 () Bool)

(assert (=> b!4110416 (= tp!1249334 b_and!317383)))

(declare-fun b!4110415 () Bool)

(declare-fun b_free!115499 () Bool)

(declare-fun b_next!116203 () Bool)

(assert (=> b!4110415 (= b_free!115499 (not b_next!116203))))

(declare-fun tp!1249336 () Bool)

(declare-fun b_and!317385 () Bool)

(assert (=> b!4110415 (= tp!1249336 b_and!317385)))

(declare-fun b_free!115501 () Bool)

(declare-fun b_next!116205 () Bool)

(assert (=> b!4110415 (= b_free!115501 (not b_next!116205))))

(declare-fun tp!1249337 () Bool)

(declare-fun b_and!317387 () Bool)

(assert (=> b!4110415 (= tp!1249337 b_and!317387)))

(declare-fun res!1679519 () Bool)

(declare-fun e!2550131 () Bool)

(assert (=> start!389580 (=> (not res!1679519) (not e!2550131))))

(declare-datatypes ((LexerInterface!6781 0))(
  ( (LexerInterfaceExt!6778 (__x!27061 Int)) (Lexer!6779) )
))
(declare-fun thiss!26878 () LexerInterface!6781)

(get-info :version)

(assert (=> start!389580 (= res!1679519 ((_ is Lexer!6779) thiss!26878))))

(assert (=> start!389580 e!2550131))

(assert (=> start!389580 true))

(declare-fun e!2550121 () Bool)

(assert (=> start!389580 e!2550121))

(declare-fun e!2550125 () Bool)

(assert (=> start!389580 e!2550125))

(declare-fun e!2550120 () Bool)

(assert (=> start!389580 e!2550120))

(declare-fun e!2550128 () Bool)

(assert (=> b!4110415 (= e!2550128 (and tp!1249336 tp!1249337))))

(declare-fun e!2550123 () Bool)

(assert (=> b!4110416 (= e!2550123 (and tp!1249333 tp!1249334))))

(declare-fun e!2550124 () Bool)

(assert (=> b!4110417 (= e!2550124 (and tp!1249330 tp!1249332))))

(declare-datatypes ((List!44368 0))(
  ( (Nil!44244) (Cons!44244 (h!49664 (_ BitVec 16)) (t!340119 List!44368)) )
))
(declare-datatypes ((TokenValue!7422 0))(
  ( (FloatLiteralValue!14844 (text!52399 List!44368)) (TokenValueExt!7421 (__x!27062 Int)) (Broken!37110 (value!225553 List!44368)) (Object!7545) (End!7422) (Def!7422) (Underscore!7422) (Match!7422) (Else!7422) (Error!7422) (Case!7422) (If!7422) (Extends!7422) (Abstract!7422) (Class!7422) (Val!7422) (DelimiterValue!14844 (del!7482 List!44368)) (KeywordValue!7428 (value!225554 List!44368)) (CommentValue!14844 (value!225555 List!44368)) (WhitespaceValue!14844 (value!225556 List!44368)) (IndentationValue!7422 (value!225557 List!44368)) (String!50859) (Int32!7422) (Broken!37111 (value!225558 List!44368)) (Boolean!7423) (Unit!63694) (OperatorValue!7425 (op!7482 List!44368)) (IdentifierValue!14844 (value!225559 List!44368)) (IdentifierValue!14845 (value!225560 List!44368)) (WhitespaceValue!14845 (value!225561 List!44368)) (True!14844) (False!14844) (Broken!37112 (value!225562 List!44368)) (Broken!37113 (value!225563 List!44368)) (True!14845) (RightBrace!7422) (RightBracket!7422) (Colon!7422) (Null!7422) (Comma!7422) (LeftBracket!7422) (False!14845) (LeftBrace!7422) (ImaginaryLiteralValue!7422 (text!52400 List!44368)) (StringLiteralValue!22266 (value!225564 List!44368)) (EOFValue!7422 (value!225565 List!44368)) (IdentValue!7422 (value!225566 List!44368)) (DelimiterValue!14845 (value!225567 List!44368)) (DedentValue!7422 (value!225568 List!44368)) (NewLineValue!7422 (value!225569 List!44368)) (IntegerValue!22266 (value!225570 (_ BitVec 32)) (text!52401 List!44368)) (IntegerValue!22267 (value!225571 Int) (text!52402 List!44368)) (Times!7422) (Or!7422) (Equal!7422) (Minus!7422) (Broken!37114 (value!225572 List!44368)) (And!7422) (Div!7422) (LessEqual!7422) (Mod!7422) (Concat!19519) (Not!7422) (Plus!7422) (SpaceValue!7422 (value!225573 List!44368)) (IntegerValue!22268 (value!225574 Int) (text!52403 List!44368)) (StringLiteralValue!22267 (text!52404 List!44368)) (FloatLiteralValue!14845 (text!52405 List!44368)) (BytesLiteralValue!7422 (value!225575 List!44368)) (CommentValue!14845 (value!225576 List!44368)) (StringLiteralValue!22268 (value!225577 List!44368)) (ErrorTokenValue!7422 (msg!7483 List!44368)) )
))
(declare-datatypes ((C!24380 0))(
  ( (C!24381 (val!14300 Int)) )
))
(declare-datatypes ((List!44369 0))(
  ( (Nil!44245) (Cons!44245 (h!49665 C!24380) (t!340120 List!44369)) )
))
(declare-datatypes ((IArray!26811 0))(
  ( (IArray!26812 (innerList!13463 List!44369)) )
))
(declare-datatypes ((Conc!13403 0))(
  ( (Node!13403 (left!33189 Conc!13403) (right!33519 Conc!13403) (csize!27036 Int) (cheight!13614 Int)) (Leaf!20714 (xs!16709 IArray!26811) (csize!27037 Int)) (Empty!13403) )
))
(declare-datatypes ((BalanceConc!26400 0))(
  ( (BalanceConc!26401 (c!706836 Conc!13403)) )
))
(declare-datatypes ((String!50860 0))(
  ( (String!50861 (value!225578 String)) )
))
(declare-datatypes ((Regex!12097 0))(
  ( (ElementMatch!12097 (c!706837 C!24380)) (Concat!19520 (regOne!24706 Regex!12097) (regTwo!24706 Regex!12097)) (EmptyExpr!12097) (Star!12097 (reg!12426 Regex!12097)) (EmptyLang!12097) (Union!12097 (regOne!24707 Regex!12097) (regTwo!24707 Regex!12097)) )
))
(declare-datatypes ((TokenValueInjection!14272 0))(
  ( (TokenValueInjection!14273 (toValue!9824 Int) (toChars!9683 Int)) )
))
(declare-datatypes ((Rule!14184 0))(
  ( (Rule!14185 (regex!7192 Regex!12097) (tag!8052 String!50860) (isSeparator!7192 Bool) (transformation!7192 TokenValueInjection!14272)) )
))
(declare-fun e1!99 () Rule!14184)

(declare-fun tp!1249335 () Bool)

(declare-fun b!4110418 () Bool)

(declare-fun inv!58889 (String!50860) Bool)

(declare-fun inv!58891 (TokenValueInjection!14272) Bool)

(assert (=> b!4110418 (= e!2550121 (and tp!1249335 (inv!58889 (tag!8052 e1!99)) (inv!58891 (transformation!7192 e1!99)) e!2550123))))

(declare-fun b!4110419 () Bool)

(declare-fun e!2550130 () Bool)

(assert (=> b!4110419 (= e!2550131 e!2550130)))

(declare-fun res!1679518 () Bool)

(assert (=> b!4110419 (=> (not res!1679518) (not e!2550130))))

(declare-datatypes ((List!44370 0))(
  ( (Nil!44246) (Cons!44246 (h!49666 Rule!14184) (t!340121 List!44370)) )
))
(declare-fun lt!1468146 () List!44370)

(declare-datatypes ((List!44371 0))(
  ( (Nil!44247) (Cons!44247 (h!49667 String!50860) (t!340122 List!44371)) )
))
(declare-fun noDuplicateTag!2869 (LexerInterface!6781 List!44370 List!44371) Bool)

(assert (=> b!4110419 (= res!1679518 (noDuplicateTag!2869 thiss!26878 (Cons!44246 e1!99 lt!1468146) Nil!44247))))

(declare-fun e2!99 () Rule!14184)

(declare-fun l!6462 () List!44370)

(assert (=> b!4110419 (= lt!1468146 (Cons!44246 e2!99 l!6462))))

(declare-fun b!4110420 () Bool)

(declare-fun e!2550126 () Bool)

(declare-fun tp!1249338 () Bool)

(assert (=> b!4110420 (= e!2550120 (and e!2550126 tp!1249338))))

(declare-fun b!4110421 () Bool)

(assert (=> b!4110421 (= e!2550130 false)))

(declare-fun lt!1468147 () Bool)

(assert (=> b!4110421 (= lt!1468147 (noDuplicateTag!2869 thiss!26878 lt!1468146 (Cons!44247 (tag!8052 e1!99) Nil!44247)))))

(declare-fun tp!1249329 () Bool)

(declare-fun b!4110422 () Bool)

(assert (=> b!4110422 (= e!2550126 (and tp!1249329 (inv!58889 (tag!8052 (h!49666 l!6462))) (inv!58891 (transformation!7192 (h!49666 l!6462))) e!2550128))))

(declare-fun tp!1249331 () Bool)

(declare-fun b!4110423 () Bool)

(assert (=> b!4110423 (= e!2550125 (and tp!1249331 (inv!58889 (tag!8052 e2!99)) (inv!58891 (transformation!7192 e2!99)) e!2550124))))

(assert (= (and start!389580 res!1679519) b!4110419))

(assert (= (and b!4110419 res!1679518) b!4110421))

(assert (= b!4110418 b!4110416))

(assert (= start!389580 b!4110418))

(assert (= b!4110423 b!4110417))

(assert (= start!389580 b!4110423))

(assert (= b!4110422 b!4110415))

(assert (= b!4110420 b!4110422))

(assert (= (and start!389580 ((_ is Cons!44246) l!6462)) b!4110420))

(declare-fun m!4712753 () Bool)

(assert (=> b!4110419 m!4712753))

(declare-fun m!4712755 () Bool)

(assert (=> b!4110421 m!4712755))

(declare-fun m!4712757 () Bool)

(assert (=> b!4110423 m!4712757))

(declare-fun m!4712759 () Bool)

(assert (=> b!4110423 m!4712759))

(declare-fun m!4712761 () Bool)

(assert (=> b!4110422 m!4712761))

(declare-fun m!4712763 () Bool)

(assert (=> b!4110422 m!4712763))

(declare-fun m!4712765 () Bool)

(assert (=> b!4110418 m!4712765))

(declare-fun m!4712767 () Bool)

(assert (=> b!4110418 m!4712767))

(check-sat (not b!4110421) (not b_next!116205) b_and!317381 (not b_next!116203) (not b!4110420) (not b!4110422) (not b!4110419) (not b!4110418) b_and!317383 b_and!317385 (not b_next!116197) b_and!317387 (not b!4110423) (not b_next!116195) (not b_next!116199) (not b_next!116201) b_and!317377 b_and!317379)
(check-sat b_and!317383 (not b_next!116205) b_and!317381 (not b_next!116195) (not b_next!116203) b_and!317385 (not b_next!116197) b_and!317387 (not b_next!116199) (not b_next!116201) b_and!317377 b_and!317379)

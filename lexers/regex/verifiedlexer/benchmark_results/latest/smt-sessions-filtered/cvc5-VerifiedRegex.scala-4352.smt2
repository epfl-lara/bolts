; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!231456 () Bool)

(assert start!231456)

(declare-fun b!2359803 () Bool)

(declare-fun b_free!70461 () Bool)

(declare-fun b_next!71165 () Bool)

(assert (=> b!2359803 (= b_free!70461 (not b_next!71165))))

(declare-fun tp!754682 () Bool)

(declare-fun b_and!185397 () Bool)

(assert (=> b!2359803 (= tp!754682 b_and!185397)))

(declare-fun b_free!70463 () Bool)

(declare-fun b_next!71167 () Bool)

(assert (=> b!2359803 (= b_free!70463 (not b_next!71167))))

(declare-fun tp!754683 () Bool)

(declare-fun b_and!185399 () Bool)

(assert (=> b!2359803 (= tp!754683 b_and!185399)))

(declare-fun b!2359799 () Bool)

(declare-fun e!1507327 () Bool)

(assert (=> b!2359799 (= e!1507327 false)))

(declare-fun lt!864073 () Bool)

(declare-datatypes ((LexerInterface!4035 0))(
  ( (LexerInterfaceExt!4032 (__x!18503 Int)) (Lexer!4033) )
))
(declare-fun thiss!13512 () LexerInterface!4035)

(declare-datatypes ((List!28008 0))(
  ( (Nil!27910) (Cons!27910 (h!33311 (_ BitVec 16)) (t!207885 List!28008)) )
))
(declare-datatypes ((TokenValue!4624 0))(
  ( (FloatLiteralValue!9248 (text!32813 List!28008)) (TokenValueExt!4623 (__x!18504 Int)) (Broken!23120 (value!141336 List!28008)) (Object!4721) (End!4624) (Def!4624) (Underscore!4624) (Match!4624) (Else!4624) (Error!4624) (Case!4624) (If!4624) (Extends!4624) (Abstract!4624) (Class!4624) (Val!4624) (DelimiterValue!9248 (del!4684 List!28008)) (KeywordValue!4630 (value!141337 List!28008)) (CommentValue!9248 (value!141338 List!28008)) (WhitespaceValue!9248 (value!141339 List!28008)) (IndentationValue!4624 (value!141340 List!28008)) (String!30721) (Int32!4624) (Broken!23121 (value!141341 List!28008)) (Boolean!4625) (Unit!40831) (OperatorValue!4627 (op!4684 List!28008)) (IdentifierValue!9248 (value!141342 List!28008)) (IdentifierValue!9249 (value!141343 List!28008)) (WhitespaceValue!9249 (value!141344 List!28008)) (True!9248) (False!9248) (Broken!23122 (value!141345 List!28008)) (Broken!23123 (value!141346 List!28008)) (True!9249) (RightBrace!4624) (RightBracket!4624) (Colon!4624) (Null!4624) (Comma!4624) (LeftBracket!4624) (False!9249) (LeftBrace!4624) (ImaginaryLiteralValue!4624 (text!32814 List!28008)) (StringLiteralValue!13872 (value!141347 List!28008)) (EOFValue!4624 (value!141348 List!28008)) (IdentValue!4624 (value!141349 List!28008)) (DelimiterValue!9249 (value!141350 List!28008)) (DedentValue!4624 (value!141351 List!28008)) (NewLineValue!4624 (value!141352 List!28008)) (IntegerValue!13872 (value!141353 (_ BitVec 32)) (text!32815 List!28008)) (IntegerValue!13873 (value!141354 Int) (text!32816 List!28008)) (Times!4624) (Or!4624) (Equal!4624) (Minus!4624) (Broken!23124 (value!141355 List!28008)) (And!4624) (Div!4624) (LessEqual!4624) (Mod!4624) (Concat!11520) (Not!4624) (Plus!4624) (SpaceValue!4624 (value!141356 List!28008)) (IntegerValue!13874 (value!141357 Int) (text!32817 List!28008)) (StringLiteralValue!13873 (text!32818 List!28008)) (FloatLiteralValue!9249 (text!32819 List!28008)) (BytesLiteralValue!4624 (value!141358 List!28008)) (CommentValue!9249 (value!141359 List!28008)) (StringLiteralValue!13874 (value!141360 List!28008)) (ErrorTokenValue!4624 (msg!4685 List!28008)) )
))
(declare-datatypes ((C!13950 0))(
  ( (C!13951 (val!8217 Int)) )
))
(declare-datatypes ((Regex!6896 0))(
  ( (ElementMatch!6896 (c!375090 C!13950)) (Concat!11521 (regOne!14304 Regex!6896) (regTwo!14304 Regex!6896)) (EmptyExpr!6896) (Star!6896 (reg!7225 Regex!6896)) (EmptyLang!6896) (Union!6896 (regOne!14305 Regex!6896) (regTwo!14305 Regex!6896)) )
))
(declare-datatypes ((String!30722 0))(
  ( (String!30723 (value!141361 String)) )
))
(declare-datatypes ((List!28009 0))(
  ( (Nil!27911) (Cons!27911 (h!33312 C!13950) (t!207886 List!28009)) )
))
(declare-datatypes ((IArray!18285 0))(
  ( (IArray!18286 (innerList!9200 List!28009)) )
))
(declare-datatypes ((Conc!9140 0))(
  ( (Node!9140 (left!21224 Conc!9140) (right!21554 Conc!9140) (csize!18510 Int) (cheight!9351 Int)) (Leaf!13493 (xs!12120 IArray!18285) (csize!18511 Int)) (Empty!9140) )
))
(declare-datatypes ((BalanceConc!17892 0))(
  ( (BalanceConc!17893 (c!375091 Conc!9140)) )
))
(declare-datatypes ((TokenValueInjection!8748 0))(
  ( (TokenValueInjection!8749 (toValue!6278 Int) (toChars!6137 Int)) )
))
(declare-datatypes ((Rule!8676 0))(
  ( (Rule!8677 (regex!4438 Regex!6896) (tag!4928 String!30722) (isSeparator!4438 Bool) (transformation!4438 TokenValueInjection!8748)) )
))
(declare-datatypes ((List!28010 0))(
  ( (Nil!27912) (Cons!27912 (h!33313 Rule!8676) (t!207887 List!28010)) )
))
(declare-fun rules!1706 () List!28010)

(declare-fun rulesValidInductive!1570 (LexerInterface!4035 List!28010) Bool)

(assert (=> b!2359799 (= lt!864073 (rulesValidInductive!1570 thiss!13512 rules!1706))))

(declare-fun e!1507329 () Bool)

(declare-fun tp!754684 () Bool)

(declare-fun b!2359800 () Bool)

(declare-fun e!1507330 () Bool)

(declare-fun inv!38131 (String!30722) Bool)

(declare-fun inv!38134 (TokenValueInjection!8748) Bool)

(assert (=> b!2359800 (= e!1507330 (and tp!754684 (inv!38131 (tag!4928 (h!33313 rules!1706))) (inv!38134 (transformation!4438 (h!33313 rules!1706))) e!1507329))))

(declare-fun b!2359801 () Bool)

(declare-fun e!1507331 () Bool)

(declare-fun tp!754685 () Bool)

(assert (=> b!2359801 (= e!1507331 (and e!1507330 tp!754685))))

(declare-fun b!2359802 () Bool)

(declare-fun res!1001462 () Bool)

(assert (=> b!2359802 (=> (not res!1001462) (not e!1507327))))

(declare-fun rulesInvariant!3535 (LexerInterface!4035 List!28010) Bool)

(assert (=> b!2359802 (= res!1001462 (rulesInvariant!3535 thiss!13512 rules!1706))))

(assert (=> b!2359803 (= e!1507329 (and tp!754682 tp!754683))))

(declare-fun b!2359804 () Bool)

(declare-fun res!1001461 () Bool)

(assert (=> b!2359804 (=> (not res!1001461) (not e!1507327))))

(declare-fun isEmpty!15856 (List!28010) Bool)

(assert (=> b!2359804 (= res!1001461 (not (isEmpty!15856 rules!1706)))))

(declare-fun res!1001463 () Bool)

(assert (=> start!231456 (=> (not res!1001463) (not e!1507327))))

(assert (=> start!231456 (= res!1001463 (is-Lexer!4033 thiss!13512))))

(assert (=> start!231456 e!1507327))

(assert (=> start!231456 true))

(assert (=> start!231456 e!1507331))

(assert (= (and start!231456 res!1001463) b!2359804))

(assert (= (and b!2359804 res!1001461) b!2359802))

(assert (= (and b!2359802 res!1001462) b!2359799))

(assert (= b!2359800 b!2359803))

(assert (= b!2359801 b!2359800))

(assert (= (and start!231456 (is-Cons!27912 rules!1706)) b!2359801))

(declare-fun m!2772235 () Bool)

(assert (=> b!2359799 m!2772235))

(declare-fun m!2772237 () Bool)

(assert (=> b!2359800 m!2772237))

(declare-fun m!2772239 () Bool)

(assert (=> b!2359800 m!2772239))

(declare-fun m!2772241 () Bool)

(assert (=> b!2359802 m!2772241))

(declare-fun m!2772243 () Bool)

(assert (=> b!2359804 m!2772243))

(push 1)

(assert (not b!2359800))

(assert (not b!2359799))

(assert (not b!2359804))

(assert (not b!2359802))

(assert (not b_next!71165))

(assert b_and!185397)

(assert (not b_next!71167))

(assert (not b!2359801))

(assert b_and!185399)

(check-sat)

(pop 1)

(push 1)

(assert b_and!185399)

(assert b_and!185397)

(assert (not b_next!71165))

(assert (not b_next!71167))

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!395336 () Bool)

(assert start!395336)

(declare-fun b!4153209 () Bool)

(declare-fun b_free!118815 () Bool)

(declare-fun b_next!119519 () Bool)

(assert (=> b!4153209 (= b_free!118815 (not b_next!119519))))

(declare-fun tp!1266012 () Bool)

(declare-fun b_and!323177 () Bool)

(assert (=> b!4153209 (= tp!1266012 b_and!323177)))

(declare-fun b_free!118817 () Bool)

(declare-fun b_next!119521 () Bool)

(assert (=> b!4153209 (= b_free!118817 (not b_next!119521))))

(declare-fun tp!1266004 () Bool)

(declare-fun b_and!323179 () Bool)

(assert (=> b!4153209 (= tp!1266004 b_and!323179)))

(declare-fun b!4153206 () Bool)

(declare-fun b_free!118819 () Bool)

(declare-fun b_next!119523 () Bool)

(assert (=> b!4153206 (= b_free!118819 (not b_next!119523))))

(declare-fun tp!1266007 () Bool)

(declare-fun b_and!323181 () Bool)

(assert (=> b!4153206 (= tp!1266007 b_and!323181)))

(declare-fun b_free!118821 () Bool)

(declare-fun b_next!119525 () Bool)

(assert (=> b!4153206 (= b_free!118821 (not b_next!119525))))

(declare-fun tp!1266010 () Bool)

(declare-fun b_and!323183 () Bool)

(assert (=> b!4153206 (= tp!1266010 b_and!323183)))

(declare-fun b!4153210 () Bool)

(declare-fun b_free!118823 () Bool)

(declare-fun b_next!119527 () Bool)

(assert (=> b!4153210 (= b_free!118823 (not b_next!119527))))

(declare-fun tp!1266011 () Bool)

(declare-fun b_and!323185 () Bool)

(assert (=> b!4153210 (= tp!1266011 b_and!323185)))

(declare-fun b_free!118825 () Bool)

(declare-fun b_next!119529 () Bool)

(assert (=> b!4153210 (= b_free!118825 (not b_next!119529))))

(declare-fun tp!1266009 () Bool)

(declare-fun b_and!323187 () Bool)

(assert (=> b!4153210 (= tp!1266009 b_and!323187)))

(declare-datatypes ((List!45256 0))(
  ( (Nil!45132) (Cons!45132 (h!50552 (_ BitVec 16)) (t!343287 List!45256)) )
))
(declare-datatypes ((TokenValue!7669 0))(
  ( (FloatLiteralValue!15338 (text!54128 List!45256)) (TokenValueExt!7668 (__x!27555 Int)) (Broken!38345 (value!232539 List!45256)) (Object!7792) (End!7669) (Def!7669) (Underscore!7669) (Match!7669) (Else!7669) (Error!7669) (Case!7669) (If!7669) (Extends!7669) (Abstract!7669) (Class!7669) (Val!7669) (DelimiterValue!15338 (del!7729 List!45256)) (KeywordValue!7675 (value!232540 List!45256)) (CommentValue!15338 (value!232541 List!45256)) (WhitespaceValue!15338 (value!232542 List!45256)) (IndentationValue!7669 (value!232543 List!45256)) (String!52096) (Int32!7669) (Broken!38346 (value!232544 List!45256)) (Boolean!7670) (Unit!64395) (OperatorValue!7672 (op!7729 List!45256)) (IdentifierValue!15338 (value!232545 List!45256)) (IdentifierValue!15339 (value!232546 List!45256)) (WhitespaceValue!15339 (value!232547 List!45256)) (True!15338) (False!15338) (Broken!38347 (value!232548 List!45256)) (Broken!38348 (value!232549 List!45256)) (True!15339) (RightBrace!7669) (RightBracket!7669) (Colon!7669) (Null!7669) (Comma!7669) (LeftBracket!7669) (False!15339) (LeftBrace!7669) (ImaginaryLiteralValue!7669 (text!54129 List!45256)) (StringLiteralValue!23007 (value!232550 List!45256)) (EOFValue!7669 (value!232551 List!45256)) (IdentValue!7669 (value!232552 List!45256)) (DelimiterValue!15339 (value!232553 List!45256)) (DedentValue!7669 (value!232554 List!45256)) (NewLineValue!7669 (value!232555 List!45256)) (IntegerValue!23007 (value!232556 (_ BitVec 32)) (text!54130 List!45256)) (IntegerValue!23008 (value!232557 Int) (text!54131 List!45256)) (Times!7669) (Or!7669) (Equal!7669) (Minus!7669) (Broken!38349 (value!232558 List!45256)) (And!7669) (Div!7669) (LessEqual!7669) (Mod!7669) (Concat!20013) (Not!7669) (Plus!7669) (SpaceValue!7669 (value!232559 List!45256)) (IntegerValue!23009 (value!232560 Int) (text!54132 List!45256)) (StringLiteralValue!23008 (text!54133 List!45256)) (FloatLiteralValue!15339 (text!54134 List!45256)) (BytesLiteralValue!7669 (value!232561 List!45256)) (CommentValue!15339 (value!232562 List!45256)) (StringLiteralValue!23009 (value!232563 List!45256)) (ErrorTokenValue!7669 (msg!7730 List!45256)) )
))
(declare-datatypes ((C!24874 0))(
  ( (C!24875 (val!14547 Int)) )
))
(declare-datatypes ((List!45257 0))(
  ( (Nil!45133) (Cons!45133 (h!50553 C!24874) (t!343288 List!45257)) )
))
(declare-datatypes ((IArray!27305 0))(
  ( (IArray!27306 (innerList!13710 List!45257)) )
))
(declare-datatypes ((Conc!13650 0))(
  ( (Node!13650 (left!33792 Conc!13650) (right!34122 Conc!13650) (csize!27530 Int) (cheight!13861 Int)) (Leaf!21085 (xs!16956 IArray!27305) (csize!27531 Int)) (Empty!13650) )
))
(declare-datatypes ((Regex!12344 0))(
  ( (ElementMatch!12344 (c!711176 C!24874)) (Concat!20014 (regOne!25200 Regex!12344) (regTwo!25200 Regex!12344)) (EmptyExpr!12344) (Star!12344 (reg!12673 Regex!12344)) (EmptyLang!12344) (Union!12344 (regOne!25201 Regex!12344) (regTwo!25201 Regex!12344)) )
))
(declare-datatypes ((String!52097 0))(
  ( (String!52098 (value!232564 String)) )
))
(declare-datatypes ((BalanceConc!26894 0))(
  ( (BalanceConc!26895 (c!711177 Conc!13650)) )
))
(declare-datatypes ((TokenValueInjection!14766 0))(
  ( (TokenValueInjection!14767 (toValue!10103 Int) (toChars!9962 Int)) )
))
(declare-datatypes ((Rule!14678 0))(
  ( (Rule!14679 (regex!7439 Regex!12344) (tag!8299 String!52097) (isSeparator!7439 Bool) (transformation!7439 TokenValueInjection!14766)) )
))
(declare-fun r2!597 () Rule!14678)

(declare-fun tp!1266003 () Bool)

(declare-fun b!4153205 () Bool)

(declare-fun e!2576815 () Bool)

(declare-fun e!2576818 () Bool)

(declare-fun inv!59743 (String!52097) Bool)

(declare-fun inv!59746 (TokenValueInjection!14766) Bool)

(assert (=> b!4153205 (= e!2576818 (and tp!1266003 (inv!59743 (tag!8299 r2!597)) (inv!59746 (transformation!7439 r2!597)) e!2576815))))

(declare-fun e!2576817 () Bool)

(assert (=> b!4153206 (= e!2576817 (and tp!1266007 tp!1266010))))

(declare-fun b!4153207 () Bool)

(declare-fun res!1700919 () Bool)

(declare-fun e!2576814 () Bool)

(assert (=> b!4153207 (=> (not res!1700919) (not e!2576814))))

(declare-datatypes ((List!45258 0))(
  ( (Nil!45134) (Cons!45134 (h!50554 Rule!14678) (t!343289 List!45258)) )
))
(declare-fun rules!4102 () List!45258)

(declare-fun r1!615 () Rule!14678)

(declare-fun contains!9125 (List!45258 Rule!14678) Bool)

(assert (=> b!4153207 (= res!1700919 (contains!9125 rules!4102 r1!615))))

(declare-fun b!4153208 () Bool)

(declare-fun res!1700917 () Bool)

(assert (=> b!4153208 (=> (not res!1700917) (not e!2576814))))

(assert (=> b!4153208 (= res!1700917 (contains!9125 rules!4102 r2!597))))

(assert (=> b!4153209 (= e!2576815 (and tp!1266012 tp!1266004))))

(declare-fun e!2576819 () Bool)

(assert (=> b!4153210 (= e!2576819 (and tp!1266011 tp!1266009))))

(declare-fun e!2576816 () Bool)

(declare-fun b!4153211 () Bool)

(declare-fun tp!1266005 () Bool)

(assert (=> b!4153211 (= e!2576816 (and tp!1266005 (inv!59743 (tag!8299 r1!615)) (inv!59746 (transformation!7439 r1!615)) e!2576817))))

(declare-fun b!4153212 () Bool)

(declare-fun tp!1266006 () Bool)

(declare-fun e!2576813 () Bool)

(assert (=> b!4153212 (= e!2576813 (and tp!1266006 (inv!59743 (tag!8299 (h!50554 rules!4102))) (inv!59746 (transformation!7439 (h!50554 rules!4102))) e!2576819))))

(declare-fun res!1700918 () Bool)

(assert (=> start!395336 (=> (not res!1700918) (not e!2576814))))

(declare-datatypes ((LexerInterface!7028 0))(
  ( (LexerInterfaceExt!7025 (__x!27556 Int)) (Lexer!7026) )
))
(declare-fun thiss!26968 () LexerInterface!7028)

(assert (=> start!395336 (= res!1700918 (is-Lexer!7026 thiss!26968))))

(assert (=> start!395336 e!2576814))

(assert (=> start!395336 true))

(declare-fun e!2576812 () Bool)

(assert (=> start!395336 e!2576812))

(assert (=> start!395336 e!2576816))

(assert (=> start!395336 e!2576818))

(declare-fun b!4153213 () Bool)

(assert (=> b!4153213 (= e!2576814 false)))

(declare-fun lt!1481055 () Bool)

(declare-datatypes ((List!45259 0))(
  ( (Nil!45135) (Cons!45135 (h!50555 String!52097) (t!343290 List!45259)) )
))
(declare-fun noDuplicateTag!3016 (LexerInterface!7028 List!45258 List!45259) Bool)

(declare-fun noDuplicateTag$default$2!21 (LexerInterface!7028) List!45259)

(assert (=> b!4153213 (= lt!1481055 (noDuplicateTag!3016 thiss!26968 rules!4102 (noDuplicateTag$default$2!21 thiss!26968)))))

(declare-fun b!4153214 () Bool)

(declare-fun tp!1266008 () Bool)

(assert (=> b!4153214 (= e!2576812 (and e!2576813 tp!1266008))))

(assert (= (and start!395336 res!1700918) b!4153207))

(assert (= (and b!4153207 res!1700919) b!4153208))

(assert (= (and b!4153208 res!1700917) b!4153213))

(assert (= b!4153212 b!4153210))

(assert (= b!4153214 b!4153212))

(assert (= (and start!395336 (is-Cons!45134 rules!4102)) b!4153214))

(assert (= b!4153211 b!4153206))

(assert (= start!395336 b!4153211))

(assert (= b!4153205 b!4153209))

(assert (= start!395336 b!4153205))

(declare-fun m!4748445 () Bool)

(assert (=> b!4153205 m!4748445))

(declare-fun m!4748447 () Bool)

(assert (=> b!4153205 m!4748447))

(declare-fun m!4748449 () Bool)

(assert (=> b!4153213 m!4748449))

(assert (=> b!4153213 m!4748449))

(declare-fun m!4748451 () Bool)

(assert (=> b!4153213 m!4748451))

(declare-fun m!4748453 () Bool)

(assert (=> b!4153207 m!4748453))

(declare-fun m!4748455 () Bool)

(assert (=> b!4153212 m!4748455))

(declare-fun m!4748457 () Bool)

(assert (=> b!4153212 m!4748457))

(declare-fun m!4748459 () Bool)

(assert (=> b!4153208 m!4748459))

(declare-fun m!4748461 () Bool)

(assert (=> b!4153211 m!4748461))

(declare-fun m!4748463 () Bool)

(assert (=> b!4153211 m!4748463))

(push 1)

(assert b_and!323183)

(assert b_and!323181)

(assert (not b!4153205))

(assert b_and!323177)

(assert b_and!323187)

(assert (not b_next!119523))

(assert b_and!323179)

(assert (not b_next!119529))

(assert (not b!4153207))

(assert (not b_next!119519))

(assert b_and!323185)

(assert (not b_next!119521))

(assert (not b!4153208))

(assert (not b!4153214))

(assert (not b!4153213))

(assert (not b_next!119525))

(assert (not b!4153212))

(assert (not b_next!119527))

(assert (not b!4153211))

(check-sat)

(pop 1)

(push 1)

(assert b_and!323183)

(assert (not b_next!119525))

(assert b_and!323181)

(assert b_and!323177)

(assert b_and!323187)

(assert (not b_next!119523))

(assert b_and!323179)

(assert (not b_next!119527))

(assert (not b_next!119529))

(assert (not b_next!119519))

(assert b_and!323185)

(assert (not b_next!119521))

(check-sat)

(pop 1)


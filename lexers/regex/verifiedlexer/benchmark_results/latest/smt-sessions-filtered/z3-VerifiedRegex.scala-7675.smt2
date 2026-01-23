; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404358 () Bool)

(assert start!404358)

(declare-fun b!4228177 () Bool)

(declare-fun b_free!124799 () Bool)

(declare-fun b_next!125503 () Bool)

(assert (=> b!4228177 (= b_free!124799 (not b_next!125503))))

(declare-fun tp!1295068 () Bool)

(declare-fun b_and!334037 () Bool)

(assert (=> b!4228177 (= tp!1295068 b_and!334037)))

(declare-fun b_free!124801 () Bool)

(declare-fun b_next!125505 () Bool)

(assert (=> b!4228177 (= b_free!124801 (not b_next!125505))))

(declare-fun tp!1295073 () Bool)

(declare-fun b_and!334039 () Bool)

(assert (=> b!4228177 (= tp!1295073 b_and!334039)))

(declare-fun b!4228176 () Bool)

(declare-fun res!1738622 () Bool)

(declare-fun e!2625364 () Bool)

(assert (=> b!4228176 (=> (not res!1738622) (not e!2625364))))

(declare-datatypes ((C!25732 0))(
  ( (C!25733 (val!15028 Int)) )
))
(declare-datatypes ((List!46788 0))(
  ( (Nil!46664) (Cons!46664 (h!52084 C!25732) (t!349409 List!46788)) )
))
(declare-fun pBis!134 () List!46788)

(declare-fun input!3586 () List!46788)

(declare-fun isPrefix!4677 (List!46788 List!46788) Bool)

(assert (=> b!4228176 (= res!1738622 (isPrefix!4677 pBis!134 input!3586))))

(declare-fun e!2625367 () Bool)

(assert (=> b!4228177 (= e!2625367 (and tp!1295068 tp!1295073))))

(declare-fun b!4228178 () Bool)

(declare-fun e!2625370 () Bool)

(declare-fun tp_is_empty!22469 () Bool)

(declare-fun tp!1295069 () Bool)

(assert (=> b!4228178 (= e!2625370 (and tp_is_empty!22469 tp!1295069))))

(declare-fun res!1738620 () Bool)

(assert (=> start!404358 (=> (not res!1738620) (not e!2625364))))

(declare-datatypes ((LexerInterface!7457 0))(
  ( (LexerInterfaceExt!7454 (__x!28407 Int)) (Lexer!7455) )
))
(declare-fun thiss!26785 () LexerInterface!7457)

(get-info :version)

(assert (=> start!404358 (= res!1738620 ((_ is Lexer!7455) thiss!26785))))

(assert (=> start!404358 e!2625364))

(assert (=> start!404358 true))

(assert (=> start!404358 e!2625370))

(declare-fun e!2625368 () Bool)

(assert (=> start!404358 e!2625368))

(declare-fun e!2625366 () Bool)

(assert (=> start!404358 e!2625366))

(declare-fun e!2625369 () Bool)

(assert (=> start!404358 e!2625369))

(declare-fun e!2625362 () Bool)

(assert (=> start!404358 e!2625362))

(declare-fun b!4228179 () Bool)

(declare-fun e!2625365 () Bool)

(assert (=> b!4228179 (= e!2625365 false)))

(declare-fun b!4228180 () Bool)

(declare-fun res!1738617 () Bool)

(assert (=> b!4228180 (=> (not res!1738617) (not e!2625365))))

(declare-fun lt!1503322 () Int)

(declare-fun p!3014 () List!46788)

(declare-fun size!34183 (List!46788) Int)

(assert (=> b!4228180 (= res!1738617 (> lt!1503322 (size!34183 p!3014)))))

(declare-fun b!4228181 () Bool)

(declare-fun tp!1295072 () Bool)

(assert (=> b!4228181 (= e!2625366 (and tp_is_empty!22469 tp!1295072))))

(declare-fun b!4228182 () Bool)

(declare-fun tp!1295074 () Bool)

(assert (=> b!4228182 (= e!2625362 (and tp_is_empty!22469 tp!1295074))))

(declare-fun b!4228183 () Bool)

(declare-fun res!1738619 () Bool)

(assert (=> b!4228183 (=> (not res!1738619) (not e!2625365))))

(declare-datatypes ((List!46789 0))(
  ( (Nil!46665) (Cons!46665 (h!52085 (_ BitVec 16)) (t!349410 List!46789)) )
))
(declare-datatypes ((TokenValue!8092 0))(
  ( (FloatLiteralValue!16184 (text!57089 List!46789)) (TokenValueExt!8091 (__x!28408 Int)) (Broken!40460 (value!244540 List!46789)) (Object!8215) (End!8092) (Def!8092) (Underscore!8092) (Match!8092) (Else!8092) (Error!8092) (Case!8092) (If!8092) (Extends!8092) (Abstract!8092) (Class!8092) (Val!8092) (DelimiterValue!16184 (del!8152 List!46789)) (KeywordValue!8098 (value!244541 List!46789)) (CommentValue!16184 (value!244542 List!46789)) (WhitespaceValue!16184 (value!244543 List!46789)) (IndentationValue!8092 (value!244544 List!46789)) (String!54333) (Int32!8092) (Broken!40461 (value!244545 List!46789)) (Boolean!8093) (Unit!65762) (OperatorValue!8095 (op!8152 List!46789)) (IdentifierValue!16184 (value!244546 List!46789)) (IdentifierValue!16185 (value!244547 List!46789)) (WhitespaceValue!16185 (value!244548 List!46789)) (True!16184) (False!16184) (Broken!40462 (value!244549 List!46789)) (Broken!40463 (value!244550 List!46789)) (True!16185) (RightBrace!8092) (RightBracket!8092) (Colon!8092) (Null!8092) (Comma!8092) (LeftBracket!8092) (False!16185) (LeftBrace!8092) (ImaginaryLiteralValue!8092 (text!57090 List!46789)) (StringLiteralValue!24276 (value!244551 List!46789)) (EOFValue!8092 (value!244552 List!46789)) (IdentValue!8092 (value!244553 List!46789)) (DelimiterValue!16185 (value!244554 List!46789)) (DedentValue!8092 (value!244555 List!46789)) (NewLineValue!8092 (value!244556 List!46789)) (IntegerValue!24276 (value!244557 (_ BitVec 32)) (text!57091 List!46789)) (IntegerValue!24277 (value!244558 Int) (text!57092 List!46789)) (Times!8092) (Or!8092) (Equal!8092) (Minus!8092) (Broken!40464 (value!244559 List!46789)) (And!8092) (Div!8092) (LessEqual!8092) (Mod!8092) (Concat!20859) (Not!8092) (Plus!8092) (SpaceValue!8092 (value!244560 List!46789)) (IntegerValue!24278 (value!244561 Int) (text!57093 List!46789)) (StringLiteralValue!24277 (text!57094 List!46789)) (FloatLiteralValue!16185 (text!57095 List!46789)) (BytesLiteralValue!8092 (value!244562 List!46789)) (CommentValue!16185 (value!244563 List!46789)) (StringLiteralValue!24278 (value!244564 List!46789)) (ErrorTokenValue!8092 (msg!8153 List!46789)) )
))
(declare-datatypes ((IArray!28151 0))(
  ( (IArray!28152 (innerList!14133 List!46788)) )
))
(declare-datatypes ((Conc!14073 0))(
  ( (Node!14073 (left!34708 Conc!14073) (right!35038 Conc!14073) (csize!28376 Int) (cheight!14284 Int)) (Leaf!21749 (xs!17379 IArray!28151) (csize!28377 Int)) (Empty!14073) )
))
(declare-datatypes ((BalanceConc!27740 0))(
  ( (BalanceConc!27741 (c!718772 Conc!14073)) )
))
(declare-datatypes ((TokenValueInjection!15612 0))(
  ( (TokenValueInjection!15613 (toValue!10590 Int) (toChars!10449 Int)) )
))
(declare-datatypes ((String!54334 0))(
  ( (String!54335 (value!244565 String)) )
))
(declare-datatypes ((Regex!12767 0))(
  ( (ElementMatch!12767 (c!718773 C!25732)) (Concat!20860 (regOne!26046 Regex!12767) (regTwo!26046 Regex!12767)) (EmptyExpr!12767) (Star!12767 (reg!13096 Regex!12767)) (EmptyLang!12767) (Union!12767 (regOne!26047 Regex!12767) (regTwo!26047 Regex!12767)) )
))
(declare-datatypes ((Rule!15524 0))(
  ( (Rule!15525 (regex!7862 Regex!12767) (tag!8726 String!54334) (isSeparator!7862 Bool) (transformation!7862 TokenValueInjection!15612)) )
))
(declare-fun r!4334 () Rule!15524)

(declare-fun ruleValid!3558 (LexerInterface!7457 Rule!15524) Bool)

(assert (=> b!4228183 (= res!1738619 (ruleValid!3558 thiss!26785 r!4334))))

(declare-fun b!4228184 () Bool)

(declare-fun tp!1295070 () Bool)

(declare-fun inv!61320 (String!54334) Bool)

(declare-fun inv!61322 (TokenValueInjection!15612) Bool)

(assert (=> b!4228184 (= e!2625368 (and tp!1295070 (inv!61320 (tag!8726 r!4334)) (inv!61322 (transformation!7862 r!4334)) e!2625367))))

(declare-fun b!4228185 () Bool)

(declare-fun res!1738618 () Bool)

(assert (=> b!4228185 (=> (not res!1738618) (not e!2625364))))

(declare-fun suffix!1590 () List!46788)

(declare-fun ++!11892 (List!46788 List!46788) List!46788)

(assert (=> b!4228185 (= res!1738618 (= (++!11892 p!3014 suffix!1590) input!3586))))

(declare-fun b!4228186 () Bool)

(declare-fun res!1738616 () Bool)

(assert (=> b!4228186 (=> (not res!1738616) (not e!2625364))))

(assert (=> b!4228186 (= res!1738616 (isPrefix!4677 p!3014 input!3586))))

(declare-fun b!4228187 () Bool)

(declare-fun tp!1295071 () Bool)

(assert (=> b!4228187 (= e!2625369 (and tp_is_empty!22469 tp!1295071))))

(declare-fun b!4228188 () Bool)

(assert (=> b!4228188 (= e!2625364 e!2625365)))

(declare-fun res!1738621 () Bool)

(assert (=> b!4228188 (=> (not res!1738621) (not e!2625365))))

(assert (=> b!4228188 (= res!1738621 (<= lt!1503322 (size!34183 input!3586)))))

(assert (=> b!4228188 (= lt!1503322 (size!34183 pBis!134))))

(assert (= (and start!404358 res!1738620) b!4228185))

(assert (= (and b!4228185 res!1738618) b!4228186))

(assert (= (and b!4228186 res!1738616) b!4228176))

(assert (= (and b!4228176 res!1738622) b!4228188))

(assert (= (and b!4228188 res!1738621) b!4228180))

(assert (= (and b!4228180 res!1738617) b!4228183))

(assert (= (and b!4228183 res!1738619) b!4228179))

(assert (= (and start!404358 ((_ is Cons!46664) p!3014)) b!4228178))

(assert (= b!4228184 b!4228177))

(assert (= start!404358 b!4228184))

(assert (= (and start!404358 ((_ is Cons!46664) input!3586)) b!4228181))

(assert (= (and start!404358 ((_ is Cons!46664) pBis!134)) b!4228187))

(assert (= (and start!404358 ((_ is Cons!46664) suffix!1590)) b!4228182))

(declare-fun m!4815277 () Bool)

(assert (=> b!4228183 m!4815277))

(declare-fun m!4815279 () Bool)

(assert (=> b!4228176 m!4815279))

(declare-fun m!4815281 () Bool)

(assert (=> b!4228188 m!4815281))

(declare-fun m!4815283 () Bool)

(assert (=> b!4228188 m!4815283))

(declare-fun m!4815285 () Bool)

(assert (=> b!4228185 m!4815285))

(declare-fun m!4815287 () Bool)

(assert (=> b!4228186 m!4815287))

(declare-fun m!4815289 () Bool)

(assert (=> b!4228180 m!4815289))

(declare-fun m!4815291 () Bool)

(assert (=> b!4228184 m!4815291))

(declare-fun m!4815293 () Bool)

(assert (=> b!4228184 m!4815293))

(check-sat (not b!4228182) (not b!4228185) (not b!4228176) (not b_next!125505) (not b!4228188) (not b!4228186) (not b!4228181) tp_is_empty!22469 (not b!4228180) b_and!334037 b_and!334039 (not b_next!125503) (not b!4228184) (not b!4228183) (not b!4228187) (not b!4228178))
(check-sat b_and!334037 b_and!334039 (not b_next!125505) (not b_next!125503))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395334 () Bool)

(assert start!395334)

(declare-fun b!4153184 () Bool)

(declare-fun b_free!118803 () Bool)

(declare-fun b_next!119507 () Bool)

(assert (=> b!4153184 (= b_free!118803 (not b_next!119507))))

(declare-fun tp!1265973 () Bool)

(declare-fun b_and!323165 () Bool)

(assert (=> b!4153184 (= tp!1265973 b_and!323165)))

(declare-fun b_free!118805 () Bool)

(declare-fun b_next!119509 () Bool)

(assert (=> b!4153184 (= b_free!118805 (not b_next!119509))))

(declare-fun tp!1265982 () Bool)

(declare-fun b_and!323167 () Bool)

(assert (=> b!4153184 (= tp!1265982 b_and!323167)))

(declare-fun b!4153181 () Bool)

(declare-fun b_free!118807 () Bool)

(declare-fun b_next!119511 () Bool)

(assert (=> b!4153181 (= b_free!118807 (not b_next!119511))))

(declare-fun tp!1265979 () Bool)

(declare-fun b_and!323169 () Bool)

(assert (=> b!4153181 (= tp!1265979 b_and!323169)))

(declare-fun b_free!118809 () Bool)

(declare-fun b_next!119513 () Bool)

(assert (=> b!4153181 (= b_free!118809 (not b_next!119513))))

(declare-fun tp!1265977 () Bool)

(declare-fun b_and!323171 () Bool)

(assert (=> b!4153181 (= tp!1265977 b_and!323171)))

(declare-fun b!4153180 () Bool)

(declare-fun b_free!118811 () Bool)

(declare-fun b_next!119515 () Bool)

(assert (=> b!4153180 (= b_free!118811 (not b_next!119515))))

(declare-fun tp!1265978 () Bool)

(declare-fun b_and!323173 () Bool)

(assert (=> b!4153180 (= tp!1265978 b_and!323173)))

(declare-fun b_free!118813 () Bool)

(declare-fun b_next!119517 () Bool)

(assert (=> b!4153180 (= b_free!118813 (not b_next!119517))))

(declare-fun tp!1265981 () Bool)

(declare-fun b_and!323175 () Bool)

(assert (=> b!4153180 (= tp!1265981 b_and!323175)))

(declare-fun e!2576785 () Bool)

(declare-datatypes ((List!45253 0))(
  ( (Nil!45129) (Cons!45129 (h!50549 (_ BitVec 16)) (t!343284 List!45253)) )
))
(declare-datatypes ((TokenValue!7668 0))(
  ( (FloatLiteralValue!15336 (text!54121 List!45253)) (TokenValueExt!7667 (__x!27553 Int)) (Broken!38340 (value!232510 List!45253)) (Object!7791) (End!7668) (Def!7668) (Underscore!7668) (Match!7668) (Else!7668) (Error!7668) (Case!7668) (If!7668) (Extends!7668) (Abstract!7668) (Class!7668) (Val!7668) (DelimiterValue!15336 (del!7728 List!45253)) (KeywordValue!7674 (value!232511 List!45253)) (CommentValue!15336 (value!232512 List!45253)) (WhitespaceValue!15336 (value!232513 List!45253)) (IndentationValue!7668 (value!232514 List!45253)) (String!52089) (Int32!7668) (Broken!38341 (value!232515 List!45253)) (Boolean!7669) (Unit!64394) (OperatorValue!7671 (op!7728 List!45253)) (IdentifierValue!15336 (value!232516 List!45253)) (IdentifierValue!15337 (value!232517 List!45253)) (WhitespaceValue!15337 (value!232518 List!45253)) (True!15336) (False!15336) (Broken!38342 (value!232519 List!45253)) (Broken!38343 (value!232520 List!45253)) (True!15337) (RightBrace!7668) (RightBracket!7668) (Colon!7668) (Null!7668) (Comma!7668) (LeftBracket!7668) (False!15337) (LeftBrace!7668) (ImaginaryLiteralValue!7668 (text!54122 List!45253)) (StringLiteralValue!23004 (value!232521 List!45253)) (EOFValue!7668 (value!232522 List!45253)) (IdentValue!7668 (value!232523 List!45253)) (DelimiterValue!15337 (value!232524 List!45253)) (DedentValue!7668 (value!232525 List!45253)) (NewLineValue!7668 (value!232526 List!45253)) (IntegerValue!23004 (value!232527 (_ BitVec 32)) (text!54123 List!45253)) (IntegerValue!23005 (value!232528 Int) (text!54124 List!45253)) (Times!7668) (Or!7668) (Equal!7668) (Minus!7668) (Broken!38344 (value!232529 List!45253)) (And!7668) (Div!7668) (LessEqual!7668) (Mod!7668) (Concat!20011) (Not!7668) (Plus!7668) (SpaceValue!7668 (value!232530 List!45253)) (IntegerValue!23006 (value!232531 Int) (text!54125 List!45253)) (StringLiteralValue!23005 (text!54126 List!45253)) (FloatLiteralValue!15337 (text!54127 List!45253)) (BytesLiteralValue!7668 (value!232532 List!45253)) (CommentValue!15337 (value!232533 List!45253)) (StringLiteralValue!23006 (value!232534 List!45253)) (ErrorTokenValue!7668 (msg!7729 List!45253)) )
))
(declare-datatypes ((C!24872 0))(
  ( (C!24873 (val!14546 Int)) )
))
(declare-datatypes ((Regex!12343 0))(
  ( (ElementMatch!12343 (c!711174 C!24872)) (Concat!20012 (regOne!25198 Regex!12343) (regTwo!25198 Regex!12343)) (EmptyExpr!12343) (Star!12343 (reg!12672 Regex!12343)) (EmptyLang!12343) (Union!12343 (regOne!25199 Regex!12343) (regTwo!25199 Regex!12343)) )
))
(declare-datatypes ((List!45254 0))(
  ( (Nil!45130) (Cons!45130 (h!50550 C!24872) (t!343285 List!45254)) )
))
(declare-datatypes ((IArray!27303 0))(
  ( (IArray!27304 (innerList!13709 List!45254)) )
))
(declare-datatypes ((Conc!13649 0))(
  ( (Node!13649 (left!33790 Conc!13649) (right!34120 Conc!13649) (csize!27528 Int) (cheight!13860 Int)) (Leaf!21083 (xs!16955 IArray!27303) (csize!27529 Int)) (Empty!13649) )
))
(declare-datatypes ((String!52090 0))(
  ( (String!52091 (value!232535 String)) )
))
(declare-datatypes ((BalanceConc!26892 0))(
  ( (BalanceConc!26893 (c!711175 Conc!13649)) )
))
(declare-datatypes ((TokenValueInjection!14764 0))(
  ( (TokenValueInjection!14765 (toValue!10102 Int) (toChars!9961 Int)) )
))
(declare-datatypes ((Rule!14676 0))(
  ( (Rule!14677 (regex!7438 Regex!12343) (tag!8298 String!52090) (isSeparator!7438 Bool) (transformation!7438 TokenValueInjection!14764)) )
))
(declare-fun r2!597 () Rule!14676)

(declare-fun b!4153177 () Bool)

(declare-fun e!2576781 () Bool)

(declare-fun tp!1265975 () Bool)

(declare-fun inv!59740 (String!52090) Bool)

(declare-fun inv!59742 (TokenValueInjection!14764) Bool)

(assert (=> b!4153177 (= e!2576785 (and tp!1265975 (inv!59740 (tag!8298 r2!597)) (inv!59742 (transformation!7438 r2!597)) e!2576781))))

(declare-fun e!2576779 () Bool)

(declare-fun tp!1265974 () Bool)

(declare-fun b!4153178 () Bool)

(declare-fun e!2576782 () Bool)

(declare-fun r1!615 () Rule!14676)

(assert (=> b!4153178 (= e!2576779 (and tp!1265974 (inv!59740 (tag!8298 r1!615)) (inv!59742 (transformation!7438 r1!615)) e!2576782))))

(declare-fun tp!1265980 () Bool)

(declare-fun b!4153179 () Bool)

(declare-fun e!2576784 () Bool)

(declare-datatypes ((List!45255 0))(
  ( (Nil!45131) (Cons!45131 (h!50551 Rule!14676) (t!343286 List!45255)) )
))
(declare-fun rules!4102 () List!45255)

(declare-fun e!2576783 () Bool)

(assert (=> b!4153179 (= e!2576783 (and tp!1265980 (inv!59740 (tag!8298 (h!50551 rules!4102))) (inv!59742 (transformation!7438 (h!50551 rules!4102))) e!2576784))))

(assert (=> b!4153180 (= e!2576782 (and tp!1265978 tp!1265981))))

(assert (=> b!4153181 (= e!2576784 (and tp!1265979 tp!1265977))))

(declare-fun b!4153182 () Bool)

(declare-fun e!2576778 () Bool)

(declare-fun tp!1265976 () Bool)

(assert (=> b!4153182 (= e!2576778 (and e!2576783 tp!1265976))))

(declare-fun b!4153183 () Bool)

(declare-fun res!1700910 () Bool)

(declare-fun e!2576786 () Bool)

(assert (=> b!4153183 (=> (not res!1700910) (not e!2576786))))

(declare-fun contains!9124 (List!45255 Rule!14676) Bool)

(assert (=> b!4153183 (= res!1700910 (contains!9124 rules!4102 r1!615))))

(assert (=> b!4153184 (= e!2576781 (and tp!1265973 tp!1265982))))

(declare-fun res!1700909 () Bool)

(assert (=> start!395334 (=> (not res!1700909) (not e!2576786))))

(declare-datatypes ((LexerInterface!7027 0))(
  ( (LexerInterfaceExt!7024 (__x!27554 Int)) (Lexer!7025) )
))
(declare-fun thiss!26968 () LexerInterface!7027)

(get-info :version)

(assert (=> start!395334 (= res!1700909 ((_ is Lexer!7025) thiss!26968))))

(assert (=> start!395334 e!2576786))

(assert (=> start!395334 true))

(assert (=> start!395334 e!2576778))

(assert (=> start!395334 e!2576779))

(assert (=> start!395334 e!2576785))

(declare-fun b!4153176 () Bool)

(assert (=> b!4153176 (= e!2576786 false)))

(declare-fun lt!1481052 () Bool)

(assert (=> b!4153176 (= lt!1481052 (contains!9124 rules!4102 r2!597))))

(assert (= (and start!395334 res!1700909) b!4153183))

(assert (= (and b!4153183 res!1700910) b!4153176))

(assert (= b!4153179 b!4153181))

(assert (= b!4153182 b!4153179))

(assert (= (and start!395334 ((_ is Cons!45131) rules!4102)) b!4153182))

(assert (= b!4153178 b!4153180))

(assert (= start!395334 b!4153178))

(assert (= b!4153177 b!4153184))

(assert (= start!395334 b!4153177))

(declare-fun m!4748429 () Bool)

(assert (=> b!4153179 m!4748429))

(declare-fun m!4748431 () Bool)

(assert (=> b!4153179 m!4748431))

(declare-fun m!4748433 () Bool)

(assert (=> b!4153178 m!4748433))

(declare-fun m!4748435 () Bool)

(assert (=> b!4153178 m!4748435))

(declare-fun m!4748437 () Bool)

(assert (=> b!4153183 m!4748437))

(declare-fun m!4748439 () Bool)

(assert (=> b!4153176 m!4748439))

(declare-fun m!4748441 () Bool)

(assert (=> b!4153177 m!4748441))

(declare-fun m!4748443 () Bool)

(assert (=> b!4153177 m!4748443))

(check-sat (not b!4153177) b_and!323165 (not b_next!119513) (not b!4153182) (not b!4153179) b_and!323175 (not b_next!119515) b_and!323169 (not b!4153183) (not b_next!119511) (not b!4153176) (not b_next!119517) b_and!323167 b_and!323173 (not b_next!119507) (not b_next!119509) (not b!4153178) b_and!323171)
(check-sat (not b_next!119511) b_and!323165 (not b_next!119513) b_and!323175 (not b_next!119515) b_and!323169 (not b_next!119517) b_and!323167 b_and!323173 (not b_next!119507) (not b_next!119509) b_and!323171)

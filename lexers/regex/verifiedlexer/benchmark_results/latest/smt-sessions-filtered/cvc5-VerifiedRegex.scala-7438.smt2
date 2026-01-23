; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!395404 () Bool)

(assert start!395404)

(declare-fun b!4153793 () Bool)

(declare-fun b_free!118927 () Bool)

(declare-fun b_next!119631 () Bool)

(assert (=> b!4153793 (= b_free!118927 (not b_next!119631))))

(declare-fun tp!1266397 () Bool)

(declare-fun b_and!323289 () Bool)

(assert (=> b!4153793 (= tp!1266397 b_and!323289)))

(declare-fun b_free!118929 () Bool)

(declare-fun b_next!119633 () Bool)

(assert (=> b!4153793 (= b_free!118929 (not b_next!119633))))

(declare-fun tp!1266394 () Bool)

(declare-fun b_and!323291 () Bool)

(assert (=> b!4153793 (= tp!1266394 b_and!323291)))

(declare-fun b!4153786 () Bool)

(declare-fun b_free!118931 () Bool)

(declare-fun b_next!119635 () Bool)

(assert (=> b!4153786 (= b_free!118931 (not b_next!119635))))

(declare-fun tp!1266395 () Bool)

(declare-fun b_and!323293 () Bool)

(assert (=> b!4153786 (= tp!1266395 b_and!323293)))

(declare-fun b_free!118933 () Bool)

(declare-fun b_next!119637 () Bool)

(assert (=> b!4153786 (= b_free!118933 (not b_next!119637))))

(declare-fun tp!1266393 () Bool)

(declare-fun b_and!323295 () Bool)

(assert (=> b!4153786 (= tp!1266393 b_and!323295)))

(declare-fun b!4153790 () Bool)

(declare-fun b_free!118935 () Bool)

(declare-fun b_next!119639 () Bool)

(assert (=> b!4153790 (= b_free!118935 (not b_next!119639))))

(declare-fun tp!1266400 () Bool)

(declare-fun b_and!323297 () Bool)

(assert (=> b!4153790 (= tp!1266400 b_and!323297)))

(declare-fun b_free!118937 () Bool)

(declare-fun b_next!119641 () Bool)

(assert (=> b!4153790 (= b_free!118937 (not b_next!119641))))

(declare-fun tp!1266396 () Bool)

(declare-fun b_and!323299 () Bool)

(assert (=> b!4153790 (= tp!1266396 b_and!323299)))

(declare-fun b!4153783 () Bool)

(declare-fun e!2577266 () Bool)

(declare-fun e!2577271 () Bool)

(declare-fun tp!1266398 () Bool)

(assert (=> b!4153783 (= e!2577266 (and e!2577271 tp!1266398))))

(declare-fun b!4153784 () Bool)

(declare-fun res!1701146 () Bool)

(declare-fun e!2577270 () Bool)

(assert (=> b!4153784 (=> (not res!1701146) (not e!2577270))))

(declare-datatypes ((List!45288 0))(
  ( (Nil!45164) (Cons!45164 (h!50584 (_ BitVec 16)) (t!343319 List!45288)) )
))
(declare-datatypes ((TokenValue!7677 0))(
  ( (FloatLiteralValue!15354 (text!54184 List!45288)) (TokenValueExt!7676 (__x!27571 Int)) (Broken!38385 (value!232759 List!45288)) (Object!7800) (End!7677) (Def!7677) (Underscore!7677) (Match!7677) (Else!7677) (Error!7677) (Case!7677) (If!7677) (Extends!7677) (Abstract!7677) (Class!7677) (Val!7677) (DelimiterValue!15354 (del!7737 List!45288)) (KeywordValue!7683 (value!232760 List!45288)) (CommentValue!15354 (value!232761 List!45288)) (WhitespaceValue!15354 (value!232762 List!45288)) (IndentationValue!7677 (value!232763 List!45288)) (String!52136) (Int32!7677) (Broken!38386 (value!232764 List!45288)) (Boolean!7678) (Unit!64403) (OperatorValue!7680 (op!7737 List!45288)) (IdentifierValue!15354 (value!232765 List!45288)) (IdentifierValue!15355 (value!232766 List!45288)) (WhitespaceValue!15355 (value!232767 List!45288)) (True!15354) (False!15354) (Broken!38387 (value!232768 List!45288)) (Broken!38388 (value!232769 List!45288)) (True!15355) (RightBrace!7677) (RightBracket!7677) (Colon!7677) (Null!7677) (Comma!7677) (LeftBracket!7677) (False!15355) (LeftBrace!7677) (ImaginaryLiteralValue!7677 (text!54185 List!45288)) (StringLiteralValue!23031 (value!232770 List!45288)) (EOFValue!7677 (value!232771 List!45288)) (IdentValue!7677 (value!232772 List!45288)) (DelimiterValue!15355 (value!232773 List!45288)) (DedentValue!7677 (value!232774 List!45288)) (NewLineValue!7677 (value!232775 List!45288)) (IntegerValue!23031 (value!232776 (_ BitVec 32)) (text!54186 List!45288)) (IntegerValue!23032 (value!232777 Int) (text!54187 List!45288)) (Times!7677) (Or!7677) (Equal!7677) (Minus!7677) (Broken!38389 (value!232778 List!45288)) (And!7677) (Div!7677) (LessEqual!7677) (Mod!7677) (Concat!20029) (Not!7677) (Plus!7677) (SpaceValue!7677 (value!232779 List!45288)) (IntegerValue!23033 (value!232780 Int) (text!54188 List!45288)) (StringLiteralValue!23032 (text!54189 List!45288)) (FloatLiteralValue!15355 (text!54190 List!45288)) (BytesLiteralValue!7677 (value!232781 List!45288)) (CommentValue!15355 (value!232782 List!45288)) (StringLiteralValue!23033 (value!232783 List!45288)) (ErrorTokenValue!7677 (msg!7738 List!45288)) )
))
(declare-datatypes ((C!24890 0))(
  ( (C!24891 (val!14555 Int)) )
))
(declare-datatypes ((List!45289 0))(
  ( (Nil!45165) (Cons!45165 (h!50585 C!24890) (t!343320 List!45289)) )
))
(declare-datatypes ((IArray!27321 0))(
  ( (IArray!27322 (innerList!13718 List!45289)) )
))
(declare-datatypes ((Conc!13658 0))(
  ( (Node!13658 (left!33804 Conc!13658) (right!34134 Conc!13658) (csize!27546 Int) (cheight!13869 Int)) (Leaf!21097 (xs!16964 IArray!27321) (csize!27547 Int)) (Empty!13658) )
))
(declare-datatypes ((String!52137 0))(
  ( (String!52138 (value!232784 String)) )
))
(declare-datatypes ((Regex!12352 0))(
  ( (ElementMatch!12352 (c!711224 C!24890)) (Concat!20030 (regOne!25216 Regex!12352) (regTwo!25216 Regex!12352)) (EmptyExpr!12352) (Star!12352 (reg!12681 Regex!12352)) (EmptyLang!12352) (Union!12352 (regOne!25217 Regex!12352) (regTwo!25217 Regex!12352)) )
))
(declare-datatypes ((BalanceConc!26910 0))(
  ( (BalanceConc!26911 (c!711225 Conc!13658)) )
))
(declare-datatypes ((TokenValueInjection!14782 0))(
  ( (TokenValueInjection!14783 (toValue!10111 Int) (toChars!9970 Int)) )
))
(declare-datatypes ((Rule!14694 0))(
  ( (Rule!14695 (regex!7447 Regex!12352) (tag!8307 String!52137) (isSeparator!7447 Bool) (transformation!7447 TokenValueInjection!14782)) )
))
(declare-datatypes ((List!45290 0))(
  ( (Nil!45166) (Cons!45166 (h!50586 Rule!14694) (t!343321 List!45290)) )
))
(declare-fun rules!4102 () List!45290)

(declare-fun r2!597 () Rule!14694)

(declare-fun contains!9139 (List!45290 Rule!14694) Bool)

(assert (=> b!4153784 (= res!1701146 (contains!9139 rules!4102 r2!597))))

(declare-fun res!1701150 () Bool)

(assert (=> start!395404 (=> (not res!1701150) (not e!2577270))))

(declare-datatypes ((LexerInterface!7036 0))(
  ( (LexerInterfaceExt!7033 (__x!27572 Int)) (Lexer!7034) )
))
(declare-fun thiss!26968 () LexerInterface!7036)

(assert (=> start!395404 (= res!1701150 (is-Lexer!7034 thiss!26968))))

(assert (=> start!395404 e!2577270))

(assert (=> start!395404 true))

(assert (=> start!395404 e!2577266))

(declare-fun e!2577261 () Bool)

(assert (=> start!395404 e!2577261))

(declare-fun e!2577264 () Bool)

(assert (=> start!395404 e!2577264))

(declare-fun b!4153785 () Bool)

(declare-fun res!1701148 () Bool)

(assert (=> b!4153785 (=> (not res!1701148) (not e!2577270))))

(declare-fun r1!615 () Rule!14694)

(declare-fun getIndex!789 (List!45290 Rule!14694) Int)

(assert (=> b!4153785 (= res!1701148 (< (getIndex!789 rules!4102 r1!615) (getIndex!789 rules!4102 r2!597)))))

(declare-fun e!2577267 () Bool)

(assert (=> b!4153786 (= e!2577267 (and tp!1266395 tp!1266393))))

(declare-fun e!2577263 () Bool)

(declare-fun b!4153787 () Bool)

(declare-fun tp!1266399 () Bool)

(declare-fun inv!59763 (String!52137) Bool)

(declare-fun inv!59766 (TokenValueInjection!14782) Bool)

(assert (=> b!4153787 (= e!2577271 (and tp!1266399 (inv!59763 (tag!8307 (h!50586 rules!4102))) (inv!59766 (transformation!7447 (h!50586 rules!4102))) e!2577263))))

(declare-fun tp!1266391 () Bool)

(declare-fun b!4153788 () Bool)

(assert (=> b!4153788 (= e!2577264 (and tp!1266391 (inv!59763 (tag!8307 r2!597)) (inv!59766 (transformation!7447 r2!597)) e!2577267))))

(declare-fun b!4153789 () Bool)

(declare-fun res!1701145 () Bool)

(assert (=> b!4153789 (=> (not res!1701145) (not e!2577270))))

(assert (=> b!4153789 (= res!1701145 (contains!9139 rules!4102 r1!615))))

(assert (=> b!4153790 (= e!2577263 (and tp!1266400 tp!1266396))))

(declare-fun b!4153791 () Bool)

(declare-fun res!1701147 () Bool)

(assert (=> b!4153791 (=> (not res!1701147) (not e!2577270))))

(declare-datatypes ((List!45291 0))(
  ( (Nil!45167) (Cons!45167 (h!50587 String!52137) (t!343322 List!45291)) )
))
(declare-fun noDuplicateTag!3024 (LexerInterface!7036 List!45290 List!45291) Bool)

(declare-fun noDuplicateTag$default$2!29 (LexerInterface!7036) List!45291)

(assert (=> b!4153791 (= res!1701147 (noDuplicateTag!3024 thiss!26968 rules!4102 (noDuplicateTag$default$2!29 thiss!26968)))))

(declare-fun b!4153792 () Bool)

(declare-fun res!1701149 () Bool)

(assert (=> b!4153792 (=> (not res!1701149) (not e!2577270))))

(declare-fun head!8773 (List!45290) Rule!14694)

(assert (=> b!4153792 (= res!1701149 (= (head!8773 rules!4102) r1!615))))

(declare-fun e!2577268 () Bool)

(assert (=> b!4153793 (= e!2577268 (and tp!1266397 tp!1266394))))

(declare-fun b!4153794 () Bool)

(declare-fun tp!1266392 () Bool)

(assert (=> b!4153794 (= e!2577261 (and tp!1266392 (inv!59763 (tag!8307 r1!615)) (inv!59766 (transformation!7447 r1!615)) e!2577268))))

(declare-fun b!4153795 () Bool)

(assert (=> b!4153795 (= e!2577270 (not true))))

(assert (=> b!4153795 (not (= (tag!8307 r2!597) (tag!8307 r1!615)))))

(declare-datatypes ((Unit!64404 0))(
  ( (Unit!64405) )
))
(declare-fun lt!1481111 () Unit!64404)

(declare-fun lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!7 (LexerInterface!7036 List!45290 Rule!14694 String!52137 List!45291) Unit!64404)

(declare-fun tail!6612 (List!45290) List!45290)

(assert (=> b!4153795 (= lt!1481111 (lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!7 thiss!26968 (tail!6612 rules!4102) r2!597 (tag!8307 r1!615) (Cons!45167 (tag!8307 r1!615) Nil!45167)))))

(assert (= (and start!395404 res!1701150) b!4153789))

(assert (= (and b!4153789 res!1701145) b!4153784))

(assert (= (and b!4153784 res!1701146) b!4153791))

(assert (= (and b!4153791 res!1701147) b!4153785))

(assert (= (and b!4153785 res!1701148) b!4153792))

(assert (= (and b!4153792 res!1701149) b!4153795))

(assert (= b!4153787 b!4153790))

(assert (= b!4153783 b!4153787))

(assert (= (and start!395404 (is-Cons!45166 rules!4102)) b!4153783))

(assert (= b!4153794 b!4153793))

(assert (= start!395404 b!4153794))

(assert (= b!4153788 b!4153786))

(assert (= start!395404 b!4153788))

(declare-fun m!4748789 () Bool)

(assert (=> b!4153788 m!4748789))

(declare-fun m!4748791 () Bool)

(assert (=> b!4153788 m!4748791))

(declare-fun m!4748793 () Bool)

(assert (=> b!4153794 m!4748793))

(declare-fun m!4748795 () Bool)

(assert (=> b!4153794 m!4748795))

(declare-fun m!4748797 () Bool)

(assert (=> b!4153784 m!4748797))

(declare-fun m!4748799 () Bool)

(assert (=> b!4153789 m!4748799))

(declare-fun m!4748801 () Bool)

(assert (=> b!4153791 m!4748801))

(assert (=> b!4153791 m!4748801))

(declare-fun m!4748803 () Bool)

(assert (=> b!4153791 m!4748803))

(declare-fun m!4748805 () Bool)

(assert (=> b!4153795 m!4748805))

(assert (=> b!4153795 m!4748805))

(declare-fun m!4748807 () Bool)

(assert (=> b!4153795 m!4748807))

(declare-fun m!4748809 () Bool)

(assert (=> b!4153792 m!4748809))

(declare-fun m!4748811 () Bool)

(assert (=> b!4153785 m!4748811))

(declare-fun m!4748813 () Bool)

(assert (=> b!4153785 m!4748813))

(declare-fun m!4748815 () Bool)

(assert (=> b!4153787 m!4748815))

(declare-fun m!4748817 () Bool)

(assert (=> b!4153787 m!4748817))

(push 1)

(assert (not b!4153792))

(assert (not b!4153783))

(assert (not b_next!119631))

(assert b_and!323291)

(assert b_and!323289)

(assert (not b_next!119639))

(assert b_and!323299)

(assert (not b!4153784))

(assert (not b!4153794))

(assert (not b!4153791))

(assert (not b_next!119637))

(assert (not b_next!119641))

(assert (not b_next!119633))

(assert (not b!4153788))

(assert (not b!4153787))

(assert (not b!4153785))

(assert (not b!4153789))

(assert b_and!323297)

(assert b_and!323293)

(assert (not b_next!119635))

(assert b_and!323295)

(assert (not b!4153795))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!119631))

(assert b_and!323291)

(assert b_and!323289)

(assert (not b_next!119639))

(assert b_and!323299)

(assert (not b_next!119637))

(assert (not b_next!119641))

(assert (not b_next!119633))

(assert b_and!323297)

(assert b_and!323293)

(assert (not b_next!119635))

(assert b_and!323295)

(check-sat)

(pop 1)


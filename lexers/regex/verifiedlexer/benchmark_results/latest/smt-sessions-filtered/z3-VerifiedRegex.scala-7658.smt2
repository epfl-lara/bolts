; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404142 () Bool)

(assert start!404142)

(declare-fun b!4226436 () Bool)

(declare-fun b_free!124499 () Bool)

(declare-fun b_next!125203 () Bool)

(assert (=> b!4226436 (= b_free!124499 (not b_next!125203))))

(declare-fun tp!1293903 () Bool)

(declare-fun b_and!333733 () Bool)

(assert (=> b!4226436 (= tp!1293903 b_and!333733)))

(declare-fun b_free!124501 () Bool)

(declare-fun b_next!125205 () Bool)

(assert (=> b!4226436 (= b_free!124501 (not b_next!125205))))

(declare-fun tp!1293904 () Bool)

(declare-fun b_and!333735 () Bool)

(assert (=> b!4226436 (= tp!1293904 b_and!333735)))

(declare-fun b!4226434 () Bool)

(declare-fun b_free!124503 () Bool)

(declare-fun b_next!125207 () Bool)

(assert (=> b!4226434 (= b_free!124503 (not b_next!125207))))

(declare-fun tp!1293906 () Bool)

(declare-fun b_and!333737 () Bool)

(assert (=> b!4226434 (= tp!1293906 b_and!333737)))

(declare-fun b_free!124505 () Bool)

(declare-fun b_next!125209 () Bool)

(assert (=> b!4226434 (= b_free!124505 (not b_next!125209))))

(declare-fun tp!1293900 () Bool)

(declare-fun b_and!333739 () Bool)

(assert (=> b!4226434 (= tp!1293900 b_and!333739)))

(declare-fun e!2624032 () Bool)

(declare-fun b!4226433 () Bool)

(declare-datatypes ((C!25664 0))(
  ( (C!25665 (val!14994 Int)) )
))
(declare-datatypes ((List!46693 0))(
  ( (Nil!46569) (Cons!46569 (h!51989 C!25664) (t!349310 List!46693)) )
))
(declare-datatypes ((IArray!28087 0))(
  ( (IArray!28088 (innerList!14101 List!46693)) )
))
(declare-datatypes ((Conc!14041 0))(
  ( (Node!14041 (left!34631 Conc!14041) (right!34961 Conc!14041) (csize!28312 Int) (cheight!14252 Int)) (Leaf!21700 (xs!17347 IArray!28087) (csize!28313 Int)) (Empty!14041) )
))
(declare-datatypes ((List!46694 0))(
  ( (Nil!46570) (Cons!46570 (h!51990 (_ BitVec 16)) (t!349311 List!46694)) )
))
(declare-datatypes ((TokenValue!8060 0))(
  ( (FloatLiteralValue!16120 (text!56865 List!46694)) (TokenValueExt!8059 (__x!28343 Int)) (Broken!40300 (value!243655 List!46694)) (Object!8183) (End!8060) (Def!8060) (Underscore!8060) (Match!8060) (Else!8060) (Error!8060) (Case!8060) (If!8060) (Extends!8060) (Abstract!8060) (Class!8060) (Val!8060) (DelimiterValue!16120 (del!8120 List!46694)) (KeywordValue!8066 (value!243656 List!46694)) (CommentValue!16120 (value!243657 List!46694)) (WhitespaceValue!16120 (value!243658 List!46694)) (IndentationValue!8060 (value!243659 List!46694)) (String!54169) (Int32!8060) (Broken!40301 (value!243660 List!46694)) (Boolean!8061) (Unit!65726) (OperatorValue!8063 (op!8120 List!46694)) (IdentifierValue!16120 (value!243661 List!46694)) (IdentifierValue!16121 (value!243662 List!46694)) (WhitespaceValue!16121 (value!243663 List!46694)) (True!16120) (False!16120) (Broken!40302 (value!243664 List!46694)) (Broken!40303 (value!243665 List!46694)) (True!16121) (RightBrace!8060) (RightBracket!8060) (Colon!8060) (Null!8060) (Comma!8060) (LeftBracket!8060) (False!16121) (LeftBrace!8060) (ImaginaryLiteralValue!8060 (text!56866 List!46694)) (StringLiteralValue!24180 (value!243666 List!46694)) (EOFValue!8060 (value!243667 List!46694)) (IdentValue!8060 (value!243668 List!46694)) (DelimiterValue!16121 (value!243669 List!46694)) (DedentValue!8060 (value!243670 List!46694)) (NewLineValue!8060 (value!243671 List!46694)) (IntegerValue!24180 (value!243672 (_ BitVec 32)) (text!56867 List!46694)) (IntegerValue!24181 (value!243673 Int) (text!56868 List!46694)) (Times!8060) (Or!8060) (Equal!8060) (Minus!8060) (Broken!40304 (value!243674 List!46694)) (And!8060) (Div!8060) (LessEqual!8060) (Mod!8060) (Concat!20795) (Not!8060) (Plus!8060) (SpaceValue!8060 (value!243675 List!46694)) (IntegerValue!24182 (value!243676 Int) (text!56869 List!46694)) (StringLiteralValue!24181 (text!56870 List!46694)) (FloatLiteralValue!16121 (text!56871 List!46694)) (BytesLiteralValue!8060 (value!243677 List!46694)) (CommentValue!16121 (value!243678 List!46694)) (StringLiteralValue!24182 (value!243679 List!46694)) (ErrorTokenValue!8060 (msg!8121 List!46694)) )
))
(declare-datatypes ((BalanceConc!27676 0))(
  ( (BalanceConc!27677 (c!718676 Conc!14041)) )
))
(declare-datatypes ((TokenValueInjection!15548 0))(
  ( (TokenValueInjection!15549 (toValue!10558 Int) (toChars!10417 Int)) )
))
(declare-datatypes ((Regex!12735 0))(
  ( (ElementMatch!12735 (c!718677 C!25664)) (Concat!20796 (regOne!25982 Regex!12735) (regTwo!25982 Regex!12735)) (EmptyExpr!12735) (Star!12735 (reg!13064 Regex!12735)) (EmptyLang!12735) (Union!12735 (regOne!25983 Regex!12735) (regTwo!25983 Regex!12735)) )
))
(declare-datatypes ((String!54170 0))(
  ( (String!54171 (value!243680 String)) )
))
(declare-datatypes ((Rule!15460 0))(
  ( (Rule!15461 (regex!7830 Regex!12735) (tag!8694 String!54170) (isSeparator!7830 Bool) (transformation!7830 TokenValueInjection!15548)) )
))
(declare-datatypes ((List!46695 0))(
  ( (Nil!46571) (Cons!46571 (h!51991 Rule!15460) (t!349312 List!46695)) )
))
(declare-fun rules!4024 () List!46695)

(declare-fun tp!1293905 () Bool)

(declare-fun e!2624031 () Bool)

(declare-fun inv!61231 (String!54170) Bool)

(declare-fun inv!61233 (TokenValueInjection!15548) Bool)

(assert (=> b!4226433 (= e!2624032 (and tp!1293905 (inv!61231 (tag!8694 (h!51991 rules!4024))) (inv!61233 (transformation!7830 (h!51991 rules!4024))) e!2624031))))

(assert (=> b!4226434 (= e!2624031 (and tp!1293906 tp!1293900))))

(declare-fun e!2624033 () Bool)

(declare-fun r!4367 () Rule!15460)

(declare-fun b!4226435 () Bool)

(declare-fun tp!1293901 () Bool)

(declare-fun e!2624035 () Bool)

(assert (=> b!4226435 (= e!2624033 (and tp!1293901 (inv!61231 (tag!8694 r!4367)) (inv!61233 (transformation!7830 r!4367)) e!2624035))))

(assert (=> b!4226436 (= e!2624035 (and tp!1293903 tp!1293904))))

(declare-fun res!1737875 () Bool)

(declare-fun e!2624036 () Bool)

(assert (=> start!404142 (=> (not res!1737875) (not e!2624036))))

(declare-datatypes ((LexerInterface!7425 0))(
  ( (LexerInterfaceExt!7422 (__x!28344 Int)) (Lexer!7423) )
))
(declare-fun thiss!26827 () LexerInterface!7425)

(get-info :version)

(assert (=> start!404142 (= res!1737875 ((_ is Lexer!7423) thiss!26827))))

(assert (=> start!404142 e!2624036))

(assert (=> start!404142 true))

(declare-fun e!2624030 () Bool)

(assert (=> start!404142 e!2624030))

(assert (=> start!404142 e!2624033))

(declare-fun b!4226437 () Bool)

(assert (=> b!4226437 (= e!2624036 false)))

(declare-fun lt!1503166 () Bool)

(declare-fun contains!9653 (List!46695 Rule!15460) Bool)

(assert (=> b!4226437 (= lt!1503166 (contains!9653 rules!4024 r!4367))))

(declare-fun b!4226438 () Bool)

(declare-fun tp!1293902 () Bool)

(assert (=> b!4226438 (= e!2624030 (and e!2624032 tp!1293902))))

(assert (= (and start!404142 res!1737875) b!4226437))

(assert (= b!4226433 b!4226434))

(assert (= b!4226438 b!4226433))

(assert (= (and start!404142 ((_ is Cons!46571) rules!4024)) b!4226438))

(assert (= b!4226435 b!4226436))

(assert (= start!404142 b!4226435))

(declare-fun m!4814349 () Bool)

(assert (=> b!4226433 m!4814349))

(declare-fun m!4814351 () Bool)

(assert (=> b!4226433 m!4814351))

(declare-fun m!4814353 () Bool)

(assert (=> b!4226435 m!4814353))

(declare-fun m!4814355 () Bool)

(assert (=> b!4226435 m!4814355))

(declare-fun m!4814357 () Bool)

(assert (=> b!4226437 m!4814357))

(check-sat (not b!4226435) b_and!333733 (not b_next!125205) b_and!333735 (not b_next!125209) (not b_next!125207) (not b_next!125203) (not b!4226433) b_and!333737 b_and!333739 (not b!4226437) (not b!4226438))
(check-sat b_and!333733 (not b_next!125205) b_and!333735 (not b_next!125209) (not b_next!125207) (not b_next!125203) b_and!333737 b_and!333739)

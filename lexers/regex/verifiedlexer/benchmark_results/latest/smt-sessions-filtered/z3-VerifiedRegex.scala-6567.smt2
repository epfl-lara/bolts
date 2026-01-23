; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347486 () Bool)

(assert start!347486)

(declare-fun b!3691868 () Bool)

(declare-fun b_free!98005 () Bool)

(declare-fun b_next!98709 () Bool)

(assert (=> b!3691868 (= b_free!98005 (not b_next!98709))))

(declare-fun tp!1121844 () Bool)

(declare-fun b_and!275771 () Bool)

(assert (=> b!3691868 (= tp!1121844 b_and!275771)))

(declare-fun b_free!98007 () Bool)

(declare-fun b_next!98711 () Bool)

(assert (=> b!3691868 (= b_free!98007 (not b_next!98711))))

(declare-fun tp!1121843 () Bool)

(declare-fun b_and!275773 () Bool)

(assert (=> b!3691868 (= tp!1121843 b_and!275773)))

(declare-fun b!3691864 () Bool)

(declare-fun res!1500852 () Bool)

(declare-fun e!2286115 () Bool)

(assert (=> b!3691864 (=> (not res!1500852) (not e!2286115))))

(declare-datatypes ((LexerInterface!5503 0))(
  ( (LexerInterfaceExt!5500 (__x!24505 Int)) (Lexer!5501) )
))
(declare-fun thiss!25322 () LexerInterface!5503)

(declare-datatypes ((List!39238 0))(
  ( (Nil!39114) (Cons!39114 (h!44534 (_ BitVec 16)) (t!301387 List!39238)) )
))
(declare-datatypes ((TokenValue!6144 0))(
  ( (FloatLiteralValue!12288 (text!43453 List!39238)) (TokenValueExt!6143 (__x!24506 Int)) (Broken!30720 (value!188977 List!39238)) (Object!6267) (End!6144) (Def!6144) (Underscore!6144) (Match!6144) (Else!6144) (Error!6144) (Case!6144) (If!6144) (Extends!6144) (Abstract!6144) (Class!6144) (Val!6144) (DelimiterValue!12288 (del!6204 List!39238)) (KeywordValue!6150 (value!188978 List!39238)) (CommentValue!12288 (value!188979 List!39238)) (WhitespaceValue!12288 (value!188980 List!39238)) (IndentationValue!6144 (value!188981 List!39238)) (String!44053) (Int32!6144) (Broken!30721 (value!188982 List!39238)) (Boolean!6145) (Unit!57135) (OperatorValue!6147 (op!6204 List!39238)) (IdentifierValue!12288 (value!188983 List!39238)) (IdentifierValue!12289 (value!188984 List!39238)) (WhitespaceValue!12289 (value!188985 List!39238)) (True!12288) (False!12288) (Broken!30722 (value!188986 List!39238)) (Broken!30723 (value!188987 List!39238)) (True!12289) (RightBrace!6144) (RightBracket!6144) (Colon!6144) (Null!6144) (Comma!6144) (LeftBracket!6144) (False!12289) (LeftBrace!6144) (ImaginaryLiteralValue!6144 (text!43454 List!39238)) (StringLiteralValue!18432 (value!188988 List!39238)) (EOFValue!6144 (value!188989 List!39238)) (IdentValue!6144 (value!188990 List!39238)) (DelimiterValue!12289 (value!188991 List!39238)) (DedentValue!6144 (value!188992 List!39238)) (NewLineValue!6144 (value!188993 List!39238)) (IntegerValue!18432 (value!188994 (_ BitVec 32)) (text!43455 List!39238)) (IntegerValue!18433 (value!188995 Int) (text!43456 List!39238)) (Times!6144) (Or!6144) (Equal!6144) (Minus!6144) (Broken!30724 (value!188996 List!39238)) (And!6144) (Div!6144) (LessEqual!6144) (Mod!6144) (Concat!16817) (Not!6144) (Plus!6144) (SpaceValue!6144 (value!188997 List!39238)) (IntegerValue!18434 (value!188998 Int) (text!43457 List!39238)) (StringLiteralValue!18433 (text!43458 List!39238)) (FloatLiteralValue!12289 (text!43459 List!39238)) (BytesLiteralValue!6144 (value!188999 List!39238)) (CommentValue!12289 (value!189000 List!39238)) (StringLiteralValue!18434 (value!189001 List!39238)) (ErrorTokenValue!6144 (msg!6205 List!39238)) )
))
(declare-datatypes ((C!21532 0))(
  ( (C!21533 (val!12814 Int)) )
))
(declare-datatypes ((Regex!10673 0))(
  ( (ElementMatch!10673 (c!638420 C!21532)) (Concat!16818 (regOne!21858 Regex!10673) (regTwo!21858 Regex!10673)) (EmptyExpr!10673) (Star!10673 (reg!11002 Regex!10673)) (EmptyLang!10673) (Union!10673 (regOne!21859 Regex!10673) (regTwo!21859 Regex!10673)) )
))
(declare-datatypes ((String!44054 0))(
  ( (String!44055 (value!189002 String)) )
))
(declare-datatypes ((List!39239 0))(
  ( (Nil!39115) (Cons!39115 (h!44535 C!21532) (t!301388 List!39239)) )
))
(declare-datatypes ((IArray!24027 0))(
  ( (IArray!24028 (innerList!12071 List!39239)) )
))
(declare-datatypes ((Conc!12011 0))(
  ( (Node!12011 (left!30502 Conc!12011) (right!30832 Conc!12011) (csize!24252 Int) (cheight!12222 Int)) (Leaf!18579 (xs!15213 IArray!24027) (csize!24253 Int)) (Empty!12011) )
))
(declare-datatypes ((BalanceConc!23636 0))(
  ( (BalanceConc!23637 (c!638421 Conc!12011)) )
))
(declare-datatypes ((TokenValueInjection!11716 0))(
  ( (TokenValueInjection!11717 (toValue!8238 Int) (toChars!8097 Int)) )
))
(declare-datatypes ((Rule!11628 0))(
  ( (Rule!11629 (regex!5914 Regex!10673) (tag!6736 String!44054) (isSeparator!5914 Bool) (transformation!5914 TokenValueInjection!11716)) )
))
(declare-datatypes ((List!39240 0))(
  ( (Nil!39116) (Cons!39116 (h!44536 Rule!11628) (t!301389 List!39240)) )
))
(declare-fun rules!3598 () List!39240)

(declare-fun rulesInvariant!4900 (LexerInterface!5503 List!39240) Bool)

(assert (=> b!3691864 (= res!1500852 (rulesInvariant!4900 thiss!25322 rules!3598))))

(declare-fun b!3691865 () Bool)

(assert (=> b!3691865 (= e!2286115 false)))

(declare-fun input!3172 () List!39239)

(declare-datatypes ((Token!11182 0))(
  ( (Token!11183 (value!189003 TokenValue!6144) (rule!8760 Rule!11628) (size!29874 Int) (originalCharacters!6622 List!39239)) )
))
(declare-datatypes ((tuple2!39022 0))(
  ( (tuple2!39023 (_1!22645 Token!11182) (_2!22645 List!39239)) )
))
(declare-datatypes ((Option!8426 0))(
  ( (None!8425) (Some!8425 (v!38379 tuple2!39022)) )
))
(declare-fun lt!1292592 () Option!8426)

(declare-fun maxPrefix!3025 (LexerInterface!5503 List!39240 List!39239) Option!8426)

(assert (=> b!3691865 (= lt!1292592 (maxPrefix!3025 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3691866 () Bool)

(declare-fun e!2286111 () Bool)

(declare-fun tp_is_empty!18421 () Bool)

(declare-fun tp!1121846 () Bool)

(assert (=> b!3691866 (= e!2286111 (and tp_is_empty!18421 tp!1121846))))

(declare-fun res!1500853 () Bool)

(assert (=> start!347486 (=> (not res!1500853) (not e!2286115))))

(get-info :version)

(assert (=> start!347486 (= res!1500853 ((_ is Lexer!5501) thiss!25322))))

(assert (=> start!347486 e!2286115))

(assert (=> start!347486 true))

(declare-fun e!2286113 () Bool)

(assert (=> start!347486 e!2286113))

(assert (=> start!347486 e!2286111))

(declare-fun b!3691867 () Bool)

(declare-fun res!1500851 () Bool)

(assert (=> b!3691867 (=> (not res!1500851) (not e!2286115))))

(declare-fun isEmpty!23316 (List!39240) Bool)

(assert (=> b!3691867 (= res!1500851 (not (isEmpty!23316 rules!3598)))))

(declare-fun e!2286116 () Bool)

(assert (=> b!3691868 (= e!2286116 (and tp!1121844 tp!1121843))))

(declare-fun b!3691869 () Bool)

(declare-fun e!2286114 () Bool)

(declare-fun tp!1121842 () Bool)

(assert (=> b!3691869 (= e!2286113 (and e!2286114 tp!1121842))))

(declare-fun tp!1121845 () Bool)

(declare-fun b!3691870 () Bool)

(declare-fun inv!52574 (String!44054) Bool)

(declare-fun inv!52576 (TokenValueInjection!11716) Bool)

(assert (=> b!3691870 (= e!2286114 (and tp!1121845 (inv!52574 (tag!6736 (h!44536 rules!3598))) (inv!52576 (transformation!5914 (h!44536 rules!3598))) e!2286116))))

(assert (= (and start!347486 res!1500853) b!3691864))

(assert (= (and b!3691864 res!1500852) b!3691867))

(assert (= (and b!3691867 res!1500851) b!3691865))

(assert (= b!3691870 b!3691868))

(assert (= b!3691869 b!3691870))

(assert (= (and start!347486 ((_ is Cons!39116) rules!3598)) b!3691869))

(assert (= (and start!347486 ((_ is Cons!39115) input!3172)) b!3691866))

(declare-fun m!4204395 () Bool)

(assert (=> b!3691864 m!4204395))

(declare-fun m!4204397 () Bool)

(assert (=> b!3691865 m!4204397))

(declare-fun m!4204399 () Bool)

(assert (=> b!3691867 m!4204399))

(declare-fun m!4204401 () Bool)

(assert (=> b!3691870 m!4204401))

(declare-fun m!4204403 () Bool)

(assert (=> b!3691870 m!4204403))

(check-sat (not b!3691865) tp_is_empty!18421 b_and!275773 (not b_next!98709) (not b!3691866) b_and!275771 (not b!3691867) (not b_next!98711) (not b!3691869) (not b!3691864) (not b!3691870))
(check-sat b_and!275771 b_and!275773 (not b_next!98709) (not b_next!98711))

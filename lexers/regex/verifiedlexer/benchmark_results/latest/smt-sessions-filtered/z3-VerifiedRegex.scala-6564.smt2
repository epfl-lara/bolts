; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347430 () Bool)

(assert start!347430)

(declare-fun b!3691566 () Bool)

(declare-fun b_free!97965 () Bool)

(declare-fun b_next!98669 () Bool)

(assert (=> b!3691566 (= b_free!97965 (not b_next!98669))))

(declare-fun tp!1121644 () Bool)

(declare-fun b_and!275731 () Bool)

(assert (=> b!3691566 (= tp!1121644 b_and!275731)))

(declare-fun b_free!97967 () Bool)

(declare-fun b_next!98671 () Bool)

(assert (=> b!3691566 (= b_free!97967 (not b_next!98671))))

(declare-fun tp!1121646 () Bool)

(declare-fun b_and!275733 () Bool)

(assert (=> b!3691566 (= tp!1121646 b_and!275733)))

(declare-fun b!3691564 () Bool)

(declare-fun e!2285905 () Bool)

(declare-fun e!2285902 () Bool)

(declare-fun tp!1121643 () Bool)

(assert (=> b!3691564 (= e!2285905 (and e!2285902 tp!1121643))))

(declare-fun e!2285904 () Bool)

(assert (=> b!3691566 (= e!2285904 (and tp!1121644 tp!1121646))))

(declare-fun res!1500725 () Bool)

(declare-fun e!2285906 () Bool)

(assert (=> start!347430 (=> (not res!1500725) (not e!2285906))))

(declare-datatypes ((LexerInterface!5497 0))(
  ( (LexerInterfaceExt!5494 (__x!24493 Int)) (Lexer!5495) )
))
(declare-fun thiss!25322 () LexerInterface!5497)

(get-info :version)

(assert (=> start!347430 (= res!1500725 ((_ is Lexer!5495) thiss!25322))))

(assert (=> start!347430 e!2285906))

(assert (=> start!347430 true))

(assert (=> start!347430 e!2285905))

(declare-fun b!3691563 () Bool)

(assert (=> b!3691563 (= e!2285906 false)))

(declare-fun lt!1292566 () Bool)

(declare-datatypes ((List!39218 0))(
  ( (Nil!39094) (Cons!39094 (h!44514 (_ BitVec 16)) (t!301367 List!39218)) )
))
(declare-datatypes ((TokenValue!6138 0))(
  ( (FloatLiteralValue!12276 (text!43411 List!39218)) (TokenValueExt!6137 (__x!24494 Int)) (Broken!30690 (value!188811 List!39218)) (Object!6261) (End!6138) (Def!6138) (Underscore!6138) (Match!6138) (Else!6138) (Error!6138) (Case!6138) (If!6138) (Extends!6138) (Abstract!6138) (Class!6138) (Val!6138) (DelimiterValue!12276 (del!6198 List!39218)) (KeywordValue!6144 (value!188812 List!39218)) (CommentValue!12276 (value!188813 List!39218)) (WhitespaceValue!12276 (value!188814 List!39218)) (IndentationValue!6138 (value!188815 List!39218)) (String!44023) (Int32!6138) (Broken!30691 (value!188816 List!39218)) (Boolean!6139) (Unit!57129) (OperatorValue!6141 (op!6198 List!39218)) (IdentifierValue!12276 (value!188817 List!39218)) (IdentifierValue!12277 (value!188818 List!39218)) (WhitespaceValue!12277 (value!188819 List!39218)) (True!12276) (False!12276) (Broken!30692 (value!188820 List!39218)) (Broken!30693 (value!188821 List!39218)) (True!12277) (RightBrace!6138) (RightBracket!6138) (Colon!6138) (Null!6138) (Comma!6138) (LeftBracket!6138) (False!12277) (LeftBrace!6138) (ImaginaryLiteralValue!6138 (text!43412 List!39218)) (StringLiteralValue!18414 (value!188822 List!39218)) (EOFValue!6138 (value!188823 List!39218)) (IdentValue!6138 (value!188824 List!39218)) (DelimiterValue!12277 (value!188825 List!39218)) (DedentValue!6138 (value!188826 List!39218)) (NewLineValue!6138 (value!188827 List!39218)) (IntegerValue!18414 (value!188828 (_ BitVec 32)) (text!43413 List!39218)) (IntegerValue!18415 (value!188829 Int) (text!43414 List!39218)) (Times!6138) (Or!6138) (Equal!6138) (Minus!6138) (Broken!30694 (value!188830 List!39218)) (And!6138) (Div!6138) (LessEqual!6138) (Mod!6138) (Concat!16805) (Not!6138) (Plus!6138) (SpaceValue!6138 (value!188831 List!39218)) (IntegerValue!18416 (value!188832 Int) (text!43415 List!39218)) (StringLiteralValue!18415 (text!43416 List!39218)) (FloatLiteralValue!12277 (text!43417 List!39218)) (BytesLiteralValue!6138 (value!188833 List!39218)) (CommentValue!12277 (value!188834 List!39218)) (StringLiteralValue!18416 (value!188835 List!39218)) (ErrorTokenValue!6138 (msg!6199 List!39218)) )
))
(declare-datatypes ((C!21520 0))(
  ( (C!21521 (val!12808 Int)) )
))
(declare-datatypes ((Regex!10667 0))(
  ( (ElementMatch!10667 (c!638406 C!21520)) (Concat!16806 (regOne!21846 Regex!10667) (regTwo!21846 Regex!10667)) (EmptyExpr!10667) (Star!10667 (reg!10996 Regex!10667)) (EmptyLang!10667) (Union!10667 (regOne!21847 Regex!10667) (regTwo!21847 Regex!10667)) )
))
(declare-datatypes ((String!44024 0))(
  ( (String!44025 (value!188836 String)) )
))
(declare-datatypes ((List!39219 0))(
  ( (Nil!39095) (Cons!39095 (h!44515 C!21520) (t!301368 List!39219)) )
))
(declare-datatypes ((IArray!24015 0))(
  ( (IArray!24016 (innerList!12065 List!39219)) )
))
(declare-datatypes ((Conc!12005 0))(
  ( (Node!12005 (left!30489 Conc!12005) (right!30819 Conc!12005) (csize!24240 Int) (cheight!12216 Int)) (Leaf!18570 (xs!15207 IArray!24015) (csize!24241 Int)) (Empty!12005) )
))
(declare-datatypes ((BalanceConc!23624 0))(
  ( (BalanceConc!23625 (c!638407 Conc!12005)) )
))
(declare-datatypes ((TokenValueInjection!11704 0))(
  ( (TokenValueInjection!11705 (toValue!8228 Int) (toChars!8087 Int)) )
))
(declare-datatypes ((Rule!11616 0))(
  ( (Rule!11617 (regex!5908 Regex!10667) (tag!6730 String!44024) (isSeparator!5908 Bool) (transformation!5908 TokenValueInjection!11704)) )
))
(declare-datatypes ((List!39220 0))(
  ( (Nil!39096) (Cons!39096 (h!44516 Rule!11616) (t!301369 List!39220)) )
))
(declare-fun rules!3598 () List!39220)

(declare-fun rulesInvariant!4894 (LexerInterface!5497 List!39220) Bool)

(assert (=> b!3691563 (= lt!1292566 (rulesInvariant!4894 thiss!25322 rules!3598))))

(declare-fun tp!1121645 () Bool)

(declare-fun b!3691565 () Bool)

(declare-fun inv!52559 (String!44024) Bool)

(declare-fun inv!52561 (TokenValueInjection!11704) Bool)

(assert (=> b!3691565 (= e!2285902 (and tp!1121645 (inv!52559 (tag!6730 (h!44516 rules!3598))) (inv!52561 (transformation!5908 (h!44516 rules!3598))) e!2285904))))

(assert (= (and start!347430 res!1500725) b!3691563))

(assert (= b!3691565 b!3691566))

(assert (= b!3691564 b!3691565))

(assert (= (and start!347430 ((_ is Cons!39096) rules!3598)) b!3691564))

(declare-fun m!4204239 () Bool)

(assert (=> b!3691563 m!4204239))

(declare-fun m!4204241 () Bool)

(assert (=> b!3691565 m!4204241))

(declare-fun m!4204243 () Bool)

(assert (=> b!3691565 m!4204243))

(check-sat b_and!275733 b_and!275731 (not b_next!98669) (not b!3691565) (not b_next!98671) (not b!3691563) (not b!3691564))
(check-sat b_and!275731 b_and!275733 (not b_next!98669) (not b_next!98671))

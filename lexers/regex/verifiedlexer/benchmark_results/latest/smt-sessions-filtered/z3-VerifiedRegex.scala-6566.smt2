; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347482 () Bool)

(assert start!347482)

(declare-fun b!3691824 () Bool)

(declare-fun b_free!97997 () Bool)

(declare-fun b_next!98701 () Bool)

(assert (=> b!3691824 (= b_free!97997 (not b_next!98701))))

(declare-fun tp!1121814 () Bool)

(declare-fun b_and!275763 () Bool)

(assert (=> b!3691824 (= tp!1121814 b_and!275763)))

(declare-fun b_free!97999 () Bool)

(declare-fun b_next!98703 () Bool)

(assert (=> b!3691824 (= b_free!97999 (not b_next!98703))))

(declare-fun tp!1121816 () Bool)

(declare-fun b_and!275765 () Bool)

(assert (=> b!3691824 (= tp!1121816 b_and!275765)))

(declare-fun b!3691823 () Bool)

(declare-fun res!1500833 () Bool)

(declare-fun e!2286080 () Bool)

(assert (=> b!3691823 (=> (not res!1500833) (not e!2286080))))

(declare-datatypes ((LexerInterface!5501 0))(
  ( (LexerInterfaceExt!5498 (__x!24501 Int)) (Lexer!5499) )
))
(declare-fun thiss!25322 () LexerInterface!5501)

(declare-datatypes ((List!39232 0))(
  ( (Nil!39108) (Cons!39108 (h!44528 (_ BitVec 16)) (t!301381 List!39232)) )
))
(declare-datatypes ((TokenValue!6142 0))(
  ( (FloatLiteralValue!12284 (text!43439 List!39232)) (TokenValueExt!6141 (__x!24502 Int)) (Broken!30710 (value!188921 List!39232)) (Object!6265) (End!6142) (Def!6142) (Underscore!6142) (Match!6142) (Else!6142) (Error!6142) (Case!6142) (If!6142) (Extends!6142) (Abstract!6142) (Class!6142) (Val!6142) (DelimiterValue!12284 (del!6202 List!39232)) (KeywordValue!6148 (value!188922 List!39232)) (CommentValue!12284 (value!188923 List!39232)) (WhitespaceValue!12284 (value!188924 List!39232)) (IndentationValue!6142 (value!188925 List!39232)) (String!44043) (Int32!6142) (Broken!30711 (value!188926 List!39232)) (Boolean!6143) (Unit!57133) (OperatorValue!6145 (op!6202 List!39232)) (IdentifierValue!12284 (value!188927 List!39232)) (IdentifierValue!12285 (value!188928 List!39232)) (WhitespaceValue!12285 (value!188929 List!39232)) (True!12284) (False!12284) (Broken!30712 (value!188930 List!39232)) (Broken!30713 (value!188931 List!39232)) (True!12285) (RightBrace!6142) (RightBracket!6142) (Colon!6142) (Null!6142) (Comma!6142) (LeftBracket!6142) (False!12285) (LeftBrace!6142) (ImaginaryLiteralValue!6142 (text!43440 List!39232)) (StringLiteralValue!18426 (value!188932 List!39232)) (EOFValue!6142 (value!188933 List!39232)) (IdentValue!6142 (value!188934 List!39232)) (DelimiterValue!12285 (value!188935 List!39232)) (DedentValue!6142 (value!188936 List!39232)) (NewLineValue!6142 (value!188937 List!39232)) (IntegerValue!18426 (value!188938 (_ BitVec 32)) (text!43441 List!39232)) (IntegerValue!18427 (value!188939 Int) (text!43442 List!39232)) (Times!6142) (Or!6142) (Equal!6142) (Minus!6142) (Broken!30714 (value!188940 List!39232)) (And!6142) (Div!6142) (LessEqual!6142) (Mod!6142) (Concat!16813) (Not!6142) (Plus!6142) (SpaceValue!6142 (value!188941 List!39232)) (IntegerValue!18428 (value!188942 Int) (text!43443 List!39232)) (StringLiteralValue!18427 (text!43444 List!39232)) (FloatLiteralValue!12285 (text!43445 List!39232)) (BytesLiteralValue!6142 (value!188943 List!39232)) (CommentValue!12285 (value!188944 List!39232)) (StringLiteralValue!18428 (value!188945 List!39232)) (ErrorTokenValue!6142 (msg!6203 List!39232)) )
))
(declare-datatypes ((C!21528 0))(
  ( (C!21529 (val!12812 Int)) )
))
(declare-datatypes ((Regex!10671 0))(
  ( (ElementMatch!10671 (c!638414 C!21528)) (Concat!16814 (regOne!21854 Regex!10671) (regTwo!21854 Regex!10671)) (EmptyExpr!10671) (Star!10671 (reg!11000 Regex!10671)) (EmptyLang!10671) (Union!10671 (regOne!21855 Regex!10671) (regTwo!21855 Regex!10671)) )
))
(declare-datatypes ((String!44044 0))(
  ( (String!44045 (value!188946 String)) )
))
(declare-datatypes ((List!39233 0))(
  ( (Nil!39109) (Cons!39109 (h!44529 C!21528) (t!301382 List!39233)) )
))
(declare-datatypes ((IArray!24023 0))(
  ( (IArray!24024 (innerList!12069 List!39233)) )
))
(declare-datatypes ((Conc!12009 0))(
  ( (Node!12009 (left!30499 Conc!12009) (right!30829 Conc!12009) (csize!24248 Int) (cheight!12220 Int)) (Leaf!18576 (xs!15211 IArray!24023) (csize!24249 Int)) (Empty!12009) )
))
(declare-datatypes ((BalanceConc!23632 0))(
  ( (BalanceConc!23633 (c!638415 Conc!12009)) )
))
(declare-datatypes ((TokenValueInjection!11712 0))(
  ( (TokenValueInjection!11713 (toValue!8236 Int) (toChars!8095 Int)) )
))
(declare-datatypes ((Rule!11624 0))(
  ( (Rule!11625 (regex!5912 Regex!10671) (tag!6734 String!44044) (isSeparator!5912 Bool) (transformation!5912 TokenValueInjection!11712)) )
))
(declare-datatypes ((List!39234 0))(
  ( (Nil!39110) (Cons!39110 (h!44530 Rule!11624) (t!301383 List!39234)) )
))
(declare-fun rules!3598 () List!39234)

(declare-fun rulesInvariant!4898 (LexerInterface!5501 List!39234) Bool)

(assert (=> b!3691823 (= res!1500833 (rulesInvariant!4898 thiss!25322 rules!3598))))

(declare-fun e!2286076 () Bool)

(assert (=> b!3691824 (= e!2286076 (and tp!1121814 tp!1121816))))

(declare-fun b!3691825 () Bool)

(declare-fun e!2286077 () Bool)

(declare-fun tp!1121813 () Bool)

(declare-fun inv!52569 (String!44044) Bool)

(declare-fun inv!52571 (TokenValueInjection!11712) Bool)

(assert (=> b!3691825 (= e!2286077 (and tp!1121813 (inv!52569 (tag!6734 (h!44530 rules!3598))) (inv!52571 (transformation!5912 (h!44530 rules!3598))) e!2286076))))

(declare-fun b!3691826 () Bool)

(assert (=> b!3691826 (= e!2286080 false)))

(declare-fun lt!1292586 () Bool)

(declare-fun rulesValidInductive!2122 (LexerInterface!5501 List!39234) Bool)

(assert (=> b!3691826 (= lt!1292586 (rulesValidInductive!2122 thiss!25322 rules!3598))))

(declare-fun b!3691827 () Bool)

(declare-fun e!2286078 () Bool)

(declare-fun tp!1121815 () Bool)

(assert (=> b!3691827 (= e!2286078 (and e!2286077 tp!1121815))))

(declare-fun res!1500834 () Bool)

(assert (=> start!347482 (=> (not res!1500834) (not e!2286080))))

(get-info :version)

(assert (=> start!347482 (= res!1500834 ((_ is Lexer!5499) thiss!25322))))

(assert (=> start!347482 e!2286080))

(assert (=> start!347482 true))

(assert (=> start!347482 e!2286078))

(declare-fun b!3691828 () Bool)

(declare-fun res!1500835 () Bool)

(assert (=> b!3691828 (=> (not res!1500835) (not e!2286080))))

(declare-fun isEmpty!23314 (List!39234) Bool)

(assert (=> b!3691828 (= res!1500835 (not (isEmpty!23314 rules!3598)))))

(assert (= (and start!347482 res!1500834) b!3691823))

(assert (= (and b!3691823 res!1500833) b!3691828))

(assert (= (and b!3691828 res!1500835) b!3691826))

(assert (= b!3691825 b!3691824))

(assert (= b!3691827 b!3691825))

(assert (= (and start!347482 ((_ is Cons!39110) rules!3598)) b!3691827))

(declare-fun m!4204375 () Bool)

(assert (=> b!3691823 m!4204375))

(declare-fun m!4204377 () Bool)

(assert (=> b!3691825 m!4204377))

(declare-fun m!4204379 () Bool)

(assert (=> b!3691825 m!4204379))

(declare-fun m!4204381 () Bool)

(assert (=> b!3691826 m!4204381))

(declare-fun m!4204383 () Bool)

(assert (=> b!3691828 m!4204383))

(check-sat (not b!3691825) (not b!3691827) (not b!3691823) (not b!3691828) b_and!275765 (not b!3691826) b_and!275763 (not b_next!98703) (not b_next!98701))
(check-sat b_and!275763 b_and!275765 (not b_next!98701) (not b_next!98703))

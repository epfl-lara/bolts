; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!347520 () Bool)

(assert start!347520)

(declare-fun b!3692083 () Bool)

(declare-fun b_free!98025 () Bool)

(declare-fun b_next!98729 () Bool)

(assert (=> b!3692083 (= b_free!98025 (not b_next!98729))))

(declare-fun tp!1121951 () Bool)

(declare-fun b_and!275791 () Bool)

(assert (=> b!3692083 (= tp!1121951 b_and!275791)))

(declare-fun b_free!98027 () Bool)

(declare-fun b_next!98731 () Bool)

(assert (=> b!3692083 (= b_free!98027 (not b_next!98731))))

(declare-fun tp!1121947 () Bool)

(declare-fun b_and!275793 () Bool)

(assert (=> b!3692083 (= tp!1121947 b_and!275793)))

(declare-fun b!3692077 () Bool)

(declare-fun res!1500955 () Bool)

(declare-fun e!2286247 () Bool)

(assert (=> b!3692077 (=> (not res!1500955) (not e!2286247))))

(declare-datatypes ((LexerInterface!5506 0))(
  ( (LexerInterfaceExt!5503 (__x!24511 Int)) (Lexer!5504) )
))
(declare-fun thiss!25322 () LexerInterface!5506)

(declare-datatypes ((List!39248 0))(
  ( (Nil!39124) (Cons!39124 (h!44544 (_ BitVec 16)) (t!301397 List!39248)) )
))
(declare-datatypes ((TokenValue!6147 0))(
  ( (FloatLiteralValue!12294 (text!43474 List!39248)) (TokenValueExt!6146 (__x!24512 Int)) (Broken!30735 (value!189064 List!39248)) (Object!6270) (End!6147) (Def!6147) (Underscore!6147) (Match!6147) (Else!6147) (Error!6147) (Case!6147) (If!6147) (Extends!6147) (Abstract!6147) (Class!6147) (Val!6147) (DelimiterValue!12294 (del!6207 List!39248)) (KeywordValue!6153 (value!189065 List!39248)) (CommentValue!12294 (value!189066 List!39248)) (WhitespaceValue!12294 (value!189067 List!39248)) (IndentationValue!6147 (value!189068 List!39248)) (String!44070) (Int32!6147) (Broken!30736 (value!189069 List!39248)) (Boolean!6148) (Unit!57140) (OperatorValue!6150 (op!6207 List!39248)) (IdentifierValue!12294 (value!189070 List!39248)) (IdentifierValue!12295 (value!189071 List!39248)) (WhitespaceValue!12295 (value!189072 List!39248)) (True!12294) (False!12294) (Broken!30737 (value!189073 List!39248)) (Broken!30738 (value!189074 List!39248)) (True!12295) (RightBrace!6147) (RightBracket!6147) (Colon!6147) (Null!6147) (Comma!6147) (LeftBracket!6147) (False!12295) (LeftBrace!6147) (ImaginaryLiteralValue!6147 (text!43475 List!39248)) (StringLiteralValue!18441 (value!189075 List!39248)) (EOFValue!6147 (value!189076 List!39248)) (IdentValue!6147 (value!189077 List!39248)) (DelimiterValue!12295 (value!189078 List!39248)) (DedentValue!6147 (value!189079 List!39248)) (NewLineValue!6147 (value!189080 List!39248)) (IntegerValue!18441 (value!189081 (_ BitVec 32)) (text!43476 List!39248)) (IntegerValue!18442 (value!189082 Int) (text!43477 List!39248)) (Times!6147) (Or!6147) (Equal!6147) (Minus!6147) (Broken!30739 (value!189083 List!39248)) (And!6147) (Div!6147) (LessEqual!6147) (Mod!6147) (Concat!16823) (Not!6147) (Plus!6147) (SpaceValue!6147 (value!189084 List!39248)) (IntegerValue!18443 (value!189085 Int) (text!43478 List!39248)) (StringLiteralValue!18442 (text!43479 List!39248)) (FloatLiteralValue!12295 (text!43480 List!39248)) (BytesLiteralValue!6147 (value!189086 List!39248)) (CommentValue!12295 (value!189087 List!39248)) (StringLiteralValue!18443 (value!189088 List!39248)) (ErrorTokenValue!6147 (msg!6208 List!39248)) )
))
(declare-datatypes ((C!21538 0))(
  ( (C!21539 (val!12817 Int)) )
))
(declare-datatypes ((Regex!10676 0))(
  ( (ElementMatch!10676 (c!638435 C!21538)) (Concat!16824 (regOne!21864 Regex!10676) (regTwo!21864 Regex!10676)) (EmptyExpr!10676) (Star!10676 (reg!11005 Regex!10676)) (EmptyLang!10676) (Union!10676 (regOne!21865 Regex!10676) (regTwo!21865 Regex!10676)) )
))
(declare-datatypes ((String!44071 0))(
  ( (String!44072 (value!189089 String)) )
))
(declare-datatypes ((List!39249 0))(
  ( (Nil!39125) (Cons!39125 (h!44545 C!21538) (t!301398 List!39249)) )
))
(declare-datatypes ((IArray!24033 0))(
  ( (IArray!24034 (innerList!12074 List!39249)) )
))
(declare-datatypes ((Conc!12014 0))(
  ( (Node!12014 (left!30511 Conc!12014) (right!30841 Conc!12014) (csize!24258 Int) (cheight!12225 Int)) (Leaf!18584 (xs!15216 IArray!24033) (csize!24259 Int)) (Empty!12014) )
))
(declare-datatypes ((BalanceConc!23642 0))(
  ( (BalanceConc!23643 (c!638436 Conc!12014)) )
))
(declare-datatypes ((TokenValueInjection!11722 0))(
  ( (TokenValueInjection!11723 (toValue!8241 Int) (toChars!8100 Int)) )
))
(declare-datatypes ((Rule!11634 0))(
  ( (Rule!11635 (regex!5917 Regex!10676) (tag!6739 String!44071) (isSeparator!5917 Bool) (transformation!5917 TokenValueInjection!11722)) )
))
(declare-datatypes ((List!39250 0))(
  ( (Nil!39126) (Cons!39126 (h!44546 Rule!11634) (t!301399 List!39250)) )
))
(declare-fun rules!3598 () List!39250)

(declare-fun rulesInvariant!4903 (LexerInterface!5506 List!39250) Bool)

(assert (=> b!3692077 (= res!1500955 (rulesInvariant!4903 thiss!25322 rules!3598))))

(declare-fun res!1500953 () Bool)

(assert (=> start!347520 (=> (not res!1500953) (not e!2286247))))

(assert (=> start!347520 (= res!1500953 (is-Lexer!5504 thiss!25322))))

(assert (=> start!347520 e!2286247))

(assert (=> start!347520 true))

(declare-fun e!2286243 () Bool)

(assert (=> start!347520 e!2286243))

(declare-fun e!2286245 () Bool)

(assert (=> start!347520 e!2286245))

(declare-fun b!3692078 () Bool)

(declare-fun res!1500952 () Bool)

(assert (=> b!3692078 (=> (not res!1500952) (not e!2286247))))

(declare-fun input!3172 () List!39249)

(declare-datatypes ((Token!11188 0))(
  ( (Token!11189 (value!189090 TokenValue!6147) (rule!8763 Rule!11634) (size!29879 Int) (originalCharacters!6625 List!39249)) )
))
(declare-datatypes ((tuple2!39028 0))(
  ( (tuple2!39029 (_1!22648 Token!11188) (_2!22648 List!39249)) )
))
(declare-datatypes ((Option!8429 0))(
  ( (None!8428) (Some!8428 (v!38382 tuple2!39028)) )
))
(declare-fun isDefined!6622 (Option!8429) Bool)

(declare-fun maxPrefix!3028 (LexerInterface!5506 List!39250 List!39249) Option!8429)

(assert (=> b!3692078 (= res!1500952 (isDefined!6622 (maxPrefix!3028 thiss!25322 rules!3598 input!3172)))))

(declare-fun b!3692079 () Bool)

(declare-fun tp_is_empty!18427 () Bool)

(declare-fun tp!1121950 () Bool)

(assert (=> b!3692079 (= e!2286245 (and tp_is_empty!18427 tp!1121950))))

(declare-fun b!3692080 () Bool)

(declare-fun res!1500954 () Bool)

(assert (=> b!3692080 (=> (not res!1500954) (not e!2286247))))

(declare-fun isEmpty!23321 (List!39250) Bool)

(assert (=> b!3692080 (= res!1500954 (not (isEmpty!23321 rules!3598)))))

(declare-fun b!3692081 () Bool)

(declare-fun e!2286246 () Bool)

(declare-fun tp!1121949 () Bool)

(assert (=> b!3692081 (= e!2286243 (and e!2286246 tp!1121949))))

(declare-fun tp!1121948 () Bool)

(declare-fun b!3692082 () Bool)

(declare-fun e!2286248 () Bool)

(declare-fun inv!52582 (String!44071) Bool)

(declare-fun inv!52585 (TokenValueInjection!11722) Bool)

(assert (=> b!3692082 (= e!2286246 (and tp!1121948 (inv!52582 (tag!6739 (h!44546 rules!3598))) (inv!52585 (transformation!5917 (h!44546 rules!3598))) e!2286248))))

(assert (=> b!3692083 (= e!2286248 (and tp!1121951 tp!1121947))))

(declare-fun b!3692084 () Bool)

(assert (=> b!3692084 (= e!2286247 false)))

(declare-fun lt!1292631 () Bool)

(declare-fun rulesValidInductive!2125 (LexerInterface!5506 List!39250) Bool)

(assert (=> b!3692084 (= lt!1292631 (rulesValidInductive!2125 thiss!25322 rules!3598))))

(assert (= (and start!347520 res!1500953) b!3692077))

(assert (= (and b!3692077 res!1500955) b!3692080))

(assert (= (and b!3692080 res!1500954) b!3692078))

(assert (= (and b!3692078 res!1500952) b!3692084))

(assert (= b!3692082 b!3692083))

(assert (= b!3692081 b!3692082))

(assert (= (and start!347520 (is-Cons!39126 rules!3598)) b!3692081))

(assert (= (and start!347520 (is-Cons!39125 input!3172)) b!3692079))

(declare-fun m!4204537 () Bool)

(assert (=> b!3692077 m!4204537))

(declare-fun m!4204539 () Bool)

(assert (=> b!3692082 m!4204539))

(declare-fun m!4204541 () Bool)

(assert (=> b!3692082 m!4204541))

(declare-fun m!4204543 () Bool)

(assert (=> b!3692078 m!4204543))

(assert (=> b!3692078 m!4204543))

(declare-fun m!4204545 () Bool)

(assert (=> b!3692078 m!4204545))

(declare-fun m!4204547 () Bool)

(assert (=> b!3692084 m!4204547))

(declare-fun m!4204549 () Bool)

(assert (=> b!3692080 m!4204549))

(push 1)

(assert (not b!3692081))

(assert b_and!275791)

(assert (not b!3692079))

(assert (not b!3692082))

(assert (not b!3692084))

(assert (not b_next!98729))

(assert (not b_next!98731))

(assert (not b!3692077))

(assert b_and!275793)

(assert tp_is_empty!18427)

(assert (not b!3692078))

(assert (not b!3692080))

(check-sat)

(pop 1)

(push 1)

(assert b_and!275791)

(assert b_and!275793)

(assert (not b_next!98729))

(assert (not b_next!98731))

(check-sat)

(pop 1)


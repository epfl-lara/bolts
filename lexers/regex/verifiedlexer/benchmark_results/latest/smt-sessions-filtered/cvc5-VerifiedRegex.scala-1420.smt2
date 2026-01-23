; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!74364 () Bool)

(assert start!74364)

(declare-fun b!837995 () Bool)

(declare-fun b_free!24741 () Bool)

(declare-fun b_next!24805 () Bool)

(assert (=> b!837995 (= b_free!24741 (not b_next!24805))))

(declare-fun tp!263048 () Bool)

(declare-fun b_and!72221 () Bool)

(assert (=> b!837995 (= tp!263048 b_and!72221)))

(declare-fun b_free!24743 () Bool)

(declare-fun b_next!24807 () Bool)

(assert (=> b!837995 (= b_free!24743 (not b_next!24807))))

(declare-fun tp!263054 () Bool)

(declare-fun b_and!72223 () Bool)

(assert (=> b!837995 (= tp!263054 b_and!72223)))

(declare-fun b!837993 () Bool)

(declare-fun b_free!24745 () Bool)

(declare-fun b_next!24809 () Bool)

(assert (=> b!837993 (= b_free!24745 (not b_next!24809))))

(declare-fun tp!263055 () Bool)

(declare-fun b_and!72225 () Bool)

(assert (=> b!837993 (= tp!263055 b_and!72225)))

(declare-fun b_free!24747 () Bool)

(declare-fun b_next!24811 () Bool)

(assert (=> b!837993 (= b_free!24747 (not b_next!24811))))

(declare-fun tp!263053 () Bool)

(declare-fun b_and!72227 () Bool)

(assert (=> b!837993 (= tp!263053 b_and!72227)))

(declare-fun e!550802 () Bool)

(declare-fun b!837986 () Bool)

(declare-fun tp!263047 () Bool)

(declare-datatypes ((List!8924 0))(
  ( (Nil!8908) (Cons!8908 (h!14309 (_ BitVec 16)) (t!93216 List!8924)) )
))
(declare-datatypes ((TokenValue!1731 0))(
  ( (FloatLiteralValue!3462 (text!12562 List!8924)) (TokenValueExt!1730 (__x!7193 Int)) (Broken!8655 (value!54127 List!8924)) (Object!1746) (End!1731) (Def!1731) (Underscore!1731) (Match!1731) (Else!1731) (Error!1731) (Case!1731) (If!1731) (Extends!1731) (Abstract!1731) (Class!1731) (Val!1731) (DelimiterValue!3462 (del!1791 List!8924)) (KeywordValue!1737 (value!54128 List!8924)) (CommentValue!3462 (value!54129 List!8924)) (WhitespaceValue!3462 (value!54130 List!8924)) (IndentationValue!1731 (value!54131 List!8924)) (String!10554) (Int32!1731) (Broken!8656 (value!54132 List!8924)) (Boolean!1732) (Unit!13393) (OperatorValue!1734 (op!1791 List!8924)) (IdentifierValue!3462 (value!54133 List!8924)) (IdentifierValue!3463 (value!54134 List!8924)) (WhitespaceValue!3463 (value!54135 List!8924)) (True!3462) (False!3462) (Broken!8657 (value!54136 List!8924)) (Broken!8658 (value!54137 List!8924)) (True!3463) (RightBrace!1731) (RightBracket!1731) (Colon!1731) (Null!1731) (Comma!1731) (LeftBracket!1731) (False!3463) (LeftBrace!1731) (ImaginaryLiteralValue!1731 (text!12563 List!8924)) (StringLiteralValue!5193 (value!54138 List!8924)) (EOFValue!1731 (value!54139 List!8924)) (IdentValue!1731 (value!54140 List!8924)) (DelimiterValue!3463 (value!54141 List!8924)) (DedentValue!1731 (value!54142 List!8924)) (NewLineValue!1731 (value!54143 List!8924)) (IntegerValue!5193 (value!54144 (_ BitVec 32)) (text!12564 List!8924)) (IntegerValue!5194 (value!54145 Int) (text!12565 List!8924)) (Times!1731) (Or!1731) (Equal!1731) (Minus!1731) (Broken!8659 (value!54146 List!8924)) (And!1731) (Div!1731) (LessEqual!1731) (Mod!1731) (Concat!3829) (Not!1731) (Plus!1731) (SpaceValue!1731 (value!54147 List!8924)) (IntegerValue!5195 (value!54148 Int) (text!12566 List!8924)) (StringLiteralValue!5194 (text!12567 List!8924)) (FloatLiteralValue!3463 (text!12568 List!8924)) (BytesLiteralValue!1731 (value!54149 List!8924)) (CommentValue!3463 (value!54150 List!8924)) (StringLiteralValue!5195 (value!54151 List!8924)) (ErrorTokenValue!1731 (msg!1792 List!8924)) )
))
(declare-datatypes ((C!4766 0))(
  ( (C!4767 (val!2631 Int)) )
))
(declare-datatypes ((Regex!2098 0))(
  ( (ElementMatch!2098 (c!136895 C!4766)) (Concat!3830 (regOne!4708 Regex!2098) (regTwo!4708 Regex!2098)) (EmptyExpr!2098) (Star!2098 (reg!2427 Regex!2098)) (EmptyLang!2098) (Union!2098 (regOne!4709 Regex!2098) (regTwo!4709 Regex!2098)) )
))
(declare-datatypes ((String!10555 0))(
  ( (String!10556 (value!54152 String)) )
))
(declare-datatypes ((List!8925 0))(
  ( (Nil!8909) (Cons!8909 (h!14310 C!4766) (t!93217 List!8925)) )
))
(declare-datatypes ((IArray!5921 0))(
  ( (IArray!5922 (innerList!3018 List!8925)) )
))
(declare-datatypes ((Conc!2958 0))(
  ( (Node!2958 (left!6628 Conc!2958) (right!6958 Conc!2958) (csize!6146 Int) (cheight!3169 Int)) (Leaf!4379 (xs!5647 IArray!5921) (csize!6147 Int)) (Empty!2958) )
))
(declare-datatypes ((BalanceConc!5930 0))(
  ( (BalanceConc!5931 (c!136896 Conc!2958)) )
))
(declare-datatypes ((TokenValueInjection!3162 0))(
  ( (TokenValueInjection!3163 (toValue!2682 Int) (toChars!2541 Int)) )
))
(declare-datatypes ((Rule!3130 0))(
  ( (Rule!3131 (regex!1665 Regex!2098) (tag!1927 String!10555) (isSeparator!1665 Bool) (transformation!1665 TokenValueInjection!3162)) )
))
(declare-datatypes ((Token!2996 0))(
  ( (Token!2997 (value!54153 TokenValue!1731) (rule!3088 Rule!3130) (size!7492 Int) (originalCharacters!2221 List!8925)) )
))
(declare-datatypes ((List!8926 0))(
  ( (Nil!8910) (Cons!8910 (h!14311 Token!2996) (t!93218 List!8926)) )
))
(declare-fun l!5107 () List!8926)

(declare-fun e!550808 () Bool)

(declare-fun inv!21 (TokenValue!1731) Bool)

(assert (=> b!837986 (= e!550808 (and (inv!21 (value!54153 (h!14311 l!5107))) e!550802 tp!263047))))

(declare-fun b!837987 () Bool)

(declare-fun res!383058 () Bool)

(declare-fun e!550801 () Bool)

(assert (=> b!837987 (=> (not res!383058) (not e!550801))))

(declare-datatypes ((List!8927 0))(
  ( (Nil!8911) (Cons!8911 (h!14312 Rule!3130) (t!93219 List!8927)) )
))
(declare-fun rules!2621 () List!8927)

(declare-fun isEmpty!5270 (List!8927) Bool)

(assert (=> b!837987 (= res!383058 (not (isEmpty!5270 rules!2621)))))

(declare-fun tp!263049 () Bool)

(declare-fun e!550799 () Bool)

(declare-fun e!550806 () Bool)

(declare-fun b!837988 () Bool)

(declare-fun inv!11385 (String!10555) Bool)

(declare-fun inv!11388 (TokenValueInjection!3162) Bool)

(assert (=> b!837988 (= e!550806 (and tp!263049 (inv!11385 (tag!1927 (h!14312 rules!2621))) (inv!11388 (transformation!1665 (h!14312 rules!2621))) e!550799))))

(declare-fun b!837989 () Bool)

(declare-fun res!383060 () Bool)

(assert (=> b!837989 (=> (not res!383060) (not e!550801))))

(declare-datatypes ((LexerInterface!1467 0))(
  ( (LexerInterfaceExt!1464 (__x!7194 Int)) (Lexer!1465) )
))
(declare-fun thiss!20117 () LexerInterface!1467)

(declare-fun rulesInvariant!1343 (LexerInterface!1467 List!8927) Bool)

(assert (=> b!837989 (= res!383060 (rulesInvariant!1343 thiss!20117 rules!2621))))

(declare-fun b!837990 () Bool)

(declare-fun e!550804 () Bool)

(declare-fun tp!263051 () Bool)

(declare-fun inv!11389 (Token!2996) Bool)

(assert (=> b!837990 (= e!550804 (and (inv!11389 (h!14311 l!5107)) e!550808 tp!263051))))

(declare-fun b!837991 () Bool)

(assert (=> b!837991 (= e!550801 false)))

(declare-fun lt!318004 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!355 (LexerInterface!1467 List!8927 List!8926) Bool)

(assert (=> b!837991 (= lt!318004 (rulesProduceEachTokenIndividuallyList!355 thiss!20117 rules!2621 l!5107))))

(declare-fun res!383059 () Bool)

(assert (=> start!74364 (=> (not res!383059) (not e!550801))))

(assert (=> start!74364 (= res!383059 (is-Lexer!1465 thiss!20117))))

(assert (=> start!74364 e!550801))

(assert (=> start!74364 true))

(declare-fun e!550803 () Bool)

(assert (=> start!74364 e!550803))

(assert (=> start!74364 e!550804))

(declare-fun e!550798 () Bool)

(declare-fun b!837992 () Bool)

(declare-fun tp!263052 () Bool)

(assert (=> b!837992 (= e!550802 (and tp!263052 (inv!11385 (tag!1927 (rule!3088 (h!14311 l!5107)))) (inv!11388 (transformation!1665 (rule!3088 (h!14311 l!5107)))) e!550798))))

(assert (=> b!837993 (= e!550799 (and tp!263055 tp!263053))))

(declare-fun b!837994 () Bool)

(declare-fun tp!263050 () Bool)

(assert (=> b!837994 (= e!550803 (and e!550806 tp!263050))))

(assert (=> b!837995 (= e!550798 (and tp!263048 tp!263054))))

(assert (= (and start!74364 res!383059) b!837987))

(assert (= (and b!837987 res!383058) b!837989))

(assert (= (and b!837989 res!383060) b!837991))

(assert (= b!837988 b!837993))

(assert (= b!837994 b!837988))

(assert (= (and start!74364 (is-Cons!8911 rules!2621)) b!837994))

(assert (= b!837992 b!837995))

(assert (= b!837986 b!837992))

(assert (= b!837990 b!837986))

(assert (= (and start!74364 (is-Cons!8910 l!5107)) b!837990))

(declare-fun m!1071141 () Bool)

(assert (=> b!837986 m!1071141))

(declare-fun m!1071143 () Bool)

(assert (=> b!837990 m!1071143))

(declare-fun m!1071145 () Bool)

(assert (=> b!837987 m!1071145))

(declare-fun m!1071147 () Bool)

(assert (=> b!837991 m!1071147))

(declare-fun m!1071149 () Bool)

(assert (=> b!837988 m!1071149))

(declare-fun m!1071151 () Bool)

(assert (=> b!837988 m!1071151))

(declare-fun m!1071153 () Bool)

(assert (=> b!837989 m!1071153))

(declare-fun m!1071155 () Bool)

(assert (=> b!837992 m!1071155))

(declare-fun m!1071157 () Bool)

(assert (=> b!837992 m!1071157))

(push 1)

(assert (not b!837987))

(assert (not b_next!24809))

(assert b_and!72223)

(assert (not b_next!24807))

(assert (not b_next!24811))

(assert (not b!837991))

(assert (not b!837989))

(assert b_and!72227)

(assert b_and!72225)

(assert (not b!837992))

(assert (not b_next!24805))

(assert (not b!837994))

(assert (not b!837986))

(assert (not b!837990))

(assert (not b!837988))

(assert b_and!72221)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!24805))

(assert (not b_next!24809))

(assert b_and!72223)

(assert (not b_next!24807))

(assert (not b_next!24811))

(assert b_and!72227)

(assert b_and!72225)

(assert b_and!72221)

(check-sat)

(pop 1)


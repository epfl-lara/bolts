; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!348150 () Bool)

(assert start!348150)

(declare-fun b!3696907 () Bool)

(declare-fun b_free!98377 () Bool)

(declare-fun b_next!99081 () Bool)

(assert (=> b!3696907 (= b_free!98377 (not b_next!99081))))

(declare-fun tp!1123688 () Bool)

(declare-fun b_and!276331 () Bool)

(assert (=> b!3696907 (= tp!1123688 b_and!276331)))

(declare-fun b_free!98379 () Bool)

(declare-fun b_next!99083 () Bool)

(assert (=> b!3696907 (= b_free!98379 (not b_next!99083))))

(declare-fun tp!1123686 () Bool)

(declare-fun b_and!276333 () Bool)

(assert (=> b!3696907 (= tp!1123686 b_and!276333)))

(declare-fun b!3696901 () Bool)

(declare-fun b_free!98381 () Bool)

(declare-fun b_next!99085 () Bool)

(assert (=> b!3696901 (= b_free!98381 (not b_next!99085))))

(declare-fun tp!1123692 () Bool)

(declare-fun b_and!276335 () Bool)

(assert (=> b!3696901 (= tp!1123692 b_and!276335)))

(declare-fun b_free!98383 () Bool)

(declare-fun b_next!99087 () Bool)

(assert (=> b!3696901 (= b_free!98383 (not b_next!99087))))

(declare-fun tp!1123693 () Bool)

(declare-fun b_and!276337 () Bool)

(assert (=> b!3696901 (= tp!1123693 b_and!276337)))

(declare-fun b!3696899 () Bool)

(declare-fun res!1503407 () Bool)

(declare-fun e!2289477 () Bool)

(assert (=> b!3696899 (=> (not res!1503407) (not e!2289477))))

(declare-datatypes ((List!39370 0))(
  ( (Nil!39246) (Cons!39246 (h!44666 (_ BitVec 16)) (t!301729 List!39370)) )
))
(declare-datatypes ((TokenValue!6184 0))(
  ( (FloatLiteralValue!12368 (text!43733 List!39370)) (TokenValueExt!6183 (__x!24585 Int)) (Broken!30920 (value!190117 List!39370)) (Object!6307) (End!6184) (Def!6184) (Underscore!6184) (Match!6184) (Else!6184) (Error!6184) (Case!6184) (If!6184) (Extends!6184) (Abstract!6184) (Class!6184) (Val!6184) (DelimiterValue!12368 (del!6244 List!39370)) (KeywordValue!6190 (value!190118 List!39370)) (CommentValue!12368 (value!190119 List!39370)) (WhitespaceValue!12368 (value!190120 List!39370)) (IndentationValue!6184 (value!190121 List!39370)) (String!44253) (Int32!6184) (Broken!30921 (value!190122 List!39370)) (Boolean!6185) (Unit!57227) (OperatorValue!6187 (op!6244 List!39370)) (IdentifierValue!12368 (value!190123 List!39370)) (IdentifierValue!12369 (value!190124 List!39370)) (WhitespaceValue!12369 (value!190125 List!39370)) (True!12368) (False!12368) (Broken!30922 (value!190126 List!39370)) (Broken!30923 (value!190127 List!39370)) (True!12369) (RightBrace!6184) (RightBracket!6184) (Colon!6184) (Null!6184) (Comma!6184) (LeftBracket!6184) (False!12369) (LeftBrace!6184) (ImaginaryLiteralValue!6184 (text!43734 List!39370)) (StringLiteralValue!18552 (value!190128 List!39370)) (EOFValue!6184 (value!190129 List!39370)) (IdentValue!6184 (value!190130 List!39370)) (DelimiterValue!12369 (value!190131 List!39370)) (DedentValue!6184 (value!190132 List!39370)) (NewLineValue!6184 (value!190133 List!39370)) (IntegerValue!18552 (value!190134 (_ BitVec 32)) (text!43735 List!39370)) (IntegerValue!18553 (value!190135 Int) (text!43736 List!39370)) (Times!6184) (Or!6184) (Equal!6184) (Minus!6184) (Broken!30924 (value!190136 List!39370)) (And!6184) (Div!6184) (LessEqual!6184) (Mod!6184) (Concat!16897) (Not!6184) (Plus!6184) (SpaceValue!6184 (value!190137 List!39370)) (IntegerValue!18554 (value!190138 Int) (text!43737 List!39370)) (StringLiteralValue!18553 (text!43738 List!39370)) (FloatLiteralValue!12369 (text!43739 List!39370)) (BytesLiteralValue!6184 (value!190139 List!39370)) (CommentValue!12369 (value!190140 List!39370)) (StringLiteralValue!18554 (value!190141 List!39370)) (ErrorTokenValue!6184 (msg!6245 List!39370)) )
))
(declare-datatypes ((C!21612 0))(
  ( (C!21613 (val!12854 Int)) )
))
(declare-datatypes ((List!39371 0))(
  ( (Nil!39247) (Cons!39247 (h!44667 C!21612) (t!301730 List!39371)) )
))
(declare-datatypes ((IArray!24107 0))(
  ( (IArray!24108 (innerList!12111 List!39371)) )
))
(declare-datatypes ((Conc!12051 0))(
  ( (Node!12051 (left!30574 Conc!12051) (right!30904 Conc!12051) (csize!24332 Int) (cheight!12262 Int)) (Leaf!18639 (xs!15253 IArray!24107) (csize!24333 Int)) (Empty!12051) )
))
(declare-datatypes ((BalanceConc!23716 0))(
  ( (BalanceConc!23717 (c!638986 Conc!12051)) )
))
(declare-datatypes ((Regex!10713 0))(
  ( (ElementMatch!10713 (c!638987 C!21612)) (Concat!16898 (regOne!21938 Regex!10713) (regTwo!21938 Regex!10713)) (EmptyExpr!10713) (Star!10713 (reg!11042 Regex!10713)) (EmptyLang!10713) (Union!10713 (regOne!21939 Regex!10713) (regTwo!21939 Regex!10713)) )
))
(declare-datatypes ((String!44254 0))(
  ( (String!44255 (value!190142 String)) )
))
(declare-datatypes ((TokenValueInjection!11796 0))(
  ( (TokenValueInjection!11797 (toValue!8286 Int) (toChars!8145 Int)) )
))
(declare-datatypes ((Rule!11708 0))(
  ( (Rule!11709 (regex!5954 Regex!10713) (tag!6784 String!44254) (isSeparator!5954 Bool) (transformation!5954 TokenValueInjection!11796)) )
))
(declare-datatypes ((Token!11262 0))(
  ( (Token!11263 (value!190143 TokenValue!6184) (rule!8810 Rule!11708) (size!29938 Int) (originalCharacters!6662 List!39371)) )
))
(declare-datatypes ((tuple2!39120 0))(
  ( (tuple2!39121 (_1!22694 Token!11262) (_2!22694 List!39371)) )
))
(declare-datatypes ((Option!8487 0))(
  ( (None!8486) (Some!8486 (v!38444 tuple2!39120)) )
))
(declare-fun lt!1293967 () Option!8487)

(declare-fun token!544 () Token!11262)

(declare-fun get!13051 (Option!8487) tuple2!39120)

(assert (=> b!3696899 (= res!1503407 (= (_1!22694 (get!13051 lt!1293967)) token!544))))

(declare-fun b!3696900 () Bool)

(declare-fun res!1503408 () Bool)

(declare-fun e!2289475 () Bool)

(assert (=> b!3696900 (=> (not res!1503408) (not e!2289475))))

(declare-datatypes ((List!39372 0))(
  ( (Nil!39248) (Cons!39248 (h!44668 Rule!11708) (t!301731 List!39372)) )
))
(declare-fun rules!3598 () List!39372)

(declare-fun isEmpty!23386 (List!39372) Bool)

(assert (=> b!3696900 (= res!1503408 (not (isEmpty!23386 rules!3598)))))

(declare-fun e!2289478 () Bool)

(assert (=> b!3696901 (= e!2289478 (and tp!1123692 tp!1123693))))

(declare-fun b!3696902 () Bool)

(declare-fun res!1503404 () Bool)

(assert (=> b!3696902 (=> (not res!1503404) (not e!2289475))))

(declare-datatypes ((LexerInterface!5543 0))(
  ( (LexerInterfaceExt!5540 (__x!24586 Int)) (Lexer!5541) )
))
(declare-fun thiss!25322 () LexerInterface!5543)

(declare-fun rulesInvariant!4940 (LexerInterface!5543 List!39372) Bool)

(assert (=> b!3696902 (= res!1503404 (rulesInvariant!4940 thiss!25322 rules!3598))))

(declare-fun e!2289471 () Bool)

(declare-fun tp!1123687 () Bool)

(declare-fun b!3696903 () Bool)

(declare-fun inv!52740 (String!44254) Bool)

(declare-fun inv!52743 (TokenValueInjection!11796) Bool)

(assert (=> b!3696903 (= e!2289471 (and tp!1123687 (inv!52740 (tag!6784 (rule!8810 token!544))) (inv!52743 (transformation!5954 (rule!8810 token!544))) e!2289478))))

(declare-fun b!3696904 () Bool)

(declare-fun e!2289479 () Bool)

(declare-fun e!2289481 () Bool)

(declare-fun tp!1123691 () Bool)

(assert (=> b!3696904 (= e!2289481 (and tp!1123691 (inv!52740 (tag!6784 (h!44668 rules!3598))) (inv!52743 (transformation!5954 (h!44668 rules!3598))) e!2289479))))

(declare-fun b!3696905 () Bool)

(declare-fun e!2289472 () Bool)

(assert (=> b!3696905 (= e!2289472 false)))

(declare-fun lt!1293968 () Bool)

(declare-datatypes ((Option!8488 0))(
  ( (None!8487) (Some!8487 (v!38445 Rule!11708)) )
))
(declare-fun lt!1293966 () Option!8488)

(declare-fun matchR!5250 (Regex!10713 List!39371) Bool)

(declare-fun get!13052 (Option!8488) Rule!11708)

(declare-fun list!14663 (BalanceConc!23716) List!39371)

(declare-fun charsOf!3947 (Token!11262) BalanceConc!23716)

(assert (=> b!3696905 (= lt!1293968 (matchR!5250 (regex!5954 (get!13052 lt!1293966)) (list!14663 (charsOf!3947 token!544))))))

(declare-fun b!3696906 () Bool)

(assert (=> b!3696906 (= e!2289475 e!2289477)))

(declare-fun res!1503409 () Bool)

(assert (=> b!3696906 (=> (not res!1503409) (not e!2289477))))

(declare-fun isDefined!6676 (Option!8487) Bool)

(assert (=> b!3696906 (= res!1503409 (isDefined!6676 lt!1293967))))

(declare-fun input!3172 () List!39371)

(declare-fun maxPrefix!3065 (LexerInterface!5543 List!39372 List!39371) Option!8487)

(assert (=> b!3696906 (= lt!1293967 (maxPrefix!3065 thiss!25322 rules!3598 input!3172))))

(assert (=> b!3696907 (= e!2289479 (and tp!1123688 tp!1123686))))

(declare-fun e!2289476 () Bool)

(declare-fun tp!1123689 () Bool)

(declare-fun b!3696908 () Bool)

(declare-fun inv!21 (TokenValue!6184) Bool)

(assert (=> b!3696908 (= e!2289476 (and (inv!21 (value!190143 token!544)) e!2289471 tp!1123689))))

(declare-fun b!3696909 () Bool)

(declare-fun e!2289474 () Bool)

(declare-fun tp_is_empty!18501 () Bool)

(declare-fun tp!1123690 () Bool)

(assert (=> b!3696909 (= e!2289474 (and tp_is_empty!18501 tp!1123690))))

(declare-fun res!1503406 () Bool)

(assert (=> start!348150 (=> (not res!1503406) (not e!2289475))))

(get-info :version)

(assert (=> start!348150 (= res!1503406 ((_ is Lexer!5541) thiss!25322))))

(assert (=> start!348150 e!2289475))

(assert (=> start!348150 true))

(declare-fun e!2289473 () Bool)

(assert (=> start!348150 e!2289473))

(declare-fun inv!52744 (Token!11262) Bool)

(assert (=> start!348150 (and (inv!52744 token!544) e!2289476)))

(assert (=> start!348150 e!2289474))

(declare-fun b!3696910 () Bool)

(declare-fun tp!1123694 () Bool)

(assert (=> b!3696910 (= e!2289473 (and e!2289481 tp!1123694))))

(declare-fun b!3696911 () Bool)

(assert (=> b!3696911 (= e!2289477 e!2289472)))

(declare-fun res!1503405 () Bool)

(assert (=> b!3696911 (=> (not res!1503405) (not e!2289472))))

(declare-fun isDefined!6677 (Option!8488) Bool)

(assert (=> b!3696911 (= res!1503405 (isDefined!6677 lt!1293966))))

(declare-fun getRuleFromTag!1510 (LexerInterface!5543 List!39372 String!44254) Option!8488)

(assert (=> b!3696911 (= lt!1293966 (getRuleFromTag!1510 thiss!25322 rules!3598 (tag!6784 (rule!8810 token!544))))))

(declare-fun b!3696912 () Bool)

(declare-fun res!1503403 () Bool)

(assert (=> b!3696912 (=> (not res!1503403) (not e!2289477))))

(assert (=> b!3696912 (= res!1503403 (not ((_ is Cons!39248) rules!3598)))))

(assert (= (and start!348150 res!1503406) b!3696902))

(assert (= (and b!3696902 res!1503404) b!3696900))

(assert (= (and b!3696900 res!1503408) b!3696906))

(assert (= (and b!3696906 res!1503409) b!3696899))

(assert (= (and b!3696899 res!1503407) b!3696912))

(assert (= (and b!3696912 res!1503403) b!3696911))

(assert (= (and b!3696911 res!1503405) b!3696905))

(assert (= b!3696904 b!3696907))

(assert (= b!3696910 b!3696904))

(assert (= (and start!348150 ((_ is Cons!39248) rules!3598)) b!3696910))

(assert (= b!3696903 b!3696901))

(assert (= b!3696908 b!3696903))

(assert (= start!348150 b!3696908))

(assert (= (and start!348150 ((_ is Cons!39247) input!3172)) b!3696909))

(declare-fun m!4208463 () Bool)

(assert (=> b!3696899 m!4208463))

(declare-fun m!4208465 () Bool)

(assert (=> b!3696904 m!4208465))

(declare-fun m!4208467 () Bool)

(assert (=> b!3696904 m!4208467))

(declare-fun m!4208469 () Bool)

(assert (=> start!348150 m!4208469))

(declare-fun m!4208471 () Bool)

(assert (=> b!3696900 m!4208471))

(declare-fun m!4208473 () Bool)

(assert (=> b!3696911 m!4208473))

(declare-fun m!4208475 () Bool)

(assert (=> b!3696911 m!4208475))

(declare-fun m!4208477 () Bool)

(assert (=> b!3696906 m!4208477))

(declare-fun m!4208479 () Bool)

(assert (=> b!3696906 m!4208479))

(declare-fun m!4208481 () Bool)

(assert (=> b!3696902 m!4208481))

(declare-fun m!4208483 () Bool)

(assert (=> b!3696908 m!4208483))

(declare-fun m!4208485 () Bool)

(assert (=> b!3696903 m!4208485))

(declare-fun m!4208487 () Bool)

(assert (=> b!3696903 m!4208487))

(declare-fun m!4208489 () Bool)

(assert (=> b!3696905 m!4208489))

(declare-fun m!4208491 () Bool)

(assert (=> b!3696905 m!4208491))

(assert (=> b!3696905 m!4208491))

(declare-fun m!4208493 () Bool)

(assert (=> b!3696905 m!4208493))

(assert (=> b!3696905 m!4208493))

(declare-fun m!4208495 () Bool)

(assert (=> b!3696905 m!4208495))

(check-sat (not start!348150) (not b!3696903) (not b!3696908) (not b!3696902) (not b!3696910) (not b!3696900) (not b!3696906) (not b_next!99087) b_and!276337 b_and!276335 (not b!3696905) b_and!276331 tp_is_empty!18501 (not b!3696909) (not b!3696904) (not b_next!99083) (not b!3696911) (not b_next!99085) (not b_next!99081) (not b!3696899) b_and!276333)
(check-sat b_and!276335 b_and!276331 (not b_next!99083) (not b_next!99087) b_and!276337 (not b_next!99085) (not b_next!99081) b_and!276333)

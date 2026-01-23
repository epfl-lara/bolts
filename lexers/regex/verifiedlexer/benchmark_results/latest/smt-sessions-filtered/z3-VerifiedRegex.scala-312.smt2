; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!9750 () Bool)

(assert start!9750)

(declare-fun b!101012 () Bool)

(declare-fun b_free!3017 () Bool)

(declare-fun b_next!3017 () Bool)

(assert (=> b!101012 (= b_free!3017 (not b_next!3017))))

(declare-fun tp!56976 () Bool)

(declare-fun b_and!4535 () Bool)

(assert (=> b!101012 (= tp!56976 b_and!4535)))

(declare-fun b_free!3019 () Bool)

(declare-fun b_next!3019 () Bool)

(assert (=> b!101012 (= b_free!3019 (not b_next!3019))))

(declare-fun tp!56977 () Bool)

(declare-fun b_and!4537 () Bool)

(assert (=> b!101012 (= tp!56977 b_and!4537)))

(declare-fun b!101010 () Bool)

(declare-fun e!56017 () Bool)

(assert (=> b!101010 (= e!56017 false)))

(declare-fun lt!28140 () Bool)

(declare-datatypes ((LexerInterface!247 0))(
  ( (LexerInterfaceExt!244 (__x!1785 Int)) (Lexer!245) )
))
(declare-fun thiss!11428 () LexerInterface!247)

(declare-datatypes ((List!1633 0))(
  ( (Nil!1627) (Cons!1627 (h!7024 (_ BitVec 16)) (t!21278 List!1633)) )
))
(declare-datatypes ((TokenValue!345 0))(
  ( (FloatLiteralValue!690 (text!2860 List!1633)) (TokenValueExt!344 (__x!1786 Int)) (Broken!1725 (value!12984 List!1633)) (Object!350) (End!345) (Def!345) (Underscore!345) (Match!345) (Else!345) (Error!345) (Case!345) (If!345) (Extends!345) (Abstract!345) (Class!345) (Val!345) (DelimiterValue!690 (del!405 List!1633)) (KeywordValue!351 (value!12985 List!1633)) (CommentValue!690 (value!12986 List!1633)) (WhitespaceValue!690 (value!12987 List!1633)) (IndentationValue!345 (value!12988 List!1633)) (String!2116) (Int32!345) (Broken!1726 (value!12989 List!1633)) (Boolean!346) (Unit!1089) (OperatorValue!348 (op!405 List!1633)) (IdentifierValue!690 (value!12990 List!1633)) (IdentifierValue!691 (value!12991 List!1633)) (WhitespaceValue!691 (value!12992 List!1633)) (True!690) (False!690) (Broken!1727 (value!12993 List!1633)) (Broken!1728 (value!12994 List!1633)) (True!691) (RightBrace!345) (RightBracket!345) (Colon!345) (Null!345) (Comma!345) (LeftBracket!345) (False!691) (LeftBrace!345) (ImaginaryLiteralValue!345 (text!2861 List!1633)) (StringLiteralValue!1035 (value!12995 List!1633)) (EOFValue!345 (value!12996 List!1633)) (IdentValue!345 (value!12997 List!1633)) (DelimiterValue!691 (value!12998 List!1633)) (DedentValue!345 (value!12999 List!1633)) (NewLineValue!345 (value!13000 List!1633)) (IntegerValue!1035 (value!13001 (_ BitVec 32)) (text!2862 List!1633)) (IntegerValue!1036 (value!13002 Int) (text!2863 List!1633)) (Times!345) (Or!345) (Equal!345) (Minus!345) (Broken!1729 (value!13003 List!1633)) (And!345) (Div!345) (LessEqual!345) (Mod!345) (Concat!768) (Not!345) (Plus!345) (SpaceValue!345 (value!13004 List!1633)) (IntegerValue!1037 (value!13005 Int) (text!2864 List!1633)) (StringLiteralValue!1036 (text!2865 List!1633)) (FloatLiteralValue!691 (text!2866 List!1633)) (BytesLiteralValue!345 (value!13006 List!1633)) (CommentValue!691 (value!13007 List!1633)) (StringLiteralValue!1037 (value!13008 List!1633)) (ErrorTokenValue!345 (msg!406 List!1633)) )
))
(declare-datatypes ((C!1768 0))(
  ( (C!1769 (val!491 Int)) )
))
(declare-datatypes ((List!1634 0))(
  ( (Nil!1628) (Cons!1628 (h!7025 C!1768) (t!21279 List!1634)) )
))
(declare-datatypes ((IArray!1019 0))(
  ( (IArray!1020 (innerList!567 List!1634)) )
))
(declare-datatypes ((Conc!509 0))(
  ( (Node!509 (left!1243 Conc!509) (right!1573 Conc!509) (csize!1248 Int) (cheight!720 Int)) (Leaf!822 (xs!3096 IArray!1019) (csize!1249 Int)) (Empty!509) )
))
(declare-datatypes ((BalanceConc!1022 0))(
  ( (BalanceConc!1023 (c!24631 Conc!509)) )
))
(declare-datatypes ((Regex!423 0))(
  ( (ElementMatch!423 (c!24632 C!1768)) (Concat!769 (regOne!1358 Regex!423) (regTwo!1358 Regex!423)) (EmptyExpr!423) (Star!423 (reg!752 Regex!423)) (EmptyLang!423) (Union!423 (regOne!1359 Regex!423) (regTwo!1359 Regex!423)) )
))
(declare-datatypes ((String!2117 0))(
  ( (String!2118 (value!13009 String)) )
))
(declare-datatypes ((TokenValueInjection!514 0))(
  ( (TokenValueInjection!515 (toValue!922 Int) (toChars!781 Int)) )
))
(declare-datatypes ((Rule!510 0))(
  ( (Rule!511 (regex!355 Regex!423) (tag!533 String!2117) (isSeparator!355 Bool) (transformation!355 TokenValueInjection!514)) )
))
(declare-datatypes ((List!1635 0))(
  ( (Nil!1629) (Cons!1629 (h!7026 Rule!510) (t!21280 List!1635)) )
))
(declare-fun rules!1152 () List!1635)

(declare-fun rulesInvariant!241 (LexerInterface!247 List!1635) Bool)

(assert (=> b!101010 (= lt!28140 (rulesInvariant!241 thiss!11428 rules!1152))))

(declare-fun b!101011 () Bool)

(declare-fun res!48985 () Bool)

(assert (=> b!101011 (=> (not res!48985) (not e!56017))))

(declare-fun isEmpty!728 (List!1635) Bool)

(assert (=> b!101011 (= res!48985 (not (isEmpty!728 rules!1152)))))

(declare-fun e!56019 () Bool)

(assert (=> b!101012 (= e!56019 (and tp!56976 tp!56977))))

(declare-fun b!101013 () Bool)

(declare-fun e!56020 () Bool)

(declare-fun e!56018 () Bool)

(declare-fun tp!56978 () Bool)

(assert (=> b!101013 (= e!56020 (and e!56018 tp!56978))))

(declare-fun tp!56975 () Bool)

(declare-fun b!101014 () Bool)

(declare-fun inv!1967 (String!2117) Bool)

(declare-fun inv!1969 (TokenValueInjection!514) Bool)

(assert (=> b!101014 (= e!56018 (and tp!56975 (inv!1967 (tag!533 (h!7026 rules!1152))) (inv!1969 (transformation!355 (h!7026 rules!1152))) e!56019))))

(declare-fun res!48984 () Bool)

(assert (=> start!9750 (=> (not res!48984) (not e!56017))))

(get-info :version)

(assert (=> start!9750 (= res!48984 ((_ is Lexer!245) thiss!11428))))

(assert (=> start!9750 e!56017))

(assert (=> start!9750 true))

(assert (=> start!9750 e!56020))

(assert (= (and start!9750 res!48984) b!101011))

(assert (= (and b!101011 res!48985) b!101010))

(assert (= b!101014 b!101012))

(assert (= b!101013 b!101014))

(assert (= (and start!9750 ((_ is Cons!1629) rules!1152)) b!101013))

(declare-fun m!87446 () Bool)

(assert (=> b!101010 m!87446))

(declare-fun m!87448 () Bool)

(assert (=> b!101011 m!87448))

(declare-fun m!87450 () Bool)

(assert (=> b!101014 m!87450))

(declare-fun m!87452 () Bool)

(assert (=> b!101014 m!87452))

(check-sat (not b!101014) b_and!4535 (not b!101013) (not b_next!3019) b_and!4537 (not b!101010) (not b_next!3017) (not b!101011))
(check-sat b_and!4537 b_and!4535 (not b_next!3019) (not b_next!3017))

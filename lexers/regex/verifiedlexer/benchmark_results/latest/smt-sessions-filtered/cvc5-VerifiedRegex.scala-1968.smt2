; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!100436 () Bool)

(assert start!100436)

(declare-fun b!1153638 () Bool)

(declare-fun res!518955 () Bool)

(declare-fun e!737573 () Bool)

(assert (=> b!1153638 (=> (not res!518955) (not e!737573))))

(declare-fun to!267 () Int)

(declare-datatypes ((List!11137 0))(
  ( (Nil!11113) (Cons!11113 (h!16514 (_ BitVec 16)) (t!108671 List!11137)) )
))
(declare-datatypes ((TokenValue!1982 0))(
  ( (FloatLiteralValue!3964 (text!14319 List!11137)) (TokenValueExt!1981 (__x!7675 Int)) (Broken!9910 (value!62578 List!11137)) (Object!2005) (End!1982) (Def!1982) (Underscore!1982) (Match!1982) (Else!1982) (Error!1982) (Case!1982) (If!1982) (Extends!1982) (Abstract!1982) (Class!1982) (Val!1982) (DelimiterValue!3964 (del!2042 List!11137)) (KeywordValue!1988 (value!62579 List!11137)) (CommentValue!3964 (value!62580 List!11137)) (WhitespaceValue!3964 (value!62581 List!11137)) (IndentationValue!1982 (value!62582 List!11137)) (String!13499) (Int32!1982) (Broken!9911 (value!62583 List!11137)) (Boolean!1983) (Unit!17171) (OperatorValue!1985 (op!2042 List!11137)) (IdentifierValue!3964 (value!62584 List!11137)) (IdentifierValue!3965 (value!62585 List!11137)) (WhitespaceValue!3965 (value!62586 List!11137)) (True!3964) (False!3964) (Broken!9912 (value!62587 List!11137)) (Broken!9913 (value!62588 List!11137)) (True!3965) (RightBrace!1982) (RightBracket!1982) (Colon!1982) (Null!1982) (Comma!1982) (LeftBracket!1982) (False!3965) (LeftBrace!1982) (ImaginaryLiteralValue!1982 (text!14320 List!11137)) (StringLiteralValue!5946 (value!62589 List!11137)) (EOFValue!1982 (value!62590 List!11137)) (IdentValue!1982 (value!62591 List!11137)) (DelimiterValue!3965 (value!62592 List!11137)) (DedentValue!1982 (value!62593 List!11137)) (NewLineValue!1982 (value!62594 List!11137)) (IntegerValue!5946 (value!62595 (_ BitVec 32)) (text!14321 List!11137)) (IntegerValue!5947 (value!62596 Int) (text!14322 List!11137)) (Times!1982) (Or!1982) (Equal!1982) (Minus!1982) (Broken!9914 (value!62597 List!11137)) (And!1982) (Div!1982) (LessEqual!1982) (Mod!1982) (Concat!5168) (Not!1982) (Plus!1982) (SpaceValue!1982 (value!62598 List!11137)) (IntegerValue!5948 (value!62599 Int) (text!14323 List!11137)) (StringLiteralValue!5947 (text!14324 List!11137)) (FloatLiteralValue!3965 (text!14325 List!11137)) (BytesLiteralValue!1982 (value!62600 List!11137)) (CommentValue!3965 (value!62601 List!11137)) (StringLiteralValue!5948 (value!62602 List!11137)) (ErrorTokenValue!1982 (msg!2043 List!11137)) )
))
(declare-datatypes ((C!6690 0))(
  ( (C!6691 (val!3601 Int)) )
))
(declare-datatypes ((Regex!3186 0))(
  ( (ElementMatch!3186 (c!193910 C!6690)) (Concat!5169 (regOne!6884 Regex!3186) (regTwo!6884 Regex!3186)) (EmptyExpr!3186) (Star!3186 (reg!3515 Regex!3186)) (EmptyLang!3186) (Union!3186 (regOne!6885 Regex!3186) (regTwo!6885 Regex!3186)) )
))
(declare-datatypes ((String!13500 0))(
  ( (String!13501 (value!62603 String)) )
))
(declare-datatypes ((List!11138 0))(
  ( (Nil!11114) (Cons!11114 (h!16515 C!6690) (t!108672 List!11138)) )
))
(declare-datatypes ((IArray!7193 0))(
  ( (IArray!7194 (innerList!3654 List!11138)) )
))
(declare-datatypes ((Conc!3594 0))(
  ( (Node!3594 (left!9674 Conc!3594) (right!10004 Conc!3594) (csize!7418 Int) (cheight!3805 Int)) (Leaf!5563 (xs!6299 IArray!7193) (csize!7419 Int)) (Empty!3594) )
))
(declare-datatypes ((BalanceConc!7210 0))(
  ( (BalanceConc!7211 (c!193911 Conc!3594)) )
))
(declare-datatypes ((TokenValueInjection!3664 0))(
  ( (TokenValueInjection!3665 (toValue!3017 Int) (toChars!2876 Int)) )
))
(declare-datatypes ((Rule!3632 0))(
  ( (Rule!3633 (regex!1916 Regex!3186) (tag!2178 String!13500) (isSeparator!1916 Bool) (transformation!1916 TokenValueInjection!3664)) )
))
(declare-datatypes ((Token!3494 0))(
  ( (Token!3495 (value!62604 TokenValue!1982) (rule!3337 Rule!3632) (size!8764 Int) (originalCharacters!2470 List!11138)) )
))
(declare-datatypes ((List!11139 0))(
  ( (Nil!11115) (Cons!11115 (h!16516 Token!3494) (t!108673 List!11139)) )
))
(declare-datatypes ((List!11140 0))(
  ( (Nil!11116) (Cons!11116 (h!16517 Rule!3632) (t!108674 List!11140)) )
))
(declare-datatypes ((IArray!7195 0))(
  ( (IArray!7196 (innerList!3655 List!11139)) )
))
(declare-datatypes ((Conc!3595 0))(
  ( (Node!3595 (left!9675 Conc!3595) (right!10005 Conc!3595) (csize!7420 Int) (cheight!3806 Int)) (Leaf!5564 (xs!6300 IArray!7195) (csize!7421 Int)) (Empty!3595) )
))
(declare-datatypes ((BalanceConc!7212 0))(
  ( (BalanceConc!7213 (c!193912 Conc!3595)) )
))
(declare-datatypes ((PrintableTokens!518 0))(
  ( (PrintableTokens!519 (rules!9377 List!11140) (tokens!1515 BalanceConc!7212)) )
))
(declare-fun thiss!10527 () PrintableTokens!518)

(declare-fun size!8765 (BalanceConc!7212) Int)

(assert (=> b!1153638 (= res!518955 (<= to!267 (size!8765 (tokens!1515 thiss!10527))))))

(declare-fun b!1153641 () Bool)

(declare-fun e!737572 () Bool)

(declare-fun tp!332688 () Bool)

(declare-fun inv!14599 (Conc!3595) Bool)

(assert (=> b!1153641 (= e!737572 (and (inv!14599 (c!193912 (tokens!1515 thiss!10527))) tp!332688))))

(declare-fun b!1153639 () Bool)

(assert (=> b!1153639 (= e!737573 false)))

(declare-fun lt!392458 () Bool)

(declare-datatypes ((LexerInterface!1611 0))(
  ( (LexerInterfaceExt!1608 (__x!7676 Int)) (Lexer!1609) )
))
(declare-fun rulesInvariant!1485 (LexerInterface!1611 List!11140) Bool)

(assert (=> b!1153639 (= lt!392458 (rulesInvariant!1485 Lexer!1609 (rules!9377 thiss!10527)))))

(declare-datatypes ((Unit!17172 0))(
  ( (Unit!17173) )
))
(declare-fun lt!392459 () Unit!17172)

(declare-fun lemmaInvariant!103 (PrintableTokens!518) Unit!17172)

(assert (=> b!1153639 (= lt!392459 (lemmaInvariant!103 thiss!10527))))

(declare-fun res!518956 () Bool)

(assert (=> start!100436 (=> (not res!518956) (not e!737573))))

(declare-fun from!787 () Int)

(assert (=> start!100436 (= res!518956 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100436 e!737573))

(assert (=> start!100436 true))

(declare-fun e!737574 () Bool)

(declare-fun inv!14600 (PrintableTokens!518) Bool)

(assert (=> start!100436 (and (inv!14600 thiss!10527) e!737574)))

(declare-fun tp!332687 () Bool)

(declare-fun b!1153640 () Bool)

(declare-fun inv!14601 (BalanceConc!7212) Bool)

(assert (=> b!1153640 (= e!737574 (and tp!332687 (inv!14601 (tokens!1515 thiss!10527)) e!737572))))

(assert (= (and start!100436 res!518956) b!1153638))

(assert (= (and b!1153638 res!518955) b!1153639))

(assert (= b!1153640 b!1153641))

(assert (= start!100436 b!1153640))

(declare-fun m!1321029 () Bool)

(assert (=> b!1153640 m!1321029))

(declare-fun m!1321031 () Bool)

(assert (=> b!1153639 m!1321031))

(declare-fun m!1321033 () Bool)

(assert (=> b!1153639 m!1321033))

(declare-fun m!1321035 () Bool)

(assert (=> b!1153638 m!1321035))

(declare-fun m!1321037 () Bool)

(assert (=> b!1153641 m!1321037))

(declare-fun m!1321039 () Bool)

(assert (=> start!100436 m!1321039))

(push 1)

(assert (not start!100436))

(assert (not b!1153641))

(assert (not b!1153638))

(assert (not b!1153640))

(assert (not b!1153639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


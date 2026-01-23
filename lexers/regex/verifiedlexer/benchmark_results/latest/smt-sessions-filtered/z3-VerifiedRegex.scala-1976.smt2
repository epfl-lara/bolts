; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100638 () Bool)

(assert start!100638)

(declare-fun b!1154810 () Bool)

(declare-fun e!738443 () Bool)

(assert (=> b!1154810 (= e!738443 true)))

(declare-fun b!1154809 () Bool)

(declare-fun e!738442 () Bool)

(assert (=> b!1154809 (= e!738442 e!738443)))

(declare-fun b!1154801 () Bool)

(assert (=> b!1154801 e!738442))

(assert (= b!1154809 b!1154810))

(assert (= b!1154801 b!1154809))

(declare-fun b!1154796 () Bool)

(declare-fun e!738436 () Bool)

(declare-datatypes ((C!6724 0))(
  ( (C!6725 (val!3618 Int)) )
))
(declare-datatypes ((List!11210 0))(
  ( (Nil!11186) (Cons!11186 (h!16587 (_ BitVec 16)) (t!108822 List!11210)) )
))
(declare-datatypes ((TokenValue!1999 0))(
  ( (FloatLiteralValue!3998 (text!14438 List!11210)) (TokenValueExt!1998 (__x!7709 Int)) (Broken!9995 (value!63061 List!11210)) (Object!2022) (End!1999) (Def!1999) (Underscore!1999) (Match!1999) (Else!1999) (Error!1999) (Case!1999) (If!1999) (Extends!1999) (Abstract!1999) (Class!1999) (Val!1999) (DelimiterValue!3998 (del!2059 List!11210)) (KeywordValue!2005 (value!63062 List!11210)) (CommentValue!3998 (value!63063 List!11210)) (WhitespaceValue!3998 (value!63064 List!11210)) (IndentationValue!1999 (value!63065 List!11210)) (String!13582) (Int32!1999) (Broken!9996 (value!63066 List!11210)) (Boolean!2000) (Unit!17227) (OperatorValue!2002 (op!2059 List!11210)) (IdentifierValue!3998 (value!63067 List!11210)) (IdentifierValue!3999 (value!63068 List!11210)) (WhitespaceValue!3999 (value!63069 List!11210)) (True!3998) (False!3998) (Broken!9997 (value!63070 List!11210)) (Broken!9998 (value!63071 List!11210)) (True!3999) (RightBrace!1999) (RightBracket!1999) (Colon!1999) (Null!1999) (Comma!1999) (LeftBracket!1999) (False!3999) (LeftBrace!1999) (ImaginaryLiteralValue!1999 (text!14439 List!11210)) (StringLiteralValue!5997 (value!63072 List!11210)) (EOFValue!1999 (value!63073 List!11210)) (IdentValue!1999 (value!63074 List!11210)) (DelimiterValue!3999 (value!63075 List!11210)) (DedentValue!1999 (value!63076 List!11210)) (NewLineValue!1999 (value!63077 List!11210)) (IntegerValue!5997 (value!63078 (_ BitVec 32)) (text!14440 List!11210)) (IntegerValue!5998 (value!63079 Int) (text!14441 List!11210)) (Times!1999) (Or!1999) (Equal!1999) (Minus!1999) (Broken!9999 (value!63080 List!11210)) (And!1999) (Div!1999) (LessEqual!1999) (Mod!1999) (Concat!5202) (Not!1999) (Plus!1999) (SpaceValue!1999 (value!63081 List!11210)) (IntegerValue!5999 (value!63082 Int) (text!14442 List!11210)) (StringLiteralValue!5998 (text!14443 List!11210)) (FloatLiteralValue!3999 (text!14444 List!11210)) (BytesLiteralValue!1999 (value!63083 List!11210)) (CommentValue!3999 (value!63084 List!11210)) (StringLiteralValue!5999 (value!63085 List!11210)) (ErrorTokenValue!1999 (msg!2060 List!11210)) )
))
(declare-datatypes ((Regex!3203 0))(
  ( (ElementMatch!3203 (c!193982 C!6724)) (Concat!5203 (regOne!6918 Regex!3203) (regTwo!6918 Regex!3203)) (EmptyExpr!3203) (Star!3203 (reg!3532 Regex!3203)) (EmptyLang!3203) (Union!3203 (regOne!6919 Regex!3203) (regTwo!6919 Regex!3203)) )
))
(declare-datatypes ((String!13583 0))(
  ( (String!13584 (value!63086 String)) )
))
(declare-datatypes ((List!11211 0))(
  ( (Nil!11187) (Cons!11187 (h!16588 C!6724) (t!108823 List!11211)) )
))
(declare-datatypes ((IArray!7261 0))(
  ( (IArray!7262 (innerList!3688 List!11211)) )
))
(declare-datatypes ((Conc!3628 0))(
  ( (Node!3628 (left!9744 Conc!3628) (right!10074 Conc!3628) (csize!7486 Int) (cheight!3839 Int)) (Leaf!5605 (xs!6333 IArray!7261) (csize!7487 Int)) (Empty!3628) )
))
(declare-datatypes ((BalanceConc!7278 0))(
  ( (BalanceConc!7279 (c!193983 Conc!3628)) )
))
(declare-datatypes ((TokenValueInjection!3698 0))(
  ( (TokenValueInjection!3699 (toValue!3034 Int) (toChars!2893 Int)) )
))
(declare-datatypes ((Rule!3666 0))(
  ( (Rule!3667 (regex!1933 Regex!3203) (tag!2195 String!13583) (isSeparator!1933 Bool) (transformation!1933 TokenValueInjection!3698)) )
))
(declare-datatypes ((Token!3528 0))(
  ( (Token!3529 (value!63087 TokenValue!1999) (rule!3354 Rule!3666) (size!8810 Int) (originalCharacters!2487 List!11211)) )
))
(declare-datatypes ((List!11212 0))(
  ( (Nil!11188) (Cons!11188 (h!16589 Token!3528) (t!108824 List!11212)) )
))
(declare-datatypes ((List!11213 0))(
  ( (Nil!11189) (Cons!11189 (h!16590 Rule!3666) (t!108825 List!11213)) )
))
(declare-datatypes ((IArray!7263 0))(
  ( (IArray!7264 (innerList!3689 List!11212)) )
))
(declare-datatypes ((Conc!3629 0))(
  ( (Node!3629 (left!9745 Conc!3629) (right!10075 Conc!3629) (csize!7488 Int) (cheight!3840 Int)) (Leaf!5606 (xs!6334 IArray!7263) (csize!7489 Int)) (Empty!3629) )
))
(declare-datatypes ((BalanceConc!7280 0))(
  ( (BalanceConc!7281 (c!193984 Conc!3629)) )
))
(declare-datatypes ((PrintableTokens!552 0))(
  ( (PrintableTokens!553 (rules!9402 List!11213) (tokens!1532 BalanceConc!7280)) )
))
(declare-fun thiss!10527 () PrintableTokens!552)

(declare-fun tp!332958 () Bool)

(declare-fun inv!14692 (Conc!3629) Bool)

(assert (=> b!1154796 (= e!738436 (and (inv!14692 (c!193984 (tokens!1532 thiss!10527))) tp!332958))))

(declare-fun b!1154797 () Bool)

(declare-fun e!738434 () Bool)

(declare-fun e!738432 () Bool)

(assert (=> b!1154797 (= e!738434 e!738432)))

(declare-fun res!519502 () Bool)

(assert (=> b!1154797 (=> (not res!519502) (not e!738432))))

(declare-fun lt!392681 () List!11212)

(declare-datatypes ((LexerInterface!1628 0))(
  ( (LexerInterfaceExt!1625 (__x!7710 Int)) (Lexer!1626) )
))
(declare-fun rulesProduceIndividualToken!665 (LexerInterface!1628 List!11213 Token!3528) Bool)

(assert (=> b!1154797 (= res!519502 (rulesProduceIndividualToken!665 Lexer!1626 (rules!9402 thiss!10527) (h!16589 lt!392681)))))

(declare-fun b!1154798 () Bool)

(declare-fun res!519503 () Bool)

(declare-fun e!738431 () Bool)

(assert (=> b!1154798 (=> (not res!519503) (not e!738431))))

(declare-fun to!267 () Int)

(declare-fun size!8811 (BalanceConc!7280) Int)

(assert (=> b!1154798 (= res!519503 (<= to!267 (size!8811 (tokens!1532 thiss!10527))))))

(declare-fun b!1154799 () Bool)

(declare-fun e!738437 () Bool)

(assert (=> b!1154799 (= e!738431 e!738437)))

(declare-fun res!519507 () Bool)

(assert (=> b!1154799 (=> (not res!519507) (not e!738437))))

(declare-fun rulesInvariant!1502 (LexerInterface!1628 List!11213) Bool)

(assert (=> b!1154799 (= res!519507 (rulesInvariant!1502 Lexer!1626 (rules!9402 thiss!10527)))))

(declare-datatypes ((Unit!17228 0))(
  ( (Unit!17229) )
))
(declare-fun lt!392680 () Unit!17228)

(declare-fun lemmaInvariant!120 (PrintableTokens!552) Unit!17228)

(assert (=> b!1154799 (= lt!392680 (lemmaInvariant!120 thiss!10527))))

(declare-fun b!1154800 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!496 (LexerInterface!1628 List!11213 List!11212) Bool)

(assert (=> b!1154800 (= e!738432 (rulesProduceEachTokenIndividuallyList!496 Lexer!1626 (rules!9402 thiss!10527) (t!108824 lt!392681)))))

(declare-fun e!738435 () Bool)

(assert (=> b!1154801 (= e!738437 (not e!738435))))

(declare-fun res!519506 () Bool)

(assert (=> b!1154801 (=> res!519506 e!738435)))

(declare-fun lambda!46513 () Int)

(declare-fun forall!2852 (BalanceConc!7280 Int) Bool)

(assert (=> b!1154801 (= res!519506 (not (forall!2852 (tokens!1532 thiss!10527) lambda!46513)))))

(assert (=> b!1154801 (= (rulesProduceEachTokenIndividuallyList!496 Lexer!1626 (rules!9402 thiss!10527) lt!392681) e!738434)))

(declare-fun res!519504 () Bool)

(assert (=> b!1154801 (=> res!519504 e!738434)))

(get-info :version)

(assert (=> b!1154801 (= res!519504 (not ((_ is Cons!11188) lt!392681)))))

(declare-fun list!4127 (BalanceConc!7280) List!11212)

(assert (=> b!1154801 (= lt!392681 (list!4127 (tokens!1532 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!667 (LexerInterface!1628 List!11213 BalanceConc!7280) Bool)

(assert (=> b!1154801 (= (rulesProduceEachTokenIndividually!667 Lexer!1626 (rules!9402 thiss!10527) (tokens!1532 thiss!10527)) (forall!2852 (tokens!1532 thiss!10527) lambda!46513))))

(declare-fun b!1154802 () Bool)

(declare-fun tp!332957 () Bool)

(declare-fun e!738433 () Bool)

(declare-fun inv!14693 (BalanceConc!7280) Bool)

(assert (=> b!1154802 (= e!738433 (and tp!332957 (inv!14693 (tokens!1532 thiss!10527)) e!738436))))

(declare-fun res!519505 () Bool)

(assert (=> start!100638 (=> (not res!519505) (not e!738431))))

(declare-fun from!787 () Int)

(assert (=> start!100638 (= res!519505 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100638 e!738431))

(assert (=> start!100638 true))

(declare-fun inv!14694 (PrintableTokens!552) Bool)

(assert (=> start!100638 (and (inv!14694 thiss!10527) e!738433)))

(declare-fun b!1154795 () Bool)

(assert (=> b!1154795 (= e!738435 true)))

(declare-fun lt!392679 () List!11212)

(declare-fun slice!142 (BalanceConc!7280 Int Int) BalanceConc!7280)

(assert (=> b!1154795 (= lt!392679 (list!4127 (slice!142 (tokens!1532 thiss!10527) from!787 to!267)))))

(declare-fun subseq!189 (List!11212 List!11212) Bool)

(declare-fun slice!143 (List!11212 Int Int) List!11212)

(assert (=> b!1154795 (subseq!189 (slice!143 lt!392681 from!787 to!267) lt!392681)))

(declare-fun lt!392682 () Unit!17228)

(declare-fun lemmaSliceSubseq!30 (List!11212 Int Int) Unit!17228)

(assert (=> b!1154795 (= lt!392682 (lemmaSliceSubseq!30 lt!392681 from!787 to!267))))

(assert (= (and start!100638 res!519505) b!1154798))

(assert (= (and b!1154798 res!519503) b!1154799))

(assert (= (and b!1154799 res!519507) b!1154801))

(assert (= (and b!1154801 (not res!519504)) b!1154797))

(assert (= (and b!1154797 res!519502) b!1154800))

(assert (= (and b!1154801 (not res!519506)) b!1154795))

(assert (= b!1154802 b!1154796))

(assert (= start!100638 b!1154802))

(declare-fun m!1321821 () Bool)

(assert (=> start!100638 m!1321821))

(declare-fun m!1321823 () Bool)

(assert (=> b!1154796 m!1321823))

(declare-fun m!1321825 () Bool)

(assert (=> b!1154795 m!1321825))

(declare-fun m!1321827 () Bool)

(assert (=> b!1154795 m!1321827))

(declare-fun m!1321829 () Bool)

(assert (=> b!1154795 m!1321829))

(assert (=> b!1154795 m!1321829))

(declare-fun m!1321831 () Bool)

(assert (=> b!1154795 m!1321831))

(assert (=> b!1154795 m!1321825))

(declare-fun m!1321833 () Bool)

(assert (=> b!1154795 m!1321833))

(declare-fun m!1321835 () Bool)

(assert (=> b!1154797 m!1321835))

(declare-fun m!1321837 () Bool)

(assert (=> b!1154801 m!1321837))

(declare-fun m!1321839 () Bool)

(assert (=> b!1154801 m!1321839))

(declare-fun m!1321841 () Bool)

(assert (=> b!1154801 m!1321841))

(assert (=> b!1154801 m!1321839))

(declare-fun m!1321843 () Bool)

(assert (=> b!1154801 m!1321843))

(declare-fun m!1321845 () Bool)

(assert (=> b!1154799 m!1321845))

(declare-fun m!1321847 () Bool)

(assert (=> b!1154799 m!1321847))

(declare-fun m!1321849 () Bool)

(assert (=> b!1154802 m!1321849))

(declare-fun m!1321851 () Bool)

(assert (=> b!1154800 m!1321851))

(declare-fun m!1321853 () Bool)

(assert (=> b!1154798 m!1321853))

(check-sat (not b!1154809) (not b!1154802) (not b!1154795) (not b!1154799) (not b!1154798) (not b!1154800) (not b!1154801) (not start!100638) (not b!1154810) (not b!1154797) (not b!1154796))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130880 () Bool)

(assert start!130880)

(declare-fun b!1421038 () Bool)

(declare-fun e!907060 () Bool)

(declare-datatypes ((C!7908 0))(
  ( (C!7909 (val!4524 Int)) )
))
(declare-datatypes ((List!14693 0))(
  ( (Nil!14627) (Cons!14627 (h!20028 C!7908) (t!124488 List!14693)) )
))
(declare-datatypes ((IArray!9861 0))(
  ( (IArray!9862 (innerList!4988 List!14693)) )
))
(declare-datatypes ((Conc!4928 0))(
  ( (Node!4928 (left!12506 Conc!4928) (right!12836 Conc!4928) (csize!10086 Int) (cheight!5139 Int)) (Leaf!7405 (xs!7657 IArray!9861) (csize!10087 Int)) (Empty!4928) )
))
(declare-datatypes ((BalanceConc!9796 0))(
  ( (BalanceConc!9797 (c!233608 Conc!4928)) )
))
(declare-datatypes ((List!14694 0))(
  ( (Nil!14628) (Cons!14628 (h!20029 (_ BitVec 16)) (t!124489 List!14694)) )
))
(declare-datatypes ((TokenValue!2641 0))(
  ( (FloatLiteralValue!5282 (text!18932 List!14694)) (TokenValueExt!2640 (__x!9084 Int)) (Broken!13205 (value!82325 List!14694)) (Object!2706) (End!2641) (Def!2641) (Underscore!2641) (Match!2641) (Else!2641) (Error!2641) (Case!2641) (If!2641) (Extends!2641) (Abstract!2641) (Class!2641) (Val!2641) (DelimiterValue!5282 (del!2701 List!14694)) (KeywordValue!2647 (value!82326 List!14694)) (CommentValue!5282 (value!82327 List!14694)) (WhitespaceValue!5282 (value!82328 List!14694)) (IndentationValue!2641 (value!82329 List!14694)) (String!17460) (Int32!2641) (Broken!13206 (value!82330 List!14694)) (Boolean!2642) (Unit!21819) (OperatorValue!2644 (op!2701 List!14694)) (IdentifierValue!5282 (value!82331 List!14694)) (IdentifierValue!5283 (value!82332 List!14694)) (WhitespaceValue!5283 (value!82333 List!14694)) (True!5282) (False!5282) (Broken!13207 (value!82334 List!14694)) (Broken!13208 (value!82335 List!14694)) (True!5283) (RightBrace!2641) (RightBracket!2641) (Colon!2641) (Null!2641) (Comma!2641) (LeftBracket!2641) (False!5283) (LeftBrace!2641) (ImaginaryLiteralValue!2641 (text!18933 List!14694)) (StringLiteralValue!7923 (value!82336 List!14694)) (EOFValue!2641 (value!82337 List!14694)) (IdentValue!2641 (value!82338 List!14694)) (DelimiterValue!5283 (value!82339 List!14694)) (DedentValue!2641 (value!82340 List!14694)) (NewLineValue!2641 (value!82341 List!14694)) (IntegerValue!7923 (value!82342 (_ BitVec 32)) (text!18934 List!14694)) (IntegerValue!7924 (value!82343 Int) (text!18935 List!14694)) (Times!2641) (Or!2641) (Equal!2641) (Minus!2641) (Broken!13209 (value!82344 List!14694)) (And!2641) (Div!2641) (LessEqual!2641) (Mod!2641) (Concat!6506) (Not!2641) (Plus!2641) (SpaceValue!2641 (value!82345 List!14694)) (IntegerValue!7925 (value!82346 Int) (text!18936 List!14694)) (StringLiteralValue!7924 (text!18937 List!14694)) (FloatLiteralValue!5283 (text!18938 List!14694)) (BytesLiteralValue!2641 (value!82347 List!14694)) (CommentValue!5283 (value!82348 List!14694)) (StringLiteralValue!7925 (value!82349 List!14694)) (ErrorTokenValue!2641 (msg!2702 List!14694)) )
))
(declare-datatypes ((Regex!3865 0))(
  ( (ElementMatch!3865 (c!233609 C!7908)) (Concat!6507 (regOne!8242 Regex!3865) (regTwo!8242 Regex!3865)) (EmptyExpr!3865) (Star!3865 (reg!4194 Regex!3865)) (EmptyLang!3865) (Union!3865 (regOne!8243 Regex!3865) (regTwo!8243 Regex!3865)) )
))
(declare-datatypes ((String!17461 0))(
  ( (String!17462 (value!82350 String)) )
))
(declare-datatypes ((TokenValueInjection!4942 0))(
  ( (TokenValueInjection!4943 (toValue!3850 Int) (toChars!3709 Int)) )
))
(declare-datatypes ((Rule!4902 0))(
  ( (Rule!4903 (regex!2551 Regex!3865) (tag!2813 String!17461) (isSeparator!2551 Bool) (transformation!2551 TokenValueInjection!4942)) )
))
(declare-datatypes ((Token!4764 0))(
  ( (Token!4765 (value!82351 TokenValue!2641) (rule!4314 Rule!4902) (size!12054 Int) (originalCharacters!3413 List!14693)) )
))
(declare-datatypes ((List!14695 0))(
  ( (Nil!14629) (Cons!14629 (h!20030 Token!4764) (t!124490 List!14695)) )
))
(declare-datatypes ((IArray!9863 0))(
  ( (IArray!9864 (innerList!4989 List!14695)) )
))
(declare-datatypes ((Conc!4929 0))(
  ( (Node!4929 (left!12507 Conc!4929) (right!12837 Conc!4929) (csize!10088 Int) (cheight!5140 Int)) (Leaf!7406 (xs!7658 IArray!9863) (csize!10089 Int)) (Empty!4929) )
))
(declare-datatypes ((BalanceConc!9798 0))(
  ( (BalanceConc!9799 (c!233610 Conc!4929)) )
))
(declare-datatypes ((List!14696 0))(
  ( (Nil!14630) (Cons!14630 (h!20031 Rule!4902) (t!124491 List!14696)) )
))
(declare-datatypes ((PrintableTokens!884 0))(
  ( (PrintableTokens!885 (rules!11172 List!14696) (tokens!1864 BalanceConc!9798)) )
))
(declare-fun thiss!10022 () PrintableTokens!884)

(declare-fun tp!402856 () Bool)

(declare-fun inv!19355 (Conc!4929) Bool)

(assert (=> b!1421038 (= e!907060 (and (inv!19355 (c!233610 (tokens!1864 thiss!10022))) tp!402856))))

(declare-fun e!907064 () Bool)

(declare-fun b!1421039 () Bool)

(declare-fun other!32 () PrintableTokens!884)

(declare-fun tp!402857 () Bool)

(declare-fun e!907058 () Bool)

(declare-fun inv!19356 (BalanceConc!9798) Bool)

(assert (=> b!1421039 (= e!907064 (and tp!402857 (inv!19356 (tokens!1864 other!32)) e!907058))))

(declare-fun b!1421040 () Bool)

(declare-fun e!907057 () Bool)

(declare-fun e!907061 () Bool)

(assert (=> b!1421040 (= e!907057 e!907061)))

(declare-fun res!643391 () Bool)

(assert (=> b!1421040 (=> (not res!643391) (not e!907061))))

(declare-fun isEmpty!9012 (BalanceConc!9798) Bool)

(assert (=> b!1421040 (= res!643391 (isEmpty!9012 (tokens!1864 other!32)))))

(declare-datatypes ((Unit!21820 0))(
  ( (Unit!21821) )
))
(declare-fun lt!479880 () Unit!21820)

(declare-fun lemmaInvariant!247 (PrintableTokens!884) Unit!21820)

(assert (=> b!1421040 (= lt!479880 (lemmaInvariant!247 thiss!10022))))

(declare-fun lt!479879 () Unit!21820)

(assert (=> b!1421040 (= lt!479879 (lemmaInvariant!247 other!32))))

(declare-fun b!1421041 () Bool)

(declare-fun e!907062 () List!14693)

(assert (=> b!1421041 (= e!907062 Nil!14627)))

(declare-fun b!1421042 () Bool)

(declare-fun lt!479871 () List!14695)

(declare-fun ++!3856 (List!14693 List!14693) List!14693)

(declare-fun list!5786 (BalanceConc!9796) List!14693)

(declare-fun charsOf!1484 (Token!4764) BalanceConc!9796)

(declare-datatypes ((LexerInterface!2219 0))(
  ( (LexerInterfaceExt!2216 (__x!9085 Int)) (Lexer!2217) )
))
(declare-fun printList!673 (LexerInterface!2219 List!14695) List!14693)

(assert (=> b!1421042 (= e!907062 (++!3856 (list!5786 (charsOf!1484 (h!20030 lt!479871))) (printList!673 Lexer!2217 (t!124490 lt!479871))))))

(declare-fun res!643390 () Bool)

(assert (=> start!130880 (=> (not res!643390) (not e!907057))))

(assert (=> start!130880 (= res!643390 (= (rules!11172 thiss!10022) (rules!11172 other!32)))))

(assert (=> start!130880 e!907057))

(declare-fun e!907063 () Bool)

(declare-fun inv!19357 (PrintableTokens!884) Bool)

(assert (=> start!130880 (and (inv!19357 thiss!10022) e!907063)))

(assert (=> start!130880 (and (inv!19357 other!32) e!907064)))

(declare-fun b!1421043 () Bool)

(declare-fun tp!402858 () Bool)

(assert (=> b!1421043 (= e!907058 (and (inv!19355 (c!233610 (tokens!1864 other!32))) tp!402858))))

(declare-fun b!1421044 () Bool)

(declare-fun e!907059 () Bool)

(declare-fun lt!479877 () List!14693)

(assert (=> b!1421044 (= e!907059 (= lt!479877 Nil!14627))))

(declare-fun b!1421045 () Bool)

(declare-fun e!907065 () Bool)

(assert (=> b!1421045 (= e!907065 (= (printList!673 Lexer!2217 lt!479871) e!907062))))

(declare-fun c!233607 () Bool)

(get-info :version)

(assert (=> b!1421045 (= c!233607 ((_ is Cons!14629) lt!479871))))

(declare-fun b!1421046 () Bool)

(assert (=> b!1421046 (= e!907061 (not true))))

(assert (=> b!1421046 e!907065))

(declare-fun res!643392 () Bool)

(assert (=> b!1421046 (=> (not res!643392) (not e!907065))))

(declare-fun lt!479876 () BalanceConc!9796)

(declare-fun lt!479881 () BalanceConc!9796)

(assert (=> b!1421046 (= res!643392 (= lt!479876 lt!479881))))

(declare-fun print!997 (LexerInterface!2219 BalanceConc!9798) BalanceConc!9796)

(assert (=> b!1421046 (= lt!479881 (print!997 Lexer!2217 (tokens!1864 other!32)))))

(declare-fun print!998 (PrintableTokens!884) BalanceConc!9796)

(assert (=> b!1421046 (= lt!479876 (print!998 other!32))))

(declare-fun lt!479882 () Unit!21820)

(declare-fun theoremInvertabilityWhenTokenListSeparable!41 (LexerInterface!2219 List!14696 List!14695) Unit!21820)

(assert (=> b!1421046 (= lt!479882 (theoremInvertabilityWhenTokenListSeparable!41 Lexer!2217 (rules!11172 other!32) lt!479871))))

(declare-fun list!5787 (BalanceConc!9798) List!14695)

(assert (=> b!1421046 (= lt!479871 (list!5787 (tokens!1864 other!32)))))

(assert (=> b!1421046 (= (print!998 thiss!10022) (print!997 Lexer!2217 (tokens!1864 thiss!10022)))))

(declare-fun lt!479878 () Unit!21820)

(declare-fun lt!479874 () List!14695)

(assert (=> b!1421046 (= lt!479878 (theoremInvertabilityWhenTokenListSeparable!41 Lexer!2217 (rules!11172 thiss!10022) lt!479874))))

(assert (=> b!1421046 e!907059))

(declare-fun res!643393 () Bool)

(assert (=> b!1421046 (=> (not res!643393) (not e!907059))))

(declare-fun lt!479873 () List!14693)

(declare-fun lt!479872 () List!14695)

(assert (=> b!1421046 (= res!643393 (= (printList!673 Lexer!2217 lt!479872) (++!3856 lt!479873 lt!479877)))))

(assert (=> b!1421046 (= lt!479877 (printList!673 Lexer!2217 Nil!14629))))

(assert (=> b!1421046 (= lt!479873 (printList!673 Lexer!2217 lt!479874))))

(declare-fun ++!3857 (List!14695 List!14695) List!14695)

(assert (=> b!1421046 (= lt!479872 (++!3857 lt!479874 Nil!14629))))

(declare-fun lt!479875 () Unit!21820)

(declare-fun lemmaPrintConcatSameAsConcatPrint!38 (LexerInterface!2219 List!14695 List!14695) Unit!21820)

(assert (=> b!1421046 (= lt!479875 (lemmaPrintConcatSameAsConcatPrint!38 Lexer!2217 lt!479874 Nil!14629))))

(assert (=> b!1421046 (= lt!479874 (list!5787 (tokens!1864 thiss!10022)))))

(declare-fun b!1421047 () Bool)

(declare-fun tp!402855 () Bool)

(assert (=> b!1421047 (= e!907063 (and tp!402855 (inv!19356 (tokens!1864 thiss!10022)) e!907060))))

(declare-fun b!1421048 () Bool)

(declare-fun res!643394 () Bool)

(assert (=> b!1421048 (=> (not res!643394) (not e!907065))))

(declare-fun printTailRec!651 (LexerInterface!2219 BalanceConc!9798 Int BalanceConc!9796) BalanceConc!9796)

(assert (=> b!1421048 (= res!643394 (= lt!479881 (printTailRec!651 Lexer!2217 (tokens!1864 other!32) 0 (BalanceConc!9797 Empty!4928))))))

(assert (= (and start!130880 res!643390) b!1421040))

(assert (= (and b!1421040 res!643391) b!1421046))

(assert (= (and b!1421046 res!643393) b!1421044))

(assert (= (and b!1421046 res!643392) b!1421048))

(assert (= (and b!1421048 res!643394) b!1421045))

(assert (= (and b!1421045 c!233607) b!1421042))

(assert (= (and b!1421045 (not c!233607)) b!1421041))

(assert (= b!1421047 b!1421038))

(assert (= start!130880 b!1421047))

(assert (= b!1421039 b!1421043))

(assert (= start!130880 b!1421039))

(declare-fun m!1610903 () Bool)

(assert (=> b!1421048 m!1610903))

(declare-fun m!1610905 () Bool)

(assert (=> b!1421039 m!1610905))

(declare-fun m!1610907 () Bool)

(assert (=> b!1421046 m!1610907))

(declare-fun m!1610909 () Bool)

(assert (=> b!1421046 m!1610909))

(declare-fun m!1610911 () Bool)

(assert (=> b!1421046 m!1610911))

(declare-fun m!1610913 () Bool)

(assert (=> b!1421046 m!1610913))

(declare-fun m!1610915 () Bool)

(assert (=> b!1421046 m!1610915))

(declare-fun m!1610917 () Bool)

(assert (=> b!1421046 m!1610917))

(declare-fun m!1610919 () Bool)

(assert (=> b!1421046 m!1610919))

(declare-fun m!1610921 () Bool)

(assert (=> b!1421046 m!1610921))

(declare-fun m!1610923 () Bool)

(assert (=> b!1421046 m!1610923))

(declare-fun m!1610925 () Bool)

(assert (=> b!1421046 m!1610925))

(declare-fun m!1610927 () Bool)

(assert (=> b!1421046 m!1610927))

(declare-fun m!1610929 () Bool)

(assert (=> b!1421046 m!1610929))

(declare-fun m!1610931 () Bool)

(assert (=> b!1421046 m!1610931))

(declare-fun m!1610933 () Bool)

(assert (=> b!1421046 m!1610933))

(declare-fun m!1610935 () Bool)

(assert (=> b!1421038 m!1610935))

(declare-fun m!1610937 () Bool)

(assert (=> b!1421045 m!1610937))

(declare-fun m!1610939 () Bool)

(assert (=> b!1421040 m!1610939))

(declare-fun m!1610941 () Bool)

(assert (=> b!1421040 m!1610941))

(declare-fun m!1610943 () Bool)

(assert (=> b!1421040 m!1610943))

(declare-fun m!1610945 () Bool)

(assert (=> b!1421043 m!1610945))

(declare-fun m!1610947 () Bool)

(assert (=> b!1421042 m!1610947))

(assert (=> b!1421042 m!1610947))

(declare-fun m!1610949 () Bool)

(assert (=> b!1421042 m!1610949))

(declare-fun m!1610951 () Bool)

(assert (=> b!1421042 m!1610951))

(assert (=> b!1421042 m!1610949))

(assert (=> b!1421042 m!1610951))

(declare-fun m!1610953 () Bool)

(assert (=> b!1421042 m!1610953))

(declare-fun m!1610955 () Bool)

(assert (=> start!130880 m!1610955))

(declare-fun m!1610957 () Bool)

(assert (=> start!130880 m!1610957))

(declare-fun m!1610959 () Bool)

(assert (=> b!1421047 m!1610959))

(check-sat (not b!1421038) (not b!1421047) (not b!1421039) (not b!1421046) (not b!1421040) (not b!1421042) (not start!130880) (not b!1421043) (not b!1421048) (not b!1421045))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100514 () Bool)

(assert start!100514)

(declare-fun b!1154080 () Bool)

(declare-fun e!737895 () Bool)

(assert (=> b!1154080 (= e!737895 true)))

(declare-fun b!1154079 () Bool)

(declare-fun e!737894 () Bool)

(assert (=> b!1154079 (= e!737894 e!737895)))

(declare-fun b!1154071 () Bool)

(assert (=> b!1154071 e!737894))

(assert (= b!1154079 b!1154080))

(assert (= b!1154071 b!1154079))

(declare-fun b!1154066 () Bool)

(declare-fun e!737887 () Bool)

(declare-fun e!737889 () Bool)

(assert (=> b!1154066 (= e!737887 e!737889)))

(declare-fun res!519130 () Bool)

(assert (=> b!1154066 (=> (not res!519130) (not e!737889))))

(declare-datatypes ((List!11175 0))(
  ( (Nil!11151) (Cons!11151 (h!16552 (_ BitVec 16)) (t!108729 List!11175)) )
))
(declare-datatypes ((TokenValue!1991 0))(
  ( (FloatLiteralValue!3982 (text!14382 List!11175)) (TokenValueExt!1990 (__x!7693 Int)) (Broken!9955 (value!62833 List!11175)) (Object!2014) (End!1991) (Def!1991) (Underscore!1991) (Match!1991) (Else!1991) (Error!1991) (Case!1991) (If!1991) (Extends!1991) (Abstract!1991) (Class!1991) (Val!1991) (DelimiterValue!3982 (del!2051 List!11175)) (KeywordValue!1997 (value!62834 List!11175)) (CommentValue!3982 (value!62835 List!11175)) (WhitespaceValue!3982 (value!62836 List!11175)) (IndentationValue!1991 (value!62837 List!11175)) (String!13542) (Int32!1991) (Broken!9956 (value!62838 List!11175)) (Boolean!1992) (Unit!17200) (OperatorValue!1994 (op!2051 List!11175)) (IdentifierValue!3982 (value!62839 List!11175)) (IdentifierValue!3983 (value!62840 List!11175)) (WhitespaceValue!3983 (value!62841 List!11175)) (True!3982) (False!3982) (Broken!9957 (value!62842 List!11175)) (Broken!9958 (value!62843 List!11175)) (True!3983) (RightBrace!1991) (RightBracket!1991) (Colon!1991) (Null!1991) (Comma!1991) (LeftBracket!1991) (False!3983) (LeftBrace!1991) (ImaginaryLiteralValue!1991 (text!14383 List!11175)) (StringLiteralValue!5973 (value!62844 List!11175)) (EOFValue!1991 (value!62845 List!11175)) (IdentValue!1991 (value!62846 List!11175)) (DelimiterValue!3983 (value!62847 List!11175)) (DedentValue!1991 (value!62848 List!11175)) (NewLineValue!1991 (value!62849 List!11175)) (IntegerValue!5973 (value!62850 (_ BitVec 32)) (text!14384 List!11175)) (IntegerValue!5974 (value!62851 Int) (text!14385 List!11175)) (Times!1991) (Or!1991) (Equal!1991) (Minus!1991) (Broken!9959 (value!62852 List!11175)) (And!1991) (Div!1991) (LessEqual!1991) (Mod!1991) (Concat!5186) (Not!1991) (Plus!1991) (SpaceValue!1991 (value!62853 List!11175)) (IntegerValue!5975 (value!62854 Int) (text!14386 List!11175)) (StringLiteralValue!5974 (text!14387 List!11175)) (FloatLiteralValue!3983 (text!14388 List!11175)) (BytesLiteralValue!1991 (value!62855 List!11175)) (CommentValue!3983 (value!62856 List!11175)) (StringLiteralValue!5975 (value!62857 List!11175)) (ErrorTokenValue!1991 (msg!2052 List!11175)) )
))
(declare-datatypes ((C!6708 0))(
  ( (C!6709 (val!3610 Int)) )
))
(declare-datatypes ((Regex!3195 0))(
  ( (ElementMatch!3195 (c!193946 C!6708)) (Concat!5187 (regOne!6902 Regex!3195) (regTwo!6902 Regex!3195)) (EmptyExpr!3195) (Star!3195 (reg!3524 Regex!3195)) (EmptyLang!3195) (Union!3195 (regOne!6903 Regex!3195) (regTwo!6903 Regex!3195)) )
))
(declare-datatypes ((String!13543 0))(
  ( (String!13544 (value!62858 String)) )
))
(declare-datatypes ((List!11176 0))(
  ( (Nil!11152) (Cons!11152 (h!16553 C!6708) (t!108730 List!11176)) )
))
(declare-datatypes ((IArray!7229 0))(
  ( (IArray!7230 (innerList!3672 List!11176)) )
))
(declare-datatypes ((Conc!3612 0))(
  ( (Node!3612 (left!9708 Conc!3612) (right!10038 Conc!3612) (csize!7454 Int) (cheight!3823 Int)) (Leaf!5585 (xs!6317 IArray!7229) (csize!7455 Int)) (Empty!3612) )
))
(declare-datatypes ((BalanceConc!7246 0))(
  ( (BalanceConc!7247 (c!193947 Conc!3612)) )
))
(declare-datatypes ((TokenValueInjection!3682 0))(
  ( (TokenValueInjection!3683 (toValue!3026 Int) (toChars!2885 Int)) )
))
(declare-datatypes ((Rule!3650 0))(
  ( (Rule!3651 (regex!1925 Regex!3195) (tag!2187 String!13543) (isSeparator!1925 Bool) (transformation!1925 TokenValueInjection!3682)) )
))
(declare-datatypes ((Token!3512 0))(
  ( (Token!3513 (value!62859 TokenValue!1991) (rule!3346 Rule!3650) (size!8786 Int) (originalCharacters!2479 List!11176)) )
))
(declare-datatypes ((List!11177 0))(
  ( (Nil!11153) (Cons!11153 (h!16554 Token!3512) (t!108731 List!11177)) )
))
(declare-datatypes ((List!11178 0))(
  ( (Nil!11154) (Cons!11154 (h!16555 Rule!3650) (t!108732 List!11178)) )
))
(declare-datatypes ((IArray!7231 0))(
  ( (IArray!7232 (innerList!3673 List!11177)) )
))
(declare-datatypes ((Conc!3613 0))(
  ( (Node!3613 (left!9709 Conc!3613) (right!10039 Conc!3613) (csize!7456 Int) (cheight!3824 Int)) (Leaf!5586 (xs!6318 IArray!7231) (csize!7457 Int)) (Empty!3613) )
))
(declare-datatypes ((BalanceConc!7248 0))(
  ( (BalanceConc!7249 (c!193948 Conc!3613)) )
))
(declare-datatypes ((PrintableTokens!536 0))(
  ( (PrintableTokens!537 (rules!9390 List!11178) (tokens!1524 BalanceConc!7248)) )
))
(declare-fun thiss!10527 () PrintableTokens!536)

(declare-datatypes ((LexerInterface!1620 0))(
  ( (LexerInterfaceExt!1617 (__x!7694 Int)) (Lexer!1618) )
))
(declare-fun rulesInvariant!1494 (LexerInterface!1620 List!11178) Bool)

(assert (=> b!1154066 (= res!519130 (rulesInvariant!1494 Lexer!1618 (rules!9390 thiss!10527)))))

(declare-datatypes ((Unit!17201 0))(
  ( (Unit!17202) )
))
(declare-fun lt!392528 () Unit!17201)

(declare-fun lemmaInvariant!112 (PrintableTokens!536) Unit!17201)

(assert (=> b!1154066 (= lt!392528 (lemmaInvariant!112 thiss!10527))))

(declare-fun b!1154067 () Bool)

(declare-fun e!737886 () Bool)

(declare-fun e!737885 () Bool)

(assert (=> b!1154067 (= e!737886 e!737885)))

(declare-fun res!519132 () Bool)

(assert (=> b!1154067 (=> (not res!519132) (not e!737885))))

(declare-fun lt!392527 () List!11177)

(declare-fun rulesProduceIndividualToken!657 (LexerInterface!1620 List!11178 Token!3512) Bool)

(assert (=> b!1154067 (= res!519132 (rulesProduceIndividualToken!657 Lexer!1618 (rules!9390 thiss!10527) (h!16554 lt!392527)))))

(declare-fun b!1154068 () Bool)

(declare-fun e!737888 () Bool)

(declare-fun tp!332825 () Bool)

(declare-fun inv!14646 (Conc!3613) Bool)

(assert (=> b!1154068 (= e!737888 (and (inv!14646 (c!193948 (tokens!1524 thiss!10527))) tp!332825))))

(declare-fun b!1154069 () Bool)

(declare-fun res!519131 () Bool)

(assert (=> b!1154069 (=> (not res!519131) (not e!737887))))

(declare-fun to!267 () Int)

(declare-fun size!8787 (BalanceConc!7248) Int)

(assert (=> b!1154069 (= res!519131 (<= to!267 (size!8787 (tokens!1524 thiss!10527))))))

(declare-fun e!737884 () Bool)

(declare-fun tp!332826 () Bool)

(declare-fun b!1154070 () Bool)

(declare-fun inv!14647 (BalanceConc!7248) Bool)

(assert (=> b!1154070 (= e!737884 (and tp!332826 (inv!14647 (tokens!1524 thiss!10527)) e!737888))))

(assert (=> b!1154071 (= e!737889 (not true))))

(declare-fun rulesProduceEachTokenIndividuallyList!488 (LexerInterface!1620 List!11178 List!11177) Bool)

(assert (=> b!1154071 (= (rulesProduceEachTokenIndividuallyList!488 Lexer!1618 (rules!9390 thiss!10527) lt!392527) e!737886)))

(declare-fun res!519129 () Bool)

(assert (=> b!1154071 (=> res!519129 e!737886)))

(get-info :version)

(assert (=> b!1154071 (= res!519129 (not ((_ is Cons!11153) lt!392527)))))

(declare-fun list!4116 (BalanceConc!7248) List!11177)

(assert (=> b!1154071 (= lt!392527 (list!4116 (tokens!1524 thiss!10527)))))

(declare-fun lambda!46441 () Int)

(declare-fun rulesProduceEachTokenIndividually!659 (LexerInterface!1620 List!11178 BalanceConc!7248) Bool)

(declare-fun forall!2839 (BalanceConc!7248 Int) Bool)

(assert (=> b!1154071 (= (rulesProduceEachTokenIndividually!659 Lexer!1618 (rules!9390 thiss!10527) (tokens!1524 thiss!10527)) (forall!2839 (tokens!1524 thiss!10527) lambda!46441))))

(declare-fun res!519133 () Bool)

(assert (=> start!100514 (=> (not res!519133) (not e!737887))))

(declare-fun from!787 () Int)

(assert (=> start!100514 (= res!519133 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100514 e!737887))

(assert (=> start!100514 true))

(declare-fun inv!14648 (PrintableTokens!536) Bool)

(assert (=> start!100514 (and (inv!14648 thiss!10527) e!737884)))

(declare-fun b!1154072 () Bool)

(assert (=> b!1154072 (= e!737885 (rulesProduceEachTokenIndividuallyList!488 Lexer!1618 (rules!9390 thiss!10527) (t!108731 lt!392527)))))

(assert (= (and start!100514 res!519133) b!1154069))

(assert (= (and b!1154069 res!519131) b!1154066))

(assert (= (and b!1154066 res!519130) b!1154071))

(assert (= (and b!1154071 (not res!519129)) b!1154067))

(assert (= (and b!1154067 res!519132) b!1154072))

(assert (= b!1154070 b!1154068))

(assert (= start!100514 b!1154070))

(declare-fun m!1321291 () Bool)

(assert (=> b!1154069 m!1321291))

(declare-fun m!1321293 () Bool)

(assert (=> b!1154068 m!1321293))

(declare-fun m!1321295 () Bool)

(assert (=> b!1154067 m!1321295))

(declare-fun m!1321297 () Bool)

(assert (=> start!100514 m!1321297))

(declare-fun m!1321299 () Bool)

(assert (=> b!1154071 m!1321299))

(declare-fun m!1321301 () Bool)

(assert (=> b!1154071 m!1321301))

(declare-fun m!1321303 () Bool)

(assert (=> b!1154071 m!1321303))

(declare-fun m!1321305 () Bool)

(assert (=> b!1154071 m!1321305))

(declare-fun m!1321307 () Bool)

(assert (=> b!1154072 m!1321307))

(declare-fun m!1321309 () Bool)

(assert (=> b!1154066 m!1321309))

(declare-fun m!1321311 () Bool)

(assert (=> b!1154066 m!1321311))

(declare-fun m!1321313 () Bool)

(assert (=> b!1154070 m!1321313))

(check-sat (not b!1154067) (not b!1154072) (not start!100514) (not b!1154070) (not b!1154066) (not b!1154069) (not b!1154068) (not b!1154080) (not b!1154079) (not b!1154071))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137134 () Bool)

(assert start!137134)

(declare-fun b!1466054 () Bool)

(declare-fun e!935190 () Bool)

(declare-fun e!935184 () Bool)

(assert (=> b!1466054 (= e!935190 e!935184)))

(declare-fun res!663741 () Bool)

(assert (=> b!1466054 (=> (not res!663741) (not e!935184))))

(declare-datatypes ((C!8164 0))(
  ( (C!8165 (val!4652 Int)) )
))
(declare-datatypes ((List!15274 0))(
  ( (Nil!15208) (Cons!15208 (h!20609 C!8164) (t!134973 List!15274)) )
))
(declare-datatypes ((IArray!10373 0))(
  ( (IArray!10374 (innerList!5244 List!15274)) )
))
(declare-datatypes ((Conc!5184 0))(
  ( (Node!5184 (left!12922 Conc!5184) (right!13252 Conc!5184) (csize!10598 Int) (cheight!5395 Int)) (Leaf!7725 (xs!7939 IArray!10373) (csize!10599 Int)) (Empty!5184) )
))
(declare-datatypes ((BalanceConc!10308 0))(
  ( (BalanceConc!10309 (c!241720 Conc!5184)) )
))
(declare-datatypes ((List!15275 0))(
  ( (Nil!15209) (Cons!15209 (h!20610 (_ BitVec 16)) (t!134974 List!15275)) )
))
(declare-datatypes ((TokenValue!2769 0))(
  ( (FloatLiteralValue!5538 (text!19828 List!15275)) (TokenValueExt!2768 (__x!9328 Int)) (Broken!13845 (value!85973 List!15275)) (Object!2834) (End!2769) (Def!2769) (Underscore!2769) (Match!2769) (Else!2769) (Error!2769) (Case!2769) (If!2769) (Extends!2769) (Abstract!2769) (Class!2769) (Val!2769) (DelimiterValue!5538 (del!2829 List!15275)) (KeywordValue!2775 (value!85974 List!15275)) (CommentValue!5538 (value!85975 List!15275)) (WhitespaceValue!5538 (value!85976 List!15275)) (IndentationValue!2769 (value!85977 List!15275)) (String!18100) (Int32!2769) (Broken!13846 (value!85978 List!15275)) (Boolean!2770) (Unit!25002) (OperatorValue!2772 (op!2829 List!15275)) (IdentifierValue!5538 (value!85979 List!15275)) (IdentifierValue!5539 (value!85980 List!15275)) (WhitespaceValue!5539 (value!85981 List!15275)) (True!5538) (False!5538) (Broken!13847 (value!85982 List!15275)) (Broken!13848 (value!85983 List!15275)) (True!5539) (RightBrace!2769) (RightBracket!2769) (Colon!2769) (Null!2769) (Comma!2769) (LeftBracket!2769) (False!5539) (LeftBrace!2769) (ImaginaryLiteralValue!2769 (text!19829 List!15275)) (StringLiteralValue!8307 (value!85984 List!15275)) (EOFValue!2769 (value!85985 List!15275)) (IdentValue!2769 (value!85986 List!15275)) (DelimiterValue!5539 (value!85987 List!15275)) (DedentValue!2769 (value!85988 List!15275)) (NewLineValue!2769 (value!85989 List!15275)) (IntegerValue!8307 (value!85990 (_ BitVec 32)) (text!19830 List!15275)) (IntegerValue!8308 (value!85991 Int) (text!19831 List!15275)) (Times!2769) (Or!2769) (Equal!2769) (Minus!2769) (Broken!13849 (value!85992 List!15275)) (And!2769) (Div!2769) (LessEqual!2769) (Mod!2769) (Concat!6762) (Not!2769) (Plus!2769) (SpaceValue!2769 (value!85993 List!15275)) (IntegerValue!8309 (value!85994 Int) (text!19832 List!15275)) (StringLiteralValue!8308 (text!19833 List!15275)) (FloatLiteralValue!5539 (text!19834 List!15275)) (BytesLiteralValue!2769 (value!85995 List!15275)) (CommentValue!5539 (value!85996 List!15275)) (StringLiteralValue!8309 (value!85997 List!15275)) (ErrorTokenValue!2769 (msg!2830 List!15275)) )
))
(declare-datatypes ((Regex!3993 0))(
  ( (ElementMatch!3993 (c!241721 C!8164)) (Concat!6763 (regOne!8498 Regex!3993) (regTwo!8498 Regex!3993)) (EmptyExpr!3993) (Star!3993 (reg!4322 Regex!3993)) (EmptyLang!3993) (Union!3993 (regOne!8499 Regex!3993) (regTwo!8499 Regex!3993)) )
))
(declare-datatypes ((String!18101 0))(
  ( (String!18102 (value!85998 String)) )
))
(declare-datatypes ((TokenValueInjection!5198 0))(
  ( (TokenValueInjection!5199 (toValue!3990 Int) (toChars!3849 Int)) )
))
(declare-datatypes ((Rule!5158 0))(
  ( (Rule!5159 (regex!2679 Regex!3993) (tag!2943 String!18101) (isSeparator!2679 Bool) (transformation!2679 TokenValueInjection!5198)) )
))
(declare-datatypes ((Token!5020 0))(
  ( (Token!5021 (value!85999 TokenValue!2769) (rule!4456 Rule!5158) (size!12445 Int) (originalCharacters!3541 List!15274)) )
))
(declare-datatypes ((List!15276 0))(
  ( (Nil!15210) (Cons!15210 (h!20611 Token!5020) (t!134975 List!15276)) )
))
(declare-datatypes ((IArray!10375 0))(
  ( (IArray!10376 (innerList!5245 List!15276)) )
))
(declare-datatypes ((Conc!5185 0))(
  ( (Node!5185 (left!12923 Conc!5185) (right!13253 Conc!5185) (csize!10600 Int) (cheight!5396 Int)) (Leaf!7726 (xs!7940 IArray!10375) (csize!10601 Int)) (Empty!5185) )
))
(declare-datatypes ((BalanceConc!10310 0))(
  ( (BalanceConc!10311 (c!241722 Conc!5185)) )
))
(declare-datatypes ((List!15277 0))(
  ( (Nil!15211) (Cons!15211 (h!20612 Rule!5158) (t!134976 List!15277)) )
))
(declare-datatypes ((PrintableTokens!1140 0))(
  ( (PrintableTokens!1141 (rules!11762 List!15277) (tokens!2130 BalanceConc!10310)) )
))
(declare-fun other!32 () PrintableTokens!1140)

(declare-fun isEmpty!9565 (BalanceConc!10310) Bool)

(assert (=> b!1466054 (= res!663741 (not (isEmpty!9565 (tokens!2130 other!32))))))

(declare-datatypes ((Unit!25003 0))(
  ( (Unit!25004) )
))
(declare-fun lt!510498 () Unit!25003)

(declare-fun thiss!10022 () PrintableTokens!1140)

(declare-fun lemmaInvariant!375 (PrintableTokens!1140) Unit!25003)

(assert (=> b!1466054 (= lt!510498 (lemmaInvariant!375 thiss!10022))))

(declare-fun lt!510491 () Unit!25003)

(assert (=> b!1466054 (= lt!510491 (lemmaInvariant!375 other!32))))

(declare-fun res!663739 () Bool)

(assert (=> start!137134 (=> (not res!663739) (not e!935190))))

(assert (=> start!137134 (= res!663739 (= (rules!11762 thiss!10022) (rules!11762 other!32)))))

(assert (=> start!137134 e!935190))

(declare-fun e!935189 () Bool)

(declare-fun inv!20338 (PrintableTokens!1140) Bool)

(assert (=> start!137134 (and (inv!20338 thiss!10022) e!935189)))

(declare-fun e!935186 () Bool)

(assert (=> start!137134 (and (inv!20338 other!32) e!935186)))

(declare-fun b!1466055 () Bool)

(declare-fun e!935187 () Bool)

(declare-fun tp!412095 () Bool)

(declare-fun inv!20339 (Conc!5185) Bool)

(assert (=> b!1466055 (= e!935187 (and (inv!20339 (c!241722 (tokens!2130 thiss!10022))) tp!412095))))

(declare-fun b!1466056 () Bool)

(declare-fun res!663735 () Bool)

(assert (=> b!1466056 (=> (not res!663735) (not e!935184))))

(assert (=> b!1466056 (= res!663735 (not (isEmpty!9565 (tokens!2130 thiss!10022))))))

(declare-fun b!1466057 () Bool)

(declare-fun tp!412093 () Bool)

(declare-fun inv!20340 (BalanceConc!10310) Bool)

(assert (=> b!1466057 (= e!935189 (and tp!412093 (inv!20340 (tokens!2130 thiss!10022)) e!935187))))

(declare-fun b!1466058 () Bool)

(declare-fun e!935188 () Bool)

(assert (=> b!1466058 (= e!935184 (not e!935188))))

(declare-fun res!663736 () Bool)

(assert (=> b!1466058 (=> res!663736 e!935188)))

(declare-fun lt!510492 () Token!5020)

(declare-fun lt!510499 () Token!5020)

(declare-datatypes ((LexerInterface!2335 0))(
  ( (LexerInterfaceExt!2332 (__x!9329 Int)) (Lexer!2333) )
))
(declare-fun separableTokensPredicate!544 (LexerInterface!2335 Token!5020 Token!5020 List!15277) Bool)

(assert (=> b!1466058 (= res!663736 (separableTokensPredicate!544 Lexer!2333 lt!510492 lt!510499 (rules!11762 thiss!10022)))))

(declare-fun rulesProduceIndividualToken!1254 (LexerInterface!2335 List!15277 Token!5020) Bool)

(assert (=> b!1466058 (rulesProduceIndividualToken!1254 Lexer!2333 (rules!11762 thiss!10022) lt!510499)))

(declare-fun lt!510497 () List!15276)

(declare-fun lt!510494 () Unit!25003)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!437 (LexerInterface!2335 List!15277 List!15276 Token!5020) Unit!25003)

(assert (=> b!1466058 (= lt!510494 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!437 Lexer!2333 (rules!11762 thiss!10022) lt!510497 lt!510499))))

(declare-fun head!3039 (BalanceConc!10310) Token!5020)

(assert (=> b!1466058 (= lt!510499 (head!3039 (tokens!2130 other!32)))))

(declare-fun list!6102 (BalanceConc!10310) List!15276)

(assert (=> b!1466058 (= lt!510497 (list!6102 (tokens!2130 other!32)))))

(assert (=> b!1466058 (rulesProduceIndividualToken!1254 Lexer!2333 (rules!11762 thiss!10022) lt!510492)))

(declare-fun lt!510493 () Unit!25003)

(declare-fun lt!510496 () List!15276)

(assert (=> b!1466058 (= lt!510493 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!437 Lexer!2333 (rules!11762 thiss!10022) lt!510496 lt!510492))))

(declare-fun last!299 (BalanceConc!10310) Token!5020)

(assert (=> b!1466058 (= lt!510492 (last!299 (tokens!2130 thiss!10022)))))

(assert (=> b!1466058 (= lt!510496 (list!6102 (tokens!2130 thiss!10022)))))

(declare-fun b!1466059 () Bool)

(declare-fun e!935185 () Bool)

(assert (=> b!1466059 (= e!935188 e!935185)))

(declare-fun res!663740 () Bool)

(assert (=> b!1466059 (=> (not res!663740) (not e!935185))))

(declare-fun lt!510495 () PrintableTokens!1140)

(assert (=> b!1466059 (= res!663740 (= (rules!11762 lt!510495) (rules!11762 thiss!10022)))))

(declare-datatypes ((Option!2887 0))(
  ( (None!2886) (Some!2886 (v!22534 PrintableTokens!1140)) )
))
(declare-fun get!4631 (Option!2887) PrintableTokens!1140)

(assert (=> b!1466059 (= lt!510495 (get!4631 None!2886))))

(declare-fun b!1466060 () Bool)

(declare-fun res!663738 () Bool)

(assert (=> b!1466060 (=> res!663738 e!935188)))

(assert (=> b!1466060 (= res!663738 true)))

(declare-fun b!1466061 () Bool)

(declare-fun list!6103 (BalanceConc!10308) List!15274)

(declare-fun print!1113 (PrintableTokens!1140) BalanceConc!10308)

(declare-fun ++!4112 (List!15274 List!15274) List!15274)

(assert (=> b!1466061 (= e!935185 (= (list!6103 (print!1113 lt!510495)) (++!4112 (list!6103 (print!1113 thiss!10022)) (list!6103 (print!1113 other!32)))))))

(declare-fun tp!412096 () Bool)

(declare-fun b!1466062 () Bool)

(declare-fun e!935183 () Bool)

(assert (=> b!1466062 (= e!935186 (and tp!412096 (inv!20340 (tokens!2130 other!32)) e!935183))))

(declare-fun b!1466063 () Bool)

(declare-fun tp!412094 () Bool)

(assert (=> b!1466063 (= e!935183 (and (inv!20339 (c!241722 (tokens!2130 other!32))) tp!412094))))

(declare-fun b!1466064 () Bool)

(declare-fun res!663737 () Bool)

(assert (=> b!1466064 (=> (not res!663737) (not e!935185))))

(declare-fun ++!4113 (List!15276 List!15276) List!15276)

(assert (=> b!1466064 (= res!663737 (= (list!6102 (tokens!2130 lt!510495)) (++!4113 lt!510496 lt!510497)))))

(assert (= (and start!137134 res!663739) b!1466054))

(assert (= (and b!1466054 res!663741) b!1466056))

(assert (= (and b!1466056 res!663735) b!1466058))

(assert (= (and b!1466058 (not res!663736)) b!1466060))

(assert (= (and b!1466060 (not res!663738)) b!1466059))

(assert (= (and b!1466059 res!663740) b!1466064))

(assert (= (and b!1466064 res!663737) b!1466061))

(assert (= b!1466057 b!1466055))

(assert (= start!137134 b!1466057))

(assert (= b!1466062 b!1466063))

(assert (= start!137134 b!1466062))

(declare-fun m!1710655 () Bool)

(assert (=> b!1466061 m!1710655))

(declare-fun m!1710657 () Bool)

(assert (=> b!1466061 m!1710657))

(declare-fun m!1710659 () Bool)

(assert (=> b!1466061 m!1710659))

(declare-fun m!1710661 () Bool)

(assert (=> b!1466061 m!1710661))

(assert (=> b!1466061 m!1710659))

(declare-fun m!1710663 () Bool)

(assert (=> b!1466061 m!1710663))

(assert (=> b!1466061 m!1710657))

(assert (=> b!1466061 m!1710663))

(declare-fun m!1710665 () Bool)

(assert (=> b!1466061 m!1710665))

(assert (=> b!1466061 m!1710655))

(assert (=> b!1466061 m!1710661))

(declare-fun m!1710667 () Bool)

(assert (=> b!1466061 m!1710667))

(declare-fun m!1710669 () Bool)

(assert (=> b!1466064 m!1710669))

(declare-fun m!1710671 () Bool)

(assert (=> b!1466064 m!1710671))

(declare-fun m!1710673 () Bool)

(assert (=> b!1466059 m!1710673))

(declare-fun m!1710675 () Bool)

(assert (=> b!1466057 m!1710675))

(declare-fun m!1710677 () Bool)

(assert (=> b!1466056 m!1710677))

(declare-fun m!1710679 () Bool)

(assert (=> start!137134 m!1710679))

(declare-fun m!1710681 () Bool)

(assert (=> start!137134 m!1710681))

(declare-fun m!1710683 () Bool)

(assert (=> b!1466063 m!1710683))

(declare-fun m!1710685 () Bool)

(assert (=> b!1466054 m!1710685))

(declare-fun m!1710687 () Bool)

(assert (=> b!1466054 m!1710687))

(declare-fun m!1710689 () Bool)

(assert (=> b!1466054 m!1710689))

(declare-fun m!1710691 () Bool)

(assert (=> b!1466062 m!1710691))

(declare-fun m!1710693 () Bool)

(assert (=> b!1466055 m!1710693))

(declare-fun m!1710695 () Bool)

(assert (=> b!1466058 m!1710695))

(declare-fun m!1710697 () Bool)

(assert (=> b!1466058 m!1710697))

(declare-fun m!1710699 () Bool)

(assert (=> b!1466058 m!1710699))

(declare-fun m!1710701 () Bool)

(assert (=> b!1466058 m!1710701))

(declare-fun m!1710703 () Bool)

(assert (=> b!1466058 m!1710703))

(declare-fun m!1710705 () Bool)

(assert (=> b!1466058 m!1710705))

(declare-fun m!1710707 () Bool)

(assert (=> b!1466058 m!1710707))

(declare-fun m!1710709 () Bool)

(assert (=> b!1466058 m!1710709))

(declare-fun m!1710711 () Bool)

(assert (=> b!1466058 m!1710711))

(check-sat (not b!1466055) (not b!1466057) (not b!1466059) (not b!1466062) (not b!1466058) (not start!137134) (not b!1466064) (not b!1466056) (not b!1466054) (not b!1466061) (not b!1466063))
(check-sat)

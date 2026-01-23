; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131400 () Bool)

(assert start!131400)

(declare-fun e!908920 () Bool)

(declare-fun e!908921 () Bool)

(declare-datatypes ((C!7968 0))(
  ( (C!7969 (val!4554 Int)) )
))
(declare-datatypes ((List!14813 0))(
  ( (Nil!14747) (Cons!14747 (h!20148 C!7968) (t!124656 List!14813)) )
))
(declare-datatypes ((IArray!9981 0))(
  ( (IArray!9982 (innerList!5048 List!14813)) )
))
(declare-datatypes ((Conc!4988 0))(
  ( (Node!4988 (left!12581 Conc!4988) (right!12911 Conc!4988) (csize!10206 Int) (cheight!5199 Int)) (Leaf!7480 (xs!7717 IArray!9981) (csize!10207 Int)) (Empty!4988) )
))
(declare-datatypes ((BalanceConc!9916 0))(
  ( (BalanceConc!9917 (c!234062 Conc!4988)) )
))
(declare-datatypes ((List!14814 0))(
  ( (Nil!14748) (Cons!14748 (h!20149 (_ BitVec 16)) (t!124657 List!14814)) )
))
(declare-datatypes ((TokenValue!2671 0))(
  ( (FloatLiteralValue!5342 (text!19142 List!14814)) (TokenValueExt!2670 (__x!9140 Int)) (Broken!13355 (value!83180 List!14814)) (Object!2736) (End!2671) (Def!2671) (Underscore!2671) (Match!2671) (Else!2671) (Error!2671) (Case!2671) (If!2671) (Extends!2671) (Abstract!2671) (Class!2671) (Val!2671) (DelimiterValue!5342 (del!2731 List!14814)) (KeywordValue!2677 (value!83181 List!14814)) (CommentValue!5342 (value!83182 List!14814)) (WhitespaceValue!5342 (value!83183 List!14814)) (IndentationValue!2671 (value!83184 List!14814)) (String!17610) (Int32!2671) (Broken!13356 (value!83185 List!14814)) (Boolean!2672) (Unit!22239) (OperatorValue!2674 (op!2731 List!14814)) (IdentifierValue!5342 (value!83186 List!14814)) (IdentifierValue!5343 (value!83187 List!14814)) (WhitespaceValue!5343 (value!83188 List!14814)) (True!5342) (False!5342) (Broken!13357 (value!83189 List!14814)) (Broken!13358 (value!83190 List!14814)) (True!5343) (RightBrace!2671) (RightBracket!2671) (Colon!2671) (Null!2671) (Comma!2671) (LeftBracket!2671) (False!5343) (LeftBrace!2671) (ImaginaryLiteralValue!2671 (text!19143 List!14814)) (StringLiteralValue!8013 (value!83191 List!14814)) (EOFValue!2671 (value!83192 List!14814)) (IdentValue!2671 (value!83193 List!14814)) (DelimiterValue!5343 (value!83194 List!14814)) (DedentValue!2671 (value!83195 List!14814)) (NewLineValue!2671 (value!83196 List!14814)) (IntegerValue!8013 (value!83197 (_ BitVec 32)) (text!19144 List!14814)) (IntegerValue!8014 (value!83198 Int) (text!19145 List!14814)) (Times!2671) (Or!2671) (Equal!2671) (Minus!2671) (Broken!13359 (value!83199 List!14814)) (And!2671) (Div!2671) (LessEqual!2671) (Mod!2671) (Concat!6566) (Not!2671) (Plus!2671) (SpaceValue!2671 (value!83200 List!14814)) (IntegerValue!8015 (value!83201 Int) (text!19146 List!14814)) (StringLiteralValue!8014 (text!19147 List!14814)) (FloatLiteralValue!5343 (text!19148 List!14814)) (BytesLiteralValue!2671 (value!83202 List!14814)) (CommentValue!5343 (value!83203 List!14814)) (StringLiteralValue!8015 (value!83204 List!14814)) (ErrorTokenValue!2671 (msg!2732 List!14814)) )
))
(declare-datatypes ((Regex!3895 0))(
  ( (ElementMatch!3895 (c!234063 C!7968)) (Concat!6567 (regOne!8302 Regex!3895) (regTwo!8302 Regex!3895)) (EmptyExpr!3895) (Star!3895 (reg!4224 Regex!3895)) (EmptyLang!3895) (Union!3895 (regOne!8303 Regex!3895) (regTwo!8303 Regex!3895)) )
))
(declare-datatypes ((String!17611 0))(
  ( (String!17612 (value!83205 String)) )
))
(declare-datatypes ((TokenValueInjection!5002 0))(
  ( (TokenValueInjection!5003 (toValue!3880 Int) (toChars!3739 Int)) )
))
(declare-datatypes ((Rule!4962 0))(
  ( (Rule!4963 (regex!2581 Regex!3895) (tag!2843 String!17611) (isSeparator!2581 Bool) (transformation!2581 TokenValueInjection!5002)) )
))
(declare-datatypes ((Token!4824 0))(
  ( (Token!4825 (value!83206 TokenValue!2671) (rule!4344 Rule!4962) (size!12120 Int) (originalCharacters!3443 List!14813)) )
))
(declare-datatypes ((List!14815 0))(
  ( (Nil!14749) (Cons!14749 (h!20150 Token!4824) (t!124658 List!14815)) )
))
(declare-datatypes ((IArray!9983 0))(
  ( (IArray!9984 (innerList!5049 List!14815)) )
))
(declare-datatypes ((Conc!4989 0))(
  ( (Node!4989 (left!12582 Conc!4989) (right!12912 Conc!4989) (csize!10208 Int) (cheight!5200 Int)) (Leaf!7481 (xs!7718 IArray!9983) (csize!10209 Int)) (Empty!4989) )
))
(declare-datatypes ((BalanceConc!9918 0))(
  ( (BalanceConc!9919 (c!234064 Conc!4989)) )
))
(declare-datatypes ((List!14816 0))(
  ( (Nil!14750) (Cons!14750 (h!20151 Rule!4962) (t!124659 List!14816)) )
))
(declare-datatypes ((PrintableTokens!944 0))(
  ( (PrintableTokens!945 (rules!11214 List!14816) (tokens!1906 BalanceConc!9918)) )
))
(declare-fun other!32 () PrintableTokens!944)

(declare-fun tp!403589 () Bool)

(declare-fun b!1423725 () Bool)

(declare-fun inv!19556 (BalanceConc!9918) Bool)

(assert (=> b!1423725 (= e!908920 (and tp!403589 (inv!19556 (tokens!1906 other!32)) e!908921))))

(declare-fun b!1423726 () Bool)

(declare-fun e!908917 () Bool)

(declare-fun e!908919 () Bool)

(assert (=> b!1423726 (= e!908917 (not e!908919))))

(declare-fun res!644654 () Bool)

(assert (=> b!1423726 (=> res!644654 e!908919)))

(declare-fun thiss!10022 () PrintableTokens!944)

(declare-fun isEmpty!9125 (List!14816) Bool)

(assert (=> b!1423726 (= res!644654 (isEmpty!9125 (rules!11214 thiss!10022)))))

(declare-fun lt!482651 () Token!4824)

(declare-fun head!2817 (BalanceConc!9918) Token!4824)

(assert (=> b!1423726 (= lt!482651 (head!2817 (tokens!1906 other!32)))))

(declare-fun lt!482655 () List!14815)

(declare-fun list!5855 (BalanceConc!9918) List!14815)

(assert (=> b!1423726 (= lt!482655 (list!5855 (tokens!1906 other!32)))))

(declare-fun lt!482654 () Token!4824)

(declare-datatypes ((LexerInterface!2245 0))(
  ( (LexerInterfaceExt!2242 (__x!9141 Int)) (Lexer!2243) )
))
(declare-fun rulesProduceIndividualToken!1178 (LexerInterface!2245 List!14816 Token!4824) Bool)

(assert (=> b!1423726 (rulesProduceIndividualToken!1178 Lexer!2243 (rules!11214 thiss!10022) lt!482654)))

(declare-datatypes ((Unit!22240 0))(
  ( (Unit!22241) )
))
(declare-fun lt!482652 () Unit!22240)

(declare-fun lt!482653 () List!14815)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!363 (LexerInterface!2245 List!14816 List!14815 Token!4824) Unit!22240)

(assert (=> b!1423726 (= lt!482652 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!363 Lexer!2243 (rules!11214 thiss!10022) lt!482653 lt!482654))))

(declare-fun last!95 (BalanceConc!9918) Token!4824)

(assert (=> b!1423726 (= lt!482654 (last!95 (tokens!1906 thiss!10022)))))

(assert (=> b!1423726 (= lt!482653 (list!5855 (tokens!1906 thiss!10022)))))

(declare-fun b!1423728 () Bool)

(declare-fun res!644651 () Bool)

(assert (=> b!1423728 (=> res!644651 e!908919)))

(declare-fun rulesInvariant!2097 (LexerInterface!2245 List!14816) Bool)

(assert (=> b!1423728 (= res!644651 (not (rulesInvariant!2097 Lexer!2243 (rules!11214 thiss!10022))))))

(declare-fun b!1423729 () Bool)

(declare-fun e!908916 () Bool)

(declare-fun tp!403588 () Bool)

(declare-fun inv!19557 (Conc!4989) Bool)

(assert (=> b!1423729 (= e!908916 (and (inv!19557 (c!234064 (tokens!1906 thiss!10022))) tp!403588))))

(declare-fun b!1423730 () Bool)

(declare-fun tp!403587 () Bool)

(assert (=> b!1423730 (= e!908921 (and (inv!19557 (c!234064 (tokens!1906 other!32))) tp!403587))))

(declare-fun b!1423731 () Bool)

(declare-fun res!644649 () Bool)

(assert (=> b!1423731 (=> (not res!644649) (not e!908917))))

(declare-fun isEmpty!9126 (BalanceConc!9918) Bool)

(assert (=> b!1423731 (= res!644649 (not (isEmpty!9126 (tokens!1906 thiss!10022))))))

(declare-fun b!1423732 () Bool)

(assert (=> b!1423732 (= e!908919 true)))

(declare-fun lt!482656 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!696 (LexerInterface!2245 List!14816 List!14815) Bool)

(assert (=> b!1423732 (= lt!482656 (rulesProduceEachTokenIndividuallyList!696 Lexer!2243 (rules!11214 thiss!10022) lt!482655))))

(declare-fun b!1423727 () Bool)

(declare-fun e!908918 () Bool)

(assert (=> b!1423727 (= e!908918 e!908917)))

(declare-fun res!644652 () Bool)

(assert (=> b!1423727 (=> (not res!644652) (not e!908917))))

(assert (=> b!1423727 (= res!644652 (not (isEmpty!9126 (tokens!1906 other!32))))))

(declare-fun lt!482657 () Unit!22240)

(declare-fun lemmaInvariant!277 (PrintableTokens!944) Unit!22240)

(assert (=> b!1423727 (= lt!482657 (lemmaInvariant!277 thiss!10022))))

(declare-fun lt!482658 () Unit!22240)

(assert (=> b!1423727 (= lt!482658 (lemmaInvariant!277 other!32))))

(declare-fun res!644650 () Bool)

(assert (=> start!131400 (=> (not res!644650) (not e!908918))))

(assert (=> start!131400 (= res!644650 (= (rules!11214 thiss!10022) (rules!11214 other!32)))))

(assert (=> start!131400 e!908918))

(declare-fun e!908915 () Bool)

(declare-fun inv!19558 (PrintableTokens!944) Bool)

(assert (=> start!131400 (and (inv!19558 thiss!10022) e!908915)))

(assert (=> start!131400 (and (inv!19558 other!32) e!908920)))

(declare-fun b!1423733 () Bool)

(declare-fun res!644653 () Bool)

(assert (=> b!1423733 (=> res!644653 e!908919)))

(declare-fun contains!2847 (List!14815 Token!4824) Bool)

(assert (=> b!1423733 (= res!644653 (not (contains!2847 lt!482655 lt!482651)))))

(declare-fun tp!403590 () Bool)

(declare-fun b!1423734 () Bool)

(assert (=> b!1423734 (= e!908915 (and tp!403590 (inv!19556 (tokens!1906 thiss!10022)) e!908916))))

(assert (= (and start!131400 res!644650) b!1423727))

(assert (= (and b!1423727 res!644652) b!1423731))

(assert (= (and b!1423731 res!644649) b!1423726))

(assert (= (and b!1423726 (not res!644654)) b!1423728))

(assert (= (and b!1423728 (not res!644651)) b!1423733))

(assert (= (and b!1423733 (not res!644653)) b!1423732))

(assert (= b!1423734 b!1423729))

(assert (= start!131400 b!1423734))

(assert (= b!1423725 b!1423730))

(assert (= start!131400 b!1423725))

(declare-fun m!1616961 () Bool)

(assert (=> b!1423729 m!1616961))

(declare-fun m!1616963 () Bool)

(assert (=> b!1423726 m!1616963))

(declare-fun m!1616965 () Bool)

(assert (=> b!1423726 m!1616965))

(declare-fun m!1616967 () Bool)

(assert (=> b!1423726 m!1616967))

(declare-fun m!1616969 () Bool)

(assert (=> b!1423726 m!1616969))

(declare-fun m!1616971 () Bool)

(assert (=> b!1423726 m!1616971))

(declare-fun m!1616973 () Bool)

(assert (=> b!1423726 m!1616973))

(declare-fun m!1616975 () Bool)

(assert (=> b!1423726 m!1616975))

(declare-fun m!1616977 () Bool)

(assert (=> b!1423730 m!1616977))

(declare-fun m!1616979 () Bool)

(assert (=> b!1423725 m!1616979))

(declare-fun m!1616981 () Bool)

(assert (=> start!131400 m!1616981))

(declare-fun m!1616983 () Bool)

(assert (=> start!131400 m!1616983))

(declare-fun m!1616985 () Bool)

(assert (=> b!1423733 m!1616985))

(declare-fun m!1616987 () Bool)

(assert (=> b!1423734 m!1616987))

(declare-fun m!1616989 () Bool)

(assert (=> b!1423732 m!1616989))

(declare-fun m!1616991 () Bool)

(assert (=> b!1423728 m!1616991))

(declare-fun m!1616993 () Bool)

(assert (=> b!1423727 m!1616993))

(declare-fun m!1616995 () Bool)

(assert (=> b!1423727 m!1616995))

(declare-fun m!1616997 () Bool)

(assert (=> b!1423727 m!1616997))

(declare-fun m!1616999 () Bool)

(assert (=> b!1423731 m!1616999))

(check-sat (not start!131400) (not b!1423728) (not b!1423727) (not b!1423726) (not b!1423733) (not b!1423732) (not b!1423731) (not b!1423734) (not b!1423729) (not b!1423730) (not b!1423725))
(check-sat)

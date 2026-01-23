; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131404 () Bool)

(assert start!131404)

(declare-fun b!1423770 () Bool)

(declare-fun res!644671 () Bool)

(declare-fun e!908955 () Bool)

(assert (=> b!1423770 (=> (not res!644671) (not e!908955))))

(declare-datatypes ((C!7972 0))(
  ( (C!7973 (val!4556 Int)) )
))
(declare-datatypes ((List!14821 0))(
  ( (Nil!14755) (Cons!14755 (h!20156 C!7972) (t!124664 List!14821)) )
))
(declare-datatypes ((IArray!9989 0))(
  ( (IArray!9990 (innerList!5052 List!14821)) )
))
(declare-datatypes ((Conc!4992 0))(
  ( (Node!4992 (left!12586 Conc!4992) (right!12916 Conc!4992) (csize!10214 Int) (cheight!5203 Int)) (Leaf!7485 (xs!7721 IArray!9989) (csize!10215 Int)) (Empty!4992) )
))
(declare-datatypes ((BalanceConc!9924 0))(
  ( (BalanceConc!9925 (c!234068 Conc!4992)) )
))
(declare-datatypes ((List!14822 0))(
  ( (Nil!14756) (Cons!14756 (h!20157 (_ BitVec 16)) (t!124665 List!14822)) )
))
(declare-datatypes ((TokenValue!2673 0))(
  ( (FloatLiteralValue!5346 (text!19156 List!14822)) (TokenValueExt!2672 (__x!9144 Int)) (Broken!13365 (value!83237 List!14822)) (Object!2738) (End!2673) (Def!2673) (Underscore!2673) (Match!2673) (Else!2673) (Error!2673) (Case!2673) (If!2673) (Extends!2673) (Abstract!2673) (Class!2673) (Val!2673) (DelimiterValue!5346 (del!2733 List!14822)) (KeywordValue!2679 (value!83238 List!14822)) (CommentValue!5346 (value!83239 List!14822)) (WhitespaceValue!5346 (value!83240 List!14822)) (IndentationValue!2673 (value!83241 List!14822)) (String!17620) (Int32!2673) (Broken!13366 (value!83242 List!14822)) (Boolean!2674) (Unit!22245) (OperatorValue!2676 (op!2733 List!14822)) (IdentifierValue!5346 (value!83243 List!14822)) (IdentifierValue!5347 (value!83244 List!14822)) (WhitespaceValue!5347 (value!83245 List!14822)) (True!5346) (False!5346) (Broken!13367 (value!83246 List!14822)) (Broken!13368 (value!83247 List!14822)) (True!5347) (RightBrace!2673) (RightBracket!2673) (Colon!2673) (Null!2673) (Comma!2673) (LeftBracket!2673) (False!5347) (LeftBrace!2673) (ImaginaryLiteralValue!2673 (text!19157 List!14822)) (StringLiteralValue!8019 (value!83248 List!14822)) (EOFValue!2673 (value!83249 List!14822)) (IdentValue!2673 (value!83250 List!14822)) (DelimiterValue!5347 (value!83251 List!14822)) (DedentValue!2673 (value!83252 List!14822)) (NewLineValue!2673 (value!83253 List!14822)) (IntegerValue!8019 (value!83254 (_ BitVec 32)) (text!19158 List!14822)) (IntegerValue!8020 (value!83255 Int) (text!19159 List!14822)) (Times!2673) (Or!2673) (Equal!2673) (Minus!2673) (Broken!13369 (value!83256 List!14822)) (And!2673) (Div!2673) (LessEqual!2673) (Mod!2673) (Concat!6570) (Not!2673) (Plus!2673) (SpaceValue!2673 (value!83257 List!14822)) (IntegerValue!8021 (value!83258 Int) (text!19160 List!14822)) (StringLiteralValue!8020 (text!19161 List!14822)) (FloatLiteralValue!5347 (text!19162 List!14822)) (BytesLiteralValue!2673 (value!83259 List!14822)) (CommentValue!5347 (value!83260 List!14822)) (StringLiteralValue!8021 (value!83261 List!14822)) (ErrorTokenValue!2673 (msg!2734 List!14822)) )
))
(declare-datatypes ((Regex!3897 0))(
  ( (ElementMatch!3897 (c!234069 C!7972)) (Concat!6571 (regOne!8306 Regex!3897) (regTwo!8306 Regex!3897)) (EmptyExpr!3897) (Star!3897 (reg!4226 Regex!3897)) (EmptyLang!3897) (Union!3897 (regOne!8307 Regex!3897) (regTwo!8307 Regex!3897)) )
))
(declare-datatypes ((String!17621 0))(
  ( (String!17622 (value!83262 String)) )
))
(declare-datatypes ((TokenValueInjection!5006 0))(
  ( (TokenValueInjection!5007 (toValue!3882 Int) (toChars!3741 Int)) )
))
(declare-datatypes ((Rule!4966 0))(
  ( (Rule!4967 (regex!2583 Regex!3897) (tag!2845 String!17621) (isSeparator!2583 Bool) (transformation!2583 TokenValueInjection!5006)) )
))
(declare-datatypes ((Token!4828 0))(
  ( (Token!4829 (value!83263 TokenValue!2673) (rule!4346 Rule!4966) (size!12122 Int) (originalCharacters!3445 List!14821)) )
))
(declare-datatypes ((List!14823 0))(
  ( (Nil!14757) (Cons!14757 (h!20158 Token!4828) (t!124666 List!14823)) )
))
(declare-datatypes ((IArray!9991 0))(
  ( (IArray!9992 (innerList!5053 List!14823)) )
))
(declare-datatypes ((Conc!4993 0))(
  ( (Node!4993 (left!12587 Conc!4993) (right!12917 Conc!4993) (csize!10216 Int) (cheight!5204 Int)) (Leaf!7486 (xs!7722 IArray!9991) (csize!10217 Int)) (Empty!4993) )
))
(declare-datatypes ((BalanceConc!9926 0))(
  ( (BalanceConc!9927 (c!234070 Conc!4993)) )
))
(declare-datatypes ((List!14824 0))(
  ( (Nil!14758) (Cons!14758 (h!20159 Rule!4966) (t!124667 List!14824)) )
))
(declare-datatypes ((PrintableTokens!948 0))(
  ( (PrintableTokens!949 (rules!11216 List!14824) (tokens!1908 BalanceConc!9926)) )
))
(declare-fun thiss!10022 () PrintableTokens!948)

(declare-fun isEmpty!9128 (BalanceConc!9926) Bool)

(assert (=> b!1423770 (= res!644671 (not (isEmpty!9128 (tokens!1908 thiss!10022))))))

(declare-fun tp!403613 () Bool)

(declare-fun e!908953 () Bool)

(declare-fun e!908956 () Bool)

(declare-fun b!1423771 () Bool)

(declare-fun inv!19565 (BalanceConc!9926) Bool)

(assert (=> b!1423771 (= e!908956 (and tp!403613 (inv!19565 (tokens!1908 thiss!10022)) e!908953))))

(declare-fun b!1423772 () Bool)

(declare-fun tp!403612 () Bool)

(declare-fun inv!19566 (Conc!4993) Bool)

(assert (=> b!1423772 (= e!908953 (and (inv!19566 (c!234070 (tokens!1908 thiss!10022))) tp!403612))))

(declare-fun b!1423773 () Bool)

(declare-fun e!908952 () Bool)

(declare-fun other!32 () PrintableTokens!948)

(declare-fun tp!403614 () Bool)

(assert (=> b!1423773 (= e!908952 (and (inv!19566 (c!234070 (tokens!1908 other!32))) tp!403614))))

(declare-fun res!644670 () Bool)

(declare-fun e!908957 () Bool)

(assert (=> start!131404 (=> (not res!644670) (not e!908957))))

(assert (=> start!131404 (= res!644670 (= (rules!11216 thiss!10022) (rules!11216 other!32)))))

(assert (=> start!131404 e!908957))

(declare-fun inv!19567 (PrintableTokens!948) Bool)

(assert (=> start!131404 (and (inv!19567 thiss!10022) e!908956)))

(declare-fun e!908954 () Bool)

(assert (=> start!131404 (and (inv!19567 other!32) e!908954)))

(declare-fun b!1423774 () Bool)

(assert (=> b!1423774 (= e!908957 e!908955)))

(declare-fun res!644672 () Bool)

(assert (=> b!1423774 (=> (not res!644672) (not e!908955))))

(assert (=> b!1423774 (= res!644672 (not (isEmpty!9128 (tokens!1908 other!32))))))

(declare-datatypes ((Unit!22246 0))(
  ( (Unit!22247) )
))
(declare-fun lt!482703 () Unit!22246)

(declare-fun lemmaInvariant!279 (PrintableTokens!948) Unit!22246)

(assert (=> b!1423774 (= lt!482703 (lemmaInvariant!279 thiss!10022))))

(declare-fun lt!482704 () Unit!22246)

(assert (=> b!1423774 (= lt!482704 (lemmaInvariant!279 other!32))))

(declare-fun b!1423775 () Bool)

(declare-fun tp!403611 () Bool)

(assert (=> b!1423775 (= e!908954 (and tp!403611 (inv!19565 (tokens!1908 other!32)) e!908952))))

(declare-fun b!1423776 () Bool)

(assert (=> b!1423776 (= e!908955 (not true))))

(declare-fun lt!482699 () Token!4828)

(declare-datatypes ((LexerInterface!2247 0))(
  ( (LexerInterfaceExt!2244 (__x!9145 Int)) (Lexer!2245) )
))
(declare-fun rulesProduceIndividualToken!1180 (LexerInterface!2247 List!14824 Token!4828) Bool)

(assert (=> b!1423776 (rulesProduceIndividualToken!1180 Lexer!2245 (rules!11216 thiss!10022) lt!482699)))

(declare-fun lt!482700 () Unit!22246)

(declare-fun lt!482701 () List!14823)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!365 (LexerInterface!2247 List!14824 List!14823 Token!4828) Unit!22246)

(assert (=> b!1423776 (= lt!482700 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!365 Lexer!2245 (rules!11216 thiss!10022) lt!482701 lt!482699))))

(declare-fun head!2819 (BalanceConc!9926) Token!4828)

(assert (=> b!1423776 (= lt!482699 (head!2819 (tokens!1908 other!32)))))

(declare-fun list!5857 (BalanceConc!9926) List!14823)

(assert (=> b!1423776 (= lt!482701 (list!5857 (tokens!1908 other!32)))))

(declare-fun lt!482706 () Token!4828)

(assert (=> b!1423776 (rulesProduceIndividualToken!1180 Lexer!2245 (rules!11216 thiss!10022) lt!482706)))

(declare-fun lt!482705 () Unit!22246)

(declare-fun lt!482702 () List!14823)

(assert (=> b!1423776 (= lt!482705 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!365 Lexer!2245 (rules!11216 thiss!10022) lt!482702 lt!482706))))

(declare-fun last!97 (BalanceConc!9926) Token!4828)

(assert (=> b!1423776 (= lt!482706 (last!97 (tokens!1908 thiss!10022)))))

(assert (=> b!1423776 (= lt!482702 (list!5857 (tokens!1908 thiss!10022)))))

(assert (= (and start!131404 res!644670) b!1423774))

(assert (= (and b!1423774 res!644672) b!1423770))

(assert (= (and b!1423770 res!644671) b!1423776))

(assert (= b!1423771 b!1423772))

(assert (= start!131404 b!1423771))

(assert (= b!1423775 b!1423773))

(assert (= start!131404 b!1423775))

(declare-fun m!1617037 () Bool)

(assert (=> b!1423772 m!1617037))

(declare-fun m!1617039 () Bool)

(assert (=> b!1423776 m!1617039))

(declare-fun m!1617041 () Bool)

(assert (=> b!1423776 m!1617041))

(declare-fun m!1617043 () Bool)

(assert (=> b!1423776 m!1617043))

(declare-fun m!1617045 () Bool)

(assert (=> b!1423776 m!1617045))

(declare-fun m!1617047 () Bool)

(assert (=> b!1423776 m!1617047))

(declare-fun m!1617049 () Bool)

(assert (=> b!1423776 m!1617049))

(declare-fun m!1617051 () Bool)

(assert (=> b!1423776 m!1617051))

(declare-fun m!1617053 () Bool)

(assert (=> b!1423776 m!1617053))

(declare-fun m!1617055 () Bool)

(assert (=> b!1423773 m!1617055))

(declare-fun m!1617057 () Bool)

(assert (=> b!1423774 m!1617057))

(declare-fun m!1617059 () Bool)

(assert (=> b!1423774 m!1617059))

(declare-fun m!1617061 () Bool)

(assert (=> b!1423774 m!1617061))

(declare-fun m!1617063 () Bool)

(assert (=> b!1423770 m!1617063))

(declare-fun m!1617065 () Bool)

(assert (=> start!131404 m!1617065))

(declare-fun m!1617067 () Bool)

(assert (=> start!131404 m!1617067))

(declare-fun m!1617069 () Bool)

(assert (=> b!1423771 m!1617069))

(declare-fun m!1617071 () Bool)

(assert (=> b!1423775 m!1617071))

(check-sat (not b!1423772) (not b!1423774) (not start!131404) (not b!1423775) (not b!1423773) (not b!1423771) (not b!1423776) (not b!1423770))
(check-sat)

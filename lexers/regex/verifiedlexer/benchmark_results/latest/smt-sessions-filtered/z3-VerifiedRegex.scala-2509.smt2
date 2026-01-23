; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132828 () Bool)

(assert start!132828)

(declare-fun res!649371 () Bool)

(declare-fun e!915389 () Bool)

(assert (=> start!132828 (=> (not res!649371) (not e!915389))))

(declare-datatypes ((C!8040 0))(
  ( (C!8041 (val!4590 Int)) )
))
(declare-datatypes ((List!14970 0))(
  ( (Nil!14904) (Cons!14904 (h!20305 C!8040) (t!127213 List!14970)) )
))
(declare-datatypes ((IArray!10125 0))(
  ( (IArray!10126 (innerList!5120 List!14970)) )
))
(declare-datatypes ((Conc!5060 0))(
  ( (Node!5060 (left!12703 Conc!5060) (right!13033 Conc!5060) (csize!10350 Int) (cheight!5271 Int)) (Leaf!7570 (xs!7793 IArray!10125) (csize!10351 Int)) (Empty!5060) )
))
(declare-datatypes ((BalanceConc!10060 0))(
  ( (BalanceConc!10061 (c!235634 Conc!5060)) )
))
(declare-datatypes ((List!14971 0))(
  ( (Nil!14905) (Cons!14905 (h!20306 (_ BitVec 16)) (t!127214 List!14971)) )
))
(declare-datatypes ((TokenValue!2707 0))(
  ( (FloatLiteralValue!5414 (text!19394 List!14971)) (TokenValueExt!2706 (__x!9212 Int)) (Broken!13535 (value!84206 List!14971)) (Object!2772) (End!2707) (Def!2707) (Underscore!2707) (Match!2707) (Else!2707) (Error!2707) (Case!2707) (If!2707) (Extends!2707) (Abstract!2707) (Class!2707) (Val!2707) (DelimiterValue!5414 (del!2767 List!14971)) (KeywordValue!2713 (value!84207 List!14971)) (CommentValue!5414 (value!84208 List!14971)) (WhitespaceValue!5414 (value!84209 List!14971)) (IndentationValue!2707 (value!84210 List!14971)) (String!17790) (Int32!2707) (Broken!13536 (value!84211 List!14971)) (Boolean!2708) (Unit!22750) (OperatorValue!2710 (op!2767 List!14971)) (IdentifierValue!5414 (value!84212 List!14971)) (IdentifierValue!5415 (value!84213 List!14971)) (WhitespaceValue!5415 (value!84214 List!14971)) (True!5414) (False!5414) (Broken!13537 (value!84215 List!14971)) (Broken!13538 (value!84216 List!14971)) (True!5415) (RightBrace!2707) (RightBracket!2707) (Colon!2707) (Null!2707) (Comma!2707) (LeftBracket!2707) (False!5415) (LeftBrace!2707) (ImaginaryLiteralValue!2707 (text!19395 List!14971)) (StringLiteralValue!8121 (value!84217 List!14971)) (EOFValue!2707 (value!84218 List!14971)) (IdentValue!2707 (value!84219 List!14971)) (DelimiterValue!5415 (value!84220 List!14971)) (DedentValue!2707 (value!84221 List!14971)) (NewLineValue!2707 (value!84222 List!14971)) (IntegerValue!8121 (value!84223 (_ BitVec 32)) (text!19396 List!14971)) (IntegerValue!8122 (value!84224 Int) (text!19397 List!14971)) (Times!2707) (Or!2707) (Equal!2707) (Minus!2707) (Broken!13539 (value!84225 List!14971)) (And!2707) (Div!2707) (LessEqual!2707) (Mod!2707) (Concat!6638) (Not!2707) (Plus!2707) (SpaceValue!2707 (value!84226 List!14971)) (IntegerValue!8123 (value!84227 Int) (text!19398 List!14971)) (StringLiteralValue!8122 (text!19399 List!14971)) (FloatLiteralValue!5415 (text!19400 List!14971)) (BytesLiteralValue!2707 (value!84228 List!14971)) (CommentValue!5415 (value!84229 List!14971)) (StringLiteralValue!8123 (value!84230 List!14971)) (ErrorTokenValue!2707 (msg!2768 List!14971)) )
))
(declare-datatypes ((Regex!3931 0))(
  ( (ElementMatch!3931 (c!235635 C!8040)) (Concat!6639 (regOne!8374 Regex!3931) (regTwo!8374 Regex!3931)) (EmptyExpr!3931) (Star!3931 (reg!4260 Regex!3931)) (EmptyLang!3931) (Union!3931 (regOne!8375 Regex!3931) (regTwo!8375 Regex!3931)) )
))
(declare-datatypes ((String!17791 0))(
  ( (String!17792 (value!84231 String)) )
))
(declare-datatypes ((TokenValueInjection!5074 0))(
  ( (TokenValueInjection!5075 (toValue!3920 Int) (toChars!3779 Int)) )
))
(declare-datatypes ((Rule!5034 0))(
  ( (Rule!5035 (regex!2617 Regex!3931) (tag!2879 String!17791) (isSeparator!2617 Bool) (transformation!2617 TokenValueInjection!5074)) )
))
(declare-datatypes ((Token!4896 0))(
  ( (Token!4897 (value!84232 TokenValue!2707) (rule!4380 Rule!5034) (size!12229 Int) (originalCharacters!3479 List!14970)) )
))
(declare-datatypes ((List!14972 0))(
  ( (Nil!14906) (Cons!14906 (h!20307 Token!4896) (t!127215 List!14972)) )
))
(declare-datatypes ((IArray!10127 0))(
  ( (IArray!10128 (innerList!5121 List!14972)) )
))
(declare-datatypes ((Conc!5061 0))(
  ( (Node!5061 (left!12704 Conc!5061) (right!13034 Conc!5061) (csize!10352 Int) (cheight!5272 Int)) (Leaf!7571 (xs!7794 IArray!10127) (csize!10353 Int)) (Empty!5061) )
))
(declare-datatypes ((BalanceConc!10062 0))(
  ( (BalanceConc!10063 (c!235636 Conc!5061)) )
))
(declare-datatypes ((List!14973 0))(
  ( (Nil!14907) (Cons!14907 (h!20308 Rule!5034) (t!127216 List!14973)) )
))
(declare-datatypes ((PrintableTokens!1016 0))(
  ( (PrintableTokens!1017 (rules!11398 List!14973) (tokens!1978 BalanceConc!10062)) )
))
(declare-fun thiss!10022 () PrintableTokens!1016)

(declare-fun other!32 () PrintableTokens!1016)

(assert (=> start!132828 (= res!649371 (= (rules!11398 thiss!10022) (rules!11398 other!32)))))

(assert (=> start!132828 e!915389))

(declare-fun e!915390 () Bool)

(declare-fun inv!19801 (PrintableTokens!1016) Bool)

(assert (=> start!132828 (and (inv!19801 thiss!10022) e!915390)))

(declare-fun e!915388 () Bool)

(assert (=> start!132828 (and (inv!19801 other!32) e!915388)))

(declare-fun e!915385 () Bool)

(declare-fun tp!406318 () Bool)

(declare-fun b!1433979 () Bool)

(declare-fun inv!19802 (BalanceConc!10062) Bool)

(assert (=> b!1433979 (= e!915388 (and tp!406318 (inv!19802 (tokens!1978 other!32)) e!915385))))

(declare-fun b!1433980 () Bool)

(declare-fun res!649373 () Bool)

(declare-fun e!915391 () Bool)

(assert (=> b!1433980 (=> (not res!649373) (not e!915391))))

(declare-fun isEmpty!9263 (BalanceConc!10062) Bool)

(assert (=> b!1433980 (= res!649373 (not (isEmpty!9263 (tokens!1978 thiss!10022))))))

(declare-fun b!1433981 () Bool)

(declare-fun res!649375 () Bool)

(declare-fun e!915386 () Bool)

(assert (=> b!1433981 (=> res!649375 e!915386)))

(assert (=> b!1433981 (= res!649375 true)))

(declare-fun b!1433982 () Bool)

(assert (=> b!1433982 (= e!915389 e!915391)))

(declare-fun res!649374 () Bool)

(assert (=> b!1433982 (=> (not res!649374) (not e!915391))))

(assert (=> b!1433982 (= res!649374 (not (isEmpty!9263 (tokens!1978 other!32))))))

(declare-datatypes ((Unit!22751 0))(
  ( (Unit!22752) )
))
(declare-fun lt!489042 () Unit!22751)

(declare-fun lemmaInvariant!313 (PrintableTokens!1016) Unit!22751)

(assert (=> b!1433982 (= lt!489042 (lemmaInvariant!313 thiss!10022))))

(declare-fun lt!489045 () Unit!22751)

(assert (=> b!1433982 (= lt!489045 (lemmaInvariant!313 other!32))))

(declare-fun b!1433983 () Bool)

(declare-fun e!915387 () Bool)

(declare-fun tp!406317 () Bool)

(declare-fun inv!19803 (Conc!5061) Bool)

(assert (=> b!1433983 (= e!915387 (and (inv!19803 (c!235636 (tokens!1978 thiss!10022))) tp!406317))))

(declare-fun b!1433984 () Bool)

(assert (=> b!1433984 (= e!915386 false)))

(declare-fun b!1433985 () Bool)

(declare-fun tp!406320 () Bool)

(assert (=> b!1433985 (= e!915385 (and (inv!19803 (c!235636 (tokens!1978 other!32))) tp!406320))))

(declare-fun b!1433986 () Bool)

(declare-fun res!649370 () Bool)

(assert (=> b!1433986 (=> res!649370 e!915386)))

(declare-datatypes ((Option!2845 0))(
  ( (None!2844) (Some!2844 (v!22346 PrintableTokens!1016)) )
))
(declare-fun get!4562 (Option!2845) PrintableTokens!1016)

(assert (=> b!1433986 (= res!649370 (not (= (rules!11398 (get!4562 None!2844)) (rules!11398 thiss!10022))))))

(declare-fun b!1433987 () Bool)

(assert (=> b!1433987 (= e!915391 (not e!915386))))

(declare-fun res!649372 () Bool)

(assert (=> b!1433987 (=> res!649372 e!915386)))

(declare-fun lt!489040 () Token!4896)

(declare-fun lt!489044 () Token!4896)

(declare-datatypes ((LexerInterface!2281 0))(
  ( (LexerInterfaceExt!2278 (__x!9213 Int)) (Lexer!2279) )
))
(declare-fun separableTokensPredicate!516 (LexerInterface!2281 Token!4896 Token!4896 List!14973) Bool)

(assert (=> b!1433987 (= res!649372 (separableTokensPredicate!516 Lexer!2279 lt!489040 lt!489044 (rules!11398 thiss!10022)))))

(declare-fun rulesProduceIndividualToken!1214 (LexerInterface!2281 List!14973 Token!4896) Bool)

(assert (=> b!1433987 (rulesProduceIndividualToken!1214 Lexer!2279 (rules!11398 thiss!10022) lt!489044)))

(declare-fun lt!489046 () List!14972)

(declare-fun lt!489043 () Unit!22751)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!399 (LexerInterface!2281 List!14973 List!14972 Token!4896) Unit!22751)

(assert (=> b!1433987 (= lt!489043 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!399 Lexer!2279 (rules!11398 thiss!10022) lt!489046 lt!489044))))

(declare-fun head!2901 (BalanceConc!10062) Token!4896)

(assert (=> b!1433987 (= lt!489044 (head!2901 (tokens!1978 other!32)))))

(declare-fun list!5926 (BalanceConc!10062) List!14972)

(assert (=> b!1433987 (= lt!489046 (list!5926 (tokens!1978 other!32)))))

(assert (=> b!1433987 (rulesProduceIndividualToken!1214 Lexer!2279 (rules!11398 thiss!10022) lt!489040)))

(declare-fun lt!489041 () List!14972)

(declare-fun lt!489039 () Unit!22751)

(assert (=> b!1433987 (= lt!489039 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!399 Lexer!2279 (rules!11398 thiss!10022) lt!489041 lt!489040))))

(declare-fun last!171 (BalanceConc!10062) Token!4896)

(assert (=> b!1433987 (= lt!489040 (last!171 (tokens!1978 thiss!10022)))))

(assert (=> b!1433987 (= lt!489041 (list!5926 (tokens!1978 thiss!10022)))))

(declare-fun tp!406319 () Bool)

(declare-fun b!1433988 () Bool)

(assert (=> b!1433988 (= e!915390 (and tp!406319 (inv!19802 (tokens!1978 thiss!10022)) e!915387))))

(assert (= (and start!132828 res!649371) b!1433982))

(assert (= (and b!1433982 res!649374) b!1433980))

(assert (= (and b!1433980 res!649373) b!1433987))

(assert (= (and b!1433987 (not res!649372)) b!1433981))

(assert (= (and b!1433981 (not res!649375)) b!1433986))

(assert (= (and b!1433986 (not res!649370)) b!1433984))

(assert (= b!1433988 b!1433983))

(assert (= start!132828 b!1433988))

(assert (= b!1433979 b!1433985))

(assert (= start!132828 b!1433979))

(declare-fun m!1636805 () Bool)

(assert (=> b!1433988 m!1636805))

(declare-fun m!1636807 () Bool)

(assert (=> b!1433983 m!1636807))

(declare-fun m!1636809 () Bool)

(assert (=> b!1433979 m!1636809))

(declare-fun m!1636811 () Bool)

(assert (=> b!1433985 m!1636811))

(declare-fun m!1636813 () Bool)

(assert (=> b!1433980 m!1636813))

(declare-fun m!1636815 () Bool)

(assert (=> b!1433987 m!1636815))

(declare-fun m!1636817 () Bool)

(assert (=> b!1433987 m!1636817))

(declare-fun m!1636819 () Bool)

(assert (=> b!1433987 m!1636819))

(declare-fun m!1636821 () Bool)

(assert (=> b!1433987 m!1636821))

(declare-fun m!1636823 () Bool)

(assert (=> b!1433987 m!1636823))

(declare-fun m!1636825 () Bool)

(assert (=> b!1433987 m!1636825))

(declare-fun m!1636827 () Bool)

(assert (=> b!1433987 m!1636827))

(declare-fun m!1636829 () Bool)

(assert (=> b!1433987 m!1636829))

(declare-fun m!1636831 () Bool)

(assert (=> b!1433987 m!1636831))

(declare-fun m!1636833 () Bool)

(assert (=> b!1433982 m!1636833))

(declare-fun m!1636835 () Bool)

(assert (=> b!1433982 m!1636835))

(declare-fun m!1636837 () Bool)

(assert (=> b!1433982 m!1636837))

(declare-fun m!1636839 () Bool)

(assert (=> start!132828 m!1636839))

(declare-fun m!1636841 () Bool)

(assert (=> start!132828 m!1636841))

(declare-fun m!1636843 () Bool)

(assert (=> b!1433986 m!1636843))

(check-sat (not b!1433986) (not b!1433988) (not b!1433980) (not b!1433987) (not b!1433983) (not b!1433979) (not start!132828) (not b!1433985) (not b!1433982))
(check-sat)

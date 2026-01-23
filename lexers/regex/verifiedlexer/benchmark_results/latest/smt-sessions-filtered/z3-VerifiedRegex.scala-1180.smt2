; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61046 () Bool)

(assert start!61046)

(declare-fun b!629241 () Bool)

(assert (=> b!629241 true))

(declare-fun e!381788 () Bool)

(assert (=> b!629241 (= e!381788 false)))

(declare-fun lambda!16650 () Int)

(declare-fun lt!267270 () Bool)

(declare-datatypes ((List!6524 0))(
  ( (Nil!6510) (Cons!6510 (h!11911 (_ BitVec 16)) (t!82799 List!6524)) )
))
(declare-datatypes ((TokenValue!1365 0))(
  ( (FloatLiteralValue!2730 (text!10000 List!6524)) (TokenValueExt!1364 (__x!4618 Int)) (Broken!6825 (value!43058 List!6524)) (Object!1378) (End!1365) (Def!1365) (Underscore!1365) (Match!1365) (Else!1365) (Error!1365) (Case!1365) (If!1365) (Extends!1365) (Abstract!1365) (Class!1365) (Val!1365) (DelimiterValue!2730 (del!1425 List!6524)) (KeywordValue!1371 (value!43059 List!6524)) (CommentValue!2730 (value!43060 List!6524)) (WhitespaceValue!2730 (value!43061 List!6524)) (IndentationValue!1365 (value!43062 List!6524)) (String!8560) (Int32!1365) (Broken!6826 (value!43063 List!6524)) (Boolean!1366) (Unit!11557) (OperatorValue!1368 (op!1425 List!6524)) (IdentifierValue!2730 (value!43064 List!6524)) (IdentifierValue!2731 (value!43065 List!6524)) (WhitespaceValue!2731 (value!43066 List!6524)) (True!2730) (False!2730) (Broken!6827 (value!43067 List!6524)) (Broken!6828 (value!43068 List!6524)) (True!2731) (RightBrace!1365) (RightBracket!1365) (Colon!1365) (Null!1365) (Comma!1365) (LeftBracket!1365) (False!2731) (LeftBrace!1365) (ImaginaryLiteralValue!1365 (text!10001 List!6524)) (StringLiteralValue!4095 (value!43069 List!6524)) (EOFValue!1365 (value!43070 List!6524)) (IdentValue!1365 (value!43071 List!6524)) (DelimiterValue!2731 (value!43072 List!6524)) (DedentValue!1365 (value!43073 List!6524)) (NewLineValue!1365 (value!43074 List!6524)) (IntegerValue!4095 (value!43075 (_ BitVec 32)) (text!10002 List!6524)) (IntegerValue!4096 (value!43076 Int) (text!10003 List!6524)) (Times!1365) (Or!1365) (Equal!1365) (Minus!1365) (Broken!6829 (value!43077 List!6524)) (And!1365) (Div!1365) (LessEqual!1365) (Mod!1365) (Concat!3030) (Not!1365) (Plus!1365) (SpaceValue!1365 (value!43078 List!6524)) (IntegerValue!4097 (value!43079 Int) (text!10004 List!6524)) (StringLiteralValue!4096 (text!10005 List!6524)) (FloatLiteralValue!2731 (text!10006 List!6524)) (BytesLiteralValue!1365 (value!43080 List!6524)) (CommentValue!2731 (value!43081 List!6524)) (StringLiteralValue!4097 (value!43082 List!6524)) (ErrorTokenValue!1365 (msg!1426 List!6524)) )
))
(declare-datatypes ((Regex!1665 0))(
  ( (ElementMatch!1665 (c!115586 (_ BitVec 16))) (Concat!3031 (regOne!3842 Regex!1665) (regTwo!3842 Regex!1665)) (EmptyExpr!1665) (Star!1665 (reg!1994 Regex!1665)) (EmptyLang!1665) (Union!1665 (regOne!3843 Regex!1665) (regTwo!3843 Regex!1665)) )
))
(declare-datatypes ((String!8561 0))(
  ( (String!8562 (value!43083 String)) )
))
(declare-datatypes ((IArray!4249 0))(
  ( (IArray!4250 (innerList!2182 List!6524)) )
))
(declare-datatypes ((Conc!2124 0))(
  ( (Node!2124 (left!5210 Conc!2124) (right!5540 Conc!2124) (csize!4478 Int) (cheight!2335 Int)) (Leaf!3305 (xs!4765 IArray!4249) (csize!4479 Int)) (Empty!2124) )
))
(declare-datatypes ((BalanceConc!4260 0))(
  ( (BalanceConc!4261 (c!115587 Conc!2124)) )
))
(declare-datatypes ((TokenValueInjection!2482 0))(
  ( (TokenValueInjection!2483 (toValue!2272 Int) (toChars!2131 Int)) )
))
(declare-datatypes ((Rule!2462 0))(
  ( (Rule!2463 (regex!1331 Regex!1665) (tag!1593 String!8561) (isSeparator!1331 Bool) (transformation!1331 TokenValueInjection!2482)) )
))
(declare-datatypes ((Token!2386 0))(
  ( (Token!2387 (value!43084 TokenValue!1365) (rule!2127 Rule!2462) (size!5094 Int) (originalCharacters!1364 List!6524)) )
))
(declare-datatypes ((List!6525 0))(
  ( (Nil!6511) (Cons!6511 (h!11912 Token!2386) (t!82800 List!6525)) )
))
(declare-datatypes ((IArray!4251 0))(
  ( (IArray!4252 (innerList!2183 List!6525)) )
))
(declare-datatypes ((Conc!2125 0))(
  ( (Node!2125 (left!5211 Conc!2125) (right!5541 Conc!2125) (csize!4480 Int) (cheight!2336 Int)) (Leaf!3306 (xs!4766 IArray!4251) (csize!4481 Int)) (Empty!2125) )
))
(declare-datatypes ((List!6526 0))(
  ( (Nil!6512) (Cons!6512 (h!11913 Rule!2462) (t!82801 List!6526)) )
))
(declare-datatypes ((BalanceConc!4262 0))(
  ( (BalanceConc!4263 (c!115588 Conc!2125)) )
))
(declare-datatypes ((PrintableTokens!44 0))(
  ( (PrintableTokens!45 (rules!8117 List!6526) (tokens!1148 BalanceConc!4262)) )
))
(declare-fun printableTokens!2 () PrintableTokens!44)

(declare-fun lt!267272 () Int)

(declare-datatypes ((List!6527 0))(
  ( (Nil!6513) (Cons!6513 (h!11914 Int) (t!82802 List!6527)) )
))
(declare-datatypes ((IArray!4253 0))(
  ( (IArray!4254 (innerList!2184 List!6527)) )
))
(declare-datatypes ((Conc!2126 0))(
  ( (Node!2126 (left!5212 Conc!2126) (right!5542 Conc!2126) (csize!4482 Int) (cheight!2337 Int)) (Leaf!3307 (xs!4767 IArray!4253) (csize!4483 Int)) (Empty!2126) )
))
(declare-datatypes ((BalanceConc!4264 0))(
  ( (BalanceConc!4265 (c!115589 Conc!2126)) )
))
(declare-fun forall!1591 (BalanceConc!4264 Int) Bool)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4262 Int Int BalanceConc!4264) BalanceConc!4264)

(assert (=> b!629241 (= lt!267270 (forall!1591 (indicesOfOpenBraces!0 (tokens!1148 printableTokens!2) lt!267272 0 (BalanceConc!4265 Empty!2126)) lambda!16650))))

(declare-fun b!629242 () Bool)

(declare-fun e!381787 () Bool)

(declare-fun tp!196393 () Bool)

(declare-fun inv!8394 (Conc!2125) Bool)

(assert (=> b!629242 (= e!381787 (and (inv!8394 (c!115588 (tokens!1148 printableTokens!2))) tp!196393))))

(declare-fun b!629243 () Bool)

(declare-fun res!272811 () Bool)

(assert (=> b!629243 (=> (not res!272811) (not e!381788))))

(declare-fun usesJsonRules!0 (PrintableTokens!44) Bool)

(assert (=> b!629243 (= res!272811 (usesJsonRules!0 printableTokens!2))))

(declare-fun tp!196392 () Bool)

(declare-fun b!629244 () Bool)

(declare-fun e!381786 () Bool)

(declare-fun inv!8395 (BalanceConc!4262) Bool)

(assert (=> b!629244 (= e!381786 (and tp!196392 (inv!8395 (tokens!1148 printableTokens!2)) e!381787))))

(declare-fun b!629245 () Bool)

(declare-fun e!381785 () Bool)

(assert (=> b!629245 (= e!381785 e!381788)))

(declare-fun res!272812 () Bool)

(assert (=> b!629245 (=> (not res!272812) (not e!381788))))

(declare-fun lt!267271 () List!6526)

(declare-fun isEmpty!4604 (List!6526) Bool)

(assert (=> b!629245 (= res!272812 (not (isEmpty!4604 lt!267271)))))

(declare-datatypes ((JsonLexer!118 0))(
  ( (JsonLexer!119) )
))
(declare-fun rules!109 (JsonLexer!118) List!6526)

(assert (=> b!629245 (= lt!267271 (rules!109 JsonLexer!119))))

(declare-fun res!272814 () Bool)

(assert (=> start!61046 (=> (not res!272814) (not e!381785))))

(assert (=> start!61046 (= res!272814 (> lt!267272 0))))

(declare-fun size!5095 (PrintableTokens!44) Int)

(assert (=> start!61046 (= lt!267272 (size!5095 printableTokens!2))))

(assert (=> start!61046 e!381785))

(declare-fun inv!8396 (PrintableTokens!44) Bool)

(assert (=> start!61046 (and (inv!8396 printableTokens!2) e!381786)))

(declare-fun b!629246 () Bool)

(declare-fun res!272813 () Bool)

(assert (=> b!629246 (=> (not res!272813) (not e!381788))))

(declare-datatypes ((LexerInterface!1217 0))(
  ( (LexerInterfaceExt!1214 (__x!4619 Int)) (Lexer!1215) )
))
(declare-fun rulesInvariant!1152 (LexerInterface!1217 List!6526) Bool)

(assert (=> b!629246 (= res!272813 (rulesInvariant!1152 Lexer!1215 lt!267271))))

(assert (= (and start!61046 res!272814) b!629245))

(assert (= (and b!629245 res!272812) b!629246))

(assert (= (and b!629246 res!272813) b!629243))

(assert (= (and b!629243 res!272811) b!629241))

(assert (= b!629244 b!629242))

(assert (= start!61046 b!629244))

(declare-fun m!897689 () Bool)

(assert (=> start!61046 m!897689))

(declare-fun m!897691 () Bool)

(assert (=> start!61046 m!897691))

(declare-fun m!897693 () Bool)

(assert (=> b!629243 m!897693))

(declare-fun m!897695 () Bool)

(assert (=> b!629241 m!897695))

(assert (=> b!629241 m!897695))

(declare-fun m!897697 () Bool)

(assert (=> b!629241 m!897697))

(declare-fun m!897699 () Bool)

(assert (=> b!629246 m!897699))

(declare-fun m!897701 () Bool)

(assert (=> b!629244 m!897701))

(declare-fun m!897703 () Bool)

(assert (=> b!629245 m!897703))

(declare-fun m!897705 () Bool)

(assert (=> b!629245 m!897705))

(declare-fun m!897707 () Bool)

(assert (=> b!629242 m!897707))

(check-sat (not b!629244) (not start!61046) (not b!629246) (not b!629243) (not b!629241) (not b!629242) (not b!629245))
(check-sat)

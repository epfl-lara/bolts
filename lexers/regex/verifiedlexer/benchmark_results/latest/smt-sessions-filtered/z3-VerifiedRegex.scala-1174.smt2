; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60758 () Bool)

(assert start!60758)

(declare-fun res!272370 () Bool)

(declare-fun e!381211 () Bool)

(assert (=> start!60758 (=> (not res!272370) (not e!381211))))

(declare-datatypes ((List!6476 0))(
  ( (Nil!6462) (Cons!6462 (h!11863 (_ BitVec 16)) (t!82557 List!6476)) )
))
(declare-datatypes ((TokenValue!1353 0))(
  ( (FloatLiteralValue!2706 (text!9916 List!6476)) (TokenValueExt!1352 (__x!4595 Int)) (Broken!6765 (value!42716 List!6476)) (Object!1366) (End!1353) (Def!1353) (Underscore!1353) (Match!1353) (Else!1353) (Error!1353) (Case!1353) (If!1353) (Extends!1353) (Abstract!1353) (Class!1353) (Val!1353) (DelimiterValue!2706 (del!1413 List!6476)) (KeywordValue!1359 (value!42717 List!6476)) (CommentValue!2706 (value!42718 List!6476)) (WhitespaceValue!2706 (value!42719 List!6476)) (IndentationValue!1353 (value!42720 List!6476)) (String!8500) (Int32!1353) (Broken!6766 (value!42721 List!6476)) (Boolean!1354) (Unit!11541) (OperatorValue!1356 (op!1413 List!6476)) (IdentifierValue!2706 (value!42722 List!6476)) (IdentifierValue!2707 (value!42723 List!6476)) (WhitespaceValue!2707 (value!42724 List!6476)) (True!2706) (False!2706) (Broken!6767 (value!42725 List!6476)) (Broken!6768 (value!42726 List!6476)) (True!2707) (RightBrace!1353) (RightBracket!1353) (Colon!1353) (Null!1353) (Comma!1353) (LeftBracket!1353) (False!2707) (LeftBrace!1353) (ImaginaryLiteralValue!1353 (text!9917 List!6476)) (StringLiteralValue!4059 (value!42727 List!6476)) (EOFValue!1353 (value!42728 List!6476)) (IdentValue!1353 (value!42729 List!6476)) (DelimiterValue!2707 (value!42730 List!6476)) (DedentValue!1353 (value!42731 List!6476)) (NewLineValue!1353 (value!42732 List!6476)) (IntegerValue!4059 (value!42733 (_ BitVec 32)) (text!9918 List!6476)) (IntegerValue!4060 (value!42734 Int) (text!9919 List!6476)) (Times!1353) (Or!1353) (Equal!1353) (Minus!1353) (Broken!6769 (value!42735 List!6476)) (And!1353) (Div!1353) (LessEqual!1353) (Mod!1353) (Concat!3006) (Not!1353) (Plus!1353) (SpaceValue!1353 (value!42736 List!6476)) (IntegerValue!4061 (value!42737 Int) (text!9920 List!6476)) (StringLiteralValue!4060 (text!9921 List!6476)) (FloatLiteralValue!2707 (text!9922 List!6476)) (BytesLiteralValue!1353 (value!42738 List!6476)) (CommentValue!2707 (value!42739 List!6476)) (StringLiteralValue!4061 (value!42740 List!6476)) (ErrorTokenValue!1353 (msg!1414 List!6476)) )
))
(declare-datatypes ((Regex!1653 0))(
  ( (ElementMatch!1653 (c!115488 (_ BitVec 16))) (Concat!3007 (regOne!3818 Regex!1653) (regTwo!3818 Regex!1653)) (EmptyExpr!1653) (Star!1653 (reg!1982 Regex!1653)) (EmptyLang!1653) (Union!1653 (regOne!3819 Regex!1653) (regTwo!3819 Regex!1653)) )
))
(declare-datatypes ((String!8501 0))(
  ( (String!8502 (value!42741 String)) )
))
(declare-datatypes ((IArray!4187 0))(
  ( (IArray!4188 (innerList!2151 List!6476)) )
))
(declare-datatypes ((Conc!2093 0))(
  ( (Node!2093 (left!5161 Conc!2093) (right!5491 Conc!2093) (csize!4416 Int) (cheight!2304 Int)) (Leaf!3268 (xs!4734 IArray!4187) (csize!4417 Int)) (Empty!2093) )
))
(declare-datatypes ((BalanceConc!4198 0))(
  ( (BalanceConc!4199 (c!115489 Conc!2093)) )
))
(declare-datatypes ((TokenValueInjection!2458 0))(
  ( (TokenValueInjection!2459 (toValue!2260 Int) (toChars!2119 Int)) )
))
(declare-datatypes ((Rule!2438 0))(
  ( (Rule!2439 (regex!1319 Regex!1653) (tag!1581 String!8501) (isSeparator!1319 Bool) (transformation!1319 TokenValueInjection!2458)) )
))
(declare-datatypes ((Token!2362 0))(
  ( (Token!2363 (value!42742 TokenValue!1353) (rule!2115 Rule!2438) (size!5053 Int) (originalCharacters!1352 List!6476)) )
))
(declare-datatypes ((List!6477 0))(
  ( (Nil!6463) (Cons!6463 (h!11864 Token!2362) (t!82558 List!6477)) )
))
(declare-datatypes ((IArray!4189 0))(
  ( (IArray!4190 (innerList!2152 List!6477)) )
))
(declare-datatypes ((Conc!2094 0))(
  ( (Node!2094 (left!5162 Conc!2094) (right!5492 Conc!2094) (csize!4418 Int) (cheight!2305 Int)) (Leaf!3269 (xs!4735 IArray!4189) (csize!4419 Int)) (Empty!2094) )
))
(declare-datatypes ((List!6478 0))(
  ( (Nil!6464) (Cons!6464 (h!11865 Rule!2438) (t!82559 List!6478)) )
))
(declare-datatypes ((BalanceConc!4200 0))(
  ( (BalanceConc!4201 (c!115490 Conc!2094)) )
))
(declare-datatypes ((PrintableTokens!20 0))(
  ( (PrintableTokens!21 (rules!8094 List!6478) (tokens!1134 BalanceConc!4200)) )
))
(declare-fun printableTokens!2 () PrintableTokens!20)

(declare-fun size!5054 (PrintableTokens!20) Int)

(assert (=> start!60758 (= res!272370 (> (size!5054 printableTokens!2) 0))))

(assert (=> start!60758 e!381211))

(declare-fun e!381212 () Bool)

(declare-fun inv!8319 (PrintableTokens!20) Bool)

(assert (=> start!60758 (and (inv!8319 printableTokens!2) e!381212)))

(declare-fun b!628404 () Bool)

(assert (=> b!628404 (= e!381211 false)))

(declare-fun lt!267101 () List!6478)

(declare-datatypes ((JsonLexer!94 0))(
  ( (JsonLexer!95) )
))
(declare-fun rules!109 (JsonLexer!94) List!6478)

(assert (=> b!628404 (= lt!267101 (rules!109 JsonLexer!95))))

(declare-fun b!628406 () Bool)

(declare-fun e!381213 () Bool)

(declare-fun tp!196141 () Bool)

(declare-fun inv!8320 (Conc!2094) Bool)

(assert (=> b!628406 (= e!381213 (and (inv!8320 (c!115490 (tokens!1134 printableTokens!2))) tp!196141))))

(declare-fun b!628405 () Bool)

(declare-fun tp!196140 () Bool)

(declare-fun inv!8321 (BalanceConc!4200) Bool)

(assert (=> b!628405 (= e!381212 (and tp!196140 (inv!8321 (tokens!1134 printableTokens!2)) e!381213))))

(assert (= (and start!60758 res!272370) b!628404))

(assert (= b!628405 b!628406))

(assert (= start!60758 b!628405))

(declare-fun m!896737 () Bool)

(assert (=> start!60758 m!896737))

(declare-fun m!896739 () Bool)

(assert (=> start!60758 m!896739))

(declare-fun m!896741 () Bool)

(assert (=> b!628404 m!896741))

(declare-fun m!896743 () Bool)

(assert (=> b!628406 m!896743))

(declare-fun m!896745 () Bool)

(assert (=> b!628405 m!896745))

(check-sat (not b!628404) (not start!60758) (not b!628405) (not b!628406))
(check-sat)

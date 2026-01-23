; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132836 () Bool)

(assert start!132836)

(declare-fun b!1434080 () Bool)

(declare-fun e!915468 () Bool)

(declare-datatypes ((C!8048 0))(
  ( (C!8049 (val!4594 Int)) )
))
(declare-datatypes ((List!14986 0))(
  ( (Nil!14920) (Cons!14920 (h!20321 C!8048) (t!127229 List!14986)) )
))
(declare-datatypes ((IArray!10141 0))(
  ( (IArray!10142 (innerList!5128 List!14986)) )
))
(declare-datatypes ((Conc!5068 0))(
  ( (Node!5068 (left!12713 Conc!5068) (right!13043 Conc!5068) (csize!10366 Int) (cheight!5279 Int)) (Leaf!7580 (xs!7801 IArray!10141) (csize!10367 Int)) (Empty!5068) )
))
(declare-datatypes ((BalanceConc!10076 0))(
  ( (BalanceConc!10077 (c!235646 Conc!5068)) )
))
(declare-datatypes ((List!14987 0))(
  ( (Nil!14921) (Cons!14921 (h!20322 (_ BitVec 16)) (t!127230 List!14987)) )
))
(declare-datatypes ((TokenValue!2711 0))(
  ( (FloatLiteralValue!5422 (text!19422 List!14987)) (TokenValueExt!2710 (__x!9219 Int)) (Broken!13555 (value!84320 List!14987)) (Object!2776) (End!2711) (Def!2711) (Underscore!2711) (Match!2711) (Else!2711) (Error!2711) (Case!2711) (If!2711) (Extends!2711) (Abstract!2711) (Class!2711) (Val!2711) (DelimiterValue!5422 (del!2771 List!14987)) (KeywordValue!2717 (value!84321 List!14987)) (CommentValue!5422 (value!84322 List!14987)) (WhitespaceValue!5422 (value!84323 List!14987)) (IndentationValue!2711 (value!84324 List!14987)) (String!17810) (Int32!2711) (Broken!13556 (value!84325 List!14987)) (Boolean!2712) (Unit!22762) (OperatorValue!2714 (op!2771 List!14987)) (IdentifierValue!5422 (value!84326 List!14987)) (IdentifierValue!5423 (value!84327 List!14987)) (WhitespaceValue!5423 (value!84328 List!14987)) (True!5422) (False!5422) (Broken!13557 (value!84329 List!14987)) (Broken!13558 (value!84330 List!14987)) (True!5423) (RightBrace!2711) (RightBracket!2711) (Colon!2711) (Null!2711) (Comma!2711) (LeftBracket!2711) (False!5423) (LeftBrace!2711) (ImaginaryLiteralValue!2711 (text!19423 List!14987)) (StringLiteralValue!8133 (value!84331 List!14987)) (EOFValue!2711 (value!84332 List!14987)) (IdentValue!2711 (value!84333 List!14987)) (DelimiterValue!5423 (value!84334 List!14987)) (DedentValue!2711 (value!84335 List!14987)) (NewLineValue!2711 (value!84336 List!14987)) (IntegerValue!8133 (value!84337 (_ BitVec 32)) (text!19424 List!14987)) (IntegerValue!8134 (value!84338 Int) (text!19425 List!14987)) (Times!2711) (Or!2711) (Equal!2711) (Minus!2711) (Broken!13559 (value!84339 List!14987)) (And!2711) (Div!2711) (LessEqual!2711) (Mod!2711) (Concat!6646) (Not!2711) (Plus!2711) (SpaceValue!2711 (value!84340 List!14987)) (IntegerValue!8135 (value!84341 Int) (text!19426 List!14987)) (StringLiteralValue!8134 (text!19427 List!14987)) (FloatLiteralValue!5423 (text!19428 List!14987)) (BytesLiteralValue!2711 (value!84342 List!14987)) (CommentValue!5423 (value!84343 List!14987)) (StringLiteralValue!8135 (value!84344 List!14987)) (ErrorTokenValue!2711 (msg!2772 List!14987)) )
))
(declare-datatypes ((Regex!3935 0))(
  ( (ElementMatch!3935 (c!235647 C!8048)) (Concat!6647 (regOne!8382 Regex!3935) (regTwo!8382 Regex!3935)) (EmptyExpr!3935) (Star!3935 (reg!4264 Regex!3935)) (EmptyLang!3935) (Union!3935 (regOne!8383 Regex!3935) (regTwo!8383 Regex!3935)) )
))
(declare-datatypes ((String!17811 0))(
  ( (String!17812 (value!84345 String)) )
))
(declare-datatypes ((TokenValueInjection!5082 0))(
  ( (TokenValueInjection!5083 (toValue!3924 Int) (toChars!3783 Int)) )
))
(declare-datatypes ((Rule!5042 0))(
  ( (Rule!5043 (regex!2621 Regex!3935) (tag!2883 String!17811) (isSeparator!2621 Bool) (transformation!2621 TokenValueInjection!5082)) )
))
(declare-datatypes ((Token!4904 0))(
  ( (Token!4905 (value!84346 TokenValue!2711) (rule!4384 Rule!5042) (size!12233 Int) (originalCharacters!3483 List!14986)) )
))
(declare-datatypes ((List!14988 0))(
  ( (Nil!14922) (Cons!14922 (h!20323 Token!4904) (t!127231 List!14988)) )
))
(declare-datatypes ((IArray!10143 0))(
  ( (IArray!10144 (innerList!5129 List!14988)) )
))
(declare-datatypes ((Conc!5069 0))(
  ( (Node!5069 (left!12714 Conc!5069) (right!13044 Conc!5069) (csize!10368 Int) (cheight!5280 Int)) (Leaf!7581 (xs!7802 IArray!10143) (csize!10369 Int)) (Empty!5069) )
))
(declare-datatypes ((BalanceConc!10078 0))(
  ( (BalanceConc!10079 (c!235648 Conc!5069)) )
))
(declare-datatypes ((List!14989 0))(
  ( (Nil!14923) (Cons!14923 (h!20324 Rule!5042) (t!127232 List!14989)) )
))
(declare-datatypes ((PrintableTokens!1024 0))(
  ( (PrintableTokens!1025 (rules!11402 List!14989) (tokens!1982 BalanceConc!10078)) )
))
(declare-fun thiss!10022 () PrintableTokens!1024)

(declare-fun tp!406368 () Bool)

(declare-fun inv!19819 (Conc!5069) Bool)

(assert (=> b!1434080 (= e!915468 (and (inv!19819 (c!235648 (tokens!1982 thiss!10022))) tp!406368))))

(declare-fun b!1434082 () Bool)

(declare-fun e!915466 () Bool)

(declare-fun other!32 () PrintableTokens!1024)

(declare-fun tp!406367 () Bool)

(assert (=> b!1434082 (= e!915466 (and (inv!19819 (c!235648 (tokens!1982 other!32))) tp!406367))))

(declare-fun res!649423 () Bool)

(declare-fun e!915469 () Bool)

(assert (=> start!132836 (=> (not res!649423) (not e!915469))))

(assert (=> start!132836 (= res!649423 (= (rules!11402 thiss!10022) (rules!11402 other!32)))))

(assert (=> start!132836 e!915469))

(declare-fun e!915467 () Bool)

(declare-fun inv!19820 (PrintableTokens!1024) Bool)

(assert (=> start!132836 (and (inv!19820 thiss!10022) e!915467)))

(declare-fun e!915465 () Bool)

(assert (=> start!132836 (and (inv!19820 other!32) e!915465)))

(declare-fun tp!406365 () Bool)

(declare-fun b!1434081 () Bool)

(declare-fun inv!19821 (BalanceConc!10078) Bool)

(assert (=> b!1434081 (= e!915465 (and tp!406365 (inv!19821 (tokens!1982 other!32)) e!915466))))

(declare-fun b!1434083 () Bool)

(declare-fun tp!406366 () Bool)

(assert (=> b!1434083 (= e!915467 (and tp!406366 (inv!19821 (tokens!1982 thiss!10022)) e!915468))))

(declare-fun b!1434084 () Bool)

(assert (=> b!1434084 (= e!915469 false)))

(declare-fun lt!489117 () Bool)

(declare-fun isEmpty!9267 (BalanceConc!10078) Bool)

(assert (=> b!1434084 (= lt!489117 (isEmpty!9267 (tokens!1982 other!32)))))

(declare-datatypes ((Unit!22763 0))(
  ( (Unit!22764) )
))
(declare-fun lt!489118 () Unit!22763)

(declare-fun lemmaInvariant!317 (PrintableTokens!1024) Unit!22763)

(assert (=> b!1434084 (= lt!489118 (lemmaInvariant!317 thiss!10022))))

(declare-fun lt!489116 () Unit!22763)

(assert (=> b!1434084 (= lt!489116 (lemmaInvariant!317 other!32))))

(assert (= (and start!132836 res!649423) b!1434084))

(assert (= b!1434083 b!1434080))

(assert (= start!132836 b!1434083))

(assert (= b!1434081 b!1434082))

(assert (= start!132836 b!1434081))

(declare-fun m!1636951 () Bool)

(assert (=> b!1434081 m!1636951))

(declare-fun m!1636953 () Bool)

(assert (=> b!1434080 m!1636953))

(declare-fun m!1636955 () Bool)

(assert (=> start!132836 m!1636955))

(declare-fun m!1636957 () Bool)

(assert (=> start!132836 m!1636957))

(declare-fun m!1636959 () Bool)

(assert (=> b!1434082 m!1636959))

(declare-fun m!1636961 () Bool)

(assert (=> b!1434083 m!1636961))

(declare-fun m!1636963 () Bool)

(assert (=> b!1434084 m!1636963))

(declare-fun m!1636965 () Bool)

(assert (=> b!1434084 m!1636965))

(declare-fun m!1636967 () Bool)

(assert (=> b!1434084 m!1636967))

(check-sat (not start!132836) (not b!1434084) (not b!1434082) (not b!1434080) (not b!1434083) (not b!1434081))
(check-sat)

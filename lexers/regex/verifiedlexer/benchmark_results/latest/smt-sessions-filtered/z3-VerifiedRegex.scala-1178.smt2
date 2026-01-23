; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60998 () Bool)

(assert start!60998)

(declare-fun b!629029 () Bool)

(declare-fun e!381649 () Bool)

(assert (=> b!629029 (= e!381649 false)))

(declare-datatypes ((List!6507 0))(
  ( (Nil!6493) (Cons!6493 (h!11894 Int) (t!82722 List!6507)) )
))
(declare-datatypes ((IArray!4225 0))(
  ( (IArray!4226 (innerList!2170 List!6507)) )
))
(declare-datatypes ((Conc!2112 0))(
  ( (Node!2112 (left!5188 Conc!2112) (right!5518 Conc!2112) (csize!4454 Int) (cheight!2323 Int)) (Leaf!3291 (xs!4753 IArray!4225) (csize!4455 Int)) (Empty!2112) )
))
(declare-datatypes ((BalanceConc!4236 0))(
  ( (BalanceConc!4237 (c!115546 Conc!2112)) )
))
(declare-fun lt!267218 () BalanceConc!4236)

(declare-datatypes ((List!6508 0))(
  ( (Nil!6494) (Cons!6494 (h!11895 (_ BitVec 16)) (t!82723 List!6508)) )
))
(declare-datatypes ((TokenValue!1361 0))(
  ( (FloatLiteralValue!2722 (text!9972 List!6508)) (TokenValueExt!1360 (__x!4610 Int)) (Broken!6805 (value!42944 List!6508)) (Object!1374) (End!1361) (Def!1361) (Underscore!1361) (Match!1361) (Else!1361) (Error!1361) (Case!1361) (If!1361) (Extends!1361) (Abstract!1361) (Class!1361) (Val!1361) (DelimiterValue!2722 (del!1421 List!6508)) (KeywordValue!1367 (value!42945 List!6508)) (CommentValue!2722 (value!42946 List!6508)) (WhitespaceValue!2722 (value!42947 List!6508)) (IndentationValue!1361 (value!42948 List!6508)) (String!8540) (Int32!1361) (Broken!6806 (value!42949 List!6508)) (Boolean!1362) (Unit!11551) (OperatorValue!1364 (op!1421 List!6508)) (IdentifierValue!2722 (value!42950 List!6508)) (IdentifierValue!2723 (value!42951 List!6508)) (WhitespaceValue!2723 (value!42952 List!6508)) (True!2722) (False!2722) (Broken!6807 (value!42953 List!6508)) (Broken!6808 (value!42954 List!6508)) (True!2723) (RightBrace!1361) (RightBracket!1361) (Colon!1361) (Null!1361) (Comma!1361) (LeftBracket!1361) (False!2723) (LeftBrace!1361) (ImaginaryLiteralValue!1361 (text!9973 List!6508)) (StringLiteralValue!4083 (value!42955 List!6508)) (EOFValue!1361 (value!42956 List!6508)) (IdentValue!1361 (value!42957 List!6508)) (DelimiterValue!2723 (value!42958 List!6508)) (DedentValue!1361 (value!42959 List!6508)) (NewLineValue!1361 (value!42960 List!6508)) (IntegerValue!4083 (value!42961 (_ BitVec 32)) (text!9974 List!6508)) (IntegerValue!4084 (value!42962 Int) (text!9975 List!6508)) (Times!1361) (Or!1361) (Equal!1361) (Minus!1361) (Broken!6809 (value!42963 List!6508)) (And!1361) (Div!1361) (LessEqual!1361) (Mod!1361) (Concat!3022) (Not!1361) (Plus!1361) (SpaceValue!1361 (value!42964 List!6508)) (IntegerValue!4085 (value!42965 Int) (text!9976 List!6508)) (StringLiteralValue!4084 (text!9977 List!6508)) (FloatLiteralValue!2723 (text!9978 List!6508)) (BytesLiteralValue!1361 (value!42966 List!6508)) (CommentValue!2723 (value!42967 List!6508)) (StringLiteralValue!4085 (value!42968 List!6508)) (ErrorTokenValue!1361 (msg!1422 List!6508)) )
))
(declare-datatypes ((Regex!1661 0))(
  ( (ElementMatch!1661 (c!115547 (_ BitVec 16))) (Concat!3023 (regOne!3834 Regex!1661) (regTwo!3834 Regex!1661)) (EmptyExpr!1661) (Star!1661 (reg!1990 Regex!1661)) (EmptyLang!1661) (Union!1661 (regOne!3835 Regex!1661) (regTwo!3835 Regex!1661)) )
))
(declare-datatypes ((String!8541 0))(
  ( (String!8542 (value!42969 String)) )
))
(declare-datatypes ((IArray!4227 0))(
  ( (IArray!4228 (innerList!2171 List!6508)) )
))
(declare-datatypes ((Conc!2113 0))(
  ( (Node!2113 (left!5189 Conc!2113) (right!5519 Conc!2113) (csize!4456 Int) (cheight!2324 Int)) (Leaf!3292 (xs!4754 IArray!4227) (csize!4457 Int)) (Empty!2113) )
))
(declare-datatypes ((BalanceConc!4238 0))(
  ( (BalanceConc!4239 (c!115548 Conc!2113)) )
))
(declare-datatypes ((TokenValueInjection!2474 0))(
  ( (TokenValueInjection!2475 (toValue!2268 Int) (toChars!2127 Int)) )
))
(declare-datatypes ((Rule!2454 0))(
  ( (Rule!2455 (regex!1327 Regex!1661) (tag!1589 String!8541) (isSeparator!1327 Bool) (transformation!1327 TokenValueInjection!2474)) )
))
(declare-datatypes ((Token!2378 0))(
  ( (Token!2379 (value!42970 TokenValue!1361) (rule!2123 Rule!2454) (size!5083 Int) (originalCharacters!1360 List!6508)) )
))
(declare-datatypes ((List!6509 0))(
  ( (Nil!6495) (Cons!6495 (h!11896 Token!2378) (t!82724 List!6509)) )
))
(declare-datatypes ((IArray!4229 0))(
  ( (IArray!4230 (innerList!2172 List!6509)) )
))
(declare-datatypes ((Conc!2114 0))(
  ( (Node!2114 (left!5190 Conc!2114) (right!5520 Conc!2114) (csize!4458 Int) (cheight!2325 Int)) (Leaf!3293 (xs!4755 IArray!4229) (csize!4459 Int)) (Empty!2114) )
))
(declare-datatypes ((List!6510 0))(
  ( (Nil!6496) (Cons!6496 (h!11897 Rule!2454) (t!82725 List!6510)) )
))
(declare-datatypes ((BalanceConc!4240 0))(
  ( (BalanceConc!4241 (c!115549 Conc!2114)) )
))
(declare-datatypes ((PrintableTokens!36 0))(
  ( (PrintableTokens!37 (rules!8111 List!6510) (tokens!1144 BalanceConc!4240)) )
))
(declare-fun printableTokens!2 () PrintableTokens!36)

(declare-fun lt!267216 () Int)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4240 Int Int BalanceConc!4236) BalanceConc!4236)

(assert (=> b!629029 (= lt!267218 (indicesOfOpenBraces!0 (tokens!1144 printableTokens!2) lt!267216 0 (BalanceConc!4237 Empty!2112)))))

(declare-fun res!272717 () Bool)

(declare-fun e!381650 () Bool)

(assert (=> start!60998 (=> (not res!272717) (not e!381650))))

(assert (=> start!60998 (= res!272717 (> lt!267216 0))))

(declare-fun size!5084 (PrintableTokens!36) Int)

(assert (=> start!60998 (= lt!267216 (size!5084 printableTokens!2))))

(assert (=> start!60998 e!381650))

(declare-fun e!381648 () Bool)

(declare-fun inv!8372 (PrintableTokens!36) Bool)

(assert (=> start!60998 (and (inv!8372 printableTokens!2) e!381648)))

(declare-fun b!629030 () Bool)

(assert (=> b!629030 (= e!381650 e!381649)))

(declare-fun res!272718 () Bool)

(assert (=> b!629030 (=> (not res!272718) (not e!381649))))

(declare-fun lt!267217 () List!6510)

(declare-fun isEmpty!4600 (List!6510) Bool)

(assert (=> b!629030 (= res!272718 (not (isEmpty!4600 lt!267217)))))

(declare-datatypes ((JsonLexer!110 0))(
  ( (JsonLexer!111) )
))
(declare-fun rules!109 (JsonLexer!110) List!6510)

(assert (=> b!629030 (= lt!267217 (rules!109 JsonLexer!111))))

(declare-fun b!629031 () Bool)

(declare-fun res!272719 () Bool)

(assert (=> b!629031 (=> (not res!272719) (not e!381649))))

(declare-fun usesJsonRules!0 (PrintableTokens!36) Bool)

(assert (=> b!629031 (= res!272719 (usesJsonRules!0 printableTokens!2))))

(declare-fun tp!196332 () Bool)

(declare-fun b!629032 () Bool)

(declare-fun e!381647 () Bool)

(declare-fun inv!8373 (BalanceConc!4240) Bool)

(assert (=> b!629032 (= e!381648 (and tp!196332 (inv!8373 (tokens!1144 printableTokens!2)) e!381647))))

(declare-fun b!629033 () Bool)

(declare-fun res!272720 () Bool)

(assert (=> b!629033 (=> (not res!272720) (not e!381649))))

(declare-datatypes ((LexerInterface!1213 0))(
  ( (LexerInterfaceExt!1210 (__x!4611 Int)) (Lexer!1211) )
))
(declare-fun rulesInvariant!1148 (LexerInterface!1213 List!6510) Bool)

(assert (=> b!629033 (= res!272720 (rulesInvariant!1148 Lexer!1211 lt!267217))))

(declare-fun b!629034 () Bool)

(declare-fun tp!196333 () Bool)

(declare-fun inv!8374 (Conc!2114) Bool)

(assert (=> b!629034 (= e!381647 (and (inv!8374 (c!115549 (tokens!1144 printableTokens!2))) tp!196333))))

(assert (= (and start!60998 res!272717) b!629030))

(assert (= (and b!629030 res!272718) b!629033))

(assert (= (and b!629033 res!272720) b!629031))

(assert (= (and b!629031 res!272719) b!629029))

(assert (= b!629032 b!629034))

(assert (= start!60998 b!629032))

(declare-fun m!897469 () Bool)

(assert (=> b!629034 m!897469))

(declare-fun m!897471 () Bool)

(assert (=> b!629030 m!897471))

(declare-fun m!897473 () Bool)

(assert (=> b!629030 m!897473))

(declare-fun m!897475 () Bool)

(assert (=> b!629033 m!897475))

(declare-fun m!897477 () Bool)

(assert (=> b!629029 m!897477))

(declare-fun m!897479 () Bool)

(assert (=> start!60998 m!897479))

(declare-fun m!897481 () Bool)

(assert (=> start!60998 m!897481))

(declare-fun m!897483 () Bool)

(assert (=> b!629032 m!897483))

(declare-fun m!897485 () Bool)

(assert (=> b!629031 m!897485))

(check-sat (not b!629032) (not b!629029) (not b!629034) (not b!629031) (not b!629033) (not start!60998) (not b!629030))
(check-sat)

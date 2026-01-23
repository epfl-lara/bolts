; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!5364 () Bool)

(assert start!5364)

(declare-fun b!73884 () Bool)

(declare-fun b_free!2245 () Bool)

(declare-fun b_next!2245 () Bool)

(assert (=> b!73884 (= b_free!2245 (not b_next!2245))))

(declare-fun tp!48587 () Bool)

(declare-fun b_and!3271 () Bool)

(assert (=> b!73884 (= tp!48587 b_and!3271)))

(declare-fun b_free!2247 () Bool)

(declare-fun b_next!2247 () Bool)

(assert (=> b!73884 (= b_free!2247 (not b_next!2247))))

(declare-fun tp!48584 () Bool)

(declare-fun b_and!3273 () Bool)

(assert (=> b!73884 (= tp!48584 b_and!3273)))

(declare-fun b!73879 () Bool)

(declare-fun res!38714 () Bool)

(declare-fun e!40971 () Bool)

(assert (=> b!73879 (=> (not res!38714) (not e!40971))))

(declare-datatypes ((LexerInterface!150 0))(
  ( (LexerInterfaceExt!147 (__x!1591 Int)) (Lexer!148) )
))
(declare-fun thiss!19403 () LexerInterface!150)

(declare-datatypes ((C!1574 0))(
  ( (C!1575 (val!394 Int)) )
))
(declare-datatypes ((List!1200 0))(
  ( (Nil!1194) (Cons!1194 (h!6591 C!1574) (t!19903 List!1200)) )
))
(declare-datatypes ((IArray!641 0))(
  ( (IArray!642 (innerList!378 List!1200)) )
))
(declare-datatypes ((Conc!320 0))(
  ( (Node!320 (left!914 Conc!320) (right!1244 Conc!320) (csize!870 Int) (cheight!531 Int)) (Leaf!585 (xs!2899 IArray!641) (csize!871 Int)) (Empty!320) )
))
(declare-datatypes ((BalanceConc!644 0))(
  ( (BalanceConc!645 (c!19300 Conc!320)) )
))
(declare-datatypes ((Regex!326 0))(
  ( (ElementMatch!326 (c!19301 C!1574)) (Concat!574 (regOne!1164 Regex!326) (regTwo!1164 Regex!326)) (EmptyExpr!326) (Star!326 (reg!655 Regex!326)) (EmptyLang!326) (Union!326 (regOne!1165 Regex!326) (regTwo!1165 Regex!326)) )
))
(declare-datatypes ((String!1633 0))(
  ( (String!1634 (value!10226 String)) )
))
(declare-datatypes ((List!1201 0))(
  ( (Nil!1195) (Cons!1195 (h!6592 (_ BitVec 16)) (t!19904 List!1201)) )
))
(declare-datatypes ((TokenValue!248 0))(
  ( (FloatLiteralValue!496 (text!2181 List!1201)) (TokenValueExt!247 (__x!1592 Int)) (Broken!1240 (value!10227 List!1201)) (Object!253) (End!248) (Def!248) (Underscore!248) (Match!248) (Else!248) (Error!248) (Case!248) (If!248) (Extends!248) (Abstract!248) (Class!248) (Val!248) (DelimiterValue!496 (del!308 List!1201)) (KeywordValue!254 (value!10228 List!1201)) (CommentValue!496 (value!10229 List!1201)) (WhitespaceValue!496 (value!10230 List!1201)) (IndentationValue!248 (value!10231 List!1201)) (String!1635) (Int32!248) (Broken!1241 (value!10232 List!1201)) (Boolean!249) (Unit!714) (OperatorValue!251 (op!308 List!1201)) (IdentifierValue!496 (value!10233 List!1201)) (IdentifierValue!497 (value!10234 List!1201)) (WhitespaceValue!497 (value!10235 List!1201)) (True!496) (False!496) (Broken!1242 (value!10236 List!1201)) (Broken!1243 (value!10237 List!1201)) (True!497) (RightBrace!248) (RightBracket!248) (Colon!248) (Null!248) (Comma!248) (LeftBracket!248) (False!497) (LeftBrace!248) (ImaginaryLiteralValue!248 (text!2182 List!1201)) (StringLiteralValue!744 (value!10238 List!1201)) (EOFValue!248 (value!10239 List!1201)) (IdentValue!248 (value!10240 List!1201)) (DelimiterValue!497 (value!10241 List!1201)) (DedentValue!248 (value!10242 List!1201)) (NewLineValue!248 (value!10243 List!1201)) (IntegerValue!744 (value!10244 (_ BitVec 32)) (text!2183 List!1201)) (IntegerValue!745 (value!10245 Int) (text!2184 List!1201)) (Times!248) (Or!248) (Equal!248) (Minus!248) (Broken!1244 (value!10246 List!1201)) (And!248) (Div!248) (LessEqual!248) (Mod!248) (Concat!575) (Not!248) (Plus!248) (SpaceValue!248 (value!10247 List!1201)) (IntegerValue!746 (value!10248 Int) (text!2185 List!1201)) (StringLiteralValue!745 (text!2186 List!1201)) (FloatLiteralValue!497 (text!2187 List!1201)) (BytesLiteralValue!248 (value!10249 List!1201)) (CommentValue!497 (value!10250 List!1201)) (StringLiteralValue!746 (value!10251 List!1201)) (ErrorTokenValue!248 (msg!309 List!1201)) )
))
(declare-datatypes ((TokenValueInjection!320 0))(
  ( (TokenValueInjection!321 (toValue!749 Int) (toChars!608 Int)) )
))
(declare-datatypes ((Rule!316 0))(
  ( (Rule!317 (regex!258 Regex!326) (tag!436 String!1633) (isSeparator!258 Bool) (transformation!258 TokenValueInjection!320)) )
))
(declare-datatypes ((List!1202 0))(
  ( (Nil!1196) (Cons!1196 (h!6593 Rule!316) (t!19905 List!1202)) )
))
(declare-fun rules!2471 () List!1202)

(declare-fun rulesInvariant!144 (LexerInterface!150 List!1202) Bool)

(assert (=> b!73879 (= res!38714 (rulesInvariant!144 thiss!19403 rules!2471))))

(declare-fun b!73880 () Bool)

(assert (=> b!73880 (= e!40971 false)))

(declare-fun lt!13433 () BalanceConc!644)

(declare-fun input!2238 () List!1200)

(declare-fun seqFromList!46 (List!1200) BalanceConc!644)

(assert (=> b!73880 (= lt!13433 (seqFromList!46 input!2238))))

(declare-fun b!73881 () Bool)

(declare-fun res!38716 () Bool)

(assert (=> b!73881 (=> (not res!38716) (not e!40971))))

(declare-fun isEmpty!282 (List!1202) Bool)

(assert (=> b!73881 (= res!38716 (not (isEmpty!282 rules!2471)))))

(declare-fun b!73882 () Bool)

(declare-fun e!40972 () Bool)

(declare-fun tp_is_empty!575 () Bool)

(declare-fun tp!48586 () Bool)

(assert (=> b!73882 (= e!40972 (and tp_is_empty!575 tp!48586))))

(declare-fun res!38715 () Bool)

(assert (=> start!5364 (=> (not res!38715) (not e!40971))))

(assert (=> start!5364 (= res!38715 (is-Lexer!148 thiss!19403))))

(assert (=> start!5364 e!40971))

(assert (=> start!5364 true))

(declare-fun e!40976 () Bool)

(assert (=> start!5364 e!40976))

(assert (=> start!5364 e!40972))

(declare-fun e!40975 () Bool)

(declare-fun e!40973 () Bool)

(declare-fun b!73883 () Bool)

(declare-fun tp!48583 () Bool)

(declare-fun inv!1616 (String!1633) Bool)

(declare-fun inv!1619 (TokenValueInjection!320) Bool)

(assert (=> b!73883 (= e!40975 (and tp!48583 (inv!1616 (tag!436 (h!6593 rules!2471))) (inv!1619 (transformation!258 (h!6593 rules!2471))) e!40973))))

(assert (=> b!73884 (= e!40973 (and tp!48587 tp!48584))))

(declare-fun b!73885 () Bool)

(declare-fun tp!48585 () Bool)

(assert (=> b!73885 (= e!40976 (and e!40975 tp!48585))))

(assert (= (and start!5364 res!38715) b!73881))

(assert (= (and b!73881 res!38716) b!73879))

(assert (= (and b!73879 res!38714) b!73880))

(assert (= b!73883 b!73884))

(assert (= b!73885 b!73883))

(assert (= (and start!5364 (is-Cons!1196 rules!2471)) b!73885))

(assert (= (and start!5364 (is-Cons!1194 input!2238)) b!73882))

(declare-fun m!45454 () Bool)

(assert (=> b!73879 m!45454))

(declare-fun m!45456 () Bool)

(assert (=> b!73880 m!45456))

(declare-fun m!45458 () Bool)

(assert (=> b!73881 m!45458))

(declare-fun m!45460 () Bool)

(assert (=> b!73883 m!45460))

(declare-fun m!45462 () Bool)

(assert (=> b!73883 m!45462))

(push 1)

(assert b_and!3271)

(assert (not b!73879))

(assert tp_is_empty!575)

(assert b_and!3273)

(assert (not b!73881))

(assert (not b!73885))

(assert (not b!73883))

(assert (not b_next!2247))

(assert (not b_next!2245))

(assert (not b!73880))

(assert (not b!73882))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3273)

(assert b_and!3271)

(assert (not b_next!2247))

(assert (not b_next!2245))

(check-sat)

(pop 1)


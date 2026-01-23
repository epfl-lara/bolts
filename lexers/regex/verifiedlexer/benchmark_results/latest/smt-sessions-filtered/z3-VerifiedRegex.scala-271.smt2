; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5638 () Bool)

(assert start!5638)

(declare-fun b!75206 () Bool)

(declare-fun b_free!2337 () Bool)

(declare-fun b_next!2337 () Bool)

(assert (=> b!75206 (= b_free!2337 (not b_next!2337))))

(declare-fun tp!49077 () Bool)

(declare-fun b_and!3379 () Bool)

(assert (=> b!75206 (= tp!49077 b_and!3379)))

(declare-fun b_free!2339 () Bool)

(declare-fun b_next!2339 () Bool)

(assert (=> b!75206 (= b_free!2339 (not b_next!2339))))

(declare-fun tp!49076 () Bool)

(declare-fun b_and!3381 () Bool)

(assert (=> b!75206 (= tp!49076 b_and!3381)))

(declare-fun b!75205 () Bool)

(declare-fun e!41844 () Bool)

(declare-fun e!41846 () Bool)

(assert (=> b!75205 (= e!41844 e!41846)))

(declare-fun res!39330 () Bool)

(assert (=> b!75205 (=> (not res!39330) (not e!41846))))

(declare-datatypes ((C!1604 0))(
  ( (C!1605 (val!409 Int)) )
))
(declare-datatypes ((List!1262 0))(
  ( (Nil!1256) (Cons!1256 (h!6653 C!1604) (t!19997 List!1262)) )
))
(declare-datatypes ((IArray!697 0))(
  ( (IArray!698 (innerList!406 List!1262)) )
))
(declare-datatypes ((Conc!348 0))(
  ( (Node!348 (left!957 Conc!348) (right!1287 Conc!348) (csize!926 Int) (cheight!559 Int)) (Leaf!620 (xs!2927 IArray!697) (csize!927 Int)) (Empty!348) )
))
(declare-datatypes ((BalanceConc!700 0))(
  ( (BalanceConc!701 (c!19504 Conc!348)) )
))
(declare-datatypes ((List!1263 0))(
  ( (Nil!1257) (Cons!1257 (h!6654 (_ BitVec 16)) (t!19998 List!1263)) )
))
(declare-datatypes ((TokenValue!263 0))(
  ( (FloatLiteralValue!526 (text!2286 List!1263)) (TokenValueExt!262 (__x!1621 Int)) (Broken!1315 (value!10650 List!1263)) (Object!268) (End!263) (Def!263) (Underscore!263) (Match!263) (Else!263) (Error!263) (Case!263) (If!263) (Extends!263) (Abstract!263) (Class!263) (Val!263) (DelimiterValue!526 (del!323 List!1263)) (KeywordValue!269 (value!10651 List!1263)) (CommentValue!526 (value!10652 List!1263)) (WhitespaceValue!526 (value!10653 List!1263)) (IndentationValue!263 (value!10654 List!1263)) (String!1706) (Int32!263) (Broken!1316 (value!10655 List!1263)) (Boolean!264) (Unit!749) (OperatorValue!266 (op!323 List!1263)) (IdentifierValue!526 (value!10656 List!1263)) (IdentifierValue!527 (value!10657 List!1263)) (WhitespaceValue!527 (value!10658 List!1263)) (True!526) (False!526) (Broken!1317 (value!10659 List!1263)) (Broken!1318 (value!10660 List!1263)) (True!527) (RightBrace!263) (RightBracket!263) (Colon!263) (Null!263) (Comma!263) (LeftBracket!263) (False!527) (LeftBrace!263) (ImaginaryLiteralValue!263 (text!2287 List!1263)) (StringLiteralValue!789 (value!10661 List!1263)) (EOFValue!263 (value!10662 List!1263)) (IdentValue!263 (value!10663 List!1263)) (DelimiterValue!527 (value!10664 List!1263)) (DedentValue!263 (value!10665 List!1263)) (NewLineValue!263 (value!10666 List!1263)) (IntegerValue!789 (value!10667 (_ BitVec 32)) (text!2288 List!1263)) (IntegerValue!790 (value!10668 Int) (text!2289 List!1263)) (Times!263) (Or!263) (Equal!263) (Minus!263) (Broken!1319 (value!10669 List!1263)) (And!263) (Div!263) (LessEqual!263) (Mod!263) (Concat!604) (Not!263) (Plus!263) (SpaceValue!263 (value!10670 List!1263)) (IntegerValue!791 (value!10671 Int) (text!2290 List!1263)) (StringLiteralValue!790 (text!2291 List!1263)) (FloatLiteralValue!527 (text!2292 List!1263)) (BytesLiteralValue!263 (value!10672 List!1263)) (CommentValue!527 (value!10673 List!1263)) (StringLiteralValue!791 (value!10674 List!1263)) (ErrorTokenValue!263 (msg!324 List!1263)) )
))
(declare-datatypes ((Regex!341 0))(
  ( (ElementMatch!341 (c!19505 C!1604)) (Concat!605 (regOne!1194 Regex!341) (regTwo!1194 Regex!341)) (EmptyExpr!341) (Star!341 (reg!670 Regex!341)) (EmptyLang!341) (Union!341 (regOne!1195 Regex!341) (regTwo!1195 Regex!341)) )
))
(declare-datatypes ((String!1707 0))(
  ( (String!1708 (value!10675 String)) )
))
(declare-datatypes ((TokenValueInjection!350 0))(
  ( (TokenValueInjection!351 (toValue!772 Int) (toChars!631 Int)) )
))
(declare-datatypes ((Rule!346 0))(
  ( (Rule!347 (regex!273 Regex!341) (tag!451 String!1707) (isSeparator!273 Bool) (transformation!273 TokenValueInjection!350)) )
))
(declare-datatypes ((Token!306 0))(
  ( (Token!307 (value!10676 TokenValue!263) (rule!748 Rule!346) (size!1129 Int) (originalCharacters!324 List!1262)) )
))
(declare-datatypes ((List!1264 0))(
  ( (Nil!1258) (Cons!1258 (h!6655 Token!306) (t!19999 List!1264)) )
))
(declare-datatypes ((IArray!699 0))(
  ( (IArray!700 (innerList!407 List!1264)) )
))
(declare-datatypes ((Conc!349 0))(
  ( (Node!349 (left!958 Conc!349) (right!1288 Conc!349) (csize!928 Int) (cheight!560 Int)) (Leaf!621 (xs!2928 IArray!699) (csize!929 Int)) (Empty!349) )
))
(declare-datatypes ((BalanceConc!702 0))(
  ( (BalanceConc!703 (c!19506 Conc!349)) )
))
(declare-datatypes ((tuple2!1234 0))(
  ( (tuple2!1235 (_1!824 BalanceConc!702) (_2!824 BalanceConc!700)) )
))
(declare-fun lt!14221 () tuple2!1234)

(declare-fun isEmpty!332 (BalanceConc!700) Bool)

(assert (=> b!75205 (= res!39330 (not (isEmpty!332 (_2!824 lt!14221))))))

(declare-datatypes ((LexerInterface!165 0))(
  ( (LexerInterfaceExt!162 (__x!1622 Int)) (Lexer!163) )
))
(declare-fun thiss!19403 () LexerInterface!165)

(declare-datatypes ((List!1265 0))(
  ( (Nil!1259) (Cons!1259 (h!6656 Rule!346) (t!20000 List!1265)) )
))
(declare-fun rules!2471 () List!1265)

(declare-fun input!2238 () List!1262)

(declare-fun lex!73 (LexerInterface!165 List!1265 BalanceConc!700) tuple2!1234)

(declare-fun seqFromList!61 (List!1262) BalanceConc!700)

(assert (=> b!75205 (= lt!14221 (lex!73 thiss!19403 rules!2471 (seqFromList!61 input!2238)))))

(declare-fun e!41845 () Bool)

(assert (=> b!75206 (= e!41845 (and tp!49077 tp!49076))))

(declare-fun res!39331 () Bool)

(assert (=> start!5638 (=> (not res!39331) (not e!41844))))

(get-info :version)

(assert (=> start!5638 (= res!39331 ((_ is Lexer!163) thiss!19403))))

(assert (=> start!5638 e!41844))

(assert (=> start!5638 true))

(declare-fun e!41848 () Bool)

(assert (=> start!5638 e!41848))

(declare-fun e!41847 () Bool)

(assert (=> start!5638 e!41847))

(declare-fun b!75207 () Bool)

(declare-fun e!41843 () Bool)

(declare-fun tp!49075 () Bool)

(assert (=> b!75207 (= e!41848 (and e!41843 tp!49075))))

(declare-fun b!75208 () Bool)

(declare-fun res!39332 () Bool)

(assert (=> b!75208 (=> (not res!39332) (not e!41844))))

(declare-fun rulesInvariant!159 (LexerInterface!165 List!1265) Bool)

(assert (=> b!75208 (= res!39332 (rulesInvariant!159 thiss!19403 rules!2471))))

(declare-fun b!75209 () Bool)

(declare-fun tp!49078 () Bool)

(declare-fun inv!1657 (String!1707) Bool)

(declare-fun inv!1659 (TokenValueInjection!350) Bool)

(assert (=> b!75209 (= e!41843 (and tp!49078 (inv!1657 (tag!451 (h!6656 rules!2471))) (inv!1659 (transformation!273 (h!6656 rules!2471))) e!41845))))

(declare-fun b!75210 () Bool)

(declare-fun tp_is_empty!605 () Bool)

(declare-fun tp!49074 () Bool)

(assert (=> b!75210 (= e!41847 (and tp_is_empty!605 tp!49074))))

(declare-fun b!75211 () Bool)

(declare-fun res!39333 () Bool)

(assert (=> b!75211 (=> (not res!39333) (not e!41844))))

(declare-fun isEmpty!333 (List!1265) Bool)

(assert (=> b!75211 (= res!39333 (not (isEmpty!333 rules!2471)))))

(declare-fun b!75212 () Bool)

(assert (=> b!75212 (= e!41846 false)))

(declare-fun lt!14222 () List!1264)

(declare-fun list!371 (BalanceConc!702) List!1264)

(assert (=> b!75212 (= lt!14222 (list!371 (_1!824 lt!14221)))))

(assert (= (and start!5638 res!39331) b!75211))

(assert (= (and b!75211 res!39333) b!75208))

(assert (= (and b!75208 res!39332) b!75205))

(assert (= (and b!75205 res!39330) b!75212))

(assert (= b!75209 b!75206))

(assert (= b!75207 b!75209))

(assert (= (and start!5638 ((_ is Cons!1259) rules!2471)) b!75207))

(assert (= (and start!5638 ((_ is Cons!1256) input!2238)) b!75210))

(declare-fun m!46922 () Bool)

(assert (=> b!75209 m!46922))

(declare-fun m!46924 () Bool)

(assert (=> b!75209 m!46924))

(declare-fun m!46926 () Bool)

(assert (=> b!75212 m!46926))

(declare-fun m!46928 () Bool)

(assert (=> b!75205 m!46928))

(declare-fun m!46930 () Bool)

(assert (=> b!75205 m!46930))

(assert (=> b!75205 m!46930))

(declare-fun m!46932 () Bool)

(assert (=> b!75205 m!46932))

(declare-fun m!46934 () Bool)

(assert (=> b!75208 m!46934))

(declare-fun m!46936 () Bool)

(assert (=> b!75211 m!46936))

(check-sat (not b!75205) b_and!3381 (not b!75210) tp_is_empty!605 (not b_next!2339) (not b!75211) b_and!3379 (not b!75212) (not b_next!2337) (not b!75209) (not b!75208) (not b!75207))
(check-sat b_and!3381 b_and!3379 (not b_next!2339) (not b_next!2337))

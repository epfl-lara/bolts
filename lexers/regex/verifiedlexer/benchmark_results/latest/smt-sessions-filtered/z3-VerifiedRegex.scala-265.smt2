; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5370 () Bool)

(assert start!5370)

(declare-fun b!73952 () Bool)

(declare-fun b_free!2257 () Bool)

(declare-fun b_next!2257 () Bool)

(assert (=> b!73952 (= b_free!2257 (not b_next!2257))))

(declare-fun tp!48631 () Bool)

(declare-fun b_and!3283 () Bool)

(assert (=> b!73952 (= tp!48631 b_and!3283)))

(declare-fun b_free!2259 () Bool)

(declare-fun b_next!2259 () Bool)

(assert (=> b!73952 (= b_free!2259 (not b_next!2259))))

(declare-fun tp!48630 () Bool)

(declare-fun b_and!3285 () Bool)

(assert (=> b!73952 (= tp!48630 b_and!3285)))

(declare-fun b!73947 () Bool)

(declare-fun e!41032 () Bool)

(declare-fun e!41034 () Bool)

(assert (=> b!73947 (= e!41032 e!41034)))

(declare-fun res!38747 () Bool)

(assert (=> b!73947 (=> (not res!38747) (not e!41034))))

(declare-datatypes ((C!1580 0))(
  ( (C!1581 (val!397 Int)) )
))
(declare-datatypes ((List!1210 0))(
  ( (Nil!1204) (Cons!1204 (h!6601 C!1580) (t!19913 List!1210)) )
))
(declare-datatypes ((IArray!649 0))(
  ( (IArray!650 (innerList!382 List!1210)) )
))
(declare-datatypes ((Conc!324 0))(
  ( (Node!324 (left!919 Conc!324) (right!1249 Conc!324) (csize!878 Int) (cheight!535 Int)) (Leaf!590 (xs!2903 IArray!649) (csize!879 Int)) (Empty!324) )
))
(declare-datatypes ((BalanceConc!652 0))(
  ( (BalanceConc!653 (c!19310 Conc!324)) )
))
(declare-datatypes ((List!1211 0))(
  ( (Nil!1205) (Cons!1205 (h!6602 (_ BitVec 16)) (t!19914 List!1211)) )
))
(declare-datatypes ((TokenValue!251 0))(
  ( (FloatLiteralValue!502 (text!2202 List!1211)) (TokenValueExt!250 (__x!1597 Int)) (Broken!1255 (value!10308 List!1211)) (Object!256) (End!251) (Def!251) (Underscore!251) (Match!251) (Else!251) (Error!251) (Case!251) (If!251) (Extends!251) (Abstract!251) (Class!251) (Val!251) (DelimiterValue!502 (del!311 List!1211)) (KeywordValue!257 (value!10309 List!1211)) (CommentValue!502 (value!10310 List!1211)) (WhitespaceValue!502 (value!10311 List!1211)) (IndentationValue!251 (value!10312 List!1211)) (String!1646) (Int32!251) (Broken!1256 (value!10313 List!1211)) (Boolean!252) (Unit!717) (OperatorValue!254 (op!311 List!1211)) (IdentifierValue!502 (value!10314 List!1211)) (IdentifierValue!503 (value!10315 List!1211)) (WhitespaceValue!503 (value!10316 List!1211)) (True!502) (False!502) (Broken!1257 (value!10317 List!1211)) (Broken!1258 (value!10318 List!1211)) (True!503) (RightBrace!251) (RightBracket!251) (Colon!251) (Null!251) (Comma!251) (LeftBracket!251) (False!503) (LeftBrace!251) (ImaginaryLiteralValue!251 (text!2203 List!1211)) (StringLiteralValue!753 (value!10319 List!1211)) (EOFValue!251 (value!10320 List!1211)) (IdentValue!251 (value!10321 List!1211)) (DelimiterValue!503 (value!10322 List!1211)) (DedentValue!251 (value!10323 List!1211)) (NewLineValue!251 (value!10324 List!1211)) (IntegerValue!753 (value!10325 (_ BitVec 32)) (text!2204 List!1211)) (IntegerValue!754 (value!10326 Int) (text!2205 List!1211)) (Times!251) (Or!251) (Equal!251) (Minus!251) (Broken!1259 (value!10327 List!1211)) (And!251) (Div!251) (LessEqual!251) (Mod!251) (Concat!580) (Not!251) (Plus!251) (SpaceValue!251 (value!10328 List!1211)) (IntegerValue!755 (value!10329 Int) (text!2206 List!1211)) (StringLiteralValue!754 (text!2207 List!1211)) (FloatLiteralValue!503 (text!2208 List!1211)) (BytesLiteralValue!251 (value!10330 List!1211)) (CommentValue!503 (value!10331 List!1211)) (StringLiteralValue!755 (value!10332 List!1211)) (ErrorTokenValue!251 (msg!312 List!1211)) )
))
(declare-datatypes ((Regex!329 0))(
  ( (ElementMatch!329 (c!19311 C!1580)) (Concat!581 (regOne!1170 Regex!329) (regTwo!1170 Regex!329)) (EmptyExpr!329) (Star!329 (reg!658 Regex!329)) (EmptyLang!329) (Union!329 (regOne!1171 Regex!329) (regTwo!1171 Regex!329)) )
))
(declare-datatypes ((String!1647 0))(
  ( (String!1648 (value!10333 String)) )
))
(declare-datatypes ((TokenValueInjection!326 0))(
  ( (TokenValueInjection!327 (toValue!752 Int) (toChars!611 Int)) )
))
(declare-datatypes ((Rule!322 0))(
  ( (Rule!323 (regex!261 Regex!329) (tag!439 String!1647) (isSeparator!261 Bool) (transformation!261 TokenValueInjection!326)) )
))
(declare-datatypes ((Token!282 0))(
  ( (Token!283 (value!10334 TokenValue!251) (rule!734 Rule!322) (size!1093 Int) (originalCharacters!312 List!1210)) )
))
(declare-datatypes ((List!1212 0))(
  ( (Nil!1206) (Cons!1206 (h!6603 Token!282) (t!19915 List!1212)) )
))
(declare-datatypes ((IArray!651 0))(
  ( (IArray!652 (innerList!383 List!1212)) )
))
(declare-datatypes ((Conc!325 0))(
  ( (Node!325 (left!920 Conc!325) (right!1250 Conc!325) (csize!880 Int) (cheight!536 Int)) (Leaf!591 (xs!2904 IArray!651) (csize!881 Int)) (Empty!325) )
))
(declare-datatypes ((BalanceConc!654 0))(
  ( (BalanceConc!655 (c!19312 Conc!325)) )
))
(declare-datatypes ((tuple2!1174 0))(
  ( (tuple2!1175 (_1!794 BalanceConc!654) (_2!794 BalanceConc!652)) )
))
(declare-fun lt!13448 () tuple2!1174)

(declare-fun isEmpty!286 (BalanceConc!652) Bool)

(assert (=> b!73947 (= res!38747 (isEmpty!286 (_2!794 lt!13448)))))

(declare-datatypes ((LexerInterface!153 0))(
  ( (LexerInterfaceExt!150 (__x!1598 Int)) (Lexer!151) )
))
(declare-fun thiss!19403 () LexerInterface!153)

(declare-datatypes ((List!1213 0))(
  ( (Nil!1207) (Cons!1207 (h!6604 Rule!322) (t!19916 List!1213)) )
))
(declare-fun rules!2471 () List!1213)

(declare-fun input!2238 () List!1210)

(declare-fun lex!61 (LexerInterface!153 List!1213 BalanceConc!652) tuple2!1174)

(declare-fun seqFromList!49 (List!1210) BalanceConc!652)

(assert (=> b!73947 (= lt!13448 (lex!61 thiss!19403 rules!2471 (seqFromList!49 input!2238)))))

(declare-fun b!73948 () Bool)

(assert (=> b!73948 (= e!41034 false)))

(declare-fun lt!13447 () List!1212)

(declare-fun list!341 (BalanceConc!654) List!1212)

(assert (=> b!73948 (= lt!13447 (list!341 (_1!794 lt!13448)))))

(declare-fun b!73949 () Bool)

(declare-fun e!41031 () Bool)

(declare-fun tp_is_empty!581 () Bool)

(declare-fun tp!48628 () Bool)

(assert (=> b!73949 (= e!41031 (and tp_is_empty!581 tp!48628))))

(declare-fun b!73950 () Bool)

(declare-fun res!38748 () Bool)

(assert (=> b!73950 (=> (not res!38748) (not e!41032))))

(declare-fun isEmpty!287 (List!1213) Bool)

(assert (=> b!73950 (= res!38748 (not (isEmpty!287 rules!2471)))))

(declare-fun e!41036 () Bool)

(declare-fun tp!48632 () Bool)

(declare-fun e!41033 () Bool)

(declare-fun b!73951 () Bool)

(declare-fun inv!1623 (String!1647) Bool)

(declare-fun inv!1625 (TokenValueInjection!326) Bool)

(assert (=> b!73951 (= e!41036 (and tp!48632 (inv!1623 (tag!439 (h!6604 rules!2471))) (inv!1625 (transformation!261 (h!6604 rules!2471))) e!41033))))

(declare-fun res!38746 () Bool)

(assert (=> start!5370 (=> (not res!38746) (not e!41032))))

(get-info :version)

(assert (=> start!5370 (= res!38746 ((_ is Lexer!151) thiss!19403))))

(assert (=> start!5370 e!41032))

(assert (=> start!5370 true))

(declare-fun e!41035 () Bool)

(assert (=> start!5370 e!41035))

(assert (=> start!5370 e!41031))

(assert (=> b!73952 (= e!41033 (and tp!48631 tp!48630))))

(declare-fun b!73953 () Bool)

(declare-fun tp!48629 () Bool)

(assert (=> b!73953 (= e!41035 (and e!41036 tp!48629))))

(declare-fun b!73954 () Bool)

(declare-fun res!38749 () Bool)

(assert (=> b!73954 (=> (not res!38749) (not e!41032))))

(declare-fun rulesInvariant!147 (LexerInterface!153 List!1213) Bool)

(assert (=> b!73954 (= res!38749 (rulesInvariant!147 thiss!19403 rules!2471))))

(assert (= (and start!5370 res!38746) b!73950))

(assert (= (and b!73950 res!38748) b!73954))

(assert (= (and b!73954 res!38749) b!73947))

(assert (= (and b!73947 res!38747) b!73948))

(assert (= b!73951 b!73952))

(assert (= b!73953 b!73951))

(assert (= (and start!5370 ((_ is Cons!1207) rules!2471)) b!73953))

(assert (= (and start!5370 ((_ is Cons!1204) input!2238)) b!73949))

(declare-fun m!45490 () Bool)

(assert (=> b!73947 m!45490))

(declare-fun m!45492 () Bool)

(assert (=> b!73947 m!45492))

(assert (=> b!73947 m!45492))

(declare-fun m!45494 () Bool)

(assert (=> b!73947 m!45494))

(declare-fun m!45496 () Bool)

(assert (=> b!73951 m!45496))

(declare-fun m!45498 () Bool)

(assert (=> b!73951 m!45498))

(declare-fun m!45500 () Bool)

(assert (=> b!73948 m!45500))

(declare-fun m!45502 () Bool)

(assert (=> b!73954 m!45502))

(declare-fun m!45504 () Bool)

(assert (=> b!73950 m!45504))

(check-sat (not b_next!2257) (not b!73948) (not b_next!2259) (not b!73949) (not b!73953) (not b!73947) (not b!73951) (not b!73954) b_and!3285 (not b!73950) tp_is_empty!581 b_and!3283)
(check-sat b_and!3285 b_and!3283 (not b_next!2259) (not b_next!2257))

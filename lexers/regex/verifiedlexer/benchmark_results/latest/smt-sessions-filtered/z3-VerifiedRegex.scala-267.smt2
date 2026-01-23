; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5478 () Bool)

(assert start!5478)

(declare-fun b!74395 () Bool)

(declare-fun b_free!2289 () Bool)

(declare-fun b_next!2289 () Bool)

(assert (=> b!74395 (= b_free!2289 (not b_next!2289))))

(declare-fun tp!48821 () Bool)

(declare-fun b_and!3315 () Bool)

(assert (=> b!74395 (= tp!48821 b_and!3315)))

(declare-fun b_free!2291 () Bool)

(declare-fun b_next!2291 () Bool)

(assert (=> b!74395 (= b_free!2291 (not b_next!2291))))

(declare-fun tp!48822 () Bool)

(declare-fun b_and!3317 () Bool)

(assert (=> b!74395 (= tp!48822 b_and!3317)))

(declare-fun b!74388 () Bool)

(declare-fun e!41328 () Bool)

(declare-fun e!41327 () Bool)

(assert (=> b!74388 (= e!41328 e!41327)))

(declare-fun res!38926 () Bool)

(assert (=> b!74388 (=> (not res!38926) (not e!41327))))

(declare-datatypes ((C!1588 0))(
  ( (C!1589 (val!401 Int)) )
))
(declare-datatypes ((List!1228 0))(
  ( (Nil!1222) (Cons!1222 (h!6619 C!1588) (t!19935 List!1228)) )
))
(declare-datatypes ((IArray!665 0))(
  ( (IArray!666 (innerList!390 List!1228)) )
))
(declare-datatypes ((Conc!332 0))(
  ( (Node!332 (left!933 Conc!332) (right!1263 Conc!332) (csize!894 Int) (cheight!543 Int)) (Leaf!600 (xs!2911 IArray!665) (csize!895 Int)) (Empty!332) )
))
(declare-datatypes ((BalanceConc!668 0))(
  ( (BalanceConc!669 (c!19376 Conc!332)) )
))
(declare-datatypes ((List!1229 0))(
  ( (Nil!1223) (Cons!1223 (h!6620 (_ BitVec 16)) (t!19936 List!1229)) )
))
(declare-datatypes ((TokenValue!255 0))(
  ( (FloatLiteralValue!510 (text!2230 List!1229)) (TokenValueExt!254 (__x!1605 Int)) (Broken!1275 (value!10422 List!1229)) (Object!260) (End!255) (Def!255) (Underscore!255) (Match!255) (Else!255) (Error!255) (Case!255) (If!255) (Extends!255) (Abstract!255) (Class!255) (Val!255) (DelimiterValue!510 (del!315 List!1229)) (KeywordValue!261 (value!10423 List!1229)) (CommentValue!510 (value!10424 List!1229)) (WhitespaceValue!510 (value!10425 List!1229)) (IndentationValue!255 (value!10426 List!1229)) (String!1666) (Int32!255) (Broken!1276 (value!10427 List!1229)) (Boolean!256) (Unit!729) (OperatorValue!258 (op!315 List!1229)) (IdentifierValue!510 (value!10428 List!1229)) (IdentifierValue!511 (value!10429 List!1229)) (WhitespaceValue!511 (value!10430 List!1229)) (True!510) (False!510) (Broken!1277 (value!10431 List!1229)) (Broken!1278 (value!10432 List!1229)) (True!511) (RightBrace!255) (RightBracket!255) (Colon!255) (Null!255) (Comma!255) (LeftBracket!255) (False!511) (LeftBrace!255) (ImaginaryLiteralValue!255 (text!2231 List!1229)) (StringLiteralValue!765 (value!10433 List!1229)) (EOFValue!255 (value!10434 List!1229)) (IdentValue!255 (value!10435 List!1229)) (DelimiterValue!511 (value!10436 List!1229)) (DedentValue!255 (value!10437 List!1229)) (NewLineValue!255 (value!10438 List!1229)) (IntegerValue!765 (value!10439 (_ BitVec 32)) (text!2232 List!1229)) (IntegerValue!766 (value!10440 Int) (text!2233 List!1229)) (Times!255) (Or!255) (Equal!255) (Minus!255) (Broken!1279 (value!10441 List!1229)) (And!255) (Div!255) (LessEqual!255) (Mod!255) (Concat!588) (Not!255) (Plus!255) (SpaceValue!255 (value!10442 List!1229)) (IntegerValue!767 (value!10443 Int) (text!2234 List!1229)) (StringLiteralValue!766 (text!2235 List!1229)) (FloatLiteralValue!511 (text!2236 List!1229)) (BytesLiteralValue!255 (value!10444 List!1229)) (CommentValue!511 (value!10445 List!1229)) (StringLiteralValue!767 (value!10446 List!1229)) (ErrorTokenValue!255 (msg!316 List!1229)) )
))
(declare-datatypes ((Regex!333 0))(
  ( (ElementMatch!333 (c!19377 C!1588)) (Concat!589 (regOne!1178 Regex!333) (regTwo!1178 Regex!333)) (EmptyExpr!333) (Star!333 (reg!662 Regex!333)) (EmptyLang!333) (Union!333 (regOne!1179 Regex!333) (regTwo!1179 Regex!333)) )
))
(declare-datatypes ((String!1667 0))(
  ( (String!1668 (value!10447 String)) )
))
(declare-datatypes ((TokenValueInjection!334 0))(
  ( (TokenValueInjection!335 (toValue!760 Int) (toChars!619 Int)) )
))
(declare-datatypes ((Rule!330 0))(
  ( (Rule!331 (regex!265 Regex!333) (tag!443 String!1667) (isSeparator!265 Bool) (transformation!265 TokenValueInjection!334)) )
))
(declare-datatypes ((Token!290 0))(
  ( (Token!291 (value!10448 TokenValue!255) (rule!738 Rule!330) (size!1109 Int) (originalCharacters!316 List!1228)) )
))
(declare-datatypes ((List!1230 0))(
  ( (Nil!1224) (Cons!1224 (h!6621 Token!290) (t!19937 List!1230)) )
))
(declare-fun lt!13758 () List!1230)

(get-info :version)

(assert (=> b!74388 (= res!38926 (and (or (not ((_ is Cons!1224) lt!13758)) (not ((_ is Nil!1224) (t!19937 lt!13758)))) ((_ is Cons!1224) lt!13758)))))

(declare-datatypes ((IArray!667 0))(
  ( (IArray!668 (innerList!391 List!1230)) )
))
(declare-datatypes ((Conc!333 0))(
  ( (Node!333 (left!934 Conc!333) (right!1264 Conc!333) (csize!896 Int) (cheight!544 Int)) (Leaf!601 (xs!2912 IArray!667) (csize!897 Int)) (Empty!333) )
))
(declare-datatypes ((BalanceConc!670 0))(
  ( (BalanceConc!671 (c!19378 Conc!333)) )
))
(declare-datatypes ((tuple2!1194 0))(
  ( (tuple2!1195 (_1!804 BalanceConc!670) (_2!804 BalanceConc!668)) )
))
(declare-fun lt!13757 () tuple2!1194)

(declare-fun list!353 (BalanceConc!670) List!1230)

(assert (=> b!74388 (= lt!13758 (list!353 (_1!804 lt!13757)))))

(declare-fun b!74389 () Bool)

(declare-fun e!41329 () Bool)

(declare-fun tp_is_empty!589 () Bool)

(declare-fun tp!48819 () Bool)

(assert (=> b!74389 (= e!41329 (and tp_is_empty!589 tp!48819))))

(declare-fun b!74390 () Bool)

(declare-fun e!41325 () Bool)

(declare-fun e!41326 () Bool)

(declare-fun tp!48820 () Bool)

(assert (=> b!74390 (= e!41325 (and e!41326 tp!48820))))

(declare-fun b!74391 () Bool)

(declare-fun res!38927 () Bool)

(declare-fun e!41332 () Bool)

(assert (=> b!74391 (=> (not res!38927) (not e!41332))))

(declare-datatypes ((LexerInterface!157 0))(
  ( (LexerInterfaceExt!154 (__x!1606 Int)) (Lexer!155) )
))
(declare-fun thiss!19403 () LexerInterface!157)

(declare-datatypes ((List!1231 0))(
  ( (Nil!1225) (Cons!1225 (h!6622 Rule!330) (t!19938 List!1231)) )
))
(declare-fun rules!2471 () List!1231)

(declare-fun rulesInvariant!151 (LexerInterface!157 List!1231) Bool)

(assert (=> b!74391 (= res!38927 (rulesInvariant!151 thiss!19403 rules!2471))))

(declare-fun tp!48818 () Bool)

(declare-fun b!74392 () Bool)

(declare-fun e!41331 () Bool)

(declare-fun inv!1633 (String!1667) Bool)

(declare-fun inv!1635 (TokenValueInjection!334) Bool)

(assert (=> b!74392 (= e!41326 (and tp!48818 (inv!1633 (tag!443 (h!6622 rules!2471))) (inv!1635 (transformation!265 (h!6622 rules!2471))) e!41331))))

(declare-fun b!74393 () Bool)

(declare-fun res!38925 () Bool)

(assert (=> b!74393 (=> (not res!38925) (not e!41332))))

(declare-fun isEmpty!304 (List!1231) Bool)

(assert (=> b!74393 (= res!38925 (not (isEmpty!304 rules!2471)))))

(declare-fun res!38929 () Bool)

(assert (=> start!5478 (=> (not res!38929) (not e!41332))))

(assert (=> start!5478 (= res!38929 ((_ is Lexer!155) thiss!19403))))

(assert (=> start!5478 e!41332))

(assert (=> start!5478 true))

(assert (=> start!5478 e!41325))

(assert (=> start!5478 e!41329))

(declare-fun b!74394 () Bool)

(assert (=> b!74394 (= e!41327 false)))

(declare-fun lt!13756 () Bool)

(declare-fun rulesValidInductive!18 (LexerInterface!157 List!1231) Bool)

(assert (=> b!74394 (= lt!13756 (rulesValidInductive!18 thiss!19403 rules!2471))))

(assert (=> b!74395 (= e!41331 (and tp!48821 tp!48822))))

(declare-fun b!74396 () Bool)

(assert (=> b!74396 (= e!41332 e!41328)))

(declare-fun res!38928 () Bool)

(assert (=> b!74396 (=> (not res!38928) (not e!41328))))

(declare-fun isEmpty!305 (BalanceConc!668) Bool)

(assert (=> b!74396 (= res!38928 (isEmpty!305 (_2!804 lt!13757)))))

(declare-fun input!2238 () List!1228)

(declare-fun lex!65 (LexerInterface!157 List!1231 BalanceConc!668) tuple2!1194)

(declare-fun seqFromList!53 (List!1228) BalanceConc!668)

(assert (=> b!74396 (= lt!13757 (lex!65 thiss!19403 rules!2471 (seqFromList!53 input!2238)))))

(assert (= (and start!5478 res!38929) b!74393))

(assert (= (and b!74393 res!38925) b!74391))

(assert (= (and b!74391 res!38927) b!74396))

(assert (= (and b!74396 res!38928) b!74388))

(assert (= (and b!74388 res!38926) b!74394))

(assert (= b!74392 b!74395))

(assert (= b!74390 b!74392))

(assert (= (and start!5478 ((_ is Cons!1225) rules!2471)) b!74390))

(assert (= (and start!5478 ((_ is Cons!1222) input!2238)) b!74389))

(declare-fun m!46000 () Bool)

(assert (=> b!74394 m!46000))

(declare-fun m!46002 () Bool)

(assert (=> b!74392 m!46002))

(declare-fun m!46004 () Bool)

(assert (=> b!74392 m!46004))

(declare-fun m!46006 () Bool)

(assert (=> b!74388 m!46006))

(declare-fun m!46008 () Bool)

(assert (=> b!74396 m!46008))

(declare-fun m!46010 () Bool)

(assert (=> b!74396 m!46010))

(assert (=> b!74396 m!46010))

(declare-fun m!46012 () Bool)

(assert (=> b!74396 m!46012))

(declare-fun m!46014 () Bool)

(assert (=> b!74393 m!46014))

(declare-fun m!46016 () Bool)

(assert (=> b!74391 m!46016))

(check-sat tp_is_empty!589 (not b!74388) b_and!3315 (not b!74394) (not b!74389) (not b_next!2291) (not b!74390) (not b!74396) (not b!74393) (not b!74391) b_and!3317 (not b!74392) (not b_next!2289))
(check-sat b_and!3317 b_and!3315 (not b_next!2291) (not b_next!2289))

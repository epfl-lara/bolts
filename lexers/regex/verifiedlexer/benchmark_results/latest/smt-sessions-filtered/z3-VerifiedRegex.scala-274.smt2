; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5650 () Bool)

(assert start!5650)

(declare-fun b!75368 () Bool)

(declare-fun b_free!2361 () Bool)

(declare-fun b_next!2361 () Bool)

(assert (=> b!75368 (= b_free!2361 (not b_next!2361))))

(declare-fun tp!49165 () Bool)

(declare-fun b_and!3403 () Bool)

(assert (=> b!75368 (= tp!49165 b_and!3403)))

(declare-fun b_free!2363 () Bool)

(declare-fun b_next!2363 () Bool)

(assert (=> b!75368 (= b_free!2363 (not b_next!2363))))

(declare-fun tp!49166 () Bool)

(declare-fun b_and!3405 () Bool)

(assert (=> b!75368 (= tp!49166 b_and!3405)))

(declare-fun b!75366 () Bool)

(declare-fun res!39420 () Bool)

(declare-fun e!41992 () Bool)

(assert (=> b!75366 (=> (not res!39420) (not e!41992))))

(declare-datatypes ((LexerInterface!171 0))(
  ( (LexerInterfaceExt!168 (__x!1633 Int)) (Lexer!169) )
))
(declare-fun thiss!19403 () LexerInterface!171)

(declare-datatypes ((C!1616 0))(
  ( (C!1617 (val!415 Int)) )
))
(declare-datatypes ((List!1286 0))(
  ( (Nil!1280) (Cons!1280 (h!6677 C!1616) (t!20021 List!1286)) )
))
(declare-datatypes ((IArray!721 0))(
  ( (IArray!722 (innerList!418 List!1286)) )
))
(declare-datatypes ((Conc!360 0))(
  ( (Node!360 (left!972 Conc!360) (right!1302 Conc!360) (csize!950 Int) (cheight!571 Int)) (Leaf!635 (xs!2939 IArray!721) (csize!951 Int)) (Empty!360) )
))
(declare-datatypes ((BalanceConc!724 0))(
  ( (BalanceConc!725 (c!19528 Conc!360)) )
))
(declare-datatypes ((Regex!347 0))(
  ( (ElementMatch!347 (c!19529 C!1616)) (Concat!616 (regOne!1206 Regex!347) (regTwo!1206 Regex!347)) (EmptyExpr!347) (Star!347 (reg!676 Regex!347)) (EmptyLang!347) (Union!347 (regOne!1207 Regex!347) (regTwo!1207 Regex!347)) )
))
(declare-datatypes ((String!1736 0))(
  ( (String!1737 (value!10821 String)) )
))
(declare-datatypes ((List!1287 0))(
  ( (Nil!1281) (Cons!1281 (h!6678 (_ BitVec 16)) (t!20022 List!1287)) )
))
(declare-datatypes ((TokenValue!269 0))(
  ( (FloatLiteralValue!538 (text!2328 List!1287)) (TokenValueExt!268 (__x!1634 Int)) (Broken!1345 (value!10822 List!1287)) (Object!274) (End!269) (Def!269) (Underscore!269) (Match!269) (Else!269) (Error!269) (Case!269) (If!269) (Extends!269) (Abstract!269) (Class!269) (Val!269) (DelimiterValue!538 (del!329 List!1287)) (KeywordValue!275 (value!10823 List!1287)) (CommentValue!538 (value!10824 List!1287)) (WhitespaceValue!538 (value!10825 List!1287)) (IndentationValue!269 (value!10826 List!1287)) (String!1738) (Int32!269) (Broken!1346 (value!10827 List!1287)) (Boolean!270) (Unit!757) (OperatorValue!272 (op!329 List!1287)) (IdentifierValue!538 (value!10828 List!1287)) (IdentifierValue!539 (value!10829 List!1287)) (WhitespaceValue!539 (value!10830 List!1287)) (True!538) (False!538) (Broken!1347 (value!10831 List!1287)) (Broken!1348 (value!10832 List!1287)) (True!539) (RightBrace!269) (RightBracket!269) (Colon!269) (Null!269) (Comma!269) (LeftBracket!269) (False!539) (LeftBrace!269) (ImaginaryLiteralValue!269 (text!2329 List!1287)) (StringLiteralValue!807 (value!10833 List!1287)) (EOFValue!269 (value!10834 List!1287)) (IdentValue!269 (value!10835 List!1287)) (DelimiterValue!539 (value!10836 List!1287)) (DedentValue!269 (value!10837 List!1287)) (NewLineValue!269 (value!10838 List!1287)) (IntegerValue!807 (value!10839 (_ BitVec 32)) (text!2330 List!1287)) (IntegerValue!808 (value!10840 Int) (text!2331 List!1287)) (Times!269) (Or!269) (Equal!269) (Minus!269) (Broken!1349 (value!10841 List!1287)) (And!269) (Div!269) (LessEqual!269) (Mod!269) (Concat!617) (Not!269) (Plus!269) (SpaceValue!269 (value!10842 List!1287)) (IntegerValue!809 (value!10843 Int) (text!2332 List!1287)) (StringLiteralValue!808 (text!2333 List!1287)) (FloatLiteralValue!539 (text!2334 List!1287)) (BytesLiteralValue!269 (value!10844 List!1287)) (CommentValue!539 (value!10845 List!1287)) (StringLiteralValue!809 (value!10846 List!1287)) (ErrorTokenValue!269 (msg!330 List!1287)) )
))
(declare-datatypes ((TokenValueInjection!362 0))(
  ( (TokenValueInjection!363 (toValue!778 Int) (toChars!637 Int)) )
))
(declare-datatypes ((Rule!358 0))(
  ( (Rule!359 (regex!279 Regex!347) (tag!457 String!1736) (isSeparator!279 Bool) (transformation!279 TokenValueInjection!362)) )
))
(declare-datatypes ((List!1288 0))(
  ( (Nil!1282) (Cons!1282 (h!6679 Rule!358) (t!20023 List!1288)) )
))
(declare-fun rules!2471 () List!1288)

(declare-fun rulesInvariant!165 (LexerInterface!171 List!1288) Bool)

(assert (=> b!75366 (= res!39420 (rulesInvariant!165 thiss!19403 rules!2471))))

(declare-fun b!75367 () Bool)

(declare-fun e!41989 () Bool)

(declare-fun tp_is_empty!617 () Bool)

(declare-fun tp!49164 () Bool)

(assert (=> b!75367 (= e!41989 (and tp_is_empty!617 tp!49164))))

(declare-fun e!41988 () Bool)

(assert (=> b!75368 (= e!41988 (and tp!49165 tp!49166))))

(declare-fun res!39419 () Bool)

(assert (=> start!5650 (=> (not res!39419) (not e!41992))))

(get-info :version)

(assert (=> start!5650 (= res!39419 ((_ is Lexer!169) thiss!19403))))

(assert (=> start!5650 e!41992))

(assert (=> start!5650 true))

(declare-fun e!41990 () Bool)

(assert (=> start!5650 e!41990))

(assert (=> start!5650 e!41989))

(declare-fun b!75369 () Bool)

(declare-fun e!41986 () Bool)

(assert (=> b!75369 (= e!41986 (not true))))

(declare-datatypes ((Token!318 0))(
  ( (Token!319 (value!10847 TokenValue!269) (rule!754 Rule!358) (size!1135 Int) (originalCharacters!330 List!1286)) )
))
(declare-datatypes ((List!1289 0))(
  ( (Nil!1283) (Cons!1283 (h!6680 Token!318) (t!20024 List!1289)) )
))
(declare-fun lt!14287 () List!1289)

(declare-datatypes ((IArray!723 0))(
  ( (IArray!724 (innerList!419 List!1289)) )
))
(declare-datatypes ((Conc!361 0))(
  ( (Node!361 (left!973 Conc!361) (right!1303 Conc!361) (csize!952 Int) (cheight!572 Int)) (Leaf!636 (xs!2940 IArray!723) (csize!953 Int)) (Empty!361) )
))
(declare-datatypes ((BalanceConc!726 0))(
  ( (BalanceConc!727 (c!19530 Conc!361)) )
))
(declare-fun list!379 (BalanceConc!726) List!1289)

(declare-fun prepend!24 (BalanceConc!726 Token!318) BalanceConc!726)

(declare-fun seqFromList!70 (List!1289) BalanceConc!726)

(assert (=> b!75369 (= lt!14287 (list!379 (prepend!24 (seqFromList!70 (t!20024 lt!14287)) (h!6680 lt!14287))))))

(declare-datatypes ((Unit!758 0))(
  ( (Unit!759) )
))
(declare-fun lt!14285 () Unit!758)

(declare-datatypes ((tuple2!1246 0))(
  ( (tuple2!1247 (_1!830 BalanceConc!726) (_2!830 BalanceConc!724)) )
))
(declare-fun lt!14288 () tuple2!1246)

(declare-fun seqFromListBHdTlConstructive!2 (Token!318 List!1289 BalanceConc!726) Unit!758)

(assert (=> b!75369 (= lt!14285 (seqFromListBHdTlConstructive!2 (h!6680 lt!14287) (t!20024 lt!14287) (_1!830 lt!14288)))))

(declare-fun b!75370 () Bool)

(declare-fun e!41991 () Bool)

(assert (=> b!75370 (= e!41991 e!41986)))

(declare-fun res!39421 () Bool)

(assert (=> b!75370 (=> (not res!39421) (not e!41986))))

(declare-fun lt!14286 () Bool)

(assert (=> b!75370 (= res!39421 (and (or lt!14286 (not ((_ is Nil!1283) (t!20024 lt!14287)))) (not lt!14286)))))

(assert (=> b!75370 (= lt!14286 (not ((_ is Cons!1283) lt!14287)))))

(assert (=> b!75370 (= lt!14287 (list!379 (_1!830 lt!14288)))))

(declare-fun b!75371 () Bool)

(assert (=> b!75371 (= e!41992 e!41991)))

(declare-fun res!39423 () Bool)

(assert (=> b!75371 (=> (not res!39423) (not e!41991))))

(declare-fun isEmpty!344 (BalanceConc!724) Bool)

(assert (=> b!75371 (= res!39423 (not (isEmpty!344 (_2!830 lt!14288))))))

(declare-fun input!2238 () List!1286)

(declare-fun lex!79 (LexerInterface!171 List!1288 BalanceConc!724) tuple2!1246)

(declare-fun seqFromList!71 (List!1286) BalanceConc!724)

(assert (=> b!75371 (= lt!14288 (lex!79 thiss!19403 rules!2471 (seqFromList!71 input!2238)))))

(declare-fun tp!49167 () Bool)

(declare-fun e!41987 () Bool)

(declare-fun b!75372 () Bool)

(declare-fun inv!1672 (String!1736) Bool)

(declare-fun inv!1674 (TokenValueInjection!362) Bool)

(assert (=> b!75372 (= e!41987 (and tp!49167 (inv!1672 (tag!457 (h!6679 rules!2471))) (inv!1674 (transformation!279 (h!6679 rules!2471))) e!41988))))

(declare-fun b!75373 () Bool)

(declare-fun res!39422 () Bool)

(assert (=> b!75373 (=> (not res!39422) (not e!41992))))

(declare-fun isEmpty!345 (List!1288) Bool)

(assert (=> b!75373 (= res!39422 (not (isEmpty!345 rules!2471)))))

(declare-fun b!75374 () Bool)

(declare-fun tp!49168 () Bool)

(assert (=> b!75374 (= e!41990 (and e!41987 tp!49168))))

(assert (= (and start!5650 res!39419) b!75373))

(assert (= (and b!75373 res!39422) b!75366))

(assert (= (and b!75366 res!39420) b!75371))

(assert (= (and b!75371 res!39423) b!75370))

(assert (= (and b!75370 res!39421) b!75369))

(assert (= b!75372 b!75368))

(assert (= b!75374 b!75372))

(assert (= (and start!5650 ((_ is Cons!1282) rules!2471)) b!75374))

(assert (= (and start!5650 ((_ is Cons!1280) input!2238)) b!75367))

(declare-fun m!47054 () Bool)

(assert (=> b!75370 m!47054))

(declare-fun m!47056 () Bool)

(assert (=> b!75369 m!47056))

(assert (=> b!75369 m!47056))

(declare-fun m!47058 () Bool)

(assert (=> b!75369 m!47058))

(assert (=> b!75369 m!47058))

(declare-fun m!47060 () Bool)

(assert (=> b!75369 m!47060))

(declare-fun m!47062 () Bool)

(assert (=> b!75369 m!47062))

(declare-fun m!47064 () Bool)

(assert (=> b!75366 m!47064))

(declare-fun m!47066 () Bool)

(assert (=> b!75373 m!47066))

(declare-fun m!47068 () Bool)

(assert (=> b!75372 m!47068))

(declare-fun m!47070 () Bool)

(assert (=> b!75372 m!47070))

(declare-fun m!47072 () Bool)

(assert (=> b!75371 m!47072))

(declare-fun m!47074 () Bool)

(assert (=> b!75371 m!47074))

(assert (=> b!75371 m!47074))

(declare-fun m!47076 () Bool)

(assert (=> b!75371 m!47076))

(check-sat b_and!3403 (not b!75367) (not b!75371) (not b!75370) (not b_next!2363) (not b!75372) (not b!75366) (not b_next!2361) b_and!3405 tp_is_empty!617 (not b!75373) (not b!75369) (not b!75374))
(check-sat b_and!3405 b_and!3403 (not b_next!2363) (not b_next!2361))

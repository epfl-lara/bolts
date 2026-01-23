; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6074 () Bool)

(assert start!6074)

(declare-fun b!77133 () Bool)

(declare-fun b_free!2473 () Bool)

(declare-fun b_next!2473 () Bool)

(assert (=> b!77133 (= b_free!2473 (not b_next!2473))))

(declare-fun tp!49762 () Bool)

(declare-fun b_and!3531 () Bool)

(assert (=> b!77133 (= tp!49762 b_and!3531)))

(declare-fun b_free!2475 () Bool)

(declare-fun b_next!2475 () Bool)

(assert (=> b!77133 (= b_free!2475 (not b_next!2475))))

(declare-fun tp!49760 () Bool)

(declare-fun b_and!3533 () Bool)

(assert (=> b!77133 (= tp!49760 b_and!3533)))

(declare-fun tp!49764 () Bool)

(declare-fun e!43139 () Bool)

(declare-datatypes ((String!1826 0))(
  ( (String!1827 (value!11334 String)) )
))
(declare-datatypes ((C!1652 0))(
  ( (C!1653 (val!433 Int)) )
))
(declare-datatypes ((List!1364 0))(
  ( (Nil!1358) (Cons!1358 (h!6755 C!1652) (t!20143 List!1364)) )
))
(declare-datatypes ((IArray!793 0))(
  ( (IArray!794 (innerList!454 List!1364)) )
))
(declare-datatypes ((Conc!396 0))(
  ( (Node!396 (left!1029 Conc!396) (right!1359 Conc!396) (csize!1022 Int) (cheight!607 Int)) (Leaf!680 (xs!2975 IArray!793) (csize!1023 Int)) (Empty!396) )
))
(declare-datatypes ((BalanceConc!796 0))(
  ( (BalanceConc!797 (c!19784 Conc!396)) )
))
(declare-datatypes ((Regex!365 0))(
  ( (ElementMatch!365 (c!19785 C!1652)) (Concat!652 (regOne!1242 Regex!365) (regTwo!1242 Regex!365)) (EmptyExpr!365) (Star!365 (reg!694 Regex!365)) (EmptyLang!365) (Union!365 (regOne!1243 Regex!365) (regTwo!1243 Regex!365)) )
))
(declare-datatypes ((List!1365 0))(
  ( (Nil!1359) (Cons!1359 (h!6756 (_ BitVec 16)) (t!20144 List!1365)) )
))
(declare-datatypes ((TokenValue!287 0))(
  ( (FloatLiteralValue!574 (text!2454 List!1365)) (TokenValueExt!286 (__x!1669 Int)) (Broken!1435 (value!11335 List!1365)) (Object!292) (End!287) (Def!287) (Underscore!287) (Match!287) (Else!287) (Error!287) (Case!287) (If!287) (Extends!287) (Abstract!287) (Class!287) (Val!287) (DelimiterValue!574 (del!347 List!1365)) (KeywordValue!293 (value!11336 List!1365)) (CommentValue!574 (value!11337 List!1365)) (WhitespaceValue!574 (value!11338 List!1365)) (IndentationValue!287 (value!11339 List!1365)) (String!1828) (Int32!287) (Broken!1436 (value!11340 List!1365)) (Boolean!288) (Unit!819) (OperatorValue!290 (op!347 List!1365)) (IdentifierValue!574 (value!11341 List!1365)) (IdentifierValue!575 (value!11342 List!1365)) (WhitespaceValue!575 (value!11343 List!1365)) (True!574) (False!574) (Broken!1437 (value!11344 List!1365)) (Broken!1438 (value!11345 List!1365)) (True!575) (RightBrace!287) (RightBracket!287) (Colon!287) (Null!287) (Comma!287) (LeftBracket!287) (False!575) (LeftBrace!287) (ImaginaryLiteralValue!287 (text!2455 List!1365)) (StringLiteralValue!861 (value!11346 List!1365)) (EOFValue!287 (value!11347 List!1365)) (IdentValue!287 (value!11348 List!1365)) (DelimiterValue!575 (value!11349 List!1365)) (DedentValue!287 (value!11350 List!1365)) (NewLineValue!287 (value!11351 List!1365)) (IntegerValue!861 (value!11352 (_ BitVec 32)) (text!2456 List!1365)) (IntegerValue!862 (value!11353 Int) (text!2457 List!1365)) (Times!287) (Or!287) (Equal!287) (Minus!287) (Broken!1439 (value!11354 List!1365)) (And!287) (Div!287) (LessEqual!287) (Mod!287) (Concat!653) (Not!287) (Plus!287) (SpaceValue!287 (value!11355 List!1365)) (IntegerValue!863 (value!11356 Int) (text!2458 List!1365)) (StringLiteralValue!862 (text!2459 List!1365)) (FloatLiteralValue!575 (text!2460 List!1365)) (BytesLiteralValue!287 (value!11357 List!1365)) (CommentValue!575 (value!11358 List!1365)) (StringLiteralValue!863 (value!11359 List!1365)) (ErrorTokenValue!287 (msg!348 List!1365)) )
))
(declare-datatypes ((TokenValueInjection!398 0))(
  ( (TokenValueInjection!399 (toValue!804 Int) (toChars!663 Int)) )
))
(declare-datatypes ((Rule!394 0))(
  ( (Rule!395 (regex!297 Regex!365) (tag!475 String!1826) (isSeparator!297 Bool) (transformation!297 TokenValueInjection!398)) )
))
(declare-datatypes ((List!1366 0))(
  ( (Nil!1360) (Cons!1360 (h!6757 Rule!394) (t!20145 List!1366)) )
))
(declare-fun rules!2471 () List!1366)

(declare-fun e!43142 () Bool)

(declare-fun b!77128 () Bool)

(declare-fun inv!1721 (String!1826) Bool)

(declare-fun inv!1723 (TokenValueInjection!398) Bool)

(assert (=> b!77128 (= e!43139 (and tp!49764 (inv!1721 (tag!475 (h!6757 rules!2471))) (inv!1723 (transformation!297 (h!6757 rules!2471))) e!43142))))

(declare-fun b!77129 () Bool)

(declare-fun e!43136 () Bool)

(declare-fun tp_is_empty!653 () Bool)

(declare-fun tp!49761 () Bool)

(assert (=> b!77129 (= e!43136 (and tp_is_empty!653 tp!49761))))

(declare-fun b!77130 () Bool)

(declare-fun res!40326 () Bool)

(declare-fun e!43140 () Bool)

(assert (=> b!77130 (=> (not res!40326) (not e!43140))))

(declare-fun isEmpty!410 (List!1366) Bool)

(assert (=> b!77130 (= res!40326 (not (isEmpty!410 rules!2471)))))

(declare-fun b!77131 () Bool)

(declare-fun e!43138 () Bool)

(declare-fun e!43141 () Bool)

(assert (=> b!77131 (= e!43138 e!43141)))

(declare-fun res!40325 () Bool)

(assert (=> b!77131 (=> (not res!40325) (not e!43141))))

(declare-fun lt!15535 () Bool)

(declare-datatypes ((Token!354 0))(
  ( (Token!355 (value!11360 TokenValue!287) (rule!774 Rule!394) (size!1185 Int) (originalCharacters!348 List!1364)) )
))
(declare-datatypes ((List!1367 0))(
  ( (Nil!1361) (Cons!1361 (h!6758 Token!354) (t!20146 List!1367)) )
))
(declare-fun lt!15533 () List!1367)

(get-info :version)

(assert (=> b!77131 (= res!40325 (and (or lt!15535 (not ((_ is Nil!1361) (t!20146 lt!15533)))) (not lt!15535)))))

(assert (=> b!77131 (= lt!15535 (not ((_ is Cons!1361) lt!15533)))))

(declare-datatypes ((IArray!795 0))(
  ( (IArray!796 (innerList!455 List!1367)) )
))
(declare-datatypes ((Conc!397 0))(
  ( (Node!397 (left!1030 Conc!397) (right!1360 Conc!397) (csize!1024 Int) (cheight!608 Int)) (Leaf!681 (xs!2976 IArray!795) (csize!1025 Int)) (Empty!397) )
))
(declare-datatypes ((BalanceConc!798 0))(
  ( (BalanceConc!799 (c!19786 Conc!397)) )
))
(declare-datatypes ((tuple2!1346 0))(
  ( (tuple2!1347 (_1!880 BalanceConc!798) (_2!880 BalanceConc!796)) )
))
(declare-fun lt!15541 () tuple2!1346)

(declare-fun list!426 (BalanceConc!798) List!1367)

(assert (=> b!77131 (= lt!15533 (list!426 (_1!880 lt!15541)))))

(declare-fun b!77132 () Bool)

(declare-fun e!43137 () Bool)

(declare-fun tp!49763 () Bool)

(assert (=> b!77132 (= e!43137 (and e!43139 tp!49763))))

(assert (=> b!77133 (= e!43142 (and tp!49762 tp!49760))))

(declare-fun b!77134 () Bool)

(declare-fun res!40327 () Bool)

(assert (=> b!77134 (=> (not res!40327) (not e!43140))))

(declare-datatypes ((LexerInterface!189 0))(
  ( (LexerInterfaceExt!186 (__x!1670 Int)) (Lexer!187) )
))
(declare-fun thiss!19403 () LexerInterface!189)

(declare-fun rulesInvariant!183 (LexerInterface!189 List!1366) Bool)

(assert (=> b!77134 (= res!40327 (rulesInvariant!183 thiss!19403 rules!2471))))

(declare-fun res!40328 () Bool)

(assert (=> start!6074 (=> (not res!40328) (not e!43140))))

(assert (=> start!6074 (= res!40328 ((_ is Lexer!187) thiss!19403))))

(assert (=> start!6074 e!43140))

(assert (=> start!6074 true))

(assert (=> start!6074 e!43137))

(assert (=> start!6074 e!43136))

(declare-fun b!77135 () Bool)

(assert (=> b!77135 (= e!43140 e!43138)))

(declare-fun res!40324 () Bool)

(assert (=> b!77135 (=> (not res!40324) (not e!43138))))

(declare-fun isEmpty!411 (BalanceConc!796) Bool)

(assert (=> b!77135 (= res!40324 (not (isEmpty!411 (_2!880 lt!15541))))))

(declare-fun input!2238 () List!1364)

(declare-fun lex!97 (LexerInterface!189 List!1366 BalanceConc!796) tuple2!1346)

(declare-fun seqFromList!106 (List!1364) BalanceConc!796)

(assert (=> b!77135 (= lt!15541 (lex!97 thiss!19403 rules!2471 (seqFromList!106 input!2238)))))

(declare-fun b!77136 () Bool)

(declare-datatypes ((tuple2!1348 0))(
  ( (tuple2!1349 (_1!881 Token!354) (_2!881 List!1364)) )
))
(declare-datatypes ((Option!100 0))(
  ( (None!99) (Some!99 (v!12754 tuple2!1348)) )
))
(declare-fun lt!15539 () Option!100)

(declare-fun isDefined!23 (Option!100) Bool)

(assert (=> b!77136 (= e!43141 (not (isDefined!23 lt!15539)))))

(declare-fun lt!15538 () List!1364)

(declare-fun lt!15543 () tuple2!1346)

(declare-fun lt!15542 () List!1364)

(declare-datatypes ((tuple2!1350 0))(
  ( (tuple2!1351 (_1!882 List!1367) (_2!882 List!1364)) )
))
(declare-fun tail!104 (List!1367) List!1367)

(assert (=> b!77136 (= (tuple2!1351 (list!426 (_1!880 lt!15543)) lt!15538) (tuple2!1351 (tail!104 lt!15533) lt!15542))))

(declare-datatypes ((Unit!820 0))(
  ( (Unit!821) )
))
(declare-fun lt!15536 () Unit!820)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!8 (LexerInterface!189 List!1366 List!1364 List!1367 List!1364) Unit!820)

(assert (=> b!77136 (= lt!15536 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!8 thiss!19403 rules!2471 input!2238 lt!15533 lt!15542))))

(declare-fun list!427 (BalanceConc!796) List!1364)

(assert (=> b!77136 (= lt!15542 (list!427 (_2!880 lt!15541)))))

(declare-fun lt!15540 () List!1364)

(declare-fun lt!15534 () tuple2!1348)

(declare-fun ++!116 (List!1364 List!1364) List!1364)

(assert (=> b!77136 (= (++!116 lt!15540 lt!15538) (_2!881 lt!15534))))

(assert (=> b!77136 (= lt!15538 (list!427 (_2!880 lt!15543)))))

(declare-fun print!28 (LexerInterface!189 BalanceConc!798) BalanceConc!796)

(assert (=> b!77136 (= lt!15540 (list!427 (print!28 thiss!19403 (_1!880 lt!15543))))))

(assert (=> b!77136 (= lt!15543 (lex!97 thiss!19403 rules!2471 (seqFromList!106 (_2!881 lt!15534))))))

(declare-fun lt!15544 () Unit!820)

(declare-fun theoremInvertFromString!12 (LexerInterface!189 List!1366 List!1364) Unit!820)

(assert (=> b!77136 (= lt!15544 (theoremInvertFromString!12 thiss!19403 rules!2471 (_2!881 lt!15534)))))

(declare-fun get!334 (Option!100) tuple2!1348)

(assert (=> b!77136 (= lt!15534 (get!334 lt!15539))))

(declare-fun maxPrefix!33 (LexerInterface!189 List!1366 List!1364) Option!100)

(assert (=> b!77136 (= lt!15539 (maxPrefix!33 thiss!19403 rules!2471 input!2238))))

(declare-fun prepend!48 (BalanceConc!798 Token!354) BalanceConc!798)

(declare-fun seqFromList!107 (List!1367) BalanceConc!798)

(assert (=> b!77136 (= lt!15533 (list!426 (prepend!48 (seqFromList!107 (t!20146 lt!15533)) (h!6758 lt!15533))))))

(declare-fun lt!15537 () Unit!820)

(declare-fun seqFromListBHdTlConstructive!20 (Token!354 List!1367 BalanceConc!798) Unit!820)

(assert (=> b!77136 (= lt!15537 (seqFromListBHdTlConstructive!20 (h!6758 lt!15533) (t!20146 lt!15533) (_1!880 lt!15541)))))

(assert (= (and start!6074 res!40328) b!77130))

(assert (= (and b!77130 res!40326) b!77134))

(assert (= (and b!77134 res!40327) b!77135))

(assert (= (and b!77135 res!40324) b!77131))

(assert (= (and b!77131 res!40325) b!77136))

(assert (= b!77128 b!77133))

(assert (= b!77132 b!77128))

(assert (= (and start!6074 ((_ is Cons!1360) rules!2471)) b!77132))

(assert (= (and start!6074 ((_ is Cons!1358) input!2238)) b!77129))

(declare-fun m!49510 () Bool)

(assert (=> b!77136 m!49510))

(declare-fun m!49512 () Bool)

(assert (=> b!77136 m!49512))

(declare-fun m!49514 () Bool)

(assert (=> b!77136 m!49514))

(declare-fun m!49516 () Bool)

(assert (=> b!77136 m!49516))

(declare-fun m!49518 () Bool)

(assert (=> b!77136 m!49518))

(declare-fun m!49520 () Bool)

(assert (=> b!77136 m!49520))

(assert (=> b!77136 m!49514))

(declare-fun m!49522 () Bool)

(assert (=> b!77136 m!49522))

(declare-fun m!49524 () Bool)

(assert (=> b!77136 m!49524))

(declare-fun m!49526 () Bool)

(assert (=> b!77136 m!49526))

(declare-fun m!49528 () Bool)

(assert (=> b!77136 m!49528))

(declare-fun m!49530 () Bool)

(assert (=> b!77136 m!49530))

(declare-fun m!49532 () Bool)

(assert (=> b!77136 m!49532))

(declare-fun m!49534 () Bool)

(assert (=> b!77136 m!49534))

(declare-fun m!49536 () Bool)

(assert (=> b!77136 m!49536))

(declare-fun m!49538 () Bool)

(assert (=> b!77136 m!49538))

(declare-fun m!49540 () Bool)

(assert (=> b!77136 m!49540))

(declare-fun m!49542 () Bool)

(assert (=> b!77136 m!49542))

(assert (=> b!77136 m!49538))

(declare-fun m!49544 () Bool)

(assert (=> b!77136 m!49544))

(assert (=> b!77136 m!49518))

(assert (=> b!77136 m!49532))

(declare-fun m!49546 () Bool)

(assert (=> b!77130 m!49546))

(declare-fun m!49548 () Bool)

(assert (=> b!77135 m!49548))

(declare-fun m!49550 () Bool)

(assert (=> b!77135 m!49550))

(assert (=> b!77135 m!49550))

(declare-fun m!49552 () Bool)

(assert (=> b!77135 m!49552))

(declare-fun m!49554 () Bool)

(assert (=> b!77128 m!49554))

(declare-fun m!49556 () Bool)

(assert (=> b!77128 m!49556))

(declare-fun m!49558 () Bool)

(assert (=> b!77134 m!49558))

(declare-fun m!49560 () Bool)

(assert (=> b!77131 m!49560))

(check-sat (not b!77136) (not b_next!2473) (not b!77131) (not b!77128) (not b!77132) (not b!77134) b_and!3533 b_and!3531 (not b!77129) tp_is_empty!653 (not b_next!2475) (not b!77135) (not b!77130))
(check-sat b_and!3533 b_and!3531 (not b_next!2475) (not b_next!2473))
(get-model)

(declare-fun b!77151 () Bool)

(declare-fun e!43153 () List!1364)

(assert (=> b!77151 (= e!43153 lt!15538)))

(declare-fun b!77152 () Bool)

(assert (=> b!77152 (= e!43153 (Cons!1358 (h!6755 lt!15540) (++!116 (t!20143 lt!15540) lt!15538)))))

(declare-fun lt!15547 () List!1364)

(declare-fun b!77154 () Bool)

(declare-fun e!43154 () Bool)

(assert (=> b!77154 (= e!43154 (or (not (= lt!15538 Nil!1358)) (= lt!15547 lt!15540)))))

(declare-fun b!77153 () Bool)

(declare-fun res!40347 () Bool)

(assert (=> b!77153 (=> (not res!40347) (not e!43154))))

(declare-fun size!1189 (List!1364) Int)

(assert (=> b!77153 (= res!40347 (= (size!1189 lt!15547) (+ (size!1189 lt!15540) (size!1189 lt!15538))))))

(declare-fun d!13754 () Bool)

(assert (=> d!13754 e!43154))

(declare-fun res!40348 () Bool)

(assert (=> d!13754 (=> (not res!40348) (not e!43154))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!63 (List!1364) (InoxSet C!1652))

(assert (=> d!13754 (= res!40348 (= (content!63 lt!15547) ((_ map or) (content!63 lt!15540) (content!63 lt!15538))))))

(assert (=> d!13754 (= lt!15547 e!43153)))

(declare-fun c!19789 () Bool)

(assert (=> d!13754 (= c!19789 ((_ is Nil!1358) lt!15540))))

(assert (=> d!13754 (= (++!116 lt!15540 lt!15538) lt!15547)))

(assert (= (and d!13754 c!19789) b!77151))

(assert (= (and d!13754 (not c!19789)) b!77152))

(assert (= (and d!13754 res!40348) b!77153))

(assert (= (and b!77153 res!40347) b!77154))

(declare-fun m!49572 () Bool)

(assert (=> b!77152 m!49572))

(declare-fun m!49574 () Bool)

(assert (=> b!77153 m!49574))

(declare-fun m!49576 () Bool)

(assert (=> b!77153 m!49576))

(declare-fun m!49578 () Bool)

(assert (=> b!77153 m!49578))

(declare-fun m!49580 () Bool)

(assert (=> d!13754 m!49580))

(declare-fun m!49582 () Bool)

(assert (=> d!13754 m!49582))

(declare-fun m!49584 () Bool)

(assert (=> d!13754 m!49584))

(assert (=> b!77136 d!13754))

(declare-fun b!77212 () Bool)

(declare-fun res!40391 () Bool)

(declare-fun e!43177 () Bool)

(assert (=> b!77212 (=> (not res!40391) (not e!43177))))

(declare-fun lt!15584 () Option!100)

(assert (=> b!77212 (= res!40391 (< (size!1189 (_2!881 (get!334 lt!15584))) (size!1189 input!2238)))))

(declare-fun b!77213 () Bool)

(declare-fun e!43176 () Option!100)

(declare-fun call!3660 () Option!100)

(assert (=> b!77213 (= e!43176 call!3660)))

(declare-fun b!77214 () Bool)

(declare-fun res!40393 () Bool)

(assert (=> b!77214 (=> (not res!40393) (not e!43177))))

(declare-fun charsOf!34 (Token!354) BalanceConc!796)

(assert (=> b!77214 (= res!40393 (= (++!116 (list!427 (charsOf!34 (_1!881 (get!334 lt!15584)))) (_2!881 (get!334 lt!15584))) input!2238))))

(declare-fun bm!3655 () Bool)

(declare-fun maxPrefixOneRule!11 (LexerInterface!189 Rule!394 List!1364) Option!100)

(assert (=> bm!3655 (= call!3660 (maxPrefixOneRule!11 thiss!19403 (h!6757 rules!2471) input!2238))))

(declare-fun b!77216 () Bool)

(declare-fun e!43178 () Bool)

(assert (=> b!77216 (= e!43178 e!43177)))

(declare-fun res!40394 () Bool)

(assert (=> b!77216 (=> (not res!40394) (not e!43177))))

(assert (=> b!77216 (= res!40394 (isDefined!23 lt!15584))))

(declare-fun b!77217 () Bool)

(declare-fun lt!15585 () Option!100)

(declare-fun lt!15583 () Option!100)

(assert (=> b!77217 (= e!43176 (ite (and ((_ is None!99) lt!15585) ((_ is None!99) lt!15583)) None!99 (ite ((_ is None!99) lt!15583) lt!15585 (ite ((_ is None!99) lt!15585) lt!15583 (ite (>= (size!1185 (_1!881 (v!12754 lt!15585))) (size!1185 (_1!881 (v!12754 lt!15583)))) lt!15585 lt!15583)))))))

(assert (=> b!77217 (= lt!15585 call!3660)))

(assert (=> b!77217 (= lt!15583 (maxPrefix!33 thiss!19403 (t!20145 rules!2471) input!2238))))

(declare-fun b!77218 () Bool)

(declare-fun contains!201 (List!1366 Rule!394) Bool)

(assert (=> b!77218 (= e!43177 (contains!201 rules!2471 (rule!774 (_1!881 (get!334 lt!15584)))))))

(declare-fun b!77219 () Bool)

(declare-fun res!40392 () Bool)

(assert (=> b!77219 (=> (not res!40392) (not e!43177))))

(declare-fun apply!179 (TokenValueInjection!398 BalanceConc!796) TokenValue!287)

(assert (=> b!77219 (= res!40392 (= (value!11360 (_1!881 (get!334 lt!15584))) (apply!179 (transformation!297 (rule!774 (_1!881 (get!334 lt!15584)))) (seqFromList!106 (originalCharacters!348 (_1!881 (get!334 lt!15584)))))))))

(declare-fun b!77220 () Bool)

(declare-fun res!40396 () Bool)

(assert (=> b!77220 (=> (not res!40396) (not e!43177))))

(declare-fun matchR!15 (Regex!365 List!1364) Bool)

(assert (=> b!77220 (= res!40396 (matchR!15 (regex!297 (rule!774 (_1!881 (get!334 lt!15584)))) (list!427 (charsOf!34 (_1!881 (get!334 lt!15584))))))))

(declare-fun b!77215 () Bool)

(declare-fun res!40390 () Bool)

(assert (=> b!77215 (=> (not res!40390) (not e!43177))))

(assert (=> b!77215 (= res!40390 (= (list!427 (charsOf!34 (_1!881 (get!334 lt!15584)))) (originalCharacters!348 (_1!881 (get!334 lt!15584)))))))

(declare-fun d!13766 () Bool)

(assert (=> d!13766 e!43178))

(declare-fun res!40395 () Bool)

(assert (=> d!13766 (=> res!40395 e!43178)))

(declare-fun isEmpty!416 (Option!100) Bool)

(assert (=> d!13766 (= res!40395 (isEmpty!416 lt!15584))))

(assert (=> d!13766 (= lt!15584 e!43176)))

(declare-fun c!19798 () Bool)

(assert (=> d!13766 (= c!19798 (and ((_ is Cons!1360) rules!2471) ((_ is Nil!1360) (t!20145 rules!2471))))))

(declare-fun lt!15586 () Unit!820)

(declare-fun lt!15582 () Unit!820)

(assert (=> d!13766 (= lt!15586 lt!15582)))

(declare-fun isPrefix!14 (List!1364 List!1364) Bool)

(assert (=> d!13766 (isPrefix!14 input!2238 input!2238)))

(declare-fun lemmaIsPrefixRefl!14 (List!1364 List!1364) Unit!820)

(assert (=> d!13766 (= lt!15582 (lemmaIsPrefixRefl!14 input!2238 input!2238))))

(declare-fun rulesValidInductive!32 (LexerInterface!189 List!1366) Bool)

(assert (=> d!13766 (rulesValidInductive!32 thiss!19403 rules!2471)))

(assert (=> d!13766 (= (maxPrefix!33 thiss!19403 rules!2471 input!2238) lt!15584)))

(assert (= (and d!13766 c!19798) b!77213))

(assert (= (and d!13766 (not c!19798)) b!77217))

(assert (= (or b!77213 b!77217) bm!3655))

(assert (= (and d!13766 (not res!40395)) b!77216))

(assert (= (and b!77216 res!40394) b!77215))

(assert (= (and b!77215 res!40390) b!77212))

(assert (= (and b!77212 res!40391) b!77214))

(assert (= (and b!77214 res!40393) b!77219))

(assert (= (and b!77219 res!40392) b!77220))

(assert (= (and b!77220 res!40396) b!77218))

(declare-fun m!49652 () Bool)

(assert (=> d!13766 m!49652))

(declare-fun m!49654 () Bool)

(assert (=> d!13766 m!49654))

(declare-fun m!49656 () Bool)

(assert (=> d!13766 m!49656))

(declare-fun m!49658 () Bool)

(assert (=> d!13766 m!49658))

(declare-fun m!49660 () Bool)

(assert (=> b!77212 m!49660))

(declare-fun m!49662 () Bool)

(assert (=> b!77212 m!49662))

(declare-fun m!49664 () Bool)

(assert (=> b!77212 m!49664))

(assert (=> b!77220 m!49660))

(declare-fun m!49666 () Bool)

(assert (=> b!77220 m!49666))

(assert (=> b!77220 m!49666))

(declare-fun m!49668 () Bool)

(assert (=> b!77220 m!49668))

(assert (=> b!77220 m!49668))

(declare-fun m!49670 () Bool)

(assert (=> b!77220 m!49670))

(declare-fun m!49672 () Bool)

(assert (=> b!77217 m!49672))

(declare-fun m!49674 () Bool)

(assert (=> bm!3655 m!49674))

(assert (=> b!77219 m!49660))

(declare-fun m!49676 () Bool)

(assert (=> b!77219 m!49676))

(assert (=> b!77219 m!49676))

(declare-fun m!49678 () Bool)

(assert (=> b!77219 m!49678))

(assert (=> b!77218 m!49660))

(declare-fun m!49680 () Bool)

(assert (=> b!77218 m!49680))

(declare-fun m!49682 () Bool)

(assert (=> b!77216 m!49682))

(assert (=> b!77214 m!49660))

(assert (=> b!77214 m!49666))

(assert (=> b!77214 m!49666))

(assert (=> b!77214 m!49668))

(assert (=> b!77214 m!49668))

(declare-fun m!49684 () Bool)

(assert (=> b!77214 m!49684))

(assert (=> b!77215 m!49660))

(assert (=> b!77215 m!49666))

(assert (=> b!77215 m!49666))

(assert (=> b!77215 m!49668))

(assert (=> b!77136 d!13766))

(declare-fun d!13780 () Bool)

(declare-fun list!430 (Conc!396) List!1364)

(assert (=> d!13780 (= (list!427 (print!28 thiss!19403 (_1!880 lt!15543))) (list!430 (c!19784 (print!28 thiss!19403 (_1!880 lt!15543)))))))

(declare-fun bs!8002 () Bool)

(assert (= bs!8002 d!13780))

(declare-fun m!49686 () Bool)

(assert (=> bs!8002 m!49686))

(assert (=> b!77136 d!13780))

(declare-fun d!13782 () Bool)

(declare-fun e!43181 () Bool)

(assert (=> d!13782 e!43181))

(declare-fun res!40399 () Bool)

(assert (=> d!13782 (=> (not res!40399) (not e!43181))))

(declare-fun isBalanced!75 (Conc!397) Bool)

(declare-fun prepend!50 (Conc!397 Token!354) Conc!397)

(assert (=> d!13782 (= res!40399 (isBalanced!75 (prepend!50 (c!19786 (seqFromList!107 (t!20146 lt!15533))) (h!6758 lt!15533))))))

(declare-fun lt!15589 () BalanceConc!798)

(assert (=> d!13782 (= lt!15589 (BalanceConc!799 (prepend!50 (c!19786 (seqFromList!107 (t!20146 lt!15533))) (h!6758 lt!15533))))))

(assert (=> d!13782 (= (prepend!48 (seqFromList!107 (t!20146 lt!15533)) (h!6758 lt!15533)) lt!15589)))

(declare-fun b!77223 () Bool)

(assert (=> b!77223 (= e!43181 (= (list!426 lt!15589) (Cons!1361 (h!6758 lt!15533) (list!426 (seqFromList!107 (t!20146 lt!15533))))))))

(assert (= (and d!13782 res!40399) b!77223))

(declare-fun m!49688 () Bool)

(assert (=> d!13782 m!49688))

(assert (=> d!13782 m!49688))

(declare-fun m!49690 () Bool)

(assert (=> d!13782 m!49690))

(declare-fun m!49692 () Bool)

(assert (=> b!77223 m!49692))

(assert (=> b!77223 m!49518))

(declare-fun m!49694 () Bool)

(assert (=> b!77223 m!49694))

(assert (=> b!77136 d!13782))

(declare-fun d!13784 () Bool)

(declare-fun lt!15607 () tuple2!1346)

(assert (=> d!13784 (= (tuple2!1351 (list!426 (_1!880 lt!15607)) (list!427 (_2!880 lt!15607))) (tuple2!1351 (tail!104 lt!15533) lt!15542))))

(assert (=> d!13784 (= lt!15607 (lex!97 thiss!19403 rules!2471 (seqFromList!106 (_2!881 (get!334 (maxPrefix!33 thiss!19403 rules!2471 input!2238))))))))

(declare-fun lt!15606 () Unit!820)

(declare-fun choose!1270 (LexerInterface!189 List!1366 List!1364 List!1367 List!1364) Unit!820)

(assert (=> d!13784 (= lt!15606 (choose!1270 thiss!19403 rules!2471 input!2238 lt!15533 lt!15542))))

(assert (=> d!13784 (rulesInvariant!183 thiss!19403 rules!2471)))

(assert (=> d!13784 (= (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!8 thiss!19403 rules!2471 input!2238 lt!15533 lt!15542) lt!15606)))

(declare-fun bs!8010 () Bool)

(assert (= bs!8010 d!13784))

(declare-fun m!49744 () Bool)

(assert (=> bs!8010 m!49744))

(declare-fun m!49746 () Bool)

(assert (=> bs!8010 m!49746))

(assert (=> bs!8010 m!49558))

(declare-fun m!49748 () Bool)

(assert (=> bs!8010 m!49748))

(assert (=> bs!8010 m!49510))

(assert (=> bs!8010 m!49744))

(declare-fun m!49750 () Bool)

(assert (=> bs!8010 m!49750))

(assert (=> bs!8010 m!49520))

(assert (=> bs!8010 m!49510))

(declare-fun m!49752 () Bool)

(assert (=> bs!8010 m!49752))

(declare-fun m!49754 () Bool)

(assert (=> bs!8010 m!49754))

(assert (=> b!77136 d!13784))

(declare-fun d!13808 () Bool)

(assert (=> d!13808 (= (isDefined!23 lt!15539) (not (isEmpty!416 lt!15539)))))

(declare-fun bs!8011 () Bool)

(assert (= bs!8011 d!13808))

(declare-fun m!49756 () Bool)

(assert (=> bs!8011 m!49756))

(assert (=> b!77136 d!13808))

(declare-fun d!13810 () Bool)

(assert (=> d!13810 (= (tail!104 lt!15533) (t!20146 lt!15533))))

(assert (=> b!77136 d!13810))

(declare-fun d!13812 () Bool)

(declare-fun list!431 (Conc!397) List!1367)

(assert (=> d!13812 (= (list!426 (prepend!48 (seqFromList!107 (t!20146 lt!15533)) (h!6758 lt!15533))) (list!431 (c!19786 (prepend!48 (seqFromList!107 (t!20146 lt!15533)) (h!6758 lt!15533)))))))

(declare-fun bs!8012 () Bool)

(assert (= bs!8012 d!13812))

(declare-fun m!49758 () Bool)

(assert (=> bs!8012 m!49758))

(assert (=> b!77136 d!13812))

(declare-fun d!13814 () Bool)

(assert (=> d!13814 (= (list!426 (_1!880 lt!15541)) (list!426 (prepend!48 (seqFromList!107 (t!20146 lt!15533)) (h!6758 lt!15533))))))

(declare-fun lt!15610 () Unit!820)

(declare-fun choose!1271 (Token!354 List!1367 BalanceConc!798) Unit!820)

(assert (=> d!13814 (= lt!15610 (choose!1271 (h!6758 lt!15533) (t!20146 lt!15533) (_1!880 lt!15541)))))

(declare-fun $colon$colon!16 (List!1367 Token!354) List!1367)

(assert (=> d!13814 (= (list!426 (_1!880 lt!15541)) (list!426 (seqFromList!107 ($colon$colon!16 (t!20146 lt!15533) (h!6758 lt!15533)))))))

(assert (=> d!13814 (= (seqFromListBHdTlConstructive!20 (h!6758 lt!15533) (t!20146 lt!15533) (_1!880 lt!15541)) lt!15610)))

(declare-fun bs!8013 () Bool)

(assert (= bs!8013 d!13814))

(declare-fun m!49760 () Bool)

(assert (=> bs!8013 m!49760))

(declare-fun m!49762 () Bool)

(assert (=> bs!8013 m!49762))

(declare-fun m!49764 () Bool)

(assert (=> bs!8013 m!49764))

(declare-fun m!49766 () Bool)

(assert (=> bs!8013 m!49766))

(assert (=> bs!8013 m!49518))

(assert (=> bs!8013 m!49532))

(assert (=> bs!8013 m!49518))

(assert (=> bs!8013 m!49532))

(assert (=> bs!8013 m!49534))

(assert (=> bs!8013 m!49766))

(assert (=> bs!8013 m!49760))

(assert (=> bs!8013 m!49560))

(assert (=> b!77136 d!13814))

(declare-fun b!77287 () Bool)

(declare-fun e!43222 () Bool)

(declare-fun e!43223 () Bool)

(assert (=> b!77287 (= e!43222 e!43223)))

(declare-fun res!40422 () Bool)

(declare-fun lt!15623 () tuple2!1346)

(declare-fun size!1190 (BalanceConc!796) Int)

(assert (=> b!77287 (= res!40422 (< (size!1190 (_2!880 lt!15623)) (size!1190 (seqFromList!106 (_2!881 lt!15534)))))))

(assert (=> b!77287 (=> (not res!40422) (not e!43223))))

(declare-fun d!13816 () Bool)

(declare-fun e!43221 () Bool)

(assert (=> d!13816 e!43221))

(declare-fun res!40423 () Bool)

(assert (=> d!13816 (=> (not res!40423) (not e!43221))))

(assert (=> d!13816 (= res!40423 e!43222)))

(declare-fun c!19807 () Bool)

(declare-fun size!1191 (BalanceConc!798) Int)

(assert (=> d!13816 (= c!19807 (> (size!1191 (_1!880 lt!15623)) 0))))

(declare-fun lexTailRecV2!35 (LexerInterface!189 List!1366 BalanceConc!796 BalanceConc!796 BalanceConc!796 BalanceConc!798) tuple2!1346)

(assert (=> d!13816 (= lt!15623 (lexTailRecV2!35 thiss!19403 rules!2471 (seqFromList!106 (_2!881 lt!15534)) (BalanceConc!797 Empty!396) (seqFromList!106 (_2!881 lt!15534)) (BalanceConc!799 Empty!397)))))

(assert (=> d!13816 (= (lex!97 thiss!19403 rules!2471 (seqFromList!106 (_2!881 lt!15534))) lt!15623)))

(declare-fun b!77288 () Bool)

(declare-fun isEmpty!417 (BalanceConc!798) Bool)

(assert (=> b!77288 (= e!43223 (not (isEmpty!417 (_1!880 lt!15623))))))

(declare-fun b!77289 () Bool)

(declare-fun lexList!38 (LexerInterface!189 List!1366 List!1364) tuple2!1350)

(assert (=> b!77289 (= e!43221 (= (list!427 (_2!880 lt!15623)) (_2!882 (lexList!38 thiss!19403 rules!2471 (list!427 (seqFromList!106 (_2!881 lt!15534)))))))))

(declare-fun b!77290 () Bool)

(assert (=> b!77290 (= e!43222 (= (_2!880 lt!15623) (seqFromList!106 (_2!881 lt!15534))))))

(declare-fun b!77291 () Bool)

(declare-fun res!40421 () Bool)

(assert (=> b!77291 (=> (not res!40421) (not e!43221))))

(assert (=> b!77291 (= res!40421 (= (list!426 (_1!880 lt!15623)) (_1!882 (lexList!38 thiss!19403 rules!2471 (list!427 (seqFromList!106 (_2!881 lt!15534)))))))))

(assert (= (and d!13816 c!19807) b!77287))

(assert (= (and d!13816 (not c!19807)) b!77290))

(assert (= (and b!77287 res!40422) b!77288))

(assert (= (and d!13816 res!40423) b!77291))

(assert (= (and b!77291 res!40421) b!77289))

(declare-fun m!49808 () Bool)

(assert (=> d!13816 m!49808))

(assert (=> d!13816 m!49538))

(assert (=> d!13816 m!49538))

(declare-fun m!49810 () Bool)

(assert (=> d!13816 m!49810))

(declare-fun m!49812 () Bool)

(assert (=> b!77288 m!49812))

(declare-fun m!49814 () Bool)

(assert (=> b!77291 m!49814))

(assert (=> b!77291 m!49538))

(declare-fun m!49816 () Bool)

(assert (=> b!77291 m!49816))

(assert (=> b!77291 m!49816))

(declare-fun m!49818 () Bool)

(assert (=> b!77291 m!49818))

(declare-fun m!49820 () Bool)

(assert (=> b!77287 m!49820))

(assert (=> b!77287 m!49538))

(declare-fun m!49822 () Bool)

(assert (=> b!77287 m!49822))

(declare-fun m!49824 () Bool)

(assert (=> b!77289 m!49824))

(assert (=> b!77289 m!49538))

(assert (=> b!77289 m!49816))

(assert (=> b!77289 m!49816))

(assert (=> b!77289 m!49818))

(assert (=> b!77136 d!13816))

(declare-fun d!13824 () Bool)

(assert (=> d!13824 (= (get!334 lt!15539) (v!12754 lt!15539))))

(assert (=> b!77136 d!13824))

(declare-fun d!13826 () Bool)

(declare-fun lt!15626 () BalanceConc!796)

(declare-fun printList!10 (LexerInterface!189 List!1367) List!1364)

(assert (=> d!13826 (= (list!427 lt!15626) (printList!10 thiss!19403 (list!426 (_1!880 lt!15543))))))

(declare-fun printTailRec!10 (LexerInterface!189 BalanceConc!798 Int BalanceConc!796) BalanceConc!796)

(assert (=> d!13826 (= lt!15626 (printTailRec!10 thiss!19403 (_1!880 lt!15543) 0 (BalanceConc!797 Empty!396)))))

(assert (=> d!13826 (= (print!28 thiss!19403 (_1!880 lt!15543)) lt!15626)))

(declare-fun bs!8017 () Bool)

(assert (= bs!8017 d!13826))

(declare-fun m!49826 () Bool)

(assert (=> bs!8017 m!49826))

(assert (=> bs!8017 m!49540))

(assert (=> bs!8017 m!49540))

(declare-fun m!49828 () Bool)

(assert (=> bs!8017 m!49828))

(declare-fun m!49830 () Bool)

(assert (=> bs!8017 m!49830))

(assert (=> b!77136 d!13826))

(declare-fun d!13828 () Bool)

(declare-fun lt!15632 () tuple2!1346)

(assert (=> d!13828 (= (++!116 (list!427 (print!28 thiss!19403 (_1!880 lt!15632))) (list!427 (_2!880 lt!15632))) (_2!881 lt!15534))))

(assert (=> d!13828 (= lt!15632 (lex!97 thiss!19403 rules!2471 (seqFromList!106 (_2!881 lt!15534))))))

(declare-fun lt!15631 () Unit!820)

(declare-fun choose!1272 (LexerInterface!189 List!1366 List!1364) Unit!820)

(assert (=> d!13828 (= lt!15631 (choose!1272 thiss!19403 rules!2471 (_2!881 lt!15534)))))

(assert (=> d!13828 (not (isEmpty!410 rules!2471))))

(assert (=> d!13828 (= (theoremInvertFromString!12 thiss!19403 rules!2471 (_2!881 lt!15534)) lt!15631)))

(declare-fun bs!8018 () Bool)

(assert (= bs!8018 d!13828))

(declare-fun m!49832 () Bool)

(assert (=> bs!8018 m!49832))

(assert (=> bs!8018 m!49538))

(assert (=> bs!8018 m!49544))

(declare-fun m!49834 () Bool)

(assert (=> bs!8018 m!49834))

(declare-fun m!49836 () Bool)

(assert (=> bs!8018 m!49836))

(assert (=> bs!8018 m!49836))

(assert (=> bs!8018 m!49832))

(declare-fun m!49838 () Bool)

(assert (=> bs!8018 m!49838))

(declare-fun m!49840 () Bool)

(assert (=> bs!8018 m!49840))

(assert (=> bs!8018 m!49538))

(assert (=> bs!8018 m!49546))

(assert (=> bs!8018 m!49834))

(assert (=> b!77136 d!13828))

(declare-fun d!13830 () Bool)

(assert (=> d!13830 (= (list!427 (_2!880 lt!15541)) (list!430 (c!19784 (_2!880 lt!15541))))))

(declare-fun bs!8019 () Bool)

(assert (= bs!8019 d!13830))

(declare-fun m!49842 () Bool)

(assert (=> bs!8019 m!49842))

(assert (=> b!77136 d!13830))

(declare-fun d!13832 () Bool)

(declare-fun fromListB!35 (List!1367) BalanceConc!798)

(assert (=> d!13832 (= (seqFromList!107 (t!20146 lt!15533)) (fromListB!35 (t!20146 lt!15533)))))

(declare-fun bs!8020 () Bool)

(assert (= bs!8020 d!13832))

(declare-fun m!49844 () Bool)

(assert (=> bs!8020 m!49844))

(assert (=> b!77136 d!13832))

(declare-fun d!13834 () Bool)

(assert (=> d!13834 (= (list!426 (_1!880 lt!15543)) (list!431 (c!19786 (_1!880 lt!15543))))))

(declare-fun bs!8021 () Bool)

(assert (= bs!8021 d!13834))

(declare-fun m!49846 () Bool)

(assert (=> bs!8021 m!49846))

(assert (=> b!77136 d!13834))

(declare-fun d!13836 () Bool)

(declare-fun fromListB!36 (List!1364) BalanceConc!796)

(assert (=> d!13836 (= (seqFromList!106 (_2!881 lt!15534)) (fromListB!36 (_2!881 lt!15534)))))

(declare-fun bs!8022 () Bool)

(assert (= bs!8022 d!13836))

(declare-fun m!49848 () Bool)

(assert (=> bs!8022 m!49848))

(assert (=> b!77136 d!13836))

(declare-fun d!13838 () Bool)

(assert (=> d!13838 (= (list!427 (_2!880 lt!15543)) (list!430 (c!19784 (_2!880 lt!15543))))))

(declare-fun bs!8023 () Bool)

(assert (= bs!8023 d!13838))

(declare-fun m!49850 () Bool)

(assert (=> bs!8023 m!49850))

(assert (=> b!77136 d!13838))

(declare-fun d!13840 () Bool)

(assert (=> d!13840 (= (list!426 (_1!880 lt!15541)) (list!431 (c!19786 (_1!880 lt!15541))))))

(declare-fun bs!8024 () Bool)

(assert (= bs!8024 d!13840))

(declare-fun m!49852 () Bool)

(assert (=> bs!8024 m!49852))

(assert (=> b!77131 d!13840))

(declare-fun d!13842 () Bool)

(assert (=> d!13842 (= (isEmpty!410 rules!2471) ((_ is Nil!1360) rules!2471))))

(assert (=> b!77130 d!13842))

(declare-fun d!13844 () Bool)

(declare-fun lt!15635 () Bool)

(declare-fun isEmpty!418 (List!1364) Bool)

(assert (=> d!13844 (= lt!15635 (isEmpty!418 (list!427 (_2!880 lt!15541))))))

(declare-fun isEmpty!419 (Conc!396) Bool)

(assert (=> d!13844 (= lt!15635 (isEmpty!419 (c!19784 (_2!880 lt!15541))))))

(assert (=> d!13844 (= (isEmpty!411 (_2!880 lt!15541)) lt!15635)))

(declare-fun bs!8025 () Bool)

(assert (= bs!8025 d!13844))

(assert (=> bs!8025 m!49526))

(assert (=> bs!8025 m!49526))

(declare-fun m!49854 () Bool)

(assert (=> bs!8025 m!49854))

(declare-fun m!49856 () Bool)

(assert (=> bs!8025 m!49856))

(assert (=> b!77135 d!13844))

(declare-fun b!77292 () Bool)

(declare-fun e!43225 () Bool)

(declare-fun e!43226 () Bool)

(assert (=> b!77292 (= e!43225 e!43226)))

(declare-fun res!40425 () Bool)

(declare-fun lt!15636 () tuple2!1346)

(assert (=> b!77292 (= res!40425 (< (size!1190 (_2!880 lt!15636)) (size!1190 (seqFromList!106 input!2238))))))

(assert (=> b!77292 (=> (not res!40425) (not e!43226))))

(declare-fun d!13846 () Bool)

(declare-fun e!43224 () Bool)

(assert (=> d!13846 e!43224))

(declare-fun res!40426 () Bool)

(assert (=> d!13846 (=> (not res!40426) (not e!43224))))

(assert (=> d!13846 (= res!40426 e!43225)))

(declare-fun c!19808 () Bool)

(assert (=> d!13846 (= c!19808 (> (size!1191 (_1!880 lt!15636)) 0))))

(assert (=> d!13846 (= lt!15636 (lexTailRecV2!35 thiss!19403 rules!2471 (seqFromList!106 input!2238) (BalanceConc!797 Empty!396) (seqFromList!106 input!2238) (BalanceConc!799 Empty!397)))))

(assert (=> d!13846 (= (lex!97 thiss!19403 rules!2471 (seqFromList!106 input!2238)) lt!15636)))

(declare-fun b!77293 () Bool)

(assert (=> b!77293 (= e!43226 (not (isEmpty!417 (_1!880 lt!15636))))))

(declare-fun b!77294 () Bool)

(assert (=> b!77294 (= e!43224 (= (list!427 (_2!880 lt!15636)) (_2!882 (lexList!38 thiss!19403 rules!2471 (list!427 (seqFromList!106 input!2238))))))))

(declare-fun b!77295 () Bool)

(assert (=> b!77295 (= e!43225 (= (_2!880 lt!15636) (seqFromList!106 input!2238)))))

(declare-fun b!77296 () Bool)

(declare-fun res!40424 () Bool)

(assert (=> b!77296 (=> (not res!40424) (not e!43224))))

(assert (=> b!77296 (= res!40424 (= (list!426 (_1!880 lt!15636)) (_1!882 (lexList!38 thiss!19403 rules!2471 (list!427 (seqFromList!106 input!2238))))))))

(assert (= (and d!13846 c!19808) b!77292))

(assert (= (and d!13846 (not c!19808)) b!77295))

(assert (= (and b!77292 res!40425) b!77293))

(assert (= (and d!13846 res!40426) b!77296))

(assert (= (and b!77296 res!40424) b!77294))

(declare-fun m!49858 () Bool)

(assert (=> d!13846 m!49858))

(assert (=> d!13846 m!49550))

(assert (=> d!13846 m!49550))

(declare-fun m!49860 () Bool)

(assert (=> d!13846 m!49860))

(declare-fun m!49862 () Bool)

(assert (=> b!77293 m!49862))

(declare-fun m!49864 () Bool)

(assert (=> b!77296 m!49864))

(assert (=> b!77296 m!49550))

(declare-fun m!49866 () Bool)

(assert (=> b!77296 m!49866))

(assert (=> b!77296 m!49866))

(declare-fun m!49868 () Bool)

(assert (=> b!77296 m!49868))

(declare-fun m!49870 () Bool)

(assert (=> b!77292 m!49870))

(assert (=> b!77292 m!49550))

(declare-fun m!49872 () Bool)

(assert (=> b!77292 m!49872))

(declare-fun m!49874 () Bool)

(assert (=> b!77294 m!49874))

(assert (=> b!77294 m!49550))

(assert (=> b!77294 m!49866))

(assert (=> b!77294 m!49866))

(assert (=> b!77294 m!49868))

(assert (=> b!77135 d!13846))

(declare-fun d!13848 () Bool)

(assert (=> d!13848 (= (seqFromList!106 input!2238) (fromListB!36 input!2238))))

(declare-fun bs!8026 () Bool)

(assert (= bs!8026 d!13848))

(declare-fun m!49876 () Bool)

(assert (=> bs!8026 m!49876))

(assert (=> b!77135 d!13848))

(declare-fun d!13850 () Bool)

(declare-fun res!40429 () Bool)

(declare-fun e!43229 () Bool)

(assert (=> d!13850 (=> (not res!40429) (not e!43229))))

(declare-fun rulesValid!57 (LexerInterface!189 List!1366) Bool)

(assert (=> d!13850 (= res!40429 (rulesValid!57 thiss!19403 rules!2471))))

(assert (=> d!13850 (= (rulesInvariant!183 thiss!19403 rules!2471) e!43229)))

(declare-fun b!77299 () Bool)

(declare-datatypes ((List!1369 0))(
  ( (Nil!1363) (Cons!1363 (h!6760 String!1826) (t!20148 List!1369)) )
))
(declare-fun noDuplicateTag!57 (LexerInterface!189 List!1366 List!1369) Bool)

(assert (=> b!77299 (= e!43229 (noDuplicateTag!57 thiss!19403 rules!2471 Nil!1363))))

(assert (= (and d!13850 res!40429) b!77299))

(declare-fun m!49878 () Bool)

(assert (=> d!13850 m!49878))

(declare-fun m!49880 () Bool)

(assert (=> b!77299 m!49880))

(assert (=> b!77134 d!13850))

(declare-fun d!13852 () Bool)

(assert (=> d!13852 (= (inv!1721 (tag!475 (h!6757 rules!2471))) (= (mod (str.len (value!11334 (tag!475 (h!6757 rules!2471)))) 2) 0))))

(assert (=> b!77128 d!13852))

(declare-fun d!13854 () Bool)

(declare-fun res!40432 () Bool)

(declare-fun e!43232 () Bool)

(assert (=> d!13854 (=> (not res!40432) (not e!43232))))

(declare-fun semiInverseModEq!49 (Int Int) Bool)

(assert (=> d!13854 (= res!40432 (semiInverseModEq!49 (toChars!663 (transformation!297 (h!6757 rules!2471))) (toValue!804 (transformation!297 (h!6757 rules!2471)))))))

(assert (=> d!13854 (= (inv!1723 (transformation!297 (h!6757 rules!2471))) e!43232)))

(declare-fun b!77302 () Bool)

(declare-fun equivClasses!45 (Int Int) Bool)

(assert (=> b!77302 (= e!43232 (equivClasses!45 (toChars!663 (transformation!297 (h!6757 rules!2471))) (toValue!804 (transformation!297 (h!6757 rules!2471)))))))

(assert (= (and d!13854 res!40432) b!77302))

(declare-fun m!49882 () Bool)

(assert (=> d!13854 m!49882))

(declare-fun m!49884 () Bool)

(assert (=> b!77302 m!49884))

(assert (=> b!77128 d!13854))

(declare-fun b!77313 () Bool)

(declare-fun b_free!2481 () Bool)

(declare-fun b_next!2481 () Bool)

(assert (=> b!77313 (= b_free!2481 (not b_next!2481))))

(declare-fun tp!49804 () Bool)

(declare-fun b_and!3539 () Bool)

(assert (=> b!77313 (= tp!49804 b_and!3539)))

(declare-fun b_free!2483 () Bool)

(declare-fun b_next!2483 () Bool)

(assert (=> b!77313 (= b_free!2483 (not b_next!2483))))

(declare-fun tp!49806 () Bool)

(declare-fun b_and!3541 () Bool)

(assert (=> b!77313 (= tp!49806 b_and!3541)))

(declare-fun e!43241 () Bool)

(assert (=> b!77313 (= e!43241 (and tp!49804 tp!49806))))

(declare-fun e!43244 () Bool)

(declare-fun b!77312 () Bool)

(declare-fun tp!49803 () Bool)

(assert (=> b!77312 (= e!43244 (and tp!49803 (inv!1721 (tag!475 (h!6757 (t!20145 rules!2471)))) (inv!1723 (transformation!297 (h!6757 (t!20145 rules!2471)))) e!43241))))

(declare-fun b!77311 () Bool)

(declare-fun e!43242 () Bool)

(declare-fun tp!49805 () Bool)

(assert (=> b!77311 (= e!43242 (and e!43244 tp!49805))))

(assert (=> b!77132 (= tp!49763 e!43242)))

(assert (= b!77312 b!77313))

(assert (= b!77311 b!77312))

(assert (= (and b!77132 ((_ is Cons!1360) (t!20145 rules!2471))) b!77311))

(declare-fun m!49886 () Bool)

(assert (=> b!77312 m!49886))

(declare-fun m!49888 () Bool)

(assert (=> b!77312 m!49888))

(declare-fun b!77318 () Bool)

(declare-fun e!43247 () Bool)

(declare-fun tp!49809 () Bool)

(assert (=> b!77318 (= e!43247 (and tp_is_empty!653 tp!49809))))

(assert (=> b!77129 (= tp!49761 e!43247)))

(assert (= (and b!77129 ((_ is Cons!1358) (t!20143 input!2238))) b!77318))

(declare-fun b!77331 () Bool)

(declare-fun e!43250 () Bool)

(declare-fun tp!49823 () Bool)

(assert (=> b!77331 (= e!43250 tp!49823)))

(declare-fun b!77330 () Bool)

(declare-fun tp!49821 () Bool)

(declare-fun tp!49824 () Bool)

(assert (=> b!77330 (= e!43250 (and tp!49821 tp!49824))))

(declare-fun b!77329 () Bool)

(assert (=> b!77329 (= e!43250 tp_is_empty!653)))

(assert (=> b!77128 (= tp!49764 e!43250)))

(declare-fun b!77332 () Bool)

(declare-fun tp!49822 () Bool)

(declare-fun tp!49820 () Bool)

(assert (=> b!77332 (= e!43250 (and tp!49822 tp!49820))))

(assert (= (and b!77128 ((_ is ElementMatch!365) (regex!297 (h!6757 rules!2471)))) b!77329))

(assert (= (and b!77128 ((_ is Concat!652) (regex!297 (h!6757 rules!2471)))) b!77330))

(assert (= (and b!77128 ((_ is Star!365) (regex!297 (h!6757 rules!2471)))) b!77331))

(assert (= (and b!77128 ((_ is Union!365) (regex!297 (h!6757 rules!2471)))) b!77332))

(check-sat (not b_next!2473) (not b!77330) (not b!77216) (not b!77218) b_and!3539 (not b!77296) (not d!13766) (not b!77219) (not b!77311) b_and!3531 (not d!13830) (not b!77294) (not b!77153) (not b!77312) (not d!13754) (not d!13840) (not b!77289) tp_is_empty!653 (not d!13814) (not b_next!2475) (not b!77293) b_and!3541 (not b!77288) (not b!77223) (not d!13838) (not d!13832) (not b!77220) (not b!77331) (not d!13826) (not b!77215) (not b!77299) (not d!13846) (not b_next!2483) (not b!77214) (not d!13828) (not b!77217) (not d!13780) (not d!13850) (not b!77152) (not d!13848) (not b!77332) (not d!13816) (not b!77302) (not d!13812) (not b!77318) (not b!77292) (not b_next!2481) (not b!77291) (not d!13854) (not d!13808) (not d!13784) (not bm!3655) b_and!3533 (not d!13834) (not d!13844) (not b!77212) (not d!13836) (not d!13782) (not b!77287))
(check-sat (not b_next!2475) (not b_next!2473) b_and!3541 (not b_next!2483) b_and!3539 (not b_next!2481) b_and!3533 b_and!3531)
(get-model)

(declare-fun d!13886 () Bool)

(declare-fun c!19835 () Bool)

(assert (=> d!13886 (= c!19835 ((_ is Nil!1358) lt!15547))))

(declare-fun e!43292 () (InoxSet C!1652))

(assert (=> d!13886 (= (content!63 lt!15547) e!43292)))

(declare-fun b!77412 () Bool)

(assert (=> b!77412 (= e!43292 ((as const (Array C!1652 Bool)) false))))

(declare-fun b!77413 () Bool)

(assert (=> b!77413 (= e!43292 ((_ map or) (store ((as const (Array C!1652 Bool)) false) (h!6755 lt!15547) true) (content!63 (t!20143 lt!15547))))))

(assert (= (and d!13886 c!19835) b!77412))

(assert (= (and d!13886 (not c!19835)) b!77413))

(declare-fun m!50000 () Bool)

(assert (=> b!77413 m!50000))

(declare-fun m!50002 () Bool)

(assert (=> b!77413 m!50002))

(assert (=> d!13754 d!13886))

(declare-fun d!13888 () Bool)

(declare-fun c!19836 () Bool)

(assert (=> d!13888 (= c!19836 ((_ is Nil!1358) lt!15540))))

(declare-fun e!43293 () (InoxSet C!1652))

(assert (=> d!13888 (= (content!63 lt!15540) e!43293)))

(declare-fun b!77414 () Bool)

(assert (=> b!77414 (= e!43293 ((as const (Array C!1652 Bool)) false))))

(declare-fun b!77415 () Bool)

(assert (=> b!77415 (= e!43293 ((_ map or) (store ((as const (Array C!1652 Bool)) false) (h!6755 lt!15540) true) (content!63 (t!20143 lt!15540))))))

(assert (= (and d!13888 c!19836) b!77414))

(assert (= (and d!13888 (not c!19836)) b!77415))

(declare-fun m!50004 () Bool)

(assert (=> b!77415 m!50004))

(declare-fun m!50006 () Bool)

(assert (=> b!77415 m!50006))

(assert (=> d!13754 d!13888))

(declare-fun d!13890 () Bool)

(declare-fun c!19837 () Bool)

(assert (=> d!13890 (= c!19837 ((_ is Nil!1358) lt!15538))))

(declare-fun e!43294 () (InoxSet C!1652))

(assert (=> d!13890 (= (content!63 lt!15538) e!43294)))

(declare-fun b!77416 () Bool)

(assert (=> b!77416 (= e!43294 ((as const (Array C!1652 Bool)) false))))

(declare-fun b!77417 () Bool)

(assert (=> b!77417 (= e!43294 ((_ map or) (store ((as const (Array C!1652 Bool)) false) (h!6755 lt!15538) true) (content!63 (t!20143 lt!15538))))))

(assert (= (and d!13890 c!19837) b!77416))

(assert (= (and d!13890 (not c!19837)) b!77417))

(declare-fun m!50008 () Bool)

(assert (=> b!77417 m!50008))

(declare-fun m!50010 () Bool)

(assert (=> b!77417 m!50010))

(assert (=> d!13754 d!13890))

(declare-fun b!77427 () Bool)

(declare-fun e!43299 () List!1367)

(declare-fun e!43300 () List!1367)

(assert (=> b!77427 (= e!43299 e!43300)))

(declare-fun c!19843 () Bool)

(assert (=> b!77427 (= c!19843 ((_ is Leaf!681) (c!19786 (_1!880 lt!15543))))))

(declare-fun b!77428 () Bool)

(declare-fun list!434 (IArray!795) List!1367)

(assert (=> b!77428 (= e!43300 (list!434 (xs!2976 (c!19786 (_1!880 lt!15543)))))))

(declare-fun d!13892 () Bool)

(declare-fun c!19842 () Bool)

(assert (=> d!13892 (= c!19842 ((_ is Empty!397) (c!19786 (_1!880 lt!15543))))))

(assert (=> d!13892 (= (list!431 (c!19786 (_1!880 lt!15543))) e!43299)))

(declare-fun b!77429 () Bool)

(declare-fun ++!120 (List!1367 List!1367) List!1367)

(assert (=> b!77429 (= e!43300 (++!120 (list!431 (left!1030 (c!19786 (_1!880 lt!15543)))) (list!431 (right!1360 (c!19786 (_1!880 lt!15543))))))))

(declare-fun b!77426 () Bool)

(assert (=> b!77426 (= e!43299 Nil!1361)))

(assert (= (and d!13892 c!19842) b!77426))

(assert (= (and d!13892 (not c!19842)) b!77427))

(assert (= (and b!77427 c!19843) b!77428))

(assert (= (and b!77427 (not c!19843)) b!77429))

(declare-fun m!50012 () Bool)

(assert (=> b!77428 m!50012))

(declare-fun m!50014 () Bool)

(assert (=> b!77429 m!50014))

(declare-fun m!50016 () Bool)

(assert (=> b!77429 m!50016))

(assert (=> b!77429 m!50014))

(assert (=> b!77429 m!50016))

(declare-fun m!50018 () Bool)

(assert (=> b!77429 m!50018))

(assert (=> d!13834 d!13892))

(declare-fun d!13894 () Bool)

(assert (=> d!13894 (= (isDefined!23 lt!15584) (not (isEmpty!416 lt!15584)))))

(declare-fun bs!8033 () Bool)

(assert (= bs!8033 d!13894))

(assert (=> bs!8033 m!49652))

(assert (=> b!77216 d!13894))

(declare-fun d!13896 () Bool)

(declare-fun lt!15678 () Int)

(declare-fun size!1194 (List!1367) Int)

(assert (=> d!13896 (= lt!15678 (size!1194 (list!426 (_1!880 lt!15636))))))

(declare-fun size!1195 (Conc!397) Int)

(assert (=> d!13896 (= lt!15678 (size!1195 (c!19786 (_1!880 lt!15636))))))

(assert (=> d!13896 (= (size!1191 (_1!880 lt!15636)) lt!15678)))

(declare-fun bs!8034 () Bool)

(assert (= bs!8034 d!13896))

(assert (=> bs!8034 m!49864))

(assert (=> bs!8034 m!49864))

(declare-fun m!50020 () Bool)

(assert (=> bs!8034 m!50020))

(declare-fun m!50022 () Bool)

(assert (=> bs!8034 m!50022))

(assert (=> d!13846 d!13896))

(declare-fun b!77514 () Bool)

(declare-fun e!43350 () tuple2!1346)

(assert (=> b!77514 (= e!43350 (tuple2!1347 (BalanceConc!799 Empty!397) (seqFromList!106 input!2238)))))

(declare-datatypes ((tuple2!1354 0))(
  ( (tuple2!1355 (_1!884 Token!354) (_2!884 BalanceConc!796)) )
))
(declare-datatypes ((Option!101 0))(
  ( (None!100) (Some!100 (v!12765 tuple2!1354)) )
))
(declare-fun lt!15810 () Option!101)

(declare-fun lt!15814 () BalanceConc!796)

(declare-fun b!77515 () Bool)

(declare-fun e!43352 () tuple2!1346)

(declare-fun append!22 (BalanceConc!798 Token!354) BalanceConc!798)

(assert (=> b!77515 (= e!43352 (lexTailRecV2!35 thiss!19403 rules!2471 (seqFromList!106 input!2238) lt!15814 (_2!884 (v!12765 lt!15810)) (append!22 (BalanceConc!799 Empty!397) (_1!884 (v!12765 lt!15810)))))))

(declare-fun lt!15811 () tuple2!1346)

(declare-fun lexRec!21 (LexerInterface!189 List!1366 BalanceConc!796) tuple2!1346)

(assert (=> b!77515 (= lt!15811 (lexRec!21 thiss!19403 rules!2471 (_2!884 (v!12765 lt!15810))))))

(declare-fun lt!15801 () List!1364)

(assert (=> b!77515 (= lt!15801 (list!427 (BalanceConc!797 Empty!396)))))

(declare-fun lt!15799 () List!1364)

(assert (=> b!77515 (= lt!15799 (list!427 (charsOf!34 (_1!884 (v!12765 lt!15810)))))))

(declare-fun lt!15794 () List!1364)

(assert (=> b!77515 (= lt!15794 (list!427 (_2!884 (v!12765 lt!15810))))))

(declare-fun lt!15812 () Unit!820)

(declare-fun lemmaConcatAssociativity!36 (List!1364 List!1364 List!1364) Unit!820)

(assert (=> b!77515 (= lt!15812 (lemmaConcatAssociativity!36 lt!15801 lt!15799 lt!15794))))

(assert (=> b!77515 (= (++!116 (++!116 lt!15801 lt!15799) lt!15794) (++!116 lt!15801 (++!116 lt!15799 lt!15794)))))

(declare-fun lt!15813 () Unit!820)

(assert (=> b!77515 (= lt!15813 lt!15812)))

(declare-fun lt!15787 () Option!101)

(declare-fun maxPrefixZipperSequence!19 (LexerInterface!189 List!1366 BalanceConc!796) Option!101)

(assert (=> b!77515 (= lt!15787 (maxPrefixZipperSequence!19 thiss!19403 rules!2471 (seqFromList!106 input!2238)))))

(declare-fun c!19869 () Bool)

(assert (=> b!77515 (= c!19869 ((_ is Some!100) lt!15787))))

(assert (=> b!77515 (= (lexRec!21 thiss!19403 rules!2471 (seqFromList!106 input!2238)) e!43350)))

(declare-fun lt!15798 () Unit!820)

(declare-fun Unit!822 () Unit!820)

(assert (=> b!77515 (= lt!15798 Unit!822)))

(declare-fun lt!15806 () List!1367)

(assert (=> b!77515 (= lt!15806 (list!426 (BalanceConc!799 Empty!397)))))

(declare-fun lt!15783 () List!1367)

(assert (=> b!77515 (= lt!15783 (Cons!1361 (_1!884 (v!12765 lt!15810)) Nil!1361))))

(declare-fun lt!15793 () List!1367)

(assert (=> b!77515 (= lt!15793 (list!426 (_1!880 lt!15811)))))

(declare-fun lt!15786 () Unit!820)

(declare-fun lemmaConcatAssociativity!37 (List!1367 List!1367 List!1367) Unit!820)

(assert (=> b!77515 (= lt!15786 (lemmaConcatAssociativity!37 lt!15806 lt!15783 lt!15793))))

(assert (=> b!77515 (= (++!120 (++!120 lt!15806 lt!15783) lt!15793) (++!120 lt!15806 (++!120 lt!15783 lt!15793)))))

(declare-fun lt!15785 () Unit!820)

(assert (=> b!77515 (= lt!15785 lt!15786)))

(declare-fun lt!15789 () List!1364)

(assert (=> b!77515 (= lt!15789 (++!116 (list!427 (BalanceConc!797 Empty!396)) (list!427 (charsOf!34 (_1!884 (v!12765 lt!15810))))))))

(declare-fun lt!15809 () List!1364)

(assert (=> b!77515 (= lt!15809 (list!427 (_2!884 (v!12765 lt!15810))))))

(declare-fun lt!15788 () List!1367)

(assert (=> b!77515 (= lt!15788 (list!426 (append!22 (BalanceConc!799 Empty!397) (_1!884 (v!12765 lt!15810)))))))

(declare-fun lt!15816 () Unit!820)

(declare-fun lemmaLexThenLexPrefix!16 (LexerInterface!189 List!1366 List!1364 List!1364 List!1367 List!1367 List!1364) Unit!820)

(assert (=> b!77515 (= lt!15816 (lemmaLexThenLexPrefix!16 thiss!19403 rules!2471 lt!15789 lt!15809 lt!15788 (list!426 (_1!880 lt!15811)) (list!427 (_2!880 lt!15811))))))

(assert (=> b!77515 (= (lexList!38 thiss!19403 rules!2471 lt!15789) (tuple2!1351 lt!15788 Nil!1358))))

(declare-fun lt!15800 () Unit!820)

(assert (=> b!77515 (= lt!15800 lt!15816)))

(declare-fun lt!15803 () BalanceConc!796)

(declare-fun ++!121 (BalanceConc!796 BalanceConc!796) BalanceConc!796)

(assert (=> b!77515 (= lt!15803 (++!121 (BalanceConc!797 Empty!396) (charsOf!34 (_1!884 (v!12765 lt!15810)))))))

(declare-fun lt!15796 () Option!101)

(assert (=> b!77515 (= lt!15796 (maxPrefixZipperSequence!19 thiss!19403 rules!2471 lt!15803))))

(declare-fun c!19868 () Bool)

(assert (=> b!77515 (= c!19868 ((_ is Some!100) lt!15796))))

(declare-fun e!43351 () tuple2!1346)

(assert (=> b!77515 (= (lexRec!21 thiss!19403 rules!2471 (++!121 (BalanceConc!797 Empty!396) (charsOf!34 (_1!884 (v!12765 lt!15810))))) e!43351)))

(declare-fun lt!15795 () Unit!820)

(declare-fun Unit!823 () Unit!820)

(assert (=> b!77515 (= lt!15795 Unit!823)))

(assert (=> b!77515 (= lt!15814 (++!121 (BalanceConc!797 Empty!396) (charsOf!34 (_1!884 (v!12765 lt!15810)))))))

(declare-fun lt!15815 () List!1364)

(assert (=> b!77515 (= lt!15815 (list!427 lt!15814))))

(declare-fun lt!15807 () List!1364)

(assert (=> b!77515 (= lt!15807 (list!427 (_2!884 (v!12765 lt!15810))))))

(declare-fun lt!15802 () Unit!820)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!16 (List!1364 List!1364) Unit!820)

(assert (=> b!77515 (= lt!15802 (lemmaConcatTwoListThenFSndIsSuffix!16 lt!15815 lt!15807))))

(declare-fun isSuffix!16 (List!1364 List!1364) Bool)

(assert (=> b!77515 (isSuffix!16 lt!15807 (++!116 lt!15815 lt!15807))))

(declare-fun lt!15797 () Unit!820)

(assert (=> b!77515 (= lt!15797 lt!15802)))

(declare-fun b!77516 () Bool)

(assert (=> b!77516 (= e!43352 (tuple2!1347 (BalanceConc!799 Empty!397) (seqFromList!106 input!2238)))))

(declare-fun lt!15784 () tuple2!1346)

(declare-fun e!43353 () Bool)

(declare-fun b!77518 () Bool)

(assert (=> b!77518 (= e!43353 (= (list!427 (_2!880 lt!15784)) (list!427 (_2!880 (lexRec!21 thiss!19403 rules!2471 (seqFromList!106 input!2238))))))))

(declare-fun b!77519 () Bool)

(declare-fun lt!15804 () tuple2!1346)

(assert (=> b!77519 (= lt!15804 (lexRec!21 thiss!19403 rules!2471 (_2!884 (v!12765 lt!15796))))))

(assert (=> b!77519 (= e!43351 (tuple2!1347 (prepend!48 (_1!880 lt!15804) (_1!884 (v!12765 lt!15796))) (_2!880 lt!15804)))))

(declare-fun b!77520 () Bool)

(assert (=> b!77520 (= e!43351 (tuple2!1347 (BalanceConc!799 Empty!397) lt!15803))))

(declare-fun lt!15808 () tuple2!1346)

(declare-fun b!77517 () Bool)

(assert (=> b!77517 (= lt!15808 (lexRec!21 thiss!19403 rules!2471 (_2!884 (v!12765 lt!15787))))))

(assert (=> b!77517 (= e!43350 (tuple2!1347 (prepend!48 (_1!880 lt!15808) (_1!884 (v!12765 lt!15787))) (_2!880 lt!15808)))))

(declare-fun d!13898 () Bool)

(assert (=> d!13898 e!43353))

(declare-fun res!40508 () Bool)

(assert (=> d!13898 (=> (not res!40508) (not e!43353))))

(assert (=> d!13898 (= res!40508 (= (list!426 (_1!880 lt!15784)) (list!426 (_1!880 (lexRec!21 thiss!19403 rules!2471 (seqFromList!106 input!2238))))))))

(assert (=> d!13898 (= lt!15784 e!43352)))

(declare-fun c!19867 () Bool)

(assert (=> d!13898 (= c!19867 ((_ is Some!100) lt!15810))))

(declare-fun maxPrefixZipperSequenceV2!16 (LexerInterface!189 List!1366 BalanceConc!796 BalanceConc!796) Option!101)

(assert (=> d!13898 (= lt!15810 (maxPrefixZipperSequenceV2!16 thiss!19403 rules!2471 (seqFromList!106 input!2238) (seqFromList!106 input!2238)))))

(declare-fun lt!15805 () Unit!820)

(declare-fun lt!15792 () Unit!820)

(assert (=> d!13898 (= lt!15805 lt!15792)))

(declare-fun lt!15791 () List!1364)

(declare-fun lt!15790 () List!1364)

(assert (=> d!13898 (isSuffix!16 lt!15791 (++!116 lt!15790 lt!15791))))

(assert (=> d!13898 (= lt!15792 (lemmaConcatTwoListThenFSndIsSuffix!16 lt!15790 lt!15791))))

(assert (=> d!13898 (= lt!15791 (list!427 (seqFromList!106 input!2238)))))

(assert (=> d!13898 (= lt!15790 (list!427 (BalanceConc!797 Empty!396)))))

(assert (=> d!13898 (= (lexTailRecV2!35 thiss!19403 rules!2471 (seqFromList!106 input!2238) (BalanceConc!797 Empty!396) (seqFromList!106 input!2238) (BalanceConc!799 Empty!397)) lt!15784)))

(assert (= (and d!13898 c!19867) b!77515))

(assert (= (and d!13898 (not c!19867)) b!77516))

(assert (= (and b!77515 c!19869) b!77517))

(assert (= (and b!77515 (not c!19869)) b!77514))

(assert (= (and b!77515 c!19868) b!77519))

(assert (= (and b!77515 (not c!19868)) b!77520))

(assert (= (and d!13898 res!40508) b!77518))

(declare-fun m!50148 () Bool)

(assert (=> b!77517 m!50148))

(declare-fun m!50150 () Bool)

(assert (=> b!77517 m!50150))

(declare-fun m!50152 () Bool)

(assert (=> b!77518 m!50152))

(assert (=> b!77518 m!49550))

(declare-fun m!50154 () Bool)

(assert (=> b!77518 m!50154))

(declare-fun m!50156 () Bool)

(assert (=> b!77518 m!50156))

(declare-fun m!50158 () Bool)

(assert (=> d!13898 m!50158))

(assert (=> d!13898 m!49550))

(assert (=> d!13898 m!49866))

(declare-fun m!50160 () Bool)

(assert (=> d!13898 m!50160))

(assert (=> d!13898 m!49550))

(assert (=> d!13898 m!49550))

(declare-fun m!50162 () Bool)

(assert (=> d!13898 m!50162))

(declare-fun m!50164 () Bool)

(assert (=> d!13898 m!50164))

(assert (=> d!13898 m!49550))

(assert (=> d!13898 m!50154))

(declare-fun m!50166 () Bool)

(assert (=> d!13898 m!50166))

(declare-fun m!50168 () Bool)

(assert (=> d!13898 m!50168))

(assert (=> d!13898 m!50160))

(declare-fun m!50170 () Bool)

(assert (=> d!13898 m!50170))

(declare-fun m!50172 () Bool)

(assert (=> b!77515 m!50172))

(declare-fun m!50174 () Bool)

(assert (=> b!77515 m!50174))

(declare-fun m!50176 () Bool)

(assert (=> b!77515 m!50176))

(declare-fun m!50178 () Bool)

(assert (=> b!77515 m!50178))

(declare-fun m!50180 () Bool)

(assert (=> b!77515 m!50180))

(declare-fun m!50182 () Bool)

(assert (=> b!77515 m!50182))

(declare-fun m!50184 () Bool)

(assert (=> b!77515 m!50184))

(declare-fun m!50186 () Bool)

(assert (=> b!77515 m!50186))

(declare-fun m!50188 () Bool)

(assert (=> b!77515 m!50188))

(declare-fun m!50190 () Bool)

(assert (=> b!77515 m!50190))

(assert (=> b!77515 m!50158))

(declare-fun m!50192 () Bool)

(assert (=> b!77515 m!50192))

(declare-fun m!50194 () Bool)

(assert (=> b!77515 m!50194))

(assert (=> b!77515 m!50182))

(declare-fun m!50196 () Bool)

(assert (=> b!77515 m!50196))

(declare-fun m!50198 () Bool)

(assert (=> b!77515 m!50198))

(declare-fun m!50200 () Bool)

(assert (=> b!77515 m!50200))

(assert (=> b!77515 m!50158))

(declare-fun m!50202 () Bool)

(assert (=> b!77515 m!50202))

(declare-fun m!50204 () Bool)

(assert (=> b!77515 m!50204))

(declare-fun m!50206 () Bool)

(assert (=> b!77515 m!50206))

(assert (=> b!77515 m!50172))

(assert (=> b!77515 m!50186))

(declare-fun m!50208 () Bool)

(assert (=> b!77515 m!50208))

(declare-fun m!50210 () Bool)

(assert (=> b!77515 m!50210))

(declare-fun m!50212 () Bool)

(assert (=> b!77515 m!50212))

(declare-fun m!50214 () Bool)

(assert (=> b!77515 m!50214))

(declare-fun m!50216 () Bool)

(assert (=> b!77515 m!50216))

(declare-fun m!50218 () Bool)

(assert (=> b!77515 m!50218))

(assert (=> b!77515 m!50176))

(declare-fun m!50220 () Bool)

(assert (=> b!77515 m!50220))

(assert (=> b!77515 m!50192))

(assert (=> b!77515 m!49550))

(declare-fun m!50222 () Bool)

(assert (=> b!77515 m!50222))

(declare-fun m!50224 () Bool)

(assert (=> b!77515 m!50224))

(assert (=> b!77515 m!50214))

(assert (=> b!77515 m!50220))

(declare-fun m!50226 () Bool)

(assert (=> b!77515 m!50226))

(assert (=> b!77515 m!50202))

(declare-fun m!50228 () Bool)

(assert (=> b!77515 m!50228))

(assert (=> b!77515 m!50204))

(declare-fun m!50230 () Bool)

(assert (=> b!77515 m!50230))

(assert (=> b!77515 m!49550))

(assert (=> b!77515 m!50154))

(assert (=> b!77515 m!50216))

(assert (=> b!77515 m!50220))

(assert (=> b!77515 m!50198))

(assert (=> b!77515 m!49550))

(assert (=> b!77515 m!50204))

(declare-fun m!50232 () Bool)

(assert (=> b!77515 m!50232))

(declare-fun m!50234 () Bool)

(assert (=> b!77519 m!50234))

(declare-fun m!50236 () Bool)

(assert (=> b!77519 m!50236))

(assert (=> d!13846 d!13898))

(declare-fun d!13944 () Bool)

(assert (=> d!13944 (= (list!427 (charsOf!34 (_1!881 (get!334 lt!15584)))) (list!430 (c!19784 (charsOf!34 (_1!881 (get!334 lt!15584))))))))

(declare-fun bs!8044 () Bool)

(assert (= bs!8044 d!13944))

(declare-fun m!50238 () Bool)

(assert (=> bs!8044 m!50238))

(assert (=> b!77215 d!13944))

(declare-fun d!13946 () Bool)

(declare-fun lt!15819 () BalanceConc!796)

(assert (=> d!13946 (= (list!427 lt!15819) (originalCharacters!348 (_1!881 (get!334 lt!15584))))))

(declare-fun dynLambda!319 (Int TokenValue!287) BalanceConc!796)

(assert (=> d!13946 (= lt!15819 (dynLambda!319 (toChars!663 (transformation!297 (rule!774 (_1!881 (get!334 lt!15584))))) (value!11360 (_1!881 (get!334 lt!15584)))))))

(assert (=> d!13946 (= (charsOf!34 (_1!881 (get!334 lt!15584))) lt!15819)))

(declare-fun b_lambda!877 () Bool)

(assert (=> (not b_lambda!877) (not d!13946)))

(declare-fun tb!2387 () Bool)

(declare-fun t!20164 () Bool)

(assert (=> (and b!77133 (= (toChars!663 (transformation!297 (h!6757 rules!2471))) (toChars!663 (transformation!297 (rule!774 (_1!881 (get!334 lt!15584)))))) t!20164) tb!2387))

(declare-fun b!77525 () Bool)

(declare-fun e!43356 () Bool)

(declare-fun tp!49830 () Bool)

(declare-fun inv!1726 (Conc!396) Bool)

(assert (=> b!77525 (= e!43356 (and (inv!1726 (c!19784 (dynLambda!319 (toChars!663 (transformation!297 (rule!774 (_1!881 (get!334 lt!15584))))) (value!11360 (_1!881 (get!334 lt!15584)))))) tp!49830))))

(declare-fun result!3416 () Bool)

(declare-fun inv!1727 (BalanceConc!796) Bool)

(assert (=> tb!2387 (= result!3416 (and (inv!1727 (dynLambda!319 (toChars!663 (transformation!297 (rule!774 (_1!881 (get!334 lt!15584))))) (value!11360 (_1!881 (get!334 lt!15584))))) e!43356))))

(assert (= tb!2387 b!77525))

(declare-fun m!50240 () Bool)

(assert (=> b!77525 m!50240))

(declare-fun m!50242 () Bool)

(assert (=> tb!2387 m!50242))

(assert (=> d!13946 t!20164))

(declare-fun b_and!3551 () Bool)

(assert (= b_and!3533 (and (=> t!20164 result!3416) b_and!3551)))

(declare-fun tb!2389 () Bool)

(declare-fun t!20166 () Bool)

(assert (=> (and b!77313 (= (toChars!663 (transformation!297 (h!6757 (t!20145 rules!2471)))) (toChars!663 (transformation!297 (rule!774 (_1!881 (get!334 lt!15584)))))) t!20166) tb!2389))

(declare-fun result!3420 () Bool)

(assert (= result!3420 result!3416))

(assert (=> d!13946 t!20166))

(declare-fun b_and!3553 () Bool)

(assert (= b_and!3541 (and (=> t!20166 result!3420) b_and!3553)))

(declare-fun m!50244 () Bool)

(assert (=> d!13946 m!50244))

(declare-fun m!50246 () Bool)

(assert (=> d!13946 m!50246))

(assert (=> b!77215 d!13946))

(declare-fun d!13948 () Bool)

(assert (=> d!13948 (= (get!334 lt!15584) (v!12754 lt!15584))))

(assert (=> b!77215 d!13948))

(declare-fun b!77526 () Bool)

(declare-fun e!43357 () List!1364)

(assert (=> b!77526 (= e!43357 lt!15538)))

(declare-fun b!77527 () Bool)

(assert (=> b!77527 (= e!43357 (Cons!1358 (h!6755 (t!20143 lt!15540)) (++!116 (t!20143 (t!20143 lt!15540)) lt!15538)))))

(declare-fun e!43358 () Bool)

(declare-fun b!77529 () Bool)

(declare-fun lt!15820 () List!1364)

(assert (=> b!77529 (= e!43358 (or (not (= lt!15538 Nil!1358)) (= lt!15820 (t!20143 lt!15540))))))

(declare-fun b!77528 () Bool)

(declare-fun res!40509 () Bool)

(assert (=> b!77528 (=> (not res!40509) (not e!43358))))

(assert (=> b!77528 (= res!40509 (= (size!1189 lt!15820) (+ (size!1189 (t!20143 lt!15540)) (size!1189 lt!15538))))))

(declare-fun d!13950 () Bool)

(assert (=> d!13950 e!43358))

(declare-fun res!40510 () Bool)

(assert (=> d!13950 (=> (not res!40510) (not e!43358))))

(assert (=> d!13950 (= res!40510 (= (content!63 lt!15820) ((_ map or) (content!63 (t!20143 lt!15540)) (content!63 lt!15538))))))

(assert (=> d!13950 (= lt!15820 e!43357)))

(declare-fun c!19870 () Bool)

(assert (=> d!13950 (= c!19870 ((_ is Nil!1358) (t!20143 lt!15540)))))

(assert (=> d!13950 (= (++!116 (t!20143 lt!15540) lt!15538) lt!15820)))

(assert (= (and d!13950 c!19870) b!77526))

(assert (= (and d!13950 (not c!19870)) b!77527))

(assert (= (and d!13950 res!40510) b!77528))

(assert (= (and b!77528 res!40509) b!77529))

(declare-fun m!50248 () Bool)

(assert (=> b!77527 m!50248))

(declare-fun m!50250 () Bool)

(assert (=> b!77528 m!50250))

(declare-fun m!50252 () Bool)

(assert (=> b!77528 m!50252))

(assert (=> b!77528 m!49578))

(declare-fun m!50254 () Bool)

(assert (=> d!13950 m!50254))

(assert (=> d!13950 m!50006))

(assert (=> d!13950 m!49584))

(assert (=> b!77152 d!13950))

(declare-fun b!77549 () Bool)

(declare-fun e!43368 () Option!100)

(declare-datatypes ((tuple2!1356 0))(
  ( (tuple2!1357 (_1!885 List!1364) (_2!885 List!1364)) )
))
(declare-fun lt!15831 () tuple2!1356)

(assert (=> b!77549 (= e!43368 (Some!99 (tuple2!1349 (Token!355 (apply!179 (transformation!297 (h!6757 rules!2471)) (seqFromList!106 (_1!885 lt!15831))) (h!6757 rules!2471) (size!1190 (seqFromList!106 (_1!885 lt!15831))) (_1!885 lt!15831)) (_2!885 lt!15831))))))

(declare-fun lt!15835 () Unit!820)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!8 (Regex!365 List!1364) Unit!820)

(assert (=> b!77549 (= lt!15835 (longestMatchIsAcceptedByMatchOrIsEmpty!8 (regex!297 (h!6757 rules!2471)) input!2238))))

(declare-fun res!40529 () Bool)

(declare-fun findLongestMatchInner!7 (Regex!365 List!1364 Int List!1364 List!1364 Int) tuple2!1356)

(assert (=> b!77549 (= res!40529 (isEmpty!418 (_1!885 (findLongestMatchInner!7 (regex!297 (h!6757 rules!2471)) Nil!1358 (size!1189 Nil!1358) input!2238 input!2238 (size!1189 input!2238)))))))

(declare-fun e!43369 () Bool)

(assert (=> b!77549 (=> res!40529 e!43369)))

(assert (=> b!77549 e!43369))

(declare-fun lt!15834 () Unit!820)

(assert (=> b!77549 (= lt!15834 lt!15835)))

(declare-fun lt!15832 () Unit!820)

(declare-fun lemmaSemiInverse!6 (TokenValueInjection!398 BalanceConc!796) Unit!820)

(assert (=> b!77549 (= lt!15832 (lemmaSemiInverse!6 (transformation!297 (h!6757 rules!2471)) (seqFromList!106 (_1!885 lt!15831))))))

(declare-fun b!77550 () Bool)

(declare-fun res!40528 () Bool)

(declare-fun e!43370 () Bool)

(assert (=> b!77550 (=> (not res!40528) (not e!43370))))

(declare-fun lt!15833 () Option!100)

(assert (=> b!77550 (= res!40528 (= (value!11360 (_1!881 (get!334 lt!15833))) (apply!179 (transformation!297 (rule!774 (_1!881 (get!334 lt!15833)))) (seqFromList!106 (originalCharacters!348 (_1!881 (get!334 lt!15833)))))))))

(declare-fun b!77551 () Bool)

(declare-fun e!43367 () Bool)

(assert (=> b!77551 (= e!43367 e!43370)))

(declare-fun res!40527 () Bool)

(assert (=> b!77551 (=> (not res!40527) (not e!43370))))

(assert (=> b!77551 (= res!40527 (matchR!15 (regex!297 (h!6757 rules!2471)) (list!427 (charsOf!34 (_1!881 (get!334 lt!15833))))))))

(declare-fun b!77552 () Bool)

(declare-fun res!40526 () Bool)

(assert (=> b!77552 (=> (not res!40526) (not e!43370))))

(assert (=> b!77552 (= res!40526 (= (++!116 (list!427 (charsOf!34 (_1!881 (get!334 lt!15833)))) (_2!881 (get!334 lt!15833))) input!2238))))

(declare-fun b!77553 () Bool)

(declare-fun res!40530 () Bool)

(assert (=> b!77553 (=> (not res!40530) (not e!43370))))

(assert (=> b!77553 (= res!40530 (= (rule!774 (_1!881 (get!334 lt!15833))) (h!6757 rules!2471)))))

(declare-fun b!77554 () Bool)

(assert (=> b!77554 (= e!43369 (matchR!15 (regex!297 (h!6757 rules!2471)) (_1!885 (findLongestMatchInner!7 (regex!297 (h!6757 rules!2471)) Nil!1358 (size!1189 Nil!1358) input!2238 input!2238 (size!1189 input!2238)))))))

(declare-fun b!77555 () Bool)

(assert (=> b!77555 (= e!43370 (= (size!1185 (_1!881 (get!334 lt!15833))) (size!1189 (originalCharacters!348 (_1!881 (get!334 lt!15833))))))))

(declare-fun b!77556 () Bool)

(assert (=> b!77556 (= e!43368 None!99)))

(declare-fun b!77548 () Bool)

(declare-fun res!40525 () Bool)

(assert (=> b!77548 (=> (not res!40525) (not e!43370))))

(assert (=> b!77548 (= res!40525 (< (size!1189 (_2!881 (get!334 lt!15833))) (size!1189 input!2238)))))

(declare-fun d!13952 () Bool)

(assert (=> d!13952 e!43367))

(declare-fun res!40531 () Bool)

(assert (=> d!13952 (=> res!40531 e!43367)))

(assert (=> d!13952 (= res!40531 (isEmpty!416 lt!15833))))

(assert (=> d!13952 (= lt!15833 e!43368)))

(declare-fun c!19873 () Bool)

(assert (=> d!13952 (= c!19873 (isEmpty!418 (_1!885 lt!15831)))))

(declare-fun findLongestMatch!6 (Regex!365 List!1364) tuple2!1356)

(assert (=> d!13952 (= lt!15831 (findLongestMatch!6 (regex!297 (h!6757 rules!2471)) input!2238))))

(declare-fun ruleValid!17 (LexerInterface!189 Rule!394) Bool)

(assert (=> d!13952 (ruleValid!17 thiss!19403 (h!6757 rules!2471))))

(assert (=> d!13952 (= (maxPrefixOneRule!11 thiss!19403 (h!6757 rules!2471) input!2238) lt!15833)))

(assert (= (and d!13952 c!19873) b!77556))

(assert (= (and d!13952 (not c!19873)) b!77549))

(assert (= (and b!77549 (not res!40529)) b!77554))

(assert (= (and d!13952 (not res!40531)) b!77551))

(assert (= (and b!77551 res!40527) b!77552))

(assert (= (and b!77552 res!40526) b!77548))

(assert (= (and b!77548 res!40525) b!77553))

(assert (= (and b!77553 res!40530) b!77550))

(assert (= (and b!77550 res!40528) b!77555))

(declare-fun m!50256 () Bool)

(assert (=> b!77549 m!50256))

(declare-fun m!50258 () Bool)

(assert (=> b!77549 m!50258))

(declare-fun m!50260 () Bool)

(assert (=> b!77549 m!50260))

(assert (=> b!77549 m!49664))

(declare-fun m!50262 () Bool)

(assert (=> b!77549 m!50262))

(assert (=> b!77549 m!50260))

(assert (=> b!77549 m!49664))

(assert (=> b!77549 m!50256))

(declare-fun m!50264 () Bool)

(assert (=> b!77549 m!50264))

(assert (=> b!77549 m!50256))

(declare-fun m!50266 () Bool)

(assert (=> b!77549 m!50266))

(assert (=> b!77549 m!50256))

(declare-fun m!50268 () Bool)

(assert (=> b!77549 m!50268))

(declare-fun m!50270 () Bool)

(assert (=> b!77549 m!50270))

(declare-fun m!50272 () Bool)

(assert (=> b!77548 m!50272))

(declare-fun m!50274 () Bool)

(assert (=> b!77548 m!50274))

(assert (=> b!77548 m!49664))

(assert (=> b!77554 m!50260))

(assert (=> b!77554 m!49664))

(assert (=> b!77554 m!50260))

(assert (=> b!77554 m!49664))

(assert (=> b!77554 m!50262))

(declare-fun m!50276 () Bool)

(assert (=> b!77554 m!50276))

(assert (=> b!77551 m!50272))

(declare-fun m!50278 () Bool)

(assert (=> b!77551 m!50278))

(assert (=> b!77551 m!50278))

(declare-fun m!50280 () Bool)

(assert (=> b!77551 m!50280))

(assert (=> b!77551 m!50280))

(declare-fun m!50282 () Bool)

(assert (=> b!77551 m!50282))

(assert (=> b!77550 m!50272))

(declare-fun m!50284 () Bool)

(assert (=> b!77550 m!50284))

(assert (=> b!77550 m!50284))

(declare-fun m!50286 () Bool)

(assert (=> b!77550 m!50286))

(assert (=> b!77552 m!50272))

(assert (=> b!77552 m!50278))

(assert (=> b!77552 m!50278))

(assert (=> b!77552 m!50280))

(assert (=> b!77552 m!50280))

(declare-fun m!50288 () Bool)

(assert (=> b!77552 m!50288))

(declare-fun m!50290 () Bool)

(assert (=> d!13952 m!50290))

(declare-fun m!50292 () Bool)

(assert (=> d!13952 m!50292))

(declare-fun m!50294 () Bool)

(assert (=> d!13952 m!50294))

(declare-fun m!50296 () Bool)

(assert (=> d!13952 m!50296))

(assert (=> b!77553 m!50272))

(assert (=> b!77555 m!50272))

(declare-fun m!50298 () Bool)

(assert (=> b!77555 m!50298))

(assert (=> bm!3655 d!13952))

(declare-fun d!13954 () Bool)

(declare-fun lt!15838 () Int)

(assert (=> d!13954 (>= lt!15838 0)))

(declare-fun e!43373 () Int)

(assert (=> d!13954 (= lt!15838 e!43373)))

(declare-fun c!19876 () Bool)

(assert (=> d!13954 (= c!19876 ((_ is Nil!1358) lt!15547))))

(assert (=> d!13954 (= (size!1189 lt!15547) lt!15838)))

(declare-fun b!77561 () Bool)

(assert (=> b!77561 (= e!43373 0)))

(declare-fun b!77562 () Bool)

(assert (=> b!77562 (= e!43373 (+ 1 (size!1189 (t!20143 lt!15547))))))

(assert (= (and d!13954 c!19876) b!77561))

(assert (= (and d!13954 (not c!19876)) b!77562))

(declare-fun m!50300 () Bool)

(assert (=> b!77562 m!50300))

(assert (=> b!77153 d!13954))

(declare-fun d!13956 () Bool)

(declare-fun lt!15839 () Int)

(assert (=> d!13956 (>= lt!15839 0)))

(declare-fun e!43374 () Int)

(assert (=> d!13956 (= lt!15839 e!43374)))

(declare-fun c!19877 () Bool)

(assert (=> d!13956 (= c!19877 ((_ is Nil!1358) lt!15540))))

(assert (=> d!13956 (= (size!1189 lt!15540) lt!15839)))

(declare-fun b!77563 () Bool)

(assert (=> b!77563 (= e!43374 0)))

(declare-fun b!77564 () Bool)

(assert (=> b!77564 (= e!43374 (+ 1 (size!1189 (t!20143 lt!15540))))))

(assert (= (and d!13956 c!19877) b!77563))

(assert (= (and d!13956 (not c!19877)) b!77564))

(assert (=> b!77564 m!50252))

(assert (=> b!77153 d!13956))

(declare-fun d!13958 () Bool)

(declare-fun lt!15840 () Int)

(assert (=> d!13958 (>= lt!15840 0)))

(declare-fun e!43375 () Int)

(assert (=> d!13958 (= lt!15840 e!43375)))

(declare-fun c!19878 () Bool)

(assert (=> d!13958 (= c!19878 ((_ is Nil!1358) lt!15538))))

(assert (=> d!13958 (= (size!1189 lt!15538) lt!15840)))

(declare-fun b!77565 () Bool)

(assert (=> b!77565 (= e!43375 0)))

(declare-fun b!77566 () Bool)

(assert (=> b!77566 (= e!43375 (+ 1 (size!1189 (t!20143 lt!15538))))))

(assert (= (and d!13958 c!19878) b!77565))

(assert (= (and d!13958 (not c!19878)) b!77566))

(declare-fun m!50302 () Bool)

(assert (=> b!77566 m!50302))

(assert (=> b!77153 d!13958))

(declare-fun b!77567 () Bool)

(declare-fun e!43376 () List!1364)

(assert (=> b!77567 (= e!43376 (_2!881 (get!334 lt!15584)))))

(declare-fun b!77568 () Bool)

(assert (=> b!77568 (= e!43376 (Cons!1358 (h!6755 (list!427 (charsOf!34 (_1!881 (get!334 lt!15584))))) (++!116 (t!20143 (list!427 (charsOf!34 (_1!881 (get!334 lt!15584))))) (_2!881 (get!334 lt!15584)))))))

(declare-fun b!77570 () Bool)

(declare-fun e!43377 () Bool)

(declare-fun lt!15841 () List!1364)

(assert (=> b!77570 (= e!43377 (or (not (= (_2!881 (get!334 lt!15584)) Nil!1358)) (= lt!15841 (list!427 (charsOf!34 (_1!881 (get!334 lt!15584)))))))))

(declare-fun b!77569 () Bool)

(declare-fun res!40532 () Bool)

(assert (=> b!77569 (=> (not res!40532) (not e!43377))))

(assert (=> b!77569 (= res!40532 (= (size!1189 lt!15841) (+ (size!1189 (list!427 (charsOf!34 (_1!881 (get!334 lt!15584))))) (size!1189 (_2!881 (get!334 lt!15584))))))))

(declare-fun d!13960 () Bool)

(assert (=> d!13960 e!43377))

(declare-fun res!40533 () Bool)

(assert (=> d!13960 (=> (not res!40533) (not e!43377))))

(assert (=> d!13960 (= res!40533 (= (content!63 lt!15841) ((_ map or) (content!63 (list!427 (charsOf!34 (_1!881 (get!334 lt!15584))))) (content!63 (_2!881 (get!334 lt!15584))))))))

(assert (=> d!13960 (= lt!15841 e!43376)))

(declare-fun c!19879 () Bool)

(assert (=> d!13960 (= c!19879 ((_ is Nil!1358) (list!427 (charsOf!34 (_1!881 (get!334 lt!15584))))))))

(assert (=> d!13960 (= (++!116 (list!427 (charsOf!34 (_1!881 (get!334 lt!15584)))) (_2!881 (get!334 lt!15584))) lt!15841)))

(assert (= (and d!13960 c!19879) b!77567))

(assert (= (and d!13960 (not c!19879)) b!77568))

(assert (= (and d!13960 res!40533) b!77569))

(assert (= (and b!77569 res!40532) b!77570))

(declare-fun m!50304 () Bool)

(assert (=> b!77568 m!50304))

(declare-fun m!50306 () Bool)

(assert (=> b!77569 m!50306))

(assert (=> b!77569 m!49668))

(declare-fun m!50308 () Bool)

(assert (=> b!77569 m!50308))

(assert (=> b!77569 m!49662))

(declare-fun m!50310 () Bool)

(assert (=> d!13960 m!50310))

(assert (=> d!13960 m!49668))

(declare-fun m!50312 () Bool)

(assert (=> d!13960 m!50312))

(declare-fun m!50314 () Bool)

(assert (=> d!13960 m!50314))

(assert (=> b!77214 d!13960))

(assert (=> b!77214 d!13944))

(assert (=> b!77214 d!13946))

(assert (=> b!77214 d!13948))

(declare-fun d!13962 () Bool)

(assert (=> d!13962 (= (list!426 (_1!880 lt!15623)) (list!431 (c!19786 (_1!880 lt!15623))))))

(declare-fun bs!8045 () Bool)

(assert (= bs!8045 d!13962))

(declare-fun m!50316 () Bool)

(assert (=> bs!8045 m!50316))

(assert (=> b!77291 d!13962))

(declare-fun b!77581 () Bool)

(declare-fun e!43386 () tuple2!1350)

(declare-fun lt!15849 () Option!100)

(declare-fun lt!15850 () tuple2!1350)

(assert (=> b!77581 (= e!43386 (tuple2!1351 (Cons!1361 (_1!881 (v!12754 lt!15849)) (_1!882 lt!15850)) (_2!882 lt!15850)))))

(assert (=> b!77581 (= lt!15850 (lexList!38 thiss!19403 rules!2471 (_2!881 (v!12754 lt!15849))))))

(declare-fun b!77582 () Bool)

(declare-fun e!43384 () Bool)

(declare-fun lt!15848 () tuple2!1350)

(declare-fun isEmpty!422 (List!1367) Bool)

(assert (=> b!77582 (= e!43384 (not (isEmpty!422 (_1!882 lt!15848))))))

(declare-fun b!77583 () Bool)

(assert (=> b!77583 (= e!43386 (tuple2!1351 Nil!1361 (list!427 (seqFromList!106 (_2!881 lt!15534)))))))

(declare-fun b!77585 () Bool)

(declare-fun e!43385 () Bool)

(assert (=> b!77585 (= e!43385 (= (_2!882 lt!15848) (list!427 (seqFromList!106 (_2!881 lt!15534)))))))

(declare-fun b!77584 () Bool)

(assert (=> b!77584 (= e!43385 e!43384)))

(declare-fun res!40536 () Bool)

(assert (=> b!77584 (= res!40536 (< (size!1189 (_2!882 lt!15848)) (size!1189 (list!427 (seqFromList!106 (_2!881 lt!15534))))))))

(assert (=> b!77584 (=> (not res!40536) (not e!43384))))

(declare-fun d!13964 () Bool)

(assert (=> d!13964 e!43385))

(declare-fun c!19885 () Bool)

(assert (=> d!13964 (= c!19885 (> (size!1194 (_1!882 lt!15848)) 0))))

(assert (=> d!13964 (= lt!15848 e!43386)))

(declare-fun c!19884 () Bool)

(assert (=> d!13964 (= c!19884 ((_ is Some!99) lt!15849))))

(assert (=> d!13964 (= lt!15849 (maxPrefix!33 thiss!19403 rules!2471 (list!427 (seqFromList!106 (_2!881 lt!15534)))))))

(assert (=> d!13964 (= (lexList!38 thiss!19403 rules!2471 (list!427 (seqFromList!106 (_2!881 lt!15534)))) lt!15848)))

(assert (= (and d!13964 c!19884) b!77581))

(assert (= (and d!13964 (not c!19884)) b!77583))

(assert (= (and d!13964 c!19885) b!77584))

(assert (= (and d!13964 (not c!19885)) b!77585))

(assert (= (and b!77584 res!40536) b!77582))

(declare-fun m!50318 () Bool)

(assert (=> b!77581 m!50318))

(declare-fun m!50320 () Bool)

(assert (=> b!77582 m!50320))

(declare-fun m!50322 () Bool)

(assert (=> b!77584 m!50322))

(assert (=> b!77584 m!49816))

(declare-fun m!50324 () Bool)

(assert (=> b!77584 m!50324))

(declare-fun m!50326 () Bool)

(assert (=> d!13964 m!50326))

(assert (=> d!13964 m!49816))

(declare-fun m!50328 () Bool)

(assert (=> d!13964 m!50328))

(assert (=> b!77291 d!13964))

(declare-fun d!13966 () Bool)

(assert (=> d!13966 (= (list!427 (seqFromList!106 (_2!881 lt!15534))) (list!430 (c!19784 (seqFromList!106 (_2!881 lt!15534)))))))

(declare-fun bs!8046 () Bool)

(assert (= bs!8046 d!13966))

(declare-fun m!50330 () Bool)

(assert (=> bs!8046 m!50330))

(assert (=> b!77291 d!13966))

(declare-fun d!13968 () Bool)

(declare-fun c!19890 () Bool)

(assert (=> d!13968 (= c!19890 ((_ is Empty!396) (c!19784 (print!28 thiss!19403 (_1!880 lt!15543)))))))

(declare-fun e!43391 () List!1364)

(assert (=> d!13968 (= (list!430 (c!19784 (print!28 thiss!19403 (_1!880 lt!15543)))) e!43391)))

(declare-fun b!77594 () Bool)

(assert (=> b!77594 (= e!43391 Nil!1358)))

(declare-fun b!77597 () Bool)

(declare-fun e!43392 () List!1364)

(assert (=> b!77597 (= e!43392 (++!116 (list!430 (left!1029 (c!19784 (print!28 thiss!19403 (_1!880 lt!15543))))) (list!430 (right!1359 (c!19784 (print!28 thiss!19403 (_1!880 lt!15543)))))))))

(declare-fun b!77596 () Bool)

(declare-fun list!435 (IArray!793) List!1364)

(assert (=> b!77596 (= e!43392 (list!435 (xs!2975 (c!19784 (print!28 thiss!19403 (_1!880 lt!15543))))))))

(declare-fun b!77595 () Bool)

(assert (=> b!77595 (= e!43391 e!43392)))

(declare-fun c!19891 () Bool)

(assert (=> b!77595 (= c!19891 ((_ is Leaf!680) (c!19784 (print!28 thiss!19403 (_1!880 lt!15543)))))))

(assert (= (and d!13968 c!19890) b!77594))

(assert (= (and d!13968 (not c!19890)) b!77595))

(assert (= (and b!77595 c!19891) b!77596))

(assert (= (and b!77595 (not c!19891)) b!77597))

(declare-fun m!50332 () Bool)

(assert (=> b!77597 m!50332))

(declare-fun m!50334 () Bool)

(assert (=> b!77597 m!50334))

(assert (=> b!77597 m!50332))

(assert (=> b!77597 m!50334))

(declare-fun m!50336 () Bool)

(assert (=> b!77597 m!50336))

(declare-fun m!50338 () Bool)

(assert (=> b!77596 m!50338))

(assert (=> d!13780 d!13968))

(declare-fun d!13970 () Bool)

(assert (=> d!13970 (= (list!427 (_2!880 lt!15623)) (list!430 (c!19784 (_2!880 lt!15623))))))

(declare-fun bs!8047 () Bool)

(assert (= bs!8047 d!13970))

(declare-fun m!50340 () Bool)

(assert (=> bs!8047 m!50340))

(assert (=> b!77289 d!13970))

(assert (=> b!77289 d!13964))

(assert (=> b!77289 d!13966))

(declare-fun d!13972 () Bool)

(assert (=> d!13972 true))

(declare-fun order!513 () Int)

(declare-fun order!515 () Int)

(declare-fun lambda!1419 () Int)

(declare-fun dynLambda!320 (Int Int) Int)

(declare-fun dynLambda!321 (Int Int) Int)

(assert (=> d!13972 (< (dynLambda!320 order!513 (toChars!663 (transformation!297 (h!6757 rules!2471)))) (dynLambda!321 order!515 lambda!1419))))

(assert (=> d!13972 true))

(declare-fun order!517 () Int)

(declare-fun dynLambda!322 (Int Int) Int)

(assert (=> d!13972 (< (dynLambda!322 order!517 (toValue!804 (transformation!297 (h!6757 rules!2471)))) (dynLambda!321 order!515 lambda!1419))))

(declare-fun Forall!38 (Int) Bool)

(assert (=> d!13972 (= (semiInverseModEq!49 (toChars!663 (transformation!297 (h!6757 rules!2471))) (toValue!804 (transformation!297 (h!6757 rules!2471)))) (Forall!38 lambda!1419))))

(declare-fun bs!8058 () Bool)

(assert (= bs!8058 d!13972))

(declare-fun m!50406 () Bool)

(assert (=> bs!8058 m!50406))

(assert (=> d!13854 d!13972))

(declare-fun b!77635 () Bool)

(declare-fun e!43414 () List!1367)

(declare-fun e!43415 () List!1367)

(assert (=> b!77635 (= e!43414 e!43415)))

(declare-fun c!19896 () Bool)

(assert (=> b!77635 (= c!19896 ((_ is Leaf!681) (c!19786 (_1!880 lt!15541))))))

(declare-fun b!77636 () Bool)

(assert (=> b!77636 (= e!43415 (list!434 (xs!2976 (c!19786 (_1!880 lt!15541)))))))

(declare-fun d!14004 () Bool)

(declare-fun c!19895 () Bool)

(assert (=> d!14004 (= c!19895 ((_ is Empty!397) (c!19786 (_1!880 lt!15541))))))

(assert (=> d!14004 (= (list!431 (c!19786 (_1!880 lt!15541))) e!43414)))

(declare-fun b!77637 () Bool)

(assert (=> b!77637 (= e!43415 (++!120 (list!431 (left!1030 (c!19786 (_1!880 lt!15541)))) (list!431 (right!1360 (c!19786 (_1!880 lt!15541))))))))

(declare-fun b!77634 () Bool)

(assert (=> b!77634 (= e!43414 Nil!1361)))

(assert (= (and d!14004 c!19895) b!77634))

(assert (= (and d!14004 (not c!19895)) b!77635))

(assert (= (and b!77635 c!19896) b!77636))

(assert (= (and b!77635 (not c!19896)) b!77637))

(declare-fun m!50408 () Bool)

(assert (=> b!77636 m!50408))

(declare-fun m!50410 () Bool)

(assert (=> b!77637 m!50410))

(declare-fun m!50412 () Bool)

(assert (=> b!77637 m!50412))

(assert (=> b!77637 m!50410))

(assert (=> b!77637 m!50412))

(declare-fun m!50414 () Bool)

(assert (=> b!77637 m!50414))

(assert (=> d!13840 d!14004))

(declare-fun d!14006 () Bool)

(declare-fun lt!15873 () Bool)

(assert (=> d!14006 (= lt!15873 (isEmpty!422 (list!426 (_1!880 lt!15623))))))

(declare-fun isEmpty!423 (Conc!397) Bool)

(assert (=> d!14006 (= lt!15873 (isEmpty!423 (c!19786 (_1!880 lt!15623))))))

(assert (=> d!14006 (= (isEmpty!417 (_1!880 lt!15623)) lt!15873)))

(declare-fun bs!8059 () Bool)

(assert (= bs!8059 d!14006))

(assert (=> bs!8059 m!49814))

(assert (=> bs!8059 m!49814))

(declare-fun m!50416 () Bool)

(assert (=> bs!8059 m!50416))

(declare-fun m!50418 () Bool)

(assert (=> bs!8059 m!50418))

(assert (=> b!77288 d!14006))

(declare-fun d!14008 () Bool)

(declare-fun lt!15874 () Int)

(assert (=> d!14008 (>= lt!15874 0)))

(declare-fun e!43416 () Int)

(assert (=> d!14008 (= lt!15874 e!43416)))

(declare-fun c!19897 () Bool)

(assert (=> d!14008 (= c!19897 ((_ is Nil!1358) (_2!881 (get!334 lt!15584))))))

(assert (=> d!14008 (= (size!1189 (_2!881 (get!334 lt!15584))) lt!15874)))

(declare-fun b!77638 () Bool)

(assert (=> b!77638 (= e!43416 0)))

(declare-fun b!77639 () Bool)

(assert (=> b!77639 (= e!43416 (+ 1 (size!1189 (t!20143 (_2!881 (get!334 lt!15584))))))))

(assert (= (and d!14008 c!19897) b!77638))

(assert (= (and d!14008 (not c!19897)) b!77639))

(declare-fun m!50420 () Bool)

(assert (=> b!77639 m!50420))

(assert (=> b!77212 d!14008))

(assert (=> b!77212 d!13948))

(declare-fun d!14010 () Bool)

(declare-fun lt!15875 () Int)

(assert (=> d!14010 (>= lt!15875 0)))

(declare-fun e!43417 () Int)

(assert (=> d!14010 (= lt!15875 e!43417)))

(declare-fun c!19898 () Bool)

(assert (=> d!14010 (= c!19898 ((_ is Nil!1358) input!2238))))

(assert (=> d!14010 (= (size!1189 input!2238) lt!15875)))

(declare-fun b!77640 () Bool)

(assert (=> b!77640 (= e!43417 0)))

(declare-fun b!77641 () Bool)

(assert (=> b!77641 (= e!43417 (+ 1 (size!1189 (t!20143 input!2238))))))

(assert (= (and d!14010 c!19898) b!77640))

(assert (= (and d!14010 (not c!19898)) b!77641))

(declare-fun m!50422 () Bool)

(assert (=> b!77641 m!50422))

(assert (=> b!77212 d!14010))

(declare-fun d!14012 () Bool)

(assert (=> d!14012 (= (isEmpty!416 lt!15584) (not ((_ is Some!99) lt!15584)))))

(assert (=> d!13766 d!14012))

(declare-fun b!77652 () Bool)

(declare-fun e!43425 () Bool)

(declare-fun tail!106 (List!1364) List!1364)

(assert (=> b!77652 (= e!43425 (isPrefix!14 (tail!106 input!2238) (tail!106 input!2238)))))

(declare-fun d!14014 () Bool)

(declare-fun e!43426 () Bool)

(assert (=> d!14014 e!43426))

(declare-fun res!40570 () Bool)

(assert (=> d!14014 (=> res!40570 e!43426)))

(declare-fun lt!15878 () Bool)

(assert (=> d!14014 (= res!40570 (not lt!15878))))

(declare-fun e!43424 () Bool)

(assert (=> d!14014 (= lt!15878 e!43424)))

(declare-fun res!40567 () Bool)

(assert (=> d!14014 (=> res!40567 e!43424)))

(assert (=> d!14014 (= res!40567 ((_ is Nil!1358) input!2238))))

(assert (=> d!14014 (= (isPrefix!14 input!2238 input!2238) lt!15878)))

(declare-fun b!77653 () Bool)

(assert (=> b!77653 (= e!43426 (>= (size!1189 input!2238) (size!1189 input!2238)))))

(declare-fun b!77651 () Bool)

(declare-fun res!40568 () Bool)

(assert (=> b!77651 (=> (not res!40568) (not e!43425))))

(declare-fun head!415 (List!1364) C!1652)

(assert (=> b!77651 (= res!40568 (= (head!415 input!2238) (head!415 input!2238)))))

(declare-fun b!77650 () Bool)

(assert (=> b!77650 (= e!43424 e!43425)))

(declare-fun res!40569 () Bool)

(assert (=> b!77650 (=> (not res!40569) (not e!43425))))

(assert (=> b!77650 (= res!40569 (not ((_ is Nil!1358) input!2238)))))

(assert (= (and d!14014 (not res!40567)) b!77650))

(assert (= (and b!77650 res!40569) b!77651))

(assert (= (and b!77651 res!40568) b!77652))

(assert (= (and d!14014 (not res!40570)) b!77653))

(declare-fun m!50424 () Bool)

(assert (=> b!77652 m!50424))

(assert (=> b!77652 m!50424))

(assert (=> b!77652 m!50424))

(assert (=> b!77652 m!50424))

(declare-fun m!50426 () Bool)

(assert (=> b!77652 m!50426))

(assert (=> b!77653 m!49664))

(assert (=> b!77653 m!49664))

(declare-fun m!50428 () Bool)

(assert (=> b!77651 m!50428))

(assert (=> b!77651 m!50428))

(assert (=> d!13766 d!14014))

(declare-fun d!14016 () Bool)

(assert (=> d!14016 (isPrefix!14 input!2238 input!2238)))

(declare-fun lt!15893 () Unit!820)

(declare-fun choose!1274 (List!1364 List!1364) Unit!820)

(assert (=> d!14016 (= lt!15893 (choose!1274 input!2238 input!2238))))

(assert (=> d!14016 (= (lemmaIsPrefixRefl!14 input!2238 input!2238) lt!15893)))

(declare-fun bs!8060 () Bool)

(assert (= bs!8060 d!14016))

(assert (=> bs!8060 m!49654))

(declare-fun m!50430 () Bool)

(assert (=> bs!8060 m!50430))

(assert (=> d!13766 d!14016))

(declare-fun d!14018 () Bool)

(assert (=> d!14018 true))

(declare-fun lt!15952 () Bool)

(declare-fun lambda!1422 () Int)

(declare-fun forall!185 (List!1366 Int) Bool)

(assert (=> d!14018 (= lt!15952 (forall!185 rules!2471 lambda!1422))))

(declare-fun e!43438 () Bool)

(assert (=> d!14018 (= lt!15952 e!43438)))

(declare-fun res!40575 () Bool)

(assert (=> d!14018 (=> res!40575 e!43438)))

(assert (=> d!14018 (= res!40575 (not ((_ is Cons!1360) rules!2471)))))

(assert (=> d!14018 (= (rulesValidInductive!32 thiss!19403 rules!2471) lt!15952)))

(declare-fun b!77670 () Bool)

(declare-fun e!43437 () Bool)

(assert (=> b!77670 (= e!43438 e!43437)))

(declare-fun res!40576 () Bool)

(assert (=> b!77670 (=> (not res!40576) (not e!43437))))

(assert (=> b!77670 (= res!40576 (ruleValid!17 thiss!19403 (h!6757 rules!2471)))))

(declare-fun b!77671 () Bool)

(assert (=> b!77671 (= e!43437 (rulesValidInductive!32 thiss!19403 (t!20145 rules!2471)))))

(assert (= (and d!14018 (not res!40575)) b!77670))

(assert (= (and b!77670 res!40576) b!77671))

(declare-fun m!50432 () Bool)

(assert (=> d!14018 m!50432))

(assert (=> b!77670 m!50296))

(declare-fun m!50434 () Bool)

(assert (=> b!77671 m!50434))

(assert (=> d!13766 d!14018))

(declare-fun d!14020 () Bool)

(assert (=> d!14020 (= (isEmpty!416 lt!15539) (not ((_ is Some!99) lt!15539)))))

(assert (=> d!13808 d!14020))

(declare-fun bs!8061 () Bool)

(declare-fun d!14022 () Bool)

(assert (= bs!8061 (and d!14022 d!14018)))

(declare-fun lambda!1425 () Int)

(assert (=> bs!8061 (= lambda!1425 lambda!1422)))

(assert (=> d!14022 true))

(declare-fun lt!15955 () Bool)

(assert (=> d!14022 (= lt!15955 (rulesValidInductive!32 thiss!19403 rules!2471))))

(assert (=> d!14022 (= lt!15955 (forall!185 rules!2471 lambda!1425))))

(assert (=> d!14022 (= (rulesValid!57 thiss!19403 rules!2471) lt!15955)))

(declare-fun bs!8062 () Bool)

(assert (= bs!8062 d!14022))

(assert (=> bs!8062 m!49658))

(declare-fun m!50436 () Bool)

(assert (=> bs!8062 m!50436))

(assert (=> d!13850 d!14022))

(declare-fun d!14024 () Bool)

(declare-fun lt!15958 () Int)

(assert (=> d!14024 (= lt!15958 (size!1189 (list!427 (_2!880 lt!15623))))))

(declare-fun size!1197 (Conc!396) Int)

(assert (=> d!14024 (= lt!15958 (size!1197 (c!19784 (_2!880 lt!15623))))))

(assert (=> d!14024 (= (size!1190 (_2!880 lt!15623)) lt!15958)))

(declare-fun bs!8063 () Bool)

(assert (= bs!8063 d!14024))

(assert (=> bs!8063 m!49824))

(assert (=> bs!8063 m!49824))

(declare-fun m!50438 () Bool)

(assert (=> bs!8063 m!50438))

(declare-fun m!50440 () Bool)

(assert (=> bs!8063 m!50440))

(assert (=> b!77287 d!14024))

(declare-fun d!14026 () Bool)

(declare-fun lt!15959 () Int)

(assert (=> d!14026 (= lt!15959 (size!1189 (list!427 (seqFromList!106 (_2!881 lt!15534)))))))

(assert (=> d!14026 (= lt!15959 (size!1197 (c!19784 (seqFromList!106 (_2!881 lt!15534)))))))

(assert (=> d!14026 (= (size!1190 (seqFromList!106 (_2!881 lt!15534))) lt!15959)))

(declare-fun bs!8064 () Bool)

(assert (= bs!8064 d!14026))

(assert (=> bs!8064 m!49538))

(assert (=> bs!8064 m!49816))

(assert (=> bs!8064 m!49816))

(assert (=> bs!8064 m!50324))

(declare-fun m!50442 () Bool)

(assert (=> bs!8064 m!50442))

(assert (=> b!77287 d!14026))

(declare-fun d!14028 () Bool)

(assert (=> d!14028 (= (list!426 (seqFromList!107 ($colon$colon!16 (t!20146 lt!15533) (h!6758 lt!15533)))) (list!431 (c!19786 (seqFromList!107 ($colon$colon!16 (t!20146 lt!15533) (h!6758 lt!15533))))))))

(declare-fun bs!8065 () Bool)

(assert (= bs!8065 d!14028))

(declare-fun m!50444 () Bool)

(assert (=> bs!8065 m!50444))

(assert (=> d!13814 d!14028))

(declare-fun d!14030 () Bool)

(assert (=> d!14030 (= ($colon$colon!16 (t!20146 lt!15533) (h!6758 lt!15533)) (Cons!1361 (h!6758 lt!15533) (t!20146 lt!15533)))))

(assert (=> d!13814 d!14030))

(assert (=> d!13814 d!13832))

(declare-fun d!14032 () Bool)

(assert (=> d!14032 (= (seqFromList!107 ($colon$colon!16 (t!20146 lt!15533) (h!6758 lt!15533))) (fromListB!35 ($colon$colon!16 (t!20146 lt!15533) (h!6758 lt!15533))))))

(declare-fun bs!8066 () Bool)

(assert (= bs!8066 d!14032))

(assert (=> bs!8066 m!49766))

(declare-fun m!50446 () Bool)

(assert (=> bs!8066 m!50446))

(assert (=> d!13814 d!14032))

(assert (=> d!13814 d!13782))

(assert (=> d!13814 d!13840))

(assert (=> d!13814 d!13812))

(declare-fun d!14034 () Bool)

(assert (=> d!14034 (= (list!426 (_1!880 lt!15541)) (list!426 (prepend!48 (seqFromList!107 (t!20146 lt!15533)) (h!6758 lt!15533))))))

(assert (=> d!14034 true))

(declare-fun _$1!9847 () Unit!820)

(assert (=> d!14034 (= (choose!1271 (h!6758 lt!15533) (t!20146 lt!15533) (_1!880 lt!15541)) _$1!9847)))

(declare-fun bs!8067 () Bool)

(assert (= bs!8067 d!14034))

(assert (=> bs!8067 m!49560))

(assert (=> bs!8067 m!49518))

(assert (=> bs!8067 m!49518))

(assert (=> bs!8067 m!49532))

(assert (=> bs!8067 m!49532))

(assert (=> bs!8067 m!49534))

(assert (=> d!13814 d!14034))

(declare-fun d!14036 () Bool)

(declare-fun c!19908 () Bool)

(assert (=> d!14036 (= c!19908 ((_ is Empty!396) (c!19784 (_2!880 lt!15543))))))

(declare-fun e!43445 () List!1364)

(assert (=> d!14036 (= (list!430 (c!19784 (_2!880 lt!15543))) e!43445)))

(declare-fun b!77683 () Bool)

(assert (=> b!77683 (= e!43445 Nil!1358)))

(declare-fun b!77686 () Bool)

(declare-fun e!43446 () List!1364)

(assert (=> b!77686 (= e!43446 (++!116 (list!430 (left!1029 (c!19784 (_2!880 lt!15543)))) (list!430 (right!1359 (c!19784 (_2!880 lt!15543))))))))

(declare-fun b!77685 () Bool)

(assert (=> b!77685 (= e!43446 (list!435 (xs!2975 (c!19784 (_2!880 lt!15543)))))))

(declare-fun b!77684 () Bool)

(assert (=> b!77684 (= e!43445 e!43446)))

(declare-fun c!19909 () Bool)

(assert (=> b!77684 (= c!19909 ((_ is Leaf!680) (c!19784 (_2!880 lt!15543))))))

(assert (= (and d!14036 c!19908) b!77683))

(assert (= (and d!14036 (not c!19908)) b!77684))

(assert (= (and b!77684 c!19909) b!77685))

(assert (= (and b!77684 (not c!19909)) b!77686))

(declare-fun m!50490 () Bool)

(assert (=> b!77686 m!50490))

(declare-fun m!50492 () Bool)

(assert (=> b!77686 m!50492))

(assert (=> b!77686 m!50490))

(assert (=> b!77686 m!50492))

(declare-fun m!50500 () Bool)

(assert (=> b!77686 m!50500))

(declare-fun m!50504 () Bool)

(assert (=> b!77685 m!50504))

(assert (=> d!13838 d!14036))

(declare-fun d!14038 () Bool)

(declare-fun e!43452 () Bool)

(assert (=> d!14038 e!43452))

(declare-fun res!40589 () Bool)

(assert (=> d!14038 (=> (not res!40589) (not e!43452))))

(declare-fun lt!16001 () BalanceConc!798)

(assert (=> d!14038 (= res!40589 (= (list!426 lt!16001) (t!20146 lt!15533)))))

(declare-fun fromList!19 (List!1367) Conc!397)

(assert (=> d!14038 (= lt!16001 (BalanceConc!799 (fromList!19 (t!20146 lt!15533))))))

(assert (=> d!14038 (= (fromListB!35 (t!20146 lt!15533)) lt!16001)))

(declare-fun b!77698 () Bool)

(assert (=> b!77698 (= e!43452 (isBalanced!75 (fromList!19 (t!20146 lt!15533))))))

(assert (= (and d!14038 res!40589) b!77698))

(declare-fun m!50550 () Bool)

(assert (=> d!14038 m!50550))

(declare-fun m!50554 () Bool)

(assert (=> d!14038 m!50554))

(assert (=> b!77698 m!50554))

(assert (=> b!77698 m!50554))

(declare-fun m!50556 () Bool)

(assert (=> b!77698 m!50556))

(assert (=> d!13832 d!14038))

(declare-fun d!14042 () Bool)

(declare-fun lt!16002 () Int)

(assert (=> d!14042 (= lt!16002 (size!1194 (list!426 (_1!880 lt!15623))))))

(assert (=> d!14042 (= lt!16002 (size!1195 (c!19786 (_1!880 lt!15623))))))

(assert (=> d!14042 (= (size!1191 (_1!880 lt!15623)) lt!16002)))

(declare-fun bs!8068 () Bool)

(assert (= bs!8068 d!14042))

(assert (=> bs!8068 m!49814))

(assert (=> bs!8068 m!49814))

(declare-fun m!50566 () Bool)

(assert (=> bs!8068 m!50566))

(declare-fun m!50568 () Bool)

(assert (=> bs!8068 m!50568))

(assert (=> d!13816 d!14042))

(declare-fun b!77699 () Bool)

(declare-fun e!43453 () tuple2!1346)

(assert (=> b!77699 (= e!43453 (tuple2!1347 (BalanceConc!799 Empty!397) (seqFromList!106 (_2!881 lt!15534))))))

(declare-fun b!77700 () Bool)

(declare-fun lt!16034 () BalanceConc!796)

(declare-fun e!43455 () tuple2!1346)

(declare-fun lt!16030 () Option!101)

(assert (=> b!77700 (= e!43455 (lexTailRecV2!35 thiss!19403 rules!2471 (seqFromList!106 (_2!881 lt!15534)) lt!16034 (_2!884 (v!12765 lt!16030)) (append!22 (BalanceConc!799 Empty!397) (_1!884 (v!12765 lt!16030)))))))

(declare-fun lt!16031 () tuple2!1346)

(assert (=> b!77700 (= lt!16031 (lexRec!21 thiss!19403 rules!2471 (_2!884 (v!12765 lt!16030))))))

(declare-fun lt!16021 () List!1364)

(assert (=> b!77700 (= lt!16021 (list!427 (BalanceConc!797 Empty!396)))))

(declare-fun lt!16019 () List!1364)

(assert (=> b!77700 (= lt!16019 (list!427 (charsOf!34 (_1!884 (v!12765 lt!16030)))))))

(declare-fun lt!16014 () List!1364)

(assert (=> b!77700 (= lt!16014 (list!427 (_2!884 (v!12765 lt!16030))))))

(declare-fun lt!16032 () Unit!820)

(assert (=> b!77700 (= lt!16032 (lemmaConcatAssociativity!36 lt!16021 lt!16019 lt!16014))))

(assert (=> b!77700 (= (++!116 (++!116 lt!16021 lt!16019) lt!16014) (++!116 lt!16021 (++!116 lt!16019 lt!16014)))))

(declare-fun lt!16033 () Unit!820)

(assert (=> b!77700 (= lt!16033 lt!16032)))

(declare-fun lt!16007 () Option!101)

(assert (=> b!77700 (= lt!16007 (maxPrefixZipperSequence!19 thiss!19403 rules!2471 (seqFromList!106 (_2!881 lt!15534))))))

(declare-fun c!19914 () Bool)

(assert (=> b!77700 (= c!19914 ((_ is Some!100) lt!16007))))

(assert (=> b!77700 (= (lexRec!21 thiss!19403 rules!2471 (seqFromList!106 (_2!881 lt!15534))) e!43453)))

(declare-fun lt!16018 () Unit!820)

(declare-fun Unit!826 () Unit!820)

(assert (=> b!77700 (= lt!16018 Unit!826)))

(declare-fun lt!16026 () List!1367)

(assert (=> b!77700 (= lt!16026 (list!426 (BalanceConc!799 Empty!397)))))

(declare-fun lt!16003 () List!1367)

(assert (=> b!77700 (= lt!16003 (Cons!1361 (_1!884 (v!12765 lt!16030)) Nil!1361))))

(declare-fun lt!16013 () List!1367)

(assert (=> b!77700 (= lt!16013 (list!426 (_1!880 lt!16031)))))

(declare-fun lt!16006 () Unit!820)

(assert (=> b!77700 (= lt!16006 (lemmaConcatAssociativity!37 lt!16026 lt!16003 lt!16013))))

(assert (=> b!77700 (= (++!120 (++!120 lt!16026 lt!16003) lt!16013) (++!120 lt!16026 (++!120 lt!16003 lt!16013)))))

(declare-fun lt!16005 () Unit!820)

(assert (=> b!77700 (= lt!16005 lt!16006)))

(declare-fun lt!16009 () List!1364)

(assert (=> b!77700 (= lt!16009 (++!116 (list!427 (BalanceConc!797 Empty!396)) (list!427 (charsOf!34 (_1!884 (v!12765 lt!16030))))))))

(declare-fun lt!16029 () List!1364)

(assert (=> b!77700 (= lt!16029 (list!427 (_2!884 (v!12765 lt!16030))))))

(declare-fun lt!16008 () List!1367)

(assert (=> b!77700 (= lt!16008 (list!426 (append!22 (BalanceConc!799 Empty!397) (_1!884 (v!12765 lt!16030)))))))

(declare-fun lt!16036 () Unit!820)

(assert (=> b!77700 (= lt!16036 (lemmaLexThenLexPrefix!16 thiss!19403 rules!2471 lt!16009 lt!16029 lt!16008 (list!426 (_1!880 lt!16031)) (list!427 (_2!880 lt!16031))))))

(assert (=> b!77700 (= (lexList!38 thiss!19403 rules!2471 lt!16009) (tuple2!1351 lt!16008 Nil!1358))))

(declare-fun lt!16020 () Unit!820)

(assert (=> b!77700 (= lt!16020 lt!16036)))

(declare-fun lt!16023 () BalanceConc!796)

(assert (=> b!77700 (= lt!16023 (++!121 (BalanceConc!797 Empty!396) (charsOf!34 (_1!884 (v!12765 lt!16030)))))))

(declare-fun lt!16016 () Option!101)

(assert (=> b!77700 (= lt!16016 (maxPrefixZipperSequence!19 thiss!19403 rules!2471 lt!16023))))

(declare-fun c!19913 () Bool)

(assert (=> b!77700 (= c!19913 ((_ is Some!100) lt!16016))))

(declare-fun e!43454 () tuple2!1346)

(assert (=> b!77700 (= (lexRec!21 thiss!19403 rules!2471 (++!121 (BalanceConc!797 Empty!396) (charsOf!34 (_1!884 (v!12765 lt!16030))))) e!43454)))

(declare-fun lt!16015 () Unit!820)

(declare-fun Unit!827 () Unit!820)

(assert (=> b!77700 (= lt!16015 Unit!827)))

(assert (=> b!77700 (= lt!16034 (++!121 (BalanceConc!797 Empty!396) (charsOf!34 (_1!884 (v!12765 lt!16030)))))))

(declare-fun lt!16035 () List!1364)

(assert (=> b!77700 (= lt!16035 (list!427 lt!16034))))

(declare-fun lt!16027 () List!1364)

(assert (=> b!77700 (= lt!16027 (list!427 (_2!884 (v!12765 lt!16030))))))

(declare-fun lt!16022 () Unit!820)

(assert (=> b!77700 (= lt!16022 (lemmaConcatTwoListThenFSndIsSuffix!16 lt!16035 lt!16027))))

(assert (=> b!77700 (isSuffix!16 lt!16027 (++!116 lt!16035 lt!16027))))

(declare-fun lt!16017 () Unit!820)

(assert (=> b!77700 (= lt!16017 lt!16022)))

(declare-fun b!77701 () Bool)

(assert (=> b!77701 (= e!43455 (tuple2!1347 (BalanceConc!799 Empty!397) (seqFromList!106 (_2!881 lt!15534))))))

(declare-fun lt!16004 () tuple2!1346)

(declare-fun b!77703 () Bool)

(declare-fun e!43456 () Bool)

(assert (=> b!77703 (= e!43456 (= (list!427 (_2!880 lt!16004)) (list!427 (_2!880 (lexRec!21 thiss!19403 rules!2471 (seqFromList!106 (_2!881 lt!15534)))))))))

(declare-fun lt!16024 () tuple2!1346)

(declare-fun b!77704 () Bool)

(assert (=> b!77704 (= lt!16024 (lexRec!21 thiss!19403 rules!2471 (_2!884 (v!12765 lt!16016))))))

(assert (=> b!77704 (= e!43454 (tuple2!1347 (prepend!48 (_1!880 lt!16024) (_1!884 (v!12765 lt!16016))) (_2!880 lt!16024)))))

(declare-fun b!77705 () Bool)

(assert (=> b!77705 (= e!43454 (tuple2!1347 (BalanceConc!799 Empty!397) lt!16023))))

(declare-fun lt!16028 () tuple2!1346)

(declare-fun b!77702 () Bool)

(assert (=> b!77702 (= lt!16028 (lexRec!21 thiss!19403 rules!2471 (_2!884 (v!12765 lt!16007))))))

(assert (=> b!77702 (= e!43453 (tuple2!1347 (prepend!48 (_1!880 lt!16028) (_1!884 (v!12765 lt!16007))) (_2!880 lt!16028)))))

(declare-fun d!14044 () Bool)

(assert (=> d!14044 e!43456))

(declare-fun res!40590 () Bool)

(assert (=> d!14044 (=> (not res!40590) (not e!43456))))

(assert (=> d!14044 (= res!40590 (= (list!426 (_1!880 lt!16004)) (list!426 (_1!880 (lexRec!21 thiss!19403 rules!2471 (seqFromList!106 (_2!881 lt!15534)))))))))

(assert (=> d!14044 (= lt!16004 e!43455)))

(declare-fun c!19912 () Bool)

(assert (=> d!14044 (= c!19912 ((_ is Some!100) lt!16030))))

(assert (=> d!14044 (= lt!16030 (maxPrefixZipperSequenceV2!16 thiss!19403 rules!2471 (seqFromList!106 (_2!881 lt!15534)) (seqFromList!106 (_2!881 lt!15534))))))

(declare-fun lt!16025 () Unit!820)

(declare-fun lt!16012 () Unit!820)

(assert (=> d!14044 (= lt!16025 lt!16012)))

(declare-fun lt!16011 () List!1364)

(declare-fun lt!16010 () List!1364)

(assert (=> d!14044 (isSuffix!16 lt!16011 (++!116 lt!16010 lt!16011))))

(assert (=> d!14044 (= lt!16012 (lemmaConcatTwoListThenFSndIsSuffix!16 lt!16010 lt!16011))))

(assert (=> d!14044 (= lt!16011 (list!427 (seqFromList!106 (_2!881 lt!15534))))))

(assert (=> d!14044 (= lt!16010 (list!427 (BalanceConc!797 Empty!396)))))

(assert (=> d!14044 (= (lexTailRecV2!35 thiss!19403 rules!2471 (seqFromList!106 (_2!881 lt!15534)) (BalanceConc!797 Empty!396) (seqFromList!106 (_2!881 lt!15534)) (BalanceConc!799 Empty!397)) lt!16004)))

(assert (= (and d!14044 c!19912) b!77700))

(assert (= (and d!14044 (not c!19912)) b!77701))

(assert (= (and b!77700 c!19914) b!77702))

(assert (= (and b!77700 (not c!19914)) b!77699))

(assert (= (and b!77700 c!19913) b!77704))

(assert (= (and b!77700 (not c!19913)) b!77705))

(assert (= (and d!14044 res!40590) b!77703))

(declare-fun m!50580 () Bool)

(assert (=> b!77702 m!50580))

(declare-fun m!50582 () Bool)

(assert (=> b!77702 m!50582))

(declare-fun m!50584 () Bool)

(assert (=> b!77703 m!50584))

(assert (=> b!77703 m!49538))

(declare-fun m!50586 () Bool)

(assert (=> b!77703 m!50586))

(declare-fun m!50588 () Bool)

(assert (=> b!77703 m!50588))

(assert (=> d!14044 m!50158))

(assert (=> d!14044 m!49538))

(assert (=> d!14044 m!49816))

(declare-fun m!50590 () Bool)

(assert (=> d!14044 m!50590))

(assert (=> d!14044 m!49538))

(assert (=> d!14044 m!49538))

(declare-fun m!50592 () Bool)

(assert (=> d!14044 m!50592))

(declare-fun m!50594 () Bool)

(assert (=> d!14044 m!50594))

(assert (=> d!14044 m!49538))

(assert (=> d!14044 m!50586))

(declare-fun m!50596 () Bool)

(assert (=> d!14044 m!50596))

(declare-fun m!50598 () Bool)

(assert (=> d!14044 m!50598))

(assert (=> d!14044 m!50590))

(declare-fun m!50600 () Bool)

(assert (=> d!14044 m!50600))

(declare-fun m!50602 () Bool)

(assert (=> b!77700 m!50602))

(declare-fun m!50604 () Bool)

(assert (=> b!77700 m!50604))

(declare-fun m!50606 () Bool)

(assert (=> b!77700 m!50606))

(declare-fun m!50608 () Bool)

(assert (=> b!77700 m!50608))

(declare-fun m!50610 () Bool)

(assert (=> b!77700 m!50610))

(declare-fun m!50612 () Bool)

(assert (=> b!77700 m!50612))

(declare-fun m!50614 () Bool)

(assert (=> b!77700 m!50614))

(declare-fun m!50616 () Bool)

(assert (=> b!77700 m!50616))

(declare-fun m!50618 () Bool)

(assert (=> b!77700 m!50618))

(declare-fun m!50620 () Bool)

(assert (=> b!77700 m!50620))

(assert (=> b!77700 m!50158))

(declare-fun m!50622 () Bool)

(assert (=> b!77700 m!50622))

(declare-fun m!50624 () Bool)

(assert (=> b!77700 m!50624))

(assert (=> b!77700 m!50612))

(declare-fun m!50626 () Bool)

(assert (=> b!77700 m!50626))

(declare-fun m!50628 () Bool)

(assert (=> b!77700 m!50628))

(declare-fun m!50630 () Bool)

(assert (=> b!77700 m!50630))

(assert (=> b!77700 m!50158))

(declare-fun m!50632 () Bool)

(assert (=> b!77700 m!50632))

(declare-fun m!50634 () Bool)

(assert (=> b!77700 m!50634))

(assert (=> b!77700 m!50206))

(assert (=> b!77700 m!50602))

(assert (=> b!77700 m!50616))

(declare-fun m!50636 () Bool)

(assert (=> b!77700 m!50636))

(declare-fun m!50638 () Bool)

(assert (=> b!77700 m!50638))

(declare-fun m!50640 () Bool)

(assert (=> b!77700 m!50640))

(declare-fun m!50642 () Bool)

(assert (=> b!77700 m!50642))

(declare-fun m!50644 () Bool)

(assert (=> b!77700 m!50644))

(declare-fun m!50646 () Bool)

(assert (=> b!77700 m!50646))

(assert (=> b!77700 m!50606))

(declare-fun m!50648 () Bool)

(assert (=> b!77700 m!50648))

(assert (=> b!77700 m!50622))

(assert (=> b!77700 m!49538))

(declare-fun m!50650 () Bool)

(assert (=> b!77700 m!50650))

(declare-fun m!50652 () Bool)

(assert (=> b!77700 m!50652))

(assert (=> b!77700 m!50642))

(assert (=> b!77700 m!50648))

(declare-fun m!50654 () Bool)

(assert (=> b!77700 m!50654))

(assert (=> b!77700 m!50632))

(declare-fun m!50656 () Bool)

(assert (=> b!77700 m!50656))

(assert (=> b!77700 m!50634))

(declare-fun m!50658 () Bool)

(assert (=> b!77700 m!50658))

(assert (=> b!77700 m!49538))

(assert (=> b!77700 m!50586))

(assert (=> b!77700 m!50644))

(assert (=> b!77700 m!50648))

(assert (=> b!77700 m!50628))

(assert (=> b!77700 m!49538))

(assert (=> b!77700 m!50634))

(declare-fun m!50660 () Bool)

(assert (=> b!77700 m!50660))

(declare-fun m!50662 () Bool)

(assert (=> b!77704 m!50662))

(declare-fun m!50664 () Bool)

(assert (=> b!77704 m!50664))

(assert (=> d!13816 d!14044))

(assert (=> d!13784 d!13766))

(assert (=> d!13784 d!13850))

(declare-fun d!14048 () Bool)

(assert (=> d!14048 (= (list!427 (_2!880 lt!15607)) (list!430 (c!19784 (_2!880 lt!15607))))))

(declare-fun bs!8069 () Bool)

(assert (= bs!8069 d!14048))

(declare-fun m!50666 () Bool)

(assert (=> bs!8069 m!50666))

(assert (=> d!13784 d!14048))

(declare-fun d!14050 () Bool)

(assert (=> d!14050 (= (seqFromList!106 (_2!881 (get!334 (maxPrefix!33 thiss!19403 rules!2471 input!2238)))) (fromListB!36 (_2!881 (get!334 (maxPrefix!33 thiss!19403 rules!2471 input!2238)))))))

(declare-fun bs!8070 () Bool)

(assert (= bs!8070 d!14050))

(declare-fun m!50668 () Bool)

(assert (=> bs!8070 m!50668))

(assert (=> d!13784 d!14050))

(declare-fun d!14052 () Bool)

(assert (=> d!14052 (= (list!426 (_1!880 lt!15607)) (list!431 (c!19786 (_1!880 lt!15607))))))

(declare-fun bs!8071 () Bool)

(assert (= bs!8071 d!14052))

(declare-fun m!50670 () Bool)

(assert (=> bs!8071 m!50670))

(assert (=> d!13784 d!14052))

(declare-fun d!14054 () Bool)

(assert (=> d!14054 (= (get!334 (maxPrefix!33 thiss!19403 rules!2471 input!2238)) (v!12754 (maxPrefix!33 thiss!19403 rules!2471 input!2238)))))

(assert (=> d!13784 d!14054))

(declare-fun b!77706 () Bool)

(declare-fun e!43458 () Bool)

(declare-fun e!43459 () Bool)

(assert (=> b!77706 (= e!43458 e!43459)))

(declare-fun lt!16037 () tuple2!1346)

(declare-fun res!40592 () Bool)

(assert (=> b!77706 (= res!40592 (< (size!1190 (_2!880 lt!16037)) (size!1190 (seqFromList!106 (_2!881 (get!334 (maxPrefix!33 thiss!19403 rules!2471 input!2238)))))))))

(assert (=> b!77706 (=> (not res!40592) (not e!43459))))

(declare-fun d!14056 () Bool)

(declare-fun e!43457 () Bool)

(assert (=> d!14056 e!43457))

(declare-fun res!40593 () Bool)

(assert (=> d!14056 (=> (not res!40593) (not e!43457))))

(assert (=> d!14056 (= res!40593 e!43458)))

(declare-fun c!19915 () Bool)

(assert (=> d!14056 (= c!19915 (> (size!1191 (_1!880 lt!16037)) 0))))

(assert (=> d!14056 (= lt!16037 (lexTailRecV2!35 thiss!19403 rules!2471 (seqFromList!106 (_2!881 (get!334 (maxPrefix!33 thiss!19403 rules!2471 input!2238)))) (BalanceConc!797 Empty!396) (seqFromList!106 (_2!881 (get!334 (maxPrefix!33 thiss!19403 rules!2471 input!2238)))) (BalanceConc!799 Empty!397)))))

(assert (=> d!14056 (= (lex!97 thiss!19403 rules!2471 (seqFromList!106 (_2!881 (get!334 (maxPrefix!33 thiss!19403 rules!2471 input!2238))))) lt!16037)))

(declare-fun b!77707 () Bool)

(assert (=> b!77707 (= e!43459 (not (isEmpty!417 (_1!880 lt!16037))))))

(declare-fun b!77708 () Bool)

(assert (=> b!77708 (= e!43457 (= (list!427 (_2!880 lt!16037)) (_2!882 (lexList!38 thiss!19403 rules!2471 (list!427 (seqFromList!106 (_2!881 (get!334 (maxPrefix!33 thiss!19403 rules!2471 input!2238)))))))))))

(declare-fun b!77709 () Bool)

(assert (=> b!77709 (= e!43458 (= (_2!880 lt!16037) (seqFromList!106 (_2!881 (get!334 (maxPrefix!33 thiss!19403 rules!2471 input!2238))))))))

(declare-fun b!77710 () Bool)

(declare-fun res!40591 () Bool)

(assert (=> b!77710 (=> (not res!40591) (not e!43457))))

(assert (=> b!77710 (= res!40591 (= (list!426 (_1!880 lt!16037)) (_1!882 (lexList!38 thiss!19403 rules!2471 (list!427 (seqFromList!106 (_2!881 (get!334 (maxPrefix!33 thiss!19403 rules!2471 input!2238)))))))))))

(assert (= (and d!14056 c!19915) b!77706))

(assert (= (and d!14056 (not c!19915)) b!77709))

(assert (= (and b!77706 res!40592) b!77707))

(assert (= (and d!14056 res!40593) b!77710))

(assert (= (and b!77710 res!40591) b!77708))

(declare-fun m!50672 () Bool)

(assert (=> d!14056 m!50672))

(assert (=> d!14056 m!49744))

(assert (=> d!14056 m!49744))

(declare-fun m!50674 () Bool)

(assert (=> d!14056 m!50674))

(declare-fun m!50676 () Bool)

(assert (=> b!77707 m!50676))

(declare-fun m!50678 () Bool)

(assert (=> b!77710 m!50678))

(assert (=> b!77710 m!49744))

(declare-fun m!50680 () Bool)

(assert (=> b!77710 m!50680))

(assert (=> b!77710 m!50680))

(declare-fun m!50682 () Bool)

(assert (=> b!77710 m!50682))

(declare-fun m!50684 () Bool)

(assert (=> b!77706 m!50684))

(assert (=> b!77706 m!49744))

(declare-fun m!50686 () Bool)

(assert (=> b!77706 m!50686))

(declare-fun m!50688 () Bool)

(assert (=> b!77708 m!50688))

(assert (=> b!77708 m!49744))

(assert (=> b!77708 m!50680))

(assert (=> b!77708 m!50680))

(assert (=> b!77708 m!50682))

(assert (=> d!13784 d!14056))

(assert (=> d!13784 d!13810))

(declare-fun d!14058 () Bool)

(declare-fun lt!16047 () tuple2!1346)

(assert (=> d!14058 (= (tuple2!1351 (list!426 (_1!880 lt!16047)) (list!427 (_2!880 lt!16047))) (tuple2!1351 (tail!104 lt!15533) lt!15542))))

(assert (=> d!14058 (= lt!16047 (lex!97 thiss!19403 rules!2471 (seqFromList!106 (_2!881 (get!334 (maxPrefix!33 thiss!19403 rules!2471 input!2238))))))))

(assert (=> d!14058 true))

(declare-fun _$54!141 () Unit!820)

(assert (=> d!14058 (= (choose!1270 thiss!19403 rules!2471 input!2238 lt!15533 lt!15542) _$54!141)))

(declare-fun bs!8074 () Bool)

(assert (= bs!8074 d!14058))

(assert (=> bs!8074 m!49510))

(assert (=> bs!8074 m!49752))

(declare-fun m!50730 () Bool)

(assert (=> bs!8074 m!50730))

(assert (=> bs!8074 m!49744))

(declare-fun m!50732 () Bool)

(assert (=> bs!8074 m!50732))

(assert (=> bs!8074 m!49520))

(assert (=> bs!8074 m!49510))

(assert (=> bs!8074 m!49744))

(assert (=> bs!8074 m!49750))

(assert (=> d!13784 d!14058))

(declare-fun d!14078 () Bool)

(assert (=> d!14078 (= (list!426 (_1!880 lt!15636)) (list!431 (c!19786 (_1!880 lt!15636))))))

(declare-fun bs!8075 () Bool)

(assert (= bs!8075 d!14078))

(declare-fun m!50734 () Bool)

(assert (=> bs!8075 m!50734))

(assert (=> b!77296 d!14078))

(declare-fun b!77764 () Bool)

(declare-fun e!43489 () tuple2!1350)

(declare-fun lt!16049 () Option!100)

(declare-fun lt!16050 () tuple2!1350)

(assert (=> b!77764 (= e!43489 (tuple2!1351 (Cons!1361 (_1!881 (v!12754 lt!16049)) (_1!882 lt!16050)) (_2!882 lt!16050)))))

(assert (=> b!77764 (= lt!16050 (lexList!38 thiss!19403 rules!2471 (_2!881 (v!12754 lt!16049))))))

(declare-fun b!77765 () Bool)

(declare-fun e!43487 () Bool)

(declare-fun lt!16048 () tuple2!1350)

(assert (=> b!77765 (= e!43487 (not (isEmpty!422 (_1!882 lt!16048))))))

(declare-fun b!77766 () Bool)

(assert (=> b!77766 (= e!43489 (tuple2!1351 Nil!1361 (list!427 (seqFromList!106 input!2238))))))

(declare-fun b!77768 () Bool)

(declare-fun e!43488 () Bool)

(assert (=> b!77768 (= e!43488 (= (_2!882 lt!16048) (list!427 (seqFromList!106 input!2238))))))

(declare-fun b!77767 () Bool)

(assert (=> b!77767 (= e!43488 e!43487)))

(declare-fun res!40621 () Bool)

(assert (=> b!77767 (= res!40621 (< (size!1189 (_2!882 lt!16048)) (size!1189 (list!427 (seqFromList!106 input!2238)))))))

(assert (=> b!77767 (=> (not res!40621) (not e!43487))))

(declare-fun d!14080 () Bool)

(assert (=> d!14080 e!43488))

(declare-fun c!19930 () Bool)

(assert (=> d!14080 (= c!19930 (> (size!1194 (_1!882 lt!16048)) 0))))

(assert (=> d!14080 (= lt!16048 e!43489)))

(declare-fun c!19929 () Bool)

(assert (=> d!14080 (= c!19929 ((_ is Some!99) lt!16049))))

(assert (=> d!14080 (= lt!16049 (maxPrefix!33 thiss!19403 rules!2471 (list!427 (seqFromList!106 input!2238))))))

(assert (=> d!14080 (= (lexList!38 thiss!19403 rules!2471 (list!427 (seqFromList!106 input!2238))) lt!16048)))

(assert (= (and d!14080 c!19929) b!77764))

(assert (= (and d!14080 (not c!19929)) b!77766))

(assert (= (and d!14080 c!19930) b!77767))

(assert (= (and d!14080 (not c!19930)) b!77768))

(assert (= (and b!77767 res!40621) b!77765))

(declare-fun m!50736 () Bool)

(assert (=> b!77764 m!50736))

(declare-fun m!50738 () Bool)

(assert (=> b!77765 m!50738))

(declare-fun m!50740 () Bool)

(assert (=> b!77767 m!50740))

(assert (=> b!77767 m!49866))

(declare-fun m!50742 () Bool)

(assert (=> b!77767 m!50742))

(declare-fun m!50744 () Bool)

(assert (=> d!14080 m!50744))

(assert (=> d!14080 m!49866))

(declare-fun m!50746 () Bool)

(assert (=> d!14080 m!50746))

(assert (=> b!77296 d!14080))

(declare-fun d!14082 () Bool)

(assert (=> d!14082 (= (list!427 (seqFromList!106 input!2238)) (list!430 (c!19784 (seqFromList!106 input!2238))))))

(declare-fun bs!8076 () Bool)

(assert (= bs!8076 d!14082))

(declare-fun m!50748 () Bool)

(assert (=> bs!8076 m!50748))

(assert (=> b!77296 d!14082))

(declare-fun d!14084 () Bool)

(assert (=> d!14084 (= (list!427 (_2!880 lt!15636)) (list!430 (c!19784 (_2!880 lt!15636))))))

(declare-fun bs!8077 () Bool)

(assert (= bs!8077 d!14084))

(declare-fun m!50750 () Bool)

(assert (=> bs!8077 m!50750))

(assert (=> b!77294 d!14084))

(assert (=> b!77294 d!14080))

(assert (=> b!77294 d!14082))

(declare-fun d!14086 () Bool)

(declare-fun e!43492 () Bool)

(assert (=> d!14086 e!43492))

(declare-fun res!40624 () Bool)

(assert (=> d!14086 (=> (not res!40624) (not e!43492))))

(declare-fun lt!16056 () BalanceConc!796)

(assert (=> d!14086 (= res!40624 (= (list!427 lt!16056) input!2238))))

(declare-fun fromList!20 (List!1364) Conc!396)

(assert (=> d!14086 (= lt!16056 (BalanceConc!797 (fromList!20 input!2238)))))

(assert (=> d!14086 (= (fromListB!36 input!2238) lt!16056)))

(declare-fun b!77771 () Bool)

(declare-fun isBalanced!76 (Conc!396) Bool)

(assert (=> b!77771 (= e!43492 (isBalanced!76 (fromList!20 input!2238)))))

(assert (= (and d!14086 res!40624) b!77771))

(declare-fun m!50752 () Bool)

(assert (=> d!14086 m!50752))

(declare-fun m!50754 () Bool)

(assert (=> d!14086 m!50754))

(assert (=> b!77771 m!50754))

(assert (=> b!77771 m!50754))

(declare-fun m!50756 () Bool)

(assert (=> b!77771 m!50756))

(assert (=> d!13848 d!14086))

(declare-fun d!14088 () Bool)

(assert (=> d!14088 (= (inv!1721 (tag!475 (h!6757 (t!20145 rules!2471)))) (= (mod (str.len (value!11334 (tag!475 (h!6757 (t!20145 rules!2471))))) 2) 0))))

(assert (=> b!77312 d!14088))

(declare-fun d!14090 () Bool)

(declare-fun res!40625 () Bool)

(declare-fun e!43493 () Bool)

(assert (=> d!14090 (=> (not res!40625) (not e!43493))))

(assert (=> d!14090 (= res!40625 (semiInverseModEq!49 (toChars!663 (transformation!297 (h!6757 (t!20145 rules!2471)))) (toValue!804 (transformation!297 (h!6757 (t!20145 rules!2471))))))))

(assert (=> d!14090 (= (inv!1723 (transformation!297 (h!6757 (t!20145 rules!2471)))) e!43493)))

(declare-fun b!77772 () Bool)

(assert (=> b!77772 (= e!43493 (equivClasses!45 (toChars!663 (transformation!297 (h!6757 (t!20145 rules!2471)))) (toValue!804 (transformation!297 (h!6757 (t!20145 rules!2471))))))))

(assert (= (and d!14090 res!40625) b!77772))

(declare-fun m!50762 () Bool)

(assert (=> d!14090 m!50762))

(declare-fun m!50766 () Bool)

(assert (=> b!77772 m!50766))

(assert (=> b!77312 d!14090))

(declare-fun d!14096 () Bool)

(assert (=> d!14096 (= (list!427 (print!28 thiss!19403 (_1!880 lt!15632))) (list!430 (c!19784 (print!28 thiss!19403 (_1!880 lt!15632)))))))

(declare-fun bs!8081 () Bool)

(assert (= bs!8081 d!14096))

(declare-fun m!50770 () Bool)

(assert (=> bs!8081 m!50770))

(assert (=> d!13828 d!14096))

(assert (=> d!13828 d!13842))

(declare-fun d!14100 () Bool)

(declare-fun lt!16057 () BalanceConc!796)

(assert (=> d!14100 (= (list!427 lt!16057) (printList!10 thiss!19403 (list!426 (_1!880 lt!15632))))))

(assert (=> d!14100 (= lt!16057 (printTailRec!10 thiss!19403 (_1!880 lt!15632) 0 (BalanceConc!797 Empty!396)))))

(assert (=> d!14100 (= (print!28 thiss!19403 (_1!880 lt!15632)) lt!16057)))

(declare-fun bs!8082 () Bool)

(assert (= bs!8082 d!14100))

(declare-fun m!50772 () Bool)

(assert (=> bs!8082 m!50772))

(declare-fun m!50774 () Bool)

(assert (=> bs!8082 m!50774))

(assert (=> bs!8082 m!50774))

(declare-fun m!50776 () Bool)

(assert (=> bs!8082 m!50776))

(declare-fun m!50778 () Bool)

(assert (=> bs!8082 m!50778))

(assert (=> d!13828 d!14100))

(declare-fun d!14104 () Bool)

(assert (=> d!14104 (= (list!427 (_2!880 lt!15632)) (list!430 (c!19784 (_2!880 lt!15632))))))

(declare-fun bs!8083 () Bool)

(assert (= bs!8083 d!14104))

(declare-fun m!50780 () Bool)

(assert (=> bs!8083 m!50780))

(assert (=> d!13828 d!14104))

(assert (=> d!13828 d!13836))

(declare-fun d!14106 () Bool)

(declare-fun lt!16103 () tuple2!1346)

(assert (=> d!14106 (= (++!116 (list!427 (print!28 thiss!19403 (_1!880 lt!16103))) (list!427 (_2!880 lt!16103))) (_2!881 lt!15534))))

(assert (=> d!14106 (= lt!16103 (lex!97 thiss!19403 rules!2471 (seqFromList!106 (_2!881 lt!15534))))))

(assert (=> d!14106 true))

(declare-fun _$31!88 () Unit!820)

(assert (=> d!14106 (= (choose!1272 thiss!19403 rules!2471 (_2!881 lt!15534)) _$31!88)))

(declare-fun bs!8091 () Bool)

(assert (= bs!8091 d!14106))

(declare-fun m!50944 () Bool)

(assert (=> bs!8091 m!50944))

(declare-fun m!50946 () Bool)

(assert (=> bs!8091 m!50946))

(assert (=> bs!8091 m!50944))

(declare-fun m!50948 () Bool)

(assert (=> bs!8091 m!50948))

(declare-fun m!50950 () Bool)

(assert (=> bs!8091 m!50950))

(assert (=> bs!8091 m!50946))

(assert (=> bs!8091 m!49538))

(assert (=> bs!8091 m!49544))

(assert (=> bs!8091 m!49538))

(assert (=> bs!8091 m!50950))

(assert (=> d!13828 d!14106))

(assert (=> d!13828 d!13816))

(declare-fun b!77839 () Bool)

(declare-fun e!43528 () List!1364)

(assert (=> b!77839 (= e!43528 (list!427 (_2!880 lt!15632)))))

(declare-fun b!77840 () Bool)

(assert (=> b!77840 (= e!43528 (Cons!1358 (h!6755 (list!427 (print!28 thiss!19403 (_1!880 lt!15632)))) (++!116 (t!20143 (list!427 (print!28 thiss!19403 (_1!880 lt!15632)))) (list!427 (_2!880 lt!15632)))))))

(declare-fun b!77842 () Bool)

(declare-fun lt!16104 () List!1364)

(declare-fun e!43529 () Bool)

(assert (=> b!77842 (= e!43529 (or (not (= (list!427 (_2!880 lt!15632)) Nil!1358)) (= lt!16104 (list!427 (print!28 thiss!19403 (_1!880 lt!15632))))))))

(declare-fun b!77841 () Bool)

(declare-fun res!40642 () Bool)

(assert (=> b!77841 (=> (not res!40642) (not e!43529))))

(assert (=> b!77841 (= res!40642 (= (size!1189 lt!16104) (+ (size!1189 (list!427 (print!28 thiss!19403 (_1!880 lt!15632)))) (size!1189 (list!427 (_2!880 lt!15632))))))))

(declare-fun d!14138 () Bool)

(assert (=> d!14138 e!43529))

(declare-fun res!40643 () Bool)

(assert (=> d!14138 (=> (not res!40643) (not e!43529))))

(assert (=> d!14138 (= res!40643 (= (content!63 lt!16104) ((_ map or) (content!63 (list!427 (print!28 thiss!19403 (_1!880 lt!15632)))) (content!63 (list!427 (_2!880 lt!15632))))))))

(assert (=> d!14138 (= lt!16104 e!43528)))

(declare-fun c!19942 () Bool)

(assert (=> d!14138 (= c!19942 ((_ is Nil!1358) (list!427 (print!28 thiss!19403 (_1!880 lt!15632)))))))

(assert (=> d!14138 (= (++!116 (list!427 (print!28 thiss!19403 (_1!880 lt!15632))) (list!427 (_2!880 lt!15632))) lt!16104)))

(assert (= (and d!14138 c!19942) b!77839))

(assert (= (and d!14138 (not c!19942)) b!77840))

(assert (= (and d!14138 res!40643) b!77841))

(assert (= (and b!77841 res!40642) b!77842))

(assert (=> b!77840 m!49832))

(declare-fun m!50952 () Bool)

(assert (=> b!77840 m!50952))

(declare-fun m!50954 () Bool)

(assert (=> b!77841 m!50954))

(assert (=> b!77841 m!49836))

(declare-fun m!50956 () Bool)

(assert (=> b!77841 m!50956))

(assert (=> b!77841 m!49832))

(declare-fun m!50958 () Bool)

(assert (=> b!77841 m!50958))

(declare-fun m!50960 () Bool)

(assert (=> d!14138 m!50960))

(assert (=> d!14138 m!49836))

(declare-fun m!50962 () Bool)

(assert (=> d!14138 m!50962))

(assert (=> d!14138 m!49832))

(declare-fun m!50964 () Bool)

(assert (=> d!14138 m!50964))

(assert (=> d!13828 d!14138))

(declare-fun d!14140 () Bool)

(assert (=> d!14140 true))

(declare-fun lambda!1431 () Int)

(declare-fun order!523 () Int)

(declare-fun dynLambda!323 (Int Int) Int)

(assert (=> d!14140 (< (dynLambda!322 order!517 (toValue!804 (transformation!297 (h!6757 rules!2471)))) (dynLambda!323 order!523 lambda!1431))))

(declare-fun Forall2!27 (Int) Bool)

(assert (=> d!14140 (= (equivClasses!45 (toChars!663 (transformation!297 (h!6757 rules!2471))) (toValue!804 (transformation!297 (h!6757 rules!2471)))) (Forall2!27 lambda!1431))))

(declare-fun bs!8092 () Bool)

(assert (= bs!8092 d!14140))

(declare-fun m!50966 () Bool)

(assert (=> bs!8092 m!50966))

(assert (=> b!77302 d!14140))

(declare-fun d!14142 () Bool)

(declare-fun c!19943 () Bool)

(assert (=> d!14142 (= c!19943 ((_ is Empty!396) (c!19784 (_2!880 lt!15541))))))

(declare-fun e!43532 () List!1364)

(assert (=> d!14142 (= (list!430 (c!19784 (_2!880 lt!15541))) e!43532)))

(declare-fun b!77847 () Bool)

(assert (=> b!77847 (= e!43532 Nil!1358)))

(declare-fun b!77850 () Bool)

(declare-fun e!43533 () List!1364)

(assert (=> b!77850 (= e!43533 (++!116 (list!430 (left!1029 (c!19784 (_2!880 lt!15541)))) (list!430 (right!1359 (c!19784 (_2!880 lt!15541))))))))

(declare-fun b!77849 () Bool)

(assert (=> b!77849 (= e!43533 (list!435 (xs!2975 (c!19784 (_2!880 lt!15541)))))))

(declare-fun b!77848 () Bool)

(assert (=> b!77848 (= e!43532 e!43533)))

(declare-fun c!19944 () Bool)

(assert (=> b!77848 (= c!19944 ((_ is Leaf!680) (c!19784 (_2!880 lt!15541))))))

(assert (= (and d!14142 c!19943) b!77847))

(assert (= (and d!14142 (not c!19943)) b!77848))

(assert (= (and b!77848 c!19944) b!77849))

(assert (= (and b!77848 (not c!19944)) b!77850))

(declare-fun m!50968 () Bool)

(assert (=> b!77850 m!50968))

(declare-fun m!50970 () Bool)

(assert (=> b!77850 m!50970))

(assert (=> b!77850 m!50968))

(assert (=> b!77850 m!50970))

(declare-fun m!50972 () Bool)

(assert (=> b!77850 m!50972))

(declare-fun m!50974 () Bool)

(assert (=> b!77849 m!50974))

(assert (=> d!13830 d!14142))

(declare-fun d!14144 () Bool)

(declare-fun lt!16105 () Bool)

(assert (=> d!14144 (= lt!16105 (isEmpty!422 (list!426 (_1!880 lt!15636))))))

(assert (=> d!14144 (= lt!16105 (isEmpty!423 (c!19786 (_1!880 lt!15636))))))

(assert (=> d!14144 (= (isEmpty!417 (_1!880 lt!15636)) lt!16105)))

(declare-fun bs!8093 () Bool)

(assert (= bs!8093 d!14144))

(assert (=> bs!8093 m!49864))

(assert (=> bs!8093 m!49864))

(declare-fun m!50976 () Bool)

(assert (=> bs!8093 m!50976))

(declare-fun m!50978 () Bool)

(assert (=> bs!8093 m!50978))

(assert (=> b!77293 d!14144))

(declare-fun d!14146 () Bool)

(declare-fun res!40650 () Bool)

(declare-fun e!43538 () Bool)

(assert (=> d!14146 (=> res!40650 e!43538)))

(assert (=> d!14146 (= res!40650 ((_ is Nil!1360) rules!2471))))

(assert (=> d!14146 (= (noDuplicateTag!57 thiss!19403 rules!2471 Nil!1363) e!43538)))

(declare-fun b!77855 () Bool)

(declare-fun e!43539 () Bool)

(assert (=> b!77855 (= e!43538 e!43539)))

(declare-fun res!40651 () Bool)

(assert (=> b!77855 (=> (not res!40651) (not e!43539))))

(declare-fun contains!202 (List!1369 String!1826) Bool)

(assert (=> b!77855 (= res!40651 (not (contains!202 Nil!1363 (tag!475 (h!6757 rules!2471)))))))

(declare-fun b!77856 () Bool)

(assert (=> b!77856 (= e!43539 (noDuplicateTag!57 thiss!19403 (t!20145 rules!2471) (Cons!1363 (tag!475 (h!6757 rules!2471)) Nil!1363)))))

(assert (= (and d!14146 (not res!40650)) b!77855))

(assert (= (and b!77855 res!40651) b!77856))

(declare-fun m!50980 () Bool)

(assert (=> b!77855 m!50980))

(declare-fun m!50982 () Bool)

(assert (=> b!77856 m!50982))

(assert (=> b!77299 d!14146))

(declare-fun d!14148 () Bool)

(assert (=> d!14148 (= (isEmpty!418 (list!427 (_2!880 lt!15541))) ((_ is Nil!1358) (list!427 (_2!880 lt!15541))))))

(assert (=> d!13844 d!14148))

(assert (=> d!13844 d!13830))

(declare-fun d!14150 () Bool)

(declare-fun lt!16108 () Bool)

(assert (=> d!14150 (= lt!16108 (isEmpty!418 (list!430 (c!19784 (_2!880 lt!15541)))))))

(assert (=> d!14150 (= lt!16108 (= (size!1197 (c!19784 (_2!880 lt!15541))) 0))))

(assert (=> d!14150 (= (isEmpty!419 (c!19784 (_2!880 lt!15541))) lt!16108)))

(declare-fun bs!8094 () Bool)

(assert (= bs!8094 d!14150))

(assert (=> bs!8094 m!49842))

(assert (=> bs!8094 m!49842))

(declare-fun m!50984 () Bool)

(assert (=> bs!8094 m!50984))

(declare-fun m!50986 () Bool)

(assert (=> bs!8094 m!50986))

(assert (=> d!13844 d!14150))

(declare-fun b!77858 () Bool)

(declare-fun e!43540 () List!1367)

(declare-fun e!43541 () List!1367)

(assert (=> b!77858 (= e!43540 e!43541)))

(declare-fun c!19946 () Bool)

(assert (=> b!77858 (= c!19946 ((_ is Leaf!681) (c!19786 (prepend!48 (seqFromList!107 (t!20146 lt!15533)) (h!6758 lt!15533)))))))

(declare-fun b!77859 () Bool)

(assert (=> b!77859 (= e!43541 (list!434 (xs!2976 (c!19786 (prepend!48 (seqFromList!107 (t!20146 lt!15533)) (h!6758 lt!15533))))))))

(declare-fun d!14152 () Bool)

(declare-fun c!19945 () Bool)

(assert (=> d!14152 (= c!19945 ((_ is Empty!397) (c!19786 (prepend!48 (seqFromList!107 (t!20146 lt!15533)) (h!6758 lt!15533)))))))

(assert (=> d!14152 (= (list!431 (c!19786 (prepend!48 (seqFromList!107 (t!20146 lt!15533)) (h!6758 lt!15533)))) e!43540)))

(declare-fun b!77860 () Bool)

(assert (=> b!77860 (= e!43541 (++!120 (list!431 (left!1030 (c!19786 (prepend!48 (seqFromList!107 (t!20146 lt!15533)) (h!6758 lt!15533))))) (list!431 (right!1360 (c!19786 (prepend!48 (seqFromList!107 (t!20146 lt!15533)) (h!6758 lt!15533)))))))))

(declare-fun b!77857 () Bool)

(assert (=> b!77857 (= e!43540 Nil!1361)))

(assert (= (and d!14152 c!19945) b!77857))

(assert (= (and d!14152 (not c!19945)) b!77858))

(assert (= (and b!77858 c!19946) b!77859))

(assert (= (and b!77858 (not c!19946)) b!77860))

(declare-fun m!50988 () Bool)

(assert (=> b!77859 m!50988))

(declare-fun m!50990 () Bool)

(assert (=> b!77860 m!50990))

(declare-fun m!50992 () Bool)

(assert (=> b!77860 m!50992))

(assert (=> b!77860 m!50990))

(assert (=> b!77860 m!50992))

(declare-fun m!50994 () Bool)

(assert (=> b!77860 m!50994))

(assert (=> d!13812 d!14152))

(declare-fun d!14154 () Bool)

(declare-fun lt!16109 () Int)

(assert (=> d!14154 (= lt!16109 (size!1189 (list!427 (_2!880 lt!15636))))))

(assert (=> d!14154 (= lt!16109 (size!1197 (c!19784 (_2!880 lt!15636))))))

(assert (=> d!14154 (= (size!1190 (_2!880 lt!15636)) lt!16109)))

(declare-fun bs!8095 () Bool)

(assert (= bs!8095 d!14154))

(assert (=> bs!8095 m!49874))

(assert (=> bs!8095 m!49874))

(declare-fun m!50996 () Bool)

(assert (=> bs!8095 m!50996))

(declare-fun m!50998 () Bool)

(assert (=> bs!8095 m!50998))

(assert (=> b!77292 d!14154))

(declare-fun d!14156 () Bool)

(declare-fun lt!16110 () Int)

(assert (=> d!14156 (= lt!16110 (size!1189 (list!427 (seqFromList!106 input!2238))))))

(assert (=> d!14156 (= lt!16110 (size!1197 (c!19784 (seqFromList!106 input!2238))))))

(assert (=> d!14156 (= (size!1190 (seqFromList!106 input!2238)) lt!16110)))

(declare-fun bs!8096 () Bool)

(assert (= bs!8096 d!14156))

(assert (=> bs!8096 m!49550))

(assert (=> bs!8096 m!49866))

(assert (=> bs!8096 m!49866))

(assert (=> bs!8096 m!50742))

(declare-fun m!51000 () Bool)

(assert (=> bs!8096 m!51000))

(assert (=> b!77292 d!14156))

(declare-fun d!14158 () Bool)

(declare-fun e!43542 () Bool)

(assert (=> d!14158 e!43542))

(declare-fun res!40652 () Bool)

(assert (=> d!14158 (=> (not res!40652) (not e!43542))))

(declare-fun lt!16111 () BalanceConc!796)

(assert (=> d!14158 (= res!40652 (= (list!427 lt!16111) (_2!881 lt!15534)))))

(assert (=> d!14158 (= lt!16111 (BalanceConc!797 (fromList!20 (_2!881 lt!15534))))))

(assert (=> d!14158 (= (fromListB!36 (_2!881 lt!15534)) lt!16111)))

(declare-fun b!77861 () Bool)

(assert (=> b!77861 (= e!43542 (isBalanced!76 (fromList!20 (_2!881 lt!15534))))))

(assert (= (and d!14158 res!40652) b!77861))

(declare-fun m!51002 () Bool)

(assert (=> d!14158 m!51002))

(declare-fun m!51004 () Bool)

(assert (=> d!14158 m!51004))

(assert (=> b!77861 m!51004))

(assert (=> b!77861 m!51004))

(declare-fun m!51006 () Bool)

(assert (=> b!77861 m!51006))

(assert (=> d!13836 d!14158))

(declare-fun b!77874 () Bool)

(declare-fun e!43547 () Bool)

(declare-fun e!43548 () Bool)

(assert (=> b!77874 (= e!43547 e!43548)))

(declare-fun res!40668 () Bool)

(assert (=> b!77874 (=> (not res!40668) (not e!43548))))

(declare-fun height!26 (Conc!397) Int)

(assert (=> b!77874 (= res!40668 (<= (- 1) (- (height!26 (left!1030 (prepend!50 (c!19786 (seqFromList!107 (t!20146 lt!15533))) (h!6758 lt!15533)))) (height!26 (right!1360 (prepend!50 (c!19786 (seqFromList!107 (t!20146 lt!15533))) (h!6758 lt!15533)))))))))

(declare-fun b!77875 () Bool)

(declare-fun res!40670 () Bool)

(assert (=> b!77875 (=> (not res!40670) (not e!43548))))

(assert (=> b!77875 (= res!40670 (isBalanced!75 (right!1360 (prepend!50 (c!19786 (seqFromList!107 (t!20146 lt!15533))) (h!6758 lt!15533)))))))

(declare-fun b!77876 () Bool)

(assert (=> b!77876 (= e!43548 (not (isEmpty!423 (right!1360 (prepend!50 (c!19786 (seqFromList!107 (t!20146 lt!15533))) (h!6758 lt!15533))))))))

(declare-fun b!77877 () Bool)

(declare-fun res!40667 () Bool)

(assert (=> b!77877 (=> (not res!40667) (not e!43548))))

(assert (=> b!77877 (= res!40667 (not (isEmpty!423 (left!1030 (prepend!50 (c!19786 (seqFromList!107 (t!20146 lt!15533))) (h!6758 lt!15533))))))))

(declare-fun d!14160 () Bool)

(declare-fun res!40669 () Bool)

(assert (=> d!14160 (=> res!40669 e!43547)))

(assert (=> d!14160 (= res!40669 (not ((_ is Node!397) (prepend!50 (c!19786 (seqFromList!107 (t!20146 lt!15533))) (h!6758 lt!15533)))))))

(assert (=> d!14160 (= (isBalanced!75 (prepend!50 (c!19786 (seqFromList!107 (t!20146 lt!15533))) (h!6758 lt!15533))) e!43547)))

(declare-fun b!77878 () Bool)

(declare-fun res!40665 () Bool)

(assert (=> b!77878 (=> (not res!40665) (not e!43548))))

(assert (=> b!77878 (= res!40665 (<= (- (height!26 (left!1030 (prepend!50 (c!19786 (seqFromList!107 (t!20146 lt!15533))) (h!6758 lt!15533)))) (height!26 (right!1360 (prepend!50 (c!19786 (seqFromList!107 (t!20146 lt!15533))) (h!6758 lt!15533))))) 1))))

(declare-fun b!77879 () Bool)

(declare-fun res!40666 () Bool)

(assert (=> b!77879 (=> (not res!40666) (not e!43548))))

(assert (=> b!77879 (= res!40666 (isBalanced!75 (left!1030 (prepend!50 (c!19786 (seqFromList!107 (t!20146 lt!15533))) (h!6758 lt!15533)))))))

(assert (= (and d!14160 (not res!40669)) b!77874))

(assert (= (and b!77874 res!40668) b!77878))

(assert (= (and b!77878 res!40665) b!77879))

(assert (= (and b!77879 res!40666) b!77875))

(assert (= (and b!77875 res!40670) b!77877))

(assert (= (and b!77877 res!40667) b!77876))

(declare-fun m!51008 () Bool)

(assert (=> b!77877 m!51008))

(declare-fun m!51010 () Bool)

(assert (=> b!77874 m!51010))

(declare-fun m!51012 () Bool)

(assert (=> b!77874 m!51012))

(declare-fun m!51014 () Bool)

(assert (=> b!77879 m!51014))

(declare-fun m!51016 () Bool)

(assert (=> b!77876 m!51016))

(declare-fun m!51018 () Bool)

(assert (=> b!77875 m!51018))

(assert (=> b!77878 m!51010))

(assert (=> b!77878 m!51012))

(assert (=> d!13782 d!14160))

(declare-fun d!14162 () Bool)

(declare-fun e!43551 () Bool)

(assert (=> d!14162 e!43551))

(declare-fun res!40673 () Bool)

(assert (=> d!14162 (=> (not res!40673) (not e!43551))))

(declare-fun lt!16114 () Conc!397)

(assert (=> d!14162 (= res!40673 (isBalanced!75 lt!16114))))

(declare-fun ++!122 (Conc!397 Conc!397) Conc!397)

(declare-fun fill!11 (Int Token!354) IArray!795)

(assert (=> d!14162 (= lt!16114 (++!122 (Leaf!681 (fill!11 1 (h!6758 lt!15533)) 1) (c!19786 (seqFromList!107 (t!20146 lt!15533)))))))

(assert (=> d!14162 (isBalanced!75 (c!19786 (seqFromList!107 (t!20146 lt!15533))))))

(assert (=> d!14162 (= (prepend!50 (c!19786 (seqFromList!107 (t!20146 lt!15533))) (h!6758 lt!15533)) lt!16114)))

(declare-fun b!77882 () Bool)

(assert (=> b!77882 (= e!43551 (= (list!431 lt!16114) (Cons!1361 (h!6758 lt!15533) (list!431 (c!19786 (seqFromList!107 (t!20146 lt!15533)))))))))

(assert (= (and d!14162 res!40673) b!77882))

(declare-fun m!51020 () Bool)

(assert (=> d!14162 m!51020))

(declare-fun m!51022 () Bool)

(assert (=> d!14162 m!51022))

(declare-fun m!51024 () Bool)

(assert (=> d!14162 m!51024))

(declare-fun m!51026 () Bool)

(assert (=> d!14162 m!51026))

(declare-fun m!51028 () Bool)

(assert (=> b!77882 m!51028))

(declare-fun m!51030 () Bool)

(assert (=> b!77882 m!51030))

(assert (=> d!13782 d!14162))

(declare-fun bm!3662 () Bool)

(declare-fun call!3667 () Bool)

(assert (=> bm!3662 (= call!3667 (isEmpty!418 (list!427 (charsOf!34 (_1!881 (get!334 lt!15584))))))))

(declare-fun b!77911 () Bool)

(declare-fun res!40690 () Bool)

(declare-fun e!43568 () Bool)

(assert (=> b!77911 (=> (not res!40690) (not e!43568))))

(assert (=> b!77911 (= res!40690 (not call!3667))))

(declare-fun b!77912 () Bool)

(declare-fun res!40693 () Bool)

(assert (=> b!77912 (=> (not res!40693) (not e!43568))))

(assert (=> b!77912 (= res!40693 (isEmpty!418 (tail!106 (list!427 (charsOf!34 (_1!881 (get!334 lt!15584)))))))))

(declare-fun b!77913 () Bool)

(declare-fun e!43570 () Bool)

(declare-fun lt!16117 () Bool)

(assert (=> b!77913 (= e!43570 (= lt!16117 call!3667))))

(declare-fun b!77914 () Bool)

(declare-fun e!43567 () Bool)

(assert (=> b!77914 (= e!43567 (not lt!16117))))

(declare-fun b!77915 () Bool)

(assert (=> b!77915 (= e!43570 e!43567)))

(declare-fun c!19953 () Bool)

(assert (=> b!77915 (= c!19953 ((_ is EmptyLang!365) (regex!297 (rule!774 (_1!881 (get!334 lt!15584))))))))

(declare-fun b!77916 () Bool)

(declare-fun res!40695 () Bool)

(declare-fun e!43566 () Bool)

(assert (=> b!77916 (=> res!40695 e!43566)))

(assert (=> b!77916 (= res!40695 e!43568)))

(declare-fun res!40697 () Bool)

(assert (=> b!77916 (=> (not res!40697) (not e!43568))))

(assert (=> b!77916 (= res!40697 lt!16117)))

(declare-fun d!14164 () Bool)

(assert (=> d!14164 e!43570))

(declare-fun c!19955 () Bool)

(assert (=> d!14164 (= c!19955 ((_ is EmptyExpr!365) (regex!297 (rule!774 (_1!881 (get!334 lt!15584))))))))

(declare-fun e!43571 () Bool)

(assert (=> d!14164 (= lt!16117 e!43571)))

(declare-fun c!19954 () Bool)

(assert (=> d!14164 (= c!19954 (isEmpty!418 (list!427 (charsOf!34 (_1!881 (get!334 lt!15584))))))))

(declare-fun validRegex!37 (Regex!365) Bool)

(assert (=> d!14164 (validRegex!37 (regex!297 (rule!774 (_1!881 (get!334 lt!15584)))))))

(assert (=> d!14164 (= (matchR!15 (regex!297 (rule!774 (_1!881 (get!334 lt!15584)))) (list!427 (charsOf!34 (_1!881 (get!334 lt!15584))))) lt!16117)))

(declare-fun b!77917 () Bool)

(declare-fun e!43572 () Bool)

(assert (=> b!77917 (= e!43566 e!43572)))

(declare-fun res!40696 () Bool)

(assert (=> b!77917 (=> (not res!40696) (not e!43572))))

(assert (=> b!77917 (= res!40696 (not lt!16117))))

(declare-fun b!77918 () Bool)

(declare-fun e!43569 () Bool)

(assert (=> b!77918 (= e!43569 (not (= (head!415 (list!427 (charsOf!34 (_1!881 (get!334 lt!15584))))) (c!19785 (regex!297 (rule!774 (_1!881 (get!334 lt!15584))))))))))

(declare-fun b!77919 () Bool)

(assert (=> b!77919 (= e!43568 (= (head!415 (list!427 (charsOf!34 (_1!881 (get!334 lt!15584))))) (c!19785 (regex!297 (rule!774 (_1!881 (get!334 lt!15584)))))))))

(declare-fun b!77920 () Bool)

(declare-fun nullable!30 (Regex!365) Bool)

(assert (=> b!77920 (= e!43571 (nullable!30 (regex!297 (rule!774 (_1!881 (get!334 lt!15584))))))))

(declare-fun b!77921 () Bool)

(declare-fun res!40692 () Bool)

(assert (=> b!77921 (=> res!40692 e!43566)))

(assert (=> b!77921 (= res!40692 (not ((_ is ElementMatch!365) (regex!297 (rule!774 (_1!881 (get!334 lt!15584)))))))))

(assert (=> b!77921 (= e!43567 e!43566)))

(declare-fun b!77922 () Bool)

(declare-fun derivativeStep!12 (Regex!365 C!1652) Regex!365)

(assert (=> b!77922 (= e!43571 (matchR!15 (derivativeStep!12 (regex!297 (rule!774 (_1!881 (get!334 lt!15584)))) (head!415 (list!427 (charsOf!34 (_1!881 (get!334 lt!15584)))))) (tail!106 (list!427 (charsOf!34 (_1!881 (get!334 lt!15584)))))))))

(declare-fun b!77923 () Bool)

(declare-fun res!40694 () Bool)

(assert (=> b!77923 (=> res!40694 e!43569)))

(assert (=> b!77923 (= res!40694 (not (isEmpty!418 (tail!106 (list!427 (charsOf!34 (_1!881 (get!334 lt!15584))))))))))

(declare-fun b!77924 () Bool)

(assert (=> b!77924 (= e!43572 e!43569)))

(declare-fun res!40691 () Bool)

(assert (=> b!77924 (=> res!40691 e!43569)))

(assert (=> b!77924 (= res!40691 call!3667)))

(assert (= (and d!14164 c!19954) b!77920))

(assert (= (and d!14164 (not c!19954)) b!77922))

(assert (= (and d!14164 c!19955) b!77913))

(assert (= (and d!14164 (not c!19955)) b!77915))

(assert (= (and b!77915 c!19953) b!77914))

(assert (= (and b!77915 (not c!19953)) b!77921))

(assert (= (and b!77921 (not res!40692)) b!77916))

(assert (= (and b!77916 res!40697) b!77911))

(assert (= (and b!77911 res!40690) b!77912))

(assert (= (and b!77912 res!40693) b!77919))

(assert (= (and b!77916 (not res!40695)) b!77917))

(assert (= (and b!77917 res!40696) b!77924))

(assert (= (and b!77924 (not res!40691)) b!77923))

(assert (= (and b!77923 (not res!40694)) b!77918))

(assert (= (or b!77913 b!77911 b!77924) bm!3662))

(assert (=> b!77923 m!49668))

(declare-fun m!51032 () Bool)

(assert (=> b!77923 m!51032))

(assert (=> b!77923 m!51032))

(declare-fun m!51034 () Bool)

(assert (=> b!77923 m!51034))

(assert (=> d!14164 m!49668))

(declare-fun m!51036 () Bool)

(assert (=> d!14164 m!51036))

(declare-fun m!51038 () Bool)

(assert (=> d!14164 m!51038))

(assert (=> bm!3662 m!49668))

(assert (=> bm!3662 m!51036))

(assert (=> b!77919 m!49668))

(declare-fun m!51040 () Bool)

(assert (=> b!77919 m!51040))

(assert (=> b!77918 m!49668))

(assert (=> b!77918 m!51040))

(declare-fun m!51042 () Bool)

(assert (=> b!77920 m!51042))

(assert (=> b!77922 m!49668))

(assert (=> b!77922 m!51040))

(assert (=> b!77922 m!51040))

(declare-fun m!51044 () Bool)

(assert (=> b!77922 m!51044))

(assert (=> b!77922 m!49668))

(assert (=> b!77922 m!51032))

(assert (=> b!77922 m!51044))

(assert (=> b!77922 m!51032))

(declare-fun m!51046 () Bool)

(assert (=> b!77922 m!51046))

(assert (=> b!77912 m!49668))

(assert (=> b!77912 m!51032))

(assert (=> b!77912 m!51032))

(assert (=> b!77912 m!51034))

(assert (=> b!77220 d!14164))

(assert (=> b!77220 d!13948))

(assert (=> b!77220 d!13944))

(assert (=> b!77220 d!13946))

(declare-fun d!14166 () Bool)

(declare-fun lt!16120 () Bool)

(declare-fun content!65 (List!1366) (InoxSet Rule!394))

(assert (=> d!14166 (= lt!16120 (select (content!65 rules!2471) (rule!774 (_1!881 (get!334 lt!15584)))))))

(declare-fun e!43577 () Bool)

(assert (=> d!14166 (= lt!16120 e!43577)))

(declare-fun res!40702 () Bool)

(assert (=> d!14166 (=> (not res!40702) (not e!43577))))

(assert (=> d!14166 (= res!40702 ((_ is Cons!1360) rules!2471))))

(assert (=> d!14166 (= (contains!201 rules!2471 (rule!774 (_1!881 (get!334 lt!15584)))) lt!16120)))

(declare-fun b!77929 () Bool)

(declare-fun e!43578 () Bool)

(assert (=> b!77929 (= e!43577 e!43578)))

(declare-fun res!40703 () Bool)

(assert (=> b!77929 (=> res!40703 e!43578)))

(assert (=> b!77929 (= res!40703 (= (h!6757 rules!2471) (rule!774 (_1!881 (get!334 lt!15584)))))))

(declare-fun b!77930 () Bool)

(assert (=> b!77930 (= e!43578 (contains!201 (t!20145 rules!2471) (rule!774 (_1!881 (get!334 lt!15584)))))))

(assert (= (and d!14166 res!40702) b!77929))

(assert (= (and b!77929 (not res!40703)) b!77930))

(declare-fun m!51048 () Bool)

(assert (=> d!14166 m!51048))

(declare-fun m!51050 () Bool)

(assert (=> d!14166 m!51050))

(declare-fun m!51052 () Bool)

(assert (=> b!77930 m!51052))

(assert (=> b!77218 d!14166))

(assert (=> b!77218 d!13948))

(assert (=> b!77219 d!13948))

(declare-fun d!14168 () Bool)

(declare-fun dynLambda!324 (Int BalanceConc!796) TokenValue!287)

(assert (=> d!14168 (= (apply!179 (transformation!297 (rule!774 (_1!881 (get!334 lt!15584)))) (seqFromList!106 (originalCharacters!348 (_1!881 (get!334 lt!15584))))) (dynLambda!324 (toValue!804 (transformation!297 (rule!774 (_1!881 (get!334 lt!15584))))) (seqFromList!106 (originalCharacters!348 (_1!881 (get!334 lt!15584))))))))

(declare-fun b_lambda!879 () Bool)

(assert (=> (not b_lambda!879) (not d!14168)))

(declare-fun t!20178 () Bool)

(declare-fun tb!2395 () Bool)

(assert (=> (and b!77133 (= (toValue!804 (transformation!297 (h!6757 rules!2471))) (toValue!804 (transformation!297 (rule!774 (_1!881 (get!334 lt!15584)))))) t!20178) tb!2395))

(declare-fun result!3426 () Bool)

(declare-fun inv!21 (TokenValue!287) Bool)

(assert (=> tb!2395 (= result!3426 (inv!21 (dynLambda!324 (toValue!804 (transformation!297 (rule!774 (_1!881 (get!334 lt!15584))))) (seqFromList!106 (originalCharacters!348 (_1!881 (get!334 lt!15584)))))))))

(declare-fun m!51054 () Bool)

(assert (=> tb!2395 m!51054))

(assert (=> d!14168 t!20178))

(declare-fun b_and!3559 () Bool)

(assert (= b_and!3531 (and (=> t!20178 result!3426) b_and!3559)))

(declare-fun tb!2397 () Bool)

(declare-fun t!20180 () Bool)

(assert (=> (and b!77313 (= (toValue!804 (transformation!297 (h!6757 (t!20145 rules!2471)))) (toValue!804 (transformation!297 (rule!774 (_1!881 (get!334 lt!15584)))))) t!20180) tb!2397))

(declare-fun result!3430 () Bool)

(assert (= result!3430 result!3426))

(assert (=> d!14168 t!20180))

(declare-fun b_and!3561 () Bool)

(assert (= b_and!3539 (and (=> t!20180 result!3430) b_and!3561)))

(assert (=> d!14168 m!49676))

(declare-fun m!51056 () Bool)

(assert (=> d!14168 m!51056))

(assert (=> b!77219 d!14168))

(declare-fun d!14170 () Bool)

(assert (=> d!14170 (= (seqFromList!106 (originalCharacters!348 (_1!881 (get!334 lt!15584)))) (fromListB!36 (originalCharacters!348 (_1!881 (get!334 lt!15584)))))))

(declare-fun bs!8097 () Bool)

(assert (= bs!8097 d!14170))

(declare-fun m!51058 () Bool)

(assert (=> bs!8097 m!51058))

(assert (=> b!77219 d!14170))

(declare-fun d!14172 () Bool)

(assert (=> d!14172 (= (list!427 lt!15626) (list!430 (c!19784 lt!15626)))))

(declare-fun bs!8098 () Bool)

(assert (= bs!8098 d!14172))

(declare-fun m!51060 () Bool)

(assert (=> bs!8098 m!51060))

(assert (=> d!13826 d!14172))

(declare-fun d!14174 () Bool)

(declare-fun c!19958 () Bool)

(assert (=> d!14174 (= c!19958 ((_ is Cons!1361) (list!426 (_1!880 lt!15543))))))

(declare-fun e!43584 () List!1364)

(assert (=> d!14174 (= (printList!10 thiss!19403 (list!426 (_1!880 lt!15543))) e!43584)))

(declare-fun b!77937 () Bool)

(assert (=> b!77937 (= e!43584 (++!116 (list!427 (charsOf!34 (h!6758 (list!426 (_1!880 lt!15543))))) (printList!10 thiss!19403 (t!20146 (list!426 (_1!880 lt!15543))))))))

(declare-fun b!77938 () Bool)

(assert (=> b!77938 (= e!43584 Nil!1358)))

(assert (= (and d!14174 c!19958) b!77937))

(assert (= (and d!14174 (not c!19958)) b!77938))

(declare-fun m!51062 () Bool)

(assert (=> b!77937 m!51062))

(assert (=> b!77937 m!51062))

(declare-fun m!51064 () Bool)

(assert (=> b!77937 m!51064))

(declare-fun m!51066 () Bool)

(assert (=> b!77937 m!51066))

(assert (=> b!77937 m!51064))

(assert (=> b!77937 m!51066))

(declare-fun m!51068 () Bool)

(assert (=> b!77937 m!51068))

(assert (=> d!13826 d!14174))

(assert (=> d!13826 d!13834))

(declare-fun d!14176 () Bool)

(declare-fun lt!16139 () BalanceConc!796)

(declare-fun printListTailRec!6 (LexerInterface!189 List!1367 List!1364) List!1364)

(declare-fun dropList!14 (BalanceConc!798 Int) List!1367)

(assert (=> d!14176 (= (list!427 lt!16139) (printListTailRec!6 thiss!19403 (dropList!14 (_1!880 lt!15543) 0) (list!427 (BalanceConc!797 Empty!396))))))

(declare-fun e!43589 () BalanceConc!796)

(assert (=> d!14176 (= lt!16139 e!43589)))

(declare-fun c!19961 () Bool)

(assert (=> d!14176 (= c!19961 (>= 0 (size!1191 (_1!880 lt!15543))))))

(declare-fun e!43590 () Bool)

(assert (=> d!14176 e!43590))

(declare-fun res!40706 () Bool)

(assert (=> d!14176 (=> (not res!40706) (not e!43590))))

(assert (=> d!14176 (= res!40706 (>= 0 0))))

(assert (=> d!14176 (= (printTailRec!10 thiss!19403 (_1!880 lt!15543) 0 (BalanceConc!797 Empty!396)) lt!16139)))

(declare-fun b!77945 () Bool)

(assert (=> b!77945 (= e!43590 (<= 0 (size!1191 (_1!880 lt!15543))))))

(declare-fun b!77946 () Bool)

(assert (=> b!77946 (= e!43589 (BalanceConc!797 Empty!396))))

(declare-fun b!77947 () Bool)

(declare-fun apply!182 (BalanceConc!798 Int) Token!354)

(assert (=> b!77947 (= e!43589 (printTailRec!10 thiss!19403 (_1!880 lt!15543) (+ 0 1) (++!121 (BalanceConc!797 Empty!396) (charsOf!34 (apply!182 (_1!880 lt!15543) 0)))))))

(declare-fun lt!16140 () List!1367)

(assert (=> b!77947 (= lt!16140 (list!426 (_1!880 lt!15543)))))

(declare-fun lt!16135 () Unit!820)

(declare-fun lemmaDropApply!70 (List!1367 Int) Unit!820)

(assert (=> b!77947 (= lt!16135 (lemmaDropApply!70 lt!16140 0))))

(declare-fun head!416 (List!1367) Token!354)

(declare-fun drop!72 (List!1367 Int) List!1367)

(declare-fun apply!183 (List!1367 Int) Token!354)

(assert (=> b!77947 (= (head!416 (drop!72 lt!16140 0)) (apply!183 lt!16140 0))))

(declare-fun lt!16138 () Unit!820)

(assert (=> b!77947 (= lt!16138 lt!16135)))

(declare-fun lt!16141 () List!1367)

(assert (=> b!77947 (= lt!16141 (list!426 (_1!880 lt!15543)))))

(declare-fun lt!16137 () Unit!820)

(declare-fun lemmaDropTail!62 (List!1367 Int) Unit!820)

(assert (=> b!77947 (= lt!16137 (lemmaDropTail!62 lt!16141 0))))

(assert (=> b!77947 (= (tail!104 (drop!72 lt!16141 0)) (drop!72 lt!16141 (+ 0 1)))))

(declare-fun lt!16136 () Unit!820)

(assert (=> b!77947 (= lt!16136 lt!16137)))

(assert (= (and d!14176 res!40706) b!77945))

(assert (= (and d!14176 c!19961) b!77946))

(assert (= (and d!14176 (not c!19961)) b!77947))

(declare-fun m!51070 () Bool)

(assert (=> d!14176 m!51070))

(declare-fun m!51072 () Bool)

(assert (=> d!14176 m!51072))

(declare-fun m!51074 () Bool)

(assert (=> d!14176 m!51074))

(assert (=> d!14176 m!50158))

(assert (=> d!14176 m!51074))

(assert (=> d!14176 m!50158))

(declare-fun m!51076 () Bool)

(assert (=> d!14176 m!51076))

(assert (=> b!77945 m!51072))

(declare-fun m!51078 () Bool)

(assert (=> b!77947 m!51078))

(declare-fun m!51080 () Bool)

(assert (=> b!77947 m!51080))

(declare-fun m!51082 () Bool)

(assert (=> b!77947 m!51082))

(declare-fun m!51084 () Bool)

(assert (=> b!77947 m!51084))

(assert (=> b!77947 m!51082))

(declare-fun m!51086 () Bool)

(assert (=> b!77947 m!51086))

(declare-fun m!51088 () Bool)

(assert (=> b!77947 m!51088))

(declare-fun m!51090 () Bool)

(assert (=> b!77947 m!51090))

(declare-fun m!51092 () Bool)

(assert (=> b!77947 m!51092))

(declare-fun m!51094 () Bool)

(assert (=> b!77947 m!51094))

(declare-fun m!51096 () Bool)

(assert (=> b!77947 m!51096))

(declare-fun m!51098 () Bool)

(assert (=> b!77947 m!51098))

(assert (=> b!77947 m!51092))

(assert (=> b!77947 m!51078))

(declare-fun m!51100 () Bool)

(assert (=> b!77947 m!51100))

(assert (=> b!77947 m!49540))

(assert (=> b!77947 m!51086))

(assert (=> b!77947 m!51098))

(assert (=> d!13826 d!14176))

(declare-fun d!14178 () Bool)

(assert (=> d!14178 (= (list!426 lt!15589) (list!431 (c!19786 lt!15589)))))

(declare-fun bs!8099 () Bool)

(assert (= bs!8099 d!14178))

(declare-fun m!51102 () Bool)

(assert (=> bs!8099 m!51102))

(assert (=> b!77223 d!14178))

(declare-fun d!14180 () Bool)

(assert (=> d!14180 (= (list!426 (seqFromList!107 (t!20146 lt!15533))) (list!431 (c!19786 (seqFromList!107 (t!20146 lt!15533)))))))

(declare-fun bs!8100 () Bool)

(assert (= bs!8100 d!14180))

(assert (=> bs!8100 m!51030))

(assert (=> b!77223 d!14180))

(declare-fun b!77948 () Bool)

(declare-fun res!40708 () Bool)

(declare-fun e!43592 () Bool)

(assert (=> b!77948 (=> (not res!40708) (not e!43592))))

(declare-fun lt!16144 () Option!100)

(assert (=> b!77948 (= res!40708 (< (size!1189 (_2!881 (get!334 lt!16144))) (size!1189 input!2238)))))

(declare-fun b!77949 () Bool)

(declare-fun e!43591 () Option!100)

(declare-fun call!3668 () Option!100)

(assert (=> b!77949 (= e!43591 call!3668)))

(declare-fun b!77950 () Bool)

(declare-fun res!40710 () Bool)

(assert (=> b!77950 (=> (not res!40710) (not e!43592))))

(assert (=> b!77950 (= res!40710 (= (++!116 (list!427 (charsOf!34 (_1!881 (get!334 lt!16144)))) (_2!881 (get!334 lt!16144))) input!2238))))

(declare-fun bm!3663 () Bool)

(assert (=> bm!3663 (= call!3668 (maxPrefixOneRule!11 thiss!19403 (h!6757 (t!20145 rules!2471)) input!2238))))

(declare-fun b!77952 () Bool)

(declare-fun e!43593 () Bool)

(assert (=> b!77952 (= e!43593 e!43592)))

(declare-fun res!40711 () Bool)

(assert (=> b!77952 (=> (not res!40711) (not e!43592))))

(assert (=> b!77952 (= res!40711 (isDefined!23 lt!16144))))

(declare-fun b!77953 () Bool)

(declare-fun lt!16145 () Option!100)

(declare-fun lt!16143 () Option!100)

(assert (=> b!77953 (= e!43591 (ite (and ((_ is None!99) lt!16145) ((_ is None!99) lt!16143)) None!99 (ite ((_ is None!99) lt!16143) lt!16145 (ite ((_ is None!99) lt!16145) lt!16143 (ite (>= (size!1185 (_1!881 (v!12754 lt!16145))) (size!1185 (_1!881 (v!12754 lt!16143)))) lt!16145 lt!16143)))))))

(assert (=> b!77953 (= lt!16145 call!3668)))

(assert (=> b!77953 (= lt!16143 (maxPrefix!33 thiss!19403 (t!20145 (t!20145 rules!2471)) input!2238))))

(declare-fun b!77954 () Bool)

(assert (=> b!77954 (= e!43592 (contains!201 (t!20145 rules!2471) (rule!774 (_1!881 (get!334 lt!16144)))))))

(declare-fun b!77955 () Bool)

(declare-fun res!40709 () Bool)

(assert (=> b!77955 (=> (not res!40709) (not e!43592))))

(assert (=> b!77955 (= res!40709 (= (value!11360 (_1!881 (get!334 lt!16144))) (apply!179 (transformation!297 (rule!774 (_1!881 (get!334 lt!16144)))) (seqFromList!106 (originalCharacters!348 (_1!881 (get!334 lt!16144)))))))))

(declare-fun b!77956 () Bool)

(declare-fun res!40713 () Bool)

(assert (=> b!77956 (=> (not res!40713) (not e!43592))))

(assert (=> b!77956 (= res!40713 (matchR!15 (regex!297 (rule!774 (_1!881 (get!334 lt!16144)))) (list!427 (charsOf!34 (_1!881 (get!334 lt!16144))))))))

(declare-fun b!77951 () Bool)

(declare-fun res!40707 () Bool)

(assert (=> b!77951 (=> (not res!40707) (not e!43592))))

(assert (=> b!77951 (= res!40707 (= (list!427 (charsOf!34 (_1!881 (get!334 lt!16144)))) (originalCharacters!348 (_1!881 (get!334 lt!16144)))))))

(declare-fun d!14182 () Bool)

(assert (=> d!14182 e!43593))

(declare-fun res!40712 () Bool)

(assert (=> d!14182 (=> res!40712 e!43593)))

(assert (=> d!14182 (= res!40712 (isEmpty!416 lt!16144))))

(assert (=> d!14182 (= lt!16144 e!43591)))

(declare-fun c!19962 () Bool)

(assert (=> d!14182 (= c!19962 (and ((_ is Cons!1360) (t!20145 rules!2471)) ((_ is Nil!1360) (t!20145 (t!20145 rules!2471)))))))

(declare-fun lt!16146 () Unit!820)

(declare-fun lt!16142 () Unit!820)

(assert (=> d!14182 (= lt!16146 lt!16142)))

(assert (=> d!14182 (isPrefix!14 input!2238 input!2238)))

(assert (=> d!14182 (= lt!16142 (lemmaIsPrefixRefl!14 input!2238 input!2238))))

(assert (=> d!14182 (rulesValidInductive!32 thiss!19403 (t!20145 rules!2471))))

(assert (=> d!14182 (= (maxPrefix!33 thiss!19403 (t!20145 rules!2471) input!2238) lt!16144)))

(assert (= (and d!14182 c!19962) b!77949))

(assert (= (and d!14182 (not c!19962)) b!77953))

(assert (= (or b!77949 b!77953) bm!3663))

(assert (= (and d!14182 (not res!40712)) b!77952))

(assert (= (and b!77952 res!40711) b!77951))

(assert (= (and b!77951 res!40707) b!77948))

(assert (= (and b!77948 res!40708) b!77950))

(assert (= (and b!77950 res!40710) b!77955))

(assert (= (and b!77955 res!40709) b!77956))

(assert (= (and b!77956 res!40713) b!77954))

(declare-fun m!51104 () Bool)

(assert (=> d!14182 m!51104))

(assert (=> d!14182 m!49654))

(assert (=> d!14182 m!49656))

(assert (=> d!14182 m!50434))

(declare-fun m!51106 () Bool)

(assert (=> b!77948 m!51106))

(declare-fun m!51108 () Bool)

(assert (=> b!77948 m!51108))

(assert (=> b!77948 m!49664))

(assert (=> b!77956 m!51106))

(declare-fun m!51110 () Bool)

(assert (=> b!77956 m!51110))

(assert (=> b!77956 m!51110))

(declare-fun m!51112 () Bool)

(assert (=> b!77956 m!51112))

(assert (=> b!77956 m!51112))

(declare-fun m!51114 () Bool)

(assert (=> b!77956 m!51114))

(declare-fun m!51116 () Bool)

(assert (=> b!77953 m!51116))

(declare-fun m!51118 () Bool)

(assert (=> bm!3663 m!51118))

(assert (=> b!77955 m!51106))

(declare-fun m!51120 () Bool)

(assert (=> b!77955 m!51120))

(assert (=> b!77955 m!51120))

(declare-fun m!51122 () Bool)

(assert (=> b!77955 m!51122))

(assert (=> b!77954 m!51106))

(declare-fun m!51124 () Bool)

(assert (=> b!77954 m!51124))

(declare-fun m!51126 () Bool)

(assert (=> b!77952 m!51126))

(assert (=> b!77950 m!51106))

(assert (=> b!77950 m!51110))

(assert (=> b!77950 m!51110))

(assert (=> b!77950 m!51112))

(assert (=> b!77950 m!51112))

(declare-fun m!51128 () Bool)

(assert (=> b!77950 m!51128))

(assert (=> b!77951 m!51106))

(assert (=> b!77951 m!51110))

(assert (=> b!77951 m!51110))

(assert (=> b!77951 m!51112))

(assert (=> b!77217 d!14182))

(declare-fun b!77959 () Bool)

(declare-fun e!43594 () Bool)

(declare-fun tp!49869 () Bool)

(assert (=> b!77959 (= e!43594 tp!49869)))

(declare-fun b!77958 () Bool)

(declare-fun tp!49867 () Bool)

(declare-fun tp!49870 () Bool)

(assert (=> b!77958 (= e!43594 (and tp!49867 tp!49870))))

(declare-fun b!77957 () Bool)

(assert (=> b!77957 (= e!43594 tp_is_empty!653)))

(assert (=> b!77331 (= tp!49823 e!43594)))

(declare-fun b!77960 () Bool)

(declare-fun tp!49868 () Bool)

(declare-fun tp!49866 () Bool)

(assert (=> b!77960 (= e!43594 (and tp!49868 tp!49866))))

(assert (= (and b!77331 ((_ is ElementMatch!365) (reg!694 (regex!297 (h!6757 rules!2471))))) b!77957))

(assert (= (and b!77331 ((_ is Concat!652) (reg!694 (regex!297 (h!6757 rules!2471))))) b!77958))

(assert (= (and b!77331 ((_ is Star!365) (reg!694 (regex!297 (h!6757 rules!2471))))) b!77959))

(assert (= (and b!77331 ((_ is Union!365) (reg!694 (regex!297 (h!6757 rules!2471))))) b!77960))

(declare-fun b!77963 () Bool)

(declare-fun e!43595 () Bool)

(declare-fun tp!49874 () Bool)

(assert (=> b!77963 (= e!43595 tp!49874)))

(declare-fun b!77962 () Bool)

(declare-fun tp!49872 () Bool)

(declare-fun tp!49875 () Bool)

(assert (=> b!77962 (= e!43595 (and tp!49872 tp!49875))))

(declare-fun b!77961 () Bool)

(assert (=> b!77961 (= e!43595 tp_is_empty!653)))

(assert (=> b!77330 (= tp!49821 e!43595)))

(declare-fun b!77964 () Bool)

(declare-fun tp!49873 () Bool)

(declare-fun tp!49871 () Bool)

(assert (=> b!77964 (= e!43595 (and tp!49873 tp!49871))))

(assert (= (and b!77330 ((_ is ElementMatch!365) (regOne!1242 (regex!297 (h!6757 rules!2471))))) b!77961))

(assert (= (and b!77330 ((_ is Concat!652) (regOne!1242 (regex!297 (h!6757 rules!2471))))) b!77962))

(assert (= (and b!77330 ((_ is Star!365) (regOne!1242 (regex!297 (h!6757 rules!2471))))) b!77963))

(assert (= (and b!77330 ((_ is Union!365) (regOne!1242 (regex!297 (h!6757 rules!2471))))) b!77964))

(declare-fun b!77967 () Bool)

(declare-fun e!43596 () Bool)

(declare-fun tp!49879 () Bool)

(assert (=> b!77967 (= e!43596 tp!49879)))

(declare-fun b!77966 () Bool)

(declare-fun tp!49877 () Bool)

(declare-fun tp!49880 () Bool)

(assert (=> b!77966 (= e!43596 (and tp!49877 tp!49880))))

(declare-fun b!77965 () Bool)

(assert (=> b!77965 (= e!43596 tp_is_empty!653)))

(assert (=> b!77330 (= tp!49824 e!43596)))

(declare-fun b!77968 () Bool)

(declare-fun tp!49878 () Bool)

(declare-fun tp!49876 () Bool)

(assert (=> b!77968 (= e!43596 (and tp!49878 tp!49876))))

(assert (= (and b!77330 ((_ is ElementMatch!365) (regTwo!1242 (regex!297 (h!6757 rules!2471))))) b!77965))

(assert (= (and b!77330 ((_ is Concat!652) (regTwo!1242 (regex!297 (h!6757 rules!2471))))) b!77966))

(assert (= (and b!77330 ((_ is Star!365) (regTwo!1242 (regex!297 (h!6757 rules!2471))))) b!77967))

(assert (= (and b!77330 ((_ is Union!365) (regTwo!1242 (regex!297 (h!6757 rules!2471))))) b!77968))

(declare-fun b!77969 () Bool)

(declare-fun e!43597 () Bool)

(declare-fun tp!49881 () Bool)

(assert (=> b!77969 (= e!43597 (and tp_is_empty!653 tp!49881))))

(assert (=> b!77318 (= tp!49809 e!43597)))

(assert (= (and b!77318 ((_ is Cons!1358) (t!20143 (t!20143 input!2238)))) b!77969))

(declare-fun b!77972 () Bool)

(declare-fun e!43598 () Bool)

(declare-fun tp!49885 () Bool)

(assert (=> b!77972 (= e!43598 tp!49885)))

(declare-fun b!77971 () Bool)

(declare-fun tp!49883 () Bool)

(declare-fun tp!49886 () Bool)

(assert (=> b!77971 (= e!43598 (and tp!49883 tp!49886))))

(declare-fun b!77970 () Bool)

(assert (=> b!77970 (= e!43598 tp_is_empty!653)))

(assert (=> b!77312 (= tp!49803 e!43598)))

(declare-fun b!77973 () Bool)

(declare-fun tp!49884 () Bool)

(declare-fun tp!49882 () Bool)

(assert (=> b!77973 (= e!43598 (and tp!49884 tp!49882))))

(assert (= (and b!77312 ((_ is ElementMatch!365) (regex!297 (h!6757 (t!20145 rules!2471))))) b!77970))

(assert (= (and b!77312 ((_ is Concat!652) (regex!297 (h!6757 (t!20145 rules!2471))))) b!77971))

(assert (= (and b!77312 ((_ is Star!365) (regex!297 (h!6757 (t!20145 rules!2471))))) b!77972))

(assert (= (and b!77312 ((_ is Union!365) (regex!297 (h!6757 (t!20145 rules!2471))))) b!77973))

(declare-fun b!77976 () Bool)

(declare-fun e!43599 () Bool)

(declare-fun tp!49890 () Bool)

(assert (=> b!77976 (= e!43599 tp!49890)))

(declare-fun b!77975 () Bool)

(declare-fun tp!49888 () Bool)

(declare-fun tp!49891 () Bool)

(assert (=> b!77975 (= e!43599 (and tp!49888 tp!49891))))

(declare-fun b!77974 () Bool)

(assert (=> b!77974 (= e!43599 tp_is_empty!653)))

(assert (=> b!77332 (= tp!49822 e!43599)))

(declare-fun b!77977 () Bool)

(declare-fun tp!49889 () Bool)

(declare-fun tp!49887 () Bool)

(assert (=> b!77977 (= e!43599 (and tp!49889 tp!49887))))

(assert (= (and b!77332 ((_ is ElementMatch!365) (regOne!1243 (regex!297 (h!6757 rules!2471))))) b!77974))

(assert (= (and b!77332 ((_ is Concat!652) (regOne!1243 (regex!297 (h!6757 rules!2471))))) b!77975))

(assert (= (and b!77332 ((_ is Star!365) (regOne!1243 (regex!297 (h!6757 rules!2471))))) b!77976))

(assert (= (and b!77332 ((_ is Union!365) (regOne!1243 (regex!297 (h!6757 rules!2471))))) b!77977))

(declare-fun b!77980 () Bool)

(declare-fun e!43600 () Bool)

(declare-fun tp!49895 () Bool)

(assert (=> b!77980 (= e!43600 tp!49895)))

(declare-fun b!77979 () Bool)

(declare-fun tp!49893 () Bool)

(declare-fun tp!49896 () Bool)

(assert (=> b!77979 (= e!43600 (and tp!49893 tp!49896))))

(declare-fun b!77978 () Bool)

(assert (=> b!77978 (= e!43600 tp_is_empty!653)))

(assert (=> b!77332 (= tp!49820 e!43600)))

(declare-fun b!77981 () Bool)

(declare-fun tp!49894 () Bool)

(declare-fun tp!49892 () Bool)

(assert (=> b!77981 (= e!43600 (and tp!49894 tp!49892))))

(assert (= (and b!77332 ((_ is ElementMatch!365) (regTwo!1243 (regex!297 (h!6757 rules!2471))))) b!77978))

(assert (= (and b!77332 ((_ is Concat!652) (regTwo!1243 (regex!297 (h!6757 rules!2471))))) b!77979))

(assert (= (and b!77332 ((_ is Star!365) (regTwo!1243 (regex!297 (h!6757 rules!2471))))) b!77980))

(assert (= (and b!77332 ((_ is Union!365) (regTwo!1243 (regex!297 (h!6757 rules!2471))))) b!77981))

(declare-fun b!77984 () Bool)

(declare-fun b_free!2489 () Bool)

(declare-fun b_next!2489 () Bool)

(assert (=> b!77984 (= b_free!2489 (not b_next!2489))))

(declare-fun tb!2399 () Bool)

(declare-fun t!20182 () Bool)

(assert (=> (and b!77984 (= (toValue!804 (transformation!297 (h!6757 (t!20145 (t!20145 rules!2471))))) (toValue!804 (transformation!297 (rule!774 (_1!881 (get!334 lt!15584)))))) t!20182) tb!2399))

(declare-fun result!3432 () Bool)

(assert (= result!3432 result!3426))

(assert (=> d!14168 t!20182))

(declare-fun b_and!3563 () Bool)

(declare-fun tp!49898 () Bool)

(assert (=> b!77984 (= tp!49898 (and (=> t!20182 result!3432) b_and!3563))))

(declare-fun b_free!2491 () Bool)

(declare-fun b_next!2491 () Bool)

(assert (=> b!77984 (= b_free!2491 (not b_next!2491))))

(declare-fun t!20184 () Bool)

(declare-fun tb!2401 () Bool)

(assert (=> (and b!77984 (= (toChars!663 (transformation!297 (h!6757 (t!20145 (t!20145 rules!2471))))) (toChars!663 (transformation!297 (rule!774 (_1!881 (get!334 lt!15584)))))) t!20184) tb!2401))

(declare-fun result!3434 () Bool)

(assert (= result!3434 result!3416))

(assert (=> d!13946 t!20184))

(declare-fun b_and!3565 () Bool)

(declare-fun tp!49900 () Bool)

(assert (=> b!77984 (= tp!49900 (and (=> t!20184 result!3434) b_and!3565))))

(declare-fun e!43601 () Bool)

(assert (=> b!77984 (= e!43601 (and tp!49898 tp!49900))))

(declare-fun b!77983 () Bool)

(declare-fun e!43604 () Bool)

(declare-fun tp!49897 () Bool)

(assert (=> b!77983 (= e!43604 (and tp!49897 (inv!1721 (tag!475 (h!6757 (t!20145 (t!20145 rules!2471))))) (inv!1723 (transformation!297 (h!6757 (t!20145 (t!20145 rules!2471))))) e!43601))))

(declare-fun b!77982 () Bool)

(declare-fun e!43602 () Bool)

(declare-fun tp!49899 () Bool)

(assert (=> b!77982 (= e!43602 (and e!43604 tp!49899))))

(assert (=> b!77311 (= tp!49805 e!43602)))

(assert (= b!77983 b!77984))

(assert (= b!77982 b!77983))

(assert (= (and b!77311 ((_ is Cons!1360) (t!20145 (t!20145 rules!2471)))) b!77982))

(declare-fun m!51130 () Bool)

(assert (=> b!77983 m!51130))

(declare-fun m!51132 () Bool)

(assert (=> b!77983 m!51132))

(check-sat (not d!14058) (not b!77958) (not b!77596) (not b!77686) (not b!77568) (not b!77554) (not b!77983) (not d!13966) (not b!77879) (not b!77764) (not b!77956) (not b!77652) (not d!14032) (not b!77918) (not b!77566) (not d!14018) (not b!77922) (not b!77641) (not b!77417) (not b!77973) (not b!77651) (not bm!3663) (not d!13894) (not d!14140) (not b!77962) (not b!77564) (not d!14078) (not bm!3662) (not b!77875) (not d!14042) (not d!14100) (not b!77700) (not d!14104) tp_is_empty!653 (not d!14034) (not b_next!2475) (not b!77552) (not b!77960) (not b!77877) (not d!14106) (not b_next!2473) (not d!14176) (not b!77597) (not b!77945) (not d!14026) (not d!14056) (not b!77528) (not d!14044) (not b!77636) (not b!77967) (not b!77653) (not b!77706) (not d!14164) (not b!77947) (not b!77860) (not d!13946) (not d!14182) (not d!13962) b_and!3551 (not b!77849) (not d!13896) (not b!77966) (not b!77981) (not b!77708) (not b!77639) (not b!77923) (not b!77919) (not d!14050) (not d!14162) (not b!77569) (not b!77859) (not b!77548) (not d!13950) (not b!77710) (not b!77850) (not b!77518) b_and!3559 (not b!77525) (not b!77428) (not b!77882) (not d!13960) (not d!14096) (not b_next!2483) (not d!13972) (not b!77972) (not b!77950) (not b!77977) (not b!77553) (not b_lambda!879) (not b!77519) (not d!14016) (not b!77707) (not b!77912) (not d!14080) (not b!77551) (not b!77930) (not b!77952) b_and!3565 (not b!77555) (not b_next!2491) (not b!77703) (not d!14158) b_and!3553 (not b!77702) (not b!77704) (not b!77698) (not b!77670) (not d!13964) (not b!77562) (not b!77980) (not b!77765) (not d!14180) (not b!77767) (not d!14170) (not b!77951) (not b!77948) b_and!3563 (not b!77971) (not d!14090) (not d!13944) (not b_next!2489) (not d!14024) (not b!77429) (not b!77856) (not d!14006) (not b!77874) (not b!77517) (not d!14138) (not b!77515) (not b!77876) (not b!77584) (not d!14028) (not b!77969) (not d!14178) (not d!14154) (not d!13970) (not b_next!2481) (not b!77976) (not d!14144) (not d!14086) (not b!77963) (not b!77855) (not d!14172) (not b!77920) (not d!14048) (not b!77982) (not b!77637) (not b!77975) (not b!77581) (not d!13898) (not b!77955) (not b!77527) (not b!77959) (not d!14150) (not d!14084) (not b!77771) (not b!77685) (not b!77953) (not b_lambda!877) (not b!77937) (not b!77861) (not d!14156) (not b!77968) (not b!77772) (not b!77549) (not b!77415) (not b!77671) (not tb!2395) (not d!14038) (not b!77413) (not b!77878) (not b!77582) (not d!14082) (not d!13952) (not b!77979) (not b!77954) (not b!77964) (not d!14166) (not b!77840) (not b!77841) (not b!77550) (not tb!2387) (not d!14022) (not d!14052) b_and!3561)
(check-sat (not b_next!2475) (not b_next!2473) b_and!3551 b_and!3553 b_and!3563 (not b_next!2489) (not b_next!2481) b_and!3561 b_and!3559 (not b_next!2483) b_and!3565 (not b_next!2491))

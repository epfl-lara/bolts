; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!5652 () Bool)

(assert start!5652)

(declare-fun b!75400 () Bool)

(declare-fun b_free!2365 () Bool)

(declare-fun b_next!2365 () Bool)

(assert (=> b!75400 (= b_free!2365 (not b_next!2365))))

(declare-fun tp!49183 () Bool)

(declare-fun b_and!3407 () Bool)

(assert (=> b!75400 (= tp!49183 b_and!3407)))

(declare-fun b_free!2367 () Bool)

(declare-fun b_next!2367 () Bool)

(assert (=> b!75400 (= b_free!2367 (not b_next!2367))))

(declare-fun tp!49179 () Bool)

(declare-fun b_and!3409 () Bool)

(assert (=> b!75400 (= tp!49179 b_and!3409)))

(declare-fun b!75393 () Bool)

(declare-fun res!39437 () Bool)

(declare-fun e!42010 () Bool)

(assert (=> b!75393 (=> (not res!39437) (not e!42010))))

(declare-datatypes ((LexerInterface!172 0))(
  ( (LexerInterfaceExt!169 (__x!1635 Int)) (Lexer!170) )
))
(declare-fun thiss!19403 () LexerInterface!172)

(declare-datatypes ((C!1618 0))(
  ( (C!1619 (val!416 Int)) )
))
(declare-datatypes ((List!1290 0))(
  ( (Nil!1284) (Cons!1284 (h!6681 C!1618) (t!20025 List!1290)) )
))
(declare-datatypes ((IArray!725 0))(
  ( (IArray!726 (innerList!420 List!1290)) )
))
(declare-datatypes ((Conc!362 0))(
  ( (Node!362 (left!975 Conc!362) (right!1305 Conc!362) (csize!954 Int) (cheight!573 Int)) (Leaf!638 (xs!2941 IArray!725) (csize!955 Int)) (Empty!362) )
))
(declare-datatypes ((BalanceConc!728 0))(
  ( (BalanceConc!729 (c!19532 Conc!362)) )
))
(declare-datatypes ((Regex!348 0))(
  ( (ElementMatch!348 (c!19533 C!1618)) (Concat!618 (regOne!1208 Regex!348) (regTwo!1208 Regex!348)) (EmptyExpr!348) (Star!348 (reg!677 Regex!348)) (EmptyLang!348) (Union!348 (regOne!1209 Regex!348) (regTwo!1209 Regex!348)) )
))
(declare-datatypes ((String!1743 0))(
  ( (String!1744 (value!10851 String)) )
))
(declare-datatypes ((List!1291 0))(
  ( (Nil!1285) (Cons!1285 (h!6682 (_ BitVec 16)) (t!20026 List!1291)) )
))
(declare-datatypes ((TokenValue!270 0))(
  ( (FloatLiteralValue!540 (text!2335 List!1291)) (TokenValueExt!269 (__x!1636 Int)) (Broken!1350 (value!10852 List!1291)) (Object!275) (End!270) (Def!270) (Underscore!270) (Match!270) (Else!270) (Error!270) (Case!270) (If!270) (Extends!270) (Abstract!270) (Class!270) (Val!270) (DelimiterValue!540 (del!330 List!1291)) (KeywordValue!276 (value!10853 List!1291)) (CommentValue!540 (value!10854 List!1291)) (WhitespaceValue!540 (value!10855 List!1291)) (IndentationValue!270 (value!10856 List!1291)) (String!1745) (Int32!270) (Broken!1351 (value!10857 List!1291)) (Boolean!271) (Unit!760) (OperatorValue!273 (op!330 List!1291)) (IdentifierValue!540 (value!10858 List!1291)) (IdentifierValue!541 (value!10859 List!1291)) (WhitespaceValue!541 (value!10860 List!1291)) (True!540) (False!540) (Broken!1352 (value!10861 List!1291)) (Broken!1353 (value!10862 List!1291)) (True!541) (RightBrace!270) (RightBracket!270) (Colon!270) (Null!270) (Comma!270) (LeftBracket!270) (False!541) (LeftBrace!270) (ImaginaryLiteralValue!270 (text!2336 List!1291)) (StringLiteralValue!810 (value!10863 List!1291)) (EOFValue!270 (value!10864 List!1291)) (IdentValue!270 (value!10865 List!1291)) (DelimiterValue!541 (value!10866 List!1291)) (DedentValue!270 (value!10867 List!1291)) (NewLineValue!270 (value!10868 List!1291)) (IntegerValue!810 (value!10869 (_ BitVec 32)) (text!2337 List!1291)) (IntegerValue!811 (value!10870 Int) (text!2338 List!1291)) (Times!270) (Or!270) (Equal!270) (Minus!270) (Broken!1354 (value!10871 List!1291)) (And!270) (Div!270) (LessEqual!270) (Mod!270) (Concat!619) (Not!270) (Plus!270) (SpaceValue!270 (value!10872 List!1291)) (IntegerValue!812 (value!10873 Int) (text!2339 List!1291)) (StringLiteralValue!811 (text!2340 List!1291)) (FloatLiteralValue!541 (text!2341 List!1291)) (BytesLiteralValue!270 (value!10874 List!1291)) (CommentValue!541 (value!10875 List!1291)) (StringLiteralValue!812 (value!10876 List!1291)) (ErrorTokenValue!270 (msg!331 List!1291)) )
))
(declare-datatypes ((TokenValueInjection!364 0))(
  ( (TokenValueInjection!365 (toValue!779 Int) (toChars!638 Int)) )
))
(declare-datatypes ((Rule!360 0))(
  ( (Rule!361 (regex!280 Regex!348) (tag!458 String!1743) (isSeparator!280 Bool) (transformation!280 TokenValueInjection!364)) )
))
(declare-datatypes ((List!1292 0))(
  ( (Nil!1286) (Cons!1286 (h!6683 Rule!360) (t!20027 List!1292)) )
))
(declare-fun rules!2471 () List!1292)

(declare-fun rulesInvariant!166 (LexerInterface!172 List!1292) Bool)

(assert (=> b!75393 (= res!39437 (rulesInvariant!166 thiss!19403 rules!2471))))

(declare-fun b!75394 () Bool)

(declare-fun e!42016 () Bool)

(declare-fun tp_is_empty!619 () Bool)

(declare-fun tp!49181 () Bool)

(assert (=> b!75394 (= e!42016 (and tp_is_empty!619 tp!49181))))

(declare-fun b!75395 () Bool)

(declare-fun res!39435 () Bool)

(assert (=> b!75395 (=> (not res!39435) (not e!42010))))

(declare-fun isEmpty!346 (List!1292) Bool)

(assert (=> b!75395 (= res!39435 (not (isEmpty!346 rules!2471)))))

(declare-fun res!39436 () Bool)

(assert (=> start!5652 (=> (not res!39436) (not e!42010))))

(assert (=> start!5652 (= res!39436 (is-Lexer!170 thiss!19403))))

(assert (=> start!5652 e!42010))

(assert (=> start!5652 true))

(declare-fun e!42014 () Bool)

(assert (=> start!5652 e!42014))

(assert (=> start!5652 e!42016))

(declare-fun b!75396 () Bool)

(declare-fun e!42013 () Bool)

(declare-fun rulesValidInductive!21 (LexerInterface!172 List!1292) Bool)

(assert (=> b!75396 (= e!42013 (not (rulesValidInductive!21 thiss!19403 rules!2471)))))

(declare-datatypes ((Token!320 0))(
  ( (Token!321 (value!10877 TokenValue!270) (rule!755 Rule!360) (size!1136 Int) (originalCharacters!331 List!1290)) )
))
(declare-datatypes ((List!1293 0))(
  ( (Nil!1287) (Cons!1287 (h!6684 Token!320) (t!20028 List!1293)) )
))
(declare-fun lt!14297 () List!1293)

(declare-datatypes ((IArray!727 0))(
  ( (IArray!728 (innerList!421 List!1293)) )
))
(declare-datatypes ((Conc!363 0))(
  ( (Node!363 (left!976 Conc!363) (right!1306 Conc!363) (csize!956 Int) (cheight!574 Int)) (Leaf!639 (xs!2942 IArray!727) (csize!957 Int)) (Empty!363) )
))
(declare-datatypes ((BalanceConc!730 0))(
  ( (BalanceConc!731 (c!19534 Conc!363)) )
))
(declare-fun list!380 (BalanceConc!730) List!1293)

(declare-fun prepend!25 (BalanceConc!730 Token!320) BalanceConc!730)

(declare-fun seqFromList!72 (List!1293) BalanceConc!730)

(assert (=> b!75396 (= lt!14297 (list!380 (prepend!25 (seqFromList!72 (t!20028 lt!14297)) (h!6684 lt!14297))))))

(declare-datatypes ((Unit!761 0))(
  ( (Unit!762) )
))
(declare-fun lt!14299 () Unit!761)

(declare-datatypes ((tuple2!1248 0))(
  ( (tuple2!1249 (_1!831 BalanceConc!730) (_2!831 BalanceConc!728)) )
))
(declare-fun lt!14298 () tuple2!1248)

(declare-fun seqFromListBHdTlConstructive!3 (Token!320 List!1293 BalanceConc!730) Unit!761)

(assert (=> b!75396 (= lt!14299 (seqFromListBHdTlConstructive!3 (h!6684 lt!14297) (t!20028 lt!14297) (_1!831 lt!14298)))))

(declare-fun b!75397 () Bool)

(declare-fun e!42011 () Bool)

(declare-fun tp!49180 () Bool)

(assert (=> b!75397 (= e!42014 (and e!42011 tp!49180))))

(declare-fun tp!49182 () Bool)

(declare-fun e!42009 () Bool)

(declare-fun b!75398 () Bool)

(declare-fun inv!1675 (String!1743) Bool)

(declare-fun inv!1678 (TokenValueInjection!364) Bool)

(assert (=> b!75398 (= e!42011 (and tp!49182 (inv!1675 (tag!458 (h!6683 rules!2471))) (inv!1678 (transformation!280 (h!6683 rules!2471))) e!42009))))

(declare-fun b!75399 () Bool)

(declare-fun e!42012 () Bool)

(assert (=> b!75399 (= e!42012 e!42013)))

(declare-fun res!39434 () Bool)

(assert (=> b!75399 (=> (not res!39434) (not e!42013))))

(declare-fun lt!14300 () Bool)

(assert (=> b!75399 (= res!39434 (and (or lt!14300 (not (is-Nil!1287 (t!20028 lt!14297)))) (not lt!14300)))))

(assert (=> b!75399 (= lt!14300 (not (is-Cons!1287 lt!14297)))))

(assert (=> b!75399 (= lt!14297 (list!380 (_1!831 lt!14298)))))

(assert (=> b!75400 (= e!42009 (and tp!49183 tp!49179))))

(declare-fun b!75401 () Bool)

(assert (=> b!75401 (= e!42010 e!42012)))

(declare-fun res!39438 () Bool)

(assert (=> b!75401 (=> (not res!39438) (not e!42012))))

(declare-fun isEmpty!347 (BalanceConc!728) Bool)

(assert (=> b!75401 (= res!39438 (not (isEmpty!347 (_2!831 lt!14298))))))

(declare-fun input!2238 () List!1290)

(declare-fun lex!80 (LexerInterface!172 List!1292 BalanceConc!728) tuple2!1248)

(declare-fun seqFromList!73 (List!1290) BalanceConc!728)

(assert (=> b!75401 (= lt!14298 (lex!80 thiss!19403 rules!2471 (seqFromList!73 input!2238)))))

(assert (= (and start!5652 res!39436) b!75395))

(assert (= (and b!75395 res!39435) b!75393))

(assert (= (and b!75393 res!39437) b!75401))

(assert (= (and b!75401 res!39438) b!75399))

(assert (= (and b!75399 res!39434) b!75396))

(assert (= b!75398 b!75400))

(assert (= b!75397 b!75398))

(assert (= (and start!5652 (is-Cons!1286 rules!2471)) b!75397))

(assert (= (and start!5652 (is-Cons!1284 input!2238)) b!75394))

(declare-fun m!47078 () Bool)

(assert (=> b!75401 m!47078))

(declare-fun m!47080 () Bool)

(assert (=> b!75401 m!47080))

(assert (=> b!75401 m!47080))

(declare-fun m!47082 () Bool)

(assert (=> b!75401 m!47082))

(declare-fun m!47084 () Bool)

(assert (=> b!75396 m!47084))

(declare-fun m!47086 () Bool)

(assert (=> b!75396 m!47086))

(declare-fun m!47088 () Bool)

(assert (=> b!75396 m!47088))

(assert (=> b!75396 m!47086))

(assert (=> b!75396 m!47088))

(declare-fun m!47090 () Bool)

(assert (=> b!75396 m!47090))

(declare-fun m!47092 () Bool)

(assert (=> b!75396 m!47092))

(declare-fun m!47094 () Bool)

(assert (=> b!75399 m!47094))

(declare-fun m!47096 () Bool)

(assert (=> b!75393 m!47096))

(declare-fun m!47098 () Bool)

(assert (=> b!75398 m!47098))

(declare-fun m!47100 () Bool)

(assert (=> b!75398 m!47100))

(declare-fun m!47102 () Bool)

(assert (=> b!75395 m!47102))

(push 1)

(assert (not b!75399))

(assert tp_is_empty!619)

(assert (not b!75398))

(assert (not b!75393))

(assert (not b!75396))

(assert b_and!3409)

(assert (not b!75397))

(assert (not b!75401))

(assert (not b_next!2367))

(assert b_and!3407)

(assert (not b!75395))

(assert (not b!75394))

(assert (not b_next!2365))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3409)

(assert b_and!3407)

(assert (not b_next!2367))

(assert (not b_next!2365))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13204 () Bool)

(assert (=> d!13204 (= (isEmpty!346 rules!2471) (is-Nil!1286 rules!2471))))

(assert (=> b!75395 d!13204))

(declare-fun d!13206 () Bool)

(declare-fun res!39462 () Bool)

(declare-fun e!42043 () Bool)

(assert (=> d!13206 (=> (not res!39462) (not e!42043))))

(declare-fun rulesValid!50 (LexerInterface!172 List!1292) Bool)

(assert (=> d!13206 (= res!39462 (rulesValid!50 thiss!19403 rules!2471))))

(assert (=> d!13206 (= (rulesInvariant!166 thiss!19403 rules!2471) e!42043)))

(declare-fun b!75431 () Bool)

(declare-datatypes ((List!1298 0))(
  ( (Nil!1292) (Cons!1292 (h!6689 String!1743) (t!20033 List!1298)) )
))
(declare-fun noDuplicateTag!50 (LexerInterface!172 List!1292 List!1298) Bool)

(assert (=> b!75431 (= e!42043 (noDuplicateTag!50 thiss!19403 rules!2471 Nil!1292))))

(assert (= (and d!13206 res!39462) b!75431))

(declare-fun m!47130 () Bool)

(assert (=> d!13206 m!47130))

(declare-fun m!47132 () Bool)

(assert (=> b!75431 m!47132))

(assert (=> b!75393 d!13206))

(declare-fun d!13208 () Bool)

(declare-fun list!382 (Conc!363) List!1293)

(assert (=> d!13208 (= (list!380 (_1!831 lt!14298)) (list!382 (c!19534 (_1!831 lt!14298))))))

(declare-fun bs!7841 () Bool)

(assert (= bs!7841 d!13208))

(declare-fun m!47134 () Bool)

(assert (=> bs!7841 m!47134))

(assert (=> b!75399 d!13208))

(declare-fun d!13210 () Bool)

(assert (=> d!13210 (= (inv!1675 (tag!458 (h!6683 rules!2471))) (= (mod (str.len (value!10851 (tag!458 (h!6683 rules!2471)))) 2) 0))))

(assert (=> b!75398 d!13210))

(declare-fun d!13214 () Bool)

(declare-fun res!39465 () Bool)

(declare-fun e!42046 () Bool)

(assert (=> d!13214 (=> (not res!39465) (not e!42046))))

(declare-fun semiInverseModEq!42 (Int Int) Bool)

(assert (=> d!13214 (= res!39465 (semiInverseModEq!42 (toChars!638 (transformation!280 (h!6683 rules!2471))) (toValue!779 (transformation!280 (h!6683 rules!2471)))))))

(assert (=> d!13214 (= (inv!1678 (transformation!280 (h!6683 rules!2471))) e!42046)))

(declare-fun b!75434 () Bool)

(declare-fun equivClasses!38 (Int Int) Bool)

(assert (=> b!75434 (= e!42046 (equivClasses!38 (toChars!638 (transformation!280 (h!6683 rules!2471))) (toValue!779 (transformation!280 (h!6683 rules!2471)))))))

(assert (= (and d!13214 res!39465) b!75434))

(declare-fun m!47138 () Bool)

(assert (=> d!13214 m!47138))

(declare-fun m!47140 () Bool)

(assert (=> b!75434 m!47140))

(assert (=> b!75398 d!13214))

(declare-fun d!13218 () Bool)

(declare-fun fromListB!21 (List!1293) BalanceConc!730)

(assert (=> d!13218 (= (seqFromList!72 (t!20028 lt!14297)) (fromListB!21 (t!20028 lt!14297)))))

(declare-fun bs!7844 () Bool)

(assert (= bs!7844 d!13218))

(declare-fun m!47148 () Bool)

(assert (=> bs!7844 m!47148))

(assert (=> b!75396 d!13218))

(declare-fun d!13222 () Bool)

(assert (=> d!13222 (= (list!380 (_1!831 lt!14298)) (list!380 (prepend!25 (seqFromList!72 (t!20028 lt!14297)) (h!6684 lt!14297))))))

(declare-fun lt!14318 () Unit!761)

(declare-fun choose!1255 (Token!320 List!1293 BalanceConc!730) Unit!761)

(assert (=> d!13222 (= lt!14318 (choose!1255 (h!6684 lt!14297) (t!20028 lt!14297) (_1!831 lt!14298)))))

(declare-fun $colon$colon!9 (List!1293 Token!320) List!1293)

(assert (=> d!13222 (= (list!380 (_1!831 lt!14298)) (list!380 (seqFromList!72 ($colon$colon!9 (t!20028 lt!14297) (h!6684 lt!14297)))))))

(assert (=> d!13222 (= (seqFromListBHdTlConstructive!3 (h!6684 lt!14297) (t!20028 lt!14297) (_1!831 lt!14298)) lt!14318)))

(declare-fun bs!7845 () Bool)

(assert (= bs!7845 d!13222))

(assert (=> bs!7845 m!47086))

(assert (=> bs!7845 m!47088))

(declare-fun m!47150 () Bool)

(assert (=> bs!7845 m!47150))

(declare-fun m!47152 () Bool)

(assert (=> bs!7845 m!47152))

(assert (=> bs!7845 m!47086))

(assert (=> bs!7845 m!47094))

(assert (=> bs!7845 m!47152))

(declare-fun m!47154 () Bool)

(assert (=> bs!7845 m!47154))

(assert (=> bs!7845 m!47154))

(declare-fun m!47156 () Bool)

(assert (=> bs!7845 m!47156))

(assert (=> bs!7845 m!47088))

(assert (=> bs!7845 m!47090))

(assert (=> b!75396 d!13222))

(declare-fun d!13224 () Bool)

(assert (=> d!13224 true))

(declare-fun lt!14329 () Bool)

(declare-fun lambda!1354 () Int)

(declare-fun forall!178 (List!1292 Int) Bool)

(assert (=> d!13224 (= lt!14329 (forall!178 rules!2471 lambda!1354))))

(declare-fun e!42067 () Bool)

(assert (=> d!13224 (= lt!14329 e!42067)))

(declare-fun res!39486 () Bool)

(assert (=> d!13224 (=> res!39486 e!42067)))

(assert (=> d!13224 (= res!39486 (not (is-Cons!1286 rules!2471)))))

(assert (=> d!13224 (= (rulesValidInductive!21 thiss!19403 rules!2471) lt!14329)))

(declare-fun b!75461 () Bool)

(declare-fun e!42068 () Bool)

(assert (=> b!75461 (= e!42067 e!42068)))

(declare-fun res!39487 () Bool)

(assert (=> b!75461 (=> (not res!39487) (not e!42068))))

(declare-fun ruleValid!10 (LexerInterface!172 Rule!360) Bool)

(assert (=> b!75461 (= res!39487 (ruleValid!10 thiss!19403 (h!6683 rules!2471)))))

(declare-fun b!75462 () Bool)

(assert (=> b!75462 (= e!42068 (rulesValidInductive!21 thiss!19403 (t!20027 rules!2471)))))

(assert (= (and d!13224 (not res!39486)) b!75461))

(assert (= (and b!75461 res!39487) b!75462))

(declare-fun m!47192 () Bool)

(assert (=> d!13224 m!47192))

(declare-fun m!47194 () Bool)

(assert (=> b!75461 m!47194))

(declare-fun m!47196 () Bool)

(assert (=> b!75462 m!47196))

(assert (=> b!75396 d!13224))

(declare-fun d!13240 () Bool)

(declare-fun e!42071 () Bool)

(assert (=> d!13240 e!42071))

(declare-fun res!39490 () Bool)

(assert (=> d!13240 (=> (not res!39490) (not e!42071))))

(declare-fun isBalanced!64 (Conc!363) Bool)

(declare-fun prepend!27 (Conc!363 Token!320) Conc!363)

(assert (=> d!13240 (= res!39490 (isBalanced!64 (prepend!27 (c!19534 (seqFromList!72 (t!20028 lt!14297))) (h!6684 lt!14297))))))

(declare-fun lt!14332 () BalanceConc!730)

(assert (=> d!13240 (= lt!14332 (BalanceConc!731 (prepend!27 (c!19534 (seqFromList!72 (t!20028 lt!14297))) (h!6684 lt!14297))))))

(assert (=> d!13240 (= (prepend!25 (seqFromList!72 (t!20028 lt!14297)) (h!6684 lt!14297)) lt!14332)))

(declare-fun b!75467 () Bool)

(assert (=> b!75467 (= e!42071 (= (list!380 lt!14332) (Cons!1287 (h!6684 lt!14297) (list!380 (seqFromList!72 (t!20028 lt!14297))))))))

(assert (= (and d!13240 res!39490) b!75467))

(declare-fun m!47198 () Bool)

(assert (=> d!13240 m!47198))

(assert (=> d!13240 m!47198))

(declare-fun m!47200 () Bool)

(assert (=> d!13240 m!47200))

(declare-fun m!47202 () Bool)

(assert (=> b!75467 m!47202))

(assert (=> b!75467 m!47086))

(declare-fun m!47204 () Bool)

(assert (=> b!75467 m!47204))

(assert (=> b!75396 d!13240))

(declare-fun d!13242 () Bool)

(assert (=> d!13242 (= (list!380 (prepend!25 (seqFromList!72 (t!20028 lt!14297)) (h!6684 lt!14297))) (list!382 (c!19534 (prepend!25 (seqFromList!72 (t!20028 lt!14297)) (h!6684 lt!14297)))))))

(declare-fun bs!7849 () Bool)

(assert (= bs!7849 d!13242))

(declare-fun m!47206 () Bool)

(assert (=> bs!7849 m!47206))

(assert (=> b!75396 d!13242))

(declare-fun d!13244 () Bool)

(declare-fun lt!14335 () Bool)

(declare-fun isEmpty!350 (List!1290) Bool)

(declare-fun list!383 (BalanceConc!728) List!1290)

(assert (=> d!13244 (= lt!14335 (isEmpty!350 (list!383 (_2!831 lt!14298))))))

(declare-fun isEmpty!351 (Conc!362) Bool)

(assert (=> d!13244 (= lt!14335 (isEmpty!351 (c!19532 (_2!831 lt!14298))))))

(assert (=> d!13244 (= (isEmpty!347 (_2!831 lt!14298)) lt!14335)))

(declare-fun bs!7850 () Bool)

(assert (= bs!7850 d!13244))

(declare-fun m!47208 () Bool)

(assert (=> bs!7850 m!47208))

(assert (=> bs!7850 m!47208))

(declare-fun m!47210 () Bool)

(assert (=> bs!7850 m!47210))

(declare-fun m!47212 () Bool)

(assert (=> bs!7850 m!47212))

(assert (=> b!75401 d!13244))

(declare-fun b!75478 () Bool)

(declare-fun res!39499 () Bool)

(declare-fun e!42079 () Bool)

(assert (=> b!75478 (=> (not res!39499) (not e!42079))))

(declare-fun lt!14338 () tuple2!1248)

(declare-datatypes ((tuple2!1252 0))(
  ( (tuple2!1253 (_1!833 List!1293) (_2!833 List!1290)) )
))
(declare-fun lexList!31 (LexerInterface!172 List!1292 List!1290) tuple2!1252)

(assert (=> b!75478 (= res!39499 (= (list!380 (_1!831 lt!14338)) (_1!833 (lexList!31 thiss!19403 rules!2471 (list!383 (seqFromList!73 input!2238))))))))

(declare-fun b!75480 () Bool)

(declare-fun e!42080 () Bool)

(declare-fun isEmpty!352 (BalanceConc!730) Bool)

(assert (=> b!75480 (= e!42080 (not (isEmpty!352 (_1!831 lt!14338))))))

(declare-fun b!75481 () Bool)

(assert (=> b!75481 (= e!42079 (= (list!383 (_2!831 lt!14338)) (_2!833 (lexList!31 thiss!19403 rules!2471 (list!383 (seqFromList!73 input!2238))))))))

(declare-fun b!75482 () Bool)

(declare-fun e!42078 () Bool)

(assert (=> b!75482 (= e!42078 (= (_2!831 lt!14338) (seqFromList!73 input!2238)))))

(declare-fun b!75479 () Bool)

(assert (=> b!75479 (= e!42078 e!42080)))

(declare-fun res!39498 () Bool)

(declare-fun size!1138 (BalanceConc!728) Int)

(assert (=> b!75479 (= res!39498 (< (size!1138 (_2!831 lt!14338)) (size!1138 (seqFromList!73 input!2238))))))

(assert (=> b!75479 (=> (not res!39498) (not e!42080))))

(declare-fun d!13246 () Bool)

(assert (=> d!13246 e!42079))

(declare-fun res!39497 () Bool)

(assert (=> d!13246 (=> (not res!39497) (not e!42079))))

(assert (=> d!13246 (= res!39497 e!42078)))

(declare-fun c!19545 () Bool)

(declare-fun size!1139 (BalanceConc!730) Int)

(assert (=> d!13246 (= c!19545 (> (size!1139 (_1!831 lt!14338)) 0))))

(declare-fun lexTailRecV2!28 (LexerInterface!172 List!1292 BalanceConc!728 BalanceConc!728 BalanceConc!728 BalanceConc!730) tuple2!1248)

(assert (=> d!13246 (= lt!14338 (lexTailRecV2!28 thiss!19403 rules!2471 (seqFromList!73 input!2238) (BalanceConc!729 Empty!362) (seqFromList!73 input!2238) (BalanceConc!731 Empty!363)))))

(assert (=> d!13246 (= (lex!80 thiss!19403 rules!2471 (seqFromList!73 input!2238)) lt!14338)))

(assert (= (and d!13246 c!19545) b!75479))

(assert (= (and d!13246 (not c!19545)) b!75482))

(assert (= (and b!75479 res!39498) b!75480))

(assert (= (and d!13246 res!39497) b!75478))

(assert (= (and b!75478 res!39499) b!75481))

(declare-fun m!47214 () Bool)

(assert (=> b!75481 m!47214))

(assert (=> b!75481 m!47080))

(declare-fun m!47216 () Bool)

(assert (=> b!75481 m!47216))

(assert (=> b!75481 m!47216))

(declare-fun m!47218 () Bool)

(assert (=> b!75481 m!47218))

(declare-fun m!47220 () Bool)

(assert (=> d!13246 m!47220))

(assert (=> d!13246 m!47080))

(assert (=> d!13246 m!47080))

(declare-fun m!47222 () Bool)

(assert (=> d!13246 m!47222))

(declare-fun m!47224 () Bool)

(assert (=> b!75478 m!47224))

(assert (=> b!75478 m!47080))

(assert (=> b!75478 m!47216))

(assert (=> b!75478 m!47216))

(assert (=> b!75478 m!47218))

(declare-fun m!47226 () Bool)

(assert (=> b!75480 m!47226))

(declare-fun m!47228 () Bool)

(assert (=> b!75479 m!47228))

(assert (=> b!75479 m!47080))

(declare-fun m!47230 () Bool)

(assert (=> b!75479 m!47230))

(assert (=> b!75401 d!13246))

(declare-fun d!13248 () Bool)

(declare-fun fromListB!22 (List!1290) BalanceConc!728)

(assert (=> d!13248 (= (seqFromList!73 input!2238) (fromListB!22 input!2238))))

(declare-fun bs!7851 () Bool)

(assert (= bs!7851 d!13248))

(declare-fun m!47232 () Bool)

(assert (=> bs!7851 m!47232))

(assert (=> b!75401 d!13248))

(declare-fun b!75487 () Bool)

(declare-fun e!42083 () Bool)

(declare-fun tp!49201 () Bool)

(assert (=> b!75487 (= e!42083 (and tp_is_empty!619 tp!49201))))

(assert (=> b!75394 (= tp!49181 e!42083)))

(assert (= (and b!75394 (is-Cons!1284 (t!20025 input!2238))) b!75487))

(declare-fun b!75498 () Bool)

(declare-fun b_free!2373 () Bool)

(declare-fun b_next!2373 () Bool)

(assert (=> b!75498 (= b_free!2373 (not b_next!2373))))

(declare-fun tp!49212 () Bool)

(declare-fun b_and!3415 () Bool)

(assert (=> b!75498 (= tp!49212 b_and!3415)))

(declare-fun b_free!2375 () Bool)

(declare-fun b_next!2375 () Bool)

(assert (=> b!75498 (= b_free!2375 (not b_next!2375))))

(declare-fun tp!49210 () Bool)

(declare-fun b_and!3417 () Bool)

(assert (=> b!75498 (= tp!49210 b_and!3417)))

(declare-fun e!42095 () Bool)

(assert (=> b!75498 (= e!42095 (and tp!49212 tp!49210))))

(declare-fun tp!49213 () Bool)

(declare-fun e!42093 () Bool)

(declare-fun b!75497 () Bool)

(assert (=> b!75497 (= e!42093 (and tp!49213 (inv!1675 (tag!458 (h!6683 (t!20027 rules!2471)))) (inv!1678 (transformation!280 (h!6683 (t!20027 rules!2471)))) e!42095))))

(declare-fun b!75496 () Bool)

(declare-fun e!42092 () Bool)

(declare-fun tp!49211 () Bool)

(assert (=> b!75496 (= e!42092 (and e!42093 tp!49211))))

(assert (=> b!75397 (= tp!49180 e!42092)))

(assert (= b!75497 b!75498))

(assert (= b!75496 b!75497))

(assert (= (and b!75397 (is-Cons!1286 (t!20027 rules!2471))) b!75496))

(declare-fun m!47234 () Bool)

(assert (=> b!75497 m!47234))

(declare-fun m!47236 () Bool)

(assert (=> b!75497 m!47236))

(declare-fun e!42098 () Bool)

(assert (=> b!75398 (= tp!49182 e!42098)))

(declare-fun b!75509 () Bool)

(assert (=> b!75509 (= e!42098 tp_is_empty!619)))

(declare-fun b!75512 () Bool)

(declare-fun tp!49227 () Bool)

(declare-fun tp!49225 () Bool)

(assert (=> b!75512 (= e!42098 (and tp!49227 tp!49225))))

(declare-fun b!75510 () Bool)

(declare-fun tp!49226 () Bool)

(declare-fun tp!49224 () Bool)

(assert (=> b!75510 (= e!42098 (and tp!49226 tp!49224))))

(declare-fun b!75511 () Bool)

(declare-fun tp!49228 () Bool)

(assert (=> b!75511 (= e!42098 tp!49228)))

(assert (= (and b!75398 (is-ElementMatch!348 (regex!280 (h!6683 rules!2471)))) b!75509))

(assert (= (and b!75398 (is-Concat!618 (regex!280 (h!6683 rules!2471)))) b!75510))

(assert (= (and b!75398 (is-Star!348 (regex!280 (h!6683 rules!2471)))) b!75511))

(assert (= (and b!75398 (is-Union!348 (regex!280 (h!6683 rules!2471)))) b!75512))

(push 1)

(assert (not b!75434))

(assert (not b!75467))

(assert (not b_next!2365))

(assert (not b!75478))

(assert (not b!75462))

(assert (not b!75487))

(assert (not b_next!2373))

(assert (not b!75481))

(assert (not b!75479))

(assert b_and!3417)

(assert b_and!3407)

(assert (not d!13214))

(assert (not b!75431))

(assert (not d!13218))

(assert (not b!75480))

(assert (not d!13224))

(assert (not d!13222))

(assert (not d!13206))

(assert (not b!75510))

(assert (not d!13208))

(assert (not b!75512))

(assert (not b!75496))

(assert (not d!13248))

(assert (not d!13244))

(assert (not b!75497))

(assert tp_is_empty!619)

(assert (not b!75461))

(assert b_and!3409)

(assert (not b_next!2375))

(assert (not d!13246))

(assert (not d!13240))

(assert (not b!75511))

(assert (not b_next!2367))

(assert b_and!3415)

(assert (not d!13242))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2365))

(assert (not b_next!2373))

(assert b_and!3409)

(assert (not b_next!2375))

(assert b_and!3417)

(assert b_and!3407)

(assert (not b_next!2367))

(assert b_and!3415)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13254 () Bool)

(declare-fun res!39513 () Bool)

(declare-fun e!42110 () Bool)

(assert (=> d!13254 (=> res!39513 e!42110)))

(assert (=> d!13254 (= res!39513 (is-Nil!1286 rules!2471))))

(assert (=> d!13254 (= (noDuplicateTag!50 thiss!19403 rules!2471 Nil!1292) e!42110)))

(declare-fun b!75526 () Bool)

(declare-fun e!42111 () Bool)

(assert (=> b!75526 (= e!42110 e!42111)))

(declare-fun res!39514 () Bool)

(assert (=> b!75526 (=> (not res!39514) (not e!42111))))

(declare-fun contains!192 (List!1298 String!1743) Bool)

(assert (=> b!75526 (= res!39514 (not (contains!192 Nil!1292 (tag!458 (h!6683 rules!2471)))))))

(declare-fun b!75527 () Bool)

(assert (=> b!75527 (= e!42111 (noDuplicateTag!50 thiss!19403 (t!20027 rules!2471) (Cons!1292 (tag!458 (h!6683 rules!2471)) Nil!1292)))))

(assert (= (and d!13254 (not res!39513)) b!75526))

(assert (= (and b!75526 res!39514) b!75527))

(declare-fun m!47254 () Bool)

(assert (=> b!75526 m!47254))

(declare-fun m!47256 () Bool)

(assert (=> b!75527 m!47256))

(assert (=> b!75431 d!13254))

(declare-fun b!75561 () Bool)

(declare-fun e!42129 () List!1293)

(declare-fun list!386 (IArray!727) List!1293)

(assert (=> b!75561 (= e!42129 (list!386 (xs!2942 (c!19534 (prepend!25 (seqFromList!72 (t!20028 lt!14297)) (h!6684 lt!14297))))))))

(declare-fun d!13258 () Bool)

(declare-fun c!19551 () Bool)

(assert (=> d!13258 (= c!19551 (is-Empty!363 (c!19534 (prepend!25 (seqFromList!72 (t!20028 lt!14297)) (h!6684 lt!14297)))))))

(declare-fun e!42128 () List!1293)

(assert (=> d!13258 (= (list!382 (c!19534 (prepend!25 (seqFromList!72 (t!20028 lt!14297)) (h!6684 lt!14297)))) e!42128)))

(declare-fun b!75559 () Bool)

(assert (=> b!75559 (= e!42128 Nil!1287)))

(declare-fun b!75560 () Bool)

(assert (=> b!75560 (= e!42128 e!42129)))

(declare-fun c!19552 () Bool)

(assert (=> b!75560 (= c!19552 (is-Leaf!639 (c!19534 (prepend!25 (seqFromList!72 (t!20028 lt!14297)) (h!6684 lt!14297)))))))

(declare-fun b!75562 () Bool)

(declare-fun ++!91 (List!1293 List!1293) List!1293)

(assert (=> b!75562 (= e!42129 (++!91 (list!382 (left!976 (c!19534 (prepend!25 (seqFromList!72 (t!20028 lt!14297)) (h!6684 lt!14297))))) (list!382 (right!1306 (c!19534 (prepend!25 (seqFromList!72 (t!20028 lt!14297)) (h!6684 lt!14297)))))))))

(assert (= (and d!13258 c!19551) b!75559))

(assert (= (and d!13258 (not c!19551)) b!75560))

(assert (= (and b!75560 c!19552) b!75561))

(assert (= (and b!75560 (not c!19552)) b!75562))

(declare-fun m!47262 () Bool)

(assert (=> b!75561 m!47262))

(declare-fun m!47264 () Bool)

(assert (=> b!75562 m!47264))

(declare-fun m!47266 () Bool)

(assert (=> b!75562 m!47266))

(assert (=> b!75562 m!47264))

(assert (=> b!75562 m!47266))

(declare-fun m!47268 () Bool)

(assert (=> b!75562 m!47268))

(assert (=> d!13242 d!13258))

(declare-fun d!13260 () Bool)

(assert (=> d!13260 (= (list!380 (_1!831 lt!14338)) (list!382 (c!19534 (_1!831 lt!14338))))))

(declare-fun bs!7853 () Bool)

(assert (= bs!7853 d!13260))

(declare-fun m!47270 () Bool)

(assert (=> bs!7853 m!47270))

(assert (=> b!75478 d!13260))

(declare-fun b!75581 () Bool)

(declare-fun e!42145 () Bool)

(declare-fun lt!14349 () tuple2!1252)

(declare-fun isEmpty!356 (List!1293) Bool)

(assert (=> b!75581 (= e!42145 (not (isEmpty!356 (_1!833 lt!14349))))))

(declare-fun b!75582 () Bool)

(declare-fun e!42143 () tuple2!1252)

(declare-datatypes ((tuple2!1256 0))(
  ( (tuple2!1257 (_1!835 Token!320) (_2!835 List!1290)) )
))
(declare-datatypes ((Option!81 0))(
  ( (None!80) (Some!80 (v!12725 tuple2!1256)) )
))
(declare-fun lt!14350 () Option!81)

(declare-fun lt!14351 () tuple2!1252)

(assert (=> b!75582 (= e!42143 (tuple2!1253 (Cons!1287 (_1!835 (v!12725 lt!14350)) (_1!833 lt!14351)) (_2!833 lt!14351)))))

(assert (=> b!75582 (= lt!14351 (lexList!31 thiss!19403 rules!2471 (_2!835 (v!12725 lt!14350))))))

(declare-fun d!13262 () Bool)

(declare-fun e!42144 () Bool)

(assert (=> d!13262 e!42144))

(declare-fun c!19557 () Bool)

(declare-fun size!1142 (List!1293) Int)

(assert (=> d!13262 (= c!19557 (> (size!1142 (_1!833 lt!14349)) 0))))

(assert (=> d!13262 (= lt!14349 e!42143)))

(declare-fun c!19558 () Bool)

(assert (=> d!13262 (= c!19558 (is-Some!80 lt!14350))))

(declare-fun maxPrefix!18 (LexerInterface!172 List!1292 List!1290) Option!81)

(assert (=> d!13262 (= lt!14350 (maxPrefix!18 thiss!19403 rules!2471 (list!383 (seqFromList!73 input!2238))))))

(assert (=> d!13262 (= (lexList!31 thiss!19403 rules!2471 (list!383 (seqFromList!73 input!2238))) lt!14349)))

(declare-fun b!75583 () Bool)

(assert (=> b!75583 (= e!42144 (= (_2!833 lt!14349) (list!383 (seqFromList!73 input!2238))))))

(declare-fun b!75584 () Bool)

(assert (=> b!75584 (= e!42144 e!42145)))

(declare-fun res!39518 () Bool)

(declare-fun size!1143 (List!1290) Int)

(assert (=> b!75584 (= res!39518 (< (size!1143 (_2!833 lt!14349)) (size!1143 (list!383 (seqFromList!73 input!2238)))))))

(assert (=> b!75584 (=> (not res!39518) (not e!42145))))

(declare-fun b!75585 () Bool)

(assert (=> b!75585 (= e!42143 (tuple2!1253 Nil!1287 (list!383 (seqFromList!73 input!2238))))))

(assert (= (and d!13262 c!19558) b!75582))

(assert (= (and d!13262 (not c!19558)) b!75585))

(assert (= (and d!13262 c!19557) b!75584))

(assert (= (and d!13262 (not c!19557)) b!75583))

(assert (= (and b!75584 res!39518) b!75581))

(declare-fun m!47276 () Bool)

(assert (=> b!75581 m!47276))

(declare-fun m!47278 () Bool)

(assert (=> b!75582 m!47278))

(declare-fun m!47280 () Bool)

(assert (=> d!13262 m!47280))

(assert (=> d!13262 m!47216))

(declare-fun m!47282 () Bool)

(assert (=> d!13262 m!47282))

(declare-fun m!47284 () Bool)

(assert (=> b!75584 m!47284))

(assert (=> b!75584 m!47216))

(declare-fun m!47286 () Bool)

(assert (=> b!75584 m!47286))

(assert (=> b!75478 d!13262))

(declare-fun d!13264 () Bool)

(declare-fun list!387 (Conc!362) List!1290)

(assert (=> d!13264 (= (list!383 (seqFromList!73 input!2238)) (list!387 (c!19532 (seqFromList!73 input!2238))))))

(declare-fun bs!7854 () Bool)

(assert (= bs!7854 d!13264))

(declare-fun m!47288 () Bool)

(assert (=> bs!7854 m!47288))

(assert (=> b!75478 d!13264))

(declare-fun d!13266 () Bool)

(assert (=> d!13266 (= (inv!1675 (tag!458 (h!6683 (t!20027 rules!2471)))) (= (mod (str.len (value!10851 (tag!458 (h!6683 (t!20027 rules!2471))))) 2) 0))))

(assert (=> b!75497 d!13266))

(declare-fun d!13268 () Bool)

(declare-fun res!39519 () Bool)

(declare-fun e!42146 () Bool)

(assert (=> d!13268 (=> (not res!39519) (not e!42146))))

(assert (=> d!13268 (= res!39519 (semiInverseModEq!42 (toChars!638 (transformation!280 (h!6683 (t!20027 rules!2471)))) (toValue!779 (transformation!280 (h!6683 (t!20027 rules!2471))))))))

(assert (=> d!13268 (= (inv!1678 (transformation!280 (h!6683 (t!20027 rules!2471)))) e!42146)))

(declare-fun b!75586 () Bool)

(assert (=> b!75586 (= e!42146 (equivClasses!38 (toChars!638 (transformation!280 (h!6683 (t!20027 rules!2471)))) (toValue!779 (transformation!280 (h!6683 (t!20027 rules!2471))))))))

(assert (= (and d!13268 res!39519) b!75586))

(declare-fun m!47290 () Bool)

(assert (=> d!13268 m!47290))

(declare-fun m!47292 () Bool)

(assert (=> b!75586 m!47292))

(assert (=> b!75497 d!13268))

(assert (=> d!13222 d!13218))

(declare-fun d!13270 () Bool)

(assert (=> d!13270 (= ($colon$colon!9 (t!20028 lt!14297) (h!6684 lt!14297)) (Cons!1287 (h!6684 lt!14297) (t!20028 lt!14297)))))

(assert (=> d!13222 d!13270))

(declare-fun d!13272 () Bool)

(assert (=> d!13272 (= (list!380 (_1!831 lt!14298)) (list!380 (prepend!25 (seqFromList!72 (t!20028 lt!14297)) (h!6684 lt!14297))))))

(assert (=> d!13272 true))

(declare-fun _$1!9835 () Unit!761)

(assert (=> d!13272 (= (choose!1255 (h!6684 lt!14297) (t!20028 lt!14297) (_1!831 lt!14298)) _$1!9835)))

(declare-fun bs!7855 () Bool)

(assert (= bs!7855 d!13272))

(assert (=> bs!7855 m!47094))

(assert (=> bs!7855 m!47086))

(assert (=> bs!7855 m!47086))

(assert (=> bs!7855 m!47088))

(assert (=> bs!7855 m!47088))

(assert (=> bs!7855 m!47090))

(assert (=> d!13222 d!13272))

(assert (=> d!13222 d!13208))

(assert (=> d!13222 d!13240))

(declare-fun d!13274 () Bool)

(assert (=> d!13274 (= (seqFromList!72 ($colon$colon!9 (t!20028 lt!14297) (h!6684 lt!14297))) (fromListB!21 ($colon$colon!9 (t!20028 lt!14297) (h!6684 lt!14297))))))

(declare-fun bs!7856 () Bool)

(assert (= bs!7856 d!13274))

(assert (=> bs!7856 m!47152))

(declare-fun m!47294 () Bool)

(assert (=> bs!7856 m!47294))

(assert (=> d!13222 d!13274))

(declare-fun d!13276 () Bool)

(assert (=> d!13276 (= (list!380 (seqFromList!72 ($colon$colon!9 (t!20028 lt!14297) (h!6684 lt!14297)))) (list!382 (c!19534 (seqFromList!72 ($colon$colon!9 (t!20028 lt!14297) (h!6684 lt!14297))))))))

(declare-fun bs!7857 () Bool)

(assert (= bs!7857 d!13276))

(declare-fun m!47296 () Bool)

(assert (=> bs!7857 m!47296))

(assert (=> d!13222 d!13276))

(assert (=> d!13222 d!13242))

(declare-fun d!13278 () Bool)

(declare-fun lt!14354 () Int)

(assert (=> d!13278 (= lt!14354 (size!1142 (list!380 (_1!831 lt!14338))))))

(declare-fun size!1144 (Conc!363) Int)

(assert (=> d!13278 (= lt!14354 (size!1144 (c!19534 (_1!831 lt!14338))))))

(assert (=> d!13278 (= (size!1139 (_1!831 lt!14338)) lt!14354)))

(declare-fun bs!7858 () Bool)

(assert (= bs!7858 d!13278))

(assert (=> bs!7858 m!47224))

(assert (=> bs!7858 m!47224))

(declare-fun m!47298 () Bool)

(assert (=> bs!7858 m!47298))

(declare-fun m!47300 () Bool)

(assert (=> bs!7858 m!47300))

(assert (=> d!13246 d!13278))

(declare-fun b!75649 () Bool)

(declare-fun e!42183 () tuple2!1248)

(declare-fun lt!14452 () BalanceConc!728)

(assert (=> b!75649 (= e!42183 (tuple2!1249 (BalanceConc!731 Empty!363) lt!14452))))

(declare-fun lt!14466 () tuple2!1248)

(declare-datatypes ((tuple2!1258 0))(
  ( (tuple2!1259 (_1!836 Token!320) (_2!836 BalanceConc!728)) )
))
(declare-datatypes ((Option!82 0))(
  ( (None!81) (Some!81 (v!12726 tuple2!1258)) )
))
(declare-fun lt!14460 () Option!82)

(declare-fun b!75651 () Bool)

(declare-fun lexRec!17 (LexerInterface!172 List!1292 BalanceConc!728) tuple2!1248)

(assert (=> b!75651 (= lt!14466 (lexRec!17 thiss!19403 rules!2471 (_2!836 (v!12726 lt!14460))))))

(assert (=> b!75651 (= e!42183 (tuple2!1249 (prepend!25 (_1!831 lt!14466) (_1!836 (v!12726 lt!14460))) (_2!831 lt!14466)))))

(declare-fun b!75652 () Bool)

(declare-fun lt!14476 () tuple2!1248)

(declare-fun lt!14459 () Option!82)

(assert (=> b!75652 (= lt!14476 (lexRec!17 thiss!19403 rules!2471 (_2!836 (v!12726 lt!14459))))))

(declare-fun e!42184 () tuple2!1248)

(assert (=> b!75652 (= e!42184 (tuple2!1249 (prepend!25 (_1!831 lt!14476) (_1!836 (v!12726 lt!14459))) (_2!831 lt!14476)))))

(declare-fun b!75653 () Bool)

(assert (=> b!75653 (= e!42184 (tuple2!1249 (BalanceConc!731 Empty!363) (seqFromList!73 input!2238)))))

(declare-fun e!42182 () tuple2!1248)

(declare-fun lt!14474 () Option!82)

(declare-fun b!75654 () Bool)

(declare-fun lt!14471 () BalanceConc!728)

(declare-fun append!18 (BalanceConc!730 Token!320) BalanceConc!730)

(assert (=> b!75654 (= e!42182 (lexTailRecV2!28 thiss!19403 rules!2471 (seqFromList!73 input!2238) lt!14471 (_2!836 (v!12726 lt!14474)) (append!18 (BalanceConc!731 Empty!363) (_1!836 (v!12726 lt!14474)))))))

(declare-fun lt!14484 () tuple2!1248)

(assert (=> b!75654 (= lt!14484 (lexRec!17 thiss!19403 rules!2471 (_2!836 (v!12726 lt!14474))))))

(declare-fun lt!14470 () List!1290)

(assert (=> b!75654 (= lt!14470 (list!383 (BalanceConc!729 Empty!362)))))

(declare-fun lt!14480 () List!1290)

(declare-fun charsOf!27 (Token!320) BalanceConc!728)

(assert (=> b!75654 (= lt!14480 (list!383 (charsOf!27 (_1!836 (v!12726 lt!14474)))))))

(declare-fun lt!14475 () List!1290)

(assert (=> b!75654 (= lt!14475 (list!383 (_2!836 (v!12726 lt!14474))))))

(declare-fun lt!14456 () Unit!761)

(declare-fun lemmaConcatAssociativity!28 (List!1290 List!1290 List!1290) Unit!761)

(assert (=> b!75654 (= lt!14456 (lemmaConcatAssociativity!28 lt!14470 lt!14480 lt!14475))))

(declare-fun ++!92 (List!1290 List!1290) List!1290)

(assert (=> b!75654 (= (++!92 (++!92 lt!14470 lt!14480) lt!14475) (++!92 lt!14470 (++!92 lt!14480 lt!14475)))))

(declare-fun lt!14464 () Unit!761)

(assert (=> b!75654 (= lt!14464 lt!14456)))

(declare-fun maxPrefixZipperSequence!15 (LexerInterface!172 List!1292 BalanceConc!728) Option!82)

(assert (=> b!75654 (= lt!14459 (maxPrefixZipperSequence!15 thiss!19403 rules!2471 (seqFromList!73 input!2238)))))

(declare-fun c!19574 () Bool)

(assert (=> b!75654 (= c!19574 (is-Some!81 lt!14459))))

(assert (=> b!75654 (= (lexRec!17 thiss!19403 rules!2471 (seqFromList!73 input!2238)) e!42184)))

(declare-fun lt!14454 () Unit!761)

(declare-fun Unit!766 () Unit!761)

(assert (=> b!75654 (= lt!14454 Unit!766)))

(declare-fun lt!14457 () List!1293)

(assert (=> b!75654 (= lt!14457 (list!380 (BalanceConc!731 Empty!363)))))

(declare-fun lt!14458 () List!1293)

(assert (=> b!75654 (= lt!14458 (Cons!1287 (_1!836 (v!12726 lt!14474)) Nil!1287))))

(declare-fun lt!14468 () List!1293)

(assert (=> b!75654 (= lt!14468 (list!380 (_1!831 lt!14484)))))

(declare-fun lt!14469 () Unit!761)

(declare-fun lemmaConcatAssociativity!29 (List!1293 List!1293 List!1293) Unit!761)

(assert (=> b!75654 (= lt!14469 (lemmaConcatAssociativity!29 lt!14457 lt!14458 lt!14468))))

(assert (=> b!75654 (= (++!91 (++!91 lt!14457 lt!14458) lt!14468) (++!91 lt!14457 (++!91 lt!14458 lt!14468)))))

(declare-fun lt!14463 () Unit!761)

(assert (=> b!75654 (= lt!14463 lt!14469)))

(declare-fun lt!14465 () List!1290)

(assert (=> b!75654 (= lt!14465 (++!92 (list!383 (BalanceConc!729 Empty!362)) (list!383 (charsOf!27 (_1!836 (v!12726 lt!14474))))))))

(declare-fun lt!14483 () List!1290)

(assert (=> b!75654 (= lt!14483 (list!383 (_2!836 (v!12726 lt!14474))))))

(declare-fun lt!14472 () List!1293)

(assert (=> b!75654 (= lt!14472 (list!380 (append!18 (BalanceConc!731 Empty!363) (_1!836 (v!12726 lt!14474)))))))

(declare-fun lt!14455 () Unit!761)

(declare-fun lemmaLexThenLexPrefix!12 (LexerInterface!172 List!1292 List!1290 List!1290 List!1293 List!1293 List!1290) Unit!761)

(assert (=> b!75654 (= lt!14455 (lemmaLexThenLexPrefix!12 thiss!19403 rules!2471 lt!14465 lt!14483 lt!14472 (list!380 (_1!831 lt!14484)) (list!383 (_2!831 lt!14484))))))

(assert (=> b!75654 (= (lexList!31 thiss!19403 rules!2471 lt!14465) (tuple2!1253 lt!14472 Nil!1284))))

(declare-fun lt!14453 () Unit!761)

(assert (=> b!75654 (= lt!14453 lt!14455)))

(declare-fun ++!93 (BalanceConc!728 BalanceConc!728) BalanceConc!728)

(assert (=> b!75654 (= lt!14452 (++!93 (BalanceConc!729 Empty!362) (charsOf!27 (_1!836 (v!12726 lt!14474)))))))

(assert (=> b!75654 (= lt!14460 (maxPrefixZipperSequence!15 thiss!19403 rules!2471 lt!14452))))

(declare-fun c!19572 () Bool)

(assert (=> b!75654 (= c!19572 (is-Some!81 lt!14460))))

(assert (=> b!75654 (= (lexRec!17 thiss!19403 rules!2471 (++!93 (BalanceConc!729 Empty!362) (charsOf!27 (_1!836 (v!12726 lt!14474))))) e!42183)))

(declare-fun lt!14473 () Unit!761)

(declare-fun Unit!767 () Unit!761)

(assert (=> b!75654 (= lt!14473 Unit!767)))

(assert (=> b!75654 (= lt!14471 (++!93 (BalanceConc!729 Empty!362) (charsOf!27 (_1!836 (v!12726 lt!14474)))))))

(declare-fun lt!14461 () List!1290)

(assert (=> b!75654 (= lt!14461 (list!383 lt!14471))))

(declare-fun lt!14477 () List!1290)

(assert (=> b!75654 (= lt!14477 (list!383 (_2!836 (v!12726 lt!14474))))))

(declare-fun lt!14482 () Unit!761)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!12 (List!1290 List!1290) Unit!761)

(assert (=> b!75654 (= lt!14482 (lemmaConcatTwoListThenFSndIsSuffix!12 lt!14461 lt!14477))))

(declare-fun isSuffix!12 (List!1290 List!1290) Bool)

(assert (=> b!75654 (isSuffix!12 lt!14477 (++!92 lt!14461 lt!14477))))

(declare-fun lt!14481 () Unit!761)

(assert (=> b!75654 (= lt!14481 lt!14482)))

(declare-fun b!75655 () Bool)

(assert (=> b!75655 (= e!42182 (tuple2!1249 (BalanceConc!731 Empty!363) (seqFromList!73 input!2238)))))

(declare-fun b!75650 () Bool)

(declare-fun lt!14478 () tuple2!1248)

(declare-fun e!42185 () Bool)

(assert (=> b!75650 (= e!42185 (= (list!383 (_2!831 lt!14478)) (list!383 (_2!831 (lexRec!17 thiss!19403 rules!2471 (seqFromList!73 input!2238))))))))

(declare-fun d!13280 () Bool)

(assert (=> d!13280 e!42185))

(declare-fun res!39564 () Bool)

(assert (=> d!13280 (=> (not res!39564) (not e!42185))))

(assert (=> d!13280 (= res!39564 (= (list!380 (_1!831 lt!14478)) (list!380 (_1!831 (lexRec!17 thiss!19403 rules!2471 (seqFromList!73 input!2238))))))))

(assert (=> d!13280 (= lt!14478 e!42182)))

(declare-fun c!19573 () Bool)

(assert (=> d!13280 (= c!19573 (is-Some!81 lt!14474))))

(declare-fun maxPrefixZipperSequenceV2!12 (LexerInterface!172 List!1292 BalanceConc!728 BalanceConc!728) Option!82)

(assert (=> d!13280 (= lt!14474 (maxPrefixZipperSequenceV2!12 thiss!19403 rules!2471 (seqFromList!73 input!2238) (seqFromList!73 input!2238)))))

(declare-fun lt!14462 () Unit!761)

(declare-fun lt!14467 () Unit!761)

(assert (=> d!13280 (= lt!14462 lt!14467)))

(declare-fun lt!14479 () List!1290)

(declare-fun lt!14485 () List!1290)

(assert (=> d!13280 (isSuffix!12 lt!14479 (++!92 lt!14485 lt!14479))))

(assert (=> d!13280 (= lt!14467 (lemmaConcatTwoListThenFSndIsSuffix!12 lt!14485 lt!14479))))

(assert (=> d!13280 (= lt!14479 (list!383 (seqFromList!73 input!2238)))))

(assert (=> d!13280 (= lt!14485 (list!383 (BalanceConc!729 Empty!362)))))

(assert (=> d!13280 (= (lexTailRecV2!28 thiss!19403 rules!2471 (seqFromList!73 input!2238) (BalanceConc!729 Empty!362) (seqFromList!73 input!2238) (BalanceConc!731 Empty!363)) lt!14478)))

(assert (= (and d!13280 c!19573) b!75654))

(assert (= (and d!13280 (not c!19573)) b!75655))

(assert (= (and b!75654 c!19574) b!75652))

(assert (= (and b!75654 (not c!19574)) b!75653))

(assert (= (and b!75654 c!19572) b!75651))

(assert (= (and b!75654 (not c!19572)) b!75649))

(assert (= (and d!13280 res!39564) b!75650))

(declare-fun m!47382 () Bool)

(assert (=> d!13280 m!47382))

(declare-fun m!47384 () Bool)

(assert (=> d!13280 m!47384))

(declare-fun m!47386 () Bool)

(assert (=> d!13280 m!47386))

(assert (=> d!13280 m!47382))

(declare-fun m!47388 () Bool)

(assert (=> d!13280 m!47388))

(assert (=> d!13280 m!47080))

(declare-fun m!47390 () Bool)

(assert (=> d!13280 m!47390))

(assert (=> d!13280 m!47080))

(assert (=> d!13280 m!47216))

(assert (=> d!13280 m!47080))

(assert (=> d!13280 m!47080))

(declare-fun m!47392 () Bool)

(assert (=> d!13280 m!47392))

(declare-fun m!47394 () Bool)

(assert (=> d!13280 m!47394))

(declare-fun m!47396 () Bool)

(assert (=> d!13280 m!47396))

(declare-fun m!47398 () Bool)

(assert (=> b!75651 m!47398))

(declare-fun m!47400 () Bool)

(assert (=> b!75651 m!47400))

(declare-fun m!47402 () Bool)

(assert (=> b!75650 m!47402))

(assert (=> b!75650 m!47080))

(assert (=> b!75650 m!47390))

(declare-fun m!47404 () Bool)

(assert (=> b!75650 m!47404))

(declare-fun m!47406 () Bool)

(assert (=> b!75652 m!47406))

(declare-fun m!47408 () Bool)

(assert (=> b!75652 m!47408))

(declare-fun m!47410 () Bool)

(assert (=> b!75654 m!47410))

(declare-fun m!47412 () Bool)

(assert (=> b!75654 m!47412))

(declare-fun m!47414 () Bool)

(assert (=> b!75654 m!47414))

(declare-fun m!47416 () Bool)

(assert (=> b!75654 m!47416))

(declare-fun m!47418 () Bool)

(assert (=> b!75654 m!47418))

(assert (=> b!75654 m!47412))

(declare-fun m!47420 () Bool)

(assert (=> b!75654 m!47420))

(assert (=> b!75654 m!47080))

(assert (=> b!75654 m!47390))

(assert (=> b!75654 m!47396))

(assert (=> b!75654 m!47416))

(declare-fun m!47422 () Bool)

(assert (=> b!75654 m!47422))

(assert (=> b!75654 m!47410))

(declare-fun m!47424 () Bool)

(assert (=> b!75654 m!47424))

(declare-fun m!47426 () Bool)

(assert (=> b!75654 m!47426))

(declare-fun m!47428 () Bool)

(assert (=> b!75654 m!47428))

(declare-fun m!47430 () Bool)

(assert (=> b!75654 m!47430))

(declare-fun m!47432 () Bool)

(assert (=> b!75654 m!47432))

(assert (=> b!75654 m!47080))

(declare-fun m!47434 () Bool)

(assert (=> b!75654 m!47434))

(declare-fun m!47436 () Bool)

(assert (=> b!75654 m!47436))

(declare-fun m!47438 () Bool)

(assert (=> b!75654 m!47438))

(assert (=> b!75654 m!47080))

(declare-fun m!47440 () Bool)

(assert (=> b!75654 m!47440))

(declare-fun m!47442 () Bool)

(assert (=> b!75654 m!47442))

(declare-fun m!47444 () Bool)

(assert (=> b!75654 m!47444))

(declare-fun m!47446 () Bool)

(assert (=> b!75654 m!47446))

(declare-fun m!47448 () Bool)

(assert (=> b!75654 m!47448))

(declare-fun m!47450 () Bool)

(assert (=> b!75654 m!47450))

(assert (=> b!75654 m!47396))

(assert (=> b!75654 m!47434))

(declare-fun m!47452 () Bool)

(assert (=> b!75654 m!47452))

(assert (=> b!75654 m!47448))

(declare-fun m!47454 () Bool)

(assert (=> b!75654 m!47454))

(assert (=> b!75654 m!47444))

(declare-fun m!47456 () Bool)

(assert (=> b!75654 m!47456))

(declare-fun m!47458 () Bool)

(assert (=> b!75654 m!47458))

(assert (=> b!75654 m!47414))

(declare-fun m!47460 () Bool)

(assert (=> b!75654 m!47460))

(assert (=> b!75654 m!47424))

(assert (=> b!75654 m!47434))

(declare-fun m!47462 () Bool)

(assert (=> b!75654 m!47462))

(declare-fun m!47464 () Bool)

(assert (=> b!75654 m!47464))

(assert (=> b!75654 m!47414))

(declare-fun m!47466 () Bool)

(assert (=> b!75654 m!47466))

(assert (=> b!75654 m!47460))

(declare-fun m!47468 () Bool)

(assert (=> b!75654 m!47468))

(assert (=> b!75654 m!47430))

(assert (=> b!75654 m!47458))

(declare-fun m!47470 () Bool)

(assert (=> b!75654 m!47470))

(assert (=> d!13246 d!13280))

(declare-fun bs!7873 () Bool)

(declare-fun d!13322 () Bool)

(assert (= bs!7873 (and d!13322 d!13224)))

(declare-fun lambda!1362 () Int)

(assert (=> bs!7873 (= lambda!1362 lambda!1354)))

(assert (=> d!13322 true))

(declare-fun lt!14486 () Bool)

(assert (=> d!13322 (= lt!14486 (forall!178 (t!20027 rules!2471) lambda!1362))))

(declare-fun e!42186 () Bool)

(assert (=> d!13322 (= lt!14486 e!42186)))

(declare-fun res!39565 () Bool)

(assert (=> d!13322 (=> res!39565 e!42186)))

(assert (=> d!13322 (= res!39565 (not (is-Cons!1286 (t!20027 rules!2471))))))

(assert (=> d!13322 (= (rulesValidInductive!21 thiss!19403 (t!20027 rules!2471)) lt!14486)))

(declare-fun b!75656 () Bool)

(declare-fun e!42187 () Bool)

(assert (=> b!75656 (= e!42186 e!42187)))

(declare-fun res!39566 () Bool)

(assert (=> b!75656 (=> (not res!39566) (not e!42187))))

(assert (=> b!75656 (= res!39566 (ruleValid!10 thiss!19403 (h!6683 (t!20027 rules!2471))))))

(declare-fun b!75657 () Bool)

(assert (=> b!75657 (= e!42187 (rulesValidInductive!21 thiss!19403 (t!20027 (t!20027 rules!2471))))))

(assert (= (and d!13322 (not res!39565)) b!75656))

(assert (= (and b!75656 res!39566) b!75657))

(declare-fun m!47474 () Bool)

(assert (=> d!13322 m!47474))

(declare-fun m!47476 () Bool)

(assert (=> b!75656 m!47476))

(declare-fun m!47478 () Bool)

(assert (=> b!75657 m!47478))

(assert (=> b!75462 d!13322))

(declare-fun d!13328 () Bool)

(declare-fun e!42196 () Bool)

(assert (=> d!13328 e!42196))

(declare-fun res!39575 () Bool)

(assert (=> d!13328 (=> (not res!39575) (not e!42196))))

(declare-fun lt!14489 () BalanceConc!730)

(assert (=> d!13328 (= res!39575 (= (list!380 lt!14489) (t!20028 lt!14297)))))

(declare-fun fromList!10 (List!1293) Conc!363)

(assert (=> d!13328 (= lt!14489 (BalanceConc!731 (fromList!10 (t!20028 lt!14297))))))

(assert (=> d!13328 (= (fromListB!21 (t!20028 lt!14297)) lt!14489)))

(declare-fun b!75666 () Bool)

(assert (=> b!75666 (= e!42196 (isBalanced!64 (fromList!10 (t!20028 lt!14297))))))

(assert (= (and d!13328 res!39575) b!75666))

(declare-fun m!47488 () Bool)

(assert (=> d!13328 m!47488))

(declare-fun m!47490 () Bool)

(assert (=> d!13328 m!47490))

(assert (=> b!75666 m!47490))

(assert (=> b!75666 m!47490))

(declare-fun m!47492 () Bool)

(assert (=> b!75666 m!47492))

(assert (=> d!13218 d!13328))

(declare-fun bs!7877 () Bool)

(declare-fun d!13338 () Bool)

(assert (= bs!7877 (and d!13338 d!13224)))

(declare-fun lambda!1365 () Int)

(assert (=> bs!7877 (= lambda!1365 lambda!1354)))

(declare-fun bs!7878 () Bool)

(assert (= bs!7878 (and d!13338 d!13322)))

(assert (=> bs!7878 (= lambda!1365 lambda!1362)))

(assert (=> d!13338 true))

(declare-fun lt!14492 () Bool)

(assert (=> d!13338 (= lt!14492 (rulesValidInductive!21 thiss!19403 rules!2471))))

(assert (=> d!13338 (= lt!14492 (forall!178 rules!2471 lambda!1365))))

(assert (=> d!13338 (= (rulesValid!50 thiss!19403 rules!2471) lt!14492)))

(declare-fun bs!7879 () Bool)

(assert (= bs!7879 d!13338))

(assert (=> bs!7879 m!47092))

(declare-fun m!47498 () Bool)

(assert (=> bs!7879 m!47498))

(assert (=> d!13206 d!13338))

(declare-fun d!13342 () Bool)

(declare-fun res!39588 () Bool)

(declare-fun e!42207 () Bool)

(assert (=> d!13342 (=> (not res!39588) (not e!42207))))

(declare-fun validRegex!32 (Regex!348) Bool)

(assert (=> d!13342 (= res!39588 (validRegex!32 (regex!280 (h!6683 rules!2471))))))

(assert (=> d!13342 (= (ruleValid!10 thiss!19403 (h!6683 rules!2471)) e!42207)))

(declare-fun b!75679 () Bool)

(declare-fun res!39589 () Bool)

(assert (=> b!75679 (=> (not res!39589) (not e!42207))))

(declare-fun nullable!25 (Regex!348) Bool)

(assert (=> b!75679 (= res!39589 (not (nullable!25 (regex!280 (h!6683 rules!2471)))))))

(declare-fun b!75680 () Bool)

(assert (=> b!75680 (= e!42207 (not (= (tag!458 (h!6683 rules!2471)) (String!1744 ""))))))

(assert (= (and d!13342 res!39588) b!75679))

(assert (= (and b!75679 res!39589) b!75680))

(declare-fun m!47500 () Bool)

(assert (=> d!13342 m!47500))

(declare-fun m!47502 () Bool)

(assert (=> b!75679 m!47502))

(assert (=> b!75461 d!13342))

(declare-fun d!13344 () Bool)

(declare-fun res!39594 () Bool)

(declare-fun e!42212 () Bool)

(assert (=> d!13344 (=> res!39594 e!42212)))

(assert (=> d!13344 (= res!39594 (is-Nil!1286 rules!2471))))

(assert (=> d!13344 (= (forall!178 rules!2471 lambda!1354) e!42212)))

(declare-fun b!75687 () Bool)

(declare-fun e!42213 () Bool)

(assert (=> b!75687 (= e!42212 e!42213)))

(declare-fun res!39595 () Bool)

(assert (=> b!75687 (=> (not res!39595) (not e!42213))))

(declare-fun dynLambda!293 (Int Rule!360) Bool)

(assert (=> b!75687 (= res!39595 (dynLambda!293 lambda!1354 (h!6683 rules!2471)))))

(declare-fun b!75688 () Bool)

(assert (=> b!75688 (= e!42213 (forall!178 (t!20027 rules!2471) lambda!1354))))

(assert (= (and d!13344 (not res!39594)) b!75687))

(assert (= (and b!75687 res!39595) b!75688))

(declare-fun b_lambda!859 () Bool)

(assert (=> (not b_lambda!859) (not b!75687)))

(declare-fun m!47506 () Bool)

(assert (=> b!75687 m!47506))

(declare-fun m!47508 () Bool)

(assert (=> b!75688 m!47508))

(assert (=> d!13224 d!13344))

(declare-fun d!13348 () Bool)

(assert (=> d!13348 (= (isEmpty!350 (list!383 (_2!831 lt!14298))) (is-Nil!1284 (list!383 (_2!831 lt!14298))))))

(assert (=> d!13244 d!13348))

(declare-fun d!13350 () Bool)

(assert (=> d!13350 (= (list!383 (_2!831 lt!14298)) (list!387 (c!19532 (_2!831 lt!14298))))))

(declare-fun bs!7881 () Bool)

(assert (= bs!7881 d!13350))

(declare-fun m!47510 () Bool)

(assert (=> bs!7881 m!47510))

(assert (=> d!13244 d!13350))

(declare-fun d!13352 () Bool)

(declare-fun lt!14495 () Bool)

(assert (=> d!13352 (= lt!14495 (isEmpty!350 (list!387 (c!19532 (_2!831 lt!14298)))))))

(declare-fun size!1145 (Conc!362) Int)

(assert (=> d!13352 (= lt!14495 (= (size!1145 (c!19532 (_2!831 lt!14298))) 0))))

(assert (=> d!13352 (= (isEmpty!351 (c!19532 (_2!831 lt!14298))) lt!14495)))

(declare-fun bs!7882 () Bool)

(assert (= bs!7882 d!13352))

(assert (=> bs!7882 m!47510))

(assert (=> bs!7882 m!47510))

(declare-fun m!47520 () Bool)

(assert (=> bs!7882 m!47520))

(declare-fun m!47522 () Bool)

(assert (=> bs!7882 m!47522))

(assert (=> d!13244 d!13352))

(declare-fun d!13356 () Bool)

(declare-fun res!39615 () Bool)

(declare-fun e!42230 () Bool)

(assert (=> d!13356 (=> res!39615 e!42230)))

(assert (=> d!13356 (= res!39615 (not (is-Node!363 (prepend!27 (c!19534 (seqFromList!72 (t!20028 lt!14297))) (h!6684 lt!14297)))))))

(assert (=> d!13356 (= (isBalanced!64 (prepend!27 (c!19534 (seqFromList!72 (t!20028 lt!14297))) (h!6684 lt!14297))) e!42230)))

(declare-fun b!75720 () Bool)

(declare-fun res!39616 () Bool)

(declare-fun e!42229 () Bool)

(assert (=> b!75720 (=> (not res!39616) (not e!42229))))

(assert (=> b!75720 (= res!39616 (isBalanced!64 (right!1306 (prepend!27 (c!19534 (seqFromList!72 (t!20028 lt!14297))) (h!6684 lt!14297)))))))

(declare-fun b!75721 () Bool)

(declare-fun res!39613 () Bool)

(assert (=> b!75721 (=> (not res!39613) (not e!42229))))

(declare-fun isEmpty!357 (Conc!363) Bool)

(assert (=> b!75721 (= res!39613 (not (isEmpty!357 (left!976 (prepend!27 (c!19534 (seqFromList!72 (t!20028 lt!14297))) (h!6684 lt!14297))))))))

(declare-fun b!75722 () Bool)

(declare-fun res!39612 () Bool)

(assert (=> b!75722 (=> (not res!39612) (not e!42229))))

(assert (=> b!75722 (= res!39612 (isBalanced!64 (left!976 (prepend!27 (c!19534 (seqFromList!72 (t!20028 lt!14297))) (h!6684 lt!14297)))))))

(declare-fun b!75723 () Bool)

(assert (=> b!75723 (= e!42230 e!42229)))

(declare-fun res!39614 () Bool)

(assert (=> b!75723 (=> (not res!39614) (not e!42229))))

(declare-fun height!21 (Conc!363) Int)

(assert (=> b!75723 (= res!39614 (<= (- 1) (- (height!21 (left!976 (prepend!27 (c!19534 (seqFromList!72 (t!20028 lt!14297))) (h!6684 lt!14297)))) (height!21 (right!1306 (prepend!27 (c!19534 (seqFromList!72 (t!20028 lt!14297))) (h!6684 lt!14297)))))))))

(declare-fun b!75724 () Bool)

(declare-fun res!39611 () Bool)

(assert (=> b!75724 (=> (not res!39611) (not e!42229))))

(assert (=> b!75724 (= res!39611 (<= (- (height!21 (left!976 (prepend!27 (c!19534 (seqFromList!72 (t!20028 lt!14297))) (h!6684 lt!14297)))) (height!21 (right!1306 (prepend!27 (c!19534 (seqFromList!72 (t!20028 lt!14297))) (h!6684 lt!14297))))) 1))))

(declare-fun b!75725 () Bool)

(assert (=> b!75725 (= e!42229 (not (isEmpty!357 (right!1306 (prepend!27 (c!19534 (seqFromList!72 (t!20028 lt!14297))) (h!6684 lt!14297))))))))

(assert (= (and d!13356 (not res!39615)) b!75723))

(assert (= (and b!75723 res!39614) b!75724))

(assert (= (and b!75724 res!39611) b!75722))

(assert (= (and b!75722 res!39612) b!75720))

(assert (= (and b!75720 res!39616) b!75721))

(assert (= (and b!75721 res!39613) b!75725))

(declare-fun m!47538 () Bool)

(assert (=> b!75724 m!47538))

(declare-fun m!47540 () Bool)

(assert (=> b!75724 m!47540))

(declare-fun m!47542 () Bool)

(assert (=> b!75721 m!47542))

(declare-fun m!47544 () Bool)

(assert (=> b!75722 m!47544))

(declare-fun m!47546 () Bool)

(assert (=> b!75725 m!47546))

(assert (=> b!75723 m!47538))

(assert (=> b!75723 m!47540))

(declare-fun m!47548 () Bool)

(assert (=> b!75720 m!47548))

(assert (=> d!13240 d!13356))

(declare-fun d!13362 () Bool)

(declare-fun e!42233 () Bool)

(assert (=> d!13362 e!42233))

(declare-fun res!39619 () Bool)

(assert (=> d!13362 (=> (not res!39619) (not e!42233))))

(declare-fun lt!14504 () Conc!363)

(assert (=> d!13362 (= res!39619 (isBalanced!64 lt!14504))))

(declare-fun ++!94 (Conc!363 Conc!363) Conc!363)

(declare-fun fill!6 (Int Token!320) IArray!727)

(assert (=> d!13362 (= lt!14504 (++!94 (Leaf!639 (fill!6 1 (h!6684 lt!14297)) 1) (c!19534 (seqFromList!72 (t!20028 lt!14297)))))))

(assert (=> d!13362 (isBalanced!64 (c!19534 (seqFromList!72 (t!20028 lt!14297))))))

(assert (=> d!13362 (= (prepend!27 (c!19534 (seqFromList!72 (t!20028 lt!14297))) (h!6684 lt!14297)) lt!14504)))

(declare-fun b!75732 () Bool)

(assert (=> b!75732 (= e!42233 (= (list!382 lt!14504) (Cons!1287 (h!6684 lt!14297) (list!382 (c!19534 (seqFromList!72 (t!20028 lt!14297)))))))))

(assert (= (and d!13362 res!39619) b!75732))

(declare-fun m!47556 () Bool)

(assert (=> d!13362 m!47556))

(declare-fun m!47558 () Bool)

(assert (=> d!13362 m!47558))

(declare-fun m!47560 () Bool)

(assert (=> d!13362 m!47560))

(declare-fun m!47562 () Bool)

(assert (=> d!13362 m!47562))

(declare-fun m!47564 () Bool)

(assert (=> b!75732 m!47564))

(declare-fun m!47566 () Bool)

(assert (=> b!75732 m!47566))

(assert (=> d!13240 d!13362))

(declare-fun b!75735 () Bool)

(declare-fun e!42235 () List!1293)

(assert (=> b!75735 (= e!42235 (list!386 (xs!2942 (c!19534 (_1!831 lt!14298)))))))

(declare-fun d!13368 () Bool)

(declare-fun c!19585 () Bool)

(assert (=> d!13368 (= c!19585 (is-Empty!363 (c!19534 (_1!831 lt!14298))))))

(declare-fun e!42234 () List!1293)

(assert (=> d!13368 (= (list!382 (c!19534 (_1!831 lt!14298))) e!42234)))

(declare-fun b!75733 () Bool)

(assert (=> b!75733 (= e!42234 Nil!1287)))

(declare-fun b!75734 () Bool)

(assert (=> b!75734 (= e!42234 e!42235)))

(declare-fun c!19586 () Bool)

(assert (=> b!75734 (= c!19586 (is-Leaf!639 (c!19534 (_1!831 lt!14298))))))

(declare-fun b!75736 () Bool)

(assert (=> b!75736 (= e!42235 (++!91 (list!382 (left!976 (c!19534 (_1!831 lt!14298)))) (list!382 (right!1306 (c!19534 (_1!831 lt!14298))))))))

(assert (= (and d!13368 c!19585) b!75733))

(assert (= (and d!13368 (not c!19585)) b!75734))

(assert (= (and b!75734 c!19586) b!75735))

(assert (= (and b!75734 (not c!19586)) b!75736))

(declare-fun m!47568 () Bool)

(assert (=> b!75735 m!47568))

(declare-fun m!47570 () Bool)

(assert (=> b!75736 m!47570))

(declare-fun m!47572 () Bool)

(assert (=> b!75736 m!47572))

(assert (=> b!75736 m!47570))

(assert (=> b!75736 m!47572))

(declare-fun m!47574 () Bool)

(assert (=> b!75736 m!47574))

(assert (=> d!13208 d!13368))

(declare-fun d!13370 () Bool)

(assert (=> d!13370 (= (list!383 (_2!831 lt!14338)) (list!387 (c!19532 (_2!831 lt!14338))))))

(declare-fun bs!7885 () Bool)

(assert (= bs!7885 d!13370))

(declare-fun m!47576 () Bool)

(assert (=> bs!7885 m!47576))

(assert (=> b!75481 d!13370))

(assert (=> b!75481 d!13262))

(assert (=> b!75481 d!13264))

(declare-fun d!13372 () Bool)

(declare-fun lt!14507 () Bool)

(assert (=> d!13372 (= lt!14507 (isEmpty!356 (list!380 (_1!831 lt!14338))))))

(assert (=> d!13372 (= lt!14507 (isEmpty!357 (c!19534 (_1!831 lt!14338))))))

(assert (=> d!13372 (= (isEmpty!352 (_1!831 lt!14338)) lt!14507)))

(declare-fun bs!7886 () Bool)

(assert (= bs!7886 d!13372))

(assert (=> bs!7886 m!47224))

(assert (=> bs!7886 m!47224))

(declare-fun m!47578 () Bool)

(assert (=> bs!7886 m!47578))

(declare-fun m!47580 () Bool)

(assert (=> bs!7886 m!47580))

(assert (=> b!75480 d!13372))

(declare-fun d!13374 () Bool)

(declare-fun e!42238 () Bool)

(assert (=> d!13374 e!42238))

(declare-fun res!39622 () Bool)

(assert (=> d!13374 (=> (not res!39622) (not e!42238))))

(declare-fun lt!14510 () BalanceConc!728)

(assert (=> d!13374 (= res!39622 (= (list!383 lt!14510) input!2238))))

(declare-fun fromList!11 (List!1290) Conc!362)

(assert (=> d!13374 (= lt!14510 (BalanceConc!729 (fromList!11 input!2238)))))

(assert (=> d!13374 (= (fromListB!22 input!2238) lt!14510)))

(declare-fun b!75739 () Bool)

(declare-fun isBalanced!66 (Conc!362) Bool)

(assert (=> b!75739 (= e!42238 (isBalanced!66 (fromList!11 input!2238)))))

(assert (= (and d!13374 res!39622) b!75739))

(declare-fun m!47582 () Bool)

(assert (=> d!13374 m!47582))

(declare-fun m!47584 () Bool)

(assert (=> d!13374 m!47584))

(assert (=> b!75739 m!47584))

(assert (=> b!75739 m!47584))

(declare-fun m!47586 () Bool)

(assert (=> b!75739 m!47586))

(assert (=> d!13248 d!13374))

(declare-fun d!13376 () Bool)

(assert (=> d!13376 true))

(declare-fun order!487 () Int)

(declare-fun order!485 () Int)

(declare-fun lambda!1374 () Int)

(declare-fun dynLambda!294 (Int Int) Int)

(declare-fun dynLambda!295 (Int Int) Int)

(assert (=> d!13376 (< (dynLambda!294 order!485 (toChars!638 (transformation!280 (h!6683 rules!2471)))) (dynLambda!295 order!487 lambda!1374))))

(assert (=> d!13376 true))

(declare-fun order!489 () Int)

(declare-fun dynLambda!296 (Int Int) Int)

(assert (=> d!13376 (< (dynLambda!296 order!489 (toValue!779 (transformation!280 (h!6683 rules!2471)))) (dynLambda!295 order!487 lambda!1374))))

(declare-fun Forall!34 (Int) Bool)

(assert (=> d!13376 (= (semiInverseModEq!42 (toChars!638 (transformation!280 (h!6683 rules!2471))) (toValue!779 (transformation!280 (h!6683 rules!2471)))) (Forall!34 lambda!1374))))

(declare-fun bs!7887 () Bool)

(assert (= bs!7887 d!13376))

(declare-fun m!47588 () Bool)

(assert (=> bs!7887 m!47588))

(assert (=> d!13214 d!13376))

(declare-fun d!13378 () Bool)

(assert (=> d!13378 (= (list!380 lt!14332) (list!382 (c!19534 lt!14332)))))

(declare-fun bs!7888 () Bool)

(assert (= bs!7888 d!13378))

(declare-fun m!47590 () Bool)

(assert (=> bs!7888 m!47590))

(assert (=> b!75467 d!13378))

(declare-fun d!13380 () Bool)

(assert (=> d!13380 (= (list!380 (seqFromList!72 (t!20028 lt!14297))) (list!382 (c!19534 (seqFromList!72 (t!20028 lt!14297)))))))

(declare-fun bs!7889 () Bool)

(assert (= bs!7889 d!13380))

(assert (=> bs!7889 m!47566))

(assert (=> b!75467 d!13380))

(declare-fun d!13382 () Bool)

(declare-fun lt!14513 () Int)

(assert (=> d!13382 (= lt!14513 (size!1143 (list!383 (_2!831 lt!14338))))))

(assert (=> d!13382 (= lt!14513 (size!1145 (c!19532 (_2!831 lt!14338))))))

(assert (=> d!13382 (= (size!1138 (_2!831 lt!14338)) lt!14513)))

(declare-fun bs!7890 () Bool)

(assert (= bs!7890 d!13382))

(assert (=> bs!7890 m!47214))

(assert (=> bs!7890 m!47214))

(declare-fun m!47592 () Bool)

(assert (=> bs!7890 m!47592))

(declare-fun m!47594 () Bool)

(assert (=> bs!7890 m!47594))

(assert (=> b!75479 d!13382))

(declare-fun d!13384 () Bool)

(declare-fun lt!14514 () Int)

(assert (=> d!13384 (= lt!14514 (size!1143 (list!383 (seqFromList!73 input!2238))))))

(assert (=> d!13384 (= lt!14514 (size!1145 (c!19532 (seqFromList!73 input!2238))))))

(assert (=> d!13384 (= (size!1138 (seqFromList!73 input!2238)) lt!14514)))

(declare-fun bs!7891 () Bool)

(assert (= bs!7891 d!13384))

(assert (=> bs!7891 m!47080))

(assert (=> bs!7891 m!47216))

(assert (=> bs!7891 m!47216))

(assert (=> bs!7891 m!47286))

(declare-fun m!47596 () Bool)

(assert (=> bs!7891 m!47596))

(assert (=> b!75479 d!13384))

(declare-fun d!13386 () Bool)

(assert (=> d!13386 true))

(declare-fun order!491 () Int)

(declare-fun lambda!1377 () Int)

(declare-fun dynLambda!297 (Int Int) Int)

(assert (=> d!13386 (< (dynLambda!296 order!489 (toValue!779 (transformation!280 (h!6683 rules!2471)))) (dynLambda!297 order!491 lambda!1377))))

(declare-fun Forall2!22 (Int) Bool)

(assert (=> d!13386 (= (equivClasses!38 (toChars!638 (transformation!280 (h!6683 rules!2471))) (toValue!779 (transformation!280 (h!6683 rules!2471)))) (Forall2!22 lambda!1377))))

(declare-fun bs!7892 () Bool)

(assert (= bs!7892 d!13386))

(declare-fun m!47598 () Bool)

(assert (=> bs!7892 m!47598))

(assert (=> b!75434 d!13386))

(declare-fun e!42241 () Bool)

(assert (=> b!75497 (= tp!49213 e!42241)))

(declare-fun b!75748 () Bool)

(assert (=> b!75748 (= e!42241 tp_is_empty!619)))

(declare-fun b!75751 () Bool)

(declare-fun tp!49262 () Bool)

(declare-fun tp!49260 () Bool)

(assert (=> b!75751 (= e!42241 (and tp!49262 tp!49260))))

(declare-fun b!75749 () Bool)

(declare-fun tp!49261 () Bool)

(declare-fun tp!49259 () Bool)

(assert (=> b!75749 (= e!42241 (and tp!49261 tp!49259))))

(declare-fun b!75750 () Bool)

(declare-fun tp!49263 () Bool)

(assert (=> b!75750 (= e!42241 tp!49263)))

(assert (= (and b!75497 (is-ElementMatch!348 (regex!280 (h!6683 (t!20027 rules!2471))))) b!75748))

(assert (= (and b!75497 (is-Concat!618 (regex!280 (h!6683 (t!20027 rules!2471))))) b!75749))

(assert (= (and b!75497 (is-Star!348 (regex!280 (h!6683 (t!20027 rules!2471))))) b!75750))

(assert (= (and b!75497 (is-Union!348 (regex!280 (h!6683 (t!20027 rules!2471))))) b!75751))

(declare-fun e!42242 () Bool)

(assert (=> b!75511 (= tp!49228 e!42242)))

(declare-fun b!75752 () Bool)

(assert (=> b!75752 (= e!42242 tp_is_empty!619)))

(declare-fun b!75755 () Bool)

(declare-fun tp!49267 () Bool)

(declare-fun tp!49265 () Bool)

(assert (=> b!75755 (= e!42242 (and tp!49267 tp!49265))))

(declare-fun b!75753 () Bool)

(declare-fun tp!49266 () Bool)

(declare-fun tp!49264 () Bool)

(assert (=> b!75753 (= e!42242 (and tp!49266 tp!49264))))

(declare-fun b!75754 () Bool)

(declare-fun tp!49268 () Bool)

(assert (=> b!75754 (= e!42242 tp!49268)))

(assert (= (and b!75511 (is-ElementMatch!348 (reg!677 (regex!280 (h!6683 rules!2471))))) b!75752))

(assert (= (and b!75511 (is-Concat!618 (reg!677 (regex!280 (h!6683 rules!2471))))) b!75753))

(assert (= (and b!75511 (is-Star!348 (reg!677 (regex!280 (h!6683 rules!2471))))) b!75754))

(assert (= (and b!75511 (is-Union!348 (reg!677 (regex!280 (h!6683 rules!2471))))) b!75755))

(declare-fun b!75758 () Bool)

(declare-fun b_free!2381 () Bool)

(declare-fun b_next!2381 () Bool)

(assert (=> b!75758 (= b_free!2381 (not b_next!2381))))

(declare-fun tp!49271 () Bool)

(declare-fun b_and!3423 () Bool)

(assert (=> b!75758 (= tp!49271 b_and!3423)))

(declare-fun b_free!2383 () Bool)

(declare-fun b_next!2383 () Bool)

(assert (=> b!75758 (= b_free!2383 (not b_next!2383))))

(declare-fun tp!49269 () Bool)

(declare-fun b_and!3425 () Bool)

(assert (=> b!75758 (= tp!49269 b_and!3425)))

(declare-fun e!42246 () Bool)

(assert (=> b!75758 (= e!42246 (and tp!49271 tp!49269))))

(declare-fun e!42244 () Bool)

(declare-fun b!75757 () Bool)

(declare-fun tp!49272 () Bool)

(assert (=> b!75757 (= e!42244 (and tp!49272 (inv!1675 (tag!458 (h!6683 (t!20027 (t!20027 rules!2471))))) (inv!1678 (transformation!280 (h!6683 (t!20027 (t!20027 rules!2471))))) e!42246))))

(declare-fun b!75756 () Bool)

(declare-fun e!42243 () Bool)

(declare-fun tp!49270 () Bool)

(assert (=> b!75756 (= e!42243 (and e!42244 tp!49270))))

(assert (=> b!75496 (= tp!49211 e!42243)))

(assert (= b!75757 b!75758))

(assert (= b!75756 b!75757))

(assert (= (and b!75496 (is-Cons!1286 (t!20027 (t!20027 rules!2471)))) b!75756))

(declare-fun m!47600 () Bool)

(assert (=> b!75757 m!47600))

(declare-fun m!47602 () Bool)

(assert (=> b!75757 m!47602))

(declare-fun b!75759 () Bool)

(declare-fun e!42247 () Bool)

(declare-fun tp!49273 () Bool)

(assert (=> b!75759 (= e!42247 (and tp_is_empty!619 tp!49273))))

(assert (=> b!75487 (= tp!49201 e!42247)))

(assert (= (and b!75487 (is-Cons!1284 (t!20025 (t!20025 input!2238)))) b!75759))

(declare-fun e!42248 () Bool)

(assert (=> b!75512 (= tp!49227 e!42248)))

(declare-fun b!75760 () Bool)

(assert (=> b!75760 (= e!42248 tp_is_empty!619)))

(declare-fun b!75763 () Bool)

(declare-fun tp!49277 () Bool)

(declare-fun tp!49275 () Bool)

(assert (=> b!75763 (= e!42248 (and tp!49277 tp!49275))))

(declare-fun b!75761 () Bool)

(declare-fun tp!49276 () Bool)

(declare-fun tp!49274 () Bool)

(assert (=> b!75761 (= e!42248 (and tp!49276 tp!49274))))

(declare-fun b!75762 () Bool)

(declare-fun tp!49278 () Bool)

(assert (=> b!75762 (= e!42248 tp!49278)))

(assert (= (and b!75512 (is-ElementMatch!348 (regOne!1209 (regex!280 (h!6683 rules!2471))))) b!75760))

(assert (= (and b!75512 (is-Concat!618 (regOne!1209 (regex!280 (h!6683 rules!2471))))) b!75761))

(assert (= (and b!75512 (is-Star!348 (regOne!1209 (regex!280 (h!6683 rules!2471))))) b!75762))

(assert (= (and b!75512 (is-Union!348 (regOne!1209 (regex!280 (h!6683 rules!2471))))) b!75763))

(declare-fun e!42249 () Bool)

(assert (=> b!75512 (= tp!49225 e!42249)))

(declare-fun b!75764 () Bool)

(assert (=> b!75764 (= e!42249 tp_is_empty!619)))

(declare-fun b!75767 () Bool)

(declare-fun tp!49282 () Bool)

(declare-fun tp!49280 () Bool)

(assert (=> b!75767 (= e!42249 (and tp!49282 tp!49280))))

(declare-fun b!75765 () Bool)

(declare-fun tp!49281 () Bool)

(declare-fun tp!49279 () Bool)

(assert (=> b!75765 (= e!42249 (and tp!49281 tp!49279))))

(declare-fun b!75766 () Bool)

(declare-fun tp!49283 () Bool)

(assert (=> b!75766 (= e!42249 tp!49283)))

(assert (= (and b!75512 (is-ElementMatch!348 (regTwo!1209 (regex!280 (h!6683 rules!2471))))) b!75764))

(assert (= (and b!75512 (is-Concat!618 (regTwo!1209 (regex!280 (h!6683 rules!2471))))) b!75765))

(assert (= (and b!75512 (is-Star!348 (regTwo!1209 (regex!280 (h!6683 rules!2471))))) b!75766))

(assert (= (and b!75512 (is-Union!348 (regTwo!1209 (regex!280 (h!6683 rules!2471))))) b!75767))

(declare-fun e!42250 () Bool)

(assert (=> b!75510 (= tp!49226 e!42250)))

(declare-fun b!75768 () Bool)

(assert (=> b!75768 (= e!42250 tp_is_empty!619)))

(declare-fun b!75771 () Bool)

(declare-fun tp!49287 () Bool)

(declare-fun tp!49285 () Bool)

(assert (=> b!75771 (= e!42250 (and tp!49287 tp!49285))))

(declare-fun b!75769 () Bool)

(declare-fun tp!49286 () Bool)

(declare-fun tp!49284 () Bool)

(assert (=> b!75769 (= e!42250 (and tp!49286 tp!49284))))

(declare-fun b!75770 () Bool)

(declare-fun tp!49288 () Bool)

(assert (=> b!75770 (= e!42250 tp!49288)))

(assert (= (and b!75510 (is-ElementMatch!348 (regOne!1208 (regex!280 (h!6683 rules!2471))))) b!75768))

(assert (= (and b!75510 (is-Concat!618 (regOne!1208 (regex!280 (h!6683 rules!2471))))) b!75769))

(assert (= (and b!75510 (is-Star!348 (regOne!1208 (regex!280 (h!6683 rules!2471))))) b!75770))

(assert (= (and b!75510 (is-Union!348 (regOne!1208 (regex!280 (h!6683 rules!2471))))) b!75771))

(declare-fun e!42251 () Bool)

(assert (=> b!75510 (= tp!49224 e!42251)))

(declare-fun b!75772 () Bool)

(assert (=> b!75772 (= e!42251 tp_is_empty!619)))

(declare-fun b!75775 () Bool)

(declare-fun tp!49292 () Bool)

(declare-fun tp!49290 () Bool)

(assert (=> b!75775 (= e!42251 (and tp!49292 tp!49290))))

(declare-fun b!75773 () Bool)

(declare-fun tp!49291 () Bool)

(declare-fun tp!49289 () Bool)

(assert (=> b!75773 (= e!42251 (and tp!49291 tp!49289))))

(declare-fun b!75774 () Bool)

(declare-fun tp!49293 () Bool)

(assert (=> b!75774 (= e!42251 tp!49293)))

(assert (= (and b!75510 (is-ElementMatch!348 (regTwo!1208 (regex!280 (h!6683 rules!2471))))) b!75772))

(assert (= (and b!75510 (is-Concat!618 (regTwo!1208 (regex!280 (h!6683 rules!2471))))) b!75773))

(assert (= (and b!75510 (is-Star!348 (regTwo!1208 (regex!280 (h!6683 rules!2471))))) b!75774))

(assert (= (and b!75510 (is-Union!348 (regTwo!1208 (regex!280 (h!6683 rules!2471))))) b!75775))

(declare-fun b_lambda!861 () Bool)

(assert (= b_lambda!859 (or d!13224 b_lambda!861)))

(declare-fun bs!7893 () Bool)

(declare-fun d!13388 () Bool)

(assert (= bs!7893 (and d!13388 d!13224)))

(assert (=> bs!7893 (= (dynLambda!293 lambda!1354 (h!6683 rules!2471)) (ruleValid!10 thiss!19403 (h!6683 rules!2471)))))

(assert (=> bs!7893 m!47194))

(assert (=> b!75687 d!13388))

(push 1)

(assert (not d!13352))

(assert (not d!13384))

(assert (not b!75770))

(assert (not b!75666))

(assert (not b!75754))

(assert b_and!3425)

(assert (not b!75720))

(assert (not b!75763))

(assert (not d!13322))

(assert (not d!13268))

(assert (not b!75739))

(assert (not b!75755))

(assert (not d!13262))

(assert (not b!75766))

(assert (not b!75756))

(assert (not b!75654))

(assert (not b!75652))

(assert (not b!75750))

(assert (not d!13362))

(assert (not d!13276))

(assert (not b!75724))

(assert (not b_next!2365))

(assert (not b!75581))

(assert (not b!75761))

(assert (not b!75749))

(assert (not b!75688))

(assert (not b!75769))

(assert (not b!75651))

(assert tp_is_empty!619)

(assert (not b!75657))

(assert (not d!13372))

(assert (not b!75762))

(assert (not b!75679))

(assert (not d!13370))

(assert (not b!75723))

(assert (not b!75650))

(assert (not b!75656))

(assert (not b!75774))

(assert (not b!75725))

(assert (not b!75753))

(assert (not b!75732))

(assert (not b_next!2373))

(assert (not d!13260))

(assert (not d!13386))

(assert b_and!3409)

(assert (not b_next!2375))

(assert (not b!75722))

(assert (not b!75527))

(assert (not b!75759))

(assert (not b!75765))

(assert (not bs!7893))

(assert (not d!13380))

(assert (not b!75526))

(assert (not d!13328))

(assert (not b_next!2381))

(assert (not b!75584))

(assert b_and!3417)

(assert (not d!13378))

(assert (not b!75757))

(assert b_and!3423)

(assert (not b!75773))

(assert (not d!13374))

(assert (not b!75562))

(assert (not b_next!2367))

(assert (not b!75771))

(assert (not d!13376))

(assert b_and!3415)

(assert (not b!75721))

(assert (not b!75735))

(assert b_and!3407)

(assert (not d!13274))

(assert (not d!13338))

(assert (not d!13280))

(assert (not b!75767))

(assert (not b!75775))

(assert (not b!75586))

(assert (not d!13350))

(assert (not b!75736))

(assert (not b!75751))

(assert (not b!75582))

(assert (not d!13272))

(assert (not b!75561))

(assert (not d!13382))

(assert (not d!13264))

(assert (not b_lambda!861))

(assert (not d!13342))

(assert (not d!13278))

(assert (not b_next!2383))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3425)

(assert (not b_next!2365))

(assert (not b_next!2373))

(assert b_and!3409)

(assert (not b_next!2375))

(assert (not b_next!2381))

(assert b_and!3417)

(assert b_and!3423)

(assert b_and!3407)

(assert (not b_next!2383))

(assert (not b_next!2367))

(assert b_and!3415)

(check-sat)

(pop 1)


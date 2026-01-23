; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!8892 () Bool)

(assert start!8892)

(declare-fun b!97269 () Bool)

(declare-fun b_free!2885 () Bool)

(declare-fun b_next!2885 () Bool)

(assert (=> b!97269 (= b_free!2885 (not b_next!2885))))

(declare-fun tp!56099 () Bool)

(declare-fun b_and!4351 () Bool)

(assert (=> b!97269 (= tp!56099 b_and!4351)))

(declare-fun b_free!2887 () Bool)

(declare-fun b_next!2887 () Bool)

(assert (=> b!97269 (= b_free!2887 (not b_next!2887))))

(declare-fun tp!56097 () Bool)

(declare-fun b_and!4353 () Bool)

(assert (=> b!97269 (= tp!56097 b_and!4353)))

(declare-fun e!53855 () Bool)

(assert (=> b!97269 (= e!53855 (and tp!56099 tp!56097))))

(declare-fun b!97270 () Bool)

(declare-fun res!47451 () Bool)

(declare-fun e!53853 () Bool)

(assert (=> b!97270 (=> (not res!47451) (not e!53853))))

(declare-datatypes ((C!1742 0))(
  ( (C!1743 (val!478 Int)) )
))
(declare-datatypes ((List!1572 0))(
  ( (Nil!1566) (Cons!1566 (h!6963 C!1742) (t!21087 List!1572)) )
))
(declare-datatypes ((IArray!969 0))(
  ( (IArray!970 (innerList!542 List!1572)) )
))
(declare-datatypes ((Conc!484 0))(
  ( (Node!484 (left!1192 Conc!484) (right!1522 Conc!484) (csize!1198 Int) (cheight!695 Int)) (Leaf!791 (xs!3071 IArray!969) (csize!1199 Int)) (Empty!484) )
))
(declare-datatypes ((BalanceConc!972 0))(
  ( (BalanceConc!973 (c!23854 Conc!484)) )
))
(declare-datatypes ((Regex!410 0))(
  ( (ElementMatch!410 (c!23855 C!1742)) (Concat!742 (regOne!1332 Regex!410) (regTwo!1332 Regex!410)) (EmptyExpr!410) (Star!410 (reg!739 Regex!410)) (EmptyLang!410) (Union!410 (regOne!1333 Regex!410) (regTwo!1333 Regex!410)) )
))
(declare-datatypes ((String!2053 0))(
  ( (String!2054 (value!12616 String)) )
))
(declare-datatypes ((List!1573 0))(
  ( (Nil!1567) (Cons!1567 (h!6964 (_ BitVec 16)) (t!21088 List!1573)) )
))
(declare-datatypes ((TokenValue!332 0))(
  ( (FloatLiteralValue!664 (text!2769 List!1573)) (TokenValueExt!331 (__x!1759 Int)) (Broken!1660 (value!12617 List!1573)) (Object!337) (End!332) (Def!332) (Underscore!332) (Match!332) (Else!332) (Error!332) (Case!332) (If!332) (Extends!332) (Abstract!332) (Class!332) (Val!332) (DelimiterValue!664 (del!392 List!1573)) (KeywordValue!338 (value!12618 List!1573)) (CommentValue!664 (value!12619 List!1573)) (WhitespaceValue!664 (value!12620 List!1573)) (IndentationValue!332 (value!12621 List!1573)) (String!2055) (Int32!332) (Broken!1661 (value!12622 List!1573)) (Boolean!333) (Unit!1024) (OperatorValue!335 (op!392 List!1573)) (IdentifierValue!664 (value!12623 List!1573)) (IdentifierValue!665 (value!12624 List!1573)) (WhitespaceValue!665 (value!12625 List!1573)) (True!664) (False!664) (Broken!1662 (value!12626 List!1573)) (Broken!1663 (value!12627 List!1573)) (True!665) (RightBrace!332) (RightBracket!332) (Colon!332) (Null!332) (Comma!332) (LeftBracket!332) (False!665) (LeftBrace!332) (ImaginaryLiteralValue!332 (text!2770 List!1573)) (StringLiteralValue!996 (value!12628 List!1573)) (EOFValue!332 (value!12629 List!1573)) (IdentValue!332 (value!12630 List!1573)) (DelimiterValue!665 (value!12631 List!1573)) (DedentValue!332 (value!12632 List!1573)) (NewLineValue!332 (value!12633 List!1573)) (IntegerValue!996 (value!12634 (_ BitVec 32)) (text!2771 List!1573)) (IntegerValue!997 (value!12635 Int) (text!2772 List!1573)) (Times!332) (Or!332) (Equal!332) (Minus!332) (Broken!1664 (value!12636 List!1573)) (And!332) (Div!332) (LessEqual!332) (Mod!332) (Concat!743) (Not!332) (Plus!332) (SpaceValue!332 (value!12637 List!1573)) (IntegerValue!998 (value!12638 Int) (text!2773 List!1573)) (StringLiteralValue!997 (text!2774 List!1573)) (FloatLiteralValue!665 (text!2775 List!1573)) (BytesLiteralValue!332 (value!12639 List!1573)) (CommentValue!665 (value!12640 List!1573)) (StringLiteralValue!998 (value!12641 List!1573)) (ErrorTokenValue!332 (msg!393 List!1573)) )
))
(declare-datatypes ((TokenValueInjection!488 0))(
  ( (TokenValueInjection!489 (toValue!889 Int) (toChars!748 Int)) )
))
(declare-datatypes ((Rule!484 0))(
  ( (Rule!485 (regex!342 Regex!410) (tag!520 String!2053) (isSeparator!342 Bool) (transformation!342 TokenValueInjection!488)) )
))
(declare-datatypes ((List!1574 0))(
  ( (Nil!1568) (Cons!1568 (h!6965 Rule!484) (t!21089 List!1574)) )
))
(declare-fun rules!2471 () List!1574)

(declare-fun isEmpty!648 (List!1574) Bool)

(assert (=> b!97270 (= res!47451 (not (isEmpty!648 rules!2471)))))

(declare-fun b!97271 () Bool)

(declare-fun res!47453 () Bool)

(assert (=> b!97271 (=> (not res!47453) (not e!53853))))

(declare-datatypes ((LexerInterface!234 0))(
  ( (LexerInterfaceExt!231 (__x!1760 Int)) (Lexer!232) )
))
(declare-fun thiss!19403 () LexerInterface!234)

(declare-fun rulesInvariant!228 (LexerInterface!234 List!1574) Bool)

(assert (=> b!97271 (= res!47453 (rulesInvariant!228 thiss!19403 rules!2471))))

(declare-fun b!97272 () Bool)

(declare-fun e!53852 () Bool)

(declare-fun e!53851 () Bool)

(assert (=> b!97272 (= e!53852 e!53851)))

(declare-fun res!47452 () Bool)

(assert (=> b!97272 (=> (not res!47452) (not e!53851))))

(declare-datatypes ((Token!440 0))(
  ( (Token!441 (value!12642 TokenValue!332) (rule!843 Rule!484) (size!1372 Int) (originalCharacters!391 List!1572)) )
))
(declare-datatypes ((List!1575 0))(
  ( (Nil!1569) (Cons!1569 (h!6966 Token!440) (t!21090 List!1575)) )
))
(declare-fun lt!25572 () List!1575)

(assert (=> b!97272 (= res!47452 (and (or (not (is-Cons!1569 lt!25572)) (not (is-Nil!1569 (t!21090 lt!25572)))) (not (is-Cons!1569 lt!25572))))))

(declare-datatypes ((IArray!971 0))(
  ( (IArray!972 (innerList!543 List!1575)) )
))
(declare-datatypes ((Conc!485 0))(
  ( (Node!485 (left!1193 Conc!485) (right!1523 Conc!485) (csize!1200 Int) (cheight!696 Int)) (Leaf!792 (xs!3072 IArray!971) (csize!1201 Int)) (Empty!485) )
))
(declare-datatypes ((BalanceConc!974 0))(
  ( (BalanceConc!975 (c!23856 Conc!485)) )
))
(declare-datatypes ((tuple2!1680 0))(
  ( (tuple2!1681 (_1!1047 BalanceConc!974) (_2!1047 BalanceConc!972)) )
))
(declare-fun lt!25571 () tuple2!1680)

(declare-fun list!604 (BalanceConc!974) List!1575)

(assert (=> b!97272 (= lt!25572 (list!604 (_1!1047 lt!25571)))))

(declare-fun b!97273 () Bool)

(declare-fun e!53854 () Bool)

(declare-fun e!53857 () Bool)

(declare-fun tp!56098 () Bool)

(assert (=> b!97273 (= e!53854 (and e!53857 tp!56098))))

(declare-fun res!47454 () Bool)

(assert (=> start!8892 (=> (not res!47454) (not e!53853))))

(assert (=> start!8892 (= res!47454 (is-Lexer!232 thiss!19403))))

(assert (=> start!8892 e!53853))

(assert (=> start!8892 true))

(assert (=> start!8892 e!53854))

(declare-fun e!53856 () Bool)

(assert (=> start!8892 e!53856))

(declare-fun input!2238 () List!1572)

(declare-fun b!97274 () Bool)

(declare-fun ++!217 (List!1572 List!1572) List!1572)

(declare-fun list!605 (BalanceConc!972) List!1572)

(declare-fun print!69 (LexerInterface!234 BalanceConc!974) BalanceConc!972)

(assert (=> b!97274 (= e!53851 (not (= (++!217 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571))) (list!605 (_2!1047 lt!25571))) input!2238)))))

(declare-fun tp!56100 () Bool)

(declare-fun b!97275 () Bool)

(declare-fun inv!1917 (String!2053) Bool)

(declare-fun inv!1920 (TokenValueInjection!488) Bool)

(assert (=> b!97275 (= e!53857 (and tp!56100 (inv!1917 (tag!520 (h!6965 rules!2471))) (inv!1920 (transformation!342 (h!6965 rules!2471))) e!53855))))

(declare-fun b!97276 () Bool)

(assert (=> b!97276 (= e!53853 e!53852)))

(declare-fun res!47455 () Bool)

(assert (=> b!97276 (=> (not res!47455) (not e!53852))))

(declare-fun isEmpty!649 (BalanceConc!972) Bool)

(assert (=> b!97276 (= res!47455 (isEmpty!649 (_2!1047 lt!25571)))))

(declare-fun lex!140 (LexerInterface!234 List!1574 BalanceConc!972) tuple2!1680)

(declare-fun seqFromList!180 (List!1572) BalanceConc!972)

(assert (=> b!97276 (= lt!25571 (lex!140 thiss!19403 rules!2471 (seqFromList!180 input!2238)))))

(declare-fun b!97277 () Bool)

(declare-fun tp_is_empty!743 () Bool)

(declare-fun tp!56101 () Bool)

(assert (=> b!97277 (= e!53856 (and tp_is_empty!743 tp!56101))))

(assert (= (and start!8892 res!47454) b!97270))

(assert (= (and b!97270 res!47451) b!97271))

(assert (= (and b!97271 res!47453) b!97276))

(assert (= (and b!97276 res!47455) b!97272))

(assert (= (and b!97272 res!47452) b!97274))

(assert (= b!97275 b!97269))

(assert (= b!97273 b!97275))

(assert (= (and start!8892 (is-Cons!1568 rules!2471)) b!97273))

(assert (= (and start!8892 (is-Cons!1566 input!2238)) b!97277))

(declare-fun m!81294 () Bool)

(assert (=> b!97270 m!81294))

(declare-fun m!81296 () Bool)

(assert (=> b!97276 m!81296))

(declare-fun m!81298 () Bool)

(assert (=> b!97276 m!81298))

(assert (=> b!97276 m!81298))

(declare-fun m!81300 () Bool)

(assert (=> b!97276 m!81300))

(declare-fun m!81302 () Bool)

(assert (=> b!97271 m!81302))

(declare-fun m!81304 () Bool)

(assert (=> b!97272 m!81304))

(declare-fun m!81306 () Bool)

(assert (=> b!97275 m!81306))

(declare-fun m!81308 () Bool)

(assert (=> b!97275 m!81308))

(declare-fun m!81310 () Bool)

(assert (=> b!97274 m!81310))

(assert (=> b!97274 m!81310))

(declare-fun m!81312 () Bool)

(assert (=> b!97274 m!81312))

(declare-fun m!81314 () Bool)

(assert (=> b!97274 m!81314))

(assert (=> b!97274 m!81312))

(assert (=> b!97274 m!81314))

(declare-fun m!81316 () Bool)

(assert (=> b!97274 m!81316))

(push 1)

(assert (not b_next!2885))

(assert (not b!97277))

(assert b_and!4353)

(assert (not b!97274))

(assert tp_is_empty!743)

(assert b_and!4351)

(assert (not b!97276))

(assert (not b!97275))

(assert (not b!97273))

(assert (not b!97271))

(assert (not b!97272))

(assert (not b_next!2887))

(assert (not b!97270))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4353)

(assert b_and!4351)

(assert (not b_next!2887))

(assert (not b_next!2885))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!22335 () Bool)

(declare-fun list!608 (Conc!485) List!1575)

(assert (=> d!22335 (= (list!604 (_1!1047 lt!25571)) (list!608 (c!23856 (_1!1047 lt!25571))))))

(declare-fun bs!9551 () Bool)

(assert (= bs!9551 d!22335))

(declare-fun m!81342 () Bool)

(assert (=> bs!9551 m!81342))

(assert (=> b!97272 d!22335))

(declare-fun e!53888 () Bool)

(declare-fun b!97316 () Bool)

(declare-fun lt!25584 () List!1572)

(assert (=> b!97316 (= e!53888 (or (not (= (list!605 (_2!1047 lt!25571)) Nil!1566)) (= lt!25584 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571))))))))

(declare-fun b!97315 () Bool)

(declare-fun res!47476 () Bool)

(assert (=> b!97315 (=> (not res!47476) (not e!53888))))

(declare-fun size!1374 (List!1572) Int)

(assert (=> b!97315 (= res!47476 (= (size!1374 lt!25584) (+ (size!1374 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571)))) (size!1374 (list!605 (_2!1047 lt!25571))))))))

(declare-fun b!97313 () Bool)

(declare-fun e!53887 () List!1572)

(assert (=> b!97313 (= e!53887 (list!605 (_2!1047 lt!25571)))))

(declare-fun d!22339 () Bool)

(assert (=> d!22339 e!53888))

(declare-fun res!47475 () Bool)

(assert (=> d!22339 (=> (not res!47475) (not e!53888))))

(declare-fun content!115 (List!1572) (Set C!1742))

(assert (=> d!22339 (= res!47475 (= (content!115 lt!25584) (set.union (content!115 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571)))) (content!115 (list!605 (_2!1047 lt!25571))))))))

(assert (=> d!22339 (= lt!25584 e!53887)))

(declare-fun c!23863 () Bool)

(assert (=> d!22339 (= c!23863 (is-Nil!1566 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571)))))))

(assert (=> d!22339 (= (++!217 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571))) (list!605 (_2!1047 lt!25571))) lt!25584)))

(declare-fun b!97314 () Bool)

(assert (=> b!97314 (= e!53887 (Cons!1566 (h!6963 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571)))) (++!217 (t!21087 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571)))) (list!605 (_2!1047 lt!25571)))))))

(assert (= (and d!22339 c!23863) b!97313))

(assert (= (and d!22339 (not c!23863)) b!97314))

(assert (= (and d!22339 res!47475) b!97315))

(assert (= (and b!97315 res!47476) b!97316))

(declare-fun m!81348 () Bool)

(assert (=> b!97315 m!81348))

(assert (=> b!97315 m!81312))

(declare-fun m!81350 () Bool)

(assert (=> b!97315 m!81350))

(assert (=> b!97315 m!81314))

(declare-fun m!81352 () Bool)

(assert (=> b!97315 m!81352))

(declare-fun m!81354 () Bool)

(assert (=> d!22339 m!81354))

(assert (=> d!22339 m!81312))

(declare-fun m!81356 () Bool)

(assert (=> d!22339 m!81356))

(assert (=> d!22339 m!81314))

(declare-fun m!81358 () Bool)

(assert (=> d!22339 m!81358))

(assert (=> b!97314 m!81314))

(declare-fun m!81360 () Bool)

(assert (=> b!97314 m!81360))

(assert (=> b!97274 d!22339))

(declare-fun d!22343 () Bool)

(declare-fun list!609 (Conc!484) List!1572)

(assert (=> d!22343 (= (list!605 (print!69 thiss!19403 (_1!1047 lt!25571))) (list!609 (c!23854 (print!69 thiss!19403 (_1!1047 lt!25571)))))))

(declare-fun bs!9553 () Bool)

(assert (= bs!9553 d!22343))

(declare-fun m!81362 () Bool)

(assert (=> bs!9553 m!81362))

(assert (=> b!97274 d!22343))

(declare-fun d!22345 () Bool)

(declare-fun lt!25587 () BalanceConc!972)

(declare-fun printList!34 (LexerInterface!234 List!1575) List!1572)

(assert (=> d!22345 (= (list!605 lt!25587) (printList!34 thiss!19403 (list!604 (_1!1047 lt!25571))))))

(declare-fun printTailRec!34 (LexerInterface!234 BalanceConc!974 Int BalanceConc!972) BalanceConc!972)

(assert (=> d!22345 (= lt!25587 (printTailRec!34 thiss!19403 (_1!1047 lt!25571) 0 (BalanceConc!973 Empty!484)))))

(assert (=> d!22345 (= (print!69 thiss!19403 (_1!1047 lt!25571)) lt!25587)))

(declare-fun bs!9554 () Bool)

(assert (= bs!9554 d!22345))

(declare-fun m!81364 () Bool)

(assert (=> bs!9554 m!81364))

(assert (=> bs!9554 m!81304))

(assert (=> bs!9554 m!81304))

(declare-fun m!81366 () Bool)

(assert (=> bs!9554 m!81366))

(declare-fun m!81368 () Bool)

(assert (=> bs!9554 m!81368))

(assert (=> b!97274 d!22345))

(declare-fun d!22347 () Bool)

(assert (=> d!22347 (= (list!605 (_2!1047 lt!25571)) (list!609 (c!23854 (_2!1047 lt!25571))))))

(declare-fun bs!9555 () Bool)

(assert (= bs!9555 d!22347))

(declare-fun m!81370 () Bool)

(assert (=> bs!9555 m!81370))

(assert (=> b!97274 d!22347))

(declare-fun d!22349 () Bool)

(assert (=> d!22349 (= (isEmpty!648 rules!2471) (is-Nil!1568 rules!2471))))

(assert (=> b!97270 d!22349))

(declare-fun d!22351 () Bool)

(assert (=> d!22351 (= (inv!1917 (tag!520 (h!6965 rules!2471))) (= (mod (str.len (value!12616 (tag!520 (h!6965 rules!2471)))) 2) 0))))

(assert (=> b!97275 d!22351))

(declare-fun d!22353 () Bool)

(declare-fun res!47479 () Bool)

(declare-fun e!53891 () Bool)

(assert (=> d!22353 (=> (not res!47479) (not e!53891))))

(declare-fun semiInverseModEq!78 (Int Int) Bool)

(assert (=> d!22353 (= res!47479 (semiInverseModEq!78 (toChars!748 (transformation!342 (h!6965 rules!2471))) (toValue!889 (transformation!342 (h!6965 rules!2471)))))))

(assert (=> d!22353 (= (inv!1920 (transformation!342 (h!6965 rules!2471))) e!53891)))

(declare-fun b!97319 () Bool)

(declare-fun equivClasses!73 (Int Int) Bool)

(assert (=> b!97319 (= e!53891 (equivClasses!73 (toChars!748 (transformation!342 (h!6965 rules!2471))) (toValue!889 (transformation!342 (h!6965 rules!2471)))))))

(assert (= (and d!22353 res!47479) b!97319))

(declare-fun m!81372 () Bool)

(assert (=> d!22353 m!81372))

(declare-fun m!81374 () Bool)

(assert (=> b!97319 m!81374))

(assert (=> b!97275 d!22353))

(declare-fun d!22355 () Bool)

(declare-fun lt!25590 () Bool)

(declare-fun isEmpty!652 (List!1572) Bool)

(assert (=> d!22355 (= lt!25590 (isEmpty!652 (list!605 (_2!1047 lt!25571))))))

(declare-fun isEmpty!653 (Conc!484) Bool)

(assert (=> d!22355 (= lt!25590 (isEmpty!653 (c!23854 (_2!1047 lt!25571))))))

(assert (=> d!22355 (= (isEmpty!649 (_2!1047 lt!25571)) lt!25590)))

(declare-fun bs!9556 () Bool)

(assert (= bs!9556 d!22355))

(assert (=> bs!9556 m!81314))

(assert (=> bs!9556 m!81314))

(declare-fun m!81376 () Bool)

(assert (=> bs!9556 m!81376))

(declare-fun m!81378 () Bool)

(assert (=> bs!9556 m!81378))

(assert (=> b!97276 d!22355))

(declare-fun b!97330 () Bool)

(declare-fun e!53899 () Bool)

(declare-fun lt!25593 () tuple2!1680)

(declare-datatypes ((tuple2!1684 0))(
  ( (tuple2!1685 (_1!1049 List!1575) (_2!1049 List!1572)) )
))
(declare-fun lexList!64 (LexerInterface!234 List!1574 List!1572) tuple2!1684)

(assert (=> b!97330 (= e!53899 (= (list!605 (_2!1047 lt!25593)) (_2!1049 (lexList!64 thiss!19403 rules!2471 (list!605 (seqFromList!180 input!2238))))))))

(declare-fun b!97331 () Bool)

(declare-fun e!53900 () Bool)

(declare-fun isEmpty!654 (BalanceConc!974) Bool)

(assert (=> b!97331 (= e!53900 (not (isEmpty!654 (_1!1047 lt!25593))))))

(declare-fun d!22357 () Bool)

(assert (=> d!22357 e!53899))

(declare-fun res!47488 () Bool)

(assert (=> d!22357 (=> (not res!47488) (not e!53899))))

(declare-fun e!53898 () Bool)

(assert (=> d!22357 (= res!47488 e!53898)))

(declare-fun c!23866 () Bool)

(declare-fun size!1375 (BalanceConc!974) Int)

(assert (=> d!22357 (= c!23866 (> (size!1375 (_1!1047 lt!25593)) 0))))

(declare-fun lexTailRecV2!61 (LexerInterface!234 List!1574 BalanceConc!972 BalanceConc!972 BalanceConc!972 BalanceConc!974) tuple2!1680)

(assert (=> d!22357 (= lt!25593 (lexTailRecV2!61 thiss!19403 rules!2471 (seqFromList!180 input!2238) (BalanceConc!973 Empty!484) (seqFromList!180 input!2238) (BalanceConc!975 Empty!485)))))

(assert (=> d!22357 (= (lex!140 thiss!19403 rules!2471 (seqFromList!180 input!2238)) lt!25593)))

(declare-fun b!97332 () Bool)

(assert (=> b!97332 (= e!53898 e!53900)))

(declare-fun res!47487 () Bool)

(declare-fun size!1376 (BalanceConc!972) Int)

(assert (=> b!97332 (= res!47487 (< (size!1376 (_2!1047 lt!25593)) (size!1376 (seqFromList!180 input!2238))))))

(assert (=> b!97332 (=> (not res!47487) (not e!53900))))

(declare-fun b!97333 () Bool)

(declare-fun res!47486 () Bool)

(assert (=> b!97333 (=> (not res!47486) (not e!53899))))

(assert (=> b!97333 (= res!47486 (= (list!604 (_1!1047 lt!25593)) (_1!1049 (lexList!64 thiss!19403 rules!2471 (list!605 (seqFromList!180 input!2238))))))))

(declare-fun b!97334 () Bool)

(assert (=> b!97334 (= e!53898 (= (_2!1047 lt!25593) (seqFromList!180 input!2238)))))

(assert (= (and d!22357 c!23866) b!97332))

(assert (= (and d!22357 (not c!23866)) b!97334))

(assert (= (and b!97332 res!47487) b!97331))

(assert (= (and d!22357 res!47488) b!97333))

(assert (= (and b!97333 res!47486) b!97330))

(declare-fun m!81380 () Bool)

(assert (=> b!97330 m!81380))

(assert (=> b!97330 m!81298))

(declare-fun m!81382 () Bool)

(assert (=> b!97330 m!81382))

(assert (=> b!97330 m!81382))

(declare-fun m!81384 () Bool)

(assert (=> b!97330 m!81384))

(declare-fun m!81386 () Bool)

(assert (=> b!97331 m!81386))

(declare-fun m!81388 () Bool)

(assert (=> d!22357 m!81388))

(assert (=> d!22357 m!81298))

(assert (=> d!22357 m!81298))

(declare-fun m!81390 () Bool)

(assert (=> d!22357 m!81390))

(declare-fun m!81392 () Bool)

(assert (=> b!97333 m!81392))

(assert (=> b!97333 m!81298))

(assert (=> b!97333 m!81382))

(assert (=> b!97333 m!81382))

(assert (=> b!97333 m!81384))

(declare-fun m!81394 () Bool)

(assert (=> b!97332 m!81394))

(assert (=> b!97332 m!81298))

(declare-fun m!81396 () Bool)

(assert (=> b!97332 m!81396))

(assert (=> b!97276 d!22357))

(declare-fun d!22359 () Bool)

(declare-fun fromListB!76 (List!1572) BalanceConc!972)

(assert (=> d!22359 (= (seqFromList!180 input!2238) (fromListB!76 input!2238))))

(declare-fun bs!9557 () Bool)

(assert (= bs!9557 d!22359))

(declare-fun m!81398 () Bool)

(assert (=> bs!9557 m!81398))

(assert (=> b!97276 d!22359))

(declare-fun d!22361 () Bool)

(declare-fun res!47491 () Bool)

(declare-fun e!53903 () Bool)

(assert (=> d!22361 (=> (not res!47491) (not e!53903))))

(declare-fun rulesValid!86 (LexerInterface!234 List!1574) Bool)

(assert (=> d!22361 (= res!47491 (rulesValid!86 thiss!19403 rules!2471))))

(assert (=> d!22361 (= (rulesInvariant!228 thiss!19403 rules!2471) e!53903)))

(declare-fun b!97337 () Bool)

(declare-datatypes ((List!1580 0))(
  ( (Nil!1574) (Cons!1574 (h!6971 String!2053) (t!21095 List!1580)) )
))
(declare-fun noDuplicateTag!86 (LexerInterface!234 List!1574 List!1580) Bool)

(assert (=> b!97337 (= e!53903 (noDuplicateTag!86 thiss!19403 rules!2471 Nil!1574))))

(assert (= (and d!22361 res!47491) b!97337))

(declare-fun m!81400 () Bool)

(assert (=> d!22361 m!81400))

(declare-fun m!81402 () Bool)

(assert (=> b!97337 m!81402))

(assert (=> b!97271 d!22361))

(declare-fun b!97348 () Bool)

(declare-fun b_free!2893 () Bool)

(declare-fun b_next!2893 () Bool)

(assert (=> b!97348 (= b_free!2893 (not b_next!2893))))

(declare-fun tp!56127 () Bool)

(declare-fun b_and!4359 () Bool)

(assert (=> b!97348 (= tp!56127 b_and!4359)))

(declare-fun b_free!2895 () Bool)

(declare-fun b_next!2895 () Bool)

(assert (=> b!97348 (= b_free!2895 (not b_next!2895))))

(declare-fun tp!56126 () Bool)

(declare-fun b_and!4361 () Bool)

(assert (=> b!97348 (= tp!56126 b_and!4361)))

(declare-fun e!53915 () Bool)

(assert (=> b!97348 (= e!53915 (and tp!56127 tp!56126))))

(declare-fun b!97347 () Bool)

(declare-fun e!53912 () Bool)

(declare-fun tp!56128 () Bool)

(assert (=> b!97347 (= e!53912 (and tp!56128 (inv!1917 (tag!520 (h!6965 (t!21089 rules!2471)))) (inv!1920 (transformation!342 (h!6965 (t!21089 rules!2471)))) e!53915))))

(declare-fun b!97346 () Bool)

(declare-fun e!53913 () Bool)

(declare-fun tp!56125 () Bool)

(assert (=> b!97346 (= e!53913 (and e!53912 tp!56125))))

(assert (=> b!97273 (= tp!56098 e!53913)))

(assert (= b!97347 b!97348))

(assert (= b!97346 b!97347))

(assert (= (and b!97273 (is-Cons!1568 (t!21089 rules!2471))) b!97346))

(declare-fun m!81404 () Bool)

(assert (=> b!97347 m!81404))

(declare-fun m!81406 () Bool)

(assert (=> b!97347 m!81406))

(declare-fun b!97359 () Bool)

(declare-fun e!53918 () Bool)

(assert (=> b!97359 (= e!53918 tp_is_empty!743)))

(assert (=> b!97275 (= tp!56100 e!53918)))

(declare-fun b!97362 () Bool)

(declare-fun tp!56140 () Bool)

(declare-fun tp!56142 () Bool)

(assert (=> b!97362 (= e!53918 (and tp!56140 tp!56142))))

(declare-fun b!97360 () Bool)

(declare-fun tp!56141 () Bool)

(declare-fun tp!56143 () Bool)

(assert (=> b!97360 (= e!53918 (and tp!56141 tp!56143))))

(declare-fun b!97361 () Bool)

(declare-fun tp!56139 () Bool)

(assert (=> b!97361 (= e!53918 tp!56139)))

(assert (= (and b!97275 (is-ElementMatch!410 (regex!342 (h!6965 rules!2471)))) b!97359))

(assert (= (and b!97275 (is-Concat!742 (regex!342 (h!6965 rules!2471)))) b!97360))

(assert (= (and b!97275 (is-Star!410 (regex!342 (h!6965 rules!2471)))) b!97361))

(assert (= (and b!97275 (is-Union!410 (regex!342 (h!6965 rules!2471)))) b!97362))

(declare-fun b!97367 () Bool)

(declare-fun e!53921 () Bool)

(declare-fun tp!56146 () Bool)

(assert (=> b!97367 (= e!53921 (and tp_is_empty!743 tp!56146))))

(assert (=> b!97277 (= tp!56101 e!53921)))

(assert (= (and b!97277 (is-Cons!1566 (t!21087 input!2238))) b!97367))

(push 1)

(assert b_and!4353)

(assert (not b!97337))

(assert (not b!97346))

(assert (not b!97360))

(assert (not b!97319))

(assert (not b!97361))

(assert tp_is_empty!743)

(assert (not b!97362))

(assert b_and!4359)

(assert (not d!22343))

(assert (not d!22347))

(assert (not b!97331))

(assert (not b_next!2893))

(assert (not d!22335))

(assert (not d!22357))

(assert (not b_next!2885))

(assert (not d!22345))

(assert (not b!97367))

(assert (not d!22353))

(assert b_and!4361)

(assert (not b!97330))

(assert (not b!97347))

(assert (not b!97314))

(assert (not d!22339))

(assert b_and!4351)

(assert (not b!97332))

(assert (not b_next!2895))

(assert (not d!22355))

(assert (not b!97315))

(assert (not d!22361))

(assert (not b_next!2887))

(assert (not d!22359))

(assert (not b!97333))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2885))

(assert b_and!4353)

(assert b_and!4361)

(assert b_and!4351)

(assert b_and!4359)

(assert (not b_next!2895))

(assert (not b_next!2887))

(assert (not b_next!2893))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!22383 () Bool)

(assert (=> d!22383 (= (isEmpty!652 (list!605 (_2!1047 lt!25571))) (is-Nil!1566 (list!605 (_2!1047 lt!25571))))))

(assert (=> d!22355 d!22383))

(assert (=> d!22355 d!22347))

(declare-fun d!22385 () Bool)

(declare-fun lt!25605 () Bool)

(assert (=> d!22385 (= lt!25605 (isEmpty!652 (list!609 (c!23854 (_2!1047 lt!25571)))))))

(declare-fun size!1380 (Conc!484) Int)

(assert (=> d!22385 (= lt!25605 (= (size!1380 (c!23854 (_2!1047 lt!25571))) 0))))

(assert (=> d!22385 (= (isEmpty!653 (c!23854 (_2!1047 lt!25571))) lt!25605)))

(declare-fun bs!9563 () Bool)

(assert (= bs!9563 d!22385))

(assert (=> bs!9563 m!81370))

(assert (=> bs!9563 m!81370))

(declare-fun m!81466 () Bool)

(assert (=> bs!9563 m!81466))

(declare-fun m!81468 () Bool)

(assert (=> bs!9563 m!81468))

(assert (=> d!22355 d!22385))

(declare-fun d!22387 () Bool)

(assert (=> d!22387 (= (list!605 lt!25587) (list!609 (c!23854 lt!25587)))))

(declare-fun bs!9564 () Bool)

(assert (= bs!9564 d!22387))

(declare-fun m!81470 () Bool)

(assert (=> bs!9564 m!81470))

(assert (=> d!22345 d!22387))

(declare-fun d!22389 () Bool)

(declare-fun c!23875 () Bool)

(assert (=> d!22389 (= c!23875 (is-Cons!1569 (list!604 (_1!1047 lt!25571))))))

(declare-fun e!53963 () List!1572)

(assert (=> d!22389 (= (printList!34 thiss!19403 (list!604 (_1!1047 lt!25571))) e!53963)))

(declare-fun b!97435 () Bool)

(declare-fun charsOf!75 (Token!440) BalanceConc!972)

(assert (=> b!97435 (= e!53963 (++!217 (list!605 (charsOf!75 (h!6966 (list!604 (_1!1047 lt!25571))))) (printList!34 thiss!19403 (t!21090 (list!604 (_1!1047 lt!25571))))))))

(declare-fun b!97436 () Bool)

(assert (=> b!97436 (= e!53963 Nil!1566)))

(assert (= (and d!22389 c!23875) b!97435))

(assert (= (and d!22389 (not c!23875)) b!97436))

(declare-fun m!81472 () Bool)

(assert (=> b!97435 m!81472))

(assert (=> b!97435 m!81472))

(declare-fun m!81474 () Bool)

(assert (=> b!97435 m!81474))

(declare-fun m!81476 () Bool)

(assert (=> b!97435 m!81476))

(assert (=> b!97435 m!81474))

(assert (=> b!97435 m!81476))

(declare-fun m!81478 () Bool)

(assert (=> b!97435 m!81478))

(assert (=> d!22345 d!22389))

(assert (=> d!22345 d!22335))

(declare-fun d!22391 () Bool)

(declare-fun lt!25624 () BalanceConc!972)

(declare-fun printListTailRec!23 (LexerInterface!234 List!1575 List!1572) List!1572)

(declare-fun dropList!31 (BalanceConc!974 Int) List!1575)

(assert (=> d!22391 (= (list!605 lt!25624) (printListTailRec!23 thiss!19403 (dropList!31 (_1!1047 lt!25571) 0) (list!605 (BalanceConc!973 Empty!484))))))

(declare-fun e!53969 () BalanceConc!972)

(assert (=> d!22391 (= lt!25624 e!53969)))

(declare-fun c!23878 () Bool)

(assert (=> d!22391 (= c!23878 (>= 0 (size!1375 (_1!1047 lt!25571))))))

(declare-fun e!53968 () Bool)

(assert (=> d!22391 e!53968))

(declare-fun res!47517 () Bool)

(assert (=> d!22391 (=> (not res!47517) (not e!53968))))

(assert (=> d!22391 (= res!47517 (>= 0 0))))

(assert (=> d!22391 (= (printTailRec!34 thiss!19403 (_1!1047 lt!25571) 0 (BalanceConc!973 Empty!484)) lt!25624)))

(declare-fun b!97443 () Bool)

(assert (=> b!97443 (= e!53968 (<= 0 (size!1375 (_1!1047 lt!25571))))))

(declare-fun b!97444 () Bool)

(assert (=> b!97444 (= e!53969 (BalanceConc!973 Empty!484))))

(declare-fun b!97445 () Bool)

(declare-fun ++!219 (BalanceConc!972 BalanceConc!972) BalanceConc!972)

(declare-fun apply!248 (BalanceConc!974 Int) Token!440)

(assert (=> b!97445 (= e!53969 (printTailRec!34 thiss!19403 (_1!1047 lt!25571) (+ 0 1) (++!219 (BalanceConc!973 Empty!484) (charsOf!75 (apply!248 (_1!1047 lt!25571) 0)))))))

(declare-fun lt!25626 () List!1575)

(assert (=> b!97445 (= lt!25626 (list!604 (_1!1047 lt!25571)))))

(declare-datatypes ((Unit!1026 0))(
  ( (Unit!1027) )
))
(declare-fun lt!25625 () Unit!1026)

(declare-fun lemmaDropApply!87 (List!1575 Int) Unit!1026)

(assert (=> b!97445 (= lt!25625 (lemmaDropApply!87 lt!25626 0))))

(declare-fun head!449 (List!1575) Token!440)

(declare-fun drop!93 (List!1575 Int) List!1575)

(declare-fun apply!249 (List!1575 Int) Token!440)

(assert (=> b!97445 (= (head!449 (drop!93 lt!25626 0)) (apply!249 lt!25626 0))))

(declare-fun lt!25622 () Unit!1026)

(assert (=> b!97445 (= lt!25622 lt!25625)))

(declare-fun lt!25620 () List!1575)

(assert (=> b!97445 (= lt!25620 (list!604 (_1!1047 lt!25571)))))

(declare-fun lt!25621 () Unit!1026)

(declare-fun lemmaDropTail!79 (List!1575 Int) Unit!1026)

(assert (=> b!97445 (= lt!25621 (lemmaDropTail!79 lt!25620 0))))

(declare-fun tail!161 (List!1575) List!1575)

(assert (=> b!97445 (= (tail!161 (drop!93 lt!25620 0)) (drop!93 lt!25620 (+ 0 1)))))

(declare-fun lt!25623 () Unit!1026)

(assert (=> b!97445 (= lt!25623 lt!25621)))

(assert (= (and d!22391 res!47517) b!97443))

(assert (= (and d!22391 c!23878) b!97444))

(assert (= (and d!22391 (not c!23878)) b!97445))

(declare-fun m!81480 () Bool)

(assert (=> d!22391 m!81480))

(declare-fun m!81482 () Bool)

(assert (=> d!22391 m!81482))

(declare-fun m!81484 () Bool)

(assert (=> d!22391 m!81484))

(assert (=> d!22391 m!81482))

(assert (=> d!22391 m!81480))

(declare-fun m!81486 () Bool)

(assert (=> d!22391 m!81486))

(declare-fun m!81488 () Bool)

(assert (=> d!22391 m!81488))

(assert (=> b!97443 m!81488))

(declare-fun m!81490 () Bool)

(assert (=> b!97445 m!81490))

(declare-fun m!81492 () Bool)

(assert (=> b!97445 m!81492))

(declare-fun m!81494 () Bool)

(assert (=> b!97445 m!81494))

(declare-fun m!81496 () Bool)

(assert (=> b!97445 m!81496))

(declare-fun m!81498 () Bool)

(assert (=> b!97445 m!81498))

(declare-fun m!81500 () Bool)

(assert (=> b!97445 m!81500))

(assert (=> b!97445 m!81304))

(declare-fun m!81502 () Bool)

(assert (=> b!97445 m!81502))

(declare-fun m!81504 () Bool)

(assert (=> b!97445 m!81504))

(declare-fun m!81506 () Bool)

(assert (=> b!97445 m!81506))

(assert (=> b!97445 m!81490))

(assert (=> b!97445 m!81506))

(declare-fun m!81508 () Bool)

(assert (=> b!97445 m!81508))

(declare-fun m!81510 () Bool)

(assert (=> b!97445 m!81510))

(declare-fun m!81512 () Bool)

(assert (=> b!97445 m!81512))

(assert (=> b!97445 m!81496))

(assert (=> b!97445 m!81498))

(assert (=> b!97445 m!81502))

(assert (=> d!22345 d!22391))

(declare-fun d!22393 () Bool)

(declare-fun lt!25629 () Int)

(declare-fun size!1381 (List!1575) Int)

(assert (=> d!22393 (= lt!25629 (size!1381 (list!604 (_1!1047 lt!25593))))))

(declare-fun size!1382 (Conc!485) Int)

(assert (=> d!22393 (= lt!25629 (size!1382 (c!23856 (_1!1047 lt!25593))))))

(assert (=> d!22393 (= (size!1375 (_1!1047 lt!25593)) lt!25629)))

(declare-fun bs!9565 () Bool)

(assert (= bs!9565 d!22393))

(assert (=> bs!9565 m!81392))

(assert (=> bs!9565 m!81392))

(declare-fun m!81514 () Bool)

(assert (=> bs!9565 m!81514))

(declare-fun m!81516 () Bool)

(assert (=> bs!9565 m!81516))

(assert (=> d!22357 d!22393))

(declare-datatypes ((tuple2!1688 0))(
  ( (tuple2!1689 (_1!1051 Token!440) (_2!1051 BalanceConc!972)) )
))
(declare-datatypes ((Option!161 0))(
  ( (None!160) (Some!160 (v!12933 tuple2!1688)) )
))
(declare-fun lt!25722 () Option!161)

(declare-fun lt!25728 () tuple2!1680)

(declare-fun b!97460 () Bool)

(declare-fun lexRec!41 (LexerInterface!234 List!1574 BalanceConc!972) tuple2!1680)

(assert (=> b!97460 (= lt!25728 (lexRec!41 thiss!19403 rules!2471 (_2!1051 (v!12933 lt!25722))))))

(declare-fun e!53978 () tuple2!1680)

(declare-fun prepend!110 (BalanceConc!974 Token!440) BalanceConc!974)

(assert (=> b!97460 (= e!53978 (tuple2!1681 (prepend!110 (_1!1047 lt!25728) (_1!1051 (v!12933 lt!25722))) (_2!1047 lt!25728)))))

(declare-fun e!53979 () tuple2!1680)

(declare-fun b!97461 () Bool)

(declare-fun lt!25726 () BalanceConc!972)

(declare-fun lt!25721 () Option!161)

(declare-fun append!50 (BalanceConc!974 Token!440) BalanceConc!974)

(assert (=> b!97461 (= e!53979 (lexTailRecV2!61 thiss!19403 rules!2471 (seqFromList!180 input!2238) lt!25726 (_2!1051 (v!12933 lt!25721)) (append!50 (BalanceConc!975 Empty!485) (_1!1051 (v!12933 lt!25721)))))))

(declare-fun lt!25732 () tuple2!1680)

(assert (=> b!97461 (= lt!25732 (lexRec!41 thiss!19403 rules!2471 (_2!1051 (v!12933 lt!25721))))))

(declare-fun lt!25724 () List!1572)

(assert (=> b!97461 (= lt!25724 (list!605 (BalanceConc!973 Empty!484)))))

(declare-fun lt!25731 () List!1572)

(assert (=> b!97461 (= lt!25731 (list!605 (charsOf!75 (_1!1051 (v!12933 lt!25721)))))))

(declare-fun lt!25718 () List!1572)

(assert (=> b!97461 (= lt!25718 (list!605 (_2!1051 (v!12933 lt!25721))))))

(declare-fun lt!25702 () Unit!1026)

(declare-fun lemmaConcatAssociativity!82 (List!1572 List!1572 List!1572) Unit!1026)

(assert (=> b!97461 (= lt!25702 (lemmaConcatAssociativity!82 lt!25724 lt!25731 lt!25718))))

(assert (=> b!97461 (= (++!217 (++!217 lt!25724 lt!25731) lt!25718) (++!217 lt!25724 (++!217 lt!25731 lt!25718)))))

(declare-fun lt!25730 () Unit!1026)

(assert (=> b!97461 (= lt!25730 lt!25702)))

(declare-fun maxPrefixZipperSequence!39 (LexerInterface!234 List!1574 BalanceConc!972) Option!161)

(assert (=> b!97461 (= lt!25722 (maxPrefixZipperSequence!39 thiss!19403 rules!2471 (seqFromList!180 input!2238)))))

(declare-fun c!23886 () Bool)

(assert (=> b!97461 (= c!23886 (is-Some!160 lt!25722))))

(assert (=> b!97461 (= (lexRec!41 thiss!19403 rules!2471 (seqFromList!180 input!2238)) e!53978)))

(declare-fun lt!25708 () Unit!1026)

(declare-fun Unit!1028 () Unit!1026)

(assert (=> b!97461 (= lt!25708 Unit!1028)))

(declare-fun lt!25714 () List!1575)

(assert (=> b!97461 (= lt!25714 (list!604 (BalanceConc!975 Empty!485)))))

(declare-fun lt!25711 () List!1575)

(assert (=> b!97461 (= lt!25711 (Cons!1569 (_1!1051 (v!12933 lt!25721)) Nil!1569))))

(declare-fun lt!25704 () List!1575)

(assert (=> b!97461 (= lt!25704 (list!604 (_1!1047 lt!25732)))))

(declare-fun lt!25703 () Unit!1026)

(declare-fun lemmaConcatAssociativity!83 (List!1575 List!1575 List!1575) Unit!1026)

(assert (=> b!97461 (= lt!25703 (lemmaConcatAssociativity!83 lt!25714 lt!25711 lt!25704))))

(declare-fun ++!220 (List!1575 List!1575) List!1575)

(assert (=> b!97461 (= (++!220 (++!220 lt!25714 lt!25711) lt!25704) (++!220 lt!25714 (++!220 lt!25711 lt!25704)))))

(declare-fun lt!25717 () Unit!1026)

(assert (=> b!97461 (= lt!25717 lt!25703)))

(declare-fun lt!25733 () List!1572)

(assert (=> b!97461 (= lt!25733 (++!217 (list!605 (BalanceConc!973 Empty!484)) (list!605 (charsOf!75 (_1!1051 (v!12933 lt!25721))))))))

(declare-fun lt!25710 () List!1572)

(assert (=> b!97461 (= lt!25710 (list!605 (_2!1051 (v!12933 lt!25721))))))

(declare-fun lt!25709 () List!1575)

(assert (=> b!97461 (= lt!25709 (list!604 (append!50 (BalanceConc!975 Empty!485) (_1!1051 (v!12933 lt!25721)))))))

(declare-fun lt!25701 () Unit!1026)

(declare-fun lemmaLexThenLexPrefix!36 (LexerInterface!234 List!1574 List!1572 List!1572 List!1575 List!1575 List!1572) Unit!1026)

(assert (=> b!97461 (= lt!25701 (lemmaLexThenLexPrefix!36 thiss!19403 rules!2471 lt!25733 lt!25710 lt!25709 (list!604 (_1!1047 lt!25732)) (list!605 (_2!1047 lt!25732))))))

(assert (=> b!97461 (= (lexList!64 thiss!19403 rules!2471 lt!25733) (tuple2!1685 lt!25709 Nil!1566))))

(declare-fun lt!25705 () Unit!1026)

(assert (=> b!97461 (= lt!25705 lt!25701)))

(declare-fun lt!25715 () BalanceConc!972)

(assert (=> b!97461 (= lt!25715 (++!219 (BalanceConc!973 Empty!484) (charsOf!75 (_1!1051 (v!12933 lt!25721)))))))

(declare-fun lt!25712 () Option!161)

(assert (=> b!97461 (= lt!25712 (maxPrefixZipperSequence!39 thiss!19403 rules!2471 lt!25715))))

(declare-fun c!23885 () Bool)

(assert (=> b!97461 (= c!23885 (is-Some!160 lt!25712))))

(declare-fun e!53981 () tuple2!1680)

(assert (=> b!97461 (= (lexRec!41 thiss!19403 rules!2471 (++!219 (BalanceConc!973 Empty!484) (charsOf!75 (_1!1051 (v!12933 lt!25721))))) e!53981)))

(declare-fun lt!25725 () Unit!1026)

(declare-fun Unit!1029 () Unit!1026)

(assert (=> b!97461 (= lt!25725 Unit!1029)))

(assert (=> b!97461 (= lt!25726 (++!219 (BalanceConc!973 Empty!484) (charsOf!75 (_1!1051 (v!12933 lt!25721)))))))

(declare-fun lt!25727 () List!1572)

(assert (=> b!97461 (= lt!25727 (list!605 lt!25726))))

(declare-fun lt!25700 () List!1572)

(assert (=> b!97461 (= lt!25700 (list!605 (_2!1051 (v!12933 lt!25721))))))

(declare-fun lt!25719 () Unit!1026)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!36 (List!1572 List!1572) Unit!1026)

(assert (=> b!97461 (= lt!25719 (lemmaConcatTwoListThenFSndIsSuffix!36 lt!25727 lt!25700))))

(declare-fun isSuffix!36 (List!1572 List!1572) Bool)

(assert (=> b!97461 (isSuffix!36 lt!25700 (++!217 lt!25727 lt!25700))))

(declare-fun lt!25713 () Unit!1026)

(assert (=> b!97461 (= lt!25713 lt!25719)))

(declare-fun e!53980 () Bool)

(declare-fun lt!25716 () tuple2!1680)

(declare-fun b!97462 () Bool)

(assert (=> b!97462 (= e!53980 (= (list!605 (_2!1047 lt!25716)) (list!605 (_2!1047 (lexRec!41 thiss!19403 rules!2471 (seqFromList!180 input!2238))))))))

(declare-fun b!97463 () Bool)

(assert (=> b!97463 (= e!53979 (tuple2!1681 (BalanceConc!975 Empty!485) (seqFromList!180 input!2238)))))

(declare-fun b!97464 () Bool)

(assert (=> b!97464 (= e!53978 (tuple2!1681 (BalanceConc!975 Empty!485) (seqFromList!180 input!2238)))))

(declare-fun d!22395 () Bool)

(assert (=> d!22395 e!53980))

(declare-fun res!47522 () Bool)

(assert (=> d!22395 (=> (not res!47522) (not e!53980))))

(assert (=> d!22395 (= res!47522 (= (list!604 (_1!1047 lt!25716)) (list!604 (_1!1047 (lexRec!41 thiss!19403 rules!2471 (seqFromList!180 input!2238))))))))

(assert (=> d!22395 (= lt!25716 e!53979)))

(declare-fun c!23887 () Bool)

(assert (=> d!22395 (= c!23887 (is-Some!160 lt!25721))))

(declare-fun maxPrefixZipperSequenceV2!36 (LexerInterface!234 List!1574 BalanceConc!972 BalanceConc!972) Option!161)

(assert (=> d!22395 (= lt!25721 (maxPrefixZipperSequenceV2!36 thiss!19403 rules!2471 (seqFromList!180 input!2238) (seqFromList!180 input!2238)))))

(declare-fun lt!25729 () Unit!1026)

(declare-fun lt!25720 () Unit!1026)

(assert (=> d!22395 (= lt!25729 lt!25720)))

(declare-fun lt!25706 () List!1572)

(declare-fun lt!25707 () List!1572)

(assert (=> d!22395 (isSuffix!36 lt!25706 (++!217 lt!25707 lt!25706))))

(assert (=> d!22395 (= lt!25720 (lemmaConcatTwoListThenFSndIsSuffix!36 lt!25707 lt!25706))))

(assert (=> d!22395 (= lt!25706 (list!605 (seqFromList!180 input!2238)))))

(assert (=> d!22395 (= lt!25707 (list!605 (BalanceConc!973 Empty!484)))))

(assert (=> d!22395 (= (lexTailRecV2!61 thiss!19403 rules!2471 (seqFromList!180 input!2238) (BalanceConc!973 Empty!484) (seqFromList!180 input!2238) (BalanceConc!975 Empty!485)) lt!25716)))

(declare-fun b!97465 () Bool)

(assert (=> b!97465 (= e!53981 (tuple2!1681 (BalanceConc!975 Empty!485) lt!25715))))

(declare-fun b!97466 () Bool)

(declare-fun lt!25723 () tuple2!1680)

(assert (=> b!97466 (= lt!25723 (lexRec!41 thiss!19403 rules!2471 (_2!1051 (v!12933 lt!25712))))))

(assert (=> b!97466 (= e!53981 (tuple2!1681 (prepend!110 (_1!1047 lt!25723) (_1!1051 (v!12933 lt!25712))) (_2!1047 lt!25723)))))

(assert (= (and d!22395 c!23887) b!97461))

(assert (= (and d!22395 (not c!23887)) b!97463))

(assert (= (and b!97461 c!23886) b!97460))

(assert (= (and b!97461 (not c!23886)) b!97464))

(assert (= (and b!97461 c!23885) b!97466))

(assert (= (and b!97461 (not c!23885)) b!97465))

(assert (= (and d!22395 res!47522) b!97462))

(declare-fun m!81518 () Bool)

(assert (=> b!97460 m!81518))

(declare-fun m!81520 () Bool)

(assert (=> b!97460 m!81520))

(declare-fun m!81522 () Bool)

(assert (=> b!97466 m!81522))

(declare-fun m!81524 () Bool)

(assert (=> b!97466 m!81524))

(declare-fun m!81526 () Bool)

(assert (=> b!97462 m!81526))

(assert (=> b!97462 m!81298))

(declare-fun m!81528 () Bool)

(assert (=> b!97462 m!81528))

(declare-fun m!81530 () Bool)

(assert (=> b!97462 m!81530))

(assert (=> b!97461 m!81480))

(declare-fun m!81532 () Bool)

(assert (=> b!97461 m!81532))

(declare-fun m!81534 () Bool)

(assert (=> b!97461 m!81534))

(declare-fun m!81536 () Bool)

(assert (=> b!97461 m!81536))

(declare-fun m!81538 () Bool)

(assert (=> b!97461 m!81538))

(declare-fun m!81540 () Bool)

(assert (=> b!97461 m!81540))

(declare-fun m!81542 () Bool)

(assert (=> b!97461 m!81542))

(declare-fun m!81544 () Bool)

(assert (=> b!97461 m!81544))

(assert (=> b!97461 m!81480))

(assert (=> b!97461 m!81298))

(assert (=> b!97461 m!81540))

(declare-fun m!81546 () Bool)

(assert (=> b!97461 m!81546))

(declare-fun m!81548 () Bool)

(assert (=> b!97461 m!81548))

(declare-fun m!81550 () Bool)

(assert (=> b!97461 m!81550))

(declare-fun m!81552 () Bool)

(assert (=> b!97461 m!81552))

(declare-fun m!81554 () Bool)

(assert (=> b!97461 m!81554))

(assert (=> b!97461 m!81548))

(declare-fun m!81556 () Bool)

(assert (=> b!97461 m!81556))

(declare-fun m!81558 () Bool)

(assert (=> b!97461 m!81558))

(declare-fun m!81560 () Bool)

(assert (=> b!97461 m!81560))

(assert (=> b!97461 m!81558))

(assert (=> b!97461 m!81552))

(declare-fun m!81562 () Bool)

(assert (=> b!97461 m!81562))

(declare-fun m!81564 () Bool)

(assert (=> b!97461 m!81564))

(assert (=> b!97461 m!81550))

(declare-fun m!81566 () Bool)

(assert (=> b!97461 m!81566))

(assert (=> b!97461 m!81562))

(declare-fun m!81568 () Bool)

(assert (=> b!97461 m!81568))

(declare-fun m!81570 () Bool)

(assert (=> b!97461 m!81570))

(declare-fun m!81572 () Bool)

(assert (=> b!97461 m!81572))

(assert (=> b!97461 m!81544))

(declare-fun m!81574 () Bool)

(assert (=> b!97461 m!81574))

(declare-fun m!81576 () Bool)

(assert (=> b!97461 m!81576))

(declare-fun m!81578 () Bool)

(assert (=> b!97461 m!81578))

(declare-fun m!81580 () Bool)

(assert (=> b!97461 m!81580))

(assert (=> b!97461 m!81574))

(assert (=> b!97461 m!81568))

(assert (=> b!97461 m!81548))

(assert (=> b!97461 m!81532))

(assert (=> b!97461 m!81540))

(declare-fun m!81582 () Bool)

(assert (=> b!97461 m!81582))

(assert (=> b!97461 m!81298))

(declare-fun m!81584 () Bool)

(assert (=> b!97461 m!81584))

(assert (=> b!97461 m!81298))

(assert (=> b!97461 m!81528))

(declare-fun m!81586 () Bool)

(assert (=> b!97461 m!81586))

(declare-fun m!81588 () Bool)

(assert (=> b!97461 m!81588))

(declare-fun m!81590 () Bool)

(assert (=> b!97461 m!81590))

(assert (=> b!97461 m!81556))

(declare-fun m!81592 () Bool)

(assert (=> b!97461 m!81592))

(assert (=> d!22395 m!81298))

(assert (=> d!22395 m!81528))

(declare-fun m!81594 () Bool)

(assert (=> d!22395 m!81594))

(declare-fun m!81596 () Bool)

(assert (=> d!22395 m!81596))

(declare-fun m!81598 () Bool)

(assert (=> d!22395 m!81598))

(assert (=> d!22395 m!81594))

(assert (=> d!22395 m!81480))

(declare-fun m!81600 () Bool)

(assert (=> d!22395 m!81600))

(assert (=> d!22395 m!81298))

(assert (=> d!22395 m!81382))

(assert (=> d!22395 m!81298))

(assert (=> d!22395 m!81298))

(declare-fun m!81602 () Bool)

(assert (=> d!22395 m!81602))

(declare-fun m!81604 () Bool)

(assert (=> d!22395 m!81604))

(assert (=> d!22357 d!22395))

(declare-fun d!22399 () Bool)

(assert (=> d!22399 true))

(declare-fun order!669 () Int)

(declare-fun order!671 () Int)

(declare-fun lambda!1729 () Int)

(declare-fun dynLambda!439 (Int Int) Int)

(declare-fun dynLambda!440 (Int Int) Int)

(assert (=> d!22399 (< (dynLambda!439 order!669 (toChars!748 (transformation!342 (h!6965 rules!2471)))) (dynLambda!440 order!671 lambda!1729))))

(assert (=> d!22399 true))

(declare-fun order!673 () Int)

(declare-fun dynLambda!441 (Int Int) Int)

(assert (=> d!22399 (< (dynLambda!441 order!673 (toValue!889 (transformation!342 (h!6965 rules!2471)))) (dynLambda!440 order!671 lambda!1729))))

(declare-fun Forall!57 (Int) Bool)

(assert (=> d!22399 (= (semiInverseModEq!78 (toChars!748 (transformation!342 (h!6965 rules!2471))) (toValue!889 (transformation!342 (h!6965 rules!2471)))) (Forall!57 lambda!1729))))

(declare-fun bs!9568 () Bool)

(assert (= bs!9568 d!22399))

(declare-fun m!81620 () Bool)

(assert (=> bs!9568 m!81620))

(assert (=> d!22353 d!22399))

(declare-fun d!22407 () Bool)

(assert (=> d!22407 true))

(declare-fun lt!25751 () Bool)

(declare-fun rulesValidInductive!64 (LexerInterface!234 List!1574) Bool)

(assert (=> d!22407 (= lt!25751 (rulesValidInductive!64 thiss!19403 rules!2471))))

(declare-fun lambda!1732 () Int)

(declare-fun forall!208 (List!1574 Int) Bool)

(assert (=> d!22407 (= lt!25751 (forall!208 rules!2471 lambda!1732))))

(assert (=> d!22407 (= (rulesValid!86 thiss!19403 rules!2471) lt!25751)))

(declare-fun bs!9569 () Bool)

(assert (= bs!9569 d!22407))

(declare-fun m!81622 () Bool)

(assert (=> bs!9569 m!81622))

(declare-fun m!81624 () Bool)

(assert (=> bs!9569 m!81624))

(assert (=> d!22361 d!22407))

(declare-fun d!22409 () Bool)

(assert (=> d!22409 (= (list!605 (_2!1047 lt!25593)) (list!609 (c!23854 (_2!1047 lt!25593))))))

(declare-fun bs!9570 () Bool)

(assert (= bs!9570 d!22409))

(declare-fun m!81626 () Bool)

(assert (=> bs!9570 m!81626))

(assert (=> b!97330 d!22409))

(declare-fun b!97500 () Bool)

(declare-fun e!53997 () Bool)

(declare-fun e!53998 () Bool)

(assert (=> b!97500 (= e!53997 e!53998)))

(declare-fun res!47528 () Bool)

(declare-fun lt!25769 () tuple2!1684)

(assert (=> b!97500 (= res!47528 (< (size!1374 (_2!1049 lt!25769)) (size!1374 (list!605 (seqFromList!180 input!2238)))))))

(assert (=> b!97500 (=> (not res!47528) (not e!53998))))

(declare-fun b!97501 () Bool)

(declare-fun e!53999 () tuple2!1684)

(assert (=> b!97501 (= e!53999 (tuple2!1685 Nil!1569 (list!605 (seqFromList!180 input!2238))))))

(declare-fun b!97502 () Bool)

(declare-datatypes ((tuple2!1690 0))(
  ( (tuple2!1691 (_1!1052 Token!440) (_2!1052 List!1572)) )
))
(declare-datatypes ((Option!162 0))(
  ( (None!161) (Some!161 (v!12934 tuple2!1690)) )
))
(declare-fun lt!25770 () Option!162)

(declare-fun lt!25768 () tuple2!1684)

(assert (=> b!97502 (= e!53999 (tuple2!1685 (Cons!1569 (_1!1052 (v!12934 lt!25770)) (_1!1049 lt!25768)) (_2!1049 lt!25768)))))

(assert (=> b!97502 (= lt!25768 (lexList!64 thiss!19403 rules!2471 (_2!1052 (v!12934 lt!25770))))))

(declare-fun d!22411 () Bool)

(assert (=> d!22411 e!53997))

(declare-fun c!23899 () Bool)

(assert (=> d!22411 (= c!23899 (> (size!1381 (_1!1049 lt!25769)) 0))))

(assert (=> d!22411 (= lt!25769 e!53999)))

(declare-fun c!23898 () Bool)

(assert (=> d!22411 (= c!23898 (is-Some!161 lt!25770))))

(declare-fun maxPrefix!74 (LexerInterface!234 List!1574 List!1572) Option!162)

(assert (=> d!22411 (= lt!25770 (maxPrefix!74 thiss!19403 rules!2471 (list!605 (seqFromList!180 input!2238))))))

(assert (=> d!22411 (= (lexList!64 thiss!19403 rules!2471 (list!605 (seqFromList!180 input!2238))) lt!25769)))

(declare-fun b!97503 () Bool)

(declare-fun isEmpty!658 (List!1575) Bool)

(assert (=> b!97503 (= e!53998 (not (isEmpty!658 (_1!1049 lt!25769))))))

(declare-fun b!97504 () Bool)

(assert (=> b!97504 (= e!53997 (= (_2!1049 lt!25769) (list!605 (seqFromList!180 input!2238))))))

(assert (= (and d!22411 c!23898) b!97502))

(assert (= (and d!22411 (not c!23898)) b!97501))

(assert (= (and d!22411 c!23899) b!97500))

(assert (= (and d!22411 (not c!23899)) b!97504))

(assert (= (and b!97500 res!47528) b!97503))

(declare-fun m!81666 () Bool)

(assert (=> b!97500 m!81666))

(assert (=> b!97500 m!81382))

(declare-fun m!81668 () Bool)

(assert (=> b!97500 m!81668))

(declare-fun m!81670 () Bool)

(assert (=> b!97502 m!81670))

(declare-fun m!81672 () Bool)

(assert (=> d!22411 m!81672))

(assert (=> d!22411 m!81382))

(declare-fun m!81674 () Bool)

(assert (=> d!22411 m!81674))

(declare-fun m!81676 () Bool)

(assert (=> b!97503 m!81676))

(assert (=> b!97330 d!22411))

(declare-fun d!22417 () Bool)

(assert (=> d!22417 (= (list!605 (seqFromList!180 input!2238)) (list!609 (c!23854 (seqFromList!180 input!2238))))))

(declare-fun bs!9572 () Bool)

(assert (= bs!9572 d!22417))

(declare-fun m!81678 () Bool)

(assert (=> bs!9572 m!81678))

(assert (=> b!97330 d!22417))

(declare-fun d!22419 () Bool)

(assert (=> d!22419 true))

(declare-fun order!675 () Int)

(declare-fun lambda!1735 () Int)

(declare-fun dynLambda!442 (Int Int) Int)

(assert (=> d!22419 (< (dynLambda!441 order!673 (toValue!889 (transformation!342 (h!6965 rules!2471)))) (dynLambda!442 order!675 lambda!1735))))

(declare-fun Forall2!46 (Int) Bool)

(assert (=> d!22419 (= (equivClasses!73 (toChars!748 (transformation!342 (h!6965 rules!2471))) (toValue!889 (transformation!342 (h!6965 rules!2471)))) (Forall2!46 lambda!1735))))

(declare-fun bs!9573 () Bool)

(assert (= bs!9573 d!22419))

(declare-fun m!81680 () Bool)

(assert (=> bs!9573 m!81680))

(assert (=> b!97319 d!22419))

(declare-fun d!22421 () Bool)

(declare-fun lt!25773 () Bool)

(assert (=> d!22421 (= lt!25773 (isEmpty!658 (list!604 (_1!1047 lt!25593))))))

(declare-fun isEmpty!659 (Conc!485) Bool)

(assert (=> d!22421 (= lt!25773 (isEmpty!659 (c!23856 (_1!1047 lt!25593))))))

(assert (=> d!22421 (= (isEmpty!654 (_1!1047 lt!25593)) lt!25773)))

(declare-fun bs!9574 () Bool)

(assert (= bs!9574 d!22421))

(assert (=> bs!9574 m!81392))

(assert (=> bs!9574 m!81392))

(declare-fun m!81682 () Bool)

(assert (=> bs!9574 m!81682))

(declare-fun m!81684 () Bool)

(assert (=> bs!9574 m!81684))

(assert (=> b!97331 d!22421))

(declare-fun d!22423 () Bool)

(assert (=> d!22423 (= (inv!1917 (tag!520 (h!6965 (t!21089 rules!2471)))) (= (mod (str.len (value!12616 (tag!520 (h!6965 (t!21089 rules!2471))))) 2) 0))))

(assert (=> b!97347 d!22423))

(declare-fun d!22425 () Bool)

(declare-fun res!47531 () Bool)

(declare-fun e!54002 () Bool)

(assert (=> d!22425 (=> (not res!47531) (not e!54002))))

(assert (=> d!22425 (= res!47531 (semiInverseModEq!78 (toChars!748 (transformation!342 (h!6965 (t!21089 rules!2471)))) (toValue!889 (transformation!342 (h!6965 (t!21089 rules!2471))))))))

(assert (=> d!22425 (= (inv!1920 (transformation!342 (h!6965 (t!21089 rules!2471)))) e!54002)))

(declare-fun b!97509 () Bool)

(assert (=> b!97509 (= e!54002 (equivClasses!73 (toChars!748 (transformation!342 (h!6965 (t!21089 rules!2471)))) (toValue!889 (transformation!342 (h!6965 (t!21089 rules!2471))))))))

(assert (= (and d!22425 res!47531) b!97509))

(declare-fun m!81686 () Bool)

(assert (=> d!22425 m!81686))

(declare-fun m!81688 () Bool)

(assert (=> b!97509 m!81688))

(assert (=> b!97347 d!22425))

(declare-fun b!97520 () Bool)

(declare-fun e!54008 () List!1572)

(declare-fun list!612 (IArray!969) List!1572)

(assert (=> b!97520 (= e!54008 (list!612 (xs!3071 (c!23854 (print!69 thiss!19403 (_1!1047 lt!25571))))))))

(declare-fun b!97518 () Bool)

(declare-fun e!54007 () List!1572)

(assert (=> b!97518 (= e!54007 Nil!1566)))

(declare-fun b!97521 () Bool)

(assert (=> b!97521 (= e!54008 (++!217 (list!609 (left!1192 (c!23854 (print!69 thiss!19403 (_1!1047 lt!25571))))) (list!609 (right!1522 (c!23854 (print!69 thiss!19403 (_1!1047 lt!25571)))))))))

(declare-fun b!97519 () Bool)

(assert (=> b!97519 (= e!54007 e!54008)))

(declare-fun c!23905 () Bool)

(assert (=> b!97519 (= c!23905 (is-Leaf!791 (c!23854 (print!69 thiss!19403 (_1!1047 lt!25571)))))))

(declare-fun d!22427 () Bool)

(declare-fun c!23904 () Bool)

(assert (=> d!22427 (= c!23904 (is-Empty!484 (c!23854 (print!69 thiss!19403 (_1!1047 lt!25571)))))))

(assert (=> d!22427 (= (list!609 (c!23854 (print!69 thiss!19403 (_1!1047 lt!25571)))) e!54007)))

(assert (= (and d!22427 c!23904) b!97518))

(assert (= (and d!22427 (not c!23904)) b!97519))

(assert (= (and b!97519 c!23905) b!97520))

(assert (= (and b!97519 (not c!23905)) b!97521))

(declare-fun m!81690 () Bool)

(assert (=> b!97520 m!81690))

(declare-fun m!81692 () Bool)

(assert (=> b!97521 m!81692))

(declare-fun m!81694 () Bool)

(assert (=> b!97521 m!81694))

(assert (=> b!97521 m!81692))

(assert (=> b!97521 m!81694))

(declare-fun m!81696 () Bool)

(assert (=> b!97521 m!81696))

(assert (=> d!22343 d!22427))

(declare-fun d!22429 () Bool)

(declare-fun res!47536 () Bool)

(declare-fun e!54013 () Bool)

(assert (=> d!22429 (=> res!47536 e!54013)))

(assert (=> d!22429 (= res!47536 (is-Nil!1568 rules!2471))))

(assert (=> d!22429 (= (noDuplicateTag!86 thiss!19403 rules!2471 Nil!1574) e!54013)))

(declare-fun b!97526 () Bool)

(declare-fun e!54014 () Bool)

(assert (=> b!97526 (= e!54013 e!54014)))

(declare-fun res!47537 () Bool)

(assert (=> b!97526 (=> (not res!47537) (not e!54014))))

(declare-fun contains!249 (List!1580 String!2053) Bool)

(assert (=> b!97526 (= res!47537 (not (contains!249 Nil!1574 (tag!520 (h!6965 rules!2471)))))))

(declare-fun b!97527 () Bool)

(assert (=> b!97527 (= e!54014 (noDuplicateTag!86 thiss!19403 (t!21089 rules!2471) (Cons!1574 (tag!520 (h!6965 rules!2471)) Nil!1574)))))

(assert (= (and d!22429 (not res!47536)) b!97526))

(assert (= (and b!97526 res!47537) b!97527))

(declare-fun m!81698 () Bool)

(assert (=> b!97526 m!81698))

(declare-fun m!81700 () Bool)

(assert (=> b!97527 m!81700))

(assert (=> b!97337 d!22429))

(declare-fun d!22431 () Bool)

(declare-fun c!23908 () Bool)

(assert (=> d!22431 (= c!23908 (is-Nil!1566 lt!25584))))

(declare-fun e!54017 () (Set C!1742))

(assert (=> d!22431 (= (content!115 lt!25584) e!54017)))

(declare-fun b!97532 () Bool)

(assert (=> b!97532 (= e!54017 (as set.empty (Set C!1742)))))

(declare-fun b!97533 () Bool)

(assert (=> b!97533 (= e!54017 (set.union (set.insert (h!6963 lt!25584) (as set.empty (Set C!1742))) (content!115 (t!21087 lt!25584))))))

(assert (= (and d!22431 c!23908) b!97532))

(assert (= (and d!22431 (not c!23908)) b!97533))

(declare-fun m!81702 () Bool)

(assert (=> b!97533 m!81702))

(declare-fun m!81704 () Bool)

(assert (=> b!97533 m!81704))

(assert (=> d!22339 d!22431))

(declare-fun d!22433 () Bool)

(declare-fun c!23909 () Bool)

(assert (=> d!22433 (= c!23909 (is-Nil!1566 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571)))))))

(declare-fun e!54018 () (Set C!1742))

(assert (=> d!22433 (= (content!115 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571)))) e!54018)))

(declare-fun b!97534 () Bool)

(assert (=> b!97534 (= e!54018 (as set.empty (Set C!1742)))))

(declare-fun b!97535 () Bool)

(assert (=> b!97535 (= e!54018 (set.union (set.insert (h!6963 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571)))) (as set.empty (Set C!1742))) (content!115 (t!21087 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571)))))))))

(assert (= (and d!22433 c!23909) b!97534))

(assert (= (and d!22433 (not c!23909)) b!97535))

(declare-fun m!81706 () Bool)

(assert (=> b!97535 m!81706))

(declare-fun m!81708 () Bool)

(assert (=> b!97535 m!81708))

(assert (=> d!22339 d!22433))

(declare-fun d!22435 () Bool)

(declare-fun c!23910 () Bool)

(assert (=> d!22435 (= c!23910 (is-Nil!1566 (list!605 (_2!1047 lt!25571))))))

(declare-fun e!54019 () (Set C!1742))

(assert (=> d!22435 (= (content!115 (list!605 (_2!1047 lt!25571))) e!54019)))

(declare-fun b!97536 () Bool)

(assert (=> b!97536 (= e!54019 (as set.empty (Set C!1742)))))

(declare-fun b!97537 () Bool)

(assert (=> b!97537 (= e!54019 (set.union (set.insert (h!6963 (list!605 (_2!1047 lt!25571))) (as set.empty (Set C!1742))) (content!115 (t!21087 (list!605 (_2!1047 lt!25571))))))))

(assert (= (and d!22435 c!23910) b!97536))

(assert (= (and d!22435 (not c!23910)) b!97537))

(declare-fun m!81710 () Bool)

(assert (=> b!97537 m!81710))

(declare-fun m!81712 () Bool)

(assert (=> b!97537 m!81712))

(assert (=> d!22339 d!22435))

(declare-fun d!22437 () Bool)

(declare-fun lt!25776 () Int)

(assert (=> d!22437 (= lt!25776 (size!1374 (list!605 (_2!1047 lt!25593))))))

(assert (=> d!22437 (= lt!25776 (size!1380 (c!23854 (_2!1047 lt!25593))))))

(assert (=> d!22437 (= (size!1376 (_2!1047 lt!25593)) lt!25776)))

(declare-fun bs!9575 () Bool)

(assert (= bs!9575 d!22437))

(assert (=> bs!9575 m!81380))

(assert (=> bs!9575 m!81380))

(declare-fun m!81714 () Bool)

(assert (=> bs!9575 m!81714))

(declare-fun m!81716 () Bool)

(assert (=> bs!9575 m!81716))

(assert (=> b!97332 d!22437))

(declare-fun d!22439 () Bool)

(declare-fun lt!25777 () Int)

(assert (=> d!22439 (= lt!25777 (size!1374 (list!605 (seqFromList!180 input!2238))))))

(assert (=> d!22439 (= lt!25777 (size!1380 (c!23854 (seqFromList!180 input!2238))))))

(assert (=> d!22439 (= (size!1376 (seqFromList!180 input!2238)) lt!25777)))

(declare-fun bs!9576 () Bool)

(assert (= bs!9576 d!22439))

(assert (=> bs!9576 m!81298))

(assert (=> bs!9576 m!81382))

(assert (=> bs!9576 m!81382))

(assert (=> bs!9576 m!81668))

(declare-fun m!81718 () Bool)

(assert (=> bs!9576 m!81718))

(assert (=> b!97332 d!22439))

(declare-fun d!22441 () Bool)

(assert (=> d!22441 (= (list!604 (_1!1047 lt!25593)) (list!608 (c!23856 (_1!1047 lt!25593))))))

(declare-fun bs!9577 () Bool)

(assert (= bs!9577 d!22441))

(declare-fun m!81720 () Bool)

(assert (=> bs!9577 m!81720))

(assert (=> b!97333 d!22441))

(assert (=> b!97333 d!22411))

(assert (=> b!97333 d!22417))

(declare-fun b!97546 () Bool)

(declare-fun e!54024 () List!1575)

(assert (=> b!97546 (= e!54024 Nil!1569)))

(declare-fun b!97549 () Bool)

(declare-fun e!54025 () List!1575)

(assert (=> b!97549 (= e!54025 (++!220 (list!608 (left!1193 (c!23856 (_1!1047 lt!25571)))) (list!608 (right!1523 (c!23856 (_1!1047 lt!25571))))))))

(declare-fun b!97547 () Bool)

(assert (=> b!97547 (= e!54024 e!54025)))

(declare-fun c!23916 () Bool)

(assert (=> b!97547 (= c!23916 (is-Leaf!792 (c!23856 (_1!1047 lt!25571))))))

(declare-fun d!22443 () Bool)

(declare-fun c!23915 () Bool)

(assert (=> d!22443 (= c!23915 (is-Empty!485 (c!23856 (_1!1047 lt!25571))))))

(assert (=> d!22443 (= (list!608 (c!23856 (_1!1047 lt!25571))) e!54024)))

(declare-fun b!97548 () Bool)

(declare-fun list!613 (IArray!971) List!1575)

(assert (=> b!97548 (= e!54025 (list!613 (xs!3072 (c!23856 (_1!1047 lt!25571)))))))

(assert (= (and d!22443 c!23915) b!97546))

(assert (= (and d!22443 (not c!23915)) b!97547))

(assert (= (and b!97547 c!23916) b!97548))

(assert (= (and b!97547 (not c!23916)) b!97549))

(declare-fun m!81722 () Bool)

(assert (=> b!97549 m!81722))

(declare-fun m!81724 () Bool)

(assert (=> b!97549 m!81724))

(assert (=> b!97549 m!81722))

(assert (=> b!97549 m!81724))

(declare-fun m!81726 () Bool)

(assert (=> b!97549 m!81726))

(declare-fun m!81728 () Bool)

(assert (=> b!97548 m!81728))

(assert (=> d!22335 d!22443))

(declare-fun d!22445 () Bool)

(declare-fun e!54028 () Bool)

(assert (=> d!22445 e!54028))

(declare-fun res!47540 () Bool)

(assert (=> d!22445 (=> (not res!47540) (not e!54028))))

(declare-fun lt!25780 () BalanceConc!972)

(assert (=> d!22445 (= res!47540 (= (list!605 lt!25780) input!2238))))

(declare-fun fromList!48 (List!1572) Conc!484)

(assert (=> d!22445 (= lt!25780 (BalanceConc!973 (fromList!48 input!2238)))))

(assert (=> d!22445 (= (fromListB!76 input!2238) lt!25780)))

(declare-fun b!97552 () Bool)

(declare-fun isBalanced!115 (Conc!484) Bool)

(assert (=> b!97552 (= e!54028 (isBalanced!115 (fromList!48 input!2238)))))

(assert (= (and d!22445 res!47540) b!97552))

(declare-fun m!81730 () Bool)

(assert (=> d!22445 m!81730))

(declare-fun m!81732 () Bool)

(assert (=> d!22445 m!81732))

(assert (=> b!97552 m!81732))

(assert (=> b!97552 m!81732))

(declare-fun m!81734 () Bool)

(assert (=> b!97552 m!81734))

(assert (=> d!22359 d!22445))

(declare-fun lt!25781 () List!1572)

(declare-fun b!97556 () Bool)

(declare-fun e!54030 () Bool)

(assert (=> b!97556 (= e!54030 (or (not (= (list!605 (_2!1047 lt!25571)) Nil!1566)) (= lt!25781 (t!21087 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571)))))))))

(declare-fun b!97555 () Bool)

(declare-fun res!47542 () Bool)

(assert (=> b!97555 (=> (not res!47542) (not e!54030))))

(assert (=> b!97555 (= res!47542 (= (size!1374 lt!25781) (+ (size!1374 (t!21087 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571))))) (size!1374 (list!605 (_2!1047 lt!25571))))))))

(declare-fun b!97553 () Bool)

(declare-fun e!54029 () List!1572)

(assert (=> b!97553 (= e!54029 (list!605 (_2!1047 lt!25571)))))

(declare-fun d!22447 () Bool)

(assert (=> d!22447 e!54030))

(declare-fun res!47541 () Bool)

(assert (=> d!22447 (=> (not res!47541) (not e!54030))))

(assert (=> d!22447 (= res!47541 (= (content!115 lt!25781) (set.union (content!115 (t!21087 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571))))) (content!115 (list!605 (_2!1047 lt!25571))))))))

(assert (=> d!22447 (= lt!25781 e!54029)))

(declare-fun c!23918 () Bool)

(assert (=> d!22447 (= c!23918 (is-Nil!1566 (t!21087 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571))))))))

(assert (=> d!22447 (= (++!217 (t!21087 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571)))) (list!605 (_2!1047 lt!25571))) lt!25781)))

(declare-fun b!97554 () Bool)

(assert (=> b!97554 (= e!54029 (Cons!1566 (h!6963 (t!21087 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571))))) (++!217 (t!21087 (t!21087 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571))))) (list!605 (_2!1047 lt!25571)))))))

(assert (= (and d!22447 c!23918) b!97553))

(assert (= (and d!22447 (not c!23918)) b!97554))

(assert (= (and d!22447 res!47541) b!97555))

(assert (= (and b!97555 res!47542) b!97556))

(declare-fun m!81736 () Bool)

(assert (=> b!97555 m!81736))

(declare-fun m!81738 () Bool)

(assert (=> b!97555 m!81738))

(assert (=> b!97555 m!81314))

(assert (=> b!97555 m!81352))

(declare-fun m!81740 () Bool)

(assert (=> d!22447 m!81740))

(assert (=> d!22447 m!81708))

(assert (=> d!22447 m!81314))

(assert (=> d!22447 m!81358))

(assert (=> b!97554 m!81314))

(declare-fun m!81742 () Bool)

(assert (=> b!97554 m!81742))

(assert (=> b!97314 d!22447))

(declare-fun d!22449 () Bool)

(declare-fun lt!25784 () Int)

(assert (=> d!22449 (>= lt!25784 0)))

(declare-fun e!54033 () Int)

(assert (=> d!22449 (= lt!25784 e!54033)))

(declare-fun c!23921 () Bool)

(assert (=> d!22449 (= c!23921 (is-Nil!1566 lt!25584))))

(assert (=> d!22449 (= (size!1374 lt!25584) lt!25784)))

(declare-fun b!97561 () Bool)

(assert (=> b!97561 (= e!54033 0)))

(declare-fun b!97562 () Bool)

(assert (=> b!97562 (= e!54033 (+ 1 (size!1374 (t!21087 lt!25584))))))

(assert (= (and d!22449 c!23921) b!97561))

(assert (= (and d!22449 (not c!23921)) b!97562))

(declare-fun m!81744 () Bool)

(assert (=> b!97562 m!81744))

(assert (=> b!97315 d!22449))

(declare-fun d!22451 () Bool)

(declare-fun lt!25785 () Int)

(assert (=> d!22451 (>= lt!25785 0)))

(declare-fun e!54034 () Int)

(assert (=> d!22451 (= lt!25785 e!54034)))

(declare-fun c!23922 () Bool)

(assert (=> d!22451 (= c!23922 (is-Nil!1566 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571)))))))

(assert (=> d!22451 (= (size!1374 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571)))) lt!25785)))

(declare-fun b!97563 () Bool)

(assert (=> b!97563 (= e!54034 0)))

(declare-fun b!97564 () Bool)

(assert (=> b!97564 (= e!54034 (+ 1 (size!1374 (t!21087 (list!605 (print!69 thiss!19403 (_1!1047 lt!25571)))))))))

(assert (= (and d!22451 c!23922) b!97563))

(assert (= (and d!22451 (not c!23922)) b!97564))

(assert (=> b!97564 m!81738))

(assert (=> b!97315 d!22451))

(declare-fun d!22453 () Bool)

(declare-fun lt!25786 () Int)

(assert (=> d!22453 (>= lt!25786 0)))

(declare-fun e!54035 () Int)

(assert (=> d!22453 (= lt!25786 e!54035)))

(declare-fun c!23923 () Bool)

(assert (=> d!22453 (= c!23923 (is-Nil!1566 (list!605 (_2!1047 lt!25571))))))

(assert (=> d!22453 (= (size!1374 (list!605 (_2!1047 lt!25571))) lt!25786)))

(declare-fun b!97565 () Bool)

(assert (=> b!97565 (= e!54035 0)))

(declare-fun b!97566 () Bool)

(assert (=> b!97566 (= e!54035 (+ 1 (size!1374 (t!21087 (list!605 (_2!1047 lt!25571))))))))

(assert (= (and d!22453 c!23923) b!97565))

(assert (= (and d!22453 (not c!23923)) b!97566))

(declare-fun m!81746 () Bool)

(assert (=> b!97566 m!81746))

(assert (=> b!97315 d!22453))

(declare-fun b!97569 () Bool)

(declare-fun e!54037 () List!1572)

(assert (=> b!97569 (= e!54037 (list!612 (xs!3071 (c!23854 (_2!1047 lt!25571)))))))

(declare-fun b!97567 () Bool)

(declare-fun e!54036 () List!1572)

(assert (=> b!97567 (= e!54036 Nil!1566)))

(declare-fun b!97570 () Bool)

(assert (=> b!97570 (= e!54037 (++!217 (list!609 (left!1192 (c!23854 (_2!1047 lt!25571)))) (list!609 (right!1522 (c!23854 (_2!1047 lt!25571))))))))

(declare-fun b!97568 () Bool)

(assert (=> b!97568 (= e!54036 e!54037)))

(declare-fun c!23925 () Bool)

(assert (=> b!97568 (= c!23925 (is-Leaf!791 (c!23854 (_2!1047 lt!25571))))))

(declare-fun d!22455 () Bool)

(declare-fun c!23924 () Bool)

(assert (=> d!22455 (= c!23924 (is-Empty!484 (c!23854 (_2!1047 lt!25571))))))

(assert (=> d!22455 (= (list!609 (c!23854 (_2!1047 lt!25571))) e!54036)))

(assert (= (and d!22455 c!23924) b!97567))

(assert (= (and d!22455 (not c!23924)) b!97568))

(assert (= (and b!97568 c!23925) b!97569))

(assert (= (and b!97568 (not c!23925)) b!97570))

(declare-fun m!81748 () Bool)

(assert (=> b!97569 m!81748))

(declare-fun m!81750 () Bool)

(assert (=> b!97570 m!81750))

(declare-fun m!81752 () Bool)

(assert (=> b!97570 m!81752))

(assert (=> b!97570 m!81750))

(assert (=> b!97570 m!81752))

(declare-fun m!81754 () Bool)

(assert (=> b!97570 m!81754))

(assert (=> d!22347 d!22455))

(declare-fun b!97571 () Bool)

(declare-fun e!54038 () Bool)

(assert (=> b!97571 (= e!54038 tp_is_empty!743)))

(assert (=> b!97347 (= tp!56128 e!54038)))

(declare-fun b!97574 () Bool)

(declare-fun tp!56178 () Bool)

(declare-fun tp!56180 () Bool)

(assert (=> b!97574 (= e!54038 (and tp!56178 tp!56180))))

(declare-fun b!97572 () Bool)

(declare-fun tp!56179 () Bool)

(declare-fun tp!56181 () Bool)

(assert (=> b!97572 (= e!54038 (and tp!56179 tp!56181))))

(declare-fun b!97573 () Bool)

(declare-fun tp!56177 () Bool)

(assert (=> b!97573 (= e!54038 tp!56177)))

(assert (= (and b!97347 (is-ElementMatch!410 (regex!342 (h!6965 (t!21089 rules!2471))))) b!97571))

(assert (= (and b!97347 (is-Concat!742 (regex!342 (h!6965 (t!21089 rules!2471))))) b!97572))

(assert (= (and b!97347 (is-Star!410 (regex!342 (h!6965 (t!21089 rules!2471))))) b!97573))

(assert (= (and b!97347 (is-Union!410 (regex!342 (h!6965 (t!21089 rules!2471))))) b!97574))

(declare-fun b!97575 () Bool)

(declare-fun e!54039 () Bool)

(assert (=> b!97575 (= e!54039 tp_is_empty!743)))

(assert (=> b!97362 (= tp!56140 e!54039)))

(declare-fun b!97578 () Bool)

(declare-fun tp!56183 () Bool)

(declare-fun tp!56185 () Bool)

(assert (=> b!97578 (= e!54039 (and tp!56183 tp!56185))))

(declare-fun b!97576 () Bool)

(declare-fun tp!56184 () Bool)

(declare-fun tp!56186 () Bool)

(assert (=> b!97576 (= e!54039 (and tp!56184 tp!56186))))

(declare-fun b!97577 () Bool)

(declare-fun tp!56182 () Bool)

(assert (=> b!97577 (= e!54039 tp!56182)))

(assert (= (and b!97362 (is-ElementMatch!410 (regOne!1333 (regex!342 (h!6965 rules!2471))))) b!97575))

(assert (= (and b!97362 (is-Concat!742 (regOne!1333 (regex!342 (h!6965 rules!2471))))) b!97576))

(assert (= (and b!97362 (is-Star!410 (regOne!1333 (regex!342 (h!6965 rules!2471))))) b!97577))

(assert (= (and b!97362 (is-Union!410 (regOne!1333 (regex!342 (h!6965 rules!2471))))) b!97578))

(declare-fun b!97579 () Bool)

(declare-fun e!54040 () Bool)

(assert (=> b!97579 (= e!54040 tp_is_empty!743)))

(assert (=> b!97362 (= tp!56142 e!54040)))

(declare-fun b!97582 () Bool)

(declare-fun tp!56188 () Bool)

(declare-fun tp!56190 () Bool)

(assert (=> b!97582 (= e!54040 (and tp!56188 tp!56190))))

(declare-fun b!97580 () Bool)

(declare-fun tp!56189 () Bool)

(declare-fun tp!56191 () Bool)

(assert (=> b!97580 (= e!54040 (and tp!56189 tp!56191))))

(declare-fun b!97581 () Bool)

(declare-fun tp!56187 () Bool)

(assert (=> b!97581 (= e!54040 tp!56187)))

(assert (= (and b!97362 (is-ElementMatch!410 (regTwo!1333 (regex!342 (h!6965 rules!2471))))) b!97579))

(assert (= (and b!97362 (is-Concat!742 (regTwo!1333 (regex!342 (h!6965 rules!2471))))) b!97580))

(assert (= (and b!97362 (is-Star!410 (regTwo!1333 (regex!342 (h!6965 rules!2471))))) b!97581))

(assert (= (and b!97362 (is-Union!410 (regTwo!1333 (regex!342 (h!6965 rules!2471))))) b!97582))

(declare-fun b!97583 () Bool)

(declare-fun e!54041 () Bool)

(assert (=> b!97583 (= e!54041 tp_is_empty!743)))

(assert (=> b!97360 (= tp!56141 e!54041)))

(declare-fun b!97586 () Bool)

(declare-fun tp!56193 () Bool)

(declare-fun tp!56195 () Bool)

(assert (=> b!97586 (= e!54041 (and tp!56193 tp!56195))))

(declare-fun b!97584 () Bool)

(declare-fun tp!56194 () Bool)

(declare-fun tp!56196 () Bool)

(assert (=> b!97584 (= e!54041 (and tp!56194 tp!56196))))

(declare-fun b!97585 () Bool)

(declare-fun tp!56192 () Bool)

(assert (=> b!97585 (= e!54041 tp!56192)))

(assert (= (and b!97360 (is-ElementMatch!410 (regOne!1332 (regex!342 (h!6965 rules!2471))))) b!97583))

(assert (= (and b!97360 (is-Concat!742 (regOne!1332 (regex!342 (h!6965 rules!2471))))) b!97584))

(assert (= (and b!97360 (is-Star!410 (regOne!1332 (regex!342 (h!6965 rules!2471))))) b!97585))

(assert (= (and b!97360 (is-Union!410 (regOne!1332 (regex!342 (h!6965 rules!2471))))) b!97586))

(declare-fun b!97587 () Bool)

(declare-fun e!54042 () Bool)

(assert (=> b!97587 (= e!54042 tp_is_empty!743)))

(assert (=> b!97360 (= tp!56143 e!54042)))

(declare-fun b!97590 () Bool)

(declare-fun tp!56198 () Bool)

(declare-fun tp!56200 () Bool)

(assert (=> b!97590 (= e!54042 (and tp!56198 tp!56200))))

(declare-fun b!97588 () Bool)

(declare-fun tp!56199 () Bool)

(declare-fun tp!56201 () Bool)

(assert (=> b!97588 (= e!54042 (and tp!56199 tp!56201))))

(declare-fun b!97589 () Bool)

(declare-fun tp!56197 () Bool)

(assert (=> b!97589 (= e!54042 tp!56197)))

(assert (= (and b!97360 (is-ElementMatch!410 (regTwo!1332 (regex!342 (h!6965 rules!2471))))) b!97587))

(assert (= (and b!97360 (is-Concat!742 (regTwo!1332 (regex!342 (h!6965 rules!2471))))) b!97588))

(assert (= (and b!97360 (is-Star!410 (regTwo!1332 (regex!342 (h!6965 rules!2471))))) b!97589))

(assert (= (and b!97360 (is-Union!410 (regTwo!1332 (regex!342 (h!6965 rules!2471))))) b!97590))

(declare-fun b!97591 () Bool)

(declare-fun e!54043 () Bool)

(declare-fun tp!56202 () Bool)

(assert (=> b!97591 (= e!54043 (and tp_is_empty!743 tp!56202))))

(assert (=> b!97367 (= tp!56146 e!54043)))

(assert (= (and b!97367 (is-Cons!1566 (t!21087 (t!21087 input!2238)))) b!97591))

(declare-fun b!97592 () Bool)

(declare-fun e!54044 () Bool)

(assert (=> b!97592 (= e!54044 tp_is_empty!743)))

(assert (=> b!97361 (= tp!56139 e!54044)))

(declare-fun b!97595 () Bool)

(declare-fun tp!56204 () Bool)

(declare-fun tp!56206 () Bool)

(assert (=> b!97595 (= e!54044 (and tp!56204 tp!56206))))

(declare-fun b!97593 () Bool)

(declare-fun tp!56205 () Bool)

(declare-fun tp!56207 () Bool)

(assert (=> b!97593 (= e!54044 (and tp!56205 tp!56207))))

(declare-fun b!97594 () Bool)

(declare-fun tp!56203 () Bool)

(assert (=> b!97594 (= e!54044 tp!56203)))

(assert (= (and b!97361 (is-ElementMatch!410 (reg!739 (regex!342 (h!6965 rules!2471))))) b!97592))

(assert (= (and b!97361 (is-Concat!742 (reg!739 (regex!342 (h!6965 rules!2471))))) b!97593))

(assert (= (and b!97361 (is-Star!410 (reg!739 (regex!342 (h!6965 rules!2471))))) b!97594))

(assert (= (and b!97361 (is-Union!410 (reg!739 (regex!342 (h!6965 rules!2471))))) b!97595))

(declare-fun b!97598 () Bool)

(declare-fun b_free!2901 () Bool)

(declare-fun b_next!2901 () Bool)

(assert (=> b!97598 (= b_free!2901 (not b_next!2901))))

(declare-fun tp!56210 () Bool)

(declare-fun b_and!4367 () Bool)

(assert (=> b!97598 (= tp!56210 b_and!4367)))

(declare-fun b_free!2903 () Bool)

(declare-fun b_next!2903 () Bool)

(assert (=> b!97598 (= b_free!2903 (not b_next!2903))))

(declare-fun tp!56209 () Bool)

(declare-fun b_and!4369 () Bool)

(assert (=> b!97598 (= tp!56209 b_and!4369)))

(declare-fun e!54048 () Bool)

(assert (=> b!97598 (= e!54048 (and tp!56210 tp!56209))))

(declare-fun b!97597 () Bool)

(declare-fun e!54045 () Bool)

(declare-fun tp!56211 () Bool)

(assert (=> b!97597 (= e!54045 (and tp!56211 (inv!1917 (tag!520 (h!6965 (t!21089 (t!21089 rules!2471))))) (inv!1920 (transformation!342 (h!6965 (t!21089 (t!21089 rules!2471))))) e!54048))))

(declare-fun b!97596 () Bool)

(declare-fun e!54046 () Bool)

(declare-fun tp!56208 () Bool)

(assert (=> b!97596 (= e!54046 (and e!54045 tp!56208))))

(assert (=> b!97346 (= tp!56125 e!54046)))

(assert (= b!97597 b!97598))

(assert (= b!97596 b!97597))

(assert (= (and b!97346 (is-Cons!1568 (t!21089 (t!21089 rules!2471)))) b!97596))

(declare-fun m!81756 () Bool)

(assert (=> b!97597 m!81756))

(declare-fun m!81758 () Bool)

(assert (=> b!97597 m!81758))

(push 1)

(assert (not b!97548))

(assert (not b!97572))

(assert (not d!22441))

(assert (not b!97569))

(assert (not d!22445))

(assert (not b!97527))

(assert (not b_next!2885))

(assert (not d!22447))

(assert b_and!4353)

(assert (not b!97520))

(assert (not d!22421))

(assert (not d!22395))

(assert (not d!22399))

(assert (not b_next!2901))

(assert (not b!97509))

(assert (not d!22391))

(assert (not b!97502))

(assert (not b!97533))

(assert (not b!97549))

(assert (not b!97576))

(assert (not b!97566))

(assert (not b!97552))

(assert (not b!97588))

(assert b_and!4361)

(assert (not b!97461))

(assert (not b!97597))

(assert (not b!97570))

(assert (not b!97573))

(assert (not d!22439))

(assert (not d!22407))

(assert (not b!97564))

(assert (not b_next!2903))

(assert (not b!97554))

(assert (not b!97460))

(assert (not d!22437))

(assert (not b!97580))

(assert (not b!97462))

(assert b_and!4367)

(assert (not b!97574))

(assert (not b!97537))

(assert (not b!97500))

(assert (not d!22393))

(assert (not b!97586))

(assert tp_is_empty!743)

(assert (not b!97445))

(assert b_and!4351)

(assert (not d!22385))

(assert (not d!22417))

(assert (not b!97589))

(assert (not d!22425))

(assert (not b!97596))

(assert (not b!97591))

(assert b_and!4359)

(assert (not b!97577))

(assert (not b!97555))

(assert (not b!97503))

(assert (not b_next!2895))

(assert (not b!97443))

(assert (not b!97578))

(assert (not b_next!2887))

(assert (not b!97466))

(assert (not b!97562))

(assert (not b!97594))

(assert (not b!97584))

(assert (not d!22419))

(assert (not d!22409))

(assert (not b!97521))

(assert (not b!97581))

(assert (not b_next!2893))

(assert (not b!97582))

(assert b_and!4369)

(assert (not d!22411))

(assert (not b!97435))

(assert (not b!97595))

(assert (not b!97590))

(assert (not b!97593))

(assert (not d!22387))

(assert (not b!97526))

(assert (not b!97535))

(assert (not b!97585))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2885))

(assert b_and!4353)

(assert (not b_next!2901))

(assert b_and!4361)

(assert (not b_next!2903))

(assert b_and!4367)

(assert b_and!4351)

(assert b_and!4359)

(assert (not b_next!2895))

(assert (not b_next!2887))

(assert (not b_next!2893))

(assert b_and!4369)

(check-sat)

(pop 1)


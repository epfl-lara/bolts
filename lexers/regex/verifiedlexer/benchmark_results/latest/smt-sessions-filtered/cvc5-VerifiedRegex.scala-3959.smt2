; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!216252 () Bool)

(assert start!216252)

(assert (=> start!216252 true))

(declare-fun b!2218715 () Bool)

(declare-fun e!1416873 () Bool)

(declare-datatypes ((List!26071 0))(
  ( (Nil!25987) (Cons!25987 (h!31388 (_ BitVec 16)) (t!199389 List!26071)) )
))
(declare-datatypes ((IArray!16985 0))(
  ( (IArray!16986 (innerList!8550 List!26071)) )
))
(declare-datatypes ((Conc!8490 0))(
  ( (Node!8490 (left!19959 Conc!8490) (right!20289 Conc!8490) (csize!17210 Int) (cheight!8701 Int)) (Leaf!12450 (xs!11432 IArray!16985) (csize!17211 Int)) (Empty!8490) )
))
(declare-datatypes ((BalanceConc!16698 0))(
  ( (BalanceConc!16699 (c!354240 Conc!8490)) )
))
(declare-fun x!427322 () BalanceConc!16698)

(declare-fun tp!691181 () Bool)

(declare-fun inv!35220 (Conc!8490) Bool)

(assert (=> b!2218715 (= e!1416873 (and (inv!35220 (c!354240 x!427322)) tp!691181))))

(declare-datatypes ((IntegerValueInjection!92 0))(
  ( (IntegerValueInjection!93) )
))
(declare-fun thiss!4894 () IntegerValueInjection!92)

(declare-fun inst!1208 () Bool)

(declare-fun inv!35221 (BalanceConc!16698) Bool)

(declare-fun list!10065 (BalanceConc!16698) List!26071)

(declare-datatypes ((TokenValue!4324 0))(
  ( (FloatLiteralValue!8648 (text!30713 List!26071)) (TokenValueExt!4323 (__x!17101 Int)) (Broken!21620 (value!132105 List!26071)) (Object!4407) (End!4324) (Def!4324) (Underscore!4324) (Match!4324) (Else!4324) (Error!4324) (Case!4324) (If!4324) (Extends!4324) (Abstract!4324) (Class!4324) (Val!4324) (DelimiterValue!8648 (del!4384 List!26071)) (KeywordValue!4330 (value!132106 List!26071)) (CommentValue!8648 (value!132107 List!26071)) (WhitespaceValue!8648 (value!132108 List!26071)) (IndentationValue!4324 (value!132109 List!26071)) (String!28349) (Int32!4324) (Broken!21621 (value!132110 List!26071)) (Boolean!4325) (Unit!38948) (OperatorValue!4327 (op!4384 List!26071)) (IdentifierValue!8648 (value!132111 List!26071)) (IdentifierValue!8649 (value!132112 List!26071)) (WhitespaceValue!8649 (value!132113 List!26071)) (True!8648) (False!8648) (Broken!21622 (value!132114 List!26071)) (Broken!21623 (value!132115 List!26071)) (True!8649) (RightBrace!4324) (RightBracket!4324) (Colon!4324) (Null!4324) (Comma!4324) (LeftBracket!4324) (False!8649) (LeftBrace!4324) (ImaginaryLiteralValue!4324 (text!30714 List!26071)) (StringLiteralValue!12972 (value!132116 List!26071)) (EOFValue!4324 (value!132117 List!26071)) (IdentValue!4324 (value!132118 List!26071)) (DelimiterValue!8649 (value!132119 List!26071)) (DedentValue!4324 (value!132120 List!26071)) (NewLineValue!4324 (value!132121 List!26071)) (IntegerValue!12972 (value!132122 (_ BitVec 32)) (text!30715 List!26071)) (IntegerValue!12973 (value!132123 Int) (text!30716 List!26071)) (Times!4324) (Or!4324) (Equal!4324) (Minus!4324) (Broken!21624 (value!132124 List!26071)) (And!4324) (Div!4324) (LessEqual!4324) (Mod!4324) (Concat!10656) (Not!4324) (Plus!4324) (SpaceValue!4324 (value!132125 List!26071)) (IntegerValue!12974 (value!132126 Int) (text!30717 List!26071)) (StringLiteralValue!12973 (text!30718 List!26071)) (FloatLiteralValue!8649 (text!30719 List!26071)) (BytesLiteralValue!4324 (value!132127 List!26071)) (CommentValue!8649 (value!132128 List!26071)) (StringLiteralValue!12974 (value!132129 List!26071)) (ErrorTokenValue!4324 (msg!4385 List!26071)) )
))
(declare-fun toCharacters!24 (IntegerValueInjection!92 TokenValue!4324) BalanceConc!16698)

(declare-fun toValue!31 (IntegerValueInjection!92 BalanceConc!16698) TokenValue!4324)

(assert (=> start!216252 (= inst!1208 (=> (and (inv!35221 x!427322) e!1416873) (= (list!10065 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427322))) (list!10065 x!427322))))))

(assert (= start!216252 b!2218715))

(declare-fun m!2659463 () Bool)

(assert (=> b!2218715 m!2659463))

(declare-fun m!2659465 () Bool)

(assert (=> start!216252 m!2659465))

(declare-fun m!2659467 () Bool)

(assert (=> start!216252 m!2659467))

(assert (=> start!216252 m!2659467))

(declare-fun m!2659469 () Bool)

(assert (=> start!216252 m!2659469))

(assert (=> start!216252 m!2659469))

(declare-fun m!2659471 () Bool)

(assert (=> start!216252 m!2659471))

(declare-fun m!2659473 () Bool)

(assert (=> start!216252 m!2659473))

(declare-fun bs!451773 () Bool)

(declare-fun neg-inst!1208 () Bool)

(declare-fun s!223719 () Bool)

(assert (= bs!451773 (and neg-inst!1208 s!223719)))

(assert (=> bs!451773 (=> true (= (list!10065 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427322))) (list!10065 x!427322)))))

(assert (=> m!2659467 m!2659469))

(assert (=> m!2659467 m!2659471))

(assert (=> m!2659467 m!2659465))

(assert (=> m!2659467 s!223719))

(assert (=> m!2659465 s!223719))

(declare-fun bs!451774 () Bool)

(assert (= bs!451774 (and neg-inst!1208 start!216252)))

(assert (=> bs!451774 (= true inst!1208)))

(declare-fun lambda!83534 () Int)

(declare-fun Forall!1040 (Int) Bool)

(assert (=> start!216252 (= (Forall!1040 lambda!83534) inst!1208)))

(assert (=> start!216252 (not (Forall!1040 lambda!83534))))

(assert (=> start!216252 true))

(assert (= neg-inst!1208 inst!1208))

(declare-fun m!2659475 () Bool)

(assert (=> start!216252 m!2659475))

(assert (=> start!216252 m!2659475))

(push 1)

(assert (not bs!451773))

(assert (not b!2218715))

(assert (not start!216252))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!663198 () Bool)

(declare-fun list!10067 (Conc!8490) List!26071)

(assert (=> d!663198 (= (list!10065 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427322))) (list!10067 (c!354240 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427322)))))))

(declare-fun bs!451777 () Bool)

(assert (= bs!451777 d!663198))

(declare-fun m!2659491 () Bool)

(assert (=> bs!451777 m!2659491))

(assert (=> bs!451773 d!663198))

(declare-fun d!663200 () Bool)

(declare-fun c!354245 () Bool)

(assert (=> d!663200 (= c!354245 (is-IntegerValue!12973 (toValue!31 thiss!4894 x!427322)))))

(declare-fun e!1416879 () BalanceConc!16698)

(assert (=> d!663200 (= (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427322)) e!1416879)))

(declare-fun b!2218725 () Bool)

(declare-fun seqFromList!2882 (List!26071) BalanceConc!16698)

(assert (=> b!2218725 (= e!1416879 (seqFromList!2882 (text!30716 (toValue!31 thiss!4894 x!427322))))))

(declare-fun b!2218726 () Bool)

(assert (=> b!2218726 (= e!1416879 (BalanceConc!16699 Empty!8490))))

(assert (= (and d!663200 c!354245) b!2218725))

(assert (= (and d!663200 (not c!354245)) b!2218726))

(declare-fun m!2659493 () Bool)

(assert (=> b!2218725 m!2659493))

(assert (=> bs!451773 d!663200))

(declare-fun d!663204 () Bool)

(declare-fun lt!827085 () List!26071)

(declare-fun efficientList!266 (BalanceConc!16698) List!26071)

(assert (=> d!663204 (= lt!827085 (efficientList!266 x!427322))))

(declare-fun charsToBigInt!1 (List!26071) Int)

(assert (=> d!663204 (= (toValue!31 thiss!4894 x!427322) (IntegerValue!12973 (charsToBigInt!1 lt!827085) lt!827085))))

(declare-fun bs!451779 () Bool)

(assert (= bs!451779 d!663204))

(declare-fun m!2659497 () Bool)

(assert (=> bs!451779 m!2659497))

(declare-fun m!2659499 () Bool)

(assert (=> bs!451779 m!2659499))

(assert (=> bs!451773 d!663204))

(declare-fun d!663208 () Bool)

(assert (=> d!663208 (= (list!10065 x!427322) (list!10067 (c!354240 x!427322)))))

(declare-fun bs!451780 () Bool)

(assert (= bs!451780 d!663208))

(declare-fun m!2659501 () Bool)

(assert (=> bs!451780 m!2659501))

(assert (=> bs!451773 d!663208))

(push 1)

(assert (not d!663208))

(assert (not b!2218715))

(assert (not b!2218725))

(assert (not start!216252))

(assert (not d!663198))

(assert (not d!663204))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!663212 () Bool)

(declare-fun lt!827091 () List!26071)

(assert (=> d!663212 (= lt!827091 (list!10065 x!427322))))

(declare-fun efficientList!268 (Conc!8490 List!26071) List!26071)

(declare-fun efficientList$default$2!92 (Conc!8490) List!26071)

(assert (=> d!663212 (= lt!827091 (efficientList!268 (c!354240 x!427322) (efficientList$default$2!92 (c!354240 x!427322))))))

(assert (=> d!663212 (= (efficientList!266 x!427322) lt!827091)))

(declare-fun bs!451783 () Bool)

(assert (= bs!451783 d!663212))

(assert (=> bs!451783 m!2659465))

(declare-fun m!2659511 () Bool)

(assert (=> bs!451783 m!2659511))

(assert (=> bs!451783 m!2659511))

(declare-fun m!2659513 () Bool)

(assert (=> bs!451783 m!2659513))

(assert (=> d!663204 d!663212))

(declare-fun d!663216 () Bool)

(declare-fun choose!644 (List!26071) Int)

(assert (=> d!663216 (= (charsToBigInt!1 lt!827085) (choose!644 lt!827085))))

(declare-fun bs!451784 () Bool)

(assert (= bs!451784 d!663216))

(declare-fun m!2659515 () Bool)

(assert (=> bs!451784 m!2659515))

(assert (=> d!663204 d!663216))

(declare-fun b!2218742 () Bool)

(declare-fun e!1416887 () List!26071)

(declare-fun e!1416888 () List!26071)

(assert (=> b!2218742 (= e!1416887 e!1416888)))

(declare-fun c!354255 () Bool)

(assert (=> b!2218742 (= c!354255 (is-Leaf!12450 (c!354240 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427322)))))))

(declare-fun b!2218741 () Bool)

(assert (=> b!2218741 (= e!1416887 Nil!25987)))

(declare-fun b!2218744 () Bool)

(declare-fun ++!6471 (List!26071 List!26071) List!26071)

(assert (=> b!2218744 (= e!1416888 (++!6471 (list!10067 (left!19959 (c!354240 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427322))))) (list!10067 (right!20289 (c!354240 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427322)))))))))

(declare-fun d!663218 () Bool)

(declare-fun c!354254 () Bool)

(assert (=> d!663218 (= c!354254 (is-Empty!8490 (c!354240 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427322)))))))

(assert (=> d!663218 (= (list!10067 (c!354240 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427322)))) e!1416887)))

(declare-fun b!2218743 () Bool)

(declare-fun list!10069 (IArray!16985) List!26071)

(assert (=> b!2218743 (= e!1416888 (list!10069 (xs!11432 (c!354240 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427322))))))))

(assert (= (and d!663218 c!354254) b!2218741))

(assert (= (and d!663218 (not c!354254)) b!2218742))

(assert (= (and b!2218742 c!354255) b!2218743))

(assert (= (and b!2218742 (not c!354255)) b!2218744))

(declare-fun m!2659517 () Bool)

(assert (=> b!2218744 m!2659517))

(declare-fun m!2659519 () Bool)

(assert (=> b!2218744 m!2659519))

(assert (=> b!2218744 m!2659517))

(assert (=> b!2218744 m!2659519))

(declare-fun m!2659521 () Bool)

(assert (=> b!2218744 m!2659521))

(declare-fun m!2659523 () Bool)

(assert (=> b!2218743 m!2659523))

(assert (=> d!663198 d!663218))

(declare-fun b!2218746 () Bool)

(declare-fun e!1416889 () List!26071)

(declare-fun e!1416890 () List!26071)

(assert (=> b!2218746 (= e!1416889 e!1416890)))

(declare-fun c!354257 () Bool)

(assert (=> b!2218746 (= c!354257 (is-Leaf!12450 (c!354240 x!427322)))))

(declare-fun b!2218745 () Bool)

(assert (=> b!2218745 (= e!1416889 Nil!25987)))

(declare-fun b!2218748 () Bool)

(assert (=> b!2218748 (= e!1416890 (++!6471 (list!10067 (left!19959 (c!354240 x!427322))) (list!10067 (right!20289 (c!354240 x!427322)))))))

(declare-fun d!663220 () Bool)

(declare-fun c!354256 () Bool)

(assert (=> d!663220 (= c!354256 (is-Empty!8490 (c!354240 x!427322)))))

(assert (=> d!663220 (= (list!10067 (c!354240 x!427322)) e!1416889)))

(declare-fun b!2218747 () Bool)

(assert (=> b!2218747 (= e!1416890 (list!10069 (xs!11432 (c!354240 x!427322))))))

(assert (= (and d!663220 c!354256) b!2218745))

(assert (= (and d!663220 (not c!354256)) b!2218746))

(assert (= (and b!2218746 c!354257) b!2218747))

(assert (= (and b!2218746 (not c!354257)) b!2218748))

(declare-fun m!2659525 () Bool)

(assert (=> b!2218748 m!2659525))

(declare-fun m!2659527 () Bool)

(assert (=> b!2218748 m!2659527))

(assert (=> b!2218748 m!2659525))

(assert (=> b!2218748 m!2659527))

(declare-fun m!2659529 () Bool)

(assert (=> b!2218748 m!2659529))

(declare-fun m!2659531 () Bool)

(assert (=> b!2218747 m!2659531))

(assert (=> d!663208 d!663220))

(push 1)

(assert (not b!2218747))

(assert (not b!2218744))

(assert (not b!2218715))

(assert (not b!2218725))

(assert (not d!663212))

(assert (not b!2218743))

(assert (not b!2218748))

(assert (not start!216252))

(assert (not d!663216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!663212 d!663208))

(declare-fun b!2218777 () Bool)

(declare-fun e!1416905 () List!26071)

(declare-fun efficientList!270 (IArray!16985) List!26071)

(assert (=> b!2218777 (= e!1416905 (efficientList!270 (xs!11432 (c!354240 x!427322))))))

(declare-fun bm!132406 () Bool)

(declare-fun c!354274 () Bool)

(declare-fun c!354272 () Bool)

(assert (=> bm!132406 (= c!354274 c!354272)))

(declare-fun lt!827105 () List!26071)

(declare-fun call!132411 () List!26071)

(assert (=> bm!132406 (= call!132411 (++!6471 e!1416905 (ite c!354272 (efficientList$default$2!92 (c!354240 x!427322)) lt!827105)))))

(declare-fun d!663230 () Bool)

(declare-fun lt!827107 () List!26071)

(assert (=> d!663230 (= lt!827107 (++!6471 (list!10067 (c!354240 x!427322)) (efficientList$default$2!92 (c!354240 x!427322))))))

(declare-fun e!1416907 () List!26071)

(assert (=> d!663230 (= lt!827107 e!1416907)))

(declare-fun c!354273 () Bool)

(assert (=> d!663230 (= c!354273 (is-Empty!8490 (c!354240 x!427322)))))

(assert (=> d!663230 (= (efficientList!268 (c!354240 x!427322) (efficientList$default$2!92 (c!354240 x!427322))) lt!827107)))

(declare-fun b!2218778 () Bool)

(declare-datatypes ((Unit!38950 0))(
  ( (Unit!38951) )
))
(declare-fun lt!827106 () Unit!38950)

(declare-fun lt!827109 () Unit!38950)

(assert (=> b!2218778 (= lt!827106 lt!827109)))

(declare-fun lt!827108 () List!26071)

(assert (=> b!2218778 (= (++!6471 call!132411 (efficientList$default$2!92 (c!354240 x!427322))) (++!6471 lt!827108 (++!6471 lt!827105 (efficientList$default$2!92 (c!354240 x!427322)))))))

(declare-fun lemmaConcatAssociativity!1327 (List!26071 List!26071 List!26071) Unit!38950)

(assert (=> b!2218778 (= lt!827109 (lemmaConcatAssociativity!1327 lt!827108 lt!827105 (efficientList$default$2!92 (c!354240 x!427322))))))

(assert (=> b!2218778 (= lt!827105 (list!10067 (right!20289 (c!354240 x!427322))))))

(assert (=> b!2218778 (= lt!827108 (list!10067 (left!19959 (c!354240 x!427322))))))

(declare-fun e!1416906 () List!26071)

(assert (=> b!2218778 (= e!1416906 (efficientList!268 (left!19959 (c!354240 x!427322)) (efficientList!268 (right!20289 (c!354240 x!427322)) (efficientList$default$2!92 (c!354240 x!427322)))))))

(declare-fun b!2218779 () Bool)

(assert (=> b!2218779 (= e!1416907 (efficientList$default$2!92 (c!354240 x!427322)))))

(declare-fun b!2218780 () Bool)

(assert (=> b!2218780 (= e!1416907 e!1416906)))

(assert (=> b!2218780 (= c!354272 (is-Leaf!12450 (c!354240 x!427322)))))

(declare-fun b!2218781 () Bool)

(assert (=> b!2218781 (= e!1416906 call!132411)))

(declare-fun b!2218782 () Bool)

(assert (=> b!2218782 (= e!1416905 lt!827108)))

(assert (= (and d!663230 c!354273) b!2218779))

(assert (= (and d!663230 (not c!354273)) b!2218780))

(assert (= (and b!2218780 c!354272) b!2218781))

(assert (= (and b!2218780 (not c!354272)) b!2218778))

(assert (= (or b!2218781 b!2218778) bm!132406))

(assert (= (and bm!132406 c!354274) b!2218777))

(assert (= (and bm!132406 (not c!354274)) b!2218782))

(declare-fun m!2659555 () Bool)

(assert (=> b!2218777 m!2659555))

(declare-fun m!2659557 () Bool)

(assert (=> bm!132406 m!2659557))

(assert (=> d!663230 m!2659501))

(assert (=> d!663230 m!2659501))

(assert (=> d!663230 m!2659511))

(declare-fun m!2659559 () Bool)

(assert (=> d!663230 m!2659559))

(assert (=> b!2218778 m!2659511))

(declare-fun m!2659561 () Bool)

(assert (=> b!2218778 m!2659561))

(assert (=> b!2218778 m!2659511))

(declare-fun m!2659563 () Bool)

(assert (=> b!2218778 m!2659563))

(assert (=> b!2218778 m!2659563))

(declare-fun m!2659565 () Bool)

(assert (=> b!2218778 m!2659565))

(assert (=> b!2218778 m!2659527))

(assert (=> b!2218778 m!2659511))

(declare-fun m!2659567 () Bool)

(assert (=> b!2218778 m!2659567))

(assert (=> b!2218778 m!2659511))

(declare-fun m!2659569 () Bool)

(assert (=> b!2218778 m!2659569))

(assert (=> b!2218778 m!2659525))

(assert (=> b!2218778 m!2659561))

(declare-fun m!2659571 () Bool)

(assert (=> b!2218778 m!2659571))

(assert (=> d!663212 d!663230))

(declare-fun d!663232 () Bool)

(assert (=> d!663232 (= (efficientList$default$2!92 (c!354240 x!427322)) Nil!25987)))

(assert (=> d!663212 d!663232))

(declare-fun d!663234 () Bool)

(declare-fun c!354277 () Bool)

(assert (=> d!663234 (= c!354277 (is-Node!8490 (c!354240 x!427322)))))

(declare-fun e!1416912 () Bool)

(assert (=> d!663234 (= (inv!35220 (c!354240 x!427322)) e!1416912)))

(declare-fun b!2218789 () Bool)

(declare-fun inv!35224 (Conc!8490) Bool)

(assert (=> b!2218789 (= e!1416912 (inv!35224 (c!354240 x!427322)))))

(declare-fun b!2218790 () Bool)

(declare-fun e!1416913 () Bool)

(assert (=> b!2218790 (= e!1416912 e!1416913)))

(declare-fun res!952843 () Bool)

(assert (=> b!2218790 (= res!952843 (not (is-Leaf!12450 (c!354240 x!427322))))))

(assert (=> b!2218790 (=> res!952843 e!1416913)))

(declare-fun b!2218791 () Bool)

(declare-fun inv!35225 (Conc!8490) Bool)

(assert (=> b!2218791 (= e!1416913 (inv!35225 (c!354240 x!427322)))))

(assert (= (and d!663234 c!354277) b!2218789))

(assert (= (and d!663234 (not c!354277)) b!2218790))

(assert (= (and b!2218790 (not res!952843)) b!2218791))

(declare-fun m!2659573 () Bool)

(assert (=> b!2218789 m!2659573))

(declare-fun m!2659575 () Bool)

(assert (=> b!2218791 m!2659575))

(assert (=> b!2218715 d!663234))

(declare-fun d!663236 () Bool)

(declare-fun fromListB!1298 (List!26071) BalanceConc!16698)

(assert (=> d!663236 (= (seqFromList!2882 (text!30716 (toValue!31 thiss!4894 x!427322))) (fromListB!1298 (text!30716 (toValue!31 thiss!4894 x!427322))))))

(declare-fun bs!451787 () Bool)

(assert (= bs!451787 d!663236))

(declare-fun m!2659577 () Bool)

(assert (=> bs!451787 m!2659577))

(assert (=> b!2218725 d!663236))

(declare-fun d!663238 () Bool)

(declare-fun isBalanced!2628 (Conc!8490) Bool)

(assert (=> d!663238 (= (inv!35221 x!427322) (isBalanced!2628 (c!354240 x!427322)))))

(declare-fun bs!451788 () Bool)

(assert (= bs!451788 d!663238))

(declare-fun m!2659579 () Bool)

(assert (=> bs!451788 m!2659579))

(assert (=> start!216252 d!663238))

(assert (=> start!216252 d!663198))

(declare-fun d!663240 () Bool)

(declare-fun choose!13074 (Int) Bool)

(assert (=> d!663240 (= (Forall!1040 lambda!83534) (choose!13074 lambda!83534))))

(declare-fun bs!451789 () Bool)

(assert (= bs!451789 d!663240))

(declare-fun m!2659581 () Bool)

(assert (=> bs!451789 m!2659581))

(assert (=> start!216252 d!663240))

(assert (=> start!216252 d!663204))

(assert (=> start!216252 d!663208))

(assert (=> start!216252 d!663200))

(declare-fun d!663242 () Bool)

(assert (=> d!663242 true))

(assert (=> d!663242 true))

(declare-fun res!952846 () Int)

(assert (=> d!663242 (= (choose!644 lt!827085) res!952846)))

(assert (=> d!663216 d!663242))

(declare-fun tp!691190 () Bool)

(declare-fun e!1416918 () Bool)

(declare-fun b!2218798 () Bool)

(declare-fun tp!691189 () Bool)

(assert (=> b!2218798 (= e!1416918 (and (inv!35220 (left!19959 (c!354240 x!427322))) tp!691189 (inv!35220 (right!20289 (c!354240 x!427322))) tp!691190))))

(declare-fun b!2218799 () Bool)

(declare-fun inv!35226 (IArray!16985) Bool)

(assert (=> b!2218799 (= e!1416918 (inv!35226 (xs!11432 (c!354240 x!427322))))))

(assert (=> b!2218715 (= tp!691181 (and (inv!35220 (c!354240 x!427322)) e!1416918))))

(assert (= (and b!2218715 (is-Node!8490 (c!354240 x!427322))) b!2218798))

(assert (= (and b!2218715 (is-Leaf!12450 (c!354240 x!427322))) b!2218799))

(declare-fun m!2659583 () Bool)

(assert (=> b!2218798 m!2659583))

(declare-fun m!2659585 () Bool)

(assert (=> b!2218798 m!2659585))

(declare-fun m!2659587 () Bool)

(assert (=> b!2218799 m!2659587))

(assert (=> b!2218715 m!2659463))

(push 1)

(assert (not b!2218747))

(assert (not d!663238))

(assert (not b!2218791))

(assert (not b!2218744))

(assert (not b!2218715))

(assert (not b!2218799))

(assert (not b!2218743))

(assert (not b!2218748))

(assert (not d!663230))

(assert (not b!2218798))

(assert (not b!2218777))

(assert (not b!2218789))

(assert (not d!663236))

(assert (not b!2218778))

(assert (not bm!132406))

(assert (not d!663240))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2218838 () Bool)

(declare-fun e!1416940 () Bool)

(declare-fun lt!827127 () List!26071)

(assert (=> b!2218838 (= e!1416940 (or (not (= (efficientList$default$2!92 (c!354240 x!427322)) Nil!25987)) (= lt!827127 (list!10067 (c!354240 x!427322)))))))

(declare-fun b!2218837 () Bool)

(declare-fun res!952857 () Bool)

(assert (=> b!2218837 (=> (not res!952857) (not e!1416940))))

(declare-fun size!20276 (List!26071) Int)

(assert (=> b!2218837 (= res!952857 (= (size!20276 lt!827127) (+ (size!20276 (list!10067 (c!354240 x!427322))) (size!20276 (efficientList$default$2!92 (c!354240 x!427322))))))))

(declare-fun b!2218835 () Bool)

(declare-fun e!1416939 () List!26071)

(assert (=> b!2218835 (= e!1416939 (efficientList$default$2!92 (c!354240 x!427322)))))

(declare-fun d!663256 () Bool)

(assert (=> d!663256 e!1416940))

(declare-fun res!952856 () Bool)

(assert (=> d!663256 (=> (not res!952856) (not e!1416940))))

(declare-fun content!3530 (List!26071) (Set (_ BitVec 16)))

(assert (=> d!663256 (= res!952856 (= (content!3530 lt!827127) (set.union (content!3530 (list!10067 (c!354240 x!427322))) (content!3530 (efficientList$default$2!92 (c!354240 x!427322))))))))

(assert (=> d!663256 (= lt!827127 e!1416939)))

(declare-fun c!354292 () Bool)

(assert (=> d!663256 (= c!354292 (is-Nil!25987 (list!10067 (c!354240 x!427322))))))

(assert (=> d!663256 (= (++!6471 (list!10067 (c!354240 x!427322)) (efficientList$default$2!92 (c!354240 x!427322))) lt!827127)))

(declare-fun b!2218836 () Bool)

(assert (=> b!2218836 (= e!1416939 (Cons!25987 (h!31388 (list!10067 (c!354240 x!427322))) (++!6471 (t!199389 (list!10067 (c!354240 x!427322))) (efficientList$default$2!92 (c!354240 x!427322)))))))

(assert (= (and d!663256 c!354292) b!2218835))

(assert (= (and d!663256 (not c!354292)) b!2218836))

(assert (= (and d!663256 res!952856) b!2218837))

(assert (= (and b!2218837 res!952857) b!2218838))

(declare-fun m!2659617 () Bool)

(assert (=> b!2218837 m!2659617))

(assert (=> b!2218837 m!2659501))

(declare-fun m!2659619 () Bool)

(assert (=> b!2218837 m!2659619))

(assert (=> b!2218837 m!2659511))

(declare-fun m!2659621 () Bool)

(assert (=> b!2218837 m!2659621))

(declare-fun m!2659623 () Bool)

(assert (=> d!663256 m!2659623))

(assert (=> d!663256 m!2659501))

(declare-fun m!2659625 () Bool)

(assert (=> d!663256 m!2659625))

(assert (=> d!663256 m!2659511))

(declare-fun m!2659627 () Bool)

(assert (=> d!663256 m!2659627))

(assert (=> b!2218836 m!2659511))

(declare-fun m!2659629 () Bool)

(assert (=> b!2218836 m!2659629))

(assert (=> d!663230 d!663256))

(assert (=> d!663230 d!663220))

(declare-fun d!663260 () Bool)

(declare-fun e!1416949 () Bool)

(assert (=> d!663260 e!1416949))

(declare-fun res!952861 () Bool)

(assert (=> d!663260 (=> (not res!952861) (not e!1416949))))

(declare-fun lt!827130 () BalanceConc!16698)

(assert (=> d!663260 (= res!952861 (= (list!10065 lt!827130) (text!30716 (toValue!31 thiss!4894 x!427322))))))

(declare-fun fromList!505 (List!26071) Conc!8490)

(assert (=> d!663260 (= lt!827130 (BalanceConc!16699 (fromList!505 (text!30716 (toValue!31 thiss!4894 x!427322)))))))

(assert (=> d!663260 (= (fromListB!1298 (text!30716 (toValue!31 thiss!4894 x!427322))) lt!827130)))

(declare-fun b!2218849 () Bool)

(assert (=> b!2218849 (= e!1416949 (isBalanced!2628 (fromList!505 (text!30716 (toValue!31 thiss!4894 x!427322)))))))

(assert (= (and d!663260 res!952861) b!2218849))

(declare-fun m!2659631 () Bool)

(assert (=> d!663260 m!2659631))

(declare-fun m!2659639 () Bool)

(assert (=> d!663260 m!2659639))

(assert (=> b!2218849 m!2659639))

(assert (=> b!2218849 m!2659639))

(declare-fun m!2659641 () Bool)

(assert (=> b!2218849 m!2659641))

(assert (=> d!663236 d!663260))

(push 1)

(assert (not b!2218747))

(assert (not b!2218791))

(assert (not b!2218798))

(assert (not b!2218744))

(assert (not b!2218778))

(assert (not b!2218715))

(assert (not b!2218799))

(assert (not d!663256))

(assert (not d!663238))

(assert (not b!2218837))

(assert (not b!2218743))

(assert (not b!2218748))

(assert (not b!2218777))

(assert (not b!2218789))

(assert (not b!2218836))

(assert (not d!663260))

(assert (not b!2218849))

(assert (not bm!132406))

(assert (not d!663240))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!409382 () Bool)

(assert start!409382)

(assert (=> start!409382 true))

(declare-fun b!4269631 () Bool)

(declare-fun e!2650909 () Bool)

(declare-datatypes ((List!47416 0))(
  ( (Nil!47292) (Cons!47292 (h!52712 (_ BitVec 16)) (t!353635 List!47416)) )
))
(declare-datatypes ((IArray!28553 0))(
  ( (IArray!28554 (innerList!14334 List!47416)) )
))
(declare-datatypes ((Conc!14274 0))(
  ( (Node!14274 (left!35112 Conc!14274) (right!35442 Conc!14274) (csize!28778 Int) (cheight!14485 Int)) (Leaf!22067 (xs!17580 IArray!28553) (csize!28779 Int)) (Empty!14274) )
))
(declare-datatypes ((BalanceConc!28058 0))(
  ( (BalanceConc!28059 (c!726265 Conc!14274)) )
))
(declare-fun x!739901 () BalanceConc!28058)

(declare-fun tp!1307857 () Bool)

(declare-fun inv!62336 (Conc!14274) Bool)

(assert (=> b!4269631 (= e!2650909 (and (inv!62336 (c!726265 x!739901)) tp!1307857))))

(declare-fun inst!1646 () Bool)

(declare-datatypes ((BooleanLiteralValueInjection!4 0))(
  ( (BooleanLiteralValueInjection!5) )
))
(declare-fun thiss!2453 () BooleanLiteralValueInjection!4)

(declare-fun inv!62337 (BalanceConc!28058) Bool)

(declare-fun list!17126 (BalanceConc!28058) List!47416)

(declare-datatypes ((TokenValue!8247 0))(
  ( (FloatLiteralValue!16494 (text!58174 List!47416)) (TokenValueExt!8246 (__x!28693 Int)) (Broken!41235 (value!249023 List!47416)) (Object!8370) (End!8247) (Def!8247) (Underscore!8247) (Match!8247) (Else!8247) (Error!8247) (Case!8247) (If!8247) (Extends!8247) (Abstract!8247) (Class!8247) (Val!8247) (DelimiterValue!16494 (del!8307 List!47416)) (KeywordValue!8253 (value!249024 List!47416)) (CommentValue!16494 (value!249025 List!47416)) (WhitespaceValue!16494 (value!249026 List!47416)) (IndentationValue!8247 (value!249027 List!47416)) (String!55218) (Int32!8247) (Broken!41236 (value!249028 List!47416)) (Boolean!8248) (Unit!66197) (OperatorValue!8250 (op!8307 List!47416)) (IdentifierValue!16494 (value!249029 List!47416)) (IdentifierValue!16495 (value!249030 List!47416)) (WhitespaceValue!16495 (value!249031 List!47416)) (True!16494) (False!16494) (Broken!41237 (value!249032 List!47416)) (Broken!41238 (value!249033 List!47416)) (True!16495) (RightBrace!8247) (RightBracket!8247) (Colon!8247) (Null!8247) (Comma!8247) (LeftBracket!8247) (False!16495) (LeftBrace!8247) (ImaginaryLiteralValue!8247 (text!58175 List!47416)) (StringLiteralValue!24741 (value!249034 List!47416)) (EOFValue!8247 (value!249035 List!47416)) (IdentValue!8247 (value!249036 List!47416)) (DelimiterValue!16495 (value!249037 List!47416)) (DedentValue!8247 (value!249038 List!47416)) (NewLineValue!8247 (value!249039 List!47416)) (IntegerValue!24741 (value!249040 (_ BitVec 32)) (text!58176 List!47416)) (IntegerValue!24742 (value!249041 Int) (text!58177 List!47416)) (Times!8247) (Or!8247) (Equal!8247) (Minus!8247) (Broken!41239 (value!249042 List!47416)) (And!8247) (Div!8247) (LessEqual!8247) (Mod!8247) (Concat!21145) (Not!8247) (Plus!8247) (SpaceValue!8247 (value!249043 List!47416)) (IntegerValue!24743 (value!249044 Int) (text!58178 List!47416)) (StringLiteralValue!24742 (text!58179 List!47416)) (FloatLiteralValue!16495 (text!58180 List!47416)) (BytesLiteralValue!8247 (value!249045 List!47416)) (CommentValue!16495 (value!249046 List!47416)) (StringLiteralValue!24743 (value!249047 List!47416)) (ErrorTokenValue!8247 (msg!8308 List!47416)) )
))
(declare-fun toCharacters!9 (BooleanLiteralValueInjection!4 TokenValue!8247) BalanceConc!28058)

(declare-fun toValue!16 (BooleanLiteralValueInjection!4 BalanceConc!28058) TokenValue!8247)

(assert (=> start!409382 (= inst!1646 (=> (and (inv!62337 x!739901) e!2650909) (= (list!17126 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))) (list!17126 x!739901))))))

(assert (= start!409382 b!4269631))

(declare-fun m!4862517 () Bool)

(assert (=> b!4269631 m!4862517))

(declare-fun m!4862519 () Bool)

(assert (=> start!409382 m!4862519))

(declare-fun m!4862521 () Bool)

(assert (=> start!409382 m!4862521))

(declare-fun m!4862523 () Bool)

(assert (=> start!409382 m!4862523))

(declare-fun m!4862525 () Bool)

(assert (=> start!409382 m!4862525))

(declare-fun m!4862527 () Bool)

(assert (=> start!409382 m!4862527))

(assert (=> start!409382 m!4862523))

(assert (=> start!409382 m!4862525))

(declare-fun bs!600277 () Bool)

(declare-fun neg-inst!1646 () Bool)

(declare-fun s!239544 () Bool)

(assert (= bs!600277 (and neg-inst!1646 s!239544)))

(assert (=> bs!600277 (=> true (= (list!17126 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))) (list!17126 x!739901)))))

(assert (=> m!4862521 m!4862523))

(assert (=> m!4862521 m!4862525))

(assert (=> m!4862521 m!4862527))

(assert (=> m!4862521 s!239544))

(assert (=> m!4862523 s!239544))

(declare-fun bs!600278 () Bool)

(assert (= bs!600278 (and neg-inst!1646 start!409382)))

(assert (=> bs!600278 (= true inst!1646)))

(declare-fun lambda!130654 () Int)

(declare-fun Forall!1625 (Int) Bool)

(assert (=> start!409382 (= (Forall!1625 lambda!130654) inst!1646)))

(assert (=> start!409382 (not (Forall!1625 lambda!130654))))

(assert (=> start!409382 true))

(assert (= neg-inst!1646 inst!1646))

(declare-fun m!4862529 () Bool)

(assert (=> start!409382 m!4862529))

(assert (=> start!409382 m!4862529))

(push 1)

(assert (not b!4269631))

(assert (not start!409382))

(assert (not bs!600277))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1259099 () Bool)

(declare-fun list!17128 (Conc!14274) List!47416)

(assert (=> d!1259099 (= (list!17126 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))) (list!17128 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))

(declare-fun bs!600281 () Bool)

(assert (= bs!600281 d!1259099))

(declare-fun m!4862545 () Bool)

(assert (=> bs!600281 m!4862545))

(assert (=> bs!600277 d!1259099))

(declare-fun b!4269649 () Bool)

(declare-fun e!2650920 () BalanceConc!28058)

(declare-fun seqFromList!5861 (List!47416) BalanceConc!28058)

(assert (=> b!4269649 (= e!2650920 (seqFromList!5861 (value!249032 (toValue!16 thiss!2453 x!739901))))))

(declare-fun d!1259101 () Bool)

(declare-fun c!726275 () Bool)

(assert (=> d!1259101 (= c!726275 (is-True!16494 (toValue!16 thiss!2453 x!739901)))))

(declare-fun e!2650921 () BalanceConc!28058)

(assert (=> d!1259101 (= (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)) e!2650921)))

(declare-fun b!4269650 () Bool)

(declare-fun stringTrueConc!0 () BalanceConc!28058)

(assert (=> b!4269650 (= e!2650921 stringTrueConc!0)))

(declare-fun b!4269651 () Bool)

(declare-fun c!726274 () Bool)

(assert (=> b!4269651 (= c!726274 (is-Broken!41237 (toValue!16 thiss!2453 x!739901)))))

(declare-fun e!2650919 () BalanceConc!28058)

(assert (=> b!4269651 (= e!2650919 e!2650920)))

(declare-fun b!4269652 () Bool)

(declare-fun stringFalseConc!0 () BalanceConc!28058)

(assert (=> b!4269652 (= e!2650919 stringFalseConc!0)))

(declare-fun b!4269653 () Bool)

(assert (=> b!4269653 (= e!2650920 (BalanceConc!28059 Empty!14274))))

(declare-fun b!4269654 () Bool)

(assert (=> b!4269654 (= e!2650921 e!2650919)))

(declare-fun c!726276 () Bool)

(assert (=> b!4269654 (= c!726276 (is-False!16494 (toValue!16 thiss!2453 x!739901)))))

(assert (= (and d!1259101 c!726275) b!4269650))

(assert (= (and d!1259101 (not c!726275)) b!4269654))

(assert (= (and b!4269654 c!726276) b!4269652))

(assert (= (and b!4269654 (not c!726276)) b!4269651))

(assert (= (and b!4269651 c!726274) b!4269649))

(assert (= (and b!4269651 (not c!726274)) b!4269653))

(declare-fun m!4862549 () Bool)

(assert (=> b!4269649 m!4862549))

(declare-fun m!4862551 () Bool)

(assert (=> b!4269650 m!4862551))

(declare-fun m!4862553 () Bool)

(assert (=> b!4269652 m!4862553))

(assert (=> bs!600277 d!1259101))

(declare-fun d!1259107 () Bool)

(declare-fun lt!1512457 () List!47416)

(declare-fun efficientList!471 (BalanceConc!28058) List!47416)

(assert (=> d!1259107 (= lt!1512457 (efficientList!471 x!739901))))

(assert (=> d!1259107 (= (toValue!16 thiss!2453 x!739901) (ite (= lt!1512457 (Cons!47292 #x0074 (Cons!47292 #x0072 (Cons!47292 #x0075 (Cons!47292 #x0065 Nil!47292))))) True!16494 (ite (= lt!1512457 (Cons!47292 #x0066 (Cons!47292 #x0061 (Cons!47292 #x006C (Cons!47292 #x0073 (Cons!47292 #x0065 Nil!47292)))))) False!16494 (Broken!41237 lt!1512457))))))

(declare-fun bs!600283 () Bool)

(assert (= bs!600283 d!1259107))

(declare-fun m!4862555 () Bool)

(assert (=> bs!600283 m!4862555))

(assert (=> bs!600277 d!1259107))

(declare-fun d!1259109 () Bool)

(assert (=> d!1259109 (= (list!17126 x!739901) (list!17128 (c!726265 x!739901)))))

(declare-fun bs!600284 () Bool)

(assert (= bs!600284 d!1259109))

(declare-fun m!4862557 () Bool)

(assert (=> bs!600284 m!4862557))

(assert (=> bs!600277 d!1259109))

(push 1)

(assert (not b!4269649))

(assert (not b!4269650))

(assert (not d!1259099))

(assert (not start!409382))

(assert (not d!1259107))

(assert (not b!4269631))

(assert (not b!4269652))

(assert (not d!1259109))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4269684 () Bool)

(declare-fun e!2650936 () List!47416)

(declare-fun ++!12062 (List!47416 List!47416) List!47416)

(assert (=> b!4269684 (= e!2650936 (++!12062 (list!17128 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))) (list!17128 (right!35442 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))))

(declare-fun b!4269683 () Bool)

(declare-fun list!17130 (IArray!28553) List!47416)

(assert (=> b!4269683 (= e!2650936 (list!17130 (xs!17580 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))))))

(declare-fun d!1259115 () Bool)

(declare-fun c!726291 () Bool)

(assert (=> d!1259115 (= c!726291 (is-Empty!14274 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))

(declare-fun e!2650935 () List!47416)

(assert (=> d!1259115 (= (list!17128 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))) e!2650935)))

(declare-fun b!4269682 () Bool)

(assert (=> b!4269682 (= e!2650935 e!2650936)))

(declare-fun c!726292 () Bool)

(assert (=> b!4269682 (= c!726292 (is-Leaf!22067 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))

(declare-fun b!4269681 () Bool)

(assert (=> b!4269681 (= e!2650935 Nil!47292)))

(assert (= (and d!1259115 c!726291) b!4269681))

(assert (= (and d!1259115 (not c!726291)) b!4269682))

(assert (= (and b!4269682 c!726292) b!4269683))

(assert (= (and b!4269682 (not c!726292)) b!4269684))

(declare-fun m!4862569 () Bool)

(assert (=> b!4269684 m!4862569))

(declare-fun m!4862571 () Bool)

(assert (=> b!4269684 m!4862571))

(assert (=> b!4269684 m!4862569))

(assert (=> b!4269684 m!4862571))

(declare-fun m!4862573 () Bool)

(assert (=> b!4269684 m!4862573))

(declare-fun m!4862575 () Bool)

(assert (=> b!4269683 m!4862575))

(assert (=> d!1259099 d!1259115))

(declare-fun d!1259117 () Bool)

(declare-fun lt!1512463 () List!47416)

(assert (=> d!1259117 (= lt!1512463 (list!17126 x!739901))))

(declare-fun efficientList!473 (Conc!14274 List!47416) List!47416)

(declare-fun efficientList$default$2!163 (Conc!14274) List!47416)

(assert (=> d!1259117 (= lt!1512463 (efficientList!473 (c!726265 x!739901) (efficientList$default$2!163 (c!726265 x!739901))))))

(assert (=> d!1259117 (= (efficientList!471 x!739901) lt!1512463)))

(declare-fun bs!600287 () Bool)

(assert (= bs!600287 d!1259117))

(assert (=> bs!600287 m!4862521))

(declare-fun m!4862577 () Bool)

(assert (=> bs!600287 m!4862577))

(assert (=> bs!600287 m!4862577))

(declare-fun m!4862579 () Bool)

(assert (=> bs!600287 m!4862579))

(assert (=> d!1259107 d!1259117))

(declare-fun b!4269688 () Bool)

(declare-fun e!2650938 () List!47416)

(assert (=> b!4269688 (= e!2650938 (++!12062 (list!17128 (left!35112 (c!726265 x!739901))) (list!17128 (right!35442 (c!726265 x!739901)))))))

(declare-fun b!4269687 () Bool)

(assert (=> b!4269687 (= e!2650938 (list!17130 (xs!17580 (c!726265 x!739901))))))

(declare-fun d!1259119 () Bool)

(declare-fun c!726293 () Bool)

(assert (=> d!1259119 (= c!726293 (is-Empty!14274 (c!726265 x!739901)))))

(declare-fun e!2650937 () List!47416)

(assert (=> d!1259119 (= (list!17128 (c!726265 x!739901)) e!2650937)))

(declare-fun b!4269686 () Bool)

(assert (=> b!4269686 (= e!2650937 e!2650938)))

(declare-fun c!726294 () Bool)

(assert (=> b!4269686 (= c!726294 (is-Leaf!22067 (c!726265 x!739901)))))

(declare-fun b!4269685 () Bool)

(assert (=> b!4269685 (= e!2650937 Nil!47292)))

(assert (= (and d!1259119 c!726293) b!4269685))

(assert (= (and d!1259119 (not c!726293)) b!4269686))

(assert (= (and b!4269686 c!726294) b!4269687))

(assert (= (and b!4269686 (not c!726294)) b!4269688))

(declare-fun m!4862581 () Bool)

(assert (=> b!4269688 m!4862581))

(declare-fun m!4862583 () Bool)

(assert (=> b!4269688 m!4862583))

(assert (=> b!4269688 m!4862581))

(assert (=> b!4269688 m!4862583))

(declare-fun m!4862585 () Bool)

(assert (=> b!4269688 m!4862585))

(declare-fun m!4862587 () Bool)

(assert (=> b!4269687 m!4862587))

(assert (=> d!1259109 d!1259119))

(push 1)

(assert (not b!4269683))

(assert (not b!4269649))

(assert (not b!4269688))

(assert (not b!4269631))

(assert (not b!4269650))

(assert (not b!4269684))

(assert (not b!4269687))

(assert (not start!409382))

(assert (not b!4269652))

(assert (not d!1259117))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1259127 () Bool)

(declare-fun c!726305 () Bool)

(assert (=> d!1259127 (= c!726305 (is-Node!14274 (c!726265 x!739901)))))

(declare-fun e!2650951 () Bool)

(assert (=> d!1259127 (= (inv!62336 (c!726265 x!739901)) e!2650951)))

(declare-fun b!4269711 () Bool)

(declare-fun inv!62340 (Conc!14274) Bool)

(assert (=> b!4269711 (= e!2650951 (inv!62340 (c!726265 x!739901)))))

(declare-fun b!4269712 () Bool)

(declare-fun e!2650952 () Bool)

(assert (=> b!4269712 (= e!2650951 e!2650952)))

(declare-fun res!1754038 () Bool)

(assert (=> b!4269712 (= res!1754038 (not (is-Leaf!22067 (c!726265 x!739901))))))

(assert (=> b!4269712 (=> res!1754038 e!2650952)))

(declare-fun b!4269713 () Bool)

(declare-fun inv!62341 (Conc!14274) Bool)

(assert (=> b!4269713 (= e!2650952 (inv!62341 (c!726265 x!739901)))))

(assert (= (and d!1259127 c!726305) b!4269711))

(assert (= (and d!1259127 (not c!726305)) b!4269712))

(assert (= (and b!4269712 (not res!1754038)) b!4269713))

(declare-fun m!4862609 () Bool)

(assert (=> b!4269711 m!4862609))

(declare-fun m!4862611 () Bool)

(assert (=> b!4269713 m!4862611))

(assert (=> b!4269631 d!1259127))

(assert (=> start!409382 d!1259101))

(assert (=> start!409382 d!1259107))

(declare-fun d!1259129 () Bool)

(declare-fun isBalanced!3829 (Conc!14274) Bool)

(assert (=> d!1259129 (= (inv!62337 x!739901) (isBalanced!3829 (c!726265 x!739901)))))

(declare-fun bs!600289 () Bool)

(assert (= bs!600289 d!1259129))

(declare-fun m!4862613 () Bool)

(assert (=> bs!600289 m!4862613))

(assert (=> start!409382 d!1259129))

(assert (=> start!409382 d!1259109))

(declare-fun d!1259131 () Bool)

(declare-fun choose!26028 (Int) Bool)

(assert (=> d!1259131 (= (Forall!1625 lambda!130654) (choose!26028 lambda!130654))))

(declare-fun bs!600290 () Bool)

(assert (= bs!600290 d!1259131))

(declare-fun m!4862615 () Bool)

(assert (=> bs!600290 m!4862615))

(assert (=> start!409382 d!1259131))

(assert (=> start!409382 d!1259099))

(assert (=> d!1259117 d!1259109))

(declare-fun b!4269726 () Bool)

(declare-fun e!2650961 () List!47416)

(declare-fun call!294115 () List!47416)

(assert (=> b!4269726 (= e!2650961 call!294115)))

(declare-fun b!4269727 () Bool)

(declare-fun e!2650959 () List!47416)

(assert (=> b!4269727 (= e!2650959 e!2650961)))

(declare-fun c!726313 () Bool)

(assert (=> b!4269727 (= c!726313 (is-Leaf!22067 (c!726265 x!739901)))))

(declare-fun bm!294110 () Bool)

(declare-fun c!726312 () Bool)

(assert (=> bm!294110 (= c!726312 c!726313)))

(declare-fun e!2650960 () List!47416)

(assert (=> bm!294110 (= call!294115 (++!12062 e!2650960 (efficientList$default$2!163 (c!726265 x!739901))))))

(declare-fun d!1259133 () Bool)

(declare-fun lt!1512481 () List!47416)

(assert (=> d!1259133 (= lt!1512481 (++!12062 (list!17128 (c!726265 x!739901)) (efficientList$default$2!163 (c!726265 x!739901))))))

(assert (=> d!1259133 (= lt!1512481 e!2650959)))

(declare-fun c!726314 () Bool)

(assert (=> d!1259133 (= c!726314 (is-Empty!14274 (c!726265 x!739901)))))

(assert (=> d!1259133 (= (efficientList!473 (c!726265 x!739901) (efficientList$default$2!163 (c!726265 x!739901))) lt!1512481)))

(declare-fun b!4269728 () Bool)

(declare-datatypes ((Unit!66199 0))(
  ( (Unit!66200) )
))
(declare-fun lt!1512480 () Unit!66199)

(declare-fun lt!1512478 () Unit!66199)

(assert (=> b!4269728 (= lt!1512480 lt!1512478)))

(declare-fun lt!1512479 () List!47416)

(declare-fun lt!1512477 () List!47416)

(assert (=> b!4269728 (= (++!12062 (++!12062 lt!1512479 lt!1512477) (efficientList$default$2!163 (c!726265 x!739901))) (++!12062 lt!1512479 call!294115))))

(declare-fun lemmaConcatAssociativity!2704 (List!47416 List!47416 List!47416) Unit!66199)

(assert (=> b!4269728 (= lt!1512478 (lemmaConcatAssociativity!2704 lt!1512479 lt!1512477 (efficientList$default$2!163 (c!726265 x!739901))))))

(assert (=> b!4269728 (= lt!1512477 (list!17128 (right!35442 (c!726265 x!739901))))))

(assert (=> b!4269728 (= lt!1512479 (list!17128 (left!35112 (c!726265 x!739901))))))

(assert (=> b!4269728 (= e!2650961 (efficientList!473 (left!35112 (c!726265 x!739901)) (efficientList!473 (right!35442 (c!726265 x!739901)) (efficientList$default$2!163 (c!726265 x!739901)))))))

(declare-fun b!4269729 () Bool)

(assert (=> b!4269729 (= e!2650959 (efficientList$default$2!163 (c!726265 x!739901)))))

(declare-fun b!4269730 () Bool)

(declare-fun efficientList!475 (IArray!28553) List!47416)

(assert (=> b!4269730 (= e!2650960 (efficientList!475 (xs!17580 (c!726265 x!739901))))))

(declare-fun b!4269731 () Bool)

(assert (=> b!4269731 (= e!2650960 lt!1512477)))

(assert (= (and d!1259133 c!726314) b!4269729))

(assert (= (and d!1259133 (not c!726314)) b!4269727))

(assert (= (and b!4269727 c!726313) b!4269726))

(assert (= (and b!4269727 (not c!726313)) b!4269728))

(assert (= (or b!4269726 b!4269728) bm!294110))

(assert (= (and bm!294110 c!726312) b!4269730))

(assert (= (and bm!294110 (not c!726312)) b!4269731))

(assert (=> bm!294110 m!4862577))

(declare-fun m!4862617 () Bool)

(assert (=> bm!294110 m!4862617))

(assert (=> d!1259133 m!4862557))

(assert (=> d!1259133 m!4862557))

(assert (=> d!1259133 m!4862577))

(declare-fun m!4862619 () Bool)

(assert (=> d!1259133 m!4862619))

(assert (=> b!4269728 m!4862577))

(declare-fun m!4862621 () Bool)

(assert (=> b!4269728 m!4862621))

(declare-fun m!4862623 () Bool)

(assert (=> b!4269728 m!4862623))

(assert (=> b!4269728 m!4862577))

(declare-fun m!4862625 () Bool)

(assert (=> b!4269728 m!4862625))

(declare-fun m!4862627 () Bool)

(assert (=> b!4269728 m!4862627))

(assert (=> b!4269728 m!4862583))

(assert (=> b!4269728 m!4862621))

(declare-fun m!4862629 () Bool)

(assert (=> b!4269728 m!4862629))

(assert (=> b!4269728 m!4862581))

(assert (=> b!4269728 m!4862577))

(declare-fun m!4862631 () Bool)

(assert (=> b!4269728 m!4862631))

(assert (=> b!4269728 m!4862623))

(declare-fun m!4862633 () Bool)

(assert (=> b!4269730 m!4862633))

(assert (=> d!1259117 d!1259133))

(declare-fun d!1259135 () Bool)

(assert (=> d!1259135 (= (efficientList$default$2!163 (c!726265 x!739901)) Nil!47292)))

(assert (=> d!1259117 d!1259135))

(declare-fun d!1259137 () Bool)

(assert (=> d!1259137 (= stringTrueConc!0 (seqFromList!5861 (Cons!47292 #x0074 (Cons!47292 #x0072 (Cons!47292 #x0075 (Cons!47292 #x0065 Nil!47292))))))))

(declare-fun bs!600291 () Bool)

(assert (= bs!600291 d!1259137))

(declare-fun m!4862635 () Bool)

(assert (=> bs!600291 m!4862635))

(assert (=> b!4269650 d!1259137))

(declare-fun b!4269738 () Bool)

(declare-fun tp!1307865 () Bool)

(declare-fun e!2650966 () Bool)

(declare-fun tp!1307866 () Bool)

(assert (=> b!4269738 (= e!2650966 (and (inv!62336 (left!35112 (c!726265 x!739901))) tp!1307865 (inv!62336 (right!35442 (c!726265 x!739901))) tp!1307866))))

(declare-fun b!4269739 () Bool)

(declare-fun inv!62342 (IArray!28553) Bool)

(assert (=> b!4269739 (= e!2650966 (inv!62342 (xs!17580 (c!726265 x!739901))))))

(assert (=> b!4269631 (= tp!1307857 (and (inv!62336 (c!726265 x!739901)) e!2650966))))

(assert (= (and b!4269631 (is-Node!14274 (c!726265 x!739901))) b!4269738))

(assert (= (and b!4269631 (is-Leaf!22067 (c!726265 x!739901))) b!4269739))

(declare-fun m!4862637 () Bool)

(assert (=> b!4269738 m!4862637))

(declare-fun m!4862639 () Bool)

(assert (=> b!4269738 m!4862639))

(declare-fun m!4862641 () Bool)

(assert (=> b!4269739 m!4862641))

(assert (=> b!4269631 m!4862517))

(push 1)

(assert (not b!4269683))

(assert (not b!4269688))

(assert (not b!4269728))

(assert (not b!4269631))

(assert (not b!4269684))

(assert (not b!4269687))

(assert (not b!4269730))

(assert (not d!1259131))

(assert (not bm!294110))

(assert (not d!1259133))

(assert (not b!4269739))

(assert (not b!4269652))

(assert (not b!4269711))

(assert (not b!4269649))

(assert (not d!1259129))

(assert (not b!4269738))

(assert (not d!1259137))

(assert (not b!4269713))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4269783 () Bool)

(declare-fun res!1754046 () Bool)

(declare-fun e!2650991 () Bool)

(assert (=> b!4269783 (=> (not res!1754046) (not e!2650991))))

(declare-fun lt!1512499 () List!47416)

(declare-fun size!34635 (List!47416) Int)

(assert (=> b!4269783 (= res!1754046 (= (size!34635 lt!1512499) (+ (size!34635 (list!17128 (c!726265 x!739901))) (size!34635 (efficientList$default$2!163 (c!726265 x!739901))))))))

(declare-fun b!4269784 () Bool)

(assert (=> b!4269784 (= e!2650991 (or (not (= (efficientList$default$2!163 (c!726265 x!739901)) Nil!47292)) (= lt!1512499 (list!17128 (c!726265 x!739901)))))))

(declare-fun d!1259151 () Bool)

(assert (=> d!1259151 e!2650991))

(declare-fun res!1754047 () Bool)

(assert (=> d!1259151 (=> (not res!1754047) (not e!2650991))))

(declare-fun content!7474 (List!47416) (Set (_ BitVec 16)))

(assert (=> d!1259151 (= res!1754047 (= (content!7474 lt!1512499) (set.union (content!7474 (list!17128 (c!726265 x!739901))) (content!7474 (efficientList$default$2!163 (c!726265 x!739901))))))))

(declare-fun e!2650992 () List!47416)

(assert (=> d!1259151 (= lt!1512499 e!2650992)))

(declare-fun c!726329 () Bool)

(assert (=> d!1259151 (= c!726329 (is-Nil!47292 (list!17128 (c!726265 x!739901))))))

(assert (=> d!1259151 (= (++!12062 (list!17128 (c!726265 x!739901)) (efficientList$default$2!163 (c!726265 x!739901))) lt!1512499)))

(declare-fun b!4269781 () Bool)

(assert (=> b!4269781 (= e!2650992 (efficientList$default$2!163 (c!726265 x!739901)))))

(declare-fun b!4269782 () Bool)

(assert (=> b!4269782 (= e!2650992 (Cons!47292 (h!52712 (list!17128 (c!726265 x!739901))) (++!12062 (t!353635 (list!17128 (c!726265 x!739901))) (efficientList$default$2!163 (c!726265 x!739901)))))))

(assert (= (and d!1259151 c!726329) b!4269781))

(assert (= (and d!1259151 (not c!726329)) b!4269782))

(assert (= (and d!1259151 res!1754047) b!4269783))

(assert (= (and b!4269783 res!1754046) b!4269784))

(declare-fun m!4862671 () Bool)

(assert (=> b!4269783 m!4862671))

(assert (=> b!4269783 m!4862557))

(declare-fun m!4862673 () Bool)

(assert (=> b!4269783 m!4862673))

(assert (=> b!4269783 m!4862577))

(declare-fun m!4862675 () Bool)

(assert (=> b!4269783 m!4862675))

(declare-fun m!4862677 () Bool)

(assert (=> d!1259151 m!4862677))

(assert (=> d!1259151 m!4862557))

(declare-fun m!4862679 () Bool)

(assert (=> d!1259151 m!4862679))

(assert (=> d!1259151 m!4862577))

(declare-fun m!4862681 () Bool)

(assert (=> d!1259151 m!4862681))

(assert (=> b!4269782 m!4862577))

(declare-fun m!4862683 () Bool)

(assert (=> b!4269782 m!4862683))

(assert (=> d!1259133 d!1259151))

(assert (=> d!1259133 d!1259119))

(declare-fun d!1259153 () Bool)

(declare-fun fromListB!2663 (List!47416) BalanceConc!28058)

(assert (=> d!1259153 (= (seqFromList!5861 (Cons!47292 #x0074 (Cons!47292 #x0072 (Cons!47292 #x0075 (Cons!47292 #x0065 Nil!47292))))) (fromListB!2663 (Cons!47292 #x0074 (Cons!47292 #x0072 (Cons!47292 #x0075 (Cons!47292 #x0065 Nil!47292))))))))

(declare-fun bs!600295 () Bool)

(assert (= bs!600295 d!1259153))

(declare-fun m!4862691 () Bool)

(assert (=> bs!600295 m!4862691))

(assert (=> d!1259137 d!1259153))

(declare-fun d!1259155 () Bool)

(assert (=> d!1259155 (= (seqFromList!5861 (value!249032 (toValue!16 thiss!2453 x!739901))) (fromListB!2663 (value!249032 (toValue!16 thiss!2453 x!739901))))))

(declare-fun bs!600296 () Bool)

(assert (= bs!600296 d!1259155))

(declare-fun m!4862693 () Bool)

(assert (=> bs!600296 m!4862693))

(assert (=> b!4269649 d!1259155))

(declare-fun d!1259157 () Bool)

(assert (=> d!1259157 (= stringFalseConc!0 (seqFromList!5861 (Cons!47292 #x0066 (Cons!47292 #x0061 (Cons!47292 #x006C (Cons!47292 #x0073 (Cons!47292 #x0065 Nil!47292)))))))))

(declare-fun bs!600297 () Bool)

(assert (= bs!600297 d!1259157))

(declare-fun m!4862695 () Bool)

(assert (=> bs!600297 m!4862695))

(assert (=> b!4269652 d!1259157))

(push 1)

(assert (not b!4269683))

(assert (not b!4269711))

(assert (not b!4269688))

(assert (not b!4269728))

(assert (not b!4269631))

(assert (not d!1259151))

(assert (not b!4269687))

(assert (not b!4269730))

(assert (not d!1259131))

(assert (not bm!294110))

(assert (not d!1259157))

(assert (not b!4269782))

(assert (not b!4269713))

(assert (not d!1259129))

(assert (not b!4269738))

(assert (not b!4269684))

(assert (not d!1259153))

(assert (not d!1259155))

(assert (not b!4269783))

(assert (not b!4269739))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1259159 () Bool)

(assert (=> d!1259159 (= (list!17130 (xs!17580 (c!726265 x!739901))) (innerList!14334 (xs!17580 (c!726265 x!739901))))))

(assert (=> b!4269687 d!1259159))

(declare-fun d!1259161 () Bool)

(assert (=> d!1259161 (= (seqFromList!5861 (Cons!47292 #x0066 (Cons!47292 #x0061 (Cons!47292 #x006C (Cons!47292 #x0073 (Cons!47292 #x0065 Nil!47292)))))) (fromListB!2663 (Cons!47292 #x0066 (Cons!47292 #x0061 (Cons!47292 #x006C (Cons!47292 #x0073 (Cons!47292 #x0065 Nil!47292)))))))))

(declare-fun bs!600298 () Bool)

(assert (= bs!600298 d!1259161))

(declare-fun m!4862697 () Bool)

(assert (=> bs!600298 m!4862697))

(assert (=> d!1259157 d!1259161))

(declare-fun b!4269789 () Bool)

(declare-fun res!1754048 () Bool)

(declare-fun e!2650995 () Bool)

(assert (=> b!4269789 (=> (not res!1754048) (not e!2650995))))

(declare-fun lt!1512500 () List!47416)

(assert (=> b!4269789 (= res!1754048 (= (size!34635 lt!1512500) (+ (size!34635 (list!17128 (left!35112 (c!726265 x!739901)))) (size!34635 (list!17128 (right!35442 (c!726265 x!739901)))))))))

(declare-fun b!4269790 () Bool)

(assert (=> b!4269790 (= e!2650995 (or (not (= (list!17128 (right!35442 (c!726265 x!739901))) Nil!47292)) (= lt!1512500 (list!17128 (left!35112 (c!726265 x!739901))))))))

(declare-fun d!1259163 () Bool)

(assert (=> d!1259163 e!2650995))

(declare-fun res!1754049 () Bool)

(assert (=> d!1259163 (=> (not res!1754049) (not e!2650995))))

(assert (=> d!1259163 (= res!1754049 (= (content!7474 lt!1512500) (set.union (content!7474 (list!17128 (left!35112 (c!726265 x!739901)))) (content!7474 (list!17128 (right!35442 (c!726265 x!739901)))))))))

(declare-fun e!2650996 () List!47416)

(assert (=> d!1259163 (= lt!1512500 e!2650996)))

(declare-fun c!726330 () Bool)

(assert (=> d!1259163 (= c!726330 (is-Nil!47292 (list!17128 (left!35112 (c!726265 x!739901)))))))

(assert (=> d!1259163 (= (++!12062 (list!17128 (left!35112 (c!726265 x!739901))) (list!17128 (right!35442 (c!726265 x!739901)))) lt!1512500)))

(declare-fun b!4269787 () Bool)

(assert (=> b!4269787 (= e!2650996 (list!17128 (right!35442 (c!726265 x!739901))))))

(declare-fun b!4269788 () Bool)

(assert (=> b!4269788 (= e!2650996 (Cons!47292 (h!52712 (list!17128 (left!35112 (c!726265 x!739901)))) (++!12062 (t!353635 (list!17128 (left!35112 (c!726265 x!739901)))) (list!17128 (right!35442 (c!726265 x!739901))))))))

(assert (= (and d!1259163 c!726330) b!4269787))

(assert (= (and d!1259163 (not c!726330)) b!4269788))

(assert (= (and d!1259163 res!1754049) b!4269789))

(assert (= (and b!4269789 res!1754048) b!4269790))

(declare-fun m!4862699 () Bool)

(assert (=> b!4269789 m!4862699))

(assert (=> b!4269789 m!4862581))

(declare-fun m!4862701 () Bool)

(assert (=> b!4269789 m!4862701))

(assert (=> b!4269789 m!4862583))

(declare-fun m!4862703 () Bool)

(assert (=> b!4269789 m!4862703))

(declare-fun m!4862705 () Bool)

(assert (=> d!1259163 m!4862705))

(assert (=> d!1259163 m!4862581))

(declare-fun m!4862707 () Bool)

(assert (=> d!1259163 m!4862707))

(assert (=> d!1259163 m!4862583))

(declare-fun m!4862709 () Bool)

(assert (=> d!1259163 m!4862709))

(assert (=> b!4269788 m!4862583))

(declare-fun m!4862711 () Bool)

(assert (=> b!4269788 m!4862711))

(assert (=> b!4269688 d!1259163))

(declare-fun b!4269794 () Bool)

(declare-fun e!2650998 () List!47416)

(assert (=> b!4269794 (= e!2650998 (++!12062 (list!17128 (left!35112 (left!35112 (c!726265 x!739901)))) (list!17128 (right!35442 (left!35112 (c!726265 x!739901))))))))

(declare-fun b!4269793 () Bool)

(assert (=> b!4269793 (= e!2650998 (list!17130 (xs!17580 (left!35112 (c!726265 x!739901)))))))

(declare-fun d!1259165 () Bool)

(declare-fun c!726331 () Bool)

(assert (=> d!1259165 (= c!726331 (is-Empty!14274 (left!35112 (c!726265 x!739901))))))

(declare-fun e!2650997 () List!47416)

(assert (=> d!1259165 (= (list!17128 (left!35112 (c!726265 x!739901))) e!2650997)))

(declare-fun b!4269792 () Bool)

(assert (=> b!4269792 (= e!2650997 e!2650998)))

(declare-fun c!726332 () Bool)

(assert (=> b!4269792 (= c!726332 (is-Leaf!22067 (left!35112 (c!726265 x!739901))))))

(declare-fun b!4269791 () Bool)

(assert (=> b!4269791 (= e!2650997 Nil!47292)))

(assert (= (and d!1259165 c!726331) b!4269791))

(assert (= (and d!1259165 (not c!726331)) b!4269792))

(assert (= (and b!4269792 c!726332) b!4269793))

(assert (= (and b!4269792 (not c!726332)) b!4269794))

(declare-fun m!4862713 () Bool)

(assert (=> b!4269794 m!4862713))

(declare-fun m!4862715 () Bool)

(assert (=> b!4269794 m!4862715))

(assert (=> b!4269794 m!4862713))

(assert (=> b!4269794 m!4862715))

(declare-fun m!4862717 () Bool)

(assert (=> b!4269794 m!4862717))

(declare-fun m!4862719 () Bool)

(assert (=> b!4269793 m!4862719))

(assert (=> b!4269688 d!1259165))

(declare-fun b!4269798 () Bool)

(declare-fun e!2651000 () List!47416)

(assert (=> b!4269798 (= e!2651000 (++!12062 (list!17128 (left!35112 (right!35442 (c!726265 x!739901)))) (list!17128 (right!35442 (right!35442 (c!726265 x!739901))))))))

(declare-fun b!4269797 () Bool)

(assert (=> b!4269797 (= e!2651000 (list!17130 (xs!17580 (right!35442 (c!726265 x!739901)))))))

(declare-fun d!1259167 () Bool)

(declare-fun c!726333 () Bool)

(assert (=> d!1259167 (= c!726333 (is-Empty!14274 (right!35442 (c!726265 x!739901))))))

(declare-fun e!2650999 () List!47416)

(assert (=> d!1259167 (= (list!17128 (right!35442 (c!726265 x!739901))) e!2650999)))

(declare-fun b!4269796 () Bool)

(assert (=> b!4269796 (= e!2650999 e!2651000)))

(declare-fun c!726334 () Bool)

(assert (=> b!4269796 (= c!726334 (is-Leaf!22067 (right!35442 (c!726265 x!739901))))))

(declare-fun b!4269795 () Bool)

(assert (=> b!4269795 (= e!2650999 Nil!47292)))

(assert (= (and d!1259167 c!726333) b!4269795))

(assert (= (and d!1259167 (not c!726333)) b!4269796))

(assert (= (and b!4269796 c!726334) b!4269797))

(assert (= (and b!4269796 (not c!726334)) b!4269798))

(declare-fun m!4862721 () Bool)

(assert (=> b!4269798 m!4862721))

(declare-fun m!4862723 () Bool)

(assert (=> b!4269798 m!4862723))

(assert (=> b!4269798 m!4862721))

(assert (=> b!4269798 m!4862723))

(declare-fun m!4862725 () Bool)

(assert (=> b!4269798 m!4862725))

(declare-fun m!4862727 () Bool)

(assert (=> b!4269797 m!4862727))

(assert (=> b!4269688 d!1259167))

(declare-fun d!1259169 () Bool)

(assert (=> d!1259169 (= (list!17130 (xs!17580 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))) (innerList!14334 (xs!17580 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))))))

(assert (=> b!4269683 d!1259169))

(declare-fun d!1259171 () Bool)

(declare-fun e!2651003 () Bool)

(assert (=> d!1259171 e!2651003))

(declare-fun res!1754052 () Bool)

(assert (=> d!1259171 (=> (not res!1754052) (not e!2651003))))

(declare-fun lt!1512503 () BalanceConc!28058)

(assert (=> d!1259171 (= res!1754052 (= (list!17126 lt!1512503) (Cons!47292 #x0074 (Cons!47292 #x0072 (Cons!47292 #x0075 (Cons!47292 #x0065 Nil!47292))))))))

(declare-fun fromList!922 (List!47416) Conc!14274)

(assert (=> d!1259171 (= lt!1512503 (BalanceConc!28059 (fromList!922 (Cons!47292 #x0074 (Cons!47292 #x0072 (Cons!47292 #x0075 (Cons!47292 #x0065 Nil!47292)))))))))

(assert (=> d!1259171 (= (fromListB!2663 (Cons!47292 #x0074 (Cons!47292 #x0072 (Cons!47292 #x0075 (Cons!47292 #x0065 Nil!47292))))) lt!1512503)))

(declare-fun b!4269801 () Bool)

(assert (=> b!4269801 (= e!2651003 (isBalanced!3829 (fromList!922 (Cons!47292 #x0074 (Cons!47292 #x0072 (Cons!47292 #x0075 (Cons!47292 #x0065 Nil!47292)))))))))

(assert (= (and d!1259171 res!1754052) b!4269801))

(declare-fun m!4862729 () Bool)

(assert (=> d!1259171 m!4862729))

(declare-fun m!4862731 () Bool)

(assert (=> d!1259171 m!4862731))

(assert (=> b!4269801 m!4862731))

(assert (=> b!4269801 m!4862731))

(declare-fun m!4862733 () Bool)

(assert (=> b!4269801 m!4862733))

(assert (=> d!1259153 d!1259171))

(declare-fun b!4269804 () Bool)

(declare-fun res!1754053 () Bool)

(declare-fun e!2651004 () Bool)

(assert (=> b!4269804 (=> (not res!1754053) (not e!2651004))))

(declare-fun lt!1512504 () List!47416)

(assert (=> b!4269804 (= res!1754053 (= (size!34635 lt!1512504) (+ (size!34635 (list!17128 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))) (size!34635 (list!17128 (right!35442 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))))))

(declare-fun b!4269805 () Bool)

(assert (=> b!4269805 (= e!2651004 (or (not (= (list!17128 (right!35442 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))) Nil!47292)) (= lt!1512504 (list!17128 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))))))))

(declare-fun d!1259173 () Bool)

(assert (=> d!1259173 e!2651004))

(declare-fun res!1754054 () Bool)

(assert (=> d!1259173 (=> (not res!1754054) (not e!2651004))))

(assert (=> d!1259173 (= res!1754054 (= (content!7474 lt!1512504) (set.union (content!7474 (list!17128 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))) (content!7474 (list!17128 (right!35442 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))))))

(declare-fun e!2651005 () List!47416)

(assert (=> d!1259173 (= lt!1512504 e!2651005)))

(declare-fun c!726336 () Bool)

(assert (=> d!1259173 (= c!726336 (is-Nil!47292 (list!17128 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))))

(assert (=> d!1259173 (= (++!12062 (list!17128 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))) (list!17128 (right!35442 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))) lt!1512504)))

(declare-fun b!4269802 () Bool)

(assert (=> b!4269802 (= e!2651005 (list!17128 (right!35442 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))))))

(declare-fun b!4269803 () Bool)

(assert (=> b!4269803 (= e!2651005 (Cons!47292 (h!52712 (list!17128 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))) (++!12062 (t!353635 (list!17128 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))) (list!17128 (right!35442 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))))))))

(assert (= (and d!1259173 c!726336) b!4269802))

(assert (= (and d!1259173 (not c!726336)) b!4269803))

(assert (= (and d!1259173 res!1754054) b!4269804))

(assert (= (and b!4269804 res!1754053) b!4269805))

(declare-fun m!4862735 () Bool)

(assert (=> b!4269804 m!4862735))

(assert (=> b!4269804 m!4862569))

(declare-fun m!4862737 () Bool)

(assert (=> b!4269804 m!4862737))

(assert (=> b!4269804 m!4862571))

(declare-fun m!4862739 () Bool)

(assert (=> b!4269804 m!4862739))

(declare-fun m!4862741 () Bool)

(assert (=> d!1259173 m!4862741))

(assert (=> d!1259173 m!4862569))

(declare-fun m!4862743 () Bool)

(assert (=> d!1259173 m!4862743))

(assert (=> d!1259173 m!4862571))

(declare-fun m!4862745 () Bool)

(assert (=> d!1259173 m!4862745))

(assert (=> b!4269803 m!4862571))

(declare-fun m!4862747 () Bool)

(assert (=> b!4269803 m!4862747))

(assert (=> b!4269684 d!1259173))

(declare-fun b!4269809 () Bool)

(declare-fun e!2651007 () List!47416)

(assert (=> b!4269809 (= e!2651007 (++!12062 (list!17128 (left!35112 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))) (list!17128 (right!35442 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))))))))

(declare-fun b!4269808 () Bool)

(assert (=> b!4269808 (= e!2651007 (list!17130 (xs!17580 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))))

(declare-fun d!1259175 () Bool)

(declare-fun c!726337 () Bool)

(assert (=> d!1259175 (= c!726337 (is-Empty!14274 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))))))

(declare-fun e!2651006 () List!47416)

(assert (=> d!1259175 (= (list!17128 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))) e!2651006)))

(declare-fun b!4269807 () Bool)

(assert (=> b!4269807 (= e!2651006 e!2651007)))

(declare-fun c!726338 () Bool)

(assert (=> b!4269807 (= c!726338 (is-Leaf!22067 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))))))

(declare-fun b!4269806 () Bool)

(assert (=> b!4269806 (= e!2651006 Nil!47292)))

(assert (= (and d!1259175 c!726337) b!4269806))

(assert (= (and d!1259175 (not c!726337)) b!4269807))

(assert (= (and b!4269807 c!726338) b!4269808))

(assert (= (and b!4269807 (not c!726338)) b!4269809))

(declare-fun m!4862749 () Bool)

(assert (=> b!4269809 m!4862749))

(declare-fun m!4862751 () Bool)

(assert (=> b!4269809 m!4862751))

(assert (=> b!4269809 m!4862749))

(assert (=> b!4269809 m!4862751))

(declare-fun m!4862753 () Bool)

(assert (=> b!4269809 m!4862753))

(declare-fun m!4862755 () Bool)

(assert (=> b!4269808 m!4862755))

(assert (=> b!4269684 d!1259175))

(declare-fun b!4269813 () Bool)

(declare-fun e!2651009 () List!47416)

(assert (=> b!4269813 (= e!2651009 (++!12062 (list!17128 (left!35112 (right!35442 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))) (list!17128 (right!35442 (right!35442 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))))))))

(declare-fun b!4269812 () Bool)

(assert (=> b!4269812 (= e!2651009 (list!17130 (xs!17580 (right!35442 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))))

(declare-fun d!1259177 () Bool)

(declare-fun c!726339 () Bool)

(assert (=> d!1259177 (= c!726339 (is-Empty!14274 (right!35442 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))))))

(declare-fun e!2651008 () List!47416)

(assert (=> d!1259177 (= (list!17128 (right!35442 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))) e!2651008)))

(declare-fun b!4269811 () Bool)

(assert (=> b!4269811 (= e!2651008 e!2651009)))

(declare-fun c!726340 () Bool)

(assert (=> b!4269811 (= c!726340 (is-Leaf!22067 (right!35442 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))))))

(declare-fun b!4269810 () Bool)

(assert (=> b!4269810 (= e!2651008 Nil!47292)))

(assert (= (and d!1259177 c!726339) b!4269810))

(assert (= (and d!1259177 (not c!726339)) b!4269811))

(assert (= (and b!4269811 c!726340) b!4269812))

(assert (= (and b!4269811 (not c!726340)) b!4269813))

(declare-fun m!4862757 () Bool)

(assert (=> b!4269813 m!4862757))

(declare-fun m!4862759 () Bool)

(assert (=> b!4269813 m!4862759))

(assert (=> b!4269813 m!4862757))

(assert (=> b!4269813 m!4862759))

(declare-fun m!4862761 () Bool)

(assert (=> b!4269813 m!4862761))

(declare-fun m!4862763 () Bool)

(assert (=> b!4269812 m!4862763))

(assert (=> b!4269684 d!1259177))

(declare-fun d!1259179 () Bool)

(declare-fun c!726343 () Bool)

(assert (=> d!1259179 (= c!726343 (is-Nil!47292 lt!1512499))))

(declare-fun e!2651012 () (Set (_ BitVec 16)))

(assert (=> d!1259179 (= (content!7474 lt!1512499) e!2651012)))

(declare-fun b!4269818 () Bool)

(assert (=> b!4269818 (= e!2651012 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4269819 () Bool)

(assert (=> b!4269819 (= e!2651012 (set.union (set.insert (h!52712 lt!1512499) (as set.empty (Set (_ BitVec 16)))) (content!7474 (t!353635 lt!1512499))))))

(assert (= (and d!1259179 c!726343) b!4269818))

(assert (= (and d!1259179 (not c!726343)) b!4269819))

(declare-fun m!4862765 () Bool)

(assert (=> b!4269819 m!4862765))

(declare-fun m!4862767 () Bool)

(assert (=> b!4269819 m!4862767))

(assert (=> d!1259151 d!1259179))

(declare-fun d!1259181 () Bool)

(declare-fun c!726344 () Bool)

(assert (=> d!1259181 (= c!726344 (is-Nil!47292 (list!17128 (c!726265 x!739901))))))

(declare-fun e!2651013 () (Set (_ BitVec 16)))

(assert (=> d!1259181 (= (content!7474 (list!17128 (c!726265 x!739901))) e!2651013)))

(declare-fun b!4269820 () Bool)

(assert (=> b!4269820 (= e!2651013 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4269821 () Bool)

(assert (=> b!4269821 (= e!2651013 (set.union (set.insert (h!52712 (list!17128 (c!726265 x!739901))) (as set.empty (Set (_ BitVec 16)))) (content!7474 (t!353635 (list!17128 (c!726265 x!739901))))))))

(assert (= (and d!1259181 c!726344) b!4269820))

(assert (= (and d!1259181 (not c!726344)) b!4269821))

(declare-fun m!4862769 () Bool)

(assert (=> b!4269821 m!4862769))

(declare-fun m!4862771 () Bool)

(assert (=> b!4269821 m!4862771))

(assert (=> d!1259151 d!1259181))

(declare-fun d!1259183 () Bool)

(declare-fun c!726345 () Bool)

(assert (=> d!1259183 (= c!726345 (is-Nil!47292 (efficientList$default$2!163 (c!726265 x!739901))))))

(declare-fun e!2651014 () (Set (_ BitVec 16)))

(assert (=> d!1259183 (= (content!7474 (efficientList$default$2!163 (c!726265 x!739901))) e!2651014)))

(declare-fun b!4269822 () Bool)

(assert (=> b!4269822 (= e!2651014 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4269823 () Bool)

(assert (=> b!4269823 (= e!2651014 (set.union (set.insert (h!52712 (efficientList$default$2!163 (c!726265 x!739901))) (as set.empty (Set (_ BitVec 16)))) (content!7474 (t!353635 (efficientList$default$2!163 (c!726265 x!739901))))))))

(assert (= (and d!1259183 c!726345) b!4269822))

(assert (= (and d!1259183 (not c!726345)) b!4269823))

(declare-fun m!4862773 () Bool)

(assert (=> b!4269823 m!4862773))

(declare-fun m!4862775 () Bool)

(assert (=> b!4269823 m!4862775))

(assert (=> d!1259151 d!1259183))

(declare-fun bs!600299 () Bool)

(declare-fun s!239548 () Bool)

(assert (= bs!600299 (and neg-inst!1646 s!239548)))

(assert (=> bs!600299 (=> true (= (list!17126 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))) (list!17126 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))

(declare-fun m!4862777 () Bool)

(assert (=> m!4862527 m!4862777))

(declare-fun m!4862779 () Bool)

(assert (=> m!4862527 m!4862779))

(declare-fun m!4862781 () Bool)

(assert (=> m!4862527 m!4862781))

(assert (=> m!4862527 s!239548))

(push 1)

(assert (not b!4269711))

(assert (not b!4269788))

(assert (not b!4269728))

(assert (not b!4269823))

(assert (not bm!294110))

(assert (not b!4269798))

(assert (not b!4269782))

(assert (not b!4269789))

(assert (not d!1259161))

(assert (not b!4269713))

(assert (not b!4269797))

(assert (not b!4269821))

(assert (not d!1259173))

(assert (not d!1259129))

(assert (not b!4269738))

(assert (not d!1259163))

(assert (not b!4269794))

(assert (not d!1259171))

(assert (not b!4269631))

(assert (not bs!600299))

(assert (not b!4269808))

(assert (not b!4269809))

(assert (not b!4269803))

(assert (not b!4269819))

(assert (not b!4269730))

(assert (not b!4269813))

(assert (not b!4269812))

(assert (not d!1259131))

(assert (not b!4269793))

(assert (not b!4269804))

(assert (not b!4269783))

(assert (not b!4269739))

(assert (not b!4269801))

(assert (not d!1259155))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4269875 () Bool)

(declare-fun res!1754068 () Bool)

(declare-fun e!2651041 () Bool)

(assert (=> b!4269875 (=> (not res!1754068) (not e!2651041))))

(declare-fun lt!1512513 () List!47416)

(assert (=> b!4269875 (= res!1754068 (= (size!34635 lt!1512513) (+ (size!34635 (t!353635 (list!17128 (c!726265 x!739901)))) (size!34635 (efficientList$default$2!163 (c!726265 x!739901))))))))

(declare-fun b!4269876 () Bool)

(assert (=> b!4269876 (= e!2651041 (or (not (= (efficientList$default$2!163 (c!726265 x!739901)) Nil!47292)) (= lt!1512513 (t!353635 (list!17128 (c!726265 x!739901))))))))

(declare-fun d!1259219 () Bool)

(assert (=> d!1259219 e!2651041))

(declare-fun res!1754069 () Bool)

(assert (=> d!1259219 (=> (not res!1754069) (not e!2651041))))

(assert (=> d!1259219 (= res!1754069 (= (content!7474 lt!1512513) (set.union (content!7474 (t!353635 (list!17128 (c!726265 x!739901)))) (content!7474 (efficientList$default$2!163 (c!726265 x!739901))))))))

(declare-fun e!2651042 () List!47416)

(assert (=> d!1259219 (= lt!1512513 e!2651042)))

(declare-fun c!726365 () Bool)

(assert (=> d!1259219 (= c!726365 (is-Nil!47292 (t!353635 (list!17128 (c!726265 x!739901)))))))

(assert (=> d!1259219 (= (++!12062 (t!353635 (list!17128 (c!726265 x!739901))) (efficientList$default$2!163 (c!726265 x!739901))) lt!1512513)))

(declare-fun b!4269873 () Bool)

(assert (=> b!4269873 (= e!2651042 (efficientList$default$2!163 (c!726265 x!739901)))))

(declare-fun b!4269874 () Bool)

(assert (=> b!4269874 (= e!2651042 (Cons!47292 (h!52712 (t!353635 (list!17128 (c!726265 x!739901)))) (++!12062 (t!353635 (t!353635 (list!17128 (c!726265 x!739901)))) (efficientList$default$2!163 (c!726265 x!739901)))))))

(assert (= (and d!1259219 c!726365) b!4269873))

(assert (= (and d!1259219 (not c!726365)) b!4269874))

(assert (= (and d!1259219 res!1754069) b!4269875))

(assert (= (and b!4269875 res!1754068) b!4269876))

(declare-fun m!4862889 () Bool)

(assert (=> b!4269875 m!4862889))

(declare-fun m!4862891 () Bool)

(assert (=> b!4269875 m!4862891))

(assert (=> b!4269875 m!4862577))

(assert (=> b!4269875 m!4862675))

(declare-fun m!4862893 () Bool)

(assert (=> d!1259219 m!4862893))

(assert (=> d!1259219 m!4862771))

(assert (=> d!1259219 m!4862577))

(assert (=> d!1259219 m!4862681))

(assert (=> b!4269874 m!4862577))

(declare-fun m!4862895 () Bool)

(assert (=> b!4269874 m!4862895))

(assert (=> b!4269782 d!1259219))

(declare-fun d!1259221 () Bool)

(declare-fun lt!1512516 () Int)

(assert (=> d!1259221 (>= lt!1512516 0)))

(declare-fun e!2651045 () Int)

(assert (=> d!1259221 (= lt!1512516 e!2651045)))

(declare-fun c!726368 () Bool)

(assert (=> d!1259221 (= c!726368 (is-Nil!47292 lt!1512499))))

(assert (=> d!1259221 (= (size!34635 lt!1512499) lt!1512516)))

(declare-fun b!4269881 () Bool)

(assert (=> b!4269881 (= e!2651045 0)))

(declare-fun b!4269882 () Bool)

(assert (=> b!4269882 (= e!2651045 (+ 1 (size!34635 (t!353635 lt!1512499))))))

(assert (= (and d!1259221 c!726368) b!4269881))

(assert (= (and d!1259221 (not c!726368)) b!4269882))

(declare-fun m!4862897 () Bool)

(assert (=> b!4269882 m!4862897))

(assert (=> b!4269783 d!1259221))

(declare-fun d!1259223 () Bool)

(declare-fun lt!1512517 () Int)

(assert (=> d!1259223 (>= lt!1512517 0)))

(declare-fun e!2651046 () Int)

(assert (=> d!1259223 (= lt!1512517 e!2651046)))

(declare-fun c!726369 () Bool)

(assert (=> d!1259223 (= c!726369 (is-Nil!47292 (list!17128 (c!726265 x!739901))))))

(assert (=> d!1259223 (= (size!34635 (list!17128 (c!726265 x!739901))) lt!1512517)))

(declare-fun b!4269883 () Bool)

(assert (=> b!4269883 (= e!2651046 0)))

(declare-fun b!4269884 () Bool)

(assert (=> b!4269884 (= e!2651046 (+ 1 (size!34635 (t!353635 (list!17128 (c!726265 x!739901))))))))

(assert (= (and d!1259223 c!726369) b!4269883))

(assert (= (and d!1259223 (not c!726369)) b!4269884))

(assert (=> b!4269884 m!4862891))

(assert (=> b!4269783 d!1259223))

(declare-fun d!1259225 () Bool)

(declare-fun lt!1512518 () Int)

(assert (=> d!1259225 (>= lt!1512518 0)))

(declare-fun e!2651047 () Int)

(assert (=> d!1259225 (= lt!1512518 e!2651047)))

(declare-fun c!726370 () Bool)

(assert (=> d!1259225 (= c!726370 (is-Nil!47292 (efficientList$default$2!163 (c!726265 x!739901))))))

(assert (=> d!1259225 (= (size!34635 (efficientList$default$2!163 (c!726265 x!739901))) lt!1512518)))

(declare-fun b!4269885 () Bool)

(assert (=> b!4269885 (= e!2651047 0)))

(declare-fun b!4269886 () Bool)

(assert (=> b!4269886 (= e!2651047 (+ 1 (size!34635 (t!353635 (efficientList$default$2!163 (c!726265 x!739901))))))))

(assert (= (and d!1259225 c!726370) b!4269885))

(assert (= (and d!1259225 (not c!726370)) b!4269886))

(declare-fun m!4862899 () Bool)

(assert (=> b!4269886 m!4862899))

(assert (=> b!4269783 d!1259225))

(declare-fun d!1259227 () Bool)

(assert (=> d!1259227 (= (++!12062 (++!12062 lt!1512479 lt!1512477) (efficientList$default$2!163 (c!726265 x!739901))) (++!12062 lt!1512479 (++!12062 lt!1512477 (efficientList$default$2!163 (c!726265 x!739901)))))))

(declare-fun lt!1512521 () Unit!66199)

(declare-fun choose!26030 (List!47416 List!47416 List!47416) Unit!66199)

(assert (=> d!1259227 (= lt!1512521 (choose!26030 lt!1512479 lt!1512477 (efficientList$default$2!163 (c!726265 x!739901))))))

(assert (=> d!1259227 (= (lemmaConcatAssociativity!2704 lt!1512479 lt!1512477 (efficientList$default$2!163 (c!726265 x!739901))) lt!1512521)))

(declare-fun bs!600305 () Bool)

(assert (= bs!600305 d!1259227))

(assert (=> bs!600305 m!4862623))

(assert (=> bs!600305 m!4862623))

(assert (=> bs!600305 m!4862577))

(assert (=> bs!600305 m!4862625))

(assert (=> bs!600305 m!4862577))

(declare-fun m!4862901 () Bool)

(assert (=> bs!600305 m!4862901))

(assert (=> bs!600305 m!4862901))

(declare-fun m!4862903 () Bool)

(assert (=> bs!600305 m!4862903))

(assert (=> bs!600305 m!4862577))

(declare-fun m!4862905 () Bool)

(assert (=> bs!600305 m!4862905))

(assert (=> b!4269728 d!1259227))

(declare-fun b!4269889 () Bool)

(declare-fun res!1754070 () Bool)

(declare-fun e!2651048 () Bool)

(assert (=> b!4269889 (=> (not res!1754070) (not e!2651048))))

(declare-fun lt!1512522 () List!47416)

(assert (=> b!4269889 (= res!1754070 (= (size!34635 lt!1512522) (+ (size!34635 (++!12062 lt!1512479 lt!1512477)) (size!34635 (efficientList$default$2!163 (c!726265 x!739901))))))))

(declare-fun b!4269890 () Bool)

(assert (=> b!4269890 (= e!2651048 (or (not (= (efficientList$default$2!163 (c!726265 x!739901)) Nil!47292)) (= lt!1512522 (++!12062 lt!1512479 lt!1512477))))))

(declare-fun d!1259229 () Bool)

(assert (=> d!1259229 e!2651048))

(declare-fun res!1754071 () Bool)

(assert (=> d!1259229 (=> (not res!1754071) (not e!2651048))))

(assert (=> d!1259229 (= res!1754071 (= (content!7474 lt!1512522) (set.union (content!7474 (++!12062 lt!1512479 lt!1512477)) (content!7474 (efficientList$default$2!163 (c!726265 x!739901))))))))

(declare-fun e!2651049 () List!47416)

(assert (=> d!1259229 (= lt!1512522 e!2651049)))

(declare-fun c!726371 () Bool)

(assert (=> d!1259229 (= c!726371 (is-Nil!47292 (++!12062 lt!1512479 lt!1512477)))))

(assert (=> d!1259229 (= (++!12062 (++!12062 lt!1512479 lt!1512477) (efficientList$default$2!163 (c!726265 x!739901))) lt!1512522)))

(declare-fun b!4269887 () Bool)

(assert (=> b!4269887 (= e!2651049 (efficientList$default$2!163 (c!726265 x!739901)))))

(declare-fun b!4269888 () Bool)

(assert (=> b!4269888 (= e!2651049 (Cons!47292 (h!52712 (++!12062 lt!1512479 lt!1512477)) (++!12062 (t!353635 (++!12062 lt!1512479 lt!1512477)) (efficientList$default$2!163 (c!726265 x!739901)))))))

(assert (= (and d!1259229 c!726371) b!4269887))

(assert (= (and d!1259229 (not c!726371)) b!4269888))

(assert (= (and d!1259229 res!1754071) b!4269889))

(assert (= (and b!4269889 res!1754070) b!4269890))

(declare-fun m!4862907 () Bool)

(assert (=> b!4269889 m!4862907))

(assert (=> b!4269889 m!4862623))

(declare-fun m!4862909 () Bool)

(assert (=> b!4269889 m!4862909))

(assert (=> b!4269889 m!4862577))

(assert (=> b!4269889 m!4862675))

(declare-fun m!4862911 () Bool)

(assert (=> d!1259229 m!4862911))

(assert (=> d!1259229 m!4862623))

(declare-fun m!4862913 () Bool)

(assert (=> d!1259229 m!4862913))

(assert (=> d!1259229 m!4862577))

(assert (=> d!1259229 m!4862681))

(assert (=> b!4269888 m!4862577))

(declare-fun m!4862915 () Bool)

(assert (=> b!4269888 m!4862915))

(assert (=> b!4269728 d!1259229))

(declare-fun b!4269891 () Bool)

(declare-fun e!2651052 () List!47416)

(declare-fun call!294119 () List!47416)

(assert (=> b!4269891 (= e!2651052 call!294119)))

(declare-fun b!4269892 () Bool)

(declare-fun e!2651050 () List!47416)

(assert (=> b!4269892 (= e!2651050 e!2651052)))

(declare-fun c!726373 () Bool)

(assert (=> b!4269892 (= c!726373 (is-Leaf!22067 (right!35442 (c!726265 x!739901))))))

(declare-fun bm!294114 () Bool)

(declare-fun c!726372 () Bool)

(assert (=> bm!294114 (= c!726372 c!726373)))

(declare-fun e!2651051 () List!47416)

(assert (=> bm!294114 (= call!294119 (++!12062 e!2651051 (efficientList$default$2!163 (c!726265 x!739901))))))

(declare-fun d!1259231 () Bool)

(declare-fun lt!1512527 () List!47416)

(assert (=> d!1259231 (= lt!1512527 (++!12062 (list!17128 (right!35442 (c!726265 x!739901))) (efficientList$default$2!163 (c!726265 x!739901))))))

(assert (=> d!1259231 (= lt!1512527 e!2651050)))

(declare-fun c!726374 () Bool)

(assert (=> d!1259231 (= c!726374 (is-Empty!14274 (right!35442 (c!726265 x!739901))))))

(assert (=> d!1259231 (= (efficientList!473 (right!35442 (c!726265 x!739901)) (efficientList$default$2!163 (c!726265 x!739901))) lt!1512527)))

(declare-fun b!4269893 () Bool)

(declare-fun lt!1512526 () Unit!66199)

(declare-fun lt!1512524 () Unit!66199)

(assert (=> b!4269893 (= lt!1512526 lt!1512524)))

(declare-fun lt!1512523 () List!47416)

(declare-fun lt!1512525 () List!47416)

(assert (=> b!4269893 (= (++!12062 (++!12062 lt!1512525 lt!1512523) (efficientList$default$2!163 (c!726265 x!739901))) (++!12062 lt!1512525 call!294119))))

(assert (=> b!4269893 (= lt!1512524 (lemmaConcatAssociativity!2704 lt!1512525 lt!1512523 (efficientList$default$2!163 (c!726265 x!739901))))))

(assert (=> b!4269893 (= lt!1512523 (list!17128 (right!35442 (right!35442 (c!726265 x!739901)))))))

(assert (=> b!4269893 (= lt!1512525 (list!17128 (left!35112 (right!35442 (c!726265 x!739901)))))))

(assert (=> b!4269893 (= e!2651052 (efficientList!473 (left!35112 (right!35442 (c!726265 x!739901))) (efficientList!473 (right!35442 (right!35442 (c!726265 x!739901))) (efficientList$default$2!163 (c!726265 x!739901)))))))

(declare-fun b!4269894 () Bool)

(assert (=> b!4269894 (= e!2651050 (efficientList$default$2!163 (c!726265 x!739901)))))

(declare-fun b!4269895 () Bool)

(assert (=> b!4269895 (= e!2651051 (efficientList!475 (xs!17580 (right!35442 (c!726265 x!739901)))))))

(declare-fun b!4269896 () Bool)

(assert (=> b!4269896 (= e!2651051 lt!1512523)))

(assert (= (and d!1259231 c!726374) b!4269894))

(assert (= (and d!1259231 (not c!726374)) b!4269892))

(assert (= (and b!4269892 c!726373) b!4269891))

(assert (= (and b!4269892 (not c!726373)) b!4269893))

(assert (= (or b!4269891 b!4269893) bm!294114))

(assert (= (and bm!294114 c!726372) b!4269895))

(assert (= (and bm!294114 (not c!726372)) b!4269896))

(assert (=> bm!294114 m!4862577))

(declare-fun m!4862917 () Bool)

(assert (=> bm!294114 m!4862917))

(assert (=> d!1259231 m!4862583))

(assert (=> d!1259231 m!4862583))

(assert (=> d!1259231 m!4862577))

(declare-fun m!4862919 () Bool)

(assert (=> d!1259231 m!4862919))

(assert (=> b!4269893 m!4862577))

(declare-fun m!4862921 () Bool)

(assert (=> b!4269893 m!4862921))

(declare-fun m!4862923 () Bool)

(assert (=> b!4269893 m!4862923))

(assert (=> b!4269893 m!4862577))

(declare-fun m!4862925 () Bool)

(assert (=> b!4269893 m!4862925))

(declare-fun m!4862927 () Bool)

(assert (=> b!4269893 m!4862927))

(assert (=> b!4269893 m!4862723))

(assert (=> b!4269893 m!4862921))

(declare-fun m!4862929 () Bool)

(assert (=> b!4269893 m!4862929))

(assert (=> b!4269893 m!4862721))

(assert (=> b!4269893 m!4862577))

(declare-fun m!4862931 () Bool)

(assert (=> b!4269893 m!4862931))

(assert (=> b!4269893 m!4862923))

(declare-fun m!4862933 () Bool)

(assert (=> b!4269895 m!4862933))

(assert (=> b!4269728 d!1259231))

(declare-fun b!4269899 () Bool)

(declare-fun res!1754072 () Bool)

(declare-fun e!2651053 () Bool)

(assert (=> b!4269899 (=> (not res!1754072) (not e!2651053))))

(declare-fun lt!1512528 () List!47416)

(assert (=> b!4269899 (= res!1754072 (= (size!34635 lt!1512528) (+ (size!34635 lt!1512479) (size!34635 lt!1512477))))))

(declare-fun b!4269900 () Bool)

(assert (=> b!4269900 (= e!2651053 (or (not (= lt!1512477 Nil!47292)) (= lt!1512528 lt!1512479)))))

(declare-fun d!1259233 () Bool)

(assert (=> d!1259233 e!2651053))

(declare-fun res!1754073 () Bool)

(assert (=> d!1259233 (=> (not res!1754073) (not e!2651053))))

(assert (=> d!1259233 (= res!1754073 (= (content!7474 lt!1512528) (set.union (content!7474 lt!1512479) (content!7474 lt!1512477))))))

(declare-fun e!2651054 () List!47416)

(assert (=> d!1259233 (= lt!1512528 e!2651054)))

(declare-fun c!726375 () Bool)

(assert (=> d!1259233 (= c!726375 (is-Nil!47292 lt!1512479))))

(assert (=> d!1259233 (= (++!12062 lt!1512479 lt!1512477) lt!1512528)))

(declare-fun b!4269897 () Bool)

(assert (=> b!4269897 (= e!2651054 lt!1512477)))

(declare-fun b!4269898 () Bool)

(assert (=> b!4269898 (= e!2651054 (Cons!47292 (h!52712 lt!1512479) (++!12062 (t!353635 lt!1512479) lt!1512477)))))

(assert (= (and d!1259233 c!726375) b!4269897))

(assert (= (and d!1259233 (not c!726375)) b!4269898))

(assert (= (and d!1259233 res!1754073) b!4269899))

(assert (= (and b!4269899 res!1754072) b!4269900))

(declare-fun m!4862935 () Bool)

(assert (=> b!4269899 m!4862935))

(declare-fun m!4862937 () Bool)

(assert (=> b!4269899 m!4862937))

(declare-fun m!4862939 () Bool)

(assert (=> b!4269899 m!4862939))

(declare-fun m!4862941 () Bool)

(assert (=> d!1259233 m!4862941))

(declare-fun m!4862943 () Bool)

(assert (=> d!1259233 m!4862943))

(declare-fun m!4862945 () Bool)

(assert (=> d!1259233 m!4862945))

(declare-fun m!4862947 () Bool)

(assert (=> b!4269898 m!4862947))

(assert (=> b!4269728 d!1259233))

(assert (=> b!4269728 d!1259167))

(assert (=> b!4269728 d!1259165))

(declare-fun b!4269901 () Bool)

(declare-fun e!2651057 () List!47416)

(declare-fun call!294120 () List!47416)

(assert (=> b!4269901 (= e!2651057 call!294120)))

(declare-fun b!4269902 () Bool)

(declare-fun e!2651055 () List!47416)

(assert (=> b!4269902 (= e!2651055 e!2651057)))

(declare-fun c!726377 () Bool)

(assert (=> b!4269902 (= c!726377 (is-Leaf!22067 (left!35112 (c!726265 x!739901))))))

(declare-fun bm!294115 () Bool)

(declare-fun c!726376 () Bool)

(assert (=> bm!294115 (= c!726376 c!726377)))

(declare-fun e!2651056 () List!47416)

(assert (=> bm!294115 (= call!294120 (++!12062 e!2651056 (efficientList!473 (right!35442 (c!726265 x!739901)) (efficientList$default$2!163 (c!726265 x!739901)))))))

(declare-fun d!1259235 () Bool)

(declare-fun lt!1512533 () List!47416)

(assert (=> d!1259235 (= lt!1512533 (++!12062 (list!17128 (left!35112 (c!726265 x!739901))) (efficientList!473 (right!35442 (c!726265 x!739901)) (efficientList$default$2!163 (c!726265 x!739901)))))))

(assert (=> d!1259235 (= lt!1512533 e!2651055)))

(declare-fun c!726378 () Bool)

(assert (=> d!1259235 (= c!726378 (is-Empty!14274 (left!35112 (c!726265 x!739901))))))

(assert (=> d!1259235 (= (efficientList!473 (left!35112 (c!726265 x!739901)) (efficientList!473 (right!35442 (c!726265 x!739901)) (efficientList$default$2!163 (c!726265 x!739901)))) lt!1512533)))

(declare-fun b!4269903 () Bool)

(declare-fun lt!1512532 () Unit!66199)

(declare-fun lt!1512530 () Unit!66199)

(assert (=> b!4269903 (= lt!1512532 lt!1512530)))

(declare-fun lt!1512531 () List!47416)

(declare-fun lt!1512529 () List!47416)

(assert (=> b!4269903 (= (++!12062 (++!12062 lt!1512531 lt!1512529) (efficientList!473 (right!35442 (c!726265 x!739901)) (efficientList$default$2!163 (c!726265 x!739901)))) (++!12062 lt!1512531 call!294120))))

(assert (=> b!4269903 (= lt!1512530 (lemmaConcatAssociativity!2704 lt!1512531 lt!1512529 (efficientList!473 (right!35442 (c!726265 x!739901)) (efficientList$default$2!163 (c!726265 x!739901)))))))

(assert (=> b!4269903 (= lt!1512529 (list!17128 (right!35442 (left!35112 (c!726265 x!739901)))))))

(assert (=> b!4269903 (= lt!1512531 (list!17128 (left!35112 (left!35112 (c!726265 x!739901)))))))

(assert (=> b!4269903 (= e!2651057 (efficientList!473 (left!35112 (left!35112 (c!726265 x!739901))) (efficientList!473 (right!35442 (left!35112 (c!726265 x!739901))) (efficientList!473 (right!35442 (c!726265 x!739901)) (efficientList$default$2!163 (c!726265 x!739901))))))))

(declare-fun b!4269904 () Bool)

(assert (=> b!4269904 (= e!2651055 (efficientList!473 (right!35442 (c!726265 x!739901)) (efficientList$default$2!163 (c!726265 x!739901))))))

(declare-fun b!4269905 () Bool)

(assert (=> b!4269905 (= e!2651056 (efficientList!475 (xs!17580 (left!35112 (c!726265 x!739901)))))))

(declare-fun b!4269906 () Bool)

(assert (=> b!4269906 (= e!2651056 lt!1512529)))

(assert (= (and d!1259235 c!726378) b!4269904))

(assert (= (and d!1259235 (not c!726378)) b!4269902))

(assert (= (and b!4269902 c!726377) b!4269901))

(assert (= (and b!4269902 (not c!726377)) b!4269903))

(assert (= (or b!4269901 b!4269903) bm!294115))

(assert (= (and bm!294115 c!726376) b!4269905))

(assert (= (and bm!294115 (not c!726376)) b!4269906))

(assert (=> bm!294115 m!4862621))

(declare-fun m!4862949 () Bool)

(assert (=> bm!294115 m!4862949))

(assert (=> d!1259235 m!4862581))

(assert (=> d!1259235 m!4862581))

(assert (=> d!1259235 m!4862621))

(declare-fun m!4862951 () Bool)

(assert (=> d!1259235 m!4862951))

(assert (=> b!4269903 m!4862621))

(declare-fun m!4862953 () Bool)

(assert (=> b!4269903 m!4862953))

(declare-fun m!4862955 () Bool)

(assert (=> b!4269903 m!4862955))

(assert (=> b!4269903 m!4862621))

(declare-fun m!4862957 () Bool)

(assert (=> b!4269903 m!4862957))

(declare-fun m!4862959 () Bool)

(assert (=> b!4269903 m!4862959))

(assert (=> b!4269903 m!4862715))

(assert (=> b!4269903 m!4862953))

(declare-fun m!4862961 () Bool)

(assert (=> b!4269903 m!4862961))

(assert (=> b!4269903 m!4862713))

(assert (=> b!4269903 m!4862621))

(declare-fun m!4862963 () Bool)

(assert (=> b!4269903 m!4862963))

(assert (=> b!4269903 m!4862955))

(declare-fun m!4862965 () Bool)

(assert (=> b!4269905 m!4862965))

(assert (=> b!4269728 d!1259235))

(declare-fun b!4269909 () Bool)

(declare-fun res!1754074 () Bool)

(declare-fun e!2651058 () Bool)

(assert (=> b!4269909 (=> (not res!1754074) (not e!2651058))))

(declare-fun lt!1512534 () List!47416)

(assert (=> b!4269909 (= res!1754074 (= (size!34635 lt!1512534) (+ (size!34635 lt!1512479) (size!34635 call!294115))))))

(declare-fun b!4269910 () Bool)

(assert (=> b!4269910 (= e!2651058 (or (not (= call!294115 Nil!47292)) (= lt!1512534 lt!1512479)))))

(declare-fun d!1259237 () Bool)

(assert (=> d!1259237 e!2651058))

(declare-fun res!1754075 () Bool)

(assert (=> d!1259237 (=> (not res!1754075) (not e!2651058))))

(assert (=> d!1259237 (= res!1754075 (= (content!7474 lt!1512534) (set.union (content!7474 lt!1512479) (content!7474 call!294115))))))

(declare-fun e!2651059 () List!47416)

(assert (=> d!1259237 (= lt!1512534 e!2651059)))

(declare-fun c!726379 () Bool)

(assert (=> d!1259237 (= c!726379 (is-Nil!47292 lt!1512479))))

(assert (=> d!1259237 (= (++!12062 lt!1512479 call!294115) lt!1512534)))

(declare-fun b!4269907 () Bool)

(assert (=> b!4269907 (= e!2651059 call!294115)))

(declare-fun b!4269908 () Bool)

(assert (=> b!4269908 (= e!2651059 (Cons!47292 (h!52712 lt!1512479) (++!12062 (t!353635 lt!1512479) call!294115)))))

(assert (= (and d!1259237 c!726379) b!4269907))

(assert (= (and d!1259237 (not c!726379)) b!4269908))

(assert (= (and d!1259237 res!1754075) b!4269909))

(assert (= (and b!4269909 res!1754074) b!4269910))

(declare-fun m!4862967 () Bool)

(assert (=> b!4269909 m!4862967))

(assert (=> b!4269909 m!4862937))

(declare-fun m!4862969 () Bool)

(assert (=> b!4269909 m!4862969))

(declare-fun m!4862971 () Bool)

(assert (=> d!1259237 m!4862971))

(assert (=> d!1259237 m!4862943))

(declare-fun m!4862973 () Bool)

(assert (=> d!1259237 m!4862973))

(declare-fun m!4862975 () Bool)

(assert (=> b!4269908 m!4862975))

(assert (=> b!4269728 d!1259237))

(declare-fun d!1259239 () Bool)

(assert (=> d!1259239 true))

(assert (=> d!1259239 true))

(declare-fun res!1754078 () Bool)

(assert (=> d!1259239 (= (choose!26028 lambda!130654) res!1754078)))

(assert (=> d!1259131 d!1259239))

(declare-fun b!4269913 () Bool)

(declare-fun res!1754079 () Bool)

(declare-fun e!2651060 () Bool)

(assert (=> b!4269913 (=> (not res!1754079) (not e!2651060))))

(declare-fun lt!1512535 () List!47416)

(assert (=> b!4269913 (= res!1754079 (= (size!34635 lt!1512535) (+ (size!34635 e!2650960) (size!34635 (efficientList$default$2!163 (c!726265 x!739901))))))))

(declare-fun b!4269914 () Bool)

(assert (=> b!4269914 (= e!2651060 (or (not (= (efficientList$default$2!163 (c!726265 x!739901)) Nil!47292)) (= lt!1512535 e!2650960)))))

(declare-fun d!1259241 () Bool)

(assert (=> d!1259241 e!2651060))

(declare-fun res!1754080 () Bool)

(assert (=> d!1259241 (=> (not res!1754080) (not e!2651060))))

(assert (=> d!1259241 (= res!1754080 (= (content!7474 lt!1512535) (set.union (content!7474 e!2650960) (content!7474 (efficientList$default$2!163 (c!726265 x!739901))))))))

(declare-fun e!2651061 () List!47416)

(assert (=> d!1259241 (= lt!1512535 e!2651061)))

(declare-fun c!726380 () Bool)

(assert (=> d!1259241 (= c!726380 (is-Nil!47292 e!2650960))))

(assert (=> d!1259241 (= (++!12062 e!2650960 (efficientList$default$2!163 (c!726265 x!739901))) lt!1512535)))

(declare-fun b!4269911 () Bool)

(assert (=> b!4269911 (= e!2651061 (efficientList$default$2!163 (c!726265 x!739901)))))

(declare-fun b!4269912 () Bool)

(assert (=> b!4269912 (= e!2651061 (Cons!47292 (h!52712 e!2650960) (++!12062 (t!353635 e!2650960) (efficientList$default$2!163 (c!726265 x!739901)))))))

(assert (= (and d!1259241 c!726380) b!4269911))

(assert (= (and d!1259241 (not c!726380)) b!4269912))

(assert (= (and d!1259241 res!1754080) b!4269913))

(assert (= (and b!4269913 res!1754079) b!4269914))

(declare-fun m!4862977 () Bool)

(assert (=> b!4269913 m!4862977))

(declare-fun m!4862979 () Bool)

(assert (=> b!4269913 m!4862979))

(assert (=> b!4269913 m!4862577))

(assert (=> b!4269913 m!4862675))

(declare-fun m!4862981 () Bool)

(assert (=> d!1259241 m!4862981))

(declare-fun m!4862983 () Bool)

(assert (=> d!1259241 m!4862983))

(assert (=> d!1259241 m!4862577))

(assert (=> d!1259241 m!4862681))

(assert (=> b!4269912 m!4862577))

(declare-fun m!4862985 () Bool)

(assert (=> b!4269912 m!4862985))

(assert (=> bm!294110 d!1259241))

(declare-fun d!1259243 () Bool)

(declare-fun lt!1512538 () List!47416)

(assert (=> d!1259243 (= lt!1512538 (list!17130 (xs!17580 (c!726265 x!739901))))))

(declare-fun rec!32 (IArray!28553 Int List!47416) List!47416)

(declare-fun size!34637 (IArray!28553) Int)

(assert (=> d!1259243 (= lt!1512538 (rec!32 (xs!17580 (c!726265 x!739901)) (size!34637 (xs!17580 (c!726265 x!739901))) Nil!47292))))

(assert (=> d!1259243 (= (efficientList!475 (xs!17580 (c!726265 x!739901))) lt!1512538)))

(declare-fun bs!600306 () Bool)

(assert (= bs!600306 d!1259243))

(assert (=> bs!600306 m!4862587))

(declare-fun m!4862987 () Bool)

(assert (=> bs!600306 m!4862987))

(assert (=> bs!600306 m!4862987))

(declare-fun m!4862989 () Bool)

(assert (=> bs!600306 m!4862989))

(assert (=> b!4269730 d!1259243))

(declare-fun d!1259245 () Bool)

(declare-fun res!1754085 () Bool)

(declare-fun e!2651064 () Bool)

(assert (=> d!1259245 (=> (not res!1754085) (not e!2651064))))

(assert (=> d!1259245 (= res!1754085 (<= (size!34635 (list!17130 (xs!17580 (c!726265 x!739901)))) 512))))

(assert (=> d!1259245 (= (inv!62341 (c!726265 x!739901)) e!2651064)))

(declare-fun b!4269919 () Bool)

(declare-fun res!1754086 () Bool)

(assert (=> b!4269919 (=> (not res!1754086) (not e!2651064))))

(assert (=> b!4269919 (= res!1754086 (= (csize!28779 (c!726265 x!739901)) (size!34635 (list!17130 (xs!17580 (c!726265 x!739901))))))))

(declare-fun b!4269920 () Bool)

(assert (=> b!4269920 (= e!2651064 (and (> (csize!28779 (c!726265 x!739901)) 0) (<= (csize!28779 (c!726265 x!739901)) 512)))))

(assert (= (and d!1259245 res!1754085) b!4269919))

(assert (= (and b!4269919 res!1754086) b!4269920))

(assert (=> d!1259245 m!4862587))

(assert (=> d!1259245 m!4862587))

(declare-fun m!4862991 () Bool)

(assert (=> d!1259245 m!4862991))

(assert (=> b!4269919 m!4862587))

(assert (=> b!4269919 m!4862587))

(assert (=> b!4269919 m!4862991))

(assert (=> b!4269713 d!1259245))

(declare-fun d!1259247 () Bool)

(declare-fun res!1754093 () Bool)

(declare-fun e!2651067 () Bool)

(assert (=> d!1259247 (=> (not res!1754093) (not e!2651067))))

(declare-fun size!34638 (Conc!14274) Int)

(assert (=> d!1259247 (= res!1754093 (= (csize!28778 (c!726265 x!739901)) (+ (size!34638 (left!35112 (c!726265 x!739901))) (size!34638 (right!35442 (c!726265 x!739901))))))))

(assert (=> d!1259247 (= (inv!62340 (c!726265 x!739901)) e!2651067)))

(declare-fun b!4269927 () Bool)

(declare-fun res!1754094 () Bool)

(assert (=> b!4269927 (=> (not res!1754094) (not e!2651067))))

(assert (=> b!4269927 (= res!1754094 (and (not (= (left!35112 (c!726265 x!739901)) Empty!14274)) (not (= (right!35442 (c!726265 x!739901)) Empty!14274))))))

(declare-fun b!4269928 () Bool)

(declare-fun res!1754095 () Bool)

(assert (=> b!4269928 (=> (not res!1754095) (not e!2651067))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1879 (Conc!14274) Int)

(assert (=> b!4269928 (= res!1754095 (= (cheight!14485 (c!726265 x!739901)) (+ (max!0 (height!1879 (left!35112 (c!726265 x!739901))) (height!1879 (right!35442 (c!726265 x!739901)))) 1)))))

(declare-fun b!4269929 () Bool)

(assert (=> b!4269929 (= e!2651067 (<= 0 (cheight!14485 (c!726265 x!739901))))))

(assert (= (and d!1259247 res!1754093) b!4269927))

(assert (= (and b!4269927 res!1754094) b!4269928))

(assert (= (and b!4269928 res!1754095) b!4269929))

(declare-fun m!4862993 () Bool)

(assert (=> d!1259247 m!4862993))

(declare-fun m!4862995 () Bool)

(assert (=> d!1259247 m!4862995))

(declare-fun m!4862997 () Bool)

(assert (=> b!4269928 m!4862997))

(declare-fun m!4862999 () Bool)

(assert (=> b!4269928 m!4862999))

(assert (=> b!4269928 m!4862997))

(assert (=> b!4269928 m!4862999))

(declare-fun m!4863001 () Bool)

(assert (=> b!4269928 m!4863001))

(assert (=> b!4269711 d!1259247))

(declare-fun d!1259249 () Bool)

(declare-fun e!2651068 () Bool)

(assert (=> d!1259249 e!2651068))

(declare-fun res!1754096 () Bool)

(assert (=> d!1259249 (=> (not res!1754096) (not e!2651068))))

(declare-fun lt!1512539 () BalanceConc!28058)

(assert (=> d!1259249 (= res!1754096 (= (list!17126 lt!1512539) (Cons!47292 #x0066 (Cons!47292 #x0061 (Cons!47292 #x006C (Cons!47292 #x0073 (Cons!47292 #x0065 Nil!47292)))))))))

(assert (=> d!1259249 (= lt!1512539 (BalanceConc!28059 (fromList!922 (Cons!47292 #x0066 (Cons!47292 #x0061 (Cons!47292 #x006C (Cons!47292 #x0073 (Cons!47292 #x0065 Nil!47292))))))))))

(assert (=> d!1259249 (= (fromListB!2663 (Cons!47292 #x0066 (Cons!47292 #x0061 (Cons!47292 #x006C (Cons!47292 #x0073 (Cons!47292 #x0065 Nil!47292)))))) lt!1512539)))

(declare-fun b!4269930 () Bool)

(assert (=> b!4269930 (= e!2651068 (isBalanced!3829 (fromList!922 (Cons!47292 #x0066 (Cons!47292 #x0061 (Cons!47292 #x006C (Cons!47292 #x0073 (Cons!47292 #x0065 Nil!47292))))))))))

(assert (= (and d!1259249 res!1754096) b!4269930))

(declare-fun m!4863003 () Bool)

(assert (=> d!1259249 m!4863003))

(declare-fun m!4863005 () Bool)

(assert (=> d!1259249 m!4863005))

(assert (=> b!4269930 m!4863005))

(assert (=> b!4269930 m!4863005))

(declare-fun m!4863007 () Bool)

(assert (=> b!4269930 m!4863007))

(assert (=> d!1259161 d!1259249))

(assert (=> b!4269631 d!1259127))

(declare-fun d!1259251 () Bool)

(assert (=> d!1259251 (= (list!17126 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))) (list!17128 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))))

(declare-fun bs!600307 () Bool)

(assert (= bs!600307 d!1259251))

(declare-fun m!4863009 () Bool)

(assert (=> bs!600307 m!4863009))

(assert (=> bs!600299 d!1259251))

(declare-fun b!4269931 () Bool)

(declare-fun e!2651070 () BalanceConc!28058)

(assert (=> b!4269931 (= e!2651070 (seqFromList!5861 (value!249032 (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))))))

(declare-fun d!1259253 () Bool)

(declare-fun c!726382 () Bool)

(assert (=> d!1259253 (= c!726382 (is-True!16494 (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))

(declare-fun e!2651071 () BalanceConc!28058)

(assert (=> d!1259253 (= (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))) e!2651071)))

(declare-fun b!4269932 () Bool)

(assert (=> b!4269932 (= e!2651071 stringTrueConc!0)))

(declare-fun b!4269933 () Bool)

(declare-fun c!726381 () Bool)

(assert (=> b!4269933 (= c!726381 (is-Broken!41237 (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))

(declare-fun e!2651069 () BalanceConc!28058)

(assert (=> b!4269933 (= e!2651069 e!2651070)))

(declare-fun b!4269934 () Bool)

(assert (=> b!4269934 (= e!2651069 stringFalseConc!0)))

(declare-fun b!4269935 () Bool)

(assert (=> b!4269935 (= e!2651070 (BalanceConc!28059 Empty!14274))))

(declare-fun b!4269936 () Bool)

(assert (=> b!4269936 (= e!2651071 e!2651069)))

(declare-fun c!726383 () Bool)

(assert (=> b!4269936 (= c!726383 (is-False!16494 (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))

(assert (= (and d!1259253 c!726382) b!4269932))

(assert (= (and d!1259253 (not c!726382)) b!4269936))

(assert (= (and b!4269936 c!726383) b!4269934))

(assert (= (and b!4269936 (not c!726383)) b!4269933))

(assert (= (and b!4269933 c!726381) b!4269931))

(assert (= (and b!4269933 (not c!726381)) b!4269935))

(declare-fun m!4863011 () Bool)

(assert (=> b!4269931 m!4863011))

(assert (=> b!4269932 m!4862551))

(assert (=> b!4269934 m!4862553))

(assert (=> bs!600299 d!1259253))

(declare-fun d!1259255 () Bool)

(declare-fun lt!1512540 () List!47416)

(assert (=> d!1259255 (= lt!1512540 (efficientList!471 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))))))

(assert (=> d!1259255 (= (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901))) (ite (= lt!1512540 (Cons!47292 #x0074 (Cons!47292 #x0072 (Cons!47292 #x0075 (Cons!47292 #x0065 Nil!47292))))) True!16494 (ite (= lt!1512540 (Cons!47292 #x0066 (Cons!47292 #x0061 (Cons!47292 #x006C (Cons!47292 #x0073 (Cons!47292 #x0065 Nil!47292)))))) False!16494 (Broken!41237 lt!1512540))))))

(declare-fun bs!600308 () Bool)

(assert (= bs!600308 d!1259255))

(assert (=> bs!600308 m!4862525))

(declare-fun m!4863013 () Bool)

(assert (=> bs!600308 m!4863013))

(assert (=> bs!600299 d!1259255))

(assert (=> bs!600299 d!1259099))

(declare-fun d!1259257 () Bool)

(declare-fun c!726384 () Bool)

(assert (=> d!1259257 (= c!726384 (is-Nil!47292 lt!1512500))))

(declare-fun e!2651072 () (Set (_ BitVec 16)))

(assert (=> d!1259257 (= (content!7474 lt!1512500) e!2651072)))

(declare-fun b!4269937 () Bool)

(assert (=> b!4269937 (= e!2651072 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4269938 () Bool)

(assert (=> b!4269938 (= e!2651072 (set.union (set.insert (h!52712 lt!1512500) (as set.empty (Set (_ BitVec 16)))) (content!7474 (t!353635 lt!1512500))))))

(assert (= (and d!1259257 c!726384) b!4269937))

(assert (= (and d!1259257 (not c!726384)) b!4269938))

(declare-fun m!4863015 () Bool)

(assert (=> b!4269938 m!4863015))

(declare-fun m!4863017 () Bool)

(assert (=> b!4269938 m!4863017))

(assert (=> d!1259163 d!1259257))

(declare-fun d!1259259 () Bool)

(declare-fun c!726385 () Bool)

(assert (=> d!1259259 (= c!726385 (is-Nil!47292 (list!17128 (left!35112 (c!726265 x!739901)))))))

(declare-fun e!2651073 () (Set (_ BitVec 16)))

(assert (=> d!1259259 (= (content!7474 (list!17128 (left!35112 (c!726265 x!739901)))) e!2651073)))

(declare-fun b!4269939 () Bool)

(assert (=> b!4269939 (= e!2651073 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4269940 () Bool)

(assert (=> b!4269940 (= e!2651073 (set.union (set.insert (h!52712 (list!17128 (left!35112 (c!726265 x!739901)))) (as set.empty (Set (_ BitVec 16)))) (content!7474 (t!353635 (list!17128 (left!35112 (c!726265 x!739901)))))))))

(assert (= (and d!1259259 c!726385) b!4269939))

(assert (= (and d!1259259 (not c!726385)) b!4269940))

(declare-fun m!4863019 () Bool)

(assert (=> b!4269940 m!4863019))

(declare-fun m!4863021 () Bool)

(assert (=> b!4269940 m!4863021))

(assert (=> d!1259163 d!1259259))

(declare-fun d!1259261 () Bool)

(declare-fun c!726386 () Bool)

(assert (=> d!1259261 (= c!726386 (is-Nil!47292 (list!17128 (right!35442 (c!726265 x!739901)))))))

(declare-fun e!2651074 () (Set (_ BitVec 16)))

(assert (=> d!1259261 (= (content!7474 (list!17128 (right!35442 (c!726265 x!739901)))) e!2651074)))

(declare-fun b!4269941 () Bool)

(assert (=> b!4269941 (= e!2651074 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4269942 () Bool)

(assert (=> b!4269942 (= e!2651074 (set.union (set.insert (h!52712 (list!17128 (right!35442 (c!726265 x!739901)))) (as set.empty (Set (_ BitVec 16)))) (content!7474 (t!353635 (list!17128 (right!35442 (c!726265 x!739901)))))))))

(assert (= (and d!1259261 c!726386) b!4269941))

(assert (= (and d!1259261 (not c!726386)) b!4269942))

(declare-fun m!4863023 () Bool)

(assert (=> b!4269942 m!4863023))

(declare-fun m!4863025 () Bool)

(assert (=> b!4269942 m!4863025))

(assert (=> d!1259163 d!1259261))

(declare-fun d!1259263 () Bool)

(assert (=> d!1259263 (= (list!17126 lt!1512503) (list!17128 (c!726265 lt!1512503)))))

(declare-fun bs!600309 () Bool)

(assert (= bs!600309 d!1259263))

(declare-fun m!4863027 () Bool)

(assert (=> bs!600309 m!4863027))

(assert (=> d!1259171 d!1259263))

(declare-fun d!1259265 () Bool)

(declare-fun e!2651077 () Bool)

(assert (=> d!1259265 e!2651077))

(declare-fun res!1754099 () Bool)

(assert (=> d!1259265 (=> (not res!1754099) (not e!2651077))))

(declare-fun lt!1512543 () Conc!14274)

(assert (=> d!1259265 (= res!1754099 (= (list!17128 lt!1512543) (Cons!47292 #x0074 (Cons!47292 #x0072 (Cons!47292 #x0075 (Cons!47292 #x0065 Nil!47292))))))))

(declare-fun choose!26031 (List!47416) Conc!14274)

(assert (=> d!1259265 (= lt!1512543 (choose!26031 (Cons!47292 #x0074 (Cons!47292 #x0072 (Cons!47292 #x0075 (Cons!47292 #x0065 Nil!47292))))))))

(assert (=> d!1259265 (= (fromList!922 (Cons!47292 #x0074 (Cons!47292 #x0072 (Cons!47292 #x0075 (Cons!47292 #x0065 Nil!47292))))) lt!1512543)))

(declare-fun b!4269945 () Bool)

(assert (=> b!4269945 (= e!2651077 (isBalanced!3829 lt!1512543))))

(assert (= (and d!1259265 res!1754099) b!4269945))

(declare-fun m!4863029 () Bool)

(assert (=> d!1259265 m!4863029))

(declare-fun m!4863031 () Bool)

(assert (=> d!1259265 m!4863031))

(declare-fun m!4863033 () Bool)

(assert (=> b!4269945 m!4863033))

(assert (=> d!1259171 d!1259265))

(declare-fun d!1259267 () Bool)

(declare-fun c!726387 () Bool)

(assert (=> d!1259267 (= c!726387 (is-Nil!47292 lt!1512504))))

(declare-fun e!2651078 () (Set (_ BitVec 16)))

(assert (=> d!1259267 (= (content!7474 lt!1512504) e!2651078)))

(declare-fun b!4269946 () Bool)

(assert (=> b!4269946 (= e!2651078 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4269947 () Bool)

(assert (=> b!4269947 (= e!2651078 (set.union (set.insert (h!52712 lt!1512504) (as set.empty (Set (_ BitVec 16)))) (content!7474 (t!353635 lt!1512504))))))

(assert (= (and d!1259267 c!726387) b!4269946))

(assert (= (and d!1259267 (not c!726387)) b!4269947))

(declare-fun m!4863035 () Bool)

(assert (=> b!4269947 m!4863035))

(declare-fun m!4863037 () Bool)

(assert (=> b!4269947 m!4863037))

(assert (=> d!1259173 d!1259267))

(declare-fun d!1259269 () Bool)

(declare-fun c!726388 () Bool)

(assert (=> d!1259269 (= c!726388 (is-Nil!47292 (list!17128 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))))

(declare-fun e!2651079 () (Set (_ BitVec 16)))

(assert (=> d!1259269 (= (content!7474 (list!17128 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))) e!2651079)))

(declare-fun b!4269948 () Bool)

(assert (=> b!4269948 (= e!2651079 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4269949 () Bool)

(assert (=> b!4269949 (= e!2651079 (set.union (set.insert (h!52712 (list!17128 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))) (as set.empty (Set (_ BitVec 16)))) (content!7474 (t!353635 (list!17128 (left!35112 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))))))

(assert (= (and d!1259269 c!726388) b!4269948))

(assert (= (and d!1259269 (not c!726388)) b!4269949))

(declare-fun m!4863039 () Bool)

(assert (=> b!4269949 m!4863039))

(declare-fun m!4863041 () Bool)

(assert (=> b!4269949 m!4863041))

(assert (=> d!1259173 d!1259269))

(declare-fun d!1259271 () Bool)

(declare-fun c!726389 () Bool)

(assert (=> d!1259271 (= c!726389 (is-Nil!47292 (list!17128 (right!35442 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))))

(declare-fun e!2651080 () (Set (_ BitVec 16)))

(assert (=> d!1259271 (= (content!7474 (list!17128 (right!35442 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))) e!2651080)))

(declare-fun b!4269950 () Bool)

(assert (=> b!4269950 (= e!2651080 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4269951 () Bool)

(assert (=> b!4269951 (= e!2651080 (set.union (set.insert (h!52712 (list!17128 (right!35442 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))) (as set.empty (Set (_ BitVec 16)))) (content!7474 (t!353635 (list!17128 (right!35442 (c!726265 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!739901)))))))))))

(assert (= (and d!1259271 c!726389) b!4269950))

(assert (= (and d!1259271 (not c!726389)) b!4269951))

(declare-fun m!4863043 () Bool)

(assert (=> b!4269951 m!4863043))

(declare-fun m!4863045 () Bool)

(assert (=> b!4269951 m!4863045))

(assert (=> d!1259173 d!1259271))

(declare-fun d!1259273 () Bool)

(declare-fun c!726390 () Bool)

(assert (=> d!1259273 (= c!726390 (is-Node!14274 (left!35112 (c!726265 x!739901))))))

(declare-fun e!2651081 () Bool)

(assert (=> d!1259273 (= (inv!62336 (left!35112 (c!726265 x!739901))) e!2651081)))

(declare-fun b!4269952 () Bool)

(assert (=> b!4269952 (= e!2651081 (inv!62340 (left!35112 (c!726265 x!739901))))))

(declare-fun b!4269953 () Bool)

(declare-fun e!2651082 () Bool)

(assert (=> b!4269953 (= e!2651081 e!2651082)))

(declare-fun res!1754100 () Bool)

(assert (=> b!4269953 (= res!1754100 (not (is-Leaf!22067 (left!35112 (c!726265 x!739901)))))))

(assert (=> b!4269953 (=> res!1754100 e!2651082)))

(declare-fun b!4269954 () Bool)

(assert (=> b!4269954 (= e!2651082 (inv!62341 (left!35112 (c!726265 x!739901))))))

(assert (= (and d!1259273 c!726390) b!4269952))

(assert (= (and d!1259273 (not c!726390)) b!4269953))

(assert (= (and b!4269953 (not res!1754100)) b!4269954))

(declare-fun m!4863047 () Bool)

(assert (=> b!4269952 m!4863047))

(declare-fun m!4863049 () Bool)

(assert (=> b!4269954 m!4863049))

(assert (=> b!4269738 d!1259273))

(declare-fun d!1259275 () Bool)

(declare-fun c!726391 () Bool)

(assert (=> d!1259275 (= c!726391 (is-Node!14274 (right!35442 (c!726265 x!739901))))))

(declare-fun e!2651083 () Bool)

(assert (=> d!1259275 (= (inv!62336 (right!35442 (c!726265 x!739901))) e!2651083)))

(declare-fun b!4269955 () Bool)

(assert (=> b!4269955 (= e!2651083 (inv!62340 (right!35442 (c!726265 x!739901))))))

(declare-fun b!4269956 () Bool)

(declare-fun e!2651084 () Bool)

(assert (=> b!4269956 (= e!2651083 e!2651084)))

(declare-fun res!1754101 () Bool)

(assert (=> b!4269956 (= res!1754101 (not (is-Leaf!22067 (right!35442 (c!726265 x!739901)))))))

(assert (=> b!4269956 (=> res!1754101 e!2651084)))

(declare-fun b!4269957 () Bool)

(assert (=> b!4269957 (= e!2651084 (inv!62341 (right!35442 (c!726265 x!739901))))))

(assert (= (and d!1259275 c!726391) b!4269955))

(assert (= (and d!1259275 (not c!726391)) b!4269956))

(assert (= (and b!4269956 (not res!1754101)) b!4269957))

(declare-fun m!4863051 () Bool)

(assert (=> b!4269955 m!4863051))

(declare-fun m!4863053 () Bool)

(assert (=> b!4269957 m!4863053))

(assert (=> b!4269738 d!1259275))

(declare-fun b!4269970 () Bool)

(declare-fun e!2651089 () Bool)

(declare-fun e!2651090 () Bool)

(assert (=> b!4269970 (= e!2651089 e!2651090)))

(declare-fun res!1754117 () Bool)

(assert (=> b!4269970 (=> (not res!1754117) (not e!2651090))))

(assert (=> b!4269970 (= res!1754117 (<= (- 1) (- (height!1879 (left!35112 (c!726265 x!739901))) (height!1879 (right!35442 (c!726265 x!739901))))))))

(declare-fun d!1259277 () Bool)

(declare-fun res!1754118 () Bool)

(assert (=> d!1259277 (=> res!1754118 e!2651089)))

(assert (=> d!1259277 (= res!1754118 (not (is-Node!14274 (c!726265 x!739901))))))

(assert (=> d!1259277 (= (isBalanced!3829 (c!726265 x!739901)) e!2651089)))

(declare-fun b!4269971 () Bool)

(declare-fun res!1754115 () Bool)

(assert (=> b!4269971 (=> (not res!1754115) (not e!2651090))))

(assert (=> b!4269971 (= res!1754115 (isBalanced!3829 (left!35112 (c!726265 x!739901))))))

(declare-fun b!4269972 () Bool)

(declare-fun res!1754116 () Bool)

(assert (=> b!4269972 (=> (not res!1754116) (not e!2651090))))

(assert (=> b!4269972 (= res!1754116 (isBalanced!3829 (right!35442 (c!726265 x!739901))))))

(declare-fun b!4269973 () Bool)

(declare-fun res!1754114 () Bool)

(assert (=> b!4269973 (=> (not res!1754114) (not e!2651090))))

(assert (=> b!4269973 (= res!1754114 (<= (- (height!1879 (left!35112 (c!726265 x!739901))) (height!1879 (right!35442 (c!726265 x!739901)))) 1))))

(declare-fun b!4269974 () Bool)

(declare-fun isEmpty!28000 (Conc!14274) Bool)

(assert (=> b!4269974 (= e!2651090 (not (isEmpty!28000 (right!35442 (c!726265 x!739901)))))))

(declare-fun b!4269975 () Bool)

(declare-fun res!1754119 () Bool)

(assert (=> b!4269975 (=> (not res!1754119) (not e!2651090))))

(assert (=> b!4269975 (= res!1754119 (not (isEmpty!28000 (left!35112 (c!726265 x!739901)))))))

(assert (= (and d!1259277 (not res!1754118)) b!4269970))

(assert (= (and b!4269970 res!1754117) b!4269973))

(assert (= (and b!4269973 res!1754114) b!4269971))

(assert (= (and b!4269971 res!1754115) b!4269972))

(assert (= (and b!4269972 res!1754116) b!4269975))

(assert (= (and b!4269975 res!1754119) b!4269974))

(declare-fun m!4863055 () Bool)

(assert (=> b!4269971 m!4863055))

(declare-fun m!4863057 () Bool)

(assert (=> b!4269972 m!4863057))

(declare-fun m!4863059 () Bool)

(assert (=> b!4269975 m!4863059))

(assert (=> b!4269970 m!4862997))

(assert (=> b!4269970 m!4862999))

(assert (=> b!4269973 m!4862997))

(assert (=> b!4269973 m!4862999))

(declare-fun m!4863061 () Bool)

(assert (=> b!4269974 m!4863061))

(assert (=> d!1259129 d!1259277))

(declare-fun d!1259279 () Bool)

(declare-fun e!2651091 () Bool)

(assert (=> d!1259279 e!2651091))

(declare-fun res!1754120 () Bool)

(assert (=> d!1259279 (=> (not res!1754120) (not e!2651091))))

(declare-fun lt!1512544 () BalanceConc!28058)

(assert (=> d!1259279 (= res!1754120 (= (list!17126 lt!1512544) (value!249032 (toValue!16 thiss!2453 x!739901))))))

(assert (=> d!1259279 (= lt!1512544 (BalanceConc!28059 (fromList!922 (value!249032 (toValue!16 thiss!2453 x!739901)))))))

(assert (=> d!1259279 (= (fromListB!2663 (value!249032 (toValue!16 thiss!2453 x!739901))) lt!1512544)))

(declare-fun b!4269976 () Bool)

(assert (=> b!4269976 (= e!2651091 (isBalanced!3829 (fromList!922 (value!249032 (toValue!16 thiss!2453 x!739901)))))))

(assert (= (and d!1259279 res!1754120) b!4269976))

(declare-fun m!4863063 () Bool)

(assert (=> d!1259279 m!4863063))

(declare-fun m!4863065 () Bool)

(assert (=> d!1259279 m!4863065))

(assert (=> b!4269976 m!4863065))

(assert (=> b!4269976 m!4863065))

(declare-fun m!4863067 () Bool)

(assert (=> b!4269976 m!4863067))

(assert (=> d!1259155 d!1259279))

(declare-fun d!1259281 () Bool)

(assert (=> d!1259281 (= (inv!62342 (xs!17580 (c!726265 x!739901))) (<= (size!34635 (innerList!14334 (xs!17580 (c!726265 x!739901)))) 2147483647))))

(declare-fun bs!600310 () Bool)

(assert (= bs!600310 d!1259281))

(declare-fun m!4863069 () Bool)

(assert (=> bs!600310 m!4863069))

(assert (=> b!4269739 d!1259281))

(declare-fun tp!1307874 () Bool)

(declare-fun b!4269977 () Bool)

(declare-fun e!2651092 () Bool)

(declare-fun tp!1307873 () Bool)

(assert (=> b!4269977 (= e!2651092 (and (inv!62336 (left!35112 (left!35112 (c!726265 x!739901)))) tp!1307873 (inv!62336 (right!35442 (left!35112 (c!726265 x!739901)))) tp!1307874))))

(declare-fun b!4269978 () Bool)

(assert (=> b!4269978 (= e!2651092 (inv!62342 (xs!17580 (left!35112 (c!726265 x!739901)))))))

(assert (=> b!4269738 (= tp!1307865 (and (inv!62336 (left!35112 (c!726265 x!739901))) e!2651092))))

(assert (= (and b!4269738 (is-Node!14274 (left!35112 (c!726265 x!739901)))) b!4269977))

(assert (= (and b!4269738 (is-Leaf!22067 (left!35112 (c!726265 x!739901)))) b!4269978))

(declare-fun m!4863071 () Bool)

(assert (=> b!4269977 m!4863071))

(declare-fun m!4863073 () Bool)

(assert (=> b!4269977 m!4863073))

(declare-fun m!4863075 () Bool)

(assert (=> b!4269978 m!4863075))

(assert (=> b!4269738 m!4862637))

(declare-fun tp!1307875 () Bool)

(declare-fun tp!1307876 () Bool)

(declare-fun e!2651094 () Bool)

(declare-fun b!4269979 () Bool)

(assert (=> b!4269979 (= e!2651094 (and (inv!62336 (left!35112 (right!35442 (c!726265 x!739901)))) tp!1307875 (inv!62336 (right!35442 (right!35442 (c!726265 x!739901)))) tp!1307876))))

(declare-fun b!4269980 () Bool)

(assert (=> b!4269980 (= e!2651094 (inv!62342 (xs!17580 (right!35442 (c!726265 x!739901)))))))

(assert (=> b!4269738 (= tp!1307866 (and (inv!62336 (right!35442 (c!726265 x!739901))) e!2651094))))

(assert (= (and b!4269738 (is-Node!14274 (right!35442 (c!726265 x!739901)))) b!4269979))

(assert (= (and b!4269738 (is-Leaf!22067 (right!35442 (c!726265 x!739901)))) b!4269980))

(declare-fun m!4863077 () Bool)

(assert (=> b!4269979 m!4863077))

(declare-fun m!4863079 () Bool)

(assert (=> b!4269979 m!4863079))

(declare-fun m!4863081 () Bool)

(assert (=> b!4269980 m!4863081))

(assert (=> b!4269738 m!4862639))

(push 1)

(assert (not b!4269788))

(assert (not b!4269980))

(assert (not d!1259219))

(assert (not b!4269789))

(assert (not d!1259243))

(assert (not d!1259229))

(assert (not b!4269934))

(assert (not d!1259227))

(assert (not b!4269874))

(assert (not b!4269974))

(assert (not d!1259237))

(assert (not b!4269957))

(assert (not b!4269738))

(assert (not d!1259265))

(assert (not b!4269913))

(assert (not d!1259255))

(assert (not b!4269886))

(assert (not bm!294114))

(assert (not b!4269794))

(assert (not b!4269899))

(assert (not b!4269889))

(assert (not b!4269884))

(assert (not b!4269903))

(assert (not b!4269973))

(assert (not b!4269909))

(assert (not b!4269931))

(assert (not b!4269970))

(assert (not b!4269977))

(assert (not b!4269940))

(assert (not b!4269823))

(assert (not b!4269975))

(assert (not b!4269954))

(assert (not b!4269905))

(assert (not d!1259251))

(assert (not b!4269888))

(assert (not d!1259235))

(assert (not b!4269908))

(assert (not b!4269976))

(assert (not b!4269808))

(assert (not d!1259279))

(assert (not d!1259241))

(assert (not b!4269882))

(assert (not b!4269979))

(assert (not b!4269951))

(assert (not b!4269809))

(assert (not b!4269932))

(assert (not b!4269803))

(assert (not b!4269912))

(assert (not d!1259249))

(assert (not d!1259281))

(assert (not bm!294115))

(assert (not b!4269945))

(assert (not b!4269819))

(assert (not b!4269813))

(assert (not b!4269812))

(assert (not b!4269972))

(assert (not d!1259233))

(assert (not d!1259247))

(assert (not b!4269971))

(assert (not b!4269875))

(assert (not b!4269898))

(assert (not b!4269942))

(assert (not b!4269947))

(assert (not b!4269893))

(assert (not b!4269895))

(assert (not b!4269949))

(assert (not b!4269952))

(assert (not b!4269793))

(assert (not b!4269804))

(assert (not b!4269978))

(assert (not b!4269798))

(assert (not d!1259263))

(assert (not b!4269919))

(assert (not b!4269930))

(assert (not b!4269928))

(assert (not b!4269801))

(assert (not d!1259245))

(assert (not d!1259231))

(assert (not b!4269797))

(assert (not b!4269938))

(assert (not b!4269955))

(assert (not b!4269821))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!12608 () Bool)

(assert start!12608)

(assert (=> start!12608 true))

(declare-fun b!124588 () Bool)

(declare-fun e!71658 () Bool)

(declare-datatypes ((List!2038 0))(
  ( (Nil!2032) (Cons!2032 (h!7429 (_ BitVec 16)) (t!22517 List!2038)) )
))
(declare-datatypes ((IArray!1125 0))(
  ( (IArray!1126 (innerList!620 List!2038)) )
))
(declare-datatypes ((Conc!562 0))(
  ( (Node!562 (left!1605 Conc!562) (right!1935 Conc!562) (csize!1354 Int) (cheight!773 Int)) (Leaf!988 (xs!3157 IArray!1125) (csize!1355 Int)) (Empty!562) )
))
(declare-datatypes ((BalanceConc!1128 0))(
  ( (BalanceConc!1129 (c!27474 Conc!562)) )
))
(declare-fun x!33051 () BalanceConc!1128)

(declare-fun tp!68232 () Bool)

(declare-fun inv!2568 (Conc!562) Bool)

(assert (=> b!124588 (= e!71658 (and (inv!2568 (c!27474 x!33051)) tp!68232))))

(declare-datatypes ((DedentValueInjection!4 0))(
  ( (DedentValueInjection!5) )
))
(declare-fun thiss!4219 () DedentValueInjection!4)

(declare-fun inst!146 () Bool)

(declare-fun inv!2569 (BalanceConc!1128) Bool)

(declare-fun list!772 (BalanceConc!1128) List!2038)

(declare-datatypes ((TokenValue!384 0))(
  ( (FloatLiteralValue!768 (text!3133 List!2038)) (TokenValueExt!383 (__x!2215 Int)) (Broken!1920 (value!14331 List!2038)) (Object!389) (End!384) (Def!384) (Underscore!384) (Match!384) (Else!384) (Error!384) (Case!384) (If!384) (Extends!384) (Abstract!384) (Class!384) (Val!384) (DelimiterValue!768 (del!444 List!2038)) (KeywordValue!390 (value!14332 List!2038)) (CommentValue!768 (value!14333 List!2038)) (WhitespaceValue!768 (value!14334 List!2038)) (IndentationValue!384 (value!14335 List!2038)) (String!2645) (Int32!384) (Broken!1921 (value!14336 List!2038)) (Boolean!385) (Unit!1591) (OperatorValue!387 (op!444 List!2038)) (IdentifierValue!768 (value!14337 List!2038)) (IdentifierValue!769 (value!14338 List!2038)) (WhitespaceValue!769 (value!14339 List!2038)) (True!768) (False!768) (Broken!1922 (value!14340 List!2038)) (Broken!1923 (value!14341 List!2038)) (True!769) (RightBrace!384) (RightBracket!384) (Colon!384) (Null!384) (Comma!384) (LeftBracket!384) (False!769) (LeftBrace!384) (ImaginaryLiteralValue!384 (text!3134 List!2038)) (StringLiteralValue!1152 (value!14342 List!2038)) (EOFValue!384 (value!14343 List!2038)) (IdentValue!384 (value!14344 List!2038)) (DelimiterValue!769 (value!14345 List!2038)) (DedentValue!384 (value!14346 List!2038)) (NewLineValue!384 (value!14347 List!2038)) (IntegerValue!1152 (value!14348 (_ BitVec 32)) (text!3135 List!2038)) (IntegerValue!1153 (value!14349 Int) (text!3136 List!2038)) (Times!384) (Or!384) (Equal!384) (Minus!384) (Broken!1924 (value!14350 List!2038)) (And!384) (Div!384) (LessEqual!384) (Mod!384) (Concat!948) (Not!384) (Plus!384) (SpaceValue!384 (value!14351 List!2038)) (IntegerValue!1154 (value!14352 Int) (text!3137 List!2038)) (StringLiteralValue!1153 (text!3138 List!2038)) (FloatLiteralValue!769 (text!3139 List!2038)) (BytesLiteralValue!384 (value!14353 List!2038)) (CommentValue!769 (value!14354 List!2038)) (StringLiteralValue!1154 (value!14355 List!2038)) (ErrorTokenValue!384 (msg!445 List!2038)) )
))
(declare-fun toCharacters!15 (DedentValueInjection!4 TokenValue!384) BalanceConc!1128)

(declare-fun toValue!22 (DedentValueInjection!4 BalanceConc!1128) TokenValue!384)

(assert (=> start!12608 (= inst!146 (=> (and (inv!2569 x!33051) e!71658) (= (list!772 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33051))) (list!772 x!33051))))))

(assert (= start!12608 b!124588))

(declare-fun m!110193 () Bool)

(assert (=> b!124588 m!110193))

(declare-fun m!110195 () Bool)

(assert (=> start!12608 m!110195))

(declare-fun m!110197 () Bool)

(assert (=> start!12608 m!110197))

(declare-fun m!110199 () Bool)

(assert (=> start!12608 m!110199))

(declare-fun m!110201 () Bool)

(assert (=> start!12608 m!110201))

(assert (=> start!12608 m!110199))

(declare-fun m!110203 () Bool)

(assert (=> start!12608 m!110203))

(assert (=> start!12608 m!110197))

(declare-fun bs!12049 () Bool)

(declare-fun neg-inst!146 () Bool)

(declare-fun s!16853 () Bool)

(assert (= bs!12049 (and neg-inst!146 s!16853)))

(assert (=> bs!12049 (=> true (= (list!772 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33051))) (list!772 x!33051)))))

(assert (=> m!110195 m!110197))

(assert (=> m!110195 m!110199))

(assert (=> m!110195 m!110203))

(assert (=> m!110195 s!16853))

(assert (=> m!110197 s!16853))

(declare-fun bs!12050 () Bool)

(assert (= bs!12050 (and neg-inst!146 start!12608)))

(assert (=> bs!12050 (= true inst!146)))

(declare-fun lambda!3046 () Int)

(declare-fun Forall!99 (Int) Bool)

(assert (=> start!12608 (= (Forall!99 lambda!3046) inst!146)))

(assert (=> start!12608 (not (Forall!99 lambda!3046))))

(assert (=> start!12608 true))

(assert (= neg-inst!146 inst!146))

(declare-fun m!110205 () Bool)

(assert (=> start!12608 m!110205))

(assert (=> start!12608 m!110205))

(push 1)

(assert (not bs!12049))

(assert (not start!12608))

(assert (not b!124588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!29488 () Bool)

(declare-fun list!774 (Conc!562) List!2038)

(assert (=> d!29488 (= (list!772 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33051))) (list!774 (c!27474 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33051)))))))

(declare-fun bs!12053 () Bool)

(assert (= bs!12053 d!29488))

(declare-fun m!110221 () Bool)

(assert (=> bs!12053 m!110221))

(assert (=> bs!12049 d!29488))

(declare-fun d!29490 () Bool)

(declare-fun c!27479 () Bool)

(assert (=> d!29490 (= c!27479 (is-DedentValue!384 (toValue!22 thiss!4219 x!33051)))))

(declare-fun e!71664 () BalanceConc!1128)

(assert (=> d!29490 (= (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33051)) e!71664)))

(declare-fun b!124598 () Bool)

(declare-fun seqFromList!216 (List!2038) BalanceConc!1128)

(assert (=> b!124598 (= e!71664 (seqFromList!216 (value!14346 (toValue!22 thiss!4219 x!33051))))))

(declare-fun b!124599 () Bool)

(assert (=> b!124599 (= e!71664 (BalanceConc!1129 Empty!562))))

(assert (= (and d!29490 c!27479) b!124598))

(assert (= (and d!29490 (not c!27479)) b!124599))

(declare-fun m!110223 () Bool)

(assert (=> b!124598 m!110223))

(assert (=> bs!12049 d!29490))

(declare-fun d!29492 () Bool)

(declare-fun efficientList!49 (BalanceConc!1128) List!2038)

(assert (=> d!29492 (= (toValue!22 thiss!4219 x!33051) (DedentValue!384 (efficientList!49 x!33051)))))

(declare-fun bs!12054 () Bool)

(assert (= bs!12054 d!29492))

(declare-fun m!110225 () Bool)

(assert (=> bs!12054 m!110225))

(assert (=> bs!12049 d!29492))

(declare-fun d!29496 () Bool)

(assert (=> d!29496 (= (list!772 x!33051) (list!774 (c!27474 x!33051)))))

(declare-fun bs!12055 () Bool)

(assert (= bs!12055 d!29496))

(declare-fun m!110227 () Bool)

(assert (=> bs!12055 m!110227))

(assert (=> bs!12049 d!29496))

(push 1)

(assert (not d!29488))

(assert (not b!124598))

(assert (not d!29496))

(assert (not d!29492))

(assert (not b!124588))

(assert (not start!12608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!124615 () Bool)

(declare-fun e!71672 () List!2038)

(declare-fun e!71673 () List!2038)

(assert (=> b!124615 (= e!71672 e!71673)))

(declare-fun c!27489 () Bool)

(assert (=> b!124615 (= c!27489 (is-Leaf!988 (c!27474 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33051)))))))

(declare-fun d!29504 () Bool)

(declare-fun c!27488 () Bool)

(assert (=> d!29504 (= c!27488 (is-Empty!562 (c!27474 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33051)))))))

(assert (=> d!29504 (= (list!774 (c!27474 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33051)))) e!71672)))

(declare-fun b!124614 () Bool)

(assert (=> b!124614 (= e!71672 Nil!2032)))

(declare-fun b!124616 () Bool)

(declare-fun list!776 (IArray!1125) List!2038)

(assert (=> b!124616 (= e!71673 (list!776 (xs!3157 (c!27474 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33051))))))))

(declare-fun b!124617 () Bool)

(declare-fun ++!388 (List!2038 List!2038) List!2038)

(assert (=> b!124617 (= e!71673 (++!388 (list!774 (left!1605 (c!27474 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33051))))) (list!774 (right!1935 (c!27474 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33051)))))))))

(assert (= (and d!29504 c!27488) b!124614))

(assert (= (and d!29504 (not c!27488)) b!124615))

(assert (= (and b!124615 c!27489) b!124616))

(assert (= (and b!124615 (not c!27489)) b!124617))

(declare-fun m!110237 () Bool)

(assert (=> b!124616 m!110237))

(declare-fun m!110239 () Bool)

(assert (=> b!124617 m!110239))

(declare-fun m!110241 () Bool)

(assert (=> b!124617 m!110241))

(assert (=> b!124617 m!110239))

(assert (=> b!124617 m!110241))

(declare-fun m!110243 () Bool)

(assert (=> b!124617 m!110243))

(assert (=> d!29488 d!29504))

(declare-fun d!29506 () Bool)

(declare-fun lt!37763 () List!2038)

(assert (=> d!29506 (= lt!37763 (list!772 x!33051))))

(declare-fun efficientList!51 (Conc!562 List!2038) List!2038)

(declare-fun efficientList$default$2!16 (Conc!562) List!2038)

(assert (=> d!29506 (= lt!37763 (efficientList!51 (c!27474 x!33051) (efficientList$default$2!16 (c!27474 x!33051))))))

(assert (=> d!29506 (= (efficientList!49 x!33051) lt!37763)))

(declare-fun bs!12059 () Bool)

(assert (= bs!12059 d!29506))

(assert (=> bs!12059 m!110195))

(declare-fun m!110245 () Bool)

(assert (=> bs!12059 m!110245))

(assert (=> bs!12059 m!110245))

(declare-fun m!110247 () Bool)

(assert (=> bs!12059 m!110247))

(assert (=> d!29492 d!29506))

(declare-fun b!124619 () Bool)

(declare-fun e!71674 () List!2038)

(declare-fun e!71675 () List!2038)

(assert (=> b!124619 (= e!71674 e!71675)))

(declare-fun c!27491 () Bool)

(assert (=> b!124619 (= c!27491 (is-Leaf!988 (c!27474 x!33051)))))

(declare-fun d!29508 () Bool)

(declare-fun c!27490 () Bool)

(assert (=> d!29508 (= c!27490 (is-Empty!562 (c!27474 x!33051)))))

(assert (=> d!29508 (= (list!774 (c!27474 x!33051)) e!71674)))

(declare-fun b!124618 () Bool)

(assert (=> b!124618 (= e!71674 Nil!2032)))

(declare-fun b!124620 () Bool)

(assert (=> b!124620 (= e!71675 (list!776 (xs!3157 (c!27474 x!33051))))))

(declare-fun b!124621 () Bool)

(assert (=> b!124621 (= e!71675 (++!388 (list!774 (left!1605 (c!27474 x!33051))) (list!774 (right!1935 (c!27474 x!33051)))))))

(assert (= (and d!29508 c!27490) b!124618))

(assert (= (and d!29508 (not c!27490)) b!124619))

(assert (= (and b!124619 c!27491) b!124620))

(assert (= (and b!124619 (not c!27491)) b!124621))

(declare-fun m!110249 () Bool)

(assert (=> b!124620 m!110249))

(declare-fun m!110251 () Bool)

(assert (=> b!124621 m!110251))

(declare-fun m!110253 () Bool)

(assert (=> b!124621 m!110253))

(assert (=> b!124621 m!110251))

(assert (=> b!124621 m!110253))

(declare-fun m!110255 () Bool)

(assert (=> b!124621 m!110255))

(assert (=> d!29496 d!29508))

(push 1)

(assert (not d!29506))

(assert (not b!124620))

(assert (not b!124616))

(assert (not b!124598))

(assert (not b!124621))

(assert (not b!124617))

(assert (not b!124588))

(assert (not start!12608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!29516 () Bool)

(declare-fun fromListB!99 (List!2038) BalanceConc!1128)

(assert (=> d!29516 (= (seqFromList!216 (value!14346 (toValue!22 thiss!4219 x!33051))) (fromListB!99 (value!14346 (toValue!22 thiss!4219 x!33051))))))

(declare-fun bs!12061 () Bool)

(assert (= bs!12061 d!29516))

(declare-fun m!110277 () Bool)

(assert (=> bs!12061 m!110277))

(assert (=> b!124598 d!29516))

(assert (=> d!29506 d!29496))

(declare-fun b!124650 () Bool)

(declare-datatypes ((Unit!1593 0))(
  ( (Unit!1594) )
))
(declare-fun lt!37779 () Unit!1593)

(declare-fun lt!37778 () Unit!1593)

(assert (=> b!124650 (= lt!37779 lt!37778)))

(declare-fun lt!37781 () List!2038)

(declare-fun lt!37780 () List!2038)

(declare-fun call!5410 () List!2038)

(assert (=> b!124650 (= (++!388 (++!388 lt!37781 lt!37780) (efficientList$default$2!16 (c!27474 x!33051))) (++!388 lt!37781 call!5410))))

(declare-fun lemmaConcatAssociativity!116 (List!2038 List!2038 List!2038) Unit!1593)

(assert (=> b!124650 (= lt!37778 (lemmaConcatAssociativity!116 lt!37781 lt!37780 (efficientList$default$2!16 (c!27474 x!33051))))))

(assert (=> b!124650 (= lt!37780 (list!774 (right!1935 (c!27474 x!33051))))))

(assert (=> b!124650 (= lt!37781 (list!774 (left!1605 (c!27474 x!33051))))))

(declare-fun e!71692 () List!2038)

(assert (=> b!124650 (= e!71692 (efficientList!51 (left!1605 (c!27474 x!33051)) (efficientList!51 (right!1935 (c!27474 x!33051)) (efficientList$default$2!16 (c!27474 x!33051)))))))

(declare-fun b!124651 () Bool)

(declare-fun e!71690 () List!2038)

(assert (=> b!124651 (= e!71690 (efficientList$default$2!16 (c!27474 x!33051)))))

(declare-fun d!29518 () Bool)

(declare-fun lt!37777 () List!2038)

(assert (=> d!29518 (= lt!37777 (++!388 (list!774 (c!27474 x!33051)) (efficientList$default$2!16 (c!27474 x!33051))))))

(assert (=> d!29518 (= lt!37777 e!71690)))

(declare-fun c!27508 () Bool)

(assert (=> d!29518 (= c!27508 (is-Empty!562 (c!27474 x!33051)))))

(assert (=> d!29518 (= (efficientList!51 (c!27474 x!33051) (efficientList$default$2!16 (c!27474 x!33051))) lt!37777)))

(declare-fun bm!5405 () Bool)

(declare-fun c!27507 () Bool)

(declare-fun c!27506 () Bool)

(assert (=> bm!5405 (= c!27507 c!27506)))

(declare-fun e!71691 () List!2038)

(assert (=> bm!5405 (= call!5410 (++!388 e!71691 (efficientList$default$2!16 (c!27474 x!33051))))))

(declare-fun b!124652 () Bool)

(declare-fun efficientList!53 (IArray!1125) List!2038)

(assert (=> b!124652 (= e!71691 (efficientList!53 (xs!3157 (c!27474 x!33051))))))

(declare-fun b!124653 () Bool)

(assert (=> b!124653 (= e!71691 lt!37780)))

(declare-fun b!124654 () Bool)

(assert (=> b!124654 (= e!71692 call!5410)))

(declare-fun b!124655 () Bool)

(assert (=> b!124655 (= e!71690 e!71692)))

(assert (=> b!124655 (= c!27506 (is-Leaf!988 (c!27474 x!33051)))))

(assert (= (and d!29518 c!27508) b!124651))

(assert (= (and d!29518 (not c!27508)) b!124655))

(assert (= (and b!124655 c!27506) b!124654))

(assert (= (and b!124655 (not c!27506)) b!124650))

(assert (= (or b!124654 b!124650) bm!5405))

(assert (= (and bm!5405 c!27507) b!124652))

(assert (= (and bm!5405 (not c!27507)) b!124653))

(declare-fun m!110279 () Bool)

(assert (=> b!124650 m!110279))

(assert (=> b!124650 m!110245))

(declare-fun m!110281 () Bool)

(assert (=> b!124650 m!110281))

(assert (=> b!124650 m!110251))

(declare-fun m!110283 () Bool)

(assert (=> b!124650 m!110283))

(declare-fun m!110285 () Bool)

(assert (=> b!124650 m!110285))

(assert (=> b!124650 m!110279))

(assert (=> b!124650 m!110245))

(declare-fun m!110287 () Bool)

(assert (=> b!124650 m!110287))

(declare-fun m!110289 () Bool)

(assert (=> b!124650 m!110289))

(assert (=> b!124650 m!110253))

(assert (=> b!124650 m!110245))

(assert (=> b!124650 m!110283))

(assert (=> d!29518 m!110227))

(assert (=> d!29518 m!110227))

(assert (=> d!29518 m!110245))

(declare-fun m!110291 () Bool)

(assert (=> d!29518 m!110291))

(assert (=> bm!5405 m!110245))

(declare-fun m!110293 () Bool)

(assert (=> bm!5405 m!110293))

(declare-fun m!110295 () Bool)

(assert (=> b!124652 m!110295))

(assert (=> d!29506 d!29518))

(declare-fun d!29520 () Bool)

(assert (=> d!29520 (= (efficientList$default$2!16 (c!27474 x!33051)) Nil!2032)))

(assert (=> d!29506 d!29520))

(declare-fun d!29522 () Bool)

(declare-fun choose!1618 (Int) Bool)

(assert (=> d!29522 (= (Forall!99 lambda!3046) (choose!1618 lambda!3046))))

(declare-fun bs!12062 () Bool)

(assert (= bs!12062 d!29522))

(declare-fun m!110297 () Bool)

(assert (=> bs!12062 m!110297))

(assert (=> start!12608 d!29522))

(assert (=> start!12608 d!29496))

(assert (=> start!12608 d!29490))

(assert (=> start!12608 d!29492))

(declare-fun d!29524 () Bool)

(declare-fun isBalanced!162 (Conc!562) Bool)

(assert (=> d!29524 (= (inv!2569 x!33051) (isBalanced!162 (c!27474 x!33051)))))

(declare-fun bs!12063 () Bool)

(assert (= bs!12063 d!29524))

(declare-fun m!110299 () Bool)

(assert (=> bs!12063 m!110299))

(assert (=> start!12608 d!29524))

(assert (=> start!12608 d!29488))

(declare-fun d!29526 () Bool)

(declare-fun c!27511 () Bool)

(assert (=> d!29526 (= c!27511 (is-Node!562 (c!27474 x!33051)))))

(declare-fun e!71697 () Bool)

(assert (=> d!29526 (= (inv!2568 (c!27474 x!33051)) e!71697)))

(declare-fun b!124662 () Bool)

(declare-fun inv!2572 (Conc!562) Bool)

(assert (=> b!124662 (= e!71697 (inv!2572 (c!27474 x!33051)))))

(declare-fun b!124663 () Bool)

(declare-fun e!71698 () Bool)

(assert (=> b!124663 (= e!71697 e!71698)))

(declare-fun res!57980 () Bool)

(assert (=> b!124663 (= res!57980 (not (is-Leaf!988 (c!27474 x!33051))))))

(assert (=> b!124663 (=> res!57980 e!71698)))

(declare-fun b!124664 () Bool)

(declare-fun inv!2573 (Conc!562) Bool)

(assert (=> b!124664 (= e!71698 (inv!2573 (c!27474 x!33051)))))

(assert (= (and d!29526 c!27511) b!124662))

(assert (= (and d!29526 (not c!27511)) b!124663))

(assert (= (and b!124663 (not res!57980)) b!124664))

(declare-fun m!110301 () Bool)

(assert (=> b!124662 m!110301))

(declare-fun m!110303 () Bool)

(assert (=> b!124664 m!110303))

(assert (=> b!124588 d!29526))

(declare-fun tp!68241 () Bool)

(declare-fun b!124671 () Bool)

(declare-fun e!71703 () Bool)

(declare-fun tp!68240 () Bool)

(assert (=> b!124671 (= e!71703 (and (inv!2568 (left!1605 (c!27474 x!33051))) tp!68240 (inv!2568 (right!1935 (c!27474 x!33051))) tp!68241))))

(declare-fun b!124672 () Bool)

(declare-fun inv!2574 (IArray!1125) Bool)

(assert (=> b!124672 (= e!71703 (inv!2574 (xs!3157 (c!27474 x!33051))))))

(assert (=> b!124588 (= tp!68232 (and (inv!2568 (c!27474 x!33051)) e!71703))))

(assert (= (and b!124588 (is-Node!562 (c!27474 x!33051))) b!124671))

(assert (= (and b!124588 (is-Leaf!988 (c!27474 x!33051))) b!124672))

(declare-fun m!110305 () Bool)

(assert (=> b!124671 m!110305))

(declare-fun m!110307 () Bool)

(assert (=> b!124671 m!110307))

(declare-fun m!110309 () Bool)

(assert (=> b!124672 m!110309))

(assert (=> b!124588 m!110193))

(push 1)

(assert (not d!29516))

(assert (not bm!5405))

(assert (not b!124620))

(assert (not b!124616))

(assert (not b!124664))

(assert (not b!124662))

(assert (not d!29518))

(assert (not d!29524))

(assert (not b!124672))

(assert (not b!124617))

(assert (not b!124588))

(assert (not d!29522))

(assert (not b!124650))

(assert (not b!124652))

(assert (not b!124671))

(assert (not b!124621))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!29532 () Bool)

(declare-fun e!71716 () Bool)

(assert (=> d!29532 e!71716))

(declare-fun res!57983 () Bool)

(assert (=> d!29532 (=> (not res!57983) (not e!71716))))

(declare-fun lt!37799 () BalanceConc!1128)

(assert (=> d!29532 (= res!57983 (= (list!772 lt!37799) (value!14346 (toValue!22 thiss!4219 x!33051))))))

(declare-fun fromList!67 (List!2038) Conc!562)

(assert (=> d!29532 (= lt!37799 (BalanceConc!1129 (fromList!67 (value!14346 (toValue!22 thiss!4219 x!33051)))))))

(assert (=> d!29532 (= (fromListB!99 (value!14346 (toValue!22 thiss!4219 x!33051))) lt!37799)))

(declare-fun b!124693 () Bool)

(assert (=> b!124693 (= e!71716 (isBalanced!162 (fromList!67 (value!14346 (toValue!22 thiss!4219 x!33051)))))))

(assert (= (and d!29532 res!57983) b!124693))

(declare-fun m!110329 () Bool)

(assert (=> d!29532 m!110329))

(declare-fun m!110331 () Bool)

(assert (=> d!29532 m!110331))

(assert (=> b!124693 m!110331))

(assert (=> b!124693 m!110331))

(declare-fun m!110333 () Bool)

(assert (=> b!124693 m!110333))

(assert (=> d!29516 d!29532))

(declare-fun b!124703 () Bool)

(declare-fun e!71722 () List!2038)

(assert (=> b!124703 (= e!71722 (Cons!2032 (h!7429 (list!774 (c!27474 x!33051))) (++!388 (t!22517 (list!774 (c!27474 x!33051))) (efficientList$default$2!16 (c!27474 x!33051)))))))

(declare-fun d!29536 () Bool)

(declare-fun e!71721 () Bool)

(assert (=> d!29536 e!71721))

(declare-fun res!57989 () Bool)

(assert (=> d!29536 (=> (not res!57989) (not e!71721))))

(declare-fun lt!37802 () List!2038)

(declare-fun content!231 (List!2038) (Set (_ BitVec 16)))

(assert (=> d!29536 (= res!57989 (= (content!231 lt!37802) (set.union (content!231 (list!774 (c!27474 x!33051))) (content!231 (efficientList$default$2!16 (c!27474 x!33051))))))))

(assert (=> d!29536 (= lt!37802 e!71722)))

(declare-fun c!27524 () Bool)

(assert (=> d!29536 (= c!27524 (is-Nil!2032 (list!774 (c!27474 x!33051))))))

(assert (=> d!29536 (= (++!388 (list!774 (c!27474 x!33051)) (efficientList$default$2!16 (c!27474 x!33051))) lt!37802)))

(declare-fun b!124702 () Bool)

(assert (=> b!124702 (= e!71722 (efficientList$default$2!16 (c!27474 x!33051)))))

(declare-fun b!124704 () Bool)

(declare-fun res!57988 () Bool)

(assert (=> b!124704 (=> (not res!57988) (not e!71721))))

(declare-fun size!1901 (List!2038) Int)

(assert (=> b!124704 (= res!57988 (= (size!1901 lt!37802) (+ (size!1901 (list!774 (c!27474 x!33051))) (size!1901 (efficientList$default$2!16 (c!27474 x!33051))))))))

(declare-fun b!124705 () Bool)

(assert (=> b!124705 (= e!71721 (or (not (= (efficientList$default$2!16 (c!27474 x!33051)) Nil!2032)) (= lt!37802 (list!774 (c!27474 x!33051)))))))

(assert (= (and d!29536 c!27524) b!124702))

(assert (= (and d!29536 (not c!27524)) b!124703))

(assert (= (and d!29536 res!57989) b!124704))

(assert (= (and b!124704 res!57988) b!124705))

(assert (=> b!124703 m!110245))

(declare-fun m!110337 () Bool)

(assert (=> b!124703 m!110337))

(declare-fun m!110339 () Bool)

(assert (=> d!29536 m!110339))

(assert (=> d!29536 m!110227))

(declare-fun m!110341 () Bool)

(assert (=> d!29536 m!110341))

(assert (=> d!29536 m!110245))

(declare-fun m!110343 () Bool)

(assert (=> d!29536 m!110343))

(declare-fun m!110345 () Bool)

(assert (=> b!124704 m!110345))

(assert (=> b!124704 m!110227))

(declare-fun m!110347 () Bool)

(assert (=> b!124704 m!110347))

(assert (=> b!124704 m!110245))

(declare-fun m!110349 () Bool)

(assert (=> b!124704 m!110349))

(assert (=> d!29518 d!29536))

(assert (=> d!29518 d!29508))

(push 1)

(assert (not b!124703))

(assert (not d!29536))

(assert (not b!124616))

(assert (not b!124664))

(assert (not b!124662))

(assert (not d!29524))

(assert (not b!124672))

(assert (not b!124693))

(assert (not b!124617))

(assert (not b!124588))

(assert (not d!29522))

(assert (not b!124650))

(assert (not b!124652))

(assert (not bm!5405))

(assert (not b!124704))

(assert (not b!124620))

(assert (not d!29532))

(assert (not b!124671))

(assert (not b!124621))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


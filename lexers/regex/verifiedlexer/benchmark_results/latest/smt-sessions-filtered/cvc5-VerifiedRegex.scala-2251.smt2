; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!110556 () Bool)

(assert start!110556)

(assert (=> start!110556 true))

(declare-fun b!1255460 () Bool)

(declare-fun e!798951 () Bool)

(declare-datatypes ((List!12599 0))(
  ( (Nil!12539) (Cons!12539 (h!17940 (_ BitVec 16)) (t!115645 List!12599)) )
))
(declare-datatypes ((IArray!8221 0))(
  ( (IArray!8222 (innerList!4168 List!12599)) )
))
(declare-datatypes ((Conc!4108 0))(
  ( (Node!4108 (left!10817 Conc!4108) (right!11147 Conc!4108) (csize!8446 Int) (cheight!4319 Int)) (Leaf!6360 (xs!6819 IArray!8221) (csize!8447 Int)) (Empty!4108) )
))
(declare-datatypes ((BalanceConc!8150 0))(
  ( (BalanceConc!8151 (c!208407 Conc!4108)) )
))
(declare-fun x!243266 () BalanceConc!8150)

(declare-fun tp!370314 () Bool)

(declare-fun inv!16837 (Conc!4108) Bool)

(assert (=> b!1255460 (= e!798951 (and (inv!16837 (c!208407 x!243266)) tp!370314))))

(declare-datatypes ((OperatorValueInjection!8 0))(
  ( (OperatorValueInjection!9) )
))
(declare-fun thiss!5119 () OperatorValueInjection!8)

(declare-fun inst!854 () Bool)

(declare-fun inv!16838 (BalanceConc!8150) Bool)

(declare-fun list!4657 (BalanceConc!8150) List!12599)

(declare-datatypes ((TokenValue!2230 0))(
  ( (FloatLiteralValue!4460 (text!16055 List!12599)) (TokenValueExt!2229 (__x!8175 Int)) (Broken!11150 (value!70263 List!12599)) (Object!2289) (End!2230) (Def!2230) (Underscore!2230) (Match!2230) (Else!2230) (Error!2230) (Case!2230) (If!2230) (Extends!2230) (Abstract!2230) (Class!2230) (Val!2230) (DelimiterValue!4460 (del!2290 List!12599)) (KeywordValue!2236 (value!70264 List!12599)) (CommentValue!4460 (value!70265 List!12599)) (WhitespaceValue!4460 (value!70266 List!12599)) (IndentationValue!2230 (value!70267 List!12599)) (String!15371) (Int32!2230) (Broken!11151 (value!70268 List!12599)) (Boolean!2231) (Unit!18816) (OperatorValue!2233 (op!2290 List!12599)) (IdentifierValue!4460 (value!70269 List!12599)) (IdentifierValue!4461 (value!70270 List!12599)) (WhitespaceValue!4461 (value!70271 List!12599)) (True!4460) (False!4460) (Broken!11152 (value!70272 List!12599)) (Broken!11153 (value!70273 List!12599)) (True!4461) (RightBrace!2230) (RightBracket!2230) (Colon!2230) (Null!2230) (Comma!2230) (LeftBracket!2230) (False!4461) (LeftBrace!2230) (ImaginaryLiteralValue!2230 (text!16056 List!12599)) (StringLiteralValue!6690 (value!70274 List!12599)) (EOFValue!2230 (value!70275 List!12599)) (IdentValue!2230 (value!70276 List!12599)) (DelimiterValue!4461 (value!70277 List!12599)) (DedentValue!2230 (value!70278 List!12599)) (NewLineValue!2230 (value!70279 List!12599)) (IntegerValue!6690 (value!70280 (_ BitVec 32)) (text!16057 List!12599)) (IntegerValue!6691 (value!70281 Int) (text!16058 List!12599)) (Times!2230) (Or!2230) (Equal!2230) (Minus!2230) (Broken!11154 (value!70282 List!12599)) (And!2230) (Div!2230) (LessEqual!2230) (Mod!2230) (Concat!5704) (Not!2230) (Plus!2230) (SpaceValue!2230 (value!70283 List!12599)) (IntegerValue!6692 (value!70284 Int) (text!16059 List!12599)) (StringLiteralValue!6691 (text!16060 List!12599)) (FloatLiteralValue!4461 (text!16061 List!12599)) (BytesLiteralValue!2230 (value!70285 List!12599)) (CommentValue!4461 (value!70286 List!12599)) (StringLiteralValue!6692 (value!70287 List!12599)) (ErrorTokenValue!2230 (msg!2291 List!12599)) )
))
(declare-fun toCharacters!27 (OperatorValueInjection!8 TokenValue!2230) BalanceConc!8150)

(declare-fun toValue!34 (OperatorValueInjection!8 BalanceConc!8150) TokenValue!2230)

(assert (=> start!110556 (= inst!854 (=> (and (inv!16838 x!243266) e!798951) (= (list!4657 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243266))) (list!4657 x!243266))))))

(assert (= start!110556 b!1255460))

(declare-fun m!1413715 () Bool)

(assert (=> b!1255460 m!1413715))

(declare-fun m!1413717 () Bool)

(assert (=> start!110556 m!1413717))

(declare-fun m!1413719 () Bool)

(assert (=> start!110556 m!1413719))

(declare-fun m!1413721 () Bool)

(assert (=> start!110556 m!1413721))

(declare-fun m!1413723 () Bool)

(assert (=> start!110556 m!1413723))

(assert (=> start!110556 m!1413723))

(assert (=> start!110556 m!1413717))

(declare-fun m!1413725 () Bool)

(assert (=> start!110556 m!1413725))

(declare-fun bs!289959 () Bool)

(declare-fun neg-inst!854 () Bool)

(declare-fun s!183231 () Bool)

(assert (= bs!289959 (and neg-inst!854 s!183231)))

(assert (=> bs!289959 (=> true (= (list!4657 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243266))) (list!4657 x!243266)))))

(assert (=> m!1413723 m!1413717))

(assert (=> m!1413723 m!1413719))

(assert (=> m!1413723 m!1413721))

(assert (=> m!1413723 s!183231))

(assert (=> m!1413721 s!183231))

(declare-fun bs!289960 () Bool)

(assert (= bs!289960 (and neg-inst!854 start!110556)))

(assert (=> bs!289960 (= true inst!854)))

(declare-fun lambda!49315 () Int)

(declare-fun Forall!463 (Int) Bool)

(assert (=> start!110556 (= (Forall!463 lambda!49315) inst!854)))

(assert (=> start!110556 (not (Forall!463 lambda!49315))))

(assert (=> start!110556 true))

(assert (= neg-inst!854 inst!854))

(declare-fun m!1413727 () Bool)

(assert (=> start!110556 m!1413727))

(assert (=> start!110556 m!1413727))

(push 1)

(assert (not start!110556))

(assert (not b!1255460))

(assert (not bs!289959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!354826 () Bool)

(declare-fun list!4659 (Conc!4108) List!12599)

(assert (=> d!354826 (= (list!4657 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243266))) (list!4659 (c!208407 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243266)))))))

(declare-fun bs!289963 () Bool)

(assert (= bs!289963 d!354826))

(declare-fun m!1413743 () Bool)

(assert (=> bs!289963 m!1413743))

(assert (=> bs!289959 d!354826))

(declare-fun d!354828 () Bool)

(declare-fun c!208412 () Bool)

(assert (=> d!354828 (= c!208412 (is-OperatorValue!2233 (toValue!34 thiss!5119 x!243266)))))

(declare-fun e!798957 () BalanceConc!8150)

(assert (=> d!354828 (= (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243266)) e!798957)))

(declare-fun b!1255470 () Bool)

(declare-fun seqFromList!1574 (List!12599) BalanceConc!8150)

(assert (=> b!1255470 (= e!798957 (seqFromList!1574 (op!2290 (toValue!34 thiss!5119 x!243266))))))

(declare-fun b!1255471 () Bool)

(assert (=> b!1255471 (= e!798957 (BalanceConc!8151 Empty!4108))))

(assert (= (and d!354828 c!208412) b!1255470))

(assert (= (and d!354828 (not c!208412)) b!1255471))

(declare-fun m!1413745 () Bool)

(assert (=> b!1255470 m!1413745))

(assert (=> bs!289959 d!354828))

(declare-fun d!354832 () Bool)

(declare-fun efficientList!155 (BalanceConc!8150) List!12599)

(assert (=> d!354832 (= (toValue!34 thiss!5119 x!243266) (OperatorValue!2233 (efficientList!155 x!243266)))))

(declare-fun bs!289965 () Bool)

(assert (= bs!289965 d!354832))

(declare-fun m!1413749 () Bool)

(assert (=> bs!289965 m!1413749))

(assert (=> bs!289959 d!354832))

(declare-fun d!354836 () Bool)

(assert (=> d!354836 (= (list!4657 x!243266) (list!4659 (c!208407 x!243266)))))

(declare-fun bs!289966 () Bool)

(assert (= bs!289966 d!354836))

(declare-fun m!1413751 () Bool)

(assert (=> bs!289966 m!1413751))

(assert (=> bs!289959 d!354836))

(push 1)

(assert (not b!1255470))

(assert (not d!354836))

(assert (not b!1255460))

(assert (not start!110556))

(assert (not d!354826))

(assert (not d!354832))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1255488 () Bool)

(declare-fun e!798966 () List!12599)

(declare-fun list!4661 (IArray!8221) List!12599)

(assert (=> b!1255488 (= e!798966 (list!4661 (xs!6819 (c!208407 x!243266))))))

(declare-fun b!1255486 () Bool)

(declare-fun e!798965 () List!12599)

(assert (=> b!1255486 (= e!798965 Nil!12539)))

(declare-fun d!354842 () Bool)

(declare-fun c!208421 () Bool)

(assert (=> d!354842 (= c!208421 (is-Empty!4108 (c!208407 x!243266)))))

(assert (=> d!354842 (= (list!4659 (c!208407 x!243266)) e!798965)))

(declare-fun b!1255489 () Bool)

(declare-fun ++!3206 (List!12599 List!12599) List!12599)

(assert (=> b!1255489 (= e!798966 (++!3206 (list!4659 (left!10817 (c!208407 x!243266))) (list!4659 (right!11147 (c!208407 x!243266)))))))

(declare-fun b!1255487 () Bool)

(assert (=> b!1255487 (= e!798965 e!798966)))

(declare-fun c!208422 () Bool)

(assert (=> b!1255487 (= c!208422 (is-Leaf!6360 (c!208407 x!243266)))))

(assert (= (and d!354842 c!208421) b!1255486))

(assert (= (and d!354842 (not c!208421)) b!1255487))

(assert (= (and b!1255487 c!208422) b!1255488))

(assert (= (and b!1255487 (not c!208422)) b!1255489))

(declare-fun m!1413759 () Bool)

(assert (=> b!1255488 m!1413759))

(declare-fun m!1413761 () Bool)

(assert (=> b!1255489 m!1413761))

(declare-fun m!1413763 () Bool)

(assert (=> b!1255489 m!1413763))

(assert (=> b!1255489 m!1413761))

(assert (=> b!1255489 m!1413763))

(declare-fun m!1413765 () Bool)

(assert (=> b!1255489 m!1413765))

(assert (=> d!354836 d!354842))

(declare-fun b!1255492 () Bool)

(declare-fun e!798968 () List!12599)

(assert (=> b!1255492 (= e!798968 (list!4661 (xs!6819 (c!208407 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243266))))))))

(declare-fun b!1255490 () Bool)

(declare-fun e!798967 () List!12599)

(assert (=> b!1255490 (= e!798967 Nil!12539)))

(declare-fun d!354844 () Bool)

(declare-fun c!208423 () Bool)

(assert (=> d!354844 (= c!208423 (is-Empty!4108 (c!208407 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243266)))))))

(assert (=> d!354844 (= (list!4659 (c!208407 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243266)))) e!798967)))

(declare-fun b!1255493 () Bool)

(assert (=> b!1255493 (= e!798968 (++!3206 (list!4659 (left!10817 (c!208407 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243266))))) (list!4659 (right!11147 (c!208407 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243266)))))))))

(declare-fun b!1255491 () Bool)

(assert (=> b!1255491 (= e!798967 e!798968)))

(declare-fun c!208424 () Bool)

(assert (=> b!1255491 (= c!208424 (is-Leaf!6360 (c!208407 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243266)))))))

(assert (= (and d!354844 c!208423) b!1255490))

(assert (= (and d!354844 (not c!208423)) b!1255491))

(assert (= (and b!1255491 c!208424) b!1255492))

(assert (= (and b!1255491 (not c!208424)) b!1255493))

(declare-fun m!1413767 () Bool)

(assert (=> b!1255492 m!1413767))

(declare-fun m!1413769 () Bool)

(assert (=> b!1255493 m!1413769))

(declare-fun m!1413771 () Bool)

(assert (=> b!1255493 m!1413771))

(assert (=> b!1255493 m!1413769))

(assert (=> b!1255493 m!1413771))

(declare-fun m!1413773 () Bool)

(assert (=> b!1255493 m!1413773))

(assert (=> d!354826 d!354844))

(declare-fun d!354846 () Bool)

(declare-fun lt!420330 () List!12599)

(assert (=> d!354846 (= lt!420330 (list!4657 x!243266))))

(declare-fun efficientList!157 (Conc!4108 List!12599) List!12599)

(declare-fun efficientList$default$2!53 (Conc!4108) List!12599)

(assert (=> d!354846 (= lt!420330 (efficientList!157 (c!208407 x!243266) (efficientList$default$2!53 (c!208407 x!243266))))))

(assert (=> d!354846 (= (efficientList!155 x!243266) lt!420330)))

(declare-fun bs!289969 () Bool)

(assert (= bs!289969 d!354846))

(assert (=> bs!289969 m!1413721))

(declare-fun m!1413775 () Bool)

(assert (=> bs!289969 m!1413775))

(assert (=> bs!289969 m!1413775))

(declare-fun m!1413777 () Bool)

(assert (=> bs!289969 m!1413777))

(assert (=> d!354832 d!354846))

(push 1)

(assert (not b!1255492))

(assert (not b!1255470))

(assert (not b!1255488))

(assert (not b!1255460))

(assert (not b!1255489))

(assert (not start!110556))

(assert (not d!354846))

(assert (not b!1255493))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> start!110556 d!354832))

(declare-fun d!354854 () Bool)

(declare-fun choose!7847 (Int) Bool)

(assert (=> d!354854 (= (Forall!463 lambda!49315) (choose!7847 lambda!49315))))

(declare-fun bs!289971 () Bool)

(assert (= bs!289971 d!354854))

(declare-fun m!1413799 () Bool)

(assert (=> bs!289971 m!1413799))

(assert (=> start!110556 d!354854))

(declare-fun d!354856 () Bool)

(declare-fun isBalanced!1199 (Conc!4108) Bool)

(assert (=> d!354856 (= (inv!16838 x!243266) (isBalanced!1199 (c!208407 x!243266)))))

(declare-fun bs!289972 () Bool)

(assert (= bs!289972 d!354856))

(declare-fun m!1413801 () Bool)

(assert (=> bs!289972 m!1413801))

(assert (=> start!110556 d!354856))

(assert (=> start!110556 d!354826))

(assert (=> start!110556 d!354836))

(assert (=> start!110556 d!354828))

(declare-fun d!354858 () Bool)

(declare-fun c!208435 () Bool)

(assert (=> d!354858 (= c!208435 (is-Node!4108 (c!208407 x!243266)))))

(declare-fun e!798981 () Bool)

(assert (=> d!354858 (= (inv!16837 (c!208407 x!243266)) e!798981)))

(declare-fun b!1255516 () Bool)

(declare-fun inv!16841 (Conc!4108) Bool)

(assert (=> b!1255516 (= e!798981 (inv!16841 (c!208407 x!243266)))))

(declare-fun b!1255517 () Bool)

(declare-fun e!798982 () Bool)

(assert (=> b!1255517 (= e!798981 e!798982)))

(declare-fun res!555963 () Bool)

(assert (=> b!1255517 (= res!555963 (not (is-Leaf!6360 (c!208407 x!243266))))))

(assert (=> b!1255517 (=> res!555963 e!798982)))

(declare-fun b!1255518 () Bool)

(declare-fun inv!16842 (Conc!4108) Bool)

(assert (=> b!1255518 (= e!798982 (inv!16842 (c!208407 x!243266)))))

(assert (= (and d!354858 c!208435) b!1255516))

(assert (= (and d!354858 (not c!208435)) b!1255517))

(assert (= (and b!1255517 (not res!555963)) b!1255518))

(declare-fun m!1413803 () Bool)

(assert (=> b!1255516 m!1413803))

(declare-fun m!1413805 () Bool)

(assert (=> b!1255518 m!1413805))

(assert (=> b!1255460 d!354858))

(assert (=> d!354846 d!354836))

(declare-fun b!1255531 () Bool)

(declare-fun e!798991 () List!12599)

(declare-fun call!88070 () List!12599)

(assert (=> b!1255531 (= e!798991 call!88070)))

(declare-fun d!354860 () Bool)

(declare-fun lt!420346 () List!12599)

(assert (=> d!354860 (= lt!420346 (++!3206 (list!4659 (c!208407 x!243266)) (efficientList$default$2!53 (c!208407 x!243266))))))

(declare-fun e!798989 () List!12599)

(assert (=> d!354860 (= lt!420346 e!798989)))

(declare-fun c!208442 () Bool)

(assert (=> d!354860 (= c!208442 (is-Empty!4108 (c!208407 x!243266)))))

(assert (=> d!354860 (= (efficientList!157 (c!208407 x!243266) (efficientList$default$2!53 (c!208407 x!243266))) lt!420346)))

(declare-fun b!1255532 () Bool)

(declare-fun e!798990 () List!12599)

(declare-fun efficientList!159 (IArray!8221) List!12599)

(assert (=> b!1255532 (= e!798990 (efficientList!159 (xs!6819 (c!208407 x!243266))))))

(declare-fun b!1255533 () Bool)

(assert (=> b!1255533 (= e!798989 e!798991)))

(declare-fun c!208443 () Bool)

(assert (=> b!1255533 (= c!208443 (is-Leaf!6360 (c!208407 x!243266)))))

(declare-fun bm!88065 () Bool)

(declare-fun c!208444 () Bool)

(assert (=> bm!88065 (= c!208444 c!208443)))

(assert (=> bm!88065 (= call!88070 (++!3206 e!798990 (efficientList$default$2!53 (c!208407 x!243266))))))

(declare-fun b!1255534 () Bool)

(declare-fun lt!420348 () List!12599)

(assert (=> b!1255534 (= e!798990 lt!420348)))

(declare-fun b!1255535 () Bool)

(declare-datatypes ((Unit!18818 0))(
  ( (Unit!18819) )
))
(declare-fun lt!420345 () Unit!18818)

(declare-fun lt!420344 () Unit!18818)

(assert (=> b!1255535 (= lt!420345 lt!420344)))

(declare-fun lt!420347 () List!12599)

(assert (=> b!1255535 (= (++!3206 (++!3206 lt!420347 lt!420348) (efficientList$default$2!53 (c!208407 x!243266))) (++!3206 lt!420347 call!88070))))

(declare-fun lemmaConcatAssociativity!800 (List!12599 List!12599 List!12599) Unit!18818)

(assert (=> b!1255535 (= lt!420344 (lemmaConcatAssociativity!800 lt!420347 lt!420348 (efficientList$default$2!53 (c!208407 x!243266))))))

(assert (=> b!1255535 (= lt!420348 (list!4659 (right!11147 (c!208407 x!243266))))))

(assert (=> b!1255535 (= lt!420347 (list!4659 (left!10817 (c!208407 x!243266))))))

(assert (=> b!1255535 (= e!798991 (efficientList!157 (left!10817 (c!208407 x!243266)) (efficientList!157 (right!11147 (c!208407 x!243266)) (efficientList$default$2!53 (c!208407 x!243266)))))))

(declare-fun b!1255536 () Bool)

(assert (=> b!1255536 (= e!798989 (efficientList$default$2!53 (c!208407 x!243266)))))

(assert (= (and d!354860 c!208442) b!1255536))

(assert (= (and d!354860 (not c!208442)) b!1255533))

(assert (= (and b!1255533 c!208443) b!1255531))

(assert (= (and b!1255533 (not c!208443)) b!1255535))

(assert (= (or b!1255531 b!1255535) bm!88065))

(assert (= (and bm!88065 c!208444) b!1255532))

(assert (= (and bm!88065 (not c!208444)) b!1255534))

(assert (=> d!354860 m!1413751))

(assert (=> d!354860 m!1413751))

(assert (=> d!354860 m!1413775))

(declare-fun m!1413807 () Bool)

(assert (=> d!354860 m!1413807))

(declare-fun m!1413809 () Bool)

(assert (=> b!1255532 m!1413809))

(assert (=> bm!88065 m!1413775))

(declare-fun m!1413811 () Bool)

(assert (=> bm!88065 m!1413811))

(assert (=> b!1255535 m!1413775))

(declare-fun m!1413813 () Bool)

(assert (=> b!1255535 m!1413813))

(assert (=> b!1255535 m!1413763))

(declare-fun m!1413815 () Bool)

(assert (=> b!1255535 m!1413815))

(declare-fun m!1413817 () Bool)

(assert (=> b!1255535 m!1413817))

(declare-fun m!1413819 () Bool)

(assert (=> b!1255535 m!1413819))

(assert (=> b!1255535 m!1413761))

(assert (=> b!1255535 m!1413775))

(assert (=> b!1255535 m!1413817))

(assert (=> b!1255535 m!1413815))

(assert (=> b!1255535 m!1413775))

(declare-fun m!1413821 () Bool)

(assert (=> b!1255535 m!1413821))

(declare-fun m!1413823 () Bool)

(assert (=> b!1255535 m!1413823))

(assert (=> d!354846 d!354860))

(declare-fun d!354862 () Bool)

(assert (=> d!354862 (= (efficientList$default$2!53 (c!208407 x!243266)) Nil!12539)))

(assert (=> d!354846 d!354862))

(declare-fun d!354864 () Bool)

(declare-fun fromListB!697 (List!12599) BalanceConc!8150)

(assert (=> d!354864 (= (seqFromList!1574 (op!2290 (toValue!34 thiss!5119 x!243266))) (fromListB!697 (op!2290 (toValue!34 thiss!5119 x!243266))))))

(declare-fun bs!289973 () Bool)

(assert (= bs!289973 d!354864))

(declare-fun m!1413825 () Bool)

(assert (=> bs!289973 m!1413825))

(assert (=> b!1255470 d!354864))

(declare-fun b!1255543 () Bool)

(declare-fun tp!370323 () Bool)

(declare-fun e!798996 () Bool)

(declare-fun tp!370322 () Bool)

(assert (=> b!1255543 (= e!798996 (and (inv!16837 (left!10817 (c!208407 x!243266))) tp!370322 (inv!16837 (right!11147 (c!208407 x!243266))) tp!370323))))

(declare-fun b!1255544 () Bool)

(declare-fun inv!16843 (IArray!8221) Bool)

(assert (=> b!1255544 (= e!798996 (inv!16843 (xs!6819 (c!208407 x!243266))))))

(assert (=> b!1255460 (= tp!370314 (and (inv!16837 (c!208407 x!243266)) e!798996))))

(assert (= (and b!1255460 (is-Node!4108 (c!208407 x!243266))) b!1255543))

(assert (= (and b!1255460 (is-Leaf!6360 (c!208407 x!243266))) b!1255544))

(declare-fun m!1413827 () Bool)

(assert (=> b!1255543 m!1413827))

(declare-fun m!1413829 () Bool)

(assert (=> b!1255543 m!1413829))

(declare-fun m!1413831 () Bool)

(assert (=> b!1255544 m!1413831))

(assert (=> b!1255460 m!1413715))

(push 1)

(assert (not b!1255543))

(assert (not d!354856))

(assert (not b!1255544))

(assert (not b!1255492))

(assert (not bm!88065))

(assert (not b!1255460))

(assert (not d!354854))

(assert (not b!1255489))

(assert (not b!1255532))

(assert (not b!1255518))

(assert (not d!354860))

(assert (not b!1255493))

(assert (not b!1255488))

(assert (not d!354864))

(assert (not b!1255535))

(assert (not b!1255516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!354878 () Bool)

(declare-fun e!799021 () Bool)

(assert (=> d!354878 e!799021))

(declare-fun res!555969 () Bool)

(assert (=> d!354878 (=> (not res!555969) (not e!799021))))

(declare-fun lt!420366 () BalanceConc!8150)

(assert (=> d!354878 (= res!555969 (= (list!4657 lt!420366) (op!2290 (toValue!34 thiss!5119 x!243266))))))

(declare-fun fromList!331 (List!12599) Conc!4108)

(assert (=> d!354878 (= lt!420366 (BalanceConc!8151 (fromList!331 (op!2290 (toValue!34 thiss!5119 x!243266)))))))

(assert (=> d!354878 (= (fromListB!697 (op!2290 (toValue!34 thiss!5119 x!243266))) lt!420366)))

(declare-fun b!1255582 () Bool)

(assert (=> b!1255582 (= e!799021 (isBalanced!1199 (fromList!331 (op!2290 (toValue!34 thiss!5119 x!243266)))))))

(assert (= (and d!354878 res!555969) b!1255582))

(declare-fun m!1413867 () Bool)

(assert (=> d!354878 m!1413867))

(declare-fun m!1413869 () Bool)

(assert (=> d!354878 m!1413869))

(assert (=> b!1255582 m!1413869))

(assert (=> b!1255582 m!1413869))

(declare-fun m!1413871 () Bool)

(assert (=> b!1255582 m!1413871))

(assert (=> d!354864 d!354878))

(declare-fun d!354880 () Bool)

(declare-fun e!799027 () Bool)

(assert (=> d!354880 e!799027))

(declare-fun res!555974 () Bool)

(assert (=> d!354880 (=> (not res!555974) (not e!799027))))

(declare-fun lt!420369 () List!12599)

(declare-fun content!1797 (List!12599) (Set (_ BitVec 16)))

(assert (=> d!354880 (= res!555974 (= (content!1797 lt!420369) (set.union (content!1797 (list!4659 (c!208407 x!243266))) (content!1797 (efficientList$default$2!53 (c!208407 x!243266))))))))

(declare-fun e!799026 () List!12599)

(assert (=> d!354880 (= lt!420369 e!799026)))

(declare-fun c!208460 () Bool)

(assert (=> d!354880 (= c!208460 (is-Nil!12539 (list!4659 (c!208407 x!243266))))))

(assert (=> d!354880 (= (++!3206 (list!4659 (c!208407 x!243266)) (efficientList$default$2!53 (c!208407 x!243266))) lt!420369)))

(declare-fun b!1255592 () Bool)

(assert (=> b!1255592 (= e!799026 (Cons!12539 (h!17940 (list!4659 (c!208407 x!243266))) (++!3206 (t!115645 (list!4659 (c!208407 x!243266))) (efficientList$default$2!53 (c!208407 x!243266)))))))

(declare-fun b!1255594 () Bool)

(assert (=> b!1255594 (= e!799027 (or (not (= (efficientList$default$2!53 (c!208407 x!243266)) Nil!12539)) (= lt!420369 (list!4659 (c!208407 x!243266)))))))

(declare-fun b!1255593 () Bool)

(declare-fun res!555975 () Bool)

(assert (=> b!1255593 (=> (not res!555975) (not e!799027))))

(declare-fun size!9917 (List!12599) Int)

(assert (=> b!1255593 (= res!555975 (= (size!9917 lt!420369) (+ (size!9917 (list!4659 (c!208407 x!243266))) (size!9917 (efficientList$default$2!53 (c!208407 x!243266))))))))

(declare-fun b!1255591 () Bool)

(assert (=> b!1255591 (= e!799026 (efficientList$default$2!53 (c!208407 x!243266)))))

(assert (= (and d!354880 c!208460) b!1255591))

(assert (= (and d!354880 (not c!208460)) b!1255592))

(assert (= (and d!354880 res!555974) b!1255593))

(assert (= (and b!1255593 res!555975) b!1255594))

(declare-fun m!1413873 () Bool)

(assert (=> d!354880 m!1413873))

(assert (=> d!354880 m!1413751))

(declare-fun m!1413875 () Bool)

(assert (=> d!354880 m!1413875))

(assert (=> d!354880 m!1413775))

(declare-fun m!1413877 () Bool)

(assert (=> d!354880 m!1413877))

(assert (=> b!1255592 m!1413775))

(declare-fun m!1413879 () Bool)

(assert (=> b!1255592 m!1413879))

(declare-fun m!1413881 () Bool)

(assert (=> b!1255593 m!1413881))

(assert (=> b!1255593 m!1413751))

(declare-fun m!1413883 () Bool)

(assert (=> b!1255593 m!1413883))

(assert (=> b!1255593 m!1413775))

(declare-fun m!1413885 () Bool)

(assert (=> b!1255593 m!1413885))

(assert (=> d!354860 d!354880))

(assert (=> d!354860 d!354842))

(push 1)

(assert (not d!354856))

(assert (not b!1255544))

(assert (not b!1255492))

(assert (not b!1255488))

(assert (not d!354880))

(assert (not b!1255460))

(assert (not b!1255489))

(assert (not b!1255532))

(assert (not b!1255518))

(assert (not b!1255493))

(assert (not b!1255543))

(assert (not b!1255593))

(assert (not d!354878))

(assert (not bm!88065))

(assert (not b!1255582))

(assert (not d!354854))

(assert (not b!1255535))

(assert (not b!1255516))

(assert (not b!1255592))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


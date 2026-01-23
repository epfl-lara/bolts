; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84082 () Bool)

(assert start!84082)

(declare-fun b!942066 () Bool)

(assert (=> b!942066 true))

(assert (=> b!942066 true))

(assert (=> b!942066 true))

(declare-fun lambda!31792 () Int)

(declare-fun lambda!31791 () Int)

(assert (=> b!942066 (not (= lambda!31792 lambda!31791))))

(assert (=> b!942066 true))

(assert (=> b!942066 true))

(assert (=> b!942066 true))

(declare-fun bs!238953 () Bool)

(declare-fun b!942062 () Bool)

(assert (= bs!238953 (and b!942062 b!942066)))

(declare-datatypes ((C!5740 0))(
  ( (C!5741 (val!3118 Int)) )
))
(declare-datatypes ((Regex!2585 0))(
  ( (ElementMatch!2585 (c!153314 C!5740)) (Concat!4418 (regOne!5682 Regex!2585) (regTwo!5682 Regex!2585)) (EmptyExpr!2585) (Star!2585 (reg!2914 Regex!2585)) (EmptyLang!2585) (Union!2585 (regOne!5683 Regex!2585) (regTwo!5683 Regex!2585)) )
))
(declare-fun lt!342527 () Regex!2585)

(declare-fun lt!342523 () Regex!2585)

(declare-fun lambda!31793 () Int)

(declare-fun r!15766 () Regex!2585)

(declare-fun lt!342531 () Regex!2585)

(assert (=> bs!238953 (= (and (= lt!342531 (reg!2914 r!15766)) (= lt!342527 lt!342523)) (= lambda!31793 lambda!31791))))

(assert (=> bs!238953 (not (= lambda!31793 lambda!31792))))

(assert (=> b!942062 true))

(assert (=> b!942062 true))

(assert (=> b!942062 true))

(declare-fun lambda!31794 () Int)

(assert (=> bs!238953 (not (= lambda!31794 lambda!31791))))

(assert (=> bs!238953 (= (and (= lt!342531 (reg!2914 r!15766)) (= lt!342527 lt!342523)) (= lambda!31794 lambda!31792))))

(assert (=> b!942062 (not (= lambda!31794 lambda!31793))))

(assert (=> b!942062 true))

(assert (=> b!942062 true))

(assert (=> b!942062 true))

(declare-fun b!942060 () Bool)

(declare-fun res!427920 () Bool)

(declare-fun e!611006 () Bool)

(assert (=> b!942060 (=> res!427920 e!611006)))

(declare-fun lt!342526 () Bool)

(assert (=> b!942060 (= res!427920 (not lt!342526))))

(declare-fun b!942061 () Bool)

(declare-fun e!611005 () Bool)

(declare-fun e!611003 () Bool)

(assert (=> b!942061 (= e!611005 (not e!611003))))

(declare-fun res!427919 () Bool)

(assert (=> b!942061 (=> res!427919 e!611003)))

(declare-fun lt!342530 () Bool)

(get-info :version)

(assert (=> b!942061 (= res!427919 (or lt!342530 (and ((_ is Concat!4418) r!15766) ((_ is EmptyExpr!2585) (regOne!5682 r!15766))) (and ((_ is Concat!4418) r!15766) ((_ is EmptyExpr!2585) (regTwo!5682 r!15766))) ((_ is Concat!4418) r!15766) ((_ is Union!2585) r!15766) (not ((_ is Star!2585) r!15766))))))

(declare-datatypes ((List!9815 0))(
  ( (Nil!9799) (Cons!9799 (h!15200 C!5740) (t!100861 List!9815)) )
))
(declare-fun s!10566 () List!9815)

(declare-fun matchRSpec!386 (Regex!2585 List!9815) Bool)

(assert (=> b!942061 (= lt!342530 (matchRSpec!386 r!15766 s!10566))))

(declare-fun matchR!1123 (Regex!2585 List!9815) Bool)

(assert (=> b!942061 (= lt!342530 (matchR!1123 r!15766 s!10566))))

(declare-datatypes ((Unit!14789 0))(
  ( (Unit!14790) )
))
(declare-fun lt!342529 () Unit!14789)

(declare-fun mainMatchTheorem!386 (Regex!2585 List!9815) Unit!14789)

(assert (=> b!942061 (= lt!342529 (mainMatchTheorem!386 r!15766 s!10566))))

(declare-fun e!611004 () Bool)

(assert (=> b!942062 (= e!611004 e!611006)))

(declare-fun res!427922 () Bool)

(assert (=> b!942062 (=> res!427922 e!611006)))

(declare-fun isEmpty!6050 (List!9815) Bool)

(assert (=> b!942062 (= res!427922 (isEmpty!6050 s!10566))))

(declare-fun Exists!336 (Int) Bool)

(assert (=> b!942062 (= (Exists!336 lambda!31793) (Exists!336 lambda!31794))))

(declare-fun lt!342524 () Unit!14789)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!80 (Regex!2585 List!9815) Unit!14789)

(assert (=> b!942062 (= lt!342524 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!80 lt!342531 s!10566))))

(assert (=> b!942062 (= lt!342526 (Exists!336 lambda!31793))))

(declare-datatypes ((tuple2!11068 0))(
  ( (tuple2!11069 (_1!6360 List!9815) (_2!6360 List!9815)) )
))
(declare-datatypes ((Option!2176 0))(
  ( (None!2175) (Some!2175 (v!19592 tuple2!11068)) )
))
(declare-fun isDefined!1818 (Option!2176) Bool)

(declare-fun findConcatSeparation!282 (Regex!2585 Regex!2585 List!9815 List!9815 List!9815) Option!2176)

(assert (=> b!942062 (= lt!342526 (isDefined!1818 (findConcatSeparation!282 lt!342531 lt!342527 Nil!9799 s!10566 s!10566)))))

(declare-fun lt!342525 () Unit!14789)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!282 (Regex!2585 Regex!2585 List!9815) Unit!14789)

(assert (=> b!942062 (= lt!342525 (lemmaFindConcatSeparationEquivalentToExists!282 lt!342531 lt!342527 s!10566))))

(assert (=> b!942062 (matchRSpec!386 lt!342527 s!10566)))

(declare-fun lt!342533 () Unit!14789)

(assert (=> b!942062 (= lt!342533 (mainMatchTheorem!386 lt!342527 s!10566))))

(declare-fun b!942063 () Bool)

(declare-fun res!427917 () Bool)

(assert (=> b!942063 (=> res!427917 e!611006)))

(declare-fun validRegex!1054 (Regex!2585) Bool)

(assert (=> b!942063 (= res!427917 (not (validRegex!1054 lt!342527)))))

(declare-fun b!942064 () Bool)

(declare-fun res!427921 () Bool)

(assert (=> b!942064 (=> res!427921 e!611006)))

(assert (=> b!942064 (= res!427921 (not (validRegex!1054 lt!342531)))))

(declare-fun b!942065 () Bool)

(declare-fun e!611007 () Bool)

(declare-fun tp!291349 () Bool)

(assert (=> b!942065 (= e!611007 tp!291349)))

(assert (=> b!942066 (= e!611003 e!611004)))

(declare-fun res!427916 () Bool)

(assert (=> b!942066 (=> res!427916 e!611004)))

(assert (=> b!942066 (= res!427916 (not (matchR!1123 lt!342527 s!10566)))))

(assert (=> b!942066 (= lt!342527 (Star!2585 lt!342531))))

(declare-fun removeUselessConcat!254 (Regex!2585) Regex!2585)

(assert (=> b!942066 (= lt!342531 (removeUselessConcat!254 (reg!2914 r!15766)))))

(assert (=> b!942066 (= (Exists!336 lambda!31791) (Exists!336 lambda!31792))))

(declare-fun lt!342528 () Unit!14789)

(assert (=> b!942066 (= lt!342528 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!80 (reg!2914 r!15766) s!10566))))

(assert (=> b!942066 (= (isDefined!1818 (findConcatSeparation!282 (reg!2914 r!15766) lt!342523 Nil!9799 s!10566 s!10566)) (Exists!336 lambda!31791))))

(declare-fun lt!342532 () Unit!14789)

(assert (=> b!942066 (= lt!342532 (lemmaFindConcatSeparationEquivalentToExists!282 (reg!2914 r!15766) lt!342523 s!10566))))

(assert (=> b!942066 (= lt!342523 (Star!2585 (reg!2914 r!15766)))))

(declare-fun b!942067 () Bool)

(declare-fun tp_is_empty!4813 () Bool)

(assert (=> b!942067 (= e!611007 tp_is_empty!4813)))

(declare-fun b!942068 () Bool)

(declare-fun ++!2607 (List!9815 List!9815) List!9815)

(assert (=> b!942068 (= e!611006 (= (++!2607 Nil!9799 s!10566) s!10566))))

(declare-fun b!942069 () Bool)

(declare-fun tp!291351 () Bool)

(declare-fun tp!291352 () Bool)

(assert (=> b!942069 (= e!611007 (and tp!291351 tp!291352))))

(declare-fun b!942070 () Bool)

(declare-fun tp!291348 () Bool)

(declare-fun tp!291350 () Bool)

(assert (=> b!942070 (= e!611007 (and tp!291348 tp!291350))))

(declare-fun b!942071 () Bool)

(declare-fun e!611002 () Bool)

(declare-fun tp!291347 () Bool)

(assert (=> b!942071 (= e!611002 (and tp_is_empty!4813 tp!291347))))

(declare-fun res!427918 () Bool)

(assert (=> start!84082 (=> (not res!427918) (not e!611005))))

(assert (=> start!84082 (= res!427918 (validRegex!1054 r!15766))))

(assert (=> start!84082 e!611005))

(assert (=> start!84082 e!611007))

(assert (=> start!84082 e!611002))

(assert (= (and start!84082 res!427918) b!942061))

(assert (= (and b!942061 (not res!427919)) b!942066))

(assert (= (and b!942066 (not res!427916)) b!942062))

(assert (= (and b!942062 (not res!427922)) b!942060))

(assert (= (and b!942060 (not res!427920)) b!942064))

(assert (= (and b!942064 (not res!427921)) b!942063))

(assert (= (and b!942063 (not res!427917)) b!942068))

(assert (= (and start!84082 ((_ is ElementMatch!2585) r!15766)) b!942067))

(assert (= (and start!84082 ((_ is Concat!4418) r!15766)) b!942070))

(assert (= (and start!84082 ((_ is Star!2585) r!15766)) b!942065))

(assert (= (and start!84082 ((_ is Union!2585) r!15766)) b!942069))

(assert (= (and start!84082 ((_ is Cons!9799) s!10566)) b!942071))

(declare-fun m!1158701 () Bool)

(assert (=> b!942062 m!1158701))

(declare-fun m!1158703 () Bool)

(assert (=> b!942062 m!1158703))

(declare-fun m!1158705 () Bool)

(assert (=> b!942062 m!1158705))

(declare-fun m!1158707 () Bool)

(assert (=> b!942062 m!1158707))

(declare-fun m!1158709 () Bool)

(assert (=> b!942062 m!1158709))

(declare-fun m!1158711 () Bool)

(assert (=> b!942062 m!1158711))

(assert (=> b!942062 m!1158701))

(declare-fun m!1158713 () Bool)

(assert (=> b!942062 m!1158713))

(declare-fun m!1158715 () Bool)

(assert (=> b!942062 m!1158715))

(assert (=> b!942062 m!1158713))

(declare-fun m!1158717 () Bool)

(assert (=> b!942062 m!1158717))

(declare-fun m!1158719 () Bool)

(assert (=> b!942066 m!1158719))

(declare-fun m!1158721 () Bool)

(assert (=> b!942066 m!1158721))

(assert (=> b!942066 m!1158719))

(declare-fun m!1158723 () Bool)

(assert (=> b!942066 m!1158723))

(declare-fun m!1158725 () Bool)

(assert (=> b!942066 m!1158725))

(declare-fun m!1158727 () Bool)

(assert (=> b!942066 m!1158727))

(declare-fun m!1158729 () Bool)

(assert (=> b!942066 m!1158729))

(declare-fun m!1158731 () Bool)

(assert (=> b!942066 m!1158731))

(assert (=> b!942066 m!1158727))

(declare-fun m!1158733 () Bool)

(assert (=> b!942066 m!1158733))

(declare-fun m!1158735 () Bool)

(assert (=> b!942068 m!1158735))

(declare-fun m!1158737 () Bool)

(assert (=> b!942063 m!1158737))

(declare-fun m!1158739 () Bool)

(assert (=> b!942061 m!1158739))

(declare-fun m!1158741 () Bool)

(assert (=> b!942061 m!1158741))

(declare-fun m!1158743 () Bool)

(assert (=> b!942061 m!1158743))

(declare-fun m!1158745 () Bool)

(assert (=> b!942064 m!1158745))

(declare-fun m!1158747 () Bool)

(assert (=> start!84082 m!1158747))

(check-sat tp_is_empty!4813 (not b!942070) (not b!942065) (not b!942066) (not b!942064) (not b!942068) (not b!942061) (not b!942062) (not b!942069) (not b!942063) (not start!84082) (not b!942071))
(check-sat)
(get-model)

(declare-fun d!282658 () Bool)

(declare-fun choose!5837 (Int) Bool)

(assert (=> d!282658 (= (Exists!336 lambda!31794) (choose!5837 lambda!31794))))

(declare-fun bs!238954 () Bool)

(assert (= bs!238954 d!282658))

(declare-fun m!1158749 () Bool)

(assert (=> bs!238954 m!1158749))

(assert (=> b!942062 d!282658))

(declare-fun bs!238955 () Bool)

(declare-fun b!942168 () Bool)

(assert (= bs!238955 (and b!942168 b!942066)))

(declare-fun lambda!31803 () Int)

(assert (=> bs!238955 (not (= lambda!31803 lambda!31791))))

(assert (=> bs!238955 (= (and (= (reg!2914 lt!342527) (reg!2914 r!15766)) (= lt!342527 lt!342523)) (= lambda!31803 lambda!31792))))

(declare-fun bs!238956 () Bool)

(assert (= bs!238956 (and b!942168 b!942062)))

(assert (=> bs!238956 (not (= lambda!31803 lambda!31793))))

(assert (=> bs!238956 (= (= (reg!2914 lt!342527) lt!342531) (= lambda!31803 lambda!31794))))

(assert (=> b!942168 true))

(assert (=> b!942168 true))

(declare-fun bs!238957 () Bool)

(declare-fun b!942171 () Bool)

(assert (= bs!238957 (and b!942171 b!942168)))

(declare-fun lambda!31804 () Int)

(assert (=> bs!238957 (not (= lambda!31804 lambda!31803))))

(declare-fun bs!238958 () Bool)

(assert (= bs!238958 (and b!942171 b!942066)))

(assert (=> bs!238958 (not (= lambda!31804 lambda!31791))))

(declare-fun bs!238959 () Bool)

(assert (= bs!238959 (and b!942171 b!942062)))

(assert (=> bs!238959 (not (= lambda!31804 lambda!31794))))

(assert (=> bs!238959 (not (= lambda!31804 lambda!31793))))

(assert (=> bs!238958 (not (= lambda!31804 lambda!31792))))

(assert (=> b!942171 true))

(assert (=> b!942171 true))

(declare-fun bm!58750 () Bool)

(declare-fun call!58756 () Bool)

(assert (=> bm!58750 (= call!58756 (isEmpty!6050 s!10566))))

(declare-fun b!942167 () Bool)

(declare-fun e!611065 () Bool)

(declare-fun e!611070 () Bool)

(assert (=> b!942167 (= e!611065 e!611070)))

(declare-fun c!153338 () Bool)

(assert (=> b!942167 (= c!153338 ((_ is Star!2585) lt!342527))))

(declare-fun e!611067 () Bool)

(declare-fun call!58755 () Bool)

(assert (=> b!942168 (= e!611067 call!58755)))

(declare-fun b!942169 () Bool)

(declare-fun res!427972 () Bool)

(assert (=> b!942169 (=> res!427972 e!611067)))

(assert (=> b!942169 (= res!427972 call!58756)))

(assert (=> b!942169 (= e!611070 e!611067)))

(declare-fun b!942170 () Bool)

(declare-fun e!611069 () Bool)

(assert (=> b!942170 (= e!611069 (matchRSpec!386 (regTwo!5683 lt!342527) s!10566))))

(assert (=> b!942171 (= e!611070 call!58755)))

(declare-fun b!942172 () Bool)

(declare-fun e!611068 () Bool)

(assert (=> b!942172 (= e!611068 call!58756)))

(declare-fun d!282660 () Bool)

(declare-fun c!153340 () Bool)

(assert (=> d!282660 (= c!153340 ((_ is EmptyExpr!2585) lt!342527))))

(assert (=> d!282660 (= (matchRSpec!386 lt!342527 s!10566) e!611068)))

(declare-fun b!942173 () Bool)

(declare-fun e!611066 () Bool)

(assert (=> b!942173 (= e!611066 (= s!10566 (Cons!9799 (c!153314 lt!342527) Nil!9799)))))

(declare-fun bm!58751 () Bool)

(assert (=> bm!58751 (= call!58755 (Exists!336 (ite c!153338 lambda!31803 lambda!31804)))))

(declare-fun b!942174 () Bool)

(declare-fun c!153339 () Bool)

(assert (=> b!942174 (= c!153339 ((_ is ElementMatch!2585) lt!342527))))

(declare-fun e!611071 () Bool)

(assert (=> b!942174 (= e!611071 e!611066)))

(declare-fun b!942175 () Bool)

(assert (=> b!942175 (= e!611065 e!611069)))

(declare-fun res!427971 () Bool)

(assert (=> b!942175 (= res!427971 (matchRSpec!386 (regOne!5683 lt!342527) s!10566))))

(assert (=> b!942175 (=> res!427971 e!611069)))

(declare-fun b!942176 () Bool)

(assert (=> b!942176 (= e!611068 e!611071)))

(declare-fun res!427970 () Bool)

(assert (=> b!942176 (= res!427970 (not ((_ is EmptyLang!2585) lt!342527)))))

(assert (=> b!942176 (=> (not res!427970) (not e!611071))))

(declare-fun b!942177 () Bool)

(declare-fun c!153337 () Bool)

(assert (=> b!942177 (= c!153337 ((_ is Union!2585) lt!342527))))

(assert (=> b!942177 (= e!611066 e!611065)))

(assert (= (and d!282660 c!153340) b!942172))

(assert (= (and d!282660 (not c!153340)) b!942176))

(assert (= (and b!942176 res!427970) b!942174))

(assert (= (and b!942174 c!153339) b!942173))

(assert (= (and b!942174 (not c!153339)) b!942177))

(assert (= (and b!942177 c!153337) b!942175))

(assert (= (and b!942177 (not c!153337)) b!942167))

(assert (= (and b!942175 (not res!427971)) b!942170))

(assert (= (and b!942167 c!153338) b!942169))

(assert (= (and b!942167 (not c!153338)) b!942171))

(assert (= (and b!942169 (not res!427972)) b!942168))

(assert (= (or b!942168 b!942171) bm!58751))

(assert (= (or b!942172 b!942169) bm!58750))

(assert (=> bm!58750 m!1158707))

(declare-fun m!1158757 () Bool)

(assert (=> b!942170 m!1158757))

(declare-fun m!1158759 () Bool)

(assert (=> bm!58751 m!1158759))

(declare-fun m!1158761 () Bool)

(assert (=> b!942175 m!1158761))

(assert (=> b!942062 d!282660))

(declare-fun b!942249 () Bool)

(declare-fun e!611110 () Option!2176)

(assert (=> b!942249 (= e!611110 (Some!2175 (tuple2!11069 Nil!9799 s!10566)))))

(declare-fun b!942251 () Bool)

(declare-fun res!428014 () Bool)

(declare-fun e!611114 () Bool)

(assert (=> b!942251 (=> (not res!428014) (not e!611114))))

(declare-fun lt!342543 () Option!2176)

(declare-fun get!3258 (Option!2176) tuple2!11068)

(assert (=> b!942251 (= res!428014 (matchR!1123 lt!342527 (_2!6360 (get!3258 lt!342543))))))

(declare-fun b!942252 () Bool)

(declare-fun e!611113 () Bool)

(assert (=> b!942252 (= e!611113 (matchR!1123 lt!342527 s!10566))))

(declare-fun b!942253 () Bool)

(declare-fun e!611112 () Option!2176)

(assert (=> b!942253 (= e!611110 e!611112)))

(declare-fun c!153358 () Bool)

(assert (=> b!942253 (= c!153358 ((_ is Nil!9799) s!10566))))

(declare-fun b!942254 () Bool)

(assert (=> b!942254 (= e!611114 (= (++!2607 (_1!6360 (get!3258 lt!342543)) (_2!6360 (get!3258 lt!342543))) s!10566))))

(declare-fun b!942255 () Bool)

(declare-fun res!428010 () Bool)

(assert (=> b!942255 (=> (not res!428010) (not e!611114))))

(assert (=> b!942255 (= res!428010 (matchR!1123 lt!342531 (_1!6360 (get!3258 lt!342543))))))

(declare-fun b!942256 () Bool)

(assert (=> b!942256 (= e!611112 None!2175)))

(declare-fun b!942257 () Bool)

(declare-fun lt!342544 () Unit!14789)

(declare-fun lt!342545 () Unit!14789)

(assert (=> b!942257 (= lt!342544 lt!342545)))

(assert (=> b!942257 (= (++!2607 (++!2607 Nil!9799 (Cons!9799 (h!15200 s!10566) Nil!9799)) (t!100861 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!219 (List!9815 C!5740 List!9815 List!9815) Unit!14789)

(assert (=> b!942257 (= lt!342545 (lemmaMoveElementToOtherListKeepsConcatEq!219 Nil!9799 (h!15200 s!10566) (t!100861 s!10566) s!10566))))

(assert (=> b!942257 (= e!611112 (findConcatSeparation!282 lt!342531 lt!342527 (++!2607 Nil!9799 (Cons!9799 (h!15200 s!10566) Nil!9799)) (t!100861 s!10566) s!10566))))

(declare-fun d!282664 () Bool)

(declare-fun e!611111 () Bool)

(assert (=> d!282664 e!611111))

(declare-fun res!428011 () Bool)

(assert (=> d!282664 (=> res!428011 e!611111)))

(assert (=> d!282664 (= res!428011 e!611114)))

(declare-fun res!428013 () Bool)

(assert (=> d!282664 (=> (not res!428013) (not e!611114))))

(assert (=> d!282664 (= res!428013 (isDefined!1818 lt!342543))))

(assert (=> d!282664 (= lt!342543 e!611110)))

(declare-fun c!153359 () Bool)

(assert (=> d!282664 (= c!153359 e!611113)))

(declare-fun res!428012 () Bool)

(assert (=> d!282664 (=> (not res!428012) (not e!611113))))

(assert (=> d!282664 (= res!428012 (matchR!1123 lt!342531 Nil!9799))))

(assert (=> d!282664 (validRegex!1054 lt!342531)))

(assert (=> d!282664 (= (findConcatSeparation!282 lt!342531 lt!342527 Nil!9799 s!10566 s!10566) lt!342543)))

(declare-fun b!942250 () Bool)

(assert (=> b!942250 (= e!611111 (not (isDefined!1818 lt!342543)))))

(assert (= (and d!282664 res!428012) b!942252))

(assert (= (and d!282664 c!153359) b!942249))

(assert (= (and d!282664 (not c!153359)) b!942253))

(assert (= (and b!942253 c!153358) b!942256))

(assert (= (and b!942253 (not c!153358)) b!942257))

(assert (= (and d!282664 res!428013) b!942255))

(assert (= (and b!942255 res!428010) b!942251))

(assert (= (and b!942251 res!428014) b!942254))

(assert (= (and d!282664 (not res!428011)) b!942250))

(declare-fun m!1158781 () Bool)

(assert (=> b!942257 m!1158781))

(assert (=> b!942257 m!1158781))

(declare-fun m!1158783 () Bool)

(assert (=> b!942257 m!1158783))

(declare-fun m!1158785 () Bool)

(assert (=> b!942257 m!1158785))

(assert (=> b!942257 m!1158781))

(declare-fun m!1158787 () Bool)

(assert (=> b!942257 m!1158787))

(declare-fun m!1158789 () Bool)

(assert (=> b!942254 m!1158789))

(declare-fun m!1158791 () Bool)

(assert (=> b!942254 m!1158791))

(declare-fun m!1158793 () Bool)

(assert (=> b!942250 m!1158793))

(assert (=> d!282664 m!1158793))

(declare-fun m!1158795 () Bool)

(assert (=> d!282664 m!1158795))

(assert (=> d!282664 m!1158745))

(assert (=> b!942252 m!1158725))

(assert (=> b!942251 m!1158789))

(declare-fun m!1158797 () Bool)

(assert (=> b!942251 m!1158797))

(assert (=> b!942255 m!1158789))

(declare-fun m!1158799 () Bool)

(assert (=> b!942255 m!1158799))

(assert (=> b!942062 d!282664))

(declare-fun d!282670 () Bool)

(declare-fun isEmpty!6051 (Option!2176) Bool)

(assert (=> d!282670 (= (isDefined!1818 (findConcatSeparation!282 lt!342531 lt!342527 Nil!9799 s!10566 s!10566)) (not (isEmpty!6051 (findConcatSeparation!282 lt!342531 lt!342527 Nil!9799 s!10566 s!10566))))))

(declare-fun bs!238965 () Bool)

(assert (= bs!238965 d!282670))

(assert (=> bs!238965 m!1158713))

(declare-fun m!1158801 () Bool)

(assert (=> bs!238965 m!1158801))

(assert (=> b!942062 d!282670))

(declare-fun d!282672 () Bool)

(assert (=> d!282672 (= (isEmpty!6050 s!10566) ((_ is Nil!9799) s!10566))))

(assert (=> b!942062 d!282672))

(declare-fun d!282674 () Bool)

(assert (=> d!282674 (= (Exists!336 lambda!31793) (choose!5837 lambda!31793))))

(declare-fun bs!238967 () Bool)

(assert (= bs!238967 d!282674))

(declare-fun m!1158805 () Bool)

(assert (=> bs!238967 m!1158805))

(assert (=> b!942062 d!282674))

(declare-fun bs!238969 () Bool)

(declare-fun d!282678 () Bool)

(assert (= bs!238969 (and d!282678 b!942168)))

(declare-fun lambda!31811 () Int)

(assert (=> bs!238969 (not (= lambda!31811 lambda!31803))))

(declare-fun bs!238970 () Bool)

(assert (= bs!238970 (and d!282678 b!942066)))

(assert (=> bs!238970 (= (and (= lt!342531 (reg!2914 r!15766)) (= lt!342527 lt!342523)) (= lambda!31811 lambda!31791))))

(declare-fun bs!238971 () Bool)

(assert (= bs!238971 (and d!282678 b!942062)))

(assert (=> bs!238971 (not (= lambda!31811 lambda!31794))))

(declare-fun bs!238972 () Bool)

(assert (= bs!238972 (and d!282678 b!942171)))

(assert (=> bs!238972 (not (= lambda!31811 lambda!31804))))

(assert (=> bs!238971 (= lambda!31811 lambda!31793)))

(assert (=> bs!238970 (not (= lambda!31811 lambda!31792))))

(assert (=> d!282678 true))

(assert (=> d!282678 true))

(assert (=> d!282678 true))

(assert (=> d!282678 (= (isDefined!1818 (findConcatSeparation!282 lt!342531 lt!342527 Nil!9799 s!10566 s!10566)) (Exists!336 lambda!31811))))

(declare-fun lt!342553 () Unit!14789)

(declare-fun choose!5838 (Regex!2585 Regex!2585 List!9815) Unit!14789)

(assert (=> d!282678 (= lt!342553 (choose!5838 lt!342531 lt!342527 s!10566))))

(assert (=> d!282678 (validRegex!1054 lt!342531)))

(assert (=> d!282678 (= (lemmaFindConcatSeparationEquivalentToExists!282 lt!342531 lt!342527 s!10566) lt!342553)))

(declare-fun bs!238973 () Bool)

(assert (= bs!238973 d!282678))

(assert (=> bs!238973 m!1158713))

(assert (=> bs!238973 m!1158713))

(assert (=> bs!238973 m!1158715))

(assert (=> bs!238973 m!1158745))

(declare-fun m!1158809 () Bool)

(assert (=> bs!238973 m!1158809))

(declare-fun m!1158811 () Bool)

(assert (=> bs!238973 m!1158811))

(assert (=> b!942062 d!282678))

(declare-fun d!282682 () Bool)

(assert (=> d!282682 (= (matchR!1123 lt!342527 s!10566) (matchRSpec!386 lt!342527 s!10566))))

(declare-fun lt!342557 () Unit!14789)

(declare-fun choose!5839 (Regex!2585 List!9815) Unit!14789)

(assert (=> d!282682 (= lt!342557 (choose!5839 lt!342527 s!10566))))

(assert (=> d!282682 (validRegex!1054 lt!342527)))

(assert (=> d!282682 (= (mainMatchTheorem!386 lt!342527 s!10566) lt!342557)))

(declare-fun bs!238978 () Bool)

(assert (= bs!238978 d!282682))

(assert (=> bs!238978 m!1158725))

(assert (=> bs!238978 m!1158711))

(declare-fun m!1158813 () Bool)

(assert (=> bs!238978 m!1158813))

(assert (=> bs!238978 m!1158737))

(assert (=> b!942062 d!282682))

(declare-fun bs!238992 () Bool)

(declare-fun d!282684 () Bool)

(assert (= bs!238992 (and d!282684 b!942168)))

(declare-fun lambda!31822 () Int)

(assert (=> bs!238992 (not (= lambda!31822 lambda!31803))))

(declare-fun bs!238993 () Bool)

(assert (= bs!238993 (and d!282684 b!942066)))

(assert (=> bs!238993 (= (and (= lt!342531 (reg!2914 r!15766)) (= (Star!2585 lt!342531) lt!342523)) (= lambda!31822 lambda!31791))))

(declare-fun bs!238994 () Bool)

(assert (= bs!238994 (and d!282684 b!942062)))

(assert (=> bs!238994 (not (= lambda!31822 lambda!31794))))

(declare-fun bs!238995 () Bool)

(assert (= bs!238995 (and d!282684 b!942171)))

(assert (=> bs!238995 (not (= lambda!31822 lambda!31804))))

(assert (=> bs!238994 (= (= (Star!2585 lt!342531) lt!342527) (= lambda!31822 lambda!31793))))

(declare-fun bs!238996 () Bool)

(assert (= bs!238996 (and d!282684 d!282678)))

(assert (=> bs!238996 (= (= (Star!2585 lt!342531) lt!342527) (= lambda!31822 lambda!31811))))

(assert (=> bs!238993 (not (= lambda!31822 lambda!31792))))

(assert (=> d!282684 true))

(assert (=> d!282684 true))

(declare-fun bs!238997 () Bool)

(assert (= bs!238997 d!282684))

(declare-fun lambda!31823 () Int)

(assert (=> bs!238997 (not (= lambda!31823 lambda!31822))))

(assert (=> bs!238992 (= (and (= lt!342531 (reg!2914 lt!342527)) (= (Star!2585 lt!342531) lt!342527)) (= lambda!31823 lambda!31803))))

(assert (=> bs!238993 (not (= lambda!31823 lambda!31791))))

(assert (=> bs!238994 (= (= (Star!2585 lt!342531) lt!342527) (= lambda!31823 lambda!31794))))

(assert (=> bs!238995 (not (= lambda!31823 lambda!31804))))

(assert (=> bs!238994 (not (= lambda!31823 lambda!31793))))

(assert (=> bs!238996 (not (= lambda!31823 lambda!31811))))

(assert (=> bs!238993 (= (and (= lt!342531 (reg!2914 r!15766)) (= (Star!2585 lt!342531) lt!342523)) (= lambda!31823 lambda!31792))))

(assert (=> d!282684 true))

(assert (=> d!282684 true))

(assert (=> d!282684 (= (Exists!336 lambda!31822) (Exists!336 lambda!31823))))

(declare-fun lt!342560 () Unit!14789)

(declare-fun choose!5841 (Regex!2585 List!9815) Unit!14789)

(assert (=> d!282684 (= lt!342560 (choose!5841 lt!342531 s!10566))))

(assert (=> d!282684 (validRegex!1054 lt!342531)))

(assert (=> d!282684 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!80 lt!342531 s!10566) lt!342560)))

(declare-fun m!1158829 () Bool)

(assert (=> bs!238997 m!1158829))

(declare-fun m!1158831 () Bool)

(assert (=> bs!238997 m!1158831))

(declare-fun m!1158833 () Bool)

(assert (=> bs!238997 m!1158833))

(assert (=> bs!238997 m!1158745))

(assert (=> b!942062 d!282684))

(declare-fun d!282692 () Bool)

(declare-fun e!611146 () Bool)

(assert (=> d!282692 e!611146))

(declare-fun res!428056 () Bool)

(assert (=> d!282692 (=> (not res!428056) (not e!611146))))

(declare-fun lt!342569 () List!9815)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1390 (List!9815) (InoxSet C!5740))

(assert (=> d!282692 (= res!428056 (= (content!1390 lt!342569) ((_ map or) (content!1390 Nil!9799) (content!1390 s!10566))))))

(declare-fun e!611147 () List!9815)

(assert (=> d!282692 (= lt!342569 e!611147)))

(declare-fun c!153370 () Bool)

(assert (=> d!282692 (= c!153370 ((_ is Nil!9799) Nil!9799))))

(assert (=> d!282692 (= (++!2607 Nil!9799 s!10566) lt!342569)))

(declare-fun b!942322 () Bool)

(assert (=> b!942322 (= e!611146 (or (not (= s!10566 Nil!9799)) (= lt!342569 Nil!9799)))))

(declare-fun b!942321 () Bool)

(declare-fun res!428057 () Bool)

(assert (=> b!942321 (=> (not res!428057) (not e!611146))))

(declare-fun size!7890 (List!9815) Int)

(assert (=> b!942321 (= res!428057 (= (size!7890 lt!342569) (+ (size!7890 Nil!9799) (size!7890 s!10566))))))

(declare-fun b!942319 () Bool)

(assert (=> b!942319 (= e!611147 s!10566)))

(declare-fun b!942320 () Bool)

(assert (=> b!942320 (= e!611147 (Cons!9799 (h!15200 Nil!9799) (++!2607 (t!100861 Nil!9799) s!10566)))))

(assert (= (and d!282692 c!153370) b!942319))

(assert (= (and d!282692 (not c!153370)) b!942320))

(assert (= (and d!282692 res!428056) b!942321))

(assert (= (and b!942321 res!428057) b!942322))

(declare-fun m!1158835 () Bool)

(assert (=> d!282692 m!1158835))

(declare-fun m!1158837 () Bool)

(assert (=> d!282692 m!1158837))

(declare-fun m!1158839 () Bool)

(assert (=> d!282692 m!1158839))

(declare-fun m!1158841 () Bool)

(assert (=> b!942321 m!1158841))

(declare-fun m!1158843 () Bool)

(assert (=> b!942321 m!1158843))

(declare-fun m!1158845 () Bool)

(assert (=> b!942321 m!1158845))

(declare-fun m!1158847 () Bool)

(assert (=> b!942320 m!1158847))

(assert (=> b!942068 d!282692))

(declare-fun b!942350 () Bool)

(declare-fun res!428077 () Bool)

(declare-fun e!611169 () Bool)

(assert (=> b!942350 (=> res!428077 e!611169)))

(assert (=> b!942350 (= res!428077 (not ((_ is Concat!4418) lt!342527)))))

(declare-fun e!611167 () Bool)

(assert (=> b!942350 (= e!611167 e!611169)))

(declare-fun b!942351 () Bool)

(declare-fun res!428076 () Bool)

(declare-fun e!611171 () Bool)

(assert (=> b!942351 (=> (not res!428076) (not e!611171))))

(declare-fun call!58771 () Bool)

(assert (=> b!942351 (= res!428076 call!58771)))

(assert (=> b!942351 (= e!611167 e!611171)))

(declare-fun b!942352 () Bool)

(declare-fun call!58772 () Bool)

(assert (=> b!942352 (= e!611171 call!58772)))

(declare-fun c!153378 () Bool)

(declare-fun bm!58765 () Bool)

(declare-fun c!153377 () Bool)

(declare-fun call!58770 () Bool)

(assert (=> bm!58765 (= call!58770 (validRegex!1054 (ite c!153377 (reg!2914 lt!342527) (ite c!153378 (regTwo!5683 lt!342527) (regTwo!5682 lt!342527)))))))

(declare-fun b!942354 () Bool)

(declare-fun e!611170 () Bool)

(assert (=> b!942354 (= e!611170 call!58770)))

(declare-fun b!942355 () Bool)

(declare-fun e!611173 () Bool)

(assert (=> b!942355 (= e!611173 e!611167)))

(assert (=> b!942355 (= c!153378 ((_ is Union!2585) lt!342527))))

(declare-fun b!942356 () Bool)

(declare-fun e!611172 () Bool)

(assert (=> b!942356 (= e!611169 e!611172)))

(declare-fun res!428075 () Bool)

(assert (=> b!942356 (=> (not res!428075) (not e!611172))))

(assert (=> b!942356 (= res!428075 call!58771)))

(declare-fun b!942357 () Bool)

(declare-fun e!611168 () Bool)

(assert (=> b!942357 (= e!611168 e!611173)))

(assert (=> b!942357 (= c!153377 ((_ is Star!2585) lt!342527))))

(declare-fun b!942358 () Bool)

(assert (=> b!942358 (= e!611172 call!58772)))

(declare-fun bm!58766 () Bool)

(assert (=> bm!58766 (= call!58772 call!58770)))

(declare-fun bm!58767 () Bool)

(assert (=> bm!58767 (= call!58771 (validRegex!1054 (ite c!153378 (regOne!5683 lt!342527) (regOne!5682 lt!342527))))))

(declare-fun b!942353 () Bool)

(assert (=> b!942353 (= e!611173 e!611170)))

(declare-fun res!428073 () Bool)

(declare-fun nullable!755 (Regex!2585) Bool)

(assert (=> b!942353 (= res!428073 (not (nullable!755 (reg!2914 lt!342527))))))

(assert (=> b!942353 (=> (not res!428073) (not e!611170))))

(declare-fun d!282694 () Bool)

(declare-fun res!428074 () Bool)

(assert (=> d!282694 (=> res!428074 e!611168)))

(assert (=> d!282694 (= res!428074 ((_ is ElementMatch!2585) lt!342527))))

(assert (=> d!282694 (= (validRegex!1054 lt!342527) e!611168)))

(assert (= (and d!282694 (not res!428074)) b!942357))

(assert (= (and b!942357 c!153377) b!942353))

(assert (= (and b!942357 (not c!153377)) b!942355))

(assert (= (and b!942353 res!428073) b!942354))

(assert (= (and b!942355 c!153378) b!942351))

(assert (= (and b!942355 (not c!153378)) b!942350))

(assert (= (and b!942351 res!428076) b!942352))

(assert (= (and b!942350 (not res!428077)) b!942356))

(assert (= (and b!942356 res!428075) b!942358))

(assert (= (or b!942352 b!942358) bm!58766))

(assert (= (or b!942351 b!942356) bm!58767))

(assert (= (or b!942354 bm!58766) bm!58765))

(declare-fun m!1158869 () Bool)

(assert (=> bm!58765 m!1158869))

(declare-fun m!1158871 () Bool)

(assert (=> bm!58767 m!1158871))

(declare-fun m!1158873 () Bool)

(assert (=> b!942353 m!1158873))

(assert (=> b!942063 d!282694))

(declare-fun b!942359 () Bool)

(declare-fun res!428082 () Bool)

(declare-fun e!611176 () Bool)

(assert (=> b!942359 (=> res!428082 e!611176)))

(assert (=> b!942359 (= res!428082 (not ((_ is Concat!4418) r!15766)))))

(declare-fun e!611174 () Bool)

(assert (=> b!942359 (= e!611174 e!611176)))

(declare-fun b!942360 () Bool)

(declare-fun res!428081 () Bool)

(declare-fun e!611178 () Bool)

(assert (=> b!942360 (=> (not res!428081) (not e!611178))))

(declare-fun call!58774 () Bool)

(assert (=> b!942360 (= res!428081 call!58774)))

(assert (=> b!942360 (= e!611174 e!611178)))

(declare-fun b!942361 () Bool)

(declare-fun call!58775 () Bool)

(assert (=> b!942361 (= e!611178 call!58775)))

(declare-fun bm!58768 () Bool)

(declare-fun c!153379 () Bool)

(declare-fun c!153380 () Bool)

(declare-fun call!58773 () Bool)

(assert (=> bm!58768 (= call!58773 (validRegex!1054 (ite c!153379 (reg!2914 r!15766) (ite c!153380 (regTwo!5683 r!15766) (regTwo!5682 r!15766)))))))

(declare-fun b!942363 () Bool)

(declare-fun e!611177 () Bool)

(assert (=> b!942363 (= e!611177 call!58773)))

(declare-fun b!942364 () Bool)

(declare-fun e!611180 () Bool)

(assert (=> b!942364 (= e!611180 e!611174)))

(assert (=> b!942364 (= c!153380 ((_ is Union!2585) r!15766))))

(declare-fun b!942365 () Bool)

(declare-fun e!611179 () Bool)

(assert (=> b!942365 (= e!611176 e!611179)))

(declare-fun res!428080 () Bool)

(assert (=> b!942365 (=> (not res!428080) (not e!611179))))

(assert (=> b!942365 (= res!428080 call!58774)))

(declare-fun b!942366 () Bool)

(declare-fun e!611175 () Bool)

(assert (=> b!942366 (= e!611175 e!611180)))

(assert (=> b!942366 (= c!153379 ((_ is Star!2585) r!15766))))

(declare-fun b!942367 () Bool)

(assert (=> b!942367 (= e!611179 call!58775)))

(declare-fun bm!58769 () Bool)

(assert (=> bm!58769 (= call!58775 call!58773)))

(declare-fun bm!58770 () Bool)

(assert (=> bm!58770 (= call!58774 (validRegex!1054 (ite c!153380 (regOne!5683 r!15766) (regOne!5682 r!15766))))))

(declare-fun b!942362 () Bool)

(assert (=> b!942362 (= e!611180 e!611177)))

(declare-fun res!428078 () Bool)

(assert (=> b!942362 (= res!428078 (not (nullable!755 (reg!2914 r!15766))))))

(assert (=> b!942362 (=> (not res!428078) (not e!611177))))

(declare-fun d!282698 () Bool)

(declare-fun res!428079 () Bool)

(assert (=> d!282698 (=> res!428079 e!611175)))

(assert (=> d!282698 (= res!428079 ((_ is ElementMatch!2585) r!15766))))

(assert (=> d!282698 (= (validRegex!1054 r!15766) e!611175)))

(assert (= (and d!282698 (not res!428079)) b!942366))

(assert (= (and b!942366 c!153379) b!942362))

(assert (= (and b!942366 (not c!153379)) b!942364))

(assert (= (and b!942362 res!428078) b!942363))

(assert (= (and b!942364 c!153380) b!942360))

(assert (= (and b!942364 (not c!153380)) b!942359))

(assert (= (and b!942360 res!428081) b!942361))

(assert (= (and b!942359 (not res!428082)) b!942365))

(assert (= (and b!942365 res!428080) b!942367))

(assert (= (or b!942361 b!942367) bm!58769))

(assert (= (or b!942360 b!942365) bm!58770))

(assert (= (or b!942363 bm!58769) bm!58768))

(declare-fun m!1158875 () Bool)

(assert (=> bm!58768 m!1158875))

(declare-fun m!1158877 () Bool)

(assert (=> bm!58770 m!1158877))

(declare-fun m!1158879 () Bool)

(assert (=> b!942362 m!1158879))

(assert (=> start!84082 d!282698))

(declare-fun b!942368 () Bool)

(declare-fun res!428087 () Bool)

(declare-fun e!611183 () Bool)

(assert (=> b!942368 (=> res!428087 e!611183)))

(assert (=> b!942368 (= res!428087 (not ((_ is Concat!4418) lt!342531)))))

(declare-fun e!611181 () Bool)

(assert (=> b!942368 (= e!611181 e!611183)))

(declare-fun b!942369 () Bool)

(declare-fun res!428086 () Bool)

(declare-fun e!611185 () Bool)

(assert (=> b!942369 (=> (not res!428086) (not e!611185))))

(declare-fun call!58777 () Bool)

(assert (=> b!942369 (= res!428086 call!58777)))

(assert (=> b!942369 (= e!611181 e!611185)))

(declare-fun b!942370 () Bool)

(declare-fun call!58778 () Bool)

(assert (=> b!942370 (= e!611185 call!58778)))

(declare-fun c!153382 () Bool)

(declare-fun bm!58771 () Bool)

(declare-fun c!153381 () Bool)

(declare-fun call!58776 () Bool)

(assert (=> bm!58771 (= call!58776 (validRegex!1054 (ite c!153381 (reg!2914 lt!342531) (ite c!153382 (regTwo!5683 lt!342531) (regTwo!5682 lt!342531)))))))

(declare-fun b!942372 () Bool)

(declare-fun e!611184 () Bool)

(assert (=> b!942372 (= e!611184 call!58776)))

(declare-fun b!942373 () Bool)

(declare-fun e!611187 () Bool)

(assert (=> b!942373 (= e!611187 e!611181)))

(assert (=> b!942373 (= c!153382 ((_ is Union!2585) lt!342531))))

(declare-fun b!942374 () Bool)

(declare-fun e!611186 () Bool)

(assert (=> b!942374 (= e!611183 e!611186)))

(declare-fun res!428085 () Bool)

(assert (=> b!942374 (=> (not res!428085) (not e!611186))))

(assert (=> b!942374 (= res!428085 call!58777)))

(declare-fun b!942375 () Bool)

(declare-fun e!611182 () Bool)

(assert (=> b!942375 (= e!611182 e!611187)))

(assert (=> b!942375 (= c!153381 ((_ is Star!2585) lt!342531))))

(declare-fun b!942376 () Bool)

(assert (=> b!942376 (= e!611186 call!58778)))

(declare-fun bm!58772 () Bool)

(assert (=> bm!58772 (= call!58778 call!58776)))

(declare-fun bm!58773 () Bool)

(assert (=> bm!58773 (= call!58777 (validRegex!1054 (ite c!153382 (regOne!5683 lt!342531) (regOne!5682 lt!342531))))))

(declare-fun b!942371 () Bool)

(assert (=> b!942371 (= e!611187 e!611184)))

(declare-fun res!428083 () Bool)

(assert (=> b!942371 (= res!428083 (not (nullable!755 (reg!2914 lt!342531))))))

(assert (=> b!942371 (=> (not res!428083) (not e!611184))))

(declare-fun d!282700 () Bool)

(declare-fun res!428084 () Bool)

(assert (=> d!282700 (=> res!428084 e!611182)))

(assert (=> d!282700 (= res!428084 ((_ is ElementMatch!2585) lt!342531))))

(assert (=> d!282700 (= (validRegex!1054 lt!342531) e!611182)))

(assert (= (and d!282700 (not res!428084)) b!942375))

(assert (= (and b!942375 c!153381) b!942371))

(assert (= (and b!942375 (not c!153381)) b!942373))

(assert (= (and b!942371 res!428083) b!942372))

(assert (= (and b!942373 c!153382) b!942369))

(assert (= (and b!942373 (not c!153382)) b!942368))

(assert (= (and b!942369 res!428086) b!942370))

(assert (= (and b!942368 (not res!428087)) b!942374))

(assert (= (and b!942374 res!428085) b!942376))

(assert (= (or b!942370 b!942376) bm!58772))

(assert (= (or b!942369 b!942374) bm!58773))

(assert (= (or b!942372 bm!58772) bm!58771))

(declare-fun m!1158881 () Bool)

(assert (=> bm!58771 m!1158881))

(declare-fun m!1158883 () Bool)

(assert (=> bm!58773 m!1158883))

(declare-fun m!1158885 () Bool)

(assert (=> b!942371 m!1158885))

(assert (=> b!942064 d!282700))

(declare-fun d!282702 () Bool)

(assert (=> d!282702 (= (Exists!336 lambda!31792) (choose!5837 lambda!31792))))

(declare-fun bs!238998 () Bool)

(assert (= bs!238998 d!282702))

(declare-fun m!1158887 () Bool)

(assert (=> bs!238998 m!1158887))

(assert (=> b!942066 d!282702))

(declare-fun b!942377 () Bool)

(declare-fun e!611188 () Option!2176)

(assert (=> b!942377 (= e!611188 (Some!2175 (tuple2!11069 Nil!9799 s!10566)))))

(declare-fun b!942379 () Bool)

(declare-fun res!428092 () Bool)

(declare-fun e!611192 () Bool)

(assert (=> b!942379 (=> (not res!428092) (not e!611192))))

(declare-fun lt!342575 () Option!2176)

(assert (=> b!942379 (= res!428092 (matchR!1123 lt!342523 (_2!6360 (get!3258 lt!342575))))))

(declare-fun b!942380 () Bool)

(declare-fun e!611191 () Bool)

(assert (=> b!942380 (= e!611191 (matchR!1123 lt!342523 s!10566))))

(declare-fun b!942381 () Bool)

(declare-fun e!611190 () Option!2176)

(assert (=> b!942381 (= e!611188 e!611190)))

(declare-fun c!153383 () Bool)

(assert (=> b!942381 (= c!153383 ((_ is Nil!9799) s!10566))))

(declare-fun b!942382 () Bool)

(assert (=> b!942382 (= e!611192 (= (++!2607 (_1!6360 (get!3258 lt!342575)) (_2!6360 (get!3258 lt!342575))) s!10566))))

(declare-fun b!942383 () Bool)

(declare-fun res!428088 () Bool)

(assert (=> b!942383 (=> (not res!428088) (not e!611192))))

(assert (=> b!942383 (= res!428088 (matchR!1123 (reg!2914 r!15766) (_1!6360 (get!3258 lt!342575))))))

(declare-fun b!942384 () Bool)

(assert (=> b!942384 (= e!611190 None!2175)))

(declare-fun b!942385 () Bool)

(declare-fun lt!342576 () Unit!14789)

(declare-fun lt!342577 () Unit!14789)

(assert (=> b!942385 (= lt!342576 lt!342577)))

(assert (=> b!942385 (= (++!2607 (++!2607 Nil!9799 (Cons!9799 (h!15200 s!10566) Nil!9799)) (t!100861 s!10566)) s!10566)))

(assert (=> b!942385 (= lt!342577 (lemmaMoveElementToOtherListKeepsConcatEq!219 Nil!9799 (h!15200 s!10566) (t!100861 s!10566) s!10566))))

(assert (=> b!942385 (= e!611190 (findConcatSeparation!282 (reg!2914 r!15766) lt!342523 (++!2607 Nil!9799 (Cons!9799 (h!15200 s!10566) Nil!9799)) (t!100861 s!10566) s!10566))))

(declare-fun d!282704 () Bool)

(declare-fun e!611189 () Bool)

(assert (=> d!282704 e!611189))

(declare-fun res!428089 () Bool)

(assert (=> d!282704 (=> res!428089 e!611189)))

(assert (=> d!282704 (= res!428089 e!611192)))

(declare-fun res!428091 () Bool)

(assert (=> d!282704 (=> (not res!428091) (not e!611192))))

(assert (=> d!282704 (= res!428091 (isDefined!1818 lt!342575))))

(assert (=> d!282704 (= lt!342575 e!611188)))

(declare-fun c!153384 () Bool)

(assert (=> d!282704 (= c!153384 e!611191)))

(declare-fun res!428090 () Bool)

(assert (=> d!282704 (=> (not res!428090) (not e!611191))))

(assert (=> d!282704 (= res!428090 (matchR!1123 (reg!2914 r!15766) Nil!9799))))

(assert (=> d!282704 (validRegex!1054 (reg!2914 r!15766))))

(assert (=> d!282704 (= (findConcatSeparation!282 (reg!2914 r!15766) lt!342523 Nil!9799 s!10566 s!10566) lt!342575)))

(declare-fun b!942378 () Bool)

(assert (=> b!942378 (= e!611189 (not (isDefined!1818 lt!342575)))))

(assert (= (and d!282704 res!428090) b!942380))

(assert (= (and d!282704 c!153384) b!942377))

(assert (= (and d!282704 (not c!153384)) b!942381))

(assert (= (and b!942381 c!153383) b!942384))

(assert (= (and b!942381 (not c!153383)) b!942385))

(assert (= (and d!282704 res!428091) b!942383))

(assert (= (and b!942383 res!428088) b!942379))

(assert (= (and b!942379 res!428092) b!942382))

(assert (= (and d!282704 (not res!428089)) b!942378))

(assert (=> b!942385 m!1158781))

(assert (=> b!942385 m!1158781))

(assert (=> b!942385 m!1158783))

(assert (=> b!942385 m!1158785))

(assert (=> b!942385 m!1158781))

(declare-fun m!1158889 () Bool)

(assert (=> b!942385 m!1158889))

(declare-fun m!1158891 () Bool)

(assert (=> b!942382 m!1158891))

(declare-fun m!1158893 () Bool)

(assert (=> b!942382 m!1158893))

(declare-fun m!1158895 () Bool)

(assert (=> b!942378 m!1158895))

(assert (=> d!282704 m!1158895))

(declare-fun m!1158897 () Bool)

(assert (=> d!282704 m!1158897))

(declare-fun m!1158899 () Bool)

(assert (=> d!282704 m!1158899))

(declare-fun m!1158901 () Bool)

(assert (=> b!942380 m!1158901))

(assert (=> b!942379 m!1158891))

(declare-fun m!1158903 () Bool)

(assert (=> b!942379 m!1158903))

(assert (=> b!942383 m!1158891))

(declare-fun m!1158905 () Bool)

(assert (=> b!942383 m!1158905))

(assert (=> b!942066 d!282704))

(declare-fun bs!238999 () Bool)

(declare-fun d!282706 () Bool)

(assert (= bs!238999 (and d!282706 d!282684)))

(declare-fun lambda!31826 () Int)

(assert (=> bs!238999 (= (and (= (reg!2914 r!15766) lt!342531) (= (Star!2585 (reg!2914 r!15766)) (Star!2585 lt!342531))) (= lambda!31826 lambda!31822))))

(declare-fun bs!239000 () Bool)

(assert (= bs!239000 (and d!282706 b!942168)))

(assert (=> bs!239000 (not (= lambda!31826 lambda!31803))))

(declare-fun bs!239001 () Bool)

(assert (= bs!239001 (and d!282706 b!942066)))

(assert (=> bs!239001 (= (= (Star!2585 (reg!2914 r!15766)) lt!342523) (= lambda!31826 lambda!31791))))

(declare-fun bs!239002 () Bool)

(assert (= bs!239002 (and d!282706 b!942062)))

(assert (=> bs!239002 (not (= lambda!31826 lambda!31794))))

(declare-fun bs!239003 () Bool)

(assert (= bs!239003 (and d!282706 b!942171)))

(assert (=> bs!239003 (not (= lambda!31826 lambda!31804))))

(assert (=> bs!239002 (= (and (= (reg!2914 r!15766) lt!342531) (= (Star!2585 (reg!2914 r!15766)) lt!342527)) (= lambda!31826 lambda!31793))))

(declare-fun bs!239004 () Bool)

(assert (= bs!239004 (and d!282706 d!282678)))

(assert (=> bs!239004 (= (and (= (reg!2914 r!15766) lt!342531) (= (Star!2585 (reg!2914 r!15766)) lt!342527)) (= lambda!31826 lambda!31811))))

(assert (=> bs!239001 (not (= lambda!31826 lambda!31792))))

(assert (=> bs!238999 (not (= lambda!31826 lambda!31823))))

(assert (=> d!282706 true))

(assert (=> d!282706 true))

(declare-fun lambda!31828 () Int)

(assert (=> bs!238999 (not (= lambda!31828 lambda!31822))))

(assert (=> bs!239000 (= (and (= (reg!2914 r!15766) (reg!2914 lt!342527)) (= (Star!2585 (reg!2914 r!15766)) lt!342527)) (= lambda!31828 lambda!31803))))

(assert (=> bs!239001 (not (= lambda!31828 lambda!31791))))

(assert (=> bs!239002 (= (and (= (reg!2914 r!15766) lt!342531) (= (Star!2585 (reg!2914 r!15766)) lt!342527)) (= lambda!31828 lambda!31794))))

(declare-fun bs!239012 () Bool)

(assert (= bs!239012 d!282706))

(assert (=> bs!239012 (not (= lambda!31828 lambda!31826))))

(assert (=> bs!239003 (not (= lambda!31828 lambda!31804))))

(assert (=> bs!239002 (not (= lambda!31828 lambda!31793))))

(assert (=> bs!239004 (not (= lambda!31828 lambda!31811))))

(assert (=> bs!239001 (= (= (Star!2585 (reg!2914 r!15766)) lt!342523) (= lambda!31828 lambda!31792))))

(assert (=> bs!238999 (= (and (= (reg!2914 r!15766) lt!342531) (= (Star!2585 (reg!2914 r!15766)) (Star!2585 lt!342531))) (= lambda!31828 lambda!31823))))

(assert (=> d!282706 true))

(assert (=> d!282706 true))

(assert (=> d!282706 (= (Exists!336 lambda!31826) (Exists!336 lambda!31828))))

(declare-fun lt!342578 () Unit!14789)

(assert (=> d!282706 (= lt!342578 (choose!5841 (reg!2914 r!15766) s!10566))))

(assert (=> d!282706 (validRegex!1054 (reg!2914 r!15766))))

(assert (=> d!282706 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!80 (reg!2914 r!15766) s!10566) lt!342578)))

(declare-fun m!1158911 () Bool)

(assert (=> bs!239012 m!1158911))

(declare-fun m!1158913 () Bool)

(assert (=> bs!239012 m!1158913))

(declare-fun m!1158917 () Bool)

(assert (=> bs!239012 m!1158917))

(assert (=> bs!239012 m!1158899))

(assert (=> b!942066 d!282706))

(declare-fun d!282714 () Bool)

(assert (=> d!282714 (= (Exists!336 lambda!31791) (choose!5837 lambda!31791))))

(declare-fun bs!239015 () Bool)

(assert (= bs!239015 d!282714))

(declare-fun m!1158919 () Bool)

(assert (=> bs!239015 m!1158919))

(assert (=> b!942066 d!282714))

(declare-fun b!942421 () Bool)

(declare-fun e!611216 () Bool)

(declare-fun lt!342585 () Regex!2585)

(assert (=> b!942421 (= e!611216 (= (nullable!755 lt!342585) (nullable!755 (reg!2914 r!15766))))))

(declare-fun b!942422 () Bool)

(declare-fun e!611215 () Regex!2585)

(declare-fun call!58795 () Regex!2585)

(assert (=> b!942422 (= e!611215 call!58795)))

(declare-fun b!942423 () Bool)

(declare-fun e!611217 () Regex!2585)

(assert (=> b!942423 (= e!611217 (reg!2914 r!15766))))

(declare-fun b!942424 () Bool)

(declare-fun e!611219 () Regex!2585)

(declare-fun call!58796 () Regex!2585)

(declare-fun call!58794 () Regex!2585)

(assert (=> b!942424 (= e!611219 (Union!2585 call!58796 call!58794))))

(declare-fun c!153401 () Bool)

(declare-fun bm!58787 () Bool)

(declare-fun call!58793 () Regex!2585)

(declare-fun c!153400 () Bool)

(assert (=> bm!58787 (= call!58793 (removeUselessConcat!254 (ite c!153401 (regTwo!5682 (reg!2914 r!15766)) (ite c!153400 (regTwo!5683 (reg!2914 r!15766)) (reg!2914 (reg!2914 r!15766))))))))

(declare-fun b!942425 () Bool)

(declare-fun e!611218 () Regex!2585)

(assert (=> b!942425 (= e!611218 e!611219)))

(assert (=> b!942425 (= c!153400 ((_ is Union!2585) (reg!2914 r!15766)))))

(declare-fun b!942426 () Bool)

(assert (=> b!942426 (= e!611217 (Star!2585 call!58794))))

(declare-fun b!942427 () Bool)

(declare-fun c!153399 () Bool)

(assert (=> b!942427 (= c!153399 ((_ is Star!2585) (reg!2914 r!15766)))))

(assert (=> b!942427 (= e!611219 e!611217)))

(declare-fun b!942428 () Bool)

(declare-fun e!611214 () Regex!2585)

(assert (=> b!942428 (= e!611214 e!611215)))

(declare-fun c!153397 () Bool)

(assert (=> b!942428 (= c!153397 (and ((_ is Concat!4418) (reg!2914 r!15766)) ((_ is EmptyExpr!2585) (regTwo!5682 (reg!2914 r!15766)))))))

(declare-fun d!282716 () Bool)

(assert (=> d!282716 e!611216))

(declare-fun res!428104 () Bool)

(assert (=> d!282716 (=> (not res!428104) (not e!611216))))

(assert (=> d!282716 (= res!428104 (validRegex!1054 lt!342585))))

(assert (=> d!282716 (= lt!342585 e!611214)))

(declare-fun c!153398 () Bool)

(assert (=> d!282716 (= c!153398 (and ((_ is Concat!4418) (reg!2914 r!15766)) ((_ is EmptyExpr!2585) (regOne!5682 (reg!2914 r!15766)))))))

(assert (=> d!282716 (validRegex!1054 (reg!2914 r!15766))))

(assert (=> d!282716 (= (removeUselessConcat!254 (reg!2914 r!15766)) lt!342585)))

(declare-fun bm!58788 () Bool)

(assert (=> bm!58788 (= call!58794 call!58793)))

(declare-fun bm!58789 () Bool)

(assert (=> bm!58789 (= call!58796 call!58795)))

(declare-fun bm!58790 () Bool)

(declare-fun call!58792 () Regex!2585)

(assert (=> bm!58790 (= call!58792 (removeUselessConcat!254 (ite c!153398 (regTwo!5682 (reg!2914 r!15766)) (ite (or c!153397 c!153401) (regOne!5682 (reg!2914 r!15766)) (regOne!5683 (reg!2914 r!15766))))))))

(declare-fun b!942429 () Bool)

(assert (=> b!942429 (= e!611218 (Concat!4418 call!58796 call!58793))))

(declare-fun b!942430 () Bool)

(assert (=> b!942430 (= e!611214 call!58792)))

(declare-fun b!942431 () Bool)

(assert (=> b!942431 (= c!153401 ((_ is Concat!4418) (reg!2914 r!15766)))))

(assert (=> b!942431 (= e!611215 e!611218)))

(declare-fun bm!58791 () Bool)

(assert (=> bm!58791 (= call!58795 call!58792)))

(assert (= (and d!282716 c!153398) b!942430))

(assert (= (and d!282716 (not c!153398)) b!942428))

(assert (= (and b!942428 c!153397) b!942422))

(assert (= (and b!942428 (not c!153397)) b!942431))

(assert (= (and b!942431 c!153401) b!942429))

(assert (= (and b!942431 (not c!153401)) b!942425))

(assert (= (and b!942425 c!153400) b!942424))

(assert (= (and b!942425 (not c!153400)) b!942427))

(assert (= (and b!942427 c!153399) b!942426))

(assert (= (and b!942427 (not c!153399)) b!942423))

(assert (= (or b!942424 b!942426) bm!58788))

(assert (= (or b!942429 bm!58788) bm!58787))

(assert (= (or b!942429 b!942424) bm!58789))

(assert (= (or b!942422 bm!58789) bm!58791))

(assert (= (or b!942430 bm!58791) bm!58790))

(assert (= (and d!282716 res!428104) b!942421))

(declare-fun m!1158947 () Bool)

(assert (=> b!942421 m!1158947))

(assert (=> b!942421 m!1158879))

(declare-fun m!1158949 () Bool)

(assert (=> bm!58787 m!1158949))

(declare-fun m!1158951 () Bool)

(assert (=> d!282716 m!1158951))

(assert (=> d!282716 m!1158899))

(declare-fun m!1158953 () Bool)

(assert (=> bm!58790 m!1158953))

(assert (=> b!942066 d!282716))

(declare-fun bs!239039 () Bool)

(declare-fun d!282732 () Bool)

(assert (= bs!239039 (and d!282732 d!282684)))

(declare-fun lambda!31832 () Int)

(assert (=> bs!239039 (= (and (= (reg!2914 r!15766) lt!342531) (= lt!342523 (Star!2585 lt!342531))) (= lambda!31832 lambda!31822))))

(declare-fun bs!239040 () Bool)

(assert (= bs!239040 (and d!282732 d!282706)))

(assert (=> bs!239040 (not (= lambda!31832 lambda!31828))))

(declare-fun bs!239041 () Bool)

(assert (= bs!239041 (and d!282732 b!942168)))

(assert (=> bs!239041 (not (= lambda!31832 lambda!31803))))

(declare-fun bs!239042 () Bool)

(assert (= bs!239042 (and d!282732 b!942066)))

(assert (=> bs!239042 (= lambda!31832 lambda!31791)))

(declare-fun bs!239043 () Bool)

(assert (= bs!239043 (and d!282732 b!942062)))

(assert (=> bs!239043 (not (= lambda!31832 lambda!31794))))

(assert (=> bs!239040 (= (= lt!342523 (Star!2585 (reg!2914 r!15766))) (= lambda!31832 lambda!31826))))

(declare-fun bs!239044 () Bool)

(assert (= bs!239044 (and d!282732 b!942171)))

(assert (=> bs!239044 (not (= lambda!31832 lambda!31804))))

(assert (=> bs!239043 (= (and (= (reg!2914 r!15766) lt!342531) (= lt!342523 lt!342527)) (= lambda!31832 lambda!31793))))

(declare-fun bs!239045 () Bool)

(assert (= bs!239045 (and d!282732 d!282678)))

(assert (=> bs!239045 (= (and (= (reg!2914 r!15766) lt!342531) (= lt!342523 lt!342527)) (= lambda!31832 lambda!31811))))

(assert (=> bs!239042 (not (= lambda!31832 lambda!31792))))

(assert (=> bs!239039 (not (= lambda!31832 lambda!31823))))

(assert (=> d!282732 true))

(assert (=> d!282732 true))

(assert (=> d!282732 true))

(assert (=> d!282732 (= (isDefined!1818 (findConcatSeparation!282 (reg!2914 r!15766) lt!342523 Nil!9799 s!10566 s!10566)) (Exists!336 lambda!31832))))

(declare-fun lt!342586 () Unit!14789)

(assert (=> d!282732 (= lt!342586 (choose!5838 (reg!2914 r!15766) lt!342523 s!10566))))

(assert (=> d!282732 (validRegex!1054 (reg!2914 r!15766))))

(assert (=> d!282732 (= (lemmaFindConcatSeparationEquivalentToExists!282 (reg!2914 r!15766) lt!342523 s!10566) lt!342586)))

(declare-fun bs!239046 () Bool)

(assert (= bs!239046 d!282732))

(assert (=> bs!239046 m!1158727))

(assert (=> bs!239046 m!1158727))

(assert (=> bs!239046 m!1158733))

(assert (=> bs!239046 m!1158899))

(declare-fun m!1158955 () Bool)

(assert (=> bs!239046 m!1158955))

(declare-fun m!1158957 () Bool)

(assert (=> bs!239046 m!1158957))

(assert (=> b!942066 d!282732))

(declare-fun b!942528 () Bool)

(declare-fun res!428145 () Bool)

(declare-fun e!611274 () Bool)

(assert (=> b!942528 (=> (not res!428145) (not e!611274))))

(declare-fun call!58815 () Bool)

(assert (=> b!942528 (= res!428145 (not call!58815))))

(declare-fun b!942530 () Bool)

(declare-fun e!611275 () Bool)

(declare-fun e!611271 () Bool)

(assert (=> b!942530 (= e!611275 e!611271)))

(declare-fun res!428148 () Bool)

(assert (=> b!942530 (=> (not res!428148) (not e!611271))))

(declare-fun lt!342599 () Bool)

(assert (=> b!942530 (= res!428148 (not lt!342599))))

(declare-fun b!942531 () Bool)

(declare-fun e!611276 () Bool)

(assert (=> b!942531 (= e!611271 e!611276)))

(declare-fun res!428147 () Bool)

(assert (=> b!942531 (=> res!428147 e!611276)))

(assert (=> b!942531 (= res!428147 call!58815)))

(declare-fun b!942532 () Bool)

(declare-fun e!611272 () Bool)

(assert (=> b!942532 (= e!611272 (nullable!755 lt!342527))))

(declare-fun b!942533 () Bool)

(declare-fun res!428143 () Bool)

(assert (=> b!942533 (=> res!428143 e!611275)))

(assert (=> b!942533 (= res!428143 e!611274)))

(declare-fun res!428144 () Bool)

(assert (=> b!942533 (=> (not res!428144) (not e!611274))))

(assert (=> b!942533 (= res!428144 lt!342599)))

(declare-fun b!942534 () Bool)

(declare-fun res!428150 () Bool)

(assert (=> b!942534 (=> res!428150 e!611276)))

(declare-fun tail!1279 (List!9815) List!9815)

(assert (=> b!942534 (= res!428150 (not (isEmpty!6050 (tail!1279 s!10566))))))

(declare-fun bm!58810 () Bool)

(assert (=> bm!58810 (= call!58815 (isEmpty!6050 s!10566))))

(declare-fun b!942529 () Bool)

(declare-fun derivativeStep!564 (Regex!2585 C!5740) Regex!2585)

(declare-fun head!1717 (List!9815) C!5740)

(assert (=> b!942529 (= e!611272 (matchR!1123 (derivativeStep!564 lt!342527 (head!1717 s!10566)) (tail!1279 s!10566)))))

(declare-fun d!282734 () Bool)

(declare-fun e!611270 () Bool)

(assert (=> d!282734 e!611270))

(declare-fun c!153433 () Bool)

(assert (=> d!282734 (= c!153433 ((_ is EmptyExpr!2585) lt!342527))))

(assert (=> d!282734 (= lt!342599 e!611272)))

(declare-fun c!153432 () Bool)

(assert (=> d!282734 (= c!153432 (isEmpty!6050 s!10566))))

(assert (=> d!282734 (validRegex!1054 lt!342527)))

(assert (=> d!282734 (= (matchR!1123 lt!342527 s!10566) lt!342599)))

(declare-fun b!942535 () Bool)

(declare-fun res!428149 () Bool)

(assert (=> b!942535 (=> res!428149 e!611275)))

(assert (=> b!942535 (= res!428149 (not ((_ is ElementMatch!2585) lt!342527)))))

(declare-fun e!611273 () Bool)

(assert (=> b!942535 (= e!611273 e!611275)))

(declare-fun b!942536 () Bool)

(assert (=> b!942536 (= e!611274 (= (head!1717 s!10566) (c!153314 lt!342527)))))

(declare-fun b!942537 () Bool)

(declare-fun res!428146 () Bool)

(assert (=> b!942537 (=> (not res!428146) (not e!611274))))

(assert (=> b!942537 (= res!428146 (isEmpty!6050 (tail!1279 s!10566)))))

(declare-fun b!942538 () Bool)

(assert (=> b!942538 (= e!611270 (= lt!342599 call!58815))))

(declare-fun b!942539 () Bool)

(assert (=> b!942539 (= e!611273 (not lt!342599))))

(declare-fun b!942540 () Bool)

(assert (=> b!942540 (= e!611276 (not (= (head!1717 s!10566) (c!153314 lt!342527))))))

(declare-fun b!942541 () Bool)

(assert (=> b!942541 (= e!611270 e!611273)))

(declare-fun c!153431 () Bool)

(assert (=> b!942541 (= c!153431 ((_ is EmptyLang!2585) lt!342527))))

(assert (= (and d!282734 c!153432) b!942532))

(assert (= (and d!282734 (not c!153432)) b!942529))

(assert (= (and d!282734 c!153433) b!942538))

(assert (= (and d!282734 (not c!153433)) b!942541))

(assert (= (and b!942541 c!153431) b!942539))

(assert (= (and b!942541 (not c!153431)) b!942535))

(assert (= (and b!942535 (not res!428149)) b!942533))

(assert (= (and b!942533 res!428144) b!942528))

(assert (= (and b!942528 res!428145) b!942537))

(assert (= (and b!942537 res!428146) b!942536))

(assert (= (and b!942533 (not res!428143)) b!942530))

(assert (= (and b!942530 res!428148) b!942531))

(assert (= (and b!942531 (not res!428147)) b!942534))

(assert (= (and b!942534 (not res!428150)) b!942540))

(assert (= (or b!942538 b!942528 b!942531) bm!58810))

(declare-fun m!1159003 () Bool)

(assert (=> b!942532 m!1159003))

(declare-fun m!1159005 () Bool)

(assert (=> b!942529 m!1159005))

(assert (=> b!942529 m!1159005))

(declare-fun m!1159007 () Bool)

(assert (=> b!942529 m!1159007))

(declare-fun m!1159011 () Bool)

(assert (=> b!942529 m!1159011))

(assert (=> b!942529 m!1159007))

(assert (=> b!942529 m!1159011))

(declare-fun m!1159015 () Bool)

(assert (=> b!942529 m!1159015))

(assert (=> b!942537 m!1159011))

(assert (=> b!942537 m!1159011))

(declare-fun m!1159019 () Bool)

(assert (=> b!942537 m!1159019))

(assert (=> bm!58810 m!1158707))

(assert (=> b!942536 m!1159005))

(assert (=> b!942534 m!1159011))

(assert (=> b!942534 m!1159011))

(assert (=> b!942534 m!1159019))

(assert (=> d!282734 m!1158707))

(assert (=> d!282734 m!1158737))

(assert (=> b!942540 m!1159005))

(assert (=> b!942066 d!282734))

(declare-fun d!282744 () Bool)

(assert (=> d!282744 (= (isDefined!1818 (findConcatSeparation!282 (reg!2914 r!15766) lt!342523 Nil!9799 s!10566 s!10566)) (not (isEmpty!6051 (findConcatSeparation!282 (reg!2914 r!15766) lt!342523 Nil!9799 s!10566 s!10566))))))

(declare-fun bs!239047 () Bool)

(assert (= bs!239047 d!282744))

(assert (=> bs!239047 m!1158727))

(declare-fun m!1159021 () Bool)

(assert (=> bs!239047 m!1159021))

(assert (=> b!942066 d!282744))

(declare-fun bs!239048 () Bool)

(declare-fun b!942558 () Bool)

(assert (= bs!239048 (and b!942558 d!282684)))

(declare-fun lambda!31833 () Int)

(assert (=> bs!239048 (not (= lambda!31833 lambda!31822))))

(declare-fun bs!239049 () Bool)

(assert (= bs!239049 (and b!942558 d!282706)))

(assert (=> bs!239049 (= (= r!15766 (Star!2585 (reg!2914 r!15766))) (= lambda!31833 lambda!31828))))

(declare-fun bs!239050 () Bool)

(assert (= bs!239050 (and b!942558 b!942168)))

(assert (=> bs!239050 (= (and (= (reg!2914 r!15766) (reg!2914 lt!342527)) (= r!15766 lt!342527)) (= lambda!31833 lambda!31803))))

(declare-fun bs!239051 () Bool)

(assert (= bs!239051 (and b!942558 b!942066)))

(assert (=> bs!239051 (not (= lambda!31833 lambda!31791))))

(declare-fun bs!239052 () Bool)

(assert (= bs!239052 (and b!942558 b!942062)))

(assert (=> bs!239052 (= (and (= (reg!2914 r!15766) lt!342531) (= r!15766 lt!342527)) (= lambda!31833 lambda!31794))))

(assert (=> bs!239049 (not (= lambda!31833 lambda!31826))))

(declare-fun bs!239053 () Bool)

(assert (= bs!239053 (and b!942558 d!282732)))

(assert (=> bs!239053 (not (= lambda!31833 lambda!31832))))

(declare-fun bs!239054 () Bool)

(assert (= bs!239054 (and b!942558 b!942171)))

(assert (=> bs!239054 (not (= lambda!31833 lambda!31804))))

(assert (=> bs!239052 (not (= lambda!31833 lambda!31793))))

(declare-fun bs!239055 () Bool)

(assert (= bs!239055 (and b!942558 d!282678)))

(assert (=> bs!239055 (not (= lambda!31833 lambda!31811))))

(assert (=> bs!239051 (= (= r!15766 lt!342523) (= lambda!31833 lambda!31792))))

(assert (=> bs!239048 (= (and (= (reg!2914 r!15766) lt!342531) (= r!15766 (Star!2585 lt!342531))) (= lambda!31833 lambda!31823))))

(assert (=> b!942558 true))

(assert (=> b!942558 true))

(declare-fun bs!239056 () Bool)

(declare-fun b!942561 () Bool)

(assert (= bs!239056 (and b!942561 d!282684)))

(declare-fun lambda!31834 () Int)

(assert (=> bs!239056 (not (= lambda!31834 lambda!31822))))

(declare-fun bs!239057 () Bool)

(assert (= bs!239057 (and b!942561 d!282706)))

(assert (=> bs!239057 (not (= lambda!31834 lambda!31828))))

(declare-fun bs!239058 () Bool)

(assert (= bs!239058 (and b!942561 b!942168)))

(assert (=> bs!239058 (not (= lambda!31834 lambda!31803))))

(declare-fun bs!239059 () Bool)

(assert (= bs!239059 (and b!942561 b!942066)))

(assert (=> bs!239059 (not (= lambda!31834 lambda!31791))))

(declare-fun bs!239060 () Bool)

(assert (= bs!239060 (and b!942561 b!942062)))

(assert (=> bs!239060 (not (= lambda!31834 lambda!31794))))

(assert (=> bs!239057 (not (= lambda!31834 lambda!31826))))

(declare-fun bs!239061 () Bool)

(assert (= bs!239061 (and b!942561 d!282732)))

(assert (=> bs!239061 (not (= lambda!31834 lambda!31832))))

(declare-fun bs!239062 () Bool)

(assert (= bs!239062 (and b!942561 b!942171)))

(assert (=> bs!239062 (= (and (= (regOne!5682 r!15766) (regOne!5682 lt!342527)) (= (regTwo!5682 r!15766) (regTwo!5682 lt!342527))) (= lambda!31834 lambda!31804))))

(declare-fun bs!239063 () Bool)

(assert (= bs!239063 (and b!942561 d!282678)))

(assert (=> bs!239063 (not (= lambda!31834 lambda!31811))))

(assert (=> bs!239059 (not (= lambda!31834 lambda!31792))))

(assert (=> bs!239056 (not (= lambda!31834 lambda!31823))))

(assert (=> bs!239060 (not (= lambda!31834 lambda!31793))))

(declare-fun bs!239064 () Bool)

(assert (= bs!239064 (and b!942561 b!942558)))

(assert (=> bs!239064 (not (= lambda!31834 lambda!31833))))

(assert (=> b!942561 true))

(assert (=> b!942561 true))

(declare-fun bm!58814 () Bool)

(declare-fun call!58820 () Bool)

(assert (=> bm!58814 (= call!58820 (isEmpty!6050 s!10566))))

(declare-fun b!942557 () Bool)

(declare-fun e!611286 () Bool)

(declare-fun e!611291 () Bool)

(assert (=> b!942557 (= e!611286 e!611291)))

(declare-fun c!153437 () Bool)

(assert (=> b!942557 (= c!153437 ((_ is Star!2585) r!15766))))

(declare-fun e!611288 () Bool)

(declare-fun call!58819 () Bool)

(assert (=> b!942558 (= e!611288 call!58819)))

(declare-fun b!942559 () Bool)

(declare-fun res!428158 () Bool)

(assert (=> b!942559 (=> res!428158 e!611288)))

(assert (=> b!942559 (= res!428158 call!58820)))

(assert (=> b!942559 (= e!611291 e!611288)))

(declare-fun b!942560 () Bool)

(declare-fun e!611290 () Bool)

(assert (=> b!942560 (= e!611290 (matchRSpec!386 (regTwo!5683 r!15766) s!10566))))

(assert (=> b!942561 (= e!611291 call!58819)))

(declare-fun b!942562 () Bool)

(declare-fun e!611289 () Bool)

(assert (=> b!942562 (= e!611289 call!58820)))

(declare-fun d!282746 () Bool)

(declare-fun c!153439 () Bool)

(assert (=> d!282746 (= c!153439 ((_ is EmptyExpr!2585) r!15766))))

(assert (=> d!282746 (= (matchRSpec!386 r!15766 s!10566) e!611289)))

(declare-fun b!942563 () Bool)

(declare-fun e!611287 () Bool)

(assert (=> b!942563 (= e!611287 (= s!10566 (Cons!9799 (c!153314 r!15766) Nil!9799)))))

(declare-fun bm!58815 () Bool)

(assert (=> bm!58815 (= call!58819 (Exists!336 (ite c!153437 lambda!31833 lambda!31834)))))

(declare-fun b!942564 () Bool)

(declare-fun c!153438 () Bool)

(assert (=> b!942564 (= c!153438 ((_ is ElementMatch!2585) r!15766))))

(declare-fun e!611292 () Bool)

(assert (=> b!942564 (= e!611292 e!611287)))

(declare-fun b!942565 () Bool)

(assert (=> b!942565 (= e!611286 e!611290)))

(declare-fun res!428157 () Bool)

(assert (=> b!942565 (= res!428157 (matchRSpec!386 (regOne!5683 r!15766) s!10566))))

(assert (=> b!942565 (=> res!428157 e!611290)))

(declare-fun b!942566 () Bool)

(assert (=> b!942566 (= e!611289 e!611292)))

(declare-fun res!428156 () Bool)

(assert (=> b!942566 (= res!428156 (not ((_ is EmptyLang!2585) r!15766)))))

(assert (=> b!942566 (=> (not res!428156) (not e!611292))))

(declare-fun b!942567 () Bool)

(declare-fun c!153436 () Bool)

(assert (=> b!942567 (= c!153436 ((_ is Union!2585) r!15766))))

(assert (=> b!942567 (= e!611287 e!611286)))

(assert (= (and d!282746 c!153439) b!942562))

(assert (= (and d!282746 (not c!153439)) b!942566))

(assert (= (and b!942566 res!428156) b!942564))

(assert (= (and b!942564 c!153438) b!942563))

(assert (= (and b!942564 (not c!153438)) b!942567))

(assert (= (and b!942567 c!153436) b!942565))

(assert (= (and b!942567 (not c!153436)) b!942557))

(assert (= (and b!942565 (not res!428157)) b!942560))

(assert (= (and b!942557 c!153437) b!942559))

(assert (= (and b!942557 (not c!153437)) b!942561))

(assert (= (and b!942559 (not res!428158)) b!942558))

(assert (= (or b!942558 b!942561) bm!58815))

(assert (= (or b!942562 b!942559) bm!58814))

(assert (=> bm!58814 m!1158707))

(declare-fun m!1159023 () Bool)

(assert (=> b!942560 m!1159023))

(declare-fun m!1159025 () Bool)

(assert (=> bm!58815 m!1159025))

(declare-fun m!1159027 () Bool)

(assert (=> b!942565 m!1159027))

(assert (=> b!942061 d!282746))

(declare-fun b!942597 () Bool)

(declare-fun res!428161 () Bool)

(declare-fun e!611305 () Bool)

(assert (=> b!942597 (=> (not res!428161) (not e!611305))))

(declare-fun call!58821 () Bool)

(assert (=> b!942597 (= res!428161 (not call!58821))))

(declare-fun b!942599 () Bool)

(declare-fun e!611306 () Bool)

(declare-fun e!611302 () Bool)

(assert (=> b!942599 (= e!611306 e!611302)))

(declare-fun res!428164 () Bool)

(assert (=> b!942599 (=> (not res!428164) (not e!611302))))

(declare-fun lt!342600 () Bool)

(assert (=> b!942599 (= res!428164 (not lt!342600))))

(declare-fun b!942600 () Bool)

(declare-fun e!611307 () Bool)

(assert (=> b!942600 (= e!611302 e!611307)))

(declare-fun res!428163 () Bool)

(assert (=> b!942600 (=> res!428163 e!611307)))

(assert (=> b!942600 (= res!428163 call!58821)))

(declare-fun b!942601 () Bool)

(declare-fun e!611303 () Bool)

(assert (=> b!942601 (= e!611303 (nullable!755 r!15766))))

(declare-fun b!942602 () Bool)

(declare-fun res!428159 () Bool)

(assert (=> b!942602 (=> res!428159 e!611306)))

(assert (=> b!942602 (= res!428159 e!611305)))

(declare-fun res!428160 () Bool)

(assert (=> b!942602 (=> (not res!428160) (not e!611305))))

(assert (=> b!942602 (= res!428160 lt!342600)))

(declare-fun b!942603 () Bool)

(declare-fun res!428166 () Bool)

(assert (=> b!942603 (=> res!428166 e!611307)))

(assert (=> b!942603 (= res!428166 (not (isEmpty!6050 (tail!1279 s!10566))))))

(declare-fun bm!58816 () Bool)

(assert (=> bm!58816 (= call!58821 (isEmpty!6050 s!10566))))

(declare-fun b!942598 () Bool)

(assert (=> b!942598 (= e!611303 (matchR!1123 (derivativeStep!564 r!15766 (head!1717 s!10566)) (tail!1279 s!10566)))))

(declare-fun d!282748 () Bool)

(declare-fun e!611301 () Bool)

(assert (=> d!282748 e!611301))

(declare-fun c!153442 () Bool)

(assert (=> d!282748 (= c!153442 ((_ is EmptyExpr!2585) r!15766))))

(assert (=> d!282748 (= lt!342600 e!611303)))

(declare-fun c!153441 () Bool)

(assert (=> d!282748 (= c!153441 (isEmpty!6050 s!10566))))

(assert (=> d!282748 (validRegex!1054 r!15766)))

(assert (=> d!282748 (= (matchR!1123 r!15766 s!10566) lt!342600)))

(declare-fun b!942604 () Bool)

(declare-fun res!428165 () Bool)

(assert (=> b!942604 (=> res!428165 e!611306)))

(assert (=> b!942604 (= res!428165 (not ((_ is ElementMatch!2585) r!15766)))))

(declare-fun e!611304 () Bool)

(assert (=> b!942604 (= e!611304 e!611306)))

(declare-fun b!942605 () Bool)

(assert (=> b!942605 (= e!611305 (= (head!1717 s!10566) (c!153314 r!15766)))))

(declare-fun b!942606 () Bool)

(declare-fun res!428162 () Bool)

(assert (=> b!942606 (=> (not res!428162) (not e!611305))))

(assert (=> b!942606 (= res!428162 (isEmpty!6050 (tail!1279 s!10566)))))

(declare-fun b!942607 () Bool)

(assert (=> b!942607 (= e!611301 (= lt!342600 call!58821))))

(declare-fun b!942608 () Bool)

(assert (=> b!942608 (= e!611304 (not lt!342600))))

(declare-fun b!942609 () Bool)

(assert (=> b!942609 (= e!611307 (not (= (head!1717 s!10566) (c!153314 r!15766))))))

(declare-fun b!942610 () Bool)

(assert (=> b!942610 (= e!611301 e!611304)))

(declare-fun c!153440 () Bool)

(assert (=> b!942610 (= c!153440 ((_ is EmptyLang!2585) r!15766))))

(assert (= (and d!282748 c!153441) b!942601))

(assert (= (and d!282748 (not c!153441)) b!942598))

(assert (= (and d!282748 c!153442) b!942607))

(assert (= (and d!282748 (not c!153442)) b!942610))

(assert (= (and b!942610 c!153440) b!942608))

(assert (= (and b!942610 (not c!153440)) b!942604))

(assert (= (and b!942604 (not res!428165)) b!942602))

(assert (= (and b!942602 res!428160) b!942597))

(assert (= (and b!942597 res!428161) b!942606))

(assert (= (and b!942606 res!428162) b!942605))

(assert (= (and b!942602 (not res!428159)) b!942599))

(assert (= (and b!942599 res!428164) b!942600))

(assert (= (and b!942600 (not res!428163)) b!942603))

(assert (= (and b!942603 (not res!428166)) b!942609))

(assert (= (or b!942607 b!942597 b!942600) bm!58816))

(declare-fun m!1159029 () Bool)

(assert (=> b!942601 m!1159029))

(assert (=> b!942598 m!1159005))

(assert (=> b!942598 m!1159005))

(declare-fun m!1159031 () Bool)

(assert (=> b!942598 m!1159031))

(assert (=> b!942598 m!1159011))

(assert (=> b!942598 m!1159031))

(assert (=> b!942598 m!1159011))

(declare-fun m!1159033 () Bool)

(assert (=> b!942598 m!1159033))

(assert (=> b!942606 m!1159011))

(assert (=> b!942606 m!1159011))

(assert (=> b!942606 m!1159019))

(assert (=> bm!58816 m!1158707))

(assert (=> b!942605 m!1159005))

(assert (=> b!942603 m!1159011))

(assert (=> b!942603 m!1159011))

(assert (=> b!942603 m!1159019))

(assert (=> d!282748 m!1158707))

(assert (=> d!282748 m!1158747))

(assert (=> b!942609 m!1159005))

(assert (=> b!942061 d!282748))

(declare-fun d!282750 () Bool)

(assert (=> d!282750 (= (matchR!1123 r!15766 s!10566) (matchRSpec!386 r!15766 s!10566))))

(declare-fun lt!342601 () Unit!14789)

(assert (=> d!282750 (= lt!342601 (choose!5839 r!15766 s!10566))))

(assert (=> d!282750 (validRegex!1054 r!15766)))

(assert (=> d!282750 (= (mainMatchTheorem!386 r!15766 s!10566) lt!342601)))

(declare-fun bs!239065 () Bool)

(assert (= bs!239065 d!282750))

(assert (=> bs!239065 m!1158741))

(assert (=> bs!239065 m!1158739))

(declare-fun m!1159035 () Bool)

(assert (=> bs!239065 m!1159035))

(assert (=> bs!239065 m!1158747))

(assert (=> b!942061 d!282750))

(declare-fun b!942623 () Bool)

(declare-fun e!611310 () Bool)

(declare-fun tp!291403 () Bool)

(assert (=> b!942623 (= e!611310 tp!291403)))

(declare-fun b!942621 () Bool)

(assert (=> b!942621 (= e!611310 tp_is_empty!4813)))

(assert (=> b!942069 (= tp!291351 e!611310)))

(declare-fun b!942622 () Bool)

(declare-fun tp!291404 () Bool)

(declare-fun tp!291401 () Bool)

(assert (=> b!942622 (= e!611310 (and tp!291404 tp!291401))))

(declare-fun b!942624 () Bool)

(declare-fun tp!291405 () Bool)

(declare-fun tp!291402 () Bool)

(assert (=> b!942624 (= e!611310 (and tp!291405 tp!291402))))

(assert (= (and b!942069 ((_ is ElementMatch!2585) (regOne!5683 r!15766))) b!942621))

(assert (= (and b!942069 ((_ is Concat!4418) (regOne!5683 r!15766))) b!942622))

(assert (= (and b!942069 ((_ is Star!2585) (regOne!5683 r!15766))) b!942623))

(assert (= (and b!942069 ((_ is Union!2585) (regOne!5683 r!15766))) b!942624))

(declare-fun b!942627 () Bool)

(declare-fun e!611311 () Bool)

(declare-fun tp!291408 () Bool)

(assert (=> b!942627 (= e!611311 tp!291408)))

(declare-fun b!942625 () Bool)

(assert (=> b!942625 (= e!611311 tp_is_empty!4813)))

(assert (=> b!942069 (= tp!291352 e!611311)))

(declare-fun b!942626 () Bool)

(declare-fun tp!291409 () Bool)

(declare-fun tp!291406 () Bool)

(assert (=> b!942626 (= e!611311 (and tp!291409 tp!291406))))

(declare-fun b!942628 () Bool)

(declare-fun tp!291410 () Bool)

(declare-fun tp!291407 () Bool)

(assert (=> b!942628 (= e!611311 (and tp!291410 tp!291407))))

(assert (= (and b!942069 ((_ is ElementMatch!2585) (regTwo!5683 r!15766))) b!942625))

(assert (= (and b!942069 ((_ is Concat!4418) (regTwo!5683 r!15766))) b!942626))

(assert (= (and b!942069 ((_ is Star!2585) (regTwo!5683 r!15766))) b!942627))

(assert (= (and b!942069 ((_ is Union!2585) (regTwo!5683 r!15766))) b!942628))

(declare-fun b!942631 () Bool)

(declare-fun e!611312 () Bool)

(declare-fun tp!291413 () Bool)

(assert (=> b!942631 (= e!611312 tp!291413)))

(declare-fun b!942629 () Bool)

(assert (=> b!942629 (= e!611312 tp_is_empty!4813)))

(assert (=> b!942070 (= tp!291348 e!611312)))

(declare-fun b!942630 () Bool)

(declare-fun tp!291414 () Bool)

(declare-fun tp!291411 () Bool)

(assert (=> b!942630 (= e!611312 (and tp!291414 tp!291411))))

(declare-fun b!942632 () Bool)

(declare-fun tp!291415 () Bool)

(declare-fun tp!291412 () Bool)

(assert (=> b!942632 (= e!611312 (and tp!291415 tp!291412))))

(assert (= (and b!942070 ((_ is ElementMatch!2585) (regOne!5682 r!15766))) b!942629))

(assert (= (and b!942070 ((_ is Concat!4418) (regOne!5682 r!15766))) b!942630))

(assert (= (and b!942070 ((_ is Star!2585) (regOne!5682 r!15766))) b!942631))

(assert (= (and b!942070 ((_ is Union!2585) (regOne!5682 r!15766))) b!942632))

(declare-fun b!942635 () Bool)

(declare-fun e!611313 () Bool)

(declare-fun tp!291418 () Bool)

(assert (=> b!942635 (= e!611313 tp!291418)))

(declare-fun b!942633 () Bool)

(assert (=> b!942633 (= e!611313 tp_is_empty!4813)))

(assert (=> b!942070 (= tp!291350 e!611313)))

(declare-fun b!942634 () Bool)

(declare-fun tp!291419 () Bool)

(declare-fun tp!291416 () Bool)

(assert (=> b!942634 (= e!611313 (and tp!291419 tp!291416))))

(declare-fun b!942636 () Bool)

(declare-fun tp!291420 () Bool)

(declare-fun tp!291417 () Bool)

(assert (=> b!942636 (= e!611313 (and tp!291420 tp!291417))))

(assert (= (and b!942070 ((_ is ElementMatch!2585) (regTwo!5682 r!15766))) b!942633))

(assert (= (and b!942070 ((_ is Concat!4418) (regTwo!5682 r!15766))) b!942634))

(assert (= (and b!942070 ((_ is Star!2585) (regTwo!5682 r!15766))) b!942635))

(assert (= (and b!942070 ((_ is Union!2585) (regTwo!5682 r!15766))) b!942636))

(declare-fun b!942639 () Bool)

(declare-fun e!611314 () Bool)

(declare-fun tp!291423 () Bool)

(assert (=> b!942639 (= e!611314 tp!291423)))

(declare-fun b!942637 () Bool)

(assert (=> b!942637 (= e!611314 tp_is_empty!4813)))

(assert (=> b!942065 (= tp!291349 e!611314)))

(declare-fun b!942638 () Bool)

(declare-fun tp!291424 () Bool)

(declare-fun tp!291421 () Bool)

(assert (=> b!942638 (= e!611314 (and tp!291424 tp!291421))))

(declare-fun b!942640 () Bool)

(declare-fun tp!291425 () Bool)

(declare-fun tp!291422 () Bool)

(assert (=> b!942640 (= e!611314 (and tp!291425 tp!291422))))

(assert (= (and b!942065 ((_ is ElementMatch!2585) (reg!2914 r!15766))) b!942637))

(assert (= (and b!942065 ((_ is Concat!4418) (reg!2914 r!15766))) b!942638))

(assert (= (and b!942065 ((_ is Star!2585) (reg!2914 r!15766))) b!942639))

(assert (= (and b!942065 ((_ is Union!2585) (reg!2914 r!15766))) b!942640))

(declare-fun b!942645 () Bool)

(declare-fun e!611317 () Bool)

(declare-fun tp!291428 () Bool)

(assert (=> b!942645 (= e!611317 (and tp_is_empty!4813 tp!291428))))

(assert (=> b!942071 (= tp!291347 e!611317)))

(assert (= (and b!942071 ((_ is Cons!9799) (t!100861 s!10566))) b!942645))

(check-sat (not d!282692) (not d!282678) (not bm!58773) (not b!942378) (not b!942631) (not d!282734) (not d!282684) (not b!942379) (not b!942601) (not d!282714) (not b!942252) (not b!942532) (not b!942639) (not bm!58751) (not b!942609) (not bm!58765) (not bm!58814) (not b!942636) (not b!942606) (not b!942598) (not d!282750) (not b!942634) (not b!942640) (not b!942383) (not b!942560) (not b!942536) tp_is_empty!4813 (not bm!58815) (not d!282702) (not b!942255) (not b!942626) (not b!942371) (not b!942421) (not bm!58771) (not b!942385) (not bm!58767) (not b!942175) (not b!942632) (not b!942624) (not b!942635) (not bm!58787) (not b!942380) (not b!942537) (not d!282704) (not b!942628) (not bm!58770) (not bm!58790) (not b!942645) (not b!942362) (not b!942623) (not b!942321) (not b!942603) (not d!282744) (not b!942534) (not b!942382) (not bm!58810) (not b!942320) (not b!942540) (not b!942170) (not d!282674) (not d!282706) (not b!942605) (not b!942251) (not bm!58750) (not b!942565) (not b!942254) (not d!282682) (not bm!58816) (not d!282716) (not d!282658) (not d!282748) (not b!942627) (not b!942622) (not b!942638) (not b!942353) (not bm!58768) (not b!942250) (not d!282664) (not b!942630) (not d!282732) (not b!942529) (not d!282670) (not b!942257))
(check-sat)

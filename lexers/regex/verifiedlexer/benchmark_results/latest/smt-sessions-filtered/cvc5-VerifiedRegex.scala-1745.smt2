; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!87348 () Bool)

(assert start!87348)

(declare-fun b!988804 () Bool)

(assert (=> b!988804 true))

(assert (=> b!988804 true))

(declare-fun lambda!35212 () Int)

(declare-fun lambda!35211 () Int)

(assert (=> b!988804 (not (= lambda!35212 lambda!35211))))

(assert (=> b!988804 true))

(assert (=> b!988804 true))

(declare-fun b!988800 () Bool)

(declare-fun e!635156 () Bool)

(declare-fun e!635154 () Bool)

(assert (=> b!988800 (= e!635156 (not e!635154))))

(declare-fun res!447685 () Bool)

(assert (=> b!988800 (=> res!447685 e!635154)))

(declare-fun lt!350692 () Bool)

(declare-datatypes ((C!6066 0))(
  ( (C!6067 (val!3281 Int)) )
))
(declare-datatypes ((Regex!2748 0))(
  ( (ElementMatch!2748 (c!162111 C!6066)) (Concat!4581 (regOne!6008 Regex!2748) (regTwo!6008 Regex!2748)) (EmptyExpr!2748) (Star!2748 (reg!3077 Regex!2748)) (EmptyLang!2748) (Union!2748 (regOne!6009 Regex!2748) (regTwo!6009 Regex!2748)) )
))
(declare-fun r!15766 () Regex!2748)

(assert (=> b!988800 (= res!447685 (or (not lt!350692) (and (is-Concat!4581 r!15766) (is-EmptyExpr!2748 (regOne!6008 r!15766))) (and (is-Concat!4581 r!15766) (is-EmptyExpr!2748 (regTwo!6008 r!15766))) (not (is-Concat!4581 r!15766))))))

(declare-datatypes ((List!9978 0))(
  ( (Nil!9962) (Cons!9962 (h!15363 C!6066) (t!101024 List!9978)) )
))
(declare-fun s!10566 () List!9978)

(declare-fun matchRSpec!547 (Regex!2748 List!9978) Bool)

(assert (=> b!988800 (= lt!350692 (matchRSpec!547 r!15766 s!10566))))

(declare-fun matchR!1284 (Regex!2748 List!9978) Bool)

(assert (=> b!988800 (= lt!350692 (matchR!1284 r!15766 s!10566))))

(declare-datatypes ((Unit!15155 0))(
  ( (Unit!15156) )
))
(declare-fun lt!350691 () Unit!15155)

(declare-fun mainMatchTheorem!547 (Regex!2748 List!9978) Unit!15155)

(assert (=> b!988800 (= lt!350691 (mainMatchTheorem!547 r!15766 s!10566))))

(declare-fun b!988801 () Bool)

(declare-fun e!635159 () Bool)

(declare-fun validRegex!1217 (Regex!2748) Bool)

(assert (=> b!988801 (= e!635159 (validRegex!1217 (regTwo!6008 r!15766)))))

(declare-datatypes ((tuple2!11342 0))(
  ( (tuple2!11343 (_1!6497 List!9978) (_2!6497 List!9978)) )
))
(declare-fun lt!350694 () tuple2!11342)

(declare-fun removeUselessConcat!353 (Regex!2748) Regex!2748)

(assert (=> b!988801 (matchR!1284 (removeUselessConcat!353 (regOne!6008 r!15766)) (_1!6497 lt!350694))))

(declare-fun lt!350689 () Unit!15155)

(declare-fun lemmaRemoveUselessConcatSound!199 (Regex!2748 List!9978) Unit!15155)

(assert (=> b!988801 (= lt!350689 (lemmaRemoveUselessConcatSound!199 (regOne!6008 r!15766) (_1!6497 lt!350694)))))

(declare-fun b!988802 () Bool)

(declare-fun e!635158 () Bool)

(declare-fun tp!302059 () Bool)

(declare-fun tp!302058 () Bool)

(assert (=> b!988802 (= e!635158 (and tp!302059 tp!302058))))

(declare-fun b!988803 () Bool)

(declare-fun e!635155 () Bool)

(assert (=> b!988803 (= e!635155 e!635159)))

(declare-fun res!447687 () Bool)

(assert (=> b!988803 (=> res!447687 e!635159)))

(assert (=> b!988803 (= res!447687 (not (matchR!1284 (regOne!6008 r!15766) (_1!6497 lt!350694))))))

(declare-datatypes ((Option!2313 0))(
  ( (None!2312) (Some!2312 (v!19729 tuple2!11342)) )
))
(declare-fun lt!350693 () Option!2313)

(declare-fun get!3465 (Option!2313) tuple2!11342)

(assert (=> b!988803 (= lt!350694 (get!3465 lt!350693))))

(assert (=> b!988804 (= e!635154 e!635155)))

(declare-fun res!447686 () Bool)

(assert (=> b!988804 (=> res!447686 e!635155)))

(declare-fun isEmpty!6295 (List!9978) Bool)

(assert (=> b!988804 (= res!447686 (isEmpty!6295 s!10566))))

(declare-fun Exists!485 (Int) Bool)

(assert (=> b!988804 (= (Exists!485 lambda!35211) (Exists!485 lambda!35212))))

(declare-fun lt!350690 () Unit!15155)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!235 (Regex!2748 Regex!2748 List!9978) Unit!15155)

(assert (=> b!988804 (= lt!350690 (lemmaExistCutMatchRandMatchRSpecEquivalent!235 (regOne!6008 r!15766) (regTwo!6008 r!15766) s!10566))))

(declare-fun isDefined!1955 (Option!2313) Bool)

(assert (=> b!988804 (= (isDefined!1955 lt!350693) (Exists!485 lambda!35211))))

(declare-fun findConcatSeparation!419 (Regex!2748 Regex!2748 List!9978 List!9978 List!9978) Option!2313)

(assert (=> b!988804 (= lt!350693 (findConcatSeparation!419 (regOne!6008 r!15766) (regTwo!6008 r!15766) Nil!9962 s!10566 s!10566))))

(declare-fun lt!350688 () Unit!15155)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!419 (Regex!2748 Regex!2748 List!9978) Unit!15155)

(assert (=> b!988804 (= lt!350688 (lemmaFindConcatSeparationEquivalentToExists!419 (regOne!6008 r!15766) (regTwo!6008 r!15766) s!10566))))

(declare-fun res!447688 () Bool)

(assert (=> start!87348 (=> (not res!447688) (not e!635156))))

(assert (=> start!87348 (= res!447688 (validRegex!1217 r!15766))))

(assert (=> start!87348 e!635156))

(assert (=> start!87348 e!635158))

(declare-fun e!635157 () Bool)

(assert (=> start!87348 e!635157))

(declare-fun b!988805 () Bool)

(declare-fun tp_is_empty!5139 () Bool)

(assert (=> b!988805 (= e!635158 tp_is_empty!5139)))

(declare-fun b!988806 () Bool)

(declare-fun tp!302060 () Bool)

(declare-fun tp!302061 () Bool)

(assert (=> b!988806 (= e!635158 (and tp!302060 tp!302061))))

(declare-fun b!988807 () Bool)

(declare-fun tp!302062 () Bool)

(assert (=> b!988807 (= e!635158 tp!302062)))

(declare-fun b!988808 () Bool)

(declare-fun tp!302057 () Bool)

(assert (=> b!988808 (= e!635157 (and tp_is_empty!5139 tp!302057))))

(declare-fun b!988809 () Bool)

(declare-fun res!447689 () Bool)

(assert (=> b!988809 (=> res!447689 e!635159)))

(assert (=> b!988809 (= res!447689 (not (matchR!1284 (regTwo!6008 r!15766) (_2!6497 lt!350694))))))

(assert (= (and start!87348 res!447688) b!988800))

(assert (= (and b!988800 (not res!447685)) b!988804))

(assert (= (and b!988804 (not res!447686)) b!988803))

(assert (= (and b!988803 (not res!447687)) b!988809))

(assert (= (and b!988809 (not res!447689)) b!988801))

(assert (= (and start!87348 (is-ElementMatch!2748 r!15766)) b!988805))

(assert (= (and start!87348 (is-Concat!4581 r!15766)) b!988806))

(assert (= (and start!87348 (is-Star!2748 r!15766)) b!988807))

(assert (= (and start!87348 (is-Union!2748 r!15766)) b!988802))

(assert (= (and start!87348 (is-Cons!9962 s!10566)) b!988808))

(declare-fun m!1184049 () Bool)

(assert (=> b!988804 m!1184049))

(declare-fun m!1184051 () Bool)

(assert (=> b!988804 m!1184051))

(declare-fun m!1184053 () Bool)

(assert (=> b!988804 m!1184053))

(declare-fun m!1184055 () Bool)

(assert (=> b!988804 m!1184055))

(declare-fun m!1184057 () Bool)

(assert (=> b!988804 m!1184057))

(assert (=> b!988804 m!1184051))

(declare-fun m!1184059 () Bool)

(assert (=> b!988804 m!1184059))

(declare-fun m!1184061 () Bool)

(assert (=> b!988804 m!1184061))

(declare-fun m!1184063 () Bool)

(assert (=> b!988803 m!1184063))

(declare-fun m!1184065 () Bool)

(assert (=> b!988803 m!1184065))

(declare-fun m!1184067 () Bool)

(assert (=> start!87348 m!1184067))

(declare-fun m!1184069 () Bool)

(assert (=> b!988809 m!1184069))

(declare-fun m!1184071 () Bool)

(assert (=> b!988801 m!1184071))

(declare-fun m!1184073 () Bool)

(assert (=> b!988801 m!1184073))

(assert (=> b!988801 m!1184073))

(declare-fun m!1184075 () Bool)

(assert (=> b!988801 m!1184075))

(declare-fun m!1184077 () Bool)

(assert (=> b!988801 m!1184077))

(declare-fun m!1184079 () Bool)

(assert (=> b!988800 m!1184079))

(declare-fun m!1184081 () Bool)

(assert (=> b!988800 m!1184081))

(declare-fun m!1184083 () Bool)

(assert (=> b!988800 m!1184083))

(push 1)

(assert (not b!988808))

(assert (not b!988800))

(assert (not b!988802))

(assert (not b!988809))

(assert tp_is_empty!5139)

(assert (not b!988807))

(assert (not b!988801))

(assert (not start!87348))

(assert (not b!988806))

(assert (not b!988803))

(assert (not b!988804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!289522 () Bool)

(declare-fun isEmpty!6297 (Option!2313) Bool)

(assert (=> d!289522 (= (isDefined!1955 lt!350693) (not (isEmpty!6297 lt!350693)))))

(declare-fun bs!244484 () Bool)

(assert (= bs!244484 d!289522))

(declare-fun m!1184121 () Bool)

(assert (=> bs!244484 m!1184121))

(assert (=> b!988804 d!289522))

(declare-fun d!289524 () Bool)

(declare-fun choose!6258 (Int) Bool)

(assert (=> d!289524 (= (Exists!485 lambda!35212) (choose!6258 lambda!35212))))

(declare-fun bs!244485 () Bool)

(assert (= bs!244485 d!289524))

(declare-fun m!1184123 () Bool)

(assert (=> bs!244485 m!1184123))

(assert (=> b!988804 d!289524))

(declare-fun d!289526 () Bool)

(assert (=> d!289526 (= (isEmpty!6295 s!10566) (is-Nil!9962 s!10566))))

(assert (=> b!988804 d!289526))

(declare-fun bs!244486 () Bool)

(declare-fun d!289530 () Bool)

(assert (= bs!244486 (and d!289530 b!988804)))

(declare-fun lambda!35223 () Int)

(assert (=> bs!244486 (= lambda!35223 lambda!35211)))

(assert (=> bs!244486 (not (= lambda!35223 lambda!35212))))

(assert (=> d!289530 true))

(assert (=> d!289530 true))

(assert (=> d!289530 true))

(assert (=> d!289530 (= (isDefined!1955 (findConcatSeparation!419 (regOne!6008 r!15766) (regTwo!6008 r!15766) Nil!9962 s!10566 s!10566)) (Exists!485 lambda!35223))))

(declare-fun lt!350718 () Unit!15155)

(declare-fun choose!6259 (Regex!2748 Regex!2748 List!9978) Unit!15155)

(assert (=> d!289530 (= lt!350718 (choose!6259 (regOne!6008 r!15766) (regTwo!6008 r!15766) s!10566))))

(assert (=> d!289530 (validRegex!1217 (regOne!6008 r!15766))))

(assert (=> d!289530 (= (lemmaFindConcatSeparationEquivalentToExists!419 (regOne!6008 r!15766) (regTwo!6008 r!15766) s!10566) lt!350718)))

(declare-fun bs!244487 () Bool)

(assert (= bs!244487 d!289530))

(declare-fun m!1184125 () Bool)

(assert (=> bs!244487 m!1184125))

(declare-fun m!1184127 () Bool)

(assert (=> bs!244487 m!1184127))

(assert (=> bs!244487 m!1184061))

(assert (=> bs!244487 m!1184061))

(declare-fun m!1184129 () Bool)

(assert (=> bs!244487 m!1184129))

(declare-fun m!1184131 () Bool)

(assert (=> bs!244487 m!1184131))

(assert (=> b!988804 d!289530))

(declare-fun d!289532 () Bool)

(assert (=> d!289532 (= (Exists!485 lambda!35211) (choose!6258 lambda!35211))))

(declare-fun bs!244488 () Bool)

(assert (= bs!244488 d!289532))

(declare-fun m!1184133 () Bool)

(assert (=> bs!244488 m!1184133))

(assert (=> b!988804 d!289532))

(declare-fun b!988910 () Bool)

(declare-fun e!635212 () Bool)

(declare-fun lt!350729 () Option!2313)

(declare-fun ++!2709 (List!9978 List!9978) List!9978)

(assert (=> b!988910 (= e!635212 (= (++!2709 (_1!6497 (get!3465 lt!350729)) (_2!6497 (get!3465 lt!350729))) s!10566))))

(declare-fun d!289534 () Bool)

(declare-fun e!635210 () Bool)

(assert (=> d!289534 e!635210))

(declare-fun res!447751 () Bool)

(assert (=> d!289534 (=> res!447751 e!635210)))

(assert (=> d!289534 (= res!447751 e!635212)))

(declare-fun res!447749 () Bool)

(assert (=> d!289534 (=> (not res!447749) (not e!635212))))

(assert (=> d!289534 (= res!447749 (isDefined!1955 lt!350729))))

(declare-fun e!635211 () Option!2313)

(assert (=> d!289534 (= lt!350729 e!635211)))

(declare-fun c!162124 () Bool)

(declare-fun e!635213 () Bool)

(assert (=> d!289534 (= c!162124 e!635213)))

(declare-fun res!447748 () Bool)

(assert (=> d!289534 (=> (not res!447748) (not e!635213))))

(assert (=> d!289534 (= res!447748 (matchR!1284 (regOne!6008 r!15766) Nil!9962))))

(assert (=> d!289534 (validRegex!1217 (regOne!6008 r!15766))))

(assert (=> d!289534 (= (findConcatSeparation!419 (regOne!6008 r!15766) (regTwo!6008 r!15766) Nil!9962 s!10566 s!10566) lt!350729)))

(declare-fun b!988911 () Bool)

(assert (=> b!988911 (= e!635211 (Some!2312 (tuple2!11343 Nil!9962 s!10566)))))

(declare-fun b!988912 () Bool)

(declare-fun res!447750 () Bool)

(assert (=> b!988912 (=> (not res!447750) (not e!635212))))

(assert (=> b!988912 (= res!447750 (matchR!1284 (regOne!6008 r!15766) (_1!6497 (get!3465 lt!350729))))))

(declare-fun b!988913 () Bool)

(declare-fun res!447747 () Bool)

(assert (=> b!988913 (=> (not res!447747) (not e!635212))))

(assert (=> b!988913 (= res!447747 (matchR!1284 (regTwo!6008 r!15766) (_2!6497 (get!3465 lt!350729))))))

(declare-fun b!988914 () Bool)

(assert (=> b!988914 (= e!635210 (not (isDefined!1955 lt!350729)))))

(declare-fun b!988915 () Bool)

(declare-fun lt!350728 () Unit!15155)

(declare-fun lt!350727 () Unit!15155)

(assert (=> b!988915 (= lt!350728 lt!350727)))

(assert (=> b!988915 (= (++!2709 (++!2709 Nil!9962 (Cons!9962 (h!15363 s!10566) Nil!9962)) (t!101024 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!309 (List!9978 C!6066 List!9978 List!9978) Unit!15155)

(assert (=> b!988915 (= lt!350727 (lemmaMoveElementToOtherListKeepsConcatEq!309 Nil!9962 (h!15363 s!10566) (t!101024 s!10566) s!10566))))

(declare-fun e!635214 () Option!2313)

(assert (=> b!988915 (= e!635214 (findConcatSeparation!419 (regOne!6008 r!15766) (regTwo!6008 r!15766) (++!2709 Nil!9962 (Cons!9962 (h!15363 s!10566) Nil!9962)) (t!101024 s!10566) s!10566))))

(declare-fun b!988916 () Bool)

(assert (=> b!988916 (= e!635214 None!2312)))

(declare-fun b!988917 () Bool)

(assert (=> b!988917 (= e!635211 e!635214)))

(declare-fun c!162123 () Bool)

(assert (=> b!988917 (= c!162123 (is-Nil!9962 s!10566))))

(declare-fun b!988918 () Bool)

(assert (=> b!988918 (= e!635213 (matchR!1284 (regTwo!6008 r!15766) s!10566))))

(assert (= (and d!289534 res!447748) b!988918))

(assert (= (and d!289534 c!162124) b!988911))

(assert (= (and d!289534 (not c!162124)) b!988917))

(assert (= (and b!988917 c!162123) b!988916))

(assert (= (and b!988917 (not c!162123)) b!988915))

(assert (= (and d!289534 res!447749) b!988912))

(assert (= (and b!988912 res!447750) b!988913))

(assert (= (and b!988913 res!447747) b!988910))

(assert (= (and d!289534 (not res!447751)) b!988914))

(declare-fun m!1184135 () Bool)

(assert (=> b!988910 m!1184135))

(declare-fun m!1184137 () Bool)

(assert (=> b!988910 m!1184137))

(assert (=> b!988912 m!1184135))

(declare-fun m!1184139 () Bool)

(assert (=> b!988912 m!1184139))

(declare-fun m!1184141 () Bool)

(assert (=> b!988918 m!1184141))

(declare-fun m!1184143 () Bool)

(assert (=> b!988914 m!1184143))

(declare-fun m!1184145 () Bool)

(assert (=> b!988915 m!1184145))

(assert (=> b!988915 m!1184145))

(declare-fun m!1184147 () Bool)

(assert (=> b!988915 m!1184147))

(declare-fun m!1184149 () Bool)

(assert (=> b!988915 m!1184149))

(assert (=> b!988915 m!1184145))

(declare-fun m!1184151 () Bool)

(assert (=> b!988915 m!1184151))

(assert (=> b!988913 m!1184135))

(declare-fun m!1184153 () Bool)

(assert (=> b!988913 m!1184153))

(assert (=> d!289534 m!1184143))

(declare-fun m!1184155 () Bool)

(assert (=> d!289534 m!1184155))

(assert (=> d!289534 m!1184125))

(assert (=> b!988804 d!289534))

(declare-fun bs!244489 () Bool)

(declare-fun d!289536 () Bool)

(assert (= bs!244489 (and d!289536 b!988804)))

(declare-fun lambda!35228 () Int)

(assert (=> bs!244489 (= lambda!35228 lambda!35211)))

(assert (=> bs!244489 (not (= lambda!35228 lambda!35212))))

(declare-fun bs!244490 () Bool)

(assert (= bs!244490 (and d!289536 d!289530)))

(assert (=> bs!244490 (= lambda!35228 lambda!35223)))

(assert (=> d!289536 true))

(assert (=> d!289536 true))

(assert (=> d!289536 true))

(declare-fun lambda!35229 () Int)

(assert (=> bs!244489 (not (= lambda!35229 lambda!35211))))

(assert (=> bs!244489 (= lambda!35229 lambda!35212)))

(assert (=> bs!244490 (not (= lambda!35229 lambda!35223))))

(declare-fun bs!244491 () Bool)

(assert (= bs!244491 d!289536))

(assert (=> bs!244491 (not (= lambda!35229 lambda!35228))))

(assert (=> d!289536 true))

(assert (=> d!289536 true))

(assert (=> d!289536 true))

(assert (=> d!289536 (= (Exists!485 lambda!35228) (Exists!485 lambda!35229))))

(declare-fun lt!350733 () Unit!15155)

(declare-fun choose!6260 (Regex!2748 Regex!2748 List!9978) Unit!15155)

(assert (=> d!289536 (= lt!350733 (choose!6260 (regOne!6008 r!15766) (regTwo!6008 r!15766) s!10566))))

(assert (=> d!289536 (validRegex!1217 (regOne!6008 r!15766))))

(assert (=> d!289536 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!235 (regOne!6008 r!15766) (regTwo!6008 r!15766) s!10566) lt!350733)))

(declare-fun m!1184171 () Bool)

(assert (=> bs!244491 m!1184171))

(declare-fun m!1184173 () Bool)

(assert (=> bs!244491 m!1184173))

(declare-fun m!1184175 () Bool)

(assert (=> bs!244491 m!1184175))

(assert (=> bs!244491 m!1184125))

(assert (=> b!988804 d!289536))

(declare-fun b!988986 () Bool)

(declare-fun e!635263 () Bool)

(declare-fun call!64407 () Bool)

(assert (=> b!988986 (= e!635263 call!64407)))

(declare-fun b!988987 () Bool)

(declare-fun e!635265 () Bool)

(assert (=> b!988987 (= e!635265 e!635263)))

(declare-fun res!447795 () Bool)

(assert (=> b!988987 (=> (not res!447795) (not e!635263))))

(declare-fun call!64408 () Bool)

(assert (=> b!988987 (= res!447795 call!64408)))

(declare-fun c!162139 () Bool)

(declare-fun bm!64401 () Bool)

(declare-fun c!162138 () Bool)

(declare-fun call!64406 () Bool)

(assert (=> bm!64401 (= call!64406 (validRegex!1217 (ite c!162139 (reg!3077 r!15766) (ite c!162138 (regTwo!6009 r!15766) (regTwo!6008 r!15766)))))))

(declare-fun d!289540 () Bool)

(declare-fun res!447794 () Bool)

(declare-fun e!635264 () Bool)

(assert (=> d!289540 (=> res!447794 e!635264)))

(assert (=> d!289540 (= res!447794 (is-ElementMatch!2748 r!15766))))

(assert (=> d!289540 (= (validRegex!1217 r!15766) e!635264)))

(declare-fun b!988988 () Bool)

(declare-fun e!635261 () Bool)

(assert (=> b!988988 (= e!635261 call!64406)))

(declare-fun b!988989 () Bool)

(declare-fun res!447797 () Bool)

(assert (=> b!988989 (=> res!447797 e!635265)))

(assert (=> b!988989 (= res!447797 (not (is-Concat!4581 r!15766)))))

(declare-fun e!635262 () Bool)

(assert (=> b!988989 (= e!635262 e!635265)))

(declare-fun b!988990 () Bool)

(declare-fun e!635267 () Bool)

(assert (=> b!988990 (= e!635267 e!635261)))

(declare-fun res!447796 () Bool)

(declare-fun nullable!864 (Regex!2748) Bool)

(assert (=> b!988990 (= res!447796 (not (nullable!864 (reg!3077 r!15766))))))

(assert (=> b!988990 (=> (not res!447796) (not e!635261))))

(declare-fun b!988991 () Bool)

(assert (=> b!988991 (= e!635267 e!635262)))

(assert (=> b!988991 (= c!162138 (is-Union!2748 r!15766))))

(declare-fun bm!64402 () Bool)

(assert (=> bm!64402 (= call!64407 call!64406)))

(declare-fun b!988992 () Bool)

(assert (=> b!988992 (= e!635264 e!635267)))

(assert (=> b!988992 (= c!162139 (is-Star!2748 r!15766))))

(declare-fun b!988993 () Bool)

(declare-fun e!635266 () Bool)

(assert (=> b!988993 (= e!635266 call!64407)))

(declare-fun bm!64403 () Bool)

(assert (=> bm!64403 (= call!64408 (validRegex!1217 (ite c!162138 (regOne!6009 r!15766) (regOne!6008 r!15766))))))

(declare-fun b!988994 () Bool)

(declare-fun res!447793 () Bool)

(assert (=> b!988994 (=> (not res!447793) (not e!635266))))

(assert (=> b!988994 (= res!447793 call!64408)))

(assert (=> b!988994 (= e!635262 e!635266)))

(assert (= (and d!289540 (not res!447794)) b!988992))

(assert (= (and b!988992 c!162139) b!988990))

(assert (= (and b!988992 (not c!162139)) b!988991))

(assert (= (and b!988990 res!447796) b!988988))

(assert (= (and b!988991 c!162138) b!988994))

(assert (= (and b!988991 (not c!162138)) b!988989))

(assert (= (and b!988994 res!447793) b!988993))

(assert (= (and b!988989 (not res!447797)) b!988987))

(assert (= (and b!988987 res!447795) b!988986))

(assert (= (or b!988993 b!988986) bm!64402))

(assert (= (or b!988994 b!988987) bm!64403))

(assert (= (or b!988988 bm!64402) bm!64401))

(declare-fun m!1184177 () Bool)

(assert (=> bm!64401 m!1184177))

(declare-fun m!1184179 () Bool)

(assert (=> b!988990 m!1184179))

(declare-fun m!1184181 () Bool)

(assert (=> bm!64403 m!1184181))

(assert (=> start!87348 d!289540))

(declare-fun bm!64407 () Bool)

(declare-fun call!64412 () Bool)

(assert (=> bm!64407 (= call!64412 (isEmpty!6295 (_2!6497 lt!350694)))))

(declare-fun b!989037 () Bool)

(declare-fun e!635292 () Bool)

(assert (=> b!989037 (= e!635292 (nullable!864 (regTwo!6008 r!15766)))))

(declare-fun b!989038 () Bool)

(declare-fun res!447822 () Bool)

(declare-fun e!635290 () Bool)

(assert (=> b!989038 (=> (not res!447822) (not e!635290))))

(assert (=> b!989038 (= res!447822 (not call!64412))))

(declare-fun d!289542 () Bool)

(declare-fun e!635291 () Bool)

(assert (=> d!289542 e!635291))

(declare-fun c!162150 () Bool)

(assert (=> d!289542 (= c!162150 (is-EmptyExpr!2748 (regTwo!6008 r!15766)))))

(declare-fun lt!350737 () Bool)

(assert (=> d!289542 (= lt!350737 e!635292)))

(declare-fun c!162151 () Bool)

(assert (=> d!289542 (= c!162151 (isEmpty!6295 (_2!6497 lt!350694)))))

(assert (=> d!289542 (validRegex!1217 (regTwo!6008 r!15766))))

(assert (=> d!289542 (= (matchR!1284 (regTwo!6008 r!15766) (_2!6497 lt!350694)) lt!350737)))

(declare-fun b!989039 () Bool)

(assert (=> b!989039 (= e!635291 (= lt!350737 call!64412))))

(declare-fun b!989040 () Bool)

(declare-fun res!447824 () Bool)

(assert (=> b!989040 (=> (not res!447824) (not e!635290))))

(declare-fun tail!1385 (List!9978) List!9978)

(assert (=> b!989040 (= res!447824 (isEmpty!6295 (tail!1385 (_2!6497 lt!350694))))))

(declare-fun b!989041 () Bool)

(declare-fun e!635294 () Bool)

(declare-fun head!1823 (List!9978) C!6066)

(assert (=> b!989041 (= e!635294 (not (= (head!1823 (_2!6497 lt!350694)) (c!162111 (regTwo!6008 r!15766)))))))

(declare-fun b!989042 () Bool)

(assert (=> b!989042 (= e!635290 (= (head!1823 (_2!6497 lt!350694)) (c!162111 (regTwo!6008 r!15766))))))

(declare-fun b!989043 () Bool)

(declare-fun e!635289 () Bool)

(assert (=> b!989043 (= e!635291 e!635289)))

(declare-fun c!162149 () Bool)

(assert (=> b!989043 (= c!162149 (is-EmptyLang!2748 (regTwo!6008 r!15766)))))

(declare-fun b!989044 () Bool)

(declare-fun res!447823 () Bool)

(declare-fun e!635295 () Bool)

(assert (=> b!989044 (=> res!447823 e!635295)))

(assert (=> b!989044 (= res!447823 e!635290)))

(declare-fun res!447828 () Bool)

(assert (=> b!989044 (=> (not res!447828) (not e!635290))))

(assert (=> b!989044 (= res!447828 lt!350737)))

(declare-fun b!989045 () Bool)

(declare-fun e!635293 () Bool)

(assert (=> b!989045 (= e!635295 e!635293)))

(declare-fun res!447825 () Bool)

(assert (=> b!989045 (=> (not res!447825) (not e!635293))))

(assert (=> b!989045 (= res!447825 (not lt!350737))))

(declare-fun b!989046 () Bool)

(assert (=> b!989046 (= e!635293 e!635294)))

(declare-fun res!447829 () Bool)

(assert (=> b!989046 (=> res!447829 e!635294)))

(assert (=> b!989046 (= res!447829 call!64412)))

(declare-fun b!989047 () Bool)

(declare-fun res!447827 () Bool)

(assert (=> b!989047 (=> res!447827 e!635295)))

(assert (=> b!989047 (= res!447827 (not (is-ElementMatch!2748 (regTwo!6008 r!15766))))))

(assert (=> b!989047 (= e!635289 e!635295)))

(declare-fun b!989048 () Bool)

(assert (=> b!989048 (= e!635289 (not lt!350737))))

(declare-fun b!989049 () Bool)

(declare-fun res!447826 () Bool)

(assert (=> b!989049 (=> res!447826 e!635294)))

(assert (=> b!989049 (= res!447826 (not (isEmpty!6295 (tail!1385 (_2!6497 lt!350694)))))))

(declare-fun b!989050 () Bool)

(declare-fun derivativeStep!670 (Regex!2748 C!6066) Regex!2748)

(assert (=> b!989050 (= e!635292 (matchR!1284 (derivativeStep!670 (regTwo!6008 r!15766) (head!1823 (_2!6497 lt!350694))) (tail!1385 (_2!6497 lt!350694))))))

(assert (= (and d!289542 c!162151) b!989037))

(assert (= (and d!289542 (not c!162151)) b!989050))

(assert (= (and d!289542 c!162150) b!989039))

(assert (= (and d!289542 (not c!162150)) b!989043))

(assert (= (and b!989043 c!162149) b!989048))

(assert (= (and b!989043 (not c!162149)) b!989047))

(assert (= (and b!989047 (not res!447827)) b!989044))

(assert (= (and b!989044 res!447828) b!989038))

(assert (= (and b!989038 res!447822) b!989040))

(assert (= (and b!989040 res!447824) b!989042))

(assert (= (and b!989044 (not res!447823)) b!989045))

(assert (= (and b!989045 res!447825) b!989046))

(assert (= (and b!989046 (not res!447829)) b!989049))

(assert (= (and b!989049 (not res!447826)) b!989041))

(assert (= (or b!989039 b!989038 b!989046) bm!64407))

(declare-fun m!1184205 () Bool)

(assert (=> b!989049 m!1184205))

(assert (=> b!989049 m!1184205))

(declare-fun m!1184207 () Bool)

(assert (=> b!989049 m!1184207))

(assert (=> b!989040 m!1184205))

(assert (=> b!989040 m!1184205))

(assert (=> b!989040 m!1184207))

(declare-fun m!1184209 () Bool)

(assert (=> b!989041 m!1184209))

(assert (=> b!989042 m!1184209))

(declare-fun m!1184211 () Bool)

(assert (=> bm!64407 m!1184211))

(declare-fun m!1184213 () Bool)

(assert (=> b!989037 m!1184213))

(assert (=> d!289542 m!1184211))

(assert (=> d!289542 m!1184071))

(assert (=> b!989050 m!1184209))

(assert (=> b!989050 m!1184209))

(declare-fun m!1184215 () Bool)

(assert (=> b!989050 m!1184215))

(assert (=> b!989050 m!1184205))

(assert (=> b!989050 m!1184215))

(assert (=> b!989050 m!1184205))

(declare-fun m!1184217 () Bool)

(assert (=> b!989050 m!1184217))

(assert (=> b!988809 d!289542))

(declare-fun bm!64408 () Bool)

(declare-fun call!64413 () Bool)

(assert (=> bm!64408 (= call!64413 (isEmpty!6295 (_1!6497 lt!350694)))))

(declare-fun b!989051 () Bool)

(declare-fun e!635299 () Bool)

(assert (=> b!989051 (= e!635299 (nullable!864 (regOne!6008 r!15766)))))

(declare-fun b!989052 () Bool)

(declare-fun res!447830 () Bool)

(declare-fun e!635297 () Bool)

(assert (=> b!989052 (=> (not res!447830) (not e!635297))))

(assert (=> b!989052 (= res!447830 (not call!64413))))

(declare-fun d!289548 () Bool)

(declare-fun e!635298 () Bool)

(assert (=> d!289548 e!635298))

(declare-fun c!162153 () Bool)

(assert (=> d!289548 (= c!162153 (is-EmptyExpr!2748 (regOne!6008 r!15766)))))

(declare-fun lt!350738 () Bool)

(assert (=> d!289548 (= lt!350738 e!635299)))

(declare-fun c!162154 () Bool)

(assert (=> d!289548 (= c!162154 (isEmpty!6295 (_1!6497 lt!350694)))))

(assert (=> d!289548 (validRegex!1217 (regOne!6008 r!15766))))

(assert (=> d!289548 (= (matchR!1284 (regOne!6008 r!15766) (_1!6497 lt!350694)) lt!350738)))

(declare-fun b!989053 () Bool)

(assert (=> b!989053 (= e!635298 (= lt!350738 call!64413))))

(declare-fun b!989054 () Bool)

(declare-fun res!447832 () Bool)

(assert (=> b!989054 (=> (not res!447832) (not e!635297))))

(assert (=> b!989054 (= res!447832 (isEmpty!6295 (tail!1385 (_1!6497 lt!350694))))))

(declare-fun b!989055 () Bool)

(declare-fun e!635301 () Bool)

(assert (=> b!989055 (= e!635301 (not (= (head!1823 (_1!6497 lt!350694)) (c!162111 (regOne!6008 r!15766)))))))

(declare-fun b!989056 () Bool)

(assert (=> b!989056 (= e!635297 (= (head!1823 (_1!6497 lt!350694)) (c!162111 (regOne!6008 r!15766))))))

(declare-fun b!989057 () Bool)

(declare-fun e!635296 () Bool)

(assert (=> b!989057 (= e!635298 e!635296)))

(declare-fun c!162152 () Bool)

(assert (=> b!989057 (= c!162152 (is-EmptyLang!2748 (regOne!6008 r!15766)))))

(declare-fun b!989058 () Bool)

(declare-fun res!447831 () Bool)

(declare-fun e!635302 () Bool)

(assert (=> b!989058 (=> res!447831 e!635302)))

(assert (=> b!989058 (= res!447831 e!635297)))

(declare-fun res!447836 () Bool)

(assert (=> b!989058 (=> (not res!447836) (not e!635297))))

(assert (=> b!989058 (= res!447836 lt!350738)))

(declare-fun b!989059 () Bool)

(declare-fun e!635300 () Bool)

(assert (=> b!989059 (= e!635302 e!635300)))

(declare-fun res!447833 () Bool)

(assert (=> b!989059 (=> (not res!447833) (not e!635300))))

(assert (=> b!989059 (= res!447833 (not lt!350738))))

(declare-fun b!989060 () Bool)

(assert (=> b!989060 (= e!635300 e!635301)))

(declare-fun res!447837 () Bool)

(assert (=> b!989060 (=> res!447837 e!635301)))

(assert (=> b!989060 (= res!447837 call!64413)))

(declare-fun b!989061 () Bool)

(declare-fun res!447835 () Bool)

(assert (=> b!989061 (=> res!447835 e!635302)))

(assert (=> b!989061 (= res!447835 (not (is-ElementMatch!2748 (regOne!6008 r!15766))))))

(assert (=> b!989061 (= e!635296 e!635302)))

(declare-fun b!989062 () Bool)

(assert (=> b!989062 (= e!635296 (not lt!350738))))

(declare-fun b!989063 () Bool)

(declare-fun res!447834 () Bool)

(assert (=> b!989063 (=> res!447834 e!635301)))

(assert (=> b!989063 (= res!447834 (not (isEmpty!6295 (tail!1385 (_1!6497 lt!350694)))))))

(declare-fun b!989064 () Bool)

(assert (=> b!989064 (= e!635299 (matchR!1284 (derivativeStep!670 (regOne!6008 r!15766) (head!1823 (_1!6497 lt!350694))) (tail!1385 (_1!6497 lt!350694))))))

(assert (= (and d!289548 c!162154) b!989051))

(assert (= (and d!289548 (not c!162154)) b!989064))

(assert (= (and d!289548 c!162153) b!989053))

(assert (= (and d!289548 (not c!162153)) b!989057))

(assert (= (and b!989057 c!162152) b!989062))

(assert (= (and b!989057 (not c!162152)) b!989061))

(assert (= (and b!989061 (not res!447835)) b!989058))

(assert (= (and b!989058 res!447836) b!989052))

(assert (= (and b!989052 res!447830) b!989054))

(assert (= (and b!989054 res!447832) b!989056))

(assert (= (and b!989058 (not res!447831)) b!989059))

(assert (= (and b!989059 res!447833) b!989060))

(assert (= (and b!989060 (not res!447837)) b!989063))

(assert (= (and b!989063 (not res!447834)) b!989055))

(assert (= (or b!989053 b!989052 b!989060) bm!64408))

(declare-fun m!1184219 () Bool)

(assert (=> b!989063 m!1184219))

(assert (=> b!989063 m!1184219))

(declare-fun m!1184221 () Bool)

(assert (=> b!989063 m!1184221))

(assert (=> b!989054 m!1184219))

(assert (=> b!989054 m!1184219))

(assert (=> b!989054 m!1184221))

(declare-fun m!1184223 () Bool)

(assert (=> b!989055 m!1184223))

(assert (=> b!989056 m!1184223))

(declare-fun m!1184225 () Bool)

(assert (=> bm!64408 m!1184225))

(declare-fun m!1184227 () Bool)

(assert (=> b!989051 m!1184227))

(assert (=> d!289548 m!1184225))

(assert (=> d!289548 m!1184125))

(assert (=> b!989064 m!1184223))

(assert (=> b!989064 m!1184223))

(declare-fun m!1184229 () Bool)

(assert (=> b!989064 m!1184229))

(assert (=> b!989064 m!1184219))

(assert (=> b!989064 m!1184229))

(assert (=> b!989064 m!1184219))

(declare-fun m!1184231 () Bool)

(assert (=> b!989064 m!1184231))

(assert (=> b!988803 d!289548))

(declare-fun d!289550 () Bool)

(assert (=> d!289550 (= (get!3465 lt!350693) (v!19729 lt!350693))))

(assert (=> b!988803 d!289550))

(declare-fun bs!244492 () Bool)

(declare-fun b!989138 () Bool)

(assert (= bs!244492 (and b!989138 d!289536)))

(declare-fun lambda!35234 () Int)

(assert (=> bs!244492 (not (= lambda!35234 lambda!35229))))

(declare-fun bs!244493 () Bool)

(assert (= bs!244493 (and b!989138 b!988804)))

(assert (=> bs!244493 (not (= lambda!35234 lambda!35212))))

(declare-fun bs!244494 () Bool)

(assert (= bs!244494 (and b!989138 d!289530)))

(assert (=> bs!244494 (not (= lambda!35234 lambda!35223))))

(assert (=> bs!244492 (not (= lambda!35234 lambda!35228))))

(assert (=> bs!244493 (not (= lambda!35234 lambda!35211))))

(assert (=> b!989138 true))

(assert (=> b!989138 true))

(declare-fun bs!244495 () Bool)

(declare-fun b!989130 () Bool)

(assert (= bs!244495 (and b!989130 d!289536)))

(declare-fun lambda!35235 () Int)

(assert (=> bs!244495 (= lambda!35235 lambda!35229)))

(declare-fun bs!244496 () Bool)

(assert (= bs!244496 (and b!989130 b!988804)))

(assert (=> bs!244496 (= lambda!35235 lambda!35212)))

(declare-fun bs!244497 () Bool)

(assert (= bs!244497 (and b!989130 d!289530)))

(assert (=> bs!244497 (not (= lambda!35235 lambda!35223))))

(assert (=> bs!244495 (not (= lambda!35235 lambda!35228))))

(declare-fun bs!244498 () Bool)

(assert (= bs!244498 (and b!989130 b!989138)))

(assert (=> bs!244498 (not (= lambda!35235 lambda!35234))))

(assert (=> bs!244496 (not (= lambda!35235 lambda!35211))))

(assert (=> b!989130 true))

(assert (=> b!989130 true))

(declare-fun e!635340 () Bool)

(declare-fun call!64434 () Bool)

(assert (=> b!989130 (= e!635340 call!64434)))

(declare-fun c!162181 () Bool)

(declare-fun bm!64428 () Bool)

(assert (=> bm!64428 (= call!64434 (Exists!485 (ite c!162181 lambda!35234 lambda!35235)))))

(declare-fun b!989132 () Bool)

(declare-fun c!162179 () Bool)

(assert (=> b!989132 (= c!162179 (is-ElementMatch!2748 r!15766))))

(declare-fun e!635341 () Bool)

(declare-fun e!635344 () Bool)

(assert (=> b!989132 (= e!635341 e!635344)))

(declare-fun b!989133 () Bool)

(declare-fun e!635343 () Bool)

(assert (=> b!989133 (= e!635343 (matchRSpec!547 (regTwo!6009 r!15766) s!10566))))

(declare-fun b!989134 () Bool)

(declare-fun e!635345 () Bool)

(declare-fun call!64433 () Bool)

(assert (=> b!989134 (= e!635345 call!64433)))

(declare-fun bm!64429 () Bool)

(assert (=> bm!64429 (= call!64433 (isEmpty!6295 s!10566))))

(declare-fun b!989131 () Bool)

(declare-fun c!162178 () Bool)

(assert (=> b!989131 (= c!162178 (is-Union!2748 r!15766))))

(declare-fun e!635342 () Bool)

(assert (=> b!989131 (= e!635344 e!635342)))

(declare-fun d!289552 () Bool)

(declare-fun c!162180 () Bool)

(assert (=> d!289552 (= c!162180 (is-EmptyExpr!2748 r!15766))))

(assert (=> d!289552 (= (matchRSpec!547 r!15766 s!10566) e!635345)))

(declare-fun b!989135 () Bool)

(assert (=> b!989135 (= e!635342 e!635340)))

(assert (=> b!989135 (= c!162181 (is-Star!2748 r!15766))))

(declare-fun b!989136 () Bool)

(assert (=> b!989136 (= e!635344 (= s!10566 (Cons!9962 (c!162111 r!15766) Nil!9962)))))

(declare-fun b!989137 () Bool)

(assert (=> b!989137 (= e!635342 e!635343)))

(declare-fun res!447858 () Bool)

(assert (=> b!989137 (= res!447858 (matchRSpec!547 (regOne!6009 r!15766) s!10566))))

(assert (=> b!989137 (=> res!447858 e!635343)))

(declare-fun e!635339 () Bool)

(assert (=> b!989138 (= e!635339 call!64434)))

(declare-fun b!989139 () Bool)

(declare-fun res!447859 () Bool)

(assert (=> b!989139 (=> res!447859 e!635339)))

(assert (=> b!989139 (= res!447859 call!64433)))

(assert (=> b!989139 (= e!635340 e!635339)))

(declare-fun b!989140 () Bool)

(assert (=> b!989140 (= e!635345 e!635341)))

(declare-fun res!447857 () Bool)

(assert (=> b!989140 (= res!447857 (not (is-EmptyLang!2748 r!15766)))))

(assert (=> b!989140 (=> (not res!447857) (not e!635341))))

(assert (= (and d!289552 c!162180) b!989134))

(assert (= (and d!289552 (not c!162180)) b!989140))

(assert (= (and b!989140 res!447857) b!989132))

(assert (= (and b!989132 c!162179) b!989136))

(assert (= (and b!989132 (not c!162179)) b!989131))

(assert (= (and b!989131 c!162178) b!989137))

(assert (= (and b!989131 (not c!162178)) b!989135))

(assert (= (and b!989137 (not res!447858)) b!989133))

(assert (= (and b!989135 c!162181) b!989139))

(assert (= (and b!989135 (not c!162181)) b!989130))

(assert (= (and b!989139 (not res!447859)) b!989138))

(assert (= (or b!989138 b!989130) bm!64428))

(assert (= (or b!989134 b!989139) bm!64429))

(declare-fun m!1184245 () Bool)

(assert (=> bm!64428 m!1184245))

(declare-fun m!1184247 () Bool)

(assert (=> b!989133 m!1184247))

(assert (=> bm!64429 m!1184057))

(declare-fun m!1184249 () Bool)

(assert (=> b!989137 m!1184249))

(assert (=> b!988800 d!289552))

(declare-fun bm!64430 () Bool)

(declare-fun call!64435 () Bool)

(assert (=> bm!64430 (= call!64435 (isEmpty!6295 s!10566))))

(declare-fun b!989141 () Bool)

(declare-fun e!635349 () Bool)

(assert (=> b!989141 (= e!635349 (nullable!864 r!15766))))

(declare-fun b!989142 () Bool)

(declare-fun res!447860 () Bool)

(declare-fun e!635347 () Bool)

(assert (=> b!989142 (=> (not res!447860) (not e!635347))))

(assert (=> b!989142 (= res!447860 (not call!64435))))

(declare-fun d!289556 () Bool)

(declare-fun e!635348 () Bool)

(assert (=> d!289556 e!635348))

(declare-fun c!162183 () Bool)

(assert (=> d!289556 (= c!162183 (is-EmptyExpr!2748 r!15766))))

(declare-fun lt!350742 () Bool)

(assert (=> d!289556 (= lt!350742 e!635349)))

(declare-fun c!162184 () Bool)

(assert (=> d!289556 (= c!162184 (isEmpty!6295 s!10566))))

(assert (=> d!289556 (validRegex!1217 r!15766)))

(assert (=> d!289556 (= (matchR!1284 r!15766 s!10566) lt!350742)))

(declare-fun b!989143 () Bool)

(assert (=> b!989143 (= e!635348 (= lt!350742 call!64435))))

(declare-fun b!989144 () Bool)

(declare-fun res!447862 () Bool)

(assert (=> b!989144 (=> (not res!447862) (not e!635347))))

(assert (=> b!989144 (= res!447862 (isEmpty!6295 (tail!1385 s!10566)))))

(declare-fun b!989145 () Bool)

(declare-fun e!635351 () Bool)

(assert (=> b!989145 (= e!635351 (not (= (head!1823 s!10566) (c!162111 r!15766))))))

(declare-fun b!989146 () Bool)

(assert (=> b!989146 (= e!635347 (= (head!1823 s!10566) (c!162111 r!15766)))))

(declare-fun b!989147 () Bool)

(declare-fun e!635346 () Bool)

(assert (=> b!989147 (= e!635348 e!635346)))

(declare-fun c!162182 () Bool)

(assert (=> b!989147 (= c!162182 (is-EmptyLang!2748 r!15766))))

(declare-fun b!989148 () Bool)

(declare-fun res!447861 () Bool)

(declare-fun e!635352 () Bool)

(assert (=> b!989148 (=> res!447861 e!635352)))

(assert (=> b!989148 (= res!447861 e!635347)))

(declare-fun res!447866 () Bool)

(assert (=> b!989148 (=> (not res!447866) (not e!635347))))

(assert (=> b!989148 (= res!447866 lt!350742)))

(declare-fun b!989149 () Bool)

(declare-fun e!635350 () Bool)

(assert (=> b!989149 (= e!635352 e!635350)))

(declare-fun res!447863 () Bool)

(assert (=> b!989149 (=> (not res!447863) (not e!635350))))

(assert (=> b!989149 (= res!447863 (not lt!350742))))

(declare-fun b!989150 () Bool)

(assert (=> b!989150 (= e!635350 e!635351)))

(declare-fun res!447867 () Bool)

(assert (=> b!989150 (=> res!447867 e!635351)))

(assert (=> b!989150 (= res!447867 call!64435)))

(declare-fun b!989151 () Bool)

(declare-fun res!447865 () Bool)

(assert (=> b!989151 (=> res!447865 e!635352)))

(assert (=> b!989151 (= res!447865 (not (is-ElementMatch!2748 r!15766)))))

(assert (=> b!989151 (= e!635346 e!635352)))

(declare-fun b!989152 () Bool)

(assert (=> b!989152 (= e!635346 (not lt!350742))))

(declare-fun b!989153 () Bool)

(declare-fun res!447864 () Bool)

(assert (=> b!989153 (=> res!447864 e!635351)))

(assert (=> b!989153 (= res!447864 (not (isEmpty!6295 (tail!1385 s!10566))))))

(declare-fun b!989154 () Bool)

(assert (=> b!989154 (= e!635349 (matchR!1284 (derivativeStep!670 r!15766 (head!1823 s!10566)) (tail!1385 s!10566)))))

(assert (= (and d!289556 c!162184) b!989141))

(assert (= (and d!289556 (not c!162184)) b!989154))

(assert (= (and d!289556 c!162183) b!989143))

(assert (= (and d!289556 (not c!162183)) b!989147))

(assert (= (and b!989147 c!162182) b!989152))

(assert (= (and b!989147 (not c!162182)) b!989151))

(assert (= (and b!989151 (not res!447865)) b!989148))

(assert (= (and b!989148 res!447866) b!989142))

(assert (= (and b!989142 res!447860) b!989144))

(assert (= (and b!989144 res!447862) b!989146))

(assert (= (and b!989148 (not res!447861)) b!989149))

(assert (= (and b!989149 res!447863) b!989150))

(assert (= (and b!989150 (not res!447867)) b!989153))

(assert (= (and b!989153 (not res!447864)) b!989145))

(assert (= (or b!989143 b!989142 b!989150) bm!64430))

(declare-fun m!1184251 () Bool)

(assert (=> b!989153 m!1184251))

(assert (=> b!989153 m!1184251))

(declare-fun m!1184253 () Bool)

(assert (=> b!989153 m!1184253))

(assert (=> b!989144 m!1184251))

(assert (=> b!989144 m!1184251))

(assert (=> b!989144 m!1184253))

(declare-fun m!1184255 () Bool)

(assert (=> b!989145 m!1184255))

(assert (=> b!989146 m!1184255))

(assert (=> bm!64430 m!1184057))

(declare-fun m!1184257 () Bool)

(assert (=> b!989141 m!1184257))

(assert (=> d!289556 m!1184057))

(assert (=> d!289556 m!1184067))

(assert (=> b!989154 m!1184255))

(assert (=> b!989154 m!1184255))

(declare-fun m!1184259 () Bool)

(assert (=> b!989154 m!1184259))

(assert (=> b!989154 m!1184251))

(assert (=> b!989154 m!1184259))

(assert (=> b!989154 m!1184251))

(declare-fun m!1184261 () Bool)

(assert (=> b!989154 m!1184261))

(assert (=> b!988800 d!289556))

(declare-fun d!289558 () Bool)

(assert (=> d!289558 (= (matchR!1284 r!15766 s!10566) (matchRSpec!547 r!15766 s!10566))))

(declare-fun lt!350748 () Unit!15155)

(declare-fun choose!6261 (Regex!2748 List!9978) Unit!15155)

(assert (=> d!289558 (= lt!350748 (choose!6261 r!15766 s!10566))))

(assert (=> d!289558 (validRegex!1217 r!15766)))

(assert (=> d!289558 (= (mainMatchTheorem!547 r!15766 s!10566) lt!350748)))

(declare-fun bs!244500 () Bool)

(assert (= bs!244500 d!289558))

(assert (=> bs!244500 m!1184081))

(assert (=> bs!244500 m!1184079))

(declare-fun m!1184265 () Bool)

(assert (=> bs!244500 m!1184265))

(assert (=> bs!244500 m!1184067))

(assert (=> b!988800 d!289558))

(declare-fun b!989155 () Bool)

(declare-fun e!635355 () Bool)

(declare-fun call!64437 () Bool)

(assert (=> b!989155 (= e!635355 call!64437)))

(declare-fun b!989156 () Bool)

(declare-fun e!635357 () Bool)

(assert (=> b!989156 (= e!635357 e!635355)))

(declare-fun res!447870 () Bool)

(assert (=> b!989156 (=> (not res!447870) (not e!635355))))

(declare-fun call!64438 () Bool)

(assert (=> b!989156 (= res!447870 call!64438)))

(declare-fun call!64436 () Bool)

(declare-fun c!162185 () Bool)

(declare-fun bm!64431 () Bool)

(declare-fun c!162186 () Bool)

(assert (=> bm!64431 (= call!64436 (validRegex!1217 (ite c!162186 (reg!3077 (regTwo!6008 r!15766)) (ite c!162185 (regTwo!6009 (regTwo!6008 r!15766)) (regTwo!6008 (regTwo!6008 r!15766))))))))

(declare-fun d!289560 () Bool)

(declare-fun res!447869 () Bool)

(declare-fun e!635356 () Bool)

(assert (=> d!289560 (=> res!447869 e!635356)))

(assert (=> d!289560 (= res!447869 (is-ElementMatch!2748 (regTwo!6008 r!15766)))))

(assert (=> d!289560 (= (validRegex!1217 (regTwo!6008 r!15766)) e!635356)))

(declare-fun b!989157 () Bool)

(declare-fun e!635353 () Bool)

(assert (=> b!989157 (= e!635353 call!64436)))

(declare-fun b!989158 () Bool)

(declare-fun res!447872 () Bool)

(assert (=> b!989158 (=> res!447872 e!635357)))

(assert (=> b!989158 (= res!447872 (not (is-Concat!4581 (regTwo!6008 r!15766))))))

(declare-fun e!635354 () Bool)

(assert (=> b!989158 (= e!635354 e!635357)))

(declare-fun b!989159 () Bool)

(declare-fun e!635359 () Bool)

(assert (=> b!989159 (= e!635359 e!635353)))

(declare-fun res!447871 () Bool)

(assert (=> b!989159 (= res!447871 (not (nullable!864 (reg!3077 (regTwo!6008 r!15766)))))))

(assert (=> b!989159 (=> (not res!447871) (not e!635353))))

(declare-fun b!989160 () Bool)

(assert (=> b!989160 (= e!635359 e!635354)))

(assert (=> b!989160 (= c!162185 (is-Union!2748 (regTwo!6008 r!15766)))))

(declare-fun bm!64432 () Bool)

(assert (=> bm!64432 (= call!64437 call!64436)))

(declare-fun b!989161 () Bool)

(assert (=> b!989161 (= e!635356 e!635359)))

(assert (=> b!989161 (= c!162186 (is-Star!2748 (regTwo!6008 r!15766)))))

(declare-fun b!989162 () Bool)

(declare-fun e!635358 () Bool)

(assert (=> b!989162 (= e!635358 call!64437)))

(declare-fun bm!64433 () Bool)

(assert (=> bm!64433 (= call!64438 (validRegex!1217 (ite c!162185 (regOne!6009 (regTwo!6008 r!15766)) (regOne!6008 (regTwo!6008 r!15766)))))))

(declare-fun b!989163 () Bool)

(declare-fun res!447868 () Bool)

(assert (=> b!989163 (=> (not res!447868) (not e!635358))))

(assert (=> b!989163 (= res!447868 call!64438)))

(assert (=> b!989163 (= e!635354 e!635358)))

(assert (= (and d!289560 (not res!447869)) b!989161))

(assert (= (and b!989161 c!162186) b!989159))

(assert (= (and b!989161 (not c!162186)) b!989160))

(assert (= (and b!989159 res!447871) b!989157))

(assert (= (and b!989160 c!162185) b!989163))

(assert (= (and b!989160 (not c!162185)) b!989158))

(assert (= (and b!989163 res!447868) b!989162))

(assert (= (and b!989158 (not res!447872)) b!989156))

(assert (= (and b!989156 res!447870) b!989155))

(assert (= (or b!989162 b!989155) bm!64432))

(assert (= (or b!989163 b!989156) bm!64433))

(assert (= (or b!989157 bm!64432) bm!64431))

(declare-fun m!1184267 () Bool)

(assert (=> bm!64431 m!1184267))

(declare-fun m!1184269 () Bool)

(assert (=> b!989159 m!1184269))

(declare-fun m!1184271 () Bool)

(assert (=> bm!64433 m!1184271))

(assert (=> b!988801 d!289560))

(declare-fun bm!64434 () Bool)

(declare-fun call!64439 () Bool)

(assert (=> bm!64434 (= call!64439 (isEmpty!6295 (_1!6497 lt!350694)))))

(declare-fun b!989164 () Bool)

(declare-fun e!635363 () Bool)

(assert (=> b!989164 (= e!635363 (nullable!864 (removeUselessConcat!353 (regOne!6008 r!15766))))))

(declare-fun b!989165 () Bool)

(declare-fun res!447873 () Bool)

(declare-fun e!635361 () Bool)

(assert (=> b!989165 (=> (not res!447873) (not e!635361))))

(assert (=> b!989165 (= res!447873 (not call!64439))))

(declare-fun d!289564 () Bool)

(declare-fun e!635362 () Bool)

(assert (=> d!289564 e!635362))

(declare-fun c!162188 () Bool)

(assert (=> d!289564 (= c!162188 (is-EmptyExpr!2748 (removeUselessConcat!353 (regOne!6008 r!15766))))))

(declare-fun lt!350749 () Bool)

(assert (=> d!289564 (= lt!350749 e!635363)))

(declare-fun c!162189 () Bool)

(assert (=> d!289564 (= c!162189 (isEmpty!6295 (_1!6497 lt!350694)))))

(assert (=> d!289564 (validRegex!1217 (removeUselessConcat!353 (regOne!6008 r!15766)))))

(assert (=> d!289564 (= (matchR!1284 (removeUselessConcat!353 (regOne!6008 r!15766)) (_1!6497 lt!350694)) lt!350749)))

(declare-fun b!989166 () Bool)

(assert (=> b!989166 (= e!635362 (= lt!350749 call!64439))))

(declare-fun b!989167 () Bool)

(declare-fun res!447875 () Bool)

(assert (=> b!989167 (=> (not res!447875) (not e!635361))))

(assert (=> b!989167 (= res!447875 (isEmpty!6295 (tail!1385 (_1!6497 lt!350694))))))

(declare-fun b!989168 () Bool)

(declare-fun e!635365 () Bool)

(assert (=> b!989168 (= e!635365 (not (= (head!1823 (_1!6497 lt!350694)) (c!162111 (removeUselessConcat!353 (regOne!6008 r!15766))))))))

(declare-fun b!989169 () Bool)

(assert (=> b!989169 (= e!635361 (= (head!1823 (_1!6497 lt!350694)) (c!162111 (removeUselessConcat!353 (regOne!6008 r!15766)))))))

(declare-fun b!989170 () Bool)

(declare-fun e!635360 () Bool)

(assert (=> b!989170 (= e!635362 e!635360)))

(declare-fun c!162187 () Bool)

(assert (=> b!989170 (= c!162187 (is-EmptyLang!2748 (removeUselessConcat!353 (regOne!6008 r!15766))))))

(declare-fun b!989171 () Bool)

(declare-fun res!447874 () Bool)

(declare-fun e!635366 () Bool)

(assert (=> b!989171 (=> res!447874 e!635366)))

(assert (=> b!989171 (= res!447874 e!635361)))

(declare-fun res!447879 () Bool)

(assert (=> b!989171 (=> (not res!447879) (not e!635361))))

(assert (=> b!989171 (= res!447879 lt!350749)))

(declare-fun b!989172 () Bool)

(declare-fun e!635364 () Bool)

(assert (=> b!989172 (= e!635366 e!635364)))

(declare-fun res!447876 () Bool)

(assert (=> b!989172 (=> (not res!447876) (not e!635364))))

(assert (=> b!989172 (= res!447876 (not lt!350749))))

(declare-fun b!989173 () Bool)

(assert (=> b!989173 (= e!635364 e!635365)))

(declare-fun res!447880 () Bool)

(assert (=> b!989173 (=> res!447880 e!635365)))

(assert (=> b!989173 (= res!447880 call!64439)))

(declare-fun b!989174 () Bool)

(declare-fun res!447878 () Bool)

(assert (=> b!989174 (=> res!447878 e!635366)))

(assert (=> b!989174 (= res!447878 (not (is-ElementMatch!2748 (removeUselessConcat!353 (regOne!6008 r!15766)))))))

(assert (=> b!989174 (= e!635360 e!635366)))

(declare-fun b!989175 () Bool)

(assert (=> b!989175 (= e!635360 (not lt!350749))))

(declare-fun b!989176 () Bool)

(declare-fun res!447877 () Bool)

(assert (=> b!989176 (=> res!447877 e!635365)))

(assert (=> b!989176 (= res!447877 (not (isEmpty!6295 (tail!1385 (_1!6497 lt!350694)))))))

(declare-fun b!989177 () Bool)

(assert (=> b!989177 (= e!635363 (matchR!1284 (derivativeStep!670 (removeUselessConcat!353 (regOne!6008 r!15766)) (head!1823 (_1!6497 lt!350694))) (tail!1385 (_1!6497 lt!350694))))))

(assert (= (and d!289564 c!162189) b!989164))

(assert (= (and d!289564 (not c!162189)) b!989177))

(assert (= (and d!289564 c!162188) b!989166))

(assert (= (and d!289564 (not c!162188)) b!989170))

(assert (= (and b!989170 c!162187) b!989175))

(assert (= (and b!989170 (not c!162187)) b!989174))

(assert (= (and b!989174 (not res!447878)) b!989171))

(assert (= (and b!989171 res!447879) b!989165))

(assert (= (and b!989165 res!447873) b!989167))

(assert (= (and b!989167 res!447875) b!989169))

(assert (= (and b!989171 (not res!447874)) b!989172))

(assert (= (and b!989172 res!447876) b!989173))

(assert (= (and b!989173 (not res!447880)) b!989176))

(assert (= (and b!989176 (not res!447877)) b!989168))

(assert (= (or b!989166 b!989165 b!989173) bm!64434))

(assert (=> b!989176 m!1184219))

(assert (=> b!989176 m!1184219))

(assert (=> b!989176 m!1184221))

(assert (=> b!989167 m!1184219))

(assert (=> b!989167 m!1184219))

(assert (=> b!989167 m!1184221))

(assert (=> b!989168 m!1184223))

(assert (=> b!989169 m!1184223))

(assert (=> bm!64434 m!1184225))

(assert (=> b!989164 m!1184073))

(declare-fun m!1184273 () Bool)

(assert (=> b!989164 m!1184273))

(assert (=> d!289564 m!1184225))

(assert (=> d!289564 m!1184073))

(declare-fun m!1184275 () Bool)

(assert (=> d!289564 m!1184275))

(assert (=> b!989177 m!1184223))

(assert (=> b!989177 m!1184073))

(assert (=> b!989177 m!1184223))

(declare-fun m!1184277 () Bool)

(assert (=> b!989177 m!1184277))

(assert (=> b!989177 m!1184219))

(assert (=> b!989177 m!1184277))

(assert (=> b!989177 m!1184219))

(declare-fun m!1184279 () Bool)

(assert (=> b!989177 m!1184279))

(assert (=> b!988801 d!289564))

(declare-fun bm!64445 () Bool)

(declare-fun call!64453 () Regex!2748)

(declare-fun call!64452 () Regex!2748)

(assert (=> bm!64445 (= call!64453 call!64452)))

(declare-fun d!289566 () Bool)

(declare-fun e!635381 () Bool)

(assert (=> d!289566 e!635381))

(declare-fun res!447883 () Bool)

(assert (=> d!289566 (=> (not res!447883) (not e!635381))))

(declare-fun lt!350752 () Regex!2748)

(assert (=> d!289566 (= res!447883 (validRegex!1217 lt!350752))))

(declare-fun e!635386 () Regex!2748)

(assert (=> d!289566 (= lt!350752 e!635386)))

(declare-fun c!162203 () Bool)

(assert (=> d!289566 (= c!162203 (and (is-Concat!4581 (regOne!6008 r!15766)) (is-EmptyExpr!2748 (regOne!6008 (regOne!6008 r!15766)))))))

(assert (=> d!289566 (validRegex!1217 (regOne!6008 r!15766))))

(assert (=> d!289566 (= (removeUselessConcat!353 (regOne!6008 r!15766)) lt!350752)))

(declare-fun b!989204 () Bool)

(declare-fun e!635385 () Regex!2748)

(assert (=> b!989204 (= e!635385 call!64452)))

(declare-fun bm!64446 () Bool)

(declare-fun call!64450 () Regex!2748)

(declare-fun call!64451 () Regex!2748)

(assert (=> bm!64446 (= call!64450 call!64451)))

(declare-fun b!989205 () Bool)

(declare-fun e!635384 () Regex!2748)

(assert (=> b!989205 (= e!635384 (regOne!6008 r!15766))))

(declare-fun b!989206 () Bool)

(assert (=> b!989206 (= e!635381 (= (nullable!864 lt!350752) (nullable!864 (regOne!6008 r!15766))))))

(declare-fun b!989207 () Bool)

(declare-fun c!162202 () Bool)

(assert (=> b!989207 (= c!162202 (is-Star!2748 (regOne!6008 r!15766)))))

(declare-fun e!635382 () Regex!2748)

(assert (=> b!989207 (= e!635382 e!635384)))

(declare-fun b!989208 () Bool)

(declare-fun call!64454 () Regex!2748)

(assert (=> b!989208 (= e!635382 (Union!2748 call!64450 call!64454))))

(declare-fun b!989209 () Bool)

(assert (=> b!989209 (= e!635384 (Star!2748 call!64454))))

(declare-fun b!989210 () Bool)

(declare-fun c!162205 () Bool)

(assert (=> b!989210 (= c!162205 (is-Concat!4581 (regOne!6008 r!15766)))))

(declare-fun e!635383 () Regex!2748)

(assert (=> b!989210 (= e!635385 e!635383)))

(declare-fun b!989211 () Bool)

(assert (=> b!989211 (= e!635386 call!64451)))

(declare-fun bm!64447 () Bool)

(declare-fun c!162204 () Bool)

(declare-fun c!162206 () Bool)

(assert (=> bm!64447 (= call!64452 (removeUselessConcat!353 (ite (or c!162204 c!162205) (regOne!6008 (regOne!6008 r!15766)) (ite c!162206 (regTwo!6009 (regOne!6008 r!15766)) (reg!3077 (regOne!6008 r!15766))))))))

(declare-fun bm!64448 () Bool)

(assert (=> bm!64448 (= call!64451 (removeUselessConcat!353 (ite (or c!162203 c!162205) (regTwo!6008 (regOne!6008 r!15766)) (regOne!6009 (regOne!6008 r!15766)))))))

(declare-fun bm!64449 () Bool)

(assert (=> bm!64449 (= call!64454 call!64453)))

(declare-fun b!989212 () Bool)

(assert (=> b!989212 (= e!635383 (Concat!4581 call!64453 call!64450))))

(declare-fun b!989213 () Bool)

(assert (=> b!989213 (= e!635383 e!635382)))

(assert (=> b!989213 (= c!162206 (is-Union!2748 (regOne!6008 r!15766)))))

(declare-fun b!989214 () Bool)

(assert (=> b!989214 (= e!635386 e!635385)))

(assert (=> b!989214 (= c!162204 (and (is-Concat!4581 (regOne!6008 r!15766)) (is-EmptyExpr!2748 (regTwo!6008 (regOne!6008 r!15766)))))))

(assert (= (and d!289566 c!162203) b!989211))

(assert (= (and d!289566 (not c!162203)) b!989214))

(assert (= (and b!989214 c!162204) b!989204))

(assert (= (and b!989214 (not c!162204)) b!989210))

(assert (= (and b!989210 c!162205) b!989212))

(assert (= (and b!989210 (not c!162205)) b!989213))

(assert (= (and b!989213 c!162206) b!989208))

(assert (= (and b!989213 (not c!162206)) b!989207))

(assert (= (and b!989207 c!162202) b!989209))

(assert (= (and b!989207 (not c!162202)) b!989205))

(assert (= (or b!989208 b!989209) bm!64449))

(assert (= (or b!989212 b!989208) bm!64446))

(assert (= (or b!989212 bm!64449) bm!64445))

(assert (= (or b!989204 bm!64445) bm!64447))

(assert (= (or b!989211 bm!64446) bm!64448))

(assert (= (and d!289566 res!447883) b!989206))

(declare-fun m!1184281 () Bool)

(assert (=> d!289566 m!1184281))

(assert (=> d!289566 m!1184125))

(declare-fun m!1184283 () Bool)

(assert (=> b!989206 m!1184283))

(assert (=> b!989206 m!1184227))

(declare-fun m!1184285 () Bool)

(assert (=> bm!64447 m!1184285))

(declare-fun m!1184287 () Bool)

(assert (=> bm!64448 m!1184287))

(assert (=> b!988801 d!289566))

(declare-fun d!289568 () Bool)

(assert (=> d!289568 (= (matchR!1284 (regOne!6008 r!15766) (_1!6497 lt!350694)) (matchR!1284 (removeUselessConcat!353 (regOne!6008 r!15766)) (_1!6497 lt!350694)))))

(declare-fun lt!350755 () Unit!15155)

(declare-fun choose!6262 (Regex!2748 List!9978) Unit!15155)

(assert (=> d!289568 (= lt!350755 (choose!6262 (regOne!6008 r!15766) (_1!6497 lt!350694)))))

(assert (=> d!289568 (validRegex!1217 (regOne!6008 r!15766))))

(assert (=> d!289568 (= (lemmaRemoveUselessConcatSound!199 (regOne!6008 r!15766) (_1!6497 lt!350694)) lt!350755)))

(declare-fun bs!244501 () Bool)

(assert (= bs!244501 d!289568))

(assert (=> bs!244501 m!1184125))

(assert (=> bs!244501 m!1184073))

(assert (=> bs!244501 m!1184063))

(assert (=> bs!244501 m!1184073))

(assert (=> bs!244501 m!1184075))

(declare-fun m!1184289 () Bool)

(assert (=> bs!244501 m!1184289))

(assert (=> b!988801 d!289568))

(declare-fun b!989249 () Bool)

(declare-fun e!635403 () Bool)

(assert (=> b!989249 (= e!635403 tp_is_empty!5139)))

(declare-fun b!989252 () Bool)

(declare-fun tp!302093 () Bool)

(declare-fun tp!302092 () Bool)

(assert (=> b!989252 (= e!635403 (and tp!302093 tp!302092))))

(assert (=> b!988806 (= tp!302060 e!635403)))

(declare-fun b!989251 () Bool)

(declare-fun tp!302095 () Bool)

(assert (=> b!989251 (= e!635403 tp!302095)))

(declare-fun b!989250 () Bool)

(declare-fun tp!302091 () Bool)

(declare-fun tp!302094 () Bool)

(assert (=> b!989250 (= e!635403 (and tp!302091 tp!302094))))

(assert (= (and b!988806 (is-ElementMatch!2748 (regOne!6008 r!15766))) b!989249))

(assert (= (and b!988806 (is-Concat!4581 (regOne!6008 r!15766))) b!989250))

(assert (= (and b!988806 (is-Star!2748 (regOne!6008 r!15766))) b!989251))

(assert (= (and b!988806 (is-Union!2748 (regOne!6008 r!15766))) b!989252))

(declare-fun b!989253 () Bool)

(declare-fun e!635404 () Bool)

(assert (=> b!989253 (= e!635404 tp_is_empty!5139)))

(declare-fun b!989256 () Bool)

(declare-fun tp!302098 () Bool)

(declare-fun tp!302097 () Bool)

(assert (=> b!989256 (= e!635404 (and tp!302098 tp!302097))))

(assert (=> b!988806 (= tp!302061 e!635404)))

(declare-fun b!989255 () Bool)

(declare-fun tp!302100 () Bool)

(assert (=> b!989255 (= e!635404 tp!302100)))

(declare-fun b!989254 () Bool)

(declare-fun tp!302096 () Bool)

(declare-fun tp!302099 () Bool)

(assert (=> b!989254 (= e!635404 (and tp!302096 tp!302099))))

(assert (= (and b!988806 (is-ElementMatch!2748 (regTwo!6008 r!15766))) b!989253))

(assert (= (and b!988806 (is-Concat!4581 (regTwo!6008 r!15766))) b!989254))

(assert (= (and b!988806 (is-Star!2748 (regTwo!6008 r!15766))) b!989255))

(assert (= (and b!988806 (is-Union!2748 (regTwo!6008 r!15766))) b!989256))

(declare-fun b!989261 () Bool)

(declare-fun e!635407 () Bool)

(declare-fun tp!302103 () Bool)

(assert (=> b!989261 (= e!635407 (and tp_is_empty!5139 tp!302103))))

(assert (=> b!988808 (= tp!302057 e!635407)))

(assert (= (and b!988808 (is-Cons!9962 (t!101024 s!10566))) b!989261))

(declare-fun b!989262 () Bool)

(declare-fun e!635408 () Bool)

(assert (=> b!989262 (= e!635408 tp_is_empty!5139)))

(declare-fun b!989265 () Bool)

(declare-fun tp!302106 () Bool)

(declare-fun tp!302105 () Bool)

(assert (=> b!989265 (= e!635408 (and tp!302106 tp!302105))))

(assert (=> b!988802 (= tp!302059 e!635408)))

(declare-fun b!989264 () Bool)

(declare-fun tp!302108 () Bool)

(assert (=> b!989264 (= e!635408 tp!302108)))

(declare-fun b!989263 () Bool)

(declare-fun tp!302104 () Bool)

(declare-fun tp!302107 () Bool)

(assert (=> b!989263 (= e!635408 (and tp!302104 tp!302107))))

(assert (= (and b!988802 (is-ElementMatch!2748 (regOne!6009 r!15766))) b!989262))

(assert (= (and b!988802 (is-Concat!4581 (regOne!6009 r!15766))) b!989263))

(assert (= (and b!988802 (is-Star!2748 (regOne!6009 r!15766))) b!989264))

(assert (= (and b!988802 (is-Union!2748 (regOne!6009 r!15766))) b!989265))

(declare-fun b!989266 () Bool)

(declare-fun e!635409 () Bool)

(assert (=> b!989266 (= e!635409 tp_is_empty!5139)))

(declare-fun b!989269 () Bool)

(declare-fun tp!302111 () Bool)

(declare-fun tp!302110 () Bool)

(assert (=> b!989269 (= e!635409 (and tp!302111 tp!302110))))

(assert (=> b!988802 (= tp!302058 e!635409)))

(declare-fun b!989268 () Bool)

(declare-fun tp!302113 () Bool)

(assert (=> b!989268 (= e!635409 tp!302113)))

(declare-fun b!989267 () Bool)

(declare-fun tp!302109 () Bool)

(declare-fun tp!302112 () Bool)

(assert (=> b!989267 (= e!635409 (and tp!302109 tp!302112))))

(assert (= (and b!988802 (is-ElementMatch!2748 (regTwo!6009 r!15766))) b!989266))

(assert (= (and b!988802 (is-Concat!4581 (regTwo!6009 r!15766))) b!989267))

(assert (= (and b!988802 (is-Star!2748 (regTwo!6009 r!15766))) b!989268))

(assert (= (and b!988802 (is-Union!2748 (regTwo!6009 r!15766))) b!989269))

(declare-fun b!989270 () Bool)

(declare-fun e!635410 () Bool)

(assert (=> b!989270 (= e!635410 tp_is_empty!5139)))

(declare-fun b!989273 () Bool)

(declare-fun tp!302116 () Bool)

(declare-fun tp!302115 () Bool)

(assert (=> b!989273 (= e!635410 (and tp!302116 tp!302115))))

(assert (=> b!988807 (= tp!302062 e!635410)))

(declare-fun b!989272 () Bool)

(declare-fun tp!302118 () Bool)

(assert (=> b!989272 (= e!635410 tp!302118)))

(declare-fun b!989271 () Bool)

(declare-fun tp!302114 () Bool)

(declare-fun tp!302117 () Bool)

(assert (=> b!989271 (= e!635410 (and tp!302114 tp!302117))))

(assert (= (and b!988807 (is-ElementMatch!2748 (reg!3077 r!15766))) b!989270))

(assert (= (and b!988807 (is-Concat!4581 (reg!3077 r!15766))) b!989271))

(assert (= (and b!988807 (is-Star!2748 (reg!3077 r!15766))) b!989272))

(assert (= (and b!988807 (is-Union!2748 (reg!3077 r!15766))) b!989273))

(push 1)

(assert (not d!289536))

(assert (not b!989254))

(assert (not b!989272))

(assert (not b!988918))

(assert (not b!988910))

(assert (not b!989273))

(assert (not b!989250))

(assert (not b!989263))

(assert (not b!988913))

(assert (not b!989255))

(assert (not b!988912))

(assert (not b!989269))

(assert (not d!289558))

(assert (not b!989176))

(assert (not d!289542))

(assert (not bm!64408))

(assert (not d!289530))

(assert (not b!989267))

(assert (not b!989063))

(assert (not bm!64429))

(assert (not b!989049))

(assert (not b!989167))

(assert (not bm!64430))

(assert (not b!989050))

(assert (not bm!64403))

(assert (not b!989037))

(assert (not b!989064))

(assert (not d!289568))

(assert (not b!989145))

(assert (not b!989177))

(assert (not b!989141))

(assert (not b!989264))

(assert (not d!289548))

(assert (not b!989206))

(assert (not bm!64448))

(assert (not b!988914))

(assert (not b!989159))

(assert (not bm!64447))

(assert (not b!989041))

(assert (not b!989265))

(assert (not b!989169))

(assert (not b!989042))

(assert (not d!289532))

(assert (not b!989144))

(assert (not b!988915))

(assert (not bm!64407))

(assert (not d!289522))

(assert (not b!989252))

(assert (not bm!64401))

(assert (not b!989133))

(assert (not d!289556))

(assert (not b!989054))

(assert (not bm!64428))

(assert (not b!989146))

(assert (not b!988990))

(assert (not b!989256))

(assert (not bm!64431))

(assert tp_is_empty!5139)

(assert (not b!989271))

(assert (not b!989168))

(assert (not d!289566))

(assert (not d!289534))

(assert (not d!289524))

(assert (not bm!64433))

(assert (not b!989261))

(assert (not b!989051))

(assert (not b!989251))

(assert (not b!989153))

(assert (not b!989040))

(assert (not bm!64434))

(assert (not b!989268))

(assert (not d!289564))

(assert (not b!989056))

(assert (not b!989154))

(assert (not b!989137))

(assert (not b!989055))

(assert (not b!989164))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


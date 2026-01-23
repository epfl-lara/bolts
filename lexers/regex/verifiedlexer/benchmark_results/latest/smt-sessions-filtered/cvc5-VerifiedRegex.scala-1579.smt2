; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81712 () Bool)

(assert start!81712)

(declare-fun b!908693 () Bool)

(assert (=> b!908693 true))

(assert (=> b!908693 true))

(declare-fun lambda!28822 () Int)

(declare-fun lambda!28821 () Int)

(assert (=> b!908693 (not (= lambda!28822 lambda!28821))))

(assert (=> b!908693 true))

(assert (=> b!908693 true))

(declare-fun b!908688 () Bool)

(declare-fun e!593085 () Bool)

(declare-fun tp_is_empty!4475 () Bool)

(assert (=> b!908688 (= e!593085 tp_is_empty!4475)))

(declare-fun res!413185 () Bool)

(declare-fun e!593084 () Bool)

(assert (=> start!81712 (=> (not res!413185) (not e!593084))))

(declare-datatypes ((C!5402 0))(
  ( (C!5403 (val!2949 Int)) )
))
(declare-datatypes ((Regex!2416 0))(
  ( (ElementMatch!2416 (c!147207 C!5402)) (Concat!4249 (regOne!5344 Regex!2416) (regTwo!5344 Regex!2416)) (EmptyExpr!2416) (Star!2416 (reg!2745 Regex!2416)) (EmptyLang!2416) (Union!2416 (regOne!5345 Regex!2416) (regTwo!5345 Regex!2416)) )
))
(declare-fun r!15766 () Regex!2416)

(declare-fun validRegex!885 (Regex!2416) Bool)

(assert (=> start!81712 (= res!413185 (validRegex!885 r!15766))))

(assert (=> start!81712 e!593084))

(assert (=> start!81712 e!593085))

(declare-fun e!593082 () Bool)

(assert (=> start!81712 e!593082))

(declare-fun b!908689 () Bool)

(declare-fun tp!284355 () Bool)

(declare-fun tp!284358 () Bool)

(assert (=> b!908689 (= e!593085 (and tp!284355 tp!284358))))

(declare-fun b!908690 () Bool)

(declare-fun tp!284353 () Bool)

(assert (=> b!908690 (= e!593085 tp!284353)))

(declare-fun b!908691 () Bool)

(declare-fun tp!284357 () Bool)

(assert (=> b!908691 (= e!593082 (and tp_is_empty!4475 tp!284357))))

(declare-fun b!908692 () Bool)

(declare-fun tp!284354 () Bool)

(declare-fun tp!284356 () Bool)

(assert (=> b!908692 (= e!593085 (and tp!284354 tp!284356))))

(declare-fun e!593083 () Bool)

(declare-fun e!593086 () Bool)

(assert (=> b!908693 (= e!593083 e!593086)))

(declare-fun res!413183 () Bool)

(assert (=> b!908693 (=> res!413183 e!593086)))

(declare-datatypes ((List!9646 0))(
  ( (Nil!9630) (Cons!9630 (h!15031 C!5402) (t!100692 List!9646)) )
))
(declare-fun s!10566 () List!9646)

(declare-fun isEmpty!5841 (List!9646) Bool)

(assert (=> b!908693 (= res!413183 (isEmpty!5841 s!10566))))

(declare-fun Exists!189 (Int) Bool)

(assert (=> b!908693 (= (Exists!189 lambda!28821) (Exists!189 lambda!28822))))

(declare-datatypes ((Unit!14451 0))(
  ( (Unit!14452) )
))
(declare-fun lt!336227 () Unit!14451)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!103 (Regex!2416 Regex!2416 List!9646) Unit!14451)

(assert (=> b!908693 (= lt!336227 (lemmaExistCutMatchRandMatchRSpecEquivalent!103 (regOne!5344 r!15766) EmptyExpr!2416 s!10566))))

(declare-datatypes ((tuple2!10822 0))(
  ( (tuple2!10823 (_1!6237 List!9646) (_2!6237 List!9646)) )
))
(declare-datatypes ((Option!2053 0))(
  ( (None!2052) (Some!2052 (v!19469 tuple2!10822)) )
))
(declare-fun isDefined!1695 (Option!2053) Bool)

(declare-fun findConcatSeparation!159 (Regex!2416 Regex!2416 List!9646 List!9646 List!9646) Option!2053)

(assert (=> b!908693 (= (isDefined!1695 (findConcatSeparation!159 (regOne!5344 r!15766) EmptyExpr!2416 Nil!9630 s!10566 s!10566)) (Exists!189 lambda!28821))))

(declare-fun lt!336225 () Unit!14451)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!159 (Regex!2416 Regex!2416 List!9646) Unit!14451)

(assert (=> b!908693 (= lt!336225 (lemmaFindConcatSeparationEquivalentToExists!159 (regOne!5344 r!15766) EmptyExpr!2416 s!10566))))

(declare-fun b!908694 () Bool)

(assert (=> b!908694 (= e!593084 (not e!593083))))

(declare-fun res!413184 () Bool)

(assert (=> b!908694 (=> res!413184 e!593083)))

(declare-fun lt!336226 () Bool)

(assert (=> b!908694 (= res!413184 (or lt!336226 (and (is-Concat!4249 r!15766) (is-EmptyExpr!2416 (regOne!5344 r!15766))) (not (is-Concat!4249 r!15766)) (not (is-EmptyExpr!2416 (regTwo!5344 r!15766)))))))

(declare-fun matchRSpec!217 (Regex!2416 List!9646) Bool)

(assert (=> b!908694 (= lt!336226 (matchRSpec!217 r!15766 s!10566))))

(declare-fun matchR!954 (Regex!2416 List!9646) Bool)

(assert (=> b!908694 (= lt!336226 (matchR!954 r!15766 s!10566))))

(declare-fun lt!336224 () Unit!14451)

(declare-fun mainMatchTheorem!217 (Regex!2416 List!9646) Unit!14451)

(assert (=> b!908694 (= lt!336224 (mainMatchTheorem!217 r!15766 s!10566))))

(declare-fun b!908695 () Bool)

(assert (=> b!908695 (= e!593086 (validRegex!885 (regOne!5344 r!15766)))))

(assert (= (and start!81712 res!413185) b!908694))

(assert (= (and b!908694 (not res!413184)) b!908693))

(assert (= (and b!908693 (not res!413183)) b!908695))

(assert (= (and start!81712 (is-ElementMatch!2416 r!15766)) b!908688))

(assert (= (and start!81712 (is-Concat!4249 r!15766)) b!908692))

(assert (= (and start!81712 (is-Star!2416 r!15766)) b!908690))

(assert (= (and start!81712 (is-Union!2416 r!15766)) b!908689))

(assert (= (and start!81712 (is-Cons!9630 s!10566)) b!908691))

(declare-fun m!1142241 () Bool)

(assert (=> start!81712 m!1142241))

(declare-fun m!1142243 () Bool)

(assert (=> b!908693 m!1142243))

(assert (=> b!908693 m!1142243))

(declare-fun m!1142245 () Bool)

(assert (=> b!908693 m!1142245))

(declare-fun m!1142247 () Bool)

(assert (=> b!908693 m!1142247))

(declare-fun m!1142249 () Bool)

(assert (=> b!908693 m!1142249))

(assert (=> b!908693 m!1142249))

(declare-fun m!1142251 () Bool)

(assert (=> b!908693 m!1142251))

(declare-fun m!1142253 () Bool)

(assert (=> b!908693 m!1142253))

(declare-fun m!1142255 () Bool)

(assert (=> b!908693 m!1142255))

(declare-fun m!1142257 () Bool)

(assert (=> b!908694 m!1142257))

(declare-fun m!1142259 () Bool)

(assert (=> b!908694 m!1142259))

(declare-fun m!1142261 () Bool)

(assert (=> b!908694 m!1142261))

(declare-fun m!1142263 () Bool)

(assert (=> b!908695 m!1142263))

(push 1)

(assert (not b!908695))

(assert tp_is_empty!4475)

(assert (not b!908690))

(assert (not b!908691))

(assert (not start!81712))

(assert (not b!908692))

(assert (not b!908693))

(assert (not b!908694))

(assert (not b!908689))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!908758 () Bool)

(declare-fun res!413217 () Bool)

(declare-fun e!593123 () Bool)

(assert (=> b!908758 (=> (not res!413217) (not e!593123))))

(declare-fun call!54534 () Bool)

(assert (=> b!908758 (= res!413217 call!54534)))

(declare-fun e!593126 () Bool)

(assert (=> b!908758 (= e!593126 e!593123)))

(declare-fun b!908759 () Bool)

(declare-fun e!593122 () Bool)

(declare-fun e!593125 () Bool)

(assert (=> b!908759 (= e!593122 e!593125)))

(declare-fun res!413221 () Bool)

(assert (=> b!908759 (=> (not res!413221) (not e!593125))))

(assert (=> b!908759 (= res!413221 call!54534)))

(declare-fun b!908760 () Bool)

(declare-fun call!54535 () Bool)

(assert (=> b!908760 (= e!593125 call!54535)))

(declare-fun d!279076 () Bool)

(declare-fun res!413219 () Bool)

(declare-fun e!593124 () Bool)

(assert (=> d!279076 (=> res!413219 e!593124)))

(assert (=> d!279076 (= res!413219 (is-ElementMatch!2416 r!15766))))

(assert (=> d!279076 (= (validRegex!885 r!15766) e!593124)))

(declare-fun bm!54529 () Bool)

(declare-fun call!54536 () Bool)

(assert (=> bm!54529 (= call!54534 call!54536)))

(declare-fun c!147213 () Bool)

(declare-fun bm!54530 () Bool)

(declare-fun c!147214 () Bool)

(assert (=> bm!54530 (= call!54536 (validRegex!885 (ite c!147213 (reg!2745 r!15766) (ite c!147214 (regOne!5345 r!15766) (regOne!5344 r!15766)))))))

(declare-fun b!908761 () Bool)

(declare-fun e!593128 () Bool)

(assert (=> b!908761 (= e!593128 call!54536)))

(declare-fun b!908762 () Bool)

(assert (=> b!908762 (= e!593123 call!54535)))

(declare-fun b!908763 () Bool)

(declare-fun res!413218 () Bool)

(assert (=> b!908763 (=> res!413218 e!593122)))

(assert (=> b!908763 (= res!413218 (not (is-Concat!4249 r!15766)))))

(assert (=> b!908763 (= e!593126 e!593122)))

(declare-fun b!908764 () Bool)

(declare-fun e!593127 () Bool)

(assert (=> b!908764 (= e!593127 e!593126)))

(assert (=> b!908764 (= c!147214 (is-Union!2416 r!15766))))

(declare-fun b!908765 () Bool)

(assert (=> b!908765 (= e!593127 e!593128)))

(declare-fun res!413220 () Bool)

(declare-fun nullable!651 (Regex!2416) Bool)

(assert (=> b!908765 (= res!413220 (not (nullable!651 (reg!2745 r!15766))))))

(assert (=> b!908765 (=> (not res!413220) (not e!593128))))

(declare-fun bm!54531 () Bool)

(assert (=> bm!54531 (= call!54535 (validRegex!885 (ite c!147214 (regTwo!5345 r!15766) (regTwo!5344 r!15766))))))

(declare-fun b!908766 () Bool)

(assert (=> b!908766 (= e!593124 e!593127)))

(assert (=> b!908766 (= c!147213 (is-Star!2416 r!15766))))

(assert (= (and d!279076 (not res!413219)) b!908766))

(assert (= (and b!908766 c!147213) b!908765))

(assert (= (and b!908766 (not c!147213)) b!908764))

(assert (= (and b!908765 res!413220) b!908761))

(assert (= (and b!908764 c!147214) b!908758))

(assert (= (and b!908764 (not c!147214)) b!908763))

(assert (= (and b!908758 res!413217) b!908762))

(assert (= (and b!908763 (not res!413218)) b!908759))

(assert (= (and b!908759 res!413221) b!908760))

(assert (= (or b!908762 b!908760) bm!54531))

(assert (= (or b!908758 b!908759) bm!54529))

(assert (= (or b!908761 bm!54529) bm!54530))

(declare-fun m!1142289 () Bool)

(assert (=> bm!54530 m!1142289))

(declare-fun m!1142291 () Bool)

(assert (=> b!908765 m!1142291))

(declare-fun m!1142293 () Bool)

(assert (=> bm!54531 m!1142293))

(assert (=> start!81712 d!279076))

(declare-fun d!279078 () Bool)

(declare-fun isEmpty!5843 (Option!2053) Bool)

(assert (=> d!279078 (= (isDefined!1695 (findConcatSeparation!159 (regOne!5344 r!15766) EmptyExpr!2416 Nil!9630 s!10566 s!10566)) (not (isEmpty!5843 (findConcatSeparation!159 (regOne!5344 r!15766) EmptyExpr!2416 Nil!9630 s!10566 s!10566))))))

(declare-fun bs!235628 () Bool)

(assert (= bs!235628 d!279078))

(assert (=> bs!235628 m!1142243))

(declare-fun m!1142295 () Bool)

(assert (=> bs!235628 m!1142295))

(assert (=> b!908693 d!279078))

(declare-fun d!279082 () Bool)

(declare-fun choose!5511 (Int) Bool)

(assert (=> d!279082 (= (Exists!189 lambda!28822) (choose!5511 lambda!28822))))

(declare-fun bs!235629 () Bool)

(assert (= bs!235629 d!279082))

(declare-fun m!1142297 () Bool)

(assert (=> bs!235629 m!1142297))

(assert (=> b!908693 d!279082))

(declare-fun b!908803 () Bool)

(declare-fun res!413243 () Bool)

(declare-fun e!593153 () Bool)

(assert (=> b!908803 (=> (not res!413243) (not e!593153))))

(declare-fun lt!336246 () Option!2053)

(declare-fun get!3096 (Option!2053) tuple2!10822)

(assert (=> b!908803 (= res!413243 (matchR!954 (regOne!5344 r!15766) (_1!6237 (get!3096 lt!336246))))))

(declare-fun b!908804 () Bool)

(declare-fun e!593155 () Option!2053)

(declare-fun e!593156 () Option!2053)

(assert (=> b!908804 (= e!593155 e!593156)))

(declare-fun c!147224 () Bool)

(assert (=> b!908804 (= c!147224 (is-Nil!9630 s!10566))))

(declare-fun b!908805 () Bool)

(declare-fun e!593157 () Bool)

(assert (=> b!908805 (= e!593157 (matchR!954 EmptyExpr!2416 s!10566))))

(declare-fun b!908806 () Bool)

(assert (=> b!908806 (= e!593155 (Some!2052 (tuple2!10823 Nil!9630 s!10566)))))

(declare-fun b!908807 () Bool)

(assert (=> b!908807 (= e!593156 None!2052)))

(declare-fun b!908808 () Bool)

(declare-fun res!413245 () Bool)

(assert (=> b!908808 (=> (not res!413245) (not e!593153))))

(assert (=> b!908808 (= res!413245 (matchR!954 EmptyExpr!2416 (_2!6237 (get!3096 lt!336246))))))

(declare-fun d!279084 () Bool)

(declare-fun e!593154 () Bool)

(assert (=> d!279084 e!593154))

(declare-fun res!413246 () Bool)

(assert (=> d!279084 (=> res!413246 e!593154)))

(assert (=> d!279084 (= res!413246 e!593153)))

(declare-fun res!413244 () Bool)

(assert (=> d!279084 (=> (not res!413244) (not e!593153))))

(assert (=> d!279084 (= res!413244 (isDefined!1695 lt!336246))))

(assert (=> d!279084 (= lt!336246 e!593155)))

(declare-fun c!147223 () Bool)

(assert (=> d!279084 (= c!147223 e!593157)))

(declare-fun res!413242 () Bool)

(assert (=> d!279084 (=> (not res!413242) (not e!593157))))

(assert (=> d!279084 (= res!413242 (matchR!954 (regOne!5344 r!15766) Nil!9630))))

(assert (=> d!279084 (validRegex!885 (regOne!5344 r!15766))))

(assert (=> d!279084 (= (findConcatSeparation!159 (regOne!5344 r!15766) EmptyExpr!2416 Nil!9630 s!10566 s!10566) lt!336246)))

(declare-fun b!908809 () Bool)

(declare-fun ++!2530 (List!9646 List!9646) List!9646)

(assert (=> b!908809 (= e!593153 (= (++!2530 (_1!6237 (get!3096 lt!336246)) (_2!6237 (get!3096 lt!336246))) s!10566))))

(declare-fun b!908810 () Bool)

(declare-fun lt!336247 () Unit!14451)

(declare-fun lt!336248 () Unit!14451)

(assert (=> b!908810 (= lt!336247 lt!336248)))

(assert (=> b!908810 (= (++!2530 (++!2530 Nil!9630 (Cons!9630 (h!15031 s!10566) Nil!9630)) (t!100692 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!147 (List!9646 C!5402 List!9646 List!9646) Unit!14451)

(assert (=> b!908810 (= lt!336248 (lemmaMoveElementToOtherListKeepsConcatEq!147 Nil!9630 (h!15031 s!10566) (t!100692 s!10566) s!10566))))

(assert (=> b!908810 (= e!593156 (findConcatSeparation!159 (regOne!5344 r!15766) EmptyExpr!2416 (++!2530 Nil!9630 (Cons!9630 (h!15031 s!10566) Nil!9630)) (t!100692 s!10566) s!10566))))

(declare-fun b!908811 () Bool)

(assert (=> b!908811 (= e!593154 (not (isDefined!1695 lt!336246)))))

(assert (= (and d!279084 res!413242) b!908805))

(assert (= (and d!279084 c!147223) b!908806))

(assert (= (and d!279084 (not c!147223)) b!908804))

(assert (= (and b!908804 c!147224) b!908807))

(assert (= (and b!908804 (not c!147224)) b!908810))

(assert (= (and d!279084 res!413244) b!908803))

(assert (= (and b!908803 res!413243) b!908808))

(assert (= (and b!908808 res!413245) b!908809))

(assert (= (and d!279084 (not res!413246)) b!908811))

(declare-fun m!1142299 () Bool)

(assert (=> b!908811 m!1142299))

(declare-fun m!1142301 () Bool)

(assert (=> b!908808 m!1142301))

(declare-fun m!1142303 () Bool)

(assert (=> b!908808 m!1142303))

(assert (=> d!279084 m!1142299))

(declare-fun m!1142305 () Bool)

(assert (=> d!279084 m!1142305))

(assert (=> d!279084 m!1142263))

(declare-fun m!1142307 () Bool)

(assert (=> b!908805 m!1142307))

(assert (=> b!908803 m!1142301))

(declare-fun m!1142309 () Bool)

(assert (=> b!908803 m!1142309))

(declare-fun m!1142311 () Bool)

(assert (=> b!908810 m!1142311))

(assert (=> b!908810 m!1142311))

(declare-fun m!1142313 () Bool)

(assert (=> b!908810 m!1142313))

(declare-fun m!1142315 () Bool)

(assert (=> b!908810 m!1142315))

(assert (=> b!908810 m!1142311))

(declare-fun m!1142317 () Bool)

(assert (=> b!908810 m!1142317))

(assert (=> b!908809 m!1142301))

(declare-fun m!1142319 () Bool)

(assert (=> b!908809 m!1142319))

(assert (=> b!908693 d!279084))

(declare-fun bs!235630 () Bool)

(declare-fun d!279086 () Bool)

(assert (= bs!235630 (and d!279086 b!908693)))

(declare-fun lambda!28833 () Int)

(assert (=> bs!235630 (= lambda!28833 lambda!28821)))

(assert (=> bs!235630 (not (= lambda!28833 lambda!28822))))

(assert (=> d!279086 true))

(assert (=> d!279086 true))

(assert (=> d!279086 true))

(assert (=> d!279086 (= (isDefined!1695 (findConcatSeparation!159 (regOne!5344 r!15766) EmptyExpr!2416 Nil!9630 s!10566 s!10566)) (Exists!189 lambda!28833))))

(declare-fun lt!336251 () Unit!14451)

(declare-fun choose!5512 (Regex!2416 Regex!2416 List!9646) Unit!14451)

(assert (=> d!279086 (= lt!336251 (choose!5512 (regOne!5344 r!15766) EmptyExpr!2416 s!10566))))

(assert (=> d!279086 (validRegex!885 (regOne!5344 r!15766))))

(assert (=> d!279086 (= (lemmaFindConcatSeparationEquivalentToExists!159 (regOne!5344 r!15766) EmptyExpr!2416 s!10566) lt!336251)))

(declare-fun bs!235631 () Bool)

(assert (= bs!235631 d!279086))

(assert (=> bs!235631 m!1142243))

(assert (=> bs!235631 m!1142245))

(assert (=> bs!235631 m!1142263))

(declare-fun m!1142327 () Bool)

(assert (=> bs!235631 m!1142327))

(declare-fun m!1142329 () Bool)

(assert (=> bs!235631 m!1142329))

(assert (=> bs!235631 m!1142243))

(assert (=> b!908693 d!279086))

(declare-fun bs!235632 () Bool)

(declare-fun d!279090 () Bool)

(assert (= bs!235632 (and d!279090 b!908693)))

(declare-fun lambda!28840 () Int)

(assert (=> bs!235632 (= lambda!28840 lambda!28821)))

(assert (=> bs!235632 (not (= lambda!28840 lambda!28822))))

(declare-fun bs!235633 () Bool)

(assert (= bs!235633 (and d!279090 d!279086)))

(assert (=> bs!235633 (= lambda!28840 lambda!28833)))

(assert (=> d!279090 true))

(assert (=> d!279090 true))

(assert (=> d!279090 true))

(declare-fun lambda!28842 () Int)

(assert (=> bs!235632 (not (= lambda!28842 lambda!28821))))

(assert (=> bs!235632 (= lambda!28842 lambda!28822)))

(assert (=> bs!235633 (not (= lambda!28842 lambda!28833))))

(declare-fun bs!235634 () Bool)

(assert (= bs!235634 d!279090))

(assert (=> bs!235634 (not (= lambda!28842 lambda!28840))))

(assert (=> d!279090 true))

(assert (=> d!279090 true))

(assert (=> d!279090 true))

(assert (=> d!279090 (= (Exists!189 lambda!28840) (Exists!189 lambda!28842))))

(declare-fun lt!336254 () Unit!14451)

(declare-fun choose!5513 (Regex!2416 Regex!2416 List!9646) Unit!14451)

(assert (=> d!279090 (= lt!336254 (choose!5513 (regOne!5344 r!15766) EmptyExpr!2416 s!10566))))

(assert (=> d!279090 (validRegex!885 (regOne!5344 r!15766))))

(assert (=> d!279090 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!103 (regOne!5344 r!15766) EmptyExpr!2416 s!10566) lt!336254)))

(declare-fun m!1142331 () Bool)

(assert (=> bs!235634 m!1142331))

(declare-fun m!1142333 () Bool)

(assert (=> bs!235634 m!1142333))

(declare-fun m!1142335 () Bool)

(assert (=> bs!235634 m!1142335))

(assert (=> bs!235634 m!1142263))

(assert (=> b!908693 d!279090))

(declare-fun d!279092 () Bool)

(assert (=> d!279092 (= (isEmpty!5841 s!10566) (is-Nil!9630 s!10566))))

(assert (=> b!908693 d!279092))

(declare-fun d!279094 () Bool)

(assert (=> d!279094 (= (Exists!189 lambda!28821) (choose!5511 lambda!28821))))

(declare-fun bs!235635 () Bool)

(assert (= bs!235635 d!279094))

(declare-fun m!1142337 () Bool)

(assert (=> bs!235635 m!1142337))

(assert (=> b!908693 d!279094))

(declare-fun b!908865 () Bool)

(declare-fun res!413280 () Bool)

(declare-fun e!593190 () Bool)

(assert (=> b!908865 (=> (not res!413280) (not e!593190))))

(declare-fun call!54546 () Bool)

(assert (=> b!908865 (= res!413280 call!54546)))

(declare-fun e!593193 () Bool)

(assert (=> b!908865 (= e!593193 e!593190)))

(declare-fun b!908866 () Bool)

(declare-fun e!593189 () Bool)

(declare-fun e!593192 () Bool)

(assert (=> b!908866 (= e!593189 e!593192)))

(declare-fun res!413284 () Bool)

(assert (=> b!908866 (=> (not res!413284) (not e!593192))))

(assert (=> b!908866 (= res!413284 call!54546)))

(declare-fun b!908867 () Bool)

(declare-fun call!54547 () Bool)

(assert (=> b!908867 (= e!593192 call!54547)))

(declare-fun d!279096 () Bool)

(declare-fun res!413282 () Bool)

(declare-fun e!593191 () Bool)

(assert (=> d!279096 (=> res!413282 e!593191)))

(assert (=> d!279096 (= res!413282 (is-ElementMatch!2416 (regOne!5344 r!15766)))))

(assert (=> d!279096 (= (validRegex!885 (regOne!5344 r!15766)) e!593191)))

(declare-fun bm!54541 () Bool)

(declare-fun call!54548 () Bool)

(assert (=> bm!54541 (= call!54546 call!54548)))

(declare-fun bm!54542 () Bool)

(declare-fun c!147236 () Bool)

(declare-fun c!147235 () Bool)

(assert (=> bm!54542 (= call!54548 (validRegex!885 (ite c!147235 (reg!2745 (regOne!5344 r!15766)) (ite c!147236 (regOne!5345 (regOne!5344 r!15766)) (regOne!5344 (regOne!5344 r!15766))))))))

(declare-fun b!908868 () Bool)

(declare-fun e!593195 () Bool)

(assert (=> b!908868 (= e!593195 call!54548)))

(declare-fun b!908869 () Bool)

(assert (=> b!908869 (= e!593190 call!54547)))

(declare-fun b!908870 () Bool)

(declare-fun res!413281 () Bool)

(assert (=> b!908870 (=> res!413281 e!593189)))

(assert (=> b!908870 (= res!413281 (not (is-Concat!4249 (regOne!5344 r!15766))))))

(assert (=> b!908870 (= e!593193 e!593189)))

(declare-fun b!908871 () Bool)

(declare-fun e!593194 () Bool)

(assert (=> b!908871 (= e!593194 e!593193)))

(assert (=> b!908871 (= c!147236 (is-Union!2416 (regOne!5344 r!15766)))))

(declare-fun b!908872 () Bool)

(assert (=> b!908872 (= e!593194 e!593195)))

(declare-fun res!413283 () Bool)

(assert (=> b!908872 (= res!413283 (not (nullable!651 (reg!2745 (regOne!5344 r!15766)))))))

(assert (=> b!908872 (=> (not res!413283) (not e!593195))))

(declare-fun bm!54543 () Bool)

(assert (=> bm!54543 (= call!54547 (validRegex!885 (ite c!147236 (regTwo!5345 (regOne!5344 r!15766)) (regTwo!5344 (regOne!5344 r!15766)))))))

(declare-fun b!908873 () Bool)

(assert (=> b!908873 (= e!593191 e!593194)))

(assert (=> b!908873 (= c!147235 (is-Star!2416 (regOne!5344 r!15766)))))

(assert (= (and d!279096 (not res!413282)) b!908873))

(assert (= (and b!908873 c!147235) b!908872))

(assert (= (and b!908873 (not c!147235)) b!908871))

(assert (= (and b!908872 res!413283) b!908868))

(assert (= (and b!908871 c!147236) b!908865))

(assert (= (and b!908871 (not c!147236)) b!908870))

(assert (= (and b!908865 res!413280) b!908869))

(assert (= (and b!908870 (not res!413281)) b!908866))

(assert (= (and b!908866 res!413284) b!908867))

(assert (= (or b!908869 b!908867) bm!54543))

(assert (= (or b!908865 b!908866) bm!54541))

(assert (= (or b!908868 bm!54541) bm!54542))

(declare-fun m!1142339 () Bool)

(assert (=> bm!54542 m!1142339))

(declare-fun m!1142341 () Bool)

(assert (=> b!908872 m!1142341))

(declare-fun m!1142343 () Bool)

(assert (=> bm!54543 m!1142343))

(assert (=> b!908695 d!279096))

(declare-fun bs!235639 () Bool)

(declare-fun b!908923 () Bool)

(assert (= bs!235639 (and b!908923 d!279090)))

(declare-fun lambda!28850 () Int)

(assert (=> bs!235639 (not (= lambda!28850 lambda!28840))))

(assert (=> bs!235639 (not (= lambda!28850 lambda!28842))))

(declare-fun bs!235640 () Bool)

(assert (= bs!235640 (and b!908923 b!908693)))

(assert (=> bs!235640 (not (= lambda!28850 lambda!28821))))

(declare-fun bs!235641 () Bool)

(assert (= bs!235641 (and b!908923 d!279086)))

(assert (=> bs!235641 (not (= lambda!28850 lambda!28833))))

(assert (=> bs!235640 (not (= lambda!28850 lambda!28822))))

(assert (=> b!908923 true))

(assert (=> b!908923 true))

(declare-fun bs!235642 () Bool)

(declare-fun b!908926 () Bool)

(assert (= bs!235642 (and b!908926 d!279090)))

(declare-fun lambda!28851 () Int)

(assert (=> bs!235642 (not (= lambda!28851 lambda!28840))))

(assert (=> bs!235642 (= (= (regTwo!5344 r!15766) EmptyExpr!2416) (= lambda!28851 lambda!28842))))

(declare-fun bs!235643 () Bool)

(assert (= bs!235643 (and b!908926 b!908693)))

(assert (=> bs!235643 (not (= lambda!28851 lambda!28821))))

(declare-fun bs!235644 () Bool)

(assert (= bs!235644 (and b!908926 b!908923)))

(assert (=> bs!235644 (not (= lambda!28851 lambda!28850))))

(declare-fun bs!235645 () Bool)

(assert (= bs!235645 (and b!908926 d!279086)))

(assert (=> bs!235645 (not (= lambda!28851 lambda!28833))))

(assert (=> bs!235643 (= (= (regTwo!5344 r!15766) EmptyExpr!2416) (= lambda!28851 lambda!28822))))

(assert (=> b!908926 true))

(assert (=> b!908926 true))

(declare-fun c!147251 () Bool)

(declare-fun bm!54554 () Bool)

(declare-fun call!54559 () Bool)

(assert (=> bm!54554 (= call!54559 (Exists!189 (ite c!147251 lambda!28850 lambda!28851)))))

(declare-fun bm!54555 () Bool)

(declare-fun call!54560 () Bool)

(assert (=> bm!54555 (= call!54560 (isEmpty!5841 s!10566))))

(declare-fun b!908917 () Bool)

(declare-fun e!593223 () Bool)

(declare-fun e!593226 () Bool)

(assert (=> b!908917 (= e!593223 e!593226)))

(declare-fun res!413305 () Bool)

(assert (=> b!908917 (= res!413305 (matchRSpec!217 (regOne!5345 r!15766) s!10566))))

(assert (=> b!908917 (=> res!413305 e!593226)))

(declare-fun b!908918 () Bool)

(declare-fun c!147250 () Bool)

(assert (=> b!908918 (= c!147250 (is-Union!2416 r!15766))))

(declare-fun e!593225 () Bool)

(assert (=> b!908918 (= e!593225 e!593223)))

(declare-fun b!908919 () Bool)

(declare-fun c!147249 () Bool)

(assert (=> b!908919 (= c!147249 (is-ElementMatch!2416 r!15766))))

(declare-fun e!593227 () Bool)

(assert (=> b!908919 (= e!593227 e!593225)))

(declare-fun b!908921 () Bool)

(declare-fun e!593224 () Bool)

(assert (=> b!908921 (= e!593224 call!54560)))

(declare-fun b!908922 () Bool)

(assert (=> b!908922 (= e!593225 (= s!10566 (Cons!9630 (c!147207 r!15766) Nil!9630)))))

(declare-fun e!593222 () Bool)

(assert (=> b!908923 (= e!593222 call!54559)))

(declare-fun b!908924 () Bool)

(declare-fun res!413304 () Bool)

(assert (=> b!908924 (=> res!413304 e!593222)))

(assert (=> b!908924 (= res!413304 call!54560)))

(declare-fun e!593221 () Bool)

(assert (=> b!908924 (= e!593221 e!593222)))

(declare-fun b!908925 () Bool)

(assert (=> b!908925 (= e!593224 e!593227)))

(declare-fun res!413306 () Bool)

(assert (=> b!908925 (= res!413306 (not (is-EmptyLang!2416 r!15766)))))

(assert (=> b!908925 (=> (not res!413306) (not e!593227))))

(declare-fun d!279098 () Bool)

(declare-fun c!147252 () Bool)

(assert (=> d!279098 (= c!147252 (is-EmptyExpr!2416 r!15766))))

(assert (=> d!279098 (= (matchRSpec!217 r!15766 s!10566) e!593224)))

(declare-fun b!908920 () Bool)

(assert (=> b!908920 (= e!593223 e!593221)))

(assert (=> b!908920 (= c!147251 (is-Star!2416 r!15766))))

(assert (=> b!908926 (= e!593221 call!54559)))

(declare-fun b!908927 () Bool)

(assert (=> b!908927 (= e!593226 (matchRSpec!217 (regTwo!5345 r!15766) s!10566))))

(assert (= (and d!279098 c!147252) b!908921))

(assert (= (and d!279098 (not c!147252)) b!908925))

(assert (= (and b!908925 res!413306) b!908919))

(assert (= (and b!908919 c!147249) b!908922))

(assert (= (and b!908919 (not c!147249)) b!908918))

(assert (= (and b!908918 c!147250) b!908917))

(assert (= (and b!908918 (not c!147250)) b!908920))

(assert (= (and b!908917 (not res!413305)) b!908927))

(assert (= (and b!908920 c!147251) b!908924))

(assert (= (and b!908920 (not c!147251)) b!908926))

(assert (= (and b!908924 (not res!413304)) b!908923))

(assert (= (or b!908923 b!908926) bm!54554))

(assert (= (or b!908921 b!908924) bm!54555))

(declare-fun m!1142351 () Bool)

(assert (=> bm!54554 m!1142351))

(assert (=> bm!54555 m!1142253))

(declare-fun m!1142353 () Bool)

(assert (=> b!908917 m!1142353))

(declare-fun m!1142355 () Bool)

(assert (=> b!908927 m!1142355))

(assert (=> b!908694 d!279098))

(declare-fun b!908972 () Bool)

(declare-fun res!413331 () Bool)

(declare-fun e!593257 () Bool)

(assert (=> b!908972 (=> res!413331 e!593257)))

(assert (=> b!908972 (= res!413331 (not (is-ElementMatch!2416 r!15766)))))

(declare-fun e!593254 () Bool)

(assert (=> b!908972 (= e!593254 e!593257)))

(declare-fun b!908973 () Bool)

(declare-fun e!593253 () Bool)

(declare-fun lt!336259 () Bool)

(declare-fun call!54563 () Bool)

(assert (=> b!908973 (= e!593253 (= lt!336259 call!54563))))

(declare-fun bm!54558 () Bool)

(assert (=> bm!54558 (= call!54563 (isEmpty!5841 s!10566))))

(declare-fun b!908975 () Bool)

(declare-fun e!593258 () Bool)

(declare-fun head!1615 (List!9646) C!5402)

(assert (=> b!908975 (= e!593258 (not (= (head!1615 s!10566) (c!147207 r!15766))))))

(declare-fun b!908976 () Bool)

(declare-fun e!593255 () Bool)

(declare-fun derivativeStep!462 (Regex!2416 C!5402) Regex!2416)

(declare-fun tail!1177 (List!9646) List!9646)

(assert (=> b!908976 (= e!593255 (matchR!954 (derivativeStep!462 r!15766 (head!1615 s!10566)) (tail!1177 s!10566)))))

(declare-fun b!908977 () Bool)

(assert (=> b!908977 (= e!593253 e!593254)))

(declare-fun c!147267 () Bool)

(assert (=> b!908977 (= c!147267 (is-EmptyLang!2416 r!15766))))

(declare-fun b!908980 () Bool)

(assert (=> b!908980 (= e!593255 (nullable!651 r!15766))))

(declare-fun b!908981 () Bool)

(declare-fun e!593252 () Bool)

(assert (=> b!908981 (= e!593257 e!593252)))

(declare-fun res!413334 () Bool)

(assert (=> b!908981 (=> (not res!413334) (not e!593252))))

(assert (=> b!908981 (= res!413334 (not lt!336259))))

(declare-fun b!908982 () Bool)

(declare-fun res!413332 () Bool)

(assert (=> b!908982 (=> res!413332 e!593258)))

(assert (=> b!908982 (= res!413332 (not (isEmpty!5841 (tail!1177 s!10566))))))

(declare-fun b!908983 () Bool)

(declare-fun e!593256 () Bool)

(assert (=> b!908983 (= e!593256 (= (head!1615 s!10566) (c!147207 r!15766)))))

(declare-fun b!908974 () Bool)

(assert (=> b!908974 (= e!593252 e!593258)))

(declare-fun res!413329 () Bool)

(assert (=> b!908974 (=> res!413329 e!593258)))

(assert (=> b!908974 (= res!413329 call!54563)))

(declare-fun d!279102 () Bool)

(assert (=> d!279102 e!593253))

(declare-fun c!147265 () Bool)

(assert (=> d!279102 (= c!147265 (is-EmptyExpr!2416 r!15766))))

(assert (=> d!279102 (= lt!336259 e!593255)))

(declare-fun c!147266 () Bool)

(assert (=> d!279102 (= c!147266 (isEmpty!5841 s!10566))))

(assert (=> d!279102 (validRegex!885 r!15766)))

(assert (=> d!279102 (= (matchR!954 r!15766 s!10566) lt!336259)))

(declare-fun b!908984 () Bool)

(declare-fun res!413333 () Bool)

(assert (=> b!908984 (=> (not res!413333) (not e!593256))))

(assert (=> b!908984 (= res!413333 (isEmpty!5841 (tail!1177 s!10566)))))

(declare-fun b!908985 () Bool)

(declare-fun res!413330 () Bool)

(assert (=> b!908985 (=> (not res!413330) (not e!593256))))

(assert (=> b!908985 (= res!413330 (not call!54563))))

(declare-fun b!908986 () Bool)

(assert (=> b!908986 (= e!593254 (not lt!336259))))

(declare-fun b!908987 () Bool)

(declare-fun res!413338 () Bool)

(assert (=> b!908987 (=> res!413338 e!593257)))

(assert (=> b!908987 (= res!413338 e!593256)))

(declare-fun res!413335 () Bool)

(assert (=> b!908987 (=> (not res!413335) (not e!593256))))

(assert (=> b!908987 (= res!413335 lt!336259)))

(assert (= (and d!279102 c!147266) b!908980))

(assert (= (and d!279102 (not c!147266)) b!908976))

(assert (= (and d!279102 c!147265) b!908973))

(assert (= (and d!279102 (not c!147265)) b!908977))

(assert (= (and b!908977 c!147267) b!908986))

(assert (= (and b!908977 (not c!147267)) b!908972))

(assert (= (and b!908972 (not res!413331)) b!908987))

(assert (= (and b!908987 res!413335) b!908985))

(assert (= (and b!908985 res!413330) b!908984))

(assert (= (and b!908984 res!413333) b!908983))

(assert (= (and b!908987 (not res!413338)) b!908981))

(assert (= (and b!908981 res!413334) b!908974))

(assert (= (and b!908974 (not res!413329)) b!908982))

(assert (= (and b!908982 (not res!413332)) b!908975))

(assert (= (or b!908973 b!908974 b!908985) bm!54558))

(declare-fun m!1142357 () Bool)

(assert (=> b!908983 m!1142357))

(assert (=> b!908976 m!1142357))

(assert (=> b!908976 m!1142357))

(declare-fun m!1142359 () Bool)

(assert (=> b!908976 m!1142359))

(declare-fun m!1142361 () Bool)

(assert (=> b!908976 m!1142361))

(assert (=> b!908976 m!1142359))

(assert (=> b!908976 m!1142361))

(declare-fun m!1142363 () Bool)

(assert (=> b!908976 m!1142363))

(assert (=> d!279102 m!1142253))

(assert (=> d!279102 m!1142241))

(assert (=> b!908984 m!1142361))

(assert (=> b!908984 m!1142361))

(declare-fun m!1142365 () Bool)

(assert (=> b!908984 m!1142365))

(assert (=> bm!54558 m!1142253))

(declare-fun m!1142367 () Bool)

(assert (=> b!908980 m!1142367))

(assert (=> b!908975 m!1142357))

(assert (=> b!908982 m!1142361))

(assert (=> b!908982 m!1142361))

(assert (=> b!908982 m!1142365))

(assert (=> b!908694 d!279102))

(declare-fun d!279104 () Bool)

(assert (=> d!279104 (= (matchR!954 r!15766 s!10566) (matchRSpec!217 r!15766 s!10566))))

(declare-fun lt!336262 () Unit!14451)

(declare-fun choose!5514 (Regex!2416 List!9646) Unit!14451)

(assert (=> d!279104 (= lt!336262 (choose!5514 r!15766 s!10566))))

(assert (=> d!279104 (validRegex!885 r!15766)))

(assert (=> d!279104 (= (mainMatchTheorem!217 r!15766 s!10566) lt!336262)))

(declare-fun bs!235646 () Bool)

(assert (= bs!235646 d!279104))

(assert (=> bs!235646 m!1142259))

(assert (=> bs!235646 m!1142257))

(declare-fun m!1142369 () Bool)

(assert (=> bs!235646 m!1142369))

(assert (=> bs!235646 m!1142241))

(assert (=> b!908694 d!279104))

(declare-fun b!909010 () Bool)

(declare-fun e!593265 () Bool)

(declare-fun tp!284389 () Bool)

(assert (=> b!909010 (= e!593265 tp!284389)))

(declare-fun b!909009 () Bool)

(declare-fun tp!284388 () Bool)

(declare-fun tp!284391 () Bool)

(assert (=> b!909009 (= e!593265 (and tp!284388 tp!284391))))

(assert (=> b!908689 (= tp!284355 e!593265)))

(declare-fun b!909008 () Bool)

(assert (=> b!909008 (= e!593265 tp_is_empty!4475)))

(declare-fun b!909011 () Bool)

(declare-fun tp!284390 () Bool)

(declare-fun tp!284387 () Bool)

(assert (=> b!909011 (= e!593265 (and tp!284390 tp!284387))))

(assert (= (and b!908689 (is-ElementMatch!2416 (regOne!5345 r!15766))) b!909008))

(assert (= (and b!908689 (is-Concat!4249 (regOne!5345 r!15766))) b!909009))

(assert (= (and b!908689 (is-Star!2416 (regOne!5345 r!15766))) b!909010))

(assert (= (and b!908689 (is-Union!2416 (regOne!5345 r!15766))) b!909011))

(declare-fun b!909014 () Bool)

(declare-fun e!593266 () Bool)

(declare-fun tp!284394 () Bool)

(assert (=> b!909014 (= e!593266 tp!284394)))

(declare-fun b!909013 () Bool)

(declare-fun tp!284393 () Bool)

(declare-fun tp!284396 () Bool)

(assert (=> b!909013 (= e!593266 (and tp!284393 tp!284396))))

(assert (=> b!908689 (= tp!284358 e!593266)))

(declare-fun b!909012 () Bool)

(assert (=> b!909012 (= e!593266 tp_is_empty!4475)))

(declare-fun b!909015 () Bool)

(declare-fun tp!284395 () Bool)

(declare-fun tp!284392 () Bool)

(assert (=> b!909015 (= e!593266 (and tp!284395 tp!284392))))

(assert (= (and b!908689 (is-ElementMatch!2416 (regTwo!5345 r!15766))) b!909012))

(assert (= (and b!908689 (is-Concat!4249 (regTwo!5345 r!15766))) b!909013))

(assert (= (and b!908689 (is-Star!2416 (regTwo!5345 r!15766))) b!909014))

(assert (= (and b!908689 (is-Union!2416 (regTwo!5345 r!15766))) b!909015))

(declare-fun b!909020 () Bool)

(declare-fun e!593269 () Bool)

(declare-fun tp!284399 () Bool)

(assert (=> b!909020 (= e!593269 (and tp_is_empty!4475 tp!284399))))

(assert (=> b!908691 (= tp!284357 e!593269)))

(assert (= (and b!908691 (is-Cons!9630 (t!100692 s!10566))) b!909020))

(declare-fun b!909023 () Bool)

(declare-fun e!593270 () Bool)

(declare-fun tp!284402 () Bool)

(assert (=> b!909023 (= e!593270 tp!284402)))

(declare-fun b!909022 () Bool)

(declare-fun tp!284401 () Bool)

(declare-fun tp!284404 () Bool)

(assert (=> b!909022 (= e!593270 (and tp!284401 tp!284404))))

(assert (=> b!908690 (= tp!284353 e!593270)))

(declare-fun b!909021 () Bool)

(assert (=> b!909021 (= e!593270 tp_is_empty!4475)))

(declare-fun b!909024 () Bool)

(declare-fun tp!284403 () Bool)

(declare-fun tp!284400 () Bool)

(assert (=> b!909024 (= e!593270 (and tp!284403 tp!284400))))

(assert (= (and b!908690 (is-ElementMatch!2416 (reg!2745 r!15766))) b!909021))

(assert (= (and b!908690 (is-Concat!4249 (reg!2745 r!15766))) b!909022))

(assert (= (and b!908690 (is-Star!2416 (reg!2745 r!15766))) b!909023))

(assert (= (and b!908690 (is-Union!2416 (reg!2745 r!15766))) b!909024))

(declare-fun b!909027 () Bool)

(declare-fun e!593271 () Bool)

(declare-fun tp!284407 () Bool)

(assert (=> b!909027 (= e!593271 tp!284407)))

(declare-fun b!909026 () Bool)

(declare-fun tp!284406 () Bool)

(declare-fun tp!284409 () Bool)

(assert (=> b!909026 (= e!593271 (and tp!284406 tp!284409))))

(assert (=> b!908692 (= tp!284354 e!593271)))

(declare-fun b!909025 () Bool)

(assert (=> b!909025 (= e!593271 tp_is_empty!4475)))

(declare-fun b!909028 () Bool)

(declare-fun tp!284408 () Bool)

(declare-fun tp!284405 () Bool)

(assert (=> b!909028 (= e!593271 (and tp!284408 tp!284405))))

(assert (= (and b!908692 (is-ElementMatch!2416 (regOne!5344 r!15766))) b!909025))

(assert (= (and b!908692 (is-Concat!4249 (regOne!5344 r!15766))) b!909026))

(assert (= (and b!908692 (is-Star!2416 (regOne!5344 r!15766))) b!909027))

(assert (= (and b!908692 (is-Union!2416 (regOne!5344 r!15766))) b!909028))

(declare-fun b!909031 () Bool)

(declare-fun e!593272 () Bool)

(declare-fun tp!284412 () Bool)

(assert (=> b!909031 (= e!593272 tp!284412)))

(declare-fun b!909030 () Bool)

(declare-fun tp!284411 () Bool)

(declare-fun tp!284414 () Bool)

(assert (=> b!909030 (= e!593272 (and tp!284411 tp!284414))))

(assert (=> b!908692 (= tp!284356 e!593272)))

(declare-fun b!909029 () Bool)

(assert (=> b!909029 (= e!593272 tp_is_empty!4475)))

(declare-fun b!909032 () Bool)

(declare-fun tp!284413 () Bool)

(declare-fun tp!284410 () Bool)

(assert (=> b!909032 (= e!593272 (and tp!284413 tp!284410))))

(assert (= (and b!908692 (is-ElementMatch!2416 (regTwo!5344 r!15766))) b!909029))

(assert (= (and b!908692 (is-Concat!4249 (regTwo!5344 r!15766))) b!909030))

(assert (= (and b!908692 (is-Star!2416 (regTwo!5344 r!15766))) b!909031))

(assert (= (and b!908692 (is-Union!2416 (regTwo!5344 r!15766))) b!909032))

(push 1)

(assert (not bm!54543))

(assert (not b!909032))

(assert (not b!908872))

(assert (not d!279084))

(assert (not d!279094))

(assert (not bm!54558))

(assert (not b!908927))

(assert (not b!909028))

(assert (not b!908809))

(assert (not b!908808))

(assert (not b!908976))

(assert (not b!908803))

(assert (not b!909023))

(assert (not b!908805))

(assert (not d!279102))

(assert (not d!279104))

(assert tp_is_empty!4475)

(assert (not bm!54530))

(assert (not b!909011))

(assert (not b!908917))

(assert (not b!909015))

(assert (not b!908975))

(assert (not b!908982))

(assert (not b!909031))

(assert (not b!908810))

(assert (not b!909024))

(assert (not b!909020))

(assert (not d!279082))

(assert (not b!908984))

(assert (not b!909009))

(assert (not d!279078))

(assert (not b!909022))

(assert (not b!908811))

(assert (not b!909014))

(assert (not d!279086))

(assert (not b!908765))

(assert (not b!909013))

(assert (not bm!54554))

(assert (not bm!54555))

(assert (not b!908983))

(assert (not b!909026))

(assert (not b!909027))

(assert (not bm!54531))

(assert (not d!279090))

(assert (not bm!54542))

(assert (not b!909010))

(assert (not b!908980))

(assert (not b!909030))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


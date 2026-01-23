; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728060 () Bool)

(assert start!728060)

(declare-fun b!7521016 () Bool)

(declare-fun res!3014809 () Bool)

(declare-fun e!4483492 () Bool)

(assert (=> b!7521016 (=> (not res!3014809) (not e!4483492))))

(declare-datatypes ((C!39876 0))(
  ( (C!39877 (val!30378 Int)) )
))
(declare-datatypes ((Regex!19775 0))(
  ( (ElementMatch!19775 (c!1389572 C!39876)) (Concat!28620 (regOne!40062 Regex!19775) (regTwo!40062 Regex!19775)) (EmptyExpr!19775) (Star!19775 (reg!20104 Regex!19775)) (EmptyLang!19775) (Union!19775 (regOne!40063 Regex!19775) (regTwo!40063 Regex!19775)) )
))
(declare-fun expr!41 () Regex!19775)

(declare-fun a!1106 () C!39876)

(get-info :version)

(assert (=> b!7521016 (= res!3014809 (and (or (not ((_ is ElementMatch!19775) expr!41)) (not (= (c!1389572 expr!41) a!1106))) ((_ is Union!19775) expr!41)))))

(declare-fun b!7521017 () Bool)

(declare-fun e!4483493 () Bool)

(declare-fun tp!2184537 () Bool)

(assert (=> b!7521017 (= e!4483493 tp!2184537)))

(declare-fun b!7521018 () Bool)

(declare-fun tp!2184538 () Bool)

(declare-fun tp!2184539 () Bool)

(assert (=> b!7521018 (= e!4483493 (and tp!2184538 tp!2184539))))

(declare-fun b!7521019 () Bool)

(declare-fun tp!2184536 () Bool)

(declare-fun tp!2184535 () Bool)

(assert (=> b!7521019 (= e!4483493 (and tp!2184536 tp!2184535))))

(declare-fun res!3014810 () Bool)

(assert (=> start!728060 (=> (not res!3014810) (not e!4483492))))

(declare-fun validRegex!10203 (Regex!19775) Bool)

(assert (=> start!728060 (= res!3014810 (validRegex!10203 expr!41))))

(assert (=> start!728060 e!4483492))

(assert (=> start!728060 e!4483493))

(declare-fun tp_is_empty!49905 () Bool)

(assert (=> start!728060 tp_is_empty!49905))

(declare-fun b!7521020 () Bool)

(assert (=> b!7521020 (= e!4483493 tp_is_empty!49905)))

(declare-fun b!7521021 () Bool)

(assert (=> b!7521021 (= e!4483492 (not (validRegex!10203 (regOne!40063 expr!41))))))

(assert (= (and start!728060 res!3014810) b!7521016))

(assert (= (and b!7521016 res!3014809) b!7521021))

(assert (= (and start!728060 ((_ is ElementMatch!19775) expr!41)) b!7521020))

(assert (= (and start!728060 ((_ is Concat!28620) expr!41)) b!7521019))

(assert (= (and start!728060 ((_ is Star!19775) expr!41)) b!7521017))

(assert (= (and start!728060 ((_ is Union!19775) expr!41)) b!7521018))

(declare-fun m!8100282 () Bool)

(assert (=> start!728060 m!8100282))

(declare-fun m!8100284 () Bool)

(assert (=> b!7521021 m!8100284))

(check-sat (not b!7521019) (not b!7521018) (not start!728060) tp_is_empty!49905 (not b!7521021) (not b!7521017))
(check-sat)
(get-model)

(declare-fun b!7521076 () Bool)

(declare-fun e!4483540 () Bool)

(declare-fun e!4483536 () Bool)

(assert (=> b!7521076 (= e!4483540 e!4483536)))

(declare-fun c!1389586 () Bool)

(assert (=> b!7521076 (= c!1389586 ((_ is Star!19775) (regOne!40063 expr!41)))))

(declare-fun b!7521077 () Bool)

(declare-fun e!4483538 () Bool)

(declare-fun call!689668 () Bool)

(assert (=> b!7521077 (= e!4483538 call!689668)))

(declare-fun b!7521078 () Bool)

(declare-fun e!4483539 () Bool)

(assert (=> b!7521078 (= e!4483536 e!4483539)))

(declare-fun res!3014842 () Bool)

(declare-fun nullable!8609 (Regex!19775) Bool)

(assert (=> b!7521078 (= res!3014842 (not (nullable!8609 (reg!20104 (regOne!40063 expr!41)))))))

(assert (=> b!7521078 (=> (not res!3014842) (not e!4483539))))

(declare-fun b!7521079 () Bool)

(declare-fun e!4483542 () Bool)

(declare-fun e!4483541 () Bool)

(assert (=> b!7521079 (= e!4483542 e!4483541)))

(declare-fun res!3014844 () Bool)

(assert (=> b!7521079 (=> (not res!3014844) (not e!4483541))))

(assert (=> b!7521079 (= res!3014844 call!689668)))

(declare-fun b!7521080 () Bool)

(declare-fun res!3014845 () Bool)

(assert (=> b!7521080 (=> (not res!3014845) (not e!4483538))))

(declare-fun call!689667 () Bool)

(assert (=> b!7521080 (= res!3014845 call!689667)))

(declare-fun e!4483537 () Bool)

(assert (=> b!7521080 (= e!4483537 e!4483538)))

(declare-fun b!7521081 () Bool)

(assert (=> b!7521081 (= e!4483541 call!689667)))

(declare-fun bm!689662 () Bool)

(declare-fun call!689669 () Bool)

(assert (=> bm!689662 (= call!689668 call!689669)))

(declare-fun b!7521082 () Bool)

(assert (=> b!7521082 (= e!4483539 call!689669)))

(declare-fun b!7521083 () Bool)

(assert (=> b!7521083 (= e!4483536 e!4483537)))

(declare-fun c!1389585 () Bool)

(assert (=> b!7521083 (= c!1389585 ((_ is Union!19775) (regOne!40063 expr!41)))))

(declare-fun b!7521084 () Bool)

(declare-fun res!3014841 () Bool)

(assert (=> b!7521084 (=> res!3014841 e!4483542)))

(assert (=> b!7521084 (= res!3014841 (not ((_ is Concat!28620) (regOne!40063 expr!41))))))

(assert (=> b!7521084 (= e!4483537 e!4483542)))

(declare-fun bm!689663 () Bool)

(assert (=> bm!689663 (= call!689667 (validRegex!10203 (ite c!1389585 (regOne!40063 (regOne!40063 expr!41)) (regTwo!40062 (regOne!40063 expr!41)))))))

(declare-fun bm!689664 () Bool)

(assert (=> bm!689664 (= call!689669 (validRegex!10203 (ite c!1389586 (reg!20104 (regOne!40063 expr!41)) (ite c!1389585 (regTwo!40063 (regOne!40063 expr!41)) (regOne!40062 (regOne!40063 expr!41))))))))

(declare-fun d!2309021 () Bool)

(declare-fun res!3014843 () Bool)

(assert (=> d!2309021 (=> res!3014843 e!4483540)))

(assert (=> d!2309021 (= res!3014843 ((_ is ElementMatch!19775) (regOne!40063 expr!41)))))

(assert (=> d!2309021 (= (validRegex!10203 (regOne!40063 expr!41)) e!4483540)))

(assert (= (and d!2309021 (not res!3014843)) b!7521076))

(assert (= (and b!7521076 c!1389586) b!7521078))

(assert (= (and b!7521076 (not c!1389586)) b!7521083))

(assert (= (and b!7521078 res!3014842) b!7521082))

(assert (= (and b!7521083 c!1389585) b!7521080))

(assert (= (and b!7521083 (not c!1389585)) b!7521084))

(assert (= (and b!7521080 res!3014845) b!7521077))

(assert (= (and b!7521084 (not res!3014841)) b!7521079))

(assert (= (and b!7521079 res!3014844) b!7521081))

(assert (= (or b!7521077 b!7521079) bm!689662))

(assert (= (or b!7521080 b!7521081) bm!689663))

(assert (= (or b!7521082 bm!689662) bm!689664))

(declare-fun m!8100298 () Bool)

(assert (=> b!7521078 m!8100298))

(declare-fun m!8100300 () Bool)

(assert (=> bm!689663 m!8100300))

(declare-fun m!8100302 () Bool)

(assert (=> bm!689664 m!8100302))

(assert (=> b!7521021 d!2309021))

(declare-fun b!7521095 () Bool)

(declare-fun e!4483549 () Bool)

(declare-fun e!4483545 () Bool)

(assert (=> b!7521095 (= e!4483549 e!4483545)))

(declare-fun c!1389588 () Bool)

(assert (=> b!7521095 (= c!1389588 ((_ is Star!19775) expr!41))))

(declare-fun b!7521096 () Bool)

(declare-fun e!4483547 () Bool)

(declare-fun call!689671 () Bool)

(assert (=> b!7521096 (= e!4483547 call!689671)))

(declare-fun b!7521097 () Bool)

(declare-fun e!4483548 () Bool)

(assert (=> b!7521097 (= e!4483545 e!4483548)))

(declare-fun res!3014847 () Bool)

(assert (=> b!7521097 (= res!3014847 (not (nullable!8609 (reg!20104 expr!41))))))

(assert (=> b!7521097 (=> (not res!3014847) (not e!4483548))))

(declare-fun b!7521098 () Bool)

(declare-fun e!4483551 () Bool)

(declare-fun e!4483550 () Bool)

(assert (=> b!7521098 (= e!4483551 e!4483550)))

(declare-fun res!3014849 () Bool)

(assert (=> b!7521098 (=> (not res!3014849) (not e!4483550))))

(assert (=> b!7521098 (= res!3014849 call!689671)))

(declare-fun b!7521099 () Bool)

(declare-fun res!3014850 () Bool)

(assert (=> b!7521099 (=> (not res!3014850) (not e!4483547))))

(declare-fun call!689670 () Bool)

(assert (=> b!7521099 (= res!3014850 call!689670)))

(declare-fun e!4483546 () Bool)

(assert (=> b!7521099 (= e!4483546 e!4483547)))

(declare-fun b!7521100 () Bool)

(assert (=> b!7521100 (= e!4483550 call!689670)))

(declare-fun bm!689665 () Bool)

(declare-fun call!689672 () Bool)

(assert (=> bm!689665 (= call!689671 call!689672)))

(declare-fun b!7521101 () Bool)

(assert (=> b!7521101 (= e!4483548 call!689672)))

(declare-fun b!7521102 () Bool)

(assert (=> b!7521102 (= e!4483545 e!4483546)))

(declare-fun c!1389587 () Bool)

(assert (=> b!7521102 (= c!1389587 ((_ is Union!19775) expr!41))))

(declare-fun b!7521103 () Bool)

(declare-fun res!3014846 () Bool)

(assert (=> b!7521103 (=> res!3014846 e!4483551)))

(assert (=> b!7521103 (= res!3014846 (not ((_ is Concat!28620) expr!41)))))

(assert (=> b!7521103 (= e!4483546 e!4483551)))

(declare-fun bm!689666 () Bool)

(assert (=> bm!689666 (= call!689670 (validRegex!10203 (ite c!1389587 (regOne!40063 expr!41) (regTwo!40062 expr!41))))))

(declare-fun bm!689667 () Bool)

(assert (=> bm!689667 (= call!689672 (validRegex!10203 (ite c!1389588 (reg!20104 expr!41) (ite c!1389587 (regTwo!40063 expr!41) (regOne!40062 expr!41)))))))

(declare-fun d!2309025 () Bool)

(declare-fun res!3014848 () Bool)

(assert (=> d!2309025 (=> res!3014848 e!4483549)))

(assert (=> d!2309025 (= res!3014848 ((_ is ElementMatch!19775) expr!41))))

(assert (=> d!2309025 (= (validRegex!10203 expr!41) e!4483549)))

(assert (= (and d!2309025 (not res!3014848)) b!7521095))

(assert (= (and b!7521095 c!1389588) b!7521097))

(assert (= (and b!7521095 (not c!1389588)) b!7521102))

(assert (= (and b!7521097 res!3014847) b!7521101))

(assert (= (and b!7521102 c!1389587) b!7521099))

(assert (= (and b!7521102 (not c!1389587)) b!7521103))

(assert (= (and b!7521099 res!3014850) b!7521096))

(assert (= (and b!7521103 (not res!3014846)) b!7521098))

(assert (= (and b!7521098 res!3014849) b!7521100))

(assert (= (or b!7521096 b!7521098) bm!689665))

(assert (= (or b!7521099 b!7521100) bm!689666))

(assert (= (or b!7521101 bm!689665) bm!689667))

(declare-fun m!8100304 () Bool)

(assert (=> b!7521097 m!8100304))

(declare-fun m!8100306 () Bool)

(assert (=> bm!689666 m!8100306))

(declare-fun m!8100308 () Bool)

(assert (=> bm!689667 m!8100308))

(assert (=> start!728060 d!2309025))

(declare-fun b!7521137 () Bool)

(declare-fun e!4483559 () Bool)

(declare-fun tp!2184586 () Bool)

(declare-fun tp!2184587 () Bool)

(assert (=> b!7521137 (= e!4483559 (and tp!2184586 tp!2184587))))

(declare-fun b!7521135 () Bool)

(declare-fun tp!2184589 () Bool)

(declare-fun tp!2184588 () Bool)

(assert (=> b!7521135 (= e!4483559 (and tp!2184589 tp!2184588))))

(declare-fun b!7521134 () Bool)

(assert (=> b!7521134 (= e!4483559 tp_is_empty!49905)))

(declare-fun b!7521136 () Bool)

(declare-fun tp!2184585 () Bool)

(assert (=> b!7521136 (= e!4483559 tp!2184585)))

(assert (=> b!7521019 (= tp!2184536 e!4483559)))

(assert (= (and b!7521019 ((_ is ElementMatch!19775) (regOne!40062 expr!41))) b!7521134))

(assert (= (and b!7521019 ((_ is Concat!28620) (regOne!40062 expr!41))) b!7521135))

(assert (= (and b!7521019 ((_ is Star!19775) (regOne!40062 expr!41))) b!7521136))

(assert (= (and b!7521019 ((_ is Union!19775) (regOne!40062 expr!41))) b!7521137))

(declare-fun b!7521141 () Bool)

(declare-fun e!4483560 () Bool)

(declare-fun tp!2184591 () Bool)

(declare-fun tp!2184592 () Bool)

(assert (=> b!7521141 (= e!4483560 (and tp!2184591 tp!2184592))))

(declare-fun b!7521139 () Bool)

(declare-fun tp!2184594 () Bool)

(declare-fun tp!2184593 () Bool)

(assert (=> b!7521139 (= e!4483560 (and tp!2184594 tp!2184593))))

(declare-fun b!7521138 () Bool)

(assert (=> b!7521138 (= e!4483560 tp_is_empty!49905)))

(declare-fun b!7521140 () Bool)

(declare-fun tp!2184590 () Bool)

(assert (=> b!7521140 (= e!4483560 tp!2184590)))

(assert (=> b!7521019 (= tp!2184535 e!4483560)))

(assert (= (and b!7521019 ((_ is ElementMatch!19775) (regTwo!40062 expr!41))) b!7521138))

(assert (= (and b!7521019 ((_ is Concat!28620) (regTwo!40062 expr!41))) b!7521139))

(assert (= (and b!7521019 ((_ is Star!19775) (regTwo!40062 expr!41))) b!7521140))

(assert (= (and b!7521019 ((_ is Union!19775) (regTwo!40062 expr!41))) b!7521141))

(declare-fun b!7521145 () Bool)

(declare-fun e!4483561 () Bool)

(declare-fun tp!2184596 () Bool)

(declare-fun tp!2184597 () Bool)

(assert (=> b!7521145 (= e!4483561 (and tp!2184596 tp!2184597))))

(declare-fun b!7521143 () Bool)

(declare-fun tp!2184599 () Bool)

(declare-fun tp!2184598 () Bool)

(assert (=> b!7521143 (= e!4483561 (and tp!2184599 tp!2184598))))

(declare-fun b!7521142 () Bool)

(assert (=> b!7521142 (= e!4483561 tp_is_empty!49905)))

(declare-fun b!7521144 () Bool)

(declare-fun tp!2184595 () Bool)

(assert (=> b!7521144 (= e!4483561 tp!2184595)))

(assert (=> b!7521018 (= tp!2184538 e!4483561)))

(assert (= (and b!7521018 ((_ is ElementMatch!19775) (regOne!40063 expr!41))) b!7521142))

(assert (= (and b!7521018 ((_ is Concat!28620) (regOne!40063 expr!41))) b!7521143))

(assert (= (and b!7521018 ((_ is Star!19775) (regOne!40063 expr!41))) b!7521144))

(assert (= (and b!7521018 ((_ is Union!19775) (regOne!40063 expr!41))) b!7521145))

(declare-fun b!7521149 () Bool)

(declare-fun e!4483562 () Bool)

(declare-fun tp!2184601 () Bool)

(declare-fun tp!2184602 () Bool)

(assert (=> b!7521149 (= e!4483562 (and tp!2184601 tp!2184602))))

(declare-fun b!7521147 () Bool)

(declare-fun tp!2184604 () Bool)

(declare-fun tp!2184603 () Bool)

(assert (=> b!7521147 (= e!4483562 (and tp!2184604 tp!2184603))))

(declare-fun b!7521146 () Bool)

(assert (=> b!7521146 (= e!4483562 tp_is_empty!49905)))

(declare-fun b!7521148 () Bool)

(declare-fun tp!2184600 () Bool)

(assert (=> b!7521148 (= e!4483562 tp!2184600)))

(assert (=> b!7521018 (= tp!2184539 e!4483562)))

(assert (= (and b!7521018 ((_ is ElementMatch!19775) (regTwo!40063 expr!41))) b!7521146))

(assert (= (and b!7521018 ((_ is Concat!28620) (regTwo!40063 expr!41))) b!7521147))

(assert (= (and b!7521018 ((_ is Star!19775) (regTwo!40063 expr!41))) b!7521148))

(assert (= (and b!7521018 ((_ is Union!19775) (regTwo!40063 expr!41))) b!7521149))

(declare-fun b!7521153 () Bool)

(declare-fun e!4483563 () Bool)

(declare-fun tp!2184606 () Bool)

(declare-fun tp!2184607 () Bool)

(assert (=> b!7521153 (= e!4483563 (and tp!2184606 tp!2184607))))

(declare-fun b!7521151 () Bool)

(declare-fun tp!2184609 () Bool)

(declare-fun tp!2184608 () Bool)

(assert (=> b!7521151 (= e!4483563 (and tp!2184609 tp!2184608))))

(declare-fun b!7521150 () Bool)

(assert (=> b!7521150 (= e!4483563 tp_is_empty!49905)))

(declare-fun b!7521152 () Bool)

(declare-fun tp!2184605 () Bool)

(assert (=> b!7521152 (= e!4483563 tp!2184605)))

(assert (=> b!7521017 (= tp!2184537 e!4483563)))

(assert (= (and b!7521017 ((_ is ElementMatch!19775) (reg!20104 expr!41))) b!7521150))

(assert (= (and b!7521017 ((_ is Concat!28620) (reg!20104 expr!41))) b!7521151))

(assert (= (and b!7521017 ((_ is Star!19775) (reg!20104 expr!41))) b!7521152))

(assert (= (and b!7521017 ((_ is Union!19775) (reg!20104 expr!41))) b!7521153))

(check-sat (not b!7521137) (not b!7521140) (not b!7521144) (not b!7521078) (not bm!689667) (not b!7521141) (not b!7521148) (not b!7521147) (not b!7521151) (not bm!689664) (not b!7521153) (not b!7521143) (not b!7521152) (not b!7521136) tp_is_empty!49905 (not b!7521139) (not b!7521145) (not bm!689663) (not b!7521149) (not b!7521097) (not bm!689666) (not b!7521135))
(check-sat)

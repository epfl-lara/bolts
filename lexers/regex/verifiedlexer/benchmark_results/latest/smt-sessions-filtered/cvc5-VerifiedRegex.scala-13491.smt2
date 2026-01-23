; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728066 () Bool)

(assert start!728066)

(declare-fun b!7521166 () Bool)

(declare-fun e!4483568 () Bool)

(declare-fun tp!2184621 () Bool)

(declare-fun tp!2184622 () Bool)

(assert (=> b!7521166 (= e!4483568 (and tp!2184621 tp!2184622))))

(declare-fun b!7521167 () Bool)

(declare-fun e!4483569 () Bool)

(declare-datatypes ((C!39878 0))(
  ( (C!39879 (val!30379 Int)) )
))
(declare-datatypes ((Regex!19776 0))(
  ( (ElementMatch!19776 (c!1389589 C!39878)) (Concat!28621 (regOne!40064 Regex!19776) (regTwo!40064 Regex!19776)) (EmptyExpr!19776) (Star!19776 (reg!20105 Regex!19776)) (EmptyLang!19776) (Union!19776 (regOne!40065 Regex!19776) (regTwo!40065 Regex!19776)) )
))
(declare-fun expr!41 () Regex!19776)

(declare-fun validRegex!10204 (Regex!19776) Bool)

(assert (=> b!7521167 (= e!4483569 (not (validRegex!10204 (regTwo!40065 expr!41))))))

(declare-fun res!3014855 () Bool)

(assert (=> start!728066 (=> (not res!3014855) (not e!4483569))))

(assert (=> start!728066 (= res!3014855 (validRegex!10204 expr!41))))

(assert (=> start!728066 e!4483569))

(assert (=> start!728066 e!4483568))

(declare-fun tp_is_empty!49907 () Bool)

(assert (=> start!728066 tp_is_empty!49907))

(declare-fun b!7521168 () Bool)

(declare-fun res!3014856 () Bool)

(assert (=> b!7521168 (=> (not res!3014856) (not e!4483569))))

(declare-fun a!1106 () C!39878)

(assert (=> b!7521168 (= res!3014856 (and (or (not (is-ElementMatch!19776 expr!41)) (not (= (c!1389589 expr!41) a!1106))) (is-Union!19776 expr!41)))))

(declare-fun b!7521169 () Bool)

(declare-fun tp!2184624 () Bool)

(assert (=> b!7521169 (= e!4483568 tp!2184624)))

(declare-fun b!7521170 () Bool)

(declare-fun tp!2184623 () Bool)

(declare-fun tp!2184620 () Bool)

(assert (=> b!7521170 (= e!4483568 (and tp!2184623 tp!2184620))))

(declare-fun b!7521171 () Bool)

(assert (=> b!7521171 (= e!4483568 tp_is_empty!49907)))

(assert (= (and start!728066 res!3014855) b!7521168))

(assert (= (and b!7521168 res!3014856) b!7521167))

(assert (= (and start!728066 (is-ElementMatch!19776 expr!41)) b!7521171))

(assert (= (and start!728066 (is-Concat!28621 expr!41)) b!7521166))

(assert (= (and start!728066 (is-Star!19776 expr!41)) b!7521169))

(assert (= (and start!728066 (is-Union!19776 expr!41)) b!7521170))

(declare-fun m!8100310 () Bool)

(assert (=> b!7521167 m!8100310))

(declare-fun m!8100312 () Bool)

(assert (=> start!728066 m!8100312))

(push 1)

(assert (not start!728066))

(assert (not b!7521166))

(assert tp_is_empty!49907)

(assert (not b!7521167))

(assert (not b!7521170))

(assert (not b!7521169))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7521208 () Bool)

(declare-fun e!4483593 () Bool)

(declare-fun e!4483596 () Bool)

(assert (=> b!7521208 (= e!4483593 e!4483596)))

(declare-fun res!3014876 () Bool)

(assert (=> b!7521208 (=> (not res!3014876) (not e!4483596))))

(declare-fun call!689679 () Bool)

(assert (=> b!7521208 (= res!3014876 call!689679)))

(declare-fun b!7521209 () Bool)

(declare-fun e!4483594 () Bool)

(declare-fun e!4483595 () Bool)

(assert (=> b!7521209 (= e!4483594 e!4483595)))

(declare-fun c!1389595 () Bool)

(assert (=> b!7521209 (= c!1389595 (is-Star!19776 expr!41))))

(declare-fun b!7521210 () Bool)

(declare-fun e!4483590 () Bool)

(declare-fun call!689680 () Bool)

(assert (=> b!7521210 (= e!4483590 call!689680)))

(declare-fun bm!689674 () Bool)

(declare-fun call!689681 () Bool)

(assert (=> bm!689674 (= call!689681 call!689680)))

(declare-fun b!7521211 () Bool)

(assert (=> b!7521211 (= e!4483595 e!4483590)))

(declare-fun res!3014873 () Bool)

(declare-fun nullable!8610 (Regex!19776) Bool)

(assert (=> b!7521211 (= res!3014873 (not (nullable!8610 (reg!20105 expr!41))))))

(assert (=> b!7521211 (=> (not res!3014873) (not e!4483590))))

(declare-fun b!7521212 () Bool)

(declare-fun res!3014875 () Bool)

(assert (=> b!7521212 (=> res!3014875 e!4483593)))

(assert (=> b!7521212 (= res!3014875 (not (is-Concat!28621 expr!41)))))

(declare-fun e!4483591 () Bool)

(assert (=> b!7521212 (= e!4483591 e!4483593)))

(declare-fun b!7521213 () Bool)

(assert (=> b!7521213 (= e!4483596 call!689681)))

(declare-fun c!1389596 () Bool)

(declare-fun bm!689676 () Bool)

(assert (=> bm!689676 (= call!689680 (validRegex!10204 (ite c!1389595 (reg!20105 expr!41) (ite c!1389596 (regOne!40065 expr!41) (regTwo!40064 expr!41)))))))

(declare-fun b!7521214 () Bool)

(declare-fun res!3014874 () Bool)

(declare-fun e!4483592 () Bool)

(assert (=> b!7521214 (=> (not res!3014874) (not e!4483592))))

(assert (=> b!7521214 (= res!3014874 call!689681)))

(assert (=> b!7521214 (= e!4483591 e!4483592)))

(declare-fun b!7521215 () Bool)

(assert (=> b!7521215 (= e!4483595 e!4483591)))

(assert (=> b!7521215 (= c!1389596 (is-Union!19776 expr!41))))

(declare-fun b!7521216 () Bool)

(assert (=> b!7521216 (= e!4483592 call!689679)))

(declare-fun bm!689675 () Bool)

(assert (=> bm!689675 (= call!689679 (validRegex!10204 (ite c!1389596 (regTwo!40065 expr!41) (regOne!40064 expr!41))))))

(declare-fun d!2309028 () Bool)

(declare-fun res!3014877 () Bool)

(assert (=> d!2309028 (=> res!3014877 e!4483594)))

(assert (=> d!2309028 (= res!3014877 (is-ElementMatch!19776 expr!41))))

(assert (=> d!2309028 (= (validRegex!10204 expr!41) e!4483594)))

(assert (= (and d!2309028 (not res!3014877)) b!7521209))

(assert (= (and b!7521209 c!1389595) b!7521211))

(assert (= (and b!7521209 (not c!1389595)) b!7521215))

(assert (= (and b!7521211 res!3014873) b!7521210))

(assert (= (and b!7521215 c!1389596) b!7521214))

(assert (= (and b!7521215 (not c!1389596)) b!7521212))

(assert (= (and b!7521214 res!3014874) b!7521216))

(assert (= (and b!7521212 (not res!3014875)) b!7521208))

(assert (= (and b!7521208 res!3014876) b!7521213))

(assert (= (or b!7521216 b!7521208) bm!689675))

(assert (= (or b!7521214 b!7521213) bm!689674))

(assert (= (or b!7521210 bm!689674) bm!689676))

(declare-fun m!8100318 () Bool)

(assert (=> b!7521211 m!8100318))

(declare-fun m!8100320 () Bool)

(assert (=> bm!689676 m!8100320))

(declare-fun m!8100322 () Bool)

(assert (=> bm!689675 m!8100322))

(assert (=> start!728066 d!2309028))

(declare-fun b!7521217 () Bool)

(declare-fun e!4483600 () Bool)

(declare-fun e!4483603 () Bool)

(assert (=> b!7521217 (= e!4483600 e!4483603)))

(declare-fun res!3014881 () Bool)

(assert (=> b!7521217 (=> (not res!3014881) (not e!4483603))))

(declare-fun call!689682 () Bool)

(assert (=> b!7521217 (= res!3014881 call!689682)))

(declare-fun b!7521218 () Bool)

(declare-fun e!4483601 () Bool)

(declare-fun e!4483602 () Bool)

(assert (=> b!7521218 (= e!4483601 e!4483602)))

(declare-fun c!1389597 () Bool)

(assert (=> b!7521218 (= c!1389597 (is-Star!19776 (regTwo!40065 expr!41)))))

(declare-fun b!7521219 () Bool)

(declare-fun e!4483597 () Bool)

(declare-fun call!689683 () Bool)

(assert (=> b!7521219 (= e!4483597 call!689683)))

(declare-fun bm!689677 () Bool)

(declare-fun call!689684 () Bool)

(assert (=> bm!689677 (= call!689684 call!689683)))

(declare-fun b!7521220 () Bool)

(assert (=> b!7521220 (= e!4483602 e!4483597)))

(declare-fun res!3014878 () Bool)

(assert (=> b!7521220 (= res!3014878 (not (nullable!8610 (reg!20105 (regTwo!40065 expr!41)))))))

(assert (=> b!7521220 (=> (not res!3014878) (not e!4483597))))

(declare-fun b!7521221 () Bool)

(declare-fun res!3014880 () Bool)

(assert (=> b!7521221 (=> res!3014880 e!4483600)))

(assert (=> b!7521221 (= res!3014880 (not (is-Concat!28621 (regTwo!40065 expr!41))))))

(declare-fun e!4483598 () Bool)

(assert (=> b!7521221 (= e!4483598 e!4483600)))

(declare-fun b!7521222 () Bool)

(assert (=> b!7521222 (= e!4483603 call!689684)))

(declare-fun c!1389598 () Bool)

(declare-fun bm!689679 () Bool)

(assert (=> bm!689679 (= call!689683 (validRegex!10204 (ite c!1389597 (reg!20105 (regTwo!40065 expr!41)) (ite c!1389598 (regOne!40065 (regTwo!40065 expr!41)) (regTwo!40064 (regTwo!40065 expr!41))))))))

(declare-fun b!7521223 () Bool)

(declare-fun res!3014879 () Bool)

(declare-fun e!4483599 () Bool)

(assert (=> b!7521223 (=> (not res!3014879) (not e!4483599))))

(assert (=> b!7521223 (= res!3014879 call!689684)))

(assert (=> b!7521223 (= e!4483598 e!4483599)))

(declare-fun b!7521224 () Bool)

(assert (=> b!7521224 (= e!4483602 e!4483598)))

(assert (=> b!7521224 (= c!1389598 (is-Union!19776 (regTwo!40065 expr!41)))))

(declare-fun b!7521225 () Bool)

(assert (=> b!7521225 (= e!4483599 call!689682)))

(declare-fun bm!689678 () Bool)

(assert (=> bm!689678 (= call!689682 (validRegex!10204 (ite c!1389598 (regTwo!40065 (regTwo!40065 expr!41)) (regOne!40064 (regTwo!40065 expr!41)))))))

(declare-fun d!2309032 () Bool)

(declare-fun res!3014882 () Bool)

(assert (=> d!2309032 (=> res!3014882 e!4483601)))

(assert (=> d!2309032 (= res!3014882 (is-ElementMatch!19776 (regTwo!40065 expr!41)))))

(assert (=> d!2309032 (= (validRegex!10204 (regTwo!40065 expr!41)) e!4483601)))

(assert (= (and d!2309032 (not res!3014882)) b!7521218))

(assert (= (and b!7521218 c!1389597) b!7521220))

(assert (= (and b!7521218 (not c!1389597)) b!7521224))

(assert (= (and b!7521220 res!3014878) b!7521219))

(assert (= (and b!7521224 c!1389598) b!7521223))

(assert (= (and b!7521224 (not c!1389598)) b!7521221))

(assert (= (and b!7521223 res!3014879) b!7521225))

(assert (= (and b!7521221 (not res!3014880)) b!7521217))

(assert (= (and b!7521217 res!3014881) b!7521222))

(assert (= (or b!7521225 b!7521217) bm!689678))

(assert (= (or b!7521223 b!7521222) bm!689677))

(assert (= (or b!7521219 bm!689677) bm!689679))

(declare-fun m!8100324 () Bool)

(assert (=> b!7521220 m!8100324))

(declare-fun m!8100326 () Bool)

(assert (=> bm!689679 m!8100326))

(declare-fun m!8100328 () Bool)

(assert (=> bm!689678 m!8100328))

(assert (=> b!7521167 d!2309032))

(declare-fun b!7521240 () Bool)

(declare-fun e!4483608 () Bool)

(assert (=> b!7521240 (= e!4483608 tp_is_empty!49907)))

(declare-fun b!7521242 () Bool)

(declare-fun tp!2184653 () Bool)

(assert (=> b!7521242 (= e!4483608 tp!2184653)))

(assert (=> b!7521170 (= tp!2184623 e!4483608)))

(declare-fun b!7521243 () Bool)

(declare-fun tp!2184650 () Bool)

(declare-fun tp!2184652 () Bool)

(assert (=> b!7521243 (= e!4483608 (and tp!2184650 tp!2184652))))

(declare-fun b!7521241 () Bool)

(declare-fun tp!2184654 () Bool)

(declare-fun tp!2184651 () Bool)

(assert (=> b!7521241 (= e!4483608 (and tp!2184654 tp!2184651))))

(assert (= (and b!7521170 (is-ElementMatch!19776 (regOne!40065 expr!41))) b!7521240))

(assert (= (and b!7521170 (is-Concat!28621 (regOne!40065 expr!41))) b!7521241))

(assert (= (and b!7521170 (is-Star!19776 (regOne!40065 expr!41))) b!7521242))

(assert (= (and b!7521170 (is-Union!19776 (regOne!40065 expr!41))) b!7521243))

(declare-fun b!7521246 () Bool)

(declare-fun e!4483611 () Bool)

(assert (=> b!7521246 (= e!4483611 tp_is_empty!49907)))

(declare-fun b!7521248 () Bool)

(declare-fun tp!2184658 () Bool)

(assert (=> b!7521248 (= e!4483611 tp!2184658)))

(assert (=> b!7521170 (= tp!2184620 e!4483611)))

(declare-fun b!7521249 () Bool)

(declare-fun tp!2184655 () Bool)

(declare-fun tp!2184657 () Bool)

(assert (=> b!7521249 (= e!4483611 (and tp!2184655 tp!2184657))))

(declare-fun b!7521247 () Bool)

(declare-fun tp!2184659 () Bool)

(declare-fun tp!2184656 () Bool)

(assert (=> b!7521247 (= e!4483611 (and tp!2184659 tp!2184656))))

(assert (= (and b!7521170 (is-ElementMatch!19776 (regTwo!40065 expr!41))) b!7521246))

(assert (= (and b!7521170 (is-Concat!28621 (regTwo!40065 expr!41))) b!7521247))

(assert (= (and b!7521170 (is-Star!19776 (regTwo!40065 expr!41))) b!7521248))

(assert (= (and b!7521170 (is-Union!19776 (regTwo!40065 expr!41))) b!7521249))

(declare-fun b!7521252 () Bool)

(declare-fun e!4483614 () Bool)

(assert (=> b!7521252 (= e!4483614 tp_is_empty!49907)))

(declare-fun b!7521254 () Bool)

(declare-fun tp!2184663 () Bool)

(assert (=> b!7521254 (= e!4483614 tp!2184663)))

(assert (=> b!7521169 (= tp!2184624 e!4483614)))

(declare-fun b!7521255 () Bool)

(declare-fun tp!2184660 () Bool)

(declare-fun tp!2184662 () Bool)

(assert (=> b!7521255 (= e!4483614 (and tp!2184660 tp!2184662))))

(declare-fun b!7521253 () Bool)

(declare-fun tp!2184664 () Bool)

(declare-fun tp!2184661 () Bool)

(assert (=> b!7521253 (= e!4483614 (and tp!2184664 tp!2184661))))

(assert (= (and b!7521169 (is-ElementMatch!19776 (reg!20105 expr!41))) b!7521252))

(assert (= (and b!7521169 (is-Concat!28621 (reg!20105 expr!41))) b!7521253))

(assert (= (and b!7521169 (is-Star!19776 (reg!20105 expr!41))) b!7521254))

(assert (= (and b!7521169 (is-Union!19776 (reg!20105 expr!41))) b!7521255))

(declare-fun b!7521260 () Bool)

(declare-fun e!4483617 () Bool)

(assert (=> b!7521260 (= e!4483617 tp_is_empty!49907)))

(declare-fun b!7521262 () Bool)

(declare-fun tp!2184668 () Bool)

(assert (=> b!7521262 (= e!4483617 tp!2184668)))

(assert (=> b!7521166 (= tp!2184621 e!4483617)))

(declare-fun b!7521263 () Bool)

(declare-fun tp!2184665 () Bool)

(declare-fun tp!2184667 () Bool)

(assert (=> b!7521263 (= e!4483617 (and tp!2184665 tp!2184667))))

(declare-fun b!7521261 () Bool)

(declare-fun tp!2184669 () Bool)

(declare-fun tp!2184666 () Bool)

(assert (=> b!7521261 (= e!4483617 (and tp!2184669 tp!2184666))))

(assert (= (and b!7521166 (is-ElementMatch!19776 (regOne!40064 expr!41))) b!7521260))

(assert (= (and b!7521166 (is-Concat!28621 (regOne!40064 expr!41))) b!7521261))

(assert (= (and b!7521166 (is-Star!19776 (regOne!40064 expr!41))) b!7521262))

(assert (= (and b!7521166 (is-Union!19776 (regOne!40064 expr!41))) b!7521263))

(declare-fun b!7521266 () Bool)

(declare-fun e!4483620 () Bool)

(assert (=> b!7521266 (= e!4483620 tp_is_empty!49907)))

(declare-fun b!7521268 () Bool)

(declare-fun tp!2184673 () Bool)

(assert (=> b!7521268 (= e!4483620 tp!2184673)))

(assert (=> b!7521166 (= tp!2184622 e!4483620)))

(declare-fun b!7521269 () Bool)

(declare-fun tp!2184670 () Bool)

(declare-fun tp!2184672 () Bool)

(assert (=> b!7521269 (= e!4483620 (and tp!2184670 tp!2184672))))

(declare-fun b!7521267 () Bool)

(declare-fun tp!2184674 () Bool)

(declare-fun tp!2184671 () Bool)

(assert (=> b!7521267 (= e!4483620 (and tp!2184674 tp!2184671))))

(assert (= (and b!7521166 (is-ElementMatch!19776 (regTwo!40064 expr!41))) b!7521266))

(assert (= (and b!7521166 (is-Concat!28621 (regTwo!40064 expr!41))) b!7521267))

(assert (= (and b!7521166 (is-Star!19776 (regTwo!40064 expr!41))) b!7521268))

(assert (= (and b!7521166 (is-Union!19776 (regTwo!40064 expr!41))) b!7521269))

(push 1)

(assert (not bm!689678))

(assert (not b!7521262))

(assert tp_is_empty!49907)

(assert (not b!7521255))

(assert (not b!7521249))

(assert (not bm!689676))

(assert (not b!7521254))

(assert (not bm!689679))

(assert (not b!7521261))

(assert (not b!7521247))

(assert (not b!7521220))

(assert (not b!7521253))

(assert (not b!7521243))

(assert (not b!7521242))

(assert (not b!7521263))

(assert (not b!7521268))

(assert (not b!7521267))

(assert (not b!7521269))

(assert (not bm!689675))

(assert (not b!7521211))

(assert (not b!7521248))

(assert (not b!7521241))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


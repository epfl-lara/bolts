; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110282 () Bool)

(assert start!110282)

(declare-fun b!1233682 () Bool)

(declare-fun e!790182 () Bool)

(declare-fun tp!352279 () Bool)

(assert (=> b!1233682 (= e!790182 tp!352279)))

(declare-fun b!1233683 () Bool)

(declare-fun tp!352278 () Bool)

(declare-fun tp!352275 () Bool)

(assert (=> b!1233683 (= e!790182 (and tp!352278 tp!352275))))

(declare-fun b!1233684 () Bool)

(declare-fun e!790181 () Bool)

(declare-datatypes ((C!7196 0))(
  ( (C!7197 (val!4128 Int)) )
))
(declare-datatypes ((Regex!3439 0))(
  ( (ElementMatch!3439 (c!206324 C!7196)) (Concat!5669 (regOne!7390 Regex!3439) (regTwo!7390 Regex!3439)) (EmptyExpr!3439) (Star!3439 (reg!3768 Regex!3439)) (EmptyLang!3439) (Union!3439 (regOne!7391 Regex!3439) (regTwo!7391 Regex!3439)) )
))
(declare-fun r!15719 () Regex!3439)

(declare-fun validRegex!1475 (Regex!3439) Bool)

(assert (=> b!1233684 (= e!790181 (not (validRegex!1475 (regTwo!7390 r!15719))))))

(declare-fun lt!420083 () Regex!3439)

(declare-fun removeUselessConcat!504 (Regex!3439) Regex!3439)

(assert (=> b!1233684 (= lt!420083 (removeUselessConcat!504 (regOne!7390 r!15719)))))

(declare-fun b!1233685 () Bool)

(declare-fun tp_is_empty!6399 () Bool)

(assert (=> b!1233685 (= e!790182 tp_is_empty!6399)))

(declare-fun b!1233686 () Bool)

(declare-fun res!552784 () Bool)

(assert (=> b!1233686 (=> (not res!552784) (not e!790181))))

(get-info :version)

(assert (=> b!1233686 (= res!552784 (and (or (not ((_ is Concat!5669) r!15719)) (not ((_ is EmptyExpr!3439) (regOne!7390 r!15719)))) (or (not ((_ is Concat!5669) r!15719)) (not ((_ is EmptyExpr!3439) (regTwo!7390 r!15719)))) ((_ is Concat!5669) r!15719)))))

(declare-fun res!552783 () Bool)

(assert (=> start!110282 (=> (not res!552783) (not e!790181))))

(assert (=> start!110282 (= res!552783 (validRegex!1475 r!15719))))

(assert (=> start!110282 e!790181))

(assert (=> start!110282 e!790182))

(declare-fun b!1233687 () Bool)

(declare-fun tp!352277 () Bool)

(declare-fun tp!352276 () Bool)

(assert (=> b!1233687 (= e!790182 (and tp!352277 tp!352276))))

(assert (= (and start!110282 res!552783) b!1233686))

(assert (= (and b!1233686 res!552784) b!1233684))

(assert (= (and start!110282 ((_ is ElementMatch!3439) r!15719)) b!1233685))

(assert (= (and start!110282 ((_ is Concat!5669) r!15719)) b!1233683))

(assert (= (and start!110282 ((_ is Star!3439) r!15719)) b!1233682))

(assert (= (and start!110282 ((_ is Union!3439) r!15719)) b!1233687))

(declare-fun m!1409009 () Bool)

(assert (=> b!1233684 m!1409009))

(declare-fun m!1409011 () Bool)

(assert (=> b!1233684 m!1409011))

(declare-fun m!1409013 () Bool)

(assert (=> start!110282 m!1409013))

(check-sat tp_is_empty!6399 (not b!1233684) (not b!1233682) (not b!1233687) (not b!1233683) (not start!110282))
(check-sat)
(get-model)

(declare-fun bm!85505 () Bool)

(declare-fun c!206330 () Bool)

(declare-fun call!85510 () Bool)

(declare-fun c!206329 () Bool)

(assert (=> bm!85505 (= call!85510 (validRegex!1475 (ite c!206329 (reg!3768 r!15719) (ite c!206330 (regTwo!7391 r!15719) (regTwo!7390 r!15719)))))))

(declare-fun b!1233706 () Bool)

(declare-fun e!790197 () Bool)

(declare-fun call!85512 () Bool)

(assert (=> b!1233706 (= e!790197 call!85512)))

(declare-fun bm!85506 () Bool)

(assert (=> bm!85506 (= call!85512 call!85510)))

(declare-fun b!1233707 () Bool)

(declare-fun e!790200 () Bool)

(assert (=> b!1233707 (= e!790200 call!85510)))

(declare-fun b!1233708 () Bool)

(declare-fun res!552798 () Bool)

(declare-fun e!790202 () Bool)

(assert (=> b!1233708 (=> res!552798 e!790202)))

(assert (=> b!1233708 (= res!552798 (not ((_ is Concat!5669) r!15719)))))

(declare-fun e!790198 () Bool)

(assert (=> b!1233708 (= e!790198 e!790202)))

(declare-fun d!353147 () Bool)

(declare-fun res!552799 () Bool)

(declare-fun e!790203 () Bool)

(assert (=> d!353147 (=> res!552799 e!790203)))

(assert (=> d!353147 (= res!552799 ((_ is ElementMatch!3439) r!15719))))

(assert (=> d!353147 (= (validRegex!1475 r!15719) e!790203)))

(declare-fun b!1233709 () Bool)

(declare-fun e!790201 () Bool)

(assert (=> b!1233709 (= e!790201 e!790198)))

(assert (=> b!1233709 (= c!206330 ((_ is Union!3439) r!15719))))

(declare-fun b!1233710 () Bool)

(declare-fun res!552797 () Bool)

(declare-fun e!790199 () Bool)

(assert (=> b!1233710 (=> (not res!552797) (not e!790199))))

(declare-fun call!85511 () Bool)

(assert (=> b!1233710 (= res!552797 call!85511)))

(assert (=> b!1233710 (= e!790198 e!790199)))

(declare-fun b!1233711 () Bool)

(assert (=> b!1233711 (= e!790203 e!790201)))

(assert (=> b!1233711 (= c!206329 ((_ is Star!3439) r!15719))))

(declare-fun bm!85507 () Bool)

(assert (=> bm!85507 (= call!85511 (validRegex!1475 (ite c!206330 (regOne!7391 r!15719) (regOne!7390 r!15719))))))

(declare-fun b!1233712 () Bool)

(assert (=> b!1233712 (= e!790199 call!85512)))

(declare-fun b!1233713 () Bool)

(assert (=> b!1233713 (= e!790202 e!790197)))

(declare-fun res!552795 () Bool)

(assert (=> b!1233713 (=> (not res!552795) (not e!790197))))

(assert (=> b!1233713 (= res!552795 call!85511)))

(declare-fun b!1233714 () Bool)

(assert (=> b!1233714 (= e!790201 e!790200)))

(declare-fun res!552796 () Bool)

(declare-fun nullable!1077 (Regex!3439) Bool)

(assert (=> b!1233714 (= res!552796 (not (nullable!1077 (reg!3768 r!15719))))))

(assert (=> b!1233714 (=> (not res!552796) (not e!790200))))

(assert (= (and d!353147 (not res!552799)) b!1233711))

(assert (= (and b!1233711 c!206329) b!1233714))

(assert (= (and b!1233711 (not c!206329)) b!1233709))

(assert (= (and b!1233714 res!552796) b!1233707))

(assert (= (and b!1233709 c!206330) b!1233710))

(assert (= (and b!1233709 (not c!206330)) b!1233708))

(assert (= (and b!1233710 res!552797) b!1233712))

(assert (= (and b!1233708 (not res!552798)) b!1233713))

(assert (= (and b!1233713 res!552795) b!1233706))

(assert (= (or b!1233712 b!1233706) bm!85506))

(assert (= (or b!1233710 b!1233713) bm!85507))

(assert (= (or b!1233707 bm!85506) bm!85505))

(declare-fun m!1409015 () Bool)

(assert (=> bm!85505 m!1409015))

(declare-fun m!1409017 () Bool)

(assert (=> bm!85507 m!1409017))

(declare-fun m!1409019 () Bool)

(assert (=> b!1233714 m!1409019))

(assert (=> start!110282 d!353147))

(declare-fun bm!85508 () Bool)

(declare-fun c!206331 () Bool)

(declare-fun call!85513 () Bool)

(declare-fun c!206332 () Bool)

(assert (=> bm!85508 (= call!85513 (validRegex!1475 (ite c!206331 (reg!3768 (regTwo!7390 r!15719)) (ite c!206332 (regTwo!7391 (regTwo!7390 r!15719)) (regTwo!7390 (regTwo!7390 r!15719))))))))

(declare-fun b!1233715 () Bool)

(declare-fun e!790204 () Bool)

(declare-fun call!85515 () Bool)

(assert (=> b!1233715 (= e!790204 call!85515)))

(declare-fun bm!85509 () Bool)

(assert (=> bm!85509 (= call!85515 call!85513)))

(declare-fun b!1233716 () Bool)

(declare-fun e!790207 () Bool)

(assert (=> b!1233716 (= e!790207 call!85513)))

(declare-fun b!1233717 () Bool)

(declare-fun res!552803 () Bool)

(declare-fun e!790209 () Bool)

(assert (=> b!1233717 (=> res!552803 e!790209)))

(assert (=> b!1233717 (= res!552803 (not ((_ is Concat!5669) (regTwo!7390 r!15719))))))

(declare-fun e!790205 () Bool)

(assert (=> b!1233717 (= e!790205 e!790209)))

(declare-fun d!353151 () Bool)

(declare-fun res!552804 () Bool)

(declare-fun e!790210 () Bool)

(assert (=> d!353151 (=> res!552804 e!790210)))

(assert (=> d!353151 (= res!552804 ((_ is ElementMatch!3439) (regTwo!7390 r!15719)))))

(assert (=> d!353151 (= (validRegex!1475 (regTwo!7390 r!15719)) e!790210)))

(declare-fun b!1233718 () Bool)

(declare-fun e!790208 () Bool)

(assert (=> b!1233718 (= e!790208 e!790205)))

(assert (=> b!1233718 (= c!206332 ((_ is Union!3439) (regTwo!7390 r!15719)))))

(declare-fun b!1233719 () Bool)

(declare-fun res!552802 () Bool)

(declare-fun e!790206 () Bool)

(assert (=> b!1233719 (=> (not res!552802) (not e!790206))))

(declare-fun call!85514 () Bool)

(assert (=> b!1233719 (= res!552802 call!85514)))

(assert (=> b!1233719 (= e!790205 e!790206)))

(declare-fun b!1233720 () Bool)

(assert (=> b!1233720 (= e!790210 e!790208)))

(assert (=> b!1233720 (= c!206331 ((_ is Star!3439) (regTwo!7390 r!15719)))))

(declare-fun bm!85510 () Bool)

(assert (=> bm!85510 (= call!85514 (validRegex!1475 (ite c!206332 (regOne!7391 (regTwo!7390 r!15719)) (regOne!7390 (regTwo!7390 r!15719)))))))

(declare-fun b!1233721 () Bool)

(assert (=> b!1233721 (= e!790206 call!85515)))

(declare-fun b!1233722 () Bool)

(assert (=> b!1233722 (= e!790209 e!790204)))

(declare-fun res!552800 () Bool)

(assert (=> b!1233722 (=> (not res!552800) (not e!790204))))

(assert (=> b!1233722 (= res!552800 call!85514)))

(declare-fun b!1233723 () Bool)

(assert (=> b!1233723 (= e!790208 e!790207)))

(declare-fun res!552801 () Bool)

(assert (=> b!1233723 (= res!552801 (not (nullable!1077 (reg!3768 (regTwo!7390 r!15719)))))))

(assert (=> b!1233723 (=> (not res!552801) (not e!790207))))

(assert (= (and d!353151 (not res!552804)) b!1233720))

(assert (= (and b!1233720 c!206331) b!1233723))

(assert (= (and b!1233720 (not c!206331)) b!1233718))

(assert (= (and b!1233723 res!552801) b!1233716))

(assert (= (and b!1233718 c!206332) b!1233719))

(assert (= (and b!1233718 (not c!206332)) b!1233717))

(assert (= (and b!1233719 res!552802) b!1233721))

(assert (= (and b!1233717 (not res!552803)) b!1233722))

(assert (= (and b!1233722 res!552800) b!1233715))

(assert (= (or b!1233721 b!1233715) bm!85509))

(assert (= (or b!1233719 b!1233722) bm!85510))

(assert (= (or b!1233716 bm!85509) bm!85508))

(declare-fun m!1409021 () Bool)

(assert (=> bm!85508 m!1409021))

(declare-fun m!1409023 () Bool)

(assert (=> bm!85510 m!1409023))

(declare-fun m!1409025 () Bool)

(assert (=> b!1233723 m!1409025))

(assert (=> b!1233684 d!353151))

(declare-fun b!1233764 () Bool)

(declare-fun e!790242 () Regex!3439)

(declare-fun e!790239 () Regex!3439)

(assert (=> b!1233764 (= e!790242 e!790239)))

(declare-fun c!206349 () Bool)

(assert (=> b!1233764 (= c!206349 (and ((_ is Concat!5669) (regOne!7390 r!15719)) ((_ is EmptyExpr!3439) (regTwo!7390 (regOne!7390 r!15719)))))))

(declare-fun bm!85527 () Bool)

(declare-fun c!206347 () Bool)

(declare-fun c!206348 () Bool)

(declare-fun call!85534 () Regex!3439)

(declare-fun c!206350 () Bool)

(assert (=> bm!85527 (= call!85534 (removeUselessConcat!504 (ite c!206348 (regTwo!7390 (regOne!7390 r!15719)) (ite (or c!206349 c!206350) (regOne!7390 (regOne!7390 r!15719)) (ite c!206347 (regOne!7391 (regOne!7390 r!15719)) (reg!3768 (regOne!7390 r!15719)))))))))

(declare-fun b!1233765 () Bool)

(declare-fun e!790240 () Regex!3439)

(declare-fun call!85535 () Regex!3439)

(declare-fun call!85532 () Regex!3439)

(assert (=> b!1233765 (= e!790240 (Union!3439 call!85535 call!85532))))

(declare-fun b!1233766 () Bool)

(declare-fun e!790241 () Bool)

(declare-fun lt!420086 () Regex!3439)

(assert (=> b!1233766 (= e!790241 (= (nullable!1077 lt!420086) (nullable!1077 (regOne!7390 r!15719))))))

(declare-fun b!1233767 () Bool)

(declare-fun call!85536 () Regex!3439)

(assert (=> b!1233767 (= e!790239 call!85536)))

(declare-fun bm!85528 () Bool)

(declare-fun call!85533 () Regex!3439)

(assert (=> bm!85528 (= call!85535 call!85533)))

(declare-fun bm!85529 () Bool)

(assert (=> bm!85529 (= call!85532 (removeUselessConcat!504 (ite c!206350 (regTwo!7390 (regOne!7390 r!15719)) (regTwo!7391 (regOne!7390 r!15719)))))))

(declare-fun bm!85530 () Bool)

(assert (=> bm!85530 (= call!85533 call!85536)))

(declare-fun bm!85531 () Bool)

(assert (=> bm!85531 (= call!85536 call!85534)))

(declare-fun d!353153 () Bool)

(assert (=> d!353153 e!790241))

(declare-fun res!552817 () Bool)

(assert (=> d!353153 (=> (not res!552817) (not e!790241))))

(assert (=> d!353153 (= res!552817 (validRegex!1475 lt!420086))))

(assert (=> d!353153 (= lt!420086 e!790242)))

(assert (=> d!353153 (= c!206348 (and ((_ is Concat!5669) (regOne!7390 r!15719)) ((_ is EmptyExpr!3439) (regOne!7390 (regOne!7390 r!15719)))))))

(assert (=> d!353153 (validRegex!1475 (regOne!7390 r!15719))))

(assert (=> d!353153 (= (removeUselessConcat!504 (regOne!7390 r!15719)) lt!420086)))

(declare-fun b!1233768 () Bool)

(declare-fun e!790237 () Regex!3439)

(assert (=> b!1233768 (= e!790237 e!790240)))

(assert (=> b!1233768 (= c!206347 ((_ is Union!3439) (regOne!7390 r!15719)))))

(declare-fun b!1233769 () Bool)

(assert (=> b!1233769 (= e!790242 call!85534)))

(declare-fun b!1233770 () Bool)

(assert (=> b!1233770 (= e!790237 (Concat!5669 call!85533 call!85532))))

(declare-fun b!1233771 () Bool)

(declare-fun e!790238 () Regex!3439)

(assert (=> b!1233771 (= e!790238 (Star!3439 call!85535))))

(declare-fun b!1233772 () Bool)

(assert (=> b!1233772 (= c!206350 ((_ is Concat!5669) (regOne!7390 r!15719)))))

(assert (=> b!1233772 (= e!790239 e!790237)))

(declare-fun b!1233773 () Bool)

(assert (=> b!1233773 (= e!790238 (regOne!7390 r!15719))))

(declare-fun b!1233774 () Bool)

(declare-fun c!206351 () Bool)

(assert (=> b!1233774 (= c!206351 ((_ is Star!3439) (regOne!7390 r!15719)))))

(assert (=> b!1233774 (= e!790240 e!790238)))

(assert (= (and d!353153 c!206348) b!1233769))

(assert (= (and d!353153 (not c!206348)) b!1233764))

(assert (= (and b!1233764 c!206349) b!1233767))

(assert (= (and b!1233764 (not c!206349)) b!1233772))

(assert (= (and b!1233772 c!206350) b!1233770))

(assert (= (and b!1233772 (not c!206350)) b!1233768))

(assert (= (and b!1233768 c!206347) b!1233765))

(assert (= (and b!1233768 (not c!206347)) b!1233774))

(assert (= (and b!1233774 c!206351) b!1233771))

(assert (= (and b!1233774 (not c!206351)) b!1233773))

(assert (= (or b!1233765 b!1233771) bm!85528))

(assert (= (or b!1233770 bm!85528) bm!85530))

(assert (= (or b!1233770 b!1233765) bm!85529))

(assert (= (or b!1233767 bm!85530) bm!85531))

(assert (= (or b!1233769 bm!85531) bm!85527))

(assert (= (and d!353153 res!552817) b!1233766))

(declare-fun m!1409027 () Bool)

(assert (=> bm!85527 m!1409027))

(declare-fun m!1409029 () Bool)

(assert (=> b!1233766 m!1409029))

(declare-fun m!1409031 () Bool)

(assert (=> b!1233766 m!1409031))

(declare-fun m!1409033 () Bool)

(assert (=> bm!85529 m!1409033))

(declare-fun m!1409035 () Bool)

(assert (=> d!353153 m!1409035))

(declare-fun m!1409037 () Bool)

(assert (=> d!353153 m!1409037))

(assert (=> b!1233684 d!353153))

(declare-fun b!1233794 () Bool)

(declare-fun e!790252 () Bool)

(declare-fun tp!352293 () Bool)

(declare-fun tp!352291 () Bool)

(assert (=> b!1233794 (= e!790252 (and tp!352293 tp!352291))))

(declare-fun b!1233796 () Bool)

(declare-fun tp!352292 () Bool)

(assert (=> b!1233796 (= e!790252 tp!352292)))

(declare-fun b!1233797 () Bool)

(declare-fun tp!352294 () Bool)

(declare-fun tp!352290 () Bool)

(assert (=> b!1233797 (= e!790252 (and tp!352294 tp!352290))))

(assert (=> b!1233683 (= tp!352278 e!790252)))

(declare-fun b!1233792 () Bool)

(assert (=> b!1233792 (= e!790252 tp_is_empty!6399)))

(assert (= (and b!1233683 ((_ is ElementMatch!3439) (regOne!7390 r!15719))) b!1233792))

(assert (= (and b!1233683 ((_ is Concat!5669) (regOne!7390 r!15719))) b!1233794))

(assert (= (and b!1233683 ((_ is Star!3439) (regOne!7390 r!15719))) b!1233796))

(assert (= (and b!1233683 ((_ is Union!3439) (regOne!7390 r!15719))) b!1233797))

(declare-fun b!1233799 () Bool)

(declare-fun e!790253 () Bool)

(declare-fun tp!352298 () Bool)

(declare-fun tp!352296 () Bool)

(assert (=> b!1233799 (= e!790253 (and tp!352298 tp!352296))))

(declare-fun b!1233800 () Bool)

(declare-fun tp!352297 () Bool)

(assert (=> b!1233800 (= e!790253 tp!352297)))

(declare-fun b!1233801 () Bool)

(declare-fun tp!352299 () Bool)

(declare-fun tp!352295 () Bool)

(assert (=> b!1233801 (= e!790253 (and tp!352299 tp!352295))))

(assert (=> b!1233683 (= tp!352275 e!790253)))

(declare-fun b!1233798 () Bool)

(assert (=> b!1233798 (= e!790253 tp_is_empty!6399)))

(assert (= (and b!1233683 ((_ is ElementMatch!3439) (regTwo!7390 r!15719))) b!1233798))

(assert (= (and b!1233683 ((_ is Concat!5669) (regTwo!7390 r!15719))) b!1233799))

(assert (= (and b!1233683 ((_ is Star!3439) (regTwo!7390 r!15719))) b!1233800))

(assert (= (and b!1233683 ((_ is Union!3439) (regTwo!7390 r!15719))) b!1233801))

(declare-fun b!1233803 () Bool)

(declare-fun e!790254 () Bool)

(declare-fun tp!352303 () Bool)

(declare-fun tp!352301 () Bool)

(assert (=> b!1233803 (= e!790254 (and tp!352303 tp!352301))))

(declare-fun b!1233804 () Bool)

(declare-fun tp!352302 () Bool)

(assert (=> b!1233804 (= e!790254 tp!352302)))

(declare-fun b!1233805 () Bool)

(declare-fun tp!352304 () Bool)

(declare-fun tp!352300 () Bool)

(assert (=> b!1233805 (= e!790254 (and tp!352304 tp!352300))))

(assert (=> b!1233682 (= tp!352279 e!790254)))

(declare-fun b!1233802 () Bool)

(assert (=> b!1233802 (= e!790254 tp_is_empty!6399)))

(assert (= (and b!1233682 ((_ is ElementMatch!3439) (reg!3768 r!15719))) b!1233802))

(assert (= (and b!1233682 ((_ is Concat!5669) (reg!3768 r!15719))) b!1233803))

(assert (= (and b!1233682 ((_ is Star!3439) (reg!3768 r!15719))) b!1233804))

(assert (= (and b!1233682 ((_ is Union!3439) (reg!3768 r!15719))) b!1233805))

(declare-fun b!1233807 () Bool)

(declare-fun e!790255 () Bool)

(declare-fun tp!352308 () Bool)

(declare-fun tp!352306 () Bool)

(assert (=> b!1233807 (= e!790255 (and tp!352308 tp!352306))))

(declare-fun b!1233808 () Bool)

(declare-fun tp!352307 () Bool)

(assert (=> b!1233808 (= e!790255 tp!352307)))

(declare-fun b!1233809 () Bool)

(declare-fun tp!352309 () Bool)

(declare-fun tp!352305 () Bool)

(assert (=> b!1233809 (= e!790255 (and tp!352309 tp!352305))))

(assert (=> b!1233687 (= tp!352277 e!790255)))

(declare-fun b!1233806 () Bool)

(assert (=> b!1233806 (= e!790255 tp_is_empty!6399)))

(assert (= (and b!1233687 ((_ is ElementMatch!3439) (regOne!7391 r!15719))) b!1233806))

(assert (= (and b!1233687 ((_ is Concat!5669) (regOne!7391 r!15719))) b!1233807))

(assert (= (and b!1233687 ((_ is Star!3439) (regOne!7391 r!15719))) b!1233808))

(assert (= (and b!1233687 ((_ is Union!3439) (regOne!7391 r!15719))) b!1233809))

(declare-fun b!1233811 () Bool)

(declare-fun e!790256 () Bool)

(declare-fun tp!352313 () Bool)

(declare-fun tp!352311 () Bool)

(assert (=> b!1233811 (= e!790256 (and tp!352313 tp!352311))))

(declare-fun b!1233812 () Bool)

(declare-fun tp!352312 () Bool)

(assert (=> b!1233812 (= e!790256 tp!352312)))

(declare-fun b!1233813 () Bool)

(declare-fun tp!352314 () Bool)

(declare-fun tp!352310 () Bool)

(assert (=> b!1233813 (= e!790256 (and tp!352314 tp!352310))))

(assert (=> b!1233687 (= tp!352276 e!790256)))

(declare-fun b!1233810 () Bool)

(assert (=> b!1233810 (= e!790256 tp_is_empty!6399)))

(assert (= (and b!1233687 ((_ is ElementMatch!3439) (regTwo!7391 r!15719))) b!1233810))

(assert (= (and b!1233687 ((_ is Concat!5669) (regTwo!7391 r!15719))) b!1233811))

(assert (= (and b!1233687 ((_ is Star!3439) (regTwo!7391 r!15719))) b!1233812))

(assert (= (and b!1233687 ((_ is Union!3439) (regTwo!7391 r!15719))) b!1233813))

(check-sat (not b!1233797) (not b!1233805) (not b!1233803) (not b!1233801) (not b!1233800) (not d!353153) (not b!1233796) (not b!1233809) (not b!1233714) (not b!1233766) (not b!1233811) (not bm!85505) (not b!1233812) (not b!1233723) (not b!1233804) (not bm!85508) (not bm!85510) (not b!1233807) (not b!1233813) (not b!1233799) (not b!1233794) (not bm!85507) (not b!1233808) (not bm!85529) (not bm!85527) tp_is_empty!6399)
(check-sat)

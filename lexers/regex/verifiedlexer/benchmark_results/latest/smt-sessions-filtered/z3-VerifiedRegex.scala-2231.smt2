; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110274 () Bool)

(assert start!110274)

(declare-fun b!1233514 () Bool)

(declare-fun e!790099 () Bool)

(declare-fun tp!352175 () Bool)

(declare-fun tp!352176 () Bool)

(assert (=> b!1233514 (= e!790099 (and tp!352175 tp!352176))))

(declare-fun b!1233515 () Bool)

(declare-fun res!552731 () Bool)

(declare-fun e!790100 () Bool)

(assert (=> b!1233515 (=> (not res!552731) (not e!790100))))

(declare-datatypes ((C!7192 0))(
  ( (C!7193 (val!4126 Int)) )
))
(declare-datatypes ((Regex!3437 0))(
  ( (ElementMatch!3437 (c!206306 C!7192)) (Concat!5667 (regOne!7386 Regex!3437) (regTwo!7386 Regex!3437)) (EmptyExpr!3437) (Star!3437 (reg!3766 Regex!3437)) (EmptyLang!3437) (Union!3437 (regOne!7387 Regex!3437) (regTwo!7387 Regex!3437)) )
))
(declare-fun r!15719 () Regex!3437)

(get-info :version)

(assert (=> b!1233515 (= res!552731 (and (or (not ((_ is Concat!5667) r!15719)) (not ((_ is EmptyExpr!3437) (regOne!7386 r!15719)))) (or (not ((_ is Concat!5667) r!15719)) (not ((_ is EmptyExpr!3437) (regTwo!7386 r!15719)))) ((_ is Concat!5667) r!15719)))))

(declare-fun b!1233516 () Bool)

(declare-fun tp!352177 () Bool)

(assert (=> b!1233516 (= e!790099 tp!352177)))

(declare-fun b!1233517 () Bool)

(declare-fun validRegex!1473 (Regex!3437) Bool)

(assert (=> b!1233517 (= e!790100 (not (validRegex!1473 (regOne!7386 r!15719))))))

(declare-fun res!552732 () Bool)

(assert (=> start!110274 (=> (not res!552732) (not e!790100))))

(assert (=> start!110274 (= res!552732 (validRegex!1473 r!15719))))

(assert (=> start!110274 e!790100))

(assert (=> start!110274 e!790099))

(declare-fun b!1233518 () Bool)

(declare-fun tp_is_empty!6395 () Bool)

(assert (=> b!1233518 (= e!790099 tp_is_empty!6395)))

(declare-fun b!1233519 () Bool)

(declare-fun tp!352179 () Bool)

(declare-fun tp!352178 () Bool)

(assert (=> b!1233519 (= e!790099 (and tp!352179 tp!352178))))

(assert (= (and start!110274 res!552732) b!1233515))

(assert (= (and b!1233515 res!552731) b!1233517))

(assert (= (and start!110274 ((_ is ElementMatch!3437) r!15719)) b!1233518))

(assert (= (and start!110274 ((_ is Concat!5667) r!15719)) b!1233514))

(assert (= (and start!110274 ((_ is Star!3437) r!15719)) b!1233516))

(assert (= (and start!110274 ((_ is Union!3437) r!15719)) b!1233519))

(declare-fun m!1408975 () Bool)

(assert (=> b!1233517 m!1408975))

(declare-fun m!1408977 () Bool)

(assert (=> start!110274 m!1408977))

(check-sat (not b!1233517) (not b!1233519) (not start!110274) (not b!1233514) (not b!1233516) tp_is_empty!6395)
(check-sat)
(get-model)

(declare-fun b!1233584 () Bool)

(declare-fun res!552767 () Bool)

(declare-fun e!790151 () Bool)

(assert (=> b!1233584 (=> res!552767 e!790151)))

(assert (=> b!1233584 (= res!552767 (not ((_ is Concat!5667) r!15719)))))

(declare-fun e!790145 () Bool)

(assert (=> b!1233584 (= e!790145 e!790151)))

(declare-fun d!353140 () Bool)

(declare-fun res!552763 () Bool)

(declare-fun e!790148 () Bool)

(assert (=> d!353140 (=> res!552763 e!790148)))

(assert (=> d!353140 (= res!552763 ((_ is ElementMatch!3437) r!15719))))

(assert (=> d!353140 (= (validRegex!1473 r!15719) e!790148)))

(declare-fun b!1233585 () Bool)

(declare-fun e!790146 () Bool)

(declare-fun call!85500 () Bool)

(assert (=> b!1233585 (= e!790146 call!85500)))

(declare-fun b!1233586 () Bool)

(declare-fun e!790149 () Bool)

(assert (=> b!1233586 (= e!790149 call!85500)))

(declare-fun b!1233587 () Bool)

(declare-fun e!790147 () Bool)

(assert (=> b!1233587 (= e!790147 e!790145)))

(declare-fun c!206320 () Bool)

(assert (=> b!1233587 (= c!206320 ((_ is Union!3437) r!15719))))

(declare-fun b!1233588 () Bool)

(declare-fun e!790150 () Bool)

(declare-fun call!85498 () Bool)

(assert (=> b!1233588 (= e!790150 call!85498)))

(declare-fun b!1233589 () Bool)

(assert (=> b!1233589 (= e!790148 e!790147)))

(declare-fun c!206319 () Bool)

(assert (=> b!1233589 (= c!206319 ((_ is Star!3437) r!15719))))

(declare-fun bm!85493 () Bool)

(assert (=> bm!85493 (= call!85500 (validRegex!1473 (ite c!206320 (regTwo!7387 r!15719) (regTwo!7386 r!15719))))))

(declare-fun b!1233590 () Bool)

(assert (=> b!1233590 (= e!790151 e!790149)))

(declare-fun res!552764 () Bool)

(assert (=> b!1233590 (=> (not res!552764) (not e!790149))))

(declare-fun call!85499 () Bool)

(assert (=> b!1233590 (= res!552764 call!85499)))

(declare-fun bm!85494 () Bool)

(assert (=> bm!85494 (= call!85498 (validRegex!1473 (ite c!206319 (reg!3766 r!15719) (ite c!206320 (regOne!7387 r!15719) (regOne!7386 r!15719)))))))

(declare-fun b!1233591 () Bool)

(declare-fun res!552766 () Bool)

(assert (=> b!1233591 (=> (not res!552766) (not e!790146))))

(assert (=> b!1233591 (= res!552766 call!85499)))

(assert (=> b!1233591 (= e!790145 e!790146)))

(declare-fun bm!85495 () Bool)

(assert (=> bm!85495 (= call!85499 call!85498)))

(declare-fun b!1233592 () Bool)

(assert (=> b!1233592 (= e!790147 e!790150)))

(declare-fun res!552765 () Bool)

(declare-fun nullable!1076 (Regex!3437) Bool)

(assert (=> b!1233592 (= res!552765 (not (nullable!1076 (reg!3766 r!15719))))))

(assert (=> b!1233592 (=> (not res!552765) (not e!790150))))

(assert (= (and d!353140 (not res!552763)) b!1233589))

(assert (= (and b!1233589 c!206319) b!1233592))

(assert (= (and b!1233589 (not c!206319)) b!1233587))

(assert (= (and b!1233592 res!552765) b!1233588))

(assert (= (and b!1233587 c!206320) b!1233591))

(assert (= (and b!1233587 (not c!206320)) b!1233584))

(assert (= (and b!1233591 res!552766) b!1233585))

(assert (= (and b!1233584 (not res!552767)) b!1233590))

(assert (= (and b!1233590 res!552764) b!1233586))

(assert (= (or b!1233585 b!1233586) bm!85493))

(assert (= (or b!1233591 b!1233590) bm!85495))

(assert (= (or b!1233588 bm!85495) bm!85494))

(declare-fun m!1408991 () Bool)

(assert (=> bm!85493 m!1408991))

(declare-fun m!1408993 () Bool)

(assert (=> bm!85494 m!1408993))

(declare-fun m!1408995 () Bool)

(assert (=> b!1233592 m!1408995))

(assert (=> start!110274 d!353140))

(declare-fun b!1233613 () Bool)

(declare-fun res!552772 () Bool)

(declare-fun e!790163 () Bool)

(assert (=> b!1233613 (=> res!552772 e!790163)))

(assert (=> b!1233613 (= res!552772 (not ((_ is Concat!5667) (regOne!7386 r!15719))))))

(declare-fun e!790157 () Bool)

(assert (=> b!1233613 (= e!790157 e!790163)))

(declare-fun d!353144 () Bool)

(declare-fun res!552768 () Bool)

(declare-fun e!790160 () Bool)

(assert (=> d!353144 (=> res!552768 e!790160)))

(assert (=> d!353144 (= res!552768 ((_ is ElementMatch!3437) (regOne!7386 r!15719)))))

(assert (=> d!353144 (= (validRegex!1473 (regOne!7386 r!15719)) e!790160)))

(declare-fun b!1233614 () Bool)

(declare-fun e!790158 () Bool)

(declare-fun call!85503 () Bool)

(assert (=> b!1233614 (= e!790158 call!85503)))

(declare-fun b!1233615 () Bool)

(declare-fun e!790161 () Bool)

(assert (=> b!1233615 (= e!790161 call!85503)))

(declare-fun b!1233616 () Bool)

(declare-fun e!790159 () Bool)

(assert (=> b!1233616 (= e!790159 e!790157)))

(declare-fun c!206322 () Bool)

(assert (=> b!1233616 (= c!206322 ((_ is Union!3437) (regOne!7386 r!15719)))))

(declare-fun b!1233617 () Bool)

(declare-fun e!790162 () Bool)

(declare-fun call!85501 () Bool)

(assert (=> b!1233617 (= e!790162 call!85501)))

(declare-fun b!1233618 () Bool)

(assert (=> b!1233618 (= e!790160 e!790159)))

(declare-fun c!206321 () Bool)

(assert (=> b!1233618 (= c!206321 ((_ is Star!3437) (regOne!7386 r!15719)))))

(declare-fun bm!85496 () Bool)

(assert (=> bm!85496 (= call!85503 (validRegex!1473 (ite c!206322 (regTwo!7387 (regOne!7386 r!15719)) (regTwo!7386 (regOne!7386 r!15719)))))))

(declare-fun b!1233619 () Bool)

(assert (=> b!1233619 (= e!790163 e!790161)))

(declare-fun res!552769 () Bool)

(assert (=> b!1233619 (=> (not res!552769) (not e!790161))))

(declare-fun call!85502 () Bool)

(assert (=> b!1233619 (= res!552769 call!85502)))

(declare-fun bm!85497 () Bool)

(assert (=> bm!85497 (= call!85501 (validRegex!1473 (ite c!206321 (reg!3766 (regOne!7386 r!15719)) (ite c!206322 (regOne!7387 (regOne!7386 r!15719)) (regOne!7386 (regOne!7386 r!15719))))))))

(declare-fun b!1233620 () Bool)

(declare-fun res!552771 () Bool)

(assert (=> b!1233620 (=> (not res!552771) (not e!790158))))

(assert (=> b!1233620 (= res!552771 call!85502)))

(assert (=> b!1233620 (= e!790157 e!790158)))

(declare-fun bm!85498 () Bool)

(assert (=> bm!85498 (= call!85502 call!85501)))

(declare-fun b!1233621 () Bool)

(assert (=> b!1233621 (= e!790159 e!790162)))

(declare-fun res!552770 () Bool)

(assert (=> b!1233621 (= res!552770 (not (nullable!1076 (reg!3766 (regOne!7386 r!15719)))))))

(assert (=> b!1233621 (=> (not res!552770) (not e!790162))))

(assert (= (and d!353144 (not res!552768)) b!1233618))

(assert (= (and b!1233618 c!206321) b!1233621))

(assert (= (and b!1233618 (not c!206321)) b!1233616))

(assert (= (and b!1233621 res!552770) b!1233617))

(assert (= (and b!1233616 c!206322) b!1233620))

(assert (= (and b!1233616 (not c!206322)) b!1233613))

(assert (= (and b!1233620 res!552771) b!1233614))

(assert (= (and b!1233613 (not res!552772)) b!1233619))

(assert (= (and b!1233619 res!552769) b!1233615))

(assert (= (or b!1233614 b!1233615) bm!85496))

(assert (= (or b!1233620 b!1233619) bm!85498))

(assert (= (or b!1233617 bm!85498) bm!85497))

(declare-fun m!1408997 () Bool)

(assert (=> bm!85496 m!1408997))

(declare-fun m!1408999 () Bool)

(assert (=> bm!85497 m!1408999))

(declare-fun m!1409001 () Bool)

(assert (=> b!1233621 m!1409001))

(assert (=> b!1233517 d!353144))

(declare-fun b!1233633 () Bool)

(declare-fun e!790166 () Bool)

(declare-fun tp!352226 () Bool)

(declare-fun tp!352227 () Bool)

(assert (=> b!1233633 (= e!790166 (and tp!352226 tp!352227))))

(declare-fun b!1233635 () Bool)

(declare-fun tp!352229 () Bool)

(declare-fun tp!352228 () Bool)

(assert (=> b!1233635 (= e!790166 (and tp!352229 tp!352228))))

(declare-fun b!1233634 () Bool)

(declare-fun tp!352225 () Bool)

(assert (=> b!1233634 (= e!790166 tp!352225)))

(declare-fun b!1233632 () Bool)

(assert (=> b!1233632 (= e!790166 tp_is_empty!6395)))

(assert (=> b!1233516 (= tp!352177 e!790166)))

(assert (= (and b!1233516 ((_ is ElementMatch!3437) (reg!3766 r!15719))) b!1233632))

(assert (= (and b!1233516 ((_ is Concat!5667) (reg!3766 r!15719))) b!1233633))

(assert (= (and b!1233516 ((_ is Star!3437) (reg!3766 r!15719))) b!1233634))

(assert (= (and b!1233516 ((_ is Union!3437) (reg!3766 r!15719))) b!1233635))

(declare-fun b!1233637 () Bool)

(declare-fun e!790167 () Bool)

(declare-fun tp!352231 () Bool)

(declare-fun tp!352232 () Bool)

(assert (=> b!1233637 (= e!790167 (and tp!352231 tp!352232))))

(declare-fun b!1233639 () Bool)

(declare-fun tp!352234 () Bool)

(declare-fun tp!352233 () Bool)

(assert (=> b!1233639 (= e!790167 (and tp!352234 tp!352233))))

(declare-fun b!1233638 () Bool)

(declare-fun tp!352230 () Bool)

(assert (=> b!1233638 (= e!790167 tp!352230)))

(declare-fun b!1233636 () Bool)

(assert (=> b!1233636 (= e!790167 tp_is_empty!6395)))

(assert (=> b!1233519 (= tp!352179 e!790167)))

(assert (= (and b!1233519 ((_ is ElementMatch!3437) (regOne!7387 r!15719))) b!1233636))

(assert (= (and b!1233519 ((_ is Concat!5667) (regOne!7387 r!15719))) b!1233637))

(assert (= (and b!1233519 ((_ is Star!3437) (regOne!7387 r!15719))) b!1233638))

(assert (= (and b!1233519 ((_ is Union!3437) (regOne!7387 r!15719))) b!1233639))

(declare-fun b!1233641 () Bool)

(declare-fun e!790168 () Bool)

(declare-fun tp!352236 () Bool)

(declare-fun tp!352237 () Bool)

(assert (=> b!1233641 (= e!790168 (and tp!352236 tp!352237))))

(declare-fun b!1233643 () Bool)

(declare-fun tp!352239 () Bool)

(declare-fun tp!352238 () Bool)

(assert (=> b!1233643 (= e!790168 (and tp!352239 tp!352238))))

(declare-fun b!1233642 () Bool)

(declare-fun tp!352235 () Bool)

(assert (=> b!1233642 (= e!790168 tp!352235)))

(declare-fun b!1233640 () Bool)

(assert (=> b!1233640 (= e!790168 tp_is_empty!6395)))

(assert (=> b!1233519 (= tp!352178 e!790168)))

(assert (= (and b!1233519 ((_ is ElementMatch!3437) (regTwo!7387 r!15719))) b!1233640))

(assert (= (and b!1233519 ((_ is Concat!5667) (regTwo!7387 r!15719))) b!1233641))

(assert (= (and b!1233519 ((_ is Star!3437) (regTwo!7387 r!15719))) b!1233642))

(assert (= (and b!1233519 ((_ is Union!3437) (regTwo!7387 r!15719))) b!1233643))

(declare-fun b!1233645 () Bool)

(declare-fun e!790169 () Bool)

(declare-fun tp!352241 () Bool)

(declare-fun tp!352242 () Bool)

(assert (=> b!1233645 (= e!790169 (and tp!352241 tp!352242))))

(declare-fun b!1233647 () Bool)

(declare-fun tp!352244 () Bool)

(declare-fun tp!352243 () Bool)

(assert (=> b!1233647 (= e!790169 (and tp!352244 tp!352243))))

(declare-fun b!1233646 () Bool)

(declare-fun tp!352240 () Bool)

(assert (=> b!1233646 (= e!790169 tp!352240)))

(declare-fun b!1233644 () Bool)

(assert (=> b!1233644 (= e!790169 tp_is_empty!6395)))

(assert (=> b!1233514 (= tp!352175 e!790169)))

(assert (= (and b!1233514 ((_ is ElementMatch!3437) (regOne!7386 r!15719))) b!1233644))

(assert (= (and b!1233514 ((_ is Concat!5667) (regOne!7386 r!15719))) b!1233645))

(assert (= (and b!1233514 ((_ is Star!3437) (regOne!7386 r!15719))) b!1233646))

(assert (= (and b!1233514 ((_ is Union!3437) (regOne!7386 r!15719))) b!1233647))

(declare-fun b!1233649 () Bool)

(declare-fun e!790170 () Bool)

(declare-fun tp!352246 () Bool)

(declare-fun tp!352247 () Bool)

(assert (=> b!1233649 (= e!790170 (and tp!352246 tp!352247))))

(declare-fun b!1233651 () Bool)

(declare-fun tp!352249 () Bool)

(declare-fun tp!352248 () Bool)

(assert (=> b!1233651 (= e!790170 (and tp!352249 tp!352248))))

(declare-fun b!1233650 () Bool)

(declare-fun tp!352245 () Bool)

(assert (=> b!1233650 (= e!790170 tp!352245)))

(declare-fun b!1233648 () Bool)

(assert (=> b!1233648 (= e!790170 tp_is_empty!6395)))

(assert (=> b!1233514 (= tp!352176 e!790170)))

(assert (= (and b!1233514 ((_ is ElementMatch!3437) (regTwo!7386 r!15719))) b!1233648))

(assert (= (and b!1233514 ((_ is Concat!5667) (regTwo!7386 r!15719))) b!1233649))

(assert (= (and b!1233514 ((_ is Star!3437) (regTwo!7386 r!15719))) b!1233650))

(assert (= (and b!1233514 ((_ is Union!3437) (regTwo!7386 r!15719))) b!1233651))

(check-sat (not b!1233639) (not b!1233643) (not b!1233634) (not b!1233649) (not b!1233647) tp_is_empty!6395 (not bm!85493) (not b!1233635) (not b!1233650) (not b!1233637) (not b!1233651) (not b!1233592) (not b!1233646) (not bm!85496) (not b!1233641) (not b!1233645) (not b!1233638) (not b!1233642) (not bm!85494) (not b!1233621) (not b!1233633) (not bm!85497))
(check-sat)

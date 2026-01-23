; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743534 () Bool)

(assert start!743534)

(declare-fun b!7859178 () Bool)

(declare-fun e!4644703 () Bool)

(declare-fun tp!2328837 () Bool)

(declare-fun tp!2328839 () Bool)

(assert (=> b!7859178 (= e!4644703 (and tp!2328837 tp!2328839))))

(declare-fun b!7859179 () Bool)

(declare-fun res!3124415 () Bool)

(declare-fun e!4644701 () Bool)

(assert (=> b!7859179 (=> (not res!3124415) (not e!4644701))))

(declare-datatypes ((C!42540 0))(
  ( (C!42541 (val!31732 Int)) )
))
(declare-datatypes ((Regex!21107 0))(
  ( (ElementMatch!21107 (c!1444317 C!42540)) (Concat!29952 (regOne!42726 Regex!21107) (regTwo!42726 Regex!21107)) (EmptyExpr!21107) (Star!21107 (reg!21436 Regex!21107)) (EmptyLang!21107) (Union!21107 (regOne!42727 Regex!21107) (regTwo!42727 Regex!21107)) )
))
(declare-fun r2!6156 () Regex!21107)

(declare-fun validRegex!11517 (Regex!21107) Bool)

(assert (=> b!7859179 (= res!3124415 (validRegex!11517 r2!6156))))

(declare-fun b!7859180 () Bool)

(declare-fun e!4644700 () Bool)

(declare-fun tp!2328843 () Bool)

(assert (=> b!7859180 (= e!4644700 tp!2328843)))

(declare-fun b!7859181 () Bool)

(declare-fun tp!2328842 () Bool)

(assert (=> b!7859181 (= e!4644703 tp!2328842)))

(declare-fun b!7859182 () Bool)

(declare-fun r1!6218 () Regex!21107)

(assert (=> b!7859182 (= e!4644701 (not (validRegex!11517 (Concat!29952 r2!6156 r1!6218))))))

(declare-fun b!7859183 () Bool)

(declare-fun tp_is_empty!52613 () Bool)

(assert (=> b!7859183 (= e!4644700 tp_is_empty!52613)))

(declare-fun b!7859184 () Bool)

(declare-fun tp!2328845 () Bool)

(declare-fun tp!2328841 () Bool)

(assert (=> b!7859184 (= e!4644703 (and tp!2328845 tp!2328841))))

(declare-fun b!7859185 () Bool)

(declare-fun tp!2328840 () Bool)

(declare-fun tp!2328838 () Bool)

(assert (=> b!7859185 (= e!4644700 (and tp!2328840 tp!2328838))))

(declare-fun b!7859186 () Bool)

(declare-fun res!3124418 () Bool)

(assert (=> b!7859186 (=> (not res!3124418) (not e!4644701))))

(declare-datatypes ((List!73966 0))(
  ( (Nil!73842) (Cons!73842 (h!80290 C!42540) (t!388701 List!73966)) )
))
(declare-fun s!14237 () List!73966)

(get-info :version)

(assert (=> b!7859186 (= res!3124418 ((_ is Cons!73842) s!14237))))

(declare-fun res!3124417 () Bool)

(assert (=> start!743534 (=> (not res!3124417) (not e!4644701))))

(assert (=> start!743534 (= res!3124417 (validRegex!11517 r1!6218))))

(assert (=> start!743534 e!4644701))

(assert (=> start!743534 e!4644700))

(assert (=> start!743534 e!4644703))

(declare-fun e!4644702 () Bool)

(assert (=> start!743534 e!4644702))

(declare-fun b!7859177 () Bool)

(declare-fun tp!2328844 () Bool)

(declare-fun tp!2328836 () Bool)

(assert (=> b!7859177 (= e!4644700 (and tp!2328844 tp!2328836))))

(declare-fun b!7859187 () Bool)

(declare-fun res!3124416 () Bool)

(assert (=> b!7859187 (=> (not res!3124416) (not e!4644701))))

(declare-fun nullable!9379 (Regex!21107) Bool)

(assert (=> b!7859187 (= res!3124416 (nullable!9379 r2!6156))))

(declare-fun b!7859188 () Bool)

(declare-fun tp!2328846 () Bool)

(assert (=> b!7859188 (= e!4644702 (and tp_is_empty!52613 tp!2328846))))

(declare-fun b!7859189 () Bool)

(declare-fun res!3124414 () Bool)

(assert (=> b!7859189 (=> (not res!3124414) (not e!4644701))))

(declare-fun matchR!10543 (Regex!21107 List!73966) Bool)

(assert (=> b!7859189 (= res!3124414 (matchR!10543 r1!6218 s!14237))))

(declare-fun b!7859190 () Bool)

(assert (=> b!7859190 (= e!4644703 tp_is_empty!52613)))

(assert (= (and start!743534 res!3124417) b!7859179))

(assert (= (and b!7859179 res!3124415) b!7859189))

(assert (= (and b!7859189 res!3124414) b!7859187))

(assert (= (and b!7859187 res!3124416) b!7859186))

(assert (= (and b!7859186 res!3124418) b!7859182))

(assert (= (and start!743534 ((_ is ElementMatch!21107) r1!6218)) b!7859183))

(assert (= (and start!743534 ((_ is Concat!29952) r1!6218)) b!7859177))

(assert (= (and start!743534 ((_ is Star!21107) r1!6218)) b!7859180))

(assert (= (and start!743534 ((_ is Union!21107) r1!6218)) b!7859185))

(assert (= (and start!743534 ((_ is ElementMatch!21107) r2!6156)) b!7859190))

(assert (= (and start!743534 ((_ is Concat!29952) r2!6156)) b!7859184))

(assert (= (and start!743534 ((_ is Star!21107) r2!6156)) b!7859181))

(assert (= (and start!743534 ((_ is Union!21107) r2!6156)) b!7859178))

(assert (= (and start!743534 ((_ is Cons!73842) s!14237)) b!7859188))

(declare-fun m!8261618 () Bool)

(assert (=> start!743534 m!8261618))

(declare-fun m!8261620 () Bool)

(assert (=> b!7859179 m!8261620))

(declare-fun m!8261622 () Bool)

(assert (=> b!7859189 m!8261622))

(declare-fun m!8261624 () Bool)

(assert (=> b!7859182 m!8261624))

(declare-fun m!8261626 () Bool)

(assert (=> b!7859187 m!8261626))

(check-sat (not b!7859184) (not b!7859177) (not b!7859182) (not b!7859189) (not b!7859187) (not b!7859179) (not b!7859178) (not start!743534) (not b!7859185) (not b!7859181) (not b!7859180) tp_is_empty!52613 (not b!7859188))
(check-sat)
(get-model)

(declare-fun b!7859236 () Bool)

(declare-fun e!4644743 () Bool)

(declare-fun call!728640 () Bool)

(assert (=> b!7859236 (= e!4644743 call!728640)))

(declare-fun b!7859237 () Bool)

(declare-fun e!4644740 () Bool)

(assert (=> b!7859237 (= e!4644740 call!728640)))

(declare-fun b!7859238 () Bool)

(declare-fun e!4644739 () Bool)

(declare-fun e!4644742 () Bool)

(assert (=> b!7859238 (= e!4644739 e!4644742)))

(declare-fun c!1444329 () Bool)

(assert (=> b!7859238 (= c!1444329 ((_ is Star!21107) (Concat!29952 r2!6156 r1!6218)))))

(declare-fun c!1444328 () Bool)

(declare-fun bm!728635 () Bool)

(declare-fun call!728641 () Bool)

(assert (=> bm!728635 (= call!728641 (validRegex!11517 (ite c!1444328 (regOne!42727 (Concat!29952 r2!6156 r1!6218)) (regOne!42726 (Concat!29952 r2!6156 r1!6218)))))))

(declare-fun b!7859239 () Bool)

(declare-fun e!4644744 () Bool)

(assert (=> b!7859239 (= e!4644742 e!4644744)))

(declare-fun res!3124445 () Bool)

(assert (=> b!7859239 (= res!3124445 (not (nullable!9379 (reg!21436 (Concat!29952 r2!6156 r1!6218)))))))

(assert (=> b!7859239 (=> (not res!3124445) (not e!4644744))))

(declare-fun b!7859240 () Bool)

(declare-fun res!3124447 () Bool)

(declare-fun e!4644745 () Bool)

(assert (=> b!7859240 (=> res!3124447 e!4644745)))

(assert (=> b!7859240 (= res!3124447 (not ((_ is Concat!29952) (Concat!29952 r2!6156 r1!6218))))))

(declare-fun e!4644741 () Bool)

(assert (=> b!7859240 (= e!4644741 e!4644745)))

(declare-fun bm!728636 () Bool)

(declare-fun call!728642 () Bool)

(assert (=> bm!728636 (= call!728640 call!728642)))

(declare-fun b!7859241 () Bool)

(assert (=> b!7859241 (= e!4644744 call!728642)))

(declare-fun bm!728637 () Bool)

(assert (=> bm!728637 (= call!728642 (validRegex!11517 (ite c!1444329 (reg!21436 (Concat!29952 r2!6156 r1!6218)) (ite c!1444328 (regTwo!42727 (Concat!29952 r2!6156 r1!6218)) (regTwo!42726 (Concat!29952 r2!6156 r1!6218))))))))

(declare-fun d!2354304 () Bool)

(declare-fun res!3124448 () Bool)

(assert (=> d!2354304 (=> res!3124448 e!4644739)))

(assert (=> d!2354304 (= res!3124448 ((_ is ElementMatch!21107) (Concat!29952 r2!6156 r1!6218)))))

(assert (=> d!2354304 (= (validRegex!11517 (Concat!29952 r2!6156 r1!6218)) e!4644739)))

(declare-fun b!7859242 () Bool)

(assert (=> b!7859242 (= e!4644742 e!4644741)))

(assert (=> b!7859242 (= c!1444328 ((_ is Union!21107) (Concat!29952 r2!6156 r1!6218)))))

(declare-fun b!7859243 () Bool)

(assert (=> b!7859243 (= e!4644745 e!4644743)))

(declare-fun res!3124446 () Bool)

(assert (=> b!7859243 (=> (not res!3124446) (not e!4644743))))

(assert (=> b!7859243 (= res!3124446 call!728641)))

(declare-fun b!7859244 () Bool)

(declare-fun res!3124444 () Bool)

(assert (=> b!7859244 (=> (not res!3124444) (not e!4644740))))

(assert (=> b!7859244 (= res!3124444 call!728641)))

(assert (=> b!7859244 (= e!4644741 e!4644740)))

(assert (= (and d!2354304 (not res!3124448)) b!7859238))

(assert (= (and b!7859238 c!1444329) b!7859239))

(assert (= (and b!7859238 (not c!1444329)) b!7859242))

(assert (= (and b!7859239 res!3124445) b!7859241))

(assert (= (and b!7859242 c!1444328) b!7859244))

(assert (= (and b!7859242 (not c!1444328)) b!7859240))

(assert (= (and b!7859244 res!3124444) b!7859237))

(assert (= (and b!7859240 (not res!3124447)) b!7859243))

(assert (= (and b!7859243 res!3124446) b!7859236))

(assert (= (or b!7859237 b!7859236) bm!728636))

(assert (= (or b!7859244 b!7859243) bm!728635))

(assert (= (or b!7859241 bm!728636) bm!728637))

(declare-fun m!8261634 () Bool)

(assert (=> bm!728635 m!8261634))

(declare-fun m!8261636 () Bool)

(assert (=> b!7859239 m!8261636))

(declare-fun m!8261638 () Bool)

(assert (=> bm!728637 m!8261638))

(assert (=> b!7859182 d!2354304))

(declare-fun b!7859245 () Bool)

(declare-fun e!4644750 () Bool)

(declare-fun call!728643 () Bool)

(assert (=> b!7859245 (= e!4644750 call!728643)))

(declare-fun b!7859246 () Bool)

(declare-fun e!4644747 () Bool)

(assert (=> b!7859246 (= e!4644747 call!728643)))

(declare-fun b!7859247 () Bool)

(declare-fun e!4644746 () Bool)

(declare-fun e!4644749 () Bool)

(assert (=> b!7859247 (= e!4644746 e!4644749)))

(declare-fun c!1444331 () Bool)

(assert (=> b!7859247 (= c!1444331 ((_ is Star!21107) r1!6218))))

(declare-fun bm!728638 () Bool)

(declare-fun call!728644 () Bool)

(declare-fun c!1444330 () Bool)

(assert (=> bm!728638 (= call!728644 (validRegex!11517 (ite c!1444330 (regOne!42727 r1!6218) (regOne!42726 r1!6218))))))

(declare-fun b!7859248 () Bool)

(declare-fun e!4644751 () Bool)

(assert (=> b!7859248 (= e!4644749 e!4644751)))

(declare-fun res!3124450 () Bool)

(assert (=> b!7859248 (= res!3124450 (not (nullable!9379 (reg!21436 r1!6218))))))

(assert (=> b!7859248 (=> (not res!3124450) (not e!4644751))))

(declare-fun b!7859249 () Bool)

(declare-fun res!3124452 () Bool)

(declare-fun e!4644752 () Bool)

(assert (=> b!7859249 (=> res!3124452 e!4644752)))

(assert (=> b!7859249 (= res!3124452 (not ((_ is Concat!29952) r1!6218)))))

(declare-fun e!4644748 () Bool)

(assert (=> b!7859249 (= e!4644748 e!4644752)))

(declare-fun bm!728639 () Bool)

(declare-fun call!728645 () Bool)

(assert (=> bm!728639 (= call!728643 call!728645)))

(declare-fun b!7859250 () Bool)

(assert (=> b!7859250 (= e!4644751 call!728645)))

(declare-fun bm!728640 () Bool)

(assert (=> bm!728640 (= call!728645 (validRegex!11517 (ite c!1444331 (reg!21436 r1!6218) (ite c!1444330 (regTwo!42727 r1!6218) (regTwo!42726 r1!6218)))))))

(declare-fun d!2354310 () Bool)

(declare-fun res!3124453 () Bool)

(assert (=> d!2354310 (=> res!3124453 e!4644746)))

(assert (=> d!2354310 (= res!3124453 ((_ is ElementMatch!21107) r1!6218))))

(assert (=> d!2354310 (= (validRegex!11517 r1!6218) e!4644746)))

(declare-fun b!7859251 () Bool)

(assert (=> b!7859251 (= e!4644749 e!4644748)))

(assert (=> b!7859251 (= c!1444330 ((_ is Union!21107) r1!6218))))

(declare-fun b!7859252 () Bool)

(assert (=> b!7859252 (= e!4644752 e!4644750)))

(declare-fun res!3124451 () Bool)

(assert (=> b!7859252 (=> (not res!3124451) (not e!4644750))))

(assert (=> b!7859252 (= res!3124451 call!728644)))

(declare-fun b!7859253 () Bool)

(declare-fun res!3124449 () Bool)

(assert (=> b!7859253 (=> (not res!3124449) (not e!4644747))))

(assert (=> b!7859253 (= res!3124449 call!728644)))

(assert (=> b!7859253 (= e!4644748 e!4644747)))

(assert (= (and d!2354310 (not res!3124453)) b!7859247))

(assert (= (and b!7859247 c!1444331) b!7859248))

(assert (= (and b!7859247 (not c!1444331)) b!7859251))

(assert (= (and b!7859248 res!3124450) b!7859250))

(assert (= (and b!7859251 c!1444330) b!7859253))

(assert (= (and b!7859251 (not c!1444330)) b!7859249))

(assert (= (and b!7859253 res!3124449) b!7859246))

(assert (= (and b!7859249 (not res!3124452)) b!7859252))

(assert (= (and b!7859252 res!3124451) b!7859245))

(assert (= (or b!7859246 b!7859245) bm!728639))

(assert (= (or b!7859253 b!7859252) bm!728638))

(assert (= (or b!7859250 bm!728639) bm!728640))

(declare-fun m!8261640 () Bool)

(assert (=> bm!728638 m!8261640))

(declare-fun m!8261642 () Bool)

(assert (=> b!7859248 m!8261642))

(declare-fun m!8261644 () Bool)

(assert (=> bm!728640 m!8261644))

(assert (=> start!743534 d!2354310))

(declare-fun b!7859254 () Bool)

(declare-fun e!4644757 () Bool)

(declare-fun call!728646 () Bool)

(assert (=> b!7859254 (= e!4644757 call!728646)))

(declare-fun b!7859255 () Bool)

(declare-fun e!4644754 () Bool)

(assert (=> b!7859255 (= e!4644754 call!728646)))

(declare-fun b!7859256 () Bool)

(declare-fun e!4644753 () Bool)

(declare-fun e!4644756 () Bool)

(assert (=> b!7859256 (= e!4644753 e!4644756)))

(declare-fun c!1444333 () Bool)

(assert (=> b!7859256 (= c!1444333 ((_ is Star!21107) r2!6156))))

(declare-fun bm!728641 () Bool)

(declare-fun call!728647 () Bool)

(declare-fun c!1444332 () Bool)

(assert (=> bm!728641 (= call!728647 (validRegex!11517 (ite c!1444332 (regOne!42727 r2!6156) (regOne!42726 r2!6156))))))

(declare-fun b!7859257 () Bool)

(declare-fun e!4644758 () Bool)

(assert (=> b!7859257 (= e!4644756 e!4644758)))

(declare-fun res!3124455 () Bool)

(assert (=> b!7859257 (= res!3124455 (not (nullable!9379 (reg!21436 r2!6156))))))

(assert (=> b!7859257 (=> (not res!3124455) (not e!4644758))))

(declare-fun b!7859258 () Bool)

(declare-fun res!3124457 () Bool)

(declare-fun e!4644759 () Bool)

(assert (=> b!7859258 (=> res!3124457 e!4644759)))

(assert (=> b!7859258 (= res!3124457 (not ((_ is Concat!29952) r2!6156)))))

(declare-fun e!4644755 () Bool)

(assert (=> b!7859258 (= e!4644755 e!4644759)))

(declare-fun bm!728642 () Bool)

(declare-fun call!728648 () Bool)

(assert (=> bm!728642 (= call!728646 call!728648)))

(declare-fun b!7859259 () Bool)

(assert (=> b!7859259 (= e!4644758 call!728648)))

(declare-fun bm!728643 () Bool)

(assert (=> bm!728643 (= call!728648 (validRegex!11517 (ite c!1444333 (reg!21436 r2!6156) (ite c!1444332 (regTwo!42727 r2!6156) (regTwo!42726 r2!6156)))))))

(declare-fun d!2354312 () Bool)

(declare-fun res!3124458 () Bool)

(assert (=> d!2354312 (=> res!3124458 e!4644753)))

(assert (=> d!2354312 (= res!3124458 ((_ is ElementMatch!21107) r2!6156))))

(assert (=> d!2354312 (= (validRegex!11517 r2!6156) e!4644753)))

(declare-fun b!7859260 () Bool)

(assert (=> b!7859260 (= e!4644756 e!4644755)))

(assert (=> b!7859260 (= c!1444332 ((_ is Union!21107) r2!6156))))

(declare-fun b!7859261 () Bool)

(assert (=> b!7859261 (= e!4644759 e!4644757)))

(declare-fun res!3124456 () Bool)

(assert (=> b!7859261 (=> (not res!3124456) (not e!4644757))))

(assert (=> b!7859261 (= res!3124456 call!728647)))

(declare-fun b!7859262 () Bool)

(declare-fun res!3124454 () Bool)

(assert (=> b!7859262 (=> (not res!3124454) (not e!4644754))))

(assert (=> b!7859262 (= res!3124454 call!728647)))

(assert (=> b!7859262 (= e!4644755 e!4644754)))

(assert (= (and d!2354312 (not res!3124458)) b!7859256))

(assert (= (and b!7859256 c!1444333) b!7859257))

(assert (= (and b!7859256 (not c!1444333)) b!7859260))

(assert (= (and b!7859257 res!3124455) b!7859259))

(assert (= (and b!7859260 c!1444332) b!7859262))

(assert (= (and b!7859260 (not c!1444332)) b!7859258))

(assert (= (and b!7859262 res!3124454) b!7859255))

(assert (= (and b!7859258 (not res!3124457)) b!7859261))

(assert (= (and b!7859261 res!3124456) b!7859254))

(assert (= (or b!7859255 b!7859254) bm!728642))

(assert (= (or b!7859262 b!7859261) bm!728641))

(assert (= (or b!7859259 bm!728642) bm!728643))

(declare-fun m!8261646 () Bool)

(assert (=> bm!728641 m!8261646))

(declare-fun m!8261648 () Bool)

(assert (=> b!7859257 m!8261648))

(declare-fun m!8261650 () Bool)

(assert (=> bm!728643 m!8261650))

(assert (=> b!7859179 d!2354312))

(declare-fun b!7859373 () Bool)

(declare-fun e!4644814 () Bool)

(assert (=> b!7859373 (= e!4644814 (nullable!9379 r1!6218))))

(declare-fun d!2354314 () Bool)

(declare-fun e!4644817 () Bool)

(assert (=> d!2354314 e!4644817))

(declare-fun c!1444354 () Bool)

(assert (=> d!2354314 (= c!1444354 ((_ is EmptyExpr!21107) r1!6218))))

(declare-fun lt!2680211 () Bool)

(assert (=> d!2354314 (= lt!2680211 e!4644814)))

(declare-fun c!1444353 () Bool)

(declare-fun isEmpty!42351 (List!73966) Bool)

(assert (=> d!2354314 (= c!1444353 (isEmpty!42351 s!14237))))

(assert (=> d!2354314 (validRegex!11517 r1!6218)))

(assert (=> d!2354314 (= (matchR!10543 r1!6218 s!14237) lt!2680211)))

(declare-fun b!7859374 () Bool)

(declare-fun res!3124514 () Bool)

(declare-fun e!4644816 () Bool)

(assert (=> b!7859374 (=> (not res!3124514) (not e!4644816))))

(declare-fun call!728660 () Bool)

(assert (=> b!7859374 (= res!3124514 (not call!728660))))

(declare-fun b!7859375 () Bool)

(declare-fun head!16062 (List!73966) C!42540)

(assert (=> b!7859375 (= e!4644816 (= (head!16062 s!14237) (c!1444317 r1!6218)))))

(declare-fun b!7859376 () Bool)

(declare-fun e!4644819 () Bool)

(declare-fun e!4644815 () Bool)

(assert (=> b!7859376 (= e!4644819 e!4644815)))

(declare-fun res!3124511 () Bool)

(assert (=> b!7859376 (=> (not res!3124511) (not e!4644815))))

(assert (=> b!7859376 (= res!3124511 (not lt!2680211))))

(declare-fun b!7859377 () Bool)

(declare-fun res!3124510 () Bool)

(assert (=> b!7859377 (=> res!3124510 e!4644819)))

(assert (=> b!7859377 (= res!3124510 (not ((_ is ElementMatch!21107) r1!6218)))))

(declare-fun e!4644818 () Bool)

(assert (=> b!7859377 (= e!4644818 e!4644819)))

(declare-fun b!7859378 () Bool)

(assert (=> b!7859378 (= e!4644817 e!4644818)))

(declare-fun c!1444355 () Bool)

(assert (=> b!7859378 (= c!1444355 ((_ is EmptyLang!21107) r1!6218))))

(declare-fun b!7859379 () Bool)

(declare-fun derivativeStep!6342 (Regex!21107 C!42540) Regex!21107)

(declare-fun tail!15605 (List!73966) List!73966)

(assert (=> b!7859379 (= e!4644814 (matchR!10543 (derivativeStep!6342 r1!6218 (head!16062 s!14237)) (tail!15605 s!14237)))))

(declare-fun b!7859380 () Bool)

(assert (=> b!7859380 (= e!4644818 (not lt!2680211))))

(declare-fun b!7859381 () Bool)

(declare-fun res!3124512 () Bool)

(declare-fun e!4644820 () Bool)

(assert (=> b!7859381 (=> res!3124512 e!4644820)))

(assert (=> b!7859381 (= res!3124512 (not (isEmpty!42351 (tail!15605 s!14237))))))

(declare-fun b!7859382 () Bool)

(assert (=> b!7859382 (= e!4644820 (not (= (head!16062 s!14237) (c!1444317 r1!6218))))))

(declare-fun b!7859383 () Bool)

(declare-fun res!3124516 () Bool)

(assert (=> b!7859383 (=> res!3124516 e!4644819)))

(assert (=> b!7859383 (= res!3124516 e!4644816)))

(declare-fun res!3124513 () Bool)

(assert (=> b!7859383 (=> (not res!3124513) (not e!4644816))))

(assert (=> b!7859383 (= res!3124513 lt!2680211)))

(declare-fun b!7859384 () Bool)

(declare-fun res!3124515 () Bool)

(assert (=> b!7859384 (=> (not res!3124515) (not e!4644816))))

(assert (=> b!7859384 (= res!3124515 (isEmpty!42351 (tail!15605 s!14237)))))

(declare-fun b!7859385 () Bool)

(assert (=> b!7859385 (= e!4644817 (= lt!2680211 call!728660))))

(declare-fun b!7859386 () Bool)

(assert (=> b!7859386 (= e!4644815 e!4644820)))

(declare-fun res!3124509 () Bool)

(assert (=> b!7859386 (=> res!3124509 e!4644820)))

(assert (=> b!7859386 (= res!3124509 call!728660)))

(declare-fun bm!728655 () Bool)

(assert (=> bm!728655 (= call!728660 (isEmpty!42351 s!14237))))

(assert (= (and d!2354314 c!1444353) b!7859373))

(assert (= (and d!2354314 (not c!1444353)) b!7859379))

(assert (= (and d!2354314 c!1444354) b!7859385))

(assert (= (and d!2354314 (not c!1444354)) b!7859378))

(assert (= (and b!7859378 c!1444355) b!7859380))

(assert (= (and b!7859378 (not c!1444355)) b!7859377))

(assert (= (and b!7859377 (not res!3124510)) b!7859383))

(assert (= (and b!7859383 res!3124513) b!7859374))

(assert (= (and b!7859374 res!3124514) b!7859384))

(assert (= (and b!7859384 res!3124515) b!7859375))

(assert (= (and b!7859383 (not res!3124516)) b!7859376))

(assert (= (and b!7859376 res!3124511) b!7859386))

(assert (= (and b!7859386 (not res!3124509)) b!7859381))

(assert (= (and b!7859381 (not res!3124512)) b!7859382))

(assert (= (or b!7859385 b!7859374 b!7859386) bm!728655))

(declare-fun m!8261680 () Bool)

(assert (=> b!7859373 m!8261680))

(declare-fun m!8261682 () Bool)

(assert (=> b!7859381 m!8261682))

(assert (=> b!7859381 m!8261682))

(declare-fun m!8261684 () Bool)

(assert (=> b!7859381 m!8261684))

(assert (=> b!7859384 m!8261682))

(assert (=> b!7859384 m!8261682))

(assert (=> b!7859384 m!8261684))

(declare-fun m!8261686 () Bool)

(assert (=> b!7859382 m!8261686))

(assert (=> b!7859375 m!8261686))

(declare-fun m!8261688 () Bool)

(assert (=> bm!728655 m!8261688))

(assert (=> d!2354314 m!8261688))

(assert (=> d!2354314 m!8261618))

(assert (=> b!7859379 m!8261686))

(assert (=> b!7859379 m!8261686))

(declare-fun m!8261690 () Bool)

(assert (=> b!7859379 m!8261690))

(assert (=> b!7859379 m!8261682))

(assert (=> b!7859379 m!8261690))

(assert (=> b!7859379 m!8261682))

(declare-fun m!8261692 () Bool)

(assert (=> b!7859379 m!8261692))

(assert (=> b!7859189 d!2354314))

(declare-fun d!2354322 () Bool)

(declare-fun nullableFct!3703 (Regex!21107) Bool)

(assert (=> d!2354322 (= (nullable!9379 r2!6156) (nullableFct!3703 r2!6156))))

(declare-fun bs!1967174 () Bool)

(assert (= bs!1967174 d!2354322))

(declare-fun m!8261694 () Bool)

(assert (=> bs!1967174 m!8261694))

(assert (=> b!7859187 d!2354322))

(declare-fun b!7859424 () Bool)

(declare-fun e!4644833 () Bool)

(declare-fun tp!2328912 () Bool)

(assert (=> b!7859424 (= e!4644833 (and tp_is_empty!52613 tp!2328912))))

(assert (=> b!7859188 (= tp!2328846 e!4644833)))

(assert (= (and b!7859188 ((_ is Cons!73842) (t!388701 s!14237))) b!7859424))

(declare-fun b!7859435 () Bool)

(declare-fun e!4644836 () Bool)

(assert (=> b!7859435 (= e!4644836 tp_is_empty!52613)))

(declare-fun b!7859437 () Bool)

(declare-fun tp!2328923 () Bool)

(assert (=> b!7859437 (= e!4644836 tp!2328923)))

(declare-fun b!7859436 () Bool)

(declare-fun tp!2328924 () Bool)

(declare-fun tp!2328925 () Bool)

(assert (=> b!7859436 (= e!4644836 (and tp!2328924 tp!2328925))))

(declare-fun b!7859438 () Bool)

(declare-fun tp!2328927 () Bool)

(declare-fun tp!2328926 () Bool)

(assert (=> b!7859438 (= e!4644836 (and tp!2328927 tp!2328926))))

(assert (=> b!7859177 (= tp!2328844 e!4644836)))

(assert (= (and b!7859177 ((_ is ElementMatch!21107) (regOne!42726 r1!6218))) b!7859435))

(assert (= (and b!7859177 ((_ is Concat!29952) (regOne!42726 r1!6218))) b!7859436))

(assert (= (and b!7859177 ((_ is Star!21107) (regOne!42726 r1!6218))) b!7859437))

(assert (= (and b!7859177 ((_ is Union!21107) (regOne!42726 r1!6218))) b!7859438))

(declare-fun b!7859439 () Bool)

(declare-fun e!4644837 () Bool)

(assert (=> b!7859439 (= e!4644837 tp_is_empty!52613)))

(declare-fun b!7859441 () Bool)

(declare-fun tp!2328928 () Bool)

(assert (=> b!7859441 (= e!4644837 tp!2328928)))

(declare-fun b!7859440 () Bool)

(declare-fun tp!2328929 () Bool)

(declare-fun tp!2328930 () Bool)

(assert (=> b!7859440 (= e!4644837 (and tp!2328929 tp!2328930))))

(declare-fun b!7859442 () Bool)

(declare-fun tp!2328932 () Bool)

(declare-fun tp!2328931 () Bool)

(assert (=> b!7859442 (= e!4644837 (and tp!2328932 tp!2328931))))

(assert (=> b!7859177 (= tp!2328836 e!4644837)))

(assert (= (and b!7859177 ((_ is ElementMatch!21107) (regTwo!42726 r1!6218))) b!7859439))

(assert (= (and b!7859177 ((_ is Concat!29952) (regTwo!42726 r1!6218))) b!7859440))

(assert (= (and b!7859177 ((_ is Star!21107) (regTwo!42726 r1!6218))) b!7859441))

(assert (= (and b!7859177 ((_ is Union!21107) (regTwo!42726 r1!6218))) b!7859442))

(declare-fun b!7859443 () Bool)

(declare-fun e!4644838 () Bool)

(assert (=> b!7859443 (= e!4644838 tp_is_empty!52613)))

(declare-fun b!7859445 () Bool)

(declare-fun tp!2328933 () Bool)

(assert (=> b!7859445 (= e!4644838 tp!2328933)))

(declare-fun b!7859444 () Bool)

(declare-fun tp!2328934 () Bool)

(declare-fun tp!2328935 () Bool)

(assert (=> b!7859444 (= e!4644838 (and tp!2328934 tp!2328935))))

(declare-fun b!7859446 () Bool)

(declare-fun tp!2328937 () Bool)

(declare-fun tp!2328936 () Bool)

(assert (=> b!7859446 (= e!4644838 (and tp!2328937 tp!2328936))))

(assert (=> b!7859184 (= tp!2328845 e!4644838)))

(assert (= (and b!7859184 ((_ is ElementMatch!21107) (regOne!42726 r2!6156))) b!7859443))

(assert (= (and b!7859184 ((_ is Concat!29952) (regOne!42726 r2!6156))) b!7859444))

(assert (= (and b!7859184 ((_ is Star!21107) (regOne!42726 r2!6156))) b!7859445))

(assert (= (and b!7859184 ((_ is Union!21107) (regOne!42726 r2!6156))) b!7859446))

(declare-fun b!7859447 () Bool)

(declare-fun e!4644839 () Bool)

(assert (=> b!7859447 (= e!4644839 tp_is_empty!52613)))

(declare-fun b!7859449 () Bool)

(declare-fun tp!2328938 () Bool)

(assert (=> b!7859449 (= e!4644839 tp!2328938)))

(declare-fun b!7859448 () Bool)

(declare-fun tp!2328939 () Bool)

(declare-fun tp!2328940 () Bool)

(assert (=> b!7859448 (= e!4644839 (and tp!2328939 tp!2328940))))

(declare-fun b!7859450 () Bool)

(declare-fun tp!2328942 () Bool)

(declare-fun tp!2328941 () Bool)

(assert (=> b!7859450 (= e!4644839 (and tp!2328942 tp!2328941))))

(assert (=> b!7859184 (= tp!2328841 e!4644839)))

(assert (= (and b!7859184 ((_ is ElementMatch!21107) (regTwo!42726 r2!6156))) b!7859447))

(assert (= (and b!7859184 ((_ is Concat!29952) (regTwo!42726 r2!6156))) b!7859448))

(assert (= (and b!7859184 ((_ is Star!21107) (regTwo!42726 r2!6156))) b!7859449))

(assert (= (and b!7859184 ((_ is Union!21107) (regTwo!42726 r2!6156))) b!7859450))

(declare-fun b!7859451 () Bool)

(declare-fun e!4644840 () Bool)

(assert (=> b!7859451 (= e!4644840 tp_is_empty!52613)))

(declare-fun b!7859453 () Bool)

(declare-fun tp!2328943 () Bool)

(assert (=> b!7859453 (= e!4644840 tp!2328943)))

(declare-fun b!7859452 () Bool)

(declare-fun tp!2328944 () Bool)

(declare-fun tp!2328945 () Bool)

(assert (=> b!7859452 (= e!4644840 (and tp!2328944 tp!2328945))))

(declare-fun b!7859454 () Bool)

(declare-fun tp!2328947 () Bool)

(declare-fun tp!2328946 () Bool)

(assert (=> b!7859454 (= e!4644840 (and tp!2328947 tp!2328946))))

(assert (=> b!7859178 (= tp!2328837 e!4644840)))

(assert (= (and b!7859178 ((_ is ElementMatch!21107) (regOne!42727 r2!6156))) b!7859451))

(assert (= (and b!7859178 ((_ is Concat!29952) (regOne!42727 r2!6156))) b!7859452))

(assert (= (and b!7859178 ((_ is Star!21107) (regOne!42727 r2!6156))) b!7859453))

(assert (= (and b!7859178 ((_ is Union!21107) (regOne!42727 r2!6156))) b!7859454))

(declare-fun b!7859455 () Bool)

(declare-fun e!4644841 () Bool)

(assert (=> b!7859455 (= e!4644841 tp_is_empty!52613)))

(declare-fun b!7859457 () Bool)

(declare-fun tp!2328948 () Bool)

(assert (=> b!7859457 (= e!4644841 tp!2328948)))

(declare-fun b!7859456 () Bool)

(declare-fun tp!2328949 () Bool)

(declare-fun tp!2328950 () Bool)

(assert (=> b!7859456 (= e!4644841 (and tp!2328949 tp!2328950))))

(declare-fun b!7859458 () Bool)

(declare-fun tp!2328952 () Bool)

(declare-fun tp!2328951 () Bool)

(assert (=> b!7859458 (= e!4644841 (and tp!2328952 tp!2328951))))

(assert (=> b!7859178 (= tp!2328839 e!4644841)))

(assert (= (and b!7859178 ((_ is ElementMatch!21107) (regTwo!42727 r2!6156))) b!7859455))

(assert (= (and b!7859178 ((_ is Concat!29952) (regTwo!42727 r2!6156))) b!7859456))

(assert (= (and b!7859178 ((_ is Star!21107) (regTwo!42727 r2!6156))) b!7859457))

(assert (= (and b!7859178 ((_ is Union!21107) (regTwo!42727 r2!6156))) b!7859458))

(declare-fun b!7859459 () Bool)

(declare-fun e!4644842 () Bool)

(assert (=> b!7859459 (= e!4644842 tp_is_empty!52613)))

(declare-fun b!7859461 () Bool)

(declare-fun tp!2328953 () Bool)

(assert (=> b!7859461 (= e!4644842 tp!2328953)))

(declare-fun b!7859460 () Bool)

(declare-fun tp!2328954 () Bool)

(declare-fun tp!2328955 () Bool)

(assert (=> b!7859460 (= e!4644842 (and tp!2328954 tp!2328955))))

(declare-fun b!7859462 () Bool)

(declare-fun tp!2328957 () Bool)

(declare-fun tp!2328956 () Bool)

(assert (=> b!7859462 (= e!4644842 (and tp!2328957 tp!2328956))))

(assert (=> b!7859180 (= tp!2328843 e!4644842)))

(assert (= (and b!7859180 ((_ is ElementMatch!21107) (reg!21436 r1!6218))) b!7859459))

(assert (= (and b!7859180 ((_ is Concat!29952) (reg!21436 r1!6218))) b!7859460))

(assert (= (and b!7859180 ((_ is Star!21107) (reg!21436 r1!6218))) b!7859461))

(assert (= (and b!7859180 ((_ is Union!21107) (reg!21436 r1!6218))) b!7859462))

(declare-fun b!7859463 () Bool)

(declare-fun e!4644843 () Bool)

(assert (=> b!7859463 (= e!4644843 tp_is_empty!52613)))

(declare-fun b!7859465 () Bool)

(declare-fun tp!2328958 () Bool)

(assert (=> b!7859465 (= e!4644843 tp!2328958)))

(declare-fun b!7859464 () Bool)

(declare-fun tp!2328959 () Bool)

(declare-fun tp!2328960 () Bool)

(assert (=> b!7859464 (= e!4644843 (and tp!2328959 tp!2328960))))

(declare-fun b!7859466 () Bool)

(declare-fun tp!2328962 () Bool)

(declare-fun tp!2328961 () Bool)

(assert (=> b!7859466 (= e!4644843 (and tp!2328962 tp!2328961))))

(assert (=> b!7859185 (= tp!2328840 e!4644843)))

(assert (= (and b!7859185 ((_ is ElementMatch!21107) (regOne!42727 r1!6218))) b!7859463))

(assert (= (and b!7859185 ((_ is Concat!29952) (regOne!42727 r1!6218))) b!7859464))

(assert (= (and b!7859185 ((_ is Star!21107) (regOne!42727 r1!6218))) b!7859465))

(assert (= (and b!7859185 ((_ is Union!21107) (regOne!42727 r1!6218))) b!7859466))

(declare-fun b!7859467 () Bool)

(declare-fun e!4644844 () Bool)

(assert (=> b!7859467 (= e!4644844 tp_is_empty!52613)))

(declare-fun b!7859469 () Bool)

(declare-fun tp!2328963 () Bool)

(assert (=> b!7859469 (= e!4644844 tp!2328963)))

(declare-fun b!7859468 () Bool)

(declare-fun tp!2328964 () Bool)

(declare-fun tp!2328965 () Bool)

(assert (=> b!7859468 (= e!4644844 (and tp!2328964 tp!2328965))))

(declare-fun b!7859470 () Bool)

(declare-fun tp!2328967 () Bool)

(declare-fun tp!2328966 () Bool)

(assert (=> b!7859470 (= e!4644844 (and tp!2328967 tp!2328966))))

(assert (=> b!7859185 (= tp!2328838 e!4644844)))

(assert (= (and b!7859185 ((_ is ElementMatch!21107) (regTwo!42727 r1!6218))) b!7859467))

(assert (= (and b!7859185 ((_ is Concat!29952) (regTwo!42727 r1!6218))) b!7859468))

(assert (= (and b!7859185 ((_ is Star!21107) (regTwo!42727 r1!6218))) b!7859469))

(assert (= (and b!7859185 ((_ is Union!21107) (regTwo!42727 r1!6218))) b!7859470))

(declare-fun b!7859471 () Bool)

(declare-fun e!4644845 () Bool)

(assert (=> b!7859471 (= e!4644845 tp_is_empty!52613)))

(declare-fun b!7859473 () Bool)

(declare-fun tp!2328968 () Bool)

(assert (=> b!7859473 (= e!4644845 tp!2328968)))

(declare-fun b!7859472 () Bool)

(declare-fun tp!2328969 () Bool)

(declare-fun tp!2328970 () Bool)

(assert (=> b!7859472 (= e!4644845 (and tp!2328969 tp!2328970))))

(declare-fun b!7859474 () Bool)

(declare-fun tp!2328972 () Bool)

(declare-fun tp!2328971 () Bool)

(assert (=> b!7859474 (= e!4644845 (and tp!2328972 tp!2328971))))

(assert (=> b!7859181 (= tp!2328842 e!4644845)))

(assert (= (and b!7859181 ((_ is ElementMatch!21107) (reg!21436 r2!6156))) b!7859471))

(assert (= (and b!7859181 ((_ is Concat!29952) (reg!21436 r2!6156))) b!7859472))

(assert (= (and b!7859181 ((_ is Star!21107) (reg!21436 r2!6156))) b!7859473))

(assert (= (and b!7859181 ((_ is Union!21107) (reg!21436 r2!6156))) b!7859474))

(check-sat (not b!7859375) (not b!7859468) (not b!7859461) (not b!7859373) (not b!7859446) (not b!7859445) (not b!7859448) (not b!7859444) (not bm!728641) (not bm!728637) (not b!7859248) (not b!7859472) (not b!7859438) (not bm!728643) (not bm!728640) (not b!7859379) (not b!7859460) (not b!7859382) (not d!2354314) (not b!7859450) (not bm!728638) (not b!7859465) (not b!7859466) (not b!7859442) (not b!7859457) (not bm!728635) (not b!7859453) (not b!7859424) (not b!7859449) (not b!7859239) (not b!7859440) (not b!7859473) (not b!7859454) (not b!7859381) (not b!7859456) (not b!7859464) (not bm!728655) (not b!7859436) (not b!7859462) tp_is_empty!52613 (not b!7859452) (not d!2354322) (not b!7859257) (not b!7859470) (not b!7859441) (not b!7859474) (not b!7859458) (not b!7859384) (not b!7859437) (not b!7859469))
(check-sat)

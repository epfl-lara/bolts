; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281702 () Bool)

(assert start!281702)

(declare-fun b!2886632 () Bool)

(declare-fun e!1825321 () Bool)

(declare-fun tp!925848 () Bool)

(declare-fun tp!925849 () Bool)

(assert (=> b!2886632 (= e!1825321 (and tp!925848 tp!925849))))

(declare-fun b!2886633 () Bool)

(declare-fun tp!925846 () Bool)

(assert (=> b!2886633 (= e!1825321 tp!925846)))

(declare-fun b!2886634 () Bool)

(declare-fun e!1825319 () Bool)

(declare-datatypes ((C!17812 0))(
  ( (C!17813 (val!10940 Int)) )
))
(declare-datatypes ((Regex!8815 0))(
  ( (ElementMatch!8815 (c!469160 C!17812)) (Concat!14136 (regOne!18142 Regex!8815) (regTwo!18142 Regex!8815)) (EmptyExpr!8815) (Star!8815 (reg!9144 Regex!8815)) (EmptyLang!8815) (Union!8815 (regOne!18143 Regex!8815) (regTwo!18143 Regex!8815)) )
))
(declare-fun r!23079 () Regex!8815)

(declare-datatypes ((List!34616 0))(
  ( (Nil!34492) (Cons!34492 (h!39912 C!17812) (t!233659 List!34616)) )
))
(declare-datatypes ((Option!6488 0))(
  ( (None!6487) (Some!6487 (v!34613 List!34616)) )
))
(declare-fun lt!1020706 () Option!6488)

(declare-fun matchR!3791 (Regex!8815 List!34616) Bool)

(declare-fun get!10431 (Option!6488) List!34616)

(assert (=> b!2886634 (= e!1825319 (not (matchR!3791 r!23079 (get!10431 lt!1020706))))))

(declare-fun b!2886635 () Bool)

(declare-fun res!1195630 () Bool)

(assert (=> b!2886635 (=> (not res!1195630) (not e!1825319))))

(get-info :version)

(assert (=> b!2886635 (= res!1195630 (and (not ((_ is EmptyExpr!8815) r!23079)) ((_ is EmptyLang!8815) r!23079)))))

(declare-fun b!2886636 () Bool)

(declare-fun tp!925845 () Bool)

(declare-fun tp!925847 () Bool)

(assert (=> b!2886636 (= e!1825321 (and tp!925845 tp!925847))))

(declare-fun res!1195629 () Bool)

(declare-fun e!1825320 () Bool)

(assert (=> start!281702 (=> (not res!1195629) (not e!1825320))))

(declare-fun validRegex!3588 (Regex!8815) Bool)

(assert (=> start!281702 (= res!1195629 (validRegex!3588 r!23079))))

(assert (=> start!281702 e!1825320))

(assert (=> start!281702 e!1825321))

(declare-fun b!2886637 () Bool)

(assert (=> b!2886637 (= e!1825320 e!1825319)))

(declare-fun res!1195631 () Bool)

(assert (=> b!2886637 (=> (not res!1195631) (not e!1825319))))

(declare-fun isDefined!5052 (Option!6488) Bool)

(assert (=> b!2886637 (= res!1195631 (isDefined!5052 lt!1020706))))

(declare-fun getLanguageWitness!522 (Regex!8815) Option!6488)

(assert (=> b!2886637 (= lt!1020706 (getLanguageWitness!522 r!23079))))

(declare-fun b!2886638 () Bool)

(declare-fun tp_is_empty!15217 () Bool)

(assert (=> b!2886638 (= e!1825321 tp_is_empty!15217)))

(assert (= (and start!281702 res!1195629) b!2886637))

(assert (= (and b!2886637 res!1195631) b!2886635))

(assert (= (and b!2886635 res!1195630) b!2886634))

(assert (= (and start!281702 ((_ is ElementMatch!8815) r!23079)) b!2886638))

(assert (= (and start!281702 ((_ is Concat!14136) r!23079)) b!2886632))

(assert (= (and start!281702 ((_ is Star!8815) r!23079)) b!2886633))

(assert (= (and start!281702 ((_ is Union!8815) r!23079)) b!2886636))

(declare-fun m!3301329 () Bool)

(assert (=> b!2886634 m!3301329))

(assert (=> b!2886634 m!3301329))

(declare-fun m!3301331 () Bool)

(assert (=> b!2886634 m!3301331))

(declare-fun m!3301333 () Bool)

(assert (=> start!281702 m!3301333))

(declare-fun m!3301335 () Bool)

(assert (=> b!2886637 m!3301335))

(declare-fun m!3301337 () Bool)

(assert (=> b!2886637 m!3301337))

(check-sat tp_is_empty!15217 (not b!2886637) (not start!281702) (not b!2886636) (not b!2886634) (not b!2886633) (not b!2886632))
(check-sat)
(get-model)

(declare-fun call!187276 () Bool)

(declare-fun c!469165 () Bool)

(declare-fun c!469166 () Bool)

(declare-fun bm!187270 () Bool)

(assert (=> bm!187270 (= call!187276 (validRegex!3588 (ite c!469165 (reg!9144 r!23079) (ite c!469166 (regTwo!18143 r!23079) (regTwo!18142 r!23079)))))))

(declare-fun b!2886661 () Bool)

(declare-fun e!1825337 () Bool)

(declare-fun call!187277 () Bool)

(assert (=> b!2886661 (= e!1825337 call!187277)))

(declare-fun b!2886662 () Bool)

(declare-fun e!1825340 () Bool)

(declare-fun e!1825341 () Bool)

(assert (=> b!2886662 (= e!1825340 e!1825341)))

(assert (=> b!2886662 (= c!469165 ((_ is Star!8815) r!23079))))

(declare-fun b!2886663 () Bool)

(declare-fun e!1825336 () Bool)

(assert (=> b!2886663 (= e!1825336 e!1825337)))

(declare-fun res!1195646 () Bool)

(assert (=> b!2886663 (=> (not res!1195646) (not e!1825337))))

(declare-fun call!187275 () Bool)

(assert (=> b!2886663 (= res!1195646 call!187275)))

(declare-fun b!2886664 () Bool)

(declare-fun res!1195644 () Bool)

(declare-fun e!1825343 () Bool)

(assert (=> b!2886664 (=> (not res!1195644) (not e!1825343))))

(assert (=> b!2886664 (= res!1195644 call!187275)))

(declare-fun e!1825338 () Bool)

(assert (=> b!2886664 (= e!1825338 e!1825343)))

(declare-fun b!2886665 () Bool)

(declare-fun res!1195645 () Bool)

(assert (=> b!2886665 (=> res!1195645 e!1825336)))

(assert (=> b!2886665 (= res!1195645 (not ((_ is Concat!14136) r!23079)))))

(assert (=> b!2886665 (= e!1825338 e!1825336)))

(declare-fun b!2886666 () Bool)

(declare-fun e!1825339 () Bool)

(assert (=> b!2886666 (= e!1825339 call!187276)))

(declare-fun b!2886667 () Bool)

(assert (=> b!2886667 (= e!1825341 e!1825338)))

(assert (=> b!2886667 (= c!469166 ((_ is Union!8815) r!23079))))

(declare-fun b!2886668 () Bool)

(assert (=> b!2886668 (= e!1825343 call!187277)))

(declare-fun bm!187272 () Bool)

(assert (=> bm!187272 (= call!187275 (validRegex!3588 (ite c!469166 (regOne!18143 r!23079) (regOne!18142 r!23079))))))

(declare-fun b!2886669 () Bool)

(assert (=> b!2886669 (= e!1825341 e!1825339)))

(declare-fun res!1195642 () Bool)

(declare-fun nullable!2717 (Regex!8815) Bool)

(assert (=> b!2886669 (= res!1195642 (not (nullable!2717 (reg!9144 r!23079))))))

(assert (=> b!2886669 (=> (not res!1195642) (not e!1825339))))

(declare-fun bm!187271 () Bool)

(assert (=> bm!187271 (= call!187277 call!187276)))

(declare-fun d!834019 () Bool)

(declare-fun res!1195643 () Bool)

(assert (=> d!834019 (=> res!1195643 e!1825340)))

(assert (=> d!834019 (= res!1195643 ((_ is ElementMatch!8815) r!23079))))

(assert (=> d!834019 (= (validRegex!3588 r!23079) e!1825340)))

(assert (= (and d!834019 (not res!1195643)) b!2886662))

(assert (= (and b!2886662 c!469165) b!2886669))

(assert (= (and b!2886662 (not c!469165)) b!2886667))

(assert (= (and b!2886669 res!1195642) b!2886666))

(assert (= (and b!2886667 c!469166) b!2886664))

(assert (= (and b!2886667 (not c!469166)) b!2886665))

(assert (= (and b!2886664 res!1195644) b!2886668))

(assert (= (and b!2886665 (not res!1195645)) b!2886663))

(assert (= (and b!2886663 res!1195646) b!2886661))

(assert (= (or b!2886668 b!2886661) bm!187271))

(assert (= (or b!2886664 b!2886663) bm!187272))

(assert (= (or b!2886666 bm!187271) bm!187270))

(declare-fun m!3301339 () Bool)

(assert (=> bm!187270 m!3301339))

(declare-fun m!3301341 () Bool)

(assert (=> bm!187272 m!3301341))

(declare-fun m!3301343 () Bool)

(assert (=> b!2886669 m!3301343))

(assert (=> start!281702 d!834019))

(declare-fun d!834023 () Bool)

(declare-fun isEmpty!18785 (Option!6488) Bool)

(assert (=> d!834023 (= (isDefined!5052 lt!1020706) (not (isEmpty!18785 lt!1020706)))))

(declare-fun bs!523831 () Bool)

(assert (= bs!523831 d!834023))

(declare-fun m!3301345 () Bool)

(assert (=> bs!523831 m!3301345))

(assert (=> b!2886637 d!834023))

(declare-fun b!2886760 () Bool)

(declare-fun e!1825391 () Option!6488)

(declare-fun lt!1020719 () Option!6488)

(assert (=> b!2886760 (= e!1825391 lt!1020719)))

(declare-fun b!2886761 () Bool)

(declare-fun e!1825394 () Option!6488)

(assert (=> b!2886761 (= e!1825394 None!6487)))

(declare-fun d!834025 () Bool)

(declare-fun c!469207 () Bool)

(assert (=> d!834025 (= c!469207 ((_ is EmptyExpr!8815) r!23079))))

(declare-fun e!1825393 () Option!6488)

(assert (=> d!834025 (= (getLanguageWitness!522 r!23079) e!1825393)))

(declare-fun b!2886762 () Bool)

(declare-fun call!187285 () Option!6488)

(assert (=> b!2886762 (= e!1825391 call!187285)))

(declare-fun b!2886763 () Bool)

(declare-fun e!1825397 () Option!6488)

(assert (=> b!2886763 (= e!1825393 e!1825397)))

(declare-fun c!469200 () Bool)

(assert (=> b!2886763 (= c!469200 ((_ is EmptyLang!8815) r!23079))))

(declare-fun b!2886764 () Bool)

(declare-fun e!1825392 () Option!6488)

(assert (=> b!2886764 (= e!1825392 None!6487)))

(declare-fun b!2886765 () Bool)

(assert (=> b!2886765 (= e!1825393 (Some!6487 Nil!34492))))

(declare-fun b!2886766 () Bool)

(declare-fun e!1825388 () Option!6488)

(assert (=> b!2886766 (= e!1825388 e!1825391)))

(declare-fun call!187286 () Option!6488)

(assert (=> b!2886766 (= lt!1020719 call!187286)))

(declare-fun c!469206 () Bool)

(assert (=> b!2886766 (= c!469206 ((_ is Some!6487) lt!1020719))))

(declare-fun bm!187280 () Bool)

(declare-fun c!469208 () Bool)

(assert (=> bm!187280 (= call!187286 (getLanguageWitness!522 (ite c!469208 (regOne!18143 r!23079) (regTwo!18142 r!23079))))))

(declare-fun b!2886767 () Bool)

(declare-fun lt!1020720 () Option!6488)

(declare-fun lt!1020716 () Option!6488)

(declare-fun ++!8214 (List!34616 List!34616) List!34616)

(assert (=> b!2886767 (= e!1825392 (Some!6487 (++!8214 (v!34613 lt!1020720) (v!34613 lt!1020716))))))

(declare-fun b!2886768 () Bool)

(assert (=> b!2886768 (= e!1825397 None!6487)))

(declare-fun b!2886769 () Bool)

(declare-fun e!1825395 () Option!6488)

(assert (=> b!2886769 (= e!1825395 (Some!6487 (Cons!34492 (c!469160 r!23079) Nil!34492)))))

(declare-fun b!2886770 () Bool)

(declare-fun c!469202 () Bool)

(assert (=> b!2886770 (= c!469202 ((_ is ElementMatch!8815) r!23079))))

(assert (=> b!2886770 (= e!1825397 e!1825395)))

(declare-fun b!2886771 () Bool)

(assert (=> b!2886771 (= e!1825388 e!1825394)))

(assert (=> b!2886771 (= lt!1020720 call!187285)))

(declare-fun c!469203 () Bool)

(assert (=> b!2886771 (= c!469203 ((_ is Some!6487) lt!1020720))))

(declare-fun b!2886772 () Bool)

(assert (=> b!2886772 (= c!469208 ((_ is Union!8815) r!23079))))

(declare-fun e!1825396 () Option!6488)

(assert (=> b!2886772 (= e!1825396 e!1825388)))

(declare-fun bm!187281 () Bool)

(assert (=> bm!187281 (= call!187285 (getLanguageWitness!522 (ite c!469208 (regTwo!18143 r!23079) (regOne!18142 r!23079))))))

(declare-fun b!2886773 () Bool)

(declare-fun c!469209 () Bool)

(assert (=> b!2886773 (= c!469209 ((_ is Some!6487) lt!1020716))))

(assert (=> b!2886773 (= lt!1020716 call!187286)))

(assert (=> b!2886773 (= e!1825394 e!1825392)))

(declare-fun b!2886776 () Bool)

(assert (=> b!2886776 (= e!1825395 e!1825396)))

(declare-fun c!469205 () Bool)

(assert (=> b!2886776 (= c!469205 ((_ is Star!8815) r!23079))))

(declare-fun b!2886777 () Bool)

(assert (=> b!2886777 (= e!1825396 (Some!6487 Nil!34492))))

(assert (= (and d!834025 c!469207) b!2886765))

(assert (= (and d!834025 (not c!469207)) b!2886763))

(assert (= (and b!2886763 c!469200) b!2886768))

(assert (= (and b!2886763 (not c!469200)) b!2886770))

(assert (= (and b!2886770 c!469202) b!2886769))

(assert (= (and b!2886770 (not c!469202)) b!2886776))

(assert (= (and b!2886776 c!469205) b!2886777))

(assert (= (and b!2886776 (not c!469205)) b!2886772))

(assert (= (and b!2886772 c!469208) b!2886766))

(assert (= (and b!2886772 (not c!469208)) b!2886771))

(assert (= (and b!2886766 c!469206) b!2886760))

(assert (= (and b!2886766 (not c!469206)) b!2886762))

(assert (= (and b!2886771 c!469203) b!2886773))

(assert (= (and b!2886771 (not c!469203)) b!2886761))

(assert (= (and b!2886773 c!469209) b!2886767))

(assert (= (and b!2886773 (not c!469209)) b!2886764))

(assert (= (or b!2886762 b!2886771) bm!187281))

(assert (= (or b!2886766 b!2886773) bm!187280))

(declare-fun m!3301363 () Bool)

(assert (=> bm!187280 m!3301363))

(declare-fun m!3301365 () Bool)

(assert (=> b!2886767 m!3301365))

(declare-fun m!3301367 () Bool)

(assert (=> bm!187281 m!3301367))

(assert (=> b!2886637 d!834025))

(declare-fun b!2886850 () Bool)

(declare-fun res!1195704 () Bool)

(declare-fun e!1825441 () Bool)

(assert (=> b!2886850 (=> res!1195704 e!1825441)))

(assert (=> b!2886850 (= res!1195704 (not ((_ is ElementMatch!8815) r!23079)))))

(declare-fun e!1825443 () Bool)

(assert (=> b!2886850 (= e!1825443 e!1825441)))

(declare-fun d!834033 () Bool)

(declare-fun e!1825442 () Bool)

(assert (=> d!834033 e!1825442))

(declare-fun c!469235 () Bool)

(assert (=> d!834033 (= c!469235 ((_ is EmptyExpr!8815) r!23079))))

(declare-fun lt!1020730 () Bool)

(declare-fun e!1825446 () Bool)

(assert (=> d!834033 (= lt!1020730 e!1825446)))

(declare-fun c!469234 () Bool)

(declare-fun isEmpty!18787 (List!34616) Bool)

(assert (=> d!834033 (= c!469234 (isEmpty!18787 (get!10431 lt!1020706)))))

(assert (=> d!834033 (validRegex!3588 r!23079)))

(assert (=> d!834033 (= (matchR!3791 r!23079 (get!10431 lt!1020706)) lt!1020730)))

(declare-fun b!2886851 () Bool)

(declare-fun res!1195699 () Bool)

(declare-fun e!1825445 () Bool)

(assert (=> b!2886851 (=> (not res!1195699) (not e!1825445))))

(declare-fun call!187301 () Bool)

(assert (=> b!2886851 (= res!1195699 (not call!187301))))

(declare-fun b!2886852 () Bool)

(assert (=> b!2886852 (= e!1825442 (= lt!1020730 call!187301))))

(declare-fun b!2886853 () Bool)

(declare-fun head!6377 (List!34616) C!17812)

(assert (=> b!2886853 (= e!1825445 (= (head!6377 (get!10431 lt!1020706)) (c!469160 r!23079)))))

(declare-fun b!2886854 () Bool)

(assert (=> b!2886854 (= e!1825442 e!1825443)))

(declare-fun c!469236 () Bool)

(assert (=> b!2886854 (= c!469236 ((_ is EmptyLang!8815) r!23079))))

(declare-fun b!2886855 () Bool)

(declare-fun e!1825440 () Bool)

(assert (=> b!2886855 (= e!1825440 (not (= (head!6377 (get!10431 lt!1020706)) (c!469160 r!23079))))))

(declare-fun b!2886856 () Bool)

(declare-fun e!1825444 () Bool)

(assert (=> b!2886856 (= e!1825441 e!1825444)))

(declare-fun res!1195697 () Bool)

(assert (=> b!2886856 (=> (not res!1195697) (not e!1825444))))

(assert (=> b!2886856 (= res!1195697 (not lt!1020730))))

(declare-fun b!2886857 () Bool)

(declare-fun res!1195701 () Bool)

(assert (=> b!2886857 (=> res!1195701 e!1825441)))

(assert (=> b!2886857 (= res!1195701 e!1825445)))

(declare-fun res!1195702 () Bool)

(assert (=> b!2886857 (=> (not res!1195702) (not e!1825445))))

(assert (=> b!2886857 (= res!1195702 lt!1020730)))

(declare-fun b!2886858 () Bool)

(assert (=> b!2886858 (= e!1825443 (not lt!1020730))))

(declare-fun b!2886859 () Bool)

(declare-fun derivativeStep!2348 (Regex!8815 C!17812) Regex!8815)

(declare-fun tail!4602 (List!34616) List!34616)

(assert (=> b!2886859 (= e!1825446 (matchR!3791 (derivativeStep!2348 r!23079 (head!6377 (get!10431 lt!1020706))) (tail!4602 (get!10431 lt!1020706))))))

(declare-fun b!2886860 () Bool)

(declare-fun res!1195700 () Bool)

(assert (=> b!2886860 (=> (not res!1195700) (not e!1825445))))

(assert (=> b!2886860 (= res!1195700 (isEmpty!18787 (tail!4602 (get!10431 lt!1020706))))))

(declare-fun bm!187296 () Bool)

(assert (=> bm!187296 (= call!187301 (isEmpty!18787 (get!10431 lt!1020706)))))

(declare-fun b!2886861 () Bool)

(assert (=> b!2886861 (= e!1825444 e!1825440)))

(declare-fun res!1195698 () Bool)

(assert (=> b!2886861 (=> res!1195698 e!1825440)))

(assert (=> b!2886861 (= res!1195698 call!187301)))

(declare-fun b!2886862 () Bool)

(declare-fun res!1195703 () Bool)

(assert (=> b!2886862 (=> res!1195703 e!1825440)))

(assert (=> b!2886862 (= res!1195703 (not (isEmpty!18787 (tail!4602 (get!10431 lt!1020706)))))))

(declare-fun b!2886863 () Bool)

(assert (=> b!2886863 (= e!1825446 (nullable!2717 r!23079))))

(assert (= (and d!834033 c!469234) b!2886863))

(assert (= (and d!834033 (not c!469234)) b!2886859))

(assert (= (and d!834033 c!469235) b!2886852))

(assert (= (and d!834033 (not c!469235)) b!2886854))

(assert (= (and b!2886854 c!469236) b!2886858))

(assert (= (and b!2886854 (not c!469236)) b!2886850))

(assert (= (and b!2886850 (not res!1195704)) b!2886857))

(assert (= (and b!2886857 res!1195702) b!2886851))

(assert (= (and b!2886851 res!1195699) b!2886860))

(assert (= (and b!2886860 res!1195700) b!2886853))

(assert (= (and b!2886857 (not res!1195701)) b!2886856))

(assert (= (and b!2886856 res!1195697) b!2886861))

(assert (= (and b!2886861 (not res!1195698)) b!2886862))

(assert (= (and b!2886862 (not res!1195703)) b!2886855))

(assert (= (or b!2886852 b!2886851 b!2886861) bm!187296))

(assert (=> b!2886862 m!3301329))

(declare-fun m!3301375 () Bool)

(assert (=> b!2886862 m!3301375))

(assert (=> b!2886862 m!3301375))

(declare-fun m!3301377 () Bool)

(assert (=> b!2886862 m!3301377))

(assert (=> bm!187296 m!3301329))

(declare-fun m!3301379 () Bool)

(assert (=> bm!187296 m!3301379))

(assert (=> b!2886855 m!3301329))

(declare-fun m!3301381 () Bool)

(assert (=> b!2886855 m!3301381))

(assert (=> b!2886859 m!3301329))

(assert (=> b!2886859 m!3301381))

(assert (=> b!2886859 m!3301381))

(declare-fun m!3301383 () Bool)

(assert (=> b!2886859 m!3301383))

(assert (=> b!2886859 m!3301329))

(assert (=> b!2886859 m!3301375))

(assert (=> b!2886859 m!3301383))

(assert (=> b!2886859 m!3301375))

(declare-fun m!3301385 () Bool)

(assert (=> b!2886859 m!3301385))

(assert (=> b!2886853 m!3301329))

(assert (=> b!2886853 m!3301381))

(declare-fun m!3301387 () Bool)

(assert (=> b!2886863 m!3301387))

(assert (=> b!2886860 m!3301329))

(assert (=> b!2886860 m!3301375))

(assert (=> b!2886860 m!3301375))

(assert (=> b!2886860 m!3301377))

(assert (=> d!834033 m!3301329))

(assert (=> d!834033 m!3301379))

(assert (=> d!834033 m!3301333))

(assert (=> b!2886634 d!834033))

(declare-fun d!834037 () Bool)

(assert (=> d!834037 (= (get!10431 lt!1020706) (v!34613 lt!1020706))))

(assert (=> b!2886634 d!834037))

(declare-fun b!2886894 () Bool)

(declare-fun e!1825458 () Bool)

(declare-fun tp!925871 () Bool)

(declare-fun tp!925872 () Bool)

(assert (=> b!2886894 (= e!1825458 (and tp!925871 tp!925872))))

(assert (=> b!2886636 (= tp!925845 e!1825458)))

(declare-fun b!2886895 () Bool)

(declare-fun tp!925873 () Bool)

(assert (=> b!2886895 (= e!1825458 tp!925873)))

(declare-fun b!2886893 () Bool)

(assert (=> b!2886893 (= e!1825458 tp_is_empty!15217)))

(declare-fun b!2886896 () Bool)

(declare-fun tp!925874 () Bool)

(declare-fun tp!925870 () Bool)

(assert (=> b!2886896 (= e!1825458 (and tp!925874 tp!925870))))

(assert (= (and b!2886636 ((_ is ElementMatch!8815) (regOne!18143 r!23079))) b!2886893))

(assert (= (and b!2886636 ((_ is Concat!14136) (regOne!18143 r!23079))) b!2886894))

(assert (= (and b!2886636 ((_ is Star!8815) (regOne!18143 r!23079))) b!2886895))

(assert (= (and b!2886636 ((_ is Union!8815) (regOne!18143 r!23079))) b!2886896))

(declare-fun b!2886898 () Bool)

(declare-fun e!1825459 () Bool)

(declare-fun tp!925876 () Bool)

(declare-fun tp!925877 () Bool)

(assert (=> b!2886898 (= e!1825459 (and tp!925876 tp!925877))))

(assert (=> b!2886636 (= tp!925847 e!1825459)))

(declare-fun b!2886899 () Bool)

(declare-fun tp!925878 () Bool)

(assert (=> b!2886899 (= e!1825459 tp!925878)))

(declare-fun b!2886897 () Bool)

(assert (=> b!2886897 (= e!1825459 tp_is_empty!15217)))

(declare-fun b!2886900 () Bool)

(declare-fun tp!925879 () Bool)

(declare-fun tp!925875 () Bool)

(assert (=> b!2886900 (= e!1825459 (and tp!925879 tp!925875))))

(assert (= (and b!2886636 ((_ is ElementMatch!8815) (regTwo!18143 r!23079))) b!2886897))

(assert (= (and b!2886636 ((_ is Concat!14136) (regTwo!18143 r!23079))) b!2886898))

(assert (= (and b!2886636 ((_ is Star!8815) (regTwo!18143 r!23079))) b!2886899))

(assert (= (and b!2886636 ((_ is Union!8815) (regTwo!18143 r!23079))) b!2886900))

(declare-fun b!2886906 () Bool)

(declare-fun e!1825461 () Bool)

(declare-fun tp!925886 () Bool)

(declare-fun tp!925887 () Bool)

(assert (=> b!2886906 (= e!1825461 (and tp!925886 tp!925887))))

(assert (=> b!2886632 (= tp!925848 e!1825461)))

(declare-fun b!2886907 () Bool)

(declare-fun tp!925888 () Bool)

(assert (=> b!2886907 (= e!1825461 tp!925888)))

(declare-fun b!2886905 () Bool)

(assert (=> b!2886905 (= e!1825461 tp_is_empty!15217)))

(declare-fun b!2886908 () Bool)

(declare-fun tp!925889 () Bool)

(declare-fun tp!925885 () Bool)

(assert (=> b!2886908 (= e!1825461 (and tp!925889 tp!925885))))

(assert (= (and b!2886632 ((_ is ElementMatch!8815) (regOne!18142 r!23079))) b!2886905))

(assert (= (and b!2886632 ((_ is Concat!14136) (regOne!18142 r!23079))) b!2886906))

(assert (= (and b!2886632 ((_ is Star!8815) (regOne!18142 r!23079))) b!2886907))

(assert (= (and b!2886632 ((_ is Union!8815) (regOne!18142 r!23079))) b!2886908))

(declare-fun b!2886914 () Bool)

(declare-fun e!1825463 () Bool)

(declare-fun tp!925896 () Bool)

(declare-fun tp!925897 () Bool)

(assert (=> b!2886914 (= e!1825463 (and tp!925896 tp!925897))))

(assert (=> b!2886632 (= tp!925849 e!1825463)))

(declare-fun b!2886915 () Bool)

(declare-fun tp!925898 () Bool)

(assert (=> b!2886915 (= e!1825463 tp!925898)))

(declare-fun b!2886913 () Bool)

(assert (=> b!2886913 (= e!1825463 tp_is_empty!15217)))

(declare-fun b!2886916 () Bool)

(declare-fun tp!925899 () Bool)

(declare-fun tp!925895 () Bool)

(assert (=> b!2886916 (= e!1825463 (and tp!925899 tp!925895))))

(assert (= (and b!2886632 ((_ is ElementMatch!8815) (regTwo!18142 r!23079))) b!2886913))

(assert (= (and b!2886632 ((_ is Concat!14136) (regTwo!18142 r!23079))) b!2886914))

(assert (= (and b!2886632 ((_ is Star!8815) (regTwo!18142 r!23079))) b!2886915))

(assert (= (and b!2886632 ((_ is Union!8815) (regTwo!18142 r!23079))) b!2886916))

(declare-fun b!2886921 () Bool)

(declare-fun e!1825464 () Bool)

(declare-fun tp!925904 () Bool)

(declare-fun tp!925906 () Bool)

(assert (=> b!2886921 (= e!1825464 (and tp!925904 tp!925906))))

(assert (=> b!2886633 (= tp!925846 e!1825464)))

(declare-fun b!2886923 () Bool)

(declare-fun tp!925908 () Bool)

(assert (=> b!2886923 (= e!1825464 tp!925908)))

(declare-fun b!2886919 () Bool)

(assert (=> b!2886919 (= e!1825464 tp_is_empty!15217)))

(declare-fun b!2886924 () Bool)

(declare-fun tp!925909 () Bool)

(declare-fun tp!925902 () Bool)

(assert (=> b!2886924 (= e!1825464 (and tp!925909 tp!925902))))

(assert (= (and b!2886633 ((_ is ElementMatch!8815) (reg!9144 r!23079))) b!2886919))

(assert (= (and b!2886633 ((_ is Concat!14136) (reg!9144 r!23079))) b!2886921))

(assert (= (and b!2886633 ((_ is Star!8815) (reg!9144 r!23079))) b!2886923))

(assert (= (and b!2886633 ((_ is Union!8815) (reg!9144 r!23079))) b!2886924))

(check-sat (not b!2886853) (not b!2886894) (not b!2886862) (not b!2886900) (not b!2886896) (not b!2886916) (not b!2886669) (not b!2886908) (not d!834033) (not bm!187281) (not b!2886898) (not bm!187280) (not b!2886921) tp_is_empty!15217 (not d!834023) (not bm!187272) (not b!2886906) (not b!2886895) (not b!2886859) (not bm!187270) (not b!2886767) (not b!2886860) (not b!2886914) (not b!2886924) (not b!2886907) (not bm!187296) (not b!2886863) (not b!2886915) (not b!2886855) (not b!2886923) (not b!2886899))
(check-sat)
(get-model)

(declare-fun d!834039 () Bool)

(assert (=> d!834039 (= (isEmpty!18787 (get!10431 lt!1020706)) ((_ is Nil!34492) (get!10431 lt!1020706)))))

(assert (=> bm!187296 d!834039))

(declare-fun d!834041 () Bool)

(assert (=> d!834041 (= (isEmpty!18785 lt!1020706) (not ((_ is Some!6487) lt!1020706)))))

(assert (=> d!834023 d!834041))

(declare-fun call!187306 () Bool)

(declare-fun c!469240 () Bool)

(declare-fun c!469239 () Bool)

(declare-fun bm!187300 () Bool)

(assert (=> bm!187300 (= call!187306 (validRegex!3588 (ite c!469239 (reg!9144 (ite c!469166 (regOne!18143 r!23079) (regOne!18142 r!23079))) (ite c!469240 (regTwo!18143 (ite c!469166 (regOne!18143 r!23079) (regOne!18142 r!23079))) (regTwo!18142 (ite c!469166 (regOne!18143 r!23079) (regOne!18142 r!23079)))))))))

(declare-fun b!2886933 () Bool)

(declare-fun e!1825469 () Bool)

(declare-fun call!187307 () Bool)

(assert (=> b!2886933 (= e!1825469 call!187307)))

(declare-fun b!2886934 () Bool)

(declare-fun e!1825472 () Bool)

(declare-fun e!1825473 () Bool)

(assert (=> b!2886934 (= e!1825472 e!1825473)))

(assert (=> b!2886934 (= c!469239 ((_ is Star!8815) (ite c!469166 (regOne!18143 r!23079) (regOne!18142 r!23079))))))

(declare-fun b!2886935 () Bool)

(declare-fun e!1825468 () Bool)

(assert (=> b!2886935 (= e!1825468 e!1825469)))

(declare-fun res!1195714 () Bool)

(assert (=> b!2886935 (=> (not res!1195714) (not e!1825469))))

(declare-fun call!187305 () Bool)

(assert (=> b!2886935 (= res!1195714 call!187305)))

(declare-fun b!2886936 () Bool)

(declare-fun res!1195712 () Bool)

(declare-fun e!1825474 () Bool)

(assert (=> b!2886936 (=> (not res!1195712) (not e!1825474))))

(assert (=> b!2886936 (= res!1195712 call!187305)))

(declare-fun e!1825470 () Bool)

(assert (=> b!2886936 (= e!1825470 e!1825474)))

(declare-fun b!2886937 () Bool)

(declare-fun res!1195713 () Bool)

(assert (=> b!2886937 (=> res!1195713 e!1825468)))

(assert (=> b!2886937 (= res!1195713 (not ((_ is Concat!14136) (ite c!469166 (regOne!18143 r!23079) (regOne!18142 r!23079)))))))

(assert (=> b!2886937 (= e!1825470 e!1825468)))

(declare-fun b!2886938 () Bool)

(declare-fun e!1825471 () Bool)

(assert (=> b!2886938 (= e!1825471 call!187306)))

(declare-fun b!2886939 () Bool)

(assert (=> b!2886939 (= e!1825473 e!1825470)))

(assert (=> b!2886939 (= c!469240 ((_ is Union!8815) (ite c!469166 (regOne!18143 r!23079) (regOne!18142 r!23079))))))

(declare-fun b!2886940 () Bool)

(assert (=> b!2886940 (= e!1825474 call!187307)))

(declare-fun bm!187302 () Bool)

(assert (=> bm!187302 (= call!187305 (validRegex!3588 (ite c!469240 (regOne!18143 (ite c!469166 (regOne!18143 r!23079) (regOne!18142 r!23079))) (regOne!18142 (ite c!469166 (regOne!18143 r!23079) (regOne!18142 r!23079))))))))

(declare-fun b!2886941 () Bool)

(assert (=> b!2886941 (= e!1825473 e!1825471)))

(declare-fun res!1195710 () Bool)

(assert (=> b!2886941 (= res!1195710 (not (nullable!2717 (reg!9144 (ite c!469166 (regOne!18143 r!23079) (regOne!18142 r!23079))))))))

(assert (=> b!2886941 (=> (not res!1195710) (not e!1825471))))

(declare-fun bm!187301 () Bool)

(assert (=> bm!187301 (= call!187307 call!187306)))

(declare-fun d!834043 () Bool)

(declare-fun res!1195711 () Bool)

(assert (=> d!834043 (=> res!1195711 e!1825472)))

(assert (=> d!834043 (= res!1195711 ((_ is ElementMatch!8815) (ite c!469166 (regOne!18143 r!23079) (regOne!18142 r!23079))))))

(assert (=> d!834043 (= (validRegex!3588 (ite c!469166 (regOne!18143 r!23079) (regOne!18142 r!23079))) e!1825472)))

(assert (= (and d!834043 (not res!1195711)) b!2886934))

(assert (= (and b!2886934 c!469239) b!2886941))

(assert (= (and b!2886934 (not c!469239)) b!2886939))

(assert (= (and b!2886941 res!1195710) b!2886938))

(assert (= (and b!2886939 c!469240) b!2886936))

(assert (= (and b!2886939 (not c!469240)) b!2886937))

(assert (= (and b!2886936 res!1195712) b!2886940))

(assert (= (and b!2886937 (not res!1195713)) b!2886935))

(assert (= (and b!2886935 res!1195714) b!2886933))

(assert (= (or b!2886940 b!2886933) bm!187301))

(assert (= (or b!2886936 b!2886935) bm!187302))

(assert (= (or b!2886938 bm!187301) bm!187300))

(declare-fun m!3301395 () Bool)

(assert (=> bm!187300 m!3301395))

(declare-fun m!3301397 () Bool)

(assert (=> bm!187302 m!3301397))

(declare-fun m!3301399 () Bool)

(assert (=> b!2886941 m!3301399))

(assert (=> bm!187272 d!834043))

(declare-fun d!834045 () Bool)

(declare-fun nullableFct!832 (Regex!8815) Bool)

(assert (=> d!834045 (= (nullable!2717 (reg!9144 r!23079)) (nullableFct!832 (reg!9144 r!23079)))))

(declare-fun bs!523833 () Bool)

(assert (= bs!523833 d!834045))

(declare-fun m!3301401 () Bool)

(assert (=> bs!523833 m!3301401))

(assert (=> b!2886669 d!834045))

(assert (=> d!834033 d!834039))

(assert (=> d!834033 d!834019))

(declare-fun d!834047 () Bool)

(assert (=> d!834047 (= (isEmpty!18787 (tail!4602 (get!10431 lt!1020706))) ((_ is Nil!34492) (tail!4602 (get!10431 lt!1020706))))))

(assert (=> b!2886862 d!834047))

(declare-fun d!834049 () Bool)

(assert (=> d!834049 (= (tail!4602 (get!10431 lt!1020706)) (t!233659 (get!10431 lt!1020706)))))

(assert (=> b!2886862 d!834049))

(declare-fun b!2886942 () Bool)

(declare-fun res!1195722 () Bool)

(declare-fun e!1825476 () Bool)

(assert (=> b!2886942 (=> res!1195722 e!1825476)))

(assert (=> b!2886942 (= res!1195722 (not ((_ is ElementMatch!8815) (derivativeStep!2348 r!23079 (head!6377 (get!10431 lt!1020706))))))))

(declare-fun e!1825478 () Bool)

(assert (=> b!2886942 (= e!1825478 e!1825476)))

(declare-fun d!834051 () Bool)

(declare-fun e!1825477 () Bool)

(assert (=> d!834051 e!1825477))

(declare-fun c!469242 () Bool)

(assert (=> d!834051 (= c!469242 ((_ is EmptyExpr!8815) (derivativeStep!2348 r!23079 (head!6377 (get!10431 lt!1020706)))))))

(declare-fun lt!1020731 () Bool)

(declare-fun e!1825481 () Bool)

(assert (=> d!834051 (= lt!1020731 e!1825481)))

(declare-fun c!469241 () Bool)

(assert (=> d!834051 (= c!469241 (isEmpty!18787 (tail!4602 (get!10431 lt!1020706))))))

(assert (=> d!834051 (validRegex!3588 (derivativeStep!2348 r!23079 (head!6377 (get!10431 lt!1020706))))))

(assert (=> d!834051 (= (matchR!3791 (derivativeStep!2348 r!23079 (head!6377 (get!10431 lt!1020706))) (tail!4602 (get!10431 lt!1020706))) lt!1020731)))

(declare-fun b!2886943 () Bool)

(declare-fun res!1195717 () Bool)

(declare-fun e!1825480 () Bool)

(assert (=> b!2886943 (=> (not res!1195717) (not e!1825480))))

(declare-fun call!187308 () Bool)

(assert (=> b!2886943 (= res!1195717 (not call!187308))))

(declare-fun b!2886944 () Bool)

(assert (=> b!2886944 (= e!1825477 (= lt!1020731 call!187308))))

(declare-fun b!2886945 () Bool)

(assert (=> b!2886945 (= e!1825480 (= (head!6377 (tail!4602 (get!10431 lt!1020706))) (c!469160 (derivativeStep!2348 r!23079 (head!6377 (get!10431 lt!1020706))))))))

(declare-fun b!2886946 () Bool)

(assert (=> b!2886946 (= e!1825477 e!1825478)))

(declare-fun c!469243 () Bool)

(assert (=> b!2886946 (= c!469243 ((_ is EmptyLang!8815) (derivativeStep!2348 r!23079 (head!6377 (get!10431 lt!1020706)))))))

(declare-fun b!2886947 () Bool)

(declare-fun e!1825475 () Bool)

(assert (=> b!2886947 (= e!1825475 (not (= (head!6377 (tail!4602 (get!10431 lt!1020706))) (c!469160 (derivativeStep!2348 r!23079 (head!6377 (get!10431 lt!1020706)))))))))

(declare-fun b!2886948 () Bool)

(declare-fun e!1825479 () Bool)

(assert (=> b!2886948 (= e!1825476 e!1825479)))

(declare-fun res!1195715 () Bool)

(assert (=> b!2886948 (=> (not res!1195715) (not e!1825479))))

(assert (=> b!2886948 (= res!1195715 (not lt!1020731))))

(declare-fun b!2886949 () Bool)

(declare-fun res!1195719 () Bool)

(assert (=> b!2886949 (=> res!1195719 e!1825476)))

(assert (=> b!2886949 (= res!1195719 e!1825480)))

(declare-fun res!1195720 () Bool)

(assert (=> b!2886949 (=> (not res!1195720) (not e!1825480))))

(assert (=> b!2886949 (= res!1195720 lt!1020731)))

(declare-fun b!2886950 () Bool)

(assert (=> b!2886950 (= e!1825478 (not lt!1020731))))

(declare-fun b!2886951 () Bool)

(assert (=> b!2886951 (= e!1825481 (matchR!3791 (derivativeStep!2348 (derivativeStep!2348 r!23079 (head!6377 (get!10431 lt!1020706))) (head!6377 (tail!4602 (get!10431 lt!1020706)))) (tail!4602 (tail!4602 (get!10431 lt!1020706)))))))

(declare-fun b!2886952 () Bool)

(declare-fun res!1195718 () Bool)

(assert (=> b!2886952 (=> (not res!1195718) (not e!1825480))))

(assert (=> b!2886952 (= res!1195718 (isEmpty!18787 (tail!4602 (tail!4602 (get!10431 lt!1020706)))))))

(declare-fun bm!187303 () Bool)

(assert (=> bm!187303 (= call!187308 (isEmpty!18787 (tail!4602 (get!10431 lt!1020706))))))

(declare-fun b!2886953 () Bool)

(assert (=> b!2886953 (= e!1825479 e!1825475)))

(declare-fun res!1195716 () Bool)

(assert (=> b!2886953 (=> res!1195716 e!1825475)))

(assert (=> b!2886953 (= res!1195716 call!187308)))

(declare-fun b!2886954 () Bool)

(declare-fun res!1195721 () Bool)

(assert (=> b!2886954 (=> res!1195721 e!1825475)))

(assert (=> b!2886954 (= res!1195721 (not (isEmpty!18787 (tail!4602 (tail!4602 (get!10431 lt!1020706))))))))

(declare-fun b!2886955 () Bool)

(assert (=> b!2886955 (= e!1825481 (nullable!2717 (derivativeStep!2348 r!23079 (head!6377 (get!10431 lt!1020706)))))))

(assert (= (and d!834051 c!469241) b!2886955))

(assert (= (and d!834051 (not c!469241)) b!2886951))

(assert (= (and d!834051 c!469242) b!2886944))

(assert (= (and d!834051 (not c!469242)) b!2886946))

(assert (= (and b!2886946 c!469243) b!2886950))

(assert (= (and b!2886946 (not c!469243)) b!2886942))

(assert (= (and b!2886942 (not res!1195722)) b!2886949))

(assert (= (and b!2886949 res!1195720) b!2886943))

(assert (= (and b!2886943 res!1195717) b!2886952))

(assert (= (and b!2886952 res!1195718) b!2886945))

(assert (= (and b!2886949 (not res!1195719)) b!2886948))

(assert (= (and b!2886948 res!1195715) b!2886953))

(assert (= (and b!2886953 (not res!1195716)) b!2886954))

(assert (= (and b!2886954 (not res!1195721)) b!2886947))

(assert (= (or b!2886944 b!2886943 b!2886953) bm!187303))

(assert (=> b!2886954 m!3301375))

(declare-fun m!3301403 () Bool)

(assert (=> b!2886954 m!3301403))

(assert (=> b!2886954 m!3301403))

(declare-fun m!3301405 () Bool)

(assert (=> b!2886954 m!3301405))

(assert (=> bm!187303 m!3301375))

(assert (=> bm!187303 m!3301377))

(assert (=> b!2886947 m!3301375))

(declare-fun m!3301407 () Bool)

(assert (=> b!2886947 m!3301407))

(assert (=> b!2886951 m!3301375))

(assert (=> b!2886951 m!3301407))

(assert (=> b!2886951 m!3301383))

(assert (=> b!2886951 m!3301407))

(declare-fun m!3301409 () Bool)

(assert (=> b!2886951 m!3301409))

(assert (=> b!2886951 m!3301375))

(assert (=> b!2886951 m!3301403))

(assert (=> b!2886951 m!3301409))

(assert (=> b!2886951 m!3301403))

(declare-fun m!3301411 () Bool)

(assert (=> b!2886951 m!3301411))

(assert (=> b!2886945 m!3301375))

(assert (=> b!2886945 m!3301407))

(assert (=> b!2886955 m!3301383))

(declare-fun m!3301413 () Bool)

(assert (=> b!2886955 m!3301413))

(assert (=> b!2886952 m!3301375))

(assert (=> b!2886952 m!3301403))

(assert (=> b!2886952 m!3301403))

(assert (=> b!2886952 m!3301405))

(assert (=> d!834051 m!3301375))

(assert (=> d!834051 m!3301377))

(assert (=> d!834051 m!3301383))

(declare-fun m!3301415 () Bool)

(assert (=> d!834051 m!3301415))

(assert (=> b!2886859 d!834051))

(declare-fun b!2886976 () Bool)

(declare-fun e!1825496 () Regex!8815)

(assert (=> b!2886976 (= e!1825496 (ite (= (head!6377 (get!10431 lt!1020706)) (c!469160 r!23079)) EmptyExpr!8815 EmptyLang!8815))))

(declare-fun c!469257 () Bool)

(declare-fun bm!187312 () Bool)

(declare-fun call!187319 () Regex!8815)

(assert (=> bm!187312 (= call!187319 (derivativeStep!2348 (ite c!469257 (regTwo!18143 r!23079) (regTwo!18142 r!23079)) (head!6377 (get!10431 lt!1020706))))))

(declare-fun b!2886977 () Bool)

(declare-fun e!1825494 () Regex!8815)

(assert (=> b!2886977 (= e!1825494 EmptyLang!8815)))

(declare-fun b!2886978 () Bool)

(declare-fun e!1825492 () Regex!8815)

(declare-fun e!1825493 () Regex!8815)

(assert (=> b!2886978 (= e!1825492 e!1825493)))

(declare-fun c!469254 () Bool)

(assert (=> b!2886978 (= c!469254 ((_ is Star!8815) r!23079))))

(declare-fun b!2886979 () Bool)

(declare-fun call!187320 () Regex!8815)

(assert (=> b!2886979 (= e!1825492 (Union!8815 call!187320 call!187319))))

(declare-fun d!834053 () Bool)

(declare-fun lt!1020734 () Regex!8815)

(assert (=> d!834053 (validRegex!3588 lt!1020734)))

(assert (=> d!834053 (= lt!1020734 e!1825494)))

(declare-fun c!469255 () Bool)

(assert (=> d!834053 (= c!469255 (or ((_ is EmptyExpr!8815) r!23079) ((_ is EmptyLang!8815) r!23079)))))

(assert (=> d!834053 (validRegex!3588 r!23079)))

(assert (=> d!834053 (= (derivativeStep!2348 r!23079 (head!6377 (get!10431 lt!1020706))) lt!1020734)))

(declare-fun bm!187313 () Bool)

(declare-fun call!187318 () Regex!8815)

(assert (=> bm!187313 (= call!187318 call!187320)))

(declare-fun b!2886980 () Bool)

(assert (=> b!2886980 (= e!1825493 (Concat!14136 call!187318 r!23079))))

(declare-fun call!187317 () Regex!8815)

(declare-fun b!2886981 () Bool)

(declare-fun e!1825495 () Regex!8815)

(assert (=> b!2886981 (= e!1825495 (Union!8815 (Concat!14136 call!187317 (regTwo!18142 r!23079)) call!187319))))

(declare-fun bm!187314 () Bool)

(assert (=> bm!187314 (= call!187317 call!187318)))

(declare-fun b!2886982 () Bool)

(assert (=> b!2886982 (= c!469257 ((_ is Union!8815) r!23079))))

(assert (=> b!2886982 (= e!1825496 e!1825492)))

(declare-fun b!2886983 () Bool)

(assert (=> b!2886983 (= e!1825494 e!1825496)))

(declare-fun c!469256 () Bool)

(assert (=> b!2886983 (= c!469256 ((_ is ElementMatch!8815) r!23079))))

(declare-fun b!2886984 () Bool)

(assert (=> b!2886984 (= e!1825495 (Union!8815 (Concat!14136 call!187317 (regTwo!18142 r!23079)) EmptyLang!8815))))

(declare-fun b!2886985 () Bool)

(declare-fun c!469258 () Bool)

(assert (=> b!2886985 (= c!469258 (nullable!2717 (regOne!18142 r!23079)))))

(assert (=> b!2886985 (= e!1825493 e!1825495)))

(declare-fun bm!187315 () Bool)

(assert (=> bm!187315 (= call!187320 (derivativeStep!2348 (ite c!469257 (regOne!18143 r!23079) (ite c!469254 (reg!9144 r!23079) (regOne!18142 r!23079))) (head!6377 (get!10431 lt!1020706))))))

(assert (= (and d!834053 c!469255) b!2886977))

(assert (= (and d!834053 (not c!469255)) b!2886983))

(assert (= (and b!2886983 c!469256) b!2886976))

(assert (= (and b!2886983 (not c!469256)) b!2886982))

(assert (= (and b!2886982 c!469257) b!2886979))

(assert (= (and b!2886982 (not c!469257)) b!2886978))

(assert (= (and b!2886978 c!469254) b!2886980))

(assert (= (and b!2886978 (not c!469254)) b!2886985))

(assert (= (and b!2886985 c!469258) b!2886981))

(assert (= (and b!2886985 (not c!469258)) b!2886984))

(assert (= (or b!2886981 b!2886984) bm!187314))

(assert (= (or b!2886980 bm!187314) bm!187313))

(assert (= (or b!2886979 bm!187313) bm!187315))

(assert (= (or b!2886979 b!2886981) bm!187312))

(assert (=> bm!187312 m!3301381))

(declare-fun m!3301417 () Bool)

(assert (=> bm!187312 m!3301417))

(declare-fun m!3301419 () Bool)

(assert (=> d!834053 m!3301419))

(assert (=> d!834053 m!3301333))

(declare-fun m!3301421 () Bool)

(assert (=> b!2886985 m!3301421))

(assert (=> bm!187315 m!3301381))

(declare-fun m!3301423 () Bool)

(assert (=> bm!187315 m!3301423))

(assert (=> b!2886859 d!834053))

(declare-fun d!834055 () Bool)

(assert (=> d!834055 (= (head!6377 (get!10431 lt!1020706)) (h!39912 (get!10431 lt!1020706)))))

(assert (=> b!2886859 d!834055))

(assert (=> b!2886859 d!834049))

(declare-fun c!469259 () Bool)

(declare-fun c!469260 () Bool)

(declare-fun call!187322 () Bool)

(declare-fun bm!187316 () Bool)

(assert (=> bm!187316 (= call!187322 (validRegex!3588 (ite c!469259 (reg!9144 (ite c!469165 (reg!9144 r!23079) (ite c!469166 (regTwo!18143 r!23079) (regTwo!18142 r!23079)))) (ite c!469260 (regTwo!18143 (ite c!469165 (reg!9144 r!23079) (ite c!469166 (regTwo!18143 r!23079) (regTwo!18142 r!23079)))) (regTwo!18142 (ite c!469165 (reg!9144 r!23079) (ite c!469166 (regTwo!18143 r!23079) (regTwo!18142 r!23079))))))))))

(declare-fun b!2886986 () Bool)

(declare-fun e!1825498 () Bool)

(declare-fun call!187323 () Bool)

(assert (=> b!2886986 (= e!1825498 call!187323)))

(declare-fun b!2886987 () Bool)

(declare-fun e!1825501 () Bool)

(declare-fun e!1825502 () Bool)

(assert (=> b!2886987 (= e!1825501 e!1825502)))

(assert (=> b!2886987 (= c!469259 ((_ is Star!8815) (ite c!469165 (reg!9144 r!23079) (ite c!469166 (regTwo!18143 r!23079) (regTwo!18142 r!23079)))))))

(declare-fun b!2886988 () Bool)

(declare-fun e!1825497 () Bool)

(assert (=> b!2886988 (= e!1825497 e!1825498)))

(declare-fun res!1195727 () Bool)

(assert (=> b!2886988 (=> (not res!1195727) (not e!1825498))))

(declare-fun call!187321 () Bool)

(assert (=> b!2886988 (= res!1195727 call!187321)))

(declare-fun b!2886989 () Bool)

(declare-fun res!1195725 () Bool)

(declare-fun e!1825503 () Bool)

(assert (=> b!2886989 (=> (not res!1195725) (not e!1825503))))

(assert (=> b!2886989 (= res!1195725 call!187321)))

(declare-fun e!1825499 () Bool)

(assert (=> b!2886989 (= e!1825499 e!1825503)))

(declare-fun b!2886990 () Bool)

(declare-fun res!1195726 () Bool)

(assert (=> b!2886990 (=> res!1195726 e!1825497)))

(assert (=> b!2886990 (= res!1195726 (not ((_ is Concat!14136) (ite c!469165 (reg!9144 r!23079) (ite c!469166 (regTwo!18143 r!23079) (regTwo!18142 r!23079))))))))

(assert (=> b!2886990 (= e!1825499 e!1825497)))

(declare-fun b!2886991 () Bool)

(declare-fun e!1825500 () Bool)

(assert (=> b!2886991 (= e!1825500 call!187322)))

(declare-fun b!2886992 () Bool)

(assert (=> b!2886992 (= e!1825502 e!1825499)))

(assert (=> b!2886992 (= c!469260 ((_ is Union!8815) (ite c!469165 (reg!9144 r!23079) (ite c!469166 (regTwo!18143 r!23079) (regTwo!18142 r!23079)))))))

(declare-fun b!2886993 () Bool)

(assert (=> b!2886993 (= e!1825503 call!187323)))

(declare-fun bm!187318 () Bool)

(assert (=> bm!187318 (= call!187321 (validRegex!3588 (ite c!469260 (regOne!18143 (ite c!469165 (reg!9144 r!23079) (ite c!469166 (regTwo!18143 r!23079) (regTwo!18142 r!23079)))) (regOne!18142 (ite c!469165 (reg!9144 r!23079) (ite c!469166 (regTwo!18143 r!23079) (regTwo!18142 r!23079)))))))))

(declare-fun b!2886994 () Bool)

(assert (=> b!2886994 (= e!1825502 e!1825500)))

(declare-fun res!1195723 () Bool)

(assert (=> b!2886994 (= res!1195723 (not (nullable!2717 (reg!9144 (ite c!469165 (reg!9144 r!23079) (ite c!469166 (regTwo!18143 r!23079) (regTwo!18142 r!23079)))))))))

(assert (=> b!2886994 (=> (not res!1195723) (not e!1825500))))

(declare-fun bm!187317 () Bool)

(assert (=> bm!187317 (= call!187323 call!187322)))

(declare-fun d!834057 () Bool)

(declare-fun res!1195724 () Bool)

(assert (=> d!834057 (=> res!1195724 e!1825501)))

(assert (=> d!834057 (= res!1195724 ((_ is ElementMatch!8815) (ite c!469165 (reg!9144 r!23079) (ite c!469166 (regTwo!18143 r!23079) (regTwo!18142 r!23079)))))))

(assert (=> d!834057 (= (validRegex!3588 (ite c!469165 (reg!9144 r!23079) (ite c!469166 (regTwo!18143 r!23079) (regTwo!18142 r!23079)))) e!1825501)))

(assert (= (and d!834057 (not res!1195724)) b!2886987))

(assert (= (and b!2886987 c!469259) b!2886994))

(assert (= (and b!2886987 (not c!469259)) b!2886992))

(assert (= (and b!2886994 res!1195723) b!2886991))

(assert (= (and b!2886992 c!469260) b!2886989))

(assert (= (and b!2886992 (not c!469260)) b!2886990))

(assert (= (and b!2886989 res!1195725) b!2886993))

(assert (= (and b!2886990 (not res!1195726)) b!2886988))

(assert (= (and b!2886988 res!1195727) b!2886986))

(assert (= (or b!2886993 b!2886986) bm!187317))

(assert (= (or b!2886989 b!2886988) bm!187318))

(assert (= (or b!2886991 bm!187317) bm!187316))

(declare-fun m!3301425 () Bool)

(assert (=> bm!187316 m!3301425))

(declare-fun m!3301427 () Bool)

(assert (=> bm!187318 m!3301427))

(declare-fun m!3301429 () Bool)

(assert (=> b!2886994 m!3301429))

(assert (=> bm!187270 d!834057))

(assert (=> b!2886860 d!834047))

(assert (=> b!2886860 d!834049))

(declare-fun b!2886995 () Bool)

(declare-fun e!1825505 () Option!6488)

(declare-fun lt!1020736 () Option!6488)

(assert (=> b!2886995 (= e!1825505 lt!1020736)))

(declare-fun b!2886996 () Bool)

(declare-fun e!1825508 () Option!6488)

(assert (=> b!2886996 (= e!1825508 None!6487)))

(declare-fun d!834059 () Bool)

(declare-fun c!469266 () Bool)

(assert (=> d!834059 (= c!469266 ((_ is EmptyExpr!8815) (ite c!469208 (regOne!18143 r!23079) (regTwo!18142 r!23079))))))

(declare-fun e!1825507 () Option!6488)

(assert (=> d!834059 (= (getLanguageWitness!522 (ite c!469208 (regOne!18143 r!23079) (regTwo!18142 r!23079))) e!1825507)))

(declare-fun b!2886997 () Bool)

(declare-fun call!187324 () Option!6488)

(assert (=> b!2886997 (= e!1825505 call!187324)))

(declare-fun b!2886998 () Bool)

(declare-fun e!1825511 () Option!6488)

(assert (=> b!2886998 (= e!1825507 e!1825511)))

(declare-fun c!469261 () Bool)

(assert (=> b!2886998 (= c!469261 ((_ is EmptyLang!8815) (ite c!469208 (regOne!18143 r!23079) (regTwo!18142 r!23079))))))

(declare-fun b!2886999 () Bool)

(declare-fun e!1825506 () Option!6488)

(assert (=> b!2886999 (= e!1825506 None!6487)))

(declare-fun b!2887000 () Bool)

(assert (=> b!2887000 (= e!1825507 (Some!6487 Nil!34492))))

(declare-fun b!2887001 () Bool)

(declare-fun e!1825504 () Option!6488)

(assert (=> b!2887001 (= e!1825504 e!1825505)))

(declare-fun call!187325 () Option!6488)

(assert (=> b!2887001 (= lt!1020736 call!187325)))

(declare-fun c!469265 () Bool)

(assert (=> b!2887001 (= c!469265 ((_ is Some!6487) lt!1020736))))

(declare-fun bm!187319 () Bool)

(declare-fun c!469267 () Bool)

(assert (=> bm!187319 (= call!187325 (getLanguageWitness!522 (ite c!469267 (regOne!18143 (ite c!469208 (regOne!18143 r!23079) (regTwo!18142 r!23079))) (regTwo!18142 (ite c!469208 (regOne!18143 r!23079) (regTwo!18142 r!23079))))))))

(declare-fun b!2887002 () Bool)

(declare-fun lt!1020737 () Option!6488)

(declare-fun lt!1020735 () Option!6488)

(assert (=> b!2887002 (= e!1825506 (Some!6487 (++!8214 (v!34613 lt!1020737) (v!34613 lt!1020735))))))

(declare-fun b!2887003 () Bool)

(assert (=> b!2887003 (= e!1825511 None!6487)))

(declare-fun b!2887004 () Bool)

(declare-fun e!1825509 () Option!6488)

(assert (=> b!2887004 (= e!1825509 (Some!6487 (Cons!34492 (c!469160 (ite c!469208 (regOne!18143 r!23079) (regTwo!18142 r!23079))) Nil!34492)))))

(declare-fun b!2887005 () Bool)

(declare-fun c!469262 () Bool)

(assert (=> b!2887005 (= c!469262 ((_ is ElementMatch!8815) (ite c!469208 (regOne!18143 r!23079) (regTwo!18142 r!23079))))))

(assert (=> b!2887005 (= e!1825511 e!1825509)))

(declare-fun b!2887006 () Bool)

(assert (=> b!2887006 (= e!1825504 e!1825508)))

(assert (=> b!2887006 (= lt!1020737 call!187324)))

(declare-fun c!469263 () Bool)

(assert (=> b!2887006 (= c!469263 ((_ is Some!6487) lt!1020737))))

(declare-fun b!2887007 () Bool)

(assert (=> b!2887007 (= c!469267 ((_ is Union!8815) (ite c!469208 (regOne!18143 r!23079) (regTwo!18142 r!23079))))))

(declare-fun e!1825510 () Option!6488)

(assert (=> b!2887007 (= e!1825510 e!1825504)))

(declare-fun bm!187320 () Bool)

(assert (=> bm!187320 (= call!187324 (getLanguageWitness!522 (ite c!469267 (regTwo!18143 (ite c!469208 (regOne!18143 r!23079) (regTwo!18142 r!23079))) (regOne!18142 (ite c!469208 (regOne!18143 r!23079) (regTwo!18142 r!23079))))))))

(declare-fun b!2887008 () Bool)

(declare-fun c!469268 () Bool)

(assert (=> b!2887008 (= c!469268 ((_ is Some!6487) lt!1020735))))

(assert (=> b!2887008 (= lt!1020735 call!187325)))

(assert (=> b!2887008 (= e!1825508 e!1825506)))

(declare-fun b!2887009 () Bool)

(assert (=> b!2887009 (= e!1825509 e!1825510)))

(declare-fun c!469264 () Bool)

(assert (=> b!2887009 (= c!469264 ((_ is Star!8815) (ite c!469208 (regOne!18143 r!23079) (regTwo!18142 r!23079))))))

(declare-fun b!2887010 () Bool)

(assert (=> b!2887010 (= e!1825510 (Some!6487 Nil!34492))))

(assert (= (and d!834059 c!469266) b!2887000))

(assert (= (and d!834059 (not c!469266)) b!2886998))

(assert (= (and b!2886998 c!469261) b!2887003))

(assert (= (and b!2886998 (not c!469261)) b!2887005))

(assert (= (and b!2887005 c!469262) b!2887004))

(assert (= (and b!2887005 (not c!469262)) b!2887009))

(assert (= (and b!2887009 c!469264) b!2887010))

(assert (= (and b!2887009 (not c!469264)) b!2887007))

(assert (= (and b!2887007 c!469267) b!2887001))

(assert (= (and b!2887007 (not c!469267)) b!2887006))

(assert (= (and b!2887001 c!469265) b!2886995))

(assert (= (and b!2887001 (not c!469265)) b!2886997))

(assert (= (and b!2887006 c!469263) b!2887008))

(assert (= (and b!2887006 (not c!469263)) b!2886996))

(assert (= (and b!2887008 c!469268) b!2887002))

(assert (= (and b!2887008 (not c!469268)) b!2886999))

(assert (= (or b!2886997 b!2887006) bm!187320))

(assert (= (or b!2887001 b!2887008) bm!187319))

(declare-fun m!3301431 () Bool)

(assert (=> bm!187319 m!3301431))

(declare-fun m!3301433 () Bool)

(assert (=> b!2887002 m!3301433))

(declare-fun m!3301435 () Bool)

(assert (=> bm!187320 m!3301435))

(assert (=> bm!187280 d!834059))

(declare-fun d!834061 () Bool)

(declare-fun e!1825517 () Bool)

(assert (=> d!834061 e!1825517))

(declare-fun res!1195733 () Bool)

(assert (=> d!834061 (=> (not res!1195733) (not e!1825517))))

(declare-fun lt!1020740 () List!34616)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4723 (List!34616) (InoxSet C!17812))

(assert (=> d!834061 (= res!1195733 (= (content!4723 lt!1020740) ((_ map or) (content!4723 (v!34613 lt!1020720)) (content!4723 (v!34613 lt!1020716)))))))

(declare-fun e!1825516 () List!34616)

(assert (=> d!834061 (= lt!1020740 e!1825516)))

(declare-fun c!469271 () Bool)

(assert (=> d!834061 (= c!469271 ((_ is Nil!34492) (v!34613 lt!1020720)))))

(assert (=> d!834061 (= (++!8214 (v!34613 lt!1020720) (v!34613 lt!1020716)) lt!1020740)))

(declare-fun b!2887022 () Bool)

(assert (=> b!2887022 (= e!1825517 (or (not (= (v!34613 lt!1020716) Nil!34492)) (= lt!1020740 (v!34613 lt!1020720))))))

(declare-fun b!2887020 () Bool)

(assert (=> b!2887020 (= e!1825516 (Cons!34492 (h!39912 (v!34613 lt!1020720)) (++!8214 (t!233659 (v!34613 lt!1020720)) (v!34613 lt!1020716))))))

(declare-fun b!2887019 () Bool)

(assert (=> b!2887019 (= e!1825516 (v!34613 lt!1020716))))

(declare-fun b!2887021 () Bool)

(declare-fun res!1195732 () Bool)

(assert (=> b!2887021 (=> (not res!1195732) (not e!1825517))))

(declare-fun size!26342 (List!34616) Int)

(assert (=> b!2887021 (= res!1195732 (= (size!26342 lt!1020740) (+ (size!26342 (v!34613 lt!1020720)) (size!26342 (v!34613 lt!1020716)))))))

(assert (= (and d!834061 c!469271) b!2887019))

(assert (= (and d!834061 (not c!469271)) b!2887020))

(assert (= (and d!834061 res!1195733) b!2887021))

(assert (= (and b!2887021 res!1195732) b!2887022))

(declare-fun m!3301437 () Bool)

(assert (=> d!834061 m!3301437))

(declare-fun m!3301439 () Bool)

(assert (=> d!834061 m!3301439))

(declare-fun m!3301441 () Bool)

(assert (=> d!834061 m!3301441))

(declare-fun m!3301443 () Bool)

(assert (=> b!2887020 m!3301443))

(declare-fun m!3301445 () Bool)

(assert (=> b!2887021 m!3301445))

(declare-fun m!3301447 () Bool)

(assert (=> b!2887021 m!3301447))

(declare-fun m!3301449 () Bool)

(assert (=> b!2887021 m!3301449))

(assert (=> b!2886767 d!834061))

(declare-fun b!2887023 () Bool)

(declare-fun e!1825519 () Option!6488)

(declare-fun lt!1020742 () Option!6488)

(assert (=> b!2887023 (= e!1825519 lt!1020742)))

(declare-fun b!2887024 () Bool)

(declare-fun e!1825522 () Option!6488)

(assert (=> b!2887024 (= e!1825522 None!6487)))

(declare-fun d!834063 () Bool)

(declare-fun c!469277 () Bool)

(assert (=> d!834063 (= c!469277 ((_ is EmptyExpr!8815) (ite c!469208 (regTwo!18143 r!23079) (regOne!18142 r!23079))))))

(declare-fun e!1825521 () Option!6488)

(assert (=> d!834063 (= (getLanguageWitness!522 (ite c!469208 (regTwo!18143 r!23079) (regOne!18142 r!23079))) e!1825521)))

(declare-fun b!2887025 () Bool)

(declare-fun call!187326 () Option!6488)

(assert (=> b!2887025 (= e!1825519 call!187326)))

(declare-fun b!2887026 () Bool)

(declare-fun e!1825525 () Option!6488)

(assert (=> b!2887026 (= e!1825521 e!1825525)))

(declare-fun c!469272 () Bool)

(assert (=> b!2887026 (= c!469272 ((_ is EmptyLang!8815) (ite c!469208 (regTwo!18143 r!23079) (regOne!18142 r!23079))))))

(declare-fun b!2887027 () Bool)

(declare-fun e!1825520 () Option!6488)

(assert (=> b!2887027 (= e!1825520 None!6487)))

(declare-fun b!2887028 () Bool)

(assert (=> b!2887028 (= e!1825521 (Some!6487 Nil!34492))))

(declare-fun b!2887029 () Bool)

(declare-fun e!1825518 () Option!6488)

(assert (=> b!2887029 (= e!1825518 e!1825519)))

(declare-fun call!187327 () Option!6488)

(assert (=> b!2887029 (= lt!1020742 call!187327)))

(declare-fun c!469276 () Bool)

(assert (=> b!2887029 (= c!469276 ((_ is Some!6487) lt!1020742))))

(declare-fun c!469278 () Bool)

(declare-fun bm!187321 () Bool)

(assert (=> bm!187321 (= call!187327 (getLanguageWitness!522 (ite c!469278 (regOne!18143 (ite c!469208 (regTwo!18143 r!23079) (regOne!18142 r!23079))) (regTwo!18142 (ite c!469208 (regTwo!18143 r!23079) (regOne!18142 r!23079))))))))

(declare-fun b!2887030 () Bool)

(declare-fun lt!1020743 () Option!6488)

(declare-fun lt!1020741 () Option!6488)

(assert (=> b!2887030 (= e!1825520 (Some!6487 (++!8214 (v!34613 lt!1020743) (v!34613 lt!1020741))))))

(declare-fun b!2887031 () Bool)

(assert (=> b!2887031 (= e!1825525 None!6487)))

(declare-fun b!2887032 () Bool)

(declare-fun e!1825523 () Option!6488)

(assert (=> b!2887032 (= e!1825523 (Some!6487 (Cons!34492 (c!469160 (ite c!469208 (regTwo!18143 r!23079) (regOne!18142 r!23079))) Nil!34492)))))

(declare-fun b!2887033 () Bool)

(declare-fun c!469273 () Bool)

(assert (=> b!2887033 (= c!469273 ((_ is ElementMatch!8815) (ite c!469208 (regTwo!18143 r!23079) (regOne!18142 r!23079))))))

(assert (=> b!2887033 (= e!1825525 e!1825523)))

(declare-fun b!2887034 () Bool)

(assert (=> b!2887034 (= e!1825518 e!1825522)))

(assert (=> b!2887034 (= lt!1020743 call!187326)))

(declare-fun c!469274 () Bool)

(assert (=> b!2887034 (= c!469274 ((_ is Some!6487) lt!1020743))))

(declare-fun b!2887035 () Bool)

(assert (=> b!2887035 (= c!469278 ((_ is Union!8815) (ite c!469208 (regTwo!18143 r!23079) (regOne!18142 r!23079))))))

(declare-fun e!1825524 () Option!6488)

(assert (=> b!2887035 (= e!1825524 e!1825518)))

(declare-fun bm!187322 () Bool)

(assert (=> bm!187322 (= call!187326 (getLanguageWitness!522 (ite c!469278 (regTwo!18143 (ite c!469208 (regTwo!18143 r!23079) (regOne!18142 r!23079))) (regOne!18142 (ite c!469208 (regTwo!18143 r!23079) (regOne!18142 r!23079))))))))

(declare-fun b!2887036 () Bool)

(declare-fun c!469279 () Bool)

(assert (=> b!2887036 (= c!469279 ((_ is Some!6487) lt!1020741))))

(assert (=> b!2887036 (= lt!1020741 call!187327)))

(assert (=> b!2887036 (= e!1825522 e!1825520)))

(declare-fun b!2887037 () Bool)

(assert (=> b!2887037 (= e!1825523 e!1825524)))

(declare-fun c!469275 () Bool)

(assert (=> b!2887037 (= c!469275 ((_ is Star!8815) (ite c!469208 (regTwo!18143 r!23079) (regOne!18142 r!23079))))))

(declare-fun b!2887038 () Bool)

(assert (=> b!2887038 (= e!1825524 (Some!6487 Nil!34492))))

(assert (= (and d!834063 c!469277) b!2887028))

(assert (= (and d!834063 (not c!469277)) b!2887026))

(assert (= (and b!2887026 c!469272) b!2887031))

(assert (= (and b!2887026 (not c!469272)) b!2887033))

(assert (= (and b!2887033 c!469273) b!2887032))

(assert (= (and b!2887033 (not c!469273)) b!2887037))

(assert (= (and b!2887037 c!469275) b!2887038))

(assert (= (and b!2887037 (not c!469275)) b!2887035))

(assert (= (and b!2887035 c!469278) b!2887029))

(assert (= (and b!2887035 (not c!469278)) b!2887034))

(assert (= (and b!2887029 c!469276) b!2887023))

(assert (= (and b!2887029 (not c!469276)) b!2887025))

(assert (= (and b!2887034 c!469274) b!2887036))

(assert (= (and b!2887034 (not c!469274)) b!2887024))

(assert (= (and b!2887036 c!469279) b!2887030))

(assert (= (and b!2887036 (not c!469279)) b!2887027))

(assert (= (or b!2887025 b!2887034) bm!187322))

(assert (= (or b!2887029 b!2887036) bm!187321))

(declare-fun m!3301451 () Bool)

(assert (=> bm!187321 m!3301451))

(declare-fun m!3301453 () Bool)

(assert (=> b!2887030 m!3301453))

(declare-fun m!3301455 () Bool)

(assert (=> bm!187322 m!3301455))

(assert (=> bm!187281 d!834063))

(declare-fun d!834065 () Bool)

(assert (=> d!834065 (= (nullable!2717 r!23079) (nullableFct!832 r!23079))))

(declare-fun bs!523834 () Bool)

(assert (= bs!523834 d!834065))

(declare-fun m!3301457 () Bool)

(assert (=> bs!523834 m!3301457))

(assert (=> b!2886863 d!834065))

(assert (=> b!2886853 d!834055))

(assert (=> b!2886855 d!834055))

(declare-fun b!2887040 () Bool)

(declare-fun e!1825526 () Bool)

(declare-fun tp!925921 () Bool)

(declare-fun tp!925922 () Bool)

(assert (=> b!2887040 (= e!1825526 (and tp!925921 tp!925922))))

(assert (=> b!2886899 (= tp!925878 e!1825526)))

(declare-fun b!2887041 () Bool)

(declare-fun tp!925923 () Bool)

(assert (=> b!2887041 (= e!1825526 tp!925923)))

(declare-fun b!2887039 () Bool)

(assert (=> b!2887039 (= e!1825526 tp_is_empty!15217)))

(declare-fun b!2887042 () Bool)

(declare-fun tp!925924 () Bool)

(declare-fun tp!925920 () Bool)

(assert (=> b!2887042 (= e!1825526 (and tp!925924 tp!925920))))

(assert (= (and b!2886899 ((_ is ElementMatch!8815) (reg!9144 (regTwo!18143 r!23079)))) b!2887039))

(assert (= (and b!2886899 ((_ is Concat!14136) (reg!9144 (regTwo!18143 r!23079)))) b!2887040))

(assert (= (and b!2886899 ((_ is Star!8815) (reg!9144 (regTwo!18143 r!23079)))) b!2887041))

(assert (= (and b!2886899 ((_ is Union!8815) (reg!9144 (regTwo!18143 r!23079)))) b!2887042))

(declare-fun b!2887044 () Bool)

(declare-fun e!1825527 () Bool)

(declare-fun tp!925926 () Bool)

(declare-fun tp!925927 () Bool)

(assert (=> b!2887044 (= e!1825527 (and tp!925926 tp!925927))))

(assert (=> b!2886900 (= tp!925879 e!1825527)))

(declare-fun b!2887045 () Bool)

(declare-fun tp!925928 () Bool)

(assert (=> b!2887045 (= e!1825527 tp!925928)))

(declare-fun b!2887043 () Bool)

(assert (=> b!2887043 (= e!1825527 tp_is_empty!15217)))

(declare-fun b!2887046 () Bool)

(declare-fun tp!925929 () Bool)

(declare-fun tp!925925 () Bool)

(assert (=> b!2887046 (= e!1825527 (and tp!925929 tp!925925))))

(assert (= (and b!2886900 ((_ is ElementMatch!8815) (regOne!18143 (regTwo!18143 r!23079)))) b!2887043))

(assert (= (and b!2886900 ((_ is Concat!14136) (regOne!18143 (regTwo!18143 r!23079)))) b!2887044))

(assert (= (and b!2886900 ((_ is Star!8815) (regOne!18143 (regTwo!18143 r!23079)))) b!2887045))

(assert (= (and b!2886900 ((_ is Union!8815) (regOne!18143 (regTwo!18143 r!23079)))) b!2887046))

(declare-fun b!2887048 () Bool)

(declare-fun e!1825528 () Bool)

(declare-fun tp!925931 () Bool)

(declare-fun tp!925932 () Bool)

(assert (=> b!2887048 (= e!1825528 (and tp!925931 tp!925932))))

(assert (=> b!2886900 (= tp!925875 e!1825528)))

(declare-fun b!2887049 () Bool)

(declare-fun tp!925933 () Bool)

(assert (=> b!2887049 (= e!1825528 tp!925933)))

(declare-fun b!2887047 () Bool)

(assert (=> b!2887047 (= e!1825528 tp_is_empty!15217)))

(declare-fun b!2887050 () Bool)

(declare-fun tp!925934 () Bool)

(declare-fun tp!925930 () Bool)

(assert (=> b!2887050 (= e!1825528 (and tp!925934 tp!925930))))

(assert (= (and b!2886900 ((_ is ElementMatch!8815) (regTwo!18143 (regTwo!18143 r!23079)))) b!2887047))

(assert (= (and b!2886900 ((_ is Concat!14136) (regTwo!18143 (regTwo!18143 r!23079)))) b!2887048))

(assert (= (and b!2886900 ((_ is Star!8815) (regTwo!18143 (regTwo!18143 r!23079)))) b!2887049))

(assert (= (and b!2886900 ((_ is Union!8815) (regTwo!18143 (regTwo!18143 r!23079)))) b!2887050))

(declare-fun b!2887052 () Bool)

(declare-fun e!1825529 () Bool)

(declare-fun tp!925936 () Bool)

(declare-fun tp!925937 () Bool)

(assert (=> b!2887052 (= e!1825529 (and tp!925936 tp!925937))))

(assert (=> b!2886895 (= tp!925873 e!1825529)))

(declare-fun b!2887053 () Bool)

(declare-fun tp!925938 () Bool)

(assert (=> b!2887053 (= e!1825529 tp!925938)))

(declare-fun b!2887051 () Bool)

(assert (=> b!2887051 (= e!1825529 tp_is_empty!15217)))

(declare-fun b!2887054 () Bool)

(declare-fun tp!925939 () Bool)

(declare-fun tp!925935 () Bool)

(assert (=> b!2887054 (= e!1825529 (and tp!925939 tp!925935))))

(assert (= (and b!2886895 ((_ is ElementMatch!8815) (reg!9144 (regOne!18143 r!23079)))) b!2887051))

(assert (= (and b!2886895 ((_ is Concat!14136) (reg!9144 (regOne!18143 r!23079)))) b!2887052))

(assert (= (and b!2886895 ((_ is Star!8815) (reg!9144 (regOne!18143 r!23079)))) b!2887053))

(assert (= (and b!2886895 ((_ is Union!8815) (reg!9144 (regOne!18143 r!23079)))) b!2887054))

(declare-fun b!2887056 () Bool)

(declare-fun e!1825530 () Bool)

(declare-fun tp!925941 () Bool)

(declare-fun tp!925942 () Bool)

(assert (=> b!2887056 (= e!1825530 (and tp!925941 tp!925942))))

(assert (=> b!2886896 (= tp!925874 e!1825530)))

(declare-fun b!2887057 () Bool)

(declare-fun tp!925943 () Bool)

(assert (=> b!2887057 (= e!1825530 tp!925943)))

(declare-fun b!2887055 () Bool)

(assert (=> b!2887055 (= e!1825530 tp_is_empty!15217)))

(declare-fun b!2887058 () Bool)

(declare-fun tp!925944 () Bool)

(declare-fun tp!925940 () Bool)

(assert (=> b!2887058 (= e!1825530 (and tp!925944 tp!925940))))

(assert (= (and b!2886896 ((_ is ElementMatch!8815) (regOne!18143 (regOne!18143 r!23079)))) b!2887055))

(assert (= (and b!2886896 ((_ is Concat!14136) (regOne!18143 (regOne!18143 r!23079)))) b!2887056))

(assert (= (and b!2886896 ((_ is Star!8815) (regOne!18143 (regOne!18143 r!23079)))) b!2887057))

(assert (= (and b!2886896 ((_ is Union!8815) (regOne!18143 (regOne!18143 r!23079)))) b!2887058))

(declare-fun b!2887060 () Bool)

(declare-fun e!1825531 () Bool)

(declare-fun tp!925946 () Bool)

(declare-fun tp!925947 () Bool)

(assert (=> b!2887060 (= e!1825531 (and tp!925946 tp!925947))))

(assert (=> b!2886896 (= tp!925870 e!1825531)))

(declare-fun b!2887061 () Bool)

(declare-fun tp!925948 () Bool)

(assert (=> b!2887061 (= e!1825531 tp!925948)))

(declare-fun b!2887059 () Bool)

(assert (=> b!2887059 (= e!1825531 tp_is_empty!15217)))

(declare-fun b!2887062 () Bool)

(declare-fun tp!925949 () Bool)

(declare-fun tp!925945 () Bool)

(assert (=> b!2887062 (= e!1825531 (and tp!925949 tp!925945))))

(assert (= (and b!2886896 ((_ is ElementMatch!8815) (regTwo!18143 (regOne!18143 r!23079)))) b!2887059))

(assert (= (and b!2886896 ((_ is Concat!14136) (regTwo!18143 (regOne!18143 r!23079)))) b!2887060))

(assert (= (and b!2886896 ((_ is Star!8815) (regTwo!18143 (regOne!18143 r!23079)))) b!2887061))

(assert (= (and b!2886896 ((_ is Union!8815) (regTwo!18143 (regOne!18143 r!23079)))) b!2887062))

(declare-fun b!2887064 () Bool)

(declare-fun e!1825532 () Bool)

(declare-fun tp!925951 () Bool)

(declare-fun tp!925952 () Bool)

(assert (=> b!2887064 (= e!1825532 (and tp!925951 tp!925952))))

(assert (=> b!2886906 (= tp!925886 e!1825532)))

(declare-fun b!2887065 () Bool)

(declare-fun tp!925953 () Bool)

(assert (=> b!2887065 (= e!1825532 tp!925953)))

(declare-fun b!2887063 () Bool)

(assert (=> b!2887063 (= e!1825532 tp_is_empty!15217)))

(declare-fun b!2887066 () Bool)

(declare-fun tp!925954 () Bool)

(declare-fun tp!925950 () Bool)

(assert (=> b!2887066 (= e!1825532 (and tp!925954 tp!925950))))

(assert (= (and b!2886906 ((_ is ElementMatch!8815) (regOne!18142 (regOne!18142 r!23079)))) b!2887063))

(assert (= (and b!2886906 ((_ is Concat!14136) (regOne!18142 (regOne!18142 r!23079)))) b!2887064))

(assert (= (and b!2886906 ((_ is Star!8815) (regOne!18142 (regOne!18142 r!23079)))) b!2887065))

(assert (= (and b!2886906 ((_ is Union!8815) (regOne!18142 (regOne!18142 r!23079)))) b!2887066))

(declare-fun b!2887068 () Bool)

(declare-fun e!1825533 () Bool)

(declare-fun tp!925956 () Bool)

(declare-fun tp!925957 () Bool)

(assert (=> b!2887068 (= e!1825533 (and tp!925956 tp!925957))))

(assert (=> b!2886906 (= tp!925887 e!1825533)))

(declare-fun b!2887069 () Bool)

(declare-fun tp!925958 () Bool)

(assert (=> b!2887069 (= e!1825533 tp!925958)))

(declare-fun b!2887067 () Bool)

(assert (=> b!2887067 (= e!1825533 tp_is_empty!15217)))

(declare-fun b!2887070 () Bool)

(declare-fun tp!925959 () Bool)

(declare-fun tp!925955 () Bool)

(assert (=> b!2887070 (= e!1825533 (and tp!925959 tp!925955))))

(assert (= (and b!2886906 ((_ is ElementMatch!8815) (regTwo!18142 (regOne!18142 r!23079)))) b!2887067))

(assert (= (and b!2886906 ((_ is Concat!14136) (regTwo!18142 (regOne!18142 r!23079)))) b!2887068))

(assert (= (and b!2886906 ((_ is Star!8815) (regTwo!18142 (regOne!18142 r!23079)))) b!2887069))

(assert (= (and b!2886906 ((_ is Union!8815) (regTwo!18142 (regOne!18142 r!23079)))) b!2887070))

(declare-fun b!2887072 () Bool)

(declare-fun e!1825534 () Bool)

(declare-fun tp!925961 () Bool)

(declare-fun tp!925962 () Bool)

(assert (=> b!2887072 (= e!1825534 (and tp!925961 tp!925962))))

(assert (=> b!2886915 (= tp!925898 e!1825534)))

(declare-fun b!2887073 () Bool)

(declare-fun tp!925963 () Bool)

(assert (=> b!2887073 (= e!1825534 tp!925963)))

(declare-fun b!2887071 () Bool)

(assert (=> b!2887071 (= e!1825534 tp_is_empty!15217)))

(declare-fun b!2887074 () Bool)

(declare-fun tp!925964 () Bool)

(declare-fun tp!925960 () Bool)

(assert (=> b!2887074 (= e!1825534 (and tp!925964 tp!925960))))

(assert (= (and b!2886915 ((_ is ElementMatch!8815) (reg!9144 (regTwo!18142 r!23079)))) b!2887071))

(assert (= (and b!2886915 ((_ is Concat!14136) (reg!9144 (regTwo!18142 r!23079)))) b!2887072))

(assert (= (and b!2886915 ((_ is Star!8815) (reg!9144 (regTwo!18142 r!23079)))) b!2887073))

(assert (= (and b!2886915 ((_ is Union!8815) (reg!9144 (regTwo!18142 r!23079)))) b!2887074))

(declare-fun b!2887076 () Bool)

(declare-fun e!1825535 () Bool)

(declare-fun tp!925966 () Bool)

(declare-fun tp!925967 () Bool)

(assert (=> b!2887076 (= e!1825535 (and tp!925966 tp!925967))))

(assert (=> b!2886916 (= tp!925899 e!1825535)))

(declare-fun b!2887077 () Bool)

(declare-fun tp!925968 () Bool)

(assert (=> b!2887077 (= e!1825535 tp!925968)))

(declare-fun b!2887075 () Bool)

(assert (=> b!2887075 (= e!1825535 tp_is_empty!15217)))

(declare-fun b!2887078 () Bool)

(declare-fun tp!925969 () Bool)

(declare-fun tp!925965 () Bool)

(assert (=> b!2887078 (= e!1825535 (and tp!925969 tp!925965))))

(assert (= (and b!2886916 ((_ is ElementMatch!8815) (regOne!18143 (regTwo!18142 r!23079)))) b!2887075))

(assert (= (and b!2886916 ((_ is Concat!14136) (regOne!18143 (regTwo!18142 r!23079)))) b!2887076))

(assert (= (and b!2886916 ((_ is Star!8815) (regOne!18143 (regTwo!18142 r!23079)))) b!2887077))

(assert (= (and b!2886916 ((_ is Union!8815) (regOne!18143 (regTwo!18142 r!23079)))) b!2887078))

(declare-fun b!2887080 () Bool)

(declare-fun e!1825536 () Bool)

(declare-fun tp!925971 () Bool)

(declare-fun tp!925972 () Bool)

(assert (=> b!2887080 (= e!1825536 (and tp!925971 tp!925972))))

(assert (=> b!2886916 (= tp!925895 e!1825536)))

(declare-fun b!2887081 () Bool)

(declare-fun tp!925973 () Bool)

(assert (=> b!2887081 (= e!1825536 tp!925973)))

(declare-fun b!2887079 () Bool)

(assert (=> b!2887079 (= e!1825536 tp_is_empty!15217)))

(declare-fun b!2887082 () Bool)

(declare-fun tp!925974 () Bool)

(declare-fun tp!925970 () Bool)

(assert (=> b!2887082 (= e!1825536 (and tp!925974 tp!925970))))

(assert (= (and b!2886916 ((_ is ElementMatch!8815) (regTwo!18143 (regTwo!18142 r!23079)))) b!2887079))

(assert (= (and b!2886916 ((_ is Concat!14136) (regTwo!18143 (regTwo!18142 r!23079)))) b!2887080))

(assert (= (and b!2886916 ((_ is Star!8815) (regTwo!18143 (regTwo!18142 r!23079)))) b!2887081))

(assert (= (and b!2886916 ((_ is Union!8815) (regTwo!18143 (regTwo!18142 r!23079)))) b!2887082))

(declare-fun b!2887084 () Bool)

(declare-fun e!1825537 () Bool)

(declare-fun tp!925976 () Bool)

(declare-fun tp!925977 () Bool)

(assert (=> b!2887084 (= e!1825537 (and tp!925976 tp!925977))))

(assert (=> b!2886898 (= tp!925876 e!1825537)))

(declare-fun b!2887085 () Bool)

(declare-fun tp!925978 () Bool)

(assert (=> b!2887085 (= e!1825537 tp!925978)))

(declare-fun b!2887083 () Bool)

(assert (=> b!2887083 (= e!1825537 tp_is_empty!15217)))

(declare-fun b!2887086 () Bool)

(declare-fun tp!925979 () Bool)

(declare-fun tp!925975 () Bool)

(assert (=> b!2887086 (= e!1825537 (and tp!925979 tp!925975))))

(assert (= (and b!2886898 ((_ is ElementMatch!8815) (regOne!18142 (regTwo!18143 r!23079)))) b!2887083))

(assert (= (and b!2886898 ((_ is Concat!14136) (regOne!18142 (regTwo!18143 r!23079)))) b!2887084))

(assert (= (and b!2886898 ((_ is Star!8815) (regOne!18142 (regTwo!18143 r!23079)))) b!2887085))

(assert (= (and b!2886898 ((_ is Union!8815) (regOne!18142 (regTwo!18143 r!23079)))) b!2887086))

(declare-fun b!2887088 () Bool)

(declare-fun e!1825538 () Bool)

(declare-fun tp!925981 () Bool)

(declare-fun tp!925982 () Bool)

(assert (=> b!2887088 (= e!1825538 (and tp!925981 tp!925982))))

(assert (=> b!2886898 (= tp!925877 e!1825538)))

(declare-fun b!2887089 () Bool)

(declare-fun tp!925983 () Bool)

(assert (=> b!2887089 (= e!1825538 tp!925983)))

(declare-fun b!2887087 () Bool)

(assert (=> b!2887087 (= e!1825538 tp_is_empty!15217)))

(declare-fun b!2887090 () Bool)

(declare-fun tp!925984 () Bool)

(declare-fun tp!925980 () Bool)

(assert (=> b!2887090 (= e!1825538 (and tp!925984 tp!925980))))

(assert (= (and b!2886898 ((_ is ElementMatch!8815) (regTwo!18142 (regTwo!18143 r!23079)))) b!2887087))

(assert (= (and b!2886898 ((_ is Concat!14136) (regTwo!18142 (regTwo!18143 r!23079)))) b!2887088))

(assert (= (and b!2886898 ((_ is Star!8815) (regTwo!18142 (regTwo!18143 r!23079)))) b!2887089))

(assert (= (and b!2886898 ((_ is Union!8815) (regTwo!18142 (regTwo!18143 r!23079)))) b!2887090))

(declare-fun b!2887092 () Bool)

(declare-fun e!1825539 () Bool)

(declare-fun tp!925986 () Bool)

(declare-fun tp!925987 () Bool)

(assert (=> b!2887092 (= e!1825539 (and tp!925986 tp!925987))))

(assert (=> b!2886907 (= tp!925888 e!1825539)))

(declare-fun b!2887093 () Bool)

(declare-fun tp!925988 () Bool)

(assert (=> b!2887093 (= e!1825539 tp!925988)))

(declare-fun b!2887091 () Bool)

(assert (=> b!2887091 (= e!1825539 tp_is_empty!15217)))

(declare-fun b!2887094 () Bool)

(declare-fun tp!925989 () Bool)

(declare-fun tp!925985 () Bool)

(assert (=> b!2887094 (= e!1825539 (and tp!925989 tp!925985))))

(assert (= (and b!2886907 ((_ is ElementMatch!8815) (reg!9144 (regOne!18142 r!23079)))) b!2887091))

(assert (= (and b!2886907 ((_ is Concat!14136) (reg!9144 (regOne!18142 r!23079)))) b!2887092))

(assert (= (and b!2886907 ((_ is Star!8815) (reg!9144 (regOne!18142 r!23079)))) b!2887093))

(assert (= (and b!2886907 ((_ is Union!8815) (reg!9144 (regOne!18142 r!23079)))) b!2887094))

(declare-fun b!2887096 () Bool)

(declare-fun e!1825540 () Bool)

(declare-fun tp!925991 () Bool)

(declare-fun tp!925992 () Bool)

(assert (=> b!2887096 (= e!1825540 (and tp!925991 tp!925992))))

(assert (=> b!2886908 (= tp!925889 e!1825540)))

(declare-fun b!2887097 () Bool)

(declare-fun tp!925993 () Bool)

(assert (=> b!2887097 (= e!1825540 tp!925993)))

(declare-fun b!2887095 () Bool)

(assert (=> b!2887095 (= e!1825540 tp_is_empty!15217)))

(declare-fun b!2887098 () Bool)

(declare-fun tp!925994 () Bool)

(declare-fun tp!925990 () Bool)

(assert (=> b!2887098 (= e!1825540 (and tp!925994 tp!925990))))

(assert (= (and b!2886908 ((_ is ElementMatch!8815) (regOne!18143 (regOne!18142 r!23079)))) b!2887095))

(assert (= (and b!2886908 ((_ is Concat!14136) (regOne!18143 (regOne!18142 r!23079)))) b!2887096))

(assert (= (and b!2886908 ((_ is Star!8815) (regOne!18143 (regOne!18142 r!23079)))) b!2887097))

(assert (= (and b!2886908 ((_ is Union!8815) (regOne!18143 (regOne!18142 r!23079)))) b!2887098))

(declare-fun b!2887100 () Bool)

(declare-fun e!1825541 () Bool)

(declare-fun tp!925996 () Bool)

(declare-fun tp!925997 () Bool)

(assert (=> b!2887100 (= e!1825541 (and tp!925996 tp!925997))))

(assert (=> b!2886908 (= tp!925885 e!1825541)))

(declare-fun b!2887101 () Bool)

(declare-fun tp!925998 () Bool)

(assert (=> b!2887101 (= e!1825541 tp!925998)))

(declare-fun b!2887099 () Bool)

(assert (=> b!2887099 (= e!1825541 tp_is_empty!15217)))

(declare-fun b!2887102 () Bool)

(declare-fun tp!925999 () Bool)

(declare-fun tp!925995 () Bool)

(assert (=> b!2887102 (= e!1825541 (and tp!925999 tp!925995))))

(assert (= (and b!2886908 ((_ is ElementMatch!8815) (regTwo!18143 (regOne!18142 r!23079)))) b!2887099))

(assert (= (and b!2886908 ((_ is Concat!14136) (regTwo!18143 (regOne!18142 r!23079)))) b!2887100))

(assert (= (and b!2886908 ((_ is Star!8815) (regTwo!18143 (regOne!18142 r!23079)))) b!2887101))

(assert (= (and b!2886908 ((_ is Union!8815) (regTwo!18143 (regOne!18142 r!23079)))) b!2887102))

(declare-fun b!2887104 () Bool)

(declare-fun e!1825542 () Bool)

(declare-fun tp!926001 () Bool)

(declare-fun tp!926002 () Bool)

(assert (=> b!2887104 (= e!1825542 (and tp!926001 tp!926002))))

(assert (=> b!2886894 (= tp!925871 e!1825542)))

(declare-fun b!2887105 () Bool)

(declare-fun tp!926003 () Bool)

(assert (=> b!2887105 (= e!1825542 tp!926003)))

(declare-fun b!2887103 () Bool)

(assert (=> b!2887103 (= e!1825542 tp_is_empty!15217)))

(declare-fun b!2887106 () Bool)

(declare-fun tp!926004 () Bool)

(declare-fun tp!926000 () Bool)

(assert (=> b!2887106 (= e!1825542 (and tp!926004 tp!926000))))

(assert (= (and b!2886894 ((_ is ElementMatch!8815) (regOne!18142 (regOne!18143 r!23079)))) b!2887103))

(assert (= (and b!2886894 ((_ is Concat!14136) (regOne!18142 (regOne!18143 r!23079)))) b!2887104))

(assert (= (and b!2886894 ((_ is Star!8815) (regOne!18142 (regOne!18143 r!23079)))) b!2887105))

(assert (= (and b!2886894 ((_ is Union!8815) (regOne!18142 (regOne!18143 r!23079)))) b!2887106))

(declare-fun b!2887108 () Bool)

(declare-fun e!1825543 () Bool)

(declare-fun tp!926006 () Bool)

(declare-fun tp!926007 () Bool)

(assert (=> b!2887108 (= e!1825543 (and tp!926006 tp!926007))))

(assert (=> b!2886894 (= tp!925872 e!1825543)))

(declare-fun b!2887109 () Bool)

(declare-fun tp!926008 () Bool)

(assert (=> b!2887109 (= e!1825543 tp!926008)))

(declare-fun b!2887107 () Bool)

(assert (=> b!2887107 (= e!1825543 tp_is_empty!15217)))

(declare-fun b!2887110 () Bool)

(declare-fun tp!926009 () Bool)

(declare-fun tp!926005 () Bool)

(assert (=> b!2887110 (= e!1825543 (and tp!926009 tp!926005))))

(assert (= (and b!2886894 ((_ is ElementMatch!8815) (regTwo!18142 (regOne!18143 r!23079)))) b!2887107))

(assert (= (and b!2886894 ((_ is Concat!14136) (regTwo!18142 (regOne!18143 r!23079)))) b!2887108))

(assert (= (and b!2886894 ((_ is Star!8815) (regTwo!18142 (regOne!18143 r!23079)))) b!2887109))

(assert (= (and b!2886894 ((_ is Union!8815) (regTwo!18142 (regOne!18143 r!23079)))) b!2887110))

(declare-fun b!2887112 () Bool)

(declare-fun e!1825544 () Bool)

(declare-fun tp!926011 () Bool)

(declare-fun tp!926012 () Bool)

(assert (=> b!2887112 (= e!1825544 (and tp!926011 tp!926012))))

(assert (=> b!2886914 (= tp!925896 e!1825544)))

(declare-fun b!2887113 () Bool)

(declare-fun tp!926013 () Bool)

(assert (=> b!2887113 (= e!1825544 tp!926013)))

(declare-fun b!2887111 () Bool)

(assert (=> b!2887111 (= e!1825544 tp_is_empty!15217)))

(declare-fun b!2887114 () Bool)

(declare-fun tp!926014 () Bool)

(declare-fun tp!926010 () Bool)

(assert (=> b!2887114 (= e!1825544 (and tp!926014 tp!926010))))

(assert (= (and b!2886914 ((_ is ElementMatch!8815) (regOne!18142 (regTwo!18142 r!23079)))) b!2887111))

(assert (= (and b!2886914 ((_ is Concat!14136) (regOne!18142 (regTwo!18142 r!23079)))) b!2887112))

(assert (= (and b!2886914 ((_ is Star!8815) (regOne!18142 (regTwo!18142 r!23079)))) b!2887113))

(assert (= (and b!2886914 ((_ is Union!8815) (regOne!18142 (regTwo!18142 r!23079)))) b!2887114))

(declare-fun b!2887116 () Bool)

(declare-fun e!1825545 () Bool)

(declare-fun tp!926016 () Bool)

(declare-fun tp!926017 () Bool)

(assert (=> b!2887116 (= e!1825545 (and tp!926016 tp!926017))))

(assert (=> b!2886914 (= tp!925897 e!1825545)))

(declare-fun b!2887117 () Bool)

(declare-fun tp!926018 () Bool)

(assert (=> b!2887117 (= e!1825545 tp!926018)))

(declare-fun b!2887115 () Bool)

(assert (=> b!2887115 (= e!1825545 tp_is_empty!15217)))

(declare-fun b!2887118 () Bool)

(declare-fun tp!926019 () Bool)

(declare-fun tp!926015 () Bool)

(assert (=> b!2887118 (= e!1825545 (and tp!926019 tp!926015))))

(assert (= (and b!2886914 ((_ is ElementMatch!8815) (regTwo!18142 (regTwo!18142 r!23079)))) b!2887115))

(assert (= (and b!2886914 ((_ is Concat!14136) (regTwo!18142 (regTwo!18142 r!23079)))) b!2887116))

(assert (= (and b!2886914 ((_ is Star!8815) (regTwo!18142 (regTwo!18142 r!23079)))) b!2887117))

(assert (= (and b!2886914 ((_ is Union!8815) (regTwo!18142 (regTwo!18142 r!23079)))) b!2887118))

(declare-fun b!2887120 () Bool)

(declare-fun e!1825546 () Bool)

(declare-fun tp!926021 () Bool)

(declare-fun tp!926022 () Bool)

(assert (=> b!2887120 (= e!1825546 (and tp!926021 tp!926022))))

(assert (=> b!2886923 (= tp!925908 e!1825546)))

(declare-fun b!2887121 () Bool)

(declare-fun tp!926023 () Bool)

(assert (=> b!2887121 (= e!1825546 tp!926023)))

(declare-fun b!2887119 () Bool)

(assert (=> b!2887119 (= e!1825546 tp_is_empty!15217)))

(declare-fun b!2887122 () Bool)

(declare-fun tp!926024 () Bool)

(declare-fun tp!926020 () Bool)

(assert (=> b!2887122 (= e!1825546 (and tp!926024 tp!926020))))

(assert (= (and b!2886923 ((_ is ElementMatch!8815) (reg!9144 (reg!9144 r!23079)))) b!2887119))

(assert (= (and b!2886923 ((_ is Concat!14136) (reg!9144 (reg!9144 r!23079)))) b!2887120))

(assert (= (and b!2886923 ((_ is Star!8815) (reg!9144 (reg!9144 r!23079)))) b!2887121))

(assert (= (and b!2886923 ((_ is Union!8815) (reg!9144 (reg!9144 r!23079)))) b!2887122))

(declare-fun b!2887124 () Bool)

(declare-fun e!1825547 () Bool)

(declare-fun tp!926026 () Bool)

(declare-fun tp!926027 () Bool)

(assert (=> b!2887124 (= e!1825547 (and tp!926026 tp!926027))))

(assert (=> b!2886924 (= tp!925909 e!1825547)))

(declare-fun b!2887125 () Bool)

(declare-fun tp!926028 () Bool)

(assert (=> b!2887125 (= e!1825547 tp!926028)))

(declare-fun b!2887123 () Bool)

(assert (=> b!2887123 (= e!1825547 tp_is_empty!15217)))

(declare-fun b!2887126 () Bool)

(declare-fun tp!926029 () Bool)

(declare-fun tp!926025 () Bool)

(assert (=> b!2887126 (= e!1825547 (and tp!926029 tp!926025))))

(assert (= (and b!2886924 ((_ is ElementMatch!8815) (regOne!18143 (reg!9144 r!23079)))) b!2887123))

(assert (= (and b!2886924 ((_ is Concat!14136) (regOne!18143 (reg!9144 r!23079)))) b!2887124))

(assert (= (and b!2886924 ((_ is Star!8815) (regOne!18143 (reg!9144 r!23079)))) b!2887125))

(assert (= (and b!2886924 ((_ is Union!8815) (regOne!18143 (reg!9144 r!23079)))) b!2887126))

(declare-fun b!2887128 () Bool)

(declare-fun e!1825548 () Bool)

(declare-fun tp!926031 () Bool)

(declare-fun tp!926032 () Bool)

(assert (=> b!2887128 (= e!1825548 (and tp!926031 tp!926032))))

(assert (=> b!2886924 (= tp!925902 e!1825548)))

(declare-fun b!2887129 () Bool)

(declare-fun tp!926033 () Bool)

(assert (=> b!2887129 (= e!1825548 tp!926033)))

(declare-fun b!2887127 () Bool)

(assert (=> b!2887127 (= e!1825548 tp_is_empty!15217)))

(declare-fun b!2887130 () Bool)

(declare-fun tp!926034 () Bool)

(declare-fun tp!926030 () Bool)

(assert (=> b!2887130 (= e!1825548 (and tp!926034 tp!926030))))

(assert (= (and b!2886924 ((_ is ElementMatch!8815) (regTwo!18143 (reg!9144 r!23079)))) b!2887127))

(assert (= (and b!2886924 ((_ is Concat!14136) (regTwo!18143 (reg!9144 r!23079)))) b!2887128))

(assert (= (and b!2886924 ((_ is Star!8815) (regTwo!18143 (reg!9144 r!23079)))) b!2887129))

(assert (= (and b!2886924 ((_ is Union!8815) (regTwo!18143 (reg!9144 r!23079)))) b!2887130))

(declare-fun b!2887132 () Bool)

(declare-fun e!1825549 () Bool)

(declare-fun tp!926036 () Bool)

(declare-fun tp!926037 () Bool)

(assert (=> b!2887132 (= e!1825549 (and tp!926036 tp!926037))))

(assert (=> b!2886921 (= tp!925904 e!1825549)))

(declare-fun b!2887133 () Bool)

(declare-fun tp!926038 () Bool)

(assert (=> b!2887133 (= e!1825549 tp!926038)))

(declare-fun b!2887131 () Bool)

(assert (=> b!2887131 (= e!1825549 tp_is_empty!15217)))

(declare-fun b!2887134 () Bool)

(declare-fun tp!926039 () Bool)

(declare-fun tp!926035 () Bool)

(assert (=> b!2887134 (= e!1825549 (and tp!926039 tp!926035))))

(assert (= (and b!2886921 ((_ is ElementMatch!8815) (regOne!18142 (reg!9144 r!23079)))) b!2887131))

(assert (= (and b!2886921 ((_ is Concat!14136) (regOne!18142 (reg!9144 r!23079)))) b!2887132))

(assert (= (and b!2886921 ((_ is Star!8815) (regOne!18142 (reg!9144 r!23079)))) b!2887133))

(assert (= (and b!2886921 ((_ is Union!8815) (regOne!18142 (reg!9144 r!23079)))) b!2887134))

(declare-fun b!2887136 () Bool)

(declare-fun e!1825550 () Bool)

(declare-fun tp!926041 () Bool)

(declare-fun tp!926042 () Bool)

(assert (=> b!2887136 (= e!1825550 (and tp!926041 tp!926042))))

(assert (=> b!2886921 (= tp!925906 e!1825550)))

(declare-fun b!2887137 () Bool)

(declare-fun tp!926043 () Bool)

(assert (=> b!2887137 (= e!1825550 tp!926043)))

(declare-fun b!2887135 () Bool)

(assert (=> b!2887135 (= e!1825550 tp_is_empty!15217)))

(declare-fun b!2887138 () Bool)

(declare-fun tp!926044 () Bool)

(declare-fun tp!926040 () Bool)

(assert (=> b!2887138 (= e!1825550 (and tp!926044 tp!926040))))

(assert (= (and b!2886921 ((_ is ElementMatch!8815) (regTwo!18142 (reg!9144 r!23079)))) b!2887135))

(assert (= (and b!2886921 ((_ is Concat!14136) (regTwo!18142 (reg!9144 r!23079)))) b!2887136))

(assert (= (and b!2886921 ((_ is Star!8815) (regTwo!18142 (reg!9144 r!23079)))) b!2887137))

(assert (= (and b!2886921 ((_ is Union!8815) (regTwo!18142 (reg!9144 r!23079)))) b!2887138))

(check-sat (not b!2887078) (not d!834051) (not d!834061) (not bm!187302) (not b!2887072) tp_is_empty!15217 (not b!2886947) (not b!2887080) (not b!2887064) (not b!2887056) (not b!2887060) (not b!2887126) (not b!2887109) (not b!2887086) (not b!2887124) (not b!2887096) (not bm!187315) (not b!2887058) (not bm!187300) (not b!2887137) (not d!834065) (not b!2887094) (not b!2887116) (not b!2887098) (not b!2887105) (not b!2887053) (not b!2887088) (not b!2887132) (not b!2887097) (not b!2887061) (not bm!187316) (not b!2887122) (not b!2887002) (not b!2887081) (not b!2887069) (not b!2887062) (not b!2887129) (not b!2887100) (not b!2886994) (not b!2887041) (not b!2887136) (not b!2887118) (not b!2886945) (not b!2887070) (not b!2887138) (not b!2887082) (not b!2887057) (not b!2887066) (not bm!187321) (not b!2886985) (not b!2887045) (not b!2887106) (not b!2887077) (not bm!187320) (not d!834053) (not b!2887121) (not b!2886952) (not b!2887068) (not b!2887073) (not bm!187318) (not b!2887130) (not b!2887112) (not b!2887048) (not b!2886954) (not b!2887076) (not b!2887102) (not bm!187312) (not b!2887085) (not b!2886951) (not b!2887052) (not b!2887040) (not b!2887104) (not b!2887117) (not b!2887074) (not b!2887021) (not d!834045) (not b!2887120) (not b!2887128) (not b!2887093) (not b!2887020) (not b!2887110) (not b!2887133) (not b!2887030) (not b!2887134) (not b!2887090) (not b!2886941) (not bm!187319) (not bm!187322) (not b!2887044) (not b!2887050) (not b!2887125) (not b!2887101) (not b!2887046) (not b!2887065) (not b!2886955) (not b!2887089) (not bm!187303) (not b!2887113) (not b!2887092) (not b!2887042) (not b!2887084) (not b!2887054) (not b!2887114) (not b!2887049) (not b!2887108))
(check-sat)

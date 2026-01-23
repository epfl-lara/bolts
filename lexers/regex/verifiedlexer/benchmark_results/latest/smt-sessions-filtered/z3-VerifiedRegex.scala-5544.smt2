; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!278874 () Bool)

(assert start!278874)

(declare-fun setIsEmpty!25450 () Bool)

(declare-fun setRes!25450 () Bool)

(assert (=> setIsEmpty!25450 setRes!25450))

(declare-datatypes ((C!17468 0))(
  ( (C!17469 (val!10768 Int)) )
))
(declare-datatypes ((Regex!8643 0))(
  ( (ElementMatch!8643 (c!461642 C!17468)) (Concat!13964 (regOne!17798 Regex!8643) (regTwo!17798 Regex!8643)) (EmptyExpr!8643) (Star!8643 (reg!8972 Regex!8643)) (EmptyLang!8643) (Union!8643 (regOne!17799 Regex!8643) (regTwo!17799 Regex!8643)) )
))
(declare-datatypes ((List!34272 0))(
  ( (Nil!34148) (Cons!34148 (h!39568 Regex!8643) (t!233313 List!34272)) )
))
(declare-datatypes ((Context!5206 0))(
  ( (Context!5207 (exprs!3103 List!34272)) )
))
(declare-fun setElem!25450 () Context!5206)

(declare-fun e!1812784 () Bool)

(declare-fun setNonEmpty!25450 () Bool)

(declare-fun tp!922110 () Bool)

(declare-fun inv!46194 (Context!5206) Bool)

(assert (=> setNonEmpty!25450 (= setRes!25450 (and tp!922110 (inv!46194 setElem!25450) e!1812784))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!960 () (InoxSet Context!5206))

(declare-fun setRest!25450 () (InoxSet Context!5206))

(assert (=> setNonEmpty!25450 (= z!960 ((_ map or) (store ((as const (Array Context!5206 Bool)) false) setElem!25450 true) setRest!25450))))

(declare-fun b!2863587 () Bool)

(declare-fun tp!922108 () Bool)

(assert (=> b!2863587 (= e!1812784 tp!922108)))

(declare-fun b!2863589 () Bool)

(declare-fun e!1812786 () Bool)

(declare-fun lostCauseZipper!552 ((InoxSet Context!5206)) Bool)

(assert (=> b!2863589 (= e!1812786 (lostCauseZipper!552 z!960))))

(declare-datatypes ((List!34273 0))(
  ( (Nil!34149) (Cons!34149 (h!39569 C!17468) (t!233314 List!34273)) )
))
(declare-datatypes ((Option!6331 0))(
  ( (None!6330) (Some!6330 (v!34452 List!34273)) )
))
(declare-fun lt!1015097 () Option!6331)

(declare-fun getLanguageWitness!267 ((InoxSet Context!5206)) Option!6331)

(assert (=> b!2863589 (= lt!1015097 (getLanguageWitness!267 z!960))))

(declare-fun b!2863590 () Bool)

(declare-fun e!1812785 () Bool)

(declare-fun tp_is_empty!15023 () Bool)

(declare-fun tp!922109 () Bool)

(assert (=> b!2863590 (= e!1812785 (and tp_is_empty!15023 tp!922109))))

(declare-fun b!2863588 () Bool)

(declare-fun res!1188928 () Bool)

(assert (=> b!2863588 (=> (not res!1188928) (not e!1812786))))

(declare-fun prefix!919 () List!34273)

(get-info :version)

(assert (=> b!2863588 (= res!1188928 ((_ is Nil!34149) prefix!919))))

(declare-fun res!1188927 () Bool)

(assert (=> start!278874 (=> (not res!1188927) (not e!1812786))))

(declare-fun prefixMatchZipper!325 ((InoxSet Context!5206) List!34273) Bool)

(assert (=> start!278874 (= res!1188927 (prefixMatchZipper!325 z!960 prefix!919))))

(assert (=> start!278874 e!1812786))

(declare-fun condSetEmpty!25450 () Bool)

(assert (=> start!278874 (= condSetEmpty!25450 (= z!960 ((as const (Array Context!5206 Bool)) false)))))

(assert (=> start!278874 setRes!25450))

(assert (=> start!278874 e!1812785))

(assert (= (and start!278874 res!1188927) b!2863588))

(assert (= (and b!2863588 res!1188928) b!2863589))

(assert (= (and start!278874 condSetEmpty!25450) setIsEmpty!25450))

(assert (= (and start!278874 (not condSetEmpty!25450)) setNonEmpty!25450))

(assert (= setNonEmpty!25450 b!2863587))

(assert (= (and start!278874 ((_ is Cons!34149) prefix!919)) b!2863590))

(declare-fun m!3283169 () Bool)

(assert (=> setNonEmpty!25450 m!3283169))

(declare-fun m!3283171 () Bool)

(assert (=> b!2863589 m!3283171))

(declare-fun m!3283173 () Bool)

(assert (=> b!2863589 m!3283173))

(declare-fun m!3283175 () Bool)

(assert (=> start!278874 m!3283175))

(check-sat (not b!2863589) (not b!2863590) (not start!278874) tp_is_empty!15023 (not b!2863587) (not setNonEmpty!25450))
(check-sat)
(get-model)

(declare-fun d!827889 () Bool)

(declare-fun lambda!105546 () Int)

(declare-fun forall!6979 (List!34272 Int) Bool)

(assert (=> d!827889 (= (inv!46194 setElem!25450) (forall!6979 (exprs!3103 setElem!25450) lambda!105546))))

(declare-fun bs!520661 () Bool)

(assert (= bs!520661 d!827889))

(declare-fun m!3283187 () Bool)

(assert (=> bs!520661 m!3283187))

(assert (=> setNonEmpty!25450 d!827889))

(declare-fun bs!520662 () Bool)

(declare-fun b!2863601 () Bool)

(declare-fun d!827895 () Bool)

(assert (= bs!520662 (and b!2863601 d!827895)))

(declare-fun lambda!105560 () Int)

(declare-fun lambda!105559 () Int)

(assert (=> bs!520662 (not (= lambda!105560 lambda!105559))))

(declare-fun bs!520663 () Bool)

(declare-fun b!2863602 () Bool)

(assert (= bs!520663 (and b!2863602 d!827895)))

(declare-fun lambda!105561 () Int)

(assert (=> bs!520663 (not (= lambda!105561 lambda!105559))))

(declare-fun bs!520664 () Bool)

(assert (= bs!520664 (and b!2863602 b!2863601)))

(assert (=> bs!520664 (= lambda!105561 lambda!105560)))

(declare-fun lt!1015120 () Bool)

(declare-fun isEmpty!18639 (Option!6331) Bool)

(assert (=> d!827895 (= lt!1015120 (isEmpty!18639 (getLanguageWitness!267 z!960)))))

(declare-fun forall!6980 ((InoxSet Context!5206) Int) Bool)

(assert (=> d!827895 (= lt!1015120 (forall!6980 z!960 lambda!105559))))

(declare-datatypes ((Unit!47809 0))(
  ( (Unit!47810) )
))
(declare-fun lt!1015119 () Unit!47809)

(declare-fun e!1812796 () Unit!47809)

(assert (=> d!827895 (= lt!1015119 e!1812796)))

(declare-fun c!461656 () Bool)

(assert (=> d!827895 (= c!461656 (not (forall!6980 z!960 lambda!105559)))))

(assert (=> d!827895 (= (lostCauseZipper!552 z!960) lt!1015120)))

(declare-fun bm!184750 () Bool)

(declare-datatypes ((List!34274 0))(
  ( (Nil!34150) (Cons!34150 (h!39570 Context!5206) (t!233315 List!34274)) )
))
(declare-fun call!184756 () List!34274)

(declare-fun toList!1984 ((InoxSet Context!5206)) List!34274)

(assert (=> bm!184750 (= call!184756 (toList!1984 z!960))))

(declare-fun call!184755 () Bool)

(declare-fun lt!1015118 () List!34274)

(declare-fun lt!1015117 () List!34274)

(declare-fun bm!184751 () Bool)

(declare-fun exists!1050 (List!34274 Int) Bool)

(assert (=> bm!184751 (= call!184755 (exists!1050 (ite c!461656 lt!1015118 lt!1015117) (ite c!461656 lambda!105560 lambda!105561)))))

(declare-fun Unit!47811 () Unit!47809)

(assert (=> b!2863602 (= e!1812796 Unit!47811)))

(assert (=> b!2863602 (= lt!1015117 call!184756)))

(declare-fun lt!1015115 () Unit!47809)

(declare-fun lemmaForallThenNotExists!125 (List!34274 Int) Unit!47809)

(assert (=> b!2863602 (= lt!1015115 (lemmaForallThenNotExists!125 lt!1015117 lambda!105559))))

(assert (=> b!2863602 (not call!184755)))

(declare-fun lt!1015116 () Unit!47809)

(assert (=> b!2863602 (= lt!1015116 lt!1015115)))

(declare-fun Unit!47812 () Unit!47809)

(assert (=> b!2863601 (= e!1812796 Unit!47812)))

(assert (=> b!2863601 (= lt!1015118 call!184756)))

(declare-fun lt!1015114 () Unit!47809)

(declare-fun lemmaNotForallThenExists!125 (List!34274 Int) Unit!47809)

(assert (=> b!2863601 (= lt!1015114 (lemmaNotForallThenExists!125 lt!1015118 lambda!105559))))

(assert (=> b!2863601 call!184755))

(declare-fun lt!1015121 () Unit!47809)

(assert (=> b!2863601 (= lt!1015121 lt!1015114)))

(assert (= (and d!827895 c!461656) b!2863601))

(assert (= (and d!827895 (not c!461656)) b!2863602))

(assert (= (or b!2863601 b!2863602) bm!184750))

(assert (= (or b!2863601 b!2863602) bm!184751))

(declare-fun m!3283189 () Bool)

(assert (=> b!2863602 m!3283189))

(declare-fun m!3283191 () Bool)

(assert (=> bm!184751 m!3283191))

(assert (=> d!827895 m!3283173))

(assert (=> d!827895 m!3283173))

(declare-fun m!3283193 () Bool)

(assert (=> d!827895 m!3283193))

(declare-fun m!3283195 () Bool)

(assert (=> d!827895 m!3283195))

(assert (=> d!827895 m!3283195))

(declare-fun m!3283197 () Bool)

(assert (=> b!2863601 m!3283197))

(declare-fun m!3283199 () Bool)

(assert (=> bm!184750 m!3283199))

(assert (=> b!2863589 d!827895))

(declare-fun bs!520665 () Bool)

(declare-fun d!827897 () Bool)

(assert (= bs!520665 (and d!827897 d!827895)))

(declare-fun lambda!105568 () Int)

(assert (=> bs!520665 (not (= lambda!105568 lambda!105559))))

(declare-fun bs!520666 () Bool)

(assert (= bs!520666 (and d!827897 b!2863601)))

(assert (=> bs!520666 (= lambda!105568 lambda!105560)))

(declare-fun bs!520667 () Bool)

(assert (= bs!520667 (and d!827897 b!2863602)))

(assert (=> bs!520667 (= lambda!105568 lambda!105561)))

(declare-fun lt!1015124 () Option!6331)

(declare-fun isDefined!4951 (Option!6331) Bool)

(declare-fun exists!1051 ((InoxSet Context!5206) Int) Bool)

(assert (=> d!827897 (= (isDefined!4951 lt!1015124) (exists!1051 z!960 lambda!105568))))

(declare-fun e!1812799 () Option!6331)

(assert (=> d!827897 (= lt!1015124 e!1812799)))

(declare-fun c!461665 () Bool)

(assert (=> d!827897 (= c!461665 (exists!1051 z!960 lambda!105568))))

(assert (=> d!827897 (= (getLanguageWitness!267 z!960) lt!1015124)))

(declare-fun b!2863607 () Bool)

(declare-fun getLanguageWitness!268 (Context!5206) Option!6331)

(declare-fun getWitness!581 ((InoxSet Context!5206) Int) Context!5206)

(assert (=> b!2863607 (= e!1812799 (getLanguageWitness!268 (getWitness!581 z!960 lambda!105568)))))

(declare-fun b!2863608 () Bool)

(assert (=> b!2863608 (= e!1812799 None!6330)))

(assert (= (and d!827897 c!461665) b!2863607))

(assert (= (and d!827897 (not c!461665)) b!2863608))

(declare-fun m!3283201 () Bool)

(assert (=> d!827897 m!3283201))

(declare-fun m!3283203 () Bool)

(assert (=> d!827897 m!3283203))

(assert (=> d!827897 m!3283203))

(declare-fun m!3283205 () Bool)

(assert (=> b!2863607 m!3283205))

(assert (=> b!2863607 m!3283205))

(declare-fun m!3283207 () Bool)

(assert (=> b!2863607 m!3283207))

(assert (=> b!2863589 d!827897))

(declare-fun d!827899 () Bool)

(declare-fun c!461668 () Bool)

(declare-fun isEmpty!18640 (List!34273) Bool)

(assert (=> d!827899 (= c!461668 (isEmpty!18640 prefix!919))))

(declare-fun e!1812802 () Bool)

(assert (=> d!827899 (= (prefixMatchZipper!325 z!960 prefix!919) e!1812802)))

(declare-fun b!2863613 () Bool)

(assert (=> b!2863613 (= e!1812802 (not (lostCauseZipper!552 z!960)))))

(declare-fun b!2863614 () Bool)

(declare-fun derivationStepZipper!440 ((InoxSet Context!5206) C!17468) (InoxSet Context!5206))

(declare-fun head!6308 (List!34273) C!17468)

(declare-fun tail!4533 (List!34273) List!34273)

(assert (=> b!2863614 (= e!1812802 (prefixMatchZipper!325 (derivationStepZipper!440 z!960 (head!6308 prefix!919)) (tail!4533 prefix!919)))))

(assert (= (and d!827899 c!461668) b!2863613))

(assert (= (and d!827899 (not c!461668)) b!2863614))

(declare-fun m!3283209 () Bool)

(assert (=> d!827899 m!3283209))

(assert (=> b!2863613 m!3283171))

(declare-fun m!3283211 () Bool)

(assert (=> b!2863614 m!3283211))

(assert (=> b!2863614 m!3283211))

(declare-fun m!3283213 () Bool)

(assert (=> b!2863614 m!3283213))

(declare-fun m!3283215 () Bool)

(assert (=> b!2863614 m!3283215))

(assert (=> b!2863614 m!3283213))

(assert (=> b!2863614 m!3283215))

(declare-fun m!3283217 () Bool)

(assert (=> b!2863614 m!3283217))

(assert (=> start!278874 d!827899))

(declare-fun condSetEmpty!25453 () Bool)

(assert (=> setNonEmpty!25450 (= condSetEmpty!25453 (= setRest!25450 ((as const (Array Context!5206 Bool)) false)))))

(declare-fun setRes!25453 () Bool)

(assert (=> setNonEmpty!25450 (= tp!922110 setRes!25453)))

(declare-fun setIsEmpty!25453 () Bool)

(assert (=> setIsEmpty!25453 setRes!25453))

(declare-fun setElem!25453 () Context!5206)

(declare-fun tp!922115 () Bool)

(declare-fun setNonEmpty!25453 () Bool)

(declare-fun e!1812805 () Bool)

(assert (=> setNonEmpty!25453 (= setRes!25453 (and tp!922115 (inv!46194 setElem!25453) e!1812805))))

(declare-fun setRest!25453 () (InoxSet Context!5206))

(assert (=> setNonEmpty!25453 (= setRest!25450 ((_ map or) (store ((as const (Array Context!5206 Bool)) false) setElem!25453 true) setRest!25453))))

(declare-fun b!2863619 () Bool)

(declare-fun tp!922116 () Bool)

(assert (=> b!2863619 (= e!1812805 tp!922116)))

(assert (= (and setNonEmpty!25450 condSetEmpty!25453) setIsEmpty!25453))

(assert (= (and setNonEmpty!25450 (not condSetEmpty!25453)) setNonEmpty!25453))

(assert (= setNonEmpty!25453 b!2863619))

(declare-fun m!3283219 () Bool)

(assert (=> setNonEmpty!25453 m!3283219))

(declare-fun b!2863624 () Bool)

(declare-fun e!1812808 () Bool)

(declare-fun tp!922121 () Bool)

(declare-fun tp!922122 () Bool)

(assert (=> b!2863624 (= e!1812808 (and tp!922121 tp!922122))))

(assert (=> b!2863587 (= tp!922108 e!1812808)))

(assert (= (and b!2863587 ((_ is Cons!34148) (exprs!3103 setElem!25450))) b!2863624))

(declare-fun b!2863629 () Bool)

(declare-fun e!1812811 () Bool)

(declare-fun tp!922125 () Bool)

(assert (=> b!2863629 (= e!1812811 (and tp_is_empty!15023 tp!922125))))

(assert (=> b!2863590 (= tp!922109 e!1812811)))

(assert (= (and b!2863590 ((_ is Cons!34149) (t!233314 prefix!919))) b!2863629))

(check-sat (not b!2863607) (not setNonEmpty!25453) (not d!827897) tp_is_empty!15023 (not b!2863613) (not b!2863601) (not bm!184750) (not b!2863602) (not b!2863624) (not b!2863619) (not bm!184751) (not d!827889) (not d!827899) (not b!2863614) (not d!827895) (not b!2863629))
(check-sat)
(get-model)

(declare-fun d!827903 () Bool)

(assert (=> d!827903 (= (isDefined!4951 lt!1015124) (not (isEmpty!18639 lt!1015124)))))

(declare-fun bs!520669 () Bool)

(assert (= bs!520669 d!827903))

(declare-fun m!3283223 () Bool)

(assert (=> bs!520669 m!3283223))

(assert (=> d!827897 d!827903))

(declare-fun d!827905 () Bool)

(declare-fun lt!1015143 () Bool)

(assert (=> d!827905 (= lt!1015143 (exists!1050 (toList!1984 z!960) lambda!105568))))

(declare-fun choose!16868 ((InoxSet Context!5206) Int) Bool)

(assert (=> d!827905 (= lt!1015143 (choose!16868 z!960 lambda!105568))))

(assert (=> d!827905 (= (exists!1051 z!960 lambda!105568) lt!1015143)))

(declare-fun bs!520670 () Bool)

(assert (= bs!520670 d!827905))

(assert (=> bs!520670 m!3283199))

(assert (=> bs!520670 m!3283199))

(declare-fun m!3283225 () Bool)

(assert (=> bs!520670 m!3283225))

(declare-fun m!3283227 () Bool)

(assert (=> bs!520670 m!3283227))

(assert (=> d!827897 d!827905))

(declare-fun d!827907 () Bool)

(declare-fun e!1812821 () Bool)

(assert (=> d!827907 e!1812821))

(declare-fun res!1188931 () Bool)

(assert (=> d!827907 (=> (not res!1188931) (not e!1812821))))

(declare-fun lt!1015154 () List!34274)

(declare-fun noDuplicate!566 (List!34274) Bool)

(assert (=> d!827907 (= res!1188931 (noDuplicate!566 lt!1015154))))

(declare-fun choose!16869 ((InoxSet Context!5206)) List!34274)

(assert (=> d!827907 (= lt!1015154 (choose!16869 z!960))))

(assert (=> d!827907 (= (toList!1984 z!960) lt!1015154)))

(declare-fun b!2863638 () Bool)

(declare-fun content!4668 (List!34274) (InoxSet Context!5206))

(assert (=> b!2863638 (= e!1812821 (= (content!4668 lt!1015154) z!960))))

(assert (= (and d!827907 res!1188931) b!2863638))

(declare-fun m!3283241 () Bool)

(assert (=> d!827907 m!3283241))

(declare-fun m!3283243 () Bool)

(assert (=> d!827907 m!3283243))

(declare-fun m!3283245 () Bool)

(assert (=> b!2863638 m!3283245))

(assert (=> bm!184750 d!827907))

(declare-fun d!827911 () Bool)

(assert (=> d!827911 (= (isEmpty!18640 prefix!919) ((_ is Nil!34149) prefix!919))))

(assert (=> d!827899 d!827911))

(declare-fun bs!520674 () Bool)

(declare-fun d!827913 () Bool)

(assert (= bs!520674 (and d!827913 d!827895)))

(declare-fun lambda!105589 () Int)

(assert (=> bs!520674 (not (= lambda!105589 lambda!105559))))

(declare-fun bs!520675 () Bool)

(assert (= bs!520675 (and d!827913 b!2863601)))

(assert (=> bs!520675 (not (= lambda!105589 lambda!105560))))

(declare-fun bs!520676 () Bool)

(assert (= bs!520676 (and d!827913 b!2863602)))

(assert (=> bs!520676 (not (= lambda!105589 lambda!105561))))

(declare-fun bs!520677 () Bool)

(assert (= bs!520677 (and d!827913 d!827897)))

(assert (=> bs!520677 (not (= lambda!105589 lambda!105568))))

(assert (=> d!827913 true))

(declare-fun order!18073 () Int)

(declare-fun dynLambda!14256 (Int Int) Int)

(assert (=> d!827913 (< (dynLambda!14256 order!18073 (ite c!461656 lambda!105560 lambda!105561)) (dynLambda!14256 order!18073 lambda!105589))))

(declare-fun forall!6983 (List!34274 Int) Bool)

(assert (=> d!827913 (= (exists!1050 (ite c!461656 lt!1015118 lt!1015117) (ite c!461656 lambda!105560 lambda!105561)) (not (forall!6983 (ite c!461656 lt!1015118 lt!1015117) lambda!105589)))))

(declare-fun bs!520678 () Bool)

(assert (= bs!520678 d!827913))

(declare-fun m!3283247 () Bool)

(assert (=> bs!520678 m!3283247))

(assert (=> bm!184751 d!827913))

(declare-fun bs!520682 () Bool)

(declare-fun d!827915 () Bool)

(assert (= bs!520682 (and d!827915 d!827889)))

(declare-fun lambda!105599 () Int)

(assert (=> bs!520682 (not (= lambda!105599 lambda!105546))))

(declare-fun lt!1015164 () Option!6331)

(declare-fun exists!1054 (List!34272 Int) Bool)

(assert (=> d!827915 (= (isEmpty!18639 lt!1015164) (exists!1054 (exprs!3103 (getWitness!581 z!960 lambda!105568)) lambda!105599))))

(declare-fun e!1812842 () Option!6331)

(assert (=> d!827915 (= lt!1015164 e!1812842)))

(declare-fun c!461696 () Bool)

(assert (=> d!827915 (= c!461696 ((_ is Cons!34148) (exprs!3103 (getWitness!581 z!960 lambda!105568))))))

(assert (=> d!827915 (= (getLanguageWitness!268 (getWitness!581 z!960 lambda!105568)) lt!1015164)))

(declare-fun b!2863674 () Bool)

(declare-fun e!1812840 () Option!6331)

(assert (=> b!2863674 (= e!1812842 e!1812840)))

(declare-fun lt!1015166 () Option!6331)

(declare-fun getLanguageWitness!270 (Regex!8643) Option!6331)

(assert (=> b!2863674 (= lt!1015166 (getLanguageWitness!270 (h!39568 (exprs!3103 (getWitness!581 z!960 lambda!105568)))))))

(declare-fun c!461698 () Bool)

(assert (=> b!2863674 (= c!461698 ((_ is Some!6330) lt!1015166))))

(declare-fun b!2863675 () Bool)

(assert (=> b!2863675 (= e!1812842 (Some!6330 Nil!34149))))

(declare-fun b!2863676 () Bool)

(assert (=> b!2863676 (= e!1812840 None!6330)))

(declare-fun b!2863677 () Bool)

(declare-fun e!1812841 () Option!6331)

(declare-fun lt!1015165 () Option!6331)

(declare-fun ++!8136 (List!34273 List!34273) List!34273)

(assert (=> b!2863677 (= e!1812841 (Some!6330 (++!8136 (v!34452 lt!1015166) (v!34452 lt!1015165))))))

(declare-fun b!2863678 () Bool)

(assert (=> b!2863678 (= e!1812841 None!6330)))

(declare-fun b!2863679 () Bool)

(declare-fun c!461697 () Bool)

(assert (=> b!2863679 (= c!461697 ((_ is Some!6330) lt!1015165))))

(assert (=> b!2863679 (= lt!1015165 (getLanguageWitness!268 (Context!5207 (t!233313 (exprs!3103 (getWitness!581 z!960 lambda!105568))))))))

(assert (=> b!2863679 (= e!1812840 e!1812841)))

(assert (= (and d!827915 c!461696) b!2863674))

(assert (= (and d!827915 (not c!461696)) b!2863675))

(assert (= (and b!2863674 c!461698) b!2863679))

(assert (= (and b!2863674 (not c!461698)) b!2863676))

(assert (= (and b!2863679 c!461697) b!2863677))

(assert (= (and b!2863679 (not c!461697)) b!2863678))

(declare-fun m!3283259 () Bool)

(assert (=> d!827915 m!3283259))

(declare-fun m!3283261 () Bool)

(assert (=> d!827915 m!3283261))

(declare-fun m!3283263 () Bool)

(assert (=> b!2863674 m!3283263))

(declare-fun m!3283265 () Bool)

(assert (=> b!2863677 m!3283265))

(declare-fun m!3283267 () Bool)

(assert (=> b!2863679 m!3283267))

(assert (=> b!2863607 d!827915))

(declare-fun d!827917 () Bool)

(declare-fun e!1812845 () Bool)

(assert (=> d!827917 e!1812845))

(declare-fun res!1188934 () Bool)

(assert (=> d!827917 (=> (not res!1188934) (not e!1812845))))

(declare-fun lt!1015169 () Context!5206)

(declare-fun dynLambda!14257 (Int Context!5206) Bool)

(assert (=> d!827917 (= res!1188934 (dynLambda!14257 lambda!105568 lt!1015169))))

(declare-fun getWitness!583 (List!34274 Int) Context!5206)

(assert (=> d!827917 (= lt!1015169 (getWitness!583 (toList!1984 z!960) lambda!105568))))

(assert (=> d!827917 (exists!1051 z!960 lambda!105568)))

(assert (=> d!827917 (= (getWitness!581 z!960 lambda!105568) lt!1015169)))

(declare-fun b!2863682 () Bool)

(assert (=> b!2863682 (= e!1812845 (select z!960 lt!1015169))))

(assert (= (and d!827917 res!1188934) b!2863682))

(declare-fun b_lambda!85843 () Bool)

(assert (=> (not b_lambda!85843) (not d!827917)))

(declare-fun m!3283269 () Bool)

(assert (=> d!827917 m!3283269))

(assert (=> d!827917 m!3283199))

(assert (=> d!827917 m!3283199))

(declare-fun m!3283271 () Bool)

(assert (=> d!827917 m!3283271))

(assert (=> d!827917 m!3283203))

(declare-fun m!3283273 () Bool)

(assert (=> b!2863682 m!3283273))

(assert (=> b!2863607 d!827917))

(declare-fun d!827919 () Bool)

(assert (=> d!827919 (= (isEmpty!18639 (getLanguageWitness!267 z!960)) (not ((_ is Some!6330) (getLanguageWitness!267 z!960))))))

(assert (=> d!827895 d!827919))

(assert (=> d!827895 d!827897))

(declare-fun d!827921 () Bool)

(declare-fun lt!1015172 () Bool)

(assert (=> d!827921 (= lt!1015172 (forall!6983 (toList!1984 z!960) lambda!105559))))

(declare-fun choose!16870 ((InoxSet Context!5206) Int) Bool)

(assert (=> d!827921 (= lt!1015172 (choose!16870 z!960 lambda!105559))))

(assert (=> d!827921 (= (forall!6980 z!960 lambda!105559) lt!1015172)))

(declare-fun bs!520683 () Bool)

(assert (= bs!520683 d!827921))

(assert (=> bs!520683 m!3283199))

(assert (=> bs!520683 m!3283199))

(declare-fun m!3283275 () Bool)

(assert (=> bs!520683 m!3283275))

(declare-fun m!3283277 () Bool)

(assert (=> bs!520683 m!3283277))

(assert (=> d!827895 d!827921))

(declare-fun d!827923 () Bool)

(declare-fun res!1188939 () Bool)

(declare-fun e!1812850 () Bool)

(assert (=> d!827923 (=> res!1188939 e!1812850)))

(assert (=> d!827923 (= res!1188939 ((_ is Nil!34148) (exprs!3103 setElem!25450)))))

(assert (=> d!827923 (= (forall!6979 (exprs!3103 setElem!25450) lambda!105546) e!1812850)))

(declare-fun b!2863687 () Bool)

(declare-fun e!1812851 () Bool)

(assert (=> b!2863687 (= e!1812850 e!1812851)))

(declare-fun res!1188940 () Bool)

(assert (=> b!2863687 (=> (not res!1188940) (not e!1812851))))

(declare-fun dynLambda!14258 (Int Regex!8643) Bool)

(assert (=> b!2863687 (= res!1188940 (dynLambda!14258 lambda!105546 (h!39568 (exprs!3103 setElem!25450))))))

(declare-fun b!2863688 () Bool)

(assert (=> b!2863688 (= e!1812851 (forall!6979 (t!233313 (exprs!3103 setElem!25450)) lambda!105546))))

(assert (= (and d!827923 (not res!1188939)) b!2863687))

(assert (= (and b!2863687 res!1188940) b!2863688))

(declare-fun b_lambda!85845 () Bool)

(assert (=> (not b_lambda!85845) (not b!2863687)))

(declare-fun m!3283279 () Bool)

(assert (=> b!2863687 m!3283279))

(declare-fun m!3283281 () Bool)

(assert (=> b!2863688 m!3283281))

(assert (=> d!827889 d!827923))

(declare-fun bs!520684 () Bool)

(declare-fun d!827925 () Bool)

(assert (= bs!520684 (and d!827925 d!827889)))

(declare-fun lambda!105600 () Int)

(assert (=> bs!520684 (= lambda!105600 lambda!105546)))

(declare-fun bs!520685 () Bool)

(assert (= bs!520685 (and d!827925 d!827915)))

(assert (=> bs!520685 (not (= lambda!105600 lambda!105599))))

(assert (=> d!827925 (= (inv!46194 setElem!25453) (forall!6979 (exprs!3103 setElem!25453) lambda!105600))))

(declare-fun bs!520686 () Bool)

(assert (= bs!520686 d!827925))

(declare-fun m!3283283 () Bool)

(assert (=> bs!520686 m!3283283))

(assert (=> setNonEmpty!25453 d!827925))

(declare-fun bs!520687 () Bool)

(declare-fun d!827927 () Bool)

(assert (= bs!520687 (and d!827927 b!2863602)))

(declare-fun lambda!105603 () Int)

(assert (=> bs!520687 (not (= lambda!105603 lambda!105561))))

(declare-fun bs!520688 () Bool)

(assert (= bs!520688 (and d!827927 d!827895)))

(assert (=> bs!520688 (not (= lambda!105603 lambda!105559))))

(declare-fun bs!520689 () Bool)

(assert (= bs!520689 (and d!827927 d!827913)))

(assert (=> bs!520689 (= (= lambda!105559 (ite c!461656 lambda!105560 lambda!105561)) (= lambda!105603 lambda!105589))))

(declare-fun bs!520690 () Bool)

(assert (= bs!520690 (and d!827927 d!827897)))

(assert (=> bs!520690 (not (= lambda!105603 lambda!105568))))

(declare-fun bs!520691 () Bool)

(assert (= bs!520691 (and d!827927 b!2863601)))

(assert (=> bs!520691 (not (= lambda!105603 lambda!105560))))

(assert (=> d!827927 true))

(assert (=> d!827927 (< (dynLambda!14256 order!18073 lambda!105559) (dynLambda!14256 order!18073 lambda!105603))))

(assert (=> d!827927 (exists!1050 lt!1015118 lambda!105603)))

(declare-fun lt!1015175 () Unit!47809)

(declare-fun choose!16871 (List!34274 Int) Unit!47809)

(assert (=> d!827927 (= lt!1015175 (choose!16871 lt!1015118 lambda!105559))))

(assert (=> d!827927 (not (forall!6983 lt!1015118 lambda!105559))))

(assert (=> d!827927 (= (lemmaNotForallThenExists!125 lt!1015118 lambda!105559) lt!1015175)))

(declare-fun bs!520692 () Bool)

(assert (= bs!520692 d!827927))

(declare-fun m!3283285 () Bool)

(assert (=> bs!520692 m!3283285))

(declare-fun m!3283287 () Bool)

(assert (=> bs!520692 m!3283287))

(declare-fun m!3283289 () Bool)

(assert (=> bs!520692 m!3283289))

(assert (=> b!2863601 d!827927))

(declare-fun bs!520693 () Bool)

(declare-fun d!827929 () Bool)

(assert (= bs!520693 (and d!827929 b!2863602)))

(declare-fun lambda!105606 () Int)

(assert (=> bs!520693 (not (= lambda!105606 lambda!105561))))

(declare-fun bs!520694 () Bool)

(assert (= bs!520694 (and d!827929 d!827895)))

(assert (=> bs!520694 (not (= lambda!105606 lambda!105559))))

(declare-fun bs!520695 () Bool)

(assert (= bs!520695 (and d!827929 d!827927)))

(assert (=> bs!520695 (= lambda!105606 lambda!105603)))

(declare-fun bs!520696 () Bool)

(assert (= bs!520696 (and d!827929 d!827913)))

(assert (=> bs!520696 (= (= lambda!105559 (ite c!461656 lambda!105560 lambda!105561)) (= lambda!105606 lambda!105589))))

(declare-fun bs!520697 () Bool)

(assert (= bs!520697 (and d!827929 d!827897)))

(assert (=> bs!520697 (not (= lambda!105606 lambda!105568))))

(declare-fun bs!520698 () Bool)

(assert (= bs!520698 (and d!827929 b!2863601)))

(assert (=> bs!520698 (not (= lambda!105606 lambda!105560))))

(assert (=> d!827929 true))

(assert (=> d!827929 (< (dynLambda!14256 order!18073 lambda!105559) (dynLambda!14256 order!18073 lambda!105606))))

(assert (=> d!827929 (not (exists!1050 lt!1015117 lambda!105606))))

(declare-fun lt!1015178 () Unit!47809)

(declare-fun choose!16872 (List!34274 Int) Unit!47809)

(assert (=> d!827929 (= lt!1015178 (choose!16872 lt!1015117 lambda!105559))))

(assert (=> d!827929 (forall!6983 lt!1015117 lambda!105559)))

(assert (=> d!827929 (= (lemmaForallThenNotExists!125 lt!1015117 lambda!105559) lt!1015178)))

(declare-fun bs!520699 () Bool)

(assert (= bs!520699 d!827929))

(declare-fun m!3283291 () Bool)

(assert (=> bs!520699 m!3283291))

(declare-fun m!3283293 () Bool)

(assert (=> bs!520699 m!3283293))

(declare-fun m!3283295 () Bool)

(assert (=> bs!520699 m!3283295))

(assert (=> b!2863602 d!827929))

(assert (=> b!2863613 d!827895))

(declare-fun d!827931 () Bool)

(declare-fun c!461699 () Bool)

(assert (=> d!827931 (= c!461699 (isEmpty!18640 (tail!4533 prefix!919)))))

(declare-fun e!1812856 () Bool)

(assert (=> d!827931 (= (prefixMatchZipper!325 (derivationStepZipper!440 z!960 (head!6308 prefix!919)) (tail!4533 prefix!919)) e!1812856)))

(declare-fun b!2863689 () Bool)

(assert (=> b!2863689 (= e!1812856 (not (lostCauseZipper!552 (derivationStepZipper!440 z!960 (head!6308 prefix!919)))))))

(declare-fun b!2863690 () Bool)

(assert (=> b!2863690 (= e!1812856 (prefixMatchZipper!325 (derivationStepZipper!440 (derivationStepZipper!440 z!960 (head!6308 prefix!919)) (head!6308 (tail!4533 prefix!919))) (tail!4533 (tail!4533 prefix!919))))))

(assert (= (and d!827931 c!461699) b!2863689))

(assert (= (and d!827931 (not c!461699)) b!2863690))

(assert (=> d!827931 m!3283215))

(declare-fun m!3283297 () Bool)

(assert (=> d!827931 m!3283297))

(assert (=> b!2863689 m!3283213))

(declare-fun m!3283299 () Bool)

(assert (=> b!2863689 m!3283299))

(assert (=> b!2863690 m!3283215))

(declare-fun m!3283301 () Bool)

(assert (=> b!2863690 m!3283301))

(assert (=> b!2863690 m!3283213))

(assert (=> b!2863690 m!3283301))

(declare-fun m!3283303 () Bool)

(assert (=> b!2863690 m!3283303))

(assert (=> b!2863690 m!3283215))

(declare-fun m!3283305 () Bool)

(assert (=> b!2863690 m!3283305))

(assert (=> b!2863690 m!3283303))

(assert (=> b!2863690 m!3283305))

(declare-fun m!3283307 () Bool)

(assert (=> b!2863690 m!3283307))

(assert (=> b!2863614 d!827931))

(declare-fun d!827933 () Bool)

(assert (=> d!827933 true))

(declare-fun lambda!105609 () Int)

(declare-fun flatMap!211 ((InoxSet Context!5206) Int) (InoxSet Context!5206))

(assert (=> d!827933 (= (derivationStepZipper!440 z!960 (head!6308 prefix!919)) (flatMap!211 z!960 lambda!105609))))

(declare-fun bs!520700 () Bool)

(assert (= bs!520700 d!827933))

(declare-fun m!3283309 () Bool)

(assert (=> bs!520700 m!3283309))

(assert (=> b!2863614 d!827933))

(declare-fun d!827935 () Bool)

(assert (=> d!827935 (= (head!6308 prefix!919) (h!39569 prefix!919))))

(assert (=> b!2863614 d!827935))

(declare-fun d!827937 () Bool)

(assert (=> d!827937 (= (tail!4533 prefix!919) (t!233314 prefix!919))))

(assert (=> b!2863614 d!827937))

(declare-fun b!2863693 () Bool)

(declare-fun e!1812857 () Bool)

(declare-fun tp!922141 () Bool)

(assert (=> b!2863693 (= e!1812857 (and tp_is_empty!15023 tp!922141))))

(assert (=> b!2863629 (= tp!922125 e!1812857)))

(assert (= (and b!2863629 ((_ is Cons!34149) (t!233314 (t!233314 prefix!919)))) b!2863693))

(declare-fun e!1812860 () Bool)

(assert (=> b!2863624 (= tp!922121 e!1812860)))

(declare-fun b!2863705 () Bool)

(declare-fun tp!922154 () Bool)

(declare-fun tp!922153 () Bool)

(assert (=> b!2863705 (= e!1812860 (and tp!922154 tp!922153))))

(declare-fun b!2863704 () Bool)

(assert (=> b!2863704 (= e!1812860 tp_is_empty!15023)))

(declare-fun b!2863706 () Bool)

(declare-fun tp!922152 () Bool)

(assert (=> b!2863706 (= e!1812860 tp!922152)))

(declare-fun b!2863707 () Bool)

(declare-fun tp!922156 () Bool)

(declare-fun tp!922155 () Bool)

(assert (=> b!2863707 (= e!1812860 (and tp!922156 tp!922155))))

(assert (= (and b!2863624 ((_ is ElementMatch!8643) (h!39568 (exprs!3103 setElem!25450)))) b!2863704))

(assert (= (and b!2863624 ((_ is Concat!13964) (h!39568 (exprs!3103 setElem!25450)))) b!2863705))

(assert (= (and b!2863624 ((_ is Star!8643) (h!39568 (exprs!3103 setElem!25450)))) b!2863706))

(assert (= (and b!2863624 ((_ is Union!8643) (h!39568 (exprs!3103 setElem!25450)))) b!2863707))

(declare-fun b!2863708 () Bool)

(declare-fun e!1812861 () Bool)

(declare-fun tp!922157 () Bool)

(declare-fun tp!922158 () Bool)

(assert (=> b!2863708 (= e!1812861 (and tp!922157 tp!922158))))

(assert (=> b!2863624 (= tp!922122 e!1812861)))

(assert (= (and b!2863624 ((_ is Cons!34148) (t!233313 (exprs!3103 setElem!25450)))) b!2863708))

(declare-fun condSetEmpty!25457 () Bool)

(assert (=> setNonEmpty!25453 (= condSetEmpty!25457 (= setRest!25453 ((as const (Array Context!5206 Bool)) false)))))

(declare-fun setRes!25457 () Bool)

(assert (=> setNonEmpty!25453 (= tp!922115 setRes!25457)))

(declare-fun setIsEmpty!25457 () Bool)

(assert (=> setIsEmpty!25457 setRes!25457))

(declare-fun setNonEmpty!25457 () Bool)

(declare-fun tp!922159 () Bool)

(declare-fun setElem!25457 () Context!5206)

(declare-fun e!1812862 () Bool)

(assert (=> setNonEmpty!25457 (= setRes!25457 (and tp!922159 (inv!46194 setElem!25457) e!1812862))))

(declare-fun setRest!25457 () (InoxSet Context!5206))

(assert (=> setNonEmpty!25457 (= setRest!25453 ((_ map or) (store ((as const (Array Context!5206 Bool)) false) setElem!25457 true) setRest!25457))))

(declare-fun b!2863709 () Bool)

(declare-fun tp!922160 () Bool)

(assert (=> b!2863709 (= e!1812862 tp!922160)))

(assert (= (and setNonEmpty!25453 condSetEmpty!25457) setIsEmpty!25457))

(assert (= (and setNonEmpty!25453 (not condSetEmpty!25457)) setNonEmpty!25457))

(assert (= setNonEmpty!25457 b!2863709))

(declare-fun m!3283311 () Bool)

(assert (=> setNonEmpty!25457 m!3283311))

(declare-fun b!2863710 () Bool)

(declare-fun e!1812863 () Bool)

(declare-fun tp!922161 () Bool)

(declare-fun tp!922162 () Bool)

(assert (=> b!2863710 (= e!1812863 (and tp!922161 tp!922162))))

(assert (=> b!2863619 (= tp!922116 e!1812863)))

(assert (= (and b!2863619 ((_ is Cons!34148) (exprs!3103 setElem!25453))) b!2863710))

(declare-fun b_lambda!85847 () Bool)

(assert (= b_lambda!85843 (or d!827897 b_lambda!85847)))

(declare-fun bs!520701 () Bool)

(declare-fun d!827939 () Bool)

(assert (= bs!520701 (and d!827939 d!827897)))

(declare-fun lostCause!768 (Context!5206) Bool)

(assert (=> bs!520701 (= (dynLambda!14257 lambda!105568 lt!1015169) (not (lostCause!768 lt!1015169)))))

(declare-fun m!3283313 () Bool)

(assert (=> bs!520701 m!3283313))

(assert (=> d!827917 d!827939))

(declare-fun b_lambda!85849 () Bool)

(assert (= b_lambda!85845 (or d!827889 b_lambda!85849)))

(declare-fun bs!520702 () Bool)

(declare-fun d!827941 () Bool)

(assert (= bs!520702 (and d!827941 d!827889)))

(declare-fun validRegex!3489 (Regex!8643) Bool)

(assert (=> bs!520702 (= (dynLambda!14258 lambda!105546 (h!39568 (exprs!3103 setElem!25450))) (validRegex!3489 (h!39568 (exprs!3103 setElem!25450))))))

(declare-fun m!3283315 () Bool)

(assert (=> bs!520702 m!3283315))

(assert (=> b!2863687 d!827941))

(check-sat (not d!827907) (not d!827917) (not setNonEmpty!25457) (not b!2863638) (not d!827931) (not b!2863677) (not b!2863707) (not d!827905) (not b!2863679) (not b!2863690) (not b!2863706) (not b!2863693) (not b!2863709) (not d!827903) (not d!827921) (not b!2863689) (not d!827925) (not d!827927) (not b_lambda!85849) (not b!2863705) (not d!827915) tp_is_empty!15023 (not d!827929) (not d!827913) (not b_lambda!85847) (not b!2863688) (not b!2863674) (not bs!520701) (not b!2863708) (not bs!520702) (not d!827933) (not b!2863710))
(check-sat)

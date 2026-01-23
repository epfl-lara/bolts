; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!661084 () Bool)

(assert start!661084)

(declare-fun b!6841629 () Bool)

(declare-fun res!2793266 () Bool)

(declare-fun e!4126133 () Bool)

(assert (=> b!6841629 (=> (not res!2793266) (not e!4126133))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33600 0))(
  ( (C!33601 (val!26502 Int)) )
))
(declare-datatypes ((Regex!16665 0))(
  ( (ElementMatch!16665 (c!1273721 C!33600)) (Concat!25510 (regOne!33842 Regex!16665) (regTwo!33842 Regex!16665)) (EmptyExpr!16665) (Star!16665 (reg!16994 Regex!16665)) (EmptyLang!16665) (Union!16665 (regOne!33843 Regex!16665) (regTwo!33843 Regex!16665)) )
))
(declare-datatypes ((List!66294 0))(
  ( (Nil!66170) (Cons!66170 (h!72618 Regex!16665) (t!380037 List!66294)) )
))
(declare-datatypes ((Context!12098 0))(
  ( (Context!12099 (exprs!6549 List!66294)) )
))
(declare-fun z!1189 () (InoxSet Context!12098))

(declare-datatypes ((List!66295 0))(
  ( (Nil!66171) (Cons!66171 (h!72619 Context!12098) (t!380038 List!66295)) )
))
(declare-fun zl!343 () List!66295)

(declare-fun toList!10449 ((InoxSet Context!12098)) List!66295)

(assert (=> b!6841629 (= res!2793266 (= (toList!10449 z!1189) zl!343))))

(declare-fun b!6841630 () Bool)

(declare-fun e!4126132 () Bool)

(assert (=> b!6841630 (= e!4126133 (not e!4126132))))

(declare-fun res!2793270 () Bool)

(assert (=> b!6841630 (=> res!2793270 e!4126132)))

(declare-fun e!4126137 () Bool)

(assert (=> b!6841630 (= res!2793270 e!4126137)))

(declare-fun res!2793269 () Bool)

(assert (=> b!6841630 (=> (not res!2793269) (not e!4126137))))

(get-info :version)

(assert (=> b!6841630 (= res!2793269 ((_ is Cons!66171) zl!343))))

(declare-fun r!7292 () Regex!16665)

(declare-datatypes ((List!66296 0))(
  ( (Nil!66172) (Cons!66172 (h!72620 C!33600) (t!380039 List!66296)) )
))
(declare-fun s!2326 () List!66296)

(declare-fun matchR!8848 (Regex!16665 List!66296) Bool)

(declare-fun matchRSpec!3766 (Regex!16665 List!66296) Bool)

(assert (=> b!6841630 (= (matchR!8848 r!7292 s!2326) (matchRSpec!3766 r!7292 s!2326))))

(declare-datatypes ((Unit!160029 0))(
  ( (Unit!160030) )
))
(declare-fun lt!2455334 () Unit!160029)

(declare-fun mainMatchTheorem!3766 (Regex!16665 List!66296) Unit!160029)

(assert (=> b!6841630 (= lt!2455334 (mainMatchTheorem!3766 r!7292 s!2326))))

(declare-fun b!6841631 () Bool)

(declare-fun e!4126138 () Bool)

(declare-fun tp!1873669 () Bool)

(assert (=> b!6841631 (= e!4126138 tp!1873669)))

(declare-fun setIsEmpty!47023 () Bool)

(declare-fun setRes!47023 () Bool)

(assert (=> setIsEmpty!47023 setRes!47023))

(declare-fun b!6841632 () Bool)

(declare-fun e!4126131 () Bool)

(declare-fun tp!1873671 () Bool)

(assert (=> b!6841632 (= e!4126131 tp!1873671)))

(declare-fun b!6841633 () Bool)

(declare-fun tp!1873668 () Bool)

(declare-fun tp!1873673 () Bool)

(assert (=> b!6841633 (= e!4126138 (and tp!1873668 tp!1873673))))

(declare-fun b!6841634 () Bool)

(declare-fun e!4126134 () Bool)

(declare-fun tp!1873675 () Bool)

(assert (=> b!6841634 (= e!4126134 tp!1873675)))

(declare-fun b!6841635 () Bool)

(declare-fun res!2793271 () Bool)

(assert (=> b!6841635 (=> res!2793271 e!4126132)))

(declare-fun isEmpty!38549 (List!66295) Bool)

(assert (=> b!6841635 (= res!2793271 (isEmpty!38549 (t!380038 zl!343)))))

(declare-fun b!6841636 () Bool)

(declare-fun lambda!386803 () Int)

(declare-fun forall!15840 (List!66294 Int) Bool)

(declare-fun unfocusZipperList!2082 (List!66295) List!66294)

(assert (=> b!6841636 (= e!4126132 (forall!15840 (unfocusZipperList!2082 zl!343) lambda!386803))))

(declare-fun res!2793272 () Bool)

(assert (=> start!661084 (=> (not res!2793272) (not e!4126133))))

(declare-fun validRegex!8401 (Regex!16665) Bool)

(assert (=> start!661084 (= res!2793272 (validRegex!8401 r!7292))))

(assert (=> start!661084 e!4126133))

(assert (=> start!661084 e!4126138))

(declare-fun condSetEmpty!47023 () Bool)

(assert (=> start!661084 (= condSetEmpty!47023 (= z!1189 ((as const (Array Context!12098 Bool)) false)))))

(assert (=> start!661084 setRes!47023))

(declare-fun e!4126136 () Bool)

(assert (=> start!661084 e!4126136))

(declare-fun e!4126135 () Bool)

(assert (=> start!661084 e!4126135))

(declare-fun b!6841637 () Bool)

(declare-fun tp_is_empty!42583 () Bool)

(declare-fun tp!1873667 () Bool)

(assert (=> b!6841637 (= e!4126135 (and tp_is_empty!42583 tp!1873667))))

(declare-fun b!6841638 () Bool)

(declare-fun tp!1873674 () Bool)

(declare-fun inv!84909 (Context!12098) Bool)

(assert (=> b!6841638 (= e!4126136 (and (inv!84909 (h!72619 zl!343)) e!4126134 tp!1873674))))

(declare-fun b!6841639 () Bool)

(declare-fun tp!1873666 () Bool)

(declare-fun tp!1873670 () Bool)

(assert (=> b!6841639 (= e!4126138 (and tp!1873666 tp!1873670))))

(declare-fun b!6841640 () Bool)

(assert (=> b!6841640 (= e!4126137 (isEmpty!38549 (t!380038 zl!343)))))

(declare-fun b!6841641 () Bool)

(declare-fun res!2793268 () Bool)

(assert (=> b!6841641 (=> res!2793268 e!4126132)))

(assert (=> b!6841641 (= res!2793268 (or (not ((_ is Cons!66171) zl!343)) ((_ is Nil!66172) s!2326) (not (= zl!343 (Cons!66171 (h!72619 zl!343) (t!380038 zl!343))))))))

(declare-fun setElem!47023 () Context!12098)

(declare-fun tp!1873672 () Bool)

(declare-fun setNonEmpty!47023 () Bool)

(assert (=> setNonEmpty!47023 (= setRes!47023 (and tp!1873672 (inv!84909 setElem!47023) e!4126131))))

(declare-fun setRest!47023 () (InoxSet Context!12098))

(assert (=> setNonEmpty!47023 (= z!1189 ((_ map or) (store ((as const (Array Context!12098 Bool)) false) setElem!47023 true) setRest!47023))))

(declare-fun b!6841642 () Bool)

(declare-fun res!2793267 () Bool)

(assert (=> b!6841642 (=> (not res!2793267) (not e!4126133))))

(declare-fun unfocusZipper!2407 (List!66295) Regex!16665)

(assert (=> b!6841642 (= res!2793267 (= r!7292 (unfocusZipper!2407 zl!343)))))

(declare-fun b!6841643 () Bool)

(assert (=> b!6841643 (= e!4126138 tp_is_empty!42583)))

(assert (= (and start!661084 res!2793272) b!6841629))

(assert (= (and b!6841629 res!2793266) b!6841642))

(assert (= (and b!6841642 res!2793267) b!6841630))

(assert (= (and b!6841630 res!2793269) b!6841640))

(assert (= (and b!6841630 (not res!2793270)) b!6841641))

(assert (= (and b!6841641 (not res!2793268)) b!6841635))

(assert (= (and b!6841635 (not res!2793271)) b!6841636))

(assert (= (and start!661084 ((_ is ElementMatch!16665) r!7292)) b!6841643))

(assert (= (and start!661084 ((_ is Concat!25510) r!7292)) b!6841639))

(assert (= (and start!661084 ((_ is Star!16665) r!7292)) b!6841631))

(assert (= (and start!661084 ((_ is Union!16665) r!7292)) b!6841633))

(assert (= (and start!661084 condSetEmpty!47023) setIsEmpty!47023))

(assert (= (and start!661084 (not condSetEmpty!47023)) setNonEmpty!47023))

(assert (= setNonEmpty!47023 b!6841632))

(assert (= b!6841638 b!6841634))

(assert (= (and start!661084 ((_ is Cons!66171) zl!343)) b!6841638))

(assert (= (and start!661084 ((_ is Cons!66172) s!2326)) b!6841637))

(declare-fun m!7584170 () Bool)

(assert (=> b!6841635 m!7584170))

(declare-fun m!7584172 () Bool)

(assert (=> b!6841636 m!7584172))

(assert (=> b!6841636 m!7584172))

(declare-fun m!7584174 () Bool)

(assert (=> b!6841636 m!7584174))

(declare-fun m!7584176 () Bool)

(assert (=> b!6841642 m!7584176))

(declare-fun m!7584178 () Bool)

(assert (=> start!661084 m!7584178))

(declare-fun m!7584180 () Bool)

(assert (=> b!6841629 m!7584180))

(declare-fun m!7584182 () Bool)

(assert (=> setNonEmpty!47023 m!7584182))

(declare-fun m!7584184 () Bool)

(assert (=> b!6841630 m!7584184))

(declare-fun m!7584186 () Bool)

(assert (=> b!6841630 m!7584186))

(declare-fun m!7584188 () Bool)

(assert (=> b!6841630 m!7584188))

(assert (=> b!6841640 m!7584170))

(declare-fun m!7584190 () Bool)

(assert (=> b!6841638 m!7584190))

(check-sat (not b!6841642) tp_is_empty!42583 (not b!6841629) (not b!6841636) (not b!6841635) (not b!6841638) (not b!6841632) (not b!6841639) (not b!6841630) (not setNonEmpty!47023) (not b!6841640) (not b!6841634) (not b!6841633) (not b!6841631) (not b!6841637) (not start!661084))
(check-sat)
(get-model)

(declare-fun b!6841704 () Bool)

(declare-fun e!4126179 () Bool)

(declare-fun e!4126177 () Bool)

(assert (=> b!6841704 (= e!4126179 e!4126177)))

(declare-fun c!1273736 () Bool)

(assert (=> b!6841704 (= c!1273736 ((_ is Star!16665) r!7292))))

(declare-fun b!6841705 () Bool)

(declare-fun e!4126178 () Bool)

(declare-fun call!623085 () Bool)

(assert (=> b!6841705 (= e!4126178 call!623085)))

(declare-fun b!6841706 () Bool)

(declare-fun e!4126180 () Bool)

(declare-fun e!4126175 () Bool)

(assert (=> b!6841706 (= e!4126180 e!4126175)))

(declare-fun res!2793311 () Bool)

(assert (=> b!6841706 (=> (not res!2793311) (not e!4126175))))

(declare-fun call!623084 () Bool)

(assert (=> b!6841706 (= res!2793311 call!623084)))

(declare-fun b!6841707 () Bool)

(declare-fun res!2793308 () Bool)

(assert (=> b!6841707 (=> (not res!2793308) (not e!4126178))))

(assert (=> b!6841707 (= res!2793308 call!623084)))

(declare-fun e!4126176 () Bool)

(assert (=> b!6841707 (= e!4126176 e!4126178)))

(declare-fun d!2151150 () Bool)

(declare-fun res!2793309 () Bool)

(assert (=> d!2151150 (=> res!2793309 e!4126179)))

(assert (=> d!2151150 (= res!2793309 ((_ is ElementMatch!16665) r!7292))))

(assert (=> d!2151150 (= (validRegex!8401 r!7292) e!4126179)))

(declare-fun b!6841708 () Bool)

(declare-fun res!2793310 () Bool)

(assert (=> b!6841708 (=> res!2793310 e!4126180)))

(assert (=> b!6841708 (= res!2793310 (not ((_ is Concat!25510) r!7292)))))

(assert (=> b!6841708 (= e!4126176 e!4126180)))

(declare-fun bm!623078 () Bool)

(declare-fun c!1273735 () Bool)

(assert (=> bm!623078 (= call!623085 (validRegex!8401 (ite c!1273735 (regTwo!33843 r!7292) (regTwo!33842 r!7292))))))

(declare-fun call!623083 () Bool)

(declare-fun bm!623079 () Bool)

(assert (=> bm!623079 (= call!623083 (validRegex!8401 (ite c!1273736 (reg!16994 r!7292) (ite c!1273735 (regOne!33843 r!7292) (regOne!33842 r!7292)))))))

(declare-fun b!6841709 () Bool)

(assert (=> b!6841709 (= e!4126177 e!4126176)))

(assert (=> b!6841709 (= c!1273735 ((_ is Union!16665) r!7292))))

(declare-fun b!6841710 () Bool)

(declare-fun e!4126174 () Bool)

(assert (=> b!6841710 (= e!4126177 e!4126174)))

(declare-fun res!2793307 () Bool)

(declare-fun nullable!6630 (Regex!16665) Bool)

(assert (=> b!6841710 (= res!2793307 (not (nullable!6630 (reg!16994 r!7292))))))

(assert (=> b!6841710 (=> (not res!2793307) (not e!4126174))))

(declare-fun b!6841711 () Bool)

(assert (=> b!6841711 (= e!4126175 call!623085)))

(declare-fun bm!623080 () Bool)

(assert (=> bm!623080 (= call!623084 call!623083)))

(declare-fun b!6841712 () Bool)

(assert (=> b!6841712 (= e!4126174 call!623083)))

(assert (= (and d!2151150 (not res!2793309)) b!6841704))

(assert (= (and b!6841704 c!1273736) b!6841710))

(assert (= (and b!6841704 (not c!1273736)) b!6841709))

(assert (= (and b!6841710 res!2793307) b!6841712))

(assert (= (and b!6841709 c!1273735) b!6841707))

(assert (= (and b!6841709 (not c!1273735)) b!6841708))

(assert (= (and b!6841707 res!2793308) b!6841705))

(assert (= (and b!6841708 (not res!2793310)) b!6841706))

(assert (= (and b!6841706 res!2793311) b!6841711))

(assert (= (or b!6841705 b!6841711) bm!623078))

(assert (= (or b!6841707 b!6841706) bm!623080))

(assert (= (or b!6841712 bm!623080) bm!623079))

(declare-fun m!7584210 () Bool)

(assert (=> bm!623078 m!7584210))

(declare-fun m!7584212 () Bool)

(assert (=> bm!623079 m!7584212))

(declare-fun m!7584214 () Bool)

(assert (=> b!6841710 m!7584214))

(assert (=> start!661084 d!2151150))

(declare-fun bs!1829213 () Bool)

(declare-fun d!2151154 () Bool)

(assert (= bs!1829213 (and d!2151154 b!6841636)))

(declare-fun lambda!386810 () Int)

(assert (=> bs!1829213 (= lambda!386810 lambda!386803)))

(assert (=> d!2151154 (= (inv!84909 setElem!47023) (forall!15840 (exprs!6549 setElem!47023) lambda!386810))))

(declare-fun bs!1829214 () Bool)

(assert (= bs!1829214 d!2151154))

(declare-fun m!7584216 () Bool)

(assert (=> bs!1829214 m!7584216))

(assert (=> setNonEmpty!47023 d!2151154))

(declare-fun d!2151156 () Bool)

(declare-fun res!2793316 () Bool)

(declare-fun e!4126185 () Bool)

(assert (=> d!2151156 (=> res!2793316 e!4126185)))

(assert (=> d!2151156 (= res!2793316 ((_ is Nil!66170) (unfocusZipperList!2082 zl!343)))))

(assert (=> d!2151156 (= (forall!15840 (unfocusZipperList!2082 zl!343) lambda!386803) e!4126185)))

(declare-fun b!6841717 () Bool)

(declare-fun e!4126186 () Bool)

(assert (=> b!6841717 (= e!4126185 e!4126186)))

(declare-fun res!2793317 () Bool)

(assert (=> b!6841717 (=> (not res!2793317) (not e!4126186))))

(declare-fun dynLambda!26431 (Int Regex!16665) Bool)

(assert (=> b!6841717 (= res!2793317 (dynLambda!26431 lambda!386803 (h!72618 (unfocusZipperList!2082 zl!343))))))

(declare-fun b!6841718 () Bool)

(assert (=> b!6841718 (= e!4126186 (forall!15840 (t!380037 (unfocusZipperList!2082 zl!343)) lambda!386803))))

(assert (= (and d!2151156 (not res!2793316)) b!6841717))

(assert (= (and b!6841717 res!2793317) b!6841718))

(declare-fun b_lambda!258027 () Bool)

(assert (=> (not b_lambda!258027) (not b!6841717)))

(declare-fun m!7584218 () Bool)

(assert (=> b!6841717 m!7584218))

(declare-fun m!7584220 () Bool)

(assert (=> b!6841718 m!7584220))

(assert (=> b!6841636 d!2151156))

(declare-fun bs!1829215 () Bool)

(declare-fun d!2151158 () Bool)

(assert (= bs!1829215 (and d!2151158 b!6841636)))

(declare-fun lambda!386815 () Int)

(assert (=> bs!1829215 (= lambda!386815 lambda!386803)))

(declare-fun bs!1829216 () Bool)

(assert (= bs!1829216 (and d!2151158 d!2151154)))

(assert (=> bs!1829216 (= lambda!386815 lambda!386810)))

(declare-fun lt!2455340 () List!66294)

(assert (=> d!2151158 (forall!15840 lt!2455340 lambda!386815)))

(declare-fun e!4126205 () List!66294)

(assert (=> d!2151158 (= lt!2455340 e!4126205)))

(declare-fun c!1273747 () Bool)

(assert (=> d!2151158 (= c!1273747 ((_ is Cons!66171) zl!343))))

(assert (=> d!2151158 (= (unfocusZipperList!2082 zl!343) lt!2455340)))

(declare-fun b!6841751 () Bool)

(declare-fun generalisedConcat!2257 (List!66294) Regex!16665)

(assert (=> b!6841751 (= e!4126205 (Cons!66170 (generalisedConcat!2257 (exprs!6549 (h!72619 zl!343))) (unfocusZipperList!2082 (t!380038 zl!343))))))

(declare-fun b!6841752 () Bool)

(assert (=> b!6841752 (= e!4126205 Nil!66170)))

(assert (= (and d!2151158 c!1273747) b!6841751))

(assert (= (and d!2151158 (not c!1273747)) b!6841752))

(declare-fun m!7584222 () Bool)

(assert (=> d!2151158 m!7584222))

(declare-fun m!7584224 () Bool)

(assert (=> b!6841751 m!7584224))

(declare-fun m!7584226 () Bool)

(assert (=> b!6841751 m!7584226))

(assert (=> b!6841636 d!2151158))

(declare-fun d!2151160 () Bool)

(assert (=> d!2151160 (= (isEmpty!38549 (t!380038 zl!343)) ((_ is Nil!66171) (t!380038 zl!343)))))

(assert (=> b!6841635 d!2151160))

(declare-fun b!6841800 () Bool)

(declare-fun res!2793359 () Bool)

(declare-fun e!4126233 () Bool)

(assert (=> b!6841800 (=> res!2793359 e!4126233)))

(declare-fun isEmpty!38551 (List!66296) Bool)

(declare-fun tail!12792 (List!66296) List!66296)

(assert (=> b!6841800 (= res!2793359 (not (isEmpty!38551 (tail!12792 s!2326))))))

(declare-fun b!6841801 () Bool)

(declare-fun head!13707 (List!66296) C!33600)

(assert (=> b!6841801 (= e!4126233 (not (= (head!13707 s!2326) (c!1273721 r!7292))))))

(declare-fun d!2151162 () Bool)

(declare-fun e!4126231 () Bool)

(assert (=> d!2151162 e!4126231))

(declare-fun c!1273758 () Bool)

(assert (=> d!2151162 (= c!1273758 ((_ is EmptyExpr!16665) r!7292))))

(declare-fun lt!2455346 () Bool)

(declare-fun e!4126232 () Bool)

(assert (=> d!2151162 (= lt!2455346 e!4126232)))

(declare-fun c!1273760 () Bool)

(assert (=> d!2151162 (= c!1273760 (isEmpty!38551 s!2326))))

(assert (=> d!2151162 (validRegex!8401 r!7292)))

(assert (=> d!2151162 (= (matchR!8848 r!7292 s!2326) lt!2455346)))

(declare-fun b!6841802 () Bool)

(declare-fun e!4126230 () Bool)

(assert (=> b!6841802 (= e!4126231 e!4126230)))

(declare-fun c!1273759 () Bool)

(assert (=> b!6841802 (= c!1273759 ((_ is EmptyLang!16665) r!7292))))

(declare-fun b!6841803 () Bool)

(declare-fun e!4126229 () Bool)

(assert (=> b!6841803 (= e!4126229 (= (head!13707 s!2326) (c!1273721 r!7292)))))

(declare-fun b!6841804 () Bool)

(assert (=> b!6841804 (= e!4126232 (nullable!6630 r!7292))))

(declare-fun b!6841805 () Bool)

(declare-fun res!2793356 () Bool)

(assert (=> b!6841805 (=> (not res!2793356) (not e!4126229))))

(declare-fun call!623094 () Bool)

(assert (=> b!6841805 (= res!2793356 (not call!623094))))

(declare-fun bm!623089 () Bool)

(assert (=> bm!623089 (= call!623094 (isEmpty!38551 s!2326))))

(declare-fun b!6841806 () Bool)

(declare-fun e!4126234 () Bool)

(assert (=> b!6841806 (= e!4126234 e!4126233)))

(declare-fun res!2793354 () Bool)

(assert (=> b!6841806 (=> res!2793354 e!4126233)))

(assert (=> b!6841806 (= res!2793354 call!623094)))

(declare-fun b!6841807 () Bool)

(assert (=> b!6841807 (= e!4126231 (= lt!2455346 call!623094))))

(declare-fun b!6841808 () Bool)

(declare-fun res!2793358 () Bool)

(declare-fun e!4126235 () Bool)

(assert (=> b!6841808 (=> res!2793358 e!4126235)))

(assert (=> b!6841808 (= res!2793358 (not ((_ is ElementMatch!16665) r!7292)))))

(assert (=> b!6841808 (= e!4126230 e!4126235)))

(declare-fun b!6841809 () Bool)

(assert (=> b!6841809 (= e!4126235 e!4126234)))

(declare-fun res!2793357 () Bool)

(assert (=> b!6841809 (=> (not res!2793357) (not e!4126234))))

(assert (=> b!6841809 (= res!2793357 (not lt!2455346))))

(declare-fun b!6841810 () Bool)

(assert (=> b!6841810 (= e!4126230 (not lt!2455346))))

(declare-fun b!6841811 () Bool)

(declare-fun derivativeStep!5313 (Regex!16665 C!33600) Regex!16665)

(assert (=> b!6841811 (= e!4126232 (matchR!8848 (derivativeStep!5313 r!7292 (head!13707 s!2326)) (tail!12792 s!2326)))))

(declare-fun b!6841812 () Bool)

(declare-fun res!2793360 () Bool)

(assert (=> b!6841812 (=> res!2793360 e!4126235)))

(assert (=> b!6841812 (= res!2793360 e!4126229)))

(declare-fun res!2793353 () Bool)

(assert (=> b!6841812 (=> (not res!2793353) (not e!4126229))))

(assert (=> b!6841812 (= res!2793353 lt!2455346)))

(declare-fun b!6841813 () Bool)

(declare-fun res!2793355 () Bool)

(assert (=> b!6841813 (=> (not res!2793355) (not e!4126229))))

(assert (=> b!6841813 (= res!2793355 (isEmpty!38551 (tail!12792 s!2326)))))

(assert (= (and d!2151162 c!1273760) b!6841804))

(assert (= (and d!2151162 (not c!1273760)) b!6841811))

(assert (= (and d!2151162 c!1273758) b!6841807))

(assert (= (and d!2151162 (not c!1273758)) b!6841802))

(assert (= (and b!6841802 c!1273759) b!6841810))

(assert (= (and b!6841802 (not c!1273759)) b!6841808))

(assert (= (and b!6841808 (not res!2793358)) b!6841812))

(assert (= (and b!6841812 res!2793353) b!6841805))

(assert (= (and b!6841805 res!2793356) b!6841813))

(assert (= (and b!6841813 res!2793355) b!6841803))

(assert (= (and b!6841812 (not res!2793360)) b!6841809))

(assert (= (and b!6841809 res!2793357) b!6841806))

(assert (= (and b!6841806 (not res!2793354)) b!6841800))

(assert (= (and b!6841800 (not res!2793359)) b!6841801))

(assert (= (or b!6841807 b!6841806 b!6841805) bm!623089))

(declare-fun m!7584236 () Bool)

(assert (=> d!2151162 m!7584236))

(assert (=> d!2151162 m!7584178))

(declare-fun m!7584238 () Bool)

(assert (=> b!6841813 m!7584238))

(assert (=> b!6841813 m!7584238))

(declare-fun m!7584240 () Bool)

(assert (=> b!6841813 m!7584240))

(declare-fun m!7584242 () Bool)

(assert (=> b!6841804 m!7584242))

(declare-fun m!7584244 () Bool)

(assert (=> b!6841801 m!7584244))

(assert (=> b!6841811 m!7584244))

(assert (=> b!6841811 m!7584244))

(declare-fun m!7584246 () Bool)

(assert (=> b!6841811 m!7584246))

(assert (=> b!6841811 m!7584238))

(assert (=> b!6841811 m!7584246))

(assert (=> b!6841811 m!7584238))

(declare-fun m!7584248 () Bool)

(assert (=> b!6841811 m!7584248))

(assert (=> bm!623089 m!7584236))

(assert (=> b!6841803 m!7584244))

(assert (=> b!6841800 m!7584238))

(assert (=> b!6841800 m!7584238))

(assert (=> b!6841800 m!7584240))

(assert (=> b!6841630 d!2151162))

(declare-fun b!6841892 () Bool)

(assert (=> b!6841892 true))

(assert (=> b!6841892 true))

(declare-fun bs!1829222 () Bool)

(declare-fun b!6841895 () Bool)

(assert (= bs!1829222 (and b!6841895 b!6841892)))

(declare-fun lambda!386828 () Int)

(declare-fun lambda!386827 () Int)

(assert (=> bs!1829222 (not (= lambda!386828 lambda!386827))))

(assert (=> b!6841895 true))

(assert (=> b!6841895 true))

(declare-fun bm!623103 () Bool)

(declare-fun call!623109 () Bool)

(declare-fun c!1273779 () Bool)

(declare-fun Exists!3729 (Int) Bool)

(assert (=> bm!623103 (= call!623109 (Exists!3729 (ite c!1273779 lambda!386827 lambda!386828)))))

(declare-fun b!6841888 () Bool)

(declare-fun e!4126292 () Bool)

(declare-fun e!4126288 () Bool)

(assert (=> b!6841888 (= e!4126292 e!4126288)))

(assert (=> b!6841888 (= c!1273779 ((_ is Star!16665) r!7292))))

(declare-fun b!6841889 () Bool)

(declare-fun e!4126287 () Bool)

(assert (=> b!6841889 (= e!4126287 (matchRSpec!3766 (regTwo!33843 r!7292) s!2326))))

(declare-fun bm!623104 () Bool)

(declare-fun call!623108 () Bool)

(assert (=> bm!623104 (= call!623108 (isEmpty!38551 s!2326))))

(declare-fun b!6841890 () Bool)

(declare-fun c!1273780 () Bool)

(assert (=> b!6841890 (= c!1273780 ((_ is ElementMatch!16665) r!7292))))

(declare-fun e!4126291 () Bool)

(declare-fun e!4126293 () Bool)

(assert (=> b!6841890 (= e!4126291 e!4126293)))

(declare-fun b!6841891 () Bool)

(declare-fun c!1273781 () Bool)

(assert (=> b!6841891 (= c!1273781 ((_ is Union!16665) r!7292))))

(assert (=> b!6841891 (= e!4126293 e!4126292)))

(declare-fun e!4126290 () Bool)

(assert (=> b!6841892 (= e!4126290 call!623109)))

(declare-fun b!6841893 () Bool)

(assert (=> b!6841893 (= e!4126293 (= s!2326 (Cons!66172 (c!1273721 r!7292) Nil!66172)))))

(declare-fun b!6841894 () Bool)

(declare-fun e!4126289 () Bool)

(assert (=> b!6841894 (= e!4126289 e!4126291)))

(declare-fun res!2793402 () Bool)

(assert (=> b!6841894 (= res!2793402 (not ((_ is EmptyLang!16665) r!7292)))))

(assert (=> b!6841894 (=> (not res!2793402) (not e!4126291))))

(assert (=> b!6841895 (= e!4126288 call!623109)))

(declare-fun b!6841896 () Bool)

(assert (=> b!6841896 (= e!4126292 e!4126287)))

(declare-fun res!2793401 () Bool)

(assert (=> b!6841896 (= res!2793401 (matchRSpec!3766 (regOne!33843 r!7292) s!2326))))

(assert (=> b!6841896 (=> res!2793401 e!4126287)))

(declare-fun b!6841898 () Bool)

(declare-fun res!2793403 () Bool)

(assert (=> b!6841898 (=> res!2793403 e!4126290)))

(assert (=> b!6841898 (= res!2793403 call!623108)))

(assert (=> b!6841898 (= e!4126288 e!4126290)))

(declare-fun d!2151168 () Bool)

(declare-fun c!1273778 () Bool)

(assert (=> d!2151168 (= c!1273778 ((_ is EmptyExpr!16665) r!7292))))

(assert (=> d!2151168 (= (matchRSpec!3766 r!7292 s!2326) e!4126289)))

(declare-fun b!6841897 () Bool)

(assert (=> b!6841897 (= e!4126289 call!623108)))

(assert (= (and d!2151168 c!1273778) b!6841897))

(assert (= (and d!2151168 (not c!1273778)) b!6841894))

(assert (= (and b!6841894 res!2793402) b!6841890))

(assert (= (and b!6841890 c!1273780) b!6841893))

(assert (= (and b!6841890 (not c!1273780)) b!6841891))

(assert (= (and b!6841891 c!1273781) b!6841896))

(assert (= (and b!6841891 (not c!1273781)) b!6841888))

(assert (= (and b!6841896 (not res!2793401)) b!6841889))

(assert (= (and b!6841888 c!1273779) b!6841898))

(assert (= (and b!6841888 (not c!1273779)) b!6841895))

(assert (= (and b!6841898 (not res!2793403)) b!6841892))

(assert (= (or b!6841892 b!6841895) bm!623103))

(assert (= (or b!6841897 b!6841898) bm!623104))

(declare-fun m!7584276 () Bool)

(assert (=> bm!623103 m!7584276))

(declare-fun m!7584278 () Bool)

(assert (=> b!6841889 m!7584278))

(assert (=> bm!623104 m!7584236))

(declare-fun m!7584280 () Bool)

(assert (=> b!6841896 m!7584280))

(assert (=> b!6841630 d!2151168))

(declare-fun d!2151178 () Bool)

(assert (=> d!2151178 (= (matchR!8848 r!7292 s!2326) (matchRSpec!3766 r!7292 s!2326))))

(declare-fun lt!2455358 () Unit!160029)

(declare-fun choose!51019 (Regex!16665 List!66296) Unit!160029)

(assert (=> d!2151178 (= lt!2455358 (choose!51019 r!7292 s!2326))))

(assert (=> d!2151178 (validRegex!8401 r!7292)))

(assert (=> d!2151178 (= (mainMatchTheorem!3766 r!7292 s!2326) lt!2455358)))

(declare-fun bs!1829224 () Bool)

(assert (= bs!1829224 d!2151178))

(assert (=> bs!1829224 m!7584184))

(assert (=> bs!1829224 m!7584186))

(declare-fun m!7584286 () Bool)

(assert (=> bs!1829224 m!7584286))

(assert (=> bs!1829224 m!7584178))

(assert (=> b!6841630 d!2151178))

(assert (=> b!6841640 d!2151160))

(declare-fun d!2151180 () Bool)

(declare-fun e!4126319 () Bool)

(assert (=> d!2151180 e!4126319))

(declare-fun res!2793406 () Bool)

(assert (=> d!2151180 (=> (not res!2793406) (not e!4126319))))

(declare-fun lt!2455361 () List!66295)

(declare-fun noDuplicate!2434 (List!66295) Bool)

(assert (=> d!2151180 (= res!2793406 (noDuplicate!2434 lt!2455361))))

(declare-fun choose!51020 ((InoxSet Context!12098)) List!66295)

(assert (=> d!2151180 (= lt!2455361 (choose!51020 z!1189))))

(assert (=> d!2151180 (= (toList!10449 z!1189) lt!2455361)))

(declare-fun b!6841959 () Bool)

(declare-fun content!12969 (List!66295) (InoxSet Context!12098))

(assert (=> b!6841959 (= e!4126319 (= (content!12969 lt!2455361) z!1189))))

(assert (= (and d!2151180 res!2793406) b!6841959))

(declare-fun m!7584290 () Bool)

(assert (=> d!2151180 m!7584290))

(declare-fun m!7584292 () Bool)

(assert (=> d!2151180 m!7584292))

(declare-fun m!7584294 () Bool)

(assert (=> b!6841959 m!7584294))

(assert (=> b!6841629 d!2151180))

(declare-fun d!2151184 () Bool)

(declare-fun lt!2455364 () Regex!16665)

(assert (=> d!2151184 (validRegex!8401 lt!2455364)))

(declare-fun generalisedUnion!2505 (List!66294) Regex!16665)

(assert (=> d!2151184 (= lt!2455364 (generalisedUnion!2505 (unfocusZipperList!2082 zl!343)))))

(assert (=> d!2151184 (= (unfocusZipper!2407 zl!343) lt!2455364)))

(declare-fun bs!1829226 () Bool)

(assert (= bs!1829226 d!2151184))

(declare-fun m!7584296 () Bool)

(assert (=> bs!1829226 m!7584296))

(assert (=> bs!1829226 m!7584172))

(assert (=> bs!1829226 m!7584172))

(declare-fun m!7584298 () Bool)

(assert (=> bs!1829226 m!7584298))

(assert (=> b!6841642 d!2151184))

(declare-fun bs!1829227 () Bool)

(declare-fun d!2151186 () Bool)

(assert (= bs!1829227 (and d!2151186 b!6841636)))

(declare-fun lambda!386829 () Int)

(assert (=> bs!1829227 (= lambda!386829 lambda!386803)))

(declare-fun bs!1829228 () Bool)

(assert (= bs!1829228 (and d!2151186 d!2151154)))

(assert (=> bs!1829228 (= lambda!386829 lambda!386810)))

(declare-fun bs!1829229 () Bool)

(assert (= bs!1829229 (and d!2151186 d!2151158)))

(assert (=> bs!1829229 (= lambda!386829 lambda!386815)))

(assert (=> d!2151186 (= (inv!84909 (h!72619 zl!343)) (forall!15840 (exprs!6549 (h!72619 zl!343)) lambda!386829))))

(declare-fun bs!1829230 () Bool)

(assert (= bs!1829230 d!2151186))

(declare-fun m!7584300 () Bool)

(assert (=> bs!1829230 m!7584300))

(assert (=> b!6841638 d!2151186))

(declare-fun b!6841964 () Bool)

(declare-fun e!4126322 () Bool)

(declare-fun tp!1873736 () Bool)

(assert (=> b!6841964 (= e!4126322 (and tp_is_empty!42583 tp!1873736))))

(assert (=> b!6841637 (= tp!1873667 e!4126322)))

(assert (= (and b!6841637 ((_ is Cons!66172) (t!380039 s!2326))) b!6841964))

(declare-fun b!6841969 () Bool)

(declare-fun e!4126325 () Bool)

(declare-fun tp!1873741 () Bool)

(declare-fun tp!1873742 () Bool)

(assert (=> b!6841969 (= e!4126325 (and tp!1873741 tp!1873742))))

(assert (=> b!6841632 (= tp!1873671 e!4126325)))

(assert (= (and b!6841632 ((_ is Cons!66170) (exprs!6549 setElem!47023))) b!6841969))

(declare-fun condSetEmpty!47029 () Bool)

(assert (=> setNonEmpty!47023 (= condSetEmpty!47029 (= setRest!47023 ((as const (Array Context!12098 Bool)) false)))))

(declare-fun setRes!47029 () Bool)

(assert (=> setNonEmpty!47023 (= tp!1873672 setRes!47029)))

(declare-fun setIsEmpty!47029 () Bool)

(assert (=> setIsEmpty!47029 setRes!47029))

(declare-fun tp!1873747 () Bool)

(declare-fun setNonEmpty!47029 () Bool)

(declare-fun e!4126328 () Bool)

(declare-fun setElem!47029 () Context!12098)

(assert (=> setNonEmpty!47029 (= setRes!47029 (and tp!1873747 (inv!84909 setElem!47029) e!4126328))))

(declare-fun setRest!47029 () (InoxSet Context!12098))

(assert (=> setNonEmpty!47029 (= setRest!47023 ((_ map or) (store ((as const (Array Context!12098 Bool)) false) setElem!47029 true) setRest!47029))))

(declare-fun b!6841974 () Bool)

(declare-fun tp!1873748 () Bool)

(assert (=> b!6841974 (= e!4126328 tp!1873748)))

(assert (= (and setNonEmpty!47023 condSetEmpty!47029) setIsEmpty!47029))

(assert (= (and setNonEmpty!47023 (not condSetEmpty!47029)) setNonEmpty!47029))

(assert (= setNonEmpty!47029 b!6841974))

(declare-fun m!7584302 () Bool)

(assert (=> setNonEmpty!47029 m!7584302))

(declare-fun b!6841988 () Bool)

(declare-fun e!4126331 () Bool)

(declare-fun tp!1873760 () Bool)

(declare-fun tp!1873763 () Bool)

(assert (=> b!6841988 (= e!4126331 (and tp!1873760 tp!1873763))))

(assert (=> b!6841631 (= tp!1873669 e!4126331)))

(declare-fun b!6841986 () Bool)

(declare-fun tp!1873761 () Bool)

(declare-fun tp!1873762 () Bool)

(assert (=> b!6841986 (= e!4126331 (and tp!1873761 tp!1873762))))

(declare-fun b!6841987 () Bool)

(declare-fun tp!1873759 () Bool)

(assert (=> b!6841987 (= e!4126331 tp!1873759)))

(declare-fun b!6841985 () Bool)

(assert (=> b!6841985 (= e!4126331 tp_is_empty!42583)))

(assert (= (and b!6841631 ((_ is ElementMatch!16665) (reg!16994 r!7292))) b!6841985))

(assert (= (and b!6841631 ((_ is Concat!25510) (reg!16994 r!7292))) b!6841986))

(assert (= (and b!6841631 ((_ is Star!16665) (reg!16994 r!7292))) b!6841987))

(assert (= (and b!6841631 ((_ is Union!16665) (reg!16994 r!7292))) b!6841988))

(declare-fun b!6841992 () Bool)

(declare-fun e!4126332 () Bool)

(declare-fun tp!1873765 () Bool)

(declare-fun tp!1873768 () Bool)

(assert (=> b!6841992 (= e!4126332 (and tp!1873765 tp!1873768))))

(assert (=> b!6841639 (= tp!1873666 e!4126332)))

(declare-fun b!6841990 () Bool)

(declare-fun tp!1873766 () Bool)

(declare-fun tp!1873767 () Bool)

(assert (=> b!6841990 (= e!4126332 (and tp!1873766 tp!1873767))))

(declare-fun b!6841991 () Bool)

(declare-fun tp!1873764 () Bool)

(assert (=> b!6841991 (= e!4126332 tp!1873764)))

(declare-fun b!6841989 () Bool)

(assert (=> b!6841989 (= e!4126332 tp_is_empty!42583)))

(assert (= (and b!6841639 ((_ is ElementMatch!16665) (regOne!33842 r!7292))) b!6841989))

(assert (= (and b!6841639 ((_ is Concat!25510) (regOne!33842 r!7292))) b!6841990))

(assert (= (and b!6841639 ((_ is Star!16665) (regOne!33842 r!7292))) b!6841991))

(assert (= (and b!6841639 ((_ is Union!16665) (regOne!33842 r!7292))) b!6841992))

(declare-fun b!6841996 () Bool)

(declare-fun e!4126333 () Bool)

(declare-fun tp!1873770 () Bool)

(declare-fun tp!1873773 () Bool)

(assert (=> b!6841996 (= e!4126333 (and tp!1873770 tp!1873773))))

(assert (=> b!6841639 (= tp!1873670 e!4126333)))

(declare-fun b!6841994 () Bool)

(declare-fun tp!1873771 () Bool)

(declare-fun tp!1873772 () Bool)

(assert (=> b!6841994 (= e!4126333 (and tp!1873771 tp!1873772))))

(declare-fun b!6841995 () Bool)

(declare-fun tp!1873769 () Bool)

(assert (=> b!6841995 (= e!4126333 tp!1873769)))

(declare-fun b!6841993 () Bool)

(assert (=> b!6841993 (= e!4126333 tp_is_empty!42583)))

(assert (= (and b!6841639 ((_ is ElementMatch!16665) (regTwo!33842 r!7292))) b!6841993))

(assert (= (and b!6841639 ((_ is Concat!25510) (regTwo!33842 r!7292))) b!6841994))

(assert (= (and b!6841639 ((_ is Star!16665) (regTwo!33842 r!7292))) b!6841995))

(assert (= (and b!6841639 ((_ is Union!16665) (regTwo!33842 r!7292))) b!6841996))

(declare-fun b!6841997 () Bool)

(declare-fun e!4126334 () Bool)

(declare-fun tp!1873774 () Bool)

(declare-fun tp!1873775 () Bool)

(assert (=> b!6841997 (= e!4126334 (and tp!1873774 tp!1873775))))

(assert (=> b!6841634 (= tp!1873675 e!4126334)))

(assert (= (and b!6841634 ((_ is Cons!66170) (exprs!6549 (h!72619 zl!343)))) b!6841997))

(declare-fun b!6842001 () Bool)

(declare-fun e!4126335 () Bool)

(declare-fun tp!1873777 () Bool)

(declare-fun tp!1873780 () Bool)

(assert (=> b!6842001 (= e!4126335 (and tp!1873777 tp!1873780))))

(assert (=> b!6841633 (= tp!1873668 e!4126335)))

(declare-fun b!6841999 () Bool)

(declare-fun tp!1873778 () Bool)

(declare-fun tp!1873779 () Bool)

(assert (=> b!6841999 (= e!4126335 (and tp!1873778 tp!1873779))))

(declare-fun b!6842000 () Bool)

(declare-fun tp!1873776 () Bool)

(assert (=> b!6842000 (= e!4126335 tp!1873776)))

(declare-fun b!6841998 () Bool)

(assert (=> b!6841998 (= e!4126335 tp_is_empty!42583)))

(assert (= (and b!6841633 ((_ is ElementMatch!16665) (regOne!33843 r!7292))) b!6841998))

(assert (= (and b!6841633 ((_ is Concat!25510) (regOne!33843 r!7292))) b!6841999))

(assert (= (and b!6841633 ((_ is Star!16665) (regOne!33843 r!7292))) b!6842000))

(assert (= (and b!6841633 ((_ is Union!16665) (regOne!33843 r!7292))) b!6842001))

(declare-fun b!6842005 () Bool)

(declare-fun e!4126336 () Bool)

(declare-fun tp!1873782 () Bool)

(declare-fun tp!1873785 () Bool)

(assert (=> b!6842005 (= e!4126336 (and tp!1873782 tp!1873785))))

(assert (=> b!6841633 (= tp!1873673 e!4126336)))

(declare-fun b!6842003 () Bool)

(declare-fun tp!1873783 () Bool)

(declare-fun tp!1873784 () Bool)

(assert (=> b!6842003 (= e!4126336 (and tp!1873783 tp!1873784))))

(declare-fun b!6842004 () Bool)

(declare-fun tp!1873781 () Bool)

(assert (=> b!6842004 (= e!4126336 tp!1873781)))

(declare-fun b!6842002 () Bool)

(assert (=> b!6842002 (= e!4126336 tp_is_empty!42583)))

(assert (= (and b!6841633 ((_ is ElementMatch!16665) (regTwo!33843 r!7292))) b!6842002))

(assert (= (and b!6841633 ((_ is Concat!25510) (regTwo!33843 r!7292))) b!6842003))

(assert (= (and b!6841633 ((_ is Star!16665) (regTwo!33843 r!7292))) b!6842004))

(assert (= (and b!6841633 ((_ is Union!16665) (regTwo!33843 r!7292))) b!6842005))

(declare-fun b!6842013 () Bool)

(declare-fun e!4126342 () Bool)

(declare-fun tp!1873790 () Bool)

(assert (=> b!6842013 (= e!4126342 tp!1873790)))

(declare-fun b!6842012 () Bool)

(declare-fun tp!1873791 () Bool)

(declare-fun e!4126341 () Bool)

(assert (=> b!6842012 (= e!4126341 (and (inv!84909 (h!72619 (t!380038 zl!343))) e!4126342 tp!1873791))))

(assert (=> b!6841638 (= tp!1873674 e!4126341)))

(assert (= b!6842012 b!6842013))

(assert (= (and b!6841638 ((_ is Cons!66171) (t!380038 zl!343))) b!6842012))

(declare-fun m!7584304 () Bool)

(assert (=> b!6842012 m!7584304))

(declare-fun b_lambda!258033 () Bool)

(assert (= b_lambda!258027 (or b!6841636 b_lambda!258033)))

(declare-fun bs!1829231 () Bool)

(declare-fun d!2151188 () Bool)

(assert (= bs!1829231 (and d!2151188 b!6841636)))

(assert (=> bs!1829231 (= (dynLambda!26431 lambda!386803 (h!72618 (unfocusZipperList!2082 zl!343))) (validRegex!8401 (h!72618 (unfocusZipperList!2082 zl!343))))))

(declare-fun m!7584306 () Bool)

(assert (=> bs!1829231 m!7584306))

(assert (=> b!6841717 d!2151188))

(check-sat (not b!6842012) (not b!6841990) (not b!6841751) (not b!6841969) (not b!6842004) (not bm!623089) (not b!6841997) (not b!6841995) (not b!6841718) (not b!6841974) (not b!6841996) (not b!6841804) (not d!2151180) (not d!2151186) (not b!6841987) (not bs!1829231) tp_is_empty!42583 (not b!6842003) (not b!6841889) (not b!6841986) (not b!6841991) (not b!6841710) (not d!2151158) (not b!6841803) (not b!6841813) (not b!6841896) (not bm!623078) (not b_lambda!258033) (not setNonEmpty!47029) (not b!6841959) (not b!6842005) (not b!6841800) (not b!6841994) (not d!2151154) (not b!6841988) (not b!6841811) (not bm!623079) (not d!2151162) (not b!6841801) (not b!6842000) (not b!6842013) (not b!6842001) (not bm!623104) (not b!6841964) (not d!2151184) (not b!6841992) (not bm!623103) (not b!6841999) (not d!2151178))
(check-sat)

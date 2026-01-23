; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!550194 () Bool)

(assert start!550194)

(declare-fun b!5201207 () Bool)

(assert (=> b!5201207 true))

(assert (=> b!5201207 true))

(declare-fun lambda!260603 () Int)

(declare-fun lambda!260602 () Int)

(assert (=> b!5201207 (not (= lambda!260603 lambda!260602))))

(assert (=> b!5201207 true))

(assert (=> b!5201207 true))

(declare-fun b!5201198 () Bool)

(assert (=> b!5201198 true))

(declare-fun b!5201187 () Bool)

(declare-fun e!3238740 () Bool)

(declare-fun tp!1458901 () Bool)

(assert (=> b!5201187 (= e!3238740 tp!1458901)))

(declare-fun b!5201188 () Bool)

(declare-fun e!3238737 () Bool)

(declare-datatypes ((C!29840 0))(
  ( (C!29841 (val!24622 Int)) )
))
(declare-datatypes ((Regex!14785 0))(
  ( (ElementMatch!14785 (c!896412 C!29840)) (Concat!23630 (regOne!30082 Regex!14785) (regTwo!30082 Regex!14785)) (EmptyExpr!14785) (Star!14785 (reg!15114 Regex!14785)) (EmptyLang!14785) (Union!14785 (regOne!30083 Regex!14785) (regTwo!30083 Regex!14785)) )
))
(declare-datatypes ((List!60654 0))(
  ( (Nil!60530) (Cons!60530 (h!66978 Regex!14785) (t!373807 List!60654)) )
))
(declare-datatypes ((Context!8338 0))(
  ( (Context!8339 (exprs!4669 List!60654)) )
))
(declare-datatypes ((List!60655 0))(
  ( (Nil!60531) (Cons!60531 (h!66979 Context!8338) (t!373808 List!60655)) )
))
(declare-fun zl!343 () List!60655)

(declare-fun lambda!260605 () Int)

(declare-fun forall!14225 (List!60654 Int) Bool)

(assert (=> b!5201188 (= e!3238737 (forall!14225 (t!373807 (exprs!4669 (h!66979 zl!343))) lambda!260605))))

(declare-fun b!5201189 () Bool)

(declare-datatypes ((Unit!152406 0))(
  ( (Unit!152407) )
))
(declare-fun e!3238739 () Unit!152406)

(declare-fun Unit!152408 () Unit!152406)

(assert (=> b!5201189 (= e!3238739 Unit!152408)))

(declare-fun b!5201190 () Bool)

(declare-fun res!2209755 () Bool)

(declare-fun e!3238731 () Bool)

(assert (=> b!5201190 (=> res!2209755 e!3238731)))

(get-info :version)

(assert (=> b!5201190 (= res!2209755 (not ((_ is Cons!60530) (exprs!4669 (h!66979 zl!343)))))))

(declare-fun b!5201191 () Bool)

(declare-fun res!2209759 () Bool)

(assert (=> b!5201191 (=> res!2209759 e!3238731)))

(declare-fun isEmpty!32437 (List!60655) Bool)

(assert (=> b!5201191 (= res!2209759 (not (isEmpty!32437 (t!373808 zl!343))))))

(declare-fun b!5201193 () Bool)

(declare-fun e!3238733 () Bool)

(declare-fun tp!1458902 () Bool)

(assert (=> b!5201193 (= e!3238733 tp!1458902)))

(declare-fun b!5201194 () Bool)

(declare-fun res!2209758 () Bool)

(declare-fun e!3238735 () Bool)

(assert (=> b!5201194 (=> res!2209758 e!3238735)))

(declare-fun isEmpty!32438 (List!60654) Bool)

(assert (=> b!5201194 (= res!2209758 (isEmpty!32438 (t!373807 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun b!5201195 () Bool)

(declare-fun res!2209757 () Bool)

(declare-fun e!3238738 () Bool)

(assert (=> b!5201195 (=> (not res!2209757) (not e!3238738))))

(declare-fun r!7292 () Regex!14785)

(declare-fun unfocusZipper!527 (List!60655) Regex!14785)

(assert (=> b!5201195 (= res!2209757 (= r!7292 (unfocusZipper!527 zl!343)))))

(declare-fun b!5201196 () Bool)

(declare-fun tp!1458903 () Bool)

(declare-fun tp!1458905 () Bool)

(assert (=> b!5201196 (= e!3238740 (and tp!1458903 tp!1458905))))

(declare-fun b!5201197 () Bool)

(declare-fun e!3238732 () Bool)

(declare-fun tp_is_empty!38823 () Bool)

(declare-fun tp!1458899 () Bool)

(assert (=> b!5201197 (= e!3238732 (and tp_is_empty!38823 tp!1458899))))

(assert (=> b!5201198 (= e!3238735 e!3238737)))

(declare-fun res!2209756 () Bool)

(assert (=> b!5201198 (=> res!2209756 e!3238737)))

(declare-datatypes ((List!60656 0))(
  ( (Nil!60532) (Cons!60532 (h!66980 C!29840) (t!373809 List!60656)) )
))
(declare-fun s!2326 () List!60656)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2140957 () (InoxSet Context!8338))

(declare-fun lt!2140961 () Context!8338)

(assert (=> b!5201198 (= res!2209756 (or (not ((_ is ElementMatch!14785) (regOne!30082 r!7292))) (not (= (c!896412 (regOne!30082 r!7292)) (h!66980 s!2326))) (not (= lt!2140957 (store ((as const (Array Context!8338 Bool)) false) lt!2140961 true)))))))

(declare-fun lt!2140958 () Unit!152406)

(assert (=> b!5201198 (= lt!2140958 e!3238739)))

(declare-fun c!896411 () Bool)

(declare-fun nullable!4954 (Regex!14785) Bool)

(assert (=> b!5201198 (= c!896411 (nullable!4954 (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!8338))

(declare-fun lambda!260604 () Int)

(declare-fun flatMap!512 ((InoxSet Context!8338) Int) (InoxSet Context!8338))

(declare-fun derivationStepZipperUp!157 (Context!8338 C!29840) (InoxSet Context!8338))

(assert (=> b!5201198 (= (flatMap!512 z!1189 lambda!260604) (derivationStepZipperUp!157 (h!66979 zl!343) (h!66980 s!2326)))))

(declare-fun lt!2140959 () Unit!152406)

(declare-fun lemmaFlatMapOnSingletonSet!44 ((InoxSet Context!8338) Context!8338 Int) Unit!152406)

(assert (=> b!5201198 (= lt!2140959 (lemmaFlatMapOnSingletonSet!44 z!1189 (h!66979 zl!343) lambda!260604))))

(declare-fun lt!2140962 () (InoxSet Context!8338))

(assert (=> b!5201198 (= lt!2140962 (derivationStepZipperUp!157 lt!2140961 (h!66980 s!2326)))))

(declare-fun derivationStepZipperDown!233 (Regex!14785 Context!8338 C!29840) (InoxSet Context!8338))

(assert (=> b!5201198 (= lt!2140957 (derivationStepZipperDown!233 (h!66978 (exprs!4669 (h!66979 zl!343))) lt!2140961 (h!66980 s!2326)))))

(assert (=> b!5201198 (= lt!2140961 (Context!8339 (t!373807 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun lt!2140956 () (InoxSet Context!8338))

(assert (=> b!5201198 (= lt!2140956 (derivationStepZipperUp!157 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343))))) (h!66980 s!2326)))))

(declare-fun e!3238741 () Bool)

(declare-fun b!5201199 () Bool)

(declare-fun e!3238734 () Bool)

(declare-fun tp!1458900 () Bool)

(declare-fun inv!80209 (Context!8338) Bool)

(assert (=> b!5201199 (= e!3238734 (and (inv!80209 (h!66979 zl!343)) e!3238741 tp!1458900))))

(declare-fun b!5201200 () Bool)

(declare-fun res!2209753 () Bool)

(assert (=> b!5201200 (=> (not res!2209753) (not e!3238738))))

(declare-fun toList!8569 ((InoxSet Context!8338)) List!60655)

(assert (=> b!5201200 (= res!2209753 (= (toList!8569 z!1189) zl!343))))

(declare-fun b!5201201 () Bool)

(assert (=> b!5201201 (= e!3238738 (not e!3238731))))

(declare-fun res!2209750 () Bool)

(assert (=> b!5201201 (=> res!2209750 e!3238731)))

(assert (=> b!5201201 (= res!2209750 (not ((_ is Cons!60531) zl!343)))))

(declare-fun lt!2140963 () Bool)

(declare-fun matchRSpec!1888 (Regex!14785 List!60656) Bool)

(assert (=> b!5201201 (= lt!2140963 (matchRSpec!1888 r!7292 s!2326))))

(declare-fun matchR!6970 (Regex!14785 List!60656) Bool)

(assert (=> b!5201201 (= lt!2140963 (matchR!6970 r!7292 s!2326))))

(declare-fun lt!2140953 () Unit!152406)

(declare-fun mainMatchTheorem!1888 (Regex!14785 List!60656) Unit!152406)

(assert (=> b!5201201 (= lt!2140953 (mainMatchTheorem!1888 r!7292 s!2326))))

(declare-fun b!5201202 () Bool)

(declare-fun res!2209751 () Bool)

(assert (=> b!5201202 (=> res!2209751 e!3238731)))

(declare-fun generalisedConcat!454 (List!60654) Regex!14785)

(assert (=> b!5201202 (= res!2209751 (not (= r!7292 (generalisedConcat!454 (exprs!4669 (h!66979 zl!343))))))))

(declare-fun b!5201192 () Bool)

(declare-fun Unit!152409 () Unit!152406)

(assert (=> b!5201192 (= e!3238739 Unit!152409)))

(declare-fun lt!2140960 () Unit!152406)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!22 ((InoxSet Context!8338) (InoxSet Context!8338) List!60656) Unit!152406)

(assert (=> b!5201192 (= lt!2140960 (lemmaZipperConcatMatchesSameAsBothZippers!22 lt!2140957 lt!2140962 (t!373809 s!2326)))))

(declare-fun res!2209754 () Bool)

(declare-fun matchZipper!1029 ((InoxSet Context!8338) List!60656) Bool)

(assert (=> b!5201192 (= res!2209754 (matchZipper!1029 lt!2140957 (t!373809 s!2326)))))

(declare-fun e!3238736 () Bool)

(assert (=> b!5201192 (=> res!2209754 e!3238736)))

(assert (=> b!5201192 (= (matchZipper!1029 ((_ map or) lt!2140957 lt!2140962) (t!373809 s!2326)) e!3238736)))

(declare-fun res!2209752 () Bool)

(assert (=> start!550194 (=> (not res!2209752) (not e!3238738))))

(declare-fun validRegex!6521 (Regex!14785) Bool)

(assert (=> start!550194 (= res!2209752 (validRegex!6521 r!7292))))

(assert (=> start!550194 e!3238738))

(assert (=> start!550194 e!3238740))

(declare-fun condSetEmpty!32992 () Bool)

(assert (=> start!550194 (= condSetEmpty!32992 (= z!1189 ((as const (Array Context!8338 Bool)) false)))))

(declare-fun setRes!32992 () Bool)

(assert (=> start!550194 setRes!32992))

(assert (=> start!550194 e!3238734))

(assert (=> start!550194 e!3238732))

(declare-fun b!5201203 () Bool)

(declare-fun tp!1458898 () Bool)

(declare-fun tp!1458896 () Bool)

(assert (=> b!5201203 (= e!3238740 (and tp!1458898 tp!1458896))))

(declare-fun b!5201204 () Bool)

(assert (=> b!5201204 (= e!3238740 tp_is_empty!38823)))

(declare-fun b!5201205 () Bool)

(assert (=> b!5201205 (= e!3238736 (matchZipper!1029 lt!2140962 (t!373809 s!2326)))))

(declare-fun setElem!32992 () Context!8338)

(declare-fun tp!1458904 () Bool)

(declare-fun setNonEmpty!32992 () Bool)

(assert (=> setNonEmpty!32992 (= setRes!32992 (and tp!1458904 (inv!80209 setElem!32992) e!3238733))))

(declare-fun setRest!32992 () (InoxSet Context!8338))

(assert (=> setNonEmpty!32992 (= z!1189 ((_ map or) (store ((as const (Array Context!8338 Bool)) false) setElem!32992 true) setRest!32992))))

(declare-fun b!5201206 () Bool)

(declare-fun res!2209748 () Bool)

(assert (=> b!5201206 (=> res!2209748 e!3238731)))

(assert (=> b!5201206 (= res!2209748 (or ((_ is EmptyExpr!14785) r!7292) ((_ is EmptyLang!14785) r!7292) ((_ is ElementMatch!14785) r!7292) ((_ is Union!14785) r!7292) (not ((_ is Concat!23630) r!7292))))))

(assert (=> b!5201207 (= e!3238731 e!3238735)))

(declare-fun res!2209749 () Bool)

(assert (=> b!5201207 (=> res!2209749 e!3238735)))

(declare-fun lt!2140954 () Bool)

(assert (=> b!5201207 (= res!2209749 (or (not (= lt!2140963 lt!2140954)) ((_ is Nil!60532) s!2326)))))

(declare-fun Exists!1966 (Int) Bool)

(assert (=> b!5201207 (= (Exists!1966 lambda!260602) (Exists!1966 lambda!260603))))

(declare-fun lt!2140952 () Unit!152406)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!620 (Regex!14785 Regex!14785 List!60656) Unit!152406)

(assert (=> b!5201207 (= lt!2140952 (lemmaExistCutMatchRandMatchRSpecEquivalent!620 (regOne!30082 r!7292) (regTwo!30082 r!7292) s!2326))))

(assert (=> b!5201207 (= lt!2140954 (Exists!1966 lambda!260602))))

(declare-datatypes ((tuple2!63968 0))(
  ( (tuple2!63969 (_1!35287 List!60656) (_2!35287 List!60656)) )
))
(declare-datatypes ((Option!14896 0))(
  ( (None!14895) (Some!14895 (v!50924 tuple2!63968)) )
))
(declare-fun isDefined!11599 (Option!14896) Bool)

(declare-fun findConcatSeparation!1310 (Regex!14785 Regex!14785 List!60656 List!60656 List!60656) Option!14896)

(assert (=> b!5201207 (= lt!2140954 (isDefined!11599 (findConcatSeparation!1310 (regOne!30082 r!7292) (regTwo!30082 r!7292) Nil!60532 s!2326 s!2326)))))

(declare-fun lt!2140955 () Unit!152406)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1074 (Regex!14785 Regex!14785 List!60656) Unit!152406)

(assert (=> b!5201207 (= lt!2140955 (lemmaFindConcatSeparationEquivalentToExists!1074 (regOne!30082 r!7292) (regTwo!30082 r!7292) s!2326))))

(declare-fun setIsEmpty!32992 () Bool)

(assert (=> setIsEmpty!32992 setRes!32992))

(declare-fun b!5201208 () Bool)

(declare-fun res!2209760 () Bool)

(assert (=> b!5201208 (=> res!2209760 e!3238731)))

(declare-fun generalisedUnion!714 (List!60654) Regex!14785)

(declare-fun unfocusZipperList!227 (List!60655) List!60654)

(assert (=> b!5201208 (= res!2209760 (not (= r!7292 (generalisedUnion!714 (unfocusZipperList!227 zl!343)))))))

(declare-fun b!5201209 () Bool)

(declare-fun tp!1458897 () Bool)

(assert (=> b!5201209 (= e!3238741 tp!1458897)))

(assert (= (and start!550194 res!2209752) b!5201200))

(assert (= (and b!5201200 res!2209753) b!5201195))

(assert (= (and b!5201195 res!2209757) b!5201201))

(assert (= (and b!5201201 (not res!2209750)) b!5201191))

(assert (= (and b!5201191 (not res!2209759)) b!5201202))

(assert (= (and b!5201202 (not res!2209751)) b!5201190))

(assert (= (and b!5201190 (not res!2209755)) b!5201208))

(assert (= (and b!5201208 (not res!2209760)) b!5201206))

(assert (= (and b!5201206 (not res!2209748)) b!5201207))

(assert (= (and b!5201207 (not res!2209749)) b!5201194))

(assert (= (and b!5201194 (not res!2209758)) b!5201198))

(assert (= (and b!5201198 c!896411) b!5201192))

(assert (= (and b!5201198 (not c!896411)) b!5201189))

(assert (= (and b!5201192 (not res!2209754)) b!5201205))

(assert (= (and b!5201198 (not res!2209756)) b!5201188))

(assert (= (and start!550194 ((_ is ElementMatch!14785) r!7292)) b!5201204))

(assert (= (and start!550194 ((_ is Concat!23630) r!7292)) b!5201196))

(assert (= (and start!550194 ((_ is Star!14785) r!7292)) b!5201187))

(assert (= (and start!550194 ((_ is Union!14785) r!7292)) b!5201203))

(assert (= (and start!550194 condSetEmpty!32992) setIsEmpty!32992))

(assert (= (and start!550194 (not condSetEmpty!32992)) setNonEmpty!32992))

(assert (= setNonEmpty!32992 b!5201193))

(assert (= b!5201199 b!5201209))

(assert (= (and start!550194 ((_ is Cons!60531) zl!343)) b!5201199))

(assert (= (and start!550194 ((_ is Cons!60532) s!2326)) b!5201197))

(declare-fun m!6253618 () Bool)

(assert (=> b!5201205 m!6253618))

(declare-fun m!6253620 () Bool)

(assert (=> b!5201201 m!6253620))

(declare-fun m!6253622 () Bool)

(assert (=> b!5201201 m!6253622))

(declare-fun m!6253624 () Bool)

(assert (=> b!5201201 m!6253624))

(declare-fun m!6253626 () Bool)

(assert (=> b!5201198 m!6253626))

(declare-fun m!6253628 () Bool)

(assert (=> b!5201198 m!6253628))

(declare-fun m!6253630 () Bool)

(assert (=> b!5201198 m!6253630))

(declare-fun m!6253632 () Bool)

(assert (=> b!5201198 m!6253632))

(declare-fun m!6253634 () Bool)

(assert (=> b!5201198 m!6253634))

(declare-fun m!6253636 () Bool)

(assert (=> b!5201198 m!6253636))

(declare-fun m!6253638 () Bool)

(assert (=> b!5201198 m!6253638))

(declare-fun m!6253640 () Bool)

(assert (=> b!5201198 m!6253640))

(declare-fun m!6253642 () Bool)

(assert (=> setNonEmpty!32992 m!6253642))

(declare-fun m!6253644 () Bool)

(assert (=> b!5201200 m!6253644))

(declare-fun m!6253646 () Bool)

(assert (=> start!550194 m!6253646))

(declare-fun m!6253648 () Bool)

(assert (=> b!5201188 m!6253648))

(declare-fun m!6253650 () Bool)

(assert (=> b!5201207 m!6253650))

(assert (=> b!5201207 m!6253650))

(declare-fun m!6253652 () Bool)

(assert (=> b!5201207 m!6253652))

(declare-fun m!6253654 () Bool)

(assert (=> b!5201207 m!6253654))

(assert (=> b!5201207 m!6253652))

(declare-fun m!6253656 () Bool)

(assert (=> b!5201207 m!6253656))

(declare-fun m!6253658 () Bool)

(assert (=> b!5201207 m!6253658))

(declare-fun m!6253660 () Bool)

(assert (=> b!5201207 m!6253660))

(declare-fun m!6253662 () Bool)

(assert (=> b!5201199 m!6253662))

(declare-fun m!6253664 () Bool)

(assert (=> b!5201208 m!6253664))

(assert (=> b!5201208 m!6253664))

(declare-fun m!6253666 () Bool)

(assert (=> b!5201208 m!6253666))

(declare-fun m!6253668 () Bool)

(assert (=> b!5201195 m!6253668))

(declare-fun m!6253670 () Bool)

(assert (=> b!5201191 m!6253670))

(declare-fun m!6253672 () Bool)

(assert (=> b!5201202 m!6253672))

(declare-fun m!6253674 () Bool)

(assert (=> b!5201192 m!6253674))

(declare-fun m!6253676 () Bool)

(assert (=> b!5201192 m!6253676))

(declare-fun m!6253678 () Bool)

(assert (=> b!5201192 m!6253678))

(declare-fun m!6253680 () Bool)

(assert (=> b!5201194 m!6253680))

(check-sat (not start!550194) (not b!5201200) (not b!5201195) (not b!5201203) (not b!5201192) (not b!5201205) (not b!5201207) (not b!5201209) (not b!5201196) (not b!5201194) (not b!5201199) (not setNonEmpty!32992) (not b!5201193) (not b!5201208) (not b!5201197) (not b!5201201) tp_is_empty!38823 (not b!5201188) (not b!5201187) (not b!5201191) (not b!5201198) (not b!5201202))
(check-sat)
(get-model)

(declare-fun b!5201281 () Bool)

(declare-fun e!3238790 () Bool)

(declare-fun e!3238788 () Bool)

(assert (=> b!5201281 (= e!3238790 e!3238788)))

(declare-fun c!896433 () Bool)

(assert (=> b!5201281 (= c!896433 ((_ is Star!14785) r!7292))))

(declare-fun bm!365587 () Bool)

(declare-fun call!365593 () Bool)

(declare-fun c!896434 () Bool)

(assert (=> bm!365587 (= call!365593 (validRegex!6521 (ite c!896434 (regTwo!30083 r!7292) (regTwo!30082 r!7292))))))

(declare-fun bm!365588 () Bool)

(declare-fun call!365594 () Bool)

(declare-fun call!365592 () Bool)

(assert (=> bm!365588 (= call!365594 call!365592)))

(declare-fun b!5201282 () Bool)

(declare-fun e!3238793 () Bool)

(assert (=> b!5201282 (= e!3238793 call!365593)))

(declare-fun b!5201283 () Bool)

(declare-fun res!2209787 () Bool)

(assert (=> b!5201283 (=> (not res!2209787) (not e!3238793))))

(assert (=> b!5201283 (= res!2209787 call!365594)))

(declare-fun e!3238787 () Bool)

(assert (=> b!5201283 (= e!3238787 e!3238793)))

(declare-fun b!5201284 () Bool)

(assert (=> b!5201284 (= e!3238788 e!3238787)))

(assert (=> b!5201284 (= c!896434 ((_ is Union!14785) r!7292))))

(declare-fun b!5201285 () Bool)

(declare-fun e!3238791 () Bool)

(assert (=> b!5201285 (= e!3238791 call!365592)))

(declare-fun b!5201286 () Bool)

(assert (=> b!5201286 (= e!3238788 e!3238791)))

(declare-fun res!2209789 () Bool)

(assert (=> b!5201286 (= res!2209789 (not (nullable!4954 (reg!15114 r!7292))))))

(assert (=> b!5201286 (=> (not res!2209789) (not e!3238791))))

(declare-fun b!5201287 () Bool)

(declare-fun e!3238792 () Bool)

(assert (=> b!5201287 (= e!3238792 call!365593)))

(declare-fun b!5201288 () Bool)

(declare-fun res!2209786 () Bool)

(declare-fun e!3238789 () Bool)

(assert (=> b!5201288 (=> res!2209786 e!3238789)))

(assert (=> b!5201288 (= res!2209786 (not ((_ is Concat!23630) r!7292)))))

(assert (=> b!5201288 (= e!3238787 e!3238789)))

(declare-fun b!5201289 () Bool)

(assert (=> b!5201289 (= e!3238789 e!3238792)))

(declare-fun res!2209788 () Bool)

(assert (=> b!5201289 (=> (not res!2209788) (not e!3238792))))

(assert (=> b!5201289 (= res!2209788 call!365594)))

(declare-fun d!1677722 () Bool)

(declare-fun res!2209790 () Bool)

(assert (=> d!1677722 (=> res!2209790 e!3238790)))

(assert (=> d!1677722 (= res!2209790 ((_ is ElementMatch!14785) r!7292))))

(assert (=> d!1677722 (= (validRegex!6521 r!7292) e!3238790)))

(declare-fun bm!365589 () Bool)

(assert (=> bm!365589 (= call!365592 (validRegex!6521 (ite c!896433 (reg!15114 r!7292) (ite c!896434 (regOne!30083 r!7292) (regOne!30082 r!7292)))))))

(assert (= (and d!1677722 (not res!2209790)) b!5201281))

(assert (= (and b!5201281 c!896433) b!5201286))

(assert (= (and b!5201281 (not c!896433)) b!5201284))

(assert (= (and b!5201286 res!2209789) b!5201285))

(assert (= (and b!5201284 c!896434) b!5201283))

(assert (= (and b!5201284 (not c!896434)) b!5201288))

(assert (= (and b!5201283 res!2209787) b!5201282))

(assert (= (and b!5201288 (not res!2209786)) b!5201289))

(assert (= (and b!5201289 res!2209788) b!5201287))

(assert (= (or b!5201282 b!5201287) bm!365587))

(assert (= (or b!5201283 b!5201289) bm!365588))

(assert (= (or b!5201285 bm!365588) bm!365589))

(declare-fun m!6253730 () Bool)

(assert (=> bm!365587 m!6253730))

(declare-fun m!6253732 () Bool)

(assert (=> b!5201286 m!6253732))

(declare-fun m!6253734 () Bool)

(assert (=> bm!365589 m!6253734))

(assert (=> start!550194 d!1677722))

(declare-fun d!1677734 () Bool)

(declare-fun c!896453 () Bool)

(declare-fun isEmpty!32440 (List!60656) Bool)

(assert (=> d!1677734 (= c!896453 (isEmpty!32440 (t!373809 s!2326)))))

(declare-fun e!3238817 () Bool)

(assert (=> d!1677734 (= (matchZipper!1029 lt!2140962 (t!373809 s!2326)) e!3238817)))

(declare-fun b!5201331 () Bool)

(declare-fun nullableZipper!1217 ((InoxSet Context!8338)) Bool)

(assert (=> b!5201331 (= e!3238817 (nullableZipper!1217 lt!2140962))))

(declare-fun b!5201332 () Bool)

(declare-fun derivationStepZipper!1061 ((InoxSet Context!8338) C!29840) (InoxSet Context!8338))

(declare-fun head!11153 (List!60656) C!29840)

(declare-fun tail!10250 (List!60656) List!60656)

(assert (=> b!5201332 (= e!3238817 (matchZipper!1029 (derivationStepZipper!1061 lt!2140962 (head!11153 (t!373809 s!2326))) (tail!10250 (t!373809 s!2326))))))

(assert (= (and d!1677734 c!896453) b!5201331))

(assert (= (and d!1677734 (not c!896453)) b!5201332))

(declare-fun m!6253742 () Bool)

(assert (=> d!1677734 m!6253742))

(declare-fun m!6253744 () Bool)

(assert (=> b!5201331 m!6253744))

(declare-fun m!6253746 () Bool)

(assert (=> b!5201332 m!6253746))

(assert (=> b!5201332 m!6253746))

(declare-fun m!6253748 () Bool)

(assert (=> b!5201332 m!6253748))

(declare-fun m!6253750 () Bool)

(assert (=> b!5201332 m!6253750))

(assert (=> b!5201332 m!6253748))

(assert (=> b!5201332 m!6253750))

(declare-fun m!6253752 () Bool)

(assert (=> b!5201332 m!6253752))

(assert (=> b!5201205 d!1677734))

(declare-fun d!1677738 () Bool)

(declare-fun lt!2140975 () Regex!14785)

(assert (=> d!1677738 (validRegex!6521 lt!2140975)))

(assert (=> d!1677738 (= lt!2140975 (generalisedUnion!714 (unfocusZipperList!227 zl!343)))))

(assert (=> d!1677738 (= (unfocusZipper!527 zl!343) lt!2140975)))

(declare-fun bs!1209267 () Bool)

(assert (= bs!1209267 d!1677738))

(declare-fun m!6253754 () Bool)

(assert (=> bs!1209267 m!6253754))

(assert (=> bs!1209267 m!6253664))

(assert (=> bs!1209267 m!6253664))

(assert (=> bs!1209267 m!6253666))

(assert (=> b!5201195 d!1677738))

(declare-fun bs!1209270 () Bool)

(declare-fun d!1677740 () Bool)

(assert (= bs!1209270 (and d!1677740 b!5201188)))

(declare-fun lambda!260615 () Int)

(assert (=> bs!1209270 (= lambda!260615 lambda!260605)))

(assert (=> d!1677740 (= (inv!80209 setElem!32992) (forall!14225 (exprs!4669 setElem!32992) lambda!260615))))

(declare-fun bs!1209271 () Bool)

(assert (= bs!1209271 d!1677740))

(declare-fun m!6253778 () Bool)

(assert (=> bs!1209271 m!6253778))

(assert (=> setNonEmpty!32992 d!1677740))

(declare-fun d!1677752 () Bool)

(assert (=> d!1677752 (= (isEmpty!32438 (t!373807 (exprs!4669 (h!66979 zl!343)))) ((_ is Nil!60530) (t!373807 (exprs!4669 (h!66979 zl!343)))))))

(assert (=> b!5201194 d!1677752))

(declare-fun e!3238848 () Bool)

(declare-fun d!1677754 () Bool)

(assert (=> d!1677754 (= (matchZipper!1029 ((_ map or) lt!2140957 lt!2140962) (t!373809 s!2326)) e!3238848)))

(declare-fun res!2209808 () Bool)

(assert (=> d!1677754 (=> res!2209808 e!3238848)))

(assert (=> d!1677754 (= res!2209808 (matchZipper!1029 lt!2140957 (t!373809 s!2326)))))

(declare-fun lt!2140986 () Unit!152406)

(declare-fun choose!38658 ((InoxSet Context!8338) (InoxSet Context!8338) List!60656) Unit!152406)

(assert (=> d!1677754 (= lt!2140986 (choose!38658 lt!2140957 lt!2140962 (t!373809 s!2326)))))

(assert (=> d!1677754 (= (lemmaZipperConcatMatchesSameAsBothZippers!22 lt!2140957 lt!2140962 (t!373809 s!2326)) lt!2140986)))

(declare-fun b!5201381 () Bool)

(assert (=> b!5201381 (= e!3238848 (matchZipper!1029 lt!2140962 (t!373809 s!2326)))))

(assert (= (and d!1677754 (not res!2209808)) b!5201381))

(assert (=> d!1677754 m!6253678))

(assert (=> d!1677754 m!6253676))

(declare-fun m!6253798 () Bool)

(assert (=> d!1677754 m!6253798))

(assert (=> b!5201381 m!6253618))

(assert (=> b!5201192 d!1677754))

(declare-fun d!1677764 () Bool)

(declare-fun c!896472 () Bool)

(assert (=> d!1677764 (= c!896472 (isEmpty!32440 (t!373809 s!2326)))))

(declare-fun e!3238849 () Bool)

(assert (=> d!1677764 (= (matchZipper!1029 lt!2140957 (t!373809 s!2326)) e!3238849)))

(declare-fun b!5201382 () Bool)

(assert (=> b!5201382 (= e!3238849 (nullableZipper!1217 lt!2140957))))

(declare-fun b!5201383 () Bool)

(assert (=> b!5201383 (= e!3238849 (matchZipper!1029 (derivationStepZipper!1061 lt!2140957 (head!11153 (t!373809 s!2326))) (tail!10250 (t!373809 s!2326))))))

(assert (= (and d!1677764 c!896472) b!5201382))

(assert (= (and d!1677764 (not c!896472)) b!5201383))

(assert (=> d!1677764 m!6253742))

(declare-fun m!6253800 () Bool)

(assert (=> b!5201382 m!6253800))

(assert (=> b!5201383 m!6253746))

(assert (=> b!5201383 m!6253746))

(declare-fun m!6253802 () Bool)

(assert (=> b!5201383 m!6253802))

(assert (=> b!5201383 m!6253750))

(assert (=> b!5201383 m!6253802))

(assert (=> b!5201383 m!6253750))

(declare-fun m!6253804 () Bool)

(assert (=> b!5201383 m!6253804))

(assert (=> b!5201192 d!1677764))

(declare-fun d!1677766 () Bool)

(declare-fun c!896473 () Bool)

(assert (=> d!1677766 (= c!896473 (isEmpty!32440 (t!373809 s!2326)))))

(declare-fun e!3238850 () Bool)

(assert (=> d!1677766 (= (matchZipper!1029 ((_ map or) lt!2140957 lt!2140962) (t!373809 s!2326)) e!3238850)))

(declare-fun b!5201384 () Bool)

(assert (=> b!5201384 (= e!3238850 (nullableZipper!1217 ((_ map or) lt!2140957 lt!2140962)))))

(declare-fun b!5201385 () Bool)

(assert (=> b!5201385 (= e!3238850 (matchZipper!1029 (derivationStepZipper!1061 ((_ map or) lt!2140957 lt!2140962) (head!11153 (t!373809 s!2326))) (tail!10250 (t!373809 s!2326))))))

(assert (= (and d!1677766 c!896473) b!5201384))

(assert (= (and d!1677766 (not c!896473)) b!5201385))

(assert (=> d!1677766 m!6253742))

(declare-fun m!6253806 () Bool)

(assert (=> b!5201384 m!6253806))

(assert (=> b!5201385 m!6253746))

(assert (=> b!5201385 m!6253746))

(declare-fun m!6253808 () Bool)

(assert (=> b!5201385 m!6253808))

(assert (=> b!5201385 m!6253750))

(assert (=> b!5201385 m!6253808))

(assert (=> b!5201385 m!6253750))

(declare-fun m!6253810 () Bool)

(assert (=> b!5201385 m!6253810))

(assert (=> b!5201192 d!1677766))

(declare-fun bs!1209284 () Bool)

(declare-fun b!5201462 () Bool)

(assert (= bs!1209284 (and b!5201462 b!5201207)))

(declare-fun lambda!260628 () Int)

(assert (=> bs!1209284 (not (= lambda!260628 lambda!260602))))

(assert (=> bs!1209284 (not (= lambda!260628 lambda!260603))))

(assert (=> b!5201462 true))

(assert (=> b!5201462 true))

(declare-fun bs!1209286 () Bool)

(declare-fun b!5201470 () Bool)

(assert (= bs!1209286 (and b!5201470 b!5201207)))

(declare-fun lambda!260630 () Int)

(assert (=> bs!1209286 (not (= lambda!260630 lambda!260602))))

(assert (=> bs!1209286 (= lambda!260630 lambda!260603)))

(declare-fun bs!1209288 () Bool)

(assert (= bs!1209288 (and b!5201470 b!5201462)))

(assert (=> bs!1209288 (not (= lambda!260630 lambda!260628))))

(assert (=> b!5201470 true))

(assert (=> b!5201470 true))

(declare-fun bm!365617 () Bool)

(declare-fun call!365623 () Bool)

(assert (=> bm!365617 (= call!365623 (isEmpty!32440 s!2326))))

(declare-fun b!5201461 () Bool)

(declare-fun e!3238897 () Bool)

(declare-fun e!3238896 () Bool)

(assert (=> b!5201461 (= e!3238897 e!3238896)))

(declare-fun res!2209842 () Bool)

(assert (=> b!5201461 (= res!2209842 (not ((_ is EmptyLang!14785) r!7292)))))

(assert (=> b!5201461 (=> (not res!2209842) (not e!3238896))))

(declare-fun e!3238893 () Bool)

(declare-fun call!365622 () Bool)

(assert (=> b!5201462 (= e!3238893 call!365622)))

(declare-fun b!5201463 () Bool)

(declare-fun e!3238895 () Bool)

(declare-fun e!3238899 () Bool)

(assert (=> b!5201463 (= e!3238895 e!3238899)))

(declare-fun res!2209843 () Bool)

(assert (=> b!5201463 (= res!2209843 (matchRSpec!1888 (regOne!30083 r!7292) s!2326))))

(assert (=> b!5201463 (=> res!2209843 e!3238899)))

(declare-fun b!5201464 () Bool)

(declare-fun res!2209844 () Bool)

(assert (=> b!5201464 (=> res!2209844 e!3238893)))

(assert (=> b!5201464 (= res!2209844 call!365623)))

(declare-fun e!3238894 () Bool)

(assert (=> b!5201464 (= e!3238894 e!3238893)))

(declare-fun d!1677768 () Bool)

(declare-fun c!896498 () Bool)

(assert (=> d!1677768 (= c!896498 ((_ is EmptyExpr!14785) r!7292))))

(assert (=> d!1677768 (= (matchRSpec!1888 r!7292 s!2326) e!3238897)))

(declare-fun b!5201467 () Bool)

(assert (=> b!5201467 (= e!3238899 (matchRSpec!1888 (regTwo!30083 r!7292) s!2326))))

(declare-fun b!5201468 () Bool)

(assert (=> b!5201468 (= e!3238895 e!3238894)))

(declare-fun c!896497 () Bool)

(assert (=> b!5201468 (= c!896497 ((_ is Star!14785) r!7292))))

(declare-fun bm!365618 () Bool)

(assert (=> bm!365618 (= call!365622 (Exists!1966 (ite c!896497 lambda!260628 lambda!260630)))))

(declare-fun b!5201469 () Bool)

(declare-fun c!896496 () Bool)

(assert (=> b!5201469 (= c!896496 ((_ is ElementMatch!14785) r!7292))))

(declare-fun e!3238898 () Bool)

(assert (=> b!5201469 (= e!3238896 e!3238898)))

(assert (=> b!5201470 (= e!3238894 call!365622)))

(declare-fun b!5201471 () Bool)

(declare-fun c!896495 () Bool)

(assert (=> b!5201471 (= c!896495 ((_ is Union!14785) r!7292))))

(assert (=> b!5201471 (= e!3238898 e!3238895)))

(declare-fun b!5201472 () Bool)

(assert (=> b!5201472 (= e!3238897 call!365623)))

(declare-fun b!5201473 () Bool)

(assert (=> b!5201473 (= e!3238898 (= s!2326 (Cons!60532 (c!896412 r!7292) Nil!60532)))))

(assert (= (and d!1677768 c!896498) b!5201472))

(assert (= (and d!1677768 (not c!896498)) b!5201461))

(assert (= (and b!5201461 res!2209842) b!5201469))

(assert (= (and b!5201469 c!896496) b!5201473))

(assert (= (and b!5201469 (not c!896496)) b!5201471))

(assert (= (and b!5201471 c!896495) b!5201463))

(assert (= (and b!5201471 (not c!896495)) b!5201468))

(assert (= (and b!5201463 (not res!2209843)) b!5201467))

(assert (= (and b!5201468 c!896497) b!5201464))

(assert (= (and b!5201468 (not c!896497)) b!5201470))

(assert (= (and b!5201464 (not res!2209844)) b!5201462))

(assert (= (or b!5201462 b!5201470) bm!365618))

(assert (= (or b!5201472 b!5201464) bm!365617))

(declare-fun m!6253868 () Bool)

(assert (=> bm!365617 m!6253868))

(declare-fun m!6253870 () Bool)

(assert (=> b!5201463 m!6253870))

(declare-fun m!6253872 () Bool)

(assert (=> b!5201467 m!6253872))

(declare-fun m!6253874 () Bool)

(assert (=> bm!365618 m!6253874))

(assert (=> b!5201201 d!1677768))

(declare-fun b!5201544 () Bool)

(declare-fun res!2209891 () Bool)

(declare-fun e!3238944 () Bool)

(assert (=> b!5201544 (=> (not res!2209891) (not e!3238944))))

(declare-fun call!365626 () Bool)

(assert (=> b!5201544 (= res!2209891 (not call!365626))))

(declare-fun b!5201545 () Bool)

(declare-fun res!2209889 () Bool)

(declare-fun e!3238943 () Bool)

(assert (=> b!5201545 (=> res!2209889 e!3238943)))

(assert (=> b!5201545 (= res!2209889 (not ((_ is ElementMatch!14785) r!7292)))))

(declare-fun e!3238942 () Bool)

(assert (=> b!5201545 (= e!3238942 e!3238943)))

(declare-fun b!5201546 () Bool)

(declare-fun lt!2141008 () Bool)

(assert (=> b!5201546 (= e!3238942 (not lt!2141008))))

(declare-fun b!5201547 () Bool)

(declare-fun e!3238941 () Bool)

(declare-fun derivativeStep!4038 (Regex!14785 C!29840) Regex!14785)

(assert (=> b!5201547 (= e!3238941 (matchR!6970 (derivativeStep!4038 r!7292 (head!11153 s!2326)) (tail!10250 s!2326)))))

(declare-fun bm!365621 () Bool)

(assert (=> bm!365621 (= call!365626 (isEmpty!32440 s!2326))))

(declare-fun b!5201548 () Bool)

(declare-fun e!3238940 () Bool)

(assert (=> b!5201548 (= e!3238943 e!3238940)))

(declare-fun res!2209892 () Bool)

(assert (=> b!5201548 (=> (not res!2209892) (not e!3238940))))

(assert (=> b!5201548 (= res!2209892 (not lt!2141008))))

(declare-fun b!5201549 () Bool)

(declare-fun e!3238939 () Bool)

(assert (=> b!5201549 (= e!3238940 e!3238939)))

(declare-fun res!2209894 () Bool)

(assert (=> b!5201549 (=> res!2209894 e!3238939)))

(assert (=> b!5201549 (= res!2209894 call!365626)))

(declare-fun b!5201550 () Bool)

(assert (=> b!5201550 (= e!3238941 (nullable!4954 r!7292))))

(declare-fun b!5201551 () Bool)

(assert (=> b!5201551 (= e!3238944 (= (head!11153 s!2326) (c!896412 r!7292)))))

(declare-fun b!5201552 () Bool)

(declare-fun e!3238938 () Bool)

(assert (=> b!5201552 (= e!3238938 e!3238942)))

(declare-fun c!896515 () Bool)

(assert (=> b!5201552 (= c!896515 ((_ is EmptyLang!14785) r!7292))))

(declare-fun b!5201553 () Bool)

(declare-fun res!2209890 () Bool)

(assert (=> b!5201553 (=> (not res!2209890) (not e!3238944))))

(assert (=> b!5201553 (= res!2209890 (isEmpty!32440 (tail!10250 s!2326)))))

(declare-fun b!5201554 () Bool)

(assert (=> b!5201554 (= e!3238939 (not (= (head!11153 s!2326) (c!896412 r!7292))))))

(declare-fun b!5201555 () Bool)

(assert (=> b!5201555 (= e!3238938 (= lt!2141008 call!365626))))

(declare-fun b!5201556 () Bool)

(declare-fun res!2209896 () Bool)

(assert (=> b!5201556 (=> res!2209896 e!3238939)))

(assert (=> b!5201556 (= res!2209896 (not (isEmpty!32440 (tail!10250 s!2326))))))

(declare-fun b!5201557 () Bool)

(declare-fun res!2209895 () Bool)

(assert (=> b!5201557 (=> res!2209895 e!3238943)))

(assert (=> b!5201557 (= res!2209895 e!3238944)))

(declare-fun res!2209893 () Bool)

(assert (=> b!5201557 (=> (not res!2209893) (not e!3238944))))

(assert (=> b!5201557 (= res!2209893 lt!2141008)))

(declare-fun d!1677782 () Bool)

(assert (=> d!1677782 e!3238938))

(declare-fun c!896513 () Bool)

(assert (=> d!1677782 (= c!896513 ((_ is EmptyExpr!14785) r!7292))))

(assert (=> d!1677782 (= lt!2141008 e!3238941)))

(declare-fun c!896514 () Bool)

(assert (=> d!1677782 (= c!896514 (isEmpty!32440 s!2326))))

(assert (=> d!1677782 (validRegex!6521 r!7292)))

(assert (=> d!1677782 (= (matchR!6970 r!7292 s!2326) lt!2141008)))

(assert (= (and d!1677782 c!896514) b!5201550))

(assert (= (and d!1677782 (not c!896514)) b!5201547))

(assert (= (and d!1677782 c!896513) b!5201555))

(assert (= (and d!1677782 (not c!896513)) b!5201552))

(assert (= (and b!5201552 c!896515) b!5201546))

(assert (= (and b!5201552 (not c!896515)) b!5201545))

(assert (= (and b!5201545 (not res!2209889)) b!5201557))

(assert (= (and b!5201557 res!2209893) b!5201544))

(assert (= (and b!5201544 res!2209891) b!5201553))

(assert (= (and b!5201553 res!2209890) b!5201551))

(assert (= (and b!5201557 (not res!2209895)) b!5201548))

(assert (= (and b!5201548 res!2209892) b!5201549))

(assert (= (and b!5201549 (not res!2209894)) b!5201556))

(assert (= (and b!5201556 (not res!2209896)) b!5201554))

(assert (= (or b!5201555 b!5201544 b!5201549) bm!365621))

(declare-fun m!6253884 () Bool)

(assert (=> b!5201554 m!6253884))

(assert (=> d!1677782 m!6253868))

(assert (=> d!1677782 m!6253646))

(assert (=> bm!365621 m!6253868))

(assert (=> b!5201551 m!6253884))

(assert (=> b!5201547 m!6253884))

(assert (=> b!5201547 m!6253884))

(declare-fun m!6253886 () Bool)

(assert (=> b!5201547 m!6253886))

(declare-fun m!6253888 () Bool)

(assert (=> b!5201547 m!6253888))

(assert (=> b!5201547 m!6253886))

(assert (=> b!5201547 m!6253888))

(declare-fun m!6253890 () Bool)

(assert (=> b!5201547 m!6253890))

(declare-fun m!6253892 () Bool)

(assert (=> b!5201550 m!6253892))

(assert (=> b!5201553 m!6253888))

(assert (=> b!5201553 m!6253888))

(declare-fun m!6253894 () Bool)

(assert (=> b!5201553 m!6253894))

(assert (=> b!5201556 m!6253888))

(assert (=> b!5201556 m!6253888))

(assert (=> b!5201556 m!6253894))

(assert (=> b!5201201 d!1677782))

(declare-fun d!1677788 () Bool)

(assert (=> d!1677788 (= (matchR!6970 r!7292 s!2326) (matchRSpec!1888 r!7292 s!2326))))

(declare-fun lt!2141011 () Unit!152406)

(declare-fun choose!38660 (Regex!14785 List!60656) Unit!152406)

(assert (=> d!1677788 (= lt!2141011 (choose!38660 r!7292 s!2326))))

(assert (=> d!1677788 (validRegex!6521 r!7292)))

(assert (=> d!1677788 (= (mainMatchTheorem!1888 r!7292 s!2326) lt!2141011)))

(declare-fun bs!1209293 () Bool)

(assert (= bs!1209293 d!1677788))

(assert (=> bs!1209293 m!6253622))

(assert (=> bs!1209293 m!6253620))

(declare-fun m!6253896 () Bool)

(assert (=> bs!1209293 m!6253896))

(assert (=> bs!1209293 m!6253646))

(assert (=> b!5201201 d!1677788))

(declare-fun d!1677790 () Bool)

(assert (=> d!1677790 (= (isEmpty!32437 (t!373808 zl!343)) ((_ is Nil!60531) (t!373808 zl!343)))))

(assert (=> b!5201191 d!1677790))

(declare-fun bs!1209301 () Bool)

(declare-fun d!1677792 () Bool)

(assert (= bs!1209301 (and d!1677792 b!5201188)))

(declare-fun lambda!260645 () Int)

(assert (=> bs!1209301 (= lambda!260645 lambda!260605)))

(declare-fun bs!1209302 () Bool)

(assert (= bs!1209302 (and d!1677792 d!1677740)))

(assert (=> bs!1209302 (= lambda!260645 lambda!260615)))

(declare-fun b!5201593 () Bool)

(declare-fun e!3238970 () Bool)

(declare-fun lt!2141016 () Regex!14785)

(declare-fun isConcat!276 (Regex!14785) Bool)

(assert (=> b!5201593 (= e!3238970 (isConcat!276 lt!2141016))))

(declare-fun b!5201594 () Bool)

(declare-fun e!3238971 () Bool)

(declare-fun e!3238969 () Bool)

(assert (=> b!5201594 (= e!3238971 e!3238969)))

(declare-fun c!896533 () Bool)

(assert (=> b!5201594 (= c!896533 (isEmpty!32438 (exprs!4669 (h!66979 zl!343))))))

(declare-fun b!5201595 () Bool)

(declare-fun e!3238967 () Regex!14785)

(assert (=> b!5201595 (= e!3238967 (h!66978 (exprs!4669 (h!66979 zl!343))))))

(declare-fun b!5201596 () Bool)

(declare-fun e!3238968 () Regex!14785)

(assert (=> b!5201596 (= e!3238968 (Concat!23630 (h!66978 (exprs!4669 (h!66979 zl!343))) (generalisedConcat!454 (t!373807 (exprs!4669 (h!66979 zl!343))))))))

(declare-fun b!5201597 () Bool)

(assert (=> b!5201597 (= e!3238967 e!3238968)))

(declare-fun c!896532 () Bool)

(assert (=> b!5201597 (= c!896532 ((_ is Cons!60530) (exprs!4669 (h!66979 zl!343))))))

(declare-fun b!5201598 () Bool)

(assert (=> b!5201598 (= e!3238969 e!3238970)))

(declare-fun c!896530 () Bool)

(declare-fun tail!10251 (List!60654) List!60654)

(assert (=> b!5201598 (= c!896530 (isEmpty!32438 (tail!10251 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun b!5201599 () Bool)

(assert (=> b!5201599 (= e!3238968 EmptyExpr!14785)))

(assert (=> d!1677792 e!3238971))

(declare-fun res!2209904 () Bool)

(assert (=> d!1677792 (=> (not res!2209904) (not e!3238971))))

(assert (=> d!1677792 (= res!2209904 (validRegex!6521 lt!2141016))))

(assert (=> d!1677792 (= lt!2141016 e!3238967)))

(declare-fun c!896531 () Bool)

(declare-fun e!3238966 () Bool)

(assert (=> d!1677792 (= c!896531 e!3238966)))

(declare-fun res!2209905 () Bool)

(assert (=> d!1677792 (=> (not res!2209905) (not e!3238966))))

(assert (=> d!1677792 (= res!2209905 ((_ is Cons!60530) (exprs!4669 (h!66979 zl!343))))))

(assert (=> d!1677792 (forall!14225 (exprs!4669 (h!66979 zl!343)) lambda!260645)))

(assert (=> d!1677792 (= (generalisedConcat!454 (exprs!4669 (h!66979 zl!343))) lt!2141016)))

(declare-fun b!5201600 () Bool)

(assert (=> b!5201600 (= e!3238966 (isEmpty!32438 (t!373807 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun b!5201601 () Bool)

(declare-fun isEmptyExpr!753 (Regex!14785) Bool)

(assert (=> b!5201601 (= e!3238969 (isEmptyExpr!753 lt!2141016))))

(declare-fun b!5201602 () Bool)

(declare-fun head!11154 (List!60654) Regex!14785)

(assert (=> b!5201602 (= e!3238970 (= lt!2141016 (head!11154 (exprs!4669 (h!66979 zl!343)))))))

(assert (= (and d!1677792 res!2209905) b!5201600))

(assert (= (and d!1677792 c!896531) b!5201595))

(assert (= (and d!1677792 (not c!896531)) b!5201597))

(assert (= (and b!5201597 c!896532) b!5201596))

(assert (= (and b!5201597 (not c!896532)) b!5201599))

(assert (= (and d!1677792 res!2209904) b!5201594))

(assert (= (and b!5201594 c!896533) b!5201601))

(assert (= (and b!5201594 (not c!896533)) b!5201598))

(assert (= (and b!5201598 c!896530) b!5201602))

(assert (= (and b!5201598 (not c!896530)) b!5201593))

(declare-fun m!6253906 () Bool)

(assert (=> b!5201596 m!6253906))

(declare-fun m!6253908 () Bool)

(assert (=> b!5201601 m!6253908))

(declare-fun m!6253910 () Bool)

(assert (=> b!5201602 m!6253910))

(declare-fun m!6253912 () Bool)

(assert (=> b!5201593 m!6253912))

(declare-fun m!6253914 () Bool)

(assert (=> d!1677792 m!6253914))

(declare-fun m!6253916 () Bool)

(assert (=> d!1677792 m!6253916))

(assert (=> b!5201600 m!6253680))

(declare-fun m!6253918 () Bool)

(assert (=> b!5201594 m!6253918))

(declare-fun m!6253920 () Bool)

(assert (=> b!5201598 m!6253920))

(assert (=> b!5201598 m!6253920))

(declare-fun m!6253922 () Bool)

(assert (=> b!5201598 m!6253922))

(assert (=> b!5201202 d!1677792))

(declare-fun d!1677796 () Bool)

(declare-fun e!3238986 () Bool)

(assert (=> d!1677796 e!3238986))

(declare-fun res!2209924 () Bool)

(assert (=> d!1677796 (=> (not res!2209924) (not e!3238986))))

(declare-fun lt!2141019 () List!60655)

(declare-fun noDuplicate!1173 (List!60655) Bool)

(assert (=> d!1677796 (= res!2209924 (noDuplicate!1173 lt!2141019))))

(declare-fun choose!38661 ((InoxSet Context!8338)) List!60655)

(assert (=> d!1677796 (= lt!2141019 (choose!38661 z!1189))))

(assert (=> d!1677796 (= (toList!8569 z!1189) lt!2141019)))

(declare-fun b!5201629 () Bool)

(declare-fun content!10711 (List!60655) (InoxSet Context!8338))

(assert (=> b!5201629 (= e!3238986 (= (content!10711 lt!2141019) z!1189))))

(assert (= (and d!1677796 res!2209924) b!5201629))

(declare-fun m!6253924 () Bool)

(assert (=> d!1677796 m!6253924))

(declare-fun m!6253926 () Bool)

(assert (=> d!1677796 m!6253926))

(declare-fun m!6253928 () Bool)

(assert (=> b!5201629 m!6253928))

(assert (=> b!5201200 d!1677796))

(declare-fun d!1677798 () Bool)

(declare-fun res!2209929 () Bool)

(declare-fun e!3238991 () Bool)

(assert (=> d!1677798 (=> res!2209929 e!3238991)))

(assert (=> d!1677798 (= res!2209929 ((_ is Nil!60530) (t!373807 (exprs!4669 (h!66979 zl!343)))))))

(assert (=> d!1677798 (= (forall!14225 (t!373807 (exprs!4669 (h!66979 zl!343))) lambda!260605) e!3238991)))

(declare-fun b!5201634 () Bool)

(declare-fun e!3238992 () Bool)

(assert (=> b!5201634 (= e!3238991 e!3238992)))

(declare-fun res!2209930 () Bool)

(assert (=> b!5201634 (=> (not res!2209930) (not e!3238992))))

(declare-fun dynLambda!23912 (Int Regex!14785) Bool)

(assert (=> b!5201634 (= res!2209930 (dynLambda!23912 lambda!260605 (h!66978 (t!373807 (exprs!4669 (h!66979 zl!343))))))))

(declare-fun b!5201635 () Bool)

(assert (=> b!5201635 (= e!3238992 (forall!14225 (t!373807 (t!373807 (exprs!4669 (h!66979 zl!343)))) lambda!260605))))

(assert (= (and d!1677798 (not res!2209929)) b!5201634))

(assert (= (and b!5201634 res!2209930) b!5201635))

(declare-fun b_lambda!201289 () Bool)

(assert (=> (not b_lambda!201289) (not b!5201634)))

(declare-fun m!6253930 () Bool)

(assert (=> b!5201634 m!6253930))

(declare-fun m!6253932 () Bool)

(assert (=> b!5201635 m!6253932))

(assert (=> b!5201188 d!1677798))

(declare-fun bs!1209303 () Bool)

(declare-fun d!1677800 () Bool)

(assert (= bs!1209303 (and d!1677800 b!5201188)))

(declare-fun lambda!260646 () Int)

(assert (=> bs!1209303 (= lambda!260646 lambda!260605)))

(declare-fun bs!1209304 () Bool)

(assert (= bs!1209304 (and d!1677800 d!1677740)))

(assert (=> bs!1209304 (= lambda!260646 lambda!260615)))

(declare-fun bs!1209305 () Bool)

(assert (= bs!1209305 (and d!1677800 d!1677792)))

(assert (=> bs!1209305 (= lambda!260646 lambda!260645)))

(assert (=> d!1677800 (= (inv!80209 (h!66979 zl!343)) (forall!14225 (exprs!4669 (h!66979 zl!343)) lambda!260646))))

(declare-fun bs!1209306 () Bool)

(assert (= bs!1209306 d!1677800))

(declare-fun m!6253934 () Bool)

(assert (=> bs!1209306 m!6253934))

(assert (=> b!5201199 d!1677800))

(declare-fun bs!1209308 () Bool)

(declare-fun d!1677802 () Bool)

(assert (= bs!1209308 (and d!1677802 b!5201188)))

(declare-fun lambda!260649 () Int)

(assert (=> bs!1209308 (= lambda!260649 lambda!260605)))

(declare-fun bs!1209309 () Bool)

(assert (= bs!1209309 (and d!1677802 d!1677740)))

(assert (=> bs!1209309 (= lambda!260649 lambda!260615)))

(declare-fun bs!1209310 () Bool)

(assert (= bs!1209310 (and d!1677802 d!1677792)))

(assert (=> bs!1209310 (= lambda!260649 lambda!260645)))

(declare-fun bs!1209311 () Bool)

(assert (= bs!1209311 (and d!1677802 d!1677800)))

(assert (=> bs!1209311 (= lambda!260649 lambda!260646)))

(declare-fun b!5201688 () Bool)

(declare-fun e!3239029 () Regex!14785)

(assert (=> b!5201688 (= e!3239029 EmptyLang!14785)))

(declare-fun b!5201689 () Bool)

(assert (=> b!5201689 (= e!3239029 (Union!14785 (h!66978 (unfocusZipperList!227 zl!343)) (generalisedUnion!714 (t!373807 (unfocusZipperList!227 zl!343)))))))

(declare-fun b!5201691 () Bool)

(declare-fun e!3239027 () Bool)

(declare-fun lt!2141026 () Regex!14785)

(assert (=> b!5201691 (= e!3239027 (= lt!2141026 (head!11154 (unfocusZipperList!227 zl!343))))))

(declare-fun b!5201692 () Bool)

(declare-fun e!3239031 () Regex!14785)

(assert (=> b!5201692 (= e!3239031 (h!66978 (unfocusZipperList!227 zl!343)))))

(declare-fun b!5201693 () Bool)

(declare-fun e!3239026 () Bool)

(declare-fun isEmptyLang!762 (Regex!14785) Bool)

(assert (=> b!5201693 (= e!3239026 (isEmptyLang!762 lt!2141026))))

(declare-fun b!5201694 () Bool)

(declare-fun isUnion!194 (Regex!14785) Bool)

(assert (=> b!5201694 (= e!3239027 (isUnion!194 lt!2141026))))

(declare-fun b!5201695 () Bool)

(assert (=> b!5201695 (= e!3239031 e!3239029)))

(declare-fun c!896553 () Bool)

(assert (=> b!5201695 (= c!896553 ((_ is Cons!60530) (unfocusZipperList!227 zl!343)))))

(declare-fun b!5201696 () Bool)

(declare-fun e!3239028 () Bool)

(assert (=> b!5201696 (= e!3239028 (isEmpty!32438 (t!373807 (unfocusZipperList!227 zl!343))))))

(declare-fun b!5201697 () Bool)

(declare-fun e!3239030 () Bool)

(assert (=> b!5201697 (= e!3239030 e!3239026)))

(declare-fun c!896556 () Bool)

(assert (=> b!5201697 (= c!896556 (isEmpty!32438 (unfocusZipperList!227 zl!343)))))

(assert (=> d!1677802 e!3239030))

(declare-fun res!2209954 () Bool)

(assert (=> d!1677802 (=> (not res!2209954) (not e!3239030))))

(assert (=> d!1677802 (= res!2209954 (validRegex!6521 lt!2141026))))

(assert (=> d!1677802 (= lt!2141026 e!3239031)))

(declare-fun c!896555 () Bool)

(assert (=> d!1677802 (= c!896555 e!3239028)))

(declare-fun res!2209953 () Bool)

(assert (=> d!1677802 (=> (not res!2209953) (not e!3239028))))

(assert (=> d!1677802 (= res!2209953 ((_ is Cons!60530) (unfocusZipperList!227 zl!343)))))

(assert (=> d!1677802 (forall!14225 (unfocusZipperList!227 zl!343) lambda!260649)))

(assert (=> d!1677802 (= (generalisedUnion!714 (unfocusZipperList!227 zl!343)) lt!2141026)))

(declare-fun b!5201690 () Bool)

(assert (=> b!5201690 (= e!3239026 e!3239027)))

(declare-fun c!896554 () Bool)

(assert (=> b!5201690 (= c!896554 (isEmpty!32438 (tail!10251 (unfocusZipperList!227 zl!343))))))

(assert (= (and d!1677802 res!2209953) b!5201696))

(assert (= (and d!1677802 c!896555) b!5201692))

(assert (= (and d!1677802 (not c!896555)) b!5201695))

(assert (= (and b!5201695 c!896553) b!5201689))

(assert (= (and b!5201695 (not c!896553)) b!5201688))

(assert (= (and d!1677802 res!2209954) b!5201697))

(assert (= (and b!5201697 c!896556) b!5201693))

(assert (= (and b!5201697 (not c!896556)) b!5201690))

(assert (= (and b!5201690 c!896554) b!5201691))

(assert (= (and b!5201690 (not c!896554)) b!5201694))

(declare-fun m!6253950 () Bool)

(assert (=> b!5201693 m!6253950))

(assert (=> b!5201697 m!6253664))

(declare-fun m!6253952 () Bool)

(assert (=> b!5201697 m!6253952))

(declare-fun m!6253954 () Bool)

(assert (=> b!5201696 m!6253954))

(assert (=> b!5201690 m!6253664))

(declare-fun m!6253956 () Bool)

(assert (=> b!5201690 m!6253956))

(assert (=> b!5201690 m!6253956))

(declare-fun m!6253958 () Bool)

(assert (=> b!5201690 m!6253958))

(assert (=> b!5201691 m!6253664))

(declare-fun m!6253960 () Bool)

(assert (=> b!5201691 m!6253960))

(declare-fun m!6253962 () Bool)

(assert (=> b!5201694 m!6253962))

(declare-fun m!6253964 () Bool)

(assert (=> d!1677802 m!6253964))

(assert (=> d!1677802 m!6253664))

(declare-fun m!6253966 () Bool)

(assert (=> d!1677802 m!6253966))

(declare-fun m!6253968 () Bool)

(assert (=> b!5201689 m!6253968))

(assert (=> b!5201208 d!1677802))

(declare-fun bs!1209312 () Bool)

(declare-fun d!1677808 () Bool)

(assert (= bs!1209312 (and d!1677808 d!1677740)))

(declare-fun lambda!260652 () Int)

(assert (=> bs!1209312 (= lambda!260652 lambda!260615)))

(declare-fun bs!1209313 () Bool)

(assert (= bs!1209313 (and d!1677808 d!1677800)))

(assert (=> bs!1209313 (= lambda!260652 lambda!260646)))

(declare-fun bs!1209314 () Bool)

(assert (= bs!1209314 (and d!1677808 d!1677802)))

(assert (=> bs!1209314 (= lambda!260652 lambda!260649)))

(declare-fun bs!1209315 () Bool)

(assert (= bs!1209315 (and d!1677808 d!1677792)))

(assert (=> bs!1209315 (= lambda!260652 lambda!260645)))

(declare-fun bs!1209316 () Bool)

(assert (= bs!1209316 (and d!1677808 b!5201188)))

(assert (=> bs!1209316 (= lambda!260652 lambda!260605)))

(declare-fun lt!2141029 () List!60654)

(assert (=> d!1677808 (forall!14225 lt!2141029 lambda!260652)))

(declare-fun e!3239053 () List!60654)

(assert (=> d!1677808 (= lt!2141029 e!3239053)))

(declare-fun c!896561 () Bool)

(assert (=> d!1677808 (= c!896561 ((_ is Cons!60531) zl!343))))

(assert (=> d!1677808 (= (unfocusZipperList!227 zl!343) lt!2141029)))

(declare-fun b!5201744 () Bool)

(assert (=> b!5201744 (= e!3239053 (Cons!60530 (generalisedConcat!454 (exprs!4669 (h!66979 zl!343))) (unfocusZipperList!227 (t!373808 zl!343))))))

(declare-fun b!5201745 () Bool)

(assert (=> b!5201745 (= e!3239053 Nil!60530)))

(assert (= (and d!1677808 c!896561) b!5201744))

(assert (= (and d!1677808 (not c!896561)) b!5201745))

(declare-fun m!6253978 () Bool)

(assert (=> d!1677808 m!6253978))

(assert (=> b!5201744 m!6253672))

(declare-fun m!6253980 () Bool)

(assert (=> b!5201744 m!6253980))

(assert (=> b!5201208 d!1677808))

(declare-fun d!1677810 () Bool)

(declare-fun e!3239075 () Bool)

(assert (=> d!1677810 e!3239075))

(declare-fun res!2209972 () Bool)

(assert (=> d!1677810 (=> res!2209972 e!3239075)))

(declare-fun e!3239076 () Bool)

(assert (=> d!1677810 (= res!2209972 e!3239076)))

(declare-fun res!2209970 () Bool)

(assert (=> d!1677810 (=> (not res!2209970) (not e!3239076))))

(declare-fun lt!2141036 () Option!14896)

(assert (=> d!1677810 (= res!2209970 (isDefined!11599 lt!2141036))))

(declare-fun e!3239079 () Option!14896)

(assert (=> d!1677810 (= lt!2141036 e!3239079)))

(declare-fun c!896566 () Bool)

(declare-fun e!3239077 () Bool)

(assert (=> d!1677810 (= c!896566 e!3239077)))

(declare-fun res!2209971 () Bool)

(assert (=> d!1677810 (=> (not res!2209971) (not e!3239077))))

(assert (=> d!1677810 (= res!2209971 (matchR!6970 (regOne!30082 r!7292) Nil!60532))))

(assert (=> d!1677810 (validRegex!6521 (regOne!30082 r!7292))))

(assert (=> d!1677810 (= (findConcatSeparation!1310 (regOne!30082 r!7292) (regTwo!30082 r!7292) Nil!60532 s!2326 s!2326) lt!2141036)))

(declare-fun b!5201785 () Bool)

(declare-fun res!2209974 () Bool)

(assert (=> b!5201785 (=> (not res!2209974) (not e!3239076))))

(declare-fun get!20795 (Option!14896) tuple2!63968)

(assert (=> b!5201785 (= res!2209974 (matchR!6970 (regTwo!30082 r!7292) (_2!35287 (get!20795 lt!2141036))))))

(declare-fun b!5201786 () Bool)

(assert (=> b!5201786 (= e!3239079 (Some!14895 (tuple2!63969 Nil!60532 s!2326)))))

(declare-fun b!5201787 () Bool)

(declare-fun res!2209973 () Bool)

(assert (=> b!5201787 (=> (not res!2209973) (not e!3239076))))

(assert (=> b!5201787 (= res!2209973 (matchR!6970 (regOne!30082 r!7292) (_1!35287 (get!20795 lt!2141036))))))

(declare-fun b!5201788 () Bool)

(declare-fun ++!13197 (List!60656 List!60656) List!60656)

(assert (=> b!5201788 (= e!3239076 (= (++!13197 (_1!35287 (get!20795 lt!2141036)) (_2!35287 (get!20795 lt!2141036))) s!2326))))

(declare-fun b!5201789 () Bool)

(assert (=> b!5201789 (= e!3239075 (not (isDefined!11599 lt!2141036)))))

(declare-fun b!5201790 () Bool)

(declare-fun e!3239078 () Option!14896)

(assert (=> b!5201790 (= e!3239078 None!14895)))

(declare-fun b!5201791 () Bool)

(assert (=> b!5201791 (= e!3239077 (matchR!6970 (regTwo!30082 r!7292) s!2326))))

(declare-fun b!5201792 () Bool)

(assert (=> b!5201792 (= e!3239079 e!3239078)))

(declare-fun c!896567 () Bool)

(assert (=> b!5201792 (= c!896567 ((_ is Nil!60532) s!2326))))

(declare-fun b!5201793 () Bool)

(declare-fun lt!2141037 () Unit!152406)

(declare-fun lt!2141038 () Unit!152406)

(assert (=> b!5201793 (= lt!2141037 lt!2141038)))

(assert (=> b!5201793 (= (++!13197 (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) Nil!60532)) (t!373809 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1612 (List!60656 C!29840 List!60656 List!60656) Unit!152406)

(assert (=> b!5201793 (= lt!2141038 (lemmaMoveElementToOtherListKeepsConcatEq!1612 Nil!60532 (h!66980 s!2326) (t!373809 s!2326) s!2326))))

(assert (=> b!5201793 (= e!3239078 (findConcatSeparation!1310 (regOne!30082 r!7292) (regTwo!30082 r!7292) (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) Nil!60532)) (t!373809 s!2326) s!2326))))

(assert (= (and d!1677810 res!2209971) b!5201791))

(assert (= (and d!1677810 c!896566) b!5201786))

(assert (= (and d!1677810 (not c!896566)) b!5201792))

(assert (= (and b!5201792 c!896567) b!5201790))

(assert (= (and b!5201792 (not c!896567)) b!5201793))

(assert (= (and d!1677810 res!2209970) b!5201787))

(assert (= (and b!5201787 res!2209973) b!5201785))

(assert (= (and b!5201785 res!2209974) b!5201788))

(assert (= (and d!1677810 (not res!2209972)) b!5201789))

(declare-fun m!6253986 () Bool)

(assert (=> b!5201788 m!6253986))

(declare-fun m!6253988 () Bool)

(assert (=> b!5201788 m!6253988))

(declare-fun m!6253990 () Bool)

(assert (=> d!1677810 m!6253990))

(declare-fun m!6253992 () Bool)

(assert (=> d!1677810 m!6253992))

(declare-fun m!6253994 () Bool)

(assert (=> d!1677810 m!6253994))

(assert (=> b!5201789 m!6253990))

(assert (=> b!5201787 m!6253986))

(declare-fun m!6253996 () Bool)

(assert (=> b!5201787 m!6253996))

(assert (=> b!5201785 m!6253986))

(declare-fun m!6253998 () Bool)

(assert (=> b!5201785 m!6253998))

(declare-fun m!6254000 () Bool)

(assert (=> b!5201793 m!6254000))

(assert (=> b!5201793 m!6254000))

(declare-fun m!6254002 () Bool)

(assert (=> b!5201793 m!6254002))

(declare-fun m!6254004 () Bool)

(assert (=> b!5201793 m!6254004))

(assert (=> b!5201793 m!6254000))

(declare-fun m!6254006 () Bool)

(assert (=> b!5201793 m!6254006))

(declare-fun m!6254008 () Bool)

(assert (=> b!5201791 m!6254008))

(assert (=> b!5201207 d!1677810))

(declare-fun d!1677816 () Bool)

(declare-fun choose!38662 (Int) Bool)

(assert (=> d!1677816 (= (Exists!1966 lambda!260602) (choose!38662 lambda!260602))))

(declare-fun bs!1209319 () Bool)

(assert (= bs!1209319 d!1677816))

(declare-fun m!6254010 () Bool)

(assert (=> bs!1209319 m!6254010))

(assert (=> b!5201207 d!1677816))

(declare-fun d!1677818 () Bool)

(assert (=> d!1677818 (= (Exists!1966 lambda!260603) (choose!38662 lambda!260603))))

(declare-fun bs!1209320 () Bool)

(assert (= bs!1209320 d!1677818))

(declare-fun m!6254012 () Bool)

(assert (=> bs!1209320 m!6254012))

(assert (=> b!5201207 d!1677818))

(declare-fun bs!1209321 () Bool)

(declare-fun d!1677820 () Bool)

(assert (= bs!1209321 (and d!1677820 b!5201207)))

(declare-fun lambda!260655 () Int)

(assert (=> bs!1209321 (= lambda!260655 lambda!260602)))

(assert (=> bs!1209321 (not (= lambda!260655 lambda!260603))))

(declare-fun bs!1209322 () Bool)

(assert (= bs!1209322 (and d!1677820 b!5201462)))

(assert (=> bs!1209322 (not (= lambda!260655 lambda!260628))))

(declare-fun bs!1209323 () Bool)

(assert (= bs!1209323 (and d!1677820 b!5201470)))

(assert (=> bs!1209323 (not (= lambda!260655 lambda!260630))))

(assert (=> d!1677820 true))

(assert (=> d!1677820 true))

(assert (=> d!1677820 true))

(assert (=> d!1677820 (= (isDefined!11599 (findConcatSeparation!1310 (regOne!30082 r!7292) (regTwo!30082 r!7292) Nil!60532 s!2326 s!2326)) (Exists!1966 lambda!260655))))

(declare-fun lt!2141041 () Unit!152406)

(declare-fun choose!38663 (Regex!14785 Regex!14785 List!60656) Unit!152406)

(assert (=> d!1677820 (= lt!2141041 (choose!38663 (regOne!30082 r!7292) (regTwo!30082 r!7292) s!2326))))

(assert (=> d!1677820 (validRegex!6521 (regOne!30082 r!7292))))

(assert (=> d!1677820 (= (lemmaFindConcatSeparationEquivalentToExists!1074 (regOne!30082 r!7292) (regTwo!30082 r!7292) s!2326) lt!2141041)))

(declare-fun bs!1209324 () Bool)

(assert (= bs!1209324 d!1677820))

(declare-fun m!6254014 () Bool)

(assert (=> bs!1209324 m!6254014))

(assert (=> bs!1209324 m!6253652))

(assert (=> bs!1209324 m!6253654))

(assert (=> bs!1209324 m!6253652))

(assert (=> bs!1209324 m!6253994))

(declare-fun m!6254016 () Bool)

(assert (=> bs!1209324 m!6254016))

(assert (=> b!5201207 d!1677820))

(declare-fun bs!1209325 () Bool)

(declare-fun d!1677822 () Bool)

(assert (= bs!1209325 (and d!1677822 b!5201470)))

(declare-fun lambda!260660 () Int)

(assert (=> bs!1209325 (not (= lambda!260660 lambda!260630))))

(declare-fun bs!1209326 () Bool)

(assert (= bs!1209326 (and d!1677822 b!5201462)))

(assert (=> bs!1209326 (not (= lambda!260660 lambda!260628))))

(declare-fun bs!1209327 () Bool)

(assert (= bs!1209327 (and d!1677822 b!5201207)))

(assert (=> bs!1209327 (= lambda!260660 lambda!260602)))

(declare-fun bs!1209328 () Bool)

(assert (= bs!1209328 (and d!1677822 d!1677820)))

(assert (=> bs!1209328 (= lambda!260660 lambda!260655)))

(assert (=> bs!1209327 (not (= lambda!260660 lambda!260603))))

(assert (=> d!1677822 true))

(assert (=> d!1677822 true))

(assert (=> d!1677822 true))

(declare-fun bs!1209329 () Bool)

(assert (= bs!1209329 d!1677822))

(declare-fun lambda!260661 () Int)

(assert (=> bs!1209329 (not (= lambda!260661 lambda!260660))))

(assert (=> bs!1209325 (= lambda!260661 lambda!260630)))

(assert (=> bs!1209326 (not (= lambda!260661 lambda!260628))))

(assert (=> bs!1209327 (not (= lambda!260661 lambda!260602))))

(assert (=> bs!1209328 (not (= lambda!260661 lambda!260655))))

(assert (=> bs!1209327 (= lambda!260661 lambda!260603)))

(assert (=> d!1677822 true))

(assert (=> d!1677822 true))

(assert (=> d!1677822 true))

(assert (=> d!1677822 (= (Exists!1966 lambda!260660) (Exists!1966 lambda!260661))))

(declare-fun lt!2141044 () Unit!152406)

(declare-fun choose!38664 (Regex!14785 Regex!14785 List!60656) Unit!152406)

(assert (=> d!1677822 (= lt!2141044 (choose!38664 (regOne!30082 r!7292) (regTwo!30082 r!7292) s!2326))))

(assert (=> d!1677822 (validRegex!6521 (regOne!30082 r!7292))))

(assert (=> d!1677822 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!620 (regOne!30082 r!7292) (regTwo!30082 r!7292) s!2326) lt!2141044)))

(declare-fun m!6254018 () Bool)

(assert (=> bs!1209329 m!6254018))

(declare-fun m!6254020 () Bool)

(assert (=> bs!1209329 m!6254020))

(declare-fun m!6254022 () Bool)

(assert (=> bs!1209329 m!6254022))

(assert (=> bs!1209329 m!6253994))

(assert (=> b!5201207 d!1677822))

(declare-fun d!1677824 () Bool)

(declare-fun isEmpty!32442 (Option!14896) Bool)

(assert (=> d!1677824 (= (isDefined!11599 (findConcatSeparation!1310 (regOne!30082 r!7292) (regTwo!30082 r!7292) Nil!60532 s!2326 s!2326)) (not (isEmpty!32442 (findConcatSeparation!1310 (regOne!30082 r!7292) (regTwo!30082 r!7292) Nil!60532 s!2326 s!2326))))))

(declare-fun bs!1209330 () Bool)

(assert (= bs!1209330 d!1677824))

(assert (=> bs!1209330 m!6253652))

(declare-fun m!6254024 () Bool)

(assert (=> bs!1209330 m!6254024))

(assert (=> b!5201207 d!1677824))

(declare-fun b!5201828 () Bool)

(declare-fun e!3239099 () (InoxSet Context!8338))

(assert (=> b!5201828 (= e!3239099 ((as const (Array Context!8338 Bool)) false))))

(declare-fun b!5201830 () Bool)

(declare-fun e!3239103 () (InoxSet Context!8338))

(declare-fun e!3239102 () (InoxSet Context!8338))

(assert (=> b!5201830 (= e!3239103 e!3239102)))

(declare-fun c!896581 () Bool)

(assert (=> b!5201830 (= c!896581 ((_ is Concat!23630) (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun b!5201831 () Bool)

(declare-fun call!365657 () (InoxSet Context!8338))

(assert (=> b!5201831 (= e!3239099 call!365657)))

(declare-fun b!5201832 () Bool)

(declare-fun e!3239100 () (InoxSet Context!8338))

(declare-fun call!365660 () (InoxSet Context!8338))

(declare-fun call!365658 () (InoxSet Context!8338))

(assert (=> b!5201832 (= e!3239100 ((_ map or) call!365660 call!365658))))

(declare-fun c!896579 () Bool)

(declare-fun bm!365652 () Bool)

(declare-fun call!365659 () List!60654)

(assert (=> bm!365652 (= call!365658 (derivationStepZipperDown!233 (ite c!896579 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343))))) (ite c!896579 lt!2140961 (Context!8339 call!365659)) (h!66980 s!2326)))))

(declare-fun b!5201833 () Bool)

(declare-fun e!3239101 () Bool)

(assert (=> b!5201833 (= e!3239101 (nullable!4954 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343))))))))

(declare-fun c!896578 () Bool)

(declare-fun bm!365653 () Bool)

(declare-fun $colon$colon!1267 (List!60654 Regex!14785) List!60654)

(assert (=> bm!365653 (= call!365659 ($colon$colon!1267 (exprs!4669 lt!2140961) (ite (or c!896578 c!896581) (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (h!66978 (exprs!4669 (h!66979 zl!343))))))))

(declare-fun b!5201834 () Bool)

(assert (=> b!5201834 (= e!3239102 call!365657)))

(declare-fun bm!365654 () Bool)

(declare-fun call!365661 () List!60654)

(assert (=> bm!365654 (= call!365660 (derivationStepZipperDown!233 (ite c!896579 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896578 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896581 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343))))))) (ite (or c!896579 c!896578) lt!2140961 (Context!8339 call!365661)) (h!66980 s!2326)))))

(declare-fun b!5201835 () Bool)

(declare-fun e!3239098 () (InoxSet Context!8338))

(assert (=> b!5201835 (= e!3239098 e!3239100)))

(assert (=> b!5201835 (= c!896579 ((_ is Union!14785) (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun b!5201836 () Bool)

(declare-fun c!896582 () Bool)

(assert (=> b!5201836 (= c!896582 ((_ is Star!14785) (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(assert (=> b!5201836 (= e!3239102 e!3239099)))

(declare-fun bm!365655 () Bool)

(declare-fun call!365662 () (InoxSet Context!8338))

(assert (=> bm!365655 (= call!365662 call!365660)))

(declare-fun bm!365656 () Bool)

(assert (=> bm!365656 (= call!365661 call!365659)))

(declare-fun d!1677826 () Bool)

(declare-fun c!896580 () Bool)

(assert (=> d!1677826 (= c!896580 (and ((_ is ElementMatch!14785) (h!66978 (exprs!4669 (h!66979 zl!343)))) (= (c!896412 (h!66978 (exprs!4669 (h!66979 zl!343)))) (h!66980 s!2326))))))

(assert (=> d!1677826 (= (derivationStepZipperDown!233 (h!66978 (exprs!4669 (h!66979 zl!343))) lt!2140961 (h!66980 s!2326)) e!3239098)))

(declare-fun b!5201829 () Bool)

(assert (=> b!5201829 (= e!3239103 ((_ map or) call!365658 call!365662))))

(declare-fun bm!365657 () Bool)

(assert (=> bm!365657 (= call!365657 call!365662)))

(declare-fun b!5201837 () Bool)

(assert (=> b!5201837 (= e!3239098 (store ((as const (Array Context!8338 Bool)) false) lt!2140961 true))))

(declare-fun b!5201838 () Bool)

(assert (=> b!5201838 (= c!896578 e!3239101)))

(declare-fun res!2209989 () Bool)

(assert (=> b!5201838 (=> (not res!2209989) (not e!3239101))))

(assert (=> b!5201838 (= res!2209989 ((_ is Concat!23630) (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(assert (=> b!5201838 (= e!3239100 e!3239103)))

(assert (= (and d!1677826 c!896580) b!5201837))

(assert (= (and d!1677826 (not c!896580)) b!5201835))

(assert (= (and b!5201835 c!896579) b!5201832))

(assert (= (and b!5201835 (not c!896579)) b!5201838))

(assert (= (and b!5201838 res!2209989) b!5201833))

(assert (= (and b!5201838 c!896578) b!5201829))

(assert (= (and b!5201838 (not c!896578)) b!5201830))

(assert (= (and b!5201830 c!896581) b!5201834))

(assert (= (and b!5201830 (not c!896581)) b!5201836))

(assert (= (and b!5201836 c!896582) b!5201831))

(assert (= (and b!5201836 (not c!896582)) b!5201828))

(assert (= (or b!5201834 b!5201831) bm!365656))

(assert (= (or b!5201834 b!5201831) bm!365657))

(assert (= (or b!5201829 bm!365656) bm!365653))

(assert (= (or b!5201829 bm!365657) bm!365655))

(assert (= (or b!5201832 b!5201829) bm!365652))

(assert (= (or b!5201832 bm!365655) bm!365654))

(declare-fun m!6254026 () Bool)

(assert (=> bm!365653 m!6254026))

(declare-fun m!6254028 () Bool)

(assert (=> bm!365654 m!6254028))

(declare-fun m!6254030 () Bool)

(assert (=> b!5201833 m!6254030))

(assert (=> b!5201837 m!6253634))

(declare-fun m!6254032 () Bool)

(assert (=> bm!365652 m!6254032))

(assert (=> b!5201198 d!1677826))

(declare-fun d!1677828 () Bool)

(declare-fun dynLambda!23913 (Int Context!8338) (InoxSet Context!8338))

(assert (=> d!1677828 (= (flatMap!512 z!1189 lambda!260604) (dynLambda!23913 lambda!260604 (h!66979 zl!343)))))

(declare-fun lt!2141047 () Unit!152406)

(declare-fun choose!38665 ((InoxSet Context!8338) Context!8338 Int) Unit!152406)

(assert (=> d!1677828 (= lt!2141047 (choose!38665 z!1189 (h!66979 zl!343) lambda!260604))))

(assert (=> d!1677828 (= z!1189 (store ((as const (Array Context!8338 Bool)) false) (h!66979 zl!343) true))))

(assert (=> d!1677828 (= (lemmaFlatMapOnSingletonSet!44 z!1189 (h!66979 zl!343) lambda!260604) lt!2141047)))

(declare-fun b_lambda!201295 () Bool)

(assert (=> (not b_lambda!201295) (not d!1677828)))

(declare-fun bs!1209331 () Bool)

(assert (= bs!1209331 d!1677828))

(assert (=> bs!1209331 m!6253638))

(declare-fun m!6254034 () Bool)

(assert (=> bs!1209331 m!6254034))

(declare-fun m!6254036 () Bool)

(assert (=> bs!1209331 m!6254036))

(declare-fun m!6254038 () Bool)

(assert (=> bs!1209331 m!6254038))

(assert (=> b!5201198 d!1677828))

(declare-fun b!5201849 () Bool)

(declare-fun e!3239111 () Bool)

(assert (=> b!5201849 (= e!3239111 (nullable!4954 (h!66978 (exprs!4669 lt!2140961))))))

(declare-fun b!5201850 () Bool)

(declare-fun e!3239110 () (InoxSet Context!8338))

(declare-fun call!365665 () (InoxSet Context!8338))

(assert (=> b!5201850 (= e!3239110 call!365665)))

(declare-fun bm!365660 () Bool)

(assert (=> bm!365660 (= call!365665 (derivationStepZipperDown!233 (h!66978 (exprs!4669 lt!2140961)) (Context!8339 (t!373807 (exprs!4669 lt!2140961))) (h!66980 s!2326)))))

(declare-fun b!5201852 () Bool)

(declare-fun e!3239112 () (InoxSet Context!8338))

(assert (=> b!5201852 (= e!3239112 ((_ map or) call!365665 (derivationStepZipperUp!157 (Context!8339 (t!373807 (exprs!4669 lt!2140961))) (h!66980 s!2326))))))

(declare-fun b!5201853 () Bool)

(assert (=> b!5201853 (= e!3239112 e!3239110)))

(declare-fun c!896587 () Bool)

(assert (=> b!5201853 (= c!896587 ((_ is Cons!60530) (exprs!4669 lt!2140961)))))

(declare-fun b!5201851 () Bool)

(assert (=> b!5201851 (= e!3239110 ((as const (Array Context!8338 Bool)) false))))

(declare-fun d!1677830 () Bool)

(declare-fun c!896588 () Bool)

(assert (=> d!1677830 (= c!896588 e!3239111)))

(declare-fun res!2209992 () Bool)

(assert (=> d!1677830 (=> (not res!2209992) (not e!3239111))))

(assert (=> d!1677830 (= res!2209992 ((_ is Cons!60530) (exprs!4669 lt!2140961)))))

(assert (=> d!1677830 (= (derivationStepZipperUp!157 lt!2140961 (h!66980 s!2326)) e!3239112)))

(assert (= (and d!1677830 res!2209992) b!5201849))

(assert (= (and d!1677830 c!896588) b!5201852))

(assert (= (and d!1677830 (not c!896588)) b!5201853))

(assert (= (and b!5201853 c!896587) b!5201850))

(assert (= (and b!5201853 (not c!896587)) b!5201851))

(assert (= (or b!5201852 b!5201850) bm!365660))

(declare-fun m!6254040 () Bool)

(assert (=> b!5201849 m!6254040))

(declare-fun m!6254042 () Bool)

(assert (=> bm!365660 m!6254042))

(declare-fun m!6254044 () Bool)

(assert (=> b!5201852 m!6254044))

(assert (=> b!5201198 d!1677830))

(declare-fun d!1677832 () Bool)

(declare-fun nullableFct!1369 (Regex!14785) Bool)

(assert (=> d!1677832 (= (nullable!4954 (h!66978 (exprs!4669 (h!66979 zl!343)))) (nullableFct!1369 (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun bs!1209332 () Bool)

(assert (= bs!1209332 d!1677832))

(declare-fun m!6254046 () Bool)

(assert (=> bs!1209332 m!6254046))

(assert (=> b!5201198 d!1677832))

(declare-fun b!5201854 () Bool)

(declare-fun e!3239114 () Bool)

(assert (=> b!5201854 (= e!3239114 (nullable!4954 (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))))))

(declare-fun b!5201855 () Bool)

(declare-fun e!3239113 () (InoxSet Context!8338))

(declare-fun call!365666 () (InoxSet Context!8338))

(assert (=> b!5201855 (= e!3239113 call!365666)))

(declare-fun bm!365661 () Bool)

(assert (=> bm!365661 (= call!365666 (derivationStepZipperDown!233 (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343))))))) (Context!8339 (t!373807 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))) (h!66980 s!2326)))))

(declare-fun b!5201857 () Bool)

(declare-fun e!3239115 () (InoxSet Context!8338))

(assert (=> b!5201857 (= e!3239115 ((_ map or) call!365666 (derivationStepZipperUp!157 (Context!8339 (t!373807 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))) (h!66980 s!2326))))))

(declare-fun b!5201858 () Bool)

(assert (=> b!5201858 (= e!3239115 e!3239113)))

(declare-fun c!896589 () Bool)

(assert (=> b!5201858 (= c!896589 ((_ is Cons!60530) (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343))))))))))

(declare-fun b!5201856 () Bool)

(assert (=> b!5201856 (= e!3239113 ((as const (Array Context!8338 Bool)) false))))

(declare-fun d!1677834 () Bool)

(declare-fun c!896590 () Bool)

(assert (=> d!1677834 (= c!896590 e!3239114)))

(declare-fun res!2209993 () Bool)

(assert (=> d!1677834 (=> (not res!2209993) (not e!3239114))))

(assert (=> d!1677834 (= res!2209993 ((_ is Cons!60530) (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343))))))))))

(assert (=> d!1677834 (= (derivationStepZipperUp!157 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343))))) (h!66980 s!2326)) e!3239115)))

(assert (= (and d!1677834 res!2209993) b!5201854))

(assert (= (and d!1677834 c!896590) b!5201857))

(assert (= (and d!1677834 (not c!896590)) b!5201858))

(assert (= (and b!5201858 c!896589) b!5201855))

(assert (= (and b!5201858 (not c!896589)) b!5201856))

(assert (= (or b!5201857 b!5201855) bm!365661))

(declare-fun m!6254048 () Bool)

(assert (=> b!5201854 m!6254048))

(declare-fun m!6254050 () Bool)

(assert (=> bm!365661 m!6254050))

(declare-fun m!6254052 () Bool)

(assert (=> b!5201857 m!6254052))

(assert (=> b!5201198 d!1677834))

(declare-fun d!1677836 () Bool)

(declare-fun choose!38666 ((InoxSet Context!8338) Int) (InoxSet Context!8338))

(assert (=> d!1677836 (= (flatMap!512 z!1189 lambda!260604) (choose!38666 z!1189 lambda!260604))))

(declare-fun bs!1209333 () Bool)

(assert (= bs!1209333 d!1677836))

(declare-fun m!6254054 () Bool)

(assert (=> bs!1209333 m!6254054))

(assert (=> b!5201198 d!1677836))

(declare-fun b!5201859 () Bool)

(declare-fun e!3239117 () Bool)

(assert (=> b!5201859 (= e!3239117 (nullable!4954 (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun b!5201860 () Bool)

(declare-fun e!3239116 () (InoxSet Context!8338))

(declare-fun call!365667 () (InoxSet Context!8338))

(assert (=> b!5201860 (= e!3239116 call!365667)))

(declare-fun bm!365662 () Bool)

(assert (=> bm!365662 (= call!365667 (derivationStepZipperDown!233 (h!66978 (exprs!4669 (h!66979 zl!343))) (Context!8339 (t!373807 (exprs!4669 (h!66979 zl!343)))) (h!66980 s!2326)))))

(declare-fun e!3239118 () (InoxSet Context!8338))

(declare-fun b!5201862 () Bool)

(assert (=> b!5201862 (= e!3239118 ((_ map or) call!365667 (derivationStepZipperUp!157 (Context!8339 (t!373807 (exprs!4669 (h!66979 zl!343)))) (h!66980 s!2326))))))

(declare-fun b!5201863 () Bool)

(assert (=> b!5201863 (= e!3239118 e!3239116)))

(declare-fun c!896591 () Bool)

(assert (=> b!5201863 (= c!896591 ((_ is Cons!60530) (exprs!4669 (h!66979 zl!343))))))

(declare-fun b!5201861 () Bool)

(assert (=> b!5201861 (= e!3239116 ((as const (Array Context!8338 Bool)) false))))

(declare-fun d!1677838 () Bool)

(declare-fun c!896592 () Bool)

(assert (=> d!1677838 (= c!896592 e!3239117)))

(declare-fun res!2209994 () Bool)

(assert (=> d!1677838 (=> (not res!2209994) (not e!3239117))))

(assert (=> d!1677838 (= res!2209994 ((_ is Cons!60530) (exprs!4669 (h!66979 zl!343))))))

(assert (=> d!1677838 (= (derivationStepZipperUp!157 (h!66979 zl!343) (h!66980 s!2326)) e!3239118)))

(assert (= (and d!1677838 res!2209994) b!5201859))

(assert (= (and d!1677838 c!896592) b!5201862))

(assert (= (and d!1677838 (not c!896592)) b!5201863))

(assert (= (and b!5201863 c!896591) b!5201860))

(assert (= (and b!5201863 (not c!896591)) b!5201861))

(assert (= (or b!5201862 b!5201860) bm!365662))

(assert (=> b!5201859 m!6253632))

(declare-fun m!6254056 () Bool)

(assert (=> bm!365662 m!6254056))

(declare-fun m!6254058 () Bool)

(assert (=> b!5201862 m!6254058))

(assert (=> b!5201198 d!1677838))

(declare-fun b!5201875 () Bool)

(declare-fun e!3239121 () Bool)

(declare-fun tp!1458978 () Bool)

(declare-fun tp!1458975 () Bool)

(assert (=> b!5201875 (= e!3239121 (and tp!1458978 tp!1458975))))

(declare-fun b!5201876 () Bool)

(declare-fun tp!1458977 () Bool)

(assert (=> b!5201876 (= e!3239121 tp!1458977)))

(declare-fun b!5201874 () Bool)

(assert (=> b!5201874 (= e!3239121 tp_is_empty!38823)))

(assert (=> b!5201196 (= tp!1458903 e!3239121)))

(declare-fun b!5201877 () Bool)

(declare-fun tp!1458976 () Bool)

(declare-fun tp!1458974 () Bool)

(assert (=> b!5201877 (= e!3239121 (and tp!1458976 tp!1458974))))

(assert (= (and b!5201196 ((_ is ElementMatch!14785) (regOne!30082 r!7292))) b!5201874))

(assert (= (and b!5201196 ((_ is Concat!23630) (regOne!30082 r!7292))) b!5201875))

(assert (= (and b!5201196 ((_ is Star!14785) (regOne!30082 r!7292))) b!5201876))

(assert (= (and b!5201196 ((_ is Union!14785) (regOne!30082 r!7292))) b!5201877))

(declare-fun b!5201879 () Bool)

(declare-fun e!3239122 () Bool)

(declare-fun tp!1458983 () Bool)

(declare-fun tp!1458980 () Bool)

(assert (=> b!5201879 (= e!3239122 (and tp!1458983 tp!1458980))))

(declare-fun b!5201880 () Bool)

(declare-fun tp!1458982 () Bool)

(assert (=> b!5201880 (= e!3239122 tp!1458982)))

(declare-fun b!5201878 () Bool)

(assert (=> b!5201878 (= e!3239122 tp_is_empty!38823)))

(assert (=> b!5201196 (= tp!1458905 e!3239122)))

(declare-fun b!5201881 () Bool)

(declare-fun tp!1458981 () Bool)

(declare-fun tp!1458979 () Bool)

(assert (=> b!5201881 (= e!3239122 (and tp!1458981 tp!1458979))))

(assert (= (and b!5201196 ((_ is ElementMatch!14785) (regTwo!30082 r!7292))) b!5201878))

(assert (= (and b!5201196 ((_ is Concat!23630) (regTwo!30082 r!7292))) b!5201879))

(assert (= (and b!5201196 ((_ is Star!14785) (regTwo!30082 r!7292))) b!5201880))

(assert (= (and b!5201196 ((_ is Union!14785) (regTwo!30082 r!7292))) b!5201881))

(declare-fun b!5201886 () Bool)

(declare-fun e!3239125 () Bool)

(declare-fun tp!1458988 () Bool)

(declare-fun tp!1458989 () Bool)

(assert (=> b!5201886 (= e!3239125 (and tp!1458988 tp!1458989))))

(assert (=> b!5201209 (= tp!1458897 e!3239125)))

(assert (= (and b!5201209 ((_ is Cons!60530) (exprs!4669 (h!66979 zl!343)))) b!5201886))

(declare-fun condSetEmpty!32998 () Bool)

(assert (=> setNonEmpty!32992 (= condSetEmpty!32998 (= setRest!32992 ((as const (Array Context!8338 Bool)) false)))))

(declare-fun setRes!32998 () Bool)

(assert (=> setNonEmpty!32992 (= tp!1458904 setRes!32998)))

(declare-fun setIsEmpty!32998 () Bool)

(assert (=> setIsEmpty!32998 setRes!32998))

(declare-fun e!3239128 () Bool)

(declare-fun tp!1458995 () Bool)

(declare-fun setElem!32998 () Context!8338)

(declare-fun setNonEmpty!32998 () Bool)

(assert (=> setNonEmpty!32998 (= setRes!32998 (and tp!1458995 (inv!80209 setElem!32998) e!3239128))))

(declare-fun setRest!32998 () (InoxSet Context!8338))

(assert (=> setNonEmpty!32998 (= setRest!32992 ((_ map or) (store ((as const (Array Context!8338 Bool)) false) setElem!32998 true) setRest!32998))))

(declare-fun b!5201891 () Bool)

(declare-fun tp!1458994 () Bool)

(assert (=> b!5201891 (= e!3239128 tp!1458994)))

(assert (= (and setNonEmpty!32992 condSetEmpty!32998) setIsEmpty!32998))

(assert (= (and setNonEmpty!32992 (not condSetEmpty!32998)) setNonEmpty!32998))

(assert (= setNonEmpty!32998 b!5201891))

(declare-fun m!6254060 () Bool)

(assert (=> setNonEmpty!32998 m!6254060))

(declare-fun b!5201892 () Bool)

(declare-fun e!3239129 () Bool)

(declare-fun tp!1458996 () Bool)

(declare-fun tp!1458997 () Bool)

(assert (=> b!5201892 (= e!3239129 (and tp!1458996 tp!1458997))))

(assert (=> b!5201193 (= tp!1458902 e!3239129)))

(assert (= (and b!5201193 ((_ is Cons!60530) (exprs!4669 setElem!32992))) b!5201892))

(declare-fun b!5201900 () Bool)

(declare-fun e!3239135 () Bool)

(declare-fun tp!1459002 () Bool)

(assert (=> b!5201900 (= e!3239135 tp!1459002)))

(declare-fun e!3239134 () Bool)

(declare-fun tp!1459003 () Bool)

(declare-fun b!5201899 () Bool)

(assert (=> b!5201899 (= e!3239134 (and (inv!80209 (h!66979 (t!373808 zl!343))) e!3239135 tp!1459003))))

(assert (=> b!5201199 (= tp!1458900 e!3239134)))

(assert (= b!5201899 b!5201900))

(assert (= (and b!5201199 ((_ is Cons!60531) (t!373808 zl!343))) b!5201899))

(declare-fun m!6254062 () Bool)

(assert (=> b!5201899 m!6254062))

(declare-fun b!5201905 () Bool)

(declare-fun e!3239138 () Bool)

(declare-fun tp!1459006 () Bool)

(assert (=> b!5201905 (= e!3239138 (and tp_is_empty!38823 tp!1459006))))

(assert (=> b!5201197 (= tp!1458899 e!3239138)))

(assert (= (and b!5201197 ((_ is Cons!60532) (t!373809 s!2326))) b!5201905))

(declare-fun b!5201907 () Bool)

(declare-fun e!3239139 () Bool)

(declare-fun tp!1459011 () Bool)

(declare-fun tp!1459008 () Bool)

(assert (=> b!5201907 (= e!3239139 (and tp!1459011 tp!1459008))))

(declare-fun b!5201908 () Bool)

(declare-fun tp!1459010 () Bool)

(assert (=> b!5201908 (= e!3239139 tp!1459010)))

(declare-fun b!5201906 () Bool)

(assert (=> b!5201906 (= e!3239139 tp_is_empty!38823)))

(assert (=> b!5201203 (= tp!1458898 e!3239139)))

(declare-fun b!5201909 () Bool)

(declare-fun tp!1459009 () Bool)

(declare-fun tp!1459007 () Bool)

(assert (=> b!5201909 (= e!3239139 (and tp!1459009 tp!1459007))))

(assert (= (and b!5201203 ((_ is ElementMatch!14785) (regOne!30083 r!7292))) b!5201906))

(assert (= (and b!5201203 ((_ is Concat!23630) (regOne!30083 r!7292))) b!5201907))

(assert (= (and b!5201203 ((_ is Star!14785) (regOne!30083 r!7292))) b!5201908))

(assert (= (and b!5201203 ((_ is Union!14785) (regOne!30083 r!7292))) b!5201909))

(declare-fun b!5201911 () Bool)

(declare-fun e!3239140 () Bool)

(declare-fun tp!1459016 () Bool)

(declare-fun tp!1459013 () Bool)

(assert (=> b!5201911 (= e!3239140 (and tp!1459016 tp!1459013))))

(declare-fun b!5201912 () Bool)

(declare-fun tp!1459015 () Bool)

(assert (=> b!5201912 (= e!3239140 tp!1459015)))

(declare-fun b!5201910 () Bool)

(assert (=> b!5201910 (= e!3239140 tp_is_empty!38823)))

(assert (=> b!5201203 (= tp!1458896 e!3239140)))

(declare-fun b!5201913 () Bool)

(declare-fun tp!1459014 () Bool)

(declare-fun tp!1459012 () Bool)

(assert (=> b!5201913 (= e!3239140 (and tp!1459014 tp!1459012))))

(assert (= (and b!5201203 ((_ is ElementMatch!14785) (regTwo!30083 r!7292))) b!5201910))

(assert (= (and b!5201203 ((_ is Concat!23630) (regTwo!30083 r!7292))) b!5201911))

(assert (= (and b!5201203 ((_ is Star!14785) (regTwo!30083 r!7292))) b!5201912))

(assert (= (and b!5201203 ((_ is Union!14785) (regTwo!30083 r!7292))) b!5201913))

(declare-fun b!5201915 () Bool)

(declare-fun e!3239141 () Bool)

(declare-fun tp!1459021 () Bool)

(declare-fun tp!1459018 () Bool)

(assert (=> b!5201915 (= e!3239141 (and tp!1459021 tp!1459018))))

(declare-fun b!5201916 () Bool)

(declare-fun tp!1459020 () Bool)

(assert (=> b!5201916 (= e!3239141 tp!1459020)))

(declare-fun b!5201914 () Bool)

(assert (=> b!5201914 (= e!3239141 tp_is_empty!38823)))

(assert (=> b!5201187 (= tp!1458901 e!3239141)))

(declare-fun b!5201917 () Bool)

(declare-fun tp!1459019 () Bool)

(declare-fun tp!1459017 () Bool)

(assert (=> b!5201917 (= e!3239141 (and tp!1459019 tp!1459017))))

(assert (= (and b!5201187 ((_ is ElementMatch!14785) (reg!15114 r!7292))) b!5201914))

(assert (= (and b!5201187 ((_ is Concat!23630) (reg!15114 r!7292))) b!5201915))

(assert (= (and b!5201187 ((_ is Star!14785) (reg!15114 r!7292))) b!5201916))

(assert (= (and b!5201187 ((_ is Union!14785) (reg!15114 r!7292))) b!5201917))

(declare-fun b_lambda!201297 () Bool)

(assert (= b_lambda!201289 (or b!5201188 b_lambda!201297)))

(declare-fun bs!1209334 () Bool)

(declare-fun d!1677840 () Bool)

(assert (= bs!1209334 (and d!1677840 b!5201188)))

(assert (=> bs!1209334 (= (dynLambda!23912 lambda!260605 (h!66978 (t!373807 (exprs!4669 (h!66979 zl!343))))) (validRegex!6521 (h!66978 (t!373807 (exprs!4669 (h!66979 zl!343))))))))

(declare-fun m!6254064 () Bool)

(assert (=> bs!1209334 m!6254064))

(assert (=> b!5201634 d!1677840))

(declare-fun b_lambda!201299 () Bool)

(assert (= b_lambda!201295 (or b!5201198 b_lambda!201299)))

(declare-fun bs!1209335 () Bool)

(declare-fun d!1677842 () Bool)

(assert (= bs!1209335 (and d!1677842 b!5201198)))

(assert (=> bs!1209335 (= (dynLambda!23913 lambda!260604 (h!66979 zl!343)) (derivationStepZipperUp!157 (h!66979 zl!343) (h!66980 s!2326)))))

(assert (=> bs!1209335 m!6253630))

(assert (=> d!1677828 d!1677842))

(check-sat (not b!5201385) (not b!5201791) (not bm!365587) (not bm!365661) (not b!5201907) (not b!5201854) (not b!5201788) (not b!5201689) (not d!1677836) (not b!5201913) (not bm!365618) (not b!5201876) (not b!5201463) (not b!5201467) (not b!5201912) (not b!5201862) (not b!5201886) (not d!1677764) (not d!1677754) (not d!1677820) (not b!5201908) (not b!5201547) (not b!5201744) (not b!5201635) (not b!5201916) (not b!5201892) (not d!1677734) (not b!5201556) (not bm!365662) (not b!5201785) (not d!1677816) (not b!5201833) (not b!5201593) (not b_lambda!201299) (not d!1677792) (not b!5201384) (not bm!365621) (not b!5201891) (not d!1677782) (not b!5201383) (not b!5201793) (not d!1677832) (not bm!365660) (not b_lambda!201297) (not b!5201849) (not b!5201629) (not b!5201905) (not b!5201900) (not d!1677740) (not bm!365653) (not b!5201881) (not d!1677738) (not b!5201551) (not b!5201594) (not d!1677822) (not b!5201690) (not b!5201693) (not b!5201332) (not b!5201286) (not b!5201909) (not b!5201602) (not b!5201899) (not b!5201596) (not b!5201691) (not bm!365589) (not d!1677828) tp_is_empty!38823 (not d!1677766) (not d!1677802) (not b!5201382) (not setNonEmpty!32998) (not b!5201915) (not d!1677796) (not d!1677808) (not b!5201696) (not bs!1209335) (not d!1677818) (not b!5201877) (not d!1677810) (not bm!365652) (not b!5201381) (not bs!1209334) (not b!5201697) (not bm!365654) (not b!5201598) (not b!5201550) (not b!5201331) (not b!5201554) (not b!5201601) (not bm!365617) (not b!5201875) (not b!5201880) (not d!1677824) (not b!5201859) (not b!5201852) (not b!5201857) (not b!5201694) (not d!1677800) (not b!5201917) (not b!5201787) (not b!5201553) (not b!5201879) (not b!5201600) (not d!1677788) (not b!5201789) (not b!5201911))
(check-sat)
(get-model)

(declare-fun d!1677864 () Bool)

(declare-fun c!896603 () Bool)

(assert (=> d!1677864 (= c!896603 (isEmpty!32440 (tail!10250 (t!373809 s!2326))))))

(declare-fun e!3239162 () Bool)

(assert (=> d!1677864 (= (matchZipper!1029 (derivationStepZipper!1061 lt!2140962 (head!11153 (t!373809 s!2326))) (tail!10250 (t!373809 s!2326))) e!3239162)))

(declare-fun b!5201952 () Bool)

(assert (=> b!5201952 (= e!3239162 (nullableZipper!1217 (derivationStepZipper!1061 lt!2140962 (head!11153 (t!373809 s!2326)))))))

(declare-fun b!5201953 () Bool)

(assert (=> b!5201953 (= e!3239162 (matchZipper!1029 (derivationStepZipper!1061 (derivationStepZipper!1061 lt!2140962 (head!11153 (t!373809 s!2326))) (head!11153 (tail!10250 (t!373809 s!2326)))) (tail!10250 (tail!10250 (t!373809 s!2326)))))))

(assert (= (and d!1677864 c!896603) b!5201952))

(assert (= (and d!1677864 (not c!896603)) b!5201953))

(assert (=> d!1677864 m!6253750))

(declare-fun m!6254102 () Bool)

(assert (=> d!1677864 m!6254102))

(assert (=> b!5201952 m!6253748))

(declare-fun m!6254104 () Bool)

(assert (=> b!5201952 m!6254104))

(assert (=> b!5201953 m!6253750))

(declare-fun m!6254106 () Bool)

(assert (=> b!5201953 m!6254106))

(assert (=> b!5201953 m!6253748))

(assert (=> b!5201953 m!6254106))

(declare-fun m!6254108 () Bool)

(assert (=> b!5201953 m!6254108))

(assert (=> b!5201953 m!6253750))

(declare-fun m!6254110 () Bool)

(assert (=> b!5201953 m!6254110))

(assert (=> b!5201953 m!6254108))

(assert (=> b!5201953 m!6254110))

(declare-fun m!6254112 () Bool)

(assert (=> b!5201953 m!6254112))

(assert (=> b!5201332 d!1677864))

(declare-fun bs!1209353 () Bool)

(declare-fun d!1677866 () Bool)

(assert (= bs!1209353 (and d!1677866 b!5201198)))

(declare-fun lambda!260667 () Int)

(assert (=> bs!1209353 (= (= (head!11153 (t!373809 s!2326)) (h!66980 s!2326)) (= lambda!260667 lambda!260604))))

(assert (=> d!1677866 true))

(assert (=> d!1677866 (= (derivationStepZipper!1061 lt!2140962 (head!11153 (t!373809 s!2326))) (flatMap!512 lt!2140962 lambda!260667))))

(declare-fun bs!1209354 () Bool)

(assert (= bs!1209354 d!1677866))

(declare-fun m!6254114 () Bool)

(assert (=> bs!1209354 m!6254114))

(assert (=> b!5201332 d!1677866))

(declare-fun d!1677868 () Bool)

(assert (=> d!1677868 (= (head!11153 (t!373809 s!2326)) (h!66980 (t!373809 s!2326)))))

(assert (=> b!5201332 d!1677868))

(declare-fun d!1677870 () Bool)

(assert (=> d!1677870 (= (tail!10250 (t!373809 s!2326)) (t!373809 (t!373809 s!2326)))))

(assert (=> b!5201332 d!1677870))

(declare-fun d!1677872 () Bool)

(assert (=> d!1677872 (= (isEmpty!32438 (unfocusZipperList!227 zl!343)) ((_ is Nil!60530) (unfocusZipperList!227 zl!343)))))

(assert (=> b!5201697 d!1677872))

(assert (=> d!1677828 d!1677836))

(declare-fun d!1677874 () Bool)

(assert (=> d!1677874 (= (flatMap!512 z!1189 lambda!260604) (dynLambda!23913 lambda!260604 (h!66979 zl!343)))))

(assert (=> d!1677874 true))

(declare-fun _$13!1660 () Unit!152406)

(assert (=> d!1677874 (= (choose!38665 z!1189 (h!66979 zl!343) lambda!260604) _$13!1660)))

(declare-fun b_lambda!201303 () Bool)

(assert (=> (not b_lambda!201303) (not d!1677874)))

(declare-fun bs!1209355 () Bool)

(assert (= bs!1209355 d!1677874))

(assert (=> bs!1209355 m!6253638))

(assert (=> bs!1209355 m!6254034))

(assert (=> d!1677828 d!1677874))

(declare-fun b!5201976 () Bool)

(declare-fun e!3239174 () (InoxSet Context!8338))

(assert (=> b!5201976 (= e!3239174 ((as const (Array Context!8338 Bool)) false))))

(declare-fun b!5201978 () Bool)

(declare-fun e!3239178 () (InoxSet Context!8338))

(declare-fun e!3239177 () (InoxSet Context!8338))

(assert (=> b!5201978 (= e!3239178 e!3239177)))

(declare-fun c!896619 () Bool)

(assert (=> b!5201978 (= c!896619 ((_ is Concat!23630) (h!66978 (exprs!4669 lt!2140961))))))

(declare-fun b!5201979 () Bool)

(declare-fun call!365674 () (InoxSet Context!8338))

(assert (=> b!5201979 (= e!3239174 call!365674)))

(declare-fun b!5201980 () Bool)

(declare-fun e!3239175 () (InoxSet Context!8338))

(declare-fun call!365679 () (InoxSet Context!8338))

(declare-fun call!365675 () (InoxSet Context!8338))

(assert (=> b!5201980 (= e!3239175 ((_ map or) call!365679 call!365675))))

(declare-fun c!896617 () Bool)

(declare-fun call!365676 () List!60654)

(declare-fun bm!365669 () Bool)

(assert (=> bm!365669 (= call!365675 (derivationStepZipperDown!233 (ite c!896617 (regTwo!30083 (h!66978 (exprs!4669 lt!2140961))) (regOne!30082 (h!66978 (exprs!4669 lt!2140961)))) (ite c!896617 (Context!8339 (t!373807 (exprs!4669 lt!2140961))) (Context!8339 call!365676)) (h!66980 s!2326)))))

(declare-fun b!5201981 () Bool)

(declare-fun e!3239176 () Bool)

(assert (=> b!5201981 (= e!3239176 (nullable!4954 (regOne!30082 (h!66978 (exprs!4669 lt!2140961)))))))

(declare-fun bm!365670 () Bool)

(declare-fun c!896616 () Bool)

(assert (=> bm!365670 (= call!365676 ($colon$colon!1267 (exprs!4669 (Context!8339 (t!373807 (exprs!4669 lt!2140961)))) (ite (or c!896616 c!896619) (regTwo!30082 (h!66978 (exprs!4669 lt!2140961))) (h!66978 (exprs!4669 lt!2140961)))))))

(declare-fun b!5201982 () Bool)

(assert (=> b!5201982 (= e!3239177 call!365674)))

(declare-fun bm!365671 () Bool)

(declare-fun call!365680 () List!60654)

(assert (=> bm!365671 (= call!365679 (derivationStepZipperDown!233 (ite c!896617 (regOne!30083 (h!66978 (exprs!4669 lt!2140961))) (ite c!896616 (regTwo!30082 (h!66978 (exprs!4669 lt!2140961))) (ite c!896619 (regOne!30082 (h!66978 (exprs!4669 lt!2140961))) (reg!15114 (h!66978 (exprs!4669 lt!2140961)))))) (ite (or c!896617 c!896616) (Context!8339 (t!373807 (exprs!4669 lt!2140961))) (Context!8339 call!365680)) (h!66980 s!2326)))))

(declare-fun b!5201983 () Bool)

(declare-fun e!3239173 () (InoxSet Context!8338))

(assert (=> b!5201983 (= e!3239173 e!3239175)))

(assert (=> b!5201983 (= c!896617 ((_ is Union!14785) (h!66978 (exprs!4669 lt!2140961))))))

(declare-fun b!5201984 () Bool)

(declare-fun c!896620 () Bool)

(assert (=> b!5201984 (= c!896620 ((_ is Star!14785) (h!66978 (exprs!4669 lt!2140961))))))

(assert (=> b!5201984 (= e!3239177 e!3239174)))

(declare-fun bm!365672 () Bool)

(declare-fun call!365681 () (InoxSet Context!8338))

(assert (=> bm!365672 (= call!365681 call!365679)))

(declare-fun bm!365673 () Bool)

(assert (=> bm!365673 (= call!365680 call!365676)))

(declare-fun d!1677876 () Bool)

(declare-fun c!896618 () Bool)

(assert (=> d!1677876 (= c!896618 (and ((_ is ElementMatch!14785) (h!66978 (exprs!4669 lt!2140961))) (= (c!896412 (h!66978 (exprs!4669 lt!2140961))) (h!66980 s!2326))))))

(assert (=> d!1677876 (= (derivationStepZipperDown!233 (h!66978 (exprs!4669 lt!2140961)) (Context!8339 (t!373807 (exprs!4669 lt!2140961))) (h!66980 s!2326)) e!3239173)))

(declare-fun b!5201977 () Bool)

(assert (=> b!5201977 (= e!3239178 ((_ map or) call!365675 call!365681))))

(declare-fun bm!365674 () Bool)

(assert (=> bm!365674 (= call!365674 call!365681)))

(declare-fun b!5201985 () Bool)

(assert (=> b!5201985 (= e!3239173 (store ((as const (Array Context!8338 Bool)) false) (Context!8339 (t!373807 (exprs!4669 lt!2140961))) true))))

(declare-fun b!5201986 () Bool)

(assert (=> b!5201986 (= c!896616 e!3239176)))

(declare-fun res!2210012 () Bool)

(assert (=> b!5201986 (=> (not res!2210012) (not e!3239176))))

(assert (=> b!5201986 (= res!2210012 ((_ is Concat!23630) (h!66978 (exprs!4669 lt!2140961))))))

(assert (=> b!5201986 (= e!3239175 e!3239178)))

(assert (= (and d!1677876 c!896618) b!5201985))

(assert (= (and d!1677876 (not c!896618)) b!5201983))

(assert (= (and b!5201983 c!896617) b!5201980))

(assert (= (and b!5201983 (not c!896617)) b!5201986))

(assert (= (and b!5201986 res!2210012) b!5201981))

(assert (= (and b!5201986 c!896616) b!5201977))

(assert (= (and b!5201986 (not c!896616)) b!5201978))

(assert (= (and b!5201978 c!896619) b!5201982))

(assert (= (and b!5201978 (not c!896619)) b!5201984))

(assert (= (and b!5201984 c!896620) b!5201979))

(assert (= (and b!5201984 (not c!896620)) b!5201976))

(assert (= (or b!5201982 b!5201979) bm!365673))

(assert (= (or b!5201982 b!5201979) bm!365674))

(assert (= (or b!5201977 bm!365673) bm!365670))

(assert (= (or b!5201977 bm!365674) bm!365672))

(assert (= (or b!5201980 b!5201977) bm!365669))

(assert (= (or b!5201980 bm!365672) bm!365671))

(declare-fun m!6254116 () Bool)

(assert (=> bm!365670 m!6254116))

(declare-fun m!6254118 () Bool)

(assert (=> bm!365671 m!6254118))

(declare-fun m!6254120 () Bool)

(assert (=> b!5201981 m!6254120))

(declare-fun m!6254122 () Bool)

(assert (=> b!5201985 m!6254122))

(declare-fun m!6254124 () Bool)

(assert (=> bm!365669 m!6254124))

(assert (=> bm!365660 d!1677876))

(declare-fun d!1677878 () Bool)

(assert (=> d!1677878 (= (isEmptyLang!762 lt!2141026) ((_ is EmptyLang!14785) lt!2141026))))

(assert (=> b!5201693 d!1677878))

(declare-fun b!5201987 () Bool)

(declare-fun e!3239182 () Bool)

(declare-fun e!3239180 () Bool)

(assert (=> b!5201987 (= e!3239182 e!3239180)))

(declare-fun c!896621 () Bool)

(assert (=> b!5201987 (= c!896621 ((_ is Star!14785) (h!66978 (t!373807 (exprs!4669 (h!66979 zl!343))))))))

(declare-fun bm!365681 () Bool)

(declare-fun call!365687 () Bool)

(declare-fun c!896622 () Bool)

(assert (=> bm!365681 (= call!365687 (validRegex!6521 (ite c!896622 (regTwo!30083 (h!66978 (t!373807 (exprs!4669 (h!66979 zl!343))))) (regTwo!30082 (h!66978 (t!373807 (exprs!4669 (h!66979 zl!343))))))))))

(declare-fun bm!365682 () Bool)

(declare-fun call!365688 () Bool)

(declare-fun call!365686 () Bool)

(assert (=> bm!365682 (= call!365688 call!365686)))

(declare-fun b!5201988 () Bool)

(declare-fun e!3239185 () Bool)

(assert (=> b!5201988 (= e!3239185 call!365687)))

(declare-fun b!5201989 () Bool)

(declare-fun res!2210014 () Bool)

(assert (=> b!5201989 (=> (not res!2210014) (not e!3239185))))

(assert (=> b!5201989 (= res!2210014 call!365688)))

(declare-fun e!3239179 () Bool)

(assert (=> b!5201989 (= e!3239179 e!3239185)))

(declare-fun b!5201990 () Bool)

(assert (=> b!5201990 (= e!3239180 e!3239179)))

(assert (=> b!5201990 (= c!896622 ((_ is Union!14785) (h!66978 (t!373807 (exprs!4669 (h!66979 zl!343))))))))

(declare-fun b!5201991 () Bool)

(declare-fun e!3239183 () Bool)

(assert (=> b!5201991 (= e!3239183 call!365686)))

(declare-fun b!5201992 () Bool)

(assert (=> b!5201992 (= e!3239180 e!3239183)))

(declare-fun res!2210016 () Bool)

(assert (=> b!5201992 (= res!2210016 (not (nullable!4954 (reg!15114 (h!66978 (t!373807 (exprs!4669 (h!66979 zl!343))))))))))

(assert (=> b!5201992 (=> (not res!2210016) (not e!3239183))))

(declare-fun b!5201993 () Bool)

(declare-fun e!3239184 () Bool)

(assert (=> b!5201993 (= e!3239184 call!365687)))

(declare-fun b!5201994 () Bool)

(declare-fun res!2210013 () Bool)

(declare-fun e!3239181 () Bool)

(assert (=> b!5201994 (=> res!2210013 e!3239181)))

(assert (=> b!5201994 (= res!2210013 (not ((_ is Concat!23630) (h!66978 (t!373807 (exprs!4669 (h!66979 zl!343)))))))))

(assert (=> b!5201994 (= e!3239179 e!3239181)))

(declare-fun b!5201995 () Bool)

(assert (=> b!5201995 (= e!3239181 e!3239184)))

(declare-fun res!2210015 () Bool)

(assert (=> b!5201995 (=> (not res!2210015) (not e!3239184))))

(assert (=> b!5201995 (= res!2210015 call!365688)))

(declare-fun d!1677880 () Bool)

(declare-fun res!2210017 () Bool)

(assert (=> d!1677880 (=> res!2210017 e!3239182)))

(assert (=> d!1677880 (= res!2210017 ((_ is ElementMatch!14785) (h!66978 (t!373807 (exprs!4669 (h!66979 zl!343))))))))

(assert (=> d!1677880 (= (validRegex!6521 (h!66978 (t!373807 (exprs!4669 (h!66979 zl!343))))) e!3239182)))

(declare-fun bm!365683 () Bool)

(assert (=> bm!365683 (= call!365686 (validRegex!6521 (ite c!896621 (reg!15114 (h!66978 (t!373807 (exprs!4669 (h!66979 zl!343))))) (ite c!896622 (regOne!30083 (h!66978 (t!373807 (exprs!4669 (h!66979 zl!343))))) (regOne!30082 (h!66978 (t!373807 (exprs!4669 (h!66979 zl!343)))))))))))

(assert (= (and d!1677880 (not res!2210017)) b!5201987))

(assert (= (and b!5201987 c!896621) b!5201992))

(assert (= (and b!5201987 (not c!896621)) b!5201990))

(assert (= (and b!5201992 res!2210016) b!5201991))

(assert (= (and b!5201990 c!896622) b!5201989))

(assert (= (and b!5201990 (not c!896622)) b!5201994))

(assert (= (and b!5201989 res!2210014) b!5201988))

(assert (= (and b!5201994 (not res!2210013)) b!5201995))

(assert (= (and b!5201995 res!2210015) b!5201993))

(assert (= (or b!5201988 b!5201993) bm!365681))

(assert (= (or b!5201989 b!5201995) bm!365682))

(assert (= (or b!5201991 bm!365682) bm!365683))

(declare-fun m!6254126 () Bool)

(assert (=> bm!365681 m!6254126))

(declare-fun m!6254128 () Bool)

(assert (=> b!5201992 m!6254128))

(declare-fun m!6254130 () Bool)

(assert (=> bm!365683 m!6254130))

(assert (=> bs!1209334 d!1677880))

(declare-fun d!1677882 () Bool)

(assert (=> d!1677882 (= (isEmptyExpr!753 lt!2141016) ((_ is EmptyExpr!14785) lt!2141016))))

(assert (=> b!5201601 d!1677882))

(declare-fun d!1677884 () Bool)

(assert (=> d!1677884 (= (nullable!4954 (h!66978 (exprs!4669 lt!2140961))) (nullableFct!1369 (h!66978 (exprs!4669 lt!2140961))))))

(declare-fun bs!1209356 () Bool)

(assert (= bs!1209356 d!1677884))

(declare-fun m!6254132 () Bool)

(assert (=> bs!1209356 m!6254132))

(assert (=> b!5201849 d!1677884))

(declare-fun b!5201996 () Bool)

(declare-fun e!3239187 () (InoxSet Context!8338))

(assert (=> b!5201996 (= e!3239187 ((as const (Array Context!8338 Bool)) false))))

(declare-fun b!5201998 () Bool)

(declare-fun e!3239191 () (InoxSet Context!8338))

(declare-fun e!3239190 () (InoxSet Context!8338))

(assert (=> b!5201998 (= e!3239191 e!3239190)))

(declare-fun c!896626 () Bool)

(assert (=> b!5201998 (= c!896626 ((_ is Concat!23630) (ite c!896579 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896578 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896581 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343)))))))))))

(declare-fun b!5201999 () Bool)

(declare-fun call!365689 () (InoxSet Context!8338))

(assert (=> b!5201999 (= e!3239187 call!365689)))

(declare-fun b!5202000 () Bool)

(declare-fun e!3239188 () (InoxSet Context!8338))

(declare-fun call!365692 () (InoxSet Context!8338))

(declare-fun call!365690 () (InoxSet Context!8338))

(assert (=> b!5202000 (= e!3239188 ((_ map or) call!365692 call!365690))))

(declare-fun c!896624 () Bool)

(declare-fun bm!365684 () Bool)

(declare-fun call!365691 () List!60654)

(assert (=> bm!365684 (= call!365690 (derivationStepZipperDown!233 (ite c!896624 (regTwo!30083 (ite c!896579 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896578 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896581 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343)))))))) (regOne!30082 (ite c!896579 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896578 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896581 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343))))))))) (ite c!896624 (ite (or c!896579 c!896578) lt!2140961 (Context!8339 call!365661)) (Context!8339 call!365691)) (h!66980 s!2326)))))

(declare-fun b!5202001 () Bool)

(declare-fun e!3239189 () Bool)

(assert (=> b!5202001 (= e!3239189 (nullable!4954 (regOne!30082 (ite c!896579 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896578 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896581 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343))))))))))))

(declare-fun c!896623 () Bool)

(declare-fun bm!365685 () Bool)

(assert (=> bm!365685 (= call!365691 ($colon$colon!1267 (exprs!4669 (ite (or c!896579 c!896578) lt!2140961 (Context!8339 call!365661))) (ite (or c!896623 c!896626) (regTwo!30082 (ite c!896579 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896578 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896581 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343)))))))) (ite c!896579 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896578 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896581 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343))))))))))))

(declare-fun b!5202002 () Bool)

(assert (=> b!5202002 (= e!3239190 call!365689)))

(declare-fun call!365693 () List!60654)

(declare-fun bm!365686 () Bool)

(assert (=> bm!365686 (= call!365692 (derivationStepZipperDown!233 (ite c!896624 (regOne!30083 (ite c!896579 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896578 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896581 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343)))))))) (ite c!896623 (regTwo!30082 (ite c!896579 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896578 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896581 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343)))))))) (ite c!896626 (regOne!30082 (ite c!896579 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896578 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896581 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343)))))))) (reg!15114 (ite c!896579 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896578 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896581 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343))))))))))) (ite (or c!896624 c!896623) (ite (or c!896579 c!896578) lt!2140961 (Context!8339 call!365661)) (Context!8339 call!365693)) (h!66980 s!2326)))))

(declare-fun b!5202003 () Bool)

(declare-fun e!3239186 () (InoxSet Context!8338))

(assert (=> b!5202003 (= e!3239186 e!3239188)))

(assert (=> b!5202003 (= c!896624 ((_ is Union!14785) (ite c!896579 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896578 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896581 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343)))))))))))

(declare-fun b!5202004 () Bool)

(declare-fun c!896627 () Bool)

(assert (=> b!5202004 (= c!896627 ((_ is Star!14785) (ite c!896579 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896578 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896581 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343)))))))))))

(assert (=> b!5202004 (= e!3239190 e!3239187)))

(declare-fun bm!365687 () Bool)

(declare-fun call!365694 () (InoxSet Context!8338))

(assert (=> bm!365687 (= call!365694 call!365692)))

(declare-fun bm!365688 () Bool)

(assert (=> bm!365688 (= call!365693 call!365691)))

(declare-fun c!896625 () Bool)

(declare-fun d!1677886 () Bool)

(assert (=> d!1677886 (= c!896625 (and ((_ is ElementMatch!14785) (ite c!896579 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896578 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896581 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343)))))))) (= (c!896412 (ite c!896579 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896578 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896581 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343)))))))) (h!66980 s!2326))))))

(assert (=> d!1677886 (= (derivationStepZipperDown!233 (ite c!896579 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896578 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896581 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343))))))) (ite (or c!896579 c!896578) lt!2140961 (Context!8339 call!365661)) (h!66980 s!2326)) e!3239186)))

(declare-fun b!5201997 () Bool)

(assert (=> b!5201997 (= e!3239191 ((_ map or) call!365690 call!365694))))

(declare-fun bm!365689 () Bool)

(assert (=> bm!365689 (= call!365689 call!365694)))

(declare-fun b!5202005 () Bool)

(assert (=> b!5202005 (= e!3239186 (store ((as const (Array Context!8338 Bool)) false) (ite (or c!896579 c!896578) lt!2140961 (Context!8339 call!365661)) true))))

(declare-fun b!5202006 () Bool)

(assert (=> b!5202006 (= c!896623 e!3239189)))

(declare-fun res!2210018 () Bool)

(assert (=> b!5202006 (=> (not res!2210018) (not e!3239189))))

(assert (=> b!5202006 (= res!2210018 ((_ is Concat!23630) (ite c!896579 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896578 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896581 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343)))))))))))

(assert (=> b!5202006 (= e!3239188 e!3239191)))

(assert (= (and d!1677886 c!896625) b!5202005))

(assert (= (and d!1677886 (not c!896625)) b!5202003))

(assert (= (and b!5202003 c!896624) b!5202000))

(assert (= (and b!5202003 (not c!896624)) b!5202006))

(assert (= (and b!5202006 res!2210018) b!5202001))

(assert (= (and b!5202006 c!896623) b!5201997))

(assert (= (and b!5202006 (not c!896623)) b!5201998))

(assert (= (and b!5201998 c!896626) b!5202002))

(assert (= (and b!5201998 (not c!896626)) b!5202004))

(assert (= (and b!5202004 c!896627) b!5201999))

(assert (= (and b!5202004 (not c!896627)) b!5201996))

(assert (= (or b!5202002 b!5201999) bm!365688))

(assert (= (or b!5202002 b!5201999) bm!365689))

(assert (= (or b!5201997 bm!365688) bm!365685))

(assert (= (or b!5201997 bm!365689) bm!365687))

(assert (= (or b!5202000 b!5201997) bm!365684))

(assert (= (or b!5202000 bm!365687) bm!365686))

(declare-fun m!6254134 () Bool)

(assert (=> bm!365685 m!6254134))

(declare-fun m!6254136 () Bool)

(assert (=> bm!365686 m!6254136))

(declare-fun m!6254138 () Bool)

(assert (=> b!5202001 m!6254138))

(declare-fun m!6254140 () Bool)

(assert (=> b!5202005 m!6254140))

(declare-fun m!6254142 () Bool)

(assert (=> bm!365684 m!6254142))

(assert (=> bm!365654 d!1677886))

(declare-fun b!5202007 () Bool)

(declare-fun e!3239193 () Bool)

(assert (=> b!5202007 (= e!3239193 (nullable!4954 (h!66978 (exprs!4669 (Context!8339 (t!373807 (exprs!4669 lt!2140961)))))))))

(declare-fun b!5202008 () Bool)

(declare-fun e!3239192 () (InoxSet Context!8338))

(declare-fun call!365695 () (InoxSet Context!8338))

(assert (=> b!5202008 (= e!3239192 call!365695)))

(declare-fun bm!365690 () Bool)

(assert (=> bm!365690 (= call!365695 (derivationStepZipperDown!233 (h!66978 (exprs!4669 (Context!8339 (t!373807 (exprs!4669 lt!2140961))))) (Context!8339 (t!373807 (exprs!4669 (Context!8339 (t!373807 (exprs!4669 lt!2140961)))))) (h!66980 s!2326)))))

(declare-fun e!3239194 () (InoxSet Context!8338))

(declare-fun b!5202010 () Bool)

(assert (=> b!5202010 (= e!3239194 ((_ map or) call!365695 (derivationStepZipperUp!157 (Context!8339 (t!373807 (exprs!4669 (Context!8339 (t!373807 (exprs!4669 lt!2140961)))))) (h!66980 s!2326))))))

(declare-fun b!5202011 () Bool)

(assert (=> b!5202011 (= e!3239194 e!3239192)))

(declare-fun c!896628 () Bool)

(assert (=> b!5202011 (= c!896628 ((_ is Cons!60530) (exprs!4669 (Context!8339 (t!373807 (exprs!4669 lt!2140961))))))))

(declare-fun b!5202009 () Bool)

(assert (=> b!5202009 (= e!3239192 ((as const (Array Context!8338 Bool)) false))))

(declare-fun d!1677888 () Bool)

(declare-fun c!896629 () Bool)

(assert (=> d!1677888 (= c!896629 e!3239193)))

(declare-fun res!2210019 () Bool)

(assert (=> d!1677888 (=> (not res!2210019) (not e!3239193))))

(assert (=> d!1677888 (= res!2210019 ((_ is Cons!60530) (exprs!4669 (Context!8339 (t!373807 (exprs!4669 lt!2140961))))))))

(assert (=> d!1677888 (= (derivationStepZipperUp!157 (Context!8339 (t!373807 (exprs!4669 lt!2140961))) (h!66980 s!2326)) e!3239194)))

(assert (= (and d!1677888 res!2210019) b!5202007))

(assert (= (and d!1677888 c!896629) b!5202010))

(assert (= (and d!1677888 (not c!896629)) b!5202011))

(assert (= (and b!5202011 c!896628) b!5202008))

(assert (= (and b!5202011 (not c!896628)) b!5202009))

(assert (= (or b!5202010 b!5202008) bm!365690))

(declare-fun m!6254144 () Bool)

(assert (=> b!5202007 m!6254144))

(declare-fun m!6254146 () Bool)

(assert (=> bm!365690 m!6254146))

(declare-fun m!6254148 () Bool)

(assert (=> b!5202010 m!6254148))

(assert (=> b!5201852 d!1677888))

(declare-fun b!5202012 () Bool)

(declare-fun e!3239196 () (InoxSet Context!8338))

(assert (=> b!5202012 (= e!3239196 ((as const (Array Context!8338 Bool)) false))))

(declare-fun b!5202014 () Bool)

(declare-fun e!3239200 () (InoxSet Context!8338))

(declare-fun e!3239199 () (InoxSet Context!8338))

(assert (=> b!5202014 (= e!3239200 e!3239199)))

(declare-fun c!896633 () Bool)

(assert (=> b!5202014 (= c!896633 ((_ is Concat!23630) (ite c!896579 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))))))))

(declare-fun b!5202015 () Bool)

(declare-fun call!365696 () (InoxSet Context!8338))

(assert (=> b!5202015 (= e!3239196 call!365696)))

(declare-fun b!5202016 () Bool)

(declare-fun e!3239197 () (InoxSet Context!8338))

(declare-fun call!365699 () (InoxSet Context!8338))

(declare-fun call!365697 () (InoxSet Context!8338))

(assert (=> b!5202016 (= e!3239197 ((_ map or) call!365699 call!365697))))

(declare-fun call!365698 () List!60654)

(declare-fun bm!365691 () Bool)

(declare-fun c!896631 () Bool)

(assert (=> bm!365691 (= call!365697 (derivationStepZipperDown!233 (ite c!896631 (regTwo!30083 (ite c!896579 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))))) (regOne!30082 (ite c!896579 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343))))))) (ite c!896631 (ite c!896579 lt!2140961 (Context!8339 call!365659)) (Context!8339 call!365698)) (h!66980 s!2326)))))

(declare-fun b!5202017 () Bool)

(declare-fun e!3239198 () Bool)

(assert (=> b!5202017 (= e!3239198 (nullable!4954 (regOne!30082 (ite c!896579 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343))))))))))

(declare-fun bm!365692 () Bool)

(declare-fun c!896630 () Bool)

(assert (=> bm!365692 (= call!365698 ($colon$colon!1267 (exprs!4669 (ite c!896579 lt!2140961 (Context!8339 call!365659))) (ite (or c!896630 c!896633) (regTwo!30082 (ite c!896579 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))))) (ite c!896579 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343))))))))))

(declare-fun b!5202018 () Bool)

(assert (=> b!5202018 (= e!3239199 call!365696)))

(declare-fun bm!365693 () Bool)

(declare-fun call!365700 () List!60654)

(assert (=> bm!365693 (= call!365699 (derivationStepZipperDown!233 (ite c!896631 (regOne!30083 (ite c!896579 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))))) (ite c!896630 (regTwo!30082 (ite c!896579 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))))) (ite c!896633 (regOne!30082 (ite c!896579 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))))) (reg!15114 (ite c!896579 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343))))))))) (ite (or c!896631 c!896630) (ite c!896579 lt!2140961 (Context!8339 call!365659)) (Context!8339 call!365700)) (h!66980 s!2326)))))

(declare-fun b!5202019 () Bool)

(declare-fun e!3239195 () (InoxSet Context!8338))

(assert (=> b!5202019 (= e!3239195 e!3239197)))

(assert (=> b!5202019 (= c!896631 ((_ is Union!14785) (ite c!896579 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))))))))

(declare-fun b!5202020 () Bool)

(declare-fun c!896634 () Bool)

(assert (=> b!5202020 (= c!896634 ((_ is Star!14785) (ite c!896579 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))))))))

(assert (=> b!5202020 (= e!3239199 e!3239196)))

(declare-fun bm!365694 () Bool)

(declare-fun call!365701 () (InoxSet Context!8338))

(assert (=> bm!365694 (= call!365701 call!365699)))

(declare-fun bm!365695 () Bool)

(assert (=> bm!365695 (= call!365700 call!365698)))

(declare-fun d!1677890 () Bool)

(declare-fun c!896632 () Bool)

(assert (=> d!1677890 (= c!896632 (and ((_ is ElementMatch!14785) (ite c!896579 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))))) (= (c!896412 (ite c!896579 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))))) (h!66980 s!2326))))))

(assert (=> d!1677890 (= (derivationStepZipperDown!233 (ite c!896579 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343))))) (ite c!896579 lt!2140961 (Context!8339 call!365659)) (h!66980 s!2326)) e!3239195)))

(declare-fun b!5202013 () Bool)

(assert (=> b!5202013 (= e!3239200 ((_ map or) call!365697 call!365701))))

(declare-fun bm!365696 () Bool)

(assert (=> bm!365696 (= call!365696 call!365701)))

(declare-fun b!5202021 () Bool)

(assert (=> b!5202021 (= e!3239195 (store ((as const (Array Context!8338 Bool)) false) (ite c!896579 lt!2140961 (Context!8339 call!365659)) true))))

(declare-fun b!5202022 () Bool)

(assert (=> b!5202022 (= c!896630 e!3239198)))

(declare-fun res!2210020 () Bool)

(assert (=> b!5202022 (=> (not res!2210020) (not e!3239198))))

(assert (=> b!5202022 (= res!2210020 ((_ is Concat!23630) (ite c!896579 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))))))))

(assert (=> b!5202022 (= e!3239197 e!3239200)))

(assert (= (and d!1677890 c!896632) b!5202021))

(assert (= (and d!1677890 (not c!896632)) b!5202019))

(assert (= (and b!5202019 c!896631) b!5202016))

(assert (= (and b!5202019 (not c!896631)) b!5202022))

(assert (= (and b!5202022 res!2210020) b!5202017))

(assert (= (and b!5202022 c!896630) b!5202013))

(assert (= (and b!5202022 (not c!896630)) b!5202014))

(assert (= (and b!5202014 c!896633) b!5202018))

(assert (= (and b!5202014 (not c!896633)) b!5202020))

(assert (= (and b!5202020 c!896634) b!5202015))

(assert (= (and b!5202020 (not c!896634)) b!5202012))

(assert (= (or b!5202018 b!5202015) bm!365695))

(assert (= (or b!5202018 b!5202015) bm!365696))

(assert (= (or b!5202013 bm!365695) bm!365692))

(assert (= (or b!5202013 bm!365696) bm!365694))

(assert (= (or b!5202016 b!5202013) bm!365691))

(assert (= (or b!5202016 bm!365694) bm!365693))

(declare-fun m!6254150 () Bool)

(assert (=> bm!365692 m!6254150))

(declare-fun m!6254152 () Bool)

(assert (=> bm!365693 m!6254152))

(declare-fun m!6254154 () Bool)

(assert (=> b!5202017 m!6254154))

(declare-fun m!6254156 () Bool)

(assert (=> b!5202021 m!6254156))

(declare-fun m!6254158 () Bool)

(assert (=> bm!365691 m!6254158))

(assert (=> bm!365652 d!1677890))

(declare-fun d!1677892 () Bool)

(declare-fun lambda!260670 () Int)

(declare-fun exists!1953 ((InoxSet Context!8338) Int) Bool)

(assert (=> d!1677892 (= (nullableZipper!1217 ((_ map or) lt!2140957 lt!2140962)) (exists!1953 ((_ map or) lt!2140957 lt!2140962) lambda!260670))))

(declare-fun bs!1209357 () Bool)

(assert (= bs!1209357 d!1677892))

(declare-fun m!6254160 () Bool)

(assert (=> bs!1209357 m!6254160))

(assert (=> b!5201384 d!1677892))

(assert (=> b!5201381 d!1677734))

(declare-fun d!1677894 () Bool)

(assert (=> d!1677894 (= ($colon$colon!1267 (exprs!4669 lt!2140961) (ite (or c!896578 c!896581) (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (h!66978 (exprs!4669 (h!66979 zl!343))))) (Cons!60530 (ite (or c!896578 c!896581) (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (h!66978 (exprs!4669 (h!66979 zl!343)))) (exprs!4669 lt!2140961)))))

(assert (=> bm!365653 d!1677894))

(declare-fun b!5202027 () Bool)

(declare-fun res!2210023 () Bool)

(declare-fun e!3239212 () Bool)

(assert (=> b!5202027 (=> (not res!2210023) (not e!3239212))))

(declare-fun call!365706 () Bool)

(assert (=> b!5202027 (= res!2210023 (not call!365706))))

(declare-fun b!5202029 () Bool)

(declare-fun res!2210021 () Bool)

(declare-fun e!3239211 () Bool)

(assert (=> b!5202029 (=> res!2210021 e!3239211)))

(assert (=> b!5202029 (= res!2210021 (not ((_ is ElementMatch!14785) (derivativeStep!4038 r!7292 (head!11153 s!2326)))))))

(declare-fun e!3239209 () Bool)

(assert (=> b!5202029 (= e!3239209 e!3239211)))

(declare-fun b!5202030 () Bool)

(declare-fun lt!2141052 () Bool)

(assert (=> b!5202030 (= e!3239209 (not lt!2141052))))

(declare-fun b!5202032 () Bool)

(declare-fun e!3239208 () Bool)

(assert (=> b!5202032 (= e!3239208 (matchR!6970 (derivativeStep!4038 (derivativeStep!4038 r!7292 (head!11153 s!2326)) (head!11153 (tail!10250 s!2326))) (tail!10250 (tail!10250 s!2326))))))

(declare-fun bm!365700 () Bool)

(assert (=> bm!365700 (= call!365706 (isEmpty!32440 (tail!10250 s!2326)))))

(declare-fun b!5202034 () Bool)

(declare-fun e!3239207 () Bool)

(assert (=> b!5202034 (= e!3239211 e!3239207)))

(declare-fun res!2210024 () Bool)

(assert (=> b!5202034 (=> (not res!2210024) (not e!3239207))))

(assert (=> b!5202034 (= res!2210024 (not lt!2141052))))

(declare-fun b!5202036 () Bool)

(declare-fun e!3239205 () Bool)

(assert (=> b!5202036 (= e!3239207 e!3239205)))

(declare-fun res!2210026 () Bool)

(assert (=> b!5202036 (=> res!2210026 e!3239205)))

(assert (=> b!5202036 (= res!2210026 call!365706)))

(declare-fun b!5202038 () Bool)

(assert (=> b!5202038 (= e!3239208 (nullable!4954 (derivativeStep!4038 r!7292 (head!11153 s!2326))))))

(declare-fun b!5202040 () Bool)

(assert (=> b!5202040 (= e!3239212 (= (head!11153 (tail!10250 s!2326)) (c!896412 (derivativeStep!4038 r!7292 (head!11153 s!2326)))))))

(declare-fun b!5202041 () Bool)

(declare-fun e!3239202 () Bool)

(assert (=> b!5202041 (= e!3239202 e!3239209)))

(declare-fun c!896644 () Bool)

(assert (=> b!5202041 (= c!896644 ((_ is EmptyLang!14785) (derivativeStep!4038 r!7292 (head!11153 s!2326))))))

(declare-fun b!5202042 () Bool)

(declare-fun res!2210022 () Bool)

(assert (=> b!5202042 (=> (not res!2210022) (not e!3239212))))

(assert (=> b!5202042 (= res!2210022 (isEmpty!32440 (tail!10250 (tail!10250 s!2326))))))

(declare-fun b!5202043 () Bool)

(assert (=> b!5202043 (= e!3239205 (not (= (head!11153 (tail!10250 s!2326)) (c!896412 (derivativeStep!4038 r!7292 (head!11153 s!2326))))))))

(declare-fun b!5202044 () Bool)

(assert (=> b!5202044 (= e!3239202 (= lt!2141052 call!365706))))

(declare-fun b!5202045 () Bool)

(declare-fun res!2210028 () Bool)

(assert (=> b!5202045 (=> res!2210028 e!3239205)))

(assert (=> b!5202045 (= res!2210028 (not (isEmpty!32440 (tail!10250 (tail!10250 s!2326)))))))

(declare-fun b!5202046 () Bool)

(declare-fun res!2210027 () Bool)

(assert (=> b!5202046 (=> res!2210027 e!3239211)))

(assert (=> b!5202046 (= res!2210027 e!3239212)))

(declare-fun res!2210025 () Bool)

(assert (=> b!5202046 (=> (not res!2210025) (not e!3239212))))

(assert (=> b!5202046 (= res!2210025 lt!2141052)))

(declare-fun d!1677896 () Bool)

(assert (=> d!1677896 e!3239202))

(declare-fun c!896642 () Bool)

(assert (=> d!1677896 (= c!896642 ((_ is EmptyExpr!14785) (derivativeStep!4038 r!7292 (head!11153 s!2326))))))

(assert (=> d!1677896 (= lt!2141052 e!3239208)))

(declare-fun c!896643 () Bool)

(assert (=> d!1677896 (= c!896643 (isEmpty!32440 (tail!10250 s!2326)))))

(assert (=> d!1677896 (validRegex!6521 (derivativeStep!4038 r!7292 (head!11153 s!2326)))))

(assert (=> d!1677896 (= (matchR!6970 (derivativeStep!4038 r!7292 (head!11153 s!2326)) (tail!10250 s!2326)) lt!2141052)))

(assert (= (and d!1677896 c!896643) b!5202038))

(assert (= (and d!1677896 (not c!896643)) b!5202032))

(assert (= (and d!1677896 c!896642) b!5202044))

(assert (= (and d!1677896 (not c!896642)) b!5202041))

(assert (= (and b!5202041 c!896644) b!5202030))

(assert (= (and b!5202041 (not c!896644)) b!5202029))

(assert (= (and b!5202029 (not res!2210021)) b!5202046))

(assert (= (and b!5202046 res!2210025) b!5202027))

(assert (= (and b!5202027 res!2210023) b!5202042))

(assert (= (and b!5202042 res!2210022) b!5202040))

(assert (= (and b!5202046 (not res!2210027)) b!5202034))

(assert (= (and b!5202034 res!2210024) b!5202036))

(assert (= (and b!5202036 (not res!2210026)) b!5202045))

(assert (= (and b!5202045 (not res!2210028)) b!5202043))

(assert (= (or b!5202044 b!5202027 b!5202036) bm!365700))

(assert (=> b!5202043 m!6253888))

(declare-fun m!6254162 () Bool)

(assert (=> b!5202043 m!6254162))

(assert (=> d!1677896 m!6253888))

(assert (=> d!1677896 m!6253894))

(assert (=> d!1677896 m!6253886))

(declare-fun m!6254166 () Bool)

(assert (=> d!1677896 m!6254166))

(assert (=> bm!365700 m!6253888))

(assert (=> bm!365700 m!6253894))

(assert (=> b!5202040 m!6253888))

(assert (=> b!5202040 m!6254162))

(assert (=> b!5202032 m!6253888))

(assert (=> b!5202032 m!6254162))

(assert (=> b!5202032 m!6253886))

(assert (=> b!5202032 m!6254162))

(declare-fun m!6254170 () Bool)

(assert (=> b!5202032 m!6254170))

(assert (=> b!5202032 m!6253888))

(declare-fun m!6254174 () Bool)

(assert (=> b!5202032 m!6254174))

(assert (=> b!5202032 m!6254170))

(assert (=> b!5202032 m!6254174))

(declare-fun m!6254178 () Bool)

(assert (=> b!5202032 m!6254178))

(assert (=> b!5202038 m!6253886))

(declare-fun m!6254180 () Bool)

(assert (=> b!5202038 m!6254180))

(assert (=> b!5202042 m!6253888))

(assert (=> b!5202042 m!6254174))

(assert (=> b!5202042 m!6254174))

(declare-fun m!6254182 () Bool)

(assert (=> b!5202042 m!6254182))

(assert (=> b!5202045 m!6253888))

(assert (=> b!5202045 m!6254174))

(assert (=> b!5202045 m!6254174))

(assert (=> b!5202045 m!6254182))

(assert (=> b!5201547 d!1677896))

(declare-fun bm!365711 () Bool)

(declare-fun call!365717 () Regex!14785)

(declare-fun call!365719 () Regex!14785)

(assert (=> bm!365711 (= call!365717 call!365719)))

(declare-fun call!365718 () Regex!14785)

(declare-fun e!3239237 () Regex!14785)

(declare-fun b!5202087 () Bool)

(declare-fun call!365716 () Regex!14785)

(assert (=> b!5202087 (= e!3239237 (Union!14785 (Concat!23630 call!365718 (regTwo!30082 r!7292)) call!365716))))

(declare-fun b!5202088 () Bool)

(declare-fun e!3239233 () Regex!14785)

(assert (=> b!5202088 (= e!3239233 (ite (= (head!11153 s!2326) (c!896412 r!7292)) EmptyExpr!14785 EmptyLang!14785))))

(declare-fun b!5202089 () Bool)

(declare-fun e!3239236 () Regex!14785)

(assert (=> b!5202089 (= e!3239236 (Concat!23630 call!365717 r!7292))))

(declare-fun c!896665 () Bool)

(declare-fun c!896666 () Bool)

(declare-fun c!896663 () Bool)

(declare-fun bm!365712 () Bool)

(assert (=> bm!365712 (= call!365719 (derivativeStep!4038 (ite c!896665 (regTwo!30083 r!7292) (ite c!896666 (reg!15114 r!7292) (ite c!896663 (regTwo!30082 r!7292) (regOne!30082 r!7292)))) (head!11153 s!2326)))))

(declare-fun b!5202090 () Bool)

(assert (=> b!5202090 (= c!896665 ((_ is Union!14785) r!7292))))

(declare-fun e!3239234 () Regex!14785)

(assert (=> b!5202090 (= e!3239233 e!3239234)))

(declare-fun b!5202091 () Bool)

(assert (=> b!5202091 (= e!3239234 (Union!14785 call!365718 call!365719))))

(declare-fun b!5202092 () Bool)

(declare-fun e!3239235 () Regex!14785)

(assert (=> b!5202092 (= e!3239235 EmptyLang!14785)))

(declare-fun d!1677900 () Bool)

(declare-fun lt!2141057 () Regex!14785)

(assert (=> d!1677900 (validRegex!6521 lt!2141057)))

(assert (=> d!1677900 (= lt!2141057 e!3239235)))

(declare-fun c!896664 () Bool)

(assert (=> d!1677900 (= c!896664 (or ((_ is EmptyExpr!14785) r!7292) ((_ is EmptyLang!14785) r!7292)))))

(assert (=> d!1677900 (validRegex!6521 r!7292)))

(assert (=> d!1677900 (= (derivativeStep!4038 r!7292 (head!11153 s!2326)) lt!2141057)))

(declare-fun b!5202093 () Bool)

(assert (=> b!5202093 (= e!3239234 e!3239236)))

(assert (=> b!5202093 (= c!896666 ((_ is Star!14785) r!7292))))

(declare-fun b!5202094 () Bool)

(assert (=> b!5202094 (= e!3239235 e!3239233)))

(declare-fun c!896667 () Bool)

(assert (=> b!5202094 (= c!896667 ((_ is ElementMatch!14785) r!7292))))

(declare-fun b!5202095 () Bool)

(assert (=> b!5202095 (= c!896663 (nullable!4954 (regOne!30082 r!7292)))))

(assert (=> b!5202095 (= e!3239236 e!3239237)))

(declare-fun bm!365713 () Bool)

(assert (=> bm!365713 (= call!365716 call!365717)))

(declare-fun b!5202096 () Bool)

(assert (=> b!5202096 (= e!3239237 (Union!14785 (Concat!23630 call!365716 (regTwo!30082 r!7292)) EmptyLang!14785))))

(declare-fun bm!365714 () Bool)

(assert (=> bm!365714 (= call!365718 (derivativeStep!4038 (ite c!896665 (regOne!30083 r!7292) (regOne!30082 r!7292)) (head!11153 s!2326)))))

(assert (= (and d!1677900 c!896664) b!5202092))

(assert (= (and d!1677900 (not c!896664)) b!5202094))

(assert (= (and b!5202094 c!896667) b!5202088))

(assert (= (and b!5202094 (not c!896667)) b!5202090))

(assert (= (and b!5202090 c!896665) b!5202091))

(assert (= (and b!5202090 (not c!896665)) b!5202093))

(assert (= (and b!5202093 c!896666) b!5202089))

(assert (= (and b!5202093 (not c!896666)) b!5202095))

(assert (= (and b!5202095 c!896663) b!5202087))

(assert (= (and b!5202095 (not c!896663)) b!5202096))

(assert (= (or b!5202087 b!5202096) bm!365713))

(assert (= (or b!5202089 bm!365713) bm!365711))

(assert (= (or b!5202091 bm!365711) bm!365712))

(assert (= (or b!5202091 b!5202087) bm!365714))

(assert (=> bm!365712 m!6253884))

(declare-fun m!6254222 () Bool)

(assert (=> bm!365712 m!6254222))

(declare-fun m!6254224 () Bool)

(assert (=> d!1677900 m!6254224))

(assert (=> d!1677900 m!6253646))

(declare-fun m!6254226 () Bool)

(assert (=> b!5202095 m!6254226))

(assert (=> bm!365714 m!6253884))

(declare-fun m!6254228 () Bool)

(assert (=> bm!365714 m!6254228))

(assert (=> b!5201547 d!1677900))

(declare-fun d!1677936 () Bool)

(assert (=> d!1677936 (= (head!11153 s!2326) (h!66980 s!2326))))

(assert (=> b!5201547 d!1677936))

(declare-fun d!1677938 () Bool)

(assert (=> d!1677938 (= (tail!10250 s!2326) (t!373809 s!2326))))

(assert (=> b!5201547 d!1677938))

(assert (=> d!1677754 d!1677766))

(assert (=> d!1677754 d!1677764))

(declare-fun e!3239248 () Bool)

(declare-fun d!1677940 () Bool)

(assert (=> d!1677940 (= (matchZipper!1029 ((_ map or) lt!2140957 lt!2140962) (t!373809 s!2326)) e!3239248)))

(declare-fun res!2210046 () Bool)

(assert (=> d!1677940 (=> res!2210046 e!3239248)))

(assert (=> d!1677940 (= res!2210046 (matchZipper!1029 lt!2140957 (t!373809 s!2326)))))

(assert (=> d!1677940 true))

(declare-fun _$48!769 () Unit!152406)

(assert (=> d!1677940 (= (choose!38658 lt!2140957 lt!2140962 (t!373809 s!2326)) _$48!769)))

(declare-fun b!5202111 () Bool)

(assert (=> b!5202111 (= e!3239248 (matchZipper!1029 lt!2140962 (t!373809 s!2326)))))

(assert (= (and d!1677940 (not res!2210046)) b!5202111))

(assert (=> d!1677940 m!6253678))

(assert (=> d!1677940 m!6253676))

(assert (=> b!5202111 m!6253618))

(assert (=> d!1677754 d!1677940))

(declare-fun d!1677952 () Bool)

(declare-fun c!896672 () Bool)

(assert (=> d!1677952 (= c!896672 (isEmpty!32440 (tail!10250 (t!373809 s!2326))))))

(declare-fun e!3239249 () Bool)

(assert (=> d!1677952 (= (matchZipper!1029 (derivationStepZipper!1061 lt!2140957 (head!11153 (t!373809 s!2326))) (tail!10250 (t!373809 s!2326))) e!3239249)))

(declare-fun b!5202112 () Bool)

(assert (=> b!5202112 (= e!3239249 (nullableZipper!1217 (derivationStepZipper!1061 lt!2140957 (head!11153 (t!373809 s!2326)))))))

(declare-fun b!5202113 () Bool)

(assert (=> b!5202113 (= e!3239249 (matchZipper!1029 (derivationStepZipper!1061 (derivationStepZipper!1061 lt!2140957 (head!11153 (t!373809 s!2326))) (head!11153 (tail!10250 (t!373809 s!2326)))) (tail!10250 (tail!10250 (t!373809 s!2326)))))))

(assert (= (and d!1677952 c!896672) b!5202112))

(assert (= (and d!1677952 (not c!896672)) b!5202113))

(assert (=> d!1677952 m!6253750))

(assert (=> d!1677952 m!6254102))

(assert (=> b!5202112 m!6253802))

(declare-fun m!6254250 () Bool)

(assert (=> b!5202112 m!6254250))

(assert (=> b!5202113 m!6253750))

(assert (=> b!5202113 m!6254106))

(assert (=> b!5202113 m!6253802))

(assert (=> b!5202113 m!6254106))

(declare-fun m!6254252 () Bool)

(assert (=> b!5202113 m!6254252))

(assert (=> b!5202113 m!6253750))

(assert (=> b!5202113 m!6254110))

(assert (=> b!5202113 m!6254252))

(assert (=> b!5202113 m!6254110))

(declare-fun m!6254254 () Bool)

(assert (=> b!5202113 m!6254254))

(assert (=> b!5201383 d!1677952))

(declare-fun bs!1209371 () Bool)

(declare-fun d!1677954 () Bool)

(assert (= bs!1209371 (and d!1677954 b!5201198)))

(declare-fun lambda!260678 () Int)

(assert (=> bs!1209371 (= (= (head!11153 (t!373809 s!2326)) (h!66980 s!2326)) (= lambda!260678 lambda!260604))))

(declare-fun bs!1209372 () Bool)

(assert (= bs!1209372 (and d!1677954 d!1677866)))

(assert (=> bs!1209372 (= lambda!260678 lambda!260667)))

(assert (=> d!1677954 true))

(assert (=> d!1677954 (= (derivationStepZipper!1061 lt!2140957 (head!11153 (t!373809 s!2326))) (flatMap!512 lt!2140957 lambda!260678))))

(declare-fun bs!1209373 () Bool)

(assert (= bs!1209373 d!1677954))

(declare-fun m!6254256 () Bool)

(assert (=> bs!1209373 m!6254256))

(assert (=> b!5201383 d!1677954))

(assert (=> b!5201383 d!1677868))

(assert (=> b!5201383 d!1677870))

(assert (=> b!5201554 d!1677936))

(assert (=> d!1677788 d!1677782))

(assert (=> d!1677788 d!1677768))

(declare-fun d!1677956 () Bool)

(assert (=> d!1677956 (= (matchR!6970 r!7292 s!2326) (matchRSpec!1888 r!7292 s!2326))))

(assert (=> d!1677956 true))

(declare-fun _$88!3438 () Unit!152406)

(assert (=> d!1677956 (= (choose!38660 r!7292 s!2326) _$88!3438)))

(declare-fun bs!1209382 () Bool)

(assert (= bs!1209382 d!1677956))

(assert (=> bs!1209382 m!6253622))

(assert (=> bs!1209382 m!6253620))

(assert (=> d!1677788 d!1677956))

(assert (=> d!1677788 d!1677722))

(declare-fun b!5202117 () Bool)

(declare-fun e!3239256 () Bool)

(declare-fun e!3239254 () Bool)

(assert (=> b!5202117 (= e!3239256 e!3239254)))

(declare-fun c!896673 () Bool)

(assert (=> b!5202117 (= c!896673 ((_ is Star!14785) lt!2141016))))

(declare-fun bm!365715 () Bool)

(declare-fun call!365721 () Bool)

(declare-fun c!896674 () Bool)

(assert (=> bm!365715 (= call!365721 (validRegex!6521 (ite c!896674 (regTwo!30083 lt!2141016) (regTwo!30082 lt!2141016))))))

(declare-fun bm!365716 () Bool)

(declare-fun call!365722 () Bool)

(declare-fun call!365720 () Bool)

(assert (=> bm!365716 (= call!365722 call!365720)))

(declare-fun b!5202118 () Bool)

(declare-fun e!3239259 () Bool)

(assert (=> b!5202118 (= e!3239259 call!365721)))

(declare-fun b!5202119 () Bool)

(declare-fun res!2210051 () Bool)

(assert (=> b!5202119 (=> (not res!2210051) (not e!3239259))))

(assert (=> b!5202119 (= res!2210051 call!365722)))

(declare-fun e!3239253 () Bool)

(assert (=> b!5202119 (= e!3239253 e!3239259)))

(declare-fun b!5202120 () Bool)

(assert (=> b!5202120 (= e!3239254 e!3239253)))

(assert (=> b!5202120 (= c!896674 ((_ is Union!14785) lt!2141016))))

(declare-fun b!5202121 () Bool)

(declare-fun e!3239257 () Bool)

(assert (=> b!5202121 (= e!3239257 call!365720)))

(declare-fun b!5202122 () Bool)

(assert (=> b!5202122 (= e!3239254 e!3239257)))

(declare-fun res!2210053 () Bool)

(assert (=> b!5202122 (= res!2210053 (not (nullable!4954 (reg!15114 lt!2141016))))))

(assert (=> b!5202122 (=> (not res!2210053) (not e!3239257))))

(declare-fun b!5202123 () Bool)

(declare-fun e!3239258 () Bool)

(assert (=> b!5202123 (= e!3239258 call!365721)))

(declare-fun b!5202124 () Bool)

(declare-fun res!2210050 () Bool)

(declare-fun e!3239255 () Bool)

(assert (=> b!5202124 (=> res!2210050 e!3239255)))

(assert (=> b!5202124 (= res!2210050 (not ((_ is Concat!23630) lt!2141016)))))

(assert (=> b!5202124 (= e!3239253 e!3239255)))

(declare-fun b!5202125 () Bool)

(assert (=> b!5202125 (= e!3239255 e!3239258)))

(declare-fun res!2210052 () Bool)

(assert (=> b!5202125 (=> (not res!2210052) (not e!3239258))))

(assert (=> b!5202125 (= res!2210052 call!365722)))

(declare-fun d!1677964 () Bool)

(declare-fun res!2210054 () Bool)

(assert (=> d!1677964 (=> res!2210054 e!3239256)))

(assert (=> d!1677964 (= res!2210054 ((_ is ElementMatch!14785) lt!2141016))))

(assert (=> d!1677964 (= (validRegex!6521 lt!2141016) e!3239256)))

(declare-fun bm!365717 () Bool)

(assert (=> bm!365717 (= call!365720 (validRegex!6521 (ite c!896673 (reg!15114 lt!2141016) (ite c!896674 (regOne!30083 lt!2141016) (regOne!30082 lt!2141016)))))))

(assert (= (and d!1677964 (not res!2210054)) b!5202117))

(assert (= (and b!5202117 c!896673) b!5202122))

(assert (= (and b!5202117 (not c!896673)) b!5202120))

(assert (= (and b!5202122 res!2210053) b!5202121))

(assert (= (and b!5202120 c!896674) b!5202119))

(assert (= (and b!5202120 (not c!896674)) b!5202124))

(assert (= (and b!5202119 res!2210051) b!5202118))

(assert (= (and b!5202124 (not res!2210050)) b!5202125))

(assert (= (and b!5202125 res!2210052) b!5202123))

(assert (= (or b!5202118 b!5202123) bm!365715))

(assert (= (or b!5202119 b!5202125) bm!365716))

(assert (= (or b!5202121 bm!365716) bm!365717))

(declare-fun m!6254262 () Bool)

(assert (=> bm!365715 m!6254262))

(declare-fun m!6254264 () Bool)

(assert (=> b!5202122 m!6254264))

(declare-fun m!6254266 () Bool)

(assert (=> bm!365717 m!6254266))

(assert (=> d!1677792 d!1677964))

(declare-fun d!1677974 () Bool)

(declare-fun res!2210055 () Bool)

(declare-fun e!3239260 () Bool)

(assert (=> d!1677974 (=> res!2210055 e!3239260)))

(assert (=> d!1677974 (= res!2210055 ((_ is Nil!60530) (exprs!4669 (h!66979 zl!343))))))

(assert (=> d!1677974 (= (forall!14225 (exprs!4669 (h!66979 zl!343)) lambda!260645) e!3239260)))

(declare-fun b!5202126 () Bool)

(declare-fun e!3239261 () Bool)

(assert (=> b!5202126 (= e!3239260 e!3239261)))

(declare-fun res!2210056 () Bool)

(assert (=> b!5202126 (=> (not res!2210056) (not e!3239261))))

(assert (=> b!5202126 (= res!2210056 (dynLambda!23912 lambda!260645 (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun b!5202127 () Bool)

(assert (=> b!5202127 (= e!3239261 (forall!14225 (t!373807 (exprs!4669 (h!66979 zl!343))) lambda!260645))))

(assert (= (and d!1677974 (not res!2210055)) b!5202126))

(assert (= (and b!5202126 res!2210056) b!5202127))

(declare-fun b_lambda!201309 () Bool)

(assert (=> (not b_lambda!201309) (not b!5202126)))

(declare-fun m!6254268 () Bool)

(assert (=> b!5202126 m!6254268))

(declare-fun m!6254270 () Bool)

(assert (=> b!5202127 m!6254270))

(assert (=> d!1677792 d!1677974))

(declare-fun d!1677976 () Bool)

(assert (=> d!1677976 (= (isEmpty!32440 (t!373809 s!2326)) ((_ is Nil!60532) (t!373809 s!2326)))))

(assert (=> d!1677764 d!1677976))

(declare-fun b!5202173 () Bool)

(declare-fun res!2210078 () Bool)

(declare-fun e!3239289 () Bool)

(assert (=> b!5202173 (=> (not res!2210078) (not e!3239289))))

(declare-fun lt!2141063 () List!60656)

(declare-fun size!39708 (List!60656) Int)

(assert (=> b!5202173 (= res!2210078 (= (size!39708 lt!2141063) (+ (size!39708 (_1!35287 (get!20795 lt!2141036))) (size!39708 (_2!35287 (get!20795 lt!2141036))))))))

(declare-fun b!5202171 () Bool)

(declare-fun e!3239288 () List!60656)

(assert (=> b!5202171 (= e!3239288 (_2!35287 (get!20795 lt!2141036)))))

(declare-fun b!5202174 () Bool)

(assert (=> b!5202174 (= e!3239289 (or (not (= (_2!35287 (get!20795 lt!2141036)) Nil!60532)) (= lt!2141063 (_1!35287 (get!20795 lt!2141036)))))))

(declare-fun d!1677978 () Bool)

(assert (=> d!1677978 e!3239289))

(declare-fun res!2210079 () Bool)

(assert (=> d!1677978 (=> (not res!2210079) (not e!3239289))))

(declare-fun content!10712 (List!60656) (InoxSet C!29840))

(assert (=> d!1677978 (= res!2210079 (= (content!10712 lt!2141063) ((_ map or) (content!10712 (_1!35287 (get!20795 lt!2141036))) (content!10712 (_2!35287 (get!20795 lt!2141036))))))))

(assert (=> d!1677978 (= lt!2141063 e!3239288)))

(declare-fun c!896686 () Bool)

(assert (=> d!1677978 (= c!896686 ((_ is Nil!60532) (_1!35287 (get!20795 lt!2141036))))))

(assert (=> d!1677978 (= (++!13197 (_1!35287 (get!20795 lt!2141036)) (_2!35287 (get!20795 lt!2141036))) lt!2141063)))

(declare-fun b!5202172 () Bool)

(assert (=> b!5202172 (= e!3239288 (Cons!60532 (h!66980 (_1!35287 (get!20795 lt!2141036))) (++!13197 (t!373809 (_1!35287 (get!20795 lt!2141036))) (_2!35287 (get!20795 lt!2141036)))))))

(assert (= (and d!1677978 c!896686) b!5202171))

(assert (= (and d!1677978 (not c!896686)) b!5202172))

(assert (= (and d!1677978 res!2210079) b!5202173))

(assert (= (and b!5202173 res!2210078) b!5202174))

(declare-fun m!6254312 () Bool)

(assert (=> b!5202173 m!6254312))

(declare-fun m!6254314 () Bool)

(assert (=> b!5202173 m!6254314))

(declare-fun m!6254316 () Bool)

(assert (=> b!5202173 m!6254316))

(declare-fun m!6254318 () Bool)

(assert (=> d!1677978 m!6254318))

(declare-fun m!6254320 () Bool)

(assert (=> d!1677978 m!6254320))

(declare-fun m!6254322 () Bool)

(assert (=> d!1677978 m!6254322))

(declare-fun m!6254324 () Bool)

(assert (=> b!5202172 m!6254324))

(assert (=> b!5201788 d!1677978))

(declare-fun d!1677994 () Bool)

(assert (=> d!1677994 (= (get!20795 lt!2141036) (v!50924 lt!2141036))))

(assert (=> b!5201788 d!1677994))

(declare-fun d!1677998 () Bool)

(assert (=> d!1677998 (= (nullable!4954 r!7292) (nullableFct!1369 r!7292))))

(declare-fun bs!1209398 () Bool)

(assert (= bs!1209398 d!1677998))

(declare-fun m!6254332 () Bool)

(assert (=> bs!1209398 m!6254332))

(assert (=> b!5201550 d!1677998))

(declare-fun d!1678000 () Bool)

(declare-fun res!2210090 () Bool)

(declare-fun e!3239304 () Bool)

(assert (=> d!1678000 (=> res!2210090 e!3239304)))

(assert (=> d!1678000 (= res!2210090 ((_ is Nil!60530) lt!2141029))))

(assert (=> d!1678000 (= (forall!14225 lt!2141029 lambda!260652) e!3239304)))

(declare-fun b!5202193 () Bool)

(declare-fun e!3239305 () Bool)

(assert (=> b!5202193 (= e!3239304 e!3239305)))

(declare-fun res!2210091 () Bool)

(assert (=> b!5202193 (=> (not res!2210091) (not e!3239305))))

(assert (=> b!5202193 (= res!2210091 (dynLambda!23912 lambda!260652 (h!66978 lt!2141029)))))

(declare-fun b!5202194 () Bool)

(assert (=> b!5202194 (= e!3239305 (forall!14225 (t!373807 lt!2141029) lambda!260652))))

(assert (= (and d!1678000 (not res!2210090)) b!5202193))

(assert (= (and b!5202193 res!2210091) b!5202194))

(declare-fun b_lambda!201315 () Bool)

(assert (=> (not b_lambda!201315) (not b!5202193)))

(declare-fun m!6254334 () Bool)

(assert (=> b!5202193 m!6254334))

(declare-fun m!6254336 () Bool)

(assert (=> b!5202194 m!6254336))

(assert (=> d!1677808 d!1678000))

(assert (=> d!1677820 d!1677810))

(declare-fun b!5202195 () Bool)

(declare-fun e!3239309 () Bool)

(declare-fun e!3239307 () Bool)

(assert (=> b!5202195 (= e!3239309 e!3239307)))

(declare-fun c!896691 () Bool)

(assert (=> b!5202195 (= c!896691 ((_ is Star!14785) (regOne!30082 r!7292)))))

(declare-fun bm!365728 () Bool)

(declare-fun call!365734 () Bool)

(declare-fun c!896692 () Bool)

(assert (=> bm!365728 (= call!365734 (validRegex!6521 (ite c!896692 (regTwo!30083 (regOne!30082 r!7292)) (regTwo!30082 (regOne!30082 r!7292)))))))

(declare-fun bm!365729 () Bool)

(declare-fun call!365735 () Bool)

(declare-fun call!365733 () Bool)

(assert (=> bm!365729 (= call!365735 call!365733)))

(declare-fun b!5202196 () Bool)

(declare-fun e!3239312 () Bool)

(assert (=> b!5202196 (= e!3239312 call!365734)))

(declare-fun b!5202197 () Bool)

(declare-fun res!2210093 () Bool)

(assert (=> b!5202197 (=> (not res!2210093) (not e!3239312))))

(assert (=> b!5202197 (= res!2210093 call!365735)))

(declare-fun e!3239306 () Bool)

(assert (=> b!5202197 (= e!3239306 e!3239312)))

(declare-fun b!5202198 () Bool)

(assert (=> b!5202198 (= e!3239307 e!3239306)))

(assert (=> b!5202198 (= c!896692 ((_ is Union!14785) (regOne!30082 r!7292)))))

(declare-fun b!5202199 () Bool)

(declare-fun e!3239310 () Bool)

(assert (=> b!5202199 (= e!3239310 call!365733)))

(declare-fun b!5202200 () Bool)

(assert (=> b!5202200 (= e!3239307 e!3239310)))

(declare-fun res!2210095 () Bool)

(assert (=> b!5202200 (= res!2210095 (not (nullable!4954 (reg!15114 (regOne!30082 r!7292)))))))

(assert (=> b!5202200 (=> (not res!2210095) (not e!3239310))))

(declare-fun b!5202201 () Bool)

(declare-fun e!3239311 () Bool)

(assert (=> b!5202201 (= e!3239311 call!365734)))

(declare-fun b!5202202 () Bool)

(declare-fun res!2210092 () Bool)

(declare-fun e!3239308 () Bool)

(assert (=> b!5202202 (=> res!2210092 e!3239308)))

(assert (=> b!5202202 (= res!2210092 (not ((_ is Concat!23630) (regOne!30082 r!7292))))))

(assert (=> b!5202202 (= e!3239306 e!3239308)))

(declare-fun b!5202203 () Bool)

(assert (=> b!5202203 (= e!3239308 e!3239311)))

(declare-fun res!2210094 () Bool)

(assert (=> b!5202203 (=> (not res!2210094) (not e!3239311))))

(assert (=> b!5202203 (= res!2210094 call!365735)))

(declare-fun d!1678002 () Bool)

(declare-fun res!2210096 () Bool)

(assert (=> d!1678002 (=> res!2210096 e!3239309)))

(assert (=> d!1678002 (= res!2210096 ((_ is ElementMatch!14785) (regOne!30082 r!7292)))))

(assert (=> d!1678002 (= (validRegex!6521 (regOne!30082 r!7292)) e!3239309)))

(declare-fun bm!365730 () Bool)

(assert (=> bm!365730 (= call!365733 (validRegex!6521 (ite c!896691 (reg!15114 (regOne!30082 r!7292)) (ite c!896692 (regOne!30083 (regOne!30082 r!7292)) (regOne!30082 (regOne!30082 r!7292))))))))

(assert (= (and d!1678002 (not res!2210096)) b!5202195))

(assert (= (and b!5202195 c!896691) b!5202200))

(assert (= (and b!5202195 (not c!896691)) b!5202198))

(assert (= (and b!5202200 res!2210095) b!5202199))

(assert (= (and b!5202198 c!896692) b!5202197))

(assert (= (and b!5202198 (not c!896692)) b!5202202))

(assert (= (and b!5202197 res!2210093) b!5202196))

(assert (= (and b!5202202 (not res!2210092)) b!5202203))

(assert (= (and b!5202203 res!2210094) b!5202201))

(assert (= (or b!5202196 b!5202201) bm!365728))

(assert (= (or b!5202197 b!5202203) bm!365729))

(assert (= (or b!5202199 bm!365729) bm!365730))

(declare-fun m!6254348 () Bool)

(assert (=> bm!365728 m!6254348))

(declare-fun m!6254350 () Bool)

(assert (=> b!5202200 m!6254350))

(declare-fun m!6254354 () Bool)

(assert (=> bm!365730 m!6254354))

(assert (=> d!1677820 d!1678002))

(assert (=> d!1677820 d!1677824))

(declare-fun d!1678008 () Bool)

(assert (=> d!1678008 (= (Exists!1966 lambda!260655) (choose!38662 lambda!260655))))

(declare-fun bs!1209399 () Bool)

(assert (= bs!1209399 d!1678008))

(declare-fun m!6254358 () Bool)

(assert (=> bs!1209399 m!6254358))

(assert (=> d!1677820 d!1678008))

(declare-fun bs!1209403 () Bool)

(declare-fun d!1678012 () Bool)

(assert (= bs!1209403 (and d!1678012 d!1677822)))

(declare-fun lambda!260685 () Int)

(assert (=> bs!1209403 (= lambda!260685 lambda!260660)))

(declare-fun bs!1209404 () Bool)

(assert (= bs!1209404 (and d!1678012 b!5201470)))

(assert (=> bs!1209404 (not (= lambda!260685 lambda!260630))))

(declare-fun bs!1209405 () Bool)

(assert (= bs!1209405 (and d!1678012 b!5201207)))

(assert (=> bs!1209405 (= lambda!260685 lambda!260602)))

(declare-fun bs!1209406 () Bool)

(assert (= bs!1209406 (and d!1678012 b!5201462)))

(assert (=> bs!1209406 (not (= lambda!260685 lambda!260628))))

(assert (=> bs!1209403 (not (= lambda!260685 lambda!260661))))

(declare-fun bs!1209407 () Bool)

(assert (= bs!1209407 (and d!1678012 d!1677820)))

(assert (=> bs!1209407 (= lambda!260685 lambda!260655)))

(assert (=> bs!1209405 (not (= lambda!260685 lambda!260603))))

(assert (=> d!1678012 true))

(assert (=> d!1678012 true))

(assert (=> d!1678012 true))

(assert (=> d!1678012 (= (isDefined!11599 (findConcatSeparation!1310 (regOne!30082 r!7292) (regTwo!30082 r!7292) Nil!60532 s!2326 s!2326)) (Exists!1966 lambda!260685))))

(assert (=> d!1678012 true))

(declare-fun _$89!1343 () Unit!152406)

(assert (=> d!1678012 (= (choose!38663 (regOne!30082 r!7292) (regTwo!30082 r!7292) s!2326) _$89!1343)))

(declare-fun bs!1209408 () Bool)

(assert (= bs!1209408 d!1678012))

(assert (=> bs!1209408 m!6253652))

(assert (=> bs!1209408 m!6253652))

(assert (=> bs!1209408 m!6253654))

(declare-fun m!6254406 () Bool)

(assert (=> bs!1209408 m!6254406))

(assert (=> d!1677820 d!1678012))

(declare-fun bs!1209409 () Bool)

(declare-fun b!5202264 () Bool)

(assert (= bs!1209409 (and b!5202264 d!1677822)))

(declare-fun lambda!260686 () Int)

(assert (=> bs!1209409 (not (= lambda!260686 lambda!260660))))

(declare-fun bs!1209410 () Bool)

(assert (= bs!1209410 (and b!5202264 b!5201470)))

(assert (=> bs!1209410 (not (= lambda!260686 lambda!260630))))

(declare-fun bs!1209411 () Bool)

(assert (= bs!1209411 (and b!5202264 d!1678012)))

(assert (=> bs!1209411 (not (= lambda!260686 lambda!260685))))

(declare-fun bs!1209412 () Bool)

(assert (= bs!1209412 (and b!5202264 b!5201207)))

(assert (=> bs!1209412 (not (= lambda!260686 lambda!260602))))

(declare-fun bs!1209413 () Bool)

(assert (= bs!1209413 (and b!5202264 b!5201462)))

(assert (=> bs!1209413 (= (and (= (reg!15114 (regOne!30083 r!7292)) (reg!15114 r!7292)) (= (regOne!30083 r!7292) r!7292)) (= lambda!260686 lambda!260628))))

(assert (=> bs!1209409 (not (= lambda!260686 lambda!260661))))

(declare-fun bs!1209414 () Bool)

(assert (= bs!1209414 (and b!5202264 d!1677820)))

(assert (=> bs!1209414 (not (= lambda!260686 lambda!260655))))

(assert (=> bs!1209412 (not (= lambda!260686 lambda!260603))))

(assert (=> b!5202264 true))

(assert (=> b!5202264 true))

(declare-fun bs!1209415 () Bool)

(declare-fun b!5202270 () Bool)

(assert (= bs!1209415 (and b!5202270 d!1677822)))

(declare-fun lambda!260687 () Int)

(assert (=> bs!1209415 (not (= lambda!260687 lambda!260660))))

(declare-fun bs!1209416 () Bool)

(assert (= bs!1209416 (and b!5202270 b!5201470)))

(assert (=> bs!1209416 (= (and (= (regOne!30082 (regOne!30083 r!7292)) (regOne!30082 r!7292)) (= (regTwo!30082 (regOne!30083 r!7292)) (regTwo!30082 r!7292))) (= lambda!260687 lambda!260630))))

(declare-fun bs!1209417 () Bool)

(assert (= bs!1209417 (and b!5202270 d!1678012)))

(assert (=> bs!1209417 (not (= lambda!260687 lambda!260685))))

(declare-fun bs!1209419 () Bool)

(assert (= bs!1209419 (and b!5202270 b!5201207)))

(assert (=> bs!1209419 (not (= lambda!260687 lambda!260602))))

(declare-fun bs!1209420 () Bool)

(assert (= bs!1209420 (and b!5202270 b!5202264)))

(assert (=> bs!1209420 (not (= lambda!260687 lambda!260686))))

(declare-fun bs!1209421 () Bool)

(assert (= bs!1209421 (and b!5202270 b!5201462)))

(assert (=> bs!1209421 (not (= lambda!260687 lambda!260628))))

(assert (=> bs!1209415 (= (and (= (regOne!30082 (regOne!30083 r!7292)) (regOne!30082 r!7292)) (= (regTwo!30082 (regOne!30083 r!7292)) (regTwo!30082 r!7292))) (= lambda!260687 lambda!260661))))

(declare-fun bs!1209422 () Bool)

(assert (= bs!1209422 (and b!5202270 d!1677820)))

(assert (=> bs!1209422 (not (= lambda!260687 lambda!260655))))

(assert (=> bs!1209419 (= (and (= (regOne!30082 (regOne!30083 r!7292)) (regOne!30082 r!7292)) (= (regTwo!30082 (regOne!30083 r!7292)) (regTwo!30082 r!7292))) (= lambda!260687 lambda!260603))))

(assert (=> b!5202270 true))

(assert (=> b!5202270 true))

(declare-fun bm!365747 () Bool)

(declare-fun call!365753 () Bool)

(assert (=> bm!365747 (= call!365753 (isEmpty!32440 s!2326))))

(declare-fun b!5202263 () Bool)

(declare-fun e!3239351 () Bool)

(declare-fun e!3239350 () Bool)

(assert (=> b!5202263 (= e!3239351 e!3239350)))

(declare-fun res!2210118 () Bool)

(assert (=> b!5202263 (= res!2210118 (not ((_ is EmptyLang!14785) (regOne!30083 r!7292))))))

(assert (=> b!5202263 (=> (not res!2210118) (not e!3239350))))

(declare-fun e!3239347 () Bool)

(declare-fun call!365752 () Bool)

(assert (=> b!5202264 (= e!3239347 call!365752)))

(declare-fun b!5202265 () Bool)

(declare-fun e!3239349 () Bool)

(declare-fun e!3239353 () Bool)

(assert (=> b!5202265 (= e!3239349 e!3239353)))

(declare-fun res!2210119 () Bool)

(assert (=> b!5202265 (= res!2210119 (matchRSpec!1888 (regOne!30083 (regOne!30083 r!7292)) s!2326))))

(assert (=> b!5202265 (=> res!2210119 e!3239353)))

(declare-fun b!5202266 () Bool)

(declare-fun res!2210120 () Bool)

(assert (=> b!5202266 (=> res!2210120 e!3239347)))

(assert (=> b!5202266 (= res!2210120 call!365753)))

(declare-fun e!3239348 () Bool)

(assert (=> b!5202266 (= e!3239348 e!3239347)))

(declare-fun d!1678026 () Bool)

(declare-fun c!896715 () Bool)

(assert (=> d!1678026 (= c!896715 ((_ is EmptyExpr!14785) (regOne!30083 r!7292)))))

(assert (=> d!1678026 (= (matchRSpec!1888 (regOne!30083 r!7292) s!2326) e!3239351)))

(declare-fun b!5202267 () Bool)

(assert (=> b!5202267 (= e!3239353 (matchRSpec!1888 (regTwo!30083 (regOne!30083 r!7292)) s!2326))))

(declare-fun b!5202268 () Bool)

(assert (=> b!5202268 (= e!3239349 e!3239348)))

(declare-fun c!896714 () Bool)

(assert (=> b!5202268 (= c!896714 ((_ is Star!14785) (regOne!30083 r!7292)))))

(declare-fun bm!365748 () Bool)

(assert (=> bm!365748 (= call!365752 (Exists!1966 (ite c!896714 lambda!260686 lambda!260687)))))

(declare-fun b!5202269 () Bool)

(declare-fun c!896713 () Bool)

(assert (=> b!5202269 (= c!896713 ((_ is ElementMatch!14785) (regOne!30083 r!7292)))))

(declare-fun e!3239352 () Bool)

(assert (=> b!5202269 (= e!3239350 e!3239352)))

(assert (=> b!5202270 (= e!3239348 call!365752)))

(declare-fun b!5202271 () Bool)

(declare-fun c!896712 () Bool)

(assert (=> b!5202271 (= c!896712 ((_ is Union!14785) (regOne!30083 r!7292)))))

(assert (=> b!5202271 (= e!3239352 e!3239349)))

(declare-fun b!5202272 () Bool)

(assert (=> b!5202272 (= e!3239351 call!365753)))

(declare-fun b!5202273 () Bool)

(assert (=> b!5202273 (= e!3239352 (= s!2326 (Cons!60532 (c!896412 (regOne!30083 r!7292)) Nil!60532)))))

(assert (= (and d!1678026 c!896715) b!5202272))

(assert (= (and d!1678026 (not c!896715)) b!5202263))

(assert (= (and b!5202263 res!2210118) b!5202269))

(assert (= (and b!5202269 c!896713) b!5202273))

(assert (= (and b!5202269 (not c!896713)) b!5202271))

(assert (= (and b!5202271 c!896712) b!5202265))

(assert (= (and b!5202271 (not c!896712)) b!5202268))

(assert (= (and b!5202265 (not res!2210119)) b!5202267))

(assert (= (and b!5202268 c!896714) b!5202266))

(assert (= (and b!5202268 (not c!896714)) b!5202270))

(assert (= (and b!5202266 (not res!2210120)) b!5202264))

(assert (= (or b!5202264 b!5202270) bm!365748))

(assert (= (or b!5202272 b!5202266) bm!365747))

(assert (=> bm!365747 m!6253868))

(declare-fun m!6254424 () Bool)

(assert (=> b!5202265 m!6254424))

(declare-fun m!6254426 () Bool)

(assert (=> b!5202267 m!6254426))

(declare-fun m!6254428 () Bool)

(assert (=> bm!365748 m!6254428))

(assert (=> b!5201463 d!1678026))

(declare-fun d!1678036 () Bool)

(assert (=> d!1678036 (= (isEmpty!32438 (tail!10251 (unfocusZipperList!227 zl!343))) ((_ is Nil!60530) (tail!10251 (unfocusZipperList!227 zl!343))))))

(assert (=> b!5201690 d!1678036))

(declare-fun d!1678038 () Bool)

(assert (=> d!1678038 (= (tail!10251 (unfocusZipperList!227 zl!343)) (t!373807 (unfocusZipperList!227 zl!343)))))

(assert (=> b!5201690 d!1678038))

(assert (=> b!5201859 d!1677832))

(declare-fun b!5202295 () Bool)

(declare-fun e!3239374 () Bool)

(declare-fun e!3239372 () Bool)

(assert (=> b!5202295 (= e!3239374 e!3239372)))

(declare-fun c!896720 () Bool)

(assert (=> b!5202295 (= c!896720 ((_ is Star!14785) (ite c!896434 (regTwo!30083 r!7292) (regTwo!30082 r!7292))))))

(declare-fun call!365761 () Bool)

(declare-fun c!896721 () Bool)

(declare-fun bm!365755 () Bool)

(assert (=> bm!365755 (= call!365761 (validRegex!6521 (ite c!896721 (regTwo!30083 (ite c!896434 (regTwo!30083 r!7292) (regTwo!30082 r!7292))) (regTwo!30082 (ite c!896434 (regTwo!30083 r!7292) (regTwo!30082 r!7292))))))))

(declare-fun bm!365756 () Bool)

(declare-fun call!365762 () Bool)

(declare-fun call!365760 () Bool)

(assert (=> bm!365756 (= call!365762 call!365760)))

(declare-fun b!5202296 () Bool)

(declare-fun e!3239377 () Bool)

(assert (=> b!5202296 (= e!3239377 call!365761)))

(declare-fun b!5202297 () Bool)

(declare-fun res!2210135 () Bool)

(assert (=> b!5202297 (=> (not res!2210135) (not e!3239377))))

(assert (=> b!5202297 (= res!2210135 call!365762)))

(declare-fun e!3239371 () Bool)

(assert (=> b!5202297 (= e!3239371 e!3239377)))

(declare-fun b!5202298 () Bool)

(assert (=> b!5202298 (= e!3239372 e!3239371)))

(assert (=> b!5202298 (= c!896721 ((_ is Union!14785) (ite c!896434 (regTwo!30083 r!7292) (regTwo!30082 r!7292))))))

(declare-fun b!5202299 () Bool)

(declare-fun e!3239375 () Bool)

(assert (=> b!5202299 (= e!3239375 call!365760)))

(declare-fun b!5202300 () Bool)

(assert (=> b!5202300 (= e!3239372 e!3239375)))

(declare-fun res!2210137 () Bool)

(assert (=> b!5202300 (= res!2210137 (not (nullable!4954 (reg!15114 (ite c!896434 (regTwo!30083 r!7292) (regTwo!30082 r!7292))))))))

(assert (=> b!5202300 (=> (not res!2210137) (not e!3239375))))

(declare-fun b!5202301 () Bool)

(declare-fun e!3239376 () Bool)

(assert (=> b!5202301 (= e!3239376 call!365761)))

(declare-fun b!5202302 () Bool)

(declare-fun res!2210134 () Bool)

(declare-fun e!3239373 () Bool)

(assert (=> b!5202302 (=> res!2210134 e!3239373)))

(assert (=> b!5202302 (= res!2210134 (not ((_ is Concat!23630) (ite c!896434 (regTwo!30083 r!7292) (regTwo!30082 r!7292)))))))

(assert (=> b!5202302 (= e!3239371 e!3239373)))

(declare-fun b!5202303 () Bool)

(assert (=> b!5202303 (= e!3239373 e!3239376)))

(declare-fun res!2210136 () Bool)

(assert (=> b!5202303 (=> (not res!2210136) (not e!3239376))))

(assert (=> b!5202303 (= res!2210136 call!365762)))

(declare-fun d!1678040 () Bool)

(declare-fun res!2210138 () Bool)

(assert (=> d!1678040 (=> res!2210138 e!3239374)))

(assert (=> d!1678040 (= res!2210138 ((_ is ElementMatch!14785) (ite c!896434 (regTwo!30083 r!7292) (regTwo!30082 r!7292))))))

(assert (=> d!1678040 (= (validRegex!6521 (ite c!896434 (regTwo!30083 r!7292) (regTwo!30082 r!7292))) e!3239374)))

(declare-fun bm!365757 () Bool)

(assert (=> bm!365757 (= call!365760 (validRegex!6521 (ite c!896720 (reg!15114 (ite c!896434 (regTwo!30083 r!7292) (regTwo!30082 r!7292))) (ite c!896721 (regOne!30083 (ite c!896434 (regTwo!30083 r!7292) (regTwo!30082 r!7292))) (regOne!30082 (ite c!896434 (regTwo!30083 r!7292) (regTwo!30082 r!7292)))))))))

(assert (= (and d!1678040 (not res!2210138)) b!5202295))

(assert (= (and b!5202295 c!896720) b!5202300))

(assert (= (and b!5202295 (not c!896720)) b!5202298))

(assert (= (and b!5202300 res!2210137) b!5202299))

(assert (= (and b!5202298 c!896721) b!5202297))

(assert (= (and b!5202298 (not c!896721)) b!5202302))

(assert (= (and b!5202297 res!2210135) b!5202296))

(assert (= (and b!5202302 (not res!2210134)) b!5202303))

(assert (= (and b!5202303 res!2210136) b!5202301))

(assert (= (or b!5202296 b!5202301) bm!365755))

(assert (= (or b!5202297 b!5202303) bm!365756))

(assert (= (or b!5202299 bm!365756) bm!365757))

(declare-fun m!6254430 () Bool)

(assert (=> bm!365755 m!6254430))

(declare-fun m!6254432 () Bool)

(assert (=> b!5202300 m!6254432))

(declare-fun m!6254434 () Bool)

(assert (=> bm!365757 m!6254434))

(assert (=> bm!365587 d!1678040))

(declare-fun bs!1209423 () Bool)

(declare-fun d!1678042 () Bool)

(assert (= bs!1209423 (and d!1678042 d!1677808)))

(declare-fun lambda!260688 () Int)

(assert (=> bs!1209423 (= lambda!260688 lambda!260652)))

(declare-fun bs!1209424 () Bool)

(assert (= bs!1209424 (and d!1678042 d!1677740)))

(assert (=> bs!1209424 (= lambda!260688 lambda!260615)))

(declare-fun bs!1209425 () Bool)

(assert (= bs!1209425 (and d!1678042 d!1677800)))

(assert (=> bs!1209425 (= lambda!260688 lambda!260646)))

(declare-fun bs!1209426 () Bool)

(assert (= bs!1209426 (and d!1678042 d!1677802)))

(assert (=> bs!1209426 (= lambda!260688 lambda!260649)))

(declare-fun bs!1209427 () Bool)

(assert (= bs!1209427 (and d!1678042 d!1677792)))

(assert (=> bs!1209427 (= lambda!260688 lambda!260645)))

(declare-fun bs!1209428 () Bool)

(assert (= bs!1209428 (and d!1678042 b!5201188)))

(assert (=> bs!1209428 (= lambda!260688 lambda!260605)))

(declare-fun b!5202312 () Bool)

(declare-fun e!3239386 () Bool)

(declare-fun lt!2141067 () Regex!14785)

(assert (=> b!5202312 (= e!3239386 (isConcat!276 lt!2141067))))

(declare-fun b!5202313 () Bool)

(declare-fun e!3239387 () Bool)

(declare-fun e!3239385 () Bool)

(assert (=> b!5202313 (= e!3239387 e!3239385)))

(declare-fun c!896727 () Bool)

(assert (=> b!5202313 (= c!896727 (isEmpty!32438 (t!373807 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun b!5202314 () Bool)

(declare-fun e!3239383 () Regex!14785)

(assert (=> b!5202314 (= e!3239383 (h!66978 (t!373807 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun b!5202315 () Bool)

(declare-fun e!3239384 () Regex!14785)

(assert (=> b!5202315 (= e!3239384 (Concat!23630 (h!66978 (t!373807 (exprs!4669 (h!66979 zl!343)))) (generalisedConcat!454 (t!373807 (t!373807 (exprs!4669 (h!66979 zl!343)))))))))

(declare-fun b!5202316 () Bool)

(assert (=> b!5202316 (= e!3239383 e!3239384)))

(declare-fun c!896726 () Bool)

(assert (=> b!5202316 (= c!896726 ((_ is Cons!60530) (t!373807 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun b!5202317 () Bool)

(assert (=> b!5202317 (= e!3239385 e!3239386)))

(declare-fun c!896724 () Bool)

(assert (=> b!5202317 (= c!896724 (isEmpty!32438 (tail!10251 (t!373807 (exprs!4669 (h!66979 zl!343))))))))

(declare-fun b!5202318 () Bool)

(assert (=> b!5202318 (= e!3239384 EmptyExpr!14785)))

(assert (=> d!1678042 e!3239387))

(declare-fun res!2210143 () Bool)

(assert (=> d!1678042 (=> (not res!2210143) (not e!3239387))))

(assert (=> d!1678042 (= res!2210143 (validRegex!6521 lt!2141067))))

(assert (=> d!1678042 (= lt!2141067 e!3239383)))

(declare-fun c!896725 () Bool)

(declare-fun e!3239382 () Bool)

(assert (=> d!1678042 (= c!896725 e!3239382)))

(declare-fun res!2210144 () Bool)

(assert (=> d!1678042 (=> (not res!2210144) (not e!3239382))))

(assert (=> d!1678042 (= res!2210144 ((_ is Cons!60530) (t!373807 (exprs!4669 (h!66979 zl!343)))))))

(assert (=> d!1678042 (forall!14225 (t!373807 (exprs!4669 (h!66979 zl!343))) lambda!260688)))

(assert (=> d!1678042 (= (generalisedConcat!454 (t!373807 (exprs!4669 (h!66979 zl!343)))) lt!2141067)))

(declare-fun b!5202319 () Bool)

(assert (=> b!5202319 (= e!3239382 (isEmpty!32438 (t!373807 (t!373807 (exprs!4669 (h!66979 zl!343))))))))

(declare-fun b!5202320 () Bool)

(assert (=> b!5202320 (= e!3239385 (isEmptyExpr!753 lt!2141067))))

(declare-fun b!5202321 () Bool)

(assert (=> b!5202321 (= e!3239386 (= lt!2141067 (head!11154 (t!373807 (exprs!4669 (h!66979 zl!343))))))))

(assert (= (and d!1678042 res!2210144) b!5202319))

(assert (= (and d!1678042 c!896725) b!5202314))

(assert (= (and d!1678042 (not c!896725)) b!5202316))

(assert (= (and b!5202316 c!896726) b!5202315))

(assert (= (and b!5202316 (not c!896726)) b!5202318))

(assert (= (and d!1678042 res!2210143) b!5202313))

(assert (= (and b!5202313 c!896727) b!5202320))

(assert (= (and b!5202313 (not c!896727)) b!5202317))

(assert (= (and b!5202317 c!896724) b!5202321))

(assert (= (and b!5202317 (not c!896724)) b!5202312))

(declare-fun m!6254436 () Bool)

(assert (=> b!5202315 m!6254436))

(declare-fun m!6254438 () Bool)

(assert (=> b!5202320 m!6254438))

(declare-fun m!6254440 () Bool)

(assert (=> b!5202321 m!6254440))

(declare-fun m!6254442 () Bool)

(assert (=> b!5202312 m!6254442))

(declare-fun m!6254444 () Bool)

(assert (=> d!1678042 m!6254444))

(declare-fun m!6254446 () Bool)

(assert (=> d!1678042 m!6254446))

(declare-fun m!6254448 () Bool)

(assert (=> b!5202319 m!6254448))

(assert (=> b!5202313 m!6253680))

(declare-fun m!6254450 () Bool)

(assert (=> b!5202317 m!6254450))

(assert (=> b!5202317 m!6254450))

(declare-fun m!6254452 () Bool)

(assert (=> b!5202317 m!6254452))

(assert (=> b!5201596 d!1678042))

(declare-fun d!1678044 () Bool)

(assert (=> d!1678044 (= (isEmpty!32438 (tail!10251 (exprs!4669 (h!66979 zl!343)))) ((_ is Nil!60530) (tail!10251 (exprs!4669 (h!66979 zl!343)))))))

(assert (=> b!5201598 d!1678044))

(declare-fun d!1678046 () Bool)

(assert (=> d!1678046 (= (tail!10251 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343))))))

(assert (=> b!5201598 d!1678046))

(declare-fun d!1678048 () Bool)

(assert (=> d!1678048 true))

(assert (=> d!1678048 true))

(declare-fun res!2210149 () Bool)

(assert (=> d!1678048 (= (choose!38662 lambda!260602) res!2210149)))

(assert (=> d!1677816 d!1678048))

(declare-fun d!1678054 () Bool)

(assert (=> d!1678054 (= (isEmpty!32438 (exprs!4669 (h!66979 zl!343))) ((_ is Nil!60530) (exprs!4669 (h!66979 zl!343))))))

(assert (=> b!5201594 d!1678054))

(declare-fun bm!365775 () Bool)

(declare-fun call!365780 () Bool)

(declare-fun c!896744 () Bool)

(assert (=> bm!365775 (= call!365780 (nullable!4954 (ite c!896744 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))))))))

(declare-fun b!5202378 () Bool)

(declare-fun e!3239424 () Bool)

(declare-fun e!3239428 () Bool)

(assert (=> b!5202378 (= e!3239424 e!3239428)))

(declare-fun res!2210176 () Bool)

(assert (=> b!5202378 (=> (not res!2210176) (not e!3239428))))

(assert (=> b!5202378 (= res!2210176 (and (not ((_ is EmptyLang!14785) (h!66978 (exprs!4669 (h!66979 zl!343))))) (not ((_ is ElementMatch!14785) (h!66978 (exprs!4669 (h!66979 zl!343)))))))))

(declare-fun b!5202379 () Bool)

(declare-fun e!3239426 () Bool)

(declare-fun e!3239425 () Bool)

(assert (=> b!5202379 (= e!3239426 e!3239425)))

(declare-fun res!2210174 () Bool)

(assert (=> b!5202379 (= res!2210174 call!365780)))

(assert (=> b!5202379 (=> (not res!2210174) (not e!3239425))))

(declare-fun b!5202380 () Bool)

(declare-fun e!3239423 () Bool)

(declare-fun call!365781 () Bool)

(assert (=> b!5202380 (= e!3239423 call!365781)))

(declare-fun b!5202381 () Bool)

(declare-fun e!3239427 () Bool)

(assert (=> b!5202381 (= e!3239427 e!3239426)))

(assert (=> b!5202381 (= c!896744 ((_ is Union!14785) (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun b!5202382 () Bool)

(assert (=> b!5202382 (= e!3239425 call!365781)))

(declare-fun bm!365776 () Bool)

(assert (=> bm!365776 (= call!365781 (nullable!4954 (ite c!896744 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))))))))

(declare-fun b!5202384 () Bool)

(assert (=> b!5202384 (= e!3239428 e!3239427)))

(declare-fun res!2210172 () Bool)

(assert (=> b!5202384 (=> res!2210172 e!3239427)))

(assert (=> b!5202384 (= res!2210172 ((_ is Star!14785) (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun b!5202383 () Bool)

(assert (=> b!5202383 (= e!3239426 e!3239423)))

(declare-fun res!2210173 () Bool)

(assert (=> b!5202383 (= res!2210173 call!365780)))

(assert (=> b!5202383 (=> res!2210173 e!3239423)))

(declare-fun d!1678056 () Bool)

(declare-fun res!2210175 () Bool)

(assert (=> d!1678056 (=> res!2210175 e!3239424)))

(assert (=> d!1678056 (= res!2210175 ((_ is EmptyExpr!14785) (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(assert (=> d!1678056 (= (nullableFct!1369 (h!66978 (exprs!4669 (h!66979 zl!343)))) e!3239424)))

(assert (= (and d!1678056 (not res!2210175)) b!5202378))

(assert (= (and b!5202378 res!2210176) b!5202384))

(assert (= (and b!5202384 (not res!2210172)) b!5202381))

(assert (= (and b!5202381 c!896744) b!5202383))

(assert (= (and b!5202381 (not c!896744)) b!5202379))

(assert (= (and b!5202383 (not res!2210173)) b!5202380))

(assert (= (and b!5202379 res!2210174) b!5202382))

(assert (= (or b!5202380 b!5202382) bm!365776))

(assert (= (or b!5202383 b!5202379) bm!365775))

(declare-fun m!6254508 () Bool)

(assert (=> bm!365775 m!6254508))

(declare-fun m!6254510 () Bool)

(assert (=> bm!365776 m!6254510))

(assert (=> d!1677832 d!1678056))

(declare-fun bs!1209433 () Bool)

(declare-fun b!5202395 () Bool)

(assert (= bs!1209433 (and b!5202395 d!1677822)))

(declare-fun lambda!260690 () Int)

(assert (=> bs!1209433 (not (= lambda!260690 lambda!260660))))

(declare-fun bs!1209434 () Bool)

(assert (= bs!1209434 (and b!5202395 b!5201470)))

(assert (=> bs!1209434 (not (= lambda!260690 lambda!260630))))

(declare-fun bs!1209435 () Bool)

(assert (= bs!1209435 (and b!5202395 d!1678012)))

(assert (=> bs!1209435 (not (= lambda!260690 lambda!260685))))

(declare-fun bs!1209436 () Bool)

(assert (= bs!1209436 (and b!5202395 b!5201207)))

(assert (=> bs!1209436 (not (= lambda!260690 lambda!260602))))

(declare-fun bs!1209437 () Bool)

(assert (= bs!1209437 (and b!5202395 b!5202264)))

(assert (=> bs!1209437 (= (and (= (reg!15114 (regTwo!30083 r!7292)) (reg!15114 (regOne!30083 r!7292))) (= (regTwo!30083 r!7292) (regOne!30083 r!7292))) (= lambda!260690 lambda!260686))))

(declare-fun bs!1209439 () Bool)

(assert (= bs!1209439 (and b!5202395 b!5202270)))

(assert (=> bs!1209439 (not (= lambda!260690 lambda!260687))))

(declare-fun bs!1209441 () Bool)

(assert (= bs!1209441 (and b!5202395 b!5201462)))

(assert (=> bs!1209441 (= (and (= (reg!15114 (regTwo!30083 r!7292)) (reg!15114 r!7292)) (= (regTwo!30083 r!7292) r!7292)) (= lambda!260690 lambda!260628))))

(assert (=> bs!1209433 (not (= lambda!260690 lambda!260661))))

(declare-fun bs!1209444 () Bool)

(assert (= bs!1209444 (and b!5202395 d!1677820)))

(assert (=> bs!1209444 (not (= lambda!260690 lambda!260655))))

(assert (=> bs!1209436 (not (= lambda!260690 lambda!260603))))

(assert (=> b!5202395 true))

(assert (=> b!5202395 true))

(declare-fun bs!1209448 () Bool)

(declare-fun b!5202401 () Bool)

(assert (= bs!1209448 (and b!5202401 d!1677822)))

(declare-fun lambda!260692 () Int)

(assert (=> bs!1209448 (not (= lambda!260692 lambda!260660))))

(declare-fun bs!1209449 () Bool)

(assert (= bs!1209449 (and b!5202401 b!5201470)))

(assert (=> bs!1209449 (= (and (= (regOne!30082 (regTwo!30083 r!7292)) (regOne!30082 r!7292)) (= (regTwo!30082 (regTwo!30083 r!7292)) (regTwo!30082 r!7292))) (= lambda!260692 lambda!260630))))

(declare-fun bs!1209450 () Bool)

(assert (= bs!1209450 (and b!5202401 d!1678012)))

(assert (=> bs!1209450 (not (= lambda!260692 lambda!260685))))

(declare-fun bs!1209451 () Bool)

(assert (= bs!1209451 (and b!5202401 b!5201207)))

(assert (=> bs!1209451 (not (= lambda!260692 lambda!260602))))

(declare-fun bs!1209452 () Bool)

(assert (= bs!1209452 (and b!5202401 b!5202270)))

(assert (=> bs!1209452 (= (and (= (regOne!30082 (regTwo!30083 r!7292)) (regOne!30082 (regOne!30083 r!7292))) (= (regTwo!30082 (regTwo!30083 r!7292)) (regTwo!30082 (regOne!30083 r!7292)))) (= lambda!260692 lambda!260687))))

(declare-fun bs!1209454 () Bool)

(assert (= bs!1209454 (and b!5202401 b!5201462)))

(assert (=> bs!1209454 (not (= lambda!260692 lambda!260628))))

(assert (=> bs!1209448 (= (and (= (regOne!30082 (regTwo!30083 r!7292)) (regOne!30082 r!7292)) (= (regTwo!30082 (regTwo!30083 r!7292)) (regTwo!30082 r!7292))) (= lambda!260692 lambda!260661))))

(declare-fun bs!1209457 () Bool)

(assert (= bs!1209457 (and b!5202401 d!1677820)))

(assert (=> bs!1209457 (not (= lambda!260692 lambda!260655))))

(assert (=> bs!1209451 (= (and (= (regOne!30082 (regTwo!30083 r!7292)) (regOne!30082 r!7292)) (= (regTwo!30082 (regTwo!30083 r!7292)) (regTwo!30082 r!7292))) (= lambda!260692 lambda!260603))))

(declare-fun bs!1209460 () Bool)

(assert (= bs!1209460 (and b!5202401 b!5202264)))

(assert (=> bs!1209460 (not (= lambda!260692 lambda!260686))))

(declare-fun bs!1209462 () Bool)

(assert (= bs!1209462 (and b!5202401 b!5202395)))

(assert (=> bs!1209462 (not (= lambda!260692 lambda!260690))))

(assert (=> b!5202401 true))

(assert (=> b!5202401 true))

(declare-fun bm!365780 () Bool)

(declare-fun call!365786 () Bool)

(assert (=> bm!365780 (= call!365786 (isEmpty!32440 s!2326))))

(declare-fun b!5202394 () Bool)

(declare-fun e!3239440 () Bool)

(declare-fun e!3239439 () Bool)

(assert (=> b!5202394 (= e!3239440 e!3239439)))

(declare-fun res!2210182 () Bool)

(assert (=> b!5202394 (= res!2210182 (not ((_ is EmptyLang!14785) (regTwo!30083 r!7292))))))

(assert (=> b!5202394 (=> (not res!2210182) (not e!3239439))))

(declare-fun e!3239436 () Bool)

(declare-fun call!365785 () Bool)

(assert (=> b!5202395 (= e!3239436 call!365785)))

(declare-fun b!5202396 () Bool)

(declare-fun e!3239438 () Bool)

(declare-fun e!3239442 () Bool)

(assert (=> b!5202396 (= e!3239438 e!3239442)))

(declare-fun res!2210183 () Bool)

(assert (=> b!5202396 (= res!2210183 (matchRSpec!1888 (regOne!30083 (regTwo!30083 r!7292)) s!2326))))

(assert (=> b!5202396 (=> res!2210183 e!3239442)))

(declare-fun b!5202397 () Bool)

(declare-fun res!2210184 () Bool)

(assert (=> b!5202397 (=> res!2210184 e!3239436)))

(assert (=> b!5202397 (= res!2210184 call!365786)))

(declare-fun e!3239437 () Bool)

(assert (=> b!5202397 (= e!3239437 e!3239436)))

(declare-fun d!1678072 () Bool)

(declare-fun c!896750 () Bool)

(assert (=> d!1678072 (= c!896750 ((_ is EmptyExpr!14785) (regTwo!30083 r!7292)))))

(assert (=> d!1678072 (= (matchRSpec!1888 (regTwo!30083 r!7292) s!2326) e!3239440)))

(declare-fun b!5202398 () Bool)

(assert (=> b!5202398 (= e!3239442 (matchRSpec!1888 (regTwo!30083 (regTwo!30083 r!7292)) s!2326))))

(declare-fun b!5202399 () Bool)

(assert (=> b!5202399 (= e!3239438 e!3239437)))

(declare-fun c!896749 () Bool)

(assert (=> b!5202399 (= c!896749 ((_ is Star!14785) (regTwo!30083 r!7292)))))

(declare-fun bm!365781 () Bool)

(assert (=> bm!365781 (= call!365785 (Exists!1966 (ite c!896749 lambda!260690 lambda!260692)))))

(declare-fun b!5202400 () Bool)

(declare-fun c!896748 () Bool)

(assert (=> b!5202400 (= c!896748 ((_ is ElementMatch!14785) (regTwo!30083 r!7292)))))

(declare-fun e!3239441 () Bool)

(assert (=> b!5202400 (= e!3239439 e!3239441)))

(assert (=> b!5202401 (= e!3239437 call!365785)))

(declare-fun b!5202402 () Bool)

(declare-fun c!896747 () Bool)

(assert (=> b!5202402 (= c!896747 ((_ is Union!14785) (regTwo!30083 r!7292)))))

(assert (=> b!5202402 (= e!3239441 e!3239438)))

(declare-fun b!5202403 () Bool)

(assert (=> b!5202403 (= e!3239440 call!365786)))

(declare-fun b!5202404 () Bool)

(assert (=> b!5202404 (= e!3239441 (= s!2326 (Cons!60532 (c!896412 (regTwo!30083 r!7292)) Nil!60532)))))

(assert (= (and d!1678072 c!896750) b!5202403))

(assert (= (and d!1678072 (not c!896750)) b!5202394))

(assert (= (and b!5202394 res!2210182) b!5202400))

(assert (= (and b!5202400 c!896748) b!5202404))

(assert (= (and b!5202400 (not c!896748)) b!5202402))

(assert (= (and b!5202402 c!896747) b!5202396))

(assert (= (and b!5202402 (not c!896747)) b!5202399))

(assert (= (and b!5202396 (not res!2210183)) b!5202398))

(assert (= (and b!5202399 c!896749) b!5202397))

(assert (= (and b!5202399 (not c!896749)) b!5202401))

(assert (= (and b!5202397 (not res!2210184)) b!5202395))

(assert (= (or b!5202395 b!5202401) bm!365781))

(assert (= (or b!5202403 b!5202397) bm!365780))

(assert (=> bm!365780 m!6253868))

(declare-fun m!6254518 () Bool)

(assert (=> b!5202396 m!6254518))

(declare-fun m!6254520 () Bool)

(assert (=> b!5202398 m!6254520))

(declare-fun m!6254522 () Bool)

(assert (=> bm!365781 m!6254522))

(assert (=> b!5201467 d!1678072))

(declare-fun d!1678078 () Bool)

(assert (=> d!1678078 (= (Exists!1966 (ite c!896497 lambda!260628 lambda!260630)) (choose!38662 (ite c!896497 lambda!260628 lambda!260630)))))

(declare-fun bs!1209465 () Bool)

(assert (= bs!1209465 d!1678078))

(declare-fun m!6254524 () Bool)

(assert (=> bs!1209465 m!6254524))

(assert (=> bm!365618 d!1678078))

(declare-fun d!1678080 () Bool)

(assert (=> d!1678080 (= (isEmpty!32440 (tail!10250 s!2326)) ((_ is Nil!60532) (tail!10250 s!2326)))))

(assert (=> b!5201556 d!1678080))

(assert (=> b!5201556 d!1677938))

(declare-fun d!1678082 () Bool)

(declare-fun res!2210188 () Bool)

(declare-fun e!3239450 () Bool)

(assert (=> d!1678082 (=> res!2210188 e!3239450)))

(assert (=> d!1678082 (= res!2210188 ((_ is Nil!60530) (t!373807 (t!373807 (exprs!4669 (h!66979 zl!343))))))))

(assert (=> d!1678082 (= (forall!14225 (t!373807 (t!373807 (exprs!4669 (h!66979 zl!343)))) lambda!260605) e!3239450)))

(declare-fun b!5202416 () Bool)

(declare-fun e!3239451 () Bool)

(assert (=> b!5202416 (= e!3239450 e!3239451)))

(declare-fun res!2210189 () Bool)

(assert (=> b!5202416 (=> (not res!2210189) (not e!3239451))))

(assert (=> b!5202416 (= res!2210189 (dynLambda!23912 lambda!260605 (h!66978 (t!373807 (t!373807 (exprs!4669 (h!66979 zl!343)))))))))

(declare-fun b!5202417 () Bool)

(assert (=> b!5202417 (= e!3239451 (forall!14225 (t!373807 (t!373807 (t!373807 (exprs!4669 (h!66979 zl!343))))) lambda!260605))))

(assert (= (and d!1678082 (not res!2210188)) b!5202416))

(assert (= (and b!5202416 res!2210189) b!5202417))

(declare-fun b_lambda!201321 () Bool)

(assert (=> (not b_lambda!201321) (not b!5202416)))

(declare-fun m!6254528 () Bool)

(assert (=> b!5202416 m!6254528))

(declare-fun m!6254532 () Bool)

(assert (=> b!5202417 m!6254532))

(assert (=> b!5201635 d!1678082))

(declare-fun d!1678084 () Bool)

(assert (=> d!1678084 (= (head!11154 (exprs!4669 (h!66979 zl!343))) (h!66978 (exprs!4669 (h!66979 zl!343))))))

(assert (=> b!5201602 d!1678084))

(declare-fun b!5202418 () Bool)

(declare-fun e!3239455 () Bool)

(declare-fun e!3239453 () Bool)

(assert (=> b!5202418 (= e!3239455 e!3239453)))

(declare-fun c!896755 () Bool)

(assert (=> b!5202418 (= c!896755 ((_ is Star!14785) lt!2140975))))

(declare-fun bm!365784 () Bool)

(declare-fun call!365790 () Bool)

(declare-fun c!896756 () Bool)

(assert (=> bm!365784 (= call!365790 (validRegex!6521 (ite c!896756 (regTwo!30083 lt!2140975) (regTwo!30082 lt!2140975))))))

(declare-fun bm!365785 () Bool)

(declare-fun call!365791 () Bool)

(declare-fun call!365789 () Bool)

(assert (=> bm!365785 (= call!365791 call!365789)))

(declare-fun b!5202419 () Bool)

(declare-fun e!3239458 () Bool)

(assert (=> b!5202419 (= e!3239458 call!365790)))

(declare-fun b!5202420 () Bool)

(declare-fun res!2210191 () Bool)

(assert (=> b!5202420 (=> (not res!2210191) (not e!3239458))))

(assert (=> b!5202420 (= res!2210191 call!365791)))

(declare-fun e!3239452 () Bool)

(assert (=> b!5202420 (= e!3239452 e!3239458)))

(declare-fun b!5202421 () Bool)

(assert (=> b!5202421 (= e!3239453 e!3239452)))

(assert (=> b!5202421 (= c!896756 ((_ is Union!14785) lt!2140975))))

(declare-fun b!5202422 () Bool)

(declare-fun e!3239456 () Bool)

(assert (=> b!5202422 (= e!3239456 call!365789)))

(declare-fun b!5202423 () Bool)

(assert (=> b!5202423 (= e!3239453 e!3239456)))

(declare-fun res!2210193 () Bool)

(assert (=> b!5202423 (= res!2210193 (not (nullable!4954 (reg!15114 lt!2140975))))))

(assert (=> b!5202423 (=> (not res!2210193) (not e!3239456))))

(declare-fun b!5202424 () Bool)

(declare-fun e!3239457 () Bool)

(assert (=> b!5202424 (= e!3239457 call!365790)))

(declare-fun b!5202425 () Bool)

(declare-fun res!2210190 () Bool)

(declare-fun e!3239454 () Bool)

(assert (=> b!5202425 (=> res!2210190 e!3239454)))

(assert (=> b!5202425 (= res!2210190 (not ((_ is Concat!23630) lt!2140975)))))

(assert (=> b!5202425 (= e!3239452 e!3239454)))

(declare-fun b!5202426 () Bool)

(assert (=> b!5202426 (= e!3239454 e!3239457)))

(declare-fun res!2210192 () Bool)

(assert (=> b!5202426 (=> (not res!2210192) (not e!3239457))))

(assert (=> b!5202426 (= res!2210192 call!365791)))

(declare-fun d!1678094 () Bool)

(declare-fun res!2210194 () Bool)

(assert (=> d!1678094 (=> res!2210194 e!3239455)))

(assert (=> d!1678094 (= res!2210194 ((_ is ElementMatch!14785) lt!2140975))))

(assert (=> d!1678094 (= (validRegex!6521 lt!2140975) e!3239455)))

(declare-fun bm!365786 () Bool)

(assert (=> bm!365786 (= call!365789 (validRegex!6521 (ite c!896755 (reg!15114 lt!2140975) (ite c!896756 (regOne!30083 lt!2140975) (regOne!30082 lt!2140975)))))))

(assert (= (and d!1678094 (not res!2210194)) b!5202418))

(assert (= (and b!5202418 c!896755) b!5202423))

(assert (= (and b!5202418 (not c!896755)) b!5202421))

(assert (= (and b!5202423 res!2210193) b!5202422))

(assert (= (and b!5202421 c!896756) b!5202420))

(assert (= (and b!5202421 (not c!896756)) b!5202425))

(assert (= (and b!5202420 res!2210191) b!5202419))

(assert (= (and b!5202425 (not res!2210190)) b!5202426))

(assert (= (and b!5202426 res!2210192) b!5202424))

(assert (= (or b!5202419 b!5202424) bm!365784))

(assert (= (or b!5202420 b!5202426) bm!365785))

(assert (= (or b!5202422 bm!365785) bm!365786))

(declare-fun m!6254540 () Bool)

(assert (=> bm!365784 m!6254540))

(declare-fun m!6254542 () Bool)

(assert (=> b!5202423 m!6254542))

(declare-fun m!6254544 () Bool)

(assert (=> bm!365786 m!6254544))

(assert (=> d!1677738 d!1678094))

(assert (=> d!1677738 d!1677802))

(assert (=> d!1677738 d!1677808))

(declare-fun bs!1209468 () Bool)

(declare-fun d!1678096 () Bool)

(assert (= bs!1209468 (and d!1678096 d!1677892)))

(declare-fun lambda!260694 () Int)

(assert (=> bs!1209468 (= lambda!260694 lambda!260670)))

(assert (=> d!1678096 (= (nullableZipper!1217 lt!2140962) (exists!1953 lt!2140962 lambda!260694))))

(declare-fun bs!1209469 () Bool)

(assert (= bs!1209469 d!1678096))

(declare-fun m!6254546 () Bool)

(assert (=> bs!1209469 m!6254546))

(assert (=> b!5201331 d!1678096))

(declare-fun d!1678098 () Bool)

(assert (=> d!1678098 (= (isEmpty!32438 (t!373807 (unfocusZipperList!227 zl!343))) ((_ is Nil!60530) (t!373807 (unfocusZipperList!227 zl!343))))))

(assert (=> b!5201696 d!1678098))

(assert (=> bs!1209335 d!1677838))

(declare-fun b!5202427 () Bool)

(declare-fun e!3239460 () (InoxSet Context!8338))

(assert (=> b!5202427 (= e!3239460 ((as const (Array Context!8338 Bool)) false))))

(declare-fun b!5202429 () Bool)

(declare-fun e!3239464 () (InoxSet Context!8338))

(declare-fun e!3239463 () (InoxSet Context!8338))

(assert (=> b!5202429 (= e!3239464 e!3239463)))

(declare-fun c!896760 () Bool)

(assert (=> b!5202429 (= c!896760 ((_ is Concat!23630) (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun b!5202430 () Bool)

(declare-fun call!365792 () (InoxSet Context!8338))

(assert (=> b!5202430 (= e!3239460 call!365792)))

(declare-fun b!5202431 () Bool)

(declare-fun e!3239461 () (InoxSet Context!8338))

(declare-fun call!365795 () (InoxSet Context!8338))

(declare-fun call!365793 () (InoxSet Context!8338))

(assert (=> b!5202431 (= e!3239461 ((_ map or) call!365795 call!365793))))

(declare-fun bm!365787 () Bool)

(declare-fun c!896758 () Bool)

(declare-fun call!365794 () List!60654)

(assert (=> bm!365787 (= call!365793 (derivationStepZipperDown!233 (ite c!896758 (regTwo!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343))))) (ite c!896758 (Context!8339 (t!373807 (exprs!4669 (h!66979 zl!343)))) (Context!8339 call!365794)) (h!66980 s!2326)))))

(declare-fun b!5202432 () Bool)

(declare-fun e!3239462 () Bool)

(assert (=> b!5202432 (= e!3239462 (nullable!4954 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343))))))))

(declare-fun c!896757 () Bool)

(declare-fun bm!365788 () Bool)

(assert (=> bm!365788 (= call!365794 ($colon$colon!1267 (exprs!4669 (Context!8339 (t!373807 (exprs!4669 (h!66979 zl!343))))) (ite (or c!896757 c!896760) (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (h!66978 (exprs!4669 (h!66979 zl!343))))))))

(declare-fun b!5202433 () Bool)

(assert (=> b!5202433 (= e!3239463 call!365792)))

(declare-fun call!365796 () List!60654)

(declare-fun bm!365789 () Bool)

(assert (=> bm!365789 (= call!365795 (derivationStepZipperDown!233 (ite c!896758 (regOne!30083 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896757 (regTwo!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (ite c!896760 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343)))) (reg!15114 (h!66978 (exprs!4669 (h!66979 zl!343))))))) (ite (or c!896758 c!896757) (Context!8339 (t!373807 (exprs!4669 (h!66979 zl!343)))) (Context!8339 call!365796)) (h!66980 s!2326)))))

(declare-fun b!5202434 () Bool)

(declare-fun e!3239459 () (InoxSet Context!8338))

(assert (=> b!5202434 (= e!3239459 e!3239461)))

(assert (=> b!5202434 (= c!896758 ((_ is Union!14785) (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun b!5202435 () Bool)

(declare-fun c!896761 () Bool)

(assert (=> b!5202435 (= c!896761 ((_ is Star!14785) (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(assert (=> b!5202435 (= e!3239463 e!3239460)))

(declare-fun bm!365790 () Bool)

(declare-fun call!365797 () (InoxSet Context!8338))

(assert (=> bm!365790 (= call!365797 call!365795)))

(declare-fun bm!365791 () Bool)

(assert (=> bm!365791 (= call!365796 call!365794)))

(declare-fun d!1678100 () Bool)

(declare-fun c!896759 () Bool)

(assert (=> d!1678100 (= c!896759 (and ((_ is ElementMatch!14785) (h!66978 (exprs!4669 (h!66979 zl!343)))) (= (c!896412 (h!66978 (exprs!4669 (h!66979 zl!343)))) (h!66980 s!2326))))))

(assert (=> d!1678100 (= (derivationStepZipperDown!233 (h!66978 (exprs!4669 (h!66979 zl!343))) (Context!8339 (t!373807 (exprs!4669 (h!66979 zl!343)))) (h!66980 s!2326)) e!3239459)))

(declare-fun b!5202428 () Bool)

(assert (=> b!5202428 (= e!3239464 ((_ map or) call!365793 call!365797))))

(declare-fun bm!365792 () Bool)

(assert (=> bm!365792 (= call!365792 call!365797)))

(declare-fun b!5202436 () Bool)

(assert (=> b!5202436 (= e!3239459 (store ((as const (Array Context!8338 Bool)) false) (Context!8339 (t!373807 (exprs!4669 (h!66979 zl!343)))) true))))

(declare-fun b!5202437 () Bool)

(assert (=> b!5202437 (= c!896757 e!3239462)))

(declare-fun res!2210195 () Bool)

(assert (=> b!5202437 (=> (not res!2210195) (not e!3239462))))

(assert (=> b!5202437 (= res!2210195 ((_ is Concat!23630) (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(assert (=> b!5202437 (= e!3239461 e!3239464)))

(assert (= (and d!1678100 c!896759) b!5202436))

(assert (= (and d!1678100 (not c!896759)) b!5202434))

(assert (= (and b!5202434 c!896758) b!5202431))

(assert (= (and b!5202434 (not c!896758)) b!5202437))

(assert (= (and b!5202437 res!2210195) b!5202432))

(assert (= (and b!5202437 c!896757) b!5202428))

(assert (= (and b!5202437 (not c!896757)) b!5202429))

(assert (= (and b!5202429 c!896760) b!5202433))

(assert (= (and b!5202429 (not c!896760)) b!5202435))

(assert (= (and b!5202435 c!896761) b!5202430))

(assert (= (and b!5202435 (not c!896761)) b!5202427))

(assert (= (or b!5202433 b!5202430) bm!365791))

(assert (= (or b!5202433 b!5202430) bm!365792))

(assert (= (or b!5202428 bm!365791) bm!365788))

(assert (= (or b!5202428 bm!365792) bm!365790))

(assert (= (or b!5202431 b!5202428) bm!365787))

(assert (= (or b!5202431 bm!365790) bm!365789))

(declare-fun m!6254548 () Bool)

(assert (=> bm!365788 m!6254548))

(declare-fun m!6254550 () Bool)

(assert (=> bm!365789 m!6254550))

(assert (=> b!5202432 m!6254030))

(declare-fun m!6254552 () Bool)

(assert (=> b!5202436 m!6254552))

(declare-fun m!6254554 () Bool)

(assert (=> bm!365787 m!6254554))

(assert (=> bm!365662 d!1678100))

(assert (=> d!1677766 d!1677976))

(declare-fun d!1678102 () Bool)

(assert (=> d!1678102 (= (isUnion!194 lt!2141026) ((_ is Union!14785) lt!2141026))))

(assert (=> b!5201694 d!1678102))

(declare-fun b!5202438 () Bool)

(declare-fun e!3239466 () Bool)

(assert (=> b!5202438 (= e!3239466 (nullable!4954 (h!66978 (exprs!4669 (Context!8339 (t!373807 (exprs!4669 (h!66979 zl!343))))))))))

(declare-fun b!5202439 () Bool)

(declare-fun e!3239465 () (InoxSet Context!8338))

(declare-fun call!365798 () (InoxSet Context!8338))

(assert (=> b!5202439 (= e!3239465 call!365798)))

(declare-fun bm!365793 () Bool)

(assert (=> bm!365793 (= call!365798 (derivationStepZipperDown!233 (h!66978 (exprs!4669 (Context!8339 (t!373807 (exprs!4669 (h!66979 zl!343)))))) (Context!8339 (t!373807 (exprs!4669 (Context!8339 (t!373807 (exprs!4669 (h!66979 zl!343))))))) (h!66980 s!2326)))))

(declare-fun b!5202441 () Bool)

(declare-fun e!3239467 () (InoxSet Context!8338))

(assert (=> b!5202441 (= e!3239467 ((_ map or) call!365798 (derivationStepZipperUp!157 (Context!8339 (t!373807 (exprs!4669 (Context!8339 (t!373807 (exprs!4669 (h!66979 zl!343))))))) (h!66980 s!2326))))))

(declare-fun b!5202442 () Bool)

(assert (=> b!5202442 (= e!3239467 e!3239465)))

(declare-fun c!896762 () Bool)

(assert (=> b!5202442 (= c!896762 ((_ is Cons!60530) (exprs!4669 (Context!8339 (t!373807 (exprs!4669 (h!66979 zl!343)))))))))

(declare-fun b!5202440 () Bool)

(assert (=> b!5202440 (= e!3239465 ((as const (Array Context!8338 Bool)) false))))

(declare-fun d!1678104 () Bool)

(declare-fun c!896763 () Bool)

(assert (=> d!1678104 (= c!896763 e!3239466)))

(declare-fun res!2210196 () Bool)

(assert (=> d!1678104 (=> (not res!2210196) (not e!3239466))))

(assert (=> d!1678104 (= res!2210196 ((_ is Cons!60530) (exprs!4669 (Context!8339 (t!373807 (exprs!4669 (h!66979 zl!343)))))))))

(assert (=> d!1678104 (= (derivationStepZipperUp!157 (Context!8339 (t!373807 (exprs!4669 (h!66979 zl!343)))) (h!66980 s!2326)) e!3239467)))

(assert (= (and d!1678104 res!2210196) b!5202438))

(assert (= (and d!1678104 c!896763) b!5202441))

(assert (= (and d!1678104 (not c!896763)) b!5202442))

(assert (= (and b!5202442 c!896762) b!5202439))

(assert (= (and b!5202442 (not c!896762)) b!5202440))

(assert (= (or b!5202441 b!5202439) bm!365793))

(declare-fun m!6254556 () Bool)

(assert (=> b!5202438 m!6254556))

(declare-fun m!6254558 () Bool)

(assert (=> bm!365793 m!6254558))

(declare-fun m!6254560 () Bool)

(assert (=> b!5202441 m!6254560))

(assert (=> b!5201862 d!1678104))

(declare-fun d!1678106 () Bool)

(assert (=> d!1678106 (= (isEmpty!32442 (findConcatSeparation!1310 (regOne!30082 r!7292) (regTwo!30082 r!7292) Nil!60532 s!2326 s!2326)) (not ((_ is Some!14895) (findConcatSeparation!1310 (regOne!30082 r!7292) (regTwo!30082 r!7292) Nil!60532 s!2326 s!2326))))))

(assert (=> d!1677824 d!1678106))

(declare-fun d!1678108 () Bool)

(assert (=> d!1678108 (= (isDefined!11599 lt!2141036) (not (isEmpty!32442 lt!2141036)))))

(declare-fun bs!1209470 () Bool)

(assert (= bs!1209470 d!1678108))

(declare-fun m!6254562 () Bool)

(assert (=> bs!1209470 m!6254562))

(assert (=> d!1677810 d!1678108))

(declare-fun b!5202447 () Bool)

(declare-fun res!2210203 () Bool)

(declare-fun e!3239476 () Bool)

(assert (=> b!5202447 (=> (not res!2210203) (not e!3239476))))

(declare-fun call!365799 () Bool)

(assert (=> b!5202447 (= res!2210203 (not call!365799))))

(declare-fun b!5202448 () Bool)

(declare-fun res!2210201 () Bool)

(declare-fun e!3239475 () Bool)

(assert (=> b!5202448 (=> res!2210201 e!3239475)))

(assert (=> b!5202448 (= res!2210201 (not ((_ is ElementMatch!14785) (regOne!30082 r!7292))))))

(declare-fun e!3239474 () Bool)

(assert (=> b!5202448 (= e!3239474 e!3239475)))

(declare-fun b!5202449 () Bool)

(declare-fun lt!2141070 () Bool)

(assert (=> b!5202449 (= e!3239474 (not lt!2141070))))

(declare-fun b!5202450 () Bool)

(declare-fun e!3239473 () Bool)

(assert (=> b!5202450 (= e!3239473 (matchR!6970 (derivativeStep!4038 (regOne!30082 r!7292) (head!11153 Nil!60532)) (tail!10250 Nil!60532)))))

(declare-fun bm!365794 () Bool)

(assert (=> bm!365794 (= call!365799 (isEmpty!32440 Nil!60532))))

(declare-fun b!5202451 () Bool)

(declare-fun e!3239472 () Bool)

(assert (=> b!5202451 (= e!3239475 e!3239472)))

(declare-fun res!2210204 () Bool)

(assert (=> b!5202451 (=> (not res!2210204) (not e!3239472))))

(assert (=> b!5202451 (= res!2210204 (not lt!2141070))))

(declare-fun b!5202452 () Bool)

(declare-fun e!3239471 () Bool)

(assert (=> b!5202452 (= e!3239472 e!3239471)))

(declare-fun res!2210206 () Bool)

(assert (=> b!5202452 (=> res!2210206 e!3239471)))

(assert (=> b!5202452 (= res!2210206 call!365799)))

(declare-fun b!5202453 () Bool)

(assert (=> b!5202453 (= e!3239473 (nullable!4954 (regOne!30082 r!7292)))))

(declare-fun b!5202454 () Bool)

(assert (=> b!5202454 (= e!3239476 (= (head!11153 Nil!60532) (c!896412 (regOne!30082 r!7292))))))

(declare-fun b!5202455 () Bool)

(declare-fun e!3239470 () Bool)

(assert (=> b!5202455 (= e!3239470 e!3239474)))

(declare-fun c!896766 () Bool)

(assert (=> b!5202455 (= c!896766 ((_ is EmptyLang!14785) (regOne!30082 r!7292)))))

(declare-fun b!5202456 () Bool)

(declare-fun res!2210202 () Bool)

(assert (=> b!5202456 (=> (not res!2210202) (not e!3239476))))

(assert (=> b!5202456 (= res!2210202 (isEmpty!32440 (tail!10250 Nil!60532)))))

(declare-fun b!5202457 () Bool)

(assert (=> b!5202457 (= e!3239471 (not (= (head!11153 Nil!60532) (c!896412 (regOne!30082 r!7292)))))))

(declare-fun b!5202458 () Bool)

(assert (=> b!5202458 (= e!3239470 (= lt!2141070 call!365799))))

(declare-fun b!5202459 () Bool)

(declare-fun res!2210208 () Bool)

(assert (=> b!5202459 (=> res!2210208 e!3239471)))

(assert (=> b!5202459 (= res!2210208 (not (isEmpty!32440 (tail!10250 Nil!60532))))))

(declare-fun b!5202460 () Bool)

(declare-fun res!2210207 () Bool)

(assert (=> b!5202460 (=> res!2210207 e!3239475)))

(assert (=> b!5202460 (= res!2210207 e!3239476)))

(declare-fun res!2210205 () Bool)

(assert (=> b!5202460 (=> (not res!2210205) (not e!3239476))))

(assert (=> b!5202460 (= res!2210205 lt!2141070)))

(declare-fun d!1678110 () Bool)

(assert (=> d!1678110 e!3239470))

(declare-fun c!896764 () Bool)

(assert (=> d!1678110 (= c!896764 ((_ is EmptyExpr!14785) (regOne!30082 r!7292)))))

(assert (=> d!1678110 (= lt!2141070 e!3239473)))

(declare-fun c!896765 () Bool)

(assert (=> d!1678110 (= c!896765 (isEmpty!32440 Nil!60532))))

(assert (=> d!1678110 (validRegex!6521 (regOne!30082 r!7292))))

(assert (=> d!1678110 (= (matchR!6970 (regOne!30082 r!7292) Nil!60532) lt!2141070)))

(assert (= (and d!1678110 c!896765) b!5202453))

(assert (= (and d!1678110 (not c!896765)) b!5202450))

(assert (= (and d!1678110 c!896764) b!5202458))

(assert (= (and d!1678110 (not c!896764)) b!5202455))

(assert (= (and b!5202455 c!896766) b!5202449))

(assert (= (and b!5202455 (not c!896766)) b!5202448))

(assert (= (and b!5202448 (not res!2210201)) b!5202460))

(assert (= (and b!5202460 res!2210205) b!5202447))

(assert (= (and b!5202447 res!2210203) b!5202456))

(assert (= (and b!5202456 res!2210202) b!5202454))

(assert (= (and b!5202460 (not res!2210207)) b!5202451))

(assert (= (and b!5202451 res!2210204) b!5202452))

(assert (= (and b!5202452 (not res!2210206)) b!5202459))

(assert (= (and b!5202459 (not res!2210208)) b!5202457))

(assert (= (or b!5202458 b!5202447 b!5202452) bm!365794))

(declare-fun m!6254564 () Bool)

(assert (=> b!5202457 m!6254564))

(declare-fun m!6254566 () Bool)

(assert (=> d!1678110 m!6254566))

(assert (=> d!1678110 m!6253994))

(assert (=> bm!365794 m!6254566))

(assert (=> b!5202454 m!6254564))

(assert (=> b!5202450 m!6254564))

(assert (=> b!5202450 m!6254564))

(declare-fun m!6254568 () Bool)

(assert (=> b!5202450 m!6254568))

(declare-fun m!6254570 () Bool)

(assert (=> b!5202450 m!6254570))

(assert (=> b!5202450 m!6254568))

(assert (=> b!5202450 m!6254570))

(declare-fun m!6254572 () Bool)

(assert (=> b!5202450 m!6254572))

(assert (=> b!5202453 m!6254226))

(assert (=> b!5202456 m!6254570))

(assert (=> b!5202456 m!6254570))

(declare-fun m!6254574 () Bool)

(assert (=> b!5202456 m!6254574))

(assert (=> b!5202459 m!6254570))

(assert (=> b!5202459 m!6254570))

(assert (=> b!5202459 m!6254574))

(assert (=> d!1677810 d!1678110))

(assert (=> d!1677810 d!1678002))

(declare-fun d!1678112 () Bool)

(assert (=> d!1678112 true))

(declare-fun setRes!33004 () Bool)

(assert (=> d!1678112 setRes!33004))

(declare-fun condSetEmpty!33004 () Bool)

(declare-fun res!2210215 () (InoxSet Context!8338))

(assert (=> d!1678112 (= condSetEmpty!33004 (= res!2210215 ((as const (Array Context!8338 Bool)) false)))))

(assert (=> d!1678112 (= (choose!38666 z!1189 lambda!260604) res!2210215)))

(declare-fun setIsEmpty!33004 () Bool)

(assert (=> setIsEmpty!33004 setRes!33004))

(declare-fun setNonEmpty!33004 () Bool)

(declare-fun e!3239481 () Bool)

(declare-fun setElem!33004 () Context!8338)

(declare-fun tp!1459032 () Bool)

(assert (=> setNonEmpty!33004 (= setRes!33004 (and tp!1459032 (inv!80209 setElem!33004) e!3239481))))

(declare-fun setRest!33004 () (InoxSet Context!8338))

(assert (=> setNonEmpty!33004 (= res!2210215 ((_ map or) (store ((as const (Array Context!8338 Bool)) false) setElem!33004 true) setRest!33004))))

(declare-fun b!5202467 () Bool)

(declare-fun tp!1459033 () Bool)

(assert (=> b!5202467 (= e!3239481 tp!1459033)))

(assert (= (and d!1678112 condSetEmpty!33004) setIsEmpty!33004))

(assert (= (and d!1678112 (not condSetEmpty!33004)) setNonEmpty!33004))

(assert (= setNonEmpty!33004 b!5202467))

(declare-fun m!6254576 () Bool)

(assert (=> setNonEmpty!33004 m!6254576))

(assert (=> d!1677836 d!1678112))

(assert (=> d!1677734 d!1677976))

(assert (=> b!5201600 d!1677752))

(declare-fun b!5202468 () Bool)

(declare-fun e!3239485 () Bool)

(declare-fun e!3239483 () Bool)

(assert (=> b!5202468 (= e!3239485 e!3239483)))

(declare-fun c!896767 () Bool)

(assert (=> b!5202468 (= c!896767 ((_ is Star!14785) (ite c!896433 (reg!15114 r!7292) (ite c!896434 (regOne!30083 r!7292) (regOne!30082 r!7292)))))))

(declare-fun bm!365795 () Bool)

(declare-fun c!896768 () Bool)

(declare-fun call!365801 () Bool)

(assert (=> bm!365795 (= call!365801 (validRegex!6521 (ite c!896768 (regTwo!30083 (ite c!896433 (reg!15114 r!7292) (ite c!896434 (regOne!30083 r!7292) (regOne!30082 r!7292)))) (regTwo!30082 (ite c!896433 (reg!15114 r!7292) (ite c!896434 (regOne!30083 r!7292) (regOne!30082 r!7292)))))))))

(declare-fun bm!365796 () Bool)

(declare-fun call!365802 () Bool)

(declare-fun call!365800 () Bool)

(assert (=> bm!365796 (= call!365802 call!365800)))

(declare-fun b!5202469 () Bool)

(declare-fun e!3239488 () Bool)

(assert (=> b!5202469 (= e!3239488 call!365801)))

(declare-fun b!5202470 () Bool)

(declare-fun res!2210217 () Bool)

(assert (=> b!5202470 (=> (not res!2210217) (not e!3239488))))

(assert (=> b!5202470 (= res!2210217 call!365802)))

(declare-fun e!3239482 () Bool)

(assert (=> b!5202470 (= e!3239482 e!3239488)))

(declare-fun b!5202471 () Bool)

(assert (=> b!5202471 (= e!3239483 e!3239482)))

(assert (=> b!5202471 (= c!896768 ((_ is Union!14785) (ite c!896433 (reg!15114 r!7292) (ite c!896434 (regOne!30083 r!7292) (regOne!30082 r!7292)))))))

(declare-fun b!5202472 () Bool)

(declare-fun e!3239486 () Bool)

(assert (=> b!5202472 (= e!3239486 call!365800)))

(declare-fun b!5202473 () Bool)

(assert (=> b!5202473 (= e!3239483 e!3239486)))

(declare-fun res!2210219 () Bool)

(assert (=> b!5202473 (= res!2210219 (not (nullable!4954 (reg!15114 (ite c!896433 (reg!15114 r!7292) (ite c!896434 (regOne!30083 r!7292) (regOne!30082 r!7292)))))))))

(assert (=> b!5202473 (=> (not res!2210219) (not e!3239486))))

(declare-fun b!5202474 () Bool)

(declare-fun e!3239487 () Bool)

(assert (=> b!5202474 (= e!3239487 call!365801)))

(declare-fun b!5202475 () Bool)

(declare-fun res!2210216 () Bool)

(declare-fun e!3239484 () Bool)

(assert (=> b!5202475 (=> res!2210216 e!3239484)))

(assert (=> b!5202475 (= res!2210216 (not ((_ is Concat!23630) (ite c!896433 (reg!15114 r!7292) (ite c!896434 (regOne!30083 r!7292) (regOne!30082 r!7292))))))))

(assert (=> b!5202475 (= e!3239482 e!3239484)))

(declare-fun b!5202476 () Bool)

(assert (=> b!5202476 (= e!3239484 e!3239487)))

(declare-fun res!2210218 () Bool)

(assert (=> b!5202476 (=> (not res!2210218) (not e!3239487))))

(assert (=> b!5202476 (= res!2210218 call!365802)))

(declare-fun d!1678114 () Bool)

(declare-fun res!2210220 () Bool)

(assert (=> d!1678114 (=> res!2210220 e!3239485)))

(assert (=> d!1678114 (= res!2210220 ((_ is ElementMatch!14785) (ite c!896433 (reg!15114 r!7292) (ite c!896434 (regOne!30083 r!7292) (regOne!30082 r!7292)))))))

(assert (=> d!1678114 (= (validRegex!6521 (ite c!896433 (reg!15114 r!7292) (ite c!896434 (regOne!30083 r!7292) (regOne!30082 r!7292)))) e!3239485)))

(declare-fun bm!365797 () Bool)

(assert (=> bm!365797 (= call!365800 (validRegex!6521 (ite c!896767 (reg!15114 (ite c!896433 (reg!15114 r!7292) (ite c!896434 (regOne!30083 r!7292) (regOne!30082 r!7292)))) (ite c!896768 (regOne!30083 (ite c!896433 (reg!15114 r!7292) (ite c!896434 (regOne!30083 r!7292) (regOne!30082 r!7292)))) (regOne!30082 (ite c!896433 (reg!15114 r!7292) (ite c!896434 (regOne!30083 r!7292) (regOne!30082 r!7292))))))))))

(assert (= (and d!1678114 (not res!2210220)) b!5202468))

(assert (= (and b!5202468 c!896767) b!5202473))

(assert (= (and b!5202468 (not c!896767)) b!5202471))

(assert (= (and b!5202473 res!2210219) b!5202472))

(assert (= (and b!5202471 c!896768) b!5202470))

(assert (= (and b!5202471 (not c!896768)) b!5202475))

(assert (= (and b!5202470 res!2210217) b!5202469))

(assert (= (and b!5202475 (not res!2210216)) b!5202476))

(assert (= (and b!5202476 res!2210218) b!5202474))

(assert (= (or b!5202469 b!5202474) bm!365795))

(assert (= (or b!5202470 b!5202476) bm!365796))

(assert (= (or b!5202472 bm!365796) bm!365797))

(declare-fun m!6254578 () Bool)

(assert (=> bm!365795 m!6254578))

(declare-fun m!6254580 () Bool)

(assert (=> b!5202473 m!6254580))

(declare-fun m!6254582 () Bool)

(assert (=> bm!365797 m!6254582))

(assert (=> bm!365589 d!1678114))

(declare-fun bs!1209471 () Bool)

(declare-fun d!1678116 () Bool)

(assert (= bs!1209471 (and d!1678116 d!1677808)))

(declare-fun lambda!260700 () Int)

(assert (=> bs!1209471 (= lambda!260700 lambda!260652)))

(declare-fun bs!1209473 () Bool)

(assert (= bs!1209473 (and d!1678116 d!1677740)))

(assert (=> bs!1209473 (= lambda!260700 lambda!260615)))

(declare-fun bs!1209475 () Bool)

(assert (= bs!1209475 (and d!1678116 d!1677800)))

(assert (=> bs!1209475 (= lambda!260700 lambda!260646)))

(declare-fun bs!1209476 () Bool)

(assert (= bs!1209476 (and d!1678116 d!1678042)))

(assert (=> bs!1209476 (= lambda!260700 lambda!260688)))

(declare-fun bs!1209478 () Bool)

(assert (= bs!1209478 (and d!1678116 d!1677802)))

(assert (=> bs!1209478 (= lambda!260700 lambda!260649)))

(declare-fun bs!1209480 () Bool)

(assert (= bs!1209480 (and d!1678116 d!1677792)))

(assert (=> bs!1209480 (= lambda!260700 lambda!260645)))

(declare-fun bs!1209481 () Bool)

(assert (= bs!1209481 (and d!1678116 b!5201188)))

(assert (=> bs!1209481 (= lambda!260700 lambda!260605)))

(assert (=> d!1678116 (= (inv!80209 (h!66979 (t!373808 zl!343))) (forall!14225 (exprs!4669 (h!66979 (t!373808 zl!343))) lambda!260700))))

(declare-fun bs!1209483 () Bool)

(assert (= bs!1209483 d!1678116))

(declare-fun m!6254584 () Bool)

(assert (=> bs!1209483 m!6254584))

(assert (=> b!5201899 d!1678116))

(declare-fun d!1678118 () Bool)

(assert (=> d!1678118 (= (isEmpty!32440 s!2326) ((_ is Nil!60532) s!2326))))

(assert (=> bm!365621 d!1678118))

(declare-fun b!5202477 () Bool)

(declare-fun res!2210223 () Bool)

(declare-fun e!3239495 () Bool)

(assert (=> b!5202477 (=> (not res!2210223) (not e!3239495))))

(declare-fun call!365803 () Bool)

(assert (=> b!5202477 (= res!2210223 (not call!365803))))

(declare-fun b!5202478 () Bool)

(declare-fun res!2210221 () Bool)

(declare-fun e!3239494 () Bool)

(assert (=> b!5202478 (=> res!2210221 e!3239494)))

(assert (=> b!5202478 (= res!2210221 (not ((_ is ElementMatch!14785) (regTwo!30082 r!7292))))))

(declare-fun e!3239493 () Bool)

(assert (=> b!5202478 (= e!3239493 e!3239494)))

(declare-fun b!5202479 () Bool)

(declare-fun lt!2141071 () Bool)

(assert (=> b!5202479 (= e!3239493 (not lt!2141071))))

(declare-fun b!5202480 () Bool)

(declare-fun e!3239492 () Bool)

(assert (=> b!5202480 (= e!3239492 (matchR!6970 (derivativeStep!4038 (regTwo!30082 r!7292) (head!11153 (_2!35287 (get!20795 lt!2141036)))) (tail!10250 (_2!35287 (get!20795 lt!2141036)))))))

(declare-fun bm!365798 () Bool)

(assert (=> bm!365798 (= call!365803 (isEmpty!32440 (_2!35287 (get!20795 lt!2141036))))))

(declare-fun b!5202481 () Bool)

(declare-fun e!3239491 () Bool)

(assert (=> b!5202481 (= e!3239494 e!3239491)))

(declare-fun res!2210224 () Bool)

(assert (=> b!5202481 (=> (not res!2210224) (not e!3239491))))

(assert (=> b!5202481 (= res!2210224 (not lt!2141071))))

(declare-fun b!5202482 () Bool)

(declare-fun e!3239490 () Bool)

(assert (=> b!5202482 (= e!3239491 e!3239490)))

(declare-fun res!2210226 () Bool)

(assert (=> b!5202482 (=> res!2210226 e!3239490)))

(assert (=> b!5202482 (= res!2210226 call!365803)))

(declare-fun b!5202483 () Bool)

(assert (=> b!5202483 (= e!3239492 (nullable!4954 (regTwo!30082 r!7292)))))

(declare-fun b!5202484 () Bool)

(assert (=> b!5202484 (= e!3239495 (= (head!11153 (_2!35287 (get!20795 lt!2141036))) (c!896412 (regTwo!30082 r!7292))))))

(declare-fun b!5202485 () Bool)

(declare-fun e!3239489 () Bool)

(assert (=> b!5202485 (= e!3239489 e!3239493)))

(declare-fun c!896771 () Bool)

(assert (=> b!5202485 (= c!896771 ((_ is EmptyLang!14785) (regTwo!30082 r!7292)))))

(declare-fun b!5202486 () Bool)

(declare-fun res!2210222 () Bool)

(assert (=> b!5202486 (=> (not res!2210222) (not e!3239495))))

(assert (=> b!5202486 (= res!2210222 (isEmpty!32440 (tail!10250 (_2!35287 (get!20795 lt!2141036)))))))

(declare-fun b!5202487 () Bool)

(assert (=> b!5202487 (= e!3239490 (not (= (head!11153 (_2!35287 (get!20795 lt!2141036))) (c!896412 (regTwo!30082 r!7292)))))))

(declare-fun b!5202488 () Bool)

(assert (=> b!5202488 (= e!3239489 (= lt!2141071 call!365803))))

(declare-fun b!5202489 () Bool)

(declare-fun res!2210228 () Bool)

(assert (=> b!5202489 (=> res!2210228 e!3239490)))

(assert (=> b!5202489 (= res!2210228 (not (isEmpty!32440 (tail!10250 (_2!35287 (get!20795 lt!2141036))))))))

(declare-fun b!5202490 () Bool)

(declare-fun res!2210227 () Bool)

(assert (=> b!5202490 (=> res!2210227 e!3239494)))

(assert (=> b!5202490 (= res!2210227 e!3239495)))

(declare-fun res!2210225 () Bool)

(assert (=> b!5202490 (=> (not res!2210225) (not e!3239495))))

(assert (=> b!5202490 (= res!2210225 lt!2141071)))

(declare-fun d!1678120 () Bool)

(assert (=> d!1678120 e!3239489))

(declare-fun c!896769 () Bool)

(assert (=> d!1678120 (= c!896769 ((_ is EmptyExpr!14785) (regTwo!30082 r!7292)))))

(assert (=> d!1678120 (= lt!2141071 e!3239492)))

(declare-fun c!896770 () Bool)

(assert (=> d!1678120 (= c!896770 (isEmpty!32440 (_2!35287 (get!20795 lt!2141036))))))

(assert (=> d!1678120 (validRegex!6521 (regTwo!30082 r!7292))))

(assert (=> d!1678120 (= (matchR!6970 (regTwo!30082 r!7292) (_2!35287 (get!20795 lt!2141036))) lt!2141071)))

(assert (= (and d!1678120 c!896770) b!5202483))

(assert (= (and d!1678120 (not c!896770)) b!5202480))

(assert (= (and d!1678120 c!896769) b!5202488))

(assert (= (and d!1678120 (not c!896769)) b!5202485))

(assert (= (and b!5202485 c!896771) b!5202479))

(assert (= (and b!5202485 (not c!896771)) b!5202478))

(assert (= (and b!5202478 (not res!2210221)) b!5202490))

(assert (= (and b!5202490 res!2210225) b!5202477))

(assert (= (and b!5202477 res!2210223) b!5202486))

(assert (= (and b!5202486 res!2210222) b!5202484))

(assert (= (and b!5202490 (not res!2210227)) b!5202481))

(assert (= (and b!5202481 res!2210224) b!5202482))

(assert (= (and b!5202482 (not res!2210226)) b!5202489))

(assert (= (and b!5202489 (not res!2210228)) b!5202487))

(assert (= (or b!5202488 b!5202477 b!5202482) bm!365798))

(declare-fun m!6254586 () Bool)

(assert (=> b!5202487 m!6254586))

(declare-fun m!6254588 () Bool)

(assert (=> d!1678120 m!6254588))

(declare-fun m!6254590 () Bool)

(assert (=> d!1678120 m!6254590))

(assert (=> bm!365798 m!6254588))

(assert (=> b!5202484 m!6254586))

(assert (=> b!5202480 m!6254586))

(assert (=> b!5202480 m!6254586))

(declare-fun m!6254592 () Bool)

(assert (=> b!5202480 m!6254592))

(declare-fun m!6254594 () Bool)

(assert (=> b!5202480 m!6254594))

(assert (=> b!5202480 m!6254592))

(assert (=> b!5202480 m!6254594))

(declare-fun m!6254596 () Bool)

(assert (=> b!5202480 m!6254596))

(declare-fun m!6254598 () Bool)

(assert (=> b!5202483 m!6254598))

(assert (=> b!5202486 m!6254594))

(assert (=> b!5202486 m!6254594))

(declare-fun m!6254600 () Bool)

(assert (=> b!5202486 m!6254600))

(assert (=> b!5202489 m!6254594))

(assert (=> b!5202489 m!6254594))

(assert (=> b!5202489 m!6254600))

(assert (=> b!5201785 d!1678120))

(assert (=> b!5201785 d!1677994))

(assert (=> d!1677782 d!1678118))

(assert (=> d!1677782 d!1677722))

(declare-fun b!5202491 () Bool)

(declare-fun res!2210231 () Bool)

(declare-fun e!3239502 () Bool)

(assert (=> b!5202491 (=> (not res!2210231) (not e!3239502))))

(declare-fun call!365804 () Bool)

(assert (=> b!5202491 (= res!2210231 (not call!365804))))

(declare-fun b!5202492 () Bool)

(declare-fun res!2210229 () Bool)

(declare-fun e!3239501 () Bool)

(assert (=> b!5202492 (=> res!2210229 e!3239501)))

(assert (=> b!5202492 (= res!2210229 (not ((_ is ElementMatch!14785) (regOne!30082 r!7292))))))

(declare-fun e!3239500 () Bool)

(assert (=> b!5202492 (= e!3239500 e!3239501)))

(declare-fun b!5202493 () Bool)

(declare-fun lt!2141072 () Bool)

(assert (=> b!5202493 (= e!3239500 (not lt!2141072))))

(declare-fun b!5202494 () Bool)

(declare-fun e!3239499 () Bool)

(assert (=> b!5202494 (= e!3239499 (matchR!6970 (derivativeStep!4038 (regOne!30082 r!7292) (head!11153 (_1!35287 (get!20795 lt!2141036)))) (tail!10250 (_1!35287 (get!20795 lt!2141036)))))))

(declare-fun bm!365799 () Bool)

(assert (=> bm!365799 (= call!365804 (isEmpty!32440 (_1!35287 (get!20795 lt!2141036))))))

(declare-fun b!5202495 () Bool)

(declare-fun e!3239498 () Bool)

(assert (=> b!5202495 (= e!3239501 e!3239498)))

(declare-fun res!2210232 () Bool)

(assert (=> b!5202495 (=> (not res!2210232) (not e!3239498))))

(assert (=> b!5202495 (= res!2210232 (not lt!2141072))))

(declare-fun b!5202496 () Bool)

(declare-fun e!3239497 () Bool)

(assert (=> b!5202496 (= e!3239498 e!3239497)))

(declare-fun res!2210234 () Bool)

(assert (=> b!5202496 (=> res!2210234 e!3239497)))

(assert (=> b!5202496 (= res!2210234 call!365804)))

(declare-fun b!5202497 () Bool)

(assert (=> b!5202497 (= e!3239499 (nullable!4954 (regOne!30082 r!7292)))))

(declare-fun b!5202498 () Bool)

(assert (=> b!5202498 (= e!3239502 (= (head!11153 (_1!35287 (get!20795 lt!2141036))) (c!896412 (regOne!30082 r!7292))))))

(declare-fun b!5202499 () Bool)

(declare-fun e!3239496 () Bool)

(assert (=> b!5202499 (= e!3239496 e!3239500)))

(declare-fun c!896774 () Bool)

(assert (=> b!5202499 (= c!896774 ((_ is EmptyLang!14785) (regOne!30082 r!7292)))))

(declare-fun b!5202500 () Bool)

(declare-fun res!2210230 () Bool)

(assert (=> b!5202500 (=> (not res!2210230) (not e!3239502))))

(assert (=> b!5202500 (= res!2210230 (isEmpty!32440 (tail!10250 (_1!35287 (get!20795 lt!2141036)))))))

(declare-fun b!5202501 () Bool)

(assert (=> b!5202501 (= e!3239497 (not (= (head!11153 (_1!35287 (get!20795 lt!2141036))) (c!896412 (regOne!30082 r!7292)))))))

(declare-fun b!5202502 () Bool)

(assert (=> b!5202502 (= e!3239496 (= lt!2141072 call!365804))))

(declare-fun b!5202503 () Bool)

(declare-fun res!2210236 () Bool)

(assert (=> b!5202503 (=> res!2210236 e!3239497)))

(assert (=> b!5202503 (= res!2210236 (not (isEmpty!32440 (tail!10250 (_1!35287 (get!20795 lt!2141036))))))))

(declare-fun b!5202504 () Bool)

(declare-fun res!2210235 () Bool)

(assert (=> b!5202504 (=> res!2210235 e!3239501)))

(assert (=> b!5202504 (= res!2210235 e!3239502)))

(declare-fun res!2210233 () Bool)

(assert (=> b!5202504 (=> (not res!2210233) (not e!3239502))))

(assert (=> b!5202504 (= res!2210233 lt!2141072)))

(declare-fun d!1678122 () Bool)

(assert (=> d!1678122 e!3239496))

(declare-fun c!896772 () Bool)

(assert (=> d!1678122 (= c!896772 ((_ is EmptyExpr!14785) (regOne!30082 r!7292)))))

(assert (=> d!1678122 (= lt!2141072 e!3239499)))

(declare-fun c!896773 () Bool)

(assert (=> d!1678122 (= c!896773 (isEmpty!32440 (_1!35287 (get!20795 lt!2141036))))))

(assert (=> d!1678122 (validRegex!6521 (regOne!30082 r!7292))))

(assert (=> d!1678122 (= (matchR!6970 (regOne!30082 r!7292) (_1!35287 (get!20795 lt!2141036))) lt!2141072)))

(assert (= (and d!1678122 c!896773) b!5202497))

(assert (= (and d!1678122 (not c!896773)) b!5202494))

(assert (= (and d!1678122 c!896772) b!5202502))

(assert (= (and d!1678122 (not c!896772)) b!5202499))

(assert (= (and b!5202499 c!896774) b!5202493))

(assert (= (and b!5202499 (not c!896774)) b!5202492))

(assert (= (and b!5202492 (not res!2210229)) b!5202504))

(assert (= (and b!5202504 res!2210233) b!5202491))

(assert (= (and b!5202491 res!2210231) b!5202500))

(assert (= (and b!5202500 res!2210230) b!5202498))

(assert (= (and b!5202504 (not res!2210235)) b!5202495))

(assert (= (and b!5202495 res!2210232) b!5202496))

(assert (= (and b!5202496 (not res!2210234)) b!5202503))

(assert (= (and b!5202503 (not res!2210236)) b!5202501))

(assert (= (or b!5202502 b!5202491 b!5202496) bm!365799))

(declare-fun m!6254602 () Bool)

(assert (=> b!5202501 m!6254602))

(declare-fun m!6254604 () Bool)

(assert (=> d!1678122 m!6254604))

(assert (=> d!1678122 m!6253994))

(assert (=> bm!365799 m!6254604))

(assert (=> b!5202498 m!6254602))

(assert (=> b!5202494 m!6254602))

(assert (=> b!5202494 m!6254602))

(declare-fun m!6254606 () Bool)

(assert (=> b!5202494 m!6254606))

(declare-fun m!6254608 () Bool)

(assert (=> b!5202494 m!6254608))

(assert (=> b!5202494 m!6254606))

(assert (=> b!5202494 m!6254608))

(declare-fun m!6254610 () Bool)

(assert (=> b!5202494 m!6254610))

(assert (=> b!5202497 m!6254226))

(assert (=> b!5202500 m!6254608))

(assert (=> b!5202500 m!6254608))

(declare-fun m!6254612 () Bool)

(assert (=> b!5202500 m!6254612))

(assert (=> b!5202503 m!6254608))

(assert (=> b!5202503 m!6254608))

(assert (=> b!5202503 m!6254612))

(assert (=> b!5201787 d!1678122))

(assert (=> b!5201787 d!1677994))

(assert (=> b!5201744 d!1677792))

(declare-fun bs!1209489 () Bool)

(declare-fun d!1678124 () Bool)

(assert (= bs!1209489 (and d!1678124 d!1677740)))

(declare-fun lambda!260702 () Int)

(assert (=> bs!1209489 (= lambda!260702 lambda!260615)))

(declare-fun bs!1209490 () Bool)

(assert (= bs!1209490 (and d!1678124 d!1677800)))

(assert (=> bs!1209490 (= lambda!260702 lambda!260646)))

(declare-fun bs!1209491 () Bool)

(assert (= bs!1209491 (and d!1678124 d!1678042)))

(assert (=> bs!1209491 (= lambda!260702 lambda!260688)))

(declare-fun bs!1209492 () Bool)

(assert (= bs!1209492 (and d!1678124 d!1677802)))

(assert (=> bs!1209492 (= lambda!260702 lambda!260649)))

(declare-fun bs!1209493 () Bool)

(assert (= bs!1209493 (and d!1678124 d!1677792)))

(assert (=> bs!1209493 (= lambda!260702 lambda!260645)))

(declare-fun bs!1209494 () Bool)

(assert (= bs!1209494 (and d!1678124 b!5201188)))

(assert (=> bs!1209494 (= lambda!260702 lambda!260605)))

(declare-fun bs!1209495 () Bool)

(assert (= bs!1209495 (and d!1678124 d!1678116)))

(assert (=> bs!1209495 (= lambda!260702 lambda!260700)))

(declare-fun bs!1209496 () Bool)

(assert (= bs!1209496 (and d!1678124 d!1677808)))

(assert (=> bs!1209496 (= lambda!260702 lambda!260652)))

(declare-fun lt!2141073 () List!60654)

(assert (=> d!1678124 (forall!14225 lt!2141073 lambda!260702)))

(declare-fun e!3239503 () List!60654)

(assert (=> d!1678124 (= lt!2141073 e!3239503)))

(declare-fun c!896775 () Bool)

(assert (=> d!1678124 (= c!896775 ((_ is Cons!60531) (t!373808 zl!343)))))

(assert (=> d!1678124 (= (unfocusZipperList!227 (t!373808 zl!343)) lt!2141073)))

(declare-fun b!5202505 () Bool)

(assert (=> b!5202505 (= e!3239503 (Cons!60530 (generalisedConcat!454 (exprs!4669 (h!66979 (t!373808 zl!343)))) (unfocusZipperList!227 (t!373808 (t!373808 zl!343)))))))

(declare-fun b!5202506 () Bool)

(assert (=> b!5202506 (= e!3239503 Nil!60530)))

(assert (= (and d!1678124 c!896775) b!5202505))

(assert (= (and d!1678124 (not c!896775)) b!5202506))

(declare-fun m!6254618 () Bool)

(assert (=> d!1678124 m!6254618))

(declare-fun m!6254620 () Bool)

(assert (=> b!5202505 m!6254620))

(declare-fun m!6254622 () Bool)

(assert (=> b!5202505 m!6254622))

(assert (=> b!5201744 d!1678124))

(declare-fun d!1678128 () Bool)

(declare-fun c!896776 () Bool)

(assert (=> d!1678128 (= c!896776 (isEmpty!32440 (tail!10250 (t!373809 s!2326))))))

(declare-fun e!3239504 () Bool)

(assert (=> d!1678128 (= (matchZipper!1029 (derivationStepZipper!1061 ((_ map or) lt!2140957 lt!2140962) (head!11153 (t!373809 s!2326))) (tail!10250 (t!373809 s!2326))) e!3239504)))

(declare-fun b!5202507 () Bool)

(assert (=> b!5202507 (= e!3239504 (nullableZipper!1217 (derivationStepZipper!1061 ((_ map or) lt!2140957 lt!2140962) (head!11153 (t!373809 s!2326)))))))

(declare-fun b!5202508 () Bool)

(assert (=> b!5202508 (= e!3239504 (matchZipper!1029 (derivationStepZipper!1061 (derivationStepZipper!1061 ((_ map or) lt!2140957 lt!2140962) (head!11153 (t!373809 s!2326))) (head!11153 (tail!10250 (t!373809 s!2326)))) (tail!10250 (tail!10250 (t!373809 s!2326)))))))

(assert (= (and d!1678128 c!896776) b!5202507))

(assert (= (and d!1678128 (not c!896776)) b!5202508))

(assert (=> d!1678128 m!6253750))

(assert (=> d!1678128 m!6254102))

(assert (=> b!5202507 m!6253808))

(declare-fun m!6254624 () Bool)

(assert (=> b!5202507 m!6254624))

(assert (=> b!5202508 m!6253750))

(assert (=> b!5202508 m!6254106))

(assert (=> b!5202508 m!6253808))

(assert (=> b!5202508 m!6254106))

(declare-fun m!6254626 () Bool)

(assert (=> b!5202508 m!6254626))

(assert (=> b!5202508 m!6253750))

(assert (=> b!5202508 m!6254110))

(assert (=> b!5202508 m!6254626))

(assert (=> b!5202508 m!6254110))

(declare-fun m!6254628 () Bool)

(assert (=> b!5202508 m!6254628))

(assert (=> b!5201385 d!1678128))

(declare-fun bs!1209497 () Bool)

(declare-fun d!1678132 () Bool)

(assert (= bs!1209497 (and d!1678132 b!5201198)))

(declare-fun lambda!260703 () Int)

(assert (=> bs!1209497 (= (= (head!11153 (t!373809 s!2326)) (h!66980 s!2326)) (= lambda!260703 lambda!260604))))

(declare-fun bs!1209498 () Bool)

(assert (= bs!1209498 (and d!1678132 d!1677866)))

(assert (=> bs!1209498 (= lambda!260703 lambda!260667)))

(declare-fun bs!1209499 () Bool)

(assert (= bs!1209499 (and d!1678132 d!1677954)))

(assert (=> bs!1209499 (= lambda!260703 lambda!260678)))

(assert (=> d!1678132 true))

(assert (=> d!1678132 (= (derivationStepZipper!1061 ((_ map or) lt!2140957 lt!2140962) (head!11153 (t!373809 s!2326))) (flatMap!512 ((_ map or) lt!2140957 lt!2140962) lambda!260703))))

(declare-fun bs!1209500 () Bool)

(assert (= bs!1209500 d!1678132))

(declare-fun m!6254636 () Bool)

(assert (=> bs!1209500 m!6254636))

(assert (=> b!5201385 d!1678132))

(assert (=> b!5201385 d!1677868))

(assert (=> b!5201385 d!1677870))

(declare-fun d!1678136 () Bool)

(assert (=> d!1678136 (= (nullable!4954 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343))))) (nullableFct!1369 (regOne!30082 (h!66978 (exprs!4669 (h!66979 zl!343))))))))

(declare-fun bs!1209501 () Bool)

(assert (= bs!1209501 d!1678136))

(declare-fun m!6254638 () Bool)

(assert (=> bs!1209501 m!6254638))

(assert (=> b!5201833 d!1678136))

(declare-fun d!1678138 () Bool)

(assert (=> d!1678138 (= (nullable!4954 (reg!15114 r!7292)) (nullableFct!1369 (reg!15114 r!7292)))))

(declare-fun bs!1209502 () Bool)

(assert (= bs!1209502 d!1678138))

(declare-fun m!6254640 () Bool)

(assert (=> bs!1209502 m!6254640))

(assert (=> b!5201286 d!1678138))

(declare-fun d!1678140 () Bool)

(assert (=> d!1678140 true))

(assert (=> d!1678140 true))

(declare-fun res!2210239 () Bool)

(assert (=> d!1678140 (= (choose!38662 lambda!260603) res!2210239)))

(assert (=> d!1677818 d!1678140))

(declare-fun d!1678142 () Bool)

(declare-fun res!2210240 () Bool)

(declare-fun e!3239514 () Bool)

(assert (=> d!1678142 (=> res!2210240 e!3239514)))

(assert (=> d!1678142 (= res!2210240 ((_ is Nil!60530) (exprs!4669 setElem!32992)))))

(assert (=> d!1678142 (= (forall!14225 (exprs!4669 setElem!32992) lambda!260615) e!3239514)))

(declare-fun b!5202525 () Bool)

(declare-fun e!3239515 () Bool)

(assert (=> b!5202525 (= e!3239514 e!3239515)))

(declare-fun res!2210241 () Bool)

(assert (=> b!5202525 (=> (not res!2210241) (not e!3239515))))

(assert (=> b!5202525 (= res!2210241 (dynLambda!23912 lambda!260615 (h!66978 (exprs!4669 setElem!32992))))))

(declare-fun b!5202526 () Bool)

(assert (=> b!5202526 (= e!3239515 (forall!14225 (t!373807 (exprs!4669 setElem!32992)) lambda!260615))))

(assert (= (and d!1678142 (not res!2210240)) b!5202525))

(assert (= (and b!5202525 res!2210241) b!5202526))

(declare-fun b_lambda!201323 () Bool)

(assert (=> (not b_lambda!201323) (not b!5202525)))

(declare-fun m!6254642 () Bool)

(assert (=> b!5202525 m!6254642))

(declare-fun m!6254644 () Bool)

(assert (=> b!5202526 m!6254644))

(assert (=> d!1677740 d!1678142))

(assert (=> bm!365617 d!1678118))

(declare-fun d!1678144 () Bool)

(assert (=> d!1678144 (= (Exists!1966 lambda!260660) (choose!38662 lambda!260660))))

(declare-fun bs!1209503 () Bool)

(assert (= bs!1209503 d!1678144))

(declare-fun m!6254646 () Bool)

(assert (=> bs!1209503 m!6254646))

(assert (=> d!1677822 d!1678144))

(declare-fun d!1678146 () Bool)

(assert (=> d!1678146 (= (Exists!1966 lambda!260661) (choose!38662 lambda!260661))))

(declare-fun bs!1209504 () Bool)

(assert (= bs!1209504 d!1678146))

(declare-fun m!6254648 () Bool)

(assert (=> bs!1209504 m!6254648))

(assert (=> d!1677822 d!1678146))

(declare-fun bs!1209511 () Bool)

(declare-fun d!1678148 () Bool)

(assert (= bs!1209511 (and d!1678148 d!1677822)))

(declare-fun lambda!260709 () Int)

(assert (=> bs!1209511 (= lambda!260709 lambda!260660)))

(declare-fun bs!1209512 () Bool)

(assert (= bs!1209512 (and d!1678148 b!5201470)))

(assert (=> bs!1209512 (not (= lambda!260709 lambda!260630))))

(declare-fun bs!1209513 () Bool)

(assert (= bs!1209513 (and d!1678148 d!1678012)))

(assert (=> bs!1209513 (= lambda!260709 lambda!260685)))

(declare-fun bs!1209514 () Bool)

(assert (= bs!1209514 (and d!1678148 b!5201207)))

(assert (=> bs!1209514 (= lambda!260709 lambda!260602)))

(declare-fun bs!1209515 () Bool)

(assert (= bs!1209515 (and d!1678148 b!5202270)))

(assert (=> bs!1209515 (not (= lambda!260709 lambda!260687))))

(declare-fun bs!1209516 () Bool)

(assert (= bs!1209516 (and d!1678148 b!5201462)))

(assert (=> bs!1209516 (not (= lambda!260709 lambda!260628))))

(assert (=> bs!1209511 (not (= lambda!260709 lambda!260661))))

(declare-fun bs!1209517 () Bool)

(assert (= bs!1209517 (and d!1678148 d!1677820)))

(assert (=> bs!1209517 (= lambda!260709 lambda!260655)))

(assert (=> bs!1209514 (not (= lambda!260709 lambda!260603))))

(declare-fun bs!1209518 () Bool)

(assert (= bs!1209518 (and d!1678148 b!5202401)))

(assert (=> bs!1209518 (not (= lambda!260709 lambda!260692))))

(declare-fun bs!1209519 () Bool)

(assert (= bs!1209519 (and d!1678148 b!5202264)))

(assert (=> bs!1209519 (not (= lambda!260709 lambda!260686))))

(declare-fun bs!1209520 () Bool)

(assert (= bs!1209520 (and d!1678148 b!5202395)))

(assert (=> bs!1209520 (not (= lambda!260709 lambda!260690))))

(assert (=> d!1678148 true))

(assert (=> d!1678148 true))

(assert (=> d!1678148 true))

(declare-fun lambda!260710 () Int)

(assert (=> bs!1209511 (not (= lambda!260710 lambda!260660))))

(assert (=> bs!1209512 (= lambda!260710 lambda!260630)))

(declare-fun bs!1209521 () Bool)

(assert (= bs!1209521 d!1678148))

(assert (=> bs!1209521 (not (= lambda!260710 lambda!260709))))

(assert (=> bs!1209513 (not (= lambda!260710 lambda!260685))))

(assert (=> bs!1209514 (not (= lambda!260710 lambda!260602))))

(assert (=> bs!1209515 (= (and (= (regOne!30082 r!7292) (regOne!30082 (regOne!30083 r!7292))) (= (regTwo!30082 r!7292) (regTwo!30082 (regOne!30083 r!7292)))) (= lambda!260710 lambda!260687))))

(assert (=> bs!1209516 (not (= lambda!260710 lambda!260628))))

(assert (=> bs!1209511 (= lambda!260710 lambda!260661)))

(assert (=> bs!1209517 (not (= lambda!260710 lambda!260655))))

(assert (=> bs!1209514 (= lambda!260710 lambda!260603)))

(assert (=> bs!1209518 (= (and (= (regOne!30082 r!7292) (regOne!30082 (regTwo!30083 r!7292))) (= (regTwo!30082 r!7292) (regTwo!30082 (regTwo!30083 r!7292)))) (= lambda!260710 lambda!260692))))

(assert (=> bs!1209519 (not (= lambda!260710 lambda!260686))))

(assert (=> bs!1209520 (not (= lambda!260710 lambda!260690))))

(assert (=> d!1678148 true))

(assert (=> d!1678148 true))

(assert (=> d!1678148 true))

(assert (=> d!1678148 (= (Exists!1966 lambda!260709) (Exists!1966 lambda!260710))))

(assert (=> d!1678148 true))

(declare-fun _$90!970 () Unit!152406)

(assert (=> d!1678148 (= (choose!38664 (regOne!30082 r!7292) (regTwo!30082 r!7292) s!2326) _$90!970)))

(declare-fun m!6254732 () Bool)

(assert (=> bs!1209521 m!6254732))

(declare-fun m!6254734 () Bool)

(assert (=> bs!1209521 m!6254734))

(assert (=> d!1677822 d!1678148))

(assert (=> d!1677822 d!1678002))

(assert (=> b!5201553 d!1678080))

(assert (=> b!5201553 d!1677938))

(declare-fun b!5202569 () Bool)

(declare-fun res!2210273 () Bool)

(declare-fun e!3239551 () Bool)

(assert (=> b!5202569 (=> (not res!2210273) (not e!3239551))))

(declare-fun call!365812 () Bool)

(assert (=> b!5202569 (= res!2210273 (not call!365812))))

(declare-fun b!5202570 () Bool)

(declare-fun res!2210271 () Bool)

(declare-fun e!3239550 () Bool)

(assert (=> b!5202570 (=> res!2210271 e!3239550)))

(assert (=> b!5202570 (= res!2210271 (not ((_ is ElementMatch!14785) (regTwo!30082 r!7292))))))

(declare-fun e!3239549 () Bool)

(assert (=> b!5202570 (= e!3239549 e!3239550)))

(declare-fun b!5202571 () Bool)

(declare-fun lt!2141082 () Bool)

(assert (=> b!5202571 (= e!3239549 (not lt!2141082))))

(declare-fun b!5202572 () Bool)

(declare-fun e!3239548 () Bool)

(assert (=> b!5202572 (= e!3239548 (matchR!6970 (derivativeStep!4038 (regTwo!30082 r!7292) (head!11153 s!2326)) (tail!10250 s!2326)))))

(declare-fun bm!365807 () Bool)

(assert (=> bm!365807 (= call!365812 (isEmpty!32440 s!2326))))

(declare-fun b!5202573 () Bool)

(declare-fun e!3239547 () Bool)

(assert (=> b!5202573 (= e!3239550 e!3239547)))

(declare-fun res!2210274 () Bool)

(assert (=> b!5202573 (=> (not res!2210274) (not e!3239547))))

(assert (=> b!5202573 (= res!2210274 (not lt!2141082))))

(declare-fun b!5202574 () Bool)

(declare-fun e!3239546 () Bool)

(assert (=> b!5202574 (= e!3239547 e!3239546)))

(declare-fun res!2210276 () Bool)

(assert (=> b!5202574 (=> res!2210276 e!3239546)))

(assert (=> b!5202574 (= res!2210276 call!365812)))

(declare-fun b!5202575 () Bool)

(assert (=> b!5202575 (= e!3239548 (nullable!4954 (regTwo!30082 r!7292)))))

(declare-fun b!5202576 () Bool)

(assert (=> b!5202576 (= e!3239551 (= (head!11153 s!2326) (c!896412 (regTwo!30082 r!7292))))))

(declare-fun b!5202577 () Bool)

(declare-fun e!3239545 () Bool)

(assert (=> b!5202577 (= e!3239545 e!3239549)))

(declare-fun c!896791 () Bool)

(assert (=> b!5202577 (= c!896791 ((_ is EmptyLang!14785) (regTwo!30082 r!7292)))))

(declare-fun b!5202578 () Bool)

(declare-fun res!2210272 () Bool)

(assert (=> b!5202578 (=> (not res!2210272) (not e!3239551))))

(assert (=> b!5202578 (= res!2210272 (isEmpty!32440 (tail!10250 s!2326)))))

(declare-fun b!5202579 () Bool)

(assert (=> b!5202579 (= e!3239546 (not (= (head!11153 s!2326) (c!896412 (regTwo!30082 r!7292)))))))

(declare-fun b!5202580 () Bool)

(assert (=> b!5202580 (= e!3239545 (= lt!2141082 call!365812))))

(declare-fun b!5202581 () Bool)

(declare-fun res!2210278 () Bool)

(assert (=> b!5202581 (=> res!2210278 e!3239546)))

(assert (=> b!5202581 (= res!2210278 (not (isEmpty!32440 (tail!10250 s!2326))))))

(declare-fun b!5202582 () Bool)

(declare-fun res!2210277 () Bool)

(assert (=> b!5202582 (=> res!2210277 e!3239550)))

(assert (=> b!5202582 (= res!2210277 e!3239551)))

(declare-fun res!2210275 () Bool)

(assert (=> b!5202582 (=> (not res!2210275) (not e!3239551))))

(assert (=> b!5202582 (= res!2210275 lt!2141082)))

(declare-fun d!1678170 () Bool)

(assert (=> d!1678170 e!3239545))

(declare-fun c!896789 () Bool)

(assert (=> d!1678170 (= c!896789 ((_ is EmptyExpr!14785) (regTwo!30082 r!7292)))))

(assert (=> d!1678170 (= lt!2141082 e!3239548)))

(declare-fun c!896790 () Bool)

(assert (=> d!1678170 (= c!896790 (isEmpty!32440 s!2326))))

(assert (=> d!1678170 (validRegex!6521 (regTwo!30082 r!7292))))

(assert (=> d!1678170 (= (matchR!6970 (regTwo!30082 r!7292) s!2326) lt!2141082)))

(assert (= (and d!1678170 c!896790) b!5202575))

(assert (= (and d!1678170 (not c!896790)) b!5202572))

(assert (= (and d!1678170 c!896789) b!5202580))

(assert (= (and d!1678170 (not c!896789)) b!5202577))

(assert (= (and b!5202577 c!896791) b!5202571))

(assert (= (and b!5202577 (not c!896791)) b!5202570))

(assert (= (and b!5202570 (not res!2210271)) b!5202582))

(assert (= (and b!5202582 res!2210275) b!5202569))

(assert (= (and b!5202569 res!2210273) b!5202578))

(assert (= (and b!5202578 res!2210272) b!5202576))

(assert (= (and b!5202582 (not res!2210277)) b!5202573))

(assert (= (and b!5202573 res!2210274) b!5202574))

(assert (= (and b!5202574 (not res!2210276)) b!5202581))

(assert (= (and b!5202581 (not res!2210278)) b!5202579))

(assert (= (or b!5202580 b!5202569 b!5202574) bm!365807))

(assert (=> b!5202579 m!6253884))

(assert (=> d!1678170 m!6253868))

(assert (=> d!1678170 m!6254590))

(assert (=> bm!365807 m!6253868))

(assert (=> b!5202576 m!6253884))

(assert (=> b!5202572 m!6253884))

(assert (=> b!5202572 m!6253884))

(declare-fun m!6254736 () Bool)

(assert (=> b!5202572 m!6254736))

(assert (=> b!5202572 m!6253888))

(assert (=> b!5202572 m!6254736))

(assert (=> b!5202572 m!6253888))

(declare-fun m!6254738 () Bool)

(assert (=> b!5202572 m!6254738))

(assert (=> b!5202575 m!6254598))

(assert (=> b!5202578 m!6253888))

(assert (=> b!5202578 m!6253888))

(assert (=> b!5202578 m!6253894))

(assert (=> b!5202581 m!6253888))

(assert (=> b!5202581 m!6253888))

(assert (=> b!5202581 m!6253894))

(assert (=> b!5201791 d!1678170))

(declare-fun d!1678172 () Bool)

(assert (=> d!1678172 (= (isConcat!276 lt!2141016) ((_ is Concat!23630) lt!2141016))))

(assert (=> b!5201593 d!1678172))

(declare-fun b!5202597 () Bool)

(declare-fun e!3239565 () Bool)

(assert (=> b!5202597 (= e!3239565 (nullable!4954 (h!66978 (exprs!4669 (Context!8339 (t!373807 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343))))))))))))))

(declare-fun b!5202598 () Bool)

(declare-fun e!3239564 () (InoxSet Context!8338))

(declare-fun call!365817 () (InoxSet Context!8338))

(assert (=> b!5202598 (= e!3239564 call!365817)))

(declare-fun bm!365812 () Bool)

(assert (=> bm!365812 (= call!365817 (derivationStepZipperDown!233 (h!66978 (exprs!4669 (Context!8339 (t!373807 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))))) (Context!8339 (t!373807 (exprs!4669 (Context!8339 (t!373807 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343))))))))))) (h!66980 s!2326)))))

(declare-fun e!3239566 () (InoxSet Context!8338))

(declare-fun b!5202600 () Bool)

(assert (=> b!5202600 (= e!3239566 ((_ map or) call!365817 (derivationStepZipperUp!157 (Context!8339 (t!373807 (exprs!4669 (Context!8339 (t!373807 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343))))))))))) (h!66980 s!2326))))))

(declare-fun b!5202601 () Bool)

(assert (=> b!5202601 (= e!3239566 e!3239564)))

(declare-fun c!896794 () Bool)

(assert (=> b!5202601 (= c!896794 ((_ is Cons!60530) (exprs!4669 (Context!8339 (t!373807 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))))))))

(declare-fun b!5202599 () Bool)

(assert (=> b!5202599 (= e!3239564 ((as const (Array Context!8338 Bool)) false))))

(declare-fun d!1678174 () Bool)

(declare-fun c!896795 () Bool)

(assert (=> d!1678174 (= c!896795 e!3239565)))

(declare-fun res!2210289 () Bool)

(assert (=> d!1678174 (=> (not res!2210289) (not e!3239565))))

(assert (=> d!1678174 (= res!2210289 ((_ is Cons!60530) (exprs!4669 (Context!8339 (t!373807 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))))))))

(assert (=> d!1678174 (= (derivationStepZipperUp!157 (Context!8339 (t!373807 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))) (h!66980 s!2326)) e!3239566)))

(assert (= (and d!1678174 res!2210289) b!5202597))

(assert (= (and d!1678174 c!896795) b!5202600))

(assert (= (and d!1678174 (not c!896795)) b!5202601))

(assert (= (and b!5202601 c!896794) b!5202598))

(assert (= (and b!5202601 (not c!896794)) b!5202599))

(assert (= (or b!5202600 b!5202598) bm!365812))

(declare-fun m!6254740 () Bool)

(assert (=> b!5202597 m!6254740))

(declare-fun m!6254742 () Bool)

(assert (=> bm!365812 m!6254742))

(declare-fun m!6254744 () Bool)

(assert (=> b!5202600 m!6254744))

(assert (=> b!5201857 d!1678174))

(declare-fun bs!1209522 () Bool)

(declare-fun d!1678176 () Bool)

(assert (= bs!1209522 (and d!1678176 d!1677892)))

(declare-fun lambda!260711 () Int)

(assert (=> bs!1209522 (= lambda!260711 lambda!260670)))

(declare-fun bs!1209523 () Bool)

(assert (= bs!1209523 (and d!1678176 d!1678096)))

(assert (=> bs!1209523 (= lambda!260711 lambda!260694)))

(assert (=> d!1678176 (= (nullableZipper!1217 lt!2140957) (exists!1953 lt!2140957 lambda!260711))))

(declare-fun bs!1209524 () Bool)

(assert (= bs!1209524 d!1678176))

(declare-fun m!6254746 () Bool)

(assert (=> bs!1209524 m!6254746))

(assert (=> b!5201382 d!1678176))

(declare-fun d!1678178 () Bool)

(declare-fun res!2210290 () Bool)

(declare-fun e!3239567 () Bool)

(assert (=> d!1678178 (=> res!2210290 e!3239567)))

(assert (=> d!1678178 (= res!2210290 ((_ is Nil!60530) (exprs!4669 (h!66979 zl!343))))))

(assert (=> d!1678178 (= (forall!14225 (exprs!4669 (h!66979 zl!343)) lambda!260646) e!3239567)))

(declare-fun b!5202602 () Bool)

(declare-fun e!3239568 () Bool)

(assert (=> b!5202602 (= e!3239567 e!3239568)))

(declare-fun res!2210291 () Bool)

(assert (=> b!5202602 (=> (not res!2210291) (not e!3239568))))

(assert (=> b!5202602 (= res!2210291 (dynLambda!23912 lambda!260646 (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun b!5202603 () Bool)

(assert (=> b!5202603 (= e!3239568 (forall!14225 (t!373807 (exprs!4669 (h!66979 zl!343))) lambda!260646))))

(assert (= (and d!1678178 (not res!2210290)) b!5202602))

(assert (= (and b!5202602 res!2210291) b!5202603))

(declare-fun b_lambda!201325 () Bool)

(assert (=> (not b_lambda!201325) (not b!5202602)))

(declare-fun m!6254748 () Bool)

(assert (=> b!5202602 m!6254748))

(declare-fun m!6254750 () Bool)

(assert (=> b!5202603 m!6254750))

(assert (=> d!1677800 d!1678178))

(declare-fun d!1678180 () Bool)

(assert (=> d!1678180 (= (nullable!4954 (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))) (nullableFct!1369 (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))))))

(declare-fun bs!1209525 () Bool)

(assert (= bs!1209525 d!1678180))

(declare-fun m!6254752 () Bool)

(assert (=> bs!1209525 m!6254752))

(assert (=> b!5201854 d!1678180))

(declare-fun b!5202604 () Bool)

(declare-fun e!3239572 () Bool)

(declare-fun e!3239570 () Bool)

(assert (=> b!5202604 (= e!3239572 e!3239570)))

(declare-fun c!896796 () Bool)

(assert (=> b!5202604 (= c!896796 ((_ is Star!14785) lt!2141026))))

(declare-fun bm!365813 () Bool)

(declare-fun call!365819 () Bool)

(declare-fun c!896797 () Bool)

(assert (=> bm!365813 (= call!365819 (validRegex!6521 (ite c!896797 (regTwo!30083 lt!2141026) (regTwo!30082 lt!2141026))))))

(declare-fun bm!365814 () Bool)

(declare-fun call!365820 () Bool)

(declare-fun call!365818 () Bool)

(assert (=> bm!365814 (= call!365820 call!365818)))

(declare-fun b!5202605 () Bool)

(declare-fun e!3239575 () Bool)

(assert (=> b!5202605 (= e!3239575 call!365819)))

(declare-fun b!5202606 () Bool)

(declare-fun res!2210293 () Bool)

(assert (=> b!5202606 (=> (not res!2210293) (not e!3239575))))

(assert (=> b!5202606 (= res!2210293 call!365820)))

(declare-fun e!3239569 () Bool)

(assert (=> b!5202606 (= e!3239569 e!3239575)))

(declare-fun b!5202607 () Bool)

(assert (=> b!5202607 (= e!3239570 e!3239569)))

(assert (=> b!5202607 (= c!896797 ((_ is Union!14785) lt!2141026))))

(declare-fun b!5202608 () Bool)

(declare-fun e!3239573 () Bool)

(assert (=> b!5202608 (= e!3239573 call!365818)))

(declare-fun b!5202609 () Bool)

(assert (=> b!5202609 (= e!3239570 e!3239573)))

(declare-fun res!2210295 () Bool)

(assert (=> b!5202609 (= res!2210295 (not (nullable!4954 (reg!15114 lt!2141026))))))

(assert (=> b!5202609 (=> (not res!2210295) (not e!3239573))))

(declare-fun b!5202610 () Bool)

(declare-fun e!3239574 () Bool)

(assert (=> b!5202610 (= e!3239574 call!365819)))

(declare-fun b!5202611 () Bool)

(declare-fun res!2210292 () Bool)

(declare-fun e!3239571 () Bool)

(assert (=> b!5202611 (=> res!2210292 e!3239571)))

(assert (=> b!5202611 (= res!2210292 (not ((_ is Concat!23630) lt!2141026)))))

(assert (=> b!5202611 (= e!3239569 e!3239571)))

(declare-fun b!5202612 () Bool)

(assert (=> b!5202612 (= e!3239571 e!3239574)))

(declare-fun res!2210294 () Bool)

(assert (=> b!5202612 (=> (not res!2210294) (not e!3239574))))

(assert (=> b!5202612 (= res!2210294 call!365820)))

(declare-fun d!1678182 () Bool)

(declare-fun res!2210296 () Bool)

(assert (=> d!1678182 (=> res!2210296 e!3239572)))

(assert (=> d!1678182 (= res!2210296 ((_ is ElementMatch!14785) lt!2141026))))

(assert (=> d!1678182 (= (validRegex!6521 lt!2141026) e!3239572)))

(declare-fun bm!365815 () Bool)

(assert (=> bm!365815 (= call!365818 (validRegex!6521 (ite c!896796 (reg!15114 lt!2141026) (ite c!896797 (regOne!30083 lt!2141026) (regOne!30082 lt!2141026)))))))

(assert (= (and d!1678182 (not res!2210296)) b!5202604))

(assert (= (and b!5202604 c!896796) b!5202609))

(assert (= (and b!5202604 (not c!896796)) b!5202607))

(assert (= (and b!5202609 res!2210295) b!5202608))

(assert (= (and b!5202607 c!896797) b!5202606))

(assert (= (and b!5202607 (not c!896797)) b!5202611))

(assert (= (and b!5202606 res!2210293) b!5202605))

(assert (= (and b!5202611 (not res!2210292)) b!5202612))

(assert (= (and b!5202612 res!2210294) b!5202610))

(assert (= (or b!5202605 b!5202610) bm!365813))

(assert (= (or b!5202606 b!5202612) bm!365814))

(assert (= (or b!5202608 bm!365814) bm!365815))

(declare-fun m!6254754 () Bool)

(assert (=> bm!365813 m!6254754))

(declare-fun m!6254756 () Bool)

(assert (=> b!5202609 m!6254756))

(declare-fun m!6254758 () Bool)

(assert (=> bm!365815 m!6254758))

(assert (=> d!1677802 d!1678182))

(declare-fun d!1678184 () Bool)

(declare-fun res!2210302 () Bool)

(declare-fun e!3239582 () Bool)

(assert (=> d!1678184 (=> res!2210302 e!3239582)))

(assert (=> d!1678184 (= res!2210302 ((_ is Nil!60530) (unfocusZipperList!227 zl!343)))))

(assert (=> d!1678184 (= (forall!14225 (unfocusZipperList!227 zl!343) lambda!260649) e!3239582)))

(declare-fun b!5202620 () Bool)

(declare-fun e!3239583 () Bool)

(assert (=> b!5202620 (= e!3239582 e!3239583)))

(declare-fun res!2210303 () Bool)

(assert (=> b!5202620 (=> (not res!2210303) (not e!3239583))))

(assert (=> b!5202620 (= res!2210303 (dynLambda!23912 lambda!260649 (h!66978 (unfocusZipperList!227 zl!343))))))

(declare-fun b!5202621 () Bool)

(assert (=> b!5202621 (= e!3239583 (forall!14225 (t!373807 (unfocusZipperList!227 zl!343)) lambda!260649))))

(assert (= (and d!1678184 (not res!2210302)) b!5202620))

(assert (= (and b!5202620 res!2210303) b!5202621))

(declare-fun b_lambda!201327 () Bool)

(assert (=> (not b_lambda!201327) (not b!5202620)))

(declare-fun m!6254760 () Bool)

(assert (=> b!5202620 m!6254760))

(declare-fun m!6254764 () Bool)

(assert (=> b!5202621 m!6254764))

(assert (=> d!1677802 d!1678184))

(declare-fun b!5202627 () Bool)

(declare-fun e!3239586 () (InoxSet Context!8338))

(assert (=> b!5202627 (= e!3239586 ((as const (Array Context!8338 Bool)) false))))

(declare-fun b!5202629 () Bool)

(declare-fun e!3239592 () (InoxSet Context!8338))

(declare-fun e!3239591 () (InoxSet Context!8338))

(assert (=> b!5202629 (= e!3239592 e!3239591)))

(declare-fun c!896804 () Bool)

(assert (=> b!5202629 (= c!896804 ((_ is Concat!23630) (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))))))

(declare-fun b!5202630 () Bool)

(declare-fun call!365823 () (InoxSet Context!8338))

(assert (=> b!5202630 (= e!3239586 call!365823)))

(declare-fun b!5202631 () Bool)

(declare-fun e!3239589 () (InoxSet Context!8338))

(declare-fun call!365827 () (InoxSet Context!8338))

(declare-fun call!365825 () (InoxSet Context!8338))

(assert (=> b!5202631 (= e!3239589 ((_ map or) call!365827 call!365825))))

(declare-fun bm!365819 () Bool)

(declare-fun call!365826 () List!60654)

(declare-fun c!896802 () Bool)

(assert (=> bm!365819 (= call!365825 (derivationStepZipperDown!233 (ite c!896802 (regTwo!30083 (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))) (regOne!30082 (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343))))))))) (ite c!896802 (Context!8339 (t!373807 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))) (Context!8339 call!365826)) (h!66980 s!2326)))))

(declare-fun b!5202632 () Bool)

(declare-fun e!3239590 () Bool)

(assert (=> b!5202632 (= e!3239590 (nullable!4954 (regOne!30082 (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343))))))))))))

(declare-fun bm!365820 () Bool)

(declare-fun c!896801 () Bool)

(assert (=> bm!365820 (= call!365826 ($colon$colon!1267 (exprs!4669 (Context!8339 (t!373807 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343))))))))) (ite (or c!896801 c!896804) (regTwo!30082 (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))) (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343))))))))))))

(declare-fun b!5202633 () Bool)

(assert (=> b!5202633 (= e!3239591 call!365823)))

(declare-fun bm!365821 () Bool)

(declare-fun call!365828 () List!60654)

(assert (=> bm!365821 (= call!365827 (derivationStepZipperDown!233 (ite c!896802 (regOne!30083 (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))) (ite c!896801 (regTwo!30082 (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))) (ite c!896804 (regOne!30082 (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))) (reg!15114 (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343))))))))))) (ite (or c!896802 c!896801) (Context!8339 (t!373807 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))) (Context!8339 call!365828)) (h!66980 s!2326)))))

(declare-fun b!5202634 () Bool)

(declare-fun e!3239585 () (InoxSet Context!8338))

(assert (=> b!5202634 (= e!3239585 e!3239589)))

(assert (=> b!5202634 (= c!896802 ((_ is Union!14785) (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))))))

(declare-fun b!5202635 () Bool)

(declare-fun c!896805 () Bool)

(assert (=> b!5202635 (= c!896805 ((_ is Star!14785) (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))))))

(assert (=> b!5202635 (= e!3239591 e!3239586)))

(declare-fun bm!365822 () Bool)

(declare-fun call!365829 () (InoxSet Context!8338))

(assert (=> bm!365822 (= call!365829 call!365827)))

(declare-fun bm!365823 () Bool)

(assert (=> bm!365823 (= call!365828 call!365826)))

(declare-fun d!1678186 () Bool)

(declare-fun c!896803 () Bool)

(assert (=> d!1678186 (= c!896803 (and ((_ is ElementMatch!14785) (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))) (= (c!896412 (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))) (h!66980 s!2326))))))

(assert (=> d!1678186 (= (derivationStepZipperDown!233 (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343))))))) (Context!8339 (t!373807 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))) (h!66980 s!2326)) e!3239585)))

(declare-fun b!5202628 () Bool)

(assert (=> b!5202628 (= e!3239592 ((_ map or) call!365825 call!365829))))

(declare-fun bm!365824 () Bool)

(assert (=> bm!365824 (= call!365823 call!365829)))

(declare-fun b!5202636 () Bool)

(assert (=> b!5202636 (= e!3239585 (store ((as const (Array Context!8338 Bool)) false) (Context!8339 (t!373807 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))) true))))

(declare-fun b!5202637 () Bool)

(assert (=> b!5202637 (= c!896801 e!3239590)))

(declare-fun res!2210305 () Bool)

(assert (=> b!5202637 (=> (not res!2210305) (not e!3239590))))

(assert (=> b!5202637 (= res!2210305 ((_ is Concat!23630) (h!66978 (exprs!4669 (Context!8339 (Cons!60530 (h!66978 (exprs!4669 (h!66979 zl!343))) (t!373807 (exprs!4669 (h!66979 zl!343)))))))))))

(assert (=> b!5202637 (= e!3239589 e!3239592)))

(assert (= (and d!1678186 c!896803) b!5202636))

(assert (= (and d!1678186 (not c!896803)) b!5202634))

(assert (= (and b!5202634 c!896802) b!5202631))

(assert (= (and b!5202634 (not c!896802)) b!5202637))

(assert (= (and b!5202637 res!2210305) b!5202632))

(assert (= (and b!5202637 c!896801) b!5202628))

(assert (= (and b!5202637 (not c!896801)) b!5202629))

(assert (= (and b!5202629 c!896804) b!5202633))

(assert (= (and b!5202629 (not c!896804)) b!5202635))

(assert (= (and b!5202635 c!896805) b!5202630))

(assert (= (and b!5202635 (not c!896805)) b!5202627))

(assert (= (or b!5202633 b!5202630) bm!365823))

(assert (= (or b!5202633 b!5202630) bm!365824))

(assert (= (or b!5202628 bm!365823) bm!365820))

(assert (= (or b!5202628 bm!365824) bm!365822))

(assert (= (or b!5202631 b!5202628) bm!365819))

(assert (= (or b!5202631 bm!365822) bm!365821))

(declare-fun m!6254776 () Bool)

(assert (=> bm!365820 m!6254776))

(declare-fun m!6254778 () Bool)

(assert (=> bm!365821 m!6254778))

(declare-fun m!6254780 () Bool)

(assert (=> b!5202632 m!6254780))

(declare-fun m!6254782 () Bool)

(assert (=> b!5202636 m!6254782))

(declare-fun m!6254784 () Bool)

(assert (=> bm!365819 m!6254784))

(assert (=> bm!365661 d!1678186))

(assert (=> b!5201551 d!1677936))

(assert (=> b!5201789 d!1678108))

(declare-fun d!1678194 () Bool)

(assert (=> d!1678194 (= (head!11154 (unfocusZipperList!227 zl!343)) (h!66978 (unfocusZipperList!227 zl!343)))))

(assert (=> b!5201691 d!1678194))

(declare-fun bs!1209527 () Bool)

(declare-fun d!1678196 () Bool)

(assert (= bs!1209527 (and d!1678196 d!1677740)))

(declare-fun lambda!260712 () Int)

(assert (=> bs!1209527 (= lambda!260712 lambda!260615)))

(declare-fun bs!1209528 () Bool)

(assert (= bs!1209528 (and d!1678196 d!1678124)))

(assert (=> bs!1209528 (= lambda!260712 lambda!260702)))

(declare-fun bs!1209529 () Bool)

(assert (= bs!1209529 (and d!1678196 d!1677800)))

(assert (=> bs!1209529 (= lambda!260712 lambda!260646)))

(declare-fun bs!1209530 () Bool)

(assert (= bs!1209530 (and d!1678196 d!1678042)))

(assert (=> bs!1209530 (= lambda!260712 lambda!260688)))

(declare-fun bs!1209531 () Bool)

(assert (= bs!1209531 (and d!1678196 d!1677802)))

(assert (=> bs!1209531 (= lambda!260712 lambda!260649)))

(declare-fun bs!1209532 () Bool)

(assert (= bs!1209532 (and d!1678196 d!1677792)))

(assert (=> bs!1209532 (= lambda!260712 lambda!260645)))

(declare-fun bs!1209533 () Bool)

(assert (= bs!1209533 (and d!1678196 b!5201188)))

(assert (=> bs!1209533 (= lambda!260712 lambda!260605)))

(declare-fun bs!1209534 () Bool)

(assert (= bs!1209534 (and d!1678196 d!1678116)))

(assert (=> bs!1209534 (= lambda!260712 lambda!260700)))

(declare-fun bs!1209535 () Bool)

(assert (= bs!1209535 (and d!1678196 d!1677808)))

(assert (=> bs!1209535 (= lambda!260712 lambda!260652)))

(assert (=> d!1678196 (= (inv!80209 setElem!32998) (forall!14225 (exprs!4669 setElem!32998) lambda!260712))))

(declare-fun bs!1209536 () Bool)

(assert (= bs!1209536 d!1678196))

(declare-fun m!6254786 () Bool)

(assert (=> bs!1209536 m!6254786))

(assert (=> setNonEmpty!32998 d!1678196))

(declare-fun d!1678198 () Bool)

(declare-fun c!896808 () Bool)

(assert (=> d!1678198 (= c!896808 ((_ is Nil!60531) lt!2141019))))

(declare-fun e!3239597 () (InoxSet Context!8338))

(assert (=> d!1678198 (= (content!10711 lt!2141019) e!3239597)))

(declare-fun b!5202644 () Bool)

(assert (=> b!5202644 (= e!3239597 ((as const (Array Context!8338 Bool)) false))))

(declare-fun b!5202645 () Bool)

(assert (=> b!5202645 (= e!3239597 ((_ map or) (store ((as const (Array Context!8338 Bool)) false) (h!66979 lt!2141019) true) (content!10711 (t!373808 lt!2141019))))))

(assert (= (and d!1678198 c!896808) b!5202644))

(assert (= (and d!1678198 (not c!896808)) b!5202645))

(declare-fun m!6254788 () Bool)

(assert (=> b!5202645 m!6254788))

(declare-fun m!6254790 () Bool)

(assert (=> b!5202645 m!6254790))

(assert (=> b!5201629 d!1678198))

(declare-fun b!5202650 () Bool)

(declare-fun res!2210310 () Bool)

(declare-fun e!3239599 () Bool)

(assert (=> b!5202650 (=> (not res!2210310) (not e!3239599))))

(declare-fun lt!2141083 () List!60656)

(assert (=> b!5202650 (= res!2210310 (= (size!39708 lt!2141083) (+ (size!39708 (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) Nil!60532))) (size!39708 (t!373809 s!2326)))))))

(declare-fun b!5202648 () Bool)

(declare-fun e!3239598 () List!60656)

(assert (=> b!5202648 (= e!3239598 (t!373809 s!2326))))

(declare-fun b!5202651 () Bool)

(assert (=> b!5202651 (= e!3239599 (or (not (= (t!373809 s!2326) Nil!60532)) (= lt!2141083 (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) Nil!60532)))))))

(declare-fun d!1678200 () Bool)

(assert (=> d!1678200 e!3239599))

(declare-fun res!2210311 () Bool)

(assert (=> d!1678200 (=> (not res!2210311) (not e!3239599))))

(assert (=> d!1678200 (= res!2210311 (= (content!10712 lt!2141083) ((_ map or) (content!10712 (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) Nil!60532))) (content!10712 (t!373809 s!2326)))))))

(assert (=> d!1678200 (= lt!2141083 e!3239598)))

(declare-fun c!896809 () Bool)

(assert (=> d!1678200 (= c!896809 ((_ is Nil!60532) (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) Nil!60532))))))

(assert (=> d!1678200 (= (++!13197 (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) Nil!60532)) (t!373809 s!2326)) lt!2141083)))

(declare-fun b!5202649 () Bool)

(assert (=> b!5202649 (= e!3239598 (Cons!60532 (h!66980 (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) Nil!60532))) (++!13197 (t!373809 (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) Nil!60532))) (t!373809 s!2326))))))

(assert (= (and d!1678200 c!896809) b!5202648))

(assert (= (and d!1678200 (not c!896809)) b!5202649))

(assert (= (and d!1678200 res!2210311) b!5202650))

(assert (= (and b!5202650 res!2210310) b!5202651))

(declare-fun m!6254792 () Bool)

(assert (=> b!5202650 m!6254792))

(assert (=> b!5202650 m!6254000))

(declare-fun m!6254794 () Bool)

(assert (=> b!5202650 m!6254794))

(declare-fun m!6254796 () Bool)

(assert (=> b!5202650 m!6254796))

(declare-fun m!6254798 () Bool)

(assert (=> d!1678200 m!6254798))

(assert (=> d!1678200 m!6254000))

(declare-fun m!6254800 () Bool)

(assert (=> d!1678200 m!6254800))

(declare-fun m!6254802 () Bool)

(assert (=> d!1678200 m!6254802))

(declare-fun m!6254804 () Bool)

(assert (=> b!5202649 m!6254804))

(assert (=> b!5201793 d!1678200))

(declare-fun b!5202654 () Bool)

(declare-fun res!2210312 () Bool)

(declare-fun e!3239601 () Bool)

(assert (=> b!5202654 (=> (not res!2210312) (not e!3239601))))

(declare-fun lt!2141084 () List!60656)

(assert (=> b!5202654 (= res!2210312 (= (size!39708 lt!2141084) (+ (size!39708 Nil!60532) (size!39708 (Cons!60532 (h!66980 s!2326) Nil!60532)))))))

(declare-fun b!5202652 () Bool)

(declare-fun e!3239600 () List!60656)

(assert (=> b!5202652 (= e!3239600 (Cons!60532 (h!66980 s!2326) Nil!60532))))

(declare-fun b!5202655 () Bool)

(assert (=> b!5202655 (= e!3239601 (or (not (= (Cons!60532 (h!66980 s!2326) Nil!60532) Nil!60532)) (= lt!2141084 Nil!60532)))))

(declare-fun d!1678202 () Bool)

(assert (=> d!1678202 e!3239601))

(declare-fun res!2210313 () Bool)

(assert (=> d!1678202 (=> (not res!2210313) (not e!3239601))))

(assert (=> d!1678202 (= res!2210313 (= (content!10712 lt!2141084) ((_ map or) (content!10712 Nil!60532) (content!10712 (Cons!60532 (h!66980 s!2326) Nil!60532)))))))

(assert (=> d!1678202 (= lt!2141084 e!3239600)))

(declare-fun c!896810 () Bool)

(assert (=> d!1678202 (= c!896810 ((_ is Nil!60532) Nil!60532))))

(assert (=> d!1678202 (= (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) Nil!60532)) lt!2141084)))

(declare-fun b!5202653 () Bool)

(assert (=> b!5202653 (= e!3239600 (Cons!60532 (h!66980 Nil!60532) (++!13197 (t!373809 Nil!60532) (Cons!60532 (h!66980 s!2326) Nil!60532))))))

(assert (= (and d!1678202 c!896810) b!5202652))

(assert (= (and d!1678202 (not c!896810)) b!5202653))

(assert (= (and d!1678202 res!2210313) b!5202654))

(assert (= (and b!5202654 res!2210312) b!5202655))

(declare-fun m!6254806 () Bool)

(assert (=> b!5202654 m!6254806))

(declare-fun m!6254808 () Bool)

(assert (=> b!5202654 m!6254808))

(declare-fun m!6254810 () Bool)

(assert (=> b!5202654 m!6254810))

(declare-fun m!6254812 () Bool)

(assert (=> d!1678202 m!6254812))

(declare-fun m!6254814 () Bool)

(assert (=> d!1678202 m!6254814))

(declare-fun m!6254816 () Bool)

(assert (=> d!1678202 m!6254816))

(declare-fun m!6254818 () Bool)

(assert (=> b!5202653 m!6254818))

(assert (=> b!5201793 d!1678202))

(declare-fun d!1678204 () Bool)

(assert (=> d!1678204 (= (++!13197 (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) Nil!60532)) (t!373809 s!2326)) s!2326)))

(declare-fun lt!2141087 () Unit!152406)

(declare-fun choose!38667 (List!60656 C!29840 List!60656 List!60656) Unit!152406)

(assert (=> d!1678204 (= lt!2141087 (choose!38667 Nil!60532 (h!66980 s!2326) (t!373809 s!2326) s!2326))))

(assert (=> d!1678204 (= (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) (t!373809 s!2326))) s!2326)))

(assert (=> d!1678204 (= (lemmaMoveElementToOtherListKeepsConcatEq!1612 Nil!60532 (h!66980 s!2326) (t!373809 s!2326) s!2326) lt!2141087)))

(declare-fun bs!1209547 () Bool)

(assert (= bs!1209547 d!1678204))

(assert (=> bs!1209547 m!6254000))

(assert (=> bs!1209547 m!6254000))

(assert (=> bs!1209547 m!6254002))

(declare-fun m!6254820 () Bool)

(assert (=> bs!1209547 m!6254820))

(declare-fun m!6254822 () Bool)

(assert (=> bs!1209547 m!6254822))

(assert (=> b!5201793 d!1678204))

(declare-fun d!1678206 () Bool)

(declare-fun e!3239602 () Bool)

(assert (=> d!1678206 e!3239602))

(declare-fun res!2210316 () Bool)

(assert (=> d!1678206 (=> res!2210316 e!3239602)))

(declare-fun e!3239603 () Bool)

(assert (=> d!1678206 (= res!2210316 e!3239603)))

(declare-fun res!2210314 () Bool)

(assert (=> d!1678206 (=> (not res!2210314) (not e!3239603))))

(declare-fun lt!2141088 () Option!14896)

(assert (=> d!1678206 (= res!2210314 (isDefined!11599 lt!2141088))))

(declare-fun e!3239606 () Option!14896)

(assert (=> d!1678206 (= lt!2141088 e!3239606)))

(declare-fun c!896811 () Bool)

(declare-fun e!3239604 () Bool)

(assert (=> d!1678206 (= c!896811 e!3239604)))

(declare-fun res!2210315 () Bool)

(assert (=> d!1678206 (=> (not res!2210315) (not e!3239604))))

(assert (=> d!1678206 (= res!2210315 (matchR!6970 (regOne!30082 r!7292) (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) Nil!60532))))))

(assert (=> d!1678206 (validRegex!6521 (regOne!30082 r!7292))))

(assert (=> d!1678206 (= (findConcatSeparation!1310 (regOne!30082 r!7292) (regTwo!30082 r!7292) (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) Nil!60532)) (t!373809 s!2326) s!2326) lt!2141088)))

(declare-fun b!5202656 () Bool)

(declare-fun res!2210318 () Bool)

(assert (=> b!5202656 (=> (not res!2210318) (not e!3239603))))

(assert (=> b!5202656 (= res!2210318 (matchR!6970 (regTwo!30082 r!7292) (_2!35287 (get!20795 lt!2141088))))))

(declare-fun b!5202657 () Bool)

(assert (=> b!5202657 (= e!3239606 (Some!14895 (tuple2!63969 (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) Nil!60532)) (t!373809 s!2326))))))

(declare-fun b!5202658 () Bool)

(declare-fun res!2210317 () Bool)

(assert (=> b!5202658 (=> (not res!2210317) (not e!3239603))))

(assert (=> b!5202658 (= res!2210317 (matchR!6970 (regOne!30082 r!7292) (_1!35287 (get!20795 lt!2141088))))))

(declare-fun b!5202659 () Bool)

(assert (=> b!5202659 (= e!3239603 (= (++!13197 (_1!35287 (get!20795 lt!2141088)) (_2!35287 (get!20795 lt!2141088))) s!2326))))

(declare-fun b!5202660 () Bool)

(assert (=> b!5202660 (= e!3239602 (not (isDefined!11599 lt!2141088)))))

(declare-fun b!5202661 () Bool)

(declare-fun e!3239605 () Option!14896)

(assert (=> b!5202661 (= e!3239605 None!14895)))

(declare-fun b!5202662 () Bool)

(assert (=> b!5202662 (= e!3239604 (matchR!6970 (regTwo!30082 r!7292) (t!373809 s!2326)))))

(declare-fun b!5202663 () Bool)

(assert (=> b!5202663 (= e!3239606 e!3239605)))

(declare-fun c!896812 () Bool)

(assert (=> b!5202663 (= c!896812 ((_ is Nil!60532) (t!373809 s!2326)))))

(declare-fun b!5202664 () Bool)

(declare-fun lt!2141089 () Unit!152406)

(declare-fun lt!2141090 () Unit!152406)

(assert (=> b!5202664 (= lt!2141089 lt!2141090)))

(assert (=> b!5202664 (= (++!13197 (++!13197 (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) Nil!60532)) (Cons!60532 (h!66980 (t!373809 s!2326)) Nil!60532)) (t!373809 (t!373809 s!2326))) s!2326)))

(assert (=> b!5202664 (= lt!2141090 (lemmaMoveElementToOtherListKeepsConcatEq!1612 (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) Nil!60532)) (h!66980 (t!373809 s!2326)) (t!373809 (t!373809 s!2326)) s!2326))))

(assert (=> b!5202664 (= e!3239605 (findConcatSeparation!1310 (regOne!30082 r!7292) (regTwo!30082 r!7292) (++!13197 (++!13197 Nil!60532 (Cons!60532 (h!66980 s!2326) Nil!60532)) (Cons!60532 (h!66980 (t!373809 s!2326)) Nil!60532)) (t!373809 (t!373809 s!2326)) s!2326))))

(assert (= (and d!1678206 res!2210315) b!5202662))

(assert (= (and d!1678206 c!896811) b!5202657))

(assert (= (and d!1678206 (not c!896811)) b!5202663))

(assert (= (and b!5202663 c!896812) b!5202661))

(assert (= (and b!5202663 (not c!896812)) b!5202664))

(assert (= (and d!1678206 res!2210314) b!5202658))

(assert (= (and b!5202658 res!2210317) b!5202656))

(assert (= (and b!5202656 res!2210318) b!5202659))

(assert (= (and d!1678206 (not res!2210316)) b!5202660))

(declare-fun m!6254826 () Bool)

(assert (=> b!5202659 m!6254826))

(declare-fun m!6254828 () Bool)

(assert (=> b!5202659 m!6254828))

(declare-fun m!6254830 () Bool)

(assert (=> d!1678206 m!6254830))

(assert (=> d!1678206 m!6254000))

(declare-fun m!6254832 () Bool)

(assert (=> d!1678206 m!6254832))

(assert (=> d!1678206 m!6253994))

(assert (=> b!5202660 m!6254830))

(assert (=> b!5202658 m!6254826))

(declare-fun m!6254834 () Bool)

(assert (=> b!5202658 m!6254834))

(assert (=> b!5202656 m!6254826))

(declare-fun m!6254836 () Bool)

(assert (=> b!5202656 m!6254836))

(assert (=> b!5202664 m!6254000))

(declare-fun m!6254838 () Bool)

(assert (=> b!5202664 m!6254838))

(assert (=> b!5202664 m!6254838))

(declare-fun m!6254842 () Bool)

(assert (=> b!5202664 m!6254842))

(assert (=> b!5202664 m!6254000))

(declare-fun m!6254844 () Bool)

(assert (=> b!5202664 m!6254844))

(assert (=> b!5202664 m!6254838))

(declare-fun m!6254846 () Bool)

(assert (=> b!5202664 m!6254846))

(declare-fun m!6254848 () Bool)

(assert (=> b!5202662 m!6254848))

(assert (=> b!5201793 d!1678206))

(declare-fun d!1678210 () Bool)

(declare-fun res!2210323 () Bool)

(declare-fun e!3239623 () Bool)

(assert (=> d!1678210 (=> res!2210323 e!3239623)))

(assert (=> d!1678210 (= res!2210323 ((_ is Nil!60531) lt!2141019))))

(assert (=> d!1678210 (= (noDuplicate!1173 lt!2141019) e!3239623)))

(declare-fun b!5202714 () Bool)

(declare-fun e!3239624 () Bool)

(assert (=> b!5202714 (= e!3239623 e!3239624)))

(declare-fun res!2210324 () Bool)

(assert (=> b!5202714 (=> (not res!2210324) (not e!3239624))))

(declare-fun contains!19655 (List!60655 Context!8338) Bool)

(assert (=> b!5202714 (= res!2210324 (not (contains!19655 (t!373808 lt!2141019) (h!66979 lt!2141019))))))

(declare-fun b!5202715 () Bool)

(assert (=> b!5202715 (= e!3239624 (noDuplicate!1173 (t!373808 lt!2141019)))))

(assert (= (and d!1678210 (not res!2210323)) b!5202714))

(assert (= (and b!5202714 res!2210324) b!5202715))

(declare-fun m!6254850 () Bool)

(assert (=> b!5202714 m!6254850))

(declare-fun m!6254852 () Bool)

(assert (=> b!5202715 m!6254852))

(assert (=> d!1677796 d!1678210))

(declare-fun d!1678212 () Bool)

(declare-fun e!3239647 () Bool)

(assert (=> d!1678212 e!3239647))

(declare-fun res!2210329 () Bool)

(assert (=> d!1678212 (=> (not res!2210329) (not e!3239647))))

(declare-fun res!2210330 () List!60655)

(assert (=> d!1678212 (= res!2210329 (noDuplicate!1173 res!2210330))))

(declare-fun e!3239645 () Bool)

(assert (=> d!1678212 e!3239645))

(assert (=> d!1678212 (= (choose!38661 z!1189) res!2210330)))

(declare-fun b!5202766 () Bool)

(declare-fun e!3239644 () Bool)

(declare-fun tp!1459156 () Bool)

(assert (=> b!5202766 (= e!3239644 tp!1459156)))

(declare-fun b!5202765 () Bool)

(declare-fun tp!1459158 () Bool)

(assert (=> b!5202765 (= e!3239645 (and (inv!80209 (h!66979 res!2210330)) e!3239644 tp!1459158))))

(declare-fun b!5202767 () Bool)

(assert (=> b!5202767 (= e!3239647 (= (content!10711 res!2210330) z!1189))))

(assert (= b!5202765 b!5202766))

(assert (= (and d!1678212 ((_ is Cons!60531) res!2210330)) b!5202765))

(assert (= (and d!1678212 res!2210329) b!5202767))

(declare-fun m!6254856 () Bool)

(assert (=> d!1678212 m!6254856))

(declare-fun m!6254858 () Bool)

(assert (=> b!5202765 m!6254858))

(declare-fun m!6254860 () Bool)

(assert (=> b!5202767 m!6254860))

(assert (=> d!1677796 d!1678212))

(declare-fun bs!1209560 () Bool)

(declare-fun d!1678214 () Bool)

(assert (= bs!1209560 (and d!1678214 d!1677740)))

(declare-fun lambda!260717 () Int)

(assert (=> bs!1209560 (= lambda!260717 lambda!260615)))

(declare-fun bs!1209561 () Bool)

(assert (= bs!1209561 (and d!1678214 d!1678124)))

(assert (=> bs!1209561 (= lambda!260717 lambda!260702)))

(declare-fun bs!1209562 () Bool)

(assert (= bs!1209562 (and d!1678214 d!1677800)))

(assert (=> bs!1209562 (= lambda!260717 lambda!260646)))

(declare-fun bs!1209563 () Bool)

(assert (= bs!1209563 (and d!1678214 d!1678196)))

(assert (=> bs!1209563 (= lambda!260717 lambda!260712)))

(declare-fun bs!1209564 () Bool)

(assert (= bs!1209564 (and d!1678214 d!1678042)))

(assert (=> bs!1209564 (= lambda!260717 lambda!260688)))

(declare-fun bs!1209565 () Bool)

(assert (= bs!1209565 (and d!1678214 d!1677802)))

(assert (=> bs!1209565 (= lambda!260717 lambda!260649)))

(declare-fun bs!1209566 () Bool)

(assert (= bs!1209566 (and d!1678214 d!1677792)))

(assert (=> bs!1209566 (= lambda!260717 lambda!260645)))

(declare-fun bs!1209567 () Bool)

(assert (= bs!1209567 (and d!1678214 b!5201188)))

(assert (=> bs!1209567 (= lambda!260717 lambda!260605)))

(declare-fun bs!1209568 () Bool)

(assert (= bs!1209568 (and d!1678214 d!1678116)))

(assert (=> bs!1209568 (= lambda!260717 lambda!260700)))

(declare-fun bs!1209569 () Bool)

(assert (= bs!1209569 (and d!1678214 d!1677808)))

(assert (=> bs!1209569 (= lambda!260717 lambda!260652)))

(declare-fun b!5202780 () Bool)

(declare-fun e!3239653 () Regex!14785)

(assert (=> b!5202780 (= e!3239653 EmptyLang!14785)))

(declare-fun b!5202781 () Bool)

(assert (=> b!5202781 (= e!3239653 (Union!14785 (h!66978 (t!373807 (unfocusZipperList!227 zl!343))) (generalisedUnion!714 (t!373807 (t!373807 (unfocusZipperList!227 zl!343))))))))

(declare-fun b!5202783 () Bool)

(declare-fun e!3239651 () Bool)

(declare-fun lt!2141091 () Regex!14785)

(assert (=> b!5202783 (= e!3239651 (= lt!2141091 (head!11154 (t!373807 (unfocusZipperList!227 zl!343)))))))

(declare-fun b!5202784 () Bool)

(declare-fun e!3239655 () Regex!14785)

(assert (=> b!5202784 (= e!3239655 (h!66978 (t!373807 (unfocusZipperList!227 zl!343))))))

(declare-fun b!5202785 () Bool)

(declare-fun e!3239650 () Bool)

(assert (=> b!5202785 (= e!3239650 (isEmptyLang!762 lt!2141091))))

(declare-fun b!5202786 () Bool)

(assert (=> b!5202786 (= e!3239651 (isUnion!194 lt!2141091))))

(declare-fun b!5202787 () Bool)

(assert (=> b!5202787 (= e!3239655 e!3239653)))

(declare-fun c!896813 () Bool)

(assert (=> b!5202787 (= c!896813 ((_ is Cons!60530) (t!373807 (unfocusZipperList!227 zl!343))))))

(declare-fun b!5202788 () Bool)

(declare-fun e!3239652 () Bool)

(assert (=> b!5202788 (= e!3239652 (isEmpty!32438 (t!373807 (t!373807 (unfocusZipperList!227 zl!343)))))))

(declare-fun b!5202789 () Bool)

(declare-fun e!3239654 () Bool)

(assert (=> b!5202789 (= e!3239654 e!3239650)))

(declare-fun c!896816 () Bool)

(assert (=> b!5202789 (= c!896816 (isEmpty!32438 (t!373807 (unfocusZipperList!227 zl!343))))))

(assert (=> d!1678214 e!3239654))

(declare-fun res!2210332 () Bool)

(assert (=> d!1678214 (=> (not res!2210332) (not e!3239654))))

(assert (=> d!1678214 (= res!2210332 (validRegex!6521 lt!2141091))))

(assert (=> d!1678214 (= lt!2141091 e!3239655)))

(declare-fun c!896815 () Bool)

(assert (=> d!1678214 (= c!896815 e!3239652)))

(declare-fun res!2210331 () Bool)

(assert (=> d!1678214 (=> (not res!2210331) (not e!3239652))))

(assert (=> d!1678214 (= res!2210331 ((_ is Cons!60530) (t!373807 (unfocusZipperList!227 zl!343))))))

(assert (=> d!1678214 (forall!14225 (t!373807 (unfocusZipperList!227 zl!343)) lambda!260717)))

(assert (=> d!1678214 (= (generalisedUnion!714 (t!373807 (unfocusZipperList!227 zl!343))) lt!2141091)))

(declare-fun b!5202782 () Bool)

(assert (=> b!5202782 (= e!3239650 e!3239651)))

(declare-fun c!896814 () Bool)

(assert (=> b!5202782 (= c!896814 (isEmpty!32438 (tail!10251 (t!373807 (unfocusZipperList!227 zl!343)))))))

(assert (= (and d!1678214 res!2210331) b!5202788))

(assert (= (and d!1678214 c!896815) b!5202784))

(assert (= (and d!1678214 (not c!896815)) b!5202787))

(assert (= (and b!5202787 c!896813) b!5202781))

(assert (= (and b!5202787 (not c!896813)) b!5202780))

(assert (= (and d!1678214 res!2210332) b!5202789))

(assert (= (and b!5202789 c!896816) b!5202785))

(assert (= (and b!5202789 (not c!896816)) b!5202782))

(assert (= (and b!5202782 c!896814) b!5202783))

(assert (= (and b!5202782 (not c!896814)) b!5202786))

(declare-fun m!6254874 () Bool)

(assert (=> b!5202785 m!6254874))

(assert (=> b!5202789 m!6253954))

(declare-fun m!6254876 () Bool)

(assert (=> b!5202788 m!6254876))

(declare-fun m!6254878 () Bool)

(assert (=> b!5202782 m!6254878))

(assert (=> b!5202782 m!6254878))

(declare-fun m!6254880 () Bool)

(assert (=> b!5202782 m!6254880))

(declare-fun m!6254882 () Bool)

(assert (=> b!5202783 m!6254882))

(declare-fun m!6254884 () Bool)

(assert (=> b!5202786 m!6254884))

(declare-fun m!6254886 () Bool)

(assert (=> d!1678214 m!6254886))

(declare-fun m!6254888 () Bool)

(assert (=> d!1678214 m!6254888))

(declare-fun m!6254890 () Bool)

(assert (=> b!5202781 m!6254890))

(assert (=> b!5201689 d!1678214))

(declare-fun b!5202807 () Bool)

(declare-fun e!3239663 () Bool)

(declare-fun tp!1459198 () Bool)

(declare-fun tp!1459195 () Bool)

(assert (=> b!5202807 (= e!3239663 (and tp!1459198 tp!1459195))))

(declare-fun b!5202808 () Bool)

(declare-fun tp!1459197 () Bool)

(assert (=> b!5202808 (= e!3239663 tp!1459197)))

(declare-fun b!5202806 () Bool)

(assert (=> b!5202806 (= e!3239663 tp_is_empty!38823)))

(assert (=> b!5201912 (= tp!1459015 e!3239663)))

(declare-fun b!5202809 () Bool)

(declare-fun tp!1459196 () Bool)

(declare-fun tp!1459194 () Bool)

(assert (=> b!5202809 (= e!3239663 (and tp!1459196 tp!1459194))))

(assert (= (and b!5201912 ((_ is ElementMatch!14785) (reg!15114 (regTwo!30083 r!7292)))) b!5202806))

(assert (= (and b!5201912 ((_ is Concat!23630) (reg!15114 (regTwo!30083 r!7292)))) b!5202807))

(assert (= (and b!5201912 ((_ is Star!14785) (reg!15114 (regTwo!30083 r!7292)))) b!5202808))

(assert (= (and b!5201912 ((_ is Union!14785) (reg!15114 (regTwo!30083 r!7292)))) b!5202809))

(declare-fun b!5202811 () Bool)

(declare-fun e!3239664 () Bool)

(declare-fun tp!1459203 () Bool)

(declare-fun tp!1459200 () Bool)

(assert (=> b!5202811 (= e!3239664 (and tp!1459203 tp!1459200))))

(declare-fun b!5202812 () Bool)

(declare-fun tp!1459202 () Bool)

(assert (=> b!5202812 (= e!3239664 tp!1459202)))

(declare-fun b!5202810 () Bool)

(assert (=> b!5202810 (= e!3239664 tp_is_empty!38823)))

(assert (=> b!5201913 (= tp!1459014 e!3239664)))

(declare-fun b!5202813 () Bool)

(declare-fun tp!1459201 () Bool)

(declare-fun tp!1459199 () Bool)

(assert (=> b!5202813 (= e!3239664 (and tp!1459201 tp!1459199))))

(assert (= (and b!5201913 ((_ is ElementMatch!14785) (regOne!30083 (regTwo!30083 r!7292)))) b!5202810))

(assert (= (and b!5201913 ((_ is Concat!23630) (regOne!30083 (regTwo!30083 r!7292)))) b!5202811))

(assert (= (and b!5201913 ((_ is Star!14785) (regOne!30083 (regTwo!30083 r!7292)))) b!5202812))

(assert (= (and b!5201913 ((_ is Union!14785) (regOne!30083 (regTwo!30083 r!7292)))) b!5202813))

(declare-fun b!5202815 () Bool)

(declare-fun e!3239665 () Bool)

(declare-fun tp!1459208 () Bool)

(declare-fun tp!1459205 () Bool)

(assert (=> b!5202815 (= e!3239665 (and tp!1459208 tp!1459205))))

(declare-fun b!5202816 () Bool)

(declare-fun tp!1459207 () Bool)

(assert (=> b!5202816 (= e!3239665 tp!1459207)))

(declare-fun b!5202814 () Bool)

(assert (=> b!5202814 (= e!3239665 tp_is_empty!38823)))

(assert (=> b!5201913 (= tp!1459012 e!3239665)))

(declare-fun b!5202817 () Bool)

(declare-fun tp!1459206 () Bool)

(declare-fun tp!1459204 () Bool)

(assert (=> b!5202817 (= e!3239665 (and tp!1459206 tp!1459204))))

(assert (= (and b!5201913 ((_ is ElementMatch!14785) (regTwo!30083 (regTwo!30083 r!7292)))) b!5202814))

(assert (= (and b!5201913 ((_ is Concat!23630) (regTwo!30083 (regTwo!30083 r!7292)))) b!5202815))

(assert (= (and b!5201913 ((_ is Star!14785) (regTwo!30083 (regTwo!30083 r!7292)))) b!5202816))

(assert (= (and b!5201913 ((_ is Union!14785) (regTwo!30083 (regTwo!30083 r!7292)))) b!5202817))

(declare-fun b!5202818 () Bool)

(declare-fun e!3239666 () Bool)

(declare-fun tp!1459209 () Bool)

(assert (=> b!5202818 (= e!3239666 (and tp_is_empty!38823 tp!1459209))))

(assert (=> b!5201905 (= tp!1459006 e!3239666)))

(assert (= (and b!5201905 ((_ is Cons!60532) (t!373809 (t!373809 s!2326)))) b!5202818))

(declare-fun b!5202819 () Bool)

(declare-fun e!3239667 () Bool)

(declare-fun tp!1459210 () Bool)

(declare-fun tp!1459211 () Bool)

(assert (=> b!5202819 (= e!3239667 (and tp!1459210 tp!1459211))))

(assert (=> b!5201891 (= tp!1458994 e!3239667)))

(assert (= (and b!5201891 ((_ is Cons!60530) (exprs!4669 setElem!32998))) b!5202819))

(declare-fun b!5202821 () Bool)

(declare-fun e!3239668 () Bool)

(declare-fun tp!1459216 () Bool)

(declare-fun tp!1459213 () Bool)

(assert (=> b!5202821 (= e!3239668 (and tp!1459216 tp!1459213))))

(declare-fun b!5202822 () Bool)

(declare-fun tp!1459215 () Bool)

(assert (=> b!5202822 (= e!3239668 tp!1459215)))

(declare-fun b!5202820 () Bool)

(assert (=> b!5202820 (= e!3239668 tp_is_empty!38823)))

(assert (=> b!5201877 (= tp!1458976 e!3239668)))

(declare-fun b!5202823 () Bool)

(declare-fun tp!1459214 () Bool)

(declare-fun tp!1459212 () Bool)

(assert (=> b!5202823 (= e!3239668 (and tp!1459214 tp!1459212))))

(assert (= (and b!5201877 ((_ is ElementMatch!14785) (regOne!30083 (regOne!30082 r!7292)))) b!5202820))

(assert (= (and b!5201877 ((_ is Concat!23630) (regOne!30083 (regOne!30082 r!7292)))) b!5202821))

(assert (= (and b!5201877 ((_ is Star!14785) (regOne!30083 (regOne!30082 r!7292)))) b!5202822))

(assert (= (and b!5201877 ((_ is Union!14785) (regOne!30083 (regOne!30082 r!7292)))) b!5202823))

(declare-fun b!5202825 () Bool)

(declare-fun e!3239669 () Bool)

(declare-fun tp!1459221 () Bool)

(declare-fun tp!1459218 () Bool)

(assert (=> b!5202825 (= e!3239669 (and tp!1459221 tp!1459218))))

(declare-fun b!5202826 () Bool)

(declare-fun tp!1459220 () Bool)

(assert (=> b!5202826 (= e!3239669 tp!1459220)))

(declare-fun b!5202824 () Bool)

(assert (=> b!5202824 (= e!3239669 tp_is_empty!38823)))

(assert (=> b!5201877 (= tp!1458974 e!3239669)))

(declare-fun b!5202827 () Bool)

(declare-fun tp!1459219 () Bool)

(declare-fun tp!1459217 () Bool)

(assert (=> b!5202827 (= e!3239669 (and tp!1459219 tp!1459217))))

(assert (= (and b!5201877 ((_ is ElementMatch!14785) (regTwo!30083 (regOne!30082 r!7292)))) b!5202824))

(assert (= (and b!5201877 ((_ is Concat!23630) (regTwo!30083 (regOne!30082 r!7292)))) b!5202825))

(assert (= (and b!5201877 ((_ is Star!14785) (regTwo!30083 (regOne!30082 r!7292)))) b!5202826))

(assert (= (and b!5201877 ((_ is Union!14785) (regTwo!30083 (regOne!30082 r!7292)))) b!5202827))

(declare-fun b!5202829 () Bool)

(declare-fun e!3239670 () Bool)

(declare-fun tp!1459226 () Bool)

(declare-fun tp!1459223 () Bool)

(assert (=> b!5202829 (= e!3239670 (and tp!1459226 tp!1459223))))

(declare-fun b!5202830 () Bool)

(declare-fun tp!1459225 () Bool)

(assert (=> b!5202830 (= e!3239670 tp!1459225)))

(declare-fun b!5202828 () Bool)

(assert (=> b!5202828 (= e!3239670 tp_is_empty!38823)))

(assert (=> b!5201911 (= tp!1459016 e!3239670)))

(declare-fun b!5202831 () Bool)

(declare-fun tp!1459224 () Bool)

(declare-fun tp!1459222 () Bool)

(assert (=> b!5202831 (= e!3239670 (and tp!1459224 tp!1459222))))

(assert (= (and b!5201911 ((_ is ElementMatch!14785) (regOne!30082 (regTwo!30083 r!7292)))) b!5202828))

(assert (= (and b!5201911 ((_ is Concat!23630) (regOne!30082 (regTwo!30083 r!7292)))) b!5202829))

(assert (= (and b!5201911 ((_ is Star!14785) (regOne!30082 (regTwo!30083 r!7292)))) b!5202830))

(assert (= (and b!5201911 ((_ is Union!14785) (regOne!30082 (regTwo!30083 r!7292)))) b!5202831))

(declare-fun b!5202833 () Bool)

(declare-fun e!3239671 () Bool)

(declare-fun tp!1459231 () Bool)

(declare-fun tp!1459228 () Bool)

(assert (=> b!5202833 (= e!3239671 (and tp!1459231 tp!1459228))))

(declare-fun b!5202834 () Bool)

(declare-fun tp!1459230 () Bool)

(assert (=> b!5202834 (= e!3239671 tp!1459230)))

(declare-fun b!5202832 () Bool)

(assert (=> b!5202832 (= e!3239671 tp_is_empty!38823)))

(assert (=> b!5201911 (= tp!1459013 e!3239671)))

(declare-fun b!5202835 () Bool)

(declare-fun tp!1459229 () Bool)

(declare-fun tp!1459227 () Bool)

(assert (=> b!5202835 (= e!3239671 (and tp!1459229 tp!1459227))))

(assert (= (and b!5201911 ((_ is ElementMatch!14785) (regTwo!30082 (regTwo!30083 r!7292)))) b!5202832))

(assert (= (and b!5201911 ((_ is Concat!23630) (regTwo!30082 (regTwo!30083 r!7292)))) b!5202833))

(assert (= (and b!5201911 ((_ is Star!14785) (regTwo!30082 (regTwo!30083 r!7292)))) b!5202834))

(assert (= (and b!5201911 ((_ is Union!14785) (regTwo!30082 (regTwo!30083 r!7292)))) b!5202835))

(declare-fun b!5202837 () Bool)

(declare-fun e!3239672 () Bool)

(declare-fun tp!1459236 () Bool)

(declare-fun tp!1459233 () Bool)

(assert (=> b!5202837 (= e!3239672 (and tp!1459236 tp!1459233))))

(declare-fun b!5202838 () Bool)

(declare-fun tp!1459235 () Bool)

(assert (=> b!5202838 (= e!3239672 tp!1459235)))

(declare-fun b!5202836 () Bool)

(assert (=> b!5202836 (= e!3239672 tp_is_empty!38823)))

(assert (=> b!5201879 (= tp!1458983 e!3239672)))

(declare-fun b!5202839 () Bool)

(declare-fun tp!1459234 () Bool)

(declare-fun tp!1459232 () Bool)

(assert (=> b!5202839 (= e!3239672 (and tp!1459234 tp!1459232))))

(assert (= (and b!5201879 ((_ is ElementMatch!14785) (regOne!30082 (regTwo!30082 r!7292)))) b!5202836))

(assert (= (and b!5201879 ((_ is Concat!23630) (regOne!30082 (regTwo!30082 r!7292)))) b!5202837))

(assert (= (and b!5201879 ((_ is Star!14785) (regOne!30082 (regTwo!30082 r!7292)))) b!5202838))

(assert (= (and b!5201879 ((_ is Union!14785) (regOne!30082 (regTwo!30082 r!7292)))) b!5202839))

(declare-fun b!5202841 () Bool)

(declare-fun e!3239673 () Bool)

(declare-fun tp!1459241 () Bool)

(declare-fun tp!1459238 () Bool)

(assert (=> b!5202841 (= e!3239673 (and tp!1459241 tp!1459238))))

(declare-fun b!5202842 () Bool)

(declare-fun tp!1459240 () Bool)

(assert (=> b!5202842 (= e!3239673 tp!1459240)))

(declare-fun b!5202840 () Bool)

(assert (=> b!5202840 (= e!3239673 tp_is_empty!38823)))

(assert (=> b!5201879 (= tp!1458980 e!3239673)))

(declare-fun b!5202843 () Bool)

(declare-fun tp!1459239 () Bool)

(declare-fun tp!1459237 () Bool)

(assert (=> b!5202843 (= e!3239673 (and tp!1459239 tp!1459237))))

(assert (= (and b!5201879 ((_ is ElementMatch!14785) (regTwo!30082 (regTwo!30082 r!7292)))) b!5202840))

(assert (= (and b!5201879 ((_ is Concat!23630) (regTwo!30082 (regTwo!30082 r!7292)))) b!5202841))

(assert (= (and b!5201879 ((_ is Star!14785) (regTwo!30082 (regTwo!30082 r!7292)))) b!5202842))

(assert (= (and b!5201879 ((_ is Union!14785) (regTwo!30082 (regTwo!30082 r!7292)))) b!5202843))

(declare-fun b!5202845 () Bool)

(declare-fun e!3239675 () Bool)

(declare-fun tp!1459242 () Bool)

(assert (=> b!5202845 (= e!3239675 tp!1459242)))

(declare-fun tp!1459243 () Bool)

(declare-fun e!3239674 () Bool)

(declare-fun b!5202844 () Bool)

(assert (=> b!5202844 (= e!3239674 (and (inv!80209 (h!66979 (t!373808 (t!373808 zl!343)))) e!3239675 tp!1459243))))

(assert (=> b!5201899 (= tp!1459003 e!3239674)))

(assert (= b!5202844 b!5202845))

(assert (= (and b!5201899 ((_ is Cons!60531) (t!373808 (t!373808 zl!343)))) b!5202844))

(declare-fun m!6254892 () Bool)

(assert (=> b!5202844 m!6254892))

(declare-fun b!5202846 () Bool)

(declare-fun e!3239676 () Bool)

(declare-fun tp!1459244 () Bool)

(declare-fun tp!1459245 () Bool)

(assert (=> b!5202846 (= e!3239676 (and tp!1459244 tp!1459245))))

(assert (=> b!5201900 (= tp!1459002 e!3239676)))

(assert (= (and b!5201900 ((_ is Cons!60530) (exprs!4669 (h!66979 (t!373808 zl!343))))) b!5202846))

(declare-fun b!5202848 () Bool)

(declare-fun e!3239677 () Bool)

(declare-fun tp!1459250 () Bool)

(declare-fun tp!1459247 () Bool)

(assert (=> b!5202848 (= e!3239677 (and tp!1459250 tp!1459247))))

(declare-fun b!5202849 () Bool)

(declare-fun tp!1459249 () Bool)

(assert (=> b!5202849 (= e!3239677 tp!1459249)))

(declare-fun b!5202847 () Bool)

(assert (=> b!5202847 (= e!3239677 tp_is_empty!38823)))

(assert (=> b!5201880 (= tp!1458982 e!3239677)))

(declare-fun b!5202850 () Bool)

(declare-fun tp!1459248 () Bool)

(declare-fun tp!1459246 () Bool)

(assert (=> b!5202850 (= e!3239677 (and tp!1459248 tp!1459246))))

(assert (= (and b!5201880 ((_ is ElementMatch!14785) (reg!15114 (regTwo!30082 r!7292)))) b!5202847))

(assert (= (and b!5201880 ((_ is Concat!23630) (reg!15114 (regTwo!30082 r!7292)))) b!5202848))

(assert (= (and b!5201880 ((_ is Star!14785) (reg!15114 (regTwo!30082 r!7292)))) b!5202849))

(assert (= (and b!5201880 ((_ is Union!14785) (reg!15114 (regTwo!30082 r!7292)))) b!5202850))

(declare-fun b!5202852 () Bool)

(declare-fun e!3239678 () Bool)

(declare-fun tp!1459255 () Bool)

(declare-fun tp!1459252 () Bool)

(assert (=> b!5202852 (= e!3239678 (and tp!1459255 tp!1459252))))

(declare-fun b!5202853 () Bool)

(declare-fun tp!1459254 () Bool)

(assert (=> b!5202853 (= e!3239678 tp!1459254)))

(declare-fun b!5202851 () Bool)

(assert (=> b!5202851 (= e!3239678 tp_is_empty!38823)))

(assert (=> b!5201881 (= tp!1458981 e!3239678)))

(declare-fun b!5202854 () Bool)

(declare-fun tp!1459253 () Bool)

(declare-fun tp!1459251 () Bool)

(assert (=> b!5202854 (= e!3239678 (and tp!1459253 tp!1459251))))

(assert (= (and b!5201881 ((_ is ElementMatch!14785) (regOne!30083 (regTwo!30082 r!7292)))) b!5202851))

(assert (= (and b!5201881 ((_ is Concat!23630) (regOne!30083 (regTwo!30082 r!7292)))) b!5202852))

(assert (= (and b!5201881 ((_ is Star!14785) (regOne!30083 (regTwo!30082 r!7292)))) b!5202853))

(assert (= (and b!5201881 ((_ is Union!14785) (regOne!30083 (regTwo!30082 r!7292)))) b!5202854))

(declare-fun b!5202856 () Bool)

(declare-fun e!3239679 () Bool)

(declare-fun tp!1459260 () Bool)

(declare-fun tp!1459257 () Bool)

(assert (=> b!5202856 (= e!3239679 (and tp!1459260 tp!1459257))))

(declare-fun b!5202857 () Bool)

(declare-fun tp!1459259 () Bool)

(assert (=> b!5202857 (= e!3239679 tp!1459259)))

(declare-fun b!5202855 () Bool)

(assert (=> b!5202855 (= e!3239679 tp_is_empty!38823)))

(assert (=> b!5201881 (= tp!1458979 e!3239679)))

(declare-fun b!5202858 () Bool)

(declare-fun tp!1459258 () Bool)

(declare-fun tp!1459256 () Bool)

(assert (=> b!5202858 (= e!3239679 (and tp!1459258 tp!1459256))))

(assert (= (and b!5201881 ((_ is ElementMatch!14785) (regTwo!30083 (regTwo!30082 r!7292)))) b!5202855))

(assert (= (and b!5201881 ((_ is Concat!23630) (regTwo!30083 (regTwo!30082 r!7292)))) b!5202856))

(assert (= (and b!5201881 ((_ is Star!14785) (regTwo!30083 (regTwo!30082 r!7292)))) b!5202857))

(assert (= (and b!5201881 ((_ is Union!14785) (regTwo!30083 (regTwo!30082 r!7292)))) b!5202858))

(declare-fun b!5202860 () Bool)

(declare-fun e!3239680 () Bool)

(declare-fun tp!1459265 () Bool)

(declare-fun tp!1459262 () Bool)

(assert (=> b!5202860 (= e!3239680 (and tp!1459265 tp!1459262))))

(declare-fun b!5202861 () Bool)

(declare-fun tp!1459264 () Bool)

(assert (=> b!5202861 (= e!3239680 tp!1459264)))

(declare-fun b!5202859 () Bool)

(assert (=> b!5202859 (= e!3239680 tp_is_empty!38823)))

(assert (=> b!5201892 (= tp!1458996 e!3239680)))

(declare-fun b!5202862 () Bool)

(declare-fun tp!1459263 () Bool)

(declare-fun tp!1459261 () Bool)

(assert (=> b!5202862 (= e!3239680 (and tp!1459263 tp!1459261))))

(assert (= (and b!5201892 ((_ is ElementMatch!14785) (h!66978 (exprs!4669 setElem!32992)))) b!5202859))

(assert (= (and b!5201892 ((_ is Concat!23630) (h!66978 (exprs!4669 setElem!32992)))) b!5202860))

(assert (= (and b!5201892 ((_ is Star!14785) (h!66978 (exprs!4669 setElem!32992)))) b!5202861))

(assert (= (and b!5201892 ((_ is Union!14785) (h!66978 (exprs!4669 setElem!32992)))) b!5202862))

(declare-fun b!5202863 () Bool)

(declare-fun e!3239681 () Bool)

(declare-fun tp!1459266 () Bool)

(declare-fun tp!1459267 () Bool)

(assert (=> b!5202863 (= e!3239681 (and tp!1459266 tp!1459267))))

(assert (=> b!5201892 (= tp!1458997 e!3239681)))

(assert (= (and b!5201892 ((_ is Cons!60530) (t!373807 (exprs!4669 setElem!32992)))) b!5202863))

(declare-fun b!5202865 () Bool)

(declare-fun e!3239682 () Bool)

(declare-fun tp!1459272 () Bool)

(declare-fun tp!1459269 () Bool)

(assert (=> b!5202865 (= e!3239682 (and tp!1459272 tp!1459269))))

(declare-fun b!5202866 () Bool)

(declare-fun tp!1459271 () Bool)

(assert (=> b!5202866 (= e!3239682 tp!1459271)))

(declare-fun b!5202864 () Bool)

(assert (=> b!5202864 (= e!3239682 tp_is_empty!38823)))

(assert (=> b!5201886 (= tp!1458988 e!3239682)))

(declare-fun b!5202867 () Bool)

(declare-fun tp!1459270 () Bool)

(declare-fun tp!1459268 () Bool)

(assert (=> b!5202867 (= e!3239682 (and tp!1459270 tp!1459268))))

(assert (= (and b!5201886 ((_ is ElementMatch!14785) (h!66978 (exprs!4669 (h!66979 zl!343))))) b!5202864))

(assert (= (and b!5201886 ((_ is Concat!23630) (h!66978 (exprs!4669 (h!66979 zl!343))))) b!5202865))

(assert (= (and b!5201886 ((_ is Star!14785) (h!66978 (exprs!4669 (h!66979 zl!343))))) b!5202866))

(assert (= (and b!5201886 ((_ is Union!14785) (h!66978 (exprs!4669 (h!66979 zl!343))))) b!5202867))

(declare-fun b!5202868 () Bool)

(declare-fun e!3239683 () Bool)

(declare-fun tp!1459273 () Bool)

(declare-fun tp!1459274 () Bool)

(assert (=> b!5202868 (= e!3239683 (and tp!1459273 tp!1459274))))

(assert (=> b!5201886 (= tp!1458989 e!3239683)))

(assert (= (and b!5201886 ((_ is Cons!60530) (t!373807 (exprs!4669 (h!66979 zl!343))))) b!5202868))

(declare-fun b!5202870 () Bool)

(declare-fun e!3239684 () Bool)

(declare-fun tp!1459279 () Bool)

(declare-fun tp!1459276 () Bool)

(assert (=> b!5202870 (= e!3239684 (and tp!1459279 tp!1459276))))

(declare-fun b!5202871 () Bool)

(declare-fun tp!1459278 () Bool)

(assert (=> b!5202871 (= e!3239684 tp!1459278)))

(declare-fun b!5202869 () Bool)

(assert (=> b!5202869 (= e!3239684 tp_is_empty!38823)))

(assert (=> b!5201907 (= tp!1459011 e!3239684)))

(declare-fun b!5202872 () Bool)

(declare-fun tp!1459277 () Bool)

(declare-fun tp!1459275 () Bool)

(assert (=> b!5202872 (= e!3239684 (and tp!1459277 tp!1459275))))

(assert (= (and b!5201907 ((_ is ElementMatch!14785) (regOne!30082 (regOne!30083 r!7292)))) b!5202869))

(assert (= (and b!5201907 ((_ is Concat!23630) (regOne!30082 (regOne!30083 r!7292)))) b!5202870))

(assert (= (and b!5201907 ((_ is Star!14785) (regOne!30082 (regOne!30083 r!7292)))) b!5202871))

(assert (= (and b!5201907 ((_ is Union!14785) (regOne!30082 (regOne!30083 r!7292)))) b!5202872))

(declare-fun b!5202874 () Bool)

(declare-fun e!3239685 () Bool)

(declare-fun tp!1459284 () Bool)

(declare-fun tp!1459281 () Bool)

(assert (=> b!5202874 (= e!3239685 (and tp!1459284 tp!1459281))))

(declare-fun b!5202875 () Bool)

(declare-fun tp!1459283 () Bool)

(assert (=> b!5202875 (= e!3239685 tp!1459283)))

(declare-fun b!5202873 () Bool)

(assert (=> b!5202873 (= e!3239685 tp_is_empty!38823)))

(assert (=> b!5201907 (= tp!1459008 e!3239685)))

(declare-fun b!5202876 () Bool)

(declare-fun tp!1459282 () Bool)

(declare-fun tp!1459280 () Bool)

(assert (=> b!5202876 (= e!3239685 (and tp!1459282 tp!1459280))))

(assert (= (and b!5201907 ((_ is ElementMatch!14785) (regTwo!30082 (regOne!30083 r!7292)))) b!5202873))

(assert (= (and b!5201907 ((_ is Concat!23630) (regTwo!30082 (regOne!30083 r!7292)))) b!5202874))

(assert (= (and b!5201907 ((_ is Star!14785) (regTwo!30082 (regOne!30083 r!7292)))) b!5202875))

(assert (= (and b!5201907 ((_ is Union!14785) (regTwo!30082 (regOne!30083 r!7292)))) b!5202876))

(declare-fun b!5202878 () Bool)

(declare-fun e!3239686 () Bool)

(declare-fun tp!1459289 () Bool)

(declare-fun tp!1459286 () Bool)

(assert (=> b!5202878 (= e!3239686 (and tp!1459289 tp!1459286))))

(declare-fun b!5202879 () Bool)

(declare-fun tp!1459288 () Bool)

(assert (=> b!5202879 (= e!3239686 tp!1459288)))

(declare-fun b!5202877 () Bool)

(assert (=> b!5202877 (= e!3239686 tp_is_empty!38823)))

(assert (=> b!5201916 (= tp!1459020 e!3239686)))

(declare-fun b!5202880 () Bool)

(declare-fun tp!1459287 () Bool)

(declare-fun tp!1459285 () Bool)

(assert (=> b!5202880 (= e!3239686 (and tp!1459287 tp!1459285))))

(assert (= (and b!5201916 ((_ is ElementMatch!14785) (reg!15114 (reg!15114 r!7292)))) b!5202877))

(assert (= (and b!5201916 ((_ is Concat!23630) (reg!15114 (reg!15114 r!7292)))) b!5202878))

(assert (= (and b!5201916 ((_ is Star!14785) (reg!15114 (reg!15114 r!7292)))) b!5202879))

(assert (= (and b!5201916 ((_ is Union!14785) (reg!15114 (reg!15114 r!7292)))) b!5202880))

(declare-fun b!5202882 () Bool)

(declare-fun e!3239687 () Bool)

(declare-fun tp!1459294 () Bool)

(declare-fun tp!1459291 () Bool)

(assert (=> b!5202882 (= e!3239687 (and tp!1459294 tp!1459291))))

(declare-fun b!5202883 () Bool)

(declare-fun tp!1459293 () Bool)

(assert (=> b!5202883 (= e!3239687 tp!1459293)))

(declare-fun b!5202881 () Bool)

(assert (=> b!5202881 (= e!3239687 tp_is_empty!38823)))

(assert (=> b!5201917 (= tp!1459019 e!3239687)))

(declare-fun b!5202884 () Bool)

(declare-fun tp!1459292 () Bool)

(declare-fun tp!1459290 () Bool)

(assert (=> b!5202884 (= e!3239687 (and tp!1459292 tp!1459290))))

(assert (= (and b!5201917 ((_ is ElementMatch!14785) (regOne!30083 (reg!15114 r!7292)))) b!5202881))

(assert (= (and b!5201917 ((_ is Concat!23630) (regOne!30083 (reg!15114 r!7292)))) b!5202882))

(assert (= (and b!5201917 ((_ is Star!14785) (regOne!30083 (reg!15114 r!7292)))) b!5202883))

(assert (= (and b!5201917 ((_ is Union!14785) (regOne!30083 (reg!15114 r!7292)))) b!5202884))

(declare-fun b!5202886 () Bool)

(declare-fun e!3239688 () Bool)

(declare-fun tp!1459299 () Bool)

(declare-fun tp!1459296 () Bool)

(assert (=> b!5202886 (= e!3239688 (and tp!1459299 tp!1459296))))

(declare-fun b!5202887 () Bool)

(declare-fun tp!1459298 () Bool)

(assert (=> b!5202887 (= e!3239688 tp!1459298)))

(declare-fun b!5202885 () Bool)

(assert (=> b!5202885 (= e!3239688 tp_is_empty!38823)))

(assert (=> b!5201917 (= tp!1459017 e!3239688)))

(declare-fun b!5202888 () Bool)

(declare-fun tp!1459297 () Bool)

(declare-fun tp!1459295 () Bool)

(assert (=> b!5202888 (= e!3239688 (and tp!1459297 tp!1459295))))

(assert (= (and b!5201917 ((_ is ElementMatch!14785) (regTwo!30083 (reg!15114 r!7292)))) b!5202885))

(assert (= (and b!5201917 ((_ is Concat!23630) (regTwo!30083 (reg!15114 r!7292)))) b!5202886))

(assert (= (and b!5201917 ((_ is Star!14785) (regTwo!30083 (reg!15114 r!7292)))) b!5202887))

(assert (= (and b!5201917 ((_ is Union!14785) (regTwo!30083 (reg!15114 r!7292)))) b!5202888))

(declare-fun b!5202890 () Bool)

(declare-fun e!3239689 () Bool)

(declare-fun tp!1459304 () Bool)

(declare-fun tp!1459301 () Bool)

(assert (=> b!5202890 (= e!3239689 (and tp!1459304 tp!1459301))))

(declare-fun b!5202891 () Bool)

(declare-fun tp!1459303 () Bool)

(assert (=> b!5202891 (= e!3239689 tp!1459303)))

(declare-fun b!5202889 () Bool)

(assert (=> b!5202889 (= e!3239689 tp_is_empty!38823)))

(assert (=> b!5201908 (= tp!1459010 e!3239689)))

(declare-fun b!5202892 () Bool)

(declare-fun tp!1459302 () Bool)

(declare-fun tp!1459300 () Bool)

(assert (=> b!5202892 (= e!3239689 (and tp!1459302 tp!1459300))))

(assert (= (and b!5201908 ((_ is ElementMatch!14785) (reg!15114 (regOne!30083 r!7292)))) b!5202889))

(assert (= (and b!5201908 ((_ is Concat!23630) (reg!15114 (regOne!30083 r!7292)))) b!5202890))

(assert (= (and b!5201908 ((_ is Star!14785) (reg!15114 (regOne!30083 r!7292)))) b!5202891))

(assert (= (and b!5201908 ((_ is Union!14785) (reg!15114 (regOne!30083 r!7292)))) b!5202892))

(declare-fun b!5202894 () Bool)

(declare-fun e!3239690 () Bool)

(declare-fun tp!1459309 () Bool)

(declare-fun tp!1459306 () Bool)

(assert (=> b!5202894 (= e!3239690 (and tp!1459309 tp!1459306))))

(declare-fun b!5202895 () Bool)

(declare-fun tp!1459308 () Bool)

(assert (=> b!5202895 (= e!3239690 tp!1459308)))

(declare-fun b!5202893 () Bool)

(assert (=> b!5202893 (= e!3239690 tp_is_empty!38823)))

(assert (=> b!5201909 (= tp!1459009 e!3239690)))

(declare-fun b!5202896 () Bool)

(declare-fun tp!1459307 () Bool)

(declare-fun tp!1459305 () Bool)

(assert (=> b!5202896 (= e!3239690 (and tp!1459307 tp!1459305))))

(assert (= (and b!5201909 ((_ is ElementMatch!14785) (regOne!30083 (regOne!30083 r!7292)))) b!5202893))

(assert (= (and b!5201909 ((_ is Concat!23630) (regOne!30083 (regOne!30083 r!7292)))) b!5202894))

(assert (= (and b!5201909 ((_ is Star!14785) (regOne!30083 (regOne!30083 r!7292)))) b!5202895))

(assert (= (and b!5201909 ((_ is Union!14785) (regOne!30083 (regOne!30083 r!7292)))) b!5202896))

(declare-fun b!5202898 () Bool)

(declare-fun e!3239691 () Bool)

(declare-fun tp!1459314 () Bool)

(declare-fun tp!1459311 () Bool)

(assert (=> b!5202898 (= e!3239691 (and tp!1459314 tp!1459311))))

(declare-fun b!5202899 () Bool)

(declare-fun tp!1459313 () Bool)

(assert (=> b!5202899 (= e!3239691 tp!1459313)))

(declare-fun b!5202897 () Bool)

(assert (=> b!5202897 (= e!3239691 tp_is_empty!38823)))

(assert (=> b!5201909 (= tp!1459007 e!3239691)))

(declare-fun b!5202900 () Bool)

(declare-fun tp!1459312 () Bool)

(declare-fun tp!1459310 () Bool)

(assert (=> b!5202900 (= e!3239691 (and tp!1459312 tp!1459310))))

(assert (= (and b!5201909 ((_ is ElementMatch!14785) (regTwo!30083 (regOne!30083 r!7292)))) b!5202897))

(assert (= (and b!5201909 ((_ is Concat!23630) (regTwo!30083 (regOne!30083 r!7292)))) b!5202898))

(assert (= (and b!5201909 ((_ is Star!14785) (regTwo!30083 (regOne!30083 r!7292)))) b!5202899))

(assert (= (and b!5201909 ((_ is Union!14785) (regTwo!30083 (regOne!30083 r!7292)))) b!5202900))

(declare-fun b!5202902 () Bool)

(declare-fun e!3239692 () Bool)

(declare-fun tp!1459319 () Bool)

(declare-fun tp!1459316 () Bool)

(assert (=> b!5202902 (= e!3239692 (and tp!1459319 tp!1459316))))

(declare-fun b!5202903 () Bool)

(declare-fun tp!1459318 () Bool)

(assert (=> b!5202903 (= e!3239692 tp!1459318)))

(declare-fun b!5202901 () Bool)

(assert (=> b!5202901 (= e!3239692 tp_is_empty!38823)))

(assert (=> b!5201915 (= tp!1459021 e!3239692)))

(declare-fun b!5202904 () Bool)

(declare-fun tp!1459317 () Bool)

(declare-fun tp!1459315 () Bool)

(assert (=> b!5202904 (= e!3239692 (and tp!1459317 tp!1459315))))

(assert (= (and b!5201915 ((_ is ElementMatch!14785) (regOne!30082 (reg!15114 r!7292)))) b!5202901))

(assert (= (and b!5201915 ((_ is Concat!23630) (regOne!30082 (reg!15114 r!7292)))) b!5202902))

(assert (= (and b!5201915 ((_ is Star!14785) (regOne!30082 (reg!15114 r!7292)))) b!5202903))

(assert (= (and b!5201915 ((_ is Union!14785) (regOne!30082 (reg!15114 r!7292)))) b!5202904))

(declare-fun b!5202906 () Bool)

(declare-fun e!3239693 () Bool)

(declare-fun tp!1459324 () Bool)

(declare-fun tp!1459321 () Bool)

(assert (=> b!5202906 (= e!3239693 (and tp!1459324 tp!1459321))))

(declare-fun b!5202907 () Bool)

(declare-fun tp!1459323 () Bool)

(assert (=> b!5202907 (= e!3239693 tp!1459323)))

(declare-fun b!5202905 () Bool)

(assert (=> b!5202905 (= e!3239693 tp_is_empty!38823)))

(assert (=> b!5201915 (= tp!1459018 e!3239693)))

(declare-fun b!5202908 () Bool)

(declare-fun tp!1459322 () Bool)

(declare-fun tp!1459320 () Bool)

(assert (=> b!5202908 (= e!3239693 (and tp!1459322 tp!1459320))))

(assert (= (and b!5201915 ((_ is ElementMatch!14785) (regTwo!30082 (reg!15114 r!7292)))) b!5202905))

(assert (= (and b!5201915 ((_ is Concat!23630) (regTwo!30082 (reg!15114 r!7292)))) b!5202906))

(assert (= (and b!5201915 ((_ is Star!14785) (regTwo!30082 (reg!15114 r!7292)))) b!5202907))

(assert (= (and b!5201915 ((_ is Union!14785) (regTwo!30082 (reg!15114 r!7292)))) b!5202908))

(declare-fun b!5202910 () Bool)

(declare-fun e!3239694 () Bool)

(declare-fun tp!1459329 () Bool)

(declare-fun tp!1459326 () Bool)

(assert (=> b!5202910 (= e!3239694 (and tp!1459329 tp!1459326))))

(declare-fun b!5202911 () Bool)

(declare-fun tp!1459328 () Bool)

(assert (=> b!5202911 (= e!3239694 tp!1459328)))

(declare-fun b!5202909 () Bool)

(assert (=> b!5202909 (= e!3239694 tp_is_empty!38823)))

(assert (=> b!5201875 (= tp!1458978 e!3239694)))

(declare-fun b!5202912 () Bool)

(declare-fun tp!1459327 () Bool)

(declare-fun tp!1459325 () Bool)

(assert (=> b!5202912 (= e!3239694 (and tp!1459327 tp!1459325))))

(assert (= (and b!5201875 ((_ is ElementMatch!14785) (regOne!30082 (regOne!30082 r!7292)))) b!5202909))

(assert (= (and b!5201875 ((_ is Concat!23630) (regOne!30082 (regOne!30082 r!7292)))) b!5202910))

(assert (= (and b!5201875 ((_ is Star!14785) (regOne!30082 (regOne!30082 r!7292)))) b!5202911))

(assert (= (and b!5201875 ((_ is Union!14785) (regOne!30082 (regOne!30082 r!7292)))) b!5202912))

(declare-fun b!5202914 () Bool)

(declare-fun e!3239695 () Bool)

(declare-fun tp!1459334 () Bool)

(declare-fun tp!1459331 () Bool)

(assert (=> b!5202914 (= e!3239695 (and tp!1459334 tp!1459331))))

(declare-fun b!5202915 () Bool)

(declare-fun tp!1459333 () Bool)

(assert (=> b!5202915 (= e!3239695 tp!1459333)))

(declare-fun b!5202913 () Bool)

(assert (=> b!5202913 (= e!3239695 tp_is_empty!38823)))

(assert (=> b!5201875 (= tp!1458975 e!3239695)))

(declare-fun b!5202916 () Bool)

(declare-fun tp!1459332 () Bool)

(declare-fun tp!1459330 () Bool)

(assert (=> b!5202916 (= e!3239695 (and tp!1459332 tp!1459330))))

(assert (= (and b!5201875 ((_ is ElementMatch!14785) (regTwo!30082 (regOne!30082 r!7292)))) b!5202913))

(assert (= (and b!5201875 ((_ is Concat!23630) (regTwo!30082 (regOne!30082 r!7292)))) b!5202914))

(assert (= (and b!5201875 ((_ is Star!14785) (regTwo!30082 (regOne!30082 r!7292)))) b!5202915))

(assert (= (and b!5201875 ((_ is Union!14785) (regTwo!30082 (regOne!30082 r!7292)))) b!5202916))

(declare-fun b!5202918 () Bool)

(declare-fun e!3239696 () Bool)

(declare-fun tp!1459339 () Bool)

(declare-fun tp!1459336 () Bool)

(assert (=> b!5202918 (= e!3239696 (and tp!1459339 tp!1459336))))

(declare-fun b!5202919 () Bool)

(declare-fun tp!1459338 () Bool)

(assert (=> b!5202919 (= e!3239696 tp!1459338)))

(declare-fun b!5202917 () Bool)

(assert (=> b!5202917 (= e!3239696 tp_is_empty!38823)))

(assert (=> b!5201876 (= tp!1458977 e!3239696)))

(declare-fun b!5202920 () Bool)

(declare-fun tp!1459337 () Bool)

(declare-fun tp!1459335 () Bool)

(assert (=> b!5202920 (= e!3239696 (and tp!1459337 tp!1459335))))

(assert (= (and b!5201876 ((_ is ElementMatch!14785) (reg!15114 (regOne!30082 r!7292)))) b!5202917))

(assert (= (and b!5201876 ((_ is Concat!23630) (reg!15114 (regOne!30082 r!7292)))) b!5202918))

(assert (= (and b!5201876 ((_ is Star!14785) (reg!15114 (regOne!30082 r!7292)))) b!5202919))

(assert (= (and b!5201876 ((_ is Union!14785) (reg!15114 (regOne!30082 r!7292)))) b!5202920))

(declare-fun condSetEmpty!33006 () Bool)

(assert (=> setNonEmpty!32998 (= condSetEmpty!33006 (= setRest!32998 ((as const (Array Context!8338 Bool)) false)))))

(declare-fun setRes!33006 () Bool)

(assert (=> setNonEmpty!32998 (= tp!1458995 setRes!33006)))

(declare-fun setIsEmpty!33006 () Bool)

(assert (=> setIsEmpty!33006 setRes!33006))

(declare-fun tp!1459341 () Bool)

(declare-fun e!3239697 () Bool)

(declare-fun setNonEmpty!33006 () Bool)

(declare-fun setElem!33006 () Context!8338)

(assert (=> setNonEmpty!33006 (= setRes!33006 (and tp!1459341 (inv!80209 setElem!33006) e!3239697))))

(declare-fun setRest!33006 () (InoxSet Context!8338))

(assert (=> setNonEmpty!33006 (= setRest!32998 ((_ map or) (store ((as const (Array Context!8338 Bool)) false) setElem!33006 true) setRest!33006))))

(declare-fun b!5202921 () Bool)

(declare-fun tp!1459340 () Bool)

(assert (=> b!5202921 (= e!3239697 tp!1459340)))

(assert (= (and setNonEmpty!32998 condSetEmpty!33006) setIsEmpty!33006))

(assert (= (and setNonEmpty!32998 (not condSetEmpty!33006)) setNonEmpty!33006))

(assert (= setNonEmpty!33006 b!5202921))

(declare-fun m!6254894 () Bool)

(assert (=> setNonEmpty!33006 m!6254894))

(declare-fun b_lambda!201343 () Bool)

(assert (= b_lambda!201325 (or d!1677800 b_lambda!201343)))

(declare-fun bs!1209576 () Bool)

(declare-fun d!1678228 () Bool)

(assert (= bs!1209576 (and d!1678228 d!1677800)))

(assert (=> bs!1209576 (= (dynLambda!23912 lambda!260646 (h!66978 (exprs!4669 (h!66979 zl!343)))) (validRegex!6521 (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(declare-fun m!6254896 () Bool)

(assert (=> bs!1209576 m!6254896))

(assert (=> b!5202602 d!1678228))

(declare-fun b_lambda!201345 () Bool)

(assert (= b_lambda!201315 (or d!1677808 b_lambda!201345)))

(declare-fun bs!1209577 () Bool)

(declare-fun d!1678230 () Bool)

(assert (= bs!1209577 (and d!1678230 d!1677808)))

(assert (=> bs!1209577 (= (dynLambda!23912 lambda!260652 (h!66978 lt!2141029)) (validRegex!6521 (h!66978 lt!2141029)))))

(declare-fun m!6254898 () Bool)

(assert (=> bs!1209577 m!6254898))

(assert (=> b!5202193 d!1678230))

(declare-fun b_lambda!201347 () Bool)

(assert (= b_lambda!201309 (or d!1677792 b_lambda!201347)))

(declare-fun bs!1209578 () Bool)

(declare-fun d!1678232 () Bool)

(assert (= bs!1209578 (and d!1678232 d!1677792)))

(assert (=> bs!1209578 (= (dynLambda!23912 lambda!260645 (h!66978 (exprs!4669 (h!66979 zl!343)))) (validRegex!6521 (h!66978 (exprs!4669 (h!66979 zl!343)))))))

(assert (=> bs!1209578 m!6254896))

(assert (=> b!5202126 d!1678232))

(declare-fun b_lambda!201349 () Bool)

(assert (= b_lambda!201303 (or b!5201198 b_lambda!201349)))

(assert (=> d!1677874 d!1677842))

(declare-fun b_lambda!201351 () Bool)

(assert (= b_lambda!201323 (or d!1677740 b_lambda!201351)))

(declare-fun bs!1209579 () Bool)

(declare-fun d!1678234 () Bool)

(assert (= bs!1209579 (and d!1678234 d!1677740)))

(assert (=> bs!1209579 (= (dynLambda!23912 lambda!260615 (h!66978 (exprs!4669 setElem!32992))) (validRegex!6521 (h!66978 (exprs!4669 setElem!32992))))))

(declare-fun m!6254900 () Bool)

(assert (=> bs!1209579 m!6254900))

(assert (=> b!5202525 d!1678234))

(declare-fun b_lambda!201353 () Bool)

(assert (= b_lambda!201327 (or d!1677802 b_lambda!201353)))

(declare-fun bs!1209580 () Bool)

(declare-fun d!1678236 () Bool)

(assert (= bs!1209580 (and d!1678236 d!1677802)))

(assert (=> bs!1209580 (= (dynLambda!23912 lambda!260649 (h!66978 (unfocusZipperList!227 zl!343))) (validRegex!6521 (h!66978 (unfocusZipperList!227 zl!343))))))

(declare-fun m!6254902 () Bool)

(assert (=> bs!1209580 m!6254902))

(assert (=> b!5202620 d!1678236))

(declare-fun b_lambda!201355 () Bool)

(assert (= b_lambda!201321 (or b!5201188 b_lambda!201355)))

(declare-fun bs!1209581 () Bool)

(declare-fun d!1678238 () Bool)

(assert (= bs!1209581 (and d!1678238 b!5201188)))

(assert (=> bs!1209581 (= (dynLambda!23912 lambda!260605 (h!66978 (t!373807 (t!373807 (exprs!4669 (h!66979 zl!343)))))) (validRegex!6521 (h!66978 (t!373807 (t!373807 (exprs!4669 (h!66979 zl!343)))))))))

(declare-fun m!6254904 () Bool)

(assert (=> bs!1209581 m!6254904))

(assert (=> b!5202416 d!1678238))

(check-sat (not b!5202853) (not bm!365784) (not d!1678212) (not b!5202841) (not b!5202908) (not b!5202902) (not bm!365681) (not b!5202916) (not bm!365787) (not bm!365788) (not b!5202498) (not b!5202484) (not b!5202450) (not d!1678116) (not b!5202501) (not b!5202826) (not b!5201992) (not b!5202456) (not setNonEmpty!33004) (not b!5202863) (not d!1678124) (not b!5202888) (not b!5202632) (not d!1678180) (not b!5202398) (not d!1677896) (not b!5202597) (not b!5202010) (not d!1678204) (not b!5202844) (not b!5202882) (not b!5202883) (not b!5202500) (not b!5202396) (not b!5202122) (not bm!365812) (not b!5202111) (not b!5202876) (not d!1678144) (not b!5202829) (not b!5202861) (not b!5202267) (not b!5202486) (not b!5202834) (not b!5202715) (not b!5202830) (not b!5202453) (not b!5202898) (not bm!365821) (not b!5202454) (not b!5202432) (not b!5202007) (not b!5202609) (not d!1678008) (not b!5202494) (not b!5202781) (not b!5202483) (not b!5202658) (not b!5202172) (not b!5202809) (not b!5202038) (not bm!365669) (not d!1677874) (not b!5202507) (not d!1677864) (not b!5202845) (not b!5202321) (not b_lambda!201353) (not b!5202654) (not b!5202487) (not d!1678042) (not b!5202892) (not b!5202874) (not b!5202645) (not b!5202317) (not b!5202319) (not b!5202842) (not bm!365700) (not b!5202579) (not b!5202818) (not b!5202831) (not b!5202423) (not b!5202843) (not b!5202315) (not b!5202912) (not b_lambda!201299) (not b!5202653) (not bm!365671) (not b!5202313) (not d!1678078) (not b!5202043) (not d!1677952) (not b!5202112) (not bm!365728) (not d!1677884) (not b!5202578) (not b!5202833) (not b!5202045) (not b!5202849) (not b!5202819) (not d!1677866) (not d!1678176) (not b!5202786) (not b!5202827) (not bm!365712) (not d!1678136) (not b!5202788) (not d!1677956) (not b!5202857) (not b!5202896) (not b!5202900) (not b!5202040) (not b!5202459) (not b!5202816) (not b!5202320) (not b!5201952) (not b!5202785) (not d!1678148) (not b!5202904) (not b!5202865) (not b_lambda!201297) (not b!5202767) (not b!5202808) (not b!5202032) (not d!1678110) (not d!1678206) (not bm!365815) (not b!5202312) (not d!1678170) (not bm!365776) (not b!5202919) (not bm!365799) (not b!5202899) (not b!5202871) (not d!1678012) (not b!5202854) (not b!5202878) (not d!1678122) (not bm!365693) (not b!5202894) (not d!1677998) (not b!5202866) (not b!5202914) (not bm!365690) (not b!5202858) (not b!5202480) (not bm!365730) (not bm!365795) (not b_lambda!201349) (not bm!365793) (not d!1678200) (not b!5202783) (not b!5202837) (not b!5202822) (not b!5202860) (not bm!365820) (not b!5202575) (not b_lambda!201343) (not d!1678120) (not b!5202467) (not b!5202825) (not bm!365755) (not b!5202497) (not bm!365683) (not d!1678214) (not b!5202113) (not b!5202782) (not bm!365717) (not b!5202200) (not bm!365781) (not d!1678196) (not b!5202838) (not d!1678138) (not b!5202903) (not b!5202789) (not b!5202817) (not bm!365692) (not b!5202017) (not bm!365786) (not b!5202664) (not b!5202815) (not bs!1209576) (not b!5202915) (not b!5202526) (not b!5202505) tp_is_empty!38823 (not b!5202812) (not b!5202095) (not b!5202576) (not b!5202906) (not b!5202821) (not b_lambda!201355) (not b!5202920) (not d!1677954) (not bs!1209581) (not d!1677940) (not b!5202621) (not b!5202659) (not bm!365714) (not b!5202417) (not b!5202438) (not b!5201953) (not b!5202127) (not d!1677900) (not bm!365797) (not bm!365813) (not bs!1209580) (not b!5202890) (not b!5202508) (not b_lambda!201347) (not b!5202870) (not bm!365715) (not b!5202856) (not d!1678132) (not b!5202503) (not bm!365789) (not b!5202848) (not b_lambda!201351) (not b!5202457) (not b!5202846) (not b!5202581) (not b!5202887) (not b!5202650) (not b!5202895) (not b!5202875) (not b!5202907) (not d!1678128) (not setNonEmpty!33006) (not b!5202850) (not b!5202879) (not b!5202891) (not bm!365757) (not bm!365747) (not b!5202867) (not d!1678146) (not bs!1209577) (not b!5202001) (not b!5202042) (not b!5202766) (not d!1677892) (not bm!365794) (not b!5202649) (not b!5201981) (not b!5202911) (not b!5202813) (not b!5202660) (not bm!365691) (not b!5202839) (not b!5202173) (not bm!365748) (not b!5202880) (not b!5202910) (not b!5202823) (not bm!365819) (not d!1678096) (not b!5202656) (not b!5202441) (not b!5202265) (not bs!1209578) (not b!5202807) (not b!5202835) (not bm!365670) (not bm!365780) (not b!5202872) (not d!1678202) (not b!5202884) (not bm!365775) (not b!5202921) (not b!5202300) (not bm!365685) (not b!5202489) (not bm!365807) (not b!5202868) (not b!5202603) (not b!5202765) (not b!5202714) (not bm!365686) (not bs!1209579) (not b!5202918) (not b_lambda!201345) (not b!5202852) (not b!5202600) (not b!5202572) (not b!5202473) (not b!5202886) (not d!1678108) (not bm!365684) (not b!5202662) (not b!5202862) (not bm!365798) (not b!5202194) (not b!5202811) (not d!1677978))
(check-sat)

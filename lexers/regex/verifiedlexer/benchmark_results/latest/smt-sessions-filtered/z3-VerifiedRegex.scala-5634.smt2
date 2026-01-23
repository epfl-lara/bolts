; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281886 () Bool)

(assert start!281886)

(declare-fun b!2890638 () Bool)

(declare-fun e!1826978 () Bool)

(declare-datatypes ((C!17828 0))(
  ( (C!17829 (val!10948 Int)) )
))
(declare-datatypes ((List!34624 0))(
  ( (Nil!34500) (Cons!34500 (h!39920 C!17828) (t!233667 List!34624)) )
))
(declare-datatypes ((Option!6496 0))(
  ( (None!6495) (Some!6495 (v!34621 List!34624)) )
))
(declare-fun lt!1020946 () Option!6496)

(declare-fun isDefined!5060 (Option!6496) Bool)

(assert (=> b!2890638 (= e!1826978 (not (isDefined!5060 lt!1020946)))))

(declare-fun b!2890639 () Bool)

(declare-fun e!1826977 () Bool)

(assert (=> b!2890639 (= e!1826977 e!1826978)))

(declare-fun res!1196265 () Bool)

(assert (=> b!2890639 (=> (not res!1196265) (not e!1826978))))

(get-info :version)

(assert (=> b!2890639 (= res!1196265 ((_ is Some!6495) lt!1020946))))

(declare-datatypes ((Regex!8823 0))(
  ( (ElementMatch!8823 (c!469886 C!17828)) (Concat!14144 (regOne!18158 Regex!8823) (regTwo!18158 Regex!8823)) (EmptyExpr!8823) (Star!8823 (reg!9152 Regex!8823)) (EmptyLang!8823) (Union!8823 (regOne!18159 Regex!8823) (regTwo!18159 Regex!8823)) )
))
(declare-fun r!23079 () Regex!8823)

(declare-fun getLanguageWitness!530 (Regex!8823) Option!6496)

(assert (=> b!2890639 (= lt!1020946 (getLanguageWitness!530 (regOne!18159 r!23079)))))

(declare-fun b!2890640 () Bool)

(declare-fun res!1196264 () Bool)

(assert (=> b!2890640 (=> (not res!1196264) (not e!1826978))))

(declare-fun validRegex!3596 (Regex!8823) Bool)

(assert (=> b!2890640 (= res!1196264 (validRegex!3596 (regOne!18159 r!23079)))))

(declare-fun b!2890641 () Bool)

(declare-fun res!1196267 () Bool)

(assert (=> b!2890641 (=> (not res!1196267) (not e!1826977))))

(assert (=> b!2890641 (= res!1196267 (isDefined!5060 (getLanguageWitness!530 r!23079)))))

(declare-fun b!2890642 () Bool)

(declare-fun res!1196263 () Bool)

(assert (=> b!2890642 (=> (not res!1196263) (not e!1826977))))

(assert (=> b!2890642 (= res!1196263 (and (not ((_ is EmptyExpr!8823) r!23079)) (not ((_ is EmptyLang!8823) r!23079)) (not ((_ is ElementMatch!8823) r!23079)) (not ((_ is Star!8823) r!23079)) ((_ is Union!8823) r!23079)))))

(declare-fun b!2890643 () Bool)

(declare-fun e!1826979 () Bool)

(declare-fun tp!928245 () Bool)

(declare-fun tp!928249 () Bool)

(assert (=> b!2890643 (= e!1826979 (and tp!928245 tp!928249))))

(declare-fun b!2890644 () Bool)

(declare-fun tp!928248 () Bool)

(declare-fun tp!928247 () Bool)

(assert (=> b!2890644 (= e!1826979 (and tp!928248 tp!928247))))

(declare-fun b!2890645 () Bool)

(declare-fun tp_is_empty!15233 () Bool)

(assert (=> b!2890645 (= e!1826979 tp_is_empty!15233)))

(declare-fun b!2890646 () Bool)

(declare-fun tp!928246 () Bool)

(assert (=> b!2890646 (= e!1826979 tp!928246)))

(declare-fun res!1196266 () Bool)

(assert (=> start!281886 (=> (not res!1196266) (not e!1826977))))

(assert (=> start!281886 (= res!1196266 (validRegex!3596 r!23079))))

(assert (=> start!281886 e!1826977))

(assert (=> start!281886 e!1826979))

(assert (= (and start!281886 res!1196266) b!2890641))

(assert (= (and b!2890641 res!1196267) b!2890642))

(assert (= (and b!2890642 res!1196263) b!2890639))

(assert (= (and b!2890639 res!1196265) b!2890640))

(assert (= (and b!2890640 res!1196264) b!2890638))

(assert (= (and start!281886 ((_ is ElementMatch!8823) r!23079)) b!2890645))

(assert (= (and start!281886 ((_ is Concat!14144) r!23079)) b!2890644))

(assert (= (and start!281886 ((_ is Star!8823) r!23079)) b!2890646))

(assert (= (and start!281886 ((_ is Union!8823) r!23079)) b!2890643))

(declare-fun m!3302355 () Bool)

(assert (=> b!2890639 m!3302355))

(declare-fun m!3302357 () Bool)

(assert (=> b!2890640 m!3302357))

(declare-fun m!3302359 () Bool)

(assert (=> b!2890638 m!3302359))

(declare-fun m!3302361 () Bool)

(assert (=> start!281886 m!3302361))

(declare-fun m!3302363 () Bool)

(assert (=> b!2890641 m!3302363))

(assert (=> b!2890641 m!3302363))

(declare-fun m!3302365 () Bool)

(assert (=> b!2890641 m!3302365))

(check-sat (not b!2890646) (not b!2890639) (not b!2890638) (not b!2890644) (not start!281886) (not b!2890641) (not b!2890643) (not b!2890640) tp_is_empty!15233)
(check-sat)
(get-model)

(declare-fun d!834399 () Bool)

(declare-fun isEmpty!18798 (Option!6496) Bool)

(assert (=> d!834399 (= (isDefined!5060 (getLanguageWitness!530 r!23079)) (not (isEmpty!18798 (getLanguageWitness!530 r!23079))))))

(declare-fun bs!523867 () Bool)

(assert (= bs!523867 d!834399))

(assert (=> bs!523867 m!3302363))

(declare-fun m!3302367 () Bool)

(assert (=> bs!523867 m!3302367))

(assert (=> b!2890641 d!834399))

(declare-fun b!2890711 () Bool)

(declare-fun e!1827013 () Option!6496)

(declare-fun e!1827015 () Option!6496)

(assert (=> b!2890711 (= e!1827013 e!1827015)))

(declare-fun c!469925 () Bool)

(assert (=> b!2890711 (= c!469925 ((_ is Star!8823) r!23079))))

(declare-fun b!2890712 () Bool)

(declare-fun e!1827012 () Option!6496)

(assert (=> b!2890712 (= e!1827012 None!6495)))

(declare-fun b!2890713 () Bool)

(declare-fun e!1827018 () Option!6496)

(assert (=> b!2890713 (= e!1827018 None!6495)))

(declare-fun b!2890714 () Bool)

(declare-fun e!1827016 () Option!6496)

(declare-fun lt!1020959 () Option!6496)

(assert (=> b!2890714 (= e!1827016 lt!1020959)))

(declare-fun b!2890715 () Bool)

(declare-fun e!1827017 () Option!6496)

(assert (=> b!2890715 (= e!1827017 (Some!6495 Nil!34500))))

(declare-fun b!2890716 () Bool)

(declare-fun c!469922 () Bool)

(assert (=> b!2890716 (= c!469922 ((_ is ElementMatch!8823) r!23079))))

(declare-fun e!1827014 () Option!6496)

(assert (=> b!2890716 (= e!1827014 e!1827013)))

(declare-fun b!2890717 () Bool)

(assert (=> b!2890717 (= e!1827014 None!6495)))

(declare-fun b!2890718 () Bool)

(declare-fun c!469920 () Bool)

(assert (=> b!2890718 (= c!469920 ((_ is Union!8823) r!23079))))

(declare-fun e!1827019 () Option!6496)

(assert (=> b!2890718 (= e!1827015 e!1827019)))

(declare-fun d!834401 () Bool)

(declare-fun c!469919 () Bool)

(assert (=> d!834401 (= c!469919 ((_ is EmptyExpr!8823) r!23079))))

(assert (=> d!834401 (= (getLanguageWitness!530 r!23079) e!1827017)))

(declare-fun b!2890719 () Bool)

(declare-fun lt!1020960 () Option!6496)

(declare-fun lt!1020961 () Option!6496)

(declare-fun ++!8223 (List!34624 List!34624) List!34624)

(assert (=> b!2890719 (= e!1827012 (Some!6495 (++!8223 (v!34621 lt!1020960) (v!34621 lt!1020961))))))

(declare-fun b!2890720 () Bool)

(declare-fun call!187658 () Option!6496)

(assert (=> b!2890720 (= e!1827016 call!187658)))

(declare-fun b!2890721 () Bool)

(declare-fun c!469926 () Bool)

(assert (=> b!2890721 (= c!469926 ((_ is Some!6495) lt!1020961))))

(declare-fun call!187657 () Option!6496)

(assert (=> b!2890721 (= lt!1020961 call!187657)))

(assert (=> b!2890721 (= e!1827018 e!1827012)))

(declare-fun b!2890722 () Bool)

(assert (=> b!2890722 (= e!1827017 e!1827014)))

(declare-fun c!469923 () Bool)

(assert (=> b!2890722 (= c!469923 ((_ is EmptyLang!8823) r!23079))))

(declare-fun b!2890723 () Bool)

(assert (=> b!2890723 (= e!1827013 (Some!6495 (Cons!34500 (c!469886 r!23079) Nil!34500)))))

(declare-fun b!2890724 () Bool)

(assert (=> b!2890724 (= e!1827015 (Some!6495 Nil!34500))))

(declare-fun bm!187652 () Bool)

(assert (=> bm!187652 (= call!187657 (getLanguageWitness!530 (ite c!469920 (regOne!18159 r!23079) (regTwo!18158 r!23079))))))

(declare-fun b!2890725 () Bool)

(assert (=> b!2890725 (= e!1827019 e!1827016)))

(assert (=> b!2890725 (= lt!1020959 call!187657)))

(declare-fun c!469921 () Bool)

(assert (=> b!2890725 (= c!469921 ((_ is Some!6495) lt!1020959))))

(declare-fun bm!187653 () Bool)

(assert (=> bm!187653 (= call!187658 (getLanguageWitness!530 (ite c!469920 (regTwo!18159 r!23079) (regOne!18158 r!23079))))))

(declare-fun b!2890726 () Bool)

(assert (=> b!2890726 (= e!1827019 e!1827018)))

(assert (=> b!2890726 (= lt!1020960 call!187658)))

(declare-fun c!469924 () Bool)

(assert (=> b!2890726 (= c!469924 ((_ is Some!6495) lt!1020960))))

(assert (= (and d!834401 c!469919) b!2890715))

(assert (= (and d!834401 (not c!469919)) b!2890722))

(assert (= (and b!2890722 c!469923) b!2890717))

(assert (= (and b!2890722 (not c!469923)) b!2890716))

(assert (= (and b!2890716 c!469922) b!2890723))

(assert (= (and b!2890716 (not c!469922)) b!2890711))

(assert (= (and b!2890711 c!469925) b!2890724))

(assert (= (and b!2890711 (not c!469925)) b!2890718))

(assert (= (and b!2890718 c!469920) b!2890725))

(assert (= (and b!2890718 (not c!469920)) b!2890726))

(assert (= (and b!2890725 c!469921) b!2890714))

(assert (= (and b!2890725 (not c!469921)) b!2890720))

(assert (= (and b!2890726 c!469924) b!2890721))

(assert (= (and b!2890726 (not c!469924)) b!2890713))

(assert (= (and b!2890721 c!469926) b!2890719))

(assert (= (and b!2890721 (not c!469926)) b!2890712))

(assert (= (or b!2890720 b!2890726) bm!187653))

(assert (= (or b!2890725 b!2890721) bm!187652))

(declare-fun m!3302369 () Bool)

(assert (=> b!2890719 m!3302369))

(declare-fun m!3302371 () Bool)

(assert (=> bm!187652 m!3302371))

(declare-fun m!3302373 () Bool)

(assert (=> bm!187653 m!3302373))

(assert (=> b!2890641 d!834401))

(declare-fun b!2890779 () Bool)

(declare-fun e!1827059 () Bool)

(declare-fun e!1827061 () Bool)

(assert (=> b!2890779 (= e!1827059 e!1827061)))

(declare-fun res!1196290 () Bool)

(declare-fun nullable!2724 (Regex!8823) Bool)

(assert (=> b!2890779 (= res!1196290 (not (nullable!2724 (reg!9152 (regOne!18159 r!23079)))))))

(assert (=> b!2890779 (=> (not res!1196290) (not e!1827061))))

(declare-fun b!2890780 () Bool)

(declare-fun e!1827060 () Bool)

(declare-fun call!187673 () Bool)

(assert (=> b!2890780 (= e!1827060 call!187673)))

(declare-fun bm!187668 () Bool)

(declare-fun c!469943 () Bool)

(declare-fun call!187675 () Bool)

(declare-fun c!469944 () Bool)

(assert (=> bm!187668 (= call!187675 (validRegex!3596 (ite c!469944 (reg!9152 (regOne!18159 r!23079)) (ite c!469943 (regTwo!18159 (regOne!18159 r!23079)) (regTwo!18158 (regOne!18159 r!23079))))))))

(declare-fun b!2890781 () Bool)

(declare-fun e!1827062 () Bool)

(assert (=> b!2890781 (= e!1827062 e!1827059)))

(assert (=> b!2890781 (= c!469944 ((_ is Star!8823) (regOne!18159 r!23079)))))

(declare-fun bm!187669 () Bool)

(declare-fun call!187674 () Bool)

(assert (=> bm!187669 (= call!187674 (validRegex!3596 (ite c!469943 (regOne!18159 (regOne!18159 r!23079)) (regOne!18158 (regOne!18159 r!23079)))))))

(declare-fun b!2890782 () Bool)

(declare-fun res!1196291 () Bool)

(declare-fun e!1827057 () Bool)

(assert (=> b!2890782 (=> res!1196291 e!1827057)))

(assert (=> b!2890782 (= res!1196291 (not ((_ is Concat!14144) (regOne!18159 r!23079))))))

(declare-fun e!1827056 () Bool)

(assert (=> b!2890782 (= e!1827056 e!1827057)))

(declare-fun b!2890783 () Bool)

(assert (=> b!2890783 (= e!1827059 e!1827056)))

(assert (=> b!2890783 (= c!469943 ((_ is Union!8823) (regOne!18159 r!23079)))))

(declare-fun bm!187670 () Bool)

(assert (=> bm!187670 (= call!187673 call!187675)))

(declare-fun d!834405 () Bool)

(declare-fun res!1196288 () Bool)

(assert (=> d!834405 (=> res!1196288 e!1827062)))

(assert (=> d!834405 (= res!1196288 ((_ is ElementMatch!8823) (regOne!18159 r!23079)))))

(assert (=> d!834405 (= (validRegex!3596 (regOne!18159 r!23079)) e!1827062)))

(declare-fun b!2890784 () Bool)

(declare-fun e!1827058 () Bool)

(assert (=> b!2890784 (= e!1827057 e!1827058)))

(declare-fun res!1196292 () Bool)

(assert (=> b!2890784 (=> (not res!1196292) (not e!1827058))))

(assert (=> b!2890784 (= res!1196292 call!187674)))

(declare-fun b!2890785 () Bool)

(declare-fun res!1196289 () Bool)

(assert (=> b!2890785 (=> (not res!1196289) (not e!1827060))))

(assert (=> b!2890785 (= res!1196289 call!187674)))

(assert (=> b!2890785 (= e!1827056 e!1827060)))

(declare-fun b!2890786 () Bool)

(assert (=> b!2890786 (= e!1827058 call!187673)))

(declare-fun b!2890787 () Bool)

(assert (=> b!2890787 (= e!1827061 call!187675)))

(assert (= (and d!834405 (not res!1196288)) b!2890781))

(assert (= (and b!2890781 c!469944) b!2890779))

(assert (= (and b!2890781 (not c!469944)) b!2890783))

(assert (= (and b!2890779 res!1196290) b!2890787))

(assert (= (and b!2890783 c!469943) b!2890785))

(assert (= (and b!2890783 (not c!469943)) b!2890782))

(assert (= (and b!2890785 res!1196289) b!2890780))

(assert (= (and b!2890782 (not res!1196291)) b!2890784))

(assert (= (and b!2890784 res!1196292) b!2890786))

(assert (= (or b!2890780 b!2890786) bm!187670))

(assert (= (or b!2890785 b!2890784) bm!187669))

(assert (= (or b!2890787 bm!187670) bm!187668))

(declare-fun m!3302383 () Bool)

(assert (=> b!2890779 m!3302383))

(declare-fun m!3302385 () Bool)

(assert (=> bm!187668 m!3302385))

(declare-fun m!3302387 () Bool)

(assert (=> bm!187669 m!3302387))

(assert (=> b!2890640 d!834405))

(declare-fun b!2890788 () Bool)

(declare-fun e!1827066 () Bool)

(declare-fun e!1827068 () Bool)

(assert (=> b!2890788 (= e!1827066 e!1827068)))

(declare-fun res!1196295 () Bool)

(assert (=> b!2890788 (= res!1196295 (not (nullable!2724 (reg!9152 r!23079))))))

(assert (=> b!2890788 (=> (not res!1196295) (not e!1827068))))

(declare-fun b!2890789 () Bool)

(declare-fun e!1827067 () Bool)

(declare-fun call!187676 () Bool)

(assert (=> b!2890789 (= e!1827067 call!187676)))

(declare-fun c!469945 () Bool)

(declare-fun call!187678 () Bool)

(declare-fun c!469946 () Bool)

(declare-fun bm!187671 () Bool)

(assert (=> bm!187671 (= call!187678 (validRegex!3596 (ite c!469946 (reg!9152 r!23079) (ite c!469945 (regTwo!18159 r!23079) (regTwo!18158 r!23079)))))))

(declare-fun b!2890790 () Bool)

(declare-fun e!1827069 () Bool)

(assert (=> b!2890790 (= e!1827069 e!1827066)))

(assert (=> b!2890790 (= c!469946 ((_ is Star!8823) r!23079))))

(declare-fun bm!187672 () Bool)

(declare-fun call!187677 () Bool)

(assert (=> bm!187672 (= call!187677 (validRegex!3596 (ite c!469945 (regOne!18159 r!23079) (regOne!18158 r!23079))))))

(declare-fun b!2890791 () Bool)

(declare-fun res!1196296 () Bool)

(declare-fun e!1827064 () Bool)

(assert (=> b!2890791 (=> res!1196296 e!1827064)))

(assert (=> b!2890791 (= res!1196296 (not ((_ is Concat!14144) r!23079)))))

(declare-fun e!1827063 () Bool)

(assert (=> b!2890791 (= e!1827063 e!1827064)))

(declare-fun b!2890792 () Bool)

(assert (=> b!2890792 (= e!1827066 e!1827063)))

(assert (=> b!2890792 (= c!469945 ((_ is Union!8823) r!23079))))

(declare-fun bm!187673 () Bool)

(assert (=> bm!187673 (= call!187676 call!187678)))

(declare-fun d!834411 () Bool)

(declare-fun res!1196293 () Bool)

(assert (=> d!834411 (=> res!1196293 e!1827069)))

(assert (=> d!834411 (= res!1196293 ((_ is ElementMatch!8823) r!23079))))

(assert (=> d!834411 (= (validRegex!3596 r!23079) e!1827069)))

(declare-fun b!2890793 () Bool)

(declare-fun e!1827065 () Bool)

(assert (=> b!2890793 (= e!1827064 e!1827065)))

(declare-fun res!1196297 () Bool)

(assert (=> b!2890793 (=> (not res!1196297) (not e!1827065))))

(assert (=> b!2890793 (= res!1196297 call!187677)))

(declare-fun b!2890794 () Bool)

(declare-fun res!1196294 () Bool)

(assert (=> b!2890794 (=> (not res!1196294) (not e!1827067))))

(assert (=> b!2890794 (= res!1196294 call!187677)))

(assert (=> b!2890794 (= e!1827063 e!1827067)))

(declare-fun b!2890795 () Bool)

(assert (=> b!2890795 (= e!1827065 call!187676)))

(declare-fun b!2890796 () Bool)

(assert (=> b!2890796 (= e!1827068 call!187678)))

(assert (= (and d!834411 (not res!1196293)) b!2890790))

(assert (= (and b!2890790 c!469946) b!2890788))

(assert (= (and b!2890790 (not c!469946)) b!2890792))

(assert (= (and b!2890788 res!1196295) b!2890796))

(assert (= (and b!2890792 c!469945) b!2890794))

(assert (= (and b!2890792 (not c!469945)) b!2890791))

(assert (= (and b!2890794 res!1196294) b!2890789))

(assert (= (and b!2890791 (not res!1196296)) b!2890793))

(assert (= (and b!2890793 res!1196297) b!2890795))

(assert (= (or b!2890789 b!2890795) bm!187673))

(assert (= (or b!2890794 b!2890793) bm!187672))

(assert (= (or b!2890796 bm!187673) bm!187671))

(declare-fun m!3302389 () Bool)

(assert (=> b!2890788 m!3302389))

(declare-fun m!3302391 () Bool)

(assert (=> bm!187671 m!3302391))

(declare-fun m!3302393 () Bool)

(assert (=> bm!187672 m!3302393))

(assert (=> start!281886 d!834411))

(declare-fun b!2890806 () Bool)

(declare-fun e!1827078 () Option!6496)

(declare-fun e!1827080 () Option!6496)

(assert (=> b!2890806 (= e!1827078 e!1827080)))

(declare-fun c!469955 () Bool)

(assert (=> b!2890806 (= c!469955 ((_ is Star!8823) (regOne!18159 r!23079)))))

(declare-fun b!2890807 () Bool)

(declare-fun e!1827077 () Option!6496)

(assert (=> b!2890807 (= e!1827077 None!6495)))

(declare-fun b!2890808 () Bool)

(declare-fun e!1827083 () Option!6496)

(assert (=> b!2890808 (= e!1827083 None!6495)))

(declare-fun b!2890809 () Bool)

(declare-fun e!1827081 () Option!6496)

(declare-fun lt!1020965 () Option!6496)

(assert (=> b!2890809 (= e!1827081 lt!1020965)))

(declare-fun b!2890810 () Bool)

(declare-fun e!1827082 () Option!6496)

(assert (=> b!2890810 (= e!1827082 (Some!6495 Nil!34500))))

(declare-fun b!2890811 () Bool)

(declare-fun c!469952 () Bool)

(assert (=> b!2890811 (= c!469952 ((_ is ElementMatch!8823) (regOne!18159 r!23079)))))

(declare-fun e!1827079 () Option!6496)

(assert (=> b!2890811 (= e!1827079 e!1827078)))

(declare-fun b!2890812 () Bool)

(assert (=> b!2890812 (= e!1827079 None!6495)))

(declare-fun b!2890813 () Bool)

(declare-fun c!469950 () Bool)

(assert (=> b!2890813 (= c!469950 ((_ is Union!8823) (regOne!18159 r!23079)))))

(declare-fun e!1827084 () Option!6496)

(assert (=> b!2890813 (= e!1827080 e!1827084)))

(declare-fun d!834413 () Bool)

(declare-fun c!469949 () Bool)

(assert (=> d!834413 (= c!469949 ((_ is EmptyExpr!8823) (regOne!18159 r!23079)))))

(assert (=> d!834413 (= (getLanguageWitness!530 (regOne!18159 r!23079)) e!1827082)))

(declare-fun b!2890814 () Bool)

(declare-fun lt!1020966 () Option!6496)

(declare-fun lt!1020967 () Option!6496)

(assert (=> b!2890814 (= e!1827077 (Some!6495 (++!8223 (v!34621 lt!1020966) (v!34621 lt!1020967))))))

(declare-fun b!2890815 () Bool)

(declare-fun call!187683 () Option!6496)

(assert (=> b!2890815 (= e!1827081 call!187683)))

(declare-fun b!2890816 () Bool)

(declare-fun c!469956 () Bool)

(assert (=> b!2890816 (= c!469956 ((_ is Some!6495) lt!1020967))))

(declare-fun call!187682 () Option!6496)

(assert (=> b!2890816 (= lt!1020967 call!187682)))

(assert (=> b!2890816 (= e!1827083 e!1827077)))

(declare-fun b!2890817 () Bool)

(assert (=> b!2890817 (= e!1827082 e!1827079)))

(declare-fun c!469953 () Bool)

(assert (=> b!2890817 (= c!469953 ((_ is EmptyLang!8823) (regOne!18159 r!23079)))))

(declare-fun b!2890818 () Bool)

(assert (=> b!2890818 (= e!1827078 (Some!6495 (Cons!34500 (c!469886 (regOne!18159 r!23079)) Nil!34500)))))

(declare-fun b!2890819 () Bool)

(assert (=> b!2890819 (= e!1827080 (Some!6495 Nil!34500))))

(declare-fun bm!187677 () Bool)

(assert (=> bm!187677 (= call!187682 (getLanguageWitness!530 (ite c!469950 (regOne!18159 (regOne!18159 r!23079)) (regTwo!18158 (regOne!18159 r!23079)))))))

(declare-fun b!2890820 () Bool)

(assert (=> b!2890820 (= e!1827084 e!1827081)))

(assert (=> b!2890820 (= lt!1020965 call!187682)))

(declare-fun c!469951 () Bool)

(assert (=> b!2890820 (= c!469951 ((_ is Some!6495) lt!1020965))))

(declare-fun bm!187678 () Bool)

(assert (=> bm!187678 (= call!187683 (getLanguageWitness!530 (ite c!469950 (regTwo!18159 (regOne!18159 r!23079)) (regOne!18158 (regOne!18159 r!23079)))))))

(declare-fun b!2890821 () Bool)

(assert (=> b!2890821 (= e!1827084 e!1827083)))

(assert (=> b!2890821 (= lt!1020966 call!187683)))

(declare-fun c!469954 () Bool)

(assert (=> b!2890821 (= c!469954 ((_ is Some!6495) lt!1020966))))

(assert (= (and d!834413 c!469949) b!2890810))

(assert (= (and d!834413 (not c!469949)) b!2890817))

(assert (= (and b!2890817 c!469953) b!2890812))

(assert (= (and b!2890817 (not c!469953)) b!2890811))

(assert (= (and b!2890811 c!469952) b!2890818))

(assert (= (and b!2890811 (not c!469952)) b!2890806))

(assert (= (and b!2890806 c!469955) b!2890819))

(assert (= (and b!2890806 (not c!469955)) b!2890813))

(assert (= (and b!2890813 c!469950) b!2890820))

(assert (= (and b!2890813 (not c!469950)) b!2890821))

(assert (= (and b!2890820 c!469951) b!2890809))

(assert (= (and b!2890820 (not c!469951)) b!2890815))

(assert (= (and b!2890821 c!469954) b!2890816))

(assert (= (and b!2890821 (not c!469954)) b!2890808))

(assert (= (and b!2890816 c!469956) b!2890814))

(assert (= (and b!2890816 (not c!469956)) b!2890807))

(assert (= (or b!2890815 b!2890821) bm!187678))

(assert (= (or b!2890820 b!2890816) bm!187677))

(declare-fun m!3302403 () Bool)

(assert (=> b!2890814 m!3302403))

(declare-fun m!3302405 () Bool)

(assert (=> bm!187677 m!3302405))

(declare-fun m!3302407 () Bool)

(assert (=> bm!187678 m!3302407))

(assert (=> b!2890639 d!834413))

(declare-fun d!834419 () Bool)

(assert (=> d!834419 (= (isDefined!5060 lt!1020946) (not (isEmpty!18798 lt!1020946)))))

(declare-fun bs!523870 () Bool)

(assert (= bs!523870 d!834419))

(declare-fun m!3302409 () Bool)

(assert (=> bs!523870 m!3302409))

(assert (=> b!2890638 d!834419))

(declare-fun b!2890859 () Bool)

(declare-fun e!1827102 () Bool)

(declare-fun tp!928263 () Bool)

(assert (=> b!2890859 (= e!1827102 tp!928263)))

(declare-fun b!2890857 () Bool)

(assert (=> b!2890857 (= e!1827102 tp_is_empty!15233)))

(declare-fun b!2890860 () Bool)

(declare-fun tp!928262 () Bool)

(declare-fun tp!928261 () Bool)

(assert (=> b!2890860 (= e!1827102 (and tp!928262 tp!928261))))

(assert (=> b!2890643 (= tp!928245 e!1827102)))

(declare-fun b!2890858 () Bool)

(declare-fun tp!928264 () Bool)

(declare-fun tp!928260 () Bool)

(assert (=> b!2890858 (= e!1827102 (and tp!928264 tp!928260))))

(assert (= (and b!2890643 ((_ is ElementMatch!8823) (regOne!18159 r!23079))) b!2890857))

(assert (= (and b!2890643 ((_ is Concat!14144) (regOne!18159 r!23079))) b!2890858))

(assert (= (and b!2890643 ((_ is Star!8823) (regOne!18159 r!23079))) b!2890859))

(assert (= (and b!2890643 ((_ is Union!8823) (regOne!18159 r!23079))) b!2890860))

(declare-fun b!2890863 () Bool)

(declare-fun e!1827103 () Bool)

(declare-fun tp!928268 () Bool)

(assert (=> b!2890863 (= e!1827103 tp!928268)))

(declare-fun b!2890861 () Bool)

(assert (=> b!2890861 (= e!1827103 tp_is_empty!15233)))

(declare-fun b!2890864 () Bool)

(declare-fun tp!928267 () Bool)

(declare-fun tp!928266 () Bool)

(assert (=> b!2890864 (= e!1827103 (and tp!928267 tp!928266))))

(assert (=> b!2890643 (= tp!928249 e!1827103)))

(declare-fun b!2890862 () Bool)

(declare-fun tp!928269 () Bool)

(declare-fun tp!928265 () Bool)

(assert (=> b!2890862 (= e!1827103 (and tp!928269 tp!928265))))

(assert (= (and b!2890643 ((_ is ElementMatch!8823) (regTwo!18159 r!23079))) b!2890861))

(assert (= (and b!2890643 ((_ is Concat!14144) (regTwo!18159 r!23079))) b!2890862))

(assert (= (and b!2890643 ((_ is Star!8823) (regTwo!18159 r!23079))) b!2890863))

(assert (= (and b!2890643 ((_ is Union!8823) (regTwo!18159 r!23079))) b!2890864))

(declare-fun b!2890873 () Bool)

(declare-fun e!1827106 () Bool)

(declare-fun tp!928277 () Bool)

(assert (=> b!2890873 (= e!1827106 tp!928277)))

(declare-fun b!2890871 () Bool)

(assert (=> b!2890871 (= e!1827106 tp_is_empty!15233)))

(declare-fun b!2890874 () Bool)

(declare-fun tp!928276 () Bool)

(declare-fun tp!928275 () Bool)

(assert (=> b!2890874 (= e!1827106 (and tp!928276 tp!928275))))

(assert (=> b!2890646 (= tp!928246 e!1827106)))

(declare-fun b!2890872 () Bool)

(declare-fun tp!928278 () Bool)

(declare-fun tp!928274 () Bool)

(assert (=> b!2890872 (= e!1827106 (and tp!928278 tp!928274))))

(assert (= (and b!2890646 ((_ is ElementMatch!8823) (reg!9152 r!23079))) b!2890871))

(assert (= (and b!2890646 ((_ is Concat!14144) (reg!9152 r!23079))) b!2890872))

(assert (= (and b!2890646 ((_ is Star!8823) (reg!9152 r!23079))) b!2890873))

(assert (= (and b!2890646 ((_ is Union!8823) (reg!9152 r!23079))) b!2890874))

(declare-fun b!2890881 () Bool)

(declare-fun e!1827107 () Bool)

(declare-fun tp!928286 () Bool)

(assert (=> b!2890881 (= e!1827107 tp!928286)))

(declare-fun b!2890879 () Bool)

(assert (=> b!2890879 (= e!1827107 tp_is_empty!15233)))

(declare-fun b!2890882 () Bool)

(declare-fun tp!928285 () Bool)

(declare-fun tp!928284 () Bool)

(assert (=> b!2890882 (= e!1827107 (and tp!928285 tp!928284))))

(assert (=> b!2890644 (= tp!928248 e!1827107)))

(declare-fun b!2890880 () Bool)

(declare-fun tp!928287 () Bool)

(declare-fun tp!928283 () Bool)

(assert (=> b!2890880 (= e!1827107 (and tp!928287 tp!928283))))

(assert (= (and b!2890644 ((_ is ElementMatch!8823) (regOne!18158 r!23079))) b!2890879))

(assert (= (and b!2890644 ((_ is Concat!14144) (regOne!18158 r!23079))) b!2890880))

(assert (= (and b!2890644 ((_ is Star!8823) (regOne!18158 r!23079))) b!2890881))

(assert (= (and b!2890644 ((_ is Union!8823) (regOne!18158 r!23079))) b!2890882))

(declare-fun b!2890885 () Bool)

(declare-fun e!1827108 () Bool)

(declare-fun tp!928293 () Bool)

(assert (=> b!2890885 (= e!1827108 tp!928293)))

(declare-fun b!2890883 () Bool)

(assert (=> b!2890883 (= e!1827108 tp_is_empty!15233)))

(declare-fun b!2890886 () Bool)

(declare-fun tp!928292 () Bool)

(declare-fun tp!928291 () Bool)

(assert (=> b!2890886 (= e!1827108 (and tp!928292 tp!928291))))

(assert (=> b!2890644 (= tp!928247 e!1827108)))

(declare-fun b!2890884 () Bool)

(declare-fun tp!928294 () Bool)

(declare-fun tp!928290 () Bool)

(assert (=> b!2890884 (= e!1827108 (and tp!928294 tp!928290))))

(assert (= (and b!2890644 ((_ is ElementMatch!8823) (regTwo!18158 r!23079))) b!2890883))

(assert (= (and b!2890644 ((_ is Concat!14144) (regTwo!18158 r!23079))) b!2890884))

(assert (= (and b!2890644 ((_ is Star!8823) (regTwo!18158 r!23079))) b!2890885))

(assert (= (and b!2890644 ((_ is Union!8823) (regTwo!18158 r!23079))) b!2890886))

(check-sat (not b!2890859) (not b!2890885) (not b!2890882) (not b!2890858) (not b!2890872) (not bm!187677) (not b!2890788) (not b!2890719) (not b!2890881) (not bm!187669) (not b!2890862) (not bm!187678) (not b!2890886) (not bm!187652) (not b!2890860) (not bm!187672) (not b!2890779) (not b!2890814) (not b!2890884) (not bm!187671) (not bm!187653) (not b!2890874) (not b!2890863) (not bm!187668) (not b!2890873) (not b!2890864) (not d!834399) tp_is_empty!15233 (not d!834419) (not b!2890880))
(check-sat)
